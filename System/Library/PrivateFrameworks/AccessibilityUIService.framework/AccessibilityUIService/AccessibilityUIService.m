uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_23DBD3380@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_23DBD33E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23DBE8B90(v4);
}

uint64_t sub_23DBD343C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DBD347C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_23DBD4404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBD4774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _preboardScenarioChanged()
{
  result = AXInPreboardScenario();
  if ((result & 1) == 0)
  {
    _AXLogWithFacility();
    exit(0);
  }

  return result;
}

void _AXUIServiceManagerHandleConnection(void *a1)
{
  v3 = a1;
  v1 = objc_autoreleasePoolPush();
  v2 = +[AXUIServiceManager sharedServiceManager];
  [v2 _handleConnection:v3];

  objc_autoreleasePoolPop(v1);
}

void sub_23DBD541C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_23DBD68D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBD7AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_23DBD7D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBD8768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBD8B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBD8CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBD8F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBD9A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBDC684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23DBDD338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBDD5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBDF258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBE022C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23DBE0A68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_23DBE14E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_23DBE1960(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23DBE2EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id _AXUIPointerEventFromHIDEvent(const void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1 && (v2 = CFGetTypeID(a1), v2 == IOHIDEventGetTypeID()))
  {
    if (IOHIDEventGetType() == 17)
    {
      v3 = [MEMORY[0x277CE7D80] representationWithHIDEvent:a1 hidStreamIdentifier:@"AXUIEventManagerHIDStream"];
    }

    else
    {
      IOHIDEventGetChildren();
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = v15 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = _AXUIPointerEventFromHIDEvent(*(*(&v12 + 1) + 8 * i));
            if (v11)
            {
              v3 = v11;
              goto LABEL_19;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v3 = 0;
LABEL_19:
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t sub_23DBE83C4()
{
  sub_23DBF012C();
  sub_23DBF011C();
  sub_23DBF00EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

uint64_t sub_23DBE844C(uint64_t a1)
{
  v3 = sub_23DBE8880(a1);
  (*(*(*(v1 + qword_27E30B0F8) - 8) + 8))(a1);
  return v3;
}

void *sub_23DBE84FC(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + qword_27E30B0F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2);
  (*(v5 + 16))(&v12 - v7);
  v8 = sub_23DBF005C();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_23DBE8634(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_23DBE869C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_23DBF012C();
  sub_23DBF011C();
  sub_23DBF00EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23DBE8634(a3);

  return v4;
}

id sub_23DBE8748()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DBE8798(uint64_t a1)
{
  v2 = (*(*(*((*MEMORY[0x277D85000] & *v1) + qword_27E30B0F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a1);
  (*(v4 + 16))(&v6 - v3);
  return sub_23DBF006C();
}

id sub_23DBE88E4()
{
  result = [objc_allocWithZone(type metadata accessor for AXUniversalDisplayManager()) init];
  qword_27E30AFD0 = result;
  return result;
}

id AXUniversalDisplayManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AXUniversalDisplayManager.shared.getter()
{
  if (qword_27E30AF48 != -1)
  {
    swift_once();
  }

  v1 = qword_27E30AFD0;

  return v1;
}

uint64_t sub_23DBE89BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_23DBEE9E8();
  sub_23DBEFFCC();
}

uint64_t sub_23DBE8A6C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23DBEE9E8();
  sub_23DBEFFDC();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_23DBE8AF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_23DBEE9E8();
  sub_23DBEFFDC();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_23DBE8B90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__remoteAlertHandles;
  swift_beginAccess();
  v4 = *(v1 + v3);

  sub_23DBEE7D4(v5, a1);
  v7 = v6;

  if (v7)
  {
    v8 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_23DBEE9E8();
    sub_23DBEFFCC();
  }
}

uint64_t sub_23DBE8CB0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
}

uint64_t AXUniversalDisplayManager.addContent<A>(withView:userInteractionEnabled:service:sceneClientIdentifier:windowIdentifier:context:userInterfaceStyle:windowScene:spatialConfiguration:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 248) = v22;
  *(v9 + 256) = v8;
  *(v9 + 232) = v20;
  *(v9 + 240) = v21;
  *(v9 + 216) = v17;
  *(v9 + 224) = v19;
  *(v9 + 361) = v18;
  *(v9 + 200) = a7;
  *(v9 + 208) = a8;
  *(v9 + 184) = a5;
  *(v9 + 192) = a6;
  *(v9 + 168) = a3;
  *(v9 + 176) = a4;
  *(v9 + 360) = a2;
  *(v9 + 160) = a1;
  *(v9 + 64) = v21;
  *(v9 + 72) = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *(v9 + 264) = OpaqueTypeMetadata2;
  v11 = *(OpaqueTypeMetadata2 - 8);
  *(v9 + 272) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = sub_23DBF012C();
  *(v9 + 296) = sub_23DBF011C();
  v14 = sub_23DBF00EC();
  *(v9 + 304) = v14;
  *(v9 + 312) = v13;

  return MEMORY[0x2822009F8](sub_23DBE8E6C, v14, v13);
}

uint64_t sub_23DBE8E6C()
{
  *(v0 + 80) = *(v0 + 240);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 160);
  *(v0 + 88) = *(v0 + 248);
  swift_getOpaqueTypeConformance2();
  type metadata accessor for AXUIHostingController();
  sub_23DBF007C();
  v5 = sub_23DBE8880(v1);
  *(v0 + 320) = v5;
  (*(v2 + 8))(v1, v3);
  v6 = v5;
  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    v47 = v6;
    v9 = *(v0 + 184);
    v10 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];

    if (v9)
    {
      v11 = *(v0 + 184);
      *(v0 + 96) = *(v0 + 176);
      *(v0 + 104) = v11;
      *(v0 + 112) = 0xD000000000000020;
      *(v0 + 120) = 0x800000023DBF3A00;
      sub_23DBEE994();
      if (sub_23DBF017C())
      {
        v12 = *(v0 + 256);
        swift_getKeyPath();
        *(v0 + 128) = v12;
        sub_23DBEE9E8();
        sub_23DBEFFDC();

        v13 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__remoteAlertHandles;
        swift_beginAccess();
        if (!*(*(v12 + v13) + 16) || (v15 = *(v0 + 192), v14 = *(v0 + 200), v16 = *(v12 + v13), , sub_23DBEDEC0(v15, v14), LOBYTE(v14) = v17, , (v14 & 1) == 0))
        {
          v18 = [objc_opt_self() identityOfCurrentProcess];
          if (v18)
          {
            v19 = v18;
            v39 = *(v0 + 256);
            v20 = *(v0 + 200);
            v42 = *(v0 + 192);
            v43 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
            v21 = objc_allocWithZone(MEMORY[0x277D66BD8]);
            v45 = v19;
            v22 = sub_23DBF009C();
            v41 = [v21 initWithSceneProvidingProcess:v45 configurationIdentifier:v22];

            v23 = [objc_opt_self() newHandleWithDefinition:v41 configurationContext:v43];
            v40 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
            [v23 activateWithContext_];
            swift_getKeyPath();
            *(v0 + 136) = v39;

            v24 = v23;
            sub_23DBEFFDC();

            *(v0 + 144) = v39;
            swift_getKeyPath();
            sub_23DBEFFFC();

            swift_beginAccess();
            v25 = *(v12 + v13);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v48 = *(v12 + v13);
            *(v12 + v13) = 0x8000000000000000;
            sub_23DBEE4DC(v24, v42, v20, isUniquelyReferenced_nonNull_native);

            *(v12 + v13) = v48;
            swift_endAccess();
            *(v0 + 152) = v39;
            swift_getKeyPath();
            sub_23DBEFFEC();
          }
        }
      }
    }

    v27 = *(v0 + 288);
    v29 = *(v0 + 224);
    v28 = *(v0 + 232);
    v30 = *(v0 + 361);
    v32 = *(v0 + 208);
    v31 = *(v0 + 216);
    v33 = *(v0 + 184);
    v34 = *(v0 + 360);
    v44 = *(v0 + 240);
    v46 = *(v0 + 168);
    *(v0 + 328) = sub_23DBF011C();
    v35 = swift_task_alloc();
    *(v0 + 336) = v35;
    *(v35 + 16) = v44;
    *(v35 + 32) = v31;
    *(v35 + 40) = v30 & 1;
    *(v35 + 48) = v47;
    *(v35 + 56) = v34;
    *(v35 + 64) = v46;
    *(v35 + 80) = v33;
    *(v35 + 88) = v32;
    *(v35 + 96) = v29;
    *(v35 + 104) = v28;
    v36 = *(MEMORY[0x277D85A40] + 4);
    v37 = swift_task_alloc();
    *(v0 + 344) = v37;
    *v37 = v0;
    v37[1] = sub_23DBE9414;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0]();
}

uint64_t sub_23DBE9414()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  v2[44] = v0;

  v5 = v2[42];
  v6 = v2[41];
  if (v0)
  {
    v7 = v2[40];

    v8 = v2[38];
    v9 = v2[39];
    v10 = sub_23DBE9608;
  }

  else
  {

    v8 = v2[38];
    v9 = v2[39];
    v10 = sub_23DBE9580;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_23DBE9580()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[35];

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_23DBE9608()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[35];

  v4 = v0[1];
  v5 = v0[44];

  return v4();
}

id sub_23DBE9680(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41 = a5;
  v42 = a4;
  v36 = a3;
  v37 = a2;
  v38 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408);
  v13 = *(v39 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v39, v15);
  v17 = &v32 - v16;
  sub_23DBF012C();
  v40 = sub_23DBF011C();
  sub_23DBF00EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v19 = result;
    v34 = a9;
    if (a8)
    {
      a8 = sub_23DBF009C();
    }

    v35 = a6;
    v33 = a10;
    sub_23DBEF834(a11, aBlock, &qword_27E30B0C8, &qword_23DBF4410);
    v20 = v44;
    if (v44)
    {
      v21 = __swift_project_boxed_opaque_existential_1Tm(aBlock, v44);
      v22 = *(v20 - 1);
      v23 = *(v22 + 64);
      MEMORY[0x28223BE20](v21, v21);
      v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v25);
      v26 = sub_23DBF021C();
      (*(v22 + 8))(v25, v20);
      __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    }

    else
    {
      v26 = 0;
    }

    if (v36)
    {
      v27 = 0;
    }

    else
    {
      v27 = v37;
    }

    v28 = v39;
    (*(v13 + 16))(v17, v38, v39);
    v29 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v30 = swift_allocObject();
    (*(v13 + 32))(v30 + v29, v17, v28);
    v45 = sub_23DBEF930;
    v46 = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DBE9BA0;
    v44 = &block_descriptor_41;
    v31 = _Block_copy(aBlock);

    [v19 addContentViewController:v42 withUserInteractionEnabled:v41 & 1 forService:v35 forSceneClientIdentifier:a8 context:v34 userInterfaceStyle:v27 forWindowScene:v33 spatialConfiguration:v26 completion:v31];
    _Block_release(v31);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DBE9A50(char a1)
{
  sub_23DBF012C();
  sub_23DBF011C();
  sub_23DBF00EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408);
    sub_23DBF010C();
  }

  else
  {
    sub_23DBEEAE4();
    swift_allocError();
    *v3 = 0xD000000000000038;
    v3[1] = 0x800000023DBF3C90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408);
    sub_23DBF00FC();
  }
}

