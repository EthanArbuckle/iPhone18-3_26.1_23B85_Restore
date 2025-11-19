uint64_t sub_191622E80(uint64_t a1)
{
  sub_191622EE0(a1);
  if (swift_isClassType())
  {
    return 1;
  }

  else
  {
    return vmaxv_u16(vmovn_s32(vceqq_s32(xmmword_1F0575950, vdupq_n_s32(AGTypeGetKind())))) & 1;
  }
}

uint64_t sub_191622EE0(uint64_t a1)
{
  if (swift_isOptionalType())
  {
    isOptionalType = swift_isOptionalType();
    if (isOptionalType)
    {
      MEMORY[0x1EEE9AC00](isOptionalType, v3);
      AGTypeApplyFields2();
    }

    return sub_191622EE0(a1);
  }

  return a1;
}

id _AXSafeSwiftValueForKeyTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v6 = sub_19166B748();
  v8 = v7;
  v9 = swift_unknownObjectRetain();
  v10 = sub_191623124(v9, v6, v8, a3, a4);
  swift_unknownObjectRelease();

  return v10;
}

BOOL sub_19162303C(uint64_t a1)
{
  v1 = sub_191622EE0(a1);
  if (swift_conformsToProtocol2())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

BOOL sub_1916230B0(uint64_t a1)
{
  v1 = sub_191622EE0(a1);
  if (swift_conformsToProtocol2())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

uint64_t sub_191623124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v10 = type metadata accessor for FieldAccessor(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1916729D0;
  v14 = v13 + v12;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_1ED5A8A90);
  sub_19162D3A0(v15, v14);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_1ED5A8AA8);
  sub_19162D3A0(v16, v14 + v11);
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_1ED5A8AC0);
  sub_19162D3A0(v17, v14 + 2 * v11);
  v18 = a5(a1, a2, a3, v13, a4, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v18 == 1)
  {
    return 0;
  }

  else
  {
    return v18;
  }
}

BOOL sub_191623340(uint64_t a1)
{
  v1 = sub_191622EE0(a1);
  if (swift_conformsToProtocol2())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

uint64_t _AXSafeSwiftCallAsFunctionForKey()
{
  v0 = sub_19166B748();
  v2 = v1;
  v3 = swift_unknownObjectRetain();
  sub_191623468(v3, &v7);
  if (v8)
  {
    sub_1915E4370(&v7, v9);
    __swift_project_boxed_opaque_existential_1(v9, v10);
    DynamicType = swift_getDynamicType();
    v5 = sub_191622EE0(DynamicType);
    sub_1916235A4(v5, v9, v5, v0, v2, v5);
    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    swift_unknownObjectRelease();

    return sub_19159E780(&v7, &unk_1EADB0270, &unk_191672C20);
  }
}

double sub_191623468@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_19166B718();
  v5 = NSClassFromString(v4);

  if (v5 && [a1 isKindOfClass_])
  {
    v11 = 0u;
    v12 = 0u;
    v10 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
    if (swift_dynamicCast())
    {
      sub_19159E780(&v11, &unk_1EADB0270, &unk_191672C20);
      result = *&v8;
      v7 = v9;
      v11 = v8;
      v12 = v9;
      *a2 = v8;
      a2[1] = v7;
      return result;
    }

    v8 = 0uLL;
    *&v9 = 0;
    *(&v9 + 1) = 1;
    sub_19159E780(&v8, &qword_1EADAFD20, &qword_191673688);
    sub_19159E780(&v11, &unk_1EADB0270, &unk_191672C20);
  }

  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

id sub_1916235A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68[4] = *MEMORY[0x1E69E9840];
  v11 = sub_19166BF58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v64 - v16;
  v18 = *(a6 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15, v20);
  v22 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1915DFD18(a2, v68);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if (!v23)
  {
    v24(v17, 1, 1, a6);
    result = (*(v12 + 8))(v17, v11);
    goto LABEL_21;
  }

  v24(v17, 0, 1, a6);
  v25 = (*(v18 + 32))(v22, v17, a6);
  MEMORY[0x1EEE9AC00](v25, v26);
  *&v64[-8] = a6;
  *&v64[-6] = a3;
  *&v64[-4] = a4;
  *&v64[-2] = a5;
  v67 = a5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD58, &unk_191673790);
  sub_191624250(v22, sub_19162FA98, &v64[-12], a6, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v28);
  v29 = LOBYTE(v68[0]);
  v30 = BYTE1(v68[0]);
  v31 = v68[1];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v32 = sub_19166C5D8();
  if (v29 == 1 && v30)
  {
    (*(v18 + 8))(v22, a6);
    result = swift_unknownObjectRelease();
LABEL_21:
    v63 = *MEMORY[0x1E69E9840];
    return result;
  }

  v66 = v31;
  v34 = sub_19166C878();
  v36 = v35;
  if (AXShouldLogValidationErrors())
  {
    v37 = sub_19166B718();
    v38 = sub_19166B718();
    v65 = a4;
    v39 = v34;
    v40 = v32;
    v41 = v36;
    v42 = v38;
    AXValidationManagerSendExceptionForSafeValueKey(v37, v38);

    v36 = v41;
    v32 = v40;
    v34 = v39;
    a4 = v65;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
LABEL_19:
    if (AXShouldCrashOnValidationErrors())
    {
      abort();
    }

    (*(v18 + 8))(v22, a6);
    swift_unknownObjectRelease();

    goto LABEL_21;
  }

  if (v29)
  {
    if (v66)
    {
      v43 = v30;
    }

    else
    {
      v43 = 1;
    }

    if (v43)
    {
      goto LABEL_19;
    }

    v65 = v36;
    result = AXLogValidations();
    if (result)
    {
      v44 = result;
      v64[1] = sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_191673660;
      v46 = MEMORY[0x1E69E6158];
      *(v45 + 56) = MEMORY[0x1E69E6158];
      v47 = sub_1915F225C();
      v48 = v67;
      *(v45 + 32) = a4;
      *(v45 + 40) = v48;
      *(v45 + 96) = v46;
      *(v45 + 104) = v47;
      *(v45 + 64) = v47;
      *(v45 + 72) = v34;
      *(v45 + 80) = v65;
      v68[0] = v32;

      v49 = sub_19166B7A8();
      *(v45 + 136) = v46;
      *(v45 + 144) = v47;
      *(v45 + 112) = v49;
      *(v45 + 120) = v50;
      v68[0] = v32;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v51 = sub_19166C878();
      *(v45 + 216) = v46;
      *(v45 + 224) = v47;
      *(v45 + 192) = v51;
      *(v45 + 200) = v52;
      v53 = [objc_opt_self() callStackSymbols];
      v54 = sub_19166BA08();

      *(v45 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v45 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v45 + 232) = v54;
      v55 = v44;
LABEL_18:
      sub_19166B518();

      goto LABEL_19;
    }
  }

  else
  {
    v65 = v36;
    result = AXLogValidations();
    v66 = result;
    if (result)
    {
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1916729D0;
      v57 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v58 = sub_1915F225C();
      v59 = v67;
      *(v56 + 32) = a4;
      *(v56 + 40) = v59;
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      *(v56 + 64) = v58;
      *(v56 + 72) = v34;
      *(v56 + 80) = v65;
      v60 = objc_opt_self();

      v61 = [v60 callStackSymbols];
      v62 = sub_19166BA08();

      *(v56 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 112) = v62;
      v55 = v66;
      goto LABEL_18;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_191623C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v46 = a6;
  v11 = sub_19166C208();
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v17 = type metadata accessor for FieldAccessor(0);
  v18 = *(*(v17 - 8) + 72);
  v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_191672220;
  v21 = v20 + v19;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v17, qword_1ED5A8A90);
  sub_19162D3A0(v22, v21);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v17, qword_1ED5A8AA8);
  v45 = v21;
  v24 = sub_19162D3A0(v23, v21 + v18);
  v49 = 0;
  v48 = 0;
  MEMORY[0x1EEE9AC00](v24, v25);
  v26 = &v42[-12];
  v42[-10] = v20;
  v42[-9] = a3;
  v42[-8] = a4;
  v42[-7] = &v49 + 1;
  v42[-6] = &v48;
  v42[-5] = sub_1915FDCC0;
  v42[-4] = 0;
  v42[-3] = sub_19162FB04;
  v42[-2] = v16;
  v42[-1] = &v49;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v42[1] = v16;
    v42[2] = v42;
    v27 = v43;
    v28 = *(v43 + 72);
    v29 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v47 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
    v31 = v44;
    v32 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v32, v33);
    v42[-2] = sub_19163059C;
    v42[-1] = v26;
    sub_19166C118();
    (*(v27 + 8))(v15, v31);
  }

  else
  {
    v47 = a2;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a2, v34);
      v42[-2] = &v47;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v36 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v36 = 4;
      }

      else
      {
        v36 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v36);
    v42[-2] = sub_19163059C;
    v42[-1] = v26;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  v37 = *(v20 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v39 = v49;
  v40 = v48;
  v41 = v46;
  *v46 = HIBYTE(v49);
  v41[1] = v39;
  *(v41 + 1) = v40;
  return result;
}

uint64_t sub_19162416C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_191622EE0(a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4D8, &unk_191672490);
  if (v6 == result)
  {
    v8 = a4 + a1;
    result = swift_isOptionalType();
    if (result)
    {
      v9 = *v8;
      if (*v8)
      {
        v10 = *(v8 + 8);

        v9(v11);

        return sub_19159F5CC(v9);
      }
    }

    else
    {
      v12 = *v8;
      v13 = *(v8 + 8);

      v12(v14);
    }
  }

  return result;
}

uint64_t sub_191624250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t sub_191624344(void *a1, uint64_t a2, uint64_t a3)
{
  sub_191623468(a1, &v10);
  if (!v11)
  {
    sub_19159E780(&v10, &unk_1EADB0270, &unk_191672C20);
LABEL_11:
    v7 = 0;
    return v7 & 1;
  }

  sub_1915E4370(&v10, v12);
  __swift_project_boxed_opaque_existential_1(v12, v13);
  DynamicType = swift_getDynamicType();
  *&v10 = DynamicType;
  if (swift_isOptionalType())
  {
    MEMORY[0x1EEE9AC00](DynamicType, v6);
    AGTypeApplyFields2();
  }

  if (AGTypeGetKind() != 2)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    goto LABEL_11;
  }

  v7 = 1;
  if (sub_19166C878() != a2 || v8 != a3)
  {
    v7 = sub_19166C5E8();
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7 & 1;
}

uint64_t _AXSafeSwiftIsStructWithTypeNameTm(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = sub_19166B748();
  v6 = v5;
  v7 = swift_unknownObjectRetain();
  LOBYTE(a3) = a3(v7, v4, v6);
  swift_unknownObjectRelease();

  return a3 & 1;
}

uint64_t sub_191624530(void *a1, uint64_t a2, uint64_t a3)
{
  sub_191623468(a1, &v10);
  if (!v11)
  {
    sub_19159E780(&v10, &unk_1EADB0270, &unk_191672C20);
LABEL_11:
    v7 = 0;
    return v7 & 1;
  }

  sub_1915E4370(&v10, v12);
  __swift_project_boxed_opaque_existential_1(v12, v13);
  DynamicType = swift_getDynamicType();
  *&v10 = DynamicType;
  if (swift_isOptionalType())
  {
    MEMORY[0x1EEE9AC00](DynamicType, v6);
    AGTypeApplyFields2();
  }

  if (AGTypeGetKind() != 3)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    goto LABEL_11;
  }

  v7 = 1;
  if (sub_19166C878() != a2 || v8 != a3)
  {
    v7 = sub_19166C5E8();
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7 & 1;
}

BOOL _AXSafeSwiftIsTuple()
{
  v0 = swift_unknownObjectRetain();
  v1 = sub_1916246D0(v0);
  swift_unknownObjectRelease();
  return v1;
}

BOOL sub_1916246D0(void *a1)
{
  sub_191623468(a1, &v5);
  if (v6)
  {
    sub_1915E4370(&v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v8);
    *&v5 = swift_getDynamicType();
    isOptionalType = swift_isOptionalType();
    if (isOptionalType)
    {
      MEMORY[0x1EEE9AC00](isOptionalType, v2);
      AGTypeApplyFields2();
    }

    v3 = AGTypeGetKind() == 5;
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_19159E780(&v5, &unk_1EADB0270, &unk_191672C20);
    return 0;
  }

  return v3;
}

uint64_t sub_1916247EC(void *a1)
{
  sub_191623468(a1, &v2);
  if (v3)
  {
    sub_1915E4370(&v2, v4);
    __swift_project_boxed_opaque_existential_1(v4, v5);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_19159E780(&v2, &unk_1EADB0270, &unk_191672C20);
    swift_getObjectType();
  }

  return sub_19166C878();
}

uint64_t sub_1916248A0()
{
  v0 = sub_19166C208();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1E69E7CC0];
  ObjectType = swift_getObjectType();
  v18 = &v20;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v7 = *(v1 + 72);
    v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v19 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
    v10 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v10, v11);
    *&v17[-16] = sub_19162F5A0;
    *&v17[-8] = v17;
    sub_19166C118();
    (*(v1 + 8))(v5, v0);
  }

  else
  {
    v19 = ObjectType;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](ObjectType, v12);
      *&v17[-16] = &v19;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v14 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v14 = 4;
      }

      else
      {
        v14 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v14);
    *&v17[-16] = sub_19162F5A0;
    *&v17[-8] = v17;
    AGTypeApplyFields2();
  }

  v19 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
  sub_19162FABC(&qword_1EADAE920, &qword_1EADAFAB0, &qword_191672B70);
  v15 = sub_19166B6D8();
  swift_bridgeObjectRelease_n();
  return v15;
}

uint64_t sub_191624C30(int a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x6E776F6E6B6E75;
      }

      if (a1 == 1)
      {
        return 0x7373616C63;
      }

      return 0xD000000000000010;
    }

    if (a1 == 2)
    {
      return 0x746375727473;
    }

    else
    {
      return 1836412517;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 0x6E6F6974636E7566;
        case 7:
          return 0x746E657473697865;
        case 8:
          return 0x657079746174656DLL;
      }

      return 0xD000000000000010;
    }

    if (a1 == 4)
    {
      return 0x6C616E6F6974706FLL;
    }

    else
    {
      return 0x656C707574;
    }
  }
}

uint64_t sub_191624D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  sub_191622EE0(a4);
  Kind = AGTypeGetKind();
  v9 = sub_191624C30(Kind);
  v11 = v10;
  sub_19166C0C8();

  MEMORY[0x193AFC710](0x203A65707974202CLL, 0xE800000000000000);
  v12 = sub_19166C878();
  MEMORY[0x193AFC710](v12);

  MEMORY[0x193AFC710](0x694B65707974202CLL, 0xEC000000203A646ELL);
  MEMORY[0x193AFC710](v9, v11);

  v13 = a2;
  v14 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1915F47A8(0, *(v14 + 2) + 1, 1, v14);
    *a5 = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1915F47A8((v16 > 1), v17 + 1, 1, v14);
    *a5 = v14;
  }

  *(v14 + 2) = v17 + 1;
  v18 = &v14[16 * v17];
  *(v18 + 4) = a1;
  *(v18 + 5) = v13;
  return 1;
}

uint64_t sub_191624EFC(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (v2 <= 2 && a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
    sub_19162FABC(&qword_1EADAE920, &qword_1EADAFAB0, &qword_191672B70);
    return sub_19166B6D8();
  }

  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1915F4F14(0, v2, 0);
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      v9 = sub_1916251E4(v7, v8);
      v11 = v10;

      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1915F4F14((v12 > 1), v13 + 1, 1);
      }

      *(v17 + 16) = v13 + 1;
      v14 = v17 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v6 += 2;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
  sub_19162FABC(&qword_1EADAE920, &qword_1EADAFAB0, &qword_191672B70);
  sub_19166B6D8();

  if (a2 > 3)
  {
    if (a2 == 4 || a2 == 5 || a2 == 7)
    {
      goto LABEL_24;
    }
  }

  else if (a2 == 1 || a2 == 2 || a2 == 3)
  {
LABEL_24:
    v16 = sub_19166B948();
    sub_19166B858();

    return v16;
  }

  result = sub_19166C218();
  __break(1u);
  return result;
}

uint64_t sub_1916251E4(uint64_t a1, uint64_t a2)
{
  if (sub_19166B8F8())
  {

    v4 = sub_19166B838();
    v5 = sub_19162F9FC(v4);
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = MEMORY[0x193AFC690](v5, v7, v9, v11);
    v14 = v13;

    sub_19166B838();
    v39 = sub_19166C3C8();
    MEMORY[0x193AFC710](v12, v14);

    v15 = 79;
  }

  else if (sub_19166B8F8())
  {

    v16 = sub_19166B838();
    v17 = sub_19162F9FC(v16);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = MEMORY[0x193AFC690](v17, v19, v21, v23);
    v26 = v25;

    sub_19166B838();
    v39 = sub_19166C3C8();
    MEMORY[0x193AFC710](v24, v26);

    v15 = 67;
  }

  else
  {
    if ((sub_19166B8F8() & 1) == 0)
    {
      sub_19166B838();
      v39 = sub_19166C3C8();
      MEMORY[0x193AFC710](a1, a2);
      return v39;
    }

    v27 = sub_19166B838();
    v28 = sub_19162F9FC(v27);
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v35 = MEMORY[0x193AFC690](v28, v30, v32, v34);
    v37 = v36;

    sub_19166B838();
    v39 = sub_19166C3C8();
    MEMORY[0x193AFC710](v35, v37);

    v15 = 86;
  }

  MEMORY[0x193AFC710](v15, 0xE100000000000000);

  return v39;
}

id _AXGetSwiftMangledClassNameWithItems()
{
  v0 = sub_19166BA08();
  sub_191624EFC(v0, 1);

  v1 = sub_19166B718();

  return v1;
}

uint64_t sub_1916255A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19166C208();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v33 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v11 = type metadata accessor for FieldAccessor(0);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_191672220;
  v15 = v14 + v13;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_1ED5A8A90);
  sub_19162D3A0(v16, v15);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_1ED5A8AA8);
  v18 = sub_19162D3A0(v17, v15 + v12);
  v36 = 0;
  v35 = 0;
  MEMORY[0x1EEE9AC00](v18, v19);
  v20 = &v32[-12];
  v32[-10] = v14;
  v32[-9] = a2;
  v32[-8] = a3;
  v32[-7] = &v36 + 1;
  v32[-6] = &v35;
  v32[-5] = sub_1915FDCC0;
  v32[-4] = 0;
  v32[-3] = 0;
  v32[-2] = 0;
  v32[-1] = &v36;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v21 = *(v7 + 72);
    v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v34 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    v32[1] = v11;
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
    v24 = v33;
    v25 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v25, v26);
    v32[-2] = sub_19162F5B8;
    v32[-1] = v20;
    sub_19166C118();
    (*(v7 + 8))(v24, v6);
  }

  else
  {
    v34 = a1;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a1, v27);
      v32[-2] = &v34;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v29 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v29 = 4;
      }

      else
      {
        v29 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v29);
    v32[-2] = sub_19162F5B8;
    v32[-1] = v20;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  v30 = *(v14 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return HIBYTE(v36);
}

uint64_t _AXSwiftValidateClassHasFieldWithTypeString()
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v1 = sub_19166B748();
  v3 = v2;
  v4 = sub_19166B748();
  LOBYTE(v1) = sub_191625AE8(ObjCClassMetadata, v1, v3, v4, v5);

  return v1 & 1;
}

