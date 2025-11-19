_BYTE *sub_192C87CE8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_192C87DB4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_78_6(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{
  v12 = *(v10 + 296);

  return memcpy(&__dst, v12, 0x88uLL);
}

id OUTLINED_FUNCTION_103_3(void *a1)
{

  return AMSError(2, v1, v2, a1);
}

uint64_t *OUTLINED_FUNCTION_107_2()
{
  v0[27] = v0[33];

  return __swift_allocate_boxed_opaque_existential_0(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_128_0()
{

  return swift_dynamicCast();
}

uint64_t sub_192C87FB4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_192C88058;

  return sub_192CD7300();
}

uint64_t sub_192C88058()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 32) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_43();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_192C88174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 32);
  if (v11)
  {
    v12 = sub_19295466C(*(v10 + 32));
    for (i = 0; ; ++i)
    {
      if (v12 == i)
      {

        goto LABEL_14;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193B116C0](i, v11);
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v14 = *(v11 + 8 * i + 32);
      }

      v15 = v14;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ([v14 ams:*(v10 + 16) isActiveForMediaType:?])
      {

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_85();

    v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }
}

uint64_t sub_192C88278(void *a1)
{
  v1 = [a1 identifier];
  if (v1)
  {
    v2 = v1;
    sub_192F967BC();
  }

  OUTLINED_FUNCTION_31_0();
  v3 = sub_192F9679C();
  OUTLINED_FUNCTION_44();
  v4 = sub_192F9679C();
  AMSError(113, v3, v4, 0);

  return swift_willThrow();
}

uint64_t sub_192C8843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_135();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_192C88470()
{
  OUTLINED_FUNCTION_178();
  v1 = sub_192C88278(*(v0 + 40));
  *(v0 + 56) = v1;
  v2 = v1;
  *(v0 + 64) = sub_192C1B7DC(v1);
  *(v0 + 72) = v3;
  if (v3 >> 60 == 15)
  {
    v4 = OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_44();
    v5 = sub_192F9679C();
    OUTLINED_FUNCTION_68_7();
    AMSError(v6, v7, v8, 0);

    swift_willThrow();
    OUTLINED_FUNCTION_7_27();

    return v11();
  }

  else
  {
    sub_192F9543C();
    swift_allocObject();
    *(v0 + 80) = sub_192F9542C();
    type metadata accessor for DeveloperSilentAuthTokenResult();
    OUTLINED_FUNCTION_1_43();
    sub_192C9479C(v9, v10);
    OUTLINED_FUNCTION_51_0();
    sub_192F9541C();
    OUTLINED_FUNCTION_15_19(&unk_192FC9568);
    v16 = v13;
    v14 = swift_task_alloc();
    *(v0 + 88) = v14;
    *v14 = v0;
    v14[1] = sub_192C88684;
    v15 = OUTLINED_FUNCTION_51(*(v0 + 16));

    return v16(v15);
  }
}

uint64_t sub_192C88684()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3 & 1;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C88790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 72);
  if (*(v10 + 104) == 1)
  {
    v12 = *(v10 + 64);

    sub_192915F68(v12, v11);
    OUTLINED_FUNCTION_7();
  }

  else
  {
    v14 = *(v10 + 56);
    v13 = *(v10 + 64);
    v15 = *(v10 + 16);
    sub_192C76D48();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    sub_192915F68(v13, v11);
    sub_192C87388(v15);
    OUTLINED_FUNCTION_43();
  }

  OUTLINED_FUNCTION_85();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_192C88878()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);

  sub_192915F68(v2, v1);
  sub_192C87388(v3);
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_192C88900(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12E10);
  v2[8] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[9] = v3;
  *v3 = v2;
  v3[1] = sub_192C889C8;

  return sub_192C89010();
}

uint64_t sub_192C889C8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 80) = v7;

  if (v0)
  {

    v8 = *(v5 + 8);

    return v8(0);
  }

  else
  {
    OUTLINED_FUNCTION_27_3();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_192C88AFC()
{
  OUTLINED_FUNCTION_5();
  if (*(v1 + 80) == 0.0)
  {
    OUTLINED_FUNCTION_63_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v2 = OUTLINED_FUNCTION_90();
    v3 = MEMORY[0x1E69E6158];
    *(v2 + 16) = xmmword_192FBCD50;
    *(v1 + 16) = 0xD000000000000025;
    *(v1 + 40) = v3;
    *(v1 + 24) = v0;
    OUTLINED_FUNCTION_39_12(v1 + 16);
    *(v2 + 64) = 0;
    sub_192C892B8(v2);

    v4 = 0;
  }

  else
  {
    v5 = *(v1 + 64);
    v6 = *(v1 + 48);
    v7 = type metadata accessor for DeveloperSilentAuthTokenResult();
    sub_1928F9340(v6 + *(v7 + 32), v5, &qword_1EAE12E10);
    v8 = sub_192F95CFC();
    OUTLINED_FUNCTION_111_2();
    result = __swift_getEnumTagSinglePayload(v9, v10, v11);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v13 = *(v1 + 80);
    v14 = *(v1 + 64);
    sub_192F95C6C();
    v4 = fabs(v15) <= v13;
    OUTLINED_FUNCTION_30_2();
    (*(v16 + 8))(v14, v8);
  }

  OUTLINED_FUNCTION_40();

  return v17(v4);
}

uint64_t sub_192C88C80()
{
  OUTLINED_FUNCTION_3();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_192F9545C();
  v1[6] = v4;
  v1[7] = *(v4 - 8);
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_192C88D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  if (*(*(v14 + 24) + 24))
  {
    v15 = sub_192C88278(*(v14 + 32));
    v31 = *(v14 + 24);
    sub_192F9549C();
    swift_allocObject();
    sub_192F9548C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14818);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_192FBCD50;
    sub_192F9544C();
    *(v14 + 16) = v16;
    sub_192C9479C(&qword_1EAE14820, MEMORY[0x1E6967F78]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14828);
    sub_1928FDAEC(qword_1EAE14830, &qword_1EAE14828);
    sub_192F9719C();
    sub_192F9546C();
    type metadata accessor for DeveloperSilentAuthTokenResult();
    OUTLINED_FUNCTION_1_43();
    sub_192C9479C(v17, v18);
    v27 = sub_192F9547C();
    v29 = v28;
    v30 = sub_192F95B5C();
    [v15 storeData_];

    sub_19290CA6C(v27, v29);

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_94();

    v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, v31, a11, a12, a13, a14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_192C89010()
{
  *(v1 + 80) = *(v0 + 16);
  sub_192C94690(v1 + 80, v1 + 96);
  *(v1 + 112) = *(v1 + 80);
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_192C890C4;

  return sub_192C787C8(v1 + 16);
}

uint64_t sub_192C890C4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C891BC()
{
  OUTLINED_FUNCTION_3();
  if (*(v0 + 24) != 1)
  {
    sub_19292E1F0(v0 + 16, &qword_1EAE148C0);
  }

  sub_192C946EC(v0 + 80);
  OUTLINED_FUNCTION_7();

  return v1();
}

uint64_t sub_192C8925C()
{
  OUTLINED_FUNCTION_3();
  sub_192C946EC(v0 + 80);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192C892B8(uint64_t a1)
{
  if (qword_1ED6DE070 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED6DE078;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_192FBCD90;
  v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE149B8);
  v5 = swift_allocObject();
  v27[0] = v5;
  v6 = *(v1 + 16);
  v5[1] = *v1;
  v5[2] = v6;
  v5[3] = *(v1 + 32);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_192FBCD50;
  sub_19286C588(v27, v26);
  __swift_project_boxed_opaque_existential_0(v26, v26[3]);
  swift_getDynamicType();
  sub_1928F9340(v1, &v22, &qword_1EAE149B8);

  v22 = sub_192F979EC();
  v23 = v10;
  MEMORY[0x193B10CE0](5972026, 0xE300000000000000);
  MEMORY[0x193B10CE0](v8, v7);

  MEMORY[0x193B10CE0](93, 0xE100000000000000);
  v11 = MEMORY[0x1E69E6158];
  v25 = MEMORY[0x1E69E6158];
  __swift_destroy_boxed_opaque_existential_0(v26);
  *(v9 + 48) = 0u;
  *(v9 + 32) = 0u;
  sub_19286D180(&v22, v9 + 32);
  *(v9 + 64) = 0;
  *(v4 + 32) = v9;
  __swift_destroy_boxed_opaque_existential_0(v27);
  *(v4 + 40) = a1;

  v12 = sub_192F96E5C();
  if (os_log_type_enabled(v3, v12))
  {
    v13 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v14 = byte_1ED6DE5D8;
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v22 = v4;
    v23 = sub_192BB97CC;
    v24 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v16 = sub_192F9674C();
    v18 = v17;

    objc_autoreleasePoolPop(v13);
    v19 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_192FBCD50;
    *(v20 + 56) = v11;
    *(v20 + 64) = sub_1928FDB30();
    *(v20 + 32) = v16;
    *(v20 + 40) = v18;
    sub_192F9622C();

    objc_autoreleasePoolPop(v19);
  }
}

uint64_t sub_192C89638()
{
  v0 = sub_192F9750C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void sub_192C8968C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, id a5@<X4>, void *a6@<X8>)
{
  v12 = a3;
  v46 = a1;
  v47 = a2;
  v13 = sub_192C7B3D4(a1, a2);
  v15 = v14;
  v16 = [objc_opt_self() currentProcess];
  v17 = v16;
  v48 = a4;
  v44 = v16;
  v45 = a3;
  if (a4)
  {
    [v16 setAccountMediaType_];
    if (!a5)
    {
      goto LABEL_8;
    }

LABEL_11:

    v27 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v18 = v12;
  if ([v18 ams_isSandboxAccount])
  {
    [v17 setAccountMediaType_];
  }

  if (a5)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (!a3)
  {
LABEL_12:
    v27 = 1;
LABEL_13:
    v28 = objc_allocWithZone(MEMORY[0x1E695DF90]);
    a5 = a5;
    v26 = [v28 init];
    if (v27)
    {
      sub_192874CD0(0, &qword_1EAE12350);
      v29 = sub_19294D4D0();
      v30 = type metadata accessor for SendableBag();
      v31 = objc_allocWithZone(v30);
      *&v31[OBJC_IVAR___AMSSendableBag_wrappedBag] = v29;
      v51.receiver = v31;
      v51.super_class = v30;
      v25 = objc_msgSendSuper2(&v51, sel_init);
    }

    else
    {
      v25 = a5;
    }

    goto LABEL_16;
  }

  sub_192874CD0(0, &qword_1EAE12350);
  v19 = v12;
  v20 = v17;
  v21 = sub_192C7B494(0x73746E756F636341, 0xE800000000000000, 49, 0xE100000000000000, v17, v19);
  v22 = type metadata accessor for SendableBag();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR___AMSSendableBag_wrappedBag] = v21;
  v49.receiver = v23;
  v49.super_class = v22;
  v24 = v21;
  v25 = objc_msgSendSuper2(&v49, sel_init);
  v26 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];

LABEL_16:
  if (v15)
  {
    v32 = v15;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  if (v15)
  {
    v33 = v13;
  }

  else
  {
    v33 = 0;
  }

  v34 = type metadata accessor for DeveloperSilentAuthTokenDelegate();
  v35 = objc_allocWithZone(v34);
  *&v35[OBJC_IVAR____TtC18AppleMediaServicesP33_68239C40601534D7947471707625281632DeveloperSilentAuthTokenDelegate_bag] = v25;
  v50.receiver = v35;
  v50.super_class = v34;
  v36 = v25;
  v37 = objc_msgSendSuper2(&v50, sel_init);
  v38 = AMSSetLogKeyIfNeeded();
  v39 = sub_192F967CC();
  v41 = v40;

  v42 = v26;
  v43 = v36;

  *a6 = v45;
  a6[1] = v33;
  a6[2] = v32;
  a6[3] = v46;
  a6[4] = v47;
  a6[5] = v39;
  a6[6] = v41;
  a6[7] = v48;
  a6[8] = v42;
  a6[9] = v43;
  a6[10] = v37;
  a6[11] = 0xD000000000000035;
  a6[12] = 0x800000019301F8A0;
  a6[13] = v42;
  a6[14] = v43;
  a6[15] = v39;
  a6[16] = v41;
}

uint64_t sub_192C899E0(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = v2;
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  *v6 = v3;
  v6[1] = sub_192C89A88;

  return sub_192C89D44(a1, a2);
}

uint64_t sub_192C89A88()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 168) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_192C89B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_47_0();
  sub_19287AEE0();
  v35 = v14;
  OUTLINED_FUNCTION_38_6();
  v15._countAndFlagsBits = 0xD00000000000002BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_89_4();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_65_0();
  v16();
  sub_1928F9340(v11 + 56, v11 + 88, &unk_1EAE131B0);
  OUTLINED_FUNCTION_59_6();
  sub_19286D180(v11 + 88, v10);
  OUTLINED_FUNCTION_67_7();
  v17 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v17 = v33;
  }

  OUTLINED_FUNCTION_91_3();
  if (v19)
  {
    OUTLINED_FUNCTION_20(v18);
    sub_19287AEE0();
    v17 = v34;
  }

  *(v17 + 16) = v12;
  OUTLINED_FUNCTION_16_20(v17 + 40 * v13);
  sub_19292E1F0(v11 + 56, &unk_1EAE131B0);
  v20._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_96_3(v21, v22, v23, sub_1928FA5C4);

  swift_willThrow();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_123_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v17, a10);
}

uint64_t sub_192C89D44(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  v3[29] = swift_task_alloc();
  v4 = sub_192F95A8C();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192C89E40, 0, 0);
}

uint64_t sub_192C89E40()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v2 = OUTLINED_FUNCTION_90();
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 16) = xmmword_192FBCD50;
  v1[21] = v3;
  v4 = OUTLINED_FUNCTION_82_4();
  *(v4 + 144) = v5;
  v1[19] = v0;
  OUTLINED_FUNCTION_39_12(v4 + 144);
  *(v2 + 64) = 0;
  OUTLINED_FUNCTION_0_36();
  sub_192C904C8(v2, v6, v7, sub_192BB97CC);

  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v1[33] = v8;
  *v8 = v9;
  v8[1] = sub_192C89F60;

  return sub_192C92BF0();
}

uint64_t sub_192C89F60()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8A058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 232);
  v12 = *(v10 + 240);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_19292E1F0(v11, &unk_1EAE144B0);
    v13 = sub_192F9679C();
    v14 = sub_192F9679C();
    OUTLINED_FUNCTION_65_0();
    AMSError(v15, v16, v17, 0);

    swift_willThrow();

    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_123_0();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    v27 = *(v10 + 216);
    v28 = *(v10 + 224);
    v29 = *(v10 + 208);
    (*(*(v10 + 248) + 32))(*(v10 + 256), v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13200);
    inited = swift_initStackObject();
    v31 = OUTLINED_FUNCTION_19_19(inited, xmmword_192FBCD90);
    *(v10 + 176) = *(v28 + 24);
    v32 = MEMORY[0x1E69E6158];
    v31[4].n128_u64[1] = MEMORY[0x1E69E6158];
    v31[3] = *(v10 + 176);
    v31[5].n128_u64[0] = 0xD000000000000018;
    v31[5].n128_u64[1] = 0x8000000193017990;
    v31[7].n128_u64[1] = v32;
    if (v27)
    {
      v33 = v29;
    }

    else
    {
      v33 = 0;
    }

    v34 = 0xE000000000000000;
    if (v27)
    {
      v34 = v27;
    }

    v31[6].n128_u64[0] = v33;
    v31[6].n128_u64[1] = v34;
    sub_192C94740(v10 + 176, v10 + 192);

    OUTLINED_FUNCTION_102();
    *(v10 + 280) = sub_192F966CC();
    v35 = swift_task_alloc();
    *(v10 + 288) = v35;
    *v35 = v10;
    v35[1] = sub_192C8A310;
    OUTLINED_FUNCTION_51(*(v10 + 256));
    OUTLINED_FUNCTION_111_2();
    OUTLINED_FUNCTION_123_0();

    return sub_192C90C8C(v36, v37, v38);
  }
}

uint64_t sub_192C8A2A8()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192C8A310()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_99_3();
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 296) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_192C8A444()
{
  OUTLINED_FUNCTION_3();
  (*(v0[31] + 8))(v0[32], v0[30]);

  OUTLINED_FUNCTION_7();

  return v1();
}

uint64_t sub_192C8A4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_178();
  v14 = sub_192C925E0(*(v12 + 296));
  v15 = *(v12 + 296);
  if (v14)
  {
    v16 = OUTLINED_FUNCTION_113_1();
    v17 = sub_192F9679C();
    v18 = sub_192F958CC();
    OUTLINED_FUNCTION_103_3(v18);

    swift_willThrow();
    v19 = OUTLINED_FUNCTION_39();
LABEL_5:
    v21(v19, v20);
    goto LABEL_7;
  }

  v22 = sub_192C92874(*(v12 + 296));
  v23 = *(v12 + 296);
  v25 = *(v12 + 248);
  v24 = *(v12 + 256);
  v26 = *(v12 + 240);
  if (v22)
  {
    v27 = sub_192F9679C();
    v28 = sub_192F9679C();
    v29 = sub_192F958CC();
    OUTLINED_FUNCTION_103_3(v29);

    swift_willThrow();
    v21 = *(v25 + 8);
    v19 = v24;
    v20 = v26;
    goto LABEL_5;
  }

  swift_willThrow();
  (*(v25 + 8))(v24, v26);
LABEL_7:

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_31();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_192C8A690(char a1)
{
  *(v2 + 152) = v1;
  v4 = swift_task_alloc();
  *(v2 + 160) = v4;
  *v4 = v2;
  v4[1] = sub_192C8A728;

  return sub_192C8A9E4(a1);
}

uint64_t sub_192C8A728()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 168) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_192C8A83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_47_0();
  sub_19287AEE0();
  v35 = v14;
  OUTLINED_FUNCTION_38_6();
  v15._countAndFlagsBits = 0xD00000000000002DLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_89_4();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_65_0();
  v16();
  sub_1928F9340(v11 + 56, v11 + 88, &unk_1EAE131B0);
  OUTLINED_FUNCTION_59_6();
  sub_19286D180(v11 + 88, v10);
  OUTLINED_FUNCTION_67_7();
  v17 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v17 = v33;
  }

  OUTLINED_FUNCTION_91_3();
  if (v19)
  {
    OUTLINED_FUNCTION_20(v18);
    sub_19287AEE0();
    v17 = v34;
  }

  *(v17 + 16) = v12;
  OUTLINED_FUNCTION_16_20(v17 + 40 * v13);
  sub_19292E1F0(v11 + 56, &unk_1EAE131B0);
  v20._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_96_3(v21, v22, v23, sub_1928FA5C4);

  swift_willThrow();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_123_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v17, a10);
}

uint64_t sub_192C8A9E4(char a1)
{
  *(v2 + 272) = v1;
  *(v2 + 376) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  *(v2 + 280) = swift_task_alloc();
  v3 = sub_192F95A8C();
  *(v2 + 288) = v3;
  *(v2 + 296) = *(v3 - 8);
  *(v2 + 304) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192C8AAE0, 0, 0);
}

uint64_t sub_192C8AAE0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_6();
  v1[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v2 = OUTLINED_FUNCTION_90();
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 16) = xmmword_192FBCD50;
  v1[21] = v3;
  v4 = OUTLINED_FUNCTION_82_4();
  *(v4 + 144) = v5;
  v1[19] = v0;
  OUTLINED_FUNCTION_39_12(v4 + 144);
  *(v2 + 64) = 0;
  OUTLINED_FUNCTION_0_36();
  sub_192C904C8(v2, v6, v7, sub_192BB97CC);

  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v1[40] = v8;
  *v8 = v9;
  v8[1] = sub_192C8AC04;

  return sub_192C92A00();
}

uint64_t sub_192C8AC04()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8ACFC()
{
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 280);
  OUTLINED_FUNCTION_111_2();
  if (__swift_getEnumTagSinglePayload(v2, v3, v4) == 1)
  {
    sub_19292E1F0(v1, &unk_1EAE144B0);
    v5 = sub_192F9679C();
    v6 = sub_192F9679C();
    OUTLINED_FUNCTION_65_0();
    v10 = AMSError(v7, v8, v9, 0);

    swift_willThrow();

    OUTLINED_FUNCTION_7_27();

    return v11();
  }

  else
  {
    v13 = *(v0 + 376);
    OUTLINED_FUNCTION_65_0();
    v14();
    if (v13)
    {
      v15 = *(v0 + 272);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13200);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_19_19(inited, xmmword_192FBCD90);
      v18 = *(v15 + 24);
      v17 = *(v15 + 32);
      v19 = MEMORY[0x1E69E6158];
      inited[3].n128_u64[0] = v18;
      inited[3].n128_u64[1] = v17;
      inited[4].n128_u64[1] = v19;
      strcpy(&inited[5], "hasConsented");
      inited[5].n128_u8[13] = 0;
      inited[5].n128_u16[7] = -5120;
      inited[7].n128_u64[1] = MEMORY[0x1E69E6370];
      inited[6].n128_u8[0] = 1;

      OUTLINED_FUNCTION_48();
      *(v0 + 336) = sub_192F966CC();
      v20 = swift_task_alloc();
      *(v0 + 344) = v20;
      *v20 = v0;
      v20[1] = sub_192C8B09C;
      OUTLINED_FUNCTION_51(*(v0 + 304));
      OUTLINED_FUNCTION_111_2();

      return sub_192C90C8C(v21, v22, v23);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_47_11();
      v25 = MEMORY[0x1E69E6158];
      *(v24 + 16) = xmmword_192FBCD50;
      *(v0 + 200) = v25;
      v26 = OUTLINED_FUNCTION_82_4();
      *(v26 + 176) = v27;
      *(v0 + 184) = v13;
      OUTLINED_FUNCTION_39_12(v26 + 176);
      *(v24 + 64) = 0;
      OUTLINED_FUNCTION_0_36();
      sub_192C904C8(v24, v28, v29, sub_192BB97CC);

      v30 = swift_task_alloc();
      *(v0 + 360) = v30;
      *v30 = v0;
      v30[1] = sub_192C8B1D0;

      return sub_192C89D44(0, 0);
    }
  }
}