uint64_t sub_23DBE9BA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t AXUniversalDisplayManager.removeContent(withViewController:userInteractionEnabled:windowIdentifier:service:context:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 128) = a6;
  *(v7 + 136) = v6;
  *(v7 + 112) = a4;
  *(v7 + 120) = a5;
  *(v7 + 208) = a2;
  *(v7 + 96) = a1;
  *(v7 + 104) = a3;
  *(v7 + 144) = sub_23DBF012C();
  *(v7 + 152) = sub_23DBF011C();
  v9 = sub_23DBF00EC();
  *(v7 + 160) = v9;
  *(v7 + 168) = v8;

  return MEMORY[0x2822009F8](sub_23DBE9C9C, v9, v8);
}

uint64_t sub_23DBE9C9C()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 208);
  v5 = *(v0 + 96);
  *(v0 + 176) = sub_23DBF011C();
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 192) = v8;
  *v8 = v0;
  v8[1] = sub_23DBE9DC4;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_23DBE9DC4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v10 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_23DBEA110;
  }

  else
  {
    v7 = v2[22];
    v8 = v2[23];

    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_23DBE9EE8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23DBE9EE8()
{
  v1 = v0[19];
  v2 = v0[17];

  swift_getKeyPath();
  v0[8] = v2;
  sub_23DBEE9E8();
  sub_23DBEFFDC();

  v3 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__remoteAlertHandles;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (*(v4 + 16))
  {
    v6 = v0[13];
    v5 = v0[14];
    v7 = *(v2 + v3);

    v8 = sub_23DBEDEC0(v6, v5);
    if (v9)
    {
      v10 = v0[17];
      v15 = v0[14];
      v14 = v0[13];
      v16 = *(*(v4 + 56) + 8 * v8);

      [v16 invalidate];
      swift_getKeyPath();
      v0[9] = v10;
      sub_23DBEFFDC();

      v0[10] = v10;
      swift_getKeyPath();
      sub_23DBEFFFC();

      swift_beginAccess();
      v11 = sub_23DBEDFF0(v14, v15);
      swift_endAccess();

      v0[11] = v10;
      swift_getKeyPath();
      sub_23DBEFFEC();
    }

    else
    {
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_23DBEA110()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[19];

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

void sub_23DBEA188(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v19 - v12;
  sub_23DBF012C();
  sub_23DBF011C();
  sub_23DBF00EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = [objc_opt_self() sharedDisplayManager];
  if (v14)
  {
    v15 = v14;
    (*(v9 + 16))(v13, a1, v8);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v16, v13, v8);
    aBlock[4] = sub_23DBEF794;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DBE9BA0;
    aBlock[3] = &block_descriptor;
    v18 = _Block_copy(aBlock);

    [v15 removeContentViewController:a2 withUserInteractionEnabled:a3 & 1 forService:v19 context:v20 completion:v18];
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DBEA3E4(char a1)
{
  sub_23DBF012C();
  sub_23DBF011C();
  sub_23DBF00EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408);
    sub_23DBF010C();
  }

  else
  {
    sub_23DBEEAE4();
    swift_allocError();
    *v3 = 0xD00000000000003BLL;
    v3[1] = 0x800000023DBF3C50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408);
    sub_23DBF00FC();
  }
}

id AXUniversalDisplayManager.startActivity<A, B, C>(forIdentifier:leadingView:customView:minimalView:relevance:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v97 = a4;
  v98 = a5;
  v95 = a3;
  v92 = a2;
  v86 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30AFF8, &qword_23DBF4008);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v90 = &v81 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B000, &qword_23DBF4010);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v101 = &v81 - v22;
  v94 = sub_23DBEFFAC();
  v93 = *(v94 - 8);
  v23 = *(v93 + 64);
  MEMORY[0x28223BE20](v94, v24);
  v100 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_23DBF003C();
  v88 = *(v89 - 8);
  v26 = *(v88 + 64);
  v28 = MEMORY[0x28223BE20](v89, v27);
  v87 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a9;
  v30 = *(a9 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x28223BE20](v28, v32);
  v35 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = a8;
  v36 = *(a8 - 8);
  v37 = *(v36 + 64);
  v39 = MEMORY[0x28223BE20](v33, v38);
  v41 = &v81 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a7;
  v43 = *(a7 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v39, v45);
  v47 = &v81 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AXDeviceHasJindo())
  {
    v82 = v19;
    v83 = v18;
    v84 = a12;
    (*(v43 + 16))(v47, v95, v42);
    v48 = sub_23DBF008C();
    (*(v36 + 16))(v41, v97, v96);
    v97 = sub_23DBF008C();
    (*(v30 + 16))(v35, v98, v99);
    v99 = sub_23DBF008C();
    result = AXLogUI();
    if (result)
    {
      v50 = v87;
      sub_23DBF004C();
      v51 = v92;

      v52 = sub_23DBF002C();
      v53 = sub_23DBF015C();

      v54 = os_log_type_enabled(v52, v53);
      v55 = v100;
      if (v54)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v103 = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_23DBED918(v86, v51, &v103);
        _os_log_impl(&dword_23DBD1000, v52, v53, "Starting activity for identifier %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        MEMORY[0x23EEF91F0](v57, -1, -1);
        MEMORY[0x23EEF91F0](v56, -1, -1);
      }

      (*(v88 + 8))(v50, v89);
      v58 = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B010, &qword_23DBF4018);
      v59 = sub_23DBEFF8C();
      v60 = *(v59 - 8);
      v61 = *(v60 + 72);
      v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_23DBF3FC0;
      (*(v60 + 104))(v63 + v62, *MEMORY[0x277CB94E8], v59);
      sub_23DBEFF9C();
      v64 = sub_23DBEFF1C();
      (*(*(v64 - 8) + 56))(v90, 1, 1, v64);
      sub_23DBEEB38();
      sub_23DBEEB8C();
      sub_23DBEEBE0();
      v65 = v101;
      sub_23DBEFFBC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B030, &qword_23DBF4020);
      v66 = v91;
      v67 = sub_23DBEFF5C();
      if (v66)
      {

        (*(v58 + 8))(v65, v83);
        return (*(v93 + 8))(v55, v94);
      }

      else
      {
        v98 = v67;
        *&v103 = sub_23DBEFF3C();
        *(&v103 + 1) = v69;
        *&v104 = v86;
        *(&v104 + 1) = v51;
        v105 = v48;
        *&v106 = v97;
        *(&v106 + 1) = v99;
        swift_getKeyPath();
        v70 = v85;
        v107 = v85;

        sub_23DBEEC34(&v103, v102);
        sub_23DBEE9E8();
        sub_23DBEFFDC();

        v102[0] = v70;
        swift_getKeyPath();
        sub_23DBEFFFC();

        v71 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__activities;
        swift_beginAccess();
        v72 = *(v70 + v71);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v70 + v71) = v72;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v72 = sub_23DBED80C(0, *(v72 + 2) + 1, 1, v72);
          *(v85 + v71) = v72;
        }

        v75 = *(v72 + 2);
        v74 = *(v72 + 3);
        if (v75 >= v74 >> 1)
        {
          v72 = sub_23DBED80C((v74 > 1), v75 + 1, 1, v72);
        }

        *(v72 + 2) = v75 + 1;
        v76 = &v72[64 * v75];
        v77 = v103;
        v78 = v104;
        v79 = v106;
        *(v76 + 4) = v105;
        *(v76 + 5) = v79;
        *(v76 + 2) = v77;
        *(v76 + 3) = v78;
        v80 = v85;
        *(v85 + v71) = v72;
        swift_endAccess();
        v102[0] = v80;
        swift_getKeyPath();
        sub_23DBEFFEC();

        sub_23DBEEC6C(&v103);
        (*(v58 + 8))(v101, v83);
        return (*(v93 + 8))(v100, v94);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_23DBEEAE4();
    swift_allocError();
    *v68 = 0xD000000000000033;
    v68[1] = 0x800000023DBF3A90;
    return swift_willThrow();
  }

  return result;
}

