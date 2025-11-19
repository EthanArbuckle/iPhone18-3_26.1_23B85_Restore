void sub_1C20AFAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWBUFeatureManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!WebUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __WebUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8160308;
    v6 = 0;
    WebUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WebUILibraryCore_frameworkLibrary)
  {
    __getWBUFeatureManagerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("WBUFeatureManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getWBUFeatureManagerClass_block_invoke_cold_1();
  }

  getWBUFeatureManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C20AFC7C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

void *sub_1C20AFCD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C20AFD4C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C20AFD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 16) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1C2170024();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C20AFE4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1C2170024();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C20AFEF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20AFF30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C20AFF8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C20AFFE8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C20B0000()
{
  MEMORY[0x1C6915430](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20B0038()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C20B0080(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C20B0090()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20B00D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20B0110()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20B0148()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C20B0180()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF238C0, &qword_1C21771F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C20B0214()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20B024C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_1C20D3174(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C20B0294()
{
  MEMORY[0x1C6915430](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20B02CC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1C20B031C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_1C20B034C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C20B03A4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_largeBlob;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C20B03F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore50ASCPublicKeyCredentialRegistrationExtensionOutputs_prf;
  swift_beginAccess();
  return sub_1C20EB3E8(v3 + v4, a2, &qword_1EBF23BC8, &qword_1C21789D0);
}

uint64_t sub_1C20B0468(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1C20B0524(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1C20B05D0(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1C20B05E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name;
  swift_beginAccess();
  return sub_1C20EB3E8(v3 + v4, a2, &unk_1EBF23420, &unk_1C2176820);
}

id sub_1C20B0660@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1C20B06C8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1C210D3C4(v2);
}

void sub_1C20B0704(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  sub_1C210D748(v2, v3);
}

uint64_t sub_1C20B07C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1C21111D4();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C20B07F4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___forwardToEmailAddress);
  v5 = *v4;
  v6 = v4[1];
  *v4 = v3;
  v4[1] = v2;

  return sub_1C2116758(v5, v6);
}

uint64_t sub_1C20B0848@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1C21116A0();
  *a2 = result;
  return result;
}

uint64_t sub_1C20B0874(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___sortedCredentialProviderIdentifiers);
  *(*a2 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState____lazy_storage___sortedCredentialProviderIdentifiers) = *a1;
}

void sub_1C20B08C0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_1C2111B90(&v4);
  *a2 = v4;
}

id sub_1C20B0914(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1C20B0984@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_biometryType;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C20B09E0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_biometryType;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_1C20B0A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C21701F4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C20B0B90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C21701F4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C20B0CC0()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C20B0D14()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C20B0D6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C20B0DBC(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return 7;
  }

  else
  {
    return byte_1C217A270[a1 - 1];
  }
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore23ASCTAPPRFExtensionInputV9PRFValuesVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C20B0E68(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C20B0E88(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t sub_1C20B0ECC()
{
  if (*v0)
  {
    result = 0x646E6F636573;
  }

  else
  {
    result = 0x7473726966;
  }

  *v0;
  return result;
}

uint64_t sub_1C20B0F20(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 7;
  }

  else
  {
    return (0x607050403020100uLL >> (8 * (a1 - 1)));
  }
}

uint64_t sub_1C20B0F4C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C20B0F94()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C20B0FCC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C20B100C()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1C20D3174(*(v0 + 16), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C20B1054()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C20B109C()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C20B10F8()
{
  MEMORY[0x1C6915430](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1C20B113C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20B1EE8(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C20B116C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C20B1EE8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C20B11C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23760, &qword_1C2176DC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1C21703B4();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      v15 = ((4 * v14) & 0xC) == 0;
      v16 = ((4 * v14) & 0xC | (v14 >> 2)) ^ 0xF;
      if (v15)
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1C20B12EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23760, &qword_1C2176DC8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1C21703B4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C20B1410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C21703B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C20B14E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C21703B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1C20B15A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1C21703B4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 <= 5)
  {
    v15 = 5;
  }

  else
  {
    v15 = *(a1 + *(a3 + 28));
  }

  v16 = v15 - 5;
  if (v14 >= 5)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C20B16C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF24FD0, &unk_1C2180BE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1C21703B4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 5;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C20B17DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C21703B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C20B1848(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C21703B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C20B18B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25010, &qword_1C2180C08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1C21703B4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C20B19E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF25010, &qword_1C2180C08);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1C21703B4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C20B1B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C21703B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 5)
    {
      v11 = 5;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 5;
    if (v10 >= 5)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C20B1BE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C21703B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 5;
  }

  return result;
}

uint64_t sub_1C20B1C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C21703B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23678, &unk_1C2180C70);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      v15 = ((4 * v14) & 0xC) == 0;
      v16 = ((4 * v14) & 0xC | (v14 >> 2)) ^ 0xF;
      if (v15)
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1C20B1DBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C21703B4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23678, &unk_1C2180C70);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

unint64_t sub_1C20B1EE8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1C20B1F10()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C20B1F68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C20B1FA8()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C20B1FF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C20B203C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore47ASCPublicKeyCredentialAssertionExtensionOutputs_prf;
  swift_beginAccess();
  return sub_1C20EB3E8(v3 + v4, a2, &qword_1EBF24840, &qword_1C217E130);
}

uint64_t sub_1C20B20B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2170764();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C20B21B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C2170764();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23BF0, &unk_1C21813F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C20B22B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C20D865C(a1, a2);
  }

  return a1;
}

uint64_t sub_1C20B22CC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1C20D865C(result, a2);

    return sub_1C20B22B8(a3, a4);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore35ASCTAPPublicKeyCredentialDescriptorVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C20B23C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C20D3174(a1, a2);
  }

  return a1;
}

uint64_t sub_1C20B23DC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1C20D3174(result, a2);

    return sub_1C20B23C8(a3, a4);
  }

  return result;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t isClientWithAuditTokenProperlyEntitled(__int128 *a1)
{
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  if ((WBSAuditTokenHasEntitlement() & 1) != 0 || (v3 = a1[1], v12 = *a1, v13 = v3, WBSAuditTokenHasEntitlement()))
  {
    v4 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    v5 = 1;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      v6 = "Client is properly entitled.";
LABEL_5:
      _os_log_impl(&dword_1C20AD000, v4, OS_LOG_TYPE_INFO, v6, &v12, 2u);
    }
  }

  else
  {
    v7 = [ASFeatureManager sharedManager:v12];
    v8 = a1[1];
    v12 = *a1;
    v13 = v8;
    v9 = [v7 isClientEntitledForInternalTestingWithAuditToken:&v12];

    v10 = WBS_LOG_CHANNEL_PREFIXAuthorization();
    v4 = v10;
    if (v9)
    {
      v5 = 1;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        return v5;
      }

      LOWORD(v12) = 0;
      v6 = "Client has internal testing entitlement.";
      goto LABEL_5;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      isClientWithAuditTokenProperlyEntitled_cold_1(a1, v4);
    }

    return 0;
  }

  return v5;
}

void sub_1C20B58F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C20B5CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C20B8954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C20BEDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __shouldRequireCABLEAuthenticatorConsentForSourceApplication_block_invoke()
{
  shouldRequireCABLEAuthenticatorConsentForSourceApplication_systemScannerApplications = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.BarcodeScanner", @"com.apple.camera", @"com.apple.springboard", 0}];

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id OUTLINED_FUNCTION_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  return a2;
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_1C20C1C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C20C1F74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id OUTLINED_FUNCTION_7_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);

  return a2;
}

id descriptionForErrorCode(uint64_t a1)
{
  v2 = 0;
  if (a1 > 8)
  {
    if (a1 <= 12)
    {
      if (a1 != 9 && a1 != 10)
      {
        goto LABEL_21;
      }
    }

    else if (a1 != 13 && a1 != 20 && a1 != 21)
    {
      goto LABEL_21;
    }

LABEL_20:
    v2 = _WBSLocalizedString();
    goto LABEL_21;
  }

  if (a1 <= 5)
  {
    if (a1 != 4 && a1 != 5)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (a1 != 7 || +[ASCWebKitSPISupport shouldUseAlternateCredentialStore])
  {
    goto LABEL_20;
  }

  if (biometryType_onceToken != -1)
  {
    descriptionForErrorCode_cold_1();
  }

  v2 = [biometryType_context biometryType];
  if (v2)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v2;
}

uint64_t __biometryType_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v1 = biometryType_context;
  biometryType_context = v0;

  v2 = biometryType_context;

  return [v2 canEvaluatePolicy:1 error:0];
}

uint64_t compareLoginChoices(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (isSecurityKeyAssertionLoginChoice(v3) && [v4 loginChoiceKind] == 4)
  {
    goto LABEL_6;
  }

  if ([v3 loginChoiceKind] == 4 && isSecurityKeyAssertionLoginChoice(v4))
  {
    goto LABEL_11;
  }

  v5 = requestTypeForLoginChoice(v3);
  v6 = sortOrderForRequestType(v5);
  v7 = requestTypeForLoginChoice(v4);
  v8 = sortOrderForRequestType(v7);
  if (v6 < v8)
  {
LABEL_6:
    v9 = -1;
    goto LABEL_12;
  }

  if (v6 != v8)
  {
LABEL_11:
    v9 = 1;
    goto LABEL_12;
  }

  v9 = 0;
  if (v6 <= 3 && v6 != 2)
  {
    v9 = [v3 compare:v4];
  }

LABEL_12:

  return v9;
}