uint64_t sub_192C8B034()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_192C8B09C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_99_3();
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 352) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_192C8B1D0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 368) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8B2C8()
{
  OUTLINED_FUNCTION_3();
  v0 = OUTLINED_FUNCTION_100_4();
  v1(v0);

  OUTLINED_FUNCTION_7();

  return v2();
}

uint64_t sub_192C8B338()
{
  OUTLINED_FUNCTION_3();
  (*(v0[37] + 8))(v0[38], v0[36]);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192C8B3B8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  v1 = v0[46];
  v0[30] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0);
  type metadata accessor for AMSError(0);
  OUTLINED_FUNCTION_68_7();
  if (swift_dynamicCast())
  {
    v3 = v0[31];
    v0[32] = v3;
    sub_192C9479C(&qword_1EAE120F0, type metadata accessor for AMSError);
    sub_192F9588C();
    if (v0[33] == 2)
    {
      v4 = v0[46];
      v5 = OUTLINED_FUNCTION_90();
      v6 = MEMORY[0x1E69E6158];
      *(v5 + 16) = xmmword_192FBCD50;
      v0[29] = v6;
      v7 = OUTLINED_FUNCTION_82_4();
      *(v7 + 208) = v8;
      v0[27] = 0x8000000193020470;
      *(v5 + 48) = 0u;
      *(v5 + 32) = 0u;
      sub_19286D180(v7 + 208, v5 + 32);
      *(v5 + 64) = 0;
      OUTLINED_FUNCTION_0_36();
      sub_192C904C8(v5, v9, v10, sub_192BB97CC);

      v11 = OUTLINED_FUNCTION_100_4();
      v12(v11);

      OUTLINED_FUNCTION_7();
      goto LABEL_6;
    }
  }

  swift_willThrow();
  v13 = OUTLINED_FUNCTION_48();
  v14(v13);

  OUTLINED_FUNCTION_43();
LABEL_6:
  OUTLINED_FUNCTION_17_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_192C8B5C0(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = v2;
  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  *v6 = v3;
  v6[1] = sub_192C8B66C;

  return sub_192C8B928(a1, a2);
}

uint64_t sub_192C8B66C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 168) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_135();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_192C8B780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_47_0();
  sub_19287AEE0();
  v35 = v14;
  OUTLINED_FUNCTION_38_6();
  v15._countAndFlagsBits = 0xD00000000000002BLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_89_4();
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_65_0();
  v16();
  sub_1928F9340(v11 + 56, v11 + 88, &unk_1EAE131B0);
  OUTLINED_FUNCTION_59_6();
  sub_19286D180(v11 + 88, v10);
  OUTLINED_FUNCTION_67_7();
  v17 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v17 = v33;
  }

  OUTLINED_FUNCTION_91_3();
  if (v19)
  {
    OUTLINED_FUNCTION_20(v18);
    sub_19287AEE0();
    v17 = v34;
  }

  *(v17 + 16) = v12;
  OUTLINED_FUNCTION_16_20(v17 + 40 * v13);
  sub_19292E1F0(v11 + 56, &unk_1EAE131B0);
  v20._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_96_3(v21, v22, v23, sub_1928FA5C4);

  swift_willThrow();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_123_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v17, a10);
}

uint64_t sub_192C8B928(uint64_t a1, uint64_t a2)
{
  v3[69] = v2;
  v3[68] = a2;
  v3[67] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  v3[70] = swift_task_alloc();
  v4 = sub_192F95A8C();
  v3[71] = v4;
  v3[72] = *(v4 - 8);
  v3[73] = swift_task_alloc();
  v3[74] = type metadata accessor for DeveloperSilentAuthTokenResult();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192C8BA70, 0, 0);
}

uint64_t sub_192C8BA70()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_6();
  v1[78] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v2 = OUTLINED_FUNCTION_90();
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 16) = xmmword_192FBCD50;
  v1[32] = v3;
  v4 = OUTLINED_FUNCTION_82_4();
  *(v4 + 232) = v5;
  v1[30] = v0;
  OUTLINED_FUNCTION_39_12(v4 + 232);
  *(v2 + 64) = 0;
  OUTLINED_FUNCTION_0_36();
  sub_192C904C8(v2, v6, v7, sub_192BB97CC);

  v8 = swift_task_alloc();
  v1[79] = v8;
  *v8 = v1;
  OUTLINED_FUNCTION_76_5(v8);

  return sub_192C8F870();
}

uint64_t sub_192C8BB8C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[80] = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_57_8();
    OUTLINED_FUNCTION_17_0();

    return v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    v16 = v3[68];
    v17 = swift_task_alloc();
    if (v16)
    {
      v3[99] = v17;
      *v17 = v5;
      v18 = sub_192C8D7F4;
    }

    else
    {
      v3[81] = v17;
      *v17 = v5;
      v18 = sub_192C8BD48;
    }

    v17[1] = v18;
    OUTLINED_FUNCTION_17_0();

    return sub_192C908CC();
  }
}

uint64_t sub_192C8BD48()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 656) = v0;

  if (!v0)
  {
    *(v5 + 664) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C8BE50()
{
  OUTLINED_FUNCTION_5();
  if (*(v0 + 664) > 0.0 && (v1 = OUTLINED_FUNCTION_50_8(*(v0 + 552)), *(v0 + 96) = v3, *(v0 + 112) = v2, *(v0 + 128) = v1, v4 = sub_192F9679C(), v5 = [objc_opt_self() processIsEntitledToUse_], v4, v5))
  {
    v6 = *(v0 + 552);
    v7 = *(v6 + 24);
    v8 = *(v6 + 32);
    OUTLINED_FUNCTION_15_19(&dword_192FC9560);
    v16 = v9;
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    *(v0 + 672) = v10;
    *v10 = v11;
    v10[1] = sub_192C8C044;
    v12 = *(v0 + 640);
    v13 = *(v0 + 616);

    return v16(v13, v7, v8, v12);
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 792) = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_76_5(v15);

    return sub_192C908CC();
  }
}

uint64_t sub_192C8BFBC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();

  OUTLINED_FUNCTION_16_21();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_192C8C044()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 680) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8C13C()
{
  OUTLINED_FUNCTION_178();
  v1 = *(v0 + 592);
  sub_19287AEE0();
  v22 = v2;
  OUTLINED_FUNCTION_38_6();
  v3._countAndFlagsBits = 0xD000000000000015;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v3);
  *(v0 + 480) = v1;
  __swift_allocate_boxed_opaque_existential_0((v0 + 456));
  v4 = OUTLINED_FUNCTION_102_3();
  sub_192C87324(v4, v5);
  sub_1928F9340(v0 + 456, v0 + 488, &unk_1EAE131B0);
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  sub_19286D180(v0 + 488, v0 + 192);
  OUTLINED_FUNCTION_67_7();
  v6 = v22;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v6 = v20;
  }

  v7 = *(v6 + 16);
  if (v7 >= *(v6 + 24) >> 1)
  {
    sub_19287AEE0();
    v6 = v21;
  }

  v8 = *(v0 + 640);
  v9 = *(v0 + 592);
  v10 = *(v0 + 536);
  *(v6 + 16) = v7 + 1;
  OUTLINED_FUNCTION_16_20(v6 + 40 * v7);
  sub_19292E1F0(v0 + 456, &unk_1EAE131B0);
  v11._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  OUTLINED_FUNCTION_0_36();
  sub_192C904C8(v6, v12, v13, sub_192BB97CC);

  v10[3] = v9;
  OUTLINED_FUNCTION_1_43();
  v10[4] = sub_192C9479C(v14, v15);
  __swift_allocate_boxed_opaque_existential_0(v10);
  v16 = OUTLINED_FUNCTION_102_3();
  sub_192C87BA0(v16, v17);

  OUTLINED_FUNCTION_6_33();

  OUTLINED_FUNCTION_7();

  return v18();
}

uint64_t sub_192C8C37C()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[85];
  OUTLINED_FUNCTION_107_3();
  v2 = OUTLINED_FUNCTION_90();
  *(v2 + 16) = xmmword_192FBCD50;
  v0[56] = MEMORY[0x1E69E6158];
  v0[53] = 0xD00000000000001BLL;
  v0[54] = 0x8000000193020270;
  OUTLINED_FUNCTION_12_1(v2);
  sub_19286D180((v0 + 53), v3);
  *(v2 + 64) = 0;
  OUTLINED_FUNCTION_0_36();
  sub_192C904C8(v2, v4, v5, sub_192BB97CC);

  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v0[86] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_37_11(v6);

  return sub_192C90A78();
}

uint64_t sub_192C8C47C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 696) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8C574()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  v1 = v0[70];
  OUTLINED_FUNCTION_111_2();
  if (__swift_getEnumTagSinglePayload(v2, v3, v4) == 1)
  {
    v5 = v0[80];
    sub_19292E1F0(v1, &unk_1EAE144B0);
    v6 = sub_192F9679C();
    v7 = sub_192F9679C();
    OUTLINED_FUNCTION_65_0();
    AMSError(v8, v9, v10, 0);

    swift_willThrow();
    OUTLINED_FUNCTION_6_33();

    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_17_0();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    v20 = v0[69];
    OUTLINED_FUNCTION_65_0();
    v21();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13200);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_19_19(inited, xmmword_192FBCD50);
    v23 = *(v20 + 24);
    v0[88] = v23;
    v24 = *(v20 + 32);
    v0[89] = v24;
    inited[4].n128_u64[1] = MEMORY[0x1E69E6158];
    inited[3].n128_u64[0] = v23;
    inited[3].n128_u64[1] = v24;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_48();
    v0[90] = sub_192F966CC();
    v25 = swift_task_alloc();
    v0[91] = v25;
    *v25 = v0;
    v25[1] = sub_192C8C83C;
    OUTLINED_FUNCTION_51(v0[73]);
    OUTLINED_FUNCTION_17_0();

    return sub_192C90C8C(v26, v27, v28);
  }
}

uint64_t sub_192C8C7B4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();

  OUTLINED_FUNCTION_16_21();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_192C8C83C()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v2 + 736) = v6;
  *(v2 + 744) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8C974()
{
  v3 = [*(v0 + 736) responseStatusCode];
  v4 = *(v0 + 736);
  if (v3 == 204)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14C68);
    OUTLINED_FUNCTION_68_7();
    sub_1928FDAEC(v5, v6);
    v7 = swift_allocError();
    v8 = v7;
LABEL_16:
    swift_willThrow();
    goto LABEL_17;
  }

  v1 = &selRef_isAnonymous;
  if ([*(v0 + 736) object])
  {
    sub_192F9715C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  *(v0 + 296) = v27;
  *(v0 + 312) = v28;
  if (!*(v0 + 320))
  {

    sub_19292E1F0(v0 + 296, &unk_1EAE131B0);
LABEL_12:
    v9 = *(v0 + 736);
    v2 = 0xD000000000000010;
    v10 = sub_192F9679C();
    sub_192F972BC();
    MEMORY[0x193B10CE0](0xD000000000000036, 0x80000001930201E0);
    if ([v9 object])
    {
      sub_192F9715C();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 328) = 0u;
      *(v0 + 344) = 0u;
    }

    v4 = *(v0 + 736);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131B0);
    v11 = sub_192F9682C();
    MEMORY[0x193B10CE0](v11);

    v12 = sub_192F9679C();

    v7 = AMSError(301, v10, v12, 0);

    v8 = v7;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131E0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_12;
  }

  v8 = *(v0 + 744);
  v1 = *(v0 + 528);
  DeveloperSilentAuthTokenResult.init(withDictionary:account:bundleId:)(v1, *(v0 + 640), *(v0 + 704), *(v0 + 712), *(v0 + 600));
  if (v8)
  {
    v7 = v8;
    v4 = *(v0 + 736);
LABEL_17:

    if (sub_192C925E0(v7) & 1) != 0 || (OUTLINED_FUNCTION_70_4(), v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14C68), (OUTLINED_FUNCTION_49_10()))
    {
      OUTLINED_FUNCTION_31_11();
      OUTLINED_FUNCTION_1_43();
      v15 = sub_192C9479C(v13, v14);
      OUTLINED_FUNCTION_116_1(v15);
      v16 = OUTLINED_FUNCTION_73_6();
      if (!v8)
      {
        OUTLINED_FUNCTION_3_40(v16);

        v19 = sub_192F95CFC();
        OUTLINED_FUNCTION_32_11(v19);

        v20 = OUTLINED_FUNCTION_53_9();
        v21(v20);
        OUTLINED_FUNCTION_6_33();

        OUTLINED_FUNCTION_7();
LABEL_24:

        return v22();
      }

      v17 = OUTLINED_FUNCTION_11_26();
      v18(v17);

      OUTLINED_FUNCTION_117_2();
    }

    else
    {
      OUTLINED_FUNCTION_33_12();
      swift_willThrow();

      v23 = OUTLINED_FUNCTION_52_8();
      v24(v23);
    }

    OUTLINED_FUNCTION_16_21();

    OUTLINED_FUNCTION_43();
    goto LABEL_24;
  }

  v26 = swift_task_alloc();
  *(v0 + 752) = v26;
  *v26 = v0;
  OUTLINED_FUNCTION_76_5(v26);

  return sub_192C908CC();
}

uint64_t sub_192C8CE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_178();
  v16 = *(v13 + 744);
  if (sub_192C925E0(v16) & 1) != 0 || (OUTLINED_FUNCTION_70_4(), v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14C68), (OUTLINED_FUNCTION_49_10()))
  {
    OUTLINED_FUNCTION_31_11();
    OUTLINED_FUNCTION_1_43();
    v19 = sub_192C9479C(v17, v18);
    OUTLINED_FUNCTION_116_1(v19);
    v20 = OUTLINED_FUNCTION_73_6();
    if (!v12)
    {
      OUTLINED_FUNCTION_3_40(v20);

      v23 = sub_192F95CFC();
      OUTLINED_FUNCTION_32_11(v23);

      v24 = OUTLINED_FUNCTION_53_9();
      v25(v24);
      OUTLINED_FUNCTION_6_33();

      OUTLINED_FUNCTION_7();
      goto LABEL_8;
    }

    v21 = OUTLINED_FUNCTION_11_26();
    v22(v21);

    OUTLINED_FUNCTION_117_2();
  }

  else
  {
    OUTLINED_FUNCTION_33_12();
    swift_willThrow();

    v26 = OUTLINED_FUNCTION_52_8();
    v27(v26);
  }

  OUTLINED_FUNCTION_16_21();

  OUTLINED_FUNCTION_43();
LABEL_8:
  OUTLINED_FUNCTION_31();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_192C8CFEC()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 760) = v0;

  if (!v0)
  {
    *(v5 + 768) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C8D0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_47_0();
  if (*(v10 + 768) > 0.0 && (v14 = OUTLINED_FUNCTION_50_8(*(v10 + 552)), *(v10 + 144) = v16, *(v10 + 160) = v15, *(v10 + 176) = v14, v17 = sub_192F9679C(), v18 = [objc_opt_self() processIsEntitledToUse_], v17, v18))
  {
    OUTLINED_FUNCTION_15_19(&dword_192FC9558);
    v44 = v19;
    v20 = swift_task_alloc();
    *(v10 + 776) = v20;
    *v20 = v10;
    v20[1] = sub_192C8D460;
    OUTLINED_FUNCTION_51(*(v10 + 600));
    OUTLINED_FUNCTION_85();

    return v23(v21, v22, v23, v24, v25, v26, v27, v28, v44, a10);
  }

  else
  {

    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_1_43();
    v11[4] = sub_192C9479C(v30, v31);
    __swift_allocate_boxed_opaque_existential_0(v11);
    v32 = OUTLINED_FUNCTION_96_2();
    sub_192C87BA0(v32, v33);

    v34 = OUTLINED_FUNCTION_102();
    v35(v34);
    OUTLINED_FUNCTION_6_33();

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_85();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
  }
}

uint64_t sub_192C8D2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_178();
  v16 = *(v13 + 600);

  sub_192C87388(v16);
  v17 = *(v13 + 760);
  if (sub_192C925E0(v17) & 1) != 0 || (OUTLINED_FUNCTION_70_4(), v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14C68), (OUTLINED_FUNCTION_49_10()))
  {
    OUTLINED_FUNCTION_31_11();
    OUTLINED_FUNCTION_1_43();
    v20 = sub_192C9479C(v18, v19);
    OUTLINED_FUNCTION_116_1(v20);
    v21 = OUTLINED_FUNCTION_73_6();
    if (!v12)
    {
      OUTLINED_FUNCTION_3_40(v21);

      v24 = sub_192F95CFC();
      OUTLINED_FUNCTION_32_11(v24);

      v25 = OUTLINED_FUNCTION_53_9();
      v26(v25);
      OUTLINED_FUNCTION_6_33();

      OUTLINED_FUNCTION_7();
      goto LABEL_8;
    }

    v22 = OUTLINED_FUNCTION_11_26();
    v23(v22);

    OUTLINED_FUNCTION_117_2();
  }

  else
  {
    OUTLINED_FUNCTION_33_12();
    swift_willThrow();

    v27 = OUTLINED_FUNCTION_52_8();
    v28(v27);
  }

  OUTLINED_FUNCTION_16_21();

  OUTLINED_FUNCTION_43();
LABEL_8:
  OUTLINED_FUNCTION_31();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_192C8D460()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 784) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8D560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_1_43();
  v10[4] = sub_192C9479C(v13, v14);
  __swift_allocate_boxed_opaque_existential_0(v10);
  v15 = OUTLINED_FUNCTION_96_2();
  sub_192C87BA0(v15, v16);

  v17 = OUTLINED_FUNCTION_102();
  v18(v17);
  OUTLINED_FUNCTION_6_33();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_85();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_192C8D63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_178();
  v16 = *(v13 + 600);

  sub_192C87388(v16);
  v17 = *(v13 + 784);
  if (sub_192C925E0(v17) & 1) != 0 || (OUTLINED_FUNCTION_70_4(), v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14C68), (OUTLINED_FUNCTION_49_10()))
  {
    OUTLINED_FUNCTION_31_11();
    OUTLINED_FUNCTION_1_43();
    v20 = sub_192C9479C(v18, v19);
    OUTLINED_FUNCTION_116_1(v20);
    v21 = OUTLINED_FUNCTION_73_6();
    if (!v12)
    {
      OUTLINED_FUNCTION_3_40(v21);

      v24 = sub_192F95CFC();
      OUTLINED_FUNCTION_32_11(v24);

      v25 = OUTLINED_FUNCTION_53_9();
      v26(v25);
      OUTLINED_FUNCTION_6_33();

      OUTLINED_FUNCTION_7();
      goto LABEL_8;
    }

    v22 = OUTLINED_FUNCTION_11_26();
    v23(v22);

    OUTLINED_FUNCTION_117_2();
  }

  else
  {
    OUTLINED_FUNCTION_33_12();
    swift_willThrow();

    v27 = OUTLINED_FUNCTION_52_8();
    v28(v27);
  }

  OUTLINED_FUNCTION_16_21();

  OUTLINED_FUNCTION_43();
LABEL_8:
  OUTLINED_FUNCTION_31();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_192C8D7F4()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 800) = v0;

  if (!v0)
  {
    *(v5 + 808) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C8D8FC()
{
  OUTLINED_FUNCTION_5();
  if (*(v1 + 808) == 0.0)
  {
    OUTLINED_FUNCTION_107_3();
    v2 = OUTLINED_FUNCTION_47_11();
    *(v2 + 16) = xmmword_192FBCD50;
    *(v1 + 416) = MEMORY[0x1E69E6158];
    *(v1 + 392) = 0xD00000000000001ELL;
    *(v1 + 400) = v0;
    OUTLINED_FUNCTION_12_1(v2);
    v4 = v1 + 392;
LABEL_5:
    sub_19286D180(v4, v3);
    *(v2 + 64) = 0;
    OUTLINED_FUNCTION_0_36();
    v7 = sub_192BB97CC;
LABEL_6:
    sub_192C904C8(v2, v5, v6, v7);

    goto LABEL_7;
  }

  if (*(v1 + 544) == 1)
  {
    OUTLINED_FUNCTION_107_3();
    v2 = OUTLINED_FUNCTION_47_11();
    *(v2 + 16) = xmmword_192FBCD50;
    *(v1 + 384) = MEMORY[0x1E69E6158];
    *(v1 + 360) = 0xD00000000000002BLL;
    *(v1 + 368) = v0;
    OUTLINED_FUNCTION_12_1(v2);
    v4 = v1 + 360;
    goto LABEL_5;
  }

  v11 = sub_192F9679C();
  v12 = [objc_opt_self() processIsEntitledToUse_];

  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_107_3();
    v2 = OUTLINED_FUNCTION_47_11();
    *(v2 + 16) = xmmword_192FBCD50;
    *(v1 + 288) = MEMORY[0x1E69E6158];
    *(v1 + 264) = 0xD000000000000021;
    *(v1 + 272) = v0;
    OUTLINED_FUNCTION_12_1(v2);
    sub_19286D180(v1 + 264, v13);
    *(v2 + 64) = 0;
    OUTLINED_FUNCTION_2_38();
    v7 = sub_1928FA5C4;
    goto LABEL_6;
  }

LABEL_7:
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v1 + 688) = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_37_11(v8);

  return sub_192C90A78();
}

uint64_t sub_192C8DAEC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();

  OUTLINED_FUNCTION_16_21();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_192C8DB74(uint64_t a1, uint64_t a2)
{
  v3[24] = a1;
  v3[25] = v2;
  v5 = swift_task_alloc();
  v3[26] = v5;
  *v5 = v3;
  v5[1] = sub_192C8DC14;

  return sub_192C8E180((v3 + 2), a2);
}

