unint64_t _s11AppStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v74 = sub_1E1AF39DC();
  v66 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v63 - v7;
  v9 = sub_1E1AF5A6C();
  v64 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v72 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v63 - v14;
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v80 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63 - v20;
  v22 = *a2;
  if (!*a2)
  {
    v24 = MEMORY[0x1E69E7CC0];

    return sub_1E159FA90(v24);
  }

  v81 = *(a2 + 8);
  v23 = *(a2 + 24);
  sub_1E134FD1C(a1, v15, &qword_1ECEB4D20);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1E1308058(v15, &qword_1ECEB4D20);
LABEL_9:
    v84 = v22;
    v85 = v81;
    LOBYTE(v86) = v23 & 1;
    return sub_1E166E56C(&v84);
  }

  (*(v17 + 32))(v21, v15, v16);
  if (sub_1E1AF37AC())
  {
    (*(v17 + 8))(v21, v16);
    goto LABEL_9;
  }

  v78 = v21;
  v63 = v17;
  v70 = v8;
  v71 = v16;
  v69 = v9;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = sub_1E159FA90(MEMORY[0x1E69E7CC0]);
  v76 = *(v22 + 16);
  v77 = v27;
  if (!v76)
  {
LABEL_28:
    v41 = *(v26 + 2);
    v42 = v71;
    if (v41)
    {
      v43 = (v26 + 32);
      v44 = (v63 + 8);
      *&v81 = v64 + 6;
      v67 = (v64 + 2);
      v68 = (v64 + 4);
      v65 = (v63 + 8);
      v66 += 2;
      v63 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      ++v64;
      v46 = v69;
      v45 = v70;
      do
      {
        sub_1E141D0E8(v43, &v84);
        v47 = v80;
        sub_1E1AF381C();
        sub_1E1AF374C();
        v48 = *v44;
        (*v44)(v47, v42);
        if ((*v81)(v45, 1, v46) == 1)
        {
          sub_1E141D144(&v84);
          sub_1E1308058(v45, &qword_1ECEB1F90);
        }

        else
        {
          v76 = v48;
          v49 = v79;
          (*v68)(v79, v45, v46);
          (*v67)(v72, v49, v46);
          (*v66)(v73, v75, v74);
          sub_1E166FAB8();
          v50 = sub_1E1AF631C();
          v51 = sub_1E13C4838(v50);

          v52 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83 = v52;
          v55 = sub_1E15951A4(&v84);
          v56 = v52[2];
          v57 = (v54 & 1) == 0;
          v58 = v56 + v57;
          if (__OFADD__(v56, v57))
          {
            goto LABEL_50;
          }

          v59 = v54;
          if (v52[3] >= v58)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1E1417014();
            }
          }

          else
          {
            sub_1E168ACD4(v58, isUniquelyReferenced_nonNull_native);
            v60 = sub_1E15951A4(&v84);
            if ((v59 & 1) != (v61 & 1))
            {
              goto LABEL_52;
            }

            v55 = v60;
          }

          v46 = v69;
          v45 = v70;
          v62 = v83;
          v77 = v83;
          if (v59)
          {
            *(v83[7] + 8 * v55) = v51;
          }

          else
          {
            sub_1E141D0E8(&v84, v82);
            sub_1E165F608(v55, v82, v51, v62);
          }

          (*v64)(v79, v46);
          sub_1E141D144(&v84);
          v42 = v71;
          v44 = v65;
          v48 = v76;
        }

        v43 += 136;
        --v41;
      }

      while (v41);
    }

    else
    {

      v48 = *(v63 + 8);
    }

    v48(v78, v42);
    return v77;
  }

  v28 = 0;
  v29 = v22 + 48;
  while (v28 < *(v22 + 16))
  {
    v30 = v22;
    v31 = *v29;
    v32 = *(*v29 + 16);
    v33 = *(v26 + 2);
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_47;
    }

    *&v81 = *(v29 - 8);

    swift_bridgeObjectRetain_n();

    v35 = swift_isUniquelyReferenced_nonNull_native();
    if (v35 && (v36 = *(v26 + 3) >> 1, v36 >= v34))
    {
      if (*(v31 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v37 = v33 + v32;
      }

      else
      {
        v37 = v33;
      }

      v26 = sub_1E172DFB0(v35, v37, 1, v26);
      v36 = *(v26 + 3) >> 1;
      if (*(v31 + 16))
      {
LABEL_24:
        if (v36 - *(v26 + 2) < v32)
        {
          goto LABEL_49;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v38 = *(v26 + 2);
          v39 = __OFADD__(v38, v32);
          v40 = v38 + v32;
          if (v39)
          {
            goto LABEL_51;
          }

          *(v26 + 2) = v40;
        }

        goto LABEL_13;
      }
    }

    if (v32)
    {
      goto LABEL_48;
    }

LABEL_13:
    v28 = (v28 + 1);

    v29 += 24;
    v22 = v30;
    if (v76 == v28)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

unint64_t sub_1E166F2B8()
{
  result = qword_1ECEB7548;
  if (!qword_1ECEB7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7548);
  }

  return result;
}

unint64_t sub_1E166F30C()
{
  result = qword_1EE1E0BB0;
  if (!qword_1EE1E0BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0BB0);
  }

  return result;
}

unint64_t sub_1E166F3B8()
{
  result = qword_1ECEB7558;
  if (!qword_1ECEB7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7558);
  }

  return result;
}

unint64_t sub_1E166F410()
{
  result = qword_1EE1E0B98;
  if (!qword_1EE1E0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0B98);
  }

  return result;
}

unint64_t sub_1E166F468()
{
  result = qword_1EE1E0B88;
  if (!qword_1EE1E0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0B88);
  }

  return result;
}

unint64_t sub_1E166F4C0()
{
  result = qword_1ECEB7560;
  if (!qword_1ECEB7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7560);
  }

  return result;
}

uint64_t sub_1E166F514(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1E166F55C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E166F5C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1E166F610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E166F690(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1E166F6D8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1E166F75C()
{
  result = qword_1ECEB7568;
  if (!qword_1ECEB7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7568);
  }

  return result;
}

unint64_t sub_1E166F7B4()
{
  result = qword_1ECEB7570;
  if (!qword_1ECEB7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7570);
  }

  return result;
}

unint64_t sub_1E166F80C()
{
  result = qword_1ECEB7578;
  if (!qword_1ECEB7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7578);
  }

  return result;
}

uint64_t sub_1E166F860(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x567363697274656DLL && a2 == 0xEC00000065756C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E1AF74AC();

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

uint64_t sub_1E166F9C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E166FA10()
{
  result = qword_1EE1E0BB8;
  if (!qword_1EE1E0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0BB8);
  }

  return result;
}

unint64_t sub_1E166FA64()
{
  result = qword_1EE1E0B90;
  if (!qword_1EE1E0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0B90);
  }

  return result;
}

unint64_t sub_1E166FAB8()
{
  result = qword_1EE1E0BA8;
  if (!qword_1EE1E0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0BA8);
  }

  return result;
}

uint64_t sub_1E166FB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB75A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E166FBA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  v27 = a8;
  v28 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  sub_1E166FB28(a1, &v26 - v18);
  sub_1E166FB28(a2, &v19[*(v17 + 56)]);
  v29 = 1;
  if (qword_1ECEB0F60 != -1)
  {
    swift_once();
  }

  v20 = qword_1ECEB7598;
  v21 = *MEMORY[0x1E69DDCE0];
  v22 = *(MEMORY[0x1E69DDCE0] + 8);
  v23 = *(MEMORY[0x1E69DDCE0] + 16);
  v24 = *(MEMORY[0x1E69DDCE0] + 24);

  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)(0x6972477974706D65, 0xE900000000000064, &v29, 0, v20, a3, a4, a5, a6, a7, v27, v28, v21, v22, v23, v24);
  return sub_1E166FE18(v19);
}

__n128 sub_1E166FD34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2600);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E1B02CC0;
  if (qword_1EE1E4578 != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  *(v0 + 32) = xmmword_1E1B23CA0;
  *(v0 + 48) = vdupq_n_s64(0xC0C81C8000000000);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 88) = _Q0;
  v6 = xmmword_1EE1D2F08;
  *(v0 + 120) = xmmword_1EE1D2F08;
  *(v0 + 104) = v6;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  result = *MEMORY[0x1E69DDCE0];
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v0 + 160) = *MEMORY[0x1E69DDCE0];
  *(v0 + 176) = v8;
  qword_1ECEB7598 = v0;
  return result;
}

uint64_t sub_1E166FE18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E166FEA8()
{
  v0 = sub_1E1AF105C();
  __swift_allocate_value_buffer(v0, qword_1EE1F2E20);
  v1 = __swift_project_value_buffer(v0, qword_1EE1F2E20);
  v3 = *MEMORY[0x1E69DDCF8];
  *v1 = *MEMORY[0x1E69DDCF8];
  (*(*(v0 - 8) + 104))();

  return v3;
}

double SpacerDimension.rawValue(in:)(void *a1)
{
  v3 = sub_1E1AF745C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-1] - v8;
  v10 = *v1;
  if (qword_1EE1F2E18 != -1)
  {
    swift_once();
  }

  v11 = sub_1E1AF105C();
  v12 = __swift_project_value_buffer(v11, qword_1EE1F2E20);
  v25[3] = v11;
  v25[4] = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v12, v11);
  v14 = [a1 traitCollection];
  sub_1E1AF054C();
  v16 = v15;

  __swift_destroy_boxed_opaque_existential_1(v25);
  v17 = v10 * ((v16 + -1.0) * 0.5 + 1.0);
  sub_1E1AF102C();
  *v25 = v17;
  (*(v4 + 16))(v6, v9, v3);
  v18 = (*(v4 + 88))(v6, v3);
  if (v18 == *MEMORY[0x1E69E7038])
  {
    v19 = round(v17);
LABEL_13:
    (*(v4 + 8))(v9, v3);
    return v19;
  }

  if (v18 == *MEMORY[0x1E69E7030])
  {
    v19 = rint(v17);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x1E69E7040])
  {
    v19 = ceil(v17);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x1E69E7048])
  {
    v19 = floor(v17);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x1E69E7020])
  {
    v19 = trunc(v17);
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x1E69E7028])
  {
    (*(v4 + 8))(v9, v3);
    v21 = ceil(v17);
    v22 = floor(v17);
    if (v17 < 0.0)
    {
      return v22;
    }

    else
    {
      return v21;
    }
  }

  else
  {
    sub_1E1AF655C();
    v23 = *(v4 + 8);
    v23(v9, v3);
    v23(v6, v3);
    return *v25;
  }
}

UIEdgeInsets __swiftcall SpacerDimension.languageAwareOutsets(compatibleWith:)(UITraitCollection compatibleWith)
{
  v1 = *MEMORY[0x1E69DDCE0];
  v2 = *(MEMORY[0x1E69DDCE0] + 8);
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  v4 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v4;
  result.bottom = v3;
  result.left = v2;
  result.top = v1;
  return result;
}

uint64_t RestoreAppStoreAction.__allocating_init(actionMetrics:gatedAppAdamId:)(uint64_t a1, _OWORD *a2)
{
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC11AppStoreKit21RestoreAppStoreAction_gatedAppAdamId) = *a2;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v9 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v10 = sub_1E1AF3E1C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8 + v9, a1, v10);
  v12 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v13 = sub_1E1AF46DC();
  (*(*(v13 - 8) + 56))(v8 + v12, 1, 1, v13);
  v14 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v14 = 0u;
  v14[1] = 0u;
  v15 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v25, &v22);
  if (*(&v23 + 1))
  {
    v16 = v23;
    *v15 = v22;
    *(v15 + 16) = v16;
    *(v15 + 32) = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v17 = sub_1E1AEFE7C();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v21[1] = v17;
    v21[2] = v19;
    sub_1E1AF6F6C();
    sub_1E1308058(&v22, &unk_1ECEB5670);
  }

  (*(v11 + 8))(a1, v10);
  sub_1E1308058(v25, &unk_1ECEB5670);
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  return v8;
}

uint64_t RestoreAppStoreAction.init(actionMetrics:gatedAppAdamId:)(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v26 - v11;
  v13 = sub_1E1AF3E1C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit21RestoreAppStoreAction_gatedAppAdamId) = *a2;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  (*(v14 + 16))(v16, a1, v13);
  v17 = sub_1E1AF46DC();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = (v3 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  sub_1E138853C(v33, &v27);
  if (*(&v28 + 1))
  {
    v30 = v27;
    v31 = v28;
    v32 = v29;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v20 = v7;
    v22 = v21;
    (*(v20 + 8))(v9, v6);
    v26[1] = v19;
    v26[2] = v22;
    sub_1E1AF6F6C();
    sub_1E1308058(&v27, &unk_1ECEB5670);
  }

  (*(v14 + 8))(a1, v13);
  sub_1E1308058(v33, &unk_1ECEB5670);
  v23 = v3 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v23 + 32) = v32;
  v24 = v31;
  *v23 = v30;
  *(v23 + 16) = v24;
  sub_1E134B7C8(v12, v3 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v16, v13);
  return v3;
}

char *RestoreAppStoreAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_1E1AF39DC();
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  sub_1E1AF381C();
  v12 = sub_1E1AF37CC();
  v14 = v13;
  v24 = *(v6 + 8);
  v24(v11, v5);
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = (v27 + OBJC_IVAR____TtC11AppStoreKit21RestoreAppStoreAction_gatedAppAdamId);
  *v16 = v15;
  v16[1] = v14;
  v17 = a1;
  (*(v6 + 16))(v9, a1, v5);
  v18 = v28;
  v19 = v25;
  v20 = v26;
  (*(v26 + 16))(v25, v28, v3);
  v21 = Action.init(deserializing:using:)(v9, v19);
  (*(v20 + 8))(v18, v3);
  v24(v17, v5);
  return v21;
}

uint64_t RestoreAppStoreAction.gatedAppAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21RestoreAppStoreAction_gatedAppAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit21RestoreAppStoreAction_gatedAppAdamId);
  a1[1] = v2;
}

uint64_t RestoreAppStoreAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t RestoreAppStoreAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RestoreAppStoreAction()
{
  result = qword_1EE1F9648;
  if (!qword_1EE1F9648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 RoundedButtonLayout.init(metrics:buttonView:dividerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 80);
  *(a4 + 144) = *(a1 + 64);
  *(a4 + 160) = v6;
  *(a4 + 176) = *(a1 + 96);
  *(a4 + 192) = *(a1 + 112);
  v7 = *(a1 + 16);
  *(a4 + 80) = *a1;
  *(a4 + 96) = v7;
  v8 = *(a1 + 48);
  *(a4 + 112) = *(a1 + 32);
  *(a4 + 128) = v8;
  sub_1E1308EC0(a2, a4);
  result = *a3;
  v10 = *(a3 + 16);
  *(a4 + 40) = *a3;
  *(a4 + 56) = v10;
  *(a4 + 72) = *(a3 + 32);
  return result;
}

uint64_t RoundedButtonLayout.Metrics.init(buttonTopSpace:buttonBottomSpace:dividerTopSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E1308EC0(a1, a4);
  sub_1E1308EC0(a2, a4 + 40);

  return sub_1E1308EC0(a3, a4 + 80);
}

double RoundedButtonLayout.measurements(fitting:in:)(double a1)
{
  v3 = sub_1E1AF745C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E14F59A8((v1 + 5), &v9);
  if (v10)
  {
    sub_1E1308EC0(&v9, v11);
    __swift_project_boxed_opaque_existential_1Tm(v11, v11[3]);
    sub_1E1AF11DC();
    __swift_project_boxed_opaque_existential_1Tm(v1 + 20, v1[23]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_1E14F60F8(&v9);
  }

  __swift_project_boxed_opaque_existential_1Tm(v1 + 10, v1[13]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v7 = *(v4 + 8);
  v7(v6, v3);
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  sub_1E1AF11DC();
  __swift_project_boxed_opaque_existential_1Tm(v1 + 15, v1[18]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v7(v6, v3);
  return a1;
}

uint64_t RoundedButtonLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_1E1AF745C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E14F59A8((v5 + 5), &v19);
  v18 = v11;
  *&v17[3] = a3;
  if (v20)
  {
    sub_1E1308EC0(&v19, v21);
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    sub_1E1AF11CC();
    v17[1] = v23;
    v17[0] = __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    v17[2] = a1;
    __swift_project_boxed_opaque_existential_1Tm(v5 + 20, v5[23]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v15 = *(v12 + 8);
    v15(v14, v11);
    v24.origin.x = a2;
    v24.origin.y = a3;
    v24.size.width = a4;
    v24.size.height = a5;
    CGRectGetWidth(v24);
    sub_1E1AF116C();
    __swift_project_boxed_opaque_existential_1Tm(v5 + 20, v5[23]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    v15(v14, v11);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_1E14F60F8(&v19);
  }

  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  sub_1E1AF115C();
  CGRectGetWidth(v25);
  __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
  __swift_project_boxed_opaque_existential_1Tm(v5 + 10, v5[13]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  (*(v12 + 8))(v14, v18);
  sub_1E1AF116C();
  return sub_1E1AF106C();
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1E1671724(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_1E167176C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FastImpressionFlushGate.__allocating_init(delayToFlush:)(double a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t FastImpressionFlushGate.init(delayToFlush:)(double a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1E1671888@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E137AFA8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4);
}

uint64_t sub_1E167191C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E137AFA0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_1E1300E34(v3);
  return sub_1E1361B18(v8, v9);
}

uint64_t sub_1E16719D8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_1E1300E34(v1);
  return v1;
}

uint64_t sub_1E1671A28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_1E1361B18(v5, v6);
}

void sub_1E1671A7C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = swift_allocObject();
    swift_weakInit();
    v8[4] = sub_1E137A684;
    v8[5] = v3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1E1367148;
    v8[3] = &block_descriptor_44;
    v4 = _Block_copy(v8);
    v5 = objc_opt_self();

    v6 = [v5 timerWithTimeInterval:0 repeats:v4 block:v2];
    _Block_release(v4);

    v7 = [objc_opt_self() mainRunLoop];
    [v7 addTimer:v6 forMode:*MEMORY[0x1E695DA28]];

    swift_unknownObjectWeakAssign();
  }
}

id sub_1E1671C20(void *a1)
{
  result = [a1 isValid];
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      swift_beginAccess();
      v5 = *(v3 + 32);
      v4 = *(v3 + 40);
      sub_1E1300E34(v5);

      if (v5)
      {
        v5(v6);
        sub_1E1361B18(v5, v4);
      }
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t sub_1E1671D00()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidate];

  return swift_unknownObjectWeakAssign();
}

uint64_t FastImpressionFlushGate.deinit()
{
  MEMORY[0x1E6901750](v0 + 24);
  sub_1E1361B18(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t FastImpressionFlushGate.__deallocating_deinit()
{
  MEMORY[0x1E6901750](v0 + 24);
  sub_1E1361B18(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t LocalAskToBuyAction.adamIdString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19LocalAskToBuyAction_adamId);

  return v1;
}

uint64_t LocalAskToBuyAction.__allocating_init(adamId:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v12 = *a1;
  v11 = a1[1];
  v13 = (v10 + OBJC_IVAR____TtC11AppStoreKit19LocalAskToBuyAction_adamId);
  *v13 = v12;
  v13[1] = v11;
  v14 = (v10 + OBJC_IVAR____TtC11AppStoreKit19LocalAskToBuyAction_completion);
  *v14 = a2;
  v14[1] = a3;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  *&v26 = 0;
  *(&v26 + 1) = 0xE000000000000000;

  sub_1E1AF6FEC();

  *&v26 = 0xD000000000000015;
  *(&v26 + 1) = 0x80000001E1B6CFF0;
  MEMORY[0x1E68FECA0](v12, v11);

  v15 = v26;
  sub_1E1AF3DFC();
  v16 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v17 = sub_1E1AF46DC();
  (*(*(v17 - 8) + 56))(v10 + v16, 1, 1, v17);
  v18 = (v10 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v10 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v29, &v26);
  if (*(&v27 + 1))
  {
    v20 = v27;
    *v19 = v26;
    *(v19 + 16) = v20;
    *(v19 + 32) = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    v25[1] = v21;
    v25[2] = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v26, &unk_1ECEB5670);
  }

  sub_1E1308058(v29, &unk_1ECEB5670);
  *(v10 + 16) = v15;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  return v10;
}

uint64_t LocalAskToBuyAction.init(adamId:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v32 = sub_1E1AF3E1C();
  v14 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = a1[1];
  v19 = (v4 + OBJC_IVAR____TtC11AppStoreKit19LocalAskToBuyAction_adamId);
  *v19 = v18;
  v19[1] = v17;
  v20 = (v4 + OBJC_IVAR____TtC11AppStoreKit19LocalAskToBuyAction_completion);
  *v20 = a2;
  v20[1] = a3;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;

  sub_1E1AF6FEC();

  *&v38 = 0xD000000000000015;
  *(&v38 + 1) = 0x80000001E1B6CFF0;
  MEMORY[0x1E68FECA0](v18, v17);

  v21 = v38;
  sub_1E1AF3DFC();
  v22 = sub_1E1AF46DC();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = (v4 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_1E138853C(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v26 = v25;
    (*(v30 + 8))(v10, v31);
    v33 = v24;
    v34 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670);
  }

  sub_1E1308058(v41, &unk_1ECEB5670);
  v27 = v4 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v27 + 32) = v40;
  v28 = v39;
  *v27 = v38;
  *(v27 + 16) = v28;
  sub_1E134B7C8(v13, v4 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v4 + 16) = v21;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  (*(v14 + 32))(v4 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v16, v32);
  return v4;
}

uint64_t LocalAskToBuyAction.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19LocalAskToBuyAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19LocalAskToBuyAction_adamId);
  a1[1] = v2;
}

