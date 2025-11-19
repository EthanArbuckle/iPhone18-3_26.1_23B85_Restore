uint64_t CustomAppEntityRepresentationBase.hashValue.getter()
{
  sub_221BCE308();
  CustomAppEntityRepresentationBase.hash(into:)();
  return sub_221BCE358();
}

uint64_t sub_22199DF28()
{
  sub_221BCE308();
  v1 = *v0;
  CustomAppEntityRepresentationBase.hash(into:)();
  return sub_221BCE358();
}

uint64_t CustomAppEntityRepresentationBase.lnValue.getter()
{

  v1 = sub_22199C9D0(v0, v4);
  v2 = (v4[8])(v1);
  sub_2219A11D0(v4);
  return v2;
}

uint64_t static CustomAppEntityRepresentationBase.from(_:context:)(void *a1, void *a2)
{
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_27();
  v7(v6);
  v11[0] = __dst[0];
  v11[1] = __dst[1];
  v8 = a1;
  sub_22199BCCC();
  memcpy(__dst, __src, sizeof(__dst));
  v9 = 0;
  if (sub_2219A1200(__dst) != 1)
  {
    memcpy(v11, __dst, sizeof(v11));
    v9 = sub_22199E0C0(v11, a2);
    sub_2219A1CC8(__src, &qword_27CFB7698, &qword_221BD0838);
  }

  return v9;
}

uint64_t sub_22199E0C0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_221BCCD88();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - v12;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v15 = *(a1 + 64);
  v14 = *(a1 + 72);
  v16 = (v15)(v11);
  type metadata accessor for RemoteLNValue();
  v17 = swift_dynamicCastClass();
  v48 = v3;
  if (v17)
  {
    sub_2219A1B08(a2, &v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7658, &unk_221BD0810);
    if (swift_dynamicCast())
    {
      sub_22199C218(v58, v59);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v52[0] = Strong, v52[1] = v59[5], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7780, &unk_221BD0CE0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7788, &qword_221BE7070), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v56 + 1))
        {
          sub_22198B358(&v55, v58);
          sub_221B824A4(v58, &v55);

          __swift_destroy_boxed_opaque_existential_0(v58);
          sub_22199C274(v59);
          v19 = sub_2219A1CC8(&v65, &qword_27CFB7680, &qword_221BD0828);
          v65 = v55;
          v66 = v56;
          v67 = v57;
          goto LABEL_18;
        }
      }

      else
      {
        v57 = 0;
        v55 = 0u;
        v56 = 0u;
      }

      sub_2219A1CC8(&v55, &qword_27CFB7778, &qword_221BD0CD8);
      v58[0] = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7770, &qword_221BD0CD0);
      sub_221BCD3D8();
      sub_221BCCD78();
      v27 = sub_221BCCD68();
      v28 = sub_221BCDA78();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_221989000, v27, v28, "Dispatcher type does not support RemoteLNValue exported content access.", v29, 2u);
        MEMORY[0x223DA4C00](v29, -1, -1);
      }

      (*(v46 + 8))(v10, v47);
      v19 = sub_22199C274(v59);
    }

    else
    {
      memset(v58, 0, 48);
      sub_2219A1CC8(v58, &qword_27CFB7660, &unk_221BE7050);
      v59[0] = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7770, &qword_221BD0CD0);
      sub_221BCD3D8();
      sub_221BCCD78();
      v24 = sub_221BCCD68();
      v25 = sub_221BCDA78();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_221989000, v24, v25, "ConversionContext does not support RemoteLNValue exported content access.", v26, 2u);
        MEMORY[0x223DA4C00](v26, -1, -1);
      }

      v19 = (*(v46 + 8))(v13, v47);
    }
  }

  else
  {

    v20 = v15();
    v21 = [v20 exportedContent];

    if (v21)
    {
      v22 = [v21 content];

      v21 = &off_28351B7F0;
      v23 = &type metadata for LocalFileRepresentation;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v19 = sub_2219A1CC8(&v65, &qword_27CFB7680, &qword_221BD0828);
    *&v66 = 0;
    v65 = v22;
    *(&v66 + 1) = v23;
    v67 = v21;
  }

LABEL_18:
  v30 = *(a1 + 8);
  (*a1)(v58, v19);
  v31 = sub_2219A02E8(&v65, &v55, &qword_27CFB7680, &qword_221BD0828);
  v32 = *(a1 + 40);
  v33 = (*(a1 + 32))(v52, v31);
  v34 = *(a1 + 56);
  LODWORD(v46) = (*(a1 + 48))(v33);
  v35 = a2[3];
  v36 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v35);
  (*(v36 + 8))(&v49, v35, v36);
  v45 = v49;
  v47 = a2;
  v37 = v50;
  v38 = v51;
  sub_2219A02E8(v58, v59, &qword_27CFB7678, &qword_221BD0820);
  sub_2219A02E8(&v55, v60, &qword_27CFB7680, &qword_221BD0828);
  v39 = v53;
  v40 = v54;
  __swift_project_boxed_opaque_existential_0(v52, v53);
  v41 = sub_22199B82C(v39, v40);
  sub_2219A1CC8(&v55, &qword_27CFB7680, &qword_221BD0828);
  sub_2219A1CC8(v58, &qword_27CFB7678, &qword_221BD0820);
  v60[5] = v41;
  v61 = v46 & 1;
  v62 = v45;
  v63 = v37;
  v64 = v38;
  __swift_destroy_boxed_opaque_existential_0(v52);
  v42 = (*(v48 + 144))(v59);
  v43 = *(a1 + 88);
  (*(a1 + 80))();
  sub_22199EEB4();

  sub_2219A1CC8(&v65, &qword_27CFB7680, &qword_221BD0828);
  return v42;
}

void sub_22199E73C()
{
  OUTLINED_FUNCTION_21();
  v56 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_221BCCD88();
  v10 = OUTLINED_FUNCTION_0_2(v9);
  v54 = v11;
  v55 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  v19 = v2[1];
  v20 = *(v19 + 16);
  v57 = v8;
  v58 = v4;
  v21 = v20(v4, v19);
  if (!v21)
  {
LABEL_9:
    v24 = v20(v58, v19);
    v25 = v24;
    if (v24)
    {
      v26 = [v24 exportedContent];

      if (v26)
      {
        v25 = [(ValueMetadata *)v26 content];

        v27 = &off_28351B7F0;
        v26 = &type metadata for LocalFileRepresentation;
LABEL_18:
        sub_2219A1CC8(&v75, &qword_27CFB7680, &qword_221BD0828);
        *&v76 = 0;
        v75 = v25;
        *(&v76 + 1) = v26;
        v77 = v27;
        goto LABEL_23;
      }

      v25 = 0;
    }

    else
    {
      v26 = 0;
    }

    v27 = 0;
    goto LABEL_18;
  }

  v22 = v21;
  type metadata accessor for RemoteLNValue();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_9;
  }

  sub_2219A1B08(v6, &v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7658, &unk_221BD0810);
  if (swift_dynamicCast())
  {
    sub_22199C218(v68, v69);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v62[0] = Strong, v62[1] = v69[5], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7780, &unk_221BD0CE0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7788, &qword_221BE7070), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v66 + 1))
      {
        sub_22198B358(&v65, v68);
        sub_221B824A4(v68, &v65);

        __swift_destroy_boxed_opaque_existential_0(v68);
        sub_22199C274(v69);
        sub_2219A1CC8(&v75, &qword_27CFB7680, &qword_221BD0828);
        v75 = v65;
        v76 = v66;
        v77 = v67;
        goto LABEL_23;
      }
    }

    else
    {
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    sub_2219A1CC8(&v65, &qword_27CFB7778, &qword_221BD0CD8);
    v68[0] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7770, &qword_221BD0CD0);
    sub_221BCD3D8();
    sub_221BCCD78();
    v31 = sub_221BCCD68();
    v32 = sub_221BCDA78();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_221989000, v31, v32, "Dispatcher type does not support RemoteLNValue exported content access.", v33, 2u);
      OUTLINED_FUNCTION_23();
    }

    (*(v54 + 8))(v18, v55);
    sub_22199C274(v69);
  }

  else
  {
    memset(v68, 0, 48);
    sub_2219A1CC8(v68, &qword_27CFB7660, &unk_221BE7050);
    v69[0] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7770, &qword_221BD0CD0);
    sub_221BCD3D8();
    sub_221BCCD78();
    v28 = sub_221BCCD68();
    v29 = sub_221BCDA78();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_221989000, v28, v29, "ConversionContext does not support RemoteLNValue exported content access.", v30, 2u);
      OUTLINED_FUNCTION_23();
    }

    (*(v54 + 8))(v15, v55);
  }

LABEL_23:
  v34 = v2[4];
  v35 = OUTLINED_FUNCTION_14();
  v36(v35);
  sub_2219A02E8(&v75, &v65, &qword_27CFB7680, &qword_221BD0828);
  v37 = v2[5];
  v38 = OUTLINED_FUNCTION_14();
  v39(v38);
  v40 = v2[6];
  v41 = OUTLINED_FUNCTION_14();
  LODWORD(v54) = v42(v41);
  v44 = v6[3];
  v43 = v6[4];
  __swift_project_boxed_opaque_existential_0(v6, v44);
  (*(v43 + 8))(&v59, v44, v43);
  v53 = v59;
  v55 = v6;
  v46 = v60;
  v45 = v61;
  sub_2219A02E8(v68, v69, &qword_27CFB7678, &qword_221BD0820);
  sub_2219A02E8(&v65, v70, &qword_27CFB7680, &qword_221BD0828);
  v47 = v63;
  v48 = v64;
  __swift_project_boxed_opaque_existential_0(v62, v63);
  v49 = sub_22199B82C(v47, v48);
  sub_2219A1CC8(&v65, &qword_27CFB7680, &qword_221BD0828);
  sub_2219A1CC8(v68, &qword_27CFB7678, &qword_221BD0820);
  v70[5] = v49;
  v71 = v54 & 1;
  v72 = v53;
  v73 = v46;
  v74 = v45;
  __swift_destroy_boxed_opaque_existential_0(v62);
  (*(v56 + 144))(v69);
  v50 = v2[7];
  v51 = OUTLINED_FUNCTION_14();
  v52(v51);
  sub_22199EEB4();

  sub_2219A1CC8(&v75, &qword_27CFB7680, &qword_221BD0828);
  OUTLINED_FUNCTION_22();
}

void sub_22199EE30(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_221B9EA30(a2), (v6 & 1) != 0))
  {
    sub_2219A1C28(*(v4 + 56) + 168 * v5, a3);
  }

  else
  {

    bzero(a3, 0xA8uLL);
  }
}

void sub_22199EEB4()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = sub_221BCE388();
  v8 = OUTLINED_FUNCTION_0_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v15 = v14 - v13;
  v16 = *(v5 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v31 = v6;
    v32 = v3;
    v33 = v1;
    v34 = v14 - v13;
    v35 = v10;
    v36 = v7;
    v37 = MEMORY[0x277D84F90];
    sub_2219A2FD4(0, v16, 0);
    v17 = v37;
    v18 = (v5 + 48);
    do
    {
      v20 = *(v18 - 2);
      v19 = *(v18 - 1);
      v21 = *v18;
      v37 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);

      v24 = v21;
      if (v23 >= v22 >> 1)
      {
        sub_2219A2FD4((v22 > 1), v23 + 1, 1);
        v17 = v37;
      }

      v18 += 5;
      *(v17 + 16) = v23 + 1;
      v25 = (v17 + 24 * v23);
      v25[4] = v20;
      v25[5] = v19;
      v25[6] = v21;
      --v16;
    }

    while (v16);
    v10 = v35;
    v7 = v36;
    v1 = v33;
    v15 = v34;
    v6 = v31;
    v3 = v32;
  }

  v26 = sub_22199F118(v17);
  v38 = type metadata accessor for CustomAppEntityRepresentationBase();
  v37 = v1;

  sub_221BCE368();
  v27 = sub_221BCE378();
  v28 = MEMORY[0x28223BE20](v27);
  *(&v30 - 4) = v26;
  *(&v30 - 3) = v3;
  *(&v30 - 2) = v1;
  *(&v30 - 1) = v6;
  MEMORY[0x28223BE20](v28);
  *(&v30 - 2) = sub_2219A1AC0;
  *(&v30 - 1) = v29;
  sub_221BCDFF8();

  (*(v10 + 8))(v15, v7);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_22199F118(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB77B0, &qword_221BD0D10);
    v2 = sub_221BCE088();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_2219A0C88(a1, 1, &v4);
  return v4;
}

uint64_t sub_22199F1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a1;
  v13 = sub_221BCCD88();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v58 - v20;
  if (a2)
  {
    sub_22199B650(a3, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7790, &qword_221BD0CF0);
    if (swift_dynamicCast())
    {
      v58 = a6;
      v59 = v14;
      v22 = a5;
      v60 = v13;
      sub_22198B358(&v62, v66);
      v23 = v67;
      v24 = v68;
      __swift_project_boxed_opaque_existential_0(v66, v67);
      (*(v24 + 24))(v61, a2, v23, v24);
      v25 = v67;
      v26 = v68;
      __swift_project_boxed_opaque_existential_0(v66, v67);
      result = (*(v26 + 8))(v25, v26);
      if (!v27)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v28 = sub_221B9C36C(result, v27, a4);

      if (v28 == 1)
      {
        *&v62 = a7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7770, &qword_221BD0CD0);
        sub_221BCD3D8();
        sub_221BCCD78();
        sub_2219A1B08(v66, &v62);
        v29 = sub_221BCCD68();
        v30 = sub_221BCDA68();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v65[0] = v32;
          *v31 = 136315138;
          v33 = *(&v63 + 1);
          v34 = v64;
          __swift_project_boxed_opaque_existential_0(&v62, *(&v63 + 1));
          result = (*(v34 + 8))(v33, v34);
          if (v35)
          {
            v36 = result;
            v37 = v35;
            __swift_destroy_boxed_opaque_existential_0(&v62);
            v38 = sub_2219A6360(v36, v37, v65);

            *(v31 + 4) = v38;
            _os_log_impl(&dword_221989000, v29, v30, "No property found for property name '%s'", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v32);
            MEMORY[0x223DA4C00](v32, -1, -1);
            MEMORY[0x223DA4C00](v31, -1, -1);

            (*(v59 + 8))(v18, v60);
            return __swift_destroy_boxed_opaque_existential_0(v66);
          }

          goto LABEL_24;
        }

        (*(v59 + 8))(v18, v60);
LABEL_20:
        __swift_destroy_boxed_opaque_existential_0(&v62);
        return __swift_destroy_boxed_opaque_existential_0(v66);
      }

      a5 = v22;
      v46 = v67;
      v47 = v68;
      __swift_project_boxed_opaque_existential_0(v66, v67);
      if (((*(v47 + 32))(v28, v22, v46, v47) & 1) == 0)
      {
        *&v62 = a7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7770, &qword_221BD0CD0);
        sub_221BCD3D8();
        sub_221BCCD78();
        sub_2219A1B08(v66, &v62);
        v48 = sub_221BCCD68();
        v49 = sub_221BCDA68();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v65[0] = v51;
          *v50 = 136315138;
          v52 = *(&v63 + 1);
          v53 = v64;
          __swift_project_boxed_opaque_existential_0(&v62, *(&v63 + 1));
          result = (*(v53 + 8))(v52, v53);
          if (v54)
          {
            v55 = result;
            v56 = v54;
            __swift_destroy_boxed_opaque_existential_0(&v62);
            v57 = sub_2219A6360(v55, v56, v65);

            *(v50 + 4) = v57;
            _os_log_impl(&dword_221989000, v48, v49, "Could not set value for property '%s'", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v51);
            MEMORY[0x223DA4C00](v51, -1, -1);
            MEMORY[0x223DA4C00](v50, -1, -1);
            sub_2219A1B6C(v28);

            (*(v59 + 8))(v21, v60);
            return __swift_destroy_boxed_opaque_existential_0(v66);
          }

LABEL_25:
          __break(1u);
          return result;
        }

        sub_2219A1B6C(v28);

        (*(v59 + 8))(v21, v60);
        goto LABEL_20;
      }

      sub_2219A1B6C(v28);
      __swift_destroy_boxed_opaque_existential_0(v66);
      a6 = v58;
    }

    else
    {
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
      sub_2219A1CC8(&v62, &qword_27CFB7798, &qword_221BD0CF8);
    }

    sub_22199B650(a3, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB77A0, &qword_221BD0D00);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
      return sub_2219A1CC8(&v62, &qword_27CFB77A8, &qword_221BD0D08);
    }

    sub_22198B358(&v62, v66);
    v39 = v67;
    v40 = v68;
    __swift_project_boxed_opaque_existential_0(v66, v67);
    (*(v40 + 24))(v61, a2, v39, v40);
    v41 = v67;
    v42 = v68;
    __swift_project_boxed_opaque_existential_0(v66, v67);
    v43 = a5;
    v44 = *(v42 + 32);
    v45 = type metadata accessor for CustomAppEntityRepresentationBase();
    v44(a6, v43, v45, v41, v42);
    return __swift_destroy_boxed_opaque_existential_0(v66);
  }

  return result;
}

