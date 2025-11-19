BOOL sub_1CA1426B4(uint64_t a1)
{
  v70 = a1;
  v2 = sub_1CA19ADF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1CA19BDA8();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v49 - v10;
  v12 = *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph];
  if (v12)
  {
    v55 = v3;
    v64 = v9;
    v66 = v4;
    v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = v8;
    sub_1CA0F2110(0, &qword_1EE03C130);

    sub_1CA19B7C8();
    v58 = v71[0];
    sub_1CA19B7D8();
    v69 = v5;
    sub_1CA19BE18();
    sub_1CA0F2110(0, &qword_1EE03C268);
    sub_1CA19BE18();
    v63 = v71[0];
    sub_1CA19BE18();
    v57 = LOBYTE(v71[0]);
    v56 = v71[1];
    v67 = v11;
    v65 = [objc_allocWithZone(MEMORY[0x1E698CB70]) initWithBag_];
    swift_unknownObjectRelease();
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v13 = sub_1CA19AFF8();
    v61 = __swift_project_value_buffer(v13, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v72 = type metadata accessor for DynamicLabel();
    v71[0] = v1;
    v62 = v1;
    v14 = AMSLogKey();
    v60 = v12;
    if (v14)
    {
      v15 = v14;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v71);
    sub_1CA19AF18();
    v72 = v2;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v71);
    v21 = v55;
    v23 = v55 + 16;
    v22 = *(v55 + 16);
    v24 = v70;
    v22(boxed_opaque_existential_2Tm);
    v53 = v22;
    v54 = v23;
    sub_1CA19AF38();
    sub_1CA10BDC8(v71, &qword_1EC433830);
    sub_1CA19AFC8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4339F0);
    v25 = sub_1CA19AD88();
    v26 = [v65 typeForURL_];

    v61 = sub_1CA19BEE8();
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = v68;
    (*(v68 + 16))(v64, v67, v69);
    v28 = v59;
    (v22)(v59, v24, v2);
    v29 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v50 = v2;
    v30 = (v6 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = v21;
    v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = *(v21 + 80);
    v51 = v34 | 7;
    v35 = swift_allocObject();
    *(v35 + 16) = v52;
    (*(v27 + 32))(v35 + v29, v64, v69);
    v36 = v58;
    *(v35 + v30) = v58;
    *(v35 + v32) = v63;
    v37 = v35 + v33;
    *v37 = v57;
    *(v37 + 8) = v56;
    v38 = *(v31 + 32);
    v39 = v50;
    v38(v35 + ((v34 + v33 + 16) & ~v34), v28, v50);
    v53(v28, v70, v39);
    v40 = swift_allocObject();
    v41 = v62;
    *(v40 + 16) = v62;
    v38(v40 + ((v34 + 24) & ~v34), v28, v39);
    v42 = sub_1CA0F2110(0, &qword_1EE03C230);
    v43 = v36;
    v44 = v63;
    v45 = v41;
    v46 = sub_1CA19C598();
    v72 = v42;
    v73 = MEMORY[0x1E69AB720];
    v71[0] = v46;
    sub_1CA19BE68();

    v12 = v60;

    (*(v68 + 8))(v67, v69);
    __swift_destroy_boxed_opaque_existential_2(v71);
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v16 = sub_1CA19AFF8();
    v69 = __swift_project_value_buffer(v16, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v72 = type metadata accessor for DynamicLabel();
    v71[0] = v1;
    v17 = v1;
    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v71);
    sub_1CA19AF18();
    v72 = v2;
    v47 = __swift_allocate_boxed_opaque_existential_2Tm(v71);
    (*(v3 + 16))(v47, v70, v2);
    sub_1CA19AF38();
    sub_1CA10BDC8(v71, &qword_1EC433830);
    sub_1CA19AFB8();
  }

  return v12 != 0;
}

void sub_1CA142FD4(void **a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_1CA19ADF8();
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v51 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v44 = v15;
    v47 = a3;
    v48 = a5;
    v46 = a6;
    v49 = a7;
    v50 = a8;
    v20 = [v17 integerValue];
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v45 = a4;
    v21 = sub_1CA19AFF8();
    __swift_project_value_buffer(v21, qword_1EE040B90);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    v43[1] = v22;
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v43[0] = type metadata accessor for DynamicLabel();
    v55 = v43[0];
    v54[0] = v19;
    v53 = v19;
    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v54);
    sub_1CA19AF18();
    type metadata accessor for AMSParserURLType(0);
    v55 = v25;
    v54[0] = v20;
    sub_1CA19AF38();
    sub_1CA10BDC8(v54, &qword_1EC433830);
    sub_1CA19AFC8();

    if (v20 == 2)
    {
      v37 = sub_1CA19BD68();
      v38 = v51;
      (*(v52 + 16))(v51, v50, v44);
      v39 = objc_allocWithZone(MEMORY[0x1E698CCC8]);
      v32 = sub_1CA144220(v37, v38);
      [v32 setAnonymousMetrics_];
      [v32 setClientInfo_];
      v26 = v53;
      if (v49)
      {
        sub_1CA16C5C4(v49);
        v40 = sub_1CA19C008();
      }

      else
      {
        v40 = 0;
      }

      [v32 setMetricsOverlay_];
    }

    else
    {
      v26 = v53;
      if (v20 == 1)
      {
        *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
        v55 = v43[0];
        v54[0] = v26;
        v34 = v26;
        v35 = AMSLogKey();
        if (v35)
        {
          v36 = v35;
          sub_1CA19C118();
        }

        sub_1CA19AF58();

        __swift_destroy_boxed_opaque_existential_2(v54);
        sub_1CA19AF18();
        sub_1CA19AFB8();

        goto LABEL_22;
      }

      if (v20)
      {
        v41 = objc_opt_self();
        v42 = sub_1CA19AD88();
        [v41 openStandardURL_];

LABEL_22:
        return;
      }

      sub_1CA0F2110(0, &qword_1EC433A00);
      v27 = sub_1CA19BD68();
      v28 = v45;
      v29 = v45;
      v30 = v48;
      v31 = v48;
      v32 = sub_1CA143580(v27, v28, v30);
      if (v49)
      {
        v33 = sub_1CA19C008();
      }

      else
      {
        v33 = 0;
      }

      [v32 setMetricsOverlay_];

      v40 = sub_1CA19AD88();
    }

    sub_1CA1435EC(v32);
    goto LABEL_22;
  }
}

id sub_1CA143580(uint64_t a1, void *a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBag:a1 account:a2 clientInfo:a3];
  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_1CA1435EC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph))
  {
    v2 = result;
    type metadata accessor for NavigationControllerList();
    sub_1CA19B7D8();

    sub_1CA19BE18();
    v3 = NavigationControllerList.topNavigationController.getter();
    v4 = [v3 topViewController];

    if (v4)
    {
      [v4 presentViewController:v2 animated:1 completion:0];
    }
  }

  return result;
}

void sub_1CA1436C8(uint64_t a1, void *a2)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v12 = type metadata accessor for DynamicLabel();
  v11[0] = a2;
  v4 = a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v11);
  sub_1CA19AF18();
  swift_getErrorValue();
  v12 = v10;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v11);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_2Tm);
  sub_1CA19AF38();
  sub_1CA10BDC8(v11, &qword_1EC433830);
  sub_1CA19AFB8();

  v8 = objc_opt_self();
  v9 = sub_1CA19AD88();
  [v8 openStandardURL_];
}

void (*DynamicLabel.numberOfLines.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DynamicLabel.numberOfLines.getter();
  return sub_1CA143994;
}

id sub_1CA1439C4(SEL *a1)
{
  result = [*(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label) textContainer];
  if (result)
  {
    v4 = result;
    v5 = [result *a1];

    return v5;
  }

  return result;
}

void sub_1CA143A2C(uint64_t a1, SEL *a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label) textContainer];
  [v5 *a2];
}

void (*DynamicLabel.lineBreakMode.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DynamicLabel.lineBreakMode.getter();
  return sub_1CA143AEC;
}

void DynamicLabel.font.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label) setFont_];

  *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_didShrinkFontForPreferredLineCount) = 0;
}

void (*DynamicLabel.font.modify(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = DynamicLabel.font.getter();
  return sub_1CA143BA4;
}

void sub_1CA143BA4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    DynamicLabel.font.setter(v2);
  }

  else
  {
    DynamicLabel.font.setter(*a1);
  }
}

uint64_t DynamicLabel.isTextExtraTall.getter()
{
  v1 = sub_1CA19ABF8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  v7 = v6 - v5;
  v8 = [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label) text];
  if (v8)
  {
    v9 = v8;
    sub_1CA19C118();

    sub_1CA19ABD8();
    sub_1CA0FB77C();
    OUTLINED_FUNCTION_6_10();
    sub_1CA19C718();
    LOBYTE(v9) = v10;
    (*(v3 + 8))(v7, v1);

    v11 = v9 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

id DynamicLabel.textLength.getter()
{
  result = [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label) text];
  if (result)
  {
    v2 = result;
    sub_1CA19C118();

    v3 = sub_1CA19C1A8();

    return v3;
  }

  return result;
}

void DynamicLabel.measurements(fitting:in:)(uint64_t a1)
{
  OUTLINED_FUNCTION_23_3();
  sub_1CA140350();
  v2 = OUTLINED_FUNCTION_17_3();
  [v3 v4];
  if (DynamicLabel.isTextExtraTall.getter())
  {
    v5 = DynamicLabel.font.getter();
    if (v5)
    {
      v6 = v5;
      sub_1CA19C678();
    }

    else
    {
      __break(1u);
    }
  }
}

void (*sub_1CA14403C(id *a1))(uint64_t *a1)
{
  a1[1] = *v1;
  *a1 = DynamicLabel.numberOfLines.getter();
  return sub_1CA143994;
}

void (*sub_1CA1440D0(id *a1))(uint64_t *a1)
{
  a1[1] = *v1;
  *a1 = DynamicLabel.lineBreakMode.getter();
  return sub_1CA143AEC;
}

void (*sub_1CA144164(id *a1))(void **a1, char a2)
{
  a1[1] = *v1;
  *a1 = DynamicLabel.font.getter();
  return sub_1CA143BA4;
}

id sub_1CA144220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CA19AD88();
  v7 = [v3 initWithBag:a1 URL:v6];
  swift_unknownObjectRelease();

  v8 = sub_1CA19ADF8();
  (*(*(v8 - 8) + 8))(a2, v8);
  return v7;
}

void sub_1CA1442BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA19C0E8();

  [a3 setAccessibilityLabel_];
}

id sub_1CA144320(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(type metadata accessor for DynamicLabel());
  (*(v13 + 16))(v15, a3, a6);
  v17 = sub_1CA1444A0(a1, a2, v15, a4, v16, a6, a7);
  (*(v13 + 8))(a3, a6);
  return v17;
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

id sub_1CA1444A0(uint64_t a1, void *a2, uint64_t a3, char a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v20[3] = a6;
  v20[4] = a7;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_2Tm, a3, a6);
  v14 = &a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_shrinkToFit] = 0;
  a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_didShrinkFontForPreferredLineCount] = 0;
  v15 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label;
  *&a5[v15] = [objc_allocWithZone(MEMORY[0x1E698CCA0]) init];
  *&a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph] = 0;
  *&a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultAlignment] = a1;
  *&a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultColor] = a2;
  sub_1CA0F2ACC(v20, &a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultCustomTextStyle]);
  a5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_centerText] = a4;
  v19.receiver = a5;
  v19.super_class = type metadata accessor for DynamicLabel();
  v16 = a2;
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1CA1400BC();
  sub_1CA14010C();

  __swift_destroy_boxed_opaque_existential_2(v20);
  return v17;
}

uint64_t sub_1CA14461C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433918);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1CA144750()
{
  OUTLINED_FUNCTION_10_6();
  v2 = sub_1CA19BDA8();
  OUTLINED_FUNCTION_7_3(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_12_4(v9);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + 16);
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = v1 + ((*(v10 + 80) + v8 + 16) & ~*(v10 + 80));

  sub_1CA142FD4(v0, v13, v1 + v4, v11, v12, v14, v15, v16);
}

void sub_1CA144850()
{
  OUTLINED_FUNCTION_10_6();
  v2 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_12_4(v2);
  v3 = *(v1 + 16);

  sub_1CA1436C8(v0, v3);
}

unint64_t sub_1CA144A24()
{
  result = qword_1EC433A20;
  if (!qword_1EC433A20)
  {
    sub_1CA19AE98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433A20);
  }

  return result;
}

id OUTLINED_FUNCTION_11_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{

  return objc_msgSendSuper2(&a9, v9, 0.0, 0.0, 0.0, 0.0);
}

uint64_t OUTLINED_FUNCTION_14_5()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_19_1@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return sub_1CA19AF58();
}

id OUTLINED_FUNCTION_21_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_27_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_28_2()
{

  return sub_1CA19AF58();
}

uint64_t sub_1CA144C0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CA19B148();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_3();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CB0);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1CA10BC7C(v2, &v17 - v12, &qword_1EC432CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CA19B0E8();
    OUTLINED_FUNCTION_0_4();
    return (*(v14 + 32))(a1, v13);
  }

  else
  {
    sub_1CA19C4C8();
    v16 = sub_1CA19B238();
    sub_1CA19B058();

    sub_1CA19B138();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t sub_1CA144DE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CA19B148();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_3();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CB8);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  v13 = type metadata accessor for DynamicLabelText();
  sub_1CA10BC7C(v1 + *(v13 + 20), v12, &qword_1EC432CB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CA12F3F0(v12, a1);
  }

  sub_1CA19C4C8();
  v15 = sub_1CA19B238();
  sub_1CA19B058();

  sub_1CA19B138();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v9, v3);
}

__n128 DynamicLabelText.init(text:objectGraph:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CB0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for DynamicLabelText();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CB8);
  swift_storeEnumTagMultiPayload();
  swift_weakInit();
  *(a2 + v4[8]) = 4;
  v6 = v4[9];
  *(a2 + v6) = [objc_opt_self() ams_primaryText];
  *(a2 + v4[10]) = 0;
  v7 = *MEMORY[0x1E69DDCF8];
  *(a2 + v4[11]) = *MEMORY[0x1E69DDCF8];
  swift_weakAssign();
  v8 = v7;

  v9 = a2 + v4[7];
  result = *a1;
  v11 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v11;
  *(v9 + 4) = *(a1 + 32);
  return result;
}

uint64_t type metadata accessor for DynamicLabelText()
{
  result = qword_1EC433A98;
  if (!qword_1EC433A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DynamicLabelText.alignment(_:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_18(a1);
  result = type metadata accessor for DynamicLabelText();
  *(v2 + *(result + 32)) = v1;
  return result;
}

void DynamicLabelText.font(_:)(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_18(a1);
  v3 = (v2 + *(type metadata accessor for DynamicLabelText() + 44));

  objc_storeStrong(v3, v1);
}

uint64_t DynamicLabelText.fontTraits(_:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  sub_1CA145838(v2, a2);
  result = type metadata accessor for DynamicLabelText();
  *(a2 + *(result + 40)) = a1;
  return result;
}

void DynamicLabelText.foregroundColor(_:)(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_18(a1);
  v3 = (v2 + *(type metadata accessor for DynamicLabelText() + 36));

  objc_storeStrong(v3, v1);
}

id DynamicLabelText.makeUIView(context:)()
{
  v1 = sub_1CA19B068();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = type metadata accessor for DynamicLabelText();
  v11 = *(v0 + v10[8]);
  v12 = *(v0 + v10[9]);
  v13 = *(v0 + v10[11]);
  v14 = *(v0 + v10[10]);
  *v9 = v13;
  *(v9 + 2) = v14;
  v15 = *MEMORY[0x1E69AB8C0];
  sub_1CA19B088();
  OUTLINED_FUNCTION_0_4();
  (*(v16 + 104))(v9, v15);
  (*(v3 + 104))(v9, *MEMORY[0x1E69AB860], v1);
  (*(v3 + 16))(v7, v9, v1);
  v17 = v12;
  v18 = v13;
  v19 = sub_1CA14589C(v11, v17, v7, 1);
  (*(v3 + 8))(v9, v1);
  return v19;
}

uint64_t DynamicLabelText.updateUIView(_:context:)()
{
  v1 = type metadata accessor for DynamicLabelText();
  sub_1CA10BC7C(v0 + *(v1 + 28), &v4, &qword_1EC433918);
  if (!v5)
  {
    return sub_1CA145AF0(&v4);
  }

  sub_1CA144A80(&v4, v6);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    DynamicLabel.apply(text:asPartOf:)(v6, Strong);
  }

  return __swift_destroy_boxed_opaque_existential_2(v6);
}

double DynamicLabelText.sizeThatFits(_:uiView:context:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v17 = a4;
  v16 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4336E0);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  sub_1CA19B0C8();
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4336F0);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1CA144C0C(&v16 - v11);
  v13 = sub_1CA19B0E8();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_1CA19C638();
  sub_1CA19C688();
  OUTLINED_FUNCTION_6_8();
  sub_1CA19B0B8();
  sub_1CA19C698();
  sub_1CA144DE4(v8);
  sub_1CA19C628();
  sub_1CA19C688();
  OUTLINED_FUNCTION_6_8();
  sub_1CA19B0A8();
  sub_1CA19C698();
  CGSizeMake([a5 updateTraitsIfNeeded]);
  [a5 sizeThatFits_];
  return v14 + 1.0;
}

uint64_t sub_1CA1456F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA145D78(&qword_1EC433AB0);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1CA145774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CA145D78(&qword_1EC433AB0);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1CA1457F4()
{
  sub_1CA145D78(&qword_1EC433AB0);
  sub_1CA19B1F8();
  __break(1u);
}

uint64_t sub_1CA145838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicLabelText();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1CA14589C(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = sub_1CA19B068();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DynamicLabel();
  v13 = objc_allocWithZone(v12);
  (*(v9 + 16))(v11, a3, v8);
  v22[3] = v8;
  v22[4] = MEMORY[0x1E69AB870];
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v22);
  (*(v9 + 32))(boxed_opaque_existential_2Tm, v11, v8);
  v15 = &v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_dynamicText];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_shrinkToFit] = 0;
  v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_didShrinkFontForPreferredLineCount] = 0;
  v16 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_label;
  *&v13[v16] = [objc_allocWithZone(MEMORY[0x1E698CCA0]) init];
  *&v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_objectGraph] = 0;
  *&v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultAlignment] = a1;
  *&v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultColor] = a2;
  sub_1CA0F2ACC(v22, &v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_defaultCustomTextStyle]);
  v13[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic12DynamicLabel_centerText] = a4;
  v21.receiver = v13;
  v21.super_class = v12;
  v17 = a2;
  v18 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1CA1400BC();
  sub_1CA14010C();

  (*(v9 + 8))(a3, v8);
  __swift_destroy_boxed_opaque_existential_2(v22);
  return v18;
}