uint64_t sub_192C8DC14()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8DD0C()
{
  OUTLINED_FUNCTION_47_0();
  if (*(v0 + 40))
  {
    sub_19292D380((v0 + 16), *(v0 + 192));
    OUTLINED_FUNCTION_7();
  }

  else
  {
    sub_19292E1F0(v0 + 16, &qword_1EAE14938);
    v2 = sub_192F9679C();
    v3 = sub_192F9679C();
    OUTLINED_FUNCTION_68_7();
    AMSError(v4, v5, v6, 0);

    swift_willThrow();
    sub_19287AEE0();
    v22 = v7;
    v8._countAndFlagsBits = 0xD00000000000002FLL;
    v8._object = 0x800000019301FB90;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
    swift_getErrorValue();
    *(v0 + 120) = *(v0 + 168);
    __swift_allocate_boxed_opaque_existential_0((v0 + 96));
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_68_7();
    v9();
    sub_1928F9340(v0 + 96, v0 + 128, &unk_1EAE131B0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_19286D180(v0 + 128, v0 + 56);
    *(v0 + 88) = 3;
    v10 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_113();
      sub_19287AEE0();
      v10 = v20;
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      OUTLINED_FUNCTION_30_14(v11);
      sub_19287AEE0();
      v10 = v21;
    }

    *(v10 + 16) = v12 + 1;
    v13 = v10 + 40 * v12;
    v14 = *(v0 + 56);
    v15 = *(v0 + 72);
    *(v13 + 64) = *(v0 + 88);
    *(v13 + 32) = v14;
    *(v13 + 48) = v15;
    sub_19292E1F0(v0 + 96, &unk_1EAE131B0);
    v16._countAndFlagsBits = OUTLINED_FUNCTION_44();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    OUTLINED_FUNCTION_2_38();
    sub_192C904C8(v10, v17, v18, sub_1928FA5C4);

    swift_willThrow();
    OUTLINED_FUNCTION_43();
  }

  return v1();
}

uint64_t sub_192C8DFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_47_0();
  sub_19287AEE0();
  v32 = v11;
  OUTLINED_FUNCTION_38_6();
  v12._countAndFlagsBits = 0xD00000000000002FLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  swift_getErrorValue();
  v13 = v10[20];
  v10[15] = v10[21];
  __swift_allocate_boxed_opaque_existential_0(v10 + 12);
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_68_7();
  v14();
  sub_1928F9340((v10 + 12), (v10 + 16), &unk_1EAE131B0);
  OUTLINED_FUNCTION_105_3();
  sub_19286D180((v10 + 16), v13);
  OUTLINED_FUNCTION_67_7();
  v15 = v32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v15 = v30;
  }

  v17 = *(v15 + 16);
  v16 = *(v15 + 24);
  if (v17 >= v16 >> 1)
  {
    OUTLINED_FUNCTION_20(v16);
    sub_19287AEE0();
    v15 = v31;
  }

  *(v15 + 16) = v17 + 1;
  OUTLINED_FUNCTION_16_20(v15 + 40 * v17);
  sub_19292E1F0((v10 + 12), &unk_1EAE131B0);
  v18._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  OUTLINED_FUNCTION_2_38();
  sub_192C904C8(v15, v19, v20, sub_1928FA5C4);

  swift_willThrow();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_123_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v15, a10);
}

uint64_t sub_192C8E180(uint64_t a1, uint64_t a2)
{
  v3[105] = v2;
  v3[104] = a2;
  v3[103] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  v3[106] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192C8E224, 0, 0);
}

void sub_192C8E224()
{
  if (sub_192C859A0())
  {
    sub_192874CD0(0, &qword_1EAE14A98);
    v1 = sub_192C92CA4();
    if (!v1)
    {
      v1 = [objc_opt_self() mainBundle];
    }

    v0[107] = v1;
    v2 = v0[105];
    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_34_13(0xD000000000000021, v3 | 0x8000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v4 = OUTLINED_FUNCTION_90();
    *(v4 + 16) = xmmword_192FBCD50;
    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1928FDB30();
    *(v4 + 64) = v7;
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    swift_bridgeObjectRetain_n();
    v8 = sub_192F967FC();
    v10 = v9;

    v0[108] = v8;
    v0[109] = v10;
    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_34_13(0xD000000000000024, v11 | 0x8000000000000000);
    v12 = OUTLINED_FUNCTION_90();
    *(v12 + 16) = xmmword_192FBCD50;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = v7;
    *(v12 + 32) = v5;
    *(v12 + 40) = v6;
    v13 = sub_192F967FC();
    v15 = v14;

    v0[110] = v13;
    v0[111] = v15;
    OUTLINED_FUNCTION_122_0();
    v0[88] = OUTLINED_FUNCTION_34_13(0xD00000000000002ALL, v16 | 0x8000000000000000);
    v0[89] = v17;
    v0[112] = sub_192F969DC();
    v0[113] = v18;
    OUTLINED_FUNCTION_122_0();
    v0[90] = OUTLINED_FUNCTION_34_13(0xD00000000000002CLL, v19 | 0x8000000000000000);
    v0[91] = v20;
    v0[114] = sub_192F969DC();
    v0[115] = v21;
    OUTLINED_FUNCTION_15_19(&dword_192FC94D8);
    swift_task_alloc();
    OUTLINED_FUNCTION_42_0();
    v0[116] = v22;
    *v22 = v23;
    v22[1] = sub_192C8E5B4;
    OUTLINED_FUNCTION_68();

    __asm { BR              X2 }
  }

  v26 = OUTLINED_FUNCTION_85_3();
  v27 = OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_65_0();
  AMSError(v28, v29, v30, 0);

  swift_willThrow();

  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_68();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_192C8E5B4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 936) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8E6E0()
{
  __swift_project_boxed_opaque_existential_0((v0 + 464), *(v0 + 488));
  v1 = OUTLINED_FUNCTION_102();
  if (v2(v1) == 2)
  {
    v3 = *(v0 + 856);
    v4 = *(v0 + 824);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
    v5 = OUTLINED_FUNCTION_90();
    *(v5 + 16) = xmmword_192FBCD50;
    *(v0 + 696) = MEMORY[0x1E69E6158];
    *(v0 + 672) = 0xD00000000000002CLL;
    *(v0 + 680) = 0x80000001930200F0;
    OUTLINED_FUNCTION_12_1(v5);
    sub_19286D180(v0 + 672, v6);
    *(v5 + 64) = 0;
    OUTLINED_FUNCTION_0_36();
    sub_192C904C8(v5, v7, v8, sub_192BB97CC);

    sub_19292D2FC(v0 + 464, v4);
    __swift_destroy_boxed_opaque_existential_0(v0 + 464);

    OUTLINED_FUNCTION_7();

    return v9();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 464);
    v11 = [objc_allocWithZone(AMSEngagementRequest) init];
    *(v0 + 944) = v11;
    sub_192F95A3C();
    sub_192F95A8C();
    OUTLINED_FUNCTION_111_2();
    v15 = 0;
    if (__swift_getEnumTagSinglePayload(v12, v13, v14) != 1)
    {
      v15 = sub_192F9596C();
      OUTLINED_FUNCTION_30_2();
      v16 = OUTLINED_FUNCTION_48();
      v17(v16);
    }

    v32 = *(v0 + 912);
    v33 = *(v0 + 920);
    v31 = *(v0 + 904);
    v18 = *(v0 + 896);
    v19 = *(v0 + 888);
    v20 = *(v0 + 880);
    v21 = *(v0 + 872);
    v22 = *(v0 + 864);
    [v11 setURL_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14AA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_192FBED20;
    *(v0 + 736) = 0x786554656C746974;
    *(v0 + 744) = 0xE900000000000074;
    v24 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_51_0();
    sub_192F9725C();
    *(inited + 96) = v24;
    *(inited + 72) = v22;
    *(inited + 80) = v21;
    strcpy((v0 + 752), "subtitleText");
    *(v0 + 765) = 0;
    *(v0 + 766) = -5120;
    OUTLINED_FUNCTION_51_0();
    sub_192F9725C();
    *(inited + 168) = v24;
    *(inited + 144) = v20;
    *(inited + 152) = v19;
    *(v0 + 768) = 0x65546E6F74747562;
    *(v0 + 776) = 0xEA00000000007478;
    OUTLINED_FUNCTION_51_0();
    sub_192F9725C();
    *(inited + 240) = v24;
    *(inited + 216) = v18;
    *(inited + 224) = v31;
    *(v0 + 784) = 0xD000000000000013;
    *(v0 + 792) = 0x800000019301FFD0;
    OUTLINED_FUNCTION_51_0();
    sub_192F9725C();
    *(inited + 312) = v24;
    *(inited + 288) = v32;
    *(inited + 296) = v33;
    OUTLINED_FUNCTION_39();
    sub_192F966CC();
    v25 = sub_192F9667C();

    [v11 setClientData_];

    v26 = [objc_allocWithZone(AMSSystemEngagementTask) initWithRequest_];
    *(v0 + 952) = v26;
    v27 = [v26 present];
    OUTLINED_FUNCTION_99_3();
    *(v0 + 960) = v28;
    *(v0 + 16) = v29;
    *(v0 + 56) = v0 + 816;
    *(v0 + 24) = sub_192C8EC78;
    v30 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE142E8);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_192C92848;
    *(v0 + 424) = &block_descriptor_20;
    *(v0 + 432) = v30;
    [v11 resultWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_192C8EC14()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_192C8EC78()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 968) = *(v3 + 48);
  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_192C8ED74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_178();
  v13 = *(v12 + 960);
  v14 = *(v12 + 816);
  *(v12 + 976) = v14;

  v15 = [v14 userInfo];
  v16 = sub_192F9669C();

  v17 = sub_192CE9878(v16);

  if (!v17)
  {
    goto LABEL_12;
  }

  sub_192952700(0x6E6F69746361, 0xE600000000000000);

  if (!*(v12 + 568))
  {
    sub_19292E1F0(v12 + 544, &unk_1EAE131B0);
    goto LABEL_12;
  }

  v18 = MEMORY[0x1E69E6158];
  if ((swift_dynamicCast() & 1) == 0 || (v19 = sub_192C89638(), *(v12 + 537) = v19, v19 == 2))
  {
LABEL_12:
    v37 = *(v12 + 952);
    v38 = *(v12 + 944);
    v39 = *(v12 + 856);
    v40 = sub_192F9679C();
    v41 = sub_192F9679C();
    AMSError(7, v40, v41, 0);

    swift_willThrow();

    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_31();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
  }

  if ((v19 & 1) == 0)
  {

LABEL_16:
    OUTLINED_FUNCTION_15_19(&dword_192FC94E0);
    a9 = v50;
    v51 = swift_task_alloc();
    *(v12 + 984) = v51;
    *v51 = v12;
    v51[1] = sub_192C8F190;
    OUTLINED_FUNCTION_31();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
  }

  v20 = OUTLINED_FUNCTION_60_2();

  if (v20)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v21 = OUTLINED_FUNCTION_90();
  *(v21 + 16) = xmmword_192FBCD50;
  *(v12 + 600) = v18;
  *(v12 + 576) = 0xD000000000000024;
  *(v12 + 584) = 0x80000001930200A0;
  OUTLINED_FUNCTION_12_1(v21);
  sub_19286D180(v12 + 576, v22);
  *(v21 + 64) = 0;
  OUTLINED_FUNCTION_0_36();
  sub_192C904C8(v21, v23, v24, sub_192BB97CC);

  OUTLINED_FUNCTION_15_19(&dword_192FC94D8);
  v52 = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v12 + 1016) = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_81_7(v26);
  OUTLINED_FUNCTION_31();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, v52, a10, a11, a12);
}

uint64_t sub_192C8F104()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  v1 = v0[120];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[107];
  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_192C8F190()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 992) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8F288()
{
  OUTLINED_FUNCTION_47_0();
  v1 = 0x6465746E617247;
  v2 = (v0 + 504);
  v3 = *(v0 + 537);
  sub_19287AEE0();
  v23 = v4;
  OUTLINED_FUNCTION_31_0();
  v5._countAndFlagsBits = 0xD000000000000018;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v5);
  if ((v3 & 1) != 0 && (OUTLINED_FUNCTION_60_2() & 1) == 0)
  {
    v1 = 0x64657070696B53;
  }

  *(v0 + 632) = MEMORY[0x1E69E6158];
  *(v0 + 608) = v1;
  *(v0 + 616) = 0xE700000000000000;
  sub_1928F9340(v0 + 608, v0 + 640, &unk_1EAE131B0);
  *v2 = 0u;
  *(v0 + 520) = 0u;
  sub_19286D180(v0 + 640, v0 + 504);
  *(v0 + 536) = 3;
  v6 = v23;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v6 = v20;
  }

  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  if (v8 >= v7 >> 1)
  {
    OUTLINED_FUNCTION_30_14(v7);
    sub_19287AEE0();
    v6 = v21;
  }

  *(v6 + 16) = v8 + 1;
  v9 = v6 + 40 * v8;
  v10 = *v2;
  v11 = *(v0 + 520);
  *(v9 + 64) = *(v0 + 536);
  *(v9 + 32) = v10;
  *(v9 + 48) = v11;
  sub_19292E1F0(v0 + 608, &unk_1EAE131B0);
  v12._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  OUTLINED_FUNCTION_0_36();
  sub_192C904C8(v6, v13, v14, sub_192BB97CC);

  OUTLINED_FUNCTION_15_19(&dword_192FC94D8);
  v22 = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 1000) = v16;
  *v16 = v17;
  v18 = OUTLINED_FUNCTION_81_7(v16);

  return v22(v18);
}

uint64_t sub_192C8F4B4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48_11();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192C8F528()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 1008) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8F620()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48_11();

  OUTLINED_FUNCTION_7();

  return v3();
}

uint64_t sub_192C8F690()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48_11();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192C8F704()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 1024) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C8F7FC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48_11();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_192C8F890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_178();
  v13 = v12[40];
  v14 = *(v13 + 56);
  v12[41] = v14;
  v15 = *v13;
  v12[42] = *v13;
  if (v14)
  {
    v16 = sub_192F967CC();
    v18 = v17;
    if (v16 == sub_192F967CC() && v18 == v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_192F9775C();
    }

    v24 = v15;
    v23 = v14;

    if (v21)
    {
      if (v15)
      {
        v25 = AMSAccountMediaTypeAppStoreSandbox;
        v12[43] = AMSAccountMediaTypeAppStoreSandbox;

        sub_192874CD0(0, &qword_1EAE120B0);
        v26 = v25;
        v12[44] = static ACAccountStore.sharedAccountStore(forMediaType:)(v25);
        sub_192BAAE84(v24);
        v12[45] = v27;
        ACAccount.dsid.getter();
        OUTLINED_FUNCTION_15_19(&unk_192FCD9B8);
        v66 = v28;
        v29 = swift_task_alloc();
        v12[46] = v29;
        *v29 = v12;
        v29[1] = sub_192C8FC68;
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_31();

        return v36(v30, v31, v32, v33, v34, v35, v36, v37, v66, a10, a11, a12);
      }

      goto LABEL_19;
    }

    if (!v15)
    {
LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
      v47 = OUTLINED_FUNCTION_90();
      *(v47 + 16) = xmmword_192FBCD50;
      v12[15] = MEMORY[0x1E69E6158];
      v12[12] = 0xD000000000000030;
      v12[13] = 0x8000000193020390;
      *(v47 + 48) = 0u;
      *(v47 + 32) = 0u;
      v48 = v23;
      v49 = OUTLINED_FUNCTION_39();
      sub_19286D180(v49, v50);
      *(v47 + 64) = 0;
      OUTLINED_FUNCTION_0_36();
      sub_192C904C8(v47, v51, v52, sub_192BB97CC);

      sub_192874CD0(0, &qword_1EAE120B0);
      v53 = v48;
      v12[49] = static ACAccountStore.sharedAccountStore(forMediaType:)(v14);

      OUTLINED_FUNCTION_15_19(&unk_192FC9528);
      a9 = v54;
      v55 = swift_task_alloc();
      v12[50] = v55;
      *v55 = v12;
      v55[1] = sub_192C900A8;
      OUTLINED_FUNCTION_31();

      return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12);
    }
  }

  else
  {
    v22 = v15;
    if (!v15)
    {
      v64 = OUTLINED_FUNCTION_43_13();
      v65 = OUTLINED_FUNCTION_69_7();
      OUTLINED_FUNCTION_4_40(v65);

      swift_willThrow();
      OUTLINED_FUNCTION_7_27();
      OUTLINED_FUNCTION_31();

      return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12);
    }

    v23 = 0;
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_31();

  return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_192C8FC68()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_0();
  *v5 = v4;
  *(v7 + 376) = v6;
  *(v7 + 384) = v0;

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_192C8FD84()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);

  v3 = *(v0 + 344);
  if (v1)
  {

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_17_0();

    return v6(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_43_13();
    v14 = OUTLINED_FUNCTION_69_7();
    OUTLINED_FUNCTION_4_40(v14);

    swift_willThrow();
    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_17_0();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_192C8FE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  sub_19287AEE0();
  v42 = v15;
  OUTLINED_FUNCTION_114_1("Error while fetching sandbox account: ");
  swift_getErrorValue();
  v16 = v14[35];
  v14[27] = v14[36];
  __swift_allocate_boxed_opaque_existential_0(v14 + 24);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_65_0();
  v17();
  sub_1928F9340((v14 + 24), (v14 + 28), &unk_1EAE131B0);
  OUTLINED_FUNCTION_105_3();
  sub_19286D180((v14 + 28), v16);
  OUTLINED_FUNCTION_67_7();
  v18 = v42;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v18 = v40;
  }

  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    OUTLINED_FUNCTION_30_14(v19);
    sub_19287AEE0();
    v18 = v41;
  }

  v21 = v14[48];
  v22 = v14[44];
  v23 = v14[42];
  v18[2] = v20 + 1;
  OUTLINED_FUNCTION_16_20(&v18[5 * v20]);
  sub_19292E1F0((v14 + 24), &unk_1EAE131B0);
  v24._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_96_3(v25, v26, v27, sub_1928FA5C4);

  v28 = v14[43];
  OUTLINED_FUNCTION_31_0();
  v29 = sub_192F9679C();
  v30 = sub_192F9679C();
  OUTLINED_FUNCTION_4_40(v30);

  swift_willThrow();
  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_94();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v18, a11, a12, a13, a14);
}

uint64_t sub_192C900A8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 408) = v4;
  *(v2 + 416) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_192C901A8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 408);
  v2 = *(v0 + 328);

  v3 = *(v0 + 328);
  if (v1)
  {

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_17_0();

    return v6(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_43_13();
    v14 = OUTLINED_FUNCTION_69_7();
    OUTLINED_FUNCTION_4_40(v14);

    swift_willThrow();
    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_17_0();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22);
  }
}

uint64_t sub_192C90298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89_0();
  sub_19287AEE0();
  v42 = v15;
  OUTLINED_FUNCTION_114_1("Error while fetching sandbox account: ");
  swift_getErrorValue();
  v16 = v14[32];
  v14[19] = v14[33];
  __swift_allocate_boxed_opaque_existential_0(v14 + 16);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_65_0();
  v17();
  sub_1928F9340((v14 + 16), (v14 + 20), &unk_1EAE131B0);
  OUTLINED_FUNCTION_59_6();
  sub_19286D180((v14 + 20), v16);
  OUTLINED_FUNCTION_67_7();
  v18 = v42;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v18 = v40;
  }

  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    OUTLINED_FUNCTION_30_14(v19);
    sub_19287AEE0();
    v18 = v41;
  }

  v21 = v14[52];
  v22 = v14[49];
  v23 = v14[41];
  v18[2] = v20 + 1;
  OUTLINED_FUNCTION_16_20(&v18[5 * v20]);
  sub_19292E1F0((v14 + 16), &unk_1EAE131B0);
  v24._countAndFlagsBits = OUTLINED_FUNCTION_44();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
  OUTLINED_FUNCTION_2_38();
  OUTLINED_FUNCTION_96_3(v25, v26, v27, sub_1928FA5C4);

  v28 = v14[41];
  OUTLINED_FUNCTION_31_0();
  v29 = sub_192F9679C();
  v30 = sub_192F9679C();
  OUTLINED_FUNCTION_4_40(v30);

  swift_willThrow();
  OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_94();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v18, a11, a12, a13, a14);
}

uint64_t sub_192C904C8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (qword_1ED6DE070 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v6 = qword_1ED6DE078;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_192FBCD90;
  v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14C48);
  OUTLINED_FUNCTION_99();
  v27[0] = swift_allocObject();
  OUTLINED_FUNCTION_74_4(v27[0]);
  v9 = *(v4 + 40);
  v8 = *(v4 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v10 = OUTLINED_FUNCTION_90();
  *(v10 + 16) = xmmword_192FBCD50;
  sub_19286C588(v27, v26);
  __swift_project_boxed_opaque_existential_0(v26, v26[3]);
  swift_getDynamicType();
  sub_1928F9340(v4, v25, &qword_1EAE14C48);

  sub_192F979EC();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x193B10CE0](v9, v8);

  OUTLINED_FUNCTION_6_5();
  v11 = MEMORY[0x1E69E6158];
  v25[3] = MEMORY[0x1E69E6158];
  __swift_destroy_boxed_opaque_existential_0(v26);
  *(v10 + 48) = 0u;
  *(v10 + 32) = 0u;
  sub_19286D180(v25, v10 + 32);
  *(v10 + 64) = 0;
  *(v7 + 32) = v10;
  __swift_destroy_boxed_opaque_existential_0(v27);
  *(v7 + 40) = a1;

  v13 = a2(v12);
  if (os_log_type_enabled(v6, v13))
  {
    v14 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v15 = byte_1ED6DE5D8;
    v16 = OUTLINED_FUNCTION_19();
    *(v16 + 16) = v15;
    v25[0] = v7;
    v25[1] = a4;
    v25[2] = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v17 = sub_192F9674C();
    v19 = v18;

    objc_autoreleasePoolPop(v14);
    v20 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v21 = OUTLINED_FUNCTION_90();
    *(v21 + 16) = xmmword_192FBCD50;
    *(v21 + 56) = v11;
    *(v21 + 64) = sub_1928FDB30();
    *(v21 + 32) = v17;
    *(v21 + 40) = v19;
    sub_192F9622C();

    objc_autoreleasePoolPop(v20);
  }
}

id sub_192C907E4(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_192F9679C();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_192F958DC();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_192C908CC()
{
  *(v1 + 80) = *(v0 + 64);
  sub_192C94690(v1 + 80, v1 + 96);
  *(v1 + 112) = *(v1 + 80);
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_192C90980;

  return sub_192C787C8(v1 + 16);
}

uint64_t sub_192C90980()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C90A78()
{
  v2 = *(v0 + 64);
  *(v1 + 16) = v2;
  *(v1 + 32) = v2;
  sub_192C94690(v1 + 16, v1 + 48);
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = sub_192C90B2C;

  return DeveloperSilentAuthTokenConfiguration.getEndpointURL()();
}

uint64_t sub_192C90B2C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_6();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 72) = v0;

  OUTLINED_FUNCTION_79_5();
  v5 = *(v4 + 40);

  if (v0)
  {
    OUTLINED_FUNCTION_27_3();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_57_8();

    return v10();
  }
}

