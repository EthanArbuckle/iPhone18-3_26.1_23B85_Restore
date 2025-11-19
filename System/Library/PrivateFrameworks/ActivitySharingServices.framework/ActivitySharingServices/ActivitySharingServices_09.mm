_BYTE *sub_221F69B44(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 1] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

unint64_t sub_221F69D20()
{
  result = qword_27CFEC888;
  if (!qword_27CFEC888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFEC888);
  }

  return result;
}

unint64_t sub_221F69D80()
{
  result = qword_27CFEC890;
  if (!qword_27CFEC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC890);
  }

  return result;
}

unint64_t sub_221F69DE8()
{
  result = qword_27CFEC898;
  if (!qword_27CFEC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC898);
  }

  return result;
}

uint64_t static Platform.current.setter(char a1)
{
  result = swift_beginAccess();
  byte_27CFEC8A0 = a1 & 1;
  return result;
}

ActivitySharingServices::Platform_optional __swiftcall Platform.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = ActivitySharingServices_Platform_watch;
  }

  else
  {
    v1.value = ActivitySharingServices_Platform_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_221F69F58@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_221FB6318();

    sub_221FB6338();
  }

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();
  return has_internal_ui;
}

unint64_t sub_221F6A040()
{
  result = qword_27CFEC8A8;
  if (!qword_27CFEC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC8A8);
  }

  return result;
}

unint64_t sub_221F6A098()
{
  result = qword_27CFEC8B0;
  if (!qword_27CFEC8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC8B8, &qword_221FBDD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC8B0);
  }

  return result;
}

uint64_t sub_221F6A10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3);
}

uint64_t sub_221F6A234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F6A364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221F6A48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F6A5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221F6A6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221F6A80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F6A93C(uint64_t a1)
{
  v2 = *MEMORY[0x277CE9340];
  v12 = sub_221FB6318();
  v13 = v3;
  v11 = &v12;
  v4 = sub_221F7B864(sub_221EB9CF4, v10, a1);

  if (v4)
  {
    return sub_221FB6318();
  }

  v5 = *MEMORY[0x277CE9348];
  v12 = sub_221FB6318();
  v13 = v6;
  MEMORY[0x28223BE20](v12);
  v9[2] = &v12;
  v7 = sub_221F7B864(sub_221EB9CF4, v9, a1);

  if (v7)
  {
    return sub_221FB6318();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221F6AA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5E48();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F6AB24, 0, 0);
}

uint64_t sub_221F6AB24()
{
  v46 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DF0);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Falling back to legacy invite flow", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[4];

  if (v5)
  {
    v6 = v0[4];
    v7 = v0[2];
    v8 = sub_221FB5E18();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = v0[2];
      v13 = sub_221FB5E18();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v0[10] = v15;
    v29 = v0[2];
    v30 = __swift_project_boxed_opaque_existential_0Tm((v0[5] + 48), *(v0[5] + 72));
    v31 = sub_221FB5E08();
    v33 = v32;
    v0[11] = v32;
    v34 = *v30;
    v35 = swift_task_alloc();
    v0[12] = v35;
    *v35 = v0;
    v35[1] = sub_221F6AEF4;
    v36 = v0[3];

    return sub_221FB52A8(v31, v33, v13, v15, v36, v6, v34);
  }

  else
  {
    v16 = *(v0[7] + 16);
    v16(v0[9], v0[2], v0[6]);
    v17 = sub_221FB61B8();
    v18 = sub_221FB65A8();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[9];
    if (v19)
    {
      v21 = v0[7];
      v22 = v0[8];
      v23 = v0[6];
      v24 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v24 = 136315138;
      v16(v22, v20, v23);
      v25 = sub_221FB6328();
      v27 = v26;
      (*(v21 + 8))(v20, v23);
      v28 = sub_221EF4114(v25, v27, &v45);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_221E93000, v17, v18, "No available service identifier for fallback invite %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x223DADA80](v44, -1, -1);
      MEMORY[0x223DADA80](v24, -1, -1);
    }

    else
    {
      v38 = v0[6];
      v39 = v0[7];

      (*(v39 + 8))(v20, v38);
    }

    sub_221EA4994();
    swift_allocError();
    *v40 = 46;
    swift_willThrow();
    v42 = v0[8];
    v41 = v0[9];

    v43 = v0[1];

    return v43();
  }
}

uint64_t sub_221F6AEF4()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v9 = *v0;

  v5 = *(v1 + 72);
  v6 = *(v1 + 64);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_221F6B068(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for IDSErrorAction(0);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC0F0, &qword_221FBA2A0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for IDSError(0);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_221FB5E48();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F6B1F8, 0, 0);
}

uint64_t sub_221F6B1F8()
{
  v34 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[5];
  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[16];
  if (v9)
  {
    v11 = v0[14];
    v12 = v0[15];
    v13 = v0[13];
    v14 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_221FB6328();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_221EF4114(v15, v17, &v33);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_221E93000, v7, v8, "Inviting friend with request: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x223DADA80](v32, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {
    v19 = v0[13];
    v20 = v0[14];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[5];
  v21 = v0[6];
  v23 = sub_221FB5E38();
  v24 = sub_221F6A93C(v23);
  v26 = v25;

  v0[17] = v24;
  v0[18] = v26;
  v27 = v21[3];
  v28 = v21[4];
  __swift_project_boxed_opaque_existential_0Tm(v21, v27);
  v29 = *(MEMORY[0x277CE9360] + 4);
  v30 = swift_task_alloc();
  v0[19] = v30;
  *v30 = v0;
  v30[1] = sub_221F6B494;

  return MEMORY[0x28213AC20](v27, v28);
}

uint64_t sub_221F6B494(char a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_221F6B594, 0, 0);
}

uint64_t sub_221F6B594()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 368);
  v3 = *(v1 + 369);
  v4 = *(v1 + 376);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    UserDefaultsKeys.rawValue.getter();
    v5 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v4);

    if (v5 == 2)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      goto LABEL_16;
    }
  }

  else if (v3)
  {
LABEL_16:
    v15 = 1;
    goto LABEL_17;
  }

  v7 = *(v0 + 40);
  v8 = sub_221FB5E28();
  v10 = v9;
  v11 = *MEMORY[0x277CE9230];
  if (v8 == sub_221FB6318() && v10 == v12)
  {

    goto LABEL_16;
  }

  v14 = *(v0 + 224);
  v15 = sub_221FB6B58();

  if ((v15 & 1) == 0 && v14)
  {
    v16 = *(v0 + 40);
    v17 = sub_221FB5E38();
    *(v0 + 16) = sub_221FB6318();
    *(v0 + 24) = v18;
    v19 = swift_task_alloc();
    *(v19 + 16) = v0 + 16;
    v15 = sub_221F7B864(sub_221EB8534, v19, v17);
  }

LABEL_17:
  v20 = *(v0 + 48);
  v21 = *(v20 + 384);
  v22 = *(v20 + 385);
  v23 = *(v20 + 392);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    UserDefaultsKeys.rawValue.getter();
    v24 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v23);

    if (v24 != 2)
    {
      v22 = v24;
    }
  }

  if (v22 & 1) != 0 || ((v15 ^ 1))
  {
    v34 = swift_task_alloc();
    *(v0 + 192) = v34;
    *v34 = v0;
    v34[1] = sub_221F6BCC4;
    v35 = *(v0 + 136);
    v36 = *(v0 + 144);
    v37 = *(v0 + 40);
    v38 = *(v0 + 48);

    return sub_221F6AA54(v37, v35, v36);
  }

  else
  {
    v25 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_0Tm((*(v0 + 48) + 208), *(*(v0 + 48) + 232));
    v26 = sub_221FB5E08();
    v28 = v27;
    *(v0 + 160) = v27;
    sub_221FB5E28();
    *(v0 + 168) = v29;
    v30 = swift_task_alloc();
    *(v0 + 176) = v30;
    *v30 = v0;
    v30[1] = sub_221F6B8AC;
    v31 = *(v0 + 136);
    v32 = *(v0 + 144);

    return sub_221F18C18(v26, v28, v31, v32);
  }
}

uint64_t sub_221F6B8AC()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F6BA3C, 0, 0);
  }

  else
  {
    v5 = v3[20];
    v4 = v3[21];
    v6 = v3[18];

    v8 = v3[15];
    v7 = v3[16];
    v9 = v3[12];
    v10 = v3[8];
    v11 = v3[9];

    v12 = v3[1];

    return v12();
  }
}

uint64_t sub_221F6BA3C()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[9];
  v4 = v0[10];

  v0[4] = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
  v7 = swift_dynamicCast();
  v8 = v0[11];
  v10 = v0[9];
  v9 = v0[10];
  if (v7)
  {
    v11 = v0[12];
    v13 = v0[7];
    v12 = v0[8];
    (*(v8 + 56))(v0[9], 0, 1, v0[10]);
    sub_221F6E338(v10, v11, type metadata accessor for IDSError);
    sub_221EC44D8(v11, v12);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_221EDAE34(v0[8], type metadata accessor for IDSErrorAction);
      v14 = swift_task_alloc();
      v0[26] = v14;
      *v14 = v0;
      v14[1] = sub_221F6BF18;
      v15 = v0[17];
      v16 = v0[18];
      v17 = v0[5];
      v18 = v0[6];

      return sub_221F6AA54(v17, v15, v16);
    }

    v21 = v0[18];
    v22 = v0[8];
    sub_221EDAE34(v0[12], type metadata accessor for IDSError);

    sub_221EDAE34(v22, type metadata accessor for IDSErrorAction);
  }

  else
  {
    v20 = v0[18];

    (*(v8 + 56))(v10, 1, 1, v9);
    sub_221F6DB64(v10);
  }

  v23 = v0[23];
  swift_willThrow();
  v24 = v0[23];
  v26 = v0[15];
  v25 = v0[16];
  v27 = v0[12];
  v29 = v0[8];
  v28 = v0[9];

  v30 = v0[1];

  return v30();
}

uint64_t sub_221F6BCC4()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_221F6BE74;
  }

  else
  {
    v3 = sub_221F6BDD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F6BDD8()
{
  v1 = v0[18];

  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_221F6BE74()
{
  v1 = v0[18];

  v2 = v0[25];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_221F6BF18()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 144);

  if (v0)
  {
    v6 = sub_221F6C108;
  }

  else
  {
    v6 = sub_221F6C04C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F6C04C()
{
  v1 = *(v0 + 96);

  sub_221EDAE34(v1, type metadata accessor for IDSError);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 96);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221F6C108()
{
  v1 = *(v0 + 96);

  sub_221EDAE34(v1, type metadata accessor for IDSError);
  v2 = *(v0 + 216);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 96);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_221F6C1CC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for IDSErrorAction(0);
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = sub_221FB5C38();
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC0F0, &qword_221FBA2A0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = type metadata accessor for IDSError(0);
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F6C360, 0, 0);
}

uint64_t sub_221F6C360()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  v0[16] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000085, 0x8000000221FC3E90, 0xD000000000000030, 0x8000000221FC3E50);
  __swift_project_boxed_opaque_existential_0Tm((v1 + 168), *(v1 + 192));
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_221F6C48C;
  v5 = v0[3];
  v4 = v0[4];

  return sub_221F5FCE0(v5, v4);
}

uint64_t sub_221F6C48C()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F6C600, 0, 0);
  }

  else
  {
    v4 = v3[15];
    v6 = v3[11];
    v5 = v3[12];
    v7 = v3[7];
    v8 = v3[8];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_221F6C600()
{
  v1 = v0[18];
  v0[2] = v1;
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
  v6 = swift_dynamicCast();
  v7 = *(v3 + 56);
  if (v6)
  {
    v8 = v0[15];
    v9 = v0[12];
    v10 = v0[8];
    v11 = v0[6];
    v7(v9, 0, 1, v0[13]);
    sub_221F6E338(v9, v8, type metadata accessor for IDSError);
    sub_221EC44D8(v8, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = v0[16];
      (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
      v13 = sub_221FB61B8();
      v14 = sub_221FB65C8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_221E93000, v13, v14, "Friendship already exists, auto accepting", v15, 2u);
        MEMORY[0x223DADA80](v15, -1, -1);
      }

      v16 = v0[5];

      __swift_project_boxed_opaque_existential_0Tm((v16 + 88), *(v16 + 112));
      v17 = swift_task_alloc();
      v0[19] = v17;
      *v17 = v0;
      v17[1] = sub_221F6C8CC;
      v18 = v0[11];

      return sub_221FA9168(v18);
    }

    v21 = v0[8];
    sub_221EDAE34(v0[15], type metadata accessor for IDSError);
    sub_221EDAE34(v21, type metadata accessor for IDSErrorAction);
  }

  else
  {
    v20 = v0[12];
    v7(v20, 1, 1, v0[13]);
    sub_221F6DB64(v20);
  }

  v22 = v0[18];
  swift_willThrow();
  v23 = v0[18];
  v24 = v0[15];
  v26 = v0[11];
  v25 = v0[12];
  v28 = v0[7];
  v27 = v0[8];

  v29 = v0[1];

  return v29();
}

uint64_t sub_221F6C8CC()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_221F6CABC;
  }

  else
  {
    v3 = sub_221F6C9E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F6C9E0()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);

  (*(v3 + 8))(v2, v4);
  sub_221EDAE34(v1, type metadata accessor for IDSError);
  v5 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_221F6CABC()
{
  v1 = v0[20];
  v2 = v0[18];
  v18 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  *v8 = 1;
  swift_storeEnumTagMultiPayload();
  sub_221EA49E8();
  swift_allocError();
  v10 = v9;
  sub_221F6E338(v8, v9, type metadata accessor for IDSErrorAction);
  *(v10 + *(v3 + 20)) = v1;
  swift_willThrow();

  (*(v4 + 8))(v5, v6);
  sub_221EDAE34(v18, type metadata accessor for IDSError);
  v11 = v0[15];
  v13 = v0[11];
  v12 = v0[12];
  v15 = v0[7];
  v14 = v0[8];

  v16 = v0[1];

  return v16();
}

uint64_t sub_221F6CC20(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221F6CC40, 0, 0);
}

