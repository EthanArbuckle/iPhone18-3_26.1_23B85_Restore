id sub_19A5F1440()
{
  result = [objc_allocWithZone(type metadata accessor for JumpAndSlamAnimationHelper()) init];
  qword_1ED8B42B8 = result;
  return result;
}

id sub_19A5F1514()
{
  v1 = v0;
  v2 = OBJC_IVAR___JumpAndSlamAnimationHelper_animation;
  type metadata accessor for JumpAndSlamAnimation();
  v3 = swift_allocObject();
  sub_19A5F1740();
  *&v1[v2] = v3;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for JumpAndSlamAnimationHelper();
  v4 = objc_msgSendSuper2(&v15, sel_init);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 defaultCenter];
  v8 = sub_19A7AAFE4();
  v9 = [objc_opt_self() mainQueue];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_19A71E82C;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_19A77855C;
  v14[3] = &block_descriptor_25;
  v11 = _Block_copy(v14);

  v12 = [v7 addObserverForName:v8 object:0 queue:v9 usingBlock:v11];
  _Block_release(v11);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_19A5F16E4()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5F1740()
{
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  if ([objc_opt_self() useNewCollectionView])
  {
    v1 = [objc_opt_self() defaultCenter];
    v2 = sub_19A7AAFE4();
    v3 = [objc_opt_self() mainQueue];
    v4 = swift_allocObject();
    swift_weakInit();
    v8[4] = sub_19A71F2C8;
    v8[5] = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_19A77855C;
    v8[3] = &block_descriptor_82_0;
    v5 = _Block_copy(v8);

    v6 = [v1 addObserverForName:v2 object:0 queue:v3 usingBlock:v5];
    _Block_release(v5);
    swift_unknownObjectRelease();
  }

  return v0;
}

uint64_t sub_19A5F18F0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall PrewarmingViewController.viewDidLoad()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00]();
  v3 = &v14 - v2;
  if (qword_1ED8B3768 != -1)
  {
    swift_once();
  }

  v4 = sub_19A7A9384();
  __swift_project_value_buffer(v4, qword_1ED8B3770);
  v5 = sub_19A7A9364();
  v6 = sub_19A7AB574();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19A5EE000, v5, v6, "viewDidLoad", v7, 2u);
    MEMORY[0x19A907A30](v7, -1, -1);
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor_];

    sub_19A7AB364();
    v11 = sub_19A7AB394();
    (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v12;
    sub_19A755944(0, 0, v3, &unk_19A7C1590, v13);

    sub_19A5F2B54(v3, &unk_1EAFCD690);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19A5F2008()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5F2040()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5F2080()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1ED8B3770);
  __swift_project_value_buffer(v0, qword_1ED8B3770);
  return sub_19A7A9374();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

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

uint64_t EmojiKeyboardPrewarmAuditor.shouldPrewarm.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0);
  v1 = (MEMORY[0x1EEE9AC00])();
  v3 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v59 - v4;
  v6 = sub_19A7A8EF4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v59 - v14;
  v16 = *v0;
  v17 = MKBGetDeviceLockState();
  v18 = &off_1E751B000;
  if (v17 != 3 && v17)
  {
    v29 = v6;
    if (qword_1EAFCAA48 != -1)
    {
      swift_once();
    }

    v30 = sub_19A7A9384();
    __swift_project_value_buffer(v30, qword_1EAFCAA50);
    v31 = sub_19A7A9364();
    v32 = sub_19A7AB5A4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_19A5EE000, v31, v32, "Device is locked. Will not prewarm.", v33, 2u);
      MEMORY[0x19A907A30](v33, -1, -1);
    }

    sub_19A7A8ED4();
    v25 = sub_19A7A8EA4();
    (*(v7 + 8))(v10, v29);
  }

  else
  {
    v61 = v15;
    v62 = v16;
    sub_19A5F29F4(v5);
    v19 = *(v7 + 48);
    if (v19(v5, 1, v6) == 1)
    {
      v20 = v6;
      sub_19A5F2B54(v5, &unk_1EAFCE4E0);
      if (qword_1EAFCAA48 != -1)
      {
        swift_once();
      }

      v21 = sub_19A7A9384();
      __swift_project_value_buffer(v21, qword_1EAFCAA50);
      v22 = sub_19A7A9364();
      v23 = sub_19A7AB5A4();
      v18 = &off_1E751B000;
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_19A5EE000, v22, v23, "This appears to be our first ever launch. Will prewarm Stickers.", v24, 2u);
        MEMORY[0x19A907A30](v24, -1, -1);
      }

      sub_19A7A8ED4();
      v25 = sub_19A7A8EA4();
      (*(v7 + 8))(v10, v20);
      goto LABEL_41;
    }

    v59 = v7;
    v60 = v10;
    v26 = *(v7 + 32);
    v26(v61, v5, v6);
    v62 = v16;
    sub_19A5F382C(v3);
    if (v19(v3, 1, v6) == 1)
    {
      sub_19A5F2B54(v3, &unk_1EAFCE4E0);
      v18 = &off_1E751B000;
      v27 = v59;
      v28 = v60;
    }

    else
    {
      v26(v13, v3, v6);
      sub_19A7A8E84();
      v35 = v34;
      v36 = v34 <= 0.0 || v34 > 86400.0;
      v18 = &off_1E751B000;
      if (!v36)
      {
        v49 = v59;
        v28 = v60;
        if (qword_1EAFCAA48 != -1)
        {
          swift_once();
        }

        v50 = sub_19A7A9384();
        __swift_project_value_buffer(v50, qword_1EAFCAA50);
        v51 = sub_19A7A9364();
        v52 = sub_19A7AB5A4();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 134217984;
          *(v53 + 4) = v35;
          _os_log_impl(&dword_19A5EE000, v51, v52, "Emoji keyboard has been recently used. Will prewarm Stickers. (Interval: %f", v53, 0xCu);
          MEMORY[0x19A907A30](v53, -1, -1);
        }

        v54 = *(v49 + 8);
        v54(v13, v6);
        goto LABEL_40;
      }

      v27 = v59;
      (*(v59 + 8))(v13, v6);
      v28 = v60;
    }

    v62 = v16;
    v37 = sub_19A5F398C();
    if (v37 < 2)
    {
      if (qword_1EAFCAA48 != -1)
      {
        swift_once();
      }

      v38 = sub_19A7A9384();
      __swift_project_value_buffer(v38, qword_1EAFCAA50);
      v39 = sub_19A7A9364();
      v40 = sub_19A7AB574();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 134217984;
        v42 = v37 + 1;
        *(v41 + 4) = v42;
        _os_log_impl(&dword_19A5EE000, v39, v40, "Incrementing prewarming timeout count to %ld. Will still prewarm Stickers this time.", v41, 0xCu);
        MEMORY[0x19A907A30](v41, -1, -1);
      }

      else
      {

        v42 = v37 + 1;
      }

      v55 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v56 = sub_19A7AAFE4();
      [v16 v18[227]];

      v54 = *(v27 + 8);
LABEL_40:
      v54(v61, v6);
      sub_19A7A8ED4();
      v25 = sub_19A7A8EA4();
      v54(v28, v6);
LABEL_41:
      v48 = 1;
      goto LABEL_42;
    }

    if (qword_1EAFCAA48 != -1)
    {
      swift_once();
    }

    v43 = sub_19A7A9384();
    __swift_project_value_buffer(v43, qword_1EAFCAA50);
    v44 = sub_19A7A9364();
    v45 = sub_19A7AB5A4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      *(v46 + 4) = v37;
      _os_log_impl(&dword_19A5EE000, v44, v45, "Timeout limit reached (%ld). Will NOT prewarm Stickers.", v46, 0xCu);
      MEMORY[0x19A907A30](v46, -1, -1);
    }

    v47 = *(v27 + 8);
    v47(v61, v6);
    sub_19A7A8ED4();
    v25 = sub_19A7A8EA4();
    v47(v28, v6);
  }

  v48 = 0;
LABEL_42:
  v57 = sub_19A7AAFE4();
  [v16 v18[227]];

  return v48;
}

uint64_t sub_19A5F29F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_19A7AAFE4();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = sub_19A7A8EF4();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_19A5F2B54(v12, &unk_1EAFCD750);
    v9 = sub_19A7A8EF4();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_19A5F2B54(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A5F2BB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A60FB98;

  return sub_19A5F2D24(a1, v4);
}

uint64_t sub_19A5F2C6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A60F860;

  return sub_19A5F2D24(a1, v4);
}

uint64_t sub_19A5F2D24(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19A5F36AC;

  return v6(a1);
}

uint64_t sub_19A5F2E1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60F860;

  return sub_19A5F2ED0(a1, v4, v5, v6);
}

uint64_t sub_19A5F2ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;

  return MEMORY[0x1EEE6DFA0](sub_19A5F2F60, 0, 0);
}

uint64_t sub_19A5F2F60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() identityForEmbeddedApplicationIdentifier_];
    v0[10] = v3;
    v4 = [objc_opt_self() contextWithIdentity_];
    v0[11] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_19A7B6C40;
    v6 = sub_19A7AAFE4();
    v7 = sub_19A7AAFE4();
    v8 = [objc_opt_self() attributeWithDomain:v6 name:v7];

    *(v5 + 32) = v8;
    sub_19A5F34CC();
    v9 = sub_19A7AB234();

    [v4 setAttributes_];

    v40 = v4;
    v10 = [objc_allocWithZone(MEMORY[0x1E69C7598]) initWithContext_];
    v0[12] = v10;
    if (qword_1ED8B3768 != -1)
    {
      swift_once();
    }

    v11 = sub_19A7A9384();
    __swift_project_value_buffer(v11, qword_1ED8B3770);
    v12 = v3;
    v13 = sub_19A7A9364();
    v14 = sub_19A7AB5A4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_19A5EE000, v13, v14, "Launching %@", v15, 0xCu);
      sub_19A5F2B54(v16, &unk_1EAFCD7D0);
      MEMORY[0x19A907A30](v16, -1, -1);
      MEMORY[0x19A907A30](v15, -1, -1);
    }

    v0[5] = 0;
    v0[6] = 0;
    v0[7] = 0;
    v18 = [v10 execute:v0 + 5 assertion:v0 + 6 error:v0 + 7];
    v20 = v0[6];
    v19 = v0[7];
    v21 = v0[5];
    v0[13] = v20;
    v0[14] = v21;
    if (v18)
    {
      sub_19A7AB354();
      v22 = v19;
      v23 = v20;
      v24 = v21;
      v0[15] = sub_19A7AB344();
      v26 = sub_19A7AB2E4();

      return MEMORY[0x1EEE6DFA0](sub_19A5F3518, v26, v25);
    }

    v27 = v19;
    v28 = v20;
    v29 = v21;
    v30 = sub_19A7A8D34();

    swift_willThrow();
    v31 = v30;
    v32 = sub_19A7A9364();
    v33 = sub_19A7AB584();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v30;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_19A5EE000, v32, v33, "Failed to execute launch request: %@", v34, 0xCu);
      sub_19A5F2B54(v35, &unk_1EAFCD7D0);
      MEMORY[0x19A907A30](v35, -1, -1);
      MEMORY[0x19A907A30](v34, -1, -1);
    }

    else
    {
    }
  }

  v38 = v0[1];

  return v38();
}

unint64_t sub_19A5F34CC()
{
  result = qword_1ED8B3758;
  if (!qword_1ED8B3758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8B3758);
  }

  return result;
}

uint64_t sub_19A5F3518()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[9];

  v4 = *(v3 + OBJC_IVAR___STKPrewarmingViewController_assertion);
  *(v3 + OBJC_IVAR___STKPrewarmingViewController_assertion) = v2;
  v5 = v2;

  v6 = *(v3 + OBJC_IVAR___STKPrewarmingViewController_processHandle);
  *(v3 + OBJC_IVAR___STKPrewarmingViewController_processHandle) = v1;
  v7 = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A5F35F4, 0, 0);
}

uint64_t sub_19A5F35F4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_19A5F36AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t storeEnumTagSinglePayload for BarnDoorShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_19A5F37CC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

StickerKit::EmojiKeyboardPrewarmAuditor __swiftcall EmojiKeyboardPrewarmAuditor.init()()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  *v1 = v2;
  result.userDefaults._container_ = v5;
  result.userDefaults._identifier_ = v4;
  result.userDefaults._kvo_ = v3;
  result.userDefaults.super.isa = v2;
  return result;
}

uint64_t sub_19A5F382C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_19A7AAFE4();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = sub_19A7A8EF4();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_19A5F2B54(v12, &unk_1EAFCD750);
    v9 = sub_19A7A8EF4();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

id sub_19A5F398C()
{
  v1 = *v0;
  v2 = sub_19A7AAFE4();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_19A5F3A98();
    if (swift_dynamicCast())
    {
      v4 = [v6 integerValue];

      return v4;
    }
  }

  else
  {
    sub_19A5F2B54(v9, &unk_1EAFCD750);
  }

  return 0;
}

unint64_t sub_19A5F3A98()
{
  result = qword_1ED8B1FE0;
  if (!qword_1ED8B1FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8B1FE0);
  }

  return result;
}

uint64_t sub_19A5F3AE4()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCAA50);
  __swift_project_value_buffer(v0, qword_1EAFCAA50);
  return sub_19A7A9374();
}

uint64_t sub_19A5F3B7C()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1ED8B21C0);
  __swift_project_value_buffer(v0, qword_1ED8B21C0);
  return sub_19A7A9374();
}