uint64_t sub_1CA145AF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433918);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CA145BB4()
{
  sub_1CA12EC3C();
  if (v0 <= 0x3F)
  {
    sub_1CA145D14(319, &qword_1EC4336D8, &qword_1EC4336E0, &unk_1CA19FB00, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1CA145D14(319, &qword_1EC433AA8, &qword_1EC433950, &unk_1CA1A4290, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for NSTextAlignment(319);
        if (v3 <= 0x3F)
        {
          sub_1CA12CA28();
          if (v4 <= 0x3F)
          {
            type metadata accessor for SymbolicTraits(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for TextStyle(319);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1CA145D14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1CA145D78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DynamicLabelText();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_18@<X0>(uint64_t a1@<X8>)
{

  return sub_1CA145838(v1, a1);
}

uint64_t DynamicMarkdownText.Artwork.Alignment.init(rawValue:)()
{
  v0 = sub_1CA19CA48();

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

uint64_t DynamicMarkdownText.Artwork.Alignment.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7265746E6563;
  }

  else
  {
    return 0x656E696C65736162;
  }
}

uint64_t sub_1CA145E94@<X0>(_BYTE *a1@<X8>)
{
  result = DynamicMarkdownText.Artwork.Alignment.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t sub_1CA145EC4@<X0>(uint64_t *a1@<X8>)
{
  result = DynamicMarkdownText.Artwork.Alignment.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t DynamicMarkdownText.Artwork.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ColorFactory();
  swift_allocObject();
  v4 = sub_1CA0FEE40();
  sub_1CA0FCB08(0x6E656D6E67696C61, 0xE900000000000074, &type metadata for DynamicMarkdownText.Artwork, v5, v6, v7, v8, v9);
  MEMORY[0x1EEE9AC00](v11);
  sub_1CA0FEE40();
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_4_6();
  (*(v12 + 8))(a1);

  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v13 + 8))(a2);
  return v4;
}

uint64_t sub_1CA14619C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1CA19B5C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1CA19B4D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Artwork();
  (*(v11 + 16))(v13, a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  result = Artwork.__allocating_init(deserializing:using:)(v13, v9);
  *a3 = result;
  return result;
}

unint64_t sub_1CA146354()
{
  result = qword_1EC433AB8;
  if (!qword_1EC433AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433AB8);
  }

  return result;
}

uint64_t sub_1CA1463A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = DynamicMarkdownText.Artwork.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
    *(a3 + 16) = v7;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CA1463F4(uint64_t *a1, int a2)
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

uint64_t sub_1CA146434(uint64_t result, int a2, int a3)
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

_BYTE *_s7ArtworkV9AlignmentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

UIFont_optional __swiftcall DynamicMarkdownText.font(compatibleWith:)(UITraitCollection compatibleWith)
{
  sub_1CA1465F8(v1 + 72, v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_2(v5, v6);
    v2 = sub_1CA19B098();
    __swift_destroy_boxed_opaque_existential_2(v5);
  }

  else
  {
    sub_1CA132B60(v5, &qword_1EC433AC0);
    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1CA1465F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA146668()
{
  v0 = sub_1CA19CA48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1CA1466B4(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x74754F68737570;
  }

  return 0x647261646E617473;
}

uint64_t sub_1CA146734@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA146668();
  *a1 = result;
  return result;
}

uint64_t sub_1CA146764@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA1466B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t DynamicMarkdownText.accessibilityText.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void *DynamicMarkdownText.color.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t DynamicMarkdownText.maximumLineCount.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

void *DynamicMarkdownText.strikeThroughColor.getter()
{
  v1 = *(v0 + 168);
  v2 = v1;
  return v1;
}

uint64_t DynamicMarkdownText.text.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

double DynamicMarkdownText.init(text:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433A08);
  v6 = sub_1CA19C038();
  v7 = sub_1CA19C038();
  result = 0.0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *a3 = 5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v6;
  *(a3 + 32) = 5;
  *(a3 + 40) = v7;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  *(a3 + 112) = 1280;
  *(a3 + 120) = 0;
  *(a3 + 128) = 1;
  *(a3 + 136) = 0;
  *(a3 + 144) = 1;
  *(a3 + 152) = 0;
  *(a3 + 160) = 1;
  *(a3 + 168) = 0;
  *(a3 + 176) = a1;
  *(a3 + 184) = a2;
  return result;
}

uint64_t DynamicMarkdownText.init(accessibilityAlignment:accessibilityText:actions:alignment:artworks:baselineSpacing:color:customTextStyle:landscapeAlignment:lineBreakStrategy:maximumLineCount:preferredLineCount:strikeThroughColor:text:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, __int128 a19, uint64_t a20)
{
  v20 = *(a11 + 16);
  *(a9 + 72) = *a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  result = a8 & 1;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 88) = v20;
  *(a9 + 104) = *(a11 + 32);
  *(a9 + 112) = 0;
  *(a9 + 113) = a12;
  *(a9 + 120) = a13;
  *(a9 + 128) = a14 & 1;
  *(a9 + 136) = a15;
  *(a9 + 144) = a16 & 1;
  *(a9 + 152) = a17;
  *(a9 + 160) = a18 & 1;
  *(a9 + 168) = a19;
  *(a9 + 184) = a20;
  return result;
}

uint64_t sub_1CA146A70()
{
  v1 = *(v0 + 8);

  return v1;
}

void *sub_1CA146AA8()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t sub_1CA146AF8()
{
  v1 = *(v0 + 176);

  return v1;
}

void DynamicMarkdownText.init(deserializing:using:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v6 = sub_1CA19B4D8();
  MEMORY[0x1EEE9AC00](v6);
  v48 = (v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ActionFactory();
  inited = swift_initStackObject();
  type metadata accessor for ColorFactory();
  v51 = swift_allocObject();
  type metadata accessor for DynamicFontFactory();
  v50 = swift_initStackObject();
  sub_1CA0FC68C();
  if (v3)
  {

    v8 = 5;
  }

  v9 = a2;
  v56[0] = v8;
  v47 = 0xD000000000000011;
  v10 = sub_1CA161FD8();
  v11 = inited;
  v57 = v10;
  v58 = v12;
  v49 = v12;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_17();
  *(v13 - 16) = v11;
  *(v13 - 8) = a2;
  v14 = sub_1CA0FEE40();
  v45[1] = v6;
  v59 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3_17();
  *(v15 - 16) = a2;
  v45[0] = 0;
  v61 = sub_1CA0FEE40();
  sub_1CA0FC68C();
  v16 = v48;
  v60 = v17;
  v62 = 0;
  v63 = 1;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_17();
  *(v18 - 16) = v19;
  *(v18 - 8) = a2;
  v64 = sub_1CA0FEE40();
  sub_1CA19B4E8();
  if (sub_1CA19B498())
  {
    v20 = sub_1CA19BFA8();
    sub_1CA12C890();
    v21 = swift_allocError();
    *v22 = 1953394534;
    v22[1] = 0xE400000000000000;
    v22[2] = &type metadata for DynamicMarkdownText;
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69AB690], v20);
    swift_willThrow();
    v23 = OUTLINED_FUNCTION_2_19();
    v24(v23);

    v55 = 0;
    v53 = 0u;
    v54 = 0u;
  }

  else
  {
    DynamicFontFactory.font(deserializing:using:)(v16, a2, v52);
    v33 = OUTLINED_FUNCTION_2_19();
    v34(v33);
    sub_1CA0EBE94(v52, &v53);
  }

  v65 = v53;
  v66 = v54;
  v67 = v55;
  sub_1CA0FC7E4(0x74616D726F66, 0xE600000000000000, &type metadata for DynamicMarkdownText, v35, v36, v37, v38, v39);
  v25 = v51;
  v68 = v26 & 1;
  OUTLINED_FUNCTION_0_24();
  sub_1CA0FC68C();
  v69 = v27;
  sub_1CA0FCB3C(v47, 0x80000001CA1AC650, &type metadata for DynamicMarkdownText, v28, v29, v30, v31, v32);
  v70 = qword_1CA1A4848[v40];
  v71 = 0;
  v72 = sub_1CA161EA4();
  v73 = 0;
  OUTLINED_FUNCTION_0_24();
  v74 = sub_1CA161EA4();
  v75 = 0;
  MEMORY[0x1EEE9AC00](v74);
  v45[-2] = v25;
  v45[-1] = v9;
  OUTLINED_FUNCTION_0_24();
  v76 = sub_1CA0FEE40();
  v41 = sub_1CA161FD8();
  v43 = v42;

  v48(a1, 0xE400000000000000);
  v77 = v41;
  v78 = v43;
  sub_1CA1448BC(v56, v46);
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v44 + 8))(v9);
  sub_1CA1446E0(v56);
}

uint64_t sub_1CA147408@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433778);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13[-v7];
  sub_1CA19B408();
  v9 = sub_1CA19B758();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v9);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_1CA132B60(v8, &qword_1EC433778);
    v12 = 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
    *&v13[-16] = a1;
    *&v13[-8] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433A08);
    v12 = sub_1CA19B738();
    result = (*(*(v9 - 8) + 8))(v8, v9);
  }

  *a3 = v12;
  return result;
}

uint64_t sub_1CA1475A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ActionFactory.action(deserializing:using:)(v8);
  if (v3)
  {

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    result = sub_1CA132B60(v8, &unk_1EC433730);
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    sub_1CA0EBE94(v8, v10);
    *a3 = a1;
    *(a3 + 8) = a2;
    sub_1CA0EBE94(v10, a3 + 16);
  }

  return result;
}

uint64_t sub_1CA147664@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433778);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11[-v5];
  sub_1CA19B408();
  v7 = sub_1CA19B758();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_1CA132B60(v6, &qword_1EC433778);
    v10 = 0;
  }

  else
  {
    MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
    *&v11[-16] = a1;
    v10 = sub_1CA19B738();
    result = (*(*(v7 - 8) + 8))(v6, v7);
  }

  *a2 = v10;
  return result;
}

void sub_1CA1477E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v26 = a1;
  v10 = sub_1CA19B5C8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CA19B4D8();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a3);
  (*(v11 + 16))(v13, a4, v10);
  v18 = DynamicMarkdownText.Artwork.init(deserializing:using:)(v16, v13);
  if (v5)
  {

    v21 = 0;
    a2 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v22 = v18;
    v24 = v20;
    v23 = v19 & 1;

    v21 = v26;
  }

  *a5 = v21;
  a5[1] = a2;
  a5[2] = v22;
  a5[3] = v23;
  a5[4] = v24;
}

uint64_t get_enum_tag_for_layout_string_5JetUI15CustomTextStyle_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CA147A0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1CA147A4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DynamicMarkdownText.LineBreakStrategy(_BYTE *result, unsigned int a2, unsigned int a3)
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
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CA147BE4()
{
  result = qword_1EC433AC8;
  if (!qword_1EC433AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433AC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_19()
{
  result = v2;
  *(v0 + 32) = *(v1 + 8);
  return result;
}

UIFont_optional __swiftcall DynamicPlainText.font(compatibleWith:)(UITraitCollection compatibleWith)
{
  sub_1CA1465F8(v1 + 40, v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_2(v5, v6);
    v2 = sub_1CA19B098();
    __swift_destroy_boxed_opaque_existential_2(v5);
  }

  else
  {
    sub_1CA147D08(v5);
    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1CA147D08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DynamicPlainText.accessibilityText.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void *DynamicPlainText.color.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t DynamicPlainText.maximumLineCount.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t DynamicPlainText.text.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

double DynamicPlainText.init(text:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 72) = 0;
  result = 0.0;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *a3 = 5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 5;
  *(a3 + 32) = 0;
  *(a3 + 80) = 1281;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  *(a3 + 120) = a1;
  *(a3 + 128) = a2;
  return result;
}

void DynamicPlainText.init(accessibilityAlignment:accessibilityText:alignment:color:customTextStyle:landscapeAlignment:maximumLineCount:preferredLineCount:text:)(uint64_t a1@<X8>, char a2@<W0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>, uint64_t a6@<X4>, uint64_t a7@<X5>, char a8@<W6>, uint64_t a9@<X7>)
{
  v9 = *(a7 + 16);
  *(a1 + 40) = *a7;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 56) = v9;
  *(a1 + 72) = *(a7 + 32);
  *(a1 + 80) = 1;
  *(a1 + 81) = a8;
  *(a1 + 88) = a9;
  OUTLINED_FUNCTION_0_25(a1);
}

void DynamicPlainText.init(accessibilityAlignment:accessibilityText:alignment:color:customTextStyle:maximumLineCount:preferredLineCount:text:)(uint64_t a1@<X8>, char a2@<W0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  v8 = *(a7 + 16);
  *(a1 + 40) = *a7;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 56) = v8;
  *(a1 + 72) = *(a7 + 32);
  *(a1 + 80) = 1281;
  *(a1 + 88) = a8;
  OUTLINED_FUNCTION_0_25(a1);
}

void *sub_1CA147F4C()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1CA147F9C()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t DynamicPlainText.init(deserializing:using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1CA19B4D8();
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ColorFactory();
  v7 = swift_allocObject();
  type metadata accessor for DynamicFontFactory();
  inited = swift_initStackObject();
  sub_1CA0FC68C();
  if (v2)
  {

    v8 = 5;
  }

  v39[0] = v8;
  v40 = sub_1CA161FD8();
  v41 = v9;
  v31 = v9;
  sub_1CA0FC68C();
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v32 = v7;
  *(&v29 - 2) = v7;
  *(&v29 - 1) = a1;
  v55 = a1;
  v30 = sub_1CA0FEE40();
  v43 = v30;
  sub_1CA19B4E8();
  if (sub_1CA19B498())
  {
    v11 = sub_1CA19BFA8();
    sub_1CA12C890();
    v12 = swift_allocError();
    *v13 = 1953394534;
    v13[1] = 0xE400000000000000;
    v13[2] = &type metadata for DynamicPlainText;
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69AB690], v11);
    swift_willThrow();
    v14 = OUTLINED_FUNCTION_1_25();
    (type metadata for DynamicPlainText.Kind)(v14);

    v38 = 0;
    v37 = 0u;
    v36 = 0u;
  }

  else
  {
    DynamicFontFactory.font(deserializing:using:)(v6, v55, v35);
    v17 = OUTLINED_FUNCTION_1_25();
    (type metadata for DynamicPlainText.Kind)(v17);
    sub_1CA144A80(v35, &v36);
  }

  v44 = v36;
  v45 = v37;
  v46 = v38;
  sub_1CA0FC7E4(0x74616D726F66, 0xE600000000000000, &type metadata for DynamicPlainText, v18, v19, v20, v21, v22);
  v47 = v15 & 1;
  OUTLINED_FUNCTION_4_14();
  sub_1CA0FC68C();
  v48 = v16;
  v49 = sub_1CA161EA4();
  v50 = 0;
  OUTLINED_FUNCTION_4_14();
  v51 = sub_1CA161EA4();
  v52 = 0;
  v23 = sub_1CA161FD8();
  v25 = v24;

  v26 = OUTLINED_FUNCTION_2_20();
  (type metadata for DynamicPlainText.Kind)(v26);
  v53 = v23;
  v54 = v25;
  sub_1CA1449C8(v39, v29);
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v27 + 8))(v55);
  return sub_1CA14468C(v39);
}

uint64_t sub_1CA14860C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 128);
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

uint64_t sub_1CA14864C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_25(uint64_t a1@<X8>)
{
  *(a1 + 96) = v5;
  *(a1 + 104) = v4;
  *(a1 + 112) = v3 & 1;
  *(a1 + 120) = v2;
  *(a1 + 128) = v1;
}

AppleMediaServicesUIDynamic::DynamicTextAlignment_optional __swiftcall DynamicTextAlignment.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1CA19CA48();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t DynamicTextAlignment.rawValue.getter(char a1)
{
  result = 1952867692;
  switch(a1)
  {
    case 1:
      result = 0x7265746E6563;
      break;
    case 2:
      result = 0x7468676972;
      break;
    case 3:
      result = 0x656966697473756ALL;
      break;
    case 4:
      result = 0x6C61727574616ELL;
      break;
    default:
      return result;
  }

  return result;
}

AppleMediaServicesUIDynamic::DynamicTextAlignment_optional sub_1CA14881C@<W0>(Swift::String *a1@<X0>, AppleMediaServicesUIDynamic::DynamicTextAlignment_optional *a2@<X8>)
{
  result.value = DynamicTextAlignment.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1CA14884C@<X0>(uint64_t *a1@<X8>)
{
  result = DynamicTextAlignment.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

AppleMediaServicesUIDynamic::DynamicTextFormat_optional __swiftcall DynamicTextFormat.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1CA19CA48();

  if (v1 == 1)
  {
    v2.value = AppleMediaServicesUIDynamic_DynamicTextFormat_plain;
  }

  else
  {
    v2.value = AppleMediaServicesUIDynamic_DynamicTextFormat_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t DynamicTextFormat.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E69616C70;
  }

  else
  {
    return 0x6E776F646B72616DLL;
  }
}

unint64_t sub_1CA148904()
{
  result = qword_1EC433AD0;
  if (!qword_1EC433AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433AD0);
  }

  return result;
}

unint64_t sub_1CA148968()
{
  result = qword_1EC433AD8;
  if (!qword_1EC433AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433AD8);
  }

  return result;
}

AppleMediaServicesUIDynamic::DynamicTextFormat_optional sub_1CA1489D4@<W0>(Swift::String *a1@<X0>, AppleMediaServicesUIDynamic::DynamicTextFormat_optional *a2@<X8>)
{
  result.value = DynamicTextFormat.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1CA148A04@<X0>(uint64_t *a1@<X8>)
{
  result = DynamicTextFormat.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DynamicTextAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DynamicTextFormat(_BYTE *result, unsigned int a2, unsigned int a3)
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

void DynamicTextFactory.dynamicText(deserializing:using:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a2;
  v39 = a3;
  v5 = sub_1CA19B5C8();
  OUTLINED_FUNCTION_1_0();
  v37 = v6;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v13 = sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v36 - v20;
  v22 = v40;
  sub_1CA0FC7E4(0x74616D726F66, 0xE600000000000000, *v3, v23, v24, v25, v26, v27);
  if (!v22)
  {
    v40 = v12;
    v29 = *(v15 + 16);
    v30 = (v37 + 16);
    if (v28)
    {
      v29(v19, a1, v13);
      (*v30)(v10, v38, v5);
      v31 = v39;
      v39[3] = &type metadata for DynamicPlainText;
      v31[4] = &protocol witness table for DynamicPlainText;
      v32 = swift_allocObject();
      *v31 = v32;
      DynamicPlainText.init(deserializing:using:)(v10, v32 + 16);
    }

    else
    {
      v29(v21, a1, v13);
      v33 = v40;
      (*v30)(v40, v38, v5);
      v34 = v39;
      v39[3] = &type metadata for DynamicMarkdownText;
      v34[4] = &protocol witness table for DynamicMarkdownText;
      v35 = swift_allocObject();
      *v34 = v35;
      DynamicMarkdownText.init(deserializing:using:)(v21, v33, v35 + 16);
    }
  }
}

id sub_1CA148F10()
{
  ObjectType = swift_getObjectType();
  [swift_getObjCClassFromMetadata() setUsesSecondGenerationControls_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1CA149110(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_2();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_1(v5);
  swift_weakInit();
  OUTLINED_FUNCTION_8_4();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  sub_1CA10BC7C(a2, &v11, &unk_1EC433C80);
  if (v12)
  {
    sub_1CA0EBE94(&v11, v13);
    __swift_project_boxed_opaque_existential_2(v13, v13[3]);
    v7 = OUTLINED_FUNCTION_55();
    sub_1CA19B6F8();

    return __swift_destroy_boxed_opaque_existential_2(v13);
  }

  else
  {
    v9 = a1;

    sub_1CA10BDC8(&v11, &unk_1EC433C80);
    v10 = OUTLINED_FUNCTION_12_9();
    sub_1CA152FBC(v10);
  }
}

uint64_t sub_1CA149234()
{
  result = sub_1CA19C0E8();
  qword_1EE03C220 = result;
  return result;
}

uint64_t sub_1CA14926C()
{
  v0 = sub_1CA19B298();
  __swift_allocate_value_buffer(v0, qword_1EE03D088);
  *__swift_project_value_buffer(v0, qword_1EE03D088) = 2;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

id DynamicViewController.__allocating_init(bag:bagValue:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_0_12();
  return DynamicViewController.init(bag:bagValue:)(v2, v3);
}

id DynamicViewController.init(bag:bagValue:)(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433AE0);
  v3 = [a2 valuePromise];
  sub_1CA19BEE8();
  OUTLINED_FUNCTION_16_2();
  v9[3] = sub_1CA19B8B8();
  v9[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_2Tm(v9);
  sub_1CA19B8A8();
  sub_1CA19ADF8();
  v4 = sub_1CA19BE58();

  __swift_destroy_boxed_opaque_existential_2(v9);
  v5 = objc_allocWithZone(type metadata accessor for DynamicViewController());
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = sub_1CA149890(v6, v4);

  swift_getObjectType();
  OUTLINED_FUNCTION_59();
  return v7;
}

id DynamicViewController.__allocating_init(bag:URL:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_0_12();
  return DynamicViewController.init(bag:URL:)(v2, v3);
}

id DynamicViewController.init(bag:URL:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_5();
  v4 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_3();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433AE8);
  (*(v6 + 16))(v10, a2, v4);
  v11 = sub_1CA19BE88();
  v12 = objc_allocWithZone(type metadata accessor for DynamicViewController());
  v13 = sub_1CA149890(v2, v11);
  (*(v6 + 8))(a2, v4);
  swift_getObjectType();
  OUTLINED_FUNCTION_59();
  return v13;
}

void sub_1CA1496E8()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_account) = 0;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_anonymousMetrics) = 0;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_clientInfo) = 0;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_clientOptions) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_internalClientOptions) = 0;
  v2 = (v0 + OBJC_IVAR___AMSUIDDynamicViewController_mediaClientIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_metricsOverlay) = 0;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_automaticErrorRetry) = 1;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_child) = 0;
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_didInitialSetup) = 0;
  v3 = OBJC_IVAR___AMSUIDDynamicViewController_preferredSizingModel;
  type metadata accessor for PreferredSizing();
  *(v1 + v3) = swift_allocObject();
  *(v1 + OBJC_IVAR___AMSUIDDynamicViewController____lazy_storage___childNavigationController) = 0;
  *(v1 + OBJC_IVAR___AMSUIDDynamicViewController_objectGraph) = 0;
  v4 = OBJC_IVAR___AMSUIDDynamicViewController_preloadingCompletionPromise;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0);
  *(v1 + v4) = sub_1CA19BF08();
  *(v1 + OBJC_IVAR___AMSUIDDynamicViewController_loadState) = 0x8000000000000000;
  *(v1 + OBJC_IVAR___AMSUIDDynamicViewController_loadPromise) = 0;
  sub_1CA19C9F8();
  __break(1u);
}

