unint64_t sub_24130BB90()
{
  result = qword_27E539E40;
  if (!qword_27E539E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E539E40);
  }

  return result;
}

uint64_t sub_24130BBDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24130BC24(uint64_t result, int a2, int a3)
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

uint64_t sub_24130BC74()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E539EB0);
  __swift_project_value_buffer(v0, qword_27E539EB0);
  return sub_241352FEC();
}

void sub_24130BD00()
{
  qword_27E541898 = MEMORY[0x277D84F90];
  unk_27E5418A0 = 0x656E6961746E6F43;
  qword_27E5418A8 = 0xE900000000000072;
}

uint64_t sub_24130BD64()
{
  sub_2413545EC();

  v0 = sub_24135491C();
  MEMORY[0x245CE20D0](v0);

  MEMORY[0x245CE20D0](0x3A7374726576202CLL, 0xE800000000000000);
  v1 = sub_24135491C();
  MEMORY[0x245CE20D0](v1);

  MEMORY[0x245CE20D0](0x3A73697274202CLL, 0xE700000000000000);
  v2 = sub_24135491C();
  MEMORY[0x245CE20D0](v2);

  MEMORY[0x245CE20D0](8236, 0xE200000000000000);
  v3 = sub_24135491C();
  MEMORY[0x245CE20D0](v3);

  MEMORY[0x245CE20D0](16971, 0xE200000000000000);
  return 0x3A73656873656DLL;
}

uint64_t sub_24130BEFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_24130BF94(v5, v7) & 1;
}

uint64_t sub_24130BF64()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_24130BF94(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  if (a1[5] == a2[5] && a1[6] == a2[6])
  {
    return 1;
  }

  return sub_24135497C();
}

uint64_t sub_24130C01C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    for (i = a1 + 32; ; i += 40)
    {
      sub_24127C104(i, v8);
      v4 = v9;
      v5 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      result = (*(v5 + 8))(v4, v5);
      v7 = __OFADD__(v2, result);
      v2 += result;
      if (v7)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v8);
      if (!--v1)
      {
        return v2;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_24130C0C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2412DE1D4(0, v1, 0);
    v2 = v21;
    v4 = a1 + 32;
    do
    {
      sub_24127C104(v4, v18);
      v5 = v19;
      v6 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v16 = (*(v6 + 16))(v5, v6);
      v17 = v7;
      MEMORY[0x245CE20D0](8250, 0xE200000000000000);
      v8 = v19;
      v9 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      (*(v9 + 8))(v8, v9);
      v10 = sub_24135491C();
      MEMORY[0x245CE20D0](v10);

      MEMORY[0x245CE20D0](16971, 0xE200000000000000);
      __swift_destroy_boxed_opaque_existential_0(v18);
      v21 = v2;
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2412DE1D4((v11 > 1), v12 + 1, 1);
        v2 = v21;
      }

      *(v2 + 16) = v12 + 1;
      v13 = v2 + 16 * v12;
      *(v13 + 32) = v16;
      *(v13 + 40) = v17;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  v18[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B08);
  sub_2412ED730();
  v14 = sub_241353BAC();

  return v14;
}

uint64_t sub_24130C2C4()
{
  if (qword_27E537B80 != -1)
  {
    swift_once();
  }

  v10[2] = xmmword_27E538F28;
  v10[3] = *&byte_27E538F38;
  v11 = byte_27E538F48;
  v10[0] = xmmword_27E538F08;
  v10[1] = *&qword_27E538F18;
  sub_24130C4D0(v10, v9);
  v0 = sub_241244570();
  v1 = sub_24130C540(v10);
  if (v0 < 1)
  {
    v0 = MEMORY[0x245CE43D0](v1);
    if (qword_27E537C58 != -1)
    {
      swift_once();
    }

    v7 = sub_241352FFC();
    __swift_project_value_buffer(v7, qword_27E539EB0);
    v3 = sub_241352FDC();
    v4 = sub_2413540DC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v0;
      v6 = "availableMemoryInBytes: %ld";
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_27E537C58 != -1)
    {
      swift_once();
    }

    v2 = sub_241352FFC();
    __swift_project_value_buffer(v2, qword_27E539EB0);
    v3 = sub_241352FDC();
    v4 = sub_2413540DC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v0;
      v6 = "Using override jetsam of %ld bytes";
LABEL_12:
      _os_log_impl(&dword_241215000, v3, v4, v6, v5, 0xCu);
      MEMORY[0x245CE4870](v5, -1, -1);
    }
  }

  return v0;
}

uint64_t sub_24130C4D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24130C540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24130C5B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24130C600(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_24130C65C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24130C6A4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

id sub_24130C978()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TouchesOnScreenCountGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24130C9E0()
{
  result = qword_27E538A40;
  if (!qword_27E538A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E538A40);
  }

  return result;
}

uint64_t sub_24130CA2C(uint64_t a1)
{
  v3 = [v1 numberOfTouches];
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = sub_2413544EC();
    v5 = __OFSUB__(v3, result);
    v6 = v3 - result;
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  result = *(a1 + 16);
  v5 = __OFSUB__(v3, result);
  v6 = v3 - result;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_3:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2412FC764(v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ASVUserDefaultsBacked.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  v89 = a1;
  v86 = *(a1 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v83 = (&v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v82 = (&v78 - v6);
  v8 = *(v7 + 24);
  v9 = sub_24135432C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v84 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v78 - v14;
  v16 = *(v8 - 1);
  v17 = MEMORY[0x28223BE20](v13);
  v81 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v85 = &v78 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v78 - v21;
  v23 = sub_241353BDC();
  v24 = sub_241353BDC();
  v25 = CFPreferencesCopyAppValue(v23, v24);

  v90 = v25;
  v87 = v25;
  v26 = v8;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380B8);
  v27 = swift_dynamicCast();
  v28 = *(v16 + 56);
  if (v27)
  {
    v29 = v3;
    v30 = v89;
    v28(v15, 0, 1, v8);
    v85 = *(v16 + 32);
    (v85)(v22, v15, v8);
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_24135493C();
    v32 = v90;
    v31 = v91;
    if (qword_27E537C70 != -1)
    {
      swift_once();
    }

    v33 = sub_241352FFC();
    __swift_project_value_buffer(v33, qword_27E539ED0);
    v34 = v86;
    v35 = v82;
    (*(v86 + 16))(v82, v29, v30);

    v36 = sub_241352FDC();
    v37 = sub_2413540AC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      LODWORD(v83) = v37;
      v39 = v38;
      v40 = swift_slowAlloc();
      v84 = v26;
      v41 = v40;
      v90 = v40;
      *v39 = 136315394;
      v42 = sub_2412DDC2C(v32, v31, &v90);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2080;
      v43 = *v35;
      v44 = v35[1];
      v45 = *(v34 + 8);

      v45(v35, v89);
      v46 = sub_2412DDC2C(v43, v44, &v90);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_241215000, v36, v83, "Read value '%s' for default '%s'", v39, 0x16u);
      swift_arrayDestroy();
      v47 = v41;
      v26 = v84;
      MEMORY[0x245CE4870](v47, -1, -1);
      MEMORY[0x245CE4870](v39, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v34 + 8))(v35, v30);
    }

    return (v85)(v88, v22, v26);
  }

  else
  {
    v28(v15, 1, 1, v8);
    v48 = *(v10 + 8);
    v48(v15, v9);
    v49 = v89;
    v50 = *(v10 + 16);
    v82 = v9;
    v51 = v84;
    v50();
    v52 = *(v16 + 48);
    v53 = v52(v51, 1, v26);
    v54 = v49;
    v80 = v3;
    if (v53 == 1)
    {
      v55 = v3 + *(v49 + 28);
      v56 = v81;
      (*(v16 + 16))(v81, v55, v26);
      if (v52(v51, 1, v26) != 1)
      {
        v48(v51, v82);
      }
    }

    else
    {
      v56 = v81;
      (*(v16 + 32))(v81, v51, v26);
    }

    v60 = *(v16 + 32);
    v59 = (v16 + 32);
    v58 = v60;
    (v60)(v85, v56, v26);
    v90 = 0;
    v91 = 0xE000000000000000;
    v84 = v26;
    sub_24135493C();
    v62 = v90;
    v61 = v91;
    if (qword_27E537C70 != -1)
    {
      swift_once();
    }

    v63 = sub_241352FFC();
    __swift_project_value_buffer(v63, qword_27E539ED0);
    v64 = v86;
    v65 = v83;
    (*(v86 + 16))(v83, v80, v54);

    v66 = sub_241352FDC();
    v67 = sub_2413540AC();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v81 = v58;
      v69 = v68;
      v70 = swift_slowAlloc();
      v82 = v59;
      v80 = v70;
      v90 = v70;
      *v69 = 136315394;
      v79 = v62;
      v72 = *v65;
      v71 = v65[1];
      v73 = *(v64 + 8);

      v73(v65, v54);
      v74 = sub_2412DDC2C(v72, v71, &v90);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2080;
      v75 = sub_2412DDC2C(v79, v61, &v90);

      *(v69 + 14) = v75;
      _os_log_impl(&dword_241215000, v66, v67, "No value for default '%s', using fallback: '%s'", v69, 0x16u);
      v76 = v80;
      swift_arrayDestroy();
      MEMORY[0x245CE4870](v76, -1, -1);
      v77 = v69;
      v58 = v81;
      MEMORY[0x245CE4870](v77, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v64 + 8))(v65, v54);
    }

    return (v58)(v88, v85, v84);
  }
}

uint64_t sub_24130D3D4()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E539ED0);
  __swift_project_value_buffer(v0, qword_27E539ED0);
  return sub_241352FEC();
}

uint64_t ASVUserDefaultsBacked.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_24130D7BC();
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*ASVUserDefaultsBacked.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  ASVUserDefaultsBacked.wrappedValue.getter(a2, v11);
  return sub_24130D5D0;
}

void sub_24130D5D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    sub_24130D7BC();
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_24130D7BC();
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall ASVUserDefaultsBacked.clear()()
{
  v0 = sub_241353BDC();
  v1 = sub_241353BDC();
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(v0, 0, v1, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  v4 = sub_241353BDC();
  CFPreferencesSynchronize(v4, v2, v3);
}

void sub_24130D7BC()
{
  v0 = sub_241353BDC();
  v1 = sub_24135495C();
  v2 = sub_241353BDC();
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(v0, v1, v2, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  swift_unknownObjectRelease();
  v5 = sub_241353BDC();
  CFPreferencesSynchronize(v5, v3, v4);
}

uint64_t sub_24130D8B0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_24135432C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24130D954(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (v6)
  {
    v10 = *(v4 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_29;
  }

  v12 = ((v10 + v8 + ((v10 + v8 + ((v9 + v8 + ((v8 + 16) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v10;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_29:
      if ((v6 & 0x80000000) != 0)
      {
        return (*(v5 + 48))((a1 + v8 + 16) & ~v8);
      }

      v18 = *(a1 + 1);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v7 + (v12 | v17) + 1;
}

void sub_24130DB00(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = (v10 + v9 + ((v9 + 16) & ~v9)) & ~v9;
  if (!v7)
  {
    ++v10;
  }

  v12 = ((v10 + v9 + ((v10 + v9 + v11) & ~v9)) & ~v9) + v10;
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v12 <= 3)
    {
      v18 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
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

  if (v8 < a2)
  {
    v16 = ~v8 + a2;
    if (v12 < 4)
    {
      v17 = (v16 >> (8 * v12)) + 1;
      if (v12)
      {
        v20 = v16 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_48:
              if (v15 == 2)
              {
                *&a1[v12] = v17;
              }

              else
              {
                *&a1[v12] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v15)
    {
      a1[v12] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v12] = 0;
  }

  else if (v15)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);
    v22 = &a1[v9 + 16] & ~v9;

    v21(v22);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

Swift::Void __swiftcall UIView.pinToSuperviewEdges()()
{
  v7 = [v0 superview];
  if (v7)
  {
    sub_24135466C();
    v1 = objc_opt_self();
    v2 = [v1 constraintWithItem:v0 attribute:3 relatedBy:0 toItem:v7 attribute:3 multiplier:1.0 constant:0.0];
    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
    v3 = [v1 constraintWithItem:v0 attribute:4 relatedBy:0 toItem:v7 attribute:4 multiplier:1.0 constant:0.0];
    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
    v4 = [v1 constraintWithItem:v0 attribute:1 relatedBy:0 toItem:v7 attribute:1 multiplier:1.0 constant:0.0];
    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
    v5 = [v1 constraintWithItem:v0 attribute:2 relatedBy:0 toItem:v7 attribute:2 multiplier:1.0 constant:0.0];
    sub_24135464C();
    sub_24135467C();
    sub_24135468C();
    sub_24135465C();
    sub_24130377C();
    v6 = sub_241353E1C();

    [v1 activateConstraints_];

    [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t UIView.pin(_:to:multiplier:constant:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v19 = MEMORY[0x277D84F90];
    sub_24135466C();
    v12 = objc_opt_self();
    v13 = (a1 + 32);
    do
    {
      v14 = *v13++;
      v15 = [v12 constraintWithItem:v5 attribute:v14 relatedBy:0 toItem:a2 attribute:v14 multiplier:a3 constant:a4];
      sub_24135464C();
      sub_24135467C();
      sub_24135468C();
      sub_24135465C();
      --v6;
    }

    while (v6);
    v7 = v19;
  }

  v16 = objc_opt_self();
  sub_24130377C();
  v17 = sub_241353E1C();
  [v16 activateConstraints_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  return v7;
}

uint64_t sub_24130E1B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24130E1FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24130E258(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 >= 8u)
    {
      sub_2413545EC();

      v5 = 0xD000000000000024;
      goto LABEL_10;
    }

LABEL_9:
    sub_2413545EC();

    v5 = 0xD000000000000010;
    goto LABEL_10;
  }

  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      sub_2413545EC();

      v5 = 0xD000000000000019;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a3)
  {
    sub_2413545EC();

    v7 = 0x6520726577656956;
    goto LABEL_11;
  }

  sub_2413545EC();

  v5 = 0xD000000000000012;
LABEL_10:
  v7 = v5;
LABEL_11:
  MEMORY[0x245CE20D0](a1, a2);
  MEMORY[0x245CE20D0](39, 0xE100000000000000);
  return v7;
}

double simd_float4x4.init(scale:)(float a1)
{
  HIDWORD(v1) = vdupq_lane_s32(0, 0).i32[1];
  *&v1 = a1;
  return v1;
}

float32x2_t simd_float4x4.scale.getter(int8x16_t a1, int8x16_t a2)
{
  v2 = vzip1_s32(*a1.i8, *a2.i8);
  v3 = vzip2_s32(*a1.i8, *a2.i8);
  v4 = vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL));
  return vsqrt_f32(vadd_f32(vmul_f32(v4, v4), vadd_f32(vmul_f32(v2, v2), vmul_f32(v3, v3))));
}

float32x4_t simd_float4x4.scale(_:)(float32x4_t a1)
{
  v2 = vmulq_lane_f32(v1[1], *a1.f32, 1);
  *v1 = vmulq_n_f32(*v1, a1.f32[0]);
  v1[1] = v2;
  result = vmulq_laneq_f32(v1[2], a1, 2);
  v1[2] = result;
  return result;
}

float32x4_t simd_float4x4.translate(_:)(float32x4_t a1)
{
  result = vaddq_f32(v1[3], a1);
  result.i32[3] = HIDWORD(*&v1[3]);
  v1[3] = result;
  return result;
}

double simd_float4x4.scale.setter(float32x4_t a1)
{
  v2 = v1[1];
  v3 = vmulq_f32(*v1, *v1);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  v5 = vmulq_n_f32(*v1, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]);
  v5.i32[3] = HIDWORD(*v1);
  v6 = vmulq_f32(v2, v2);
  *&v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  *v6.f32 = vrsqrte_f32(v7);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32)));
  v8 = vmulq_n_f32(v2, vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32))).f32[0]);
  v8.i32[3] = v2.i32[3];
  *v1 = v5;
  v1[1] = v8;
  v9 = v1[2];
  v10 = vmulq_f32(v9, v9);
  *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v12.i32[3] = v9.i32[3];
  v1[2] = v12;
  *&result = simd_float4x4.scale(_:)(a1).u64[0];
  return result;
}

void (*simd_float4x4.scale.modify(uint64_t *a1))(float32x4_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x18uLL);
  }

  *a1 = v3;
  *(v3 + 16) = v1;
  v4 = *(v1 + 16);
  v5 = vzip1_s32(*v1, *v4.i8);
  v6 = vzip2_s32(*v1, *v4.i8);
  v7 = vzip1_s32(*&vextq_s8(*v1, *v1, 8uLL), *&vextq_s8(v4, v4, 8uLL));
  *&v8 = vsqrt_f32(vadd_f32(vmul_f32(v7, v7), vadd_f32(vmul_f32(v5, v5), vmul_f32(v6, v6))));
  v9 = vmulq_f32(*(v1 + 32), *(v1 + 32));
  *(&v8 + 1) = COERCE_UNSIGNED_INT(sqrtf(v9.f32[2] + vaddv_f32(*v9.f32)));
  *v3 = v8;
  return sub_24130E7D4;
}

void sub_24130E7D4(float32x4_t **a1)
{
  v1 = *a1;
  simd_float4x4.scale.setter(**a1);

  free(v1);
}

void simd_float4x4.rotation.setter(float32x4_t a1)
{
  v2 = *(v1 + 16);
  v3 = vzip1_s32(*v1, *v2.i8);
  v4 = vzip2_s32(*v1, *v2.i8);
  v5 = vzip1_s32(*&vextq_s8(*v1, *v1, 8uLL), *&vextq_s8(v2, v2, 8uLL));
  *&v6 = _sSo13simd_float4x4a11AssetViewerE11translation8rotation5scaleABs5SIMD3VySfG_So0A6_quatfaAItcfC_0(*(v1 + 48), a1, vsqrt_f32(vadd_f32(vmul_f32(v5, v5), vadd_f32(vmul_f32(v3, v3), vmul_f32(v4, v4)))).f32[0]);
  *v1 = v6;
  *(v1 + 16) = v7;
  *(v1 + 32) = v8;
  *(v1 + 48) = v9;
}

void (*simd_float4x4.rotation.modify(uint64_t *a1))(float32x4_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v7.columns[0] = *v1;
  *(v3 + 16) = *v1;
  v7.columns[1] = *(v1 + 16);
  *(v3 + 32) = v7.columns[1];
  v7.columns[2] = *(v1 + 32);
  *(v3 + 48) = v7.columns[2];
  v7.columns[3] = *(v1 + 48);
  *(v3 + 64) = v7.columns[3];
  *&v5 = simd_quaternion(v7);
  *v4 = v5;
  return sub_24130E924;
}

void sub_24130E924(float32x4_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[1];
  v2 = (*a1)[2];
  v4 = (*a1)[5].i64[0];
  v5 = vzip1_s32(*v3.i8, *v2.i8);
  v6 = vzip2_s32(*v3.i8, *v2.i8);
  *v2.i8 = vzip1_s32(*&vextq_s8(v3, v3, 8uLL), *&vextq_s8(v2, v2, 8uLL));
  *&v7 = _sSo13simd_float4x4a11AssetViewerE11translation8rotation5scaleABs5SIMD3VySfG_So0A6_quatfaAItcfC_0(*(*a1)[4].i64, **a1, vsqrt_f32(vadd_f32(vmul_f32(*v2.i8, *v2.i8), vadd_f32(vmul_f32(v5, v5), vmul_f32(v6, v6)))).f32[0]);
  *v4 = v7;
  v4[1] = v8;
  v4[2] = v9;
  v4[3] = v10;

  free(v1);
}

__n128 simd_float4x4.translation.setter(__n128 result)
{
  result.n128_u32[3] = v1[3].n128_u32[3];
  v1[3] = result;
  return result;
}

__n128 (*simd_float4x4.translation.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 48);
  *(v3 + 16) = v4;
  HIDWORD(v4) = 0;
  *v3 = v4;
  return sub_24130EA44;
}

__n128 sub_24130EA44(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  HIDWORD(v2) = v1[7];
  *(*(v1 + 4) + 48) = v2;
  free(v1);
  return result;
}

__n128 simd_float4x4.decompose()(simd_float4x4 a1)
{
  v1 = a1.columns[3];
  v1.i32[3] = 0;
  v3 = v1;
  simd_quaternion(a1);
  return v3;
}

double simd_float4x4.eulerAngels.getter(__n128 a1, __n128 a2, __n128 a3)
{
  if (a3.n128_f32[1] >= 1.0)
  {
    atan2f(-a1.n128_f32[2], -a2.n128_f32[2]);
    v4 = -1077342246;
  }

  else
  {
    if (a3.n128_f32[1] > -1.0)
    {
      v5 = a1.n128_f32[1];
      v6 = a2.n128_f32[1];
      v7 = a3;
      v8 = asinf(-a3.n128_f32[1]);
      v7.n128_u32[0] = atan2f(v7.n128_f32[0], v7.n128_f32[2]);
      atan2f(v5, v6);
      return COERCE_DOUBLE(__PAIR64__(v7.n128_u32[0], LODWORD(v8)));
    }

    atan2f(a1.n128_f32[2], a2.n128_f32[2]);
    v4 = 1070141402;
  }

  *&result = v4;
  return result;
}

double simd_float4x4.eulerAngelsInDegrees.getter(__n128 a1, __n128 a2, __n128 a3)
{
  *v3.i64 = simd_float4x4.eulerAngels.getter(a1, a2, a3);
  *&result = vdivq_f32(vmulq_f32(v3, vdupq_n_s32(0x43340000u)), vdupq_n_s32(0x40490FDAu)).u64[0];
  return result;
}

double _sSo13simd_float4x4a11AssetViewerE11translation8rotation5scaleABs5SIMD3VySfG_So0A6_quatfaAItcfC_0(double a1, float32x4_t a2, float a3)
{
  *v3.i64 = simd_matrix4x4(a2);
  *&result = vmulq_n_f32(v3, a3).u64[0];
  return result;
}