uint64_t LocalAskToBuyAction.completion.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19LocalAskToBuyAction_completion);

  return v1;
}

uint64_t sub_1E1672628()
{
}

uint64_t LocalAskToBuyAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t LocalAskToBuyAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalAskToBuyAction()
{
  result = qword_1EE1EEC30;
  if (!qword_1EE1EEC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NavigationTab.pageContext.getter()
{
  sub_1E13B8AA4();
  v0 = sub_1E1AF6DDC();

  return v0;
}

AppStoreKit::NavigationTab_optional __swiftcall NavigationTab.init(intValue:)(Swift::Int intValue)
{
  v2 = intValue;
  v3 = v1;
  if (intValue >= 8)
  {
    intValue = sub_1E1AEF2DC();
    if (intValue == v2)
    {
      LOBYTE(v4) = 8;
    }

    else
    {
      LOBYTE(v4) = 9;
    }
  }

  else
  {
    v4 = 0x706050403020001uLL >> (8 * intValue);
  }

  *v3 = v4;
  return intValue;
}

uint64_t NavigationTab.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x7265666E69;
    v7 = 0x7961646F74;
    if (v1 != 2)
    {
      v7 = 1936748641;
    }

    if (*v0)
    {
      v6 = 0x64657463656C6573;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x73657461647075;
    v3 = 0x656461637261;
    if (v1 != 7)
    {
      v3 = 0x676E6964616F6CLL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x73656D6167;
    if (v1 != 4)
    {
      v4 = 0x686372616573;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t NavigationTab.intValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v3 = 2;
    if (v1 != 2)
    {
      v3 = 3;
    }

    if (*v0 <= 1u)
    {
      return v1 == 0;
    }

    else
    {
      return v3;
    }
  }

  else if (*v0 <= 5u)
  {
    if (v1 == 4)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else if (v1 == 6)
  {
    return 6;
  }

  else if (v1 == 7)
  {
    return 7;
  }

  else
  {
    return sub_1E1AEF2DC();
  }
}

AppStoreKit::NavigationTab_optional __swiftcall NavigationTab.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E1672D30()
{
  sub_1E1AF762C();
  sub_1E19DC090();
  return sub_1E1AF767C();
}

uint64_t sub_1E1672D80()
{
  sub_1E1AF762C();
  sub_1E19DC090();
  return sub_1E1AF767C();
}

uint64_t sub_1E1672DD0@<X0>(uint64_t *a1@<X8>)
{
  result = NavigationTab.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s11AppStoreKit13NavigationTabO2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x7265666E69;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 3)
  {
    if (*a1 > 1u)
    {
      if (v3 == 2)
      {
        v5 = 0xE500000000000000;
        v6 = 0x7961646F74;
        if (*a2 > 3u)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v5 = 0xE400000000000000;
        v6 = 1936748641;
        if (*a2 > 3u)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      if (*a1)
      {
        v6 = 0x64657463656C6573;
      }

      else
      {
        v6 = 0x7265666E69;
      }

      if (v3)
      {
        v5 = 0xE800000000000000;
      }

      else
      {
        v5 = 0xE500000000000000;
      }

      if (*a2 > 3u)
      {
        goto LABEL_27;
      }
    }
  }

  else if (*a1 <= 5u)
  {
    if (v3 != 4)
    {
      v5 = 0xE600000000000000;
      v6 = 0x686372616573;
      if (*a2 <= 3u)
      {
        goto LABEL_42;
      }

      goto LABEL_27;
    }

    v5 = 0xE500000000000000;
    v6 = 0x73656D6167;
    if (*a2 > 3u)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v3 != 6)
    {
      if (v3 == 7)
      {
        v5 = 0xE600000000000000;
        v6 = 0x656461637261;
        if (*a2 <= 3u)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v5 = 0xE700000000000000;
        v6 = 0x676E6964616F6CLL;
        if (*a2 <= 3u)
        {
          goto LABEL_42;
        }
      }

LABEL_27:
      v7 = 0xE700000000000000;
      v8 = 0x73657461647075;
      v9 = 0xE600000000000000;
      v10 = 0x656461637261;
      if (v4 != 7)
      {
        v10 = 0x676E6964616F6CLL;
        v9 = 0xE700000000000000;
      }

      if (v4 != 6)
      {
        v8 = v10;
        v7 = v9;
      }

      v11 = 0xE500000000000000;
      v12 = 0x73656D6167;
      if (v4 != 4)
      {
        v12 = 0x686372616573;
        v11 = 0xE600000000000000;
      }

      if (*a2 <= 5u)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8;
      }

      if (*a2 <= 5u)
      {
        v14 = v11;
      }

      else
      {
        v14 = v7;
      }

      if (v6 != v13)
      {
        goto LABEL_55;
      }

      goto LABEL_53;
    }

    v5 = 0xE700000000000000;
    v6 = 0x73657461647075;
    if (*a2 > 3u)
    {
      goto LABEL_27;
    }
  }

LABEL_42:
  v15 = 0xE500000000000000;
  v16 = 0xE500000000000000;
  v17 = 0x7961646F74;
  if (v4 != 2)
  {
    v17 = 1936748641;
    v16 = 0xE400000000000000;
  }

  if (*a2)
  {
    v2 = 0x64657463656C6573;
    v15 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v17;
  }

  if (*a2 <= 1u)
  {
    v14 = v15;
  }

  else
  {
    v14 = v16;
  }

  if (v6 != v18)
  {
    goto LABEL_55;
  }

LABEL_53:
  if (v5 != v14)
  {
LABEL_55:
    v19 = sub_1E1AF74AC();
    goto LABEL_56;
  }

  v19 = 1;
LABEL_56:

  return v19 & 1;
}

unint64_t sub_1E167308C()
{
  result = qword_1ECEB75A8;
  if (!qword_1ECEB75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB75A8);
  }

  return result;
}

uint64_t OfferDisplayProperties.isArcadeAppOffer.getter()
{
  if (*(v0 + 16) > 2u)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E1AF74AC();
  }

  return v1 & 1;
}

__n128 OfferDisplayProperties.__allocating_init(offerType:adamId:bundleId:parentAdamId:titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char *a10, _OWORD *a11, char a12, char a13, char a14, char a15, char a16, char *a17, char a18, uint64_t a19, char a20, _OWORD *a21, __n128 a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  v31 = swift_allocObject();
  v32 = *a2;
  v33 = a2[1];
  v34 = *a9;
  v35 = *a10;
  v36 = *a17;
  *(v31 + 16) = *a1;
  *(v31 + 24) = v32;
  *(v31 + 32) = v33;
  *(v31 + 40) = a3;
  *(v31 + 48) = a4;
  *(v31 + 56) = *a5;
  *(v31 + 72) = a6;
  *(v31 + 80) = a7;
  *(v31 + 88) = a8;
  *(v31 + 96) = v34;
  *(v31 + 97) = v35;
  *(v31 + 104) = *a11;
  *(v31 + 120) = a12;
  *(v31 + 121) = a13;
  *(v31 + 122) = a14;
  *(v31 + 123) = a15;
  *(v31 + 124) = a16;
  *(v31 + 125) = a18;
  *(v31 + 126) = v36;
  *(v31 + 128) = a19;
  *(v31 + 136) = a20 & 1;
  v37 = a21[1];
  *(v31 + 144) = *a21;
  *(v31 + 160) = v37;
  result = a22;
  *(v31 + 176) = a22;
  *(v31 + 192) = a23;
  *(v31 + 200) = a24;
  *(v31 + 208) = a25;
  *(v31 + 216) = a26;
  *(v31 + 224) = a27;
  *(v31 + 232) = a28;
  *(v31 + 240) = a29;
  return result;
}