uint64_t sub_19A5F3BFC()
{
  v42 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[27];
  (*(*v5 + 376))();
  v6 = sub_19A7AABD4();
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  (*(v4 + 104))(v2, *MEMORY[0x1E69D4728], v3);
  sub_19A7AAC24();
  v7 = v5[5];
  v8 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v7);
  (*(v8 + 8))(v7, v8);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_19A7AABA4();
  v9 = v0[30];
  v10 = v0[27];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v11 = *(v10 + 112);
  v12 = swift_task_alloc();
  *(v12 + 16) = v10;
  *(v12 + 24) = v9;
  v13 = swift_task_alloc();
  *(v13 + 16) = sub_19A6FB5EC;
  *(v13 + 24) = v12;
  os_unfair_lock_lock(v11 + 4);
  sub_19A6FB608(&v41);
  os_unfair_lock_unlock(v11 + 4);
  LOBYTE(v10) = v41;

  if (v10)
  {
    v15 = v0[36];
    v14 = v0[37];
    v16 = v0[35];
    v17 = v0[29];
    v18 = v0[27];
    v39 = v0[28];
    v40 = v0[30];
    v19 = v5[5];
    v20 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v19);
    (*(v20 + 32))(v19, v20);
    __swift_destroy_boxed_opaque_existential_1((v0 + 12));
    (*(v15 + 8))(v14, v16);
    swift_beginAccess();
    v21 = *(v18 + 72);
    v22 = *(v17 + 8);

    v22(v40, v39);
  }

  else
  {
    if (qword_1ED8B21B8 != -1)
    {
      swift_once();
    }

    v23 = sub_19A7A9384();
    __swift_project_value_buffer(v23, qword_1ED8B21C0);

    v24 = sub_19A7A9364();
    v25 = sub_19A7AB574();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      v27 = *(sub_19A6F18CC() + 16);

      *(v26 + 4) = v27;

      _os_log_impl(&dword_19A5EE000, v24, v25, "Did load %ld user stickers", v26, 0xCu);
      MEMORY[0x19A907A30](v26, -1, -1);
    }

    else
    {
    }

    v29 = v0[29];
    v28 = v0[30];
    v30 = v0[28];
    sub_19A6FA968();
    (*(v29 + 8))(v28, v30);
    v32 = v0[36];
    v31 = v0[37];
    v33 = v0[35];
    v34 = v0[27];
    v35 = v5[5];
    v36 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v35);
    (*(v36 + 32))(v35, v36);
    __swift_destroy_boxed_opaque_existential_1((v0 + 7));
    (*(v32 + 8))(v31, v33);
    swift_beginAccess();
    v21 = *(v34 + 72);
  }

  v37 = v0[1];

  return v37(v21);
}

uint64_t sub_19A5F4258()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for FamilyVariantSelectorPopupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_19A7A9954();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for VariantSelectorView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_19A7A9954();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for StickerCell();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC558);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_19A7A9FF4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  j__swift_release();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroyTm_4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroyTm_6()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroyTm_7()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_9()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5F498C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF928);
    v4 = sub_19A7AB294();
    v5 = v4;
    *(v4 + 16) = a2;
    v6 = *(v3 + 32);
    v7 = *(v3 + 16);
    *(v4 + 32) = *v3;
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    v8 = a2 - 1;
    if (v8)
    {
      v9 = v4 + 72;
      do
      {
        sub_19A5F4F70(v3, v12);
        v10 = *v3;
        v11 = *(v3 + 16);
        *(v9 + 32) = *(v3 + 32);
        *v9 = v10;
        *(v9 + 16) = v11;
        v9 += 40;
        --v8;
      }

      while (v8);
    }

    sub_19A5F4F70(v3, v12);
    return v5;
  }

  return result;
}

char *sub_19A5F4A54()
{
  if (qword_1ED8B21D8 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v0 = sub_19A7A9384();
    __swift_project_value_buffer(v0, qword_1ED8B21E0);
    v1 = sub_19A7A9364();
    v2 = sub_19A7AB5A4();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_19A5EE000, v1, v2, "Loading categories", v3, 2u);
      MEMORY[0x19A907A30](v3, -1, -1);
    }

    v4 = sub_19A7AAFE4();
    v5 = [objc_opt_self() emojiLocaleDataWithLocaleIdentifier_];

    result = [objc_opt_self() categoryIdentifierList];
    if (!result)
    {
      break;
    }

    v7 = result;
    v8 = sub_19A7AB254();

    MEMORY[0x1EEE9AC00](v9);
    v23[2] = v5;
    v10 = sub_19A5F4D34(sub_19A5F5274, v23, v8);
    v23[5] = 0;

    v11 = 0;
    v12 = *(v10 + 16);
    v13 = MEMORY[0x1E69E7CC0];
LABEL_6:
    v14 = v10 + 16 + 40 * v11;
    while (1)
    {
      if (v12 == v11)
      {

        return v13;
      }

      if (v11 >= *(v10 + 16))
      {
        break;
      }

      ++v11;
      v15 = (v14 + 40);
      v16 = *(v14 + 24);
      v14 += 40;
      if (v16)
      {
        v24 = *(v15 - 3);
        v25 = *(v15 - 1);
        v26 = v5;
        v17 = *v15;
        v18 = v15[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_19A76BBBC(0, *(v13 + 2) + 1, 1, v13);
        }

        v20 = *(v13 + 2);
        v19 = *(v13 + 3);
        if (v20 >= v19 >> 1)
        {
          v13 = sub_19A76BBBC((v19 > 1), v20 + 1, 1, v13);
        }

        *(v13 + 2) = v20 + 1;
        v21 = &v13[40 * v20];
        v22 = v25;
        *(v21 + 4) = v24;
        *(v21 + 5) = v16;
        *(v21 + 6) = v22;
        *(v21 + 7) = v17;
        *(v21 + 8) = v18;
        v5 = v26;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_19A5F4D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = xmmword_19A7B9180;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v26 = sub_19A5F498C(&v22, *(a3 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF140);
  *(swift_initStackObject() + 16) = 0;
  sub_19A5F5028(0, &qword_1ED8B2040);
  sub_19A7AB764();
  v5 = 0;
  v6 = v26;
  v7 = v26 + 16;
  v8 = *(v26 + 16);
  v9 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = v7 + 40 * v5;
  while (1)
  {
    if (v8 == v5)
    {

      return v9;
    }

    if (v5 >= *(v6 + 16))
    {
      break;
    }

    ++v5;
    v11 = (v10 + 40);
    v12 = *(v10 + 24);
    v10 += 40;
    if (v12 != 1)
    {
      v13 = *(v11 - 3);
      v19 = *v11;
      v20 = *(v11 - 1);
      v18 = v11[1];
      sub_19A5F58FC(v13, v12);
      v21 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_19A76BCDC(0, v9[2] + 1, 1, v9);
      }

      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        v9 = sub_19A76BCDC((v14 > 1), v15 + 1, 1, v9);
      }

      v9[2] = v15 + 1;
      v16 = &v9[5 * v15];
      v16[4] = v13;
      v16[5] = v12;
      v16[6] = v20;
      v16[7] = v19;
      v16[8] = v18;
      v4 = v21;
      goto LABEL_2;
    }
  }

  __break(1u);
  swift_willThrowTypedImpl();

  __break(1u);
  return result;
}

uint64_t sub_19A5F4F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF928);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A5F4FE0(uint64_t a1, int a2)
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

uint64_t sub_19A5F5028(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_19A5F5080(unint64_t result, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, uint64_t a4, os_unfair_lock_s *a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a4 + 16) > result)
  {
    v7 = a4 + 16 * result;
    v8 = *(v7 + 40);
    v12[0] = *(v7 + 32);
    v12[1] = v8;

    a2(v13, v12);

    v10 = MEMORY[0x1EEE9AC00](v9);
    MEMORY[0x1EEE9AC00](v10);
    os_unfair_lock_lock(a5 + 4);
    sub_19A5F57B8(v11);
    os_unfair_lock_unlock(a5 + 4);
    return sub_19A5F594C(v13[0], v13[1]);
  }

  __break(1u);
  return result;
}

void sub_19A5F5294(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v33 = *a1;
  v6 = sub_19A7AAFE4();
  v7 = [objc_opt_self() categoryWithIdentifier_];

  if (!v7)
  {
    if (qword_1ED8B21D8 == -1)
    {
LABEL_19:
      v27 = sub_19A7A9384();
      __swift_project_value_buffer(v27, qword_1ED8B21E0);

      v28 = sub_19A7A9364();
      v29 = sub_19A7AB5A4();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v34[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_19A62540C(v33, v5, v34);
        _os_log_impl(&dword_19A5EE000, v28, v29, "Failed to load category for identifier %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x19A907A30](v31, -1, -1);
        MEMORY[0x19A907A30](v30, -1, -1);
      }

      goto LABEL_25;
    }

LABEL_27:
    swift_once();
    goto LABEL_19;
  }

  v8 = [v7 emojiTokensForLocaleData_];
  if (v8)
  {
    v9 = v8;
    sub_19A5F5028(0, &qword_1ED8B2068);
    v10 = sub_19A7AB254();

    if (!(v10 >> 62))
    {
LABEL_4:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_4;
    }
  }

  v11 = sub_19A7ABBE4();
LABEL_5:
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    goto LABEL_15;
  }

  v36 = MEMORY[0x1E69E7CC0];
  sub_19A5F599C(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v32 = a3;
  v13 = 0;
  v12 = v36;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x19A906130](v13, v10);
    }

    else
    {
      v14 = *(v10 + 8 * v13 + 32);
    }

    v15 = v14;
    sub_19A5F59D8(v14, v33, v5, 1, v34);

    v36 = v12;
    v17 = *(v12 + 16);
    v16 = *(v12 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_19A5F599C((v16 > 1), v17 + 1, 1);
      v12 = v36;
    }

    ++v13;
    *(v12 + 16) = v17 + 1;
    v18 = v12 + 56 * v17;
    v19 = v34[0];
    v20 = v34[1];
    v21 = v34[2];
    *(v18 + 80) = v35;
    *(v18 + 48) = v20;
    *(v18 + 64) = v21;
    *(v18 + 32) = v19;
  }

  while (v11 != v13);
  a3 = v32;
LABEL_15:
  if (!*(v12 + 16))
  {

LABEL_25:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v22 = [v7 localizedName];
  if (v22)
  {
    v23 = v22;

    v24 = sub_19A7AB014();
    v26 = v25;

    *a3 = v33;
    *(a3 + 8) = v5;
    *(a3 + 16) = v24;
    *(a3 + 24) = v26;
    *(a3 + 32) = v12;
  }

  else
  {
    __break(1u);
  }
}

char *sub_19A5F5640(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 56);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[56 * v9])
    {
      memmove(v13, v14, 56 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

uint64_t sub_19A5F57D0(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = a3[4];
  v10 = *a1;
  sub_19A5F58FC(*a3, v6);
  result = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_19A787048(v10);
  v10 = result;
  *a1 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v10[2] > a2)
  {
    v12 = &v10[5 * a2];
    v13 = v12[4];
    v14 = v12[5];
    v12[4] = v5;
    v12[5] = v6;
    v12[6] = v7;
    v12[7] = v8;
    v12[8] = v9;
    return sub_19A5F58EC(v13, v14);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_19A5F58EC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_19A5F594C(a1, a2);
  }

  return a1;
}

uint64_t sub_19A5F58FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_19A5F594C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

char *sub_19A5F599C(char *a1, int64_t a2, char a3)
{
  result = sub_19A5F5640(a1, a2, a3, *v3, &qword_1EAFCCF98);
  *v3 = result;
  return result;
}

char *sub_19A5F59D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v7 = a1;
  result = [a1 string];
  if (!result)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v10 = result;
  v69 = sub_19A7AB014();
  v12 = v11;

  if (![v7 supportsSkinToneVariants])
  {
    v17 = 0;
    v18 = 0;
    v19 = -2;
    goto LABEL_54;
  }

  v67 = a2;
  v13 = objc_opt_self();
  v14 = [v7 string];
  v15 = [v13 _baseStringForEmojiString_];

  if (!v15)
  {
    goto LABEL_52;
  }

  v69 = sub_19A7AB014();
  v12 = v16;
  if (a4)
  {
    sub_19A7AA974();
    sub_19A7AA954();
    v66 = sub_19A7AA944();
  }

  else
  {
    v66 = v7;
  }

  if ([objc_opt_self() _isCoupleMultiSkinToneEmoji_])
  {
    v20 = [v13 _coupleSkinToneChooserVariantsForString_];

    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0);
      v17 = sub_19A7AB254();

      v21 = [v66 string];
      v22 = [v13 _skinToneSpecifiersForString_];

      if (v22)
      {
        v63 = v7;
        type metadata accessor for EMFSkinToneSpecifierType(0);
        v23 = sub_19A7AB254();

        v24 = v23[2];
        v61 = v12;
        v62 = a3;
        if (v24 <= 1)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCFB8);
          v23 = swift_allocObject();
          *(v23 + 1) = xmmword_19A7B6C20;
          v25 = *MEMORY[0x1E699BAB8];
          v23[4] = *MEMORY[0x1E699BAB8];
          v23[5] = v25;
          v26 = v25;
          v24 = 2;
        }

        v70 = MEMORY[0x1E69E7CC0];
        sub_19A65AD88(0, v24, 0);
        v27 = 4;
        v18 = v70;
        do
        {
          v28 = v23[v27];
          v29 = sub_19A786C18();
          v31 = v30;

          v33 = *(v70 + 16);
          v32 = *(v70 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_19A65AD88((v32 > 1), v33 + 1, 1);
          }

          *(v70 + 16) = v33 + 1;
          v34 = v70 + 16 * v33;
          *(v34 + 32) = v29;
          *(v34 + 40) = v31 & 1;
          ++v27;
          --v24;
        }

        while (v24);

        v19 = 0x80;
        v7 = v63;