uint64_t requestTypeForLoginChoice(void *a1)
{
  v1 = a1;
  v2 = [v1 loginChoiceKind];
  v3 = 1;
  if (v2 <= 3)
  {
    if (!v2)
    {
      v3 = 2;
      goto LABEL_20;
    }

    if (v2 != 2)
    {
      if (v2 != 3)
      {
        goto LABEL_20;
      }

      v4 = [v1 credentialKind];
      if (v4 < 3)
      {
        v3 = qword_1C2175A08[v4];
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    if ([v1 isRegistrationRequest])
    {
      v3 = 4;
    }

    else
    {
      v3 = 8;
    }
  }

  else
  {
    if (v2 <= 5)
    {
      if (v2 != 4)
      {
        v3 = 128;
        goto LABEL_20;
      }

LABEL_15:
      v3 = 64;
      goto LABEL_20;
    }

    v5 = 512;
    if (v2 != 7)
    {
      v5 = 1;
    }

    if (v2 == 6)
    {
      v3 = 256;
    }

    else
    {
      v3 = v5;
    }
  }

LABEL_20:

  return v3;
}

uint64_t __allowedCredentialsForSecurityKeyAssertionFromRequestContext_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 transports];
  if ([v3 count])
  {
    v4 = [v2 hasInternalTransport] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL isSecurityKeyAssertionLoginChoice(void *a1)
{
  v1 = a1;
  v2 = [v1 loginChoiceKind] == 3 && objc_msgSend(v1, "credentialKind") == 1;

  return v2;
}

uint64_t sortOrderForRequestType(uint64_t a1)
{
  v1 = 11;
  v2 = 9;
  v3 = 7;
  v4 = 10;
  if (a1 != 1024)
  {
    v4 = 11;
  }

  if (a1 != 512)
  {
    v3 = v4;
  }

  if (a1 != 256)
  {
    v2 = v3;
  }

  v5 = 6;
  v6 = 4;
  v7 = 8;
  if (a1 != 128)
  {
    v7 = 11;
  }

  if (a1 != 64)
  {
    v6 = v7;
  }

  if (a1 != 32)
  {
    v5 = v6;
  }

  if (a1 <= 255)
  {
    v2 = v5;
  }

  v8 = 1;
  v9 = 5;
  if (a1 != 16)
  {
    v9 = 11;
  }

  if (a1 != 8)
  {
    v8 = v9;
  }

  if (a1 == 4)
  {
    v8 = 0;
  }

  if (a1 == 2)
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    v1 = 3;
  }

  if (a1 > 3)
  {
    v1 = v8;
  }

  if (a1 <= 31)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_1C20C82A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id noCredentialsErrorString(int a1, int a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!a1)
  {
    v19 = _WBSLocalizedString();
    goto LABEL_21;
  }

  v29 = a2;
  v30 = v5;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [MEMORY[0x1E69C8DE0] sharedManager];
  v8 = [v7 getEnabledExtensionsSynchronously];

  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = [MEMORY[0x1E69C8DE0] sharedManager];
        v17 = [v16 extensionSupportsPasskeys:v15];

        if (v17)
        {
          v18 = v15;

          v11 = 1;
          v12 = v18;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v20 = objc_alloc(MEMORY[0x1E69635F8]);
  v21 = [v12 sf_bundleIdentifierForContainingApp];
  v22 = [v20 initWithBundleIdentifier:v21 allowPlaceholder:0 error:0];
  v23 = [v22 localizedName];

  v24 = MEMORY[0x1E696AEC0];
  if (v29)
  {
    v6 = v30;
    if (v11)
    {
      goto LABEL_18;
    }

LABEL_19:
    v25 = _WBSLocalizedString();
    [v24 localizedStringWithFormat:v25, v6, v28];
    goto LABEL_20;
  }

  v6 = v30;
  if ((v11 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_18:
  v25 = _WBSLocalizedString();
  [v24 localizedStringWithFormat:v25, v23, v6];
  v19 = LABEL_20:;

LABEL_21:
  v26 = *MEMORY[0x1E69E9840];

  return v19;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent()
{
  if (WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAuthorization()
{
  if (WBS_LOG_CHANNEL_PREFIXAuthorization_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAuthorization_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAuthorization_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXServiceLifecycle()
{
  if (WBS_LOG_CHANNEL_PREFIXServiceLifecycle_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXServiceLifecycle_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXServiceLifecycle_log;
}

void sub_1C20D1CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C20D1F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __WebUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WebUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ASAllLoginChoiceClasses()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
}

uint64_t sub_1C20D3018(void *a1)
{
  v2 = sub_1C216FD44();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1C216FD34();
  type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
  sub_1C20D8460(&unk_1EBF23140, v5, type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs);
  v6 = sub_1C216FD24();
  v8 = v7;

  v9 = sub_1C2170154();
  v10 = sub_1C21708F4();
  [a1 encodeObject:v9 forKey:v10];

  return sub_1C20D3174(v6, v8);
}

uint64_t sub_1C20D3174(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id ASCPublicKeyCredentialRegistrationExtensionInputs.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_1C20D36A0();
  v2 = sub_1C2170CC4();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1C2170174();
    v6 = v5;

    v7 = sub_1C216FCE4();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1C216FCD4();
    sub_1C20D8460(&qword_1EBF23150, v10, type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs);
    sub_1C216FCC4();

    v19 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs());
    v20 = sub_1C20D84A8(v22);

    sub_1C20D3174(v4, v6);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v20;
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v11 = sub_1C21705A4();
    __swift_project_value_buffer(v11, qword_1EDD4CB08);
    v12 = sub_1C2170584();
    v13 = sub_1C2170C54();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      v16 = sub_1C21714E4();
      v18 = sub_1C20D7F2C(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1C20AD000, v12, v13, "Could not find encoded json for %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x1C6915360](v15, -1, -1);
      MEMORY[0x1C6915360](v14, -1, -1);
    }

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t sub_1C20D36A0()
{
  result = qword_1EDD4AD70;
  if (!qword_1EDD4AD70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD4AD70);
  }

  return result;
}

id ASCPublicKeyCredentialRegistrationExtensionInputs.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASCPublicKeyCredentialRegistrationExtensionInputs.init()()
{
  v0[OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob] = 2;
  v1 = &v0[OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 6) = 1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1C20D381C(void *a1@<X8>)
{
  v3 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
  v4 = objc_allocWithZone(v3);
  v5 = v1;
  v6 = sub_1C20D84A8(v5);

  a1[3] = v3;
  *a1 = v6;
}

BOOL sub_1C20D3944()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  if (*(v0 + v1) != 2)
  {
    return 1;
  }

  v2 = v0 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf;
  swift_beginAccess();
  return *(v2 + 48) != 1;
}

uint64_t sub_1C20D39C4()
{
  v13 = sub_1C2170AA4();
  v2 = v1;
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  if (*(v0 + v3) != 2)
  {
    sub_1C2170F34();
    MEMORY[0x1C6913CB0](v13, v2);
    MEMORY[0x1C6913CB0](0x6F6C42656772616CLL, 0xEB00000000203A62);
    sub_1C2171034();
    MEMORY[0x1C6913CB0](10, 0xE100000000000000);
    MEMORY[0x1C6913CB0](0, 0xE000000000000000);
  }

  v4 = (v0 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf);
  swift_beginAccess();
  v5 = v4[6];
  if (v5 != 1)
  {
    v7 = v4[4];
    v6 = v4[5];
    v9 = v4[2];
    v8 = v4[3];
    v11 = *v4;
    v10 = v4[1];
    sub_1C20D860C(v10, v9, v8, v7, v6);

    MEMORY[0x1C6913CB0](v13, v2);
    MEMORY[0x1C6913CB0](0x203A667270, 0xE500000000000000);
    sub_1C2171034();
    MEMORY[0x1C6913CB0](10, 0xE100000000000000);
    MEMORY[0x1C6913CB0](0, 0xE000000000000000);

    sub_1C20D86B0(v11, v10, v9, v8, v7, v6, v5);
  }

  MEMORY[0x1C6913CB0](0xA656E6F4ELL, 0xE500000000000000);
  return v13;
}

uint64_t sub_1C20D3D48()
{
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  v2 = *(v0 + v1) != 2;
  v3 = v0 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf;
  swift_beginAccess();
  if (*(v3 + 48) == 1)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1C20D3DCC()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 == 2)
  {
    return 0;
  }

  v3 = (v2 & 1) == 0;
  v4 = 0x6465726975716572;
  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x6572726566657270;
    v5 = 0xE900000000000064;
  }

  *&v11 = v4;
  *(&v11 + 1) = v5;
  v12 = xmmword_1C2175A50;
  v13 = xmmword_1C2175A60;
  v14[0] = 1;
  memset(&v14[8], 0, 32);
  *&v14[40] = 1;
  v10 = 1;

  sub_1C20B22B8(0, 0xF000000000000000);
  v6 = ASCTAPExtensionInput.encode(for:)(&v10);
  v9[2] = v13;
  v9[3] = *v14;
  v9[4] = *&v14[16];
  v9[5] = *&v14[32];
  v9[0] = v11;
  v9[1] = v12;
  v7 = v6;
  sub_1C20D8758(v9);

  sub_1C20B23C8(0, 0xF000000000000000);
  return v7;
}

double ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.toCTAP()@<D0>(uint64_t a1@<X8>)
{
  v2 = 0x6465726975716572;
  if (*v1)
  {
    v2 = 0x6572726566657270;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *&result = 2;
  *(a1 + 16) = xmmword_1C2175A50;
  *(a1 + 32) = xmmword_1C2175A60;
  *(a1 + 48) = 1;
  return result;
}

uint64_t sub_1C20D4174()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 0x6465726975716572;
  if (v2)
  {
    v3 = 0x6572726566657270;
  }

  v4 = 0xE800000000000000;
  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  v5 = v2 == 2;
  if (v2 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  v32 = v6;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0xF000000000000000;
  }

  v10 = !v5;
  v11 = v0 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf;
  swift_beginAccess();
  v12 = *(v11 + 48);
  if (v12 == 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
  }

  else
  {
    v30 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v22 = *(v11 + 24);
    v21 = *(v11 + 32);
    v24 = *(v11 + 8);
    v23 = *(v11 + 16);
    v25 = *(v11 + 40);
    LOBYTE(v35) = *v11 & 1;
    *(&v35 + 1) = v24;
    *&v36 = v23;
    *(&v36 + 1) = v22;
    *&v37 = v21;
    BYTE8(v37) = v25;
    *&v38 = v12;
    sub_1C20D860C(v24, v23, v22, v21, v25);

    sub_1C20D45F8(v41);
    v26 = v21;
    v10 = v20;
    v9 = v19;
    v8 = v18;
    v7 = v30;
    sub_1C20D8708(v24, v23, v22, v26, v25);

    v13 = v41[0];
    v14 = v41[1];
    v15 = v41[2];
    v16 = v41[3];
    v17 = v41[4];
  }

  *&v35 = v32;
  *(&v35 + 1) = v7;
  v36 = v8;
  v37 = v9;
  LOBYTE(v38) = v10;
  *(&v38 + 1) = v13;
  *&v39 = v14;
  *(&v39 + 1) = v15;
  *&v40 = v16;
  *(&v40 + 1) = v17;
  v34 = 0;
  sub_1C20D87AC(v32, v7, v8, 0, v9);
  v31 = v13;
  sub_1C20D87FC(v13, v14, v15, v16, v17);
  v27 = ASCTAPExtensionInput.encode(for:)(&v34);
  v33[2] = v37;
  v33[3] = v38;
  v33[4] = v39;
  v33[5] = v40;
  v33[0] = v35;
  v33[1] = v36;
  v28 = v27;
  sub_1C20D8758(v33);
  sub_1C20D8840(v32, v7, v8, 0, v9);
  sub_1C20D8890(v31, v14, v15, v16, v17);
  return v28;
}

uint64_t sub_1C20D45F8@<X0>(uint64_t *a1@<X8>)
{
  v142 = *MEMORY[0x1E69E9840];
  v3 = sub_1C2170844();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v113 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v125 = &v101 - v8;
  v124 = sub_1C2170724();
  v9 = *(v124 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v124);
  v107 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v116 = &v101 - v14;
  v15 = *(v1 + 40);
  v16 = *(v1 + 48);
  v129 = v3;
  v123 = v16;
  if (v15 == 2)
  {
    v115 = 0;
    v17 = 0;
    v18 = 0;
    v114 = 0xF000000000000000;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_80:
    v19 = 0;
    goto LABEL_81;
  }

  v93 = *(v1 + 24);
  v92 = *(v1 + 32);
  v95 = *(v1 + 8);
  v94 = *(v1 + 16);
  *&v138 = v95;
  *(&v138 + 1) = v94;
  v139 = v93;
  v140 = v92;
  LOBYTE(v141) = v15 & 1;
  sub_1C20D865C(v95, v94);
  sub_1C20B22B8(v93, v92);
  v115 = ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.salt1.getter();
  v114 = v96;
  *&v134 = v95;
  *(&v134 + 1) = v94;
  v135 = v93;
  v136 = v92;
  v137 = v15 & 1;
  v17 = ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.salt2.getter();
  v18 = v97;
  v98 = v95;
  v16 = v123;
  result = sub_1C20D8708(v98, v94, v93, v92, v15);
  if (!v16)
  {
    goto LABEL_80;
  }

LABEL_3:
  v101 = v18;
  v102 = v17;
  v103 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232D8, &unk_1C2176500);
  result = sub_1C21710E4();
  v19 = result;
  v20 = 0;
  v128 = 0;
  v21 = v16 + 64;
  v22 = 1 << *(v16 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v16 + 64);
  v25 = (v22 + 63) >> 6;
  v119 = (v4 + 8);
  v118 = (v9 + 2);
  v117 = (v9 + 1);
  v26 = result + 64;
  v109 = result;
  v108 = result + 64;
  v110 = v25;
  if (v24)
  {
    goto LABEL_6;
  }

LABEL_7:
  v28 = v20;
  while (1)
  {
    v20 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v20 >= v25)
    {
      break;
    }

    v29 = *(v21 + 8 * v20);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v24 = (v29 - 1) & v29;
      while (2)
      {
        v30 = v27 | (v20 << 6);
        v31 = *(*(v16 + 48) + 16 * v30);
        v32 = *(v16 + 56) + 40 * v30;
        v33 = *v32;
        v131 = *(v32 + 16);
        v132 = v33;
        LOBYTE(v32) = *(v32 + 32);
        v130 = v31;
        if (v32)
        {
          sub_1C20D865C(v31, *(&v31 + 1));
          sub_1C20D865C(v132, *(&v132 + 1));
          result = sub_1C20B22B8(v131, *(&v131 + 1));
          v34 = v130;
          goto LABEL_75;
        }

        sub_1C20D865C(v31, *(&v31 + 1));
        v35 = *(&v132 + 1);
        v127 = v132;
        sub_1C20D865C(v132, *(&v132 + 1));
        v126 = v131;
        sub_1C20B22B8(v131, *(&v131 + 1));
        if (qword_1EBF230B8 != -1)
        {
          swift_once();
        }

        v36 = xmmword_1EBF23A40;
        v134 = xmmword_1EBF23A40;
        v140 = MEMORY[0x1E6969080];
        v141 = MEMORY[0x1E6969078];
        v138 = v132;
        v37 = __swift_project_boxed_opaque_existential_1(&v138, MEMORY[0x1E6969080]);
        v38 = *v37;
        v39 = v37[1];
        v40 = v39 >> 62;
        v122 = v24;
        if ((v39 >> 62) <= 1)
        {
          if (!v40)
          {
            v133[0] = v38;
            LOWORD(v133[1]) = v39;
            BYTE2(v133[1]) = BYTE2(v39);
            BYTE3(v133[1]) = BYTE3(v39);
            BYTE4(v133[1]) = BYTE4(v39);
            BYTE5(v133[1]) = BYTE5(v39);
            sub_1C20D865C(v127, v35);
            sub_1C20D865C(v36, *(&v36 + 1));
            goto LABEL_29;
          }

          v43 = v38;
          if (v38 >> 32 >= v38)
          {
            sub_1C20D865C(v127, v35);
            sub_1C20D865C(v36, *(&v36 + 1));
            if (!sub_1C216FDD4() || !__OFSUB__(v43, sub_1C216FE04()))
            {
LABEL_23:
              sub_1C216FDF4();
              goto LABEL_29;
            }

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
          }

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

        if (v40 == 2)
        {
          v41 = *(v38 + 16);
          v42 = *(v38 + 24);
          sub_1C20D865C(v127, v35);
          sub_1C20D865C(v36, *(&v36 + 1));
          if (!sub_1C216FDD4() || !__OFSUB__(v41, sub_1C216FE04()))
          {
            if (!__OFSUB__(v42, v41))
            {
              goto LABEL_23;
            }

            goto LABEL_85;
          }

          goto LABEL_88;
        }

        memset(v133, 0, 14);
        sub_1C20D865C(v127, v35);
        sub_1C20D865C(v36, *(&v36 + 1));
LABEL_29:
        sub_1C2170114();
        __swift_destroy_boxed_opaque_existential_0Tm(&v138);
        v44 = *(&v134 + 1);
        v45 = v134;
        v46 = sub_1C20D8460(&qword_1EDD4A7A0, 255, MEMORY[0x1E6966620]);
        v47 = v125;
        sub_1C2170704();
        v48 = v44 >> 62;
        v121 = v35;
        if ((v44 >> 62) > 1)
        {
          if (v48 == 2)
          {
            v111 = v30;
            v49 = v46;
            v50 = *(v45 + 16);
            *&v132 = *(v45 + 24);

            if (sub_1C216FDD4() && __OFSUB__(v50, sub_1C216FE04()))
            {
              goto LABEL_89;
            }

            v47 = v125;
            if (__OFSUB__(v132, v50))
            {
              goto LABEL_87;
            }

            sub_1C216FDF4();
            v52 = v129;
            v46 = v49;
            sub_1C21706E4();
            sub_1C20D3174(v45, v44);
            v30 = v111;
          }

          else
          {
            *(&v138 + 6) = 0;
            *&v138 = 0;
LABEL_41:
            v52 = v129;
            sub_1C21706E4();
            sub_1C20D3174(v45, v44);
          }
        }

        else
        {
          if (!v48)
          {
            *&v138 = v45;
            WORD4(v138) = v44;
            BYTE10(v138) = BYTE2(v44);
            BYTE11(v138) = BYTE3(v44);
            BYTE12(v138) = BYTE4(v44);
            BYTE13(v138) = BYTE5(v44);
            goto LABEL_41;
          }

          *&v132 = v21;
          if (v45 >> 32 < v45)
          {
            goto LABEL_86;
          }

          if (sub_1C216FDD4() && __OFSUB__(v45, sub_1C216FE04()))
          {
            goto LABEL_91;
          }

          v51 = v129;
          sub_1C216FDF4();
          v47 = v125;
          sub_1C21706E4();
          sub_1C20D3174(v45, v44);
          v21 = v132;
          v52 = v51;
        }

        v53 = v116;
        v120 = v46;
        sub_1C21706F4();
        sub_1C20D3174(v45, v44);
        v112 = *v119;
        v112(v47, v52);
        v54 = v124;
        v140 = v124;
        v55 = sub_1C20D8460(&qword_1EBF232E8, 255, MEMORY[0x1E69663E0]);
        v141 = v55;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v57 = *v118;
        (*v118)(boxed_opaque_existential_1, v53, v54);
        __swift_project_boxed_opaque_existential_1(&v138, v140);
        v58 = v128;
        sub_1C216FE24();
        v128 = v58;
        v59 = *v117;
        (*v117)(v53, v54);
        v132 = v134;
        __swift_destroy_boxed_opaque_existential_0Tm(&v138);
        v60 = *(&v126 + 1);
        if (*(&v126 + 1) >> 60 == 15)
        {
          sub_1C20D3174(v127, v121);
          result = sub_1C20B23C8(v126, v60);
          v16 = v123;
          v19 = v109;
          v26 = v108;
          v24 = v122;
          v34 = v130;
          v25 = v110;
          goto LABEL_75;
        }

        v104 = v57;
        v106 = v55;
        v61 = xmmword_1EBF23A40;
        v134 = xmmword_1EBF23A40;
        v140 = MEMORY[0x1E6969080];
        v141 = MEMORY[0x1E6969078];
        v138 = v131;
        v62 = __swift_project_boxed_opaque_existential_1(&v138, MEMORY[0x1E6969080]);
        v63 = *v62;
        v64 = v62[1];
        v65 = v64 >> 62;
        v25 = v110;
        v105 = v59;
        if ((v64 >> 62) > 1)
        {
          if (v65 == 2)
          {
            v67 = *(v63 + 16);
            *&v131 = *(v63 + 24);
            v68 = v126;
            sub_1C20B22B8(v126, v60);
            sub_1C20B22B8(v68, v60);
            sub_1C20D865C(v61, *(&v61 + 1));
            if (sub_1C216FDD4() && __OFSUB__(v67, sub_1C216FE04()))
            {
              goto LABEL_96;
            }

            if (__OFSUB__(v131, v67))
            {
              goto LABEL_93;
            }

            sub_1C216FDF4();
          }

          else
          {
            memset(v133, 0, 14);
            v73 = v126;
            sub_1C20B22B8(v126, v60);
            sub_1C20B22B8(v73, v60);
            sub_1C20D865C(v61, *(&v61 + 1));
          }

LABEL_59:
          sub_1C2170114();
          v72 = v113;
        }

        else
        {
          if (!v65)
          {
            v133[0] = v63;
            LOWORD(v133[1]) = v64;
            BYTE2(v133[1]) = BYTE2(v64);
            BYTE3(v133[1]) = BYTE3(v64);
            BYTE4(v133[1]) = BYTE4(v64);
            BYTE5(v133[1]) = BYTE5(v64);
            v66 = v126;
            sub_1C20B22B8(v126, v60);
            sub_1C20B22B8(v66, v60);
            sub_1C20D865C(v61, *(&v61 + 1));
            goto LABEL_59;
          }

          v69 = v63;
          v70 = v63 >> 32;
          *&v131 = v70 - v69;
          if (v70 < v69)
          {
            goto LABEL_92;
          }

          v71 = v126;
          sub_1C20B22B8(v126, v60);
          sub_1C20B22B8(v71, v60);
          sub_1C20D865C(v61, *(&v61 + 1));
          if (sub_1C216FDD4() && __OFSUB__(v69, sub_1C216FE04()))
          {
            goto LABEL_98;
          }

          v72 = v113;
          sub_1C216FDF4();
          sub_1C2170114();
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v138);
        v75 = *(&v134 + 1);
        v74 = v134;
        sub_1C2170704();
        v76 = v75 >> 62;
        v111 = v30;
        if ((v75 >> 62) > 1)
        {
          if (v76 != 2)
          {
            *(&v138 + 6) = 0;
            *&v138 = 0;
            goto LABEL_74;
          }

          v77 = *(v74 + 16);
          v78 = *(v74 + 24);

          if (sub_1C216FDD4() && __OFSUB__(v77, sub_1C216FE04()))
          {
            goto LABEL_97;
          }

          if (__OFSUB__(v78, v77))
          {
            goto LABEL_95;
          }
        }

        else
        {
          if (!v76)
          {
            *&v138 = v74;
            WORD4(v138) = v75;
            BYTE10(v138) = BYTE2(v75);
            BYTE11(v138) = BYTE3(v75);
            BYTE12(v138) = BYTE4(v75);
            BYTE13(v138) = BYTE5(v75);
LABEL_74:
            v79 = v129;
            sub_1C21706E4();
            sub_1C20D3174(v74, v75);
            v80 = v107;
            sub_1C21706F4();
            sub_1C20D3174(v74, v75);
            v112(v72, v79);
            v81 = v124;
            v140 = v124;
            v141 = v106;
            v82 = __swift_allocate_boxed_opaque_existential_1(&v138);
            v104(v82, v80, v81);
            __swift_project_boxed_opaque_existential_1(&v138, v140);
            v83 = v128;
            sub_1C216FE24();
            v128 = v83;
            v84 = *(&v126 + 1);
            v85 = v126;
            sub_1C20B23C8(v126, *(&v126 + 1));
            v105(v80, v81);
            v131 = v134;
            __swift_destroy_boxed_opaque_existential_0Tm(&v138);
            sub_1C20D3174(v127, v121);
            result = sub_1C20B23C8(v85, v84);
            v16 = v123;
            v19 = v109;
            v26 = v108;
            v24 = v122;
            v34 = v130;
            v30 = v111;
LABEL_75:
            v86 = v131;
            v87 = v132;
            *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
            *(v19[6] + 16 * v30) = v34;
            v88 = (v19[7] + 32 * v30);
            *v88 = v87;
            v88[1] = v86;
            v89 = v19[2];
            v90 = __OFADD__(v89, 1);
            v91 = v89 + 1;
            if (!v90)
            {
              v19[2] = v91;
              if (!v24)
              {
                goto LABEL_7;
              }

LABEL_6:
              v27 = __clz(__rbit64(v24));
              v24 &= v24 - 1;
              continue;
            }

LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          if (v74 >> 32 < v74)
          {
            goto LABEL_94;
          }

          if (sub_1C216FDD4() && __OFSUB__(v74, sub_1C216FE04()))
          {
            goto LABEL_99;
          }
        }

        break;
      }

      sub_1C216FDF4();
      v72 = v113;
      goto LABEL_74;
    }
  }

  a1 = v103;
  v17 = v102;
  v18 = v101;
LABEL_81:
  v99 = v114;
  *a1 = v115;
  a1[1] = v99;
  a1[2] = v17;
  a1[3] = v18;
  a1[4] = v19;
  v100 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1C20D5764(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1C2170154();
    sub_1C20B23C8(v5, v7);
    v8 = v9;
  }

  return v8;
}

uint64_t sub_1C20D57F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C20D5848(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1C20D589C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1C20D58F0(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1C20D59A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return sub_1C20D88D4(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C20D5A10(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = (*a2 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v16 = v9[3];
  v17 = v9[2];
  v14 = v9[5];
  v15 = v9[4];
  v13 = v9[6];
  *v9 = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v7;
  v9[6] = v8;
  sub_1C20D88D4(v2, v3, v4, v5, v6, v7, v8);
  return sub_1C20D86B0(v10, v11, v17, v16, v15, v14, v13);
}

uint64_t sub_1C20D5AEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return sub_1C20D88D4(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C20D5B58(uint64_t a1)
{
  v14 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = (v1 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v12;
  *(v4 + 2) = v14;
  v4[6] = v3;
  return sub_1C20D86B0(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C20D5C58()
{
  if (*v0)
  {
    result = 0x6572726566657270;
  }

  else
  {
    result = 0x6465726975716572;
  }

  *v0;
  return result;
}

uint64_t sub_1C20D5C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465726975716572 && a2 == 0xE800000000000000;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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

uint64_t sub_1C20D5D88(uint64_t a1)
{
  v2 = sub_1C20D89B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C20D5DC4(uint64_t a1)
{
  v2 = sub_1C20D89B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C20D5E0C(uint64_t a1)
{
  v2 = sub_1C20D8A0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C20D5E48(uint64_t a1)
{
  v2 = sub_1C20D8A0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C20D5E84(uint64_t a1)
{
  v2 = sub_1C20D8A60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C20D5EC0(uint64_t a1)
{
  v2 = sub_1C20D8A60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.SupportRequirement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23168, &qword_1C2175A70);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23170, &qword_1C2175A78);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23178, &qword_1C2175A80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D89B8();
  sub_1C2171484();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1C20D8A0C();
    v18 = v22;
    sub_1C2171214();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1C20D8A60();
    sub_1C2171214();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.SupportRequirement.hashValue.getter()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v1);
  return sub_1C2171454();
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.SupportRequirement.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23198, &qword_1C2175A88);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231A0, &qword_1C2175A90);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231A8, &qword_1C2175A98);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D89B8();
  v17 = v37;
  sub_1C2171464();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_1C2171204();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1C2170F74();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231B0, &qword_1C2175AA0) + 48);
    *v25 = &type metadata for ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.SupportRequirement;
    sub_1C2171154();
    sub_1C2170F64();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_1C20D8A0C();
    sub_1C2171144();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_1C20D8A60();
    sub_1C2171144();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_0Tm(v28);
}

uint64_t sub_1C20D6674()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C20D6728()
{
  sub_1C2171434();
  MEMORY[0x1C69146F0](0);
  return sub_1C2171454();
}

uint64_t sub_1C20D676C()
{
  sub_1C2171434();
  MEMORY[0x1C69146F0](0);
  return sub_1C2171454();
}

uint64_t sub_1C20D67C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001C21846F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1C2171324();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1C20D685C(uint64_t a1)
{
  v2 = sub_1C20D8B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C20D6898(uint64_t a1)
{
  v2 = sub_1C20D8B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231B8, &qword_1C2175AA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D8B00();
  sub_1C2171484();
  v12 = v8;
  sub_1C20D8B54();
  sub_1C2171294();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231D0, &qword_1C2175AB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D8B00();
  sub_1C2171464();
  if (!v2)
  {
    sub_1C20D8BA8();
    sub_1C21711D4();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.inputValues.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 40);
  *(a1 + 32) = v6;
  return sub_1C20D860C(v2, v3, v4, v5, v6);
}

__n128 ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.init(shouldCheckForSupport:inputValues:perCredentialInputValues:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 32);
  *a4 = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v6;
  *(a4 + 40) = v4;
  *(a4 + 48) = a3;
  return result;
}

uint64_t sub_1C20D6C08()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v1);
  return sub_1C2171454();
}

uint64_t sub_1C20D6C50()
{
  v1 = *v0;
  sub_1C2171434();
  MEMORY[0x1C69146F0](v1);
  return sub_1C2171454();
}

unint64_t sub_1C20D6C94()
{
  v1 = 0x6C61567475706E69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1C20D6CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C20D9E8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C20D6D24(uint64_t a1)
{
  v2 = sub_1C20D8BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C20D6D60(uint64_t a1)
{
  v2 = sub_1C20D8BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF231E0, &qword_1C2175AB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v20 = *(v1 + 2);
  v21 = v9;
  v10 = *(v1 + 3);
  v18 = *(v1 + 4);
  v19 = v10;
  v11 = v1[40];
  v17 = *(v1 + 6);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D8BFC();
  sub_1C2171484();
  LOBYTE(v23) = 0;
  v13 = v22;
  sub_1C2171284();
  if (!v13)
  {
    v14 = v17;
    v23 = v21;
    v24 = v20;
    v25 = v19;
    v26 = v18;
    v27 = v11;
    v28 = 1;
    sub_1C20D860C(v21, v20, v19, v18, v11);
    sub_1C20D8C50();
    sub_1C2171264();
    sub_1C20D8708(v23, v24, v25, v26, v27);
    v23 = v14;
    v28 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23B00, &qword_1C2175AC0);
    sub_1C20D8D94(&qword_1EDD4A750, sub_1C20D8CEC, sub_1C20D8C50);
    sub_1C2171264();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF231F0, &qword_1C2175AC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D8BFC();
  sub_1C2171464();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v22) = 0;
  v11 = sub_1C21711C4();
  v28 = 1;
  sub_1C20D8D40();
  sub_1C21711A4();
  v12 = v22;
  v19 = v23;
  v20 = v24;
  v21 = v25;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23B00, &qword_1C2175AC0);
  v28 = 2;
  sub_1C20D8D94(&unk_1EDD4A760, sub_1C20D8E24, sub_1C20D8D40);
  sub_1C21711A4();
  (*(v6 + 8))(v9, v5);
  v14 = v21;
  v13 = v22;
  *a2 = v11 & 1;
  v16 = v19;
  v15 = v20;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = v14;
  v17 = v27;
  *(a2 + 40) = v27;
  *(a2 + 48) = v13;
  sub_1C20D860C(v12, v16, v15, v14, v17);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  sub_1C20D8708(v12, v16, v15, v14, v17);
}

uint64_t sub_1C20D7314()
{
  if (*v0)
  {
    result = 6713968;
  }

  else
  {
    result = 0x6F6C42656772616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1C20D734C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6C42656772616CLL && a2 == 0xE900000000000062;
  if (v6 || (sub_1C2171324() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6713968 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2171324();

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

uint64_t sub_1C20D7430(uint64_t a1)
{
  v2 = sub_1C20D8E78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C20D746C(uint64_t a1)
{
  v2 = sub_1C20D8E78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ASCPublicKeyCredentialRegistrationExtensionInputs.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C20D74FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23200, &qword_1C2175AD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D8E78();
  sub_1C2171484();
  v11 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  LOBYTE(v21) = *(v3 + v11);
  v28 = 0;
  sub_1C20D8ECC();
  sub_1C2171264();
  if (!v2)
  {
    v12 = (v3 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf);
    swift_beginAccess();
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v16 = v12[4];
    v17 = v12[5];
    v18 = v12[6];
    v21 = *v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v20[7] = 1;
    sub_1C20D88D4(v21, v13, v14, v15, v16, v17, v18);
    sub_1C20D8F20();
    sub_1C2171264();
    sub_1C20D86B0(v21, v22, v23, v24, v25, v26, v27);
  }

  return (*(v6 + 8))(v9, v5);
}

_BYTE *ASCPublicKeyCredentialRegistrationExtensionInputs.init(from:)(uint64_t *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23220, &qword_1C2175AD8);
  v29 = *(v37 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v26 - v5;
  v7 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  v1[OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob] = 2;
  v8 = v1;
  v9 = &v1[OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  v9[6] = 1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C20D8E78();
  sub_1C2171464();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_1C20D86B0(*v9, v9[1], v9[2], v9[3], v9[4], v9[5], v9[6]);
    type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v29;
    v36 = 0;
    sub_1C20D8F74();
    v12 = v37;
    sub_1C21711A4();
    v13 = v32;
    swift_beginAccess();
    v8[v7] = v13;
    v31 = 1;
    sub_1C20D8FC8();
    sub_1C21711A4();
    v15 = v35;
    v27 = v33;
    v28 = v34;
    v26 = v32;
    swift_beginAccess();
    v16 = *v9;
    v17 = v9[1];
    v18 = v9[2];
    v19 = v9[3];
    v20 = v9[4];
    v21 = v9[5];
    v22 = v9[6];
    v24 = v27;
    v23 = v28;
    *v9 = v26;
    *(v9 + 1) = v24;
    *(v9 + 2) = v23;
    v9[6] = v15;
    sub_1C20D86B0(v16, v17, v18, v19, v20, v21, v22);
    v25 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
    v30.receiver = v8;
    v30.super_class = v25;
    v8 = objc_msgSendSuper2(&v30, sel_init);
    (*(v11 + 8))(v6, v12);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v8;
}

_BYTE *sub_1C20D7A0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs());
  result = ASCPublicKeyCredentialRegistrationExtensionInputs.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C20D7ABC(uint64_t a1)
{
  v2 = sub_1C20D8460(&qword_1EDD4A7C8, 255, type metadata accessor for ASCAuthorizationError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C20D7B2C(uint64_t a1)
{
  v2 = sub_1C20D8460(&qword_1EDD4A7C8, 255, type metadata accessor for ASCAuthorizationError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C20D7B9C(uint64_t a1)
{
  v2 = sub_1C20D8460(&qword_1EDD4A800, 255, type metadata accessor for ASCAuthorizationError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1C20D7C2C(uint64_t a1)
{
  v2 = sub_1C20D8460(&qword_1EDD4A800, 255, type metadata accessor for ASCAuthorizationError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1C20D7C9C(uint64_t a1)
{
  v2 = sub_1C20D8460(&qword_1EDD4A800, 255, type metadata accessor for ASCAuthorizationError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1C20D7D0C(void *a1, uint64_t a2)
{
  v4 = sub_1C20D8460(&qword_1EDD4A800, 255, type metadata accessor for ASCAuthorizationError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1C20D7DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C20D8460(&qword_1EDD4A800, 255, type metadata accessor for ASCAuthorizationError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1C20D7E44()
{
  v2 = *v0;
  sub_1C2171434();
  sub_1C2170894();
  return sub_1C2171454();
}

uint64_t sub_1C20D7EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C20D8460(&qword_1EDD4A800, 255, type metadata accessor for ASCAuthorizationError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1C20D7F2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C20D7FF8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C20DA01C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1C20D7FF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C20D8104(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1C2170FA4();
    a6 = v11;
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

uint64_t sub_1C20D8104(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C20D8150(a1, a2);
  sub_1C20D8280(&unk_1F419CC68);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C20D8150(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C20FE954(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C2170FA4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C2170A34();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C20FE954(v10, 0);
        result = sub_1C2170F24();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C20D8280(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1C20D836C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1C20D836C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_1C20D8460(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_1C20D84A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  v1[OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob] = 2;
  v4 = &v1[OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v4[6] = 1;
  v5 = OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_largeBlob;
  swift_beginAccess();
  LOBYTE(v5) = *(a1 + v5);
  swift_beginAccess();
  v1[v3] = v5;
  v6 = (a1 + OBJC_IVAR____TtC26AuthenticationServicesCore49ASCPublicKeyCredentialRegistrationExtensionInputs_prf);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = v6[4];
  v12 = v6[5];
  v13 = v6[6];
  swift_beginAccess();
  v14 = *v4;
  v20 = v4[2];
  v21 = v4[1];
  v18 = v4[4];
  v19 = v4[3];
  v16 = v4[6];
  v17 = v4[5];
  *v4 = v7;
  v4[1] = v8;
  v4[2] = v9;
  v4[3] = v10;
  v4[4] = v11;
  v4[5] = v12;
  v4[6] = v13;
  sub_1C20D88D4(v7, v8, v9, v10, v11, v12, v13);
  sub_1C20D86B0(v14, v21, v20, v19, v18, v17, v16);
  v22.receiver = v1;
  v22.super_class = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs();
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_1C20D860C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5 != 2)
  {
    sub_1C20D865C(result, a2);

    return sub_1C20B22B8(a3, a4);
  }

  return result;
}

uint64_t sub_1C20D865C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C20D86B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7)
{
  if (a7 != 1)
  {
    sub_1C20D8708(a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1C20D8708(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5 != 2)
  {
    sub_1C20D3174(result, a2);

    return sub_1C20B23C8(a3, a4);
  }

  return result;
}

void sub_1C20D87AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2 != 1)
  {

    sub_1C20B22B8(a4, a5);
  }
}

uint64_t sub_1C20D87FC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1C20B22CC(result, a2, a3, a4);
  }

  return result;
}

void sub_1C20D8840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2 != 1)
  {

    sub_1C20B23C8(a4, a5);
  }
}

uint64_t sub_1C20D8890(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1C20B23DC(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C20D88D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7)
{
  if (a7 != 1)
  {
    sub_1C20D860C(a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1C20D89B8()
{
  result = qword_1EBF23180;
  if (!qword_1EBF23180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23180);
  }

  return result;
}

unint64_t sub_1C20D8A0C()
{
  result = qword_1EBF23188;
  if (!qword_1EBF23188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23188);
  }

  return result;
}

unint64_t sub_1C20D8A60()
{
  result = qword_1EBF23190;
  if (!qword_1EBF23190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23190);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1C20D8B00()
{
  result = qword_1EBF231C0;
  if (!qword_1EBF231C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF231C0);
  }

  return result;
}

unint64_t sub_1C20D8B54()
{
  result = qword_1EBF231C8;
  if (!qword_1EBF231C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF231C8);
  }

  return result;
}

unint64_t sub_1C20D8BA8()
{
  result = qword_1EBF231D8;
  if (!qword_1EBF231D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF231D8);
  }

  return result;
}

unint64_t sub_1C20D8BFC()
{
  result = qword_1EBF231E8;
  if (!qword_1EBF231E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF231E8);
  }

  return result;
}

unint64_t sub_1C20D8C50()
{
  result = qword_1EDD4A740;
  if (!qword_1EDD4A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A740);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C20D8CEC()
{
  result = qword_1EDD4AC00;
  if (!qword_1EDD4AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AC00);
  }

  return result;
}

unint64_t sub_1C20D8D40()
{
  result = qword_1EDD4A758;
  if (!qword_1EDD4A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A758);
  }

  return result;
}

uint64_t sub_1C20D8D94(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF23B00, &qword_1C2175AC0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C20D8E24()
{
  result = qword_1EDD4AC10;
  if (!qword_1EDD4AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4AC10);
  }

  return result;
}

unint64_t sub_1C20D8E78()
{
  result = qword_1EBF23208;
  if (!qword_1EBF23208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23208);
  }

  return result;
}

unint64_t sub_1C20D8ECC()
{
  result = qword_1EBF23210;
  if (!qword_1EBF23210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23210);
  }

  return result;
}

unint64_t sub_1C20D8F20()
{
  result = qword_1EBF23218;
  if (!qword_1EBF23218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23218);
  }

  return result;
}

unint64_t sub_1C20D8F74()
{
  result = qword_1EBF23228;
  if (!qword_1EBF23228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23228);
  }

  return result;
}

unint64_t sub_1C20D8FC8()
{
  result = qword_1EBF23230;
  if (!qword_1EBF23230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23230);
  }

  return result;
}

unint64_t sub_1C20D9020()
{
  result = qword_1EBF23238;
  if (!qword_1EBF23238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23238);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputsC3PRFV11InputValuesVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
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

uint64_t sub_1C20D9460(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1C20D94BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ASCPublicKeyCredentialRegistrationExtensionInputs.LargeBlob.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ASCABLEPostHandshakeMessage.SupportedFeatures(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ASCABLEPostHandshakeMessage.SupportedFeatures(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C20D9910()
{
  result = qword_1EBF23258;
  if (!qword_1EBF23258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23258);
  }

  return result;
}

unint64_t sub_1C20D9968()
{
  result = qword_1EBF23260;
  if (!qword_1EBF23260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23260);
  }

  return result;
}

unint64_t sub_1C20D99C0()
{
  result = qword_1EBF23268;
  if (!qword_1EBF23268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23268);
  }

  return result;
}

unint64_t sub_1C20D9A18()
{
  result = qword_1EBF23270;
  if (!qword_1EBF23270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23270);
  }

  return result;
}

unint64_t sub_1C20D9A70()
{
  result = qword_1EBF23278;
  if (!qword_1EBF23278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23278);
  }

  return result;
}

unint64_t sub_1C20D9AC8()
{
  result = qword_1EBF23280;
  if (!qword_1EBF23280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23280);
  }

  return result;
}

unint64_t sub_1C20D9B20()
{
  result = qword_1EBF23288;
  if (!qword_1EBF23288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23288);
  }

  return result;
}

unint64_t sub_1C20D9B78()
{
  result = qword_1EBF23290;
  if (!qword_1EBF23290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23290);
  }

  return result;
}

unint64_t sub_1C20D9BD0()
{
  result = qword_1EBF23298;
  if (!qword_1EBF23298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF23298);
  }

  return result;
}

unint64_t sub_1C20D9C28()
{
  result = qword_1EBF232A0;
  if (!qword_1EBF232A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF232A0);
  }

  return result;
}

unint64_t sub_1C20D9C80()
{
  result = qword_1EBF232A8;
  if (!qword_1EBF232A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF232A8);
  }

  return result;
}

unint64_t sub_1C20D9CD8()
{
  result = qword_1EBF232B0;
  if (!qword_1EBF232B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF232B0);
  }

  return result;
}

unint64_t sub_1C20D9D30()
{
  result = qword_1EBF232B8;
  if (!qword_1EBF232B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF232B8);
  }

  return result;
}

unint64_t sub_1C20D9D88()
{
  result = qword_1EBF232C0;
  if (!qword_1EBF232C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF232C0);
  }

  return result;
}

unint64_t sub_1C20D9DE0()
{
  result = qword_1EBF232C8;
  if (!qword_1EBF232C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF232C8);
  }

  return result;
}

unint64_t sub_1C20D9E38()
{
  result = qword_1EBF232D0;
  if (!qword_1EBF232D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF232D0);
  }

  return result;
}

uint64_t sub_1C20D9E8C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001C2184710 == a2 || (sub_1C2171324() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61567475706E69 && a2 == 0xEB00000000736575 || (sub_1C2171324() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C2184730 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1C2171324();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1C20DA01C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C20DA234(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1C20DA2D0()
{
  result = qword_1EDD4A7F0;
  if (!qword_1EDD4A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A7F0);
  }

  return result;
}

id ASCPasskeyAccountRegistrationLoginChoice.init(with:clientApplicationBundleID:userHasSignInWithAppleAccountForService:)(char *a1, char *a2, char *a3, char a4)
{
  v5 = *&a1[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_challenge];
  v6 = *&a1[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_challenge + 8];
  v8 = *&a1[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_relyingPartyIdentifier];
  v7 = *&a1[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_relyingPartyIdentifier + 8];
  v9 = *&a1[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_userID];
  v10 = *&a1[OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_userID + 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23400, &qword_1C2176810);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C2176800;
  sub_1C20DB8B8(0, &qword_1EDD4A9B0, 0x1E696AD98);
  sub_1C20D865C(v5, v6);
  v29 = v9;
  sub_1C20D865C(v9, v10);
  *(v11 + 32) = sub_1C2170CD4();
  v27 = objc_allocWithZone(ASCPublicKeyCredentialCreationOptions);
  v12 = sub_1C2170154();
  sub_1C20D3174(v5, v6);
  v13 = sub_1C21708F4();
  v14 = sub_1C21708F4();
  v15 = sub_1C2170154();
  v16 = sub_1C21708F4();
  v17 = sub_1C2170B54();

  v18 = sub_1C21708F4();
  sub_1C20DB8B8(0, &qword_1EBF23410, off_1E815F1B8);
  v19 = sub_1C2170B54();
  v28 = [v27 initWithChallenge:v12 clientDataJSON:0 clientDataHash:0 relyingPartyIdentifier:v13 userName:v14 userIdentifier:v15 userDisplayName:v16 supportedAlgorithmIdentifiers:v17 attestationPreference:v18 userVerificationPreference:0 excludedCredentials:v19 extensions:0 origin:0];

  sub_1C20D3174(v29, v10);
  v20 = objc_allocWithZone(type metadata accessor for ASCPasskeyAccountRegistrationUserState());
  v21 = a1;
  v22 = ASCPasskeyAccountRegistrationUserState.init(for:clientApplicationBundleID:)(v21, a2, a3);
  v23 = type metadata accessor for ASCPasskeyAccountRegistrationLoginChoice();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_options] = v21;
  *&v24[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState] = v22;
  *&v24[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_publicKeyCredentialCreationOptions] = v28;
  v24[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userHasSignInWithAppleAccountForService] = a4;
  v33.receiver = v24;
  v33.super_class = v23;
  v25 = objc_msgSendSuper2(&v33, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v25;
}

id ASCPasskeyAccountRegistrationLoginChoice.init(coder:)(void *a1)
{
  type metadata accessor for ASCPublicKeyAccountRegistrationOptions();
  v2 = sub_1C2170CC4();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for ASCPasskeyAccountRegistrationUserState();
    v4 = sub_1C2170CC4();
    if (v4)
    {
      v5 = v4;
      sub_1C20DB8B8(0, &qword_1EBF23418, off_1E815F1B0);
      v6 = sub_1C2170CC4();
      if (v6)
      {
        v7 = v6;
        v8 = sub_1C21708F4();
        v9 = [a1 decodeBoolForKey_];

        v10 = type metadata accessor for ASCPasskeyAccountRegistrationLoginChoice();
        v11 = objc_allocWithZone(v10);
        *&v11[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_options] = v3;
        *&v11[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState] = v5;
        *&v11[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_publicKeyCredentialCreationOptions] = v7;
        v11[OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userHasSignInWithAppleAccountForService] = v9;
        v17.receiver = v11;
        v17.super_class = v10;
        v12 = v3;
        v13 = v5;
        v14 = v7;
        v15 = objc_msgSendSuper2(&v17, sel_init);

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        return v15;
      }

      v3 = v5;
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1C20DAA7C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_options);
  v4 = sub_1C21708F4();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState);
  v6 = sub_1C21708F4();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_publicKeyCredentialCreationOptions);
  v8 = sub_1C21708F4();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userHasSignInWithAppleAccountForService);
  v10 = sub_1C21708F4();
  [a1 encodeBool:v9 forKey:v10];
}

uint64_t sub_1C20DAC68()
{
  v1 = 0;
  v2 = v0[8];
  v3 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_options);
  v4 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_acceptedContactIdentifiers);
  v5 = *(v4 + 16);
  v6 = (v4 + 32);
  do
  {
    if (v5 == v1)
    {
      goto LABEL_9;
    }

    v7 = v6[v1++];
  }

  while (v7 != 1);
  v8 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState);
  v9 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress;
  v0[9] = v8;
  v0[10] = v9;
  v10 = v8 + v9;
  swift_beginAccess();
  if (*(v10 + 8))
  {
    v11 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_relyingPartyIdentifier);
    v12 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_relyingPartyIdentifier + 8);
    v0[11] = v12;

    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_1C20DAEA8;

    return sub_1C2111FD0(v11, v12);
  }

  else
  {
    v5 = *(v4 + 16);
    do
    {
LABEL_9:
      if (!v5)
      {
        goto LABEL_15;
      }

      v15 = *v6++;
      --v5;
    }

    while ((v15 & 1) != 0);
    v16 = *(v0[8] + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState);
    v17 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
    swift_beginAccess();
    v18 = *(v16 + v17);
    if (!v18)
    {
LABEL_15:
      v27 = 0;
      v26 = 0;
      goto LABEL_16;
    }

    v19 = *&v18[OBJC_IVAR____TtC26AuthenticationServicesCore14ASCPhoneNumber_cnPhoneNumber];
    v20 = v18;
    v21 = [v19 formattedStringValue];
    if (!v21)
    {
      v21 = [v19 stringValue];
    }

    v22 = v21;
    v23 = sub_1C2170914();
    v25 = v24;

    v26 = v25;
    v27 = v23;
LABEL_16:
    v28 = v0[1];

    return v28(v27, v26);
  }
}

uint64_t sub_1C20DAEA8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C20DAFC0, 0, 0);
}

