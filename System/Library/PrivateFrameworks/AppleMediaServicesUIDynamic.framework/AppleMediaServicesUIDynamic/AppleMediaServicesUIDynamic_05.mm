uint64_t sub_1CA15C04C()
{
  memset(v1, 0, sizeof(v1));
  sub_1CA19BEC8();
  return sub_1CA15ECF4(v1);
}

uint64_t sub_1CA15C08C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_1CA15C0EC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v10 = sub_1CA19AFF8();
  __swift_project_value_buffer(v10, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v20 = type metadata accessor for FlowActionImplementation();
  aBlock[0] = a1;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(aBlock);
  sub_1CA19AF18();
  v20 = sub_1CA0F2110(0, &unk_1EE03C240);
  aBlock[0] = a2;
  v13 = a2;
  sub_1CA19AF38();
  sub_1CA132B60(aBlock, &qword_1EC433830);
  sub_1CA19AF98();

  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a4;
  v14[4] = a6;
  v21 = sub_1CA15F0E0;
  v22 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA0F4068;
  v20 = &block_descriptor_41;
  v15 = _Block_copy(aBlock);

  v16 = a4;

  [a3 presentViewController:v16 animated:1 completion:v15];
  _Block_release(v15);
}

uint64_t sub_1CA15C3D4(uint64_t a1, void *a2)
{
  sub_1CA16DE94(a2);
  memset(v3, 0, sizeof(v3));
  sub_1CA19BEC8();
  return sub_1CA15ECF4(v3);
}

void sub_1CA15C424(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  v16[7] = a9;
  v42 = v16;
  v43 = a4;
  if (a1)
  {
    v48 = a2;
    sub_1CA0F2110(0, &unk_1EE03C240);

    v17 = a5;
    v18 = a6;
    v19 = a7;

    v20 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433820);
    if (swift_dynamicCast())
    {
      sub_1CA0EBE94(&v45, aBlock);
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v21 = sub_1CA19AFF8();
      __swift_project_value_buffer(v21, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0930;
      v22 = AMSSetLogKeyIfNeeded();
      sub_1CA19C118();

      type metadata accessor for FlowActionImplementation();
      sub_1CA19AF48();

      sub_1CA19AF18();
      v23 = v50;
      v24 = __swift_project_boxed_opaque_existential_2(aBlock, v50);
      *(&v46 + 1) = v23;
      boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v45);
      (*(*(v23 - 1) + 16))(boxed_opaque_existential_2Tm, v24, v23);
      sub_1CA19AF38();
      sub_1CA132B60(&v45, &qword_1EC433830);
      sub_1CA19AFC8();

      v26 = v50;
      v27 = v51;
      __swift_project_boxed_opaque_existential_2(aBlock, v50);
      (*(v27 + 1))(v26, v27);
      sub_1CA0F2110(0, &qword_1EE03C230);
      v28 = sub_1CA19C598();
      v29 = swift_allocObject();
      v29[2] = a3;
      v29[3] = sub_1CA15ED48;
      v29[4] = v42;

      sub_1CA15ED70(v28, sub_1CA15ED64, v29);

      __swift_destroy_boxed_opaque_existential_2(aBlock);

      goto LABEL_13;
    }

    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    sub_1CA132B60(&v45, &qword_1EC433828);
  }

  else
  {

    v30 = a5;
    v31 = a6;
    v32 = a7;
  }

  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v33 = sub_1CA19AFF8();
  __swift_project_value_buffer(v33, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v34 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  v35 = type metadata accessor for FlowActionImplementation();
  sub_1CA19AF48();

  sub_1CA19AF18();
  sub_1CA19AF98();

  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v50 = v35;
  aBlock[0] = v43;

  v36 = AMSLogKey();
  if (v36)
  {
    v37 = v36;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(aBlock);
  sub_1CA19AF18();
  v50 = sub_1CA0F2110(0, &unk_1EE03C240);
  aBlock[0] = a5;
  v38 = a5;
  sub_1CA19AF38();
  sub_1CA132B60(aBlock, &qword_1EC433830);
  sub_1CA19AF98();

  v39 = swift_allocObject();
  v39[2] = a8;
  v39[3] = a7;
  v39[4] = a9;
  v51 = sub_1CA15ED58;
  v52 = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA0F4068;
  v50 = &block_descriptor_25;
  v40 = _Block_copy(aBlock);
  v41 = a7;

  [a6 presentViewController:v41 animated:1 completion:v40];
  _Block_release(v40);

LABEL_13:
}

void sub_1CA15CBB8(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  if (a1)
  {
    v36 = a2;
    sub_1CA0F2110(0, &unk_1EE03C240);

    v14 = a5;
    v15 = a6;

    v16 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433820);
    if (swift_dynamicCast())
    {
      sub_1CA0EBE94(&v33, v37);
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v17 = sub_1CA19AFF8();
      __swift_project_value_buffer(v17, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0930;
      v18 = AMSSetLogKeyIfNeeded();
      sub_1CA19C118();

      type metadata accessor for FlowActionImplementation();
      sub_1CA19AF48();

      sub_1CA19AF18();
      v19 = v38;
      v20 = __swift_project_boxed_opaque_existential_2(v37, v38);
      *(&v34 + 1) = v19;
      boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v33);
      (*(*(v19 - 8) + 16))(boxed_opaque_existential_2Tm, v20, v19);
      sub_1CA19AF38();
      sub_1CA132B60(&v33, &qword_1EC433830);
      sub_1CA19AFC8();

      v22 = v38;
      v23 = v39;
      __swift_project_boxed_opaque_existential_2(v37, v38);
      (*(v23 + 8))(v22, v23);
      sub_1CA0F2110(0, &qword_1EE03C230);
      v24 = sub_1CA19C598();
      v25 = swift_allocObject();
      v25[2] = a3;
      v25[3] = sub_1CA15EF04;
      v25[4] = v13;

      sub_1CA15ED70(v24, sub_1CA15F0B8, v25);

      __swift_destroy_boxed_opaque_existential_2(v37);

      goto LABEL_11;
    }

    v30 = a4;
    v31 = a6;
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    sub_1CA132B60(&v33, &qword_1EC433828);
  }

  else
  {
    v30 = a4;

    v26 = a5;
    v31 = a6;
    v27 = a6;
  }

  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v28 = sub_1CA19AFF8();
  __swift_project_value_buffer(v28, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v29 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  type metadata accessor for FlowActionImplementation();
  sub_1CA19AF48();

  sub_1CA19AF18();
  sub_1CA19AF98();

  a6 = v31;
  sub_1CA15DB20(v30, a5, v31, a7);

LABEL_11:
}

uint64_t sub_1CA15D150(char a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  if (a1)
  {
    v36 = a2;
    sub_1CA0F2110(0, &unk_1EE03C240);
    v14 = a4;

    v15 = a6;

    v16 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433820);
    if (swift_dynamicCast())
    {
      sub_1CA0EBE94(&v33, v37);
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v17 = sub_1CA19AFF8();
      __swift_project_value_buffer(v17, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0930;
      v18 = AMSSetLogKeyIfNeeded();
      sub_1CA19C118();

      type metadata accessor for FlowActionImplementation();
      sub_1CA19AF48();

      sub_1CA19AF18();
      v19 = v38;
      v20 = __swift_project_boxed_opaque_existential_2(v37, v38);
      *(&v34 + 1) = v19;
      boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v33);
      (*(*(v19 - 8) + 16))(boxed_opaque_existential_2Tm, v20, v19);
      sub_1CA19AF38();
      sub_1CA132B60(&v33, &qword_1EC433830);
      sub_1CA19AFC8();

      v22 = v38;
      v23 = v39;
      __swift_project_boxed_opaque_existential_2(v37, v38);
      (*(v23 + 8))(v22, v23);
      sub_1CA0F2110(0, &qword_1EE03C230);
      v24 = sub_1CA19C598();
      v25 = swift_allocObject();
      v25[2] = a3;
      v25[3] = sub_1CA15EF2C;
      v25[4] = v13;

      sub_1CA15ED70(v24, sub_1CA15F0B8, v25);

      __swift_destroy_boxed_opaque_existential_2(v37);

      goto LABEL_11;
    }

    v31 = a6;
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    sub_1CA132B60(&v33, &qword_1EC433828);
  }

  else
  {
    v26 = a4;

    v31 = a6;
    v27 = a6;
  }

  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v28 = sub_1CA19AFF8();
  __swift_project_value_buffer(v28, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v29 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  type metadata accessor for FlowActionImplementation();
  sub_1CA19AF48();

  sub_1CA19AF18();
  sub_1CA19AF98();

  a6 = v31;
  sub_1CA15DF74(a4, a5, v31, a7);

LABEL_11:
}

char *sub_1CA15D6D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[6];
  if (v6 < 2)
  {
    v15 = type metadata accessor for FlowAction();
    return sub_1CA192F94(a1 + *(v15 + 32), a4);
  }

  else
  {
    v8 = a1[5];
    v9 = a1[7];

    v10 = sub_1CA1151AC(v8, v6, v9);

    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v11 = sub_1CA19AFF8();
    __swift_project_value_buffer(v11, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v12 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v12);
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v19 = type metadata accessor for FlowActionImplementation();
    v18[0] = a3;

    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v18);
    sub_1CA19AF18();
    v19 = sub_1CA0F2110(0, &qword_1EC433DC0);
    v18[0] = v10;
    v17 = v10;
    sub_1CA19AF38();
    sub_1CA132B60(v18, &qword_1EC433830);
    sub_1CA19AFC8();

    return v17;
  }
}

id sub_1CA15DB20(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v8 = sub_1CA19AFF8();
  __swift_project_value_buffer(v8, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v16 = type metadata accessor for FlowActionImplementation();
  v15[0] = a1;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v15);
  sub_1CA19AF18();
  v16 = sub_1CA0F2110(0, &unk_1EE03C240);
  v15[0] = a2;
  v11 = a2;
  sub_1CA19AF38();
  sub_1CA132B60(v15, &qword_1EC433830);
  sub_1CA19AF98();

  [a3 pushViewController:v11 animated:1];
  result = [a3 transitionCoordinator];
  if (result)
  {
    v13 = result;
    v17 = sub_1CA15EF10;
    v18 = a4;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1CA15C08C;
    v16 = &block_descriptor_51;
    v14 = _Block_copy(v15);

    [v13 animateAlongsideTransition:0 completion:v14];
    _Block_release(v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CA15DE10()
{
  memset(v1, 0, sizeof(v1));
  sub_1CA19BEC8();
  return sub_1CA15ECF4(v1);
}

double sub_1CA15DE50@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a1;
  sub_1CA0F2110(0, &unk_1EE03C240);
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DD8);
  if (swift_dynamicCast())
  {
    sub_1CA0EBE94(v9, a2);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_1CA132B60(v9, &qword_1EC433DD0);
    v6 = [v4 childViewControllers];
    v7 = sub_1CA19C2B8();

    v8 = sub_1CA182008(v7);

    if (v8)
    {
      sub_1CA15DE50(v8);
    }

    else
    {
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  return result;
}

uint64_t sub_1CA15DF74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 viewControllers];
  sub_1CA0F2110(0, &unk_1EE03C240);
  v9 = sub_1CA19C2B8();

  v10 = sub_1CA182008(v9);

  if (!v10)
  {
    goto LABEL_7;
  }

  sub_1CA15DE50(v10, &v41);
  if (!*(&v42 + 1))
  {

    sub_1CA132B60(&v41, &qword_1EC433DD0);
LABEL_7:
    v40 = a4;
    [a1 pushViewController:a3 animated:0];
    v14 = [a1 viewControllers];
    a3 = sub_1CA19C2B8();

    v15 = qword_1EE03B230;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_1CA19AFF8();
    v10 = __swift_project_value_buffer(v16, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    *(&v46 + 1) = type metadata accessor for FlowActionImplementation();
    *&v45 = a2;

    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v45);
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1CA19C8F8();

    *&v45 = 0xD000000000000027;
    *(&v45 + 1) = 0x80000001CA1AD790;
    v19 = sub_1CA0F041C(a3);
    *&v41 = v19;
    v20 = sub_1CA19CAB8();
    MEMORY[0x1CCA99820](v20);

    MEMORY[0x1CCA99820](2112093, 0xE300000000000000);
    *(&v46 + 1) = MEMORY[0x1E69E6158];
    sub_1CA19AF38();
    sub_1CA132B60(&v45, &qword_1EC433830);
    *(&v46 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DC8);
    *&v45 = a3;
    sub_1CA19AF38();
    sub_1CA132B60(&v45, &qword_1EC433830);
    a2 = v10;
    sub_1CA19AF98();

    v21 = v19 - 2;
    if (__OFSUB__(v19, 2))
    {
      __break(1u);
    }

    else
    {
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || a3 < 0 || (a3 & 0x4000000000000000) != 0)
      {
        a3 = sub_1CA16B7B0(a3);
      }

      a2 = v40;
      v22 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21 < v22)
      {
        v23 = v22 - 1;
        v24 = v22 - 1 - v21;
        v25 = ((a3 & 0xFFFFFFFFFFFFFF8) + 8 * v21 + 32);
        v26 = *((a3 & 0xFFFFFFFFFFFFFF8) + 8 * v21 + 0x20);
        sub_1CA16B77C(v25 + 8, v24, v25);
        *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v23;

        v27 = sub_1CA19C2A8();

        [a1 setViewControllers_];

        v45 = 0u;
        v46 = 0u;
        sub_1CA19BEC8();
        return sub_1CA15ECF4(&v45);
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_1CA0EBE94(&v41, &v45);
  if (qword_1EE03B230 != -1)
  {
LABEL_21:
    swift_once();
  }

  v11 = sub_1CA19AFF8();
  __swift_project_value_buffer(v11, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  *(&v42 + 1) = type metadata accessor for FlowActionImplementation();
  *&v41 = a2;

  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v41);
  sub_1CA19AF18();
  v29 = *(&v46 + 1);
  v30 = __swift_project_boxed_opaque_existential_2(&v45, *(&v46 + 1));
  *(&v42 + 1) = v29;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v41);
  (*(*(v29 - 8) + 16))(boxed_opaque_existential_2Tm, v30, v29);
  sub_1CA19AF38();
  sub_1CA132B60(&v41, &qword_1EC433830);
  sub_1CA19AF98();

  __swift_project_boxed_opaque_existential_2(&v45, *(&v46 + 1));
  sub_1CA151668(a3, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, v44, v45, *(&v45 + 1), v46, *(&v46 + 1), v47, v48, v49, v50, v51, v52);
  v41 = 0u;
  v42 = 0u;
  sub_1CA19BEC8();

  sub_1CA15ECF4(&v41);
  return __swift_destroy_boxed_opaque_existential_2(&v45);
}

uint64_t sub_1CA15E680(int a1, id a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4;
  if (a2)
  {
    v6 = a2;
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v7 = sub_1CA19AFF8();
    __swift_project_value_buffer(v7, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0930;
    v8 = AMSSetLogKeyIfNeeded();
    sub_1CA19C118();

    type metadata accessor for FlowActionImplementation();
    sub_1CA19AF48();

    sub_1CA19AF18();
    swift_getErrorValue();
    v16[3] = v15;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v16);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_2Tm);
    sub_1CA19AF38();
    sub_1CA132B60(v16, &qword_1EC433830);
    sub_1CA19AFB8();

    v4 = a4;
  }

  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v10 = sub_1CA19AFF8();
  __swift_project_value_buffer(v10, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v11 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  type metadata accessor for FlowActionImplementation();
  sub_1CA19AF48();

  sub_1CA19AF18();
  sub_1CA19AFC8();

  return v4(v12);
}

unint64_t sub_1CA15EA0C()
{
  result = qword_1EC433DB8;
  if (!qword_1EC433DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433DB8);
  }

  return result;
}