void _TransientAppEntityRepresentation<>.init()()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v4 = sub_221BCC558();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  (*(*(v1 + 16) + 16))(v3, *(v1 + 16));
  sub_221BCC548();
  sub_221BCC4E8();
  v10 = *(v7 + 8);
  v11 = OUTLINED_FUNCTION_24();
  v12(v11);
  objc_allocWithZone(MEMORY[0x277D23800]);
  sub_2219A0230();
  v13 = OUTLINED_FUNCTION_9();
  v18 = v4;
  v19 = 1;
  v20 = v14(v13);
  v21 = v15;
  v22 = xmmword_221BD0800;
  (*(v3 + 144))(v16);
  OUTLINED_FUNCTION_22();
}

uint64_t _IdentifiableAppEntityRepresentation<>.init(instanceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  (*(*(a4 + 16) + 16))(a3, *(a4 + 16));
  v6 = objc_allocWithZone(MEMORY[0x277D23800]);
  sub_2219A0230();
  v7 = OUTLINED_FUNCTION_9();
  v13 = a2;
  v14 = 0;
  v15 = v8(v7);
  v16 = v9;
  v17 = xmmword_221BD0800;
  return (*(a3 + 144))(v11);
}

uint64_t _IdentifiableAppEntityRepresentation<>.value<A>(for:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return OUTLINED_FUNCTION_6(sub_22199FAF0);
}

uint64_t sub_22199FAF0()
{
  v1 = v0[5];
  v2 = v0[4];
  v0[2] = v0[6];

  swift_getAtKeyPath();

  v3 = v0[3];
  EntityProperty.wrappedValue.getter(v2);

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t _IdentifiableAppEntityRepresentation<>.value<A>(for:)(uint64_t a1, void *a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = *a2;
  return OUTLINED_FUNCTION_6(sub_22199FBD8);
}

uint64_t sub_22199FBD8()
{
  v0[10] = v0[14];
  v1 = v0[13];

  swift_getAtKeyPath();

  v0[16] = v0[11];
  EntityProperty.wrappedValue.getter((v0 + 2));
  v2 = v0[2];
  v3 = v0[3];
  v0[17] = v2;
  v0[18] = v3;
  v4 = v0[4];
  v5 = v0[5];
  v0[19] = v4;
  v0[20] = v5;
  if (v4)
  {
    v6 = v0[15];
    v0[6] = v2;
    v0[7] = v3;
    v0[8] = v4;
    v0[9] = v5;
    v7 = swift_task_alloc();
    v0[21] = v7;
    v8 = *(*(v6 + *MEMORY[0x277D84DE8] + 8) + 80);
    *v7 = v0;
    v7[1] = sub_22199FD94;
    v9 = v0[12];

    return CustomAppEntityRepresentationBase.Deferred.value.getter(v9);
  }

  else
  {
    sub_2219A1218();
    swift_allocError();
    *v11 = 0xD000000000000019;
    *(v11 + 8) = 0x8000000221BEC460;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_25();

    return v12();
  }
}

uint64_t sub_22199FD94()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_22199FF1C;
  }

  else
  {
    v3 = sub_22199FEA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22199FEA8()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_22199FF1C()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];

  OUTLINED_FUNCTION_31();
  v6 = v0[22];
  OUTLINED_FUNCTION_25();

  return v7();
}

uint64_t sub_22199FF90(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  v4 = *(v1 + 56);
  v7 = *(v1 + 80);
  v6 = *(v1 + 88);
  (*(v1 + 32))(v39);
  __swift_project_boxed_opaque_existential_0(v39, v40);
  v8 = OUTLINED_FUNCTION_17();
  v10 = v9(v8);
  v12 = v11;
  if (v5())
  {
    strcpy(v34, "(transient) ");
    BYTE5(v34[1]) = 0;
    HIWORD(v34[1]) = -5120;
    v13 = v41;
    __swift_project_boxed_opaque_existential_0(v39, v40);
    v14 = *(v13 + 24);
    v15 = OUTLINED_FUNCTION_15();
    v17 = v16(v15);
    MEMORY[0x223DA31F0](v17);
  }

  else
  {
    v18 = v41;
    __swift_project_boxed_opaque_existential_0(v39, v40);
    v19 = *(v18 + 24);
    v20 = OUTLINED_FUNCTION_15();
    v21(v20);
  }

  v34[1] = 0xE000000000000000;
  sub_221BCDE68();

  v37 = v10;
  v38 = v12;
  MEMORY[0x223DA31F0](0x6669746E65646928, 0xEC0000003A726569);
  v22 = OUTLINED_FUNCTION_14();
  v24 = sub_2219C0D58(v22, v23, v2);
  v26 = v25;

  MEMORY[0x223DA31F0](v24, v26);

  v27 = MEMORY[0x223DA31F0](0x7265706F7270202CLL, 0xED00003A73656974);
  v28 = v7(v27);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7750, &unk_221BD0CC0);
  v36 = sub_2219A19D8();
  v34[0] = v28;
  v29 = __swift_project_boxed_opaque_existential_0(v34, v35);
  v30 = sub_2219B6438(v2, *v29);
  v32 = v31;
  __swift_destroy_boxed_opaque_existential_0(v34);
  MEMORY[0x223DA31F0](v30, v32);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return OUTLINED_FUNCTION_0_0();
}

id sub_2219A0230()
{
  v1 = sub_221BCD358();

  v2 = sub_221BCD358();

  v3 = [v0 initWithTypeIdentifier:v1 instanceIdentifier:v2];

  return v3;
}

uint64_t sub_2219A02E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_29(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_0_0();
  v9(v8);
  return v4;
}

unint64_t sub_2219A0334()
{
  result = qword_27CFB7688;
  if (!qword_27CFB7688)
  {
    sub_2219A1D20(255, &qword_27CFBB8B0, 0x277D23800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7688);
  }

  return result;
}

void sub_2219A039C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v6 = *v2;
  sub_221B9EA30(a1);
  if (v7)
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_26();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB77C0, &qword_221BD0D28);
    OUTLINED_FUNCTION_8();
    sub_221BCE028();
    v8 = *(v16 + 48);
    v9 = sub_221BCC558();
    OUTLINED_FUNCTION_2_1(v9);
    (*(v10 + 8))(v8 + *(v10 + 72) * v3, v9);
    memcpy(a2, (*(v16 + 56) + 168 * v3), 0xA8uLL);
    OUTLINED_FUNCTION_1_2();
    sub_2219A1350(v11, v12);
    sub_221BCE048();
    *v4 = v16;
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_36();

    bzero(v13, v14);
  }
}

void sub_2219A04D4(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_221B9E9B8(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7768, &qword_221BE9980);
    OUTLINED_FUNCTION_8();
    sub_221BCE028();
    v11 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_2219A1AB0((*(v12 + 56) + 32 * v9), a3);
    OUTLINED_FUNCTION_12();
    sub_221BCE048();
    *v4 = v12;
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_2219A0610()
{
  OUTLINED_FUNCTION_28();
  v3 = sub_221B9E9B8(v1, v2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v0;
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v0;
  v7 = *(*v0 + 24);
  v8 = OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_8();
  sub_221BCE028();
  v10 = *(*(v15 + 48) + 16 * v5 + 8);

  v11 = *(*(v15 + 56) + 8 * v5);
  v12 = OUTLINED_FUNCTION_24();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_27();
  sub_221BCE048();
  *v0 = v15;
  return v11;
}

void sub_2219A06F4()
{
  OUTLINED_FUNCTION_28();
  sub_221B9EA30(v2);
  if (v3)
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7748, &qword_221BE8C80);
    OUTLINED_FUNCTION_8();
    sub_221BCE028();
    v4 = *(v10 + 48);
    v5 = sub_221BCC558();
    OUTLINED_FUNCTION_2_1(v5);
    (*(v6 + 8))(v4 + *(v6 + 72) * v1, v5);
    v7 = *(*(v10 + 56) + 8 * v1);
    type metadata accessor for RemoteAppNotificationSink();
    OUTLINED_FUNCTION_1_2();
    sub_2219A1350(v8, v9);
    OUTLINED_FUNCTION_1_0();
    sub_221BCE048();
    *v0 = v10;
  }

  OUTLINED_FUNCTION_36();
}

void sub_2219A07F8()
{
  OUTLINED_FUNCTION_28();
  sub_221B9EAA0(v2);
  if (v3)
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7728, &qword_221BD0CA0);
    OUTLINED_FUNCTION_8();
    sub_221BCE028();
    v4 = *(*(v5 + 56) + 8 * v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7730, &qword_221BD0CA8);
    OUTLINED_FUNCTION_1_0();
    sub_221BCE048();
    *v0 = v5;
  }

  OUTLINED_FUNCTION_36();
}

void sub_2219A08AC()
{
  OUTLINED_FUNCTION_28();
  sub_221B9EB98(v2);
  if (v3)
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7738, &unk_221BD0CB0);
    OUTLINED_FUNCTION_8();
    sub_221BCE028();
    v4 = *(v8 + 48);
    v5 = _s17LNConnectionStoreC9AssertionOMa();
    OUTLINED_FUNCTION_2_1(v5);
    sub_2219A197C(v4 + *(v6 + 72) * v1);
    v7 = *(*(v8 + 56) + 8 * v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7730, &qword_221BD0CA8);
    sub_2219A1350(&qword_27CFB7740, _s17LNConnectionStoreC9AssertionOMa);
    OUTLINED_FUNCTION_1_0();
    sub_221BCE048();
    *v0 = v8;
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_2219A0A00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_221B9EA30(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    swift_isUniquelyReferenced_nonNull_native();
    v31 = *v11;
    v18 = *(*v11 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_8();
    sub_221BCE028();
    v19 = *(v31 + 48);
    v20 = sub_221BCC558();
    OUTLINED_FUNCTION_2_1(v20);
    (*(v21 + 8))(v19 + *(v21 + 72) * v16, v20);
    v22 = *(v31 + 56);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_2_1(v23);
    sub_2219A182C(v22 + *(v24 + 72) * v16, a6, a4, a5);
    OUTLINED_FUNCTION_1_2();
    sub_2219A1350(v25, v26);
    OUTLINED_FUNCTION_12();
    sub_221BCE048();
    *v11 = v31;
    v27 = a6;
    v28 = 0;
    v29 = v23;
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v27 = a6;
    v28 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
}

unint64_t sub_2219A0B94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  result = sub_221B9ECA8(a1);
  if (v7)
  {
    v8 = result;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v10 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7718, &qword_221BD0C98);
    sub_221BCE028();
    memcpy(__dst, (*(v11 + 48) + 72 * v8), sizeof(__dst));
    sub_2219A1878(__dst);
    sub_2219A18CC(*(v11 + 56) + 16 * v8, a2);
    sub_2219A1928();
    OUTLINED_FUNCTION_12();
    result = sub_221BCE048();
    *v3 = v11;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = -1;
  }

  return result;
}

void sub_2219A0C88(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_221BCE228();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    v26 = *i;

    v11 = sub_221B9E9B8(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB77B8, &qword_221BD0D18);
      sub_221BCE038();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_221BB580C(v14);
  v16 = *a3;
  v17 = sub_221B9E9B8(v7, v6);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();

  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD00000000000001BLL, 0x8000000221BEC530);
  sub_221BCE018();
  MEMORY[0x223DA31F0](39, 0xE100000000000000);
  sub_221BCE058();
  __break(1u);
}

void sub_2219A0F70(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30(a1, a2);
  if (v2)
  {
    v5 = (v4 + 48);
    while (2)
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v9 = *v5;
      v5 += 24;
      v8 = v9;
      switch(v9 >> 5)
      {
        case 1u:
          MEMORY[0x223DA4060](3);

          sub_221BCD448();
          goto LABEL_10;
        case 2u:
          MEMORY[0x223DA4060](4);

          sub_221BCD448();
          MEMORY[0x223DA4060](v8 & 0x1F);
          goto LABEL_10;
        case 3u:
          v11 = 5;
          goto LABEL_8;
        case 4u:
          v11 = 6;
LABEL_8:
          MEMORY[0x223DA4060](v11);

          sub_2219A0F70(v3, v6);
LABEL_10:
          sub_2219A1B7C(v6, v7, v8);
          goto LABEL_16;
        case 5u:
          v10 = v7 | v6 || v8 != 160;
          goto LABEL_15;
        default:
          MEMORY[0x223DA4060](2);
          v10 = v6;
LABEL_15:
          MEMORY[0x223DA4060](v10);
LABEL_16:
          if (!--v2)
          {
            return;
          }

          continue;
      }
    }
  }
}

void sub_2219A1098(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      OUTLINED_FUNCTION_16();
      sub_221BCD448();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_2219A10FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x223DA4060](v3);
  if (v3)
  {
    v4 = (a2 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *v4;

      sub_221BCD448();
      sub_221BCE328();
      if (v7)
      {
        v9 = v8;
        sub_221BCDC68();
      }

      else
      {
      }

      v4 += 5;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_2219A1200(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2219A1218()
{
  result = qword_27CFB8300;
  if (!qword_27CFB8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8300);
  }

  return result;
}

uint64_t sub_2219A126C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_2219A12B4()
{
  result = qword_27CFB76A0;
  if (!qword_27CFB76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB76A0);
  }

  return result;
}

uint64_t sub_2219A1350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CustomAppEntityRepresentationBase()
{
  result = qword_27CFB76B8;
  if (!qword_27CFB76B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2219A13E4(uint64_t a1)
{
  result = sub_2219A140C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2219A140C()
{
  result = qword_27CFB76B0;
  if (!qword_27CFB76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB76B0);
  }

  return result;
}

uint64_t sub_2219A14B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219A14F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2219A1598()
{
  result = sub_221BCC558();
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

uint64_t get_enum_tag_for_layout_string_18AppIntentsServices21DisplayRepresentationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2219A174C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219A178C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2219A182C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_29(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_0_0();
  v9(v8);
  return v4;
}

unint64_t sub_2219A1928()
{
  result = qword_27CFB7720;
  if (!qword_27CFB7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7720);
  }

  return result;
}

uint64_t sub_2219A197C(uint64_t a1)
{
  v2 = _s17LNConnectionStoreC9AssertionOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2219A19D8()
{
  result = qword_27CFB7758;
  if (!qword_27CFB7758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB7750, &unk_221BD0CC0);
    sub_2219A1A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7758);
  }

  return result;
}

unint64_t sub_2219A1A5C()
{
  result = qword_27CFB7760;
  if (!qword_27CFB7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7760);
  }

  return result;
}

_OWORD *sub_2219A1AB0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2219A1ACC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1 + 2);
}

uint64_t sub_2219A1B08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2219A1B6C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2219A1B7C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if ((v3 - 1) < 2 || v3 == 4 || v3 == 3)
  {
  }

  return result;
}