uint64_t sub_1C20DAFC0()
{
  v1 = (v0[9] + v0[10]);
  v3 = *v1;
  v2 = v1[1];
  v5 = v0[1];

  return v5(v3, v2);
}

BOOL sub_1C20DB044(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

BOOL sub_1C20DB074()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_options);
  if (*(v5 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_shouldRequestName) != 1 || (v6 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState), v7 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_name, swift_beginAccess(), sub_1C20DB900(v6 + v7, v4), v8 = sub_1C216FF04(), LODWORD(v6) = (*(*(v8 - 8) + 48))(v4, 1, v8), sub_1C20DB970(v4), v6 != 1))
  {
    v9 = 0;
    v10 = *(v5 + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPublicKeyAccountRegistrationOptions_acceptedContactIdentifiers);
    v11 = *(v10 + 16);
    v12 = (v10 + 32);
    do
    {
      if (v11 == v9)
      {
        goto LABEL_8;
      }

      v13 = v12[v9++];
    }

    while (v13 != 1);
    v14 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState) + OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_emailAddress;
    swift_beginAccess();
    if (*(v14 + 8))
    {
      return 1;
    }

    v11 = *(v10 + 16);
LABEL_8:
    while (v11)
    {
      v15 = *v12++;
      --v11;
      if ((v15 & 1) == 0)
      {
        v16 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore40ASCPasskeyAccountRegistrationLoginChoice_userState);
        v17 = OBJC_IVAR____TtC26AuthenticationServicesCore38ASCPasskeyAccountRegistrationUserState_phoneNumber;
        swift_beginAccess();
        return *(v16 + v17) != 0;
      }
    }
  }

  return 0;
}

