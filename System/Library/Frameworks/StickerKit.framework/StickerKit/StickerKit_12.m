uint64_t sub_19A71D38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_19A7AB354();
  v4[4] = sub_19A7AB344();
  v4[5] = sub_19A7AB344();
  v6 = sub_19A7AB2E4();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19A71D434, v6, v5);
}

uint64_t sub_19A71D434()
{
  v1 = v0[2];
  v2 = sub_19A7AB344();
  v0[8] = v2;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_19A71D540;
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v4, v2, v5, 0x616D696E416E7572, 0xEE0029286E6F6974, sub_19A71EEF8, v3, v6);
}

uint64_t sub_19A71D540()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_19A71D6A0, v3, v2);
}

uint64_t sub_19A71D6A0()
{

  v1 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A71F4D0, v1, v0);
}

uint64_t sub_19A71D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_19A7ABDC4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_19A7AB354();
  v4[9] = sub_19A7AB344();
  v7 = sub_19A7AB2E4();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_19A71D818, v7, v6);
}

uint64_t sub_19A71D818()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = sub_19A7AC1E4();
    v4 = v3;
    sub_19A7AC0F4();
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_19A71D960;

    return sub_19A776184(v2, v4, 0, 0, 1);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_19A71D960()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_19A71DCE4;
  }

  else
  {
    v8 = sub_19A71DAF8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19A71DAF8()
{
  v1 = *(v0 + 96);

  if (*(v1 + 72) == 2)
  {
  }

  else
  {
    v2 = sub_19A7AC064();

    if ((v2 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (qword_1EAFCB650 != -1)
  {
    swift_once();
  }

  v3 = sub_19A7A9384();
  __swift_project_value_buffer(v3, qword_1EAFCEED0);
  v4 = sub_19A7A9364();
  v5 = sub_19A7AB584();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_19A5EE000, v4, v5, "Timed out!", v6, 2u);
    MEMORY[0x19A907A30](v6, -1, -1);
  }

  sub_19A71BA38();
LABEL_9:

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_19A71DCE4()
{

  if (qword_1EAFCB650 != -1)
  {
    swift_once();
  }

  v1 = sub_19A7A9384();
  __swift_project_value_buffer(v1, qword_1EAFCEED0);
  v2 = sub_19A7A9364();
  v3 = sub_19A7AB584();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 112);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_19A5EE000, v2, v3, "Cancelled", v6, 2u);
    MEMORY[0x19A907A30](v6, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_19A71DE28()
{

  return swift_deallocClassInstance();
}

id sub_19A71DE68(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEF00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_19A71EF00;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A719B64;
  aBlock[3] = &block_descriptor_68;
  v10 = _Block_copy(aBlock);

  [a2 addCompletion_];
  _Block_release(v10);
  return [a2 startAnimation];
}

void sub_19A71E0A0(uint64_t a1)
{
  v2 = sub_19A7A8C04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00]();
  v7 = &v16 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_1ED8B2D18 != -1)
    {
      swift_once();
    }

    sub_19A778B08(1);
    [objc_opt_self() setRestoresToEmojiInputMode];
    v10 = sub_19A7AB394();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v3 + 16))(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    sub_19A7AB354();

    v12 = sub_19A7AB344();
    v13 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    *(v14 + 2) = v12;
    *(v14 + 3) = v15;
    *(v14 + 4) = v11;
    (*(v3 + 32))(&v14[v13], v5, v2);

    sub_19A6816F0(0, 0, v7, &unk_19A7BFA78, v14);
  }
}

uint64_t sub_19A71E354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_19A7AB354();
  v5[20] = sub_19A7AB344();
  v7 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A71E3EC, v7, v6);
}

uint64_t sub_19A71E3EC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EAFCB650 != -1)
    {
      swift_once();
    }

    v3 = sub_19A7A9384();
    __swift_project_value_buffer(v3, qword_1EAFCEED0);
    v4 = sub_19A7A9364();
    v5 = sub_19A7AB5A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_19A5EE000, v4, v5, "animationShouldBegin", v6, 2u);
      MEMORY[0x19A907A30](v6, -1, -1);
    }

    v7 = sub_19A7A8BF4();
    if (v7)
    {
      v8 = v7;
      *(v0 + 88) = 0x6172466567616D69;
      *(v0 + 96) = 0xEA0000000000656DLL;
      sub_19A7ABC54();
      if (!*(v8 + 16) || (v9 = sub_19A6955D8(v0 + 16), (v10 & 1) == 0))
      {
LABEL_13:

        sub_19A6A0B0C(v0 + 16);
        goto LABEL_16;
      }

      sub_19A6120B4(*(v8 + 56) + 32 * v9, v0 + 56);
      sub_19A6A0B0C(v0 + 16);
      type metadata accessor for CGRect(0);
      if (swift_dynamicCast())
      {
        v11 = *(v0 + 88);
        v12 = *(v0 + 96);
        v13 = *(v0 + 104);
        v14 = *(v0 + 112);
        strcpy((v0 + 88), "visibleImage");
        *(v0 + 101) = 0;
        *(v0 + 102) = -5120;
        sub_19A7ABC54();
        if (*(v8 + 16))
        {
          v15 = sub_19A6955D8(v0 + 16);
          if (v16)
          {
            sub_19A6120B4(*(v8 + 56) + 32 * v15, v0 + 88);
            sub_19A6A0B0C(v0 + 16);

            sub_19A625DC4((v0 + 88), (v0 + 56));
            sub_19A6120B4(v0 + 56, v0 + 16);
            type metadata accessor for CGImage(0);
            swift_dynamicCast();
            v17 = *(v0 + 88);
            v18 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];

            sub_19A71C100(v18, v11, v12, v13, v14);

            __swift_destroy_boxed_opaque_existential_1(v0 + 56);
            goto LABEL_16;
          }
        }

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

LABEL_16:
  v19 = *(v0 + 8);

  return v19();
}

id sub_19A71E734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JumpAndSlamAnimationHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_19A71E78C()
{
  result = qword_1EAFCEEF0;
  if (!qword_1EAFCEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCEEF0);
  }

  return result;
}

uint64_t sub_19A71E7E0()
{
  v0 = sub_19A7ABEC4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_19A71E83C(uint64_t a1)
{
  v4 = *(sub_19A7A8C04() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60FB98;

  return sub_19A71E354(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_19A71E934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60FB98;

  return sub_19A71D724(a1, v4, v5, v6);
}

id sub_19A71E9F4()
{
  v1 = *(v0 + 16);
  MidX = CGRectGetMidX(*(v0 + 24));
  [v1 center];

  return [v1 setCenter_];
}

id sub_19A71EA5C()
{
  v1 = *(v0 + 16);
  CGRectGetMidY(*(v0 + 24));
  [v1 center];

  return [v1 setCenter_];
}

id sub_19A71EAC4()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v10.origin.x = v2;
  v10.origin.y = v3;
  v10.size.width = v4;
  v10.size.height = v5;
  Width = CGRectGetWidth(v10);
  v11.origin.x = v2;
  v11.origin.y = v3;
  v11.size.width = v4;
  v11.size.height = v5;
  Height = CGRectGetHeight(v11);

  return [v1 setBounds_];
}

id sub_19A71EB5C()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

uint64_t sub_19A71EB9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_19A60FB98;

  return sub_19A71CBA4(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_19A71EC78()
{
  result = qword_1EAFCEEF8;
  if (!qword_1EAFCEEF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAFCEEF8);
  }

  return result;
}

uint64_t sub_19A71ECC4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_19A60FB98;

  return sub_19A71CF18(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_19A71ED8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60FB98;

  return sub_19A71D38C(a1, v4, v5, v6);
}

uint64_t sub_19A71EE40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A60F860;

  return sub_19A5F2D24(a1, v4);
}

void sub_19A71EF78(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  *(v6 + 72) = 1;
  sub_19A719C34();
  v14 = [a1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  v16 = [a1 view];
  if (!v16)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 convertRect:0 toView:{v19, v21, v23, v25}];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v39.origin.x = a3;
  v39.origin.y = a4;
  v39.size.width = a5;
  v39.size.height = a6;
  if (CGRectIsNull(v39))
  {
    if (qword_1EAFCB650 != -1)
    {
      swift_once();
    }

    v34 = sub_19A7A9384();
    __swift_project_value_buffer(v34, qword_1EAFCEED0);
    v35 = sub_19A7A9364();
    v36 = sub_19A7AB584();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_19A5EE000, v35, v36, "Source frame is null", v37, 2u);
      MEMORY[0x19A907A30](v37, -1, -1);
    }
  }

  else
  {
    v27 = v27 + a3;
    v29 = v29 + a4;
    v31 = a5;
    v33 = a6;
  }

  swift_retain_n();
  sub_19A70255C(a1, &unk_19A7BFAE8, v7, sub_19A71F2C0, v7);

  if ([objc_opt_self() useNewCollectionView])
  {
    sub_19A71BBCC(a1, a2, v27, v29, v31, v33);

    sub_19A71BEA0();
  }
}

uint64_t sub_19A71F228(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19A60F860;

  return sub_19A71ADD4(a1, v1);
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = sub_19A7A8C04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19A71F39C(uint64_t a1)
{
  v4 = *(sub_19A7A8C04() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60FB98;

  return sub_19A71A358(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_19A71F4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A6BEABC;

  return v9(a1, a2, a3);
}

uint64_t sub_19A71F5FC(uint64_t a1)
{
  *(v2 + 1480) = v1;
  *(v2 + 1472) = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A71F620, 0, 0);
}

uint64_t sub_19A71F620()
{
  v1 = v0[185];
  v2 = v0[184];
  v3 = swift_allocObject();
  v0[186] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF210);
  swift_asyncLet_begin();
  v5 = swift_allocObject();
  v0[187] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v6 = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEF28);
  swift_asyncLet_begin();
  v0[183] = MEMORY[0x1E69E7CC0];

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 181, sub_19A71F77C, v0 + 162);
}

uint64_t sub_19A71F77C()
{
  *(v1 + 1504) = v0;
  if (v0)
  {
    v2 = sub_19A71FC0C;
  }

  else
  {
    v2 = sub_19A71F7B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A71F7B0()
{
  v1 = v0[181];
  if (v1 >> 62)
  {
    v2 = sub_19A7ABBE4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];

    v4 = sub_19A65AD10(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC0](v4, v5, v6, v7);
    }

    v8 = 0;
    v3 = v15;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x19A906130](v8, v1);
      }

      else
      {
        v9 = *(v1 + 8 * v8 + 32);
      }

      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        v14 = v9;
        sub_19A65AD10((v10 > 1), v11 + 1, 1);
        v9 = v14;
      }

      *(v15 + 16) = v11 + 1;
      v12 = v15 + 56 * v11;
      *(v12 + 32) = v9;
      ++v8;
      *(v12 + 40) = 0u;
      *(v12 + 56) = 0u;
      *(v12 + 72) = 0;
      *(v12 + 80) = 0x8000;
    }

    while (v2 != v8);
  }

  v0[183] = v3;
  v0[189] = v3;
  v6 = sub_19A71F948;
  v4 = (v0 + 82);
  v5 = v0 + 182;
  v7 = v0 + 162;

  return MEMORY[0x1EEE6DEC0](v4, v5, v6, v7);
}

uint64_t sub_19A71F948()
{
  *(v1 + 1520) = v0;
  if (v0)
  {

    v2 = sub_19A71FE94;
  }

  else
  {
    v2 = sub_19A71F9C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A71F9C8()
{
  v1 = *(v0 + 1456);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = (v0 + 1336);
    v18 = MEMORY[0x1E69E7CC0];

    sub_19A65AD10(0, v2, 0);
    v3 = v18;
    v5 = v2 - 1;
    for (i = 32; ; i += 56)
    {
      v7 = *(v1 + i);
      v8 = *(v1 + i + 16);
      v9 = *(v1 + i + 32);
      *(v0 + 1384) = *(v1 + i + 48);
      *(v0 + 1352) = v8;
      *(v0 + 1368) = v9;
      *v4 = v7;
      sub_19A60F01C(v0 + 1336, v0 + 1392);
      v11 = *(v18 + 16);
      v10 = *(v18 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_19A65AD10((v10 > 1), v11 + 1, 1);
      }

      v12 = *(v0 + 1384) & 0x1FF;
      v13 = v18 + 56 * v11;
      v14 = *v4;
      v15 = *(v0 + 1352);
      v16 = *(v0 + 1368);
      *(v18 + 16) = v11 + 1;
      *(v13 + 32) = v14;
      *(v13 + 48) = v15;
      *(v13 + 64) = v16;
      *(v13 + 80) = v12;
      if (!v5)
      {
        break;
      }

      --v5;
    }
  }

  sub_19A616BF0(v3);
  *(v0 + 1528) = *(v0 + 1464);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1456, sub_19A71FB40, v0 + 1296);
}

uint64_t sub_19A71FB98()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1528);

  return v1(v2);
}

uint64_t sub_19A71FC0C()
{
  v1 = *(v0 + 1504);
  *(v0 + 1336) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECA0);
  if (swift_dynamicCast())
  {

    if (qword_1EAFCB660 != -1)
    {
      swift_once();
    }

    v3 = sub_19A7A9384();
    __swift_project_value_buffer(v3, qword_1EAFCEF08);
    v4 = sub_19A7A9364();
    v5 = sub_19A7AB584();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_19A5EE000, v4, v5, "Spotlight sticker search query has timed out; ignoring stickers results", v6, 2u);
      MEMORY[0x19A907A30](v6, -1, -1);
    }

    *(v0 + 1512) = MEMORY[0x1E69E7CC0];

    return MEMORY[0x1EEE6DEC0](v0 + 656, v0 + 1456, sub_19A71F948, v0 + 1296);
  }

  else
  {

    return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1456, sub_19A71FDCC, v0 + 1296);
  }
}

uint64_t sub_19A71FE24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A71FF0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A71FF7C()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCEF08);
  __swift_project_value_buffer(v0, qword_1EAFCEF08);
  return sub_19A7A9374();
}

uint64_t sub_19A720000@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *v1;
  if (*(v1 + 48) < 0)
  {
    sub_19A6240BC(v6 + OBJC_IVAR___STKImageGlyph_stickerUUID, v5);
    v9 = sub_19A7A8F64();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      result = sub_19A62412C(v5);
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    else
    {
      v6 = sub_19A7A8F14();
      v7 = v11;
      result = (*(v10 + 8))(v5, v9);
    }
  }

  else
  {
    v7 = *(v1 + 8);
  }

  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t sub_19A72015C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A720180, 0, 0);
}

uint64_t sub_19A720180()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR___STKStickerSearchQuery_supportsImages;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_19A720290;
    v4 = *(v0 + 48);

    return sub_19A7236A4(v4);
  }

  else
  {
    **(v0 + 40) = MEMORY[0x1E69E7CC0];
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_19A720290(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return MEMORY[0x1EEE6DFA0](sub_19A7203DC, 0, 0);
  }
}

uint64_t sub_19A720400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A720424, 0, 0);
}

uint64_t sub_19A720424()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR___STKStickerSearchQuery_supportsEmoji;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_19A720534;
    v4 = *(v0 + 48);

    return sub_19A722780(v4);
  }

  else
  {
    **(v0 + 40) = MEMORY[0x1E69E7CC0];
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_19A720534(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return MEMORY[0x1EEE6DFA0](sub_19A721070, 0, 0);
  }
}

uint64_t sub_19A720680()
{

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_10StickerKit5EmojiV8SkinToneOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x7E) != 0)
  {
    return 128 - (v1 & 0x7E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_19A720738(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 50))
  {
    return (*a1 + 127);
  }

  v3 = (HIBYTE(*(a1 + 48)) & 0x7E | (*(a1 + 48) >> 15)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_19A72078C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (((-a2 >> 1) & 0x3F) - (a2 << 6)) << 9;
    }
  }

  return result;
}

unint64_t sub_19A720830()
{
  result = qword_1EAFCEF20;
  if (!qword_1EAFCEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCEF20);
  }

  return result;
}

void sub_19A720884()
{
  v1 = v0;
  v2 = sub_19A7AAA14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StickerSearchDataSource();
  v6 = swift_allocObject();
  (*(v3 + 104))(v5, *MEMORY[0x1E69D4638], v2);
  sub_19A7AAAC4();
  swift_allocObject();
  *(v6 + 16) = sub_19A7AAA04();
  *(v1 + 16) = v6;
  type metadata accessor for EmojiSearchDataSource();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_19A7A8F74();
  v8 = sub_19A7AAFE4();
  v9 = [objc_opt_self() emojiLocaleDataWithLocaleIdentifier_];

  if (v9)
  {
    *(v7 + OBJC_IVAR____TtC10StickerKit21EmojiSearchDataSource_localeData) = v9;
    *(v1 + 24) = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19A720A2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A720AC4;

  return sub_19A71F5FC(a1);
}

uint64_t sub_19A720AC4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_19A720BC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19A60F860;

  return sub_19A72015C(a1, v5, v4);
}

uint64_t sub_19A720C70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19A60FB98;

  return sub_19A720400(a1, v5, v4);
}

uint64_t sub_19A720D1C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  v44 = *(a2 + 48);
  v43 = v11;
  if (v8 < 0)
  {
    if (v15 < 0)
    {
      v42 = *a2;
      v25 = *(a2 + 8);
      v36 = *(a1 + 32);
      v39 = *(a1 + 40);
      v34 = *(a1 + 24);
      v26 = *(a1 + 16);
      v27 = *(a2 + 48);
      v28 = *(a1 + 8);
      v29 = *a1;
      v40 = *(a2 + 40);
      sub_19A665E54();
      sub_19A6BAFA4(v42, v25, v11, v12, v14, v13, v27);
      sub_19A6BAFA4(v29, v28, v26, v34, v36, v39, v8);
      v30 = sub_19A7AB924();
      sub_19A720FFC(v29, v28, v26, v34, v36, v39, v8);
      sub_19A720FFC(v42, v25, v11, v12, v14, v40, v44);
      return v30 & 1;
    }

    goto LABEL_5;
  }

  if (v15 < 0)
  {
LABEL_5:
    v41 = *a2;
    v38 = *(a2 + 8);
    v22 = *(a1 + 8);
    v23 = *a1;
    sub_19A6BAFA4(*a2, v9, *(a2 + 16), v12, v14, v13, v15);
    sub_19A6BAFA4(v23, v22, v4, v5, v7, v6, v8);
    sub_19A720FFC(v23, v22, v4, v5, v7, v6, v8);
    sub_19A720FFC(v41, v38, v43, v12, v14, v13, v44);
    v21 = 0;
    return v21 & 1;
  }

  v47[0] = *a1;
  v47[1] = v2;
  v32 = v2;
  v47[2] = v4;
  v47[3] = v5;
  v47[4] = v7;
  v47[5] = v6;
  v48 = v8 & 0x1FF;
  v45[0] = v10;
  v45[1] = v9;
  v45[2] = v11;
  v45[3] = v12;
  v45[4] = v14;
  v45[5] = v13;
  v31 = v8;
  v16 = v13;
  v46 = v15 & 0x1FF;
  v17 = v9;
  v35 = v7;
  v37 = v6;
  v33 = v5;
  v18 = v4;
  v19 = v15;
  v20 = v3;
  v21 = _s10StickerKit5EmojiV2eeoiySbAC_ACtFZ_0(v47, v45);
  sub_19A6BAFA4(v10, v17, v11, v12, v14, v16, v19);
  sub_19A6BAFA4(v20, v32, v18, v33, v35, v37, v31);
  sub_19A720FFC(v20, v32, v18, v33, v35, v37, v31);
  sub_19A720FFC(v10, v17, v11, v12, v14, v16, v44);
  return v21 & 1;
}