uint64_t sub_1CA15EA60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CA15EAC4()
{
  v1 = type metadata accessor for FlowAction();
  OUTLINED_FUNCTION_7_3(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v7);
  v14 = *(v0 + v8);
  v15 = *(v0 + v9);
  v16 = *(v0 + v10);
  v17 = *(v0 + v11);
  v18 = *(v0 + v12);
  v19 = *(v0 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1CA15AF94(v0 + v6, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA15EBA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA15EBF0(uint64_t a1, void (*a2)(_BYTE *, void))
{
  sub_1CA15EF38(a1, v4);
  a2(v4, 0);
  return sub_1CA132B60(v4, &qword_1EC433DE0);
}

uint64_t sub_1CA15EC8C(uint64_t a1, void (*a2)(void *, uint64_t))
{
  memset(v3, 0, 24);
  v3[3] = 2;
  a2(v3, a1);
  return sub_1CA132B60(v3, &qword_1EC433DE0);
}

uint64_t sub_1CA15ED70(void *a1, uint64_t a2, uint64_t a3)
{
  v10[3] = sub_1CA0F2110(0, &qword_1EE03C230);
  v10[4] = MEMORY[0x1E69AB720];
  v10[0] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  swift_retain_n();
  v8 = a1;
  sub_1CA19BE68();

  return __swift_destroy_boxed_opaque_existential_2(v10);
}

uint64_t sub_1CA15EE7C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = 1;
  return v2(&v4, a1);
}

uint64_t objectdestroy_21Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

_BYTE *storeEnumTagSinglePayload for FlowActionImplementation.PerformError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA15F044()
{
  result = qword_1EC433DE8;
  if (!qword_1EC433DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433DE8);
  }

  return result;
}

uint64_t sub_1CA15F0E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x67694C6172746C75 && a2 == 0xEA00000000007468;
  if (v4 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
  {

    v5 = MEMORY[0x1E69DB998];
    return *v5;
  }

  v7 = a1 == 1852401780 && a2 == 0xE400000000000000;
  if (v7 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
  {

    v5 = MEMORY[0x1E69DB988];
    return *v5;
  }

  v8 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v8 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
  {

    v5 = MEMORY[0x1E69DB968];
    return *v5;
  }

  v9 = a1 == 0x72616C75676572 && a2 == 0xE700000000000000;
  if (v9 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
  {

    v5 = MEMORY[0x1E69DB978];
    return *v5;
  }

  v10 = a1 == 0x6D756964656DLL && a2 == 0xE600000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
  {

    v5 = MEMORY[0x1E69DB970];
    return *v5;
  }

  v11 = a1 == 0x646C6F62696D6573 && a2 == 0xE800000000000000;
  if (v11 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
  {

    v5 = MEMORY[0x1E69DB980];
    return *v5;
  }

  v12 = a1 == 1684828002 && a2 == 0xE400000000000000;
  if (v12 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
  {

    v5 = MEMORY[0x1E69DB958];
    return *v5;
  }

  v13 = a1 == 0x7976616568 && a2 == 0xE500000000000000;
  if (v13 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
  {

    v5 = MEMORY[0x1E69DB960];
    return *v5;
  }

  if (a1 == 0x6B63616C62 && a2 == 0xE500000000000000)
  {

    goto LABEL_57;
  }

  v15 = OUTLINED_FUNCTION_0_28();

  if (v15)
  {
LABEL_57:
    v5 = MEMORY[0x1E69DB950];
    return *v5;
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return sub_1CA19CAF8();
}

id sub_1CA15F380()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FrameworkDynamicUIPlugin();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1CA15F3D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FrameworkDynamicUIPlugin();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1CA15F430()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA1A0C40;
  v1 = type metadata accessor for FlowAction();
  v2 = sub_1CA15F9C8(&qword_1EE03E9C0);
  v3 = sub_1CA15F9C8(&qword_1EE03E9B8);
  type metadata accessor for ActionDefinition();
  swift_allocObject();
  result = ActionDefinition.init(id:model:actionImplementationProvider:)(0x69746341776F6C46, 0xEA00000000006E6FLL, v1, v2, v3, sub_1CA15F540, 0);
  *(v0 + 32) = result;
  qword_1EE040C48 = v0;
  return result;
}

uint64_t sub_1CA15F540()
{
  type metadata accessor for FlowActionImplementation();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DF0);
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t sub_1CA15F5D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA1A0C40;
  type metadata accessor for PageDefinition();
  result = swift_allocObject();
  strcpy((result + 16), "DeferredPage");
  *(result + 29) = 0;
  *(result + 30) = -5120;
  *(result + 32) = sub_1CA15F670;
  *(result + 40) = 0;
  *(v0 + 32) = result;
  qword_1EC43C8E0 = v0;
  return result;
}

id sub_1CA15F670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v25 = a1;
  v26 = a2;
  v3 = sub_1CA19B5C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA19B4D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DF8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for DeferredPageDestination();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  (*(v8 + 16))(v10, v25, v7);
  (*(v4 + 16))(v6, v26, v3);
  sub_1CA132DDC(v10, v6, v13);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  sub_1CA15FA74(v13, v19);
  sub_1CA13556C(v19, v17);
  v20 = objc_allocWithZone(type metadata accessor for DeferredPageViewController());
  v21 = v24;

  v22 = sub_1CA13350C(v17, v21);
  sub_1CA15FAD8(v19);
  return v22;
}

uint64_t sub_1CA15F944(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1CA15F9C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA15FA0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA15FA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeferredPageDestination();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA15FAD8(uint64_t a1)
{
  v2 = type metadata accessor for DeferredPageDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id IAPArtworkBorderView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

CGPath *IAPArtworkBorderView.imageClippingPath.getter()
{
  [v0 bounds];
  Width = CGRectGetWidth(v9);
  sub_1CA160014(Width);
  v3 = v2;
  v4 = v2 * 4.0;
  [v0 bounds];
  v5 = v4 + v4;
  v6 = CGRectGetWidth(v10) - (v4 + v4);
  [v0 bounds];
  Height = CGRectGetHeight(v11);
  return sub_1CA160070(0.0, 0.0, v6, Height - v5, v3, 0.0);
}

double IAPArtworkBorderView.borderWidth(bounds:)(double a1, double a2, double a3, double a4)
{
  Width = CGRectGetWidth(*&a1);
  sub_1CA160014(Width);
  return v5 * 4.0;
}

Swift::Void __swiftcall IAPArtworkBorderView.layoutSubviews()()
{
  v1 = v0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for IAPArtworkBorderView();
  objc_msgSendSuper2(&v34, sel_layoutSubviews);
  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic20IAPArtworkBorderView_iapBorderLayer;
  v3 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic20IAPArtworkBorderView_iapBorderLayer];
  if (v3)
  {
    [v3 removeFromSuperlayer];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic20IAPArtworkBorderView_iapBorderPlusLayer;
  v6 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic20IAPArtworkBorderView_iapBorderPlusLayer];
  if (v6)
  {
    [v6 removeFromSuperlayer];
    v7 = *&v0[v5];
  }

  else
  {
    v7 = 0;
  }

  *&v0[v5] = 0;

  OUTLINED_FUNCTION_3_19();
  if (CGRectGetWidth(v41) > 0.0)
  {
    v8 = sub_1CA0F04F0();
    v9 = objc_opt_self();
    v10 = &selRef_ams_primaryBackground;
    if (!v8)
    {
      v10 = &selRef_ams_secondaryBackground;
    }

    v11 = [v9 *v10];
    v12 = [v11 CGColor];

    v13 = [objc_opt_self() ams_quaternaryText];
    v33 = [v13 CGColor];

    OUTLINED_FUNCTION_3_19();
    Width = CGRectGetWidth(v42);
    sub_1CA160014(Width);
    v16 = v15;
    v17 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
    [v17 setFillColor_];
    [v17 setFillRule_];
    v18 = [v1 layer];
    [v18 addSublayer_];

    v19 = *&v1[v2];
    *&v1[v2] = v17;
    v20 = v17;

    Mutable = CGPathCreateMutable();
    OUTLINED_FUNCTION_3_19();
    v35 = 0x3FF0000000000000;
    v36 = 0;
    v37 = 0;
    v38 = 0x3FF0000000000000;
    v39 = 0;
    v40 = 0;
    sub_1CA19C4F8();
    OUTLINED_FUNCTION_3_19();
    v26 = sub_1CA160070(v22, v23, v24, v25, v16, v16 * 4.0);
    sub_1CA19C4D8();

    [v20 setPath_];
    if (v16 > 1.0)
    {
      v27 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
      [v27 setStrokeColor_];
      [v27 setLineWidth_];
      v28 = [v1 layer];
      [v28 addSublayer_];

      v29 = *&v1[v5];
      *&v1[v5] = v27;
      v30 = v27;

      v31 = CGPathCreateMutable();
      OUTLINED_FUNCTION_3_19();
      CGRectGetMaxX(v43);
      sub_1CA19C508();
      sub_1CA19C518();
      sub_1CA19C508();
      sub_1CA19C518();
      v32 = v31;
      [v30 setPath_];
    }
  }
}

void sub_1CA160014(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

CGPath *sub_1CA160070(double a1, double a2, double a3, double a4, double a5, CGFloat a6)
{
  CGRectInset(*&a1, a6, a6);
  Mutable = CGPathCreateMutable();
  v8.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMinX(v8);
  v9.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMinY(v9);
  OUTLINED_FUNCTION_2_22();
  sub_1CA19C508();
  v10.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMinX(v10);
  v11.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMinY(v11);
  v12.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMinX(v12);
  v13.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMinY(v13);
  OUTLINED_FUNCTION_1_27();
  sub_1CA19C4E8();
  v14.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMaxX(v14);
  v15.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMinY(v15);
  OUTLINED_FUNCTION_2_22();
  sub_1CA19C518();
  v16.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMaxX(v16);
  v17.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMinY(v17);
  v18.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMaxX(v18);
  v19.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMinY(v19);
  OUTLINED_FUNCTION_1_27();
  sub_1CA19C4E8();
  v20.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMaxX(v20);
  v21.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMaxY(v21);
  OUTLINED_FUNCTION_2_22();
  sub_1CA19C518();
  v22.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMaxX(v22);
  v23.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMaxY(v23);
  v24.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMaxX(v24);
  v25.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMaxY(v25);
  OUTLINED_FUNCTION_1_27();
  sub_1CA19C4E8();
  v26.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMinX(v26);
  v27.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMaxY(v27);
  OUTLINED_FUNCTION_2_22();
  sub_1CA19C518();
  v28.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMinX(v28);
  v29.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMaxY(v29);
  v30.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMinX(v30);
  v31.origin.x = OUTLINED_FUNCTION_0_29();
  CGRectGetMaxY(v31);
  OUTLINED_FUNCTION_1_27();
  sub_1CA19C4E8();
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

id IAPArtworkBorderView.init()()
{
  *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic20IAPArtworkBorderView_iapBorderLayer] = 0;
  *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic20IAPArtworkBorderView_iapBorderPlusLayer] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IAPArtworkBorderView();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IAPArtworkBorderView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_10_1();

  return [v2 v3];
}

id IAPArtworkBorderView.init(frame:)()
{
  OUTLINED_FUNCTION_12_0();
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic20IAPArtworkBorderView_iapBorderLayer) = 0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic20IAPArtworkBorderView_iapBorderPlusLayer) = 0;
  v5 = type metadata accessor for IAPArtworkBorderView();
  v1 = OUTLINED_FUNCTION_10_1();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id IAPArtworkBorderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id IAPArtworkBorderView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic20IAPArtworkBorderView_iapBorderLayer] = 0;
  *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic20IAPArtworkBorderView_iapBorderPlusLayer] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for IAPArtworkBorderView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id IAPArtworkBorderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IAPArtworkBorderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id OUTLINED_FUNCTION_3_19()
{

  return [v0 (v1 + 3832)];
}

UIImage *sub_1CA160590(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_1CA115CA0();
  sub_1CA0F763C(a1, a2);
  v7 = a2;
  v8 = v6;
  v9 = sub_1CA1606EC(a1, v7);
  if (v9)
  {
    v8 = v9;
    if (a3)
    {
      [v9 size];
      v11 = v10;
      v13 = v12;
      [v8 scale];
      v15 = v14;
      v23.width = v11;
      v23.height = v13;
      UIGraphicsBeginImageContextWithOptions(v23, 0, v15);
      [v8 drawAtPoint_];
      v16 = UIGraphicsGetImageFromCurrentImageContext();
      if (v16)
      {
        v17 = v16;
        UIGraphicsEndImageContext();

        return v17;
      }

      else
      {
        sub_1CA10BD74();
        v20 = swift_allocError();
        OUTLINED_FUNCTION_0_30(xmmword_1CA1A53A0, v20, v21);
        UIGraphicsEndImageContext();
      }
    }
  }

  else
  {
    sub_1CA10BD74();
    v18 = swift_allocError();
    OUTLINED_FUNCTION_0_30(xmmword_1CA1A53B0, v18, v19);
  }

  return v8;
}

id sub_1CA1606EC(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1CA19AE08();
  v6 = [v4 initWithData_];

  sub_1CA0F76A8(a1, a2);
  return v6;
}

_BYTE *storeEnumTagSinglePayload for ImageAssetDecoder(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_0_30(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  a3[1].n128_u8[0] = 3;

  return swift_willThrow();
}

uint64_t sub_1CA1608F0()
{
  result = sub_1CA19BD28();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CA16095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA160A1C;

  return MEMORY[0x1EEE17028](a1, a2, a3, a4);
}

uint64_t sub_1CA160A1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1CA160B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *, uint64_t, uint64_t))
{
  v31 = a1;
  v5 = sub_1CA19AE38();
  OUTLINED_FUNCTION_1_0();
  v28 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA19BC28();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE03C310 != -1)
  {
    swift_once();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433470);
  __swift_project_value_buffer(v16, qword_1EE03C318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433460);
  result = sub_1CA19BA78();
  if (v29[0])
  {
    v26 = v5;
    v18 = a3;
    v19 = v29[1];
    ObjectType = swift_getObjectType();
    v27 = v3;
    v21 = ObjectType;
    (*(v12 + 104))(v15, *MEMORY[0x1E69AB3E0], v10);
    sub_1CA19AE28();
    v22 = v18(v15, v9, v21, v19);
    (*(v28 + 8))(v9, v26);
    (*(v12 + 8))(v15, v10);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433580);
    v29[0] = v22;
    v23 = v31;
    __swift_mutable_project_boxed_opaque_existential_1(v31, *(v31 + 24));
    v24 = v27;
    sub_1CA19B9E8();
    if (!v24)
    {
      __swift_destroy_boxed_opaque_existential_2(v29);
      v30 = MEMORY[0x1E69E6530];
      v29[0] = 4;
      __swift_mutable_project_boxed_opaque_existential_1(v23, *(v23 + 24));
      sub_1CA19B9E8();
    }

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_2(v29);
  }

  return result;
}

uint64_t sub_1CA160E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA160FC4;

  return MEMORY[0x1EEE17028](a1, a2, a3, a4);
}

uint64_t sub_1CA160F30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CA19BD28();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1CA160FE8()
{
  v0 = sub_1CA19B018();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  result = [v4 deviceIsiPad];
  if ((result & 1) == 0)
  {
    result = _UISolariumEnabled();
    if (result)
    {
      (*(v1 + 104))(v3, *MEMORY[0x1E698C478], v0);
      v6 = sub_1CA19B008();
      result = (*(v1 + 8))(v3, v0);
      if (v6)
      {
        result = [v4 deviceIsiPhone];
        if (result)
        {
          return [objc_opt_self() type];
        }
      }
    }
  }

  return result;
}

uint64_t sub_1CA1611C4(uint64_t a1, uint64_t a2)
{
  v6 = sub_1CA161FD8();
  if (!v2)
  {
    v8 = v6;
    v3 = v7;
    v9 = v6 == 0x6D6F74737563 && v7 == 0xE600000000000000;
    if (v9 || (sub_1CA19CAF8() & 1) != 0)
    {

      sub_1CA16211C();
      v3 = v13;
    }

    else
    {
      v14 = v8 == 0x486E6F6974636573 && v3 == 0xED00007265646165;
      if (!v14 && (sub_1CA19CAF8() & 1) == 0)
      {
        if (v8 == 0x616E794477656976 && v3 == 0xEB0000000063696DLL)
        {
        }

        else
        {
          v16 = sub_1CA19CAF8();

          if ((v16 & 1) == 0)
          {
            [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
            swift_willThrow();
            goto LABEL_8;
          }
        }

        v3 = 1;
        goto LABEL_8;
      }

      v3 = 0;
    }
  }

LABEL_8:
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v10 + 8))(a2);
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_4_6();
  (*(v11 + 8))(a1);
  return v3;
}

uint64_t sub_1CA161420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1CA1611C4(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for InsetModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InsetModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1CA1614B8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA1614D4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

id sub_1CA161504(void *a1)
{
  v1 = [a1 fontDescriptor];
  [v1 pointSize];
  v3 = [v1 fontDescriptorWithSize_];
  v4 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];

  return v4;
}

uint64_t sub_1CA1615AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_1CA19B5C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v31 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v31 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  sub_1CA19B5B8();
  v32 = *v2;
  v19 = qword_1EE03D068;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433128);
  __swift_project_value_buffer(v20, qword_1EE040C98);
  type metadata accessor for ActionLoader();
  OUTLINED_FUNCTION_0_31();
  sub_1CA19B588();

  v21 = *(v4 + 8);
  v21(v7, v3);
  v32 = v2[1];
  v22 = qword_1EE03D050;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433E10);
  __swift_project_value_buffer(v23, qword_1EE040C68);
  OUTLINED_FUNCTION_16_2();
  type metadata accessor for ComponentLoader();
  OUTLINED_FUNCTION_0_31();
  sub_1CA19B588();

  v21(v10, v3);
  v32 = v2[2];
  v24 = qword_1EE03D058;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433E18);
  __swift_project_value_buffer(v25, qword_1EE040C80);
  OUTLINED_FUNCTION_16_2();
  type metadata accessor for LayoutLoader();
  OUTLINED_FUNCTION_0_31();
  sub_1CA19B588();

  v21(v13, v3);
  v32 = v2[3];
  v26 = qword_1EE03D040;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433120);
  __swift_project_value_buffer(v27, qword_1EE040C50);
  OUTLINED_FUNCTION_16_2();
  type metadata accessor for PageActionLoader();
  OUTLINED_FUNCTION_0_31();
  sub_1CA19B588();

  v21(v16, v3);
  v32 = v2[4];
  v28 = qword_1EE03D078;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433E20);
  __swift_project_value_buffer(v29, qword_1EE040CB0);
  OUTLINED_FUNCTION_16_2();
  type metadata accessor for PageLoader();
  OUTLINED_FUNCTION_0_31();
  sub_1CA19B588();

  return (v21)(v18, v3);
}