AppStoreKit::OfferTitleType_optional __swiftcall OfferTitleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF750C();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t OfferTitleType.rawValue.getter()
{
  result = 0x647261646E617473;
  switch(*v0)
  {
    case 1:
      result = 0x616D7269666E6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
    case 0xE:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 1852141679;
      break;
    case 5:
      result = 0x657461647075;
      break;
    case 6:
      result = 0x64616F6C6E776F64;
      break;
    case 7:
      result = 0x6573616863727570;
      break;
    case 8:
      result = 0x64616F6C6E776F64;
      break;
    case 9:
      result = 0x6C61697274;
      break;
    case 0xA:
      result = 0x6373627553746F6ELL;
      break;
    case 0xB:
      result = 0x6269726373627573;
      break;
    case 0xC:
      result = 0x7463697274736572;
      break;
    case 0xD:
      result = 0xD000000000000012;
      break;
    case 0xF:
      result = 0xD000000000000014;
      break;
    case 0x10:
      result = 0xD000000000000017;
      break;
    case 0x11:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E16735D8()
{
  v0 = OfferTitleType.rawValue.getter();
  v2 = v1;
  if (v0 == OfferTitleType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E1AF74AC();
  }

  return v5 & 1;
}

uint64_t sub_1E1673674()
{
  sub_1E1AF762C();
  OfferTitleType.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E16736DC()
{
  OfferTitleType.rawValue.getter();
  sub_1E1AF5F0C();
}

uint64_t sub_1E1673740()
{
  sub_1E1AF762C();
  OfferTitleType.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

unint64_t sub_1E16737B0@<X0>(unint64_t *a1@<X8>)
{
  result = OfferTitleType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

AppStoreKit::OfferStyle_optional __swiftcall OfferStyle.init(fromString:)(Swift::String_optional fromString)
{
  v2 = v1;
  if (!fromString.value._object)
  {
    goto LABEL_31;
  }

  object = fromString.value._object;
  countAndFlagsBits = fromString.value._countAndFlagsBits;
  if ((fromString.value._countAndFlagsBits != 0x7265666E69 || fromString.value._object != 0xE500000000000000) && (sub_1E1AF74AC() & 1) == 0)
  {
    if (countAndFlagsBits == 2036691559 && object == 0xE400000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 1;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x6465726F6C6F63 && object == 0xE700000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 2;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x746E6172626976 && object == 0xE700000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 3;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x6574696877 && object == 0xE500000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 4;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x64656C6261736964 && object == 0xE800000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 5;
      goto LABEL_32;
    }

    if (countAndFlagsBits == 0x726170736E617274 && object == 0xEB00000000746E65)
    {

      v5 = 6;
      goto LABEL_32;
    }

    v6 = sub_1E1AF74AC();

    if (v6)
    {
      v5 = 6;
      goto LABEL_32;
    }

LABEL_31:
    v5 = 7;
    goto LABEL_32;
  }

  v5 = 0;
LABEL_32:
  *v2 = v5;
  return fromString.value._countAndFlagsBits;
}

AppStoreKit::OfferEnvironment_optional __swiftcall OfferEnvironment.init(fromString:)(Swift::String_optional fromString)
{
  v2 = v1;
  if (!fromString.value._object)
  {
    goto LABEL_67;
  }

  object = fromString.value._object;
  countAndFlagsBits = fromString.value._countAndFlagsBits;
  if ((fromString.value._countAndFlagsBits != 0x746867696CLL || fromString.value._object != 0xE500000000000000) && (sub_1E1AF74AC() & 1) == 0)
  {
    if (countAndFlagsBits == 0xD000000000000010 && 0x80000001E1B6D0E0 == object || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 1;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 1802658148 && object == 0xE400000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 2;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x50746375646F7270 && object == 0xEB00000000656761 || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 3;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 25697 && object == 0xE200000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 4;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000016 && 0x80000001E1B6D100 == object || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 5;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x697461676976616ELL && object == 0xED00007261426E6FLL || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 6;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x656461637261 && object == 0xE600000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 7;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000011 && 0x80000001E1B55BA0 == object || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 8;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000013 && 0x80000001E1B6D120 == object || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 9;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x6F43746E65696C63 && object == 0xED00006C6F72746ELL || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 10;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x6853656461637261 && object == 0xEE0065736163776FLL || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 11;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD00000000000001ELL && 0x80000001E1B6D140 == object || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 12;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000015 && 0x80000001E1B6D160 == object || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 13;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0xD000000000000014 && 0x80000001E1B6D180 == object || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 14;
      goto LABEL_68;
    }

    if (countAndFlagsBits == 0x7261437961646F74 && object == 0xE900000000000064)
    {

      v5 = 15;
      goto LABEL_68;
    }

    v6 = sub_1E1AF74AC();

    if (v6)
    {
      v5 = 15;
      goto LABEL_68;
    }

LABEL_67:
    v5 = 16;
    goto LABEL_68;
  }

  v5 = 0;
LABEL_68:
  *v2 = v5;
  return fromString.value._countAndFlagsBits;
}

void OfferTint.init(deserializing:using:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v12, v5);
  if (!v15)
  {
    v21 = sub_1E1AF39DC();
    (*(*(v21 - 8) + 8))(a2, v21);
    v16(a1, v5);
    v20 = 0;
    goto LABEL_17;
  }

  v40 = v5;
  v17 = a2;
  v18 = v13 == 1702194274 && v15 == 0xE400000000000000;
  if (v18 || (sub_1E1AF74AC() & 1) != 0)
  {

    v19 = sub_1E1AF39DC();
    (*(*(v19 - 8) + 8))(a2, v19);
    v16(a1, v40);
LABEL_8:
    v20 = 0;
LABEL_9:
    v15 = 0;
    goto LABEL_17;
  }

  v22 = v13 == 0x65676E61726FLL && v15 == 0xE600000000000000;
  v23 = a1;
  v24 = v16;
  if (v22 || (sub_1E1AF74AC() & 1) != 0)
  {

    v25 = sub_1E1AF39DC();
    (*(*(v25 - 8) + 8))(v17, v25);
    v16(a1, v40);
    v15 = 0;
    v20 = 1;
    goto LABEL_17;
  }

  v27 = v13 == 0x6E65657267 && v15 == 0xE500000000000000;
  v28 = v17;
  v29 = v40;
  if (v27 || (sub_1E1AF74AC() & 1) != 0)
  {

    v30 = sub_1E1AF39DC();
    (*(*(v30 - 8) + 8))(v17, v30);
    v24(v23, v29);
    v15 = 0;
    v20 = 2;
    goto LABEL_17;
  }

  if (v13 == 0x6D6F74737563 && v15 == 0xE600000000000000)
  {
  }

  else
  {
    v32 = sub_1E1AF74AC();

    if ((v32 & 1) == 0)
    {
      v33 = sub_1E1AF39DC();
      (*(*(v33 - 8) + 8))(v28, v33);
      v24(v23, v29);
      goto LABEL_8;
    }
  }

  v34 = v39;
  sub_1E1AF381C();
  v20 = JSONObject.appStoreColor.getter();
  v24(v34, v29);
  if (!v20)
  {
    v37 = sub_1E1AF39DC();
    (*(*(v37 - 8) + 8))(v28, v37);
    v24(v23, v29);
    goto LABEL_9;
  }

  v35 = v38;
  sub_1E1AF381C();
  v15 = JSONObject.appStoreColor.getter();
  v36 = sub_1E1AF39DC();
  (*(*(v36 - 8) + 8))(v28, v36);
  v24(v23, v29);
  v24(v35, v29);
  if (!v15)
  {

    v20 = 0;
  }

LABEL_17:
  v26 = v41;
  *v41 = v20;
  v26[1] = v15;
}

AppStoreKit::OfferLabelStyle_optional __swiftcall OfferLabelStyle.init(fromString:)(Swift::String_optional fromString)
{
  v2 = v1;
  if (!fromString.value._object)
  {
    goto LABEL_15;
  }

  object = fromString.value._object;
  countAndFlagsBits = fromString.value._countAndFlagsBits;
  if ((fromString.value._countAndFlagsBits != 1701736302 || fromString.value._object != 0xE400000000000000) && (sub_1E1AF74AC() & 1) == 0)
  {
    if (countAndFlagsBits == 0x726564726F657270 && object == 0xE800000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {

      v5 = 1;
      goto LABEL_16;
    }

    if (countAndFlagsBits == 0xD000000000000010 && 0x80000001E1B6D1A0 == object)
    {

      v5 = 2;
      goto LABEL_16;
    }

    v6 = sub_1E1AF74AC();

    if (v6)
    {
      v5 = 2;
      goto LABEL_16;
    }

LABEL_15:
    v5 = 3;
    goto LABEL_16;
  }

  v5 = 0;
LABEL_16:
  *v2 = v5;
  return fromString.value._countAndFlagsBits;
}

AppStoreKit::OfferType_optional __swiftcall OfferType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OfferType.rawValue.getter()
{
  v1 = 7368801;
  v2 = 0x656461637261;
  if (*v0 != 2)
  {
    v2 = 0x7041656461637261;
  }

  if (*v0)
  {
    v1 = 0x7275507070416E69;
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

uint64_t sub_1E1674754()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E167481C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E16748D0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E16749A0(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368801;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (*v1 != 2)
  {
    v5 = 0x7041656461637261;
    v4 = 0xE900000000000070;
  }

  if (*v1)
  {
    v3 = 0x7275507070416E69;
    v2 = 0xED00006573616863;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t OfferDisplayProperties.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t OfferDisplayProperties.bundleId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t OfferDisplayProperties.parentAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

id OfferDisplayProperties.tint.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = v2;
  a1[1] = v3;
  return sub_1E139D580(v2, v3);
}

uint64_t OfferDisplayProperties.subscriptionFamilyId.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t OfferDisplayProperties.overrideLocale.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t OfferDisplayProperties.priceFormatted.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t OfferDisplayProperties.init(offerType:adamId:bundleId:parentAdamId:titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, char *a10, _OWORD *a11, char a12, char a13, char a14, char a15, char a16, char *a17, char a18, uint64_t a19, char a20, _OWORD *a21, __int128 a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  v31 = *a2;
  v30 = a2[1];
  v32 = *a9;
  v33 = *a10;
  v34 = *a17;
  *(v29 + 16) = *a1;
  *(v29 + 24) = v31;
  *(v29 + 32) = v30;
  *(v29 + 40) = a3;
  *(v29 + 48) = a4;
  *(v29 + 56) = *a5;
  *(v29 + 72) = a6;
  *(v29 + 80) = a7;
  *(v29 + 88) = a8;
  *(v29 + 96) = v32;
  *(v29 + 97) = v33;
  *(v29 + 104) = *a11;
  *(v29 + 120) = a12;
  *(v29 + 121) = a13;
  *(v29 + 122) = a14;
  *(v29 + 123) = a15;
  *(v29 + 124) = a16;
  *(v29 + 125) = a18;
  *(v29 + 126) = v34;
  *(v29 + 128) = a19;
  *(v29 + 136) = a20 & 1;
  v35 = a21[1];
  *(v29 + 144) = *a21;
  *(v29 + 160) = v35;
  *(v29 + 176) = a22;
  *(v29 + 192) = a23;
  *(v29 + 200) = a24;
  *(v29 + 208) = a25;
  *(v29 + 216) = a26;
  *(v29 + 224) = a27;
  *(v29 + 232) = a28;
  *(v29 + 240) = a29;
  return v29;
}

uint64_t OfferDisplayProperties.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v182 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v178 = &v144[-v4];
  v181 = sub_1E1AF39DC();
  v183 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v171 = &v144[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v166 = &v144[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v165 = &v144[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v164 = &v144[-v11];
  v184 = sub_1E1AF380C();
  v187 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v177 = &v144[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v176 = &v144[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v175 = &v144[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v174 = &v144[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v173 = &v144[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v172 = &v144[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v170 = &v144[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v169 = &v144[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v168 = &v144[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v167 = &v144[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v144[-v32];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v144[-v35];
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v144[-v38];
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v144[-v41];
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v144[-v44];
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v144[-v47];
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v144[-v50];
  v52 = a1;
  sub_1E1AF381C();
  sub_1E1676178();
  v53 = v180;
  sub_1E1AF36AC();
  if (v53)
  {
    (*(v183 + 8))(v182, v181);
    v54 = *(v187 + 8);
    v55 = v184;
    (v54)(a1, v184);
    (v54)(v51, v55);
    return v54;
  }

  v162 = v42;
  v156 = v39;
  v157 = v36;
  v158 = v33;
  v163 = v45;
  v180 = 0;
  v56 = v183;
  v57 = v184;
  v58 = v187 + 8;
  v59 = *(v187 + 8);
  v59(v51, v184);
  v161 = LOBYTE(v186[0]);
  sub_1E1AF381C();
  v160 = sub_1E1AF37CC();
  v61 = v60;
  v59(v48, v57);
  v159 = v61;
  if (!v61)
  {
    v54 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v75 = 0x64496D616461;
    v75[1] = 0xE600000000000000;
    v75[2] = v179;
    (*(*(v54 - 8) + 104))(v75, *MEMORY[0x1E69AB690], v54);
    swift_willThrow();
    (*(v56 + 8))(v182, v181);
    v59(v52, v57);
    return v54;
  }

  v62 = v163;
  sub_1E1AF381C();
  v155 = sub_1E1AF37CC();
  v154 = v63;
  v59(v62, v57);
  v64 = v162;
  sub_1E1AF381C();
  v65 = sub_1E1AF37CC();
  v67 = v66;
  v59(v64, v57);
  v153 = v67;
  if (v67)
  {
    v68 = v65;
  }

  else
  {
    v68 = 0;
  }

  v152 = v68;
  v69 = v156;
  v162 = v52;
  sub_1E1AF381C();
  v70 = v164;
  sub_1E1AF368C();
  v187 = v58;
  v179 = v59;
  v59(v69, v57);
  v71 = sub_1E1AF40DC();
  v72 = *(v71 - 8);
  v73 = *(v72 + 48);
  v74 = v73(v70, 1, v71);
  v151 = v72;
  if (v74 == 1)
  {
    sub_1E1308058(v70, &qword_1ECEB2B28);
    v156 = sub_1E15A11A4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1E1676994();
    v76 = v180;
    v156 = sub_1E1AF40AC();
    v180 = v76;
    (*(v72 + 8))(v70, v71);
  }

  v77 = v166;
  v78 = v165;
  v79 = v157;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v80 = v184;
  v179(v79, v184);
  v81 = v73(v78, 1, v71);
  v82 = v163;
  if (v81 == 1)
  {
    sub_1E1308058(v78, &qword_1ECEB2B28);
    v166 = sub_1E15A11A4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1E1676994();
    v83 = v180;
    v166 = sub_1E1AF40AC();
    v180 = v83;
    (*(v151 + 8))(v78, v71);
  }

  v84 = v158;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v179(v84, v80);
  if (v73(v77, 1, v71) == 1)
  {
    sub_1E1308058(v77, &qword_1ECEB2B28);
    v165 = sub_1E15A11A4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1E1676994();
    v85 = v180;
    v165 = sub_1E1AF40AC();
    v180 = v85;
    (*(v151 + 8))(v77, v71);
  }

  sub_1E1AF381C();
  v86 = sub_1E1AF37CC();
  v88 = v87;
  v89 = v82;
  v90 = v82;
  v91 = v179;
  v179(v89, v80);
  v92.value._countAndFlagsBits = v86;
  v92.value._object = v88;
  OfferStyle.init(fromString:)(v92);
  v93 = LOBYTE(v186[0]);
  if (LOBYTE(v186[0]) == 7)
  {
    v93 = 0;
  }

  LODWORD(v164) = v93;
  sub_1E1AF381C();
  v94 = sub_1E1AF37CC();
  v96 = v95;
  v91(v90, v80);
  v97.value._countAndFlagsBits = v94;
  v97.value._object = v96;
  OfferEnvironment.init(fromString:)(v97);
  v98 = LOBYTE(v186[0]);
  if (LOBYTE(v186[0]) == 16)
  {
    v98 = 0;
  }

  LODWORD(v158) = v98;
  sub_1E1AF381C();
  (*(v183 + 16))(v171, v182, v181);
  sub_1E167691C();
  sub_1E1AF464C();
  v99 = v186[0];
  if (v186[0] == 3)
  {
    v99 = 0;
  }

  v171 = v99;
  if (v186[0] == 3)
  {
    v100 = 0;
  }

  else
  {
    v100 = v186[1];
  }

  v157 = v100;
  v101 = v167;
  sub_1E1AF381C();
  LODWORD(v151) = sub_1E1AF370C();
  v91(v101, v80);
  v102 = v168;
  sub_1E1AF381C();
  LODWORD(v167) = sub_1E1AF370C();
  v91(v102, v80);
  v103 = v169;
  sub_1E1AF381C();
  LODWORD(v168) = sub_1E1AF370C();
  v91(v103, v80);
  v104 = v170;
  sub_1E1AF381C();
  LODWORD(v169) = sub_1E1AF370C();
  v91(v104, v80);
  v105 = v172;
  sub_1E1AF381C();
  LODWORD(v170) = sub_1E1AF370C();
  v91(v105, v80);
  v106 = v173;
  sub_1E1AF381C();
  v107 = sub_1E1AF37CC();
  v109 = v108;
  v91(v106, v80);
  v110 = v174;
  v111 = v175;
  if (!v109)
  {
    goto LABEL_31;
  }

  if ((v107 != 1701736302 || v109 != 0xE400000000000000) && (sub_1E1AF74AC() & 1) == 0)
  {
    if (v107 == 0x726564726F657270 && v109 == 0xE800000000000000 || (sub_1E1AF74AC() & 1) != 0)
    {

      v142 = 1;
    }

    else
    {
      if (v107 == 0xD000000000000010 && 0x80000001E1B6D1A0 == v109)
      {
      }

      else
      {
        v143 = sub_1E1AF74AC();

        if ((v143 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v142 = 2;
    }

    LODWORD(v173) = v142;
    goto LABEL_32;
  }

LABEL_31:
  LODWORD(v173) = 0;
LABEL_32:
  sub_1E1AF381C();
  LODWORD(v172) = sub_1E1AF370C();
  v112 = v179;
  v179(v110, v80);
  v113 = v163;
  sub_1E1AF381C();
  v174 = sub_1E1AF36EC();
  v150 = v114;
  v112(v113, v80);
  sub_1E1AF381C();
  sub_1E1AF37EC();
  v112(v113, v80);
  sub_1E1AF381C();
  v149 = sub_1E1AF37CC();
  v148 = v115;
  v112(v113, v80);
  sub_1E1AF381C();
  v147 = sub_1E1AF37CC();
  v146 = v116;
  v112(v113, v80);
  sub_1E1AF381C();
  v145 = sub_1E1AF370C();
  v112(v111, v80);
  sub_1E1AF381C();
  v117 = sub_1E1AF37CC();
  v119 = v118;
  v112(v113, v80);
  v120 = v176;
  sub_1E1AF381C();
  v121 = v80;
  v122 = sub_1E1AF370C();
  v112(v120, v121);
  v123 = v177;
  sub_1E1AF381C();
  v124 = v178;
  sub_1E1AF374C();
  v125 = v124;
  v112(v123, v121);
  v126 = sub_1E1AF5A6C();
  v127 = *(v126 - 8);
  if ((*(v127 + 48))(v125, 1, v126) == 1)
  {
    sub_1E1308058(v125, &qword_1ECEB1F90);
    v128 = 0;
  }

  else
  {
    v129 = v180;
    v128 = sub_1E1AF59FC();
    v180 = v129;
    (*(v127 + 8))(v125, v126);
  }

  v130 = v181;
  v131 = v182;
  v132 = v160;
  v133 = v159;
  if (v186[3])
  {
    *&v185[0] = v160;
    *(&v185[0] + 1) = v159;
    sub_1E15F0D78(v185);
  }

  (*(v183 + 8))(v131, v130);
  v179(v162, v184);
  sub_1E13BFF54(v186, v185);
  type metadata accessor for OfferDisplayProperties();
  v54 = swift_allocObject();
  *(v54 + 16) = v161;
  *(v54 + 24) = v132;
  *(v54 + 32) = v133;
  v134 = v154;
  *(v54 + 40) = v155;
  *(v54 + 48) = v134;
  v135 = v153;
  *(v54 + 56) = v152;
  *(v54 + 64) = v135;
  v136 = v166;
  *(v54 + 72) = v156;
  *(v54 + 80) = v136;
  *(v54 + 88) = v165;
  *(v54 + 96) = v164;
  *(v54 + 97) = v158;
  v137 = v157;
  *(v54 + 104) = v171;
  *(v54 + 112) = v137;
  *(v54 + 120) = v151 & 1;
  *(v54 + 121) = v167 & 1;
  *(v54 + 122) = v168 & 1;
  *(v54 + 123) = v169 & 1;
  *(v54 + 124) = v170 & 1;
  *(v54 + 125) = v172 & 1;
  *(v54 + 126) = v173;
  *(v54 + 128) = v174;
  *(v54 + 136) = v150 & 1;
  v138 = v185[1];
  *(v54 + 144) = v185[0];
  *(v54 + 160) = v138;
  v139 = v148;
  *(v54 + 176) = v149;
  *(v54 + 184) = v139;
  v140 = v146;
  *(v54 + 192) = v147;
  *(v54 + 200) = v140;
  *(v54 + 208) = v145 & 1;
  *(v54 + 216) = v117;
  *(v54 + 224) = v119;
  *(v54 + 232) = v122 & 1;
  *(v54 + 240) = v128;
  sub_1E1308058(v186, &qword_1ECEB2DF0);
  return v54;
}

unint64_t sub_1E1676178()
{
  result = qword_1EE1E4170;
  if (!qword_1EE1E4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4170);
  }

  return result;
}

char sub_1E16761CC@<W0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  LOBYTE(v7) = OfferTitleType.init(rawValue:)(v6);
  if (v10 == 18 || (v7 = sub_1E1AF37CC(), !v8))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = v10;
    a3[1] = v7;
    a3[2] = v8;
  }

  return v7;
}

uint64_t sub_1E1676250(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t a6, char a7, char a8, char a9, char a10, char a11, unsigned __int8 *a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
{
  v30 = *a4;
  v76 = *a5;
  v32 = *a6;
  v31 = *(a6 + 8);
  v33 = *a12;
  v67 = *(v25 + 16);
  v66 = *(v25 + 24);
  v75 = *(v25 + 32);
  v64 = *(v25 + 56);
  v65 = *(v25 + 40);
  v73 = *(v25 + 64);
  v74 = *(v25 + 48);
  if (a1)
  {
    v63 = a1;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v63 = *(v25 + 72);

    if (a2)
    {
LABEL_3:
      v62 = a2;
      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  v62 = *(v25 + 80);

  if (a3)
  {
LABEL_4:
    v61 = a3;
    if (v30 != 7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_31:
  v61 = *(v25 + 88);

  if (v30 == 7)
  {
LABEL_5:
    LOBYTE(v30) = *(v25 + 96);
  }

LABEL_6:
  if (v76 == 16)
  {
    LOBYTE(v76) = *(v25 + 97);
  }

  v71 = v31;
  v72 = v32;
  if (v32 == 3)
  {
    v71 = *(v25 + 112);
    v72 = *(v25 + 104);
    sub_1E139D580(v72, v71);
  }

  if (a7 == 2)
  {
    a7 = *(v25 + 120);
  }

  v34 = a9;
  if (a8 == 2)
  {
    a8 = *(v25 + 121);
  }

  v35 = a10;
  if (a9 == 2)
  {
    v34 = *(v25 + 122);
  }

  v36 = a11;
  if (a10 == 2)
  {
    v35 = *(v25 + 123);
  }

  if (a11 == 2)
  {
    v36 = *(v25 + 124);
  }

  v60 = v34;
  v37 = a13;
  if (v33 == 3)
  {
    LOBYTE(v33) = *(v25 + 126);
  }

  if (a13 == 2)
  {
    v37 = *(v25 + 125);
  }

  v58 = v36;
  v59 = v35;
  v57 = v37;
  if (a15)
  {
    v56 = *(v25 + 128);
    v55 = *(v25 + 136);
  }

  else
  {
    v55 = 0;
    v56 = a14;
  }

  v69 = a8;
  sub_1E13BFF54(a16, &v77);
  if (v78)
  {
    sub_1E1301CF0(&v77, v79);

    sub_1E16769E8(v32, v31);
  }

  else
  {
    sub_1E13BFF54(v25 + 144, v79);
    v38 = v78;

    sub_1E16769E8(v32, v31);
    if (v38)
    {
      sub_1E1308058(&v77, &qword_1ECEB2DF0);
    }
  }

  v68 = v33;
  v40 = a18;
  if (!a18)
  {
    a17 = *(v25 + 176);
  }

  v53 = v40;
  v41 = a21;
  v42 = a20;
  if (!a20)
  {
    a19 = *(v25 + 192);
  }

  v52 = v42;
  v54 = a19;
  if (a21 == 2)
  {
    v41 = *(v25 + 208);
  }

  v44 = a24;
  v45 = a23;
  if (!a23)
  {
    a22 = *(v25 + 216);
    v45 = *(v25 + 224);
  }

  v51 = a22;
  v46 = v30;
  if (a24 == 2)
  {
    v44 = *(v25 + 232);
  }

  v47 = a25;
  if (!a25)
  {
    v47 = *(v25 + 240);
  }

  type metadata accessor for OfferDisplayProperties();
  v48 = swift_allocObject();
  *(v48 + 16) = v67;
  *(v48 + 24) = v66;
  *(v48 + 32) = v75;
  *(v48 + 40) = v65;
  *(v48 + 48) = v74;
  *(v48 + 56) = v64;
  *(v48 + 64) = v73;
  *(v48 + 72) = v63;
  *(v48 + 80) = v62;
  *(v48 + 88) = v61;
  *(v48 + 96) = v46;
  *(v48 + 97) = v76;
  *(v48 + 104) = v72;
  *(v48 + 112) = v71;
  *(v48 + 120) = a7 & 1;
  *(v48 + 121) = v69 & 1;
  *(v48 + 122) = v60 & 1;
  *(v48 + 123) = v59 & 1;
  *(v48 + 124) = v58 & 1;
  *(v48 + 125) = v57 & 1;
  *(v48 + 126) = v68;
  *(v48 + 128) = v56;
  *(v48 + 136) = v55;
  v49 = v79[1];
  *(v48 + 144) = v79[0];
  *(v48 + 160) = v49;
  *(v48 + 176) = a17;
  *(v48 + 184) = v53;
  *(v48 + 192) = v54;
  *(v48 + 200) = v52;
  *(v48 + 208) = v41 & 1;
  *(v48 + 216) = v51;
  *(v48 + 224) = v45;
  *(v48 + 232) = v44 & 1;
  *(v48 + 240) = v47;

  return v48;
}

uint64_t OfferDisplayProperties.deinit()
{

  sub_1E139D53C(*(v0 + 104), *(v0 + 112));
  sub_1E1308058(v0 + 144, &qword_1ECEB2DF0);

  return v0;
}

uint64_t OfferDisplayProperties.__deallocating_deinit()
{
  OfferDisplayProperties.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1676774@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = OfferDisplayProperties.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t OfferDisplayProperties.isArcadeOffer.getter()
{
  if (*(v0 + 16) == 2)
  {
    goto LABEL_8;
  }

  v1 = sub_1E1AF74AC();

  if (v1)
  {
LABEL_9:
    LOBYTE(v5) = 1;
    return v5 & 1;
  }

  if (*(v0 + 16) > 2u)
  {
LABEL_8:

    goto LABEL_9;
  }

  v2 = sub_1E1AF74AC();

  if (v2)
  {
    goto LABEL_9;
  }

  v3 = *(v0 + 97);
  v4 = v3 > 0xC;
  v5 = 0x1380u >> v3;
  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

unint64_t sub_1E167691C()
{
  result = qword_1EE1E4178[0];
  if (!qword_1EE1E4178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1E4178);
  }

  return result;
}

unint64_t sub_1E1676994()
{
  result = qword_1EE1F3C88[0];
  if (!qword_1EE1F3C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F3C88);
  }

  return result;
}

id sub_1E16769E8(id result, void *a2)
{
  if (result != 3)
  {
    return sub_1E139D580(result, a2);
  }

  return result;
}

unint64_t sub_1E16769FC()
{
  result = qword_1EE1F3C80;
  if (!qword_1EE1F3C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F3C80);
  }

  return result;
}

unint64_t sub_1E1676A54()
{
  result = qword_1ECEB75B0;
  if (!qword_1ECEB75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB75B0);
  }

  return result;
}

unint64_t sub_1E1676AAC()
{
  result = qword_1ECEB75B8;
  if (!qword_1ECEB75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB75B8);
  }

  return result;
}

unint64_t sub_1E1676B04()
{
  result = qword_1ECEB75C0;
  if (!qword_1ECEB75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB75C0);
  }

  return result;
}

unint64_t sub_1E1676B5C()
{
  result = qword_1ECEB75C8;
  if (!qword_1ECEB75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB75C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OfferEnvironment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OfferEnvironment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E1676D20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E1676D7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1E1676DCC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

uint64_t dispatch thunk of OfferDisplayProperties.__allocating_init(offerType:adamId:bundleId:parentAdamId:titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + 280);

  return v9(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of OfferDisplayProperties.newOfferDisplayPropertiesChanging(titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 296);

  return v5(a1, a2, a3, a4);
}

uint64_t Ratings.__allocating_init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v28 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v27 - v19;
  v21 = swift_allocObject();
  v22 = (v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingAverage) = a9;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingCounts) = a5;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfReviews) = a7;
  LOBYTE(a7) = *a2;
  v23 = (v21 + OBJC_IVAR____TtC11AppStoreKit7Ratings_status);
  *v23 = v28;
  v23[1] = a10;
  sub_1E138853C(a1, v30);
  v29 = a7;
  v24 = sub_1E1AF46DC();
  (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  v25 = sub_1E1A572C0(v30, &v29, v20);
  sub_1E1308058(a1, &unk_1ECEB5670);
  return v25;
}

uint64_t Ratings.init(id:componentType:productId:ratingAverage:ratingCounts:totalNumberOfRatings:totalNumberOfReviews:status:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v28 = a8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v27 - v20;
  v22 = (v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_productId);
  *v22 = a3;
  v22[1] = a4;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingAverage) = a9;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_ratingCounts) = a5;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfRatings) = a6;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_totalNumberOfReviews) = a7;
  LOBYTE(a7) = *a2;
  v23 = (v10 + OBJC_IVAR____TtC11AppStoreKit7Ratings_status);
  *v23 = v28;
  v23[1] = a10;
  sub_1E138853C(a1, v30);
  v29 = a7;
  v24 = sub_1E1AF46DC();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  v25 = sub_1E1A572C0(v30, &v29, v21);
  sub_1E1308058(a1, &unk_1ECEB5670);
  return v25;
}

uint64_t Ratings.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v66 - v4;
  v5 = sub_1E1AEFEAC();
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  v76 = a1;
  sub_1E1AF381C();
  v27 = sub_1E1AF37CC();
  if (v28)
  {
    v78 = v27;
    v79 = v28;
  }

  else
  {
    sub_1E1AEFE9C();
    v29 = sub_1E1AEFE7C();
    v30 = v5;
    v31 = v23;
    v33 = v32;
    v71[1](v7, v30);
    v78 = v29;
    v79 = v33;
    v23 = v31;
  }

  sub_1E1AF6F6C();
  v34 = *(v9 + 8);
  v34(v26, v8);
  sub_1E1AF381C();
  sub_1E1677A34();
  sub_1E1AF369C();
  v71 = v23;
  v34(v23, v8);
  v77 = v78;
  sub_1E1AF381C();
  v35 = sub_1E1AF37CC();
  v67 = v36;
  v68 = v35;
  v34(v20, v8);
  sub_1E1AF381C();
  v37 = sub_1E1AF375C();
  v34(v17, v8);
  v38 = v69;
  sub_1E1AF381C();
  v39 = v72;
  sub_1E1AF374C();
  v40 = v34;
  v41 = v8;
  v42 = v40;
  v40(v38, v8);
  v43 = sub_1E1AF5A6C();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v39, 1, v43) == 1)
  {
    sub_1E1308058(v39, &qword_1ECEB1F90);
    v69 = 0;
  }

  else
  {
    sub_1E1380D6C();
    v69 = sub_1E1AF5A0C();
    (*(v44 + 8))(v39, v43);
  }

  if ((v37 & 0x100000000) != 0)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = *&v37;
  }

  v46 = v70;
  v47 = v76;
  sub_1E1AF381C();
  v48 = sub_1E1AF36EC();
  v50 = v49;
  v51 = v42;
  v42(v46, v8);
  if (v50)
  {
    v52 = 0;
  }

  else
  {
    v52 = v48;
  }

  v72 = v52;
  v53 = v73;
  v54 = v47;
  sub_1E1AF381C();
  v55 = sub_1E1AF36EC();
  v57 = v56;
  v42(v53, v8);
  if (v57)
  {
    v58 = 0;
  }

  else
  {
    v58 = v55;
  }

  v59 = v71;
  sub_1E1AF381C();
  v60 = sub_1E1AF37CC();
  v62 = v61;
  v51(v59, v41);
  v63 = (*(v74 + 168))(v80, &v77, v68, v67, v69, v72, v58, v60, v45, v62);
  v64 = sub_1E1AF39DC();
  (*(*(v64 - 8) + 8))(v75, v64);
  v51(v54, v41);
  return v63;
}

unint64_t sub_1E1677A34()
{
  result = qword_1EE1E6A50;
  if (!qword_1EE1E6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E6A50);
  }

  return result;
}

uint64_t Ratings.productId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit7Ratings_productId);

  return v1;
}

uint64_t Ratings.status.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit7Ratings_status);

  return v1;
}

uint64_t sub_1E1677B40()
{
}

uint64_t Ratings.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t Ratings.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Ratings()
{
  result = qword_1EE1E49F0;
  if (!qword_1EE1E49F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

AppStoreKit::RoundedButtonType_optional __swiftcall RoundedButtonType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t RoundedButtonType.rawValue.getter()
{
  if (*v0)
  {
    return 0x647261646E617473;
  }

  else
  {
    return 0x6572616873;
  }
}

uint64_t sub_1E1677E7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6572616873;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6572616873;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E1677F20()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1677FA0()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E167800C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1678088@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1E16780E8(uint64_t *a1@<X8>)
{
  v2 = 0x6572616873;
  if (*v1)
  {
    v2 = 0x647261646E617473;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t RoundedButton.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *RoundedButton.buttonColor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *RoundedButton.textColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t RoundedButton.__allocating_init(id:type:hasDivider:title:action:buttonColor:textColor:)(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a4;
  v31 = a6;
  v29 = a3;
  v13 = sub_1E1AEFEAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v18 = *a2;
  sub_1E138853C(a1, &v34);
  if (*(&v35 + 1))
  {
    v19 = v35;
    *(v17 + 64) = v34;
    *(v17 + 80) = v19;
    *(v17 + 96) = v36;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v28 = a5;
    v21 = a7;
    v22 = a8;
    v24 = v23;
    (*(v14 + 8))(v16, v13);
    v32 = v20;
    v33 = v24;
    a8 = v22;
    a7 = v21;
    a5 = v28;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v34);
  }

  sub_1E13E2E98(a1);
  *(v17 + 17) = v18;
  *(v17 + 16) = v29 & 1;
  v25 = v30;
  *(v17 + 24) = v31;
  *(v17 + 32) = v25;
  *(v17 + 40) = a5;
  *(v17 + 48) = a7;
  *(v17 + 56) = a8;
  return v17;
}

uint64_t RoundedButton.init(id:type:hasDivider:title:action:buttonColor:textColor:)(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v33 = a4;
  v32 = a3;
  v15 = sub_1E1AEFEAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  sub_1E138853C(a1, &v36);
  if (*(&v37 + 1))
  {
    v39 = v36;
    v40 = v37;
    v41 = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v30 = a2;
    a2 = v20;
    v31 = a6;
    v21 = a5;
    v22 = a7;
    v23 = a8;
    v25 = v24;
    (*(v16 + 8))(v18, v15);
    v34 = a2;
    v35 = v25;
    LOBYTE(a2) = v30;
    a8 = v23;
    a7 = v22;
    a5 = v21;
    a6 = v31;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v36);
  }

  sub_1E13E2E98(a1);
  v26 = v40;
  *(v9 + 64) = v39;
  *(v9 + 80) = v26;
  *(v9 + 96) = v41;
  *(v9 + 17) = a2;
  *(v9 + 16) = v32 & 1;
  v27 = v33;
  *(v9 + 24) = a6;
  *(v9 + 32) = v27;
  *(v9 + 40) = a5;
  *(v9 + 48) = a7;
  *(v9 + 56) = a8;
  return v9;
}

uint64_t RoundedButton.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RoundedButton.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *RoundedButton.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v52 = *v3;
  v5 = sub_1E1AEFEAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  v57 = a1;
  sub_1E1AF381C();
  v24 = sub_1E1AF37CC();
  if (v25)
  {
    v59 = v24;
    v60 = v25;
  }

  else
  {
    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v27 = v6;
    v29 = v28;
    (*(v27 + 8))(v8, v5);
    v59 = v26;
    v60 = v29;
  }

  sub_1E1AF6F6C();
  v30 = *(v10 + 8);
  v30(v23, v9);
  v31 = v62;
  *(v3 + 4) = v61;
  *(v3 + 5) = v31;
  v3[12] = v63;
  v32 = v57;
  sub_1E1AF381C();
  sub_1E1678CD0();
  v33 = v58;
  sub_1E1AF36AC();
  if (v33)
  {
    v34 = sub_1E1AF39DC();
    (*(*(v34 - 8) + 8))(v64, v34);
    v30(v32, v9);
    v30(v20, v9);
  }

  else
  {
    v58 = v10 + 8;
    v30(v20, v9);
    *(v3 + 17) = v61;
    type metadata accessor for Action();
    v35 = v56;
    sub_1E1AF381C();
    v37 = static Action.makeInstance(byDeserializing:using:)(v35, v64);
    v30(v35, v9);
    v3[3] = v37;
    v38 = v55;
    sub_1E1AF381C();
    v39 = sub_1E1AF37CC();
    v40 = v32;
    v42 = v41;
    v30(v38, v9);
    if (v42)
    {
      v3[4] = v39;
      v3[5] = v42;
      v43 = v53;
      sub_1E1AF381C();
      v44 = JSONObject.appStoreColor.getter();
      v30(v43, v9);
      v3[6] = v44;
      sub_1E1AF381C();
      v45 = JSONObject.appStoreColor.getter();
      v30(v43, v9);
      v3[7] = v45;
      v46 = v54;
      sub_1E1AF381C();
      LOBYTE(v45) = sub_1E1AF370C();
      v47 = sub_1E1AF39DC();
      (*(*(v47 - 8) + 8))(v64, v47);
      v30(v40, v9);
      v30(v46, v9);
      *(v3 + 16) = v45 & 1;
      return v3;
    }

    v48 = sub_1E1AF5A7C();
    sub_1E1678E80(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v49 = 0x656C746974;
    v50 = v52;
    v49[1] = 0xE500000000000000;
    v49[2] = v50;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x1E69AB690], v48);
    swift_willThrow();
    v51 = sub_1E1AF39DC();
    (*(*(v51 - 8) + 8))(v64, v51);
    v30(v40, v9);
  }

  sub_1E134B88C((v3 + 8));
  type metadata accessor for RoundedButton();
  swift_deallocPartialClassInstance();
  return v3;
}

unint64_t sub_1E1678CD0()
{
  result = qword_1EE1DE758[0];
  if (!qword_1EE1DE758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1DE758);
  }

  return result;
}

uint64_t RoundedButton.deinit()
{

  sub_1E134B88C(v0 + 64);
  return v0;
}

uint64_t RoundedButton.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_1E1678DE4()
{
  result = qword_1ECEB75D0;
  if (!qword_1ECEB75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB75D0);
  }

  return result;
}

uint64_t sub_1E1678E80(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_1E1678ED8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for RoundedButton();
  v7 = swift_allocObject();
  result = RoundedButton.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void SponsoredSearchAdvert.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1E1AF6C4C();
  v5 = sub_1E1AF6C2C();
  v7 = v6;

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = sub_1E1AF6C4C();
  v9 = sub_1E1AF6C2C();
  v11 = v10;

  if (!v11)
  {

LABEL_11:
    sub_1E1AF6C4C();
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF56BC();
    swift_willThrow();

    return;
  }

  v33 = v9;
  v12 = sub_1E1AF6C4C();
  v13 = [v12 toDictionary];

  if (!v13)
  {

    goto LABEL_11;
  }

  v14 = sub_1E1AF5C7C();

  v15 = sub_1E1AF6C4C();
  v16 = [v15 toDictionary];

  if (!v16)
  {

    goto LABEL_11;
  }

  v32 = v14;
  v31 = sub_1E1AF5C7C();

  v17 = sub_1E1AF6C4C();
  v18 = [v17 toArray];

  if (v18)
  {
    v19 = sub_1E1AF621C();

    v30 = sub_1E1679410(v19);
  }

  else
  {
    v30 = 0;
  }

  v20 = sub_1E1AF6C4C();
  v34 = sub_1E1AF6C2C();
  v29 = v21;

  v22 = sub_1E1AF6C4C();
  v23 = sub_1E1AF6C2C();
  v28 = v24;

  v25 = sub_1E1AF6C4C();
  v26 = [v25 toArray];

  if (v26)
  {
    v27 = sub_1E1AF621C();

    v26 = sub_1E1679410(v27);
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v33;
  a2[3] = v11;
  a2[4] = v32;
  a2[5] = v31;
  a2[6] = v30;
  a2[7] = v34;
  a2[8] = v29;
  a2[9] = v23;
  a2[10] = v28;
  a2[11] = v26;
}

uint64_t sub_1E1679410(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1E135C088(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1E137A5C4(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E135C088((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1E167954C(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1E1AF70EC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_1E1300B24(i, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
    type metadata accessor for GameCenterPlayer(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1E1AF70BC();
    sub_1E1AF70FC();
    sub_1E1AF710C();
    sub_1E1AF70CC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1E1679680(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t), uint64_t *a3)
{
  v6 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  a2(0, v6, 0);
  v7 = v14;
  if (v6)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1E137A5C4(i, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(a3);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v14 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        a2(v9 > 1, v10 + 1, 1);
        v7 = v14;
      }

      *(v7 + 16) = v10 + 1;
      *(v7 + 8 * v10 + 32) = v12;
      if (!--v6)
      {
        return v7;
      }
    }

    return 0;
  }

  return v7;
}

JSValue __swiftcall SponsoredSearchAdvert.makeValue(in:)(JSContext in)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v37 = v1[8];
  v38 = v1[6];
  v32 = v1[9];
  v34 = v1[7];
  v35 = v1[11];
  v36 = v1[10];
  v9 = objc_opt_self();
  result.super.isa = [v9 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_24;
  }

  isa = result.super.isa;
  v39 = v4;
  v40 = v3;

  v12 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1E1AF6C5C();
  v39 = v5;
  v40 = v6;

  v13 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1E1AF6C5C();
  v39 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50);
  v14 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_1E1AF6C5C();
  v39 = v7;

  v15 = [v9 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1E1AF6C5C();
  if (v38)
  {
    v39 = v38;

    v16 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
    v17 = sub_1E1AF748C();
    sub_1E1679CB4(&v39);
  }

  else
  {
    v18 = in.super.isa;
    v17 = 0;
  }

  v19 = [v9 valueWithObject:v17 inContext:{in.super.isa, v32}];
  swift_unknownObjectRelease();

  if (!v19)
  {
    goto LABEL_28;
  }

  sub_1E1AF6C5C();
  v20 = v37;
  if (v37)
  {
    v39 = v34;
    v40 = v37;
    v21 = in.super.isa;

    v20 = sub_1E1AF748C();
    sub_1E1455104(&v39);
  }

  else
  {
    v22 = in.super.isa;
  }

  v23 = [v9 valueWithObject:v20 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v23)
  {
    goto LABEL_29;
  }

  sub_1E1AF6C5C();
  v24 = v36;
  if (v36)
  {
    v39 = v33;
    v40 = v36;
    v25 = in.super.isa;

    v24 = sub_1E1AF748C();
    sub_1E1455104(&v39);
  }

  else
  {
    v26 = in.super.isa;
  }

  v27 = [v9 valueWithObject:v24 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v27)
  {
    goto LABEL_30;
  }

  sub_1E1AF6C5C();
  v28 = v35;
  if (v35)
  {
    v39 = v35;
    v29 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
    v28 = sub_1E1AF748C();
    sub_1E1679CB4(&v39);
  }

  else
  {
    v30 = in.super.isa;
  }

  v31 = [v9 valueWithObject:v28 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v31)
  {
    sub_1E1AF6C5C();
    return isa;
  }

LABEL_31:
  __break(1u);
  return result;
}

__n128 SponsoredSearchAdvert.init(instanceId:adamId:assetInformation:adData:cppIds:serverCppId:selectedCppId:appBinaryTraits:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11)
{
  result = a10;
  v12 = *a3;
  v13 = a3[1];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v12;
  *(a9 + 24) = v13;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  return result;
}

uint64_t sub_1E1679CB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SponsoredSearchAdvert.instanceId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SponsoredSearchAdvert.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t SponsoredSearchAdvert.serverCppId.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SponsoredSearchAdvert.selectedCppId.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1E1679DF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E1679E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Box.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Box.init(value:)(a1);
  return v2;
}

uint64_t Box.write(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12 = a2;
  v5 = sub_1E1AF320C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF31FC();
  v16 = v9;
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  v13 = a1;
  v14 = v12;
  v15 = v3;
  sub_1E1AF68FC();
  return (*(v6 + 8))(v8, v5);
}

uint64_t Box.value.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1E167ABE0(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1E167A22C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  swift_beginAccess();
  return (*(*(*(v4 + 80) - 8) + 16))(a2, a1 + v5);
}

uint64_t sub_1E167A2E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(a1 + v5, a2);
  return swift_endAccess();
}

void (*Box.value.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(*v2 + 80);
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  if (v4)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[4] = v10;
  sub_1E1AF690C();
  return sub_1E167A4F0;
}

void sub_1E167A4F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1E167ABE0(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1E167ABE0(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

char *Box.init(value:)(uint64_t a1)
{
  v11 = *v1;
  v12 = a1;
  v10 = sub_1E1AF68DC();
  v2 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v6);
  v9[1] = sub_1E1361A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  v13 = v7;
  sub_1E130292C(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v10);
  *(v1 + 2) = sub_1E1AF692C();
  (*(*(*(v11 + 80) - 8) + 32))(&v1[*(*v1 + 96)], v12);
  return v1;
}

uint64_t sub_1E167A8F8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  v10 = *(v9 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v8, a3 + v10, v5);
  a1(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E167AA68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(*v2 + 96);
  swift_beginAccess();
  v1(v2 + v3);
  return swift_endAccess();
}

id *Box.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t Box.__deallocating_deinit()
{
  Box.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E167ABE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF320C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF31FC();
  v13 = v8;
  sub_1E130292C(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  v11 = v2;
  v12 = a1;
  sub_1E1AF68FC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E167ADE0()
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

uint64_t SearchPageSegmentChangeAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v24 = sub_1E1AF39DC();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v28 = sub_1E1AF380C();
  v23 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  type metadata accessor for StyledText();
  sub_1E1AF381C();
  v27 = v4;
  v12 = *(v4 + 16);
  v13 = a2;
  v14 = a2;
  v15 = v24;
  v12(v8, v14, v24);
  sub_1E167B1F4();
  v16 = v13;
  v17 = a1;
  v18 = v23;
  sub_1E1AF464C();
  *(v26 + OBJC_IVAR____TtC11AppStoreKit29SearchPageSegmentChangeAction_switchToOtherSegmentText) = v29;
  (*(v18 + 16))(v10, v17, v28);
  v19 = v25;
  v12(v25, v13, v15);
  v20 = PageTabChangeAction.init(deserializing:using:)(v10, v19);
  (*(v27 + 8))(v16, v15);
  (*(v18 + 8))(v17, v28);
  return v20;
}

unint64_t sub_1E167B1F4()
{
  result = qword_1EE1F7BC0;
  if (!qword_1EE1F7BC0)
  {
    type metadata accessor for StyledText();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F7BC0);
  }

  return result;
}

uint64_t SearchPageSegmentChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t SearchPageSegmentChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchPageSegmentChangeAction()
{
  result = qword_1ECEB75D8;
  if (!qword_1ECEB75D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E167B520()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3680);
  result = swift_allocObject();
  *(result + 16) = sub_1E167B570;
  *(result + 24) = 0;
  qword_1EE1D3A90 = result;
  return result;
}

void sub_1E167B570(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = *MEMORY[0x1E69DDC40];
  v6 = *MEMORY[0x1E69DDC38];
  v7 = v4;
  v8 = v5;
  v9 = v6;
  if (sub_1E1AF6AFC())
  {
    if (sub_1E1AF6AEC())
    {
      v10 = sub_1E1AF6AFC();

      if (v10)
      {

        v11 = 16.0;
LABEL_12:
        *a2 = v11;
        return;
      }
    }

    else
    {
    }

    v12 = sub_1E1AF5DFC();
    v14 = v13;
    if (v12 == sub_1E1AF5DFC() && v14 == v15)
    {

      goto LABEL_10;
    }

    v16 = sub_1E1AF74AC();

    if (v16)
    {
LABEL_10:
      v17 = sub_1E1AF6AFC();

      v11 = 33.0;
      if ((v17 & 1) == 0)
      {
        v11 = 13.0;
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t static StandardSearchResultContentViewMetrics.bottomMargin.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE1D3A80 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EE1D3A90;
}

uint64_t ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ReusableSupplementaryRegistration.elementKind.getter()
{
  v0 = sub_1E167B9E8();

  return v0;
}

uint64_t ReusableSupplementaryRegistration.reuseIdentifier.getter()
{
  v0 = sub_1E167B9F0();

  return v0;
}

uint64_t ReusableSupplementaryRegistration.dequeueConfiguredSupplementary(at:in:)(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 5);
  v5 = *v1;
  v6 = v2;
  v7 = *(v1 + 24);
  v8 = v3;
  return sub_1E16AF77C(&v5, a1);
}

void ReusableSupplementaryRegistration.reconfigureSupplementary(at:in:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[4];
  v8 = sub_1E1AF5DBC();
  v9 = sub_1E1AF015C();
  v11 = [a2 supplementaryViewForElementKind:v8 atIndexPath:v9];

  if (v11)
  {
    v10 = swift_dynamicCastUnknownClass();
    if (v10)
    {
      v7(v10, v5, v6, a1);
    }
  }
}

uint64_t sub_1E167B970()
{
  v0 = sub_1E167B9E8();

  return v0;
}

uint64_t sub_1E167B9A8()
{
  v0 = sub_1E167B9F0();

  return v0;
}

uint64_t sub_1E167BA48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void CommerceDialogHandler.handle(_:resultHandler:)(void *a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v53 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v10 = sub_1E1AF539C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7438);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v46 = v9;
    v48 = a2;
    v49 = a3;
    v22 = OBJC_IVAR____TtC11AppStoreKit21CommerceDialogHandler_bag;
    sub_1E167C204(v4 + OBJC_IVAR____TtC11AppStoreKit21CommerceDialogHandler_bag, v21);
    v23 = *(v11 + 48);
    if (v23(v21, 1, v10) == 1)
    {
      sub_1E1308058(v21, &qword_1ECEB7438);
      v47 = [objc_opt_self() createBagForSubProfile];
      if (!v47)
      {
        sub_1E167C274();
        v24 = swift_allocError();
        v48(0, v24);

        return;
      }
    }

    else
    {
      v47 = sub_1E1AF527C();
      (*(v11 + 8))(v21, v10);
    }

    sub_1E167C204(v4 + v22, v18);
    if (v23(v18, 1, v10) == 1)
    {
      sub_1E1308058(v18, &qword_1ECEB7438);
      v27 = v48;
      v26 = v49;
      v28 = v47;
      v29 = v53;
    }

    else
    {
      v30 = *(v11 + 32);
      v31 = v50;
      v30();
      (*(v11 + 16))(v13, v31, v10);
      type metadata accessor for ASKBagContract();
      v32 = swift_allocObject();
      (v30)(v32 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag, v13, v10);
      v33 = v32 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
      *v33 = 0;
      *(v33 + 8) = 0;
      *(v33 + 16) = 1;
      if (qword_1EE1E2F68 != -1)
      {
        swift_once();
      }

      v34 = v46;
      sub_1E1AF52FC();
      v35 = v52;
      sub_1E1AF532C();
      (*(v51 + 8))(v34, v35);
      swift_setDeallocating();
      v36 = *(v11 + 8);
      v36(v32 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag, v10);
      swift_deallocClassInstance();
      v29 = v53;
      [v53 setAnonymousMetrics_];
      v36(v31, v10);
      v27 = v48;
      v26 = v49;
      v28 = v47;
    }

    v37 = objc_allocWithZone(MEMORY[0x1E698CCD0]);
    v38 = Strong;
    v39 = [v37 initWithRequest:v29 bag:v28 presentingViewController:Strong];
    if (qword_1EE1ED2A8 != -1)
    {
      swift_once();
    }

    v40 = qword_1EE1ED2B0 + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId;
    swift_beginAccess();
    if (*(v40 + 8))
    {
      v41 = objc_opt_self();

      v42 = [v41 currentProcess];
      v43 = sub_1E1AF5DBC();

      [v42 setProxyAppBundleID_];

      [v39 setClientInfo_];
    }

    v44 = [v39 presentEngagement];
    aBlock[4] = v27;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E14CC840;
    aBlock[3] = &block_descriptor_45;
    v45 = _Block_copy(aBlock);

    [v44 addFinishBlock_];
    _Block_release(v45);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E167C1AC();
    v25 = swift_allocError();
    a2(0, v25);
  }
}

unint64_t sub_1E167C1AC()
{
  result = qword_1ECEB75F0;
  if (!qword_1ECEB75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB75F0);
  }

  return result;
}

uint64_t sub_1E167C204(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E167C274()
{
  result = qword_1ECEB7600;
  if (!qword_1ECEB7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7600);
  }

  return result;
}

id CommerceDialogHandler.__allocating_init(_:_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC11AppStoreKit21CommerceDialogHandler_bag;
  v8 = sub_1E1AF539C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a2, v8);
  (*(v9 + 56))(&v6[v7], 0, 1, v8);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v12.receiver = v6;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  (*(v9 + 8))(a2, v8);
  return v10;
}

id CommerceDialogHandler.init(_:_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC11AppStoreKit21CommerceDialogHandler_bag;
  v8 = sub_1E1AF539C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a2, v8);
  (*(v9 + 56))(&v3[v7], 0, 1, v8);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  (*(v9 + 8))(a2, v8);
  return v10;
}

void CommerceDialogHandler.sheetPresentationViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*CommerceDialogHandler.sheetPresentationViewController.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit21CommerceDialogHandler_sheetPresentationViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1E158EF0C;
}

BOOL CommerceDialogHandler.isActive.getter()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = [v1 dialogObserver];

  if (!v2)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  return v2 == v0;
}

void sub_1E167C79C(void **a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_opt_self() defaultCenter];
  v5 = [v4 dialogObserver];

  if (v5)
  {
    swift_unknownObjectRelease();
    v6 = v5 == v3;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void CommerceDialogHandler.isActive.setter(char a1)
{
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  v5 = v4;
  if (a1)
  {
    [v4 setDialogObserver_];
  }

  else
  {
    v7 = [v4 dialogObserver];

    if (!v7)
    {
      return;
    }

    swift_unknownObjectRelease();
    if (v7 != v1)
    {
      return;
    }

    v5 = [v3 defaultCenter];
    [v5 setDialogObserver_];
  }

  if (qword_1EE1E35A0 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AF591C();
  __swift_project_value_buffer(v6, qword_1EE216128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  v9 = MEMORY[0x1E69E6370];
  v8[0] = a1 & 1;
  sub_1E1AF38BC();
  sub_1E1308058(v8, &qword_1ECEB2DF0);
  sub_1E1AF549C();
}

void (*CommerceDialogHandler.isActive.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [objc_opt_self() defaultCenter];
  v4 = [v3 dialogObserver];

  if (v4)
  {
    swift_unknownObjectRelease();
    v5 = v4 == v1;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = v5;
  return sub_1E167CB28;
}

id CommerceDialogHandler.presentingSceneIdentifier.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    result = [result view];
    if (result)
    {
      v2 = result;
      v3 = [result window];

      if (v3 && (v4 = [v3 windowScene], v3, v4))
      {
        v5 = [v4 _sceneIdentifier];

        v6 = sub_1E1AF5DFC();
        return v6;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t CommerceDialogHandler.handle(_:resultHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  return sub_1E167D224(a1, a2, a3, &unk_1F5C442C0, sub_1E167E5EC, &block_descriptor_6_2);
}

{
  return sub_1E167D224(a1, a2, a3, &unk_1F5C44310, sub_1E167E5F8, &block_descriptor_13_0);
}

{
  return sub_1E167D224(a1, a2, a3, &unk_1F5C44360, sub_1E167E64C, &block_descriptor_20_1);
}

void sub_1E167CC84(uint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = Strong, swift_beginAccess(), v9 = swift_unknownObjectWeakLoadStrong(), v8, v9))
  {
    v10 = [v9 frontmostViewController];
    v11 = [v10 view];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 window];

      if (v13)
      {

        v21 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithRequest:a4 presentingViewController:v10];
        v14 = [v21 performAuthentication];
        v15 = swift_allocObject();
        *(v15 + 16) = a4;
        v26 = sub_1E167F1A8;
        v27 = v15;
        aBlock = MEMORY[0x1E69E9820];
        v23 = 1107296256;
        v24 = sub_1E164F7D4;
        v25 = &block_descriptor_79;
        v16 = _Block_copy(&aBlock);
        v17 = a4;

        [v14 addErrorBlock_];
        _Block_release(v16);
        v26 = a2;
        v27 = a3;
        aBlock = MEMORY[0x1E69E9820];
        v23 = 1107296256;
        v24 = sub_1E1619988;
        v25 = &block_descriptor_82_2;
        v18 = _Block_copy(&aBlock);

        [v14 addFinishBlock_];
        _Block_release(v18);
      }

      else
      {
        sub_1E167E660();
        v20 = swift_allocError();
        (a2)(0, v20);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1E167C1AC();
    v19 = swift_allocError();
    (a2)(0, v19);
  }
}

uint64_t sub_1E167CF80(uint64_t a1, void *a2)
{
  if (qword_1EE1E35A0 != -1)
  {
    swift_once();
  }

  v3 = sub_1E1AF591C();
  __swift_project_value_buffer(v3, qword_1EE216128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  v9 = sub_1E13006E4(0, &unk_1ECEB7680);
  v8[0] = a2;
  v4 = a2;
  sub_1E1AF383C();
  sub_1E1308058(v8, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  swift_getErrorValue();
  v9 = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF383C();
  sub_1E1308058(v8, &qword_1ECEB2DF0);
  sub_1E1AF54AC();
}

uint64_t sub_1E167D224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v23[1] = a4;
  v24 = a2;
  v8 = sub_1E1AF320C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E1AF324C();
  v12 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430);
  v15 = sub_1E1AF68EC();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v19 = v24;
  v18 = v25;
  v17[2] = v16;
  v17[3] = v19;
  v17[4] = a3;
  v17[5] = a1;
  aBlock[4] = v18;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = v26;
  v20 = _Block_copy(aBlock);

  v21 = a1;

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v14, v11, v20);
  _Block_release(v20);

  (*(v9 + 8))(v11, v8);
  return (*(v12 + 8))(v14, v27);
}

void sub_1E167D4E4(uint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v10 = sub_1E167D750();
    v16 = [objc_allocWithZone(MEMORY[0x1E698CC50]) initWithRequest:a4 presentingViewController:v10];
    v11 = [v16 present];
    v12 = swift_allocObject();
    *(v12 + 16) = a4;
    v21 = sub_1E167F1A0;
    v22 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1E164F7D4;
    v20 = &block_descriptor_70_2;
    v13 = _Block_copy(&aBlock);
    v14 = a4;

    [v11 addErrorBlock_];
    _Block_release(v13);
    v21 = a2;
    v22 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1E1619988;
    v20 = &block_descriptor_73_0;
    v15 = _Block_copy(&aBlock);

    [v11 addFinishBlock_];

    _Block_release(v15);
  }

  else
  {
    sub_1E167C1AC();
    v9 = swift_allocError();
    (a2)(0, v9);
  }
}

id sub_1E167D750()
{
  v1 = v0;
  v2 = sub_1E1AF32BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E13006E4(0, &qword_1EE1E3430);
  *v5 = sub_1E1AF68EC();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1E1AF32EC();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        sub_1E167C1AC();
        swift_allocError();
        swift_willThrow();
        return v1;
      }
    }

    v9 = Strong;
    v1 = [Strong frontmostViewController];
    result = [v1 view];
    if (result)
    {
      v10 = result;
      v11 = [result window];

      if (v11)
      {
      }

      else
      {
        sub_1E167E660();
        swift_allocError();
        swift_willThrow();
      }

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E167D998(uint64_t a1, void *a2)
{
  if (qword_1EE1E35A0 != -1)
  {
    swift_once();
  }

  v3 = sub_1E1AF591C();
  __swift_project_value_buffer(v3, qword_1EE216128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  v9 = sub_1E13006E4(0, &qword_1ECEB4A70);
  v8[0] = a2;
  v4 = a2;
  sub_1E1AF383C();
  sub_1E1308058(v8, &qword_1ECEB2DF0);
  sub_1E1AF382C();
  swift_getErrorValue();
  v9 = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF383C();
  sub_1E1308058(v8, &qword_1ECEB2DF0);
  sub_1E1AF54AC();
}

uint64_t sub_1E167DCC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_1E1AF649C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1E1AF644C();

  v13 = a4;
  v14 = sub_1E1AF643C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v11;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = v13;

  sub_1E154AF74(0, 0, v9, &unk_1E1B24E28, v15);
}

uint64_t sub_1E167DE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  sub_1E1AF644C();
  v7[11] = sub_1E1AF643C();
  v9 = sub_1E1AF63CC();
  v7[12] = v9;
  v7[13] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E167DF14, v9, v8);
}

uint64_t sub_1E167DF14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1E167D750();
    *(v0 + 112) = v3;
    v8 = *(v0 + 80);
    v9 = v3;

    v10 = type metadata accessor for ViewPresentationTask();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC11AppStoreKit20ViewPresentationTask_request] = v8;
    *(v0 + 40) = v11;
    *(v0 + 48) = v10;
    v12 = v8;
    *(v0 + 120) = objc_msgSendSuper2((v0 + 40), sel_init);
    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    *v13 = v0;
    v13[1] = sub_1E167E0F8;

    return sub_1E179DBF0(v9);
  }

  else
  {
    v4 = *(v0 + 64);

    sub_1E167C1AC();
    v5 = swift_allocError();
    v4(0, v5);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1E167E0F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1E167E2C4;
  }

  else
  {
    v4[18] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1E167E220;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E167E220()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[8];

  v5 = v1;
  v4(v1, 0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E167E2C4()
{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[17];
  v4 = v0[8];
  v5 = v3;
  v4(0, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E167E39C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void sub_1E167E444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1E1AEFB1C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id CommerceDialogHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CommerceDialogHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_2Tm_1()
{

  return swift_deallocObject();
}

unint64_t sub_1E167E660()
{
  result = qword_1ECEB7608;
  if (!qword_1ECEB7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7608);
  }

  return result;
}

uint64_t keypath_getTm_4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for CommerceDialogHandler()
{
  result = qword_1EE1ED408;
  if (!qword_1EE1ED408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E167E7BC()
{
  sub_1E167E884();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E167E884()
{
  if (!qword_1EE1E3668)
  {
    sub_1E1AF539C();
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1E3668);
    }
  }
}

void sub_1E167E90C(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v59 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v51 - v7;
  v8 = sub_1E1AF539C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7438);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v51 = v6;
    v53 = a1;
    v54 = Strong;
    v55 = v19;
    v21 = OBJC_IVAR____TtC11AppStoreKit21CommerceDialogHandler_bag;
    sub_1E167C204(a2 + OBJC_IVAR____TtC11AppStoreKit21CommerceDialogHandler_bag, v18);
    v22 = *(v9 + 48);
    v23 = v22(v18, 1, v8);
    _Block_copy(a3);
    if (v23 == 1)
    {
      v24 = v9;
      sub_1E1308058(v18, &qword_1ECEB7438);
      v25 = 0x1E698C000uLL;
      v52 = [objc_opt_self() createBagForSubProfile];
      if (!v52)
      {
        sub_1E167C274();
        v26 = swift_allocError();
        v27 = sub_1E1AEFB1C();
        (a3)[2](a3, 0, v27);

        return;
      }
    }

    else
    {
      v52 = sub_1E1AF527C();
      v24 = v9;
      (*(v9 + 8))(v18, v8);
      v25 = 0x1E698C000;
    }

    sub_1E167C204(a2 + v21, v15);
    if (v22(v15, 1, v8) == 1)
    {
      sub_1E1308058(v15, &qword_1ECEB7438);
      v31 = v54;
      v30 = v55;
      v33 = v52;
      v32 = v53;
    }

    else
    {
      v34 = v24;
      v35 = *(v24 + 32);
      v36 = v58;
      v35(v58, v15, v8);
      v37 = *(v24 + 16);
      v38 = v56;
      v37(v56, v36, v8);
      type metadata accessor for ASKBagContract();
      v39 = swift_allocObject();
      v35((v39 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag), v38, v8);
      v40 = v39 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
      *v40 = 0;
      *(v40 + 8) = 0;
      *(v40 + 16) = 1;
      v33 = v52;
      if (qword_1EE1E2F68 != -1)
      {
        swift_once();
      }

      v41 = v57;
      sub_1E1AF52FC();
      v42 = v51;
      sub_1E1AF532C();
      (*(v59 + 8))(v41, v42);
      swift_setDeallocating();
      v43 = *(v34 + 8);
      v43(v39 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag, v8);
      swift_deallocClassInstance();
      v32 = v53;
      [v53 setAnonymousMetrics_];
      v43(v36, v8);
      v31 = v54;
      v30 = v55;
      v25 = 0x1E698C000uLL;
    }

    v44 = [objc_allocWithZone(*(v25 + 3280)) initWithRequest:v32 bag:v33 presentingViewController:v31];
    if (qword_1EE1ED2A8 != -1)
    {
      swift_once();
    }

    v45 = qword_1EE1ED2B0 + OBJC_IVAR____TtC11AppStoreKit21HostProcessIdentifier_hostBundleId;
    swift_beginAccess();
    if (*(v45 + 8))
    {
      v46 = objc_opt_self();

      v47 = [v46 currentProcess];
      v48 = sub_1E1AF5DBC();

      [v47 setProxyAppBundleID_];

      [v44 setClientInfo_];
    }

    v49 = [v44 presentEngagement];
    aBlock[4] = sub_1E167F0A8;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E14CC840;
    aBlock[3] = &block_descriptor_52_0;
    v50 = _Block_copy(aBlock);

    [v49 addFinishBlock_];
    _Block_release(v50);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E167C1AC();
    v28 = swift_allocError();
    _Block_copy(a3);
    v29 = sub_1E1AEFB1C();
    (a3)[2](a3, 0, v29);
  }
}

uint64_t sub_1E167F0CC(uint64_t a1)
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
  v10[1] = sub_1E130B5DC;

  return sub_1E167DE78(a1, v4, v5, v6, v7, v9, v8);
}

AppStoreKit::ProductPageLinkType_optional __swiftcall ProductPageLinkType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ProductPageLinkType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x65706F6C65766564;
  v3 = 1634497893;
  v4 = 0x74726F70707573;
  if (v1 != 3)
  {
    v4 = 0x504174726F706572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79636176697270;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E167F31C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E167F408()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E167F4E0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E167F5D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0x65706F6C65766564;
  v5 = 0xE400000000000000;
  v6 = 1634497893;
  v7 = 0xE700000000000000;
  v8 = 0x74726F70707573;
  if (v2 != 3)
  {
    v8 = 0x504174726F706572;
    v7 = 0xEE006D656C626F72;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x79636176697270;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t ProductPageLink.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProductPageLink.systemImageName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ProductPageLink.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

uint64_t ProductPageLink.__allocating_init(id:text:artwork:clickAction:systemImageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a2;
  v13 = sub_1E1AEFEAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  sub_1E138853C(a1, &v32);
  if (*(&v33 + 1))
  {
    v18 = v33;
    *(v17 + 56) = v32;
    *(v17 + 72) = v18;
    *(v17 + 88) = v34;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v27 = a3;
    v28 = a4;
    v20 = a5;
    v21 = a7;
    v22 = v19;
    v23 = a6;
    v25 = v24;
    (*(v14 + 8))(v16, v13);
    v30 = v22;
    v31 = v25;
    a7 = v21;
    a5 = v20;
    a6 = v23;
    a3 = v27;
    a4 = v28;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v32);
  }

  sub_1E13E2E98(a1);
  *(v17 + 16) = v29;
  *(v17 + 24) = a3;
  *(v17 + 96) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = a7;
  return v17;
}

uint64_t ProductPageLink.init(id:text:artwork:clickAction:systemImageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v31 = a2;
  v15 = sub_1E1AEFEAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v34);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v29 = a3;
    v30 = a4;
    v20 = a5;
    v21 = a7;
    v22 = v19;
    v23 = a6;
    v25 = v24;
    (*(v16 + 8))(v18, v15);
    v32 = v22;
    v33 = v25;
    a7 = v21;
    a5 = v20;
    a6 = v23;
    a3 = v29;
    a4 = v30;
    sub_1E1AF6F6C();
    sub_1E13E2E98(&v34);
  }

  sub_1E13E2E98(a1);
  v26 = v38;
  *(v8 + 56) = v37;
  *(v8 + 72) = v26;
  v27 = v39;
  *(v8 + 16) = v31;
  *(v8 + 24) = a3;
  *(v8 + 88) = v27;
  *(v8 + 96) = a4;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  return v8;
}

char *ProductPageLink.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v104 = a2;
  v90 = sub_1E1AEFEAC();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v103 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v97 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v84 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v84 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v84 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v84 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v84 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v84 - v22;
  v24 = a1;
  sub_1E1AF381C();
  v91 = sub_1E1AF37CC();
  v26 = v25;
  v29 = *(v7 + 8);
  v27 = (v7 + 8);
  v28 = v29;
  v29(v23, v6);
  if (!v26)
  {
    v35 = sub_1E1AF5A7C();
    sub_1E1680AD4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v36 = 1954047348;
    v37 = v101;
    v36[1] = 0xE400000000000000;
    v36[2] = v37;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v35);
    swift_willThrow();
    (*(v103 + 8))(v104, v4);
    v38 = v24;
    v39 = v6;
    goto LABEL_8;
  }

  v94 = v26;
  v95 = v4;
  sub_1E1AF381C();
  v30 = sub_1E1AF37CC();
  v32 = v31;
  v28(v20, v6);
  v112 = v6;
  if (v32)
  {
    v33._countAndFlagsBits = v30;
    v33._object = v32;
    ProductPageLinkType.init(rawValue:)(v33);
    if (v110 > 2u)
    {
      if (v110 == 3)
      {
        v32 = 0x80000001E1B566E0;
        v34 = 0xD000000000000013;
      }

      else if (v110 == 4)
      {
        v32 = 0x80000001E1B6D7A0;
        v34 = 0xD000000000000018;
      }

      else
      {
        v34 = 0;
        v32 = 0;
      }
    }

    else if (v110)
    {
      if (v110 == 1)
      {
        v32 = 0x80000001E1B6D7C0;
        v34 = 0xD000000000000010;
      }

      else
      {
        v32 = 0xED0000747865746ELL;
        v34 = 0x69616C702E636F64;
      }
    }

    else
    {
      v32 = 0xE600000000000000;
      v34 = 0x697261666173;
    }
  }

  else
  {
    v34 = 0;
  }

  sub_1E1AF381C();
  v40 = sub_1E1AF37CC();
  v20 = v41;
  v28(v17, v112);
  v93 = v20;
  if (!v20)
  {
    if (v32)
    {
      v85 = v34;
      v102 = v28;

      v87 = v32;
      v93 = v32;
      goto LABEL_21;
    }

    v67 = sub_1E1AF5A7C();
    sub_1E1680AD4(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v68 = 0xD000000000000017;
    v68[1] = 0x80000001E1B6D760;
    v68[2] = v101;
    (*(*(v67 - 8) + 104))(v68, *MEMORY[0x1E69AB690], v67);
    swift_willThrow();
    (*(v103 + 8))(v104, v95);
    v38 = v24;
    v39 = v112;
LABEL_8:
    v28(v38, v39);
    return v20;
  }

  v87 = v32;
  v102 = v28;
  v85 = v40;
LABEL_21:
  v42 = v100;
  sub_1E1AF381C();
  v20 = sub_1E1AF37CC();
  v44 = v43;
  v102(v42, v112);
  v45 = v103;
  if (v44)
  {
    if (qword_1EE1E3BF0 != -1)
    {
      swift_once();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6968);
    __swift_project_value_buffer(v46, qword_1EE2161D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
    sub_1E1AF39FC();
    if (v110)
    {
      v47 = v111;
      ObjectType = swift_getObjectType();
      v110 = v20;
      v111 = v44;
      LOBYTE(v47) = (*(v47 + 112))(&v110, ObjectType, v47);

      if ((v47 & 1) == 0)
      {

        sub_1E1680710();
        swift_allocError();
        swift_willThrow();
        swift_unknownObjectRelease();

        (*(v45 + 8))(v104, v95);
        v102(v24, v112);
        return v20;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v49 = v112;
  v86 = v27;
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v50 = v104;
  v51 = v95;
  (*(v45 + 16))(v97, v104, v95);
  sub_1E1680AD4(&qword_1EE1E4BB8, 255, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v52 = v51;
  v53 = v110;
  type metadata accessor for Action();
  v54 = v98;
  sub_1E1AF381C();
  v55 = v99;
  v56 = static Action.makeInstance(byDeserializing:using:)(v54, v50);
  if (v55)
  {

    (*(v45 + 8))(v50, v52);
    v57 = v49;
    v58 = v49;
    v20 = v86;
    v59 = v102;
    v102(v24, v58);
    v59(v54, v57);
  }

  else
  {
    v99 = v56;
    v100 = v53;
    v60 = v54;
    v61 = v49;
    v62 = v49;
    v63 = v102;
    v102(v60, v62);
    v64 = v92;
    sub_1E1AF381C();
    v65 = sub_1E1AF37CC();
    if (v66)
    {
      *&v107 = v65;
      *(&v107 + 1) = v66;
      sub_1E1AF6F6C();
      v63(v64, v61);
    }

    else
    {
      v69 = v88;
      sub_1E1AEFE9C();
      v70 = sub_1E1AEFE7C();
      v71 = v63;
      v73 = v72;
      (*(v89 + 8))(v69, v90);
      *&v107 = v70;
      *(&v107 + 1) = v73;
      v61 = v112;
      sub_1E1AF6F6C();
      v71(v92, v61);
    }

    v20 = swift_allocObject();
    sub_1E138853C(&v110, &v107);
    v74 = v94;
    v75 = v100;
    if (*(&v108 + 1))
    {
      v76 = v108;
      *(v20 + 56) = v107;
      *(v20 + 72) = v76;
      *(v20 + 11) = v109;
    }

    else
    {
      v77 = v88;
      sub_1E1AEFE9C();
      v78 = sub_1E1AEFE7C();
      v79 = v24;
      v81 = v80;
      v75 = v100;
      (*(v89 + 8))(v77, v90);
      v105 = v78;
      v106 = v81;
      v74 = v94;
      v24 = v79;
      v50 = v104;
      sub_1E1AF6F6C();
      sub_1E13E2E98(&v107);
    }

    (*(v103 + 8))(v50, v95);
    v102(v24, v61);
    sub_1E13E2E98(&v110);
    *(v20 + 2) = v91;
    *(v20 + 3) = v74;
    *(v20 + 12) = v75;
    v82 = v85;
    *(v20 + 4) = v99;
    *(v20 + 5) = v82;
    *(v20 + 6) = v93;
  }

  return v20;
}

unint64_t sub_1E1680710()
{
  result = qword_1EE1F2F18[0];
  if (!qword_1EE1F2F18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F2F18);
  }

  return result;
}

uint64_t ProductPageLink.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProductPageLink.deinit()
{

  sub_1E134B88C(v0 + 56);

  return v0;
}

uint64_t ProductPageLink.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t sub_1E1680838()
{
  result = qword_1ECEB7690;
  if (!qword_1ECEB7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7690);
  }

  return result;
}

uint64_t sub_1E168088C()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1E1680938@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 32);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_1E1680AD4(qword_1EE1D2F80, 255, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

char *sub_1E16809DC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = ProductPageLink.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1E1680A80()
{
  result = qword_1ECEB7698;
  if (!qword_1ECEB7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7698);
  }

  return result;
}

uint64_t sub_1E1680AD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1680B1C@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  result = sub_1E13C0718(v4, &v9);
  if (v10)
  {
    sub_1E1361B28(&v9, v8);
    a1(v8);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
    if (v3)
    {
      __break(1u);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1E1680BC4()
{
  result = 16.0;
  xmmword_1ECEB76A0 = xmmword_1E1B25100;
  *algn_1ECEB76B0 = xmmword_1E1B25100;
  qword_1ECEB76C0 = 0x4081C00000000000;
  return result;
}

double static SearchResultsContextCardLayout.Metrics.standard.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ECEB0F68 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&qword_1ECEB76C0;
  v2 = *algn_1ECEB76B0;
  *a1 = xmmword_1ECEB76A0;
  *(a1 + 16) = v2;
  *(a1 + 32) = result;
  return result;
}

void SearchResultsContextCardLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

__n128 SearchResultsContextCardLayout.init(metrics:message:button:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 32) = v6;
  sub_1E1361B28(a2, a4 + 40);
  result = *a3;
  v9 = *(a3 + 16);
  *(a4 + 80) = *a3;
  *(a4 + 96) = v9;
  *(a4 + 112) = *(a3 + 32);
  return result;
}

double SearchResultsContextCardLayout.metrics.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

uint64_t SearchResultsContextCardLayout.layout.getter()
{
  v1 = v0;
  v2 = sub_1E1AF1B9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24[-v13];
  v15 = *v0;
  v16 = v0[1];
  v17 = v0[2];
  v18 = v0[3];
  v25 = v0;
  sub_1E1680B1C(sub_1E16811B4, &v27);
  if (v28)
  {
    sub_1E1361B28(&v27, v30);
  }

  else
  {
    sub_1E1300B24((v0 + 5), v30);
    if (v28)
    {
      sub_1E13C0E00(&v27);
    }
  }

  *v14 = sub_1E16811D4;
  v14[1] = 0;
  v19 = *(v3 + 104);
  v19(v14, *MEMORY[0x1E69ABAF8], v2);
  v20 = *MEMORY[0x1E69ABB08];
  v19(v11, v20, v2);
  v19(v8, v20, v2);
  v19(v5, v20, v2);
  v28 = sub_1E1AF1BAC();
  v29 = MEMORY[0x1E69ABB10];
  __swift_allocate_boxed_opaque_existential_0(&v27);
  sub_1E1AF1BBC();
  v30[3] = sub_1E1AF1BEC();
  v30[4] = MEMORY[0x1E69ABB40];
  __swift_allocate_boxed_opaque_existential_0(v30);
  MEMORY[0x1E68FA900](&v27, v15, v16, v17, v18);
  MEMORY[0x1E68FA410](0, 1, *(v1 + 4), 0);
  MEMORY[0x1E68FA410](0, 1, 0, 1);
  LOBYTE(v27) = v21 & 1;
  v26 = v22 & 1;
  return sub_1E1AF1D8C();
}

uint64_t sub_1E1681048@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E1AF13EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  sub_1E1AF13CC();
  sub_1E1AF13DC();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = MEMORY[0x1E69AB8F8];
  a1[3] = v2;
  a1[4] = v10;
  __swift_allocate_boxed_opaque_existential_0(a1);
  sub_1E1AF13DC();
  return (v9)(v8, v2);
}

unint64_t sub_1E16811E0()
{
  result = qword_1ECEB76C8;
  if (!qword_1ECEB76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB76C8);
  }

  return result;
}

unint64_t sub_1E1681238()
{
  result = qword_1ECEB76D0;
  if (!qword_1ECEB76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB76D0);
  }

  return result;
}

