id sub_19160E4C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v83);
  v80 = a1;
  if (v84)
  {
    sub_1915E4370(&v83, &v85);
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = sub_19162CE48(&v87, v19, &v85, v19, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E7668], v19);
    v21 = v20;
    v23 = v22;
    v24 = (v20 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v85);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v83, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v77 = v26 + 16;
    v81 = a3;
    *(v26 + 20) = 1;
    v27 = swift_allocObject();
    v76 = &v74;
    *(v27 + 16) = 1;
    a3 = v81;
    *(v27 + 24) = a1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    *(v27 + 48) = a1;
    v78 = v26;
    *(v27 + 56) = v26;
    LOBYTE(v87) = 0;
    v82 = 0;
    *&v85 = 0;
    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v87;
    *(&v74 - 6) = &v85;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19163011C;
    v72 = v29;
    v73 = &v82;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v30 = v74;
      v31 = *(v74 + 72);
      v32 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v83 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v34 = v75;
      v35 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v35, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v30 + 8))(v17, v34);
    }

    else
    {
      *&v83 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v37);
        v72 = &v83;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v39 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v39 = 4;
        }

        else
        {
          v39 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v39);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v40 = v78;

    v21 = v87;
    v24 = v82;
    v23 = v85;
    swift_beginAccess();
    v41 = *(v40 + 20);
    v87 = *(v40 + 16);
    v88 = v41;

    a2 = v79;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
LABEL_31:
    LOBYTE(v83) = v88;
    return (v87 | (v88 << 32));
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v47);

    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    if (v23)
    {
      v48 = v24;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v42;
      *(v52 + 80) = v44;
      v55 = v80;
      *&v83 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      *&v83 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      goto LABEL_31;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160ED64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v85)
  {
    sub_1915E4370(&v84, &v86);
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = sub_19162CE48(&v84, v19, &v86, v19, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E7360], v19);
    v21 = v20;
    v23 = v22;
    v24 = (v20 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v77 = v26 + 16;
    v81 = a3;
    *(v26 + 24) = 1;
    v27 = swift_allocObject();
    v76 = &v74;
    *(v27 + 16) = 1;
    a3 = v81;
    *(v27 + 24) = a1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    *(v27 + 48) = a1;
    v78 = v26;
    *(v27 + 56) = v26;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v86 = 0;
    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v86;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_1916300FC;
    v72 = v29;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v30 = v74;
      v31 = *(v74 + 72);
      v32 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v34 = v75;
      v35 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v35, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v30 + 8))(v17, v34);
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v37);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v39 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v39 = 4;
        }

        else
        {
          v39 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v39);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v40 = v78;

    v21 = v82;
    v24 = v83;
    v23 = v86;
    swift_beginAccess();
    v41 = *(v40 + 24);
    *&v84 = *(v40 + 16);
    BYTE8(v84) = v41;

    a2 = v79;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
    return v84;
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v47);

    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    if (v23)
    {
      v48 = v24;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v42;
      *(v52 + 80) = v44;
      v55 = v80;
      v82 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      v82 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160F5F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v85)
  {
    sub_1915E4370(&v84, &v86);
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = sub_19162CE48(&v84, v19, &v86, v19, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E76D8], v19);
    v21 = v20;
    v23 = v22;
    v24 = (v20 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v77 = v26 + 16;
    v81 = a3;
    *(v26 + 24) = 1;
    v27 = swift_allocObject();
    v76 = &v74;
    *(v27 + 16) = 1;
    a3 = v81;
    *(v27 + 24) = a1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    *(v27 + 48) = a1;
    v78 = v26;
    *(v27 + 56) = v26;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v86 = 0;
    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v86;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_1916300DC;
    v72 = v29;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v30 = v74;
      v31 = *(v74 + 72);
      v32 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v34 = v75;
      v35 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v35, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v30 + 8))(v17, v34);
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v37);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v39 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v39 = 4;
        }

        else
        {
          v39 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v39);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v40 = v78;

    v21 = v82;
    v24 = v83;
    v23 = v86;
    swift_beginAccess();
    v41 = *(v40 + 24);
    *&v84 = *(v40 + 16);
    BYTE8(v84) = v41;

    a2 = v79;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
    return v84;
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v47);

    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    if (v23)
    {
      v48 = v24;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v42;
      *(v52 + 80) = v44;
      v55 = v80;
      v82 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      v82 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160FE8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v83);
  v80 = a1;
  if (v84)
  {
    sub_1915E4370(&v83, &v85);
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = sub_19162CE48(&v87, v19, &v85, v19, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E6448], v19);
    v21 = v20;
    v23 = v22;
    v24 = (v20 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v85);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v83, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v77 = v26 + 16;
    v81 = a3;
    *(v26 + 20) = 1;
    v27 = swift_allocObject();
    v76 = &v74;
    *(v27 + 16) = 1;
    a3 = v81;
    *(v27 + 24) = a1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    *(v27 + 48) = a1;
    v78 = v26;
    *(v27 + 56) = v26;
    LOBYTE(v87) = 0;
    v82 = 0;
    *&v85 = 0;
    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v87;
    *(&v74 - 6) = &v85;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_1916300BC;
    v72 = v29;
    v73 = &v82;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v30 = v74;
      v31 = *(v74 + 72);
      v32 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v83 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v34 = v75;
      v35 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v35, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v30 + 8))(v17, v34);
    }

    else
    {
      *&v83 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v37);
        v72 = &v83;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v39 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v39 = 4;
        }

        else
        {
          v39 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v39);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v40 = v78;

    v21 = v87;
    v24 = v82;
    v23 = v85;
    swift_beginAccess();
    v41 = *(v40 + 20);
    v87 = *(v40 + 16);
    v88 = v41;

    a2 = v79;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
LABEL_31:
    LOBYTE(v83) = v88;
    return (v87 | (v88 << 32));
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v47);

    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    if (v23)
    {
      v48 = v24;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v42;
      *(v52 + 80) = v44;
      v55 = v80;
      *&v83 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      *&v83 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      goto LABEL_31;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19161072C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v85)
  {
    sub_1915E4370(&v84, &v86);
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = sub_19162CE48(&v84, v19, &v86, v19, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E63B0], v19);
    v21 = v20;
    v23 = v22;
    v24 = (v20 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v77 = v26 + 16;
    v81 = a3;
    *(v26 + 24) = 1;
    v27 = swift_allocObject();
    v76 = &v74;
    *(v27 + 16) = 1;
    a3 = v81;
    *(v27 + 24) = a1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    *(v27 + 48) = a1;
    v78 = v26;
    *(v27 + 56) = v26;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v86 = 0;
    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v86;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19163009C;
    v72 = v29;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v30 = v74;
      v31 = *(v74 + 72);
      v32 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v34 = v75;
      v35 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v35, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v30 + 8))(v17, v34);
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v37);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v39 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v39 = 4;
        }

        else
        {
          v39 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v39);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v40 = v78;

    v21 = v82;
    v24 = v83;
    v23 = v86;
    swift_beginAccess();
    v41 = *(v40 + 24);
    *&v84 = *(v40 + 16);
    BYTE8(v84) = v41;

    a2 = v79;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
    return v84;
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v47);

    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    if (v23)
    {
      v48 = v24;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v42;
      *(v52 + 80) = v44;
      v55 = v80;
      v82 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      v82 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_191610FC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v85)
  {
    sub_1915E4370(&v84, &v86);
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = sub_19162CE48(&v84, v19, &v86, v19, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E7DE0], v19);
    v21 = v20;
    v23 = v22;
    v24 = (v20 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v77 = v26 + 16;
    v81 = a3;
    *(v26 + 24) = 1;
    v27 = swift_allocObject();
    v76 = &v74;
    *(v27 + 16) = 1;
    a3 = v81;
    *(v27 + 24) = a1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    *(v27 + 48) = a1;
    v78 = v26;
    *(v27 + 56) = v26;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v86 = 0;
    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v86;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19163007C;
    v72 = v29;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v30 = v74;
      v31 = *(v74 + 72);
      v32 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v34 = v75;
      v35 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v35, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v30 + 8))(v17, v34);
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v37);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v39 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v39 = 4;
        }

        else
        {
          v39 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v39);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v40 = v78;

    v21 = v82;
    v24 = v83;
    v23 = v86;
    swift_beginAccess();
    v41 = *(v40 + 24);
    *&v84 = *(v40 + 16);
    BYTE8(v84) = v41;

    a2 = v79;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
    return v84;
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v47);

    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    if (v23)
    {
      v48 = v24;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v42;
      *(v52 + 80) = v44;
      v55 = v80;
      v82 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      v82 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_191611854(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v86)
  {
    sub_1915E4370(&v84, &v87);
    __swift_project_boxed_opaque_existential_1(&v87, v88);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    type metadata accessor for CGPoint(0);
    v21 = sub_19162CE48(&v84, v19, &v87, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v87);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v77 = v27 + 16;
    *(v27 + 24) = 0;
    v81 = a3;
    *(v27 + 32) = 1;
    v28 = swift_allocObject();
    v76 = &v74;
    *(v28 + 16) = 1;
    a3 = v81;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v78 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v87 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v87;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_191630050;
    v72 = v30;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v31 = v74;
      v32 = *(v74 + 72);
      v33 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v35 = v75;
      v36 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v36, v37);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v31 + 8))(v17, v35);
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v38);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v40 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v40 = 4;
        }

        else
        {
          v40 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v40);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v41 = v78;

    v22 = v82;
    v25 = v83;
    v24 = v87;
    swift_beginAccess();
    v42 = *(v41 + 32);
    v84 = *(v41 + 16);
    v85 = v42;

    a2 = v79;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v84;
  }

LABEL_16:
  v43 = sub_19166C878();
  v45 = v44;
  if (AXShouldLogValidationErrors())
  {
    v46 = sub_19166B718();
    v47 = a2;
    v48 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v46, v48);

    a2 = v47;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v49 = v25;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      goto LABEL_29;
    }

    v50 = a2;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_191673660;
      v54 = MEMORY[0x1E69E6158];
      *(v53 + 56) = MEMORY[0x1E69E6158];
      v55 = sub_1915F225C();
      *(v53 + 32) = v50;
      *(v53 + 40) = a3;
      *(v53 + 96) = v54;
      *(v53 + 104) = v55;
      *(v53 + 64) = v55;
      *(v53 + 72) = v43;
      *(v53 + 80) = v45;
      v56 = v80;
      v82 = v80;

      v57 = sub_19166B7A8();
      *(v53 + 136) = v54;
      *(v53 + 144) = v55;
      *(v53 + 112) = v57;
      *(v53 + 120) = v58;
      v82 = v56;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v59 = sub_19166C878();
      *(v53 + 216) = v54;
      *(v53 + 224) = v55;
      *(v53 + 192) = v59;
      *(v53 + 200) = v60;
      v61 = [objc_opt_self() callStackSymbols];
      v62 = sub_19166BA08();

      *(v53 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 232) = v62;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v63 = a2;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v63;
      *(v64 + 40) = a3;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v43;
      *(v64 + 80) = v45;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1916120EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v86)
  {
    sub_1915E4370(&v84, &v87);
    __swift_project_boxed_opaque_existential_1(&v87, v88);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    type metadata accessor for CGSize(0);
    v21 = sub_19162CE48(&v84, v19, &v87, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v87);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v77 = v27 + 16;
    *(v27 + 24) = 0;
    v81 = a3;
    *(v27 + 32) = 1;
    v28 = swift_allocObject();
    v76 = &v74;
    *(v28 + 16) = 1;
    a3 = v81;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v78 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v87 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v87;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19162FFE4;
    v72 = v30;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v31 = v74;
      v32 = *(v74 + 72);
      v33 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v35 = v75;
      v36 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v36, v37);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v31 + 8))(v17, v35);
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v38);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v40 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v40 = 4;
        }

        else
        {
          v40 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v40);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v41 = v78;

    v22 = v82;
    v25 = v83;
    v24 = v87;
    swift_beginAccess();
    v42 = *(v41 + 32);
    v84 = *(v41 + 16);
    v85 = v42;

    a2 = v79;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v84;
  }