LABEL_50:
        v12 = v61;
        a3 = v62;
        goto LABEL_53;
      }
    }

    else
    {
    }

LABEL_52:
    v17 = 0;
    v18 = 0;
    v19 = -2;
LABEL_53:
    a2 = v67;
LABEL_54:
    v72 = a2;

    MEMORY[0x19A905510](58, 0xE100000000000000);
    result = [v7 string];
    if (result)
    {
      v57 = result;
      v58 = sub_19A7AB014();
      v60 = v59;

      MEMORY[0x19A905510](v58, v60);

      result = [v7 _shouldHighlightEmoji];
      *a5 = v72;
      *(a5 + 8) = a3;
      *(a5 + 16) = v69;
      *(a5 + 24) = v12;
      *(a5 + 32) = v17;
      *(a5 + 40) = v18;
      *(a5 + 48) = v19;
      *(a5 + 49) = result;
      return result;
    }

    goto LABEL_62;
  }

  v62 = a3;

  v35 = MEMORY[0x1E69E7CC0];
  v71 = MEMORY[0x1E69E7CC0];
  result = [v7 skinToneVariants];
  if (result)
  {
    v36 = result;
    v64 = v7;
    sub_19A5F5028(0, &qword_1ED8B2068);
    v37 = sub_19A7AB254();

    if (v37 >> 62)
    {
      goto LABEL_58;
    }

    for (i = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19A7ABBE4())
    {
      v65 = a5;
      v61 = v12;
      if (!i)
      {
        break;
      }

      result = sub_19A5F6074(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v39 = 0;
      a5 = v35;
      while (1)
      {
        v35 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if ((v37 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x19A906130](v39, v37);
        }

        else
        {
          if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v40 = *(v37 + 8 * v39 + 32);
        }

        v41 = v40;
        result = [v40 string];
        if (!result)
        {
          goto LABEL_60;
        }

        v42 = result;
        v43 = sub_19A7AB014();
        v12 = v44;

        v46 = *(a5 + 16);
        v45 = *(a5 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_19A5F6074((v45 > 1), v46 + 1, 1);
        }

        *(a5 + 16) = v46 + 1;
        v47 = a5 + 16 * v46;
        *(v47 + 32) = v43;
        *(v47 + 40) = v12;
        ++v39;
        if (v35 == i)
        {

          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      ;
    }

    a5 = MEMORY[0x1E69E7CC0];
LABEL_36:
    sub_19A5F62AC(a5);
    v7 = v64;
    if (a4)
    {
      v48 = [v66 string];
    }

    else
    {
      v48 = [v64 string];
    }

    result = v48;
    a5 = v65;
    if (result)
    {
      v49 = result;
      v50 = sub_19A7AB014();
      v52 = v51;

      v17 = v71;
      v53 = *(v71 + 16);
      v54 = v53 == 0;
      v18 = 0;
      if (v53)
      {
        v55 = (v71 + 40);
        while (1)
        {
          v56 = *(v55 - 1) == v50 && *v55 == v52;
          if (v56 || (sub_19A7AC064() & 1) != 0)
          {
            break;
          }

          ++v18;
          v55 += 2;
          v54 = v53 == v18;
          if (v53 == v18)
          {
            v18 = 0;
            break;
          }
        }
      }

      v19 = v54;
      goto LABEL_50;
    }

    goto LABEL_64;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

char *sub_19A5F6074(char *a1, int64_t a2, char a3)
{
  result = sub_19A5F6094(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19A5F6094(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120);
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

char *sub_19A5F61A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120);
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

uint64_t sub_19A5F62AC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_19A5F61A0(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for BarnDoorShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *sub_19A5F63E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_19A5F640C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_19A5F6484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19A7AB014();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_19A5F64C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A5F64E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_19A5F6558(uint64_t a1, const void *a2)
{
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  v7 = _Block_copy(a2);
  sub_19A7A9024();
  (*(v5 + 8))(v6, v4);
  v7[2](v7, 0);
  _Block_release(v7);

  v8 = *(v2 + 8);

  return v8();
}

uint64_t sub_19A5F667C(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_19A5F66FC()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5F6750()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5F67D4()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5F680C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5F684C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5F68B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5F6904()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5F6980()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5F69EC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5F6A3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5F6A7C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5F6AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A5F6B38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A5F6BA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  sub_19A60F01C(v5, v4);
  return sub_19A61AF98(a1);
}

uint64_t sub_19A5F6C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v9[0] = *a1;
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v9[1] = v1;
  v9[2] = v4;
  v10 = *(a1 + 48);
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  sub_19A60F01C(v9, v6);
  return sub_19A61B42C(v7);
}

uint64_t sub_19A5F6D18(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF350);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_19A5F6DD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF350);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A5F6E9C()
{
  v1 = (type metadata accessor for FamilyVariantSelectorPopupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_19A7A98B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_19A7A9954();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v8, v11 | 7);
}

uint64_t sub_19A5F7054()
{
  v1 = (type metadata accessor for FamilyVariantSelectorPopupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_19A7A9954();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 88, v2 | 7);
}

uint64_t sub_19A5F719C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC5A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19A5F7264(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC5A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A5F732C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5F7370()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5F73B0()
{
  v1 = *(type metadata accessor for FamilyVariantSelectorView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_19A7A97A4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19A5F74F0()
{
  v1 = *(type metadata accessor for FamilyVariantSelectorView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_19A7A97A4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_19A5F764C()
{
  v1 = *(type metadata accessor for FamilyVariantSelectorView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_19A7A97A4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19A5F7794()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5F783C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A5F78AC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_19A5F7964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF350);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 76);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_19A7AB804();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 84);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_19A5F7A94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF350);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 76);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_19A7AB804();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 84);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_19A5F7BC4()
{
  v1 = type metadata accessor for PopupView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_19A7A9954();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 84);
  v9 = sub_19A7AB804();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3 + 2, v2 | 7);
}

uint64_t sub_19A5F7D50()
{
  v1 = type metadata accessor for PopupView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v16 = *(*(v1 - 8) + 64);
  v4 = sub_19A7A98B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;

  v9 = *(v1 + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_19A7A9954();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = (v3 + v16 + v6) & ~v6;
  v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;

  v13 = *(v1 + 84);
  v14 = sub_19A7AB804();
  (*(*(v14 - 8) + 8))(v8 + v13, v14);
  (*(v5 + 8))(v0 + v11, v4);

  return MEMORY[0x1EEE6BDD0](v0, v12 + 9, v2 | v6 | 7);
}

uint64_t sub_19A5F7F8C()
{
  v1 = type metadata accessor for PopupView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v16 = *(*(v1 - 8) + 64);
  v4 = sub_19A7A98B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;

  v9 = *(v1 + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_19A7A9954();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = (v3 + v16 + v6) & ~v6;
  v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;

  v13 = *(v1 + 84);
  v14 = sub_19A7AB804();
  (*(*(v14 - 8) + 8))(v8 + v13, v14);
  (*(v5 + 8))(v0 + v11, v4);

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | v6 | 7);
}

uint64_t sub_19A5F81BC()
{
  sub_19A7AB804();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC8E0);
  swift_getTupleTypeMetadata2();
  sub_19A7AA724();
  swift_getWitnessTable();
  sub_19A7AA514();
  sub_19A7A9994();
  sub_19A7A9994();
  swift_getTupleTypeMetadata2();
  sub_19A7AA724();
  swift_getWitnessTable();
  sub_19A7AA514();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCC588);
  sub_19A7A9994();
  sub_19A7A9994();
  swift_getWitnessTable();
  sub_19A623714(&qword_1EAFCC8E8, &qword_1EAFCC588);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for FullScreenView();
  sub_19A7A9994();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_19A7A9994();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_19A7A98F4();
  sub_19A7A9994();
  sub_19A631F48(&qword_1EAFCC8F0, MEMORY[0x1E6969F20]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_19A7A9A34();
  return swift_getWitnessTable();
}

uint64_t sub_19A5F8610()
{
  swift_getOpaqueTypeMetadata2();
  sub_19A7A9D74();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_19A5F8718(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_19A633100(v1, v2);
}

uint64_t sub_19A5F87A8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF350);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

void *sub_19A5F8864(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF350);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A5F893C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5F8974()
{
  v1 = (type metadata accessor for VariantSelectorView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_19A7A9954();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_19A5F8B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCBE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19A5F8BE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCBE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A5F8CC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5F8D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCBE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19A5F8DD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCBE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A5F8EA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  sub_19A60F01C(v5, v4);
  return sub_19A63F030(a1);
}

uint64_t sub_19A5F8F58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_19A63F418(v1, v2);
}

uint64_t sub_19A5F8FBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_19A5F9010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCBE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19A5F90D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCBE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A5F91F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5F9230()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5F9278()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5F92D0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5F9320()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5F9360()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5F93F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC10StickerKit26AvatarEditorViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_19A5F9450(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC10StickerKit26AvatarEditorViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_19A5F94B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A7A9304();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19A5F9570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19A7A9304();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A5F962C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_19A5F96E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_19A5F9798@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_19A5F97F4(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA8);

  return v2(v3);
}

uint64_t sub_19A5F985C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5F98AC()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5F993C()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5F9974()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5F99AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5F99EC()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_19A5F9A40@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_19A5F9A88@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_19A5F9B38()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5F9B90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_19A5F9BD8()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5F9C10()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_19A5F9C48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_19A5F9D2C()
{
  v1 = sub_19A7A9094();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19A5F9E00()
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD710);
  v0 = *(v21 - 8);
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD718);
  v3 = *(v20 - 8);
  v4 = *(v3 + 80);
  v5 = (((v1 + 16) & ~v1) + v2 + v4) & ~v4;
  v18 = v5;
  v6 = *(v3 + 64);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD720);
  v7 = *(v19 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD708);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = (v9 + v10 + v13) & ~v13;
  v17 = *(v12 + 64);
  v15 = v1 | v4 | v8 | v13;
  (*(v0 + 8))(v22 + ((v1 + 16) & ~v1), v21);
  (*(v3 + 8))(v22 + v18, v20);
  (*(v7 + 8))(v22 + v9, v19);
  (*(v12 + 8))(v22 + v14, v11);

  return MEMORY[0x1EEE6BDD0](v22, v14 + v17, v15 | 7);
}

uint64_t sub_19A5FA094()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD6F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v17 = (v3 + 16) & ~v3;
  v18 = v1;
  v4 = *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD6F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v17 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD700);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v16 = *(v11 + 64);
  v14 = v3 | v7 | v12;
  (*(v2 + 8))(v0 + v17, v18);
  (*(v6 + 8))(v0 + v8, v5);
  (*(v11 + 8))(v0 + v13, v10);

  return MEMORY[0x1EEE6BDD0](v0, v13 + v16, v14 | 7);
}