double sub_1E16812AC@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

double sub_1E16812C0()
{
  v0 = sub_1E1AF1D7C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResultsContextCardLayout.layout.getter();
  sub_1E1AF1DAC();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_1E16813E4()
{
  v0 = sub_1E1AF1D7C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResultsContextCardLayout.layout.getter();
  sub_1E1AF1D9C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1E16814F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E168167C();

  return MEMORY[0x1EEE17F00](a1, a2, v4);
}

uint64_t get_enum_tag_for_layout_string_5JetUI9Placeable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E1681564(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E16815AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1681618(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E1681638(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1E168167C()
{
  result = qword_1ECEB76D8;
  if (!qword_1ECEB76D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB76D8);
  }

  return result;
}

uint64_t Quote.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Quote.credit.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Quote.__allocating_init(id:text:credit:artwork:isFullWidthArtwork:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v32 = a2;
  v33 = a3;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  sub_1E134FD1C(a1, &v36, &unk_1ECEB5670);
  if (*(&v37 + 1))
  {
    v19 = v37;
    *(v18 + 64) = v36;
    *(v18 + 80) = v19;
    *(v18 + 96) = v38;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v30 = a8;
    v31 = a4;
    v21 = a5;
    v22 = a7;
    v23 = v20;
    v24 = a6;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v34 = v23;
    v35 = v26;
    a7 = v22;
    a5 = v21;
    a6 = v24;
    a8 = v30;
    a4 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E134B7C8(a8, v18 + OBJC_IVAR____TtC11AppStoreKit5Quote_impressionMetrics);
  v27 = v33;
  *(v18 + 16) = v32;
  *(v18 + 24) = v27;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7 & 1;
  return v18;
}

uint64_t Quote.init(id:text:credit:artwork:isFullWidthArtwork:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v9 = v8;
  v33 = a2;
  v34 = a3;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v37, &unk_1ECEB5670);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v31 = a8;
    v32 = a4;
    v21 = a5;
    v22 = a7;
    v23 = v20;
    v24 = a6;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v35 = v23;
    v36 = v26;
    a7 = v22;
    a5 = v21;
    a6 = v24;
    a8 = v31;
    a4 = v32;
    sub_1E1AF6F6C();
    sub_1E1308058(&v37, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v27 = v41;
  *(v9 + 64) = v40;
  *(v9 + 80) = v27;
  *(v9 + 96) = v42;
  sub_1E134B7C8(a8, v9 + OBJC_IVAR____TtC11AppStoreKit5Quote_impressionMetrics);
  v28 = v34;
  *(v9 + 16) = v33;
  *(v9 + 24) = v28;
  *(v9 + 32) = a4;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7 & 1;
  return v9;
}

uint64_t Quote.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Quote.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *Quote.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = a2;
  v71 = *v3;
  v5 = sub_1E1AF39DC();
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = &v70 - v10;
  v11 = sub_1E1AEFEAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF380C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v73 = &v70 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v76 = &v70 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v70 - v23;
  v90 = a1;
  sub_1E1AF381C();
  v25 = sub_1E1AF37CC();
  v81 = v15;
  if (v26)
  {
    v85 = v25;
    v86 = v26;
  }

  else
  {
    sub_1E1AEFE9C();
    v27 = sub_1E1AEFE7C();
    v28 = v12;
    v30 = v29;
    (*(v28 + 8))(v14, v11);
    v85 = v27;
    v86 = v30;
  }

  sub_1E1AF6F6C();
  v31 = *(v16 + 8);
  v77 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v78 = v31;
  v31(v24, v15);
  v32 = v88;
  *(v3 + 4) = v87;
  *(v3 + 5) = v32;
  v3[12] = v89;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v33 = v3;
  v34 = v82;
  v35 = *(v83 + 16);
  v36 = v84;
  v35(v79, v82, v84);
  v37 = v74;
  sub_1E1AF464C();
  v38 = OBJC_IVAR____TtC11AppStoreKit5Quote_impressionMetrics;
  v75 = v33;
  sub_1E134B7C8(v37, v33 + OBJC_IVAR____TtC11AppStoreKit5Quote_impressionMetrics);
  v39 = v80;
  v40 = v34;
  v41 = v35;
  v35(v80, v40, v36);
  v42 = v73;
  sub_1E1AF381C();
  v43 = sub_1E1AF37CC();
  v45 = v44;
  v46 = v42;
  v47 = v78;
  v78(v46, v81);
  if (v45)
  {
    v48 = v43;
    v74 = v45;
    type metadata accessor for Artwork();
    v49 = v76;
    sub_1E1AF381C();
    v41(v79, v39, v84);
    sub_1E16824EC(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    if (v87)
    {
      v50 = sub_1E1447BD8();
    }

    else
    {
      v50 = 0;
    }

    v57 = v83;
    v58 = v74;
    v59 = v75;
    v75[2] = v48;
    v59[3] = v58;
    v60 = v90;
    sub_1E1AF381C();
    v61 = sub_1E1AF37CC();
    v63 = v62;
    v64 = v49;
    v65 = v81;
    v66 = v78;
    v78(v64, v81);
    v59[4] = v61;
    v59[5] = v63;
    v59[6] = v50;

    v67 = v72;
    sub_1E1AF381C();
    LODWORD(v83) = sub_1E1AF370C();

    v68 = *(v57 + 8);
    v69 = v84;
    v68(v82, v84);
    v66(v60, v65);
    v66(v67, v65);
    v68(v80, v69);
    result = v59;
    *(v59 + 56) = v83 & 1;
  }

  else
  {
    v51 = sub_1E1AF5A7C();
    sub_1E16824EC(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v52 = 1954047348;
    v52[1] = 0xE400000000000000;
    v52[2] = v71;
    (*(*(v51 - 8) + 104))(v52, *MEMORY[0x1E69AB690], v51);
    swift_willThrow();
    v53 = *(v83 + 8);
    v54 = v84;
    v53(v82, v84);
    v47(v90, v81);
    v53(v39, v54);
    v55 = v75;
    sub_1E134B88C((v75 + 8));
    sub_1E1308058(v55 + v38, &unk_1ECEB1770);
    type metadata accessor for Quote();
    swift_deallocPartialClassInstance();
    return v55;
  }

  return result;
}

uint64_t type metadata accessor for Quote()
{
  result = qword_1EE1E55B8;
  if (!qword_1EE1E55B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Quote.deinit()
{

  sub_1E134B88C(v0 + 64);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Quote_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t Quote.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 64);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Quote_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E16824EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_1E1682544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Quote();
  v7 = swift_allocObject();
  result = Quote.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void sub_1E1682600()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 InAppPurchaseIconLayout.init(metrics:artworkView:artworkContainingView:backgroundView:plusView:tileArtworkView:tileArtworkBackgroundView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a1 + 8);
  v15 = *(a1 + 9);
  *(a8 + 240) = *a1;
  *(a8 + 248) = v14;
  *(a8 + 249) = v15;
  *(a8 + 256) = *(a1 + 16);
  sub_1E1361B28(a2, a8);
  sub_1E1361B28(a3, a8 + 40);
  sub_1E1361B28(a4, a8 + 80);
  sub_1E1361B28(a5, a8 + 120);
  sub_1E1361B28(a6, a8 + 160);
  result = *a7;
  v17 = *(a7 + 16);
  *(a8 + 200) = *a7;
  *(a8 + 216) = v17;
  *(a8 + 232) = *(a7 + 32);
  return result;
}

double InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = a1;
  *(a3 + 9) = a2;
  result = 4.0;
  *(a3 + 16) = xmmword_1E1B25430;
  return result;
}

double InAppPurchaseIconLayout.Metrics.mainIconBorderWidth.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  return v0[2] * v1;
}

double InAppPurchaseIconLayout.Metrics.overallSize.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*v0 >= 30.0)
  {
    v5 = floor(v1 / 30.0) * v3;
    v6 = v1 + v2 * v5 + v2 * v5;
    result = v6;
    if ((*(v0 + 8) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = v1 + v2 * v3 + v2 * v3;
  result = v6;
  if (*(v0 + 8))
  {
LABEL_5:
    sub_1E1AF6B6C();
    return v6;
  }

  return result;
}

double InAppPurchaseIconLayout.Metrics.tileOffset.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  return v1 + v1;
}

double InAppPurchaseIconLayout.Metrics.tileIconWidth.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  return v1 * 12.0;
}

BOOL InAppPurchaseIconLayout.Metrics.displaysPlus.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  return v1 > 1.0;
}

double InAppPurchaseIconLayout.Metrics.plusLineWidth.getter()
{
  result = v0[3];
  if (*v0 >= 30.0)
  {
    result = result * floor(*v0 / 30.0);
  }

  if (result <= 1.0)
  {
    return 1.0;
  }

  return result;
}

double InAppPurchaseIconLayout.Metrics.plusOverallWidth.getter()
{
  v1 = v0[3];
  if (*v0 >= 30.0)
  {
    v1 = v1 * floor(*v0 / 30.0);
  }

  if (v1 <= 1.0)
  {
    v1 = 1.0;
  }

  return v1 * 4.0;
}

__n128 InAppPurchaseIconLayout.metrics.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[15].n128_u8[8];
  v3 = v1[15].n128_u8[9];
  a1->n128_u64[0] = v1[15].n128_u64[0];
  a1->n128_u8[8] = v2;
  a1->n128_u8[9] = v3;
  result = v1[16];
  a1[1] = result;
  return result;
}

uint64_t InAppPurchaseIconLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = *(v4 + 248);
  MinX = CGRectGetMinX(*&a1);
  if (v10 == 1)
  {
    v12 = *(v5 + 240);
    v13 = v12 < 30.0;
    v14 = *(v5 + 264) * floor(v12 / 30.0);
    if (v13)
    {
      v14 = *(v5 + 264);
    }

    MinX = MinX + v14 + v14;
  }

  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  Width = CGRectGetWidth(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  Height = CGRectGetHeight(v38);
  if (Height >= Width)
  {
    v17 = Width;
  }

  else
  {
    v17 = Height;
  }

  v18 = *(v5 + 249);
  v33 = v17;
  if ((v18 & 1) == 0)
  {
    v19 = *(v5 + 240);
    v20 = *(v5 + 264);
    if (v19 >= 30.0)
    {
      v20 = v20 * floor(v19 / 30.0);
    }

    v17 = v19 + *(v5 + 256) * v20 + *(v5 + 256) * v20;
  }

  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  MinY = CGRectGetMinY(v39);
  __swift_project_boxed_opaque_existential_1Tm((v5 + 80), *(v5 + 104));
  v34 = MinY;
  sub_1E1AF116C();
  if (v18)
  {
    v22 = *(v5 + 264);
    v23 = *(v5 + 256) * (floor(v33 / 30.0) * v22);
  }

  else
  {
    v24 = *(v5 + 240);
    v22 = *(v5 + 264);
    v25 = v22;
    if (v24 >= 30.0)
    {
      v25 = v22 * floor(v24 / 30.0);
    }

    v23 = *(v5 + 256) * v25;
  }

  v26 = v17 - (v23 + v23);
  v40.origin.x = MinX;
  v40.origin.y = v34;
  v40.size.width = v17;
  v40.size.height = v17;
  v27 = v23 + CGRectGetMinX(v40);
  v41.origin.x = MinX;
  v41.origin.y = v34;
  v41.size.width = v17;
  v41.size.height = v17;
  v28 = v23 + CGRectGetMinY(v41);
  __swift_project_boxed_opaque_existential_1Tm((v5 + 40), *(v5 + 64));
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v5, *(v5 + 24));
  v42.origin.x = v27;
  v42.origin.y = v28;
  v42.size.width = v26;
  v42.size.height = v26;
  CGRectGetWidth(v42);
  v43.origin.x = v27;
  v43.origin.y = v28;
  v43.size.width = v26;
  v43.size.height = v26;
  CGRectGetHeight(v43);
  sub_1E1AF116C();
  v29 = *(v5 + 240);
  v30 = v22 * floor(v29 / 30.0);
  if (v29 >= 30.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = v22;
  }

  if (v31 > 1.0)
  {
    v44.origin.x = MinX;
    v44.origin.y = v34;
    v44.size.width = v17;
    v44.size.height = v17;
    CGRectGetMaxX(v44);
    v45.origin.x = MinX;
    v45.origin.y = v34;
    v45.size.width = v17;
    v45.size.height = v17;
    CGRectGetMinY(v45);
  }

  __swift_project_boxed_opaque_existential_1Tm((v5 + 120), *(v5 + 144));
  sub_1E1AF118C();
  __swift_project_boxed_opaque_existential_1Tm((v5 + 120), *(v5 + 144));
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm((v5 + 160), *(v5 + 184));
  if ((sub_1E1AF117C() & 1) == 0)
  {
    v46.origin.x = MinX;
    v46.origin.y = v34;
    v46.size.width = v17;
    v46.size.height = v17;
    CGRectGetMinX(v46);
    v47.origin.x = MinX;
    v47.origin.y = v34;
    v47.size.width = v17;
    v47.size.height = v17;
    CGRectGetMaxY(v47);
    sub_1E14F59A8(v5 + 200, v35);
    sub_1E14F60F8(v35);
  }

  __swift_project_boxed_opaque_existential_1Tm((v5 + 160), *(v5 + 184));
  sub_1E1AF116C();
  sub_1E14F59A8(v5 + 200, v35);
  if (v36)
  {
    __swift_project_boxed_opaque_existential_1Tm(v35, v36);
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_1E14F60F8(v35);
  }

  return sub_1E1AF106C();
}