uint64_t sub_221F6CC40()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[19];
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000085, 0x8000000221FC3E90, 0xD00000000000001ALL, 0x8000000221FC2D30);
  v4 = *(v2 + 40);
  v5 = sub_221FB5BF8();
  v6 = [v4 contactWithUUID_];
  v0[20] = v6;

  if (v6)
  {
    if ([v6 cloudType] == 1)
    {
      __swift_project_boxed_opaque_existential_0Tm((v0[19] + 88), *(v0[19] + 112));
      v7 = swift_task_alloc();
      v0[21] = v7;
      *v7 = v0;
      v7[1] = sub_221F6CF48;
      v8 = v0[18];

      return sub_221FA9168(v8);
    }

    else
    {
      v12 = v0[18];
      v13 = *__swift_project_boxed_opaque_existential_0Tm((v0[19] + 48), *(v0[19] + 72));
      v14 = sub_221FB5BF8();
      v0[23] = v14;
      v0[2] = v0;
      v0[7] = v0 + 25;
      v0[3] = sub_221F6D124;
      v15 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_221FA909C;
      v0[13] = &block_descriptor_29;
      v0[14] = v15;
      [v13 acceptInviteRequestFromFriendWithUUID:v14 completion:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }
  }

  else
  {
    sub_221EA4994();
    swift_allocError();
    *v10 = 21;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_221F6CF48()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_221F6D0C0;
  }

  else
  {
    v3 = sub_221F6D05C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F6D05C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F6D0C0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F6D124()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_221F6D2A0;
  }

  else
  {
    v3 = sub_221F6D234;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F6D234()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F6D2A0()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[24];
  v5 = v0[1];

  return v5();
}

uint64_t sub_221F6D318(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for IDSErrorAction(0);
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC0F0, &qword_221FBA2A0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for IDSError(0);
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F6D444, 0, 0);
}

uint64_t sub_221F6D444()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000085, 0x8000000221FC3E90, 0xD00000000000002ELL, 0x8000000221FC0EE0);
  __swift_project_boxed_opaque_existential_0Tm((v1 + 248), *(v1 + 272));
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_221F6D56C;
  v5 = v0[3];
  v4 = v0[4];

  return sub_221EA0D98(v5, v4);
}

uint64_t sub_221F6D56C()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F6D6C0, 0, 0);
  }

  else
  {
    v4 = v3[11];
    v5 = v3[7];
    v6 = v3[8];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_221F6D6C0()
{
  v1 = v0[13];
  v0[2] = v1;
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
  v6 = swift_dynamicCast();
  v7 = *(v3 + 56);
  if (v6)
  {
    v8 = v0[11];
    v9 = v0[8];
    v11 = v0[6];
    v10 = v0[7];
    v7(v9, 0, 1, v0[9]);
    sub_221F6E338(v9, v8, type metadata accessor for IDSError);
    sub_221EC44D8(v8, v10);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v12 = v0[5];
      sub_221EDAE34(v0[7], type metadata accessor for IDSErrorAction);
      __swift_project_boxed_opaque_existential_0Tm((v12 + 128), *(v12 + 152));
      v13 = swift_task_alloc();
      v0[14] = v13;
      *v13 = v0;
      v13[1] = sub_221F6D908;
      v14 = v0[3];

      return sub_221F7CB1C(v14);
    }

    v17 = v0[7];
    sub_221EDAE34(v0[11], type metadata accessor for IDSError);
    sub_221EDAE34(v17, type metadata accessor for IDSErrorAction);
  }

  else
  {
    v16 = v0[8];
    v7(v16, 1, 1, v0[9]);
    sub_221F6DB64(v16);
  }

  v18 = v0[13];
  swift_willThrow();
  v19 = v0[13];
  v20 = v0[11];
  v22 = v0[7];
  v21 = v0[8];

  v23 = v0[1];

  return v23();
}

uint64_t sub_221F6D908()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_221F6DABC;
  }

  else
  {
    v3 = sub_221F6DA1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F6DA1C()
{
  v1 = *(v0 + 88);

  sub_221EDAE34(v1, type metadata accessor for IDSError);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_221F6DABC()
{
  v1 = *(v0 + 88);

  sub_221EDAE34(v1, type metadata accessor for IDSError);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_221F6DB64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC0F0, &qword_221FBA2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221F6DBCC(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221F6DBEC, 0, 0);
}

uint64_t sub_221F6DBEC()
{
  v1 = v0[18];
  v2 = *(v0[19] + 40);
  v3 = sub_221FB5BF8();
  v4 = [v2 contactWithUUID_];
  v0[20] = v4;

  if (v4)
  {
    if ([v4 cloudType] == 1)
    {
      __swift_project_boxed_opaque_existential_0Tm((v0[19] + 288), *(v0[19] + 312));
      v5 = swift_task_alloc();
      v0[21] = v5;
      *v5 = v0;
      v5[1] = sub_221F6DE70;
      v6 = v0[18];

      return sub_221F3CF70(v6);
    }

    else
    {
      v10 = v0[18];
      v11 = *__swift_project_boxed_opaque_existential_0Tm((v0[19] + 48), *(v0[19] + 72));
      v12 = sub_221FB5BF8();
      v0[23] = v12;
      v0[2] = v0;
      v0[7] = v0 + 25;
      v0[3] = sub_221F6DF84;
      v13 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_221FA909C;
      v0[13] = &block_descriptor_24;
      v0[14] = v13;
      [v11 ignoreInviteRequestFromFriendWithUUID:v12 completion:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }
  }

  else
  {
    sub_221EA4994();
    swift_allocError();
    *v8 = 21;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_221F6DE70()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_221F6E4CC;
  }

  else
  {
    v3 = sub_221F6E4D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F6DF84()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_221F6E4C8;
  }

  else
  {
    v3 = sub_221F6E4D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F6E094(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221F6E0B4, 0, 0);
}

uint64_t sub_221F6E0B4()
{
  v1 = v0[18];
  v2 = *(v0[19] + 40);
  v3 = sub_221FB5BF8();
  v4 = [v2 contactWithUUID_];
  v0[20] = v4;

  if (v4)
  {
    if ([v4 cloudType] == 1)
    {
      __swift_project_boxed_opaque_existential_0Tm((v0[19] + 328), *(v0[19] + 352));
      v5 = swift_task_alloc();
      v0[21] = v5;
      *v5 = v0;
      v5[1] = sub_221F6DE70;
      v6 = v0[18];

      return sub_221F5AC18(v6);
    }

    else
    {
      v10 = v0[18];
      v11 = *__swift_project_boxed_opaque_existential_0Tm((v0[19] + 48), *(v0[19] + 72));
      v12 = sub_221FB5BF8();
      v0[23] = v12;
      v0[2] = v0;
      v0[7] = v0 + 25;
      v0[3] = sub_221F6DF84;
      v13 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_221FA909C;
      v0[13] = &block_descriptor_29;
      v0[14] = v13;
      [v11 sendWithdrawInviteRequestToFriendWithUUID:v12 completion:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }
  }

  else
  {
    sub_221EA4994();
    swift_allocError();
    *v8 = 21;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_221F6E338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_221F6E3B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_221F6E400(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F6E4D8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return v9(a1, a2);
}

uint64_t sub_221F6E5F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_221E9544C;

  return (v15)(a1, a2 & 1, a3, a4, a5);
}

uint64_t sub_221F6E730(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9E350;

  return v9(a1, a2);
}

uint64_t sub_221F6E848(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_221E9544C;

  return (v15)(a1, a2 & 1, a3, a4, a5);
}

uint64_t sub_221F6E988()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = sub_221FB62E8();
  v5 = [v2 objectForKey_];

  if (v5)
  {
    sub_221FB67C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (!*(&v29 + 1))
  {
    return sub_221F6F34C(v30);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC8C0, &qword_221FBDFF8);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = *(v27 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = v27 + 32;
      v26 = MEMORY[0x277D84F90];
      while (1)
      {
        v10 = v8;
        if (v8 >= *(v27 + 16))
        {
          break;
        }

        v11 = *(v9 + 8 * v8++);

        v13 = sub_221F9A450(v12);
        v15 = v14;
        v16 = v13;
        v18 = v17;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_221EF35F0(0, *(v26 + 16) + 1, 1, v26);
          v26 = result;
        }

        v20 = *(v26 + 16);
        v19 = *(v26 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_221EF35F0((v19 > 1), v20 + 1, 1, v26);
          v23 = v15;
          v21 = v18;
          v26 = result;
          v22 = v16;
        }

        else
        {
          v21 = v18;
          v22 = v16;
          v23 = v15;
        }

        v9 = v27 + 32;
        *(v26 + 16) = v20 + 1;
        v24 = v26 + 24 * v20;
        *(v24 + 32) = v22;
        *(v24 + 40) = v23 & 1;
        *(v24 + 48) = v21;
        if (v7 - 1 == v10)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
LABEL_18:

      swift_beginAccess();
      v25 = v0[17];
      v0[17] = v26;
    }
  }

  return result;
}

void sub_221F6ED30()
{
  v2 = v1;
  swift_beginAccess();
  v32 = v0;
  v3 = v0[17];
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = v3 + 48;
    v30 = v4 - 1;
    v33 = MEMORY[0x277D84F90];
    v34 = v4;
    v35 = v3;
    v31 = v3 + 48;
    do
    {
      v7 = (v6 + 24 * v5);
      v8 = v5;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v7 - 2);
        v10 = v2;
        sub_221F99C58(v9, *(v7 - 8), *v7);
        if (!v2)
        {
          break;
        }

        v36 = v8 + 1;
        if (qword_281307080 != -1)
        {
          swift_once();
        }

        v12 = sub_221FB61D8();
        __swift_project_value_buffer(v12, qword_281307DF0);
        v13 = v9;
        v14 = sub_221FB61B8();
        v15 = sub_221FB65A8();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v37 = v17;
          *v16 = 136315138;
          v18 = v13;
          v19 = sub_221FB6328();
          v21 = sub_221EF4114(v19, v20, &v37);

          *(v16 + 4) = v21;
          _os_log_impl(&dword_221E93000, v14, v15, "Failed to create dictionary for invitation message %s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x223DADA80](v17, -1, -1);
          MEMORY[0x223DADA80](v16, -1, -1);
        }

        v3 = v35;
        v2 = 0;
        v7 += 3;
        v8 = v36;
        if (v34 == v36)
        {
          goto LABEL_16;
        }
      }

      v22 = v11;
      v5 = v8 + 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_221EF34BC(0, v33[2] + 1, 1, v33);
      }

      v24 = v33[2];
      v23 = v33[3];
      if (v24 >= v23 >> 1)
      {
        v33 = sub_221EF34BC((v23 > 1), v24 + 1, 1, v33);
      }

      v6 = v31;
      v33[2] = v24 + 1;
      v33[v24 + 4] = v22;
    }

    while (v30 != v8);
  }

LABEL_16:

  v25 = v32[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC218, &qword_221FBE680);
  v26 = sub_221FB6428();

  v27 = v32[14];
  v28 = v32[15];
  v29 = sub_221FB62E8();
  [v25 setObject:v26 forKey:v29];
}

uint64_t sub_221F6F080()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221F6F0EC(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 64) = a2;
  *(v4 + 40) = a1;
  return MEMORY[0x2822009F8](sub_221F6F114, v3, 0);
}

uint64_t sub_221F6F114()
{
  v25 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  swift_beginAccess();
  v4 = v3;
  sub_221F6F5A8((v1 + 136), v3);
  v6 = v5;

  v7 = *(*(v1 + 136) + 16);
  if (v7 < v6)
  {
    __break(1u);
    swift_once();
    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);
    v10 = v4;
    v11 = sub_221FB61B8();
    v12 = sub_221FB65A8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 64);
      v15 = *(v0 + 40);
      v14 = *(v0 + 48);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      *(v0 + 16) = v15;
      *(v0 + 24) = v13 & 1;
      *(v0 + 32) = v14;
      v18 = v10;
      v19 = sub_221FB6328();
      v21 = sub_221EF4114(v19, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_221E93000, v11, v12, "Failed to store message removal: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223DADA80](v17, -1, -1);
      MEMORY[0x223DADA80](v16, -1, -1);
    }
  }

  else
  {
    v8 = *(v0 + 56);
    sub_221F6F8F8(v6, v7);
    swift_endAccess();
    sub_221F6ED30();
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_221F6F34C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC128, &unk_221FBA430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221F6F3C8(uint64_t a1, void *a2)
{
  v26 = a2;
  v25 = sub_221FB5C38();
  v4 = *(*(v25 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v25);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v23 = *(a1 + 16);
  if (!v23)
  {
    return 0;
  }

  v22 = v2;
  v10 = 0;
  v11 = (a1 + 32);
  v12 = (v7 + 8);
  while (1)
  {
    v13 = *v11;
    v11 += 3;
    v14 = v13;
    v15 = [v14 uniqueID];
    sub_221FB5C18();

    v16 = [v26 uniqueID];
    v17 = v24;
    sub_221FB5C18();

    LOBYTE(v16) = sub_221FB5C08();
    v18 = *v12;
    v19 = v17;
    v20 = v25;
    (*v12)(v19, v25);
    v18(v9, v20);

    if (v16)
    {
      break;
    }

    if (v23 == ++v10)
    {
      return 0;
    }
  }

  return v10;
}

void sub_221F6F5A8(uint64_t *a1, void *a2)
{
  v5 = sub_221FB5C38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v44 - v11;
  v13 = *a1;
  v14 = sub_221F6F3C8(*a1, a2);
  if (!v2)
  {
    v44[1] = 0;
    if (v15)
    {
      v16 = *(v13 + 16);
      return;
    }

    v51 = v12;
    v17 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      v18 = v13;
      v21 = *(v13 + 16);
      v20 = (v13 + 16);
      v19 = v21;
      if (v17 == v21)
      {
        return;
      }

      v45 = a1;
      v48 = (v6 + 8);
      v49 = v5;
      v22 = 24 * v14;
      v50 = a2;
      while (v17 < v19)
      {
        v55 = v14;
        v53 = v22;
        v54 = v18;
        v52 = &v18[v22];
        v24 = *&v18[v22 + 56];
        v25 = [v24 uniqueID];
        v26 = v51;
        sub_221FB5C18();

        v27 = [a2 uniqueID];
        sub_221FB5C18();

        LOBYTE(v27) = sub_221FB5C08();
        v28 = *v48;
        v29 = v10;
        v30 = v10;
        v31 = v49;
        (*v48)(v30, v49);
        v28(v26, v31);

        if (v27)
        {
          a2 = v50;
          v10 = v29;
          v14 = v55;
          v23 = v53;
          v18 = v54;
        }

        else
        {
          v32 = v55;
          if (v17 == v55)
          {
            a2 = v50;
            v10 = v29;
            v23 = v53;
            v18 = v54;
          }

          else
          {
            a2 = v50;
            v23 = v53;
            v18 = v54;
            if ((v55 & 0x8000000000000000) != 0)
            {
              goto LABEL_23;
            }

            if (v55 >= *v20)
            {
              goto LABEL_24;
            }

            if (v17 >= *v20)
            {
              goto LABEL_25;
            }

            v10 = v29;
            v33 = &v54[24 * v55 + 32];
            v34 = *v33;
            v47 = *(v33 + 8);
            v46 = *(v33 + 16);
            v35 = *(v52 + 7);
            v36 = v52[64];
            v37 = *&v54[v53 + 72];
            v38 = v35;
            v39 = v34;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_221F6F3B4(v18);
            }

            v40 = &v18[24 * v55];
            v41 = *(v40 + 4);
            *(v40 + 4) = v35;
            v40[40] = v36;
            *(v40 + 6) = v37;

            if (v17 >= *(v18 + 2))
            {
              goto LABEL_26;
            }

            v42 = &v18[v23];
            v43 = *&v18[v23 + 56];
            *(v42 + 7) = v34;
            v42[64] = v47;
            *(v42 + 9) = v46;

            *v45 = v18;
            v32 = v55;
          }

          v14 = v32 + 1;
        }

        ++v17;
        v20 = (v18 + 16);
        v19 = *(v18 + 2);
        v22 = v23 + 24;
        if (v17 == v19)
        {
          return;
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
  }
}

unint64_t sub_221F6F8F8(unint64_t result, uint64_t a2)
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

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_221EF35F0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_221F7E828(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_221F6F9CC()
{
  result = qword_27CFEC8C8;
  if (!qword_27CFEC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC8C8);
  }

  return result;
}

uint64_t sub_221F6FA20(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9E350;

  return v9(a1, a2);
}

uint64_t sub_221F6FDC0(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_221FB5C38();
  v4[3] = v7;
  v8 = *(v7 - 8);
  v4[4] = v8;
  v9 = *(v8 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = _Block_copy(a3);
  sub_221FB5C18();
  v10 = a4;

  return MEMORY[0x2822009F8](sub_221F6FEB8, 0, 0);
}

uint64_t sub_221F6FEB8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = &v5[OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipFinalizationCoordinator];
  v7 = *__swift_project_boxed_opaque_existential_0Tm(&v5[OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipFinalizationCoordinator], *&v5[OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipFinalizationCoordinator + 24]);
  v8 = sub_221FB5BF8();
  [v7 removePlaceholderWithContactUUID:v8 shouldNotify:1];

  v9 = *__swift_project_boxed_opaque_existential_0Tm(v6, *(v6 + 3));
  v10 = sub_221FB5BF8();
  [v9 addFinalizedFriendUUIDs_];

  (*(v4 + 8))(v2, v3);
  v1[2](v1, 1, 0);
  _Block_release(v1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_221F70194(uint64_t a1, uint64_t a2, __int16 a3, void *a4, const void *a5, void *a6)
{
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  *(v6 + 80) = a3;
  v10 = sub_221FB5C38();
  *(v6 + 32) = v10;
  v11 = *(v10 - 8);
  *(v6 + 40) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  *(v6 + 56) = _Block_copy(a5);
  sub_221FB5C18();
  v13 = a4;
  v14 = a6;

  return MEMORY[0x2822009F8](sub_221F702A0, 0, 0);
}

uint64_t sub_221F702A0()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 24) + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipUpdateService), *(*(v0 + 24) + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipUpdateService + 24));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_221F70358;
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 80);

  return sub_221EDC7CC(v2, v4, v3);
}