uint64_t sub_19A5FA28C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5FA2CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FA318()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FA350()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5FA390()
{
  swift_unknownObjectRelease();

  sub_19A612F14(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_19A5FA3E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FA418()
{
  sub_19A612F14(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5FA458()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FA490()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FA4E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5FA530()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FA570()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FA5C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FA5FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5FA698()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FA6D0()
{
  v1 = sub_19A7A8FF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19A5FA7EC()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FA83C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FA874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDC18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A5FA8E4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FA91C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FA964()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FA9A8()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FA9E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5FAA38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_disableInsets;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19A5FAA90(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_disableInsets;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_19A5FAAE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10StickerKit27StickerSearchViewController_hostAppID);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_19A5FAB98()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5FAC30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDE58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A5FACA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5FACE0()
{
  v1 = sub_19A7A99F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 40, v3 | 7);
}

uint64_t sub_19A5FAD80()
{
  v1 = sub_19A7A99F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 40, v3 | 7);
}

uint64_t sub_19A5FAE5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FAE9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19A5FAF00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19A7A9AE4();
  *a1 = result;
  return result;
}

double sub_19A5FAF58@<D0>(_OWORD *a1@<X8>)
{
  sub_19A6BABA8();
  sub_19A7A9B44();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_19A5FAFAC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19A5FB0A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FB0E4()
{
  v1 = sub_19A7AB744();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19A5FB1B0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FB1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC5A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_19A5FB2B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC5A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A5FB368(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC5A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19A5FB424(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC5A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A5FB4D8()
{
  Button = type metadata accessor for CreateButton(0);
  v2 = *(*(Button - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(Button - 8) + 64);

  v5 = *(Button + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_19A7A97A4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19A5FB650()
{
  v1 = (type metadata accessor for IntelligenceLightEffect(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_19A7A97A4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19A5FB76C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE0C0);
  sub_19A6BB814();
  sub_19A6BB8CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19A5FB7EC()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_19A5FB834()
{
  sub_19A7A9E14();
  sub_19A6BA204(&qword_1EAFCC7C8, MEMORY[0x1E697C8D0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19A5FB8E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STKStickerEffect_type;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19A5FB940(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STKStickerEffect_type;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_19A5FB9DC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FBA14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE398);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19A5FBAB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FBAE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FBB28()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19A5FBB60()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FBBDC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___STKStickerView_usageSource);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_19A5FBC6C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR___STKStickerView_dragInteraction);
  if (result)
  {
    result = [result isEnabled];
  }

  *a2 = result;
  return result;
}

uint64_t sub_19A5FBD0C()
{
  v1 = sub_19A7A8F64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19A5FBDD0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5FBE1C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FBE54()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FBE8C()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FBEC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_19A5FBEFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_19A5FBF44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FBF94()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5FBFD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19A5FC020()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5FC058()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19A5FC0A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5FC118()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5FC168@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_19A5FC228()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FC264()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5FC2A4()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5FC2F4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FC334()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FC36C()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5FC3B4()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FC3EC()
{
  v1 = sub_19A7AA8A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_19A5FC4D0()
{
  sub_19A612F14(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FC508()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5FC558()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5FC5A8()
{
  v1 = sub_19A7AA8A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  v5 = *(v0 + 32);
  if (v5 >> 60 != 15)
  {
    sub_19A612F14(*(v0 + 24), v5);
  }

  v6 = (v3 + 48) & ~v3;

  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_19A5FC6B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___STKEmojiGenerationRemoteController_searchQuery);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_19A5FC710@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_19A5FC7C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_19A5FC810()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FC84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_19A5FC914(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A5FC9C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FCA04()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FCA40()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FCA78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19A5FCB00()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FCB40()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FCBEC()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19A5FCC4C()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_19A5FCCB4()
{
  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19A5FCD14()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5FCD88(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_selection;
  if (*(*(a1 + OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_selection) + 16))
  {
    v3 = *(a1 + OBJC_IVAR____TtC10StickerKit24StickerPhotosCoordinator_picker);
    if (v3)
    {
      v4 = v3;

      v5 = sub_19A7AB234();

      [v4 deselectAssetsWithIdentifiers_];
    }

    *(a1 + v2) = MEMORY[0x1E69E7CC0];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong stickerPhotosViewControllerShouldDismiss];
      swift_unknownObjectRelease();
    }

    v9 = [v7 _hostedWindowScene];
    if (v9)
    {
      v10 = v9;
      v11 = sub_19A6DF108(0, 0, 0xE000000000000000, 0, 0);
      [v10 sendAction_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_19A5FCF08()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FCF40()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FCF84()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FCFCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FD004()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FD03C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5FD07C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FD0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_19A5FD17C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A5FD22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_19A7A9384();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19A5FD2D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_19A7A9384();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A5FD37C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC10StickerKit32AvatarEditorRemoteViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_19A5FD3D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC10StickerKit32AvatarEditorRemoteViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_19A5FD44C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FD4A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5FD4E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5FD51C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FD554()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19A5FD5B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5FD5F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FD62C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEF00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19A5FD6C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FD70C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5FD754()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5FD794()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FD7CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FD804()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FD83C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5FD87C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FD8B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FD8F4(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_19A5FD970(int a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 0);
  _Block_release(v4);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_19A5FD9EC(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_19A7A9094();
  v6 = *(v5 - 8);
  v7 = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = _Block_copy(a3);
  sub_19A7A9024();
  sub_19A7A9024();
  v10 = *(v6 + 8);
  v10(v7, v5);
  v10(v8, v5);
  v9[2](v9, 0);
  _Block_release(v9);

  v11 = *(v3 + 8);

  return v11();
}

uint64_t sub_19A5FDB50()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FDB88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5FDC80()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FDCB8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FDCF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19A5FDD48()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5FDD88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FDDC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A5FDE18(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF340);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[8];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC5A0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[13];
      goto LABEL_3;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF350);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[14];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_19A5FDFAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF340);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC5A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF350);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[14];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_19A5FE140@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19A7A9654();
  *a1 = result;
  return result;
}

uint64_t sub_19A5FE1E8()
{
  v1 = type metadata accessor for CategoryBar(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[8];
  v7 = sub_19A7A9094();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF340);

  v8 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_19A7A97A4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_19A7A9954();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19A5FE52C()
{
  v1 = type metadata accessor for CategoryBar(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(v1 - 1) + 64);
  v4 = sub_19A7A98B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;

  v9 = v0 + v3 + v1[8];
  v10 = sub_19A7A9094();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF340);

  v11 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_19A7A97A4();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_19A7A9954();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
  }

  v15 = (v6 + ((((((v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6;

  (*(v5 + 8))(v0 + v15, v4);

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | 7);
}

uint64_t sub_19A5FE83C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FE92C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19A7A9A84();
  *a1 = result;
  return result;
}

uint64_t sub_19A5FE9DC()
{
  v1 = type metadata accessor for CategoryBar(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[8];
  v7 = sub_19A7A9094();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF340);

  v8 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_19A7A97A4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_19A7A9954();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_19A5FED0C()
{
  v1 = sub_19A7A9094();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19A5FEDD8()
{
  v1 = type metadata accessor for CategoryBar(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[8];
  v7 = sub_19A7A9094();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF340);

  v8 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_19A7A97A4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_19A7A9954();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19A5FF034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_19A7A98B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19A5FF0E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_19A7A98B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19A5FF184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF350);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_19A7A98B4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 40);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_19A5FF2A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF350);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_19A7A98B4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 40);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_19A5FF3FC()
{
  v1 = type metadata accessor for DrillDownContainer();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_19A7A9954();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 40);
  v8 = sub_19A7A98B4();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v5 + *(v1 + 44));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19A5FF584()
{
  type metadata accessor for ClipShapeModifier();
  swift_getWitnessTable();
  sub_19A7A9DB4();
  sub_19A7A9994();
  sub_19A7A9824();
  sub_19A7A9994();
  sub_19A7A9994();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_19A5FF738()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCF638);
  sub_19A7AA4F4();
  swift_getTupleTypeMetadata2();
  sub_19A7AA724();
  swift_getWitnessTable();
  sub_19A7AA4D4();
  sub_19A7A9994();
  sub_19A7A9994();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_19A5FF890()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FF8EC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5FF934()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FF96C()
{
  v1 = sub_19A7A98B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19A5FFA88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FFAC0()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FFB04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5FFB44()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_19A5FFBA4()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FFBDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FFC2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5FFC84()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5FFCD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FFD0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FFD54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A5FFD8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FFDC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FFE08()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5FFE64()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A5FFE9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19A5FFEEC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_19A5FFFA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A5FFFE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

BOOL sub_19A600028@<W0>(_BYTE *a1@<X8>)
{
  result = sub_19A778764();
  *a1 = result;
  return result;
}

uint64_t sub_19A600080()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A6000D0()
{
  v1 = sub_19A7A9094();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19A60019C()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A6001D4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 100, 15);
}

uint64_t sub_19A60022C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t sub_19A60026C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A6002AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A6002EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A600328()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_19A600378()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A6003CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_19A600428(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC10StickerKit25StickerEditViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_19A6004A8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_19A600560()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A600598()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19A6005D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A600614()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A60064C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A600694@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_19A6006F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC10StickerKit33StickerRemotePhotosViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_19A600754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCFF10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19A600820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCFF10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19A6008E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC5A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19A600960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC5A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19A6009DC()
{
  v1 = *(type metadata accessor for PhotoConfirmationMiniTipView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFFA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_19A7A9934();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19A600B20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19A7A9AE4();
  *a1 = result;
  return result;
}

uint64_t sub_19A600B78@<X0>(uint64_t a1@<X8>)
{
  result = sub_19A7A9B04();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_19A600BEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_19A79475C(v1, v2);
}

uint64_t sub_19A600C38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STKImageGlyphViewConfiguration_userInterfaceIdiom;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19A600C90(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STKImageGlyphViewConfiguration_userInterfaceIdiom;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_19A600DC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19A600E04()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A600E3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A600E7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10StickerKit10LiveButton_isLive;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_19A600ED4(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10StickerKit10LiveButton_isLive;
  swift_beginAccess();
  v3[v4] = v2;
  return [v3 setNeedsUpdateConfiguration];
}

uint64_t sub_19A600F98()
{
  MEMORY[0x19A907B20](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A600FD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19A60101C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_disableInsets;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19A601074(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_disableInsets;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_19A6010C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_19A601134@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10StickerKit44LocalEmojiAndStickerCollectionViewController_hostAppID);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_19A601198()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19A6011E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19A60126C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19A60138C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double CKSquareCropRectForSize(double a1, double a2)
{
  v2 = a1 > a2;
  if (a1 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  v4 = v3;
  v5 = (a1 - v4) * 0.5;
  result = rintf(v5);
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

CGImageRef CKCreateSquareCroppedImageRef(void *a1)
{
  if (!a1)
  {
    return a1;
  }

  itk_sizeForCGImage();
  if (v2 == v3)
  {
    CFRetain(a1);
    return a1;
  }

  v5 = CKSquareCropRectForSize(v2, v3);

  return CGImageCreateWithImageInRect(a1, *&v5);
}

uint64_t _CreateThumbnailWithJPEGForMaxDimension(double a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = os_log_create("com.apple.VisionKit", "com.apple.StickerKit.stickerData");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_19A5EE000, v2, OS_LOG_TYPE_DEFAULT, "taking fast jpeg path", v7, 2u);
  }

  if (a1 <= 0.0)
  {
    v4 = 0;
  }

  else
  {
    v9[0] = *MEMORY[0x1E696E100];
    v3 = [MEMORY[0x1E696AD98] numberWithLong:{fmin(a1, 4.61168602e18)}];
    v9[1] = *MEMORY[0x1E696E000];
    v10[0] = v3;
    v10[1] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  if (CMPhotoJPEGCreateCGImageFromJPEG())
  {
    v5 = 0;
    v8 = 0;
  }

  else
  {
    v5 = v8;
  }

  return v5;
}

CGImageRef _CreateThumbnailWithImageSourceAtIndexForMaxDimension(CGImageSource *a1, size_t a2, double a3)
{
  v17[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  if (a3 == 0.0)
  {
    v5 = *MEMORY[0x1E696E138];
    v16[0] = *MEMORY[0x1E696E0E8];
    v16[1] = v5;
    v17[0] = MEMORY[0x1E695E118];
    v17[1] = MEMORY[0x1E695E118];
    v16[2] = *MEMORY[0x1E696E0A8];
    v17[2] = MEMORY[0x1E695E118];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  }

  else
  {
    v8 = MEMORY[0x1E695E118];
    v9 = *MEMORY[0x1E696DFE8];
    v14[0] = *MEMORY[0x1E696E0E8];
    v14[1] = v9;
    v15[0] = MEMORY[0x1E695E118];
    v15[1] = MEMORY[0x1E695E118];
    v14[2] = *MEMORY[0x1E696E100];
    v10 = [MEMORY[0x1E696AD98] numberWithLong:{fmin(a3, 4.61168602e18)}];
    v11 = *MEMORY[0x1E696E000];
    v15[2] = v10;
    v15[3] = v8;
    v12 = *MEMORY[0x1E696E138];
    v14[3] = v11;
    v14[4] = v12;
    v14[5] = *MEMORY[0x1E696E0A8];
    v15[4] = v8;
    v15[5] = v8;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:6];
  }

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(a1, a2, v6);

  return ThumbnailAtIndex;
}

CGImageRef _CreateThumbnailFromHEICSWithMaxDimension(CGImageSource *a1, size_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696E138];
  v8[0] = *MEMORY[0x1E696E0E8];
  v8[1] = v4;
  v9[0] = MEMORY[0x1E695E118];
  v9[1] = MEMORY[0x1E695E118];
  v8[2] = *MEMORY[0x1E696E0A8];
  v9[2] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, a2, v5);

  return ImageAtIndex;
}

uint64_t __ITKMainScreenScale_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  ITKMainScreenScale_sMainScreenScale = v1;
  return result;
}

void sub_19A603354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXUIAvatarUtilitiesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityUIUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E751A308;
    v6 = 0;
    AccessibilityUIUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AccessibilityUIUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("AXUIAvatarUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXUIAvatarUtilitiesClass_block_invoke_cold_1();
  }

  getAXUIAvatarUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUIUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilityUIUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_19A6036A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLSPlugInKitProxyClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E751A348;
    v6 = 0;
    CoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("LSPlugInKitProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLSPlugInKitProxyClass_block_invoke_cold_1();
  }

  getLSPlugInKitProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}

id _SKIKeyboardLog()
{
  if (_SKIKeyboardLog_onceToken != -1)
  {
    _SKIKeyboardLog_cold_1();
  }

  v1 = _SKIKeyboardLog_log;

  return v1;
}

void sub_19A607A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGImageRef _STKStickerCreateSquareSticker(CGImage *a1, size_t a2)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (Width <= Height)
  {
    v6 = Height;
  }

  else
  {
    v6 = Width;
  }

  v7 = 1.0;
  if (v6 >= a2 && v6 != 0)
  {
    v7 = a2 / v6;
  }

  return _STKStickerCreateFramedSizedSticker(a1, a2, a2, (v7 * Width), (v7 * Height));
}

double _STKStickerImageScaleForMaxLength(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  result = 1.0;
  if (v3 >= a3 && v3 != 0)
  {
    return a3 / v3;
  }

  return result;
}

CGImageRef _STKStickerCreateFramedSizedSticker(CGImage *a1, size_t a2, size_t a3, unint64_t a4, unint64_t a5)
{
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = CGBitmapContextCreate(0, a2, a3, 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextSetInterpolationQuality(v12, kCGInterpolationHigh);
  v15.origin.x = vcvtd_n_f64_u64(a2 - a4, 1uLL);
  v15.origin.y = vcvtd_n_f64_u64(a3 - a5, 1uLL);
  v15.size.width = a4;
  v15.size.height = a5;
  CGContextDrawImage(v12, v15, a1);
  Image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  return Image;
}

uint64_t sub_19A608DA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A608DC8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
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

uint64_t sub_19A608E2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A608E4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_19A608FD4(uint64_t a1)
{
  v2 = sub_19A609E48(&qword_1EAFCBDA0, type metadata accessor for MTLCommandBufferError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_19A609040(uint64_t a1)
{
  v2 = sub_19A609E48(&qword_1EAFCBDA0, type metadata accessor for MTLCommandBufferError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_19A6090B0(uint64_t a1)
{
  v2 = sub_19A609E48(&qword_1EAFCC4F0, type metadata accessor for MTLCommandBufferError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_19A609124()
{
  v1 = *v0;
  sub_19A7AC184();
  MEMORY[0x19A9065D0](v1);
  return sub_19A7AC1B4();
}

uint64_t sub_19A60916C()
{
  v1 = *v0;
  sub_19A7AC184();
  MEMORY[0x19A9065D0](v1);
  return sub_19A7AC1B4();
}

uint64_t sub_19A609268()
{
  sub_19A7AC184();
  swift_getWitnessTable();
  sub_19A7A91B4();
  return sub_19A7AC1B4();
}

uint64_t sub_19A6092D0(uint64_t a1, id *a2)
{
  result = sub_19A7AAFF4();
  *a2 = 0;
  return result;
}

uint64_t sub_19A609348(uint64_t a1, id *a2)
{
  v3 = sub_19A7AB004();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_19A6093C8@<X0>(uint64_t *a1@<X8>)
{
  sub_19A7AB014();
  v2 = sub_19A7AAFE4();

  *a1 = v2;
  return result;
}

uint64_t sub_19A609414(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x19A9035A0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_19A609468(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x19A9035B0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_19A6094F8(uint64_t a1)
{
  v2 = sub_19A609E48(&qword_1EAFCC4F0, type metadata accessor for MTLCommandBufferError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_19A609564(uint64_t a1)
{
  v2 = sub_19A609E48(&qword_1EAFCC4F0, type metadata accessor for MTLCommandBufferError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_19A6095D0(void *a1, uint64_t a2)
{
  v4 = sub_19A609E48(&qword_1EAFCC4F0, type metadata accessor for MTLCommandBufferError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_19A609684(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A609E48(&qword_1EAFCC4F0, type metadata accessor for MTLCommandBufferError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_19A609700()
{
  sub_19A7AC184();
  sub_19A7AAF74();
  return sub_19A7AC1B4();
}

_DWORD *sub_19A609788@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_19A6097A4()
{
  swift_getWitnessTable();

  return sub_19A7A91A4();
}

uint64_t sub_19A609810()
{
  sub_19A609E48(&qword_1EAFCA4B0, type metadata accessor for Key);
  sub_19A609E48(&qword_1EAFCBE30, type metadata accessor for Key);

  return sub_19A7ABEB4();
}

uint64_t sub_19A6098CC()
{
  sub_19A609E48(&qword_1EAFCBC58, type metadata accessor for Name);
  sub_19A609E48(&unk_1EAFCBC60, type metadata accessor for Name);

  return sub_19A7ABEB4();
}

uint64_t sub_19A609988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19A609E48(&qword_1EAFCC4F0, type metadata accessor for MTLCommandBufferError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_19A609A0C()
{
  sub_19A609E48(&qword_1EAFCBE80, type metadata accessor for FeatureKey);
  sub_19A609E48(&qword_1EAFCBE88, type metadata accessor for FeatureKey);

  return sub_19A7ABEB4();
}

uint64_t sub_19A609AC8()
{
  sub_19A609E48(&qword_1EAFCA468, type metadata accessor for AttributeName);
  sub_19A609E48(&qword_1EAFCBC70, type metadata accessor for AttributeName);

  return sub_19A7ABEB4();
}

uint64_t sub_19A609B84()
{
  sub_19A609E48(&qword_1EAFCBDF8, type metadata accessor for CIContextOption);
  sub_19A609E48(&unk_1EAFCBE00, type metadata accessor for CIContextOption);

  return sub_19A7ABEB4();
}

uint64_t sub_19A609C40()
{
  sub_19A609E48(&qword_1EAFCA568, type metadata accessor for IAPayloadKey);
  sub_19A609E48(&qword_1EAFCBE10, type metadata accessor for IAPayloadKey);

  return sub_19A7ABEB4();
}

uint64_t sub_19A609CFC()
{
  sub_19A609E48(&qword_1EAFCBCB0, type metadata accessor for ActivityType);
  sub_19A609E48(&qword_1EAFCBCB8, type metadata accessor for ActivityType);

  return sub_19A7ABEB4();
}

uint64_t sub_19A609E48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A609E90()
{
  sub_19A609E48(&qword_1EAFCBCA0, type metadata accessor for CIImageOption);
  sub_19A609E48(&qword_1EAFCBCA8, type metadata accessor for CIImageOption);

  return sub_19A7ABEB4();
}

uint64_t sub_19A609F4C()
{
  sub_19A609E48(&qword_1EAFCBE18, type metadata accessor for NSKeyValueChangeKey);
  sub_19A609E48(&unk_1EAFCBE20, type metadata accessor for NSKeyValueChangeKey);

  return sub_19A7ABEB4();
}

uint64_t sub_19A60A008()
{
  sub_19A609E48(&qword_1EAFCBE38, type metadata accessor for EMFSkinToneSpecifierType);
  sub_19A609E48(&qword_1EAFCBE40, type metadata accessor for EMFSkinToneSpecifierType);

  return sub_19A7ABEB4();
}

uint64_t sub_19A60A0C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_19A7AAFE4();

  *a1 = v2;
  return result;
}

uint64_t sub_19A60A10C()
{
  sub_19A609E48(&qword_1EAFCBC90, type metadata accessor for TraitKey);
  sub_19A609E48(&qword_1EAFCBC98, type metadata accessor for TraitKey);

  return sub_19A7ABEB4();
}

double sub_19A60A1C8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_19A60A1D4()
{
  sub_19A609E48(&qword_1EAFCBC78, type metadata accessor for Weight);
  sub_19A609E48(&qword_1EAFCBC80, type metadata accessor for Weight);
  sub_19A60A960();
  return sub_19A7ABEB4();
}

uint64_t sub_19A60A29C()
{
  v0 = sub_19A7AB014();
  v1 = MEMORY[0x19A905580](v0);

  return v1;
}

uint64_t sub_19A60A2D8()
{
  sub_19A7AB014();
  sub_19A7AB0B4();
}

uint64_t sub_19A60A32C()
{
  sub_19A7AB014();
  sub_19A7AC184();
  sub_19A7AB0B4();
  v0 = sub_19A7AC1B4();

  return v0;
}

uint64_t sub_19A60A3A8()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x19A9065E0](*&v1);
}

uint64_t sub_19A60A3FC()
{
  v0 = sub_19A7AB014();
  v2 = v1;
  if (v0 == sub_19A7AB014() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_19A7AC064();
  }

  return v5 & 1;
}

unint64_t sub_19A60A960()
{
  result = qword_1EAFCBC88;
  if (!qword_1EAFCBC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCBC88);
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_19A60AA18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A60AA38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_19A60AAC0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A60AAE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_19A60B138()
{
  result = qword_1EAFCBDC8;
  if (!qword_1EAFCBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCBDC8);
  }

  return result;
}

void sub_19A60B330(uint64_t a1, unint64_t *a2)
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

id sub_19A60B4E4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
    v5 = v3;
    v6 = v0;
    v7 = ImageGlyphUIConfiguration.init(_:glyphType:)(0, v5);
    v8 = *(v0 + 40);
    *(v6 + 40) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t sub_19A60B5C0()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v23 = MEMORY[0x1E69E7CC0];

    sub_19A7ABD84();
    v19 = objc_opt_self();
    v4 = (v1 + 64);
    do
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v7 = *(v4 - 1);
      v21 = *(v4 - 2);
      v8 = *v4;
      v4 += 5;
      swift_bridgeObjectRetain_n();

      v9 = sub_19A7AAFE4();
      v20 = [v19 emojiCategoryTypeForCategoryString_];

      v10 = sub_19A7870E8(v6, v5);
      v12 = v11;
      v13 = *(v8 + 16);
      v14 = type metadata accessor for ImageGlyphCategory(0);
      v15 = objc_allocWithZone(v14);
      sub_19A7A8F54();
      v16 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems;
      *&v15[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems] = 0;
      v17 = &v15[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title];
      *v17 = v21;
      v17[1] = v7;
      *&v15[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] = v20;
      v18 = &v15[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName];
      *v18 = v10;
      v18[1] = v12;
      v15[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_isSystemImage] = 1;
      *&v15[v16] = v13;
      v22.receiver = v15;
      v22.super_class = v14;
      objc_msgSendSuper2(&v22, sel_init);

      sub_19A7ABD64();
      sub_19A7ABD94();
      sub_19A7ABDA4();
      sub_19A7ABD74();
      --v2;
    }

    while (v2);

    return v23;
  }

  return result;
}

uint64_t sub_19A60B844(void *a1)
{
  v2 = v1;
  if (qword_1ED8B2260 != -1)
  {
LABEL_24:
    swift_once();
  }

  v4 = qword_1ED8B4248;
  v5 = *(qword_1ED8B4248 + 16);

  if (!v5)
  {
    v27 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v6 = 0;
  v7 = v4 + 64;
  v23 = v5 - 1;
  v26 = v2;
  v27 = MEMORY[0x1E69E7CC0];
  v24 = v4 + 64;
  v25 = a1;
  v28 = v5;
  do
  {
    a1 = (v7 + 40 * v6);
    v8 = v6;
    while (1)
    {
      if (v8 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v9 = *(a1 - 4);
      v2 = *(a1 - 3);
      v10 = *(a1 - 1);
      v29 = *(a1 - 2);
      v11 = *a1;
      if (v9 != sub_19A7AB014() || v2 != v12)
      {
        break;
      }

      v2 = v12;
LABEL_6:
      ++v8;

      a1 += 5;
      if (v5 == v8)
      {
        a1 = v25;
        goto LABEL_22;
      }
    }

    v14 = v4;
    v15 = sub_19A7AC064();

    if (v15)
    {

      v4 = v14;
      v5 = v28;
      goto LABEL_6;
    }

    v16 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_19A659B3C(0, *(v27 + 16) + 1, 1);
      v16 = v27;
    }

    v17 = v10;
    v18 = v11;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_19A659B3C((v19 > 1), v20 + 1, 1);
      v18 = v11;
      v17 = v10;
      v16 = v27;
    }

    v6 = v8 + 1;
    *(v16 + 16) = v20 + 1;
    v27 = v16;
    v21 = (v16 + 40 * v20);
    v21[4] = v9;
    v21[5] = v2;
    v21[6] = v29;
    v21[7] = v17;
    v21[8] = v18;
    v7 = v24;
    a1 = v25;
    v2 = v26;
    v4 = v14;
    v5 = v28;
  }

  while (v23 != v8);
LABEL_22:

  a1[6] = v27;
}

uint64_t sub_19A60BBAC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 48);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v15 = MEMORY[0x1E69E7CC0];

    sub_19A659B5C(0, v4, 0);
    v5 = v15;
    v6 = *(v15 + 16);
    v7 = 64;
    do
    {
      v8 = *(*(v3 + v7) + 16);
      v9 = *(v15 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_19A659B5C((v9 > 1), v6 + 1, 1);
      }

      *(v15 + 16) = v6 + 1;
      *(v15 + 8 * v6 + 32) = v8;
      v7 += 40;
      ++v6;
      --v4;
    }

    while (v4);
  }

  v10 = *(v5 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v5 + 32);
    while (1)
    {
      v13 = *v12++;
      v14 = __OFADD__(v11, v13);
      v11 += v13;
      if (v14)
      {
        break;
      }

      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = 0;
LABEL_13:

    *a2 = v11;
  }

  return result;
}

uint64_t sub_19A60BD50(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v3 = *(v1 + 32);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v3 + 4);
  sub_19A60FBA4(&v7);
  os_unfair_lock_unlock(v3 + 4);
  if (v7 <= a1)
  {
    return 0;
  }

  v5 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v3 + 4);
  sub_19A60FBA4(&v7);
  os_unfair_lock_unlock(v3 + 4);
  return v7;
}

uint64_t sub_19A60BF54()
{
  v1 = sub_19A7A9064();
  if (v1 < 0)
  {
    return 0;
  }

  v2 = v1;
  v3 = *(v0 + 32);
  MEMORY[0x1EEE9AC00](v1);
  os_unfair_lock_lock(v3 + 4);
  sub_19A60FBA4(&v10);
  os_unfair_lock_unlock(v3 + 4);
  if (v2 >= v10)
  {
    return 0;
  }

  v4 = sub_19A7A9044();
  if (v4 < 0)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_19A7A9064();
  v7 = sub_19A60BD50(v6);
  if (v5 >= v7)
  {
    return 0;
  }

  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v3 + 4);
  sub_19A60F150(&v10);
  os_unfair_lock_unlock(v3 + 4);
  return v10;
}

unint64_t sub_19A60C0BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = sub_19A7A9094();
  v5 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v47 - v14;
  v16 = sub_19A7A8F64();
  v17 = *(*(v16 - 8) + 56);
  v66 = v15;
  v17(v15, 1, 1, v16);
  v18 = sub_19A7A9064();
  result = sub_19A7A9044();
  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v20 = *(a1 + 48);
  if (v18 >= *(v20 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = *(v20 + 40 * v18 + 64);
  if (result >= *(v21 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v52 = a2;
  v53 = v2;
  v22 = v21 + 56 * result;
  v23 = *(v22 + 80);
  v24 = *(v22 + 32);
  v25 = *(v22 + 64);
  v61 = *(v22 + 48);
  v62 = v25;
  v60 = v24;
  v63 = v23;
  v26 = v25;
  v27 = *(v5 + 56);
  v50 = v24;
  v49 = v61;
  v28 = v54;
  v27(v12, 1, 1, v54);
  v51 = type metadata accessor for ImageGlyph(0);
  v29 = objc_allocWithZone(v51);
  v30 = &v29[OBJC_IVAR___STKImageGlyph_optionalData];
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  *&v29[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
  v29[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
  sub_19A60F0CC(v66, &v29[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800);
  *&v29[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
  *&v29[OBJC_IVAR___STKImageGlyph_stickerSourceType] = 0;
  v31 = &v29[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v29[OBJC_IVAR___STKImageGlyph_poseIdentifier];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v29[OBJC_IVAR___STKImageGlyph_emoji];
  v34 = v49;
  *v33 = v50;
  *(v33 + 1) = v34;
  *(v33 + 2) = v26;
  *(v33 + 24) = v23;
  v56 = v60;
  v57 = v61;
  v58 = v62;
  v59 = v63;
  sub_19A60F01C(&v60, v64);
  sub_19A60F01C(&v60, v64);
  sub_19A7862FC(0);
  v36 = v35;
  v38 = v37;
  v64[0] = v56;
  v64[1] = v57;
  v64[2] = v58;
  v65 = v59;
  sub_19A60F078(v64);
  v39 = &v29[OBJC_IVAR___STKImageGlyph_emojiString];
  *v39 = v36;
  v39[1] = v38;
  sub_19A60F0CC(v12, v10, &unk_1EAFCF110);
  if ((*(v5 + 48))(v10, 1, v28) == 1)
  {
    sub_19A5F2B54(v10, &unk_1EAFCF110);
  }

  else
  {
    v40 = v48;
    (*(v5 + 32))(v48, v10, v28);
    v41 = sub_19A76DC5C();
    v43 = v42;
    (*(v5 + 8))(v40, v28);
    *v30 = v41;
    v30[1] = v43;
  }

  v44 = v52;
  v45 = &v29[OBJC_IVAR___STKImageGlyph_character];
  *v45 = 0;
  v45[1] = 0;
  v55.receiver = v29;
  v55.super_class = v51;
  v46 = objc_msgSendSuper2(&v55, sel_init);
  sub_19A5F2B54(v12, &unk_1EAFCF110);
  result = sub_19A5F2B54(v66, &qword_1EAFCD800);
  *v44 = v46;
  return result;
}

uint64_t sub_19A60C794(uint64_t a1)
{
  if (a1 < 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(v1 + 32);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v3 + 4);
  sub_19A60EFE4(&v7);
  os_unfair_lock_unlock(v3 + 4);
  if (v7 <= a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v3 + 4);
  sub_19A60EFE4(&v7);
  os_unfair_lock_unlock(v3 + 4);
  return v7;
}

uint64_t sub_19A60C8C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_19A7A9094();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v69 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  result = MEMORY[0x1EEE9AC00](v14 - 8);
  v76 = v58 - v16;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = *(a1 + 48);
  if (*(v17 + 16) <= a2)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v18 = *(v17 + 40 * a2 + 64);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v68 = v7;
    v58[0] = a3;
    v58[1] = v3;
    v89 = MEMORY[0x1E69E7CC0];

    sub_19A5F6074(0, v19, 0);
    v75 = v89;
    v21 = sub_19A7A8F64();
    v22 = *(v21 - 8);
    v65 = (v8 + 56);
    v66 = v21;
    v64 = (v8 + 48);
    v60 = (v8 + 32);
    v23 = *(v22 + 56);
    v62 = v22 + 56;
    v63 = v23;
    v59 = (v8 + 8);
    v74 = v19 - 1;
    v24 = 32;
    v67 = v18;
    v25 = v68;
    while (1)
    {
      v70 = v24;
      v26 = (v18 + v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v86 = *(v26 + 24);
      v84 = v28;
      v85 = v29;
      v83 = v27;
      v30 = v76;
      v63(v76, 1, 1, v66);
      v31 = v85;
      v32 = v86;
      v33 = *v65;
      v71 = v84;
      v72 = v83;
      v33(v90, 1, 1, v25);
      v73 = type metadata accessor for ImageGlyph(0);
      v34 = objc_allocWithZone(v73);
      v35 = &v34[OBJC_IVAR___STKImageGlyph_optionalData];
      *v35 = 0;
      v35[1] = 0xE000000000000000;
      *&v34[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
      v34[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
      sub_19A60F0CC(v30, &v34[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800);
      *&v34[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
      *&v34[OBJC_IVAR___STKImageGlyph_stickerSourceType] = 0;
      v36 = &v34[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
      *v36 = 0;
      v36[1] = 0;
      v37 = &v34[OBJC_IVAR___STKImageGlyph_poseIdentifier];
      *v37 = 0;
      v37[1] = 0;
      v38 = &v34[OBJC_IVAR___STKImageGlyph_emoji];
      v39 = v71;
      *v38 = v72;
      *(v38 + 1) = v39;
      *(v38 + 2) = v31;
      *(v38 + 24) = v32;
      v79 = v83;
      v80 = v84;
      v81 = v85;
      v82 = v86;
      sub_19A60F01C(&v83, v78);
      sub_19A60F01C(&v83, v78);
      sub_19A60F01C(&v83, v78);
      sub_19A7862FC(0);
      v41 = v40;
      v43 = v42;
      v87[0] = v79;
      v87[1] = v80;
      v87[2] = v81;
      v88 = v82;
      sub_19A60F078(v87);
      v44 = &v34[OBJC_IVAR___STKImageGlyph_emojiString];
      *v44 = v41;
      v44[1] = v43;
      v45 = v69;
      sub_19A60F0CC(v90, v69, &unk_1EAFCF110);
      if ((*v64)(v45, 1, v25) == 1)
      {
        sub_19A5F2B54(v45, &unk_1EAFCF110);
      }

      else
      {
        v46 = v61;
        (*v60)(v61, v45, v25);
        v47 = sub_19A76DC5C();
        v49 = v48;
        (*v59)(v46, v25);
        *v35 = v47;
        v35[1] = v49;
      }

      v50 = &v34[OBJC_IVAR___STKImageGlyph_character];
      *v50 = 0;
      v50[1] = 0;
      v77.receiver = v34;
      v77.super_class = v73;
      v51 = objc_msgSendSuper2(&v77, sel_init);
      sub_19A5F2B54(v90, &unk_1EAFCF110);
      sub_19A5F2B54(v76, &qword_1EAFCD800);
      v52 = sub_19A7663D0();
      v54 = v53;

      sub_19A60F078(&v83);
      v20 = v75;
      v89 = v75;
      v56 = *(v75 + 16);
      v55 = *(v75 + 24);
      v18 = v67;
      if (v56 >= v55 >> 1)
      {
        sub_19A5F6074((v55 > 1), v56 + 1, 1);
        v20 = v89;
      }

      *(v20 + 16) = v56 + 1;
      v57 = v20 + 16 * v56;
      *(v57 + 32) = v52;
      *(v57 + 40) = v54;
      if (!v74)
      {
        break;
      }

      --v74;
      v75 = v20;
      v24 = v70 + 56;
    }

    a3 = v58[0];
  }

  *a3 = v20;
  return result;
}

uint64_t sub_19A60CF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 48);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 64;
    while (1)
    {
      v8 = *(*v7 + 16);
      v9 = __OFSUB__(a1, v8);
      v10 = a1 - v8;
      if (v10 < 0 != v9)
      {
        break;
      }

      ++v6;
      v7 += 40;
      a1 = v10;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    MEMORY[0x19A903470]();
    v11 = 0;
  }

  else
  {
LABEL_5:
    v11 = 1;
  }

  v12 = sub_19A7A9094();
  return (*(*(v12 - 8) + 56))(a3, v11, 1, v12);
}

uint64_t sub_19A60D138@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 48);
  v5 = *(v4 + 16);
  v6 = v5 == 0;
  v7 = 0;
  if (v5)
  {
    v8 = (a2 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title);
    v9 = (v4 + 56);
    while (1)
    {
      result = *(v9 - 1);
      if (result == *v8 && *v9 == v8[1])
      {
        break;
      }

      result = sub_19A7AC064();
      if (result)
      {
        break;
      }

      ++v7;
      v9 += 5;
      v6 = v5 == v7;
      if (v5 == v7)
      {
        v7 = 0;
        break;
      }
    }
  }

  *a3 = v7;
  *(a3 + 8) = v6;
  return result;
}

void sub_19A60D56C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a2 == 3)
  {
    v5 = *(v3 + 32);
    v9 = MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v9);
    os_unfair_lock_lock(v5 + 4);
    sub_19A60EEF8(v6);
    os_unfair_lock_unlock(v5 + 4);
  }

  else
  {
    v7 = sub_19A7A9094();
    v8 = *(*(v7 - 8) + 56);

    v8(a3, 1, 1, v7);
  }
}

void sub_19A60D694(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 48);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_41:
    v38 = 1;
LABEL_46:
    v42 = sub_19A7A9094();
    (*(*(v42 - 8) + 56))(a4, v38, 1, v42);
    return;
  }

  v46 = a1;
  v8 = v6 + 32;
  v55 = *MEMORY[0x1E699BAB0];
  v57 = *MEMORY[0x1E699BAA8];
  v63 = *MEMORY[0x1E699BAA0];
  v54 = *MEMORY[0x1E699BA98];
  v56 = *MEMORY[0x1E699BA90];
  v70 = *MEMORY[0x1E699BAB8];

  v10 = 0;
  v50 = a4;
  v49 = v9;
  v43 = v8;
  v44 = v7;
  while (2)
  {
    v11 = (v8 + 40 * v10);
    v12 = v11[4];
    v60 = *(v12 + 16);
    if (!v60)
    {
      goto LABEL_38;
    }

    v45 = v10;
    v13 = v11[1];
    v62 = v12 + 32;
    v14 = v11[3];
    v47 = v11[2];
    v48 = *v11;
    swift_bridgeObjectRetain_n();
    v52 = v13;

    v51 = v14;

    v15 = 0;
    v61 = v12;
LABEL_5:
    if (v15 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_49;
    }

    v16 = v62 + 56 * v15;
    v17 = *(v16 + 16);
    v19 = *(v16 + 24);
    v18 = *(v16 + 32);
    v20 = *(v16 + 40);
    v21 = *(v16 + 48);
    v64 = v20;
    if (v21 > 0xFD)
    {
      goto LABEL_9;
    }

    if ((v21 & 0x80) == 0)
    {
      if (v21)
      {
LABEL_9:

        sub_19A60EF14(v18, v20, v21);

        v22 = v19;
        goto LABEL_31;
      }

      if ((v20 & 0x8000000000000000) == 0)
      {
        if (v20 < *(v18 + 16))
        {
          v31 = v18 + 16 * v20;
          v17 = *(v31 + 32);
          v22 = *(v31 + 40);

          sub_19A60EF14(v18, v20, v21);

          goto LABEL_31;
        }

        goto LABEL_50;
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    sub_19A60EF14(v18, v20, v21);
    v53 = sub_19A7AAFE4();
    v23 = *(v20 + 16);
    if (!v23)
    {
      goto LABEL_29;
    }

    v65 = MEMORY[0x1E69E7CC0];
    sub_19A65ACD0(0, v23, 0);
    v24 = v65;
    v25 = (v20 + 40);
    do
    {
      if (*v25)
      {
LABEL_13:
        v26 = v70;
        goto LABEL_14;
      }

      v30 = *(v25 - 1);
      if (v30 <= 1)
      {
        v26 = v56;
        if (v30)
        {
          v26 = v54;
          if (v30 != 1)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v26 = v63;
        if (v30 != 2)
        {
          v26 = v57;
          if (v30 != 3)
          {
            v26 = v55;
            if (v30 != 4)
            {
              goto LABEL_13;
            }
          }
        }
      }

LABEL_14:
      v27 = v26;
      v65 = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_19A65ACD0((v28 > 1), v29 + 1, 1);
        v24 = v65;
      }

      *(v24 + 16) = v29 + 1;
      *(v24 + 8 * v29 + 32) = v27;
      v25 += 16;
      --v23;
    }

    while (v23);
    a4 = v50;
LABEL_29:
    v32 = objc_opt_self();
    type metadata accessor for EMFSkinToneSpecifierType(0);
    v33 = sub_19A7AB234();

    v34 = [v32 _multiPersonStringForString_skinToneVariantSpecifier_];

    if (!v34)
    {
      goto LABEL_51;
    }

    v17 = sub_19A7AB014();
    v22 = v35;

LABEL_31:
    if (v17 == a2 && v22 == a3)
    {
      v67 = v47;
      v68 = v51;
      v69 = v61;
      v65 = v48;
      v66 = v52;

      sub_19A60EF74(v18, v64, v21);
      goto LABEL_44;
    }

    v37 = sub_19A7AC064();

    sub_19A60EF74(v18, v64, v21);
    if ((v37 & 1) == 0)
    {
      ++v15;
      v12 = v61;
      if (v15 == v60)
      {

        swift_bridgeObjectRelease_n();
        v9 = v49;
        v8 = v43;
        v7 = v44;
        v10 = v45;
LABEL_38:
        if (++v10 == v7)
        {

          v38 = 1;
          goto LABEL_46;
        }

        if (v10 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        continue;
      }

      goto LABEL_5;
    }

    break;
  }

  v67 = v47;
  v68 = v51;
  v69 = v61;
  v65 = v48;
  v66 = v52;
LABEL_44:

  v39 = sub_19A60DBD4(&v65, *(v46 + 48));
  if ((v40 & 1) == 0)
  {
    v41 = v39;

    MEMORY[0x19A903470](v15, v41);
    v38 = 0;
    goto LABEL_46;
  }

LABEL_52:
  __break(1u);
}

uint64_t sub_19A60DBD4(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = (a2 + 64);
  v15 = a1[4];
  while (1)
  {
    v9 = *(v8 - 2);
    v10 = *(v8 - 1);
    v11 = *v8;
    v12 = *(v8 - 4) == v4 && *(v8 - 3) == v5;
    if (v12 || (sub_19A7AC064() & 1) != 0)
    {
      v13 = v9 == v6 && v10 == v7;
      if (v13 || (sub_19A7AC064()) && (sub_19A72AC0C(v11, v15))
      {
        break;
      }
    }

    ++v3;
    v8 += 5;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_19A60DFB8(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_19A60E1C0(int a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 0);
  _Block_release(v4);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_19A60E3D0(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_19A7A9094();
  v6 = *(v5 - 8);
  v7 = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = _Block_copy(a3);
  sub_19A7A9024();
  sub_19A7A9024();
  v10 = *(v6 + 8);
  v10(v7, v5);
  v10(v8, v5);
  v9[2](v9, 0);
  _Block_release(v9);

  v11 = *(v3 + 8);

  return v11();
}

uint64_t sub_19A60EB74()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19A60EBE0()
{
  *(v0 + 16) = 257;
  *(v0 + 24) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF140);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  if (qword_1ED8B2260 != -1)
  {
LABEL_23:
    swift_once();
  }

  v2 = qword_1ED8B4248;
  v3 = *(qword_1ED8B4248 + 16);

  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v4 = 0;
  v5 = v2 + 64;
  v25 = v3 - 1;
  v6 = MEMORY[0x1E69E7CC0];
  v28 = v3;
  v26 = v2 + 64;
  do
  {
    v27 = v6;
    v7 = (v5 + 40 * v4);
    v8 = v4;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v10 = *(v7 - 4);
      v9 = *(v7 - 3);
      v11 = *(v7 - 1);
      v29 = *(v7 - 2);
      v12 = *v7;
      if (v10 != sub_19A7AB014() || v9 != v13)
      {
        break;
      }

LABEL_5:
      ++v8;

      v7 += 5;
      if (v3 == v8)
      {
        v6 = v27;
        goto LABEL_21;
      }
    }

    v15 = v2;
    v16 = sub_19A7AC064();

    if (v16)
    {

      v2 = v15;
      v3 = v28;
      goto LABEL_5;
    }

    v17 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_19A659B3C(0, *(v27 + 16) + 1, 1);
      v17 = v27;
    }

    v2 = v15;
    v18 = v11;
    v19 = v12;
    v20 = v17;
    v21 = *(v17 + 16);
    v22 = *(v20 + 24);
    if (v21 >= v22 >> 1)
    {
      sub_19A659B3C((v22 > 1), v21 + 1, 1);
      v19 = v12;
      v18 = v11;
      v2 = v15;
      v20 = v27;
    }

    v4 = v8 + 1;
    *(v20 + 16) = v21 + 1;
    v23 = (v20 + 40 * v21);
    v23[4] = v10;
    v23[5] = v9;
    v23[6] = v29;
    v23[7] = v18;
    v23[8] = v19;
    v5 = v26;
    v3 = v28;
    v6 = v20;
  }

  while (v25 != v8);
LABEL_21:

  *(v0 + 48) = v6;
  return v0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_19A60EF14(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_19A60EF28(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_19A60EF28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }
}

uint64_t sub_19A60EF74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_19A60EF88(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_19A60EF88(uint64_t a1, uint64_t a2, char a3)
{

  if (a3 < 0)
  {
  }

  return result;
}

uint64_t sub_19A60F0CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_19A60F150@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void sub_19A60F194(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*(v1 + 16) + 48);
    if (*(v3 + 16) > v2)
    {
      *a1 = *(*(v3 + 40 * v2 + 64) + 16);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_19A60F1D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A60FB90(v2, v3);
}

uint64_t sub_19A60F284()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A78E6D0(v2, v3, v4);
}

uint64_t sub_19A60F344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60FB98;

  return sub_19A78E7B8(a1, v4, v5, v6);
}

uint64_t sub_19A60F410()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A60FB94(v2, v3);
}

uint64_t sub_19A60F4C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A60FBA0(v2, v3);
}

uint64_t sub_19A60F578()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A60FB9C(v2, v3);
}

uint64_t sub_19A60F62C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A60E3D0(v2, v3, v4);
}

uint64_t sub_19A60F6EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60FB98;

  return sub_19A60E1C0(v2, v3, v4);
}

uint64_t sub_19A60F7AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60F860;

  return sub_19A60DFB8(v2, v3);
}

uint64_t sub_19A60F860()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_46Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_19A60F9E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_19A60F0CC(a1 + OBJC_IVAR___STKImageGlyph_stickerUUID, &v7 - v3, &qword_1EAFCD800);
  v5 = sub_19A7A8F64();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_19A5F2B54(v4, &qword_1EAFCD800);
  if (v6 == 1 && !*(a1 + OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8) && (*(a1 + OBJC_IVAR___STKImageGlyph_emoji + 8) || *(a1 + OBJC_IVAR___STKImageGlyph_emojiString + 8)))
  {
    sub_19A7675C8();
  }
}

id static STKKeyboardSPI.setRestoresToEmojiInputMode()()
{
  v0 = objc_opt_self();

  return [v0 setRestoresToEmojiInputMode];
}

uint64_t sub_19A60FCB8(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text);
  v4 = *(v2 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text + 8);
  if (!v4)
  {
    if (!a2)
    {
      return result;
    }

    v8 = 0;
    goto LABEL_11;
  }

  if (!a2 || (*v3 == result ? (v5 = v4 == a2) : (v5 = 0), !v5 && (result = sub_19A7AC064(), (result & 1) == 0)))
  {
    v6 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v7 = sub_19A7AAFE4();
    v8 = [v6 initWithString_];

LABEL_11:
    v9 = *(v2 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_attributedText);
    *(v2 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_attributedText) = v8;
    v10 = v8;
    sub_19A60FE30(v9);

    v11 = *(v2 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel);
    if (v3[1])
    {
      v12 = v11;

      v13 = sub_19A7AAFE4();
    }

    else
    {
      v14 = v11;
      v13 = 0;
    }

    [v11 setText_];

    return sub_19A610AD0();
  }

  return result;
}

void sub_19A60FE30(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_attributedText;
  v5 = *(v1 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_attributedText);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v5 = 0;
    goto LABEL_8;
  }

  if (a1)
  {
    sub_19A5F5028(0, &unk_1EAFCC160);
    v6 = v5;
    v7 = a1;
    v8 = sub_19A7AB924();

    if (v8)
    {
      return;
    }

    v5 = *(v2 + v4);
    if (!v5)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_9;
    }
  }

  v9 = [v5 string];
  v5 = sub_19A7AB014();
  v11 = v10;

LABEL_9:
  v12 = (v2 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text);
  v13 = *(v2 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text);
  v14 = *(v2 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text + 8);
  *v12 = v5;
  v12[1] = v11;
  sub_19A60FCB8(v13, v14);

  v15 = *(v2 + v4);
  if (v15)
  {
    v16 = v15;
    v17 = [v16 attributesAtIndex:0 effectiveRange:0];
    type metadata accessor for Key(0);
    sub_19A612518(&qword_1EAFCA4B0, type metadata accessor for Key);
    v18 = sub_19A7AAF44();

    if (*(v18 + 16) && (v19 = sub_19A6A1698(*MEMORY[0x1E69DB648]), (v20 & 1) != 0))
    {
      sub_19A6120B4(*(v18 + 56) + 32 * v19, v27);

      sub_19A5F5028(0, &qword_1EAFCC158);
      if (swift_dynamicCast())
      {
        v21 = *(v2 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_font);
        *(v2 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_font) = v26;
        v22 = v26;

        v23 = *(v2 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel);
        v24 = v22;
        v25 = v23;
        [v25 setFont_];
      }
    }

    else
    {
    }
  }

  [*(v2 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel) setAttributedText_];
  sub_19A610AD0();
}

id sub_19A6100C4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_font;
  *&v4[v9] = [objc_opt_self() systemFontOfSize_];
  v10 = &v4[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_attributedText] = 0;
  v4[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView__dragEnabled] = 0;
  v11 = OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v4[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_liftContainerView] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_previewLabel] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_upscaledImageView] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_liftScale] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_container] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_dragInteraction] = 0;
  v4[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_shouldLiftFromLastTouchLocation] = 0;
  v12 = &v4[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_lastTouchLocation];
  *v12 = 0;
  v12[1] = 0;
  v4[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_lifted] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for EmojiDraggableView();
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_19A610418();

  return v13;
}

id sub_19A610278(void *a1)
{
  *&v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_font;
  *&v1[v3] = [objc_opt_self() systemFontOfSize_];
  v4 = &v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_attributedText] = 0;
  v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView__dragEnabled] = 0;
  v5 = OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_liftContainerView] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_previewLabel] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_upscaledImageView] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_liftScale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_container] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_dragInteraction] = 0;
  v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_shouldLiftFromLastTouchLocation] = 0;
  v6 = &v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_lastTouchLocation];
  *v6 = 0;
  v6[1] = 0;
  v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_lifted] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for EmojiDraggableView();
  v7 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_19A610418();
  }

  return v8;
}

void sub_19A610418()
{
  *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_liftScale] = 0x3FF0000000000000;
  v1 = [objc_opt_self() systemFontOfSize_];
  v2 = *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_font];
  *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_font] = v1;
  v3 = v1;

  if (v3)
  {
    [*&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel] setFont_];
  }

  v4 = sub_19A6105BC();
  v5 = *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel];
  *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel] = v4;
  v6 = v4;

  [v0 addSubview_];
  [v0 setUserInteractionEnabled_];

  sub_19A610BDC();
}