uint64_t sub_1CA161A00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433128);
  __swift_allocate_value_buffer(v0, qword_1EE040C98);
  OUTLINED_FUNCTION_0_32();
  type metadata accessor for ActionLoader();
  return OUTLINED_FUNCTION_1_28();
}

uint64_t sub_1CA161A64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433E10);
  __swift_allocate_value_buffer(v0, qword_1EE040C68);
  OUTLINED_FUNCTION_0_32();
  type metadata accessor for ComponentLoader();
  return sub_1CA19B5A8();
}

uint64_t sub_1CA161AE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433E18);
  __swift_allocate_value_buffer(v0, qword_1EE040C80);
  OUTLINED_FUNCTION_0_32();
  type metadata accessor for LayoutLoader();
  return OUTLINED_FUNCTION_1_28();
}

uint64_t sub_1CA161B44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433120);
  __swift_allocate_value_buffer(v0, qword_1EE040C50);
  OUTLINED_FUNCTION_0_32();
  type metadata accessor for PageActionLoader();
  return sub_1CA19B5A8();
}

uint64_t sub_1CA161BB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433E20);
  __swift_allocate_value_buffer(v0, qword_1EE040CB0);
  OUTLINED_FUNCTION_0_32();
  type metadata accessor for PageLoader();
  return sub_1CA19B5A8();
}

uint64_t OUTLINED_FUNCTION_1_28()
{

  return sub_1CA19B5A8();
}

uint64_t sub_1CA161C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_1CA19B4D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19B4E8();
  if (sub_1CA19B498())
  {
    goto LABEL_4;
  }

  sub_1CA19B458();
  v14 = sub_1CA19ADF8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v14) == 1)
  {
    sub_1CA16238C(v9);
LABEL_4:
    sub_1CA19BFA8();
    sub_1CA12C890();
    OUTLINED_FUNCTION_8_2();
    *v15 = a1;
    v15[1] = a2;
    v15[2] = a3;
    OUTLINED_FUNCTION_5_5();
    (*(v16 + 104))();
    swift_willThrow();
    v17 = *(v11 + 8);

    return v17(v13, v10);
  }

  (*(v11 + 8))(v13, v10);
  OUTLINED_FUNCTION_5_5();
  return (*(v19 + 32))(v21, v9, v14);
}

uint64_t sub_1CA161EA4()
{
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_1_29();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_0_33();
  if (sub_1CA19B498() & 1) != 0 || (v3 = sub_1CA19B448(), (v4))
  {
    v5 = sub_1CA19BFA8();
    sub_1CA12C890();
    v6 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_3_20(v6, v7);
    OUTLINED_FUNCTION_5_5();
    (*(v8 + 104))();
    swift_willThrow();
    v9 = *(v1 + 8);

    v10 = OUTLINED_FUNCTION_37();
    v9(v10);
  }

  else
  {
    v5 = v3;
    v11 = OUTLINED_FUNCTION_37();
    v12(v11);
  }

  return v5;
}

uint64_t sub_1CA161FD8()
{
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_1_29();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_0_33();
  if ((sub_1CA19B498() & 1) != 0 || (v3 = sub_1CA19B4A8(), !v4))
  {
    v5 = sub_1CA19BFA8();
    sub_1CA12C890();
    v8 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_3_20(v8, v9);
    OUTLINED_FUNCTION_5_5();
    (*(v10 + 104))();
    swift_willThrow();
    v11 = *(v1 + 8);

    v12 = OUTLINED_FUNCTION_37();
    v11(v12);
  }

  else
  {
    v5 = v3;
    v6 = OUTLINED_FUNCTION_37();
    v7(v6);
  }

  return v5;
}

uint64_t sub_1CA16211C()
{
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_1_29();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_0_33();
  if (sub_1CA19B498() & 1) != 0 || (sub_1CA19B488(), (v3))
  {
    sub_1CA19BFA8();
    sub_1CA12C890();
    v4 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_3_20(v4, v5);
    OUTLINED_FUNCTION_5_5();
    (*(v6 + 104))();
    swift_willThrow();
    v7 = *(v1 + 8);

    v8 = OUTLINED_FUNCTION_37();
    return v7(v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_37();
    return v11(v10);
  }
}

uint64_t sub_1CA162250()
{
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_1_29();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_0_33();
  if ((sub_1CA19B498() & 1) != 0 || (v3 = sub_1CA19B468(), v3 == 2))
  {
    v4 = sub_1CA19BFA8();
    sub_1CA12C890();
    v5 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_3_20(v5, v6);
    OUTLINED_FUNCTION_5_5();
    (*(v7 + 104))();
    swift_willThrow();
    v8 = *(v1 + 8);

    v9 = OUTLINED_FUNCTION_37();
    v8(v9);
  }

  else
  {
    v4 = v3;
    v10 = OUTLINED_FUNCTION_37();
    v11(v10);
  }

  return v4 & 1;
}

uint64_t sub_1CA16238C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_33()
{

  return sub_1CA19B4E8();
}

void *OUTLINED_FUNCTION_3_20(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v4;
  a2[1] = v2;
  a2[2] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_15()
{

  return sub_1CA19B4D8();
}

uint64_t sub_1CA162474@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1CA19B8B8();
  v3 = MEMORY[0x1E69AB218];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_2Tm(a1);
  return sub_1CA19B8A8();
}

uint64_t JSService.perform(request:)()
{
  type metadata accessor for ClientRequestHandler();
  sub_1CA19B7D8();
  OUTLINED_FUNCTION_0_34();
  sub_1CA125D14();

  v2[3] = sub_1CA19B8B8();
  v2[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_2Tm(v2);
  sub_1CA19B8A8();
  sub_1CA19B4D8();
  v0 = sub_1CA19BE58();

  __swift_destroy_boxed_opaque_existential_2(v2);
  return v0;
}

uint64_t JSService.perform<A>(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ClientRequestHandler();
  sub_1CA19B7D8();
  sub_1CA19BE18();
  sub_1CA125D14();

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a2;

  sub_1CA162474(v10);
  v8 = sub_1CA19BE58();

  __swift_destroy_boxed_opaque_existential_2(v10);
  return v8;
}

uint64_t sub_1CA162694@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24[2] = a2;
  v24[3] = a3;
  v24[1] = a4;
  v5 = sub_1CA19B4D8();
  v6 = *(v5 - 8);
  v25 = v5;
  v26 = v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - v10;
  v12 = sub_1CA19B5C8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v24 - v17;
  v20 = *a1;
  v19 = a1[1];
  sub_1CA19B7D8();
  sub_1CA19BE18();
  sub_1CA0F763C(v20, v19);
  v21 = v27;
  sub_1CA19B428();
  if (!v21)
  {
    v22 = v25;
    (*(v26 + 16))(v9, v11, v25);
    (*(v13 + 16))(v16, v18, v12);
    sub_1CA19B888();
    (*(v26 + 8))(v11, v22);
  }

  return (*(v13 + 8))(v18, v12);
}

uint64_t JSService.updateService(account:)(void *a1)
{
  type metadata accessor for ClientRequestHandler();
  sub_1CA19B7D8();
  OUTLINED_FUNCTION_0_34();
  v2 = sub_1CA125F24(a1);

  return v2;
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return sub_1CA19BE18();
}

uint64_t JSServiceRequest.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433778);
  OUTLINED_FUNCTION_12_4(v5);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v27 - v7;
  v8 = sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  OUTLINED_FUNCTION_6_14();
  sub_1CA19B4E8();
  v17 = sub_1CA19B4A8();
  v19 = v18;
  v20 = *(v10 + 8);
  v20(v16, v8);
  *a3 = v17;
  a3[1] = v19;
  v29 = a3;
  v21 = v28;
  OUTLINED_FUNCTION_9_12();
  sub_1CA19B4E8();
  sub_1CA19B408();
  v20(v14, v8);
  v22 = sub_1CA19B758();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_1CA132B60(v21, &qword_1EC433778);
    v23 = 0;
  }

  else
  {
    v23 = sub_1CA19B748();
    OUTLINED_FUNCTION_7_6();
    (*(v24 + 8))(v21, v22);
  }

  v29[2] = v23;
  sub_1CA19B4E8();
  type metadata accessor for JSServiceRequest();
  sub_1CA19B458();
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v25 + 8))(v30);
  v20(a1, v8);
  return (v20)(v16, v8);
}

uint64_t type metadata accessor for JSServiceRequest()
{
  result = qword_1EE03D978;
  if (!qword_1EE03D978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JSServiceRequest.init(fragment:options:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  v6 = a5 + *(type metadata accessor for JSServiceRequest() + 24);

  return sub_1CA162D74(a4, v6);
}

uint64_t sub_1CA162D74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t JSServiceRequest.fragment.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JSServiceRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JSServiceRequest() + 24);

  return sub_1CA162E60(v3, a1);
}

uint64_t sub_1CA162E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

JSValue __swiftcall JSServiceRequest.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  OUTLINED_FUNCTION_12_4(v4);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_15;
  }

  isa = result.super.isa;
  sub_1CA1631A0();
  v10 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69E6158];
  v24 = 0xD000000000000016;
  v25 = 0x80000001CA1AD8A0;
  v11 = in.super.isa;
  result.super.isa = OUTLINED_FUNCTION_4_16();
  if (!result.super.isa)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1CA19C6A8();
  v12 = v1[1];
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = *v2;
  v26 = v10;
  v24 = v13;
  v25 = v12;
  v14 = v11;

  result.super.isa = OUTLINED_FUNCTION_4_16();
  if (!result.super.isa)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1CA19C6A8();
LABEL_6:
  v15 = type metadata accessor for JSServiceRequest();
  sub_1CA162E60(v2 + *(v15 + 24), v7);
  v16 = sub_1CA19ADF8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v16) == 1)
  {
    sub_1CA132B60(v7, &qword_1EC433170);
LABEL_10:
    v22 = v2[2];
    if (!v22)
    {
      return isa;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433588);
    v24 = v22;
    v23 = v11;

    result.super.isa = OUTLINED_FUNCTION_4_16();
    if (result.super.isa)
    {
      sub_1CA19C6A8();
      return isa;
    }

    goto LABEL_17;
  }

  v17 = sub_1CA19AD78();
  v19 = v18;
  OUTLINED_FUNCTION_7_6();
  (*(v20 + 8))(v7, v16);
  v26 = v10;
  v24 = v17;
  v25 = v19;
  v21 = v11;

  result.super.isa = OUTLINED_FUNCTION_4_16();
  if (result.super.isa)
  {

    sub_1CA19C6A8();
    goto LABEL_10;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1CA1631A0()
{
  result = qword_1EC433E28;
  if (!qword_1EC433E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC433E28);
  }

  return result;
}

id sub_1CA1631E4(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = __swift_project_boxed_opaque_existential_2(a1, a1[3]);
    v6 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_1CA19CAE8();
    (*(v6 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_2(a1);
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() valueWithObject:v9 inContext:a2];
  swift_unknownObjectRelease();

  return v10;
}

void *Data.init(deserializing:using:)(void *a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433778);
  OUTLINED_FUNCTION_12_4(v4);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  v8 = a1;
  sub_1CA19B408();
  v9 = sub_1CA19B758();
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    sub_1CA132B60(v7, &qword_1EC433778);
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
LABEL_7:
    swift_willThrow();
    sub_1CA19B5C8();
    OUTLINED_FUNCTION_4_6();
    (*(v17 + 8))(a2);
    sub_1CA19B4D8();
    OUTLINED_FUNCTION_4_6();
    (*(v18 + 8))(a1);
    return v8;
  }

  v8 = sub_1CA19B748();
  OUTLINED_FUNCTION_7_6();
  (*(v10 + 8))(v7, v9);
  if (!v8)
  {
    goto LABEL_6;
  }

  v11 = objc_opt_self();
  v12 = sub_1CA19C008();

  v20[0] = 0;
  v13 = [v11 dataWithJSONObject:v12 options:0 error:v20];

  v14 = v20[0];
  if (!v13)
  {
    v8 = v14;
    sub_1CA19AD28();

    goto LABEL_7;
  }

  v8 = sub_1CA19AE18();

  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v15 + 8))(a2);
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_4_6();
  (*(v16 + 8))(a1);
  return v8;
}

uint64_t sub_1CA163684(uint64_t a1, uint64_t a2)
{
  v5 = a1 == OUTLINED_FUNCTION_6_14() && v4 == 0xE800000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_9_12() && a2 == 0xE700000000000000;
    if (v7 || (OUTLINED_FUNCTION_0_28() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7107189 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_0_28();

      if (v9)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1CA163758(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_6_14();
  }

  if (a1 == 1)
  {
    return 0x736E6F6974706FLL;
  }

  return 7107189;
}

void *sub_1CA1637AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = Data.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1CA1637E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA163684(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA163814(uint64_t a1)
{
  v2 = sub_1CA164378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA163850(uint64_t a1)
{
  v2 = sub_1CA164378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JSServiceRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v37[4] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433E30);
  OUTLINED_FUNCTION_1_0();
  v35 = v5;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for JSServiceRequest();
  OUTLINED_FUNCTION_7_6();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_1CA164378();
  sub_1CA19CC28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2(a1);
  }

  v32 = v9;
  v14 = v34;
  LOBYTE(v37[0]) = 0;
  v15 = v8;
  v16 = sub_1CA19CA58();
  v33 = a1;
  *v12 = v16;
  v12[1] = v17;
  LOBYTE(v36) = 1;
  sub_1CA1643CC();
  sub_1CA19CA78();
  v19 = v37[0];
  v18 = v37[1];
  v20 = objc_opt_self();
  v31 = v18;
  v21 = sub_1CA19AE08();
  v37[0] = 0;
  v22 = [v20 JSONObjectWithData:v21 options:0 error:v37];

  if (v22)
  {
    v23 = v37[0];
    sub_1CA19C768();
    sub_1CA0F76A8(v19, v31);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433588);
    v24 = swift_dynamicCast();
    v25 = v36;
    if (!v24)
    {
      v25 = 0;
    }

    v12[2] = v25;
    LOBYTE(v37[0]) = 2;
    sub_1CA19CA58();
    v26 = v14;
    v27 = v4;
    v28 = v35;
    sub_1CA19ADD8();

    (*(v28 + 8))(v15, v27);
    sub_1CA164420(v12, v26);
    __swift_destroy_boxed_opaque_existential_2(v33);
    return sub_1CA153870(v12);
  }

  else
  {
    v29 = v37[0];
    sub_1CA19AD28();

    swift_willThrow();
    sub_1CA0F76A8(v19, v31);
    (*(v35 + 8))(v15, v4);
    __swift_destroy_boxed_opaque_existential_2(v33);
  }
}

uint64_t JSServiceRequest.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v39[2] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  OUTLINED_FUNCTION_12_4(v6);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v36 = v11;
  v37 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433E40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v13);
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_1CA164378();
  sub_1CA19CC38();
  if (*(v4 + 8))
  {
    LOBYTE(v39[0]) = 0;
    OUTLINED_FUNCTION_10_12();
    v3 = v2;
    if (v2)
    {
      goto LABEL_12;
    }
  }

  if (*(v4 + 16))
  {
    v14 = objc_opt_self();
    v15 = sub_1CA19C008();
    v39[0] = 0;
    v16 = [v14 dataWithJSONObject:v15 options:0 error:v39];

    v17 = v39[0];
    if (!v16)
    {
      v24 = v17;
      sub_1CA19AD28();

      swift_willThrow();
      goto LABEL_12;
    }

    v18 = sub_1CA19AE18();
    v20 = v19;

    v39[0] = v18;
    v39[1] = v20;
    v38 = 1;
    sub_1CA164484();
    sub_1CA19CAA8();
    if (v3)
    {
      v21 = OUTLINED_FUNCTION_5_15();
      v22(v21);
      return sub_1CA0F76A8(v18, v20);
    }

    sub_1CA0F76A8(v18, v20);
  }

  v25 = type metadata accessor for JSServiceRequest();
  sub_1CA162E60(v4 + *(v25 + 24), v9);
  v26 = v37;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v37);
  v28 = v36;
  if (EnumTagSinglePayload == 1)
  {
    v29 = OUTLINED_FUNCTION_5_15();
    v30(v29);
    return sub_1CA132B60(v9, &qword_1EC433170);
  }

  v31 = v35;
  (*(v36 + 32))();
  sub_1CA19AD78();
  LOBYTE(v39[0]) = 2;
  OUTLINED_FUNCTION_10_12();

  (*(v28 + 8))(v31, v26);
LABEL_12:
  v32 = OUTLINED_FUNCTION_5_15();
  return v33(v32);
}