id sub_1CA149890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR___AMSUIDDynamicViewController_account] = 0;
  v2[OBJC_IVAR___AMSUIDDynamicViewController_anonymousMetrics] = 0;
  *&v2[OBJC_IVAR___AMSUIDDynamicViewController_clientInfo] = 0;
  *&v2[OBJC_IVAR___AMSUIDDynamicViewController_clientOptions] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___AMSUIDDynamicViewController_internalClientOptions] = 0;
  v6 = &v2[OBJC_IVAR___AMSUIDDynamicViewController_mediaClientIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR___AMSUIDDynamicViewController_metricsOverlay] = 0;
  v2[OBJC_IVAR___AMSUIDDynamicViewController_automaticErrorRetry] = 1;
  *&v2[OBJC_IVAR___AMSUIDDynamicViewController_child] = 0;
  v2[OBJC_IVAR___AMSUIDDynamicViewController_didInitialSetup] = 0;
  v7 = OBJC_IVAR___AMSUIDDynamicViewController_preferredSizingModel;
  type metadata accessor for PreferredSizing();
  *&v3[v7] = swift_allocObject();
  *&v3[OBJC_IVAR___AMSUIDDynamicViewController____lazy_storage___childNavigationController] = 0;
  *&v3[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph] = 0;
  v8 = OBJC_IVAR___AMSUIDDynamicViewController_preloadingCompletionPromise;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0);
  *&v3[v8] = sub_1CA19BF08();
  *&v3[OBJC_IVAR___AMSUIDDynamicViewController_loadState] = 0x8000000000000000;
  *&v3[OBJC_IVAR___AMSUIDDynamicViewController_loadPromise] = 0;
  *&v3[OBJC_IVAR___AMSUIDDynamicViewController_bag] = a1;
  *&v3[OBJC_IVAR___AMSUIDDynamicViewController_urlPromise] = a2;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for DynamicViewController();
  return objc_msgSendSuper2(&v10, sel_init);
}

id DynamicViewController.__deallocating_deinit()
{
  sub_1CA152600();
  sub_1CA150AD0();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DynamicViewController.account.getter()
{
  v1 = OBJC_IVAR___AMSUIDDynamicViewController_account;
  OUTLINED_FUNCTION_1_5();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DynamicViewController.account.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSUIDDynamicViewController_account;
  OUTLINED_FUNCTION_13();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DynamicViewController.anonymousMetrics.getter()
{
  v1 = OBJC_IVAR___AMSUIDDynamicViewController_anonymousMetrics;
  OUTLINED_FUNCTION_1_5();
  return *(v0 + v1);
}

uint64_t DynamicViewController.anonymousMetrics.setter(char a1)
{
  v3 = OBJC_IVAR___AMSUIDDynamicViewController_anonymousMetrics;
  result = OUTLINED_FUNCTION_13();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DynamicViewController.bag.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSUIDDynamicViewController_bag;
  OUTLINED_FUNCTION_13();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

void *DynamicViewController.clientInfo.getter()
{
  v1 = OBJC_IVAR___AMSUIDDynamicViewController_clientInfo;
  OUTLINED_FUNCTION_1_5();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DynamicViewController.clientInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AMSUIDDynamicViewController_clientInfo;
  OUTLINED_FUNCTION_13();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*DynamicViewController.delegate.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_45_0(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1CA153B2C;
}

uint64_t sub_1CA14A38C()
{
  OUTLINED_FUNCTION_13();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*DynamicViewController.mediaContentDelegate.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_45_0(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1CA14A448;
}

void sub_1CA14A44C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
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

id sub_1CA14A4E4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    sub_1CA19C008();
    OUTLINED_FUNCTION_55();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

void sub_1CA14A57C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = sub_1CA19C018();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

uint64_t DynamicViewController.mediaClientIdentifier.getter()
{
  OUTLINED_FUNCTION_4_5();

  return OUTLINED_FUNCTION_12_9();
}

uint64_t DynamicViewController.mediaClientIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___AMSUIDDynamicViewController_mediaClientIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1CA14A86C()
{
  result = [v0 navigationController];
  if (!result)
  {

    return sub_1CA14A8B4();
  }

  return result;
}

id sub_1CA14A8B4()
{
  v1 = OBJC_IVAR___AMSUIDDynamicViewController____lazy_storage___childNavigationController;
  v2 = *(v0 + OBJC_IVAR___AMSUIDDynamicViewController____lazy_storage___childNavigationController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AMSUIDDynamicViewController____lazy_storage___childNavigationController);
  }

  else
  {
    v4 = sub_1CA14A914();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1CA14A914()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
  v1 = [v0 navigationBar];
  v2 = [v0 navigationBar];
  v3 = [v2 standardAppearance];

  [v1 setStandardAppearance_];
  return v0;
}

BOOL sub_1CA14A9C0()
{
  if (*(v0 + OBJC_IVAR___AMSUIDDynamicViewController_objectGraph))
  {
    type metadata accessor for DelegateController();
    OUTLINED_FUNCTION_16_2();
    sub_1CA19B7D8();
    OUTLINED_FUNCTION_29_2();

    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_60();
    v1 = DelegateController.shouldDismiss()();
  }

  else
  {
    return 1;
  }

  return v1;
}

id sub_1CA14AA4C()
{
  *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_loadPromise) = sub_1CA14C2E0();

  v1 = [objc_allocWithZone(MEMORY[0x1E698CA48]) init];
  OUTLINED_FUNCTION_14_2();
  *(swift_allocObject() + 16) = v1;
  OUTLINED_FUNCTION_14_2();
  *(swift_allocObject() + 16) = v1;
  v2 = sub_1CA0F2110(0, &qword_1EE03C230);
  v3 = v1;
  v4 = sub_1CA19C598();
  v6[3] = v2;
  v6[4] = MEMORY[0x1E69AB720];
  v6[0] = v4;
  sub_1CA19BE68();

  __swift_destroy_boxed_opaque_existential_2(v6);
  return v3;
}

void sub_1CA14AB90(uint64_t a1, void *a2)
{
  v3 = sub_1CA19AD18();
  [a2 finishWithError_];
}

uint64_t sub_1CA14AC2C()
{
  if (*(v0 + OBJC_IVAR___AMSUIDDynamicViewController_objectGraph))
  {
    type metadata accessor for DelegateController();
    OUTLINED_FUNCTION_16_2();
    sub_1CA19B7D8();
    OUTLINED_FUNCTION_29_2();

    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_60();
    sub_1CA19B3E8();
  }

  return result;
}

void DynamicViewController.dismiss(animated:completion:)(char a1, void *a2, uint64_t a3)
{
  if (sub_1CA14A9C0())
  {
    if (a2)
    {
      v8[4] = a2;
      v8[5] = a3;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 1107296256;
      v8[2] = sub_1CA0F4068;
      v8[3] = &block_descriptor_11;
      a2 = _Block_copy(v8);
    }

    v7 = type metadata accessor for DynamicViewController();
    v9.receiver = v3;
    v9.super_class = v7;
    objc_msgSendSuper2(&v9, sel_dismissViewControllerAnimated_completion_, a1 & 1, a2);
    _Block_release(a2);
  }
}

id DynamicViewController.navigationItem.getter()
{
  if (sub_1CA1334C4())
  {
    v1 = sub_1CA14A86C();
    v2 = [v1 navigationItem];
LABEL_3:
    v3 = v2;

    return v3;
  }

  v5 = [v0 parentViewController];
  if (v5)
  {
    v1 = v5;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v2 = [v1 navigationItem];
      goto LABEL_3;
    }
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for DynamicViewController();
  v6 = objc_msgSendSuper2(&v7, sel_navigationItem);

  return v6;
}

void *DynamicViewController.title.getter()
{
  v1 = [v0 parentViewController];
  if (!v1)
  {
    v7.receiver = v0;
    v7.super_class = type metadata accessor for DynamicViewController();
    v5 = objc_msgSendSuper2(&v7, sel_title);
    if (v5)
    {
      v2 = v5;
      sub_1CA19C118();
      OUTLINED_FUNCTION_41_1();
      goto LABEL_6;
    }

    return 0;
  }

  v2 = v1;
  v3 = [v1 title];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  sub_1CA19C118();
  OUTLINED_FUNCTION_41_1();

LABEL_6:
  return v0;
}

void sub_1CA14B108(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1CA19C118();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

void DynamicViewController.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = [v2 parentViewController];
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      OUTLINED_FUNCTION_53();
      v7 = sub_1CA19C0E8();
    }

    else
    {
      v7 = 0;
    }

    [v6 setTitle_];
  }

  else
  {
    if (a2)
    {
      OUTLINED_FUNCTION_53();
      sub_1CA19C0E8();
      OUTLINED_FUNCTION_29_2();
    }

    else
    {
      v3 = 0;
    }

    v8.receiver = v2;
    v8.super_class = type metadata accessor for DynamicViewController();
    objc_msgSendSuper2(&v8, sel_setTitle_, v3);
  }
}

Swift::Void __swiftcall DynamicViewController.loadView()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DynamicViewController();
  objc_msgSendSuper2(&v4, sel_loadView);
  v1 = [v0 view];
  v2 = [objc_opt_self() ams_defaultPlatformBackgroundColor];
  [v1 setBackgroundColor_];

  v3 = [v0 view];
  sub_1CA153684(0x616E79442E534D41, 0xEB0000000063696DLL, v3);
}

void sub_1CA14B4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, ValueMetadata *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_57();
  a25 = v27;
  a26 = v29;
  v30 = v26;
  v31 = *&v26[OBJC_IVAR___AMSUIDDynamicViewController_loadPromise];
  if (!v31)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v36 = sub_1CA19AFF8();
    __swift_project_value_buffer(v36, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    OUTLINED_FUNCTION_40_1();
    v37 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v37);
    OUTLINED_FUNCTION_4_8();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    a13 = type metadata accessor for DynamicViewController();
    a10 = v26;
    v38 = v26;
    v39 = AMSLogKey();
    if (v39)
    {
      v40 = v39;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&a10);
    sub_1CA19AF18();
    sub_1CA19AFB8();
LABEL_14:

    goto LABEL_26;
  }

  v32 = OBJC_IVAR___AMSUIDDynamicViewController_didInitialSetup;
  if ((v26[OBJC_IVAR___AMSUIDDynamicViewController_didInitialSetup] & 1) == 0)
  {
    v33 = v28;

    if (v33)
    {
      sub_1CA14C0BC();
    }

    v34 = OBJC_IVAR___AMSUIDDynamicViewController_loadState;
    v35 = *&v30[OBJC_IVAR___AMSUIDDynamicViewController_loadState] >> 62;
    if (!v35)
    {
      OUTLINED_FUNCTION_14_2();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_14_2();
      *(swift_allocObject() + 16) = v30;
      v41 = sub_1CA0F2110(0, &qword_1EE03C230);

      v42 = v30;
      v43 = sub_1CA19C598();
      a13 = v41;
      a14 = MEMORY[0x1E69AB720];
      a10 = v43;
      sub_1CA19BE68();

      __swift_destroy_boxed_opaque_existential_2(&a10);
      goto LABEL_25;
    }

    if (v35 != 1)
    {
      if (qword_1EE03B230 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      v44 = sub_1CA19AFF8();
      __swift_project_value_buffer(v44, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      OUTLINED_FUNCTION_28_3();
      v45 = sub_1CA19AF88();
      OUTLINED_FUNCTION_7_3(v45);
      OUTLINED_FUNCTION_2_8();
      v46 = OUTLINED_FUNCTION_46();
      OUTLINED_FUNCTION_24_4(v46, xmmword_1CA1A0930);
      a13 = type metadata accessor for DynamicViewController();
      a10 = v30;
      v47 = v30;
      v48 = AMSLogKey();
      if (v48)
      {
        v49 = v48;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(&a10);
      v56 = *&v30[v34];
      a13 = &type metadata for DynamicViewController.LoadState;
      a10 = v56;

      sub_1CA19AF38();
      sub_1CA10BDC8(&a10, &qword_1EC433830);
      sub_1CA19AF18();
      sub_1CA19AFC8();

      goto LABEL_25;
    }

    if (*&v30[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph])
    {

      sub_1CA14BDE4();

LABEL_25:
      sub_1CA14CBF4(v31);

      v30[v32] = 1;
      goto LABEL_26;
    }

    v50 = qword_1EE03B230;

    if (v50 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v51 = sub_1CA19AFF8();
    __swift_project_value_buffer(v51, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    OUTLINED_FUNCTION_10_5();
    v52 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v52);
    OUTLINED_FUNCTION_4_8();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    a13 = type metadata accessor for DynamicViewController();
    a10 = v30;
    v53 = v30;
    v54 = AMSLogKey();
    if (v54)
    {
      v55 = v54;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&a10);
    sub_1CA19AF18();
    sub_1CA19AFB8();

    goto LABEL_14;
  }

LABEL_26:
  OUTLINED_FUNCTION_56();
}

void sub_1CA14BACC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1CA14BDE4();
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v2 = sub_1CA19AFF8();
    __swift_project_value_buffer(v2, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0C20;
    sub_1CA19AF18();
    sub_1CA19AFC8();
  }
}

uint64_t sub_1CA14BC38(uint64_t a1, void *a2)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v8[3] = type metadata accessor for DynamicViewController();
  v8[0] = a2;
  v4 = a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v8);
  sub_1CA19AF18();
  sub_1CA19AFB8();
}

void sub_1CA14BDE4()
{
  OUTLINED_FUNCTION_16_2();
  type metadata accessor for NavigationControllerList();
  OUTLINED_FUNCTION_40_1();
  sub_1CA19B7D8();
  sub_1CA19BE18();

  v0 = sub_1CA14A86C();
  sub_1CA16DE94(v0);
}

Swift::Void __swiftcall DynamicViewController.viewWillLayoutSubviews()()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for DynamicViewController();
  objc_msgSendSuper2(&v15, sel_viewWillLayoutSubviews);
  if (!sub_1CA1334C4())
  {
    v4 = *&v0[OBJC_IVAR___AMSUIDDynamicViewController_child];
    if (!v4)
    {
      return;
    }

    v5 = [v4 view];
    if (v5)
    {
      v2 = v5;
      v3 = [v0 view];
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v1 = sub_1CA14A86C();
  v2 = [v1 view];

  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = [v0 view];
LABEL_7:
  v6 = v3;
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v2 setFrame_];
}

Swift::Void __swiftcall DynamicViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DynamicViewController();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  if (sub_1CA1334C4() && (sub_1CA150A2C() & 1) != 0)
  {
    sub_1CA152600();
    sub_1CA150B74();
    sub_1CA150BD0();
    sub_1CA14C11C();
  }
}

uint64_t sub_1CA14C084()
{
  sub_1CA14C178();
  sub_1CA14C224();
  sub_1CA150540();
  sub_1CA14C11C();
  sub_1CA14C2E0();
}

void sub_1CA14C0BC()
{
  if (sub_1CA1334C4())
  {
    v1 = sub_1CA14A86C();
    [v0 setChildViewController_];
  }
}

void sub_1CA14C11C()
{
  if (!sub_1CA1334C4())
  {
    v1 = sub_1CA14A86C();
    [v1 setTransitioningDelegate_];
  }
}

void sub_1CA14C178()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_didEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];
  [v1 addObserver:v0 selector:sel_willEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];
}

void sub_1CA14C224()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_1EE03C218 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 addObserver:v0 selector:sel_legacyPurchaseDidSucceed_ name:qword_1EE03C220 object:0 suspensionBehavior:4];
}

uint64_t sub_1CA14C2E0()
{
  v1 = OBJC_IVAR___AMSUIDDynamicViewController_loadPromise;
  v2 = *(v0 + OBJC_IVAR___AMSUIDDynamicViewController_loadPromise);
  if (!v2)
  {
    goto LABEL_4;
  }

  if (sub_1CA19BE28())
  {

LABEL_4:
    sub_1CA14D8F4();
    OUTLINED_FUNCTION_14_2();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4[3] = sub_1CA19B8B8();
    v4[4] = MEMORY[0x1E69AB218];
    __swift_allocate_boxed_opaque_existential_2Tm(v4);
    sub_1CA19B8A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433C90);
    sub_1CA10B7BC(&qword_1EE03C2D8, &qword_1EC433C90);
    v2 = sub_1CA19BEB8();

    __swift_destroy_boxed_opaque_existential_2(v4);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1CA14C444(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v4 = sub_1CA19AFF8();
    __swift_project_value_buffer(v4, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v14 = type metadata accessor for DynamicViewController();
    v13[0] = v3;
    v5 = v3;
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v13);
    sub_1CA19AF18();
    sub_1CA19AFC8();

    sub_1CA14E6D4();
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = v1;
    v14 = sub_1CA19B8B8();
    v15 = MEMORY[0x1E69AB218];
    __swift_allocate_boxed_opaque_existential_2Tm(v13);
    v11 = v5;

    sub_1CA19B8A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433838);
    v9 = sub_1CA19BE58();

    __swift_destroy_boxed_opaque_existential_2(v13);
    *&v11[OBJC_IVAR___AMSUIDDynamicViewController_loadState] = v9 | 0x4000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433C90);
    sub_1CA153804();
    swift_allocError();
    *v8 = 0;
    return sub_1CA19BE78();
  }

  return v9;
}

uint64_t sub_1CA14C754@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = sub_1CA19C158();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1CA19AFF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() devMode])
  {
    v40 = v11;
    v41 = v10;
    v38 = v4;
    sub_1CA19AFD8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v14 = *(sub_1CA19AF88() - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v39 = *(v14 + 72);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1CA1A0B80;
    v42 = v16 + v15;
    *(&v44 + 1) = type metadata accessor for DynamicViewController();
    *&v43 = a2;
    v17 = a2;
    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v43);
    sub_1CA19B4B8();
    if (*(&v44 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433588);
      if (swift_dynamicCast())
      {
        v20 = objc_opt_self();
        v21 = sub_1CA19C008();

        *&v43 = 0;
        v22 = [v20 dataWithJSONObject:v21 options:1 error:&v43];

        v23 = v43;
        if (v22)
        {
          v37 = a1;
          v24 = sub_1CA19AE18();
          v26 = v25;

          sub_1CA19C148();
          v27 = sub_1CA19C128();
          v29 = v28;
          sub_1CA0F76A8(v24, v26);
          if (v29)
          {
            *(&v44 + 1) = MEMORY[0x1E69E6158];
            *&v43 = v27;
            *(&v43 + 1) = v29;
            a1 = v37;
LABEL_11:
            v30 = v41;
            sub_1CA19AF38();
            sub_1CA10BDC8(&v43, &qword_1EC433830);
            sub_1CA19AF98();

            (*(v40 + 8))(v13, v30);
            goto LABEL_12;
          }

          a1 = v37;
        }

        else
        {
          v34 = v23;
          v35 = sub_1CA19AD28();

          swift_willThrow();
        }
      }
    }

    else
    {
      sub_1CA10BDC8(&v43, &qword_1EC433830);
    }

    v43 = 0u;
    v44 = 0u;
    goto LABEL_11;
  }

LABEL_12:
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433838) + 48);
  v32 = sub_1CA19B4D8();
  (*(*(v32 - 8) + 16))(a4, a1, v32);
  *(a4 + v31) = a3;
}

uint64_t sub_1CA14D094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433838);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18[-1] - v3;
  v5 = sub_1CA19B4D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA10BC7C(a1, v4, &unk_1EC433838);

  (*(v6 + 32))(v8, v4, v5);
  sub_1CA10BC7C(a1, v4, &unk_1EC433838);
  v9 = *(v6 + 8);
  v9(v4, v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v17 = sub_1CA150D98();

    swift_allocObject();
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    v13 = swift_unknownObjectWeakLoadStrong();

    swift_unknownObjectWeakInit();
    v14 = sub_1CA0F2110(0, &qword_1EE03C230);

    v15 = sub_1CA19C598();
    v18[3] = v14;
    v18[4] = MEMORY[0x1E69AB720];
    v18[0] = v15;
    sub_1CA19BE68();

    v9(v8, v5);
    __swift_destroy_boxed_opaque_existential_2(v18);
  }

  else
  {

    return (v9)(v8, v5);
  }
}

uint64_t sub_1CA14D3B0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    v3 = 0;
    memset(v2, 0, sizeof(v2));
    sub_1CA14D448(v2);

    return sub_1CA10BDC8(v2, &unk_1EC433C80);
  }

  return result;
}

uint64_t sub_1CA14D448(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_30_1(v3);
  swift_weakInit();
  OUTLINED_FUNCTION_14_2();
  *(swift_allocObject() + 16) = v1;
  sub_1CA10BC7C(a1, &v5, &unk_1EC433C80);
  if (v6)
  {
    sub_1CA0EBE94(&v5, v7);
    __swift_project_boxed_opaque_existential_2(v7, v7[3]);
    sub_1CA19B6F8();

    return __swift_destroy_boxed_opaque_existential_2(v7);
  }

  else
  {

    sub_1CA10BDC8(&v5, &unk_1EC433C80);
    sub_1CA153018();
  }
}

uint64_t sub_1CA14D564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_2();
  v6 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_16_0();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  sub_1CA10BC7C(a3, &v17, &unk_1EC433C80);
  if (v18)
  {
    sub_1CA0EBE94(&v17, v19);
    __swift_project_boxed_opaque_existential_2(v19, v19[3]);
    v8 = OUTLINED_FUNCTION_12_9();
    sub_1CA0F763C(v8, v9);
    sub_1CA19B6F8();

    return __swift_destroy_boxed_opaque_existential_2(v19);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_12_9();
    sub_1CA0F763C(v11, v12);

    v13 = OUTLINED_FUNCTION_12_9();
    sub_1CA0F763C(v13, v14);
    sub_1CA10BDC8(&v17, &unk_1EC433C80);
    sub_1CA153078();

    v15 = OUTLINED_FUNCTION_12_9();
    return sub_1CA0F76A8(v15, v16);
  }
}