id AXUniversalDisplayManager.startActivity<A, B, C, D>(forIdentifier:leadingView:trailingView:customView:minimalView:relevance:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v106 = a6;
  v104 = a5;
  v102 = a4;
  v100 = a3;
  v94 = a2;
  v88 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30AFF8, &qword_23DBF4008);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v92 = v86 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B000, &qword_23DBF4010);
  v108 = *(v98 - 8);
  v20 = *(v108 + 64);
  MEMORY[0x28223BE20](v98, v21);
  v95 = v86 - v22;
  v97 = sub_23DBEFFAC();
  v96 = *(v97 - 8);
  v23 = *(v96 + 64);
  MEMORY[0x28223BE20](v97, v24);
  v107 = v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_23DBF003C();
  v90 = *(v91 - 8);
  v26 = *(v90 + 64);
  v28 = MEMORY[0x28223BE20](v91, v27);
  v89 = v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a11;
  v99 = *(a11 - 8);
  v30 = *(v99 + 64);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a10;
  v35 = *(a10 - 8);
  v36 = *(v35 + 64);
  v38 = MEMORY[0x28223BE20](v32, v37);
  v40 = v86 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a9;
  v41 = *(a9 - 8);
  v42 = *(v41 + 64);
  v44 = MEMORY[0x28223BE20](v38, v43);
  v46 = v86 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a8 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44, v49);
  v51 = v86 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AXDeviceHasJindo())
  {
    v86[2] = a15;
    v86[1] = a14;
    v86[0] = a13;
    (*(v47 + 16))(v51, v100, a8);
    v52 = sub_23DBF008C();
    (*(v41 + 16))(v46, v102, v101);
    v102 = sub_23DBF008C();
    (*(v35 + 16))(v40, v104, v103);
    v104 = sub_23DBF008C();
    (*(v99 + 16))(v34, v106, v105);
    v106 = sub_23DBF008C();
    result = AXLogUI();
    if (result)
    {
      v54 = v89;
      sub_23DBF004C();
      v55 = v94;

      v56 = sub_23DBF002C();
      v57 = sub_23DBF015C();

      v58 = os_log_type_enabled(v56, v57);
      v59 = v95;
      if (v58)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *&v110 = v61;
        *v60 = 136315138;
        *(v60 + 4) = sub_23DBED918(v88, v55, &v110);
        _os_log_impl(&dword_23DBD1000, v56, v57, "Starting activity for identifier %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v61);
        MEMORY[0x23EEF91F0](v61, -1, -1);
        MEMORY[0x23EEF91F0](v60, -1, -1);
      }

      (*(v90 + 8))(v54, v91);
      v62 = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B010, &qword_23DBF4018);
      v63 = sub_23DBEFF8C();
      v64 = *(v63 - 8);
      v65 = *(v64 + 72);
      v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_23DBF3FC0;
      (*(v64 + 104))(v67 + v66, *MEMORY[0x277CB94E8], v63);
      v68 = v107;
      sub_23DBEFF9C();
      v69 = sub_23DBEFF1C();
      (*(*(v69 - 8) + 56))(v92, 1, 1, v69);
      sub_23DBEEB38();
      sub_23DBEEB8C();
      sub_23DBEEBE0();
      sub_23DBEFFBC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B030, &qword_23DBF4020);
      v70 = v93;
      v71 = sub_23DBEFF5C();
      if (v70)
      {

        (*(v62 + 8))(v59, v98);
        return (*(v96 + 8))(v68, v97);
      }

      else
      {
        v105 = v71;
        *&v110 = sub_23DBEFF3C();
        *(&v110 + 1) = v73;
        *&v111 = v88;
        *(&v111 + 1) = v55;
        *&v112 = v52;
        *(&v112 + 1) = v102;
        *&v113 = v104;
        *(&v113 + 1) = v106;
        swift_getKeyPath();
        v74 = v52;
        v75 = v87;
        v114 = v87;

        v103 = v74;

        sub_23DBEEC34(&v110, v109);
        sub_23DBEE9E8();
        sub_23DBEFFDC();

        v109[0] = v75;
        swift_getKeyPath();
        sub_23DBEFFFC();

        v76 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__activities;
        swift_beginAccess();
        v77 = *(v75 + v76);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v75 + v76) = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = sub_23DBED80C(0, *(v77 + 2) + 1, 1, v77);
          *(v87 + v76) = v77;
        }

        v80 = *(v77 + 2);
        v79 = *(v77 + 3);
        if (v80 >= v79 >> 1)
        {
          v77 = sub_23DBED80C((v79 > 1), v80 + 1, 1, v77);
        }

        *(v77 + 2) = v80 + 1;
        v81 = &v77[64 * v80];
        v82 = v110;
        v83 = v111;
        v84 = v113;
        *(v81 + 4) = v112;
        *(v81 + 5) = v84;
        *(v81 + 2) = v82;
        *(v81 + 3) = v83;
        v85 = v87;
        *(v87 + v76) = v77;
        swift_endAccess();
        v109[0] = v85;
        swift_getKeyPath();
        sub_23DBEFFEC();

        sub_23DBEEC6C(&v110);
        (*(v108 + 8))(v59, v98);
        return (*(v96 + 8))(v107, v97);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_23DBEEAE4();
    swift_allocError();
    *v72 = 0xD000000000000033;
    v72[1] = 0x800000023DBF3A90;
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AXUniversalDisplayManager.endActivity(forIdentifier:)(Swift::String forIdentifier)
{
  v2 = v1;
  object = forIdentifier._object;
  countAndFlagsBits = forIdentifier._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B040, &qword_23DBF4050);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v57 = &v56 - v7;
  v59 = sub_23DBF003C();
  v58 = *(v59 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v59, v9);
  v60 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager___observationRegistrar;
  *&v74 = v2;
  v12 = sub_23DBEE9E8();
  v63 = v11;
  v62 = v12;
  sub_23DBEFFDC();

  v13 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__activities;
  swift_beginAccess();
  v64 = v2;
  v61 = v13;
  v14 = *(v2 + v13);
  v15 = *(v14 + 16);

  if (!v15)
  {
LABEL_10:

    *&v74 = 0;
    *(&v74 + 1) = 0xE000000000000000;
    sub_23DBF01AC();

    *&v74 = 0xD00000000000002ALL;
    *(&v74 + 1) = 0x800000023DBF3B60;
    MEMORY[0x23EEF85E0](countAndFlagsBits, object);
    v22 = v74;
    sub_23DBEEAE4();
    swift_allocError();
    *v23 = v22;
    swift_willThrow();
    return;
  }

  v16 = 0;
  v17 = 32;
  v67 = object;
  while (1)
  {
    if (v16 >= *(v14 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v18 = *(v14 + v17);
    v19 = *(v14 + v17 + 16);
    v20 = *(v14 + v17 + 48);
    v76 = *(v14 + v17 + 32);
    v77 = v20;
    v74 = v18;
    v75 = v19;
    sub_23DBF012C();
    sub_23DBEEC34(&v74, &v70);
    sub_23DBF011C();
    sub_23DBF00EC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    object = v67;
    if (v75 == __PAIR128__(v67, countAndFlagsBits))
    {

      goto LABEL_12;
    }

    v21 = sub_23DBF022C();

    if (v21)
    {
      break;
    }

    ++v16;
    sub_23DBEEC6C(&v74);
    v17 += 64;
    if (v15 == v16)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B030, &qword_23DBF4020);
  v24 = sub_23DBEFF2C();
  v14 = v24;
  if (!(v24 >> 62))
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_14;
    }

LABEL_48:

    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    sub_23DBF01AC();

    *&v70 = 0xD000000000000020;
    *(&v70 + 1) = 0x800000023DBF3B30;
    v53 = v74;

    MEMORY[0x23EEF85E0](v53, *(&v53 + 1));

    MEMORY[0x23EEF85E0](46, 0xE100000000000000);
    v54 = v70;
    sub_23DBEEAE4();
    swift_allocError();
    *v55 = v54;
    swift_willThrow();
    sub_23DBEEC6C(&v74);
    return;
  }

