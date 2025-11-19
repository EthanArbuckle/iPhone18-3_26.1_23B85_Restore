uint64_t sub_19D58()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return (_swift_task_switch)(sub_19E54, 0, 0);
}

uint64_t sub_19E54()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 72);
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    *(v0 + 32) = *(v0 + 16);
    swift_willThrowTypedImpl();
  }

  else
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19F10(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(sub_A168(&qword_4C580, &qword_34670) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_19FAC, 0, 0);
}

uint64_t sub_19FAC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_32AE8();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_32AC8();
  v5 = v3;
  v6 = v2;
  v7 = sub_32AB8();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  v8[5] = v3;
  v9 = sub_177F0(0, 0, v1, &unk_34900, v8);
  v0[8] = v9;
  v10 = async function pointer to Task.result.getter[1];
  v11 = swift_task_alloc();
  v0[9] = v11;
  v12 = type metadata accessor for AXMotionCuesRootViewController();
  v13 = sub_A168(&qword_4C0E0, &qword_348D0);
  v0[10] = v13;
  *v11 = v0;
  v11[1] = sub_1A140;

  return Task.result.getter(v0 + 2, v9, v12, v13, &protocol self-conformance witness table for Error);
}

uint64_t sub_1A140()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return (_swift_task_switch)(sub_1A23C, 0, 0);
}

uint64_t sub_1A23C()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    v2 = *(v0 + 80);
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    *(v0 + 32) = v1;
    swift_willThrowTypedImpl();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);

    v9 = *(v0 + 8);

    return v9(v1);
  }
}

uint64_t sub_1A324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_16240;

  return sub_15598(a1, v4, v5, v6);
}

uint64_t sub_1A3E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B048;

  return sub_17AA8(a1, v4, v5, v6);
}

uint64_t sub_1A4A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A508(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_1A554(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A598()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A5D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A618(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1A660()
{
  result = qword_4C110;
  if (!qword_4C110)
  {
    sub_9EA8(&qword_4C108, &qword_348E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4C110);
  }

  return result;
}

uint64_t sub_1A6C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A704()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1A744()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B048;

  return sub_126B8();
}

uint64_t sub_1A7F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1A840(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_16240;

  return sub_16F70(a1, v4, v5, v7, v6);
}

uint64_t sub_1A964(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1A9AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_A168(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAC4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1AAFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B048;

  return sub_18C2C(a1, v5);
}

uint64_t sub_1ABB8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B048;

  return sub_180C0(a1, v5);
}

uint64_t sub_1AC78()
{
  v1 = sub_A168(&qword_4C158, &unk_34980);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AD5C(uint64_t a1)
{
  v4 = *(sub_A168(&qword_4C158, &unk_34980) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B048;

  return sub_107EC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1AE90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AEA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1AEF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B048;

  return sub_11320(a1, v4, v5, v7, v6);
}

uint64_t *sub_1AFB0(uint64_t a1, uint64_t *a2)
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

double sub_1B05C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v76 = *(a1 + 8);
  v6 = *(a1 + 24);
  v68 = *(a1 + 16);
  v75 = v6;
  v7 = v6;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v13 = *(a1 + 64);
  v12 = *(a1 + 72);
  v70 = v13;
  v71 = v12;
  v14 = *(a1 + 88);
  v69 = *(a1 + 80);
  v72 = v69;
  v73 = v14;
  v67 = (a1 + 96);
  v15 = *(a1 + 112);
  v78[0] = *(a1 + 96);
  v78[1] = v15;
  v74 = *(a1 + 128);
  v16 = sub_32698();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v21 = fabs(v5) <= 1.5 && (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  v22 = 0.0;
  v66 = v5;
  if (v21)
  {
    v23 = v5;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = v12;
  v25 = v68;
  if (fabs(v76) <= 1.5 && (*&v76 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v27 = v76;
  }

  else
  {
    v27 = 0.0;
  }

  if (fabs(v68) <= 1.5 && (*&v68 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v29 = v68;
  }

  else
  {
    v29 = 0.0;
  }

  if (fabs(v75) <= 1.5 && (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v31 = v75;
  }

  else
  {
    v31 = 0.0;
  }

  if (fabs(v8) <= 1.5 && (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v33 = v8;
  }

  else
  {
    v33 = 0.0;
  }

  if (fabs(v9) <= 1.5 && (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v35 = v9;
  }

  else
  {
    v35 = 0.0;
  }

  if (fabs(v10) <= 10.0 && (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v37 = v10;
  }

  else
  {
    v37 = 0.0;
  }

  if (fabs(v11) <= 10.0 && (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v39 = v11;
  }

  else
  {
    v39 = 0.0;
  }

  v40 = fabs(v13) <= 10.0 && (*&v70 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  v70 = v13;
  if (v40)
  {
    v41 = v13;
  }

  else
  {
    v41 = 0.0;
  }

  v42 = v69;
  if (fabs(v24) <= 6.4 && (*&v71 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v44 = v24;
  }

  else
  {
    v44 = 0.0;
  }

  if (fabs(v69) <= 6.4 && (*&v72 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v46 = v69;
  }

  else
  {
    v46 = 0.0;
  }

  v47 = fabs(v14) <= 6.4 && (*&v73 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  v73 = v14;
  if (v47)
  {
    v22 = v14;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v48 = -v27;
      v75 = -v33;
      v10 = -v39;
      v76 = v23;
      v25 = v29;
      v8 = v31;
      v9 = v35;
      v24 = -v46;
      v11 = v37;
      v42 = v44;
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_80;
      }

      v76 = -v23;
      v8 = -v31;
      v11 = -v37;
      v48 = v27;
      v25 = v29;
      v75 = v33;
      v9 = v35;
      v42 = -v44;
      v10 = v39;
      v24 = v46;
    }

LABEL_87:
    v49 = v22;
    goto LABEL_88;
  }

  if (a2 == 1)
  {
    v48 = v23;
    v76 = v27;
    v25 = v29;
    v75 = v31;
    v8 = v33;
    v9 = v35;
    v10 = v37;
    v11 = v39;
    v24 = v44;
    v42 = v46;
    goto LABEL_87;
  }

  if (a2 == 2)
  {
    v48 = -v23;
    v76 = -v27;
    v75 = -v31;
    v8 = -v33;
    v10 = -v37;
    v25 = v29;
    v11 = -v39;
    v9 = v35;
    v24 = -v44;
    v49 = v22;
    v42 = -v46;
LABEL_88:
    v59 = v67;
    goto LABEL_89;
  }

LABEL_80:
  v50 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v20;
  if (qword_4BAF0 != -1)
  {
    v65 = v18;
    swift_once();
    v18 = v65;
  }

  v52 = v18;
  v53 = sub_AD0C(v18, MCLog);
  swift_beginAccess();
  v54 = v53;
  v55 = v52;
  (*(v51 + 16))(v50, v54, v52);
  v56 = sub_32678();
  v57 = sub_32C58();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_0, v56, v57, "Processing unknown orientation.", v58, 2u);
  }

  (*(v51 + 8))(v50, v55);
  v59 = v78;
  v48 = v66;
  v41 = v70;
  v49 = v73;
LABEL_89:
  v61 = v59[1];
  v77 = *v59;
  v60 = v77;
  v62 = v76;
  *a3 = v48;
  *(a3 + 8) = v62;
  v63 = v75;
  *(a3 + 16) = v25;
  *(a3 + 24) = v63;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = v10;
  *(a3 + 56) = v11;
  *(a3 + 64) = v41;
  *(a3 + 72) = v24;
  *(a3 + 80) = v42;
  *(a3 + 88) = v49;
  *(a3 + 96) = v60;
  *(a3 + 112) = v61;
  result = v74;
  *(a3 + 128) = v74;
  return result;
}

uint64_t sub_1B6EC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_32D48();
    v5 = v4;
    v6 = sub_32D98();
    v8 = v7;
    v9 = sub_32D58();
    sub_1C124(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1C124(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_32D38();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1BD80(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1C124(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_1B808(double a1, double a2)
{
  v3 = v2;
  v6 = sub_325B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __asm { FMOV            V0.2D, #-1.0 }

  *(v3 + 40) = _Q0;
  *(v3 + 56) = 0xBFF0000000000000;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = [objc_allocWithZone(type metadata accessor for AXMotionCuesGridElementView()) initWithFrame:{0.5, 0.5, 0.0, 0.0}];
  v16 = sub_28D00();
  *(v3 + 64) = v16;
  v17 = *(v3 + 16);
  v18 = v16;
  [v17 bounds];
  [v18 setFrame:?];

  (*(v7 + 104))(v10, enum case for AccessibilityFeatureFlags.motionCuesCustomization(_:), v6);
  LOBYTE(v17) = sub_325A8();
  (*(v7 + 8))(v10, v6);
  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_4BB20 != -1)
  {
    swift_once();
  }

  v19 = 10.5;
  if (*&dword_4EA08 <= 0.75)
  {
LABEL_5:
    v19 = 6.0;
  }

  [*(v3 + 64) setCornerRadius:v19];
  v20 = *(v3 + 16);
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 clearColor];
  [v22 setBackgroundColor:v23];

  v24 = [*(v3 + 16) layer];
  [v24 addSublayer:*(v3 + 64)];

  v25 = [*(v3 + 16) layer];
  [v25 setCornerRadius:v19];

  return v3;
}

double sub_1BA94(double a1, double a2)
{
  v3 = v2;
  v6 = sub_325B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 48);
  if (v11 <= a1)
  {
    v15 = 5.02654825;
  }

  else
  {
    v12 = [objc_opt_self() currentDevice];
    [v12 userInterfaceIdiom];

    v13 = sub_1BFA4();
    if ((v14 & 1) == 0)
    {
      sub_1C0AC(v13);
    }

    sub_29508();
    v15 = v16 * 6.28318531;
    v11 = *(v3 + 48);
  }

  v17 = 1.0 / (1.0 / a2) / (1.0 / (1.0 / a2) + 1.0 / v15);
  v18 = v17 * a1 + v11 * (1.0 - v17);
  (*(v7 + 104))(v10, enum case for AccessibilityFeatureFlags.motionCuesCustomization(_:), v6);
  v19 = sub_325A8();
  (*(v7 + 8))(v10, v6);
  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_4BB20 != -1)
  {
    swift_once();
  }

  v20 = 21.0;
  if (*&dword_4EA08 <= 0.75)
  {
LABEL_11:
    v20 = 12.0;
  }

  v21 = 0.0;
  if (v18 >= 0.0)
  {
    v21 = v18;
  }

  if (v21 >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  *(v3 + 40) = a1;
  *(v3 + 48) = v22;
  [*(v3 + 64) setBounds:{0.0, 0.0, v22, v22}];
  [*(v3 + 64) frame];
  v23 = CGRectGetWidth(v27) * 0.5;
  [*(v3 + 64) cornerRadius];
  if (v23 != v24)
  {
    [*(v3 + 64) setCornerRadius:v23];
  }

  return v22;
}

uint64_t sub_1BD1C()
{

  return swift_deallocClassInstance();
}

void sub_1BD80(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_32D88();
      sub_1A964(0, &qword_4C280, UIScene_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1A964(0, &qword_4C280, UIScene_ptr);
    if (sub_32D68() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_32D78();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_32CC8(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_32CD8();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

id sub_1BFA4()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_1A964(0, &qword_4C280, UIScene_ptr);
  sub_1C0BC();
  v2 = sub_32B98();

  v3 = sub_1B6EC(v2);

  if (!v3)
  {
    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

unint64_t sub_1C0BC()
{
  result = qword_4C530;
  if (!qword_4C530)
  {
    sub_1A964(255, &qword_4C280, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4C530);
  }

  return result;
}

uint64_t sub_1C124(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1C130()
{
  v0 = type metadata accessor for AXMotionCuesAnalyticsHelper();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = OBJC_IVAR____TtC18AXMotionCuesServer27AXMotionCuesAnalyticsHelper_lastEnableTime;
  v5 = sub_32538();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  qword_4E9E8 = v3;
  return result;
}

unint64_t sub_1C1BC(char a1, char a2)
{
  v3 = v2;
  v6 = sub_A168(&qword_4C0D0, &qword_34888);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = sub_32538();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v33 - v19;
  v21 = OBJC_IVAR____TtC18AXMotionCuesServer27AXMotionCuesAnalyticsHelper_lastEnableTime;
  swift_beginAccess();
  sub_1C718(v3 + v21, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C788(v12);
    if (a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
    sub_32528();
    sub_324F8();
    v23 = v22;
    v34 = v10;
    v24 = a2;
    v25 = a1;
    v26 = *(v14 + 8);
    v26(v18, v13);
    v26(v20, v13);
    a1 = v25;
    *(v3 + 24) = v23 + *(v3 + 24);
    v27 = v34;
    (*(v14 + 56))(v34, 1, 1, v13);
    swift_beginAccess();
    sub_199B4(v27, v3 + v21);
    swift_endAccess();
    if (v24)
    {
      goto LABEL_8;
    }
  }

  result = _AXSMotionCuesMode();
  if (result || *(v3 + 17) != 1 || (a1 & 1) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  result = sub_1CD78();
  v29 = *(v3 + 24) / 600.0;
  if (COERCE__INT64(fabs(v29)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v29 < 9.22337204e18)
  {
    v30 = result;
    isa = sub_32BA8().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v30;
    sub_1CA94(isa, 0x7544657669746361, 0xEE006E6F69746172, isUniquelyReferenced_nonNull_native);
    sub_1CF7C(0xD000000000000029, 0x8000000000037E10);

    *(v3 + 16) = 0;
LABEL_12:
    *(v3 + 17) = a1 & 1;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C55C()
{
  sub_1C788(v0 + OBJC_IVAR____TtC18AXMotionCuesServer27AXMotionCuesAnalyticsHelper_lastEnableTime);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AXMotionCuesAnalyticsHelper()
{
  result = qword_4C2C0;
  if (!qword_4C2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C614()
{
  sub_1C6C0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C6C0()
{
  if (!qword_4C2D0)
  {
    sub_32538();
    v0 = sub_32CF8();
    if (!v1)
    {
      atomic_store(v0, &qword_4C2D0);
    }
  }
}

uint64_t sub_1C718(uint64_t a1, uint64_t a2)
{
  v4 = sub_A168(&qword_4C0D0, &qword_34888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C788(uint64_t a1)
{
  v2 = sub_A168(&qword_4C0D0, &qword_34888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_A168(&qword_4C0C8, &qword_34AD0);
  v39 = a2;
  result = sub_32E78();
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
      sub_32F78();
      sub_329E8();
      result = sub_32F88();
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

uint64_t sub_1CA94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1889C(a2, a3);
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
      sub_1C7F0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1889C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_32F18();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_1CC0C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
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

id sub_1CC0C()
{
  v1 = v0;
  sub_A168(&qword_4C0C8, &qword_34AD0);
  v2 = *v0;
  v3 = sub_32E68();
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

unint64_t sub_1CD78()
{
  sub_A168(&qword_4C3F0, &qword_34AD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_34A60;
  *(inited + 32) = 1701080941;
  *(inited + 40) = 0xE400000000000000;
  _AXSMotionCuesMode();
  *(inited + 48) = sub_32F68();
  *(inited + 56) = 0x656C797473;
  *(inited + 64) = 0xE500000000000000;
  _AXSMotionCuesStyle();
  *(inited + 72) = sub_32F68();
  *(inited + 80) = 0x6373796172477369;
  *(inited + 88) = 0xEB00000000656C61;
  _AXSMotionCuesTintColor();
  *(inited + 96) = sub_32A88();
  *(inited + 104) = 0x73746F4465726F6DLL;
  *(inited + 112) = 0xE800000000000000;
  sub_32C28();
  v1 = sub_32C18();
  v2 = direct field offset for AXSettings.motionCues;
  swift_beginAccess();
  v3 = *&v1[v2];

  sub_32BE8();
  *(inited + 120) = sub_32A88();
  *(inited + 128) = 0x6F4472656772616CLL;
  *(inited + 136) = 0xEA00000000007374;
  v4 = sub_32C18();
  v5 = direct field offset for AXSettings.motionCues;
  swift_beginAccess();
  v6 = *&v4[v5];

  sub_32BF8();
  *(inited + 144) = sub_32A88();
  v7 = sub_1976C(inited);
  swift_setDeallocating();
  sub_A168(&qword_4C3F8, &unk_34AE0);
  swift_arrayDestroy();
  return v7;
}

void sub_1CF7C(uint64_t a1, unint64_t a2)
{
  v4 = sub_32698();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v9 = sub_AD0C(v4, MCLog);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_32678();
  v11 = sub_32C68();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v12 = 136315394;
    *(v12 + 4) = sub_182B0(a1, a2, &v21);
    *(v12 + 12) = 2080;
    sub_1D278();
    v13 = sub_32928();
    v15 = sub_182B0(v13, v14, &v21);
    v19 = v4;
    v16 = v15;

    *(v12 + 14) = v16;
    _os_log_impl(&dword_0, v10, v11, "AXMotionCuesAnalyticsHelper: Sending event %s with payload %s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v8, v19);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v17 = sub_32968();
  sub_1D278();
  isa = sub_32908().super.isa;
  AnalyticsSendEvent();
}

unint64_t sub_1D278()
{
  result = qword_4C0D8;
  if (!qword_4C0D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4C0D8);
  }

  return result;
}

void sub_1D2C4(int64x2_t *a1@<X8>, float64x2_t a2@<Q0>, float64x2_t a3@<Q1>)
{
  v4 = vmulq_f64(a3, xmmword_34AF0);
  v5 = vnegq_f64(a2);
  v6 = vmulq_f64(a3, a3);
  v7 = 1.0 / vaddvq_f64(vaddq_f64(vmulq_f64(a2, a2), v6));
  v8 = vmulq_n_f64(v4, v7);
  v9 = vmulq_n_f64(v5, v7);
  v10 = vmulq_f64(v8, xmmword_34AF0);
  v11 = vnegq_f64(v9);
  v12 = vextq_s8(v10, vnegq_f64(v10), 8uLL);
  v13 = vmlaq_f64(vmulq_f64(v10, 0), 0, v12);
  v14 = vaddq_f64(v12, vmlaq_f64(vmulq_f64(v9, 0), 0, vextq_s8(v11, v9, 8uLL)));
  v15 = vaddq_f64(vextq_s8(v9, v11, 8uLL), v13);
  v16 = vnegq_f64(v15);
  v17 = vextq_s8(v14, vnegq_f64(v14), 8uLL);
  v18 = vmlaq_n_f64(vmulq_laneq_f64(v16, v9, 1), vextq_s8(v15, v16, 8uLL), v9.f64[0]);
  v19 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v15, v8, 1), vextq_s8(v16, v15, 8uLL), v8.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v14, v9, 1), v17, v9.f64[0]));
  v20 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v14, v8, 1), v17, v8.f64[0]), v18);
  v21 = vmulq_f64(v19, v19);
  v21.f64[0] = 1.0 / sqrt(vmulq_f64(v20, v20).f64[0] + vaddvq_f64(v21));
  v22 = vmulq_n_f64(v19, v21.f64[0]);
  v23 = vmulq_f64(v20, v21);
  v24 = v23.f64[0] + vaddvq_f64(vmulq_f64(v22, 0));
  if (fabs(v24 + -1.0) >= 0.000001)
  {
    if (fabs(v24 + 1.0) >= 0.000001)
    {
      v34 = vmulq_f64(v23, vnegq_f64(0));
      v23.f64[1] = v22.f64[0];
      v35 = vmlaq_f64(vmulq_f64(v22, xmmword_34B00), 0, v23);
      __asm { FMOV            V2.2D, #1.0 }

      v41 = vmlaq_laneq_f64(v34, _Q2, v22, 1);
      v42 = vmulq_f64(v35, v35);
      v43 = vmulq_f64(v41, v41).f64[0];
      v41.f64[1] = v35.f64[0];
      v6.f64[0] = 1.0 / sqrt(v42.f64[1] + v43 + v42.f64[0]);
      v51 = vmulq_n_f64(v41, v6.f64[0]);
      v53 = vmulq_laneq_f64(v6, v35, 1);
      v44 = acos(v24);
      v46 = __sincos_stret(v44 * 0.5);
      v45.f64[0] = v46.__sinval;
      *&v47.f64[0] = v51.i64[0];
      *&v47.f64[1] = vextq_s8(v51, v51, 8uLL).u64[0];
      *&v48.f64[0] = *&vmulq_f64(v53, v45);
      v48.f64[1] = v46.__cosval;
      v55[0] = vmulq_n_f64(v47, v46.__sinval);
      v55[1] = v48;
      sub_1D844(v55, v54, v49);
      v30 = v54[0];
      v28 = v54[1];
      v31 = v54[2];
      v33 = v54[3];
      v32 = v54[4];
      v29 = v54[5];
      goto LABEL_7;
    }

    sub_A168(&unk_4C400, &qword_34B18);
    v25 = swift_allocObject();
    v25[2] = 0x3FF0000000000000uLL;
    v25[3] = 0uLL;
    v26.i64[0] = 0;
    v26.i64[1] = 0xBFF0000000000000;
    v25[4] = v26;
    v25[5] = 0uLL;
    v27 = 0xBFF0000000000000;
  }

  else
  {
    sub_A168(&unk_4C400, &qword_34B18);
    v25 = swift_allocObject();
    v25[2] = 0x3FF0000000000000uLL;
    v25[3] = 0uLL;
    v26.i64[0] = 0;
    v26.i64[1] = 0x3FF0000000000000;
    v25[4] = v26;
    v25[5] = 0uLL;
    v27 = 0x3FF0000000000000;
  }

  v25[6] = 0u;
  v25[7] = v27;
  v50 = v26;
  v52 = v27;
  swift_setDeallocating();
  swift_deallocClassInstance();
  v29 = v52;
  v28 = 0u;
  v30 = vzip1q_s64(0x3FF0000000000000uLL, v50);
  v31 = vzip2q_s64(0x3FF0000000000000uLL, v50);
  v32 = vzip1q_s64(0, 0);
  v33 = vdupq_laneq_s64(0, 1);
LABEL_7:
  *a1 = v30;
  a1[1] = v28;
  a1[2] = v31;
  a1[3] = v33;
  a1[4] = v32;
  a1[5] = v29;
}

__n128 sub_1D754@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q1>)
{
  a3.f64[0] = *(a1 + 120);
  v22 = *(a1 + 96);
  v23 = a3;
  *&a3.f64[1] = v22;
  v21 = *(a1 + 104);
  sub_1D2C4(&v24, v21, a3);
  v5.f64[0] = *a1;
  v6.f64[0] = *(a1 + 8);
  v7 = vmulq_f64(v25, v5);
  v8 = vmlaq_n_f64(vmulq_n_f64(v24, *a1), v26, v6.f64[0]);
  v9 = vmlaq_f64(v7, v6, v27);
  v6.f64[0] = *(a1 + 16);
  v10.f64[0] = *(a1 + 24);
  v11 = vmlaq_f64(v9, v6, v29);
  v12 = vmlaq_n_f64(v8, v28, v6.f64[0]);
  v6.f64[0] = *(a1 + 32);
  v13.f64[0] = *(a1 + 40);
  v14 = vmlaq_f64(vmlaq_f64(vmulq_f64(v25, v10), v6, v27), v13, v29);
  v15 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v24, v10.f64[0]), v26, v6.f64[0]), v28, v13.f64[0]);
  v6.f64[0] = *(a1 + 48);
  v13.f64[0] = *(a1 + 56);
  v16.f64[0] = *(a1 + 64);
  v17 = *&vmlaq_f64(vmlaq_f64(vmulq_f64(v25, v6), v13, v27), v16, v29);
  v18 = *(a1 + 128);
  v19 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v24, v6.f64[0]), v26, v13.f64[0]), v28, v16.f64[0]);
  *a2 = v12;
  *(a2 + 16) = vzip1q_s64(v11, v15);
  *(a2 + 32) = vextq_s8(v15, v14, 8uLL);
  *(a2 + 48) = v19;
  *(a2 + 64) = v17;
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = v22;
  *(a2 + 104) = v21;
  result = v23;
  *(a2 + 120) = v23.n128_u64[0];
  *(a2 + 128) = v18;
  return result;
}

__n128 sub_1D844@<Q0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q7>)
{
  result = *a1;
  _Q2 = a1[1];
  _D1 = a1->f64[1];
  _D5 = _Q2.f64[1];
  __asm { FMLA            D3, D5, V2.D[1] }

  v13 = vmuld_lane_f64(_Q2.f64[0], _Q2, 1);
  v14.f64[0] = vmuld_lane_f64(_D1, _Q2, 1);
  *&v3 = -(v14.f64[0] - a1->f64[0] * _Q2.f64[0]) - (v14.f64[0] - a1->f64[0] * _Q2.f64[0]);
  *(&_Q3 + 1) = v13 + a1->f64[0] * _D1 + v13 + a1->f64[0] * _D1;
  *&v15 = -(v13 - a1->f64[0] * _D1) - (v13 - a1->f64[0] * _D1);
  __asm
  {
    FMLA            D4, D1, V0.D[1]
    FMLA            D4, D5, V2.D[1]
  }

  a3.n128_f64[0] = vmuld_lane_f64(a1->f64[0], _Q2, 1);
  a3.n128_f64[0] = a3.n128_f64[0] + _D1 * _Q2.f64[0] + a3.n128_f64[0] + _D1 * _Q2.f64[0];
  *(&v15 + 1) = _D4 - result.n128_f64[0] * result.n128_f64[0];
  v14.f64[1] = -(a1->f64[0] * _Q2.f64[1]);
  v18 = vmlaq_n_f64(v14, *a1, _Q2.f64[0]);
  *a2 = _Q3;
  *(a2 + 16) = v3;
  *(a2 + 32) = v15;
  *(a2 + 48) = a3;
  __asm { FMLS            D2, D1, V0.D[1] }

  *(a2 + 64) = vaddq_f64(v18, v18);
  *(a2 + 80) = _Q2;
  return result;
}

uint64_t sub_1D8DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_1D920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_displayLink] = 0;
  v11 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_updateTimestamp];
  *v11 = 0;
  v11[8] = 1;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rows] = &_swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_gridView;
  *&v5[v12] = [objc_allocWithZone(UIView) init];
  v13 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullWidth];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullHeight];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_leftEdge];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rightEdge];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_topEdge];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_bottomEdge];
  *v18 = 0;
  v18[8] = 1;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentRowCount] = 0;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentColumnCount] = 0;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_densityMonitorTask] = 0;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_dotSizeMonitorTask] = 0;
  v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_modelReceivingData] = 0;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_nilModelOutputCount] = 0;
  v19 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_statistics];
  *v19 = 0u;
  *(v19 + 2) = 0x7FEFFFFFFFFFFFFFLL;
  *(v19 + 24) = 0u;
  *(v19 + 40) = xmmword_34130;
  v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxExperience] = 2;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager] = 0;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxViewController] = 0;
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_model] = a1;
  v20 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesMovingHandler];
  *v20 = a2;
  v20[1] = a3;
  v21 = &v5[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesVisibleHandler];
  *v21 = a4;
  v21[1] = a5;
  v23.receiver = v5;
  v23.super_class = type metadata accessor for AXMotionCuesRootViewController();
  return objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
}