uint64_t sub_191625AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19166C208();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a4;
  v40 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v15 = type metadata accessor for FieldAccessor(0);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_191672220;
  v19 = v18 + v17;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v15, qword_1ED5A8A90);
  sub_19162D3A0(v20, v19);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v15, qword_1ED5A8AA8);
  v22 = sub_19162D3A0(v21, v19 + v16);
  v43 = 0;
  v42 = 0;
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = &v36 - 12;
  *(&v36 - 10) = v18;
  *(&v36 - 9) = a2;
  *(&v36 - 8) = a3;
  *(&v36 - 7) = &v43 + 1;
  *(&v36 - 6) = &v42;
  *(&v36 - 5) = sub_19162F5BC;
  *(&v36 - 4) = &v38;
  *(&v36 - 3) = 0;
  *(&v36 - 2) = 0;
  *(&v36 - 1) = &v43;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v25 = *(v11 + 72);
    v26 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v41 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    v36 = v15;
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
    v28 = v37;
    v29 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v29, v30);
    *(&v36 - 2) = sub_19163059C;
    *(&v36 - 1) = v24;
    sub_19166C118();
    (*(v11 + 8))(v28, v10);
  }

  else
  {
    v41 = a1;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a1, v31);
      *(&v36 - 2) = &v41;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v33 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v33 = 4;
      }

      else
      {
        v33 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v33);
    *(&v36 - 2) = sub_19163059C;
    *(&v36 - 1) = v24;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  v34 = *(v18 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return HIBYTE(v43) & v43 & 1;
}

id _AXSwiftValidateClassGetFieldTypeString()
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v1 = sub_19166B748();
  sub_191626054(ObjCClassMetadata, v1, v2);

  v3 = sub_19166B718();

  return v3;
}

uint64_t sub_191626054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19166C208();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v33 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v11 = type metadata accessor for FieldAccessor(0);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_191672220;
  v15 = v14 + v13;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_1ED5A8A90);
  sub_19162D3A0(v16, v15);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_1ED5A8AA8);
  v18 = sub_19162D3A0(v17, v15 + v12);
  v36 = 0;
  v35 = 0;
  MEMORY[0x1EEE9AC00](v18, v19);
  v20 = &v32[-12];
  v32[-10] = v14;
  v32[-9] = a2;
  v32[-8] = a3;
  v32[-7] = &v36 + 1;
  v32[-6] = &v35;
  v32[-5] = sub_1915FDCC0;
  v32[-4] = 0;
  v32[-3] = 0;
  v32[-2] = 0;
  v32[-1] = &v36;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v21 = *(v7 + 72);
    v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v34 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    v32[1] = v11;
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
    v24 = v33;
    v25 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v25, v26);
    v32[-2] = sub_19163059C;
    v32[-1] = v20;
    sub_19166C118();
    (*(v7 + 8))(v24, v6);
  }

  else
  {
    v34 = a1;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a1, v27);
      v32[-2] = &v34;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v29 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v29 = 4;
      }

      else
      {
        v29 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v29);
    v32[-2] = sub_19163059C;
    v32[-1] = v20;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  v30 = *(v14 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v36 & 0x100) == 0)
  {
    return 0;
  }

  result = v35;
  if (v35)
  {
    return sub_19166C878();
  }

  __break(1u);
  return result;
}

uint64_t _AXSwiftValidateClassHasFieldTm(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = sub_19166B748();
  LOBYTE(a3) = a3(ObjCClassMetadata, v5, v6);

  return a3 & 1;
}

uint64_t sub_1916265B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19166C208();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v33 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v11 = type metadata accessor for FieldAccessor(0);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_191672220;
  v15 = v14 + v13;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_1ED5A8A90);
  sub_19162D3A0(v16, v15);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_1ED5A8AA8);
  v18 = sub_19162D3A0(v17, v15 + v12);
  v36 = 0;
  v35 = 0;
  MEMORY[0x1EEE9AC00](v18, v19);
  v20 = &v32[-12];
  v32[-10] = v14;
  v32[-9] = a2;
  v32[-8] = a3;
  v32[-7] = &v36 + 1;
  v32[-6] = &v35;
  v32[-5] = sub_191626A84;
  v32[-4] = 0;
  v32[-3] = 0;
  v32[-2] = 0;
  v32[-1] = &v36;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v21 = *(v7 + 72);
    v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v34 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    v32[1] = v11;
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
    v24 = v33;
    v25 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v25, v26);
    v32[-2] = sub_19163059C;
    v32[-1] = v20;
    sub_19166C118();
    (*(v7 + 8))(v24, v6);
  }

  else
  {
    v34 = a1;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a1, v27);
      v32[-2] = &v34;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v29 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v29 = 4;
      }

      else
      {
        v29 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v29);
    v32[-2] = sub_19163059C;
    v32[-1] = v20;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  v30 = *(v14 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return HIBYTE(v36) & v36 & 1;
}

BOOL sub_191626AB4()
{
  sub_1915E5F84();
  v0 = sub_19166BF78();
  sub_191624EFC(v0, 2);

  v1 = sub_19166C0D8();

  if (!v1)
  {
    return 0;
  }

  isOptionalType = swift_isOptionalType();
  if (isOptionalType)
  {
    MEMORY[0x1EEE9AC00](isOptionalType, v3);
    AGTypeApplyFields2();
  }

  return AGTypeGetKind() == 2;
}

BOOL _AXSwiftValidateStructHasSize(uint64_t a1, uint64_t a2)
{
  sub_19166B748();
  sub_1915E5F84();
  v3 = sub_19166BF78();
  sub_191624EFC(v3, 2);

  v4 = sub_19166C0D8();

  if (v4)
  {
    v5 = sub_191626CA4(v4, v4);

    return v5 == a2;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_191626CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19166C208();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[0] = a1;
  v42[1] = a2;
  v41[0] = 46;
  v41[1] = 0xE100000000000000;
  sub_1915E5F84();
  v14 = sub_19166BF78();
  sub_191624EFC(v14, 2);

  v15 = sub_19166C0D8();

  if (!v15)
  {
    return 0;
  }

  v38 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v16 = type metadata accessor for FieldAccessor(0);
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_191672220;
  v20 = v19 + v18;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v16, qword_1ED5A8A90);
  sub_19162D3A0(v21, v20);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v16, qword_1ED5A8AA8);
  v23 = sub_19162D3A0(v22, v20 + v17);
  v39 = &v37;
  v40 = 0;
  v42[0] = 0;
  MEMORY[0x1EEE9AC00](v23, v24);
  v25 = &v37 - 12;
  *(&v37 - 10) = v19;
  *(&v37 - 9) = a3;
  *(&v37 - 8) = a4;
  *(&v37 - 7) = &v40 + 1;
  *(&v37 - 6) = v42;
  *(&v37 - 5) = sub_1915FDCC0;
  *(&v37 - 4) = 0;
  *(&v37 - 3) = 0;
  *(&v37 - 2) = 0;
  *(&v37 - 1) = &v40;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v37 = v20;
    v26 = v38;
    v27 = *(v38 + 72);
    v28 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v41[0] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
    v30 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v30, v31);
    *(&v37 - 2) = sub_19163059C;
    *(&v37 - 1) = v25;
    sub_19166C118();
    (*(v26 + 8))(v13, v8);
  }

  else
  {
    v41[0] = v15;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](v15, v33);
      *(&v37 - 2) = v41;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v35 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v35 = 4;
      }

      else
      {
        v35 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v35);
    *(&v37 - 2) = sub_19163059C;
    *(&v37 - 1) = v25;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  v36 = *(v19 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return HIBYTE(v40);
}

uint64_t sub_191627224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[0] = a1;
  v51[1] = a2;
  v50[0] = 46;
  v50[1] = 0xE100000000000000;
  sub_1915E5F84();
  v18 = sub_19166BF78();
  sub_191624EFC(v18, 2);

  v19 = sub_19166C0D8();

  if (v19)
  {
    v45 = v13;
    v46 = a4;
    v48 = &v44;
    MEMORY[0x1EEE9AC00](v20, v21);
    *(&v44 - 2) = a5;
    *(&v44 - 1) = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
    v22 = type metadata accessor for FieldAccessor(0);
    v23 = *(*(v22 - 8) + 72);
    v24 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_191672220;
    v26 = v25 + v24;
    if (qword_1ED5A81C8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v22, qword_1ED5A8A90);
    sub_19162D3A0(v27, v26);
    if (qword_1ED5A81D0 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v22, qword_1ED5A8AA8);
    v29 = sub_19162D3A0(v28, v26 + v23);
    v47 = &v44;
    v49 = 0;
    v51[0] = 0;
    MEMORY[0x1EEE9AC00](v29, v30);
    v31 = &v44 - 12;
    *(&v44 - 10) = v25;
    *(&v44 - 9) = a3;
    *(&v44 - 8) = v46;
    *(&v44 - 7) = &v49 + 1;
    *(&v44 - 6) = v51;
    *(&v44 - 5) = sub_191630594;
    *(&v44 - 4) = (&v44 - 4);
    *(&v44 - 3) = 0;
    *(&v44 - 2) = 0;
    *(&v44 - 1) = &v49;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v46 = v26;
      v32 = v45;
      v33 = *(v45 + 72);
      v34 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      sub_19166C1F8();
      v50[0] = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v36 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v36, v37);
      *(&v44 - 2) = sub_19163059C;
      *(&v44 - 1) = v31;
      sub_19166C118();
      (*(v32 + 8))(v17, v12);
    }

    else
    {
      v50[0] = v19;
      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](v19, v39);
        *(&v44 - 2) = v50;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v41 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v41 = 4;
        }

        else
        {
          v41 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v41);
      *(&v44 - 2) = sub_19163059C;
      *(&v44 - 1) = v31;
      AGTypeApplyFields2();
    }

    swift_setDeallocating();
    v42 = *(v25 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v38 = HIBYTE(v49) & v49;
  }

  else
  {
    v38 = 0;
  }

  return v38 & 1;
}

uint64_t sub_1916277BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19166C208();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[0] = a1;
  v42[1] = a2;
  v41[0] = 46;
  v41[1] = 0xE100000000000000;
  sub_1915E5F84();
  v14 = sub_19166BF78();
  sub_191624EFC(v14, 2);

  v15 = sub_19166C0D8();

  if (!v15)
  {
    return 0;
  }

  v38 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v16 = type metadata accessor for FieldAccessor(0);
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_191672220;
  v20 = v19 + v18;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v16, qword_1ED5A8A90);
  sub_19162D3A0(v21, v20);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v16, qword_1ED5A8AA8);
  v23 = sub_19162D3A0(v22, v20 + v17);
  v39 = &v37;
  v40 = 0;
  v42[0] = 0;
  MEMORY[0x1EEE9AC00](v23, v24);
  v25 = &v37 - 12;
  *(&v37 - 10) = v19;
  *(&v37 - 9) = a3;
  *(&v37 - 8) = a4;
  *(&v37 - 7) = &v40 + 1;
  *(&v37 - 6) = v42;
  *(&v37 - 5) = sub_1915FDCC0;
  *(&v37 - 4) = 0;
  *(&v37 - 3) = 0;
  *(&v37 - 2) = 0;
  *(&v37 - 1) = &v40;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v37 = v20;
    v26 = v38;
    v27 = *(v38 + 72);
    v28 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v41[0] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
    v30 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v30, v31);
    *(&v37 - 2) = sub_19163059C;
    *(&v37 - 1) = v25;
    sub_19166C118();
    (*(v26 + 8))(v13, v8);
  }

  else
  {
    v41[0] = v15;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](v15, v33);
      *(&v37 - 2) = v41;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v35 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v35 = 4;
      }

      else
      {
        v35 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v35);
    *(&v37 - 2) = sub_19163059C;
    *(&v37 - 1) = v25;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  v36 = *(v19 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v40 & 0x100) == 0)
  {
    return 0;
  }

  result = v42[0];
  if (v42[0])
  {
    return sub_19166C878();
  }

  __break(1u);
  return result;
}

uint64_t sub_191627D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19166C208();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[0] = a1;
  v43[1] = a2;
  v42[0] = 46;
  v42[1] = 0xE100000000000000;
  sub_1915E5F84();
  v14 = sub_19166BF78();
  sub_191624EFC(v14, 2);

  v15 = sub_19166C0D8();

  if (v15)
  {
    v39 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
    v16 = type metadata accessor for FieldAccessor(0);
    v17 = *(*(v16 - 8) + 72);
    v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_191672220;
    v20 = v19 + v18;
    if (qword_1ED5A81C8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v16, qword_1ED5A8A90);
    sub_19162D3A0(v21, v20);
    if (qword_1ED5A81D0 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v16, qword_1ED5A8AA8);
    v23 = sub_19162D3A0(v22, v20 + v17);
    v40 = &v38;
    v41 = 0;
    v43[0] = 0;
    MEMORY[0x1EEE9AC00](v23, v24);
    v25 = &v38 - 12;
    *(&v38 - 10) = v19;
    *(&v38 - 9) = a3;
    *(&v38 - 8) = a4;
    *(&v38 - 7) = &v41 + 1;
    *(&v38 - 6) = v43;
    *(&v38 - 5) = sub_191626A84;
    *(&v38 - 4) = 0;
    *(&v38 - 3) = 0;
    *(&v38 - 2) = 0;
    *(&v38 - 1) = &v41;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v38 = v20;
      v26 = v39;
      v27 = *(v39 + 72);
      v28 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_191672210;
      sub_19166C1F8();
      v42[0] = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v30 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v30, v31);
      *(&v38 - 2) = sub_19163059C;
      *(&v38 - 1) = v25;
      sub_19166C118();
      (*(v26 + 8))(v13, v8);
    }

    else
    {
      v42[0] = v15;
      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](v15, v33);
        *(&v38 - 2) = v42;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v35 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v35 = 4;
        }

        else
        {
          v35 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v35);
      *(&v38 - 2) = sub_19163059C;
      *(&v38 - 1) = v25;
      AGTypeApplyFields2();
    }

    swift_setDeallocating();
    v36 = *(v19 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v32 = HIBYTE(v41) & v41;
  }

  else
  {
    v32 = 0;
  }

  return v32 & 1;
}

uint64_t _AXSwiftValidateStructTm(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_19166B748();
  LOBYTE(a2) = a2(v3);

  return a2 & 1;
}

BOOL sub_1916282D0()
{
  sub_1915E5F84();
  v0 = sub_19166BF78();
  sub_191624EFC(v0, 3);

  v1 = sub_19166C0D8();

  if (!v1)
  {
    return 0;
  }

  isOptionalType = swift_isOptionalType();
  if (isOptionalType)
  {
    MEMORY[0x1EEE9AC00](isOptionalType, v3);
    AGTypeApplyFields2();
  }

  return AGTypeGetKind() == 3;
}

uint64_t sub_1916283FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19166C208();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[0] = a1;
  v42[1] = a2;
  v41[0] = 46;
  v41[1] = 0xE100000000000000;
  sub_1915E5F84();
  v14 = sub_19166BF78();
  sub_191624EFC(v14, 3);

  v15 = sub_19166C0D8();

  if (!v15)
  {
    return 0;
  }

  v38 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v16 = type metadata accessor for FieldAccessor(0);
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_191672220;
  v20 = v19 + v18;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v16, qword_1ED5A8A90);
  sub_19162D3A0(v21, v20);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v16, qword_1ED5A8AA8);
  v23 = sub_19162D3A0(v22, v20 + v17);
  v39 = &v37;
  v40 = 0;
  v42[0] = 0;
  MEMORY[0x1EEE9AC00](v23, v24);
  v25 = &v37 - 12;
  *(&v37 - 10) = v19;
  *(&v37 - 9) = a3;
  *(&v37 - 8) = a4;
  *(&v37 - 7) = &v40 + 1;
  *(&v37 - 6) = v42;
  *(&v37 - 5) = sub_1915FDCC0;
  *(&v37 - 4) = 0;
  *(&v37 - 3) = 0;
  *(&v37 - 2) = 0;
  *(&v37 - 1) = &v40;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v37 = v20;
    v26 = v38;
    v27 = *(v38 + 72);
    v28 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v41[0] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
    v30 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v30, v31);
    *(&v37 - 2) = sub_19163059C;
    *(&v37 - 1) = v25;
    sub_19166C118();
    (*(v26 + 8))(v13, v8);
  }

  else
  {
    v41[0] = v15;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](v15, v33);
      *(&v37 - 2) = v41;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v35 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v35 = 4;
      }

      else
      {
        v35 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v35);
    *(&v37 - 2) = sub_19163059C;
    *(&v37 - 1) = v25;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  v36 = *(v19 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return HIBYTE(v40);
}

uint64_t _AXSwiftValidateStructHasFieldTm(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = sub_19166B748();
  v6 = v5;
  v7 = sub_19166B748();
  LOBYTE(a3) = a3(v4, v6, v7, v8);

  return a3 & 1;
}

uint64_t sub_1916289C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19166C208();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[0] = a1;
  v43[1] = a2;
  v42[0] = 46;
  v42[1] = 0xE100000000000000;
  sub_1915E5F84();
  v14 = sub_19166BF78();
  sub_191624EFC(v14, 3);

  v15 = sub_19166C0D8();

  if (v15)
  {
    v39 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
    v16 = type metadata accessor for FieldAccessor(0);
    v17 = *(*(v16 - 8) + 72);
    v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_191672220;
    v20 = v19 + v18;
    if (qword_1ED5A81C8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v16, qword_1ED5A8A90);
    sub_19162D3A0(v21, v20);
    if (qword_1ED5A81D0 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v16, qword_1ED5A8AA8);
    v23 = sub_19162D3A0(v22, v20 + v17);
    v40 = &v38;
    v41 = 0;
    v43[0] = 0;
    MEMORY[0x1EEE9AC00](v23, v24);
    v25 = &v38 - 12;
    *(&v38 - 10) = v19;
    *(&v38 - 9) = a3;
    *(&v38 - 8) = a4;
    *(&v38 - 7) = &v41 + 1;
    *(&v38 - 6) = v43;
    *(&v38 - 5) = sub_191626A84;
    *(&v38 - 4) = 0;
    *(&v38 - 3) = 0;
    *(&v38 - 2) = 0;
    *(&v38 - 1) = &v41;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v38 = v20;
      v26 = v39;
      v27 = *(v39 + 72);
      v28 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_191672210;
      sub_19166C1F8();
      v42[0] = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v30 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v30, v31);
      *(&v38 - 2) = sub_19163059C;
      *(&v38 - 1) = v25;
      sub_19166C118();
      (*(v26 + 8))(v13, v8);
    }

    else
    {
      v42[0] = v15;
      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](v15, v33);
        *(&v38 - 2) = v42;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v35 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v35 = 4;
        }

        else
        {
          v35 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v35);
      *(&v38 - 2) = sub_19163059C;
      *(&v38 - 1) = v25;
      AGTypeApplyFields2();
    }

    swift_setDeallocating();
    v36 = *(v19 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v32 = HIBYTE(v41) & v41;
  }

  else
  {
    v32 = 0;
  }

  return v32 & 1;
}

uint64_t sub_191628F04()
{
  isOptionalType = swift_isOptionalType();
  if (isOptionalType)
  {
    MEMORY[0x1EEE9AC00](isOptionalType, v1);
    AGTypeApplyFields2();
  }

  return swift_isClassType();
}

uint64_t _AXSwiftValidateStructHasFieldWithTypeStringTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = sub_19166B748();
  v7 = v6;
  v8 = sub_19166B748();
  v10 = v9;
  v11 = sub_19166B748();
  LOBYTE(a4) = a4(v5, v7, v8, v10, v11, v12);

  return a4 & 1;
}