uint64_t sub_1CA14D6C4(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;

    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_1CA149110(a1, v4);

    return sub_1CA10BDC8(v4, &unk_1EC433C80);
  }

  return result;
}

uint64_t sub_1CA14D794(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1CA1514FC(a1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;

    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1CA149110(a1, v6);

    return sub_1CA10BDC8(v6, &unk_1EC433C80);
  }

  return result;
}

void sub_1CA14D894()
{
  if ((sub_1CA19BE28() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      sub_1CA151CC8();
    }
  }
}

void sub_1CA14D8F4()
{
  OUTLINED_FUNCTION_19_0();
  v1 = sub_1CA19BDA8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17_4();
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v43 - v6;
  v8 = *&v0[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph];
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C60);
    v53[0] = v8;

    sub_1CA19BE88();
  }

  else
  {
    v50 = v5;
    v52 = v4;
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v51 = v7;
    v9 = sub_1CA19AFF8();
    __swift_project_value_buffer(v9, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v10 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_7_3(v10);
    OUTLINED_FUNCTION_4_8();
    *(OUTLINED_FUNCTION_34_1() + 16) = xmmword_1CA1A0B80;
    v54 = type metadata accessor for DynamicViewController();
    v53[0] = v0;
    v11 = v0;
    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v53);
    sub_1CA19AF18();
    sub_1CA19AFC8();

    OUTLINED_FUNCTION_4_5();
    swift_unknownObjectRetain();
    v14 = v51;
    sub_1CA19BD78();
    v15 = OBJC_IVAR___AMSUIDDynamicViewController_clientInfo;
    OUTLINED_FUNCTION_4_5();
    v16 = *&v11[v15];
    if (v16)
    {
      v17 = *&v11[v15];
    }

    else
    {
      v17 = [objc_opt_self() currentProcess];
    }

    v18 = &v11[OBJC_IVAR___AMSUIDDynamicViewController_mediaClientIdentifier];
    OUTLINED_FUNCTION_4_5();
    v19 = v18[1];
    if (v19)
    {
      v49 = *v18;
      v48 = v19;
    }

    else
    {
      OUTLINED_FUNCTION_20_3();
      v48 = v20;
      v49 = 0xD00000000000001CLL;
    }

    v21 = OBJC_IVAR___AMSUIDDynamicViewController_metricsOverlay;
    OUTLINED_FUNCTION_4_5();
    v22 = *&v11[v21];

    if (v22)
    {

      v23 = v16;
      v46 = sub_1CA14DFA0(v22);
    }

    else
    {
      v24 = v16;
      v46 = 0;
    }

    v25 = OBJC_IVAR___AMSUIDDynamicViewController_anonymousMetrics;
    OUTLINED_FUNCTION_4_5();
    v45 = v11[v25];
    v26 = OBJC_IVAR___AMSUIDDynamicViewController_account;
    OUTLINED_FUNCTION_4_5();
    v27 = *&v11[v26];
    v28 = v50;
    (*(v52 + 16))(v50, v14, v1);
    v29 = *&v11[OBJC_IVAR___AMSUIDDynamicViewController_urlPromise];
    v30 = v27;
    v44 = v17;

    v43 = sub_1CA14A86C();
    v31 = *&v11[OBJC_IVAR___AMSUIDDynamicViewController_preferredSizingModel];
    type metadata accessor for BridgedDestinationViewProvider();
    OUTLINED_FUNCTION_8_4();
    swift_allocObject();
    v32 = OUTLINED_FUNCTION_16_2();
    v33 = sub_1CA11514C(v32, 0);
    OUTLINED_FUNCTION_4_5();
    swift_unknownObjectWeakLoadStrong();
    v47 = v1;
    OUTLINED_FUNCTION_4_5();
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_40_1();
    type metadata accessor for ClientBootstrap();
    swift_allocObject();
    v34 = v11;

    v35 = v44;
    sub_1CA1167D0(v27, v28, v44, v49, v48, v45, v46, v29, v43, v31, v33, v11);
    sub_1CA116B44();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C60);
    v37 = sub_1CA19BF08();
    OUTLINED_FUNCTION_14_2();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v38);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_8_4();
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    *(v39 + 24) = v37;
    OUTLINED_FUNCTION_8_4();
    v40 = swift_allocObject();
    *(v40 + 16) = v34;
    *(v40 + 24) = v37;
    sub_1CA0F2110(0, &qword_1EE03C230);
    OUTLINED_FUNCTION_22_3();
    swift_retain_n();
    v41 = v34;
    v42 = sub_1CA19C598();
    v55 = MEMORY[0x1E69AB720];
    v54 = v36;
    v53[0] = v42;
    sub_1CA19BE68();

    (*(v52 + 8))(v51, v47);
    __swift_destroy_boxed_opaque_existential_2(v53);
    *&v41[OBJC_IVAR___AMSUIDDynamicViewController_loadState] = v37;
  }

  OUTLINED_FUNCTION_20_0();
}

unint64_t sub_1CA14DFA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433C08);
    v2 = sub_1CA19CA28();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1CA10BCDC(*(a1 + 48) + 40 * v10, __src);
    sub_1CA0F1200(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1CA10BCDC(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1CA0F1200(&__dst[40], v20);
    sub_1CA10BDC8(__dst, &qword_1EC433C10);
    v21 = v18;
    sub_1CA0F11E8(v20, v22);
    v11 = v21;
    sub_1CA0F11E8(v22, v23);
    sub_1CA0F11E8(v23, &v21);
    result = sub_1CA184158(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_2(v14);
      result = sub_1CA0F11E8(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1CA0F11E8(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_1CA10BDC8(__dst, &qword_1EC433C10);

  return 0;
}

void sub_1CA14E258(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v4 = sub_1CA19AFF8();
    __swift_project_value_buffer(v4, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v8[3] = type metadata accessor for DynamicViewController();
    v8[0] = v3;
    v5 = v3;
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v8);
    sub_1CA19AF18();
    sub_1CA19AFC8();

    *&v5[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph] = v1;

    v8[0] = v1;
    sub_1CA19BEC8();
  }
}

uint64_t sub_1CA14E470(uint64_t a1, void *a2)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v11 = type metadata accessor for DynamicViewController();
  v10[0] = a2;
  v4 = a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v10);
  sub_1CA19AF18();
  swift_getErrorValue();
  v11 = v9;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v10);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_2Tm);
  sub_1CA19AF38();
  sub_1CA10BDC8(v10, &qword_1EC433830);
  sub_1CA19AFB8();

  *&v4[OBJC_IVAR___AMSUIDDynamicViewController_loadState] = 0x8000000000000000;

  return sub_1CA19BEA8();
}

void sub_1CA14E6D4()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v99 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_3();
  v98 = v8 - v7;
  OUTLINED_FUNCTION_39_1();
  v100 = type metadata accessor for JSServiceRequest();
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_3();
  v101 = (v11 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v103 = v91 - v13;
  OUTLINED_FUNCTION_39_1();
  v96 = sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  v93 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17_4();
  v92 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v94 = v91 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_17_4();
  v97 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v91 - v24;
  v26 = sub_1CA19B7D8();
  sub_1CA19BE18();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v4);
  type metadata accessor for BridgedDestinationViewProvider();
  OUTLINED_FUNCTION_51();
  *(v27 - 256) = v26;
  sub_1CA19BE18();
  v28 = v112;
  v29 = DynamicViewController.clientOptions.modify();
  if (!*v30)
  {
    v29(v115, 0);
    v116 = 0u;
    v117 = 0u;
    goto LABEL_6;
  }

  v107 = 0x726574756F72;
  v108 = 0xE600000000000000;
  sub_1CA19C898();
  sub_1CA17A79C(&v116);
  sub_1CA103038(&v112);
  v29(v115, 0);
  if (!*(&v117 + 1))
  {
LABEL_6:
    sub_1CA10BDC8(&v116, &qword_1EC433830);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433C48);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_8_4();
    v31 = swift_allocObject();
    *(v31 + 16) = v112;
    swift_beginAccess();
    v32 = *(v28 + 16);
    *(v28 + 16) = sub_1CA1539A8;
    *(v28 + 24) = v31;
    sub_1CA0EBE84(v32);
  }

LABEL_7:
  v33 = sub_1CA19C038();
  v34 = OBJC_IVAR___AMSUIDDynamicViewController_internalClientOptions;
  OUTLINED_FUNCTION_4_5();
  if (*&v1[v34])
  {
    v29 = *&v1[v34];
  }

  else
  {
    sub_1CA19C038();
    OUTLINED_FUNCTION_40_1();
  }

  v105 = v28;

  swift_isUniquelyReferenced_nonNull_native();
  *&v112 = v33;
  OUTLINED_FUNCTION_3_18();
  sub_1CA15339C(v29, v35, 0, v36, v37);
  v38 = v112;
  v39 = OBJC_IVAR___AMSUIDDynamicViewController_clientOptions;
  OUTLINED_FUNCTION_4_5();
  if (*&v1[v39])
  {
    v28 = *&v1[v39];
  }

  else
  {
    sub_1CA19C038();
    OUTLINED_FUNCTION_10_5();
  }

  swift_isUniquelyReferenced_nonNull_native();
  *&v112 = v38;
  OUTLINED_FUNCTION_3_18();
  sub_1CA15339C(v28, v40, 0, v41, v42);
  v43 = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433C30);
  sub_1CA19B7C8();
  v44 = BYTE8(v112);
  v45 = &unk_1EE03B000;
  v106 = v25;
  v104 = v4;
  v102 = 0;
  if (BYTE8(v112) == 255)
  {
    goto LABEL_16;
  }

  v46 = v112;
  if (BYTE8(v112))
  {
    v109 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433480);
    swift_willThrowTypedImpl();
    sub_1CA118CF4(v46, v44);
LABEL_16:
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v47 = sub_1CA19AFF8();
    __swift_project_value_buffer(v47, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v48 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_7_3(v48);
    OUTLINED_FUNCTION_4_8();
    *(OUTLINED_FUNCTION_34_1() + 16) = xmmword_1CA1A0B80;
    v113 = type metadata accessor for DynamicViewController();
    *&v112 = v1;
    v49 = v1;
    v50 = AMSLogKey();
    if (v50)
    {
      v51 = v50;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v112);
    sub_1CA19AF18();
    sub_1CA19AFA8();

    v4 = v104;
    v56 = v106;
    v57 = v102;
    goto LABEL_32;
  }

  v91[2] = v3;
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v95 = v43;
  v52 = sub_1CA19AFF8();
  v91[1] = __swift_project_value_buffer(v52, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v53 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_7_3(v53);
  OUTLINED_FUNCTION_4_8();
  *(OUTLINED_FUNCTION_34_1() + 16) = xmmword_1CA1A0B80;
  v113 = type metadata accessor for DynamicViewController();
  *&v112 = v1;
  v54 = v1;
  v55 = AMSLogKey();
  if (v55)
  {
    v45 = v55;
    v56 = sub_1CA19C118();
  }

  else
  {
    v56 = 0;
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v112);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  v58 = [v46 URL];
  if (v58)
  {
    v45 = v58;
    v59 = v97;
    sub_1CA19ADA8();

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
    v59 = v97;
  }

  v57 = v102;
  __swift_storeEnumTagSinglePayload(v59, v60, 1, v4);
  sub_1CA1538CC(v59, v56);
  if (!sub_1CA15393C(v46))
  {
    sub_1CA19C038();
  }

  OUTLINED_FUNCTION_55();
  swift_isUniquelyReferenced_nonNull_native();
  *&v112 = v45;
  OUTLINED_FUNCTION_3_18();
  sub_1CA15339C(v59, v61, 0, v62, v63);
  sub_1CA118CF4(v46, v44);
  v43 = v112;
LABEL_32:
  IsRunningInternalBuild = deviceIsRunningInternalBuild();
  v65 = v103;
  if (!IsRunningInternalBuild)
  {
LABEL_41:
    if (__swift_getEnumTagSinglePayload(v56, 1, v4))
    {
      v75 = 0;
      v57 = 0;
    }

    else
    {
      v76 = v99;
      v77 = v98;
      (*(v99 + 16))(v98, v56, v4);
      v75 = v77;
      sub_1CA19ADE8();
      OUTLINED_FUNCTION_41_1();
      (*(v76 + 8))(v77, v4);
    }

    v78 = v101;
    sub_1CA10BC7C(v56, v101 + *(v100 + 24), &qword_1EC433170);
    *v78 = v75;
    v78[1] = v57;
    v78[2] = v43;
    OUTLINED_FUNCTION_51();
    sub_1CA19BE18();
    JSService.perform(request:)();
    OUTLINED_FUNCTION_14_2();
    *(swift_allocObject() + 16) = v1;
    OUTLINED_FUNCTION_14_2();
    *(swift_allocObject() + 16) = v1;
    v79 = sub_1CA0F2110(0, &qword_1EE03C230);
    v80 = v1;
    v81 = sub_1CA19C598();
    v113 = v79;
    v114 = MEMORY[0x1E69AB720];
    *&v112 = v81;
    sub_1CA19BE68();

    sub_1CA153870(v78);
    __swift_destroy_boxed_opaque_existential_2(&v112);
    goto LABEL_45;
  }

  sub_1CA14F63C(v43, v103);
  if (v57)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v95 = v43;
    v66 = sub_1CA19AFF8();
    v103 = __swift_project_value_buffer(v66, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v67 = OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_7_3(v67);
    OUTLINED_FUNCTION_4_8();
    *(OUTLINED_FUNCTION_34_1() + 16) = xmmword_1CA1A0930;
    v113 = type metadata accessor for DynamicViewController();
    *&v112 = v1;
    v68 = v1;
    v69 = AMSLogKey();
    if (v69)
    {
      v70 = v69;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v112);
    sub_1CA19AF18();
    swift_getErrorValue();
    v72 = v110;
    v73 = v111;
    v113 = v111;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v112);
    (*(*(v73 - 8) + 16))(boxed_opaque_existential_2Tm, v72, v73);
    sub_1CA19AF38();
    sub_1CA10BDC8(&v112, &qword_1EC433830);
    sub_1CA19AFB8();

    v56 = v106;
    v4 = v104;
    v43 = v95;
    goto LABEL_41;
  }

  v71 = v96;
  if (__swift_getEnumTagSinglePayload(v65, 1, v96) == 1)
  {
    sub_1CA10BDC8(v65, &unk_1EC433C20);
    goto LABEL_41;
  }

  v82 = v93;
  (*(v93 + 32))(v94, v65, v71);
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v83 = sub_1CA19AFF8();
  __swift_project_value_buffer(v83, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v84 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_7_3(v84);
  OUTLINED_FUNCTION_2_8();
  v85 = OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_24_4(v85, xmmword_1CA1A0B80);
  v113 = type metadata accessor for DynamicViewController();
  *&v112 = v1;
  v86 = v1;
  v87 = AMSLogKey();
  if (v87)
  {
    v88 = v87;
    sub_1CA19C118();
    OUTLINED_FUNCTION_37_1();
  }

  else
  {
    OUTLINED_FUNCTION_36_1();
  }

  OUTLINED_FUNCTION_47();

  __swift_destroy_boxed_opaque_existential_2(&v112);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C38);
  (*(v82 + 16))(v92, v94, v96);
  sub_1CA19BE88();

  v89 = OUTLINED_FUNCTION_53();
  v90(v89);
LABEL_45:
  sub_1CA10BDC8(v56, &qword_1EC433170);
  OUTLINED_FUNCTION_20_0();
}

void *sub_1CA14F5EC(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, void *, uint64_t *))
{
  v7[1] = a2;
  v7[0] = a1;
  v8 = a3;
  result = a4(&v6, v7, &v8);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1CA14F63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  sub_1CA19C898();
  sub_1CA181E38(v14, a1);
  sub_1CA103038(v14);
  if (!v16)
  {
    sub_1CA10BDC8(v15, &qword_1EC433830);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433588);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v10 = sub_1CA19B4D8();
    v11 = a2;
    v12 = 1;
    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  }

  v5 = objc_opt_self();
  v6 = sub_1CA19C008();

  v14[0] = 0;
  v7 = [v5 dataWithJSONObject:v6 options:0 error:{v14, 0x7473654465676170, 0xEF6E6F6974616E69}];

  v8 = v14[0];
  if (!v7)
  {
    v13 = v8;
    sub_1CA19AD28();

    return swift_willThrow();
  }

  sub_1CA19AE18();

  OUTLINED_FUNCTION_50();
  result = sub_1CA19B428();
  if (!v2)
  {
    v10 = sub_1CA19B4D8();
    v11 = a2;
    v12 = 0;
    return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
  }

  return result;
}

uint64_t sub_1CA14F850(uint64_t a1, void *a2)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v8[3] = type metadata accessor for DynamicViewController();
  v8[0] = a2;
  v4 = a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v8);
  sub_1CA19AF18();
  sub_1CA19AFC8();
}

uint64_t sub_1CA14F9FC(uint64_t a1, void *a2)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v11 = type metadata accessor for DynamicViewController();
  v10[0] = a2;
  v4 = a2;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v10);
  sub_1CA19AF18();
  swift_getErrorValue();
  v11 = v9;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v10);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_2Tm);
  sub_1CA19AF38();
  sub_1CA10BDC8(v10, &qword_1EC433830);
  sub_1CA19AFB8();
}

uint64_t sub_1CA14FC70(uint64_t a1)
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v4 = sub_1CA19AFF8();
  v89 = __swift_project_value_buffer(v4, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  OUTLINED_FUNCTION_40_1();
  v5 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v5);
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v87 = type metadata accessor for DynamicViewController();
  v96 = v87;
  v95[0] = v1;
  v6 = v1;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v95);
  sub_1CA19AF18();
  v9 = sub_1CA19AC38();
  v96 = v9;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v95);
  v11 = (*(*(v9 - 8) + 16))(boxed_opaque_existential_2Tm, a1, v9);
  OUTLINED_FUNCTION_52(v11, v12, v13, v14, v15, v16, v17, v18, v74, v77, v80, v83, v2, v87, v89, v91, v93, v95[0]);
  sub_1CA19AF38();
  sub_1CA10BDC8(v95, &qword_1EC433830);
  sub_1CA19AFC8();

  if (!*&v6[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph])
  {
    v37 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_16_5(v37, xmmword_1CA1A0B80);
    v38 = AMSLogKey();
    if (v38)
    {
      v46 = v38;
      sub_1CA19C118();
    }

    OUTLINED_FUNCTION_52(v38, v39, v40, v41, v42, v43, v44, v45, v75, v78, v81, v84, v86, v88, v90, v92, v94, v95[0]);
    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v95);
    OUTLINED_FUNCTION_43_0();
    sub_1CA19AFC8();
  }

  v19 = sub_1CA19AC28();
  if (!v19)
  {
    *v97 = 0u;
    v98 = 0u;
    goto LABEL_23;
  }

  v20 = v19;
  OUTLINED_FUNCTION_20_3();
  v92 = 0xD000000000000014;
  v94 = v21;
  sub_1CA19C898();
  sub_1CA181E38(v95, v20);

  sub_1CA103038(v95);
  if (!*(&v98 + 1))
  {
LABEL_23:
    sub_1CA10BDC8(v97, &qword_1EC433830);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v47 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_16_5(v47, xmmword_1CA1A0B80);
    v48 = AMSLogKey();
    if (v48)
    {
      v49 = v48;
      sub_1CA19C118();
      OUTLINED_FUNCTION_37_1();
    }

    else
    {
      OUTLINED_FUNCTION_36_1();
    }

    OUTLINED_FUNCTION_52(v50, v51, v52, v53, v54, v55, v56, v57, v75, v78, v81, v84, v86, v88, v90, v92, v94, v95[0]);
    OUTLINED_FUNCTION_47();

    __swift_destroy_boxed_opaque_existential_2(v95);
    sub_1CA19AF18();
    sub_1CA19AFB8();
  }

  v22 = v95[1];
  v82 = v95[0];
  type metadata accessor for DelegateController();
  OUTLINED_FUNCTION_10_5();
  sub_1CA19B7D8();
  sub_1CA19BE18();
  v85 = v95[0];
  v23 = *(v95[0] + 24);
  if (v23 == 1 || (v24 = v23, !v23))
  {

    v59 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_16_5(v59, xmmword_1CA1A0B80);
    v60 = AMSLogKey();
    if (v60)
    {
      v61 = v60;
      sub_1CA19C118();
      OUTLINED_FUNCTION_37_1();
    }

    else
    {
      OUTLINED_FUNCTION_36_1();
    }

    OUTLINED_FUNCTION_52(v62, v63, v64, v65, v66, v67, v68, v69, v75, v78, v82, v85, v86, v88, v90, 0xD000000000000014, v94, v95[0]);
    OUTLINED_FUNCTION_47();

    __swift_destroy_boxed_opaque_existential_2(v95);
    OUTLINED_FUNCTION_43_0();
    sub_1CA19AFC8();
  }

  v79 = v23;
  v25 = sub_1CA19AD18();
  v26 = [v25 userInfo];

  v27 = sub_1CA19C018();
  sub_1CA181D40(0x6573616863727570, 0xE800000000000000, v27);

  if (!v96)
  {

    sub_1CA10BDC8(v95, &qword_1EC433830);
LABEL_36:
    v70 = OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_44_0(v70, xmmword_1CA1A0B80);
    v71 = AMSLogKey();
    if (v71)
    {
      v72 = v71;
      sub_1CA19C118();
      OUTLINED_FUNCTION_37_1();
    }

    else
    {
      OUTLINED_FUNCTION_36_1();
    }

    OUTLINED_FUNCTION_47();

    __swift_destroy_boxed_opaque_existential_2(v95);
    sub_1CA19AF18();
    sub_1CA19AFC8();
    goto LABEL_40;
  }

  sub_1CA0F2110(0, &qword_1EC433C18);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_36;
  }

  v76 = v97[0];
  v28 = [v97[0] clientCorrelationKey];
  v29 = sub_1CA19C118();
  v31 = v30;

  if (v82 == v29 && v22 == v31)
  {

    goto LABEL_42;
  }

  v33 = sub_1CA19CAF8();

  if (v33)
  {
LABEL_42:
    v73 = [objc_allocWithZone(MEMORY[0x1E698CAF0]) init];
    DelegateController.didFinishPurchase(withResult:error:)();
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  v34 = OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_44_0(v34, xmmword_1CA1A0B80);
  v35 = AMSLogKey();
  if (v35)
  {
    v36 = v35;
    sub_1CA19C118();
    OUTLINED_FUNCTION_37_1();
  }

  else
  {
    OUTLINED_FUNCTION_36_1();
  }

  OUTLINED_FUNCTION_47();

  __swift_destroy_boxed_opaque_existential_2(v95);
  sub_1CA19AF18();
  sub_1CA19AFB8();

LABEL_40:
}