uint64_t sub_192C90C8C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 1160) = v3;
  *(v4 + 1152) = a3;
  *(v4 + 1392) = a2;
  *(v4 + 1144) = a1;
  v5 = sub_192F95A8C();
  *(v4 + 1168) = v5;
  *(v4 + 1176) = *(v5 - 8);
  *(v4 + 1184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192C90D58, 0, 0);
}

uint64_t sub_192C90D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_47_0();
  if (sub_192C859A0())
  {
    v11 = v10[148];
    v12 = v10[147];
    v13 = v10[146];
    v14 = v10[145];
    v15 = v10[143];
    v16 = [objc_allocWithZone(AMSURLSession) init];
    v10[149] = v16;
    [v16 setDelegate_];
    sub_192874CD0(0, &unk_1EAE13AD0);
    v17 = *(v12 + 16);
    v10[150] = v17;
    v10[151] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v11, v15, v13);
    v18 = sub_192C927B0(v11);
    v10[152] = v18;
    v19 = v18;
    OUTLINED_FUNCTION_48();
    v20 = sub_192F9679C();

    [v19 setHTTPMethod_];

    v21 = swift_task_alloc();
    v10[153] = v21;
    *v21 = v10;
    v21[1] = sub_192C90F6C;
    OUTLINED_FUNCTION_123_0();

    return sub_192C8F870();
  }

  else
  {
    v24 = OUTLINED_FUNCTION_85_3();
    v25 = OUTLINED_FUNCTION_85_3();
    OUTLINED_FUNCTION_65_0();
    AMSError(v26, v27, v28, 0);

    swift_willThrow();

    OUTLINED_FUNCTION_7_27();
    OUTLINED_FUNCTION_123_0();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }
}

uint64_t sub_192C90F6C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1232) = v4;
  *(v2 + 1240) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_192C91070()
{
  if (qword_1ED6DE070 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v39 = v0[154];
  v1 = v0[145];
  v2 = qword_1ED6DE078;
  v0[156] = qword_1ED6DE078;
  v0[157] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_192FBCD40;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14C48);
  v0[158] = v4;
  v0[128] = v4;
  OUTLINED_FUNCTION_99();
  v5 = swift_allocObject();
  v0[125] = v5;
  OUTLINED_FUNCTION_74_4(v5);
  v6 = *(v1 + 40);
  v0[159] = v6;
  v7 = *(v1 + 48);
  v0[160] = v7;
  v0[161] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v8 = OUTLINED_FUNCTION_90();
  *(v8 + 16) = xmmword_192FBCD50;
  sub_19286C588((v0 + 125), (v0 + 101));

  __swift_project_boxed_opaque_existential_0(v0 + 101, v0[104]);
  swift_getDynamicType();
  swift_bridgeObjectRetain_n();
  sub_1928F9340(v1, (v0 + 44), &qword_1EAE14C48);
  v40 = sub_192F979EC();
  v41 = v9;
  MEMORY[0x193B10CE0](5972026, 0xE300000000000000);
  MEMORY[0x193B10CE0](v6, v7);

  MEMORY[0x193B10CE0](93, 0xE100000000000000);
  v10 = MEMORY[0x1E69E6158];
  v0[100] = MEMORY[0x1E69E6158];
  v0[97] = v40;
  v0[98] = v41;
  __swift_destroy_boxed_opaque_existential_0((v0 + 101));
  *(v8 + 48) = 0u;
  *(v8 + 32) = 0u;
  sub_19286D180((v0 + 97), v8 + 32);
  *(v8 + 64) = 0;
  *(v3 + 32) = v8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 125));
  v11._object = 0x80000001930202B0;
  v11._countAndFlagsBits = 0xD00000000000003ELL;
  LogInterpolation.init(stringLiteral:)(v11);
  v0[88] = sub_192874CD0(0, &qword_1EAE12340);
  v0[85] = v39;
  v12 = v39;
  static LogInterpolation.traceableSensitive(_:)((v0 + 85), (v3 + 48));
  sub_19292E1F0((v0 + 85), &unk_1EAE131B0);
  v13 = sub_192F96E7C();
  if (os_log_type_enabled(v2, v13))
  {
    v14 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v15 = byte_1ED6DE5D8;
    v16 = OUTLINED_FUNCTION_19();
    *(v16 + 16) = v15;
    v0[139] = v3;
    v0[140] = sub_192BB97CC;
    v0[141] = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v17 = OUTLINED_FUNCTION_106();
    v19 = v18;

    objc_autoreleasePoolPop(v14);
    v20 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v21 = OUTLINED_FUNCTION_90();
    *(v21 + 16) = xmmword_192FBCD50;
    *(v21 + 56) = v10;
    *(v21 + 64) = sub_1928FDB30();
    *(v21 + 32) = v17;
    *(v21 + 40) = v19;
    sub_192F9622C();

    objc_autoreleasePoolPop(v20);
  }

  v22 = v0[154];
  v23 = v0[145];
  v24 = v0[144];

  v25 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag_];
  v0[162] = v25;
  [v25 setAccount_];
  [v25 setRequestEncoding_];
  v26 = v0[152];
  if (v24)
  {
    v27 = v26;
    v28 = sub_192F9667C();
    v29 = v0[152];
  }

  else
  {
    v29 = v26;
    v28 = 0;
  }

  v30 = v0[149];
  v31 = [v25 requestByEncodingRequest:v29 parameters:{v28, 1, 2}];
  v0[163] = v31;
  swift_unknownObjectRelease();

  v32 = [v30 dataTaskPromiseWithRequestPromise_];
  OUTLINED_FUNCTION_99_3();
  v0[164] = v33;
  v0[2] = v34;
  v0[7] = v0 + 142;
  v0[3] = sub_192C91678;
  v35 = swift_continuation_init();
  v0[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13AE0);
  v0[65] = v35;
  v0[61] = MEMORY[0x1E69E9820];
  v0[62] = 1107296256;
  v0[63] = sub_192C92848;
  v0[64] = &block_descriptor_43_0;
  [v31 resultWithCompletion_];
  OUTLINED_FUNCTION_68();

  return MEMORY[0x1EEE6DEC8](v36);
}

uint64_t sub_192C9160C()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 1192);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_192C91678()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 1320) = v4;
  if (v4)
  {
    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_192C91784()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[164];
  v0[166] = v0[142];

  v2 = swift_task_alloc();
  v0[167] = v2;
  *v2 = v0;
  v2[1] = sub_192C91820;

  return sub_192C908CC();
}

uint64_t sub_192C91820()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 1344) = v0;

  if (v0)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    *(v5 + 1352) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C91934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_47_0();
  v15 = v11[164];
  swift_willThrow();

  v16 = v11[165];
  v11[170] = v16;
  if (sub_192C92874(v16) & 1) != 0 || (sub_192C925E0(v16))
  {
    v17 = swift_task_alloc();
    v11[171] = v17;
    *v17 = v11;
    OUTLINED_FUNCTION_9_28(v17);
    OUTLINED_FUNCTION_123_0();

    return sub_192C908CC();
  }

  else
  {
    OUTLINED_FUNCTION_21_17();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_123_0();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }
}

uint64_t sub_192C91A2C()
{
  if (*(v0 + 1352) <= 0.0 || (v4 = OUTLINED_FUNCTION_50_8(*(v0 + 1160)), *(v0 + 600) = v6, *(v0 + 616) = v5, *(v0 + 632) = v4, v7 = sub_192F9679C(), v8 = [objc_opt_self() processIsEntitledToUse_], v7, !v8))
  {
LABEL_10:
    v16 = *(v0 + 1280);
    v17 = *(v0 + 1272);
    v18 = *(v0 + 1264);
    v100 = *(v0 + 1208);
    oslog = *(v0 + 1248);
    v19 = *(v0 + 1200);
    v20 = *(v0 + 1168);
    v21 = *(v0 + 1160);
    v22 = *(v0 + 1144);
    v23 = swift_allocObject();
    v97 = xmmword_192FBCD40;
    *(v23 + 16) = xmmword_192FBCD40;
    *(v0 + 736) = v18;
    OUTLINED_FUNCTION_99();
    v24 = swift_allocObject();
    *(v0 + 712) = v24;
    OUTLINED_FUNCTION_74_4(v24);
    v25 = OUTLINED_FUNCTION_90();
    *(v25 + 16) = xmmword_192FBCD50;
    sub_19286C588(v0 + 712, v0 + 744);
    __swift_project_boxed_opaque_existential_0((v0 + 744), *(v0 + 768));
    swift_getDynamicType();
    sub_1928F9340(v21, v0 + 216, &qword_1EAE14C48);
    sub_192F979EC();
    OUTLINED_FUNCTION_2_0();
    MEMORY[0x193B10CE0](v17, v16);

    OUTLINED_FUNCTION_6_5();
    v26 = MEMORY[0x1E69E6158];
    *(v0 + 672) = MEMORY[0x1E69E6158];
    *(v0 + 648) = v104;
    *(v0 + 656) = v105;
    __swift_destroy_boxed_opaque_existential_0(v0 + 744);
    *(v25 + 48) = 0u;
    *(v25 + 32) = 0u;
    sub_19286D180(v0 + 648, v25 + 32);
    *(v25 + 64) = 0;
    *(v23 + 32) = v25;
    __swift_destroy_boxed_opaque_existential_0(v0 + 712);
    v27._countAndFlagsBits = 0xD00000000000001FLL;
    v27._object = 0x80000001930202F0;
    LogInterpolation.init(stringLiteral:)(v27);
    *(v0 + 864) = v20;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 840));
    v19(boxed_opaque_existential_0, v22, v20);
    static LogInterpolation.traceableSensitive(_:)(v0 + 840, (v23 + 48));
    sub_19292E1F0(v0 + 840, &unk_1EAE131B0);
    v29 = sub_192F96E7C();
    if (os_log_type_enabled(oslog, v29))
    {
      v30 = objc_autoreleasePoolPush();
      if (qword_1ED6DF1A0 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v31 = byte_1ED6DE5D8;
      v32 = OUTLINED_FUNCTION_19();
      *(v32 + 16) = v31;
      *(v0 + 1088) = v23;
      *(v0 + 1096) = sub_192BB97CC;
      *(v0 + 1104) = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
      sub_1928FD924();
      v33 = OUTLINED_FUNCTION_106();
      v35 = v34;

      objc_autoreleasePoolPop(v30);
      v36 = objc_autoreleasePoolPush();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
      v37 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_78_7(v37, v38, v39, v40, v41, v42, v43, v44, 3, 6, v100, oslog, v45);
      *(v46 + 56) = v26;
      *(v32 + 64) = sub_1928FDB30();
      *(v32 + 32) = v33;
      *(v32 + 40) = v35;
      OUTLINED_FUNCTION_104_1();

      objc_autoreleasePoolPop(v36);
    }

    v47 = *(v0 + 1328);

    if ([v47 object])
    {
      v48 = *(v0 + 1288);
      v49 = *(v0 + 1280);
      v50 = *(v0 + 1272);
      v51 = *(v0 + 1264);
      v52 = *(v0 + 1248);
      v53 = *(v0 + 1160);
      sub_192F9715C();
      swift_unknownObjectRelease();
      v54 = swift_allocObject();
      *(v54 + 16) = v97;
      *(v0 + 928) = v51;
      OUTLINED_FUNCTION_99();
      v55 = swift_allocObject();
      *(v0 + 904) = v55;
      OUTLINED_FUNCTION_74_4(v55);
      v56 = OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_78_7(v56, v57, v58, v59, v60, v61, v62, v63, v97, *(&v97 + 1), v100, oslog, v64);
      sub_19286C588(v0 + 904, v0 + 936);
      __swift_project_boxed_opaque_existential_0((v0 + 936), *(v0 + 960));
      swift_getDynamicType();
      sub_1928F9340(v53, v0 + 80, &qword_1EAE14C48);
      sub_192F979EC();
      OUTLINED_FUNCTION_2_0();
      MEMORY[0x193B10CE0](v50, v49);

      OUTLINED_FUNCTION_6_5();
      *(v0 + 992) = v26;
      *(v0 + 968) = v104;
      *(v0 + 976) = v105;
      __swift_destroy_boxed_opaque_existential_0(v0 + 936);
      *(v48 + 48) = 0u;
      *(v48 + 32) = 0u;
      sub_19286D180(v0 + 968, v48 + 32);
      *(v48 + 64) = 0;
      *(v54 + 32) = v48;
      __swift_destroy_boxed_opaque_existential_0(v0 + 904);
      v65._object = 0x8000000193020310;
      v65._countAndFlagsBits = 0xD000000000000015;
      LogInterpolation.init(stringLiteral:)(v65);
      sub_19286C588(v0 + 872, v0 + 1032);
      static LogInterpolation.traceableSensitive(_:)(v0 + 1032, (v54 + 48));
      sub_19292E1F0(v0 + 1032, &unk_1EAE131B0);
      v66 = sub_192F96E7C();
      if (os_log_type_enabled(v52, v66))
      {
        v67 = objc_autoreleasePoolPush();
        if (qword_1ED6DF1A0 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v68 = byte_1ED6DE5D8;
        v69 = OUTLINED_FUNCTION_19();
        *(v69 + 16) = v68;
        *(v0 + 1064) = v54;
        *(v0 + 1072) = sub_192BB97CC;
        *(v0 + 1080) = v69;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
        sub_1928FD924();
        v70 = OUTLINED_FUNCTION_106();
        v72 = v71;

        objc_autoreleasePoolPop(v67);
        v73 = objc_autoreleasePoolPush();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
        v74 = OUTLINED_FUNCTION_90();
        OUTLINED_FUNCTION_78_7(v74, v75, v76, v77, v78, v79, v80, v81, v98, v99, v101, osloga, v82);
        *(v83 + 56) = v26;
        *(v69 + 64) = sub_1928FDB30();
        *(v69 + 32) = v70;
        *(v69 + 40) = v72;
        OUTLINED_FUNCTION_104_1();

        objc_autoreleasePoolPop(v73);
      }

      v84 = *(v0 + 1304);
      v85 = *(v0 + 1232);
      v86 = *(v0 + 1216);
      v87 = *(v0 + 1192);

      __swift_destroy_boxed_opaque_existential_0(v0 + 872);
    }

    else
    {
      v88 = *(v0 + 1304);
      v89 = *(v0 + 1296);
      v90 = *(v0 + 1232);
      v91 = *(v0 + 1216);
      v92 = *(v0 + 1192);
    }

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_111_3();

    __asm { BRAA            X2, X16 }
  }

  v9 = *(v0 + 1344);
  v10 = sub_192C88278(*(v0 + 1232));
  if (!v9)
  {
    v15 = v10;
    [v10 deleteData];

    goto LABEL_10;
  }

  v11 = *(v0 + 1328);
  swift_bridgeObjectRelease_n();

  *(v0 + 1360) = v9;
  if ((sub_192C92874(v9) & 1) == 0 && (sub_192C925E0(v9) & 1) == 0)
  {
    OUTLINED_FUNCTION_21_17();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_111_3();

    __asm { BRAA            X1, X16 }
  }

  v12 = swift_task_alloc();
  *(v0 + 1368) = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_9_28(v12);
  OUTLINED_FUNCTION_111_3();

  return sub_192C908CC();
}

uint64_t sub_192C921F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_5();
  OUTLINED_FUNCTION_47_0();

  v15 = *(v11 + 1344);
  *(v11 + 1360) = v15;
  if (sub_192C92874(v15) & 1) != 0 || (sub_192C925E0(v15))
  {
    v16 = swift_task_alloc();
    *(v11 + 1368) = v16;
    *v16 = v11;
    OUTLINED_FUNCTION_9_28(v16);
    OUTLINED_FUNCTION_123_0();

    return sub_192C908CC();
  }

  else
  {
    OUTLINED_FUNCTION_21_17();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_123_0();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }
}

uint64_t sub_192C922E8()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  *(v5 + 1376) = v0;

  if (!v0)
  {
    *(v5 + 1384) = v3;
  }

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_192C923F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_178();
  if (*(v14 + 1384) > 0.0 && (v13 = (v14 + 552), v18 = OUTLINED_FUNCTION_50_8(*(v14 + 1160)), *(v14 + 552) = v20, *(v14 + 568) = v19, *(v14 + 584) = v18, v12 = sub_192F9679C(), v21 = [objc_opt_self() processIsEntitledToUse_], v12, v21))
  {
    v22 = *(v14 + 1376);
    v23 = sub_192C88278(*(v14 + 1232));
    v24 = v22;
    v25 = *(v14 + 1360);
    v26 = *(v14 + 1304);
    v27 = *(v14 + 1296);
    v28 = *(v14 + 1232);
    v29 = *(v14 + 1216);
    v30 = *(v14 + 1192);
    if (v24)
    {
    }

    else
    {
      v40 = v23;
      [v23 deleteData];

      swift_willThrow();
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_17();
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_31();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_192C92548()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1232);
  v5 = *(v0 + 1192);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_192C925E0(void *a1)
{
  v7[0] = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0);
  type metadata accessor for AMSError(0);
  if (swift_dynamicCast())
  {
    v3 = v8;
  }

  else
  {
    v3 = 0;
  }

  v7[0] = a1;
  v4 = a1;
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  v7[0] = v8;
  sub_192C9479C(&qword_1EAE120F0, type metadata accessor for AMSError);
  sub_192F9588C();
  if (v8 != 301)
  {

LABEL_11:
    return 0;
  }

  v8 = 301;
  sub_192F958AC();
  sub_192952700(0x7574617453534D41, 0xED000065646F4373);

  if (v7[3])
  {
    if ((swift_dynamicCast() & 1) != 0 && v6 == 404)
    {
      return 1;
    }
  }

  else
  {
    sub_19292E1F0(v7, &unk_1EAE131B0);
  }

  return 0;
}

id sub_192C927B0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_192F9596C();
  v4 = [v2 initWithURL_];

  sub_192F95A8C();
  OUTLINED_FUNCTION_28_2();
  (*(v5 + 8))(a1);
  return v4;
}

uint64_t sub_192C92874(void *a1)
{
  v4[0] = a1;
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DA0);
  type metadata accessor for AMSError(0);
  if (swift_dynamicCast())
  {
    v4[0] = v5;
    sub_192C9479C(&qword_1EAE120F0, type metadata accessor for AMSError);
    sub_192F9588C();
    if (v5 == 301)
    {
      v5 = 301;
      sub_192F958AC();
      sub_192952700(0x7574617453534D41, 0xED000065646F4373);

      if (v4[3])
      {
        if ((swift_dynamicCast() & 1) != 0 && v3 == 403)
        {
          return 1;
        }
      }

      else
      {
        sub_19292E1F0(v4, &unk_1EAE131B0);
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_192C92A00()
{
  v2 = *(v0 + 64);
  *(v1 + 16) = v2;
  *(v1 + 32) = v2;
  sub_192C94690(v1 + 16, v1 + 48);
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = sub_192C92AB4;

  return DeveloperSilentAuthTokenConfiguration.consentEndpointURL()();
}

uint64_t sub_192C92AB4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_6();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 72) = v0;

  OUTLINED_FUNCTION_79_5();
  v5 = *(v4 + 40);

  if (v0)
  {
    OUTLINED_FUNCTION_27_3();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_57_8();

    return v10();
  }
}

uint64_t sub_192C92BF0()
{
  v2 = *(v0 + 64);
  *(v1 + 16) = v2;
  *(v1 + 32) = v2;
  sub_192C94690(v1 + 16, v1 + 48);
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = sub_192C92AB4;

  return DeveloperSilentAuthTokenConfiguration.updateEndpointURL()();
}

id sub_192C92CA4()
{
  v0 = sub_192F9679C();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

void *sub_192C92D08(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v8 = a3;
    v9 = OUTLINED_FUNCTION_102_3();
    v10 = a4;

    return v10(v9);
  }

  if (a2)
  {
    v11 = a2;
    v9 = OUTLINED_FUNCTION_102_3();
    v10 = a5;

    return v10(v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_192C92E08()
{
  v1 = *(v0 + OBJC_IVAR___AMSDeveloperSilentAuthToken_token);

  return v1;
}

id sub_192C92E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR___AMSDeveloperSilentAuthToken_consentStatus) = a1;
  v4 = (v3 + OBJC_IVAR___AMSDeveloperSilentAuthToken_token);
  *v4 = a2;
  v4[1] = a3;
  v6.super_class = AMSDeveloperSilentAuthToken;
  return objc_msgSendSuper2(&v6, sel_init);
}

id AMSDeveloperSilentAuthToken.init(result:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v2);
  v4 = (*(v3 + 64))(v2, v3);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  if (v7)
  {
    v8 = sub_192F9679C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConsentStatus:v4 token:v8];

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

id AMSDeveloperSilentAuthToken.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id DeveloperSilentAuthTokenPerformer.init(withBundleId:account:mediaType:bag:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  if (a5)
  {
    v12 = type metadata accessor for SendableBag();
    swift_getObjectType();
    v13 = swift_unknownObjectRetain();
    v14 = sub_192908290(v13, v12);
  }

  else
  {
    v14 = 0;
  }

  v15 = a4;
  v16 = a3;
  sub_192C8968C(a1, a2, a3, a4, v14, __src);
  memcpy(&v5[OBJC_IVAR___AMSDeveloperSilentAuthTokenPerformer_manager], __src, 0x88uLL);
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_init);

  swift_unknownObjectRelease();
  return v17;
}

AMSBinaryPromise __swiftcall DeveloperSilentAuthTokenPerformer.performUpdate(withToken:)(Swift::String_optional withToken)
{
  object = withToken.value._object;
  countAndFlagsBits = withToken.value._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DE0);
  OUTLINED_FUNCTION_142_0(v4);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = [objc_allocWithZone(AMSMutableBinaryPromise) init];
  v8 = sub_192F96C6C();
  OUTLINED_FUNCTION_57_3(v8);
  v9 = OBJC_IVAR___AMSDeveloperSilentAuthTokenPerformer_manager;
  memcpy(v16, (v1 + OBJC_IVAR___AMSDeveloperSilentAuthTokenPerformer_manager), sizeof(v16));
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  memcpy(v10 + 4, (v1 + v9), 0x88uLL);
  v10[21] = countAndFlagsBits;
  v10[22] = object;
  v10[23] = v7;
  sub_1928F9340(v16, &v15, &qword_1EAE14C48);

  v11 = v7;
  OUTLINED_FUNCTION_55_9();
  sub_192C68270();

  v14 = v11;
  result._backingPromise = v13;
  result._retainedSelf = v12;
  result.super.isa = v14;
  return result;
}

