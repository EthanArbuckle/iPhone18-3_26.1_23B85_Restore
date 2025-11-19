uint64_t sub_1BBC0896C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1BBC410EC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

id sub_1BBC08A00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 highlight];
  *a2 = result;
  return result;
}

uint64_t sub_1BBC08A50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = _SWCollaborationBarButtonItem.customContentTitle.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1BBC08A80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = _SWCollaborationBarButtonItem.customCollaborators.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1BBC08AB0()
{
  MEMORY[0x1BFB19A10](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1BBC08B00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SWCollaborationDetailViewModel_itemProvider;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1BBC08B6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1BBC08BC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BBC08CAC()
{
  v1 = sub_1BBC4088C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BBC08D48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BBC08D8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BBC08DC4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = *(v0 + 64);

  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1BBC08E1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1BBC08ED8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BBC08FFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBC0904C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____SWCollaborationButtonViewImpl_activeParticipantCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1BBC090A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____SWCollaborationButtonViewImpl_activeParticipantCount;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_1BBC2B848(v2);
}

id sub_1BBC09148@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____SWCollaborationButtonViewImpl_headerImage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1BBC091B0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1BBC306FC(v2);
}

uint64_t sub_1BBC09250()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBC09288()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BBC092C0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BBC09310()
{
  MEMORY[0x1BFB19A10](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBC09380()
{
  MEMORY[0x1BFB19A10](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBC093C0()
{
  v1 = *(v0 + 16);

  if (*(v0 + 56))
  {
    v2 = *(v0 + 64);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BBC09418()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 56);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BBC09468()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 64);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BBC094C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBC094F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BBC09544(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5818, &qword_1BBC45150);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5820, &qword_1BBC45158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5828, &qword_1BBC45160);
  sub_1BBC40CFC();
  swift_getTupleTypeMetadata2();
  sub_1BBC4104C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5830, &qword_1BBC45168);
  sub_1BBC40B3C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5838, &qword_1BBC45170);
  sub_1BBC40B3C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBCA5840, &qword_1BBC45178);
  swift_getTupleTypeMetadata3();
  sub_1BBC4104C();
  swift_getWitnessTable();
  sub_1BBC40E4C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1BBC40B3C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BBC09838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA58E0, &qword_1BBC45218);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBC098B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for _CollaborationDetailView() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[11], v2);
  v7 = *(v0 + v5 + v3[12] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1BBC099B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for _CollaborationDetailView() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(type metadata accessor for CollaborationInfo(0) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = (v5 + v6 + v8) & ~v8;
  v11 = v0 + v5;

  (*(*(v2 - 8) + 8))(v11 + v3[11], v2);
  v12 = *(v11 + v3[12] + 8);

  v13 = (v0 + v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v15 = sub_1BBC4088C();
      (*(*(v15 - 8) + 8))(v0 + v10, v15);
      break;
    case 1:

      break;
    case 0:

      break;
  }

  return MEMORY[0x1EEE6BDD0](v0, v10 + v9, v4 | v8 | 7);
}

uint64_t sub_1BBC09BA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BBC40B5C();
  *a1 = result;
  return result;
}

uint64_t sub_1BBC09BCC(uint64_t *a1)
{
  v1 = *a1;

  return sub_1BBC40B6C();
}

id sub_1BBC09C10@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 viewModel];
  *a2 = result;
  return result;
}

id sub_1BBC09C60@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 collaborationHighlight];
  *a2 = result;
  return result;
}

void sub_1BBC0F670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BBC116B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BBC12D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BBC141F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  _Block_object_dispose(&a30, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BBC15B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose((v13 - 160), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  return result;
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

id getSLCollaborationSigningControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSLCollaborationSigningControllerClass_softClass;
  v7 = getSLCollaborationSigningControllerClass_softClass;
  if (!getSLCollaborationSigningControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSLCollaborationSigningControllerClass_block_invoke;
    v3[3] = &unk_1E7FDDE30;
    v3[4] = &v4;
    __getSLCollaborationSigningControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BBC16584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSLCollaborationSigningControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SocialLayerLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SocialLayerLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7FDE088;
    v7 = 0;
    SocialLayerLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (SocialLayerLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SLCollaborationSigningController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSLCollaborationSigningControllerClass_block_invoke_cold_1();
  }

  getSLCollaborationSigningControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SocialLayerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SocialLayerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BBC19050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BBC19634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BBC1A058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void type metadata accessor for Identifier()
{
  if (!qword_1EBCA5000)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBCA5000);
    }
  }
}

uint64_t sub_1BBC1B958(uint64_t a1, id *a2)
{
  result = sub_1BBC410CC();
  *a2 = 0;
  return result;
}

uint64_t sub_1BBC1B9D0(uint64_t a1, id *a2)
{
  v3 = sub_1BBC410DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BBC1BA50@<X0>(uint64_t *a1@<X8>)
{
  sub_1BBC410EC();
  v2 = sub_1BBC410BC();

  *a1 = v2;
  return result;
}

uint64_t sub_1BBC1BA94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1BBC410EC();
  v6 = v5;
  if (v4 == sub_1BBC410EC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1BBC413AC();
  }

  return v9 & 1;
}

uint64_t sub_1BBC1BB1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1BBC410BC();

  *a2 = v5;
  return result;
}

uint64_t sub_1BBC1BB64(uint64_t a1)
{
  v2 = sub_1BBC1BD9C(&qword_1EBCA5020);
  v3 = sub_1BBC1BD9C(&qword_1EBCA5028);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BBC1BC98()
{
  v1 = *v0;
  v2 = sub_1BBC410EC();
  v3 = MEMORY[0x1BFB18D80](v2);

  return v3;
}

uint64_t sub_1BBC1BCD4()
{
  v1 = *v0;
  sub_1BBC410EC();
  sub_1BBC4110C();
}

uint64_t sub_1BBC1BD28()
{
  v1 = *v0;
  sub_1BBC410EC();
  sub_1BBC413EC();
  sub_1BBC4110C();
  v2 = sub_1BBC413FC();

  return v2;
}

uint64_t sub_1BBC1BD9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Identifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBC1BDE8()
{
  v13 = sub_1BBC4122C();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v13, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BBC4121C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_1BBC410AC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12[1] = sub_1BBC1D534(0, &unk_1EBCA57D0, 0x1E69E9610);
  sub_1BBC4109C();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1BBC1D57C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51A8, &qword_1BBC440D8);
  sub_1BBC1D5D4(&unk_1EBCA51B0, &qword_1EBCA51A8, &qword_1BBC440D8);
  sub_1BBC412CC();
  (*(v0 + 104))(v4, *MEMORY[0x1E69E8090], v13);
  result = sub_1BBC4125C();
  qword_1EBCA5150 = result;
  return result;
}

uint64_t static SWCollaborationMetadata.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5158, &qword_1BBC44010);
  v2 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38, v3);
  v37 = v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5160, &qword_1BBC44018);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v31 - v8;
  v10 = sub_1BBC40A1C();
  v33 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5168, &qword_1BBC44020);
  v34 = *(v36 - 8);
  v14 = *(v34 + 64);
  v16 = MEMORY[0x1EEE9AC00](v36, v15);
  v35 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v32 = v31 - v19;
  sub_1BBC410EC();
  v20 = *(v11 + 56);
  v20(v9, 1, 1, v10);
  sub_1BBC409EC();
  *(swift_allocObject() + 16) = v1;
  sub_1BBC1D534(0, &qword_1EBCA5170, 0x1E697B6D8);
  v31[1] = sub_1BBC1C86C();
  sub_1BBC409CC();
  v21 = *MEMORY[0x1E697B770];
  sub_1BBC410EC();
  v20(v9, 1, 1, v33);
  sub_1BBC409EC();
  *(swift_allocObject() + 16) = v1;
  v22 = v35;
  sub_1BBC409CC();
  v23 = v37;
  v24 = *(v38 + 48);
  v25 = v34;
  v26 = *(v34 + 16);
  v27 = v32;
  v28 = v36;
  v26(v37, v32, v36);
  v26(&v23[v24], v22, v28);
  sub_1BBC409DC();
  v29 = *(v25 + 8);
  v29(v22, v28);
  return (v29)(v27, v28);
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

uint64_t sub_1BBC1C46C(uint64_t *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1BBC1C52C;
  v4 = *MEMORY[0x1E69E9840];

  return sub_1BBC1CF5C(v2);
}

uint64_t sub_1BBC1C52C(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 32) = a1;

  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1BBC1C658, 0, 0);
}

uint64_t sub_1BBC1C658()
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 32);
  v2 = objc_opt_self();
  *(v0 + 16) = 0;
  v3 = [v2 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v0 + 16];
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  if (v3)
  {
    v6 = sub_1BBC408AC();
    v8 = v7;

    v9 = *(v0 + 8);
    v10 = *MEMORY[0x1E69E9840];

    return v9(v6, v8);
  }

  else
  {
    v12 = v4;
    sub_1BBC4082C();

    swift_willThrow();
    v13 = *(v0 + 8);
    v14 = *MEMORY[0x1E69E9840];

    return v13();
  }
}

uint64_t sub_1BBC1C7D0(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BBC1D61C;

  return sub_1BBC1C46C(a1);
}

unint64_t sub_1BBC1C86C()
{
  result = qword_1EBCA5178;
  if (!qword_1EBCA5178)
  {
    sub_1BBC1D534(255, &qword_1EBCA5170, 0x1E697B6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5178);
  }

  return result;
}

uint64_t sub_1BBC1C8D4(uint64_t *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1BBC1C994;
  v4 = *MEMORY[0x1E69E9840];

  return sub_1BBC1CF5C(v2);
}

uint64_t sub_1BBC1C994(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 32) = a1;

  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1BBC1CAC0, 0, 0);
}

uint64_t sub_1BBC1CAC0()
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = [objc_allocWithZone(MEMORY[0x1E697B728]) initWithAPIMetadata_];
  v2 = objc_opt_self();
  *(v0 + 16) = 0;
  v3 = [v2 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v0 + 16];
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  if (v3)
  {
    v6 = sub_1BBC408AC();
    v8 = v7;

    v9 = *(v0 + 8);
    v10 = *MEMORY[0x1E69E9840];

    return v9(v6, v8);
  }

  else
  {
    v12 = v4;
    sub_1BBC4082C();

    swift_willThrow();
    v13 = *(v0 + 8);
    v14 = *MEMORY[0x1E69E9840];

    return v13();
  }
}

uint64_t sub_1BBC1CC64(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BBC1CD00;

  return sub_1BBC1C8D4(a1);
}

uint64_t sub_1BBC1CD00(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1BBC1CE28(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5198, &qword_1BBC440D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_1BBC408AC();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x1EEE6DEE0](v5);
  }
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

uint64_t sub_1BBC1CF7C()
{
  v1 = [*(v0 + 160) sourceProcessData];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BBC408AC();
    v5 = v4;

    sub_1BBC1D49C(v3, v5);
    v11 = *(v0 + 8);
    v6 = *(v0 + 160);

    return v11(v6);
  }

  else
  {
    if (qword_1EBCA4F20 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 160);
    v9 = [objc_allocWithZone(MEMORY[0x1E69D37D0]) initWithTargetSerialQueue:qword_1EBCA5150 synchronous:1];
    *(v0 + 168) = v9;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1BBC1D188;
    v10 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5190, &qword_1BBC440C8);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BBC1CE28;
    *(v0 + 104) = &block_descriptor;
    *(v0 + 112) = v10;
    [v9 signSourceProcessWithMetadata:v8 timeout:v0 + 80 completion:5.0];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1BBC1D188()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1BBC1D350;
  }

  else
  {
    v3 = sub_1BBC1D298;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BBC1D298()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = sub_1BBC4089C();
  sub_1BBC1D49C(v3, v4);
  [v1 setSourceProcessData_];

  v8 = *(v0 + 8);
  v6 = *(v0 + 160);

  return v8(v6);
}

uint64_t sub_1BBC1D350()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v3;
  v5 = v0[1];
  v6 = v0[20];

  return v5(v6);
}

uint64_t sub_1BBC1D3EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1BBC1D49C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1BBC1D534(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1BBC1D57C()
{
  result = qword_1EBCA51A0;
  if (!qword_1EBCA51A0)
  {
    sub_1BBC4121C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA51A0);
  }

  return result;
}

uint64_t sub_1BBC1D5D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void _SWCollaborationBarButtonItem.setDetailViewListContent<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 collaborationButtonView];
  v6 = [v5 buttonView];

  sub_1BBC2B4C8(a1, a2);
}

void _SWCollaborationBarButtonItem.setDetailViewListContent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 collaborationButtonView];
  v8 = [v7 buttonView];

  sub_1BBC2B4F4(a1, a2, a3);
}

id _SWCollaborationBarButtonItem.highlight.getter()
{
  v1 = [v0 collaborationButtonView];
  v2 = [v1 buttonView];

  v3 = [*&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] collaborationHighlight];
  return v3;
}

void _SWCollaborationBarButtonItem.highlight.setter(void *a1)
{
  v2 = [v1 collaborationButtonView];
  v3 = [v2 buttonView];

  [*&v3[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] setCollaborationHighlight_];
}

uint64_t _SWCollaborationBarButtonItem.customContentTitle.getter()
{
  v1 = [v0 collaborationButtonView];
  v2 = [v1 buttonView];

  v3 = [*&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  return v5;
}

void sub_1BBC1DA98(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;

  v5 = [v4 collaborationButtonView];
  v6 = [v5 buttonView];

  v7 = [*&v6[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ACC();
}

void _SWCollaborationBarButtonItem.customContentTitle.setter()
{
  v1 = [v0 collaborationButtonView];
  v2 = [v1 buttonView];

  v3 = [*&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ACC();
}

void (*_SWCollaborationBarButtonItem.customContentTitle.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v2;
  v6 = [v2 collaborationButtonView];
  v7 = [v6 buttonView];

  v8 = [*&v7[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  *v5 = v5[1];
  return sub_1BBC1DD70;
}

void sub_1BBC1DD70(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  if (a2)
  {
    v6 = (*a1)[1];

    v7 = [v5 collaborationButtonView];
    v8 = [v7 buttonView];

    v9 = [*&v8[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] viewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    v2[2] = v4;
    v2[3] = v3;
    sub_1BBC40ACC();

    v10 = v2[1];
  }

  else
  {
    v11 = [(*a1)[4] collaborationButtonView];
    v12 = [v11 buttonView];

    v13 = [*&v12[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] viewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    v2[2] = v4;
    v2[3] = v3;
    sub_1BBC40ACC();
  }

  free(v2);
}

uint64_t _SWCollaborationBarButtonItem.customCollaborators.getter()
{
  v1 = [v0 collaborationButtonView];
  v2 = [v1 buttonView];

  v3 = [*&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  return v5;
}

void sub_1BBC1DFD4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;

  v4 = [v3 collaborationButtonView];
  v5 = [v4 buttonView];

  v6 = [*&v5[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ACC();
}

void _SWCollaborationBarButtonItem.customCollaborators.setter()
{
  v1 = [v0 collaborationButtonView];
  v2 = [v1 buttonView];

  v3 = [*&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ACC();
}

void (*_SWCollaborationBarButtonItem.customCollaborators.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 collaborationButtonView];
  v4 = [v3 buttonView];

  v5 = [*&v4[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  *a1 = a1[1];
  return sub_1BBC1E268;
}

void sub_1BBC1E268(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[2];
  if (a2)
  {
    v5 = *a1;

    v6 = [v4 collaborationButtonView];
    v7 = [v6 buttonView];

    v8 = [*&v7[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] viewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v3;
    sub_1BBC40ACC();

    v9 = *a1;
  }

  else
  {
    v10 = [a1[2] collaborationButtonView];
    v12 = [v10 buttonView];

    v11 = [*&v12[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] viewModel];
    swift_getKeyPath();
    swift_getKeyPath();
    a1[1] = v3;
    sub_1BBC40ACC();
  }
}

void __swiftcall _SWCollaborationBarButtonItem.init(highlight:)(_SWCollaborationBarButtonItem *__return_ptr retstr, SWHighlight_optional highlight)
{
  isa = highlight.value.super.isa;
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHighlight_];
}

id _SWCollaborationBarButtonItem.init(highlight:)(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(_SWCollaborationDetailViewController) initWithHighlight_];
  v5 = objc_allocWithZone(type metadata accessor for _SWCollaborationButtonViewImpl());
  v6 = sub_1BBC2C860(v4);
  v7 = [objc_allocWithZone(_SWCollaborationButtonView) initWithTypeErasedButtonView_];
  v8 = [v2 initWithCollaborationButtonView_];

  return v8;
}

id _SWCollaborationBarButtonItem.init<A>(highlight:detailViewListContent:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _SWCollaborationButtonViewImpl();
  v6 = sub_1BBC305D4(a1, a2, a3);
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = [objc_allocWithZone(_SWCollaborationButtonView) initWithTypeErasedButtonView_];
  v9 = [v7 initWithCollaborationButtonView_];

  (*(*(a3 - 8) + 8))(a2, a3);
  return v9;
}

id _SWCollaborationBarButtonItem.init<A>(highlight:detailViewListContent:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _SWCollaborationButtonViewImpl();
  v8 = sub_1BBC30664(a1, a2, a3, a4);
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10 = [objc_allocWithZone(_SWCollaborationButtonView) initWithTypeErasedButtonView_];
  v11 = [v9 initWithCollaborationButtonView_];

  return v11;
}

id _SWCollaborationBarButtonItem.updateHighlight<A>(_:newListContent:)(uint64_t a1)
{
  return [v1 setHighlight_];
}

{
  return [v1 setHighlight_];
}

double sub_1BBC1E89C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1BBC1E91C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_1BBC40ACC();
}

uint64_t sub_1BBC1E99C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  *a2 = v5;
  return result;
}

uint64_t sub_1BBC1EA1C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_1BBC40ACC();
}

uint64_t sub_1BBC1EAA0(char a1)
{
  v2 = sub_1BBC40A1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 != 1)
    {
      v15 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA53A8, &qword_1BBC445C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BBC441B0;
      sub_1BBC40A0C();
      v17 = sub_1BBC409FC();
      v19 = v18;
      (*(v3 + 8))(v8, v15);
      *(inited + 32) = v17;
      *(inited + 40) = v19;
      v14 = sub_1BBC26EBC(inited);
      swift_setDeallocating();
      sub_1BBC28328(inited + 32);
      return v14;
    }

    v22 = MEMORY[0x1E69E7CC0];
    v9 = [objc_opt_self() readableTypeIdentifiersForItemProvider];
    v10 = sub_1BBC4117C();
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v11 = [objc_opt_self() readableTypeIdentifiersForItemProvider];
    v12 = sub_1BBC4117C();

    sub_1BBC1ECDC(v12);
    v13 = [objc_opt_self() readableTypeIdentifiersForItemProvider];
    v10 = sub_1BBC4117C();
  }

  sub_1BBC1ECDC(v10);
  v14 = sub_1BBC27024(v22);

  return v14;
}

uint64_t sub_1BBC1ECDC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1BBC25B8C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BBC1EDD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D6F74737563;
  if (v2 != 1)
  {
    v4 = 0x766F7250656C6966;
    v3 = 0xEC00000072656469;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74694B64756F6C63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D6F74737563;
  if (*a2 != 1)
  {
    v8 = 0x766F7250656C6966;
    v7 = 0xEC00000072656469;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74694B64756F6C63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBC413AC();
  }

  return v11 & 1;
}

uint64_t sub_1BBC1EEDC()
{
  v1 = *v0;
  sub_1BBC413EC();
  sub_1BBC4110C();

  return sub_1BBC413FC();
}

uint64_t sub_1BBC1EF84()
{
  *v0;
  *v0;
  sub_1BBC4110C();
}

uint64_t sub_1BBC1F018()
{
  v1 = *v0;
  sub_1BBC413EC();
  sub_1BBC4110C();

  return sub_1BBC413FC();
}

uint64_t sub_1BBC1F0BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BBC270BC();
  *a2 = result;
  return result;
}

void sub_1BBC1F0EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74737563;
  if (v2 != 1)
  {
    v5 = 0x766F7250656C6966;
    v4 = 0xEC00000072656469;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74694B64756F6C63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1BBC1F160(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      MEMORY[0x1BFB18D60](0xD000000000000048, 0x80000001BBC46AF0);
      return 0xD00000000000001DLL;
    }

    sub_1BBC4131C();
    MEMORY[0x1BFB18D60](0xD000000000000045, 0x80000001BBC46B40);
    sub_1BBC4134C();
    MEMORY[0x1BFB18D60](0xD000000000000015, 0x80000001BBC46B90);
    MEMORY[0x1BFB18D60](a3, a4);
    MEMORY[0x1BFB18D60](0xD000000000000010, 0x80000001BBC46BB0);
    v7 = [a1 description];
  }

  else
  {
    sub_1BBC4131C();
    MEMORY[0x1BFB18D60](0xD000000000000067, 0x80000001BBC46BD0);
    v7 = [a1 description];
  }

  v8 = v7;
  v9 = sub_1BBC410EC();
  v11 = v10;

  MEMORY[0x1BFB18D60](v9, v11);

  MEMORY[0x1BFB18D60](0, 0xE000000000000000);

  return 0xD00000000000001DLL;
}

unint64_t sub_1BBC1F354()
{
  v1 = v0;
  v2 = sub_1BBC4088C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CollaborationInfo(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBC27EC8(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v19 = *v12;
    v14 = *(v12 + 1);
    v20 = v12[16];
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1BBC4131C();
    MEMORY[0x1BFB18D60](0xD00000000000001FLL, 0x80000001BBC46A00);
    if (v20)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v20)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    MEMORY[0x1BFB18D60](v21, v22);

    MEMORY[0x1BFB18D60](0x726168536B63202CLL, 0xEB00000000203A65);
    v23 = [v19 description];
    v24 = sub_1BBC410EC();
    v26 = v25;

    MEMORY[0x1BFB18D60](v24, v26);

    MEMORY[0x1BFB18D60](0x746E6F436B63202CLL, 0xEF203A72656E6961);
    v27 = [v14 description];
    v28 = sub_1BBC410EC();
    v30 = v29;

    MEMORY[0x1BFB18D60](v28, v30);

    MEMORY[0x1BFB18D60](125, 0xE100000000000000);

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v14 = *v12;
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1BBC4131C();

    v34 = 0xD000000000000018;
    v35 = 0x80000001BBC469E0;
    v15 = [v14 description];
    v16 = sub_1BBC410EC();
    v18 = v17;

    MEMORY[0x1BFB18D60](v16, v18);

    MEMORY[0x1BFB18D60](125, 0xE100000000000000);
LABEL_11:

    return v34;
  }

  (*(v3 + 32))(v7, v12, v2);
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1BBC4131C();

  v34 = 0xD000000000000018;
  v35 = 0x80000001BBC46A20;
  v32 = sub_1BBC4084C();
  MEMORY[0x1BFB18D60](v32);

  MEMORY[0x1BFB18D60](125, 0xE100000000000000);
  v33 = v34;
  (*(v3 + 8))(v7, v2);
  return v33;
}

id CollaborationDetailViewModel.itemProvider.getter()
{
  v1 = OBJC_IVAR___SWCollaborationDetailViewModel_itemProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t CollaborationDetailViewModel.itemProvider.setter(void *a1)
{
  v3 = OBJC_IVAR___SWCollaborationDetailViewModel_itemProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1BBC27108(v5, sub_1BBC2241C, v6);
}

uint64_t sub_1BBC1F938(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SWCollaborationDetailViewModel_itemProvider;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1BBC27108(v6, sub_1BBC286D4, v7);
}

void (*CollaborationDetailViewModel.itemProvider.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___SWCollaborationDetailViewModel_itemProvider;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BBC1FA7C;
}

void sub_1BBC1FA7C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + v3[4]);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = v4;

    sub_1BBC27108(v6, sub_1BBC286D4, v5);
  }

  free(v3);
}

id sub_1BBC1FB34()
{
  v1 = OBJC_IVAR___SWCollaborationDetailViewModel____lazy_storage___highlightCenter;
  v2 = *(v0 + OBJC_IVAR___SWCollaborationDetailViewModel____lazy_storage___highlightCenter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SWCollaborationDetailViewModel____lazy_storage___highlightCenter);
  }

  else
  {
    v4 = [objc_allocWithZone(SWHighlightCenter) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t CollaborationDetailViewModel.cloudSharingControllerDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CollaborationDetailViewModel.cloudSharingControllerDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___SWCollaborationDetailViewModel_cloudSharingControllerDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BBC1FDA0;
}

void sub_1BBC1FDA0(uint64_t a1, char a2)
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

uint64_t sub_1BBC20004()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  return v1;
}

uint64_t sub_1BBC20120()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();
}

uint64_t sub_1BBC20274()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  return v1;
}