void sub_19A720FFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  if (a7 < 0)
  {
  }

  else
  {
    v8 = a7;

    sub_19A60EF74(a5, a6, v8);
  }
}

uint64_t sub_19A721074()
{
  v58 = sub_19A7A9304();
  v1 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19A7A8F64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v49 - v9;
  v56 = v0;
  sub_19A7AAE24();
  sub_19A7A8F14();
  v13 = *(v5 + 8);
  v11 = v5 + 8;
  v12 = v13;
  v13(v10, v4);
  v14 = sub_19A7AAFE4();

  if (qword_1EAFCB668 != -1)
  {
    swift_once();
  }

  v15 = qword_1EAFCEF30;
  v16 = [qword_1EAFCEF30 objectForKey_];
  if (v16)
  {
    v17 = v16;

    return v17;
  }

  sub_19A5F5028(0, &qword_1EAFCEF38);
  if (![swift_getObjCClassFromMetadata() instancesRespondToSelector_])
  {

    return 0;
  }

  v50 = v15;
  v18 = sub_19A72171C();
  v49 = sub_19A64EC2C(v18);

  sub_19A7AAD94();

  v59 = sub_19A69BA80(v19);
  sub_19A68261C(&v59);
  v52 = v14;
  v53 = v11;

  v20 = v59;
  v54 = v4;
  v55 = v8;
  v51 = v12;
  if ((v59 & 0x8000000000000000) == 0 && (v59 & 0x4000000000000000) == 0)
  {
    v21 = *(v59 + 16);
    if (v21)
    {
      goto LABEL_9;
    }

LABEL_18:

    MEMORY[0x19A905020](v34);
    sub_19A7AAE34();
    sub_19A7AAEB4();
    v58 = sub_19A7AAEA4();
    sub_19A7AAC04();
    v36 = v35;
    v57 = sub_19A7AAE34();
    v37 = sub_19A7AAEF4();
    v39 = v38;
    v40 = sub_19A7A8F24();
    sub_19A5F5028(0, &qword_1ED8B2000);
    v41 = sub_19A7AB234();

    v42 = sub_19A7AAFE4();

    if (v36)
    {
      v43 = sub_19A7AAFE4();
    }

    else
    {
      v43 = 0;
    }

    v44 = sub_19A7AAFE4();

    if (v39 >> 60 == 15)
    {
      v45 = 0;
    }

    else
    {
      v45 = sub_19A7A8E14();
      sub_19A612F00(v37, v39);
    }

    v46 = objc_allocWithZone(MEMORY[0x1E6973F40]);
    v47 = sub_19A7AAF34();

    v17 = [v46 initWithStickerIdentifier:v40 representations:v41 stickerName:v42 effectType:v58 externalURI:v43 localizedDescription:v44 metadata:v45 attributionInfo:v47];

    v51(v55, v54);
    v48 = v52;
    [v50 setObject:v17 forKey:v52];

    return v17;
  }

  v21 = sub_19A7ABBE4();
  if (!v21)
  {
    goto LABEL_18;
  }

LABEL_9:
  v59 = MEMORY[0x1E69E7CC0];
  sub_19A7ABD84();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v57 = v20 & 0xC000000000000001;
    v23 = (v1 + 8);
    do
    {
      if (v57)
      {
        v24 = MEMORY[0x19A906130](v22, v20);
      }

      else
      {
        v24 = *(v20 + 8 * v22 + 32);
      }

      v25 = v24;
      ++v22;
      v26 = [objc_allocWithZone(MEMORY[0x1E69DD760]) init];
      v27 = sub_19A7AACC4();
      v29 = v28;
      v30 = sub_19A7A8E14();
      sub_19A612F14(v27, v29);
      [v26 setData_];

      sub_19A7AAC74();
      sub_19A7A9284();
      (*v23)(v3, v58);
      v31 = sub_19A7AAFE4();

      [v26 setType_];

      sub_19A7AAD14();
      [v26 setSize_];
      sub_19A7AACF4();
      v32 = sub_19A7AAFE4();

      [v26 setRole_];

      sub_19A7ABD64();
      sub_19A7ABD94();
      sub_19A7ABDA4();
      sub_19A7ABD74();
    }

    while (v21 != v22);
    goto LABEL_18;
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_19A7216E8()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EAFCEF30 = result;
  return result;
}

unint64_t sub_19A72171C()
{
  v0 = sub_19A7AAD84();
  if (v0)
  {
    v1 = v0;
    v2 = sub_19A69C220(MEMORY[0x1E69E7CC0]);
    v3 = sub_19A7AAD64();
    if (v3)
    {
      v4 = v3;
      v5 = sub_19A7AB014();
      v7 = v6;
      v31 = sub_19A5F5028(0, &qword_1ED8B1FE0);
      *&v30 = v4;
      sub_19A625DC4(&v30, v29);
      v8 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_19A650474(v29, v5, v7, isUniquelyReferenced_nonNull_native);
    }

    v10 = sub_19A7AAD34();
    v12 = MEMORY[0x1E69E6158];
    if (v11)
    {
      v13 = v10;
      v14 = v11;
      v15 = sub_19A7AB014();
      v17 = v16;
      v31 = v12;
      *&v30 = v13;
      *(&v30 + 1) = v14;
      sub_19A625DC4(&v30, v29);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      sub_19A650474(v29, v15, v17, v18);
    }

    v19 = sub_19A7AAD44();
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v23 = sub_19A7AB014();
      v25 = v24;
      v31 = v12;
      *&v30 = v21;
      *(&v30 + 1) = v22;
      sub_19A625DC4(&v30, v29);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      sub_19A650474(v29, v23, v25, v26);
    }

    return v2;
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];

    return sub_19A69C220(v27);
  }
}

id sub_19A721930()
{
  sub_19A7AB014();
  v1 = sub_19A7AAFE4();

  v2 = [objc_opt_self() categoryWithIdentifier_];

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = [v2 emojiTokensForLocaleData_];
  if (!v3)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  sub_19A7230D4();
  v5 = sub_19A7AB254();

  v6 = [objc_allocWithZone(MEMORY[0x1E699BAE0]) init];
  v7 = [v6 recentEmojis];
  v8 = sub_19A7AB254();

  v14 = v8;
  if (v8 >> 62)
  {
    goto LABEL_22;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 14)
  {
    do
    {
      v9 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          MEMORY[0x19A906130](v9, v5);
        }

        else
        {
          if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v10 = *(v5 + 8 * v9 + 32);
        }

        MEMORY[0x19A905660]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_19A7AB274();
        }

        v8 = &v14;
        sub_19A7AB2A4();
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v8 = v14;
        if (v14 >> 62)
        {
          v11 = sub_19A7ABBE4();
        }

        else
        {
          v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v9;
        if (v11 >= 15)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    while (sub_19A7ABBE4() <= 14);
  }

LABEL_23:

  v13 = sub_19A722C48(v8);

  return v13;
}

void sub_19A721B98(void (**a1)(char *, char *, uint64_t))
{
  v3 = v2;
  v4 = v1;
  v6 = sub_19A7A8BA4();
  v100 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_19A7A8FB4();
  v8 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + OBJC_IVAR___STKStickerSearchQuery_locale);
  swift_beginAccess();
  v11 = v10[1];
  if (!v11)
  {
LABEL_13:
    v30 = (a1 + OBJC_IVAR___STKStickerSearchQuery_exactQuery);
    swift_beginAccess();
    v31 = *v30;
    v32 = v30[1];
    if (!v32)
    {
      goto LABEL_22;
    }

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v33)
    {
LABEL_22:
      v34 = (a1 + OBJC_IVAR___STKStickerSearchQuery_autocorrectedQuery);
      swift_beginAccess();
      v35 = v34[1];
      if (!v35 || ((v35 & 0x2000000000000000) != 0 ? (v36 = HIBYTE(v35) & 0xF) : (v36 = *v34 & 0xFFFFFFFFFFFFLL), !v36 || !v32))
      {
        sub_19A721930();
        return;
      }
    }

    v105 = v31;
    v106 = v32;

    v37 = v99;
    sub_19A7A8B94();
    sub_19A639920();
    v38 = sub_19A7ABAF4();
    v40 = v39;
    (*(v100 + 8))(v37, v6);
    v41 = v40;

    v94 = OBJC_IVAR____TtC10StickerKit21EmojiSearchDataSource_localeData;
    v42 = *(v4 + OBJC_IVAR____TtC10StickerKit21EmojiSearchDataSource_localeData);
    v96 = v38;
    v43 = sub_19A7AAFE4();
    v44 = [v42 emojiTokensForText:v43 phoneticReading:0 options:1 searchType:2 includePrefixMatches:1];

    v45 = MEMORY[0x1E69E7CC0];
    if (v44)
    {
      sub_19A7230D4();
      v46 = sub_19A7AB254();
    }

    else
    {
      v46 = MEMORY[0x1E69E7CC0];
    }

    v47 = sub_19A722E64(v46);

    if (v47)
    {
      goto LABEL_63;
    }

    v48 = OBJC_IVAR___STKStickerSearchQuery_multilingualSearchLocales;
    swift_beginAccess();
    if (*(a1 + v48))
    {
      v45 = *(a1 + v48);
    }

    if (v46 >> 62)
    {
      if (sub_19A7ABBE4())
      {
        goto LABEL_32;
      }
    }

    else if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_32:

LABEL_46:
      v107 = v46;
      v63 = (a1 + OBJC_IVAR___STKStickerSearchQuery_autocorrectedQuery);
      swift_beginAccess();
      v64 = v63[1];
      if (v64)
      {
        v65 = HIBYTE(v64) & 0xF;
        if ((v64 & 0x2000000000000000) == 0)
        {
          v65 = *v63 & 0xFFFFFFFFFFFFLL;
        }

        if (v65)
        {
          v95 = v41;
          v66 = v45;
          v67 = v8;
          v68 = *(v4 + v94);

          v69 = sub_19A7AAFE4();

          v70 = [v68 emojiTokensForText:v69 phoneticReading:0 options:1 searchType:2 includePrefixMatches:1];

          if (v70)
          {
            sub_19A7230D4();
            v71 = sub_19A7AB254();
          }

          else
          {
            v71 = MEMORY[0x1E69E7CC0];
          }

          sub_19A616AE0(v71);
          v8 = v67;
          v45 = v66;
          v41 = v95;
        }
      }

      if (*(v45 + 16) < 2uLL)
      {
        goto LABEL_61;
      }

      v72 = v63[1];
      if (!v72)
      {
        goto LABEL_61;
      }

      v73 = *v63;
      v74 = HIBYTE(v72) & 0xF;
      if ((v72 & 0x2000000000000000) == 0)
      {
        v74 = *v63 & 0xFFFFFFFFFFFFLL;
      }

      if (!v74 || v73 == v96 && v72 == v41 || (v75 = sub_19A7AC064(), , , (v75 & 1) != 0))
      {
LABEL_61:
      }

      else
      {
        v100 = v4;
        v92 = v3;
        v103 = MEMORY[0x1E69E7CC0];
        v76 = *(v45 + 16);
        if (v76)
        {
          v96 = v73;
          v97 = v72;
          v99 = OBJC_IVAR____TtC10StickerKit21EmojiSearchDataSource_locale;
          swift_beginAccess();
          v98 = (v8 + 16);
          v77 = (v8 + 8);
          v91 = v45;
          v78 = v45 + 40;
          do
          {

            v79 = sub_19A7AAFE4();
            v80 = v101;
            v81 = v102;
            (*v98)(v101, &v99[v100], v102);
            v82 = sub_19A7A8F94();
            (*v77)(v80, v81);
            LODWORD(v81) = UIKeyboardInputModeLanguageMatchesLocaleLanguage();

            if (v81)
            {
            }

            else
            {
              v83 = sub_19A7AAFE4();

              v84 = [objc_opt_self() emojiLocaleDataWithLocaleIdentifier_];

              if (v84)
              {
                v85 = v84;
                v86 = sub_19A7AAFE4();
                v87 = [v85 emojiTokensForText:v86 phoneticReading:0 options:1 searchType:2 includePrefixMatches:1];

                if (v87)
                {
                  sub_19A7230D4();
                  v88 = sub_19A7AB254();

                  sub_19A616AE0(v88);
                }
              }
            }

            v78 += 16;
            --v76;
          }

          while (v76);

          v89 = v103;
        }

        else
        {

          v89 = MEMORY[0x1E69E7CC0];
        }

        v103 = v107;
        sub_19A616AE0(v89);
        v107 = v103;
      }

      sub_19A722C48(v107);
LABEL_63:

      return;
    }

    v49 = *(v45 + 16);

    if (v49)
    {
      v93 = v8;

      v46 = MEMORY[0x1E69E7CC0];
      v104 = MEMORY[0x1E69E7CC0];
      v50 = *(v45 + 16);
      if (v50)
      {
        v95 = v41;
        v98 = a1;
        v92 = v3;
        v100 = v4;
        v99 = OBJC_IVAR____TtC10StickerKit21EmojiSearchDataSource_locale;
        swift_beginAccess();
        v97 = (v93 + 16);
        v51 = (v93 + 8);
        v91 = v45;
        v52 = v45 + 40;
        do
        {

          v53 = sub_19A7AAFE4();
          v54 = v101;
          v55 = v102;
          (*v97)(v101, &v99[v100], v102);
          v56 = sub_19A7A8F94();
          (*v51)(v54, v55);
          LODWORD(v55) = UIKeyboardInputModeLanguageMatchesLocaleLanguage();

          if (v55)
          {
          }

          else
          {
            v57 = sub_19A7AAFE4();

            v58 = [objc_opt_self() emojiLocaleDataWithLocaleIdentifier_];

            if (v58)
            {
              v59 = v58;
              v60 = sub_19A7AAFE4();
              v61 = [v59 emojiTokensForText:v60 phoneticReading:0 options:1 searchType:2 includePrefixMatches:1];

              if (v61)
              {
                sub_19A7230D4();
                v62 = sub_19A7AB254();

                sub_19A616AE0(v62);
              }
            }
          }

          v52 += 16;
          --v50;
        }

        while (v50);
        v46 = v104;
        v3 = v92;
        v4 = v100;
        a1 = v98;
        v45 = v91;
        v41 = v95;
      }

      v8 = v93;
    }

    goto LABEL_46;
  }

  v98 = a1;
  v12 = *v10;
  v13 = OBJC_IVAR____TtC10StickerKit21EmojiSearchDataSource_localeData;
  v14 = *(v4 + OBJC_IVAR____TtC10StickerKit21EmojiSearchDataSource_localeData);

  v15 = [v14 localeIdentifier];
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v15;
  v97 = v6;
  v17 = v8;
  v18 = v4;
  v19 = v3;
  v20 = sub_19A7AB014();
  v22 = v21;

  if (v20 == v12 && v11 == v22)
  {

    v3 = v19;
    v4 = v18;
    v8 = v17;
    a1 = v98;
    v6 = v97;
    goto LABEL_13;
  }

  v24 = sub_19A7AC064();

  v3 = v19;
  v4 = v18;
  v8 = v17;
  v6 = v97;
  if (v24)
  {

LABEL_11:
    a1 = v98;
    goto LABEL_13;
  }

LABEL_9:

  v25 = v101;
  sub_19A7A8F74();
  v26 = OBJC_IVAR____TtC10StickerKit21EmojiSearchDataSource_locale;
  swift_beginAccess();
  (*(v8 + 40))(v4 + v26, v25, v102);
  swift_endAccess();
  v27 = sub_19A7AAFE4();
  v28 = [objc_opt_self() emojiLocaleDataWithLocaleIdentifier_];

  if (v28)
  {

    v29 = *(v4 + v13);
    *(v4 + v13) = v28;

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_19A722780(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A7227A0, v1, 0);
}