uint64_t sub_191629048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[0] = a1;
  v51[1] = a2;
  v50[0] = 46;
  v50[1] = 0xE100000000000000;
  sub_1915E5F84();
  v18 = sub_19166BF78();
  sub_191624EFC(v18, 3);

  v19 = sub_19166C0D8();

  if (v19)
  {
    v45 = v13;
    v46 = a4;
    v48 = &v44;
    MEMORY[0x1EEE9AC00](v20, v21);
    *(&v44 - 2) = a5;
    *(&v44 - 1) = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
    v22 = type metadata accessor for FieldAccessor(0);
    v23 = *(*(v22 - 8) + 72);
    v24 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_191672220;
    v26 = v25 + v24;
    if (qword_1ED5A81C8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v22, qword_1ED5A8A90);
    sub_19162D3A0(v27, v26);
    if (qword_1ED5A81D0 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v22, qword_1ED5A8AA8);
    v29 = sub_19162D3A0(v28, v26 + v23);
    v47 = &v44;
    v49 = 0;
    v51[0] = 0;
    MEMORY[0x1EEE9AC00](v29, v30);
    v31 = &v44 - 12;
    *(&v44 - 10) = v25;
    *(&v44 - 9) = a3;
    *(&v44 - 8) = v46;
    *(&v44 - 7) = &v49 + 1;
    *(&v44 - 6) = v51;
    *(&v44 - 5) = sub_191630594;
    *(&v44 - 4) = (&v44 - 4);
    *(&v44 - 3) = 0;
    *(&v44 - 2) = 0;
    *(&v44 - 1) = &v49;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v46 = v26;
      v32 = v45;
      v33 = *(v45 + 72);
      v34 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      sub_19166C1F8();
      v50[0] = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v36 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v36, v37);
      *(&v44 - 2) = sub_19163059C;
      *(&v44 - 1) = v31;
      sub_19166C118();
      (*(v32 + 8))(v17, v12);
    }

    else
    {
      v50[0] = v19;
      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](v19, v39);
        *(&v44 - 2) = v50;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v41 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v41 = 4;
        }

        else
        {
          v41 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v41);
      *(&v44 - 2) = sub_19163059C;
      *(&v44 - 1) = v31;
      AGTypeApplyFields2();
    }

    swift_setDeallocating();
    v42 = *(v25 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v38 = HIBYTE(v49) & v49;
  }

  else
  {
    v38 = 0;
  }

  return v38 & 1;
}

uint64_t sub_1916295C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_19166C878() == a3 && v5 == a4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_19166C5E8();
  }

  return v6 & 1;
}

id _AXSwiftValidateStructGetFieldTypeStringTm(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = sub_19166B748();
  v6 = v5;
  v7 = sub_19166B748();
  a3(v4, v6, v7, v8);
  v10 = v9;

  if (v10)
  {
    v11 = sub_19166B718();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_191629700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19166C208();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[0] = a1;
  v42[1] = a2;
  v41[0] = 46;
  v41[1] = 0xE100000000000000;
  sub_1915E5F84();
  v14 = sub_19166BF78();
  sub_191624EFC(v14, 3);

  v15 = sub_19166C0D8();

  if (!v15)
  {
    return 0;
  }

  v38 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v16 = type metadata accessor for FieldAccessor(0);
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_191672220;
  v20 = v19 + v18;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v16, qword_1ED5A8A90);
  sub_19162D3A0(v21, v20);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v16, qword_1ED5A8AA8);
  v23 = sub_19162D3A0(v22, v20 + v17);
  v39 = &v37;
  v40 = 0;
  v42[0] = 0;
  MEMORY[0x1EEE9AC00](v23, v24);
  v25 = &v37 - 12;
  *(&v37 - 10) = v19;
  *(&v37 - 9) = a3;
  *(&v37 - 8) = a4;
  *(&v37 - 7) = &v40 + 1;
  *(&v37 - 6) = v42;
  *(&v37 - 5) = sub_1915FDCC0;
  *(&v37 - 4) = 0;
  *(&v37 - 3) = 0;
  *(&v37 - 2) = 0;
  *(&v37 - 1) = &v40;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v37 = v20;
    v26 = v38;
    v27 = *(v38 + 72);
    v28 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v41[0] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
    v30 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v30, v31);
    *(&v37 - 2) = sub_19163059C;
    *(&v37 - 1) = v25;
    sub_19166C118();
    (*(v26 + 8))(v13, v8);
  }

  else
  {
    v41[0] = v15;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](v15, v33);
      *(&v37 - 2) = v41;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v35 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v35 = 4;
      }

      else
      {
        v35 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v35);
    *(&v37 - 2) = sub_19163059C;
    *(&v37 - 1) = v25;
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  v36 = *(v19 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v40 & 0x100) == 0)
  {
    return 0;
  }

  result = v42[0];
  if (v42[0])
  {
    return sub_19166C878();
  }

  __break(1u);
  return result;
}

id _AXSafeSwiftEnumAssociatedObject()
{
  v0 = swift_unknownObjectRetain();
  v1 = sub_191629CA8(v0);
  swift_unknownObjectRelease();

  return v1;
}

void *sub_191629CA8(void *a1)
{
  sub_191623468(a1, &v5);
  if (v6)
  {
    sub_1915E4370(&v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v8);
    DynamicType = swift_getDynamicType();
    v2 = sub_191622EE0(DynamicType);
    if (AGTypeGetKind() == 3)
    {
      v3 = sub_191629D64(v2, v7, v2);
      __swift_destroy_boxed_opaque_existential_1(v7);
      return v3;
    }

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_19159E780(&v5, &unk_1EADB0270, &unk_191672C20);
  }

  return 0;
}

void *sub_191629D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[5] = *MEMORY[0x1E69E9840];
  v5 = sub_19166BF58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = v36 - v10;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v9, v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v36 - v19;
  sub_1915DFD18(a2, v38);
  v21 = swift_dynamicCast();
  v22 = *(v12 + 56);
  if (!v21)
  {
    v22(v11, 1, 1, a3);
    (*(v6 + 8))(v11, v5);
    goto LABEL_6;
  }

  v22(v11, 0, 1, a3);
  (*(v12 + 32))(v20, v11, a3);
  (*(v12 + 16))(v17, v20, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD48, &qword_191673780);
  if (!swift_dynamicCast())
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    v32 = sub_19159E780(v36, &qword_1EADAFD50, &qword_191673788);
    v38[0] = 0;
    MEMORY[0x1EEE9AC00](v32, v33);
    *&v36[-1] = a3;
    *(&v36[-1] + 1) = v38;
    AGTypeApplyEnumData();
    v29 = v38[0];
    if (!v38[0] || (sub_19162F884(), ![v29 isKindOfClass_]))
    {
      v34 = sub_19166B718();
      v35 = NSClassFromString(v34);

      if (!v29 || !v35 || ![v29 isKindOfClass_])
      {
        goto LABEL_4;
      }
    }

    swift_unknownObjectRelease();
    (*(v12 + 8))(v20, a3);
LABEL_6:
    v29 = 0;
    goto LABEL_7;
  }

  sub_1915A04D0(v36, v38);
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v26);
  v28 = v36 - v27;
  sub_19166B998();
  v29 = sub_19166C5D8();
  (*(v24 + 8))(v28, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_1(v38);
LABEL_4:
  (*(v12 + 8))(v20, a3);
LABEL_7:
  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

uint64_t sub_19162A208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  v9 = sub_19166C5D8();
  (*(v5 + 8))(v8, a4);
  return v9;
}

id _AXSafeSwiftTypeNameTm(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = swift_unknownObjectRetain();
  a2(v3);
  v5 = v4;
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = sub_19166B718();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_19162A380(void *a1)
{
  sub_191623468(a1, &v5);
  if (v6)
  {
    sub_1915E4370(&v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v8);
    DynamicType = swift_getDynamicType();
    v2 = sub_191622EE0(DynamicType);
    if (AGTypeGetKind() == 3)
    {
      v3 = sub_19162A448(v2, v7, v2);
      __swift_destroy_boxed_opaque_existential_1(v7);
      return v3;
    }

    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_19159E780(&v5, &unk_1EADB0270, &unk_191672C20);
  }

  return 0;
}

uint64_t sub_19162A448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_19166BF58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v21[-v10];
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1915DFD18(a2, v21);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (v17)
  {
    v18(v11, 0, 1, a3);
    (*(v12 + 32))(v16, v11, a3);
    if (swift_EnumCaseName())
    {
      v19 = sub_19166B6F8();
      (*(v12 + 8))(v16, a3);
      return v19;
    }

    (*(v12 + 8))(v16, a3);
  }

  else
  {
    v18(v11, 1, 1, a3);
    (*(v6 + 8))(v11, v5);
  }

  return 0;
}

BOOL sub_19162A67C(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E6370] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E6370])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEA0, &qword_1916738E0) == a1;
  }

  return result;
}

BOOL sub_19162A6E0(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E6530] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E6530])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE90, &qword_1916738D0) == a1;
  }

  return result;
}

BOOL sub_19162A744(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E6810] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E6810])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE80, &qword_1916738C0) == a1;
  }

  return result;
}

BOOL sub_19162A7A8(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E7230] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E7230])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE70, &qword_1916738B0) == a1;
  }

  return result;
}

BOOL sub_19162A80C(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E7508] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E7508])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE60, &qword_1916738A0) == a1;
  }

  return result;
}

BOOL sub_19162A870(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E7290] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E7290])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE50, &qword_191673890) == a1;
  }

  return result;
}

BOOL sub_19162A8D4(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E75F8] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E75F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE40, &qword_191673880) == a1;
  }

  return result;
}

BOOL sub_19162A938(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E72F0] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E72F0])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE30, &qword_191673870) == a1;
  }

  return result;
}

BOOL sub_19162A99C(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E7668] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E7668])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE20, &qword_191673860) == a1;
  }

  return result;
}

BOOL sub_19162AA00(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E7360] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E7360])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE10, &qword_191673850) == a1;
  }

  return result;
}

BOOL sub_19162AA64(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E76D8] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E76D8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE00, &qword_191673840) == a1;
  }

  return result;
}

BOOL sub_19162AAC8(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E6448] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E6448])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFDF0, &qword_191673830) == a1;
  }

  return result;
}

BOOL sub_19162AB2C(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E63B0] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E63B0])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFDE0, &qword_191673820) == a1;
  }

  return result;
}

BOOL sub_19162AB90(uint64_t a1, int a2)
{
  result = a1 == MEMORY[0x1E69E7DE0] || a2 == 4;
  if (a2 == 4 && a1 != MEMORY[0x1E69E7DE0])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFDD0, &qword_191673810) == a1;
  }

  return result;
}

BOOL sub_19162AC6C(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v9 = a3(0);
  result = v9 == a1 || a2 == 4;
  if (a2 == 4 && v9 != a1)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) == a1;
  }

  return result;
}

BOOL sub_19162AF48(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = v10 == a1 || a2 == 4;
  if (a2 == 4 && v10 != a1)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) == a1;
  }

  return result;
}

uint64_t sub_19162AFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = a7;
  v42 = a6;
  v46 = a1;
  v41 = sub_19166C208();
  v40 = *(v41 - 8);
  v16 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v41, v17);
  v39 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_19166BF58();
  v19 = swift_allocBox();
  v20 = *(*(a11 - 8) + 56);
  v44 = v21;
  v20(v21, 1, 1, a11);
  v22 = swift_allocObject();
  *(v22 + 16) = a11;
  *(v22 + 24) = a8;
  *(v22 + 32) = a10;
  *(v22 + 40) = a4;
  *(v22 + 48) = a5;
  *(v22 + 56) = a2;
  *(v22 + 64) = v19;
  *v60 = 0;
  v48 = a9;
  v49 = a4;
  v50 = a5;
  v51 = &v60[1];
  v52 = &v58;
  v53 = v42;
  v54 = v43;
  v55 = sub_19162FB6C;
  v56 = v22;
  v57 = v60;
  v58 = 0;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v23 = v40;
    v24 = *(v40 + 72);
    v25 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_191672210;
    swift_unknownObjectRetain();

    sub_19166C1F8();
    v59 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
    v27 = v39;
    v28 = v41;
    v29 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v29, v30);
    *(&v39 - 2) = sub_19163059C;
    *(&v39 - 1) = v47;
    sub_19166C118();
    (*(v23 + 8))(v27, v28);
  }

  else
  {
    v59 = a3;
    swift_unknownObjectRetain();

    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a3, v31);
      *(&v39 - 2) = &v59;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v33 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v33 = 4;
      }

      else
      {
        v33 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v33);
    *(&v39 - 2) = sub_19163059C;
    *(&v39 - 1) = v47;
    AGTypeApplyFields2();
  }

  v34 = v60[1];
  v35 = v60[0];
  v36 = v44;
  swift_beginAccess();
  (*(*(v45 - 8) + 16))(v46, v36);

  if (v35)
  {
    v37 = 256;
  }

  else
  {
    v37 = 0;
  }

  return v37 | v34;
}

uint64_t sub_19162B468(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, &v20, v17, a2);
  if (*(&v21 + 1) == 1)
  {
    return sub_19159E780(&v20, &qword_1EADAFD20, &qword_191673688);
  }

  v19[0] = v20;
  v19[1] = v21;
  swift_beginAccess();
  return sub_191630304(v19, a9 + 16);
}

uint64_t sub_19162B558(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, v11, MEMORY[0x1E69E6370], a2);
  v10 = v11[0];
  if (v11[0] != 2)
  {
    result = swift_beginAccess();
    *(a9 + 16) = v10;
  }

  return result;
}

uint64_t sub_19162B5D8(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, v12, a10, a2);
  if ((v12[1] & 1) == 0)
  {
    v11 = v12[0];
    result = swift_beginAccess();
    *(a9 + 16) = v11;
    *(a9 + 17) = 0;
  }

  return result;
}

uint64_t sub_19162B658(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, &v12, a10, a2);
  if ((v13 & 1) == 0)
  {
    v11 = v12;
    result = swift_beginAccess();
    *(a9 + 16) = v11;
    *(a9 + 18) = 0;
  }

  return result;
}

uint64_t sub_19162B6D8(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, &v12, a10, a2);
  if ((v13 & 1) == 0)
  {
    v11 = v12;
    result = swift_beginAccess();
    *(a9 + 16) = v11;
    *(a9 + 20) = 0;
  }

  return result;
}

uint64_t sub_19162B758(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, &v12, a10, a2);
  if ((v13 & 1) == 0)
  {
    v11 = v12;
    result = swift_beginAccess();
    *(a9 + 16) = v11;
    *(a9 + 24) = 0;
  }

  return result;
}

uint64_t sub_19162B7D8(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void))
{
  v18 = a10(0);
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, v22, v18, a2);
  if ((v23 & 1) == 0)
  {
    v21 = v22[0];
    v20 = v22[1];
    result = swift_beginAccess();
    *(a9 + 16) = v21;
    *(a9 + 24) = v20;
    *(a9 + 32) = 0;
  }

  return result;
}

__n128 sub_19162B89C(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for CGRect(0);
  sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, v21, v17, a2);
  if ((v22 & 1) == 0)
  {
    v19 = v21[1];
    v20 = v21[0];
    swift_beginAccess();
    result = v20;
    *(a9 + 16) = v20;
    *(a9 + 32) = v19;
    *(a9 + 48) = 0;
  }

  return result;
}

uint64_t sub_19162B964(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEA0, &qword_1916738E0);
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, v20, v17, a2);
  v19 = v20[0];
  if (v20[0] != 3)
  {
    result = swift_beginAccess();
    *(a9 + 16) = v19;
  }

  return result;
}

uint64_t sub_19162BA28(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, &v22, v19, a2);
  if ((v23 & 1) == 0)
  {
    v21 = v22;
    result = swift_beginAccess();
    *(a9 + 16) = v21;
    *(a9 + 18) = 0;
  }

  return result;
}

uint64_t sub_19162BAE4(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, &v23, v19, a2);
  if ((v25 & 1) == 0)
  {
    v21 = v23;
    v22 = v24;
    result = swift_beginAccess();
    *(a9 + 18) = v22;
    *(a9 + 16) = v21;
    *(a9 + 19) = 0;
  }

  return result;
}

uint64_t sub_19162BBA8(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, &v23, v19, a2);
  if ((v25 & 1) == 0)
  {
    v21 = v23;
    v22 = v24;
    result = swift_beginAccess();
    *(a9 + 20) = v22;
    *(a9 + 16) = v21;
    *(a9 + 21) = 0;
  }

  return result;
}

uint64_t sub_19162BC6C(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, &v23, v19, a2);
  if ((v25 & 1) == 0)
  {
    v21 = v24;
    v22 = v23;
    result = swift_beginAccess();
    *(a9 + 16) = v22;
    *(a9 + 24) = v21;
    *(a9 + 25) = 0;
  }

  return result;
}

uint64_t sub_19162BD30(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, v24, v19, a2);
  if ((v26 & 1) == 0)
  {
    v21 = v25;
    v23 = v24[0];
    v22 = v24[1];
    result = swift_beginAccess();
    *(a9 + 16) = v23;
    *(a9 + 24) = v22;
    *(a9 + 32) = v21;
    *(a9 + 33) = 0;
  }

  return result;
}

__n128 sub_19162BDF4(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFDA0, &qword_1916737E0);
  sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, v22, v17, a2);
  if ((v24 & 1) == 0)
  {
    v19 = v23;
    v20 = v22[1];
    v21 = v22[0];
    swift_beginAccess();
    result = v21;
    *(a9 + 16) = v21;
    *(a9 + 32) = v20;
    *(a9 + 48) = v19;
    *(a9 + 49) = 0;
  }

  return result;
}

uint64_t sub_19162BED0(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4D0, &unk_191672480);
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, &v23, v17, a2);
  v19 = v24;
  if (v24 != 1)
  {
    v20 = v23;
    swift_beginAccess();
    v21 = *(a9 + 16);
    v22 = *(a9 + 24);
    *(a9 + 16) = v20;
    *(a9 + 24) = v19;
    return sub_19162FCE8(v21, v22);
  }

  return result;
}

uint64_t sub_19162BFA0(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11, uint64_t (*a12)(uint64_t))
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  result = sub_19162C2D0(a4, a3, a5, a6, a7, a8, a1, v24, v20, a2);
  v22 = *v24;
  if (*v24 != 1)
  {
    swift_beginAccess();
    v23 = *(a9 + 16);
    *(a9 + 16) = v22;
    return a12(v23);
  }

  return result;
}