void sub_1CA150540()
{
  OUTLINED_FUNCTION_19_0();
  v1 = sub_1CA19AFF8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  v7 = v6 - v5;
  v8 = OBJC_IVAR___AMSUIDDynamicViewController_metricsOverlay;
  OUTLINED_FUNCTION_4_5();
  if (*&v0[v8])
  {

    v30 = sub_1CA14DFA0(v9);
  }

  else
  {
    v30 = 0;
  }

  v10 = OBJC_IVAR___AMSUIDDynamicViewController_anonymousMetrics;
  OUTLINED_FUNCTION_4_5();
  v29 = v0[v10];
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v11 = __swift_project_value_buffer(v1, qword_1EE040B90);
  (*(v3 + 16))(v7, v11, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  OUTLINED_FUNCTION_28_3();
  v12 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v12);
  OUTLINED_FUNCTION_2_8();
  v13 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_24_4(v13, xmmword_1CA1A4B10);
  ObjectType = type metadata accessor for DynamicViewController();
  v32 = v0;
  v14 = v0;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v32);
  sub_1CA19AF18();
  sub_1CA19AF18();
  v17 = OBJC_IVAR___AMSUIDDynamicViewController_account;
  OUTLINED_FUNCTION_4_5();
  v18 = *&v14[v17];
  v31 = v1;
  if (v18)
  {
    v19 = sub_1CA0F2110(0, &qword_1EE03C130);
  }

  else
  {
    v19 = 0;
    v33 = 0;
    v34 = 0;
  }

  v32 = v18;
  ObjectType = v19;
  v20 = v18;
  sub_1CA19AF78();
  OUTLINED_FUNCTION_26_2();
  sub_1CA19AF18();
  v21 = OBJC_IVAR___AMSUIDDynamicViewController_bag;
  OUTLINED_FUNCTION_4_5();
  v22 = *&v14[v21];
  ObjectType = swift_getObjectType();
  v32 = v22;
  swift_unknownObjectRetain();
  sub_1CA19AF38();
  OUTLINED_FUNCTION_26_2();
  sub_1CA19AF18();
  v23 = OBJC_IVAR___AMSUIDDynamicViewController_clientInfo;
  OUTLINED_FUNCTION_4_5();
  v24 = *&v14[v23];
  if (v24)
  {
    v25 = sub_1CA0F2110(0, &qword_1EE03C268);
  }

  else
  {
    v25 = 0;
    v33 = 0;
    v34 = 0;
  }

  v32 = v24;
  ObjectType = v25;
  v26 = v24;
  sub_1CA19AF38();
  OUTLINED_FUNCTION_26_2();
  sub_1CA19AF18();
  LOBYTE(v32) = v29;
  ObjectType = &type metadata for MetricsContext;
  v33 = v30;
  sub_1CA19AF78();
  OUTLINED_FUNCTION_26_2();
  sub_1CA19AF18();
  OUTLINED_FUNCTION_4_5();
  Strong = swift_unknownObjectWeakLoadStrong();
  v28 = Strong;
  if (Strong)
  {
    Strong = swift_getObjectType();
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v32 = v28;
  ObjectType = Strong;
  sub_1CA19AF38();
  sub_1CA10BDC8(&v32, &qword_1EC433830);
  sub_1CA19AFC8();

  (*(v3 + 8))(v7, v31);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA150A2C()
{
  if ([v0 isBeingDismissed] & 1) != 0 || (objc_msgSend(v0, sel_isMovingFromParentViewController))
  {
    return 1;
  }

  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    if ([v1 isBeingDismissed])
    {

      return 1;
    }

    v3 = [v2 isMovingFromParentViewController];

    if (v3)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1CA150AD0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];
}

void sub_1CA150B74()
{
  if (!sub_1CA1334C4())
  {
    v0 = sub_1CA14A86C();
    [v0 setTransitioningDelegate_];
  }
}

uint64_t sub_1CA150BD0()
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = sub_1CA19AFF8();
  __swift_project_value_buffer(v1, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v2 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_7_3(v2);
  OUTLINED_FUNCTION_4_8();
  *(OUTLINED_FUNCTION_34_1() + 16) = xmmword_1CA1A0B80;
  v7[3] = type metadata accessor for DynamicViewController();
  v7[0] = v0;
  v3 = v0;
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_23_4();

  __swift_destroy_boxed_opaque_existential_2(v7);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  if (*&v3[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph])
  {
    type metadata accessor for DelegateController();
    OUTLINED_FUNCTION_16_2();
    sub_1CA19B7D8();
    OUTLINED_FUNCTION_29_2();

    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_60();
    sub_1CA137A44();
  }

  return result;
}

uint64_t sub_1CA150D98()
{
  v1 = v0;
  sub_1CA1355D8();
  sub_1CA19BE08();
  v2 = OUTLINED_FUNCTION_12_9();
  v4 = sub_1CA192E7C(v2, v3);
  if (!v4)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v17 = sub_1CA19AFF8();
    __swift_project_value_buffer(v17, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    OUTLINED_FUNCTION_28_3();
    v18 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v18);
    OUTLINED_FUNCTION_2_8();
    v19 = OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_24_4(v19, xmmword_1CA1A0B80);
    OUTLINED_FUNCTION_20_3();
    v45 = MEMORY[0x1E69E6158];
    v42 = 0xD000000000000015;
    v43 = v20;
    sub_1CA19AF38();
    sub_1CA10BDC8(&v42, &qword_1EC433830);
    sub_1CA19AF18();
    sub_1CA19AFA8();

    sub_1CA153804();
    OUTLINED_FUNCTION_49();
    v21 = swift_allocError();
    *v22 = 1;
    sub_1CA1514FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0);
    OUTLINED_FUNCTION_49();
    swift_allocError();
    *v23 = 1;
    v11 = sub_1CA19BE78();
    goto LABEL_10;
  }

  v5 = v4;
  v41 = v4;
  v6 = sub_1CA0F2110(0, &unk_1EE03C240);
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433820);
  if (!swift_dynamicCast())
  {

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1CA10BDC8(&v37, &qword_1EC433828);
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v24 = sub_1CA19AFF8();
    __swift_project_value_buffer(v24, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v25 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v25);
    OUTLINED_FUNCTION_4_8();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    OUTLINED_FUNCTION_20_3();
    v45 = MEMORY[0x1E69E6158];
    v42 = 0xD000000000000015;
    v43 = v26;
    sub_1CA19AF38();
    sub_1CA10BDC8(&v42, &qword_1EC433830);
    sub_1CA19AF18();
    v45 = v6;
    v42 = v7;
    v27 = v7;
    sub_1CA19AF38();
    sub_1CA10BDC8(&v42, &qword_1EC433830);
    sub_1CA19AFA8();

    sub_1CA151668(v27, v28, v29, v30, v31, v32, v33, v34, v36, v1, v37, *(&v37 + 1), v38, *(&v38 + 1), v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC432CC0);
    v11 = sub_1CA19BE88();

LABEL_10:

    return v11;
  }

  sub_1CA0EBE94(&v37, &v42);
  v8 = __swift_project_boxed_opaque_existential_2(&v42, v45);
  v9 = OUTLINED_FUNCTION_50();
  v11 = v10(v9);
  OUTLINED_FUNCTION_14_2();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_30_1(v12);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_4();
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v8;
  v14 = sub_1CA0F2110(0, &qword_1EE03C230);
  v15 = v7;
  v16 = sub_1CA19C598();
  *(&v38 + 1) = v14;
  v39 = MEMORY[0x1E69AB720];
  *&v37 = v16;
  sub_1CA19BE98();

  __swift_destroy_boxed_opaque_existential_2(&v37);
  __swift_destroy_boxed_opaque_existential_2(&v42);
  return v11;
}

uint64_t sub_1CA1515F8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    *(result + OBJC_IVAR___AMSUIDDynamicViewController_automaticErrorRetry) = 0;
    sub_1CA14C2E0();
    sub_1CA14CBF4();
  }

  return result;
}

void sub_1CA151668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_57();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  sub_1CA151B78();
  if (sub_1CA1334C4())
  {
    v31 = sub_1CA14A86C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
    OUTLINED_FUNCTION_16_0();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1CA1A0C40;
    *(v32 + 32) = v30;
    sub_1CA0F2110(0, &unk_1EE03C240);
    v33 = v30;
    v34 = sub_1CA19C2A8();

    [v31 setViewControllers:v34 animated:0];

    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v35 = sub_1CA19AFF8();
    __swift_project_value_buffer(v35, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    OUTLINED_FUNCTION_28_3();
    v36 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v36);
    OUTLINED_FUNCTION_2_8();
    v37 = OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_24_4(v37, xmmword_1CA1A0B80);
    a14 = type metadata accessor for DynamicViewController();
    a11 = v26;
    v26;
    v38 = AMSLogKey();
    if (v38)
    {
      v39 = v38;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&a11);
    a11 = 0;
    a12 = 0xE000000000000000;
    sub_1CA19C8F8();

    OUTLINED_FUNCTION_20_3();
    a11 = 0xD000000000000012;
    a12 = v45;
    v46 = sub_1CA14A86C();
    v47 = [v46 viewControllers];

    v48 = sub_1CA19C2B8();
    sub_1CA0F04EC(v48);

    v49 = sub_1CA19CAB8();
    MEMORY[0x1CCA99820](v49);

    MEMORY[0x1CCA99820](2112093, 0xE300000000000000);
    v50 = sub_1CA14A86C();
    v51 = [v50 viewControllers];

    sub_1CA19C2B8();
    v52 = OUTLINED_FUNCTION_12_9();
    v53 = MEMORY[0x1CCA99930](v52);
    v55 = v54;

    MEMORY[0x1CCA99820](v53, v55);

    a14 = MEMORY[0x1E69E6158];
    sub_1CA19AF38();
    sub_1CA10BDC8(&a11, &qword_1EC433830);
    sub_1CA19AFA8();
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v40 = sub_1CA19AFF8();
    __swift_project_value_buffer(v40, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    OUTLINED_FUNCTION_28_3();
    v41 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v41);
    OUTLINED_FUNCTION_4_8();
    *(OUTLINED_FUNCTION_46() + 16) = xmmword_1CA1A0B80;
    a14 = type metadata accessor for DynamicViewController();
    a11 = v26;
    v42 = v26;
    v43 = AMSLogKey();
    if (v43)
    {
      v44 = v43;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&a11);
    OUTLINED_FUNCTION_20_3();
    a14 = MEMORY[0x1E69E6158];
    a11 = 0xD000000000000021;
    a12 = v56;
    sub_1CA19AF38();
    sub_1CA10BDC8(&a11, &qword_1EC433830);
    sub_1CA19AFA8();

    v57 = OBJC_IVAR___AMSUIDDynamicViewController_child;
    if (*&v42[OBJC_IVAR___AMSUIDDynamicViewController_child])
    {
      [v42 unsetChildViewController_];
    }

    [v42 setChildViewController_];
    v58 = *&v42[v57];
    *&v42[v57] = v30;
    v59 = v30;
  }

  OUTLINED_FUNCTION_56();
}

void sub_1CA151B78()
{
  v1 = sub_1CA14A86C();
  v2 = [v1 viewControllers];

  sub_1CA0F2110(0, &unk_1EE03C240);
  v3 = sub_1CA19C2B8();

  sub_1CA0F04EC(v3);
  OUTLINED_FUNCTION_29_2();

  if (v2 < 2 || (v4 = [v0 navigationItem], v5 = objc_msgSend(v4, sel_hidesBackButton), v4, v5))
  {
    v6 = [v0 navigationItem];
    v7 = MEMORY[0x1E69E7CC0];
    v8 = OUTLINED_FUNCTION_0_12();
    sub_1CA1535F8(v8, v9, v10);

    v11 = [v0 navigationItem];
    sub_1CA1535F8(v7, v11, &selRef_setRightBarButtonItems_);
  }
}

void sub_1CA151CC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v44 - v3;
  v5 = sub_1CA19B018();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v11 = v10 - v9;
  v12 = sub_1CA14A86C();
  v13 = [v12 viewControllers];

  sub_1CA0F2110(0, &unk_1EE03C240);
  v14 = sub_1CA19C2B8();

  v15 = sub_1CA0F04EC(v14);

  if (v15 < 2 || (v16 = [v1 navigationItem], v17 = objc_msgSend(v16, sel_hidesBackButton), v16, v17))
  {
    v18 = [v1 navigationItem];
    sub_1CA1535F8(MEMORY[0x1E69E7CC0], v18, &selRef_setRightBarButtonItems_);

    if (_UISolariumEnabled() && ((*(v7 + 104))(v11, *MEMORY[0x1E698C478], v5), v19 = sub_1CA19B008(), v20 = OUTLINED_FUNCTION_49(), v21(v20), (v19 & 1) != 0))
    {
      v45 = type metadata accessor for DynamicViewController();
      v44 = v1;
      objc_allocWithZone(MEMORY[0x1E69DC708]);
      v22 = v1;
      sub_1CA1530E0();
      v24 = v23;
      v25 = [v22 navigationController];
      if (v25 && (v26 = v25, v27 = [v25 navigationBar], v26, v28 = objc_msgSend(v27, sel_backItem), v27, v28) && (v28, v29 = objc_msgSend(v22, sel_traitCollection), v30 = objc_msgSend(v29, sel_userInterfaceIdiom), v29, v30 != 5))
      {
        v31 = [v22 navigationItem];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
        OUTLINED_FUNCTION_16_0();
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1CA1A0C40;
        *(v32 + 32) = v24;
        v33 = &selRef_setLeftBarButtonItems_;
      }

      else
      {
        v31 = [v22 navigationItem];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
        OUTLINED_FUNCTION_16_0();
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1CA1A0C40;
        *(v32 + 32) = v24;
        v33 = &selRef_setRightBarButtonItems_;
      }

      sub_1CA1535F8(v32, v31, v33);
    }

    else
    {
      if (*&v1[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph])
      {
        sub_1CA19BDA8();
        OUTLINED_FUNCTION_28_3();
        sub_1CA19B7D8();

        sub_1CA19BE18();

        v34 = v4;
        v35 = 0;
        v36 = v5;
      }

      else
      {
        v36 = sub_1CA19BDA8();
        v34 = v4;
        v35 = 1;
      }

      __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
      v37 = [v1 navigationItem];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
      OUTLINED_FUNCTION_16_0();
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1CA1A0C40;
      type metadata accessor for Localizations();
      sub_1CA166B54(0x415F4C45434E4143, 0xED00004E4F495443, v4);
      v45 = type metadata accessor for DynamicViewController();
      v44 = v1;
      objc_allocWithZone(MEMORY[0x1E69DC708]);
      v39 = v1;
      sub_1CA153220();
      *(v38 + 32) = v40;
      v41 = OUTLINED_FUNCTION_49();
      sub_1CA1535F8(v41, v42, v43);

      sub_1CA10BDC8(v4, &qword_1EC433D90);
    }
  }
}

uint64_t sub_1CA1521DC()
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = sub_1CA19AFF8();
  __swift_project_value_buffer(v1, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v2 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_7_3(v2);
  OUTLINED_FUNCTION_2_8();
  v3 = OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_24_4(v3, xmmword_1CA1A0B80);
  v8[3] = type metadata accessor for DynamicViewController();
  v8[0] = v0;
  v4 = v0;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_23_4();

  __swift_destroy_boxed_opaque_existential_2(v8);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  if (*&v4[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph])
  {
    sub_1CA19B998();
    OUTLINED_FUNCTION_16_2();
    sub_1CA19B7D8();

    sub_1CA19BE18();
    sub_1CA19B978();
    sub_1CA152600();
  }

  return result;
}

uint64_t sub_1CA1523F8()
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = sub_1CA19AFF8();
  __swift_project_value_buffer(v1, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v2 = OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_7_3(v2);
  OUTLINED_FUNCTION_4_8();
  *(OUTLINED_FUNCTION_34_1() + 16) = xmmword_1CA1A0B80;
  v7[3] = type metadata accessor for DynamicViewController();
  v7[0] = v0;
  v3 = v0;
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    sub_1CA19C118();
  }

  OUTLINED_FUNCTION_23_4();

  __swift_destroy_boxed_opaque_existential_2(v7);
  sub_1CA19AF18();
  sub_1CA19AFC8();

  if (*&v3[OBJC_IVAR___AMSUIDDynamicViewController_objectGraph])
  {
    sub_1CA19B998();
    OUTLINED_FUNCTION_16_2();
    sub_1CA19B7D8();
    OUTLINED_FUNCTION_29_2();

    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_60();
    sub_1CA19B968();
  }

  return result;
}

void sub_1CA152600()
{
  sub_1CA19B868();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_3();
  if (*(v0 + OBJC_IVAR___AMSUIDDynamicViewController_objectGraph))
  {
    sub_1CA19B7D8();
    OUTLINED_FUNCTION_22_3();

    sub_1CA19BE18();
    sub_1CA19B858();
    __swift_project_boxed_opaque_existential_2(v4, v4[3]);
    OUTLINED_FUNCTION_50();
    sub_1CA19B9C8();
    OUTLINED_FUNCTION_22_3();

    v2 = OUTLINED_FUNCTION_0_12();
    v3(v2);
    __swift_destroy_boxed_opaque_existential_2(v4);
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static DynamicViewController.setupPageRenderPresenter(with:bag:)()
{
  OUTLINED_FUNCTION_19_0();
  v19 = *MEMORY[0x1E69E9840];
  sub_1CA19B868();
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1_3();
  v1 = sub_1CA19BD68();
  v2 = OUTLINED_FUNCTION_58();
  v3 = [v1 BOOLForKey_];

  swift_unknownObjectRelease();
  v16 = 0;
  v4 = [v3 valueWithError_];

  if (v4)
  {
    v5 = v16;
    v6 = [v4 BOOLValue];
  }

  else
  {
    v7 = v16;
    v8 = sub_1CA19AD28();

    swift_willThrow();
    v6 = 0;
  }

  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v9 = sub_1CA19AFF8();
  __swift_project_value_buffer(v9, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  OUTLINED_FUNCTION_16_2();
  v10 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v10);
  OUTLINED_FUNCTION_4_8();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v11 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  type metadata accessor for DynamicViewController();
  sub_1CA19AF48();

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1CA19C8F8();

  OUTLINED_FUNCTION_20_3();
  v16 = 0xD00000000000001CLL;
  v17 = v12;
  if (v6)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v6)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1CCA99820](v13, v14);

  v18 = MEMORY[0x1E69E6158];
  sub_1CA19AF38();
  sub_1CA10BDC8(&v16, &qword_1EC433830);
  sub_1CA19AF98();

  OUTLINED_FUNCTION_48();
  if (v15)
  {

    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_41_1();
    sub_1CA19B7D8();
    sub_1CA19BE18();
    sub_1CA19BCA8();
    swift_allocObject();
    OUTLINED_FUNCTION_14_6();
    sub_1CA19BC98();
    OUTLINED_FUNCTION_55();
  }

  OUTLINED_FUNCTION_20_0();
}