char *sub_19A7227A0()
{
  v21 = v0;
  sub_19A7AB3D4();
  sub_19A721B98(*(v0 + 16));
  v2 = v1;
  v3 = sub_19A722E64(v1);
  if (v2 >> 62)
  {
    v4 = sub_19A7ABBE4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_14:

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_3:
  v18 = MEMORY[0x1E69E7CC0];
  result = sub_19A5F599C(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = v18;
  v8 = v4 - 1;
  if ((v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  for (i = MEMORY[0x19A906130](v6, v2); ; i = *(v2 + 8 * v6 + 32))
  {
    v10 = i;
    sub_19A5F59D8(i, 0x686372616573, 0xE600000000000000, (v3 ^ 1) & 1, v19);

    v12 = *(v18 + 16);
    v11 = *(v18 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_19A5F599C((v11 > 1), v12 + 1, 1);
    }

    *(v18 + 16) = v12 + 1;
    v13 = v18 + 56 * v12;
    v14 = v19[0];
    v15 = v19[1];
    v16 = v19[2];
    *(v13 + 80) = v20;
    *(v13 + 48) = v15;
    *(v13 + 64) = v16;
    *(v13 + 32) = v14;
    if (v8 == v6)
    {
      break;
    }

    ++v6;
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_5;
    }

LABEL_6:
    ;
  }

LABEL_15:
  v17 = *(v0 + 8);

  return v17(v7);
}

uint64_t sub_19A7229C8()
{
  v1 = OBJC_IVAR____TtC10StickerKit21EmojiSearchDataSource_locale;
  v2 = sub_19A7A8FB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for EmojiSearchDataSource()
{
  result = qword_1EAFCAD28;
  if (!qword_1EAFCAD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A722AA4()
{
  result = sub_19A7A8FB4();
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

unint64_t sub_19A722B5C()
{
  result = qword_1EAFCEF40;
  if (!qword_1EAFCEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCEF40);
  }

  return result;
}

uint64_t sub_19A722BB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A720AC4;

  return sub_19A722780(a1);
}

id sub_19A722C48(unint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  result = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v4 = result;
  if (a1 >> 62)
  {
    result = sub_19A7ABBE4();
    v5 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_21:
    v12 = [v4 array];
    v13 = sub_19A7AB254();

    v14 = sub_19A623F90(v13);

    return v14;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19A906130](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v7 = v8;
      v9 = [v8 string];
      if (!v9)
      {
        goto LABEL_6;
      }

      v10 = v9;
      if ([v7 supportsSkinToneVariants])
      {
        v11 = [objc_opt_self() _baseStringForEmojiString_];

        if (!v11)
        {
          goto LABEL_19;
        }

        if (![v2 containsObject_])
        {
          v10 = v11;
LABEL_18:
          [v2 addObject_];

LABEL_19:
          [v4 addObject_];
          goto LABEL_6;
        }

        v7 = v11;
      }

      else
      {
        if (![v2 containsObject_])
        {
          goto LABEL_18;
        }

        v7 = v10;
      }

LABEL_6:
      ++v6;

      if (v5 == v6)
      {
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_19A722E64(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    a1 = sub_19A7ABBE4();
    v2 = a1;
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_15:
    v18 = v3;
    MEMORY[0x1EEE9AC00](a1);
    v17[2] = &v18;
    v16 = sub_19A6DCB08(sub_19A723034, v17, &unk_1F0DC47D0);
    sub_19A72306C(&unk_1F0DC47F0);

    return (v16 & 1);
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = sub_19A65ACF0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v18;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A906130](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 string];
      if (v8)
      {
        v9 = v8;
        v10 = sub_19A7AB014();
        v12 = v11;
      }

      else
      {

        v10 = 0;
        v12 = 0;
      }

      v18 = v3;
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        a1 = sub_19A65ACF0((v13 > 1), v14 + 1, 1);
        v3 = v18;
      }

      ++v5;
      *(v3 + 16) = v14 + 1;
      v15 = v3 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v2 != v5);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A72306C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEF48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A7230D4()
{
  result = qword_1ED8B2068;
  if (!qword_1ED8B2068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8B2068);
  }

  return result;
}

uint64_t sub_19A723120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_19A60F0CC(a3, v22 - v9, &unk_1EAFCD690);
  v11 = sub_19A7AB394();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_19A5F2B54(v10, &unk_1EAFCD690);
  }

  else
  {
    sub_19A7AB384();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_19A7AB2E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_19A7AB074() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECC0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_19A5F2B54(a3, &unk_1EAFCD690);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19A5F2B54(a3, &unk_1EAFCD690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECC0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_19A7233F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_19A60F0CC(a3, v22 - v9, &unk_1EAFCD690);
  v11 = sub_19A7AB394();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_19A5F2B54(v10, &unk_1EAFCD690);
  }

  else
  {
    sub_19A7AB384();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_19A7AB2E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_19A7AB074() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_19A5F2B54(a3, &unk_1EAFCD690);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19A5F2B54(a3, &unk_1EAFCD690);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_19A7236A4(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  v3 = sub_19A7AAC14();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF48);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  v2[19] = swift_task_alloc();
  v4 = sub_19A7A9094();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v5 = sub_19A7A8F64();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A723920, 0, 0);
}

uint64_t sub_19A723920()
{
  sub_19A7AB3D4();
  v1 = (v0[9] + OBJC_IVAR___STKStickerSearchQuery_exactQuery);
  swift_beginAccess();
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    v4 = v0[9];
    v5 = objc_opt_self();

    v6 = [v5 userQueryContextWithCurrentSuggestion_];
    v0[29] = v6;
    v7 = v6;
    v8 = sub_19A7AB234();
    [v7 setBundleIDs_];

    v9 = sub_19A7AB234();
    [v7 setFetchAttributes_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_19A7B6C30;
    sub_19A7ABCB4();
    MEMORY[0x19A905510](0xD000000000000010, 0x800000019A7CC390);
    MEMORY[0x19A905510](v3, v2);
    MEMORY[0x19A905510](0xD00000000000001CLL, 0x800000019A7CC3B0);
    MEMORY[0x19A905510](v3, v2);
    MEMORY[0x19A905510](0xD000000000000037, 0x800000019A7CC3D0);
    MEMORY[0x19A905510](v3, v2);
    MEMORY[0x19A905510](0xD000000000000035, 0x800000019A7CC410);
    MEMORY[0x19A905510](v3, v2);
    MEMORY[0x19A905510](0x2964776322, 0xE500000000000000);
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    v11 = sub_19A7AB234();

    [v7 setFilterQueries_];

    v12 = v4 + OBJC_IVAR___STKStickerSearchQuery_locale;
    swift_beginAccess();
    v13 = v7;
    if (*(v12 + 8))
    {

      v13 = sub_19A7AAFE4();

      [v7 setKeyboardLanguage_];
    }

    v14 = v0[28];
    v15 = v0[11];

    v16 = objc_allocWithZone(MEMORY[0x1E6964EC8]);
    v17 = v7;
    v18 = sub_19A7AAFE4();

    v19 = [v16 initWithUserQueryString:v18 userQueryContext:v17];
    v0[30] = v19;

    v20 = sub_19A7AB394();
    v21 = *(*(v20 - 8) + 56);
    v21(v14, 1, 1, v20);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v19;
    v22[5] = 0xD000000000000011;
    v22[6] = 0x800000019A7C4F50;
    v23 = v19;
    v24 = sub_19A723120(0, 0, v14, &unk_19A7BFE88, v22);
    v0[31] = v24;
    v21(v14, 1, 1, v20);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v24;
    v25[5] = v15;

    v0[32] = sub_19A7233F8(0, 0, v14, &unk_19A7BFE98, v25);
    v26 = swift_task_alloc();
    v0[33] = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECC0);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECA0);
    v0[34] = v28;
    *v26 = v0;
    v26[1] = sub_19A723FB8;
    v29 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 8, v24, v27, v28, v29);
  }

  else
  {

    v30 = v0[1];
    v31 = MEMORY[0x1E69E7CC0];

    return v30(v31);
  }
}

uint64_t sub_19A723FB8()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_19A724850;
  }

  else
  {
    v2 = sub_19A7240CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A7240CC()
{
  v1 = v0[8];
  result = sub_19A7AB3B4();
  v70 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[21];
    v53 = v0[15];
    v6 = v0[13];
    v59 = (v5 + 8);
    v60 = (v5 + 32);
    v65 = (v5 + 48);
    v66 = (v5 + 56);
    v63 = *MEMORY[0x1E69D4718];
    v62 = (v6 + 104);
    v64 = (v6 + 8);
    v68 = v0[26];
    v67 = (v68 + 8);
    v61 = *(v1 + 16);
    v51 = v3 - 1;
    v52 = MEMORY[0x1E69E7CC0];
    v7 = v0[35];
    v58 = v1;
    while (2)
    {
      v8 = v4;
      while (1)
      {
        if (v8 >= *(v1 + 16))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }

        v69 = v7;
        (*(v68 + 16))(v0[27], v1 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v8, v0[25]);
        if (qword_1ED8B2A98 != -1)
        {
          swift_once();
        }

        sub_19A7A8F14();
        v9 = 1;
        v10 = sub_19A659378(1);
        if (v10)
        {
          v12 = v10;
          v13 = v11;
          v14 = sub_19A7AAFE4();
          v15 = [v12 indexPathForIdentifier:v14 ofType:1];

          if (v15)
          {
            v16 = v0[22];
            v17 = v0[23];
            v18 = v0[20];
            sub_19A7A9024();

            (*v60)(v17, v16, v18);
            v19 = sub_19A7A9044();
            result = sub_19A7A9064();
            v20 = result + v13;
            if (__OFADD__(result, v13))
            {
              goto LABEL_35;
            }

            v21 = v0[23];
            v22 = v0[20];
            MEMORY[0x19A903470](v19, v20);
            swift_unknownObjectRelease();
            (*v59)(v21, v22);
            v9 = 0;
            v1 = v58;
          }

          else
          {
            swift_unknownObjectRelease();
            v9 = 1;
          }
        }

        v24 = v0[19];
        v23 = v0[20];
        (*v66)(v24, v9, 1, v23);

        if ((*v65)(v24, 1, v23) == 1)
        {
          sub_19A5F2B54(v0[19], &unk_1EAFCF110);
        }

        else
        {
          (*v60)(v0[24], v0[19], v0[20]);
          v25 = sub_19A7A9064();
          v26 = sub_19A6590E0(v25);
          v29 = v28;
          v30 = v0[24];
          if (v26)
          {
            v32 = v0[17];
            v31 = v0[18];
            v33 = v0[16];
            v55 = *(v53 + 64);
            v56 = v0[20];
            *v32 = v26;
            v54 = v27;
            swift_unknownObjectRetain();
            v57 = v30;
            v34 = sub_19A7A9044();
            MEMORY[0x19A903470](v34, v29);
            swift_unknownObjectRelease();
            *(v32 + v55) = v54;
            sub_19A659B7C(v32, v31);
            v35 = *v31;
            sub_19A60F0CC(v31, v33, &qword_1EAFCCF48);
            swift_unknownObjectRelease();
            v36 = *(v53 + 48);
            v37 = sub_19A7A9014();
            v38 = *v59;
            (*v59)(v33 + v36, v56);
            v39 = [v35 itemAtIndexPath_];

            sub_19A5F2B54(v31, &qword_1EAFCCF48);
            v38(v57, v56);
            v1 = v58;
            v7 = v69;
            if (v39)
            {
              goto LABEL_23;
            }
          }

          else
          {
            (*v59)(v0[24], v0[20]);
          }
        }

        (*v62)(v0[14], v63, v0[12]);
        v40 = sub_19A7AAA54();
        if (v7)
        {
          v47 = v0[29];
          v46 = v0[30];
          v48 = v0[27];
          v49 = v0[25];
          (*v64)(v0[14], v0[12]);

          (*v67)(v48, v49);

          v50 = v0[1];

          return v50();
        }

        v41 = v40;
        (*v64)(v0[14], v0[12]);
        if (v41)
        {
          break;
        }

        ++v8;
        result = (*v67)(v0[27], v0[25]);
        v7 = 0;
        if (v61 == v8)
        {
          goto LABEL_28;
        }
      }

      sub_19A76E038();

      v7 = 0;
LABEL_23:
      v42 = (*v67)(v0[27], v0[25]);
      MEMORY[0x19A905660](v42);
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A7AB274();
      }

      v4 = v8 + 1;
      result = sub_19A7AB2A4();
      v52 = v70;
      if (v51 != v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];
  }

LABEL_28:
  v44 = v0[29];
  v43 = v0[30];

  v45 = v0[1];

  return v45(v52);
}

uint64_t sub_19A724850()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A724958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v6[6] = swift_task_alloc();
  v7 = sub_19A7A8F64();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEF58);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = sub_19A7AB534();
  v6[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEF60);
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A724B6C, 0, 0);
}

uint64_t sub_19A724B6C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[4];
  v6 = v0[5];
  sub_19A7AB544();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_19A725DFC(&qword_1EAFCA580, MEMORY[0x1E6963908]);

  sub_19A7AC014();
  (*(v4 + 16))(v1, v2, v3);
  sub_19A623714(&qword_1EAFCA3E0, &qword_1EAFCEF60);
  sub_19A7AB414();
  v0[20] = MEMORY[0x1E69E7CC0];
  v8 = sub_19A623714(&qword_1EAFCA3E8, &qword_1EAFCEF58);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_19A724D84;
  v10 = v0[11];
  v11 = v0[6];

  return MEMORY[0x1EEE6D8C8](v11, v10, v8);
}

uint64_t sub_19A724D84()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    v3 = sub_19A725264;
  }

  else
  {
    v3 = sub_19A724EBC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A724EBC()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[19];
    v5 = v0[20];
    v6 = v0[17];
    v7 = v0[16];
    v8 = v0[2];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v6 + 8))(v4, v7);
    sub_19A5F2B54(v3, &qword_1EAFCD800);
    *v8 = v5;

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[20];
    v12 = *(v2 + 32);
    v12(v0[10], v3, v1);
    v13 = 0;
    v14 = *(v11 + 16);
    while (v14 != v13)
    {
      v15 = v13 + 1;
      sub_19A725DFC(&qword_1EAFCB3B0, MEMORY[0x1E69695A8]);
      v16 = sub_19A7AAFD4();
      v13 = v15;
      if (v16)
      {
        (*(v0[8] + 8))(v0[10], v0[7]);
        v17 = v0[20];
        goto LABEL_14;
      }
    }

    (*(v0[8] + 16))(v0[9], v0[10], v0[7]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v0[20];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_19A76C64C(0, *(v11 + 16) + 1, 1, v0[20]);
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_19A76C64C(v19 > 1, v20 + 1, 1, v17);
    }

    v21 = v0[9];
    v22 = v0[7];
    v23 = v0[8];
    (*(v23 + 8))(v0[10], v22);
    *(v17 + 2) = v20 + 1;
    v12(&v17[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20], v21, v22);
LABEL_14:
    v0[20] = v17;
    v24 = sub_19A623714(&qword_1EAFCA3E8, &qword_1EAFCEF58);
    v25 = swift_task_alloc();
    v0[21] = v25;
    *v25 = v0;
    v25[1] = sub_19A724D84;
    v26 = v0[11];
    v27 = v0[6];

    return MEMORY[0x1EEE6D8C8](v27, v26, v24);
  }
}

uint64_t sub_19A725264()
{
  (*(v0[17] + 8))(v0[19], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19A72533C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v4[19] = swift_task_alloc();
  v5 = sub_19A7AB524();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v6 = sub_19A7AB514();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A725494, 0, 0);
}

uint64_t sub_19A725494()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  (*(v2 + 16))(v1, v0[16], v3);
  if ((*(v2 + 88))(v1, v3) != *MEMORY[0x1E6963900])
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
    goto LABEL_9;
  }

  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[17];
  v8 = v0[18];
  (*(v0[21] + 96))(v7, v0[20]);
  (*(v5 + 32))(v4, v7, v6);
  v10 = sub_19A7AB504();
  v11 = [v10 attributeSet];

  v12 = [v11 attributeDictionary];
  v13 = sub_19A7AAF44();

  v0[11] = v9;
  v0[12] = v8;

  sub_19A7ABC54();
  if (!*(v13 + 16) || (v14 = sub_19A6955D8((v0 + 2)), (v15 & 1) == 0))
  {
    v24 = v0[24];
    v23 = v0[25];
    v25 = v0[23];

    sub_19A6A0B0C((v0 + 2));
    (*(v24 + 8))(v23, v25);
    goto LABEL_9;
  }

  sub_19A6120B4(*(v13 + 56) + 32 * v14, (v0 + 7));
  sub_19A6A0B0C((v0 + 2));

  v16 = swift_dynamicCast();
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[23];
  if ((v16 & 1) == 0)
  {
    (*(v18 + 8))(v0[25], v0[23]);
    goto LABEL_9;
  }

  v20 = v0[19];
  sub_19A7A8F04();

  (*(v18 + 8))(v17, v19);
  v21 = sub_19A7A8F64();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_19A5F2B54(v0[19], &qword_1EAFCD800);
LABEL_9:
    v26 = v0[15];
    v27 = sub_19A7A8F64();
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
    goto LABEL_10;
  }

  v30 = v0[15];
  (*(v22 + 32))(v30, v0[19], v21);
  (*(v22 + 56))(v30, 0, 1, v21);
LABEL_10:

  v28 = v0[1];

  return v28();
}

uint64_t sub_19A72584C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_19A7258E8;

  return MEMORY[0x1EEE6DA60](200000000);
}

uint64_t sub_19A7258E8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_19A725A18, 0, 0);
  }
}

uint64_t sub_19A725A18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECA0);
  sub_19A7AB3B4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A725B28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19A720AC4;

  return sub_19A7236A4(a1);
}

uint64_t sub_19A725BC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60F860;

  return sub_19A724958(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19A725C88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60FB98;

  return sub_19A72584C(a1, v4, v5, v6);
}

uint64_t sub_19A725D48(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_19A60F860;

  return sub_19A72533C(a1, a2, v7, v6);
}

uint64_t sub_19A725DFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19A725E58()
{
  result = qword_1EAFCEF68;
  if (!qword_1EAFCEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCEF68);
  }

  return result;
}

uint64_t sub_19A725EAC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_19A6814D8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_19A729358(v6);
  return sub_19A7ABD74();
}

uint64_t sub_19A725F28()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCAA08);
  __swift_project_value_buffer(v0, qword_1EAFCAA08);
  return sub_19A7A9374();
}

char *sub_19A725FAC()
{
  v1 = OBJC_IVAR___STKImageGlyphCollectionViewLayout____lazy_storage___layoutSolver;
  v2 = *(v0 + OBJC_IVAR___STKImageGlyphCollectionViewLayout____lazy_storage___layoutSolver);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___STKImageGlyphCollectionViewLayout____lazy_storage___layoutSolver);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_dataSource);
    v5 = objc_allocWithZone(type metadata accessor for ImageGlyphLayoutSolver());
    v6 = v4;
    v7 = v0;
    v8 = sub_19A6D7014(v6);
    v9 = *(v7 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_viewSize + 8);
    v10 = &v8[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_viewSize];
    *v10 = *(v7 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_viewSize);
    *(v10 + 1) = v9;
    sub_19A6D85FC();
    v11 = *(v7 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_19A726068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

id sub_19A7260E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___STKImageGlyphCollectionViewLayout_dataSource;
  if (qword_1ED8B2A98 != -1)
  {
    v20 = a1;
    swift_once();
    a1 = v20;
  }

  v7 = qword_1ED8B2AA0;
  *&v3[v6] = qword_1ED8B2AA0;
  *&v3[OBJC_IVAR___STKImageGlyphCollectionViewLayout_dataSourceUpdatedObserver] = 0;
  v3[OBJC_IVAR___STKImageGlyphCollectionViewLayout_isRearranging] = 0;
  *&v3[OBJC_IVAR___STKImageGlyphCollectionViewLayout____lazy_storage___layoutSolver] = 0;
  v8 = &v3[OBJC_IVAR___STKImageGlyphCollectionViewLayout_viewSize];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR___STKImageGlyphCollectionViewLayout_contentOffsetForFinalizedUpdates];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A726068;
  aBlock[3] = &block_descriptor_24_0;
  v10 = _Block_copy(aBlock);
  v11 = v7;

  v21.receiver = v3;
  v21.super_class = type metadata accessor for ImageGlyphCollectionViewLayout();
  v12 = objc_msgSendSuper2(&v21, sel_initWithSectionProvider_configuration_, v10, a3);
  _Block_release(v10);
  v13 = qword_1EAFCAA00;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = sub_19A7A9384();
  __swift_project_value_buffer(v15, qword_1EAFCAA08);
  v16 = sub_19A7A9364();
  v17 = sub_19A7AB574();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_19A5EE000, v16, v17, "init", v18, 2u);
    MEMORY[0x19A907A30](v18, -1, -1);
  }

  return v14;
}