id AXMotionCuesRootViewController.__deallocating_deinit()
{
  AXMotionCuesRootViewController.tearDown()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXMotionCuesRootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall AXMotionCuesRootViewController.tearDown()()
{
  sub_22438();
  v1 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_displayLink;
  [*(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_displayLink) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  swift_beginAccess();
  _UIUpdateRequestDeactivate();
  swift_endAccess();
  if (qword_4C410)
  {
    _UIUpdateSequenceRemoveItem();
    qword_4C410 = 0;
  }
}

Swift::Void __swiftcall AXMotionCuesRootViewController.viewDidLoad()()
{
  v1 = sub_32698();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AXMotionCuesRootViewController();
  v21.receiver = v0;
  v21.super_class = v6;
  objc_msgSendSuper2(&v21, "viewDidLoad");
  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v7 = sub_AD0C(v1, MCLog);
  swift_beginAccess();
  (*(v2 + 16))(v5, v7, v1);
  v8 = v0;
  v9 = sub_32678();
  v10 = sub_32C48();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_0, v9, v10, "AXMotionCuesRootViewController viewDidLoad %@", v11, 0xCu);
    sub_233BC(v12);
  }

  (*(v2 + 8))(v5, v1);
  v14 = [v8 view];
  if (v14)
  {
    v15 = v14;
    [v14 frame];
    v17 = v16;
    v19 = v18;

    sub_21DAC(v17, v19);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall AXMotionCuesRootViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3 = sub_32698();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AXMotionCuesRootViewController();
  v17.receiver = v1;
  v17.super_class = v8;
  objc_msgSendSuper2(&v17, "viewDidAppear:", a1);
  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v9 = sub_AD0C(v3, MCLog);
  swift_beginAccess();
  (*(v4 + 16))(v7, v9, v3);
  v10 = v1;
  v11 = sub_32678();
  v12 = sub_32C48();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_0, v11, v12, "AXMotionCuesRootViewController viewDidAppear %@", v13, 0xCu);
    sub_233BC(v14);
  }

  (*(v4 + 8))(v7, v3);
  sub_20A64();
  sub_1E5F4();
}

Swift::Void __swiftcall AXMotionCuesRootViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3 = sub_32698();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AXMotionCuesRootViewController();
  v23.receiver = v1;
  v23.super_class = v8;
  objc_msgSendSuper2(&v23, "viewDidDisappear:", a1);
  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v9 = sub_AD0C(v3, MCLog);
  swift_beginAccess();
  (*(v4 + 16))(v7, v9, v3);
  v10 = v1;
  v11 = sub_32678();
  v12 = sub_32C48();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_0, v11, v12, "AXMotionCuesRootViewController viewDidDisappear %@", v13, 0xCu);
    sub_233BC(v14);
  }

  (*(v4 + 8))(v7, v3);
  v16 = &v10[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 1);
    ObjectType = swift_getObjectType();
    (*(v17 + 16))(ObjectType, v17);
    swift_unknownObjectRelease();
  }

  v19 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v19, v10);

  if (*&v10[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_densityMonitorTask])
  {
    v20 = *&v10[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_densityMonitorTask];

    sub_32B58();
  }

  if (*&v10[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_dotSizeMonitorTask])
  {
    v21 = *&v10[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_dotSizeMonitorTask];

    sub_32B58();
  }
}

__CFNotificationCenter *sub_1E5F4()
{
  v1 = v0;
  v2 = sub_A168(&qword_4C580, &qword_34670);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (kAXSMotionCuesCustomizationDidChangeNotification)
  {
    v7 = result;
    v8 = kAXSMotionCuesCustomizationDidChangeNotification;
    CFNotificationCenterAddObserver(v7, v1, sub_1E908, v8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v9 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_densityMonitorTask;
    if (*&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_densityMonitorTask])
    {
      v10 = *&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_densityMonitorTask];

      sub_32B58();
    }

    v11 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_dotSizeMonitorTask;
    if (*&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_dotSizeMonitorTask])
    {
      v12 = *&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_dotSizeMonitorTask];

      sub_32B58();
    }

    v13 = sub_32AE8();
    v14 = *(*(v13 - 8) + 56);
    v14(v5, 1, 1, v13);
    sub_32AC8();
    v15 = v1;
    v16 = sub_32AB8();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v15;
    v18 = sub_DBE0(0, 0, v5, &unk_34CB0, v17);
    v19 = *&v1[v9];
    *&v1[v9] = v18;

    v14(v5, 1, 1, v13);
    v20 = v15;
    v21 = sub_32AB8();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v20;
    v23 = sub_DBE0(0, 0, v5, &unk_34CC0, v22);
    v24 = *&v1[v11];
    *&v1[v11] = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E898(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    [result frame];
    v4 = v3;
    v6 = v5;

    sub_21DAC(v4, v6);
    return sub_20A64();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_A168(&qword_4C588, &qword_34CC8);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_A168(&qword_4C590, &qword_34CD0);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = sub_32AC8();
  v4[13] = sub_32AB8();
  v12 = sub_32A98();
  v4[14] = v12;
  v4[15] = v11;

  return (_swift_task_switch)(sub_1EA7C, v12, v11);
}

uint64_t sub_1EA7C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_32C28();
  v5 = sub_32C18();
  v6 = direct field offset for AXSettings.motionCues;
  swift_beginAccess();
  v7 = *&v5[v6];

  sub_32BD8();
  sub_32B28();
  (*(v3 + 8))(v2, v4);
  v8 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentRowCount;
  v0[16] = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager;
  v0[17] = v8;
  v0[18] = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentColumnCount;
  v9 = v0[12];
  v10 = sub_32AB8();
  v0[19] = v10;
  v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_1EBF0;
  v13 = v0[11];
  v14 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 21, v10, &protocol witness table for MainActor, v14);
}

uint64_t sub_1EBF0()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v7 = *v0;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return (_swift_task_switch)(sub_1ED34, v5, v4);
}

uint64_t sub_1ED34()
{
  v1 = *(v0 + 168);
  if ((*(v0 + 172) & 1) == 0)
  {
    if (qword_4BB28 != -1)
    {
      swift_once();
    }

    if (*&dword_4EA0C == v1)
    {
      goto LABEL_35;
    }

    v6 = *(v0 + 128);
    v7 = *(v0 + 40);
    dword_4EA0C = LODWORD(v1);
    v8 = *(v7 + v6);
    if (v8)
    {
      v9 = v8;
      sub_2AB2C();

      goto LABEL_35;
    }

    v10 = objc_opt_self();
    v11 = [v10 currentDevice];
    v12 = [v11 userInterfaceIdiom];

    v13 = objc_opt_self();
    v14 = [v13 sharedApplication];
    v15 = &stru_4A000;
    v16 = [v14 connectedScenes];

    sub_1A964(0, &qword_4C280, UIScene_ptr);
    sub_1C0BC();
    v17 = sub_32B98();

    v18 = sub_1B6EC(v17);

    if (v18)
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = [v19 interfaceOrientation];

        v21 = sub_1C0AC(v20);
        v15 = &stru_4A000;
        if (v12 == &dword_0 + 1)
        {
          if (v21)
          {
            v22 = 6;
            goto LABEL_21;
          }

          goto LABEL_17;
        }

        if (v21)
        {
          v22 = 4;
          goto LABEL_21;
        }

LABEL_20:
        v22 = 8;
LABEL_21:
        v23 = [v10 currentDevice];
        v24 = [v23 userInterfaceIdiom];

        v25 = [v13 sharedApplication];
        v26 = [v25 v15[41].name];

        v27 = sub_32B98();
        v28 = sub_1B6EC(v27);

        if (v28)
        {
          objc_opt_self();
          v29 = swift_dynamicCastObjCClass();
          if (v29)
          {
            v30 = [v29 interfaceOrientation];

            v31 = sub_1C0AC(v30);
            if (v24 == &dword_0 + 1)
            {
              if (v31)
              {
                v32 = 9;
LABEL_31:
                v33 = *(v0 + 40);
                if (v22 != *&v33[*(v0 + 136)] || v32 != *&v33[*(v0 + 144)])
                {
                  v34 = [v33 view];
                  if (!v34)
                  {
                    __break(1u);
                    return AsyncStream.Iterator.next(isolation:)(v34, v35, v36, v37);
                  }

                  v38 = v34;
                  v39 = *(v0 + 40);
                  [v34 frame];
                  v41 = v40;
                  v43 = v42;

                  sub_21DAC(v41, v43);
                  sub_20A64();
                }

LABEL_35:
                v44 = *(v0 + 96);
                v45 = sub_32AB8();
                *(v0 + 152) = v45;
                v46 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
                v47 = swift_task_alloc();
                *(v0 + 160) = v47;
                *v47 = v0;
                v47[1] = sub_1EBF0;
                v48 = *(v0 + 88);
                v37 = *(v0 + 72);
                v36 = &protocol witness table for MainActor;
                v34 = (v0 + 168);
                v35 = v45;

                return AsyncStream.Iterator.next(isolation:)(v34, v35, v36, v37);
              }

LABEL_28:
              v32 = 7;
              goto LABEL_31;
            }

            if (v31)
            {
              goto LABEL_28;
            }

LABEL_30:
            v32 = 5;
            goto LABEL_31;
          }
        }

        if (v24 == &dword_0 + 1)
        {
          goto LABEL_28;
        }

        goto LABEL_30;
      }
    }

    if (v12 == &dword_0 + 1)
    {
LABEL_17:
      v22 = 10;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1F1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_A168(&qword_4C588, &qword_34CC8);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_A168(&qword_4C590, &qword_34CD0);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = sub_32AC8();
  v4[13] = sub_32AB8();
  v12 = sub_32A98();
  v4[14] = v12;
  v4[15] = v11;

  return (_swift_task_switch)(sub_1F330, v12, v11);
}

uint64_t sub_1F330()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_32C28();
  v5 = sub_32C18();
  v6 = direct field offset for AXSettings.motionCues;
  swift_beginAccess();
  v7 = *&v5[v6];

  sub_32BC8();
  sub_32B28();
  (*(v3 + 8))(v2, v4);
  v0[16] = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager;
  v8 = v0[12];
  v9 = sub_32AB8();
  v0[17] = v9;
  v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_1F490;
  v12 = v0[11];
  v13 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 19, v9, &protocol witness table for MainActor, v13);
}

uint64_t sub_1F490()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return (_swift_task_switch)(sub_1F5D4, v5, v4);
}

uint64_t sub_1F5D4()
{
  v1 = *(v0 + 152);
  if (*(v0 + 156))
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 64);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    if (qword_4BB20 != -1)
    {
      swift_once();
    }

    if (*&dword_4EA08 != v1)
    {
      v6 = *(v0 + 128);
      v7 = *(v0 + 40);
      dword_4EA08 = LODWORD(v1);
      v8 = *(v7 + v6);
      if (v8)
      {
        v9 = v8;
        sub_2AB2C();
      }
    }

    v10 = *(v0 + 96);
    v11 = sub_32AB8();
    *(v0 + 136) = v11;
    v12 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = sub_1F490;
    v14 = *(v0 + 88);
    v15 = *(v0 + 72);

    return AsyncStream.Iterator.next(isolation:)(v0 + 152, v11, &protocol witness table for MainActor, v15);
  }
}

Swift::Void __swiftcall AXMotionCuesRootViewController.viewDidLayoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AXMotionCuesRootViewController();
  objc_msgSendSuper2(&v6, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 frame];

      swift_getKeyPath();
      swift_getKeyPath();
      v5 = v2;
      sub_326E8();
      sub_2D374();
    }

    else
    {
      __break(1u);
    }
  }
}

void AXMotionCuesRootViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = type metadata accessor for AXMotionCuesRootViewController();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_23464;
  v17 = v7;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1FAD0;
  v15 = &unk_45E48;
  v8 = _Block_copy(&v12);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v16 = sub_234BC;
  v17 = v10;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1FAD0;
  v15 = &unk_45E98;
  v11 = _Block_copy(&v12);

  [a1 animateAlongsideTransition:v8 completion:v11];
  _Block_release(v11);
  _Block_release(v8);
}

void sub_1FA74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20E20(0, 0);
  }
}

uint64_t sub_1FAD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1FB30(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_21DAC(a1, a2);
    sub_20A64();
  }
}

uint64_t AXMotionCuesRootViewController.prepareForRemoval()()
{
  v1[2] = v0;
  v1[3] = sub_32AC8();
  v1[4] = sub_32AB8();
  v3 = sub_32A98();
  v1[5] = v3;
  v1[6] = v2;

  return (_swift_task_switch)(sub_1FCBC, v3, v2);
}