void static DynamicViewController.setupPageRenderPresenterWrapper(with:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_57();
  a25 = v26;
  a26 = v27;
  a14 = *MEMORY[0x1E69E9840];
  v28 = sub_1CA19BD68();
  v29 = OUTLINED_FUNCTION_58();
  v30 = [v28 BOOLForKey_];

  swift_unknownObjectRelease();
  a10 = 0;
  v31 = [v30 valueWithError_];

  if (v31)
  {
    v32 = a10;
    v33 = [v31 BOOLValue];
  }

  else
  {
    v34 = a10;
    v35 = sub_1CA19AD28();

    swift_willThrow();
    v33 = 0;
  }

  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v36 = sub_1CA19AFF8();
  __swift_project_value_buffer(v36, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  OUTLINED_FUNCTION_16_2();
  v37 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v37);
  OUTLINED_FUNCTION_4_8();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v38 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  type metadata accessor for DynamicViewController();
  sub_1CA19AF48();

  a10 = 0;
  a11 = 0xE000000000000000;
  sub_1CA19C8F8();

  OUTLINED_FUNCTION_20_3();
  a10 = 0xD00000000000001CLL;
  a11 = v39;
  if (v33)
  {
    v40 = 1702195828;
  }

  else
  {
    v40 = 0x65736C6166;
  }

  if (v33)
  {
    v41 = 0xE400000000000000;
  }

  else
  {
    v41 = 0xE500000000000000;
  }

  MEMORY[0x1CCA99820](v40, v41);

  a13 = MEMORY[0x1E69E6158];
  sub_1CA19AF38();
  sub_1CA10BDC8(&a10, &qword_1EC433830);
  sub_1CA19AF98();

  OUTLINED_FUNCTION_48();
  if (v42)
  {

    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_41_1();
    type metadata accessor for PageRenderMetricsPresenterWrapper();
    OUTLINED_FUNCTION_8_4();
    swift_allocObject();
    OUTLINED_FUNCTION_14_6();
    sub_1CA172074();
  }

  OUTLINED_FUNCTION_56();
}

id DynamicViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DynamicViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    sub_1CA19C0E8();
    OUTLINED_FUNCTION_22_3();
  }

  else
  {
    v3 = 0;
  }

  v6 = [objc_allocWithZone(v4) initWithNibName:v3 bundle:a3];

  return v6;
}

uint64_t DynamicViewController.animationController(forDismissed:)()
{
  if (!sub_1CA1334C4())
  {
    sub_1CA152600();
    sub_1CA150B74();
    sub_1CA150BD0();
    sub_1CA14C11C();
  }

  return 0;
}

uint64_t sub_1CA152FBC(uint64_t a1)
{
  OUTLINED_FUNCTION_30_1(a1);
  OUTLINED_FUNCTION_4_5();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((sub_1CA19BE28() & 1) == 0)
    {
      sub_1CA19BEA8();
    }
  }

  return result;
}

uint64_t sub_1CA153018()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((sub_1CA19BE28() & 1) == 0)
    {
      sub_1CA19BEC8();
    }
  }

  return result;
}

uint64_t sub_1CA153078()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((sub_1CA19BE28() & 1) == 0)
    {
      sub_1CA19BEC8();
    }
  }

  return result;
}

void sub_1CA1530E0()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v5 = v4;
  v6 = v1[3];
  if (v6)
  {
    v7 = v1;
    v8 = __swift_project_boxed_opaque_existential_2(v1, v1[3]);
    v9 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_1_3();
    v12 = v11 - v10;
    (*(v9 + 16))(v11 - v10);
    v13 = sub_1CA19CAE8();
    (*(v9 + 8))(v12, v6);
    __swift_destroy_boxed_opaque_existential_2(v7);
  }

  else
  {
    v13 = 0;
  }

  [v0 initWithBarButtonSystemItem:v5 target:v13 action:v3];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA153220()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (v8)
  {
    v9 = sub_1CA19C0E8();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 24);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_50();
    v13 = __swift_project_boxed_opaque_existential_2(v11, v12);
    v14 = *(v10 - 8);
    MEMORY[0x1EEE9AC00](v13);
    OUTLINED_FUNCTION_1_3();
    v17 = v16 - v15;
    (*(v14 + 16))(v16 - v15);
    v18 = sub_1CA19CAE8();
    (*(v14 + 8))(v17, v10);
    __swift_destroy_boxed_opaque_existential_2(v5);
  }

  else
  {
    v18 = 0;
  }

  [v1 initWithTitle:v9 style:v7 target:v18 action:v3];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA15339C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1CA177408(v36);
  v34[2] = v36[0];
  v34[3] = v36[1];
  v34[4] = v36[2];
  v35 = v37;

  while (1)
  {
    sub_1CA17727C(&v31);
    if (!*(&v32 + 1))
    {
      sub_1CA0F11F8();
    }

    v28 = v31;
    v29 = v32;
    v30 = v33;
    sub_1CA0F11E8(v34, v27);
    v7 = *a5;
    v9 = sub_1CA184118();
    v10 = v7[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (v7[3] >= v12)
    {
      if (a4)
      {
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C50);
        sub_1CA19C9B8();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1CA17621C(v12, a4 & 1);
      v14 = sub_1CA184118();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v9 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_1CA0F1200(v27, v26);
        __swift_destroy_boxed_opaque_existential_2(v27);
        sub_1CA103038(&v28);
        v17 = (v16[7] + 32 * v9);
        __swift_destroy_boxed_opaque_existential_2(v17);
        sub_1CA0F11E8(v26, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    v19 = v18[6] + 40 * v9;
    v20 = v28;
    v21 = v29;
    *(v19 + 32) = v30;
    *v19 = v20;
    *(v19 + 16) = v21;
    sub_1CA0F11E8(v27, (v18[7] + 32 * v9));
    v22 = v18[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v18[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1CA19CB58();
  __break(1u);
  return result;
}

void sub_1CA1535F8(uint64_t a1, void *a2, SEL *a3)
{
  sub_1CA0F2110(0, &qword_1EE03C260);
  v5 = sub_1CA19C2A8();

  [a2 *a3];
}

void sub_1CA153684(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CA19C0E8();

  [a3 setAccessibilityIdentifier_];
}

unint64_t get_enum_tag_for_layout_string_27AppleMediaServicesUIDynamic21DynamicViewControllerC9LoadStateO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1CA153710(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1CA153764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1CA1537C4(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t sub_1CA153804()
{
  result = qword_1EC433C00;
  if (!qword_1EC433C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433C00);
  }

  return result;
}

uint64_t sub_1CA153870(uint64_t a1)
{
  v2 = type metadata accessor for JSServiceRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA1538CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA15393C(void *a1)
{
  v1 = [a1 clientData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA19C018();

  return v3;
}

uint64_t objectdestroy_32Tm()
{

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_45Tm(void (*a1)(void))
{

  a1(*(v1 + 24));
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

id OUTLINED_FUNCTION_16_5(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return sub_1CA19AF58();
}

uint64_t OUTLINED_FUNCTION_26_2()
{

  return sub_1CA10BDC8(v1 - 168, v0);
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return sub_1CA19B608();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return sub_1CA19AF88();
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return sub_1CA19AF18();
}

id OUTLINED_FUNCTION_44_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_46()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_47()
{

  return sub_1CA19AF58();
}

uint64_t OUTLINED_FUNCTION_58()
{

  return sub_1CA19C0E8();
}

uint64_t OUTLINED_FUNCTION_59()
{

  return swift_deallocPartialClassInstance();
}

uint64_t OUTLINED_FUNCTION_60()
{

  return sub_1CA19BE18();
}

unint64_t DynamicViewControllerPresentationError.failureReason.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t DynamicViewControllerPresentationError.hashValue.getter(char a1)
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](a1 & 1);
  return sub_1CA19CC18();
}

uint64_t sub_1CA153F74()
{
  v1 = *v0;
  sub_1CA19CBD8();
  DynamicViewControllerPresentationError.hash(into:)(v3, v1);
  return sub_1CA19CC18();
}

unint64_t sub_1CA153FBC()
{
  result = qword_1EC433C98;
  if (!qword_1EC433C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433C98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DynamicViewControllerPresentationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1CA1540F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!deviceIsRunningInternalBuild())
  {
    return 0;
  }

  if (a2)
  {
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_1CA19C8F8();

    strcpy(v36, "INTERNAL ONLY\n");
    HIBYTE(v36[1]) = -18;
    MEMORY[0x1CCA99820](a1, a2);
  }

  else
  {
    (*(v7 + 16))(v9, v3, a3);
    v11 = sub_1CA19CAC8();
    if (v11)
    {
      v12 = v11;
      (*(v7 + 8))(v9, a3);
    }

    else
    {
      v12 = swift_allocError();
      (*(v7 + 32))(v13, v9, a3);
    }

    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v15 = v12;
      v16 = sub_1CA19AD18();

      v17 = [v16 localizedFailureReason];
      if (!v17)
      {
        v17 = [v16 description];
      }

      v18 = sub_1CA19C118();
      v20 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA16B3F4();
        v14 = v30;
      }

      v21 = *(v14 + 16);
      if (v21 >= *(v14 + 24) >> 1)
      {
        sub_1CA16B3F4();
        v14 = v31;
      }

      *(v14 + 16) = v21 + 1;
      v22 = v14 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v20;
      v23 = [v16 userInfo];
      v24 = sub_1CA19C018();

      v25 = sub_1CA19C118();
      if (!*(v24 + 16))
      {

        goto LABEL_21;
      }

      v27 = sub_1CA184158(v25, v26);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        break;
      }

      sub_1CA0F1200(*(v24 + 56) + 32 * v27, v36);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433480);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      v12 = v35[1];
    }

LABEL_21:

LABEL_22:
    v36[0] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433CA0);
    sub_1CA154530();
    v32 = sub_1CA19C078();
    v34 = v33;

    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_1CA19C8F8();

    strcpy(v36, "INTERNAL ONLY\n");
    HIBYTE(v36[1]) = -18;
    MEMORY[0x1CCA99820](v32, v34);
  }

  return v36[0];
}

unint64_t sub_1CA154530()
{
  result = qword_1EE03B208;
  if (!qword_1EE03B208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC433CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03B208);
  }

  return result;
}

uint64_t sub_1CA154594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1CA161FD8();
  if (v3)
  {

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = sub_1CA161FD8();
  v12 = v11;
  v13 = sub_1CA161FD8();
  v15 = v14;
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v16 + 8))(a2);
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_4_6();
  result = (*(v17 + 8))(a1);
  *a3 = v8;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v12;
  a3[4] = v13;
  a3[5] = v15;
  return result;
}

double sub_1CA154724@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1CA154594(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
    result = *&v8;
    a3[2] = v8;
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

uint64_t sub_1CA15477C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1CA1547D0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1CA154850@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_objectGraph))
  {
    v3 = sub_1CA19BDA8();
    sub_1CA19B7D8();

    sub_1CA19BE18();

    v4 = a1;
    v5 = 0;
    v6 = v3;
  }

  else
  {
    v6 = sub_1CA19BDA8();
    v4 = a1;
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
}

id sub_1CA154904()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView;
  v2 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView);
LABEL_5:
    v8 = v2;
    return v3;
  }

  v4 = v0;
  v5 = objc_allocWithZone(MEMORY[0x1E69DD418]);
  result = sub_1CA1576D0(0.0, 0.0, 0.0, 0.0, 0, 0xE000000000000000, 0);
  if (result)
  {
    v7 = *(v0 + v1);
    *(v4 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1CA15499C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v5[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_automaticRetry] = 1;
  v12 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_airplaneModeInquiry;
  *&v6[v12] = [objc_allocWithZone(AMSUIDAirplaneModeInquiry) init];
  v13 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_cellularDataInquiry;
  *&v6[v13] = [objc_allocWithZone(AMSUIDCellularDataInquiry) init];
  v14 = &v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry];
  v15 = type metadata accessor for NWPathNetworkInquiry();
  v16 = sub_1CA16F030();
  v14[3] = v15;
  v14[4] = &off_1F49D1A98;
  *v14 = v16;
  v17 = &v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkObservation];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  *&v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView] = 0;
  *&v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_error] = a1;
  *&v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_objectGraph] = a2;
  v18 = &v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_retryAction];
  *v18 = a4;
  v18[1] = a5;
  v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_isNavigationControllerEmbedded] = a3;
  v19 = a1;

  sub_1CA10FCD4(a4);
  v20 = type metadata accessor for ErrorViewController();
  v32.receiver = v6;
  v32.super_class = v20;
  v21 = objc_msgSendSuper2(&v32, sel_initWithNibName_bundle_, 0, 0);
  v22 = qword_1EE03B230;
  v23 = v21;
  if (v22 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v24 = sub_1CA19AFF8();
  __swift_project_value_buffer(v24, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v31 = v20;
  v30[0] = v23;
  v25 = AMSLogKey();
  if (v25)
  {
    v26 = v25;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v30);
  sub_1CA19AF18();
  swift_getErrorValue();
  v27 = sub_1CA19CB88();
  v31 = MEMORY[0x1E69E6158];
  v30[0] = v27;
  v30[1] = v28;
  sub_1CA19AF38();
  sub_1CA132B60(v30, &qword_1EC433830);
  sub_1CA19AFB8();

  sub_1CA153B20(a4);

  return v23;
}

void sub_1CA154CF4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_automaticRetry) = 1;
  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_airplaneModeInquiry;
  *(v1 + v2) = [objc_allocWithZone(AMSUIDAirplaneModeInquiry) init];
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_cellularDataInquiry;
  *(v1 + v3) = [objc_allocWithZone(AMSUIDCellularDataInquiry) init];
  v4 = (v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry);
  v5 = type metadata accessor for NWPathNetworkInquiry();
  v6 = sub_1CA16F030();
  v4[3] = v5;
  v4[4] = &off_1F49D1A98;
  *v4 = v6;
  v7 = v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkObservation;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView) = 0;
  sub_1CA19C9F8();
  __break(1u);
}

id sub_1CA154E1C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkObservation;
  swift_beginAccess();
  if (*(v2 + 24))
  {
    sub_1CA0F2ACC(v2, v7);
    __swift_project_boxed_opaque_existential_2(v7, v7[3]);
    v3 = OUTLINED_FUNCTION_6_12();
    v4(v3);
    __swift_destroy_boxed_opaque_existential_2(v7);
  }

  v5 = type metadata accessor for ErrorViewController();
  v8.receiver = v1;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id sub_1CA154FEC()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass() || *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_isNavigationControllerEmbedded) == 1)
    {
      v3 = [v2 navigationItem];

      return v3;
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for ErrorViewController();
  v5 = objc_msgSendSuper2(&v6, sel_navigationItem);

  return v5;
}

void sub_1CA1550C4()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v0;
  v3 = sub_1CA19B2E8();
  OUTLINED_FUNCTION_1_0();
  v63 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_3();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  OUTLINED_FUNCTION_12_4(v9);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_13();
  v11 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v62 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_3();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90);
  OUTLINED_FUNCTION_12_4(v17);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  v21 = type metadata accessor for ErrorViewController();
  v69.receiver = v0;
  v69.super_class = v21;
  objc_msgSendSuper2(&v69, sel_loadView);
  v22 = [v0 view];
  v23 = [objc_opt_self() ams_defaultPlatformBackgroundColor];
  [v22 setBackgroundColor_];

  sub_1CA154850(v20);
  v24 = sub_1CA19BDA8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v24) != 1)
  {
    v61 = v3;
    v29 = 0x6C6172656E6567;
    v60 = sub_1CA19BD68();
    (*(*(v24 - 8) + 8))(v20, v24);
    v30 = *&v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_error];
    v64[0] = v30;
    v31 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433480);
    if (swift_dynamicCast())
    {
      if (v68)
      {
        v33 = 0xE700000000000000;
      }

      else
      {
        v29 = 0x61727473746F6F62;
        v33 = 0xE900000000000070;
      }
    }

    else
    {
      v33 = 0xE700000000000000;
    }

    v34 = sub_1CA19C118();
    v36 = v35;
    v37 = objc_allocWithZone(MEMORY[0x1E698CA38]);
    v38 = sub_1CA15776C(v34, v36, v29, v33, v30);
    if (*&v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_objectGraph])
    {
      sub_1CA19B7C8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v11);
      v40 = v61;
      if (EnumTagSinglePayload != 1)
      {
        v41 = v62;
        (*(v62 + 32))(v16, v1, v11);
        sub_1CA19AD78();
        v42 = sub_1CA19C0E8();

        [v38 setUrl_];

        v43 = sub_1CA19AD78();
        v45 = sub_1CA17C1F4(0xD000000000000013, 0x80000001CA1AD420, v43, v44);

        if (*(v45 + 16))
        {

          v46 = sub_1CA19C0E8();

          [v38 setEventServiceType_];
        }

        else
        {
        }

        v47 = sub_1CA19AD78();
        v49 = sub_1CA17C1F4(0xD000000000000011, 0x80000001CA1AD440, v47, v48);

        if (*(v49 + 16))
        {

          v50 = sub_1CA19C0E8();

          [v38 setEventPlacement_];

          (*(v41 + 8))(v16, v11);
        }

        else
        {
          (*(v41 + 8))(v16, v11);
        }

        goto LABEL_22;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v1, 1, 1, v11);
      v40 = v61;
    }

    sub_1CA132B60(v1, &qword_1EC433170);
LABEL_22:
    v51 = [objc_opt_self() internalInstanceUsingBag_];
    sub_1CA0F78AC();
    v52 = v63;
    (*(v63 + 104))(v8, *MEMORY[0x1E69E7F98], v40);
    v53 = sub_1CA19C5E8();
    (*(v52 + 8))(v8, v40);
    v54 = swift_allocObject();
    *(v54 + 16) = v51;
    *(v54 + 24) = v38;
    v66 = sub_1CA157A24;
    v67 = v54;
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 1107296256;
    OUTLINED_FUNCTION_3_6();
    v64[2] = v55;
    v65 = &block_descriptor_32;
    v56 = _Block_copy(v64);
    v57 = v51;
    v58 = v38;

    AMSDispatchAsync(v53, v56);
    swift_unknownObjectRelease();
    _Block_release(v56);

    goto LABEL_23;
  }

  sub_1CA132B60(v20, &qword_1EC433D90);
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v25 = sub_1CA19AFF8();
  __swift_project_value_buffer(v25, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v65 = v21;
  v64[0] = v2;
  v26 = v2;
  v27 = AMSLogKey();
  if (v27)
  {
    v28 = v27;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v64);
  sub_1CA19AF18();
  sub_1CA19AFB8();

LABEL_23:
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA15592C()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_1CA155AAC();
  sub_1CA156F14();
}

void sub_1CA1559B0()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for ErrorViewController();
  objc_msgSendSuper2(&v11, sel_viewWillLayoutSubviews);
  v1 = sub_1CA154904();
  v2 = [v0 view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame_];
}

void sub_1CA155AAC()
{
  v1 = [v0 navigationItem];
  [v1 ams_configureWithTransparentBackground];

  sub_1CA155B08();

  sub_1CA155B7C();
}

void sub_1CA155B08()
{
  v1 = [v0 view];
  v2 = sub_1CA154904();
  [v1 addSubview_];
}

void sub_1CA155B7C()
{
  v1 = v0;
  [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_airplaneModeInquiry) setDelegate_];
  v2 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry + 24);
  v3 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry + 32);
  __swift_project_boxed_opaque_existential_2((v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry), v2);
  v4 = sub_1CA0F78AC();
  v5 = sub_1CA19C598();
  v9[3] = v4;
  v9[4] = MEMORY[0x1E69AB720];
  v9[0] = v5;
  OUTLINED_FUNCTION_14_2();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v3 + 40);

  v7(v10, v9, sub_1CA1579AC, v6, v2, v3);

  __swift_destroy_boxed_opaque_existential_2(v9);
  v8 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkObservation;
  swift_beginAccess();
  sub_1CA1579B4(v10, v1 + v8);
  swift_endAccess();
  sub_1CA15674C();
}

void sub_1CA155CC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1CA156E88();
  }
}