void sub_24130EC70()
{
  v1 = v0;
  if (qword_27E537CD0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v2 = sub_241352FFC();
    __swift_project_value_buffer(v2, qword_27E53A538);
    v3 = sub_241352FDC();
    v4 = sub_2413540DC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_241215000, v3, v4, "stopTrackedRaycastOnEntityControllers", v5, 2u);
      MEMORY[0x245CE4870](v5, -1, -1);
    }

    v6 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (!v6)
    {
      __break(1u);
      return;
    }

    v1 = *(v6 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v7 = v1 >> 62 ? sub_2413544EC() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v7)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245CE29C0](v8, v1);
      }

      else
      {
        if (v8 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(v1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_24124954C();

      ++v8;
      if (v11 == v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_16:
}

void sub_24130EE30(void *a1)
{
  v2 = v1;
  if (v1[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] - 3 >= 3)
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v31 = sub_241352FFC();
    __swift_project_value_buffer(v31, qword_27E53A538);
    v56 = v1;
    osloga = sub_241352FDC();
    v32 = sub_2413540BC();
    if (!os_log_type_enabled(osloga, v32))
    {

      v37 = v56;
LABEL_31:

      return;
    }

    v33 = swift_slowAlloc();
    *v33 = 134217984;
    v15 = v56;
    v34 = *&v56[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
    if (v34)
    {
      v35 = *(v34 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (v35)
      {
        *(v33 + 4) = *(v35 + qword_27E53A1C8);
        v36 = v33;

        _os_log_impl(&dword_241215000, osloga, v32, "Error: createTrackedRaycast called in emitterMode: %ld", v36, 0xCu);
        MEMORY[0x245CE4870](v36, -1, -1);
LABEL_30:
        v37 = osloga;
        goto LABEL_31;
      }

      goto LABEL_37;
    }

LABEL_36:

    __break(1u);
LABEL_37:

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v4 = sub_241352FFC();
  __swift_project_value_buffer(v4, qword_27E53A538);
  v5 = a1;

  v6 = sub_241352FDC();
  v7 = sub_2413540DC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v59[0] = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;
    v11 = v5;
    v12 = sub_241352C0C();
    v14 = sub_2412DDC2C(v12, v13, v59);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_241215000, v6, v7, "[Tracked Raycast] Creating for %@ entity:%s", v8, 0x16u);
    sub_241246278(v9, &unk_27E539B90);
    MEMORY[0x245CE4870](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245CE4870](v10, -1, -1);
    MEMORY[0x245CE4870](v8, -1, -1);
  }

  *&v16 = sub_241249270();
  *oslog = v16;
  v17 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v18 = *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (!v18)
  {
    __break(1u);
    goto LABEL_35;
  }

  v19 = *(v18 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v19)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v20 = v19;
  sub_24135294C();
  v22 = v21;

  if (v22)
  {

    osloga = sub_241352FDC();
    v23 = sub_2413540BC();
    if (os_log_type_enabled(osloga, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v59[0] = v25;
      *v24 = 136315138;
      v26 = sub_241352C0C();
      v28 = v27;

      v29 = sub_2412DDC2C(v26, v28, v59);

      *(v24 + 4) = v29;
      v30 = "Failed to project entity %s to screen coordinates";
LABEL_27:
      _os_log_impl(&dword_241215000, osloga, v23, v30, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x245CE4870](v25, -1, -1);
      MEMORY[0x245CE4870](v24, -1, -1);

      return;
    }

LABEL_29:

    goto LABEL_30;
  }

  v38 = *&v2[v17];
  if (!v38)
  {
    goto LABEL_38;
  }

  v39 = *(v38 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v39)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v42 + 24) = v41;
  *(v42 + 32) = *oslog;

  v43 = v39;
  v44 = sub_2413527EC();

  v45 = OBJC_IVAR____TtC11AssetViewer16EntityController_trackedRaycast;
  v46 = *&v5[OBJC_IVAR____TtC11AssetViewer16EntityController_trackedRaycast];
  *&v5[OBJC_IVAR____TtC11AssetViewer16EntityController_trackedRaycast] = v44;
  v47 = v44;
  [v46 stopTracking];

  if (!*&v5[v45])
  {

    osloga = sub_241352FDC();
    v23 = sub_2413540BC();
    if (os_log_type_enabled(osloga, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v59[0] = v25;
      *v24 = 136315138;
      v52 = sub_241352C0C();
      v54 = v53;

      v55 = sub_2412DDC2C(v52, v54, v59);

      *(v24 + 4) = v55;
      v30 = "Failed to create tracked raycast for entity %s";
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  if ([objc_opt_self() wantsTrackedRaycastStatus])
  {
    v48 = [objc_opt_self() defaultCenter];
    if (qword_27E537C78 != -1)
    {
      swift_once();
    }

    v49 = qword_27E5418D8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538720);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241365EA0;
    v59[0] = 0xD000000000000026;
    v59[1] = 0x800000024135E230;
    sub_24135456C();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 1;
    sub_241244BF0(inited);
    swift_setDeallocating();
    sub_241246278(inited + 32, &unk_27E538730);
    v51 = sub_241353B4C();

    [v48 postNotificationName:v49 object:0 userInfo:v51];
  }
}

void sub_24130F64C()
{
  v1 = v0;
  if (qword_27E537CD0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v2 = sub_241352FFC();
    __swift_project_value_buffer(v2, qword_27E53A538);
    v3 = sub_241352FDC();
    v4 = sub_2413540DC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_241215000, v3, v4, "createTrackedRaycastOnEntityControllers", v5, 2u);
      MEMORY[0x245CE4870](v5, -1, -1);
    }

    v6 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v8 = v7 >> 62 ? sub_2413544EC() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v8)
    {
      break;
    }

    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x245CE29C0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_24124954C();
      sub_24130EE30(v11);

      ++v9;
      if (v12 == v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

LABEL_16:
}

void sub_24130F824(unint64_t a1, __n128 a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
LABEL_20:

      return;
    }

    v7 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
    v8 = *&v5[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
    if (v8)
    {
      v9 = v6;
      v10 = *(v8 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (v10 && *&v10[qword_27E53A1C8] == 2)
      {
        if (a1 >> 62)
        {
          if (sub_2413544EC())
          {
LABEL_8:
            if ((a1 & 0xC000000000000001) != 0)
            {
              v34 = v10;
              v13 = MEMORY[0x245CE29C0](0, a1);
            }

            else
            {
              if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_32;
              }

              v11 = *(a1 + 32);
              v12 = v10;
              v13 = v11;
            }

            v2 = v13;
            [v13 worldTransform];
            v15 = vsubq_f32(v14, v36);
            v16 = vmulq_f32(v15, v15);
            if (sqrtf(v16.f32[2] + vaddv_f32(*v16.f32)) < 0.05)
            {
              sub_241249344(v2);

              v9 = v2;
LABEL_19:

              v5 = v9;
              goto LABEL_20;
            }

            a1 = [objc_opt_self() defaultCenter];
            if (qword_27E537C78 == -1)
            {
LABEL_23:
              v27 = qword_27E5418D8;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538720);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_241365EA0;
              sub_24135456C();
              *(inited + 96) = MEMORY[0x277D839B0];
              *(inited + 72) = 0;
              sub_241244BF0(inited);
              swift_setDeallocating();
              sub_241246278(inited + 32, &unk_27E538730);
              v29 = sub_241353B4C();

              [a1 postNotificationName:v27 object:0 userInfo:v29];

              if (qword_27E537CD0 != -1)
              {
                swift_once();
              }

              v30 = sub_241352FFC();
              __swift_project_value_buffer(v30, qword_27E53A538);
              v31 = sub_241352FDC();
              v32 = sub_2413540AC();
              if (os_log_type_enabled(v31, v32))
              {
                v33 = swift_slowAlloc();
                *v33 = 0;
                _os_log_impl(&dword_241215000, v31, v32, "[Tracked Raycast] Tracked raycast distance threshold more than 5cm", v33, 2u);
                MEMORY[0x245CE4870](v33, -1, -1);
              }

              v10 = v9;
              v9 = v31;
              goto LABEL_19;
            }

LABEL_32:
            swift_once();
            goto LABEL_23;
          }
        }

        else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_8;
        }

        v10 = v9;
        v9 = v5;
        goto LABEL_19;
      }

      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v17 = sub_241352FFC();
      __swift_project_value_buffer(v17, qword_27E53A538);
      v10 = v5;
      v18 = sub_241352FDC();
      v19 = sub_2413540BC();

      if (!os_log_type_enabled(v18, v19))
      {
LABEL_18:

        sub_24124954C();
        goto LABEL_19;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37 = v21;
      *v20 = 136315138;
      if (*&v5[v7])
      {
        v23 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539F70);
        v24 = sub_241353C7C();
        v26 = sub_2412DDC2C(v24, v25, &v37);

        *(v20 + 4) = v26;
        _os_log_impl(&dword_241215000, v18, v19, "Error: trackedRaycast updateHandler called in emitterMode: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x245CE4870](v23, -1, -1);
        MEMORY[0x245CE4870](v20, -1, -1);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

unint64_t sub_24130FD68()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_24130FDA0()
{
  result = sub_241353BDC();
  qword_27E5418D8 = result;
  return result;
}

id sub_24130FDD8()
{
  v1 = v0;
  v2 = sub_24135124C();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  sub_24135456C();
  if (!*(v3 + 16) || (v4 = sub_2412FD8C4(v8), (v5 & 1) == 0))
  {

    sub_2412AF728(v8);
LABEL_9:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_10;
  }

  sub_2412461A0(*(v3 + 56) + 32 * v4, &v9);
  sub_2412AF728(v8);

  if (!*(&v10 + 1))
  {
LABEL_10:
    sub_241246278(&v9, &qword_27E5386F0);
LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v8[0] & 1) == 0)
  {
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:
  v1[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_trackedRaycastState] = v6;
  return [v1 updateStatusPill];
}

unint64_t sub_24131000C()
{
  result = qword_27E539F68;
  if (!qword_27E539F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539F68);
  }

  return result;
}

uint64_t sub_24131006C(uint64_t a1, int a2)
{
  v15 = a2;
  v3 = sub_241352B6C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-v6];
  v8 = sub_2413517DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24135296C();
  sub_2413516FC();
  (*(v9 + 8))(v11, v8);
  ComponentByClass = REEntityGetComponentByClass();
  if (!ComponentByClass && (v15 & 1) != 0)
  {
    sub_241352C5C();
    sub_2413518AC();
    sub_241352B2C();
    while (1)
    {
      sub_241352B3C();
      if (!v16)
      {
        break;
      }

      ComponentByClass = sub_24131006C(a1, 1);

      if (ComponentByClass)
      {
        goto LABEL_8;
      }
    }

    ComponentByClass = 0;
LABEL_8:
    (*(v5 + 8))(v7, v4);
  }

  return ComponentByClass;
}

uint64_t sub_2413102D0(char a1)
{
  v2 = sub_2413517DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_241352E1C();
    v18 = v7;
    v19 = v6;
    v17 = v8;
    sub_241352C5C();
    sub_24135195C();
    *&v11 = sub_2412AC428(v10, v9);
    v18 = v12;
    v19 = v11;
    v16 = v14;
    v17 = v13;
    sub_24135296C();
    sub_2413516FC();
    (*(v3 + 8))(v5, v2);
    return REEntityComputeTightMeshBounds();
  }

  else
  {
    sub_241352C5C();
    return sub_24135191C();
  }
}

uint64_t sub_241310450(int a1, uint64_t a2, uint64_t a3, float a4)
{
  v24 = a1;
  v23 = sub_2413517DC();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_241352B6C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v21 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  v17 = *(v11 + 16);
  v22 = v10;
  v17(v13, a2, v10);
  sub_241352B2C();
  sub_241352B3C();
  while (v25)
  {
    sub_24135296C();
    sub_2413516FC();
    (*(v7 + 8))(v9, v23);
    v18 = REEntityGetOrAddComponentByClass();
    REHierarchicalFadeComponentSetOpacity();
    REHierarchicalFadeComponentSetUseDepthPrePass();
    MEMORY[0x245CE3510](v18);
    if (v24)
    {
      sub_241352C5C();
      sub_2413518AC();
      sub_241310450(1, v13, a3, a4);

      (*(v11 + 8))(v13, v22);
    }

    else
    {
    }

    sub_241352B3C();
  }

  return (*(v21 + 8))(v16, v14);
}

uint64_t sub_241310774(int a1, uint64_t a2, size_t *a3)
{
  v57 = a2;
  v58 = a3;
  v55 = sub_241351B6C();
  v51 = *(v55 - 8);
  v4 = MEMORY[0x28223BE20](v55);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539F98);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_241352AAC();
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_241351E5C();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v53 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_241352B6C();
  v47 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v40 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  v22 = *(v47 + 16);
  v50 = v16;
  v22(v18, v57, v16);
  v49 = v18;
  sub_241352B2C();
  v56 = v21;
  v57 = v19;
  sub_241352B3C();
  if (v59)
  {
    ++v52;
    v23 = (v43 + 6);
    v45 = (v51 + 16);
    v46 = (v43 + 4);
    ++v43;
    v44 = v51 + 8;
    v41 = (v47 + 8);
    v42 = v51 + 32;
    v47 = v11;
    v48 = a1;
    do
    {
      sub_241352A8C();
      sub_241352ABC();
      (*v52)(v13, v11);
      if ((*v23)(v10, 1, v14) == 1)
      {
        sub_241246278(v10, &qword_27E539F98);
        if ((a1 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        (*v46)(v53, v10, v14);
        v25 = v54;
        sub_241351E2C();
        (*v45)(v6, v25, v55);
        v26 = v58;
        v27 = *v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v26 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = sub_2412A17A8(0, v27[2] + 1, 1, v27);
          *v58 = v27;
        }

        v29 = v10;
        v30 = v6;
        v32 = v27[2];
        v31 = v27[3];
        if (v32 >= v31 >> 1)
        {
          v37 = sub_2412A17A8(v31 > 1, v32 + 1, 1, v27);
          *v58 = v37;
        }

        v33 = v51;
        v34 = v55;
        (*(v51 + 8))(v54, v55);
        (*v43)(v53, v14);
        v35 = *v58;
        *(v35 + 16) = v32 + 1;
        v36 = v35 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32;
        v6 = v30;
        (*(v33 + 32))(v36, v30, v34);
        LOBYTE(a1) = v48;
        v10 = v29;
        v11 = v47;
        if ((v48 & 1) == 0)
        {
LABEL_13:

          goto LABEL_4;
        }
      }

      sub_241352C5C();
      v24 = v49;
      sub_2413518AC();
      sub_241310774(1, v24, v58);

      (*v41)(v24, v50);
LABEL_4:
      sub_241352B3C();
    }

    while (v59);
  }

  return (*(v40 + 8))(v56, v57);
}

uint64_t sub_241310DA0(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241352B6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  (*(v7 + 16))(v9, a2, v6);
  sub_241352B2C();
  sub_241352B3C();
  for (i = v17; v17; i = v17)
  {
    sub_24133BEA4(i, a3);
    if (a1)
    {
      sub_241352C5C();
      sub_2413518AC();
      sub_241310DA0(1, v9, a3);

      (*(v7 + 8))(v9, v6);
    }

    else
    {
    }

    sub_241352B3C();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_241310FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24135164C();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241352B6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  (*(v8 + 16))(v10, a2, v7);
  v51 = v10;
  sub_241352B2C();
  v52 = v13;
  sub_241352B3C();
  if (v53)
  {
    v47 = v50 + 1;
    v48 = 0x8000000241362500;
    v50 = (v8 + 8);
    *&v14 = 136315138;
    v45 = v14;
    v49 = v11;
    do
    {
      v16 = sub_241352C0C();
      v18 = v17;

      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        if ((a1 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v53 = 0;
        v54 = 0xE000000000000000;
        sub_2413545EC();

        v53 = 0xD000000000000015;
        v54 = v48;
        sub_24135163C();
        sub_2413515FC();
        (*v47)(v6, v4);
        v20 = sub_2412AE478(8);
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v27 = MEMORY[0x245CE2060](v20, v22, v24, v26);
        v29 = v28;

        MEMORY[0x245CE20D0](v27, v29);

        sub_241352C1C();
        if (qword_27E537CD0 != -1)
        {
          swift_once();
        }

        v30 = sub_241352FFC();
        __swift_project_value_buffer(v30, qword_27E53A538);

        v31 = sub_241352FDC();
        v32 = sub_2413540DC();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v53 = v46;
          *v33 = v45;
          v34 = sub_241352C0C();
          v36 = v7;
          v37 = v6;
          v38 = v4;
          v39 = a1;
          v40 = sub_2412DDC2C(v34, v35, &v53);

          *(v33 + 4) = v40;
          a1 = v39;
          v4 = v38;
          v6 = v37;
          v7 = v36;
          _os_log_impl(&dword_241215000, v31, v32, "Renamed empty child entity to %s", v33, 0xCu);
          v41 = v46;
          __swift_destroy_boxed_opaque_existential_0(v46);
          MEMORY[0x245CE4870](v41, -1, -1);
          MEMORY[0x245CE4870](v33, -1, -1);
        }

        v11 = v49;
        if ((a1 & 1) == 0)
        {
LABEL_15:

          goto LABEL_4;
        }
      }

      sub_241352C5C();
      v15 = v51;
      sub_2413518AC();
      sub_241310FF8(1, v15);

      (*v50)(v15, v7);
LABEL_4:
      sub_241352B3C();
    }

    while (v53);
  }

  return (*(v44 + 8))(v52, v11);
}

uint64_t sub_241311514(char a1, uint64_t a2, char a3)
{
  v6 = sub_241352B6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  (*(v7 + 16))(v9, a2, v6);
  sub_241352B2C();
  sub_241352B3C();
  for (i = v17; v17; i = v17)
  {
    sub_24126BCBC(i, a3 & 1);
    if (a1)
    {
      sub_241352C5C();
      sub_2413518AC();
      sub_241311514(1, v9, a3 & 1);

      (*(v7 + 8))(v9, v6);
    }

    else
    {
    }

    sub_241352B3C();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24131176C(char a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t, char *))
{
  v8 = sub_241352B6C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v17 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  (*(v9 + 16))(v11, a2, v8);
  sub_241352B2C();
  sub_241352B3C();
  for (i = v18; v18; i = v18)
  {
    a3(i);
    if (a1)
    {
      sub_241352C5C();
      sub_2413518AC();
      a4(1, v11);

      (*(v9 + 8))(v11, v8);
    }

    else
    {
    }

    sub_241352B3C();
  }

  return (*(v17 + 8))(v14, v12);
}

uint64_t sub_2413119A0(char a1, uint64_t a2)
{
  v4 = sub_241352B6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  (*(v5 + 16))(v7, a2, v4);
  sub_241352B2C();
  sub_241352B3C();
  while (v14)
  {
    sub_241352B1C();
    if (a1)
    {
      sub_241352C5C();
      sub_2413518AC();
      sub_2413119A0(1, v7);

      (*(v5 + 8))(v7, v4);
    }

    else
    {
    }

    sub_241352B3C();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_241311BC8(int a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_2413517DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_241352B6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v17 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v14 = *(v8 + 16);
  v18 = v7;
  v14(v10, a2, v7);
  sub_241352B2C();
  sub_241352B3C();
  if (v20)
  {
    v15 = (v4 + 8);
    do
    {
      sub_24135296C();
      sub_2413516FC();
      (*v15)(v6, v3);
      REAnimationComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        REAnimationComponentStopAllAnimations();
      }

      if (v19)
      {
        sub_241352C5C();
        sub_2413518AC();
        sub_241311BC8(1, v10);

        (*(v8 + 8))(v10, v18);
      }

      else
      {
      }

      sub_241352B3C();
    }

    while (v20);
  }

  return (*(v17 + 8))(v13, v11);
}

uint64_t sub_241311EC4(int a1, uint64_t a2)
{
  v21 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538558);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_241352B6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v19 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = *(v7 + 16);
  v20 = v6;
  v13(v9, a2, v6);
  sub_241352B2C();
  v22 = v10;
  sub_241352B3C();
  if (v23[0])
  {
    v14 = sub_241351E0C();
    v15 = *(*(v14 - 8) + 56);
    v16 = (v7 + 8);
    v15(v5, 1, 1, v14);
    while (1)
    {
      v17 = sub_241352A7C();
      sub_241352ACC();
      v17(v23, 0);
      if (v21)
      {
        sub_241352C5C();
        sub_2413518AC();
        sub_241311EC4(1, v9);

        (*v16)(v9, v20);
      }

      else
      {
      }

      sub_241352B3C();
      if (!v23[0])
      {
        break;
      }

      v15(v5, 1, 1, v14);
    }
  }

  return (*(v19 + 8))(v12, v22);
}

uint64_t sub_2413121C0(char a1, void (*a2)(uint64_t), uint64_t a3)
{
  v7 = sub_241352B6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v17 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  (*(v8 + 16))(v10, v3, v7);
  sub_241352B2C();
  sub_241352B3C();
  v14 = v18;
  if (v18)
  {
    v15 = (v8 + 8);
    do
    {
      a2(v14);
      if (a1)
      {
        sub_241352C5C();
        sub_2413518AC();
        sub_2413121C0(1, a2, a3);

        (*v15)(v10, v7);
      }

      else
      {
      }

      sub_241352B3C();
      v14 = v18;
    }

    while (v18);
  }

  return (*(v17 + 8))(v13, v11);
}

uint64_t sub_2413123F8(uint64_t a1, int a2)
{
  v15 = a2;
  v3 = sub_241352B6C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538340);
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  v7 = sub_2413517DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24135296C();
  sub_2413516FC();
  v11 = *(v8 + 8);
  v11(v10, v7);
  result = REEntityGetComponentByClass();
  if (result)
  {
    sub_24135296C();
    sub_2413516FC();
    v11(v10, v7);
    result = REEntityRemoveComponentByClass();
  }

  if (v15)
  {
    sub_241352C5C();
    sub_2413518AC();
    sub_241352B2C();
    while (1)
    {
      sub_241352B3C();
      if (!v16)
      {
        break;
      }

      sub_2413123F8(a1, 1);
    }

    return (*(v14 + 8))(v6, v4);
  }

  return result;
}

uint64_t sub_24131268C(unint64_t a1)
{
  v3 = sub_2413517DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1;
  if (a1 >> 62)
  {
LABEL_18:
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = sub_2413544EC();
  }

  else
  {
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v14 = a1 & 0xC000000000000001;
  ++v4;
  while (v15 != v7)
  {
    if (v14)
    {
      MEMORY[0x245CE29C0](v7, a1);
      if (__OFADD__(v7, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v7 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_12;
      }
    }

    sub_24135296C();
    sub_2413516FC();
    v8 = *v4;
    (*v4)(v6, v3);
    v9 = v17;
    sub_24135296C();
    sub_2413516FC();

    v8(v6, v3);
    ++v7;
    if (v9 == v17)
    {
      v10 = v16;

      return v10;
    }
  }

  sub_241352C5C();
  if (!sub_24135188C())
  {
    return 0;
  }

  v10 = sub_24131268C(a1);

  return v10;
}

uint64_t sub_2413128D0()
{
  v1 = v0;
  v2 = sub_241351DDC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = sub_241351DEC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x277CDAD70])
  {
    return 0x646C726F77;
  }

  if (v16 == *MEMORY[0x277CDAD68])
  {
    (*(v13 + 96))(v15, v12);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E53A930) + 48);
    (*(v3 + 32))(v11, v15, v2);
    (*(v3 + 16))(v9, v11, v2);
    sub_241351DAC();
    sub_2413151C8(&qword_27E539FC0, MEMORY[0x277CDAD90]);
    v19 = sub_241353BCC();
    v20 = *(v3 + 8);
    v20(v6, v2);
    if (v19)
    {
      v20(v9, v2);
      v20(v11, v2);
      v21 = sub_241351D9C();
      (*(*(v21 - 8) + 8))(&v15[v18], v21);
      return 0x746E6F7A69726F68;
    }

    else
    {
      sub_241351DCC();
      v22 = sub_241353BCC();
      v20(v6, v2);
      v20(v9, v2);
      v20(v11, v2);
      v23 = sub_241351D9C();
      (*(*(v23 - 8) + 8))(&v15[v18], v23);
      if (v22)
      {
        return 0x6C61636974726576;
      }

      else
      {
        return 0x667275732D796E61;
      }
    }
  }

  else if (v16 == *MEMORY[0x277CDAD60])
  {
    (*(v13 + 8))(v15, v12);
    return 0x6567616D69;
  }

  else if (v16 == *MEMORY[0x277CDAD88])
  {
    (*(v13 + 8))(v15, v12);
    return 0x7463656A626FLL;
  }

  else if (v16 == *MEMORY[0x277CDAD58])
  {
    return 1701011814;
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_241312DC0()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E539F78);
  __swift_project_value_buffer(v0, qword_27E539F78);
  return sub_241352FEC();
}

uint64_t sub_241312E6C()
{
  v70 = *v0;
  v63 = sub_2413517DC();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539FC8);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v54 - v3;
  v68 = sub_241351ADC();
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_241351B7C();
  v69 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v58 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538330);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v54 - v7;
  v8 = sub_241351A7C();
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v54 - v11;
  v12 = sub_241351B6C();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_241351E1C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539F98);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v54 - v18;
  sub_241314E58(&unk_2852FDA28);
  v66 = v20;
  *(v0 + qword_27E539FA0) = sub_241314EA4(v20);
  v21 = sub_24135180C();

  sub_241352C1C();
  sub_241351A1C();
  v22 = MEMORY[0x245CDFDC0](v66);
  sub_24135221C();
  v67 = sub_24135220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  v23 = swift_allocObject();
  v54 = xmmword_241365C30;
  *(v23 + 16) = xmmword_241365C30;
  *(v23 + 32) = v22;
  (*(v14 + 104))(v16, *MEMORY[0x277CDADC0], v13);

  sub_241351A2C();
  sub_241351A3C();
  sub_241351B4C();
  v24 = v56;
  sub_241351E4C();
  v25 = sub_241351E5C();
  (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
  sub_2413151C8(&qword_27E539FB8, type metadata accessor for SceneReconstructionGroundPlane);
  sub_24135186C();
  v26 = swift_allocObject();
  *(v26 + 16) = v54;
  *(v26 + 32) = v22;
  v27 = *MEMORY[0x277CDAC78];
  v28 = *(v69 + 104);
  v29 = v58;
  v30 = v24;
  v69 += 104;
  v28(v58, v27, v24);
  v59 = v22;
  v31 = v21;

  v32 = v57;
  sub_241351F7C();
  v33 = sub_241351F8C();
  v34 = *(v33 - 8);
  (*(v34 + 56))(v32, 0, 1, v33);
  sub_2413151C8(&qword_27E539FD0, type metadata accessor for SceneReconstructionGroundPlane);
  sub_241351AAC();
  v35 = sub_241351A9C();
  if (!(*(v34 + 48))(v36, 1, v33))
  {
    v28(v29, *MEMORY[0x277CDAC70], v30);
    sub_241351F6C();
  }

  v35(v72, 0);
  sub_241351EFC();
  sub_241351EEC();
  v38 = v64;
  v37 = v65;
  v39 = v62;
  v40 = v61;
  sub_241258074(&v71, v72);
  sub_24127C104(v72, &v71);
  v41 = sub_2412A25A0(0, 1, 1, MEMORY[0x277D84F90]);
  v43 = v41[2];
  v42 = v41[3];
  if (v43 >= v42 >> 1)
  {
    v41 = sub_2412A25A0((v42 > 1), v43 + 1, 1, v41);
  }

  __swift_destroy_boxed_opaque_existential_0(v72);
  v41[2] = v43 + 1;
  sub_241258074(&v71, &v41[5 * v43 + 4]);
  sub_2413519FC();
  sub_2413519DC();

  sub_241351ABC();
  v44 = v60;
  v45 = v38;
  v46 = v68;
  (*(v37 + 16))(v60, v38, v68);
  (*(v37 + 56))(v44, 0, 1, v46);
  sub_2413151C8(&qword_27E539FE0, type metadata accessor for SceneReconstructionGroundPlane);
  sub_241352C8C();
  sub_24135296C();
  sub_2413516FC();

  v47 = *(v39 + 8);
  v48 = v63;
  v47(v40, v63);
  REMaterialParameterBlockArrayComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    sub_24135296C();
    sub_2413516FC();
    v47(v40, v48);
    REEntityRemoveComponentByClass();
  }

  else
  {
    if (qword_27E537C80 != -1)
    {
      swift_once();
    }

    v49 = sub_241352FFC();
    __swift_project_value_buffer(v49, qword_27E539F78);
    v50 = sub_241352FDC();
    v51 = sub_2413540BC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_241215000, v50, v51, "SceneReconstructionGroundPlane: does not have REMaterialParameterBlockArrayComponent", v52, 2u);
      MEMORY[0x245CE4870](v52, -1, -1);
    }
  }

  sub_24135189C();

  sub_241352C3C();

  (*(v37 + 8))(v45, v68);
  return v31;
}