uint64_t JSServiceRequest.description.getter()
{
  v1 = v0;
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  OUTLINED_FUNCTION_7_6();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - v8;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1CA19C8F8();
  v10 = type metadata accessor for JSServiceRequest();
  v24[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433E48);
  v11 = sub_1CA19C168();
  MEMORY[0x1CCA99820](v11);

  MEMORY[0x1CCA99820](0xD000000000000013, 0x80000001CA1AD8C0);
  v12 = v0[1];
  if (v12)
  {
    v24[0] = *v0;
    v24[1] = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433288);
    v13 = sub_1CA19C168();
    v15 = v14;
  }

  else
  {
    v13 = 0x656E696665646E75;
    v15 = 0xE900000000000064;
  }

  MEMORY[0x1CCA99820](v13, v15);

  MEMORY[0x1CCA99820](0x706F202020200A29, 0xEF203A736E6F6974);
  if (v0[2])
  {
    v24[0] = v0[2];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433E50);
    v16 = sub_1CA19C168();
    v18 = v17;
  }

  else
  {
    v16 = 0x656E696665646E75;
    v18 = 0xE900000000000064;
  }

  MEMORY[0x1CCA99820](v16, v18);

  MEMORY[0x1CCA99820](0x7275202020200A29, 0xEB00000000203A6CLL);
  v19 = *(v10 + 24);
  sub_1CA162E60(v0 + v19, v9);
  v20 = sub_1CA19ADF8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v20);
  sub_1CA132B60(v9, &qword_1EC433170);
  if (EnumTagSinglePayload != 1)
  {
    sub_1CA162E60(v1 + v19, v7);
    v3 = sub_1CA19C168();
    v2 = v22;
  }

  MEMORY[0x1CCA99820](v3, v2);

  MEMORY[0x1CCA99820](8194601, 0xE300000000000000);
  return v25;
}

unint64_t sub_1CA164378()
{
  result = qword_1EE03D9A0;
  if (!qword_1EE03D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03D9A0);
  }

  return result;
}

unint64_t sub_1CA1643CC()
{
  result = qword_1EC433E38;
  if (!qword_1EC433E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433E38);
  }

  return result;
}

uint64_t sub_1CA164420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSServiceRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CA164484()
{
  result = qword_1EE03EA70;
  if (!qword_1EE03EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03EA70);
  }

  return result;
}

uint64_t sub_1CA164540(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for JSServiceRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CA164588()
{
  result = qword_1EC433E68;
  if (!qword_1EC433E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433E68);
  }

  return result;
}

void sub_1CA164604()
{
  sub_1CA1646A0();
  if (v0 <= 0x3F)
  {
    sub_1CA1646F0();
    if (v1 <= 0x3F)
    {
      sub_1CA164754();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CA1646A0()
{
  if (!qword_1EE03B488)
  {
    v0 = sub_1CA19C6F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE03B488);
    }
  }
}

void sub_1CA1646F0()
{
  if (!qword_1EE03B490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC433588);
    v0 = sub_1CA19C6F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE03B490);
    }
  }
}

void sub_1CA164754()
{
  if (!qword_1EE03EA78)
  {
    sub_1CA19ADF8();
    v0 = sub_1CA19C6F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE03EA78);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for JSServiceRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA16488C()
{
  result = qword_1EC433E70;
  if (!qword_1EC433E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433E70);
  }

  return result;
}

unint64_t sub_1CA1648E4()
{
  result = qword_1EE03D990;
  if (!qword_1EE03D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03D990);
  }

  return result;
}

unint64_t sub_1CA16493C()
{
  result = qword_1EE03D998;
  if (!qword_1EE03D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03D998);
  }

  return result;
}

id OUTLINED_FUNCTION_4_16()
{

  return sub_1CA1631E4((v1 - 112), v0);
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return sub_1CA19CA88();
}

uint64_t sub_1CA164A04()
{
  [v0 contentSize];

  return sub_1CA160FE8();
}

uint64_t LayoutCollectionSpacingModel.sectionSpacingProvider(for:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_2Tm, v3, a1);
}

uint64_t LayoutDefinition.init(id:layout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t LayoutDefinition.layout(object:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v7 = sub_1CA19B5C8();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-2] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25[-2] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 32);
  v18 = *(v17 + 16);
  v24 = *(v3 + 16);
  v18(v15, a1);
  (*(v9 + 16))(v12, a2, v7);
  v26 = v24;
  v27 = v16;
  __swift_allocate_boxed_opaque_existential_2Tm(v25);
  sub_1CA19B888();
  if (v4)
  {
    return __swift_deallocate_boxed_opaque_existential_2(v25);
  }

  v24 = v26;
  v20 = v26;
  v21 = __swift_project_boxed_opaque_existential_2(v25, v26);
  v22 = v28;
  *(v28 + 24) = v24;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v22);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_2Tm, v21, v20);
  return __swift_destroy_boxed_opaque_existential_2(v25);
}

uint64_t sub_1CA164D18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1CA164D58(uint64_t result, int a2, int a3)
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

uint64_t LayoutFactory.layout(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v39 = a2;
  v27 = a3;
  v3 = sub_1CA19B5C8();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA19B4D8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v9 = sub_1CA19AFF8();
  v10 = __swift_project_value_buffer(v9, qword_1EE040B90);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v12 = *(*(sub_1CA19AF88() - 8) + 72);
  v29 = v11;
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v13 = type metadata accessor for LayoutFactory();
  v37 = v13;
  v35 = v34;

  sub_1CA19AF38();
  sub_1CA0F0440(&v35);
  v37 = MEMORY[0x1E69E6158];
  v35 = 0xD000000000000011;
  v36 = 0x80000001CA1AD8E0;
  sub_1CA19AF38();
  sub_1CA0F0440(&v35);
  v28 = v10;
  sub_1CA19AFC8();

  sub_1CA19B4E8();
  (*(v30 + 16))(v5, v39, v31);
  v14 = v32;
  result = Location.init(deserializing:using:)(v8, v5);
  if (!v14)
  {
    v19 = v16;
    v20 = v18;
    v31 = v17;
    v32 = result;
    if (qword_1EE03D058 != -1)
    {
      swift_once();
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433E18);
    __swift_project_value_buffer(v21, qword_1EE040C80);
    type metadata accessor for LayoutLoader();
    sub_1CA19B5D8();
    v30 = v35;
    if (v35)
    {
      v26 = 2 * v12;
      *(swift_allocObject() + 16) = xmmword_1CA1A0930;
      v37 = v13;
      v35 = v34;

      sub_1CA19AF38();
      sub_1CA0F0440(&v35);
      v37 = MEMORY[0x1E69E6158];
      v35 = 0xD000000000000014;
      v36 = 0x80000001CA1AD900;
      sub_1CA19AF38();
      sub_1CA0F0440(&v35);
      v37 = &type metadata for Location;
      v22 = swift_allocObject();
      v35 = v22;
      v23 = v32;
      v22[2] = v32;
      v22[3] = v19;
      v24 = v19;
      v25 = v31;
      v22[4] = v31;
      v22[5] = v20;

      sub_1CA19AF38();
      sub_1CA0F0440(&v35);
      sub_1CA19AFC8();

      LayoutLoader.definition(withLocation:)(v23, v24, v25, v20, v38);

      LayoutDefinition.layout(object:using:)(v33, v39, v27);
      sub_1CA165360(v38);
    }

    else
    {

      sub_1CA16530C();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1CA16530C()
{
  result = qword_1EC433E78;
  if (!qword_1EC433E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433E78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LayoutFactory.LayoutDecodingError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA165464()
{
  result = qword_1EC433E80;
  if (!qword_1EC433E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433E80);
  }

  return result;
}

uint64_t LayoutLoader.definition(withLocation:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = sub_1CA16567C(a1, a2);
  v9 = (v8 + 56);
  v10 = *(v8 + 16) + 1;
  while (1)
  {
    if (!--v10)
    {

      sub_1CA16599C();
      swift_allocError();
      return swift_willThrow();
    }

    v11 = *(v9 - 3);
    v12 = *(v9 - 1);
    v15 = *v9;
    v16 = v12;
    if (v11 == a3 && v12 == a4)
    {
      break;
    }

    v9 = (v9 + 40);
    if (sub_1CA19CAF8())
    {
      goto LABEL_11;
    }
  }

  v11 = a3;
LABEL_11:

  *a5 = v11;
  *(a5 + 8) = v16;
  *(a5 + 24) = v15;
  return result;
}

uint64_t LayoutLoaderError.hashValue.getter()
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](0);
  return sub_1CA19CC18();
}

uint64_t sub_1CA165640()
{
  sub_1CA19CBD8();
  LayoutLoaderError.hash(into:)();
  return sub_1CA19CC18();
}

uint64_t sub_1CA16567C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  swift_beginAccess();
  v7 = v2[3];
  if (*(v7 + 16) && (v8 = sub_1CA184158(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v11 = sub_1CA174720(a1, a2);
    if (dynamic_cast_existential_1_conditional(v11))
    {
      v10 = (*(v16 + 8))();
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v18 = v3[3];
      sub_1CA17AF70();
      v3[3] = v18;
      swift_endAccess();
    }

    else
    {
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v12 = sub_1CA19AFF8();
      __swift_project_value_buffer(v12, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0930;
      v20 = v6;
      v19[0] = v3;

      v13 = AMSLogKey();
      if (v13)
      {
        v14 = v13;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(v19);
      sub_1CA19AF18();
      v20 = MEMORY[0x1E69E6158];
      v19[0] = a1;
      v19[1] = a2;

      sub_1CA19AF38();
      sub_1CA0F0440(v19);
      sub_1CA19AFB8();

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v10;
}

unint64_t sub_1CA16599C()
{
  result = qword_1EC433E88;
  if (!qword_1EC433E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433E88);
  }

  return result;
}

uint64_t LayoutLoader.deinit()
{

  return v0;
}

uint64_t LayoutLoader.__deallocating_deinit()
{
  LayoutLoader.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1CA165A50()
{
  result = qword_1EC433E90;
  if (!qword_1EC433E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433E90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LayoutLoaderError(_BYTE *result, int a2, int a3)
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

double sub_1CA165BCC@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_1CA19B018();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!_UISolariumEnabled() || ((*(v3 + 104))(v5, *MEMORY[0x1E698C478], v2), v6 = sub_1CA19B008(), (*(v3 + 8))(v5, v2), v7 = 0.0, (v6 & 1) == 0))
  {
    v7 = 5.0;
  }

  a1[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
  v8 = swift_allocObject();
  *a1 = v8;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = 0x4024000000000000;
  *(v8 + 40) = v7;
  *(v8 + 48) = 0;
  *(v8 + 56) = v7;
  result = 0.0;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  return result;
}

double LayoutSpacingModel.footerCollectionSpacingModel.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_1CA19B018();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!_UISolariumEnabled() || ((*(v3 + 104))(v5, *MEMORY[0x1E698C478], v2), v6 = sub_1CA19B008(), (*(v3 + 8))(v5, v2), v7 = 0.0, (v6 & 1) == 0))
  {
    v7 = 5.0;
  }

  a1[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
  v8 = swift_allocObject();
  *a1 = v8;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = 0x4024000000000000;
  *(v8 + 40) = v7;
  *(v8 + 48) = 0;
  *(v8 + 56) = v7;
  result = 0.0;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  return result;
}

id sub_1CA165E94(char a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic21LoadingViewController_activityIndicator;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) init];
  [v4 setActivityIndicatorViewStyle_];
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic21LoadingViewController_loadingView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E698CCA8]) init];
  v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic21LoadingViewController_style] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for LoadingViewController();
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1CA165F50()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic21LoadingViewController_activityIndicator;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC638]) init];
  [v2 setActivityIndicatorViewStyle_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic21LoadingViewController_loadingView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E698CCA8]) init];
  sub_1CA19C9F8();
  __break(1u);
}

id sub_1CA16606C()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v5 = [v2 navigationItem];

      return v5;
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for LoadingViewController();
  v3 = objc_msgSendSuper2(&v6, sel_navigationItem);

  return v3;
}

void sub_1CA166130()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LoadingViewController();
  objc_msgSendSuper2(&v4, sel_loadView);
  v1 = [v0 view];
  v2 = [objc_opt_self() ams_clear];
  [v1 setBackgroundColor_];

  v3 = [v0 view];
  [v3 setUserInteractionEnabled_];
}

void sub_1CA166244()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for LoadingViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_1CA1663CC();
}

void sub_1CA1662C4()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for LoadingViewController();
  objc_msgSendSuper2(&v11, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic21LoadingViewController_loadingView];
  v2 = [v0 view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame_];
}

void sub_1CA1663CC()
{
  v1 = [v0 navigationItem];
  [v1 ams_configureWithTransparentBackground];

  sub_1CA166614();

  sub_1CA166428();
}

void sub_1CA166428()
{
  v1 = v0;
  v2 = [v0 view];
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic21LoadingViewController_activityIndicator;
  [v2 addSubview_];

  v4 = *&v1[v3];
  sub_1CA192B20(0, 0, 1);

  [*&v1[v3] startAnimating];
  [*&v1[v3] setAlpha_];
  v5 = dbl_1CA1A5C28[v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic21LoadingViewController_style]];
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1CA166B2C;
  v10[5] = v7;
  OUTLINED_FUNCTION_8_7();
  OUTLINED_FUNCTION_0_36();
  v10[2] = v8;
  v10[3] = &block_descriptor_21_0;
  v9 = _Block_copy(v10);

  [v6 animateWithDuration:0 delay:v9 options:0 animations:0.5 completion:v5];
  _Block_release(v9);
}

void sub_1CA166598()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic21LoadingViewController_activityIndicator);

    [v2 setAlpha_];
  }
}

void sub_1CA166614()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 view];
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic21LoadingViewController_loadingView;
  [v2 addSubview_];

  v4 = v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic21LoadingViewController_style];
  if (v4 == 2)
  {
    v6 = &selRef_ams_dim;
    goto LABEL_9;
  }

  if (v4 == 1)
  {
    v6 = &selRef_ams_defaultPlatformBackgroundColor;
LABEL_9:
    v7 = *&v0[v3];
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 *v6];
    [v9 setBackgroundColor_];

    [*&v0[v3] setAlpha_];
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = ObjectType;
    v16[4] = sub_1CA166B0C;
    v16[5] = v13;
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_0_36();
    v16[2] = v14;
    v16[3] = &block_descriptor_14;
    v15 = _Block_copy(v16);

    [v11 animateWithDuration:0 delay:v15 options:0 animations:0.5 completion:0.0];
    _Block_release(v15);
    return;
  }

  if (!v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic21LoadingViewController_style])
  {
    v5 = *&v0[v3];

    [v5 setAlpha_];
  }
}

void sub_1CA166818()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic21LoadingViewController_loadingView);
    v3 = 1.0;
    if (!v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic21LoadingViewController_style])
    {
      v3 = 0.0;
    }

    [v2 setAlpha_];
  }
}

id sub_1CA166934()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoadingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for LoadingViewController.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA166AB8()
{
  result = qword_1EC433EB0;
  if (!qword_1EC433EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433EB0);
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA166B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433EB8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  sub_1CA166E30(a3, v19 - v9);
  v11 = sub_1CA19BDA8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1CA166EA0(v10);
    v12 = 0;
  }

  else
  {
    if (qword_1EE03C120 != -1)
    {
      swift_once();
    }

    sub_1CA19BD98();
    (*(*(v11 - 8) + 8))(v10, v11);
    sub_1CA19BD88();
    (*(v5 + 8))(v7, v4);
    v12 = v19[1];
  }

  v13 = sub_1CA19C0E8();
  if (qword_1EE03C148 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE03C150;
  if (v12)
  {
    v15 = sub_1CA19C0E8();
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_opt_self() localizedStringForKey:v13 bundle:v14 table:0 languageCode:v15];

  v17 = sub_1CA19C118();
  return v17;
}

uint64_t sub_1CA166E30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA166EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA166F08()
{
  result = sub_1CA19C0E8();
  qword_1EE03C128 = result;
  return result;
}

id sub_1CA166F44()
{
  sub_1CA11575C();
  result = sub_1CA166F98();
  if (result)
  {
    qword_1EE03C150 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CA166F98()
{
  v0 = sub_1CA19C0E8();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

uint64_t Location.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v24 = a2;
  v3 = 0x6449656C646E7562;
  v4 = sub_1CA19B4D8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  sub_1CA19B4E8();
  v23 = sub_1CA19B4A8();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v10, v4);
  if (v12)
  {
    sub_1CA19B4E8();
    sub_1CA19B4A8();
    v15 = v14;
    v13(v8, v4);
    v16 = a1;
    if (v15)
    {
      sub_1CA19B5C8();
      OUTLINED_FUNCTION_4_6();
      (*(v17 + 8))(v24);
      v13(a1, v4);
      return v23;
    }

    v19 = 0xE200000000000000;
    v3 = 25705;
  }

  else
  {
    v16 = a1;
    v19 = 0xE800000000000000;
  }

  v20 = sub_1CA19BFA8();
  sub_1CA12C890();
  swift_allocError();
  *v21 = v3;
  v21[1] = v19;
  v21[2] = &type metadata for Location;
  (*(*(v20 - 8) + 104))(v21, *MEMORY[0x1E69AB690], v20);
  swift_willThrow();
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v22 + 8))(v24);
  return (v13)(v16, v4);
}