double sub_2219A1C60(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_2219A1CC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2219A1D20(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7()
{
  *(v0 - 272) = 0;
  *(v0 - 288) = 0u;
  *(v0 - 304) = 0u;
  return v0 - 304;
}

void *OUTLINED_FUNCTION_19()
{
  v2 = *(v0 - 200);
  v3 = *(v0 - 208);

  return __swift_project_boxed_opaque_existential_0((v0 - 232), v3);
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_23()
{

  JUMPOUT(0x223DA4C00);
}

uint64_t OUTLINED_FUNCTION_25()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  JUMPOUT(0x223DA4060);
}

uint64_t OUTLINED_FUNCTION_31()
{

  return sub_2219A126C(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_32()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_221BCE328();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return sub_221BCE328();
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_2219A02B8(va);
}

void *static AppEntityTypeDescribing<>.queryAllEntities()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  (*(a2 + 8))();
  (*(a2 + 16))(a1, a2);
  OUTLINED_FUNCTION_6_0();
  return sub_221A1E758(v6, a3);
}

uint64_t static AppEntityTypeDescribing<>.queryByProperties(propertyQuery:maximumResultCount:sortingOptions:queryTarget:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  v10 = *(a4 + 16);
  v9 = *(a4 + 24);
  v11 = *(a4 + 32);
  v12 = (*(a6 + 8))(a5, a6);
  v14 = v13;
  v15 = type metadata accessor for AppEntityQueryRepresentation.TypedPropertyQuery();
  sub_221A1E768(v15, v23);
  v23[9] = a1;
  v24 = a2 & 1;
  v25 = a3;
  v26 = v7;
  v27 = v8;
  v28 = v10;
  v29 = v9;
  v30 = v11;
  v31 = 4;
  __src[0] = v12;
  __src[1] = v14;
  v22 = xmmword_221BD0800;
  sub_221A1E758(__src, a7);
  sub_2219A2B7C(v7, v8, v10, v9, v11);
}

uint64_t static AppEntityTypeDescribing<>.queryBySearchableItems(items:queryTarget:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  (*(a3 + 8))(a2, a3);
  OUTLINED_FUNCTION_6_0();
  sub_221A1E758(v5, a4);
  sub_2219A2B7C(v7, v8, v9, v10, v11);
}

uint64_t static AppEntityTypeDescribing<>.queryByString(matching:queryTarget:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  (*(a3 + 8))(a2, a3);
  OUTLINED_FUNCTION_6_0();
  sub_221A1E758(v5, a4);
  sub_2219A2B7C(v7, v8, v9, v10, v11);
}

void *sub_2219A23E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  (*(a2 + 8))();
  (*(a2 + 16))(a1, a2);
  OUTLINED_FUNCTION_6_0();
  return sub_221A1E758(v6, a3);
}

void *static _IdentifiableAppEntityRepresentation<>.queryByIdentifier(instanceIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = (*(*(a3 + 16) + 8))(a2);
  v10 = v8;
  v11 = v9;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v31 = v9;
    v32 = v8;
    v33 = a4;
    v35 = MEMORY[0x277D84F90];
    sub_2219A3014(0, v12, 0);
    v13 = v35;
    v14 = (a1 + 40);
    do
    {
      v15 = *v14;
      v34[0] = *(v14 - 1);
      v34[1] = v15;
      sub_2219A2744(v34, a2, a3, __src);
      v35 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2219A3014(v16 > 1, v17 + 1, 1);
      }

      v18 = *(&v37 + 1);
      v19 = v38;
      v20 = __swift_mutable_project_boxed_opaque_existential_1(__src, *(&v37 + 1));
      v21 = *(*(v18 - 8) + 64);
      MEMORY[0x28223BE20](v20);
      v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v23);
      sub_2219A4CD8(v17, v23, &v35, v18, v19);
      __swift_destroy_boxed_opaque_existential_0(__src);
      v13 = v35;
      v14 += 2;
      --v12;
    }

    while (v12);
    a4 = v33;
    v10 = v32;
    v11 = v31;
  }

  sub_2219A28C8(v13, __src);
  v25 = *(&v37 + 1);
  if (*(&v37 + 1))
  {
    v26 = v38;
    __swift_project_boxed_opaque_existential_0(__src, *(&v37 + 1));
    v25 = (*(v26 + 16))(v25, v26);
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0(__src);
  }

  else
  {
    sub_2219A4DC0(__src);
    v28 = 0xE000000000000000;
  }

  v38 = v13;
  v39 = v25;
  v41 = 0;
  v42 = 0;
  v40 = v28;
  v43 = 0;
  v44 = 1;
  __src[0] = v10;
  __src[1] = v11;
  v37 = xmmword_221BD0800;
  return sub_221A1E758(__src, a4);
}

unint64_t sub_2219A2744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  (*(*(a3 + 16) + 16))(a2);
  v7 = objc_allocWithZone(MEMORY[0x277D23800]);

  v8 = sub_2219A0230();
  a4[3] = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  result = sub_2219A0334();
  a4[4] = result;
  *a4 = v8;
  return result;
}

uint64_t sub_2219A280C(uint64_t a1)
{
  v2 = sub_2219A4924(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_2219A49C8(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_2219A4CA4(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_2219A4E2C(v7, v9, v11 & 1);
  v13 = OUTLINED_FUNCTION_3_2();
  if (v12)
  {
    sub_2219A4E2C(v13, v14, v15);
    return 0;
  }

  else
  {
    sub_2219A4A1C(v13, v14, v15, a1);
    v16 = v17;
    v18 = OUTLINED_FUNCTION_3_2();
    sub_2219A4E2C(v18, v19, v20);
  }

  return v16;
}

double sub_2219A28C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_2219A1B08(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2219A28EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v8 = *(a1 + 32);
    v3 = *(a1 + 48);
    v5 = *(a1 + 56);
    v4 = *(a1 + 64);
    *(a2 + 16) = v3;

    v7 = v8;
  }

  else
  {
    v5 = 0;
    result = 0;
    *(a2 + 16) = 0;
    v7 = 0uLL;
  }

  *a2 = v7;
  *(a2 + 24) = v5;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_2219A2954(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_7_0(a1);
  v5 = _s15DeviceDiscoveryC14DeviceEndpointVMa(v4);
  v6 = v5;
  if (v3)
  {
    sub_2219A4E38(v2 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v1);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v1, v7, 1, v6);
}

uint64_t sub_2219A29EC(uint64_t a1)
{
  OUTLINED_FUNCTION_7_0(a1);
  v4 = sub_221BCCEE8();
  v5 = v4;
  if (v3)
  {
    (*(*(v4 - 8) + 16))(v1, v2 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v4);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v1, v6, 1, v5);
}

void *sub_2219A2A88(uint64_t a1)
{
  result = sub_221BA1250(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_221BA0C50(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_2219A2B14(uint64_t a1)
{
  result = sub_2219A4988(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_2219A4C28(result, v3, 0, a1);
  }
}

uint64_t sub_2219A2B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 && a5 != 2)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

char *sub_2219A2BE4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_3(a3, result);
  }

  return result;
}

char *sub_2219A2C0C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_3(a3, result);
  }

  return result;
}

char *sub_2219A2C2C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_3(a3, result);
  }

  return result;
}

char *sub_2219A2C54(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_3(a3, result);
  }

  return result;
}

char *sub_2219A2C74(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[128 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_3(a3, result);
  }

  return result;
}

char *sub_2219A2C94(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_3(a3, result);
  }

  return result;
}

char *sub_2219A2CB8(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

void sub_2219A2CF8()
{
  OUTLINED_FUNCTION_5_0();
  if (v4 >= v2 && v2 + 8 * v3 > v4)
  {
    if (v1 != v0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D8, &unk_221BE94B0);
      OUTLINED_FUNCTION_1_3();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D8, &unk_221BE94B0);
    OUTLINED_FUNCTION_1_3();

    swift_arrayInitWithTakeFrontToBack();
  }
}

uint64_t sub_2219A2DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_5_0();
  if (v11 < v10 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), v6 + *(*(result - 8) + 72) * v5 <= v7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_1_3();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v7 != v6)
  {
    OUTLINED_FUNCTION_1_3();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2219A2ECC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_3(a3, result);
  }

  return result;
}