id sub_19A6105BC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  [v1 setFont_];
  v2 = v1;
  [v2 setOpaque_];
  [v2 setTextAlignment_];
  if (*&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text + 8])
  {

    v3 = sub_19A7AAFE4();
  }

  else
  {
    v3 = 0;
  }

  [v2 setText_];

  [v0 bounds];
  [v2 setFrame_];

  return v2;
}

id sub_19A6106D0()
{
  [v0 bounds];
  v1 = OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_liftScale;
  v2 = *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_liftScale];
  v4 = v3 * v2;
  v6 = v5 * v2;
  v7 = v3 * v2 * 0.5;
  v8 = v5 * v2 * 0.5;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v9 addSubview_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  [v11 setContentMode_];
  v12 = *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_upscaledImageView];
  *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_upscaledImageView] = v11;
  v13 = v11;

  v14 = sub_19A6105BC();
  v15 = *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_font];
  if (v15)
  {
    v16 = v15;
    [v16 pointSize];
    v18 = [v16 fontWithSize_];

    if (v18)
    {
      [v14 setFont_];
    }
  }

  v19 = v14;
  [v19 setBounds_];
  [v19 setCenter_];

  [v10 addSubview_];
  v20 = *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_previewLabel];
  *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_previewLabel] = v19;
  v21 = v19;

  v22 = *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text + 8];
  if (v22)
  {
    v23 = *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text];
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v10;
    v26 = qword_1EAFCB518;

    v27 = v10;
    if (v26 != -1)
    {
      swift_once();
    }

    v28 = qword_1EAFDD6C0;

    sub_19A645954(v23, v22, v28, sub_19A612500, v25);
  }

  v29 = *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel];
  sub_19A612110(v29);

  v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_lifted] = 1;
  return v9;
}