uint64_t sub_1FCBC()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[7] = sub_32AB8();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1FDC0;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1FDC0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v8 = *v0;

  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  return (_swift_task_switch)(sub_1FF20, v6, v5);
}

uint64_t sub_1FF20()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1FF80(uint64_t a1)
{
  v2 = sub_A168(&qword_4C578, &unk_34C98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_20E20(sub_23E20, v8);
}

void sub_200C8()
{
  if (_UIUpdateCycleEnabled())
  {
    if (!qword_4C410)
    {
      v1 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11[4] = sub_23D5C;
      v11[5] = v1;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_20358;
      v11[3] = &unk_46048;
      v2 = _Block_copy(v11);

      sub_329D8();
      inserted = _UIUpdateSequenceInsertItem();

      _Block_release(v2);
      qword_4C410 = inserted;
      swift_beginAccess();
      _UIUpdateRequestActivate();
      swift_endAccess();
    }
  }

  else
  {
    v4 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_displayLink;
    if (!*(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_displayLink))
    {
      v5 = [objc_opt_self() displayLinkWithTarget:v0 selector:"updateLayout"];
      LODWORD(v6) = 1123024896;
      LODWORD(v7) = 1114636288;
      LODWORD(v8) = 1.0;
      [v5 setPreferredFrameRateRange:{v8, v6, v7}];
      v9 = [objc_opt_self() mainRunLoop];
      [v5 addToRunLoop:v9 forMode:NSDefaultRunLoopMode];

      v10 = *(v0 + v4);
      *(v0 + v4) = v5;
    }
  }
}

void sub_20304()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_215D4();
  }
}

uint64_t sub_20358(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

void sub_203C8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AXMotionCuesVFXManager(0);
  v5 = sub_2D8EC();
  if (v5)
  {
    v6 = v5;
    v7 = objc_allocWithZone(v4);
    v8 = a1 & 1;
    v9 = sub_30958(v6, a1 & 1);

    sub_23BB0(&qword_4C538, type metadata accessor for AXMotionCuesVFXManager);
    sub_32758();
    v10 = v9;
    sub_326A8();
    v11 = v10;
    sub_A168(&qword_4C540, &qword_34C80);
    sub_23C08();
    sub_32878();
    sub_32828();

    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    v13 = [v12 view];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() clearColor];
      [v14 setBackgroundColor:v15];

      [v2 addChildViewController:v12];
      v16 = [v2 view];
      if (v16)
      {
        v17 = v16;
        v18 = [v12 view];
        if (v18)
        {
          v19 = v18;
          [v17 addSubview:v18];

          v20 = [v12 view];
          if (v20)
          {
            v21 = v20;
            [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

            sub_A168(&qword_4C568, &qword_34C90);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_34B20;
            v23 = [v12 view];
            if (v23)
            {
              v24 = v23;
              v58 = v11;
              v25 = [v23 leadingAnchor];

              v26 = [v2 view];
              if (v26)
              {
                v27 = v26;
                v28 = [v26 leadingAnchor];

                v29 = [v25 constraintEqualToAnchor:v28];
                *(v22 + 32) = v29;
                v30 = [v12 view];
                if (v30)
                {
                  v31 = v30;
                  v32 = [v30 trailingAnchor];

                  v33 = [v2 view];
                  if (v33)
                  {
                    v34 = v33;
                    v35 = [v33 trailingAnchor];

                    v36 = [v32 constraintEqualToAnchor:v35];
                    *(v22 + 40) = v36;
                    v37 = [v12 view];
                    if (v37)
                    {
                      v38 = v37;
                      v39 = [v37 topAnchor];

                      v40 = [v2 view];
                      if (v40)
                      {
                        v41 = v40;
                        v42 = [v40 topAnchor];

                        v43 = [v39 constraintEqualToAnchor:v42];
                        *(v22 + 48) = v43;
                        v44 = [v12 view];
                        if (v44)
                        {
                          v45 = v44;
                          v46 = [v44 bottomAnchor];

                          v47 = [v2 view];
                          if (v47)
                          {
                            v48 = v47;
                            v49 = objc_opt_self();
                            v50 = [v48 bottomAnchor];

                            v51 = [v46 constraintEqualToAnchor:v50];
                            *(v22 + 56) = v51;
                            sub_1A964(0, &qword_4C570, NSLayoutConstraint_ptr);
                            isa = sub_32A38().super.isa;

                            [v49 activateConstraints:isa];

                            [v12 didMoveToParentViewController:v2];
                            swift_unknownObjectWeakAssign();
                            v53 = [v2 view];
                            if (v53)
                            {
                              v54 = v53;
                              [v53 frame];

                              swift_getKeyPath();
                              swift_getKeyPath();
                              v55 = v58;
                              sub_326E8();
                              sub_2D374();

                              v2[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxExperience] = v8;
                              v56 = *&v2[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager];
                              *&v2[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager] = v10;

                              v57 = *&v2[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxViewController];
                              *&v2[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxViewController] = v12;

                              return;
                            }

LABEL_29:
                            __break(1u);
                            return;
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

LABEL_25:
                    __break(1u);
                    goto LABEL_26;
                  }

LABEL_24:
                  __break(1u);
                  goto LABEL_25;
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

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_20A64()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager);
  if (v1)
  {
    v2 = v1;
    v3 = sub_32898();
    __chkstk_darwin(v3);
    sub_32718();
  }

  v4 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rows;
  result = swift_beginAccess();
  v6 = *(v0 + v4);
  v24 = *(v6 + 16);
  if (!v24)
  {
    return result;
  }

  v23 = v6 + 32;

  v7 = 0;
  v22 = v6;
  while (v7 < *(v6 + 16))
  {
    v8 = *(v23 + 8 * v7);
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v21 = *(v23 + 8 * v7);
      }

      result = sub_32E58();
      v9 = result;
      if (!result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    result = objc_opt_self();
    v10 = v9 - 1;
    if (v9 < 1)
    {
      goto LABEL_24;
    }

    v11 = result;

    v12 = 0;
    if ((v8 & 0xC000000000000001) != 0)
    {
LABEL_12:
      v13 = sub_32E28();
      goto LABEL_14;
    }

    while (1)
    {
      v13 = *(v8 + 8 * v12 + 32);

LABEL_14:
      v14 = sub_32968();
      v15 = [v11 animationWithKeyPath:v14];

      CATransform3DMakeScale(&v28, 0.01, 0.01, 0.01);
      isa = sub_32C38().super.isa;
      [v15 setFromValue:isa];

      CATransform3DMakeScale(&v27, 1.0, 1.0, 1.0);
      v17 = sub_32C38().super.isa;
      [v15 setToValue:v17];

      v18 = v15;
      [v18 setDuration:0.25];
      [v18 setRemovedOnCompletion:1];

      v19 = [*(v13 + 16) layer];
      v20 = sub_32968();
      [v19 addAnimation:v18 forKey:v20];

      CATransform3DMakeScale(&v26, 1.0, 1.0, 1.0);
      v25 = v26;
      [v19 setTransform:&v25];

      if (v10 == v12)
      {
        break;
      }

      ++v12;
      if ((v8 & 0xC000000000000001) != 0)
      {
        goto LABEL_12;
      }
    }

    v6 = v22;
LABEL_6:
    if (++v7 == v24)
    {
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20E20(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v56 = a1;
  v3 = sub_328A8();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_328C8();
  v48 = *(v50 - 8);
  v6 = *(v48 + 64);
  __chkstk_darwin(v50);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_328E8();
  v46 = *(v55 - 8);
  v8 = *(v46 + 64);
  v9 = __chkstk_darwin(v55);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = &v43 - v11;
  v12 = *(v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager);
  if (v12)
  {
    v13 = v12;
    v14 = sub_32898();
    __chkstk_darwin(v14);
    *(&v43 - 2) = v13;
    sub_32718();
    v44 = 0;
  }

  else
  {
    v44 = 0;
  }

  v15 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rows;
  result = swift_beginAccess();
  v17 = *(v2 + v15);
  v59 = *(v17 + 16);
  if (!v59)
  {
LABEL_23:
    v33 = v56;
    if (v56)
    {
      sub_1A964(0, &qword_4C0F8, OS_dispatch_queue_ptr);
      v34 = v53;

      v59 = sub_32C88();
      v35 = v45;
      sub_328D8();
      sub_328F8();
      v60 = *(v46 + 8);
      v60(v35, v55);
      v36 = swift_allocObject();
      *(v36 + 16) = v33;
      *(v36 + 24) = v34;
      *&v62.m21 = sub_23B84;
      *&v62.m22 = v36;
      *&v62.m11 = _NSConcreteStackBlock;
      *&v62.m12 = 1107296256;
      *&v62.m13 = sub_1D8DC;
      *&v62.m14 = &unk_46020;
      v37 = _Block_copy(&v62);

      v38 = v47;
      sub_328B8();
      *&v62.m11 = &_swiftEmptyArrayStorage;
      sub_23BB0(&qword_4C100, &type metadata accessor for DispatchWorkItemFlags);
      sub_A168(&qword_4C108, &qword_348E0);
      sub_23D14(&qword_4C110, &qword_4C108, &qword_348E0);
      v39 = v49;
      v40 = v52;
      sub_32D28();
      v41 = v54;
      v42 = v59;
      sub_32C78();
      _Block_release(v37);

      sub_23BF8(v56);
      (*(v51 + 8))(v39, v40);
      (*(v48 + 8))(v38, v50);
      return (v60)(v41, v55);
    }

    return result;
  }

  v58 = v17 + 32;

  v18 = 0;
  v57 = v17;
  while (v18 < *(v17 + 16))
  {
    v19 = *(v58 + 8 * v18);
    if (v19 >> 62)
    {
      if (v19 < 0)
      {
        v32 = *(v58 + 8 * v18);
      }

      result = sub_32E58();
      v20 = result;
      if (!result)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
      if (!v20)
      {
        goto LABEL_7;
      }
    }

    result = objc_opt_self();
    v21 = v20 - 1;
    if (v20 < 1)
    {
      goto LABEL_27;
    }

    v22 = result;
    v60 = v18;

    v23 = 0;
    if ((v19 & 0xC000000000000001) != 0)
    {
LABEL_13:
      v24 = sub_32E28();
      goto LABEL_15;
    }

    while (1)
    {
      v24 = *(v19 + 8 * v23 + 32);

LABEL_15:
      v25 = sub_32968();
      v26 = [v22 animationWithKeyPath:v25];

      CATransform3DMakeScale(&v64, 1.0, 1.0, 1.0);
      isa = sub_32C38().super.isa;
      [v26 setFromValue:isa];

      CATransform3DMakeScale(&v63, 0.01, 0.01, 0.01);
      v28 = sub_32C38().super.isa;
      [v26 setToValue:v28];

      v29 = v26;
      [v29 setDuration:0.25];
      [v29 setRemovedOnCompletion:1];

      v30 = [*(v24 + 16) layer];
      v31 = sub_32968();
      [v30 addAnimation:v29 forKey:v31];

      CATransform3DMakeScale(&v62, 0.01, 0.01, 0.01);
      v61 = v62;
      [v30 setTransform:&v61];

      if (v21 == v23)
      {
        break;
      }

      ++v23;
      if ((v19 & 0xC000000000000001) != 0)
      {
        goto LABEL_13;
      }
    }

    v17 = v57;
    v18 = v60;
LABEL_7:
    if (++v18 == v59)
    {

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_215D4()
{
  v2 = v0;
  v3 = sub_32698();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Current = CFAbsoluteTimeGetCurrent();
  v9 = CACurrentMediaTime();
  v10 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_updateTimestamp;
  if (*(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_updateTimestamp + 8))
  {
    v11 = 0.0166666667;
  }

  else
  {
    v12 = v9 - *v10;
    if (v12 <= 0.00833333333)
    {
      v12 = 0.00833333333;
    }

    v11 = fmin(v12, 1.0);
  }

  *v10 = v9;
  *(v10 + 8) = 0;
  v13 = *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_model);
  sub_24228(&v60, v11);
  if (v63)
  {
    v14 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_modelReceivingData;
    if (*(v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_modelReceivingData) == 1)
    {
      v15 = *(v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesMovingHandler + 8);
      (*(v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesMovingHandler))(0);
      *(v2 + v14) = 0;
    }

    v1 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_nilModelOutputCount;
    v16 = *(v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_nilModelOutputCount);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_46;
    }

    *(v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_nilModelOutputCount) = v18;
    if (v18 == 50)
    {
      if (qword_4BAF0 != -1)
      {
        goto LABEL_47;
      }

      goto LABEL_12;
    }

    return;
  }

  v26 = v60;
  v59 = v61;
  v27 = v62;
  *(v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_nilModelOutputCount) = 0;
  v28 = CFAbsoluteTimeGetCurrent();
  v29 = *(v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager);
  if (v29)
  {
    v30 = v11 * 60.0;
    v31 = objc_opt_self();
    v32 = v29;
    v33 = [v31 currentDevice];
    v34 = [v33 userInterfaceIdiom];

    v35 = -16.0;
    if (v34 != &dword_0 + 1)
    {
      v35 = -13.0;
    }

    v36 = 13.0;
    if (v34 == &dword_0 + 1)
    {
      v36 = 16.0;
    }

    sub_2CC68(v30 * (v26 * v36), v30 * (v35 * *&v59));

    goto LABEL_40;
  }

  v37 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rows;
  swift_beginAccess();
  v38 = *(v2 + v37);
  v57 = *(v38 + 16);
  if (!v57)
  {
LABEL_40:
    v51 = v28 - Current;
    v52 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_modelReceivingData;
    if ((*(v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_modelReceivingData) & 1) == 0)
    {
      v53 = *(v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesMovingHandler + 8);
      (*(v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesMovingHandler))(1);
    }

    *(v2 + v52) = 1;
    v54 = CFAbsoluteTimeGetCurrent();
    sub_23AA0(v51, v54 - Current);
    return;
  }

  v39 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_gridView;
  v56 = v38 + 32;

  v3 = 0;
  v40 = v59;
  v55 = v38;
  while (v3 < *(v38 + 16))
  {
    v7 = *(v56 + 8 * v3);
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v49 = *(v56 + 8 * v3);
      }

      v50 = sub_32E58();
      v40 = v59;
      v41 = v50;
      if (!v50)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v41 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      if (!v41)
      {
        goto LABEL_25;
      }
    }

    v64 = v26;
    v65 = v40;
    v66 = v27;
    v67 = 0;
    if (v41 < 1)
    {
      goto LABEL_45;
    }

    v58 = v3;

    v42 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v4 = sub_32E28();
      }

      else
      {
        v4 = *(v7 + 8 * v42 + 32);
      }

      ++v42;
      v43 = *(v4 + 16);
      v1 = *(v2 + v39);
      [v43 center];
      [v1 convertPoint:0 toView:?];
      v45 = v44;

      sub_22734(&v64, v4, v45, v46, v11);
      sub_21BF0(v4, v26, *&v59, v47, v48, v11);
    }

    while (v41 != v42);

    v40 = v59;
    v38 = v55;
    v3 = v58;
LABEL_25:
    if (++v3 == v57)
    {

      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  swift_once();
LABEL_12:
  v19 = sub_AD0C(v3, MCLog);
  swift_beginAccess();
  (*(v4 + 16))(v7, v19, v3);
  v20 = sub_32678();
  v21 = sub_32C58();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "got 50 nil model outputs in a row", v22, 2u);
  }

  (*(v4 + 8))(v7, v3);
  *&v1[v2] = 0;
  v23 = v2 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v23 + 8);
    ObjectType = swift_getObjectType();
    (*(v24 + 8))(ObjectType, v24);
    swift_unknownObjectRelease();
  }
}

id sub_21BF0(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = a6 * 60.0;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if ((*(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_leftEdge + 8) & 1) == 0 && (*(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rightEdge + 8) & 1) == 0 && (*(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullWidth + 8) & 1) == 0)
  {
    v13 = *(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_leftEdge);
    v14 = *(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullWidth);
    v15 = *(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rightEdge);
    v16 = 13.0;
    if (v12 == &dword_0 + 1)
    {
      v16 = 16.0;
    }

    v17 = v10 * (v16 * a2) + *(a1 + 24);
    *(a1 + 24) = v17;
    if (v15 <= v17)
    {
      v18 = v17 - v14;
      goto LABEL_10;
    }

    if (v17 <= v13)
    {
      v18 = v14 + v17;
LABEL_10:
      *(a1 + 24) = v18;
    }
  }

  if ((*(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_topEdge + 8) & 1) == 0 && (*(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_bottomEdge + 8) & 1) == 0 && (*(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullHeight + 8) & 1) == 0)
  {
    v19 = *(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_topEdge);
    v20 = *(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullHeight);
    v21 = *(v6 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_bottomEdge);
    v22 = -13.0;
    if (v12 == &dword_0 + 1)
    {
      v22 = -16.0;
    }

    v23 = v10 * (v22 * a3) + *(a1 + 32);
    *(a1 + 32) = v23;
    if (v21 <= v23)
    {
      v24 = v23 - v20;
    }

    else
    {
      if (v23 > v19)
      {
        goto LABEL_21;
      }

      v24 = v20 + v23;
    }

    *(a1 + 32) = v24;
  }

LABEL_21:
  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  v27 = *(a1 + 32);

  return [v25 setCenter:{v26, v27}];
}

id sub_21DAC(double a1, double a2)
{
  v3 = v2;
  v6 = sub_325B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22438();
  v11 = _AXSMotionCuesStyle();
  (*(v7 + 104))(v10, enum case for AccessibilityFeatureFlags.motionCuesCustomization(_:), v6);
  v12 = sub_325A8();
  (*(v7 + 8))(v10, v6);
  if (v12)
  {
    if (v11 == 1)
    {
      v13 = 1;
      goto LABEL_13;
    }

    if (v11 == 2)
    {
      v13 = 0;
LABEL_13:
      sub_203C8(v13);
LABEL_43:
      v56 = *&v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesVisibleHandler + 8];
      return (*&v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesVisibleHandler])(1);
    }
  }

  sub_200C8();
  v14 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_gridView;
  [*&v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_gridView] setFrame:{0.5, 0.5, a1, a2}];
  v15 = sub_28D00();
  [*&v3[v14] bounds];
  [v15 setFrame:?];
  [v15 setCaptureOnly:1];
  v16 = [*&v3[v14] layer];
  [v16 addSublayer:v15];

  result = [v3 view];
  if (result)
  {
    v18 = result;
    [result addSubview:*&v3[v14]];

    v19 = objc_opt_self();
    v20 = [v19 currentDevice];
    v21 = [v20 userInterfaceIdiom];

    v22 = sub_1BFA4();
    if (v23)
    {
      if (v21 != &dword_0 + 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v24 = sub_1C0AC(v22);
      if (v21 == &dword_0 + 1)
      {
        if (v24)
        {
          v25 = 9;
          goto LABEL_17;
        }
      }

      else if (!v24)
      {
LABEL_16:
        v25 = 5;
LABEL_17:
        *&v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentColumnCount] = v25;
        v26 = a2 * 1.1;
        v27 = a1 * -0.05;
        v28 = a1 * 1.1 / v25;
        v29 = [v19 currentDevice];
        v30 = [v29 userInterfaceIdiom];

        v31 = sub_1BFA4();
        v58 = v15;
        if (v32)
        {
          if (v30 == &dword_0 + 1)
          {
LABEL_23:
            v34 = 10;
            goto LABEL_27;
          }
        }

        else
        {
          v33 = sub_1C0AC(v31);
          if (v30 == &dword_0 + 1)
          {
            if (v33)
            {
              v34 = 6;
              goto LABEL_27;
            }

            goto LABEL_23;
          }

          if (v33)
          {
            v34 = 4;
            goto LABEL_27;
          }
        }

        v34 = 8;
LABEL_27:
        *&v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentRowCount] = v34;
        v35 = v26 / v34;
        v36 = &v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullHeight];
        *v36 = v26;
        *(v36 + 8) = 0;
        v37 = &v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullWidth];
        *v37 = a1 * 1.1;
        *(v37 + 8) = 0;
        v38 = &v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_leftEdge];
        *v38 = v27;
        *(v38 + 8) = 0;
        v39 = &v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rightEdge];
        *v39 = a1 * 1.05;
        *(v39 + 8) = 0;
        v40 = &v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_topEdge];
        *v40 = a2 * -0.05;
        *(v40 + 8) = 0;
        v41 = &v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_bottomEdge];
        *v41 = a2 * 1.05;
        *(v41 + 8) = 0;
        v42 = a2 * 0.5 + v35 - (v35 + vcvtd_n_f64_u64(v34, 1uLL) * v35);
        memset(v66, 0, sizeof(v66));
        v67 = 1;
        v62 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rows;
        type metadata accessor for AXMotionCuesGridElement();
        v43 = 0;
        v59 = v34;
        while (1)
        {
          v61 = v43 + 1;
          v44 = (v43 & 1) != 0 ? v28 * 0.5 : a1 * 1.1 / v25;
          v45 = v27 + v44;
          v65 = &_swiftEmptyArrayStorage;
          for (i = 1; ; ++i)
          {
            v47 = v45 + v28 * i;
            swift_allocObject();
            v48 = sub_1B808(v47, v42);
            sub_22734(v66, v48, v47, v49, 0.0);
            v50 = [*(v48 + 16) layer];
            CATransform3DMakeScale(&v64, 0.01, 0.01, 0.01);
            v63 = v64;
            [v50 setTransform:&v63];

            [*&v3[v14] addSubview:*(v48 + 16)];

            sub_32A28();
            if (*(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v65 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              v60 = *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8));
              sub_32A58();
            }

            sub_32A78();

            if (v25 == i)
            {
              break;
            }
          }

          v60 = v65;
          v51 = v62;
          swift_beginAccess();
          v52 = *&v3[v51];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v3[v51] = v52;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v52 = sub_26530(0, v52[2] + 1, 1, v52);
            *&v3[v62] = v52;
          }

          v55 = v52[2];
          v54 = v52[3];
          if (v55 >= v54 >> 1)
          {
            v52 = sub_26530((v54 > 1), v55 + 1, 1, v52);
          }

          v52[2] = v55 + 1;
          v52[v55 + 4] = v60;
          *&v3[v62] = v52;
          swift_endAccess();
          v43 = v61;
          if (v61 == v59)
          {
            break;
          }

          v42 = v35 + v42;
        }

        goto LABEL_43;
      }
    }

    v25 = 7;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_22438()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_gridView] subviews];
  sub_1A964(0, &qword_4C598, UIView_ptr);
  v3 = sub_32A48();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_32E58())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_32E28();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = [v0 view];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 subviews];

    v12 = sub_32A48();
    if (v12 >> 62)
    {
      goto LABEL_27;
    }

    for (j = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); j; j = sub_32E58())
    {
      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = sub_32E28();
        }

        else
        {
          if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_26;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        [v15 removeFromSuperview];

        ++v14;
        if (v17 == j)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:

    v18 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rows;
    swift_beginAccess();
    v19 = *&v1[v18];
    *&v1[v18] = &_swiftEmptyArrayStorage;

    v20 = *&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesVisibleHandler + 8];
    (*&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_motionCuesVisibleHandler])(0);
    v21 = *&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager];
    *&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager] = 0;

    v22 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxViewController;
    v23 = *&v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxViewController];
    if (!v23)
    {
      goto LABEL_31;
    }

    v24 = [v23 view];
    if (v24)
    {
      v25 = v24;
      [v24 removeFromSuperview];

      v23 = *&v1[v22];
LABEL_31:
      [v23 removeFromParentViewController];
      v26 = *&v1[v22];
      *&v1[v22] = 0;

      v1[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxExperience] = 2;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_22734(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = sub_325B8();
  v11 = *(v10 - 8);
  v12 = v11[8];
  __chkstk_darwin(v10);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v5 view];
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v101.origin.x = v18;
  v101.origin.y = v20;
  v101.size.width = v22;
  v101.size.height = v24;
  Width = CGRectGetWidth(v101);
  v26 = Width;
  if (Width >= a3)
  {
    Width = a3;
  }

  if (Width < 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = Width;
  }

  v28 = v11[13];
  v99 = enum case for AccessibilityFeatureFlags.motionCuesCustomization(_:);
  v100 = v11 + 13;
  v98 = v28;
  v28(v14);
  v29 = sub_325A8();
  v97 = v11[1];
  v97(v14, v10);
  if ((v29 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_4BB20 != -1)
  {
    swift_once();
  }

  v30 = 21.0;
  if (*&dword_4EA08 <= 0.75)
  {
LABEL_11:
    v30 = 12.0;
  }

  v95 = a2;
  v96 = a1;
  v31 = objc_opt_self();
  v32 = [v31 currentDevice];
  v33 = [v32 userInterfaceIdiom];

  v34 = sub_1BFA4();
  v36 = (v35 & 1) == 0 && sub_1C0AC(v34);
  v98(v14, v99, v10);
  v37 = sub_325A8();
  v97(v14, v10);
  if ((v37 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (qword_4BB28 != -1)
  {
    swift_once();
  }

  if (*&dword_4EA0C > 1.5)
  {
    v38 = 0.23;
    if (!v36)
    {
      v38 = 0.18;
    }

    if (v33 == &dword_0 + 1)
    {
      v39 = 0.18;
    }

    else
    {
      v39 = v38;
    }
  }

  else
  {
LABEL_24:
    v40 = 0.09;
    if (v36)
    {
      v40 = 0.145;
    }

    if (v33 == &dword_0 + 1)
    {
      v39 = 0.12;
    }

    else
    {
      v39 = v40;
    }
  }

  v41 = [v31 currentDevice];
  v42 = [v41 userInterfaceIdiom];

  v43 = sub_1BFA4();
  v45 = (v44 & 1) == 0 && sub_1C0AC(v43);
  v46 = v95;
  v98(v14, v99, v10);
  v47 = sub_325A8();
  v97(v14, v10);
  v48 = v96;
  if ((v47 & 1) == 0)
  {
    goto LABEL_38;
  }

  if (qword_4BB28 != -1)
  {
    swift_once();
  }

  if (*&dword_4EA0C <= 1.5)
  {
LABEL_38:
    v49 = !v45;
    v50 = 0.15;
    v51 = 0.2;
LABEL_39:
    if (v49)
    {
      v51 = v50;
    }

    goto LABEL_42;
  }

  if (v42 == &dword_0 + 1)
  {
    v49 = !v45;
    v50 = 0.3;
    v51 = 0.35;
    goto LABEL_39;
  }

  v51 = 0.25;
  if (v45)
  {
    v51 = 0.3;
  }

LABEL_42:
  v52 = v26 * 0.0;
  v53 = v26 * v39;
  v54 = 0.0;
  v55 = 0.0;
  if ((*(v48 + 32) & 1) == 0)
  {
    v55 = *(v48 + 16);
    v54 = *(v48 + 24);
    if (v55 >= 0.05)
    {
      if (v55 <= 0.05)
      {
        v58 = *(v46 + 56);
        v59 = 1.0;
        goto LABEL_73;
      }

      v56 = *(v46 + 24);
      v57 = v26 * 0.5;
      v59 = 1.0;
      goto LABEL_66;
    }
  }

  v56 = *(v46 + 24);
  v57 = v26 * 0.5;
  v58 = *(v46 + 56);
  if (v26 * 0.5 >= v56)
  {
    if (v58 == 0.0)
    {
      v60 = fabs(v55) * 0.25 / 0.05 + 0.5;
      v59 = 1.0;
      if (v60 < 1.0 || (v59 = 2.0, v60 >= 2.0))
      {
        if (v55 <= 0.05)
        {
          goto LABEL_73;
        }

        goto LABEL_66;
      }

      goto LABEL_63;
    }

    v59 = 1.0;
LABEL_56:
    if (v55 <= 0.05)
    {
      goto LABEL_73;
    }

    goto LABEL_66;
  }

  v59 = 1.0;
  if (v58 != 1.0)
  {
    goto LABEL_56;
  }

  v60 = fabs(v55) * 0.5 / 0.05 + 0.5;
  v58 = 1.0;
  if (v60 < 1.0)
  {
    v59 = 1.0;
    goto LABEL_65;
  }

  v59 = 3.0;
  if (v60 < 3.0)
  {
LABEL_63:
    v59 = v60;
    if (v55 <= 0.05)
    {
      goto LABEL_73;
    }

    goto LABEL_66;
  }

LABEL_65:
  if (v55 <= 0.05)
  {
LABEL_76:
    v63 = v53 * v59;
    v58 = 1.0;
    goto LABEL_77;
  }

LABEL_66:
  v58 = *(v46 + 56);
  if (v56 >= v57)
  {
    if (v58 == 0.0)
    {
      v62 = fabs(v55) * 0.25 / 0.05 + 0.5;
      v59 = 1.0;
      if (v62 >= 1.0)
      {
        v59 = fmin(v62, 2.0);
      }
    }
  }

  else if (v58 == 1.0)
  {
    v61 = fabs(v55) * 0.5 / 0.05 + 0.5;
    if (v61 >= 1.0)
    {
      v59 = fmin(v61, 3.0);
    }

    else
    {
      v59 = 1.0;
    }

    goto LABEL_76;
  }

LABEL_73:
  v63 = v53 * v59;
  if (v58 < 1.0)
  {
    v63 = v63 + v30 / -10.0;
  }

LABEL_77:
  if (v58 == 100.0)
  {
    v52 = -0.0;
  }

  v64 = v30 * 0.5 + v52;
  v65 = 1.0;
  if (v27 > v64)
  {
    v66 = v26 * v51;
    v67 = fabs(v55);
    if (v63 >= v66)
    {
      v68 = v66;
    }

    else
    {
      v68 = v63;
    }

    v69 = v26 * (v67 + v67);
    v70 = v26 * 0.5;
    if (v69 >= v26 * 0.5)
    {
      v69 = v26 * 0.5;
    }

    if (v66 >= v70)
    {
      v66 = v26 * 0.5;
    }

    if (v69 >= v66)
    {
      v69 = v66;
    }

    if (v68 > v69)
    {
      v69 = v68;
    }

    v71 = fabs(v54);
    v72 = v26 * (v71 + v71) * 1.3;
    if (v72 >= v70)
    {
      v72 = v26 * 0.5;
    }

    if (v72 < v66)
    {
      v66 = v72;
    }

    if (v68 > v66)
    {
      v66 = v68;
    }

    if (v67 > 0.05)
    {
      v66 = v69;
    }

    v73 = v64 + v66;
    if (v64 >= v27 || v27 > v73)
    {
      v79 = v26 - v73;
      if (v73 < v27 && v27 <= v79)
      {
        v74 = v53 * 0.75 + v64;
        v65 = 0.0;
        v75 = 0.0;
        if (v27 > v74)
        {
          goto LABEL_103;
        }

LABEL_131:
        v78 = 1.0;
        v75 = v65;
        goto LABEL_136;
      }

      if (v27 > v26 - v64 || v79 >= v27)
      {
        if (v26 - v64 >= v27)
        {
          v65 = 0.0;
        }

        else
        {
          v65 = 1.0;
        }
      }
    }
  }

  v74 = v53 * 0.75 + v64;
  if (v27 <= v74)
  {
    v75 = 1.0;
    v78 = 1.0;
    if (v65 >= 1.0)
    {
      goto LABEL_136;
    }

    goto LABEL_131;
  }

  v75 = v65;
LABEL_103:
  v76 = v26 * 0.2;
  v77 = v26 * 0.2 + v74;
  if (v74 < v27 && v27 <= v77)
  {
    v78 = (v27 - v74) / v76 * -0.75 + 1.0;
    goto LABEL_134;
  }

  v81 = v26 - v77;
  if (v77 < v27 && v27 <= v81)
  {
    v78 = 0.25;
    goto LABEL_134;
  }

  v83 = v26 - v74;
  v84 = v27 <= v83 && v81 < v27;
  if (v84)
  {
    v78 = (v27 - v81) / v76 * 0.75 + 0.25;
    goto LABEL_134;
  }

  if (v83 >= v27)
  {
    v78 = 0.0;
LABEL_134:
    if (v75 < 1.0)
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

  v78 = 1.0;
  if (v75 >= 1.0)
  {
LABEL_135:
    v75 = 1.0;
  }

LABEL_136:
  *(v46 + 56) = v75;
  v85 = sub_1BA94(v30 * v75 * v78, a5);
  v98(v14, v99, v10);
  v86 = sub_325A8();
  v97(v14, v10);
  if ((v86 & 1) != 0 && _AXSMotionCuesTintColor())
  {
    v87 = 0.63;
  }

  else
  {
    v87 = 0.85;
  }

  v88 = (fabs(v85) + -2.0) * 0.5;
  v89 = fmin(v88, 1.0);
  v84 = v88 < 0.0;
  v90 = 0.0;
  if (!v84)
  {
    v90 = v89;
  }

  v91 = v90 * v87;
  v92 = v91 + v91;
  v93 = [*(v46 + 16) layer];
  *&v94 = v92;
  [v93 setOpacity:v94];
}

id AXMotionCuesRootViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_32968();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void AXMotionCuesRootViewController.renderer(_:updateAtTime:)()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v4[4] = sub_23500;
  v4[5] = v1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1D8DC;
  v4[3] = &unk_45EE8;
  v2 = _Block_copy(v4);
  v3 = v0;

  AXPerformBlockOnMainThread();
  _Block_release(v2);
}

double sub_232B8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_23338(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4;
  sub_326E8();
  return sub_2D374();
}

uint64_t sub_233BC(uint64_t a1)
{
  v2 = sub_A168(&qword_4BEA0, &qword_34BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2342C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2346C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23484()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_234C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_23524(uint64_t a1, uint64_t a2)
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

uint64_t sub_23540(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23560(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

void sub_235A8()
{
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_displayLink) = 0;
  v1 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_updateTimestamp;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rows) = &_swiftEmptyArrayStorage;
  v2 = OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_gridView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullWidth;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_fullHeight;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_leftEdge;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_rightEdge;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_topEdge;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_bottomEdge;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentRowCount) = 0;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_currentColumnCount) = 0;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_densityMonitorTask) = 0;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_dotSizeMonitorTask) = 0;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_modelReceivingData) = 0;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_nilModelOutputCount) = 0;
  v9 = v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_statistics;
  *v9 = 0u;
  *(v9 + 16) = 0x7FEFFFFFFFFFFFFFLL;
  *(v9 + 24) = 0u;
  *(v9 + 40) = xmmword_34130;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxExperience) = 2;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxManager) = 0;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_vfxViewController) = 0;
  *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_32E48();
  __break(1u);
}