uint64_t sub_192C93430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a7;
  v10 = swift_task_alloc();
  *(v7 + 24) = v10;
  *v10 = v7;
  v10[1] = sub_192C934F4;

  return sub_192C899E0(a5, a6);
}

uint64_t sub_192C934F4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C935EC()
{
  OUTLINED_FUNCTION_3();
  [*(v0 + 16) finishWithSuccess];
  OUTLINED_FUNCTION_43();

  return v1();
}

id DeveloperSilentAuthTokenPerformer.performFetchToken()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DE0);
  OUTLINED_FUNCTION_142_0(v1);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v2, v3);
  v4 = [objc_allocWithZone(AMSMutablePromise) init];
  v5 = sub_192F96C6C();
  OUTLINED_FUNCTION_57_3(v5);
  v6 = OBJC_IVAR___AMSDeveloperSilentAuthTokenPerformer_manager;
  memcpy(v11, (v0 + OBJC_IVAR___AMSDeveloperSilentAuthTokenPerformer_manager), sizeof(v11));
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  memcpy(v7 + 4, (v0 + v6), 0x88uLL);
  v7[21] = v4;
  sub_1928F9340(v11, &v10, &qword_1EAE14C48);
  v8 = v4;
  OUTLINED_FUNCTION_55_9();
  sub_192C68270();

  return v8;
}

uint64_t sub_192C9380C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a5;
  v6 = swift_task_alloc();
  *(v5 + 104) = v6;
  *v6 = v5;
  v6[1] = sub_192C938C0;

  return sub_192C8B5C0(v5 + 16, 0);
}

uint64_t sub_192C938C0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C939B8()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 96);
  type metadata accessor for AMSDeveloperSilentAuthToken(v2);
  sub_19292D2FC(v0 + 16, v0 + 56);
  v3 = AMSDeveloperSilentAuthToken.init(result:)((v0 + 56));
  [v1 finishWithResult_];

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_192C93A4C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = sub_192F958CC();
  [v2 finishWithError_];

  OUTLINED_FUNCTION_43();

  return v4();
}

AMSBinaryPromise __swiftcall DeveloperSilentAuthTokenPerformer.performUpdateConsent(withStatus:)(Swift::Bool withStatus)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DE0);
  OUTLINED_FUNCTION_142_0(v3);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v16[-v6];
  v8 = [objc_allocWithZone(AMSMutableBinaryPromise) init];
  v9 = sub_192F96C6C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  v10 = OBJC_IVAR___AMSDeveloperSilentAuthTokenPerformer_manager;
  memcpy(v17, (v1 + OBJC_IVAR___AMSDeveloperSilentAuthTokenPerformer_manager), sizeof(v17));
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  memcpy((v11 + 32), (v1 + v10), 0x88uLL);
  *(v11 + 168) = withStatus;
  *(v11 + 176) = v8;
  sub_1928F9340(v17, v16, &qword_1EAE14C48);
  v12 = v8;
  OUTLINED_FUNCTION_55_9();
  sub_192C68270();

  v15 = v12;
  result._backingPromise = v14;
  result._retainedSelf = v13;
  result.super.isa = v15;
  return result;
}

uint64_t sub_192C93C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_192C93D2C;

  return sub_192C8A690(a5);
}

uint64_t sub_192C93D2C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

id DeveloperSilentAuthTokenPerformer.presentConsent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DE0);
  OUTLINED_FUNCTION_142_0(v1);
  OUTLINED_FUNCTION_62();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v12 - v4;
  v6 = [objc_allocWithZone(AMSMutablePromise) init];
  v7 = sub_192F96C6C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;
  v8[5] = v6;
  v9 = v0;
  v10 = v6;
  OUTLINED_FUNCTION_55_9();
  sub_192C68270();

  return v10;
}

uint64_t sub_192C93F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 232) = a4;
  *(v5 + 240) = a5;
  return MEMORY[0x1EEE6DFA0](sub_192C93F88, 0, 0);
}

uint64_t sub_192C93F88()
{
  OUTLINED_FUNCTION_3();
  memcpy(v0 + 2, (v0[29] + OBJC_IVAR___AMSDeveloperSilentAuthTokenPerformer_manager), 0x88uLL);
  OUTLINED_FUNCTION_15_19(&unk_192FC94B8);
  v5 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  v0[31] = v2;
  *v2 = v3;
  v2[1] = sub_192C94044;

  return v5(v0 + 19, 0);
}

uint64_t sub_192C94044()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_135();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_192C9413C()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 240);
  type metadata accessor for AMSDeveloperSilentAuthToken(v2);
  sub_19292D2FC(v0 + 152, v0 + 192);
  v3 = AMSDeveloperSilentAuthToken.init(result:)((v0 + 192));
  [v1 finishWithResult_];

  __swift_destroy_boxed_opaque_existential_0(v0 + 152);
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_192C941D0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = sub_192F958CC();
  [v2 finishWithError_];

  OUTLINED_FUNCTION_43();

  return v4();
}

id DeveloperSilentAuthTokenPerformer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeveloperSilentAuthTokenPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192C9439C()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_106_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_26_17(v1);
  OUTLINED_FUNCTION_85();

  return sub_192C93430(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_192C94440()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_106_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_26_17(v1);
  OUTLINED_FUNCTION_17_0();

  return sub_192C9380C(v3, v4, v5, v6, v7);
}

uint64_t sub_192C944D8()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_106_3();
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_26_17(v4);

  return sub_192C93C74(v6, v7, v8, v9, v2, v3);
}

uint64_t sub_192C94580()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_106_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_42_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_192919C40;
  OUTLINED_FUNCTION_17_0();

  return sub_192C93F68(v3, v4, v5, v6, v7);
}

uint64_t sub_192C9479C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_96_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_78_7(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  a1[1] = a13;
  return result;
}

uint64_t OUTLINED_FUNCTION_113_1()
{

  return sub_192F9679C();
}

uint64_t *OUTLINED_FUNCTION_116_1(uint64_t a1)
{
  v1[4] = a1;

  return __swift_allocate_boxed_opaque_existential_0(v1);
}

uint64_t static DeviceDetails.deviceUnlockedSinceBoot()()
{
  v0 = [objc_opt_self() ams_deviceUnlockedSinceBoot];
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for DeviceDetails(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id sub_192C94954(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = sub_19295466C(a1);
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      sub_192CD452C(v3 - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v4 + 32);
      }
    }

    return MEMORY[0x193B116C0](v4, a1);
  }

  result = sub_192F971FC();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_192C949F0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

id DeviceGeneratedIdentifierAnomalyDetector.__allocating_init(identifierHistoryProvider:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AMSDeviceGeneratedIdentifierAnomalyDetector_identifierHistoryProvider] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id DefaultsIdentifierHistoryProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_192C94B3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::OpaquePointer_optional __swiftcall DefaultsIdentifierHistoryProvider.identifierHistory(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = [objc_opt_self() ttrMetricsClickStreamUserIdHistory];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13970);
  v4 = sub_192F9669C();

  v5 = sub_192BD5670(countAndFlagsBits, object, v4);

  v7 = v5;
  result.value._rawValue = v7;
  result.is_nil = v6;
  return result;
}

Swift::Void __swiftcall DefaultsIdentifierHistoryProvider.setIdentifierHistory(_:for:)(Swift::OpaquePointer_optional _, Swift::String a2)
{
  countAndFlagsBits = a2._countAndFlagsBits;
  v3 = *&_.is_nil;
  rawValue = _.value._rawValue;
  v5 = objc_opt_self();
  v6 = [v5 ttrMetricsClickStreamUserIdHistory];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13970);
  sub_192F9669C();

  if (rawValue)
  {

    swift_isUniquelyReferenced_nonNull_native();
    sub_192C9A4AC();
  }

  else
  {
    sub_1929225DC(v3, countAndFlagsBits);
    if (v7)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14C80);
      sub_192F9741C();

      sub_192F9743C();
    }
  }

  v8 = sub_192F9667C();

  [v5 setTtrMetricsClickStreamUserIdHistory_];
}

uint64_t static DictionaryCoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v2 = [objc_opt_self() dataWithJSONObject:a2 options:0 error:v9];
  v3 = v9[0];
  if (v2)
  {
    v4 = sub_192F95B7C();
    v6 = v5;

    sub_192F9543C();
    swift_allocObject();
    sub_192F9542C();
    sub_192F9541C();
    sub_19290CA6C(v4, v6);
  }

  else
  {
    v8 = v3;
    sub_192F958DC();

    return swift_willThrow();
  }
}

uint64_t static DictionaryCoder.encode<A>(_:)()
{
  v13 = *MEMORY[0x1E69E9840];
  sub_192F9549C();
  swift_allocObject();
  sub_192F9548C();
  v1 = sub_192F9547C();
  v3 = v2;

  if (!v0)
  {
    v5 = objc_opt_self();
    v6 = sub_192F95B5C();
    v11[0] = 0;
    v7 = [v5 JSONObjectWithData:v6 options:0 error:v11];

    v8 = v11[0];
    if (v7)
    {
      sub_192F9715C();
      sub_19290CA6C(v1, v3);
      swift_unknownObjectRelease();
      sub_1928FA5CC(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131E0);
      if (swift_dynamicCast())
      {
        return v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v9 = v8;
      sub_192F958DC();

      swift_willThrow();
      return sub_19290CA6C(v1, v3);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DictionaryCoder(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t DictionaryExpressible.asDictionary()(uint64_t a1)
{
  sub_192F9792C();
  OUTLINED_FUNCTION_12_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = a1;
  __swift_allocate_boxed_opaque_existential_0(v12);
  OUTLINED_FUNCTION_28_2();
  (*(v9 + 16))();
  sub_192F978EC();
  sub_192F9791C();
  v10 = DictionaryExpressible.dictionary(from:)();

  (*(v4 + 8))(v8, v1);
  return v10;
}

uint64_t DictionaryExpressible.dictionary(from:)()
{
  v0 = sub_192F966CC();
  v1 = &unk_192FC96D0;
  v139 = sub_192F973BC();
  while (1)
  {
    while (1)
    {
      sub_192F974EC();
      if (!v156[3])
      {
        goto LABEL_55;
      }

      v155[0] = v155[3];
      v2 = sub_1928FA5CC(v156);
      OUTLINED_FUNCTION_14_21(v2, v3, v4, v5, v6, v7, v8, v9, v136, v139, v142, *(&v142 + 1), v143, *(&v143 + 1), v144, v145, v146, *(&v146 + 1), v147, *(&v147 + 1), v148, v149, v150, *(&v150 + 1), v151, v152, v153, v154, v155[0]);
      if (*(&v150 + 1))
      {
        break;
      }

      sub_19292E1F0(v155, &unk_1EAE14C90);
      __swift_destroy_boxed_opaque_existential_0(&v151);
    }

    v10 = __swift_destroy_boxed_opaque_existential_0(&v151);
    OUTLINED_FUNCTION_14_21(v10, v11, v12, v13, v14, v15, v16, v17, v136, v139, v142, *(&v142 + 1), v143, *(&v143 + 1), v144, v145, v146, *(&v146 + 1), v147, *(&v147 + 1), v148, v149, v150, *(&v150 + 1), v151, v152, v153, v154, v155[0]);

    OUTLINED_FUNCTION_21_18();
    if (swift_dynamicCast())
    {
      break;
    }

    OUTLINED_FUNCTION_17_23();
    v42 = sub_19292E1F0(v41, &qword_1EAE141E0);
    OUTLINED_FUNCTION_14_21(v42, v43, v44, v45, v46, v47, v48, v49, v137, v140, v142, *(&v142 + 1), v143, *(&v143 + 1), v144, v145, v146, *(&v146 + 1), v147, *(&v147 + 1), v148, v149, v150, *(&v150 + 1), v151, v152, v153, v154, v155[0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14CA0);
    OUTLINED_FUNCTION_21_18();
    v50 = swift_dynamicCast();
    if (v50)
    {
      sub_192C966C0(&unk_1EAE14CE8, &qword_1EAE14CA0);
      OUTLINED_FUNCTION_25_16();
      swift_isUniquelyReferenced_nonNull_native();
      *&v146 = v0;
      v58 = OUTLINED_FUNCTION_7_29();
      sub_1929225DC(v58, v59);
      OUTLINED_FUNCTION_4_43();
      if (v20)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_20_22();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14CE0);
      v60 = OUTLINED_FUNCTION_23_18();
      if (v60)
      {
        v69 = OUTLINED_FUNCTION_7_29();
        sub_1929225DC(v69, v70);
        OUTLINED_FUNCTION_3_42();
        if (!v32)
        {
          goto LABEL_63;
        }
      }

      if (&unk_192FC96D0)
      {
LABEL_18:

        v0 = v146;
        OUTLINED_FUNCTION_8_33(v71, v72, v73, v74, v75, v76, v77, v78, v136, v139, v142, *(&v142 + 1), v143, *(&v143 + 1));
        goto LABEL_19;
      }

      v0 = v146;
      OUTLINED_FUNCTION_0_38(v60, v61, v62, v63, v64, v65, v66, v67, v136, v139, v142, *(&v142 + 1), v143, *(&v143 + 1), v144, v145, v146, *(&v146 + 1), v147, *(&v147 + 1), v148, v149, v150, v68, v151);
      sub_19292E1F0(v155, &unk_1EAE14C90);
      OUTLINED_FUNCTION_15_20();
      if (v20)
      {
        goto LABEL_60;
      }

      goto LABEL_38;
    }

    OUTLINED_FUNCTION_14_21(v50, v51, v52, v53, v54, v55, v56, v57, v136, v139, v142, *(&v142 + 1), v143, *(&v143 + 1), v144, v145, v146, *(&v146 + 1), v147, *(&v147 + 1), v148, v149, v150, *(&v150 + 1), v151, v152, v153, v154, v155[0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14CA8);
    OUTLINED_FUNCTION_21_18();
    if (swift_dynamicCast())
    {
      sub_19292D380(&v142, &v146);
      v79 = *(&v147 + 1);
      v80 = v148;
      __swift_project_boxed_opaque_existential_0(&v146, *(&v147 + 1));
      OUTLINED_FUNCTION_18_21();
      *&v142 = v81(v79, v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12F18);
      sub_192C966C0(&unk_1EAE14CD0, &qword_1EAE12F18);
      sub_192F9725C();
      swift_isUniquelyReferenced_nonNull_native();
      *&v142 = v0;
      v82 = OUTLINED_FUNCTION_7_29();
      sub_1929225DC(v82, v83);
      OUTLINED_FUNCTION_4_43();
      if (v20)
      {
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_20_22();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14CE0);
      v84 = OUTLINED_FUNCTION_24_17();
      if (v84)
      {
        v93 = OUTLINED_FUNCTION_7_29();
        sub_1929225DC(v93, v94);
        OUTLINED_FUNCTION_3_42();
        if (!v32)
        {
          goto LABEL_63;
        }
      }

      if (&unk_192FC96D0)
      {

        v0 = v142;
        OUTLINED_FUNCTION_8_33(v95, v96, v97, v98, v99, v100, v101, v102, v138, v141, v142, *(&v142 + 1), v143, *(&v143 + 1));
        sub_19292E1F0(v155, &unk_1EAE14C90);
      }

      else
      {
        v0 = v142;
        OUTLINED_FUNCTION_0_38(v84, v85, v86, v87, v88, v89, v90, v91, v138, v141, v142, *(&v142 + 1), v143, *(&v143 + 1), v144, v145, v146, *(&v146 + 1), v147, *(&v147 + 1), v148, v149, v150, v92, v151);
        sub_19292E1F0(v155, &unk_1EAE14C90);
        OUTLINED_FUNCTION_15_20();
        if (v20)
        {
          goto LABEL_62;
        }

        *(v0 + 16) = v121;
      }

      __swift_destroy_boxed_opaque_existential_0(&v146);
LABEL_43:
      v1 = &unk_192FC96D0;
    }

    else
    {
      OUTLINED_FUNCTION_17_23();
      v105 = sub_19292E1F0(v104, &qword_1EAE14CB0);
      OUTLINED_FUNCTION_14_21(v105, v106, v107, v108, v109, v110, v111, v112, v138, v141, v142, *(&v142 + 1), v143, *(&v143 + 1), v144, v145, v146, *(&v146 + 1), v147, *(&v147 + 1), v148, v149, v150, *(&v150 + 1), v151, v152, v153, v154, v155[0]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14CB8);
      OUTLINED_FUNCTION_21_18();
      if (swift_dynamicCast())
      {
        v113 = v146;
        v114 = *(v146 + 16);
        if (v114)
        {
          *&v142 = MEMORY[0x1E69E7CC0];
          sub_192BC5818();
          v115 = v142;
          v136 = v113;
          v116 = v113 + 32;
          do
          {
            sub_1928F6068(v116, &v146);
            v117 = *(&v147 + 1);
            v118 = v148;
            __swift_project_boxed_opaque_existential_0(&v146, *(&v147 + 1));
            OUTLINED_FUNCTION_18_21();
            v120 = v119(v117, v118);
            __swift_destroy_boxed_opaque_existential_0(&v146);
            *&v142 = v115;
            v1 = *(v115 + 16);
            if (v1 >= *(v115 + 24) >> 1)
            {
              sub_192BC5818();
              v115 = v142;
            }

            *(v115 + 16) = v1 + 1;
            *(v115 + 8 * v1 + 32) = v120;
            v116 += 40;
            --v114;
          }

          while (v114);
        }

        else
        {

          v115 = MEMORY[0x1E69E7CC0];
        }

        *&v146 = v115;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14CC0);
        sub_192C965B4();
        OUTLINED_FUNCTION_25_16();
        swift_isUniquelyReferenced_nonNull_native();
        *&v146 = v0;
        v122 = OUTLINED_FUNCTION_7_29();
        sub_1929225DC(v122, v123);
        OUTLINED_FUNCTION_4_43();
        if (v20)
        {
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_20_22();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14CE0);
        v124 = OUTLINED_FUNCTION_23_18();
        if (v124)
        {
          v133 = OUTLINED_FUNCTION_7_29();
          sub_1929225DC(v133, v134);
          OUTLINED_FUNCTION_3_42();
          if (!v32)
          {
            goto LABEL_63;
          }

          if (v1)
          {
            goto LABEL_18;
          }
        }

        else if (v1)
        {
          goto LABEL_18;
        }

        v0 = v146;
        OUTLINED_FUNCTION_0_38(v124, v125, v126, v127, v128, v129, v130, v131, v136, v139, v142, *(&v142 + 1), v143, *(&v143 + 1), v144, v145, v146, *(&v146 + 1), v147, *(&v147 + 1), v148, v149, v150, v132, v151);
        sub_19292E1F0(v155, &unk_1EAE14C90);
        OUTLINED_FUNCTION_15_20();
        if (v20)
        {
          __break(1u);
LABEL_55:

          return v0;
        }

LABEL_38:
        *(v0 + 16) = v103;
        goto LABEL_43;
      }

      sub_19292E1F0(v155, &unk_1EAE14C90);
    }
  }

  v146 = v142;
  v147 = v143;
  v148 = v144;
  sub_192948314(&v146, &v150);
  swift_isUniquelyReferenced_nonNull_native();
  *&v142 = v0;
  v18 = OUTLINED_FUNCTION_7_29();
  sub_1929225DC(v18, v19);
  OUTLINED_FUNCTION_4_43();
  if (!v20)
  {
    OUTLINED_FUNCTION_20_22();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14CE0);
    v21 = OUTLINED_FUNCTION_24_17();
    if (v21)
    {
      v30 = OUTLINED_FUNCTION_7_29();
      sub_1929225DC(v30, v31);
      OUTLINED_FUNCTION_3_42();
      if (!v32)
      {
        goto LABEL_63;
      }
    }

    if (&unk_192FC96D0)
    {

      v0 = v142;
      OUTLINED_FUNCTION_8_33(v33, v34, v35, v36, v37, v38, v39, v40, v137, v140, v142, *(&v142 + 1), v143, *(&v143 + 1));
      sub_192948374(&v146);
LABEL_19:
      sub_19292E1F0(v155, &unk_1EAE14C90);
      goto LABEL_43;
    }

    v0 = v142;
    OUTLINED_FUNCTION_0_38(v21, v22, v23, v24, v25, v26, v27, v28, v137, v140, v142, *(&v142 + 1), v143, *(&v143 + 1), v144, v145, v146, *(&v146 + 1), v147, *(&v147 + 1), v148, v149, v150, v29, v151);
    sub_192948374(&v146);
    sub_19292E1F0(v155, &unk_1EAE14C90);
    OUTLINED_FUNCTION_15_20();
    if (v20)
    {
      goto LABEL_58;
    }

    goto LABEL_38;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = sub_192F977CC();
  __break(1u);
  return result;
}

uint64_t sub_192C95B90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SecureCodingDictionaryExpressible.asDictionary()(uint64_t a1, uint64_t a2)
{
  sub_192F9792C();
  OUTLINED_FUNCTION_12_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = a1;
  __swift_allocate_boxed_opaque_existential_0(v15);
  OUTLINED_FUNCTION_28_2();
  (*(v11 + 16))();
  sub_192F978EC();
  v12 = sub_192F9791C();
  v13 = SecureCodingDictionaryExpressible.secureCodingDictionary(from:)(v12, a1, a2);

  (*(v6 + 8))(v10, v2);
  return v13;
}

uint64_t SecureCodingDictionaryExpressible.secureCodingDictionary(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = a3;
  v109 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13B30);
  v5 = sub_192F966CC();
  v6 = &v124;
  v112 = v4;
  v113 = sub_192F973BC();
  while (1)
  {
    while (1)
    {
      sub_192F974EC();
      if (!v131[3])
      {

        return v5;
      }

      v130[0] = v130[3];
      v7 = sub_1928FA5CC(v131);
      OUTLINED_FUNCTION_13_18(v7, v8, v9, v10, v11, v12, v13, v14, v109, v110, v111, v112, v113, v114, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0]);
      v15 = v125;
      if (v125)
      {
        break;
      }

      sub_19292E1F0(v130, &unk_1EAE14C90);
      __swift_destroy_boxed_opaque_existential_0(&v126);
    }

    v16 = v124;
    v17 = __swift_destroy_boxed_opaque_existential_0(&v126);
    OUTLINED_FUNCTION_13_18(v17, v18, v19, v20, v21, v22, v23, v24, v109, v110, v111, v112, v113, v114, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14CF8);
    if (swift_dynamicCast())
    {
      break;
    }

    v118 = 0;
    v116 = 0u;
    v117 = 0u;
    v38 = sub_19292E1F0(&v116, &qword_1EAE14D00);
    OUTLINED_FUNCTION_13_18(v38, v39, v40, v41, v42, v43, v44, v45, v109, v110, v111, v112, v113, v114, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14D08);
    v46 = swift_dynamicCast();
    if (v46)
    {
      v114 = v16;
      v54 = v119;
      v55 = *(v119 + 16);
      if (v55)
      {
        v119 = MEMORY[0x1E69E7CC0];
        sub_192BC5858();
        v56 = v119;
        v57 = v54 + 32;
        do
        {
          sub_1928F6068(v57, &v124);
          v58 = v127;
          v59 = v128;
          __swift_project_boxed_opaque_existential_0(&v124, v127);
          OUTLINED_FUNCTION_18_21();
          v61 = v60(v58, v59);
          __swift_destroy_boxed_opaque_existential_0(&v124);
          v119 = v56;
          v62 = *(v56 + 16);
          v3 = v62 + 1;
          if (v62 >= *(v56 + 24) >> 1)
          {
            sub_192BC5858();
            v56 = v119;
          }

          *(v56 + 16) = v3;
          *(v56 + 8 * v62 + 32) = v61;
          v57 += 40;
          --v55;
        }

        while (v55);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12F08);
      sub_192F96AFC();

      swift_isUniquelyReferenced_nonNull_native();
      v124 = v5;
      sub_1929225DC(v114, v15);
      OUTLINED_FUNCTION_2_40();
      if (v28)
      {
        goto LABEL_62;
      }

      OUTLINED_FUNCTION_19_20();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14D10);
      if (OUTLINED_FUNCTION_5_30())
      {
        sub_1929225DC(v114, v15);
        OUTLINED_FUNCTION_3_42();
        if (!v29)
        {
          goto LABEL_71;
        }
      }

      v5 = v124;
      OUTLINED_FUNCTION_1_45();
      *v87 = v114;
      v87[1] = v15;
      OUTLINED_FUNCTION_10_23();
      sub_19292E1F0(v88, &unk_1EAE14C90);
      OUTLINED_FUNCTION_11_27();
      if (v28)
      {
        goto LABEL_65;
      }

      goto LABEL_44;
    }

    OUTLINED_FUNCTION_13_18(v46, v47, v48, v49, v50, v51, v52, v53, v109, v110, v111, v112, v113, v115, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0]);

    v63 = swift_dynamicCast();
    if (v63)
    {
      v71 = v119;
      v72 = sub_192C964DC(v119);
      if (v72)
      {
        swift_unknownObjectRetain();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_6_34();
        OUTLINED_FUNCTION_2_40();
        if (v28)
        {
          goto LABEL_67;
        }

        OUTLINED_FUNCTION_19_20();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14D10);
        if (OUTLINED_FUNCTION_5_30())
        {
          OUTLINED_FUNCTION_9_29();
          OUTLINED_FUNCTION_3_42();
          if (!v29)
          {
            goto LABEL_71;
          }

          v6 = v80;
        }

        if ((v16 & 1) == 0)
        {
          v5 = v124;
          OUTLINED_FUNCTION_1_45();
          *v105 = v3;
          v105[1] = v15;
          *(*(v5 + 56) + 8 * v6) = v71;
          swift_unknownObjectRelease();
          sub_19292E1F0(v130, &unk_1EAE14C90);
          OUTLINED_FUNCTION_11_27();
          if (v28)
          {
            goto LABEL_70;
          }

LABEL_44:
          *(v5 + 16) = v86;
          goto LABEL_59;
        }

        v5 = v124;
        *(*(v124 + 56) + 8 * v6) = v71;
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_13_18(v72, v73, v74, v75, v76, v77, v78, v79, v109, v110, v111, v112, v113, v114, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0]);

        sub_192F9682C();
        v97 = v16;
        v98 = sub_192F9679C();

        swift_isUniquelyReferenced_nonNull_native();
        v124 = v5;
        v3 = v97;
        sub_1929225DC(v97, v15);
        OUTLINED_FUNCTION_2_40();
        if (v28)
        {
          goto LABEL_66;
        }

        v101 = v99;
        v102 = v100;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14D10);
        if (OUTLINED_FUNCTION_5_30())
        {
          v103 = OUTLINED_FUNCTION_9_29();
          if ((v102 & 1) != (v104 & 1))
          {
            goto LABEL_71;
          }

          v101 = v103;
        }

        v5 = v124;
        if (v102)
        {
          *(*(v124 + 56) + 8 * v101) = v98;
          swift_unknownObjectRelease();
        }

        else
        {
          OUTLINED_FUNCTION_1_45();
          *v106 = v97;
          v106[1] = v15;
          *(*(v5 + 56) + 8 * v101) = v98;
          OUTLINED_FUNCTION_11_27();
          if (v28)
          {
            goto LABEL_69;
          }

          *(v5 + 16) = v107;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_13_18(v63, v64, v65, v66, v67, v68, v69, v70, v109, v110, v111, v112, v113, v114, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0]);

      sub_192F9682C();
      sub_192F9679C();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_34();
      OUTLINED_FUNCTION_2_40();
      if (v28)
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_19_20();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14D10);
      if (OUTLINED_FUNCTION_5_30())
      {
        OUTLINED_FUNCTION_9_29();
        OUTLINED_FUNCTION_3_42();
        if (!v29)
        {
          goto LABEL_71;
        }
      }

      if ((v16 & 1) == 0)
      {
        v5 = v124;
        OUTLINED_FUNCTION_1_45();
        *v84 = v3;
        v84[1] = v15;
        OUTLINED_FUNCTION_10_23();
        sub_19292E1F0(v85, &unk_1EAE14C90);
        OUTLINED_FUNCTION_11_27();
        if (v28)
        {
          goto LABEL_68;
        }

        goto LABEL_44;
      }

      OUTLINED_FUNCTION_16_22(v89, v90, v91, v92, v93, v94, v95, v96, v109, v110, v111, v112, v113, v114, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, v120, v121, v122, v123, v124);
    }

    swift_unknownObjectRelease();
    sub_19292E1F0(v130, &unk_1EAE14C90);