uint64_t CollaborationDetailViewModel.manageButtonTitle.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  return v1;
}

uint64_t CollaborationDetailViewModel.manageButtonTitle.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1BBC40ACC();
}

uint64_t sub_1BBC20594@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1BBC20614(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_1BBC40ACC();
}

uint64_t (*CollaborationDetailViewModel.manageButtonTitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BBC40AAC();
  return sub_1BBC286E4;
}

uint64_t sub_1BBC20754(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51E0, &qword_1BBC44228);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51D8, &qword_1BBC44220);
  sub_1BBC40A9C();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t CollaborationDetailViewModel.$manageButtonTitle.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51E0, &qword_1BBC44228);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51D8, &qword_1BBC44220);
  sub_1BBC40A9C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CollaborationDetailViewModel.$manageButtonTitle.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51E0, &qword_1BBC44228);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___SWCollaborationDetailViewModel__manageButtonTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51D8, &qword_1BBC44220);
  sub_1BBC40A8C();
  swift_endAccess();
  return sub_1BBC286E8;
}

uint64_t CollaborationDetailViewModel.showManageButton.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  return v1;
}

uint64_t CollaborationDetailViewModel.showManageButton.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1BBC40ACC();
}

uint64_t sub_1BBC20D50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  *a2 = v5;
  return result;
}

uint64_t sub_1BBC20DD0(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_1BBC40ACC();
}

uint64_t (*CollaborationDetailViewModel.showManageButton.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1BBC40AAC();
  return sub_1BBC20EE4;
}

void sub_1BBC20EE8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1BBC20F6C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1BBC40A8C();
  return swift_endAccess();
}

uint64_t sub_1BBC20FE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_1BBC40A8C();
  return swift_endAccess();
}

uint64_t sub_1BBC21060(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51F8, &qword_1BBC44298);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v4);
  v15 = *a2;
  v14(v10, v13, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51F0, &qword_1BBC44290);
  sub_1BBC40A9C();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t CollaborationDetailViewModel.$showManageButton.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51F8, &qword_1BBC44298);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  (*(v3 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51F0, &qword_1BBC44290);
  sub_1BBC40A9C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CollaborationDetailViewModel.$showManageButton.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51F8, &qword_1BBC44298);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR___SWCollaborationDetailViewModel__showManageButton;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51F0, &qword_1BBC44290);
  sub_1BBC40A8C();
  swift_endAccess();
  return sub_1BBC2148C;
}

void sub_1BBC21490(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_1BBC40A9C();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_1BBC40A9C();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

id CollaborationDetailViewModel.init(itemProvider:)(void *a1)
{
  v97 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51F0, &qword_1BBC44290);
  v94 = *(v2 - 8);
  v95 = v2;
  v3 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v93 = &v73 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51D8, &qword_1BBC44220);
  v91 = *(v6 - 8);
  v92 = v6;
  v7 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v90 = &v73 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5200, &qword_1BBC442A0);
  v88 = *(v10 - 8);
  v89 = v10;
  v11 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v87 = &v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5208, &qword_1BBC442A8);
  v85 = *(v14 - 8);
  v86 = v14;
  v15 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v84 = &v73 - v17;
  v18 = sub_1BBC4091C();
  v82 = *(v18 - 8);
  v83 = v18;
  v19 = *(v82 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v81 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v80 = &v73 - v24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5210, &qword_1BBC442B0);
  v78 = *(v79 - 8);
  v25 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79, v26);
  v77 = &v73 - v27;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5218, &qword_1BBC442B8);
  v75 = *(v76 - 8);
  v28 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76, v29);
  v31 = &v73 - v30;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5220, &unk_1BBC442C0);
  v32 = *(v74 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v74, v34);
  v36 = &v73 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  v38 = *(*(v37 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v42 = &v73 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v43);
  v45 = &v73 - v44;
  *&v1[OBJC_IVAR___SWCollaborationDetailViewModel____lazy_storage___highlightCenter] = 0;
  swift_unknownObjectWeakInit();
  v46 = OBJC_IVAR___SWCollaborationDetailViewModel__collaborationInfo;
  v47 = type metadata accessor for CollaborationInfo(0);
  (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
  sub_1BBC280C0(v45, v42, &qword_1EBCA5228, &unk_1BBC446E0);
  sub_1BBC40A7C();
  sub_1BBC27FF0(v45, &qword_1EBCA5228, &unk_1BBC446E0);
  (*(v32 + 32))(&v1[v46], v36, v74);
  v48 = OBJC_IVAR___SWCollaborationDetailViewModel__highlight;
  v99 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5248, &qword_1BBC442D0);
  sub_1BBC40A7C();
  (*(v75 + 32))(&v1[v48], v31, v76);
  v49 = OBJC_IVAR___SWCollaborationDetailViewModel__customContentTitle;
  v99 = 0;
  v100 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5258, &qword_1BBC442D8);
  v50 = v77;
  sub_1BBC40A7C();
  (*(v78 + 32))(&v1[v49], v50, v79);
  v51 = OBJC_IVAR___SWCollaborationDetailViewModel__headerFallback;
  v52 = v80;
  sub_1BBC408DC();
  v53 = v82;
  v54 = v83;
  (*(v82 + 16))(v81, v52, v83);
  v55 = v84;
  sub_1BBC40A7C();
  (*(v53 + 8))(v52, v54);
  (*(v85 + 32))(&v1[v51], v55, v86);
  v56 = OBJC_IVAR___SWCollaborationDetailViewModel__customCollaborators;
  v99 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5270, &qword_1BBC442E0);
  v57 = v87;
  sub_1BBC40A7C();
  (*(v88 + 32))(&v1[v56], v57, v89);
  v58 = OBJC_IVAR___SWCollaborationDetailViewModel__manageButtonTitle;
  sub_1BBC1D534(0, &unk_1EBCA5278, off_1E7FDD5F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v60 = [objc_opt_self() bundleForClass_];
  v61 = sub_1BBC4080C();
  v63 = v62;

  v99 = v61;
  v100 = v63;
  v64 = v90;
  sub_1BBC40A7C();
  (*(v91 + 32))(&v1[v58], v64, v92);
  v65 = OBJC_IVAR___SWCollaborationDetailViewModel__showManageButton;
  LOBYTE(v99) = 1;
  v66 = v93;
  sub_1BBC40A7C();
  (*(v94 + 32))(&v1[v65], v66, v95);
  v67 = v97;
  *&v1[OBJC_IVAR___SWCollaborationDetailViewModel_itemProvider] = v97;
  v98.receiver = v1;
  v98.super_class = ObjectType;
  v68 = v67;
  v69 = objc_msgSendSuper2(&v98, sel_init);
  v70 = sub_1BBC1FB34();
  [v70 setDelegate_];

  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1BBC27108(v68, sub_1BBC286D4, v71);

  return v69;
}

void sub_1BBC22008(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v39 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v40 = a5;
    v41 = a2;
    sub_1BBC280C0(a1, v18, &qword_1EBCA5228, &unk_1BBC446E0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BBC280C0(v18, v15, &qword_1EBCA5228, &unk_1BBC446E0);
    v21 = v20;
    sub_1BBC40ACC();
    sub_1BBC27FF0(v18, &qword_1EBCA5228, &unk_1BBC446E0);
    sub_1BBC22424(a1);
    v22 = type metadata accessor for CollaborationInfo(0);
    if ((*(*(v22 - 8) + 48))(a1, 1, v22) != 1)
    {
LABEL_14:

      return;
    }

    if (a3 >> 2 == 0xFFFFFFFF)
    {
      sub_1BBC411DC();
      v23 = SWFrameworkLogHandle();
      if (v23)
      {
        v24 = v23;
        sub_1BBC40A2C();

        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_17;
    }

    v29 = v40;
    sub_1BBC283F0(v41, a3);
    v30 = sub_1BBC411DC();
    v31 = SWFrameworkLogHandle();
    if (!v31)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v32 = v31;
    if (os_log_type_enabled(v31, v30))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v42 = v34;
      *v33 = 136315138;
      v35 = v41;
      v36 = sub_1BBC1F160(v41, a3, a4, v29);
      v39[1] = a4;
      v38 = sub_1BBC36DCC(v36, v37, &v42);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1BBC06000, v32, v30, "Error loading collaboration info: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x1BFB19980](v34, -1, -1);
      MEMORY[0x1BFB19980](v33, -1, -1);
      sub_1BBC2844C(v35, a3);

      goto LABEL_14;
    }

    sub_1BBC2844C(v41, a3);
  }

  else
  {
    if (qword_1EBCA4F30 != -1)
    {
      swift_once();
    }

    v25 = sub_1BBC40A5C();
    __swift_project_value_buffer(v25, qword_1EBCA6AF8);
    v26 = sub_1BBC40A3C();
    v27 = sub_1BBC411CC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1BBC06000, v26, v27, "Bailing from item provider collaboration info load completion because self was nil.", v28, 2u);
      MEMORY[0x1BFB19980](v28, -1, -1);
    }
  }
}