uint64_t sub_19162C068(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = a7;
  v36 = a8;
  v33 = a1;
  v34 = a6;
  v32 = a5;
  v37 = sub_19166BF58();
  v13 = *(v37 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v37, v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v31 - v21;
  v23 = *(a10 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20, v25);
  v27 = &v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_projectBox();
  sub_19162C2D0(a4, a3, v32, v34, v35, v36, v33, v22, a10, a2);
  if ((*(v23 + 48))(v22, 1, a10) == 1)
  {
    return (*(v13 + 8))(v22, v37);
  }

  v30 = *(v23 + 32);
  v30(v27, v22, a10);
  v30(v18, v27, a10);
  (*(v23 + 56))(v18, 0, 1, a10);
  swift_beginAccess();
  return (*(v13 + 40))(v28, v18, v37);
}

uint64_t sub_19162C2D0@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X7>, char *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v93 = a7;
  v88 = a6;
  v83 = a5;
  v82 = a4;
  v81 = a3;
  v92 = a2;
  v90 = a8;
  v11 = a9;
  v80 = sub_19166BF58();
  v79 = *(v80 - 8);
  v12 = *(v79 + 64);
  v14 = MEMORY[0x1EEE9AC00](v80, v13);
  v87 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v84 = &v77 - v18;
  v91 = *(a9 - 8);
  v19 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v78 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_19166BF58();
  v95 = *(v22 - 8);
  v23 = *(v95 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v86 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v85 = &v77 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v89 = &v77 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = &v77 - v35;
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v77 - v39;
  MEMORY[0x1EEE9AC00](v38, v41);
  v43 = &v77 - v42;
  isOptionalType = swift_isOptionalType();
  v94 = *(a10 - 8);
  v45 = *(v94 + 56);
  v45(v43, 1, 1, a10);
  if ((a1 & 1) == 0 || (isOptionalType & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for FieldAccessor(0);
  __swift_project_value_buffer(v46, qword_1ED5A8AA8);
  if (sub_19166B198() & 1) == 0 && ((sub_191622EE0(a10), (swift_isClassType()) || AGTypeGetKind() == 7))
  {
    v88 = a9;
    sub_19162CBFC(v81, v82, v83, a10, v40);
    v51 = *(v95 + 8);
    v51(v43, v22);
    v52 = v94;
    if ((*(v94 + 48))(v40, 1, a10) == 1)
    {
      v51(v40, v22);
      return (*(v91 + 56))(v90, 1, 1, v88);
    }

    v93 = v51;
    (*(v52 + 32))(v43, v40, a10);
    v45(v43, 0, 1, a10);
    v11 = v88;
  }

  else
  {
LABEL_6:
    (*(v94 + 16))(v36, &v93[v88], a10);
    v47 = v95;
    v93 = *(v95 + 8);
    (v93)(v43, v22);
    v45(v36, 0, 1, a10);
    (*(v47 + 32))(v43, v36, v22);
  }

  v48 = v89;
  v49 = v93;
  if (isOptionalType)
  {
    v50 = sub_19166BF48();
    sub_19162F884();
    if ([v50 isKindOfClass_])
    {
      v49(v43, v22);
      swift_unknownObjectRelease();
      return (*(v91 + 56))(v90, 1, 1, v11);
    }

    v54 = sub_19166B718();
    v55 = NSClassFromString(v54);

    if (v55)
    {
      v56 = [v50 isKindOfClass_];
      swift_unknownObjectRelease();
      if (v56)
      {
        v49(v43, v22);
        return (*(v91 + 56))(v90, 1, 1, v11);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v57 = v92 + *(type metadata accessor for FieldAccessor(0) + 28);
  v58 = *v57;
  if (!*v57)
  {
    goto LABEL_27;
  }

  v88 = v11;
  v59 = *(v57 + 8);
  v60 = v95 + 16;
  v61 = *(v95 + 16);
  v61(v48, v43, v22);
  v62 = *(v94 + 48);
  if (v62(v48, 1, a10) == 1)
  {
    (v93)(v48, v22);
    v11 = v88;
    goto LABEL_27;
  }

  v92 = v59;

  v89 = (v60 - 8);
  (v93)(v48, v22);
  v63 = v85;
  v61(v85, v43, v22);
  result = (v62)(v63, 1, a10);
  if (result != 1)
  {
    v96[3] = a10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v96);
    (*(v94 + 32))(boxed_opaque_existential_0, v63, a10);
    v58(v97, v96);
    sub_19159F5CC(v58);
    __swift_destroy_boxed_opaque_existential_1(v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
    v65 = v84;
    v11 = v88;
    if (swift_dynamicCast())
    {
      (v93)(v43, v22);
      v66 = v91;
      v67 = *(v91 + 56);
      v67(v65, 0, 1, v11);
      v68 = *(v66 + 32);
      v69 = v78;
      v68(v78, v65, v11);
      v70 = v90;
      v68(v90, v69, v11);
      v71 = v70;
      goto LABEL_29;
    }

    (*(v91 + 56))(v65, 1, 1, v11);
    (*(v79 + 8))(v65, v80);
LABEL_27:
    (*(v95 + 32))(v86, v43, v22);
    v72 = v87;
    v73 = swift_dynamicCast();
    v74 = v91;
    v67 = *(v91 + 56);
    if ((v73 & 1) == 0)
    {
      v67(v72, 1, 1, v11);
      v71 = v90;
      v76 = 1;
      return (v67)(v71, v76, 1, v11);
    }

    v67(v72, 0, 1, v11);
    v75 = v90;
    (*(v74 + 32))(v90, v72, v11);
    v71 = v75;
LABEL_29:
    v76 = 0;
    return (v67)(v71, v76, 1, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_19162CBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  *&v25[0] = a1;
  swift_getObjectType();
  v9 = swift_reflectionMirror_normalizedType();
  if (swift_isClassType())
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
LABEL_6:
    result = (*(*(a4 - 8) + 56))(a5, 1, 1, a4);
    goto LABEL_25;
  }

  while (1)
  {
    *&v25[0] = a1;
    v12 = swift_reflectionMirror_count();
    if (v12 < 0)
    {
      __break(1u);
    }

    v13 = v12;
    if (v12)
    {
      break;
    }

LABEL_21:
    v20 = MEMORY[0x193AFCFD0](v9);
    if (v20)
    {
      v9 = v20;
      if (swift_isClassType())
      {
        continue;
      }
    }

    goto LABEL_6;
  }

  v14 = 0;
  while (1)
  {
    v26 = 0;
    v27 = 0;
    *&v24 = a1;
    swift_reflectionMirror_subscript();
    if (v27)
    {
      v16 = MEMORY[0x193AFC6B0]();
      v18 = v17;
      v19 = v26;
      if (!v26)
      {
        goto LABEL_15;
      }

LABEL_14:
      v19(v27);
      goto LABEL_15;
    }

    v16 = 0;
    v18 = 0;
    v19 = v26;
    if (v26)
    {
      goto LABEL_14;
    }

LABEL_15:
    if (!v18)
    {
      goto LABEL_11;
    }

    if (v16 == a2 && v18 == a3)
    {
      break;
    }

    v15 = sub_19166C5E8();

    if (v15)
    {
      goto LABEL_24;
    }

LABEL_11:
    ++v14;
    __swift_destroy_boxed_opaque_existential_1(v25);
    if (v13 == v14)
    {
      goto LABEL_21;
    }
  }

LABEL_24:
  sub_1915E4370(v25, &v24);
  v21 = swift_dynamicCast();
  result = (*(*(a4 - 8) + 56))(a5, v21 ^ 1u, 1, a4);
LABEL_25:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19162CE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v49 = a7;
  v50 = a8;
  v47 = a5;
  v48 = a6;
  v52 = a4;
  v53 = a1;
  v58 = *MEMORY[0x1E69E9840];
  v54 = MEMORY[0x1E69E6370];
  v55 = MEMORY[0x1E69E6370];
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAFD78, &qword_1916737B0);
  v13 = sub_19166BF58();
  v57 = v13;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v14 = *(*(TupleTypeMetadata - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, v15);
  v17 = &v46 - v16;
  v18 = sub_19166BF58();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v46 - v23;
  v25 = *(a12 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22, v27);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1915DFD18(a3, &v54);
  v30 = swift_dynamicCast();
  v31 = *(v25 + 56);
  if (v30)
  {
    v31(v24, 0, 1, a12);
    v32 = (*(v25 + 32))(v29, v24, a12);
    MEMORY[0x1EEE9AC00](v32, v33);
    *(&v46 - 8) = a11;
    *(&v46 - 7) = a12;
    v34 = v48;
    *(&v46 - 6) = v47;
    *(&v46 - 5) = v34;
    v35 = v50;
    *(&v46 - 4) = v49;
    *(&v46 - 3) = v35;
    *(&v46 - 2) = a9;
    *(&v46 - 1) = a10;
    v54 = MEMORY[0x1E69E6370];
    v55 = MEMORY[0x1E69E6370];
    v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAFD80, &qword_1916737B8);
    v57 = v13;
    v36 = swift_getTupleTypeMetadata();
    sub_191624250(v29, sub_19162FB34, (&v46 - 10), a12, MEMORY[0x1E69E73E0], v36, MEMORY[0x1E69E7410], v37);
    (*(v25 + 8))(v29, a12);
    v38 = *v17;
    v39 = v17[1];
    v40 = *(v17 + 1);
    v41 = *(TupleTypeMetadata + 80);
    v42 = sub_19166BF58();
    (*(*(v42 - 8) + 32))(v53, &v17[v41], v42);
    if (v39)
    {
      v43 = 256;
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    v31(v24, 1, 1, a12);
    (*(v19 + 8))(v24, v18);
    (*(*(a11 - 8) + 56))(v53, 1, 1, a11);
    v38 = 0;
    v43 = 0;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v43 | v38;
}

uint64_t sub_19162D270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAFD78, &qword_1916737B0);
  sub_19166BF58();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  result = sub_19162AFC0(a9 + *(TupleTypeMetadata + 80), a1, a10, a4, a5, a6, a7, 0, a2, a3, a8);
  *a9 = result & 1;
  *(a9 + 1) = BYTE1(result) & 1;
  *(a9 + 8) = v20;
  return result;
}

uint64_t sub_19162D3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FieldAccessor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19162D46C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FieldAccessor(0);
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  result = sub_19166B1B8();
  v10 = (v8 + v7[5]);
  *v10 = a3;
  v10[1] = 0;
  v11 = (v8 + v7[6]);
  *v11 = a4;
  v11[1] = 0;
  v12 = (v8 + v7[7]);
  *v12 = 0;
  v12[1] = 0;
  return result;
}

uint64_t sub_19162D514(uint64_t a1)
{
  if ((swift_isOptionalType() & 1) == 0)
  {
    return 0;
  }

  isOptionalType = swift_isOptionalType();
  if (isOptionalType)
  {
    MEMORY[0x1EEE9AC00](isOptionalType, v3);
    AGTypeApplyFields2();
  }

  return a1;
}

uint64_t sub_19162D5B4()
{
  v0 = type metadata accessor for FieldAccessor(0);
  __swift_allocate_value_buffer(v0, qword_1ED5A8AC0);
  v1 = __swift_project_value_buffer(v0, qword_1ED5A8AC0);
  result = sub_19166B1B8();
  v3 = (v1 + v0[5]);
  *v3 = sub_19162D658;
  v3[1] = 0;
  v4 = (v1 + v0[6]);
  *v4 = sub_19162D704;
  v4[1] = 0;
  v5 = (v1 + v0[7]);
  *v5 = sub_19162E6F0;
  v5[1] = 0;
  return result;
}

uint64_t sub_19162D680(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v10 = *a4;
  v11 = *a5;

  MEMORY[0x193AFC710](a1, a2);
  return v10;
}

uint64_t sub_19162D704(uint64_t a1)
{
  sub_19166C878();
  v2 = sub_19162D758(a1);

  return v2;
}

uint64_t sub_19162D758(uint64_t a1)
{
  v2 = sub_19166C208();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  if (sub_19162E0E0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
    v9 = type metadata accessor for FieldAccessor(0);
    v10 = *(*(v9 - 8) + 72);
    v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
    v12 = swift_allocObject();
    v38 = xmmword_191672210;
    *(v12 + 16) = xmmword_191672210;
    if (qword_1ED5A81C8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v9, qword_1ED5A8A90);
    v14 = sub_19162D3A0(v13, v12 + v11);
    v42 = 0;
    v43[0] = 0;
    MEMORY[0x1EEE9AC00](v14, v15);
    v40 = &v37[-12];
    v37[-10] = v12;
    v37[-9] = 0x656761726F7473;
    v37[-8] = 0xE700000000000000;
    v37[-7] = &v42 + 1;
    v37[-6] = v43;
    v37[-5] = sub_1915FDCC0;
    v37[-4] = 0;
    v37[-3] = sub_1916303B4;
    v37[-2] = v8;
    v37[-1] = &v42;
    if (AGTypeGetKind() == 5)
    {
LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v22 = *(v3 + 72);
      v23 = *(v3 + 80);
      v37[1] = a1;
      v24 = swift_allocObject();
      v39 = v8 + 16;
      v25 = v24;
      *(v24 + 16) = v38;
      sub_19166C1F8();
      v41 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v26 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v26, v27);
      v28 = v40;
      v37[-2] = sub_19163059C;
      v37[-1] = v28;
      sub_19166C118();
      (*(v3 + 8))(v7, v2);
LABEL_29:
      swift_setDeallocating();
      v34 = *(v12 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      goto LABEL_30;
    }

    v29 = v40;
    v41 = a1;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a1, v30);
      v37[-2] = &v41;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v32 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v32 = 4;
      }

      else
      {
        v32 = 2;
      }
    }

LABEL_28:
    MEMORY[0x1EEE9AC00](isClassType, v32);
    v37[-2] = sub_19163059C;
    v37[-1] = v29;
    AGTypeApplyFields2();
    goto LABEL_29;
  }

  if (sub_19162E0E0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
    v16 = type metadata accessor for FieldAccessor(0);
    v17 = *(*(v16 - 8) + 72);
    v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
    v12 = swift_allocObject();
    v38 = xmmword_191672210;
    *(v12 + 16) = xmmword_191672210;
    if (qword_1ED5A81C8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v16, qword_1ED5A8A90);
    v20 = sub_19162D3A0(v19, v12 + v18);
    v42 = 0;
    v43[0] = 0;
    MEMORY[0x1EEE9AC00](v20, v21);
    v40 = &v37[-12];
    v37[-10] = v12;
    v37[-9] = 0x65756C61765FLL;
    v37[-8] = 0xE600000000000000;
    v37[-7] = &v42 + 1;
    v37[-6] = v43;
    v37[-5] = sub_1915FDCC0;
    v37[-4] = 0;
    v37[-3] = sub_191630374;
    v37[-2] = v8;
    v37[-1] = &v42;
    if (AGTypeGetKind() == 5)
    {
      goto LABEL_10;
    }

    v29 = v40;
    v41 = a1;
    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a1, v33);
      v37[-2] = &v41;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v32 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v32 = 4;
      }

      else
      {
        v32 = 2;
      }
    }

    goto LABEL_28;
  }

  if ((sub_19162E0E0() & 1) == 0 && (sub_19162E0E0() & 1) == 0)
  {
    sub_19162E0E0();
  }

LABEL_30:
  swift_beginAccess();
  v35 = *(v8 + 16);

  return v35;
}

uint64_t sub_19162E0E0()
{

  v0 = sub_19166B888();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_19166B888();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_19166C5E8();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_19166B888();
      v3 = v5;
    }

    while (v5);
  }

  sub_19166B888();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_19162E23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_19166C208();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v12 = type metadata accessor for FieldAccessor(0);
  v13 = *(*(v12 - 8) + 72);
  v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v15 = swift_allocObject();
  v32 = xmmword_191672210;
  *(v15 + 16) = xmmword_191672210;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_1ED5A8A90);
  v17 = sub_19162D3A0(v16, v15 + v14);
  v35 = 0;
  v34 = 0;
  MEMORY[0x1EEE9AC00](v17, v18);
  v31[-10] = v15;
  v31[-9] = 0x65756C6176;
  v31[-8] = 0xE500000000000000;
  v31[-7] = &v35 + 1;
  v31[-6] = &v34;
  v31[-5] = sub_1915FDCC0;
  v31[-4] = 0;
  v31[-3] = sub_1916305A0;
  v31[-2] = a4;
  v31[-1] = &v35;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v19 = *(v7 + 72);
    v20 = *(v7 + 80);
    v31[0] = a2;
    v21 = swift_allocObject();
    v31[1] = v12;
    v22 = v21;
    *(v21 + 16) = v32;

    sub_19166C1F8();
    v33 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    *&v32 = &v31[-12];
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
    v23 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v23, v24);
    v25 = v32;
    v31[-2] = sub_19163059C;
    v31[-1] = v25;
    sub_19166C118();
    (*(v7 + 8))(v11, v6);
  }

  else
  {
    v33 = a2;

    if (swift_isOptionalType())
    {
      MEMORY[0x1EEE9AC00](a2, v26);
      v31[-2] = &v33;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v28 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v28 = 4;
      }

      else
      {
        v28 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v28);
    v31[-2] = sub_19163059C;
    v31[-1] = &v31[-12];
    AGTypeApplyFields2();
  }

  swift_setDeallocating();
  v29 = *(v15 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
}

