uint64_t sub_241064808()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241064840()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_241064880()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2410648E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_241064B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2410650F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id APCustomError(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if ([(__CFString *)v12 length]|| [(__CFString *)v13 length])
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (!v12)
    {
      if (!v13)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else
  {

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = @"An unknown error occurred. Please try again.";
    v12 = @"Unknown Error";
  }

  [v16 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA450]];

  if (v13)
  {
LABEL_5:
    [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA470]];
  }

LABEL_6:
  if (v15)
  {
    [v16 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (v14)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __APCustomError_block_invoke;
    v19[3] = &unk_278CC1610;
    v20 = v16;
    [v14 enumerateKeysAndObjectsUsingBlock:v19];
  }

  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:v11 code:a2 userInfo:v16];

  return v17;
}

id APGenerateLogKey()
{
  v0 = [MEMORY[0x277CCAD78] UUID];
  v1 = [v0 UUIDString];

  v2 = [v1 componentsSeparatedByString:@"-"];
  v3 = [v2 firstObject];

  return v3;
}

void sub_241067E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void sub_241069FE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24106A4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106A804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106ABB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106AF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106B33C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106B70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106C784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106CB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106CE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24106D3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_24106E878()
{
  v0 = sub_24107474C();
  __swift_allocate_value_buffer(v0, qword_27E525438);
  __swift_project_value_buffer(v0, qword_27E525438);
  return sub_24107473C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_24106E928()
{
  result = [objc_opt_self() exceptionConnection];
  qword_27E525450 = result;
  return result;
}

uint64_t sub_24106E964()
{
  if (qword_27E525428 != -1)
  {
    swift_once();
  }

  v1 = sub_24107474C();
  __swift_project_value_buffer(v1, qword_27E525438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  v2 = *(sub_24107470C() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_241075D50;
  v9[3] = type metadata accessor for ExportedScreenTimeMonitor();
  v9[0] = v0;
  v5 = v0;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_24107475C();
  }

  sub_2410746FC();

  __swift_destroy_boxed_opaque_existential_0(v9);
  sub_2410746CC();
  sub_24107472C();
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_24106EC50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExportedScreenTimeMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24106EC88(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a5;
  v59 = a6;
  v57 = a4;
  v54 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v55 = *(v56 - 8);
  v52 = *(v55 + 64);
  MEMORY[0x28223BE20]();
  v53 = v49 - v7;
  if (qword_27E525430 != -1)
  {
    swift_once();
  }

  v64 = qword_27E525450;
  v8 = [qword_27E525450 exportedObject];
  v66 = v6;
  if (v8)
  {
    sub_2410747EC();
    swift_unknownObjectRelease();
    sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
  }

  else
  {
    aBlock = 0u;
    v68 = 0u;
    sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
    if (qword_27E525428 != -1)
    {
      swift_once();
    }

    v9 = sub_24107474C();
    v50 = __swift_project_value_buffer(v9, qword_27E525438);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
    v10 = *(sub_24107470C() - 8);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    *&v63 = 3 * v11;
    v61 = v11;
    v51 = 2 * v11;
    v13 = swift_allocObject();
    v62 = xmmword_241075D60;
    *(v13 + 16) = xmmword_241075D60;
    v14 = AMSSetLogKeyIfNeeded();
    sub_24107475C();

    v60 = sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    sub_2410746EC();

    sub_2410746CC();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253A0, &qword_241075EB8);
    *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253A8, &qword_241075EC0);
    *&aBlock = v15;
    sub_2410746DC();
    sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
    sub_24107472C();

    v16 = [objc_opt_self() interfaceWithProtocol_];
    v17 = v64;
    [v64 setExportedInterface_];
    v18 = type metadata accessor for ExportedScreenTimeMonitor();
    v19 = [objc_allocWithZone(v18) init];
    *(swift_allocObject() + 16) = v62;
    v20 = AMSSetLogKeyIfNeeded();
    sub_24107475C();

    sub_2410746EC();

    sub_2410746CC();
    *(&v68 + 1) = v18;
    *&aBlock = v19;
    v21 = v19;
    sub_2410746DC();
    sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
    sub_24107472C();

    [v17 setExportedObject_];
  }

  if (qword_27E525428 != -1)
  {
    swift_once();
  }

  v22 = sub_24107474C();
  v49[1] = __swift_project_value_buffer(v22, qword_27E525438);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  v23 = *(sub_24107470C() - 8);
  v24 = *(v23 + 72);
  v25 = *(v23 + 80);
  v26 = 2 * v24;
  v27 = 3 * v24;
  v49[0] = v24;
  v28 = swift_allocObject();
  v63 = xmmword_241075D60;
  *(v28 + 16) = xmmword_241075D60;
  v29 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  *&v62 = sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
  sub_2410746EC();

  sub_2410746CC();
  v30 = sub_24107379C(0, &qword_27E5253B0, 0x277CCAE80);
  *(&v68 + 1) = v30;
  *&aBlock = v64;
  v31 = v64;
  sub_2410746DC();
  sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
  sub_24107472C();

  [v31 activate];
  v60 = v27;
  v64 = v25;
  *(swift_allocObject() + 16) = v63;
  v61 = (v25 + 32) & ~v25;
  v32 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  v33 = v26;
  sub_2410746EC();

  sub_2410746CC();
  *(&v68 + 1) = v30;
  *&aBlock = v31;
  v34 = v31;
  sub_2410746DC();
  sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
  sub_24107472C();

  v35 = [v34 exportedObject];
  v50 = v34;
  if (v35)
  {
    sub_2410747EC();
    swift_unknownObjectRelease();
    sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
    v36 = v66;
  }

  else
  {
    aBlock = 0u;
    v68 = 0u;
    sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
    *(swift_allocObject() + 16) = v63;
    v37 = AMSSetLogKeyIfNeeded();
    sub_24107475C();

    v33 = v26;
    sub_2410746EC();
    v36 = v66;

    sub_2410746CC();
    *(&v68 + 1) = v30;
    *&aBlock = v34;
    v38 = v34;
    sub_2410746DC();
    sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
    sub_24107472C();
  }

  v51 = v33;
  *(swift_allocObject() + 16) = xmmword_241075D50;
  v39 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  sub_2410746EC();

  sub_2410746CC();
  sub_24107472C();

  v40 = v55;
  v41 = v53;
  v42 = v56;
  (*(v55 + 16))(v53, v54, v56);
  v43 = (*(v40 + 80) + 24) & ~*(v40 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v36;
  (*(v40 + 32))(v44 + v43, v41, v42);
  v69 = v58;
  v70 = v44;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v68 = sub_24106F818;
  *(&v68 + 1) = v59;
  v45 = _Block_copy(&aBlock);

  v46 = [v50 asynchronousExceptionServiceWithErrorHandler_];
  _Block_release(v45);
  *(swift_allocObject() + 16) = v63;
  v47 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  sub_2410746EC();

  sub_2410746CC();
  *(&v68 + 1) = swift_getObjectType();
  *&aBlock = v46;
  swift_unknownObjectRetain();
  sub_2410746DC();
  sub_24107326C(&aBlock, &qword_27E525398, &unk_241075EA8);
  sub_24107472C();

  return v46;
}

void sub_24106F818(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t STExceptionApp.addException()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_24106F8F0, 0, 0);
}

uint64_t sub_24106F8F0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_24106F9E4;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_24106F9E4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_24106FB18;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_24106FB00;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24106FB18()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_24106FB7C(uint64_t a1, void *a2, uint64_t a3)
{
  v23[1] = a3;
  v24 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v23 - v6;
  if (qword_27E525428 != -1)
  {
    swift_once();
  }

  v8 = sub_24107474C();
  v23[0] = __swift_project_value_buffer(v8, qword_27E525438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  v9 = *(sub_24107470C() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_241075D50;
  v27 = sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
  aBlock[0] = a2;
  v12 = a2;
  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    sub_24107475C();
  }

  sub_2410746FC();

  __swift_destroy_boxed_opaque_existential_0(aBlock);
  sub_2410746CC();
  sub_24107472C();

  v15 = v24;
  v16 = sub_24106EC88(v24, &qword_27E525390, &qword_241075EA0, &unk_2852DFA98, sub_241073788, &block_descriptor_87);
  v17 = v25;
  (*(v4 + 16))(v7, v15, v25);
  v18 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  (*(v4 + 32))(v19 + v18, v7, v17);
  v28 = sub_241074180;
  v29 = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24106FF28;
  v27 = &block_descriptor_111;
  v20 = _Block_copy(aBlock);
  v21 = v12;

  [v16 addExceptionFor:v21 completionHandler:v20];
  _Block_release(v20);
  return swift_unknownObjectRelease();
}

void sub_24106FF28(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_24106FF94(void *a1, uint64_t a2, const void *a3)
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525380, &qword_241075DF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v15 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_2410747DC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_241075E88;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_241075E90;
  v12[5] = v11;
  v13 = a1;
  sub_241072844(0, 0, v7, &unk_241075E98, v12);
}

uint64_t sub_241070108(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = swift_getObjectType();
  v2[4] = _Block_copy(a1);
  v5 = a2;

  return MEMORY[0x2822009F8](sub_241070194, 0, 0);
}

uint64_t sub_241070194()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_241070288;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0x7065637845646461, 0xEE0029286E6F6974, sub_24107468C, v1, v4);
}