uint64_t sub_1BBC22424(void *a1)
{
  v2 = sub_1BBC4088C();
  v199 = *(v2 - 8);
  v3 = *(v199 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v193 = v6;
  v194 = &v185 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v195 = &v185 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5380, &qword_1BBC445A0);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v196 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v192 = &v185 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v191 = &v185 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v190 = &v185 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v204 = &v185 - v24;
  v25 = type metadata accessor for CollaborationInfo(0);
  v201 = *(v25 - 8);
  v202 = v25;
  v26 = *(v201 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v185 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v188 = &v185 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v189 = &v185 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v198 = (&v185 - v39);
  MEMORY[0x1EEE9AC00](v38, v40);
  v42 = &v185 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  v44 = *(*(v43 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v48 = &v185 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v46, v49);
  v52 = &v185 - v51;
  MEMORY[0x1EEE9AC00](v50, v53);
  v55 = &v185 - v54;
  if (qword_1EBCA4F30 != -1)
  {
    swift_once();
  }

  v187 = sub_1BBC40A5C();
  v56 = __swift_project_value_buffer(v187, qword_1EBCA6AF8);
  v203 = a1;
  sub_1BBC280C0(a1, v55, &qword_1EBCA5228, &unk_1BBC446E0);
  v57 = sub_1BBC40A3C();
  v58 = sub_1BBC411EC();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v197 = v56;
    v186 = v2;
    v60 = v59;
    v61 = swift_slowAlloc();
    v185 = v30;
    v62 = v61;
    aBlock = v61;
    *v60 = 136315138;
    sub_1BBC280C0(v55, v52, &qword_1EBCA5228, &unk_1BBC446E0);
    v63 = sub_1BBC410FC();
    v65 = v64;
    sub_1BBC27FF0(v55, &qword_1EBCA5228, &unk_1BBC446E0);
    v66 = sub_1BBC36DCC(v63, v65, &aBlock);

    *(v60 + 4) = v66;
    _os_log_impl(&dword_1BBC06000, v57, v58, "Updating collaboration properties for collaborationInfo: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    v67 = v62;
    v30 = v185;
    MEMORY[0x1BFB19980](v67, -1, -1);
    v68 = v60;
    v2 = v186;
    v56 = v197;
    MEMORY[0x1BFB19980](v68, -1, -1);
  }

  else
  {

    sub_1BBC27FF0(v55, &qword_1EBCA5228, &unk_1BBC446E0);
  }

  sub_1BBC280C0(v203, v48, &qword_1EBCA5228, &unk_1BBC446E0);
  if ((*(v201 + 48))(v48, 1, v202) != 1)
  {
    sub_1BBC27F8C(v48, v42);
    v79 = v199;
    v80 = *(v199 + 56);
    v80(v204, 1, 1, v2);
    v81 = v198;
    sub_1BBC27EC8(v42, v198);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v83 = *v81;
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(aBlock) = 0;
        v84 = v200;
        sub_1BBC40ACC();
        v203 = v83;
        v85 = [v83 fileURL];
        v197 = v56;
        if (v85)
        {
          v86 = v191;
          v87 = v85;
          sub_1BBC4086C();

          v88 = 0;
        }

        else
        {
          v88 = 1;
          v86 = v191;
        }

        v97 = v204;
        sub_1BBC27FF0(v204, &qword_1EBCA5380, &qword_1BBC445A0);
        v80(v86, v88, 1, v2);
        sub_1BBC28050(v86, v97);
        v98 = [v203 collaborationMetadata];
        if (v98 && (v99 = v98, v100 = [v98 title], v99, v100))
        {
          v101 = sub_1BBC410EC();
          v103 = v102;
        }

        else
        {
          v101 = 0;
          v103 = 0;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = v101;
        v206 = v103;
        v104 = v84;
        sub_1BBC40ACC();
        v105 = v192;
        sub_1BBC280C0(v204, v192, &qword_1EBCA5380, &qword_1BBC445A0);
        v79 = v199;
        if ((*(v199 + 48))(v105, 1, v2) == 1)
        {
          sub_1BBC27FF0(v105, &qword_1EBCA5380, &qword_1BBC445A0);
          v106 = v189;
          sub_1BBC27EC8(v42, v189);
          v107 = sub_1BBC40A3C();
          v108 = sub_1BBC411CC();
          if (os_log_type_enabled(v107, v108))
          {
            v109 = v104;
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            aBlock = v111;
            *v110 = 136315138;
            v112 = sub_1BBC1F354();
            v113 = v42;
            v115 = v114;
            sub_1BBC28128(v106);
            v116 = sub_1BBC36DCC(v112, v115, &aBlock);
            v42 = v113;

            *(v110 + 4) = v116;
            _os_log_impl(&dword_1BBC06000, v107, v108, "Unable to derive share URL from collaboration info %s", v110, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v111);
            MEMORY[0x1BFB19980](v111, -1, -1);
            v117 = v110;
            v104 = v109;
            MEMORY[0x1BFB19980](v117, -1, -1);
          }

          else
          {

            sub_1BBC28128(v106);
          }

          v30 = v188;
          v143 = [v203 collaborationMetadata];
          if (v143)
          {
            v144 = v143;
            v145 = [v143 collaborationIdentifier];

            v146 = sub_1BBC410EC();
            v148 = v147;

            v149 = sub_1BBC1FB34();
            v150._countAndFlagsBits = v146;
            v150._object = v148;
            v151 = v104;
            SWHighlightCenter.collaborationHighlight(forIdentifier:)(v152, v150);
            if (v154)
            {
              v201 = v151;

              if (qword_1EBCA4F38 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v187, qword_1EBCA6B10);

              v155 = v154;
              v156 = sub_1BBC40A3C();
              v157 = sub_1BBC411DC();

              if (os_log_type_enabled(v156, v157))
              {
                v158 = swift_slowAlloc();
                v202 = v42;
                v159 = v158;
                v160 = swift_slowAlloc();
                aBlock = v160;
                *v159 = 136315394;
                *(v159 + 4) = sub_1BBC36DCC(v146, v148, &aBlock);
                *(v159 + 12) = 2080;
                v161 = v146;
                v162 = sub_1BBC4081C();
                v163 = [v162 description];

                v164 = sub_1BBC410EC();
                v166 = v165;

                v167 = sub_1BBC36DCC(v164, v166, &aBlock);

                *(v159 + 14) = v167;
                v146 = v161;
                _os_log_impl(&dword_1BBC06000, v156, v157, "Error fetching collaboration highlights for identifier %s. Error: %s", v159, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1BFB19980](v160, -1, -1);
                v168 = v159;
                v42 = v202;
                MEMORY[0x1BFB19980](v168, -1, -1);
              }

              else
              {
              }
            }

            else
            {
              v177 = v153;

              swift_getKeyPath();
              swift_getKeyPath();
              aBlock = v177;
              v178 = v151;
              sub_1BBC40ACC();
            }

            swift_getKeyPath();
            swift_getKeyPath();
            sub_1BBC40ABC();

            v179 = aBlock;
            if (aBlock)
            {

              goto LABEL_53;
            }

            v180 = sub_1BBC40A3C();
            v181 = sub_1BBC411CC();

            if (!os_log_type_enabled(v180, v181))
            {

              goto LABEL_53;
            }

            v182 = swift_slowAlloc();
            v124 = v42;
            v183 = swift_slowAlloc();
            aBlock = v183;
            *v182 = 136315138;
            v184 = sub_1BBC36DCC(v146, v148, &aBlock);

            *(v182 + 4) = v184;
            _os_log_impl(&dword_1BBC06000, v180, v181, "Found no collaboration highlights in highlight center for idenfitier %s", v182, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v183);
            MEMORY[0x1BFB19980](v183, -1, -1);
            MEMORY[0x1BFB19980](v182, -1, -1);

            goto LABEL_50;
          }

          sub_1BBC27EC8(v42, v30);
          v169 = sub_1BBC40A3C();
          v170 = sub_1BBC411CC();
          if (os_log_type_enabled(v169, v170))
          {
            v171 = swift_slowAlloc();
            v172 = swift_slowAlloc();
            aBlock = v172;
            *v171 = 136315138;
            v173 = sub_1BBC1F354();
            v124 = v42;
            v175 = v174;
            sub_1BBC28128(v30);
            v176 = sub_1BBC36DCC(v173, v175, &aBlock);

            *(v171 + 4) = v176;
            _os_log_impl(&dword_1BBC06000, v169, v170, "Unable to derive collaboration identifier from collaboration info %s", v171, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v172);
            MEMORY[0x1BFB19980](v172, -1, -1);
            MEMORY[0x1BFB19980](v171, -1, -1);

LABEL_50:
            goto LABEL_31;
          }

LABEL_34:
          sub_1BBC28128(v30);
LABEL_53:
          sub_1BBC27FF0(v204, &qword_1EBCA5380, &qword_1BBC445A0);
          v128 = v42;
          return sub_1BBC28128(v128);
        }

        sub_1BBC27FF0(v105, &qword_1EBCA5380, &qword_1BBC445A0);
      }

      else
      {
        v95 = v81;
        v96 = v204;
        sub_1BBC27FF0(v204, &qword_1EBCA5380, &qword_1BBC445A0);
        (*(v79 + 32))(v96, v95, v2);
        v80(v96, 0, 1, v2);
      }
    }

    else
    {
      v89 = v81;
      v90 = *v81;

      v91 = [v90 URL];
      if (v91)
      {
        v92 = v190;
        v93 = v91;
        sub_1BBC4086C();

        sub_1BBC27FF0(v204, &qword_1EBCA5380, &qword_1BBC445A0);
        v94 = 0;
      }

      else
      {
        sub_1BBC27FF0(v204, &qword_1EBCA5380, &qword_1BBC445A0);

        v94 = 1;
        v92 = v190;
      }

      v80(v92, v94, 1, v2);
      sub_1BBC28050(v92, v204);
      v79 = v199;
    }

    v118 = v196;
    sub_1BBC280C0(v204, v196, &qword_1EBCA5380, &qword_1BBC445A0);
    if ((*(v79 + 48))(v118, 1, v2) != 1)
    {
      v129 = *(v79 + 32);
      v130 = v118;
      v131 = v195;
      v129(v195, v130, v2);
      v132 = v200;
      v203 = sub_1BBC1FB34();
      v201 = sub_1BBC4085C();
      v133 = v194;
      (*(v79 + 16))(v194, v131, v2);
      v134 = *(v79 + 80);
      v202 = v42;
      v135 = (v134 + 16) & ~v134;
      v136 = v2;
      v137 = (v193 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
      v138 = swift_allocObject();
      v129((v138 + v135), v133, v136);
      *(v138 + v137) = v132;
      v209 = sub_1BBC28184;
      v210 = v138;
      aBlock = MEMORY[0x1E69E9820];
      v206 = 1107296256;
      v207 = sub_1BBC23C94;
      v208 = &block_descriptor_0;
      v139 = _Block_copy(&aBlock);
      v140 = v132;

      v141 = v203;
      v142 = v201;
      [v203 getCollaborationHighlightForURL:v201 completionHandler:v139];
      _Block_release(v139);

      (*(v79 + 8))(v131, v136);
      sub_1BBC27FF0(v204, &qword_1EBCA5380, &qword_1BBC445A0);
      v128 = v202;
      return sub_1BBC28128(v128);
    }

    sub_1BBC27FF0(v118, &qword_1EBCA5380, &qword_1BBC445A0);
    sub_1BBC27EC8(v42, v30);
    v119 = sub_1BBC40A3C();
    v120 = sub_1BBC411CC();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      aBlock = v122;
      *v121 = 136315138;
      v123 = sub_1BBC1F354();
      v124 = v42;
      v126 = v125;
      sub_1BBC28128(v30);
      v127 = sub_1BBC36DCC(v123, v126, &aBlock);

      *(v121 + 4) = v127;
      _os_log_impl(&dword_1BBC06000, v119, v120, "Unable to derive share URL from collaboration info %s", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v122);
      MEMORY[0x1BFB19980](v122, -1, -1);
      MEMORY[0x1BFB19980](v121, -1, -1);

LABEL_31:
      sub_1BBC27FF0(v204, &qword_1EBCA5380, &qword_1BBC445A0);
      v128 = v124;
      return sub_1BBC28128(v128);
    }

    goto LABEL_34;
  }

  sub_1BBC27FF0(v48, &qword_1EBCA5228, &unk_1BBC446E0);
  v69 = v200;
  v70 = sub_1BBC40A3C();
  v71 = sub_1BBC411EC();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 138412290;
    *(v72 + 4) = v69;
    *v73 = v69;
    v74 = v69;
    _os_log_impl(&dword_1BBC06000, v70, v71, "Updating %@ for nil collaboration info.", v72, 0xCu);
    sub_1BBC27FF0(v73, &qword_1EBCA5388, &unk_1BBC445A8);
    MEMORY[0x1BFB19980](v73, -1, -1);
    MEMORY[0x1BFB19980](v72, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0;
  v75 = v69;
  sub_1BBC40ACC();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0;
  v206 = 0;
  v76 = v75;
  sub_1BBC40ACC();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0;
  v77 = v76;
  return sub_1BBC40ACC();
}

void sub_1BBC237E4(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_1BBC4088C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v46 - v16;
  if (a2)
  {
    v18 = a2;
    if (qword_1EBCA4F38 != -1)
    {
      swift_once();
    }

    v19 = sub_1BBC40A5C();
    __swift_project_value_buffer(v19, qword_1EBCA6B10);
    (*(v9 + 16))(v17, a3, v8);
    v20 = a2;
    v21 = sub_1BBC40A3C();
    v22 = sub_1BBC411DC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v47 = v24;
      *v23 = 136315394;
      v25 = sub_1BBC4084C();
      v27 = v26;
      (*(v9 + 8))(v17, v8);
      v28 = sub_1BBC36DCC(v25, v27, &v47);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v29 = sub_1BBC4081C();
      v30 = [v29 description];

      v31 = sub_1BBC410EC();
      v33 = v32;

      v34 = sub_1BBC36DCC(v31, v33, &v47);

      *(v23 + 14) = v34;
      _os_log_impl(&dword_1BBC06000, v21, v22, "Error fetching collaboration highlights for url %s. Error: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB19980](v24, -1, -1);
      MEMORY[0x1BFB19980](v23, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v17, v8);
    }
  }

  else if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = a1;
    v35 = a1;
    v36 = a4;
    sub_1BBC40ACC();
  }

  else
  {
    if (qword_1EBCA4F30 != -1)
    {
      swift_once();
    }

    v37 = sub_1BBC40A5C();
    __swift_project_value_buffer(v37, qword_1EBCA6AF8);
    (*(v9 + 16))(v14, a3, v8);
    v38 = sub_1BBC40A3C();
    v39 = sub_1BBC411DC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v41;
      *v40 = 136315138;
      v42 = sub_1BBC4084C();
      v44 = v43;
      (*(v9 + 8))(v14, v8);
      v45 = sub_1BBC36DCC(v42, v44, &v47);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1BBC06000, v38, v39, "Found no collaboration highlights in highlight center for url %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1BFB19980](v41, -1, -1);
      MEMORY[0x1BFB19980](v40, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }
  }
}

void sub_1BBC23C94(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1BBC23D20(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v30 = a6;
  v31 = a3;
  v13 = sub_1BBC4106C();
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1BBC410AC();
  v18 = *(v33 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v33, v20);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBC1D534(0, &unk_1EBCA57D0, 0x1E69E9610);
  v32 = sub_1BBC4123C();
  sub_1BBC1D3EC(a1, v36);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  sub_1BBC28380(v36, (v23 + 24));
  v24 = v31;
  *(v23 + 56) = v30;
  *(v23 + 64) = a7;
  *(v23 + 72) = a8;
  *(v23 + 80) = v24;
  *(v23 + 88) = a4;
  aBlock[4] = sub_1BBC28390;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBC2B520;
  aBlock[3] = &block_descriptor_87;
  v25 = _Block_copy(aBlock);

  v26 = a8;

  sub_1BBC4108C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BBC283A8(&qword_1EBCA53C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA57E0, &unk_1BBC445D0);
  sub_1BBC1D5D4(&qword_1EBCA53D0, &qword_1EBCA57E0, &unk_1BBC445D0);
  sub_1BBC412CC();
  v27 = v32;
  MEMORY[0x1BFB18E80](0, v22, v17, v25);
  _Block_release(v25);

  (*(v34 + 8))(v17, v13);
  return (*(v18 + 8))(v22, v33);
}

uint64_t sub_1BBC24064(char a1, uint64_t a2, void (*a3)(char *, uint64_t, unint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a7;
  v67 = a5;
  v68 = a6;
  v69 = a2;
  v70 = a3;
  v71 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5380, &qword_1BBC445A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v62 - v11;
  v13 = sub_1BBC4088C();
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v72 = (&v62 - v25);
  if (qword_1EBCA4F30 != -1)
  {
    swift_once();
  }

  v26 = sub_1BBC40A5C();
  __swift_project_value_buffer(v26, qword_1EBCA6AF8);
  v27 = sub_1BBC40A3C();
  v28 = sub_1BBC411EC();
  v29 = os_log_type_enabled(v27, v28);
  v65 = v12;
  v63 = v17;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v74[0] = v31;
    *v30 = 136315138;
    LOBYTE(v73) = a1;
    v32 = sub_1BBC410FC();
    v34 = sub_1BBC36DCC(v32, v33, v74);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_1BBC06000, v27, v28, "Loaded itemProvider with collaborationEngine: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1BFB19980](v31, -1, -1);
    MEMORY[0x1BFB19980](v30, -1, -1);
  }

  v35 = type metadata accessor for CollaborationInfo(0);
  v36 = *(*(v35 - 8) + 56);
  v36(v72, 1, 1, v35);
  if (!a1)
  {
    v38 = v69;
    sub_1BBC1D3EC(v69, v74);
    sub_1BBC1D534(0, &qword_1EBCA53D8, 0x1E695BA18);
    if (swift_dynamicCast())
    {
      v39 = v36;
      v40 = v73;
      v41 = [v73 share];

      v42 = v41;
      if (!v41)
      {
        v44 = 0;
        v43 = 0;
        goto LABEL_30;
      }

      v43 = v42;
    }

    else
    {
      sub_1BBC1D3EC(v38, v74);
      sub_1BBC1D534(0, &qword_1EBCA5390, 0x1E695BA10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v36(v23, 1, 1, v35);
        v52 = v23;
        v53 = v67;
        v54 = 0x4000000000000000;
        goto LABEL_24;
      }

      v39 = v36;
      v69 = v23;
      v55 = v73;
      v43 = [v55 share];
      v56 = [v55 containerSetupInfo];

      v44 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerSetupInfo_];
      if (!v43)
      {
        v23 = v69;
        goto LABEL_30;
      }

      if (v44)
      {
        v57 = v72;
        sub_1BBC27FF0(v72, &qword_1EBCA5228, &unk_1BBC446E0);

        *v57 = v43;
        *(v57 + 8) = v44;
        *(v57 + 16) = 1;
        v36 = v39;
        goto LABEL_21;
      }

      v23 = v69;
    }

    v44 = 0;
LABEL_30:
    v39(v23, 1, 1, v35);
    v70(v23, 0, 0x8000000000000000, 0, 0);

    goto LABEL_31;
  }

  if (a1 != 1)
  {
    sub_1BBC1D3EC(v69, v74);
    v45 = v65;
    v46 = swift_dynamicCast();
    v47 = v64;
    v48 = *(v64 + 56);
    if (v46)
    {
      v62 = v36;
      v69 = v23;
      v48(v45, 0, 1, v13);
      v49 = *(v47 + 32);
      v50 = v63;
      v49(v63, v45, v13);
      if (sub_1BBC4083C())
      {
        v51 = v72;
        sub_1BBC27FF0(v72, &qword_1EBCA5228, &unk_1BBC446E0);
        v49(v51, v50, v13);
        v36 = v62;
        goto LABEL_21;
      }

      (*(v47 + 8))(v50, v13);
      v23 = v69;
      v36 = v62;
    }

    else
    {
      v48(v45, 1, 1, v13);
      sub_1BBC27FF0(v45, &qword_1EBCA5380, &qword_1BBC445A0);
    }

    v36(v23, 1, 1, v35);
    v54 = 0x4000000000000002;
    v52 = v23;
    v53 = v67;
    v59 = v68;
    v60 = v66;
    goto LABEL_27;
  }

  sub_1BBC1D3EC(v69, v74);
  sub_1BBC1D534(0, &qword_1EBCA5360, 0x1E697B728);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36(v23, 1, 1, v35);
    v52 = v23;
    v53 = v67;
    v54 = 0x4000000000000001;
LABEL_24:
    v59 = v68;
    v60 = v66;
LABEL_27:
    v70(v52, v53, v54, v59, v60);
LABEL_31:
    sub_1BBC27FF0(v23, &qword_1EBCA5228, &unk_1BBC446E0);
    return sub_1BBC27FF0(v72, &qword_1EBCA5228, &unk_1BBC446E0);
  }

  v37 = v72;
  sub_1BBC27FF0(v72, &qword_1EBCA5228, &unk_1BBC446E0);
  *v37 = v73;
LABEL_21:
  v58 = v72;
  swift_storeEnumTagMultiPayload();
  v36(v58, 0, 1, v35);
  v70(v58, 0, 0x3FFFFFFFCuLL, 0, 0);
  return sub_1BBC27FF0(v72, &qword_1EBCA5228, &unk_1BBC446E0);
}

void sub_1BBC2482C(uint64_t a1, NSObject *a2, void (*a3)(uint64_t *, void, void, unint64_t, void))
{
  if (a2)
  {
    v4 = a2;
    if (qword_1EBCA4F38 != -1)
    {
      swift_once();
    }

    v5 = sub_1BBC40A5C();
    __swift_project_value_buffer(v5, qword_1EBCA6B10);
    v6 = a2;
    v7 = sub_1BBC40A3C();
    v8 = sub_1BBC411DC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21[0] = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_1BBC413DC();
      v13 = sub_1BBC36DCC(v11, v12, v21);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1BBC06000, v7, v8, "Failed to load object from item provider with error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1BFB19980](v10, -1, -1);
      MEMORY[0x1BFB19980](v9, -1, -1);

      return;
    }

    v16 = a2;
  }

  else
  {
    if (a1)
    {
      v21[3] = swift_getObjectType();
      v21[0] = a1;
      swift_unknownObjectRetain();
      a3(v21, 0, 0, 0xE000000000000000, 0);
      __swift_destroy_boxed_opaque_existential_0(v21);
      return;
    }

    if (qword_1EBCA4F38 != -1)
    {
      swift_once();
    }

    v17 = sub_1BBC40A5C();
    __swift_project_value_buffer(v17, qword_1EBCA6B10);
    oslog = sub_1BBC40A3C();
    v18 = sub_1BBC411DC();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BBC06000, oslog, v18, "Object loaded from item provider is nil", v19, 2u);
      MEMORY[0x1BFB19980](v19, -1, -1);
    }

    v16 = oslog;
  }
}

uint64_t sub_1BBC24B10(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BBC24B90(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, void, unint64_t, uint64_t))
{
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA53A0, &qword_1BBC445B8);
  v7[0] = a1;
  swift_unknownObjectRetain();
  a3(v7, 1, 0, 0xE000000000000000, a2);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void sub_1BBC24C14(uint64_t a1, uint64_t a2, NSObject *a3, void (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5380, &qword_1BBC445A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v38 - v16;
  v18 = sub_1BBC4088C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v24 = a3;
    if (qword_1EBCA4F38 != -1)
    {
      swift_once();
    }

    v25 = sub_1BBC40A5C();
    __swift_project_value_buffer(v25, qword_1EBCA6B10);
    v26 = a3;
    v27 = sub_1BBC40A3C();
    v28 = sub_1BBC411DC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = sub_1BBC413DC();
      v33 = sub_1BBC36DCC(v31, v32, v40);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1BBC06000, v27, v28, "Failed to load object from item provider with error: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x1BFB19980](v30, -1, -1);
      MEMORY[0x1BFB19980](v29, -1, -1);

      return;
    }

    goto LABEL_14;
  }

  sub_1BBC280C0(a1, v17, &qword_1EBCA5380, &qword_1BBC445A0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1BBC27FF0(v17, &qword_1EBCA5380, &qword_1BBC445A0);
    if (qword_1EBCA4F38 != -1)
    {
      swift_once();
    }

    v34 = sub_1BBC40A5C();
    __swift_project_value_buffer(v34, qword_1EBCA6B10);
    a3 = sub_1BBC40A3C();
    v35 = sub_1BBC411DC();
    if (os_log_type_enabled(a3, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1BBC06000, a3, v35, "Object loaded from item provider is nil", v36, 2u);
      MEMORY[0x1BFB19980](v36, -1, -1);
    }

LABEL_14:

    return;
  }

  (*(v19 + 32))(v23, v17, v18);
  v40[3] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v40);
  (*(v19 + 16))(boxed_opaque_existential_0, v23, v18);
  a4(v40, a6, a7, v39, 0);
  (*(v19 + 8))(v23, v18);
  __swift_destroy_boxed_opaque_existential_0(v40);
}

void sub_1BBC25058(uint64_t a1, NSObject *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5380, &qword_1BBC445A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v37 - v15;
  v17 = sub_1BBC4088C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = a2;
    if (qword_1EBCA4F38 != -1)
    {
      swift_once();
    }

    v24 = sub_1BBC40A5C();
    __swift_project_value_buffer(v24, qword_1EBCA6B10);
    v25 = a2;
    v26 = sub_1BBC40A3C();
    v27 = sub_1BBC411DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39[0] = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = sub_1BBC413DC();
      v32 = sub_1BBC36DCC(v30, v31, v39);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1BBC06000, v26, v27, "Failed to load object from item provider with error: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1BFB19980](v29, -1, -1);
      MEMORY[0x1BFB19980](v28, -1, -1);

      return;
    }

    goto LABEL_14;
  }

  sub_1BBC280C0(a1, v16, &qword_1EBCA5380, &qword_1BBC445A0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1BBC27FF0(v16, &qword_1EBCA5380, &qword_1BBC445A0);
    if (qword_1EBCA4F38 != -1)
    {
      swift_once();
    }

    v33 = sub_1BBC40A5C();
    __swift_project_value_buffer(v33, qword_1EBCA6B10);
    a2 = sub_1BBC40A3C();
    v34 = sub_1BBC411DC();
    if (os_log_type_enabled(a2, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BBC06000, a2, v34, "Object loaded from item provider is nil", v35, 2u);
      MEMORY[0x1BFB19980](v35, -1, -1);
    }

LABEL_14:

    return;
  }

  (*(v18 + 32))(v22, v16, v17);
  v39[3] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
  (*(v18 + 16))(boxed_opaque_existential_0, v22, v17);
  a3(v39, a5, a6, v38, 0);
  (*(v18 + 8))(v22, v17);
  __swift_destroy_boxed_opaque_existential_0(v39);
}

id CollaborationDetailViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CollaborationDetailViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BBC257D8@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_1BBC40A6C();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall CollaborationDetailViewModel.highlightCenterHighlightsDidChange(_:)(SWHighlightCenter *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v6 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  sub_1BBC22424(v5);
  sub_1BBC27FF0(v5, &qword_1EBCA5228, &unk_1BBC446E0);
}

uint64_t sub_1BBC259E4(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();
}

uint64_t sub_1BBC25A60(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  sub_1BBC280C0(a1, &v16 - v11, &qword_1EBCA5228, &unk_1BBC446E0);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC280C0(v12, v9, &qword_1EBCA5228, &unk_1BBC446E0);
  v14 = v13;
  sub_1BBC40ACC();
  return sub_1BBC27FF0(v12, &qword_1EBCA5228, &unk_1BBC446E0);
}

char *sub_1BBC25B8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA53A8, &qword_1BBC445C0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1BBC25C98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1BBC413EC();
  sub_1BBC4110C();
  v9 = sub_1BBC413FC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1BBC413AC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1BBC26048(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1BBC25DE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA53B0, &qword_1BBC445C8);
  result = sub_1BBC412EC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1BBC413EC();
      sub_1BBC4110C();
      result = sub_1BBC413FC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1BBC26048(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1BBC25DE8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1BBC261C8();
      goto LABEL_16;
    }

    sub_1BBC26324(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1BBC413EC();
  sub_1BBC4110C();
  result = sub_1BBC413FC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1BBC413AC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1BBC413CC();
  __break(1u);
  return result;
}

void *sub_1BBC261C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA53B0, &qword_1BBC445C8);
  v2 = *v0;
  v3 = sub_1BBC412DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BBC26324(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA53B0, &qword_1BBC445C8);
  result = sub_1BBC412EC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1BBC413EC();

      sub_1BBC4110C();
      result = sub_1BBC413FC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