uint64_t sub_23794(void *a1)
{
  v2 = sub_328A8();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_328C8();
  v17 = *(v6 - 8);
  v18 = v6;
  v7 = *(v17 + 64);
  result = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1A964(0, &qword_4C0F8, OS_dispatch_queue_ptr);
    v11 = a1;
    v12 = sub_32C88();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    aBlock[4] = sub_23FF8;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8DC;
    aBlock[3] = &unk_46110;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    sub_328B8();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_23BB0(&qword_4C100, &type metadata accessor for DispatchWorkItemFlags);
    sub_A168(&qword_4C108, &qword_348E0);
    sub_23D14(&qword_4C110, &qword_4C108, &qword_348E0);
    sub_32D28();
    sub_32C98();
    _Block_release(v14);

    (*(v19 + 8))(v5, v2);
    return (*(v17 + 8))(v10, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23AA0(double a1, double a2)
{
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v2;
    if (*(v2 + 40) > a1)
    {
      *(v2 + 40) = a1;
    }

    if (*(v2 + 48) < a1)
    {
      *(v2 + 48) = a1;
    }

    *(v2 + 32) = a1 * 0.25 + *(v2 + 32) * 0.75;
    if (*(v2 + 16) > a2)
    {
      *(v2 + 16) = a2;
    }

    if (*(v2 + 24) < a2)
    {
      *(v2 + 24) = a2;
    }

    *(v2 + 8) = a2 * 0.25 + *(v2 + 8) * 0.75;
  }
}

uint64_t sub_23B4C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_23B84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

uint64_t sub_23BB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_23C08()
{
  result = qword_4C548;
  if (!qword_4C548)
  {
    sub_9EA8(&qword_4C540, &qword_34C80);
    sub_23CC0();
    sub_23D14(&qword_4C558, &qword_4C560, &qword_34C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4C548);
  }

  return result;
}

unint64_t sub_23CC0()
{
  result = qword_4C550;
  if (!qword_4C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4C550);
  }

  return result;
}

uint64_t sub_23D14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_9EA8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23D8C()
{
  v1 = sub_A168(&qword_4C578, &unk_34C98);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_23E20()
{
  v1 = *(sub_A168(&qword_4C578, &unk_34C98) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_32AA8();
}

uint64_t sub_23E90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_16240;

  return sub_1E910(a1, v4, v5, v6);
}

uint64_t sub_23F44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B048;

  return sub_1F1C4(a1, v4, v5, v6);
}

uint64_t sub_2405C()
{
  *(v0[3] + 16) = 0;
  *(v0[4] + 16) = 0;
  *(v0[5] + 16) = 0;
  *(v0[6] + 16) = 0;
  *(v0[7] + 16) = 0;
  *(v0[8] + 16) = 0;
  *(v0[9] + 16) = 0;
  *(v0[10] + 16) = 0;
  *(v0[11] + 16) = 0;
  *(v0[12] + 16) = 0;
  *(v0[13] + 16) = 0;
  v1 = v0[28];
  *(v1 + 24) = 0;
  v2 = sub_32A68();
  *(v2 + 16) = 24;
  bzero((v2 + 32), 0x240uLL);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
}

uint64_t Comparable.clamped(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(sub_32938() + 36);
  sub_32F08();
  sub_32EF8();
  return (*(v4 + 8))(v7, a2);
}