uint64_t sub_1C20DB260()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C20DB2EC;

  return sub_1C20DAC48();
}

uint64_t sub_1C20DB2EC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1C20DB564(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C20DB60C;

  return sub_1C20DAC48();
}

uint64_t sub_1C20DB60C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (a2)
  {
    v8 = sub_1C21708F4();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v4 + 24);
  (v9)[2](v9, v8);

  _Block_release(v9);
  v10 = *(v7 + 8);

  return v10();
}

id ASCPasskeyAccountRegistrationLoginChoice.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASCPasskeyAccountRegistrationLoginChoice.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASCPasskeyAccountRegistrationLoginChoice();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C20DB8B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C20DB900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C20DB970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23420, &unk_1C2176820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of ASCPasskeyAccountRegistrationLoginChoice.contactIdentifierValue.getter()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C20DB2EC;

  return v6();
}

uint64_t dispatch thunk of ASCPasskeyAccountRegistrationLoginChoice.contactIdentifierValue()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C20DBF90;

  return v6();
}

uint64_t sub_1C20DBCE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C20DBD8C;

  return sub_1C20DB564(v2, v3);
}

uint64_t sub_1C20DBD8C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C20DBEC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C20DBF8C;

  return sub_1C2166CA0(a1, v4, v5, v7);
}

uint64_t type metadata accessor for ASCABLEAdvertisement()
{
  result = qword_1EDD4A868;
  if (!qword_1EDD4A868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C20DC008()
{
  result = sub_1C2170024();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C20DC094()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23508, &qword_1C2176960);
  v7 = sub_1C2170024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C21768C0;
  sub_1C2170014();
  v12 = *(v8 + 48);
  result = v12(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = v11 + v10;
    v15 = *(v8 + 32);
    v15(v14, v6, v7);
    sub_1C2170014();
    result = v12(v4, 1, v7);
    if (result != 1)
    {
      result = (v15)(v14 + v9, v4, v7);
      qword_1EDD4CAB0 = v11;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C20DC2BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v51 - v8;
  v10 = sub_1C2170024();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v51 - v16;
  v18 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_14;
    }

    v20 = *(a1 + 16);
    v19 = *(a1 + 24);
    v21 = __OFSUB__(v19, v20);
    v22 = v19 - v20;
    if (!v21)
    {
      if (v22 != 16)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v18)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_14;
      }

LABEL_8:
      v23 = sub_1C20DC7B8(14, 15, a1, a2);
      v24 = sub_1C212DC80(v23);
      sub_1C20DC824(v24, v9);
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        v54 = *(v11 + 32);
        v54(v17, v9, v10);
        v53 = sub_1C2170134();
        v38 = sub_1C20DC7B8(1, 10, a1, a2);
        v52 = v39;
        v40 = sub_1C20DC7B8(11, 13, a1, a2);
        v42 = v41;
        v43 = v17;
        v44 = v54;
        v54(v15, v43, v10);
        *a3 = v53;
        v45 = v52;
        *(a3 + 8) = v38;
        *(a3 + 16) = v45;
        *(a3 + 24) = v40;
        *(a3 + 32) = v42;
        v46 = type metadata accessor for ASCABLEAdvertisement();
        v44((a3 + *(v46 + 28)), v15, v10);
        v47 = (a3 + *(v46 + 32));
        *v47 = a1;
        v47[1] = a2;
        return (*(*(v46 - 8) + 56))(a3, 0, 1, v46);
      }

      sub_1C20DD6F0(v9);
      if (qword_1EDD4A728 == -1)
      {
LABEL_10:
        v25 = sub_1C21705A4();
        __swift_project_value_buffer(v25, qword_1EDD4CB08);
        v26 = sub_1C2170584();
        v27 = sub_1C2170C54();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          v29 = "Could not decode caBLE server URL";
          v30 = v27;
          v31 = v26;
          v32 = v28;
          v33 = 2;
LABEL_30:
          _os_log_impl(&dword_1C20AD000, v31, v30, v29, v32, v33);
          MEMORY[0x1C6915360](v28, -1, -1);
        }

LABEL_31:
        sub_1C20D3174(a1, a2);

        v50 = type metadata accessor for ASCABLEAdvertisement();
        return (*(*(v50 - 8) + 56))(a3, 1, 1, v50);
      }

LABEL_34:
      swift_once();
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  if (BYTE6(a2) == 16)
  {
    goto LABEL_8;
  }

LABEL_14:
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v34 = sub_1C21705A4();
  __swift_project_value_buffer(v34, qword_1EDD4CB08);
  sub_1C20D865C(a1, a2);
  v26 = sub_1C2170584();
  v35 = sub_1C2170C54();
  if (!os_log_type_enabled(v26, v35))
  {
    sub_1C20D3174(a1, a2);
    goto LABEL_31;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      v37 = 0;
      goto LABEL_29;
    }

    v49 = *(a1 + 16);
    v48 = *(a1 + 24);
    v21 = __OFSUB__(v48, v49);
    v37 = v48 - v49;
    if (!v21)
    {
      goto LABEL_29;
    }

    __break(1u);
  }

  else if (!v18)
  {
    v37 = BYTE6(a2);
LABEL_29:
    *(result + 4) = v37;
    v28 = result;
    sub_1C20D3174(a1, a2);
    v29 = "Found caBLE advertisement of unexpected size: %ld";
    v30 = v35;
    v31 = v26;
    v32 = v28;
    v33 = 12;
    goto LABEL_30;
  }

  LODWORD(v37) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v37 = v37;
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C20DC7B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 + 1 >= result)
  {
    return sub_1C2170124();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C20DC824@<X0>(unsigned __int16 a1@<W0>, uint64_t a2@<X8>)
{
  LOWORD(v2) = a1;
  v4 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23500, &qword_1C2176948);
  v5 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v7 = &v54 - v6;
  v8 = sub_1C2170844();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C2170724();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C2170964();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 > 0xFF)
  {
    v57 = a2;
    sub_1C2170954();
    v27 = sub_1C2170924();
    v29 = v28;
    result = (*(v17 + 8))(v20, v16);
    if (v29 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C21768D0;
    *(v31 + 32) = v2;
    *(v31 + 34) = 0;
    v63 = v27;
    v64 = v29;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23750, &qword_1C2176DC0);
    v62[3] = v32;
    v62[4] = sub_1C20DD758();
    v62[0] = v31;
    v33 = *(*__swift_project_boxed_opaque_existential_1(v62, v32) + 16);
    v55 = v29;
    v56 = v27;
    sub_1C20B22B8(v27, v29);

    sub_1C2170114();
    __swift_destroy_boxed_opaque_existential_0Tm(v62);

    v35 = v63;
    v34 = v64;
    sub_1C20DD7BC();
    sub_1C2170704();
    sub_1C20D865C(v35, v34);
    sub_1C210656C(v35, v34);
    sub_1C20D3174(v35, v34);
    v36 = v59;
    sub_1C21706F4();
    (*(v9 + 8))(v12, v8);
    (*(v60 + 16))(v7, v36, v61);
    *&v7[*(v58 + 36)] = 8;
    v37 = sub_1C212D9B0(v7);
    v38 = sub_1C21709C4();
    a2 = v57;
    if (v38)
    {
      v39 = v38;
      v2 = sub_1C20DD5B4(v38, 0);
      v40 = sub_1C20DD4EC(v62, v2 + 4, v39, 0xD000000000000020, 0x80000001C2184CC0);

      if (v40 != v39)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    v62[0] = 0x2E656C626163;
    v62[1] = 0xE600000000000000;
    if (v37 < 4)
    {
LABEL_22:

      v51 = &aCom[16 * (v37 & 3)];
      v52 = *v51;
      v53 = *(v51 + 1);

      swift_arrayDestroy();
      MEMORY[0x1C6913CB0](v52, v53);

      sub_1C2170014();

      sub_1C20D3174(v35, v34);
      sub_1C20B23C8(v56, v55);
      return (*(v60 + 8))(v59, v61);
    }

    v46 = v37 >> 2;
    while ((v46 & 0x1F) < v2[2])
    {
      v47 = &v2[2 * (v46 & 0x1F) + 4];
      v48 = *v47;
      v49 = v47[1];

      MEMORY[0x1C6913CA0](v48, v49);

      v50 = v46 > 0x1F;
      v46 >>= 5;
      if (!v50)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else if (qword_1EDD4A710 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v21 = qword_1EDD4CAB0;
  if (*(qword_1EDD4CAB0 + 16) <= v2)
  {
LABEL_9:
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v41 = sub_1C21705A4();
    __swift_project_value_buffer(v41, qword_1EDD4CB08);
    v42 = sub_1C2170584();
    v43 = sub_1C2170C64();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 33554688;
      *(v44 + 4) = v2;
      _os_log_impl(&dword_1C20AD000, v42, v43, "Found unknown reserved caBLE URL: %hu", v44, 6u);
      MEMORY[0x1C6915360](v44, -1, -1);
    }

    v45 = sub_1C2170024();
    v23 = *(*(v45 - 8) + 56);
    v26 = v45;
    v24 = a2;
    v25 = 1;
    goto LABEL_14;
  }

  v22 = sub_1C2170024();
  v61 = *(v22 - 8);
  (*(v61 + 16))(a2, v21 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v2, v22);
  v23 = *(v61 + 56);
  v24 = a2;
  v25 = 0;
  v26 = v22;
LABEL_14:

  return v23(v24, v25, 1, v26);
}

uint64_t sub_1C20DCFA4@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v74 = a2;
  v75 = a5;
  v72 = a7;
  v73 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v65 - v12;
  v14 = sub_1C2170024();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v65 - v20;
  v71 = a6;
  sub_1C20DC824(a6, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1C20DD6F0(v13);
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v22 = sub_1C21705A4();
    __swift_project_value_buffer(v22, qword_1EDD4CB08);
    v23 = sub_1C2170584();
    v24 = sub_1C2170C54();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C20AD000, v23, v24, "Could not decode caBLE server URL", v25, 2u);
      MEMORY[0x1C6915360](v25, -1, -1);
    }

    sub_1C20D3174(a4, v75);
    sub_1C20D3174(v74, v73);

    v26 = type metadata accessor for ASCABLEAdvertisement();
    return (*(*(v26 - 8) + 56))(v72, 1, 1, v26);
  }

  else
  {
    v28 = *(v15 + 32);
    v68 = v15 + 32;
    v69 = v28;
    v28(v21, v13, v14);
    v29 = *(v15 + 16);
    v67 = v19;
    v29(v19, v21, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C21768E0;
    *(v30 + 32) = a1;
    v31 = sub_1C20E7898(v30);
    v70 = a4;
    v32 = v72;
    v33 = v31;
    v34 = v74;
    v36 = v35;

    v82 = v33;
    v83 = v36;
    v66 = a1;
    v37 = MEMORY[0x1E6969080];
    v65 = v14;
    v78 = MEMORY[0x1E6969080];
    v79 = MEMORY[0x1E6969078];
    v76 = v34;
    v38 = v34;
    v39 = v73;
    v77 = v73;
    v40 = __swift_project_boxed_opaque_existential_1(&v76, MEMORY[0x1E6969080]);
    v41 = *v40;
    v42 = v40[1];
    sub_1C20D865C(v33, v36);
    sub_1C20D865C(v38, v39);
    sub_1C2106434(v41, v42);
    sub_1C20D3174(v33, v36);
    __swift_destroy_boxed_opaque_existential_0Tm(&v76);
    v43 = v82;
    v44 = v83;
    v80 = v82;
    v81 = v83;
    v78 = v37;
    v79 = MEMORY[0x1E6969078];
    v45 = v70;
    v46 = v75;
    v76 = v70;
    v77 = v75;
    v47 = __swift_project_boxed_opaque_existential_1(&v76, v37);
    v49 = *v47;
    v48 = v47[1];
    sub_1C20D865C(v43, v44);
    sub_1C20D865C(v45, v46);
    sub_1C2106434(v49, v48);
    sub_1C20D3174(v43, v44);
    __swift_destroy_boxed_opaque_existential_0Tm(&v76);
    v50 = v80;
    v51 = v81;
    v52 = sub_1C212E2E8(1, v71);
    v54 = v53;
    v82 = v50;
    v83 = v51;
    v78 = MEMORY[0x1E6969080];
    v79 = MEMORY[0x1E6969078];
    v76 = v52;
    v77 = v53;
    v55 = __swift_project_boxed_opaque_existential_1(&v76, MEMORY[0x1E6969080]);
    v56 = *v55;
    v57 = v55[1];
    sub_1C20D865C(v50, v51);
    sub_1C20D865C(v52, v54);
    sub_1C2106434(v56, v57);
    sub_1C20D3174(v52, v54);
    sub_1C20D3174(v50, v51);
    v58 = v65;
    (*(v15 + 8))(v21, v65);
    __swift_destroy_boxed_opaque_existential_0Tm(&v76);
    v59 = v82;
    v60 = v83;
    *v32 = v66;
    v61 = v73;
    *(v32 + 8) = v74;
    *(v32 + 16) = v61;
    v62 = v75;
    *(v32 + 24) = v70;
    *(v32 + 32) = v62;
    v63 = type metadata accessor for ASCABLEAdvertisement();
    v69(v32 + *(v63 + 28), v67, v58);
    v64 = (v32 + *(v63 + 32));
    *v64 = v59;
    v64[1] = v60;
    return (*(*(v63 - 8) + 56))(v32, 0, 1, v63);
  }
}