uint64_t sub_241313AA4()
{
  sub_241352C6C();

  return swift_deallocClassInstance();
}

uint64_t static CollisionFilter.calculateARQLCollisionFilter(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_241352B6C();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241351B6C();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539F98);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_241352AAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_241351E5C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x277D84F90];
  v27 = a1;
  sub_241352A8C();
  sub_241352ABC();
  (*(v13 + 8))(v15, v12);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_241246278(v11, &qword_27E539F98);
  }

  else
  {
    (*(v17 + 32))(v19, v11, v16);
    sub_241351E2C();
    v20 = sub_2412A17A8(0, 1, 1, MEMORY[0x277D84F90]);
    v22 = v20[2];
    v21 = v20[3];
    if (v22 >= v21 >> 1)
    {
      v20 = sub_2412A17A8(v21 > 1, v22 + 1, 1, v20);
    }

    (*(v17 + 8))(v19, v16);
    v20[2] = v22 + 1;
    (*(v25 + 32))(v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, v8, v26);
    v31 = v20;
  }

  sub_241352C5C();
  sub_2413518AC();
  sub_241310774(1, v5, &v31);
  (*(v28 + 8))(v5, v29);
  sub_241313F14(v31, v30);
}

uint64_t sub_241313F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58[2] = a2;
  v3 = sub_241351B6C();
  v65 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241351A7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v58[1] = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v58 - v10;
  sub_241351A4C();
  v12 = sub_241351A6C();
  v13 = *(v7 + 8);
  v13(v11, v6);
  sub_241351A2C();
  v14 = sub_241351A6C();
  v60 = v7 + 8;
  v61 = v11;
  v64 = v6;
  v59 = v13;
  v13(v11, v6);
  v15 = v14 | v12;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = *(v65 + 16);
    v18 = a1 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v62 = *(v65 + 72);
    v63 = v17;
    v65 += 16;
    v19 = (v65 - 8);
    v20 = v61;
    v21 = v59;
    do
    {
      v63(v5, v18, v3);
      sub_241351B5C();
      v22 = sub_241351A6C();
      v21(v20, v64);
      (*v19)(v5, v3);
      v15 |= v22;
      v18 += v62;
      --v16;
    }

    while (v16);
  }

  if (qword_27E537C80 != -1)
  {
    swift_once();
  }

  v23 = sub_241352FFC();
  __swift_project_value_buffer(v23, qword_27E539F78);
  v24 = sub_241352FDC();
  v25 = sub_2413540DC();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v61;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v67 = v29;
    *v28 = 136315138;
    v66 = v15;
    sub_241315174();
    v30 = sub_241353D7C();
    v32 = sub_2412DDC2C(v30, v31, &v67);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_241215000, v24, v25, "[CollisionFilter] Accumulated existing filter groups %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x245CE4870](v29, -1, -1);
    MEMORY[0x245CE4870](v28, -1, -1);
  }

  v33 = v64;
  sub_241351A3C();
  v34 = sub_241351A6C();
  v35 = v59;
  v59(v27, v33);
  if (v15 != v34)
  {
    sub_241351A4C();
    v36 = sub_241351A6C();
    v35(v27, v33);
    sub_241351A4C();
    v41 = sub_241351A6C();
    v35(v27, v33);
    v40 = ~(v41 | v15);
    v37 = sub_241352FDC();
    v42 = sub_2413540DC();
    if (!os_log_type_enabled(v37, v42))
    {
      goto LABEL_17;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_241215000, v37, v42, "[CollisionFilter] Setting group to accumulated group and mask to invert of accumulated groups", v39, 2u);
    goto LABEL_15;
  }

  if (qword_27E537C88 != -1)
  {
    swift_once();
  }

  v36 = dword_27E539F90;
  v37 = sub_241352FDC();
  v38 = sub_2413540DC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_241215000, v37, v38, "[CollisionFilter] Accumulated group is all groups. Setting group and mask to fallback value", v39, 2u);
    v40 = 0x10000000;
LABEL_15:
    MEMORY[0x245CE4870](v39, -1, -1);
    goto LABEL_17;
  }

  v40 = 0x10000000;
LABEL_17:

  v43 = sub_241352FDC();
  v44 = sub_2413540DC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v67 = v46;
    *v45 = 136315138;
    v66 = v36;
    sub_241315174();
    v47 = sub_241353D7C();
    v49 = sub_2412DDC2C(v47, v48, &v67);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_241215000, v43, v44, "[CollisionFilter] Calculated ARQL filter group %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x245CE4870](v46, -1, -1);
    MEMORY[0x245CE4870](v45, -1, -1);
  }

  v50 = sub_241352FDC();
  v51 = sub_2413540DC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v67 = v53;
    *v52 = 136315138;
    v66 = v40;
    sub_241315174();
    v54 = sub_241353D7C();
    v56 = sub_2412DDC2C(v54, v55, &v67);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_241215000, v50, v51, "[CollisionFilter] Calculated ARQL filter mask %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x245CE4870](v53, -1, -1);
    MEMORY[0x245CE4870](v52, -1, -1);
  }

  sub_241351A5C();
  sub_241351A5C();
  return sub_241351B4C();
}

uint64_t sub_241314650()
{
  v0 = sub_241351A7C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241351A4C();
  v4 = sub_241351A6C();
  result = (*(v1 + 8))(v3, v0);
  if (v4 == -1)
  {
    __break(1u);
  }

  else
  {
    dword_27E539F90 = v4 + 1;
  }

  return result;
}

uint64_t static CollisionGroup.arqlFallbackGroup.getter()
{
  if (qword_27E537C88 != -1)
  {
    swift_once();
  }

  return dword_27E539F90;
}

uint64_t type metadata accessor for SceneReconstructionGroundPlane()
{
  result = qword_27E539FA8;
  if (!qword_27E539FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24131487C(uint64_t a1)
{
  v2 = sub_241351DEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_241351DDC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277CDAD68])
  {
    (*(v3 + 96))(v5, v2);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E53A930) + 48);
    (*(v7 + 32))(v12, v5, v6);
    v14 = sub_241351D9C();
    (*(*(v14 - 8) + 8))(&v5[v13], v14);
    sub_241351DCC();
    sub_2413151C8(&qword_27E539FE8, MEMORY[0x277CDAD90]);
    sub_241353DFC();
    sub_241353DFC();
    v15 = *(v7 + 8);
    v15(v10, v6);
    v15(v12, v6);
    if (v17[15] == v17[14])
    {
      return 1;
    }
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

uint64_t sub_241314B6C(uint64_t a1)
{
  v2 = sub_241351D5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241351D4C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277CDAD38])
  {
    (*(v3 + 96))(v5, v2);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539FF8) + 48);
    (*(v7 + 32))(v12, v5, v6);
    v14 = sub_241351D2C();
    (*(*(v14 - 8) + 8))(&v5[v13], v14);
    sub_241351D3C();
    sub_2413151C8(&qword_27E53A000, MEMORY[0x277CDAD40]);
    sub_241353DFC();
    sub_241353DFC();
    v15 = *(v7 + 8);
    v15(v10, v6);
    v15(v12, v6);
    if (v17[1] == v17[0])
    {
      return 1;
    }
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

uint64_t sub_241314E58(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_241314EA4(__n128 a1)
{
  v12[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539FC8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  v4 = sub_241351ADC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2413519FC();
  sub_2413519EC();

  sub_241351ABC();
  sub_241351EFC();
  sub_241351EEC();
  sub_241258074(&v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5389E8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_241365EA0;
  sub_24127C104(v14, v8 + 32);
  sub_241351ACC();
  __swift_destroy_boxed_opaque_existential_0(v14);
  sub_241352C5C();
  swift_allocObject();
  v9 = sub_24135180C();
  (*(v5 + 16))(v3, v7, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  v10 = sub_241352A7C();
  sub_241352A9C();
  v10(v14, 0);

  (*(v5 + 8))(v7, v4);
  return v9;
}

unint64_t sub_241315174()
{
  result = qword_27E539FF0;
  if (!qword_27E539FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539FF0);
  }

  return result;
}

uint64_t sub_2413151C8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 SIMD4<>.xyz.setter(__n128 result)
{
  result.n128_u32[3] = v1->n128_u32[3];
  *v1 = result;
  return result;
}

double SIMD3<>.normalized()(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  *&v2 = v1.f32[2] + vaddv_f32(*v1.f32);
  *v1.f32 = vrsqrte_f32(v2);
  *v1.f32 = vmul_f32(*v1.f32, vrsqrts_f32(v2, vmul_f32(*v1.f32, *v1.f32)));
  *&result = vmulq_n_f32(a1, vmul_f32(*v1.f32, vrsqrts_f32(v2, vmul_f32(*v1.f32, *v1.f32))).f32[0]).u64[0];
  return result;
}

float32x4_t SIMD3<>.normalize()()
{
  v1 = vmulq_f32(*v0, *v0);
  *&v2 = v1.f32[2] + vaddv_f32(*v1.f32);
  *v1.f32 = vrsqrte_f32(v2);
  *v1.f32 = vmul_f32(*v1.f32, vrsqrts_f32(v2, vmul_f32(*v1.f32, *v1.f32)));
  result = vmulq_n_f32(*v0, vmul_f32(*v1.f32, vrsqrts_f32(v2, vmul_f32(*v1.f32, *v1.f32))).f32[0]);
  *v0 = result;
  return result;
}

float32x4_t SIMD3<>.clamp(min:max:)(float32x4_t a1, float32x4_t a2)
{
  v3 = *v2;
  v3.i32[3] = 0;
  a1.i32[3] = 0;
  v4 = vmaxnmq_f32(v3, a1);
  v4.i32[3] = 0;
  a2.i32[3] = 0;
  result = vminnmq_f32(v4, a2);
  *v2 = result;
  return result;
}

double SIMD3<>.clamped(min:max:)(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  a3.i32[3] = 0;
  a1.i32[3] = 0;
  v3 = vmaxnmq_f32(a3, a1);
  v3.i32[3] = 0;
  a2.i32[3] = 0;
  *&result = vminnmq_f32(v3, a2).u64[0];
  return result;
}

uint64_t SIMD3<>.containsNaN()(__n128 a1)
{
  if ((~a1.n128_u32[0] & 0x7F800000) == 0 && (a1.n128_u32[0] & 0x7FFFFF) != 0)
  {
    return 1;
  }

  v2 = (~a1.n128_u32[2] & 0x7F800000) == 0 && (a1.n128_u32[2] & 0x7FFFFF) != 0;
  return (~a1.n128_u32[1] & 0x7F800000) == 0 && (a1.n128_u32[1] & 0x7FFFFF) != 0 || v2;
}

BOOL SIMD3<>.isFinite.getter(__n128 a1)
{
  v1 = vneg_f32(0x7F0000007FLL);
  v2 = vceq_s32(vand_s8(a1.n128_u64[0], v1), v1);
  return ((v2.i32[0] | v2.i32[1]) & 1) == 0 && (~a1.n128_u32[2] & 0x7F800000) != 0;
}

float SIMD3<>.length.setter(float a1)
{
  v2 = vmulq_f32(*v1, *v1);
  v3 = a1 / sqrtf(v2.f32[2] + vaddv_f32(*v2.f32));
  v2.i64[0] = vmulq_n_f32(*v1, v3).u64[0];
  result = vmuls_lane_f32(v3, *v1, 2);
  v2.i64[1] = LODWORD(result);
  *v1 = v2;
  return result;
}

float (*SIMD3<>.length.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = vmulq_f32(*v1, *v1);
  *(a1 + 8) = sqrtf(v2.f32[2] + vaddv_f32(*v2.f32));
  return sub_24131543C;
}

float sub_24131543C(uint64_t a1)
{
  v1 = **a1;
  v2 = vmulq_f32(v1, v1);
  v3 = *(a1 + 8) / sqrtf(v2.f32[2] + vaddv_f32(*v2.f32));
  v2.i64[0] = vmulq_n_f32(v1, v3).u64[0];
  result = vmuls_lane_f32(v3, v1, 2);
  v2.i64[1] = LODWORD(result);
  **a1 = v2;
  return result;
}

float SIMD3<>.distance(to:)(float32x4_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, a1);
  v3 = vmulq_f32(v2, v2);
  return sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
}

float SIMD3<>.distanceSquared(to:)(float32x4_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, a1);
  v3 = vmulq_f32(v2, v2);
  return v3.f32[2] + vaddv_f32(*v3.f32);
}

uint64_t SIMD3<>.arql_description.getter()
{
  MEMORY[0x245CE20D0](40, 0xE100000000000000);
  sub_241353FCC();
  MEMORY[0x245CE20D0](8236, 0xE200000000000000);
  sub_241353FCC();
  MEMORY[0x245CE20D0](8236, 0xE200000000000000);
  sub_241353FCC();
  MEMORY[0x245CE20D0](41, 0xE100000000000000);
  return 0;
}

float64_t SIMD4<>.init(_:)(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a3.f64[1] = a4;
  a1.f64[1] = a2;
  *&a1.f64[0] = vcvt_hight_f32_f64(vcvt_f32_f64(a1), a3).u64[0];
  return a1.f64[0];
}

uint64_t (*SIMD4<>.xyz.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *v1;
  *(v3 + 16) = *v1;
  HIDWORD(v4) = 0;
  *v3 = v4;
  return sub_241315620;
}

float32x4_t SIMD4<>.clamp(min:max:)(float32x4_t a1, float32x4_t a2)
{
  result = vminnmq_f32(vmaxnmq_f32(*v2, a1), a2);
  *v2 = result;
  return result;
}

BOOL SIMD4<>.containsNaN()(__n128 a1)
{
  if ((~a1.n128_u32[0] & 0x7F800000) == 0 && (a1.n128_u32[0] & 0x7FFFFF) != 0)
  {
    return 1;
  }

  v2 = (~a1.n128_u32[1] & 0x7F800000) != 0 || (a1.n128_u32[1] & 0x7FFFFF) == 0;
  if (!v2 || (~a1.n128_u32[2] & 0x7F800000) == 0 && (a1.n128_u32[2] & 0x7FFFFF) != 0)
  {
    return 1;
  }

  if ((~a1.n128_u32[3] & 0x7F800000) != 0)
  {
    return 0;
  }

  return (a1.n128_u32[3] & 0x7FFFFF) != 0;
}

uint64_t SIMD4<>.isFinite.getter(int8x16_t a1)
{
  v1 = (~a1.i32[0] & 0x7F800000) != 0;
  a1.i32[0] = vextq_s8(a1, a1, 8uLL).i32[1];
  v2 = vneg_f32(0x7F0000007FLL);
  v3 = vmvn_s8(vceq_s32(vand_s8(*a1.i8, v2), v2));
  return v1 & v3.i32[0] & v3.i32[1];
}

float32x4_t SIMD4<>.length.setter(float a1)
{
  v2 = vmulq_f32(*v1, *v1);
  result = vmulq_n_f32(*v1, a1 / sqrtf(vaddv_f32(vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL)))));
  *v1 = result;
  return result;
}

float32x4_t (*SIMD4<>.length.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v2 = vmulq_f32(*v1, *v1);
  *(a1 + 8) = sqrtf(vaddv_f32(vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL))));
  return sub_241315794;
}

float32x4_t sub_241315794(uint64_t a1)
{
  v1 = **a1;
  v2 = vmulq_f32(v1, v1);
  result = vmulq_n_f32(v1, *(a1 + 8) / sqrtf(vaddv_f32(vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL)))));
  **a1 = result;
  return result;
}

float32x4_t SIMD4<>.normalize()()
{
  v1 = vmulq_f32(*v0, *v0);
  *v1.i8 = vadd_f32(*v1.i8, *&vextq_s8(v1, v1, 8uLL));
  v1.i32[0] = vadd_f32(*v1.i8, vdup_lane_s32(*v1.i8, 1)).u32[0];
  v2 = vrsqrte_f32(v1.u32[0]);
  v3 = vmul_f32(v2, vrsqrts_f32(v1.u32[0], vmul_f32(v2, v2)));
  result = vmulq_n_f32(*v0, vmul_f32(v3, vrsqrts_f32(v1.u32[0], vmul_f32(v3, v3))).f32[0]);
  *v0 = result;
  return result;
}