LABEL_47:
  v25 = sub_23DBF01DC();
  if (!v25)
  {
    goto LABEL_48;
  }

LABEL_14:
  v26 = 0;
  v66 = v14 & 0xC000000000000001;
  v65 = v14 & 0xFFFFFFFFFFFFFF8;
  while (v66)
  {
    v27 = MEMORY[0x23EEF86D0](v26, v14);
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_27;
    }

LABEL_18:
    sub_23DBF011C();
    sub_23DBF00EC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (sub_23DBEFF3C() == v74 && v29 == *(&v74 + 1))
    {
      goto LABEL_28;
    }

    v30 = sub_23DBF022C();

    if (v30)
    {
      goto LABEL_29;
    }

    ++v26;
    if (v28 == v25)
    {
      goto LABEL_48;
    }
  }

  if (v26 >= *(v65 + 16))
  {
    goto LABEL_46;
  }

  v27 = *(v14 + 8 * v26 + 32);

  v28 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
LABEL_28:

LABEL_29:

  v31 = AXLogUI();
  v32 = v67;
  v33 = v60;
  if (v31)
  {
    sub_23DBF004C();

    v34 = sub_23DBF002C();
    v35 = sub_23DBF015C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v70 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_23DBED918(countAndFlagsBits, v32, &v70);
      _os_log_impl(&dword_23DBD1000, v34, v35, "Ending activity for identifier %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x23EEF91F0](v37, -1, -1);
      MEMORY[0x23EEF91F0](v36, -1, -1);
    }

    (*(v58 + 8))(v33, v59);
    swift_getKeyPath();
    v38 = v64;
    *&v70 = v64;
    sub_23DBEFFDC();

    v39 = *(v38 + v61);
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = *(v38 + v61);

      v42 = 0;
      v43 = 32;
      while (1)
      {
        v44 = *(v39 + v43);
        v45 = *(v39 + v43 + 16);
        v46 = *(v39 + v43 + 32);
        v73 = *(v39 + v43 + 48);
        v71 = v45;
        v72 = v46;
        v70 = v44;
        sub_23DBEEC34(&v70, v69);
        sub_23DBF011C();
        sub_23DBF00EC();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v71 == __PAIR128__(v67, countAndFlagsBits))
        {
          goto LABEL_41;
        }

        v47 = sub_23DBF022C();

        sub_23DBEEC6C(&v70);
        if (v47)
        {
          goto LABEL_42;
        }

        if (v40 - 1 == v42)
        {
          break;
        }

        ++v42;
        v43 += 64;
        if (v42 >= *(v39 + 16))
        {
          __break(1u);
LABEL_41:

          sub_23DBEEC6C(&v70);
LABEL_42:

          swift_getKeyPath();
          v48 = v64;
          *&v69[0] = v64;
          sub_23DBEFFDC();

          *&v69[0] = v48;
          swift_getKeyPath();
          sub_23DBEFFFC();

          swift_beginAccess();
          sub_23DBEC44C(v42, v69);
          swift_endAccess();
          sub_23DBEEC6C(v69);
          v68 = v48;
          swift_getKeyPath();
          sub_23DBEFFEC();

          goto LABEL_44;
        }
      }
    }