__n128 sub_1E1682FCC@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[15].n128_u8[8];
  v3 = v1[15].n128_u8[9];
  a1->n128_u64[0] = v1[15].n128_u64[0];
  a1->n128_u8[8] = v2;
  a1->n128_u8[9] = v3;
  result = v1[16];
  a1[1] = result;
  return result;
}

double _s11AppStoreKit02InA18PurchaseIconLayoutV12measurements7fitting2inSo14JUMeasurementsVSo6CGSizeV_So18UITraitEnvironment_ptF_0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  if (v1 >= 30.0)
  {
    v5 = floor(v1 / 30.0) * v3;
    v6 = v1 + v2 * v5 + v2 * v5;
    result = v6;
    if ((*(v0 + 248) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = v1 + v2 * v3 + v2 * v3;
  result = v6;
  if (*(v0 + 248))
  {
LABEL_5:
    sub_1E1AF6B6C();
    return v6;
  }

  return result;
}

uint64_t sub_1E1683098(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_1E16830E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E1683174(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
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

uint64_t sub_1E16831C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E13E24C8();
  sub_1E1AF1F7C();
  v5 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
  v6 = v5[9];
  sub_1E16847A4(MEMORY[0x1E69E7CC0], &v17);
  *(a2 + v6) = v17;
  v7 = v5[10];
  swift_getTupleTypeMetadata2();
  v8 = sub_1E1AF627C();
  v9 = sub_1E1694F24(v8, &type metadata for DiffablePageContentIdentifier, a1, v4);

  *(a2 + v7) = v9;
  v10 = v5[11];
  v11 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer();
  swift_getTupleTypeMetadata2();
  v12 = sub_1E1AF627C();
  v13 = sub_1E1694F24(v12, &type metadata for DiffablePageContentIdentifier, v11, v4);

  *(a2 + v10) = v13;
  *(a2 + v5[12]) = MEMORY[0x1E69E7CD0];
  result = sub_1E1685480();
  v15 = (a2 + v5[13]);
  *v15 = result;
  v15[1] = v16;
  return result;
}

char *sub_1E16833B8(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  v7 = a3 + 32;
  a1(&v15, a3 + 32);
  while (!v3)
  {
    if (*(&v16 + 1))
    {
      v12 = v15;
      v13 = v16;
      v14 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1E172CE74(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_1E172CE74((v8 > 1), v9 + 1, 1, v6);
      }

      *(v6 + 2) = v9 + 1;
      v10 = &v6[40 * v9];
      *(v10 + 8) = v14;
      *(v10 + 2) = v12;
      *(v10 + 3) = v13;
    }

    else
    {
      sub_1E1308058(&v15, &qword_1ECEB4720);
    }

    v7 += 40;
    if (!--v4)
    {
      return v6;
    }

    a1(&v15, v7);
  }

  return v6;
}

void *sub_1E1683514(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  v7 = a3 + 32;
  a1(&v11, a3 + 32);
  while (!v3)
  {
    if (v12)
    {
      sub_1E1308EC0(&v11, v13);
      sub_1E1308EC0(v13, &v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1E172D098(0, v6[2] + 1, 1, v6);
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v6 = sub_1E172D098((v8 > 1), v9 + 1, 1, v6);
      }

      v6[2] = v9 + 1;
      sub_1E1308EC0(&v11, &v6[5 * v9 + 4]);
    }

    else
    {
      sub_1E1308058(&v11, &qword_1ECEB4CE0);
    }

    v7 += 40;
    if (!--v4)
    {
      return v6;
    }

    a1(&v11, v7);
  }

  return v6;
}

char *sub_1E1683670(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4718);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v29 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = a3 + 32;
  v17 = (v12 + 48);
  v26 = v12;
  v30 = (v12 + 32);
  v18 = MEMORY[0x1E69E7CC0];
  v27 = v9;
  v28 = a1;
  v25 = (v12 + 48);
  while (1)
  {
    a1(v16, v13);
    if (v3)
    {
      break;
    }

    if ((*v17)(v8, 1, v9) == 1)
    {
      sub_1E1308058(v8, &qword_1ECEB4718);
    }

    else
    {
      v19 = v29;
      v20 = *v30;
      (*v30)(v29, v8, v9);
      v20(v31, v19, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1E172E29C(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_1E172E29C(v21 > 1, v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      v9 = v27;
      v20(&v18[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22], v31, v27);
      a1 = v28;
      v17 = v25;
    }

    v16 += 40;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

void *sub_1E1683944(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v5;
    v16 = *(v5 - 1);
    v17 = v8;

    v18(&v14, &v16);
    if (v3)
    {
      break;
    }

    v9 = v14;
    if (v14)
    {
      v10 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1E172E6FC(0, v6[2] + 1, 1, v6);
      }

      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        v6 = sub_1E172E6FC((v11 > 1), v12 + 1, 1, v6);
      }

      v6[2] = v12 + 1;
      v7 = &v6[2 * v12];
      v7[4] = v9;
      *(v7 + 40) = v10 & 1;
    }

    v5 += 16;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_1E1683A94(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_1E141CF00(v8, v18);
      v10 = v6(v18);
      if (v3)
      {
        sub_1E138867C(v18);

        goto LABEL_15;
      }

      if (v10)
      {
        v15 = v18[0];
        v16 = v18[1];
        v17 = v19;
        result = swift_isUniquelyReferenced_nonNull_native();
        v20 = v9;
        if ((result & 1) == 0)
        {
          result = sub_1E135C1AC(0, *(v9 + 16) + 1, 1);
          v9 = v20;
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_1E135C1AC((v11 > 1), v12 + 1, 1);
          v9 = v20;
        }

        *(v9 + 16) = v12 + 1;
        v13 = v9 + 40 * v12;
        *(v13 + 64) = v17;
        *(v13 + 32) = v15;
        *(v13 + 48) = v16;
        v6 = v14;
      }

      else
      {
        result = sub_1E138867C(v18);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.sectionModel(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0 || (v5 = *(v3 + *(a2 + 36)), *(v5 + 16) <= a1))
  {
    v8 = sub_1E1AF3DCC();
    v9 = *(*(v8 - 8) + 56);

    return v9(a3, 1, 1, v8);
  }

  else
  {
    sub_1E141CF00(v5 + 40 * a1 + 32, v10);
    ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)(a2, a3);
    return sub_1E138867C(v10);
  }
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.sectionIndex(for:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(a2 + 36) + 8);
  if (*(v3 + 16) && (v4 = sub_1E15952E8(a1), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer();
  sub_1E13E24C8();
  sub_1E1AF5CEC();
  if (v8)
  {
    sub_1E1300B24(v7, v9);
    (*(*(v2 - 8) + 8))(v7, v2);
    sub_1E1308EC0(v9, v10);
    sub_1E1300B24(v10, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
    sub_1E1AF3DDC();
    __swift_destroy_boxed_opaque_existential_1(v10);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
    return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
  }

  else
  {
    v5 = sub_1E1AF6D9C();
    (*(*(v5 - 8) + 8))(v7, v5);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.doesSectionExist(for:)(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + *(a2 + 36) + 8) + 16))
  {
    sub_1E15952E8(a1);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

char *ModelMappedDiffableDataSourceContentSnapshot.itemModels(in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = sub_1E1AF3DCC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-1] - v9;
  v11 = sub_1E1AF6D9C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23[-1] - v14;
  (*(v8 + 16))(v10, a1, v7, v13);
  v16 = *(a2 + 24);
  DiffablePageContentIdentifier.init<A>(_:)(v10);
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)(a2, v15);
  sub_1E138867C(v23);
  v17 = (*(v8 + 48))(v15, 1, v7);
  if (v17 == 1)
  {
    (*(v12 + 8))(v15, v11);
    return 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v17);
    *(&v22 - 2) = v6;
    *(&v22 - 1) = v16;
    swift_getKeyPath();
    sub_1E1AF3DAC();

    v19 = v23[0];
    v20 = (*(v8 + 8))(v15, v7);
    MEMORY[0x1EEE9AC00](v20);
    *(&v22 - 4) = v6;
    *(&v22 - 3) = v16;
    *(&v22 - 2) = v3;
    v21 = sub_1E1683670(sub_1E1695228, (&v22 - 6), v19);

    return v21;
  }
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.debugModelDescription.getter(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = sub_1E1AF3DCC();
  v45 = sub_1E1AF6D9C();
  MEMORY[0x1EEE9AC00](v45);
  v6 = v37 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v37 - v10;
  v12 = (v1 + *(v2 + 36));
  v13 = *v12;
  v14 = *(*v12 + 16);
  v37[0] = v12[1];
  v37[1] = v13;
  if (v14)
  {
    v15 = v13 + 32;
    v16 = (v9 + 48);
    v42 = (v9 + 8);
    v43 = (v9 + 32);
    v41 = (v8 + 8);

    v46 = MEMORY[0x1E69E7CC0];
    v38 = v3;
    v39 = v1;
    v44 = v2;
    v40 = v16;
    do
    {
      sub_1E141CF00(v15, v50);
      ModelMappedDiffableDataSourceContentSnapshot.sectionModel(for:)(v2, v6);
      if ((*v16)(v6, 1, v4) == 1)
      {
        sub_1E138867C(v50);
        (*v41)(v6, v45);
      }

      else
      {
        v17 = (*v43)(v11, v6, v4);
        MEMORY[0x1EEE9AC00](v17);
        v18 = *(v2 + 24);
        v37[-2] = v3;
        v37[-1] = v18;
        swift_getKeyPath();
        sub_1E1AF3DAC();

        v19 = *(v48 + 16);

        if (v19)
        {
          v48 = 0x3A6E6F6974636573;
          v49 = 0xE900000000000020;
          v20 = sub_1E1AF6F1C();
          MEMORY[0x1E68FECA0](v20);

          v21 = MEMORY[0x1E68FECA0](8250, 0xE200000000000000);
          MEMORY[0x1EEE9AC00](v21);
          v37[-2] = v3;
          v37[-1] = v18;
          swift_getKeyPath();
          sub_1E1AF3DAC();

          v22 = v47;
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
          v24 = MEMORY[0x1E68FEF50](v22, v23);
          v26 = v25;

          MEMORY[0x1E68FECA0](v24, v26);

          v27 = v48;
          v28 = v49;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_1E130C06C(0, *(v46 + 2) + 1, 1, v46);
          }

          v16 = v40;
          v30 = *(v46 + 2);
          v29 = *(v46 + 3);
          if (v30 >= v29 >> 1)
          {
            v46 = sub_1E130C06C((v29 > 1), v30 + 1, 1, v46);
          }

          (*v42)(v11, v4);
          sub_1E138867C(v50);
          v31 = v46;
          *(v46 + 2) = v30 + 1;
          v32 = &v31[16 * v30];
          *(v32 + 4) = v27;
          *(v32 + 5) = v28;
          v3 = v38;
          v2 = v44;
        }

        else
        {
          (*v42)(v11, v4);
          sub_1E138867C(v50);
          v2 = v44;
          v16 = v40;
        }
      }

      v15 += 40;
      --v14;
    }

    while (v14);
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  v50[0] = 0;
  v50[1] = 0xE000000000000000;
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0xD000000000000014, 0x80000001E1B6D860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4708);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0xD000000000000021, 0x80000001E1B6D880);
  v48 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  sub_1E130C384();
  v33 = sub_1E1AF5D6C();
  v35 = v34;

  MEMORY[0x1E68FECA0](v33, v35);

  return v50[0];
}

uint64_t sub_1E16847A4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (!v4)
  {

    v7 = MEMORY[0x1E69E7CC8];
    v8 = MEMORY[0x1E69E7CC0];
LABEL_25:
    *v3 = v8;
    v3[1] = v7;
    return result;
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = MEMORY[0x1E69E7CC8];
  v8 = MEMORY[0x1E69E7CC0];
  while (v5 < *(a1 + 16))
  {
    sub_1E141CF00(v6, v33);
    if (!*(v7 + 2) || (sub_1E15952E8(v33), (v9 & 1) == 0))
    {
      v10 = *(v8 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v31[0] = v7;
      v12 = sub_1E15952E8(v33);
      v14 = *(v7 + 2);
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        goto LABEL_27;
      }

      v18 = v13;
      if (*(v7 + 3) >= v17)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_13;
        }

        v20 = v12;
        sub_1E1415690();
        v12 = v20;
        v7 = *&v31[0];
        if ((v18 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_14:
        *(*(v7 + 7) + 8 * v12) = v10;
      }

      else
      {
        sub_1E1688348(v17, isUniquelyReferenced_nonNull_native);
        v12 = sub_1E15952E8(v33);
        if ((v18 & 1) != (v19 & 1))
        {
          goto LABEL_29;
        }

LABEL_13:
        v7 = *&v31[0];
        if (v18)
        {
          goto LABEL_14;
        }

LABEL_16:
        *&v7[8 * (v12 >> 6) + 64] |= 1 << v12;
        v21 = v12;
        sub_1E141CF00(v33, *(v7 + 6) + 40 * v12);
        *(*(v7 + 7) + 8 * v21) = v10;
        v22 = *(v7 + 2);
        v16 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v16)
        {
          goto LABEL_28;
        }

        *(v7 + 2) = v23;
      }

      sub_1E141CF00(v33, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1E172CE74(0, *(v8 + 2) + 1, 1, v8);
      }

      v25 = *(v8 + 2);
      v24 = *(v8 + 3);
      if (v25 >= v24 >> 1)
      {
        v8 = sub_1E172CE74((v24 > 1), v25 + 1, 1, v8);
      }

      sub_1E138867C(v33);
      *(v8 + 2) = v25 + 1;
      v26 = &v8[40 * v25];
      v27 = v32;
      v28 = v31[1];
      *(v26 + 2) = v31[0];
      *(v26 + 3) = v28;
      *(v26 + 8) = v27;
      goto LABEL_4;
    }

    sub_1E138867C(v33);
LABEL_4:
    ++v5;
    v6 += 40;
    if (v4 == v5)
    {

      v3 = a2;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.copy(clearingIdentifierSnapshot:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(*(a2 - 8) + 16))(a3, v4, a2);
  v8 = sub_1E1685480();
  v10 = v9;
  v11 = (a3 + *(a2 + 52));

  *v11 = v8;
  v11[1] = v10;
  if (a1)
  {
    return sub_1E1685C00(a2);
  }

  return result;
}

Swift::Void __swiftcall ModelMappedDiffableDataSourceContentSnapshot.setSectionModels(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  rawValue = a1._rawValue;
  v5 = *(v1 + 16);
  v60 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1._rawValue);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  v52 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v15 = (v2 + *(v14 + 36));

  *v15 = MEMORY[0x1E69E7CC0];

  v15[1] = MEMORY[0x1E69E7CC8];
  sub_1E13E24C8();
  sub_1E1AF5CCC();
  sub_1E1AF5CBC();
  v61 = v3;
  v16 = *(v3 + 24);
  v17 = v15;
  v58 = v16;
  type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer();
  sub_1E1AF5CCC();
  v62 = v2;
  sub_1E1AF5CBC();
  if (!sub_1E1AF62BC())
  {
LABEL_30:
    sub_1E1685C00(v61);
    return;
  }

  v18 = 0;
  v19 = (v60 + 16);
  v57 = (v60 + 32);
  v64 = (v60 + 8);
  v54 = v9;
  v55 = rawValue;
  v53 = v13;
  v56 = (v60 + 16);
  while (1)
  {
    v20 = sub_1E1AF629C();
    sub_1E1AF624C();
    if ((v20 & 1) == 0)
    {
      break;
    }

    v21 = *(v60 + 16);
    v21(v13, &rawValue[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v18], v5);
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_31;
    }

LABEL_7:
    (*v57)(v9, v13, v5);
    v23 = v59;
    v21(v59, v9, v5);
    sub_1E1AF3FEC();
    v24 = *v64;
    (*v64)(v23, v5);
    if (*(v17[1] + 2))
    {
      sub_1E15952E8(v67);
      if (v25)
      {
        sub_1E138867C(v67);
        goto LABEL_4;
      }

      v63 = v24;
    }

    else
    {
      v63 = v24;
    }

    v26 = *v17;
    v27 = *(*v17 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v17;
    v30 = isUniquelyReferenced_nonNull_native;
    v31 = v29;
    *&v65[0] = v29[1];
    v32 = *&v65[0];
    v34 = sub_1E15952E8(v67);
    v35 = *(v32 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_32;
    }

    v38 = v33;
    if (*(v32 + 24) >= v37)
    {
      if ((v30 & 1) == 0)
      {
        sub_1E1415690();
      }
    }

    else
    {
      sub_1E1688348(v37, v30);
      v39 = sub_1E15952E8(v67);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_35;
      }

      v34 = v39;
    }

    v17 = v31;
    v41 = *&v65[0];
    v19 = v56;
    if (v38)
    {
      *(*(*&v65[0] + 56) + 8 * v34) = v27;
    }

    else
    {
      *(*&v65[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
      sub_1E141CF00(v67, *(v41 + 6) + 40 * v34);
      *(*(v41 + 7) + 8 * v34) = v27;
      v42 = *(v41 + 2);
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_33;
      }

      *(v41 + 2) = v44;
    }

    v17[1] = v41;
    sub_1E141CF00(v67, v65);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v9 = v54;
    v13 = v53;
    if ((v45 & 1) == 0)
    {
      v26 = sub_1E172CE74(0, *(v26 + 2) + 1, 1, v26);
    }

    v47 = *(v26 + 2);
    v46 = *(v26 + 3);
    if (v47 >= v46 >> 1)
    {
      v26 = sub_1E172CE74((v46 > 1), v47 + 1, 1, v26);
    }

    sub_1E138867C(v67);
    *(v26 + 2) = v47 + 1;
    v48 = &v26[40 * v47];
    v49 = v66;
    v50 = v65[1];
    *(v48 + 2) = v65[0];
    *(v48 + 3) = v50;
    *(v48 + 8) = v49;
    *v17 = v26;
    rawValue = v55;
    v24 = v63;
LABEL_4:
    sub_1E1685630(v9, v61);
    v24(v9, v5);
    ++v18;
    if (v22 == sub_1E1AF62BC())
    {
      goto LABEL_30;
    }
  }

  v51 = sub_1E1AF704C();
  if (v52 != 8)
  {
    goto LABEL_34;
  }

  v67[0] = v51;
  v21 = *v19;
  (*v19)(v13, v67, v5);
  swift_unknownObjectRelease();
  v22 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_7;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_1E1AF757C();
  __break(1u);
}

Swift::Void __swiftcall ModelMappedDiffableDataSourceContentSnapshot.reloadSections(_:)(Swift::OpaquePointer a1)
{
  sub_1E1686B70(sub_1E1695248);
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v3 = 0;
    v4 = a1._rawValue + 32;
    while (1)
    {
      sub_1E141CF00(&v4[40 * v3], v11);
      sub_1E134E724(v11, v9);
      sub_1E138867C(v11);
      DiffablePageContentIdentifier.init(_:)(v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4708);
      v5 = sub_1E1AF1F2C();
      sub_1E138867C(v10);
      v6 = *(v5 + 16);
      if (v6)
      {
        break;
      }

LABEL_3:
      ++v3;

      if (v3 == v2)
      {
        return;
      }
    }

    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_1E141CF00(v8, v10);
      sub_1E1686CC8(v10);
      ++v7;
      sub_1E138867C(v10);
      v8 += 40;
      if (v6 == v7)
      {
        goto LABEL_3;
      }
    }

    __break(1u);

    sub_1E138867C(v10);
    __break(1u);
  }
}

Swift::Void __swiftcall ModelMappedDiffableDataSourceContentSnapshot.reloadSectionModels(_:onlyReloadingItems:)(Swift::OpaquePointer _, Swift::Bool onlyReloadingItems)
{
  v3 = v2;
  sub_1E1AF635C();
  swift_getWitnessTable();
  v5 = sub_1E1AF60EC();
  v6 = sub_1E16864B4(v5, v3);
  if (!onlyReloadingItems)
  {
    MEMORY[0x1EEE9AC00](v6);
    sub_1E1686B70(sub_1E1695730);
  }
}

uint64_t sub_1E16852E8(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = *(a2 + 24);
  v11 = *(a2 + 16);
  v12 = v4;
  v5 = sub_1E16833B8(sub_1E16956A8, v10, a1);
  sub_1E1686B70(a3);
  v6 = *(v5 + 2);
  if (!v6)
  {
  }

  v7 = 0;
  v8 = (v5 + 32);
  while (v7 < *(v5 + 2))
  {
    sub_1E141CF00(v8, v10);
    sub_1E1686CC8(v10);
    ++v7;
    sub_1E138867C(v10);
    v8 += 40;
    if (v6 == v7)
    {
    }
  }

  __break(1u);

  result = sub_1E138867C(v10);
  __break(1u);
  return result;
}

uint64_t sub_1E1685400(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  result = sub_1E1686B70(a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 32;
    do
    {
      result = sub_1E1686CC8(v6);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1E1685480()
{
  v0 = sub_1E1AEFEAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0xD000000000000038, 0x80000001E1B5C500);
  sub_1E1AEFE9C();
  v4 = sub_1E1AEFE7C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x1E68FECA0](v4, v6);

  return v8[0];
}

uint64_t ModelMappedDiffableDataSourceContentSnapshot.identifierSnapshot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4708);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E1685630(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = sub_1E1AF6D9C();
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  v20 = *(v12 + 16);
  v47 = a1;
  v20(&v43 - v18, a1, v6, v17);
  v51 = *(a2 + 24);
  sub_1E1AF3FEC();
  *&v53 = v12;
  v21 = *(v12 + 8);
  v21(v19, v6);
  v50 = a2;
  v22 = *(a2 + 36);
  v52 = v3;
  if (!*(*(v3 + v22 + 8) + 16) || (sub_1E15952E8(v62), (v23 & 1) == 0))
  {
    sub_1E138867C(v62);
    return 0;
  }

  v44 = v21;
  v24 = *(v50 + 40);
  v49 = sub_1E13E24C8();
  sub_1E1AF5CEC();
  v25 = v53;
  v26 = (*(v53 + 48))(v11, 1, v6);
  v45 = v24;
  if (v26 == 1)
  {
    v46[1](v11, v7);
  }

  else
  {
    (*(v25 + 32))(v15, v11, v6);
    v28 = (*(v51 + 16))(v6);
    v29 = v28;
    v30 = *(v28 + 16);
    if (v30)
    {
      v31 = 0;
      v32 = v28 + 32;
      do
      {
        if (v31 >= *(v29 + 16))
        {
          goto LABEL_19;
        }

        sub_1E1300B24(v32, &v57);
        sub_1E1687C44(&v57);
        ++v31;
        __swift_destroy_boxed_opaque_existential_1(&v57);
        v32 += 40;
      }

      while (v30 != v31);
    }

    v44(v15, v6);
  }

  sub_1E141CF00(v62, &v57);
  v33 = v51;
  v34 = *(v51 + 16);
  v44 = (v51 + 16);
  v46 = v34;
  (v34)(v6, v51);
  v35 = v48;
  (*(v33 + 24))();

  (*(v53 + 56))(v35, 0, 1, v6);
  sub_1E1AF5CCC();
  sub_1E1AF5CFC();
  v36 = (v46)(v6, v33);
  v37 = 0;
  v38 = *(v36 + 16);
  v47 = v36 + 32;
  v48 = v36;
  while (1)
  {
    v39 = 0uLL;
    v40 = v38;
    v41 = 0uLL;
    v42 = 0uLL;
    if (v37 == v38)
    {
      goto LABEL_15;
    }

    if (v37 >= *(v48 + 2))
    {
      break;
    }

    v40 = v37 + 1;
    *&v57 = v37;
    sub_1E1300B24(v47 + 40 * v37, &v57 + 8);
    v39 = v57;
    v41 = v58;
    v42 = *v59;
LABEL_15:
    v61[0] = v39;
    v61[1] = v41;
    v61[2] = v42;
    if (!v42)
    {
      sub_1E138867C(v62);

      return 1;
    }

    v53 = v39;
    sub_1E1308EC0((v61 + 8), v60);
    sub_1E1300B24(v60, &v57);
    __swift_project_boxed_opaque_existential_1Tm(&v57, *(&v58 + 1));
    sub_1E1AF3FEC();
    __swift_destroy_boxed_opaque_existential_1(&v57);
    sub_1E1300B24(v60, v56);
    sub_1E141CF00(v62, v54);
    sub_1E1308EC0(v56, &v57);
    *&v59[1] = v54[0];
    *&v59[3] = v54[1];
    v59[5] = v55;
    v59[6] = v53;
    type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer();
    sub_1E1AF5CCC();
    sub_1E1AF5CFC();
    __swift_destroy_boxed_opaque_existential_1(v60);
    v37 = v40;
  }

  __break(1u);
LABEL_19:
  __break(1u);

  result = __swift_destroy_boxed_opaque_existential_1(&v57);
  __break(1u);
  return result;
}

uint64_t sub_1E1685C00(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = sub_1E1AF3DCC();
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - v5;
  v53 = sub_1E1AF6D9C();
  v7 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v9 = v37 - v8;
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v52 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v58 = v37 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4708);
  v38 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v16 = v37 - v15;
  v17 = sub_1E13E24C8();
  v59 = v16;
  v57 = v17;
  sub_1E1AF1F7C();
  v18 = (v1 + *(v2 + 36));
  v20 = *v18;
  v19 = v18[1];
  v56 = *(*v18 + 16);
  v39 = v1;
  v37[1] = v19;
  if (v56)
  {
    v21 = *(v1 + *(v2 + 40));
    v55 = v20 + 32;
    v54 = (v10 + 48);
    v47 = (v10 + 32);
    v46 = (v10 + 16);
    ++v45;
    v44 = (v10 + 8);
    v43 = (v7 + 8);

    v23 = 0;
    v42 = xmmword_1E1B02CC0;
    v41 = v2;
    v40 = v4;
    v51 = v6;
    v50 = v9;
    v49 = v20;
    v48 = v21;
    while (v23 < *(v20 + 16))
    {
      sub_1E141CF00(v55 + 40 * v23, v67);
      sub_1E1AF5CEC();
      if ((*v54)(v9, 1, v3) == 1)
      {
        sub_1E138867C(v67);
        result = (*v43)(v9, v53);
      }

      else
      {
        v24 = v58;
        (*v47)(v58, v9, v3);
        (*v46)(v52, v24, v3);
        sub_1E1AF3DDC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C0);
        v25 = swift_allocObject();
        *(v25 + 16) = v42;
        sub_1E141CF00(v67, v25 + 32);
        sub_1E1AF1F0C();

        MEMORY[0x1EEE9AC00](v26);
        v27 = *(v2 + 24);
        v37[-2] = v3;
        v37[-1] = v27;
        swift_getKeyPath();
        sub_1E1AF3DAC();

        v28 = v66;
        v29 = *(v66 + 16);
        if (v29)
        {
          v65 = MEMORY[0x1E69E7CC0];
          sub_1E135C1AC(0, v29, 0);
          v30 = v65;
          v31 = v28 + 32;
          do
          {
            sub_1E1300B24(v31, v62);
            sub_1E1300B24(v62, v61);
            __swift_project_boxed_opaque_existential_1Tm(v61, v61[3]);
            sub_1E1AF3FEC();
            __swift_destroy_boxed_opaque_existential_1(v62);
            __swift_destroy_boxed_opaque_existential_1(v61);
            v65 = v30;
            v33 = *(v30 + 16);
            v32 = *(v30 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_1E135C1AC((v32 > 1), v33 + 1, 1);
              v30 = v65;
            }

            *(v30 + 16) = v33 + 1;
            v34 = v30 + 40 * v33;
            v35 = v63[0];
            v36 = v63[1];
            *(v34 + 64) = v64;
            *(v34 + 32) = v35;
            *(v34 + 48) = v36;
            v31 += 40;
            --v29;
          }

          while (v29);

          v2 = v41;
          v4 = v40;
        }

        else
        {
        }

        sub_1E141CF00(v67, v63);
        sub_1E1AF1EDC();

        sub_1E1308058(v63, &qword_1ECEB4720);
        (*v45)(v51, v4);
        (*v44)(v58, v3);
        result = sub_1E138867C(v67);
        v9 = v50;
        v20 = v49;
      }

      if (++v23 == v56)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:

    return (*(v38 + 40))(v39, v59, v60);
  }

  return result;
}