id sub_1BBC2655C(void *a1)
{
  v97 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51F0, &qword_1BBC44290);
  v95 = *(v2 - 8);
  v96 = v2;
  v3 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v94 = &v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA51D8, &qword_1BBC44220);
  v92 = *(v6 - 8);
  v93 = v6;
  v7 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v91 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5200, &qword_1BBC442A0);
  v89 = *(v10 - 8);
  v90 = v10;
  v11 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v88 = &v74 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5208, &qword_1BBC442A8);
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v85 = &v74 - v17;
  v84 = sub_1BBC4091C();
  v83 = *(v84 - 8);
  v18 = *(v83 + 64);
  v20 = MEMORY[0x1EEE9AC00](v84, v19);
  v81 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v80 = &v74 - v23;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5210, &qword_1BBC442B0);
  v78 = *(v79 - 8);
  v24 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79, v25);
  v77 = &v74 - v26;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5218, &qword_1BBC442B8);
  v75 = *(v76 - 8);
  v27 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76, v28);
  v30 = &v74 - v29;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5220, &unk_1BBC442C0);
  v31 = *(v82 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v82, v33);
  v35 = &v74 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  v37 = *(*(v36 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v41 = &v74 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = &v74 - v43;
  *&v1[OBJC_IVAR___SWCollaborationDetailViewModel____lazy_storage___highlightCenter] = 0;
  swift_unknownObjectWeakInit();
  v45 = OBJC_IVAR___SWCollaborationDetailViewModel__collaborationInfo;
  v46 = type metadata accessor for CollaborationInfo(0);
  (*(*(v46 - 8) + 56))(v44, 1, 1, v46);
  sub_1BBC280C0(v44, v41, &qword_1EBCA5228, &unk_1BBC446E0);
  sub_1BBC40A7C();
  sub_1BBC27FF0(v44, &qword_1EBCA5228, &unk_1BBC446E0);
  (*(v31 + 32))(&v1[v45], v35, v82);
  v47 = OBJC_IVAR___SWCollaborationDetailViewModel__highlight;
  v101 = 0;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5248, &qword_1BBC442D0);
  sub_1BBC40A7C();
  v48 = v75;
  v49 = v30;
  v50 = v76;
  (*(v75 + 32))(&v1[v47], v49, v76);
  v51 = OBJC_IVAR___SWCollaborationDetailViewModel__customContentTitle;
  v101 = 0;
  v102 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5258, &qword_1BBC442D8);
  v52 = v77;
  sub_1BBC40A7C();
  (*(v78 + 32))(&v1[v51], v52, v79);
  v53 = OBJC_IVAR___SWCollaborationDetailViewModel__headerFallback;
  v54 = v80;
  sub_1BBC408DC();
  v55 = v83;
  v56 = v84;
  (*(v83 + 16))(v81, v54, v84);
  v57 = v85;
  sub_1BBC40A7C();
  (*(v55 + 8))(v54, v56);
  (*(v86 + 32))(&v1[v53], v57, v87);
  v58 = OBJC_IVAR___SWCollaborationDetailViewModel__customCollaborators;
  v101 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5270, &qword_1BBC442E0);
  v59 = v88;
  sub_1BBC40A7C();
  (*(v89 + 32))(&v1[v58], v59, v90);
  v60 = OBJC_IVAR___SWCollaborationDetailViewModel__manageButtonTitle;
  sub_1BBC1D534(0, &unk_1EBCA5278, off_1E7FDD5F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v62 = [objc_opt_self() bundleForClass_];
  v63 = sub_1BBC4080C();
  v65 = v64;

  v101 = v63;
  v102 = v65;
  v66 = v91;
  sub_1BBC40A7C();
  (*(v92 + 32))(&v1[v60], v66, v93);
  v67 = OBJC_IVAR___SWCollaborationDetailViewModel__showManageButton;
  LOBYTE(v101) = 1;
  v68 = v94;
  sub_1BBC40A7C();
  (*(v95 + 32))(&v1[v67], v68, v96);
  v69 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  *&v1[OBJC_IVAR___SWCollaborationDetailViewModel_itemProvider] = v69;
  swift_beginAccess();
  v70 = *(v48 + 8);
  v71 = v97;
  v72 = v97;
  v70(&v1[v47], v50);
  v100 = v71;
  sub_1BBC40A7C();
  swift_endAccess();
  v99.receiver = v1;
  v99.super_class = ObjectType;
  return objc_msgSendSuper2(&v99, sel_init);
}

uint64_t sub_1BBC26EBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA53B0, &qword_1BBC445C8);
    v3 = sub_1BBC412FC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1BBC413EC();

      sub_1BBC4110C();
      result = sub_1BBC413FC();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1BBC413AC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1BBC27024(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1BFB18DF0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1BBC25C98(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1BBC270BC()
{
  v0 = sub_1BBC4138C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_1BBC27108(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBC40A1C();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v54 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBCA4F30 != -1)
  {
    swift_once();
  }

  v10 = sub_1BBC40A5C();
  __swift_project_value_buffer(v10, qword_1EBCA6AF8);
  v11 = a1;
  v12 = sub_1BBC40A3C();
  v13 = sub_1BBC411EC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_1BBC06000, v12, v13, "Received request to load collaborationInfo from itemProvider: %@", v14, 0xCu);
    sub_1BBC27FF0(v15, &qword_1EBCA5388, &unk_1BBC445A8);
    MEMORY[0x1BFB19980](v15, -1, -1);
    MEMORY[0x1BFB19980](v14, -1, -1);
  }

  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v57 = v17;
  v17[4] = v11;
  v18 = v11;

  v19 = 0;
  while (2)
  {
    v20 = *(&unk_1F3ABA898 + v19 + 32);
    v59 = v19 + 1;
    v58 = v20;
    v21 = sub_1BBC1EAA0(v20);
    v22 = v21;
    v23 = 0;
    v24 = v21 + 56;
    v25 = 1 << *(v21 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v21 + 56);
    v28 = (v25 + 63) >> 6;
    if (v27)
    {
      while (1)
      {
        v29 = v23;
LABEL_15:
        v30 = (*(v22 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v27)))));
        v32 = *v30;
        v31 = v30[1];

        v33 = sub_1BBC410BC();
        v34 = [v18 hasItemConformingToTypeIdentifier_];

        if (v34)
        {
          break;
        }

        v27 &= v27 - 1;

        v23 = v29;
        if (!v27)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_12:
        v29 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
          goto LABEL_31;
        }

        if (v29 >= v28)
        {
          break;
        }

        v27 = *(v24 + 8 * v29);
        ++v23;
        if (v27)
        {
          goto LABEL_15;
        }
      }

      v19 = v59;
      if (v59 != 3)
      {
        continue;
      }

      v58 = 0;
      v32 = 0;
      v31 = 0;
    }

    break;
  }

  sub_1BBC1D534(0, &qword_1EBCA5390, 0x1E695BA10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([v18 canLoadObjectOfClass_])
  {

    v36 = swift_allocObject();
    v37 = v57;
    *(v36 + 16) = sub_1BBC28248;
    *(v36 + 24) = v37;
    v64 = sub_1BBC282BC;
    v65 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1BBC24B10;
    v63 = &block_descriptor_81;
    v38 = _Block_copy(&aBlock);

    v39 = [v18 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v38];
LABEL_23:
    v43 = v39;

    _Block_release(v38);

    return;
  }

  sub_1BBC1D534(0, &qword_1EBCA5360, 0x1E697B728);
  v40 = swift_getObjCClassFromMetadata();
  if ([v18 canLoadObjectOfClass_])
  {

    v41 = swift_allocObject();
    v42 = v57;
    *(v41 + 16) = sub_1BBC28248;
    *(v41 + 24) = v42;
    v64 = sub_1BBC282B4;
    v65 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1BBC24B10;
    v63 = &block_descriptor_75;
    v38 = _Block_copy(&aBlock);

    v39 = [v18 loadObjectOfClass:v40 completionHandler:v38];
    goto LABEL_23;
  }

  if (v31)
  {
    v44 = [v18 registeredContentTypesForOpenInPlace];
    v45 = v56;
    v46 = sub_1BBC4117C();

    if (*(v46 + 16))
    {
      v48 = v54;
      v47 = v55;
      (*(v55 + 16))(v54, v46 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v45);

      v49 = swift_allocObject();
      v50 = v57;
      *(v49 + 16) = sub_1BBC28248;
      *(v49 + 24) = v50;
      *(v49 + 32) = v58;
      *(v49 + 40) = v32;
      *(v49 + 48) = v31;

      v51 = sub_1BBC4120C();

      (*(v47 + 8))(v48, v45);
      return;
    }

    sub_1BBC4088C();
    v52 = swift_allocObject();
    v53 = v57;
    *(v52 + 16) = sub_1BBC28248;
    *(v52 + 24) = v53;
    *(v52 + 32) = v58;
    *(v52 + 40) = v32;
    *(v52 + 48) = v31;
    sub_1BBC283A8(&qword_1EBCA5398, MEMORY[0x1E6968FB0]);
  }

LABEL_31:
}

uint64_t sub_1BBC278BC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BBC278F4()
{
  sub_1BBC27C10(319, &qword_1EBCA5298, &qword_1EBCA5228, &unk_1BBC446E0);
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_1BBC27C10(319, &qword_1EBCA52A0, &qword_1EBCA5248, &qword_1BBC442D0);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      sub_1BBC27C10(319, &qword_1EBCA52A8, &qword_1EBCA5258, &qword_1BBC442D8);
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_1BBC27BB8();
        if (v7 <= 0x3F)
        {
          v17 = *(v6 - 8) + 64;
          sub_1BBC27C10(319, &qword_1EBCA52B8, &qword_1EBCA5270, &qword_1BBC442E0);
          if (v9 <= 0x3F)
          {
            v18 = *(v8 - 8) + 64;
            sub_1BBC27C64(319, &qword_1EBCA52C0);
            if (v11 <= 0x3F)
            {
              v19 = *(v10 - 8) + 64;
              sub_1BBC27C64(319, &qword_1EBCA52C8);
              if (v13 <= 0x3F)
              {
                v20 = *(v12 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BBC27BB8()
{
  if (!qword_1EBCA52B0)
  {
    sub_1BBC4091C();
    v0 = sub_1BBC40ADC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCA52B0);
    }
  }
}

void sub_1BBC27C10(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1BBC40ADC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BBC27C64(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BBC40ADC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1BBC27D04()
{
  sub_1BBC27D8C();
  if (v0 <= 0x3F)
  {
    sub_1BBC27E28();
    if (v1 <= 0x3F)
    {
      sub_1BBC27E80();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1BBC27D8C()
{
  if (!qword_1EBCA5340)
  {
    sub_1BBC1D534(255, &qword_1EBCA5348, 0x1E695BAC8);
    sub_1BBC1D534(255, &qword_1EBCA5350, 0x1E695B888);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBCA5340);
    }
  }
}

void sub_1BBC27E28()
{
  if (!qword_1EBCA5358)
  {
    v0 = sub_1BBC1D534(0, &qword_1EBCA5360, 0x1E697B728);
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCA5358);
    }
  }
}

void sub_1BBC27E80()
{
  if (!qword_1EBCA5368)
  {
    v0 = sub_1BBC4088C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCA5368);
    }
  }
}

uint64_t sub_1BBC27EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollaborationInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1BBC27F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollaborationInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBC27FF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BBC28050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5380, &qword_1BBC445A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBC280C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BBC28128(uint64_t a1)
{
  v2 = type metadata accessor for CollaborationInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BBC28184(void *a1, void *a2)
{
  v5 = *(sub_1BBC4088C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BBC237E4(a1, a2, v2 + v6, v7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_65Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_1BBC28380(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1BBC283A8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1BBC283F0(id result, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
    v3 = result;
  }

  else if (!(a2 >> 62))
  {

    return result;
  }

  return result;
}

void sub_1BBC2844C(void *a1, unint64_t a2)
{
  if (a2 >> 2 != 0xFFFFFFFF)
  {
    sub_1BBC28460(a1, a2);
  }
}

void sub_1BBC28460(void *a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  else if (!(a2 >> 62))
  {
  }
}

uint64_t getEnumTagSinglePayload for CollaborationEngine(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CollaborationEngine(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BBC28674()
{
  result = qword_1EBCA53F0;
  if (!qword_1EBCA53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA53F0);
  }

  return result;
}

uint64_t type metadata accessor for ComposeViewController()
{
  result = qword_1EBCA5400;
  if (!qword_1EBCA5400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BBC28760()
{
  sub_1BBC1D534(319, &qword_1EBCA5410, 0x1E696ACA0);
  if (v0 <= 0x3F)
  {
    sub_1BBC2881C();
    if (v1 <= 0x3F)
    {
      sub_1BBC1D534(319, &qword_1EBCA5420, 0x1E69D37D8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BBC2881C()
{
  if (!qword_1EBCA5418)
  {
    type metadata accessor for CollaborationInfo(255);
    v0 = sub_1BBC412AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCA5418);
    }
  }
}

id sub_1BBC288A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v33 - v4;
  v6 = type metadata accessor for CollaborationInfo(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v33 - v14;
  v16 = type metadata accessor for ComposeViewController();
  sub_1BBC28D58(v0 + *(v16 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BBC28DC8(v5);
LABEL_9:
    v23 = objc_opt_self();
    v24 = 0;
    v21 = 0;
    v18 = 0;
    v25 = *(v0 + *(v16 + 24));
    v26 = *v0;
    goto LABEL_10;
  }

  sub_1BBC27F8C(v5, v15);
  sub_1BBC27F8C(v15, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1BBC28128(v12);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v22 = sub_1BBC4088C();
    (*(*(v22 - 8) + 8))(v12, v22);
    goto LABEL_9;
  }

  v18 = *v12;
  v19 = [v18 collaborationMetadata];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 defaultShareOptions];
  }

  else
  {
    v21 = 0;
  }

  v29 = *v0;
  v30 = *(v0 + *(v16 + 24));
  v31 = objc_opt_self();
  v32 = [v18 collaborationMetadata];
  v26 = v29;
  v25 = v30;
  v24 = v32;
  v23 = v31;
LABEL_10:
  v27 = [v23 newComposeViewControllerInstanceWithDelegate:v25 itemProvider:v26 collaborationOptions:v21 collaborationMetadata:v24];

  return v27;
}

uint64_t sub_1BBC28BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBC28D14(&qword_1EBCA5430);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BBC28C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBC28D14(&qword_1EBCA5430);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BBC28CD0()
{
  sub_1BBC28D14(&qword_1EBCA5430);
  sub_1BBC40D6C();
  __break(1u);
}

uint64_t sub_1BBC28D14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComposeViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBC28D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBC28DC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BBC28E3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BBC28E84(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1BBC28EF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1BBC28F44@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v119 = a4;
  LODWORD(v118) = a3;
  v121 = a1;
  v117 = a5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5440, &qword_1BBC44878);
  v6 = *(*(v112 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v112, v7);
  v110 = (&v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v10);
  v111 = &v99 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5448, &qword_1BBC44880);
  v115 = *(v12 - 8);
  v116 = v12;
  v13 = *(v115 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v114 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v113 = &v99 - v18;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5450, &qword_1BBC44888);
  v19 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107, v20);
  v108 = &v99 - v21;
  v22 = sub_1BBC409BC();
  v104 = *(v22 - 8);
  v105 = v22;
  v23 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v22, v24);
  v103 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5458, &qword_1BBC44890);
  v26 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102, v27);
  v29 = &v99 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5460, &qword_1BBC44898);
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v35 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v36);
  v106 = &v99 - v37;
  v101 = sub_1BBC4091C();
  v38 = *(v101 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v101, v40);
  v42 = &v99 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5468, qword_1BBC448A0);
  v44 = *(*(v43 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v43 - 8, v45);
  v109 = &v99 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v48);
  v120 = &v99 - v49;
  swift_getKeyPath();
  swift_getKeyPath();
  v50 = a2;
  sub_1BBC40ABC();

  v51 = v147;
  if (v147)
  {
    v52 = [v147 slHighlight];
    swift_getKeyPath();
    swift_getKeyPath();
    v100 = a2;
    sub_1BBC40ABC();

    v53 = v103;
    sub_1BBC409AC();
    sub_1BBC4103C();
    sub_1BBC40B4C();
    (*(v104 + 32))(v29, v53, v105);
    v54 = &v29[*(v102 + 36)];
    v55 = v152;
    *(v54 + 4) = v151;
    *(v54 + 5) = v55;
    *(v54 + 6) = v153;
    v56 = v148;
    *v54 = v147;
    *(v54 + 1) = v56;
    v57 = v150;
    *(v54 + 2) = v149;
    *(v54 + 3) = v57;
    sub_1BBC2ACDC(v29, v35, &qword_1EBCA5458, &qword_1BBC44890);
    v35[*(v30 + 36)] = 0;
    v58 = v106;
    sub_1BBC2ACDC(v35, v106, &qword_1EBCA5460, &qword_1BBC44898);
    sub_1BBC280C0(v58, v108, &qword_1EBCA5460, &qword_1BBC44898);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA54B8, &qword_1BBC44998);
    sub_1BBC2AB94();
    sub_1BBC1D5D4(&qword_1EBCA54D8, &qword_1EBCA54B8, &qword_1BBC44998);
    v59 = v120;
    sub_1BBC40CEC();

    sub_1BBC27FF0(v58, &qword_1EBCA5460, &qword_1BBC44898);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5470, &qword_1BBC44948);
    (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
    v61 = v121;
    v50 = v100;
  }

  else
  {
    v106 = v30;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BBC40ABC();

    v62 = sub_1BBC408BC();
    v63 = *(v38 + 8);
    v63(v42, v101);
    if (v62)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BBC40ABC();

      v105 = sub_1BBC40B9C();
      v135 = 1;
      v64 = v121;
      sub_1BBC29FE0(v42, &v123);
      v144 = v131;
      v145 = v132;
      v140 = v127;
      v141 = v128;
      v142 = v129;
      v143 = v130;
      v136 = v123;
      v137 = v124;
      v138 = v125;
      v139 = v126;
      v155 = v131;
      v156 = v132;
      v151 = v127;
      v152 = v128;
      v153 = v129;
      v154 = v130;
      v147 = v123;
      v148 = v124;
      v146 = v133;
      v157 = v133;
      v149 = v125;
      v150 = v126;
      sub_1BBC280C0(&v136, &v122, &qword_1EBCA54B0, &qword_1BBC44990);
      sub_1BBC27FF0(&v147, &qword_1EBCA54B0, &qword_1BBC44990);
      *(&v134[7] + 7) = v143;
      *(&v134[8] + 7) = v144;
      *(&v134[9] + 7) = v145;
      *(&v134[3] + 7) = v139;
      *(&v134[4] + 7) = v140;
      *(&v134[5] + 7) = v141;
      *(&v134[6] + 7) = v142;
      *(v134 + 7) = v136;
      *(&v134[1] + 7) = v137;
      *(&v134[10] + 7) = v146;
      *(&v134[2] + 7) = v138;
      v65 = v135;
      v63(v42, v101);
      v66 = v134[6];
      v67 = v108;
      *(v108 + 129) = v134[7];
      v68 = v134[9];
      *(v67 + 145) = v134[8];
      *(v67 + 161) = v68;
      *(v67 + 176) = *(&v134[9] + 15);
      v69 = v134[2];
      *(v67 + 65) = v134[3];
      v70 = v134[5];
      *(v67 + 81) = v134[4];
      *(v67 + 97) = v70;
      *(v67 + 113) = v66;
      v71 = v134[1];
      *(v67 + 17) = v134[0];
      *(v67 + 33) = v71;
      *v67 = v105;
      *(v67 + 8) = 0;
      *(v67 + 16) = v65;
      *(v67 + 49) = v69;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA54B8, &qword_1BBC44998);
      sub_1BBC2AB94();
      sub_1BBC1D5D4(&qword_1EBCA54D8, &qword_1EBCA54B8, &qword_1BBC44998);
      v72 = v120;
      v61 = v64;
      sub_1BBC40CEC();
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5470, &qword_1BBC44948);
      (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
    }

    else
    {
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5470, &qword_1BBC44948);
      (*(*(v74 - 8) + 56))(v120, 1, 1, v74);
      v61 = v121;
    }
  }

  v75 = [objc_opt_self() currentDevice];
  v76 = [v75 userInterfaceIdiom];

  if (v76 == 6)
  {
    v77 = 0x402A000000000000;
  }

  else
  {
    v77 = 0x4024000000000000;
  }

  v78 = sub_1BBC40B9C();
  v79 = v110;
  *v110 = v78;
  *(v79 + 8) = v77;
  *(v79 + 16) = 0;
  v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5478, &unk_1BBC44950) + 44);
  *&v136 = &unk_1F3ABA8E8;
  swift_getKeyPath();
  v81 = swift_allocObject();
  *(v81 + 16) = v61;
  *(v81 + 24) = v50;
  v82 = v118 & 1;
  *(v81 + 32) = v118 & 1;
  v83 = v119;
  *(v81 + 40) = v119;

  v118 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA57C0, &qword_1BBC44978);
  sub_1BBC1D5D4(&qword_1EBCA5480, &qword_1EBCA57C0, &qword_1BBC44978);
  sub_1BBC2AADC();
  sub_1BBC2AB30();
  sub_1BBC4101C();
  v84 = v111;
  sub_1BBC2ACDC(v79, v111, &qword_1EBCA5440, &qword_1BBC44878);
  LOBYTE(v123) = v82;
  *(&v123 + 1) = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5498, &qword_1BBC44980);
  sub_1BBC40FDC();
  LODWORD(v110) = v137;
  v85 = swift_allocObject();
  v86 = v118;
  *(v85 + 16) = v121;
  *(v85 + 24) = v86;
  *(v85 + 32) = v82;
  *(v85 + 40) = v83;
  type metadata accessor for ComposeViewController();
  sub_1BBC1D5D4(&qword_1EBCA54A0, &qword_1EBCA5440, &qword_1BBC44878);
  sub_1BBC2ADD8(&qword_1EBCA5428, type metadata accessor for ComposeViewController);
  v87 = v86;

  v88 = v113;
  sub_1BBC40F3C();

  sub_1BBC27FF0(v84, &qword_1EBCA5440, &qword_1BBC44878);
  v89 = v120;
  v90 = v109;
  sub_1BBC280C0(v120, v109, &qword_1EBCA5468, qword_1BBC448A0);
  v92 = v114;
  v91 = v115;
  v93 = *(v115 + 16);
  v94 = v116;
  v93(v114, v88, v116);
  v95 = v117;
  sub_1BBC280C0(v90, v117, &qword_1EBCA5468, qword_1BBC448A0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA54A8, &qword_1BBC44988);
  v93((v95 + *(v96 + 48)), v92, v94);
  v97 = *(v91 + 8);
  v97(v88, v94);
  sub_1BBC27FF0(v89, &qword_1EBCA5468, qword_1BBC448A0);
  v97(v92, v94);
  return sub_1BBC27FF0(v90, &qword_1EBCA5468, qword_1BBC448A0);
}