void sub_24228(int8x16_t *a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = *(v2 + 216);

  sub_31F98(v94);

  v7 = sub_26884(v94);
  v8 = 0uLL;
  v9 = 0uLL;
  if (v7 == 1)
  {
    goto LABEL_115;
  }

  v96[6] = v94[6];
  v96[7] = v94[7];
  v96[2] = v94[2];
  v96[3] = v94[3];
  v96[4] = v94[4];
  v96[5] = v94[5];
  v96[0] = v94[0];
  v96[1] = v94[1];
  v10 = 1.0 / fmax(a2, 0.008);
  v97 = v95;
  sub_1D754(v96, v91, v94[0]);
  v11 = sub_268A0();
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11;
  }

  sub_1B05C(v91, v13, v92);
  v14 = *(v3 + 224);
  sub_269E4(v92, v93);
  v15 = *(v3 + 24);
  v16 = v93[1];
  v17 = 1.0 / v10;
  v18 = v17 / (v17 + 1.0 / (v15[4] * 6.28318531));
  v19 = v93[0] * v18 + v15[2] * (1.0 - v18);
  v15[2] = v19;
  v15[3] = v18;
  v20 = *(v3 + 32);
  v21 = v17 / (v17 + 1.0 / (v20[4] * 6.28318531));
  v22 = v16 * v21 + v20[2] * (1.0 - v21);
  v20[2] = v22;
  v20[3] = v21;
  v23 = *(v3 + 40);
  v24 = v93[4];
  v25 = v17 / (v17 + 1.0 / (v23[4] * 6.28318531));
  v26 = v93[3] * v25 + v23[2] * (1.0 - v25);
  v23[2] = v26;
  v23[3] = v25;
  v27 = *(v3 + 48);
  v28 = v17 / (v17 + 1.0 / (v27[4] * 6.28318531));
  v29 = v24 * v28 + v27[2] * (1.0 - v28);
  v27[2] = v29;
  v27[3] = v28;
  v30 = *(v3 + 56);
  v31 = v17 / (v17 + 1.0 / (v30[4] * 6.28318531));
  v32 = v93[8] * v31 + v30[2] * (1.0 - v31);
  v30[2] = v32;
  v30[3] = v31;
  v33 = *(v3 + 64);
  v34 = v17 / (v17 + 1.0 / (v33[4] * 6.28318531));
  v35 = v93[7];
  v36 = v93[6] * v34 + v33[2] * (1.0 - v34);
  v33[2] = v36;
  v33[3] = v34;
  v37 = *(v3 + 72);
  v38 = v17 / (v17 + 1.0 / (v37[4] * 6.28318531));
  v39 = v35 * v38 + v37[2] * (1.0 - v38);
  v37[2] = v39;
  v37[3] = v38;
  if (v19 > 0.3)
  {
    v40 = 0x3FD3333333333333;
    if (v22 > 0.3)
    {
LABEL_7:
      v41 = 0.5;
      if (v32 <= 0.5)
      {
        v41 = -0.5;
        if (v32 > -0.5)
        {
          v41 = v32;
        }
      }

      v22 = *&v40;
      v19 = *&v40;
      goto LABEL_40;
    }

    if (v22 <= -0.3)
    {
      v41 = 0.5;
      if (v32 <= 0.5)
      {
        v41 = -0.5;
        if (v32 > -0.5)
        {
          v41 = v32;
        }
      }

      v19 = 0.3;
      v22 = -0.3;
      goto LABEL_40;
    }

    v41 = 0.5;
    if (v32 <= 0.5)
    {
      v41 = -0.5;
      if (v32 > -0.5)
      {
        v41 = v32;
      }
    }

    v40 = 0x3FD3333333333333;
    goto LABEL_24;
  }

  v42 = 0x3FD3333333333333;
  if (v19 <= -0.3)
  {
    if (v22 > 0.3)
    {
      v41 = 0.5;
      if (v32 <= 0.5)
      {
        v41 = -0.5;
        if (v32 > -0.5)
        {
          v41 = v32;
        }
      }

      v19 = -0.3;
      v22 = 0.3;
      goto LABEL_40;
    }

    v40 = 0xBFD3333333333333;
    if (v22 <= -0.3)
    {
      goto LABEL_7;
    }

    v41 = 0.5;
    if (v32 <= 0.5)
    {
      v41 = -0.5;
      if (v32 > -0.5)
      {
        v41 = v32;
      }
    }

LABEL_24:
    v19 = *&v40;
    goto LABEL_40;
  }

  if (v22 > 0.3 || (v42 = 0xBFD3333333333333, v22 <= -0.3))
  {
    v43 = fabs(v19);
    v41 = 0.5;
    if (v32 <= 0.5)
    {
      v41 = -0.5;
      if (v32 > -0.5)
      {
        v41 = v32;
      }
    }

    v22 = *&v42;
  }

  else
  {
    v41 = -0.5;
    if (v32 > -0.5)
    {
      v41 = v32;
    }

    if (v32 > 0.5)
    {
      v41 = 0.5;
    }

    v43 = fabs(v19);
  }

  if (v43 < 0.05)
  {
    *(v3 + 160) = 0;
    goto LABEL_43;
  }

LABEL_40:
  v44 = *(v3 + 160) + a2;
  *(v3 + 160) = v44;
  if (v44 >= 0.5)
  {
    *(v3 + 176) = 1;
  }

  v43 = fabs(v19);
LABEL_43:
  if (v43 >= 0.05)
  {
    *(v3 + 168) = 0;
  }

  else
  {
    v45 = *(v3 + 168) + a2;
    *(v3 + 168) = v45;
    if (v45 >= 0.1)
    {
      *(v3 + 176) = 0;
    }
  }

  if (*(v3 + 176))
  {
    goto LABEL_48;
  }

  v47 = v39 * v39 * 20.0 / 9.81;
  if (v19 > 0.0)
  {
    v19 = v19 - v47;
    if (v19 <= 0.0)
    {
      goto LABEL_53;
    }

LABEL_48:
    v46 = fabs(v22);
    goto LABEL_54;
  }

  v19 = v47 + v19;
  if (v19 <= 0.0)
  {
    goto LABEL_48;
  }

LABEL_53:
  v46 = fabs(v22);
  v19 = 0.0;
LABEL_54:
  if (v46 >= 0.05)
  {
    v49 = *(v3 + 128) + a2;
    *(v3 + 128) = v49;
    if (v41 * *(v3 + 208) <= 0.0)
    {
      *(v3 + 136) = 0;
      v48 = 0.0;
      if (v49 < 0.5)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v48 = *(v3 + 136) + a2;
      *(v3 + 136) = v48;
      if (v49 < 0.5 || v48 >= 0.4)
      {
LABEL_66:
        if (fabs(v22) >= 0.05 && v48 < 0.4)
        {
          goto LABEL_68;
        }

        goto LABEL_69;
      }
    }

    *(v3 + 152) = 1;
    goto LABEL_66;
  }

  *(v3 + 128) = 0;
  if (v41 * *(v3 + 208) > 0.0)
  {
    v48 = *(v3 + 136) + a2;
    *(v3 + 136) = v48;
    goto LABEL_66;
  }

  *(v3 + 136) = 0;
LABEL_63:
  if (fabs(v22) >= 0.05)
  {
LABEL_68:
    *(v3 + 144) = 0;
    goto LABEL_71;
  }

LABEL_69:
  v50 = *(v3 + 144) + a2;
  *(v3 + 144) = v50;
  if (v50 >= 0.05)
  {
    *(v3 + 152) = 0;
  }

LABEL_71:
  v51 = fabs(v32);
  v52 = v51 + -0.4 + v51 + -0.4;
  v53 = 0.0;
  if (v52 >= 0.0)
  {
    v53 = v52;
  }

  v54 = v53 * 0.5;
  if (v52 >= 1.0)
  {
    v55 = 0.5;
  }

  else
  {
    v55 = v54;
  }

  if ((*(v3 + 152) & 1) == 0)
  {
    v56 = v32 * v32;
    if (v22 <= 0.0)
    {
      v58 = v56 * 9.0 * v55 / 9.81 + v22;
      v22 = 0.0;
      if (v58 <= 0.0)
      {
        v22 = v58;
      }
    }

    else
    {
      v57 = v22 + v56 * -10.0 * v55 / 9.81;
      v22 = 0.0;
      if (v57 > 0.0)
      {
        v22 = v57;
      }
    }
  }

  *(v3 + 208) = v41;
  v59 = fabs(v22);
  if (v59 >= 0.05)
  {
    v60 = *(v3 + 184) + a2;
    *(v3 + 184) = v60;
    if (v60 >= 0.5)
    {
      *(v3 + 200) = 1;
    }
  }

  else
  {
    *(v3 + 184) = 0;
  }

  if (v59 >= 0.05)
  {
    *(v3 + 192) = 0;
  }

  else
  {
    v61 = *(v3 + 192) + a2;
    *(v3 + 192) = v61;
    if (v61 >= 0.1)
    {
      *(v3 + 200) = 0;
    }
  }

  if (*(v3 + 200))
  {
LABEL_92:
    if (v19 < 0.025)
    {
      v62 = 0.0;
      if (v19 > -0.025)
      {
LABEL_104:
        if (v22 >= 0.025)
        {
          v64 = v22 + -0.025;
        }

        else
        {
          v64 = 0.0;
          if (v22 <= -0.025)
          {
            v64 = v22 + 0.025;
          }
        }

        goto LABEL_108;
      }

      goto LABEL_101;
    }

LABEL_102:
    v65 = -0.025;
    goto LABEL_103;
  }

  v63 = v36 * v36 * 20.0 / 9.81;
  if (v22 <= 0.0)
  {
    v22 = v63 + v22;
    if (v22 <= 0.0)
    {
      goto LABEL_92;
    }
  }

  else
  {
    v22 = v22 - v63;
    if (v22 > 0.0)
    {
      goto LABEL_92;
    }
  }

  v22 = 0.0;
  if (v19 >= 0.025)
  {
    goto LABEL_102;
  }

  v62 = 0.0;
  v64 = 0.0;
  if (v19 <= -0.025)
  {
LABEL_101:
    v65 = 0.025;
LABEL_103:
    v62 = v19 + v65;
    goto LABEL_104;
  }

LABEL_108:
  v66 = fabs(v62);
  v67 = fabs(v64);
  if (v66 <= 0.001 || v67 >= v66)
  {
    if (v66 < v64 && v67 > 0.001)
    {
      v62 = v62 * (v62 / v64 * (v62 / v64));
    }
  }

  else
  {
    v64 = v64 * (v64 / v62 * (v64 / v62));
  }

  v68 = *(v3 + 16);
  v69 = sub_24F24(v62, v64, v26, v29, v41);
  v70 = *(v3 + 80);
  v71 = v17 / (v17 + 1.0 / (v70[4] * 6.28318531));
  *v72.i64 = v69 * v71 + v70[2] * (1.0 - v71);
  v70[2] = *v72.i64;
  v70[3] = v71;
  v73 = *(v3 + 88);
  v74 = v17 / (v17 + 1.0 / (v73[4] * 6.28318531));
  v76 = v75 * v74 + v73[2] * (1.0 - v74);
  v73[2] = v76;
  v73[3] = v74;
  v77 = *(v3 + 96);
  v78 = v17 / (v17 + 1.0 / (v77[4] * 6.28318531));
  *&v72.i64[1] = v76;
  v79.f64[0] = NAN;
  v79.f64[1] = NAN;
  v80 = vnegq_f64(v79);
  v81 = vdupq_n_s64(0x7FF0000000000000uLL);
  __asm { FMOV            V18.2D, #1.0 }

  *v87.i64 = v69 * v78 + v77[2] * (1.0 - v78);
  v77[2] = *v87.i64;
  v77[3] = v78;
  v88 = *(v3 + 104);
  v89 = v17 / (v17 + 1.0 / (v88[4] * 6.28318531));
  v90 = v75 * v89 + v88[2] * (1.0 - v89);
  v88[2] = v90;
  v88[3] = v89;
  *&v87.i64[1] = v90;
  v8 = vbicq_s8(v72, vorrq_s8(vcgeq_s64(vandq_s8(v72, v80), v81), vcgtq_f64(vabsq_f64(v72), _Q18)));
  v9 = vbicq_s8(v87, vorrq_s8(vcgeq_s64(vandq_s8(v87, v80), v81), vcgtq_f64(vabsq_f64(v87), _Q18)));
LABEL_115:
  *a1 = v8;
  a1[1] = v9;
  a1[2].i8[0] = v7 == 1;
}

double sub_24B6C(double a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v7 = *(v4 + 2);
    v6 = *(v4 + 3);
    if (v7 >= v6 >> 1)
    {
      v4 = sub_26780((v6 > 1), v7 + 1, 1, v4);
    }

    *(v4 + 2) = v7 + 1;
    v8 = &v4[16 * v7];
    *(v8 + 4) = Current;
    *(v8 + 5) = a1;
    *(v1 + 16) = v4;
    *(v1 + 32) = *(v1 + 32) + a1;
    v9 = *(v4 + 2);
    a1 = 0.0;
    if (!v9)
    {
      break;
    }

    while (1)
    {
      if (*(v1 + 24) >= Current - *(v4 + 4))
      {
        return *(v1 + 32) / v9;
      }

      *(v1 + 32) = *(v1 + 32) - *(v4 + 5);
      v11 = *(v4 + 2);
      if (!v11)
      {
        break;
      }

      v12 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 16) = v4;
      if (!v12 || (v11 - 1) > *(v4 + 3) >> 1)
      {
        v4 = sub_26780(v12, v11, 1, v4);
        *(v1 + 16) = v4;
      }

      v10 = *(v4 + 2);
      memmove(v4 + 32, v4 + 48, 16 * v10 - 16);
      *(v4 + 2) = v10 - 1;
      *(v1 + 16) = v4;
      v9 = *(v4 + 2);
      if (!v9)
      {
        return a1;
      }
    }

    __break(1u);
LABEL_16:
    v4 = sub_26780(0, *(v4 + 2) + 1, 1, v4);
    *(v1 + 16) = v4;
  }

  return a1;
}

uint64_t sub_24CE0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

double sub_24D3C(double a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v7 = *(v4 + 2);
    v6 = *(v4 + 3);
    if (v7 >= v6 >> 1)
    {
      v4 = sub_26780((v6 > 1), v7 + 1, 1, v4);
    }

    *(v4 + 2) = v7 + 1;
    v8 = &v4[16 * v7];
    *(v8 + 4) = Current;
    *(v8 + 5) = a1;
    *(v1 + 16) = v4;
    *(v1 + 48) = *(v1 + 48) + a1;
    v9 = *(v4 + 2);
    v10 = a1;
    if (!v9)
    {
      return vabdd_f64(a1, v10);
    }

    if (Current - *(v4 + 4) <= 15.0)
    {
LABEL_12:
      v10 = *(v1 + 48) / v9;
      return vabdd_f64(a1, v10);
    }

    while (1)
    {
      *(v1 + 48) = *(v1 + 48) - *(v4 + 5);
      v11 = *(v4 + 2);
      if (!v11)
      {
        break;
      }

      v12 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 16) = v4;
      if (!v12 || (v11 - 1) > *(v4 + 3) >> 1)
      {
        v4 = sub_26780(v12, v11, 1, v4);
        *(v1 + 16) = v4;
      }

      v13 = *(v4 + 2);
      memmove(v4 + 32, v4 + 48, 16 * v13 - 16);
      *(v4 + 2) = v13 - 1;
      *(v1 + 16) = v4;
      v9 = *(v4 + 2);
      if (!v9)
      {
        v10 = a1;
        return vabdd_f64(a1, v10);
      }

      if (Current - *(v4 + 4) <= 15.0)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    v4 = sub_26780(0, *(v4 + 2) + 1, 1, v4);
    *(v1 + 16) = v4;
  }
}

uint64_t sub_24EC8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

double sub_24F24(double a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  Current = CFAbsoluteTimeGetCurrent();
  v13 = Current - *(v5 + 40);
  v14 = fmax(v13, 0.00833333333);
  if (v13 >= 1.0)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = v14;
  }

  *(v5 + 40) = Current;
  v16 = -0.001;
  if (a1 >= -0.001)
  {
    v17 = 0.0;
    if (a1 > 0.001)
    {
      v17 = a1 + -0.001;
    }
  }

  else
  {
    v17 = a1 + 0.001;
  }

  v84 = a1;
  if (a2 >= -0.001)
  {
    v18 = 0.0;
    if (a2 <= 0.001)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0.001;
  }

  v18 = a2 + v16;
LABEL_12:
  v19 = -0.01;
  if (a5 >= -0.01)
  {
    v20 = 0.0;
    if (a5 <= 0.01)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v19 = 0.01;
  }

  v20 = a5 + v19;
LABEL_16:
  v21 = *(v5 + 240);
  v22 = sub_24B6C(v17);
  v23 = *(v6 + 248);
  v24 = sub_24B6C(v18);
  v25 = *(v6 + 256);
  v26 = sub_24B6C(v20);
  v27 = *(v6 + 264);
  v28 = sub_24D3C(a3);
  v29 = *(v6 + 272);
  v30 = sub_24D3C(a4);
  v31 = fabs(v22);
  v32 = fabs(v26);
  if (v31 <= 0.05)
  {
    *(v6 + 80) = 0;
    if (v31 <= 0.02 || (v33 = 0.0, v32 < 0.05))
    {
      *(v6 + 64) = 0;
      v34 = 1.0;
      goto LABEL_35;
    }
  }

  else
  {
    v33 = 100.0;
    if (v15 + *(v6 + 80) <= 100.0)
    {
      v33 = v15 + *(v6 + 80);
    }

    *(v6 + 80) = v33;
    if (v31 <= 0.02 || fabs(v26) < 0.05)
    {
      *(v6 + 64) = 0;
      if (v33 < 0.0)
      {
        v34 = 5.0;
LABEL_35:
        v36 = 0.0;
        v37 = 48;
LABEL_36:
        *(v6 + v37) = v36;
        goto LABEL_37;
      }

      goto LABEL_30;
    }
  }

  v35 = 100.0;
  if (v15 + *(v6 + 64) <= 100.0)
  {
    v35 = v15 + *(v6 + 64);
  }

  *(v6 + 64) = v35;
  if (v33 < v35)
  {
    *(v6 + 48) = v35;
    v34 = 5.0;
    if (v35 <= 3.5)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v6 + 48) = v33;
  v34 = 1.0;
  if (v33 > 3.5)
  {
LABEL_31:
    *(v6 + 16) = 1;
    v36 = v22 / v31;
    if (v31 < 0.001)
    {
      v36 = 1.0;
    }

    v37 = 128;
    goto LABEL_36;
  }

LABEL_37:
  v38 = *(v6 + 16);
  v39 = *(v6 + 128);
  if (v38 == 1 && v31 > 0.005 && v22 * v39 >= 0.0)
  {
    *(v6 + 96) = 0;
    v40 = 0.0;
    v41 = 0.0;
  }

  else
  {
    v40 = v15 + *(v6 + 96);
    if (v40 > 100.0)
    {
      v40 = 100.0;
    }

    *(v6 + 96) = v40;
    v42 = v22 < 0.005;
    if (v39 > 0.0)
    {
      v42 = v22 > -0.005;
    }

    if (v40 > 0.05)
    {
      v43 = v38;
    }

    else
    {
      v43 = 0;
    }

    v41 = 0.0;
    if (v43 == 1)
    {
      if (v31 <= 0.08)
      {
        if (!v42)
        {
          goto LABEL_56;
        }

        v44 = *(v6 + 112);
        v45 = v15 * 1.5 / v34;
      }

      else
      {
        v44 = *(v6 + 112);
        v45 = v15 / v34;
      }

      v46 = v45 + v44;
      if (v46 <= 100.0)
      {
        v41 = v46;
      }

      else
      {
        v41 = 100.0;
      }
    }
  }