uint64_t sub_221F70358()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_221F713DC;
  }

  else
  {
    v3 = sub_221F713E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F70618(uint64_t a1, uint64_t a2, __int16 a3, void *a4, const void *a5, void *a6)
{
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  *(v6 + 80) = a3;
  v10 = sub_221FB5C38();
  *(v6 + 32) = v10;
  v11 = *(v10 - 8);
  *(v6 + 40) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  *(v6 + 56) = _Block_copy(a5);
  sub_221FB5C18();
  v13 = a4;
  v14 = a6;

  return MEMORY[0x2822009F8](sub_221F70724, 0, 0);
}

uint64_t sub_221F70724()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 24) + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipRemovalService), *(*(v0 + 24) + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipRemovalService + 24));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_221F707DC;
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = *(v0 + 80);

  return sub_221EF560C(v2, v4, v3);
}

uint64_t sub_221F707DC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_221F709AC;
  }

  else
  {
    v3 = sub_221F708F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F708F0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  (*(v4 + 8))(v1, v3);
  (*(v2 + 16))(v2, 1, 0);
  v6 = *(v0 + 48);
  _Block_release(*(v0 + 56));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221F709AC()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  (*(v5 + 8))(v3, v4);
  v7 = sub_221FB5A98();

  (*(v2 + 16))(v2, 0, v7);
  v8 = *(v0 + 48);
  _Block_release(*(v0 + 56));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_221F70C14(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_221FB5C38();
  v4[3] = v7;
  v8 = *(v7 - 8);
  v4[4] = v8;
  v9 = *(v8 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = _Block_copy(a3);
  sub_221FB5C18();
  v10 = a4;

  return MEMORY[0x2822009F8](sub_221F70D0C, 0, 0);
}

uint64_t sub_221F70D0C()
{
  __swift_project_boxed_opaque_existential_0Tm((v0[2] + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipInviteAcceptService), *(v0[2] + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipInviteAcceptService + 24));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_221F70DBC;
  v2 = v0[5];

  return sub_221FA9168(v2);
}

uint64_t sub_221F70DBC()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_221F70F80;
  }

  else
  {
    v3 = sub_221F70ED0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F70ED0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  (*(v4 + 8))(v1, v3);
  (*(v2 + 16))(v2, 1, 0);
  v5 = *(v0 + 40);
  _Block_release(*(v0 + 48));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_221F70F80()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  (*(v5 + 8))(v3, v4);
  v6 = sub_221FB5A98();

  (*(v2 + 16))(v2, 0, v6);
  v7 = *(v0 + 40);
  _Block_release(*(v0 + 48));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_221F71054()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_221E963B4;

  return sub_221F70C14(v2, v3, v5, v4);
}

uint64_t sub_221F71114()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_221E963B4;

  return sub_221F70618(v2, v3, v7, v4, v5, v6);
}

uint64_t objectdestroy_13Tm()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_221F71244()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_221E963B4;

  return sub_221F70194(v2, v3, v7, v4, v5, v6);
}

uint64_t sub_221F7131C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_221E9544C;

  return sub_221F6FDC0(v2, v3, v5, v4);
}

uint64_t sub_221F714D8()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_221F71540(uint64_t a1, uint64_t a2)
{
  v4 = sub_221FB5C38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v26 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v28 = a2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v27 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      sub_221F157F8(v12, v9);
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_221F7175C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_221F15684(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_221F71860(unint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, void (*a6)(id *))
{
  v8 = a1;
  v24[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_221FB6828();
    sub_221E9D138(0, a3, a4);
    sub_221E9E930(a5, a3, a4);
    sub_221FB6538();
    v8 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
    v14 = v24[6];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));
  }

  v18 = (v12 + 64) >> 6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    if (!*(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20))))))
    {
LABEL_18:
      sub_221E96470();
      return;
    }

    while (1)
    {
      a6(v24);

      v13 = v21;
      v14 = v22;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_221FB6898())
      {
        sub_221E9D138(0, a3, a4);
        swift_dynamicCast();
        v21 = v13;
        v22 = v14;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_18;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_221F71A5C(uint64_t a1)
{
  v3 = sub_221FB5C38();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_221FB6868();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v51 = MEMORY[0x277D84F90];
    sub_221F77684(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = sub_221FB6818();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_221FB67E8();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_221F78B80(v48, v49, v50, a1, &qword_27CFEBB00, 0x277CCDDD0);
        v21 = v20;
        v22 = [v20 UUID];
        sub_221FB5C18();

        v23 = v46;
        v51 = v46;
        v25 = *(v46 + 16);
        v24 = *(v46 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_221F77684(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_221FB6838())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC9D8, &unk_221FBE458);
          v14 = sub_221FB6528();
          sub_221FB68B8();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_221EB9940(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_221EB9940(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_221EB9940(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
          {
            goto LABEL_34;
          }
        }
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
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_221F71E78(uint64_t a1)
{
  v28 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_221FB6868();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v33 = MEMORY[0x277D84F90];
    sub_221FB69D8();
    result = sub_221FB6818();
    v30 = result;
    v31 = v4;
    v32 = 1;
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v2 = *(a1 + 16);
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v33 = MEMORY[0x277D84F90];
    sub_221FB69D8();
    v5 = -1 << *(a1 + 32);
    v6 = sub_221FB67E8();
    v7 = *(a1 + 36);
    v30 = v6;
    v31 = v7;
    v32 = 0;
  }

  result = objc_opt_self();
  v8 = 0;
  v27 = result;
  while (v8 < v2)
  {
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_31;
    }

    v11 = v30;
    v12 = v31;
    v13 = v32;
    sub_221F78B80(v30, v31, v32, a1, &qword_27CFEBB00, 0x277CCDDD0);
    v15 = v14;
    v16 = [v27 workoutCompletionEventWithWorkout_];

    sub_221FB69B8();
    v17 = *(v33 + 16);
    sub_221FB69E8();
    sub_221FB69F8();
    result = sub_221FB69C8();
    if (v28)
    {
      if (!v13)
      {
        goto LABEL_36;
      }

      if (sub_221FB6838())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC9D8, &unk_221FBE458);
      v9 = sub_221FB6528();
      sub_221FB68B8();
      result = v9(v29, 0);
      if (v8 == v2)
      {
LABEL_28:
        sub_221EB9940(v30, v31, v32);
        return v33;
      }
    }

    else
    {
      if (v13)
      {
        goto LABEL_37;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v18 = 1 << *(a1 + 32);
      if (v11 >= v18)
      {
        goto LABEL_32;
      }

      v19 = v11 >> 6;
      v20 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v20 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v12)
      {
        goto LABEL_34;
      }

      v21 = v20 & (-2 << (v11 & 0x3F));
      if (v21)
      {
        v18 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v19 << 6;
        v23 = v19 + 1;
        v24 = (a1 + 64 + 8 * v19);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_221EB9940(v11, v12, 0);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_27;
          }
        }

        result = sub_221EB9940(v11, v12, 0);
      }

LABEL_27:
      v30 = v18;
      v31 = v12;
      v32 = 0;
      if (v8 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_221F721C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221F721E4, 0, 0);
}

uint64_t sub_221F721E4()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  v2 = off_283557C98(&type metadata for ActivityDataCoordinator, &off_283557C78);
  v0[7] = v2;
  __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  v3 = (off_283557CB8)(&type metadata for ActivityDataCoordinator, &off_283557C78);
  v0[8] = v3;
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (!*(v2 + 16))
    {
      goto LABEL_5;
    }

LABEL_7:
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v0[2] = v0[3];
    v7 = swift_task_alloc();
    v0[9] = v7;
    v7[2] = v4;
    v7[3] = v2;
    v7[4] = v6;
    v7[5] = v3;
    v7[6] = v5;
    v8 = *(MEMORY[0x277CE94E0] + 4);
    v9 = swift_task_alloc();
    v0[10] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
    v11 = sub_221EAB9F4(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660);
    *v9 = v0;
    v9[1] = sub_221F72434;

    return MEMORY[0x28213AED0](&unk_221FBE448, v7, v10, &type metadata for SecureCloudUpdate, v11);
  }

  if (sub_221FB6868())
  {
    goto LABEL_7;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (sub_221FB6868())
    {
      goto LABEL_7;
    }
  }

  else if (*(v3 + 16))
  {
    goto LABEL_7;
  }

  v12 = v0[1];
  v13 = MEMORY[0x277D84F90];

  return v12(v13);
}

void sub_221F72434(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = v4[8];
    v7 = v4[9];
    v9 = v4[7];

    v10 = *(v6 + 8);

    v10(a1);
  }
}

uint64_t sub_221F72584(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a3;
  v9 = sub_221FB5C38();
  v7[8] = v9;
  v10 = *(v9 - 8);
  v7[9] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a2;
  v7[10] = v12;
  v7[11] = v13;

  return MEMORY[0x2822009F8](sub_221F72654, 0, 0);
}

id sub_221F72654()
{
  result = [*(v0 + 88) secureCloudZoneName];
  if (result)
  {
    v2 = result;
    sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
    sub_221FB6318();

    v3 = *MEMORY[0x277CBBF28];
    sub_221FB6318();
    *(v0 + 96) = sub_221FB65D8();
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_221F72778;
    v5 = *(v0 + 88);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 24);

    return sub_221F72F8C(v7, v6, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F72778(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 104);
  v11 = *v1;
  v3[14] = a1;

  v5 = swift_task_alloc();
  v3[15] = v5;
  *v5 = v11;
  v5[1] = sub_221F72904;
  v6 = v2[11];
  v7 = v2[7];
  v8 = v2[6];
  v9 = v2[3];

  return sub_221F72F8C(v8, v7, v6);
}

uint64_t sub_221F72904(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_221F72A04, 0, 0);
}