LABEL_16:
  v43 = sub_19166C878();
  v45 = v44;
  if (AXShouldLogValidationErrors())
  {
    v46 = sub_19166B718();
    v47 = a2;
    v48 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v46, v48);

    a2 = v47;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v49 = v25;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      goto LABEL_29;
    }

    v50 = a2;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_191673660;
      v54 = MEMORY[0x1E69E6158];
      *(v53 + 56) = MEMORY[0x1E69E6158];
      v55 = sub_1915F225C();
      *(v53 + 32) = v50;
      *(v53 + 40) = a3;
      *(v53 + 96) = v54;
      *(v53 + 104) = v55;
      *(v53 + 64) = v55;
      *(v53 + 72) = v43;
      *(v53 + 80) = v45;
      v56 = v80;
      v82 = v80;

      v57 = sub_19166B7A8();
      *(v53 + 136) = v54;
      *(v53 + 144) = v55;
      *(v53 + 112) = v57;
      *(v53 + 120) = v58;
      v82 = v56;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v59 = sub_19166C878();
      *(v53 + 216) = v54;
      *(v53 + 224) = v55;
      *(v53 + 192) = v59;
      *(v53 + 200) = v60;
      v61 = [objc_opt_self() callStackSymbols];
      v62 = sub_19166BA08();

      *(v53 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 232) = v62;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v63 = a2;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v63;
      *(v64 + 40) = a3;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v43;
      *(v64 + 80) = v45;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_191612984@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_19166C208();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v92);
  v86 = a1;
  if (*(&v93 + 1))
  {
    sub_1915E4370(&v92, &v90);
    __swift_project_boxed_opaque_existential_1(&v90, v91);
    DynamicType = swift_getDynamicType();
    v21 = sub_191622EE0(DynamicType);
    type metadata accessor for CGRect(0);
    v23 = sub_19162CE48(&v92, v21, &v90, v21, a4, a1, a2, a3, a5, a6, v22, v21);
    v24 = v23;
    v26 = v25;
    v27 = (v23 >> 8) & 1;
    result = __swift_destroy_boxed_opaque_existential_1(&v90);
    if ((v24 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v80 = v19;
    v81 = v15;
    v87 = a7;
    sub_19159E780(&v92, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v30 = swift_allocObject();
    v82 = a6;
    v31 = v30;
    *(v30 + 16) = 0u;
    v84 = v30 + 16;
    *(v30 + 32) = 0u;
    *(v30 + 48) = 1;
    v32 = swift_allocObject();
    v83 = &v80;
    *(v32 + 16) = 1;
    *(v32 + 24) = a1;
    *(v32 + 32) = a2;
    *(v32 + 40) = a3;
    *(v32 + 48) = a1;
    *(v32 + 56) = v31;
    LOBYTE(v88) = 0;
    v89 = 0;
    *&v92 = 0;
    v34 = MEMORY[0x1EEE9AC00](v32, v33);
    *(&v80 - 10) = a4;
    *(&v80 - 9) = a2;
    v85 = a2;
    *(&v80 - 8) = a3;
    *(&v80 - 7) = &v88;
    *(&v80 - 6) = &v92;
    *(&v80 - 5) = a5;
    v76 = v82;
    v77 = sub_19162FFCC;
    v78 = v34;
    v79 = &v89;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v35 = v81;
      v36 = *(v81 + 72);
      v37 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v90 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v39 = v80;
      v40 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v40, v41);
      v78 = sub_19163059C;
      v79 = &v80 - 12;
      sub_19166C118();
      (*(v35 + 8))(v39, v14);
      a7 = v87;
    }

    else
    {
      *&v90 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v42);
        v78 = &v90;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      a7 = v87;
      if (isClassType)
      {
        v44 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v44 = 4;
        }

        else
        {
          v44 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v44);
      v78 = sub_19163059C;
      v79 = &v80 - 12;
      AGTypeApplyFields2();
    }

    v24 = v88;
    v27 = v89;
    v26 = v92;
    swift_beginAccess();
    v45 = *(v31 + 48);
    v46 = *(v31 + 32);
    v92 = *(v31 + 16);
    v93 = v46;
    v94 = v45;

    a2 = v85;
    if ((v24 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v27)
  {
LABEL_31:
    v74 = v94;
    v75 = v93;
    *a7 = v92;
    *(a7 + 16) = v75;
    *(a7 + 32) = v74;
    return result;
  }

LABEL_16:
  v47 = sub_19166C878();
  v49 = v48;
  if (AXShouldLogValidationErrors())
  {
    v50 = sub_19166B718();
    v51 = a2;
    v52 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v50, v52);

    a2 = v51;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v24)
  {
    if (v26)
    {
      v53 = v27;
    }

    else
    {
      v53 = 1;
    }

    if (v53)
    {
      goto LABEL_29;
    }

    v54 = a2;
    v55 = a3;
    v87 = a7;
    result = AXLogValidations();
    if (result)
    {
      v56 = result;
      LODWORD(v85) = sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_191673660;
      v58 = MEMORY[0x1E69E6158];
      *(v57 + 56) = MEMORY[0x1E69E6158];
      v59 = sub_1915F225C();
      *(v57 + 32) = v54;
      *(v57 + 40) = v55;
      *(v57 + 96) = v58;
      *(v57 + 104) = v59;
      *(v57 + 64) = v59;
      *(v57 + 72) = v47;
      *(v57 + 80) = v49;
      v60 = v86;
      v88 = v86;

      v61 = sub_19166B7A8();
      *(v57 + 136) = v58;
      *(v57 + 144) = v59;
      *(v57 + 112) = v61;
      *(v57 + 120) = v62;
      v88 = v60;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v63 = sub_19166C878();
      *(v57 + 216) = v58;
      *(v57 + 224) = v59;
      *(v57 + 192) = v63;
      *(v57 + 200) = v64;
      v65 = [objc_opt_self() callStackSymbols];
      v66 = sub_19166BA08();

      *(v57 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v57 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v57 + 232) = v66;
LABEL_28:
      sub_19166B518();

      a7 = v87;
LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      goto LABEL_31;
    }
  }

  else
  {
    v67 = a2;
    v87 = a7;
    result = AXLogValidations();
    if (result)
    {
      v56 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_1916729D0;
      v69 = MEMORY[0x1E69E6158];
      *(v68 + 56) = MEMORY[0x1E69E6158];
      v70 = sub_1915F225C();
      *(v68 + 32) = v67;
      *(v68 + 40) = a3;
      *(v68 + 96) = v69;
      *(v68 + 104) = v70;
      *(v68 + 64) = v70;
      *(v68 + 72) = v47;
      *(v68 + 80) = v49;
      v71 = objc_opt_self();

      v72 = [v71 callStackSymbols];
      v73 = sub_19166BA08();

      *(v68 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v68 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v68 + 112) = v73;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_191613240(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v83);
  v81 = a2;
  if (v84)
  {
    sub_1915E4370(&v83, &v85);
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFEA0, &qword_1916738E0);
    v21 = sub_19162CE48(&v87, v19, &v85, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v85);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v76 = v13;
    sub_19159E780(&v83, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = a1;
    v28 = swift_allocObject();
    *(v28 + 16) = 3;
    v78 = v28 + 16;
    v29 = swift_allocObject();
    v77 = &v74;
    *(v29 + 16) = 1;
    *(v29 + 24) = v27;
    *(v29 + 32) = a2;
    *(v29 + 40) = a3;
    *(v29 + 48) = v27;
    v79 = v28;
    *(v29 + 56) = v28;
    v87 = 0;
    v82 = 0;
    *&v85 = 0;
    v31 = MEMORY[0x1EEE9AC00](v29, v30);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = v32;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v87;
    *(&v74 - 6) = &v85;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19162FFB4;
    v72 = v31;
    v73 = &v82;
    Kind = AGTypeGetKind();
    v80 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v75 = &v74 - 12;
      v34 = v76;
      v35 = *(v76 + 72);
      v36 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v83 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v38 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v38, v39);
      v72 = sub_19163059C;
      v73 = v75;
      sub_19166C118();
      (*(v34 + 8))(v17, v12);
      a1 = v27;
    }

    else
    {
      *&v83 = ObjectType;
      swift_unknownObjectRetain();

      a1 = v27;
      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v40);
        v72 = &v83;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v42 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v42 = 4;
        }

        else
        {
          v42 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v42);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v43 = v79;

    v22 = v87;
    v25 = v82;
    v24 = v85;
    swift_beginAccess();
    v87 = *(v43 + 16);

    a3 = v80;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v87;
  }

LABEL_16:
  v44 = sub_19166C878();
  v46 = v45;
  if (AXShouldLogValidationErrors())
  {
    v47 = sub_19166B718();
    v48 = a3;
    v49 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v47, v49);

    a3 = v48;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v50 = v25;
    }

    else
    {
      v50 = 1;
    }

    if (v50)
    {
      goto LABEL_29;
    }

    v51 = a3;
    result = AXLogValidations();
    if (result)
    {
      v53 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_191673660;
      v55 = MEMORY[0x1E69E6158];
      *(v54 + 56) = MEMORY[0x1E69E6158];
      v56 = sub_1915F225C();
      *(v54 + 32) = v81;
      *(v54 + 40) = v51;
      *(v54 + 96) = v55;
      *(v54 + 104) = v56;
      *(v54 + 64) = v56;
      *(v54 + 72) = v44;
      *(v54 + 80) = v46;
      *&v83 = a1;

      v57 = sub_19166B7A8();
      *(v54 + 136) = v55;
      *(v54 + 144) = v56;
      *(v54 + 112) = v57;
      *(v54 + 120) = v58;
      *&v83 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v59 = sub_19166C878();
      *(v54 + 216) = v55;
      *(v54 + 224) = v56;
      *(v54 + 192) = v59;
      *(v54 + 200) = v60;
      v61 = [objc_opt_self() callStackSymbols];
      v62 = sub_19166BA08();

      *(v54 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v54 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v54 + 232) = v62;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v87;
    }
  }

  else
  {
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v53 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v81;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v44;
      *(v64 + 80) = v46;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_191613AD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v87);
  v84 = a1;
  if (v88)
  {
    sub_1915E4370(&v87, &v89);
    __swift_project_boxed_opaque_existential_1(&v89, v90);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE90, &qword_1916738D0);
    v21 = sub_19162CE48(&v87, v19, &v89, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v89);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v77 = v13;
    v78 = v12;
    sub_19159E780(&v87, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v80 = v27 + 16;
    *(v27 + 24) = 256;
    v28 = swift_allocObject();
    v79 = &v77;
    *(v28 + 16) = 1;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v81 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v85) = 0;
    v86 = 0;
    *&v89 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v77 - 10) = a4;
    *(&v77 - 9) = a2;
    v82 = a2;
    *(&v77 - 8) = a3;
    *(&v77 - 7) = &v85;
    *(&v77 - 6) = &v89;
    *(&v77 - 5) = a5;
    v73 = a6;
    v74 = sub_19162FF8C;
    v75 = v30;
    v76 = &v86;
    Kind = AGTypeGetKind();
    v83 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v32 = v77;
      v33 = *(v77 + 72);
      v34 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v87 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v36 = v78;
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      sub_19166C118();
      (*(v32 + 8))(v17, v36);
    }

    else
    {
      *&v87 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v39);
        v75 = &v87;
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
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      AGTypeApplyFields2();
    }

    v42 = v81;

    v22 = v85;
    v25 = v86;
    v24 = v89;
    swift_beginAccess();
    v43 = *(v42 + 24);
    v44 = *(v42 + 25);
    *&v87 = *(v42 + 16);
    BYTE8(v87) = v43;
    BYTE9(v87) = v44;

    a2 = v82;
    a3 = v83;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v87;
  }

LABEL_16:
  v45 = sub_19166C878();
  v47 = v46;
  if (AXShouldLogValidationErrors())
  {
    v48 = sub_19166B718();
    v49 = a2;
    v50 = a3;
    v51 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v48, v51);

    a3 = v50;
    a2 = v49;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v52 = v25;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_29;
    }

    v53 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_191673660;
      v57 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v58 = sub_1915F225C();
      *(v56 + 32) = a2;
      *(v56 + 40) = v53;
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      *(v56 + 64) = v58;
      *(v56 + 72) = v45;
      *(v56 + 80) = v47;
      v59 = v84;
      v85 = v84;

      v60 = sub_19166B7A8();
      *(v56 + 136) = v57;
      *(v56 + 144) = v58;
      *(v56 + 112) = v60;
      *(v56 + 120) = v61;
      v85 = v59;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v62 = sub_19166C878();
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 192) = v62;
      *(v56 + 200) = v63;
      v64 = [objc_opt_self() callStackSymbols];
      v65 = sub_19166BA08();

      *(v56 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 232) = v65;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v87;
    }
  }

  else
  {
    v66 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1916729D0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1915F225C();
      *(v67 + 32) = a2;
      *(v67 + 40) = v66;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v45;
      *(v67 + 80) = v47;
      v70 = objc_opt_self();

      v71 = [v70 callStackSymbols];
      v72 = sub_19166BA08();

      *(v67 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 112) = v72;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19161438C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v87);
  v84 = a1;
  if (v88)
  {
    sub_1915E4370(&v87, &v89);
    __swift_project_boxed_opaque_existential_1(&v89, v90);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE80, &qword_1916738C0);
    v21 = sub_19162CE48(&v87, v19, &v89, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v89);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v77 = v13;
    v78 = v12;
    sub_19159E780(&v87, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v80 = v27 + 16;
    *(v27 + 24) = 256;
    v28 = swift_allocObject();
    v79 = &v77;
    *(v28 + 16) = 1;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v81 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v85) = 0;
    v86 = 0;
    *&v89 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v77 - 10) = a4;
    *(&v77 - 9) = a2;
    v82 = a2;
    *(&v77 - 8) = a3;
    *(&v77 - 7) = &v85;
    *(&v77 - 6) = &v89;
    *(&v77 - 5) = a5;
    v73 = a6;
    v74 = sub_19162FF64;
    v75 = v30;
    v76 = &v86;
    Kind = AGTypeGetKind();
    v83 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v32 = v77;
      v33 = *(v77 + 72);
      v34 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v87 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v36 = v78;
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      sub_19166C118();
      (*(v32 + 8))(v17, v36);
    }

    else
    {
      *&v87 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v39);
        v75 = &v87;
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
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      AGTypeApplyFields2();
    }

    v42 = v81;

    v22 = v85;
    v25 = v86;
    v24 = v89;
    swift_beginAccess();
    v43 = *(v42 + 24);
    v44 = *(v42 + 25);
    *&v87 = *(v42 + 16);
    BYTE8(v87) = v43;
    BYTE9(v87) = v44;

    a2 = v82;
    a3 = v83;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v87;
  }