void sub_19A610A0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_upscaledImageView;
    [*(Strong + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_upscaledImageView) setImage_];
    if (*&v7[v8])
    {
      [a4 addSubview_];
    }

    v9 = OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_previewLabel;
    v10 = *&v7[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_previewLabel];
    if (v10)
    {
      [v10 removeFromSuperview];
      v11 = *&v7[v9];
    }

    else
    {
      v11 = 0;
    }

    *&v7[v9] = 0;
  }
}

id sub_19A610AD0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_fixedLabel) layer];
  [v1 setFilters_];

  v2 = OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_liftContainerView;
  [*(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_liftContainerView) removeFromSuperview];
  v3 = *(v0 + v2);
  *(v0 + v2) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_previewLabel);
  *(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_previewLabel) = 0;

  v5 = *(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_upscaledImageView);
  *(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_upscaledImageView) = 0;

  v6 = *(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_container);
  *(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_container) = 0;

  *(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_lifted) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_shouldLiftFromLastTouchLocation) = 0;
  result = *(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_dragInteraction);
  if (result)
  {
    v8 = *(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView__dragEnabled);

    return [result setEnabled_];
  }

  return result;
}

void sub_19A610BDC()
{
  v1 = OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_dragInteraction;
  v2 = *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_dragInteraction];
  if (v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView__dragEnabled] == 1)
  {
    if (v2)
    {
      return;
    }

    v3 = [objc_allocWithZone(MEMORY[0x1E69DC988]) initWithDelegate_];
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v6 = v3;

    [v0 addInteraction_];
    v5 = v6;
  }

  else
  {
    if (!v2)
    {
      return;
    }

    [v0 removeInteraction_];
    v5 = *&v0[v1];
    *&v0[v1] = 0;
  }
}