void sub_221F72A04()
{
  v59 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  sub_221F71860(v1, v2, &qword_27CFEBB00, 0x277CCDDD0, &qword_27CFEBB08, sub_221F15AB0);
  v4 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (sub_221FB6868())
    {
      goto LABEL_3;
    }
  }

  else if (*(v3 + 16))
  {
LABEL_3:
    v5 = *(v0 + 96);
    v57 = sub_221F78E6C(v4, v5);

    v6 = sub_221F71E78(v4);

    if (v6 >> 62)
    {
      v7 = sub_221FB6868();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v58[0] = MEMORY[0x277D84F90];
      sub_221FB69D8();
      if (v7 < 0)
      {
        __break(1u);
        goto LABEL_33;
      }

      v8 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x223DACD50](v8, v6);
        }

        else
        {
          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        ++v8;
        v11 = [v9 recordWithZoneID:*(v0 + 96) recordEncryptionType:1];

        sub_221FB69B8();
        v12 = *(v58[0] + 16);
        sub_221FB69E8();
        sub_221FB69F8();
        sub_221FB69C8();
      }

      while (v7 != v8);

      v13 = v58[0];
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
    }

    v16 = *(v0 + 40);
    v17 = *(v0 + 112);
    if (v16)
    {
      v18 = sub_221F71A5C(*(v0 + 112));

      v19 = sub_221F1811C(v18);

      v20 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58[0] = v20;
      sub_221F78444(v19, v16, isUniquelyReferenced_nonNull_native);
      v22 = v20;
      v23 = *(v0 + 56);
      if (!v23)
      {
LABEL_19:
        if (qword_281307080 != -1)
        {
          swift_once();
        }

        v27 = *(v0 + 88);
        v28 = sub_221FB61D8();
        __swift_project_value_buffer(v28, qword_281307DF0);
        v29 = v27;

        v30 = sub_221FB61B8();
        v31 = sub_221FB65C8();
        v32 = os_log_type_enabled(v30, v31);
        v33 = *(v0 + 88);
        if (!v32)
        {

          goto LABEL_25;
        }

        v56 = v13;
        v34 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v58[0] = v55;
        *v34 = 136315394;
        v35 = [v33 UUID];
        v6 = *(v0 + 88);
        if (v35)
        {
          v36 = v35;
          v37 = *(v0 + 72);
          v38 = *(v0 + 80);
          v39 = *(v0 + 64);

          sub_221FB5C18();

          v40 = sub_221FB5BE8();
          v42 = v41;
          (*(v37 + 8))(v38, v39);
          v43 = sub_221EF4114(v40, v42, v58);

          *(v34 + 4) = v43;
          *(v34 + 12) = 2080;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF88, &qword_221FBE3D0);
          v44 = sub_221FB6298();
          v46 = sub_221EF4114(v44, v45, v58);

          *(v34 + 14) = v46;
          _os_log_impl(&dword_221E93000, v30, v31, "Creating workout completion update for relationship %s, identifiers %s", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DADA80](v55, -1, -1);
          MEMORY[0x223DADA80](v34, -1, -1);

          v13 = v56;
LABEL_25:
          v48 = *(v0 + 88);
          v47 = *(v0 + 96);
          v49 = *(v0 + 16);
          v58[0] = v57;
          sub_221ED4350(v13);
          v50 = v58[0];

          *v49 = v50;
          *(v49 + 8) = MEMORY[0x277D84F90];
          *(v49 + 16) = v48;
          *(v49 + 24) = v22;
          *(v49 + 32) = 0;
          *(v49 + 40) = 4;
          v51 = v48;
          goto LABEL_26;
        }

LABEL_33:
        swift_bridgeObjectRelease_n();

        __break(1u);
        return;
      }
    }

    else
    {
      v54 = *(v0 + 112);

      v22 = MEMORY[0x277D84F98];
      v23 = *(v0 + 56);
      if (!v23)
      {
        goto LABEL_19;
      }
    }

    v24 = sub_221F71A5C(*(v0 + 48));
    v25 = sub_221F1811C(v24);

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v58[0] = v22;
    sub_221F78444(v25, v23, v26);
    goto LABEL_19;
  }

  v14 = *(v0 + 112);
  v15 = *(v0 + 16);

  *(v15 + 25) = 0u;
  *v15 = 0u;
  v15[1] = 0u;
LABEL_26:
  v52 = *(v0 + 80);

  v53 = *(v0 + 8);

  v53();
}

uint64_t sub_221F72F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_221FB5C38();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F73050, 0, 0);
}

id sub_221F73050()
{
  if (v0[8])
  {
    v1 = v0[9];
    sub_221EA4AB4(v0[10] + 40, (v0 + 2));
    v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
    result = [v1 UUID];
    if (result)
    {
      v4 = result;
      v6 = v0[12];
      v5 = v0[13];
      v7 = v0[11];
      sub_221FB5C18();

      v8 = sub_221FB5BE8();
      v10 = v9;
      v0[14] = v9;
      (*(v6 + 8))(v5, v7);
      v11 = *v2;
      v12 = swift_task_alloc();
      v0[15] = v12;
      *v12 = v0;
      v12[1] = sub_221F731DC;
      v13 = v0[8];

      return sub_221EE4D8C(v8, v10, v13);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v14 = v0[13];

    v15 = v0[1];
    v16 = MEMORY[0x277D84FA0];

    return v15(v16);
  }

  return result;
}

uint64_t sub_221F731DC(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_221F732FC, 0, 0);
}

uint64_t sub_221F732FC()
{
  v1 = v0[16];
  v2 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = sub_221F79C24(v3, v1);

  v5 = v0[13];

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_221F73398(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F734A8, 0, 0);
}

uint64_t sub_221F734A8()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm(*(v0 + 32), *(*(v0 + 32) + 24));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_221F73548;

  return sub_221E9E4B0(v1);
}

uint64_t sub_221F73548(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_221F73648, 0, 0);
}

uint64_t sub_221F73648()
{
  v1 = v0[12];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[12];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_27:

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v31 = sub_221FB61D8();
    __swift_project_value_buffer(v31, qword_281307DF0);
    v32 = sub_221FB61B8();
    v33 = sub_221FB65C8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_221E93000, v32, v33, "No deleted workouts to push", v34, 2u);
      MEMORY[0x223DADA80](v34, -1, -1);
    }

    v35 = v0[10];
    v36 = v0[6];
    v37 = v0[7];
    v38 = v0[5];

    v39 = v0[1];
    v40 = MEMORY[0x277D84F90];

    return v39(v40);
  }

LABEL_26:
  v2 = sub_221FB6868();
  v3 = v0[12];
  if (!v2)
  {
    goto LABEL_27;
  }

LABEL_3:
  v4 = 0;
  v5 = v0[9];
  v47 = v1 & 0xFFFFFFFFFFFFFF8;
  v48 = v1 & 0xC000000000000001;
  v43 = v3 + 32;
  v45 = (v5 + 48);
  v46 = (v5 + 56);
  v6 = MEMORY[0x277D84F90];
  v42 = v5;
  v44 = (v5 + 32);
  do
  {
    if (v48)
    {
      v7 = MEMORY[0x223DACD50](v4, v0[12]);
      v1 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v4 >= *(v47 + 16))
      {
        goto LABEL_25;
      }

      v7 = *(v43 + 8 * v4);
      v1 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    v8 = v7;
    v9 = [v8 triggerUUID];
    if (v9)
    {
      v10 = v0[5];
      v11 = v9;
      sub_221FB5C18();

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[5];
    v16 = v0[6];
    (*v46)(v15, v12, 1, v13);
    sub_221EB994C(v15, v16);
    sub_221EB994C(v16, v14);

    if ((*v45)(v14, 1, v13) == 1)
    {
      sub_221E9CFE8(v0[7], &qword_27CFEBD50, &unk_221FB9FB0);
    }

    else
    {
      v17 = *v44;
      (*v44)(v0[10], v0[7], v0[8]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_221EF3954(0, *(v6 + 2) + 1, 1, v6);
      }

      v19 = *(v6 + 2);
      v18 = *(v6 + 3);
      if (v19 >= v18 >> 1)
      {
        v6 = sub_221EF3954(v18 > 1, v19 + 1, 1, v6);
      }

      v20 = v0[10];
      v21 = v0[8];
      *(v6 + 2) = v19 + 1;
      v17(&v6[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v19], v20, v21);
    }

    ++v4;
  }

  while (v1 != v2);
  v22 = v0[12];
  v24 = v0[3];
  v23 = v0[4];
  v25 = sub_221F1811C(v6);
  v0[13] = v25;

  v0[2] = v24;
  v26 = swift_task_alloc();
  v0[14] = v26;
  v26[2] = v23;
  v26[3] = v22;
  v26[4] = v25;
  v27 = *(MEMORY[0x277CE94E0] + 4);
  v28 = swift_task_alloc();
  v0[15] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
  v30 = sub_221EAB9F4(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660);
  *v28 = v0;
  v28[1] = sub_221F73B08;

  return MEMORY[0x28213AED0](&unk_221FBE430, v26, v29, &type metadata for SecureCloudUpdate, v30);
}

void sub_221F73B08(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v8 = v4[13];
    v7 = v4[14];
    v9 = v4[12];

    v10 = v4[10];
    v12 = v4[6];
    v11 = v4[7];
    v13 = v4[5];

    v14 = *(v6 + 8);

    v14(a1);
  }
}

uint64_t sub_221F73C7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a1;
  v5[8] = a3;
  v7 = sub_221FB5C38();
  v5[11] = v7;
  v8 = *(v7 - 8);
  v5[12] = v8;
  v9 = *(v8 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a2;
  v5[17] = v10;
  v5[18] = v11;

  return MEMORY[0x2822009F8](sub_221F73D78, 0, 0);
}

uint64_t sub_221F73D78()
{
  v1 = [*(v0 + 144) secureCloudZoneName];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v1;
  v5 = *(v0 + 144);
  v6 = *(v0 + 64);
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  sub_221FB6318();

  v7 = *MEMORY[0x277CBBF28];
  sub_221FB6318();
  *(v0 + 152) = sub_221FB65D8();
  sub_221EA4AB4(v6 + 80, v0 + 16);
  v8 = __swift_project_boxed_opaque_existential_0Tm((v0 + 16), *(v0 + 40));
  v1 = [v5 UUID];
  if (!v1)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v9 = v1;
  v10 = *(v0 + 136);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  sub_221FB5C18();

  *(v0 + 160) = sub_221FB5BE8();
  *(v0 + 168) = v13;
  v14 = *(v12 + 8);
  *(v0 + 176) = v14;
  *(v0 + 184) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v10, v11);
  v2 = *v8;
  *(v0 + 192) = *v8;
  v1 = sub_221F73EF8;
  v3 = 0;

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_221F73EF8()
{
  v1 = v0[24];
  v0[25] = sub_221ECB7DC(v0[20], v0[21]);

  return MEMORY[0x2822009F8](sub_221F73F74, 0, 0);
}