LABEL_16:
  v45 = sub_19166C878();
  v47 = v46;
  if (AXShouldLogValidationErrors())
  {
    v48 = sub_19166B718();
    v49 = a2;
    v50 = a3;
    v51 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v48, v51);

    a3 = v50;
    a2 = v49;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v52 = v25;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_29;
    }

    v53 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_191673660;
      v57 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v58 = sub_1915F225C();
      *(v56 + 32) = a2;
      *(v56 + 40) = v53;
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      *(v56 + 64) = v58;
      *(v56 + 72) = v45;
      *(v56 + 80) = v47;
      v59 = v84;
      v85 = v84;

      v60 = sub_19166B7A8();
      *(v56 + 136) = v57;
      *(v56 + 144) = v58;
      *(v56 + 112) = v60;
      *(v56 + 120) = v61;
      v85 = v59;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v62 = sub_19166C878();
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 192) = v62;
      *(v56 + 200) = v63;
      v64 = [objc_opt_self() callStackSymbols];
      v65 = sub_19166BA08();

      *(v56 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 232) = v65;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v87;
    }
  }

  else
  {
    v66 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1916729D0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1915F225C();
      *(v67 + 32) = a2;
      *(v67 + 40) = v66;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v45;
      *(v67 + 80) = v47;
      v70 = objc_opt_self();

      v71 = [v70 callStackSymbols];
      v72 = sub_19166BA08();

      *(v67 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 112) = v72;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_191614C40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v83);
  v80 = a1;
  if (v84)
  {
    sub_1915E4370(&v83, &v85);
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE70, &qword_1916738B0);
    v21 = sub_19162CE48(&v87, v19, &v85, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v85);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v83, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v77 = v27 + 16;
    v81 = a3;
    *(v27 + 18) = 1;
    v28 = swift_allocObject();
    v76 = &v74;
    *(v28 + 16) = 1;
    a3 = v81;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v78 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v87) = 0;
    v82 = 0;
    *&v85 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v87;
    *(&v74 - 6) = &v85;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19162FF3C;
    v72 = v30;
    v73 = &v82;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v31 = v74;
      v32 = *(v74 + 72);
      v33 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v83 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v35 = v75;
      v36 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v36, v37);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v31 + 8))(v17, v35);
    }

    else
    {
      *&v83 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v38);
        v72 = &v83;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v40 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v40 = 4;
        }

        else
        {
          v40 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v40);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v41 = v78;

    v22 = v87;
    v25 = v82;
    v24 = v85;
    swift_beginAccess();
    v42 = *(v41 + 18);
    v87 = *(v41 + 16);
    v88 = v42;

    a2 = v79;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return (v87 | (v88 << 16));
  }

LABEL_16:
  v43 = sub_19166C878();
  v45 = v44;
  if (AXShouldLogValidationErrors())
  {
    v46 = sub_19166B718();
    v47 = a2;
    v48 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v46, v48);

    a2 = v47;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v49 = v25;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      goto LABEL_29;
    }

    v50 = a2;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_191673660;
      v54 = MEMORY[0x1E69E6158];
      *(v53 + 56) = MEMORY[0x1E69E6158];
      v55 = sub_1915F225C();
      *(v53 + 32) = v50;
      *(v53 + 40) = a3;
      *(v53 + 96) = v54;
      *(v53 + 104) = v55;
      *(v53 + 64) = v55;
      *(v53 + 72) = v43;
      *(v53 + 80) = v45;
      v56 = v80;
      *&v83 = v80;

      v57 = sub_19166B7A8();
      *(v53 + 136) = v54;
      *(v53 + 144) = v55;
      *(v53 + 112) = v57;
      *(v53 + 120) = v58;
      *&v83 = v56;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v59 = sub_19166C878();
      *(v53 + 216) = v54;
      *(v53 + 224) = v55;
      *(v53 + 192) = v59;
      *(v53 + 200) = v60;
      v61 = [objc_opt_self() callStackSymbols];
      v62 = sub_19166BA08();

      *(v53 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 232) = v62;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return (v87 | (v88 << 16));
    }
  }

  else
  {
    v63 = a2;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v63;
      *(v64 + 40) = a3;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v43;
      *(v64 + 80) = v45;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1916154E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v83);
  v80 = a1;
  if (v84)
  {
    sub_1915E4370(&v83, &v85);
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE60, &qword_1916738A0);
    v21 = sub_19162CE48(&v87, v19, &v85, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v85);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v83, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v77 = v27 + 16;
    v81 = a3;
    *(v27 + 18) = 1;
    v28 = swift_allocObject();
    v76 = &v74;
    *(v28 + 16) = 1;
    a3 = v81;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v78 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v87) = 0;
    v82 = 0;
    *&v85 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v87;
    *(&v74 - 6) = &v85;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19162FF14;
    v72 = v30;
    v73 = &v82;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v31 = v74;
      v32 = *(v74 + 72);
      v33 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v83 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v35 = v75;
      v36 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v36, v37);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v31 + 8))(v17, v35);
    }

    else
    {
      *&v83 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v38);
        v72 = &v83;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v40 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v40 = 4;
        }

        else
        {
          v40 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v40);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v41 = v78;

    v22 = v87;
    v25 = v82;
    v24 = v85;
    swift_beginAccess();
    v42 = *(v41 + 18);
    v87 = *(v41 + 16);
    v88 = v42;

    a2 = v79;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return (v87 | (v88 << 16));
  }

LABEL_16:
  v43 = sub_19166C878();
  v45 = v44;
  if (AXShouldLogValidationErrors())
  {
    v46 = sub_19166B718();
    v47 = a2;
    v48 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v46, v48);

    a2 = v47;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v49 = v25;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      goto LABEL_29;
    }

    v50 = a2;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_191673660;
      v54 = MEMORY[0x1E69E6158];
      *(v53 + 56) = MEMORY[0x1E69E6158];
      v55 = sub_1915F225C();
      *(v53 + 32) = v50;
      *(v53 + 40) = a3;
      *(v53 + 96) = v54;
      *(v53 + 104) = v55;
      *(v53 + 64) = v55;
      *(v53 + 72) = v43;
      *(v53 + 80) = v45;
      v56 = v80;
      *&v83 = v80;

      v57 = sub_19166B7A8();
      *(v53 + 136) = v54;
      *(v53 + 144) = v55;
      *(v53 + 112) = v57;
      *(v53 + 120) = v58;
      *&v83 = v56;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v59 = sub_19166C878();
      *(v53 + 216) = v54;
      *(v53 + 224) = v55;
      *(v53 + 192) = v59;
      *(v53 + 200) = v60;
      v61 = [objc_opt_self() callStackSymbols];
      v62 = sub_19166BA08();

      *(v53 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 232) = v62;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return (v87 | (v88 << 16));
    }
  }

  else
  {
    v63 = a2;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v63;
      *(v64 + 40) = a3;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v43;
      *(v64 + 80) = v45;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_191615D88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v86);
  v84 = a1;
  if (v87)
  {
    sub_1915E4370(&v86, &v88);
    __swift_project_boxed_opaque_existential_1(&v88, v89);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE50, &qword_191673890);
    v21 = sub_19162CE48(&v90, v19, &v88, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v88);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v77 = v13;
    v78 = v12;
    sub_19159E780(&v86, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0x1000000;
    v80 = v27 + 16;
    v28 = swift_allocObject();
    v79 = &v77;
    *(v28 + 16) = 1;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v81 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v90) = 0;
    v85 = 0;
    *&v88 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v77 - 10) = a4;
    *(&v77 - 9) = a2;
    v82 = a2;
    *(&v77 - 8) = a3;
    *(&v77 - 7) = &v90;
    *(&v77 - 6) = &v88;
    *(&v77 - 5) = a5;
    v73 = a6;
    v74 = sub_19162FEEC;
    v75 = v30;
    v76 = &v85;
    Kind = AGTypeGetKind();
    v83 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v32 = v77;
      v33 = *(v77 + 72);
      v34 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v86 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v36 = v78;
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      sub_19166C118();
      (*(v32 + 8))(v17, v36);
    }

    else
    {
      *&v86 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v39);
        v75 = &v86;
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
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      AGTypeApplyFields2();
    }

    v42 = v81;

    v22 = v90;
    v25 = v85;
    v24 = v88;
    swift_beginAccess();
    v43 = *(v42 + 16);
    v44 = *(v42 + 19);
    v91 = *(v42 + 18);
    v90 = v43;
    v92 = v44;

    a2 = v82;
    a3 = v83;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return (v90 | (v91 << 16) | (v92 << 24));
  }

LABEL_16:
  v45 = sub_19166C878();
  v47 = v46;
  if (AXShouldLogValidationErrors())
  {
    v48 = sub_19166B718();
    v49 = a2;
    v50 = a3;
    v51 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v48, v51);

    a3 = v50;
    a2 = v49;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v52 = v25;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_29;
    }

    v53 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_191673660;
      v57 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v58 = sub_1915F225C();
      *(v56 + 32) = a2;
      *(v56 + 40) = v53;
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      *(v56 + 64) = v58;
      *(v56 + 72) = v45;
      *(v56 + 80) = v47;
      v59 = v84;
      *&v86 = v84;

      v60 = sub_19166B7A8();
      *(v56 + 136) = v57;
      *(v56 + 144) = v58;
      *(v56 + 112) = v60;
      *(v56 + 120) = v61;
      *&v86 = v59;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v62 = sub_19166C878();
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 192) = v62;
      *(v56 + 200) = v63;
      v64 = [objc_opt_self() callStackSymbols];
      v65 = sub_19166BA08();

      *(v56 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 232) = v65;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return (v90 | (v91 << 16) | (v92 << 24));
    }
  }

  else
  {
    v66 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1916729D0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1915F225C();
      *(v67 + 32) = a2;
      *(v67 + 40) = v66;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v45;
      *(v67 + 80) = v47;
      v70 = objc_opt_self();

      v71 = [v70 callStackSymbols];
      v72 = sub_19166BA08();

      *(v67 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 112) = v72;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19161663C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v86);
  v84 = a1;
  if (v87)
  {
    sub_1915E4370(&v86, &v88);
    __swift_project_boxed_opaque_existential_1(&v88, v89);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE40, &qword_191673880);
    v21 = sub_19162CE48(&v90, v19, &v88, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v88);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v77 = v13;
    v78 = v12;
    sub_19159E780(&v86, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0x1000000;
    v80 = v27 + 16;
    v28 = swift_allocObject();
    v79 = &v77;
    *(v28 + 16) = 1;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v81 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v90) = 0;
    v85 = 0;
    *&v88 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v77 - 10) = a4;
    *(&v77 - 9) = a2;
    v82 = a2;
    *(&v77 - 8) = a3;
    *(&v77 - 7) = &v90;
    *(&v77 - 6) = &v88;
    *(&v77 - 5) = a5;
    v73 = a6;
    v74 = sub_19162FEC4;
    v75 = v30;
    v76 = &v85;
    Kind = AGTypeGetKind();
    v83 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v32 = v77;
      v33 = *(v77 + 72);
      v34 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v86 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v36 = v78;
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      sub_19166C118();
      (*(v32 + 8))(v17, v36);
    }

    else
    {
      *&v86 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v39);
        v75 = &v86;
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
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      AGTypeApplyFields2();
    }

    v42 = v81;

    v22 = v90;
    v25 = v85;
    v24 = v88;
    swift_beginAccess();
    v43 = *(v42 + 16);
    v44 = *(v42 + 19);
    v91 = *(v42 + 18);
    v90 = v43;
    v92 = v44;

    a2 = v82;
    a3 = v83;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return (v90 | (v91 << 16) | (v92 << 24));
  }