uint64_t sub_1C20DD4EC(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_1C2170A24();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C20DD5B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23510, &qword_1C2176968);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1C20DD638(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((sub_1C21068CC(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C21068CC(*(a1 + 3), *(a1 + 4), *(a2 + 3), *(a2 + 4)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ASCABLEAdvertisement();
  v5 = *(v4 + 28);
  if ((sub_1C216FFC4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 32);
  v7 = *&a1[v6];
  v8 = *&a1[v6 + 8];
  v9 = &a2[v6];
  v10 = *v9;
  v11 = v9[1];

  return sub_1C21068CC(v7, v8, v10, v11);
}

uint64_t sub_1C20DD6F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C20DD758()
{
  result = qword_1EDD4A8B0;
  if (!qword_1EDD4A8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBF23750, &qword_1C2176DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A8B0);
  }

  return result;
}

unint64_t sub_1C20DD7BC()
{
  result = qword_1EDD4A7A0;
  if (!qword_1EDD4A7A0)
  {
    sub_1C2170844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4A7A0);
  }

  return result;
}

uint64_t _sSo8ASCAgentC26AuthenticationServicesCoreE29validatePresenceOfTestOptionsySbAC020ASCCredentialRequesthI0CSgFZ_0(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if ([objc_opt_self() isInternalInstall])
  {
    return 1;
  }

  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v2 = sub_1C21705A4();
  __swift_project_value_buffer(v2, qword_1EDD4CB08);
  v3 = sub_1C2170584();
  v4 = sub_1C2170C64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C20AD000, v3, v4, "Attempted to use test options on public build.", v5, 2u);
    MEMORY[0x1C6915360](v5, -1, -1);
  }

  return 0;
}

uint64_t _sSo8ASCAgentC26AuthenticationServicesCoreE26isClientEntitledWebBrowser10connection11testOptionsSbSo15NSXPCConnectionC_AC024ASCCredentialRequestTestL0CSgtFZ_0(void *a1, uint64_t a2)
{
  v4 = sub_1C2170354();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C2170374();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_sSo8ASCAgentC26AuthenticationServicesCoreE29validatePresenceOfTestOptionsySbAC020ASCCredentialRequesthI0CSgFZ_0(a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!a2 || (v14 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isRequesterAWebBrowser, swift_beginAccess(), v15 = *(a2 + v14), v15 == 2))
  {
    [a1 auditToken];
    sub_1C2170384();
    (*(v5 + 104))(v8, *MEMORY[0x1E695AA00], v4);
    v16 = sub_1C2170364();
    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
    if (v16)
    {
      LOBYTE(v15) = 1;
      return v15 & 1;
    }

    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v17 = sub_1C21705A4();
    __swift_project_value_buffer(v17, qword_1EDD4CB08);
    v18 = sub_1C2170584();
    v19 = sub_1C2170C54();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C20AD000, v18, v19, "Client is missing web browser entitlement.", v20, 2u);
      MEMORY[0x1C6915360](v20, -1, -1);
    }

LABEL_11:
    LOBYTE(v15) = 0;
  }

  return v15 & 1;
}

uint64_t _sSo8ASCAgentC26AuthenticationServicesCoreE31isClientTCCAuthorizedWebBrowser10connection11testOptionsSbSo15NSXPCConnectionC_AC024ASCCredentialRequestTestL0CSgtFZ_0(void *a1, uint64_t a2)
{
  if ((_sSo8ASCAgentC26AuthenticationServicesCoreE29validatePresenceOfTestOptionsySbAC020ASCCredentialRequesthI0CSgFZ_0(a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!a2 || (v4 = OBJC_IVAR____TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions_isRequesterAWebBrowser, swift_beginAccess(), v5 = *(a2 + v4), v5 == 2))
  {
    v6 = @"kTCCServiceWebBrowserPublicKeyCredential";
    [a1 auditToken];
    v7 = TCCAccessCheckAuditToken();

    if (v7)
    {
      LOBYTE(v5) = 1;
      return v5 & 1;
    }

    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v8 = sub_1C21705A4();
    __swift_project_value_buffer(v8, qword_1EDD4CB08);
    v9 = sub_1C2170584();
    v10 = sub_1C2170C54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C20AD000, v9, v10, "Client is not authorized via TCC.", v11, 2u);
      MEMORY[0x1C6915360](v11, -1, -1);
    }

LABEL_11:
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C20DDE60(uint64_t a1)
{
  v27[5] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23660, &qword_1C2176D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C20EB3E8(a1, &v23[-v4], &qword_1EBF23660, &qword_1C2176D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23668, &qword_1C2176D18);
  if (!swift_dynamicCast())
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v5 = sub_1C20EB498(v25, &qword_1EBF23670, &unk_1C2176D20);
    v25[0] = xmmword_1C2176980;
    MEMORY[0x1EEE9AC00](v5);
    *&v23[-16] = a1;
    v8 = sub_1C20F9A34(sub_1C20E8208);
    v10 = v9;
    v11 = v6;
    v12 = *(&v25[0] + 1) >> 62;
    if ((*(&v25[0] + 1) >> 62) > 1)
    {
      if (v12 != 2)
      {
        if (!v7)
        {
          goto LABEL_18;
        }

        v17 = 0;
LABEL_30:
        if (v17 < v7)
        {
          goto LABEL_36;
        }

        sub_1C2170104();
LABEL_32:

        goto LABEL_33;
      }

      v14 = *(*&v25[0] + 16);
      v13 = *(*&v25[0] + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_37;
      }

      if (v7 != v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v12)
      {
        if (v7 == BYTE14(v25[0]))
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (__OFSUB__(DWORD1(v25[0]), v25[0]))
      {
        goto LABEL_38;
      }

      if (v7 != DWORD1(v25[0]) - LODWORD(v25[0]))
      {
LABEL_13:
        if (v12 == 2)
        {
          v17 = *(*&v25[0] + 24);
        }

        else if (v12 == 1)
        {
          v17 = *&v25[0] >> 32;
        }

        else
        {
          v17 = BYTE14(v25[0]);
        }

        goto LABEL_30;
      }
    }

LABEL_18:
    memset(v27, 0, 15);
    if (v6)
    {
      LOBYTE(v18) = 0;
      do
      {
        v19 = v8[2];
        if (v10 == v19)
        {
          break;
        }

        if (v10 >= v19)
        {
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

        *(v27 + v18) = *(v8 + v10 + 32);
        v18 = v18 + 1;
        if ((v18 >> 8))
        {
          goto LABEL_35;
        }

        if (v18 == 14)
        {
          *&v24 = v27[0];
          *(&v24 + 6) = *(v27 + 6);
          sub_1C2170114();
          LOBYTE(v18) = 0;
        }

        ++v10;
        --v11;
      }

      while (v11);
      if (v18)
      {
        *&v24 = v27[0];
        *(&v24 + 6) = *(v27 + 6);
        sub_1C2170114();
      }
    }

    goto LABEL_32;
  }

  sub_1C20AFFE8(v25, v27);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1C216FE24();
  v25[0] = v24;
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
LABEL_33:
  v20 = v25[0];
  sub_1C20D865C(*&v25[0], *(&v25[0] + 1));
  sub_1C20EB498(a1, &qword_1EBF23660, &qword_1C2176D10);
  sub_1C20D3174(v20, *(&v20 + 1));
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t sub_1C20DE218(uint64_t a1, unint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v39 = a1;
  v40 = a2;
  *&v35 = a1;
  *(&v35 + 1) = a2;
  sub_1C20D865C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23710, &qword_1C2176D88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23668, &qword_1C2176D18);
  if (swift_dynamicCast())
  {
    sub_1C20AFFE8(v33, &v36);
    __swift_project_boxed_opaque_existential_1(&v36, v38);
    sub_1C216FE24();
    v33[0] = v35;
    __swift_destroy_boxed_opaque_existential_0Tm(&v36);
    goto LABEL_61;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_1C20EB498(v33, &qword_1EBF23670, &unk_1C2176D20);
  v2 = v40 >> 62;
  if ((v40 >> 62) > 1)
  {
    v3 = 0;
    v4 = 0;
    if (v2 == 2)
    {
      v3 = *(v39 + 16);
      v4 = *(v39 + 24);
    }
  }

  else
  {
    if (v2)
    {
      v3 = v39;
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = v39 >> 32;
    }

    else
    {
      v4 = BYTE6(v40);
    }
  }

  v5 = sub_1C20FA9B8(v3, v4, v39, v40);
  *&v33[0] = sub_1C20E7974(v5);
  *(&v33[0] + 1) = v6;
  MEMORY[0x1EEE9AC00](*&v33[0]);
  sub_1C20F9DD8(sub_1C20EB228);
  v7 = *(&v36 + 1);
  v8 = v36;
  v9 = v37;
  v10 = *(&v33[0] + 1) >> 62;
  if ((*(&v33[0] + 1) >> 62) > 1)
  {
    if (v10 == 2)
    {
      v12 = *(*&v33[0] + 16);
      v11 = *(*&v33[0] + 24);
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      if (v13)
      {
        goto LABEL_73;
      }

      if (v38 != v14)
      {
        goto LABEL_22;
      }
    }

    else if (v38)
    {
      v15 = 0;
      goto LABEL_58;
    }

    goto LABEL_27;
  }

  if (v10)
  {
    if (__OFSUB__(DWORD1(v33[0]), v33[0]))
    {
      goto LABEL_74;
    }

    if (v38 != DWORD1(v33[0]) - LODWORD(v33[0]))
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (v38 == BYTE14(v33[0]))
  {
LABEL_27:
    LOBYTE(v16) = 0;
    v17 = *(&v36 + 1) >> 62;
    v31 = v36 >> 32;
    v32 = BYTE14(v36);
    *(&v36 + 7) = 0;
    *&v36 = 0;
    while (1)
    {
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v18 = *(v8 + 16);
LABEL_33:
          if (v9 == v18)
          {
            goto LABEL_62;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v18 = v8;
        if (v17)
        {
          goto LABEL_33;
        }
      }

      if (!v9)
      {
LABEL_62:
        if (v16)
        {
          *&v35 = v36;
          *(&v35 + 6) = *(&v36 + 6);
          sub_1C2170114();
        }

        goto LABEL_60;
      }

LABEL_36:
      v13 = __OFSUB__(v9--, 1);
      if (v13)
      {
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
      }

      if (v17 > 1)
      {
        if (v17 != 2)
        {
          goto LABEL_75;
        }

        if (v9 < *(v8 + 16))
        {
          goto LABEL_66;
        }

        if (v9 >= *(v8 + 24))
        {
          goto LABEL_69;
        }

        v20 = sub_1C216FDD4();
        if (!v20)
        {
          goto LABEL_77;
        }

        v21 = v20;
        v22 = sub_1C216FE04();
        v23 = v9 - v22;
        if (__OFSUB__(v9, v22))
        {
          goto LABEL_71;
        }

        goto LABEL_52;
      }

      if (v17)
      {
        if (v9 < v8 || v9 >= v31)
        {
          goto LABEL_68;
        }

        v24 = sub_1C216FDD4();
        if (!v24)
        {
          goto LABEL_76;
        }

        v21 = v24;
        v25 = sub_1C216FE04();
        v23 = v9 - v25;
        if (__OFSUB__(v9, v25))
        {
          goto LABEL_70;
        }

LABEL_52:
        v19 = *(v21 + v23);
        goto LABEL_53;
      }

      if (v9 >= v32)
      {
        goto LABEL_67;
      }

      *&v35 = v8;
      WORD4(v35) = v7;
      BYTE10(v35) = BYTE2(v7);
      BYTE11(v35) = BYTE3(v7);
      BYTE12(v35) = BYTE4(v7);
      BYTE13(v35) = BYTE5(v7);
      v19 = *(&v35 + v9);
LABEL_53:
      *(&v36 + v16) = v19;
      v16 = v16 + 1;
      if ((v16 >> 8))
      {
        goto LABEL_65;
      }

      if (v16 == 14)
      {
        *&v35 = v36;
        *(&v35 + 6) = *(&v36 + 6);
        sub_1C2170114();
        LOBYTE(v16) = 0;
      }
    }
  }

LABEL_22:
  if (v10 == 2)
  {
    v15 = *(*&v33[0] + 24);
  }

  else if (v10 == 1)
  {
    v15 = *&v33[0] >> 32;
  }

  else
  {
    v15 = BYTE14(v33[0]);
  }

LABEL_58:
  if (v15 < v38)
  {
    goto LABEL_72;
  }

  sub_1C2170104();
LABEL_60:
  sub_1C20D3174(v8, v7);
LABEL_61:
  v26 = v33[0];
  v27 = v39;
  v28 = v40;
  sub_1C20D865C(*&v33[0], *(&v33[0] + 1));
  sub_1C20D3174(v27, v28);
  sub_1C20D3174(v26, *(&v26 + 1));
  v29 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t sub_1C20DE7C0()
{
  result = sub_1C20E7898(&unk_1F419CD40);
  qword_1EBF23520 = result;
  *algn_1EBF23528 = v1;
  return result;
}

uint64_t sub_1C20DE828()
{
  v2 = *v0;
  sub_1C2171434();
  sub_1C2170894();
  return sub_1C2171454();
}

uint64_t sub_1C20DE88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C20EB1D4();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

unint64_t sub_1C20DE8D8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C20E7A14(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C20DE90C(uint64_t a1)
{
  v2 = sub_1C20EB1D4();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1C20DE948(uint64_t a1)
{
  v2 = sub_1C20EB1D4();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1C20DE9A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C20EB1D4();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

uint64_t ASCABLEAuthenticator.__allocating_init(caBLEURL:)(uint64_t a1)
{
  v3 = sub_1C2170024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = [objc_allocWithZone(MEMORY[0x1E695D250]) init];
  v10 = objc_allocWithZone(type metadata accessor for ASCABLEAuthenticator());
  sub_1C20E0E34(v7, v9);
  v12 = v11;
  (*(v4 + 8))(a1, v3);
  swift_getObjectType();
  v13 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x30);
  v14 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x34);
  swift_deallocPartialClassInstance();
  return v12;
}

uint64_t ASCABLEAuthenticator.init(caBLEURL:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C2170024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = [objc_allocWithZone(MEMORY[0x1E695D250]) init];
  v10 = objc_allocWithZone(type metadata accessor for ASCABLEAuthenticator());
  sub_1C20E0E34(v8, v9);
  v12 = v11;
  (*(v5 + 8))(a1, v4);
  swift_getObjectType();
  v13 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
  v14 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v12;
}

id sub_1C20DEF88(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler + 8);
  *v3 = a1;
  v3[1] = a2;

  sub_1C20B0080(v4);
  sub_1C20E19CC(0);
  v6 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_powerLogger);

  return [v6 logAuthenticationStartedEventIfNeeded];
}

void sub_1C20DF0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1C216FF84();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1C20DF13C()
{
  v1 = v0;
  v2 = sub_1C2170CA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1C20E7898(&unk_1F419CEE0);
  v9 = v8;
  v10 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_cryptographyManager);
  v11 = sub_1C20F8530(v7, v8, 1);
  v13 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket);
  if (v13)
  {
    v14 = *&v13[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask];
    *v6 = v11;
    v6[1] = v12;
    v15 = v11;
    v16 = v12;
    (*(v3 + 104))(v6, *MEMORY[0x1E6969F28], v2);
    *(swift_allocObject() + 16) = v13;
    v17 = v13;
    sub_1C20D865C(v15, v16);
    sub_1C2170C94();

    sub_1C20D3174(v15, v16);
    sub_1C20D3174(v7, v9);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v18 = v11;
    v19 = v12;
    sub_1C20D3174(v7, v9);

    sub_1C20D3174(v18, v19);
  }
}

id sub_1C20DF4F8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1C2170CA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v116 = v9;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
      objc_opt_self();
      v42 = swift_dynamicCastObjCClass();
      if (v42)
      {
        v43 = v42;
        swift_unknownObjectRetain_n();
        sub_1C2143680(v43, &v165);
        result = get_enum_tag_for_layout_string_26AuthenticationServicesCore35ASCTAPPublicKeyCredentialDescriptorVSg_0(&v165);
        if (result == 1)
        {
          __break(1u);
          goto LABEL_54;
        }

        *v182 = v171;
        *&v182[2] = v172[0];
        *(&v182[3] + 1) = *(v172 + 9);
        v179 = v167;
        v180 = v168;
        v181[1] = v170;
        v181[0] = v169;
        v178 = v166;
        v177 = v165;
        sub_1C20E0600(0, &v177, &v132);
        v125 = v140;
        v126 = v141;
        LOBYTE(v127) = v142;
        v121 = v136;
        v122 = v137;
        v123 = v138;
        v124 = v139;
        v117 = v132;
        v118 = v133;
        v119 = v134;
        v120 = v135;
        v45 = *(&v132 + 1);
        v46 = v133;
        sub_1C20D865C(*(&v132 + 1), v133);
        sub_1C20EB498(&v117, &qword_1EBF23540, &qword_1C21769F0);
      }

      else
      {
        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        if (!v52)
        {
          v84 = qword_1EDD4A728;
          swift_unknownObjectRetain();
          if (v84 != -1)
          {
            swift_once();
          }

          v85 = sub_1C21705A4();
          __swift_project_value_buffer(v85, qword_1EDD4CB08);
          swift_unknownObjectRetain();
          v86 = sub_1C2170584();
          v87 = sub_1C2170C54();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            *&v132 = v89;
            *v88 = 136315138;
            swift_getObjectType();
            v90 = sub_1C21714E4();
            v92 = sub_1C20D7F2C(v90, v91, &v132);

            *(v88 + 4) = v92;
            _os_log_impl(&dword_1C20AD000, v86, v87, "Received credential with unexpected type: %s", v88, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v89);
            MEMORY[0x1C6915360](v89, -1, -1);
            MEMORY[0x1C6915360](v88, -1, -1);
          }

          sub_1C20E6774(7);

          return swift_unknownObjectRelease();
        }

        v53 = v52;
        swift_unknownObjectRetain();
        v54 = [v53 commandResponseData];
        v45 = sub_1C2170174();
        v56 = v55;

        v46 = v56 | 0x2000000000000000;
      }

LABEL_38:
      v74 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_cryptographyManager);
      v75 = sub_1C20F8530(v45, v46, 1);
      v77 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket);
      if (v77)
      {
        v115 = *&v77[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask];
        *v11 = v75;
        v11[1] = v76;
        v78 = *MEMORY[0x1E6969F28];
        v79 = *(v7 + 104);
        v80 = v75;
        v114 = v75;
        *&v112 = v76;
        v79(v11, v78, v116);
        *(swift_allocObject() + 16) = v77;
        v113 = v77;
        v81 = v112;
        sub_1C20D865C(v80, v112);
        sub_1C2170C94();

        (*(v7 + 8))(v11, v116);
        [*(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_powerLogger) logAuthenticationFinishedEventIfNeeded];
        sub_1C20E7A78(v45, v46);

        v82 = v114;
        v83 = v81;
      }

      else
      {
        v93 = v75;
        v94 = v76;
        if (qword_1EDD4A728 != -1)
        {
          swift_once();
        }

        v95 = sub_1C21705A4();
        __swift_project_value_buffer(v95, qword_1EDD4CB08);
        v96 = sub_1C2170584();
        v97 = sub_1C2170C54();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&dword_1C20AD000, v96, v97, "Could not send ctap response without a valid socket", v98, 2u);
          MEMORY[0x1C6915360](v98, -1, -1);
        }

        sub_1C20E6774(0);
        sub_1C20E7A78(v45, v46);
        v82 = v93;
        v83 = v94;
      }

      sub_1C20D3174(v82, v83);
      return swift_unknownObjectRelease();
    }

    v13 = v12;
    v14 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 176);
    v15 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 144);
    v162 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 160);
    v163 = v14;
    v16 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 176);
    v164[0] = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 192);
    *(v164 + 9) = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 201);
    v17 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 112);
    v18 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 80);
    v158 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 96);
    v159 = v17;
    v19 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 112);
    v20 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 144);
    v160 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 128);
    v161 = v20;
    v21 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 48);
    v22 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 16);
    v154 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 32);
    v155 = v21;
    v23 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 48);
    v24 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 80);
    v156 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 64);
    v157 = v24;
    v25 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 16);
    v153[0] = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand);
    v153[1] = v25;
    v174 = v162;
    v175 = v16;
    v176[0] = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 192);
    *(v176 + 9) = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand + 201);
    v171 = v158;
    v172[0] = v19;
    v172[1] = v160;
    v173 = v15;
    v167 = v154;
    v168 = v23;
    v169 = v156;
    v170 = v18;
    v165 = v153[0];
    v166 = v22;
    if (sub_1C20E7AA8(&v165) != 1)
    {
      v151[10] = v174;
      v151[11] = v175;
      v152[0] = v176[0];
      *(v152 + 9) = *(v176 + 9);
      v151[6] = v171;
      v151[7] = v172[0];
      v151[8] = v172[1];
      v151[9] = v173;
      v151[2] = v167;
      v151[3] = v168;
      v151[4] = v169;
      v151[5] = v170;
      v151[0] = v165;
      v151[1] = v166;
      if (sub_1C20E7ABC(v151) == 1)
      {
        v26 = *(nullsub_1(v151) + 32);
        v27 = 1;
        if (v26)
        {
          if (*(v26 + 16))
          {
            v27 = 2;
          }

          else
          {
            v27 = 1;
          }
        }

        LODWORD(v115) = v27;
        if (*(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_usedMagicCredentialID) == 1)
        {
          v28 = objc_opt_self();
          swift_unknownObjectRetain_n();
          sub_1C20EB3E8(v153, &v132, &qword_1EBF23558, &qword_1C21769F8);
          v29 = [v28 magicCredentialID];
          v30 = sub_1C2170174();
          v32 = v31;
        }

        else
        {
          swift_unknownObjectRetain_n();
          sub_1C20EB3E8(v153, &v132, &qword_1EBF23558, &qword_1C21769F8);
          v30 = 0;
          v32 = 0xF000000000000000;
        }

        swift_unknownObjectRetain();
        v58 = [v13 extensions];
        if (v58)
        {
          v59 = v58;
          sub_1C2168CF0(&v132);

          v112 = v132;
          v107 = v135;
          v108 = v134;
          v109 = v133;
          v113 = *(&v136 + 1);
          v114 = v136;
          v111 = v137;
          v110 = BYTE8(v137);
        }

        else
        {
          v113 = 0;
          v114 = 0;
          v111 = 0;
          v112 = 0u;
          v110 = 3;
          v108 = 0u;
          v109 = 0u;
          v107 = 0u;
        }

        v100 = v7;
        v60 = v30;
        v61 = v32;
        if (v32 >> 60 == 15)
        {
          v62 = [v13 credentialID];
          v60 = sub_1C2170174();
          v61 = v63;
        }

        v105 = v61;
        v106 = v60;
        sub_1C20B22B8(v30, v32);
        v64 = [v13 authenticatorData];
        v65 = sub_1C2170174();
        v103 = v66;
        v104 = v65;
        v67 = [v13 signature];
        v101 = sub_1C2170174();
        v102 = v68;
        result = [v13 userHandle];
        if (result)
        {
          v69 = v30;
          v70 = result;

          v71 = sub_1C2170174();
          v73 = v72;

          sub_1C20B23C8(v69, v32);
          swift_unknownObjectRelease();
          v150 = 1;
          sub_1C20E7AC4(0, 0, 0, 0);
          sub_1C20E7B24(0, 0, 0, 0);
          v148 = 0;
          memset(v147, 0, sizeof(v147));
          v149 = 3;
          sub_1C20EB498(v147, &qword_1EBF23560, &unk_1C2176A00);
          v177 = xmmword_1C2176990;
          *&v178 = v106;
          *(&v178 + 1) = v105;
          *&v179 = 0;
          *(&v179 + 1) = v104;
          *&v180 = v103;
          *(&v180 + 1) = v101;
          *(v181 + 8) = xmmword_1C21769A0;
          *&v181[0] = v102;
          *(&v181[1] + 1) = v71;
          *&v182[1] = xmmword_1C21769A0;
          v182[0] = v73;
          v182[3] = 0;
          LOBYTE(v182[4]) = 1;
          BYTE1(v182[4]) = v115;
          *&v182[7] = v109;
          *&v182[5] = v112;
          *&v182[11] = v107;
          *&v182[9] = v108;
          v182[13] = v114;
          v182[14] = v113;
          v182[15] = v111;
          v183 = v110;
          sub_1C20E03E0(0, &v177, &v132);
          swift_unknownObjectRelease();
          sub_1C20EB498(v153, &qword_1EBF23558, &qword_1C21769F8);
          v129 = v144;
          v130 = v145;
          v131[0] = v146[0];
          *(v131 + 9) = *(v146 + 9);
          v125 = v140;
          v126 = v141;
          v127 = v142;
          v128 = v143;
          v121 = v136;
          v122 = v137;
          v123 = v138;
          v124 = v139;
          v117 = v132;
          v118 = v133;
          v119 = v134;
          v120 = v135;
          v45 = *(&v132 + 1);
          v46 = v133;
          sub_1C20D865C(*(&v132 + 1), v133);
          sub_1C20EB498(&v117, &qword_1EBF23568, &qword_1C21771F0);
          v7 = v100;
          goto LABEL_38;
        }

LABEL_54:
        __break(1u);
        return result;
      }

      nullsub_1(v151);
    }

    v47 = qword_1EDD4A728;
    swift_unknownObjectRetain_n();
    if (v47 != -1)
    {
      swift_once();
    }

    v48 = sub_1C21705A4();
    __swift_project_value_buffer(v48, qword_1EDD4CB08);
    v49 = sub_1C2170584();
    v50 = sub_1C2170C54();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1C20AD000, v49, v50, "Received getAssertion response to non-getAssertion command", v51, 2u);
      MEMORY[0x1C6915360](v51, -1, -1);
    }

    sub_1C20E6774(0);
    return swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v33 = sub_1C21705A4();
    __swift_project_value_buffer(v33, qword_1EDD4CB08);
    v34 = a2;
    v35 = sub_1C2170584();
    v36 = sub_1C2170C54();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v132 = v38;
      *v37 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v39 = sub_1C21713D4();
        v41 = v40;
      }

      else
      {
        v41 = 0xE500000000000000;
        v39 = 0x3E6C696E3CLL;
      }

      v57 = sub_1C20D7F2C(v39, v41, &v132);

      *(v37 + 4) = v57;
      _os_log_impl(&dword_1C20AD000, v35, v36, "Transaction failed: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x1C6915360](v38, -1, -1);
      MEMORY[0x1C6915360](v37, -1, -1);
    }

    return sub_1C20E6774(7);
  }
}