double sub_19162E6F0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  sub_19166C878();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  sub_19162E7B0(a1, &v5);

  if (v6)
  {
    sub_1915E4370(&v5, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_19162E7B0@<D0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  if (sub_19162E0E0())
  {
    sub_1916092C4(a1, 0x656761726F7473, 0xE700000000000000, &v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
    if (swift_dynamicCast())
    {
      v4 = sub_191629CA8(v7);
      if (v4)
      {
        v5 = v4;
        *(a2 + 24) = swift_getObjectType();
        swift_unknownObjectRelease();
        *a2 = v5;
        return result;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  if ((sub_19162E0E0() & 1) == 0)
  {
    if ((sub_19162E0E0() & 1) == 0 && (sub_19162E0E0() & 1) == 0)
    {
      sub_19162E0E0();
    }

LABEL_13:
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  return sub_1916092C4(a1, 0x65756C61765FLL, 0xE600000000000000, a2);
}

uint64_t sub_19162E998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, uint64_t *a9, uint64_t (*a10)(uint64_t, uint64_t), uint64_t a11, void (*a12)(uint64_t, uint64_t, char *), uint64_t a13, _BYTE *a14)
{
  v48 = a4;
  v49 = a7;
  v20 = type metadata accessor for FieldAccessor(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a5 + 16);
  if (!v26)
  {
    return 1;
  }

  v40 = a13;
  v41 = a3;
  v42 = a12;
  v43 = a14;
  v46 = a11;
  v47 = a8;
  v44 = a9;
  v45 = a10;
  v27 = a5 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v28 = *(v23 + 72);
  while (1)
  {
    sub_19162D3A0(v27, v25);
    v32 = &v25[*(v20 + 20)];
    v33 = *(v32 + 1);
    if ((*v32)(a6, v49) == a1 && v34 == a2)
    {
    }

    else
    {
      v36 = sub_19166C5E8();

      if ((v36 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v29 = &v25[*(v20 + 24)];
    v30 = *(v29 + 1);
    v31 = (*v29)(v48);
    if (v31)
    {
      break;
    }

LABEL_5:
    sub_19162F8D0(v25);
    v27 += v28;
    if (!--v26)
    {
      return 1;
    }
  }

  *v47 = 1;
  *v44 = v31;
  v38 = v31;
  Kind = AGTypeGetKind();
  if (v45(v38, Kind))
  {
    if (v42)
    {
      v42(v41, v48, v25);
    }

    *v43 = 1;
  }

  sub_19162F8D0(v25);
  return 0;
}

uint64_t sub_19162EBB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_19166B6F8();
  if (v7)
  {
    if (v6 == 1701670771 && v7 == 0xE400000000000000)
    {

LABEL_6:
      result = 0;
      *a4 = a3;
      return result;
    }

    v8 = sub_19166C5E8();

    if (v8)
    {
      goto LABEL_6;
    }
  }

  return 1;
}

uint64_t sub_19162EC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = sub_19166B6F8();
  if (!v9)
  {
    return 1;
  }

  v10 = v8;
  v11 = v9;
  v17 = v8;
  v18 = v9;

  v12 = sub_19166B8E8();

  if ((v12 & 1) == 0)
  {
LABEL_8:
    v16 = a5(v10, v11, a2, a3);

    return v16 & 1;
  }

  v14 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v14 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = sub_19162F92C(v10, v11);
    if (v15)
    {

      sub_19162F974(1);
      v10 = v17;
      v11 = v18;
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19162ED48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_19166B6F8();
  if (!v6)
  {
    return 1;
  }

  v7 = a4(v5);

  return v7 & 1;
}

uint64_t sub_19162EDB8()
{
  v0 = sub_19166C208();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Prefix(0);
  v20 = 0;
  v21 = 0;
  v18 = &v20;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v7 = *(v1 + 72);
    v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v19 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
    v10 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v10, v11);
    *&v17[-16] = sub_1916303F8;
    *&v17[-8] = v17;
    sub_19166C118();
    result = (*(v1 + 8))(v5, v0);
  }

  else
  {
    v19 = v6;
    isOptionalType = swift_isOptionalType();
    if (isOptionalType)
    {
      MEMORY[0x1EEE9AC00](isOptionalType, v14);
      *&v17[-16] = &v19;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v16 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v16 = 4;
      }

      else
      {
        v16 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v16);
    *&v17[-16] = sub_1916303F8;
    *&v17[-8] = v17;
    result = AGTypeApplyFields2();
  }

  if (v21)
  {
    qword_1ED5A8048 = v20;
    *algn_1ED5A8050 = v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19162F0C4()
{
  v1 = OBJC_IVAR____TtCF15AXCoreUtilities27_axPropertyWrapperFieldNameFSSSSL_6Prefix__publishedValue;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD40, &qword_191673778);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_19162F16C()
{
  v0 = sub_19166C208();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = _s15AXCoreUtilities6PrefixCMa_0();
  v20 = 0;
  v21 = 0;
  v18 = &v20;
  if (AGTypeGetKind() == 5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
    v7 = *(v1 + 72);
    v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_191672210;
    sub_19166C1F8();
    v19 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
    sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
    v10 = sub_19166BFE8();
    MEMORY[0x1EEE9AC00](v10, v11);
    *&v17[-16] = sub_191630454;
    *&v17[-8] = v17;
    sub_19166C118();
    result = (*(v1 + 8))(v5, v0);
  }

  else
  {
    v19 = v6;
    isOptionalType = swift_isOptionalType();
    if (isOptionalType)
    {
      MEMORY[0x1EEE9AC00](isOptionalType, v14);
      *&v17[-16] = &v19;
      AGTypeApplyFields2();
    }

    isClassType = swift_isClassType();
    if (isClassType)
    {
      v16 = 3;
    }

    else
    {
      isClassType = AGTypeGetKind();
      if (isClassType == 3)
      {
        v16 = 4;
      }

      else
      {
        v16 = 2;
      }
    }

    MEMORY[0x1EEE9AC00](isClassType, v16);
    *&v17[-16] = sub_191630454;
    *&v17[-8] = v17;
    result = AGTypeApplyFields2();
  }

  if (v21)
  {
    qword_1ED5A8120 = v20;
    *algn_1ED5A8128 = v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19162F478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  sub_1915E5F84();
  if ((sub_19166BFA8() & 1) == 0 || __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9) != a4)
  {
    return 1;
  }

  v13 = sub_19166B838();
  v14 = sub_19162F9FC(v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = MEMORY[0x193AFC690](v14, v16, v18, v20);
  v23 = v22;

  v24 = a5[1];
  *a5 = v21;
  a5[1] = v23;

  return 0;
}

void sub_19162F604()
{
  sub_19162F694();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_19162F694()
{
  if (!qword_1ED5A7F48[0])
  {
    v0 = sub_19166B568();
    if (!v1)
    {
      atomic_store(v0, qword_1ED5A7F48);
    }
  }
}

void sub_19162F734()
{
  sub_19166B1C8();
  if (v0 <= 0x3F)
  {
    sub_1915DA900();
    if (v1 <= 0x3F)
    {
      sub_19162F7D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19162F7D0()
{
  if (!qword_1ED5A7F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF4D8, &unk_191672490);
    v0 = sub_19166BF58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED5A7F40);
    }
  }
}

uint64_t sub_19162F834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = sub_19162A208(a2, a3, *(v3 + 16), a2);
  v6 = *v4;
  *v4 = v5;

  return swift_unknownObjectRelease();
}

unint64_t sub_19162F884()
{
  result = qword_1ED5A81F0;
  if (!qword_1ED5A81F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5A81F0);
  }

  return result;
}

uint64_t sub_19162F8D0(uint64_t a1)
{
  v2 = type metadata accessor for FieldAccessor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19162F92C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_19166B938();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19162F974(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      if ((v1[1] & 0x2000000000000000) == 0)
      {
        v4 = *v1;
      }

      result = sub_19166B848();
      if ((v2 & 1) == 0)
      {
        v5 = result;
        result = 15;
        v2 = v5;

        return MEMORY[0x1EEE68E00](result, v2);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v2);
  }

  return result;
}

uint64_t sub_19162F9FC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_19166B848();

    return sub_19166B958();
  }

  return result;
}

uint64_t sub_19162FABC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19162FC60(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_19162FC70(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_19162FCD4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_19162FCE8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t objectdestroy_85Tm()
{
  v1 = v0[3];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_191630294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD20, &qword_191673688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_191630304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD20, &qword_191673688);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_191630374(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  *(v2 + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FieldAccessor.TypeValidation(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for FieldAccessor.TypeValidation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_19163054C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_191630564(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1916305B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1915F4F34(0, v2, 0);
    v29 = v32;
    v4 = a1 + 64;
    v5 = -1 << *(a1 + 32);
    result = sub_19166BFF8();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v26 = v2;
    v27 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v28 = v7;
      v11 = (*(a1 + 48) + 16 * v6);
      v12 = (*(a1 + 56) + 16 * v6);
      v14 = *v12;
      v13 = v12[1];
      v30 = *v11;
      v31 = v11[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x193AFC710](61, 0xE100000000000000);
      MEMORY[0x193AFC710](v14, v13);

      v15 = v29;
      v17 = *(v29 + 16);
      v16 = *(v29 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1915F4F34((v16 > 1), v17 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v17 + 1;
      v18 = v15 + 16 * v17;
      *(v18 + 32) = v30;
      *(v18 + 40) = v31;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v4 = a1 + 64;
      v19 = *(a1 + 64 + 8 * v10);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v29 = v15;
      v8 = v27;
      if (v27 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (a1 + 72 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_191640194(v6, v27, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_191640194(v6, v27, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v9;
      if (v28 + 1 == v26)
      {
        return v29;
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
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t static AXCTLSupport.requireRootPrivilages()()
{
  result = getuid();
  if (result)
  {
    sub_19166C0C8();

    getuid();
    v1 = sub_19166C3C8();
    MEMORY[0x193AFC710](v1);

    sub_191630948();
    swift_allocError();
    *v2 = 0xD000000000000025;
    v2[1] = 0x800000019167D1C0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_191630948()
{
  result = qword_1EADAFED8;
  if (!qword_1EADAFED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFED8);
  }

  return result;
}

uint64_t static AXCTLSupport.requireNonRootPrivilages(dropToCurrentUserIfPossible:)(char a1)
{
  v2 = 0xD000000000000032;
  v3 = getpwnam("mobile");
  if (v3)
  {
    pw_uid = v3->pw_uid;
    pw_gid = v3->pw_gid;
    result = getuid();
    if (result == pw_uid)
    {
      return result;
    }

    if (a1)
    {
      if (setgid(pw_gid))
      {
        v7 = "Cannot assert non-root privileges. setgid() failed";
      }

      else
      {
        result = setuid(pw_uid);
        if (!result)
        {
          return result;
        }

        v7 = "Cannot assert non-root privileges. setuid() failed";
      }

      v8 = (v7 - 32);
    }

    else
    {
      v8 = "s. getpwnam() failed";
      v2 = 0xD00000000000003ALL;
    }
  }

  else
  {
    v8 = "vilages failed. uid: ";
    v2 = 0xD000000000000034;
  }

  v9 = v8 | 0x8000000000000000;
  sub_191630948();
  swift_allocError();
  *v10 = v2;
  v10[1] = v9;
  return swift_willThrow();
}

AXCoreUtilities::AXCTLSupport::OnOrOffArgument_optional __swiftcall AXCTLSupport.OnOrOffArgument.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19166C278();

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

uint64_t AXCTLSupport.OnOrOffArgument.rawValue.getter()
{
  if (*v0)
  {
    result = 6710895;
  }

  else
  {
    result = 28271;
  }

  *v0;
  return result;
}

uint64_t sub_191630B1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 6710895;
  }

  else
  {
    v4 = 28271;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 6710895;
  }

  else
  {
    v6 = 28271;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_19166C5E8();
  }

  return v9 & 1;
}

uint64_t sub_191630BB0()
{
  v1 = *v0;
  sub_19166C778();
  sub_19166B828();

  return sub_19166C7B8();
}

uint64_t sub_191630C20()
{
  *v0;
  sub_19166B828();
}

uint64_t sub_191630C7C()
{
  v1 = *v0;
  sub_19166C778();
  sub_19166B828();

  return sub_19166C7B8();
}

uint64_t sub_191630CE8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_19166C278();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_191630D48(uint64_t *a1@<X8>)
{
  v2 = 28271;
  if (*v1)
  {
    v2 = 6710895;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_191630D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19163FF58();
  v9 = MEMORY[0x1E698CF90];

  return MEMORY[0x1EEDEE530](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_191630DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_19163FF58();
  v5 = MEMORY[0x1E698CF90];

  return MEMORY[0x1EEDEE390](a1, a2, v4, v5);
}

uint64_t AXCTLSupport.Path.init(argument:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AXCTLSupport.Path(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B028();

  sub_191630FD0(v7, a1);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

uint64_t sub_191630FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXCTLSupport.Path(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AXCTLSupport.Path.validatePathIsReachable()()
{
  v1 = sub_19166B058();
  if (!v0 && (v1 & 1) == 0)
  {
    sub_19166C0C8();

    v2 = _s15AXCoreUtilities12AXCTLSupportO4PathV4pathSSvg_0();
    MEMORY[0x193AFC710](v2);

    sub_19166B4C8();
    sub_19163E2DC(&qword_1EADAFEE0, MEMORY[0x1E698CF48]);
    swift_allocError();
    sub_19166B4D8();
    swift_willThrow();
  }
}

uint64_t sub_191631140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B028();

  sub_191630FD0(v9, a4);
  return (*(v6 + 56))(a4, 0, 1, a3);
}

uint64_t UUID.init(argument:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v11 - v5;
  sub_19166B168();

  v7 = sub_19166B1C8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_19159E780(v6, &qword_1EADAF4A0, &qword_191673940);
    v9 = 1;
  }

  else
  {
    (*(v8 + 32))(a1, v6, v7);
    v9 = 0;
  }

  return (*(v8 + 56))(a1, v9, 1, v7);
}

uint64_t sub_191631378@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A0, &qword_191673940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v12 - v7;
  sub_19166B168();

  v9 = *(a1 - 8);
  if ((*(v9 + 48))(v8, 1, a1) == 1)
  {
    sub_19159E780(v8, &qword_1EADAF4A0, &qword_191673940);
    v10 = 1;
  }

  else
  {
    (*(v9 + 32))(a2, v8, a1);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, a1);
}

uint64_t AXCTLCommandProtocol.run()(uint64_t a1, uint64_t a2)
{
  v5 = sub_19166B508();
  v2[3] = v5;
  v6 = *(v5 - 8);
  v2[4] = v6;
  v7 = *(v6 + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v8 = *(a2 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v2[7] = v10;
  *v10 = v2;
  v10[1] = sub_191631654;

  return v12(a1, a2);
}

uint64_t sub_191631654()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19163179C, 0, 0);
  }

  else
  {
    v5 = v3[5];
    v4 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_19163179C()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);
  if (!swift_dynamicCast())
  {

    if (qword_1EADAF160 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 64);
    v13 = sub_19166AFE8();
    v14 = [v13 debugDescription];

    v15 = sub_19166B748();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    AXCTLSupport.System.error(_:)(v18);

    exit(-1);
  }

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);

  (*(v8 + 32))(v6, v5, v7);
  sub_19163E2DC(&qword_1EADAFEE8, MEMORY[0x1E698CF80]);
  swift_allocError();
  (*(v8 + 16))(v9, v6, v7);
  swift_willThrow();
  (*(v8 + 8))(v6, v7);

  v10 = *(v0 + 8);

  return v10();
}

Swift::Void __swiftcall AXCTLSupport.System.error(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v14 - v7;
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v9 = sub_19166BB58();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v1;
    v10[5] = countAndFlagsBits;
    v10[6] = object;

    sub_1915D5BFC(0, 0, v8, &unk_191673960, v10);
  }

  else
  {
    v15 = 0x203A524F525245;
    v16 = 0xE700000000000000;
    MEMORY[0x193AFC710](countAndFlagsBits, object);
    v12 = v15;
    v11 = v16;
    if (isatty(1))
    {
      v15 = 0x6D31335B1BLL;
      v16 = 0xE500000000000000;
      MEMORY[0x193AFC710](v12, v11);

      MEMORY[0x193AFC710](1831885595, 0xE400000000000000);

      MEMORY[0x193AFC710](32, 0xE100000000000000);

      v12 = v15;
      v11 = v16;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_191672210;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 32) = v12;
    *(v13 + 40) = v11;
    _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
  }
}

uint64_t AXCTLCommandSupportingInteractiveProtocol.axctl_run()(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191631CA0, 0, 0);
}

uint64_t sub_191631CA0()
{
  if (qword_1EADAF160 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = off_1EADAFEB0;
  swift_beginAccess();
  v3 = *(*(*(v1 + 8) + 8) + 8);
  if (v2[17])
  {
    v4 = *(v3 + 8);
    v5 = v0[8];
    v6 = sub_19166B4E8();
    v8 = v7;
    swift_beginAccess();
    if (v2[16] == 1)
    {
      v9 = v0[10];
      v10 = sub_19166BB58();
      (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v2;
      v11[5] = v6;
      v11[6] = v8;

      sub_1915D5BFC(0, 0, v9, &unk_191673978, v11);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_191672210;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 32) = v6;
      *(v15 + 40) = v8;
      _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
    }

    v16 = v0[10];

    v14 = v0[1];
  }

  else
  {
    v12 = v0[10];
    v13 = v0[8];
    sub_19166B508();
    sub_19163E2DC(&qword_1EADAFEE8, MEMORY[0x1E698CF80]);
    swift_allocError();
    sub_19166B4F8();
    swift_willThrow();

    v14 = v0[1];
  }

  return v14();
}

Swift::Void __swiftcall AXCTLSupport.System.write(_:terminator:)(Swift::String _, Swift::String terminator)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v13 - v8;
  swift_beginAccess();
  if (*(v2 + 16) == 1)
  {
    v10 = sub_19166BB58();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v2;
    v11[5] = countAndFlagsBits;
    v11[6] = object;

    sub_1915D5BFC(0, 0, v9, &unk_191673980, v11);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_191672210;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 32) = countAndFlagsBits;
    *(v12 + 40) = object;

    _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
  }
}

uint64_t sub_191632104()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 0x746C7561666564;
  v4 = 1868983913;
  if (v1 != 3)
  {
    v4 = 0x6775626564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E696E726177;
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

uint64_t sub_191632190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19163E440(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1916321C4(uint64_t a1)
{
  v2 = sub_191635C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191632200(uint64_t a1)
{
  v2 = sub_191635C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191632248(uint64_t a1)
{
  v2 = sub_191635CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191632284(uint64_t a1)
{
  v2 = sub_191635CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1916322C0(uint64_t a1)
{
  v2 = sub_191635D84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1916322FC(uint64_t a1)
{
  v2 = sub_191635D84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191632338(uint64_t a1)
{
  v2 = sub_191635E2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191632374(uint64_t a1)
{
  v2 = sub_191635E2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1916323B0(uint64_t a1)
{
  v2 = sub_191635D30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1916323EC(uint64_t a1)
{
  v2 = sub_191635D30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191632428()
{
  sub_19166C778();
  MEMORY[0x193AFD630](0);
  return sub_19166C7B8();
}

uint64_t sub_19163246C()
{
  sub_19166C778();
  MEMORY[0x193AFD630](0);
  return sub_19166C7B8();
}

uint64_t sub_1916324AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19166C5E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19163252C(uint64_t a1)
{
  v2 = sub_191635DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191632568(uint64_t a1)
{
  v2 = sub_191635DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AXCTLSupport.ToolingMessage.Message.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF8, &qword_191673988);
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v52 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF00, &qword_191673990);
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v49 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF08, &qword_191673998);
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v46 = &v45 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF10, &qword_1916739A0);
  v55 = *(v15 - 8);
  v56 = v15;
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF18, &qword_1916739A8);
  v45 = *(v20 - 8);
  v21 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v45 - v23;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF20, &qword_1916739B0);
  v25 = *(v59 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v59, v27);
  v29 = &v45 - v28;
  v30 = v1[1];
  v57 = *v1;
  v58 = v30;
  v31 = *(v1 + 16);
  v33 = a1[3];
  v32 = a1[4];
  v34 = a1;
  v35 = v29;
  __swift_project_boxed_opaque_existential_1(v34, v33);
  sub_191635C88();
  sub_19166C808();
  v36 = (v25 + 8);
  if (v31 <= 1)
  {
    v41 = v20;
    v43 = v55;
    v42 = v56;
    if (v31)
    {
      v61 = 1;
      sub_191635DD8();
      v38 = v59;
      sub_19166C338();
      sub_19166C378();
      (*(v43 + 8))(v19, v42);
    }

    else
    {
      v60 = 0;
      sub_191635E2C();
      v38 = v59;
      sub_19166C338();
      sub_19166C378();
      (*(v45 + 8))(v24, v41);
    }
  }

  else
  {
    if (v31 == 2)
    {
      v62 = 2;
      sub_191635D84();
      v37 = v46;
      v38 = v59;
      sub_19166C338();
      v39 = v48;
      sub_19166C378();
      v40 = v47;
    }

    else if (v31 == 3)
    {
      v63 = 3;
      sub_191635D30();
      v37 = v49;
      v38 = v59;
      sub_19166C338();
      v39 = v51;
      sub_19166C378();
      v40 = v50;
    }

    else
    {
      v64 = 4;
      sub_191635CDC();
      v37 = v52;
      v38 = v59;
      sub_19166C338();
      v39 = v54;
      sub_19166C378();
      v40 = v53;
    }

    (*(v40 + 8))(v37, v39);
  }

  return (*v36)(v35, v38);
}

uint64_t AXCTLSupport.ToolingMessage.Message.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF58, &qword_1916739B8);
  v80 = *(v78 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v78, v4);
  v85 = &v68[-v5];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF60, &qword_1916739C0);
  v81 = *(v77 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v77, v7);
  v84 = &v68[-v8];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF68, &qword_1916739C8);
  v79 = *(v75 - 8);
  v9 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v75, v10);
  v83 = &v68[-v11];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF70, &qword_1916739D0);
  v76 = *(v73 - 8);
  v12 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v73, v13);
  v15 = &v68[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF78, &qword_1916739D8);
  v74 = *(v16 - 8);
  v17 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v68[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF80, &qword_1916739E0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v68[-v25];
  v28 = a1[3];
  v27 = a1[4];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_191635C88();
  v29 = v86;
  sub_19166C7F8();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v71 = v16;
  v72 = 0;
  v31 = v83;
  v30 = v84;
  v32 = v85;
  v86 = v22;
  v33 = v26;
  v34 = sub_19166C318();
  v35 = *(v34 + 16);
  if (!v35 || ((LODWORD(v36) = *(v34 + 32), v35 == 1) ? (v37 = v36 == 5) : (v37 = 1), v37))
  {
    v38 = v21;
    v39 = sub_19166C0F8();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF88, &qword_1916739E8) + 48);
    *v41 = &type metadata for AXCTLSupport.ToolingMessage.Message;
    sub_19166C2A8();
    sub_19166C0E8();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    (*(v86 + 8))(v33, v38);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  v70 = v34;
  if (v36 > 1)
  {
    v69 = v36;
    if (v36 != 2)
    {
      v37 = v36 == 3;
      v43 = v82;
      v36 = v33;
      if (v37)
      {
        v91 = 3;
        sub_191635D30();
        v44 = v72;
        sub_19166C298();
        v45 = v86;
        if (v44)
        {
LABEL_22:
          (*(v45 + 8))(v33, v21);
          goto LABEL_25;
        }

        v46 = v77;
        v63 = sub_19166C2E8();
        v65 = v64;
        (*(v81 + 8))(v30, v46);
        v66 = v63;
      }

      else
      {
        v92 = 4;
        sub_191635CDC();
        v54 = v72;
        sub_19166C298();
        v45 = v86;
        if (v54)
        {
          goto LABEL_22;
        }

        v58 = v78;
        v66 = sub_19166C2E8();
        v65 = v67;
        (*(v80 + 8))(v32, v58);
        v43 = v82;
      }

      goto LABEL_30;
    }

    v90 = 2;
    sub_191635D84();
    v36 = v33;
    v53 = v72;
    sub_19166C298();
    v43 = v82;
    if (!v53)
    {
      v57 = v75;
      v66 = sub_19166C2E8();
      v65 = v62;
      (*(v79 + 8))(v31, v57);
      v45 = v86;
LABEL_30:
      (*(v45 + 8))(v36, v21);
      swift_unknownObjectRelease();
      LOBYTE(v36) = v69;
      goto LABEL_31;
    }

    v49 = v86;
LABEL_20:
    (*(v49 + 8))(v36, v21);
LABEL_25:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  if (v36)
  {
    v89 = 1;
    sub_191635DD8();
    v55 = v72;
    sub_19166C298();
    v56 = v86;
    if (v55)
    {
      (*(v86 + 8))(v33, v21);
      goto LABEL_25;
    }

    v59 = v73;
    v66 = sub_19166C2E8();
    v65 = v60;
    (*(v76 + 8))(v15, v59);
    (*(v56 + 8))(v33, v21);
    swift_unknownObjectRelease();
    v43 = v82;
  }

  else
  {
    v88 = 0;
    sub_191635E2C();
    v47 = v20;
    v36 = v33;
    v48 = v72;
    sub_19166C298();
    v49 = v86;
    if (v48)
    {
      goto LABEL_20;
    }

    v50 = v71;
    v51 = sub_19166C2E8();
    v65 = v52;
    (*(v74 + 8))(v47, v50);
    (*(v49 + 8))(v33, v21);
    swift_unknownObjectRelease();
    LOBYTE(v36) = 0;
    v66 = v51;
    v43 = v82;
  }

LABEL_31:
  *v43 = v66;
  *(v43 + 8) = v65;
  *(v43 + 16) = v36;
  return __swift_destroy_boxed_opaque_existential_1(v87);
}

uint64_t AXCTLSupport.ToolingMessage.command.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AXCTLSupport.ToolingMessage.command.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AXCTLSupport.ToolingMessage.message.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_191635E80(v2, v3, v4);
}

uint64_t AXCTLSupport.ToolingMessage.message.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_191635EAC(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t AXCTLSupport.ToolingMessage.init(command:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a3 + 16);
  *a4 = a1;
  *(a4 + 8) = a2;
  result = sub_191635EAC(0, 0, 0xFFu);
  *(a4 + 16) = v5;
  *(a4 + 24) = v6;
  *(a4 + 32) = v7;
  return result;
}

uint64_t sub_191633624()
{
  if (*v0)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x646E616D6D6F63;
  }
}

uint64_t sub_191633658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_19166C5E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19166C5E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_191633740(uint64_t a1)
{
  v2 = sub_191635ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19163377C(uint64_t a1)
{
  v2 = sub_191635ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AXCTLSupport.ToolingMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFF90, &qword_1916739F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v15 = v1[3];
  v16 = v11;
  v21 = *(v1 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_191635ED8();
  sub_19166C808();
  LOBYTE(v18) = 0;
  v13 = v17;
  sub_19166C348();
  if (!v13)
  {
    v18 = v16;
    v19 = v15;
    v20 = v21;
    v22 = 1;
    sub_191635E80(v16, v15, v21);
    sub_191635F2C();
    sub_19166C368();
    sub_191635EAC(v18, v19, v20);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t AXCTLSupport.ToolingMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFA8, &qword_1916739F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_191635ED8();
  sub_19166C7F8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    v20 = 0;
    v21 = 0;
    v22 = -1;
  }

  else
  {
    LOBYTE(v24) = 0;
    v12 = sub_19166C2B8();
    v15 = v14;
    v16 = v12;
    v27 = 1;
    sub_191635F80();
    sub_19166C2D8();
    (*(v6 + 8))(v10, v5);
    v17 = v24;
    v18 = v25;
    v19 = v26;
    sub_191635EAC(0, 0, 0xFFu);
    *a2 = v16;
    *(a2 + 8) = v15;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18;
    *(a2 + 32) = v19;

    sub_191635E80(v17, v18, v19);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  return sub_191635EAC(v20, v21, v22);
}

uint64_t sub_191633BC4()
{
  type metadata accessor for AXCTLSupport.System();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  v1 = [objc_opt_self() fileHandleWithStandardOutput];
  type metadata accessor for SWEAXStructuredDataFileHandleWriter();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(v0 + 24) = result;
  off_1EADAFEB0 = v0;
  return result;
}

uint64_t System.getter()
{
  if (qword_1EADAF160 != -1)
  {
    swift_once();
  }
}

uint64_t AXCTLSupport.System.communicateWithToolingMessageProtocol.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t AXCTLSupport.System.axctlRunningInteractive.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 17) = a1;
  return result;
}

uint64_t AXCTLSupport.System.debugLoggingEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 18) = a1;
  return result;
}

uint64_t SWEAXStructuredDataFileHandleWriter.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_191633F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_191633F8C, 0, 0);
}

uint64_t sub_191633F8C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(*(v0 + 64) + 24);

  sub_191635EAC(0, 0, 0xFFu);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_191634074;

  return sub_1916341AC(v0 + 16);
}

uint64_t sub_191634074()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
  }

  sub_1916401A0(v2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1916403C4, 0, 0);
}

uint64_t sub_1916341AC(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFB8, &qword_191673A08) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191634248, 0, 0);
}

uint64_t sub_191634248()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = sub_19166AEB8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = sub_191638D48(v2, v1);
  v6 = v5;
  *(v0 + 136) = v4;
  *(v0 + 144) = v5;
  sub_19159E780(v1, &qword_1EADAFFB8, &qword_191673A08);
  v7 = *(*(v0 + 120) + 16);
  *(v0 + 152) = v7;
  if (qword_1EADAF168 != -1)
  {
    swift_once();
  }

  v8 = qword_1EADAFEB8;
  v9 = unk_1EADAFEC0;
  v24 = qword_1EADAFEB8;
  v25 = unk_1EADAFEC0;
  v10 = MEMORY[0x1E6969080];
  v11 = MEMORY[0x1E6969078];
  *(v0 + 40) = MEMORY[0x1E6969080];
  *(v0 + 48) = v11;
  *(v0 + 16) = v4;
  *(v0 + 24) = v6;
  v12 = __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
  v13 = *v12;
  v14 = v12[1];
  sub_1915DCB54(v8, v9);
  sub_1915DCB54(v4, v6);
  sub_19163DBCC(v13, v14);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (qword_1EADAF170 != -1)
  {
    swift_once();
  }

  v15 = qword_1EADAFEC8;
  v16 = unk_1EADAFED0;
  *(v0 + 96) = v24;
  *(v0 + 104) = v25;
  *(v0 + 80) = v10;
  *(v0 + 88) = MEMORY[0x1E6969078];
  *(v0 + 56) = v15;
  *(v0 + 64) = v16;
  v17 = __swift_project_boxed_opaque_existential_1((v0 + 56), v10);
  v18 = *v17;
  v19 = v17[1];
  sub_1915DCB54(v24, v25);
  sub_1915DCB54(v15, v16);
  sub_19163DBCC(v18, v19);
  sub_1915DCBA8(v24, v25);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  *(v0 + 160) = *(v0 + 96);
  v20 = swift_task_alloc();
  *(v0 + 176) = v20;
  *(v20 + 16) = v7;
  v21 = *(MEMORY[0x1E69E88D0] + 4);
  v22 = swift_task_alloc();
  *(v0 + 184) = v22;
  *v22 = v0;
  v22[1] = sub_191634574;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_191634574()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_19163468C, 0, 0);
}

uint64_t sub_19163468C()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = sub_19166B0D8();
  [v3 writeData_];

  sub_1915DCBA8(v1, v2);
  sub_1915DCBA8(v5, v4);

  v8 = v0[1];

  return v8();
}

uint64_t SWEAXStructuredDataFileHandleWriter.write<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a1;
  v5[15] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFB8, &qword_191673A08) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1916347F4, 0, 0);
}