LABEL_16:
  v45 = sub_19166C878();
  v47 = v46;
  if (AXShouldLogValidationErrors())
  {
    v48 = sub_19166B718();
    v49 = a2;
    v50 = a3;
    v51 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v48, v51);

    a3 = v50;
    a2 = v49;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v52 = v25;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_29;
    }

    v53 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_191673660;
      v57 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v58 = sub_1915F225C();
      *(v56 + 32) = a2;
      *(v56 + 40) = v53;
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      *(v56 + 64) = v58;
      *(v56 + 72) = v45;
      *(v56 + 80) = v47;
      v59 = v84;
      *&v86 = v84;

      v60 = sub_19166B7A8();
      *(v56 + 136) = v57;
      *(v56 + 144) = v58;
      *(v56 + 112) = v60;
      *(v56 + 120) = v61;
      *&v86 = v59;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v62 = sub_19166C878();
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 192) = v62;
      *(v56 + 200) = v63;
      v64 = [objc_opt_self() callStackSymbols];
      v65 = sub_19166BA08();

      *(v56 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 232) = v65;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return (v90 | (v91 << 16) | (v92 << 24));
    }
  }

  else
  {
    v66 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1916729D0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1915F225C();
      *(v67 + 32) = a2;
      *(v67 + 40) = v66;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v45;
      *(v67 + 80) = v47;
      v70 = objc_opt_self();

      v71 = [v70 callStackSymbols];
      v72 = sub_19166BA08();

      *(v67 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 112) = v72;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_191616EF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v86);
  v84 = a1;
  if (v87)
  {
    sub_1915E4370(&v86, &v88);
    __swift_project_boxed_opaque_existential_1(&v88, v89);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE30, &qword_191673870);
    v21 = sub_19162CE48(&v90, v19, &v88, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v88);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v77 = v13;
    v78 = v12;
    sub_19159E780(&v86, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v80 = v27 + 16;
    *(v27 + 20) = 256;
    v28 = swift_allocObject();
    v79 = &v77;
    *(v28 + 16) = 1;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v81 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v90) = 0;
    v85 = 0;
    *&v88 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v77 - 10) = a4;
    *(&v77 - 9) = a2;
    v82 = a2;
    *(&v77 - 8) = a3;
    *(&v77 - 7) = &v90;
    *(&v77 - 6) = &v88;
    *(&v77 - 5) = a5;
    v73 = a6;
    v74 = sub_19162FE9C;
    v75 = v30;
    v76 = &v85;
    Kind = AGTypeGetKind();
    v83 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v32 = v77;
      v33 = *(v77 + 72);
      v34 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v86 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v36 = v78;
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      sub_19166C118();
      (*(v32 + 8))(v17, v36);
    }

    else
    {
      *&v86 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v39);
        v75 = &v86;
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
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      AGTypeApplyFields2();
    }

    v42 = v81;

    v22 = v90;
    v25 = v85;
    v24 = v88;
    swift_beginAccess();
    v43 = *(v42 + 16);
    v44 = *(v42 + 21);
    v91 = *(v42 + 20);
    v90 = v43;
    v92 = v44;

    a2 = v82;
    a3 = v83;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
LABEL_31:
    LOBYTE(v86) = v92;
    return (v90 | (v91 << 32) | (v92 << 40));
  }

LABEL_16:
  v45 = sub_19166C878();
  v47 = v46;
  if (AXShouldLogValidationErrors())
  {
    v48 = sub_19166B718();
    v49 = a2;
    v50 = a3;
    v51 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v48, v51);

    a3 = v50;
    a2 = v49;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v52 = v25;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_29;
    }

    v53 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_191673660;
      v57 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v58 = sub_1915F225C();
      *(v56 + 32) = a2;
      *(v56 + 40) = v53;
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      *(v56 + 64) = v58;
      *(v56 + 72) = v45;
      *(v56 + 80) = v47;
      v59 = v84;
      *&v86 = v84;

      v60 = sub_19166B7A8();
      *(v56 + 136) = v57;
      *(v56 + 144) = v58;
      *(v56 + 112) = v60;
      *(v56 + 120) = v61;
      *&v86 = v59;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v62 = sub_19166C878();
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 192) = v62;
      *(v56 + 200) = v63;
      v64 = [objc_opt_self() callStackSymbols];
      v65 = sub_19166BA08();

      *(v56 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 232) = v65;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      goto LABEL_31;
    }
  }

  else
  {
    v66 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1916729D0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1915F225C();
      *(v67 + 32) = a2;
      *(v67 + 40) = v66;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v45;
      *(v67 + 80) = v47;
      v70 = objc_opt_self();

      v71 = [v70 callStackSymbols];
      v72 = sub_19166BA08();

      *(v67 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 112) = v72;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1916177B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v86);
  v84 = a1;
  if (v87)
  {
    sub_1915E4370(&v86, &v88);
    __swift_project_boxed_opaque_existential_1(&v88, v89);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE20, &qword_191673860);
    v21 = sub_19162CE48(&v90, v19, &v88, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v88);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v77 = v13;
    v78 = v12;
    sub_19159E780(&v86, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v80 = v27 + 16;
    *(v27 + 20) = 256;
    v28 = swift_allocObject();
    v79 = &v77;
    *(v28 + 16) = 1;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v81 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v90) = 0;
    v85 = 0;
    *&v88 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v77 - 10) = a4;
    *(&v77 - 9) = a2;
    v82 = a2;
    *(&v77 - 8) = a3;
    *(&v77 - 7) = &v90;
    *(&v77 - 6) = &v88;
    *(&v77 - 5) = a5;
    v73 = a6;
    v74 = sub_19162FE74;
    v75 = v30;
    v76 = &v85;
    Kind = AGTypeGetKind();
    v83 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v32 = v77;
      v33 = *(v77 + 72);
      v34 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v86 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v36 = v78;
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      sub_19166C118();
      (*(v32 + 8))(v17, v36);
    }

    else
    {
      *&v86 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v39);
        v75 = &v86;
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
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      AGTypeApplyFields2();
    }

    v42 = v81;

    v22 = v90;
    v25 = v85;
    v24 = v88;
    swift_beginAccess();
    v43 = *(v42 + 16);
    v44 = *(v42 + 21);
    v91 = *(v42 + 20);
    v90 = v43;
    v92 = v44;

    a2 = v82;
    a3 = v83;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
LABEL_31:
    LOBYTE(v86) = v92;
    return (v90 | (v91 << 32) | (v92 << 40));
  }

LABEL_16:
  v45 = sub_19166C878();
  v47 = v46;
  if (AXShouldLogValidationErrors())
  {
    v48 = sub_19166B718();
    v49 = a2;
    v50 = a3;
    v51 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v48, v51);

    a3 = v50;
    a2 = v49;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v52 = v25;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_29;
    }

    v53 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_191673660;
      v57 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v58 = sub_1915F225C();
      *(v56 + 32) = a2;
      *(v56 + 40) = v53;
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      *(v56 + 64) = v58;
      *(v56 + 72) = v45;
      *(v56 + 80) = v47;
      v59 = v84;
      *&v86 = v84;

      v60 = sub_19166B7A8();
      *(v56 + 136) = v57;
      *(v56 + 144) = v58;
      *(v56 + 112) = v60;
      *(v56 + 120) = v61;
      *&v86 = v59;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v62 = sub_19166C878();
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 192) = v62;
      *(v56 + 200) = v63;
      v64 = [objc_opt_self() callStackSymbols];
      v65 = sub_19166BA08();

      *(v56 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 232) = v65;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      goto LABEL_31;
    }
  }

  else
  {
    v66 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1916729D0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1915F225C();
      *(v67 + 32) = a2;
      *(v67 + 40) = v66;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v45;
      *(v67 + 80) = v47;
      v70 = objc_opt_self();

      v71 = [v70 callStackSymbols];
      v72 = sub_19166BA08();

      *(v67 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 112) = v72;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_191618070(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v87);
  v84 = a1;
  if (v88)
  {
    sub_1915E4370(&v87, &v89);
    __swift_project_boxed_opaque_existential_1(&v89, v90);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE10, &qword_191673850);
    v21 = sub_19162CE48(&v87, v19, &v89, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v89);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v77 = v13;
    v78 = v12;
    sub_19159E780(&v87, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v80 = v27 + 16;
    *(v27 + 24) = 256;
    v28 = swift_allocObject();
    v79 = &v77;
    *(v28 + 16) = 1;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v81 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v85) = 0;
    v86 = 0;
    *&v89 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v77 - 10) = a4;
    *(&v77 - 9) = a2;
    v82 = a2;
    *(&v77 - 8) = a3;
    *(&v77 - 7) = &v85;
    *(&v77 - 6) = &v89;
    *(&v77 - 5) = a5;
    v73 = a6;
    v74 = sub_19162FE4C;
    v75 = v30;
    v76 = &v86;
    Kind = AGTypeGetKind();
    v83 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v32 = v77;
      v33 = *(v77 + 72);
      v34 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v87 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v36 = v78;
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      sub_19166C118();
      (*(v32 + 8))(v17, v36);
    }

    else
    {
      *&v87 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v39);
        v75 = &v87;
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
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      AGTypeApplyFields2();
    }

    v42 = v81;

    v22 = v85;
    v25 = v86;
    v24 = v89;
    swift_beginAccess();
    v43 = *(v42 + 24);
    v44 = *(v42 + 25);
    *&v87 = *(v42 + 16);
    BYTE8(v87) = v43;
    BYTE9(v87) = v44;

    a2 = v82;
    a3 = v83;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v87;
  }

LABEL_16:
  v45 = sub_19166C878();
  v47 = v46;
  if (AXShouldLogValidationErrors())
  {
    v48 = sub_19166B718();
    v49 = a2;
    v50 = a3;
    v51 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v48, v51);

    a3 = v50;
    a2 = v49;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v52 = v25;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_29;
    }

    v53 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_191673660;
      v57 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v58 = sub_1915F225C();
      *(v56 + 32) = a2;
      *(v56 + 40) = v53;
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      *(v56 + 64) = v58;
      *(v56 + 72) = v45;
      *(v56 + 80) = v47;
      v59 = v84;
      v85 = v84;

      v60 = sub_19166B7A8();
      *(v56 + 136) = v57;
      *(v56 + 144) = v58;
      *(v56 + 112) = v60;
      *(v56 + 120) = v61;
      v85 = v59;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v62 = sub_19166C878();
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 192) = v62;
      *(v56 + 200) = v63;
      v64 = [objc_opt_self() callStackSymbols];
      v65 = sub_19166BA08();

      *(v56 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 232) = v65;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v87;
    }
  }

  else
  {
    v66 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1916729D0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1915F225C();
      *(v67 + 32) = a2;
      *(v67 + 40) = v66;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v45;
      *(v67 + 80) = v47;
      v70 = objc_opt_self();

      v71 = [v70 callStackSymbols];
      v72 = sub_19166BA08();

      *(v67 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 112) = v72;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_191618924(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v87);
  v84 = a1;
  if (v88)
  {
    sub_1915E4370(&v87, &v89);
    __swift_project_boxed_opaque_existential_1(&v89, v90);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFE00, &qword_191673840);
    v21 = sub_19162CE48(&v87, v19, &v89, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v89);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v77 = v13;
    v78 = v12;
    sub_19159E780(&v87, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v80 = v27 + 16;
    *(v27 + 24) = 256;
    v28 = swift_allocObject();
    v79 = &v77;
    *(v28 + 16) = 1;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v81 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v85) = 0;
    v86 = 0;
    *&v89 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v77 - 10) = a4;
    *(&v77 - 9) = a2;
    v82 = a2;
    *(&v77 - 8) = a3;
    *(&v77 - 7) = &v85;
    *(&v77 - 6) = &v89;
    *(&v77 - 5) = a5;
    v73 = a6;
    v74 = sub_19162FE24;
    v75 = v30;
    v76 = &v86;
    Kind = AGTypeGetKind();
    v83 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v32 = v77;
      v33 = *(v77 + 72);
      v34 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v87 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v36 = v78;
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      sub_19166C118();
      (*(v32 + 8))(v17, v36);
    }

    else
    {
      *&v87 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v39);
        v75 = &v87;
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
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      AGTypeApplyFields2();
    }

    v42 = v81;

    v22 = v85;
    v25 = v86;
    v24 = v89;
    swift_beginAccess();
    v43 = *(v42 + 24);
    v44 = *(v42 + 25);
    *&v87 = *(v42 + 16);
    BYTE8(v87) = v43;
    BYTE9(v87) = v44;

    a2 = v82;
    a3 = v83;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v87;
  }

LABEL_16:
  v45 = sub_19166C878();
  v47 = v46;
  if (AXShouldLogValidationErrors())
  {
    v48 = sub_19166B718();
    v49 = a2;
    v50 = a3;
    v51 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v48, v51);

    a3 = v50;
    a2 = v49;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v52 = v25;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_29;
    }

    v53 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_191673660;
      v57 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v58 = sub_1915F225C();
      *(v56 + 32) = a2;
      *(v56 + 40) = v53;
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      *(v56 + 64) = v58;
      *(v56 + 72) = v45;
      *(v56 + 80) = v47;
      v59 = v84;
      v85 = v84;

      v60 = sub_19166B7A8();
      *(v56 + 136) = v57;
      *(v56 + 144) = v58;
      *(v56 + 112) = v60;
      *(v56 + 120) = v61;
      v85 = v59;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v62 = sub_19166C878();
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 192) = v62;
      *(v56 + 200) = v63;
      v64 = [objc_opt_self() callStackSymbols];
      v65 = sub_19166BA08();

      *(v56 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 232) = v65;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v87;
    }
  }

  else
  {
    v66 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1916729D0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1915F225C();
      *(v67 + 32) = a2;
      *(v67 + 40) = v66;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v45;
      *(v67 + 80) = v47;
      v70 = objc_opt_self();

      v71 = [v70 callStackSymbols];
      v72 = sub_19166BA08();

      *(v67 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 112) = v72;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1916191D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v86);
  v84 = a1;
  if (v87)
  {
    sub_1915E4370(&v86, &v88);
    __swift_project_boxed_opaque_existential_1(&v88, v89);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFDF0, &qword_191673830);
    v21 = sub_19162CE48(&v90, v19, &v88, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v88);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v77 = v13;
    v78 = v12;
    sub_19159E780(&v86, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v80 = v27 + 16;
    *(v27 + 20) = 256;
    v28 = swift_allocObject();
    v79 = &v77;
    *(v28 + 16) = 1;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v81 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v90) = 0;
    v85 = 0;
    *&v88 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v77 - 10) = a4;
    *(&v77 - 9) = a2;
    v82 = a2;
    *(&v77 - 8) = a3;
    *(&v77 - 7) = &v90;
    *(&v77 - 6) = &v88;
    *(&v77 - 5) = a5;
    v73 = a6;
    v74 = sub_19162FDFC;
    v75 = v30;
    v76 = &v85;
    Kind = AGTypeGetKind();
    v83 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v32 = v77;
      v33 = *(v77 + 72);
      v34 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v86 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v36 = v78;
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      sub_19166C118();
      (*(v32 + 8))(v17, v36);
    }

    else
    {
      *&v86 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v39);
        v75 = &v86;
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
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      AGTypeApplyFields2();
    }

    v42 = v81;

    v22 = v90;
    v25 = v85;
    v24 = v88;
    swift_beginAccess();
    v43 = *(v42 + 16);
    v44 = *(v42 + 21);
    v91 = *(v42 + 20);
    v90 = v43;
    v92 = v44;

    a2 = v82;
    a3 = v83;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