LABEL_59:
    v6 = &v124;
  }

  sub_19292D380(&v116, &v119);
  v25 = v122;
  v26 = v123;
  __swift_project_boxed_opaque_existential_0(&v119, v122);
  OUTLINED_FUNCTION_18_21();
  v27(v25, v26);
  sub_192F9667C();

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_6_34();
  OUTLINED_FUNCTION_2_40();
  if (!v28)
  {
    OUTLINED_FUNCTION_19_20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14D10);
    if (OUTLINED_FUNCTION_5_30())
    {
      OUTLINED_FUNCTION_9_29();
      OUTLINED_FUNCTION_3_42();
      if (!v29)
      {
        goto LABEL_71;
      }
    }

    if (v16)
    {

      OUTLINED_FUNCTION_16_22(v30, v31, v32, v33, v34, v35, v36, v37, v109, v110, v111, v112, v113, v114, v116, *(&v116 + 1), v117, *(&v117 + 1), v118, v119, v120, v121, v122, v123, v124);
      swift_unknownObjectRelease();
      sub_19292E1F0(v130, &unk_1EAE14C90);
    }

    else
    {
      v5 = v124;
      OUTLINED_FUNCTION_1_45();
      *v81 = v3;
      v81[1] = v15;
      OUTLINED_FUNCTION_10_23();
      sub_19292E1F0(v82, &unk_1EAE14C90);
      OUTLINED_FUNCTION_11_27();
      if (v28)
      {
        goto LABEL_63;
      }

      *(v5 + 16) = v83;
    }

    __swift_destroy_boxed_opaque_existential_0(&v119);
    goto LABEL_59;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
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
  result = sub_192F977CC();
  __break(1u);
  return result;
}

BOOL sub_192C964DC(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v8];
  v2 = v8[0];
  if (v1)
  {
    v3 = sub_192F95B7C();
    sub_19290CA6C(v3, v4);
  }

  else
  {
    v5 = v2;
    v6 = sub_192F958DC();

    swift_willThrow();
  }

  return v1 != 0;
}

unint64_t sub_192C965B4()
{
  result = qword_1EAE14CC8;
  if (!qword_1EAE14CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE14CC0);
    sub_192C966C0(&unk_1EAE14CD0, &qword_1EAE12F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14CC8);
  }

  return result;
}

uint64_t sub_192C966C0(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_192C96748()
{
  v1.value._countAndFlagsBits = sub_192F967CC();
  v2 = ACAccountStore.accountType(withIdentifier:)(v1);
  if (v3)
  {
  }

  else
  {
    v5 = v2;

    if (v5)
    {
      v0 = ACAccountStore.accounts(with:)(v5);
    }

    else
    {
      return 0;
    }
  }

  return v0;
}

void static EmptyUsernameMigrator.migrateEmptyUsernames()()
{
  v99 = [objc_opt_self() ams_sharedAccountStore];
  v1 = sub_192C96748();
  v2 = v1;
  if (v1)
  {
    v3 = sub_192BC4858(v1);
    if (v3)
    {
      v4 = v3;
      if (v3 >= 1)
      {
        v5 = 0;
        v6 = v2 & 0xC000000000000001;
        v86 = 0x8000000193020900;
        v81 = xmmword_192FBCD40;
        v78 = 0xD000000000000031;
        v89 = v2 & 0xC000000000000001;
        v92 = v0;
        while (1)
        {
          v7 = v6 ? MEMORY[0x193B116C0](v5, v2) : *(v2 + 8 * v5 + 32);
          v8 = v7;
          v9 = sub_192C97154(v7);
          if (!v10)
          {
            break;
          }

          if (v9 || v10 != 0xE000000000000000)
          {
            v11 = sub_192F9775C();

            if ((v11 & 1) == 0)
            {
              break;
            }
          }

          else
          {
          }

          if ([v8 ams_isLocalAccount])
          {
            sub_192C971B8(0x6C61636F6CLL, 0xE500000000000000, v8);
          }

          else
          {
            v12 = [v99 ams:v8 iCloudAccountForAccount:?];
            if (!v12)
            {
              if (qword_1ED6DE070 != -1)
              {
                OUTLINED_FUNCTION_1_46();
                swift_once();
              }

              osloga = qword_1ED6DE078;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
              v16 = swift_allocObject();
              *(v16 + 16) = v81;
              v17 = AMSSetLogKeyIfNeeded();
              v18 = sub_192F967CC();
              v20 = v19;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
              v21 = OUTLINED_FUNCTION_90();
              OUTLINED_FUNCTION_3_9(v21, v22, v23, v24, v25, v26, v27, v28, v75, v78, v81, *(&v81 + 1), v86, v89, v92, osloga, v29);
              v30 = sub_192F979EC();
              OUTLINED_FUNCTION_2_41(v30, v31);
              MEMORY[0x193B10CE0](v18, v20);

              MEMORY[0x193B10CE0](93, 0xE100000000000000);
              v32 = MEMORY[0x1E69E6158];
              v104 = MEMORY[0x1E69E6158];
              *(v21 + 48) = 0u;
              *(v21 + 32) = 0u;
              sub_19286D180(&v101, v21 + 32);
              *(v21 + 64) = 0;
              *(v16 + 32) = v21;
              v33 = OUTLINED_FUNCTION_90();
              OUTLINED_FUNCTION_3_9(v33, v34, v35, v36, v37, v38, v39, v40, v76, v79, v82, v84, v87, v90, v93, oslogb, v41);
              v104 = v32;
              v101 = v80;
              v102 = v88;
              *(v42 + 48) = 0u;
              *(v42 + 32) = 0u;
              sub_19286D180(&v101, v42 + 32);
              v33[4].n128_u8[0] = 0;
              *(v16 + 40) = v33;
              v104 = sub_192C50B90();
              v101 = v8;
              v43 = OUTLINED_FUNCTION_90();
              OUTLINED_FUNCTION_3_9(v43, v44, v45, v46, v47, v48, v49, v50, v77, v80, v83, v85, v88, v91, v94, oslogc, v51);
              sub_192878268(&v101, v100);
              *(v43 + 48) = 0u;
              *(v43 + 32) = 0u;
              v52 = v8;
              sub_19286D180(v100, v43 + 32);
              *(v43 + 64) = 2;
              *(v16 + 48) = v43;
              sub_192907DE8(&v101);
              v53 = sub_192F96E5C();
              if (os_log_type_enabled(oslog, v53))
              {
                v54 = objc_autoreleasePoolPush();
                if (qword_1ED6DF1A0 != -1)
                {
                  OUTLINED_FUNCTION_1_3();
                  swift_once();
                }

                v55 = byte_1ED6DE5D8;
                v56 = swift_allocObject();
                *(v56 + 16) = v55;
                v101 = v16;
                v102 = sub_192BB97CC;
                v103 = v56;

                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
                sub_1928FD924();
                OUTLINED_FUNCTION_8_4();
                v57 = sub_192F9674C();
                v59 = v58;

                objc_autoreleasePoolPop(v54);
                v60 = objc_autoreleasePoolPush();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
                v61 = OUTLINED_FUNCTION_90();
                OUTLINED_FUNCTION_3_9(v61, v62, v63, v64, v65, v66, v67, v68, v75, v78, v81, *(&v81 + 1), v86, v89, v92, oslog, v69);
                *(v70 + 56) = MEMORY[0x1E69E6158];
                v61[4].n128_u64[0] = sub_1928FDB30();
                v61[2].n128_u64[0] = v57;
                v61[2].n128_u64[1] = v59;
                sub_192F9622C();

                objc_autoreleasePoolPop(v60);
              }

              v6 = v89;
              goto LABEL_29;
            }

            v13 = v12;
            sub_192C97154(v12);
            if (v14)
            {
              v15 = sub_192F9679C();
            }

            else
            {
              v15 = 0;
            }

            [v8 setUsername_];
          }

          v71 = [v99 ams:v8 saveAccount:?];
          [v71 waitUntilFinished];

LABEL_29:
          if (v4 == ++v5)
          {

            OUTLINED_FUNCTION_6_35();
            return;
          }
        }

        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {

      OUTLINED_FUNCTION_6_35();
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
  }
}

id EmptyUsernameMigrator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmptyUsernameMigrator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyUsernameMigrator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EmptyUsernameMigrator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyUsernameMigrator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192C97154(void *a1)
{
  v1 = [a1 username];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_192F967CC();

  return v3;
}

void sub_192C971B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_192F9679C();

  [a3 setUsername_];
}

uint64_t static EngagementDeepLink.makeURL(hint:context:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  i = 0xD000000000000014;
  v82.n128_u64[0] = 0xD000000000000014;
  v82.n128_u64[1] = 0x8000000193020960;
  MEMORY[0x193B10CE0]();
  if (a3 && *(a3 + 16))
  {
    v62 = v82.n128_i64[1];
    v64 = v82.n128_u64[0];
    v66 = a4;
    v68 = a1;
    v70 = a2;
    v72 = a3;
    a2 = a3 + 64;
    v9 = 1 << *(a3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    a1 = v10 & *(a3 + 64);
    v11 = (v9 + 63) >> 6;

    v12 = 0;
    v13 = 0;
    for (i = 0xE000000000000000; a1; i = v26)
    {
      v14 = v12;
      a3 = v72;
LABEL_12:
      v15 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v16 = v15 | (v14 << 6);
      v17 = (*(a3 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_19286C588(*(a3 + 56) + 32 * v16, &v83);
      v82.n128_u64[0] = v19;
      v82.n128_u64[1] = v18;
      sub_1928F9460(&v82, &v76, &unk_1EAE14940);
      v20 = v76;
      v21 = v77;
      sub_1928FA5CC(&v78);
      v76 = v13;
      v77 = i;

      MEMORY[0x193B10CE0](38, 0xE100000000000000);

      MEMORY[0x193B10CE0](v20, v21);

      MEMORY[0x193B10CE0](61, 0xE100000000000000);

      v22 = v76;
      v23 = v77;
      v76 = 0;
      v77 = 0xE000000000000000;
      sub_192F973CC();
      v24 = v76;
      v25 = v77;
      v76 = v22;
      v77 = v23;

      MEMORY[0x193B10CE0](v24, v25);

      v13 = v76;
      v26 = v77;
      __swift_destroy_boxed_opaque_existential_0(v85);
      sub_1928FC07C(&v82, &unk_1EAE14940);
    }

    a3 = v72;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        v82.n128_u64[0] = v64;
        v82.n128_u64[1] = v62;

        MEMORY[0x193B10CE0](v13, i);

        a1 = v68;
        a2 = v70;
        i = 0xD000000000000014;
        a4 = v66;
        goto LABEL_15;
      }

      a1 = *(a2 + 8 * v14);
      ++v12;
      if (a1)
      {
        v12 = v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_17;
  }

LABEL_15:
  sub_192F95A3C();

  v27 = sub_192F95A8C();
  result = __swift_getEnumTagSinglePayload(a4, 1, v27);
  if (result != 1)
  {
    return result;
  }

  if (qword_1EAE12208 != -1)
  {
    goto LABEL_35;
  }

LABEL_17:
  v29 = qword_1EAE12210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE131A0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_192FBCD90;
  v31 = AMSSetLogKeyIfNeeded();
  v32 = sub_192F967CC();
  v34 = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12DF0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_192FBCD50;
  v82.n128_u64[0] = i + 1;
  v82.n128_u64[1] = 0x8000000193020980;
  MEMORY[0x193B10CE0](v32, v34);

  MEMORY[0x193B10CE0](93, 0xE100000000000000);
  v36 = MEMORY[0x1E69E6158];
  *(&v83 + 1) = MEMORY[0x1E69E6158];
  *(v35 + 48) = 0u;
  *(v35 + 32) = 0u;
  sub_19286D180(&v82, v35 + 32);
  *(v35 + 64) = 0;
  *(v30 + 32) = v35;
  sub_19287AEE0();
  v86 = v37;
  v38._countAndFlagsBits = 0xD000000000000024;
  v38._object = 0x80000001930209A0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
  v79 = v36;
  v76 = a1;
  v77 = a2;
  sub_1928F9460(&v76, v85, &unk_1EAE131B0);
  v82 = 0u;
  v83 = 0u;

  sub_19286D180(v85, &v82);
  v84 = 3;
  v39 = v86;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v39 = v56;
    v86 = v56;
  }

  v40 = *(v39 + 16);
  if (v40 >= *(v39 + 24) >> 1)
  {
    sub_19287AEE0();
    v39 = v57;
  }

  *(v39 + 16) = v40 + 1;
  OUTLINED_FUNCTION_2_42(v39 + 40 * v40, v60, v62, v64, v66, v68, v70, 1, 2, v76, v77, v78, v79, v80, v81, v82, v83, v84);
  v86 = v39;
  sub_1928FC07C(&v76, &unk_1EAE131B0);
  v41._countAndFlagsBits = 0x7865746E6F63202CLL;
  v41._object = 0xEB00000000203A74;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v41);
  if (a3)
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE131E0);
    v43 = a3;
  }

  else
  {
    v43 = 0;
    v42 = 0;
    v77 = 0;
    v78 = 0;
  }

  v76 = v43;
  v79 = v42;
  sub_1928F9460(&v76, v85, &unk_1EAE131B0);
  v82 = 0u;
  v83 = 0u;

  sub_19286D180(v85, &v82);
  v84 = 3;
  v44 = v86;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_113();
    sub_19287AEE0();
    v44 = v58;
  }

  v45 = *(v44 + 16);
  if (v45 >= *(v44 + 24) >> 1)
  {
    sub_19287AEE0();
    v44 = v59;
  }

  *(v44 + 16) = v45 + 1;
  OUTLINED_FUNCTION_2_42(v44 + 40 * v45, v61, v63, v65, v67, v69, v71, v73, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
  v86 = v44;
  sub_1928FC07C(&v76, &unk_1EAE131B0);
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v46);
  *(v30 + 40) = v86;
  v47 = sub_192F96E5C();
  if (os_log_type_enabled(v29, v47))
  {
    v48 = objc_autoreleasePoolPush();
    if (qword_1ED6DF1A0 != -1)
    {
      swift_once();
    }

    v49 = byte_1ED6DE5D8;
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    v82.n128_u64[0] = v30;
    v82.n128_u64[1] = sub_1928FA5C4;
    *&v83 = v50;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DB0);
    sub_1928FD924();
    v51 = sub_192F9674C();
    v53 = v52;

    objc_autoreleasePoolPop(v48);
    v54 = objc_autoreleasePoolPush();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE12DC0);
    v55 = swift_allocObject();
    *(v55 + 16) = v74;
    *(v55 + 56) = v36;
    *(v55 + 64) = sub_1928FDB30();
    *(v55 + 32) = v51;
    *(v55 + 40) = v53;
    sub_192F9622C();

    objc_autoreleasePoolPop(v54);
  }
}