uint64_t sub_1916347F4()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  sub_19166AEF8();
  v5 = sub_19166AEB8();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = static JSONEncoder.sweax_encode<A>(_:dateEncodingStrategy:)(v4, v1, v3, v2);
  v8 = v7;
  *(v0 + 152) = v6;
  *(v0 + 160) = v7;
  sub_19159E780(v1, &qword_1EADAFFB8, &qword_191673A08);
  v9 = *(*(v0 + 136) + 16);
  *(v0 + 168) = v9;
  if (qword_1EADAF168 != -1)
  {
    swift_once();
  }

  v10 = qword_1EADAFEB8;
  v11 = unk_1EADAFEC0;
  v26 = qword_1EADAFEB8;
  v27 = unk_1EADAFEC0;
  v12 = MEMORY[0x1E6969080];
  v13 = MEMORY[0x1E6969078];
  *(v0 + 40) = MEMORY[0x1E6969080];
  *(v0 + 48) = v13;
  *(v0 + 16) = v6;
  *(v0 + 24) = v8;
  v14 = __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  v15 = *v14;
  v16 = v14[1];
  sub_1915DCB54(v10, v11);
  sub_1915DCB54(v6, v8);
  sub_19163DBCC(v15, v16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (qword_1EADAF170 != -1)
  {
    swift_once();
  }

  v17 = qword_1EADAFEC8;
  v18 = unk_1EADAFED0;
  *(v0 + 96) = v26;
  *(v0 + 104) = v27;
  *(v0 + 80) = v12;
  *(v0 + 88) = MEMORY[0x1E6969078];
  *(v0 + 56) = v17;
  *(v0 + 64) = v18;
  v19 = __swift_project_boxed_opaque_existential_1((v0 + 56), v12);
  v20 = *v19;
  v21 = v19[1];
  sub_1915DCB54(v26, v27);
  sub_1915DCB54(v17, v18);
  sub_19163DBCC(v20, v21);
  sub_1915DCBA8(v26, v27);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  *(v0 + 176) = *(v0 + 96);
  v22 = swift_task_alloc();
  *(v0 + 192) = v22;
  *(v22 + 16) = v9;
  v23 = *(MEMORY[0x1E69E88D0] + 4);
  v24 = swift_task_alloc();
  *(v0 + 200) = v24;
  *v24 = v0;
  v24[1] = sub_191634B34;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_191634B34()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_191634C4C, 0, 0);
}

uint64_t sub_191634C4C()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = sub_19166B0D8();
  [v3 writeData_];

  sub_1915DCBA8(v1, v2);
  sub_1915DCBA8(v5, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_191634D24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_191633F68(a1, v4, v5, v6, v7, v8);
}

Swift::Void __swiftcall AXCTLSupport.System.warning(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v14 - v7;
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v9 = sub_19166BB58();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v1;
    v10[5] = countAndFlagsBits;
    v10[6] = object;

    sub_1915D5BFC(0, 0, v8, &unk_191673A18, v10);
  }

  else
  {
    v15 = 0x203A4E524157;
    v16 = 0xE600000000000000;
    MEMORY[0x193AFC710](countAndFlagsBits, object);
    v12 = v15;
    v11 = v16;
    if (isatty(1))
    {
      v15 = 0x6D33335B1BLL;
      v16 = 0xE500000000000000;
      MEMORY[0x193AFC710](v12, v11);

      MEMORY[0x193AFC710](1831885595, 0xE400000000000000);

      MEMORY[0x193AFC710](32, 0xE100000000000000);

      v12 = v15;
      v11 = v16;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_191672210;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 32) = v12;
    *(v13 + 40) = v11;
    _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
  }
}

uint64_t sub_191635028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_19163504C, 0, 0);
}

uint64_t sub_19163504C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(*(v0 + 64) + 24);

  sub_191635EAC(0, 0, 0xFFu);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 1;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_191634074;

  return sub_1916341AC(v0 + 16);
}

Swift::Void __swiftcall AXCTLSupport.System.success(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v9 = sub_19166BB58();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v1;
    v10[5] = countAndFlagsBits;
    v10[6] = object;

    sub_1915D5BFC(0, 0, v8, &unk_191673A28, v10);
  }

  else
  {
    if (isatty(1))
    {
      v13 = 0x6D32335B1BLL;
      v14 = 0xE500000000000000;
      MEMORY[0x193AFC710](countAndFlagsBits, object);
      MEMORY[0x193AFC710](1831885595, 0xE400000000000000);

      MEMORY[0x193AFC710](32, 0xE100000000000000);

      countAndFlagsBits = v13;
      object = v14;
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_191672210;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 32) = countAndFlagsBits;
    *(v11 + 40) = object;
    _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
  }
}

uint64_t sub_191635364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_191635388, 0, 0);
}

uint64_t sub_191635388()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(*(v0 + 64) + 24);

  sub_191635EAC(0, 0, 0xFFu);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 2;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_191634074;

  return sub_1916341AC(v0 + 16);
}

Swift::Void __swiftcall AXCTLSupport.System.h1(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v16 - v7;
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v9 = sub_19166BB58();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v1;
    v10[5] = countAndFlagsBits;
    v10[6] = object;

    sub_1915D5BFC(0, 0, v8, &unk_191673A38, v10);
  }

  else
  {
    v17 = 10;
    v18 = 0xE100000000000000;
    v11 = sub_19166B918();
    MEMORY[0x193AFC710](v11);

    MEMORY[0x193AFC710](10, 0xE100000000000000);
    MEMORY[0x193AFC710](countAndFlagsBits, object);
    MEMORY[0x193AFC710](10, 0xE100000000000000);
    v12 = sub_19166B918();
    MEMORY[0x193AFC710](v12);

    MEMORY[0x193AFC710](10, 0xE100000000000000);
    v14 = v17;
    v13 = v18;
    if (isatty(1))
    {
      v17 = 0x6D34335B1BLL;
      v18 = 0xE500000000000000;
      MEMORY[0x193AFC710](v14, v13);

      MEMORY[0x193AFC710](1831885595, 0xE400000000000000);
      v14 = v17;
      v13 = v18;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_191672210;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 32) = v14;
    *(v15 + 40) = v13;
    _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
  }
}

uint64_t sub_1916356F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_19163571C, 0, 0);
}

uint64_t sub_19163571C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(*(v0 + 64) + 24);

  sub_191635EAC(0, 0, 0xFFu);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 2;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_191635808;

  return sub_1916341AC(v0 + 16);
}

uint64_t sub_191635808()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {

    sub_1916401A0(v2 + 16);
    v5 = sub_1916403C4;
  }

  else
  {
    sub_1916401A0(v2 + 16);
    v5 = sub_191635940;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

Swift::Void __swiftcall AXCTLSupport.System.h2(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v15 - v7;
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v9 = sub_19166BB58();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v1;
    v10[5] = countAndFlagsBits;
    v10[6] = object;

    sub_1915D5BFC(0, 0, v8, &unk_191673A48, v10);
  }

  else
  {
    v16 = 10;
    v17 = 0xE100000000000000;
    MEMORY[0x193AFC710](countAndFlagsBits, object);
    MEMORY[0x193AFC710](10, 0xE100000000000000);
    v11 = sub_19166B918();
    MEMORY[0x193AFC710](v11);

    MEMORY[0x193AFC710](10, 0xE100000000000000);
    v13 = v16;
    v12 = v17;
    if (isatty(1))
    {
      v16 = 0x6D34335B1BLL;
      v17 = 0xE500000000000000;
      MEMORY[0x193AFC710](v13, v12);

      MEMORY[0x193AFC710](1831885595, 0xE400000000000000);
      v13 = v16;
      v12 = v17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_191672210;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 32) = v13;
    *(v14 + 40) = v12;
    _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
  }
}

uint64_t sub_191635BC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D8338;

  return sub_191635364(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_191635C88()
{
  result = qword_1EADAFF28;
  if (!qword_1EADAFF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFF28);
  }

  return result;
}

unint64_t sub_191635CDC()
{
  result = qword_1EADAFF30;
  if (!qword_1EADAFF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFF30);
  }

  return result;
}

unint64_t sub_191635D30()
{
  result = qword_1EADAFF38;
  if (!qword_1EADAFF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFF38);
  }

  return result;
}

unint64_t sub_191635D84()
{
  result = qword_1EADAFF40;
  if (!qword_1EADAFF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFF40);
  }

  return result;
}

unint64_t sub_191635DD8()
{
  result = qword_1EADAFF48;
  if (!qword_1EADAFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFF48);
  }

  return result;
}

unint64_t sub_191635E2C()
{
  result = qword_1EADAFF50;
  if (!qword_1EADAFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFF50);
  }

  return result;
}

uint64_t sub_191635E80(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_191635E94(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_191635E94(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_191635EAC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_191635EC0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_191635EC0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

unint64_t sub_191635ED8()
{
  result = qword_1EADAFF98;
  if (!qword_1EADAFF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFF98);
  }

  return result;
}

unint64_t sub_191635F2C()
{
  result = qword_1EADAFFA0;
  if (!qword_1EADAFFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFFA0);
  }

  return result;
}

unint64_t sub_191635F80()
{
  result = qword_1EADAFFB0;
  if (!qword_1EADAFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFFB0);
  }

  return result;
}

Swift::Void __swiftcall AXCTLSupport.System.debug(_:terminator:)(Swift::String _, Swift::String terminator)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v13[-v8];
  swift_beginAccess();
  if (*(v2 + 18) == 1)
  {
    swift_beginAccess();
    if (*(v2 + 16) == 1)
    {
      v10 = sub_19166BB58();
      (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v2;
      v11[5] = countAndFlagsBits;
      v11[6] = object;

      sub_1915D5BFC(0, 0, v9, &unk_191673A58, v11);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEF0, &qword_191673950);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_191672210;
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 32) = countAndFlagsBits;
      *(v12 + 40) = object;

      _s15AXCoreUtilities12AXCTLSupportO6SystemC5print_9separator10terminatoryypd_S2StF_0();
    }
  }
}

uint64_t sub_1916361B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1916361D4, 0, 0);
}

uint64_t sub_1916361D4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(*(v0 + 64) + 24);

  sub_191635EAC(0, 0, 0xFFu);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 4;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_191634074;

  return sub_1916341AC(v0 + 16);
}

uint64_t AXCTLSupport.System.startReadlineSession(prompt:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191636364, 0, 0);
}

uint64_t sub_191636364()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = sub_19166BB58();
  v11 = *(v0 + 32);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v11;
  *(v5 + 56) = v1;

  v6 = sub_1915FC620(0, 0, v2, &unk_191673A70, v5);
  *(v0 + 64) = v6;
  sub_19159E780(v2, &qword_1EADAF3D0, &qword_1916720D0);
  v7 = *(MEMORY[0x1E69E86C0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1916364EC;
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DA40](v9, v6, &type metadata for AXCTLSupport.System.ReadlineSessionResult);
}

uint64_t sub_1916364EC()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1916365E8, 0, 0);
}

uint64_t sub_1916365E8()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_191636650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191636678, 0, 0);
}

uint64_t sub_191636678()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  while (1)
  {
    v3 = sub_19166B7D8();
    v4 = readline((v3 + 32));

    if (!v4)
    {
      break;
    }

    *(v0 + 56) = v4;
    add_history(v4);
    v5 = sub_19166B878();
    *(v0 + 64) = v6;
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v12 = *(v0 + 40);
      *(v0 + 80) = 0;
      v18 = (v12 + *v12);
      v13 = v12[1];
      v14 = v5;
      v15 = v6;
      v16 = swift_task_alloc();
      *(v0 + 72) = v16;
      *v16 = v0;
      v16[1] = sub_191636840;
      v17 = *(v0 + 48);

      return v18(v14, v15, v0 + 80);
    }

    v8 = *(v0 + 24);
    v9 = *(v0 + 32);
    free(*(v0 + 56));
  }

  **(v0 + 16) = 0;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_191636840()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_191636958, 0, 0);
}

uint64_t sub_191636958()
{
  if (*(v0 + 80))
  {
    **(v0 + 16) = 1;
LABEL_9:
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    while (1)
    {
      v1 = *(v0 + 24);
      v2 = *(v0 + 32);
      free(*(v0 + 56));
      v3 = sub_19166B7D8();
      v4 = readline((v3 + 32));

      if (!v4)
      {
        **(v0 + 16) = 0;
        goto LABEL_9;
      }

      *(v0 + 56) = v4;
      add_history(v4);
      v5 = sub_19166B878();
      *(v0 + 64) = v6;
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        break;
      }
    }

    v10 = *(v0 + 40);
    *(v0 + 80) = 0;
    v16 = (v10 + *v10);
    v11 = v10[1];
    v12 = v5;
    v13 = v6;
    v14 = swift_task_alloc();
    *(v0 + 72) = v14;
    *v14 = v0;
    v14[1] = sub_191636840;
    v15 = *(v0 + 48);

    return v16(v12, v13, v0 + 80);
  }
}

Swift::Void __swiftcall AXCTLSupport.System.postDarwinNote(_:)(Swift::String a1)
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_19166B718();
  CFNotificationCenterPostNotification(v1, v2, 0, 0, 1u);
}

uint64_t AXCTLSupport.System.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t AXCTLSupport.System.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t AXCTLSupport.RuntimeError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AXCTLSupport.RuntimeError.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_191636C64()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_191636CB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19166B088();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AXCTLSupport.TransmutationProcess.executableURL.setter(uint64_t a1)
{
  v3 = sub_19166B088();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AXCTLSupport.TransmutationProcess.args.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXCTLSupport.TransmutationProcess(0) + 20));
}

uint64_t AXCTLSupport.TransmutationProcess.args.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AXCTLSupport.TransmutationProcess(0) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AXCTLSupport.TransmutationProcess.environment.getter()
{
  v1 = *(v0 + *(type metadata accessor for AXCTLSupport.TransmutationProcess(0) + 24));
}