LABEL_31:
    LOBYTE(v86) = v92;
    return (v90 | (v91 << 32) | (v92 << 40));
  }

LABEL_16:
  v45 = sub_19166C878();
  v47 = v46;
  if (AXShouldLogValidationErrors())
  {
    v48 = sub_19166B718();
    v49 = a2;
    v50 = a3;
    v51 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v48, v51);

    a3 = v50;
    a2 = v49;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v52 = v25;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_29;
    }

    v53 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_191673660;
      v57 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v58 = sub_1915F225C();
      *(v56 + 32) = a2;
      *(v56 + 40) = v53;
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      *(v56 + 64) = v58;
      *(v56 + 72) = v45;
      *(v56 + 80) = v47;
      v59 = v84;
      *&v86 = v84;

      v60 = sub_19166B7A8();
      *(v56 + 136) = v57;
      *(v56 + 144) = v58;
      *(v56 + 112) = v60;
      *(v56 + 120) = v61;
      *&v86 = v59;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v62 = sub_19166C878();
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 192) = v62;
      *(v56 + 200) = v63;
      v64 = [objc_opt_self() callStackSymbols];
      v65 = sub_19166BA08();

      *(v56 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 232) = v65;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      goto LABEL_31;
    }
  }

  else
  {
    v66 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1916729D0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1915F225C();
      *(v67 + 32) = a2;
      *(v67 + 40) = v66;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v45;
      *(v67 + 80) = v47;
      v70 = objc_opt_self();

      v71 = [v70 callStackSymbols];
      v72 = sub_19166BA08();

      *(v67 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 112) = v72;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_191619A98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v87);
  v84 = a1;
  if (v88)
  {
    sub_1915E4370(&v87, &v89);
    __swift_project_boxed_opaque_existential_1(&v89, v90);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFDE0, &qword_191673820);
    v21 = sub_19162CE48(&v87, v19, &v89, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v89);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v77 = v13;
    v78 = v12;
    sub_19159E780(&v87, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v80 = v27 + 16;
    *(v27 + 24) = 256;
    v28 = swift_allocObject();
    v79 = &v77;
    *(v28 + 16) = 1;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v81 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v85) = 0;
    v86 = 0;
    *&v89 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v77 - 10) = a4;
    *(&v77 - 9) = a2;
    v82 = a2;
    *(&v77 - 8) = a3;
    *(&v77 - 7) = &v85;
    *(&v77 - 6) = &v89;
    *(&v77 - 5) = a5;
    v73 = a6;
    v74 = sub_19162FDD4;
    v75 = v30;
    v76 = &v86;
    Kind = AGTypeGetKind();
    v83 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v32 = v77;
      v33 = *(v77 + 72);
      v34 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v87 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v36 = v78;
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      sub_19166C118();
      (*(v32 + 8))(v17, v36);
    }

    else
    {
      *&v87 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v39);
        v75 = &v87;
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
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      AGTypeApplyFields2();
    }

    v42 = v81;

    v22 = v85;
    v25 = v86;
    v24 = v89;
    swift_beginAccess();
    v43 = *(v42 + 24);
    v44 = *(v42 + 25);
    *&v87 = *(v42 + 16);
    BYTE8(v87) = v43;
    BYTE9(v87) = v44;

    a2 = v82;
    a3 = v83;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v87;
  }

LABEL_16:
  v45 = sub_19166C878();
  v47 = v46;
  if (AXShouldLogValidationErrors())
  {
    v48 = sub_19166B718();
    v49 = a2;
    v50 = a3;
    v51 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v48, v51);

    a3 = v50;
    a2 = v49;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v52 = v25;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_29;
    }

    v53 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_191673660;
      v57 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v58 = sub_1915F225C();
      *(v56 + 32) = a2;
      *(v56 + 40) = v53;
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      *(v56 + 64) = v58;
      *(v56 + 72) = v45;
      *(v56 + 80) = v47;
      v59 = v84;
      v85 = v84;

      v60 = sub_19166B7A8();
      *(v56 + 136) = v57;
      *(v56 + 144) = v58;
      *(v56 + 112) = v60;
      *(v56 + 120) = v61;
      v85 = v59;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v62 = sub_19166C878();
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 192) = v62;
      *(v56 + 200) = v63;
      v64 = [objc_opt_self() callStackSymbols];
      v65 = sub_19166BA08();

      *(v56 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 232) = v65;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v87;
    }
  }

  else
  {
    v66 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1916729D0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1915F225C();
      *(v67 + 32) = a2;
      *(v67 + 40) = v66;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v45;
      *(v67 + 80) = v47;
      v70 = objc_opt_self();

      v71 = [v70 callStackSymbols];
      v72 = sub_19166BA08();

      *(v67 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 112) = v72;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19161A34C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v87);
  v84 = a1;
  if (v88)
  {
    sub_1915E4370(&v87, &v89);
    __swift_project_boxed_opaque_existential_1(&v89, v90);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFDD0, &qword_191673810);
    v21 = sub_19162CE48(&v87, v19, &v89, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v89);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v77 = v13;
    v78 = v12;
    sub_19159E780(&v87, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v80 = v27 + 16;
    *(v27 + 24) = 256;
    v28 = swift_allocObject();
    v79 = &v77;
    *(v28 + 16) = 1;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v81 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v85) = 0;
    v86 = 0;
    *&v89 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v77 - 10) = a4;
    *(&v77 - 9) = a2;
    v82 = a2;
    *(&v77 - 8) = a3;
    *(&v77 - 7) = &v85;
    *(&v77 - 6) = &v89;
    *(&v77 - 5) = a5;
    v73 = a6;
    v74 = sub_19162FDAC;
    v75 = v30;
    v76 = &v86;
    Kind = AGTypeGetKind();
    v83 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v32 = v77;
      v33 = *(v77 + 72);
      v34 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v87 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v36 = v78;
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      sub_19166C118();
      (*(v32 + 8))(v17, v36);
    }

    else
    {
      *&v87 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v39);
        v75 = &v87;
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
      v75 = sub_19163059C;
      v76 = &v77 - 12;
      AGTypeApplyFields2();
    }

    v42 = v81;

    v22 = v85;
    v25 = v86;
    v24 = v89;
    swift_beginAccess();
    v43 = *(v42 + 24);
    v44 = *(v42 + 25);
    *&v87 = *(v42 + 16);
    BYTE8(v87) = v43;
    BYTE9(v87) = v44;

    a2 = v82;
    a3 = v83;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v87;
  }

LABEL_16:
  v45 = sub_19166C878();
  v47 = v46;
  if (AXShouldLogValidationErrors())
  {
    v48 = sub_19166B718();
    v49 = a2;
    v50 = a3;
    v51 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v48, v51);

    a3 = v50;
    a2 = v49;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v52 = v25;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_29;
    }

    v53 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_191673660;
      v57 = MEMORY[0x1E69E6158];
      *(v56 + 56) = MEMORY[0x1E69E6158];
      v58 = sub_1915F225C();
      *(v56 + 32) = a2;
      *(v56 + 40) = v53;
      *(v56 + 96) = v57;
      *(v56 + 104) = v58;
      *(v56 + 64) = v58;
      *(v56 + 72) = v45;
      *(v56 + 80) = v47;
      v59 = v84;
      v85 = v84;

      v60 = sub_19166B7A8();
      *(v56 + 136) = v57;
      *(v56 + 144) = v58;
      *(v56 + 112) = v60;
      *(v56 + 120) = v61;
      v85 = v59;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v62 = sub_19166C878();
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 192) = v62;
      *(v56 + 200) = v63;
      v64 = [objc_opt_self() callStackSymbols];
      v65 = sub_19166BA08();

      *(v56 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v56 + 232) = v65;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v87;
    }
  }

  else
  {
    v66 = a3;
    result = AXLogValidations();
    if (result)
    {
      v55 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1916729D0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1915F225C();
      *(v67 + 32) = a2;
      *(v67 + 40) = v66;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v45;
      *(v67 + 80) = v47;
      v70 = objc_opt_self();

      v71 = [v70 callStackSymbols];
      v72 = sub_19166BA08();

      *(v67 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 112) = v72;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19161AC00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v87);
  if (v90)
  {
    sub_1915E4370(&v87, &v91);
    __swift_project_boxed_opaque_existential_1(&v91, v92);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFDC0, &qword_191673800);
    v21 = sub_19162CE48(&v87, v19, &v91, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v91);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v78 = v13;
    sub_19159E780(&v87, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v81 = v27 + 16;
    *(v27 + 24) = 0;
    *(v27 + 32) = 256;
    v28 = swift_allocObject();
    v80 = &v77;
    *(v28 + 16) = 1;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    *(v28 + 56) = v27;
    LOBYTE(v85) = 0;
    v86 = 0;
    *&v91 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    v79 = &v77 - 12;
    *(&v77 - 10) = a4;
    *(&v77 - 9) = a2;
    v83 = a2;
    *(&v77 - 8) = a3;
    *(&v77 - 7) = &v85;
    *(&v77 - 6) = &v91;
    *(&v77 - 5) = a5;
    v73 = v31;
    v74 = sub_19162FD84;
    v75 = v30;
    v76 = &v86;
    Kind = AGTypeGetKind();
    v84 = a3;
    v82 = a1;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v33 = v78;
      v34 = *(v78 + 72);
      v35 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v87 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v75 = sub_19163059C;
      v76 = v79;
      sub_19166C118();
      (*(v33 + 8))(v17, v12);
    }

    else
    {
      v39 = v79;
      *&v87 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v40);
        v75 = &v87;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v42 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v42 = 4;
        }

        else
        {
          v42 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v42);
      v75 = sub_19163059C;
      v76 = v39;
      AGTypeApplyFields2();
    }

    v22 = v85;
    v25 = v86;
    v24 = v91;
    swift_beginAccess();
    v43 = *(v27 + 32);
    v44 = *(v27 + 33);
    v87 = *(v27 + 16);
    v88 = v43;
    v89 = v44;

    a2 = v83;
    a3 = v84;
    a1 = v82;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v87;
  }