uint64_t sub_241070288()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_241070424;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2410703A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2410703A4()
{
  v1 = *(v0 + 32);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_241070424()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  v4 = sub_2410746BC();

  (*(v3 + 16))(v3, v4);
  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t static STExceptionApp.fetchExceptions(forRequesterDSID:adamID:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2410704F4, 0, 0);
}

uint64_t sub_2410704F4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v4[5] = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525318, &qword_241075DA8);
  *v6 = v0;
  v6[1] = sub_24107060C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000029, 0x8000000241076A50, sub_241070BE8, v4, v7);
}

uint64_t sub_24107060C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_241070744;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_241070728;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241070744()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2410707A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24[2] = a5;
  v28 = a2;
  v29 = a4;
  v26 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253B8, &qword_241075EC8);
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v25 = v24 - v8;
  if (qword_27E525428 != -1)
  {
    swift_once();
  }

  v9 = sub_24107474C();
  v24[1] = __swift_project_value_buffer(v9, qword_27E525438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  v10 = *(sub_24107470C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_241075D70;
  v13 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
  v14 = v28;
  sub_2410746EC();

  sub_2410746CC();
  v31 = sub_24107379C(0, &qword_27E5253C0, 0x277CCABB0);
  aBlock[0] = a3;
  v24[0] = a3;
  sub_2410746DC();
  sub_24107326C(aBlock, &qword_27E525398, &unk_241075EA8);
  sub_2410746CC();
  v31 = MEMORY[0x277D84D38];
  v15 = v29;
  aBlock[0] = v29;
  sub_2410746DC();
  sub_24107326C(aBlock, &qword_27E525398, &unk_241075EA8);
  sub_24107472C();

  v16 = v26;
  v17 = sub_24106EC88(v26, &qword_27E5253B8, &qword_241075EC8, &unk_2852DFB38, sub_2410737E4, &block_descriptor_99);
  v18 = v25;
  v19 = v27;
  (*(v6 + 16))(v25, v16, v27);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  (*(v6 + 32))(v21 + v20, v18, v19);
  v32 = sub_241073B24;
  v33 = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241070BF4;
  v31 = &block_descriptor_105;
  v22 = _Block_copy(aBlock);

  [v17 fetchExceptionsForRequesterDSID:v24[0] adamID:v15 completionHandler:v22];
  _Block_release(v22);
  return swift_unknownObjectRelease();
}

uint64_t sub_241070BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    v4 = sub_24107478C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_241070C98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525380, &qword_241075DF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = a1;
  v14 = sub_2410747DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_241075E68;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_241075E70;
  v16[5] = v15;
  v17 = a3;
  sub_241072844(0, 0, v11, &unk_241075E78, v16);
}