LABEL_56:
  *(v6 + 112) = v41;
  if (v41 > 2.5 || v40 > 35.0)
  {
    v38 = 0;
    *(v6 + 16) = 0;
  }

  v47 = fabs(v24);
  if (v47 <= 0.05)
  {
    *(v6 + 88) = 0;
    if (v47 <= 0.02 || (v48 = 0.0, v32 <= 0.05))
    {
      *(v6 + 72) = 0;
      v49 = 1.0;
      goto LABEL_78;
    }
  }

  else
  {
    v48 = v15 + *(v6 + 88);
    if (v48 > 100.0)
    {
      v48 = 100.0;
    }

    *(v6 + 88) = v48;
    if (v47 <= 0.02 || fabs(v26) <= 0.05)
    {
      *(v6 + 72) = 0;
      if (v48 < 0.0)
      {
        v49 = 5.0;
LABEL_78:
        v54 = 0.0;
        v55 = 56;
LABEL_79:
        *(v6 + v55) = v54;
        goto LABEL_80;
      }

      goto LABEL_73;
    }
  }

  v50 = v15 + *(v6 + 72);
  if (v50 > 100.0)
  {
    v50 = 100.0;
  }

  *(v6 + 72) = v50;
  if (v48 < v50)
  {
    *(v6 + 56) = v50;
    v49 = 5.0;
    if (v50 <= 3.5)
    {
      goto LABEL_80;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v6 + 56) = v48;
  v49 = 1.0;
  if (v48 > 3.5)
  {
LABEL_74:
    *(v6 + 17) = 1;
    v51 = fabs(v24);
    v52 = v24 / v51;
    v53 = v51 < 0.001;
    v54 = 1.0;
    if (!v53)
    {
      v54 = v52;
    }

    v55 = 136;
    goto LABEL_79;
  }

LABEL_80:
  v56 = *(v6 + 17);
  v57 = *(v6 + 136);
  if (v56 == 1 && fabs(v24) > 0.005 && v24 * v57 >= 0.0)
  {
    *(v6 + 104) = 0;
    v58 = 0.0;
    v59 = 0.0;
LABEL_95:
    v62 = v84;
    goto LABEL_96;
  }

  v58 = v15 + *(v6 + 104);
  if (v58 > 100.0)
  {
    v58 = 100.0;
  }

  *(v6 + 104) = v58;
  v60 = v24 > -0.005;
  if (v57 <= 0.0)
  {
    v60 = v24 < 0.005;
  }

  if (v58 > 0.05)
  {
    v61 = v56;
  }

  else
  {
    v61 = 0;
  }

  v59 = 0.0;
  if (v61 != 1)
  {
    goto LABEL_95;
  }

  if (fabs(v24) > 0.08)
  {
    v59 = v15 / v49 + *(v6 + 120);
    if (v59 > 100.0)
    {
      v59 = 100.0;
    }

    goto LABEL_95;
  }

  v62 = v84;
  if (v60)
  {
    v59 = v15 * 1.5 / v49 + *(v6 + 120);
    if (v59 > 100.0)
    {
      v59 = 100.0;
    }
  }

LABEL_96:
  *(v6 + 120) = v59;
  if (v59 > 2.5 || v58 > 35.0)
  {
    *(v6 + 17) = 0;
    v63 = v28 * 0.5;
    v64 = 0.2;
    v65 = fabs(v62);
    if (v28 * 0.5 >= 0.2)
    {
      if (v65 > 0.1)
      {
        goto LABEL_123;
      }

      v32 = fabs(v26);
      if (v32 > 0.03)
      {
        v63 = 0.2;
        goto LABEL_130;
      }

      if (v40 > 25.0)
      {
        v63 = 0.2;
        goto LABEL_137;
      }

      if (v41 > 2.0)
      {
        v63 = 0.2;
        goto LABEL_142;
      }

      if ((v38 & 1) == 0 || v39 * v62 > 0.0)
      {
        return v62;
      }

      if (v62 < 0.0)
      {
        v75 = 0.2;
LABEL_187:
        v74 = v62 + v75;
        return fmin(v74, 0.0);
      }

      v80 = -0.2;
    }

    else
    {
      if (v63 >= 0.1)
      {
        if (v65 <= 0.1)
        {
          v32 = fabs(v26);
          if (v32 > 0.03)
          {
            goto LABEL_130;
          }

          if (v40 > 25.0)
          {
LABEL_137:
            v72 = (35.0 - v40) / 10.0;
            if (v72 < 1.0)
            {
              if (v72 >= 0.0)
              {
                v63 = v72 * v63;
              }

              else
              {
                v63 = v63 * 0.0;
              }
            }

LABEL_141:
            if (v41 <= 2.0)
            {
              goto LABEL_146;
            }

            goto LABEL_142;
          }

          if (v41 > 2.0)
          {
LABEL_142:
            v73 = 35.0 - v40 + 35.0 - v40;
            if (v73 < 1.0)
            {
              if (v73 >= 0.0)
              {
                if ((v38 & 1) == 0)
                {
                  return v62;
                }

                v63 = v73 * v63;
              }

              else
              {
                if ((v38 & 1) == 0)
                {
                  return v62;
                }

                v63 = v63 * 0.0;
              }

              goto LABEL_147;
            }

LABEL_146:
            if ((v38 & 1) == 0)
            {
              return v62;
            }

LABEL_147:
            if (v39 * v62 > 0.0)
            {
              return v62;
            }

            if (v62 < 0.0)
            {
LABEL_149:
              v74 = v63 + v62;
              return fmin(v74, 0.0);
            }

            goto LABEL_218;
          }

          if ((v38 & 1) != 0 && v39 * v62 <= 0.0)
          {
            if (v62 < 0.0)
            {
              goto LABEL_149;
            }

LABEL_218:
            v81 = v62 - v63;
            goto LABEL_219;
          }

          return v62;
        }

LABEL_122:
        v64 = v63;
        goto LABEL_123;
      }

      v64 = 0.1;
      if (v65 > 0.1)
      {
        goto LABEL_123;
      }

      v32 = fabs(v26);
      if (v32 > 0.03)
      {
        v63 = 0.1;
        goto LABEL_130;
      }

      if (v40 > 25.0)
      {
        v63 = 0.1;
        goto LABEL_137;
      }

      if (v41 > 2.0)
      {
        v63 = 0.1;
        goto LABEL_142;
      }

      if ((v38 & 1) == 0 || v39 * v62 > 0.0)
      {
        return v62;
      }

      if (v62 < 0.0)
      {
        v75 = 0.1;
        goto LABEL_187;
      }

      v80 = -0.1;
    }

    v81 = v62 + v80;
LABEL_219:
    if (v81 < 0.0)
    {
      return 0.0;
    }

    else
    {
      return v81;
    }
  }

  v63 = v28 * 0.5;
  v64 = 0.2;
  v65 = fabs(v62);
  if (v28 * 0.5 >= 0.2)
  {
    if (v65 <= 0.1)
    {
      if (v32 > 0.03)
      {
        v63 = 0.2;
        goto LABEL_130;
      }

      if (v40 > 25.0)
      {
        v63 = 0.2;
        goto LABEL_137;
      }

      if (v41 > 2.0)
      {
        v63 = 0.2;
        goto LABEL_142;
      }

      if (!v38)
      {
        return v62;
      }

      if (v39 * v62 <= 0.0)
      {
        if (v62 < 0.0)
        {
          v76 = 0.2;
          goto LABEL_228;
        }

        v83 = -0.2;
LABEL_243:
        v62 = v62 + v83;
        if (v62 >= 0.0)
        {
          return v62;
        }

        return 0.0;
      }

LABEL_204:
      v78 = v30 * 0.5;
      v79 = fabs(a2);
      if (v78 < 0.2 && v78 < 0.1 && v79 <= 0.1 && v58 <= 25.0 && v59 <= 2.0)
      {
        if (v57 * a2 > 0.0)
        {
          v56 = 0;
        }

        if (v56 == 1)
        {
          goto LABEL_212;
        }
      }

      return v62;
    }

    goto LABEL_123;
  }

  v64 = 0.1;
  if (v63 >= 0.1)
  {
    if (v65 <= 0.1)
    {
      goto LABEL_129;
    }

    goto LABEL_122;
  }

  if (v65 > 0.1)
  {
LABEL_123:
    v66 = (0.2 - v65) / 0.1;
    v67 = 0.0;
    if (v66 >= 0.0)
    {
      v67 = (0.2 - v65) / 0.1;
    }

    if (v66 >= 1.0)
    {
      v68 = 1.0;
    }

    else
    {
      v68 = v67;
    }

    v63 = v68 * v64;
LABEL_129:
    v32 = fabs(v26);
    if (v32 <= 0.03)
    {
      goto LABEL_136;
    }

    goto LABEL_130;
  }

  v32 = fabs(v26);
  if (v32 > 0.03)
  {
    v63 = 0.1;
LABEL_130:
    v69 = (0.1 - v32) / 0.07;
    v70 = 0.0;
    if (v69 >= 0.0)
    {
      v70 = v69;
    }

    if (v69 >= 1.0)
    {
      v71 = 1.0;
    }

    else
    {
      v71 = v70;
    }

    v63 = v71 * v63;
LABEL_136:
    if (v40 <= 25.0)
    {
      goto LABEL_141;
    }

    goto LABEL_137;
  }

  if (v40 > 25.0)
  {
    v63 = 0.1;
    goto LABEL_137;
  }

  if (v41 > 2.0)
  {
    v63 = 0.1;
    goto LABEL_142;
  }

  if (!v38)
  {
    goto LABEL_204;
  }

  if (v39 * v62 <= 0.0)
  {
    if (v62 < 0.0)
    {
      v76 = 0.1;
LABEL_228:
      v62 = v62 + v76;
      if (v62 < 0.0)
      {
        return v62;
      }

      return 0.0;
    }

    v83 = -0.1;
    goto LABEL_243;
  }

  v77 = fabs(a2);
  if (v30 * 0.5 >= 0.2)
  {
    if (v77 <= 0.1 && v58 <= 25.0 && v59 <= 2.0)
    {
      if (v57 * a2 > 0.0)
      {
        v56 = 0;
      }

      if (v56 == 1)
      {
        if (a2 < 0.0)
        {
          return v84;
        }

        return v84;
      }
    }
  }

  else if (v30 * 0.5 < 0.1 && v77 <= 0.1 && v58 <= 25.0 && v59 <= 2.0)
  {
    if (v57 * a2 > 0.0)
    {
      v56 = 0;
    }

    if (v56 != 1)
    {
      return v84;
    }

LABEL_212:
    if (a2 < 0.0)
    {
      return v84;
    }

    return v84;
  }

  return v62;
}

uint64_t sub_25EF0()
{
  v1 = v0[30];

  v2 = v0[31];

  v3 = v0[32];

  v4 = v0[33];

  v5 = v0[34];

  return swift_deallocClassInstance();
}

uint64_t sub_25F6C()
{
  *(v0 + 16) = 257;
  *(v0 + 24) = CFAbsoluteTimeGetCurrent();
  *(v0 + 32) = CFAbsoluteTimeGetCurrent();
  *(v0 + 40) = CFAbsoluteTimeGetCurrent();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  __asm { FMOV            V1.2D, #1.0 }

  *(v0 + 112) = 0u;
  *(v0 + 128) = _Q1;
  *(v0 + 144) = xmmword_34D70;
  *(v0 + 160) = xmmword_34D80;
  *(v0 + 176) = xmmword_34D90;
  *(v0 + 192) = xmmword_34DA0;
  *(v0 + 208) = xmmword_34DB0;
  *(v0 + 224) = xmmword_34DC0;
  type metadata accessor for MovingAverage();
  v6 = swift_allocObject();
  *(v6 + 16) = &_swiftEmptyArrayStorage;
  *(v6 + 24) = xmmword_34DD0;
  *(v0 + 240) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = &_swiftEmptyArrayStorage;
  *(v7 + 24) = xmmword_34DD0;
  *(v0 + 248) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = &_swiftEmptyArrayStorage;
  *(v8 + 24) = xmmword_34DE0;
  *(v0 + 256) = v8;
  type metadata accessor for GravityCheck();
  v9 = swift_allocObject();
  *(v9 + 40) = 1;
  *(v9 + 48) = 0;
  *(v9 + 16) = &_swiftEmptyArrayStorage;
  *(v9 + 24) = 0x402E000000000000;
  *(v9 + 32) = 0;
  *(v0 + 264) = v9;
  v10 = swift_allocObject();
  *(v10 + 24) = 0x402E000000000000;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  *(v10 + 48) = 0;
  *(v10 + 16) = &_swiftEmptyArrayStorage;
  *(v0 + 272) = v10;
  return v0;
}

uint64_t sub_260E0(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for DriftMitigation();
  v4 = swift_allocObject();
  sub_25F6C();
  *(v2 + 16) = v4;
  type metadata accessor for LowPassFilter();
  v5 = swift_allocObject();
  *(v5 + 32) = 0x4010000000000000;
  *(v5 + 16) = xmmword_34DF0;
  *(v2 + 24) = v5;
  v6 = swift_allocObject();
  *(v6 + 32) = 0x4010000000000000;
  *(v6 + 16) = xmmword_34DF0;
  *(v2 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 32) = 0x4010000000000000;
  *(v7 + 16) = xmmword_34DF0;
  *(v2 + 40) = v7;
  v8 = swift_allocObject();
  *(v8 + 32) = 0x4010000000000000;
  *(v8 + 16) = xmmword_34DF0;
  *(v2 + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 32) = 0x4010000000000000;
  *(v9 + 16) = xmmword_34DF0;
  *(v2 + 56) = v9;
  v10 = swift_allocObject();
  *(v10 + 32) = 0x4010000000000000;
  *(v10 + 16) = xmmword_34DF0;
  *(v2 + 64) = v10;
  v11 = swift_allocObject();
  *(v11 + 32) = 0x4010000000000000;
  *(v11 + 16) = xmmword_34DF0;
  *(v2 + 72) = v11;
  v12 = swift_allocObject();
  *(v12 + 32) = 0x3FF8000000000000;
  *(v12 + 16) = xmmword_34E00;
  *(v2 + 80) = v12;
  v13 = swift_allocObject();
  *(v13 + 32) = 0x3FF8000000000000;
  *(v13 + 16) = xmmword_34E00;
  *(v2 + 88) = v13;
  v14 = swift_allocObject();
  *(v14 + 32) = 0x3FB999999999999ALL;
  *(v14 + 16) = xmmword_34E10;
  *(v2 + 96) = v14;
  v15 = swift_allocObject();
  *(v15 + 32) = 0x3FB999999999999ALL;
  *(v15 + 16) = xmmword_34E10;
  *(v2 + 104) = v15;
  *(v2 + 208) = 0;
  type metadata accessor for StaticDetection();
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 137) = 0u;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  v16 = swift_allocObject();
  *(v16 + 40) = 0;
  *(v16 + 16) = xmmword_34E20;
  v17 = sub_32A68();
  *(v17 + 16) = 24;
  bzero((v17 + 32), 0x240uLL);
  *(v16 + 32) = v17;
  *(v2 + 216) = a1;
  *(v2 + 224) = v16;
  return v2;
}

void *sub_26344()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[27];

  v14 = v0[28];

  return v0;
}

uint64_t sub_263CC()
{
  sub_26344();

  return swift_deallocClassInstance();
}