LABEL_16:
  v45 = sub_19166C878();
  v47 = v46;
  if (AXShouldLogValidationErrors())
  {
    v48 = sub_19166B718();
    v49 = a2;
    v50 = a3;
    v51 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v48, v51);

    a3 = v50;
    a2 = v49;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v52 = v25;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_29;
    }

    v53 = a1;
    v54 = a3;
    result = AXLogValidations();
    if (result)
    {
      v56 = result;
      LODWORD(v83) = sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_191673660;
      v58 = MEMORY[0x1E69E6158];
      *(v57 + 56) = MEMORY[0x1E69E6158];
      v59 = sub_1915F225C();
      *(v57 + 32) = a2;
      *(v57 + 40) = v54;
      *(v57 + 96) = v58;
      *(v57 + 104) = v59;
      *(v57 + 64) = v59;
      *(v57 + 72) = v45;
      *(v57 + 80) = v47;
      v85 = v53;

      v60 = sub_19166B7A8();
      *(v57 + 136) = v58;
      *(v57 + 144) = v59;
      *(v57 + 112) = v60;
      *(v57 + 120) = v61;
      v85 = v53;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v62 = sub_19166C878();
      *(v57 + 216) = v58;
      *(v57 + 224) = v59;
      *(v57 + 192) = v62;
      *(v57 + 200) = v63;
      v64 = [objc_opt_self() callStackSymbols];
      v65 = sub_19166BA08();

      *(v57 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v57 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v57 + 232) = v65;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v87;
    }
  }

  else
  {
    v66 = a3;
    result = AXLogValidations();
    if (result)
    {
      v56 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1916729D0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1915F225C();
      *(v67 + 32) = a2;
      *(v67 + 40) = v66;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v45;
      *(v67 + 80) = v47;
      v70 = objc_opt_self();

      v71 = [v70 callStackSymbols];
      v72 = sub_19166BA08();

      *(v67 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 112) = v72;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19161B4B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v87);
  if (v90)
  {
    sub_1915E4370(&v87, &v91);
    __swift_project_boxed_opaque_existential_1(&v91, v92);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFDB0, &qword_1916737F0);
    v21 = sub_19162CE48(&v87, v19, &v91, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v91);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v78 = v13;
    sub_19159E780(&v87, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v81 = v27 + 16;
    *(v27 + 24) = 0;
    *(v27 + 32) = 256;
    v28 = swift_allocObject();
    v80 = &v77;
    *(v28 + 16) = 1;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    *(v28 + 56) = v27;
    LOBYTE(v85) = 0;
    v86 = 0;
    *&v91 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    v79 = &v77 - 12;
    *(&v77 - 10) = a4;
    *(&v77 - 9) = a2;
    v83 = a2;
    *(&v77 - 8) = a3;
    *(&v77 - 7) = &v85;
    *(&v77 - 6) = &v91;
    *(&v77 - 5) = a5;
    v73 = v31;
    v74 = sub_19162FD14;
    v75 = v30;
    v76 = &v86;
    Kind = AGTypeGetKind();
    v84 = a3;
    v82 = a1;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v33 = v78;
      v34 = *(v78 + 72);
      v35 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v87 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v75 = sub_19163059C;
      v76 = v79;
      sub_19166C118();
      (*(v33 + 8))(v17, v12);
    }

    else
    {
      v39 = v79;
      *&v87 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v40);
        v75 = &v87;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v42 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v42 = 4;
        }

        else
        {
          v42 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v42);
      v75 = sub_19163059C;
      v76 = v39;
      AGTypeApplyFields2();
    }

    v22 = v85;
    v25 = v86;
    v24 = v91;
    swift_beginAccess();
    v43 = *(v27 + 32);
    v44 = *(v27 + 33);
    v87 = *(v27 + 16);
    v88 = v43;
    v89 = v44;

    a2 = v83;
    a3 = v84;
    a1 = v82;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v87;
  }

LABEL_16:
  v45 = sub_19166C878();
  v47 = v46;
  if (AXShouldLogValidationErrors())
  {
    v48 = sub_19166B718();
    v49 = a2;
    v50 = a3;
    v51 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v48, v51);

    a3 = v50;
    a2 = v49;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v52 = v25;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      goto LABEL_29;
    }

    v53 = a1;
    v54 = a3;
    result = AXLogValidations();
    if (result)
    {
      v56 = result;
      LODWORD(v83) = sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_191673660;
      v58 = MEMORY[0x1E69E6158];
      *(v57 + 56) = MEMORY[0x1E69E6158];
      v59 = sub_1915F225C();
      *(v57 + 32) = a2;
      *(v57 + 40) = v54;
      *(v57 + 96) = v58;
      *(v57 + 104) = v59;
      *(v57 + 64) = v59;
      *(v57 + 72) = v45;
      *(v57 + 80) = v47;
      v85 = v53;

      v60 = sub_19166B7A8();
      *(v57 + 136) = v58;
      *(v57 + 144) = v59;
      *(v57 + 112) = v60;
      *(v57 + 120) = v61;
      v85 = v53;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v62 = sub_19166C878();
      *(v57 + 216) = v58;
      *(v57 + 224) = v59;
      *(v57 + 192) = v62;
      *(v57 + 200) = v63;
      v64 = [objc_opt_self() callStackSymbols];
      v65 = sub_19166BA08();

      *(v57 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v57 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v57 + 232) = v65;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v87;
    }
  }

  else
  {
    v66 = a3;
    result = AXLogValidations();
    if (result)
    {
      v56 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1916729D0;
      v68 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      v69 = sub_1915F225C();
      *(v67 + 32) = a2;
      *(v67 + 40) = v66;
      *(v67 + 96) = v68;
      *(v67 + 104) = v69;
      *(v67 + 64) = v69;
      *(v67 + 72) = v45;
      *(v67 + 80) = v47;
      v70 = objc_opt_self();

      v71 = [v70 callStackSymbols];
      v72 = sub_19166BA08();

      *(v67 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v67 + 112) = v72;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19161BD70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_19166C208();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v95);
  v90 = a3;
  if (*(&v96 + 1))
  {
    sub_1915E4370(&v95, &v93);
    __swift_project_boxed_opaque_existential_1(&v93, v94);
    DynamicType = swift_getDynamicType();
    v21 = sub_191622EE0(DynamicType);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFDA0, &qword_1916737E0);
    v23 = sub_19162CE48(&v95, v21, &v93, v21, a4, a1, a2, a3, a5, a6, v22, v21);
    v24 = v23;
    v26 = v25;
    v27 = (v23 >> 8) & 1;
    result = __swift_destroy_boxed_opaque_existential_1(&v93);
    v29 = a1;
    if ((v24 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v84 = v15;
    v89 = a7;
    sub_19159E780(&v95, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v31 = swift_allocObject();
    *(v31 + 16) = 0u;
    v87 = v31 + 16;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 256;
    v32 = swift_allocObject();
    v86 = &v83;
    *(v32 + 16) = 1;
    *(v32 + 24) = a1;
    *(v32 + 32) = a2;
    *(v32 + 40) = a3;
    *(v32 + 48) = a1;
    *(v32 + 56) = v31;
    LOBYTE(v91) = 0;
    v92 = 0;
    *&v95 = 0;
    v34 = MEMORY[0x1EEE9AC00](v32, v33);
    v85 = &v83 - 12;
    *(&v83 - 10) = a4;
    *(&v83 - 9) = v35;
    v88 = v35;
    *(&v83 - 8) = a3;
    *(&v83 - 7) = &v91;
    *(&v83 - 6) = &v95;
    *(&v83 - 5) = a5;
    v79 = a6;
    v80 = sub_19162FCFC;
    v81 = v34;
    v82 = &v92;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v36 = v84;
      v37 = *(v84 + 72);
      v38 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v93 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v40 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v40, v41);
      v81 = sub_19163059C;
      v82 = v85;
      sub_19166C118();
      (*(v36 + 8))(v19, v14);
      v29 = a1;
    }

    else
    {
      v42 = v85;
      *&v93 = ObjectType;
      swift_unknownObjectRetain();

      v29 = a1;
      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v43);
        v81 = &v93;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v45 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v45 = 4;
        }

        else
        {
          v45 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v45);
      v81 = sub_19163059C;
      v82 = v42;
      AGTypeApplyFields2();
    }

    v24 = v91;
    v27 = v92;
    v26 = v95;
    swift_beginAccess();
    v46 = *(v31 + 48);
    v47 = *(v31 + 49);
    v48 = *(v31 + 32);
    v95 = *(v31 + 16);
    v96 = v48;
    v97 = v46;
    v98 = v47;

    a2 = v88;
    a7 = v89;
    if ((v24 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v27)
  {
LABEL_31:
    v76 = v97;
    v77 = v98;
    v78 = v96;
    *a7 = v95;
    *(a7 + 16) = v78;
    *(a7 + 32) = v76;
    *(a7 + 33) = v77;
    return result;
  }

LABEL_16:
  v49 = sub_19166C878();
  v51 = v50;
  if (AXShouldLogValidationErrors())
  {
    v52 = sub_19166B718();
    v53 = a7;
    v54 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v52, v54);

    a7 = v53;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v24)
  {
    if (v26)
    {
      v55 = v27;
    }

    else
    {
      v55 = 1;
    }

    if (v55)
    {
      goto LABEL_29;
    }

    v56 = v29;
    v57 = a7;
    result = AXLogValidations();
    if (result)
    {
      v58 = result;
      LODWORD(v89) = sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_191673660;
      v60 = MEMORY[0x1E69E6158];
      *(v59 + 56) = MEMORY[0x1E69E6158];
      v61 = sub_1915F225C();
      v62 = v90;
      *(v59 + 32) = a2;
      *(v59 + 40) = v62;
      *(v59 + 96) = v60;
      *(v59 + 104) = v61;
      *(v59 + 64) = v61;
      *(v59 + 72) = v49;
      *(v59 + 80) = v51;
      v91 = v56;

      v63 = sub_19166B7A8();
      *(v59 + 136) = v60;
      *(v59 + 144) = v61;
      *(v59 + 112) = v63;
      *(v59 + 120) = v64;
      v91 = v56;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v65 = sub_19166C878();
      *(v59 + 216) = v60;
      *(v59 + 224) = v61;
      *(v59 + 192) = v65;
      *(v59 + 200) = v66;
      v67 = [objc_opt_self() callStackSymbols];
      v68 = sub_19166BA08();

      *(v59 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v59 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v59 + 232) = v68;
LABEL_28:
      sub_19166B518();

      a7 = v57;
LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      goto LABEL_31;
    }
  }

  else
  {
    v69 = a2;
    v57 = a7;
    result = AXLogValidations();
    if (result)
    {
      v58 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1916729D0;
      v71 = MEMORY[0x1E69E6158];
      *(v70 + 56) = MEMORY[0x1E69E6158];
      v72 = sub_1915F225C();
      *(v70 + 32) = v69;
      *(v70 + 40) = v90;
      *(v70 + 96) = v71;
      *(v70 + 104) = v72;
      *(v70 + 64) = v72;
      *(v70 + 72) = v49;
      *(v70 + 80) = v51;
      v73 = objc_opt_self();

      v74 = [v73 callStackSymbols];
      v75 = sub_19166BA08();

      *(v70 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v70 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v70 + 112) = v75;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19161C644(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v86);
  v83 = a1;
  if (v87)
  {
    sub_1915E4370(&v86, &v88);
    __swift_project_boxed_opaque_existential_1(&v88, v89);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4D0, &unk_191672480);
    v21 = sub_19162CE48(&v86, v19, &v88, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v88);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v76 = v13;
    v77 = v12;
    sub_19159E780(&v86, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_191673670;
    v79 = v27 + 16;
    v28 = swift_allocObject();
    v78 = &v76;
    *(v28 + 16) = 1;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v80 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v84) = 0;
    v85 = 0;
    *&v88 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v76 - 10) = a4;
    *(&v76 - 9) = a2;
    v81 = a2;
    *(&v76 - 8) = a3;
    *(&v76 - 7) = &v84;
    *(&v76 - 6) = &v88;
    *(&v76 - 5) = a5;
    v72 = a6;
    v73 = sub_19162FC80;
    v74 = v30;
    v75 = &v85;
    Kind = AGTypeGetKind();
    v82 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v32 = v76;
      v33 = *(v76 + 72);
      v34 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v86 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v36 = v77;
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v74 = sub_19163059C;
      v75 = &v76 - 12;
      sub_19166C118();
      (*(v32 + 8))(v17, v36);
    }

    else
    {
      *&v86 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v39);
        v74 = &v86;
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
      v74 = sub_19163059C;
      v75 = &v76 - 12;
      AGTypeApplyFields2();
    }

    v42 = v80;

    v22 = v84;
    v25 = v85;
    v24 = v88;
    swift_beginAccess();
    v43 = *(v42 + 24);
    *&v86 = *(v42 + 16);
    *(&v86 + 1) = v43;
    sub_19162FCD4(v86, v43);

    a2 = v81;
    a3 = v82;
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v86;
  }