void sub_1CA155D1C()
{
  OUTLINED_FUNCTION_19_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90);
  OUTLINED_FUNCTION_12_4(v1);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - v3;
  v27 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_error);
  v5 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433480);
  if (swift_dynamicCast())
  {
    v6 = v22;
    v8 = v23;
    v7 = v24;
    v9 = v26;
    v17 = v21;
    if (v26)
    {
      v19 = v25;

      v18 = v9;
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 1;
  }

  type metadata accessor for Localizations();
  sub_1CA154850(v4);
  v19 = sub_1CA166B54(0xD000000000000015, 0x80000001CA1AD360, v4);
  v9 = v10;
  sub_1CA132B60(v4, &qword_1EC433D90);

  v18 = 0;
LABEL_6:
  swift_getErrorValue();
  v11 = v20;
  if (v6 == 1)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
  }

  v12 = sub_1CA1540F8(v8, v7, v11);
  v14 = v13;

  if (v6 == 1 || (, , !v6))
  {
    type metadata accessor for Localizations();
    sub_1CA154850(v4);
    v15 = sub_1CA166B54(0xD000000000000014, 0x80000001CA1AD380, v4);
    v6 = v16;
    sub_1CA132B60(v4, &qword_1EC433D90);
  }

  else
  {
    v15 = v17;
  }

  sub_1CA156348(v19, v9, v12, v14, v15, v6);

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA155FB0()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90);
  OUTLINED_FUNCTION_12_4(v4);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  OUTLINED_FUNCTION_12_4(v8);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v33 - v10;
  v12 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v33 - v20;
  sub_1CA177C14(v3, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1CA132B60(v11, &qword_1EC433170);
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v33[1] = v1;
    v25 = v3;
    v26 = *(v14 + 32);
    v26(v21, v11, v12);
    (*(v14 + 16))(v19, v21, v12);
    v27 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v28 = swift_allocObject();
    v26((v28 + v27), v19, v12);
    v3 = v25;
    type metadata accessor for Localizations();
    sub_1CA154850(v7);
    v22 = sub_1CA166B54(0x53474E4954544553, 0xEF4E4F495443415FLL, v7);
    v23 = v29;
    sub_1CA132B60(v7, &qword_1EC433D90);
    (*(v14 + 8))(v21, v12);
    v24 = sub_1CA157950;
  }

  sub_1CA154850(v7);
  v30 = sub_1CA177DD8(v7, v3);
  v32 = v31;
  sub_1CA132B60(v7, &qword_1EC433D90);
  sub_1CA156348(v30, v32, 0, 0, v22, v23);

  sub_1CA153B20(v24);
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA1562E0()
{
  v0 = objc_opt_self();
  v1 = sub_1CA19AD88();
  [v0 openStandardURL_];
}

void sub_1CA156348(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v12 = sub_1CA154904();
  v13 = sub_1CA1578B0(v12, &selRef_buttonTitle);
  if (v14)
  {
    if (!a6)
    {
LABEL_31:

      goto LABEL_32;
    }

    if (v13 == a5 && v14 == a6)
    {
    }

    else
    {
      v16 = sub_1CA19CAF8();

      if ((v16 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (a6)
  {
    goto LABEL_32;
  }

  v17 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView;
  v18 = sub_1CA1578B0(*(v6 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView), &selRef_message);
  if (!v19)
  {
    if (!a4)
    {
      goto LABEL_23;
    }

LABEL_32:
    v26 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView;
    v27 = *(v6 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController____lazy_storage___contentUnavailableView);
    OUTLINED_FUNCTION_14_2();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1CA157948;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_3_6();
    aBlock[2] = v29;
    aBlock[3] = &block_descriptor_22;
    v30 = _Block_copy(aBlock);
    v31 = v27;

    [v31 setButtonAction_];
    _Block_release(v30);

    v32 = *(v6 + v26);
    if (a6)
    {
      a6 = sub_1CA19C0E8();
    }

    [v32 setButtonTitle_];

    v33 = *(v6 + v26);
    if (a4)
    {
      a4 = sub_1CA19C0E8();
    }

    [v33 setMessage_];

    v34 = *(v6 + v26);
    if (a2)
    {
      a2 = sub_1CA19C0E8();
    }

    [v34 setTitle_];

    return;
  }

  if (!a4)
  {
    goto LABEL_31;
  }

  if (v18 == a3 && v19 == a4)
  {
  }

  else
  {
    v21 = sub_1CA19CAF8();

    if ((v21 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_23:
  v22 = sub_1CA1578B0(*(v6 + v17), &selRef_title);
  if (!v23)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  if (v22 != a1 || v23 != a2)
  {
    v25 = sub_1CA19CAF8();

    if (v25)
    {
      return;
    }

    goto LABEL_32;
  }
}

void sub_1CA156694()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1CA157190();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_retryAction);
    sub_1CA10FCD4(v4);

    if (v4)
    {
      v4();
      sub_1CA153B20(v4);
    }
  }
}

void sub_1CA15674C()
{
  OUTLINED_FUNCTION_19_0();
  v2 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_3();
  v8 = v7 - v6;
  v23 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_3();
  v14 = v13 - v12;
  v15 = sub_1CA19B2E8();
  OUTLINED_FUNCTION_1_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5_13();
  sub_1CA0F78AC();
  (*(v17 + 104))(v1, *MEMORY[0x1E69E7F88], v15);
  v19 = sub_1CA19C5E8();
  (*(v17 + 8))(v1, v15);
  OUTLINED_FUNCTION_14_2();
  v20 = swift_allocObject();
  *(v20 + 16) = v0;
  v24[4] = sub_1CA15791C;
  v24[5] = v20;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1CA0F4068;
  v24[3] = &block_descriptor_12;
  v21 = _Block_copy(v24);
  v22 = v0;
  sub_1CA19B2F8();
  sub_1CA0F7938();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA0F40C4();
  sub_1CA19C788();
  MEMORY[0x1CCA99C20](0, v14, v8, v21);
  _Block_release(v21);

  (*(v4 + 8))(v8, v2);
  (*(v10 + 8))(v14, v23);

  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA156A34(uint64_t a1)
{
  v2 = sub_1CA19B2D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CA19B318();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry);
  v10 = *(a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry + 24);
  v11 = *(a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry + 32);
  __swift_project_boxed_opaque_existential_2((a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry), v10);
  if ((*(v11 + 8))(v10, v11))
  {
    v12 = 4;
  }

  else if ([*(a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_airplaneModeInquiry) isEnabled])
  {
    v12 = 1;
  }

  else
  {
    v13 = *(a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_cellularDataInquiry);
    if ([v13 isSupported] && !objc_msgSend(v13, sel_isEnabledForDevice))
    {
      v12 = 2;
    }

    else if ([v13 isSupported] && (v15 = v9[3], v14 = v9[4], __swift_project_boxed_opaque_existential_2(v9, v15), (*(v14 + 16))(v15, v14) == 3) && !objc_msgSend(v13, sel_isEnabledForBundle))
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }
  }

  sub_1CA0F78AC();
  v16 = sub_1CA19C598();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1CA15793C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA0F4068;
  aBlock[3] = &block_descriptor_18_0;
  v19 = _Block_copy(aBlock);

  sub_1CA19B2F8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CA0F7938();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA0F40C4();
  sub_1CA19C788();
  MEMORY[0x1CCA99C20](0, v8, v5, v19);
  _Block_release(v19);

  (*(v3 + 8))(v5, v2);
  return (*(v6 + 8))(v8, v22);
}

void sub_1CA156DEC(char a1)
{
  if (a1 == 4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v2 = Strong;
    sub_1CA155D1C();
  }

  else
  {
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      return;
    }

    v2 = v3;
    sub_1CA155FB0();
  }
}

void sub_1CA156E88()
{
  sub_1CA15674C();
  if (*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_automaticRetry) == 1)
  {
    __swift_project_boxed_opaque_existential_2((v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry), *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_networkInquiry + 24));
    v1 = OUTLINED_FUNCTION_6_12();
    if (v2(v1))
    {
      v3 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_retryAction);
      if (v3)
      {
        v3();
      }
    }
  }
}

void sub_1CA156F14()
{
  v0 = sub_1CA19AD18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA1A0930;
  *(inited + 32) = 0x707954726F727265;
  *(inited + 40) = 0xE900000000000065;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433D80);
  *(inited + 48) = sub_1CA19C168();
  *(inited + 56) = v2;
  *(inited + 64) = 0xD000000000000010;
  *(inited + 72) = 0x80000001CA1AD320;
  v3 = [v0 description];
  v4 = sub_1CA19C118();
  v6 = v5;

  *(inited + 80) = v4;
  *(inited + 88) = v6;
  *(inited + 96) = 0x707954746E657665;
  *(inited + 104) = 0xE900000000000065;
  *(inited + 112) = 1701273968;
  *(inited + 120) = 0xE400000000000000;
  v7 = sub_1CA19C038();
  sub_1CA15784C(v0);
  if (v8)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_1CA17AD30();
  }

  else
  {
    sub_1CA184158(0xD000000000000012, 0x80000001CA1AD340);
    if (v9)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4332C8);
      sub_1CA19C9A8();

      sub_1CA19C9C8();
    }
  }

  sub_1CA16C888(v7);

  sub_1CA157204();
}

uint64_t sub_1CA157190()
{
  v0 = sub_1CA19C038();
  sub_1CA16C888(v0);

  sub_1CA157204();
}

void sub_1CA157204()
{
  OUTLINED_FUNCTION_19_0();
  v2 = sub_1CA19B5F8();
  OUTLINED_FUNCTION_1_0();
  v24 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  v7 = v6 - v5;
  v8 = sub_1CA19B868();
  OUTLINED_FUNCTION_1_0();
  v23 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5_13();
  v11 = sub_1CA19BA68();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_3();
  v17 = v16 - v15;
  if (*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19ErrorViewController_objectGraph))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA1A0B80;
    *(inited + 32) = 1701273968;
    *(inited + 40) = 0xE400000000000000;
    v22 = v2;
    v19 = MEMORY[0x1E69E6158];
    *(inited + 48) = 0x726F727245;
    *(inited + 56) = 0xE500000000000000;
    *(inited + 72) = v19;
    *(inited + 80) = 0x6570795465676170;
    *(inited + 120) = v19;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = 0x726F727245534D41;
    *(inited + 104) = 0xE800000000000000;

    v20 = sub_1CA19C038();

    sub_1CA15752C(v21, v20);
    sub_1CA19B7D8();
    sub_1CA19BE18();
    sub_1CA19BE18();
    sub_1CA19B5E8();
    sub_1CA19B848();

    (*(v24 + 8))(v7, v22);
    (*(v23 + 8))(v1, v8);
    (*(v13 + 8))(v17, v11);
  }

  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA15752C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1CA0F0FB8(a1, sub_1CA157814, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

id sub_1CA1576D0(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v13 = sub_1CA19C0E8();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithFrame:v13 title:a7 style:{a1, a2, a3, a4}];

  return v14;
}

id sub_1CA15776C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_1CA19C0E8();

  v8 = sub_1CA19C0E8();

  v9 = sub_1CA19AD18();
  v10 = [v5 initWithSubsystem:v7 category:v8 error:v9];

  return v10;
}

uint64_t sub_1CA157814@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA176704((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1CA15784C(void *a1)
{
  v1 = [a1 localizedFailureReason];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA19C118();

  return v3;
}

uint64_t sub_1CA1578B0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1CA19C118();

  return v4;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1CA157950()
{
  v0 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_12_4(v0);

  sub_1CA1562E0();
}

uint64_t sub_1CA1579B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void AMSDispatchAsync(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = AMSLogKey();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __AMSDispatchAsync_block_invoke;
  v9[3] = &unk_1E83668D0;
  v10 = v5;
  v11 = v4;
  v6 = v5;
  v7 = v4;
  dispatch_async(v3, v9);

  v8 = v10;
}

uint64_t __AMSDispatchAsync_block_invoke(uint64_t a1)
{
  v2 = AMSSetLogKey();
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

id sub_1CA157B88()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1CA19C0E8();

  v2 = [v0 initWithContentsOfFile_];

  return v2;
}

id sub_1CA157BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[qword_1EE03B0C8];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[qword_1EE03B0C0];
  *v15 = a5;
  v15[1] = a6;
  v16 = &v6[qword_1EE03B0D0];
  *v16 = a3;
  *(v16 + 1) = a4;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

void sub_1CA157C9C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1CA19AEF8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v38 = ObjectType;
  v42 = ObjectType;
  v40 = v0;
  v4 = v0;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v40);
  sub_1CA19AF68();
  sub_1CA19AEE8();
  sub_1CA19AED8();
  v7 = *&v4[qword_1EE03B0C8];
  v8 = *&v4[qword_1EE03B0C8 + 8];
  v42 = MEMORY[0x1E69E6158];
  v40 = v7;
  v41 = v8;
  swift_bridgeObjectRetain_n();
  sub_1CA19AEB8();
  sub_1CA0F0440(&v40);
  sub_1CA19AED8();
  sub_1CA19AF08();
  sub_1CA19AFC8();

  sub_1CA115CA0();
  v9 = sub_1CA157B88();
  if (v9)
  {
    v10 = v9;
    v11 = *&v4[qword_1EE03B0C0];
    v12 = *&v4[qword_1EE03B0C0 + 8];
    v13 = OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_1_26(v13);
    v42 = v38;
    v40 = v4;
    v14 = v4;
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    OUTLINED_FUNCTION_2_21();
    sub_1CA19AF68();
    sub_1CA19AEE8();
    sub_1CA19AED8();
    v21 = *&v14[qword_1EE03B0D0];
    v20 = *&v14[qword_1EE03B0D0 + 8];
    v42 = &type metadata for Artwork.Crop;
    v40 = v21;
    v41 = v20;

    sub_1CA19AEB8();
    sub_1CA0F0440(&v40);
    sub_1CA19AED8();
    type metadata accessor for CGSize(0);
    v42 = v22;
    v40 = v11;
    v41 = v12;
    sub_1CA19AEB8();
    sub_1CA0F0440(&v40);
    sub_1CA19AED8();
    sub_1CA19AF08();
    sub_1CA19AFC8();

    v23 = sub_1CA158424(v10);
    v25 = v24;
    if (v24)
    {
      v37 = v10;
      v26 = OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_1_26(v26);
      v42 = v38;
      v40 = v14;
      v27 = v14;
      sub_1CA10B888(v23);
      v28 = AMSLogKey();
      if (v28)
      {
        v29 = v28;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      OUTLINED_FUNCTION_2_21();
      sub_1CA19AF68();
      sub_1CA19AEE8();
      sub_1CA19AED8();
      swift_getErrorValue();
      v42 = v39;
      boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v40);
      (*(v39[-1].Description + 2))(boxed_opaque_existential_2Tm);
      sub_1CA19AEB8();
      sub_1CA0F0440(&v40);
      sub_1CA19AED8();
      sub_1CA19AF08();
      sub_1CA19AFB8();

      sub_1CA10B868(v23);
      v10 = v37;
    }

    else
    {
      v30 = OUTLINED_FUNCTION_0_26();
      OUTLINED_FUNCTION_1_26(v30);
      v42 = v38;
      v40 = v14;
      v31 = v14;
      v32 = AMSLogKey();
      if (v32)
      {
        v33 = v32;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      OUTLINED_FUNCTION_2_21();
      sub_1CA19AF68();
      sub_1CA19AF18();
      sub_1CA19AFC8();
    }

    sub_1CA17D778(v23, v25 & 1);

    sub_1CA10B868(v23);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_1_26(v17);
    v42 = v38;
    v40 = v4;
    v4;
    v18 = AMSLogKey();
    if (v18)
    {
      v19 = v18;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    OUTLINED_FUNCTION_2_21();
    sub_1CA19AF68();
    sub_1CA19AF18();
    sub_1CA19AFB8();

    sub_1CA10BD74();
    v34 = swift_allocError();
    *v35 = xmmword_1CA1A4F50;
    *(v35 + 16) = 3;
    sub_1CA17D778(v34, 1);
  }
}

id sub_1CA158424(void *a1)
{
  v4 = *(v1 + qword_1EE03B0D0);
  v3 = *(v1 + qword_1EE03B0D0 + 8);
  v5 = v4 == 26479 && v3 == 0xE200000000000000;
  if (v5 || (sub_1CA19CAF8() & 1) != 0)
  {
    return sub_1CA1585A0(a1);
  }

  v9 = v4 == 26223 && v3 == 0xE200000000000000;
  if (v9 || (sub_1CA19CAF8() & 1) != 0)
  {
    return sub_1CA158670(a1);
  }

  v10 = v4 == 29299 && v3 == 0xE200000000000000;
  if (!v10 && (sub_1CA19CAF8() & 1) == 0)
  {
    sub_1CA10BD74();
    v7 = swift_allocError();
    *v11 = v4;
    *(v11 + 8) = v3;
    *(v11 + 16) = 2;

    return v7;
  }

  return sub_1CA158740(a1);
}

void sub_1CA158558(void *a1)
{
  v1 = a1;
  sub_1CA157C9C();
}

uint64_t sub_1CA1585A0(void *a1)
{
  [a1 size];
  v4 = [a1 ams:0.0 imageCroppedTo:{344.0, v3, v2 + -344.0 + -772.0}];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1CA158740(v4);
  }

  else
  {
    sub_1CA10BD74();
    v6 = swift_allocError();
    *v7 = xmmword_1CA1A3570;
    *(v7 + 16) = 3;
  }

  return v6;
}

uint64_t sub_1CA158670(void *a1)
{
  [a1 size];
  v4 = [a1 ams:0.0 imageCroppedTo:{296.0, v3, v2 + -296.0 + -1602.0}];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1CA158740(v4);
  }

  else
  {
    sub_1CA10BD74();
    v6 = swift_allocError();
    *v7 = xmmword_1CA1A3570;
    *(v7 + 16) = 3;
  }

  return v6;
}

id sub_1CA158740(void *a1)
{
  [a1 size];
  v3 = *(v1 + qword_1EE03B0C0);
  v4 = *(v1 + qword_1EE03B0C0 + 8);
  v6 = v5 / v3;
  v8 = v7 / v4;
  if (v8 < v6)
  {
    v6 = v8;
  }

  v9 = [a1 ams:v6 imageScaledTo:?];
  [v9 size];
  v12 = [v9 ams:(v10 - v3) * 0.5 imageCroppedTo:{(v11 - v4) * 0.5, v3, v4}];
  if (!v12)
  {
    sub_1CA10BD74();
    v12 = swift_allocError();
    *v13 = xmmword_1CA1A3570;
    *(v13 + 16) = 3;
  }

  return v12;
}

uint64_t sub_1CA158888()
{
}

uint64_t sub_1CA1588D0()
{
}