uint64_t sub_1BBC29D90@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5228, &unk_1BBC446E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &aBlock[-1] - v13;
  v15 = OBJC_IVAR___SWCollaborationDetailViewModel_itemProvider;
  swift_beginAccess();
  v16 = *&a2[v15];
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v16;
  sub_1BBC40ABC();

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *a5 = v17;
  v19 = type metadata accessor for ComposeViewController();
  sub_1BBC280C0(v14, a5 + *(v19 + 20), &qword_1EBCA5228, &unk_1BBC446E0);
  v20 = objc_opt_self();
  aBlock[4] = sub_1BBC2AD64;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBC28EF0;
  aBlock[3] = &block_descriptor_1;
  v21 = _Block_copy(aBlock);

  v22 = v17;
  v23 = a2;

  v24 = [v20 newComposeViewControllerDelegateInstance_];
  _Block_release(v21);

  result = sub_1BBC27FF0(v14, &qword_1EBCA5228, &unk_1BBC446E0);
  *(a5 + *(v19 + 24)) = v24;
  return result;
}

uint64_t sub_1BBC29FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v3 = sub_1BBC40F9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBC4090C();
  (*(v4 + 104))(v8, *MEMORY[0x1E6981630], v3);
  v28 = sub_1BBC40FAC();

  (*(v4 + 8))(v8, v3);
  v9 = objc_opt_self();
  v10 = [v9 currentDevice];
  [v10 userInterfaceIdiom];

  v11 = [v9 currentDevice];
  [v11 userInterfaceIdiom];

  sub_1BBC4103C();
  sub_1BBC40B0C();
  v60 = 1;
  *&v59[6] = v61;
  *&v59[22] = v62;
  *&v59[38] = v63;
  v12 = sub_1BBC40BCC();
  LOBYTE(v53[0]) = 1;
  sub_1BBC2A3F4(v29, v47);
  *&v46[7] = v47[0];
  *&v46[23] = v47[1];
  *&v46[39] = v47[2];
  *&v46[55] = v48;
  v13 = v53[0];
  v14 = v28;
  v49[0] = v28;
  v49[1] = 0;
  LOWORD(v50[0]) = 257;
  *(v50 + 2) = *v59;
  *(&v50[1] + 2) = *&v59[16];
  *(&v50[2] + 2) = *&v59[32];
  *&v50[3] = *&v59[46];
  WORD4(v50[3]) = 256;
  *(v39 + 10) = *(&v50[2] + 10);
  v39[0] = v50[2];
  v37 = v50[0];
  v38 = v50[1];
  v36 = v28;
  v51[0] = v12;
  v51[1] = 0;
  v52[0] = v53[0];
  v15 = *v46;
  *&v52[1] = *v46;
  *&v52[64] = *(&v48 + 1);
  v16 = *&v46[48];
  *&v52[49] = *&v46[48];
  v17 = *&v46[32];
  *&v52[33] = *&v46[32];
  v18 = *&v46[16];
  *&v52[17] = *&v46[16];
  v40 = v12;
  v41 = *v52;
  v43 = *&v52[32];
  v44 = *&v52[48];
  v42 = *&v52[16];
  v19 = v50[0];
  v20 = v50[1];
  *a2 = v28;
  *(a2 + 16) = v19;
  v21 = v39[0];
  v22 = v40;
  v23 = v41;
  *(a2 + 64) = v39[1];
  *(a2 + 80) = v22;
  *(a2 + 32) = v20;
  *(a2 + 48) = v21;
  v24 = v42;
  v25 = v44;
  *(a2 + 128) = v43;
  *(a2 + 144) = v25;
  *(a2 + 96) = v23;
  *(a2 + 112) = v24;
  v45 = *&v52[64];
  *(a2 + 160) = *&v52[64];
  v53[0] = v12;
  v53[1] = 0;
  v54 = v13;
  v56 = v18;
  v57 = v17;
  *v58 = v16;
  *&v58[15] = *&v46[63];
  v55 = v15;
  sub_1BBC280C0(v49, v30, &qword_1EBCA54E0, &qword_1BBC449A0);
  sub_1BBC280C0(v51, v30, &qword_1EBCA54E8, &qword_1BBC449A8);
  sub_1BBC27FF0(v53, &qword_1EBCA54E8, &qword_1BBC449A8);
  v30[0] = v14;
  v30[1] = 0;
  v31 = 257;
  v32 = *v59;
  v33 = *&v59[16];
  *v34 = *&v59[32];
  *&v34[14] = *&v59[46];
  v35 = 256;
  return sub_1BBC27FF0(v30, &qword_1EBCA54E0, &qword_1BBC449A0);
}

uint64_t sub_1BBC2A3F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a1;
  v50 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA54F0, &unk_1BBC449B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v39 - v5;
  v7 = sub_1BBC40E2C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBC408EC();
  v45 = *MEMORY[0x1E6980EF0];
  v44 = v8[13];
  v39 = v7;
  v44(v12);
  v42 = sub_1BBC40E0C();
  v13 = *(v42 - 8);
  v41 = *(v13 + 56);
  v43 = v13 + 56;
  v41(v6, 1, 1, v42);
  sub_1BBC40E1C();
  sub_1BBC27FF0(v6, &qword_1EBCA54F0, &unk_1BBC449B0);
  v40 = v8[1];
  v40(v12, v7);
  v14 = sub_1BBC40E7C();
  v16 = v15;
  v18 = v17;

  v19 = sub_1BBC40E6C();
  v48 = v20;
  v49 = v19;
  v22 = v21;
  v47 = v23;
  sub_1BBC2AD44(v14, v16, v18 & 1);

  sub_1BBC408FC();
  v24 = v39;
  (v44)(v12, v45, v39);
  v41(v6, 1, 1, v42);
  sub_1BBC40E1C();
  sub_1BBC27FF0(v6, &qword_1EBCA54F0, &unk_1BBC449B0);
  v40(v12, v24);
  v25 = sub_1BBC40E7C();
  v27 = v26;
  LOBYTE(v6) = v28;

  sub_1BBC40F7C();
  v29 = sub_1BBC40E5C();
  v31 = v30;
  LOBYTE(v12) = v32;
  v34 = v33;

  sub_1BBC2AD44(v25, v27, v6 & 1);

  v35 = v47 & 1;
  v51 = v47 & 1;
  v53 = v47 & 1;
  v52 = v12 & 1;
  v37 = v49;
  v36 = v50;
  *v50 = v49;
  v36[1] = v22;
  *(v36 + 16) = v35;
  v36[3] = v48;
  v36[4] = v29;
  v36[5] = v31;
  *(v36 + 48) = v12 & 1;
  v36[7] = v34;
  sub_1BBC2AD54(v37, v22, v35);

  sub_1BBC2AD54(v29, v31, v12 & 1);

  sub_1BBC2AD44(v29, v31, v12 & 1);

  sub_1BBC2AD44(v37, v22, v51);
}

uint64_t sub_1BBC2A808@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  if (*a1)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    *(v10 + 32) = a4 & 1;
    *(v10 + 40) = a5;

    v14 = a3;
    v9 = sub_1BBC2AE60;
  }

  type metadata accessor for CollaborationDetailViewModel(0);
  sub_1BBC2ADD8(&qword_1EBCA54F8, type metadata accessor for CollaborationDetailViewModel);
  v15 = a3;
  result = sub_1BBC40B1C();
  *a6 = result;
  *(a6 + 8) = v17;
  *(a6 + 16) = v8;
  *(a6 + 24) = v9;
  *(a6 + 32) = v10;
  return result;
}

void sub_1BBC2A90C()
{
  if ([objc_opt_self() canSendText])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BBC40ABC();

    if (v0)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5498, &qword_1BBC44980);
      sub_1BBC40FCC();
    }
  }
}

uint64_t sub_1BBC2A9FC@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = sub_1BBC40BCC();
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = v9 == 1 || v9 == 6;
  v11 = 0x4028000000000000;
  if (v10)
  {
    v11 = 0x4030000000000000;
  }

  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5438, &qword_1BBC44870);
  return sub_1BBC28F44(v4, v3, v5, v6, a1 + *(v12 + 44));
}

unint64_t sub_1BBC2AADC()
{
  result = qword_1EBCA5488;
  if (!qword_1EBCA5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5488);
  }

  return result;
}

unint64_t sub_1BBC2AB30()
{
  result = qword_1EBCA5490;
  if (!qword_1EBCA5490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5490);
  }

  return result;
}

unint64_t sub_1BBC2AB94()
{
  result = qword_1EBCA54C0;
  if (!qword_1EBCA54C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5460, &qword_1BBC44898);
    sub_1BBC2AC20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA54C0);
  }

  return result;
}

unint64_t sub_1BBC2AC20()
{
  result = qword_1EBCA54C8;
  if (!qword_1EBCA54C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCA5458, &qword_1BBC44890);
    sub_1BBC2ADD8(&qword_1EBCA54D0, MEMORY[0x1E69D37A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA54C8);
  }

  return result;
}

uint64_t sub_1BBC2ACDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BBC2AD44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BBC2AD54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BBC2AD64()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5498, &qword_1BBC44980);
  return sub_1BBC40FCC();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BBC2ADD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1BBC2AE60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1BBC2A90C();
}

uint64_t sub_1BBC2AE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBC2AFC8();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BBC2AEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBC2AFC8();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BBC2AF48()
{
  sub_1BBC2AFC8();
  sub_1BBC40D6C();
  __break(1u);
}

unint64_t sub_1BBC2AF74()
{
  result = qword_1EBCA5510;
  if (!qword_1EBCA5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5510);
  }

  return result;
}

unint64_t sub_1BBC2AFC8()
{
  result = qword_1EBCA5518;
  if (!qword_1EBCA5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5518);
  }

  return result;
}

id sub_1BBC2B01C(char *a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BBC4088C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BBC4083C())
  {
    (*(v3 + 16))(v7, a1, v2);
    v32[0] = 0;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC970]);
    v9 = sub_1BBC4085C();
    v31 = [v8 initWithFileURL:v9 error:v32];

    v10 = *(v3 + 8);
    v10(v7, v2);
    if (!v32[0])
    {
      v10(a1, v2);
      result = v31;
      goto LABEL_8;
    }

    v30 = v2;
    v11 = v32[0];
    v29[3] = sub_1BBC411DC();
    result = SWFrameworkLogHandle();
    if (result)
    {
      v13 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA5800, &qword_1BBC44B38);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BBC44A10;
      v15 = sub_1BBC4084C();
      v17 = v16;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      v18 = sub_1BBC2B39C();
      *(v14 + 64) = v18;
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      v19 = [v11 description];
      v20 = sub_1BBC410EC();
      v22 = v21;

      *(v14 + 96) = MEMORY[0x1E69E6158];
      *(v14 + 104) = v18;
      *(v14 + 72) = v20;
      *(v14 + 80) = v22;
      sub_1BBC40A2C();

      v10(a1, v30);

LABEL_7:
      result = 0;
LABEL_8:
      v28 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  else
  {
    sub_1BBC411DC();
    result = SWFrameworkLogHandle();
    if (result)
    {
      v23 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA5800, &qword_1BBC44B38);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BBC441B0;
      v25 = sub_1BBC4084C();
      v27 = v26;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1BBC2B39C();
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      sub_1BBC40A2C();

      (*(v3 + 8))(a1, v2);
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BBC2B39C()
{
  result = qword_1EBCA5520;
  if (!qword_1EBCA5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5520);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SWHighlightCenter.collaborationHighlight(forIdentifier:)(SWCollaborationHighlight *__return_ptr retstr, Swift::String forIdentifier)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1BBC410BC();
  v8[0] = 0;
  v4 = [v2 collaborationHighlightForIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1BBC4082C();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BBC2B520(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id _SWCollaborationButtonViewImpl.cloudSharingControllerDelegate.getter()
{
  v1 = [*(v0 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) cloudSharingControllerDelegate];

  return v1;
}

uint64_t _SWCollaborationButtonViewImpl.cloudSharingControllerDelegate.setter(uint64_t a1)
{
  [*(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) setCloudSharingControllerDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t (*_SWCollaborationButtonViewImpl.cloudSharingControllerDelegate.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController);
  a1[1] = v3;
  *a1 = [v3 cloudSharingControllerDelegate];
  return sub_1BBC2B6B4;
}

uint64_t sub_1BBC2B6B4(uint64_t a1)
{
  [*(a1 + 8) setCloudSharingControllerDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t _SWCollaborationButtonViewImpl.activeParticipantCount.getter()
{
  v1 = OBJC_IVAR____SWCollaborationButtonViewImpl_activeParticipantCount;
  swift_beginAccess();
  return *(v0 + v1);
}

id _SWCollaborationButtonViewImpl.activeParticipantCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____SWCollaborationButtonViewImpl_activeParticipantCount;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1BBC2B848(a1);
}

id sub_1BBC2B848(uint64_t a1)
{
  if (a1 && (v2 = *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_numberFormatter], v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_], v4 = objc_msgSend(v2, sel_stringFromNumber_, v3), v3, v4))
  {
    v5 = sub_1BBC410EC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_label];
    v10 = sub_1BBC410BC();
    [v9 setText_];

    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    v26 = sub_1BBC31028;
    v27 = v12;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1BBC2B520;
    v25 = &block_descriptor_99;
    v13 = _Block_copy(&v22);
    v14 = v1;

    [v11 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
  }

  else
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    v26 = sub_1BBC31030;
    v27 = v16;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1BBC2B520;
    v25 = &block_descriptor_105;
    v13 = _Block_copy(&v22);
    v17 = v1;

    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v5;
    v18[4] = v7;
    v26 = sub_1BBC31038;
    v27 = v18;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1BBC3501C;
    v25 = &block_descriptor_111;
    v19 = _Block_copy(&v22);
    v20 = v17;

    [v15 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
    _Block_release(v19);
  }

  _Block_release(v13);

  return [v1 invalidateIntrinsicContentSize];
}

void (*_SWCollaborationButtonViewImpl.activeParticipantCount.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____SWCollaborationButtonViewImpl_activeParticipantCount;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BBC2BC50;
}

void sub_1BBC2BC50(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BBC2B848(*(v3[3] + v3[4]));
  }

  free(v3);
}

void (*_SWCollaborationButtonViewImpl.headerTitle.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____SWCollaborationButtonViewImpl_headerTitle;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_1BBC2BD78;
}

id sub_1BBC2BD9C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_1BBC410BC();

  return v6;
}

uint64_t sub_1BBC2BE20(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

void sub_1BBC2BE8C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1BBC410EC();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1BBC2BF24(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;

  v10 = [*(v4 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) viewModel];
  v11 = *v8;
  v12 = v8[1];
  swift_getKeyPath();
  swift_getKeyPath();

  v13 = sub_1BBC40AAC();
  a4(v11, v12);
  v13(v15, 0);
}

void (*_SWCollaborationButtonViewImpl.headerSubtitle.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____SWCollaborationButtonViewImpl_headerSubtitle;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_1BBC2C0C8;
}

void sub_1BBC2C0E0(void **a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = v5[4];
    v7 = (v6 + v5[5]);
    v8 = [*(v6 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) viewModel];
    v9 = *v7;
    v10 = v7[1];
    swift_getKeyPath();
    swift_getKeyPath();

    v11 = sub_1BBC40AAC();
    a3(v9, v10);
    v11(v5, 0);
  }

  free(v5);
}

void *_SWCollaborationButtonViewImpl.headerImage.getter()
{
  v1 = OBJC_IVAR____SWCollaborationButtonViewImpl_headerImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void _SWCollaborationButtonViewImpl.headerImage.setter(void *a1)
{
  sub_1BBC306FC(a1);
}

void (*_SWCollaborationButtonViewImpl.headerImage.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____SWCollaborationButtonViewImpl_headerImage;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_1BBC2C3A4;
}

void sub_1BBC2C3A4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v4 = v3[5];
    v6 = [*(v5 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) viewModel];
    v7 = *(v5 + v4);
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v7;
    v9 = sub_1BBC40AAC();
    sub_1BBC408CC();
    v9(v3, 0);
  }

  free(v3);
}

void _SWCollaborationButtonViewImpl.outerButton.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*_SWCollaborationButtonViewImpl.outerButton.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____SWCollaborationButtonViewImpl_outerButton;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BBC2C5D4;
}

void sub_1BBC2C5D4(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_1BBC2C65C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1BBC2C6C0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1BBC2C710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t _SWCollaborationButtonViewImpl.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*_SWCollaborationButtonViewImpl.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____SWCollaborationButtonViewImpl_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BBC1FDA0;
}