LABEL_44:
    v49 = sub_23DBF014C();
    v50 = v57;
    (*(*(v49 - 8) + 56))(v57, 1, 1, v49);

    v51 = sub_23DBF011C();
    v52 = swift_allocObject();
    v52[2] = v51;
    v52[3] = MEMORY[0x277D85700];
    v52[4] = v27;
    sub_23DBEC94C(0, 0, v50, &unk_23DBF4060, v52);

    sub_23DBEEC6C(&v74);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DBEC44C@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23DBEE7C0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + (a1 << 6));
    v10 = v9[3];
    *a2 = v9[2];
    a2[1] = v10;
    v11 = v9[5];
    a2[2] = v9[4];
    a2[3] = v11;
    result = memmove(v9 + 2, v9 + 6, (v8 - a1) << 6);
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23DBEC4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23DBEFF7C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0A0, &qword_23DBF43F0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  sub_23DBF012C();
  v4[7] = sub_23DBF011C();
  v10 = sub_23DBF00EC();
  v4[8] = v10;
  v4[9] = v9;

  return MEMORY[0x2822009F8](sub_23DBEC610, v10, v9);
}

uint64_t sub_23DBEC610()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  sub_23DBEFF4C();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B000, &qword_23DBF4010);
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  sub_23DBEFF6C();
  v5 = *(MEMORY[0x277CB9290] + 4);
  v11 = (*MEMORY[0x277CB9290] + MEMORY[0x277CB9290]);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_23DBEC728;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[2];

  return v11(v8, v7);
}