uint64_t sub_19A610CB8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_19A7AA764();
  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_19A7AA7B4();
  v13 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A5F5028(0, &qword_1ED8B2040);
  v24 = sub_19A7AB794();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a2;
  v16[4] = a1;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_19A612508;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_71;
  v17 = _Block_copy(aBlock);
  v18 = a3;
  v19 = a1;

  v20 = a2;

  sub_19A7AA784();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_19A612518(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A612560();
  sub_19A7ABB54();
  v21 = v24;
  MEMORY[0x19A905BE0](0, v15, v12, v17);
  _Block_release(v17);

  (*(v26 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v25);
}

void sub_19A610FAC(uint64_t a1, void *a2, void *a3, void (*a4)(id, uint64_t))
{
  if (a1)
  {
    a4(0, a1);
  }

  else
  {
    v5 = a2;
    if (!a2)
    {
      v7 = a3;
      a2 = 0;
      v5 = a3;
    }

    v9 = v5;
    v8 = a2;
    a4(v9, 0);
  }
}

uint64_t sub_19A611054(void (*a1)(uint64_t, unint64_t, void))
{
  v2 = sub_19A7AB054();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7AB044();
  v6 = sub_19A7AB024();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  a1(v6, v8, 0);
  sub_19A612F00(v6, v8);
  return 0;
}

void sub_19A61119C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_19A7A8D24();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_19A7A8E14();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_19A611234(void *a1)
{
  v2 = OBJC_IVAR____TtC10StickerKit18EmojiDraggableView__dragEnabled;
  if ((v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView__dragEnabled] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView__dragEnabled] = 1;
    sub_19A610BDC();
    v1[v2] = 0;
    v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_shouldLiftFromLastTouchLocation] = 1;
    v4 = [v1 window];
    [a1 locationInView_];
    v6 = v5;
    v8 = v7;

    v9 = &v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_lastTouchLocation];
    *v9 = v6;
    v9[1] = v8;
    v10 = *&v1[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_dragInteraction];
    if (v10)
    {
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14[4] = sub_19A6124F0;
      v14[5] = v11;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1107296256;
      v14[2] = sub_19A765D14;
      v14[3] = &block_descriptor;
      v12 = _Block_copy(v14);
      v13 = v10;

      [v13 _immediatelyBeginDragWithTouch_completion_];
      _Block_release(v12);
    }
  }
}