uint64_t sub_19A7263C4()
{
  v0 = sub_19A725FAC();
  v1 = *&v0[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lock];
  os_unfair_lock_lock(v1 + 4);
  sub_19A6FB524(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

void sub_19A7265C8(double a1, double a2, double a3, double a4)
{
  if ((*(v4 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_isRearranging) & 1) == 0)
  {
    v9 = sub_19A725FAC();
    v10 = [v4 collectionView];
    if (v10)
    {
      v11 = v10;
      [v10 contentOffset];
      v13 = v12;
      v15 = v14;

      v10 = v13;
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    sub_19A6D719C(v10, v16, 0, a1, a2, a3, a4);
  }
}

BOOL sub_19A726788(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_viewSize);
  v6 = *(v4 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_viewSize + 8) != a4 || *(v4 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_viewSize) != a3;
  if (v6)
  {
    *v5 = a3;
    v5[1] = a4;
    v7 = sub_19A725FAC();
    v8 = *(v5 + 1);
    v9 = &v7[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_viewSize];
    *v9 = *v5;
    *(v9 + 1) = v8;
    sub_19A6D85FC();

    if (qword_1EAFCAA00 != -1)
    {
      swift_once();
    }

    v10 = sub_19A7A9384();
    __swift_project_value_buffer(v10, qword_1EAFCAA08);
    v11 = sub_19A7A9364();
    v12 = sub_19A7AB574();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      v15 = sub_19A7AB884();
      v17 = sub_19A62540C(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_19A5EE000, v11, v12, "Did update layout for size %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x19A907A30](v14, -1, -1);
      MEMORY[0x19A907A30](v13, -1, -1);
    }
  }

  return v6;
}

double sub_19A726A0C()
{
  v0 = sub_19A725FAC();
  sub_19A6D6CB0();
  v2 = v1;

  return v2;
}

id sub_19A726A50()
{
  v0 = sub_19A725FAC();
  v1 = sub_19A7A9064();
  v2 = sub_19A6D7E98(v1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_19A7A9044();
    v5 = OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_cachedAttributes;
    v6 = swift_beginAccess();
    if (v4 >= *(*&v3[v5] + 16) || (v7 = *&v3[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_lock], v8 = MEMORY[0x1EEE9AC00](v6), MEMORY[0x1EEE9AC00](v8), os_unfair_lock_lock(v7 + 4), sub_19A6FB524(&v11), os_unfair_lock_unlock(v7 + 4), (v9 = v11) == 0))
    {
      v9 = sub_19A628934(v4);
    }
  }

  else
  {

    return 0;
  }

  return v9;
}

uint64_t sub_19A726CA4()
{
  v0 = sub_19A725FAC();
  v1 = sub_19A7A9064();
  v2 = sub_19A6D7E98(v1);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = v2;
  if (sub_19A7A9044())
  {

LABEL_4:
    return 0;
  }

  v5 = *&v3[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_lock];
  v6 = MEMORY[0x1EEE9AC00](0);
  MEMORY[0x1EEE9AC00](v6);
  os_unfair_lock_lock(v5 + 4);
  sub_19A6FBE70(&v8);
  os_unfair_lock_unlock(v5 + 4);
  v7 = v8;

  return v7;
}

void sub_19A726FA4(double a1, double a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_isRearranging) = 1;
  v6 = sub_19A7A9014();
  v24.receiver = v3;
  v24.super_class = type metadata accessor for ImageGlyphCollectionViewLayout();
  v7 = objc_msgSendSuper2(&v24, sel_targetIndexPathForInteractivelyMovingItem_withPosition_, v6, a1, a2);

  sub_19A7A9024();
  v8 = sub_19A725FAC();
  v9 = [v3 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 contentOffset];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = sub_19A7A9064();
  v16 = sub_19A6D7E98(v15);
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = v16;
  sub_19A7A9044();
  v18 = sub_19A62BB78(a1, a2, v12, v14);
  v20 = v19;
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    v23 = [v3 collectionView];
    if (v23)
    {
      v8 = v23;
      [v23 setContentOffset:1 animated:{*&v18, v20}];
LABEL_8:
    }
  }
}

id sub_19A727294(double a1, double a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_isRearranging) = 1;
  v6 = sub_19A7A9014();
  v9.receiver = v3;
  v9.super_class = type metadata accessor for ImageGlyphCollectionViewLayout();
  v7 = objc_msgSendSuper2(&v9, sel_layoutAttributesForInteractivelyMovingItemAtIndexPath_withTargetPosition_, v6, a1, a2);

  return v7;
}

id sub_19A727478(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR___STKImageGlyphCollectionViewLayout_isRearranging] = 0;
  sub_19A7A9094();
  v9 = sub_19A7AB234();
  v10 = sub_19A7AB234();
  v13.receiver = v4;
  v13.super_class = type metadata accessor for ImageGlyphCollectionViewLayout();
  v11 = objc_msgSendSuper2(&v13, sel_invalidationContextForInteractivelyMovingItems_withTargetPosition_previousIndexPaths_previousPosition_, v9, v10, a1, a2, a3, a4);

  return v11;
}

id sub_19A7275F8(uint64_t a1, uint64_t a2, char a3)
{
  v3[OBJC_IVAR___STKImageGlyphCollectionViewLayout_isRearranging] = 0;
  sub_19A7A9094();
  v5 = sub_19A7AB234();
  v6 = sub_19A7AB234();
  v9.receiver = v3;
  v9.super_class = type metadata accessor for ImageGlyphCollectionViewLayout();
  v7 = objc_msgSendSuper2(&v9, sel_invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths_previousIndexPaths_movementCancelled_, v5, v6, a3 & 1);

  return v7;
}

id sub_19A727730()
{
  v1 = v0;
  v2 = sub_19A725FAC();
  sub_19A6D8040();

  v4.receiver = v1;
  v4.super_class = type metadata accessor for ImageGlyphCollectionViewLayout();
  return objc_msgSendSuper2(&v4, sel_invalidateLayout);
}

void sub_19A7277DC()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for ImageGlyphCollectionViewLayout();
  objc_msgSendSuper2(&v11, sel_prepareLayout);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = &v0[OBJC_IVAR___STKImageGlyphCollectionViewLayout_viewSize];
  *v7 = v4;
  *(v7 + 1) = v6;
  v8 = sub_19A725FAC();
  v9 = *(v7 + 1);
  v10 = &v8[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_viewSize];
  *v10 = *v7;
  *(v10 + 1) = v9;
  sub_19A6D85FC();

  sub_19A728C30();
}

uint64_t sub_19A7278F8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v51 - v15;
  sub_19A5F5028(0, &qword_1EAFCF1C0);
  v16 = sub_19A7AB234();
  v17 = type metadata accessor for ImageGlyphCollectionViewLayout();
  v60.receiver = v2;
  v60.super_class = v17;
  objc_msgSendSuper2(&v60, sel_prepareForCollectionViewUpdates_, v16);

  v59 = MEMORY[0x1E69E7CC0];
  v56 = v5;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a1; v18; i = a1)
  {
    v52 = v11;
    v53 = v14;
    v54 = v7;
    v55 = v2;
    v14 = 0;
    v20 = i & 0xC000000000000001;
    v11 = (i & 0xFFFFFFFFFFFFFF8);
    v57 = (v56 + 56);
    v2 = &selRef_mainQueue;
    while (1)
    {
      if (v20)
      {
        v21 = MEMORY[0x19A906130](v14, i);
      }

      else
      {
        if (v14 >= *(v11 + 2))
        {
          goto LABEL_17;
        }

        v21 = *(i + 8 * v14 + 32);
      }

      v22 = v21;
      a1 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ([v21 v2[246]] == 1)
      {
        v23 = [v22 indexPathBeforeUpdate];
        if (v23)
        {
          v24 = v58;
          v25 = v11;
          v26 = v20;
          v27 = v18;
          v28 = i;
          v29 = v23;
          sub_19A7A9024();

          (*v57)(v24, 0, 1, v4);
          sub_19A66C0CC(v24);
          sub_19A7ABD64();
          v7 = v4;
          sub_19A7ABD94();
          sub_19A7ABDA4();
          sub_19A7ABD74();
          i = v28;
          v18 = v27;
          v20 = v26;
          v11 = v25;
          v2 = &selRef_mainQueue;
        }

        else
        {

          v30 = v58;
          (*v57)(v58, 1, 1, v4);
          sub_19A66C0CC(v30);
        }
      }

      else
      {
      }

      ++v14;
      if (a1 == v18)
      {
        v7 = v54;
        v2 = v55;
        v11 = v52;
        v14 = v53;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v18 = sub_19A7ABBE4();
  }

LABEL_19:

  v59 = sub_19A69BAAC(v31);
  sub_19A725EAC(&v59);
  v32 = v56;

  sub_19A727E28(v59, v14);

  sub_19A72A628(v14, v11);
  if ((*(v32 + 48))(v11, 1, v4) == 1)
  {
    sub_19A66C0CC(v14);
    result = sub_19A66C0CC(v11);
    v34 = v2 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_contentOffsetForFinalizedUpdates;
    *v34 = 0;
    *(v34 + 1) = 0;
    v34[16] = 1;
  }

  else
  {
    (*(v32 + 32))(v7, v11, v4);
    v35 = sub_19A725FAC();
    v36 = [(SEL *)v2 collectionView];
    if (v36)
    {
      v37 = v36;
      [v36 contentOffset];
      v39 = v38;
      v41 = v40;
    }

    else
    {
      v39 = 0.0;
      v41 = 0.0;
    }

    v42 = sub_19A7A9064();
    v43 = sub_19A6D7E98(v42);
    if (v43)
    {
      v44 = v43;
      sub_19A7A9044();
      v45 = sub_19A62BD88(v39, v41);
      v47 = v46;
      v49 = v48;
    }

    else
    {

      v45 = 0;
      v47 = 0;
      v49 = 1;
    }

    (*(v32 + 8))(v7, v4);
    result = sub_19A66C0CC(v14);
    v50 = v2 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_contentOffsetForFinalizedUpdates;
    *v50 = v45;
    *(v50 + 1) = v47;
    v50[16] = v49 & 1;
  }

  return result;
}

void sub_19A727E28(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  v17 = a1 >> 62;
  if (a1 >> 62)
  {
    v18 = sub_19A7ABBE4();
    if (v18 != 2)
    {
LABEL_3:
      if (v18 == 1)
      {
        if (v17)
        {
          v19 = sub_19A7ABBE4();
        }

        else
        {
          v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v19)
        {
          if ((a1 & 0xC000000000000001) == 0)
          {
            if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v20 = *(a1 + 32);
LABEL_11:
              v21 = v20;
              v22 = [v20 indexPathBeforeUpdate];

              if (v22)
              {
                sub_19A7A9024();

                (*(v5 + 56))(v16, 0, 1, v4);
              }

              else
              {
                (*(v5 + 56))(v16, 1, 1, v4);
              }

              v23 = v16;
LABEL_41:
              sub_19A680C30(v23, a2);
              return;
            }

            __break(1u);
            goto LABEL_47;
          }

LABEL_44:
          v20 = MEMORY[0x19A906130](0, a1);
          goto LABEL_11;
        }

        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_35:
      (*(v5 + 56))(a2, 1, 1, v4);
      return;
    }
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 != 2)
    {
      goto LABEL_3;
    }
  }

  if (v17)
  {
    v24 = sub_19A7ABBE4();
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v24)
  {
    goto LABEL_43;
  }

  v39 = a2;
  v40 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x19A906130](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v25 = *(a1 + 32);
  }

  v26 = v25;
  v27 = [v25 indexPathBeforeUpdate];

  if (!v27)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  sub_19A7A9024();

  v28 = sub_19A7A9064();
  v29 = *(v5 + 8);
  v29(v10, v4);
  v30 = v24 - 1;
  if (__OFSUB__(v24, 1))
  {
    goto LABEL_48;
  }

  if (v40)
  {
    v31 = MEMORY[0x19A906130](v30, a1);
  }

  else
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v30 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v31 = *(a1 + 8 * v30 + 32);
  }

  v32 = v31;
  v33 = [v31 indexPathBeforeUpdate];

  if (v33)
  {
    sub_19A7A9024();

    v34 = sub_19A7A9064();
    v29(v8, v4);
    if (__OFSUB__(v34, 1))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    a2 = v39;
    if (v28 == v34 - 1)
    {
      if (v40)
      {
        v35 = MEMORY[0x19A906130](0, a1);
      }

      else
      {
        v35 = *(a1 + 32);
      }

      v36 = v35;
      v37 = [v35 indexPathBeforeUpdate];

      if (v37)
      {
        sub_19A7A9024();

        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      (*(v5 + 56))(v14, v38, 1, v4);
      v23 = v14;
      goto LABEL_41;
    }

    goto LABEL_35;
  }

LABEL_53:
  __break(1u);
}

void sub_19A728300()
{
  v1 = &v0[OBJC_IVAR___STKImageGlyphCollectionViewLayout_contentOffsetForFinalizedUpdates];
  if (v0[OBJC_IVAR___STKImageGlyphCollectionViewLayout_contentOffsetForFinalizedUpdates + 16])
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for ImageGlyphCollectionViewLayout();
    objc_msgSendSuper2(&v6, sel_finalizeCollectionViewUpdates);
  }

  else
  {
    v3 = *v1;
    v2 = v1[1];
    v4 = [v0 collectionView];
    if (v4)
    {
      v5 = v4;
      [v4 setContentOffset_];
    }

    *v1 = 0.0;
    v1[1] = 0.0;
    *(v1 + 16) = 1;
  }
}

id sub_19A7283F4(double a1, double a2)
{
  v4 = sub_19A725FAC();
  v5 = sub_19A6D75E4(a1, a2);
  v7 = v6;
  v9 = v8;

  if (v9)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() itk:*&v5 valueWithPoint:v7];
  }
}

double sub_19A728554(uint64_t a1)
{
  v2 = sub_19A725FAC();
  v3 = sub_19A6D7E98(a1);
  if (v3)
  {
    v4 = v3;
    v5 = sub_19A627590();
  }

  else
  {

    return 0.0;
  }

  return v5;
}

void sub_19A728698()
{
  v14 = sub_19A725FAC();
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 contentOffset];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v4 = 0.0;
    v6 = 0.0;
  }

  v7 = sub_19A6D7704(v4, v6);
  v8 = *&v14[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections];
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = MEMORY[0x19A906130](v7, v8);

    goto LABEL_8;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v9 = *(v8 + 8 * v7 + 32);
LABEL_8:
  v10 = sub_19A6277E4(v4, v6);
  v12 = v11;

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  MEMORY[0x19A903470](v13, v7);
}

uint64_t sub_19A7288DC()
{
  v1 = sub_19A725FAC();
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 contentOffset];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
  }

  v8 = sub_19A6D7704(v5, v7);

  return v8;
}

id ImageGlyphCollectionViewLayout.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1EAFCAA00 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCAA08);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "deinit", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  v6 = *&v1[OBJC_IVAR___STKImageGlyphCollectionViewLayout_dataSourceUpdatedObserver];
  if (v6)
  {
    v7 = objc_opt_self();
    swift_unknownObjectRetain();
    v8 = [v7 defaultCenter];
    [v8 removeObserver_];
    swift_unknownObjectRelease();
  }

  v10.receiver = v1;
  v10.super_class = type metadata accessor for ImageGlyphCollectionViewLayout();
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

void sub_19A728BE8()
{
  v0 = sub_19A725FAC();
  sub_19A6D8040();
}

void sub_19A728C30()
{
  v1 = OBJC_IVAR___STKImageGlyphCollectionViewLayout_dataSourceUpdatedObserver;
  if (!*(v0 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_dataSourceUpdatedObserver))
  {
    v2 = [objc_opt_self() defaultCenter];
    if (qword_1ED8B2028 != -1)
    {
      swift_once();
    }

    v3 = qword_1ED8B4240;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[4] = sub_19A72A924;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_19A77855C;
    v7[3] = &block_descriptor_30_0;
    v5 = _Block_copy(v7);

    v6 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v5];
    _Block_release(v5);

    *(v0 + v1) = v6;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_19A728DA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_19A7AB394();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  sub_19A6816F0(0, 0, v2, &unk_19A7BFFE0, v6);
}

uint64_t sub_19A728F10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    sub_19A7AB354();
    v0[7] = sub_19A7AB344();
    v3 = sub_19A7AB2E4();

    return MEMORY[0x1EEE6DFA0](sub_19A728FFC, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_19A728FFC()
{
  v1 = *(v0 + 48);

  [v1 invalidateLayout];

  return MEMORY[0x1EEE6DFA0](sub_19A729074, 0, 0);
}

uint64_t sub_19A729074()
{
  v1 = *(v0 + 8);

  return v1();
}

id ImageGlyphCollectionViewLayout.__allocating_init(section:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSection_];

  return v3;
}

id ImageGlyphCollectionViewLayout.__allocating_init(section:configuration:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithSection:a1 configuration:a2];

  return v5;
}

id ImageGlyphCollectionViewLayout.__allocating_init(sectionProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_19A726068;
  v9[3] = &block_descriptor_26;
  v6 = _Block_copy(v9);
  v7 = [v5 initWithSectionProvider_];
  _Block_release(v6);

  return v7;
}

void sub_19A729358(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_19A7AC004();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_19A5F5028(0, &qword_1EAFCF1C0);
        v6 = sub_19A7AB294();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_19A7296C0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_19A72946C(0, v2, 1, a1);
  }
}