uint64_t AXCTLSupport.TransmutationProcess.environment.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AXCTLSupport.TransmutationProcess(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AXCTLSupport.TransmutationProcess.init(executableURL:args:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_19166B088();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a4, a1, v8);
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = type metadata accessor for AXCTLSupport.TransmutationProcess(0);
  *(a4 + *(v11 + 20)) = v10;
  if (!a3)
  {
    v12 = [objc_opt_self() processInfo];
    v13 = [v12 environment];

    a3 = sub_19166B678();
  }

  result = (*(v9 + 8))(a1, v8);
  *(a4 + *(v11 + 24)) = a3;
  return result;
}

uint64_t AXCTLSupport.TransmutationProcess.init(launchPath:args:environment:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_19166B088();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B028();

  (*(v7 + 16))(a3, v11, v6);
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = type metadata accessor for AXCTLSupport.TransmutationProcess(0);
  *(a3 + *(v13 + 20)) = v12;
  if (!a2)
  {
    v14 = [objc_opt_self() processInfo];
    v15 = [v14 environment];

    a2 = sub_19166B678();
  }

  result = (*(v7 + 8))(v11, v6);
  *(a3 + *(v13 + 24)) = a2;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AXCTLSupport.TransmutationProcess.transmutateCurrentProcess()()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultManager];
  _s15AXCoreUtilities12AXCTLSupportO4PathV4pathSSvg_0();
  v3 = sub_19166B718();

  v4 = [v2 fileExistsAtPath_];

  if (!v4)
  {
    sub_19166C0C8();

    v22 = _s15AXCoreUtilities12AXCTLSupportO4PathV4pathSSvg_0();
    MEMORY[0x193AFC710](v22);

    MEMORY[0x193AFC710](0xD000000000000018, 0x800000019167D380);
    sub_191630948();
    swift_allocError();
    *v23 = 0xD000000000000013;
    v23[1] = 0x800000019167D360;
    swift_willThrow();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4E0, &qword_1916724A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  *(inited + 32) = sub_19166B038();
  *(inited + 40) = v6;
  v7 = type metadata accessor for AXCTLSupport.TransmutationProcess(0);
  v8 = *(v1 + *(v7 + 20));

  sub_1915E3DD8(v9);
  v10 = sub_1916377F0(inited);

  *&__file = v10;
  sub_1915E3ECC(qword_1F05759B0);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v50 = v1;
  if (v11)
  {
    *&__file = MEMORY[0x1E69E7CC0];
    sub_1915F4F54(0, v11, 0);
    v13 = v12;
    v14 = (v10 + 40);
    v15 = (v10 + 40);
    do
    {
      v16 = *v15;
      v15 += 2;
      if (v16)
      {
        v17 = *(v14 - 1);
        v18 = sub_19166B7D8();
        swift_bridgeObjectRetain_n();
        v19 = strdup((v18 + 32));
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v19 = 0;
      }

      *&__file = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1915F4F54((v20 > 1), v21 + 1, 1);
        v13 = __file;
      }

      *(v13 + 16) = v21 + 1;
      *(v13 + 8 * v21 + 32) = v19;
      v14 = v15;
      --v11;
    }

    while (v11);

    v1 = v50;
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v52 = v13;
  *&__file = sub_1916305B0(*(v1 + *(v7 + 24)));
  sub_1915E3ECC(qword_1F05759E0);
  v24 = __file;
  v25 = *(__file + 16);
  if (v25)
  {
    *&__file = v12;
    sub_1915F4F54(0, v25, 0);
    v26 = v12;
    v27 = (v24 + 40);
    v28 = (v24 + 40);
    do
    {
      v29 = *v28;
      v28 += 2;
      if (v29)
      {
        v30 = *(v27 - 1);
        v31 = sub_19166B7D8();
        swift_bridgeObjectRetain_n();
        v32 = strdup((v31 + 32));
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v32 = 0;
      }

      *&__file = v26;
      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1915F4F54((v33 > 1), v34 + 1, 1);
        v26 = __file;
      }

      *(v26 + 16) = v34 + 1;
      *(v26 + 8 * v34 + 32) = v32;
      v27 = v28;
      --v25;
    }

    while (v25);
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v35 = _s15AXCoreUtilities12AXCTLSupportO4PathV4pathSSvg_0();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v35, v36);
  if ((v37 & 0x1000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if ((v37 & 0x2000000000000000) != 0)
  {
    *&__file = v38;
    *(&__file + 1) = v37 & 0xFFFFFFFFFFFFFFLL;
    p_file = &__file;
    goto LABEL_28;
  }

  if ((v38 & 0x1000000000000000) == 0)
  {
LABEL_36:
    sub_19166C0A8();
    goto LABEL_29;
  }

  p_file = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_28:
  execve(p_file, (v13 + 32), (v26 + 32));
LABEL_29:

  v40 = *(v52 + 16);
  if (v40)
  {
    v41 = (v52 + 32);
    do
    {
      v42 = *v41++;
      free(v42);
      --v40;
    }

    while (v40);
  }

  v43 = *(v26 + 16);
  if (v43)
  {
    v44 = (v26 + 32);
    do
    {
      v45 = *v44++;
      free(v45);
      --v43;
    }

    while (v43);
  }

  *&__file = 0;
  *(&__file + 1) = 0xE000000000000000;
  sub_19166C0C8();

  strcpy(&__file, "execve of ");
  BYTE11(__file) = 0;
  HIDWORD(__file) = -369098752;
  v46 = _s15AXCoreUtilities12AXCTLSupportO4PathV4pathSSvg_0();
  MEMORY[0x193AFC710](v46);

  MEMORY[0x193AFC710](0x3A64656C69616620, 0xE900000000000020);
  v47 = sub_19166C3C8();
  MEMORY[0x193AFC710](v47);

  v48 = __file;
  sub_191630948();
  swift_allocError();
  *v49 = v48;
  swift_willThrow();
}

uint64_t sub_1916377F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1915F4F34(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 40);
    do
    {
      v9 = *(v4 - 1);
      v10 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4D0, &unk_191672480);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1915F4F34((v6 > 1), v7 + 1, 1);
        v5 = v11;
      }

      *(v12 + 16) = v7 + 1;
      *(v12 + 16 * v7 + 32) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t AXCTLSupport.SimpleTask.Result.standardOut.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AXCTLSupport.SimpleTask.Result.standardOut.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AXCTLSupport.SimpleTask.Result.standardError.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t AXCTLSupport.SimpleTask.Result.standardError.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void AXCTLSupport.SimpleTask.init(executablePath:arguments:collectOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_task] = 0;
  *&v4[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_stdOutData] = xmmword_191673910;
  *&v4[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_stdErrorData] = xmmword_191673910;
  v7 = &v4[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result];
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0xE000000000000000;
  v7[3] = 0;
  v7[4] = 0xE000000000000000;
  v4[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_collectOutput] = a4;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, sel_init);
  v9 = objc_allocWithZone(MEMORY[0x1E696AED8]);
  v10 = v8;
  v11 = [v9 init];
  v12 = OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_task;
  v13 = *&v10[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_task];
  *&v10[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_task] = v11;
  v14 = v11;

  if (v14)
  {
    v15 = sub_19166B718();
    [v14 setLaunchPath_];

    v16 = *&v10[v12];
    if (v16)
    {
      v17 = v16;

      v18 = sub_19166B9F8();

      [v17 setArguments_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __swiftcall AXCTLSupport.SimpleTask.run()(AXCoreUtilities::AXCTLSupport::SimpleTask::Result *__return_ptr retstr)
{
  v2 = v1;
  v4 = &qword_1EADAF000;
  if (*(v1 + OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_collectOutput) != 1)
  {
    goto LABEL_5;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E696AE00]) init];
  v6 = [v5 fileHandleForReading];
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = sub_19163E294;
  v34 = v7;
  v29 = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1916403D4;
  v32 = &block_descriptor_60;
  v8 = _Block_copy(&v29);

  sub_1915A4734(sub_19163E294);

  [v6 setReadabilityHandler_];
  _Block_release(v8);

  v9 = [objc_allocWithZone(MEMORY[0x1E696AE00]) init];
  v10 = [v9 fileHandleForReading];
  v11 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = sub_19163E2B8;
  v34 = v11;
  v29 = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1916403D4;
  v32 = &block_descriptor_57;
  v12 = _Block_copy(&v29);

  sub_1915A4734(sub_19163E2B8);

  [v10 setReadabilityHandler_];
  _Block_release(v12);

  v4 = &qword_1EADAF000;

  v13 = OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_task;
  v14 = *(v2 + OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_task);
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v14 setStandardOutput_];
  v15 = *(v2 + v13);
  if (v15)
  {
    [v15 setStandardError_];

LABEL_5:
    v16 = dispatch_semaphore_create(0);
    v17 = v4[504];
    v18 = *(v2 + v17);
    if (v18)
    {
      v19 = v16;
      v20 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = v19;
      v33 = sub_19163E274;
      v34 = v21;
      v29 = MEMORY[0x1E69E9820];
      v30 = 1107296256;
      v31 = sub_1916403D4;
      v32 = &block_descriptor_4;
      v22 = _Block_copy(&v29);
      v23 = v18;

      v24 = v19;
      sub_1915A4734(sub_19163E274);

      [v23 setTerminationHandler_];
      _Block_release(v22);

      v25 = *(v2 + v17);
      if (v25)
      {
        [v25 launch];
        sub_19166BE98();

        v26 = *(v2 + OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result + 16);
        v27 = *(v2 + OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result + 24);
        v28 = *(v2 + OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result + 32);
        *&retstr->returnCode = *(v2 + OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result);
        retstr->standardOut._object = v26;
        retstr->standardError._countAndFlagsBits = v27;
        retstr->standardError._object = v28;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_19163806C(void *a1, uint64_t a2, uint64_t *a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = [a1 availableData];
  v7 = sub_19166B0E8();
  v9 = v8;

  v10 = *a3;
  swift_beginAccess();
  sub_19166B108();
  swift_endAccess();

  return sub_1915DCBA8(v7, v9);
}

uint64_t sub_191638120(void *a1)
{
  v2 = sub_19166B798();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = Strong[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_collectOutput];

  v7 = swift_unknownObjectUnownedLoadStrong();
  v8 = v7;
  if (v6 == 1)
  {
    v9 = (v7 + OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_stdOutData);
    swift_beginAccess();
    v10 = *v9;
    v11 = v9[1];
    sub_1915DCB54(*v9, v11);

    sub_19166B788();
    v12 = sub_19166B768();
    v14 = v13;
    sub_1915DCBA8(v10, v11);
    v15 = swift_unknownObjectUnownedLoadStrong();
    v16 = &v15[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_stdErrorData];
    swift_beginAccess();
    v18 = *v16;
    v17 = v16[1];
    sub_1915DCB54(v18, v17);

    sub_19166B788();
    v19 = sub_19166B768();
    v21 = v20;
    sub_1915DCBA8(v18, v17);
    v22 = swift_unknownObjectUnownedLoadStrong();
    v23 = [a1 terminationStatus];
    *&v22[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result] = v23;

    v24 = swift_unknownObjectUnownedLoadStrong();
    if (v14)
    {
      v25 = v12;
    }

    else
    {
      v25 = 0;
    }

    v26 = &v24[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result];
    v27 = *&v24[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result + 16];
    if (v14)
    {
      v28 = v14;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    *(v26 + 1) = v25;
    *(v26 + 2) = v28;

    v29 = swift_unknownObjectUnownedLoadStrong();
    if (v21)
    {
      v30 = v19;
    }

    else
    {
      v30 = 0;
    }

    v31 = &v29[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result];
    v32 = *&v29[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result + 32];
    if (v21)
    {
      v33 = v21;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    *(v31 + 3) = v30;
    *(v31 + 4) = v33;

    if ([a1 standardOutput])
    {
      sub_19166BFC8();
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v41 = v39;
    v42 = v40;
    if (*(&v40 + 1))
    {
      sub_191640148();
      if (swift_dynamicCast())
      {
        v35 = [v38 fileHandleForReading];

        [v35 setReadabilityHandler_];
        _Block_release(0);
      }
    }

    else
    {
      sub_19159E780(&v41, &unk_1EADB0270, &unk_191672C20);
    }

    if ([a1 standardError])
    {
      sub_19166BFC8();
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v41 = v39;
    v42 = v40;
    if (*(&v40 + 1))
    {
      sub_191640148();
      if (swift_dynamicCast())
      {
        v36 = [v38 fileHandleForReading];

        [v36 setReadabilityHandler_];
        _Block_release(0);
      }
    }

    else
    {
      sub_19159E780(&v41, &unk_1EADB0270, &unk_191672C20);
    }
  }

  else
  {
    v34 = [a1 terminationStatus];
    *&v8[OBJC_IVAR____TtCO15AXCoreUtilities12AXCTLSupport10SimpleTask_result] = v34;
  }

  return sub_19166BEA8();
}

void sub_191638514(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void static AXCTLSupport.SimpleTask.do(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);

  AXCTLSupport.SimpleTask.init(executablePath:arguments:collectOutput:)(a1, a2, a3, 1);
  v9 = v8;
  AXCTLSupport.SimpleTask.run()(&v15);
  returnCode = v15.returnCode;

  if (returnCode)
  {
    v15.returnCode = 0;
    v15.standardOut._countAndFlagsBits = 0xE000000000000000;
    sub_19166C0C8();

    v15.returnCode = 0xD00000000000001ELL;
    v15.standardOut._countAndFlagsBits = 0x800000019167D3E0;
    v11 = sub_19166C3C8();
    MEMORY[0x193AFC710](v11);

    MEMORY[0x193AFC710](0x646E616D6D6F6320, 0xE90000000000003DLL);
    MEMORY[0x193AFC710](a1, a2);
    v12 = v15.returnCode;
    countAndFlagsBits = v15.standardOut._countAndFlagsBits;
    sub_191630948();
    swift_allocError();
    *v14 = v12;
    v14[1] = countAndFlagsBits;
    swift_willThrow();
  }
}

id AXCTLSupport.SimpleTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXCTLSupport.SimpleTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static JSONDecoder.sweax_decode<A>(_:dateDecodingStrategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v25[2] = a2;
  v25[3] = a4;
  v25[0] = a5;
  v25[1] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFE8, &qword_191673A80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v25 - v9;
  v11 = sub_19166AE18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v25 - v19;
  v21 = sub_19166AE58();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_19166AE48();
  sub_1915E0A90(a3, v10, &qword_1EADAFFE8, &qword_191673A80);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_19159E780(v10, &qword_1EADAFFE8, &qword_191673A80);
  }

  else
  {
    (*(v12 + 32))(v20, v10, v11);
    (*(v12 + 16))(v17, v20, v11);
    sub_19166AE28();
    (*(v12 + 8))(v20, v11);
  }

  sub_19166AE38();
}

uint64_t static JSONDecoder.sweax_decode<A>(as:data:dateDecodingStrategy:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v25[2] = a2;
  v25[3] = a4;
  v25[0] = a5;
  v25[1] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFE8, &qword_191673A80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v25 - v9;
  v11 = sub_19166AE18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v25 - v19;
  v21 = sub_19166AE58();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_19166AE48();
  sub_1915E0A90(a3, v10, &qword_1EADAFFE8, &qword_191673A80);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_19159E780(v10, &qword_1EADAFFE8, &qword_191673A80);
  }

  else
  {
    (*(v12 + 32))(v20, v10, v11);
    (*(v12 + 16))(v17, v20, v11);
    sub_19166AE28();
    (*(v12 + 8))(v20, v11);
  }

  sub_19166AE38();
}

uint64_t static JSONDecoder.sweax_decode<A>(_:dateDecodingStrategy:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  result = sub_19166B098();
  if (!v3)
  {
    v9 = a3;
    v10 = result;
    v11 = v8;
    static JSONDecoder.sweax_decode<A>(_:dateDecodingStrategy:)(result, v8, a1, a2, v9);
    return sub_1915DCBA8(v10, v11);
  }

  return result;
}

uint64_t sub_191638D48(__int128 *a1, uint64_t a2)
{
  v31 = a2;
  v32 = sub_19166AE98();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v32, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFB8, &qword_191673A08);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v30 - v9;
  v11 = sub_19166AEB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v30 - v19;
  v21 = a1[1];
  v33 = *a1;
  v34 = v21;
  v35 = *(a1 + 32);
  v22 = sub_19166AEF8();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_19166AEE8();
  sub_1915E0A90(v31, v10, &qword_1EADAFFB8, &qword_191673A08);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_19159E780(v10, &qword_1EADAFFB8, &qword_191673A08);
  }

  else
  {
    (*(v12 + 32))(v20, v10, v11);
    (*(v12 + 16))(v17, v20, v11);
    sub_19166AEC8();
    (*(v12 + 8))(v20, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFF0, &qword_191673A88);
  v25 = *(v3 + 72);
  v26 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1916729D0;
  sub_19166AE78();
  sub_19166AE68();
  sub_19166AE88();
  v36 = v27;
  sub_19163E2DC(&qword_1EADAFFF8, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0000, &qword_191673A90);
  sub_19162FABC(&qword_1EADB0008, &qword_1EADB0000, &qword_191673A90);
  sub_19166BFE8();
  sub_19166AEA8();
  sub_1916401D0();
  v28 = sub_19166AED8();

  return v28;
}

uint64_t static JSONEncoder.sweax_encode<A>(_:dateEncodingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v32 = a1;
  v33 = a3;
  v30 = a2;
  v31 = sub_19166AE98();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v31, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFB8, &qword_191673A08);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v30 - v10;
  v12 = sub_19166AEB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v30 - v20;
  v22 = sub_19166AEF8();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_19166AEE8();
  sub_1915E0A90(v30, v11, &qword_1EADAFFB8, &qword_191673A08);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_19159E780(v11, &qword_1EADAFFB8, &qword_191673A08);
  }

  else
  {
    (*(v13 + 32))(v21, v11, v12);
    (*(v13 + 16))(v18, v21, v12);
    sub_19166AEC8();
    (*(v13 + 8))(v21, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFF0, &qword_191673A88);
  v25 = *(v4 + 72);
  v26 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1916729D0;
  sub_19166AE78();
  sub_19166AE68();
  sub_19166AE88();
  v35 = v27;
  sub_19163E2DC(&qword_1EADAFFF8, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0000, &qword_191673A90);
  sub_19162FABC(&qword_1EADB0008, &qword_1EADB0000, &qword_191673A90);
  sub_19166BFE8();
  sub_19166AEA8();
  v28 = sub_19166AED8();

  return v28;
}

uint64_t sub_191639528()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_191639620;
  v5 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000010, 0x800000019167D420, sub_19163E324, v2, v5);
}

uint64_t sub_191639620()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_191639758;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_19163973C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_191639758()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_1916397BC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01C8, &qword_191674CD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = aBlock - v8;
  (*(v5 + 16))(aBlock - v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = sub_1916400CC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1916403D4;
  aBlock[3] = &block_descriptor_235;
  v12 = _Block_copy(aBlock);

  [a2 setReadabilityHandler_];
  _Block_release(v12);
}

uint64_t sub_19163996C(void *a1)
{
  v2 = [a1 availableData];
  v3 = sub_19166B0E8();
  v5 = v4;

  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2 || *(v3 + 16) == *(v3 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v6)
  {
    if ((v5 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    [a1 setReadabilityHandler_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01C8, &qword_191674CD8);
    return sub_19166BA98();
  }

  if (v3 != v3 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  [a1 setReadabilityHandler_];
  sub_19163E32C();
  swift_allocError();
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  *(v8 + 24) = xmmword_191673920;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01C8, &qword_191674CD8);
  sub_19166BA88();
  return sub_1915DCBA8(v3, v5);
}

uint64_t sub_191639AE0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_191639BD4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_191639BD4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_191639CEC, 0, 0);
}

void sub_191639D00(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01E0, &qword_191674CE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = aBlock - v8;
  (*(v5 + 16))(aBlock - v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = sub_1916402A8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1916403D4;
  aBlock[3] = &block_descriptor_256;
  v12 = _Block_copy(aBlock);

  [a2 setWriteabilityHandler_];
  _Block_release(v12);
}

uint64_t NSFileHandle.sweax_writeData(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191639ED4, 0, 0);
}

uint64_t sub_191639ED4()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_191639FC8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_191639FC8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_19163A0E0, 0, 0);
}