void static EngagementDeepLink.isValidURL(_:)()
{
  sub_192F95A4C();
  if (v0)
  {
    v1 = sub_192873B04();
    v7 = OUTLINED_FUNCTION_1_47(v1, v2, v3, v4, v5, v6);

    v8 = 0;
    v9 = *(v7 + 16);
    v10 = v7 + 40;
    v39 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v11 = v10 + 16 * v8;
    while (v9 != v8)
    {
      if (v8 >= *(v7 + 16))
      {
        __break(1u);
        return;
      }

      v18 = OUTLINED_FUNCTION_1_47(v12, v13, v14, v15, v16, v17);
      if (v18[2] == 2)
      {
        v19 = v18[5];
        v20 = v18[7];
        v36 = v18[6];
        v37 = v18[4];

        v38 = v20;

        v21 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_113();
          sub_192874D10();
          v21 = v24;
        }

        v22 = v21[2];
        if (v22 >= v21[3] >> 1)
        {
          sub_192874D10();
          v21 = v25;
        }

        ++v8;
        v21[2] = v22 + 1;
        v39 = v21;
        v23 = &v21[4 * v22];
        v23[4] = v37;
        v23[5] = v19;
        v10 = v7 + 40;
        v23[6] = v36;
        v23[7] = v38;
        goto LABEL_3;
      }

      v11 += 16;
      ++v8;
    }

    v26 = v39[2];
    v27 = v39 + 7;
    v28 = v26;
    if (v26)
    {
      while (1)
      {
        v29 = *(v27 - 1);
        v30 = *v27;
        v31 = *(v27 - 3) == 0x6574756F72 && *(v27 - 2) == 0xE500000000000000;
        if (v31 || (sub_192F9775C() & 1) != 0)
        {
          v32 = v29 == 0x6567617373656DLL && v30 == 0xE700000000000000;
          if (v32 || (sub_192F9775C() & 1) != 0)
          {
            break;
          }
        }

        v27 += 4;
        if (!--v28)
        {
          goto LABEL_34;
        }
      }

      v33 = v39 + 5;
      v34 = v26 + 1;
      do
      {
        if (!--v34)
        {
          break;
        }

        if (*(v33 - 1) == 1953393000 && *v33 == 0xE400000000000000)
        {
          break;
        }

        v33 += 4;
      }

      while ((sub_192F9775C() & 1) == 0);
    }

LABEL_34:
  }
}

_BYTE *storeEnumTagSinglePayload for EngagementDeepLink(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_192C97DA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_192C97DC8, 0, 0);
}

uint64_t sub_192C97DC8()
{
  v1 = [objc_allocWithZone(AMSEngagement) initWithBag_];
  v0[21] = v1;
  v2 = sub_192F9667C();
  v3 = [v1 enqueueData_];
  v0[22] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_192C97F60;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14D38);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19293A7A4;
  v0[13] = &block_descriptor_21;
  v0[14] = v4;
  [v3 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_192C97F60()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_192C980DC;
  }

  else
  {
    v2 = sub_192C98070;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_192C98070()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_192C980DC()
{
  v1 = v0[22];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_192C98154(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_192C45F38;

  return sub_192C97DA8(v3, v4);
}

uint64_t sub_192C981F0(uint64_t a1, uint64_t a2)
{
  sub_192C98440(a2, v12);
  v4 = v13;
  if (!v13)
  {
    sub_1928FC07C(v12, &qword_1EAE14D20);
    sub_192BD2718();
    swift_allocError();
    *v9 = 3;
    goto LABEL_7;
  }

  v5 = v14;
  __swift_project_boxed_opaque_existential_0(v12, v13);
  v6 = (*(v5 + 16))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v12);
  sub_192BD2718();
  v7 = swift_allocError();
  *v8 = 3;
  if (!v6)
  {
LABEL_7:

    swift_willThrow();
    sub_1928FC07C(a2, &qword_1EAE14D20);
    return a1;
  }

  sub_192952700(0x746E657665, 0xE500000000000000);

  if (!v13)
  {
    sub_1928FC07C(v12, &unk_1EAE131B0);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13970);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_192C984B0();
    swift_allocError();
    swift_willThrow();
    sub_1928FC07C(a2, &qword_1EAE14D20);
    swift_unknownObjectRelease();
    return a1;
  }

  a1 = v11;
  sub_1928FC07C(a2, &qword_1EAE14D20);
  return a1;
}

uint64_t sub_192C98414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_192C981F0(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_192C98440(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_192C984B0()
{
  result = qword_1EAE14D28;
  if (!qword_1EAE14D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14D28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EngagementEnqueueAction.PerformError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_192C985B4()
{
  result = qword_1EAE14D40;
  if (!qword_1EAE14D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14D40);
  }

  return result;
}

uint64_t sub_192C98608()
{
  sub_192F968BC();

  return sub_192F968BC();
}

uint64_t sub_192C98658()
{
  sub_192F9789C();
  sub_192F968BC();
  sub_192F968BC();
  return sub_192F978DC();
}

void sub_192C986E0()
{
  OUTLINED_FUNCTION_0_39();
  v1 = v0 + OBJC_IVAR___AMSEngagementMessageCache_cacheInfo;
  os_unfair_lock_lock((v0 + OBJC_IVAR___AMSEngagementMessageCache_cacheInfo));
  swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v1 + 8);
  OUTLINED_FUNCTION_1_48();
  sub_192C9A4C0();
  *(v1 + 8) = v2;

  os_unfair_lock_unlock(v1);
}

uint64_t sub_192C98810()
{
  OUTLINED_FUNCTION_0_39();
  swift_getObjectType();
  v2 = (v0 + OBJC_IVAR___AMSEngagementMessageCache_cacheInfo);
  os_unfair_lock_lock(v2);
  OUTLINED_FUNCTION_1_48();
  sub_192C98898(v3, v4, v1, v5);
  os_unfair_lock_unlock(v2);
  return v7;
}

uint64_t sub_192C98898@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X5>, _BYTE *a4@<X8>)
{
  v5 = *result;
  v6 = *(*result + 16);
  if (v6)
  {
    result = sub_19286F04C(a2);
    if (v8)
    {
      result = sub_192C98920(a3, *(*(v5 + 56) + 8 * result));
      LOBYTE(v6) = result & 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  *a4 = v6;
  return result;
}

uint64_t sub_192C98920(void *a1, uint64_t a2)
{
  if ([a1 presentationAction] == 1)
  {
    return (a2 == 1) & ~[a1 isMessageCached];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_192C98A24@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  *a3 = *a1;
  result = sub_192C98920(v4, a2);
  *(a3 + 8) = result & 1;
  return result;
}

id EngagementMessageCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EngagementMessageCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementMessageCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192C98B94(void *a1)
{
  v1 = [a1 placementsMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14D68);
  v3 = sub_192F9669C();

  return v3;
}

void sub_192C98C10(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14D68);
  v3 = sub_192F9667C();

  [a2 setPlacementsMap_];
}

uint64_t sub_192C98CA0(void *a1)
{
  v1 = [a1 messageIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_192F967CC();

  return v3;
}

id AMSCompatibleError.errorCode.getter()
{
  sub_192F9551C();
  v0 = OUTLINED_FUNCTION_41_10();
  sub_192952700(v0, 0xE900000000000065);

  sub_1928F9400(&v6, &v4, &unk_1EAE131B0);
  if (!*(&v5 + 1))
  {
    sub_1928FB988(&v4, &unk_1EAE131B0);
LABEL_5:
    v4 = v6;
    v5 = v7;
    if (*(&v7 + 1))
    {
      if (OUTLINED_FUNCTION_45())
      {
        return v3;
      }
    }

    else
    {
      sub_1928FB988(&v4, &unk_1EAE131B0);
    }

    return 0;
  }

  sub_192874CD0(0, &qword_1ED6DDBB0);
  if ((OUTLINED_FUNCTION_45() & 1) == 0)
  {
    goto LABEL_5;
  }

  v1 = [v3 integerValue];

  sub_1928FB988(&v6, &unk_1EAE131B0);
  return v1;
}

void AMSCompatibleError.errorUserInfo.getter()
{
  OUTLINED_FUNCTION_168();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v161 = &v153 - v6;
  v162 = sub_192F95A8C();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_15();
  v160 = v12 - v11;
  v13 = sub_192F9792C();
  OUTLINED_FUNCTION_8();
  v15 = v14;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v153 - v22;
  v24 = sub_192F966CC();
  *(&v182 + 1) = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v181);
  v26 = v1;
  v27 = v23;
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v26, v3);
  sub_192F978EC();
  v28 = sub_192F9791C();
  v29 = &v178;
  sub_192C99CE0(v28, &v178);

  if (!v180)
  {
    (*(v15 + 8))(v27, v13);
    sub_1928FB988(&v178, &unk_1EAE13B10);
LABEL_141:
    OUTLINED_FUNCTION_166();
    return;
  }

  v181 = v178;
  sub_192936CB8(&v179, &v182);

  sub_192936CB8(&v182, v184);
  sub_19286C588(v184, &v181);
  sub_192F978EC();
  sub_192F9791C();
  v30 = sub_192F973BC();

  v166 = 0x800000019301B110;
  v156 = *MEMORY[0x1E696A998];
  v157 = (v8 + 32);
  v154 = (v8 + 8);
  v155 = (v8 + 16);
  v158 = *MEMORY[0x1E696A588];
  v159 = *MEMORY[0x1E696A578];
  v31 = *MEMORY[0x1E696A750];
  v163 = v20;
  v164 = v31;
  v165 = *MEMORY[0x1E696AA08];
  v167 = v13;
  v168 = v15;
  v169 = v27;
  v170 = v30;
  while (1)
  {
    while (1)
    {
      sub_192F974EC();
      if (!v183)
      {

        v152 = *(v15 + 8);
        v152(v163, v13);
        __swift_destroy_boxed_opaque_existential_0(v184);
        v152(v27, v13);
        goto LABEL_141;
      }

      v178 = v181;
      sub_192936CB8(&v182, v29 + 1);
      sub_1928F9400(&v178, &v175, &unk_1EAE14C90);
      v173 = v175;
      sub_192936CB8(&v176, &v174);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14C90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13B20);
      if (swift_dynamicCast())
      {
        break;
      }

      OUTLINED_FUNCTION_54_5(&v178);
      v171 = 0u;
      memset(v172, 0, sizeof(v172));
      sub_1928FB988(&v171, &unk_1EAE14D70);
    }

    v32 = *(&v171 + 1);
    v29 = v171;
    sub_192936CB8(v172, &v177);
    v33 = v29 == 0x69796C7265646E75 && v32 == 0xEF726F727245676ELL;
    if (v33 || (OUTLINED_FUNCTION_21_2() & 1) != 0)
    {
      break;
    }

    v47 = v29 == 0xD000000000000010 && v166 == v32;
    if (v47 || (OUTLINED_FUNCTION_21_2() & 1) != 0)
    {

      OUTLINED_FUNCTION_42_5();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13B40);
      OUTLINED_FUNCTION_26_6();
      if ((OUTLINED_FUNCTION_25() & 1) == 0)
      {
        goto LABEL_128;
      }

      v49 = v173;
      v50 = sub_192F967CC();
      v29 = v51;
      *(&v176 + 1) = v48;
      *&v175 = v49;
      OUTLINED_FUNCTION_12_21();
      OUTLINED_FUNCTION_12_12();
      OUTLINED_FUNCTION_4_44();
      if (__OFADD__(v54, v55))
      {
        goto LABEL_144;
      }

      v56 = v52;
      v57 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE144C0);
      if (OUTLINED_FUNCTION_19_10())
      {
        OUTLINED_FUNCTION_37_12();
        OUTLINED_FUNCTION_20_9();
        v27 = v169;
        if (!v33)
        {
          goto LABEL_158;
        }

        v56 = v58;
      }

      else
      {
        v27 = v169;
      }

      v24 = v171;
      if (v57)
      {
        OUTLINED_FUNCTION_11_28();
      }

      else
      {
        OUTLINED_FUNCTION_1_24();
        *v67 = v50;
        v67[1] = v29;
        OUTLINED_FUNCTION_8_34(v68, (*(v24 + 56) + 32 * v56));
        if (v62)
        {
          goto LABEL_145;
        }

        *(v24 + 16) = v69;
      }

      v70 = OUTLINED_FUNCTION_16_8();
      OUTLINED_FUNCTION_54_5(v70);
      v13 = v167;
      v15 = v168;
LABEL_129:
      OUTLINED_FUNCTION_68_1();
    }

    else
    {
      if (v29 == 0x7470697263736564 && v32 == 0xEB000000006E6F69)
      {

        v66 = MEMORY[0x1E69E6158];
        goto LABEL_48;
      }

      v65 = OUTLINED_FUNCTION_21_2();
      v66 = MEMORY[0x1E69E6158];
      if (v65)
      {

LABEL_48:
        OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_26_6();
        if (OUTLINED_FUNCTION_25())
        {
          v71 = v173;
          v72 = sub_192F967CC();
          v29 = v73;
          *(&v176 + 1) = v66;
          v175 = v71;
          OUTLINED_FUNCTION_12_21();
          OUTLINED_FUNCTION_12_12();
          OUTLINED_FUNCTION_4_44();
          if (__OFADD__(v76, v77))
          {
            goto LABEL_146;
          }

          v78 = v74;
          v79 = v75;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE144C0);
          if (OUTLINED_FUNCTION_19_10())
          {
            OUTLINED_FUNCTION_37_12();
            OUTLINED_FUNCTION_20_9();
            v27 = v169;
            if (!v33)
            {
              goto LABEL_158;
            }

            v78 = v80;
          }

          else
          {
            v27 = v169;
          }

          v24 = v171;
          if (v79)
          {
            goto LABEL_67;
          }

          OUTLINED_FUNCTION_1_24();
          *v92 = v72;
          v92[1] = v29;
          OUTLINED_FUNCTION_8_34(v93, (*(v24 + 56) + 32 * v78));
          if (v62)
          {
            goto LABEL_147;
          }

LABEL_69:
          *(v24 + 16) = v94;
          goto LABEL_70;
        }

LABEL_128:
        v145 = OUTLINED_FUNCTION_16_8();
        OUTLINED_FUNCTION_54_5(v145);
        goto LABEL_129;
      }

      v81 = v29 == 0x526572756C696166 && v32 == 0xED00006E6F736165;
      if (v81 || (OUTLINED_FUNCTION_21_2() & 1) != 0)
      {

        OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_26_6();
        if (OUTLINED_FUNCTION_25())
        {
          v82 = v173;
          v83 = sub_192F967CC();
          v29 = v84;
          *(&v176 + 1) = v66;
          v175 = v82;
          OUTLINED_FUNCTION_12_21();
          OUTLINED_FUNCTION_12_12();
          OUTLINED_FUNCTION_4_44();
          if (__OFADD__(v87, v88))
          {
            goto LABEL_148;
          }

          v89 = v85;
          v90 = v86;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE144C0);
          if (OUTLINED_FUNCTION_19_10())
          {
            OUTLINED_FUNCTION_37_12();
            OUTLINED_FUNCTION_20_9();
            v27 = v169;
            if (!v33)
            {
              goto LABEL_158;
            }

            v89 = v91;
          }

          else
          {
            v27 = v169;
          }

          v24 = v171;
          if ((v90 & 1) == 0)
          {
            OUTLINED_FUNCTION_1_24();
            *v106 = v83;
            v106[1] = v29;
            OUTLINED_FUNCTION_8_34(v107, (*(v24 + 56) + 32 * v89));
            if (v62)
            {
              goto LABEL_149;
            }

            goto LABEL_69;
          }

LABEL_67:
          OUTLINED_FUNCTION_11_28();

LABEL_70:
          v13 = v167;
          v15 = v168;
LABEL_71:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_72;
        }

        goto LABEL_128;
      }

      v96 = v29 == 0x646F43726F727265 && v32 == 0xE900000000000065;
      if (v96 || (OUTLINED_FUNCTION_41_10(), (OUTLINED_FUNCTION_21_2() & 1) != 0))
      {
        OUTLINED_FUNCTION_42_5();
        type metadata accessor for Code(0);
        OUTLINED_FUNCTION_26_6();
        v97 = swift_dynamicCast();
        v98 = MEMORY[0x1E69E6530];
        if (v97)
        {
          *(&v176 + 1) = MEMORY[0x1E69E6530];
          *&v175 = v173;
          OUTLINED_FUNCTION_12_21();
          OUTLINED_FUNCTION_15_9();
          OUTLINED_FUNCTION_4_44();
          if (__OFADD__(v101, v102))
          {
            goto LABEL_150;
          }

          v103 = v99;
          v104 = v100;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE144C0);
          if (OUTLINED_FUNCTION_18_11())
          {
            OUTLINED_FUNCTION_38_7();
            OUTLINED_FUNCTION_14_0();
            if (!v33)
            {
              goto LABEL_158;
            }

            v103 = v105;
          }

          v24 = v171;
          if (v104)
          {
            OUTLINED_FUNCTION_11_28();
          }

          else
          {
            OUTLINED_FUNCTION_2_16();
            *v111 = v29;
            v111[1] = v32;
            OUTLINED_FUNCTION_8_34(v112, (*(v24 + 56) + 32 * v103));
            if (v62)
            {
              goto LABEL_152;
            }

            *(v24 + 16) = v113;
          }

          v15 = v168;
          v27 = v169;
          v98 = MEMORY[0x1E69E6530];
        }

        OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_26_6();
        if (OUTLINED_FUNCTION_25())
        {
          *(&v176 + 1) = v98;
          *&v175 = v173;
          OUTLINED_FUNCTION_12_21();
          OUTLINED_FUNCTION_15_9();
          OUTLINED_FUNCTION_4_44();
          if (__OFADD__(v116, v117))
          {
            goto LABEL_151;
          }

          v118 = v114;
          v119 = v115;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE144C0);
          if (OUTLINED_FUNCTION_18_11())
          {
            OUTLINED_FUNCTION_38_7();
            OUTLINED_FUNCTION_14_0();
            if (!v33)
            {
              goto LABEL_158;
            }

            v118 = v120;
          }

          v24 = v171;
          if (v119)
          {
            OUTLINED_FUNCTION_11_28();
          }

          else
          {
            OUTLINED_FUNCTION_2_16();
            *v121 = v29;
            v121[1] = v32;
            OUTLINED_FUNCTION_8_34(v122, (*(v24 + 56) + 32 * v118));
            if (v62)
            {
              goto LABEL_153;
            }

            *(v24 + 16) = v123;
          }

          v15 = v168;
          v27 = v169;
          goto LABEL_71;
        }

LABEL_127:

        goto LABEL_128;
      }

      if (v29 == 7107189 && v32 == 0xE300000000000000)
      {

        v110 = v161;
        goto LABEL_112;
      }

      v109 = OUTLINED_FUNCTION_21_2();
      v110 = v161;
      if (v109)
      {

LABEL_112:
        OUTLINED_FUNCTION_42_5();
        v124 = v162;
        if ((swift_dynamicCast() & 1) == 0)
        {
          v136 = OUTLINED_FUNCTION_16_8();
          OUTLINED_FUNCTION_54_5(v136);
          __swift_storeEnumTagSinglePayload(v110, 1, 1, v124);
          sub_1928FB988(v110, &unk_1EAE144B0);
LABEL_34:
          v27 = v169;
          goto LABEL_129;
        }

        __swift_storeEnumTagSinglePayload(v110, 0, 1, v124);
        v125 = v160;
        (*v157)(v160, v110, v124);
        v126 = sub_192F967CC();
        v29 = v127;
        *(&v176 + 1) = v124;
        v128 = __swift_allocate_boxed_opaque_existential_0(&v175);
        (*v155)(v128, v125, v124);
        OUTLINED_FUNCTION_12_21();
        *&v171 = v24;
        sub_1929225DC(v126, v29);
        OUTLINED_FUNCTION_4_44();
        if (__OFADD__(v131, v132))
        {
          goto LABEL_154;
        }

        v133 = v129;
        v134 = v130;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE144C0);
        if (OUTLINED_FUNCTION_19_10())
        {
          sub_1929225DC(v126, v29);
          OUTLINED_FUNCTION_15_21();
          v27 = v169;
          if (!v33)
          {
            goto LABEL_158;
          }

          v133 = v135;
        }

        else
        {
          v27 = v169;
        }

        v24 = v171;
        if (v134)
        {
          OUTLINED_FUNCTION_11_28();
        }

        else
        {
          OUTLINED_FUNCTION_2_16();
          *v146 = v126;
          v146[1] = v29;
          OUTLINED_FUNCTION_8_34(v147, (*(v24 + 56) + 32 * v133));
          if (v62)
          {
            goto LABEL_155;
          }

          *(v24 + 16) = v148;
        }

        v13 = v167;
        v15 = v168;
        OUTLINED_FUNCTION_68_1();
        (*v154)(v160);
        goto LABEL_72;
      }

      OUTLINED_FUNCTION_42_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE13B30);
      OUTLINED_FUNCTION_26_6();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_127;
      }

      v137 = v173;
      *(&v176 + 1) = swift_getObjectType();
      *&v175 = v137;
      sub_192936CB8(&v175, &v173);
      v153 = v137;
      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_9();
      OUTLINED_FUNCTION_4_44();
      if (__OFADD__(v140, v141))
      {
        goto LABEL_156;
      }

      v142 = v138;
      v143 = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE144C0);
      if (OUTLINED_FUNCTION_18_11())
      {
        OUTLINED_FUNCTION_38_7();
        OUTLINED_FUNCTION_14_0();
        if (!v33)
        {
          goto LABEL_158;
        }

        v142 = v144;
      }

      v24 = v171;
      if (v143)
      {
        OUTLINED_FUNCTION_11_28();
      }

      else
      {
        OUTLINED_FUNCTION_2_16();
        *v149 = v29;
        v149[1] = v32;
        OUTLINED_FUNCTION_8_34(v150, (*(v24 + 56) + 32 * v142));
        if (v62)
        {
          goto LABEL_157;
        }

        *(v24 + 16) = v151;
      }

      v15 = v168;
      v27 = v169;
      OUTLINED_FUNCTION_68_1();
      swift_unknownObjectRelease();