void sub_221F73F74()
{
  v126 = v0;
  v1 = v0;
  v2 = v0[9];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v125 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_80;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221FB6868())
  {
    v124 = v1;
    if (i)
    {
      v4 = 0;
      if (v1[25])
      {
        v5 = v1[25];
      }

      else
      {
        v5 = MEMORY[0x277D84FA0];
      }

      v111 = v2 & 0xFFFFFFFFFFFFFF8;
      v112 = v2 & 0xC000000000000001;
      v109 = i;
      v110 = v1[9] + 32;
      v6 = v5;
      v108 = v1[12];
      v121 = v5 + 56;
      while (1)
      {
        if (v112)
        {
          v7 = MEMORY[0x223DACD50](v4, v1[9]);
        }

        else
        {
          if (v4 >= *(v111 + 16))
          {
            goto LABEL_77;
          }

          v7 = *(v110 + 8 * v4);
        }

        v2 = v7;
        if (__OFADD__(v4++, 1))
        {
          break;
        }

        v9 = [v7 triggerUUID];
        if (v9)
        {
          v113 = v2;
          v116 = v4;
          v10 = v1[16];
          v11 = v9;
          sub_221FB5C18();

          if (*(v6 + 16) && (v12 = v124[16], v13 = v124[11], v14 = *(v6 + 40), sub_221F182A4(&qword_27CFEC2C8), v15 = sub_221FB62A8(), v16 = -1 << *(v6 + 32), v17 = v15 & ~v16, ((*(v121 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
          {
            v18 = ~v16;
            v19 = *(v108 + 72);
            v20 = *(v108 + 16);
            while (1)
            {
              v21 = v124[22];
              v22 = v124[23];
              v23 = v124[15];
              v24 = v124[11];
              v20(v23, *(v6 + 48) + v17 * v19, v24);
              sub_221F182A4(&qword_27CFEC260);
              v25 = sub_221FB62D8();
              v21(v23, v24);
              if (v25)
              {
                break;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v121 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            v1 = v124;
            v29 = v124[22];
            v28 = v124[23];
            v2 = v124[16];
            v30 = v124[11];

            v29(v2, v30);
          }

          else
          {
LABEL_19:
            v1 = v124;
            v26 = v124[23];
            (v124[22])(v124[16], v124[11]);
            sub_221FB69B8();
            v27 = *(v125 + 16);
            sub_221FB69E8();
            sub_221FB69F8();
            v2 = &v125;
            sub_221FB69C8();
          }

          i = v109;
          v4 = v116;
          if (v116 == v109)
          {
LABEL_24:
            v31 = v125;
            v32 = MEMORY[0x277D84F90];
            goto LABEL_26;
          }
        }

        else
        {

          if (v4 == i)
          {
            goto LABEL_24;
          }
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v31 = MEMORY[0x277D84F90];
    v32 = MEMORY[0x277D84F90];
LABEL_26:
    if (v1[25])
    {
      v33 = v1[25];
    }

    v125 = v32;
    v2 = v31 < 0 || (v31 >> 62) & 1;
    v34 = v2 == 1 ? sub_221FB6868() : *(v31 + 16);
    v35 = v31 & 0xC000000000000001;
    v36 = MEMORY[0x277D84F90];
    if (!v34)
    {
      break;
    }

    v37 = 0;
    v119 = v31 & 0xC000000000000001;
    v114 = v2;
LABEL_35:
    v117 = v36;
    v38 = v37;
    while (1)
    {
      if (v35)
      {
        v39 = MEMORY[0x223DACD50](v38, v31);
      }

      else
      {
        if (v38 >= *(v31 + 16))
        {
          goto LABEL_79;
        }

        v39 = *(v31 + 8 * v38 + 32);
      }

      v40 = v39;
      v37 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      v41 = [v39 triggerUUID];
      if (v41)
      {
        v122 = v1[23];
        v42 = v31;
        v43 = v1[22];
        v44 = v1[19];
        v2 = v1[14];
        v45 = v34;
        v46 = v1[11];
        v47 = v41;
        sub_221FB5C18();

        v48 = sub_221FB5BF8();
        v49 = ASWorkoutRecordIDForUUID();

        v1 = v124;
        v50 = v46;
        v34 = v45;
        v51 = v43(v2, v50);
        v35 = v119;
        v31 = v42;
        if (v49)
        {
          MEMORY[0x223DAC7E0](v51);
          if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v52 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_221FB6458();
          }

          sub_221FB6478();
          v36 = v125;
          v2 = v114;
          if (v37 != v34)
          {
            goto LABEL_35;
          }

          goto LABEL_51;
        }
      }

      else
      {
      }

      ++v38;
      if (v37 == v34)
      {
        v36 = v117;
        LODWORD(v2) = v114;
        goto LABEL_51;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    if (v1[9] < 0)
    {
      v95 = v1[9];
    }
  }

LABEL_51:
  if (v2)
  {
    v53 = sub_221FB6868();
    if (!v53)
    {
      goto LABEL_53;
    }

LABEL_55:
    v125 = MEMORY[0x277D84F90];
    sub_221FB69D8();
    if ((v53 & 0x8000000000000000) == 0)
    {
      v54 = 0;
      do
      {
        if (v35)
        {
          v55 = MEMORY[0x223DACD50](v54, v31);
        }

        else
        {
          v55 = *(v31 + 8 * v54 + 32);
        }

        v56 = v55;
        ++v54;
        v57 = [v55 recordWithZoneID:v1[19] recordEncryptionType:{1, v108}];

        sub_221FB69B8();
        v58 = *(v125 + 16);
        sub_221FB69E8();
        sub_221FB69F8();
        sub_221FB69C8();
      }

      while (v53 != v54);

      v35 = v125;
      goto LABEL_62;
    }

    __break(1u);
LABEL_87:
    if (!sub_221FB6868())
    {
      goto LABEL_88;
    }

    goto LABEL_66;
  }

  v53 = *(v31 + 16);
  if (v53)
  {
    goto LABEL_55;
  }

LABEL_53:

  v35 = MEMORY[0x277D84F90];
LABEL_62:
  if (v36 >> 62)
  {
    if (sub_221FB6868())
    {
      goto LABEL_66;
    }
  }

  else if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_66;
  }

  if (v35 >> 62)
  {
    goto LABEL_87;
  }

  if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_88:

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v96 = v1[18];
    v97 = sub_221FB61D8();
    __swift_project_value_buffer(v97, qword_281307DF0);
    v98 = v96;
    v99 = sub_221FB61B8();
    v100 = sub_221FB65C8();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = v1[18];
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v102 = 138412290;
      *(v102 + 4) = v101;
      *v103 = v101;
      v104 = v101;
      _os_log_impl(&dword_221E93000, v99, v100, "No new deleted workouts to push for relationship: %@", v102, 0xCu);
      sub_221E9CFE8(v103, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v103, -1, -1);
      MEMORY[0x223DADA80](v102, -1, -1);
    }

    v105 = v1[7];

    *(v105 + 25) = 0u;
    *v105 = 0u;
    v105[1] = 0u;
LABEL_73:
    v90 = v1[16];
    v89 = v1[17];
    v92 = v1[14];
    v91 = v1[15];
    v93 = v1[13];

    v94 = v1[1];

    v94();
    return;
  }

LABEL_66:
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v59 = v1[18];
  v60 = v1[10];
  v61 = sub_221FB61D8();
  __swift_project_value_buffer(v61, qword_281307DF0);
  v62 = v59;

  v63 = sub_221FB61B8();
  v64 = sub_221FB65C8();
  if (!os_log_type_enabled(v63, v64))
  {
    v83 = v1[18];
    v84 = v1[10];

LABEL_72:
    v85 = v1[18];
    v86 = v1[10];
    v87 = v1[7];
    *v87 = v35;
    *(v87 + 8) = v36;
    *(v87 + 16) = v85;
    *(v87 + 24) = v86;
    *(v87 + 32) = 0;
    *(v87 + 40) = 5;
    v88 = v85;

    goto LABEL_73;
  }

  v123 = v64;
  v118 = v36;
  v65 = v1[18];
  v66 = swift_slowAlloc();
  v120 = swift_slowAlloc();
  v125 = v120;
  *v66 = 136315394;
  v67 = [v65 UUID];
  if (v67)
  {
    v68 = v67;
    v70 = v1[22];
    v69 = v1[23];
    v71 = v1[18];
    v115 = v1[19];
    v72 = v124[13];
    v73 = v124[11];
    v74 = v124[10];

    sub_221FB5C18();

    v75 = sub_221FB5BE8();
    v77 = v76;
    v78 = v72;
    v1 = v124;
    v70(v78, v73);
    v79 = sub_221EF4114(v75, v77, &v125);

    *(v66 + 4) = v79;
    *(v66 + 12) = 2080;
    sub_221F182A4(&qword_27CFEC2C8);
    v80 = sub_221FB6508();
    v82 = sub_221EF4114(v80, v81, &v125);

    *(v66 + 14) = v82;
    _os_log_impl(&dword_221E93000, v63, v123, "Creating workout deletion update for relationship %s, identifiers %s", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v120, -1, -1);
    MEMORY[0x223DADA80](v66, -1, -1);

    v36 = v118;
    goto LABEL_72;
  }

  v106 = v1[18];
  v107 = v1[10];

  __break(1u);
}

uint64_t sub_221F749C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  v4 = sub_221FB5C38();
  *(v2 + 64) = v4;
  v5 = *(v4 - 8);
  *(v2 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = *a1;
  *(v2 + 120) = *(a1 + 16);
  *(v2 + 128) = *(a1 + 24);
  *(v2 + 208) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_221F74AC4, 0, 0);
}

uint64_t sub_221F74AC4()
{
  if (*(v0 + 208) == 4)
  {
    v1 = *(v0 + 128);
    v2 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 56) + 40), *(*(v0 + 56) + 64));
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    *v3 = v0;
    v3[1] = sub_221F74BCC;
    v4 = *(v0 + 120);

    return sub_221EE4E64(v1, v4);
  }

  else
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_221F74BCC()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_221F74DE0;
  }

  else
  {
    v3 = sub_221F74CE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F74CE0()
{
  v1 = v0[15];
  sub_221EA4AB4(v0[7] + 40, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v3 = [v1 UUID];
  if (v3)
  {
    v6 = v3;
    v7 = v0[12];
    v8 = v0[8];
    v9 = v0[9];
    sub_221FB5C18();

    v0[20] = sub_221FB5BE8();
    v0[21] = v10;
    v11 = *(v9 + 8);
    v0[22] = v11;
    v0[23] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v8);
    v4 = *v2;
    v0[24] = *v2;
    v3 = sub_221F7517C;
    v5 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_221F74DE0()
{
  v48 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = sub_221FB61D8();
  __swift_project_value_buffer(v6, qword_281307DF0);
  sub_221ED4904(v1, v2, 4u);
  sub_221ED4904(v1, v2, 4u);

  v7 = v4;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65C8();
  if (os_log_type_enabled(v8, v9))
  {
    v45 = v9;
    log = v8;
    v10 = *(v0 + 120);
    v11 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v11 = 136315394;
    v12 = [v10 UUID];
    if (!v12)
    {
      v38 = *(v0 + 128);
      v39 = *(v0 + 136);
      v40 = *(v0 + 112);
      v41 = *(v0 + 120);
      v42 = *(v0 + 104);
      sub_221ED4948(v38, v39, 4u);

      sub_221ED4948(v38, v39, 4u);
      __break(1u);
      return;
    }

    v13 = v12;
    v43 = *(v0 + 152);
    v14 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);
    v18 = *(v0 + 104);
    v19 = *(v0 + 72);
    v20 = *(v0 + 80);
    v21 = *(v0 + 64);

    sub_221ED4948(v14, v15, 4u);
    sub_221ED4948(v14, v15, 4u);
    sub_221FB5C18();

    v22 = sub_221FB5BE8();
    v24 = v23;
    (*(v19 + 8))(v20, v21);
    v25 = sub_221EF4114(v22, v24, &v47);

    *(v11 + 4) = v25;
    *(v11 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF88, &qword_221FBE3D0);
    v26 = sub_221FB6298();
    v28 = sub_221EF4114(v26, v27, &v47);

    *(v11 + 14) = v28;
    _os_log_impl(&dword_221E93000, log, v45, "Failed to store workout update: relationship %s, identifiers %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v44, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  else
  {
    v30 = *(v0 + 128);
    v29 = *(v0 + 136);
    v32 = *(v0 + 112);
    v31 = *(v0 + 120);
    v33 = *(v0 + 104);

    sub_221ED4948(v30, v29, 4u);
    sub_221ED4948(v30, v29, 4u);
  }

  v35 = *(v0 + 88);
  v34 = *(v0 + 96);
  v36 = *(v0 + 80);

  v37 = *(v0 + 8);

  v37();
}

uint64_t sub_221F7517C()
{
  v1 = v0[24];
  v2 = sub_221ECB494(v0[20], v0[21]);

  if (!v2)
  {
    v2 = sub_221ED82C0(MEMORY[0x277D84F90]);
  }

  v0[25] = v2;

  return MEMORY[0x2822009F8](sub_221F75210, 0, 0);
}

uint64_t sub_221F75210()
{
  v46 = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = sub_221FB61D8();
  __swift_project_value_buffer(v7, qword_281307DF0);
  sub_221ED4904(v3, v2, 4u);

  v8 = v5;

  v9 = sub_221FB61B8();
  v10 = sub_221FB65C8();
  if (os_log_type_enabled(v9, v10))
  {
    v44 = v10;
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 104);
    v14 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v14 = 136315394;
    v15 = [v11 UUID];

    v16 = *(v0 + 200);
    if (!v15)
    {
      v42 = v0 + 128;
      v41 = *(v0 + 128);
      v40 = *(v42 + 8);

      sub_221ED4948(v41, v40, 4u);

      __break(1u);
      return result;
    }

    v17 = *(v0 + 176);
    v18 = *(v0 + 184);
    v19 = *(v0 + 88);
    v20 = *(v0 + 64);
    sub_221ED4948(*(v0 + 128), *(v0 + 136), 4u);

    sub_221FB5C18();

    v21 = sub_221FB5BE8();
    v23 = v22;
    v17(v19, v20);
    v24 = sub_221EF4114(v21, v23, &v45);

    *(v14 + 4) = v24;
    *(v14 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF88, &qword_221FBE3D0);
    v25 = sub_221FB6298();
    v27 = v26;

    v28 = sub_221EF4114(v25, v27, &v45);

    *(v14 + 14) = v28;
    _os_log_impl(&dword_221E93000, v9, v44, "Updated workout completions for relationship %s, identifiers %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v43, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {
    v29 = *(v0 + 200);
    v31 = *(v0 + 128);
    v30 = *(v0 + 136);
    v32 = *(v0 + 112);
    v33 = *(v0 + 120);
    v34 = *(v0 + 104);

    sub_221ED4948(v31, v30, 4u);
    swift_bridgeObjectRelease_n();
  }

  v36 = *(v0 + 88);
  v35 = *(v0 + 96);
  v37 = *(v0 + 80);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_221F75578(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  v4 = sub_221FB5C38();
  *(v2 + 64) = v4;
  v5 = *(v4 - 8);
  *(v2 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = *a1;
  *(v2 + 128) = *(a1 + 16);
  *(v2 + 136) = *(a1 + 24);
  *(v2 + 232) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_221F75680, 0, 0);
}

uint64_t sub_221F75680()
{
  if (*(v0 + 232) == 5)
  {
    v1 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 56) + 80), *(*(v0 + 56) + 104));
    v2 = *v1;
    *(v0 + 152) = *v1;

    return MEMORY[0x2822009F8](sub_221F75764, v2, 0);
  }

  else
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);

    v7 = *(v0 + 8);

    return v7();
  }
}

id sub_221F75764()
{
  result = [*(v0 + 128) UUID];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 136);
    v4 = *(v0 + 104);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    sub_221FB5C18();

    v7 = sub_221FB5BE8();
    v9 = v8;
    *(v0 + 160) = v8;
    v10 = *(v6 + 8);
    *(v0 + 168) = v10;
    *(v0 + 176) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v5);
    v11 = swift_task_alloc();
    *(v0 + 184) = v11;
    *v11 = v0;
    v11[1] = sub_221F758A0;
    v12 = *(v0 + 152);

    return sub_221ED0B98(v3, v7, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F758A0()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 160);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = *(v2 + 152);
    v6 = sub_221F75ACC;
  }

  else
  {
    v6 = sub_221F759E0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_221F759E0()
{
  v1 = v0[16];
  sub_221EA4AB4(v0[7] + 80, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v3 = [v1 UUID];
  if (v3)
  {
    v6 = v3;
    v8 = v0[21];
    v7 = v0[22];
    v9 = v0[12];
    v10 = v0[8];
    sub_221FB5C18();

    v0[25] = sub_221FB5BE8();
    v0[26] = v11;
    v8(v9, v10);
    v4 = *v2;
    v0[27] = *v2;
    v3 = sub_221F75E84;
    v5 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_221F75AE8()
{
  v49 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  v6 = sub_221FB61D8();
  __swift_project_value_buffer(v6, qword_281307DF0);
  sub_221ED4904(v1, v2, 5u);
  sub_221ED4904(v1, v2, 5u);

  v7 = v4;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65C8();
  if (os_log_type_enabled(v8, v9))
  {
    v47 = v9;
    v10 = *(v0 + 128);
    v11 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v48 = v46;
    *v11 = 136315394;
    v12 = [v10 UUID];
    if (!v12)
    {
      v38 = *(v0 + 136);
      v39 = *(v0 + 144);
      v40 = *(v0 + 120);
      v41 = *(v0 + 128);
      v42 = *(v0 + 112);
      sub_221ED4948(v38, v39, 5u);

      sub_221ED4948(v38, v39, 5u);
      __break(1u);
      return;
    }

    v13 = v12;
    v44 = *(v0 + 176);
    v45 = *(v0 + 192);
    v43 = *(v0 + 168);
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 112);
    v19 = *(v0 + 80);
    v20 = *(v0 + 64);

    sub_221ED4948(v14, v15, 5u);
    sub_221ED4948(v14, v15, 5u);
    sub_221FB5C18();

    v21 = sub_221FB5BE8();
    v23 = v22;
    v43(v19, v20);
    v24 = sub_221EF4114(v21, v23, &v48);

    *(v11 + 4) = v24;
    *(v11 + 12) = 2080;
    sub_221F182A4(&qword_27CFEC2C8);
    v25 = sub_221FB6508();
    v27 = sub_221EF4114(v25, v26, &v48);

    *(v11 + 14) = v27;
    _os_log_impl(&dword_221E93000, v8, v47, "Failed to store workout deletion: relationship %s, identifiers %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v46, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  else
  {
    v29 = *(v0 + 136);
    v28 = *(v0 + 144);
    v30 = *(v0 + 120);
    v31 = *(v0 + 128);
    v32 = *(v0 + 112);

    sub_221ED4948(v29, v28, 5u);
    sub_221ED4948(v29, v28, 5u);
  }

  v34 = *(v0 + 96);
  v33 = *(v0 + 104);
  v36 = *(v0 + 80);
  v35 = *(v0 + 88);

  v37 = *(v0 + 8);

  v37();
}

uint64_t sub_221F75E84()
{
  v1 = v0[27];
  v0[28] = sub_221ECB7DC(v0[25], v0[26]);

  return MEMORY[0x2822009F8](sub_221F75F00, 0, 0);
}

uint64_t sub_221F75F00()
{
  v47 = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  if (*(v0 + 224))
  {
    v6 = *(v0 + 224);
  }

  v7 = sub_221FB61D8();
  __swift_project_value_buffer(v7, qword_281307DF0);
  sub_221ED4904(v1, v2, 5u);

  v8 = v4;

  v9 = sub_221FB61B8();
  v10 = sub_221FB65C8();
  if (os_log_type_enabled(v9, v10))
  {
    v45 = v10;
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 112);
    v14 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v14 = 136315394;
    v15 = [v11 UUID];

    if (!v15)
    {
      v43 = v0 + 136;
      v42 = *(v0 + 136);
      v41 = *(v43 + 8);

      sub_221ED4948(v42, v41, 5u);

      __break(1u);
      return result;
    }

    v16 = *(v0 + 168);
    v17 = *(v0 + 176);
    v18 = *(v0 + 88);
    if (*(v0 + 224))
    {
      v19 = *(v0 + 224);
    }

    v20 = *(v0 + 64);
    sub_221ED4948(*(v0 + 136), *(v0 + 144), 5u);

    sub_221FB5C18();

    v21 = sub_221FB5BE8();
    v23 = v22;
    v16(v18, v20);
    v24 = sub_221EF4114(v21, v23, &v46);

    *(v14 + 4) = v24;
    *(v14 + 12) = 2080;
    sub_221F182A4(&qword_27CFEC2C8);
    v25 = sub_221FB6508();
    v27 = v26;

    v28 = sub_221EF4114(v25, v27, &v46);

    *(v14 + 14) = v28;
    _os_log_impl(&dword_221E93000, v9, v45, "Updated workout deletions for relationship %s, identifiers %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v44, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {
    v29 = *(v0 + 224);
    v31 = *(v0 + 136);
    v30 = *(v0 + 144);
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v34 = *(v0 + 112);

    sub_221ED4948(v31, v30, 5u);
    swift_bridgeObjectRelease_n();
  }

  v36 = *(v0 + 96);
  v35 = *(v0 + 104);
  v38 = *(v0 + 80);
  v37 = *(v0 + 88);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_221F76298(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221F762B8, 0, 0);
}

uint64_t sub_221F762B8()
{
  v1 = v0[3];
  v2 = [*__swift_project_boxed_opaque_existential_0Tm(v1 v1[3])];
  v3 = [v2 snapshotIndex];

  v4 = [*__swift_project_boxed_opaque_existential_0Tm(v1 v1[3])];
  v5 = [v4 snapshotIndex];

  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_221F763D4;
  v7 = v0[2];
  v8 = v0[3];

  return sub_221F721C0(v7, v3, v5);
}

uint64_t sub_221F763D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v9 = *v1;
  *(v3 + 40) = a1;

  v5 = swift_task_alloc();
  *(v3 + 48) = v5;
  *v5 = v9;
  v5[1] = sub_221F76538;
  v6 = *(v2 + 24);
  v7 = *(v2 + 16);

  return sub_221F73398(v7);
}

uint64_t sub_221F76538(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_221F76638, 0, 0);
}

uint64_t sub_221F76638()
{
  v3 = v0[5];
  sub_221ED43FC(v0[7]);
  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_221F766AC(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_221F766CC, 0, 0);
}

uint64_t sub_221F766CC()
{
  v1 = v0[5];
  v0[2] = v0[4];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277CE94D8] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE40, &qword_221FBD750);
  v0[8] = v5;
  v6 = sub_221EAB9F4(&qword_27CFEBE48, &qword_27CFEBE40, &qword_221FBD750);
  v0[9] = v6;
  *v4 = v0;
  v4[1] = sub_221F767EC;

  return MEMORY[0x28213AEC8](&unk_221FBE3E8, v2, v5, v6);
}

void sub_221F767EC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 48);

    MEMORY[0x2822009F8](sub_221F76928, 0, 0);
  }
}