uint64_t sub_1CA16730C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Location.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
  }

  return result;
}

uint64_t sub_1CA16733C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1CA16737C(uint64_t result, int a2, int a3)
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

uint64_t sub_1CA1673CC()
{
  v0 = sub_1CA19AFF8();
  __swift_allocate_value_buffer(v0, qword_1EE040B90);
  __swift_project_value_buffer(v0, qword_1EE040B90);
  return sub_1CA19AFE8();
}

uint64_t sub_1CA167448(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1CA167488(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA1674F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1CA167530(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *sub_1CA16757C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1CA167654()
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

uint64_t sub_1CA1676A8(char a1)
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

uint64_t sub_1CA1676DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA167654();
  *a1 = result;
  return result;
}

uint64_t sub_1CA16770C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA1676A8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1CA16773C()
{
  result = qword_1EC433EC0;
  if (!qword_1EC433EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC433EC0);
  }

  return result;
}

uint64_t sub_1CA167790(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CA16B814(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = &v3[a1];
    v9 = v8[4];
    memmove(v8 + 4, v8 + 5, 8 * v7);
    v3[2] = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t sub_1CA167810()
{
  result = sub_1CA19C0E8();
  qword_1EE040BE0 = result;
  return result;
}

uint64_t sub_1CA16784C()
{
  v0 = sub_1CA19ABF8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19ABC8();
  v4 = sub_1CA19ABB8();
  result = (*(v1 + 8))(v3, v0);
  qword_1EE03CEB0 = v4;
  return result;
}

char *sub_1CA16791C(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_accumulator;
  *&v3[v5] = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  *&v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_attributeStack] = MEMORY[0x1E69E7CC0];
  v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_didParseEverything] = 1;
  v6 = &v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_orderedListTracker];
  *v6 = 0;
  v6[1] = 0;
  v6[2] = 0;
  v7 = &v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_symbolTracker];
  sub_1CA0F2110(0, &qword_1EE03BD60);
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_parser] = sub_1CA16A2F8();
  memcpy(&v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration], a3, 0x78uLL);
  sub_1CA144918(a3, v13);
  v12.receiver = v3;
  v12.super_class = type metadata accessor for MarkdownStringGenerator();
  v8 = objc_msgSendSuper2(&v12, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_parser];
  v10 = v8;
  [v9 setDelegate_];
  sub_1CA144974(a3);

  return v10;
}

id sub_1CA167AC8()
{
  v1 = v0;
  [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_parser) parse];
  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_accumulator;
  v3 = [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_accumulator) mutableString];
  if (qword_1EE03CEA0 != -1)
  {
    OUTLINED_FUNCTION_8_12();
  }

  sub_1CA1705E4(qword_1EE03CEB0);

  v4 = *(v1 + v2);

  return v4;
}

uint64_t sub_1CA167B70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_attributeStack;
  OUTLINED_FUNCTION_4_5();
  v4 = sub_1CA182020(*(v1 + v3));
  if (v4)
  {
    v5 = v4;
    v33 = v3;
    v34 = v1;
    v6 = a1 + 64;
    v7 = 1 << *(a1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a1 + 64);
    v10 = (v7 + 63) >> 6;
    v35 = a1;

    v11 = 0;
    while (v9)
    {
      v12 = v11;
LABEL_11:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v12 << 6);
      v15 = *(*(v35 + 48) + 8 * v14);
      sub_1CA0F1200(*(v35 + 56) + 32 * v14, v36);
      *&v37 = v15;
      sub_1CA0F11E8(v36, (&v37 + 8));
      v16 = v15;
LABEL_12:
      v40[0] = v37;
      v40[1] = v38;
      v41 = v39;
      v17 = v37;
      if (!v37)
      {

        OUTLINED_FUNCTION_14_5();
        sub_1CA16ACE4(sub_1CA16B4D4);
        v28 = *(*(v34 + v33) + 16);
        sub_1CA16ADB4(v28, sub_1CA16B4D4);
        v29 = *(v34 + v33);
        *(v29 + 16) = v28 + 1;
        *(v29 + 8 * v28 + 32) = v5;
        *(v34 + v33) = v29;
        return swift_endAccess();
      }

      sub_1CA0F11E8((v40 + 8), &v37);
      swift_isUniquelyReferenced_nonNull_native();
      *&v36[0] = v5;
      v18 = sub_1CA18431C(v17);
      if (__OFADD__(v5[2], (v19 & 1) == 0))
      {
        goto LABEL_26;
      }

      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433FD0);
      if (sub_1CA19C9A8())
      {
        v22 = sub_1CA18431C(v17);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_28;
        }

        v20 = v22;
      }

      v5 = *&v36[0];
      if (v21)
      {
        v24 = (*(*&v36[0] + 56) + 32 * v20);
        __swift_destroy_boxed_opaque_existential_2(v24);
        sub_1CA0F11E8(&v37, v24);
      }

      else
      {
        *(*&v36[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
        *(v5[6] + 8 * v20) = v17;
        sub_1CA0F11E8(&v37, (v5[7] + 32 * v20));
        v25 = v5[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_27;
        }

        v5[2] = v27;
      }
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
        v9 = 0;
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        goto LABEL_12;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    type metadata accessor for Key(0);
    result = sub_1CA19CB58();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_5();

    sub_1CA16ACE4(sub_1CA16B4D4);
    v30 = *(*(v1 + v3) + 16);
    sub_1CA16ADB4(v30, sub_1CA16B4D4);
    v31 = *(v1 + v3);
    *(v31 + 16) = v30 + 1;
    *(v31 + 8 * v30 + 32) = a1;
    *(v1 + v3) = v31;
    return swift_endAccess();
  }

  return result;
}

void sub_1CA167EBC()
{
  if (*(*v0 + 16))
  {
    if (!sub_1CA16B98C())
    {
      v1 = *(*v0 + 16) - 1;

      sub_1CA167790(v1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1CA167F0C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_attributeStack;
  OUTLINED_FUNCTION_4_5();
  v6 = *(v2 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v6 + 8 * v7 + 24);
    v9 = qword_1EE03C1F8;

    if (v9 != -1)
    {
      OUTLINED_FUNCTION_10_13();
    }

    sub_1CA184EFC(v15, qword_1EE040BE0);
    if (v15[3])
    {

      sub_1CA0F0440(v15);
      v10 = (v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_symbolTracker);
      *v10 = a1;
      v10[1] = a2;
    }

    else
    {
      sub_1CA0F0440(v15);
      v11 = *(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_accumulator);
      v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v13 = v11;

      v14 = sub_1CA16ABC4(a1, a2, v8);
      [v13 appendAttributedString_];
    }
  }
}

id sub_1CA16804C()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_attributeStack;
  OUTLINED_FUNCTION_4_5();
  v2 = sub_1CA182020(*(v0 + v1));
  if (!v2)
  {
    v6 = 0u;
    v7 = 0u;
    goto LABEL_6;
  }

  sub_1CA184EFC(&v6, *MEMORY[0x1E69DB648], v2);

  if (!*(&v7 + 1))
  {
LABEL_6:
    sub_1CA0F0440(&v6);
    goto LABEL_7;
  }

  sub_1CA0F2110(0, &qword_1EE03C180);
  if (swift_dynamicCast())
  {
    return v5;
  }

LABEL_7:
  v4 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 24);

  return v4;
}

id sub_1CA16813C()
{
  v0 = sub_1CA16804C();
  v1 = [v0 fontDescriptor];
  type metadata accessor for AttributeName(0);
  OUTLINED_FUNCTION_1_30();
  sub_1CA16BA04(v2, v3);
  v4 = sub_1CA19C008();
  v5 = [v1 fontDescriptorByAddingAttributes_];

  [v0 pointSize];
  v7 = [objc_opt_self() fontWithDescriptor:v5 size:v6];

  return v7;
}

id sub_1CA168250(int a1)
{
  v3 = sub_1CA16804C();
  v4 = [v3 fontDescriptor];
  v5 = [v4 symbolicTraits] | a1;
  v6 = [v4 fontDescriptorWithSymbolicTraits_];
  if (v6)
  {
    v7 = v6;
    [v3 pointSize];
    v9 = [objc_opt_self() fontWithDescriptor:v7 size:v8];

    return v9;
  }

  else
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v11 = sub_1CA19AFF8();
    __swift_project_value_buffer(v11, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A19C0;
    v17 = type metadata accessor for MarkdownStringGenerator();
    v16[0] = v1;
    v12 = v1;
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v16);
    sub_1CA19AF18();
    v17 = sub_1CA0F2110(0, &qword_1EE03C180);
    v16[0] = v3;
    v15 = v3;
    sub_1CA19AF38();
    sub_1CA0F0440(v16);
    sub_1CA19AF18();
    v17 = MEMORY[0x1E69E7668];
    LODWORD(v16[0]) = v5;
    sub_1CA19AF38();
    sub_1CA0F0440(v16);
    sub_1CA19AFC8();

    return v15;
  }
}

id sub_1CA168530()
{
  v0 = sub_1CA168250(2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA1A0B80;
  v2 = *MEMORY[0x1E69DDCF0];
  *(inited + 32) = *MEMORY[0x1E69DDCF0];
  *(inited + 40) = 6;
  v3 = *MEMORY[0x1E69DDCE8];
  *(inited + 48) = *MEMORY[0x1E69DDCE8];
  *(inited + 56) = 0;
  type metadata accessor for FeatureKey(0);
  sub_1CA16BA04(&qword_1EC433030, type metadata accessor for FeatureKey);
  v4 = v2;
  v5 = v3;
  v6 = sub_1CA19C038();
  v7 = [v0 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F80);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1CA1A0C20;
  v9 = *MEMORY[0x1E69DB8B0];
  *(v8 + 32) = *MEMORY[0x1E69DB8B0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433FC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CA1A0C20;
  *(v10 + 32) = v6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433FC8);
  *(v8 + 40) = v10;
  type metadata accessor for AttributeName(0);
  OUTLINED_FUNCTION_1_30();
  sub_1CA16BA04(v11, v12);
  v13 = v9;
  OUTLINED_FUNCTION_9_13();
  sub_1CA19C038();
  v14 = sub_1CA19C008();

  v15 = [v7 fontDescriptorByAddingAttributes_];

  [v0 pointSize];
  v17 = [objc_opt_self() fontWithDescriptor:v15 size:v16];

  return v17;
}

id sub_1CA1687B8(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    v4 = sub_1CA181EF8(@"font-family", a1);
    if (v5)
    {
      v6 = v4;
      v7 = v5;
    }

    else
    {
      v9 = [a2 familyName];
      v6 = sub_1CA19C118();
      v7 = v10;
    }

    v11 = sub_1CA181EF8(@"font-name", a1);
    if (v12)
    {
      v13 = v12;
      v56 = v11;
    }

    else
    {
      v14 = [a2 fontName];
      v56 = sub_1CA19C118();
      v13 = v15;
    }

    [a2 pointSize];
    v17 = v16;
    v18 = MEMORY[0x1E69DB978];
    v19 = sub_1CA181EF8(@"font-size", a1);
    if (v20)
    {
      v21 = COERCE_DOUBLE(sub_1CA168D28(v19, v20));
      if ((v22 & 1) == 0)
      {
        v17 = v21;
      }
    }

    v23 = *v18;
    v24 = [a2 fontDescriptor];
    v25 = *MEMORY[0x1E69DB8F0];
    v26 = [v24 objectForKey_];

    if (v26)
    {
      sub_1CA19C768();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    v60 = v58;
    v61 = v59;
    if (*(&v59 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433FA8);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_23:
        v27 = sub_1CA181EF8(@"font-weight", a1);
        if (v28)
        {
          v29 = v27;
          v30 = v28;
          v31 = v6;

          v32 = sub_1CA15F0E4(v29, v30);
          if (v33)
          {
            v34 = sub_1CA168D28(v29, v30);
            if ((v35 & 1) == 0)
            {
              v23 = v34;
            }
          }

          else
          {
            v36 = v32;

            v23 = v36;
            v6 = v31;
          }
        }

        sub_1CA181EF8(@"font-weight", a1);
        if (v37)
        {

          sub_1CA0F2110(0, &qword_1EC433F88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F80);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1CA1A0B80;
          v39 = MEMORY[0x1E69E6158];
          v40 = *MEMORY[0x1E69DB8A8];
          *(inited + 32) = *MEMORY[0x1E69DB8A8];
          *(inited + 40) = v6;
          *(inited + 48) = v7;
          *(inited + 64) = v39;
          *(inited + 72) = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433F90);
          v41 = swift_initStackObject();
          *(v41 + 16) = xmmword_1CA1A0C20;
          v42 = *MEMORY[0x1E69DB990];
          *(v41 + 32) = *MEMORY[0x1E69DB990];
          *(v41 + 40) = v23;
          type metadata accessor for TraitKey(0);
          sub_1CA16BA04(&qword_1EC433040, type metadata accessor for TraitKey);
          v43 = v40;
          v44 = v25;
          v45 = v42;
          v46 = sub_1CA19C038();
          *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433FA0);
          *(inited + 80) = v46;
          type metadata accessor for AttributeName(0);
          OUTLINED_FUNCTION_1_30();
          sub_1CA16BA04(v47, v48);
        }

        else
        {

          sub_1CA0F2110(0, &qword_1EC433F88);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F80);
          v49 = swift_initStackObject();
          *(v49 + 16) = xmmword_1CA1A0C20;
          v50 = *MEMORY[0x1E69DB8B8];
          *(v49 + 64) = MEMORY[0x1E69E6158];
          *(v49 + 32) = v50;
          *(v49 + 40) = v56;
          *(v49 + 48) = v13;
          type metadata accessor for AttributeName(0);
          OUTLINED_FUNCTION_1_30();
          sub_1CA16BA04(v51, v52);
          v53 = v50;
          OUTLINED_FUNCTION_3_21();
        }

        sub_1CA19C038();
        v54 = sub_1CA168DB8();
        v55 = [objc_opt_self() fontWithDescriptor:v54 size:v17];

        return v55;
      }

      sub_1CA184EFC(&v60, *MEMORY[0x1E69DB990]);

      if (*(&v61 + 1))
      {
        if (swift_dynamicCast())
        {
          v23 = v58;
        }

        goto LABEL_23;
      }
    }

    sub_1CA0F0440(&v60);
    goto LABEL_23;
  }

  return a2;
}

uint64_t sub_1CA168D28(uint64_t a1, uint64_t a2)
{
  sub_1CA16B894(a1, a2);

  return 0;
}

id sub_1CA168DB8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for AttributeName(0);
  sub_1CA16BA04(&qword_1EC433050, type metadata accessor for AttributeName);
  v1 = sub_1CA19C008();

  v2 = [v0 initWithFontAttributes_];

  return v2;
}

id sub_1CA168E88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarkdownStringGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA168FFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA1A0B80;
  v2 = *MEMORY[0x1E69DB688];
  *(inited + 32) = *MEMORY[0x1E69DB688];
  v3 = v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration;
  v4 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 104);
  v5 = sub_1CA0F2110(0, &qword_1EE03C250);
  *(inited + 40) = v4;
  v6 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = *(v3 + 24);
  *(inited + 104) = sub_1CA0F2110(0, &qword_1EE03C180);
  *(inited + 80) = v7;
  type metadata accessor for Key(0);
  OUTLINED_FUNCTION_0_37();
  sub_1CA16BA04(v8, v9);
  v10 = v2;
  v11 = v4;
  v12 = v6;
  v13 = v7;
  OUTLINED_FUNCTION_3_21();
  v14 = sub_1CA19C038();
  sub_1CA167B70(v14);
}

uint64_t sub_1CA169198()
{
  OUTLINED_FUNCTION_14_5();
  sub_1CA167EBC();
  swift_endAccess();
}

uint64_t sub_1CA16924C()
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = sub_1CA19AFF8();
  __swift_project_value_buffer(v1, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v9 = type metadata accessor for MarkdownStringGenerator();
  v8[0] = v0;
  v2 = v0;
  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v8);
  sub_1CA19AF18();
  swift_getErrorValue();
  v9 = v7;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v8);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_2Tm);
  sub_1CA19AF78();
  sub_1CA0F0440(v8);
  sub_1CA19AFB8();

  v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_didParseEverything] = 0;
  return result;
}