char *sub_1BBC2C860(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____SWCollaborationButtonViewImpl_sharedWithYouCenter;
  *&v2[v5] = [objc_allocWithZone(SWHighlightCenter) init];
  *&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_activeParticipantCount] = 0;
  *&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_headerImage] = 0;
  v2[OBJC_IVAR____SWCollaborationButtonViewImpl__isContentShared] = 1;
  *&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_highlightSubscriptionCancellable] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_centerXAnchorHiddenLabel] = 0;
  *&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_attributionViewXAnchorVisibleLabel] = 0;
  *&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_labelXAnchorHidden] = 0;
  *&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_containerLeadingConstraint] = 0;
  *&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_containerTrailingConstraint] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____SWCollaborationButtonViewImpl_containerView;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v7 = OBJC_IVAR____SWCollaborationButtonViewImpl_label;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v8 = OBJC_IVAR____SWCollaborationButtonViewImpl_isRTL;
  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 userInterfaceLayoutDirection];

  v2[v8] = v10 == 1;
  v11 = OBJC_IVAR____SWCollaborationButtonViewImpl_numberFormatter;
  v12 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v12 setNumberStyle_];
  *&v2[v11] = v12;
  *&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] = a1;
  v13 = objc_opt_self();
  v14 = a1;
  v15 = [v13 buttonWithType_];
  *&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_button] = v15;
  v16 = &v2[OBJC_IVAR____SWCollaborationButtonViewImpl_headerTitle];
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = &v2[OBJC_IVAR____SWCollaborationButtonViewImpl_headerSubtitle];
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = objc_allocWithZone(sub_1BBC4099C());
  v19 = sub_1BBC4096C();
  sub_1BBC4095C();
  *&v2[OBJC_IVAR____SWCollaborationButtonViewImpl_attributionView] = v19;
  v51.receiver = v2;
  v51.super_class = ObjectType;
  v20 = v19;
  v21 = objc_msgSendSuper2(&v51, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v22 = *&v21[OBJC_IVAR____SWCollaborationButtonViewImpl_attributionView];
  v23 = v21;
  v24 = v22;
  v25 = [v23 tintColor];
  [v24 setTintColor_];

  v26 = OBJC_IVAR____SWCollaborationButtonViewImpl_button;
  v27 = *&v23[OBJC_IVAR____SWCollaborationButtonViewImpl_button];
  [v27 addTarget:v23 action:sel_buttonTapped_ forControlEvents:64];

  v28 = *&v23[v26];
  v29 = [v23 tintColor];
  [v28 setTintColor_];

  v30 = OBJC_IVAR____SWCollaborationButtonViewImpl_label;
  v31 = *&v23[OBJC_IVAR____SWCollaborationButtonViewImpl_label];
  v32 = [v23 tintColor];
  [v31 setTextColor_];

  v33 = *&v23[v30];
  v34 = [v23 traitCollection];

  result = [*&v23[v30] font];
  if (result)
  {
    v36 = result;
    [result pointSize];
    v38 = v37;

    v39 = [objc_opt_self() currentDevice];
    v40 = [v39 userInterfaceIdiom];

    v41 = objc_opt_self();
    if (v40 == 6)
    {
      v42 = [v41 preferredFontForTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:v34];
    }

    else
    {
      v42 = [v41 systemFontOfSize:v38 weight:*MEMORY[0x1E69DB970]];
    }

    v43 = v42;

    [v33 setFont_];
    v44 = objc_opt_self();
    v45 = swift_allocObject();
    *(v45 + 16) = v23;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1BBC310A0;
    *(v46 + 24) = v45;
    v50[4] = sub_1BBC31100;
    v50[5] = v46;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 1107296256;
    v50[2] = sub_1BBC2C494;
    v50[3] = &block_descriptor_121;
    v47 = _Block_copy(v50);
    v48 = v23;

    [v44 performWithoutAnimation_];

    _Block_release(v47);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v48;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BBC2CE84()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCA5670, &unk_1BBC44C10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v107 - v6;
  v8 = [*&v0[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] viewModel];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5218, &qword_1BBC442B8);
  sub_1BBC40A8C();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BBC1D5D4(&qword_1EBCA5680, &unk_1EBCA5670, &unk_1BBC44C10);
  v9 = sub_1BBC40AEC();

  (*(v3 + 8))(v7, v2);
  v10 = *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_highlightSubscriptionCancellable];
  *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_highlightSubscriptionCancellable] = v9;

  v11 = *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_containerView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v12 = *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_attributionView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 addSubview_];
  v13 = *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_label];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 addSubview_];
  v14 = *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_button];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v110 = v14;
  [v1 addSubview_];
  v15 = [v12 centerXAnchor];
  v16 = [v11 centerXAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  v18 = OBJC_IVAR____SWCollaborationButtonViewImpl_centerXAnchorHiddenLabel;
  v19 = *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_centerXAnchorHiddenLabel];
  *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_centerXAnchorHiddenLabel] = v17;

  v20 = [v13 centerXAnchor];
  v21 = [v11 centerXAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  v23 = OBJC_IVAR____SWCollaborationButtonViewImpl_labelXAnchorHidden;
  v24 = *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_labelXAnchorHidden];
  *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_labelXAnchorHidden] = v22;

  v111 = v13;
  v25 = [v13 leadingAnchor];
  v113 = v12;
  v26 = [v12 trailingAnchor];
  v27 = objc_opt_self();
  v28 = [v27 currentDevice];
  [v28 userInterfaceIdiom];

  v29 = [v25 constraintEqualToAnchor:v26 constant:2.0];
  v30 = OBJC_IVAR____SWCollaborationButtonViewImpl_attributionViewXAnchorVisibleLabel;
  v31 = *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_attributionViewXAnchorVisibleLabel];
  *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_attributionViewXAnchorVisibleLabel] = v29;

  v32 = *&v1[v30];
  if (v32)
  {
    [v32 setActive_];
  }

  v33 = *&v1[v18];
  if (v33)
  {
    [v33 setActive_];
  }

  v34 = *&v1[v23];
  if (v34)
  {
    [v34 setActive_];
  }

  v35 = [v27 currentDevice];
  v36 = [v35 userInterfaceIdiom];

  if (v36 == 6)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = 4.0;
  }

  v38 = [v11 leadingAnchor];
  v39 = [v1 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:v37];

  v41 = OBJC_IVAR____SWCollaborationButtonViewImpl_containerLeadingConstraint;
  v42 = *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_containerLeadingConstraint];
  *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_containerLeadingConstraint] = v40;

  v43 = [v11 trailingAnchor];
  v44 = [v1 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-v37];

  v46 = OBJC_IVAR____SWCollaborationButtonViewImpl_containerTrailingConstraint;
  v47 = *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_containerTrailingConstraint];
  *&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_containerTrailingConstraint] = v45;

  v48 = *&v1[v41];
  if (v48)
  {
    v49 = *&v1[v46];
    if (v49)
    {
      v50 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5688, &unk_1BBC44C20);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1BBC44B50;
      *(v51 + 32) = v48;
      *(v51 + 40) = v49;
      sub_1BBC1D534(0, &qword_1EBCA5690, 0x1E696ACD8);
      v52 = v48;
      v53 = v49;
      v54 = v52;
      v55 = v53;
      v56 = sub_1BBC4116C();

      [v50 activateConstraints_];
    }
  }

  v57 = v113;
  v58 = [v113 leadingAnchor];
  v59 = [v11 leadingAnchor];
  v60 = [v58 constraintGreaterThanOrEqualToAnchor_];

  v108 = v60;
  v61 = [v57 topAnchor];
  v62 = [v11 &selRef_type];
  v63 = [v61 byte_1E7FDE10F];

  v109 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5688, &unk_1BBC44C20);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1BBC44B60;
  v112 = v63;
  v65 = [v11 &selRef_type];
  v66 = [v1 &selRef_type];
  v67 = [v65 constraintEqualToAnchor_];

  *(v64 + 32) = v67;
  v68 = [v11 bottomAnchor];
  v69 = [v1 bottomAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v64 + 40) = v70;
  v71 = v110;
  v72 = [v110 leadingAnchor];
  v73 = [v1 leadingAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  *(v64 + 48) = v74;
  v75 = [v71 trailingAnchor];
  v76 = [v1 &selRef_hasRepresentationConformingToTypeIdentifier_ + 4];
  v77 = [v75 constraintEqualToAnchor_];

  *(v64 + 56) = v77;
  v78 = [v71 topAnchor];
  v79 = [v1 topAnchor];
  v80 = [v78 constraintEqualToAnchor_];

  *(v64 + 64) = v80;
  v81 = [v71 bottomAnchor];
  v82 = [v1 bottomAnchor];
  v83 = [v81 constraintEqualToAnchor_];

  v84 = v112;
  v85 = v113;
  *(v64 + 72) = v83;
  *(v64 + 80) = v84;
  v86 = [v85 bottomAnchor];
  v87 = [v11 bottomAnchor];
  v88 = [v86 constraintLessThanOrEqualToAnchor_];

  *(v64 + 88) = v88;
  v89 = [v85 centerYAnchor];
  v90 = [v11 centerYAnchor];
  v91 = [v89 constraintEqualToAnchor_];

  v92 = v108;
  *(v64 + 96) = v91;
  *(v64 + 104) = v92;
  v93 = v111;
  v94 = [v111 topAnchor];
  v95 = [v11 topAnchor];
  v96 = [v94 constraintGreaterThanOrEqualToAnchor_];

  *(v64 + 112) = v96;
  v97 = [v93 bottomAnchor];
  v98 = [v11 bottomAnchor];
  v99 = [v97 constraintLessThanOrEqualToAnchor_];

  *(v64 + 120) = v99;
  v100 = [v93 centerYAnchor];
  v101 = [v11 centerYAnchor];
  v102 = [v100 constraintEqualToAnchor_];

  *(v64 + 128) = v102;
  v103 = [v93 trailingAnchor];
  v104 = [v11 trailingAnchor];
  v105 = [v103 constraintEqualToAnchor_];

  *(v64 + 136) = v105;
  sub_1BBC1D534(0, &qword_1EBCA5690, 0x1E696ACD8);
  v106 = sub_1BBC4116C();

  [v109 activateConstraints_];

  [v113 setRemoteRenderingEnabled_];
}

uint64_t sub_1BBC2DB0C(void *a1)
{
  swift_getObjectType();
  v2 = OBJC_IVAR____SWCollaborationButtonViewImpl_sharedWithYouCenter;
  v18 = OBJC_IVAR____SWCollaborationButtonViewImpl_sharedWithYouCenter;
  *(v1 + v2) = [objc_allocWithZone(SWHighlightCenter) init];
  *(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_activeParticipantCount) = 0;
  v3 = OBJC_IVAR____SWCollaborationButtonViewImpl_headerImage;
  *(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_headerImage) = 0;
  *(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl__isContentShared) = 1;
  v4 = OBJC_IVAR____SWCollaborationButtonViewImpl_highlightSubscriptionCancellable;
  *(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_highlightSubscriptionCancellable) = 0;
  v16 = OBJC_IVAR____SWCollaborationButtonViewImpl_presentingViewController;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____SWCollaborationButtonViewImpl_centerXAnchorHiddenLabel;
  *(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_centerXAnchorHiddenLabel) = 0;
  v6 = OBJC_IVAR____SWCollaborationButtonViewImpl_attributionViewXAnchorVisibleLabel;
  *(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_attributionViewXAnchorVisibleLabel) = 0;
  v17 = OBJC_IVAR____SWCollaborationButtonViewImpl_labelXAnchorHidden;
  *(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_labelXAnchorHidden) = 0;
  v19 = OBJC_IVAR____SWCollaborationButtonViewImpl_containerLeadingConstraint;
  *(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_containerLeadingConstraint) = 0;
  v21 = OBJC_IVAR____SWCollaborationButtonViewImpl_containerTrailingConstraint;
  *(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_containerTrailingConstraint) = 0;
  v22 = OBJC_IVAR____SWCollaborationButtonViewImpl_outerButton;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____SWCollaborationButtonViewImpl_delegate;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____SWCollaborationButtonViewImpl_containerView;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x1E69DD250]) &selRef__updateSLAttributionViewSupplementalMenu];
  v8 = OBJC_IVAR____SWCollaborationButtonViewImpl_label;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) &selRef__updateSLAttributionViewSupplementalMenu];
  v9 = OBJC_IVAR____SWCollaborationButtonViewImpl_isRTL;
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 userInterfaceLayoutDirection];

  *(v1 + v9) = v11 == 1;
  v12 = OBJC_IVAR____SWCollaborationButtonViewImpl_numberFormatter;
  v13 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v13 setNumberStyle_];

  *(v1 + v12) = v13;
  v14 = *(v1 + v4);

  MEMORY[0x1BFB19A10](v1 + v16);

  MEMORY[0x1BFB19A10](v1 + v22);
  sub_1BBC27F2C(v1 + v20);

  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall _SWCollaborationButtonViewImpl.tintColorDidChange()()
{
  v1 = *&v0[OBJC_IVAR____SWCollaborationButtonViewImpl_button];
  v2 = [v0 tintColor];
  [v1 setTintColor_];

  v3 = *&v0[OBJC_IVAR____SWCollaborationButtonViewImpl_label];
  v4 = [v0 tintColor];
  [v3 setTextColor_];

  v5 = *&v0[OBJC_IVAR____SWCollaborationButtonViewImpl_attributionView];
  v6 = [v0 tintColor];
  [v5 setTintColor_];
}

uint64_t sub_1BBC2DF2C()
{
  v1 = sub_1BBC4106C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BBC410AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v14 = *&v0[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController];
  v15 = v0;
  if ([v14 isBeingDismissed])
  {
    v16 = [v14 transitionCoordinator];
    if (v16)
    {
      v17 = v16;
      if (qword_1EBCA4F38 != -1)
      {
        swift_once();
      }

      v18 = sub_1BBC40A5C();
      __swift_project_value_buffer(v18, qword_1EBCA6B10);
      v19 = v15;
      v20 = sub_1BBC40A3C();
      v21 = sub_1BBC411CC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        *(v22 + 4) = v14;
        *v23 = v14;
        v24 = v14;
        _os_log_impl(&dword_1BBC06000, v20, v21, "detailViewController (%@) was being dismissed when the button was tapped. Using its transition coordinator to present once the dismissal completes.", v22, 0xCu);
        sub_1BBC27FF0(v23, &qword_1EBCA5388, &unk_1BBC445A8);
        MEMORY[0x1BFB19980](v23, -1, -1);
        MEMORY[0x1BFB19980](v22, -1, -1);
      }

      v25 = swift_allocObject();
      *(v25 + 16) = sub_1BBC30F7C;
      *(v25 + 24) = v13;
      v46 = sub_1BBC30D70;
      v47 = v25;
      aBlock = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v44 = sub_1BBC2E6AC;
      v45 = &block_descriptor_82;
      v26 = _Block_copy(&aBlock);

      [v17 animateAlongsideTransition:0 completion:v26];

      _Block_release(v26);
      return swift_unknownObjectRelease();
    }

    else
    {
      v41 = v2;
      if (qword_1EBCA4F38 != -1)
      {
        swift_once();
      }

      v40 = v8;
      v28 = sub_1BBC40A5C();
      __swift_project_value_buffer(v28, qword_1EBCA6B10);
      v29 = v15;
      v30 = sub_1BBC40A3C();
      v31 = sub_1BBC411CC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v14;
        *v33 = v14;
        v34 = v14;
        _os_log_impl(&dword_1BBC06000, v30, v31, "Detail view controller (%@) was being dismissed when the button was tapped. There is no transition coordinator, so we'll dispatch async to wait for dismissal to complete.", v32, 0xCu);
        sub_1BBC27FF0(v33, &qword_1EBCA5388, &unk_1BBC445A8);
        MEMORY[0x1BFB19980](v33, -1, -1);
        MEMORY[0x1BFB19980](v32, -1, -1);
      }

      sub_1BBC1D534(0, &unk_1EBCA57D0, 0x1E69E9610);
      v39 = sub_1BBC4123C();
      v35 = swift_allocObject();
      *(v35 + 16) = sub_1BBC30F7C;
      *(v35 + 24) = v13;
      v46 = sub_1BBC30D70;
      v47 = v35;
      aBlock = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v44 = sub_1BBC2B520;
      v45 = &block_descriptor_76;
      v36 = _Block_copy(&aBlock);

      sub_1BBC4108C();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BBC30F84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA57E0, &unk_1BBC445D0);
      sub_1BBC1D5D4(&qword_1EBCA53D0, &qword_1EBCA57E0, &unk_1BBC445D0);
      sub_1BBC412CC();
      v37 = v39;
      MEMORY[0x1BFB18E80](0, v12, v6, v36);
      _Block_release(v36);

      (*(v41 + 8))(v6, v1);
      return (*(v40 + 8))(v12, v7);
    }
  }

  else
  {
    sub_1BBC2E5A0(v15);
  }
}

void sub_1BBC2E5A0(char *a1)
{
  v2 = [a1 window];
  if (v2)
  {
    v8 = v2;
    v3 = *&a1[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController];
    [v3 setModalPresentationStyle_];
    v4 = [v3 popoverPresentationController];
    if (v4)
    {
      v5 = v4;
      [v4 setDelegate_];
    }

    v6 = [v3 popoverPresentationController];
    if (v6)
    {
      v7 = v6;
      [v6 setSourceView_];
    }

    sub_1BBC30814(v3, v8);
  }
}

uint64_t sub_1BBC2E6AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void _SWCollaborationButtonViewImpl.dismissPopover(animated:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController);
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1BBC2B520;
    v7[3] = &block_descriptor_2;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v5 dismissViewControllerAnimated:a1 & 1 completion:v6];
  _Block_release(v6);
}

id _SWCollaborationButtonViewImpl.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1BBC2EB28(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, *a1);
}

void SWCollaborationView.setDetailViewListContent<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6 = [v2 buttonView];
  v5 = *&v6[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController];
  _SWCollaborationDetailViewController.setListContent<A>(_:)(a1, a2);
}

void SWCollaborationView.setDetailViewListContent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [v3 buttonView];
  v7 = *&v8[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController];
  _SWCollaborationDetailViewController.setListContent<A>(_:)(a1, a2, a3);
}

_SWCollaborationButtonViewImpl *__cdecl sub_1BBC2EF14(SWCollaborationView *self, SEL a2)
{
  v2 = [(SWCollaborationView *)self typeErasedButtonView];
  type metadata accessor for _SWCollaborationButtonViewImpl();
  v3 = swift_dynamicCastClassUnconditional();

  return v3;
}

uint64_t SWCollaborationView.buttonView.getter()
{
  v1 = [v0 typeErasedButtonView];
  type metadata accessor for _SWCollaborationButtonViewImpl();

  return swift_dynamicCastClassUnconditional();
}

id _SWCollaborationButtonViewImpl.itemProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) itemProvider];

  return v1;
}

void _SWCollaborationButtonViewImpl.itemProvider.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) setItemProvider_];
}

void (*_SWCollaborationButtonViewImpl.itemProvider.modify(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController);
  a1[1] = v3;
  *a1 = [v3 itemProvider];
  return sub_1BBC2F124;
}

void sub_1BBC2F124(id *a1)
{
  v1 = *a1;
  [a1[1] setItemProvider_];
}

uint64_t _SWCollaborationButtonViewImpl.isContentShared.getter()
{
  if ((*(v0 + OBJC_IVAR____SWCollaborationButtonViewImpl__isContentShared) & 1) == 0)
  {
    result = [*(v0 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) collaborationHighlight];
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

void _SWCollaborationButtonViewImpl.isContentShared.setter(char a1)
{
  v3 = [*&v1[OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController] collaborationHighlight];
  if (v3)
  {
  }

  else
  {
    v1[OBJC_IVAR____SWCollaborationButtonViewImpl__isContentShared] = a1 & 1;
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1BBC30D6C;
    *(v6 + 24) = v5;
    v10[4] = sub_1BBC30D70;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1BBC2C494;
    v10[3] = &block_descriptor_9;
    v7 = _Block_copy(v10);
    v8 = v1;

    [v4 performWithoutAnimation_];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_1BBC2F5BC(void *a1@<X0>, char *a2@<X8>)
{
  if (*(*a1 + OBJC_IVAR____SWCollaborationButtonViewImpl__isContentShared))
  {
    v3 = 1;
  }

  else
  {
    v4 = [*(*a1 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) collaborationHighlight];
    if (v4)
    {

      v3 = 1;
    }

    else
    {
      v3 = 0;
    }
  }

  *a2 = v3;
}

void sub_1BBC2F630(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*(*a2 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) collaborationHighlight];
  if (v4)
  {
  }

  else
  {
    v3[OBJC_IVAR____SWCollaborationButtonViewImpl__isContentShared] = v2;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1BBC310FC;
    *(v7 + 24) = v6;
    v10[4] = sub_1BBC31100;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1BBC2C494;
    v10[3] = &block_descriptor_93;
    v8 = _Block_copy(v10);
    v9 = v3;

    [v5 performWithoutAnimation_];
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }
}

void (*_SWCollaborationButtonViewImpl.isContentShared.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____SWCollaborationButtonViewImpl__isContentShared;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  if (*(v1 + v5))
  {
    v6 = 1;
  }

  else
  {
    v7 = [*(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) collaborationHighlight];
    if (v7)
    {

      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  *(v4 + 64) = v6;
  return sub_1BBC2F8B0;
}

void sub_1BBC2F8B0(uint64_t a1, char a2)
{
  v3 = *a1;
  isEscapingClosureAtFileLocation = *(*a1 + 64);
  v5 = [*(*(*a1 + 48) + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) collaborationHighlight];
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_6:

    goto LABEL_8;
  }

  v6 = v3[6];
  v6[v3[7]] = isEscapingClosureAtFileLocation;
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BBC310FC;
  *(v9 + 24) = v8;
  v3[4] = sub_1BBC31100;
  v3[5] = v9;
  *v3 = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1BBC2C494;
  v3[3] = &block_descriptor_20;
  v10 = _Block_copy(v3);
  v11 = v3[5];
  v12 = v6;

  [v7 performWithoutAnimation_];
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_5:
    if (v5)
    {
      goto LABEL_6;
    }

    v13 = v3[6];
    v13[v3[7]] = isEscapingClosureAtFileLocation;
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1BBC310FC;
    *(v16 + 24) = v15;
    v3[4] = sub_1BBC31100;
    v3[5] = v16;
    *v3 = MEMORY[0x1E69E9820];
    v3[1] = 1107296256;
    v3[2] = sub_1BBC2C494;
    v3[3] = &block_descriptor_31;
    v17 = _Block_copy(v3);
    v18 = v3[5];
    v19 = v13;

    [v14 performWithoutAnimation_];
    _Block_release(v17);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
      return;
    }
  }

LABEL_8:

  free(v3);
}

void sub_1BBC2FB9C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____SWCollaborationButtonViewImpl_attributionView;
    v5 = *(Strong + OBJC_IVAR____SWCollaborationButtonViewImpl_attributionView);
    v6 = sub_1BBC4097C();
    v7 = v6;
    if (v1)
    {
      v8 = [v1 slHighlight];
      v9 = v8;
      if (v7)
      {
        if (v8)
        {
          sub_1BBC1D534(0, &qword_1EBCA5698, 0x1E69D3810);
          v10 = v7;
          v11 = sub_1BBC4128C();

          if (v11)
          {
            goto LABEL_27;
          }
        }

LABEL_11:
        v12 = [v1 slHighlight];
        if (v12)
        {

          v13 = 0;
          goto LABEL_14;
        }

LABEL_13:
        v13 = 1;
LABEL_14:
        if (qword_1EBCA4F38 != -1)
        {
          swift_once();
        }

        v14 = sub_1BBC40A5C();
        __swift_project_value_buffer(v14, qword_1EBCA6B10);
        v15 = sub_1BBC40A3C();
        v16 = sub_1BBC411CC();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v33 = v18;
          *v17 = 136315138;
          if (v13)
          {
            v19 = 7104878;
          }

          else
          {
            v19 = 0x696E2D6E6F6E2061;
          }

          if (v13)
          {
            v20 = 0xE300000000000000;
          }

          else
          {
            v20 = 0xEF65756C6176206CLL;
          }

          v21 = sub_1BBC36DCC(v19, v20, &v33);

          *(v17 + 4) = v21;
          _os_log_impl(&dword_1BBC06000, v15, v16, "Updating attribution view highlight to %s", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v18);
          MEMORY[0x1BFB19980](v18, -1, -1);
          MEMORY[0x1BFB19980](v17, -1, -1);
        }

        v22 = *&v3[v4];
        if (v1)
        {
          v23 = v22;
          v24 = [v1 slHighlight];
          sub_1BBC4098C();

          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          if (!v25)
          {
LABEL_33:

            return;
          }

          v26 = v25;
          v27 = *&v3[OBJC_IVAR____SWCollaborationButtonViewImpl_sharedWithYouCenter];
          v28 = v1;
          v29 = v27;
          [v29 clearNoticesForHighlight:v26];
        }

        else
        {
          v29 = v22;
          sub_1BBC4098C();
        }

LABEL_32:

        v3 = v29;
        goto LABEL_33;
      }

      if (v8)
      {

        goto LABEL_11;
      }
    }

    else if (v6)
    {
      goto LABEL_13;
    }

LABEL_27:
    if (qword_1EBCA4F38 != -1)
    {
      swift_once();
    }

    v30 = sub_1BBC40A5C();
    __swift_project_value_buffer(v30, qword_1EBCA6B10);
    v29 = sub_1BBC40A3C();
    v31 = sub_1BBC411CC();
    if (os_log_type_enabled(v29, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1BBC06000, v29, v31, "Skipping refresh of attribution view because highlights are the same", v32, 2u);
      MEMORY[0x1BFB19980](v32, -1, -1);
    }

    goto LABEL_32;
  }
}