double SIMD4<>.normalized()(float32x4_t a1)
{
  v1 = vmulq_f32(a1, a1);
  *v1.i8 = vadd_f32(*v1.i8, *&vextq_s8(v1, v1, 8uLL));
  v1.i32[0] = vadd_f32(*v1.i8, vdup_lane_s32(*v1.i8, 1)).u32[0];
  v2 = vrsqrte_f32(v1.u32[0]);
  v3 = vmul_f32(v2, vrsqrts_f32(v1.u32[0], vmul_f32(v2, v2)));
  *&result = vmulq_n_f32(a1, vmul_f32(v3, vrsqrts_f32(v1.u32[0], vmul_f32(v3, v3))).f32[0]).u64[0];
  return result;
}

float SIMD3<>._xy.setter(__n128 a1)
{
  a1.n128_u64[1] = v1->n128_u32[2];
  *v1 = a1;
  return a1.n128_f32[0];
}

float (*SIMD3<>._xy.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  *a1 = v3;
  *(v3 + 24) = v1;
  v4 = *v1;
  *v3 = *v1;
  *(v3 + 16) = v4;
  return sub_2413158CC;
}

float sub_2413158CC(uint64_t *a1)
{
  v1 = *a1;
  *&v2 = *(v1 + 16);
  *(&v2 + 1) = *(v1 + 8);
  **(v1 + 24) = v2;
  free(v1);
  return result;
}

uint64_t (*SIMD4<>._xyz.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *v1;
  *(v3 + 16) = *v1;
  HIDWORD(v4) = 0;
  *v3 = v4;
  return sub_241315988;
}

__n128 sub_241315960(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  HIDWORD(v2) = v1[7];
  **(v1 + 4) = v2;
  free(v1);
  return result;
}

id sub_24131598C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_241366EF0;
    v4 = objc_opt_self();
    *(v3 + 32) = [v4 currentTraitCollection];
    v5 = *(v0 + 24);
    if (v5)
    {
      v6 = *(v0 + 24);
    }

    else
    {
      v7 = [v4 currentTraitCollection];
      v6 = [v7 preferredContentSizeCategory];

      v5 = 0;
    }

    v8 = v5;
    v9 = [v4 traitCollectionWithPreferredContentSizeCategory_];

    *(v3 + 40) = v9;
    sub_241315B80();
    v10 = sub_241353E1C();

    v2 = [v4 traitCollectionWithTraitsFromCollections_];

    v1 = 0;
  }

  v11 = v1;
  return v2;
}

uint64_t TraitCollectionManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_241315B80()
{
  result = qword_27E53A008;
  if (!qword_27E53A008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E53A008);
  }

  return result;
}

id sub_241315BCC()
{
  result = [objc_allocWithZone(type metadata accessor for ScreenRecorder()) init];
  qword_27E5418F0 = result;
  return result;
}

id sub_241315C00()
{
  v1 = OBJC_IVAR____TtC11AssetViewer14ScreenRecorder____lazy_storage___userNotificationCenter;
  v2 = *(v0 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder____lazy_storage___userNotificationCenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder____lazy_storage___userNotificationCenter);
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v5 = sub_241353BDC();
    v6 = [v4 initWithBundleIdentifier_];

    [v6 setDelegate_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_241315CBC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v61 - v13;
  v15 = sub_24135152C();
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  MEMORY[0x28223BE20](v21);
  v25 = OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_state;
  if (!*(v6 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_state))
  {
    v72 = &v61 - v23;
    v73 = v24;
    v70 = a5;
    v71 = v22;
    *(v6 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_state) = 1;
    v26 = MTLCreateSystemDefaultDevice();
    if (v26)
    {
      v68 = a4;
      v69 = v25;
      *(v6 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_device) = v26;
      v67 = v26;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v27 = (v6 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_config);
      *v27 = a1;
      v27[1] = a2;
      v27[2] = a3;
      v28 = v72;
      sub_241317FF0(3436653, 0xE300000000000000);
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v29 = sub_241352FFC();
      v30 = __swift_project_value_buffer(v29, qword_27E53A538);
      v31 = v71;
      v64 = *(v73 + 16);
      v64(v20, v28, v71);
      v65 = v30;
      v32 = sub_241352FDC();
      v33 = sub_2413540DC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v74[0] = v63;
        *v34 = 136315138;
        v62 = sub_2413514EC();
        v36 = v35;
        v66 = *(v73 + 8);
        v66(v20, v31);
        v37 = sub_2412DDC2C(v62, v36, v74);

        *(v34 + 4) = v37;
        _os_log_impl(&dword_241215000, v32, v33, "Screen recording file path: %s", v34, 0xCu);
        v38 = v63;
        __swift_destroy_boxed_opaque_existential_0(v63);
        MEMORY[0x245CE4870](v38, -1, -1);
        v39 = v34;
        v28 = v72;
        MEMORY[0x245CE4870](v39, -1, -1);
      }

      else
      {

        v66 = *(v73 + 8);
        v66(v20, v31);
      }

      v42 = v64;
      v64(v14, v28, v31);
      (*(v73 + 56))(v14, 0, 1, v31);
      v43 = OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_url;
      swift_beginAccess();
      sub_24124AF2C(v14, v6 + v43);
      swift_endAccess();
      sub_241318320();
      v45 = v44;
      v47 = v46;
      v42(v17, v28, v31);
      type metadata accessor for MovieWriter();
      swift_allocObject();
      *(v6 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_movieWriter) = sub_2413002C4(v17, v45, v47);

      v48 = sub_241352FDC();
      v49 = sub_2413540DC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v74[0] = v51;
        *v50 = 136315138;
        v52 = sub_24135420C();
        v54 = sub_2412DDC2C(v52, v53, v74);

        *(v50 + 4) = v54;
        _os_log_impl(&dword_241215000, v48, v49, "Screen recording video size: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x245CE4870](v51, -1, -1);
        MEMORY[0x245CE4870](v50, -1, -1);
      }

      v55 = v68;
      v25 = v69;
      v56 = *MEMORY[0x277CBECE8];
      v57 = OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_metalTextureCache;
      swift_beginAccess();
      LODWORD(v57) = CVMetalTextureCacheCreate(v56, 0, v67, 0, (v6 + v57));
      swift_endAccess();
      if (!v57)
      {
        if (v55)
        {
          (v55)(0);
          swift_unknownObjectRelease();
          v66(v72, v71);
        }

        else
        {
          v66(v72, v71);
          swift_unknownObjectRelease();
        }

        v60 = 2;
        goto LABEL_20;
      }

      if (v55)
      {
        sub_2412460C0();
        v58 = swift_allocError();
        *v59 = 0xD000000000000023;
        *(v59 + 8) = 0x8000000241362740;
        *(v59 + 16) = 2;
        v55();

        swift_unknownObjectRelease();
        v66(v72, v71);
      }

      else
      {
        v66(v72, v71);
        swift_unknownObjectRelease();
      }
    }

    else if (a4)
    {
      sub_2412460C0();
      v40 = swift_allocError();
      *v41 = 0xD000000000000023;
      *(v41 + 8) = 0x8000000241362710;
      *(v41 + 16) = 2;
      a4();
    }

    v60 = 0;
LABEL_20:
    *(v6 + v25) = v60;
  }
}

uint64_t sub_24131639C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_state) = 0;
    v6 = Strong + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_referenceTime;
    *v6 = 0;
    *(v6 + 8) = 1;
    v7 = OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_metalTextureCache;
    v8 = Strong;
    swift_beginAccess();
    v9 = *&v8[v7];
    *&v8[v7] = 0;
  }

  return a3(a1);
}

id sub_241316460(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25[-v7];
  v9 = sub_24135152C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24124AF9C(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_241246278(v8, &qword_27E538750);
    sub_2412460C0();
    v13 = swift_allocError();
    *v14 = 0xD000000000000029;
    *(v14 + 8) = 0x8000000241362790;
    *(v14 + 16) = 2;
    a2(0, v13);

    return [objc_opt_self() sendAnalyticsWithEvent_];
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v16 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v17 = sub_24135144C();
    v18 = [v16 initWithURL:v17 options:0];

    [v18 duration];
    Seconds = CMTimeGetSeconds(&time);
    v20 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538720);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241365EA0;
    time.value = sub_241353C0C();
    *&time.timescale = v22;
    sub_24135456C();
    *(inited + 96) = MEMORY[0x277D839F8];
    *(inited + 72) = Seconds;
    sub_241244BF0(inited);
    swift_setDeallocating();
    sub_241246278(inited + 32, &unk_27E538730);
    v23 = sub_241353B4C();

    [v20 sendAnalyticsWithEvent:13 payloadDict:v23];

    v24 = swift_allocObject();
    *(v24 + 16) = a2;
    *(v24 + 24) = a3;

    sub_241316840(v12, sub_2413185FC, v24);

    return (*(v10 + 8))(v12, v9);
  }
}

void sub_241316840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v6 = sub_24135152C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v10 = [objc_opt_self() sharedPhotoLibrary];
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v23 = sub_241318564;
  v24 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_2412D5698;
  v22 = &block_descriptor_55;
  v13 = _Block_copy(&aBlock);

  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = v9;
  v14[4] = v18;
  v14[5] = a3;
  v23 = sub_2413185F0;
  v24 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_241316E50;
  v22 = &block_descriptor_61;
  v15 = _Block_copy(&aBlock);

  v16 = v3;

  [v10 performChanges:v13 completionHandler:v15];
  _Block_release(v15);
  _Block_release(v13);
}

uint64_t sub_241316B00(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD97F8]) init];
  [v3 setShouldMoveFile_];
  v4 = [objc_opt_self() creationRequestForAsset];
  v5 = sub_24135144C();
  [v4 addResourceWithType:2 fileURL:v5 options:v3];

  v6 = [v4 placeholderForCreatedAsset];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 localIdentifier];

    v9 = sub_241353C0C();
    v11 = v10;
  }

  else
  {

    v9 = 0;
    v11 = 0;
  }

  swift_beginAccess();
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
}

uint64_t sub_241316C40(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void *))
{
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v9 = sub_241352FFC();
  __swift_project_value_buffer(v9, qword_27E53A538);
  v10 = a2;
  v11 = sub_241352FDC();
  v12 = sub_2413540BC();

  if (!os_log_type_enabled(v11, v12))
  {

    if ((a1 & 1) == 0)
    {
      return a5(a1 & 1, a2);
    }

    goto LABEL_10;
  }

  v22 = a5;
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v23[0] = v14;
  *v13 = 136315138;
  if (a2)
  {
    swift_getErrorValue();
    v15 = sub_241354A3C();
    v17 = v16;
  }

  else
  {
    v17 = 0xE800000000000000;
    v15 = 0x726F727245206F4ELL;
  }

  v18 = sub_2412DDC2C(v15, v17, v23);

  *(v13 + 4) = v18;
  _os_log_impl(&dword_241215000, v11, v12, "Photo library creation request error: %s", v13, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v14);
  MEMORY[0x245CE4870](v14, -1, -1);
  MEMORY[0x245CE4870](v13, -1, -1);

  a5 = v22;
  if (a1)
  {
LABEL_10:
    swift_beginAccess();
    v19 = *(a4 + 16);
    v20 = *(a4 + 24);

    sub_241316EC8(v19, v20);
  }

  return a5(a1 & 1, a2);
}

void sub_241316E50(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_241316EC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v38 - v5;
  v7 = sub_24135152C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = objc_opt_self();
    v12 = sub_241353BDC();
    v13 = [v11 uuidFromLocalIdentifier_];

    if (v13)
    {
      v40 = v2;
      v14 = sub_241353C0C();
      v16 = v15;

      aBlock = 0;
      v42 = 0xE000000000000000;
      sub_2413545EC();

      aBlock = 0xD000000000000014;
      v42 = 0x8000000241362630;
      MEMORY[0x245CE20D0](v14, v16);

      MEMORY[0x245CE20D0](0xD000000000000016, 0x8000000241362650);
      sub_24135150C();

      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_241246278(v6, &qword_27E538750);
      }

      else
      {
        v39 = v8;
        (*(v8 + 32))(v10, v6, v7);
        v17 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
        v38[1] = "currentIBLVersion";
        v18 = sub_241353BDC();
        v19 = objc_opt_self();
        v20 = [v19 bundleWithIdentifier_];

        v21 = v20;
        if (!v20)
        {
          v21 = [v19 mainBundle];
        }

        v22 = v20;
        sub_24135131C();
        sub_241353C3C();

        v23 = sub_241353BDC();

        [v17 setTitle_];

        v24 = sub_241353BDC();
        v25 = [v19 bundleWithIdentifier_];

        v26 = v25;
        if (!v25)
        {
          v26 = [v19 mainBundle];
        }

        v27 = v25;
        sub_24135131C();
        sub_241353C3C();

        v28 = sub_241353BDC();

        [v17 setBody_];

        v29 = sub_241353BDC();
        [v17 setThreadIdentifier_];

        v30 = sub_24135144C();
        [v17 setDefaultActionURL_];

        v31 = sub_241353BDC();
        v32 = [objc_opt_self() iconWithUTI_];

        [v17 setIcon_];
        v33 = v17;
        v34 = sub_241353BDC();
        v35 = [objc_opt_self() requestWithIdentifier:v34 content:v33 trigger:0];

        v36 = sub_241315C00();
        v45 = sub_24131755C;
        v46 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v42 = 1107296256;
        v43 = sub_2412DAEF8;
        v44 = &block_descriptor_46;
        v37 = _Block_copy(&aBlock);
        [v36 addNotificationRequest:v35 withCompletionHandler:v37];
        _Block_release(v37);

        (*(v39 + 8))(v10, v7);
      }
    }
  }
}

void sub_24131755C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v3 = sub_241352FFC();
    __swift_project_value_buffer(v3, qword_27E53A538);
    v4 = a1;
    v5 = sub_241352FDC();
    v6 = sub_2413540BC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_241354A3C();
      v11 = sub_2412DDC2C(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_241215000, v5, v6, "User notification center error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x245CE4870](v8, -1, -1);
      MEMORY[0x245CE4870](v7, -1, -1);
    }

    else
    {
    }
  }
}

void sub_241317710()
{
  if (*(v0 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_state) == 2 && *(v0 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_config))
  {
    if (sub_241317960())
    {
      if (v1)
      {
        v7 = v1;
        v2 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v3 = swift_allocObject();
        *(v3 + 16) = v2;
        *(v3 + 24) = v7;
        v4 = v7;
        swift_unknownObjectRetain();

        RECameraViewDescriptorsComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        RERenderGraphCreateRenderGraphDataStruct();
        RERenderGraphDataStructAddFloat4();
        v5 = swift_allocObject();
        *(v5 + 16) = sub_241318300;
        *(v5 + 24) = v3;
        aBlock[4] = sub_241246138;
        aBlock[5] = v5;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2412D5698;
        aBlock[3] = &block_descriptor_11;
        v6 = _Block_copy(aBlock);

        RECameraViewDescriptorsComponentSnapshotNextFrameWithSettings();
        _Block_release(v6);
        swift_unknownObjectRelease_n();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

id sub_241317960()
{
  pixelBufferOut[4] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_metalTextureCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_movieWriter);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_pixelBufferAdaptor);
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  v6 = [v4 pixelBufferPool];
  if (v6)
  {
    v7 = v6;
    pixelBufferOut[0] = 0;
    v8 = *MEMORY[0x277CBECE8];
    if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], v6, pixelBufferOut) || !pixelBufferOut[0])
    {

LABEL_18:
      return 0;
    }

    image = 0;
    v9 = *(v3 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_videoSize);
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v9 > -9.22337204e18)
    {
      if (v9 < 9.22337204e18)
      {
        v10 = *(v3 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_videoSize + 8);
        if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v10 > -9.22337204e18)
          {
            if (v10 < 9.22337204e18)
            {
              v11 = v9;
              v12 = v10;
              v13 = pixelBufferOut[0];
              if (CVMetalTextureCacheCreateTextureFromImage(v8, v5, v13, 0, MTLPixelFormatBGRA8Unorm_sRGB, v11, v12, 0, &image) || !image)
              {
              }

              else
              {
                v15 = CVMetalTextureGetTexture(image);

                if (v15)
                {
                  v16 = image;
                  v17 = pixelBufferOut[0];

                  return v15;
                }
              }

              goto LABEL_18;
            }

LABEL_29:
            __break(1u);
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_26;
  }

  return 0;
}

void sub_241317BF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2413515EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_2413515DC();
    sub_2413515BC();
    (*(v4 + 8))(v6, v3);
    sub_2413184A4(a2);
  }
}

id sub_241317CFC()
{
  v0[OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_state] = 0;
  v1 = OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_url;
  v2 = sub_24135152C();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = &v0[OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_referenceTime];
  *v3 = 0;
  v3[8] = 1;
  *&v0[OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_device] = 0;
  v4 = &v0[OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_config];
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  *&v0[OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_movieWriter] = 0;
  *&v0[OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_metalTextureCache] = 0;
  *&v0[OBJC_IVAR____TtC11AssetViewer14ScreenRecorder____lazy_storage___userNotificationCenter] = 0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ScreenRecorder();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_241317E18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenRecorder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ScreenRecorder()
{
  result = qword_27E53A028;
  if (!qword_27E53A028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_241317F30()
{
  sub_2412499C8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_241317FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24135152C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 URLsForDirectory:9 inDomains:1];
  v10 = sub_241353E2C();

  if (*(v10 + 16))
  {
    (*(v5 + 16))(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    v11 = [objc_opt_self() processInfo];
    v12 = [v11 globallyUniqueString];

    v13 = sub_241353C0C();
    v15 = v14;

    v16[0] = v13;
    v16[1] = v15;
    MEMORY[0x245CE20D0](46, 0xE100000000000000);
    MEMORY[0x245CE20D0](a1, a2);
    sub_24135145C();

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2413182AC()
{
  result = qword_27E53A100;
  if (!qword_27E53A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A100);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_241318320()
{
  if (qword_27E537B68 != -1)
  {
    swift_once();
  }

  v0 = dword_27E541790;
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 bounds];

  if (v0 >= 401)
  {
    v3 = [v1 mainScreen];
    [v3 scale];
  }
}

uint64_t sub_2413184A4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_movieWriter) && *(v1 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_state) == 2)
  {
    v2 = result;
    v3 = v1 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_referenceTime;
    v4 = *(v3 + 8);

    if (v4 == 1)
    {
      sub_24135156C();
      *v3 = v5;
      *(v3 + 8) = 0;
    }

    result = sub_24135156C();
    if (*(v3 + 8))
    {
      __break(1u);
    }

    else
    {
      sub_241300D6C(v2, v6 - *v3);
    }
  }

  return result;
}

uint64_t sub_241318564()
{
  v1 = *(sub_24135152C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_241316B00(v0 + v2, v3);
}

Swift::Void __swiftcall SecurityScopedURL.stop(isUnitTesting:)(Swift::Bool isUnitTesting)
{
  if (qword_27E537CA0 != -1)
  {
    swift_once();
  }

  v3 = qword_27E53A130;
  [qword_27E53A130 lock];
  v4 = OBJC_IVAR____TtC11AssetViewer17SecurityScopedURL_stopped;
  if ((*(v1 + OBJC_IVAR____TtC11AssetViewer17SecurityScopedURL_stopped) & 1) == 0)
  {
    if (qword_27E537CA8 != -1)
    {
      swift_once();
    }

    v5 = sub_2413190B8(v1 + OBJC_IVAR____TtC11AssetViewer17SecurityScopedURL_url);
    if (!v5)
    {
      if (!isUnitTesting)
      {
        sub_24135149C();
      }

      if (qword_27E537C98 != -1)
      {
        swift_once();
      }

      v6 = sub_241352FFC();
      __swift_project_value_buffer(v6, qword_27E53A118);

      v7 = sub_241352FDC();
      v8 = sub_2413540DC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v24 = v10;
        *v9 = 136315138;
        v11 = sub_2413514DC();
        v13 = sub_2412DDC2C(v11, v12, &v24);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_241215000, v7, v8, "Stopped security scope for URL: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x245CE4870](v10, -1, -1);
        v14 = v9;
        v5 = 0;
        MEMORY[0x245CE4870](v14, -1, -1);
      }
    }

    if (qword_27E537C98 != -1)
    {
      swift_once();
    }

    v15 = sub_241352FFC();
    __swift_project_value_buffer(v15, qword_27E53A118);

    v16 = sub_241352FDC();
    v17 = sub_2413540AC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v5;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136315394;
      v21 = sub_24135142C();
      v23 = sub_2412DDC2C(v21, v22, &v24);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v18;
      _os_log_impl(&dword_241215000, v16, v17, "Stop for URL: %s [%ld]", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x245CE4870](v20, -1, -1);
      MEMORY[0x245CE4870](v19, -1, -1);
    }

    *(v1 + v4) = 1;
  }

  [v3 unlock];
}

void *static SecurityScopedURL.start(url:isUnitTesting:)(uint64_t a1, int a2)
{
  v4 = sub_24135152C();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  swift_allocObject();
  return sub_2413197D0(v7, a2);
}

uint64_t sub_241318AE8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2412FDA8C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2412A8D44();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_24135152C();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_241339B9C(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_241318BC4()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E53A118);
  __swift_project_value_buffer(v0, qword_27E53A118);
  return sub_241352FEC();
}

id sub_241318C3C()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  qword_27E53A130 = result;
  return result;
}

uint64_t sub_241318C70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24135152C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CA0 != -1)
  {
    swift_once();
  }

  v8 = qword_27E53A130;
  [qword_27E53A130 lock];
  swift_beginAccess();
  v9 = *(v1 + 16);
  if (*(v9 + 16))
  {
    v10 = sub_2412FDA8C(a1);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = *(v2 + 16);
        *(v2 + 16) = 0x8000000000000000;
        sub_2412A70D4(v13, a1, isUniquelyReferenced_nonNull_native);
        *(v2 + 16) = v30;
        swift_endAccess();
        if (qword_27E537C98 == -1)
        {
LABEL_7:
          v15 = sub_241352FFC();
          __swift_project_value_buffer(v15, qword_27E53A118);
          v16 = sub_241352FDC();
          v17 = sub_2413540AC();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 134217984;
            *(v18 + 4) = v13;
            _os_log_impl(&dword_241215000, v16, v17, "Count incremented to %ld", v18, 0xCu);
            MEMORY[0x245CE4870](v18, -1, -1);
          }

          goto LABEL_16;
        }
      }

      swift_once();
      goto LABEL_7;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_2412A70D4(1, a1, v19);
  *(v2 + 16) = v30;
  swift_endAccess();
  if (qword_27E537C98 != -1)
  {
    swift_once();
  }

  v20 = sub_241352FFC();
  __swift_project_value_buffer(v20, qword_27E53A118);
  (*(v5 + 16))(v7, a1, v4);
  v21 = sub_241352FDC();
  v22 = sub_2413540AC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31[0] = v24;
    *v23 = 136315138;
    v25 = sub_24135142C();
    v27 = v26;
    (*(v5 + 8))(v7, v4);
    v28 = sub_2412DDC2C(v25, v27, v31);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_241215000, v21, v22, "Started %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x245CE4870](v24, -1, -1);
    MEMORY[0x245CE4870](v23, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
LABEL_16:
  [v8 unlock];
  return v13;
}