uint64_t type metadata accessor for FileImageFetchOperation()
{
  result = qword_1EE03B0B0;
  if (!qword_1EE03B0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_1_26(__n128 *a1)
{
  result = *(v1 - 224);
  a1[1] = result;
  return result;
}

uint64_t sub_1CA158A10()
{
  v0 = sub_1CA19CA48();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1CA158A5C(char a1)
{
  result = 0x7373696D736964;
  switch(a1)
  {
    case 1:
      result = 7368560;
      break;
    case 2:
      result = 0x6F6F526F54706F70;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x746E6573657270;
      break;
    case 5:
      result = 1752397168;
      break;
    case 6:
      result = 0x6563616C706572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CA158B3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA158A10();
  *a1 = result;
  return result;
}

unint64_t sub_1CA158B6C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1CA158A5C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1CA158B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1CA19B4D8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1CA158C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1CA19B6E8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double sub_1CA158C98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v33 = a2;
  v58 = a3;
  v5 = sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433778);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_1CA161EA4();
  if (v3)
  {

    v32 = 0;
  }

  else
  {
    v32 = v15;
  }

  v57 = v3 != 0;
  v31 = sub_1CA162250() & 1;
  v30 = sub_1CA162250();
  v29 = sub_1CA161EA4();
  v54 = 0;
  v16 = sub_1CA161FD8();
  v18 = v17;
  v28 = v16;
  sub_1CA19B4E8();
  sub_1CA19B408();
  v19 = *(v7 + 8);
  v19(v11, v5);
  v20 = sub_1CA19B758();
  if (__swift_getEnumTagSinglePayload(v14, 1, v20) == 1)
  {
    sub_1CA19B5C8();
    OUTLINED_FUNCTION_7_6();
    (*(v21 + 8))(v33);
    v19(a1, v5);
    sub_1CA11FF84(v14, &qword_1EC433778);
    v22 = 0;
  }

  else
  {
    v22 = sub_1CA19B748();
    sub_1CA19B5C8();
    OUTLINED_FUNCTION_7_6();
    (*(v23 + 8))(v33);
    v19(a1, v5);
    OUTLINED_FUNCTION_7_6();
    (*(v24 + 8))(v14, v20);
  }

  *&v35 = v32;
  BYTE8(v35) = v57;
  BYTE9(v35) = v30 & 1;
  *(&v35 + 10) = v55;
  HIWORD(v35) = v56;
  *&v36 = v29;
  BYTE8(v36) = v54;
  BYTE9(v36) = v31;
  *(&v36 + 10) = v52;
  HIWORD(v36) = v53;
  *&v37 = v28;
  *(&v37 + 1) = v18;
  v38 = v22;
  v39 = v32;
  v40 = v57;
  v41 = v30 & 1;
  v42 = v55;
  v43 = v56;
  v44 = v29;
  v45 = v54;
  v46 = v31;
  v47 = v52;
  v48 = v53;
  v49 = v28;
  v50 = v18;
  v51 = v22;
  sub_1CA15A070(&v35, v34);
  sub_1CA15A0A8(&v39);
  v25 = v36;
  v26 = v58;
  *v58 = v35;
  v26[1] = v25;
  result = *&v37;
  v26[2] = v37;
  *(v26 + 6) = v38;
  return result;
}

double sub_1CA1591A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1CA158C98(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

uint64_t sub_1CA1591F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v145 = a2;
  v118 = a3;
  v132 = sub_1CA19B5C8();
  OUTLINED_FUNCTION_1_0();
  v131 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_3();
  v117 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v128 = &v112 - v9;
  v133 = sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_11();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v112 - v18;
  v130 = sub_1CA19B6E8();
  OUTLINED_FUNCTION_1_0();
  v129 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1_3();
  v125 = v23 - v22;
  v24 = type metadata accessor for FlowAction();
  OUTLINED_FUNCTION_7_6();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1_3();
  v28 = v27 - v26;
  *(v28 + 24) = 0u;
  *(v28 + 8) = 0u;
  *(v28 + 40) = 0;
  *(v28 + 48) = 1;
  type metadata accessor for ActionFactory();
  *(v28 + 56) = 0u;
  *(v28 + 72) = 0u;
  *(v28 + 88) = 0u;
  inited = swift_initStackObject();
  sub_1CA19B4E8();
  if (sub_1CA19B498())
  {
    goto LABEL_4;
  }

  v123 = inited;
  v121 = v11;
  v120 = v24;
  v127 = a1;
  v30 = v128;
  sub_1CA159EA4(v19, v145, v128);
  v31 = v130;
  if (__swift_getEnumTagSinglePayload(v30, 1, v130) == 1)
  {
    sub_1CA11FF84(v30, &qword_1EC433DA0);
    a1 = v127;
    v24 = v120;
    v11 = v121;
LABEL_4:
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_27();
    sub_1CA15A67C(v32, v33);
    OUTLINED_FUNCTION_11_10();
    strcpy(v34, "actionMetrics");
    *(v34 + 7) = -4864;
    *(v34 + 2) = v24;
    OUTLINED_FUNCTION_7_6();
    (*(v35 + 104))();
    swift_willThrow();

    v36 = *(v11 + 8);
    v37 = a1;
    v38 = v133;
    v36(v37, v133);
    v36(v19, v38);
    v39 = 0;
    goto LABEL_5;
  }

  v43 = v121 + 8;
  v44 = *(v121 + 8);
  v44(v19, v133);
  v45 = *(v129 + 32);
  v46 = v125;
  v45(v125, v30, v31);
  v47 = v44;
  v48 = v120;
  v45(v28 + *(v120 + 28), v46, v31);
  OUTLINED_FUNCTION_10_11();
  v49 = v126;
  sub_1CA19B4E8();
  if (sub_1CA19B498())
  {
    goto LABEL_11;
  }

  v45 = v47;
  v50 = v122;
  ActionFactory.action(deserializing:using:)(v134);
  if (v50)
  {

    v135 = 0;
    memset(v134, 0, sizeof(v134));
    sub_1CA11FF84(v134, &unk_1EC433730);
    OUTLINED_FUNCTION_10_11();
LABEL_11:
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_27();
    sub_1CA15A67C(v51, v52);
    v53 = OUTLINED_FUNCTION_11_10();
    *v54 = v45;
    v54[1] = 0xEA00000000006E6FLL;
    v54[2] = v48;
    OUTLINED_FUNCTION_7_6();
    (*(v55 + 104))();
    swift_willThrow();
    v56 = v49;
    v57 = v133;
    v45 = v47;
    v47(v56, v133);

    v138 = 0;
    v136 = 0u;
    v137 = 0u;
    v58 = v57;
    goto LABEL_12;
  }

  v58 = v133;
  (v45)(v49, v133);
  sub_1CA0EBE94(v134, &v136);
LABEL_12:
  sub_1CA15A16C(&v136, v28 + 64);
  sub_1CA0FC3A8(0x65707954776F6C66, 0xE800000000000000, v48, v59, v60, v61, v62, v63);
  v128 = v43;
  LODWORD(v122) = v64;
  *v28 = v64;
  sub_1CA19B4E8();
  v65 = sub_1CA19B498();
  v114 = v45;
  if (v65)
  {
    sub_1CA19BFA8();
    OUTLINED_FUNCTION_0_27();
    sub_1CA15A67C(v68, v69);
    v70 = OUTLINED_FUNCTION_8_2();
    *v71 = 0x6974704F776F6C66;
    v71[1] = 0xEB00000000736E6FLL;
    v71[2] = v48;
    OUTLINED_FUNCTION_7_6();
    (*(v72 + 104))();
    swift_willThrow();
    v73 = OUTLINED_FUNCTION_6_13();
    (v45)(v73);

    v126 = 0;
    v98 = 0;
    v99 = 0;
    v105 = 0;
    v101 = 0;
    v104 = 0;
    v106 = 1;
  }

  else
  {
    v66 = v116;
    (*(v121 + 16))(v116, v124, v58);
    v67 = v117;
    (*(v131 + 16))(v117, v145, v132);
    sub_1CA158C98(v66, v67, &v139);
    v98 = *(&v139 + 1);
    v126 = v139;
    v99 = v140;
    v125 = v141;
    v101 = v142;
    v100 = v143;
    v102 = v144;
    v103 = OUTLINED_FUNCTION_6_13();
    (v45)(v103);
    v104 = v102;
    v105 = v125;
    v106 = v100;
  }

  v75 = *(v28 + 8);
  v74 = *(v28 + 16);
  v76 = *(v28 + 32);
  v124 = *(v28 + 24);
  v117 = v76;
  v77 = *(v28 + 48);
  v116 = *(v28 + 40);
  v113 = v77;
  v112 = *(v28 + 56);
  v78 = v126;
  *(v28 + 8) = v126;
  *(v28 + 16) = v98;
  *(v28 + 24) = v99;
  *(v28 + 32) = v105;
  *(v28 + 40) = v101;
  *(v28 + 48) = v106;
  *(v28 + 56) = v104;
  v79 = v105;
  v125 = v106;
  sub_1CA15A1DC(v78, v98, v99, v105, v101, v106);
  sub_1CA15A124(v75, v74, v124, v117, v116, v113);
  v80 = v119;
  if (v122 <= 3u)
  {
    v81 = OUTLINED_FUNCTION_8_11();
    OUTLINED_FUNCTION_13_6(v81, v82, v83, v79);
    v136 = 0u;
    v137 = 0u;
    sub_1CA19B4C8();
    OUTLINED_FUNCTION_7_12();
    v84 = v127;
    v85 = v133;
LABEL_21:
    v114(v84, v85);
LABEL_25:
    sub_1CA15A224(v28, v118);
    v110 = OUTLINED_FUNCTION_5_14();
    v111(v110);
    return sub_1CA15A288(v28);
  }

  v86 = v79;
  v87 = v133;
  v24 = v120;
  if (v125 != 1)
  {

    v88 = OUTLINED_FUNCTION_8_11();
    OUTLINED_FUNCTION_13_6(v88, v89, v90, v86);
    if (v125)
    {

      v136 = 0u;
      v137 = 0u;
      sub_1CA19B4C8();
      OUTLINED_FUNCTION_7_12();
      v84 = v127;
      v85 = v87;
      goto LABEL_21;
    }
  }

  v91 = v87;
  v92 = v127;
  sub_1CA19B4E8();
  if ((sub_1CA19B498() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_12();
    v107 = v121;
    v108 = v115;
    (*(v121 + 16))(v115, v80, v91);
    v109 = v114;
    v114(v92, v91);
    v109(v80, v91);
    (*(v107 + 32))(v28 + *(v24 + 32), v108, v91);
    goto LABEL_25;
  }

  sub_1CA19BFA8();
  OUTLINED_FUNCTION_0_27();
  sub_1CA15A67C(v93, v94);
  OUTLINED_FUNCTION_8_2();
  *v95 = 0x74616E6974736564;
  v95[1] = 0xEB000000006E6F69;
  v95[2] = v24;
  OUTLINED_FUNCTION_7_6();
  (*(v96 + 104))();
  swift_willThrow();
  OUTLINED_FUNCTION_7_12();
  v97 = v114;
  v114(v92, v87);
  v97(v80, v87);
  v39 = 1;
LABEL_5:
  v40 = OUTLINED_FUNCTION_5_14();
  v41(v40);
  sub_1CA15A124(*(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32), *(v28 + 40), *(v28 + 48));
  result = sub_1CA11FF84(v28 + 64, &unk_1EC433730);
  if (v39)
  {
    return (*(v129 + 8))(v28 + *(v24 + 28), v130);
  }

  return result;
}

uint64_t sub_1CA159EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CA19B5C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1CA19B4D8();
  MEMORY[0x1EEE9AC00](v10);
  (*(v12 + 16))(&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  (*(v7 + 16))(v9, a2, v6);
  sub_1CA19B6B8();
  v13 = sub_1CA19B6E8();
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v13);
}

uint64_t type metadata accessor for FlowAction()
{
  result = qword_1EE03E9A8;
  if (!qword_1EE03E9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA15A124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

uint64_t sub_1CA15A16C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433730);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA15A1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

uint64_t sub_1CA15A224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA15A288(uint64_t a1)
{
  v2 = type metadata accessor for FlowAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for FlowAction.FlowType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CA15A3C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_1CA15A414(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 40) = a2;
    }
  }

  return result;
}

void sub_1CA15A4AC()
{
  sub_1CA15A570();
  if (v0 <= 0x3F)
  {
    sub_1CA15A5C0();
    if (v1 <= 0x3F)
    {
      sub_1CA19B6E8();
      if (v2 <= 0x3F)
      {
        sub_1CA19B4D8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CA15A570()
{
  if (!qword_1EE03BD10)
  {
    v0 = sub_1CA19C6F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE03BD10);
    }
  }
}

void sub_1CA15A5C0()
{
  if (!qword_1EE03B4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC433A08);
    v0 = sub_1CA19C6F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE03B4A8);
    }
  }
}

uint64_t sub_1CA15A624(uint64_t a1)
{
  result = sub_1CA15A67C(&qword_1EE03E9C0, type metadata accessor for FlowAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CA15A67C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CA15A710()
{
  result = qword_1EC433DA8;
  if (!qword_1EC433DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433DA8);
  }

  return result;
}

uint64_t sub_1CA15A764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_12()
{
}

uint64_t OUTLINED_FUNCTION_11_10()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v5 - 328);

  return sub_1CA15A124(a1, a2, a3, a4, v4, v7);
}

uint64_t sub_1CA15A8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v63 = a1;
  v64 = v5;
  v6 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v66 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FlowAction();
  OUTLINED_FUNCTION_1_0();
  v61 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v62 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NavigationControllerList();
  sub_1CA19B7D8();
  sub_1CA19BE18();
  v22 = aBlock[0];
  type metadata accessor for BridgedDestinationViewProvider();
  v65 = a3;
  sub_1CA19BE18();
  v23 = aBlock[0];
  v24 = NavigationControllerList.topNavigationController.getter();
  if (v24)
  {
    v52 = v24;
    v53 = v23;
    v54 = v22;
    v56 = v11;
    v58 = v8;
    v59 = v6;
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v57 = v12;
    v25 = sub_1CA19AFF8();
    v60 = __swift_project_value_buffer(v25, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v26 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v26);
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v69 = type metadata accessor for FlowActionImplementation();
    aBlock[0] = v67;

    v27 = AMSLogKey();
    v55 = v16;
    if (v27)
    {
      v28 = v27;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(aBlock);
    sub_1CA19AF18();
    v69 = v17;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(aBlock);
    v31 = v63;
    sub_1CA15A224(v63, boxed_opaque_existential_2Tm);
    sub_1CA19AF38();
    sub_1CA132B60(aBlock, &qword_1EC433830);
    sub_1CA19AFC8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DB0);
    v51 = sub_1CA19BF08();
    sub_1CA0F2110(0, &qword_1EE03C230);
    v60 = sub_1CA19C598();
    v32 = v31;
    v33 = v62;
    sub_1CA15A224(v32, v62);
    v34 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v35 = (v20 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    sub_1CA15EA60(v33, v41 + v34);
    *(v41 + v35) = v54;
    *(v41 + v36) = v65;
    *(v41 + v37) = v67;
    v42 = v52;
    *(v41 + v38) = v52;
    v43 = v51;
    *(v41 + v39) = v51;
    *(v41 + v40) = v53;
    *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v64;
    v70 = sub_1CA15EAC4;
    v71 = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA0F4068;
    v69 = &block_descriptor_13;
    v44 = _Block_copy(aBlock);
    v29 = v43;

    v45 = v42;

    v46 = v55;
    sub_1CA19B2F8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1CA15EBA8(&qword_1EE03C350, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    sub_1CA0F40C4();
    v47 = v56;
    v48 = v59;
    sub_1CA19C788();
    v49 = v60;
    MEMORY[0x1CCA99C20](0, v46, v47, v44);
    _Block_release(v44);

    (*(v58 + 8))(v47, v48);
    (*(v66 + 8))(v46, v57);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DB0);
    sub_1CA15EA0C();
    swift_allocError();
    v29 = sub_1CA19BE78();
  }

  return v29;
}

void sub_1CA15AF94(uint64_t a1, uint64_t a2, int a3, uint64_t a4, id a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(*a1)
  {
    case 1:
      if (*(a1 + 48) == 1 || (*(a1 + 32) & 1) != 0)
      {
        goto LABEL_17;
      }

      v53 = *(a1 + 24);
      v54 = [a5 viewControllers];
      v55 = sub_1CA0F2110(0, &unk_1EE03C240);
      v56 = sub_1CA19C2B8();

      v57 = sub_1CA0F041C(v56);

      if (v57 < 0)
      {
        __break(1u);
      }

      else
      {
        if (v53 < 0 || v53 >= v57)
        {
LABEL_17:
          v27 = [a5 popViewControllerAnimated_];
          v72 = 0;
LABEL_18:

          v28 = [a5 transitionCoordinator];
          if (!v28)
          {
            goto LABEL_44;
          }

          v29 = v28;
          v77 = sub_1CA15F0DC;
          v78 = a6;
          aBlock = MEMORY[0x1E69E9820];
          v74 = 1107296256;
          v30 = &block_descriptor_13;
          goto LABEL_20;
        }

        v58 = [a5 viewControllers];
        v55 = sub_1CA19C2B8();

        sub_1CA17EBD4(v53, (v55 & 0xC000000000000001) == 0, v55);
        if ((v55 & 0xC000000000000001) == 0)
        {
          v59 = *(v55 + 8 * v53 + 32);
LABEL_52:
          v72 = v59;

          v27 = [a5 popToViewController:v72 animated:1];
          goto LABEL_18;
        }
      }

      v59 = MEMORY[0x1CCA99FB0](v53, v55);
      goto LABEL_52;
    case 2:

      v21 = [a5 transitionCoordinator];
      if (!v21)
      {
        return;
      }

      v22 = v21;
      v77 = sub_1CA15F0DC;
      v78 = a6;
      aBlock = MEMORY[0x1E69E9820];
      v74 = 1107296256;
      v23 = &block_descriptor_4_0;
      goto LABEL_11;
    case 3:
      if (*(a1 + 48) == 1 || (*(a1 + 16) & 1) != 0 || (v44 = *(a1 + 8), v44 < 1))
      {
        v25 = sub_1CA19C0E8();
        v26 = sub_1CA19C0E8();
        v72 = AMSError();

        sub_1CA19BEA8();
LABEL_44:

        return;
      }

      v45 = [a5 viewControllers];
      sub_1CA0F2110(0, &unk_1EE03C240);
      v46 = sub_1CA19C2B8();

      v47 = sub_1CA0F041C(v46);

      if (v44 < v47)
      {
        v48 = v47 + ~v44;
        v49 = [a5 viewControllers];
        v50 = sub_1CA19C2B8();

        sub_1CA17EBD4(v48, (v50 & 0xC000000000000001) == 0, v50);
        if ((v50 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x1CCA99FB0](v48, v50);
        }

        else
        {
          v51 = *(v50 + 8 * v48 + 32);
        }

        v72 = v51;

        v52 = [a5 transitionCoordinator];
        if (v52)
        {
          v29 = v52;
          v77 = sub_1CA15F0DC;
          v78 = a6;
          aBlock = MEMORY[0x1E69E9820];
          v74 = 1107296256;
          v30 = &block_descriptor_10;
LABEL_20:
          v75 = sub_1CA15C08C;
          v76 = v30;
          v24 = _Block_copy(&aBlock);

          [v29 animateAlongsideTransition:0 completion:v24];

LABEL_21:
          _Block_release(v24);
          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_44;
      }

      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v67 = sub_1CA19AFF8();
      __swift_project_value_buffer(v67, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
      v76 = type metadata accessor for FlowActionImplementation();
      aBlock = a4;

      v68 = AMSLogKey();
      if (v68)
      {
        v69 = v68;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(&aBlock);
      sub_1CA19AF18();
      sub_1CA19AFC8();

      v70 = [a5 transitionCoordinator];
      if (v70)
      {
        v22 = v70;
        v77 = sub_1CA15F0DC;
        v78 = a6;
        aBlock = MEMORY[0x1E69E9820];
        v74 = 1107296256;
        v23 = &block_descriptor_7;
LABEL_11:
        v75 = sub_1CA15C08C;
        v76 = v23;
        v24 = _Block_copy(&aBlock);

        [v22 animateAlongsideTransition:0 completion:v24];
        goto LABEL_21;
      }

      return;
    case 4:
      sub_1CA1355D8();
      sub_1CA19BE08();
      v18 = sub_1CA15D6D8(a1, a7, a4, aBlock);
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
      if (*(a1 + 48) == 1)
      {
        v20 = 0;
      }

      else if ((*(a1 + 32) & 0xFF00) == 0x200)
      {
        v20 = 0;
      }

      else
      {
        v20 = BYTE1(*(a1 + 32)) & 1;
      }

      v36 = v18;
      v37 = a5;
      v38 = v19;

      sub_1CA15C424(v20, v36, a8, a4, v36, v37, v38, a2, a6);

      return;
    case 5:
      sub_1CA1355D8();
      sub_1CA19BE08();
      v31 = sub_1CA15D6D8(a1, a7, a4, aBlock);
      if (*(a1 + 48) == 1)
      {
        goto LABEL_23;
      }

      v71 = *(a1 + 16);
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v39 = sub_1CA19AFF8();
      __swift_project_value_buffer(v39, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
      v76 = type metadata accessor for FlowActionImplementation();
      aBlock = a4;

      v40 = AMSLogKey();
      if (v40)
      {
        v41 = v40;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(&aBlock);
      sub_1CA19AF18();
      sub_1CA19AF98();

      v65 = [v31 navigationItem];
      [v65 setHidesBackButton_];

      if (*(a1 + 48) == 1)
      {
        LOBYTE(v32) = 0;
      }

      else if ((*(a1 + 32) & 0xFF00) == 0x200)
      {
LABEL_23:
        LOBYTE(v32) = 0;
      }

      else
      {
        v32 = (*(a1 + 32) >> 8) & 1;
      }

      v66 = a5;
      v43 = v31;
      sub_1CA15CBB8(v32, v43, a8, a4, v43, v66, a6);
LABEL_64:

      return;
    case 6:
      sub_1CA1355D8();
      sub_1CA19BE08();
      v33 = sub_1CA15D6D8(a1, a7, a4, aBlock);
      v34 = [a5 navigationItem];
      [v34 setHidesBackButton_];

      if (*(a1 + 48) == 1)
      {
        v35 = 0;
      }

      else if ((*(a1 + 32) & 0xFF00) == 0x200)
      {
        v35 = 0;
      }

      else
      {
        v35 = BYTE1(*(a1 + 32)) & 1;
      }

      v42 = a5;
      v43 = v33;
      sub_1CA15D150(v35, v43, a8, v42, a4, v43, a6);
      goto LABEL_64;
    default:
      if (NavigationControllerList.count.getter() != 1)
      {
        goto LABEL_54;
      }

      type metadata accessor for DelegateController();
      sub_1CA19B7D8();
      sub_1CA19BE18();
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v15 = sub_1CA19AFF8();
      __swift_project_value_buffer(v15, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
      v76 = type metadata accessor for FlowActionImplementation();
      aBlock = a4;

      v16 = AMSLogKey();
      if (v16)
      {
        v17 = v16;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(&aBlock);
      v76 = MEMORY[0x1E69E6158];
      aBlock = 0xD000000000000016;
      v74 = 0x80000001CA1AD6E0;
      sub_1CA19AF38();
      sub_1CA132B60(&aBlock, &qword_1EC433830);
      sub_1CA19AFC8();

      v60 = DelegateController.shouldDismiss()();

      if (v60)
      {
LABEL_54:
        if (qword_1EE03B230 != -1)
        {
          swift_once();
        }

        v61 = sub_1CA19AFF8();
        __swift_project_value_buffer(v61, qword_1EE040B90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
        sub_1CA19AF88();
        *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
        v76 = type metadata accessor for FlowActionImplementation();
        aBlock = a4;

        v62 = AMSLogKey();
        if (v62)
        {
          v63 = v62;
          sub_1CA19C118();
        }

        sub_1CA19AF58();

        __swift_destroy_boxed_opaque_existential_2(&aBlock);
        v76 = MEMORY[0x1E69E6158];
        aBlock = 0xD000000000000026;
        v74 = 0x80000001CA1AD6B0;
        sub_1CA19AF38();
        sub_1CA132B60(&aBlock, &qword_1EC433830);
        sub_1CA19AFC8();

        v77 = sub_1CA15ECEC;
        v78 = a6;
        aBlock = MEMORY[0x1E69E9820];
        v74 = 1107296256;
        v75 = sub_1CA0F4068;
        v76 = &block_descriptor_16;
        v64 = _Block_copy(&aBlock);

        [a5 dismissViewControllerAnimated:1 completion:v64];
        _Block_release(v64);
      }

      return;
  }
}