uint64_t sub_241070E20(void *a1, uint64_t a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v6 = a1;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_241070EF0;

  return static STExceptionApp.fetchExceptions(forRequesterDSID:adamID:)(v6, a2);
}

uint64_t sub_241070EF0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_2410746BC();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    v10 = sub_24107477C();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t static STExceptionApp.fetchExceptions(forRequesterDSID:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2410710AC, 0, 0);
}

uint64_t sub_2410710AC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525318, &qword_241075DA8);
  *v5 = v0;
  v5[1] = sub_2410711B8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000022, 0x8000000241076A80, sub_24107170C, v3, v6);
}

uint64_t sub_2410711B8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2410712D4;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_241074690;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2410712D4()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_241071338(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v27 = a2;
  v25 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253B8, &qword_241075EC8);
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v22 - v6;
  if (qword_27E525428 != -1)
  {
    swift_once();
  }

  v8 = sub_24107474C();
  v22 = __swift_project_value_buffer(v8, qword_27E525438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  v9 = *(sub_24107470C() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_241075D60;
  v12 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
  v13 = v27;
  sub_2410746EC();

  sub_2410746CC();
  v29 = sub_24107379C(0, &qword_27E5253C0, 0x277CCABB0);
  aBlock[0] = v23;
  v14 = v23;
  sub_2410746DC();
  sub_24107326C(aBlock, &qword_27E525398, &unk_241075EA8);
  sub_24107472C();

  v15 = v25;
  v16 = sub_24106EC88(v25, &qword_27E5253B8, &qword_241075EC8, &unk_2852DFB38, sub_2410737E4, &block_descriptor_99);
  v17 = v26;
  (*(v4 + 16))(v7, v15, v26);
  v18 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  (*(v4 + 32))(v19 + v18, v7, v17);
  v30 = sub_241074684;
  v31 = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241070BF4;
  v29 = &block_descriptor_93;
  v20 = _Block_copy(aBlock);

  [v16 fetchAllAppExceptionsForRequesterDSID:v14 completionHandler:v20];
  _Block_release(v20);
  return swift_unknownObjectRelease();
}

uint64_t sub_241071718(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525380, &qword_241075DF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2410747DC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_241075E48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_241075E50;
  v14[5] = v13;
  v15 = a3;
  sub_241072844(0, 0, v9, &unk_241075E58, v14);
}

uint64_t sub_24107189C(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_24107466C;

  return static STExceptionApp.fetchExceptions(forRequesterDSID:)(v4);
}

uint64_t static STExceptionApp.deleteException(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_241071984, 0, 0);
}