void sub_19A6113B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_19A610AD0();
  }
}

uint64_t sub_19A611730(void (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a1;
    v12[4] = a2;
    v13 = qword_1EAFCB518;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = qword_1EAFDD6C0;

    sub_19A645954(a4, a5, v14, sub_19A612EF4, v12);
  }

  else
  {
    a1(0, 0);
  }

  return 0;
}

void sub_19A611890(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1 && !a2)
    {
      v9 = a1;
      v10 = UIImagePNGRepresentation(v9);
      if (v10)
      {
        v11 = v10;
        v12 = sub_19A7A8E34();
        v14 = v13;

        sub_19A612F68(v12, v14);
        v15 = [v8 window];
        if (v15)
        {
          v16 = v15;
          v17 = [v15 screen];

          [v17 scale];
          v19 = v18;
        }

        else
        {
          v19 = 1.0;
        }

        v21 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
        v22 = sub_19A7A8E14();
        v20 = [v21 initWithData:v22 scale:v19];

        sub_19A612F14(v12, v14);
        if (v20)
        {
          v23 = v20;
        }
      }

      else
      {
        v20 = 0;
        v12 = 0;
        v14 = 0xF000000000000000;
      }

      a4(v20, 0);

      swift_unknownObjectRelease();
      sub_19A612F00(v12, v14);
    }

    else
    {
      a4(0, a2);
    }
  }

  else
  {
    a4(0, a2);
  }
}

id sub_19A611A88(uint64_t a1, void *aBlock, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  v8 = v5(a4, v7);

  return v8;
}

void sub_19A611B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_19A7A8D24();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_19A611DA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_19A610AD0();
  }
}

uint64_t sub_19A611E54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7B6C20;
  *(inited + 32) = 0x7079546567616D49;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = sub_19A7AAFE4();
  *(inited + 56) = 0x7079546567617355;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_19A7AAFE4();
  v1 = sub_19A69C364(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCC170);
  swift_arrayDestroy();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_19A63D8F8(v1);

  return swift_unknownObjectRelease();
}

id sub_19A611F8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiDraggableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19A6120B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_19A612110(void *a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v27 = 0.0;
  v28[0] = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  v2 = [objc_opt_self() tertiarySystemFillColor];
  [v2 getRed:v28 green:&v27 blue:&v26 alpha:&v25];

  v3 = v28[0];
  v4 = v27;
  v5 = v26;
  v6 = v25;
  v7 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v13[0] = 0;
  v13[1] = 0;
  v14 = v3;
  v16 = 0;
  v15 = 0;
  v17 = v4;
  v18 = 0;
  v19 = 0;
  v20 = v5;
  v22 = 0;
  v21 = 0;
  v23 = v6;
  v24 = 0;
  v8 = [objc_opt_self() valueWithCAColorMatrix_];
  [v7 setValue:v8 forKey:*MEMORY[0x1E6979AC0]];

  v9 = [a1 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD7E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_19A7B6C30;
  *(v10 + 56) = sub_19A5F5028(0, &unk_1EAFCC180);
  *(v10 + 32) = v7;
  v11 = v7;
  v12 = sub_19A7AB234();

  [v9 setFilters_];
}

void sub_19A612334(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_19A7A9304();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A92F4();
  sub_19A7A9284();
  (*(v7 + 8))(v9, v6);
  v10 = sub_19A7AAFE4();

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_19A612FBC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A611178;
  aBlock[3] = &block_descriptor_101;
  v12 = _Block_copy(aBlock);

  [a3 registerDataRepresentationForTypeIdentifier:v10 visibility:0 loadHandler:v12];
  _Block_release(v12);
}

uint64_t sub_19A612518(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19A612560()
{
  result = qword_1ED8B2090;
  if (!qword_1ED8B2090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAFCECD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B2090);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_19A61260C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text + 8);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text);

    sub_19A612334(v4, v3, v2);
    sub_19A5F5028(0, &unk_1EAFCC1A0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v4;
    v7[4] = v3;
    v18 = sub_19A612E88;
    v19 = v7;
    v14 = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_19A611A64;
    v17 = &block_descriptor_82;
    v8 = _Block_copy(&v14);

    [v2 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v8];
    _Block_release(v8);
    v9 = sub_19A7AAFE4();
    v18 = sub_19A611B98;
    v19 = 0;
    v14 = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_19A611178;
    v17 = &block_descriptor_85;
    v10 = _Block_copy(&v14);
    [v2 registerDataRepresentationForTypeIdentifier:v9 visibility:0 loadHandler:v10];
    _Block_release(v10);

    v11 = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_19A7B6C40;
    *(v12 + 32) = v11;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

id sub_19A61288C()
{
  v1 = sub_19A6106D0();
  v2 = *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_liftContainerView];
  *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_liftContainerView] = v1;
  v3 = v1;

  v4 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
  v5 = objc_allocWithZone(MEMORY[0x1E69DC728]);
  v6 = v4;
  v7 = [v5 init];
  [v6 setShadowPath_];

  v8 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor_];

  v9 = [v0 window];
  if (v9)
  {
    v10 = v9;
    [v0 center];
    v12 = v11;
    v14 = v13;
    v15 = [v0 superview];
    [v10 convertPoint:v15 fromView:{v12, v14}];
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v17 = 0.0;
    v19 = 0.0;
  }

  if (v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_shouldLiftFromLastTouchLocation] == 1)
  {
    v17 = *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_lastTouchLocation];
    v19 = *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_lastTouchLocation + 8];
  }

  [v0 bounds];
  v21 = 60.0 / fmax(v20, 1.0);
  CGAffineTransformMakeScale(&v45, v21, v21);
  v40 = *&v45.c;
  v41 = *&v45.a;
  tx = v45.tx;
  ty = v45.ty;
  [v3 setCenter_];
  v24 = [v0 window];
  if (v24)
  {
    v25 = v24;
    v26 = objc_allocWithZone(MEMORY[0x1E69DC9A8]);
    *&v45.a = v41;
    *&v45.c = v40;
    v45.tx = tx;
    v45.ty = ty;
    v27 = [v26 initWithContainer:v25 center:&v45 transform:{v17, v19}];
    v28 = objc_allocWithZone(MEMORY[0x1E69DD068]);
    v29 = v3;
    v30 = [v28 initWithView:v29 parameters:v6 target:v27];

    v31 = [objc_allocWithZone(STKDragPreviewContainerView) initWithIsDropAnimation_];
    v32 = OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_container;
    v33 = *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_container];
    *&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_container] = v31;

    if (*&v0[OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_text + 8])
    {
      v34 = qword_1EAFCB518;

      if (v34 != -1)
      {
        swift_once();
      }

      v35 = sub_19A644EAC();

      if (v35)
      {
        [*&v0[v32] setImage_];
        v36 = *&v0[v32];
        if (v36)
        {
          [v36 setUseEmojiKeyboardMeshTransform_];
          v37 = *&v0[v32];
        }

        else
        {
          v37 = 0;
        }

        [v30 _setPreviewContainer_];
        if ([objc_opt_self() shadowPropertiesForDrag])
        {
          sub_19A7ABB44();
          swift_unknownObjectRelease();
        }

        else
        {
          v43 = 0u;
          v44 = 0u;
        }

        *&v45.a = v43;
        *&v45.c = v44;
        if (*(&v44 + 1))
        {
          sub_19A5F5028(0, &unk_1EAFCC190);
          if (swift_dynamicCast())
          {
            v38 = v42;
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          sub_19A612E20(&v45);
          v38 = 0;
        }

        [v6 _setShadowProperties_];
      }
    }
  }

  else
  {

    return 0;
  }

  return v30;
}

void sub_19A612D00()
{
  sub_19A611E54();
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit18EmojiDraggableView_container);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5[4] = sub_19A612E18;
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_19A6815D4;
    v5[3] = &block_descriptor_75;
    v3 = _Block_copy(v5);
    v4 = v1;

    [v4 __animateLiftCancellationAlongsideAnimator_completion_];
    _Block_release(v3);
  }
}

uint64_t sub_19A612E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_78Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_19A612F00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19A612F14(a1, a2);
  }

  return a1;
}

uint64_t sub_19A612F14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_19A612F68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

const char *StickersFeatureFlags.feature.getter()
{
  result = "CombinedStickerPicker_iOS";
  switch(*v0)
  {
    case 1:
      result = "CombinedStickerPicker_iPadOS";
      break;
    case 2:
      result = "CombinedStickerPicker_macOS";
      break;
    case 3:
      result = "CombinedStickerPicker_visionOS";
      break;
    case 4:
      result = "EmojiCreation_iOS";
      break;
    case 5:
      result = "EmojiCreation_iPadOS";
      break;
    case 6:
      result = "EmojiCreation_macOS";
      break;
    case 7:
      result = "EmojiCreation_visionOS";
      break;
    case 8:
      result = "FeedbackFCSBehavior";
      break;
    case 9:
      result = "FeedbackImageGenerationFailureReportAConcern";
      break;
    case 0xA:
      result = "ImageKeyFaceLoaderPrewarming";
      break;
    case 0xB:
      result = "DragAndDrop_visionOS";
      break;
    case 0xC:
      result = "CreateStickerEffects_visionOS";
      break;
    case 0xD:
      result = "CreateStickers_visionOS";
      break;
    case 0xE:
      result = "EmojiCreationV2";
      break;
    case 0xF:
      result = "EmojiCreationV2_visionOS";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t static StickersFeatureFlags.keyForCombinedStickerPickerForOS.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    *(a1 + 24) = &type metadata for StickersFeatureFlags;
    result = sub_19A61379C();
    *(a1 + 32) = result;
    v6 = 1;
  }

  else
  {
    v7 = [v2 currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 6)
    {
      *(a1 + 24) = &type metadata for StickersFeatureFlags;
      result = sub_19A61379C();
      *(a1 + 32) = result;
      v6 = 3;
    }

    else
    {
      v9 = [v2 currentDevice];
      v10 = [v9 userInterfaceIdiom] == 5;

      *(a1 + 24) = &type metadata for StickersFeatureFlags;
      result = sub_19A61379C();
      *(a1 + 32) = result;
      v6 = 2 * v10;
    }
  }

  *a1 = v6;
  return result;
}

unint64_t static StickersFeatureFlags.keyForEmojiCreationForOS.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    *(a1 + 24) = &type metadata for StickersFeatureFlags;
    result = sub_19A61379C();
    *(a1 + 32) = result;
    v6 = 5;
  }

  else
  {
    v7 = [v2 currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 6)
    {
      *(a1 + 24) = &type metadata for StickersFeatureFlags;
      result = sub_19A61379C();
      *(a1 + 32) = result;
      v6 = 7;
    }

    else
    {
      v9 = [v2 currentDevice];
      v10 = [v9 userInterfaceIdiom];

      *(a1 + 24) = &type metadata for StickersFeatureFlags;
      result = sub_19A61379C();
      *(a1 + 32) = result;
      if (v10 == 5)
      {
        v6 = 6;
      }

      else
      {
        v6 = 4;
      }
    }
  }

  *a1 = v6;
  return result;
}

uint64_t sub_19A6133CC(void (*a1)(void *__return_ptr))
{
  a1(v3);
  v1 = sub_19A7A9194();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1 & 1;
}

uint64_t sub_19A61342C(char a1)
{
  v5 = &type metadata for StickersFeatureFlags;
  v6 = sub_19A61379C();
  v4[0] = a1;
  v2 = sub_19A7A9194();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

uint64_t StickersFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_19A7AC184();
  MEMORY[0x19A9065D0](v1);
  return sub_19A7AC1B4();
}

uint64_t sub_19A61350C()
{
  v1 = *v0;
  sub_19A7AC184();
  MEMORY[0x19A9065D0](v1);
  return sub_19A7AC1B4();
}

uint64_t sub_19A613554()
{
  v1 = *v0;
  sub_19A7AC184();
  MEMORY[0x19A9065D0](v1);
  return sub_19A7AC1B4();
}

uint64_t static GPFeatureFlags.isMixmojiEnabled.getter()
{
  v4 = &type metadata for GPFeatureFlags;
  v5 = sub_19A61383C();
  v0 = sub_19A7A9194();
  __swift_destroy_boxed_opaque_existential_1(v3);
  v4 = &type metadata for StickersFeatureFlags;
  v5 = sub_19A61379C();
  v3[0] = 14;
  v1 = sub_19A7A9194();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v0 & v1 & 1;
}