uint64_t sub_221F76928()
{
  v1 = v0[5];
  v0[3] = v0[4];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277CE94D8] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_221ECA6B0;
  v5 = v0[8];
  v6 = v0[9];

  return MEMORY[0x28213AEC8](&unk_221FBE400, v2, v5, v6);
}

void sub_221F769FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 48);
    do
    {
      v3 = *(v2 + 24);
      v4 = *v2;
      v5 = *(v2 - 1);
      v6 = v4;
      v7 = *(v2 + 1);
      v8 = v3;
      sub_221F76A6C(&v5);
      v2 += 6;
      --v1;
    }

    while (v1);
  }
}

void sub_221F76A6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  if (v6 == 5)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v18 = sub_221FB61D8();
    __swift_project_value_buffer(v18, qword_281307DF0);
    sub_221ED4904(v3, v5, 5u);

    v19 = v4;
    v9 = sub_221FB61B8();
    v20 = sub_221FB65A8();

    sub_221ED4948(v3, v5, 5u);
    if (os_log_type_enabled(v9, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v21 = 138412546;
      *(v21 + 4) = v19;
      *v22 = v19;
      *(v21 + 12) = 2080;
      sub_221FB5C38();
      sub_221F182A4(&qword_27CFEC2C8);
      v24 = v19;
      v25 = sub_221FB6508();
      v27 = sub_221EF4114(v25, v26, &v28);

      *(v21 + 14) = v27;
      _os_log_impl(&dword_221E93000, v9, v20, "Failed to update workout deletions: relationship %@, identifiers %s", v21, 0x16u);
      sub_221E9CFE8(v22, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x223DADA80](v23, -1, -1);
      MEMORY[0x223DADA80](v21, -1, -1);
    }
  }

  else
  {
    if (v6 != 4)
    {
      return;
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    sub_221ED4904(v3, v5, 4u);

    v8 = v4;
    v9 = sub_221FB61B8();
    v10 = sub_221FB65A8();

    sub_221ED4948(v3, v5, 4u);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v11 = 138412546;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2080;
      v14 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF88, &qword_221FBE3D0);
      v15 = sub_221FB6298();
      v17 = sub_221EF4114(v15, v16, &v28);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_221E93000, v9, v10, "Failed to update workouts: relationship %@, identifiers %s", v11, 0x16u);
      sub_221E9CFE8(v12, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v11, -1, -1);
    }
  }
}

uint64_t sub_221F76EAC()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 40), *(*(v0 + 16) + 64));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_221F76F60;

  return sub_221ECC030();
}

uint64_t sub_221F76F60()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221F7705C, 0, 0);
}

uint64_t sub_221F7705C()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 80), *(*(v0 + 16) + 104));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_221ECAE18;

  return sub_221ECC388();
}

uint64_t sub_221F77110(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221ECAFA0;

  return sub_221F76298(a1);
}

uint64_t sub_221F771A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9544C;

  return sub_221F766AC(a1);
}

uint64_t sub_221F77250(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F749C8(a1, v4);
}

uint64_t sub_221F772EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F75578(a1, v4);
}