uint64_t sub_241071984()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_241071A7C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_241071A7C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_241074688;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_241074668;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241071B98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v29 = a2;
  v27 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v26 = v23 - v6;
  if (qword_27E525428 != -1)
  {
    swift_once();
  }

  v7 = sub_24107474C();
  v23[1] = __swift_project_value_buffer(v7, qword_27E525438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  v8 = *(sub_24107470C() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_241075D60;
  v11 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  v12 = sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
  v13 = v29;
  sub_2410746EC();

  sub_2410746CC();
  v31 = v12;
  aBlock[0] = v24;
  v14 = v24;
  sub_2410746DC();
  sub_24107326C(aBlock, &qword_27E525398, &unk_241075EA8);
  sub_24107472C();

  v15 = v27;
  v16 = sub_24106EC88(v27, &qword_27E525390, &qword_241075EA0, &unk_2852DFA98, sub_241073788, &block_descriptor_87);
  v17 = v26;
  v18 = v28;
  (*(v4 + 16))(v26, v15, v28);
  v19 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  (*(v4 + 32))(v20 + v19, v17, v18);
  v32 = sub_2410732CC;
  v33 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24106FF28;
  v31 = &block_descriptor;
  v21 = _Block_copy(aBlock);

  [v16 deleteExceptionFor:v14 completionHandler:v21];
  _Block_release(v21);
  return swift_unknownObjectRelease();
}

uint64_t sub_241071F70(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525380, &qword_241075DF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_2410747DC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_241075E00;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_241075E10;
  v14[5] = v13;
  v15 = a3;
  sub_241072844(0, 0, v9, &unk_241075E20, v14);
}

uint64_t sub_2410720F4(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_2410721BC;

  return static STExceptionApp.deleteException(_:)(v4);
}

uint64_t sub_2410721BC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_2410746BC();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_241072340()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_241074664;

  return sub_2410720F4(v2, v3);
}