uint64_t sub_2413190B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24135152C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43[-1] - v9;
  if (qword_27E537CA0 != -1)
  {
    swift_once();
  }

  v11 = qword_27E53A130;
  [qword_27E53A130 lock];
  swift_beginAccess();
  v12 = *(v1 + 16);
  if (*(v12 + 16) && (v13 = sub_2412FDA8C(a1), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    if (v15 > 0)
    {
      v16 = v15 - 1;
      if (v15 == 1)
      {
        swift_beginAccess();
        sub_241318AE8(a1);
        swift_endAccess();
        if (qword_27E537C98 != -1)
        {
          swift_once();
        }

        v17 = sub_241352FFC();
        __swift_project_value_buffer(v17, qword_27E53A118);
        (*(v5 + 16))(v10, a1, v4);
        v18 = sub_241352FDC();
        v19 = sub_2413540AC();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v43[0] = v21;
          *v20 = 136315138;
          v22 = sub_24135142C();
          v24 = v23;
          (*(v5 + 8))(v10, v4);
          v25 = sub_2412DDC2C(v22, v24, v43);

          *(v20 + 4) = v25;
          _os_log_impl(&dword_241215000, v18, v19, "Stopped %s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x245CE4870](v21, -1, -1);
          MEMORY[0x245CE4870](v20, -1, -1);
        }

        else
        {

          (*(v5 + 8))(v10, v4);
        }

        v16 = 0;
      }

      else
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = *(v2 + 16);
        *(v2 + 16) = 0x8000000000000000;
        sub_2412A70D4(v16, a1, isUniquelyReferenced_nonNull_native);
        *(v2 + 16) = v42;
        swift_endAccess();
        if (qword_27E537C98 != -1)
        {
          swift_once();
        }

        v38 = sub_241352FFC();
        __swift_project_value_buffer(v38, qword_27E53A118);
        v39 = sub_241352FDC();
        v40 = sub_2413540AC();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 134217984;
          *(v41 + 4) = v16;
          _os_log_impl(&dword_241215000, v39, v40, "Count decremented to %ld", v41, 0xCu);
          MEMORY[0x245CE4870](v41, -1, -1);
        }
      }

      goto LABEL_18;
    }
  }

  else
  {
    swift_endAccess();
  }

  if (qword_27E537C98 != -1)
  {
    swift_once();
  }

  v26 = sub_241352FFC();
  __swift_project_value_buffer(v26, qword_27E53A118);
  (*(v5 + 16))(v7, a1, v4);
  v27 = sub_241352FDC();
  v28 = sub_2413540BC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v43[0] = v30;
    *v29 = 136315138;
    sub_24131A288();
    v31 = sub_24135491C();
    v32 = v11;
    v34 = v33;
    (*(v5 + 8))(v7, v4);
    v35 = sub_2412DDC2C(v31, v34, v43);
    v11 = v32;
    v16 = -1;

    *(v29 + 4) = v35;
    _os_log_impl(&dword_241215000, v27, v28, "Attempt to stop a non-existing or already stopped URL: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x245CE4870](v30, -1, -1);
    MEMORY[0x245CE4870](v29, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    v16 = -1;
  }

LABEL_18:
  [v11 unlock];
  return v16;
}