unint64_t *sub_221F77388(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_221F79338(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_221F77438(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_221FB6948();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_221FB6748();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_221F77624(char *a1, int64_t a2, char a3)
{
  result = sub_221F776E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_221F77644(char *a1, int64_t a2, char a3)
{
  result = sub_221F77800(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_221F77664(void *a1, int64_t a2, char a3)
{
  result = sub_221F7790C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_221F77684(size_t a1, int64_t a2, char a3)
{
  result = sub_221F77B44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_221F776A4(size_t a1, int64_t a2, char a3)
{
  result = sub_221F77D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_221F776C4(char *a1, int64_t a2, char a3)
{
  result = sub_221F77F0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_221F776E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1E8, &unk_221FBAD80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_221F77800(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_221F7790C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC9F0, &unk_221FBE480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD70, &unk_221FB9550);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_221F77A40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB38, &qword_221FB8A00);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_221F77B44(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1F0, &qword_221FBAD90);
  v10 = *(sub_221FB5C38() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_221FB5C38() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_221F77D1C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC9E8, &qword_221FBE478);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_221F77F0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC9E0, &unk_221FBE468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_221F78008(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_221ED4B5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_221ED5174(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_221ED4B5C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_221FB6B98();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_221ED6B78();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_221F78180(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_221ED4C18(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_221ED5418(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_221ED4C18(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
        sub_221FB6B98();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_221ED6CE4();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return MEMORY[0x2821F9840]();
}

_OWORD *sub_221F782F8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_221ED4BD4(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_221ED70F8();
      goto LABEL_7;
    }

    sub_221ED5B84(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_221ED4BD4(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_221EC5220(a2, v22);
      return sub_221F78A2C(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_221FB6B98();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_221EC45F0(a1, v17);
}

unint64_t sub_221F78444(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_221ED4C68(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_221ED5E3C(v14, a3 & 1);
      v18 = *v4;
      result = sub_221ED4C68(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_221FB6B98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_221ED729C();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_221F78590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_221ED4B5C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_221ED6354(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_221ED4B5C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_221FB6B98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_221ED7588();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_221F78718(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_221ED4B5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_221ED660C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_221ED4B5C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_221FB6B98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_221ED7708();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_221F78894(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_221ED4B5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_221ED771C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_221ED6620(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_221ED4B5C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_221FB6B98();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_221EC45F0(a1, v23);
  }

  else
  {
    sub_221F78AEC(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_221F789E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_221F78A2C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_221EC45F0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_221F78AA8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_221F78AEC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_221EC45F0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_221F78B80(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x223DACC50](a1, a2, v11);
      sub_221E9D138(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_221E9D138(0, a5, a6);
    if (sub_221FB6848() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_221FB6858();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_221FB6748();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_221FB6758();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_221F78D98(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_221F78DEC(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_221F15684(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_221F78E6C(uint64_t a1, uint64_t a2)
{
  v27 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_221FB6868();
    result = MEMORY[0x277D84F90];
    if (!v3)
    {
      return result;
    }

    v33 = MEMORY[0x277D84F90];
    sub_221FB69D8();
    result = sub_221FB6818();
    v30 = result;
    v31 = v5;
    v32 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v3)
  {
    return result;
  }

  v33 = MEMORY[0x277D84F90];
  sub_221FB69D8();
  v6 = -1 << *(a1 + 32);
  result = sub_221FB67E8();
  v7 = *(a1 + 36);
  v30 = result;
  v31 = v7;
  v32 = 0;
LABEL_7:
  v8 = 0;
  while (v8 < v3)
  {
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_31;
    }

    v11 = v30;
    v12 = v31;
    v13 = v32;
    sub_221F78B80(v30, v31, v32, a1, &qword_27CFEBB00, 0x277CCDDD0);
    v15 = v14;
    v16 = [v14 recordWithZoneID:a2 recordEncryptionType:1];

    sub_221FB69B8();
    v17 = *(v33 + 16);
    sub_221FB69E8();
    sub_221FB69F8();
    result = sub_221FB69C8();
    if (v27)
    {
      if (!v13)
      {
        goto LABEL_35;
      }

      if (sub_221FB6838())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC9D8, &unk_221FBE458);
      v9 = sub_221FB6528();
      sub_221FB68B8();
      result = v9(v29, 0);
      if (v8 == v3)
      {
LABEL_28:
        sub_221EB9940(v30, v31, v32);
        return v33;
      }
    }

    else
    {
      if (v13)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v18 = 1 << *(a1 + 32);
      if (v11 >= v18)
      {
        goto LABEL_32;
      }

      v19 = v11 >> 6;
      v20 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v20 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v12)
      {
        goto LABEL_34;
      }

      v21 = v20 & (-2 << (v11 & 0x3F));
      if (v21)
      {
        v18 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v19 << 6;
        v23 = v19 + 1;
        v24 = (a1 + 64 + 8 * v19);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_221EB9940(v11, v12, 0);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_27;
          }
        }

        result = sub_221EB9940(v11, v12, 0);
      }

LABEL_27:
      v30 = v18;
      v31 = v12;
      v32 = 0;
      if (v8 == v3)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_221F7919C(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E9544C;

  return sub_221F73C7C(a1, a2, v6, v7, v8);
}

uint64_t sub_221F79260(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_221E963B4;

  return sub_221F72584(a1, a2, v6, v7, v8, v9, v10);
}

void sub_221F79338(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v42 = a1;
  v6 = sub_221FB5C38();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v45 = a3;
  v46 = 0;
  v13 = 0;
  v14 = *(a3 + 56);
  v41 = a3 + 56;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v54 = a4 + 56;
  v55 = a4;
  v52 = v10 + 16;
  v43 = v18;
  v44 = v10;
  v56 = (v10 + 8);
LABEL_6:
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_13:
    v22 = v19 | (v13 << 6);
    v23 = *(v45 + 48);
    v48 = v22;
    v51 = *(v23 + 8 * v22);
    v24 = [v51 UUID];
    sub_221FB5C18();

    v25 = *(a4 + 16);
    v47 = v56 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v25 && (v26 = *(a4 + 40), sub_221F182A4(&qword_27CFEC2C8), v27 = sub_221FB62A8(), v28 = -1 << *(a4 + 32), v29 = v27 & ~v28, ((*(v54 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
    {
      v49 = v17;
      v50 = v13;
      v30 = v12;
      v31 = ~v28;
      v32 = *(v44 + 72);
      v33 = *(v44 + 16);
      do
      {
        v34 = v53;
        v33(v53, *(v55 + 48) + v32 * v29, v6);
        sub_221F182A4(&qword_27CFEC260);
        v35 = sub_221FB62D8();
        v36 = *v56;
        (*v56)(v34, v6);
        if (v35)
        {
          v12 = v30;
          v36(v30, v6);

          a4 = v55;
          v17 = v49;
          v13 = v50;
          v18 = v43;
          goto LABEL_6;
        }

        v29 = (v29 + 1) & v31;
      }

      while (((*(v54 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
      a4 = v55;
      v12 = v30;
      v17 = v49;
      v13 = v50;
      v18 = v43;
      v36(v12, v6);
    }

    else
    {
      (*v56)(v12, v6);
    }

    *(v42 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    if (__OFADD__(v46++, 1))
    {
      goto LABEL_25;
    }
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
      v38 = v45;

      sub_221F77438(v42, v40, v46, v38, &qword_27CFEC2D8, &qword_221FBB760);
      return;
    }

    v21 = *(v41 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_221F79710(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = *MEMORY[0x277D85DE8];
  v6 = sub_221FB5C38();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v59 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v44 - v11;
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;

  if (v13 > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v45 = v14;
    v46 = v3;
    v44 = &v44;
    MEMORY[0x28223BE20](v16);
    v48 = &v44 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v48, v15);
    v52 = 0;
    v3 = 0;
    v17 = *(a1 + 56);
    v47 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = v18 < 64 ? ~(-1 << v18) : -1;
    v20 = v19 & v17;
    v14 = (v18 + 63) >> 6;
    v60 = a2 + 56;
    v58 = v7 + 2;
    v62 = (v7 + 1);
    v15 = v61;
    v50 = a1;
    v51 = v7;
    v49 = v14;
LABEL_7:
    while (v20)
    {
      v21 = __clz(__rbit64(v20));
      v57 = (v20 - 1) & v20;
LABEL_14:
      v24 = v21 | (v3 << 6);
      v25 = *(a1 + 48);
      v54 = v24;
      v56 = *(v25 + 8 * v24);
      v26 = [v56 UUID];
      sub_221FB5C18();

      v27 = *(a2 + 16);
      v53 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v27 && (v28 = *(a2 + 40), sub_221F182A4(&qword_27CFEC2C8), v29 = sub_221FB62A8(), v30 = -1 << *(a2 + 32), v31 = v29 & ~v30, ((*(v60 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
      {
        v55 = v3;
        v32 = a2;
        v33 = ~v30;
        v34 = v7[9];
        v35 = v7[2];
        do
        {
          v36 = v59;
          v35(v59, *(v32 + 48) + v34 * v31, v6);
          sub_221F182A4(&qword_27CFEC260);
          v37 = sub_221FB62D8();
          v38 = *v62;
          (*v62)(v36, v6);
          if (v37)
          {
            v15 = v61;
            v38(v61, v6);

            a2 = v32;
            a1 = v50;
            v7 = v51;
            v3 = v55;
            v14 = v49;
            v20 = v57;
            goto LABEL_7;
          }

          v31 = (v31 + 1) & v33;
        }

        while (((*(v60 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
        a2 = v32;
        v14 = v49;
        a1 = v50;
        v15 = v61;
        v3 = v55;
        v38(v61, v6);
      }

      else
      {
        (*v62)(v15, v6);
      }

      *&v48[(v54 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v54;
      v7 = v51;
      v39 = __OFADD__(v52++, 1);
      v20 = v57;
      if (v39)
      {
        goto LABEL_27;
      }
    }

    v22 = v3;
    while (1)
    {
      v3 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v3 >= v14)
      {
        v40 = sub_221F77438(v48, v45, v52, a1, &qword_27CFEC2D8, &qword_221FBB760);

        goto LABEL_25;
      }

      v23 = *(v47 + 8 * v3);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v57 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v43 = swift_slowAlloc();

  v40 = sub_221F77388(v43, v14, a1, a2);

  MEMORY[0x223DADA80](v43, -1, -1);

LABEL_25:
  v41 = *MEMORY[0x277D85DE8];
  return v40;
}

uint64_t sub_221F79C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_221FB5C38();
  v43 = *(v4 - 8);
  v5 = v43[8];
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v50 = &v42 - v10;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_221F79710(v9, a2);
  }

  v11 = MEMORY[0x277D84FA0];
  v53 = MEMORY[0x277D84FA0];

  v45 = sub_221FB6828();
  v12 = sub_221FB6898();
  if (v12)
  {
    v13 = v12;
    v44 = sub_221E9D138(0, &qword_27CFEBB00, 0x277CCDDD0);
    v14 = v13;
    v47 = v43 + 2;
    v48 = a2 + 56;
    v15 = (v43 + 1);
    v46 = MEMORY[0x277D84FA0];
    v49 = a2;
    do
    {
      v51 = v14;
      swift_dynamicCast();
      v25 = [v52 UUID];
      sub_221FB5C18();

      if (*(a2 + 16) && (v26 = *(a2 + 40), sub_221F182A4(&qword_27CFEC2C8), v27 = sub_221FB62A8(), v28 = v49, v29 = -1 << *(v49 + 32), v30 = v27 & ~v29, ((*(v48 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = ~v29;
        v32 = v43[9];
        v33 = v43[2];
        while (1)
        {
          v33(v8, *(v28 + 48) + v32 * v30, v4);
          sub_221F182A4(&qword_27CFEC260);
          v34 = sub_221FB62D8();
          v35 = *v15;
          (*v15)(v8, v4);
          if (v34)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          v28 = v49;
          if (((*(v48 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v35(v50, v4);
      }

      else
      {
LABEL_13:
        (*v15)(v50, v4);
        v36 = v52;
        v37 = *(v46 + 16);
        if (*(v46 + 24) <= v37)
        {
          sub_221F16528(v37 + 1);
        }

        v16 = v53;
        v17 = *(v53 + 40);
        result = sub_221FB6748();
        v19 = v16 + 56;
        v20 = -1 << *(v16 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v16 + 56 + 8 * (v21 >> 6))) != 0)
        {
          v23 = __clz(__rbit64((-1 << v21) & ~*(v16 + 56 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v38 = 0;
          v39 = (63 - v20) >> 6;
          do
          {
            if (++v22 == v39 && (v38 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v40 = v22 == v39;
            if (v22 == v39)
            {
              v22 = 0;
            }

            v38 |= v40;
            v41 = *(v19 + 8 * v22);
          }

          while (v41 == -1);
          v23 = __clz(__rbit64(~v41)) + (v22 << 6);
        }

        *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(*(v16 + 48) + 8 * v23) = v36;
        v24 = *(v16 + 16) + 1;
        v46 = v16;
        *(v16 + 16) = v24;
      }

      v14 = sub_221FB6898();
      a2 = v49;
    }

    while (v14);
  }

  else
  {
    v46 = v11;
  }

  return v46;
}

uint64_t sub_221F7A08C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return v9(a1, a2);
}

uint64_t sub_221F7A1A4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

uint64_t sub_221F7A2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E9E350;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F7A3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_221F7A52C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_221F7A52C(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

uint64_t sub_221F7A630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E9544C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F7A760(void *a1, void *a2)
{
  v4 = sub_221FB5C38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 UUID];
  if (v9)
  {
    v10 = v9;
    sub_221FB5C18();

    v11 = sub_221FB5BE8();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
    v14 = sub_221ECB14C(v11, v13);

    if (!v14)
    {
      v14 = sub_221ED7E7C(MEMORY[0x277D84F90]);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA00, qword_221FBE618);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = [a1 _activitySummaryIndex];
    *(inited + 40) = sub_221F8F248();
    v16 = sub_221ED7E7C(inited);
    swift_setDeallocating();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    sub_221F7AF4C(v16, sub_221F7B170, 0, isUniquelyReferenced_nonNull_native, &v21);
    v18 = sub_221F91EF8(3, v21);

    return v18;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_221F7A96C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  v1 = *(v0 + 168);

  sub_221ED9A18(*(v0 + 176));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_221F7AA68(uint64_t a1)
{
  result = sub_221F7AA90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221F7AA90()
{
  result = qword_27CFEC9F8;
  if (!qword_27CFEC9F8)
  {
    type metadata accessor for ActivitySnapshotSummaryStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC9F8);
  }

  return result;
}

uint64_t sub_221F7AAE4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_221FB5C38();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F7ABA8, v2, 0);
}

id sub_221F7ABA8()
{
  if (*(*(v0 + 32) + 176) >= 2uLL)
  {
    v5 = *(v0 + 24);
    v6 = sub_221F7A760(*(v0 + 16), v5);
    *(v0 + 64) = v6;
    result = [v5 UUID];
    if (result)
    {
      v7 = result;
      v9 = *(v0 + 48);
      v8 = *(v0 + 56);
      v10 = *(v0 + 40);
      sub_221FB5C18();

      v11 = sub_221FB5BE8();
      v13 = v12;
      *(v0 + 72) = v12;
      (*(v9 + 8))(v8, v10);
      v14 = swift_task_alloc();
      *(v0 + 80) = v14;
      *v14 = v0;
      v14[1] = sub_221F7AD68;
      v15 = *(v0 + 32);

      return sub_221ECFCA8(v6, v11, v13);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_221ED8D78();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
    v2 = *(v0 + 56);

    v3 = *(v0 + 8);

    return v3();
  }

  return result;
}

uint64_t sub_221F7AD68()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  v5[11] = v0;

  if (v0)
  {
    v6 = v5[4];

    return MEMORY[0x2822009F8](sub_221F7AEE8, v6, 0);
  }

  else
  {
    v7 = v5[7];

    v8 = v5[1];

    return v8();
  }
}

uint64_t sub_221F7AEE8()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_221F7AF4C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v38 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_11:
    v13 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v14 = *(*(a1 + 48) + v13);
    v15 = *(*(a1 + 56) + v13);
    v37[0] = v14;
    v37[1] = v15;
    a2(v36, v37);
    v17 = v36[0];
    v16 = v36[1];
    v18 = *v38;
    v19 = sub_221ED4C68(v36[0]);
    v21 = *(v18 + 16);
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (*(v18 + 24) >= v24)
    {
      if ((a4 & 1) == 0)
      {
        v33 = v19;
        sub_221ED6E44();
        v19 = v33;
      }
    }

    else
    {
      v26 = v38;
      sub_221ED5680(v24, a4 & 1);
      v27 = *v26;
      v19 = sub_221ED4C68(v17);
      if ((v25 & 1) != (v28 & 1))
      {
        goto LABEL_24;
      }
    }

    v9 &= v9 - 1;
    v29 = *v38;
    if (v25)
    {
      *(v29[7] + 8 * v19) = v16;
    }

    else
    {
      v29[(v19 >> 6) + 8] |= 1 << v19;
      *(v29[6] + 8 * v19) = v17;
      *(v29[7] + 8 * v19) = v16;
      v30 = v29[2];
      v23 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v29[2] = v31;
    }

    a4 = 1;
    v11 = v12;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_221FB6B98();
  __break(1u);
  return result;
}

__n128 sub_221F7B170@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_221F7B1E0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221EE581C;

  return v9(a1, a2);
}

uint64_t sub_221F7B2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E9E350;

  return v11(a1, a2, a3);
}

void sub_221F7B420(uint64_t a1)
{
  v1 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_221FB6868();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v39 = MEMORY[0x277D84F90];
    sub_221E94E24(0, v2 & ~(v2 >> 63), 0);
    v34 = v39;
    if (v33)
    {
      v3 = sub_221FB6818();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_221FB67E8();
      v4 = *(v1 + 36);
    }

    v36 = v3;
    v37 = v4;
    v38 = v33 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v31 = v1 + 56;
      v30 = v1 + 64;
      v32 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v10 = v36;
        v9 = v37;
        v11 = v38;
        v12 = v1;
        sub_221F78B58(v36, v37, v38, v1);
        v14 = v13;
        v15 = [v13 dictionaryRepresentation];
        v16 = sub_221FB6288();

        v17 = v34;
        v39 = v34;
        v19 = *(v34 + 16);
        v18 = *(v34 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_221E94E24((v18 > 1), v19 + 1, 1);
          v17 = v39;
        }

        *(v17 + 16) = v19 + 1;
        *(v17 + 8 * v19 + 32) = v16;
        v34 = v17;
        if (v33)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v1 = v12;
          if (sub_221FB6838())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA10, &qword_221FBE698);
          v7 = sub_221FB6528();
          sub_221FB68B8();
          v7(v35, 0);
          if (v6 == v32)
          {
LABEL_32:
            sub_221EB9940(v36, v37, v38);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v12;
          v20 = 1 << *(v12 + 32);
          if (v10 >= v20)
          {
            goto LABEL_36;
          }

          v21 = v10 >> 6;
          v22 = *(v31 + 8 * (v10 >> 6));
          if (((v22 >> v10) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_38;
          }

          v23 = v22 & (-2 << (v10 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v32;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            v2 = v32;
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_221EB9940(v10, v9, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_31;
              }
            }

            sub_221EB9940(v10, v9, 0);
          }

LABEL_31:
          v29 = *(v1 + 36);
          v36 = v20;
          v37 = v29;
          v38 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_221F7B7A4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 8);
      v14 = *(v7 - 2);
      v15 = v9;
      v16 = v8;
      v10 = v14;
      v11 = a1(&v14);

      if (v3)
      {
        break;
      }

      v7 += 3;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_221F7B864(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_221F7B910(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x223DACD50](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_221FB6868();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_221F7BA38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v6)
  {
    v6 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(a3 + 56) = 7;
  v7 = MEMORY[0x277D84F90];
  *(a3 + 64) = MEMORY[0x277D84F90];
  *(a3 + 72) = v6;
  sub_221EA4AB4(a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA08, &qword_221FBE690);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *(v8 + 16) = v7;
  *(a3 + 40) = a2;
  *(a3 + 48) = v8;
  return result;
}

void sub_221F7BB1C()
{
  v1 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_221E93000, v3, v4, "Clearing collected cloud devices", v5, 2u);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v6 = *(v1 + 48);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  *(v6 + 16) = MEMORY[0x277D84F90];

  os_unfair_lock_unlock((v6 + 24));
}

void sub_221F7BC68()
{
  sub_221E94E44();
  v2 = sub_221F17BE0(v1);

  v3 = *(v0 + 48);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  v5 = sub_221F17BE0(v4);

  sub_221F71510(v2, v5);
  sub_221F7B420(v6);
  v7 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC218, &qword_221FBE680);
  v8 = sub_221FB6428();

  sub_221FB5D88();
  v9 = sub_221FB62E8();

  [v7 setObject:v8 forKey:v9];

  sub_221F7BB1C();
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v10 = sub_221FB61D8();
  __swift_project_value_buffer(v10, qword_281307DF0);

  oslog = sub_221FB61B8();
  v11 = sub_221FB65C8();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    sub_221EA97E8();
    sub_221F7C720();
    v14 = sub_221FB6508();
    v16 = v15;

    v17 = sub_221EF4114(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_221E93000, oslog, v11, "Updated cloud devices from merge %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  else
  {
  }
}

void sub_221F7BED4()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));

  v4 = sub_221F17BE0(v3);

  sub_221F7B420(v4);

  v5 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC218, &qword_221FBE680);
  v6 = sub_221FB6428();

  sub_221FB5D88();
  v7 = sub_221FB62E8();

  [v5 setObject:v6 forKey:v7];

  sub_221F7BB1C();
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v8 = sub_221FB61D8();
  __swift_project_value_buffer(v8, qword_281307DF0);

  oslog = sub_221FB61B8();
  v9 = sub_221FB65C8();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = sub_221EA97E8();
    v13 = MEMORY[0x223DAC810](v2, v12);
    v15 = v14;

    v16 = sub_221EF4114(v13, v15, &v18);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_221E93000, oslog, v9, "Updated cloud devices from apply %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  else
  {
  }
}

void sub_221F7C11C()
{
  v1 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_221E93000, v3, v4, "Clearing stored cloud devices", v5, 2u);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v6 = *(v1 + 40);
  v7 = sub_221FB6428();
  sub_221FB5D88();
  v8 = sub_221FB62E8();

  [v6 setObject:v7 forKey:v8];
}

uint64_t sub_221F7C268(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_221F7C28C, 0, 0);
}

uint64_t sub_221F7C28C()
{
  v1 = *(v0 + 16);
  sub_221E94E44();
  v3 = v2;
  v23 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_16:
    v4 = sub_221FB6868();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x223DACD50](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v11 = v23;
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = *(v3 + 8 * v5 + 32);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_13;
          }
        }

        v8 = v6;
        v9 = sub_221FB6588();

        if (v9)
        {
          sub_221FB69B8();
          v10 = *(v23 + 16);
          sub_221FB69E8();
          sub_221FB69F8();
          sub_221FB69C8();
        }

        else
        {
        }

        ++v5;
        if (v7 == v4)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:
  v12 = *(v0 + 16);

  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  v14 = sub_221F54478(sub_221F7C650, v13, v11);

  if (v14 >> 62)
  {
LABEL_36:
    v15 = sub_221FB6868();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v15 != 0;
  if (v15 && (*(v0 + 24) & 1) == 0)
  {
    v17 = 0;
    do
    {
      v16 = v15 == v17;
      if (v15 == v17)
      {
        break;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x223DACD50](v17, v14);
        if (__OFADD__(v17, 1))
        {
LABEL_31:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_36;
        }

        v18 = *(v14 + 8 * v17 + 32);
        if (__OFADD__(v17, 1))
        {
          goto LABEL_31;
        }
      }

      v19 = v18;
      v20 = sub_221FB6598();

      ++v17;
    }

    while ((v20 & 1) != 0);
  }

  v21 = *(v0 + 8);

  return v21(v16);
}

BOOL sub_221F7C51C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 56);
  v4 = *(a2 + 64);
  v5 = *(a2 + 72);
  if ((_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0() & 1) != 0 && (LOBYTE(v14[0]) = v3, UserDefaultsKeys.rawValue.getter(), v6 = _sSa23ActivitySharingServicesSSRszlE4read4from3keySaySSGSgSo14NSUserDefaultsC_SStFZ_0(v5), , v6))
  {
    v4 = v6;
  }

  else
  {
  }

  v7 = [v2 identifier];
  v8 = sub_221FB6318();
  v10 = v9;

  v14[0] = v8;
  v14[1] = v10;
  MEMORY[0x28223BE20](v11);
  v13[2] = v14;
  LOBYTE(v7) = sub_221F7B864(sub_221F7C6C8, v13, v4);

  return (v7 & 1) == 0;
}

uint64_t sub_221F7C670(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_221FB6B58() & 1;
  }
}

uint64_t sub_221F7C6C8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_221FB6B58() & 1;
  }
}

unint64_t sub_221F7C720()
{
  result = qword_281306EF8;
  if (!qword_281306EF8)
  {
    sub_221EA97E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306EF8);
  }

  return result;
}

uint64_t sub_221F7C7A4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9606C;

  return v9(a1, a2);
}

uint64_t sub_221F7C8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E96070;

  return v11(a1, a2, a3);
}

uint64_t sub_221F7C9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3);
}

uint64_t sub_221F7CB1C(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for IDSErrorAction(0);
  v2[20] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v5 = sub_221FB5FF8();
  v2[22] = v5;
  v6 = *(v5 - 8);
  v2[23] = v6;
  v7 = *(v6 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v8 = sub_221FB5C38();
  v2[26] = v8;
  v9 = *(v8 - 8);
  v2[27] = v9;
  v10 = *(v9 + 64) + 15;
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F7CC74, 0, 0);
}

uint64_t sub_221F7CC74()
{
  v57 = v0;
  v2 = v0[18];
  v1 = v0[19];
  sub_221FB5FA8();
  v3 = sub_221FB62E8();

  v4 = *v1;
  v5 = ASContactForOutgoingHandshakeTokenWithManager();
  v0[29] = v5;

  if (v5)
  {
    v6 = [v5 relationshipStorage];
    v7 = [v6 legacyRelationship];
    v0[30] = v7;

    v8 = [v7 preferredReachableAddress];
    v0[31] = v8;
    if (v8)
    {
      v9 = v8;
      v10 = sub_221FB6318();
      v12 = v11;
      v0[32] = v10;
      v0[33] = v11;
      v13 = [v7 preferredReachableService];
      v0[34] = v13;
      if (v13)
      {
        v0[35] = sub_221FB6318();
        v0[36] = v14;
        if (qword_281307080 != -1)
        {
          swift_once();
        }

        v15 = sub_221FB61D8();
        v0[37] = __swift_project_value_buffer(v15, qword_281307DF0);

        v16 = sub_221FB61B8();
        v17 = sub_221FB65C8();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v56 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_221EF4114(v10, v12, &v56);
          _os_log_impl(&dword_221E93000, v16, v17, "Withdraw any accepted secure cloud invites for %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v19);
          MEMORY[0x223DADA80](v19, -1, -1);
          MEMORY[0x223DADA80](v18, -1, -1);
        }

        v20 = v0[28];
        __swift_project_boxed_opaque_existential_0Tm((v0[19] + 48), *(v0[19] + 72));
        v21 = [v5 UUID];
        sub_221FB5C18();

        v22 = swift_task_alloc();
        v0[38] = v22;
        *v22 = v0;
        v22[1] = sub_221F7D2C4;
        v23 = v0[28];

        return sub_221F5AC18(v23);
      }

      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v49 = sub_221FB61D8();
      __swift_project_value_buffer(v49, qword_281307DF0);
      v31 = sub_221FB61B8();
      v44 = sub_221FB65A8();
      if (!os_log_type_enabled(v31, v44))
      {
        goto LABEL_25;
      }

      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "Legacy contact missing preferred service identifier for fallback";
    }

    else
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v43 = sub_221FB61D8();
      __swift_project_value_buffer(v43, qword_281307DF0);
      v31 = sub_221FB61B8();
      v44 = sub_221FB65A8();
      if (!os_log_type_enabled(v31, v44))
      {
        goto LABEL_25;
      }

      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "Legacy contact missing preferred reachable address for fallback";
    }

    _os_log_impl(&dword_221E93000, v31, v44, v46, v45, 2u);
    MEMORY[0x223DADA80](v45, -1, -1);
LABEL_25:

    goto LABEL_26;
  }

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v25 = v0[25];
  v26 = v0[22];
  v27 = v0[23];
  v28 = v0[18];
  v29 = sub_221FB61D8();
  __swift_project_value_buffer(v29, qword_281307DF0);
  v30 = *(v27 + 16);
  v30(v25, v28, v26);
  v31 = sub_221FB61B8();
  v32 = sub_221FB65A8();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v0[25];
  if (v33)
  {
    v35 = v0[23];
    v36 = v0[24];
    v37 = v0[22];
    v38 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = v55;
    *v38 = 136315138;
    v30(v36, v34, v37);
    v39 = sub_221FB6328();
    v41 = v40;
    (*(v35 + 8))(v34, v37);
    v42 = sub_221EF4114(v39, v41, &v56);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_221E93000, v31, v32, "Handshake token in invite response does not match any contacts: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x223DADA80](v55, -1, -1);
    MEMORY[0x223DADA80](v38, -1, -1);
LABEL_26:

    goto LABEL_27;
  }

  v47 = v0[22];
  v48 = v0[23];

  (*(v48 + 8))(v34, v47);
LABEL_27:
  v50 = v0[28];
  v51 = v0[24];
  v52 = v0[25];
  v53 = v0[21];

  v54 = v0[1];

  return v54();
}

uint64_t sub_221F7D2C4()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v10 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = v2[36];
    v5 = v2[33];
    v6 = v2[34];
    v7 = v2[31];
    (*(v2[27] + 8))(v2[28], v2[26]);

    v8 = sub_221F7D6D8;
  }

  else
  {
    (*(v2[27] + 8))(v2[28], v2[26]);
    v8 = sub_221F7D43C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221F7D43C()
{
  v22 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[33];

  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[36];
  if (v6)
  {
    v8 = v0[35];
    v10 = v0[32];
    v9 = v0[33];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315394;
    v13 = sub_221EF4114(v10, v9, &v21);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = sub_221EF4114(v8, v7, &v21);

    *(v11 + 14) = v14;
    _os_log_impl(&dword_221E93000, v4, v5, "Sending fallback invitation to %s on %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  else
  {
    v15 = v0[33];
  }

  v16 = v0[34];
  v17 = v0[31];
  v18 = *__swift_project_boxed_opaque_existential_0Tm((v0[19] + 8), *(v0[19] + 32));
  v0[2] = v0;
  v0[7] = v0 + 41;
  v0[3] = sub_221F7D7EC;
  v19 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221FA909C;
  v0[13] = &block_descriptor_30;
  v0[14] = v19;
  [v18 sendInviteToPersonWithDestination:v17 callerID:0 serviceIdentifier:v16 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F7D6D8()
{
  v1 = v0[39];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[28];
  v5 = v0[25];
  v13 = v0[24];
  v6 = v0[20];
  v7 = v0[21];
  *v7 = 1;
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for IDSError(0);
  sub_221EA49E8();
  swift_allocError();
  v10 = v9;
  sub_221EA4A40(v7, v9);
  *(v10 + *(v8 + 20)) = v1;
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_221F7D7EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_221F7D9A4;
  }

  else
  {
    v3 = sub_221F7D8FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F7D8FC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);

  v4 = *(v0 + 224);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 168);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_221F7D9A4()
{
  v1 = v0[40];
  v2 = v0[34];
  v3 = v0[31];
  swift_willThrow();

  v4 = v0[40];
  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[28];
  v8 = v0[25];
  v16 = v0[24];
  v9 = v0[20];
  v10 = v0[21];
  *v10 = 1;
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for IDSError(0);
  sub_221EA49E8();
  swift_allocError();
  v13 = v12;
  sub_221EA4A40(v10, v12);
  *(v13 + *(v11 + 20)) = v4;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_221F7DAF0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return v9(a1, a2);
}

uint64_t sub_221F7DC08(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

uint64_t sub_221F7DD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221F7A52C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F7DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_221E9544C;

  return v15(a1, a2, a3, a4, a5);
}

unint64_t sub_221F7DFCC(uint64_t a1)
{
  result = sub_221F7DFF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221F7DFF4()
{
  result = qword_27CFECA18;
  if (!qword_27CFECA18)
  {
    type metadata accessor for GoalCompletionAnchorStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECA18);
  }

  return result;
}

uint64_t sub_221F7E068()
{
  v1 = v0[3];
  v2 = *(v1 + 112);
  if (v2)
  {
    v0[2] = v2;
    sub_221F7E7CC();
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v0 + 2;
    *(v3 + 24) = v1;
    v4 = *(MEMORY[0x277D859E0] + 4);

    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_221F7E1C4;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    *(v1 + 112) = MEMORY[0x277D84F90];
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_221F7E1C4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_221F7E2F0, v3, 0);
}

uint64_t sub_221F7E2F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F7E350(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC208, &qword_221FBADA8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  (*(v7 + 16))(&v18 - v9, a1, v6);
  v11 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_221EF3E84(0, v11[2] + 1, 1, v11);
    *a2 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_221EF3E84(v13 > 1, v14 + 1, 1, v11);
    *a2 = v11;
  }

  v11[2] = v14 + 1;
  (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v10, v6);
  v15 = *a2;
  v16 = *(a3 + 112);
  *(a3 + 112) = v15;
}

uint64_t sub_221F7E4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC208, &qword_221FBADA8);
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F7E5BC, a4, 0);
}

uint64_t sub_221F7E5BC()
{
  v1 = v0[2];
  v2 = *(v1 + 112);
  if (v2)
  {
    if (v2[2])
    {
      result = (*(v0[4] + 16))(v0[5], v2 + ((*(v0[4] + 80) + 32) & ~*(v0[4] + 80)), v0[3]);
      v4 = v2[2];
      if (!v4)
      {
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v4 - 1) > v2[3] >> 1)
      {
        v2 = sub_221EF3E84(isUniquelyReferenced_nonNull_native, v4, 1, v2);
      }

      v7 = v0[4];
      v6 = v0[5];
      v8 = v0[3];
      sub_221F7E900(0, 1, 0);
      v9 = *(v1 + 112);
      *(v1 + 112) = v2;

      sub_221FB64A8();
      (*(v7 + 8))(v6, v8);
    }

    else
    {
      *(v1 + 112) = 0;
    }
  }

  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t AsyncLock.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncLock.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_221F7E7CC()
{
  result = qword_281307060;
  if (!qword_281307060)
  {
    type metadata accessor for AsyncLock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307060);
  }

  return result;
}

unint64_t sub_221F7E828(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
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

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
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

unint64_t sub_221F7E900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC208, &qword_221FBADA8);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
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

uint64_t sub_221F7EA70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_221F7EAB8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_221F7EB34()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 16);
  v4 = swift_allocObject();
  v5 = *(v0 + 32);
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 48);
  *(v4 + 64) = *(v0 + 64);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEA88;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1368) = v7;
  *(v7 + 16) = &unk_221FBEA98;
  *(v7 + 24) = v6;
  v8 = *(MEMORY[0x277CE93A0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 1376) = v9;
  v10 = sub_221FB61A8();
  *v9 = v0;
  v9[1] = sub_221F7ECDC;
  v11 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](101, &unk_221FBEAA8, v7, v2, v10, v11, v3);
}

uint64_t sub_221F7ECDC()
{
  v1 = *(*v0 + 1376);
  v2 = *(*v0 + 1368);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F7EDF4, 0, 0);
}

uint64_t sub_221F7EDF4()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 72);
  v4 = swift_allocObject();
  v5 = *(v0 + 88);
  *(v4 + 16) = *(v0 + 72);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 104);
  *(v4 + 64) = *(v0 + 120);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEAB8;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1384) = v7;
  *(v7 + 16) = &unk_221FBEAC8;
  *(v7 + 24) = v6;
  v8 = *(MEMORY[0x277CE93A0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 1392) = v9;
  *v9 = v0;
  v9[1] = sub_221F7EF98;
  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](102, &unk_221FBEAD8, v7, v2, v10, v11, v3);
}

uint64_t sub_221F7EF98()
{
  v1 = *(*v0 + 1392);
  v2 = *(*v0 + 1384);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221F7F0B0, 0, 0);
}