uint64_t sub_2410723F4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_241074664;

  return v7();
}

uint64_t sub_2410724DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_241074664;

  return sub_2410723F4(v2, v3, v5);
}

uint64_t sub_24107259C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_241072684;

  return v8();
}

uint64_t sub_241072684()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_241072778(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_241074664;

  return sub_24107259C(a1, v4, v5, v7);
}

uint64_t sub_241072844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525380, &qword_241075DF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_241072B30(a3, v24 - v10);
  v12 = sub_2410747DC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24107326C(v11, &qword_27E525380, &qword_241075DF0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2410747CC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_24107479C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_24107476C() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_24107326C(a3, &qword_27E525380, &qword_241075DF0);

    return v22;
  }

LABEL_8:
  sub_24107326C(a3, &qword_27E525380, &qword_241075DF0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_241072B30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525380, &qword_241075DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241072BA0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241072C98;

  return v7(a1);
}

uint64_t sub_241072C98()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_241072D90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_241074664;

  return sub_241072BA0(a1, v5);
}

uint64_t sub_241072E48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_241072684;

  return sub_241072BA0(a1, v5);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241072F40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_241074664;

  return sub_24107189C(v2, v3);
}

uint64_t sub_241072FF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_241072684;

  return sub_24107259C(a1, v4, v5, v7);
}

uint64_t sub_2410730C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_241074664;

  return sub_241070E20(v2, v3, v5);
}