char *sub_26424(char *result, int64_t a2, char a3, char *a4)
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
    sub_A168(&qword_4CD60, &qword_350F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_26530(void *result, int64_t a2, char a3, void *a4)
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
    sub_A168(&qword_4CD50, &qword_350E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_A168(&qword_4CD58, &qword_350F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26664(char *result, int64_t a2, char a3, char *a4)
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
    sub_A168(&qword_4CD48, &qword_350E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_26780(char *result, int64_t a2, char a3, char *a4)
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
    sub_A168(&qword_4CD40, "X|");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_26884(uint64_t a1)
{
  if (*(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

id sub_268A0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_26998();
  sub_1C0BC();
  v2 = sub_32B98();

  v3 = sub_1B6EC(v2);

  if (!v3)
  {
    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 interfaceOrientation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

unint64_t sub_26998()
{
  result = qword_4C280;
  if (!qword_4C280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4C280);
  }

  return result;
}

uint64_t sub_269E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  if (v5 >= 24)
  {
    v5 = 0;
    v2[5] = 0;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 128);
  v13 = v2[4];
  result = swift_isUniquelyReferenced_nonNull_native();
  v2[4] = v13;
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_26FAC(v13);
  v13 = result;
  if (v5 < 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (v5 >= *(v13 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = (v13 + 24 * v5);
  v15[4] = v6 + v8;
  v15[5] = v7 + v10;
  v15[6] = v9 + v11;
  v2[4] = v13;
  v16 = v2[5];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v2[5] = v18;
  v19 = v2[3];
  if (v19 <= 23)
  {
    v2[3] = v19 + 1;
  }

  result = sub_26B6C();
  v20 = *(a1 + 48);
  v32 = *(a1 + 64);
  v31 = *(a1 + 88);
  v28 = *(a1 + 96);
  v29 = *(a1 + 112);
  v30 = *(a1 + 72);
  v24 = v23 + v21 + v22 < 0.00001;
  v25 = 0.0;
  if (v24)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v6;
  }

  if (v24)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v7;
  }

  if (!v24)
  {
    v25 = v9;
  }

  *a2 = v26;
  *(a2 + 8) = v27;
  *(a2 + 16) = v25;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 64) = v32;
  *(a2 + 48) = v20;
  *(a2 + 88) = v31;
  *(a2 + 72) = v30;
  *(a2 + 96) = v28;
  *(a2 + 112) = v29;
  *(a2 + 128) = v12;
  return result;
}

uint64_t sub_26B6C()
{
  v1 = sub_32698();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  if (v6)
  {
    v7 = *(v0 + 32);
    v8 = *(v7 + 16);
    if (!v8)
    {
      v11 = 0.0;
      v10.f64[0] = 0.0;
      v17 = 0.0;
LABEL_16:
      sub_29740(v11, v10.f64[0], v17, v6);
      v31 = *(v0 + 24);
      if ((v31 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        if (!v31)
        {
          v34 = 0.0;
          v35 = 0.0;
          v36 = 0.0;
          goto LABEL_27;
        }

        v32 = *(v0 + 32);
        if (*(v32 + 16) > v31 - 1)
        {
          if (v31 > 3)
          {
            v37 = vdupq_lane_s64(v28, 0);
            v38 = vdupq_lane_s64(v29, 0);
            v39 = vdupq_lane_s64(v30, 0);
            v33 = v31 & 0x7FFFFFFFFFFFFFFCLL;
            v40 = (v32 + 80);
            v34 = 0.0;
            v41 = v31 & 0x7FFFFFFFFFFFFFFCLL;
            v35 = 0.0;
            v36 = 0.0;
            do
            {
              v42 = v40 - 6;
              v57 = vld3q_f64(v42);
              v58 = vld3q_f64(v40);
              v43 = vsubq_f64(v57.val[0], v37);
              v44 = vsubq_f64(v58.val[0], v37);
              v45 = vmulq_f64(v43, v43);
              v46 = vmulq_f64(v44, v44);
              v47 = vsubq_f64(v57.val[1], v38);
              v48 = vsubq_f64(v58.val[1], v38);
              v49 = vmulq_f64(v47, v47);
              v50 = vmulq_f64(v48, v48);
              v57.val[0] = vsubq_f64(v57.val[2], v39);
              v57.val[1] = vsubq_f64(v58.val[2], v39);
              v57.val[0] = vmulq_f64(v57.val[0], v57.val[0]);
              v57.val[1] = vmulq_f64(v57.val[1], v57.val[1]);
              v34 = v34 + v57.val[0].f64[0] + v57.val[0].f64[1] + v57.val[1].f64[0] + v57.val[1].f64[1];
              v35 = v35 + v49.f64[0] + v49.f64[1] + v50.f64[0] + v50.f64[1];
              v36 = v36 + v45.f64[0] + v45.f64[1] + v46.f64[0] + v46.f64[1];
              v40 += 12;
              v41 -= 4;
            }

            while (v41);
            if (v31 == v33)
            {
LABEL_27:
              if (v31 <= 2)
              {
                v31 = 2;
              }

              return sub_29740(v36, v35, v34, (v31 - 1));
            }
          }

          else
          {
            v33 = 0;
            v34 = 0.0;
            v35 = 0.0;
            v36 = 0.0;
          }

          v51 = v31 - v33;
          v52 = (v32 + 24 * v33 + 48);
          do
          {
            v53 = (*(v52 - 2) - *&v28) * (*(v52 - 2) - *&v28);
            v54 = (*(v52 - 1) - *&v29) * (*(v52 - 1) - *&v29);
            v55 = *v52;
            v52 += 3;
            v36 = v36 + v53;
            v35 = v35 + v54;
            v34 = v34 + (v55 - *&v30) * (v55 - *&v30);
            --v51;
          }

          while (v51);
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

    if (v8 == 1)
    {
      v9 = 0;
      v10 = 0uLL;
      v11 = 0.0;
    }

    else
    {
      v9 = v8 & 0x7FFFFFFFFFFFFFFELL;
      v18 = (v7 + 64);
      v10 = 0uLL;
      v11 = 0.0;
      v19 = v8 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v20 = v18[-2].f64[0];
        v21 = v18[-1].f64[1];
        v22 = *(v18 - 24);
        v23 = *v18;
        v18 += 3;
        v10 = vaddq_f64(vaddq_f64(v10, v22), v23);
        v11 = v11 + v20 + v21;
        v19 -= 2;
      }

      while (v19);
      if (v8 == v9)
      {
        goto LABEL_15;
      }
    }

    v24 = v8 - v9;
    v25 = (v7 + 24 * v9 + 40);
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      v25 = (v25 + 24);
      v11 = v11 + v26;
      v10 = vaddq_f64(v10, v27);
      --v24;
    }

    while (v24);
LABEL_15:
    v17 = v10.f64[1];
    goto LABEL_16;
  }

  if (qword_4BAF0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v12 = sub_AD0C(v1, MCLog);
  swift_beginAccess();
  (*(v2 + 16))(v5, v12, v1);
  v13 = sub_32678();
  v14 = sub_32C58();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "Static detection: attempt to compute variance without any samples", v15, 2u);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_26F50()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

BOOL sub_26FC0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFFFFFFLL));
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_32E08();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_270B8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
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

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
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

void *sub_27178(uint64_t a1, unint64_t a2)
{
  v4 = sub_32698();
  v126 = *(v4 - 8);
  v127 = v4;
  v5 = *(v126 + 64);
  v6 = __chkstk_darwin(v4);
  v123 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v121 = &v107 - v9;
  __chkstk_darwin(v8);
  v119 = &v107 - v10;
  v11 = sub_32538();
  v120 = *(v11 - 8);
  v12 = *(*&v120 + 64);
  __chkstk_darwin(v11);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_32478();
  v124 = *(v15 - 8);
  v16 = v124[8];
  __chkstk_darwin(v15);
  v18 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_329B8();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_324E8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = &_swiftEmptyArrayStorage;
  v122 = a1;
  v125 = a2;
  sub_324B8();
  sub_329A8();
  *&v26 = COERCE_DOUBLE(sub_32958());
  v28 = v27;
  v118 = v18;
  v123 = v15;
  v117 = v14;
  v116 = v11;
  (*(v22 + 8))(v25, v21);
  v132 = *&v26;
  v133 = v28;
  v129 = (&dword_8 + 2);
  v130 = 0xE100000000000000;
  v29 = sub_28118();
  v30 = sub_32D08();

  if (!*(v30 + 16))
  {
    goto LABEL_51;
  }

  v31 = *(v30 + 40);
  v32 = 0x8000000000038920;
  v132 = *(v30 + 32);
  v133 = v31;

  v33 = v118;
  sub_32468();
  v34 = sub_32D18();
  v36 = v35;
  v37 = v124 + 1;
  v115 = v124[1];
  v115(v33, v123);
  if (v34 == 0xD000000000000089 && 0x8000000000038920 == v36)
  {

    goto LABEL_7;
  }

  v38 = sub_32EE8();

  if ((v38 & 1) == 0)
  {

LABEL_51:

    v30 = v126;
    v43 = v127;
    v37 = v121;
    if (qword_4BAF0 != -1)
    {
LABEL_69:
      swift_once();
    }

    v102 = sub_AD0C(v43, MCLog);
    swift_beginAccess();
    (*(v30 + 16))(v37, v102, v43);
    v103 = sub_32678();
    v104 = sub_32C58();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_0, v103, v104, "CSV file is in an incorrect format", v105, 2u);
    }

    (*(v30 + 8))(v37, v43);
    return &_swiftEmptyArrayStorage;
  }

LABEL_7:
  v39 = *(v30 + 16);

  if (!v39)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
LABEL_45:
    v97 = sub_AD0C(v39, MCLog);
    swift_beginAccess();
    (*(v32 + 16))(v33, v97, v39);

    v98 = sub_32678();
    v99 = sub_32C68();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v129 = v101;
      *v100 = 136315138;
      *(v100 + 4) = sub_182B0(v122, v31, &v129);
      _os_log_impl(&dword_0, v98, v99, "Error parsing column in %s", v100, 0xCu);
      sub_1A508(v101);
    }

    (*(v32 + 8))(v33, v39);
    return v37;
  }

  v40 = *(v30 + 16);
  v41 = v120;
  if (!v40)
  {
    goto LABEL_71;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v131 = v30;
  if (!isUniquelyReferenced_nonNull_native || (v40 - 1) > *(v30 + 24) >> 1)
  {
    v30 = sub_26424(isUniquelyReferenced_nonNull_native, v40, 1, v30);
    v131 = v30;
  }

  sub_270B8(0, 1, 0);
  v109 = *(v30 + 16);
  if (v109)
  {
    v110 = v29;
    v124 = v37;
    v43 = 0;
    v108 = (*&v41 + 8);
    v44 = (v30 + 40);
    v37 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v43 >= *(v30 + 16))
      {
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
        goto LABEL_69;
      }

      v121 = v43;
      v45 = *v44;
      v132 = *(v44 - 1);
      v133 = *&v45;

      v43 = v118;
      sub_32468();
      *&v46 = COERCE_DOUBLE(sub_32D18());
      v48 = v47;
      v115(v43, v123);

      v132 = *&v46;
      v133 = v48;
      v129 = (&stru_20 + 12);
      v130 = 0xE100000000000000;
      v49 = sub_32D08();

      if (!v49[2])
      {
        goto LABEL_57;
      }

      v50 = v49[4];
      v51 = v49[5];
      v132 = 0.0;

      LOBYTE(v50) = sub_26FC0(v50, v51);

      if ((v50 & 1) == 0)
      {
        break;
      }

      if (v49[2] < 2uLL)
      {
        goto LABEL_58;
      }

      v120 = v132;
      v52 = v49[6];
      v53 = v49[7];
      v132 = 0.0;

      LOBYTE(v52) = sub_26FC0(v52, v53);

      if ((v52 & 1) == 0)
      {
        break;
      }

      if (v49[2] < 3uLL)
      {
        goto LABEL_59;
      }

      v114 = v132;
      v54 = v49[8];
      v55 = v49[9];
      v132 = 0.0;

      LOBYTE(v54) = sub_26FC0(v54, v55);

      if ((v54 & 1) == 0)
      {
        break;
      }

      if (v49[2] < 4uLL)
      {
        goto LABEL_60;
      }

      v113 = v132;
      v56 = v49[10];
      v57 = v49[11];
      v132 = 0.0;

      LOBYTE(v56) = sub_26FC0(v56, v57);

      if ((v56 & 1) == 0)
      {
        break;
      }

      if (v49[2] < 5uLL)
      {
        goto LABEL_61;
      }

      v58 = v132;
      v59 = v49[12];
      v60 = v49[13];
      v132 = 0.0;

      LOBYTE(v59) = sub_26FC0(v59, v60);

      if ((v59 & 1) == 0)
      {
        break;
      }

      if (v49[2] < 6uLL)
      {
        goto LABEL_62;
      }

      v61 = v132;
      v62 = v49[14];
      v63 = v49[15];
      v132 = 0.0;

      LOBYTE(v62) = sub_26FC0(v62, v63);

      if ((v62 & 1) == 0)
      {
        break;
      }

      if (v49[2] < 7uLL)
      {
        goto LABEL_63;
      }

      v64 = v132;
      v65 = v49[16];
      v66 = v49[17];
      v132 = 0.0;

      LOBYTE(v65) = sub_26FC0(v65, v66);

      if ((v65 & 1) == 0)
      {
        break;
      }

      if (v49[2] < 8uLL)
      {
        goto LABEL_64;
      }

      v67 = v132;
      v68 = v49[18];
      v69 = v49[19];
      v132 = 0.0;

      LOBYTE(v68) = sub_26FC0(v68, v69);

      if ((v68 & 1) == 0)
      {
        break;
      }

      if (v49[2] < 9uLL)
      {
        goto LABEL_65;
      }

      v70 = v132;
      v71 = v49[20];
      v72 = v49[21];
      v132 = 0.0;

      LOBYTE(v71) = sub_26FC0(v71, v72);

      if ((v71 & 1) == 0)
      {
        break;
      }

      if (v49[2] < 0xAuLL)
      {
        goto LABEL_66;
      }

      v73 = v132;
      v74 = v49[22];
      v75 = v49[23];
      v132 = 0.0;

      LOBYTE(v74) = sub_26FC0(v74, v75);

      if ((v74 & 1) == 0)
      {
        break;
      }

      if (v49[2] < 0xBuLL)
      {
        goto LABEL_67;
      }

      v76 = v132;
      v77 = v49[24];
      v78 = v49[25];
      v132 = 0.0;

      LOBYTE(v77) = sub_26FC0(v77, v78);

      if ((v77 & 1) == 0)
      {
        break;
      }

      if (v49[2] < 0xCuLL)
      {
        goto LABEL_68;
      }

      v79 = v132;
      v80 = v49[26];
      v81 = v49[27];

      v132 = 0.0;
      v82 = sub_26FC0(v80, v81);

      if (!v82)
      {
        goto LABEL_44;
      }

      v112 = v64;
      v111 = v61;
      v83 = v132;
      v84 = objc_allocWithZone(type metadata accessor for MockCMAttitude());
      v85 = sub_2835C(v79, v76, v83);
      v86 = v117;
      sub_32528();
      sub_32508();
      v88 = v87;
      (*v108)(v86, v116);
      v89 = type metadata accessor for MockDeviceMotion();
      v90 = objc_allocWithZone(v89);
      v91 = &v90[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__userAcceleration];
      v92 = v114;
      *v91 = v120;
      *(v91 + 1) = v92;
      *(v91 + 2) = v113;
      v93 = &v90[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__gravity];
      v94 = v111;
      *v93 = v58;
      *(v93 + 1) = v94;
      *(v93 + 2) = v112;
      v95 = &v90[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__rotationRate];
      *v95 = v67;
      *(v95 + 1) = v70;
      *(v95 + 2) = v73;
      *&v90[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__attitude] = v85;
      *&v90[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__timestamp] = v88;
      v128.receiver = v90;
      v128.super_class = v89;
      objc_msgSendSuper2(&v128, "init");
      sub_32A28();
      if (*(&dword_10 + (v134 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v134 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v96 = *(&dword_10 + (v134 & 0xFFFFFFFFFFFFFF8));
        sub_32A58();
      }

      v43 = (v121 + 1);
      sub_32A78();

      v37 = v134;
      v44 += 2;
      if (v109 == v43)
      {
        goto LABEL_49;
      }
    }

LABEL_44:

    v32 = v126;
    v39 = v127;
    v31 = v125;
    v33 = v119;
    if (qword_4BAF0 != -1)
    {
      goto LABEL_72;
    }

    goto LABEL_45;
  }

  v37 = &_swiftEmptyArrayStorage;
LABEL_49:

  return v37;
}

unint64_t sub_28118()
{
  result = qword_4CE20;
  if (!qword_4CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4CE20);
  }

  return result;
}

_BYTE *sub_2816C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

id sub_2835C(double a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC18AXMotionCuesServer14MockCMAttitude__roll] = a1;
  *&v3[OBJC_IVAR____TtC18AXMotionCuesServer14MockCMAttitude__pitch] = a2;
  *&v3[OBJC_IVAR____TtC18AXMotionCuesServer14MockCMAttitude__yaw] = a3;
  v8 = __sincos_stret(a1 * 0.5);
  v9 = __sincos_stret(a2 * 0.5);
  v10 = __sincos_stret(a3 * 0.5);
  v11 = &v3[OBJC_IVAR____TtC18AXMotionCuesServer14MockCMAttitude__quaternion];
  *v11 = v8.__cosval * v9.__sinval * v10.__cosval + v8.__sinval * v9.__cosval * v10.__sinval;
  v11[1] = v8.__sinval * v9.__cosval * v10.__cosval - v8.__cosval * v9.__sinval * v10.__sinval;
  v11[2] = v8.__cosval * v9.__cosval * v10.__sinval + v8.__sinval * v9.__sinval * v10.__cosval;
  v11[3] = v8.__cosval * v9.__cosval * v10.__cosval - v8.__sinval * v9.__sinval * v10.__sinval;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t MCSignpost.server.unsafeMutableAddressor()
{
  if (qword_4BB18 != -1)
  {
    swift_once();
  }

  v0 = sub_32618();

  return sub_AD0C(v0, static MCSignpost.server);
}

uint64_t sub_28590()
{
  v0 = sub_32618();
  sub_1AFB0(v0, static MCSignpost.server);
  sub_AD0C(v0, static MCSignpost.server);
  return sub_32608();
}

uint64_t static MCSignpost.server.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_4BB18 != -1)
  {
    swift_once();
  }

  v2 = sub_32618();
  v3 = sub_AD0C(v2, static MCSignpost.server);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_2871C(uint64_t a1, float (*a2)(void), float *a3)
{
  sub_32C28();
  v5 = sub_32C18();
  v6 = direct field offset for AXSettings.motionCues;
  swift_beginAccess();
  v7 = *&v5[v6];

  v8 = a2();
  *a3 = v8;
}

void sub_2882C(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_allocWithZone(CAFilter);
  v6 = v4;
  v7 = [v5 initWithType:v6];

  *a3 = v7;
}

char *sub_28890(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_32E58();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_28A5C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_32E28();
        sub_294BC();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_28A5C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_199A4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_294BC();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_28A5C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_199A4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_28A5C(char *a1, int64_t a2, char a3)
{
  result = sub_28A7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_28A7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_A168(&qword_4CEC8, &unk_351B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_28B8C(uint64_t a1, double a2)
{
  if ((a1 & 0x100000000) != 0 || (a1 - 1) > 5)
  {
    return 0;
  }

  v2 = a1 - 1;
  result = [objc_opt_self() *(&off_46170)[v2]];
  if (result)
  {
    if (a2 == 1.0)
    {
      v5 = result;
      v6 = [result CGColor];

      return v6;
    }

    else
    {
      v12 = 0.0;
      v13 = 0.0;
      v10 = 1.0;
      v11 = 0.0;
      v7 = result;
      [v7 getHue:&v13 saturation:&v12 brightness:&v11 alpha:&v10];
      v8 = [objc_allocWithZone(UIColor) initWithHue:v13 saturation:v12 * a2 brightness:v11 alpha:v10];
      v9 = [v8 CGColor];

      return v9;
    }
  }

  return result;
}

id sub_28D00()
{
  v0 = sub_325B8();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(AXMCNoAnimationBackdropLayer) init];
  v6 = sub_32968();
  [v5 setGroupName:v6];

  v55 = &_swiftEmptyArrayStorage;
  if (qword_4BB30 != -1)
  {
    swift_once();
  }

  v7 = qword_4EA10;
  sub_32A28();
  if (*(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v55 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v41 = v5;
    v42 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
    sub_32A58();
    v5 = v41;
  }

  sub_32A78();
  if (qword_4BB38 != -1)
  {
    swift_once();
  }

  v8 = qword_4EA18;
  sub_32A28();
  if (*(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v55 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v43 = v5;
    v44 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
    sub_32A58();
    v5 = v43;
  }

  sub_32A78();
  if (qword_4BB40 != -1)
  {
    swift_once();
  }

  v9 = qword_4EA20;
  sub_32A28();
  if (*(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v55 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v45 = v5;
    v46 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
    sub_32A58();
    v5 = v45;
  }

  sub_32A78();
  if (qword_4BB48 != -1)
  {
    swift_once();
  }

  v10 = qword_4EA28;
  sub_32A28();
  if (*(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v55 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v47 = v5;
    v48 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
    sub_32A58();
    v5 = v47;
  }

  sub_32A78();
  v11 = v55;
  v12 = _AXSMotionCuesTintColor();
  v13 = v1[13];
  v52 = enum case for AccessibilityFeatureFlags.motionCuesCustomization(_:);
  v51 = v13;
  v13(v4);
  v14 = sub_325A8();
  v15 = v1[1];
  v15(v4, v0);
  if (v14)
  {
    v54 = 0;
    v16 = v12;
    v17 = sub_28B8C(v12, 1.0);
    if (v17)
    {
      v18 = v17;
      v50 = v5;
      v53 = 0;
      v19 = sub_28B8C(v16, 0.25);
      if (v19)
      {
        v20 = v19;
        if (qword_4BB50 != -1)
        {
          swift_once();
        }

        v21 = qword_4EA30;
        v22 = kCAFilterInputColor;
        [qword_4EA30 setValue:v18 forKey:?];
        v23 = v21;
        sub_32A28();
        if (*(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v55 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v49 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
          sub_32A58();
        }

        sub_32A78();
        if (qword_4BB58 != -1)
        {
          swift_once();
        }

        v24 = qword_4EA38;
        [qword_4EA38 setValue:v20 forKey:v22];
        v25 = v24;
        sub_32A28();
        if (*(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v55 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v49 = *(&dword_10 + (v55 & 0xFFFFFFFFFFFFFF8));
          sub_32A58();
        }

        sub_32A78();

        v11 = v55;
      }

      else
      {
      }

      v5 = v50;
    }
  }

  v26 = v5;
  sub_28890(v11);

  isa = sub_32A38().super.isa;

  [v26 setFilters:isa];

  v28 = sub_32BA8().super.super.isa;
  v29 = sub_32968();
  [v26 setValue:v28 forKeyPath:v29];

  v30 = sub_32A88().super.super.isa;
  v31 = sub_32968();
  [v26 setValue:v30 forKeyPath:v31];

  v32 = sub_32B78().super.super.isa;
  v33 = sub_32968();
  [v26 setValue:v32 forKeyPath:v33];

  v34 = sub_32A38().super.isa;
  v35 = sub_32968();
  [v26 setValue:v34 forKeyPath:v35];

  v36 = sub_32BA8().super.super.isa;
  v37 = sub_32968();
  [v26 setValue:v36 forKeyPath:v37];

  [v26 setAllowsEdgeAntialiasing:1];
  v51(v4, v52, v0);
  LOBYTE(v36) = sub_325A8();
  v15(v4, v0);
  if ((v36 & 1) != 0 && _AXSMotionCuesTintColor())
  {
    v39 = 1059145646;
  }

  else
  {
    v39 = 1062836634;
  }

  LODWORD(v38) = v39;
  [v26 setOpacity:v38];

  return v26;
}

unint64_t sub_294BC()
{
  result = qword_4CEC0;
  if (!qword_4CEC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4CEC0);
  }

  return result;
}

uint64_t sub_29508()
{
  v0 = sub_325B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for AccessibilityFeatureFlags.motionCuesCustomization(_:), v0);
  v5 = sub_325A8();
  result = (*(v1 + 8))(v4, v0);
  if (v5)
  {
    if (qword_4BB28 != -1)
    {
      result = swift_once();
    }

    if (qword_4BB20 != -1)
    {
      return swift_once();
    }
  }

  return result;
}

uint64_t sub_29740(double a1, double a2, double a3, double a4)
{
  v5 = sub_32698();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 == 0.0)
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v11 = sub_AD0C(v5, MCLog);
    swift_beginAccess();
    (*(v6 + 16))(v10, v11, v5);
    v12 = sub_32678();
    v13 = sub_32C58();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Attempt to divide IMUVector by zero.", v14, 2u);
    }

    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

char *sub_29928()
{
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [objc_allocWithZone(type metadata accessor for AXMotionCuesVFXContainerView()) initWithFrame:{v4, v6, v8, v10}];
  v12 = v11;
  if (*v0)
  {
    [*&v11[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView] setWorld:?];
  }

  v13 = OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView;
  [*&v12[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView] setAntialiasingMode:0];
  [*&v12[v13] setRendersContinuously:1];
  v14 = *&v12[v13];
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = v14;
  [v16 setDelegate:Strong];

  swift_unknownObjectRelease();
  v17 = *&v12[v13];
  v18 = [v1 mainScreen];
  [v18 scale];
  v20 = v19;

  [v17 setContentScaleFactor:v20 * 0.8];
  [*&v12[v13] setPreferredFramesPerSecond:60];
  return v12;
}

void sub_29AC8(void *a1)
{
  v2 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor:v2];
}

uint64_t sub_29B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2A38C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_29BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2A38C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_29C74()
{
  sub_2A38C();
  sub_327F8();
  __break(1u);
}

char *sub_29C9C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_containerView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView;
  *&v4[v10] = [objc_allocWithZone(VFXView) init];
  *&v4[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_backdropLayer] = 0;
  v48.receiver = v4;
  v48.super_class = type metadata accessor for AXMotionCuesVFXContainerView();
  v11 = objc_msgSendSuper2(&v48, "initWithFrame:", a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_containerView;
  v13 = *&v11[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_containerView];
  v14 = v11;
  [v14 addSubview:v13];
  v15 = *&v11[v12];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v17 setFrame:{v20, v22, v24, v26}];
  v27 = sub_28D00();
  [*&v11[v12] bounds];
  [v27 setFrame:?];
  v28 = [*&v11[v12] layer];
  [v28 addSublayer:v27];

  v29 = *&v14[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_backdropLayer];
  *&v14[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_backdropLayer] = v27;
  v30 = v27;

  v31 = OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView;
  [v14 addSubview:*&v14[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView]];
  v32 = *&v14[v31];
  v33 = [v16 mainScreen];
  [v33 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  [v32 setFrame:{v35, v37, v39, v41}];
  v42 = *&v14[v31];
  v43 = objc_opt_self();
  v44 = v42;
  v45 = [v43 clearColor];
  [v44 setBackgroundColor:v45];

  [*&v11[v12] setMaskView:*&v14[v31]];
  v46 = [v43 clearColor];
  [v14 setBackgroundColor:v46];

  return v14;
}

void sub_29FC8()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AXMotionCuesVFXContainerView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_containerView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_backdropLayer];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame:?];
  }
}

id sub_2A0D8(void *a1)
{
  v3 = OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_containerView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_vfxView;
  *&v1[v4] = [objc_allocWithZone(VFXView) init];
  *&v1[OBJC_IVAR____TtC18AXMotionCuesServer28AXMotionCuesVFXContainerView_backdropLayer] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AXMotionCuesVFXContainerView();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_2A1B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXMotionCuesVFXContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2A26C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_2A2C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_2A338()
{
  result = qword_4CF10;
  if (!qword_4CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4CF10);
  }

  return result;
}

unint64_t sub_2A38C()
{
  result = qword_4CF18;
  if (!qword_4CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4CF18);
  }

  return result;
}

uint64_t sub_2A40C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = sub_32888();
  v14[1] = v4;
  v12[0] = sub_32888();
  v12[1] = v5;
  sub_2A6D0(a1, v13);
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = a1;
    sub_326D8();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    sub_32888();
    sub_32708();
    sub_2A85C(v12, v15, &qword_4CF20, &qword_35450);
    v15[9] = v18;
    v15[10] = v19;
    v15[11] = v20;
    sub_32888();
    sub_32738();
    sub_2A85C(v14, v12, &qword_4CF28, &qword_35458);
    v13[16] = v25;
    v13[17] = v26;
    v13[18] = v27;
    v13[12] = v21;
    v13[13] = v22;
    v13[14] = v23;
    v13[15] = v24;
    v7 = sub_32728();
    v8 = sub_32838();
    sub_2A85C(v12, v14, &qword_4CF30, &qword_35460);
    v16 = v7;
    v17 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v6;
    sub_326D8();

    if (LOBYTE(v12[0]))
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    result = sub_2A85C(v14, a2, &qword_4CF38, &qword_354B0);
    *(a2 + 336) = v10;
  }

  else
  {
    type metadata accessor for AXMotionCuesVFXManager(0);
    sub_2A7F4();
    result = sub_32748();
    __break(1u);
  }

  return result;
}