id sub_1CA1694E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_accumulator) beginEditing];
  switch(a2)
  {
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CA1A0C20;
      v60 = *MEMORY[0x1E69DB8B0];
      *(inited + 32) = *MEMORY[0x1E69DB8B0];
      *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433CA0);
      *(inited + 40) = &unk_1F49CC210;
      type metadata accessor for AttributeName(0);
      OUTLINED_FUNCTION_1_30();
      sub_1CA16BA04(v61, v62);
      v63 = v60;
      OUTLINED_FUNCTION_9_13();
      sub_1CA19C038();
      v64 = sub_1CA16813C();

      v65 = sub_1CA1687B8(a3, v64);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F78);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1CA1A0B80;
      v67 = *MEMORY[0x1E69DB648];
      *(v66 + 32) = *MEMORY[0x1E69DB648];
      v68 = sub_1CA0F2110(0, &qword_1EE03C180);
      *(v66 + 40) = v65;
      v69 = *MEMORY[0x1E69DB650];
      *(v66 + 64) = v68;
      *(v66 + 72) = v69;
      v70 = *(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 16);
      *(v66 + 104) = sub_1CA0F2110(0, &qword_1EE03C170);
      *(v66 + 80) = v70;
      type metadata accessor for Key(0);
      OUTLINED_FUNCTION_0_37();
      sub_1CA16BA04(v71, v72);
      v73 = v67;
      v25 = v65;
      v74 = v69;
      v75 = v70;
      goto LABEL_19;
    case 1:
      v76 = sub_1CA168250(2);
      v77 = OUTLINED_FUNCTION_7_13();
      v31 = sub_1CA1687B8(v77, v78);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F78);
      goto LABEL_9;
    case 2:
      v43 = sub_1CA168250(1);
      v44 = OUTLINED_FUNCTION_7_13();
      v31 = sub_1CA1687B8(v44, v45);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F78);
LABEL_9:
      v79 = swift_initStackObject();
      *(v79 + 16) = xmmword_1CA1A0B80;
      v39 = *MEMORY[0x1E69DB648];
      *(v79 + 32) = *MEMORY[0x1E69DB648];
      v80 = sub_1CA0F2110(0, &qword_1EE03C180);
      *(v79 + 40) = v31;
      v41 = *MEMORY[0x1E69DB650];
      *(v79 + 64) = v80;
      *(v79 + 72) = v41;
      v42 = *(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 16);
      *(v79 + 104) = sub_1CA0F2110(0, &qword_1EE03C170);
      *(v79 + 80) = v42;
      goto LABEL_18;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F78);
      v46 = swift_initStackObject();
      *(v46 + 16) = xmmword_1CA1A0C20;
      v47 = *MEMORY[0x1E69DB648];
      *(v46 + 32) = *MEMORY[0x1E69DB648];
      v48 = v47;
      v49 = sub_1CA168250(0);
      *(v46 + 64) = sub_1CA0F2110(0, &qword_1EE03C180);
      *(v46 + 40) = v49;
      type metadata accessor for Key(0);
      OUTLINED_FUNCTION_0_37();
      sub_1CA16BA04(v50, v51);
      v52 = sub_1CA19C038();
      sub_1CA167B70(v52);

      result = sub_1CA181EF8(@"href", a3);
      if (!v53)
      {
        return result;
      }

      v54 = result;
      v55 = v53;
      v56 = swift_initStackObject();
      *(v56 + 16) = xmmword_1CA1A0C20;
      v57 = *MEMORY[0x1E69DB670];
      *(v56 + 64) = MEMORY[0x1E69E6158];
      *(v56 + 32) = v57;
      *(v56 + 40) = v54;
      *(v56 + 48) = v55;
      v58 = v57;
      OUTLINED_FUNCTION_9_13();
      goto LABEL_15;
    case 4:
      v28 = sub_1CA16804C();
      v29 = OUTLINED_FUNCTION_7_13();
      v31 = sub_1CA1687B8(v29, v30);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F78);
      v32 = swift_initStackObject();
      v33 = MEMORY[0x1E69DB758];
      *(v32 + 16) = xmmword_1CA1A0930;
      v34 = *v33;
      *(v32 + 32) = *v33;
      v35 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v36 = v34;
      v37 = [v35 initWithInteger_];
      v38 = sub_1CA0F2110(0, &unk_1EE03C138);
      *(v32 + 40) = v37;
      v39 = *MEMORY[0x1E69DB648];
      *(v32 + 64) = v38;
      *(v32 + 72) = v39;
      v40 = sub_1CA0F2110(0, &qword_1EE03C180);
      *(v32 + 80) = v31;
      v41 = *MEMORY[0x1E69DB650];
      *(v32 + 104) = v40;
      *(v32 + 112) = v41;
      v42 = *(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 16);
      *(v32 + 144) = sub_1CA0F2110(0, &qword_1EE03C170);
      *(v32 + 120) = v42;
      goto LABEL_18;
    case 5:
      v81 = sub_1CA16804C();
      v82 = OUTLINED_FUNCTION_7_13();
      v31 = sub_1CA1687B8(v82, v83);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F78);
      v84 = swift_initStackObject();
      v85 = MEMORY[0x1E69DB6B8];
      *(v84 + 16) = xmmword_1CA1A0930;
      v86 = *v85;
      *(v84 + 32) = *v85;
      v87 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v88 = v86;
      v89 = [v87 initWithInteger_];
      v90 = sub_1CA0F2110(0, &unk_1EE03C138);
      *(v84 + 40) = v89;
      v39 = *MEMORY[0x1E69DB648];
      *(v84 + 64) = v90;
      *(v84 + 72) = v39;
      v91 = sub_1CA0F2110(0, &qword_1EE03C180);
      *(v84 + 80) = v31;
      v41 = *MEMORY[0x1E69DB650];
      *(v84 + 104) = v91;
      *(v84 + 112) = v41;
      v92 = v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration;
      v42 = *(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 112);
      *(v84 + 144) = sub_1CA0F2110(0, &qword_1EE03C170);
      if (v42)
      {
        v93 = v42;
      }

      else
      {
        v93 = *(v92 + 16);
      }

      *(v84 + 120) = v93;
LABEL_18:
      type metadata accessor for Key(0);
      OUTLINED_FUNCTION_0_37();
      sub_1CA16BA04(v100, v101);
      v102 = v39;
      v25 = v31;
      v103 = v41;
      v104 = v42;
      goto LABEL_19;
    case 6:
    case 7:
      v7 = sub_1CA16804C();
      v8 = OUTLINED_FUNCTION_7_13();
      v10 = sub_1CA1687B8(v8, v9);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F78);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_1CA1A0930;
      v12 = *MEMORY[0x1E69DB688];
      *(v11 + 32) = *MEMORY[0x1E69DB688];
      v13 = v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration;
      v14 = *(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 104);
      v15 = sub_1CA0F2110(0, &qword_1EE03C250);
      *(v11 + 40) = v14;
      v16 = *MEMORY[0x1E69DB648];
      *(v11 + 64) = v15;
      *(v11 + 72) = v16;
      v17 = sub_1CA0F2110(0, &qword_1EE03C180);
      *(v11 + 80) = v10;
      v18 = *MEMORY[0x1E69DB650];
      *(v11 + 104) = v17;
      *(v11 + 112) = v18;
      v19 = *(v13 + 16);
      *(v11 + 144) = sub_1CA0F2110(0, &qword_1EE03C170);
      *(v11 + 120) = v19;
      type metadata accessor for Key(0);
      OUTLINED_FUNCTION_0_37();
      sub_1CA16BA04(v20, v21);
      v22 = v12;
      v23 = v14;
      v24 = v16;
      v25 = v10;
      v26 = v18;
      v27 = v19;
LABEL_19:
      OUTLINED_FUNCTION_9_13();
      v105 = sub_1CA19C038();
      sub_1CA167B70(v105);

      goto LABEL_20;
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F78);
      v94 = swift_initStackObject();
      *(v94 + 16) = xmmword_1CA1A0C20;
      if (qword_1EE03C1F8 != -1)
      {
        OUTLINED_FUNCTION_10_13();
      }

      v95 = qword_1EE040BE0;
      *(v94 + 32) = qword_1EE040BE0;
      *(v94 + 64) = MEMORY[0x1E69E6370];
      *(v94 + 40) = 1;
      type metadata accessor for Key(0);
      OUTLINED_FUNCTION_0_37();
      sub_1CA16BA04(v96, v97);
      v98 = v95;
      OUTLINED_FUNCTION_3_21();
LABEL_15:
      v99 = sub_1CA19C038();
      sub_1CA167B70(v99);
LABEL_20:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CA169EBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2 == 8)
  {
    v4 = *(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_symbolTracker + 8);
    if (v4)
    {
      v5 = *(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_symbolTracker);
      sub_1CA0F2110(0, &qword_1EE03AE08);
      memcpy(__dst, (v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration), sizeof(__dst));

      sub_1CA144918(__dst, &v11);
      v6 = sub_1CA168250(0);
      v7 = sub_1CA16F92C(v5, v4, __dst, v6);
      if (v7)
      {
        v8 = v7;
        [*(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_accumulator) appendAttributedString_];
      }
    }
  }

  else if (a2 == 6)
  {
    sub_1CA167F0C(*(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 56), *(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 64));
  }

  OUTLINED_FUNCTION_14_5();
  sub_1CA167EBC();
  swift_endAccess();

  [*(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_accumulator) endEditing];
  v9 = (v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_symbolTracker);
  *v9 = 0;
  v9[1] = 0;
}

void sub_1CA16A094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = (v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration);
  v6 = *(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 8);
  if (*(v6 + 16))
  {
    v7 = sub_1CA184158(a2, a3);
    if (v8)
    {
      v9 = (*(v6 + 56) + 24 * v7);
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = *(v9 + 2);
      sub_1CA0F2110(0, &qword_1EE03AE08);
      memcpy(__dst, v5, sizeof(__dst));
      v13 = v12;
      swift_retain_n();
      v14 = v13;
      sub_1CA144918(__dst, &v18);
      v15 = sub_1CA168250(0);
      v16 = sub_1CA16FA60(v10, v11, v12, __dst, v12, v15);
      if (v16)
      {
        v17 = v16;
        [*(v4 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_accumulator) appendAttributedString_];
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1CA16A1F0()
{
  sub_1CA0F2110(0, &qword_1EE03BD70);

  v1 = sub_1CA16A2F8();
  v2 = [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_accumulator) mutableString];
  if (qword_1EE03CEA0 != -1)
  {
    OUTLINED_FUNCTION_8_12();
  }

  v3 = qword_1EE03CEB0;
  v4 = sub_1CA17071C(qword_1EE03CEB0);

  if (v4)
  {
    sub_1CA1707A0(v3);
  }

  v5 = sub_1CA19C118();
  sub_1CA167F0C(v5, v6);
}

id sub_1CA16A2F8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1CA19C0E8();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t sub_1CA16A384(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  sub_1CA19C118();
  v8 = a3;
  v9 = a1;
  a5();
}

id sub_1CA16A47C(uint64_t a1, uint64_t a2)
{
  result = [*(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_accumulator) beginEditing];
  if (a2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA1A0C20;
    v10 = *MEMORY[0x1E69DB688];
    *(inited + 32) = *MEMORY[0x1E69DB688];
    v11 = (v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 48);
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v5 = v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration;
    v7 = *(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 80);
    v6 = *(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 88);
    v8 = (v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_orderedListTracker);
    swift_beginAccess();
    *v8 = v7;
    v8[1] = v6;
    v8[2] = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA1A0C20;
    v10 = *MEMORY[0x1E69DB688];
    *(inited + 32) = *MEMORY[0x1E69DB688];
    v11 = (v5 + 96);
  }

  v12 = *v11;
  *(inited + 64) = sub_1CA0F2110(0, &qword_1EE03C250);
  *(inited + 40) = v12;
  type metadata accessor for Key(0);
  OUTLINED_FUNCTION_0_37();
  sub_1CA16BA04(v13, v14);
  v15 = v10;
  v16 = v12;
  OUTLINED_FUNCTION_3_21();
  v17 = sub_1CA19C038();
  sub_1CA167B70(v17);
}

void sub_1CA16A6A8()
{
  v1 = (v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_orderedListTracker);
  OUTLINED_FUNCTION_4_5();
  v2 = v1[1];
  if (v2)
  {
    v3 = v1[2];
    v4 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA1A0B80;
    v6 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];

    v7 = v6;
    v8 = sub_1CA168530();
    v9 = sub_1CA0F2110(0, &qword_1EE03C180);
    *(inited + 40) = v8;
    v10 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v9;
    *(inited + 72) = v10;
    v11 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 16);
    *(inited + 104) = sub_1CA0F2110(0, &qword_1EE03C170);
    *(inited + 80) = v11;
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_37();
    sub_1CA16BA04(v12, v13);
    v14 = v10;
    v15 = v11;
    OUTLINED_FUNCTION_50();
    v16 = sub_1CA19C038();
    sub_1CA167B70(v16);

    v17 = sub_1CA16BBC0(v4, v2, v3);
    v19 = v18;

    sub_1CA167F0C(v17, v19);

    OUTLINED_FUNCTION_14_5();
    sub_1CA167EBC();
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F78);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1CA1A0C20;
    v21 = *MEMORY[0x1E69DB650];
    *(v20 + 32) = *MEMORY[0x1E69DB650];
    v22 = v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration;
    v23 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 16);
    *(v20 + 64) = sub_1CA0F2110(0, &qword_1EE03C170);
    *(v20 + 40) = v23;
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_37();
    sub_1CA16BA04(v24, v25);
    v26 = v21;
    v27 = v23;
    OUTLINED_FUNCTION_3_21();
    v28 = sub_1CA19C038();
    sub_1CA167B70(v28);

    sub_1CA167F0C(*(v22 + 32), *(v22 + 40));
  }
}

uint64_t (*sub_1CA16A9BC())()
{
  sub_1CA167F0C(*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 56), *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 64));
  result = sub_1CA167A70();
  if (!*(v2 + 8))
  {
    return (result)(v6, 0);
  }

  v3 = *(v2 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v5;
    return (result)(v6, 0);
  }

  return result;
}

uint64_t sub_1CA16AAB0()
{
  sub_1CA167F0C(*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 56), *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_configuration + 64));
  OUTLINED_FUNCTION_14_5();
  sub_1CA167EBC();
  swift_endAccess();

  [*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_accumulator) endEditing];
  v1 = (v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic23MarkdownStringGenerator_orderedListTracker);
  swift_beginAccess();
  v1[1] = 0;
  v1[2] = 0;
  *v1 = 0;
}

id sub_1CA16ABC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CA19C0E8();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_1CA16BA04(&unk_1EE03C1E8, type metadata accessor for Key);
    v6 = sub_1CA19C008();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

uint64_t sub_1CA16ACE4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1CA16AD70(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1CA19C2F8();
  }

  return result;
}

uint64_t sub_1CA16ADB4(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1CA16ADFC()
{
  OUTLINED_FUNCTION_15_4();
  if (v4)
  {
    OUTLINED_FUNCTION_6_15();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_14_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_16();
    }
  }

  OUTLINED_FUNCTION_4_17();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433FF8);
    v7 = OUTLINED_FUNCTION_17_5();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_12_10(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[144 * v2 + 32] <= v7 + 32)
    {
      v10 = OUTLINED_FUNCTION_50();
      memmove(v10, v11, v12);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434000);
    OUTLINED_FUNCTION_50();
    swift_arrayInitWithCopy();
  }
}

char *sub_1CA16AEF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC434008);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[88 * v8] <= v12)
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1CA16B00C()
{
  OUTLINED_FUNCTION_15_4();
  if (v4)
  {
    OUTLINED_FUNCTION_6_15();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_14_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_16();
    }
  }

  OUTLINED_FUNCTION_4_17();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434018);
    v7 = OUTLINED_FUNCTION_17_5();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_12_10(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[24 * v2 + 32] <= v7 + 32)
    {
      v10 = OUTLINED_FUNCTION_50();
      memmove(v10, v11, v12);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434020);
    OUTLINED_FUNCTION_50();
    swift_arrayInitWithCopy();
  }
}

void *sub_1CA16B104(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[7 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC434030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1CA16B23C()
{
  OUTLINED_FUNCTION_15_4();
  if (v4)
  {
    OUTLINED_FUNCTION_6_15();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_14_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_16();
    }
  }

  OUTLINED_FUNCTION_4_17();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433FE8);
    v7 = OUTLINED_FUNCTION_17_5();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_12_10(v8);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[40 * v2] <= v9)
    {
      memmove(v9, v10, 40 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1CA16B31C()
{
  OUTLINED_FUNCTION_15_4();
  if (v4)
  {
    OUTLINED_FUNCTION_6_15();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_14_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_16();
    }
  }

  OUTLINED_FUNCTION_4_17();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433FE0);
    v7 = OUTLINED_FUNCTION_20_4();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_18_3();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1CA16B3F4()
{
  OUTLINED_FUNCTION_15_4();
  if (v4)
  {
    OUTLINED_FUNCTION_6_15();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_14_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_16();
    }
  }

  OUTLINED_FUNCTION_4_17();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433FD8);
    v7 = OUTLINED_FUNCTION_20_4();
    v8 = _swift_stdlib_malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * ((v8 - 32) / 16);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1CA16B4D4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433F70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CA16B604(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433FE0);
  v4 = OUTLINED_FUNCTION_20_4();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_18_3();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1CA16B66C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
  v4 = OUTLINED_FUNCTION_20_4();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

char *sub_1CA16B6E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[144 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_23(a3, result);
  }

  return result;
}