void sub_19A72946C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v44 = sub_19A7A9094();
  v8 = MEMORY[0x1EEE9AC00](v44);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v37 - v11;
  v38 = a2;
  if (a3 != a2)
  {
    v12 = (v10 + 8);
    v45 = *a4;
    v13 = v45 + 8 * a3 - 8;
    v14 = a1 - a3;
LABEL_5:
    v40 = v13;
    v41 = a3;
    v15 = *(v45 + 8 * a3);
    v39 = v14;
    v16 = v14;
    v17 = &selRef_mainQueue;
    while (1)
    {
      v18 = *v13;
      v19 = v15;
      v20 = v18;
      v21 = [v19 v17[247]];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v46 = v16;
      v23 = v43;
      sub_19A7A9024();

      v24 = sub_19A7A9064();
      v25 = *v12;
      v26 = v44;
      (*v12)(v23, v44);
      v27 = [v20 v17[247]];
      if (!v27)
      {
        goto LABEL_15;
      }

      v28 = v27;
      v29 = v12;
      v30 = v42;
      sub_19A7A9024();

      v31 = sub_19A7A9064();
      v32 = v30;
      v12 = v29;
      v17 = &selRef_mainQueue;
      v25(v32, v26);

      v33 = v24 < v31;
      v34 = v46;
      if (v33)
      {
        if (!v45)
        {
          goto LABEL_16;
        }

        v35 = *v13;
        v15 = *(v13 + 8);
        *v13 = v15;
        *(v13 + 8) = v35;
        v13 -= 8;
        v36 = __CFADD__(v34, 1);
        v16 = v34 + 1;
        if (!v36)
        {
          continue;
        }
      }

      a3 = v41 + 1;
      v13 = v40 + 8;
      v14 = v39 - 1;
      if (v41 + 1 == v38)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }
}