uint64_t sub_2A6D0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    v3 = *(a1 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_world);
    Strong = swift_unknownObjectWeakLoadStrong();
    v10 = v3;
    swift_unknownObjectWeakInit();
    v5 = v3;

    sub_32888();
    sub_32738();
    result = sub_2A8C4(&v10, a2);
    v7 = v16;
    a2[5] = v15;
    a2[6] = v7;
    a2[7] = v17;
    v8 = v12;
    a2[1] = v11;
    a2[2] = v8;
    v9 = v14;
    a2[3] = v13;
    a2[4] = v9;
  }

  else
  {
    type metadata accessor for AXMotionCuesVFXManager(0);
    sub_2A7F4();
    result = sub_32748();
    __break(1u);
  }

  return result;
}

unint64_t sub_2A7F4()
{
  result = qword_4C538;
  if (!qword_4C538)
  {
    type metadata accessor for AXMotionCuesVFXManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4C538);
  }

  return result;
}

uint64_t sub_2A85C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_A168(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2A924()
{
  result = qword_4CF40;
  if (!qword_4CF40)
  {
    sub_9EA8(&qword_4CF48, &qword_354B8);
    sub_2A9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4CF40);
  }

  return result;
}

unint64_t sub_2A9B0()
{
  result = qword_4CF50;
  if (!qword_4CF50)
  {
    sub_9EA8(&qword_4CF38, &qword_354B0);
    sub_2AA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4CF50);
  }

  return result;
}

unint64_t sub_2AA3C()
{
  result = qword_4CF58;
  if (!qword_4CF58)
  {
    sub_9EA8(&qword_4CF30, &qword_35460);
    sub_2AAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4CF58);
  }

  return result;
}

unint64_t sub_2AAC8()
{
  result = qword_4CF60;
  if (!qword_4CF60)
  {
    sub_9EA8(&qword_4CF28, &qword_35458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4CF60);
  }

  return result;
}

uint64_t sub_2AB2C()
{
  v1 = v0;
  sub_2D854();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  if (LOBYTE(v152[0]) == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_32EE8();
  }

  sub_2F51C(v2 & 1);

  v3 = OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager____lazy_storage___values;
  v4 = *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager____lazy_storage___values);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_326D8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  sub_2F344(v152[1] < v152[0]);

  sub_32C28();
  v5 = sub_32C18();
  v6 = direct field offset for AXSettings.motionCues;
  swift_beginAccess();
  v7 = *&v5[v6];

  sub_32C08();
  v9 = v8;

  v10 = sub_32C18();
  v11 = direct field offset for AXSettings.motionCues;
  swift_beginAccess();
  v12 = *&v10[v11];

  sub_32BB8();
  v14 = v13;

  v15 = *(v1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v152[0] = 0.0;
  swift_retain_n();
  sub_326E8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = *(Strong + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v19 = v152[0];
    v153 = &type metadata for Float;
    *v152 = v19;
    sub_2ED8C(10, v152);

    sub_B744(v152, &qword_4D650, &qword_357C0);
  }

  v20 = *(v1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v152[0] = 0.0;
  swift_retain_n();
  sub_326E8();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v23 = *(v21 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v24 = v152[0];
    v153 = &type metadata for Float;
    *v152 = v24;
    sub_2ED8C(11, v152);

    sub_B744(v152, &qword_4D650, &qword_357C0);
  }

  v25 = *(v1 + v3);

  sub_2F548(0);

  v26 = *(v1 + v3);

  sub_2F5E0(0);

  v27 = *(v1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v152[0] = 0.9;
  swift_retain_n();
  sub_326E8();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    v30 = *(v28 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v31 = v152[0];
    v153 = &type metadata for Float;
    *v152 = v31;
    sub_2ED8C(9, v152);

    sub_B744(v152, &qword_4D650, &qword_357C0);
  }

  v32 = [objc_opt_self() currentDevice];
  v33 = [v32 userInterfaceIdiom];

  v34 = *(v1 + v3);
  if (v33 != &dword_0 + 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_326D8();

    sub_2F5E0(SLOBYTE(v152[0]));

    v87 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    v152[0] = 0.055;
    swift_retain_n();
    sub_326E8();
    sub_2F0F4();

    v88 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    v152[0] = 0.06;
    swift_retain_n();
    sub_326E8();
    sub_2F0F4();

    if (v9 > 0.75)
    {
      v89 = *(v1 + v3);
      swift_getKeyPath();
      swift_getKeyPath();
      v152[0] = 0.092;
      swift_retain_n();
      sub_326E8();
      sub_2F0F4();
    }

    v90 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v152[0]))
    {
      v91 = 9.0;
    }

    else
    {
      v91 = 11.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v152[0] = v91;

    sub_326E8();
    v92 = swift_unknownObjectWeakLoadStrong();
    if (v92)
    {
      v93 = v92;
      v94 = *(v92 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v95 = v152[0];
      v153 = &type metadata for Float;
      *v152 = v95;
      sub_2ED8C(3, v152);

      sub_B744(v152, &qword_4D650, &qword_357C0);
    }

    v96 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v152[0]))
    {
      v97 = 15.0;
    }

    else
    {
      v97 = 10.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v152[0] = v97;

    sub_326E8();
    v98 = swift_unknownObjectWeakLoadStrong();
    if (v98)
    {
      v99 = v98;
      v100 = *(v98 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v101 = v152[0];
      v153 = &type metadata for Float;
      *v152 = v101;
      sub_2ED8C(4, v152);

      sub_B744(v152, &qword_4D650, &qword_357C0);
    }

    v102 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v152[0]))
    {
      v103 = 8.0;
    }

    else
    {
      v103 = 3.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v152[0] = v103;

    sub_326E8();
    v104 = swift_unknownObjectWeakLoadStrong();
    if (v104)
    {
      v105 = v104;
      v106 = *(v104 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v107 = v152[0];
      v153 = &type metadata for Float;
      *v152 = v107;
      sub_2ED8C(5, v152);

      sub_B744(v152, &qword_4D650, &qword_357C0);
    }

    v108 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v152[0]))
    {
      v109 = 1.4;
    }

    else
    {
      v109 = 1.3;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v152[0] = v109;

    sub_326E8();
    v110 = swift_unknownObjectWeakLoadStrong();
    if (v110)
    {
      v111 = v110;
      v112 = *(v110 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v113 = v152[0];
      v153 = &type metadata for Float;
      *v152 = v113;
      sub_2ED8C(6, v152);

      sub_B744(v152, &qword_4D650, &qword_357C0);
    }

    if (v14 > 1.5)
    {
      v114 = *(v1 + v3);

      sub_2F5E0(0);

      v115 = *(v1 + v3);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_326D8();

      sub_2F548((LOBYTE(v152[0]) & 1) == 0);

      v116 = *(v1 + v3);
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_326D8();

      if (LOBYTE(v152[0]))
      {
        v117 = 10.0;
      }

      else
      {
        v117 = 13.0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v152[0] = v117;

      sub_326E8();
      v118 = swift_unknownObjectWeakLoadStrong();
      if (v118)
      {
        v119 = v118;
        v120 = *(v118 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_326D8();

        v121 = v152[0];
        v153 = &type metadata for Float;
        *v152 = v121;
        sub_2ED8C(3, v152);

        sub_B744(v152, &qword_4D650, &qword_357C0);
      }

      v122 = *(v1 + v3);
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_326D8();

      if (LOBYTE(v152[0]))
      {
        v123 = 30.0;
      }

      else
      {
        v123 = 20.0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v152[0] = v123;

      sub_326E8();
      v124 = swift_unknownObjectWeakLoadStrong();
      if (v124)
      {
        v125 = v124;
        v126 = *(v124 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_326D8();

        v127 = v152[0];
        v153 = &type metadata for Float;
        *v152 = v127;
        sub_2ED8C(4, v152);

        sub_B744(v152, &qword_4D650, &qword_357C0);
      }

      v128 = *(v1 + v3);
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_326D8();

      if (LOBYTE(v152[0]))
      {
        v129 = 10.0;
      }

      else
      {
        v129 = 5.0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v152[0] = v129;

      sub_326E8();
      v130 = swift_unknownObjectWeakLoadStrong();
      if (v130)
      {
        v131 = v130;
        v132 = *(v130 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_326D8();

        v133 = v152[0];
        v153 = &type metadata for Float;
        *v152 = v133;
        sub_2ED8C(5, v152);

        sub_B744(v152, &qword_4D650, &qword_357C0);
      }

      v134 = *(v1 + v3);
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_326D8();

      if (LOBYTE(v152[0]))
      {
        v135 = 1.5;
      }

      else
      {
        v135 = 1.4;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v152[0] = v135;

      sub_326E8();
      v136 = swift_unknownObjectWeakLoadStrong();
      if (v136)
      {
        v137 = v136;
        v138 = *(v136 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_326D8();

        v139 = v152[0];
        v153 = &type metadata for Float;
        *v152 = v139;
        sub_2ED8C(6, v152);

        sub_B744(v152, &qword_4D650, &qword_357C0);
      }
    }

    v140 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v152[0]))
    {
      v141 = -0.15;
    }

    else
    {
      v141 = 0.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v152[0] = v141;

    sub_326E8();
    v142 = swift_unknownObjectWeakLoadStrong();
    if (v142)
    {
      v143 = v142;
      v144 = *(v142 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v145 = v152[0];
      v153 = &type metadata for Float;
      *v152 = v145;
      sub_2ED8C(10, v152);

      sub_B744(v152, &qword_4D650, &qword_357C0);
    }

    v146 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v152[0]))
    {
      v147 = -0.24;
    }

    else
    {
      v147 = 0.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v152[0] = v147;

    sub_326E8();
    v148 = swift_unknownObjectWeakLoadStrong();
    if (!v148)
    {
      goto LABEL_109;
    }

    v149 = v148;
    v84 = *(v148 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v150 = v152[0];
    v153 = &type metadata for Float;
    *v152 = v150;
    v86 = 11;
    goto LABEL_108;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v152[0] = 0.037;
  swift_retain_n();
  sub_326E8();
  sub_2F0F4();

  v35 = *(v1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v152[0] = 0.043;
  swift_retain_n();
  sub_326E8();
  sub_2F0F4();

  if (v9 > 0.75)
  {
    v36 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    v152[0] = 0.072;
    swift_retain_n();
    sub_326E8();
    sub_2F0F4();
  }

  v37 = *(v1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_326D8();

  if (LOBYTE(v152[0]))
  {
    v38 = 10.0;
  }

  else
  {
    v38 = 12.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v152[0] = v38;

  sub_326E8();
  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    v41 = *(v39 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v42 = v152[0];
    v153 = &type metadata for Float;
    *v152 = v42;
    sub_2ED8C(3, v152);

    sub_B744(v152, &qword_4D650, &qword_357C0);
  }

  v43 = *(v1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_326D8();

  if (LOBYTE(v152[0]))
  {
    v44 = 10.0;
  }

  else
  {
    v44 = 9.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v152[0] = v44;

  sub_326E8();
  v45 = swift_unknownObjectWeakLoadStrong();
  if (v45)
  {
    v46 = v45;
    v47 = *(v45 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v48 = v152[0];
    v153 = &type metadata for Float;
    *v152 = v48;
    sub_2ED8C(4, v152);

    sub_B744(v152, &qword_4D650, &qword_357C0);
  }

  v49 = *(v1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_326D8();

  if (LOBYTE(v152[0]))
  {
    v50 = 7.0;
  }

  else
  {
    v50 = 6.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v152[0] = v50;

  sub_326E8();
  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = v51;
    v53 = *(v51 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v54 = v152[0];
    v153 = &type metadata for Float;
    *v152 = v54;
    sub_2ED8C(5, v152);

    sub_B744(v152, &qword_4D650, &qword_357C0);
  }

  v55 = *(v1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_326D8();

  if (LOBYTE(v152[0]))
  {
    v56 = 1.4;
  }

  else
  {
    v56 = 1.3;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v152[0] = v56;

  sub_326E8();
  v57 = swift_unknownObjectWeakLoadStrong();
  if (v57)
  {
    v58 = v57;
    v59 = *(v57 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v60 = v152[0];
    v153 = &type metadata for Float;
    *v152 = v60;
    sub_2ED8C(6, v152);

    sub_B744(v152, &qword_4D650, &qword_357C0);
  }

  if (v14 > 1.5)
  {
    v61 = *(v1 + v3);

    sub_2F548(1);

    v62 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v152[0]))
    {
      v63 = 12.0;
    }

    else
    {
      v63 = 14.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v152[0] = v63;

    sub_326E8();
    v64 = swift_unknownObjectWeakLoadStrong();
    if (v64)
    {
      v65 = v64;
      v66 = *(v64 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v67 = v152[0];
      v153 = &type metadata for Float;
      *v152 = v67;
      sub_2ED8C(3, v152);

      sub_B744(v152, &qword_4D650, &qword_357C0);
    }

    v68 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v152[0]))
    {
      v69 = 30.0;
    }

    else
    {
      v69 = 20.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v152[0] = v69;

    sub_326E8();
    v70 = swift_unknownObjectWeakLoadStrong();
    if (v70)
    {
      v71 = v70;
      v72 = *(v70 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v73 = v152[0];
      v153 = &type metadata for Float;
      *v152 = v73;
      sub_2ED8C(4, v152);

      sub_B744(v152, &qword_4D650, &qword_357C0);
    }

    v74 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v152[0]))
    {
      v75 = 12.0;
    }

    else
    {
      v75 = 9.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v152[0] = v75;

    sub_326E8();
    v76 = swift_unknownObjectWeakLoadStrong();
    if (v76)
    {
      v77 = v76;
      v78 = *(v76 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_326D8();

      v79 = v152[0];
      v153 = &type metadata for Float;
      *v152 = v79;
      sub_2ED8C(5, v152);

      sub_B744(v152, &qword_4D650, &qword_357C0);
    }

    v80 = *(v1 + v3);
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_326D8();

    if (LOBYTE(v152[0]))
    {
      v81 = 1.5;
    }

    else
    {
      v81 = 1.4;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v152[0] = v81;

    sub_326E8();
    v82 = swift_unknownObjectWeakLoadStrong();
    if (!v82)
    {
      goto LABEL_109;
    }

    v83 = v82;
    v84 = *(v82 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v85 = v152[0];
    v153 = &type metadata for Float;
    *v152 = v85;
    v86 = 6;
LABEL_108:
    sub_2ED8C(v86, v152);

    sub_B744(v152, &qword_4D650, &qword_357C0);
LABEL_109:
  }

  return sub_2E75C();
}

uint64_t sub_2CC68(double a1, double a2)
{
  v3 = v2;
  sub_2D854();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_326D8();

  v6 = OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager____lazy_storage___values;
  v7 = *(v2 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager____lazy_storage___values);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_326D8();

  v8 = v22[0] * a2;
  v9 = *(v3 + v6);
  swift_getKeyPath();
  swift_getKeyPath();
  v22[0] = fmax(fmin(v22[0] * a1, 1.0), -1.0);
  swift_retain_n();
  sub_326E8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v13 = v22[0];
    v23 = &type metadata for Float;
    *v22 = v13;
    sub_2ED8C(0, v22);

    sub_B744(v22, &qword_4D650, &qword_357C0);
  }

  v14 = *(v3 + v6);
  v15 = -v8;
  if (v8 < -1.0)
  {
    v15 = 1.0;
  }

  if (v8 >= 1.0)
  {
    v16 = -1.0;
  }

  else
  {
    v16 = v15;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v22[0] = v16;
  swift_retain_n();
  sub_326E8();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = *(v17 + OBJC_IVAR____TtC18AXMotionCuesServer22AXMotionCuesVFXManager_mainEmitter);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_326D8();

    v20 = v22[0];
    v23 = &type metadata for Float;
    *v22 = v20;
    sub_2ED8C(1, v22);

    sub_B744(v22, &qword_4D650, &qword_357C0);
  }
}

uint64_t sub_2CF90(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xED00006469724773;
  }

  else
  {
    v2 = 0xE900000000000073;
  }

  if (*a2)
  {
    v3 = 0xED00006469724773;
  }

  else
  {
    v3 = 0xE900000000000073;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_32EE8();
  }

  return v4 & 1;
}

Swift::Int sub_2D030()
{
  v1 = *v0;
  sub_32F78();
  sub_329E8();

  return sub_32F88();
}

uint64_t sub_2D0B0()
{
  *v0;
  sub_329E8();
}

Swift::Int sub_2D11C()
{
  v1 = *v0;
  sub_32F78();
  sub_329E8();

  return sub_32F88();
}

uint64_t sub_2D198@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_45540;
  v8._object = v3;
  v5 = sub_32EA8(v4, v8);

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