uint64_t sub_241073180()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_241074664;

  return sub_241070108(v2, v3);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24107326C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2410732CC(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0) - 8);
  v18 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v4 = *(v1 + 16);
  if (a1)
  {
    v5 = a1;
    if (qword_27E525428 != -1)
    {
      swift_once();
    }

    v6 = sub_24107474C();
    __swift_project_value_buffer(v6, qword_27E525438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
    v7 = *(sub_24107470C() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_241075D60;
    v10 = AMSSetLogKeyIfNeeded();
    sub_24107475C();

    sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    sub_2410746EC();

    sub_2410746CC();
    swift_getErrorValue();
    v20[3] = v19;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
    (*(*(v19 - 8) + 16))(boxed_opaque_existential_0);
    sub_2410746DC();
    sub_24107326C(v20, &qword_27E525398, &unk_241075EA8);
    sub_24107472C();

    v20[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
    return sub_2410747AC();
  }

  else
  {
    if (qword_27E525428 != -1)
    {
      swift_once();
    }

    v13 = sub_24107474C();
    __swift_project_value_buffer(v13, qword_27E525438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
    v14 = *(sub_24107470C() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *(swift_allocObject() + 16) = xmmword_241075D50;
    v17 = AMSSetLogKeyIfNeeded();
    sub_24107475C();

    sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    sub_2410746EC();

    sub_2410746CC();
    sub_24107472C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
    return sub_2410747BC();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_24107379C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2410737F8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8) + 80);
  v7 = *(v3 + 16);
  if (qword_27E525428 != -1)
  {
    swift_once();
  }

  v8 = sub_24107474C();
  __swift_project_value_buffer(v8, qword_27E525438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  v9 = *(sub_24107470C() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_241075D60;
  v12 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
  sub_2410746EC();

  sub_2410746CC();
  swift_getErrorValue();
  v18[3] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0);
  sub_2410746DC();
  sub_24107326C(v18, &qword_27E525398, &unk_241075EA8);
  sub_24107471C();

  v18[0] = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_2410747AC();
}

uint64_t objectdestroy_80Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_241073B28(uint64_t a1, void *a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253B8, &qword_241075EC8) - 8) + 80);
  v6 = *(v2 + 16);
  if (a2)
  {
    v7 = a2;
    if (qword_27E525428 != -1)
    {
      swift_once();
    }

    v8 = sub_24107474C();
    __swift_project_value_buffer(v8, qword_27E525438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
    v9 = *(sub_24107470C() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    *(swift_allocObject() + 16) = xmmword_241075D60;
    v12 = AMSSetLogKeyIfNeeded();
    sub_24107475C();

    sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    sub_2410746EC();

    sub_2410746CC();
    swift_getErrorValue();
    v28 = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
    (*(*(v26 - 8) + 16))(boxed_opaque_existential_0);
    sub_2410746DC();
    sub_24107326C(v27, &qword_27E525398, &unk_241075EA8);
    sub_24107471C();

    v27[0] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253B8, &qword_241075EC8);
    return sub_2410747AC();
  }

  if (!a1)
  {
    if (qword_27E525428 != -1)
    {
      swift_once();
    }

    v21 = sub_24107474C();
    __swift_project_value_buffer(v21, qword_27E525438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
    v22 = *(sub_24107470C() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_241075D50;
    v25 = AMSSetLogKeyIfNeeded();
    sub_24107475C();

    sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    sub_2410746EC();

    sub_2410746CC();
    sub_24107471C();

    v27[0] = AMSError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253B8, &qword_241075EC8);
    return sub_2410747AC();
  }

  v15 = qword_27E525428;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_24107474C();
  __swift_project_value_buffer(v16, qword_27E525438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
  v17 = *(sub_24107470C() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_241075D60;
  v20 = AMSSetLogKeyIfNeeded();
  sub_24107475C();

  sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
  sub_2410746EC();

  sub_2410746CC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525318, &qword_241075DA8);
  v27[0] = a1;

  sub_2410746DC();
  sub_24107326C(v27, &qword_27E525398, &unk_241075EA8);
  sub_24107472C();

  v27[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5253B8, &qword_241075EC8);
  return sub_2410747BC();
}

uint64_t sub_241074180(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  if (a1)
  {
    v6 = a1;
    if (qword_27E525428 != -1)
    {
      swift_once();
    }

    v7 = sub_24107474C();
    __swift_project_value_buffer(v7, qword_27E525438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
    v8 = *(sub_24107470C() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    *(swift_allocObject() + 16) = xmmword_241075D60;
    v25 = sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    v24[0] = v5;
    v11 = v5;
    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      sub_24107475C();
    }

    sub_2410746FC();

    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_2410746CC();
    swift_getErrorValue();
    v25 = v23;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_0);
    sub_2410746DC();
    sub_24107326C(v24, &qword_27E525398, &unk_241075EA8);
    sub_24107471C();

    v24[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
    return sub_2410747AC();
  }

  else
  {
    if (qword_27E525428 != -1)
    {
      swift_once();
    }

    v14 = sub_24107474C();
    __swift_project_value_buffer(v14, qword_27E525438);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525310, &qword_241075D90);
    v15 = *(sub_24107470C() - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    *(swift_allocObject() + 16) = xmmword_241075D50;
    v25 = sub_24107379C(0, &qword_27E525388, 0x277D4B9B0);
    v24[0] = v5;
    v18 = v5;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      sub_24107475C();
    }

    sub_2410746FC();

    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_2410746CC();
    sub_24107472C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E525390, &qword_241075EA0);
    return sub_2410747BC();
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}