char *sub_1CA16B70C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_23(a3, result);
  }

  return result;
}

char *sub_1CA16B734(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_23(a3, result);
  }

  return result;
}

char *sub_1CA16B75C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_23(a3, result);
  }

  return result;
}

char *sub_1CA16B77C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_23(a3, result);
  }

  return result;
}

uint64_t sub_1CA16B7B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1CA19C818();
  }

  return sub_1CA19C968();
}

_BYTE *sub_1CA16B828@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_1CA16B894(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1CA19C8E8();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_1CA16B98C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CA16B814(v1);
    v1 = result;
  }

  v3 = v1[2];
  if (v3)
  {
    v4 = v3 - 1;
    result = v1[v4 + 4];
    v1[2] = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CA16BA04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_8_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_13()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_4()
{

  return swift_allocObject();
}

uint64_t sub_1CA16BBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CA19AEA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1CA19AE88();
  v9 = sub_1CA19AE78();
  (*(v5 + 8))(v7, v4);
  [v8 setLocale_];

  [v8 setNumberStyle_];
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v11 = [v8 stringFromNumber_];

  if (!v11)
  {
    v12 = objc_opt_self();
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v11 = [v12 localizedStringFromNumber:v13 numberStyle:1];
  }

  v14 = sub_1CA19C118();
  v16 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434040);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1CA1A0C20;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1CA16BE08();
  *(v17 + 32) = v14;
  *(v17 + 40) = v16;
  v18 = sub_1CA19C138();

  return v18;
}

unint64_t sub_1CA16BE08()
{
  result = qword_1EE03C2A8;
  if (!qword_1EE03C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03C2A8);
  }

  return result;
}

uint64_t sub_1CA16BE6C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1CA19CAF8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1CA16BF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA16BE6C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1CA16BF6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA0EFD08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CA16BF98(uint64_t a1)
{
  v2 = sub_1CA16C3BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA16BFD4(uint64_t a1)
{
  v2 = sub_1CA16C3BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA16C010(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434048);
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_1CA16C3BC();
  sub_1CA19CC28();
  if (!v1)
  {
    v9 = sub_1CA19CA58();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_2(a1);
  return v9;
}

uint64_t sub_1CA16C160(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434050);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_1CA16C3BC();
  sub_1CA19CC38();
  sub_1CA19CA88();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1CA16C294@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA16C010(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1CA16C2DC(uint64_t a1, uint64_t a2)
{
  sub_1CA19C8F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434058);
  v4 = sub_1CA19C168();

  MEMORY[0x1CCA99820](0xD000000000000015, 0x80000001CA1ADCB0);
  MEMORY[0x1CCA99820](a1, a2);
  MEMORY[0x1CCA99820](32010, 0xE200000000000000);
  return v4;
}

unint64_t sub_1CA16C3BC()
{
  result = qword_1EE03EA68;
  if (!qword_1EE03EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03EA68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaClient.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA16C4C0()
{
  result = qword_1EC434060;
  if (!qword_1EC434060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC434060);
  }

  return result;
}

unint64_t sub_1CA16C518()
{
  result = qword_1EE03EA58;
  if (!qword_1EE03EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03EA58);
  }

  return result;
}

unint64_t sub_1CA16C570()
{
  result = qword_1EE03EA60;
  if (!qword_1EE03EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03EA60);
  }

  return result;
}

uint64_t sub_1CA16C5C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4340A0);
    v2 = sub_1CA19CA28();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1CA0F1200(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1CA0F11E8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1CA0F11E8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1CA0F11E8(v31, v32);
    result = sub_1CA19C878();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_1CA0F11E8(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1CA16C888(uint64_t a1)
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_1CA0F11E8(&v22, v24);
    sub_1CA0F11E8(v24, v25);
    sub_1CA0F11E8(v25, &v23);
    result = sub_1CA184158(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_2(v17);
      result = sub_1CA0F11E8(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_1CA0F11E8(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

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
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t static MetricsContext.== infix(_:_:)(int a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((a1 ^ a3))
  {
    return 0;
  }

  v4 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    sub_1CA16CBAC();
    sub_1CA16C5C4(a2);
    v7 = sub_1CA16CCFC();
    sub_1CA16C5C4(a4);
    v8 = sub_1CA19C008();

    v4 = [v7 isEqualToDictionary_];
  }

  return v4;
}

unint64_t sub_1CA16CBAC()
{
  result = qword_1EC434068;
  if (!qword_1EC434068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC434068);
  }

  return result;
}

uint64_t sub_1CA16CBF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D796E6F6E417369 && a2 == 0xEB0000000073756FLL;
  if (v4 || (sub_1CA19CAF8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616C7265766FLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1CA19CAF8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CA16CCBC(char a1)
{
  if (a1)
  {
    return 0x79616C7265766FLL;
  }

  else
  {
    return 0x6D796E6F6E417369;
  }
}

id sub_1CA16CCFC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1CA19C008();

  v2 = [v0 initWithDictionary_];

  return v2;
}

uint64_t sub_1CA16CDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA16CBF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA16CDF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA113F9C();
  *a1 = result;
  return result;
}

uint64_t sub_1CA16CE20(uint64_t a1)
{
  v2 = sub_1CA16D180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA16CE5C(uint64_t a1)
{
  v2 = sub_1CA16D180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MetricsContext.init(from:)(void *a1)
{
  v17[4] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434070);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_2(a1, v4);
  sub_1CA16D180();
  sub_1CA19CC28();
  if (!v1)
  {
    LOBYTE(v17[0]) = 0;
    LOBYTE(v4) = sub_1CA19CA68();
    sub_1CA1643CC();
    sub_1CA19CA78();
    v8 = v17[0];
    v9 = v17[1];
    v10 = objc_opt_self();
    v16 = v8;
    v11 = sub_1CA19AE08();
    v17[0] = 0;
    v12 = [v10 JSONObjectWithData:v11 options:0 error:v17];

    if (v12)
    {
      v13 = v17[0];
      sub_1CA19C768();
      sub_1CA0F76A8(v16, v9);
      swift_unknownObjectRelease();
      v14 = OUTLINED_FUNCTION_0_38();
      v15(v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434078);
      swift_dynamicCast();
    }

    else
    {
      v4 = v17[0];
      sub_1CA19AD28();

      swift_willThrow();
      sub_1CA0F76A8(v16, v9);
      v5 = OUTLINED_FUNCTION_0_38();
      v6(v5);
    }
  }

  __swift_destroy_boxed_opaque_existential_2(a1);
  return v4 & 1;
}

unint64_t sub_1CA16D180()
{
  result = qword_1EE03E1F0[0];
  if (!qword_1EE03E1F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE03E1F0);
  }

  return result;
}

uint64_t MetricsContext.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434080);
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21[-v10];
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_1CA16D180();
  sub_1CA19CC38();
  LOBYTE(v22[0]) = 0;
  sub_1CA19CA98();
  if (v3 || !a3)
  {
    return (*(v8 + 8))(v11, v6);
  }

  v13 = objc_opt_self();
  v14 = sub_1CA19C008();
  v22[0] = 0;
  v15 = [v13 dataWithJSONObject:v14 options:0 error:v22];

  v16 = v22[0];
  if (!v15)
  {
    v20 = v16;
    sub_1CA19AD28();

    swift_willThrow();
    return (*(v8 + 8))(v11, v6);
  }

  v17 = sub_1CA19AE18();
  v19 = v18;

  v22[0] = v17;
  v22[1] = v19;
  v21[7] = 1;
  sub_1CA164484();
  sub_1CA19CAA8();
  (*(v8 + 8))(v11, v6);
  return sub_1CA0F76A8(v17, v19);
}

uint64_t sub_1CA16D448@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = MetricsContext.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t MetricsContext.description.getter(char a1, uint64_t a2)
{
  sub_1CA19C8F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434088);
  v4 = sub_1CA19C168();

  MEMORY[0x1CCA99820](0xD000000000000016, 0x80000001CA1ADCD0);
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1CCA99820](v5, v6);

  MEMORY[0x1CCA99820](0x65766F202020200ALL, 0xEE00203A79616C72);
  if (a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434090);
    v7 = sub_1CA19C168();
    v9 = v8;
  }

  else
  {
    v9 = 0xE900000000000064;
    v7 = 0x656E696665646E75;
  }

  MEMORY[0x1CCA99820](v7, v9);

  MEMORY[0x1CCA99820](8194601, 0xE300000000000000);
  return v4;
}

uint64_t sub_1CA16D63C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1CA16D690(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MetricsContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA16D7D0()
{
  result = qword_1EC434098;
  if (!qword_1EC434098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC434098);
  }

  return result;
}

unint64_t sub_1CA16D828()
{
  result = qword_1EE03E1E0;
  if (!qword_1EE03E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03E1E0);
  }

  return result;
}

unint64_t sub_1CA16D880()
{
  result = qword_1EE03E1E8;
  if (!qword_1EE03E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE03E1E8);
  }

  return result;
}

uint64_t sub_1CA16D90C()
{
  v0 = sub_1CA19BD18();
  __swift_allocate_value_buffer(v0, qword_1EE040C00);
  __swift_project_value_buffer(v0, qword_1EE040C00);
  return sub_1CA19BD08();
}

uint64_t sub_1CA16D9AC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1CA19BD18();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1CA19BD08();
}

uint64_t sub_1CA16DA0C()
{
  v0 = sub_1CA19BCF8();
  __swift_allocate_value_buffer(v0, qword_1EE040C30);
  __swift_project_value_buffer(v0, qword_1EE040C30);
  return sub_1CA19BCE8();
}

uint64_t static MetricsFieldsContext.createFieldsContext(impressionsTracker:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CA19BA68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1CA19BA58();
  if (a1)
  {
    v13[0] = a1;
    v13[1] = a2;
    v11 = qword_1EE03C310;
    swift_unknownObjectRetain();
    if (v11 != -1)
    {
      swift_once();
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433470);
    __swift_project_value_buffer(v12, qword_1EE03C318);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433460);
    sub_1CA19BA18();
    (*(v7 + 8))(a3, v6);
    swift_unknownObjectRelease();
    return (*(v7 + 32))(a3, v9, v6);
  }

  return result;
}

uint64_t sub_1CA16DBFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433470);
  __swift_allocate_value_buffer(v0, qword_1EE03C318);
  __swift_project_value_buffer(v0, qword_1EE03C318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433460);
  return sub_1CA19BA38();
}

uint64_t sub_1CA16DC88(void *a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  *(v2 + 16) = a2;

  return v2;
}

uint64_t sub_1CA16DCE4()
{
  MEMORY[0x1CCA9AE80](v0 + 24);
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 16);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_1CA16DD64()
{
  v0 = sub_1CA16DCE4();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t NavigationControllerList.topNavigationController.getter()
{
  sub_1CA16DF68();
  if (*(v0 + 16))
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    return 0;
  }
}

uint64_t NavigationControllerList.count.getter()
{
  v1 = *(v0 + 16);

  v3 = 0;
  if (!v1)
  {
    return v3;
  }

  while (!__OFADD__(v3, 1))
  {
    v4 = *(v1 + 16);

    ++v3;
    v1 = v4;
    if (!v4)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA16DE2C(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  if (a1)
  {
    type metadata accessor for NavigationControllerList.Node();
    swift_allocObject();
    *(v2 + 16) = sub_1CA16DC88(a1, 0);
  }

  return v2;
}

uint64_t sub_1CA16DE94(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  type metadata accessor for NavigationControllerList.Node();
  swift_allocObject();

  v5 = a1;
  *(v2 + 16) = sub_1CA16DC88(a1, v4);
}

uint64_t sub_1CA16DF14()
{
  v1 = NavigationControllerList.topNavigationController.getter();
  if (*(v0 + 16))
  {
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 16) = v2;

  return v1;
}

void sub_1CA16DF68()
{
  while (1)
  {
    v1 = *(v0 + 16);
    if (!v1)
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      return;
    }

    *(v0 + 16) = *(v1 + 16);
  }
}

uint64_t NavigationControllerList.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1CA16E06C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1CA16E10C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_queuePriority);
}

uint64_t sub_1CA16E170(void *a1)
{
  v1 = a1;
  v2 = sub_1CA16E1A4();

  return v2 & 1;
}

void *sub_1CA16E1A4()
{
  if ([v0 isCancelled])
  {
    return 0;
  }

  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8));
  if (result)
  {
    return ([result state] == 0);
  }

  __break(1u);
  return result;
}

id sub_1CA16E23C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1CA19C3A8();

  return v3;
}

uint64_t sub_1CA16E298(void *a1)
{
  v1 = a1;
  v2 = sub_1CA16E2CC();

  return v2 & 1;
}

uint64_t sub_1CA16E2CC()
{
  if ([v0 isCancelled])
  {
    return 1;
  }

  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8));
  if (result)
  {
    return [result state] == 3;
  }

  __break(1u);
  return result;
}

id sub_1CA16E340(void *a1)
{
  v1 = a1;
  v2 = sub_1CA16E10C();

  return v2;
}

void sub_1CA16E374(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1CA16E3C8(a3);
}

void sub_1CA16E3C8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setQueuePriority_, a1);
  sub_1CA16E414();
}

void sub_1CA16E414()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8));
  if (v1)
  {
    v4 = v1;
    v2 = __ROR8__(sub_1CA16E10C() + 8, 2);
    LODWORD(v3) = 1.0;
    if (v2 <= 4)
    {
      LODWORD(v3) = dword_1CA1A6514[v2];
    }

    [v4 setPriority_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CA16E4B0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v0;
  v6 = sub_1CA19BC48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v4 & v3) + 0xA8);
  result = *(v1 + v10);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = [result state];
  result = [v1 isCancelled];
  if ((result & 1) == 0 && v12 == 1)
  {
    v24 = v1;
    MEMORY[0x1EEE9AC00](result);
    v13 = *(v5 + 136);
    v14 = *(v5 + 144);
    *(&v23 - 2) = v13;
    *(&v23 - 1) = v14;
    swift_getKeyPath();
    sub_1CA19AD38();
    result = *(v1 + v10);
    if (result)
    {
      v15 = [result resume];
      v24 = v1;
      MEMORY[0x1EEE9AC00](v15);
      *(&v23 - 2) = v13;
      *(&v23 - 1) = v14;
      swift_getKeyPath();
      result = sub_1CA19AD48();
      if (*(v1 + *((*v2 & *v1) + 0xA0)))
      {
        *v9 = 1;
        (*(v7 + 104))(v9, *MEMORY[0x1E69AB448], v6);

        PageRenderMetricsPresenterWrapper.start(_:)(v9, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, vars0, vars8);

        return (*(v7 + 8))(v9, v6);
      }

      return result;
    }

LABEL_9:
    __break(1u);
  }

  return result;
}

void *sub_1CA16E72C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA16E1A4();
  *a1 = result & 1;
  return result;
}

void sub_1CA16E75C(void *a1)
{
  v1 = a1;
  sub_1CA16E4B0();
}

id sub_1CA16E7A4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_cancel);
  result = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8));
  if (result)
  {
    return [result cancel];
  }

  __break(1u);
  return result;
}

void sub_1CA16E81C(void *a1)
{
  v1 = a1;
  sub_1CA16E7A4();
}

void sub_1CA16E8A4()
{
  OUTLINED_FUNCTION_0_39();
  (*(*(*((v3 & v2) + 0x88) - 8) + 8))(v0 + *(v1 + 152));
  OUTLINED_FUNCTION_0_39();

  OUTLINED_FUNCTION_0_39();
  v5 = *(v0 + *(v4 + 168));
}

void sub_1CA16E954(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x88) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x98)]);
  OUTLINED_FUNCTION_1_31();

  OUTLINED_FUNCTION_1_31();
  v3 = *&a1[*(v2 + 168)];
}

uint64_t sub_1CA16EA2C(uint64_t a1)
{
  if (sub_1CA0F04EC(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4335A8);
    v2 = sub_1CA19C8D8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v16 = sub_1CA0F04EC(a1);
  if (v16)
  {
    v3 = 0;
    v4 = v2 + 56;
    v5 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_1CA17EBD4(v3, v5 == 0, a1);
      if (v5)
      {
        result = MEMORY[0x1CCA99FB0](v3, a1);
        v7 = result;
      }

      else
      {
        v7 = *(a1 + 32 + 8 * v3);
      }

      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        break;
      }

      sub_1CA19CBD8();
      AMSUIDTimeout.hash(into:)();
      result = sub_1CA19CC18();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        type metadata accessor for AMSUIDTimeout();
        if (static AMSUIDTimeout.== infix(_:_:)(*(*(v2 + 48) + 8 * v10), v7))
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v7;
      v14 = *(v2 + 16);
      v8 = __OFADD__(v14, 1);
      v15 = v14 + 1;
      if (v8)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v15;
LABEL_17:
      if (v3 == v16)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_1CA16EBDC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4340A8);
  result = sub_1CA19C8D8();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_1CA19CBD8();

    sub_1CA19C198();
    result = sub_1CA19CC18();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_1CA19CAF8() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t NetworkInterface.hashValue.getter(unsigned __int8 a1)
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](a1);
  return sub_1CA19CC18();
}