uint64_t sub_23DBEC728()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 24);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_23DBEF6B0(v3, &qword_27E30B0A0, &qword_23DBF43F0);
  v7 = *(v1 + 72);
  v8 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_23DBEC8D8, v8, v7);
}

uint64_t sub_23DBEC8D8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23DBEC94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B040, &qword_23DBF4050);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_23DBEF834(a3, v28 - v12, &qword_27E30B040, &qword_23DBF4050);
  v14 = sub_23DBF014C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_23DBEF6B0(v13, &qword_27E30B040, &qword_23DBF4050);
  }

  else
  {
    sub_23DBF013C();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_23DBF00EC();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_23DBF00AC() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_23DBEF6B0(a3, &qword_27E30B040, &qword_23DBF4050);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23DBEF6B0(a3, &qword_27E30B040, &qword_23DBF4050);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t AXUniversalDisplayManager.activity(forActivityIdentifier:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  swift_getKeyPath();
  *&v23 = v3;
  sub_23DBEE9E8();
  sub_23DBEFFDC();

  v6 = OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__activities;
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = *(v7 + 16);

  if (v8)
  {
    v10 = 0;
    v11 = 32;
    while (v10 < *(v7 + 16))
    {
      v12 = *(v7 + v11);
      v13 = *(v7 + v11 + 16);
      v14 = *(v7 + v11 + 48);
      v25 = *(v7 + v11 + 32);
      v26 = v14;
      v23 = v12;
      v24 = v13;
      sub_23DBF012C();
      sub_23DBEEC34(&v23, &v19);
      sub_23DBF011C();
      sub_23DBF00EC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v19 = v23;
      v20 = v24;
      v21 = v25;
      v22 = v26;
      if (v23 == __PAIR128__(a2, a1))
      {

LABEL_12:
        v16 = v20;
        *a3 = v19;
        a3[1] = v16;
        v17 = v22;
        a3[2] = v21;
        a3[3] = v17;
        return result;
      }

      v15 = sub_23DBF022C();

      if (v15)
      {

        goto LABEL_12;
      }

      ++v10;
      result = sub_23DBEEC6C(&v23);
      v11 += 64;
      if (v8 == v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

Swift::Void __swiftcall AXUniversalDisplayManager.remoteSceneDidHandleHomeGesture(scene:)(UIWindowScene *scene)
{
  v2 = [objc_opt_self() sharedDisplayManager];
  if (v2)
  {
    v3 = v2;
    [v2 _remoteSceneDidHandleHomeGesture_];
  }

  else
  {
    __break(1u);
  }
}

id AXUniversalDisplayManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__activities] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC22AccessibilityUIService25AXUniversalDisplayManager__remoteAlertHandles] = sub_23DBEEE44(v2);
  sub_23DBF000C();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id AXUniversalDisplayManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AXUIActivityRelevance.hashValue.getter()
{
  v1 = *v0;
  sub_23DBF029C();
  MEMORY[0x23EEF87C0](v1);
  return sub_23DBF02BC();
}

uint64_t sub_23DBED1B0()
{
  v1 = *v0;
  sub_23DBF029C();
  MEMORY[0x23EEF87C0](v1);
  return sub_23DBF02BC();
}

uint64_t sub_23DBED224()
{
  v1 = *v0;
  sub_23DBF029C();
  MEMORY[0x23EEF87C0](v1);
  return sub_23DBF02BC();
}

uint64_t sub_23DBED280(uint64_t a1)
{
  v2 = sub_23DBEF498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DBED2BC(uint64_t a1)
{
  v2 = sub_23DBEF498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DBED3B4(uint64_t a1)
{
  v2 = sub_23DBEF4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23DBED3F0(uint64_t a1)
{
  v2 = sub_23DBEF4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23DBED470(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a6();
  sub_23DBF02CC();
  return (*(v9 + 8))(v13, v8);
}

unint64_t sub_23DBED5A0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23DBF01AC();

  MEMORY[0x23EEF85E0](v1, v2);
  return 0xD000000000000012;
}

uint64_t sub_23DBED61C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DBED714;

  return v7(a1);
}

uint64_t sub_23DBED714()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_23DBED80C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B0, &qword_23DBF4400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23DBED918(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23DBED9E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23DBEF710(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_23DBED9E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23DBEDAF0(a5, a6);
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
    result = sub_23DBF01CC();
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

uint64_t sub_23DBEDAF0(uint64_t a1, unint64_t a2)
{
  v4 = sub_23DBEDB3C(a1, a2);
  sub_23DBEDC6C(&unk_284FF66B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23DBEDB3C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23DBEDD58(v5, 0);
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

  result = sub_23DBF01CC();
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
        v10 = sub_23DBF00DC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23DBEDD58(v10, 0);
        result = sub_23DBF019C();
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

uint64_t sub_23DBEDC6C(uint64_t result)
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

  result = sub_23DBEDDCC(result, v12, 1, v3);
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

void *sub_23DBEDD58(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0A8, &qword_23DBF43F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23DBEDDCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0A8, &qword_23DBF43F8);
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

unint64_t sub_23DBEDEC0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23DBF029C();
  sub_23DBF00BC();
  v6 = sub_23DBF02BC();

  return sub_23DBEDF38(a1, a2, v6);
}

unint64_t sub_23DBEDF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23DBF022C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_23DBEDFF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_23DBEDEC0(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23DBEE654();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_23DBEE32C(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_23DBEE088(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B098, &qword_23DBF43D0);
  v39 = a2;
  result = sub_23DBF01FC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_23DBF029C();
      sub_23DBF00BC();
      result = sub_23DBF02BC();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23DBEE32C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23DBF018C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23DBF029C();

      sub_23DBF00BC();
      v13 = sub_23DBF02BC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23DBEE4DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23DBEDEC0(a2, a3);
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
      sub_23DBEE088(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_23DBEDEC0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_23DBF024C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_23DBEE654();
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

id sub_23DBEE654()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B098, &qword_23DBF43D0);
  v2 = *v0;
  v3 = sub_23DBF01EC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_23DBEE7D4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_23DBEDEC0(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_23DBEF7E8();
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_23DBF016C();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

id sub_23DBEE944(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_23DBE9680(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104));
}

unint64_t sub_23DBEE994()
{
  result = qword_27E30AFD8;
  if (!qword_27E30AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30AFD8);
  }

  return result;
}

unint64_t sub_23DBEE9E8()
{
  result = qword_27E30AFE8;
  if (!qword_27E30AFE8)
  {
    type metadata accessor for AXUniversalDisplayManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30AFE8);
  }

  return result;
}

uint64_t type metadata accessor for AXUniversalDisplayManager()
{
  result = qword_27E30B050;
  if (!qword_27E30B050)
  {
    return swift_getSingletonMetadata();
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

unint64_t sub_23DBEEAE4()
{
  result = qword_27E30B008;
  if (!qword_27E30B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B008);
  }

  return result;
}

unint64_t sub_23DBEEB38()
{
  result = qword_27E30B018;
  if (!qword_27E30B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B018);
  }

  return result;
}

unint64_t sub_23DBEEB8C()
{
  result = qword_27E30B020;
  if (!qword_27E30B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B020);
  }

  return result;
}

unint64_t sub_23DBEEBE0()
{
  result = qword_27E30B028;
  if (!qword_27E30B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B028);
  }

  return result;
}

uint64_t sub_23DBEEC9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23DBEED50;

  return sub_23DBEC4E4(a1, v4, v5, v6);
}

uint64_t sub_23DBEED50()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_23DBEEE44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B098, &qword_23DBF43D0);
    v3 = sub_23DBF020C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_23DBEDEC0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23DBEEF4C()
{
  result = qword_27E30B048;
  if (!qword_27E30B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B048);
  }

  return result;
}

uint64_t sub_23DBEEFA8()
{
  result = sub_23DBF001C();
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23DBEF05C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23DBEF0A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AXUIActivityRelevance(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AXUIActivityRelevance(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23DBEF284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23DBEF2CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_23DBEF33C()
{
  result = qword_27E30B060;
  if (!qword_27E30B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B060);
  }

  return result;
}

unint64_t sub_23DBEF394()
{
  result = qword_27E30B068;
  if (!qword_27E30B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B068);
  }

  return result;
}

unint64_t sub_23DBEF3F8()
{
  result = qword_27E30B070;
  if (!qword_27E30B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B070);
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

unint64_t sub_23DBEF498()
{
  result = qword_27E30B080;
  if (!qword_27E30B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B080);
  }

  return result;
}

unint64_t sub_23DBEF4EC()
{
  result = qword_27E30B090;
  if (!qword_27E30B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B090);
  }

  return result;
}

uint64_t sub_23DBEF540(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DBEFBB8;

  return sub_23DBED61C(a1, v5);
}

uint64_t sub_23DBEF5F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DBEED50;

  return sub_23DBED61C(a1, v5);
}

uint64_t sub_23DBEF6B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23DBEF710(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23DBEF7E8()
{
  result = qword_27E30B0C0;
  if (!qword_27E30B0C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E30B0C0);
  }

  return result;
}

uint64_t sub_23DBEF834(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_34Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23DBEF948(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30B0B8, &qword_23DBF4408) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23DBEFA40()
{
  result = qword_27E30B0D0;
  if (!qword_27E30B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B0D0);
  }

  return result;
}

unint64_t sub_23DBEFA98()
{
  result = qword_27E30B0D8;
  if (!qword_27E30B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B0D8);
  }

  return result;
}

unint64_t sub_23DBEFAF0()
{
  result = qword_27E30B0E0;
  if (!qword_27E30B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B0E0);
  }

  return result;
}

unint64_t sub_23DBEFB48()
{
  result = qword_27E30B0E8;
  if (!qword_27E30B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30B0E8);
  }

  return result;
}