uint64_t sub_19163A0E0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_19166B0D8();
  [v2 writeData_];

  v5 = v0[1];

  return v5();
}

uint64_t NSFileHandle.sweax_writeText(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_19166B798();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19163A224, 0, 0);
}

uint64_t sub_19163A224()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  sub_19166B788();
  v6 = sub_19166B758();
  v8 = v7;
  v0[8] = v7;
  (*(v2 + 8))(v1, v3);
  if (v8 >> 60 == 15)
  {
    v9 = v0[7];
    sub_19163E32C();
    swift_allocError();
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = 0;
    *(v10 + 24) = xmmword_191673930;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[4];
    v0[9] = v6;
    v14 = swift_task_alloc();
    v0[10] = v14;
    *(v14 + 16) = v13;
    v15 = *(MEMORY[0x1E69E88D0] + 4);
    v16 = swift_task_alloc();
    v0[11] = v16;
    *v16 = v0;
    v16[1] = sub_19163A400;

    return MEMORY[0x1EEE6DDE0]();
  }
}

uint64_t sub_19163A400()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_19163A518, 0, 0);
}

uint64_t sub_19163A518()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  v5 = sub_19166B0D8();
  [v4 writeData_];

  sub_1915E8158(v2, v1);

  v6 = v0[1];

  return v6();
}

uint64_t NSFileHandle.sweax_writeLine(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19163A5F0, 0, 0);
}

uint64_t sub_19163A5F0()
{
  v1 = v0[2];
  v2 = v0[3];
  if (sub_19166B8F8())
  {
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_1915D8520;
    v4 = v0[3];
    v5 = v0[4];
    v6 = v0[2];
  }

  else
  {
    v10 = v0[2];
    v11 = v0[3];

    MEMORY[0x193AFC710](10, 0xE100000000000000);
    v0[6] = v11;
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_19163A71C;
    v8 = v0[4];
    v6 = v10;
    v4 = v11;
  }

  return NSFileHandle.sweax_writeText(_:)(v6, v4);
}

uint64_t sub_19163A71C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19163A858, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_19163A858()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t NSFileHandle.sweax_writeModel<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFFB8, &qword_191673A08) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19163A95C, 0, 0);
}

uint64_t sub_19163A95C()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  sub_19166AEF8();
  v5 = sub_19166AEB8();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = static JSONEncoder.sweax_encode<A>(_:dateEncodingStrategy:)(v4, v1, v3, v2);
  v7 = v0[6];
  v8 = v0[5];
  v0[7] = v9;
  v0[8] = v6;
  sub_19159E780(v7, &qword_1EADAFFB8, &qword_191673A08);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *(v10 + 16) = v8;
  v11 = *(MEMORY[0x1E69E88D0] + 4);
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_19163AB44;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_19163AB44()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_19163AC5C, 0, 0);
}

uint64_t sub_19163AC5C()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_19166B0D8();
  [v4 writeData_];

  sub_1915DCBA8(v2, v1);

  v6 = v0[1];

  return v6();
}

uint64_t SWEAXStructuredDataFileHandleWriter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19163AD70()
{
  v0 = sub_19166B798();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B788();
  v6 = sub_19166B758();
  v8 = v7;
  result = (*(v1 + 8))(v5, v0);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1EADAFEB8 = v6;
    unk_1EADAFEC0 = v8;
  }

  return result;
}

uint64_t sub_19163AEA8()
{
  v0 = sub_19166B798();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B788();
  v6 = sub_19166B758();
  v8 = v7;
  result = (*(v1 + 8))(v5, v0);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1EADAFEC8 = v6;
    unk_1EADAFED0 = v8;
  }

  return result;
}

uint64_t sub_19163AFE0(void *a1, uint64_t *a2, unint64_t *a3)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a2 = v5;
    a3 = v6;
  }

  v3 = *a2;
  sub_1915DCB54(*a2, *a3);
  return v3;
}

uint64_t SWEAXStructuredDataFileHandleReader.read<A>(expecting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SWEAXStructuredDataFileHandleReader.Event();
  v8 = sub_19166BB98();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v15[-v11];
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = v4;
  v13 = swift_checkMetadataState();
  nullsub_1(v13);
  sub_1915D455C(v12);
  return sub_19166BC18();
}

uint64_t sub_19163B130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SWEAXStructuredDataFileHandleReader.Event();
  v10 = sub_19166BBC8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v20 - v14;
  v21 = *(a2 + 16);
  (*(v11 + 16))(&v20 - v14, a1, v10);
  v16 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = a4;
  *(v17 + 4) = a5;
  *(v17 + 5) = a2;
  (*(v11 + 32))(&v17[v16], v15, v10);
  aBlock[4] = sub_191640024;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1916403D4;
  aBlock[3] = &block_descriptor_226;
  v18 = _Block_copy(aBlock);

  sub_1915A4734(sub_191640024);

  [v21 setReadabilityHandler_];
  _Block_release(v18);
}

uint64_t sub_19163B334(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v9 = type metadata accessor for SWEAXStructuredDataFileHandleReader.Event();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v12 = sub_19166BB78();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v27 - v16;
  v18 = [a1 availableData];
  v19 = sub_19166B0E8();
  v21 = v20;

  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2 || *(v19 + 16) == *(v19 + 24))
    {
      goto LABEL_9;
    }
  }

  else if (v22)
  {
    if (v19 == v19 >> 32)
    {
LABEL_9:
      [*(v6 + 16) setReadabilityHandler_];
      _Block_release(0);
      swift_storeEnumTagMultiPayload();
      sub_19166BBC8();
      sub_19166BBA8();
      (*(v13 + 8))(v17, v12);
      sub_19166BBB8();
      return sub_1915DCBA8(v19, v21);
    }
  }

  else if ((v21 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

  swift_storeEnumTagMultiPayload();
  sub_19166BBC8();
  sub_19166BBA8();
  (*(v13 + 8))(v17, v12);
  swift_beginAccess();
  v30[3] = MEMORY[0x1E6969080];
  v30[4] = MEMORY[0x1E6969078];
  v30[0] = v19;
  v30[1] = v21;
  v23 = __swift_project_boxed_opaque_existential_1(v30, MEMORY[0x1E6969080]);
  v24 = *v23;
  v25 = v23[1];
  sub_1915DCB54(v19, v21);
  sub_19163DBCC(v24, v25);
  __swift_destroy_boxed_opaque_existential_1(v30);
  swift_endAccess();
  sub_19163B600(a2, v27, v28);
  return sub_1915DCBA8(v19, v21);
}

uint64_t sub_19163B600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v77 = a1;
  v7 = sub_19166B798();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a3;
  v11 = type metadata accessor for SWEAXStructuredDataFileHandleReader.Event();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v11);
  v75 = (&v67 - v14);
  v76 = v13;
  v74 = sub_19166BB78();
  v15 = *(v74 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v74, v17);
  v73 = &v67 - v19;
  v20 = *(a2 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18, v22);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v25 = 0;
  v71 = (v15 + 8);
  v72 = a2;
  v67 = (v20 + 8);
  v68 = (v20 + 16);
  while (1)
  {
    v26 = *(v4 + 24);
    v27 = *(v4 + 32);
    sub_1915DCB54(v26, v27);
    if (qword_1EADAF168 != -1)
    {
      swift_once();
    }

    v28 = sub_19166B0F8();
    v30 = v29;
    v32 = v31;
    sub_1915DCBA8(v26, v27);
    if (v32)
    {
      break;
    }

    v33 = v24;
    v34 = *(v4 + 24);
    v35 = *(v4 + 32);
    sub_1915DCB54(v34, v35);
    if (qword_1EADAF170 != -1)
    {
      swift_once();
    }

    v36 = sub_19166B0F8();
    v38 = v37;
    v40 = v39;
    result = sub_1915DCBA8(v34, v35);
    if (v40)
    {
      *(v4 + 40) = 1;
      break;
    }

    if (v36 < v30)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    swift_beginAccess();
    v42 = *(v4 + 24);
    v43 = *(v4 + 32);
    v44 = sub_19166B0C8();
    v46 = v45;
    swift_endAccess();
    v47 = sub_19166AE58();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    sub_19166AE48();
    v50 = v33;
    v51 = v72;
    sub_19166AE38();

    if (v25)
    {
      sub_1915DCB54(v44, v46);
      sub_19166B788();
      v52 = sub_19166B768();
      v54 = v53;
      sub_19163E32C();
      v55 = swift_allocError();
      *v56 = v44;
      v56[1] = v46;
      v56[2] = v52;
      v56[3] = v54;
      v56[4] = v25;
      *v75 = v55;
      swift_storeEnumTagMultiPayload();
      sub_19166BBC8();
      v57 = v73;
      sub_19166BBA8();
      result = (*v71)(v57, v74);
      v25 = 0;
    }

    else
    {
      (*v68)(v75, v50, v51);
      swift_storeEnumTagMultiPayload();
      sub_19166BBC8();
      v70 = 0;
      v58 = v38;
      v59 = v4;
      v60 = v28;
      v61 = v51;
      v62 = v73;
      sub_19166BBA8();
      v63 = v62;
      v64 = v61;
      v28 = v60;
      v4 = v59;
      v38 = v58;
      v25 = v70;
      (*v71)(v63, v74);
      result = (*v67)(v50, v64);
    }

    v24 = v50;
    if (v38 < v28)
    {
      goto LABEL_27;
    }

    swift_beginAccess();
    sub_19166B0A8();
    swift_endAccess();
    sub_1915DCBA8(v44, v46);
    *(v4 + 40) = 0;
  }

  result = *(v4 + 24);
  v65 = *(v4 + 32);
  v66 = v65 >> 62;
  if ((v65 >> 62) > 1)
  {
    if (v66 != 2 || *(result + 16) == *(result + 24))
    {
      return result;
    }
  }

  else if (v66)
  {
    if (result == result >> 32)
    {
      return result;
    }
  }

  else if ((v65 & 0xFF000000000000) == 0)
  {
    return result;
  }

  if ((*(v4 + 40) & 1) == 0)
  {
    *(v4 + 24) = xmmword_191673910;
    return sub_1915DCBA8(result, v65);
  }

  return result;
}

double SWEAXTextFileHandleReader.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = xmmword_191673910;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  return result;
}

uint64_t SWEAXTextFileHandleReader.init(_:)(uint64_t a1)
{
  *(v1 + 24) = xmmword_191673910;
  *(v1 + 40) = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t SWEAXTextFileHandleReader.read()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB0018, &qword_191673AC8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  (*(v4 + 104))(&v6 - v3, *MEMORY[0x1E69E8650]);
  return sub_19166BC18();
}

uint64_t sub_19163BD3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01B8, &qword_191674CC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = aBlock - v8;
  v10 = *(a2 + 16);
  (*(v5 + 16))(aBlock - v8, a1, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v5 + 32))(v12 + v11, v9, v4);
  aBlock[4] = sub_19163FFAC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1916403D4;
  aBlock[3] = &block_descriptor_217;
  v13 = _Block_copy(aBlock);

  sub_1915A4734(sub_19163FFAC);

  [v10 setReadabilityHandler_];
  _Block_release(v13);
}

uint64_t sub_19163BF18(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01C0, &qword_191674CD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v18 - v7;
  v9 = [a1 availableData];
  v10 = sub_19166B0E8();
  v12 = v11;

  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2 || *(v10 + 16) == *(v10 + 24))
    {
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    if (v10 == v10 >> 32)
    {
LABEL_9:
      [*(v1 + 16) setReadabilityHandler_];
      _Block_release(0);
      v19 = xmmword_191673920;
      v20 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01B8, &qword_191674CC8);
      sub_19166BBA8();
      (*(v4 + 8))(v8, v3);
      sub_19166BBB8();
      return sub_1915DCBA8(v10, v12);
    }
  }

  else if ((v12 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

  v19 = 0uLL;
  v20 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01B8, &qword_191674CC8);
  sub_19166BBA8();
  (*(v4 + 8))(v8, v3);
  swift_beginAccess();
  v21 = MEMORY[0x1E6969080];
  v22 = MEMORY[0x1E6969078];
  *&v19 = v10;
  *(&v19 + 1) = v12;
  v14 = __swift_project_boxed_opaque_existential_1(&v19, MEMORY[0x1E6969080]);
  v15 = *v14;
  v16 = v14[1];
  sub_1915DCB54(v10, v12);
  sub_19163DBCC(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(&v19);
  swift_endAccess();
  sub_19163C190();
  return sub_1915DCBA8(v10, v12);
}

uint64_t sub_19163C190()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01C0, &qword_191674CD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v18 - v5;
  v7 = sub_19166B798();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  swift_beginAccess();
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  sub_1915DCB54(v10, v11);
  sub_19166B788();
  v12 = sub_19166B768();
  v14 = v13;
  result = sub_1915DCBA8(v10, v11);
  if (v14)
  {
    v18[0] = v12;
    v18[1] = v14;
    v19 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADB01B8, &qword_191674CC8);
    sub_19166BBA8();
    (*(v2 + 8))(v6, v1);
    v16 = *(v0 + 24);
    v17 = *(v0 + 32);
    *(v0 + 24) = xmmword_191673910;
    return sub_1915DCBA8(v16, v17);
  }

  return result;
}

uint64_t sub_19163C378()
{
  sub_1915DCBA8(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_19163C3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x193AFC710]();
  MEMORY[0x193AFC710](1831885595, 0xE400000000000000);
  return a3;
}

uint64_t String.highlighted.getter(uint64_t a1, uint64_t a2)
{
  sub_19166C0C8();

  MEMORY[0x193AFC710](a1, a2);
  MEMORY[0x193AFC710](0x6D303B305B1BLL, 0xE600000000000000);
  return 0x6D30333B37345B1BLL;
}

uint64_t sub_19163C4E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_19166B8E8();

  if (v4)
  {
    v5 = sub_19163E5E8(2uLL, a1, a2);
    v7 = v6;
    v9 = v8;
    v11 = v10;

    a1 = MEMORY[0x193AFC690](v5, v7, v9, v11);
  }

  return a1;
}

unsigned __int8 *String.parseHex.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_19166B8E8();

  if (v4)
  {
    v6 = sub_19163E5E8(2uLL, a1, a2);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    a1 = MEMORY[0x193AFC690](v6, v8, v10, v12);
    a2 = v13;
  }

  v14 = HIBYTE(a2) & 0xF;
  v15 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v39[0] = a1;
      v39[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v14)
        {
          if (--v14)
          {
            v18 = 0;
            v29 = v39 + 1;
            while (1)
            {
              v30 = *v29;
              v31 = v30 - 48;
              if ((v30 - 48) >= 0xA)
              {
                if ((v30 - 65) < 6)
                {
                  v31 = v30 - 55;
                }

                else
                {
                  if ((v30 - 97) > 5)
                  {
                    goto LABEL_89;
                  }

                  v31 = v30 - 87;
                }
              }

              if ((v18 - 0x800000000000000) >> 60 != 15)
              {
                break;
              }

              v22 = __OFADD__(16 * v18, v31);
              v18 = 16 * v18 + v31;
              if (v22)
              {
                break;
              }

              ++v29;
              if (!--v14)
              {
                goto LABEL_90;
              }
            }
          }

          goto LABEL_89;
        }

LABEL_100:
        __break(1u);
        return result;
      }

      if (a1 != 45)
      {
        if (v14)
        {
          v18 = 0;
          v34 = v39;
          while (1)
          {
            v35 = *v34;
            v36 = v35 - 48;
            if ((v35 - 48) >= 0xA)
            {
              if ((v35 - 65) < 6)
              {
                v36 = v35 - 55;
              }

              else
              {
                if ((v35 - 97) > 5)
                {
                  goto LABEL_89;
                }

                v36 = v35 - 87;
              }
            }

            if ((v18 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v22 = __OFADD__(16 * v18, v36);
            v18 = 16 * v18 + v36;
            if (v22)
            {
              break;
            }

            ++v34;
            if (!--v14)
            {
              goto LABEL_90;
            }
          }
        }

        goto LABEL_89;
      }

      if (v14)
      {
        if (--v14)
        {
          v18 = 0;
          v23 = v39 + 1;
          while (1)
          {
            v24 = *v23;
            v25 = v24 - 48;
            if ((v24 - 48) >= 0xA)
            {
              if ((v24 - 65) < 6)
              {
                v25 = v24 - 55;
              }

              else
              {
                if ((v24 - 97) > 5)
                {
                  goto LABEL_89;
                }

                v25 = v24 - 87;
              }
            }

            if ((v18 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v22 = __OFSUB__(16 * v18, v25);
            v18 = 16 * v18 - v25;
            if (v22)
            {
              break;
            }

            ++v23;
            if (!--v14)
            {
              goto LABEL_90;
            }
          }
        }

        goto LABEL_89;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_19166C108();
      }

      v17 = *result;
      if (v17 == 43)
      {
        if (v15 >= 1)
        {
          v14 = v15 - 1;
          if (v15 != 1)
          {
            if (result)
            {
              v18 = 0;
              v26 = result + 1;
              while (1)
              {
                v27 = *v26;
                v28 = v27 - 48;
                if ((v27 - 48) >= 0xA)
                {
                  if ((v27 - 65) < 6)
                  {
                    v28 = v27 - 55;
                  }

                  else
                  {
                    if ((v27 - 97) > 5)
                    {
                      goto LABEL_89;
                    }

                    v28 = v27 - 87;
                  }
                }

                if ((v18 - 0x800000000000000) >> 60 != 15)
                {
                  goto LABEL_89;
                }

                v22 = __OFADD__(16 * v18, v28);
                v18 = 16 * v18 + v28;
                if (v22)
                {
                  goto LABEL_89;
                }

                ++v26;
                if (!--v14)
                {
                  goto LABEL_90;
                }
              }
            }

            goto LABEL_77;
          }

          goto LABEL_89;
        }

        goto LABEL_99;
      }

      if (v17 != 45)
      {
        if (v15)
        {
          if (result)
          {
            v18 = 0;
            while (1)
            {
              v32 = *result;
              v33 = v32 - 48;
              if ((v32 - 48) >= 0xA)
              {
                if ((v32 - 65) < 6)
                {
                  v33 = v32 - 55;
                }

                else
                {
                  if ((v32 - 97) > 5)
                  {
                    goto LABEL_89;
                  }

                  v33 = v32 - 87;
                }
              }

              if ((v18 - 0x800000000000000) >> 60 != 15)
              {
                goto LABEL_89;
              }

              v22 = __OFADD__(16 * v18, v33);
              v18 = 16 * v18 + v33;
              if (v22)
              {
                goto LABEL_89;
              }

              ++result;
              if (!--v15)
              {
                LOBYTE(v14) = 0;
                goto LABEL_90;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_89:
        v18 = 0;
        LOBYTE(v14) = 1;
        goto LABEL_90;
      }

      if (v15 >= 1)
      {
        v14 = v15 - 1;
        if (v15 != 1)
        {
          if (result)
          {
            v18 = 0;
            v19 = result + 1;
            while (1)
            {
              v20 = *v19;
              v21 = v20 - 48;
              if ((v20 - 48) >= 0xA)
              {
                if ((v20 - 65) < 6)
                {
                  v21 = v20 - 55;
                }

                else
                {
                  if ((v20 - 97) > 5)
                  {
                    goto LABEL_89;
                  }

                  v21 = v20 - 87;
                }
              }

              if ((v18 - 0x800000000000000) >> 60 != 15)
              {
                goto LABEL_89;
              }

              v22 = __OFSUB__(16 * v18, v21);
              v18 = 16 * v18 - v21;
              if (v22)
              {
                goto LABEL_89;
              }

              ++v19;
              if (!--v14)
              {
                goto LABEL_90;
              }
            }
          }

LABEL_77:
          v18 = 0;
          LOBYTE(v14) = 0;
LABEL_90:
          v40 = v14;
          v37 = v14;
          goto LABEL_91;
        }

        goto LABEL_89;
      }

      __break(1u);
    }

    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v18 = sub_19163D640(a1, a2, 16);
  v37 = v38;
LABEL_91:

  if (v37)
  {
    return 0;
  }

  else
  {
    return v18;
  }
}