LABEL_16:
  v44 = sub_19166C878();
  v46 = v45;
  if (AXShouldLogValidationErrors())
  {
    v47 = sub_19166B718();
    v48 = a2;
    v49 = a3;
    v50 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v47, v50);

    a3 = v49;
    a2 = v48;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v51 = v25;
    }

    else
    {
      v51 = 1;
    }

    if (v51)
    {
      goto LABEL_29;
    }

    v52 = a3;
    result = AXLogValidations();
    if (result)
    {
      v54 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_191673660;
      v56 = MEMORY[0x1E69E6158];
      *(v55 + 56) = MEMORY[0x1E69E6158];
      v57 = sub_1915F225C();
      *(v55 + 32) = a2;
      *(v55 + 40) = v52;
      *(v55 + 96) = v56;
      *(v55 + 104) = v57;
      *(v55 + 64) = v57;
      *(v55 + 72) = v44;
      *(v55 + 80) = v46;
      v58 = v83;
      v84 = v83;

      v59 = sub_19166B7A8();
      *(v55 + 136) = v56;
      *(v55 + 144) = v57;
      *(v55 + 112) = v59;
      *(v55 + 120) = v60;
      v84 = v58;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v61 = sub_19166C878();
      *(v55 + 216) = v56;
      *(v55 + 224) = v57;
      *(v55 + 192) = v61;
      *(v55 + 200) = v62;
      v63 = [objc_opt_self() callStackSymbols];
      v64 = sub_19166BA08();

      *(v55 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v55 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v55 + 232) = v64;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v86;
    }
  }

  else
  {
    v65 = a3;
    result = AXLogValidations();
    if (result)
    {
      v54 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1916729D0;
      v67 = MEMORY[0x1E69E6158];
      *(v66 + 56) = MEMORY[0x1E69E6158];
      v68 = sub_1915F225C();
      *(v66 + 32) = a2;
      *(v66 + 40) = v65;
      *(v66 + 96) = v67;
      *(v66 + 104) = v68;
      *(v66 + 64) = v68;
      *(v66 + 72) = v44;
      *(v66 + 80) = v46;
      v69 = objc_opt_self();

      v70 = [v69 callStackSymbols];
      v71 = sub_19166BA08();

      *(v66 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v66 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v66 + 112) = v71;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19161CEE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v85)
  {
    sub_1915E4370(&v84, &v86);
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD98, &unk_1916737D0);
    v21 = sub_19162CE48(&v84, v19, &v86, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    v81 = a3;
    *(v27 + 16) = 1;
    v77 = v27 + 16;
    v28 = swift_allocObject();
    v76 = &v74;
    *(v28 + 16) = 1;
    a3 = v81;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v78 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v86 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v86;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19162FC38;
    v72 = v30;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v31 = v74;
      v32 = *(v74 + 72);
      v33 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v35 = v75;
      v36 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v36, v37);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v31 + 8))(v17, v35);
      a2 = v79;
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v38);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      a2 = v79;
      if (isClassType)
      {
        v40 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v40 = 4;
        }

        else
        {
          v40 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v40);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v41 = v78;

    v22 = v82;
    v25 = v83;
    v24 = v86;
    swift_beginAccess();
    *&v84 = *(v41 + 16);
    sub_19162FC60(v84);

    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v84;
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = a3;
    v48 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v48);

    a3 = v47;
    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v49 = v25;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      goto LABEL_29;
    }

    v50 = a3;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_191673660;
      v54 = MEMORY[0x1E69E6158];
      *(v53 + 56) = MEMORY[0x1E69E6158];
      v55 = sub_1915F225C();
      *(v53 + 32) = a2;
      *(v53 + 40) = v50;
      *(v53 + 96) = v54;
      *(v53 + 104) = v55;
      *(v53 + 64) = v55;
      *(v53 + 72) = v42;
      *(v53 + 80) = v44;
      v56 = v80;
      v82 = v80;

      v57 = sub_19166B7A8();
      *(v53 + 136) = v54;
      *(v53 + 144) = v55;
      *(v53 + 112) = v57;
      *(v53 + 120) = v58;
      v82 = v56;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v59 = sub_19166C878();
      *(v53 + 216) = v54;
      *(v53 + 224) = v55;
      *(v53 + 192) = v59;
      *(v53 + 200) = v60;
      v61 = [objc_opt_self() callStackSymbols];
      v62 = sub_19166BA08();

      *(v53 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 232) = v62;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = a2;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19161D780(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v85)
  {
    sub_1915E4370(&v84, &v86);
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD90, &qword_1916737C8);
    v21 = sub_19162CE48(&v84, v19, &v86, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    v81 = a3;
    *(v27 + 16) = 1;
    v77 = v27 + 16;
    v28 = swift_allocObject();
    v76 = &v74;
    *(v28 + 16) = 1;
    a3 = v81;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v78 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v86 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v86;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19162FC10;
    v72 = v30;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v31 = v74;
      v32 = *(v74 + 72);
      v33 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v35 = v75;
      v36 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v36, v37);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v31 + 8))(v17, v35);
      a2 = v79;
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v38);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      a2 = v79;
      if (isClassType)
      {
        v40 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v40 = 4;
        }

        else
        {
          v40 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v40);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v41 = v78;

    v22 = v82;
    v25 = v83;
    v24 = v86;
    swift_beginAccess();
    *&v84 = *(v41 + 16);
    sub_1915A2E4C(v84);

    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v84;
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = a3;
    v48 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v48);

    a3 = v47;
    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v49 = v25;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      goto LABEL_29;
    }

    v50 = a3;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_191673660;
      v54 = MEMORY[0x1E69E6158];
      *(v53 + 56) = MEMORY[0x1E69E6158];
      v55 = sub_1915F225C();
      *(v53 + 32) = a2;
      *(v53 + 40) = v50;
      *(v53 + 96) = v54;
      *(v53 + 104) = v55;
      *(v53 + 64) = v55;
      *(v53 + 72) = v42;
      *(v53 + 80) = v44;
      v56 = v80;
      v82 = v80;

      v57 = sub_19166B7A8();
      *(v53 + 136) = v54;
      *(v53 + 144) = v55;
      *(v53 + 112) = v57;
      *(v53 + 120) = v58;
      v82 = v56;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v59 = sub_19166C878();
      *(v53 + 216) = v54;
      *(v53 + 224) = v55;
      *(v53 + 192) = v59;
      *(v53 + 200) = v60;
      v61 = [objc_opt_self() callStackSymbols];
      v62 = sub_19166BA08();

      *(v53 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 232) = v62;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = a2;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19161E020(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v85)
  {
    sub_1915E4370(&v84, &v86);
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD88, &qword_1916737C0);
    v21 = sub_19162CE48(&v84, v19, &v86, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    v81 = a3;
    *(v27 + 16) = 1;
    v77 = v27 + 16;
    v28 = swift_allocObject();
    v76 = &v74;
    *(v28 + 16) = 1;
    a3 = v81;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v78 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v86 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v86;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19162FBA4;
    v72 = v30;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v31 = v74;
      v32 = *(v74 + 72);
      v33 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v35 = v75;
      v36 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v36, v37);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v31 + 8))(v17, v35);
      a2 = v79;
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v38);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      a2 = v79;
      if (isClassType)
      {
        v40 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v40 = 4;
        }

        else
        {
          v40 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v40);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v41 = v78;

    v22 = v82;
    v25 = v83;
    v24 = v86;
    swift_beginAccess();
    *&v84 = *(v41 + 16);
    sub_1915A2E4C(v84);

    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v84;
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = a3;
    v48 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v48);

    a3 = v47;
    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v49 = v25;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      goto LABEL_29;
    }

    v50 = a3;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_191673660;
      v54 = MEMORY[0x1E69E6158];
      *(v53 + 56) = MEMORY[0x1E69E6158];
      v55 = sub_1915F225C();
      *(v53 + 32) = a2;
      *(v53 + 40) = v50;
      *(v53 + 96) = v54;
      *(v53 + 104) = v55;
      *(v53 + 64) = v55;
      *(v53 + 72) = v42;
      *(v53 + 80) = v44;
      v56 = v80;
      v82 = v80;

      v57 = sub_19166B7A8();
      *(v53 + 136) = v54;
      *(v53 + 144) = v55;
      *(v53 + 112) = v57;
      *(v53 + 120) = v58;
      v82 = v56;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v59 = sub_19166C878();
      *(v53 + 216) = v54;
      *(v53 + 224) = v55;
      *(v53 + 192) = v59;
      *(v53 + 200) = v60;
      v61 = [objc_opt_self() callStackSymbols];
      v62 = sub_19166BA08();

      *(v53 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 232) = v62;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = a2;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19161E8C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v85)
  {
    sub_1915E4370(&v84, &v86);
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD70, &qword_1916737A8);
    v21 = sub_19162CE48(&v84, v19, &v86, v19, a4, a1, a2, a3, a5, a6, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = (v21 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    v81 = a3;
    *(v27 + 16) = 1;
    v77 = v27 + 16;
    v28 = swift_allocObject();
    v76 = &v74;
    *(v28 + 16) = 1;
    a3 = v81;
    *(v28 + 24) = a1;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = a1;
    v78 = v27;
    *(v28 + 56) = v27;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v86 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v86;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19162FB0C;
    v72 = v30;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v31 = v74;
      v32 = *(v74 + 72);
      v33 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v35 = v75;
      v36 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v36, v37);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v31 + 8))(v17, v35);
      a2 = v79;
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v38);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      a2 = v79;
      if (isClassType)
      {
        v40 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v40 = 4;
        }

        else
        {
          v40 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v40);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v41 = v78;

    v22 = v82;
    v25 = v83;
    v24 = v86;
    swift_beginAccess();
    *&v84 = *(v41 + 16);
    sub_1915A2E4C(v84);

    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v25)
  {
    return v84;
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = a3;
    v48 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v48);

    a3 = v47;
    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v22)
  {
    if (v24)
    {
      v49 = v25;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      goto LABEL_29;
    }

    v50 = a3;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_191673660;
      v54 = MEMORY[0x1E69E6158];
      *(v53 + 56) = MEMORY[0x1E69E6158];
      v55 = sub_1915F225C();
      *(v53 + 32) = a2;
      *(v53 + 40) = v50;
      *(v53 + 96) = v54;
      *(v53 + 104) = v55;
      *(v53 + 64) = v55;
      *(v53 + 72) = v42;
      *(v53 + 80) = v44;
      v56 = v80;
      v82 = v80;

      v57 = sub_19166B7A8();
      *(v53 + 136) = v54;
      *(v53 + 144) = v55;
      *(v53 + 112) = v57;
      *(v53 + 120) = v58;
      v82 = v56;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v59 = sub_19166C878();
      *(v53 + 216) = v54;
      *(v53 + 224) = v55;
      *(v53 + 192) = v59;
      *(v53 + 200) = v60;
      v61 = [objc_opt_self() callStackSymbols];
      v62 = sub_19166BA08();

      *(v53 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 232) = v62;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = a2;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _AXSafeSwiftBoolForKey(void *a1)
{
  v2 = sub_19166B748();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v5 = type metadata accessor for FieldAccessor(0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1916729D0;
  v9 = v8 + v7;
  v10 = qword_1ED5A81C8;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_1ED5A8A90);
  sub_19162D3A0(v11, v9);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_1ED5A8AA8);
  sub_19162D3A0(v12, v9 + v6);
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_1ED5A8AC0);
  sub_19162D3A0(v13, v9 + 2 * v6);
  v14 = sub_19160A010(a1, v2, v4, v8, sub_19162A67C, 0);
  swift_unknownObjectRelease();

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v14 & 1;
}

uint64_t _AXSafeSwiftIntForKeyTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v7 = sub_19166B748();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v10 = type metadata accessor for FieldAccessor(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1916729D0;
  v14 = v13 + v12;
  v15 = qword_1ED5A81C8;
  swift_unknownObjectRetain();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_1ED5A8A90);
  sub_19162D3A0(v16, v14);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_1ED5A8AA8);
  sub_19162D3A0(v17, v14 + v11);
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v10, qword_1ED5A8AC0);
  sub_19162D3A0(v18, v14 + 2 * v11);
  v19 = a4(a1, v7, v9, v13, a3, 0);
  v21 = v20;
  swift_unknownObjectRelease();

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v21)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

uint64_t _AXSafeSwiftInt8ForKey(void *a1)
{
  v2 = sub_19166B748();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v5 = type metadata accessor for FieldAccessor(0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1916729D0;
  v9 = v8 + v7;
  v10 = qword_1ED5A81C8;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_1ED5A8A90);
  sub_19162D3A0(v11, v9);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_1ED5A8AA8);
  sub_19162D3A0(v12, v9 + v6);
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_1ED5A8AC0);
  sub_19162D3A0(v13, v9 + 2 * v6);
  v14 = sub_19160B9C4(a1, v2, v4, v8, sub_19162A7A8, 0);
  swift_unknownObjectRelease();

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v14 & 0x100) != 0)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t _AXSafeSwiftUInt8ForKey(void *a1)
{
  v2 = sub_19166B748();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v5 = type metadata accessor for FieldAccessor(0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1916729D0;
  v9 = v8 + v7;
  v10 = qword_1ED5A81C8;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_1ED5A8A90);
  sub_19162D3A0(v11, v9);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_1ED5A8AA8);
  sub_19162D3A0(v12, v9 + v6);
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_1ED5A8AC0);
  sub_19162D3A0(v13, v9 + 2 * v6);
  v14 = sub_19160C25C(a1, v2, v4, v8, sub_19162A80C, 0);
  swift_unknownObjectRelease();

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v14 & 0x100) != 0)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t _AXSafeSwiftInt16ForKey(void *a1)
{
  v2 = sub_19166B748();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v5 = type metadata accessor for FieldAccessor(0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1916729D0;
  v9 = v8 + v7;
  v10 = qword_1ED5A81C8;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_1ED5A8A90);
  sub_19162D3A0(v11, v9);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_1ED5A8AA8);
  sub_19162D3A0(v12, v9 + v6);
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_1ED5A8AC0);
  sub_19162D3A0(v13, v9 + 2 * v6);
  v14 = sub_19160CAF4(a1, v2, v4, v8, sub_19162A870, 0);
  swift_unknownObjectRelease();

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v14 & 0x10000) != 0)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t _AXSafeSwiftUInt16ForKey(void *a1)
{
  v2 = sub_19166B748();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v5 = type metadata accessor for FieldAccessor(0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1916729D0;
  v9 = v8 + v7;
  v10 = qword_1ED5A81C8;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_1ED5A8A90);
  sub_19162D3A0(v11, v9);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_1ED5A8AA8);
  sub_19162D3A0(v12, v9 + v6);
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_1ED5A8AC0);
  sub_19162D3A0(v13, v9 + 2 * v6);
  v14 = sub_19160D38C(a1, v2, v4, v8, sub_19162A8D4, 0);
  swift_unknownObjectRelease();

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v14 & 0x10000) != 0)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t _AXSafeSwiftInt32ForKeyTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v7 = sub_19166B748();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v10 = type metadata accessor for FieldAccessor(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1916729D0;
  v14 = v13 + v12;
  v15 = qword_1ED5A81C8;
  swift_unknownObjectRetain();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_1ED5A8A90);
  sub_19162D3A0(v16, v14);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_1ED5A8AA8);
  sub_19162D3A0(v17, v14 + v11);
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v10, qword_1ED5A8AC0);
  sub_19162D3A0(v18, v14 + 2 * v11);
  v19 = a4(a1, v7, v9, v13, a3, 0);
  swift_unknownObjectRelease();

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((v19 & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

float _AXSafeSwiftFloatForKey(void *a1)
{
  v2 = sub_19166B748();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v5 = type metadata accessor for FieldAccessor(0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1916729D0;
  v9 = v8 + v7;
  v10 = qword_1ED5A81C8;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_1ED5A8A90);
  sub_19162D3A0(v11, v9);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_1ED5A8AA8);
  sub_19162D3A0(v12, v9 + v6);
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_1ED5A8AC0);
  sub_19162D3A0(v13, v9 + 2 * v6);
  v14 = sub_19160FE8C(a1, v2, v4, v8, sub_19162AAC8, 0);
  swift_unknownObjectRelease();

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  result = *&v14;
  if ((v14 & 0x100000000) != 0)
  {
    return 0.0;
  }

  return result;
}

double _AXSafeSwiftDoubleForKeyTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v7 = sub_19166B748();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v10 = type metadata accessor for FieldAccessor(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1916729D0;
  v14 = v13 + v12;
  v15 = qword_1ED5A81C8;
  swift_unknownObjectRetain();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_1ED5A8A90);
  sub_19162D3A0(v16, v14);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_1ED5A8AA8);
  sub_19162D3A0(v17, v14 + v11);
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v10, qword_1ED5A8AC0);
  sub_19162D3A0(v18, v14 + 2 * v11);
  v19 = COERCE_DOUBLE(a4(a1, v7, v9, v13, a3, 0));
  v21 = v20;
  swift_unknownObjectRelease();

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  result = v19;
  if (v21)
  {
    return 0.0;
  }

  return result;
}

double _AXSafeSwiftCGPointForKeyTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v7 = sub_19166B748();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v10 = type metadata accessor for FieldAccessor(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1916729D0;
  v14 = v13 + v12;
  v15 = qword_1ED5A81C8;
  swift_unknownObjectRetain();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_1ED5A8A90);
  sub_19162D3A0(v16, v14);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_1ED5A8AA8);
  sub_19162D3A0(v17, v14 + v11);
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v10, qword_1ED5A8AC0);
  sub_19162D3A0(v18, v14 + 2 * v11);
  v19 = COERCE_DOUBLE(a4(a1, v7, v9, v13, a3, 0));
  v21 = v20;
  swift_unknownObjectRelease();

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  result = v19;
  if (v21)
  {
    return 0.0;
  }

  return result;
}

uint64_t _AXSafeSwiftCGRectForKey(void *a1)
{
  v2 = sub_19166B748();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v5 = type metadata accessor for FieldAccessor(0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1916729D0;
  v9 = v8 + v7;
  v10 = qword_1ED5A81C8;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_1ED5A8A90);
  sub_19162D3A0(v11, v9);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_1ED5A8AA8);
  sub_19162D3A0(v12, v9 + v6);
  v13 = v9 + 2 * v6;
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_1ED5A8AC0);
  sub_19162D3A0(v14, v13);
  sub_191612984(a1, v2, v4, v8, sub_19162AC44, 0, &v16);
  swift_unknownObjectRelease();

  swift_setDeallocating();
  swift_arrayDestroy();
  return swift_deallocClassInstance();
}

uint64_t sub_191620C24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v8 = type metadata accessor for FieldAccessor(0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1916729D0;
  v12 = v11 + v10;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_1ED5A8A90);
  sub_19162D3A0(v13, v12);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1ED5A8AA8);
  sub_19162D3A0(v14, v12 + v9);
  v15 = v12 + 2 * v9;
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_1ED5A8AC0);
  sub_19162D3A0(v16, v15);
  v17 = sub_191613240(a1, a2, a3, v11, sub_19162ACE4, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  if ((v17 & 0xFE) == 2)
  {
    v19 = 0;
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    *a4 = v17 & 1;
    v19 = MEMORY[0x1E69E6370];
  }

  a4[3] = v19;
  return result;
}

uint64_t sub_191620EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v12 = type metadata accessor for FieldAccessor(0);
  v13 = *(*(v12 - 8) + 72);
  v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1916729D0;
  v16 = v15 + v14;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_1ED5A8A90);
  sub_19162D3A0(v17, v16);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_1ED5A8AA8);
  sub_19162D3A0(v18, v16 + v13);
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v12, qword_1ED5A8AC0);
  sub_19162D3A0(v19, v16 + 2 * v13);
  v20 = a5(a1, a2, a3, v15, a4, 0);
  v22 = v21;
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  if (v22 & 0x100) != 0 || (v22)
  {
    *a7 = 0u;
    *(a7 + 16) = 0u;
  }

  else
  {
    *(a7 + 24) = a6;
    *a7 = v20;
  }

  return result;
}

uint64_t sub_191621158@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v8 = type metadata accessor for FieldAccessor(0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1916729D0;
  v12 = v11 + v10;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_1ED5A8A90);
  sub_19162D3A0(v13, v12);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1ED5A8AA8);
  sub_19162D3A0(v14, v12 + v9);
  v15 = v12 + 2 * v9;
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_1ED5A8AC0);
  sub_19162D3A0(v16, v15);
  v17 = sub_191614C40(a1, a2, a3, v11, sub_19162AD50, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  if ((v17 & 0x10100) != 0)
  {
    v19 = 0;
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    *a4 = v17;
    v19 = MEMORY[0x1E69E7230];
  }

  a4[3] = v19;
  return result;
}

uint64_t sub_1916213B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v8 = type metadata accessor for FieldAccessor(0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1916729D0;
  v12 = v11 + v10;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_1ED5A8A90);
  sub_19162D3A0(v13, v12);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1ED5A8AA8);
  sub_19162D3A0(v14, v12 + v9);
  v15 = v12 + 2 * v9;
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_1ED5A8AC0);
  sub_19162D3A0(v16, v15);
  v17 = sub_1916154E4(a1, a2, a3, v11, sub_19162AD74, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  if ((v17 & 0x10100) != 0)
  {
    v19 = 0;
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    *a4 = v17;
    v19 = MEMORY[0x1E69E7508];
  }

  a4[3] = v19;
  return result;
}

uint64_t sub_191621610@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v8 = type metadata accessor for FieldAccessor(0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1916729D0;
  v12 = v11 + v10;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_1ED5A8A90);
  sub_19162D3A0(v13, v12);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1ED5A8AA8);
  sub_19162D3A0(v14, v12 + v9);
  v15 = v12 + 2 * v9;
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_1ED5A8AC0);
  sub_19162D3A0(v16, v15);
  v17 = sub_191615D88(a1, a2, a3, v11, sub_19162AD98, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  if ((v17 & 0x1010000) != 0)
  {
    v19 = 0;
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    *a4 = v17;
    v19 = MEMORY[0x1E69E7290];
  }

  a4[3] = v19;
  return result;
}

uint64_t sub_191621868@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v8 = type metadata accessor for FieldAccessor(0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1916729D0;
  v12 = v11 + v10;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_1ED5A8A90);
  sub_19162D3A0(v13, v12);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1ED5A8AA8);
  sub_19162D3A0(v14, v12 + v9);
  v15 = v12 + 2 * v9;
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_1ED5A8AC0);
  sub_19162D3A0(v16, v15);
  v17 = sub_19161663C(a1, a2, a3, v11, sub_19162ADBC, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  if ((v17 & 0x1010000) != 0)
  {
    v19 = 0;
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    *a4 = v17;
    v19 = MEMORY[0x1E69E75F8];
  }

  a4[3] = v19;
  return result;
}

uint64_t sub_191621AC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v8 = type metadata accessor for FieldAccessor(0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1916729D0;
  v12 = v11 + v10;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_1ED5A8A90);
  sub_19162D3A0(v13, v12);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1ED5A8AA8);
  sub_19162D3A0(v14, v12 + v9);
  v15 = v12 + 2 * v9;
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_1ED5A8AC0);
  sub_19162D3A0(v16, v15);
  v17 = sub_191616EF0(a1, a2, a3, v11, sub_19162ADE0, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  if ((v17 & 0x10100000000) != 0)
  {
    v19 = 0;
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    *a4 = v17;
    v19 = MEMORY[0x1E69E72F0];
  }

  a4[3] = v19;
  return result;
}

uint64_t sub_191621D18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v8 = type metadata accessor for FieldAccessor(0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1916729D0;
  v12 = v11 + v10;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_1ED5A8A90);
  sub_19162D3A0(v13, v12);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1ED5A8AA8);
  sub_19162D3A0(v14, v12 + v9);
  v15 = v12 + 2 * v9;
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_1ED5A8AC0);
  sub_19162D3A0(v16, v15);
  v17 = sub_1916177B0(a1, a2, a3, v11, sub_19162AE04, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  if ((v17 & 0x10100000000) != 0)
  {
    v19 = 0;
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    *a4 = v17;
    v19 = MEMORY[0x1E69E7668];
  }

  a4[3] = v19;
  return result;
}

uint64_t sub_191622000@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v8 = type metadata accessor for FieldAccessor(0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1916729D0;
  v12 = v11 + v10;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_1ED5A8A90);
  sub_19162D3A0(v13, v12);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1ED5A8AA8);
  sub_19162D3A0(v14, v12 + v9);
  v15 = v12 + 2 * v9;
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_1ED5A8AC0);
  sub_19162D3A0(v16, v15);
  v17 = sub_1916191D8(a1, a2, a3, v11, sub_19162AE70, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  if ((v17 & 0x10100000000) != 0)
  {
    v19 = 0;
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    *a4 = v17;
    v19 = MEMORY[0x1E69E6448];
  }

  a4[3] = v19;
  return result;
}

id _AXSafeSwiftOptionalIntForKeyTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = sub_19166B748();
  v12 = v11;
  v13 = swift_unknownObjectRetain();
  a6(v22, v13, v10, v12, a3, a4, a5);
  swift_unknownObjectRelease();

  v14 = v23;
  if (v23)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v16 = *(v14 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x1EEE9AC00](v15, v15);
    v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19);
    v20 = sub_19166C5D8();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t sub_191622504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void)@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v12 = type metadata accessor for FieldAccessor(0);
  v13 = *(*(v12 - 8) + 72);
  v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1916729D0;
  v16 = v15 + v14;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_1ED5A8A90);
  sub_19162D3A0(v17, v16);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_1ED5A8AA8);
  sub_19162D3A0(v18, v16 + v13);
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v12, qword_1ED5A8AC0);
  sub_19162D3A0(v19, v16 + 2 * v13);
  v20 = a5(a1, a2, a3, v15, a4, 0);
  v22 = v21;
  v24 = v23;
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  if (v24 & 0x100) != 0 || (v24)
  {
    *a7 = 0u;
    *(a7 + 16) = 0u;
  }

  else
  {
    result = a6(0);
    *(a7 + 24) = result;
    *a7 = v20;
    *(a7 + 8) = v22;
  }

  return result;
}

id _AXSafeSwiftOptionalBoolForKeyTm(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v4 = sub_19166B748();
  v6 = v5;
  v7 = swift_unknownObjectRetain();
  a3(v16, v7, v4, v6);
  swift_unknownObjectRelease();

  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v9, v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_19166C5D8();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

__n128 sub_1916228E0@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v8 = type metadata accessor for FieldAccessor(0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1916729D0;
  v12 = v11 + v10;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_1ED5A8A90);
  sub_19162D3A0(v13, v12);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1ED5A8AA8);
  sub_19162D3A0(v14, v12 + v9);
  v15 = v12 + 2 * v9;
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_1ED5A8AC0);
  sub_19162D3A0(v16, v15);
  sub_19161BD70(a1, a2, a3, v11, sub_19162AF24, 0, v23);
  v21 = v23[1];
  v22 = v23[0];
  v17 = v24;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v25 & 1) != 0 || (v17)
  {
    result.n128_u64[0] = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    type metadata accessor for CGRect(0);
    *(a4 + 24) = v19;
    v20 = swift_allocObject();
    *a4 = v20;
    result = v22;
    *(v20 + 16) = v22;
    *(v20 + 32) = v21;
  }

  return result;
}

id _AXSafeSwiftStringForKey()
{
  v0 = sub_19166B748();
  v2 = v1;
  v3 = swift_unknownObjectRetain();
  sub_191622BEC(v3, v0, v2);
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

id sub_191622BEC(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v6 = type metadata accessor for FieldAccessor(0);
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1916729D0;
  v10 = v9 + v8;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_1ED5A8A90);
  sub_19162D3A0(v11, v10);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_1ED5A8AA8);
  sub_19162D3A0(v12, v10 + v7);
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_1ED5A8AC0);
  sub_19162D3A0(v13, v10 + 2 * v7);
  v14 = sub_19161C644(a1, a2, a3, v9, sub_191622E0C, 0);
  v16 = v15;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v16 == 1)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}