uint64_t sub_2219A2EF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_5_0();
  if (v9 < v8 || (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 <= v6))
  {
    a4(0);
    OUTLINED_FUNCTION_1_3();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v6 != v5)
  {
    OUTLINED_FUNCTION_1_3();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2219A2FB4(char *a1, int64_t a2, char a3)
{
  result = sub_2219A3714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2219A2FD4(void *a1, int64_t a2, char a3)
{
  result = sub_2219A381C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A2FF4(char *a1, int64_t a2, char a3)
{
  result = sub_2219A3954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2219A3054(void *a1, int64_t a2, char a3)
{
  result = sub_2219A3A6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2219A3074(void *a1, int64_t a2, char a3)
{
  result = sub_2219A3BA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A3094(char *a1, int64_t a2, char a3)
{
  result = sub_2219A3CDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A30B4(char *a1, int64_t a2, char a3)
{
  result = sub_2219A3DE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A30D4(char *a1, int64_t a2, char a3)
{
  result = sub_2219A3EF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A3134(char *a1, int64_t a2, char a3)
{
  result = sub_2219A4130(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A31AC(char *a1, int64_t a2, char a3)
{
  result = sub_2219A4244(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A3204(char *a1, int64_t a2, char a3)
{
  result = sub_2219A434C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A3574(char *a1, int64_t a2, char a3)
{
  result = sub_2219A4714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2219A35EC(void *a1, int64_t a2, char a3)
{
  result = sub_2219A4814(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2219A3714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2219A381C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78C0, &qword_221BD0DF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78C8, &qword_221BD0E00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2219A3954(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7908, &unk_221BD19D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2219A3A6C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7800, &qword_221BD0D60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[10 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7808, &qword_221BD1840);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2219A3BA4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB77F8, &qword_221BD0D58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[11 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB710, &qword_221BD1850);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2219A3CDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78E0, &qword_221BD0E08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2219A3DE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7890, &qword_221BD0DD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2219A3EF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78A8, &qword_221BD2440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2219A4008(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    OUTLINED_FUNCTION_4_1();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 40);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v17 != a4 || &a4[5 * v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 40 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

char *sub_2219A4130(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7888, &qword_221BD0DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2219A4244(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7850, &qword_221BD0DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2219A434C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7820, &unk_221BD1970);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[96 * v8] <= v12)
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2219A4464(char a1, uint64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_4_1();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 2);
  if (v8 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 32);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (a1)
  {
    if (v13 != a4 || &v16[32 * v11] <= v15)
    {
      memmove(v15, v16, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2219A455C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_4_1();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_2219A2EF4(a4 + v24, v15, v20 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_2219A4714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7830, &qword_221BD0D80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void *sub_2219A4814(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D0, &unk_221BD1990);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_2219A2CF8();
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78D8, &unk_221BE94B0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2219A4924(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_221BCDD58();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_221BCDD28();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2219A4988(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_221BCDD28();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2219A49C8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_221BCDDF8();
  }

  result = 1 << *(a1 + 32);
  v3 = *(a1 + 36);
  return result;
}

void sub_2219A4A1C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x223DA3B10](a1, a2, v7);
      sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
    if (sub_221BCDD88() == *(a4 + 36))
    {
      sub_221BCDD98();
      swift_dynamicCast();
      v4 = v15;
      v8 = *(a4 + 40);
      v9 = sub_221BCDC48();
      v10 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v9 & v10;
        if (((*(a4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_221BCDC58();

        if (v12)
        {
          goto LABEL_18;
        }

        v9 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_2219A4C28(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL sub_2219A4CA4(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x223DA3AC0);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_2219A4CD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_22198B358(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2219A4DC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB77E0, &qword_221BD4CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2219A4E2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2219A4E38(uint64_t a1, uint64_t a2)
{
  v4 = _s15DeviceDiscoveryC14DeviceEndpointVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

id AppEntitySpecification.lnValue.getter()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  v5 = sub_22199B82C(v3, v4);
  if (v2 == 1)
  {
    v6 = v1[6];
    v7 = *(v6 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v29[0] = MEMORY[0x277D84F90];
      sub_221BCDF28();
      v9 = (v6 + 48);
      do
      {
        v10 = *(v9 - 2);
        v11 = *(v9 - 1);
        v12 = *v9;
        v9 += 5;
        objc_allocWithZone(MEMORY[0x277D238D8]);
        v13 = v12;

        sub_2219A62D8(v10, v11, v12);
        sub_221BCDEF8();
        v14 = *(v29[0] + 16);
        sub_221BCDF38();
        sub_221BCDF48();
        sub_221BCDF08();
        --v7;
      }

      while (v7);
      v8 = v29[0];
    }

    v15 = objc_allocWithZone(MEMORY[0x277D237F0]);
    v16 = sub_2219A6190(1, v5, v8, 0, 0);
    v30 = sub_2219A1D20(0, &qword_27CFB77D0, 0x277D237F0);
    v29[0] = v16;
    sub_2219A1D20(0, &qword_27CFB7668, 0x277D23828);
    v17 = v1[3];
    v18 = v1[4];
    __swift_project_boxed_opaque_existential_0(v1, v17);
    v19 = *(v18 + 16);
    v20 = v16;
    v19(v17, v18);
    v21 = sub_2219A51F4();
    v22 = objc_allocWithZone(MEMORY[0x277D23958]);
    v23 = sub_2219A6260(v29, v21);
  }

  else
  {
    v30 = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
    v29[0] = v5;
    v24 = objc_allocWithZone(MEMORY[0x277D23810]);
    v25 = v5;
    v26 = [v24 init];
    v27 = objc_allocWithZone(MEMORY[0x277D23958]);
    v23 = sub_2219A6260(v29, v26);
  }

  return v23;
}

id sub_2219A51F4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_221BCD358();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t AppEntitySpecification.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  *(a2 + 24) = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  *(a2 + 32) = sub_2219A0334();
  *a2 = v4;
  *(a2 + 40) = [a1 isTransient];
  v5 = [a1 properties];
  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v6 = sub_221BCD668();

  v7 = sub_2219A616C(v6);
  if (!v7)
  {

    v11 = MEMORY[0x277D84F90];
LABEL_12:
    *(a2 + 48) = v11;
    return result;
  }

  v8 = v7;
  v27 = MEMORY[0x277D84F90];
  result = sub_2219A2FF4(0, v7 & ~(v7 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v24 = a1;
    v25 = a2;
    v10 = 0;
    v11 = v27;
    v26 = v6 & 0xC000000000000001;
    v12 = v6;
    v13 = v8;
    do
    {
      if (v26)
      {
        v14 = MEMORY[0x223DA3BF0](v10, v6);
      }

      else
      {
        v14 = *(v6 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = [v14 identifier];
      v17 = sub_221BCD388();
      v19 = v18;

      v20 = [v15 value];
      v22 = *(v27 + 16);
      v21 = *(v27 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2219A2FF4((v21 > 1), v22 + 1, 1);
      }

      ++v10;
      *(v27 + 16) = v22 + 1;
      v23 = (v27 + 40 * v22);
      v23[4] = v17;
      v23[5] = v19;
      v23[7] = 0;
      v23[8] = 0;
      v23[6] = v20;
      v6 = v12;
    }

    while (v13 != v10);

    a2 = v25;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t static AppEntitySpecification.identifiableEntity<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(a2 + 16))(a1, a2);
  (*(a2 + 24))(a1, a2);
  v6 = objc_allocWithZone(MEMORY[0x277D23800]);

  v7 = sub_2219A0230();
  *(a3 + 24) = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  *(a3 + 32) = sub_2219A0334();
  *a3 = v7;

  *(a3 + 40) = 0;
  *(a3 + 48) = MEMORY[0x277D84F90];
  return result;
}

unint64_t static AppEntitySpecification.identifiableEntity(typeIdentifier:instanceIdentifier:)@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277D23800]);

  v3 = sub_2219A0230();
  *(a1 + 24) = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  result = sub_2219A0334();
  *(a1 + 32) = result;
  *a1 = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = MEMORY[0x277D84F90];
  return result;
}

uint64_t static AppEntitySpecification.transientEntity<A>(typeIdentifier:properties:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_221BCD618();
  static AppEntitySpecification.transientEntity(typeIdentifier:properties:)(a1, a2);
}

uint64_t static AppEntitySpecification.transientEntity(typeIdentifier:properties:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_221BCC558();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_221BCC548();
  sub_221BCC4E8();
  (*(v5 + 8))(v8, v4);
  v9 = objc_allocWithZone(MEMORY[0x277D23800]);
  v10 = sub_2219A0230();
  *(a2 + 24) = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  *(a2 + 32) = sub_2219A0334();
  *a2 = v10;
  *(a2 + 40) = 1;
  *(a2 + 48) = a1;
}

unint64_t static AppEntitySpecification.uniqueEntity(typeIdentifier:)@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277D23800]);

  v3 = sub_2219A0230();
  *(a1 + 24) = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  result = sub_2219A0334();
  *(a1 + 32) = result;
  *a1 = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = MEMORY[0x277D84F90];
  return result;
}

uint64_t static AppEntitySpecification.canConvert(_:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 valueType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  static AppEntitySpecification.canConvertFrom(_:)(v1);
  v4 = v3;

  return v4 & 1;
}

void static AppEntitySpecification.canConvertFrom(_:)(id a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_19;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    a1 = a1;
    v4 = [v3 memberValueTypes];
    sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
    v5 = sub_221BCD668();

    v19 = MEMORY[0x277D84F90];
    v6 = sub_2219A616C(v5);
    for (i = 0; ; ++i)
    {
      if (v6 == i)
      {

        sub_2219A616C(v19);

        goto LABEL_19;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223DA3BF0](i, v5);
      }

      else
      {
        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_221BCDEF8();
        v10 = *(v19 + 16);
        sub_221BCDF38();
        sub_221BCDF48();
        sub_221BCDF08();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (qword_27CFB7388 != -1)
  {
LABEL_22:
    swift_once();
  }

  v11 = sub_221BCCD88();
  __swift_project_value_buffer(v11, qword_27CFDEDF8);
  v12 = a1;
  v13 = sub_221BCCD68();
  v14 = sub_221BCDA78();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v15 = 138412546;
    *(v15 + 4) = v12;
    *v16 = v12;
    *(v15 + 12) = 2080;
    v18 = v12;
    *(v15 + 14) = sub_2219A6360(0xD000000000000016, 0x8000000221BD0E20, &v19);
    _os_log_impl(&dword_221989000, v13, v14, "Cannot convert from %@ to %s", v15, 0x16u);
    sub_2219A6860(v16, &unk_27CFB7630, qword_221BD0790);
    MEMORY[0x223DA4C00](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x223DA4C00](v17, -1, -1);
    MEMORY[0x223DA4C00](v15, -1, -1);
  }

LABEL_19:
  OUTLINED_FUNCTION_1_4();
}

double static AppEntitySpecification.from(_:context:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_2219A1D20(0, &qword_27CFB77D0, 0x277D237F0);
  if (swift_dynamicCast())
  {
    AppEntitySpecification.init(_:)(v5, a2);
  }

  else
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

void AppEntitySpecification.propertyValueWithIdentifier<A>(_:context:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 48);
  v11 = (v10 + 48);
  v12 = *(v10 + 16) + 1;
  while (--v12)
  {
    v13 = *v11;
    if (*(v11 - 2) != a1 || *(v11 - 1) != a2)
    {
      v11 += 5;
      if ((sub_221BCE1B8() & 1) == 0)
      {
        continue;
      }
    }

    if (v13)
    {
      v15 = *(a5 + 24);
      v34 = v13;
      v16 = v15(v13, a4, a5);
      if (v16)
      {
        v24 = OUTLINED_FUNCTION_0_4(v16, v17, v18, v19, v20, v21, v22, v23, v33, v34);
        v25(v24);
        OUTLINED_FUNCTION_1_4();

        return;
      }
    }

    break;
  }

  OUTLINED_FUNCTION_1_4();

  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
}

uint64_t AppEntitySpecification.propertyValueWithIdentifier<A, B>(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_221BCD618();
  AppEntitySpecification.propertyValueWithIdentifier<A>(_:context:)(v9, v10, a2, a3, a5);
}

void AppEntitySpecification.firstPropertyValue<A>(context:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 48);
  if (*(v6 + 16))
  {
    v7 = *(v6 + 48);
    if (v7)
    {
      v9 = *(a2 + 24);
      v21 = v7;
      v10 = v9(v7, a1, a2);
      if (v10)
      {
        v18 = OUTLINED_FUNCTION_0_4(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21);
        v19(v18);

        return;
      }
    }
  }

  __swift_storeEnumTagSinglePayload(a3, 1, 1, a1);
}

uint64_t static AppEntityConvertible.canConvert(_:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 valueType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  static AppEntitySpecification.canConvertFrom(_:)(v1);
  v4 = v3;

  return v4 & 1;
}

id AppEntityConvertible.lnValue.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v4);
  v2 = AppEntitySpecification.lnValue.getter();
  sub_2219A1BD4(v4);
  return v2;
}

uint64_t static AppEntityConvertible.from(_:context:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  static AppEntitySpecification.from(_:context:)(a1, &v10);
  if (*(&v11 + 1))
  {
    v14[0] = v10;
    v14[1] = v11;
    v14[2] = v12;
    v15 = v13;
    (*(a4 + 32))(v14, a2, a3, a4);
    return sub_2219A1BD4(v14);
  }

  else
  {
    sub_2219A6860(&v10, &qword_27CFB7920, &qword_221BD0E60);
    return __swift_storeEnumTagSinglePayload(a5, 1, 1, a3);
  }
}

uint64_t sub_2219A616C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_221BCDDA8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_2219A6190(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v9 = sub_221BCD658();

  if (a5)
  {
    v10 = sub_221BCD358();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 initWithTransient:a1 & 1 identifier:a2 properties:v9 managedAccountIdentifier:v10];

  return v11;
}

id sub_2219A6260(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = [v2 initWithValue:sub_221BCE1A8() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

id sub_2219A62D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_221BCD358();

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

unint64_t sub_2219A633C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2219A6360(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2219A6424(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_22199B650(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2219A6424(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2219A6524(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_221BCDEE8();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2219A6524(uint64_t a1, unint64_t a2)
{
  v4 = sub_2219A6570(a1, a2);
  sub_2219A6688(&unk_283511858);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2219A6570(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_221BCD4C8())
  {
    result = sub_221B95CE4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_221BCDE48();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_221BCDEE8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2219A6688(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_2219A676C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2219A676C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFB7928, &unk_221BE8640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2219A6860(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2219A68DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219A691C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CustomAppEntityRepresentationBase.Deferred.value.getter(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 48) = v7;
  *v7 = v2;
  v7[1] = sub_2219A6AF0;

  return v9(a1, v2 + 16);
}

uint64_t sub_2219A6AF0()
{
  OUTLINED_FUNCTION_1_5();
  v2 = *(*v1 + 48);
  v3 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;
  *(v5 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2219A6C14, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v6();
  }
}

uint64_t sub_2219A6C14()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 56);
  return v2();
}

uint64_t sub_2219A6C40@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  sub_2219A1B08(a2, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7658, &unk_221BD0810);
  if (swift_dynamicCast())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v11 = *(&v24 + 1);
    sub_22199C274(v23);
  }

  else
  {
    v24 = 0u;
    memset(v23, 0, sizeof(v23));
    sub_2219A76B4(v23);
    Strong = 0;
    v11 = 0;
  }

  v13 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v13);
  v14 = (*(v12 + 8))(v13, v12);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_0(a2);
  v17 = swift_allocObject();
  swift_weakInit();

  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = v17;
  v18[6] = Strong;
  v18[7] = v11;
  *a6 = v14;
  a6[1] = v16;
  a6[2] = &unk_221BD1018;
  a6[3] = v18;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2219A6DEC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  *(v8 + 72) = a1;
  v9 = a2[1];
  *(v8 + 128) = *a2;
  *(v8 + 144) = v9;
  return MEMORY[0x2822009F8](sub_2219A6E20, 0, 0);
}

uint64_t sub_2219A6E20()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (*(v0 + 88))
    {
      v5 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = *(v0 + 96);
      v7 = *(v0 + 88);
      ObjectType = swift_getObjectType();
      *(v0 + 16) = v5;
      *(v0 + 24) = v4;
      *(v0 + 32) = *(v0 + 144);
      swift_unknownObjectRetain();
      v9 = swift_task_alloc();
      *(v0 + 168) = v9;
      *v9 = v0;
      v9[1] = sub_2219A700C;
      v10 = *(v0 + 112);
      v11 = *(v0 + 120);
      v12 = *(v0 + 104);
      v13 = *(v0 + 72);

      return AppIntentDispatching.value<A, B>(for:from:)(v13, (v0 + 16), v3, ObjectType, v10, v12, v6, v11);
    }

    sub_2219A1218();
    v17 = swift_allocError();
    *v18 = 0xD000000000000012;
    v18[1] = 0x8000000221BEC550;
    OUTLINED_FUNCTION_2_3(v17, v18);
  }

  else
  {
    sub_2219A1218();
    v15 = swift_allocError();
    *v16 = xmmword_221BD0F00;
    OUTLINED_FUNCTION_2_3(v15, v16);
  }

  OUTLINED_FUNCTION_25();

  return v19();
}

uint64_t sub_2219A700C()
{
  OUTLINED_FUNCTION_1_5();
  v2 = *(*v1 + 168);
  v3 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;
  *(v5 + 176) = v0;

  if (v0)
  {
    v6 = sub_2219A717C;
  }

  else
  {
    v6 = sub_2219A7114;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2219A7114()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 160);
  v2 = *(v0 + 88);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_2219A717C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[20];
  v2 = v0[11];

  swift_unknownObjectRelease();
  v3 = v0[22];
  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_2219A71F4@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = sub_221BCDC98();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v11 - v7;
  v9 = v1[3];
  if (v9)
  {
    v10 = v1[2];
    EntityProperty.wrappedValue.getter(&v11 - v7);

    return sub_2219A87C4(v10, v9, v8, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2219A72C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = *(*v5 + 80);
  v12 = sub_221BCDC98();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21[-v15 - 8];
  v23[3] = v10;
  v22 = a4;
  v23[4] = swift_getWitnessTable();
  v23[0] = v5;
  sub_2219A1B08(a2, v21);
  v17 = *(a4 + 24);

  v17(a1, v23, v21, a3, v11, a4);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v11);
  v18 = *(*v5 + 104);
  swift_beginAccess();
  (*(v13 + 40))(v5 + v18, v16, v12);
  return swift_endAccess();
}

uint64_t sub_2219A74B8(uint64_t result, unint64_t a2)
{
  if (!*(v2 + 24))
  {
    v4 = result;
    v5 = sub_221BCD528();

    if (v5)
    {
      v6 = sub_2219BBB74(1uLL, v4, a2);
      v4 = MEMORY[0x223DA3160](v6);
      a2 = v7;
    }

    v8 = *(v2 + 24);
    *(v2 + 16) = v4;
    *(v2 + 24) = a2;
  }

  return result;
}

uint64_t sub_2219A7560@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 - 8);
  v4 = *v2;
  return sub_2219A71F4(a2);
}

uint64_t sub_2219A75D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2219A761C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219A765C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_2219A76B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7660, &unk_221BE7050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2219A771C(uint64_t a1, _OWORD *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2219A77F8;

  return sub_2219A6DEC(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t sub_2219A77F8()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;

  return swift_willThrow();
}

__n128 DeferredEntityPropertySpecification.init(propertyIdentifier:entityIdentifier:app:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v6 = a4[1].n128_u64[0];
  v7 = a4[1].n128_u64[1];
  *a5 = a1;
  *(a5 + 8) = a2;
  sub_22198B358(a3, a5 + 16);
  result = v9;
  *(a5 + 56) = v9;
  *(a5 + 72) = v6;
  *(a5 + 80) = v7;
  return result;
}

__n128 DeferredEntityPropertySpecification.init(propertyIdentifier:entityType:entityInstance:app:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X6>, uint64_t a4@<X8>)
{
  v10 = *a3;
  v5 = a3[1].n128_u64[0];
  v6 = a3[1].n128_u64[1];
  *a4 = a1;
  *(a4 + 8) = a2;
  v7 = objc_allocWithZone(MEMORY[0x277D23800]);
  v8 = sub_2219A0230();
  *(a4 + 40) = sub_22199BA64();
  *(a4 + 48) = sub_2219A0334();
  *(a4 + 16) = v8;
  result = v10;
  *(a4 + 56) = v10;
  *(a4 + 72) = v5;
  *(a4 + 80) = v6;
  return result;
}

uint64_t sub_2219A7A50(char *a1)
{
  v2 = v1;
  v3 = *a1;
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000038, 0x8000000221BEC570);
  MEMORY[0x223DA31F0](*v2, v2[1]);
  MEMORY[0x223DA31F0](0xD00000000000001CLL, 0x8000000221BEC5B0);
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v6 = (*(v5 + 16))(v4, v5);
  MEMORY[0x223DA31F0](v6);

  MEMORY[0x223DA31F0](0x736E69202020200ALL, 0xEF203A65636E6174);
  v7 = v1[5];
  v8 = v1[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v9 = (*(v8 + 24))(v7, v8);
  v11 = sub_2219C0D58(v9, v10, v3);
  v13 = v12;

  MEMORY[0x223DA31F0](v11, v13);

  MEMORY[0x223DA31F0](0x203A7070612029, 0xE700000000000000);
  MEMORY[0x223DA31F0](v2[7], v2[8]);
  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_2219A7C0C(uint64_t a1)
{
  result = sub_2219A7C34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2219A7C34()
{
  result = qword_27CFB79B0[0];
  if (!qword_27CFB79B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFB79B0);
  }

  return result;
}

uint64_t sub_2219A7C90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219A7CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t EntityProperty.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_2_4();
  v5 = *(v4 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_2_4();
  v7 = *(v6 + 80);
  v8 = sub_221BCDC98();
  OUTLINED_FUNCTION_2_1(v8);
  return (*(v9 + 16))(a1, &v1[v5]);
}

uint64_t sub_2219A7DD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2219A7E08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = sub_221BCDC98();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1);
  v12 = *a2;
  return EntityProperty.wrappedValue.setter(v10);
}

uint64_t EntityProperty.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_2_4();
  v5 = *(v4 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_2_4();
  v7 = *(v6 + 80);
  v8 = sub_221BCDC98();
  OUTLINED_FUNCTION_2_1(v8);
  (*(v9 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

void (*EntityProperty.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_1_6();
  v5 = *(v4 + 80);
  v6 = sub_221BCDC98();
  v3[1] = v6;
  v7 = *(v6 - 8);
  v3[2] = v7;
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  EntityProperty.wrappedValue.getter(v9);
  return sub_2219A8060;
}

void sub_2219A8060(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    EntityProperty.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    EntityProperty.wrappedValue.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t EntityProperty.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  EntityProperty.init(identifier:)(a1, a2);
  return v7;
}

uint64_t EntityProperty.init(identifier:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_3();
  __swift_storeEnumTagSinglePayload(v2 + *(v5 + 104), 1, 1, *(v6 + 80));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t EntityProperty.__allocating_init(identifier:wrappedValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  EntityProperty.init(identifier:wrappedValue:)(a1, a2, a3);
  return v9;
}

uint64_t EntityProperty.init(identifier:wrappedValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_3();
  v8 = *(v7 + 104);
  __swift_storeEnumTagSinglePayload(v3 + v8, 1, 1, *(v9 + 80));
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  swift_beginAccess();
  v10 = sub_221BCDC98();
  OUTLINED_FUNCTION_2_1(v10);
  (*(v11 + 40))(v3 + v8, a3);
  swift_endAccess();
  return v3;
}

char *EntityProperty.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  OUTLINED_FUNCTION_1_6();
  v4 = *(v3 + 104);
  v5 = *(v1 + 80);
  v6 = sub_221BCDC98();
  OUTLINED_FUNCTION_2_1(v6);
  (*(v7 + 8))(&v0[v4]);
  return v0;
}

uint64_t EntityProperty.__deallocating_deinit()
{
  EntityProperty.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2219A840C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_1_6();
  v6 = *(v5 + 80);
  v7 = sub_221BCDC98();
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v14 - v10;
  v12 = *(v2 + 24);
  if (v12)
  {
    v13 = *(v2 + 16);
    EntityProperty.wrappedValue.getter(&v14 - v10);

    return NamedProperty.init<A>(identifier:value:)(v13, v12, v11, v6, a1, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2219A84DC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_1_6();
  v8 = *(v7 + 80);
  v9 = sub_221BCDC98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  v14 = (*(a3 + 24))(a1, v8, a3);
  if (v14)
  {
    sub_221B8BC18(a1, v8, a3, v13);
    v15 = *(*v4 + 104);
    swift_beginAccess();
    (*(v10 + 40))(v4 + v15, v13, v9);
    swift_endAccess();
  }

  return v14 & 1;
}

uint64_t sub_2219A869C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_221BCDC98();
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

void OUTLINED_FUNCTION_3_3()
{
  v1 = *v0;
  v0[2] = 0;
  v0[3] = 0;
}

uint64_t sub_2219A87C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_221BCDC98();
  OUTLINED_FUNCTION_0_6(v8);
  (*(v9 + 8))(a3);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = swift_getAssociatedConformanceWitness();
  a4[3] = AssociatedTypeWitness;
  a4[4] = result;
  return result;
}

uint64_t NamedProperty.init<A>(identifier:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = sub_221BCDC98();
  v14 = OUTLINED_FUNCTION_1_7(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v25 - v19;
  (*(v16 + 16))(&v25 - v19, a3, v6);
  if (__swift_getEnumTagSinglePayload(v20, 1, a4) == 1)
  {
    v21 = *(v16 + 8);
    v21(a3, v6);
    result = v21(v20, v6);
    v23 = 0;
  }

  else
  {
    v23 = (*(a5 + 16))(a4, a5);
    (*(v16 + 8))(a3, v6);
    OUTLINED_FUNCTION_0_6(a4);
    result = (*(v24 + 8))(v20, a4);
  }

  *a6 = a1;
  a6[1] = a2;
  a6[2] = v23;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t NamedProperty.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *NamedProperty.value.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

__n128 NamedProperty.intentValueType.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t NamedProperty.IntentValueTypeWrapper.intentValueType.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t NamedProperty.IntentValueTypeWrapper.hashValue.getter()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

uint64_t sub_2219A8B54()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

uint64_t NamedProperty.init<A, B>(identifier:value:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v30 = a5;
  v12 = sub_221BCDC98();
  v13 = OUTLINED_FUNCTION_1_7(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v29 - v18;
  sub_221BCD618();
  v20 = v31;
  v29 = v32;
  (*(v15 + 16))(v19, a2, v6);
  if (__swift_getEnumTagSinglePayload(v19, 1, a3) == 1)
  {
    v21 = *(v15 + 8);
    v21(a2, v6);
    OUTLINED_FUNCTION_0_6(a4);
    (*(v22 + 8))(a1, a4);
    result = v21(v19, v6);
    v24 = 0;
  }

  else
  {
    v24 = (*(v30 + 16))(a3);
    (*(v15 + 8))(a2, v6);
    OUTLINED_FUNCTION_0_6(a4);
    (*(v25 + 8))(a1, a4);
    OUTLINED_FUNCTION_0_6(a3);
    result = (*(v26 + 8))(v19, a3);
  }

  v28 = v29;
  v27 = v30;
  *a6 = v20;
  a6[1] = v28;
  a6[2] = v24;
  a6[3] = a3;
  a6[4] = v27;
  return result;
}

BOOL static NamedProperty.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_221BCE1B8(), result = 0, (v5 & 1) != 0))
  {
    result = (v2 | v3) == 0;
    if (v2)
    {
      if (v3)
      {
        sub_2219A8E5C();
        v7 = v3;
        v8 = v2;
        v9 = sub_221BCDC58();

        return v9 & 1;
      }
    }
  }

  return result;
}

unint64_t sub_2219A8E5C()
{
  result = qword_27CFBB680;
  if (!qword_27CFBB680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFBB680);
  }

  return result;
}

void NamedProperty.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_221BCD448();
  if (v3)
  {
    sub_221BCE328();
    v4 = v3;
    sub_221BCDC68();
  }

  else
  {
    sub_221BCE328();
  }
}

void sub_2219A8F38(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_221BCE328();
    v3 = a2;
    sub_221BCDC68();
  }

  else
  {
    sub_221BCE328();
  }
}

uint64_t NamedProperty.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_221BCE308();
  sub_221BCD448();
  sub_221BCE328();
  if (v3)
  {
    v4 = v3;
    sub_221BCDC68();
  }

  return sub_221BCE358();
}

uint64_t sub_2219A9048()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_221BCE308();
  sub_221BCD448();
  sub_2219A8F38(v5, v3);
  return sub_221BCE358();
}

unint64_t sub_2219A90AC()
{
  result = qword_27CFB7A38;
  if (!qword_27CFB7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7A38);
  }

  return result;
}

unint64_t sub_2219A9104()
{
  result = qword_27CFB7A40;
  if (!qword_27CFB7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7A40);
  }

  return result;
}

uint64_t sub_2219A9158(char *a1)
{
  v2 = 7104878;
  v3 = *a1;
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  if ((v3 & 1) == 0)
  {
    if (v6)
    {
      v13 = [v6 description];
      v2 = sub_221BCD388();
      v12 = v14;

      goto LABEL_7;
    }

LABEL_6:
    v12 = 0xE300000000000000;
    goto LABEL_7;
  }

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v6 valueType];
  v8 = [v7 description];

  v9 = sub_221BCD388();
  v11 = v10;

  MEMORY[0x223DA31F0](v9, v11);
  MEMORY[0x223DA31F0](41, 0xE100000000000000);

  v2 = 0x20656D6F7328;
  v12 = 0xE600000000000000;
LABEL_7:

  MEMORY[0x223DA31F0](8250, 0xE200000000000000);
  MEMORY[0x223DA31F0](v2, v12);

  return v5;
}

uint64_t sub_2219A92A0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_2219A9F18();
}

unint64_t sub_2219A92E0(uint64_t a1)
{
  result = sub_2219A9308();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2219A9308()
{
  result = qword_27CFB7A48;
  if (!qword_27CFB7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7A48);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2219A9370(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219A93B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NamedProperty.IntentValueTypeWrapper(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NamedProperty.IntentValueTypeWrapper(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t static AppEnumRepresentation.from(_:context:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v70 = a4;
  v79 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_7();
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  v77 = &v65 - v12;
  OUTLINED_FUNCTION_0_7();
  v69 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(sub_221BCDC98() - 8) + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - v21;
  v23 = *(a3 + 24);
  v24 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v25);
  AssociatedConformanceWitness = &v65 - v26;
  v74 = v23;
  v68 = *(swift_getAssociatedConformanceWitness() + 8);
  v81 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_7();
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v31);
  v80 = &v65 - v32;
  v33 = a1;
  v34 = [a1 valueType];
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    goto LABEL_19;
  }

  v36 = v35;
  v66 = v8;
  v67 = v28;
  v75 = a3;
  v76 = v22;
  v37 = (*(a3 + 48))(a2, a3);
  v39 = v38;
  v40 = [v36 enumerationIdentifier];
  v41 = sub_221BCD388();
  v43 = v42;

  if (v37 == v41 && v39 == v43)
  {
  }

  else
  {
    v45 = sub_221BCE1B8();

    if ((v45 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v46 = [v33 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    v61 = v70;
    v62 = 1;
    return __swift_storeEnumTagSinglePayload(v61, v62, 1, a2);
  }

  v71 = v82;
  v73 = v83;
  sub_221BCDE78();
  sub_221BCD598();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v74 = (v69 + 32);
  v47 = (v66 + 8);
  v48 = (v69 + 8);
  while (1)
  {
    v49 = v76;
    sub_221BCDCB8();
    if (__swift_getEnumTagSinglePayload(v49, 1, a2) == 1)
    {
      (*(v67 + 8))(v80, v81);

      goto LABEL_19;
    }

    v50 = v34;
    v51 = *v74;
    (*v74)(v18, v49, a2);
    v52 = v77;
    v53 = v18;
    sub_221BCD618();
    v54 = AssociatedTypeWitness;
    v55 = *(swift_getAssociatedConformanceWitness() + 8);
    v56 = sub_221BCE168();
    v58 = v57;
    (*v47)(v52, v54);
    if (v56 == v71 && v58 == v73)
    {
      break;
    }

    v60 = sub_221BCE1B8();

    if (v60)
    {
      goto LABEL_22;
    }

    v18 = v53;
    (*v48)(v53, a2);
    v34 = v50;
  }

LABEL_22:
  (*(v67 + 8))(v80, v81);

  v64 = v70;
  v51(v70, v53, a2);
  v61 = v64;
  v62 = 0;
  return __swift_storeEnumTagSinglePayload(v61, v62, 1, a2);
}

id static AppEnumRepresentation.lnValueType.getter(uint64_t a1, uint64_t a2)
{
  sub_2219A9B0C();
  (*(a2 + 48))(a1, a2);
  return sub_2219A9B50();
}

unint64_t sub_2219A9B0C()
{
  result = qword_27CFB7A50;
  if (!qword_27CFB7A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFB7A50);
  }

  return result;
}

id sub_2219A9B50()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_221BCD358();

  v2 = [v0 initWithEnumerationIdentifier_];

  return v2;
}

id AppEnumRepresentation.lnValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_7();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  sub_221BCD618();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  v14 = sub_221BCE168();
  v16 = v15;
  (*(v7 + 8))(v12, AssociatedTypeWitness);
  v20[3] = MEMORY[0x277D837D0];
  v20[0] = v14;
  v20[1] = v16;
  v17 = (*(*(a2 + 16) + 16))(a1);
  v18 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v20, v17);
}

double sub_2219A9D68@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_opt_self();

  v6 = sub_221BCD358();
  v7 = [v5 applicationWithBundleIdentifier_];

  LOBYTE(v6) = [v7 isHidden];
  v8 = [v7 isLocked];

  *a2 = v3;
  *(a2 + 8) = v4;
  result = 0.0;
  *(a2 + 16) = xmmword_221BD04D0;
  *(a2 + 32) = v6;
  *(a2 + 33) = v8;
  return result;
}

unint64_t sub_2219A9E84(void *a1)
{
  sub_221BCDE68();

  v2 = sub_2219C0E8C(a1, 0);
  MEMORY[0x223DA31F0](v2);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t sub_2219A9F18()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = [v1 description];
    v3 = sub_221BCD388();
    v5 = v4;
  }

  else
  {
    v5 = 0xE300000000000000;
    v3 = 7104878;
  }

  v7 = *v0;
  v8 = v0[1];

  MEMORY[0x223DA31F0](8250, 0xE200000000000000);
  MEMORY[0x223DA31F0](v3, v5);

  return v7;
}

uint64_t sub_2219AA034()
{
  if (*(v0 + 32))
  {
    return 0x726F7272652ELL;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  v5 = *(v0 + 8);
  sub_221BCDE68();

  v11 = 0x737365636375732ELL;
  v12 = 0xE900000000000028;
  v6 = sub_2219C1168(v4, 0);
  MEMORY[0x223DA31F0](v6);

  MEMORY[0x223DA31F0](0xD000000000000014, 0x8000000221BEC6D0);
  if (v2)
  {
    v10 = 0;
    v7 = sub_221AE7580(&v10, v5 & 1, v2, v3);
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x223DA31F0](v7, v9);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v11;
}

uint64_t sub_2219AA1C8()
{
  memcpy(__dst, v0, sizeof(__dst));
  v2 = 0;
  return sub_22199FF90(&v2);
}

id sub_2219AA20C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 255)
  {
    v3 = sub_2219AA2A4(v0);
    v5 = *(v0 + 16);
    *(v0 + 16) = v3;
    v7 = *(v0 + 24);
    *(v0 + 24) = v6 & 1;
    sub_2219AC9E0(v3);
    sub_2219AC9EC(v5, v7);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
  }

  sub_2219ACA04(v1, v2);
  return v3;
}

id sub_2219AA2A4(void *a1)
{
  sub_2219AA37C(v15);
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  v6 = a1 + 4;
  v5 = a1[4];
  v12[0] = v6[1];
  v12[1] = v2;
  v13 = v3;
  v14 = v4;
  v11[3] = type metadata accessor for CachedLinkMetadataProvider();
  v11[4] = &off_28351DA48;
  v11[0] = v5;

  sub_221998178(v3, v4);

  v7 = sub_2219AA454(v12, v11);
  v8 = v13;
  v9 = v14;

  sub_2219982C4(v8, v9);
  sub_2219ACA1C(v15);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

void sub_2219AA37C(uint64_t a1@<X8>)
{
  sub_2219AC930(v1, v8);
  switch(v13)
  {
    case 1:
    case 5:
      v6 = *&v8[24];
      v7 = *&v8[8];
      v5 = v8[40];
      goto LABEL_7;
    case 2:
      v6 = *&v8[24];
      v7 = *&v8[8];
      v5 = v8[40];

      goto LABEL_8;
    case 3:
      v6 = *&v8[32];
      v7 = *&v8[16];
      v5 = v9;
LABEL_7:

      goto LABEL_8;
    case 4:

      v6 = v11;
      v7 = v10;
      v5 = v12;
      sub_2219ACB30(v8);
LABEL_8:
      v4 = v6;
      v3 = v7;
      break;
    default:
      v3 = *v8;
      v4 = *&v8[16];
      v5 = v8[32];
      break;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
}

id sub_2219AA454(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = *(a1 + 16);
  sub_2219AC4DC(v11, a2);
  if (!v3)
  {
    v6 = v5;
    v7 = [objc_opt_self() policyWithEntityQueryMetadata_];

    v11[0] = 0;
    v2 = [v7 connectionWithError_];

    if (v2)
    {
      v8 = v11[0];
    }

    else
    {
      v2 = v11[0];
      sub_221BCC338();

      swift_willThrow();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2219AA560(__int128 *a1, const void *a2)
{
  v3 = v2;
  v11 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  *(v2 + 16) = 0;
  *(v2 + 24) = -1;
  type metadata accessor for CachedLinkMetadataProvider();
  swift_allocObject();
  *(v2 + 32) = sub_221BB6B80();
  *(v2 + 40) = v11;
  *(v2 + 56) = v5;
  *(v2 + 64) = v6;
  if (qword_27CFB7338 != -1)
  {
    swift_once();
  }

  sub_221BCE458();
  v7 = v15;
  if (v15)
  {
    v8 = v16;
    __swift_project_boxed_opaque_existential_0(v14, v15);
    (*(v8 + 24))(&v12, v7, v8);
    v9 = v13;

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_2219ACBE8(v14);
    v9 = 0;
  }

  *(v3 + 72) = v9;
  memcpy((v3 + 80), a2, 0x82uLL);
  return v3;
}

uint64_t sub_2219AA698(uint64_t a1)
{
  *(v2 + 464) = v1;
  v4 = sub_221BCC558();
  *(v2 + 472) = v4;
  v5 = *(v4 - 8);
  *(v2 + 480) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 488) = swift_task_alloc();
  *(v2 + 210) = *a1;
  *(v2 + 496) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_2219AA76C, 0, 0);
}

uint64_t sub_2219AA76C()
{
  v62 = v0;
  if (*(*(v0 + 464) + 72))
  {
    if (qword_27CFB73B8 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      v52 = *(v0 + 464);
    }

    v2 = sub_221BCCD88();
    __swift_project_value_buffer(v2, qword_27CFDEE70);

    v3 = sub_221BCCD68();
    v4 = sub_221BCDA68();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 464);
      v6 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v6 = 136315651;
      v7 = static Instrumentation.currentActivityId.getter();
      sub_2219A6360(v7, v8, v61);
      OUTLINED_FUNCTION_5_1();
      *(v6 + 4) = v1;
      *(v6 + 12) = 2085;
      sub_2219AC930(v5 + 80, v0 + 80);
      LOBYTE(v54) = 0;
      v9 = sub_221A22514(&v54);
      v11 = v10;
      sub_2219AC98C(v0 + 80);
      v12 = sub_2219A6360(v9, v11, v61);

      OUTLINED_FUNCTION_2_5();
      if (v13)
      {
      }

      else
      {
        OUTLINED_FUNCTION_4_2();
        v22 = OUTLINED_FUNCTION_3_4();
        sub_221998178(v22, v23);
        v24 = OUTLINED_FUNCTION_3_4();
        v26 = sub_2219988C4(v24, v25);
        MEMORY[0x223DA31F0](v26);

        MEMORY[0x223DA31F0](v54, v55);

        v11 = v58;
        v12 = v59;
      }

      sub_2219A6360(v11, v12, v61);
      OUTLINED_FUNCTION_5_1();
      *(v6 + 24) = v11;
      v27 = "%sPerforming query: %{sensitive}s in %s";
LABEL_16:
      _os_log_impl(&dword_221989000, v3, v4, v27, v6, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }
  }

  else
  {
    if (qword_27CFB73B8 != -1)
    {
      OUTLINED_FUNCTION_0_8();
      v53 = *(v0 + 464);
    }

    v14 = sub_221BCCD88();
    __swift_project_value_buffer(v14, qword_27CFDEE70);

    v3 = sub_221BCCD68();
    v4 = sub_221BCDA68();

    if (os_log_type_enabled(v3, v4))
    {
      v15 = *(v0 + 464);
      v6 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v6 = 136315651;
      v16 = static Instrumentation.currentActivityId.getter();
      sub_2219A6360(v16, v17, v61);
      OUTLINED_FUNCTION_5_1();
      *(v6 + 4) = v1;
      *(v6 + 12) = 2081;
      sub_2219AC930(v15 + 80, v0 + 216);
      LOBYTE(v54) = 0;
      v18 = sub_221A22514(&v54);
      v20 = v19;
      sub_2219AC98C(v0 + 216);
      v21 = sub_2219A6360(v18, v20, v61);

      OUTLINED_FUNCTION_2_5();
      if (v13)
      {
      }

      else
      {
        OUTLINED_FUNCTION_4_2();
        v28 = OUTLINED_FUNCTION_3_4();
        sub_221998178(v28, v29);
        v30 = OUTLINED_FUNCTION_3_4();
        v32 = sub_2219988C4(v30, v31);
        MEMORY[0x223DA31F0](v32);

        MEMORY[0x223DA31F0](v54, v55);

        v20 = v58;
        v21 = v59;
      }

      sub_2219A6360(v20, v21, v61);
      OUTLINED_FUNCTION_5_1();
      *(v6 + 24) = v20;
      v27 = "%sPerforming query: %{private}s in %s";
      goto LABEL_16;
    }
  }

  v34 = *(v0 + 496);
  v33 = *(v0 + 504);
  v35 = *(v0 + 210);
  v36 = *(v0 + 464);
  v38 = v36[6];
  v37 = v36[7];
  v39 = v36[8];
  v40 = v36[4];
  v54 = v36[5];
  v55 = v38;
  v56 = v37;
  v57 = v39;
  *(v0 + 440) = type metadata accessor for CachedLinkMetadataProvider();
  *(v0 + 448) = &off_28351DA48;
  *(v0 + 416) = v40;
  LOBYTE(v58) = v35;
  v59 = v34;
  v60 = v33;

  sub_221998178(v37, v39);

  v41 = sub_2219AB110(&v54, (v0 + 416), &v58);
  *(v0 + 512) = v41;
  v42 = v41;
  v43 = *(v0 + 464);
  v44 = v56;
  v45 = v57;

  sub_2219982C4(v44, v45);
  __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  v46 = sub_2219AA20C();
  *(v0 + 520) = v46;
  if (v47)
  {
    swift_willThrow();

    v48 = *(v0 + 488);

    v49 = *(v0 + 8);

    return v49();
  }

  else
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 456;
    *(v0 + 24) = sub_2219AAD20;
    v51 = swift_continuation_init();
    *(v0 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7A58, qword_221BD13F0);
    *(v0 + 352) = MEMORY[0x277D85DD0];
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_2219ABFE8;
    *(v0 + 376) = &block_descriptor_0;
    *(v0 + 384) = v51;
    [v46 performConfigurableQuery:v42 completionHandler:v0 + 352];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_2219AAD20()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 528) = v2;
  if (v2)
  {
    v3 = sub_2219AB084;
  }

  else
  {
    v3 = sub_2219AAE30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2219AAE30()
{
  v25 = v0;
  v1 = v0[57];
  if (qword_27CFB73B8 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_27CFDEE70);
  v3 = v1;
  v4 = sub_221BCCD68();
  v5 = sub_221BCDA98();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[60];
    v6 = v0[61];
    v8 = v0[59];
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = static Instrumentation.currentActivityId.getter();
    v12 = sub_2219A6360(v10, v11, &v24);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = [v3 identifier];
    sub_221BCC528();

    sub_2219AC8D8();
    v14 = sub_221BCE168();
    v16 = v15;
    (*(v7 + 8))(v6, v8);
    v17 = sub_2219A6360(v14, v16, &v24);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_221989000, v4, v5, "%sQuery completed with output identifier: %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  v18 = v0[65];
  v19 = v0[64];
  v20 = v0[61];
  v21 = [v3 value];

  sub_2219AC8CC(v18);

  v22 = v0[1];

  return v22(v21);
}

uint64_t sub_2219AB084()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  swift_willThrow();
  sub_2219AC8CC(v2);

  v4 = v0[66];
  v5 = v0[61];

  v6 = v0[1];

  return v6();
}

_OWORD *sub_2219AB110(uint64_t *a1, void *a2, unsigned __int8 *a3)
{
  v142 = a2;
  v6 = sub_221BCDC18();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v135 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v134 = &v124 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v133 = &v124 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v126 = &v124 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v131 = &v124 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v130 = &v124 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v136 = &v124 - v21;
  MEMORY[0x28223BE20](v20);
  v129 = &v124 - v22;
  v23 = sub_221BCDC28();
  v24 = *(v23 - 8);
  v139 = v23;
  v140 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v128 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v124 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (&v124 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v127 = (&v124 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = (&v124 - v37);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = (&v124 - v40);
  v42 = MEMORY[0x28223BE20](v39);
  v132 = (&v124 - v43);
  MEMORY[0x28223BE20](v42);
  v45 = &v124 - v44;
  v46 = a1[1];
  v143 = *a1;
  v144 = v46;
  v47 = a1[2];
  v48 = a1[3];
  v175 = v47;
  v137 = *a3;
  v49 = *(a3 + 1);
  v50 = *(a3 + 2);
  v138 = v49;
  sub_2219AC930(v3, v151);
  switch(v158)
  {
    case 1:
      v80 = *v151;
      v161[0] = *&v151[8];
      v161[1] = *&v151[24];
      v162 = v151[40];
      v81 = *(*v151 + 16);
      v125 = v50;
      if (v81)
      {
        v145 = MEMORY[0x277D84F90];
        sub_221BCDF28();
        v82 = v80 + 32;
        do
        {
          sub_2219A1B08(v82, v150);
          v83 = v150[3];
          v84 = v150[4];
          __swift_project_boxed_opaque_existential_0(v150, v150[3]);
          sub_22199B82C(v83, v84);
          __swift_destroy_boxed_opaque_existential_0(v150);
          sub_221BCDEF8();
          v85 = *(v145 + 16);
          sub_221BCDF38();
          sub_221BCDF48();
          sub_221BCDF08();
          v82 += 40;
          --v81;
        }

        while (v81);

        v86 = v145;
      }

      else
      {

        v86 = MEMORY[0x277D84F90];
      }

      v76 = v132;
      *v132 = v86;
      v75 = v139;
      v74 = v140;
      (*(v140 + 104))(v76, *MEMORY[0x277D23A18], v139);
      v145 = v143;
      v146 = v144;
      v100 = v175;
      v147 = v175;
      v148 = v48;
      sub_2219A1B08(v142, v150);

      sub_221998178(v100, v48);
      v78 = v161;
      v79 = v136;
      goto LABEL_25;
    case 2:
      v125 = v50;
      v55 = *v151;
      v163[0] = *&v151[8];
      v163[1] = *&v151[24];
      v164 = v151[40];
      *v41 = *v151;
      v64 = v139;
      v63 = v140;
      (*(v140 + 104))(v41, *MEMORY[0x277D23A20], v139);
      v145 = v143;
      v146 = v144;
      v65 = v175;
      v147 = v175;
      v148 = v48;
      sub_2219A1B08(v142, v150);

      sub_221998178(v65, v48);
      v66 = v55;
      v67 = v141;
      sub_2219AC12C(v163, &v145, v150, v130);
      if (v67)
      {
        (*(v63 + 8))(v41, v64);
      }

      else
      {
        sub_2219A1D20(0, &qword_27CFB7A70, 0x277D23B90);
        LOBYTE(v150[0]) = v137;
        v150[1] = v138;
        v150[2] = v125;
        sub_221A213EC();
        v55 = sub_221BCDC38();
      }

      return v55;
    case 3:
      v68 = *&v151[8];
      v165[0] = *&v151[16];
      v165[1] = *&v151[32];
      v166 = v151[48];
      *v38 = *v151;
      v38[1] = v68;
      v70 = v139;
      v69 = v140;
      (*(v140 + 104))(v38, *MEMORY[0x277D23A50], v139);
      v145 = v143;
      v146 = v144;
      v71 = v175;
      v147 = v175;
      v148 = v48;
      sub_2219A1B08(v142, v150);

      sub_221998178(v71, v48);
      v72 = v141;
      sub_2219AC12C(v165, &v145, v150, v131);
      if (!v72)
      {
        goto LABEL_22;
      }

      v73 = *(v69 + 8);
      v55 = (v69 + 8);
      v73(v38, v70);
      return v55;
    case 4:
      v136 = v152;
      v57 = v153;
      v58 = v154;
      v167[0] = v155;
      v167[1] = v156;
      v168 = v157;
      memcpy(v150, v151, 0x41uLL);
      v145 = v143;
      v146 = v144;
      v147 = v175;
      v148 = v48;
      v59 = v48;
      v55 = v167;
      v60 = v141;
      v61 = v142;
      sub_2219AC4DC(&v145, v142);
      if (v60)
      {
        sub_2219ACB30(v150);

        sub_2219ACA1C(v167);
        return v55;
      }

      v141 = v58;
      LODWORD(v134) = v57;
      v97 = v62;
      v98 = sub_221A1F924(v62);
      v99 = 0;
      v104 = v98;
      v133 = v97;
      v105 = v141;
      if (!v141)
      {
        v115 = 0;
        v117 = v139;
        v116 = v140;
        goto LABEL_43;
      }

      v106 = *(v141 + 16);
      if (!v106)
      {

        v115 = MEMORY[0x277D84F90];
        v116 = v140;
LABEL_42:
        v117 = v139;
LABEL_43:
        v118 = v175;
        v119 = v144;
        v120 = v127;
        v121 = v134;
        v122 = v136;
        *v127 = v104;
        v120[1] = v122;
        *(v120 + 16) = v121;
        v120[3] = v115;
        (*(v116 + 104))(v120, *MEMORY[0x277D23A08], v117);
        v149[0] = v143;
        v149[1] = v119;
        v149[2] = v118;
        v149[3] = v59;
        sub_2219A1B08(v61, &v145);

        sub_221998178(v118, v59);
        sub_2219AC12C(v167, v149, &v145, v126);
        sub_2219A1D20(0, &qword_27CFB7A70, 0x277D23B90);
        LOBYTE(v145) = v137;
        v146 = v138;
        v147 = v50;
        sub_221A213EC();
        v55 = sub_221BCDC38();

        sub_2219ACB30(v150);
        return v55;
      }

      v132 = v98;
      v125 = v50;
      v145 = MEMORY[0x277D84F90];
      v135 = v106;
      result = sub_221BCDF28();
      v107 = 0;
      v108 = (v105 + 56);
      while (v107 < *(v105 + 16))
      {
        v55 = *(v108 - 2);
        v109 = *(v108 - 1);
        if (*v108 == 1)
        {
          sub_2219980F0(*(v108 - 2), *(v108 - 1), 1);

          sub_2219ACA1C(v167);

          sub_2219ACB94();
          swift_allocError();
          *v123 = 0xD000000000000010;
          *(v123 + 8) = 0x8000000221BEC690;
          *(v123 + 16) = 5;
          swift_willThrow();

          sub_2219ACB30(v150);
          sub_2219ACB84(v55, v109, 1);

          return v55;
        }

        v110 = v99;
        v111 = *(v108 - 24);
        v112 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        sub_2219980F0(v55, v109, 0);
        result = [v112 initWithInteger_];
        if (!result)
        {
          goto LABEL_46;
        }

        v113 = result;
        ++v107;
        [objc_allocWithZone(MEMORY[0x277D23C58]) initWithOrder:v111 sortParameterIndex:result];

        sub_2219ACB84(v55, v109, 0);
        sub_221BCDEF8();
        v114 = *(v145 + 16);
        sub_221BCDF38();
        sub_221BCDF48();
        result = sub_221BCDF08();
        v108 += 32;
        v99 = v110;
        v105 = v141;
        if (v135 == v107)
        {
          v59 = v48;

          v115 = v145;
          v116 = v140;
          v50 = v125;
          v61 = v142;
          v104 = v132;
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    case 5:
      v169[0] = *&v151[8];
      v169[1] = *&v151[24];
      v170 = v151[40];
      *v33 = *v151;
      v88 = v139;
      v87 = v140;
      (*(v140 + 104))(v33, *MEMORY[0x277D23A28], v139);
      v145 = v143;
      v146 = v144;
      v89 = v175;
      v147 = v175;
      v148 = v48;
      sub_2219A1B08(v142, v150);

      sub_221998178(v89, v48);
      v90 = v141;
      sub_2219AC12C(v169, &v145, v150, v133);
      if (!v90)
      {
        goto LABEL_22;
      }

      v91 = *(v87 + 8);
      v55 = (v87 + 8);
      v91(v33, v88);
      return v55;
    case 6:
      v171[0] = *v151;
      v171[1] = *&v151[16];
      v172 = v151[32];
      v93 = v139;
      v92 = v140;
      (*(v140 + 104))(v30, *MEMORY[0x277D23A30], v139);
      v145 = v143;
      v146 = v144;
      v94 = v175;
      v147 = v175;
      v148 = v48;
      sub_2219A1B08(v142, v150);

      sub_221998178(v94, v48);
      v95 = v141;
      sub_2219AC12C(v171, &v145, v150, v134);
      if (v95)
      {
        v96 = *(v92 + 8);
        v55 = (v92 + 8);
        v96(v30, v93);
      }

      else
      {
        sub_2219A1D20(0, &qword_27CFB7A70, 0x277D23B90);
        LOBYTE(v150[0]) = v137;
        v150[1] = v138;
        v150[2] = v50;
        sub_221A213EC();
        return sub_221BCDC38();
      }

      return v55;
    case 7:
      v125 = v50;
      v173[0] = *v151;
      v173[1] = *&v151[16];
      v174 = v151[32];
      v75 = v139;
      v74 = v140;
      v76 = v128;
      (*(v140 + 104))(v128, *MEMORY[0x277D23A30], v139);
      v145 = v143;
      v146 = v144;
      v77 = v175;
      v147 = v175;
      v148 = v48;
      sub_2219A1B08(v142, v150);

      sub_221998178(v77, v48);
      v78 = v173;
      v79 = v135;
LABEL_25:
      v101 = v141;
      sub_2219AC12C(v78, &v145, v150, v79);
      if (v101)
      {
        v102 = *(v74 + 8);
        v55 = (v74 + 8);
        v102(v76, v75);
        return v55;
      }

      sub_2219A1D20(0, &qword_27CFB7A70, 0x277D23B90);
      LOBYTE(v150[0]) = v137;
      v150[1] = v138;
      v150[2] = v125;
      sub_221A213EC();
      return sub_221BCDC38();
    default:
      v159[0] = *v151;
      v159[1] = *&v151[16];
      v160 = v151[32];
      v52 = v139;
      v51 = v140;
      (*(v140 + 104))(v45, *MEMORY[0x277D23A10], v139);
      v145 = v143;
      v146 = v144;
      v53 = v175;
      v147 = v175;
      v148 = v48;
      sub_2219A1B08(v142, v150);

      sub_221998178(v53, v48);
      v54 = v141;
      sub_2219AC12C(v159, &v145, v150, v129);
      if (v54)
      {
        v56 = *(v51 + 8);
        v55 = (v51 + 8);
        v56(v45, v52);
      }

      else
      {
LABEL_22:
        sub_2219A1D20(0, &qword_27CFB7A70, 0x277D23B90);
        LOBYTE(v150[0]) = v137;
        v150[1] = v138;
        v150[2] = v50;
        sub_221A213EC();
        return sub_221BCDC38();
      }

      return v55;
  }
}

uint64_t *sub_2219ABFE8(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_2219B1AB0(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_2219B1AB4(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2219AC078()
{
  sub_2219AC9EC(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  sub_2219982C4(v3, v4);
  sub_2219AC98C(v0 + 80);
  return v0;
}

uint64_t sub_2219AC0D4()
{
  sub_2219AC078();

  return MEMORY[0x2821FE8D8](v0, 210, 7);
}

uint64_t sub_2219AC12C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v7 = sub_221BCDC18();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v42 - v13);
  MEMORY[0x28223BE20](v12);
  v16 = (&v42 - v15);
  v18 = *a2;
  v17 = a2[1];
  v19 = a2[3];
  v48 = a2[2];
  v51 = v19;
  v20 = *a1;
  v21 = *(a1 + 8);
  if (*(a1 + 32))
  {
    if (*(a1 + 32) == 1)
    {
      v22 = *(a1 + 24);
      v43 = *(a1 + 16);
      sub_2219A1B08(a3, v49);
      v23 = a3;
      v24 = *__swift_project_boxed_opaque_existential_0(v49, v50);

      v25 = v47;
      v26 = sub_221BB73F4();
      if (v25)
      {

        sub_2219ACA1C(a1);

        sub_2219982C4(v48, v51);
        v27 = v23;
LABEL_9:
        __swift_destroy_boxed_opaque_existential_0(v27);
        return __swift_destroy_boxed_opaque_existential_0(v49);
      }

      v39 = v26;

      sub_2219982C4(v48, v51);
      __swift_destroy_boxed_opaque_existential_0(v23);
      sub_2219ACA1C(a1);
      v40 = v43;
      v33 = v44;
      *v14 = v39;
      v14[1] = v40;
      v14[2] = v22;
      v32 = v45;
      (*(v33 + 104))(v14, *MEMORY[0x277D23A48], v45);
      __swift_destroy_boxed_opaque_existential_0(v49);
      v16 = v14;
    }

    else
    {
      sub_2219A1B08(a3, v49);
      v34 = a3;
      v35 = *__swift_project_boxed_opaque_existential_0(v49, v50);
      v36 = v47;
      v37 = sub_221BB7BC0();
      if (v36)
      {
        sub_2219ACA1C(a1);

        sub_2219982C4(v48, v51);
        v27 = v34;
        goto LABEL_9;
      }

      v41 = v37;
      sub_2219ACA1C(a1);

      sub_2219982C4(v48, v51);
      __swift_destroy_boxed_opaque_existential_0(v34);
      *v11 = v41;
      v33 = v44;
      v32 = v45;
      (*(v44 + 104))(v11, *MEMORY[0x277D23A38], v45);
      __swift_destroy_boxed_opaque_existential_0(v49);
      v16 = v11;
    }
  }

  else
  {
    sub_2219A1B08(a3, v49);
    v28 = a3;
    v29 = *__swift_project_boxed_opaque_existential_0(v49, v50);
    v30 = v47;
    v31 = sub_221BB7510();
    sub_2219ACA1C(a1);

    sub_2219982C4(v48, v51);
    __swift_destroy_boxed_opaque_existential_0(v28);
    if (v30)
    {
      return __swift_destroy_boxed_opaque_existential_0(v49);
    }

    *v16 = v31;
    v33 = v44;
    v32 = v45;
    (*(v44 + 104))(v16, *MEMORY[0x277D23A40], v45);
    __swift_destroy_boxed_opaque_existential_0(v49);
  }

  return (*(v33 + 32))(v46, v16, v32);
}

void sub_2219AC4DC(uint64_t *a1, void *a2)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = *v2;
  v7 = *(v2 + 8);
  v34 = *(v2 + 16);
  v36 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *__swift_project_boxed_opaque_existential_0(a2, a2[3]);
  if (!v9)
  {
    sub_221BB762C(v6, v5, v8, v7);
    return;
  }

  if (v9 != 1)
  {
    sub_221BB7BC0();
    return;
  }

  v11 = sub_221BB73F4();
  if (v3)
  {

    return;
  }

  v31 = v8;
  v32 = v5;
  v33 = v11;
  v12 = [v11 parameters];
  sub_2219A1D20(0, &qword_27CFB7A68, 0x277D23748);
  v13 = sub_221BCD668();

  v14 = sub_2219A69A0(v13);
  for (i = 0; ; ++i)
  {
    if (v14 == i)
    {

      sub_2219ACADC();
      swift_allocError();
      *v22 = v34;
      *(v22 + 8) = v36;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = 3;
      swift_willThrow();

      return;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x223DA3BF0](i, v13);
    }

    else
    {
      if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v16 = *(v13 + 8 * i + 32);
    }

    v17 = v16;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v18 = sub_2219ACA7C(v16, &selRef_name);
    if (!v19)
    {
      goto LABEL_20;
    }

    if (v18 == v34 && v19 == v36)
    {
      break;
    }

    v21 = sub_221BCE1B8();

    if (v21)
    {
      goto LABEL_24;
    }

LABEL_20:
  }

LABEL_24:

  v23 = sub_2219ACA7C(v17, &selRef_queryIdentifier);
  if (v24)
  {
    v25 = v23;
    v26 = v24;

    v27 = *__swift_project_boxed_opaque_existential_0(a2, a2[3]);
    sub_221BB7948(v6, v32, v25, v26);
  }

  else
  {

    sub_221BCDE68();

    strcpy(v35, "forParameter:");
    HIWORD(v35[1]) = -4864;
    MEMORY[0x223DA31F0](v31, v7);
    MEMORY[0x223DA31F0](46, 0xE100000000000000);
    MEMORY[0x223DA31F0](v34, v36);

    v28 = v35[0];
    v29 = v35[1];
    sub_2219ACADC();
    swift_allocError();
    *v30 = v6;
    *(v30 + 8) = v32;
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    *(v30 + 32) = 5;
    swift_willThrow();
  }
}

unint64_t sub_2219AC8D8()
{
  result = qword_27CFB7A60;
  if (!qword_27CFB7A60)
  {
    sub_221BCC558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7A60);
  }

  return result;
}

void sub_2219AC9EC(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_2219AC8CC(a1);
  }
}

id sub_2219ACA04(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_2219AC9E0(a1);
  }

  return a1;
}

uint64_t sub_2219ACA7C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_221BCD388();

  return v4;
}

unint64_t sub_2219ACADC()
{
  result = qword_27CFB8310;
  if (!qword_27CFB8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8310);
  }

  return result;
}

uint64_t sub_2219ACB84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_2219ACB94()
{
  result = qword_27CFB7A78;
  if (!qword_27CFB7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7A78);
  }

  return result;
}

uint64_t sub_2219ACBE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFB7A80, &unk_221BD2800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_5()
{
  *(v1 + 14) = v0;
  *(v1 + 22) = 2080;
  v4 = v2[5];
  v3 = v2[6];
  v5 = v2[7];
  v6 = v2[8];
}

uint64_t OUTLINED_FUNCTION_4_2()
{
}

uint64_t OUTLINED_FUNCTION_5_1()
{
}

uint64_t *sub_2219ACD30()
{
  v1 = v0;
  v2 = *v0;
  sub_221BCC558();
  v3 = *(v2 + 80);
  sub_2219ACE08();
  sub_221BCD2D8();
  v4 = sub_221BCC898();
  sub_221BB7E98(v4);
  v5 = v1[5];
  sub_22198B60C(v1[4]);
  v6 = v1[7];
  sub_22198B60C(v1[6]);
  return v1;
}

uint64_t sub_2219ACDBC()
{
  sub_2219ACD30();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_2219ACE08()
{
  result = qword_27CFB9420;
  if (!qword_27CFB9420)
  {
    sub_221BCC558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9420);
  }

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

uint64_t sub_2219ACE74(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219ACEC8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2219ACF48()
{
  v1 = [v0 style];
  if (v1 >= 3)
  {
    return 2;
  }

  else
  {
    return 0x10002u >> (8 * v1);
  }
}

void sub_2219ACF88(void *a1)
{
  v2 = [v1 parameters];
  sub_2219AD138();
  v3 = sub_221BCD668();

  v4 = sub_2219A69A0(v3);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      goto LABEL_19;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223DA3BF0](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = sub_2219ACA70(v6);
    v10 = v9;
    v11 = [a1 parameterName];
    v12 = sub_221BCD388();
    v14 = v13;

    if (v10)
    {
      if (v8 == v12 && v10 == v14)
      {

LABEL_19:

        return;
      }

      v16 = sub_221BCE1B8();

      if (v16)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_2219AD138()
{
  result = qword_27CFB7A68;
  if (!qword_27CFB7A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFB7A68);
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

uint64_t sub_2219AD194(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219AD1E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2219AD24C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }

    return v5 ^ v8 ^ 1u;
  }

  result = 0;
  if (v7 != 2 && ((v7 ^ v4) & 1) == 0)
  {
    return v5 ^ v8 ^ 1u;
  }

  return result;
}

id sub_2219AD2F4(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7B08, &qword_221BD15A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7B10, &unk_221BD15B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v38 - v12;
  v14 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  (*(v16 + 16))(v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  sub_2219AD7E8();
  if (swift_dynamicCast())
  {
    return v38[1];
  }

  v18 = a2[3];
  v19 = OUTLINED_FUNCTION_0_9();
  v21 = v20(v19);
  v17 = sub_221AE94E8(v21, v22);
  v23 = a2[1];
  v24 = OUTLINED_FUNCTION_0_9();
  v25(v24);
  v26 = sub_221BCC5B8();
  v27 = 0;
  if (__swift_getEnumTagSinglePayload(v13, 1, v26) != 1)
  {
    v27 = sub_221BCC5A8();
    (*(*(v26 - 8) + 8))(v13, v26);
  }

  [v17 setCalendar_];

  v28 = a2[2];
  v29 = OUTLINED_FUNCTION_0_9();
  v31 = v30(v29);
  [v17 setCurrentLocation_];

  v32 = a2[4];
  v33 = OUTLINED_FUNCTION_0_9();
  v34(v33);
  v35 = sub_221BCC5D8();
  v36 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v35) != 1)
  {
    v36 = sub_221BCC5C8();
    (*(*(v35 - 8) + 8))(v8, v35);
  }

  [v17 setTimeZone_];

  return v17;
}

id sub_2219AD690()
{
  v1 = [v0 currentLocation];

  return v1;
}

uint64_t sub_2219AD6EC()
{
  v1 = [v0 localeIdentifier];
  v2 = sub_221BCD388();

  return v2;
}

unint64_t sub_2219AD7E8()
{
  result = qword_27CFB7B18;
  if (!qword_27CFB7B18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFB7B18);
  }

  return result;
}

uint64_t sub_2219AD82C@<X0>(SEL *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = [v7 *a1];
  if (v9)
  {
    v10 = v9;
    a2();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = a3(0);

  return __swift_storeEnumTagSinglePayload(a4, v11, 1, v12);
}

uint64_t sub_2219AD8D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  OUTLINED_FUNCTION_15_0();
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t AppIntentFetchOptionsResult.Item.subtitle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_0_0();
}

uint64_t AppIntentFetchOptionsResult.Item.title.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_0_0();
}

uint64_t AppIntentFetchOptionsResult.Item.init(image:indentationLevel:subtitle:title:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v16 = a1;
  if (a1)
  {
    a1 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    v18 = &protocol witness table for LNImage;
  }

  else
  {
    v18 = 0;
  }

  *a9 = v16;
  a9[1] = 0;
  a9[2] = 0;
  a9[3] = a1;
  a9[4] = v18;
  a9[5] = a2;
  a9[6] = a3;
  a9[7] = a4;
  a9[8] = a5;
  a9[9] = a6;
  Options = type metadata accessor for AppIntentFetchOptionsResult.Item();
  v20 = *(*(a8 - 8) + 32);
  v21 = a9 + *(Options + 48);

  return v20(v21, a7, a8);
}

uint64_t static AppIntentFetchOptionsResult.Item.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[8] == a2[8] && a1[9] == a2[9];
  if (!v8 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_22;
  }

  Options = type metadata accessor for AppIntentFetchOptionsResult.Item();
  v10 = *(Options + 48);
  v11 = *(a4 + 16);
  v12 = v11(a3, a4);
  v13 = *(Options + 48);
  v14 = v11(a3, a4);
  v15 = v14;
  if (v12)
  {
    if (!v14)
    {

      goto LABEL_22;
    }

    sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
    v16 = sub_221BCDC58();

    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v14)
  {
    goto LABEL_11;
  }

  if (a1[5] != a2[5])
  {
    goto LABEL_22;
  }

  v17 = a1[7];
  v18 = a2[7];
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_22;
    }

    v19 = a1[6] == a2[6] && v17 == v18;
    if (!v19 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v18)
  {
    goto LABEL_22;
  }

  sub_2219B0DF4(a1, v26, &qword_27CFB7B20, &qword_221BD15C0);
  v22 = v27;
  if (v27)
  {
    v23 = v28;
    __swift_project_boxed_opaque_existential_0(v26, v27);
    v22 = (*(v23 + 8))(v22, v23);
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    sub_2219B1538(v26, &qword_27CFB7B20, &qword_221BD15C0);
  }

  sub_2219B0DF4(a2, v26, &qword_27CFB7B20, &qword_221BD15C0);
  v24 = v27;
  if (!v27)
  {
    sub_2219B1538(v26, &qword_27CFB7B20, &qword_221BD15C0);
    if (v22)
    {
LABEL_33:

      goto LABEL_22;
    }

LABEL_35:
    v20 = 1;
    return v20 & 1;
  }

  v25 = v28;
  __swift_project_boxed_opaque_existential_0(v26, v27);
  v15 = (*(v25 + 8))(v24, v25);
  __swift_destroy_boxed_opaque_existential_0(v26);
  if (v22)
  {
    if (v15)
    {
      sub_2219A1D20(0, qword_27CFB7B28, 0x277CD3D10);
      v20 = sub_221BCDC58();

      return v20 & 1;
    }

    goto LABEL_33;
  }

  if (!v15)
  {
    goto LABEL_35;
  }

LABEL_11:

LABEL_22:
  v20 = 0;
  return v20 & 1;
}

uint64_t AppIntentFetchOptionsResult.Section.subtitle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_0_0();
}

uint64_t AppIntentFetchOptionsResult.Section.title.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_0_0();
}

uint64_t AppIntentFetchOptionsResult.Section.init(image:options:subtitle:title:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = result;
  if (result)
  {
    result = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    v14 = &protocol witness table for LNImage;
  }

  else
  {
    v14 = 0;
  }

  *a7 = v12;
  a7[1] = 0;
  a7[2] = 0;
  a7[3] = result;
  a7[4] = v14;
  a7[5] = a2;
  a7[6] = a3;
  a7[7] = a4;
  a7[8] = a5;
  a7[9] = a6;
  return result;
}

uint64_t AppIntentFetchOptionsResult.promptLabel.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_0_0();
}

uint64_t AppIntentFetchOptionsResult.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  Options = type metadata accessor for AppIntentFetchOptionsResult.Item();
  v8 = *(Options - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](Options);
  v11 = &v19 - v10;
  v13 = *v2;
  v12 = v2[1];
  v14 = type metadata accessor for AppIntentFetchOptionsResult.Section();
  if (v12 >= sub_221BCD708())
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v5);
  }

  else
  {
    v20 = v8;
    sub_221BCD768();
    v15 = v2[2];
    if (v15 >= sub_221BCD708())
    {
      v2[1] = v12 + 1;
      v2[2] = 0;
      AppIntentFetchOptionsResult.Iterator.next()(a1);
      OUTLINED_FUNCTION_0_6(v14);
      return (*(v18 + 8))(v21, v14);
    }

    else
    {
      sub_221BCD768();
      v2[2] = v15 + 1;
      OUTLINED_FUNCTION_0_6(v14);
      (*(v16 + 8))(v21, v14);
      (*(*(v5 - 8) + 16))(a2, &v11[*(Options + 48)], v5);
      (*(v20 + 8))(v11, Options);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v5);
    }
  }
}

uint64_t sub_2219AE1E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = a1[3];
  a2[1] = 0;
  a2[2] = 0;

  *a2 = v5;
  return result;
}

uint64_t AppIntentFetchOptionsResult.makeIterator()@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 32);
  v7 = *v1;
  v8 = v3;
  v9 = v4;
  v10 = v5;

  return sub_2219AE1E4(&v7, a1);
}

uint64_t AppIntentFetchOptionsResult.init(dependentParameterIdentifiers:promptLabel:sections:usesIndexedCollation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_2219AE2C8@<X0>(void *a1@<X8>)
{
  AppIntentFetchOptionsResult.makeIterator()(a1);
  v2 = *v1;
  v4 = v1[2];
  v3 = v1[3];
}

uint64_t sub_2219AE350()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2219AE3A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219AE3E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2219AE444(uint64_t a1)
{
  sub_2219AE8F0();
  if (v2 <= 0x3F)
  {
    sub_2219AE954();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2219AE4F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 80) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      v16 = (((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((v16 + v7 + 16) & ~v7, v6, v4);
      }

      v17 = *(v16 + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_2219AE68C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 80) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          v21 = ((((((a1 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v21 + v10 + 16) & ~v10, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *v21 = a2 & 0x7FFFFFFF;
            v21[1] = 0;
          }

          else
          {
            v21[1] = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_2219AE8F0()
{
  if (!qword_27CFB7C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB7C38, qword_221BD1740);
    v0 = sub_221BCDC98();
    if (!v1)
    {
      atomic_store(v0, &qword_27CFB7C30);
    }
  }
}

void sub_2219AE954()
{
  if (!qword_27CFB7C40[0])
  {
    v0 = sub_221BCDC98();
    if (!v1)
    {
      atomic_store(v0, qword_27CFB7C40);
    }
  }
}

uint64_t sub_2219AE9A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2219AE9E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219AEA28(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_2219AEA7C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2219AEAB8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2219AEAF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2219AEB50(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v102 = a5;
  v106 = sub_2219B1A48(a1);
  v108 = a1;
  v7 = [a1 promptLabel];
  if (v7)
  {
    v8 = v7;
    if (a2)
    {
      v9 = sub_221BCD358();
    }

    else
    {
      v9 = 0;
    }

    v10 = OUTLINED_FUNCTION_25_0();
    v12 = [v10 v11];

    v101 = sub_221BCD388();
    v105 = v13;
  }

  else
  {
    v101 = 0;
    v105 = 0;
  }

  v14 = [v108 sections];
  sub_2219A1D20(0, &qword_27CFB7D50, 0x277D23BF0);
  v15 = OUTLINED_FUNCTION_19_0();

  v16 = sub_2219A69A0(v15);
  if (v16)
  {
    v17 = v16;
    v127 = MEMORY[0x277D84F90];
    v18 = OUTLINED_FUNCTION_14_0();
    sub_2219A3054(v18, v19, v20);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v28 = 0;
      v109 = v15;
      v110 = v15 & 0xC000000000000001;
      v29 = v127;
      v98 = v15 + 32;
      v100 = v15 & 0xFFFFFFFFFFFFFF8;
      v118 = a2;
      v104 = v17;
      while (!__OFADD__(v28, 1))
      {
        v111 = v28 + 1;
        v112 = v29;
        if (v110)
        {
          v30 = MEMORY[0x223DA3BF0]();
        }

        else
        {
          OUTLINED_FUNCTION_16_0(v28, v21, v22, v23, v24, v25, v26, v27, v98, v100);
          if (v32)
          {
            goto LABEL_60;
          }

          v30 = *(v98 + 8 * v31);
        }

        v33 = v30;
        v113 = [v30 image];
        v34 = [v33 options];
        sub_2219A1D20(0, &qword_27CFB7D58, 0x277D23BE8);
        v35 = OUTLINED_FUNCTION_19_0();

        if (v35 >> 62)
        {
          v36 = sub_221BCDDA8();
          if (v36)
          {
LABEL_17:
            v126 = MEMORY[0x277D84F90];
            v37 = OUTLINED_FUNCTION_14_0();
            sub_2219A3074(v37, v38, v39);
            if (v36 < 0)
            {
              goto LABEL_59;
            }

            v107 = v33;
            v40 = 0;
            v41 = v126;
            v117 = v35 & 0xC000000000000001;
            v114 = v35 & 0xFFFFFFFFFFFFFF8;
            v116 = v35;
            while (!__OFADD__(v40, 1))
            {
              v125 = v41;
              if (v117)
              {
                v42 = MEMORY[0x223DA3BF0](v40, v35);
              }

              else
              {
                if (v40 >= *(v114 + 16))
                {
                  goto LABEL_57;
                }

                v42 = *(v35 + 8 * v40 + 32);
              }

              v43 = v42;
              v44 = [v42 value];
              if (!v44)
              {

                sub_2219A1218();
                OUTLINED_FUNCTION_15_0();
                swift_allocError();
                OUTLINED_FUNCTION_0_10(v89, 10);
                swift_willThrow();

                return;
              }

              v45 = v44;
              v46 = swift_allocObject();
              *(v46 + 16) = a3;
              *(v46 + 24) = a4;

              sub_221BB8ED4(v45, sub_2219B1AA0, v46);
              v123 = v47;

              v48 = [v43 image];
              v49 = [v43 indentationLevel];
              v50 = [v43 subtitle];
              v124 = v40 + 1;
              if (v50)
              {
                v51 = v50;
                if (a2)
                {
                  v52 = sub_221BCD358();
                }

                else
                {
                  v52 = 0;
                }

                v53 = [v51 localizedStringForLocaleIdentifier_];

                v54 = sub_221BCD388();
                v120 = v55;
                v121 = v54;
              }

              else
              {
                v120 = 0;
                v121 = 0;
              }

              v56 = [v43 title];
              v122 = v49;
              if (a2)
              {
                a2 = sub_221BCD358();
              }

              v57 = v36;
              v58 = [v56 localizedStringForLocaleIdentifier_];

              v59 = sub_221BCD388();
              v61 = v60;

              v62 = v48;
              if (v48)
              {
                v63 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
                v64 = &protocol witness table for LNImage;
              }

              else
              {
                v63 = 0;
                v64 = 0;
              }

              v41 = v125;
              v66 = v125[2];
              v65 = v125[3];
              if (v66 >= v65 >> 1)
              {
                v68 = OUTLINED_FUNCTION_24_0(v65);
                sub_2219A3074(v68, v66 + 1, 1);
                v62 = v125;
                v41 = v125;
              }

              v41[2] = v66 + 1;
              v67 = &v41[11 * v66];
              v67[4] = v62;
              v67[5] = 0;
              v67[6] = 0;
              v67[7] = v63;
              v67[8] = v64;
              v67[9] = v122;
              v67[10] = v121;
              v67[11] = v120;
              v67[12] = v59;
              v67[13] = v61;
              v67[14] = v123;
              ++v40;
              v36 = v57;
              a2 = v118;
              v35 = v116;
              if (v124 == v57)
              {

                v33 = v107;
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_57:
            __break(1u);
            break;
          }
        }

        else
        {
          v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v36)
          {
            goto LABEL_17;
          }
        }

LABEL_42:
        v69 = [v33 subtitle];
        v70 = v69;
        if (v69)
        {
          v71 = [v69 localizedKey];

          sub_221BCD388();
        }

        v72 = [v33 title];
        if (v72)
        {
          v73 = v72;
          v74 = [v72 localizedKey];

          sub_221BCD388();
        }

        if (v113)
        {
          v75 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
        }

        else
        {
          v75 = 0;
        }

        v76 = v112;
        v78 = *(v112 + 16);
        v77 = *(v112 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_2219A3054((v77 > 1), v78 + 1, 1);
          v76 = v112;
        }

        *(v76 + 16) = v78 + 1;
        OUTLINED_FUNCTION_17_0();
        v79[6] = 0;
        v79[7] = v75;
        OUTLINED_FUNCTION_23_0(v79);
        v28 = OUTLINED_FUNCTION_22_0(v80, v81, v82, v83, v84, v85, v86, v87, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
        a2 = v118;
        if (v88)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_55:

    [v108 usesIndexedCollation];

    OUTLINED_FUNCTION_13(v90, v91, v92, v93, v94, v95, v96, v97, v98, v100, v101, v102, v103, v104, v105, v106);
  }
}

void sub_2219AF2D0(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v109 = a5;
  v113 = sub_2219B1A48(a1);
  v115 = a1;
  v7 = [a1 promptLabel];
  if (v7)
  {
    v8 = v7;
    if (a2)
    {
      v9 = sub_221BCD358();
    }

    else
    {
      v9 = 0;
    }

    v10 = OUTLINED_FUNCTION_25_0();
    v12 = [v10 v11];

    v108 = sub_221BCD388();
    v112 = v13;
  }

  else
  {
    v108 = 0;
    v112 = 0;
  }

  v14 = [v115 sections];
  sub_2219A1D20(0, &qword_27CFB7D50, 0x277D23BF0);
  v15 = OUTLINED_FUNCTION_19_0();

  v16 = sub_2219A69A0(v15);
  if (v16)
  {
    v17 = v16;
    v138 = MEMORY[0x277D84F90];
    v18 = OUTLINED_FUNCTION_14_0();
    sub_2219A3054(v18, v19, v20);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v28 = 0;
      v116 = v15;
      v117 = v15 & 0xC000000000000001;
      v29 = v138;
      v105 = v15 + 32;
      v107 = v15 & 0xFFFFFFFFFFFFFF8;
      v126 = a2;
      v111 = v17;
      while (!__OFADD__(v28, 1))
      {
        v118 = v28 + 1;
        v119 = v29;
        if (v117)
        {
          v30 = MEMORY[0x223DA3BF0]();
        }

        else
        {
          OUTLINED_FUNCTION_16_0(v28, v21, v22, v23, v24, v25, v26, v27, v105, v107);
          if (v32)
          {
            goto LABEL_64;
          }

          v30 = *(v105 + 8 * v31);
        }

        v33 = v30;
        v120 = [v30 image];
        v34 = [v33 options];
        sub_2219A1D20(0, &qword_27CFB7D58, 0x277D23BE8);
        v35 = OUTLINED_FUNCTION_19_0();

        if (v35 >> 62)
        {
          v36 = sub_221BCDDA8();
          if (v36)
          {
LABEL_17:
            v136 = MEMORY[0x277D84F90];
            v37 = OUTLINED_FUNCTION_14_0();
            sub_2219A3074(v37, v38, v39);
            if (v36 < 0)
            {
              goto LABEL_63;
            }

            v114 = v33;
            v40 = 0;
            v41 = v136;
            v125 = v35 & 0xC000000000000001;
            v121 = v35 & 0xFFFFFFFFFFFFFF8;
            v123 = v36;
            v124 = v35;
            while (!__OFADD__(v40, 1))
            {
              if (v125)
              {
                v42 = v41;
                v43 = MEMORY[0x223DA3BF0](v40, v35);
              }

              else
              {
                if (v40 >= *(v121 + 16))
                {
                  goto LABEL_61;
                }

                v42 = v41;
                v43 = *(v35 + 8 * v40 + 32);
              }

              v44 = v43;
              v45 = [v43 value];
              sub_221A07948(v139);
              v141 = v140;
              if (!v45)
              {

                sub_2219A1218();
                OUTLINED_FUNCTION_15_0();
                swift_allocError();
                OUTLINED_FUNCTION_0_10(v96, 10);
                swift_willThrow();

                return;
              }

              v130 = v139[1];
              v132 = v139[0];
              v46 = swift_allocObject();
              *(v46 + 16) = v132;
              *(v46 + 32) = v130;
              *(v46 + 48) = v141;
              *(v46 + 49) = *v142;
              *(v46 + 52) = *&v142[3];
              *(v46 + 56) = a3;
              *(v46 + 64) = a4;

              v47 = OUTLINED_FUNCTION_25_0();
              sub_221BB8ED4(v47, v48, v49);
              v133 = v50;

              v51 = [v44 image];
              v131 = [v44 indentationLevel];
              v52 = [v44 subtitle];
              v134 = v40 + 1;
              if (v52)
              {
                v53 = v52;
                if (a2)
                {
                  v54 = sub_221BCD358();
                }

                else
                {
                  v54 = 0;
                }

                v55 = [v53 localizedStringForLocaleIdentifier_];

                v56 = sub_221BCD388();
                v128 = v57;
                v129 = v56;
              }

              else
              {
                v128 = 0;
                v129 = 0;
              }

              v58 = [v44 title];
              if (a2)
              {
                v59 = sub_221BCD358();
              }

              else
              {
                v59 = 0;
              }

              v60 = [v58 localizedStringForLocaleIdentifier_];

              v61 = sub_221BCD388();
              v63 = v62;

              if (v51)
              {
                v64 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
                v65 = &protocol witness table for LNImage;
              }

              else
              {
                v64 = 0;
                v65 = 0;
              }

              v41 = v42;
              v137 = v42;
              v66 = *(v42 + 16);
              v67 = *(v41 + 24);
              if (v66 >= v67 >> 1)
              {
                sub_2219A3074((v67 > 1), v66 + 1, 1);
                v41 = v137;
              }

              *(v41 + 16) = v66 + 1;
              v68 = (v41 + 88 * v66);
              v68[4] = v51;
              v68[5] = 0;
              v68[6] = 0;
              v68[7] = v64;
              v68[8] = v65;
              v68[9] = v131;
              v68[10] = v129;
              v68[11] = v128;
              v68[12] = v61;
              v68[13] = v63;
              v68[14] = v133;
              ++v40;
              v35 = v124;
              a2 = v126;
              if (v134 == v123)
              {
                v135 = v41;

                v33 = v114;
                goto LABEL_43;
              }
            }

            __break(1u);
LABEL_61:
            __break(1u);
            break;
          }
        }

        else
        {
          v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v36)
          {
            goto LABEL_17;
          }
        }

        v135 = MEMORY[0x277D84F90];
LABEL_43:
        v69 = v33;
        v70 = [v33 subtitle];
        v71 = v70;
        if (v70)
        {
          v72 = [v70 localizedKey];

          v71 = sub_221BCD388();
          v74 = v73;
        }

        else
        {
          v74 = 0;
        }

        v75 = [v33 title];
        if (v75)
        {
          v76 = v75;
          v77 = [v75 localizedKey];

          v78 = sub_221BCD388();
          v80 = v79;
        }

        else
        {
          v78 = 0;
          v80 = 0;
        }

        if (v120)
        {
          v81 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
          v82 = &protocol witness table for LNImage;
        }

        else
        {
          v82 = 0;
          v81 = 0;
        }

        v83 = v119;
        v85 = *(v119 + 16);
        v84 = *(v119 + 24);
        if (v85 >= v84 >> 1)
        {
          sub_2219A3054((v84 > 1), v85 + 1, 1);
          v83 = v119;
        }

        *(v83 + 16) = v85 + 1;
        OUTLINED_FUNCTION_17_0();
        v86[6] = 0;
        v86[7] = v81;
        v86[8] = v82;
        v86[9] = v135;
        v86[10] = v71;
        v86[11] = v74;
        v86[12] = v78;
        v86[13] = v80;
        v28 = OUTLINED_FUNCTION_22_0(v87, v88, v89, v90, v91, v92, v93, v94, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
        a2 = v126;
        if (v95)
        {

          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_59:
    [v115 usesIndexedCollation];

    OUTLINED_FUNCTION_13(v97, v98, v99, v100, v101, v102, v103, v104, v105, v107, v108, v109, v110, v111, v112, v113);
  }
}

void sub_2219AFAA8(void *a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v84 = sub_2219B1A48(a1);
  v85 = a1;
  v6 = [a1 promptLabel];
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      v8 = sub_221BCD358();
    }

    else
    {
      v8 = 0;
    }

    v9 = OUTLINED_FUNCTION_25_0();
    v11 = [v9 v10];

    v81 = sub_221BCD388();
    v83 = v12;
  }

  else
  {
    v81 = 0;
    v83 = 0;
  }

  v13 = [v85 sections];
  sub_2219A1D20(0, &qword_27CFB7D50, 0x277D23BF0);
  v14 = OUTLINED_FUNCTION_19_0();

  if (sub_2219A69A0(v14))
  {
    v104 = MEMORY[0x277D84F90];
    v15 = OUTLINED_FUNCTION_14_0();
    v87 = v16;
    sub_2219A3054(v15, v17, v18);
    if ((v87 & 0x8000000000000000) == 0)
    {
      v26 = 0;
      v86 = v14 & 0xC000000000000001;
      v27 = v104;
      v79 = v14 + 32;
      v80 = v14 & 0xFFFFFFFFFFFFFF8;
      v97 = a2;
      while (!__OFADD__(v26, 1))
      {
        v88 = v26 + 1;
        v89 = v27;
        if (v86)
        {
          v28 = MEMORY[0x223DA3BF0]();
        }

        else
        {
          OUTLINED_FUNCTION_16_0(v26, v19, v20, v21, v22, v23, v24, v25, v79, v80);
          if (v30)
          {
            goto LABEL_60;
          }

          v28 = *(v79 + 8 * v29);
        }

        v31 = v28;
        v90 = [v28 image];
        v91 = v31;
        v32 = [v31 options];
        sub_2219A1D20(0, &qword_27CFB7D58, 0x277D23BE8);
        v33 = OUTLINED_FUNCTION_19_0();

        if (v33 >> 62)
        {
          v34 = sub_221BCDDA8();
          if (v34)
          {
LABEL_17:
            v103 = MEMORY[0x277D84F90];
            v35 = OUTLINED_FUNCTION_14_0();
            sub_2219A3074(v35, v36, v37);
            if (v34 < 0)
            {
              goto LABEL_59;
            }

            v38 = 0;
            v39 = v103;
            v96 = v33 & 0xC000000000000001;
            v92 = v33 & 0xFFFFFFFFFFFFFF8;
            v93 = v34;
            v94 = v33;
            while (!__OFADD__(v38, 1))
            {
              v102 = v39;
              if (v96)
              {
                v40 = MEMORY[0x223DA3BF0](v38, v33);
              }

              else
              {
                if (v38 >= *(v92 + 16))
                {
                  goto LABEL_57;
                }

                v40 = *(v33 + 8 * v38 + 32);
              }

              v41 = v40;
              v42 = [v40 value];
              v43 = a3();

              if (!v43)
              {

                sub_2219A1218();
                OUTLINED_FUNCTION_15_0();
                swift_allocError();
                OUTLINED_FUNCTION_0_10(v76, 10);
                swift_willThrow();

                return;
              }

              v44 = [v41 image];
              v45 = [v41 indentationLevel];
              v46 = [v41 subtitle];
              v100 = v45;
              if (v46)
              {
                v47 = v46;
                if (a2)
                {
                  v48 = sub_221BCD358();
                }

                else
                {
                  v48 = 0;
                }

                v49 = [v47 localizedStringForLocaleIdentifier_];

                v50 = sub_221BCD388();
                v98 = v51;
                v99 = v50;
              }

              else
              {
                v98 = 0;
                v99 = 0;
              }

              v52 = [v41 title];
              v101 = v38 + 1;
              if (a2)
              {
                v53 = sub_221BCD358();
              }

              else
              {
                v53 = 0;
              }

              v54 = [v52 localizedStringForLocaleIdentifier_];

              v55 = sub_221BCD388();
              v57 = v56;

              v58 = v44;
              if (v44)
              {
                v59 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
                v60 = &protocol witness table for LNImage;
              }

              else
              {
                v59 = 0;
                v60 = 0;
              }

              v39 = v102;
              v62 = v102[2];
              v61 = v102[3];
              if (v62 >= v61 >> 1)
              {
                v64 = OUTLINED_FUNCTION_24_0(v61);
                sub_2219A3074(v64, v62 + 1, 1);
                v58 = v102;
                v39 = v102;
              }

              v39[2] = v62 + 1;
              v63 = &v39[11 * v62];
              v63[4] = v58;
              v63[5] = 0;
              v63[6] = 0;
              v63[7] = v59;
              v63[8] = v60;
              v63[9] = v100;
              v63[10] = v99;
              a2 = v97;
              v63[11] = v98;
              v63[12] = v55;
              v63[13] = v57;
              v63[14] = v43;
              ++v38;
              v33 = v94;
              if (v101 == v93)
              {
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_57:
            __break(1u);
            break;
          }
        }

        else
        {
          v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v34)
          {
            goto LABEL_17;
          }
        }

LABEL_42:

        v65 = [v91 subtitle];
        v66 = v65;
        if (v65)
        {
          v67 = [v65 localizedKey];

          sub_221BCD388();
        }

        v68 = [v91 title];
        if (v68)
        {
          v69 = v68;
          v70 = [v68 localizedKey];

          sub_221BCD388();
        }

        if (v90)
        {
          v71 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
        }

        else
        {
          v71 = 0;
        }

        v72 = v89;
        v74 = *(v89 + 16);
        v73 = *(v89 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_2219A3054((v73 > 1), v74 + 1, 1);
          v72 = v89;
        }

        *(v72 + 16) = v74 + 1;
        OUTLINED_FUNCTION_17_0();
        v75[6] = 0;
        v75[7] = v71;
        OUTLINED_FUNCTION_23_0(v75);
        v26 = v88;
        a2 = v97;
        if (v88 == v87)
        {
          v78 = v27;

          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v78 = MEMORY[0x277D84F90];
LABEL_55:
    v77 = [v85 usesIndexedCollation];
    *a4 = v84;
    *(a4 + 8) = v81;
    *(a4 + 16) = v83;
    *(a4 + 24) = v78;
    *(a4 + 32) = v77;
  }
}