uint64_t sub_241319680(uint64_t a1)
{
  if (qword_27E537CA0 != -1)
  {
    swift_once();
  }

  v3 = qword_27E53A130;
  [qword_27E53A130 lock];
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_2412FDA8C(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  [v3 unlock];
  return v7;
}

uint64_t sub_241319750()
{

  return swift_deallocClassInstance();
}

unint64_t sub_241319788()
{
  type metadata accessor for SecurityScopeCounter();
  v0 = swift_allocObject();
  result = sub_241245DB0(MEMORY[0x277D84F90]);
  *(v0 + 16) = result;
  qword_27E541928 = v0;
  return result;
}

void *sub_2413197D0(uint64_t a1, int a2)
{
  v3 = v2;
  v67 = a2;
  v64[1] = *v2;
  v5 = sub_24135152C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v64 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v64 - v13;
  *(v3 + OBJC_IVAR____TtC11AssetViewer17SecurityScopedURL_stopped) = 0;
  if (qword_27E537CA0 != -1)
  {
    swift_once();
  }

  v15 = qword_27E53A130;
  [qword_27E53A130 lock];
  if (qword_27E537CA8 != -1)
  {
    swift_once();
  }

  v65 = v11;
  v64[0] = v8;
  v71 = qword_27E541928;
  v72 = sub_241319680(a1);
  if (qword_27E537C98 != -1)
  {
    swift_once();
  }

  v16 = sub_241352FFC();
  v17 = __swift_project_value_buffer(v16, qword_27E53A118);
  v73 = *(v6 + 16);
  v73(v14, a1, v5);
  v66 = v17;
  v18 = sub_241352FDC();
  v19 = sub_2413540AC();
  if (!os_log_type_enabled(v18, v19))
  {

    v49 = v14;
    v29 = *(v6 + 8);
    v29(v49, v5);
    if (v72 < 1)
    {
      goto LABEL_9;
    }

LABEL_14:
    v73(v3 + OBJC_IVAR____TtC11AssetViewer17SecurityScopedURL_url, a1, v5);
    sub_241318C70(a1);
LABEL_17:
    [v15 unlock];
    v29(a1, v5);
    return v3;
  }

  v20 = swift_slowAlloc();
  v69 = v3;
  v21 = v20;
  v22 = swift_slowAlloc();
  v68 = a1;
  v23 = v22;
  v74 = v22;
  *v21 = 136315394;
  v24 = sub_24135142C();
  v70 = v15;
  v25 = v5;
  v27 = v26;
  v28 = v14;
  v29 = *(v6 + 8);
  v29(v28, v25);
  v30 = sub_2412DDC2C(v24, v27, &v74);
  v5 = v25;
  v15 = v70;

  *(v21 + 4) = v30;
  *(v21 + 12) = 2048;
  v31 = v72;
  *(v21 + 14) = v72;
  _os_log_impl(&dword_241215000, v18, v19, "Start for URL: %s [%ld]", v21, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v23);
  v32 = v23;
  a1 = v68;
  MEMORY[0x245CE4870](v32, -1, -1);
  v33 = v21;
  v3 = v69;
  MEMORY[0x245CE4870](v33, -1, -1);

  if (v31 >= 1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v70 = v15;
  if (v67 & 1) != 0 || (sub_2413514BC())
  {
    v34 = v73;
    v73(v3 + OBJC_IVAR____TtC11AssetViewer17SecurityScopedURL_url, a1, v5);
    sub_241318C70(a1);
    v35 = v65;
    v34(v65, a1, v5);
    v36 = sub_241352FDC();
    v37 = sub_2413540DC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v69 = v3;
      v39 = v38;
      v40 = swift_slowAlloc();
      v68 = a1;
      v41 = v40;
      v74 = v40;
      *v39 = 136315138;
      v42 = sub_2413514DC();
      v43 = v5;
      v45 = v44;
      v29(v35, v43);
      v46 = sub_2412DDC2C(v42, v45, &v74);
      v5 = v43;

      *(v39 + 4) = v46;
      _os_log_impl(&dword_241215000, v36, v37, "Started security scope for URL: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v47 = v41;
      a1 = v68;
      MEMORY[0x245CE4870](v47, -1, -1);
      v48 = v39;
      v3 = v69;
      MEMORY[0x245CE4870](v48, -1, -1);
    }

    else
    {

      v29(v35, v5);
    }

    v15 = v70;
    goto LABEL_17;
  }

  v51 = v64[0];
  v73(v64[0], a1, v5);
  v52 = sub_241352FDC();
  v53 = sub_2413540AC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v69 = v3;
    v55 = v54;
    v56 = swift_slowAlloc();
    v68 = a1;
    v57 = v56;
    v74 = v56;
    *v55 = 136315138;
    v58 = sub_24135142C();
    v59 = v5;
    v61 = v60;
    v29(v51, v59);
    v62 = sub_2412DDC2C(v58, v61, &v74);
    v5 = v59;

    *(v55 + 4) = v62;
    _os_log_impl(&dword_241215000, v52, v53, "Security scoping not started for URL: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    v63 = v57;
    a1 = v68;
    MEMORY[0x245CE4870](v63, -1, -1);
    MEMORY[0x245CE4870](v55, -1, -1);
  }

  else
  {

    v29(v51, v5);
  }

  [v70 unlock];
  v29(a1, v5);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t SecurityScopedURL.deinit()
{
  SecurityScopedURL.stop(isUnitTesting:)(0);
  v1 = OBJC_IVAR____TtC11AssetViewer17SecurityScopedURL_url;
  v2 = sub_24135152C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SecurityScopedURL.__deallocating_deinit()
{
  SecurityScopedURL.stop(isUnitTesting:)(0);
  v1 = OBJC_IVAR____TtC11AssetViewer17SecurityScopedURL_url;
  v2 = sub_24135152C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

BOOL static SecurityScopedURL.isSecurityScoped(url:)(uint64_t a1)
{
  if (qword_27E537CA0 != -1)
  {
    swift_once();
  }

  v2 = qword_27E53A130;
  [qword_27E53A130 lock];
  if (qword_27E537CA8 != -1)
  {
    swift_once();
  }

  v3 = sub_241319680(a1) > 0;
  [v2 unlock];
  return v3;
}

uint64_t type metadata accessor for SecurityScopedURL()
{
  result = qword_27E53A140;
  if (!qword_27E53A140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24131A1D8()
{
  result = sub_24135152C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24131A288()
{
  result = qword_27E539990;
  if (!qword_27E539990)
  {
    sub_24135152C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539990);
  }

  return result;
}

uint64_t type metadata accessor for ARQLView()
{
  result = qword_27E53A200;
  if (!qword_27E53A200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24131A3D0(char a1)
{
  v2 = v1;
  v4 = sub_2413527AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v32 = &v29 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v16 = sub_241352FFC();
  __swift_project_value_buffer(v16, qword_27E53A538);
  v17 = sub_241352FDC();
  v18 = sub_2413540DC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = a1 & 1;
    _os_log_impl(&dword_241215000, v17, v18, "setARLighting called, enabled? %{BOOL}d", v19, 8u);
    MEMORY[0x245CE4870](v19, -1, -1);
  }

  sub_24135278C();
  if (a1)
  {
    v20 = sub_2413527CC();
    v31 = v2;
    v21 = *(v5 + 16);
    v30 = v21;
    v22 = v32;
    v21();
    v29 = v8;
    (v21)(v8, v15, v4);
    sub_24132209C(&qword_27E5399A0, MEMORY[0x277CDB620]);
    sub_2413543FC();
    sub_2413543EC();
    v23 = *(v5 + 8);
    v23(v13, v4);
    v23(v15, v4);
    v20(v33, 0);
    sub_24135279C();
    v31 = sub_2413527CC();
    v24 = v30;
    (v30)(v22);
    (v24)(v29, v15, v4);
    sub_2413543FC();
    sub_2413543EC();
    v23(v13, v4);
    v23(v15, v4);
    return v31(v33, 0);
  }

  else
  {
    v26 = sub_2413527CC();
    sub_241287D44(v15, v13);
    v27 = *(v5 + 8);
    v27(v13, v4);
    v27(v15, v4);
    v26(v33, 0);
    sub_24135279C();
    v28 = sub_2413527CC();
    sub_241287D44(v15, v13);
    v27(v13, v4);
    v27(v15, v4);
    return v28(v33, 0);
  }
}

unint64_t sub_24131A86C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_241321DFC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_24131A8A0()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x7463656A626FLL;
    }

    if (v1 == 1)
    {
      return 0x6F487463656A626FLL;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 29281;
  }

  if (v1 != 3)
  {
LABEL_11:
    result = sub_2413549AC();
    __break(1u);
    return result;
  }

  return 0x72676F6C6F487261;
}

uint64_t sub_24131A95C()
{
  v1 = qword_27E53A180;
  if (*(v0 + qword_27E53A180))
  {
    v2 = *(v0 + qword_27E53A180);
  }

  else
  {
    v2 = sub_24131A9C4();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_24131A9C4()
{
  v0 = sub_24135170C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24135257C();
  sub_241351C6C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538360);
  sub_241351BDC();
  swift_dynamicCast();
  sub_241351BCC();

  result = REAssetManagerCreateAssetHandle();
  if (result)
  {
    v5 = result;
    sub_241352E6C();
    v8[3] = MEMORY[0x277D841D8];
    v8[0] = v5;
    sub_2413516EC();
    __swift_destroy_boxed_opaque_existential_0(v8);
    v6 = sub_241352E4C();
    (*(v1 + 8))(v3, v0);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24131AB50(uint64_t a1)
{
  v2 = *&v1[qword_27E53A1B0];
  *&v1[qword_27E53A1B0] = a1;
  if (a1)
  {
    if (v2 == a1)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (!v2)
    {
      goto LABEL_11;
    }
  }

  v3 = qword_27E537CD0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_241352FFC();
  __swift_project_value_buffer(v4, qword_27E53A538);
  v5 = v1;
  v6 = sub_241352FDC();
  v7 = sub_2413540DC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v5 + qword_27E53A1C8);

    _os_log_impl(&dword_241215000, v6, v7, "updateIBL for: %ld", v8, 0xCu);
    MEMORY[0x245CE4870](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  sub_24131C5B4(*(&v5->isa + qword_27E53A1C8));

LABEL_11:
}

void sub_24131ACE4(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *&a1[qword_27E53A1C8];
  *&a1[qword_27E53A1C8] = a3;
  v4 = a1;
  sub_24131AD44(v3);
}

void sub_24131AD44(objc_class *a1)
{
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v3 = sub_241352FFC();
  __swift_project_value_buffer(v3, qword_27E53A538);
  v4 = v1;
  v5 = sub_241352FDC();
  v6 = sub_2413540DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v4 + qword_27E53A1C8);

    _os_log_impl(&dword_241215000, v5, v6, "Setting emitter mode: %ld", v7, 0xCu);
    MEMORY[0x245CE4870](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }

  v8 = qword_27E53A1C8;
  if (*(&v4->isa + qword_27E53A1C8) != a1 && *(&v4->isa + qword_27E53A1C0) == 1)
  {
    sub_24131BF18();
    v9 = v4;
    v10 = sub_241352FDC();
    v11 = sub_2413540DC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *(v4 + v8);

      _os_log_impl(&dword_241215000, v10, v11, "updateIBL for: %ld", v12, 0xCu);
      MEMORY[0x245CE4870](v12, -1, -1);
    }

    else
    {

      v10 = v9;
    }

    sub_24131C5B4(*(&v4->isa + v8));
  }
}

uint64_t sub_24131AF34(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_24135170C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_27E53A1D0;
  if (v2[qword_27E53A1D0] != v3)
  {
    v30 = result;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v10 = sub_241352FFC();
    __swift_project_value_buffer(v10, qword_27E53A538);
    v11 = v2;
    v12 = sub_241352FDC();
    v13 = sub_2413540DC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = v2[v9];

      _os_log_impl(&dword_241215000, v12, v13, "Setting darkMode = %{BOOL}d", v14, 8u);
      MEMORY[0x245CE4870](v14, -1, -1);
    }

    else
    {

      v12 = v11;
    }

    v15 = qword_27E53A188;
    swift_beginAccess();
    result = sub_241321FBC(v11 + v15, v31);
    v16 = v32;
    if (v32)
    {
      v17 = __swift_project_boxed_opaque_existential_1(v31, v32);
      v29 = &v29;
      v18 = *(v16 - 8);
      MEMORY[0x28223BE20](v17);
      v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v20);
      sub_241352C9C();
      (*(v18 + 8))(v20, v16);
      sub_241351EDC();
      sub_2413516FC();

      v21 = *(v5 + 8);
      v22 = v30;
      v21(v8, v30);
      REMaterialAssetSetFloat();
      __swift_destroy_boxed_opaque_existential_0(v31);
      v23 = qword_27E53A190;
      swift_beginAccess();
      result = sub_241321FBC(v11 + v23, v31);
      v24 = v32;
      if (v32)
      {
        v25 = __swift_project_boxed_opaque_existential_1(v31, v32);
        v29 = &v29;
        v26 = *(v24 - 8);
        MEMORY[0x28223BE20](v25);
        v28 = &v29 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v26 + 16))(v28);
        sub_241352C9C();
        (*(v26 + 8))(v28, v24);
        sub_241351EDC();
        sub_2413516FC();

        v21(v8, v22);
        REMaterialAssetSetFloat();
        return __swift_destroy_boxed_opaque_existential_0(v31);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24131B3D8(float a1)
{
  v2 = v1;
  v4 = sub_24135170C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + qword_27E53A1D8) != a1)
  {
    v9 = qword_27E53A190;
    swift_beginAccess();
    result = sub_241321FBC(v2 + v9, v23);
    v10 = v24;
    if (v24)
    {
      v11 = __swift_project_boxed_opaque_existential_1(v23, v24);
      v12 = *(v10 - 8);
      MEMORY[0x28223BE20](v11);
      v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v14);
      sub_241352C9C();
      (*(v12 + 8))(v14, v10);
      sub_241351EDC();
      sub_2413516FC();

      v15 = *(v5 + 8);
      v15(v8, v4);
      REMaterialAssetSetFloat();
      __swift_destroy_boxed_opaque_existential_0(v23);
      v16 = qword_27E53A198;
      swift_beginAccess();
      result = sub_241321FBC(v2 + v16, v23);
      v17 = v24;
      if (v24)
      {
        v18 = __swift_project_boxed_opaque_existential_1(v23, v24);
        v22[1] = v22;
        v19 = *(v17 - 8);
        MEMORY[0x28223BE20](v18);
        v21 = v22 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v19 + 16))(v21);
        sub_241352C9C();
        (*(v19 + 8))(v21, v17);
        sub_241351EDC();
        sub_2413516FC();

        v15(v8, v4);
        REMaterialAssetSetFloat();
        return __swift_destroy_boxed_opaque_existential_0(v23);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24131B77C(float a1)
{
  v2 = v1;
  v4 = sub_24135170C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_27E53A1E0;
  if (*&v1[qword_27E53A1E0] != a1)
  {
    v34 = result;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v10 = sub_241352FFC();
    __swift_project_value_buffer(v10, qword_27E53A538);
    v11 = v1;
    v12 = sub_241352FDC();
    v13 = sub_2413540AC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = *&v2[v9];
      _os_log_impl(&dword_241215000, v12, v13, "Setting blendBackground to: %f", v14, 0xCu);
      MEMORY[0x245CE4870](v14, -1, -1);
    }

    v15 = qword_27E53A188;
    swift_beginAccess();
    result = sub_241321FBC(&v11[v15], v35);
    v16 = v36;
    if (v36)
    {
      v17 = __swift_project_boxed_opaque_existential_1(v35, v36);
      v18 = *(v16 - 8);
      MEMORY[0x28223BE20](v17);
      v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v20);
      sub_241352C9C();
      (*(v18 + 8))(v20, v16);
      sub_241351EDC();
      sub_2413516FC();

      v33 = *(v5 + 8);
      v33(v8, v34);
      REMaterialAssetSetFloat();
      __swift_destroy_boxed_opaque_existential_0(v35);
      v21 = qword_27E53A190;
      swift_beginAccess();
      result = sub_241321FBC(&v11[v21], v35);
      v22 = v36;
      if (v36)
      {
        v23 = __swift_project_boxed_opaque_existential_1(v35, v36);
        v24 = *(v22 - 8);
        MEMORY[0x28223BE20](v23);
        v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v26);
        sub_241352C9C();
        (*(v24 + 8))(v26, v22);
        sub_241351EDC();
        sub_2413516FC();

        v33(v8, v34);
        REMaterialAssetSetFloat();
        __swift_destroy_boxed_opaque_existential_0(v35);
        v27 = qword_27E53A198;
        swift_beginAccess();
        result = sub_241321FBC(&v11[v27], v35);
        v28 = v36;
        if (v36)
        {
          v29 = __swift_project_boxed_opaque_existential_1(v35, v36);
          v30 = *(v28 - 8);
          MEMORY[0x28223BE20](v29);
          v32 = &v33 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v30 + 16))(v32);
          sub_241352C9C();
          (*(v30 + 8))(v32, v28);
          sub_241351EDC();
          sub_2413516FC();

          v33(v8, v34);
          REMaterialAssetSetFloat();
          return __swift_destroy_boxed_opaque_existential_0(v35);
        }

LABEL_13:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_24131BD4C()
{
  v1 = v0;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E53A538);
  v3 = sub_241352FDC();
  v4 = sub_2413540DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_241215000, v3, v4, "Using face IBL", v5, 2u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  if (*(v1 + qword_27E53A150 + 8))
  {
    v6 = *(v1 + qword_27E53A150 + 16);
    sub_241351F2C();
    v7 = v6;
    sub_241351F1C();

    v8 = sub_24135268C();
    v9 = sub_24135267C();
    sub_2413525EC();
    v9(v11, 0);
    return v8(v12, 0);
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_24131BF18()
{
  v1 = v0;
  v2 = sub_2413517BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v6 = sub_241352FFC();
  __swift_project_value_buffer(v6, qword_27E53A538);
  v7 = sub_241352FDC();
  v8 = sub_2413540DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_241215000, v7, v8, "updateRenderGraphEmitter() ", v9, 2u);
    MEMORY[0x245CE4870](v9, -1, -1);
  }

  v10 = qword_27E53A1C8;
  v11 = *(v1 + qword_27E53A1C8);
  if (v11 > 1)
  {
    if (v11 == 2)
    {

      sub_24135285C();
      sub_24135257C();
      sub_241351C8C();
      sub_2413516FC();

      (*(v3 + 8))(v5, v2);
      ServiceLocator = REEngineGetServiceLocator();
      if (!MEMORY[0x245CE3AB0](ServiceLocator))
      {
        __break(1u);
LABEL_11:
        if (v11 == 1)
        {

          sub_24135285C();
          goto LABEL_13;
        }

LABEL_21:
        v18[1] = v11;
        result = sub_2413549AC();
        __break(1u);
        return result;
      }
    }

    else
    {
      if (v11 != 3)
      {
        goto LABEL_21;
      }

      sub_24135285C();
      sub_24135257C();
      sub_241351C8C();
      sub_2413516FC();

      (*(v3 + 8))(v5, v2);
      v14 = REEngineGetServiceLocator();
      if (!MEMORY[0x245CE3AB0](v14))
      {
        __break(1u);
        goto LABEL_21;
      }
    }

    RERenderManagerUnsetBackdrop();
    goto LABEL_17;
  }

  if (v11)
  {
    goto LABEL_11;
  }

  sub_24135285C();
  v12 = *(v1 + qword_27E53A1E0);
  *(v1 + qword_27E53A1E0) = 1065353216;
  sub_24131B77C(v12);
LABEL_13:
  sub_24131C250(1);
LABEL_17:
  v15 = 0.5;
  if (*(v1 + v10) != 3)
  {
    v15 = 1.0;
  }

  v16 = *(v1 + qword_27E53A1D8);
  *(v1 + qword_27E53A1D8) = v15;
  return sub_24131B3D8(v16);
}

uint64_t sub_24131C250(char a1)
{
  v2 = v1;
  v4 = sub_24135170C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v8 = sub_2413517BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  sub_24135257C();
  v12 = (v9 + 8);
  if (a1)
  {
    sub_241351C8C();
    sub_2413516FC();

    (*v12)(v11, v8);
    ServiceLocator = REEngineGetServiceLocator();
    result = MEMORY[0x245CE3AB0](ServiceLocator);
    if (result)
    {
      v15 = qword_27E53A188;
      swift_beginAccess();
      result = sub_241321FBC(v2 + v15, v23);
      v16 = v24;
      if (v24)
      {
        v17 = __swift_project_boxed_opaque_existential_1(v23, v24);
        v18 = *(v16 - 8);
        MEMORY[0x28223BE20](v17);
        v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
        (*(v18 + 16))(v20);
        sub_241352C9C();
        (*(v18 + 8))(v20, v16);
        sub_241351EDC();
        sub_2413516FC();

        (*(v5 + 8))(v7, v4);
        RERenderManagerSetBackdrop();
        return __swift_destroy_boxed_opaque_existential_0(v23);
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  sub_241351C8C();
  sub_2413516FC();

  (*v12)(v11, v8);
  v21 = REEngineGetServiceLocator();
  result = MEMORY[0x245CE3AB0](v21);
  if (!result)
  {
    goto LABEL_9;
  }

  return RERenderManagerUnsetBackdrop();
}

uint64_t sub_24131C5B4(unint64_t a1)
{
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v3 = sub_241352FFC();
  __swift_project_value_buffer(v3, qword_27E53A538);
  v4 = v1;
  v5 = sub_241352FDC();
  v6 = sub_2413540DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218496;
    *(v7 + 4) = a1;
    *(v7 + 12) = 2048;
    *(v7 + 14) = *(v4 + qword_27E53A1B8);
    *(v7 + 22) = 1024;
    *(v7 + 24) = *(&v4->isa + qword_27E53A1B0) != 0;

    _os_log_impl(&dword_241215000, v5, v6, "forceUseIBL(for: %ld), preferredIBLVersion:%ld, has sceneIBL?:%{BOOL}d", v7, 0x1Cu);
    MEMORY[0x245CE4870](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }

  v8 = sub_24135268C();
  v9 = sub_24135267C();
  sub_2413525DC();
  v9(v26, 0);
  v8(v27, 0);
  if (a1 - 2 < 2)
  {
    a1 = *(&v4->isa + qword_27E53A1B0);
    if (a1)
    {
      swift_retain_n();
      v10 = sub_24135268C();
      v11 = sub_24135267C();
      sub_2413525EC();
      v11(v26, 0);
      v10(v27, 0);
      [objc_opt_self() sceneIBLARIntensity];
      v12 = sub_24135268C();
      v13 = sub_24135267C();
      sub_2413525DC();
      v13(v26, 0);
      v12(v27, 0);
    }

    v17 = *(&v4->isa + qword_27E53A1B8);
    v18 = v4 + qword_27E53A150;
    v19 = *(&v4[1].isa + qword_27E53A150);
    switch(v17)
    {
      case 3:
        if (v19)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        if (v19)
        {
          goto LABEL_34;
        }

        __break(1u);
        break;
      case 1:
        if (v19)
        {
          goto LABEL_34;
        }

        goto LABEL_38;
      default:
        if (v19)
        {
          goto LABEL_34;
        }

        goto LABEL_40;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (a1 <= 1)
  {
    a1 = *(&v4->isa + qword_27E53A1B0);
    if (a1)
    {
      swift_retain_n();
      v14 = sub_24135268C();
      v15 = sub_24135267C();
      sub_2413525EC();
      v15(v26, 0);
      v14(v27, 0);
    }

    v20 = *(&v4->isa + qword_27E53A1B8);
    v18 = v4 + qword_27E53A150;
    v21 = *(&v4[1].isa + qword_27E53A150);
    if (v20 == 3)
    {
      if (v21)
      {
        goto LABEL_34;
      }

      goto LABEL_41;
    }

    if (v20 != 2)
    {
      if (v20 != 1)
      {
        if (v21)
        {
LABEL_34:
          v22 = *(v18 + 2);
          sub_241351F2C();
          v23 = v22;
          sub_241351F1C();

          v24 = sub_24135268C();
          v25 = sub_24135267C();
          sub_2413525EC();
          v25(v26, 0);
          return v24(v27, 0);
        }

        goto LABEL_42;
      }

      if (v21)
      {
        goto LABEL_34;
      }

      goto LABEL_39;
    }

    if (v21)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

LABEL_43:
  v27[0] = a1;
  sub_2413549AC();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_24131CD8C()
{
  v1 = v0;
  v2 = sub_2413527AC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v47 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  sub_241324A44();
  v15 = objc_opt_self();
  v16 = [v15 renderTier];
  v49 = v3;
  if (v16 <= 0)
  {
    sub_24135274C();
    v48 = sub_2413527CC();
    v28 = v3;
    v29 = *(v3 + 16);
    v29(v9);
    (v29)(v6, v14, v2);
    sub_24132209C(&qword_27E5399A0, MEMORY[0x277CDB620]);
    sub_2413543FC();
    sub_2413543EC();
    v20 = *(v28 + 8);
    v20(v12, v2);
    v20(v14, v2);
    v48(v50, 0);
    sub_24135273C();
    v30 = sub_2413527CC();
    sub_241287D44(v14, v12);
    v20(v12, v2);
    v20(v14, v2);
    v30(v50, 0);
    sub_24135275C();
    v31 = sub_2413527CC();
    sub_241287D44(v14, v12);
    v20(v12, v2);
    v20(v14, v2);
    v31(v50, 0);
    if (qword_27E537B68 != -1)
    {
      swift_once();
    }

    v32 = dword_27E541790 > 500;
    v33 = qword_27E53A1E8;
    swift_beginAccess();
    v34 = v1[v33];
    v1[v33] = v32;
    sub_241321400(v34);
    if (dword_27E541790 <= 500)
    {
      v35 = 0.5;
    }

    else
    {
      v35 = 0.75;
    }

    [v1 contentScaleFactor];
    v27 = v36 * v35;
  }

  else
  {
    v17 = [v15 renderTier] > 1;
    sub_24131D540(v17, MEMORY[0x277CDB610]);
    sub_24135273C();
    v18 = v3;
    v19 = sub_2413527CC();
    sub_241287D44(v14, v12);
    v20 = *(v18 + 8);
    v20(v12, v2);
    v20(v14, v2);
    v19(v50, 0);
    v21 = [v15 renderTier] > 4;
    sub_24131D540(v21, MEMORY[0x277CDB618]);
    if (qword_27E537B68 != -1)
    {
      swift_once();
    }

    v22 = dword_27E541790 > 500;
    v23 = qword_27E53A1E8;
    swift_beginAccess();
    v24 = v1[v23];
    v1[v23] = v22;
    sub_241321400(v24);
    v25 = sub_241324B50();
    [v1 contentScaleFactor];
    v27 = v25 * v26;
  }

  [v1 setContentScaleFactor_];
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v37 = sub_241352FFC();
  __swift_project_value_buffer(v37, qword_27E53A538);
  v38 = v1;
  v39 = sub_241352FDC();
  v40 = sub_2413540DC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 67110144;
    LODWORD(v48) = v40;
    sub_2413527DC();
    sub_24135274C();
    sub_24132209C(&qword_27E5399A0, MEMORY[0x277CDB620]);
    v42 = sub_2413543CC();
    v20(v12, v2);
    v20(v14, v2);
    *(v41 + 4) = (v42 & 1) == 0;
    *(v41 + 8) = 1024;
    sub_2413527DC();
    sub_24135273C();
    v43 = sub_2413543CC();
    v20(v12, v2);
    v20(v14, v2);
    *(v41 + 10) = (v43 & 1) == 0;
    *(v41 + 14) = 1024;
    sub_2413527DC();
    sub_24135275C();
    v44 = sub_2413543CC();
    v20(v12, v2);
    v20(v14, v2);
    *(v41 + 16) = (v44 & 1) == 0;
    *(v41 + 20) = 1024;
    v45 = qword_27E53A1E8;
    swift_beginAccess();
    *(v41 + 22) = *(&v38->isa + v45);

    *(v41 + 26) = 2048;
    [v38 contentScaleFactor];
    *(v41 + 28) = v46;
    _os_log_impl(&dword_241215000, v39, v48, "Render Quality Settings. rendersCameraGrain: %{BOOL}d useMotionBlur: %{BOOL}d useDepthOfField: %{BOOL}d useHDR: %{BOOL}d contentScaleFactor: %f", v41, 0x24u);
    MEMORY[0x245CE4870](v41, -1, -1);
  }

  else
  {

    v39 = v38;
  }
}

uint64_t sub_24131D540(char a1, void (*a2)(uint64_t))
{
  v4 = sub_2413527AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24[-v10];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v24[-v16];
  a2(v15);
  if (a1)
  {
    v18 = sub_2413527CC();
    v19 = *(v5 + 16);
    v19(v11);
    (v19)(v8, v17, v4);
    sub_24132209C(&qword_27E5399A0, MEMORY[0x277CDB620]);
    sub_2413543FC();
    sub_2413543EC();
    v20 = *(v5 + 8);
    v20(v14, v4);
    v20(v17, v4);
    return v18(v24, 0);
  }

  else
  {
    v22 = sub_2413527CC();
    sub_241287D44(v17, v14);
    v23 = *(v5 + 8);
    v23(v14, v4);
    v23(v17, v4);
    return v22(v24, 0);
  }
}

id sub_24131D7D0(double a1, double a2, double a3, double a4)
{
  v9 = sub_2413517BC();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24135212C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_241351F4C();
  MEMORY[0x28223BE20](v16 - 8);
  v44 = sub_241352D1C();
  v17 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v4[qword_27E53A150];
  *v20 = 0u;
  v20[1] = 0u;
  v20[2] = 0u;
  *&v4[qword_27E53A158] = 0;
  *&v4[qword_27E53A160] = 0;
  *&v4[qword_27E53A168] = 0;
  *&v4[qword_27E53A170] = 0;
  *&v4[qword_27E53A178] = 0;
  *&v4[qword_27E53A180] = 0;
  v21 = &v4[qword_27E53A188];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v22 = &v4[qword_27E53A190];
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = &v4[qword_27E53A198];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  *&v4[qword_27E53A1A0] = 0;
  *&v4[qword_27E53A1A8] = 0;
  *&v4[qword_27E53A1B0] = 0;
  *&v4[qword_27E53A1B8] = 1;
  v4[qword_27E53A1C0] = 1;
  *&v4[qword_27E53A1C8] = 3;
  v4[qword_27E53A1D0] = 0;
  *&v4[qword_27E53A1D8] = 1065353216;
  *&v4[qword_27E53A1E0] = -1082130432;
  v4[qword_27E53A1E8] = 1;
  v4[qword_27E53A1F0] = 1;
  v4[qword_27E53A1F8] = 0;
  sub_241352D0C();
  type metadata accessor for REStartupOptions(0);
  v48 = v24;
  LODWORD(v47) = 9;
  sub_241351F3C();
  __swift_destroy_boxed_opaque_existential_0(&v47);
  sub_241352CDC();
  sub_241352CBC();
  type metadata accessor for REEngineServiceMask(0);
  v26 = v25;
  sub_24135211C();
  v27 = *(v13 + 8);
  v27(v15, v12);
  v48 = v26;
  LODWORD(v47) = v47 & 0xFFFFFF7F;
  sub_24135210C();
  __swift_destroy_boxed_opaque_existential_0(&v47);
  sub_241352CCC();
  sub_241352CEC();
  sub_24135211C();
  v27(v15, v12);
  v48 = v26;
  LODWORD(v47) = v47 & 0xFFFFFF7F;
  sub_24135210C();
  __swift_destroy_boxed_opaque_existential_0(&v47);
  sub_241352CFC();
  MEMORY[0x245CE3CC0](9);
  if (_REStartupCount() == 1)
  {
    sub_241352DAC();
    sub_241352D2C();
  }

  setenv("RE_DISABLE_RENDER_THREAD", "1", 1);
  sub_241337748();
  sub_2413309F8();
  v28 = type metadata accessor for ARQLView();
  v46.receiver = v4;
  v46.super_class = v28;
  v29 = objc_msgSendSuper2(&v46, sel_initWithFrame_, a1, a2, a3, a4);
  v30 = qword_27E537CD0;
  v31 = v29;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_241352FFC();
  __swift_project_value_buffer(v32, qword_27E53A538);
  v33 = sub_241352FDC();
  v34 = sub_2413540DC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v47 = v36;
    *v35 = 136315138;
    sub_24135257C();
    sub_241351C8C();
    sub_2413516FC();

    (*(v42 + 8))(v11, v43);
    v37 = MEMORY[0x245CE29E0](v45);
    v39 = sub_2412DDC2C(v37, v38, &v47);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_241215000, v33, v34, "ARQL init complete. arView.engineRef: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x245CE4870](v36, -1, -1);
    MEMORY[0x245CE4870](v35, -1, -1);
  }

  (*(v17 + 8))(v19, v44);
  return v31;
}

uint64_t sub_24131DF9C()
{
  sub_241255C84(*(v0 + qword_27E53A150), *(v0 + qword_27E53A150 + 8), *(v0 + qword_27E53A150 + 16), *(v0 + qword_27E53A150 + 24), *(v0 + qword_27E53A150 + 32));

  sub_241246278(v0 + qword_27E53A188, &qword_27E539FD8);
  sub_241246278(v0 + qword_27E53A190, &qword_27E539FD8);
  sub_241246278(v0 + qword_27E53A198, &qword_27E539FD8);
}

id sub_24131E0D0()
{
  v1 = v0;
  v2 = sub_2413538CC();
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2413538FC();
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v8 = sub_241352FFC();
  __swift_project_value_buffer(v8, qword_27E53A538);
  v9 = sub_241352FDC();
  v10 = sub_2413540DC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_241215000, v9, v10, "ARQL deinit ARQLView", v11, 2u);
    MEMORY[0x245CE4870](v11, -1, -1);
  }

  *&v1[qword_27E53A1A0] = 0;

  *&v1[qword_27E53A1A8] = 0;

  sub_241246158(0, &qword_27E538920);
  v12 = sub_24135416C();
  aBlock[4] = sub_24131E47C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_12;
  v13 = _Block_copy(aBlock);
  sub_2413538DC();
  v20 = MEMORY[0x277D84F90];
  sub_24132209C(&qword_27E539870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
  sub_241255F88(&qword_27E539880, &unk_27E538930);
  sub_24135444C();
  MEMORY[0x245CE2540](0, v7, v4, v13);
  _Block_release(v13);

  (*(v18 + 8))(v4, v2);
  (*(v16 + 8))(v7, v17);
  v14 = type metadata accessor for ARQLView();
  v19.receiver = v1;
  v19.super_class = v14;
  return objc_msgSendSuper2(&v19, sel_dealloc);
}

void sub_24131E47C()
{
  sub_241336ED0();

  sub_241330BEC();
}

uint64_t sub_24131E4CC(uint64_t a1)
{
  sub_241255C84(*(a1 + qword_27E53A150), *(a1 + qword_27E53A150 + 8), *(a1 + qword_27E53A150 + 16), *(a1 + qword_27E53A150 + 24), *(a1 + qword_27E53A150 + 32));

  sub_241246278(a1 + qword_27E53A188, &qword_27E539FD8);
  sub_241246278(a1 + qword_27E53A190, &qword_27E539FD8);
  sub_241246278(a1 + qword_27E53A198, &qword_27E539FD8);
}

void sub_24131E604()
{
  v1 = v0;
  v128 = sub_2413526FC();
  v135 = *(v128 - 8);
  v2 = MEMORY[0x28223BE20](v128);
  v133 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v134 = &v127 - v4;
  v131 = sub_24135173C();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2413524DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v127 - v11);
  v132 = sub_24135256C();
  v13 = *(v132 - 1);
  MEMORY[0x28223BE20](v132);
  v15 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v16 = sub_241352FFC();
  v136 = __swift_project_value_buffer(v16, qword_27E53A538);
  v17 = sub_241352FDC();
  v18 = sub_2413540DC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_241215000, v17, v18, "ARQL init ARQLView", v19, 2u);
    MEMORY[0x245CE4870](v19, -1, -1);
  }

  if (!*(v1 + qword_27E53A150 + 8))
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v20 = *(v1 + qword_27E53A150 + 24);
  v137 = (v1 + qword_27E53A150);
  if (v20)
  {
    goto LABEL_13;
  }

  if (qword_27E537CC0 != -1)
  {
    swift_once();
  }

  sub_2413530FC();

  if (v140 != 1)
  {
LABEL_13:
    v26 = sub_241352FDC();
    v27 = sub_2413540DC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_241215000, v26, v27, "Using nonAR cameraMode", v28, 2u);
      MEMORY[0x245CE4870](v28, -1, -1);
    }

    (*(v13 + 104))(v15, *MEMORY[0x277CDB598], v132);
    sub_24135258C();
  }

  else
  {
    v21 = sub_241352FDC();
    v22 = sub_2413540DC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_241215000, v21, v22, "Using ar cameraMode", v23, 2u);
      MEMORY[0x245CE4870](v23, -1, -1);
    }

    v24 = [objc_allocWithZone(MEMORY[0x277CE53B0]) init];
    [v24 setLightEstimationEnabled_];
    [v24 setEnvironmentTexturing_];
    [v24 setAutoFocusEnabled_];
    [v24 setFrameSemantics_];
    [v24 setDisableMLRelocalization_];
    v25 = [v1 session];
    [v25 runWithConfiguration:v24 options:0];

    (*(v13 + 104))(v15, *MEMORY[0x277CDB590], v132);
    sub_24135258C();
  }

  sub_24135181C();
  v29 = MEMORY[0x245CDFBB0](0);
  v30 = qword_27E53A1A0;
  *(v1 + qword_27E53A1A0) = v29;

  sub_24135292C();
  sub_24135250C();

  v31 = v137;
  if (!*(v1 + v30))
  {
    goto LABEL_54;
  }

  sub_2413524CC();

  v32 = *(v7 + 8);
  v32(v12, v6);
  swift_allocObject();
  v33 = sub_24135180C();
  v34 = qword_27E53A1A8;
  *(v1 + qword_27E53A1A8) = v33;

  sub_24135292C();
  sub_24135250C();

  v12 = *(v1 + v34);
  if (!v12)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_2413524CC();

  v32(v10, v6);
  sub_24135292C();
  v35 = v129;
  sub_24135248C();
  sub_2413516FC();

  (*(v130 + 8))(v35, v131);
  MEMORY[0x245CE3A70](v140, 0);
  v36 = v1;
  v12 = sub_241352FDC();
  v37 = sub_2413540DC();
  v38 = os_log_type_enabled(v12, v37);
  v132 = v36;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v140 = v130;
    v131 = v39;
    *v39 = 136315138;
    v40 = v31[1];
    if (!v40)
    {
LABEL_64:

      __break(1u);
      goto LABEL_65;
    }

    v41 = v137[4];
    v42 = v137[3];
    v43 = v137[2];
    v44 = *v137;
    v45 = v43;

    sub_24124AD38(v41);
    v46 = v132;

    v47 = v45;
    v31 = v137;
    sub_241255C84(v44, v40, v43, v42, v41);
    v138 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A240);
    v48 = sub_24135431C();
    v50 = v49;

    v36 = v46;
    v51 = sub_2412DDC2C(v48, v50, &v140);

    v1 = v131;
    *(v131 + 4) = v51;
    _os_log_impl(&dword_241215000, v12, v37, "Using configuration.bundle: %s", v1, 0xCu);
    v52 = v130;
    __swift_destroy_boxed_opaque_existential_0(v130);
    MEMORY[0x245CE4870](v52, -1, -1);
    MEMORY[0x245CE4870](v1, -1, -1);
  }

  else
  {
  }

  if (!v31[1])
  {
    goto LABEL_56;
  }

  v53 = v31[2];
  sub_24135215C();
  v12 = v53;
  v1 = 0;
  v54 = sub_24135213C();

  *(v36 + qword_27E53A158) = v54;

  if (!v31[1])
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v55 = v31[2];
  v56 = sub_24135213C();

  *(v36 + qword_27E53A168) = v56;

  v57 = sub_241353BDC();
  v12 = [objc_opt_self() bundleWithIdentifier_];

  v58 = sub_24135213C();
  *(v36 + qword_27E53A160) = v58;

  if (!v31[1])
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v59 = v31[2];
  v60 = sub_24135213C();

  v61 = qword_27E53A170;
  *(v36 + qword_27E53A170) = v60;

  *(v36 + qword_27E53A178) = sub_24135284C();

  v62 = v36;
  v12 = sub_241352FDC();
  v63 = sub_2413540DC();
  if (os_log_type_enabled(v12, v63))
  {
    v130 = v61;
    v131 = 0;
    v137 = v62;
    v1 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v140 = v129;
    *v1 = 136315138;
    v64 = v31;
    v65 = v31[1];
    if (!v65)
    {
LABEL_65:

      __break(1u);
      v109 = v1;
      v110 = sub_241352FDC();
      v111 = sub_2413540BC();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v140 = v113;
        *v112 = 136315138;
        swift_getErrorValue();
        v114 = sub_241354A3C();
        v116 = sub_2412DDC2C(v114, v115, &v140);

        *(v112 + 4) = v116;
        _os_log_impl(&dword_241215000, v110, v111, "Error loading Object/AR rerendergraphemitters. Error:\n%s", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v113);
        MEMORY[0x245CE4870](v113, -1, -1);
        MEMORY[0x245CE4870](v112, -1, -1);
      }

      v140 = 0;
      v141 = 0xE000000000000000;
      sub_2413545EC();
      MEMORY[0x245CE20D0](0xD000000000000036, 0x8000000241362C10);
      swift_getErrorValue();
      v117 = sub_241354A3C();
      MEMORY[0x245CE20D0](v117);

LABEL_71:
      sub_2413547DC();
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      return;
    }

    v66 = v64[4];
    v67 = v64[2];
    v127 = v64[3];
    v68 = *v64;
    v69 = v67;

    sub_24124AD38(v66);
    v62 = v137;

    sub_241255C84(v68, v65, v67, v127, v66);
    v70 = sub_2412DDC2C(v68, v65, &v140);

    *(v1 + 1) = v70;
    _os_log_impl(&dword_241215000, v12, v63, "assetPathPrefix is: %s", v1, 0xCu);
    v71 = v129;
    __swift_destroy_boxed_opaque_existential_0(v129);
    MEMORY[0x245CE4870](v71, -1, -1);
    MEMORY[0x245CE4870](v1, -1, -1);

    v31 = v64;
    v1 = v131;
  }

  else
  {
  }

  v138 = 0;
  v139 = 0xE000000000000000;
  sub_2413545EC();
  v72 = v31[1];
  if (!v72)
  {
    goto LABEL_59;
  }

  v73 = *v31;
  v12 = sub_241351EFC();

  MEMORY[0x245CE20D0](v73, v72);

  MEMORY[0x245CE20D0](0xD00000000000001ELL, 0x800000024135DC60);
  sub_241351EEC();
  if (v1)
  {

    v118 = v1;
    v119 = sub_241352FDC();
    v120 = sub_2413540BC();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v140 = v122;
      *v121 = 136315138;
      swift_getErrorValue();
      v123 = sub_241354A3C();
      v125 = sub_2412DDC2C(v123, v124, &v140);

      *(v121 + 4) = v125;
      _os_log_impl(&dword_241215000, v119, v120, "Error loading Object/AR rematerials. Error:\n%s", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v122);
      MEMORY[0x245CE4870](v122, -1, -1);
      MEMORY[0x245CE4870](v121, -1, -1);
    }

    v140 = 0;
    v141 = 0xE000000000000000;
    sub_2413545EC();

    v140 = 0xD00000000000002CLL;
    v141 = 0x8000000241362CC0;
    swift_getErrorValue();
    v126 = sub_241354A3C();
    MEMORY[0x245CE20D0](v126);

    goto LABEL_71;
  }

  v74 = qword_27E53A188;
  swift_beginAccess();
  sub_24132202C(&v140, v62 + v74);
  swift_endAccess();
  v138 = 0;
  v139 = 0xE000000000000000;
  sub_2413545EC();
  v75 = v31[1];
  if (!v75)
  {
    goto LABEL_60;
  }

  v76 = *v31;

  MEMORY[0x245CE20D0](v76, v75);

  MEMORY[0x245CE20D0](0xD000000000000026, 0x8000000241362CF0);
  sub_241351EEC();

  v77 = qword_27E53A190;
  swift_beginAccess();
  sub_24132202C(&v140, v62 + v77);
  swift_endAccess();
  v138 = 0;
  v139 = 0xE000000000000000;
  sub_2413545EC();
  v78 = v31[1];
  if (!v78)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v79 = *v31;

  MEMORY[0x245CE20D0](v79, v78);

  MEMORY[0x245CE20D0](0xD000000000000022, 0x8000000241362D20);
  sub_241351EEC();

  v12 = qword_27E53A198;
  swift_beginAccess();
  sub_24132202C(&v140, v12 + v62);
  swift_endAccess();
  sub_24131FE10();
  if (!v31[1])
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v80 = 1.0;
  if ((v31[3] & 1) == 0)
  {

    sub_24135285C();
    v80 = 0.0;
  }

  v81 = *(v62 + qword_27E53A1E0);
  *(v62 + qword_27E53A1E0) = v80;
  sub_24131B77C(v81);
  if (!v31[1])
  {
    goto LABEL_63;
  }

  v82 = v31[2];
  sub_241351F2C();
  v83 = v82;
  sub_241351F1C();

  v84 = sub_24135268C();
  v85 = sub_24135267C();
  sub_2413525EC();
  v85(&v138, 0);
  v84(&v140, 0);
  v86 = sub_24135268C();
  v87 = sub_24135267C();
  sub_2413525DC();
  v87(&v138, 0);
  v86(&v140, 0);
  v88 = objc_opt_self();
  if ([v88 forceDisableExtendedDynamicRangeOutput])
  {
    sub_2413528AC();
    v89 = sub_241352FDC();
    v90 = sub_2413540DC();
    v91 = os_log_type_enabled(v89, v90);
    v92 = v128;
    if (v91)
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      v94 = "Disabled extendedDynamicRangeOutput";
LABEL_42:
      _os_log_impl(&dword_241215000, v89, v90, v94, v93, 2u);
      MEMORY[0x245CE4870](v93, -1, -1);
    }
  }

  else
  {
    sub_2413528AC();
    v89 = sub_241352FDC();
    v90 = sub_2413540DC();
    v95 = os_log_type_enabled(v89, v90);
    v92 = v128;
    if (v95)
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      v94 = "Enabled extendedDynamicRangeOutput";
      goto LABEL_42;
    }
  }

  sub_2413528EC();
  if ([v88 wantsDebugVisualizationEnabled])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A228);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_241365E60;
    sub_2413526BC();
    sub_2413526DC();
    sub_2413526CC();
    v140 = v96;
    sub_24132209C(&qword_27E5389D8, MEMORY[0x277CDB5F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A230);
    sub_241255F88(&qword_27E53A238, &qword_27E53A230);
    sub_24135444C();
    sub_24135271C();
  }

  if ([v88 wantsStatisticsShown])
  {
    v97 = v133;
    sub_2413526AC();
    v98 = sub_24135270C();
    v99 = v134;
    sub_241288048(v134, v97);
    v100 = *(v135 + 8);
    v100(v97, v92);
    v100(v99, v92);
    v98(&v140, 0);
  }

  if ([objc_opt_self() supportsSceneReconstruction] && objc_msgSend(v88, sel_wantsDebugSceneUnderstandingEnabled))
  {
    v101 = v133;
    sub_2413526EC();
    v102 = sub_24135270C();
    v103 = v134;
    sub_241288048(v134, v101);
    v104 = *(v135 + 8);
    v104(v101, v92);
    v104(v103, v92);
    v102(&v140, 0);
  }

  if ([v88 wantsDebugPhysicsEnabled])
  {
    v105 = v133;
    sub_24135269C();
    v106 = sub_24135270C();
    v107 = v134;
    sub_241288048(v134, v105);
    v108 = *(v135 + 8);
    v108(v105, v92);
    v108(v107, v92);
    v106(&v140, 0);
  }

  sub_24131CD8C();
}