uint64_t sub_1C20E03E0@<X0>(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[13];
  v61 = a2[12];
  v62 = v6;
  v63 = *(a2 + 224);
  v7 = a2[9];
  v57 = a2[8];
  v58 = v7;
  v8 = a2[11];
  v59 = a2[10];
  v60 = v8;
  v9 = a2[5];
  v53 = a2[4];
  v54 = v9;
  v10 = a2[7];
  v55 = a2[6];
  v56 = v10;
  v11 = a2[1];
  v49 = *a2;
  v50 = v11;
  v12 = a2[3];
  v51 = a2[2];
  v52 = v12;
  v13 = sub_1C21460AC();
  if (v3)
  {
    v46 = v61;
    v47 = v62;
    v48 = v63;
    v42 = v57;
    v43 = v58;
    v44 = v59;
    v45 = v60;
    v38 = v53;
    v39 = v54;
    v40 = v55;
    v41 = v56;
    v34 = v49;
    v35 = v50;
    v36 = v51;
    v37 = v52;
    return sub_1C20EB2F0(&v34);
  }

  else
  {
    v16 = v13;
    v17 = v14;
    v18 = 0x7F2F2219050100uLL >> (8 * a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C21768E0;
    *(v19 + 32) = v18;
    v20 = sub_1C20E7898(v19);
    v22 = v21;

    *&v33 = v20;
    *(&v33 + 1) = v22;
    *(&v35 + 1) = MEMORY[0x1E6969080];
    *&v36 = MEMORY[0x1E6969078];
    *&v34 = v16;
    *(&v34 + 1) = v17;
    v23 = __swift_project_boxed_opaque_existential_1(&v34, MEMORY[0x1E6969080]);
    v24 = *v23;
    v25 = v23[1];
    sub_1C20D865C(v20, v22);
    sub_1C2106434(v24, v25);
    sub_1C20D3174(v20, v22);
    result = __swift_destroy_boxed_opaque_existential_0Tm(&v34);
    *(a3 + 8) = v33;
    v26 = v59;
    *(a3 + 200) = v60;
    v27 = v62;
    *(a3 + 216) = v61;
    *(a3 + 232) = v27;
    v28 = v55;
    *(a3 + 136) = v56;
    v29 = v58;
    *(a3 + 152) = v57;
    *(a3 + 168) = v29;
    *(a3 + 184) = v26;
    v30 = v51;
    *(a3 + 72) = v52;
    v31 = v54;
    *(a3 + 88) = v53;
    *(a3 + 104) = v31;
    *(a3 + 120) = v28;
    v32 = v50;
    *(a3 + 24) = v49;
    *(a3 + 40) = v32;
    *a3 = v18;
    *(a3 + 248) = v63;
    *(a3 + 56) = v30;
  }

  return result;
}

uint64_t sub_1C20E0600@<X0>(char a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[7];
  v42 = a2[6];
  v43[0] = v6;
  *(v43 + 9) = *(a2 + 121);
  v7 = a2[3];
  v38 = a2[2];
  v39 = v7;
  v8 = a2[5];
  v40 = a2[4];
  v41 = v8;
  v9 = a2[1];
  v36 = *a2;
  v37 = v9;
  sub_1C2144918();
  if (v3)
  {
    v34 = v42;
    v35[0] = v43[0];
    *(v35 + 9) = *(v43 + 9);
    v30 = v38;
    v31 = v39;
    v32 = v40;
    v33 = v41;
    v28 = v36;
    v29 = v37;
    return sub_1C20EB344(&v28);
  }

  else
  {
    v13 = v10;
    v14 = v11;
    v15 = 0x7F2F2219050100uLL >> (8 * a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF232F0, &unk_1C2176950);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C21768E0;
    *(v16 + 32) = v15;
    v17 = sub_1C20E7898(v16);
    v19 = v18;

    *&v27 = v17;
    *(&v27 + 1) = v19;
    *(&v29 + 1) = MEMORY[0x1E6969080];
    *&v30 = MEMORY[0x1E6969078];
    *&v28 = v13;
    *(&v28 + 1) = v14;
    v20 = __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x1E6969080]);
    v21 = *v20;
    v22 = v20[1];
    sub_1C20D865C(v17, v19);
    sub_1C2106434(v21, v22);
    sub_1C20D3174(v17, v19);
    result = __swift_destroy_boxed_opaque_existential_0Tm(&v28);
    *(a3 + 8) = v27;
    v23 = v40;
    *(a3 + 104) = v41;
    v24 = v43[0];
    *(a3 + 120) = v42;
    *(a3 + 136) = v24;
    *(a3 + 145) = *(v43 + 9);
    v25 = v36;
    *(a3 + 40) = v37;
    v26 = v39;
    *(a3 + 56) = v38;
    *(a3 + 72) = v26;
    *(a3 + 88) = v23;
    *a3 = v15;
    *(a3 + 24) = v25;
  }

  return result;
}

uint64_t sub_1C20E0858()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C20E093C()
{
  *v0;
  *v0;
  *v0;
  sub_1C21709B4();
}

uint64_t sub_1C20E0A0C()
{
  v1 = *v0;
  sub_1C2171434();
  sub_1C21709B4();

  return sub_1C2171454();
}

uint64_t sub_1C20E0AEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C20E81BC();
  *a2 = result;
  return result;
}

void sub_1C20E0B1C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  v5 = 0xD000000000000015;
  v6 = 0x80000001C21842D0;
  v7 = 0x80000001C21842F0;
  v8 = 0xD00000000000001ALL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x80000001C2184310;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001C21842B0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1C20E0CBC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C20E0D1C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C20E0DB4;
}

void sub_1C20E0DB4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_1C20E0E34(uint64_t a1, void *a2)
{
  v104 = a2;
  v3 = v2;
  v106 = sub_1C2170024();
  v116 = *(v106 - 8);
  v5 = v116[8];
  MEMORY[0x1EEE9AC00](v106);
  v7 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_delegate;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_advertisement;
  v9 = type metadata accessor for ASCABLEAdvertisement();
  v10 = *(*(v9 - 8) + 56);
  v101 = v8;
  v10(&v3[v8], 1, 1, v9);
  v100 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket;
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket] = 0;
  v11 = *MEMORY[0x1E698CF20];
  v12 = *MEMORY[0x1E698CF08];
  v13 = sub_1C20DB8B8(0, &qword_1EBF23780, 0x1E69E9610);
  v14 = v11;
  v15 = v12;
  v95[2] = v13;
  v16 = sub_1C2170C84();
  v17 = [objc_allocWithZone(MEMORY[0x1E698CF30]) initWithEnvironmentName:v14 namedDelegatePort:v15 queue:v16];

  if (!v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v97 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_apsConnection;
  *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_apsConnection] = v17;
  v18 = &v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler];
  *v18 = 0;
  v18[1] = 0;
  v98 = v18;
  v19 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_powerLogger;
  v20 = [objc_allocWithZone(_ASCABLEPowerLogger) init];
  v99 = v19;
  *&v3[v19] = v20;
  v21 = &v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentCTAPCommand];
  sub_1C20EB628(v114);
  v22 = v114[11];
  v21[10] = v114[10];
  v21[11] = v22;
  v21[12] = v115[0];
  *(v21 + 201) = *(v115 + 9);
  v23 = v114[7];
  v21[6] = v114[6];
  v21[7] = v23;
  v24 = v114[9];
  v21[8] = v114[8];
  v21[9] = v24;
  v25 = v114[3];
  v21[2] = v114[2];
  v21[3] = v25;
  v26 = v114[5];
  v21[4] = v114[4];
  v21[5] = v26;
  v27 = v114[1];
  *v21 = v114[0];
  v21[1] = v27;
  v28 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_networkPathMonitor;
  v29 = sub_1C21706B4();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_1C21706A4();
  v96 = v28;
  *&v3[v28] = v32;
  v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_usedMagicCredentialID] = 0;
  v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState] = 0;
  v33 = v116[2];
  v105 = a1;
  v33(v7, a1, v106);
  v34 = sub_1C216FFF4();
  v36 = sub_1C212C9F8(1uLL, v34, v35);
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v43 = sub_1C20FD904(v36, v38, v40, v42);
  v45 = v44;

  if (v45 >> 60 != 15)
  {
    v48 = sub_1C21702A4();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    sub_1C2170294();
    sub_1C20EB6AC();
    v51 = v103;
    sub_1C2170274();
    v46 = v51;
    v52 = (v116 + 1);
    if (v51)
    {
      v53 = v7;
      v54 = v106;
      v103 = *v52;
      v103(v53, v106);
      v55 = v43;
      v47 = v54;
      sub_1C20B23C8(v55, v45);

      goto LABEL_7;
    }

    v103 = *v52;
    v95[1] = v116 + 1;
    v103(v7, v106);
    sub_1C20B23C8(v43, v45);

    v108[0] = v110;
    v108[1] = v111;
    v109[0] = v112[0];
    *(v109 + 15) = *(v112 + 15);
    v78 = sub_1C20FAFA8(v111, *(&v111 + 1), v110, *(&v110 + 1));
    sub_1C20EB700(v108);
    *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_cryptographyManager] = v78;
    v79 = v104;
    *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_bluetoothAdvertiser] = v104;
    v80 = objc_allocWithZone(type metadata accessor for ASCABLEAuthenticator.APSWrapper());
    v81 = v79;
    v82 = [v80 init];
    *&v3[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_apsWrapper] = v82;
    v83 = type metadata accessor for ASCABLEAuthenticator();
    v107.receiver = v3;
    v107.super_class = v83;
    v84 = objc_msgSendSuper2(&v107, sel_init);
    v85 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_apsWrapper;
    if (*&v84[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_apsWrapper])
    {
      v86 = v84;
      swift_unknownObjectWeakAssign();
      v87 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_apsConnection;
      v88 = *&v86[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_apsConnection];
      v89 = *&v86[v85];
      v90 = v86;
      [v88 setDelegate_];
      v91 = *&v86[v87];
      v92 = sub_1C2170B54();
      [v91 _setEnabledTopics_];

      v93 = *&v90[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_networkPathMonitor];

      v94 = sub_1C2170C84();
      sub_1C2170694();

      v103(v105, v106);
      return;
    }