id _SWCollaborationButtonViewImpl.__allocating_init(itemProvider:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithItemProvider_];

  return v3;
}

char *_SWCollaborationButtonViewImpl.init(itemProvider:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(_SWCollaborationDetailViewController) initWithItemProvider:a1 impl:?];
  v4 = objc_allocWithZone(ObjectType);
  v5 = sub_1BBC2C860(v3);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id sub_1BBC300CC(char *a1)
{
  [*&a1[OBJC_IVAR____SWCollaborationButtonViewImpl_label] setAlpha_];
  v2 = *&a1[OBJC_IVAR____SWCollaborationButtonViewImpl_centerXAnchorHiddenLabel];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = *&a1[OBJC_IVAR____SWCollaborationButtonViewImpl_attributionViewXAnchorVisibleLabel];
  if (v3)
  {
    [v3 setActive_];
  }

  v4 = *&a1[OBJC_IVAR____SWCollaborationButtonViewImpl_labelXAnchorHidden];
  if (v4)
  {
    [v4 setActive_];
  }

  [a1 layoutIfNeeded];
  v5 = objc_opt_self();
  v6 = [v5 currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = [v5 currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = *&a1[OBJC_IVAR____SWCollaborationButtonViewImpl_containerLeadingConstraint];
  if (v10)
  {
    v11 = 4.0;
    if (v7 == 6)
    {
      v11 = 0.0;
    }

    [v10 setConstant_];
  }

  result = *&a1[OBJC_IVAR____SWCollaborationButtonViewImpl_containerTrailingConstraint];
  if (result)
  {
    v13 = -4.0;
    if (v9 == 6)
    {
      v13 = -12.0;
    }

    return [result setConstant_];
  }

  return result;
}

id sub_1BBC30258(char *a1)
{
  v2 = *&a1[OBJC_IVAR____SWCollaborationButtonViewImpl_centerXAnchorHiddenLabel];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = *&a1[OBJC_IVAR____SWCollaborationButtonViewImpl_attributionViewXAnchorVisibleLabel];
  if (v3)
  {
    [v3 setActive_];
  }

  v4 = *&a1[OBJC_IVAR____SWCollaborationButtonViewImpl_labelXAnchorHidden];
  if (v4)
  {
    [v4 setActive_];
  }

  [*&a1[OBJC_IVAR____SWCollaborationButtonViewImpl_label] setAlpha_];

  return [a1 layoutIfNeeded];
}

Swift::Void __swiftcall _SWCollaborationButtonViewImpl.setManageButtonTitle(manageButtonTitle:)(Swift::String manageButtonTitle)
{
  v2 = *(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController);
  v3 = sub_1BBC410BC();
  [v2 setManageButtonTitle_];
}

uint64_t sub_1BBC303EC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();
}

uint64_t sub_1BBC30468(uint64_t a1, void **a2)
{
  v4 = sub_1BBC4091C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = *(v5 + 16);
  v14(&v18 - v12, a1, v4);
  v15 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v14(v10, v13, v4);
  v16 = v15;
  sub_1BBC40ACC();
  return (*(v5 + 8))(v13, v4);
}

char *sub_1BBC305D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1BBC1D534(0, &qword_1EBCA5668, off_1E7FDD648);
  v8 = sub_1BBC3F288(a1, a2, a3);
  v9 = objc_allocWithZone(v4);
  return sub_1BBC2C860(v8);
}

char *sub_1BBC30664(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1BBC1D534(0, &qword_1EBCA5668, off_1E7FDD648);
  v10 = sub_1BBC3F458(a1, a2, a3, a4);
  v11 = objc_allocWithZone(v5);
  return sub_1BBC2C860(v10);
}

uint64_t sub_1BBC306FC(void *a1)
{
  v3 = OBJC_IVAR____SWCollaborationButtonViewImpl_headerImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = [*(v1 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) viewModel];
  v7 = *(v1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  v9 = sub_1BBC40AAC();
  sub_1BBC408CC();
  v9(v11, 0);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BBC30814(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      if ([v6 respondsToSelector_])
      {
        v8 = [v7 collaborationViewShouldPresentPopover_];
        swift_unknownObjectRelease();
        if (!v8)
        {
LABEL_13:
          v17 = v5;
LABEL_25:

          return;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v9 = [a1 presentingViewController];
    if (v9)
    {

      if (qword_1EBCA4F38 != -1)
      {
        swift_once();
      }

      v10 = sub_1BBC40A5C();
      __swift_project_value_buffer(v10, qword_1EBCA6B10);
      v11 = a1;
      v12 = sub_1BBC40A3C();
      v13 = sub_1BBC411DC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412546;
        *(v14 + 4) = v11;
        *v15 = v11;
        *(v14 + 12) = 2112;
        v16 = [v11 presentingViewController];
        *(v14 + 14) = v16;
        v15[1] = v16;
        _os_log_impl(&dword_1BBC06000, v12, v13, "View controller to present (%@) already has a presentingViewController (%@). Bailing on presentation.", v14, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5388, &unk_1BBC445A8);
        swift_arrayDestroy();
        MEMORY[0x1BFB19980](v15, -1, -1);
        MEMORY[0x1BFB19980](v14, -1, -1);
      }

      goto LABEL_13;
    }

    v18 = [objc_opt_self() _viewControllerForFullScreenPresentationFromView_];
    if (v18)
    {
      sub_1BBC1D534(0, &qword_1EBCA5660, 0x1E69DD258);
      v17 = v18;
      v19 = sub_1BBC4128C();

      if ((v19 & 1) == 0)
      {
        [v17 presentViewController:a1 animated:1 completion:0];

        goto LABEL_24;
      }

      v20 = v17;
      v21 = a1;
      v22 = sub_1BBC4128C();

      if (v22)
      {
        if (qword_1EBCA4F38 != -1)
        {
          swift_once();
        }

        v23 = sub_1BBC40A5C();
        __swift_project_value_buffer(v23, qword_1EBCA6B10);
        v24 = v21;
        v25 = sub_1BBC40A3C();
        v26 = sub_1BBC411DC();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          *(v27 + 4) = v24;
          *v28 = v24;
          v29 = v24;
          _os_log_impl(&dword_1BBC06000, v25, v26, "_viewControllerForFullScreenPresentation returned the same view controller we are trying to present (%@). Using a fallback presentation view controller instead.", v27, 0xCu);
          sub_1BBC27FF0(v28, &qword_1EBCA5388, &unk_1BBC445A8);
          MEMORY[0x1BFB19980](v28, -1, -1);
          MEMORY[0x1BFB19980](v27, -1, -1);
        }
      }
    }

    v17 = [objc_allocWithZone(MEMORY[0x1E69DD4B8]) init];
    [v17 _presentViewController_sendingView_animated_];

LABEL_24:
    swift_unknownObjectWeakAssign();
    goto LABEL_25;
  }
}

void sub_1BBC30C88(SEL *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      if ([v4 respondsToSelector_])
      {
        [v5 *a1];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1BBC30D70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t keypath_get_36Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t keypath_set_37Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t keypath_get_42Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t keypath_set_43Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

id keypath_get_32Tm@<X0>(void *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____SWCollaborationButtonViewImpl_detailViewController) *a2];
  *a3 = result;
  return result;
}

uint64_t sub_1BBC30F5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1BBC30F84()
{
  result = qword_1EBCA53C0;
  if (!qword_1EBCA53C0)
  {
    sub_1BBC4106C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA53C0);
  }

  return result;
}

id sub_1BBC30FDC()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____SWCollaborationButtonViewImpl_activeParticipantCount;
  swift_beginAccess();
  return sub_1BBC2B848(*(v1 + v2));
}

void sub_1BBC31038()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] + OBJC_IVAR____SWCollaborationButtonViewImpl_label);
  v4 = sub_1BBC410BC();
  [v3 setText_];
}

void sub_1BBC31134(_BYTE *a1)
{
  v2 = v1;
  v40 = *v1;
  v4 = sub_1BBC34780(*(&v40 + 1), *(v1 + 16));
  v5 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_enablementLock;
  a1[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_enablementLock] = 0;
  v6 = type metadata accessor for CommunicationControl();
  v39.receiver = a1;
  v39.super_class = v6;
  v7 = objc_msgSendSuper2(&v39, sel_isEnabled);
  v38.receiver = a1;
  v38.super_class = v6;
  objc_msgSendSuper2(&v38, sel_setEnabled_, v4 & 1);
  sub_1BBC32E10(v7);
  a1[v5] = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  if (v37[0])
  {
    v8 = [v37[0] slHighlight];

    v9 = [v8 attributions];
    sub_1BBC1D534(0, &qword_1EBCA5758, 0x1E69D37B0);
    v10 = sub_1BBC4117C();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v10 >> 62)
  {
    v11 = sub_1BBC4136C();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [a1 setContextMenuInteractionEnabled_];
  [a1 setShowsMenuAsPrimaryAction_];
  if (v11 < 2)
  {
    if (v10 >> 62)
    {
      if (sub_1BBC4136C())
      {
        goto LABEL_13;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1BFB18F60](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v20 = *(v10 + 32);
      }

      v21 = v20;
      v22 = [v20 uniqueIdentifier];
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        sub_1BBC410EC();
        v23 = sub_1BBC410BC();
      }

LABEL_25:
      if (*&a1[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_touchUpInsideActionIdentifier])
      {
        v27 = sub_1BBC410EC();
        v29 = v28;
        if (v27 == sub_1BBC410EC() && v29 == v30)
        {

LABEL_30:

          return;
        }

        v31 = sub_1BBC413AC();

        if (v31)
        {
          goto LABEL_30;
        }
      }

      sub_1BBC1D534(0, &qword_1EBCA5760, 0x1E69DC628);
      v32 = *(v2 + 3);
      v33 = *(v2 + 4);
      v34 = swift_allocObject();
      *(v34 + 16) = v10;
      *(v34 + 24) = a1;
      v35 = v2[1];
      *(v34 + 32) = *v2;
      *(v34 + 48) = v35;
      *(v34 + 64) = *(v2 + 4);
      a1;
      sub_1BBC34C60(&v40, v37);
      sub_1BBC34CD0(v32);
      v36 = sub_1BBC4129C();
      sub_1BBC31EC4(v36, v23);

      return;
    }

    v23 = sub_1BBC410BC();
    goto LABEL_25;
  }

  sub_1BBC1D534(0, &qword_1EBCA5758, 0x1E69D37B0);
  sub_1BBC34CE0();
  v37[0] = sub_1BBC411AC();
  sub_1BBC4139C();
  v12 = sub_1BBC410BC();

  v13 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_menu;
  v14 = *&a1[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_menu];
  if (v14)
  {
    v15 = [v14 identifier];
    v16 = sub_1BBC410EC();
    v18 = v17;
    if (v16 == sub_1BBC410EC() && v18 == v19)
    {

LABEL_21:

      return;
    }

    v24 = sub_1BBC413AC();

    if (v24)
    {
      goto LABEL_21;
    }
  }

  v25 = sub_1BBC31668(v10, a1, v12);

  v26 = *&a1[v13];
  *&a1[v13] = v25;
}

uint64_t sub_1BBC31668(unint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v5 = a3;
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      v8 = a1;
      v31 = a3;
      v41 = MEMORY[0x1E69E7CC0];
      v32 = objc_opt_self();
      goto LABEL_4;
    }

    return 0;
  }

  v8 = a1;
  if (sub_1BBC4136C() <= 0)
  {
    return 0;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  v29 = sub_1BBC4136C();
  if (v29)
  {
    v7 = v29;
    v30 = objc_opt_self();
    if (v7 >= 1)
    {
      v32 = v30;
      v31 = v5;
LABEL_4:
      v33 = v7;
      v9 = 0;
      v42[0] = *v4;
      v10 = *(v4 + 24);
      v11 = *(v4 + 32);
      v12 = v8;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1BFB18F60](v9, v12);
        }

        else
        {
          v13 = *(v12 + 8 * v9 + 32);
        }

        v14 = v13;
        v15 = swift_allocObject();
        v16 = *(v4 + 16);
        *(v15 + 24) = *v4;
        *(v15 + 16) = v14;
        *(v15 + 40) = v16;
        *(v15 + 56) = *(v4 + 32);
        v39 = sub_1BBC34D48;
        v40 = v15;
        aBlock = MEMORY[0x1E69E9820];
        v36 = 1107296256;
        v37 = sub_1BBC3246C;
        v38 = &block_descriptor_11;
        v17 = _Block_copy(&aBlock);
        v18 = v14;
        sub_1BBC34C60(v42, v34);
        sub_1BBC34CD0(v10);
        v19 = [v32 elementWithViewProvider_];
        _Block_release(v17);

        v20 = swift_allocObject();
        *(v20 + 16) = v18;
        *(v20 + 24) = a2;
        v21 = *(v4 + 16);
        *(v20 + 32) = *v4;
        *(v20 + 48) = v21;
        *(v20 + 64) = *(v4 + 32);
        v39 = sub_1BBC34D54;
        v40 = v20;
        aBlock = MEMORY[0x1E69E9820];
        v36 = 1107296256;
        v37 = sub_1BBC32840;
        v38 = &block_descriptor_17;
        v22 = _Block_copy(&aBlock);
        v23 = v18;
        sub_1BBC34C60(v42, v34);
        sub_1BBC34CD0(v10);
        v24 = a2;

        [v19 setPrimaryActionHandler_];
        _Block_release(v22);
        v25 = v19;
        MEMORY[0x1BFB18D90]();
        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BBC4118C();
        }

        ++v9;
        sub_1BBC4119C();

        v12 = v8;
      }

      while (v33 != v9);
      v26 = v41;
      v5 = v31;
      goto LABEL_12;
    }

    __break(1u);
    return 0;
  }

LABEL_12:
  if (v26 >> 62)
  {
    sub_1BBC1D534(0, &qword_1EBCA5748, 0x1E69DCC78);

    sub_1BBC4135C();
  }

  else
  {

    sub_1BBC413BC();
    sub_1BBC1D534(0, &qword_1EBCA5748, 0x1E69DCC78);
  }

  sub_1BBC1D534(0, &qword_1EBCA5778, 0x1E69DCC60);
  v27 = v5;
  return sub_1BBC4127C();
}