uint64_t sub_24131FE10()
{
  v1 = v0;
  v106 = *MEMORY[0x277D85DE8];
  v99 = sub_24135170C();
  *&v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v3 = &v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = 0.0;
  v102 = 0.0;
  v101 = 0.0;
  v100 = 0;
  v4 = objc_opt_self();
  v5 = [v4 systemBackgroundColor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
  v6 = swift_allocObject();
  v98 = xmmword_241366EF0;
  *(v6 + 16) = xmmword_241366EF0;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 traitCollectionWithUserInterfaceLevel_];
  *(v6 + 40) = [v7 traitCollectionWithUserInterfaceStyle_];
  sub_241246158(0, &qword_27E53A008);
  v8 = sub_241353E1C();

  v9 = [v7 traitCollectionWithTraitsFromCollections_];

  v10 = [v5 resolvedColorWithTraitCollection_];
  v92 = v10;
  [v10 getRed:&v103 green:&v102 blue:&v101 alpha:&v100];
  v11 = v103;
  v12 = v102;
  v13 = v101;
  v91 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.901960784 alpha:1.0];
  [v91 getRed:&v103 green:&v102 blue:&v101 alpha:&v100];
  *&v95 = v103;
  v94 = v102;
  *&v96 = v101;
  v14 = [v4 systemBackgroundColor];
  v15 = swift_allocObject();
  *(v15 + 16) = v98;
  *(v15 + 32) = [v7 traitCollectionWithUserInterfaceLevel_];
  *(v15 + 40) = [v7 traitCollectionWithUserInterfaceStyle_];
  v16 = sub_241353E1C();

  v17 = [v7 traitCollectionWithTraitsFromCollections_];

  v18 = [v14 resolvedColorWithTraitCollection_];
  [v18 getRed:&v103 green:&v102 blue:&v101 alpha:&v100];
  v19 = v103;
  v20 = v102;
  v93 = v101;
  v21 = [v4 tertiarySystemGroupedBackgroundColor];
  v22 = swift_allocObject();
  *(v22 + 16) = v98;
  *(v22 + 32) = [v7 traitCollectionWithUserInterfaceLevel_];
  *(v22 + 40) = [v7 traitCollectionWithUserInterfaceStyle_];
  v23 = sub_241353E1C();

  v24 = [v7 traitCollectionWithTraitsFromCollections_];

  v25 = [v21 resolvedColorWithTraitCollection_];
  v90 = v25;
  [v25 getRed:&v103 green:&v102 blue:&v101 alpha:&v100];
  v26 = v103;
  v27 = v102;
  v28 = v101;
  v29 = qword_27E53A188;
  swift_beginAccess();
  sub_241321FBC(v1 + v29, v104);
  v30 = v105;
  if (!v105)
  {
    __break(1u);
    goto LABEL_11;
  }

  v89 = v18;
  *&v31 = v11;
  *&v32 = v12;
  *&v33 = __PAIR64__(v32, v31);
  *&v34 = v13;
  *(&v33 + 1) = v34;
  v98 = v33;
  v35 = __swift_project_boxed_opaque_existential_1(v104, v105);
  v36 = *(v30 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v38);
  sub_241352C9C();
  (*(v36 + 8))(v38, v30);
  sub_241351EDC();
  sub_2413516FC();

  v39 = *(v97 + 8);
  v39(v3, v99);
  REMaterialAssetSetFloat3F();
  __swift_destroy_boxed_opaque_existential_0(v104);
  sub_241321FBC(v1 + v29, v104);
  v40 = v105;
  if (!v105)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *&v41 = *&v95;
  *&v42 = v94;
  *&v43 = __PAIR64__(v42, v41);
  *&v44 = *&v96;
  *(&v43 + 1) = v44;
  v97 = v43;
  v45 = __swift_project_boxed_opaque_existential_1(v104, v105);
  v46 = *(v40 - 8);
  MEMORY[0x28223BE20](v45);
  v48 = &v89 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v48);
  sub_241352C9C();
  (*(v46 + 8))(v48, v40);
  sub_241351EDC();
  sub_2413516FC();

  v39(v3, v99);
  REMaterialAssetSetFloat3F();
  __swift_destroy_boxed_opaque_existential_0(v104);
  sub_241321FBC(v1 + v29, v104);
  v49 = v105;
  if (!v105)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *&v50 = v19;
  *&v51 = v20;
  *&v52 = __PAIR64__(v51, v50);
  *&v53 = v93;
  *(&v52 + 1) = v53;
  v96 = v52;
  v54 = __swift_project_boxed_opaque_existential_1(v104, v105);
  v55 = *(v49 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = &v89 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v55 + 16))(v57);
  sub_241352C9C();
  (*(v55 + 8))(v57, v49);
  sub_241351EDC();
  sub_2413516FC();

  v39(v3, v99);
  REMaterialAssetSetFloat3F();
  __swift_destroy_boxed_opaque_existential_0(v104);
  sub_241321FBC(v1 + v29, v104);
  v58 = v105;
  if (!v105)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *&v59 = v26;
  *&v60 = v27;
  *&v61 = __PAIR64__(v60, v59);
  *&v62 = v28;
  *(&v61 + 1) = v62;
  v95 = v61;
  v63 = __swift_project_boxed_opaque_existential_1(v104, v105);
  v64 = *(v58 - 8);
  MEMORY[0x28223BE20](v63);
  v66 = &v89 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v64 + 16))(v66);
  sub_241352C9C();
  (*(v64 + 8))(v66, v58);
  sub_241351EDC();
  sub_2413516FC();

  v39(v3, v99);
  REMaterialAssetSetFloat3F();
  __swift_destroy_boxed_opaque_existential_0(v104);
  v67 = qword_27E53A190;
  swift_beginAccess();
  sub_241321FBC(v1 + v67, v104);
  v68 = v105;
  if (!v105)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v69 = __swift_project_boxed_opaque_existential_1(v104, v105);
  v70 = *(v68 - 8);
  MEMORY[0x28223BE20](v69);
  v72 = &v89 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v70 + 16))(v72);
  sub_241352C9C();
  (*(v70 + 8))(v72, v68);
  sub_241351EDC();
  sub_2413516FC();

  v39(v3, v99);
  REMaterialAssetSetFloat3F();
  __swift_destroy_boxed_opaque_existential_0(v104);
  sub_241321FBC(v1 + v67, v104);
  v73 = v105;
  if (!v105)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v74 = __swift_project_boxed_opaque_existential_1(v104, v105);
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v74);
  v77 = &v89 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v75 + 16))(v77);
  sub_241352C9C();
  (*(v75 + 8))(v77, v73);
  sub_241351EDC();
  sub_2413516FC();

  v39(v3, v99);
  REMaterialAssetSetFloat3F();
  __swift_destroy_boxed_opaque_existential_0(v104);
  sub_241321FBC(v1 + v67, v104);
  v78 = v105;
  if (!v105)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v79 = __swift_project_boxed_opaque_existential_1(v104, v105);
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v79);
  v82 = &v89 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v80 + 16))(v82);
  sub_241352C9C();
  (*(v80 + 8))(v82, v78);
  sub_241351EDC();
  sub_2413516FC();

  v39(v3, v99);
  REMaterialAssetSetFloat3F();
  __swift_destroy_boxed_opaque_existential_0(v104);
  sub_241321FBC(v1 + v67, v104);
  v83 = v105;
  if (!v105)
  {
    goto LABEL_17;
  }

  v84 = __swift_project_boxed_opaque_existential_1(v104, v105);
  v85 = *(v83 - 8);
  MEMORY[0x28223BE20](v84);
  v87 = &v89 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v85 + 16))(v87);
  sub_241352C9C();
  (*(v85 + 8))(v87, v83);
  sub_241351EDC();
  sub_2413516FC();

  v39(v3, v99);
  REMaterialAssetSetFloat3F();

  return __swift_destroy_boxed_opaque_existential_0(v104);
}