LABEL_15:
    __break(1u);
    return;
  }

  sub_1C20EB658();
  v46 = swift_allocError();
  swift_willThrow();
  v47 = v106;
  v103 = v116[1];
  v103(v7, v106);
LABEL_7:
  v56 = v105;
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v57 = sub_1C21705A4();
  __swift_project_value_buffer(v57, qword_1EDD4CB08);
  v58 = v46;
  v59 = sub_1C2170584();
  v60 = sub_1C2170C54();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = v47;
    v63 = swift_slowAlloc();
    *v61 = 138412290;
    v64 = sub_1C216FF84();
    *(v61 + 4) = v64;
    *v63 = v64;
    _os_log_impl(&dword_1C20AD000, v59, v60, "Could not decode caBLE url: %@", v61, 0xCu);
    sub_1C20EB498(v63, &qword_1EBF23700, &qword_1C2176D80);
    v65 = v63;
    v47 = v62;
    MEMORY[0x1C6915360](v65, -1, -1);
    v66 = v61;
    v56 = v105;
    MEMORY[0x1C6915360](v66, -1, -1);
  }

  sub_1C20E7CE8();
  swift_allocError();
  *v67 = 2;
  swift_willThrow();

  v103(v56, v47);
  sub_1C20EB1AC(&v3[v102]);
  sub_1C20EB498(&v3[v101], &qword_1EBF23680, &qword_1C2176D30);

  v68 = v98[1];
  sub_1C20B0080(*v98);

  v69 = v21[11];
  v112[8] = v21[10];
  v112[9] = v69;
  v113[0] = v21[12];
  *(v113 + 9) = *(v21 + 201);
  v70 = v21[7];
  v112[4] = v21[6];
  v112[5] = v70;
  v71 = v21[9];
  v112[6] = v21[8];
  v112[7] = v71;
  v72 = v21[3];
  v112[0] = v21[2];
  v112[1] = v72;
  v73 = v21[5];
  v112[2] = v21[4];
  v112[3] = v73;
  v74 = v21[1];
  v110 = *v21;
  v111 = v74;
  sub_1C20EB498(&v110, &qword_1EBF23558, &qword_1C21769F8);
  v75 = *&v3[v96];

  type metadata accessor for ASCABLEAuthenticator();
  v76 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
  v77 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
}

void sub_1C20E1718(unsigned __int8 a1)
{
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v3 = sub_1C21705A4();
  __swift_project_value_buffer(v3, qword_1EDD4CB08);
  v4 = v1;
  oslog = sub_1C2170584();
  v5 = sub_1C2170C34();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = 1701602409;
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v7 = 136315394;
    v8 = 0xE400000000000000;
    v9 = 0x80000001C21842D0;
    v10 = 0x80000001C21842F0;
    v11 = 0xD00000000000001ALL;
    if (a1 != 3)
    {
      v11 = 0xD000000000000015;
      v10 = 0x80000001C2184310;
    }

    if (a1 == 2)
    {
      v11 = 0xD000000000000015;
    }

    else
    {
      v9 = v10;
    }

    if (a1)
    {
      v12 = 0xD000000000000010;
    }

    else
    {
      v12 = 1701602409;
    }

    if (a1)
    {
      v8 = 0x80000001C21842B0;
    }

    if (a1 <= 1u)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    if (a1 <= 1u)
    {
      v14 = v8;
    }

    else
    {
      v14 = v9;
    }

    v15 = sub_1C20D7F2C(v13, v14, &v22);

    *(v7 + 4) = v15;
    *(v7 + 12) = 2080;
    v16 = v4[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState];
    if (v16 <= 1)
    {
      if (v4[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState])
      {
        v18 = 0x80000001C21842B0;
        v6 = 0xD000000000000010;
      }

      else
      {
        v18 = 0xE400000000000000;
      }
    }

    else
    {
      if (v16 != 2)
      {
        v17 = v20;
        if (v16 == 3)
        {
          v18 = 0x80000001C21842F0;
          v6 = 0xD00000000000001ALL;
        }

        else
        {
          v18 = 0x80000001C2184310;
          v6 = 0xD000000000000015;
        }

        goto LABEL_30;
      }

      v18 = 0x80000001C21842D0;
      v6 = 0xD000000000000015;
    }

    v17 = v20;
LABEL_30:
    v19 = sub_1C20D7F2C(v6, v18, &v22);

    *(v7 + 14) = v19;
    _os_log_impl(&dword_1C20AD000, oslog, v5, "Changing caBLE authenticator state from %s to %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6915360](v17, -1, -1);
    MEMORY[0x1C6915360](v7, -1, -1);
  }
}

void sub_1C20E19CC(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23760, &qword_1C2176DC8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v79 = &v77 - v5;
  v80 = type metadata accessor for CableRequest.AllocationRequest(0);
  v6 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C2170764();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CableRequest(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v77 - v19;
  v21 = *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState);
  *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState) = 1;
  sub_1C20E1718(v21);
  v81 = v1;
  (*(v10 + 16))(v13, *(v1 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_cryptographyManager) + OBJC_IVAR____TtC26AuthenticationServicesCore26ASCABLECryptographyManager_tunnelID, v9);
  sub_1C2170734();
  (*(v10 + 8))(v13, v9);
  v22 = aBlock;
  v23 = v83;
  sub_1C2164014(aBlock, v83, a1, v20);
  sub_1C20D3174(v22, v23);
  sub_1C20EB450(&qword_1EBF23768, type metadata accessor for CableRequest);
  v24 = sub_1C21704A4();
  v25 = v18;
  v78 = v20;
  v26 = v8;
  v27 = v24;
  v29 = v28;
  v30 = objc_allocWithZone(MEMORY[0x1E699BEA0]);
  v31 = sub_1C21708F4();
  v32 = sub_1C2170154();
  sub_1C20D3174(v27, v29);
  v33 = [v30 initWithPushTopic:v31 protoData:v32];

  if (v33)
  {
    v34 = [objc_opt_self() sharedInstance];
    if (v34)
    {
      v35 = v34;
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v86 = sub_1C20EB3E0;
      v87 = v36;
      aBlock = MEMORY[0x1E69E9820];
      v83 = 1107296256;
      v84 = sub_1C20E25A4;
      v85 = &block_descriptor_77;
      v37 = _Block_copy(&aBlock);
      v38 = v33;

      [v38 setCompletionBlock_];
      _Block_release(v37);
      if (qword_1EDD4A728 != -1)
      {
        swift_once();
      }

      v39 = sub_1C21705A4();
      __swift_project_value_buffer(v39, qword_1EDD4CB08);
      v40 = v78;
      v41 = v25;
      sub_1C20EB560(v78, v25, type metadata accessor for CableRequest);
      v42 = sub_1C2170584();
      v43 = sub_1C2170C74();
      if (!os_log_type_enabled(v42, v43))
      {

        sub_1C20EB5C8(v25, type metadata accessor for CableRequest);
LABEL_31:
        [v35 sendMessage_];

        sub_1C20EB5C8(v40, type metadata accessor for CableRequest);
        return;
      }

      LODWORD(v81) = v43;
      v44 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock = v77;
      *v44 = 136315138;
      v45 = v79;
      sub_1C20EB3E8(v25, v79, &qword_1EBF23760, &qword_1C2176DC8);
      v46 = type metadata accessor for CableRequest.OneOf_Request(0);
      if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
      {
        sub_1C20EB498(v45, &qword_1EBF23760, &qword_1C2176DC8);
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v67 = v26;
          sub_1C20EB4F8(v45, v26, type metadata accessor for CableRequest.AllocationRequest);
          v68 = v80;
          goto LABEL_28;
        }

        sub_1C20EB5C8(v45, type metadata accessor for CableRequest.OneOf_Request);
      }

      v67 = v26;
      sub_1C21703A4();
      v68 = v80;
      *(v67 + *(v80 + 20)) = xmmword_1C21769B0;
      *(v67 + *(v68 + 24)) = 2;
LABEL_28:
      v69 = (v67 + *(v68 + 20));
      v70 = *v69;
      v71 = v69[1];
      sub_1C20B22B8(*v69, v71);
      sub_1C20EB5C8(v67, type metadata accessor for CableRequest.AllocationRequest);
      if (v71 >> 60 == 15)
      {
        v70 = 0;
        v71 = 0xC000000000000000;
      }

      v72 = sub_1C2170084();
      v74 = v73;
      sub_1C20D3174(v70, v71);
      sub_1C20EB5C8(v41, type metadata accessor for CableRequest);
      v75 = sub_1C20D7F2C(v72, v74, &aBlock);

      *(v44 + 4) = v75;
      _os_log_impl(&dword_1C20AD000, v42, v81, "Requesting server allocation with tunnelID %s", v44, 0xCu);
      v76 = v77;
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      MEMORY[0x1C6915360](v76, -1, -1);
      MEMORY[0x1C6915360](v44, -1, -1);

      v40 = v78;
      goto LABEL_31;
    }

    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v53 = sub_1C21705A4();
    __swift_project_value_buffer(v53, qword_1EDD4CB08);
    v54 = sub_1C2170584();
    v55 = sub_1C2170C54();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1C20AD000, v54, v55, "Could not retrieve shared FTMessageDelivery_APS", v56, 2u);
      MEMORY[0x1C6915360](v56, -1, -1);
    }

    sub_1C20E7CE8();
    v51 = swift_allocError();
    *v57 = 1;
    swift_willThrow();
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v47 = sub_1C21705A4();
    __swift_project_value_buffer(v47, qword_1EDD4CB08);
    v48 = sub_1C2170584();
    v49 = sub_1C2170C54();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1C20AD000, v48, v49, "Could not encode protobuf message", v50, 2u);
      MEMORY[0x1C6915360](v50, -1, -1);
    }

    sub_1C20E7CE8();
    v51 = swift_allocError();
    *v52 = 1;
    swift_willThrow();
  }

  sub_1C20EB5C8(v78, type metadata accessor for CableRequest);
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v58 = sub_1C21705A4();
  __swift_project_value_buffer(v58, qword_1EDD4CB08);
  v59 = v51;
  v60 = sub_1C2170584();
  v61 = sub_1C2170C54();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock = v63;
    *v62 = 136315138;
    swift_getErrorValue();
    v64 = sub_1C21713D4();
    v66 = sub_1C20D7F2C(v64, v65, &aBlock);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_1C20AD000, v60, v61, "Could not encode allocation request: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v63);
    MEMORY[0x1C6915360](v63, -1, -1);
    MEMORY[0x1C6915360](v62, -1, -1);
  }

  sub_1C20E6774(3);
}

void sub_1C20E247C(void *a1, char *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1C20E8D60(a1, a2, a3);
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v8 = sub_1C21705A4();
    __swift_project_value_buffer(v8, qword_1EDD4CB08);
    v7 = sub_1C2170584();
    v9 = sub_1C2170C74();
    if (os_log_type_enabled(v7, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C20AD000, v7, v9, "caBLE authenticator was deinitialized while waiting for allocate server response", v10, 2u);
      MEMORY[0x1C6915360](v10, -1, -1);
    }
  }
}

uint64_t sub_1C20E25A4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a5)
  {
    v10 = sub_1C2170864();
  }

  else
  {
    v10 = 0;
  }

  v11 = a2;
  v12 = a3;
  v9(a2, a3, a4, v10);
}

uint64_t sub_1C20E2670(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v57 = a3;
  v55 = a1;
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23680, &qword_1C2176D30);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - v9;
  v11 = type metadata accessor for ASCABLEAdvertisement();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C2170784();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = sub_1C2170764();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v22 = sub_1C21705A4();
  __swift_project_value_buffer(v22, qword_1EDD4CB08);
  v23 = sub_1C2170584();
  v24 = sub_1C2170C34();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v52 = v10;
    v26 = v17;
    v27 = v12;
    v28 = v11;
    v29 = v4;
    v30 = v25;
    *v25 = 0;
    _os_log_impl(&dword_1C20AD000, v23, v24, "Starting Bluetooth advertisement", v25, 2u);
    v31 = v30;
    v4 = v29;
    v11 = v28;
    v12 = v27;
    v17 = v26;
    v10 = v52;
    MEMORY[0x1C6915360](v31, -1, -1);
  }

  sub_1C2170774();
  sub_1C2170754();
  sub_1C2170734();
  (*(v18 + 8))(v21, v17);
  v33 = aBlock;
  v32 = v59;
  sub_1C20D865C(aBlock, v59);
  v35 = v55;
  v34 = v56;
  sub_1C20D865C(v55, v56);
  sub_1C20DCFA4(0, v33, v32, v35, v34, v57, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1C20EB498(v10, &qword_1EBF23680, &qword_1C2176D30);
    sub_1C20E6774(3);
    return sub_1C20D3174(v33, v32);
  }

  else
  {
    v37 = v10;
    v38 = v54;
    sub_1C20EB4F8(v37, v54, type metadata accessor for ASCABLEAdvertisement);
    v39 = v53;
    sub_1C20EB560(v38, v53, type metadata accessor for ASCABLEAdvertisement);
    (*(v12 + 56))(v39, 0, 1, v11);
    v40 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_advertisement;
    swift_beginAccess();
    sub_1C20EB114(v39, &v4[v40]);
    swift_endAccess();
    v41 = *&v4[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_cryptographyManager];
    v42 = sub_1C20F6D14(v38);
    if (v43 >> 60 == 15)
    {
      sub_1C20E6774(3);
    }

    else
    {
      v44 = *&v4[OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_bluetoothAdvertiser];
      v45 = v42;
      v46 = v43;
      v47 = sub_1C2170154();
      [v44 setFidoPayloadData_];

      v48 = swift_allocObject();
      *(v48 + 16) = v4;
      v62 = sub_1C20EB184;
      v63 = v48;
      aBlock = MEMORY[0x1E69E9820];
      v59 = 1107296256;
      v60 = sub_1C214FB48;
      v61 = &block_descriptor;
      v49 = _Block_copy(&aBlock);
      v50 = v4;

      [v44 activateWithCompletion_];
      sub_1C20B23C8(v45, v46);
      _Block_release(v49);
    }

    sub_1C20D3174(v33, v32);
    return sub_1C20EB5C8(v38, type metadata accessor for ASCABLEAdvertisement);
  }
}

void sub_1C20E2C1C(void *a1)
{
  if (a1)
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v2 = sub_1C21705A4();
    __swift_project_value_buffer(v2, qword_1EDD4CB08);
    v3 = a1;
    v4 = sub_1C2170584();
    v5 = sub_1C2170C54();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = sub_1C216FF84();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&dword_1C20AD000, v4, v5, "Could not begin advertising: %@", v6, 0xCu);
      sub_1C20EB498(v7, &qword_1EBF23700, &qword_1C2176D80);
      MEMORY[0x1C6915360](v7, -1, -1);
      MEMORY[0x1C6915360](v6, -1, -1);
    }

    sub_1C20E6774(5);
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v9 = sub_1C21705A4();
    __swift_project_value_buffer(v9, qword_1EDD4CB08);
    oslog = sub_1C2170584();
    v10 = sub_1C2170C34();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C20AD000, oslog, v10, "Started advertising", v11, 2u);
      MEMORY[0x1C6915360](v11, -1, -1);
    }
  }
}