uint64_t sub_1CA16EE30()
{
  v1 = *v0;
  sub_1CA19CBD8();
  NetworkInterface.hash(into:)(v3, v1);
  return sub_1CA19CC18();
}

unint64_t sub_1CA16EE78()
{
  result = qword_1EC4340B0;
  if (!qword_1EC4340B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4340B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkInterface(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NetworkInterface(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

id sub_1CA16F030()
{
  result = [objc_opt_self() sharedDefaultEvaluator];
  if (result)
  {
    v1 = result;
    v2 = swift_allocObject();
    sub_1CA16F0E0(v1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CA16F098(unint64_t a1)
{
  if (a1 < 5)
  {
    return (a1 + 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1CA16F0A8()
{
  result = sub_1CA19C0E8();
  qword_1EE03B390 = result;
  return result;
}

uint64_t sub_1CA16F0E0(void *a1)
{
  v2 = v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v4 = a1;
  v5 = sub_1CA19AD58();

  v6 = *(v2 + 24);
  *(v2 + 24) = v5;

  return v2;
}

id sub_1CA16F1B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 path];
  *a2 = result;
  return result;
}

uint64_t sub_1CA16F1F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CA16F24C();
  }

  return result;
}

void sub_1CA16F24C()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v3 = sub_1CA19AFF8();
  __swift_project_value_buffer(v3, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A1A50;
  v10 = v2;
  v9[0] = v1;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v9);
  sub_1CA19AF18();
  sub_1CA19AF18();
  v6 = sub_1CA16F5E8();
  v10 = MEMORY[0x1E69E6370];
  LOBYTE(v9[0]) = v6;
  sub_1CA19AF38();
  sub_1CA0F0440(v9);
  sub_1CA19AF18();
  v7 = sub_1CA16F640();
  v10 = &type metadata for NetworkInterface;
  LOBYTE(v9[0]) = v7;
  sub_1CA19AF38();
  sub_1CA0F0440(v9);
  sub_1CA19AFA8();

  v8 = [objc_opt_self() defaultCenter];
  if (qword_1EE03B388 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_1EE03B390 object:v1];
}

uint64_t sub_1CA16F544()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    sub_1CA19AD08();
  }

  return v1;
}

uint64_t sub_1CA16F590()
{
  sub_1CA16F544();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

BOOL sub_1CA16F5E8()
{
  v1 = [*(v0 + 16) path];
  v2 = [v1 status];

  return (v2 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

uint64_t sub_1CA16F640()
{
  v1 = [*(v0 + 16) path];
  v2 = [v1 interface];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 type];

  return sub_1CA16F098(v3);
}

id sub_1CA16F6D4(SEL *a1)
{
  v3 = [*(v1 + 16) path];
  v4 = [v3 *a1];

  return v4;
}

uint64_t sub_1CA16F724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = *v5;
  if (qword_1EE03B388 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE03B390;
  v16[3] = v10;
  v16[0] = v5;
  sub_1CA0F2ACC(a1, v15);
  v12 = type metadata accessor for CommonNetworkObservation();
  swift_allocObject();
  v13 = v11;

  result = sub_1CA12CF30(v13, v16, v15, a2, a3);
  a4[3] = v12;
  a4[4] = &off_1F49CF090;
  *a4 = result;
  return result;
}

id sub_1CA16F92C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12[0] = 0x656372756F736572;
  v12[1] = 0xEB000000002F2F3ALL;
  MEMORY[0x1CCA99820]();

  type metadata accessor for Artwork();
  swift_allocObject();
  v6 = Artwork.init(template:size:backgroundColor:style:crop:variants:cachePath:accessibilityIdentifier:)(0x656372756F736572, 0xEB000000002F2F3ALL, 0, 0, 25186, 0xE200000000000000, MEMORY[0x1E69E7CC0], 0, 0.0, 0.0, 0, 0);
  v7 = *(a3 + 16);
  v8 = v7;

  sub_1CA144918(a3, v12);
  v9 = sub_1CA16FA60(0, v6, v7, a3, v7, a4);
  v10 = v9;

  sub_1CA144974(a3);

  return v9;
}

id sub_1CA16FA60(int a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v60 = a6;
  v61 = a3;
  LODWORD(v58) = a1;
  __src[11] = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v54 - v10;
  v12 = sub_1CA19ADF8();
  Description = v12[-1].Description;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA0F2110(0, &qword_1EE03C258);
  v62 = a4;
  sub_1CA19B7D8();
  sub_1CA19BE18();
  v16 = __src[0];
  sub_1CA0FF238(*(a2 + 64), *(a2 + 72), *(a2 + 32), *(a2 + 40), *(a2 + 32), *(a2 + 40));
  v18 = v17;
  v20 = v19;

  ArtworkRequest.init(artwork:exactSize:)(v21, __src, v18, v20);
  ArtworkRequest.makeURL()();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    v12 = v16;
    sub_1CA0F54A0(v11, &qword_1EC433170);
    if (qword_1EE03B230 != -1)
    {
LABEL_26:
      OUTLINED_FUNCTION_0_2();
    }

    v22 = sub_1CA19AFF8();
    __swift_project_value_buffer(v22, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    sub_1CA19AF18();
    v66 = &type metadata for ArtworkRequest;
    v65[0] = swift_allocObject();
    memcpy(v65[0] + 16, __src, 0x58uLL);
    sub_1CA19AF38();
    sub_1CA0F54A0(v65, &qword_1EC433830);
    sub_1CA19AFB8();

    sub_1CA144974(v62);

    return 0;
  }

  sub_1CA1030E8(__src);
  Description[4](v15, v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4332C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA1A0930;
  *(inited + 32) = [objc_opt_self() mainBundle];
  if (qword_1EE03ADD8 != -1)
  {
    swift_once();
  }

  v56 = Description;
  v57 = v16;
  v24 = qword_1EE040B00;
  *(inited + 40) = qword_1EE040B00;
  v25 = qword_1EE03ADE0;
  v26 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = qword_1EE040B08;
  *(inited + 48) = qword_1EE040B08;
  v65[0] = MEMORY[0x1E69E7CC0];
  v28 = v27;
  for (i = 0; i != 3; ++i)
  {
    if (i > 2)
    {
      __break(1u);
      goto LABEL_26;
    }

    v30 = *(inited + 8 * i + 32);
    if (v30)
    {
      v31 = v30;
      MEMORY[0x1CCA998F0]();
      if (*((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA19C2F8();
      }

      sub_1CA19C318();
    }
  }

  swift_setDeallocating();
  sub_1CA1703F4();
  v32 = sub_1CA19AD88();
  sub_1CA0F2110(0, &qword_1EE03BD48);
  v33 = sub_1CA19C2A8();

  v34 = v57;
  v35 = [(ValueMetadata *)v57 fetchImageWithURL:v32 searchBundles:v33];

  v65[0] = 0;
  v36 = [v35 resultWithError_];

  if (!v36)
  {
    v59 = a5;
    v39 = v65[0];
    v40 = sub_1CA19AD28();

    swift_willThrow();
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v41 = sub_1CA19AFF8();
    v58 = __swift_project_value_buffer(v41, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A1A40;
    sub_1CA19AF18();
    v66 = v12;
    boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v65);
    v43 = v56;
    v56[2](boxed_opaque_existential_2Tm, v15, v12);
    sub_1CA19AF38();
    sub_1CA0F54A0(v65, &qword_1EC433830);
    sub_1CA19AF18();
    swift_getErrorValue();
    v55 = v15;
    v44 = v40;
    v45 = v63;
    v46 = v64;
    v66 = v64;
    v47 = __swift_allocate_boxed_opaque_existential_2Tm(v65);
    (*(v46[-1].Description + 2))(v47, v45, v46);
    sub_1CA19AF38();
    sub_1CA0F54A0(v65, &qword_1EC433830);
    sub_1CA19AFB8();

    sub_1CA144974(v62);

    (v43[1])(v55, v12);
    return 0;
  }

  v37 = v65[0];
  if (a5)
  {
    v38 = [v36 imageWithTintColor_];
  }

  else
  {
    v38 = v36;
  }

  v49 = v38;
  sub_1CA0F2110(0, &qword_1EE03AE10);
  v50 = v49;
  v51 = v60;
  v52 = sub_1CA17084C(v50, v51, v58 & 1);
  v48 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

  sub_1CA144974(v62);
  (v56[1])(v15, v12);
  return v48;
}

uint64_t sub_1CA1703F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4340B8);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

id sub_1CA170470(double a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v4 setFirstLineHeadIndent_];
  [v4 setHeadIndent_];
  sub_1CA17052C(MEMORY[0x1E69E7CC0], v4);
  [v4 setDefaultTabInterval_];
  [v4 setParagraphSpacing_];
  [v4 setAlignment_];
  return v4;
}

void sub_1CA17052C(uint64_t a1, void *a2)
{
  sub_1CA1705A0();
  v3 = sub_1CA19C2A8();

  [a2 setTabStops_];
}

unint64_t sub_1CA1705A0()
{
  result = qword_1EE03C118;
  if (!qword_1EE03C118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03C118);
  }

  return result;
}

uint64_t sub_1CA1705E4(void *a1)
{
  result = [v1 length];
  v4 = result;
  v5 = 0;
  v6 = result & ~(result >> 63);
  while (v6 != v5)
  {
    result = [a1 characterIsMember_];
    if (!result)
    {
      v6 = v5;
      break;
    }

    ++v5;
  }

  if (v6 == v4)
  {
    goto LABEL_17;
  }

  v7 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  while (v7 >= v6)
  {
    result = [a1 characterIsMember_];
    if (!result)
    {
      break;
    }

    if (__OFSUB__(v7--, 1))
    {
      __break(1u);
      break;
    }
  }

  if (__OFADD__(v7, 1))
  {
    goto LABEL_21;
  }

  v9 = v4 - v7;
  if (__OFSUB__(v4, v7))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v9, 1))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  [v1 deleteCharactersInRange_];
  v4 = v6;
LABEL_17:

  return [v1 deleteCharactersInRange_];
}

char *sub_1CA17071C(void *a1)
{
  if ([v1 length] < 1)
  {
    return 0;
  }

  result = [v1 length];
  if (!__OFSUB__(result, 1))
  {
    return [a1 characterIsMember_];
  }

  __break(1u);
  return result;
}

id sub_1CA1707A0(void *a1)
{
  v3 = [v1 length];
  v4 = 0;
  v5 = v3 & ~(v3 >> 63);
  while (v5 != v4)
  {
    if (![a1 characterIsMember_])
    {
      v5 = v4;
      break;
    }

    ++v4;
  }

  return [v1 deleteCharactersInRange_];
}

id sub_1CA17084C(void *a1, void *a2, char a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setImage_];
  [a2 pointSize];
  v8 = v7;
  [a1 size];
  v10 = v9;
  [a1 size];
  v12 = v8 * (v10 / v11);
  [v6 bounds];
  v14 = v13;
  if (a3)
  {
    [a2 capHeight];
    v16 = round(v15 - v8) * 0.5 + 0.5;
  }

  else
  {
    [v6 bounds];
    v12 = v12 * 0.85;
    v8 = v8 * 0.85;
  }

  [v6 setBounds_];

  return v6;
}

uint64_t sub_1CA1709D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CA19B9B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  *(v3 + qword_1EE03E890) = 0;
  (*(v6 + 16))(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v8 = sub_1CA19B798();
  sub_1CA170C6C();

  sub_1CA19B7C8();
  (*(v6 + 8))(a3, v5);
  v9 = *(v8 + qword_1EE03E890);
  *(v8 + qword_1EE03E890) = v11[1];

  return v8;
}

uint64_t ObjectGraph.deinit()
{
  v0 = sub_1CA19B7E8();

  return v0;
}

uint64_t ObjectGraph.__deallocating_deinit()
{
  v0 = sub_1CA19B7E8();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t type metadata accessor for ObjectGraph()
{
  result = qword_1EE03E880;
  if (!qword_1EE03E880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CA170C6C()
{
  result = qword_1EE03C278;
  if (!qword_1EE03C278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE03C278);
  }

  return result;
}

void *PageActionDefinition.__allocating_init(id:model:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[2] = a1;
  result[3] = a2;
  return result;
}

void *PageActionDefinition.init(id:model:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  v5[2] = a1;
  v5[3] = a2;
  return v5;
}

uint64_t PageActionDefinition.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageActionDefinition.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t PageActionLoader.pageActionDefinition(withLocation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1CA170FB8(a1, a2);
  result = sub_1CA0F04EC(v7);
  v9 = result;
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      sub_1CA171334();
      swift_allocError();
      swift_willThrow();
      return v4;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA99FB0](i, v7);
      v4 = result;
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v4 = *(v7 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = *(v4 + 16) == a3 && *(v4 + 24) == a4;
    if (v11 || (sub_1CA19CAF8() & 1) != 0)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t PageActionLoaderError.hashValue.getter()
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](0);
  return sub_1CA19CC18();
}

uint64_t sub_1CA170F7C()
{
  sub_1CA19CBD8();
  PageActionLoaderError.hash(into:)();
  return sub_1CA19CC18();
}

uint64_t sub_1CA170FB8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  swift_beginAccess();
  v7 = v2[3];
  if (*(v7 + 16) && (v8 = sub_1CA184158(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v11 = sub_1CA174720(a1, a2);
    if (dynamic_cast_existential_1_conditional(v11))
    {
      v10 = (*(v16 + 8))();
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v18 = v3[3];
      sub_1CA17AC00();
      v3[3] = v18;
      swift_endAccess();
    }

    else
    {
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v12 = sub_1CA19AFF8();
      __swift_project_value_buffer(v12, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0930;
      v20 = v6;
      v19[0] = v3;

      v13 = AMSLogKey();
      if (v13)
      {
        v14 = v13;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(v19);
      sub_1CA19AF18();
      v20 = MEMORY[0x1E69E6158];
      v19[0] = a1;
      v19[1] = a2;

      sub_1CA19AF38();
      sub_1CA0F0440(v19);
      sub_1CA19AFB8();

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v10;
}

uint64_t PageActionLoader.deinit()
{

  return v0;
}

uint64_t PageActionLoader.__deallocating_deinit()
{
  PageActionLoader.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1CA171334()
{
  result = qword_1EC4340C0;
  if (!qword_1EC4340C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4340C0);
  }

  return result;
}

unint64_t sub_1CA17138C()
{
  result = qword_1EC4340C8;
  if (!qword_1EC4340C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4340C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PageActionLoaderError(_BYTE *result, int a2, int a3)
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

void *PageDefinition.__allocating_init(id:viewControllerProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *PageDefinition.init(id:viewControllerProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t PageDefinition.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageDefinition.viewControllerProvider.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PageDefinition.deinit()
{

  return v0;
}

uint64_t PageDefinition.__deallocating_deinit()
{
  PageDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t PageLoaderError.hashValue.getter()
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](0);
  return sub_1CA19CC18();
}

uint64_t sub_1CA171670()
{
  sub_1CA19CBD8();
  PageLoaderError.hash(into:)();
  return sub_1CA19CC18();
}

uint64_t PageLoader.pageDefinition(withLocation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1CA1717D4(a1, a2);
  result = sub_1CA0F04EC(v7);
  v9 = result;
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      sub_1CA171B50();
      swift_allocError();
      swift_willThrow();
      return v4;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA99FB0](i, v7);
      v4 = result;
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v4 = *(v7 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = *(v4 + 16) == a3 && *(v4 + 24) == a4;
    if (v11 || (sub_1CA19CAF8() & 1) != 0)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1CA1717D4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  swift_beginAccess();
  v7 = v2[3];
  if (*(v7 + 16) && (v8 = sub_1CA184158(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v11 = sub_1CA174720(a1, a2);
    if (dynamic_cast_existential_1_conditional(v11))
    {
      v10 = (*(v16 + 8))();
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v18 = v3[3];
      sub_1CA17AF5C();
      v3[3] = v18;
      swift_endAccess();
    }

    else
    {
      if (qword_1EE03B230 != -1)
      {
        swift_once();
      }

      v12 = sub_1CA19AFF8();
      __swift_project_value_buffer(v12, qword_1EE040B90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
      sub_1CA19AF88();
      *(swift_allocObject() + 16) = xmmword_1CA1A0930;
      v20 = v6;
      v19[0] = v3;

      v13 = AMSLogKey();
      if (v13)
      {
        v14 = v13;
        sub_1CA19C118();
      }

      sub_1CA19AF58();

      __swift_destroy_boxed_opaque_existential_2(v19);
      sub_1CA19AF18();
      v20 = MEMORY[0x1E69E6158];
      v19[0] = a1;
      v19[1] = a2;

      sub_1CA19AF38();
      sub_1CA0F0440(v19);
      sub_1CA19AFB8();

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v10;
}

uint64_t PageLoader.deinit()
{

  return v0;
}

uint64_t PageLoader.__deallocating_deinit()
{
  PageLoader.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1CA171B50()
{
  result = qword_1EC4340D0;
  if (!qword_1EC4340D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4340D0);
  }

  return result;
}