void sub_1BBC31A9C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  if (a2 >> 62)
  {
    v45 = a2;
    v9 = sub_1BBC4136C();
    a2 = v45;
    if (v9)
    {
LABEL_3:
      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFB18F60](0);
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_29:
          v49 = v9;
          swift_once();
          v9 = v49;
LABEL_16:
          v31 = qword_1EBCA6AF0;
          v32 = OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_presentingViewController;
          v33 = *(qword_1EBCA6AF0 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_presentingViewController);
          *(qword_1EBCA6AF0 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_presentingViewController) = v9;
          v34 = v9;

          v35 = [v4 v6[191]];
          v36 = sub_1BBC410EC();
          v38 = v37;

          v39 = [v4 v5[394]];
          if (v39)
          {
            v40 = v39;
            v41 = sub_1BBC410EC();
            v43 = v42;
          }

          else
          {
            v41 = 0;
            v43 = 0xE000000000000000;
          }

          sub_1BBC35768(v36, v38, v41, v43, *(a4 + 16));

          v44 = *(v31 + v32);
          *(v31 + v32) = 0;

          return;
        }

        v10 = *(a2 + 32);
      }

      v11 = v10;
      if (qword_1EBCA4F30 != -1)
      {
        swift_once();
      }

      v12 = sub_1BBC40A5C();
      __swift_project_value_buffer(v12, qword_1EBCA6AF8);
      v4 = v11;
      v13 = sub_1BBC40A3C();
      v14 = sub_1BBC411CC();

      v6 = &selRef_initWithSourceSceneIdentifier_sourceBundleIdentifier_metadata_representations_highlightURL_initiatorHandle_initiatorNameComponents_;
      v5 = &unk_1E7FDE000;
      if (os_log_type_enabled(v13, v14))
      {
        v50 = a4;
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v53 = v16;
        *v15 = 136315394;
        v17 = [v4 uniqueIdentifier];
        v18 = sub_1BBC410EC();
        v20 = v19;

        v21 = sub_1BBC36DCC(v18, v20, &v53);

        *(v15 + 4) = v21;
        *(v15 + 12) = 2080;
        v22 = [v4 &selRef_base64EncodedStringWithOptions_ + 4];
        if (v22)
        {
          v23 = v22;
          v24 = sub_1BBC410EC();
          v26 = v25;

          v51 = v24;
          v52 = v26;
          v27 = sub_1BBC410FC();
          v29 = v28;
        }

        else
        {
          v29 = 0xE300000000000000;
          v27 = 7104878;
        }

        v30 = sub_1BBC36DCC(v27, v29, &v53);

        *(v15 + 14) = v30;
        _os_log_impl(&dword_1BBC06000, v13, v14, "Calling  performCommunicationAction with values messageGUID: %s, attachmentGUID: %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB19980](v16, -1, -1);
        MEMORY[0x1BFB19980](v15, -1, -1);

        v5 = &unk_1E7FDE000;
        v6 = &selRef_initWithSourceSceneIdentifier_sourceBundleIdentifier_metadata_representations_highlightURL_initiatorHandle_initiatorNameComponents_;
      }

      else
      {
      }

      if (([a3 respondsToSelector_] & 1) == 0)
      {

        return;
      }

      v9 = [a3 _viewControllerForAncestor];
      if (qword_1EBCA4F28 == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v46 = *(a4 + 24);
  if (v46)
  {
    v47 = *(a4 + 32);

    v46(v48);

    sub_1BBC30F5C(v46);
  }
}

id sub_1BBC31EC4(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_touchUpInsideActionIdentifier;
  if (!*&v2[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_touchUpInsideActionIdentifier])
  {
LABEL_13:
    [v2 addAction:a1 forControlEvents:64];
    v13 = *&v2[v4];
    *&v2[v4] = a2;

    return a2;
  }

  v5 = sub_1BBC410EC();
  v7 = v6;
  if (v5 != sub_1BBC410EC() || v7 != v8)
  {
    v10 = sub_1BBC413AC();

    if (v10)
    {
      return result;
    }

    v12 = *&v2[v4];
    if (v12)
    {
      [v2 removeActionForIdentifier:v12 forControlEvents:64];
    }

    goto LABEL_13;
  }
}

id sub_1BBC3200C(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  v5 = objc_allocWithZone(sub_1BBC4093C());
  v6 = a2;
  v7 = sub_1BBC4092C();
  [v7 setRemoteRenderingEnabled_];
  v8 = v7;
  sub_1BBC4095C();

  v9 = v8;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setUserInteractionEnabled_];
  [v3 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5688, &unk_1BBC44C20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BBC44C30;
  v11 = [v9 topAnchor];
  v12 = [v3 topAnchor];
  v13 = objc_opt_self();
  v14 = [v13 currentDevice];
  v15 = [v14 userInterfaceIdiom];

  v16 = 8.0;
  if (v15 == 6)
  {
    v16 = 12.0;
  }

  if (v15 == 5)
  {
    v16 = 5.0;
  }

  v17 = [v11 constraintEqualToAnchor:v12 constant:v16];

  *(v10 + 32) = v17;
  v18 = [v9 bottomAnchor];
  v19 = [v3 bottomAnchor];
  v20 = [v13 currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if (v21 == 6)
  {
    v22 = -12.0;
  }

  else
  {
    v22 = -8.0;
  }

  if (v21 == 5)
  {
    v22 = -5.0;
  }

  v23 = [v18 constraintEqualToAnchor:v19 constant:v22];

  *(v10 + 40) = v23;
  v24 = [v9 leadingAnchor];
  v25 = [v3 leadingAnchor];
  v26 = [v13 currentDevice];
  v27 = [v26 userInterfaceIdiom];

  v28 = 16.0;
  if (v27 == 6)
  {
    v28 = 20.0;
  }

  v29 = [v24 constraintEqualToAnchor:v25 constant:v28];

  *(v10 + 48) = v29;
  v30 = [v9 trailingAnchor];

  v31 = [v3 trailingAnchor];
  v32 = [v13 currentDevice];
  v33 = [v32 userInterfaceIdiom];

  v34 = objc_opt_self();
  if (v33 == 6)
  {
    v35 = -12.0;
  }

  else
  {
    v35 = -8.0;
  }

  if (v33 == 5)
  {
    v35 = -5.0;
  }

  v36 = [v30 constraintEqualToAnchor:v31 constant:v35];

  *(v10 + 56) = v36;
  sub_1BBC1D534(0, &qword_1EBCA5690, 0x1E696ACD8);
  v37 = sub_1BBC4116C();

  [v34 activateConstraints_];

  return v3;
}

id sub_1BBC3246C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

void sub_1BBC324D4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (qword_1EBCA4F38 != -1)
  {
    swift_once();
  }

  v7 = sub_1BBC40A5C();
  __swift_project_value_buffer(v7, qword_1EBCA6B10);
  v8 = sub_1BBC40A3C();
  v9 = sub_1BBC411CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BBC06000, v8, v9, "Something was tapped in the disambiguation menu", v10, 2u);
    MEMORY[0x1BFB19980](v10, -1, -1);
  }

  v11 = a2;
  v12 = sub_1BBC40A3C();
  v13 = sub_1BBC411CC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38 = v15;
    *v14 = 136315138;
    v16 = [v11 uniqueIdentifier];
    v17 = sub_1BBC410EC();
    v18 = a4;
    v20 = v19;

    v21 = sub_1BBC36DCC(v17, v20, &v38);
    a4 = v18;

    *(v14 + 4) = v21;
    _os_log_impl(&dword_1BBC06000, v12, v13, "Conversation attribution view was tapped in disambiguation menu. attribution.identifer: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1BFB19980](v15, -1, -1);
    MEMORY[0x1BFB19980](v14, -1, -1);
  }

  if ([a3 respondsToSelector_])
  {
    v22 = [a3 _viewControllerForAncestor];
    if (qword_1EBCA4F28 != -1)
    {
      v37 = v22;
      swift_once();
      v22 = v37;
    }

    v23 = qword_1EBCA6AF0;
    v24 = OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_presentingViewController;
    v25 = *(qword_1EBCA6AF0 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_presentingViewController);
    *(qword_1EBCA6AF0 + OBJC_IVAR____TtC13SharedWithYou20CommunicationManager_presentingViewController) = v22;
    v26 = v22;

    v27 = [v11 uniqueIdentifier];
    v28 = sub_1BBC410EC();
    v30 = v29;

    v31 = [v11 attachmentGUID];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1BBC410EC();
      v35 = v34;
    }

    else
    {
      v35 = 0xE600000000000000;
      v33 = 0x29656E6F6E28;
    }

    sub_1BBC35768(v28, v30, v33, v35, *(a4 + 16));

    v36 = *(v23 + v24);
    *(v23 + v24) = 0;
  }
}

void sub_1BBC32840(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1BBC328B4(_BYTE *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 4);
  sub_1BBC31134(a1);
}

uint64_t sub_1BBC32944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBC34C00();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BBC329A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBC34C00();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BBC32A0C()
{
  sub_1BBC34C00();
  sub_1BBC40CAC();
  __break(1u);
}

id sub_1BBC32A78()
{
  ObjectType = swift_getObjectType();
  v0 = objc_opt_self();
  v1 = 0;
  v2 = *MEMORY[0x1E69DDDC8];
  v3 = 0.0;
  while (1)
  {
    v4 = byte_1F3ABA910[v1 + 32];
    v5 = sub_1BBC410BC();

    v6 = [v0 systemImageNamed_];

    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = [objc_opt_self() preferredFontForTextStyle_];
    v8 = [objc_opt_self() configurationWithFont:v7 scale:2];

    v9 = [v6 imageWithSymbolConfiguration_];
    if (v9)
    {
      [v9 size];
      v11 = v10;

      if (v3 <= v11)
      {
        v3 = v11;
      }
    }

    else
    {
LABEL_13:
      if (v3 <= 0.0)
      {
        v3 = 0.0;
      }
    }

    if (v1 == 2)
    {
      break;
    }

    ++v1;
  }

  v12 = objc_opt_self();
  v13 = [v12 currentDevice];
  [v13 userInterfaceIdiom];

  v14 = [v12 currentDevice];
  [v14 userInterfaceIdiom];

  [*&v18[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_label] intrinsicContentSize];
  v19.receiver = v18;
  v19.super_class = v17;
  return objc_msgSendSuper2(&v19, sel_intrinsicContentSize);
}

void sub_1BBC32E10(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_enablementLock;
  if (v1[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_enablementLock] == 1)
  {
    v6 = ObjectType;
    if (qword_1EBCA4F30 != -1)
    {
      swift_once();
    }

    v7 = sub_1BBC40A5C();
    __swift_project_value_buffer(v7, qword_1EBCA6AF8);
    v8 = v1;
    v9 = sub_1BBC40A3C();
    v10 = sub_1BBC411DC();

    if (os_log_type_enabled(v9, v10))
    {
      v20 = v6;
      v21 = a1;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      v13 = [*&v8[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_label] text];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1BBC410EC();
        v17 = v16;
      }

      else
      {
        v17 = 0x80000001BBC47320;
        v15 = 0xD000000000000013;
      }

      v18 = sub_1BBC36DCC(v15, v17, &v22);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_1BBC06000, v9, v10, "%s - Tried to set CommunicationControl.isEnabled, but enablementLock was true. Setting isEnabled back to oldValue. If this was an intentional setting, use CommunicationControl.setIsEnabled(_:) instead of setting this property directly.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1BFB19980](v12, -1, -1);
      MEMORY[0x1BFB19980](v11, -1, -1);

      a1 = v21;
      v6 = v20;
    }

    else
    {
    }

    v2[v5] = 0;
    v24.receiver = v8;
    v24.super_class = v6;
    v19 = objc_msgSendSuper2(&v24, sel_isEnabled);
    v23.receiver = v8;
    v23.super_class = v6;
    objc_msgSendSuper2(&v23, sel_setEnabled_, a1 & 1);
    sub_1BBC32E10(v19);
    v2[v5] = 1;
  }

  else
  {

    sub_1BBC33074();
  }
}

void sub_1BBC33074()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_tintLock;
  v0[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_tintLock] = 0;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  if (!objc_msgSendSuper2(&v8, sel_isEnabled))
  {
    v5 = [objc_opt_self() lightGrayColor];
    objc_msgSendSuper2(&v7, sel_setTintColor_, v5, v6.receiver, v6.super_class, v0, ObjectType);
    goto LABEL_5;
  }

  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    v5 = [objc_opt_self() whiteColor];
    objc_msgSendSuper2(&v6, sel_setTintColor_, v5, v0, ObjectType, v7.receiver, v7.super_class);
LABEL_5:
    sub_1BBC33264();
  }

  v0[v2] = 1;
}

void sub_1BBC33264()
{
  if (*(v0 + OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_tintLock) == 1)
  {
    if (qword_1EBCA4F30 != -1)
    {
      swift_once();
    }

    v1 = sub_1BBC40A5C();
    __swift_project_value_buffer(v1, qword_1EBCA6AF8);
    v2 = v0;
    oslog = sub_1BBC40A3C();
    v3 = sub_1BBC411DC();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136315138;
      v6 = [*&v2[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_label] text];
      if (v6)
      {
        v7 = v6;
        v8 = sub_1BBC410EC();
        v10 = v9;
      }

      else
      {
        v10 = 0x80000001BBC47320;
        v8 = 0xD000000000000013;
      }

      v11 = sub_1BBC36DCC(v8, v10, &v13);

      *(v4 + 4) = v11;
      _os_log_impl(&dword_1BBC06000, oslog, v3, "%s - Set CommunicationControl.tintColor, but tintLock was true. This is unexpected, as CommunicationControl manages tint color internally", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x1BFB19980](v5, -1, -1);
      MEMORY[0x1BFB19980](v4, -1, -1);
    }

    else
    {
    }
  }
}

char *sub_1BBC33448(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_touchUpInsideActionIdentifier] = 0;
  v4 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_contentView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_imageView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v6 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_label;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v1[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_menu] = 0;
  v1[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_enablementLock] = 1;
  v1[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_tintLock] = 1;
  v1[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_communicationChannel] = a1;
  v98.receiver = v1;
  v98.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v98, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BBC33074();
  v8 = objc_opt_self();
  v9 = [v8 tertiarySystemBackgroundColor];
  [v7 setBackgroundColor_];

  v10 = [v7 layer];
  v93 = objc_opt_self();
  v11 = [v93 currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v13 = 12.0;
  if (v12 == 6)
  {
    v13 = 16.0;
  }

  [v10 setCornerRadius_];

  v14 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_contentView;
  [*&v7[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_contentView] setUserInteractionEnabled_];
  v15 = *&v7[v14];
  v16 = [v8 clearColor];
  [v15 setBackgroundColor_];

  v17 = *&v7[v14];
  v97.receiver = v7;
  v97.super_class = ObjectType;
  v18 = v17;
  v19 = objc_msgSendSuper2(&v97, sel_tintColor);
  [v18 setTintColor_];

  [*&v7[v14] setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 addSubview_];
  v20 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_imageView;
  v21 = *&v7[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_imageView];
  v96.receiver = v7;
  v96.super_class = ObjectType;
  v22 = v21;
  v23 = objc_msgSendSuper2(&v96, sel_tintColor);
  [v22 setTintColor_];

  v24 = *&v7[v20];
  v25 = sub_1BBC410BC();

  v26 = [objc_opt_self() systemImageNamed_];

  if (v26)
  {
    v27 = [objc_opt_self() preferredFontForTextStyle_];
    v28 = [objc_opt_self() configurationWithFont:v27 scale:2];

    v29 = [v26 imageWithSymbolConfiguration_];
  }

  else
  {
    v29 = 0;
  }

  [v24 setImage_];

  [*&v7[v20] setContentMode_];
  [*&v7[v20] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v7[v14] addSubview_];
  v30 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_label;
  v31 = *&v7[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_label];
  sub_1BBC35070();
  v32 = sub_1BBC410BC();

  [v31 setText_];

  v33 = *&v7[v30];
  v95.receiver = v7;
  v95.super_class = ObjectType;
  v34 = v33;
  v35 = objc_msgSendSuper2(&v95, sel_tintColor);
  [v34 setTintColor_];

  v36 = *&v7[v30];
  v94.receiver = v7;
  v94.super_class = ObjectType;
  v37 = v36;
  v38 = objc_msgSendSuper2(&v94, sel_tintColor);
  [v37 setTextColor_];

  [*&v7[v30] setTextAlignment_];
  v39 = *&v7[v30];
  v40 = objc_opt_self();
  v41 = *MEMORY[0x1E69DDD10];
  v42 = v39;
  v43 = [v40 preferredFontForTextStyle_];
  [v42 setFont_];

  [*&v7[v30] setAdjustsFontForContentSizeCategory_];
  [*&v7[v30] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v7[v14] addSubview_];
  [*&v7[v30] setNumberOfLines_];
  [*&v7[v30] setLineBreakMode_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5688, &unk_1BBC44C20);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1BBC44C40;
  v45 = [*&v7[v20] centerXAnchor];
  v46 = [*&v7[v14] centerXAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v44 + 32) = v47;
  v48 = [*&v7[v20] leadingAnchor];
  v49 = [*&v7[v14] &selRef_signSourceProcessWithMetadata_timeout_completion_ + 1];
  v50 = [v48 constraintGreaterThanOrEqualToAnchor_];

  *(v44 + 40) = v50;
  v51 = [*&v7[v20] trailingAnchor];
  v52 = [*&v7[v14] &selRef_hasRepresentationConformingToTypeIdentifier_ + 4];
  v53 = [v51 constraintGreaterThanOrEqualToAnchor_];

  *(v44 + 48) = v53;
  v54 = [*&v7[v20] topAnchor];
  v55 = [*&v7[v14] &selRef_type];
  v56 = [v54 &selRef:v55 initWithButtonView:? + 5];

  *(v44 + 56) = v56;
  v57 = [*&v7[v30] &selRef_type];
  v58 = [*&v7[v20] bottomAnchor];
  v59 = [v93 currentDevice];
  v60 = [v59 userInterfaceIdiom];

  v61 = 3.0;
  if (v60 == 6)
  {
    v61 = 4.0;
  }

  if (v60 == 5)
  {
    v61 = 1.0;
  }

  v62 = [v57 constraintEqualToAnchor:v58 constant:v61];

  *(v44 + 64) = v62;
  v63 = [*&v7[v30] bottomAnchor];
  v64 = [*&v7[v14] bottomAnchor];
  v65 = [v63 constraintEqualToAnchor_];

  *(v44 + 72) = v65;
  v66 = [*&v7[v30] leadingAnchor];
  v67 = [*&v7[v14] leadingAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v44 + 80) = v68;
  v69 = [*&v7[v30] trailingAnchor];
  v70 = [*&v7[v14] trailingAnchor];
  v71 = [v69 constraintEqualToAnchor_];

  *(v44 + 88) = v71;
  v72 = [*&v7[v14] topAnchor];
  v73 = [v7 topAnchor];
  v74 = [v93 currentDevice];
  v75 = [v74 userInterfaceIdiom];

  v76 = 9.0;
  if (v75 == 6)
  {
    v76 = 12.0;
  }

  if (v75 == 5)
  {
    v76 = 5.0;
  }

  v77 = [v72 constraintEqualToAnchor:v73 constant:v76];

  *(v44 + 96) = v77;
  v78 = [*&v7[v14] bottomAnchor];
  v79 = [v7 bottomAnchor];
  v80 = [v93 currentDevice];
  v81 = [v80 userInterfaceIdiom];

  v82 = objc_opt_self();
  v83 = -9.0;
  if (v81 == 6)
  {
    v83 = -12.0;
  }

  if (v81 == 5)
  {
    v83 = -5.0;
  }

  v84 = [v78 constraintEqualToAnchor:v79 constant:v83];

  *(v44 + 104) = v84;
  v85 = [*&v7[v14] leadingAnchor];
  v86 = [v7 leadingAnchor];
  v87 = [v85 constraintEqualToAnchor_];

  *(v44 + 112) = v87;
  v88 = [*&v7[v14] trailingAnchor];
  v89 = [v7 trailingAnchor];

  v90 = [v88 constraintEqualToAnchor_];
  *(v44 + 120) = v90;
  sub_1BBC1D534(0, &qword_1EBCA5690, 0x1E696ACD8);
  v91 = sub_1BBC4116C();

  [v82 activateConstraints_];

  return v7;
}

uint64_t sub_1BBC34094(void *a1)
{
  swift_getObjectType();
  v3 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_touchUpInsideActionIdentifier;
  *(v1 + OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_touchUpInsideActionIdentifier) = 0;
  v4 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_contentView;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_imageView;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v6 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_label;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];

  *(v1 + v6) = v7;
  v8 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_menu;
  *(v1 + OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_menu) = 0;
  *(v1 + OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_enablementLock) = 1;
  *(v1 + OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_tintLock) = 1;

  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1BBC341E4()
{
  ObjectType = swift_getObjectType();
  v13.receiver = v0;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel_tintColorDidChange);
  v2 = *&v0[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_contentView];
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v12, sel_tintColor);
  [v2 setTintColor_];

  v4 = *&v0[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_imageView];
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v11, sel_tintColor);
  [v4 setTintColor_];

  v6 = *&v0[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_label];
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_tintColor);
  [v6 setTintColor_];

  v9.receiver = v0;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, sel_tintColor);
  [v6 setTextColor_];
}

id sub_1BBC34370(id a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    return [v1 invalidateIntrinsicContentSize];
  }

  v5 = sub_1BBC410EC();
  v7 = v6;
  if (v5 == sub_1BBC410EC() && v7 == v8)
  {
  }

  v10 = sub_1BBC413AC();

  if ((v10 & 1) == 0)
  {
    return [v1 invalidateIntrinsicContentSize];
  }

  return result;
}

void *sub_1BBC34520()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_menu);
  v2 = Strong;
  v3 = v1;

  return v1;
}

id sub_1BBC34618()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BBC346F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1BBC1D534(0, &qword_1EBCA5748, 0x1E69DCC78);
  v3 = sub_1BBC4117C();

  v4 = v2(v3);

  return v4;
}

id sub_1BBC34780(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BBC40ABC();

  if (v7)
  {
  }

  if (!a2)
  {
    v6 = 1;
    if (v7)
    {
      return (v6 & 1);
    }

LABEL_14:

    return (v6 & 1);
  }

  if (a2 == 1)
  {
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v4 = result;
      v5 = &selRef_callingAvailable;
      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v4 = result;
      v5 = &selRef_faceTimeAvailable;
LABEL_11:
      v6 = [v4 *v5];

      if (v7 || (v6 & 1) == 0)
      {
        return (v6 & 1);
      }

      v6 = sub_1BBC413AC();
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

char *sub_1BBC34904(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for CommunicationControl();
  v6 = objc_allocWithZone(v5);
  v7 = sub_1BBC33448(a3);
  LODWORD(v8) = 1132068864;
  [v7 setContentCompressionResistancePriority:0 forAxis:v8];
  v9 = sub_1BBC34780(a2, a3);
  v10 = OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_enablementLock;
  v7[OBJC_IVAR____TtC13SharedWithYou20CommunicationControl_enablementLock] = 0;
  v13.receiver = v7;
  v13.super_class = v5;
  LOBYTE(a2) = objc_msgSendSuper2(&v13, sel_isEnabled);
  v12.receiver = v7;
  v12.super_class = v5;
  objc_msgSendSuper2(&v12, sel_setEnabled_, v9 & 1);
  sub_1BBC32E10(a2);
  v7[v10] = 1;
  return v7;
}

id sub_1BBC349D4()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  if (!objc_msgSendSuper2(&v7, sel_isEnabled))
  {
    return 0;
  }

  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_opt_self();
  v6[4] = sub_1BBC34B10;
  v6[5] = v1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1BBC346F0;
  v6[3] = &block_descriptor_3;
  v3 = _Block_copy(v6);

  v4 = [v2 configurationWithIdentifier:0 previewProvider:0 actionProvider:v3];

  _Block_release(v3);
  return v4;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1BBC34B5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1BBC34BA4(uint64_t result, int a2, int a3)
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

unint64_t sub_1BBC34C00()
{
  result = qword_1EBCA5750;
  if (!qword_1EBCA5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCA5750);
  }

  return result;
}

uint64_t sub_1BBC34C60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCA5768, &qword_1BBC44E08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}