void sub_19A7296C0(void ***a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v144 = a1;
  v159 = sub_19A7A9094();
  v8 = MEMORY[0x1EEE9AC00](v159);
  v156 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v157 = &v140 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v146 = &v140 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v147 = &v140 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v141 = &v140 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v142 = &v140 - v19;
  v153 = a3;
  v20 = a3[1];
  if (v20 >= 1)
  {
    v140 = a4;
    v21 = 0;
    v22 = (v18 + 8);
    v23 = MEMORY[0x1E69E7CC0];
    v24 = &selRef_mainQueue;
    v160 = (v18 + 8);
    while (1)
    {
      v25 = v21;
      v26 = (v21 + 1);
      v151 = v23;
      if (v21 + 1 < v20)
      {
        v148 = v20;
        v27 = *v153;
        v28 = *&(*v153)[8 * v21 + 8];
        v145 = v21;
        v29 = *&v27[8 * v21];
        v30 = v28;
        v31 = v29;
        v32 = v24[247];
        v158 = v30;
        v33 = [v30 v32];
        if (!v33)
        {
          goto LABEL_137;
        }

        v34 = v33;
        v143 = v5;
        v35 = v142;
        sub_19A7A9024();

        v150 = sub_19A7A9064();
        v36 = *v22;
        v37 = v159;
        v36(v35, v159);
        v38 = [v31 v24[247]];
        if (!v38)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        v39 = v38;
        v40 = v141;
        sub_19A7A9024();

        v149 = sub_19A7A9064();
        v36(v40, v37);

        v41 = (v145 + 2);
        v152 = 8 * v145;
        v42 = &v27[8 * v145 + 16];
        v43 = v36;
        while (1)
        {
          v44 = v148;
          if (v148 == v41)
          {
            break;
          }

          v158 = v41;
          v45 = *(v42 - 1);
          v46 = *v42;
          v47 = v45;
          v48 = v24[247];
          v155 = v46;
          v49 = [v46 v48];
          if (!v49)
          {
            goto LABEL_132;
          }

          v50 = v49;
          v51 = v147;
          sub_19A7A9024();

          v154 = sub_19A7A9064();
          v52 = v159;
          v53 = v43;
          v43(v51, v159);
          v54 = [v47 v24[247]];
          if (!v54)
          {
            goto LABEL_131;
          }

          v55 = v54;
          v56 = v150 < v149;
          v57 = v146;
          sub_19A7A9024();

          v58 = sub_19A7A9064();
          v53(v57, v52);

          v59 = v56 ^ (v154 >= v58);
          v41 = v158 + 1;
          ++v42;
          v23 = v151;
          v24 = &selRef_mainQueue;
          v43 = v53;
          if ((v59 & 1) == 0)
          {
            v44 = v158;
            break;
          }
        }

        v25 = v145;
        v5 = v143;
        v22 = v160;
        if (v150 < v149)
        {
          if (v44 < v145)
          {
            goto LABEL_124;
          }

          if (v145 < v44)
          {
            v60 = 8 * v44 - 8;
            v61 = v44;
            v62 = v145;
            do
            {
              if (v62 != --v61)
              {
                v63 = *v153;
                if (!*v153)
                {
                  goto LABEL_134;
                }

                v64 = *&v63[v152];
                *&v63[v152] = *&v63[v60];
                *&v63[v60] = v64;
              }

              ++v62;
              v60 -= 8;
              v152 += 8;
            }

            while (v62 < v61);
          }
        }

        v26 = v44;
      }

      v65 = v153[1];
      if (v26 >= v65)
      {
        v21 = v26;
        if (v26 < v25)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v66 = v26;
        v84 = __OFSUB__(v26, v25);
        v67 = v26 - v25;
        if (v84)
        {
          goto LABEL_123;
        }

        if (v67 >= v140)
        {
          goto LABEL_30;
        }

        v68 = v25 + v140;
        if (__OFADD__(v25, v140))
        {
          goto LABEL_125;
        }

        if (v68 >= v65)
        {
          v68 = v153[1];
        }

        if (v68 < v25)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v66 == v68)
        {
LABEL_30:
          v21 = v66;
          if (v66 < v25)
          {
            goto LABEL_122;
          }
        }

        else
        {
          v143 = v5;
          v158 = *v153;
          v115 = &v158[8 * v66 - 8];
          v145 = v25;
          v116 = v25 - v66;
          v150 = v68;
          do
          {
            v154 = v115;
            v155 = v66;
            v117 = *&v158[8 * v66];
            v152 = v116;
            do
            {
              v118 = *v115;
              v119 = v117;
              v120 = v118;
              v121 = [v119 v24[247]];
              if (!v121)
              {
                goto LABEL_129;
              }

              v122 = v121;
              v123 = v157;
              sub_19A7A9024();

              v124 = sub_19A7A9064();
              v125 = v24;
              v126 = *v22;
              v127 = v123;
              v128 = v159;
              (*v22)(v127, v159);
              v129 = [v120 v125 + 90];
              if (!v129)
              {
                __break(1u);
LABEL_129:
                __break(1u);
LABEL_130:
                __break(1u);
LABEL_131:
                __break(1u);
LABEL_132:
                __break(1u);
LABEL_133:
                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
                goto LABEL_138;
              }

              v130 = v129;
              v131 = v156;
              sub_19A7A9024();

              v132 = sub_19A7A9064();
              v133 = v131;
              v22 = v160;
              v126(v133, v128);

              v24 = &selRef_mainQueue;
              if (v124 >= v132)
              {
                break;
              }

              if (!v158)
              {
                goto LABEL_130;
              }

              v134 = *v115;
              v117 = *(v115 + 1);
              *v115 = v117;
              *(v115 + 1) = v134;
              v115 -= 8;
            }

            while (!__CFADD__(v116++, 1));
            v66 = v155 + 1;
            v115 = (v154 + 8);
            v116 = v152 - 1;
          }

          while (v155 + 1 != v150);
          v21 = v150;
          v5 = v143;
          v23 = v151;
          v25 = v145;
          if (v150 < v145)
          {
            goto LABEL_122;
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_19A67FD78(0, *(v23 + 2) + 1, 1, v23);
      }

      v70 = *(v23 + 2);
      v69 = *(v23 + 3);
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        v23 = sub_19A67FD78((v69 > 1), v70 + 1, 1, v23);
      }

      *(v23 + 2) = v71;
      v72 = &v23[16 * v70];
      *(v72 + 4) = v25;
      *(v72 + 5) = v21;
      v25 = *v144;
      if (!*v144)
      {
        goto LABEL_136;
      }

      if (v70)
      {
        while (1)
        {
          v73 = v71 - 1;
          if (v71 >= 4)
          {
            break;
          }

          if (v71 == 3)
          {
            v74 = *(v23 + 4);
            v75 = *(v23 + 5);
            v84 = __OFSUB__(v75, v74);
            v76 = v75 - v74;
            v77 = v84;
LABEL_52:
            if (v77)
            {
              goto LABEL_111;
            }

            v90 = &v23[16 * v71];
            v92 = *v90;
            v91 = *(v90 + 1);
            v93 = __OFSUB__(v91, v92);
            v94 = v91 - v92;
            v95 = v93;
            if (v93)
            {
              goto LABEL_114;
            }

            v96 = &v23[16 * v73 + 32];
            v98 = *v96;
            v97 = *(v96 + 1);
            v84 = __OFSUB__(v97, v98);
            v99 = v97 - v98;
            if (v84)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v94, v99))
            {
              goto LABEL_118;
            }

            if (v94 + v99 >= v76)
            {
              if (v76 < v99)
              {
                v73 = v71 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v100 = &v23[16 * v71];
          v102 = *v100;
          v101 = *(v100 + 1);
          v84 = __OFSUB__(v101, v102);
          v94 = v101 - v102;
          v95 = v84;
LABEL_66:
          if (v95)
          {
            goto LABEL_113;
          }

          v103 = &v23[16 * v73];
          v105 = *(v103 + 4);
          v104 = *(v103 + 5);
          v84 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v84)
          {
            goto LABEL_116;
          }

          if (v106 < v94)
          {
            goto LABEL_3;
          }

LABEL_73:
          v111 = v73 - 1;
          if (v73 - 1 >= v71)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (!*v153)
          {
            goto LABEL_133;
          }

          v112 = *&v23[16 * v111 + 32];
          v113 = *&v23[16 * v73 + 40];
          sub_19A72A090(&(*v153)[8 * v112], &(*v153)[8 * *&v23[16 * v73 + 32]], &(*v153)[8 * v113], v25);
          if (v5)
          {
            goto LABEL_105;
          }

          if (v113 < v112)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_19A67FC80(v23);
          }

          if (v111 >= *(v23 + 2))
          {
            goto LABEL_108;
          }

          v114 = &v23[16 * v111];
          *(v114 + 4) = v112;
          *(v114 + 5) = v113;
          v161 = v23;
          sub_19A67FBF4(v73);
          v23 = v161;
          v71 = *(v161 + 2);
          if (v71 <= 1)
          {
            goto LABEL_3;
          }
        }

        v78 = &v23[16 * v71 + 32];
        v79 = *(v78 - 64);
        v80 = *(v78 - 56);
        v84 = __OFSUB__(v80, v79);
        v81 = v80 - v79;
        if (v84)
        {
          goto LABEL_109;
        }

        v83 = *(v78 - 48);
        v82 = *(v78 - 40);
        v84 = __OFSUB__(v82, v83);
        v76 = v82 - v83;
        v77 = v84;
        if (v84)
        {
          goto LABEL_110;
        }

        v85 = &v23[16 * v71];
        v87 = *v85;
        v86 = *(v85 + 1);
        v84 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v84)
        {
          goto LABEL_112;
        }

        v84 = __OFADD__(v76, v88);
        v89 = v76 + v88;
        if (v84)
        {
          goto LABEL_115;
        }

        if (v89 >= v81)
        {
          v107 = &v23[16 * v73 + 32];
          v109 = *v107;
          v108 = *(v107 + 1);
          v84 = __OFSUB__(v108, v109);
          v110 = v108 - v109;
          if (v84)
          {
            goto LABEL_119;
          }

          if (v76 < v110)
          {
            v73 = v71 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v20 = v153[1];
      v22 = v160;
      if (v21 >= v20)
      {
        goto LABEL_95;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_95:
  v25 = *v144;
  if (*v144)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_127:
      v23 = sub_19A67FC80(v23);
    }

    v161 = v23;
    v136 = *(v23 + 2);
    if (v136 >= 2)
    {
      while (*v153)
      {
        v137 = *&v23[16 * v136];
        v138 = *&v23[16 * v136 + 24];
        sub_19A72A090(&(*v153)[8 * v137], &(*v153)[8 * *&v23[16 * v136 + 16]], &(*v153)[8 * v138], v25);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v138 < v137)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_19A67FC80(v23);
        }

        if (v136 - 2 >= *(v23 + 2))
        {
          goto LABEL_121;
        }

        v139 = &v23[16 * v136];
        *v139 = v137;
        *(v139 + 1) = v138;
        v161 = v23;
        sub_19A67FBF4(v136 - 1);
        v23 = v161;
        v136 = *(v161 + 2);
        if (v136 <= 1)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_135;
    }

LABEL_105:
  }

  else
  {
LABEL_139:
    __break(1u);
  }
}

uint64_t sub_19A72A090(void **a1, void **a2, id *a3, void **a4)
{
  v65 = sub_19A7A9094();
  v8 = *(v65 - 8);
  v9 = MEMORY[0x1EEE9AC00](v65);
  v61 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v59 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v60 = (&v59 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v62 = (&v59 - v15);
  v16 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v16 = a2 - a1;
  }

  v17 = v16 >> 3;
  v18 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v18 = a3 - a2;
  }

  v19 = v18 >> 3;
  if (v17 < v18 >> 3)
  {
    if (a4 != a1 || &a1[v17] <= a4)
    {
      memmove(a4, a1, 8 * v17);
    }

    v69 = &a4[v17];
    if (a2 - a1 >= 8)
    {
      v20 = a2;
      if (a2 < a3)
      {
        v21 = (v8 + 8);
        v22 = &selRef_mainQueue;
        v68 = a3;
        while (1)
        {
          v66 = a1;
          v67 = a4;
          v23 = v21;
          v64 = v20;
          v24 = *a4;
          v25 = *v20;
          v26 = v24;
          result = [v25 v22[247]];
          if (!result)
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v28 = result;
          v29 = v62;
          sub_19A7A9024();

          v30 = sub_19A7A9064();
          v31 = v23;
          v32 = *v23;
          v33 = v65;
          v32(v29, v65);
          result = [v26 v22[247]];
          if (!result)
          {
            goto LABEL_46;
          }

          v34 = result;
          v35 = v60;
          sub_19A7A9024();

          v36 = sub_19A7A9064();
          v32(v35, v33);

          v21 = v31;
          if (v30 >= v36)
          {
            break;
          }

          v37 = v64;
          v20 = v64 + 1;
          v38 = v66;
          a4 = v67;
          v22 = &selRef_mainQueue;
          if (v66 != v64)
          {
            goto LABEL_18;
          }

LABEL_19:
          a1 = v38 + 1;
          if (a4 >= v69 || v20 >= v68)
          {
            goto LABEL_21;
          }
        }

        v38 = v66;
        v37 = v67;
        a4 = v67 + 1;
        v20 = v64;
        v22 = &selRef_mainQueue;
        if (v66 == v67)
        {
          goto LABEL_19;
        }

LABEL_18:
        *v38 = *v37;
        goto LABEL_19;
      }
    }

LABEL_21:
    a2 = a1;
    goto LABEL_41;
  }

  v66 = a1;
  if (a4 != a2 || &a2[v19] <= a4)
  {
    memmove(a4, a2, 8 * v19);
  }

  v69 = &a4[v19];
  if (a3 - a2 < 8 || a2 <= v66)
  {
LABEL_41:
    if (a2 != a4 || a2 >= (a4 + ((v69 - a4 + (v69 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v69 - a4));
    }

    return 1;
  }

  v39 = (v8 + 8);
  v40 = &selRef_mainQueue;
  v67 = a4;
LABEL_28:
  v64 = a2;
  v41 = a2 - 1;
  v42 = a3 - 1;
  v43 = v69;
  v62 = a2 - 1;
  while (1)
  {
    v68 = v42;
    v44 = *--v43;
    v45 = *v41;
    v46 = v44;
    v47 = v45;
    result = [v46 v40[247]];
    if (!result)
    {
      goto LABEL_47;
    }

    v48 = result;
    v49 = v63;
    sub_19A7A9024();

    v50 = sub_19A7A9064();
    v51 = *v39;
    v52 = v49;
    v53 = v65;
    (*v39)(v52, v65);
    result = [v47 v40[247]];
    if (!result)
    {
      break;
    }

    v54 = result;
    v55 = v61;
    sub_19A7A9024();

    v56 = sub_19A7A9064();
    v51(v55, v53);

    if (v50 < v56)
    {
      a4 = v67;
      a3 = v68;
      v58 = v62;
      if (v68 + 1 != v64)
      {
        *v68 = *v62;
      }

      v40 = &selRef_mainQueue;
      if (v69 <= a4 || (a2 = v58, v58 <= v66))
      {
        a2 = v58;
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    a4 = v67;
    v57 = v68;
    if (v68 + 1 != v69)
    {
      *v68 = *v43;
    }

    v42 = v57 - 1;
    v69 = v43;
    v40 = &selRef_mainQueue;
    v41 = v62;
    if (v43 <= a4)
    {
      v69 = v43;
      a2 = v64;
      goto LABEL_41;
    }
  }

LABEL_48:
  __break(1u);
  return result;
}

void *sub_19A72A5A4@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_19A72A628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_19A72A808()
{
  v1 = OBJC_IVAR___STKImageGlyphCollectionViewLayout_dataSource;
  if (qword_1ED8B2A98 != -1)
  {
    swift_once();
  }

  *(v0 + v1) = qword_1ED8B2AA0;
  *(v0 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_dataSourceUpdatedObserver) = 0;
  *(v0 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_isRearranging) = 0;
  *(v0 + OBJC_IVAR___STKImageGlyphCollectionViewLayout____lazy_storage___layoutSolver) = 0;
  v2 = (v0 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_viewSize);
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + OBJC_IVAR___STKImageGlyphCollectionViewLayout_contentOffsetForFinalizedUpdates;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  sub_19A7ABE34();
  __break(1u);
}

id sub_19A72A8E4()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_19A72A92C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60F860;

  return sub_19A728EF0(a1, v4, v5, v6);
}

BOOL sub_19A72AA08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    v5 = *(a1 + 32);
    v6 = *(a2 + 32);
    v7 = *(v5 + 16);
    if (v7 == *(v6 + 16))
    {
      v8 = 1;
      while (!v7 || v5 == v6)
      {
LABEL_16:
        result = v8 == v2;
        if (v8 != v2)
        {
          v5 = *(v3 + 8 * v8);
          v6 = *(v4 + 8 * v8++);
          v7 = *(v5 + 16);
          if (v7 == *(v6 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v9 = (v5 + 40);
      v10 = (v6 + 40);
      while (1)
      {
        v11 = *(v9 - 1) == *(v10 - 1) && *v9 == *v10;
        if (!v11 && (sub_19A7AC064() & 1) == 0)
        {
          break;
        }

        v9 += 2;
        v10 += 2;
        if (!--v7)
        {
          goto LABEL_16;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_19A72AB08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!*v4)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(v4 - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_19A72AB7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_19A7AC064() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_19A72AC0C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v26 = a2 + 32;
  v27 = result + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_65;
    }

    v4 = v27 + 56 * v3;
    result = *v4;
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 48);
    v9 = v26 + 56 * v3;
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    v28 = *(v9 + 40);
    v29 = *(v4 + 40);
    v13 = *(v9 + 48);
    v30 = *(v9 + 49);
    v31 = *(v4 + 49);
    if (*v4 != *v9 || *(v4 + 8) != *(v9 + 8))
    {
      result = sub_19A7AC064();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v5 != v10 || v6 != v11)
    {
      result = sub_19A7AC064();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 > 0xFD)
    {
      result = 0;
      if (v13 < 0xFE)
      {
        return result;
      }

LABEL_43:
      if ((v31 ^ v30))
      {
        return result;
      }

      goto LABEL_44;
    }

    if (v13 > 0xFD)
    {
      return 0;
    }

    if ((v8 & 0x80) == 0)
    {
      if ((v13 & 0x80) != 0)
      {
        return 0;
      }

      v16 = *(v7 + 16);
      if (v16 != *(v12 + 16))
      {
        return 0;
      }

      if (v16)
      {
        v17 = v7 == v12;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v20 = (v7 + 40);
        v21 = (v12 + 40);
        while (v16)
        {
          result = *(v20 - 1);
          if (result != *(v21 - 1) || *v20 != *v21)
          {
            result = sub_19A7AC064();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v20 += 2;
          v21 += 2;
          if (!--v16)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

LABEL_28:
      result = 0;
      if (v8)
      {
        if ((v13 & 1) == 0)
        {
          return result;
        }
      }

      else if ((v13 & 1) != 0 || v29 != v28)
      {
        return result;
      }

      goto LABEL_43;
    }

    if ((v13 & 0x80) == 0)
    {
      return 0;
    }

    result = sub_19A72AA08(v7, v12);
    if ((result & 1) == 0)
    {
      return 0;
    }

    v18 = *(v29 + 16);
    if (v18 != *(v28 + 16))
    {
      return 0;
    }

    if (v18 && v29 != v28)
    {
      break;
    }

LABEL_39:
    if (v31 != v30)
    {
      return 0;
    }

LABEL_44:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  v23 = (v29 + 40);
  v24 = (v28 + 40);
  while (v18)
  {
    v25 = *v24;
    if (*v23)
    {
      if (!*v24)
      {
        return 0;
      }
    }

    else
    {
      if (*(v23 - 1) != *(v24 - 1))
      {
        v25 = 1;
      }

      if (v25)
      {
        return 0;
      }
    }

    v23 += 16;
    v24 += 16;
    if (!--v18)
    {
      goto LABEL_39;
    }
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_19A72AE70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (sub_19A7AC064() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_19A72AF44(unint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x19A906130](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x19A906130](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_19A7AB924();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_19A7AB924();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_19A7ABBE4();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_19A7ABBE4();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

Swift::String_optional __swiftcall StickerSearchQuery.trimmedEmojiSearchQuery()()
{
  v1 = sub_19A7A8BA4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR___STKStickerSearchQuery_exactQuery);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (v7)
  {
    v13[1] = v6;
    v13[2] = v7;

    sub_19A7A8B94();
    sub_19A639920();
    v6 = sub_19A7ABAF4();
    v9 = v8;
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v9 = 0;
  }

  v10 = v6;
  v11 = v9;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

id sub_19A72B400(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_19A7AAFE4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_19A72B494(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_19A72B4F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_19A7AB014();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_19A72B57C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t StickerSearchQuery.multilingualSearchLocales.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___STKStickerSearchQuery_multilingualSearchLocales;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t StickerSearchQuery.supportsImages.getter()
{
  v1 = OBJC_IVAR___STKStickerSearchQuery_supportsImages;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t StickerSearchQuery.supportsImages.setter(char a1)
{
  v3 = OBJC_IVAR___STKStickerSearchQuery_supportsImages;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t StickerSearchQuery.supportsGenmoji.getter()
{
  v1 = OBJC_IVAR___STKStickerSearchQuery_supportsGenmoji;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t StickerSearchQuery.supportsGenmoji.setter(char a1)
{
  v3 = OBJC_IVAR___STKStickerSearchQuery_supportsGenmoji;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t StickerSearchQuery.supportsEmoji.getter()
{
  v1 = OBJC_IVAR___STKStickerSearchQuery_supportsEmoji;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t StickerSearchQuery.supportsEmoji.setter(char a1)
{
  v3 = OBJC_IVAR___STKStickerSearchQuery_supportsEmoji;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t StickerSearchQuery.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_19A6A60B4(a1, v32);
  if (v33)
  {
    if (swift_dynamicCast())
    {
      v3 = &v31[OBJC_IVAR___STKStickerSearchQuery_exactQuery];
      swift_beginAccess();
      v4 = *v3;
      v5 = v3[1];
      v6 = (v1 + OBJC_IVAR___STKStickerSearchQuery_exactQuery);
      swift_beginAccess();
      v7 = v6[1];
      if (v5)
      {
        if (!v7)
        {
          goto LABEL_34;
        }

        v8 = v4 == *v6 && v5 == v7;
        if (!v8 && (sub_19A7AC064() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (v7)
      {
        goto LABEL_34;
      }

      v9 = &v31[OBJC_IVAR___STKStickerSearchQuery_autocorrectedQuery];
      swift_beginAccess();
      v10 = *v9;
      v11 = v9[1];
      v12 = (v1 + OBJC_IVAR___STKStickerSearchQuery_autocorrectedQuery);
      swift_beginAccess();
      v13 = v12[1];
      if (v11)
      {
        if (!v13 || (v10 != *v12 || v11 != v13) && (sub_19A7AC064() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (v13)
      {
        goto LABEL_34;
      }

      v14 = &v31[OBJC_IVAR___STKStickerSearchQuery_locale];
      swift_beginAccess();
      v15 = *v14;
      v16 = v14[1];
      v17 = (v1 + OBJC_IVAR___STKStickerSearchQuery_locale);
      swift_beginAccess();
      v18 = v17[1];
      if (v16)
      {
        if (!v18 || (v15 != *v17 || v16 != v18) && (sub_19A7AC064() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (v18)
      {
        goto LABEL_34;
      }

      v19 = OBJC_IVAR___STKStickerSearchQuery_multilingualSearchLocales;
      swift_beginAccess();
      v20 = *&v31[v19];
      v21 = OBJC_IVAR___STKStickerSearchQuery_multilingualSearchLocales;
      swift_beginAccess();
      v22 = *(v1 + v21);
      if (v20)
      {
        if (!v22 || (sub_19A72AB7C(v20, v22) & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_32:
        v23 = OBJC_IVAR___STKStickerSearchQuery_supportsImages;
        swift_beginAccess();
        LODWORD(v23) = v31[v23];
        v24 = OBJC_IVAR___STKStickerSearchQuery_supportsImages;
        swift_beginAccess();
        if (v23 == *(v1 + v24))
        {
          v25 = OBJC_IVAR___STKStickerSearchQuery_supportsGenmoji;
          swift_beginAccess();
          LODWORD(v25) = v31[v25];
          v26 = OBJC_IVAR___STKStickerSearchQuery_supportsGenmoji;
          swift_beginAccess();
          if (v25 == *(v1 + v26))
          {
            v29 = OBJC_IVAR___STKStickerSearchQuery_supportsEmoji;
            swift_beginAccess();
            LOBYTE(v29) = v31[v29];

            v30 = OBJC_IVAR___STKStickerSearchQuery_supportsEmoji;
            swift_beginAccess();
            v27 = v29 ^ *(v1 + v30) ^ 1;
            return v27 & 1;
          }
        }

        goto LABEL_34;
      }

      if (!v22)
      {
        goto LABEL_32;
      }

LABEL_34:
    }
  }

  else
  {
    sub_19A612E20(v32);
  }

  v27 = 0;
  return v27 & 1;
}

id StickerSearchQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StickerSearchQuery.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___STKStickerSearchQuery_exactQuery];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR___STKStickerSearchQuery_autocorrectedQuery];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v0[OBJC_IVAR___STKStickerSearchQuery_locale];
  *v4 = 0;
  v4[1] = 0;
  *&v0[OBJC_IVAR___STKStickerSearchQuery_multilingualSearchLocales] = 0;
  v0[OBJC_IVAR___STKStickerSearchQuery_supportsImages] = 1;
  v0[OBJC_IVAR___STKStickerSearchQuery_supportsGenmoji] = 1;
  v0[OBJC_IVAR___STKStickerSearchQuery_supportsEmoji] = 1;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_19A72C384()
{
  v1 = *v0;
  v2 = 0x6575517463617865;
  v3 = 0x7374726F70707573;
  if (v1 != 5)
  {
    v3 = 0x7374726F70707573;
  }

  v4 = 0xD000000000000019;
  if (v1 != 3)
  {
    v4 = 0x7374726F70707573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_19A72C490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A72D3C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A72C4C4(uint64_t a1)
{
  v2 = sub_19A72C9A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A72C500(uint64_t a1)
{
  v2 = sub_19A72C9A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id StickerSearchQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t StickerSearchQuery.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF038);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A72C9A4();
  sub_19A7AC1D4();
  swift_beginAccess();
  v16 = 0;

  sub_19A7ABF94();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    swift_beginAccess();
    v15 = 1;

    sub_19A7ABF94();

    swift_beginAccess();
    v14 = 2;

    sub_19A7ABF94();

    v9 = OBJC_IVAR___STKStickerSearchQuery_multilingualSearchLocales;
    swift_beginAccess();
    v13 = *(v3 + v9);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0);
    sub_19A72D028(&qword_1EAFCB110);
    sub_19A7ABFA4();
    swift_beginAccess();
    v12 = 4;
    sub_19A7ABFC4();
    swift_beginAccess();
    v11[8] = 5;
    sub_19A7ABFC4();
    swift_beginAccess();
    v11[7] = 6;
    sub_19A7ABFC4();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_19A72C9A4()
{
  result = qword_1ED8B33B0;
  if (!qword_1ED8B33B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B33B0);
  }

  return result;
}

_BYTE *StickerSearchQuery.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF040);
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v37 - v5;
  v7 = &v3[OBJC_IVAR___STKStickerSearchQuery_exactQuery];
  *v7 = 0;
  v7[1] = 0;
  v44 = v7;
  v8 = &v3[OBJC_IVAR___STKStickerSearchQuery_autocorrectedQuery];
  *v8 = 0;
  v8[1] = 0;
  v45 = v8;
  v9 = &v3[OBJC_IVAR___STKStickerSearchQuery_locale];
  *v9 = 0;
  v9[1] = 0;
  v46 = v9;
  v47 = OBJC_IVAR___STKStickerSearchQuery_multilingualSearchLocales;
  *&v3[OBJC_IVAR___STKStickerSearchQuery_multilingualSearchLocales] = 0;
  v10 = OBJC_IVAR___STKStickerSearchQuery_supportsImages;
  v3[OBJC_IVAR___STKStickerSearchQuery_supportsImages] = 1;
  v11 = OBJC_IVAR___STKStickerSearchQuery_supportsGenmoji;
  v3[OBJC_IVAR___STKStickerSearchQuery_supportsGenmoji] = 1;
  v12 = OBJC_IVAR___STKStickerSearchQuery_supportsEmoji;
  v3[OBJC_IVAR___STKStickerSearchQuery_supportsEmoji] = 1;
  v13 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_19A72C9A4();
  v43 = v6;
  sub_19A7AC1C4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v48);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v40 = v10;
    v39 = v11;
    v38 = v12;
    v14 = v41;
    v56 = 0;
    v16 = sub_19A7ABF04();
    v18 = v17;
    v19 = v44;
    swift_beginAccess();
    *v19 = v16;
    v19[1] = v18;

    v55 = 1;
    v20 = v42;
    v21 = sub_19A7ABF04();
    v23 = v22;
    v24 = v45;
    swift_beginAccess();
    *v24 = v21;
    v24[1] = v23;

    v54 = 2;
    v25 = sub_19A7ABF04();
    v26 = v46;
    v27 = v25;
    v29 = v28;
    swift_beginAccess();
    *v26 = v27;
    v26[1] = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0);
    v53 = 3;
    sub_19A72D028(&qword_1EAFCA5B8);
    sub_19A7ABF24();
    v30 = v52;
    v31 = v47;
    swift_beginAccess();
    *&v3[v31] = v30;

    LOBYTE(v52) = 4;
    v32 = sub_19A7ABF44();
    v33 = v40;
    HIDWORD(v37) = v32;
    swift_beginAccess();
    v3[v33] = BYTE4(v37) & 1;
    v51 = 5;
    v34 = sub_19A7ABF44();
    v35 = v39;
    LODWORD(v40) = v34;
    swift_beginAccess();
    v3[v35] = v40 & 1;
    v50 = 6;
    LOBYTE(v35) = sub_19A7ABF44();
    v36 = v38;
    swift_beginAccess();
    v3[v36] = v35 & 1;
    v49.receiver = v3;
    v49.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v49, sel_init);
    (*(v14 + 8))(v43, v20);
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  return v3;
}

uint64_t sub_19A72D028(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFCE8F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_19A72D094@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = StickerSearchQuery.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageGlyphInterfaceIdiom(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageGlyphInterfaceIdiom(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19A72D2C0()
{
  result = qword_1EAFCF048;
  if (!qword_1EAFCF048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF048);
  }

  return result;
}

unint64_t sub_19A72D318()
{
  result = qword_1ED8B33A0;
  if (!qword_1ED8B33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B33A0);
  }

  return result;
}

unint64_t sub_19A72D370()
{
  result = qword_1ED8B33A8;
  if (!qword_1ED8B33A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B33A8);
  }

  return result;
}

uint64_t sub_19A72D3C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6575517463617865 && a2 == 0xEA00000000007972;
  if (v4 || (sub_19A7AC064() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000019A7CC7D0 == a2 || (sub_19A7AC064() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_19A7AC064() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x800000019A7CC7F0 == a2 || (sub_19A7AC064() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xEE00736567616D49 || (sub_19A7AC064() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xEF696A6F6D6E6547 || (sub_19A7AC064() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xED0000696A6F6D45)
  {

    return 6;
  }

  else
  {
    v6 = sub_19A7AC064();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

id sub_19A72D65C(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_19A72D6A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effectViews);
  if (v1 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
  {
    v3 = 0;
    v30 = OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_isPaused;
    v31 = v1 & 0xC000000000000001;
    v28 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1;
    v29 = i;
    while (1)
    {
      if (v31)
      {
        v5 = MEMORY[0x19A906130](v3, v1);
      }

      else
      {
        if (v3 >= *(v28 + 16))
        {
          goto LABEL_38;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = *(v0 + v30);
      v9 = OBJC_IVAR___STKStickerView_isPaused;
      swift_beginAccess();
      v6[v9] = v8;
      v10 = *&v6[OBJC_IVAR___STKStickerView_effectView];
      if (v10)
      {
        v11 = OBJC_IVAR____SKIStickerEffectViewInternal_isPaused;
        v12 = v10[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused];
        v10[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused] = v8;
        if (v8 == v12)
        {
          v4 = v6;
        }

        else
        {
          v4 = v10;
          v13 = [v4 window];
          if (!v13)
          {
            goto LABEL_15;
          }

          if (v10[v11])
          {
            goto LABEL_15;
          }

          v16 = *&v4[OBJC_IVAR____SKIStickerEffectViewInternal_effect];
          if (*(v16 + OBJC_IVAR___STKStickerEffect_shadowAlpha) == 0.0 || *(v16 + OBJC_IVAR___STKStickerEffect_shadowRadius) == 0.0)
          {
            v17 = 0;
          }

          else
          {
            v17 = COERCE_FLOAT(HIDWORD(*(v16 + OBJC_IVAR___STKStickerEffect_shadowParallax))) != 0.0;
            if (COERCE_FLOAT(*(v16 + OBJC_IVAR___STKStickerEffect_shadowParallax)) != 0.0)
            {
              v17 = 1;
            }
          }

          if (*(v16 + OBJC_IVAR___STKStickerEffect_iridescence) || (*(v16 + OBJC_IVAR___STKStickerEffect_isPuffy) & 1) != 0 || ((*(v16 + OBJC_IVAR___STKStickerEffect_isBrushed) | v17) & 1) != 0)
          {
            v14 = CACurrentMediaTime() < *&v4[OBJC_IVAR____SKIStickerEffectViewInternal_settlingStartTime] + 1.2 + 1.6;
            v15 = 1;
          }

          else
          {
LABEL_15:
            v14 = 0;
            v15 = 0;
          }

          v18 = v0;
          v19 = v4[OBJC_IVAR____SKIStickerEffectViewInternal_displayLinkActive];
          v4[OBJC_IVAR____SKIStickerEffectViewInternal_displayLinkActive] = v14;
          sub_19A77C1C4(v19);
          v21 = OBJC_IVAR____SKIStickerEffectViewInternal_motionActive;
          v4[OBJC_IVAR____SKIStickerEffectViewInternal_motionActive] = v15;
          if (qword_1EAFCB590 == -1)
          {
            v1 = qword_1EAFDD6E0;
            if (v15)
            {
              goto LABEL_26;
            }

LABEL_30:
            MEMORY[0x1EEE9AC00](v20);
            v26[2] = v4;
            v26[3] = &off_1F0DCE2F8;
            swift_beginAccess();
            v0 = v1 + 136;
            v22 = sub_19A6A7540(sub_19A72FA00, v26);
            v23 = v22;
            v24 = *(v1 + 136);
            if (v24 >> 62)
            {
              v25 = sub_19A7ABBE4();
              if (v25 < v23)
              {
LABEL_36:
                __break(1u);
                break;
              }
            }

            else
            {
              v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v25 < v22)
              {
                goto LABEL_36;
              }
            }

            sub_19A6C0C2C(v23, v25);
            swift_endAccess();
            sub_19A6A675C();
          }

          else
          {
            v20 = swift_once();
            v1 = qword_1EAFDD6E0;
            if ((v4[v21] & 1) == 0)
            {
              goto LABEL_30;
            }

LABEL_26:
            sub_19A72F668(v4, v1);
          }

          v0 = v18;
          v1 = v27;
        }

        i = v29;
        goto LABEL_5;
      }

      v4 = v6;
LABEL_5:

      ++v3;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }
}

char *sub_19A72DA88(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_delegate];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v4[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_animatesSelectionChanges] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_tapGr] = 0;
  v4[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_isPaused] = 1;
  v4[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_isExpanded] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_previousEffect] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_image] = 0;
  *&v4[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effects] = &unk_1F0DC4EE8;
  v11 = MEMORY[0x1E69E7CC0];
  v53 = MEMORY[0x1E69E7CC0];
  sub_19A7ABD84();
  v55 = qword_1F0DC4F50;
  sub_19A72E39C(&v55, &v56);
  sub_19A7ABD64();
  sub_19A7ABD94();
  sub_19A7ABDA4();
  sub_19A7ABD74();
  v55 = qword_1F0DC4F58;
  sub_19A72E39C(&v55, &v56);
  sub_19A7ABD64();
  sub_19A7ABD94();
  sub_19A7ABDA4();
  sub_19A7ABD74();
  v55 = qword_1F0DC4F60;
  sub_19A72E39C(&v55, &v56);
  sub_19A7ABD64();
  sub_19A7ABD94();
  sub_19A7ABDA4();
  sub_19A7ABD74();
  v55 = qword_1F0DC4F68;
  sub_19A72E39C(&v55, &v56);
  sub_19A7ABD64();
  sub_19A7ABD94();
  sub_19A7ABDA4();
  sub_19A7ABD74();
  v55 = qword_1F0DC4F70;
  sub_19A72E39C(&v55, &v56);
  sub_19A7ABD64();
  sub_19A7ABD94();
  sub_19A7ABDA4();
  sub_19A7ABD74();
  v12 = &OBJC_IVAR___STKStickerSearchQuery_exactQuery;
  *&v4[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effectViews] = v53;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v14 = &OBJC_IVAR___STKStickerSearchQuery_exactQuery;
  v15 = OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_highlightView;
  *&v5[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_highlightView] = v13;
  v16 = objc_opt_self();
  v17 = v13;
  v18 = [v16 tertiarySystemFillColor];
  [v17 setBackgroundColor_];

  [*&v5[v15] _setContinuousCornerRadius_];
  [*&v5[v15] setTranslatesAutoresizingMaskIntoConstraints_];
  v56 = v11;
  v19 = 5;
  sub_19A7ABD84();
  v20 = &aOriginal[8];
  do
  {
    v21 = *v20;
    v53 = *(v20 - 1);
    v54 = v21;

    sub_19A72E778(&v55);

    sub_19A7ABD64();
    sub_19A7ABD94();
    sub_19A7ABDA4();
    sub_19A7ABD74();
    v20 += 16;
    --v19;
  }

  while (v19);
  v22 = v56;
  v23 = &OBJC_IVAR___STKStickerSearchQuery_exactQuery;
  *&v5[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_labels] = v56;
  if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
  {
    goto LABEL_54;
  }

  if (*(v22 + 16))
  {
LABEL_6:
    if ((v22 & 0xC000000000000001) == 0)
    {
      if (*(v22 + 16))
      {
        v24 = *(v22 + 32);
LABEL_9:
        if (qword_1EAFCB680 != -1)
        {
          swift_once();
        }

        [v24 setTextColor_];

        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_62;
    }

LABEL_60:

    v24 = MEMORY[0x19A906130](0, v22);

    goto LABEL_9;
  }

LABEL_12:
  while (1)
  {
    *&v5[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_selectedEffectIndex] = 0;
    v25 = type metadata accessor for StickerEffectChooser();
    v52.receiver = v5;
    v52.super_class = v25;
    v5 = objc_msgSendSuper2(&v52, sel_initWithFrame_, a1, a2, a3, a4);
    v26 = sub_19A7AAFE4();
    [v5 setAccessibilityIdentifier_];

    [v5 addSubview_];
    v51 = v12[16];
    v22 = *&v5[v51];
    v27 = v22 >> 62 ? sub_19A7ABBE4() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v27)
    {
      break;
    }

    v28 = 0;
    v14 = v22 & 0xC000000000000001;
    v12 = (v22 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v14)
      {
        v29 = MEMORY[0x19A906130](v28, v22);
      }

      else
      {
        if (v28 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v29 = *(v22 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      [v5 addSubview_];

      ++v28;
      if (v31 == v27)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    if (sub_19A7ABBE4())
    {
      goto LABEL_6;
    }
  }

LABEL_23:

  v12 = v23[17];
  v22 = *(v12 + v5);
  if (v22 >> 62)
  {
    v32 = sub_19A7ABBE4();
  }

  else
  {
    v32 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v32)
  {
    v33 = 0;
    v14 = v22 & 0xC000000000000001;
    do
    {
      if (v14)
      {
        v34 = MEMORY[0x19A906130](v33, v22);
      }

      else
      {
        if (v33 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v34 = *(v22 + 8 * v33 + 32);
      }

      v35 = v34;
      v23 = (v33 + 1);
      if (__OFADD__(v33, 1))
      {
        goto LABEL_50;
      }

      [v5 addSubview_];

      ++v33;
    }

    while (v23 != v32);
  }

  v36 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v5 action:sel_handleTap_];
  v37 = *&v5[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_tapGr];
  *&v5[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_tapGr] = v36;
  v22 = v36;

  if (!v22)
  {
LABEL_62:
    __break(1u);

    __break(1u);

    __break(1u);
LABEL_63:
    v22 = v49;
    if (v49)
    {
      goto LABEL_37;
    }

    goto LABEL_64;
  }

  swift_arrayDestroy();
  [v5 addGestureRecognizer_];

  v38 = *&v5[v51];
  if (v38 >> 62)
  {
    v49 = sub_19A7ABBE4();
    if ((v49 & 0x8000000000000000) == 0)
    {
      goto LABEL_63;
    }

    __break(1u);
    goto LABEL_60;
  }

  v22 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
LABEL_37:
    v14 = 4;
    v23 = &selRef_mainQueue;
    do
    {
      v39 = v14 - 4;
      v40 = *&v5[v51];
      if ((v40 & 0xC000000000000001) != 0)
      {

        v41 = MEMORY[0x19A906130](v14 - 4, v40);
      }

      else
      {
        if (v39 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v41 = *(v40 + 8 * v14);
      }

      v42 = *(v12 + v5);
      if ((v42 & 0xC000000000000001) != 0)
      {

        v43 = MEMORY[0x19A906130](v14 - 4, v42);
      }

      else
      {
        if (v39 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v43 = *(v42 + 8 * v14);
      }

      v44 = v41;
      [v44 setShowsLargeContentViewer_];
      v45 = [objc_allocWithZone(MEMORY[0x1E69DCC18]) init];
      [v44 addInteraction_];

      v46 = [v43 text];
      [v44 setLargeContentTitle_];

      v47 = v44;
      [v47 setIsAccessibilityElement_];
      v48 = [v43 text];
      [v47 setAccessibilityLabel_];

      ++v14;
      --v22;
    }

    while (v22);
  }

LABEL_64:

  return v5;
}

void sub_19A72E39C(unint64_t *a1@<X0>, char **a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - v4;
  v6 = *a1;
  type metadata accessor for StickerView();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR___STKStickerView_boundsIncludeStroke;
  swift_beginAccess();
  v7[v8] = 0;
  v9 = OBJC_IVAR___STKStickerView_effectView;
  v10 = *&v7[OBJC_IVAR___STKStickerView_effectView];
  if (v10)
  {
    *(v10 + OBJC_IVAR____SKIStickerEffectViewInternal_boundsIncludeStroke) = 0;
  }

  v11 = v7;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = sub_19A6BE2A0(v6);
  v13 = OBJC_IVAR___STKStickerView_effect;
  swift_beginAccess();
  v14 = *&v11[v13];
  *&v11[v13] = v12;
  v15 = v12;

  sub_19A6C31C4(v12);
  v16 = *&v11[v13];
  v17 = sub_19A7AB394();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  sub_19A7AB354();
  v18 = v16;
  v19 = v11;
  v20 = v18;
  v21 = sub_19A7AB344();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v19;
  v22[5] = 0;
  v22[6] = 0;
  v22[7] = v16;
  sub_19A6816F0(0, 0, v5, &unk_19A7BE500, v22);

  [v19 setContentMode_];
  v24 = OBJC_IVAR___STKStickerView_isPaused;
  swift_beginAccess();
  v19[v24] = 1;
  v25 = *&v7[v9];
  if (v25)
  {
    v26 = v25[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused];
    v25[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused] = 1;
    if (v26 != 1)
    {
      v27 = v25;
      sub_19A77EC24();
    }
  }

  sub_19A72E698(v6);
  if (v28)
  {
    v29 = sub_19A7AAFE4();
  }

  else
  {
    v29 = 0;
  }

  [v19 setAccessibilityIdentifier_];

  *v30 = v19;
}

uint64_t sub_19A72E698(unint64_t a1)
{
  if (a1 < 6)
  {
    return *&aNone[8 * a1];
  }

  sub_19A7ABCB4();
  MEMORY[0x19A905510](0xD000000000000015, 0x800000019A7CC990);
  type metadata accessor for STKStickerEffectType(0);
  sub_19A7ABDE4();
  result = sub_19A7ABE34();
  __break(1u);
  return result;
}

void sub_19A72E778(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_19A7AB0A4();
  v3 = sub_19A7AAFE4();

  [v2 setText_];

  v4 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v5 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];
  [v2 setFont_];

  if (qword_1EAFCB678 != -1)
  {
    swift_once();
  }

  [v2 setTextColor_];
  [v2 setAdjustsFontSizeToFitWidth_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setMaximumContentSizeCategory_];

  v6 = v2;
  [v6 setIsAccessibilityElement_];

  *a1 = v6;
}

void sub_19A72E9A0(void *a1)
{
  v2 = v1;
  [a1 locationInView_];
  v4 = v3;
  v6 = v5;
  v7 = *(v1 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effectViews);
  v8 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_38:
    v9 = sub_19A7ABBE4();
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  v11 = v7 & 0xC000000000000001;
  while (1)
  {
    if (v9 == v10)
    {
      return;
    }

    if (v11)
    {
      v12 = MEMORY[0x19A906130](v10, v7);
    }

    else
    {
      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v12 = *(v7 + 8 * v10 + 32);
    }

    v13 = v12;
    [v12 frame];
    v36.x = v4;
    v36.y = v6;
    v14 = CGRectContainsPoint(v37, v36);

    if (v14)
    {
      break;
    }

    if (__OFADD__(v10++, 1))
    {
      goto LABEL_37;
    }
  }

  sub_19A72F2B4(v10);
  v16 = OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_delegate;
  swift_beginAccess();
  sub_19A60F0CC(v2 + v16, v34, &qword_1EAFCF0C0);
  if (v35)
  {
    sub_19A6C0AB4(v34, v33);
    sub_19A5F2B54(v34, &qword_1EAFCF0C0);
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    v17 = *(v2 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_selectedEffectIndex);
    if ((v17 & 0x8000000000000000) != 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v18 = *(v2 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effects);
    if (v17 >= *(v18 + 16))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v19 = sub_19A6BE2A0(*(v18 + 8 * v17 + 32));
    v20 = *(v2 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_previousEffect);
    v21 = v20;
    v22 = v19;
    sub_19A78AAAC(v22, v20);

    __swift_destroy_boxed_opaque_existential_1(v33);
    if (!v8)
    {
LABEL_17:
      v23 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_20;
    }
  }

  else
  {
    sub_19A5F2B54(v34, &qword_1EAFCF0C0);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v23 = sub_19A7ABBE4();
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

LABEL_20:
  if (v23)
  {
    if (v11 || v23 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = 0;
      v25 = OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_selectedEffectIndex;
      v26 = *MEMORY[0x1E69DD9B8];
      v27 = *MEMORY[0x1E69DDA08];
      v32 = *MEMORY[0x1E69DD9B8] & *MEMORY[0x1E69DDA08];
      v31 = *MEMORY[0x1E69DD9B8] | *MEMORY[0x1E69DDA08];
      while (1)
      {
        if (v11)
        {
          v29 = MEMORY[0x19A906130](v24, v7);
        }

        else
        {
          v29 = *(v7 + 8 * v24 + 32);
        }

        v30 = v29;
        v28 = v26;
        if (v24 != *(v2 + v25))
        {
          goto LABEL_26;
        }

        if (v27)
        {
          v28 = v27;
          if (v32 == v26)
          {
            goto LABEL_26;
          }
        }

        else if (!v26)
        {
          v28 = 0;
          goto LABEL_26;
        }

        v28 = v31;
LABEL_26:
        ++v24;
        [v29 setAccessibilityTraits_];

        if (v23 == v24)
        {
          return;
        }
      }
    }

    goto LABEL_42;
  }
}

void sub_19A72ED1C()
{
  v39.receiver = v0;
  v39.super_class = type metadata accessor for StickerEffectChooser();
  objc_msgSendSuper2(&v39, sel_layoutSubviews);
  if (v0[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_isExpanded])
  {
    v5 = 48.0;
  }

  else
  {
    v5 = 44.0;
  }

  [v0 bounds];
  v7.n128_f64[0] = CGRectGetWidth(v40);
  v37 = *&v0[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effects];
  v38 = v0;
  v8 = v37[2];
  if (v8)
  {
    v9 = *&v0[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effectViews];
    v10 = *&v38[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_labels];
    if ((v9 & 0xC000000000000001) == 0 && v8 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_71;
    }

    if ((v10 & 0xC000000000000001) == 0 && v8 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_72;
    }

    v11 = v7.n128_f64[0] / v8;
    v12 = 0.0;
    v13 = 4;
    v4 = &selRef_entitlementValueForBalloonHost_expectedClass_;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x19A906130](v13 - 4, v9);
      }

      else
      {
        v21 = *(v9 + 8 * v13);
      }

      v1 = v21;
      [v21 setFrame_];
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x19A906130](v13 - 4, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13);
      }

      v12 = v5 + v12 + 20.0;
      v15 = v14;
      [v15 intrinsicContentSize];
      v18 = v17;
      if (v11 >= v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = v11;
      }

      [v1 frame];
      v20 = CGRectGetMaxY(v41) + 10.0;
      [v1 frame];
      [v15 setFrame_];

      ++v13;
      --v8;
    }

    while (v8);
  }

  v3 = OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_selectedEffectIndex;
  v2 = v38;
  v22 = *&v38[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_selectedEffectIndex];
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

  v1 = v37;
  if (v22 >= v37[2])
  {
    goto LABEL_52;
  }

  v23 = sub_19A6BE2A0(v37[v22 + 4]);
  v10 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  v24 = v37[2];
  if (!v24)
  {
    goto LABEL_31;
  }

  v25 = 0;
  while (v37[v25 + 4] != *(v23 + v10))
  {
    if (v24 == ++v25)
    {
      goto LABEL_31;
    }
  }

  v26 = *&v38[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effectViews];
  if ((v26 & 0xC000000000000001) != 0)
  {
    goto LABEL_73;
  }

  if (v25 < *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v26 + 8 * v25 + 32);
LABEL_30:
    v28 = v27;
    [v27 frame];
    v44 = CGRectInset(v43, -6.0, -6.0);
    [*&v2[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_highlightView] setFrame_];

LABEL_31:
    v1 = *&v2[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_labels];
    v6 = *&v2[v3];
    v4 = (v1 & 0xC000000000000001);
    if ((v1 & 0xC000000000000001) == 0)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        if (v6 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v6 = *(v1 + 8 * v6 + 32);
          goto LABEL_35;
        }

        __break(1u);
LABEL_68:
        v33 = MEMORY[0x19A906130](v6);
LABEL_60:
        v34 = v33;
        v35 = *MEMORY[0x1E69DDA08];
        v36 = *MEMORY[0x1E69DD9B8];
        if (*MEMORY[0x1E69DDA08])
        {
          if ((v36 & ~v35) == 0)
          {
LABEL_66:
            [v33 setAccessibilityTraits_];

            return;
          }
        }

        else if (!v36)
        {
          v35 = 0;
          goto LABEL_66;
        }

        v35 |= v36;
        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_55;
    }

    while (1)
    {
      v6 = MEMORY[0x19A906130](v6, v1, v7);
LABEL_35:
      v10 = v6;
      v37 = v3;
      if (v1 >> 62)
      {
LABEL_55:
        v6 = sub_19A7ABBE4();
        v2 = v6;
        if (!v6)
        {
LABEL_56:
          v32 = *&v38[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effectViews];
          v6 = *(v37 + v38);
          if ((v32 & 0xC000000000000001) != 0)
          {
            goto LABEL_68;
          }

          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v6 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v33 = *(v32 + 8 * v6 + 32);
            goto LABEL_60;
          }

          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          v27 = MEMORY[0x19A906130]();
          goto LABEL_30;
        }
      }

      else
      {
        v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v2)
        {
          goto LABEL_56;
        }
      }

      v3 = 0;
      while (1)
      {
        if (v4)
        {
          v6 = MEMORY[0x19A906130](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v6 = *(v1 + 8 * v3 + 32);
        }

        v30 = v6;
        v31 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        sub_19A665E54();
        if (sub_19A7AB924())
        {
          v29 = &qword_1EAFCF058;
          if (qword_1EAFCB680 != -1)
          {
            swift_once();
            v29 = &qword_1EAFCF058;
          }
        }

        else
        {
          v29 = &qword_1EAFCF050;
          if (qword_1EAFCB678 != -1)
          {
            swift_once();
            v29 = &qword_1EAFCF050;
          }
        }

        [v30 setTextColor_];

        ++v3;
        if (v31 == v2)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
    }
  }

  __break(1u);
}

void sub_19A72F2B4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_selectedEffectIndex;
  v3 = *&v1[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_selectedEffectIndex];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *&v1[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effects];
  if (v3 >= *(v4 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = sub_19A6BE2A0(*(v4 + 8 * v3 + 32));
  v7 = *&v1[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_previousEffect];
  *&v1[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_previousEffect] = v6;
  v8 = v6;

  *&v1[v2] = a1;
  if (v1[OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_animatesSelectionChanges] == 1)
  {
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v13[4] = sub_19A72F9AC;
    v13[5] = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_19A6815D4;
    v13[3] = &block_descriptor_27;
    v11 = _Block_copy(v13);
    v12 = v1;

    [v9 animateWithDuration:v11 animations:0.2];
    _Block_release(v11);
  }

  else
  {

    [v1 setNeedsLayout];
  }
}

void sub_19A72F484()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_labels);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x19A906130](0);
    goto LABEL_4;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v1 + 32);
LABEL_4:
    v3 = v2;
    [v2 intrinsicContentSize];

    return;
  }

  __break(1u);
}

id sub_19A72F554()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerEffectChooser();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_19A72F668(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 136);
  if (v4 >> 62)
  {
LABEL_19:
    v5 = sub_19A7ABBE4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A906130](v6, v4);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          return;
        }
      }

      ++v6;
    }

    while (v7 != v5);
  }

  type metadata accessor for StickerEffectMotionManager.WeakObserver();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 24) = &off_1F0DCE2F8;
  swift_unknownObjectWeakAssign();
  v10 = swift_beginAccess();
  MEMORY[0x19A905660](v10);
  if (*((*(a2 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_19A7AB274();
  }

  sub_19A7AB2A4();
  swift_endAccess();
  sub_19A6A675C();
}

void sub_19A72F858()
{
  v1 = v0 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_delegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_animatesSelectionChanges) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_tapGr) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_isPaused) = 1;
  *(v0 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_previousEffect) = 0;
  *(v0 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_image) = 0;
  sub_19A7ABE34();
  __break(1u);
}

void sub_19A72F918(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effects);
  v4 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = 0;
    while (*(v3 + 32 + 8 * v7) != v5)
    {
      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v5)
    {
      return;
    }

    v7 = 0;
  }

  sub_19A72F2B4(v7);
}

id sub_19A72F9AC()
{
  v1 = *(v0 + 16);
  [v1 setNeedsLayout];

  return [v1 layoutIfNeeded];
}

void sub_19A72FA20(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v36 - v7;
  v8 = *(v1 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_image);
  v42 = OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_image;
  *(v1 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_image) = a1;
  v9 = a1;

  v43 = v1;
  v10 = *(v1 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effectViews);
  if (v10 >> 62)
  {
    v34 = *(v1 + OBJC_IVAR____TtC10StickerKit20StickerEffectChooser_effectViews);
    v35 = sub_19A7ABBE4();
    v10 = v34;
    v11 = v35;
    if (!v35)
    {
      return;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  v12 = v10;
  v41 = sub_19A7AB354();
  if (v11 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v12;
    v37 = v12 & 0xC000000000000001;
    v38 = v11;
    v39 = v12;
    v40 = v5;
    do
    {
      if (v37)
      {
        v15 = MEMORY[0x19A906130](v13, v14);
      }

      else
      {
        v15 = *(v14 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = *(v43 + v42);
      v18 = OBJC_IVAR___STKStickerView_effect;
      swift_beginAccess();
      v19 = *&v16[v18];
      v20 = sub_19A7AB394();
      v21 = *(v20 - 8);
      v22 = v46;
      (*(v21 + 56))(v46, 1, 1, v20);
      v23 = v19;
      v24 = v17;
      v45 = v23;
      v25 = v16;
      v44 = v24;
      v26 = sub_19A7AB344();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = MEMORY[0x1E69E85E0];
      v27[4] = v25;
      v27[5] = v17;
      v27[6] = 0;
      v27[7] = v19;
      v28 = v40;
      sub_19A60F0CC(v22, v40, &unk_1EAFCD690);
      LODWORD(v26) = (*(v21 + 48))(v28, 1, v20);

      if (v26 == 1)
      {
        sub_19A5F2B54(v28, &unk_1EAFCD690);
      }

      else
      {
        sub_19A7AB384();
        (*(v21 + 8))(v28, v20);
      }

      v29 = v27[2];
      swift_unknownObjectRetain();

      if (v29)
      {
        swift_getObjectType();
        v30 = sub_19A7AB2E4();
        v32 = v31;
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      sub_19A5F2B54(v46, &unk_1EAFCD690);
      v33 = swift_allocObject();
      *(v33 + 16) = &unk_19A7C01F0;
      *(v33 + 24) = v27;
      if (v32 | v30)
      {
        v47 = 0;
        v48 = 0;
        v49 = v30;
        v50 = v32;
      }

      ++v13;
      swift_task_create();

      v14 = v39;
    }

    while (v38 != v13);
  }
}

uint64_t sub_19A72FE14(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_19A659B5C(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_19A7ABB64();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(*(a1 + 56) + 8 * result) + 16);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_19A659B5C((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v11 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_19A63DD24(result, v11, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_19A63DD24(result, v11, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_19A730034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_19A64FF84(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_19A695730(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_19A699550();
        v11 = v13;
      }

      result = sub_19A73DECC(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_19A7300F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF180);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for EmojiKeyboardWaypoint();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_19A5F2B54(a1, &unk_1EAFCF180);
    v13 = sub_19A695774(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_19A6996AC();
        v17 = v21;
      }

      sub_19A62D7FC(*(v17 + 56) + *(v10 + 72) * v15, v8);
      sub_19A73E03C(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_19A5F2B54(v8, &unk_1EAFCF180);
  }

  else
  {
    sub_19A62D7FC(a1, v12);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_19A6500CC(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_19A730320(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_19A650AE8(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_19A7A8F64();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_19A6957E0(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_19A69A3C0();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_19A7A8F64();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_19A73E548(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_19A7A8F64();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_19A7304E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_19A650E5C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_19A6955C0(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_19A69A7C4();
        v14 = v16;
      }

      result = sub_19A73E868(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_19A7305D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_19A650E30(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_19A6955C0(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_19A69A7B0();
        v14 = v16;
      }

      result = sub_19A73E868(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_19A7306D0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = *&v1[v3 + 32];
    v10 = *&v1[v3 + 40];
    v13 = *&v1[i - 8];
    v12 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_19A78705C(v1);
    }

    v14 = &v1[v3];
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_19A7307E8(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_19A7ABBE4();
    if (v19)
    {
      v20 = v19;
      v1 = sub_19A73DE28(v19, 0);
      sub_19A73F28C(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_19A7ABBE4();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x19A906130]();
          v11 = MEMORY[0x19A906130](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_19A787AC0(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_19A787AC0(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
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
  }
}

unint64_t sub_19A7309F8(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = sub_19A7ABBE4();
    if (v14)
    {
      v15 = v14;
      v1 = sub_19A73DE28(v14, 0);
      sub_19A73F5E4(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_19A7ABBE4();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x19A906130]();
          v10 = MEMORY[0x19A906130](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_19A787AC0(v1);
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;
        a1 = swift_unknownObjectRelease();
        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_19A787AC0(v1);
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
        a1 = swift_unknownObjectRelease();
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
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
  }
}

uint64_t sub_19A730C0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_19A6955C0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();

    sub_19A73CE8C(v9);
    v10 = *(v8 + 32);

    return v10;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_19A730CBC()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCAAC0);
  __swift_project_value_buffer(v0, qword_1EAFCAAC0);
  return sub_19A7A9374();
}

BOOL sub_19A730D70()
{
  v1 = sub_19A731188();
  v2 = *&v1[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_viewConfiguration];
  v3 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  LODWORD(v2) = *(v2 + v3);

  if (v2 != 1)
  {
    return 0;
  }

  v4 = *(*(v0 + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___uiConfig) + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_viewConfiguration);
  v5 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji;
  swift_beginAccess();
  if (*(v4 + v5))
  {
    return 0;
  }

  v7 = sub_19A652898();
  if (v7 >> 62)
  {
    v8 = sub_19A7ABBE4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v8 != 0;
}

void (*sub_19A730E74(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x31uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_19A731188();
  v6 = *&v5[OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_viewConfiguration];
  v7 = OBJC_IVAR___STKImageGlyphViewConfiguration_doesSupportImageGlyph;
  swift_beginAccess();
  LODWORD(v6) = *(v6 + v7);

  if (v6 == 1 && (v8 = *(*(v1 + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___uiConfig) + OBJC_IVAR____TtC10StickerKit25ImageGlyphUIConfiguration_viewConfiguration), v9 = OBJC_IVAR___STKImageGlyphViewConfiguration_isRunningInGenmoji, swift_beginAccess(), (*(v8 + v9) & 1) == 0))
  {
    v11 = sub_19A652898();
    if (v11 >> 62)
    {
      v12 = sub_19A7ABBE4();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v12 != 0;
  }

  else
  {
    v10 = 0;
  }

  *(v4 + 48) = v10;
  return sub_19A730FC0;
}

uint64_t sub_19A731068()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_19A7B6C40;
  v1 = sub_19A65332C();
  v2 = type metadata accessor for ImageGlyphCategory(0);
  v3 = objc_allocWithZone(v2);
  sub_19A7A8F54();
  v4 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems;
  *&v3[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems] = 0;
  v5 = &v3[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title];
  *v5 = 0x696A6F6D654DLL;
  v5[1] = 0xE600000000000000;
  *&v3[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] = 13;
  *&v3[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] = xmmword_19A7C0260;
  v3[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_isSystemImage] = 1;
  *&v3[v4] = v1;
  v7.receiver = v3;
  v7.super_class = v2;
  *(v0 + 32) = objc_msgSendSuper2(&v7, sel_init);
  return v0;
}

id sub_19A731188()
{
  v1 = OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___uiConfig;
  v2 = *(v0 + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___uiConfig);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___uiConfig);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
    v6 = ImageGlyphUIConfiguration.init(_:glyphType:)(0, 2);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_19A731204()
{
  v1 = v0;
  v2 = sub_19A7AB774();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19A7AB6F4();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_19A7AA7B4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___puppetQueue;
  v9 = *(v0 + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___puppetQueue);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___puppetQueue);
  }

  else
  {
    v11 = sub_19A5F5028(0, &qword_1ED8B2040);
    v18 = "urce MemojiGlyphDataSource";
    v19 = v11;
    sub_19A7AA784();
    v20 = MEMORY[0x1E69E7CC0];
    v16[1] = sub_19A740A38(&unk_1ED8B2050, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF150);
    v17 = v2;
    sub_19A623714(&unk_1ED8B2070, &unk_1EAFCF150);
    sub_19A7ABB54();
    (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v17);
    v12 = sub_19A7AB7B4();
    v13 = *(v0 + v8);
    *(v1 + v8) = v12;
    v10 = v12;

    v9 = 0;
  }

  v14 = v9;
  return v10;
}

uint64_t sub_19A7314B0()
{
  v1 = OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___internalSources;
  if (*&v0[OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___internalSources])
  {
    v2 = *&v0[OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___internalSources];
  }

  else
  {
    v2 = sub_19A731518(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_19A731518(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19A7BE330;
  v3 = type metadata accessor for AvatarGlyphDataSource();
  v21 = v3;
  v22 = &off_1F0DCC7B8;
  v20[0] = a1;
  type metadata accessor for AnimojiGlyphDataSource();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v3);
  v6 = *(v3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = *(v6 + 16);
  v9(&v20[-1] - v8);
  v10 = *(&v20[-1] - v8);
  v11 = a1;
  v12 = sub_19A73F7FC(v10, v4);
  __swift_destroy_boxed_opaque_existential_1(v20);
  *(v2 + 32) = v12;
  v21 = v3;
  v22 = &off_1F0DCC7B8;
  v20[0] = v11;
  type metadata accessor for MemojiGlyphDataSource();
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v3);
  MEMORY[0x1EEE9AC00](v14);
  v9(&v20[-1] - v8);
  v15 = *(&v20[-1] - v8);
  v16 = v11;
  v17 = sub_19A73F938(v15, v13);
  __swift_destroy_boxed_opaque_existential_1(v20);
  *(v2 + 40) = v17;
  return v2;
}

id sub_19A731754(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7B6C40;
  v5 = sub_19A65332C();
  v6 = type metadata accessor for ImageGlyphCategory(0);
  v7 = objc_allocWithZone(v6);
  sub_19A7A8F54();
  v8 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems;
  *&v7[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems] = 0;
  v9 = &v7[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title];
  *v9 = 0x696A6F6D654DLL;
  v9[1] = 0xE600000000000000;
  *&v7[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] = 13;
  *&v7[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] = xmmword_19A7C0260;
  v7[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_isSystemImage] = 1;
  *&v7[v8] = v5;
  v16.receiver = v7;
  v16.super_class = v6;
  result = objc_msgSendSuper2(&v16, sel_init);
  *(inited + 32) = result;
  if ((inited & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x19A906130](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = result;
  }

  v12 = v11;

  v13 = a1;
  v14 = sub_19A7AB924();

  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = v2;
  return v2;
}

uint64_t sub_19A7318E8(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for ImageGlyphUIConfiguration());
  v5 = a1;
  v6 = ImageGlyphUIConfiguration.init(_:glyphType:)(a1, 2);
  v7 = *(v2 + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___uiConfig);
  *(v2 + OBJC_IVAR____TtC10StickerKit21AvatarGlyphDataSource____lazy_storage___uiConfig) = v6;

  return sub_19A652B98(v5);
}

id sub_19A731A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7B6C40;
  v4 = sub_19A65332C();
  v5 = type metadata accessor for ImageGlyphCategory(0);
  v6 = objc_allocWithZone(v5);
  sub_19A7A8F54();
  v7 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems;
  *&v6[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems] = 0;
  v8 = &v6[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title];
  *v8 = 0x696A6F6D654DLL;
  v8[1] = 0xE600000000000000;
  *&v6[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] = 13;
  *&v6[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] = xmmword_19A7C0260;
  v6[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_isSystemImage] = 1;
  *&v6[v7] = v4;
  v27.receiver = v6;
  v27.super_class = v5;
  result = objc_msgSendSuper2(&v27, sel_init);
  *(inited + 32) = result;
  v10 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title;
  v11 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType;
  v12 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName;
  if ((inited & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x19A906130](0, inited);
    v14 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title;
    goto LABEL_4;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = result;
    v14 = v10;
LABEL_4:
    v15 = &v13[v14];
    if (*v15 == *(a1 + v10) && *(v15 + 1) == *(a1 + v10 + 8) || (sub_19A7AC064()) && *&v13[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] == *(a1 + v11))
    {
      v16 = (a1 + v12);
      v17 = *&v13[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName + 8];
      v18 = *(a1 + v12 + 8);
      if (!v17)
      {

        if (!v18)
        {
          goto LABEL_19;
        }

        goto LABEL_14;
      }

      if (v18)
      {
        if (*&v13[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] == *v16 && v17 == v18)
        {

LABEL_20:
          v23 = sub_19A731188();
          v24 = sub_19A6532EC();
          sub_19A758CA4(v28);

          if (v28[0] != 2 && (v28[25] & 1) != 0)
          {
            v25 = v24 - 1;
            if (!__OFSUB__(v24, 1))
            {
              goto LABEL_26;
            }

            __break(1u);
          }

          v25 = 0;
LABEL_26:
          v20 = a2;
          MEMORY[0x19A903470](0, v25);
          v19 = 0;
          goto LABEL_15;
        }

        v22 = sub_19A7AC064();

        if (v22)
        {
LABEL_19:

          goto LABEL_20;
        }

LABEL_14:
        swift_setDeallocating();
        swift_arrayDestroy();
        v19 = 1;
        v20 = a2;
LABEL_15:
        v21 = sub_19A7A9094();
        return (*(*(v21 - 8) + 56))(v20, v19, 1, v21);
      }
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

char *sub_19A731D24(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7B6C40;
  v3 = sub_19A65332C();
  v4 = type metadata accessor for ImageGlyphCategory(0);
  v5 = objc_allocWithZone(v4);
  sub_19A7A8F54();
  v6 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems;
  *&v5[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_numberOfItems] = 0;
  v7 = &v5[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title];
  *v7 = 0x696A6F6D654DLL;
  v7[1] = 0xE600000000000000;
  *&v5[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] = 13;
  *&v5[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] = xmmword_19A7C0260;
  v5[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_isSystemImage] = 1;
  *&v5[v6] = v3;
  v19.receiver = v5;
  v19.super_class = v4;
  result = objc_msgSendSuper2(&v19, sel_init);
  *(inited + 32) = result;
  v9 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title;
  v10 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType;
  v11 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName;
  if ((inited & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x19A906130](0, inited);
    v13 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title;
    goto LABEL_4;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = result;
    v13 = v9;
LABEL_4:
    v14 = &v12[v13];
    if (*v14 == *(a1 + v9) && *(v14 + 1) == *(a1 + v9 + 8) || (sub_19A7AC064()) && *&v12[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_categoryType] == *(a1 + v10))
    {
      v15 = (a1 + v11);
      v16 = *&v12[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName + 8];
      v17 = *(a1 + v11 + 8);
      if (!v16)
      {

        if (!v17)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      if (v17)
      {
        if (*&v12[OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName] == *v15 && v16 == v17)
        {

          return sub_19A65332C();
        }

        v18 = sub_19A7AC064();

        if (v18)
        {
LABEL_18:

          return sub_19A65332C();
        }

LABEL_14:
        swift_setDeallocating();
        swift_arrayDestroy();
        return 0;
      }
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A731FDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37 = a1;
  v38 = a2;
  v34 = a3;
  v3 = sub_19A7A9094();
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = sub_19A652898();
  v10 = v9;
  v33 = v8;
  v11 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_22:
    v12 = sub_19A7ABBE4();
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = 0;
  while (v12 != v13)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x19A906130](v13, v10);
      if (__OFADD__(v13, 1))
      {
LABEL_14:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v15 = *(v10 + 8 * v13 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v13, 1))
      {
        goto LABEL_14;
      }
    }

    v16 = sub_19A7AAFE4();
    v17 = [v15 indexPathForIdentifier:v16 ofType:v38];

    if (v17)
    {

      v24 = v32;
      sub_19A7A9024();

      v25 = v33;
      v26 = v24;
      v27 = v35;
      (*(v36 + 32))(v33, v26, v35);
      v28 = sub_19A7A9044();
      result = sub_19A7A9064();
      v29 = result + v14;
      if (__OFADD__(result, v14))
      {
        __break(1u);
      }

      else
      {
        v30 = v34;
        MEMORY[0x19A903470](v28, v29);
        swift_unknownObjectRelease();
        (*(v36 + 8))(v25, v27);
        return (*(v36 + 56))(v30, 0, 1, v27);
      }

      return result;
    }

    v18 = [v15 numberOfSections];
    swift_unknownObjectRelease();
    ++v13;
    v19 = __OFADD__(v14, v18);
    v14 += v18;
    if (v19)
    {
      goto LABEL_21;
    }
  }

  v20 = v35;
  v21 = *(v36 + 56);
  v22 = v34;

  return v21(v22, 1, 1, v20);
}