LABEL_72:
      v95 = OUTLINED_FUNCTION_16_8();
      OUTLINED_FUNCTION_54_5(v95);
    }
  }

  v29 = &v178;
  OUTLINED_FUNCTION_42_5();
  v34 = sub_192874CD0(0, &qword_1ED6DE280);
  OUTLINED_FUNCTION_26_6();
  if ((OUTLINED_FUNCTION_25() & 1) == 0)
  {
    goto LABEL_72;
  }

  v35 = v173;
  v36 = sub_192F967CC();
  v38 = v37;
  *(&v176 + 1) = v34;
  *&v175 = v35;
  sub_192936CB8(&v175, &v173);
  v29 = v35;
  swift_isUniquelyReferenced_nonNull_native();
  *&v171 = v24;
  sub_1929225DC(v36, v38);
  OUTLINED_FUNCTION_4_44();
  if (!__OFADD__(v41, v42))
  {
    v43 = v39;
    v44 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE144C0);
    if (OUTLINED_FUNCTION_18_11())
    {
      sub_1929225DC(v36, v38);
      OUTLINED_FUNCTION_14_0();
      if (!v33)
      {
        goto LABEL_158;
      }

      v43 = v45;
    }

    if (v44)
    {

      v24 = v171;
      OUTLINED_FUNCTION_11_28();

      v46 = OUTLINED_FUNCTION_16_8();
      OUTLINED_FUNCTION_54_5(v46);
    }

    else
    {
      v24 = v171;
      OUTLINED_FUNCTION_1_24();
      *v59 = v36;
      v59[1] = v38;
      sub_192936CB8(&v173, (*(v24 + 56) + 32 * v43));

      v60 = OUTLINED_FUNCTION_16_8();
      OUTLINED_FUNCTION_54_5(v60);
      v61 = *(v24 + 16);
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        goto LABEL_143;
      }

      *(v24 + 16) = v63;
    }

    v13 = v167;
    v15 = v168;
    goto LABEL_34;
  }

  __break(1u);
LABEL_143:
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
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  sub_192F977CC();
  __break(1u);
}

uint64_t sub_192C99CE0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(v6) = MEMORY[0x193B11D90](v3, v4, v5, v6);
  swift_unknownObjectRelease();
  if (v6)
  {
    result = swift_unknownObjectRelease();
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  else
  {
    sub_192F9740C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_192C99DAC()
{
  OUTLINED_FUNCTION_168();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = OUTLINED_FUNCTION_5_31(v8, v6);
  sub_19293D540(v9, v10, v11);
  OUTLINED_FUNCTION_0_40();
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = sub_192F977CC();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12D98);
  if (OUTLINED_FUNCTION_44_9())
  {
    sub_19293D540(v7, v5, v3);
    OUTLINED_FUNCTION_15_21();
    if (!v18)
    {
      goto LABEL_14;
    }

    v15 = v17;
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12D80);
    OUTLINED_FUNCTION_166();

    return sub_192C9AE48(v19, v20);
  }

  else
  {
    sub_192C9A7C4(v15, v7, v5, v3, v0, *v1);
    OUTLINED_FUNCTION_166();
  }
}

uint64_t sub_192C99EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_46_9();
  OUTLINED_FUNCTION_42_11();
  v12 = OUTLINED_FUNCTION_5_31(v10, v11);
  sub_192BD4534(v12, v13);
  OUTLINED_FUNCTION_0_40();
  if (v15)
  {
    __break(1u);
LABEL_12:
    result = sub_192F977CC();
    __break(1u);
    return result;
  }

  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14DC0);
  OUTLINED_FUNCTION_10_24();
  if (sub_192F9741C())
  {
    v17 = OUTLINED_FUNCTION_71_1();
    sub_192BD4534(v17, v18);
    if ((v16 & 1) != (v19 & 1))
    {
      goto LABEL_12;
    }
  }

  if (v16)
  {
    sub_192F95EBC();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_39_13();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_29_16();
    sub_192C9A870(v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_71_1();
    OUTLINED_FUNCTION_39_13();

    return sub_192907D90(v34, v35);
  }
}

void sub_192C9A01C()
{
  OUTLINED_FUNCTION_46_9();
  v4 = v3;
  OUTLINED_FUNCTION_42_11();
  v6 = v5;
  v7 = *(v5 + 24);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v7);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  sub_192C9AB60(v12, v2, v1, v4, v0, v7);
  __swift_destroy_boxed_opaque_existential_0(v6);
  OUTLINED_FUNCTION_39_13();
}

uint64_t sub_192C9A100()
{
  OUTLINED_FUNCTION_168();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1929225DC(v3, v1);
  OUTLINED_FUNCTION_0_40();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13308);
  if ((OUTLINED_FUNCTION_44_9() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1929225DC(v4, v2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_192F977CC();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v0;
  if (v13)
  {
    v17 = (v16[7] + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    OUTLINED_FUNCTION_166();
  }

  else
  {
    sub_192C9A920(v12, v4, v2, v8, v6, v16);
    OUTLINED_FUNCTION_166();
  }
}

void sub_192C9A220()
{
  OUTLINED_FUNCTION_168();
  v2 = v1;
  v4 = v3;
  v5 = sub_192F973FC();
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  sub_192BD45F0(v2);
  OUTLINED_FUNCTION_0_40();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE138E0);
  OUTLINED_FUNCTION_10_24();
  if ((sub_192F9741C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_192BD45F0(v2);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    sub_192F977CC();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v0;
  if (v17)
  {
    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_166();

    sub_192936CB8(v21, v22);
  }

  else
  {
    (*(v7 + 16))(v12, v2, v5);
    sub_192C9A96C(v16, v12, v4, v20);
    OUTLINED_FUNCTION_166();
  }
}

_OWORD *sub_192C9A3A4(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_3_43(a1, a2);
  sub_192BD44F0(v5);
  OUTLINED_FUNCTION_0_40();
  if (v8)
  {
    __break(1u);
LABEL_12:
    result = sub_192F977CC();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14DA0);
  OUTLINED_FUNCTION_17_24();
  if (sub_192F9741C())
  {
    sub_192BD44F0(v4);
    OUTLINED_FUNCTION_27_0();
    if (!v12)
    {
      goto LABEL_12;
    }

    v9 = v11;
  }

  v13 = *v3;
  if (v10)
  {
    v14 = OUTLINED_FUNCTION_27_17();

    return sub_192936CB8(v14, v15);
  }

  else
  {
    sub_192948314(v4, v17);
    return sub_192C9AA2C(v9, v17, v2, v13);
  }
}

void sub_192C9A4C0()
{
  OUTLINED_FUNCTION_168();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_7_30(v1, v3);
  sub_19286F04C(v4);
  OUTLINED_FUNCTION_0_40();
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_192F977CC();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14D90);
  if (OUTLINED_FUNCTION_43_14())
  {
    v10 = OUTLINED_FUNCTION_35_12();
    sub_19286F04C(v10);
    OUTLINED_FUNCTION_15_21();
    if (!v12)
    {
      goto LABEL_12;
    }

    v8 = v11;
  }

  if (v9)
  {
    *(*(*v0 + 56) + 8 * v8) = v2;
    OUTLINED_FUNCTION_166();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_26_18();
    sub_192871040(v13, v14, v15, v16, v17, v18, v19);

    OUTLINED_FUNCTION_166();
  }
}

uint64_t sub_192C9A5C8()
{
  OUTLINED_FUNCTION_168();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_7_30(v7, v5);
  sub_1929225DC(v9, v10);
  OUTLINED_FUNCTION_0_40();
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_192F977CC();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_10_24();
  if (sub_192F9741C())
  {
    sub_1929225DC(v6, v4);
    OUTLINED_FUNCTION_27_0();
    if (!v17)
    {
      goto LABEL_14;
    }

    v14 = v16;
  }

  v18 = *v0;
  if (v15)
  {
    *(*(v18 + 56) + 8 * v14) = v8;
    OUTLINED_FUNCTION_166();
  }

  else
  {
    sub_1929119A0(v14, v6, v4, v8, v18);
    OUTLINED_FUNCTION_166();
  }
}

uint64_t sub_192C9A6D4()
{
  OUTLINED_FUNCTION_46_9();
  v3 = OUTLINED_FUNCTION_3_43(v1, v2);
  sub_192BD4654(v3);
  OUTLINED_FUNCTION_0_40();
  if (v5)
  {
    __break(1u);
LABEL_13:
    type metadata accessor for FairPlayDeviceIdentityLevel(0);
    result = sub_192F977CC();
    __break(1u);
    return result;
  }

  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE132A0);
  OUTLINED_FUNCTION_17_24();
  if (sub_192F9741C())
  {
    sub_192BD4654(v0);
    OUTLINED_FUNCTION_27_0();
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v6)
  {
    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_39_13();

    return sub_192BE1524(v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_39_13();

    return sub_192C9AAA8(v12, v13, v14, v15);
  }
}

uint64_t sub_192C9A7C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a6[6] + 24 * a1);
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v10 = a6[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12D80);
  result = sub_19293D384(a5, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v15;
  }

  return result;
}

uint64_t sub_192C9A870(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_192F95EBC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_192C9A920(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_192C9A96C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_192F973FC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_192936CB8(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_192C9AA2C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_192936CB8(a3, (a4[7] + 32 * a1));
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

uint64_t sub_192C9AAA8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_192BE1524(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_192C9AB14(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

_OWORD *sub_192C9AB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v27 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a1, a6);
  v12 = *a5;
  v13 = sub_1929225DC(a2, a3);
  if (__OFADD__(v12[2], (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE13520);
  if ((sub_192F9741C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_1929225DC(a2, a3);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_10:
    result = sub_192F977CC();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *a5;
  if (v16)
  {
    v20 = (v19[7] + 32 * v15);
    __swift_destroy_boxed_opaque_existential_0(v20);
    return sub_192936CB8(v26, v20);
  }

  else
  {
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    MEMORY[0x1EEE9AC00](v22, v22);
    v24 = v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v24);
    sub_192C9AD74(v15, a2, a3, v24, v19, a6);
    __swift_destroy_boxed_opaque_existential_0(v26);
  }
}

_OWORD *sub_192C9AD74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v19 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_192936CB8(&v18, (a5[7] + 32 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_192C9AE48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE12D80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_192C9AEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountCachedServerData.ObservationController.State.Observation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_192C9AF1C()
{
  v16[4] = *MEMORY[0x1E69E9840];
  v0 = sub_192F9681C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192F9680C();
  v5 = sub_192F967DC();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  result = 0;
  if (v7 >> 60 != 15)
  {
    v9 = objc_opt_self();
    v10 = sub_192F95B5C();
    v16[0] = 0;
    v11 = [v9 JSONObjectWithData:v10 options:0 error:v16];

    if (v11)
    {
      v12 = v16[0];
      sub_192F9715C();
      sub_192915F68(v5, v7);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE138B8);
      if (swift_dynamicCast())
      {
        return v15[1];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v13 = v16[0];
      v14 = sub_192F958DC();

      swift_willThrow();
      sub_192915F68(v5, v7);

      return 0;
    }
  }

  return result;
}

id ExperimentDataAnomalyDetector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExperimentDataAnomalyDetector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExperimentDataAnomalyDetector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_192C9B1AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  while (v1)
  {
    v3 = *v2;
    if (*(*v2 + 16))
    {
      v4 = sub_1929225DC(0x644961657261, 0xE600000000000000);
      if (v5)
      {
        sub_19286C588(*(v3 + 56) + 32 * v4, v13);
        if (OUTLINED_FUNCTION_0_41())
        {
          if (v11 == 0x6D4B3562504E66 && v12 == 0xE700000000000000)
          {
          }

          else
          {
            v7 = sub_192F9775C();

            if ((v7 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          if (*(v3 + 16))
          {
            v8 = sub_1929225DC(0x6E656D7461657274, 0xEB00000000644974);
            if (v9)
            {
              sub_19286C588(*(v3 + 56) + 32 * v8, v13);
              if (OUTLINED_FUNCTION_0_41())
              {

                return v1 != 0;
              }
            }
          }
        }
      }
    }

LABEL_16:
    ++v2;
    --v1;
  }

  return v1 != 0;
}

uint64_t getEnumTagSinglePayload for ExpressCheckoutBagModel(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65283;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ExpressCheckoutBagModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_192C9B4AC()
{
  sub_1928F6488();
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24) >> 1;
  v4 = v2 + 1;
  if (v3 <= v2)
  {
    sub_1928F6488();
    v1 = v8;
    v3 = *(v8 + 24) >> 1;
  }

  *(v1 + 16) = v4;
  v5 = v1 + 24 * v2;
  *(v5 + 32) = 0xD00000000000001ELL;
  *(v5 + 40) = 0x8000000193017A80;
  *(v5 + 48) = 1;
  if (v3 <= v4)
  {
    sub_1928F6488();
    v1 = v9;
  }

  *(v1 + 16) = v2 + 2;
  v6 = v1 + 24 * v4;
  *(v6 + 32) = 0xD000000000000035;
  *(v6 + 40) = 0x8000000193017AA0;
  *(v6 + 48) = 1;
  return v1;
}

uint64_t sub_192C9B5AC()
{
  v0 = sub_192F9750C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_192C9B600(char a1)
{
  if (a1)
  {
    return 0xD000000000000035;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

uint64_t sub_192C9B638(int a1, int a2)
{
  if (a1 == 2)
  {
    if (a2 != 2)
    {
      return 0;
    }

LABEL_6:
    if (BYTE1(a1) == 2)
    {
      if (BYTE1(a2) != 2)
      {
        return 0;
      }
    }

    else if (BYTE1(a2) == 2 || ((BYTE1(a2) ^ BYTE1(a1)) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (a2 != 2 && ((a2 ^ a1) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_192C9B6AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14DD8);
  OUTLINED_FUNCTION_4_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192C9BC98();
  sub_192F9799C();
  v11[15] = 0;
  sub_192F9765C();
  if (!v1)
  {
    v11[14] = 1;
    sub_192F9765C();
  }

  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_192C9B804(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  if (a2 != 2)
  {
    sub_192F978BC();
  }

  sub_192F978BC();
  if (v2 != 2)
  {
    sub_192F978BC();
  }

  return sub_192F978BC();
}

uint64_t sub_192C9B878(__int16 a1)
{
  sub_192F9789C();
  sub_192C9B804(v3, a1);
  return sub_192F978DC();
}

uint64_t sub_192C9B8C0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14DD0);
  OUTLINED_FUNCTION_4_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14[-v8];
  v10 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v10);
  sub_192C9BC98();
  sub_192F9797C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v14[15] = 0;
    v11 = sub_192F9756C();
    v14[14] = 1;
    v12 = sub_192F9756C();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v11 | (v12 << 8);
  }

  return v10;
}

uint64_t sub_192C9BA80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192C9B5AC();
  *a1 = result;
  return result;
}

unint64_t sub_192C9BAB0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_192C9B600(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_192C9BAE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192C9B5AC();
  *a1 = result;
  return result;
}

uint64_t sub_192C9BB20(uint64_t a1)
{
  v2 = sub_192C9BC98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192C9BB5C(uint64_t a1)
{
  v2 = sub_192C9BC98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_192C9BB98@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_192C9B8C0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_192C9BBF0()
{
  v1 = *v0;
  sub_192F9789C();
  sub_192C9B804(v3, v1);
  return sub_192F978DC();
}

unint64_t sub_192C9BC44()
{
  result = qword_1EAE14DC8;
  if (!qword_1EAE14DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14DC8);
  }

  return result;
}

unint64_t sub_192C9BC98()
{
  result = qword_1EAE11998;
  if (!qword_1EAE11998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11998);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExpressCheckoutBagModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_192C9BDCC()
{
  result = qword_1EAE14DE0;
  if (!qword_1EAE14DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE14DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14DE0);
  }

  return result;
}

unint64_t sub_192C9BE34()
{
  result = qword_1EAE14DF0;
  if (!qword_1EAE14DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14DF0);
  }

  return result;
}

unint64_t sub_192C9BE8C()
{
  result = qword_1EAE11988;
  if (!qword_1EAE11988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11988);
  }

  return result;
}

unint64_t sub_192C9BEE4()
{
  result = qword_1EAE11990;
  if (!qword_1EAE11990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE11990);
  }

  return result;
}

uint64_t sub_192C9BF9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_192C9C11C(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_192C9C178(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_192C9C21C()
{
  v0 = sub_192F9750C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_192C9C26C(char a1)
{
  result = 0x666675536E617066;
  switch(a1)
  {
    case 1:
      result = 0x4E746E656D796170;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_192C9C350@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192C9C21C();
  *a1 = result;
  return result;
}

unint64_t sub_192C9C380@<X0>(unint64_t *a1@<X8>)
{
  result = sub_192C9C26C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_192C9C3C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192C9C21C();
  *a1 = result;
  return result;
}

uint64_t sub_192C9C3F0(uint64_t a1)
{
  v2 = sub_192C9CE88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192C9C42C(uint64_t a1)
{
  v2 = sub_192C9CE88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_192C9C478(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_fpanSuffix;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  if (*(v3 + 8))
  {
    OUTLINED_FUNCTION_15_22();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12_22();
  }

  v4 = sub_192F9679C();
  OUTLINED_FUNCTION_5_32();
  swift_unknownObjectRelease();

  v5 = v1 + OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_paymentNetwork;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  if (*(v5 + 8))
  {
    OUTLINED_FUNCTION_15_22();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12_22();
  }

  v6 = sub_192F9679C();
  OUTLINED_FUNCTION_5_32();
  swift_unknownObjectRelease();

  v7 = v1 + OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_passSerialNumber;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  if (*(v7 + 8))
  {
    OUTLINED_FUNCTION_15_22();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12_22();
  }

  v8 = sub_192F9679C();
  OUTLINED_FUNCTION_5_32();
  swift_unknownObjectRelease();

  v9 = v1 + OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_passTypeIdentifier;
  OUTLINED_FUNCTION_4_3();
  swift_beginAccess();
  if (*(v9 + 8))
  {
    OUTLINED_FUNCTION_15_22();
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_12_22();
  }

  v10 = sub_192F9679C();
  OUTLINED_FUNCTION_5_32();
  swift_unknownObjectRelease();

  v11 = v1 + OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_applePayBrandName;
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  if (*(v11 + 8))
  {

    v12 = sub_192F9679C();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_192F9679C();
  [a1 encodeObject:v12 forKey:v13];
  swift_unknownObjectRelease();
}

id ExpressCheckoutCard.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_fpanSuffix];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v2[OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_paymentNetwork];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_passSerialNumber];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_passTypeIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_applePayBrandName];
  sub_192BAAF38();
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = sub_192F96FAC();
  v25 = 0;
  v26 = 0;
  sub_192F967BC();

  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  *v4 = 0;
  *(v4 + 1) = 0;

  v10 = sub_192F96FAC();
  v23 = 0;
  v24 = 0;
  sub_192F967BC();

  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  *v5 = 0;
  *(v5 + 1) = 0;

  v11 = sub_192F96FAC();
  v21 = 0;
  v22 = 0;
  sub_192F967BC();

  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  *v6 = 0;
  *(v6 + 1) = 0;

  v12 = sub_192F96FAC();
  v19 = 0;
  v20 = 0;
  sub_192F967BC();

  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  *v7 = 0;
  *(v7 + 1) = 0;

  v13 = sub_192F96FAC();
  v17 = 0;
  v18 = 0;
  sub_192F967BC();

  OUTLINED_FUNCTION_3_44();
  swift_beginAccess();
  *v8 = 0;
  *(v8 + 1) = 0;

  v16.receiver = v2;
  v16.super_class = type metadata accessor for ExpressCheckoutCard();
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

id ExpressCheckoutCard.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExpressCheckoutCard.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpressCheckoutCard();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192C9CBF8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE14E30);
  OUTLINED_FUNCTION_4_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20[-v9];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192C9CE88();
  sub_192F9799C();
  v11 = (v2 + OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_fpanSuffix);
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  v12 = *v11;
  v20[80] = 0;

  OUTLINED_FUNCTION_1_5();
  if (v12 || (, v13 = (v2 + OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_paymentNetwork), OUTLINED_FUNCTION_0_1(), swift_beginAccess(), v14 = *v13, v20[56] = 1, , OUTLINED_FUNCTION_1_5(), v14) || (, v15 = (v2 + OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_passSerialNumber), OUTLINED_FUNCTION_0_1(), swift_beginAccess(), v16 = *v15, v20[32] = 2, , OUTLINED_FUNCTION_1_5(), v16) || (, v17 = (v2 + OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_passTypeIdentifier), OUTLINED_FUNCTION_0_1(), swift_beginAccess(), v18 = *v17, v20[8] = 3, , OUTLINED_FUNCTION_1_5(), v18))
  {
    (*(v6 + 8))(v10, v4);
  }

  else
  {

    OUTLINED_FUNCTION_0_1();
    swift_beginAccess();
    v20[7] = 4;

    sub_192F9764C();
    (*(v6 + 8))(v10, v4);
  }
}

unint64_t sub_192C9CE88()
{
  result = qword_1EAE14E38;
  if (!qword_1EAE14E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE14E38);
  }

  return result;
}

char *ExpressCheckoutCard.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE14E40);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = &v3[OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_fpanSuffix];
  *v7 = 0;
  v7[1] = 0;
  OUTLINED_FUNCTION_10_25(OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_paymentNetwork);
  v9 = v8;
  OUTLINED_FUNCTION_10_25(OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_passSerialNumber);
  v36 = v10;
  OUTLINED_FUNCTION_10_25(OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_passTypeIdentifier);
  v45 = v11;
  OUTLINED_FUNCTION_10_25(OBJC_IVAR____TtC18AppleMediaServices19ExpressCheckoutCard_applePayBrandName);
  v37 = v12;
  v38 = a1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_192C9CE88();
  sub_192F9797C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);

    type metadata accessor for ExpressCheckoutCard();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v44 = 0;
    v14 = sub_192F9755C();
    v16 = v15;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *v7 = v14;
    v7[1] = v16;

    v43 = 1;
    v17 = v9;
    v18 = OUTLINED_FUNCTION_14_22();
    v20 = v19;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *v17 = v18;
    v17[1] = v20;

    v42 = 2;
    v21 = OUTLINED_FUNCTION_14_22();
    v34 = v22;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *v36 = v21;
    v36[1] = v34;

    v41 = 3;
    v23 = OUTLINED_FUNCTION_14_22();
    v35 = v24;
    v25 = v45;
    v33 = v23;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *v25 = v33;
    v25[1] = v35;

    v40 = 4;
    v26 = OUTLINED_FUNCTION_14_22();
    v28 = v27;
    v29 = v26;
    OUTLINED_FUNCTION_3_44();
    swift_beginAccess();
    *v37 = v29;
    v37[1] = v28;

    v30 = type metadata accessor for ExpressCheckoutCard();
    v39.receiver = v3;
    v39.super_class = v30;
    v3 = objc_msgSendSuper2(&v39, sel_init);
    v31 = OUTLINED_FUNCTION_6_36();
    v32(v31);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  return v3;
}

char *sub_192C9D2C8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = ExpressCheckoutCard.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExpressCheckoutCard.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}