void sub_1C20E2E50(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10)
{
  v123 = a8;
  v122 = a7;
  v131 = a6;
  v130 = a5;
  v129 = a2;
  v119 = a1;
  v125 = sub_1C216FCB4();
  v120 = *(v125 - 8);
  v12 = *(v120 + 64);
  v13 = MEMORY[0x1EEE9AC00](v125);
  v118 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v133 = &v112 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF251D0, &qword_1C2176940);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v112 - v18;
  v20 = sub_1C2170024();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v121 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v124 = &v112 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v128 = &v112 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v112 - v29;
  v127 = sub_1C216FDA4();
  v126 = *(v127 - 8);
  v31 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v33 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C216FD94();
  sub_1C216FD84();

  MEMORY[0x1C6913010](a9, a10);
  *&v140[0] = 0;
  *(&v140[0] + 1) = 0xE000000000000000;
  sub_1C2170F34();

  *&v140[0] = 0xD000000000000016;
  *(&v140[0] + 1) = 0x80000001C2185010;
  MEMORY[0x1C6913CB0](a3, a4);
  MEMORY[0x1C6913CB0](47, 0xE100000000000000);
  MEMORY[0x1C6913CB0](v130, v131);
  MEMORY[0x1C6913020](*&v140[0], *(&v140[0] + 1));
  v130 = v33;
  sub_1C216FD54();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1C20EB498(v19, &qword_1EBF251D0, &qword_1C2176940);
    if (qword_1EDD4A728 != -1)
    {
LABEL_29:
      swift_once();
    }

    v34 = sub_1C21705A4();
    __swift_project_value_buffer(v34, qword_1EDD4CB08);
    v35 = sub_1C2170584();
    v36 = sub_1C2170C54();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1C20AD000, v35, v36, "Could not determine relay URL", v37, 2u);
      MEMORY[0x1C6915360](v37, -1, -1);
    }

    sub_1C20E6774(4);
    (*(v126 + 8))(v130, v127);
  }

  else
  {
    (*(v21 + 32))(v30, v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF236D0, &qword_1C2176D60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C21768E0;
    strcpy((inited + 32), "Authorization");
    *(inited + 46) = -4864;
    strcpy(v140, "AccessToken ");
    BYTE13(v140[0]) = 0;
    HIWORD(v140[0]) = -5120;
    MEMORY[0x1C6913CB0](v122, v123);
    v39 = *(&v140[0] + 1);
    *(inited + 48) = *&v140[0];
    *(inited + 56) = v39;
    v40 = sub_1C213F3FC(inited);
    swift_setDeallocating();
    sub_1C20EB498(inited + 32, &qword_1EBF236D8, &qword_1C2176D68);
    v122 = v21;
    v43 = *(v21 + 16);
    v41 = v21 + 16;
    v42 = v43;
    v44 = v128;
    v123 = v30;
    v43(v128, v30, v20);
    v45 = objc_opt_self();

    v46 = [v45 ephemeralSessionConfiguration];
    v47 = objc_opt_self();
    v48 = [v47 sessionWithConfiguration_];

    v49 = type metadata accessor for ASWebSocket();
    memset(v140, 0, sizeof(v140));
    v141 = 0;
    v115 = v49;
    v50 = objc_allocWithZone(v49);
    *&v50[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v50[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_isConnected] = 0;
    v51 = &v50[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_connectionCompletionHandler];
    *v51 = 0;
    v51[1] = 0;
    v52 = &v50[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_testDelegate];
    *(v52 + 4) = 0;
    *v52 = 0u;
    *(v52 + 1) = 0u;
    v114 = v52;

    v53 = v48;
    if (!v48)
    {
      v53 = [v47 sharedSession];
    }

    v112 = OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_urlSession;
    *&v50[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_urlSession] = v53;
    v131 = v20;
    v117 = v41;
    v116 = v42;
    v42(v124, v44, v20);
    v113 = v48;
    sub_1C216FC84();
    v54 = 0;
    v55 = 1 << *(v40 + 32);
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(v40 + 64);
    v58 = (v55 + 63) >> 6;
    if (v57)
    {
      while (1)
      {
        v59 = v54;
LABEL_16:
        v60 = __clz(__rbit64(v57));
        v57 &= v57 - 1;
        v61 = (v59 << 10) | (16 * v60);
        v62 = (*(v40 + 48) + v61);
        v63 = *v62;
        v64 = v62[1];
        v65 = (*(v40 + 56) + v61);
        v66 = *v65;
        v67 = v65[1];

        sub_1C216FC94();

        if (!v57)
        {
          goto LABEL_12;
        }
      }
    }

    while (1)
    {
LABEL_12:
      v59 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v59 >= v58)
      {
        break;
      }

      v57 = *(v40 + 64 + 8 * v59);
      ++v54;
      if (v57)
      {
        v54 = v59;
        goto LABEL_16;
      }
    }

    v137[0] = &unk_1F419D128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF236E0, &qword_1C2176D70);
    sub_1C20EB398(&qword_1EBF238E0, &unk_1EBF236E0, &qword_1C2176D70);
    sub_1C21708A4();
    v68 = v133;
    sub_1C216FC94();

    sub_1C20EB3E8(v140, &v135, &unk_1EBF236F0, &qword_1C2176D78);
    if (v136)
    {
      sub_1C20AFFE8(&v135, v137);
      v69 = v138;
      v70 = v139;
      __swift_project_boxed_opaque_existential_1(v137, v138);
      v71 = v118;
      (*(v70 + 8))(v68, v69, v70);
      v72 = v120;
      v73 = v125;
      (*(v120 + 8))(v68, v125);
      (*(v72 + 32))(v68, v71, v73);
      __swift_destroy_boxed_opaque_existential_0Tm(v137);
      v74 = v132;
      v75 = v122;
    }

    else
    {
      sub_1C20EB498(&v135, &unk_1EBF236F0, &qword_1C2176D78);
      v74 = v132;
      v75 = v122;
      v72 = v120;
    }

    v76 = *&v50[v112];
    v77 = sub_1C216FC74();
    v78 = [v76 webSocketTaskWithRequest_];

    *&v50[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask] = v78;
    v79 = sub_1C2170994();
    v80 = v78;

    host = nw_endpoint_create_host((v79 + 32), "https");

    [v80 set:host hostOverride:?];

    swift_unknownObjectRelease();
    v82 = v114;
    swift_beginAccess();
    sub_1C20EB090(v140, v82);
    swift_endAccess();
    v134.receiver = v50;
    v134.super_class = v115;
    v83 = objc_msgSendSuper2(&v134, sel_init);
    [*&v83[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask] setDelegate_];
    sub_1C20EB498(v140, &unk_1EBF236F0, &qword_1C2176D78);
    v129 = *(v75 + 8);
    v129(v128, v131);
    (*(v72 + 8))(v68, v125);

    v84 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket;
    v85 = *(v74 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket);
    *(v74 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket) = v83;
    v86 = v83;

    *&v86[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_delegate + 8] = &off_1F419E130;
    swift_unknownObjectWeakAssign();

    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v87 = sub_1C21705A4();
    __swift_project_value_buffer(v87, qword_1EDD4CB08);
    v88 = v121;
    v89 = v123;
    v90 = v131;
    v116(v121, v123, v131);

    v91 = sub_1C2170584();
    v92 = sub_1C2170C74();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = v88;
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v140[0] = v95;
      *v94 = 136315394;
      sub_1C20EB450(&unk_1EBF238F0, MEMORY[0x1E6968FB0]);
      v96 = sub_1C21712E4();
      v98 = v97;
      v129(v93, v131);
      v99 = sub_1C20D7F2C(v96, v98, v140);

      *(v94 + 4) = v99;
      *(v94 + 12) = 2080;
      v100 = sub_1C2170874();
      v102 = sub_1C20D7F2C(v100, v101, v140);

      *(v94 + 14) = v102;
      v89 = v123;
      _os_log_impl(&dword_1C20AD000, v91, v92, "Connecting to relay at %s, headers: %s", v94, 0x16u);
      swift_arrayDestroy();
      v74 = v132;
      v90 = v131;
      MEMORY[0x1C6915360](v95, -1, -1);
      MEMORY[0x1C6915360](v94, -1, -1);
    }

    else
    {

      v129(v88, v90);
    }

    v103 = *(v74 + v84);
    if (v103)
    {
      v104 = v103;

      v105 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v106 = *&v104[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask];

      [v106 resume];
      v129(v89, v90);
      (*(v126 + 8))(v130, v127);
      v107 = swift_allocObject();
      *(v107 + 2) = v104;
      *(v107 + 3) = sub_1C20EB100;
      *(v107 + 4) = v105;
      v108 = &v104[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_connectionCompletionHandler];
      v109 = *&v104[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_connectionCompletionHandler];
      v110 = *&v104[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_connectionCompletionHandler + 8];
      *v108 = sub_1C20EB108;
      v108[1] = v107;
      v111 = v104;
      sub_1C20B0080(v109);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C20E3DA8(uint64_t a1, uint64_t a2)
{
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v4 = sub_1C21705A4();
  __swift_project_value_buffer(v4, qword_1EDD4CB08);
  v5 = sub_1C2170584();
  v6 = sub_1C2170C34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C20AD000, v5, v6, "Authenticator opened socket connection.", v7, 2u);
    MEMORY[0x1C6915360](v7, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a2 && (a1 == 0x6261632E6F646966 && a2 == 0xEA0000000000656CLL || (sub_1C2171324() & 1) != 0))
    {
      v10 = *(&v9->isa + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState);
      *(&v9->isa + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState) = 3;
      sub_1C20E1718(v10);
    }

    else
    {

      v13 = sub_1C2170584();
      v14 = sub_1C2170C54();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v20 = v16;
        *v15 = 136315138;
        v17 = sub_1C2163D08(0x3E6C696E3CLL, 0xE500000000000000, a1, a2);
        v19 = sub_1C20D7F2C(v17, v18, &v20);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_1C20AD000, v13, v14, "Received socket connection with unexpected protocol: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x1C6915360](v16, -1, -1);
        MEMORY[0x1C6915360](v15, -1, -1);
      }

      sub_1C20E6774(4);
    }
  }

  else
  {
    v9 = sub_1C2170584();
    v11 = sub_1C2170C74();
    if (os_log_type_enabled(v9, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C20AD000, v9, v11, "Client was deinitialized while waiting for initial connection.", v12, 2u);
      MEMORY[0x1C6915360](v12, -1, -1);
    }
  }
}

void sub_1C20E4094(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a1;
  v54 = a2;
  v4 = sub_1C2170CA4();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v49 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1C2170764();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF23680, &qword_1C2176D30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v49 - v14;
  v16 = type metadata accessor for ASCABLEAdvertisement();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v20 = sub_1C21705A4();
  __swift_project_value_buffer(v20, qword_1EDD4CB08);
  v21 = sub_1C2170584();
  v22 = sub_1C2170C34();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v52 = v16;
    v24 = v8;
    v25 = v7;
    v26 = v3;
    v27 = v23;
    *v23 = 0;
    _os_log_impl(&dword_1C20AD000, v21, v22, "Received handshake", v23, 2u);
    v28 = v27;
    v3 = v26;
    v7 = v25;
    v8 = v24;
    v16 = v52;
    MEMORY[0x1C6915360](v28, -1, -1);
  }

  v29 = OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_advertisement;
  swift_beginAccess();
  sub_1C20EB3E8(v3 + v29, v15, &qword_1EBF23680, &qword_1C2176D30);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C20EB498(v15, &qword_1EBF23680, &qword_1C2176D30);
    v30 = sub_1C2170584();
    v31 = sub_1C2170C54();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1C20AD000, v30, v31, "Tried to perform Noise handshake without an advertisement.", v32, 2u);
      MEMORY[0x1C6915360](v32, -1, -1);
    }

    sub_1C20E6774(0);
  }

  else
  {
    v33 = v55;
    sub_1C20EB4F8(v15, v55, type metadata accessor for ASCABLEAdvertisement);
    v52 = v3;
    v34 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_cryptographyManager);
    v58 = *(v33 + *(v16 + 32));
    v56 = sub_1C20E7898(&unk_1F419D008);
    v57 = v35;
    sub_1C2170844();
    sub_1C20EB450(&qword_1EDD4A7A0, MEMORY[0x1E6966620]);
    sub_1C20EB03C();
    sub_1C21707B4();
    sub_1C20D3174(v56, v57);
    sub_1C2170734();
    (*(v8 + 8))(v11, v7);
    v36 = v58;
    v37 = sub_1C20F78AC(v53, v54, v58, *(&v58 + 1));
    v39 = v38;
    v40 = sub_1C2170584();
    v41 = sub_1C2170C34();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1C20AD000, v40, v41, "Finishing handshake", v42, 2u);
      MEMORY[0x1C6915360](v42, -1, -1);
    }

    v43 = *(v52 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket);
    if (v43)
    {
      v54 = *&v43[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask];
      v44 = v49;
      *v49 = v37;
      v44[1] = v39;
      v45 = v39;
      v46 = v50;
      v47 = v51;
      (*(v50 + 104))(v44, *MEMORY[0x1E6969F28], v51);
      *(swift_allocObject() + 16) = v43;
      v48 = v43;
      sub_1C20D865C(v37, v45);
      sub_1C2170C94();

      (*(v46 + 8))(v44, v47);

      sub_1C20E4864();
      sub_1C20D3174(v37, v45);
      sub_1C20D3174(v36, *(&v36 + 1));
      sub_1C20EB5C8(v55, type metadata accessor for ASCABLEAdvertisement);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C20E4864()
{
  v1 = sub_1C2170CA4();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_1C213F300(&unk_1F419D058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF236B8, &qword_1C2176D48);
  swift_arrayDestroy();
  if (qword_1EBF23098 != -1)
  {
    swift_once();
  }

  v5 = qword_1EBF23520;
  v6 = *algn_1EBF23528;
  sub_1C20D865C(qword_1EBF23520, *algn_1EBF23528);
  v47 = MEMORY[0x1E69E7CC0];
  sub_1C20E71CC(0, 2, 0);
  v7 = v47;
  if (byte_1F419CFC0 > 2u)
  {
    if (byte_1F419CFC0 == 3)
    {
      v8 = 0xE800000000000000;
      v9 = 0x6C616E7265746E69;
    }

    else if (byte_1F419CFC0 == 4)
    {
      v8 = 0xE600000000000000;
      v9 = 0x646972627968;
    }

    else
    {
      v9 = 0x61632D7472616D73;
      v8 = 0xEA00000000006472;
    }
  }

  else
  {
    v8 = 0xE300000000000000;
    if (byte_1F419CFC0)
    {
      if (byte_1F419CFC0 == 1)
      {
        v9 = 6514286;
      }

      else
      {
        v9 = 6646882;
      }
    }

    else
    {
      v9 = 6452085;
    }
  }

  v11 = *(v47 + 16);
  v10 = *(v47 + 24);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    sub_1C20E71CC((v10 > 1), v11 + 1, 1);
    v7 = v47;
  }

  *(v7 + 16) = v12;
  v13 = v7 + 16 * v11;
  *(v13 + 32) = v9;
  *(v13 + 40) = v8;
  if (byte_1F419CFC1 > 2u)
  {
    if (byte_1F419CFC1 == 3)
    {
      v14 = 0xE800000000000000;
      v15 = 0x6C616E7265746E69;
    }

    else if (byte_1F419CFC1 == 4)
    {
      v14 = 0xE600000000000000;
      v15 = 0x646972627968;
    }

    else
    {
      v15 = 0x61632D7472616D73;
      v14 = 0xEA00000000006472;
    }
  }

  else
  {
    v14 = 0xE300000000000000;
    if (byte_1F419CFC1)
    {
      if (byte_1F419CFC1 == 1)
      {
        v15 = 6514286;
      }

      else
      {
        v15 = 6646882;
      }
    }

    else
    {
      v15 = 6452085;
    }
  }

  v47 = v7;
  v16 = *(v7 + 24);
  v17 = v11 + 2;
  if (v12 >= v16 >> 1)
  {
    sub_1C20E71CC((v16 > 1), v17, 1);
    v7 = v47;
  }

  *(v7 + 16) = v17;
  v18 = v7 + 16 * v12;
  *(v18 + 32) = v15;
  *(v18 + 40) = v14;
  *&v40 = &unk_1F419D0E8;
  *(&v40 + 1) = &unk_1F419CFC8;
  *&v41 = v5;
  *(&v41 + 1) = v6;
  v42 = v38;
  v43 = 0;
  LOBYTE(v44) = 1;
  v45 = 0;
  v46 = v7;
  v48[2] = v41;
  v48[3] = v38;
  v48[4] = v44;
  v48[0] = xmmword_1C21769B0;
  v48[1] = v40;
  v49 = v7;
  v50 = &unk_1F419D0C0;
  v19 = v0;
  v20 = *(v0 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_cryptographyManager);
  sub_1C20EAF38(&v40, &v39);
  v21 = sub_1C20F82DC(v48);
  v23 = v22;
  v24 = *(v19 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket);
  if (v24)
  {
    v25 = *(v19 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState);
    *(v19 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_currentState) = 4;
    v26 = v24;
    sub_1C20E1718(v25);
    v27 = *&v26[OBJC_IVAR____TtC26AuthenticationServicesCore11ASWebSocket_webSocketTask];
    *v4 = v21;
    v4[1] = v23;
    v29 = v36;
    v28 = v37;
    (*(v36 + 104))(v4, *MEMORY[0x1E6969F28], v37);
    *(swift_allocObject() + 16) = v26;
    v30 = v26;
    sub_1C20D865C(v21, v23);
    sub_1C2170C94();

    sub_1C20EAF94(v48);
    sub_1C20D3174(v21, v23);
    sub_1C20EAFE8(&v40);
    (*(v29 + 8))(v4, v28);
  }

  else
  {
    if (qword_1EDD4A728 != -1)
    {
      swift_once();
    }

    v31 = sub_1C21705A4();
    __swift_project_value_buffer(v31, qword_1EDD4CB08);
    v32 = sub_1C2170584();
    v33 = sub_1C2170C54();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1C20AD000, v32, v33, "Could not send postHandshake without a valid socket", v34, 2u);
      MEMORY[0x1C6915360](v34, -1, -1);
    }

    sub_1C20E6774(0);
    sub_1C20D3174(v21, v23);
    sub_1C20EAF94(v48);
    sub_1C20EAFE8(&v40);
  }
}

uint64_t sub_1C20E4F30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_cryptographyManager);
  v5 = sub_1C20F87F4(a1, a2, 1);
  v7 = (v6 >> 60) & 3;
  if (((v6 >> 60) & 3) <= 1)
  {
    if (v7)
    {
      v14 = v5;
      v15 = v6;
      if (qword_1EDD4A728 != -1)
      {
        swift_once();
      }

      v16 = sub_1C21705A4();
      __swift_project_value_buffer(v16, qword_1EDD4CB08);
      v17 = sub_1C2170584();
      v18 = sub_1C2170C54();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1C20AD000, v17, v18, "Unexpectedly received caBLE update message from client. Ignoring.", v19, 2u);
        MEMORY[0x1C6915360](v19, -1, -1);
      }

      v10 = v14;
      v11 = v15;
    }

    else
    {
      v8 = v5;
      v9 = v6;
      sub_1C20D865C(v5, v6);
      sub_1C20E5378(v8, v9);
      sub_1C20E7A78(v8, v9);
      v10 = v8;
      v11 = v9;
    }

    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v12 = v6;
    v13 = v5;
    sub_1C20D865C(v5, v6 & 0xCFFFFFFFFFFFFFFFLL);
    sub_1C20E59D8();
    sub_1C20E7A78(v13, v12);
    v10 = v13;
    v11 = v12;
LABEL_11:

    return sub_1C20E7A78(v10, v11);
  }

  v21 = v5;
  v22 = v6;
  if (qword_1EDD4A728 != -1)
  {
    swift_once();
  }

  v23 = sub_1C21705A4();
  __swift_project_value_buffer(v23, qword_1EDD4CB08);
  v24 = sub_1C2170584();
  v25 = sub_1C2170C74();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1C20AD000, v24, v25, "Received shutdown message from client", v26, 2u);
    MEMORY[0x1C6915360](v26, -1, -1);
  }

  v27 = *(v3 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_webSocket);
  if (v27)
  {
    v28 = v27;
    sub_1C2152FA4();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong authenticator:v3 didCompleteTransactionWithError:0];
    swift_unknownObjectRelease();
  }

  return sub_1C20E7A78(v21, v22);
}