uint64_t sub_241320ECC()
{
  v1 = v0;
  v2 = sub_24135170C();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
  if (*(v0 + qword_27E53A1C8) == 3)
  {
    if (sub_24135286C())
    {
      v7 = qword_27E53A198;
      swift_beginAccess();
      result = sub_241321FBC(v1 + v7, v26);
      v8 = v27;
      if (!v27)
      {
        goto LABEL_12;
      }

      v9 = __swift_project_boxed_opaque_existential_1(v26, v27);
      v10 = *(v8 - 8);
      MEMORY[0x28223BE20](v9);
      v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
      (*(v10 + 16))(v12);
      sub_241352C9C();
      (*(v10 + 8))(v12, v8);
      sub_241351EDC();
      sub_2413516FC();

      (*(v3 + 8))(v6, v2);
      REMaterialAssetSetTexture();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v26);
    }

    if (sub_24135288C())
    {
      v13 = qword_27E53A198;
      swift_beginAccess();
      result = sub_241321FBC(v1 + v13, v26);
      v14 = v27;
      if (!v27)
      {
LABEL_13:
        __break(1u);
        return result;
      }

      v15 = __swift_project_boxed_opaque_existential_1(v26, v27);
      v16 = *(v14 - 8);
      MEMORY[0x28223BE20](v15);
      v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
      (*(v16 + 16))(v18);
      sub_241352C9C();
      (*(v16 + 8))(v18, v14);
      sub_241351EDC();
      sub_2413516FC();

      (*(v3 + 8))(v6, v2);
      REMaterialAssetSetTexture();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v26);
    }

    v19 = qword_27E53A198;
    swift_beginAccess();
    result = sub_241321FBC(v1 + v19, v26);
    v20 = v27;
    if (v27)
    {
      v21 = __swift_project_boxed_opaque_existential_1(v26, v27);
      v22 = *(v20 - 8);
      MEMORY[0x28223BE20](v21);
      v24 = v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0) + 72;
      (*(v22 + 16))(v24);
      sub_241352C9C();
      (*(v22 + 8))(v24, v20);
      sub_241351EDC();
      sub_2413516FC();

      (*(v3 + 8))(v6, v2);
      sub_2413528CC();
      REMaterialAssetSetFloat4x4F();
      return __swift_destroy_boxed_opaque_existential_0(v26);
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_241321400(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_2413527AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v33 = &v30 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = sub_24135170C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = qword_27E53A1E8;
  result = swift_beginAccess();
  if (*(v2 + v19) != v3)
  {
    v31 = v14;
    v32 = v5;
    if (*(v2 + qword_27E53A158))
    {

      sub_24135214C();
      sub_2413516FC();

      v21 = *(v16 + 8);
      v21(v18, v15);
      swift_beginAccess();
      RERenderGraphEmitterAssetSetRuntimeSetting();
      result = swift_endAccess();
      if (*(v2 + qword_27E53A168))
      {

        sub_24135214C();
        sub_2413516FC();

        v21(v18, v15);
        swift_beginAccess();
        RERenderGraphEmitterAssetSetRuntimeSetting();
        result = swift_endAccess();
        if (*(v2 + qword_27E53A170))
        {

          sub_24135214C();
          sub_2413516FC();

          v21(v18, v15);
          swift_beginAccess();
          RERenderGraphEmitterAssetSetRuntimeSetting();
          v22 = *(v2 + v19);
          swift_endAccess();
          if (v22 == 1)
          {
            v23 = v31;
            sub_24135272C();
            v30 = sub_2413527CC();
            v24 = v32;
            v25 = *(v32 + 16);
            v25(v33);
            (v25)(v34, v23, v4);
            sub_24132209C(&qword_27E5399A0, MEMORY[0x277CDB620]);
            sub_2413543FC();
            sub_2413543EC();
            v26 = *(v24 + 8);
            v26(v12, v4);
            v26(v23, v4);
            return v30(v35, 0);
          }

          else
          {
            sub_24135272C();
            v27 = sub_2413527CC();
            v28 = v31;
            sub_241287D44(v31, v12);
            v29 = *(v32 + 8);
            v29(v12, v4);
            v29(v28, v4);
            return v27(v35, 0);
          }
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_241321940(char a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_24135261C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v29 - v19;
  if (a1)
  {
    a2(v18);
    v21 = sub_24135268C();
    v22 = sub_24135265C();
    v23 = sub_24135262C();
    sub_241287A40(v20, v17);
    v24 = *(v8 + 8);
    v24(v17, v7);
    v24(v20, v7);
    v23(v31, 0);
    v22(v32, 0);
    return v21(v33, 0);
  }

  else
  {
    a2(v18);
    v30 = sub_24135268C();
    v29 = sub_24135265C();
    v26 = sub_24135262C();
    (*(v8 + 16))(v20);
    sub_24132209C(&qword_27E5389C0, MEMORY[0x277CDB5C8]);
    sub_2413543DC();
    if (sub_24135440C())
    {
      v27 = *(v8 + 8);
      v27(v11, v7);
      v27(v14, v7);
      v28 = 1;
    }

    else
    {
      sub_24135441C();
      (*(v8 + 8))(v14, v7);
      (*(v8 + 32))(v6, v11, v7);
      v28 = 0;
    }

    (*(v8 + 56))(v6, v28, 1, v7);
    sub_241246278(v6, &qword_27E53A220);
    v26(v31, 0);
    v29(v32, 0);
    return v30(v33, 0);
  }
}

unint64_t sub_241321DA8()
{
  result = qword_27E53A210;
  if (!qword_27E53A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A210);
  }

  return result;
}

unint64_t sub_241321DFC(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

void sub_241321E0C()
{
  v1 = (v0 + qword_27E53A150);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *(v0 + qword_27E53A158) = 0;
  *(v0 + qword_27E53A160) = 0;
  *(v0 + qword_27E53A168) = 0;
  *(v0 + qword_27E53A170) = 0;
  *(v0 + qword_27E53A178) = 0;
  *(v0 + qword_27E53A180) = 0;
  v2 = v0 + qword_27E53A188;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = v0 + qword_27E53A190;
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  v4 = v0 + qword_27E53A198;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v0 + qword_27E53A1A0) = 0;
  *(v0 + qword_27E53A1A8) = 0;
  *(v0 + qword_27E53A1B0) = 0;
  *(v0 + qword_27E53A1B8) = 1;
  *(v0 + qword_27E53A1C0) = 1;
  *(v0 + qword_27E53A1C8) = 3;
  *(v0 + qword_27E53A1D0) = 0;
  *(v0 + qword_27E53A1D8) = 1065353216;
  *(v0 + qword_27E53A1E0) = -1082130432;
  *(v0 + qword_27E53A1E8) = 1;
  *(v0 + qword_27E53A1F0) = 1;
  *(v0 + qword_27E53A1F8) = 0;
  sub_2413547DC();
  __break(1u);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241321FBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24132202C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539FD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24132209C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2413220E4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2413546DC();
    v5 = v4;
    v6 = sub_2413547BC();
    v8 = v7;
    v9 = MEMORY[0x245CE2AD0](v3, v5, v6, v7);
    sub_24121C288(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_24121C288(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_24135445C();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v11 = sub_241322F38(v3, v5, v2 != 0, a1);
  sub_24121C288(v3, v5, v2 != 0);
  return v11;
}

uint64_t sub_241322200(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2413546DC();
    v5 = v4;
    v6 = sub_2413547BC();
    v8 = v7;
    v9 = MEMORY[0x245CE2AD0](v3, v5, v6, v7);
    sub_24121C288(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_24121C288(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_24135445C();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_24126E5B0(&v13, v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_24121C288(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_241322330(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_24135449C();
    v5 = v4;
    v6 = sub_24135453C();
    v8 = v7;
    v9 = MEMORY[0x245CE2870](v3, v5, v6, v7);
    sub_24121C288(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_24121C288(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_24135445C();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_241323090(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_24121C288(v3, v5, v2 != 0);
  return v12;
}

char *sub_24132245C(uint64_t a1, uint64_t a2)
{
  sub_24130C9E0();
  sub_2412FC7FC();
  v5 = sub_241353FEC();
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ARQLSegmentedControl();
  objc_msgSendSuper2(&v11, sel_touchesBegan_withEvent_, v5, a2);

  if ((a1 & 0xC000000000000001) != 0)
  {
    result = sub_2413544EC();
  }

  else
  {
    result = *(a1 + 16);
  }

  v7 = &v2[OBJC_IVAR____TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl_currentState];
  v8 = *&v2[OBJC_IVAR____TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl_currentState + 16];
  v9 = __OFADD__(v8, result);
  v10 = &result[v8];
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 2) = v10;
    result = [v2 selectedSegmentIndex];
    *v7 = result;
  }

  return result;
}

void sub_241322548(uint64_t a1, uint64_t a2)
{
  sub_24130C9E0();
  sub_2412FC7FC();
  v5 = sub_241353FEC();
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ARQLSegmentedControl();
  objc_msgSendSuper2(&v13, sel_touchesMoved_withEvent_, v5, a2);

  v6 = sub_241322330(a1);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  [v6 locationInView_];
  v9 = v8;

  [v2 bounds];
  v10 = v9 / CGRectGetMidX(v14);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = [v2 numberOfSegments];
  if (__OFSUB__(v11, 1))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v12 = v10 & ~(v10 >> 63);
  if (v12 >= v11 - 1)
  {
    v12 = v11 - 1;
  }

  if (v12 != *&v2[OBJC_IVAR____TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl_currentState])
  {
    v2[OBJC_IVAR____TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl_currentState + 8] = 1;
  }
}

void sub_2413226B8(uint64_t a1, uint64_t a2)
{
  sub_24130C9E0();
  sub_2412FC7FC();
  v5 = sub_241353FEC();
  v20.receiver = v2;
  v20.super_class = type metadata accessor for ARQLSegmentedControl();
  objc_msgSendSuper2(&v20, sel_touchesEnded_withEvent_, v5, a2);

  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_2413544EC();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = &v2[OBJC_IVAR____TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl_currentState];
  v8 = *&v2[OBJC_IVAR____TtC11AssetViewerP33_B6181FA999264CAE88B5B5263D996C2E20ARQLSegmentedControl_currentState + 16];
  v9 = __OFSUB__(v8, v6);
  v10 = v8 - v6;
  if (v9)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(v7 + 2) = v10;
  if (v10)
  {
    return;
  }

  v11 = sub_241322330(a1);
  if (v11)
  {
    v12 = v11;
    [v11 locationInView_];
    v14 = v13;
    v16 = v15;
    [v2 bounds];
    v17 = v14 / CGRectGetMidX(v22);
    if (COERCE__INT64(fabs(v17)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v17 > -9.22337204e18)
      {
        if (v17 < 9.22337204e18)
        {
          v18 = [v2 numberOfSegments];
          v19 = v18 - 1;
          if (!__OFSUB__(v18, 1))
          {
            if ((v17 & ~(v17 >> 63)) < v19)
            {
              v19 = v17 & ~(v17 >> 63);
            }

            if (v19 != *v7 || (v7[8] & 1) == 0 && ([v2 bounds], v21.x = v14, v21.y = v16, CGRectContainsPoint(v23, v21)))
            {
              [v2 sendActionsForControlEvents_];
            }

            goto LABEL_18;
          }

LABEL_24:
          __break(1u);
          return;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_18:
  *v7 = 0;
  v7[8] = 0;
  *(v7 + 2) = 0;
}

uint64_t sub_2413228A8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_24130C9E0();
  sub_2412FC7FC();
  v8 = sub_241353FFC();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_241322C70()
{
  v1 = [objc_opt_self() _currentTraitCollection];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 userInterfaceStyle];

    v4 = *(v0 + OBJC_IVAR____TtC11AssetViewer24ARQLSegmentedControlView_visualEffectView);
    if (v3 == 2)
    {
      [v4 setControlStyle_];
      v5 = *(v0 + OBJC_IVAR____TtC11AssetViewer24ARQLSegmentedControlView_segmentedControl);
      v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.08 alpha:1.0];
      [v5 setSelectedSegmentTintColor_];
    }

    else
    {
      [v4 setControlStyle_];
      v6 = *(v0 + OBJC_IVAR____TtC11AssetViewer24ARQLSegmentedControlView_segmentedControl);

      [v6 setSelectedSegmentTintColor_];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_241322DE8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for ARQLSegmentedControl.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ARQLSegmentedControl.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_241322F38(uint64_t result, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_24135476C();
      sub_24135255C();
      swift_dynamicCast();
      return v7;
    }

    goto LABEL_19;
  }

  if (a3)
  {
    result = sub_24135472C();
    if (result == *(a4 + 36))
    {
      sub_24135473C();
      sub_241352C5C();
      swift_dynamicCast();
      sub_2412FD968(v7);
      v6 = v5;

      if (v6)
      {
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }
}

void sub_241323090(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x245CE28C0](a1, a2, v7);
      sub_24130C9E0();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24130C9E0();
    if (sub_2413544CC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2413544DC();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_2413542AC();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_2413542BC();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t get_enum_tag_for_layout_string_11AssetViewer18WorldRaycastResultVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3 - 2;
  if (v2 >= 3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy97_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2413232E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
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

uint64_t sub_241323344(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_2413233C4()
{
  v1 = sub_2413515EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState;
  if (*(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState) && [objc_opt_self() useSceneReconstructionMeshForOrientation] && (sub_241323A38() & 1) == 0)
  {
    *(v5 + 96) = 1;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v6 = sub_241352FFC();
    __swift_project_value_buffer(v6, qword_27E53A538);
    v7 = sub_241352FDC();
    v8 = sub_2413540DC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_241215000, v7, v8, "[RealitKit Tracked Raycast] Model is now off mesh", v9, 2u);
      MEMORY[0x245CE4870](v9, -1, -1);
    }

    sub_2413515DC();
    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_241323584()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E53A268);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v34 - v2;
  v4 = sub_241351BBC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v34 - v10;
  v12 = &v0[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState];
  if (v0[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 96] == 1)
  {
    sub_241323FA8(v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      return sub_24132496C(v3);
    }

    else
    {
      (*(v5 + 32))(v11, v3, v4);
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v13 = sub_241352FFC();
      __swift_project_value_buffer(v13, qword_27E53A538);
      (*(v5 + 16))(v8, v11, v4);
      v14 = v0;
      v15 = sub_241352FDC();
      v16 = sub_2413540DC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134218240;
        sub_241352C5C();
        sub_24135196C();
        *(v17 + 4) = v18;
        *(v17 + 12) = 2048;
        v19 = sub_241257210();
        v34 = v20;
        v21 = *(v5 + 8);
        v21(v8, v4, v19);
        *(v17 + 14) = v34.f32[1];
        _os_log_impl(&dword_241215000, v15, v16, "[RealityKit Tracked Raycast] Moving entity to new position. old: %f, new: %f", v17, 0x16u);
        v22 = v17;
        v23 = v21;
        MEMORY[0x245CE4870](v22, -1, -1);
      }

      else
      {

        v23 = *(v5 + 8);
        v23(v8, v4);
      }

      sub_241351BAC();
      v34 = v24;
      sub_241352C5C();
      sub_24135196C();
      sub_24135190C();
      if (*v12)
      {
        if ((*(*v12 + 32) & 1) == 0)
        {
          sub_241257210();
          v26 = vmulq_f32(v25, v25);
          *&v27 = v26.f32[2] + vaddv_f32(*v26.f32);
          *v26.f32 = vrsqrte_f32(v27);
          *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)));
          v34 = vmulq_n_f32(v25, vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
          sub_2413519BC();
          sub_2412AC428(v29, v28);
          v31 = vmulq_f32(v30, v30);
          *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
          *v31.f32 = vrsqrte_f32(v32);
          *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32)));
          *v33.i64 = simd_quaternion(vmulq_n_f32(v30, vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32))).f32[0]), v34);
          v34 = v33;
          sub_2413518EC();
          sub_2413518FC();
        }
      }

      v12[96] = 0;
      sub_24124954C();
      return (v23)(v11, v4);
    }
  }

  return result;
}

uint64_t sub_241323A38()
{
  v42 = sub_2413520EC();
  v1 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_241351A7C();
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2413517DC();
  v7 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState);
  if (!v10)
  {
    return 0;
  }

  result = sub_241324518();
  v12 = result;
  v49 = *(result + 16);
  if (!v49)
  {
LABEL_13:

    return 0;
  }

  v13 = v4;
  v14 = 0;
  v48 = *(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_shouldUseTightBoundsSPI);
  v35 = (v7 + 8);
  v40 = *MEMORY[0x277CDAE48];
  v39 = (v1 + 104);
  v38 = (v1 + 8);
  v37 = (v13 + 8);
  while (v14 < *(v12 + 16))
  {
    v51 = *(v12 + 16 * v14 + 32);
    if (v48)
    {
      sub_241352E1C();
      v50 = v15;
      v45 = v16;
      v44 = v17;
      sub_241352C5C();
      sub_24135195C();
      v45 = v18;
      v50 = v19;
      *&v21 = simd_matrix4x4(v20);
      v52 = v21;
      v53 = v22;
      v54 = v23;
      v55 = v24;
      sub_24135410C();
      sub_241354A8C();
      sub_241354A9C();
      v50 = v55;
      v45 = v54;
      v44 = v53;
      v43 = v52;
      sub_24135296C();
      sub_2413516FC();
      (*v35)(v9, v36);
      REEntityComputeTightMeshBounds();
      HIDWORD(v25) = HIDWORD(v46);
      HIDWORD(v26) = HIDWORD(v47);
      v46 = v25;
      v47 = v26;
    }

    else
    {
      sub_241352C5C();
      sub_24135191C();
    }

    REAABBExtents();
    if (*(v10 + 16))
    {
      v28.i32[0] = 0;
      v28.i32[1] = fmaxf(v27 + 0.1, 0.3);
      *&v29 = vadd_f32(*&v51, v28);
      *&v30 = vsub_f32(*&v51, *&v29);
      *(&v30 + 1) = COERCE_UNSIGNED_INT(*(&v51 + 2) - (*(&v51 + 2) + 0.0));
      *(&v29 + 1) = COERCE_UNSIGNED_INT(*(&v51 + 2) + 0.0);
      v50 = v29;
      v51 = v30;
      Strong = swift_unknownObjectUnownedLoadStrong();
      sub_24135292C();

      sub_241351A2C();
      v32 = v42;
      (*v39)(v3, v40, v42);
      v33 = sub_24135251C();

      (*v38)(v3, v32);
      (*v37)(v6, v41);
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    v34 = *(v33 + 16);

    if (v34 >= 2)
    {

      return 1;
    }

    if (v49 == ++v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_241323FA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_241351BBC();
  v60 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v59.i64[0] = &v49 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v49 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E53A268);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = *(v2 + OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState);
  if (v19)
  {
    v55 = v4;
    v56 = v13;
    v49 = a1;
    v50 = &v49 - v18;
    v52 = v7;

    v20 = sub_241324518();
    v21 = v20;
    v22 = *(v20 + 2);
    v54 = v19;
    v58 = v22;
    if (v22)
    {
      v23 = 0;
      v57 = (v20 + 2);
      result = v60;
      v25 = (v60 + 48);
      v26 = (v60 + 32);
      v27 = MEMORY[0x277D84F90];
      v28 = v55;
      v51 = v21;
      while (v23 < *(v21 + 2))
      {
        v61 = *&v57[16 * v23];
        sub_2413245CC(&v61, v19, v17);
        if ((*v25)(v17, 1, v28) == 1)
        {
          result = sub_24132496C(v17);
        }

        else
        {
          v29 = v2;
          v30 = *v26;
          v31 = v53;
          (*v26)(v53, v17, v28);
          v30(v59.i64[0], v31, v28);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_2412A17D0(0, v27[2] + 1, 1, v27);
          }

          v33 = v27[2];
          v32 = v27[3];
          v34 = v60;
          if (v33 >= v32 >> 1)
          {
            v35 = sub_2412A17D0(v32 > 1, v33 + 1, 1, v27);
            v34 = v60;
            v27 = v35;
          }

          v27[2] = v33 + 1;
          v28 = v55;
          result = (v30)(v27 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v33, v59.i64[0], v55);
          v19 = v54;
          v2 = v29;
          v21 = v51;
        }

        if (v58 == ++v23)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

    v27 = MEMORY[0x277D84F90];
    v28 = v55;
LABEL_17:

    v37 = v27[2];
    if (v37)
    {
      v38 = *(v60 + 16);
      v57 = v27 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
      v58 = v38;
      (v38)(v56);
      if (v37 != 1)
      {
        result = v60;
        v42 = (v60 + 32);
        v43 = 1;
        while (v43 < v27[2])
        {
          v44 = v52;
          v58(v52, &v57[*(v60 + 72) * v43], v28);
          v45 = v56;
          sub_241351B9C();
          sub_241351BAC();
          v59 = v46;
          sub_241351B9C();
          sub_241351BAC();
          v48 = *(v60 + 8);
          if (vmovn_s32(vcgtq_f32(v47, v59)).i8[2])
          {
            v48(v45, v28);
            result = (*v42)(v45, v44, v28);
          }

          else
          {
            result = (v48)(v44, v28);
          }

          if (v37 == ++v43)
          {
            goto LABEL_19;
          }
        }

LABEL_29:
        __break(1u);
        return result;
      }

LABEL_19:

      v39 = v50;
      (*(v60 + 32))(v50, v56, v28);
      v40 = v60;
      v41 = 0;
    }

    else
    {

      v41 = 1;
      v40 = v60;
      v39 = v50;
    }

    (*(v40 + 56))(v39, v41, 1, v28);
    return sub_2413249D4(v39, v49);
  }

  v36 = *(v60 + 56);

  return v36(a1, 1, 1, v4);
}

_OWORD *sub_241324518()
{
  sub_241246C60();
  v12 = v0;
  v15 = v2;
  v16 = v1;
  v11 = v3;
  v4 = v0;
  DWORD2(v4) = v1;
  v5 = v2;
  DWORD2(v5) = v3;
  v13 = v4;
  v14 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A50);
  v6 = swift_allocObject();
  *&v7 = v12;
  *(&v7 + 1) = v11;
  v6[1] = xmmword_24136A9D0;
  v6[2] = v13;
  *&v8 = __PAIR64__(HIDWORD(v12), v15);
  v6[3] = v14;
  v6[4] = v7;
  *(&v8 + 1) = v16;
  v6[5] = v8;
  REAABBCenter();
  v6[6] = v9;
  return v6;
}

uint64_t sub_2413245CC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a3;
  v29 = sub_241351BBC();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2413520EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_241351A7C();
  v11 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  sub_241246C60();
  REAABBExtents();
  if (*(a2 + 16))
  {
    v15.i32[0] = 0;
    v15.i32[1] = fmaxf(v14 + 0.1, 0.3);
    *&v16 = vadd_f32(*&v27, v15);
    *&v17 = vsub_f32(*&v27, *&v16);
    v15.f32[0] = *(&v27 + 2) + 0.0;
    *(&v17 + 1) = COERCE_UNSIGNED_INT(*(&v27 + 2) - (*(&v27 + 2) + 0.0));
    v27 = v17;
    *(&v16 + 1) = v15.u32[0];
    v25 = v16;
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_24135292C();

    sub_241351A2C();
    (*(v8 + 104))(v10, *MEMORY[0x277CDAE48], v7);
    v19 = sub_24135251C();

    (*(v8 + 8))(v10, v7);
    (*(v11 + 8))(v13, v28);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v20 = v29;
  if (*(v19 + 16) >= 2uLL)
  {
    v23 = v26;
    (*(v5 + 16))(v26, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v29);

    v22 = v30;
    (*(v5 + 32))(v30, v23, v20);
    v21 = 0;
  }

  else
  {

    v21 = 1;
    v22 = v30;
  }

  return (*(v5 + 56))(v22, v21, 1, v20);
}

uint64_t sub_24132496C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E53A268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2413249D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E53A268);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_241324A44()
{
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v0 = sub_241352FFC();
  __swift_project_value_buffer(v0, qword_27E53A538);
  oslog = sub_241352FDC();
  v1 = sub_2413540DC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 134217984;
    *(v2 + 4) = [objc_opt_self() renderTier];
    _os_log_impl(&dword_241215000, oslog, v1, "ARQLDevice: Device is in Render Tier %ld", v2, 0xCu);
    MEMORY[0x245CE4870](v2, -1, -1);
  }
}

double sub_241324B50()
{
  if (qword_27E537B68 != -1)
  {
    swift_once();
  }

  if (dword_27E541790 < 501 || (v0 = objc_opt_self(), [v0 renderTier] == 1))
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v1 = sub_241352FFC();
    __swift_project_value_buffer(v1, qword_27E53A538);
    v2 = sub_241352FDC();
    v3 = sub_2413540DC();
    v4 = 0.5;
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_11;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Using lowest rendering resolution";
    goto LABEL_9;
  }

  if ([v0 renderTier] == 2 || objc_msgSend(v0, sel_renderTier) == 3)
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v8 = sub_241352FFC();
    __swift_project_value_buffer(v8, qword_27E53A538);
    v2 = sub_241352FDC();
    v3 = sub_2413540DC();
    v4 = 0.75;
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_11;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Using medium rendering resolution";
LABEL_9:
    _os_log_impl(&dword_241215000, v2, v3, v6, v5, 2u);
    goto LABEL_10;
  }

  if ([v0 renderTier] == 4 || (v4 = 1.0, objc_msgSend(v0, sel_renderTier) == 5))
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v9 = sub_241352FFC();
    __swift_project_value_buffer(v9, qword_27E53A538);
    v2 = sub_241352FDC();
    v10 = sub_2413540DC();
    if (!os_log_type_enabled(v2, v10))
    {
      v4 = 0.9;
      goto LABEL_11;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_241215000, v2, v10, "Using high rendering resolution", v5, 2u);
    v4 = 0.9;
LABEL_10:
    MEMORY[0x245CE4870](v5, -1, -1);
LABEL_11:
  }

  return v4;
}

id sub_241324E38()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v9 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithBounds_];
      v10 = swift_allocObject();
      *(v10 + 16) = v2;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_241325FE0;
      *(v11 + 24) = v10;
      v15[4] = sub_241325FE8;
      v15[5] = v11;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 1107296256;
      v15[2] = sub_241326010;
      v15[3] = &block_descriptor_13;
      v12 = _Block_copy(v15);
      v13 = v2;

      v14 = [v9 imageWithActions_];

      _Block_release(v12);
      LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

      if (v4)
      {
        __break(1u);
      }

      else
      {
        return v14;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_241325050(void *a1)
{
  if (a1)
  {
    v2 = objc_opt_self();
    v7 = a1;
    [v2 showARSnapshotUIForImage_];
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v3 = sub_241352FFC();
    __swift_project_value_buffer(v3, qword_27E53A538);
    v4 = sub_241352FDC();
    v5 = sub_2413540DC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_241215000, v4, v5, "AR screenshot was taken", v6, 2u);
      MEMORY[0x245CE4870](v6, -1, -1);
    }
  }
}

void sub_24132517C(uint64_t a1, uint64_t a2)
{
  v5 = sub_2413517DC();
  v55 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v54 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24135170C();
  v7 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2413517BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MTLCreateSystemDefaultDevice();
  if (!v14)
  {
    sub_2412460C0();
    swift_allocError();
    *v42 = 0xD000000000000023;
    *(v42 + 8) = 0x8000000241362710;
    *(v42 + 16) = 1;
    swift_willThrow();
    return;
  }

  v51 = v5;
  v52 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v15 = *(v2 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v48 = a1;
  v49 = a2;
  v50 = v14;
  v16 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v16;
  sub_24135257C();
  sub_241351C8C();
  sub_2413516FC();

  (*(v11 + 8))(v13, v10);
  v18 = v2;
  v19 = v52;
  v20 = *(v2 + v52);
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = *(v20 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  v22 = v51;
  if (!v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v21;
  v24 = sub_24135284C();

  v25 = v50;
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_24135214C();
  sub_2413516FC();

  (*(v7 + 8))(v9, v56);
  v26 = *(v18 + v19);
  if (!v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = *(v26 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v27)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = v27;
  sub_24135292C();
  v29 = sub_2413524BC();

  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v54;
  sub_24135296C();
  sub_2413516FC();

  (*(v55 + 8))(v30, v22);
  v31 = *(v18 + v19);
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = *(v31 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v32)
  {
LABEL_25:
    __break(1u);
    return;
  }

  [v32 bounds];
  v34 = v33;
  v36 = v35;
  v37 = [objc_opt_self() mainScreen];
  [v37 scale];
  v39 = v38;

  v40 = v53;
  v41 = sub_2412FCA30(v25, 71, v34 * v39, v36 * v39);
  if (v40)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = v41;
    v44 = swift_allocObject();
    v44[2] = v48;
    v44[3] = v49;
    v44[4] = v43;

    swift_unknownObjectRetain();
    RECameraViewDescriptorsComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    RERenderGraphCreateRenderGraphDataStruct();
    RERenderGraphDataStructAddFloat4();
    v45 = swift_allocObject();
    *(v45 + 16) = sub_241326074;
    *(v45 + 24) = v44;
    aBlock[4] = sub_241246138;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2412D5698;
    aBlock[3] = &block_descriptor_12_0;
    v46 = _Block_copy(aBlock);

    RECameraViewDescriptorsComponentSnapshotNextFrameWithSettings();
    _Block_release(v46);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}