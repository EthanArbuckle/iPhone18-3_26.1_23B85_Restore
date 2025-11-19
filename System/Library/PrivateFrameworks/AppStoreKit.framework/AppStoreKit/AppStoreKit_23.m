char *sub_1E1549D8C(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v94 = *a4;
  v4 = (*a4 + 8 * a3 - 8);
  v5 = &result[-a3];
LABEL_6:
  v89 = v4;
  v90 = a3;
  v6 = *(v94 + 8 * a3);
  v88 = v5;
  while (1)
  {
    v7 = *v4;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      v31 = 0.0;
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      goto LABEL_19;
    }

    v9 = Strong;
    v10 = *(v6 + 16);
    v11 = *(v6 + 24);
    ObjectType = swift_getObjectType();

    [v10 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = (*(v11 + 48))(ObjectType, v11);
    if (!v21 || (v22 = v21, [v21 frame], v24 = v23, v26 = v25, v28 = v27, v30 = v29, v22, v107.origin.x = 0.0, v107.origin.y = 0.0, v107.size.width = 0.0, v107.size.height = 0.0, v97.origin.x = v24, v97.origin.y = v26, v97.size.width = v28, v97.size.height = v30, CGRectEqualToRect(v97, v107)))
    {
      [v10 frame];
      v108.origin.x = 0.0;
      v108.origin.y = 0.0;
      v108.size.width = 0.0;
      v108.size.height = 0.0;
      if (CGRectEqualToRect(v98, v108))
      {
        if (*(v6 + 64))
        {
          v24 = v14;
          v26 = v16;
          v28 = v18;
          v30 = v20;
        }

        else
        {
          v28 = *(v6 + 48);
          v30 = *(v6 + 56);
          v24 = *(v6 + 32);
          v26 = *(v6 + 40);
        }

        goto LABEL_17;
      }

      [v10 frame];
      v24 = v35;
      v26 = v36;
      v28 = v37;
      v30 = v38;
    }

    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 1;
LABEL_17:
    result = [v9 view];
    if (!result)
    {
      goto LABEL_40;
    }

    v39 = result;
    v40 = [v10 superview];
    [v39 convertRect:v40 fromView:{v24, v26, v28, v30}];
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v34 = v44;

LABEL_19:
    v45 = swift_unknownObjectWeakLoadStrong();
    if (!v45)
    {
      v96 = 0.0;
      v64 = 0.0;
      v65 = 0.0;
      v66 = 0.0;
      goto LABEL_31;
    }

    v46 = v45;
    v48 = *(v7 + 16);
    v47 = *(v7 + 24);
    v49 = swift_getObjectType();
    [v48 frame];
    v95 = v50;
    v92 = v52;
    v93 = v51;
    v91 = v53;
    v54 = (*(v47 + 48))(v49, v47);
    if (!v54 || (v55 = v54, [v54 frame], v57 = v56, v59 = v58, v61 = v60, v63 = v62, v55, v109.origin.x = 0.0, v109.origin.y = 0.0, v109.size.width = 0.0, v109.size.height = 0.0, v99.origin.x = v57, v99.origin.y = v59, v99.size.width = v61, v99.size.height = v63, CGRectEqualToRect(v99, v109)))
    {
      [v48 frame];
      v110.origin.x = 0.0;
      v110.origin.y = 0.0;
      v110.size.width = 0.0;
      v110.size.height = 0.0;
      if (CGRectEqualToRect(v100, v110))
      {
        if (*(v7 + 64))
        {
          v57 = v95;
          v61 = v92;
          v59 = v93;
          v63 = v91;
        }

        else
        {
          v61 = *(v7 + 48);
          v63 = *(v7 + 56);
          v57 = *(v7 + 32);
          v59 = *(v7 + 40);
        }

        goto LABEL_29;
      }

      [v48 frame];
      v57 = v67;
      v59 = v68;
      v61 = v69;
      v63 = v70;
    }

    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 1;
LABEL_29:
    result = [v46 view];
    if (!result)
    {
      goto LABEL_41;
    }

    v71 = result;
    v72 = [v48 superview];
    [v71 convertRect:v72 fromView:{v57, v59, v61, v63}];
    v96 = v73;
    v64 = v74;
    v65 = v75;
    v66 = v76;

LABEL_31:
    v101.origin.x = v31;
    v101.origin.y = v32;
    v101.size.width = v33;
    v101.size.height = v34;
    v77 = v34;
    v78 = v33;
    v79 = v32;
    v80 = v31;
    MinY = CGRectGetMinY(v101);
    v102.origin.x = v96;
    v102.origin.y = v64;
    v102.size.width = v65;
    v102.size.height = v66;
    if (MinY >= CGRectGetMinY(v102))
    {
      v103.origin.x = v80;
      v103.origin.y = v79;
      v103.size.width = v78;
      v103.size.height = v77;
      v82 = CGRectGetMinY(v103);
      v104.origin.x = v96;
      v104.origin.y = v64;
      v104.size.width = v65;
      v104.size.height = v66;
      if (v82 != CGRectGetMinY(v104))
      {

LABEL_5:
        a3 = v90 + 1;
        v4 = v89 + 1;
        v5 = v88 - 1;
        if (v90 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v105.origin.x = v80;
      v105.origin.y = v79;
      v105.size.width = v78;
      v105.size.height = v77;
      MinX = CGRectGetMinX(v105);
      v106.origin.x = v96;
      v106.origin.y = v64;
      v106.size.width = v65;
      v106.size.height = v66;
      v84 = CGRectGetMinX(v106);

      if (MinX >= v84)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    if (!v94)
    {
      break;
    }

    v85 = *v4;
    v6 = v4[1];
    *v4 = v6;
    v4[1] = v85;
    --v4;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1E154A2DC(uint64_t *a1)
{
  v2 = a1[1];
  swift_retain_n();
  result = sub_1E1AF741C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for PlayableViewVisibilityTracker.PlayableItem();
        v6 = sub_1E1AF628C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v7[1] = v5;

      sub_1E1548D48(v7, v8, a1, v4);

      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {

    sub_1E1549D8C(0, v2, 1, a1);
  }
}

uint64_t sub_1E154A438(uint64_t *a1)
{
  v2 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E196B840(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;

  sub_1E154A2DC(v6);

  sub_1E1AF70CC();
}

uint64_t sub_1E154A4E4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_1E154713C(*(v2 + 16), 0);
    v23 = sub_1E1547130(v26, v4 + 32, v3, v2);
    swift_bridgeObjectRetain_n();

    sub_1E1337ECC();
    if (v23 != v3)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  *&v26[0] = v4;

  sub_1E154A438(v26);

  v5 = *&v26[0];
  if ((*&v26[0] & 0x8000000000000000) == 0 && (*&v26[0] & 0x4000000000000000) == 0)
  {
    v6 = *(*&v26[0] + 16);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_18:

    v8 = MEMORY[0x1E69E7CC0];
LABEL_19:
    *(v1 + 56) = v8;

    sub_1E15474D0();
    return *(v1 + 56);
  }

  v20 = *&v26[0];
  v6 = sub_1E1AF71CC();
  v5 = v20;
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_8:
  v4 = v5;
  v25 = MEMORY[0x1E69E7CC0];
  sub_1E135C2E8(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v25;
    v9 = v4;
    v22 = v1;
    v24 = v4 & 0xC000000000000001;
    v10 = v4;
    do
    {
      if (v24)
      {
        v11 = MEMORY[0x1E68FFD80](v7, v9);
      }

      else
      {
        v11 = *(v9 + 8 * v7 + 32);
      }

      v12 = *(v11 + 24);
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 8);

      v14(v26, ObjectType, v12);

      v16 = *(v25 + 16);
      v15 = *(v25 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1E135C2E8((v15 > 1), v16 + 1, 1);
      }

      ++v7;
      *(v25 + 16) = v16 + 1;
      v17 = v25 + 40 * v16;
      v18 = v26[0];
      v19 = v26[1];
      *(v17 + 64) = v27;
      *(v17 + 32) = v18;
      *(v17 + 48) = v19;
      v9 = v10;
    }

    while (v6 != v7);

    v1 = v22;
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1E154A810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v10 = sub_1E1AF470C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a3;
  memset(v43, 0, 32);
  sub_1E1AF46FC();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = objc_opt_self();

  v16 = [v15 defaultCenter];
  v17 = type metadata accessor for WeakNotificationObserver();
  v18 = objc_allocWithZone(v17);
  v42[3] = v10;
  v42[4] = MEMORY[0x1E69AB218];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42);
  v20 = *(v11 + 16);
  v38 = v10;
  v20(boxed_opaque_existential_0, v13, v10);
  swift_unknownObjectWeakInit();
  sub_1E1300B24(v42, &v18[OBJC_IVAR____TtC11AppStoreKit24WeakNotificationObserver_scheduler]);
  v21 = &v18[OBJC_IVAR____TtC11AppStoreKit24WeakNotificationObserver_block];
  *v21 = a4;
  *(v21 + 1) = v14;
  swift_unknownObjectWeakAssign();
  v41.receiver = v18;
  v41.super_class = v17;

  v22 = objc_msgSendSuper2(&v41, sel_init);
  sub_1E13BFF54(v43, v39);
  v23 = v40;
  if (v40)
  {
    v24 = __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v35[1] = v35;
    v36 = v11;
    v25 = v17;
    v26 = a5;
    v27 = *(v23 - 8);
    v28 = MEMORY[0x1EEE9AC00](v24);
    v30 = v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v30, v28);
    v31 = v22;
    v32 = sub_1E1AF748C();
    (*(v27 + 8))(v30, v23);
    a5 = v26;
    v17 = v25;
    v11 = v36;
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    v33 = v22;
    v32 = 0;
  }

  [v16 addObserver:v22 selector:sel_didReceiveWithNotification_ name:v37 object:v32];

  swift_unknownObjectRelease();
  (*(v11 + 8))(v13, v38);
  sub_1E13E44F8(v43);
  result = __swift_destroy_boxed_opaque_existential_1(v42);
  a5[3] = v17;
  *a5 = v22;
  return result;
}

uint64_t JSONContext.addingRenderPipelineDiagnostics()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6[-v2 - 8];
  v7 = &type metadata for DiagnosticsAdapter;
  v8 = sub_1E154ACA0();
  sub_1E1AF397C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C0);
  sub_1E1AF395C();
  (*(v1 + 8))(v3, v0);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t sub_1E154ACA0()
{
  result = qword_1EE1EFF38[0];
  if (!qword_1EE1EFF38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1EFF38);
  }

  return result;
}

uint64_t JSONContext.removingRenderPipelineDiagnostics()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14[-v8 - 8];
  sub_1E1AF397C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43C0);
  sub_1E1AF39FC();
  v10 = *(v4 + 8);
  v10(v9, v3);
  if (v15)
  {
    if (swift_dynamicCast())
    {
      sub_1E1AF397C();
      sub_1E1AF396C();
      return (v10)(v6, v3);
    }
  }

  else
  {
    sub_1E1308058(v14, &qword_1ECEB43C8);
  }

  v12 = sub_1E1AF39DC();
  return (*(*(v12 - 8) + 16))(a1, v1, v12);
}

uint64_t sub_1E154AED8(uint64_t a1, id a2)
{
  v6[0] = a2;
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v6[3] = swift_getMetatypeMetadata();
    v6[0] = a1;
    sub_1E14EE420(a2, v6);
    return sub_1E1308058(v6, &qword_1ECEB2DF0);
  }

  return result;
}

uint64_t sub_1E154AF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1E134FD1C(a3, v25 - v10, &qword_1ECEB2D20);
  v12 = sub_1E1AF649C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB2D20);
  }

  else
  {
    sub_1E1AF648C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E1AF63CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E1AF5EBC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1E1308058(a3, &qword_1ECEB2D20);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E1308058(a3, &qword_1ECEB2D20);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1E154B274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1E134FD1C(a3, v25 - v10, &qword_1ECEB2D20);
  v12 = sub_1E1AF649C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB2D20);
  }

  else
  {
    sub_1E1AF648C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E1AF63CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E1AF5EBC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1E1308058(a3, &qword_1ECEB2D20);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E1308058(a3, &qword_1ECEB2D20);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1E154B56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1E134FD1C(a3, v25 - v10, &qword_1ECEB2D20);
  v12 = sub_1E1AF649C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB2D20);
  }

  else
  {
    sub_1E1AF648C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E1AF63CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E1AF5EBC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5630);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1E1308058(a3, &qword_1ECEB2D20);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E1308058(a3, &qword_1ECEB2D20);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5630);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t ArcadeDownloadPackCategoriesPagePresenterViewState.countTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ArcadeDownloadPackCategoriesPagePresenter.__allocating_init(objectGraph:subscriptionStatus:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_page) = 0;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_selectedCategories) = MEMORY[0x1E69E7CD0];
  v7 = (v6 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_subscriptionStatus);
  *v7 = a2;
  v7[1] = a3;
  v8 = sub_1E138C578(a1, 0, 0, 0);

  return v8;
}

uint64_t ArcadeDownloadPackCategoriesPagePresenter.init(objectGraph:subscriptionStatus:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_page) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_selectedCategories) = MEMORY[0x1E69E7CD0];
  v7 = (v3 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_subscriptionStatus);
  *v7 = a2;
  v7[1] = a3;
  v8 = sub_1E138C578(a1, 0, 0, 0);

  return v8;
}

uint64_t sub_1E154BA0C()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEB55F8);
  __swift_project_value_buffer(v4, qword_1ECEB55F8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E154BBB0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E154BC1C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t sub_1E154BCBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_page;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1E154BD6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_page;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E154BE84()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_1E1AF504C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  result = swift_beginAccess();
  if ((v1[4] & 1) == 0)
  {
    v31 = v7;
    v32 = v5;
    v33 = v2;
    *(v1 + 32) = 1;
    v15 = v1 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      (*(*(v16 + 16) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    type metadata accessor for ASKBagContract();
    v18 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph);
    sub_1E1AF421C();
    sub_1E1AF55EC();
    if (qword_1ECEB14F0 != -1)
    {
      swift_once();
    }

    sub_1E1AF52FC();
    sub_1E1AF532C();

    (*(v11 + 8))(v13, v10);
    if (v34 == 1)
    {
      swift_beginAccess();
      if (v1[3])
      {
        *v9 = 1;
        v19 = v31;
        (*(v31 + 104))(v9, *MEMORY[0x1E69AB450], v6);

        sub_1E1AF509C();

        (*(v19 + 8))(v9, v6);
      }
    }

    v20 = *(v1 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_subscriptionStatus);
    v21 = *(v1 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_subscriptionStatus + 8);
    type metadata accessor for JSIntentDispatcher();

    sub_1E1AF55EC();
    sub_1E1368CE0(0xD000000000000026, 0x80000001E1B653F0, v20, v21, v18, "AppStoreKit/ArcadeDownloadPackCategoriesPagePresenter.swift", 59, 2);

    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    v22 = sub_1E13006E4(0, &qword_1EE1E3430);

    v23 = sub_1E1AF68EC();
    v35[3] = v22;
    v35[4] = MEMORY[0x1E69AB720];
    v35[0] = v23;
    sub_1E1AF57FC();

    __swift_destroy_boxed_opaque_existential_1(v35);

    sub_1E13006E4(0, &qword_1EE1E3480);
    sub_1E1AF55EC();
    v24 = v35[0];
    v25 = sub_1E1AF649C();
    v26 = v32;
    (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v28 = v33;
    v27[4] = v24;
    v27[5] = v28;
    v29 = v24;
    sub_1E154B274(0, 0, v26, &unk_1E1B165B8, v27);
  }

  return result;
}

uint64_t sub_1E154C464(uint64_t **a1)
{
  v2 = sub_1E1AF503C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AEFE6C();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - v9;
  v11 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v45 = v3;
    v46 = v2;
    swift_beginAccess();
    *(v13 + 32) = 0;
    v14 = v13 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v51 = v14;
    if (Strong)
    {
      v44 = v8;
      v16 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      v18 = v11;
      v19 = *(v16 + 16);
      v20 = *(v19 + 16);

      v21 = v19;
      v11 = v18;
      v20(ObjectType, v21);
      v8 = v44;
      swift_unknownObjectRelease();
    }

    else
    {
    }

    v22 = OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_page;
    swift_beginAccess();
    *(v13 + v22) = v11;

    type metadata accessor for ASKBagContract();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    if (qword_1ECEB14F0 != -1)
    {
      swift_once();
    }

    sub_1E1AF52FC();
    sub_1E1AF532C();

    (*(v8 + 8))(v10, v7);
    if (v52)
    {
      v23 = type metadata accessor for ArcadeDownloadPackCategoriesPage(0);
      v54 = v23;
      v55 = &protocol witness table for ArcadeDownloadPackCategoriesPage;
      v24 = sub_1E154FB58();
      v56 = v24;
      v53[0] = v11;
      swift_beginAccess();

      sub_1E13891EC(v53, v13 + 40);
      swift_endAccess();
      sub_1E138B568();
      sub_1E1308058(v53, &qword_1ECEB2588);
      swift_beginAccess();
      if (*(v13 + 16))
      {
        v55 = &protocol witness table for ArcadeDownloadPackCategoriesPage;
        v56 = v24;
        v54 = v23;
        v53[0] = v11;

        PendingPageRender.use(pageRenderEventFrom:)(v53);

        sub_1E1308058(v53, &qword_1ECEB2588);
        v25 = *(v13 + 16);
        if (v25)
        {

          v26 = v47;
          sub_1E1AEFE5C();
          sub_1E1AEFE1C();
          v28 = v27;
          (*(v48 + 8))(v26, v49);
          v29 = v25 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
          swift_beginAccess();
          *v29 = v28;
          *(v29 + 8) = 0;
          v30 = *(v25 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
          swift_beginAccess();
          *(v30 + 40) = 1;
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_1E149DEE8();
          }
        }
      }

      swift_beginAccess();
      v31 = *(v13 + 24);

      if (v31)
      {
        v32 = OBJC_IVAR____TtC11AppStoreKit32ArcadeDownloadPackCategoriesPage_pageMetrics;
        v33 = sub_1E1AF3C3C();
        v34 = v50;
        (*(*(v33 - 8) + 16))(v50, v11 + v32, v33);
        v36 = v45;
        v35 = v46;
        (*(v45 + 104))(v34, *MEMORY[0x1E69AB440], v46);
        sub_1E1AF508C();

        (*(v36 + 8))(v34, v35);
      }
    }

    else
    {
    }

    v37 = v51;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v38 = *(v37 + 8);
      v39 = swift_getObjectType();
      (*(v38 + 24))(v11, v39, v38);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v40 = *(v37 + 8);
      v41 = swift_getObjectType();
      v42 = _s11AppStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(v11[6], v11[7], v11[5]);
      LOWORD(v53[0]) = 256;
      v53[1] = v42;
      v53[2] = v43;
      (*(v40 + 32))(v53, v41, v40);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E154CB48(uint64_t a1)
{
  if (a1 < 1)
  {
    v11 = v1[6];
    v12 = v1[7];
    v13 = v1[5];

    return _s11AppStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(v11, v12, v13);
  }

  else
  {
    _s11AppStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(v1[8], v1[9], a1);
    v15.value.super.super.isa = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    isa = v15.value.super.super.isa;
    v15.is_nil = 0;
    object = localizedStringForDecimal(_:_:)(v15, v4).value._object;

    if (!object)
    {
      sub_1E1AF742C();
    }

    v16.value.super.super.isa = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v6 = v16.value.super.super.isa;
    v16.is_nil = 0;
    v8 = localizedStringForDecimal(_:_:)(v16, v7).value._object;

    if (!v8)
    {
      sub_1E1AF742C();
    }

    sub_1E13B8AA4();
    sub_1E1AF6E2C();

    v9 = sub_1E1AF6E2C();

    return v9;
  }
}

uint64_t sub_1E154CD98(void *a1)
{
  v2 = sub_1E1AF503C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v33 = v2;
    v34 = v5;
    v32 = v3;
    v35 = a1;
    swift_beginAccess();
    *(v11 + 32) = 0;
    v12 = v11 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 16);
      v16 = *(v15 + 16);

      v16(ObjectType, v15);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    type metadata accessor for ASKBagContract();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    if (qword_1ECEB14F0 != -1)
    {
      swift_once();
    }

    sub_1E1AF52FC();
    sub_1E1AF532C();

    (*(v7 + 8))(v9, v6);
    v17 = v35;
    if (v36)
    {
      swift_beginAccess();
      v18 = *(v11 + 16);
      if (v18)
      {
        v19 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
        swift_beginAccess();
        v20 = *(v18 + v19);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v18 + v19) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = sub_1E172D0E4(0, v20[2] + 1, 1, v20);
          *(v18 + v19) = v20;
        }

        v23 = v20[2];
        v22 = v20[3];
        if (v23 >= v22 >> 1)
        {
          v20 = sub_1E172D0E4((v22 > 1), v23 + 1, 1, v20);
        }

        v20[2] = v23 + 1;
        v20[v23 + 4] = v17;
        *(v18 + v19) = v20;
        swift_endAccess();
        v24 = v17;
      }

      swift_beginAccess();
      v25 = *(v11 + 24);

      v26 = v34;
      if (v25)
      {
        *v34 = v17;
        v28 = v32;
        v27 = v33;
        (*(v32 + 104))(v26, *MEMORY[0x1E69AB430], v33);
        v29 = v17;
        sub_1E1AF508C();

        (*(v28 + 8))(v26, v27);
      }
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v12 + 8);
      v31 = swift_getObjectType();
      (*(*(v30 + 16) + 24))(v17, v31);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E154D23C(uint64_t a1)
{
  v2 = v1;
  v76 = sub_1E1AEFEAC();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v69 - v9;
  v10 = sub_1E1AF3E1C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7C0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v80 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69 - v22;
  v24 = OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_page;
  result = swift_beginAccess();
  v26 = *(v2 + v24);
  if (v26)
  {
    v73 = v13;
    v72 = v7;
    v77 = v18;
    v27 = OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_selectedCategories;
    swift_beginAccess();
    v28 = *(v2 + v27);
    v29 = *(a1 + 16);
    v30 = *(a1 + 24);
    v81 = v26;

    v31 = sub_1E14AACA8(v29, v30, v28);

    swift_beginAccess();
    if (v31)
    {
      sub_1E154E6A8(v29, v30);
      swift_endAccess();

      v32 = &OBJC_IVAR____TtC11AppStoreKit26ArcadeDownloadPackCategory_deselectActionMetrics;
    }

    else
    {

      sub_1E189496C(&v90, v29, v30);
      swift_endAccess();

      v32 = &OBJC_IVAR____TtC11AppStoreKit26ArcadeDownloadPackCategory_selectActionMetrics;
    }

    sub_1E134FD1C(a1 + *v32, v23, &qword_1ECEBB7C0);
    v33 = v2 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v35 = v81;
    if (Strong)
    {
      v36 = *(v33 + 8);
      ObjectType = swift_getObjectType();
      v37 = *(*(v2 + v27) + 16);
      v38 = v37 != 0;
      v39 = *(v35 + 40);
      v40 = v23;
      v41 = v2;
      v42 = v11;
      v43 = v10;
      v44 = v37 < v39;
      v45 = sub_1E154CB48(v37);
      LOBYTE(v91) = v38;
      BYTE1(v91) = v44;
      v10 = v43;
      v11 = v42;
      v2 = v41;
      v23 = v40;
      *(&v91 + 1) = v45;
      *&v92 = v46;
      (*(v36 + 32))(&v91, ObjectType, v36);
      swift_unknownObjectRelease();
    }

    v47 = v80;
    sub_1E134FD1C(v23, v80, &qword_1ECEBB7C0);
    if ((*(v11 + 48))(v47, 1, v10) == 1)
    {
      sub_1E1308058(v23, &qword_1ECEBB7C0);

      v48 = v47;
      v49 = &qword_1ECEBB7C0;
    }

    else
    {
      ObjectType = v23;
      v50 = *(v11 + 32);
      v51 = v77;
      v50(v77, v47, v10);
      v52 = swift_unknownObjectWeakLoadStrong();
      if (v52)
      {
        v70 = v50;
        v80 = v52;
        v69 = *(v33 + 8);
        v93 = 0;
        v91 = 0u;
        v92 = 0u;
        v53 = *(v11 + 16);
        v54 = v78;
        v53(v78, v51, v10);
        v55 = sub_1E1AF46DC();
        v56 = v79;
        (*(*(v55 - 8) + 56))(v79, 1, 1, v55);
        type metadata accessor for BlankAction();
        v57 = swift_allocObject();
        sub_1E134FD1C(&v91, &v90, &unk_1ECEB5670);
        v53(v73, v54, v10);
        v58 = v72;
        sub_1E134FD1C(v56, v72, &unk_1ECEB1770);
        v59 = (v57 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
        *v59 = 0u;
        v59[1] = 0u;
        sub_1E134FD1C(&v90, &v84, &unk_1ECEB5670);
        if (*(&v85 + 1))
        {
          v87 = v84;
          v88 = v85;
          v89 = v86;
        }

        else
        {
          v60 = v74;
          sub_1E1AEFE9C();
          v61 = sub_1E1AEFE7C();
          v63 = v62;
          (*(v75 + 8))(v60, v76);
          v82 = v61;
          v83 = v63;
          sub_1E1AF6F6C();
          sub_1E1308058(&v84, &unk_1ECEB5670);
        }

        v80 = swift_getObjectType();
        sub_1E1308058(&v90, &unk_1ECEB5670);
        sub_1E1308058(v79, &unk_1ECEB1770);
        v64 = *(v11 + 8);
        v64(v78, v10);
        sub_1E1308058(&v91, &unk_1ECEB5670);
        v65 = v57 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
        v66 = v88;
        *v65 = v87;
        *(v65 + 16) = v66;
        *(v65 + 32) = v89;
        sub_1E134B7C8(v58, v57 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
        *(v57 + 16) = 0u;
        *(v57 + 32) = 0u;
        v70(v57 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v73, v10);
        *(&v92 + 1) = type metadata accessor for ArcadeDownloadPackCategoriesPagePresenter();
        *&v91 = v2;
        v67 = *(v69 + 8);
        v68 = *(v67 + 8);

        v68(v57, &v91, v80, v67);

        swift_unknownObjectRelease();

        v64(v77, v10);
        sub_1E1308058(ObjectType, &qword_1ECEBB7C0);
        v49 = &qword_1ECEB2DF0;
        v48 = &v91;
      }

      else
      {

        (*(v11 + 8))(v51, v10);
        v49 = &qword_1ECEBB7C0;
        v48 = ObjectType;
      }
    }

    return sub_1E1308058(v48, v49);
  }

  return result;
}

uint64_t sub_1E154DB90()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_page;
  swift_beginAccess();
  result = *(v0 + v2);
  if (result)
  {
    v4 = *(result + 32);
    v36 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      goto LABEL_35;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v6 = OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_selectedCategories;
    v30 = result;

    v35 = v6;
    result = swift_beginAccess();
    v31 = v4;
    if (v5)
    {
      v7 = 0;
      v33 = v4 & 0xFFFFFFFFFFFFFF8;
      v34 = v4 & 0xC000000000000001;
      v32 = v4 + 32;
      while (1)
      {
        if (v34)
        {
          v8 = MEMORY[0x1E68FFD80](v7, v31);
          v9 = __OFADD__(v7++, 1);
          if (v9)
          {
LABEL_24:
            __break(1u);
LABEL_25:
            v20 = v36;
            goto LABEL_27;
          }
        }

        else
        {
          if (v7 >= *(v33 + 16))
          {
            __break(1u);
LABEL_35:
            v29 = result;
            v5 = sub_1E1AF71CC();
            result = v29;
            goto LABEL_4;
          }

          v8 = *(v32 + 8 * v7);

          v9 = __OFADD__(v7++, 1);
          if (v9)
          {
            goto LABEL_24;
          }
        }

        v10 = *(v1 + v35);
        if (*(v10 + 16))
        {
          v11 = v1;
          v13 = *(v8 + 16);
          v12 = *(v8 + 24);
          sub_1E1AF762C();

          sub_1E1AF5F0C();
          v14 = sub_1E1AF767C();
          v4 = v10 + 56;
          v15 = -1 << *(v10 + 32);
          v16 = v14 & ~v15;
          if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            v17 = ~v15;
            while (1)
            {
              v18 = (*(v10 + 48) + 16 * v16);
              v19 = *v18 == v13 && v18[1] == v12;
              if (v19 || (sub_1E1AF74AC() & 1) != 0)
              {
                break;
              }

              v16 = (v16 + 1) & v17;
              if (((*(v4 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            sub_1E1AF70BC();
            sub_1E1AF70FC();
            sub_1E1AF710C();
            v4 = &v36;
            result = sub_1E1AF70CC();
            v1 = v11;
          }

          else
          {
LABEL_20:

            v1 = v11;
          }
        }

        else
        {
        }

        if (v7 == v5)
        {
          goto LABEL_25;
        }
      }
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_27:

    v21 = v1 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v21 + 8);
      ObjectType = swift_getObjectType();
      (*(v22 + 40))(v20, *(v1 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_subscriptionStatus), *(v1 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_subscriptionStatus + 8), ObjectType, v22);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v21 + 8);
      v25 = swift_getObjectType();
      v26 = *(v30 + 80);
      v37[3] = type metadata accessor for ArcadeDownloadPackCategoriesPagePresenter();
      v37[0] = v1;
      v27 = *(v24 + 8);
      v28 = *(v27 + 8);

      v28(v26, v37, v25, v27);

      swift_unknownObjectRelease();
      return sub_1E1308058(v37, &qword_1ECEB2DF0);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E154DF50()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_page;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = v0 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v7 = *(v3 + 88);
      v10[3] = type metadata accessor for ArcadeDownloadPackCategoriesPagePresenter();
      v10[0] = v0;
      v8 = *(v5 + 8);
      v9 = *(v8 + 8);

      v9(v7, v10, ObjectType, v8);

      swift_unknownObjectRelease();
      return sub_1E1308058(v10, &qword_1ECEB2DF0);
    }
  }

  return result;
}

uint64_t sub_1E154E064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E154E084, 0, 0);
}

uint64_t sub_1E154E084()
{
  if (qword_1ECEB0E68 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  v2 = __swift_project_value_buffer(v1, qword_1ECEB55F8);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1E154E160;

  return sub_1E1A793BC(v2);
}

uint64_t sub_1E154E160(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E154E260, 0, 0);
}

uint64_t sub_1E154E2B0()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view);
}

uint64_t ArcadeDownloadPackCategoriesPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view);

  return v0;
}

uint64_t ArcadeDownloadPackCategoriesPagePresenter.__deallocating_deinit()
{
  BasePresenter.deinit();
  v0 = OBJC_IVAR____TtC11AppStoreKit41ArcadeDownloadPackCategoriesPagePresenter_view;

  sub_1E1337DEC(v1 + v0);

  return swift_deallocClassInstance();
}

unint64_t sub_1E154E438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  result = sub_1E1AF6F2C();
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_1E134E724(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x1E68FFC60](v16, a1);
      result = sub_1E134B88C(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v16[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E189B2B0();
      v13 = v16[0];
    }

    v14 = *(v13 + 48) + 40 * v9;
    v15 = *(v14 + 16);
    *a2 = *v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = *(v14 + 32);
    result = sub_1E154EB7C(v9);
    *v3 = v16[0];
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1E154E570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  result = sub_1E1AF767C();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (*v12 == a1 && v12[1] == a2)
      {
        break;
      }

      result = sub_1E1AF74AC();
      if (result)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v19 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E189B6D0();
      v15 = v19;
    }

    v16 = (*(v15 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    *a3 = v18;
    a3[1] = v17;
    result = sub_1E154ED34(v10);
    *v3 = v19;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_1E154E6A8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  v6 = sub_1E1AF767C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1E1AF74AC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E189B96C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1E154ED34(v8);
  *v2 = v16;
  return v12;
}

double sub_1E154E7FC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  sub_1E1AF762C();
  PageFacets.Facet.Option.hash(into:)();
  v5 = sub_1E1AF767C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v37 = v4 + 56;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_36:
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v8 = ~v6;
  v9 = a1[1];
  v36 = a1[2];
  v34 = *a1;
  v35 = a1[3];
  v30 = a1[6];
  v31 = a1[4];
  v32 = a1[7];
  v33 = a1[5];
  v10 = *(v4 + 48);
  while (1)
  {
    v11 = (v10 + (v7 << 6));
    v12 = v11[1];
    v13 = v11[2];
    v15 = v11[3];
    v14 = v11[4];
    v17 = v11[5];
    v16 = v11[6];
    v18 = v11[7];
    if (v12)
    {
      if (!v9)
      {
        goto LABEL_4;
      }

      v19 = *v11 == v34 && v12 == v9;
      if (!v19 && (sub_1E1AF74AC() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v9)
    {
      goto LABEL_4;
    }

    v20 = v13 == v36 && v15 == v35;
    if (!v20 && (sub_1E1AF74AC() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (v17)
    {
      if (!v33)
      {
        goto LABEL_4;
      }

      v21 = v14 == v31 && v17 == v33;
      if (!v21 && (sub_1E1AF74AC() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v33)
    {
      goto LABEL_4;
    }

    if (v18)
    {
      break;
    }

    if (!v32)
    {
      goto LABEL_33;
    }

LABEL_4:
    v7 = (v7 + 1) & v8;
    if (((*(v37 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (!v32 || (v16 != v30 || v18 != v32) && (sub_1E1AF74AC() & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_33:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v28;
  v38 = *v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E189B12C();
    v23 = v38;
  }

  v24 = (*(v23 + 48) + (v7 << 6));
  v25 = v24[1];
  *a2 = *v24;
  a2[1] = v25;
  v26 = v24[3];
  a2[2] = v24[2];
  a2[3] = v26;
  sub_1E154EEF8(v7);
  *v28 = v38;
  return result;
}

uint64_t sub_1E154EA7C(uint64_t a1, void (*a2)(void))
{
  v5 = *v2;
  v6 = sub_1E1AF761C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (*(*(v5 + 48) + 8 * v8) != a1)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v8);
  sub_1E154F190(v8);
  result = v13;
  *v2 = v14;
  return result;
}

unint64_t sub_1E154EB7C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E1AF6F0C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1E134E724(*(v3 + 48) + 40 * v6, v22);
        v12 = sub_1E1AF6F2C();
        sub_1E134B88C(v22);
        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = v16 + 40 * v2;
            v18 = (v16 + 40 * v6);
            if (v2 != v6 || v17 >= v18 + 40)
            {
              v10 = *v18;
              v11 = v18[1];
              *(v17 + 32) = *(v18 + 4);
              *v17 = v10;
              *(v17 + 16) = v11;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1E154ED34(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E1AF6F0C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1E1AF762C();

        sub_1E1AF5F0C();
        v10 = sub_1E1AF767C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1E154EEF8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E1AF6F0C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v13 = (*(v3 + 48) + (v6 << 6));
        v15 = *v13;
        v14 = v13[1];
        v16 = v13[3];
        v28 = v13[2];
        v29 = v16;
        v27[0] = v15;
        v27[1] = v14;
        sub_1E1AF762C();
        if (*(&v27[0] + 1))
        {
          sub_1E1AF764C();
          sub_1E13C5038(v27, v26);
          sub_1E1AF5F0C();
        }

        else
        {
          sub_1E1AF764C();
          sub_1E13C5038(v27, v26);
        }

        v17 = *(&v28 + 1);
        sub_1E1AF5F0C();
        if (v17)
        {
          sub_1E1AF764C();
          sub_1E1AF5F0C();
          if (*(&v29 + 1))
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_1E1AF764C();
          if (*(&v29 + 1))
          {
LABEL_11:
            sub_1E1AF764C();
            sub_1E1AF5F0C();
            goto LABEL_14;
          }
        }

        sub_1E1AF764C();
LABEL_14:
        v18 = sub_1E1AF767C();
        sub_1E13C5094(v27);
        v19 = v18 & v7;
        if (v2 >= v9)
        {
          if (v19 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v9)
        {
          goto LABEL_19;
        }

        if (v2 >= v19)
        {
LABEL_19:
          v20 = *(v3 + 48);
          v21 = (v20 + (v2 << 6));
          v22 = (v20 + (v6 << 6));
          if (v2 != v6 || v21 >= v22 + 4)
          {
            v10 = *v22;
            v11 = v22[1];
            v12 = v22[3];
            v21[2] = v22[2];
            v21[3] = v12;
            *v21 = v10;
            v21[1] = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1E154F190(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E1AF6F0C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1E1AF761C() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1E154F314(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1E154F408;

  return v5(v2 + 32);
}

uint64_t sub_1E154F408()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E154F52C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E130B5DC;

  return sub_1E154E064(a1, v4, v5, v6);
}

uint64_t type metadata accessor for ArcadeDownloadPackCategoriesPagePresenter()
{
  result = qword_1ECEB5620;
  if (!qword_1ECEB5620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E154F638(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E154F680(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1E154F930(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E130B5D8;

  return sub_1E154F314(a1, v4);
}

uint64_t sub_1E154F9E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E130B5D8;

  return sub_1E154F314(a1, v4);
}

uint64_t sub_1E154FAA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E130B5DC;

  return sub_1E154F314(a1, v4);
}

unint64_t sub_1E154FB58()
{
  result = qword_1ECEB5638;
  if (!qword_1ECEB5638)
  {
    type metadata accessor for ArcadeDownloadPackCategoriesPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5638);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E154FBEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E154FC34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E154FC9C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_1E1AF1D6C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E15501AC(v4 + 64, &v15);
  if (v16)
  {
    sub_1E1361B28(&v15, v17);
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1E1AF11CC();
    __swift_project_boxed_opaque_existential_1Tm((v4 + 24), *(v4 + 48));
    sub_1E1AF12FC();
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a4;
    if (*v4)
    {
      CGRectGetMaxY(*&v10);
    }

    else
    {
      CGRectGetMinY(*&v10);
    }

    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    CGRectGetMinX(v19);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1E1AF115C();
    CGRectGetMinY(v20);
    v21.origin.x = a1;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    CGRectGetHeight(v21);
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1E1AF115C();
    CGRectGetMaxY(v22);
    sub_1E1AF1D4C();
    sub_1E1AF10CC();
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1E1382094(&v15);
    sub_1E154FF80();
    return sub_1E1AF107C();
  }
}

double sub_1E154FF80()
{
  v1 = v0;
  v2 = sub_1E1AF745C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E15501AC(v0 + 64, v13);
  if (!v14)
  {
    sub_1E1382094(v13);
    v10 = *(v0 + 8);
    v8 = *(v0 + 16);
    [*(v1 + 16) ascender];
    v7 = 0.0;
    if (v10 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  __swift_project_boxed_opaque_existential_1Tm(v13, v14);
  sub_1E1AF11CC();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v13);
  v9 = *(v0 + 8);
  v8 = *(v0 + 16);
  if (v9 >= 1)
  {
LABEL_3:
    [v8 lineHeight];
    [v8 leading];
  }

LABEL_5:
  __swift_project_boxed_opaque_existential_1Tm((v1 + 24), *(v1 + 48));
  sub_1E13BC274();
  sub_1E1AF12DC();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_1E15501AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E155021C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1550264(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1E15502D8()
{
  result = qword_1ECEB5640;
  if (!qword_1ECEB5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5640);
  }

  return result;
}

void *OfferAction.__allocating_init(title:adamId:parentAdamId:bundleId:purchaseToken:includeBetaApps:requiresExceptionRequest:forceAskToBuyReason:buyCompletedAction:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v49 = a8;
  v52 = a1;
  v50 = a13;
  v53 = a12;
  v54 = a2;
  v18 = sub_1E1AEFEAC();
  v47 = *(v18 - 8);
  v48 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v22 = *a3;
  v23 = a3[1];
  v25 = *a4;
  v24 = a4[1];
  v26 = *a10;
  v27 = (v21 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  *v27 = v22;
  v27[1] = v23;
  v51 = a7;
  sub_1E137A5C4(a7, v21 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_purchaseToken);
  v28 = (v21 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_parentAdamId);
  *v28 = v25;
  v28[1] = v24;
  v29 = (v21 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_bundleId);
  *v29 = a5;
  v29[1] = a6;
  v30 = (v21 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_lineItem);
  *v30 = 0;
  v30[1] = 0;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_includeBetaApps) = v49;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_requiresExceptionRequest) = a9;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_forceAskToBuyReason) = v26;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_buyCompletedAction) = a11;
  v31 = v50;
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v32 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v33 = sub_1E1AF3E1C();
  v34 = *(v33 - 8);
  (*(v34 + 16))(v21 + v32, v31, v33);
  v35 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v36 = sub_1E1AF46DC();
  (*(*(v36 - 8) + 56))(v21 + v35, 1, 1, v36);
  v37 = (v21 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v37 = 0u;
  v37[1] = 0u;
  v38 = v21 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v60, &v57);
  if (*(&v58 + 1))
  {
    v39 = v58;
    *v38 = v57;
    *(v38 + 1) = v39;
    *(v38 + 4) = v59;
  }

  else
  {
    sub_1E1AEFE9C();
    v40 = sub_1E1AEFE7C();
    v42 = v41;
    (*(v47 + 8))(v20, v48);
    v55 = v40;
    v56 = v42;
    sub_1E1AF6F6C();
    sub_1E1308058(&v57, &unk_1ECEB5670);
  }

  (*(v34 + 8))(v31, v33);
  __swift_destroy_boxed_opaque_existential_1(v51);
  sub_1E1308058(v60, &unk_1ECEB5670);
  v43 = v53;
  v44 = v54;
  v21[2] = v52;
  v21[3] = v44;
  v21[4] = 0;
  v21[5] = v43;
  return v21;
}

void *OfferAction.init(title:adamId:parentAdamId:bundleId:purchaseToken:includeBetaApps:requiresExceptionRequest:forceAskToBuyReason:buyCompletedAction:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v56 = a8;
  v53 = a6;
  v52 = a5;
  v60 = a2;
  v58 = a1;
  v51 = a13;
  v59 = a12;
  v54 = a9;
  v55 = a11;
  v50 = sub_1E1AEFEAC();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v48 - v21;
  v23 = sub_1E1AF3E1C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a3;
  v28 = a3[1];
  v29 = *a4;
  v30 = a4[1];
  v31 = *a10;
  v32 = (v14 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  *v32 = v27;
  v32[1] = v28;
  v57 = a7;
  sub_1E137A5C4(a7, v14 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_purchaseToken);
  v33 = (v14 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_parentAdamId);
  *v33 = v29;
  v33[1] = v30;
  v34 = v51;
  v35 = (v14 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_bundleId);
  v36 = v53;
  *v35 = v52;
  v35[1] = v36;
  v37 = (v14 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_lineItem);
  *v37 = 0;
  v37[1] = 0;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_includeBetaApps) = v56;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_requiresExceptionRequest) = v54;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_forceAskToBuyReason) = v31;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_buyCompletedAction) = v55;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  (*(v24 + 16))(v26, v34, v23);
  v38 = sub_1E1AF46DC();
  (*(*(v38 - 8) + 56))(v22, 1, 1, v38);
  v39 = (v14 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v39 = 0u;
  v39[1] = 0u;
  sub_1E138853C(v69, &v63);
  if (*(&v64 + 1))
  {
    v66 = v63;
    v67 = v64;
    v68 = v65;
  }

  else
  {
    sub_1E1AEFE9C();
    v40 = sub_1E1AEFE7C();
    v42 = v41;
    (*(v49 + 8))(v19, v50);
    v61 = v40;
    v62 = v42;
    sub_1E1AF6F6C();
    sub_1E1308058(&v63, &unk_1ECEB5670);
  }

  (*(v24 + 8))(v34, v23);
  __swift_destroy_boxed_opaque_existential_1(v57);
  sub_1E1308058(v69, &unk_1ECEB5670);
  v43 = v14 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v43 + 4) = v68;
  v44 = v67;
  *v43 = v66;
  *(v43 + 1) = v44;
  sub_1E134B7C8(v22, v14 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v45 = v59;
  v46 = v60;
  v14[2] = v58;
  v14[3] = v46;
  v14[4] = 0;
  v14[5] = v45;
  (*(v24 + 32))(v14 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v26, v23);
  return v14;
}

void (**OfferAction.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v4 = v2;
  v81 = a2;
  v6 = *v4;
  v77 = v3;
  v78 = v6;
  v7 = sub_1E1AF39DC();
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v75 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v73 = &v70 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v72 = &v70 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v71 = &v70 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v70 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v70 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v70 - v25;
  v85 = a1;
  sub_1E1AF381C();
  v27 = sub_1E1AF37CC();
  v29 = v28;
  v74 = v10;
  v30 = v9;
  v31 = v9;
  v32 = *(v10 + 8);
  v32(v26, v31);
  if (!v29)
  {
    v64 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v65 = 0x64496D616461;
    v66 = v78;
    v65[1] = 0xE600000000000000;
    v65[2] = v66;
    (*(*(v64 - 8) + 104))(v65, *MEMORY[0x1E69AB690], v64);
    swift_willThrow();
    (*(v79 + 8))(v81, v80);
    v32(v85, v30);
LABEL_11:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v33 = (v4 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  *v33 = v27;
  v33[1] = v29;
  sub_1E1AF381C();
  sub_1E1AF37EC();
  v34 = v24;
  v35 = v32;
  v32(v34, v30);
  if (!v83)
  {
    sub_1E1308058(&v82, &qword_1ECEB2DF0);
    v67 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v68 = 0x6E656B6F74;
    v68[1] = 0xE500000000000000;
    v68[2] = v78;
    (*(*(v67 - 8) + 104))(v68, *MEMORY[0x1E69AB690], v67);
    swift_willThrow();
    (*(v79 + 8))(v81, v80);
    v32(v85, v30);

    goto LABEL_11;
  }

  sub_1E1301CF0(&v82, v84);
  sub_1E137A5C4(v84, v4 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_purchaseToken);
  v36 = v85;
  sub_1E1AF381C();
  v37 = sub_1E1AF37CC();
  v39 = v38;
  v35(v21, v30);
  v40 = (v4 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_bundleId);
  *v40 = v37;
  v40[1] = v39;
  sub_1E1AF381C();
  v41 = sub_1E1AF37CC();
  v43 = v42;
  v35(v21, v30);
  v44 = (v4 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_lineItem);
  *v44 = v41;
  v44[1] = v43;
  v45 = v71;
  sub_1E1AF381C();
  v46 = sub_1E1AF37CC();
  v48 = v47;
  v35(v45, v30);
  if (v48)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0;
  }

  v50 = (v4 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_parentAdamId);
  *v50 = v49;
  v50[1] = v48;
  v51 = v72;
  sub_1E1AF381C();
  v52 = sub_1E1AF370C();
  v35(v51, v30);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_includeBetaApps) = v52 & 1;
  v53 = v73;
  sub_1E1AF381C();
  v54 = sub_1E1AF370C();
  v35(v53, v30);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_requiresExceptionRequest) = v54 & 1;
  sub_1E1AF381C();
  sub_1E15513C0();
  sub_1E1AF36DC();
  v35(v21, v30);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_forceAskToBuyReason) = v82;
  type metadata accessor for Action();
  sub_1E1AF381C();
  v55 = v30;
  v56 = v81;
  v57 = static Action.tryToMakeInstance(byDeserializing:using:)(v21, v81);
  v78 = v35;
  v35(v21, v55);
  *(v4 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_buyCompletedAction) = v57;
  v58 = v75;
  (*(v74 + 16))(v75, v36, v55);
  v60 = v79;
  v59 = v80;
  v61 = v76;
  (*(v79 + 16))(v76, v56, v80);
  v62 = v77;
  v63 = Action.init(deserializing:using:)(v58, v61);
  if (!v62)
  {
    v4 = v63;
  }

  (*(v60 + 8))(v56, v59);
  v78(v85, v55);
  __swift_destroy_boxed_opaque_existential_1(v84);
  return v4;
}

unint64_t sub_1E15513C0()
{
  result = qword_1EE1DCEA8;
  if (!qword_1EE1DCEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DCEA8);
  }

  return result;
}

uint64_t OfferAction.purchaseToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  return sub_1E137A5C4(v1 + v3, a1);
}

uint64_t OfferAction.purchaseToken.setter(_OWORD *a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_1E1301CF0(a1, (v1 + v3));
  return swift_endAccess();
}

uint64_t OfferAction.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  a1[1] = v2;
}

uint64_t OfferAction.parentAdamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_parentAdamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_parentAdamId);
  a1[1] = v2;
}

uint64_t OfferAction.bundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_bundleId);

  return v1;
}

uint64_t OfferAction.lineItem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_lineItem);

  return v1;
}

uint64_t OfferAction.isRedownload.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  sub_1E137A5C4(v0 + v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v5 + 16) || (v2 = sub_1E13018F8(0x6E776F6465527369, 0xEC00000064616F6CLL), (v3 & 1) == 0))
  {

    return 0;
  }

  sub_1E137A5C4(*(v5 + 56) + 32 * v2, v6);

  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

void *OfferAction.asExceptionRequest(forceAskToBuyReason:)(unsigned __int8 *a1)
{
  v38 = sub_1E1AEFEAC();
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF3E1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a1;
  v8 = v1[3];
  v45 = v1[2];
  v44 = v8;
  v9 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId + 8);
  v39 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  v10 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_parentAdamId + 8);
  v41 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_parentAdamId);
  v11 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_bundleId + 8);
  v40 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_bundleId);
  v12 = OBJC_IVAR____TtC11AppStoreKit11OfferAction_purchaseToken;
  swift_beginAccess();
  sub_1E137A5C4(v1 + v12, v54);
  v13 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_includeBetaApps);
  v14 = *(v1 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_buyCompletedAction);
  v43 = v1[5];
  v46 = v5;
  v15 = *(v5 + 16);
  v16 = v1 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v17 = v11;
  v18 = v14;
  v15(v7, v16, v4);
  v19 = swift_allocObject();
  v20 = (v19 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_adamId);
  *v20 = v39;
  v20[1] = v9;
  sub_1E137A5C4(v54, v19 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_purchaseToken);
  v21 = (v19 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_parentAdamId);
  *v21 = v41;
  v21[1] = v10;
  v22 = (v19 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_bundleId);
  *v22 = v40;
  v22[1] = v17;
  v23 = (v19 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_lineItem);
  *v23 = 0;
  v23[1] = 0;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_includeBetaApps) = v13;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_requiresExceptionRequest) = 1;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_forceAskToBuyReason) = v42;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_buyCompletedAction) = v18;
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v15(v19 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v7, v4);
  v24 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v25 = sub_1E1AF46DC();
  (*(*(v25 - 8) + 56))(v19 + v24, 1, 1, v25);
  v26 = (v19 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v26 = 0u;
  v26[1] = 0u;
  v27 = v19 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v52, &v49);
  if (*(&v50 + 1))
  {
    v28 = v50;
    *v27 = v49;
    *(v27 + 1) = v28;
    *(v27 + 4) = v51;

    v29 = v44;
  }

  else
  {

    v29 = v44;

    v30 = v36;
    sub_1E1AEFE9C();
    v31 = sub_1E1AEFE7C();
    v33 = v32;
    (*(v37 + 8))(v30, v38);
    v47 = v31;
    v48 = v33;
    sub_1E1AF6F6C();
    sub_1E1308058(&v49, &unk_1ECEB5670);
  }

  sub_1E1308058(v52, &unk_1ECEB5670);
  (*(v46 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v54);
  v19[2] = v45;
  v19[3] = v29;
  v34 = v43;
  v19[4] = 0;
  v19[5] = v34;
  return v19;
}

uint64_t sub_1E1551C68()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_purchaseToken);
}

uint64_t OfferAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC11AppStoreKit11OfferAction_purchaseToken);

  return v0;
}

uint64_t OfferAction.__deallocating_deinit()
{
  OfferAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfferAction()
{
  result = qword_1EE1F70A0;
  if (!qword_1EE1F70A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegacyAppStateControllerFactory.makeAppStateController(objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ASDPurchaseHistoryContext(0);
  sub_1E1AF413C();
  if (v15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v14;
  }

  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E13006E4(0, &qword_1EE1E3488);
  sub_1E1AF55EC();
  v6 = v17;
  sub_1E13006E4(0, &qword_1EE1E3470);
  sub_1E1AF55EC();
  v7 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5648);
  sub_1E1AF55EC();
  sub_1E1AF413C();
  if (v13)
  {
    v8 = 0;
  }

  else
  {
    v8 = v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5650);
  sub_1E1AF413C();
  if (v12)
  {
    v9 = v12;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = (*(a3 + 16))(v18, v17, v16, &v14, v5, v8, v9, a2, a3);

  __swift_destroy_boxed_opaque_existential_1(&v14);
  return v10;
}

uint64_t LegacyAppStateController.__allocating_init(dataSources:transitionRules:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LegacyAppStateController.init(dataSources:transitionRules:)(a1, a2);
  return v4;
}

uint64_t LegacyAppStateController.init(dataSources:transitionRules:)(uint64_t a1, uint64_t a2)
{
  v48[0] = a2;
  *&v59 = sub_1E1AF68DC();
  v52 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v51 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF68AC();
  v53 = *(v5 - 8);
  v54 = v53;
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  *(v2 + 48) = MEMORY[0x1E69E7CC8];
  sub_1E13006E4(0, &qword_1EE1E3430);
  v49 = "tem";
  sub_1E1AF322C();
  v60 = MEMORY[0x1E69E7CC0];
  v55 = sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  v57 = sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  v50 = *MEMORY[0x1E69E8090];
  v7 = v51;
  v52 = *(v52 + 104);
  v8 = v59;
  (v52)(v51);
  v58[8] = sub_1E1AF692C();
  v49 = "chineAccessQueue";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  v60 = v9;
  v48[1] = v5;
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  v10 = v7;
  v11 = v7;
  v12 = v50;
  v13 = v52;
  (v52)(v11, v50, v8);
  v14 = sub_1E1AF692C();
  v15 = v58;
  v58[9] = v14;
  v54 = "ntroller.dataSourceRefreshQueue";
  sub_1E1AF322C();
  v60 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  v13(v10, v12, v59);
  v16 = sub_1E1AF692C();
  v17 = MEMORY[0x1E69E7CC0];
  v15[10] = v16;
  v15[11] = v17;
  *(v15 + 96) = 0;
  v15[2] = a1;
  v18 = *(a1 + 16);

  if (v18)
  {
    v20 = 0;
    v21 = a1 + 32;
    v56 = v18 - 1;
    v22 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v57 = v22;
      v23 = v20;
      while (1)
      {
        if (v23 >= *(a1 + 16))
        {
          goto LABEL_38;
        }

        v59 = *(v21 + 16 * v23);
        v20 = v23 + 1;
        ObjectType = swift_getObjectType();
        v25 = *(&v59 + 1);
        v26 = *(*(&v59 + 1) + 80);
        swift_unknownObjectRetain();
        if ((v26(ObjectType, v25) & 1) == 0)
        {
          break;
        }

        result = swift_unknownObjectRelease();
        ++v23;
        if (v18 == v20)
        {
          v22 = v57;
LABEL_13:
          v30 = 0;
          v58[3] = v22;
          v17 = MEMORY[0x1E69E7CC0];
LABEL_14:
          v57 = v17;
          v31 = v30;
          while (v31 < *(a1 + 16))
          {
            v59 = *(v21 + 16 * v31);
            v30 = v31 + 1;
            v32 = swift_getObjectType();
            v33 = *(&v59 + 1);
            v34 = *(*(&v59 + 1) + 80);
            swift_unknownObjectRetain();
            if (v34(v32, v33))
            {
              v17 = v57;
              result = swift_isUniquelyReferenced_nonNull_native();
              v60 = v17;
              if ((result & 1) == 0)
              {
                result = sub_1E135C874(0, *(v17 + 16) + 1, 1);
                v17 = v60;
              }

              v35 = v59;
              v37 = *(v17 + 16);
              v36 = *(v17 + 24);
              if (v37 >= v36 >> 1)
              {
                result = sub_1E135C874((v36 > 1), v37 + 1, 1);
                v35 = v59;
                v17 = v60;
              }

              *(v17 + 16) = v37 + 1;
              *(v17 + 16 * v37 + 32) = v35;
              if (v56 != v31)
              {
                goto LABEL_14;
              }

              goto LABEL_26;
            }

            result = swift_unknownObjectRelease();
            ++v31;
            if (v18 == v30)
            {
              v17 = v57;
              goto LABEL_26;
            }
          }

          goto LABEL_39;
        }
      }

      v22 = v57;
      result = swift_isUniquelyReferenced_nonNull_native();
      v60 = v22;
      if ((result & 1) == 0)
      {
        result = sub_1E135C874(0, *(v22 + 16) + 1, 1);
        v22 = v60;
      }

      v27 = v59;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_1E135C874((v28 > 1), v29 + 1, 1);
        v27 = v59;
        v22 = v60;
      }

      *(v22 + 16) = v29 + 1;
      *(v22 + 16 * v29 + 32) = v27;
      if (v56 != v23)
      {
        continue;
      }

      goto LABEL_13;
    }
  }

  v15[3] = v17;
LABEL_26:
  v38 = 0;
  v39 = v58;
  v58[4] = v17;
  v40 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v41 = (a1 + 32 + 16 * v38);
  while (1)
  {
    if (v18 == v38)
    {

      v39[5] = v40;
      v39[7] = v48[0];
      LegacyAppStateController.loadDataSources()();
      return v39;
    }

    if (v38 >= *(a1 + 16))
    {
      break;
    }

    ++v38;
    v42 = v41 + 2;
    v43 = *v41;
    type metadata accessor for PurchaseHistoryAppStateDataSource();
    result = swift_dynamicCastClass();
    v41 = v42;
    if (result)
    {
      v44 = *(v42 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      v60 = v40;
      if ((result & 1) == 0)
      {
        result = sub_1E135C874(0, *(v40 + 16) + 1, 1);
        v40 = v60;
      }

      v46 = *(v40 + 16);
      v45 = *(v40 + 24);
      if (v46 >= v45 >> 1)
      {
        result = sub_1E135C874((v45 > 1), v46 + 1, 1);
        v40 = v60;
      }

      *(v40 + 16) = v46 + 1;
      v47 = v40 + 16 * v46;
      *(v47 + 32) = v43;
      *(v47 + 40) = v44;
      v39 = v58;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

Swift::Void __swiftcall LegacyAppStateController.loadDataSources()()
{
  v1 = v0;
  v14 = 0;
  v2 = *(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = &v14;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1E15570B8;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1E1402014;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1551FBC;
  aBlock[3] = &block_descriptor_24;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else if (v14 == 1)
  {
    v6 = *(v1 + 16);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = (v6 + 40);
      do
      {
        v9 = *v8;
        ObjectType = swift_getObjectType();
        v11 = *(v9 + 16);

        swift_unknownObjectRetain();
        v11(v1, &protocol witness table for LegacyAppStateController, ObjectType, v9);
        swift_unknownObjectRelease();
        v8 += 2;
        --v7;
      }

      while (v7);
    }

    v12 = swift_allocObject();
    swift_weakInit();

    LegacyAppStateController.refreshDataSources(completion:)(sub_1E15570DC, v12);
  }

  else
  {
  }
}

uint64_t LegacyAppStateController.stateMachine(forApp:)()
{
  type metadata accessor for LegacyAppStateMachine();
  sub_1E1AF690C();
  return v1;
}

uint64_t sub_1E1552CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X8>)
{
  swift_beginAccess();
  v13 = *(a1 + 48);
  if (*(v13 + 16) && (v14 = sub_1E15A47D8(a2, a3), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();
    *a6 = v16;
  }

  else
  {
    v40 = v6;
    swift_endAccess();
    v18 = *(a1 + 56);
    type metadata accessor for LegacyAppStateMachine();
    v19 = swift_allocObject();
    *(v19 + 160) = MEMORY[0x1E69E7CC0];
    *(v19 + 184) = 0;
    swift_unknownObjectWeakInit();
    v20 = objc_allocWithZone(MEMORY[0x1E696AE68]);

    *(v19 + 192) = [v20 init];
    v21 = a2;
    v22 = OBJC_IVAR____TtC11AppStoreKit21LegacyAppStateMachine__startDownloadTime;
    v23 = sub_1E1AEFE6C();
    (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
    v24 = (v19 + OBJC_IVAR____TtC11AppStoreKit21LegacyAppStateMachine_redownloadBuyParams);
    *v24 = 0;
    v24[1] = 0;
    *(v19 + 16) = v21;
    *(v19 + 24) = a3;
    v25 = a4[1];
    *(v19 + 32) = *a4;
    *(v19 + 48) = v25;
    v26 = a4[3];
    *(v19 + 64) = a4[2];
    *(v19 + 80) = v26;
    v27 = a5[1];
    *(v19 + 96) = *a5;
    *(v19 + 112) = v27;
    v28 = a5[3];
    *(v19 + 128) = a5[2];
    *(v19 + 144) = v28;
    *(v19 + 168) = v18;
    swift_beginAccess();
    *(v19 + 184) = &protocol witness table for LegacyAppStateController;
    swift_unknownObjectWeakAssign();

    sub_1E141CF5C(a4, &v36);
    sub_1E141CF5C(a5, &v36);
    if (qword_1ECEB1138 != -1)
    {
      swift_once();
    }

    v29 = sub_1E1AF591C();
    __swift_project_value_buffer(v29, qword_1ECEF4A78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    *(&v37 + 1) = &type metadata for AdamId;
    *&v36 = v21;
    *(&v36 + 1) = a3;
    sub_1E1AF383C();
    sub_1E1308058(&v36, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v30 = *(v19 + 48);
    v36 = *(v19 + 32);
    v37 = v30;
    v31 = *(v19 + 80);
    v38 = *(v19 + 64);
    v39 = v31;
    v32 = LegacyAppState.dictionaryKey.getter();
    v35[3] = MEMORY[0x1E69E6158];
    v35[0] = v32;
    v35[1] = v33;
    sub_1E1AF38BC();
    sub_1E1308058(v35, &qword_1ECEB2DF0);
    sub_1E1AF549C();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = *(a1 + 48);
    *(a1 + 48) = 0x8000000000000000;
    sub_1E159A9A0(v19, v21, a3, isUniquelyReferenced_nonNull_native);

    *(a1 + 48) = v35[0];
    result = swift_endAccess();
    *a6 = v19;
  }

  return result;
}

Swift::Void __swiftcall LegacyAppStateController.refreshState(for:)(AppStoreKit::AdamId a1)
{
  v2 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v3 = *a1.underlyingAdamID._countAndFlagsBits;
  v1 = v3;
  v4 = v2;
  sub_1E1553138(&v3);
  v3 = v1;
  v4 = v2;
  sub_1E1553628(&v3);
}

uint64_t sub_1E1553138(uint64_t result)
{
  v32 = *(result + 8);
  v33 = *result;
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v31 = MEMORY[0x1E69E7CC0];
    v5 = v2 + 40;
    v30 = *(v2 + 16);
    do
    {
      v6 = v3 - v4;
      v7 = (v5 + 16 * v4);
      while (1)
      {
        if (v4 >= *(v2 + 16))
        {
          __break(1u);
          return result;
        }

        v8 = *v7;
        ObjectType = swift_getObjectType();
        *v59 = v33;
        *&v59[8] = v32;
        v10 = *(v8 + 48);
        swift_unknownObjectRetain();
        v10(&v43, v59, ObjectType, v8);
        swift_unknownObjectRelease();
        if ((v46 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
        {
          break;
        }

        *v59 = v43;
        *&v59[16] = v44;
        *&v59[32] = v45;
        v60 = v46;
        result = sub_1E1308058(v59, &unk_1ECEB7B50);
        v7 += 2;
        ++v4;
        if (!--v6)
        {
          goto LABEL_15;
        }
      }

      *v59 = v43;
      *&v59[16] = v44;
      *&v59[32] = v45;
      v60 = v46;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E172DD60(0, *(v31 + 16) + 1, 1, v31);
        v31 = result;
      }

      v12 = *(v31 + 16);
      v11 = *(v31 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_1E172DD60((v11 > 1), v12 + 1, 1, v31);
        v31 = result;
      }

      ++v4;
      v57 = *&v59[32];
      v58 = v60;
      v13 = *v59;
      v55 = *v59;
      v56 = *&v59[16];
      *(v31 + 16) = v12 + 1;
      v14 = (v31 + (v12 << 6));
      v15 = v56;
      v16 = v58;
      v14[4] = v57;
      v14[5] = v16;
      v14[2] = v13;
      v14[3] = v15;
      v5 = v2 + 40;
      v3 = v30;
    }

    while (v6 != 1);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  memset(&v59[8], 0, 40);
  *v59 = 4;
  v60 = xmmword_1E1B11BA0;
  MEMORY[0x1EEE9AC00](result);
  type metadata accessor for LegacyAppStateMachine();
  sub_1E1AF690C();
  v17 = v43;
  if (*(v31 + 16) == 1)
  {
    v18 = *(v31 + 32);
    v19 = *(v31 + 48);
    v20 = *(v31 + 80);
    v45 = *(v31 + 64);
    v46 = v20;
    v43 = v18;
    v44 = v19;
    v21 = *(v31 + 32);
    v53 = *(v31 + 48);
    v54 = v45;
    v52 = v21;
    v22 = v20;
    sub_1E141CF5C(&v43, &v55);
    if ((v22 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      v43 = v52;
      v44 = v53;
      v45 = v54;
      v46 = v22;
      v48 = 0u;
      v49 = 0u;
      v47 = 4;
      v50 = 0;
      v51 = xmmword_1E1B11BA0;
      sub_1E1308058(&v43, &qword_1ECEB5668);
    }

    else
    {
      v43 = v52;
      v44 = v53;
      v45 = v54;
      v46 = v22;
      v55 = v52;
      v56 = v53;
      v57 = v54;
      v58 = v22;
      *&v35[0] = 4;
      *(v35 + 8) = 0u;
      *(&v35[1] + 8) = 0u;
      *(&v35[2] + 1) = 0;
      v36 = xmmword_1E1B11BA0;
      sub_1E15572B0(&v43, &v34);
      v23 = _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v55, v35);
      v37[0] = v35[0];
      v37[1] = v35[1];
      v37[2] = v35[2];
      v37[3] = v36;
      sub_1E139CEA8(v37);
      v38[0] = v55;
      v38[1] = v56;
      v38[2] = v57;
      v38[3] = v58;
      sub_1E139CEA8(v38);
      v39 = v52;
      v40 = v53;
      v41 = v54;
      v42 = v22;
      sub_1E1308058(&v39, &unk_1ECEB7B50);
      if (v23)
      {

        v24 = *(v17 + 192);
        [v24 lock];
        v26 = *(v17 + 32);
        v25 = *(v17 + 48);
        v27 = *(v17 + 80);
        v45 = *(v17 + 64);
        v46 = v27;
        v43 = v26;
        v44 = v25;
        v28 = v60;
        *(v17 + 64) = *&v59[32];
        *(v17 + 80) = v28;
        v29 = *&v59[16];
        *(v17 + 32) = *v59;
        *(v17 + 48) = v29;
        sub_1E139CEA8(&v43);
        sub_1E17982AC();
        [v24 unlock];
      }
    }
  }

  sub_1E1553B1C(v31, &v55);

  v43 = v55;
  v44 = v56;
  v45 = v57;
  v46 = v58;
  v39 = v55;
  v40 = v56;
  v41 = v57;
  if ((v58 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
  }

  v55 = v39;
  v56 = v40;
  v57 = v41;
  *(&v58 + 1) = *(&v46 + 1);
  LegacyAppStateMachine.transition(to:)(&v55);

  return sub_1E1308058(&v43, &unk_1ECEB7B50);
}

uint64_t sub_1E1553628(uint64_t result)
{
  v32 = *(result + 8);
  v33 = *result;
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v31 = MEMORY[0x1E69E7CC0];
    v5 = v2 + 40;
    v30 = *(v2 + 16);
    do
    {
      v6 = v3 - v4;
      v7 = (v5 + 16 * v4);
      while (1)
      {
        if (v4 >= *(v2 + 16))
        {
          __break(1u);
          return result;
        }

        v8 = *v7;
        ObjectType = swift_getObjectType();
        *v59 = v33;
        *&v59[8] = v32;
        v10 = *(v8 + 48);
        swift_unknownObjectRetain();
        v10(&v43, v59, ObjectType, v8);
        swift_unknownObjectRelease();
        if ((v46 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
        {
          break;
        }

        *v59 = v43;
        *&v59[16] = v44;
        *&v59[32] = v45;
        v60 = v46;
        result = sub_1E1308058(v59, &unk_1ECEB7B50);
        v7 += 2;
        ++v4;
        if (!--v6)
        {
          goto LABEL_15;
        }
      }

      *v59 = v43;
      *&v59[16] = v44;
      *&v59[32] = v45;
      v60 = v46;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E172DD60(0, *(v31 + 16) + 1, 1, v31);
        v31 = result;
      }

      v12 = *(v31 + 16);
      v11 = *(v31 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_1E172DD60((v11 > 1), v12 + 1, 1, v31);
        v31 = result;
      }

      ++v4;
      v57 = *&v59[32];
      v58 = v60;
      v13 = *v59;
      v55 = *v59;
      v56 = *&v59[16];
      *(v31 + 16) = v12 + 1;
      v14 = (v31 + (v12 << 6));
      v15 = v56;
      v16 = v58;
      v14[4] = v57;
      v14[5] = v16;
      v14[2] = v13;
      v14[3] = v15;
      v5 = v2 + 40;
      v3 = v30;
    }

    while (v6 != 1);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  memset(&v59[8], 0, 40);
  *v59 = 4;
  v60 = xmmword_1E1B11BA0;
  MEMORY[0x1EEE9AC00](result);
  type metadata accessor for LegacyAppStateMachine();
  sub_1E1AF690C();
  v17 = v43;
  v18 = *(v31 + 16);
  if (v18 == 1)
  {
    v19 = *(v31 + 32);
    v20 = *(v31 + 48);
    v21 = *(v31 + 80);
    v45 = *(v31 + 64);
    v46 = v21;
    v43 = v19;
    v44 = v20;
    v22 = *(v31 + 32);
    v53 = *(v31 + 48);
    v54 = v45;
    v52 = v22;
    v23 = v21;
    sub_1E141CF5C(&v43, &v55);
    if ((v23 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      v43 = v52;
      v44 = v53;
      v45 = v54;
      v46 = v23;
      v48 = 0u;
      v49 = 0u;
      v47 = 4;
      v50 = 0;
      v51 = xmmword_1E1B11BA0;
      sub_1E1308058(&v43, &qword_1ECEB5668);
    }

    else
    {
      v43 = v52;
      v44 = v53;
      v45 = v54;
      v46 = v23;
      v55 = v52;
      v56 = v53;
      v57 = v54;
      v58 = v23;
      *&v35[0] = 4;
      *(v35 + 8) = 0u;
      *(&v35[1] + 8) = 0u;
      *(&v35[2] + 1) = 0;
      v36 = xmmword_1E1B11BA0;
      sub_1E15572B0(&v43, &v34);
      v24 = _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v55, v35);
      v37[0] = v35[0];
      v37[1] = v35[1];
      v37[2] = v35[2];
      v37[3] = v36;
      sub_1E139CEA8(v37);
      v38[0] = v55;
      v38[1] = v56;
      v38[2] = v57;
      v38[3] = v58;
      sub_1E139CEA8(v38);
      v39 = v52;
      v40 = v53;
      v41 = v54;
      v42 = v23;
      sub_1E1308058(&v39, &unk_1ECEB7B50);
      if (v24)
      {
LABEL_23:

        v25 = *(v17 + 192);
        [v25 lock];
        v26 = *(v17 + 112);
        v43 = *(v17 + 96);
        v44 = v26;
        v27 = *(v17 + 144);
        v45 = *(v17 + 128);
        v46 = v27;
        v28 = *&v59[16];
        *(v17 + 96) = *v59;
        *(v17 + 112) = v28;
        v29 = v60;
        *(v17 + 128) = *&v59[32];
        *(v17 + 144) = v29;
        sub_1E139CEA8(&v43);
        sub_1E17982AC();
        [v25 unlock];
      }
    }

    v18 = *(v31 + 16);
  }

  if (!v18)
  {
    goto LABEL_23;
  }

  sub_1E1553B1C(v31, &v55);

  v43 = v55;
  v44 = v56;
  v45 = v57;
  v46 = v58;
  v39 = v55;
  v40 = v56;
  v41 = v57;
  if ((v58 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
  {
    v55 = v39;
    v56 = v40;
    v57 = v41;
    *(&v58 + 1) = *(&v46 + 1);
    LegacyAppStateMachine.transition(toBetaState:)(&v55);

    return sub_1E1308058(&v43, &unk_1ECEB7B50);
  }
}

uint64_t sub_1E1553B1C@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (result + 32);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = xmmword_1E1B0E0F0;
    v5 = v3 - 1;
    v6 = (result + 32);
    v7 = 0x3FFFFFEFELL;
    while (1)
    {
      v8 = v6[1];
      v37 = *v6;
      v38 = v8;
      v9 = v6[3];
      v39 = v6[2];
      v40 = v9;
      v41[0] = v42;
      v41[1] = v43;
      v41[2] = v44;
      v41[3] = v45;
      v41[4] = v37;
      v41[5] = v8;
      v41[6] = v39;
      v41[7] = v9;
      if ((v7 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
      {
        v10 = v40 >> 60;
        if (v40 >> 60)
        {
          if ((v10 - 5) < 2)
          {
            goto LABEL_19;
          }

          if (v10 == 4)
          {
LABEL_20:
            v18 = *(&v37 + 1);
            v20 = v38;
            v19 = v39;
            sub_1E141CF5C(&v37, v28);
            v21 = v19;
            v22 = v18;
            v23 = v20;
            v24 = *(&v20 + 1);
            goto LABEL_21;
          }

          sub_1E141CF5C(&v37, v28);
          v11 = &v42;
        }

        else
        {
          v11 = &v37;
        }
      }

      else
      {
        if (!(v7 >> 60))
        {
          v12 = v40 >> 60;
          if (v40 >> 60 == 4)
          {
            goto LABEL_20;
          }

          if (v12 == 5)
          {
LABEL_19:
            sub_1E141CF5C(&v37, v28);
            sub_1E141CF5C(&v37, v28);
LABEL_21:
            result = sub_1E1308058(v41, &qword_1ECEB5660);
            v34 = v37;
            v35 = v38;
            v25 = v40;
            v36 = v39;
            goto LABEL_23;
          }

          if (v12 == 6)
          {
            goto LABEL_20;
          }
        }

        sub_1E141CF5C(&v37, v28);
        v11 = &v42;
        sub_1E15572B0(&v42, v28);
      }

      result = sub_1E1308058(v41, &qword_1ECEB5660);
      v13 = v11[1];
      v31 = *v11;
      v32 = v13;
      v33 = v11[2];
      v7 = *(v11 + 6);
      v14 = *(v11 + 7);
      if (!v5)
      {
        break;
      }

      v42 = v31;
      v43 = v32;
      v44 = v33;
      *&v45 = v7;
      *(&v45 + 1) = v14;
      --v5;
      v6 += 4;
    }

    if ((v7 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      v15 = v4[1];
      v28[0] = *v4;
      v28[1] = v15;
      v17 = v4[3];
      v29 = v4[2];
      v16 = v29;
      v30 = v17;
      *a2 = v28[0];
      a2[1] = v15;
      a2[2] = v16;
      a2[3] = v17;
      return sub_1E141CF5C(v28, &v27);
    }

    v34 = v31;
    v35 = v32;
    v36 = v33;
    *&v25 = v7;
    *(&v25 + 1) = v14;
LABEL_23:
    v26 = v35;
    *a2 = v34;
    a2[1] = v26;
    a2[2] = v36;
    a2[3] = v25;
  }

  else
  {
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = xmmword_1E1B0E0F0;
  }

  return result;
}

Swift::Void __swiftcall LegacyAppStateController.refreshStates(for:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    v2 = (a1._rawValue + 40);
    do
    {
      v3 = *v2;
      v5 = *(v2 - 1);
      v4 = v5;
      v6 = v3;

      sub_1E1553138(&v5);
      v5 = v4;
      v6 = v3;
      sub_1E1553628(&v5);

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

uint64_t LegacyAppStateController.prospectiveState(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v42 = *(result + 8);
  v43 = *result;
  v3 = *(v2 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v41 = MEMORY[0x1E69E7CC0];
    v6 = v3 + 40;
    v39 = *(v3 + 16);
    do
    {
      v7 = v4 - v5;
      v8 = (v6 + 16 * v5);
      while (1)
      {
        if (v5 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v9 = *v8;
        ObjectType = swift_getObjectType();
        *&v68 = v43;
        *(&v68 + 1) = v42;
        v11 = *(v9 + 48);
        swift_unknownObjectRetain();
        v11(v72, &v68, ObjectType, v9);
        swift_unknownObjectRelease();
        if ((v73 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
        {
          break;
        }

        v68 = *v72;
        v69 = *&v72[16];
        v70 = *&v72[32];
        v71 = v73;
        result = sub_1E1308058(&v68, &unk_1ECEB7B50);
        v8 += 2;
        ++v5;
        if (!--v7)
        {
          goto LABEL_15;
        }
      }

      v68 = *v72;
      v69 = *&v72[16];
      v70 = *&v72[32];
      v71 = v73;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E172DD60(0, *(v41 + 16) + 1, 1, v41);
        v41 = result;
      }

      v13 = *(v41 + 16);
      v12 = *(v41 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1E172DD60((v12 > 1), v13 + 1, 1, v41);
        v41 = result;
      }

      ++v5;
      v66 = v70;
      v67 = v71;
      v14 = v68;
      v64 = v68;
      v65 = v69;
      *(v41 + 16) = v13 + 1;
      v15 = (v41 + (v13 << 6));
      v16 = v65;
      v17 = v67;
      v15[4] = v66;
      v15[5] = v17;
      v15[2] = v14;
      v15[3] = v16;
      v6 = v3 + 40;
      v4 = v39;
    }

    while (v7 != 1);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  memset(&v72[8], 0, 40);
  *v72 = 4;
  v73 = xmmword_1E1B11BA0;
  MEMORY[0x1EEE9AC00](result);
  type metadata accessor for LegacyAppStateMachine();
  sub_1E1AF690C();
  v18 = v68;
  sub_1E1553B1C(v41, &v64);

  v68 = v64;
  v69 = v65;
  v70 = v66;
  v71 = v67;
  v61 = v64;
  v62 = v65;
  v63 = v66;
  v19 = v67;
  if ((v67 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    goto LABEL_23;
  }

  v20 = *(&v71 + 1);
  v21 = *(v18 + 168);
  v64 = v61;
  v65 = v62;
  v66 = v63;
  *(&v67 + 1) = *(&v71 + 1);
  v22 = LegacyAppState.dictionaryKey.getter();
  if (!*(v21 + 16))
  {

    goto LABEL_22;
  }

  v24 = sub_1E13018F8(v22, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_22:
    sub_1E1308058(&v68, &unk_1ECEB7B50);
    goto LABEL_23;
  }

  sub_1E1300B24(*(v21 + 56) + 40 * v24, v56);
  sub_1E1308EC0(v56, v57);
  v27 = v58;
  v28 = v59;
  __swift_project_boxed_opaque_existential_1Tm(v57, v58);
  v29 = *(v18 + 192);
  [v29 lock];
  v30 = *(v18 + 48);
  v52 = *(v18 + 32);
  v53 = v30;
  v31 = *(v18 + 80);
  v54 = *(v18 + 64);
  v55 = v31;
  sub_1E141CF5C(&v52, &v48);
  [v29 unlock];
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v51 = v55;
  v44 = v61;
  v45 = v62;
  v46 = v63;
  *&v47 = v19;
  *(&v47 + 1) = v20;
  v32 = (*(v28 + 8))(&v48, &v44, v27, v28);
  v60[0] = v48;
  v60[1] = v49;
  v60[2] = v50;
  v60[3] = v51;
  sub_1E139CEA8(v60);
  if (v32 & 1) != 0 || (v48 = v61, v49 = v62, v50 = v63, *&v51 = v19, *(&v51 + 1) = v20, v44 = *v72, v45 = *&v72[16], v46 = *&v72[32], v47 = v73, (_s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v48, &v44)))
  {

    v33 = v62;
    *a2 = v61;
    *(a2 + 16) = v33;
    *(a2 + 32) = v63;
    *(a2 + 48) = v19;
    *(a2 + 56) = v20;
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  sub_1E1308058(&v68, &unk_1ECEB7B50);
  __swift_destroy_boxed_opaque_existential_1(v57);
LABEL_23:
  v34 = *(v18 + 192);
  [v34 lock];
  v35 = *(v18 + 32);
  v36 = *(v18 + 48);
  v37 = *(v18 + 80);
  v66 = *(v18 + 64);
  v67 = v37;
  v64 = v35;
  v65 = v36;
  *(a2 + 32) = v66;
  *(a2 + 48) = v37;
  v38 = *(v18 + 48);
  *a2 = *(v18 + 32);
  *(a2 + 16) = v38;
  sub_1E141CF5C(&v64, v60);
  [v34 unlock];
}

Swift::Void __swiftcall LegacyAppStateController.setWaiting(for:installationType:)(AppStoreKit::AdamId a1, AppStoreKit::InstallationType installationType)
{
  v3 = v2;
  v4 = *a1.underlyingAdamID._countAndFlagsBits;
  v5 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v6 = *a1.underlyingAdamID._object;
  v29 = 0u;
  v30 = 0u;
  v28 = 4;
  v31 = 0;
  v32 = xmmword_1E1B11BA0;
  v20 = v5;
  v21 = v4;
  type metadata accessor for LegacyAppStateMachine();
  sub_1E1AF690C();
  v7 = *&v37[0];
  v8 = *(*&v37[0] + 192);
  [v8 lock];
  v9 = v7[3];
  v33 = v7[2];
  v34 = v9;
  v10 = v7[5];
  v35 = v7[4];
  v36 = v10;
  sub_1E141CF5C(&v33, v37);
  [v8 unlock];
  v24 = v33;
  v25 = v34;
  v26 = v35;
  v27 = v36;
  *&v22[0] = v6;
  v23 = 0;
  LOBYTE(v8) = _s11AppStoreKit06LegacyA5StateO2eeoiySbAC_ACtFZ_0(&v24, v22);
  v37[0] = v24;
  v37[1] = v25;
  v37[2] = v26;
  v37[3] = v27;
  sub_1E139CEA8(v37);
  if (v8)
  {
LABEL_7:
  }

  else
  {
    v11 = *(v3 + 24);
    v12 = (v11 + 40);
    v13 = -*(v11 + 16);
    v14 = -1;
    while (1)
    {
      if (v13 + v14 == -1)
      {
LABEL_6:
        *&v24 = v6;
        *&v27 = 0;
        LegacyAppStateMachine.transition(to:)(&v24);
        goto LABEL_7;
      }

      if (++v14 >= *(v11 + 16))
      {
        break;
      }

      v15 = v12 + 2;
      v16 = *v12;
      ObjectType = swift_getObjectType();
      *&v24 = v21;
      *(&v24 + 1) = v20;
      LOBYTE(v22[0]) = v6;
      v18 = *(v16 + 64);
      swift_unknownObjectRetain();
      v19 = v18(&v24, v22, ObjectType, v16);
      swift_unknownObjectRelease();
      v12 = v15;
      if (v19)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall LegacyAppStateController.clearWaiting(for:refreshState:)(AppStoreKit::AdamId a1, Swift::Bool refreshState)
{
  object = a1.underlyingAdamID._object;
  v3 = *a1.underlyingAdamID._countAndFlagsBits;
  v4 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v5 = *(v2 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v12 = v3;
      v13 = v4;
      v10 = *(v8 + 72);
      swift_unknownObjectRetain();
      v10(&v12, ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  if (object)
  {
    v12 = v3;
    v13 = v4;
    sub_1E1553138(&v12);
    v12 = v3;
    v13 = v4;
    sub_1E1553628(&v12);
  }
}

uint64_t LegacyAppStateController.refreshUpdateRegistry(for:externalVersionId:buyParams:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v7 = sub_1E1AF324C();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_1E1AF320C();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a1;
  v11 = a1[1];
  v5[18] = v9;
  v5[19] = v10;
  v5[20] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E1554708, 0, 0);
}

uint64_t sub_1E1554708()
{
  v1 = *(v0[12] + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v16 = (v0[14] + 8);
    v17 = v0[17];
    type metadata accessor for DeviceAppStateDataSource();
    do
    {
      if (swift_dynamicCastClass())
      {
        v4 = v0[19];
        v5 = v0[20];
        v19 = v0[18];
        v20 = v0[16];
        v21 = v0[15];
        v22 = v0[13];
        v7 = v0[10];
        v6 = v0[11];
        v8 = v0[9];
        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v18 = v2;
        v10 = swift_allocObject();
        v10[2] = v9;
        v10[3] = v8;
        v10[4] = v7;
        v10[5] = v6;
        v10[6] = v4;
        v10[7] = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1E1B02CC0;
        swift_unknownObjectRetain();

        sub_1E1AF31FC();
        v0[8] = v11;
        sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
        sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
        sub_1E1AF6EEC();
        v12 = swift_allocObject();
        *(v12 + 16) = sub_1E15570FC;
        *(v12 + 24) = v10;
        v0[6] = sub_1E137AFA8;
        v0[7] = v12;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = sub_1E1302D64;
        v0[5] = &block_descriptor_20;
        v13 = _Block_copy(v0 + 2);

        sub_1E1AF322C();
        MEMORY[0x1E68FF640](0, v21, v19, v13);
        _Block_release(v13);
        v2 = v18;

        (*v16)(v21, v22);
        (*(v17 + 8))(v19, v20);
        swift_unknownObjectRelease();
      }

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  v14 = v0[1];

  return v14();
}

Swift::Bool __swiftcall LegacyAppStateController.isRedownloadable(for:hasActivePreorder:)(AppStoreKit::AdamId a1, Swift::Bool_optional hasActivePreorder)
{
  v3 = *(v2 + 24);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v15 = *a1.underlyingAdamID._countAndFlagsBits;
  v14 = (LOBYTE(a1.underlyingAdamID._object) == 2) | LOBYTE(a1.underlyingAdamID._object);
  v7 = (v3 + 40);
  v8 = v4 - 1;
  while (1)
  {
    v9 = *v7;
    ObjectType = swift_getObjectType();
    v16[0] = v15;
    v16[1] = v6;
    v11 = *(v9 + 48);
    swift_unknownObjectRetain();
    v11(v17, v16, ObjectType, v9);
    swift_unknownObjectRelease();
    v19[0] = v17[0];
    v19[1] = v17[1];
    v19[2] = v17[2];
    v19[3] = v18;
    if ((v18 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      goto LABEL_8;
    }

    if (v18 >> 60 != 1)
    {
      break;
    }

    v12 = v19[0];
    sub_1E1308058(v19, &unk_1ECEB7B50);
    if (!(v14 & 1 | ((v12 & 1) == 0)))
    {
      return 1;
    }

LABEL_8:
    if (v8 == v5)
    {
      return 0;
    }

    ++v5;
    v7 += 2;
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      return 0;
    }
  }

  if (v18 >> 60 != 3)
  {
    sub_1E1308058(v19, &unk_1ECEB7B50);
    goto LABEL_8;
  }

  sub_1E1308058(v19, &unk_1ECEB7B50);
  return 1;
}

Swift::Bool __swiftcall LegacyAppStateController.purchaseHistoryIncludes(_:)(AppStoreKit::AdamId a1)
{
  v2 = *(v1 + 40);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v13 = *a1.underlyingAdamID._countAndFlagsBits;
  v6 = (v2 + 40);
  v7 = v3 - 1;
  while (1)
  {
    v8 = *v6;
    ObjectType = swift_getObjectType();
    v14[0] = v13;
    v14[1] = v5;
    v10 = *(v8 + 48);
    swift_unknownObjectRetain();
    v10(v15, v14, ObjectType, v8);
    swift_unknownObjectRelease();
    v17[0] = v15[0];
    v17[1] = v15[1];
    v17[2] = v15[2];
    v17[3] = v16;
    if ((v16 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      goto LABEL_8;
    }

    if (v16 >> 60 != 1)
    {
      break;
    }

    v11 = v17[0];
    sub_1E1308058(v17, &unk_1ECEB7B50);
    if ((v11 & 1) == 0)
    {
      return 1;
    }

LABEL_8:
    if (v7 == v4)
    {
      return 0;
    }

    ++v4;
    v6 += 2;
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
      return 0;
    }
  }

  if (v16 >> 60 != 3)
  {
    sub_1E1308058(v17, &unk_1ECEB7B50);
    goto LABEL_8;
  }

  sub_1E1308058(v17, &unk_1ECEB7B50);
  return 1;
}

Swift::Bool __swiftcall LegacyAppStateController.isLocalApplication(for:includeBetaApps:)(AppStoreKit::AdamId a1, Swift::Bool includeBetaApps)
{
  v3 = 24;
  if (a1.underlyingAdamID._object)
  {
    v3 = 16;
  }

  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = *(a1.underlyingAdamID._countAndFlagsBits + 8);
  v14 = *a1.underlyingAdamID._countAndFlagsBits;

  v7 = 0;
  v8 = (v4 + 40);
  while (1)
  {
    v9 = *v8;
    ObjectType = swift_getObjectType();
    v15[0] = v14;
    v15[1] = v6;
    v11 = *(v9 + 48);
    swift_unknownObjectRetain();
    v11(v16, v15, ObjectType, v9);
    swift_unknownObjectRelease();
    v18 = v16[0];
    v19 = v16[1];
    v20 = v16[2];
    v21 = v17;
    if ((v17 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
    {
      break;
    }

LABEL_15:
    if (v5 - 1 == v7)
    {
      goto LABEL_18;
    }

    ++v7;
    v8 += 2;
    if (v7 >= *(v4 + 16))
    {
      __break(1u);
LABEL_18:

      return 0;
    }
  }

  v12 = v17 >> 60;
  if (v17 >> 60 != 8)
  {
    if (v12 == 2 || v12 == 7)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (*(&v21 + 1) || v17 != 0x8000000000000000 || v18 != 1 || v19 | *(&v18 + 1) | *(&v19 + 1) | v20 | *(&v20 + 1))
  {
LABEL_14:
    sub_1E1308058(&v18, &unk_1ECEB7B50);
    goto LABEL_15;
  }

LABEL_20:
  sub_1E1308058(&v18, &unk_1ECEB7B50);

  return 1;
}

Swift::String_optional __swiftcall LegacyAppStateController.betaAppBundleVersion(for:)(Swift::String_optional result)
{
  v2 = 0;
  v20 = *(result.value._countAndFlagsBits + 8);
  v21 = *result.value._countAndFlagsBits;
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);
  v5 = v3 + 40;
  countAndFlagsBits = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = (v5 + 16 * v2);
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v7 = v6 + 2;
    v8 = *v6;
    ObjectType = swift_getObjectType();
    v22[0] = v21;
    v22[1] = v20;
    v10 = *(v8 + 88);
    swift_unknownObjectRetain();
    v11 = v10(v22, ObjectType, v8);
    v13 = v12;
    result.value._countAndFlagsBits = swift_unknownObjectRelease();
    v6 = v7;
    if (v13)
    {
      result.value._countAndFlagsBits = swift_isUniquelyReferenced_nonNull_native();
      if ((result.value._countAndFlagsBits & 1) == 0)
      {
        result.value._countAndFlagsBits = sub_1E130C06C(0, *(countAndFlagsBits + 16) + 1, 1, countAndFlagsBits);
        countAndFlagsBits = result.value._countAndFlagsBits;
      }

      v15 = *(countAndFlagsBits + 16);
      v14 = *(countAndFlagsBits + 24);
      if (v15 >= v14 >> 1)
      {
        result.value._countAndFlagsBits = sub_1E130C06C((v14 > 1), v15 + 1, 1, countAndFlagsBits);
        countAndFlagsBits = result.value._countAndFlagsBits;
      }

      v5 = v3 + 40;
      *(countAndFlagsBits + 16) = v15 + 1;
      v16 = countAndFlagsBits + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      goto LABEL_2;
    }
  }

  if (*(countAndFlagsBits + 16))
  {
    v17 = *(countAndFlagsBits + 32);
    v18 = *(countAndFlagsBits + 40);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  result.value._countAndFlagsBits = v17;
  result.value._object = v18;
  return result;
}

uint64_t LegacyAppStateController.fetchBetaAppBundleVersion(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E1555138, 0, 0);
}

uint64_t sub_1E1555138(uint64_t a1, uint64_t a2)
{
  v9 = v2;
  v3 = v2[4];
  v8[0] = v2[3];
  v8[1] = v3;
  v4 = v8;
  v5 = LegacyAppStateController.betaAppBundleVersion(for:)(*(&a2 - 1));
  v6 = v2[1];

  return v6(v5.value._countAndFlagsBits, v5.value._object);
}

uint64_t LegacyAppStateController.refreshDataSources(for:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v7 = *v4;
  v8 = sub_1E1AF320C();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E1AF324C();
  v11 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  v23 = v4[9];
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v18 = v22;
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = a3;
  v17[5] = v15;
  v17[6] = v14;
  v17[7] = v7;
  aBlock[4] = sub_1E155715C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_27_0;
  v19 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v13, v10, v19);
  _Block_release(v19);
  (*(v25 + 8))(v10, v8);
  (*(v11 + 8))(v13, v24);
}

void sub_1E15554E8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E1AF326C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  if (!*(*(Strong + 24) + 16))
  {

LABEL_9:
    a2(Strong);
    return;
  }

  v36 = v12;
  v17 = Strong;
  v18 = dispatch_group_create();
  v38 = v17;
  v19 = *(*(v17 + 24) + 16);
  if (v19)
  {
    v31 = v15;
    v32 = v10;
    v33 = v9;
    v34 = a3;
    v35 = a2;

    v20 = (v30 + 40);
    v37 = a4;
    do
    {
      v21 = *v20;
      swift_unknownObjectRetain();
      dispatch_group_enter(v18);
      ObjectType = swift_getObjectType();
      v39[0] = v37;
      v39[1] = a5;
      v23 = swift_allocObject();
      *(v23 + 16) = v38;
      *(v23 + 24) = v18;
      v24 = a5;
      v25 = *(v21 + 40);

      v26 = v18;
      v25(v39, sub_1E15573BC, v23, ObjectType, v21);
      a5 = v24;

      swift_unknownObjectRelease();
      v20 += 2;
      --v19;
    }

    while (v19);

    a2 = v35;
    v10 = v32;
    v9 = v33;
    v15 = v31;
  }

  v27 = v36;
  sub_1E1AF325C();
  sub_1E1AF32DC();
  v28 = *(v10 + 8);
  v28(v27, v9);
  sub_1E1AF686C();
  v29 = (v28)(v15, v9);
  a2(v29);
}

uint64_t LegacyAppStateController.refreshDataSources(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1E1AF320C();
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF324C();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3[9];
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = v6;
  aBlock[4] = sub_1E155718C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_34;
  v15 = _Block_copy(aBlock);

  sub_1E1300E34(a1);
  sub_1E1AF322C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v12, v9, v15);
  _Block_release(v15);
  (*(v19 + 8))(v9, v7);
  (*(v10 + 8))(v12, v18);
}

void sub_1E1555AB0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = sub_1E1AF326C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (*(*(Strong + 16) + 16))
    {
      v31 = v8;
      v14 = dispatch_group_create();
      v15 = *(*(v13 + 16) + 16);
      if (v15)
      {
        v26 = v11;
        v27 = v6;
        v28 = v5;
        v29 = a3;
        v30 = a2;

        v16 = (v25 + 40);
        do
        {
          v17 = *v16;
          swift_unknownObjectRetain();
          dispatch_group_enter(v14);
          ObjectType = swift_getObjectType();
          v19 = swift_allocObject();
          *(v19 + 16) = v13;
          *(v19 + 24) = v14;
          v20 = *(v17 + 32);

          v21 = v14;
          v20(sub_1E1557294, v19, ObjectType, v17);
          swift_unknownObjectRelease();

          v16 += 2;
          --v15;
        }

        while (v15);

        a2 = v30;
        v6 = v27;
        v5 = v28;
        v11 = v26;
      }

      v22 = v31;
      sub_1E1AF325C();
      sub_1E1AF32DC();
      v23 = *(v6 + 8);
      v23(v22, v5);
      sub_1E1AF686C();
      v24 = (v23)(v11, v5);
      if (a2)
      {
        a2(v24);
      }

      return;
    }
  }

  if (a2)
  {
    a2(Strong);
  }
}

void sub_1E1555D30(__int128 *a1, int a2, dispatch_group_t group)
{
  v4 = *(a1 + 48);
  if (v4 != 255)
  {
    v5 = a1[1];
    v11 = *a1;
    v12 = v5;
    v13 = a1[2];
    v14 = v4;
    v6 = AppStateDataSourceError.errorDescription.getter();
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      if (qword_1EE1E35B0 != -1)
      {
        swift_once();
      }

      v10 = sub_1E1AF591C();
      __swift_project_value_buffer(v10, qword_1EE216158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      *(&v12 + 1) = MEMORY[0x1E69E6158];
      *&v11 = v8;
      *(&v11 + 1) = v9;
      sub_1E1AF38BC();
      sub_1E1308058(&v11, &qword_1ECEB2DF0);
      sub_1E1AF54AC();
    }
  }

  dispatch_group_leave(group);
}

uint64_t LegacyAppStateController.performAfterLoading(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v12 = 0;
  v6 = *(v3 + 80);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = &v12;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E1557198;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1E140205C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1551FBC;
  aBlock[3] = &block_descriptor_44_0;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v12 == 1)
    {
      a1(result);
    }
  }

  return result;
}

uint64_t sub_1E1556064(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 96) == 2)
  {
    *a2 = 1;
  }

  else
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;
    swift_beginAccess();
    v8 = *(v6 + 88);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 88) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1E172E5CC(0, v8[2] + 1, 1, v8);
      *(v6 + 88) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1E172E5CC((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1E137AFA8;
    v12[5] = v7;
    *(v6 + 88) = v8;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1E1556188()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E15561E0();
  }

  return result;
}

uint64_t sub_1E15561E0()
{
  v1 = sub_1E1AF320C();
  v12 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF324C();
  v4 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 80);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1E1557344;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_82_1;
  v8 = _Block_copy(aBlock);

  sub_1E1AF322C();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_1E15564B4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 96) == 2)
    {
    }

    else
    {
      *(result + 96) = 2;
      v1 = result;
      swift_beginAccess();
      v2 = *(v1 + 88);
      v3 = *(v2 + 16);
      if (v3)
      {

        v4 = v2 + 40;
        do
        {
          v5 = *(v4 - 8);

          v5(v6);

          v4 += 16;
          --v3;
        }

        while (v3);

        v7 = v1;
      }

      else
      {
        v7 = v1;
      }

      *(v7 + 88) = MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

id *LegacyAppStateController.deinit()
{

  return v0;
}

uint64_t LegacyAppStateController.__deallocating_deinit()
{
  LegacyAppStateController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E155665C(uint64_t *a1)
{
  v2 = a1[1];
  v4 = *a1;
  v1 = v4;
  v5 = v2;
  sub_1E1553138(&v4);
  v4 = v1;
  v5 = v2;
  return sub_1E1553628(&v4);
}

uint64_t sub_1E15566A8()
{
  type metadata accessor for LegacyAppStateMachine();
  sub_1E1AF690C();
  return v1;
}

uint64_t sub_1E1556758(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E130B5DC;

  return LegacyAppStateController.refreshUpdateRegistry(for:externalVersionId:buyParams:)(a1, a2, a3, a4);
}

uint64_t sub_1E155681C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E1555138, 0, 0);
}

uint64_t sub_1E1556848(char a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20[0] = a2;
  v5 = sub_1E1AF324C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF320C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v3 + OBJC_IVAR____TtC11AppStoreKit24DeviceAppStateDataSource_accessQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF31FC();
  aBlock[0] = v13;
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  if (a1)
  {
    sub_1E1AF6EEC();
    v14 = swift_allocObject();
    v15 = v21;
    *(v14 + 16) = v20[0];
    *(v14 + 24) = v15;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_76_0;
    v16 = _Block_copy(aBlock);

    sub_1E1AF322C();
    MEMORY[0x1E68FF640](0, v8, v12, v16);
    _Block_release(v16);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v18 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v18);
    v19 = v21;
    v20[-2] = v20[0];
    v20[-1] = v19;
    sub_1E1AF68FC();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1E1556C80(char a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20[0] = a2;
  v5 = sub_1E1AF324C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF320C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v3 + OBJC_IVAR____TtC11AppStoreKit33PurchaseHistoryAppStateDataSource_accessQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF31FC();
  aBlock[0] = v13;
  sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
  if (a1)
  {
    sub_1E1AF6EEC();
    v14 = swift_allocObject();
    v15 = v21;
    *(v14 + 16) = v20[0];
    *(v14 + 24) = v15;
    aBlock[4] = sub_1E13E2A70;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_57_1;
    v16 = _Block_copy(aBlock);

    sub_1E1AF322C();
    MEMORY[0x1E68FF640](0, v8, v12, v16);
    _Block_release(v16);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v18 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v18);
    v19 = v21;
    v20[-2] = v20[0];
    v20[-1] = v19;
    sub_1E1AF68FC();
    return (*(v10 + 8))(v12, v9);
  }
}

void sub_1E15570B8()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 96))
  {
    v2 = *(v0 + 24);
    *(v1 + 96) = 1;
    *v2 = 1;
  }
}

uint64_t sub_1E1557114(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E1557224()
{
  result = qword_1ECEB5658;
  if (!qword_1ECEB5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5658);
  }

  return result;
}

uint64_t sub_1E15572B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ImpressionableSmallPlayerCard.__allocating_init(id:suggestedFriend:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v11 = *(a2 + 48);
  v23[2] = *(a2 + 32);
  v23[3] = v11;
  v24 = *(a2 + 64);
  v12 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v12;
  v13 = v10 + OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_id;
  sub_1E134FD1C(a1, &v20, &unk_1ECEB5670);
  if (*(&v21 + 1))
  {
    v14 = v21;
    *v13 = v20;
    *(v13 + 16) = v14;
    *(v13 + 32) = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v15 = sub_1E1AEFE7C();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v19[1] = v15;
    v19[2] = v17;
    sub_1E1AF6F6C();
    sub_1E1308058(&v20, &unk_1ECEB5670);
  }

  sub_1E134FD1C(a3, v10 + OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_impressionMetrics, &unk_1ECEB1770);
  sub_1E1557890(v23);
  sub_1E1308058(a3, &unk_1ECEB1770);
  sub_1E1308058(a1, &unk_1ECEB5670);
  return v10;
}

uint64_t ImpressionableSmallPlayerCard.init(id:suggestedFriend:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23[0] = sub_1E1AF06FC();
  v8 = *(v23[0] - 8);
  MEMORY[0x1EEE9AC00](v23[0]);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AEFEAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 48);
  v30[2] = *(a2 + 32);
  v30[3] = v15;
  v31 = *(a2 + 64);
  v16 = *(a2 + 16);
  v30[0] = *a2;
  v30[1] = v16;
  sub_1E134FD1C(a1, &v24, &unk_1ECEB5670);
  if (*(&v25 + 1))
  {
    v27 = v24;
    v28 = v25;
    v29 = v26;
  }

  else
  {
    sub_1E1AEFE9C();
    v17 = sub_1E1AEFE7C();
    v19 = v18;
    (*(v12 + 8))(v14, v11);
    v23[1] = v17;
    v23[2] = v19;
    sub_1E1AF6F6C();
    sub_1E1308058(&v24, &unk_1ECEB5670);
  }

  v20 = v4 + OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_id;
  v21 = v28;
  *v20 = v27;
  *(v20 + 16) = v21;
  *(v20 + 32) = v29;
  sub_1E134FD1C(a3, v4 + OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_impressionMetrics, &unk_1ECEB1770);
  sub_1E1557890(v30);
  sub_1E1308058(a3, &unk_1ECEB1770);
  sub_1E1308058(a1, &unk_1ECEB5670);
  (*(v8 + 32))(v4 + OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_data, v10, v23[0]);
  return v4;
}

uint64_t sub_1E1557890(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5680);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v8 - v3;
  v5 = a1[1];
  *&v13 = *a1;
  *(&v13 + 1) = v5;

  sub_1E1AF6F6C();
  v6 = sub_1E1AF071C();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0;
  memset(v8, 0, sizeof(v8));

  sub_1E1AF06BC();
}

uint64_t ImpressionableSmallPlayerCard.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ImpressionableSmallPlayerCard.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ImpressionableSmallPlayerCard.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v54 = sub_1E1AF06FC();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v66 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v61 = &v52 - v14;
  v15 = sub_1E1AEFEAC();
  v59 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1E1AF380C();
  v69 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v60 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - v21;
  v67 = a1;
  sub_1E1AF381C();
  v23 = sub_1E1AF37CC();
  v64 = v10;
  v57 = v5;
  v25 = v6;
  v26 = a2;
  if (v24)
  {
    v70 = v23;
    v71 = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v27 = sub_1E1AEFE7C();
    v29 = v28;
    (*(v59 + 8))(v17, v15);
    v70 = v27;
    v71 = v29;
  }

  sub_1E1AF6F6C();
  v59 = *(v69 + 8);
  (v59)(v22, v75);
  v30 = v68;
  v31 = v68 + OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_id;
  v32 = v73;
  *v31 = v72;
  *(v31 + 16) = v32;
  v55 = v31;
  *(v31 + 32) = v74;
  v56 = sub_1E1AF46DC();
  v33 = v67;
  sub_1E1AF381C();
  v58 = v25;
  v34 = *(v25 + 16);
  v35 = v26;
  v36 = v57;
  v34(v62, v26, v57);
  v37 = v61;
  sub_1E1AF464C();
  v38 = v30 + OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_impressionMetrics;
  v39 = OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_impressionMetrics;
  v40 = v37;
  v41 = v33;
  v42 = v35;
  sub_1E134B7C8(v40, v38);
  v43 = v64;
  v34(v64, v35, v36);
  v44 = v60;
  (*(v69 + 16))(v60, v41, v75);
  v45 = v63;
  v34(v63, v43, v36);
  v46 = v65;
  v47 = v66;
  SmallPlayerCardData.init(deserializing:using:)(v44, v45, v66);
  if (v46)
  {
    v48 = *(v58 + 8);
    v48(v42, v36);
    (v59)(v41, v75);
    v48(v43, v36);
    sub_1E134B88C(v55);
    v49 = v68;
    sub_1E1308058(v68 + v39, &unk_1ECEB1770);
    type metadata accessor for ImpressionableSmallPlayerCard();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v50 = *(v58 + 8);
    v50(v42, v36);
    (v59)(v41, v75);
    v50(v43, v36);
    v49 = v68;
    (*(v53 + 32))(v68 + OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_data, v47, v54);
  }

  return v49;
}

uint64_t SmallPlayerCardData.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v194 = a2;
  v183 = a3;
  v214 = *MEMORY[0x1E69E9840];
  v4 = sub_1E1AF063C();
  v180 = *(v4 - 8);
  v181 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v179 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v170 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v175 = (&v157 - v9);
  v186 = sub_1E1AF3E1C();
  v189 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v169 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v176 = &v157 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v174 = &v157 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v173 = &v157 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5680);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v182 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v193 = (&v157 - v20);
  v21 = sub_1E1AEFEAC();
  v188 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E1AF380C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v171 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v177 = &v157 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v184 = &v157 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v191 = &v157 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v190 = &v157 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v157 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v157 - v39;
  v41 = a1;
  sub_1E1AF381C();
  v42 = sub_1E1AF37CC();
  v195 = v24;
  v185 = v21;
  v168 = v23;
  if (v43)
  {
    *&v210 = v42;
    *(&v210 + 1) = v43;
  }

  else
  {
    sub_1E1AEFE9C();
    v46 = sub_1E1AEFE7C();
    v48 = v47;
    (*(v188 + 8))(v23, v21);
    *&v210 = v46;
    *(&v210 + 1) = v48;
    a1 = v41;
    v24 = v195;
  }

  sub_1E1AF6F6C();
  v44 = *(v25 + 8);
  v45 = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v40, v24);
  v49 = 0x656C746974;
  v50 = a1;
  sub_1E1AF381C();
  v178 = sub_1E1AF37CC();
  v52 = v51;
  v44(v37, v24);
  if (!v52)
  {
    v95 = 0xE500000000000000;
    v96 = v50;
LABEL_23:
    v97 = sub_1E1AF5A7C();
    sub_1E155A6C0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v99 = v98;
    v100 = sub_1E1AF06FC();
    *v99 = v49;
    v99[1] = v95;
    v99[2] = v100;
    (*(*(v97 - 8) + 104))(v99, *MEMORY[0x1E69AB690], v97);
    swift_willThrow();
    v101 = sub_1E1AF39DC();
    (*(*(v101 - 8) + 8))(v194, v101);
    v44(v96, v195);
    return sub_1E134B88C(v213);
  }

  v172 = v52;
  v49 = 0x65546E6F74747562;
  v53 = v190;
  sub_1E1AF381C();
  v54 = sub_1E1AF37CC();
  v56 = v55;
  v44(v53, v24);
  if (v56)
  {
    v57 = v54;
  }

  else
  {
    v57 = 0;
  }

  v167 = v57;
  v58 = 0xE000000000000000;
  if (v56)
  {
    v58 = v56;
  }

  v190 = v58;
  v59 = v191;
  sub_1E1AF381C();
  v60 = sub_1E1AF37CC();
  v62 = v61;
  v44(v59, v24);
  v166 = v62;
  if (!v62)
  {
    v95 = 0xEA00000000007478;
    v96 = v50;

    goto LABEL_23;
  }

  v164 = v60;
  v63 = v24;
  v64 = sub_1E1AF071C();
  v162 = *(v64 - 8);
  v65 = *(v162 + 7);
  v192 = v45;
  v163 = v65;
  v65(v193, 1, 1, v64);
  v66 = v184;
  sub_1E1AF381C();
  v67 = sub_1E1AF37CC();
  v69 = v68;
  v191 = v44;
  v44(v66, v63);
  v70 = v50;
  if (!v69)
  {
    v163 = 0;
    v79 = v185;
    v83 = v194;
    goto LABEL_29;
  }

  v71 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1E1B02CC0;
  *(v72 + 32) = v67;
  *(v72 + 40) = v69;
  v73 = sub_1E1AF620C();

  v74 = [v71 predicateForContactsWithIdentifiers_];

  v75 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  sub_1E19C12E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB7E0);
  v76 = sub_1E1AF620C();

  *&v210 = 0;
  v77 = [v75 unifiedContactsMatchingPredicate:v74 keysToFetch:v76 error:&v210];

  v78 = v210;
  v79 = v185;
  if (v77)
  {
    sub_1E155A5D4();
    v80 = sub_1E1AF621C();
    v81 = v78;

    if (v80 >> 62)
    {
      v82 = sub_1E1AF71CC();
    }

    else
    {
      v82 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v83 = v194;
    if (!v82)
    {

      v163 = 0;
      goto LABEL_29;
    }

    if ((v80 & 0xC000000000000001) != 0)
    {
      v84 = MEMORY[0x1E68FFD80](0, v80);
    }

    else
    {
      if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v84 = *(v80 + 32);
    }

    v85 = v84;

    v86 = v193;
    sub_1E1308058(v193, &unk_1ECEB5680);
    *v86 = v85;
    (*(v162 + 13))(v86, *MEMORY[0x1E69A0308], v64);
    (v163)(v86, 0, 1, v64);
    v87 = v85;
    v88 = [v87 imageData];
    if (v88)
    {
      v89 = v88;
      v90 = sub_1E1AEFD3C();
      v92 = v91;

      v93 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v94 = sub_1E1AEFD2C();
      v163 = [v93 initWithData_];

      sub_1E14283DC(v90, v92);
    }

    else
    {

      v163 = 0;
    }
  }

  else
  {
    v102 = v210;
    v103 = sub_1E1AEFB2C();

    swift_willThrow();
    v163 = 0;
    v187 = 0;
  }

  v83 = v194;
LABEL_29:
  v104 = type metadata accessor for Action();
  v105 = v177;
  sub_1E1AF381C();
  v184 = v104;
  v162 = static Action.tryToMakeInstance(byDeserializing:using:)(v105, v83);
  v106 = v195;
  (v191)(v105, v195);
  if (qword_1EE1E3BF8 != -1)
  {
    swift_once();
  }

  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5690);
  __swift_project_value_buffer(v107, qword_1EE2161E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0);
  sub_1E1AF39FC();
  v108 = v210;
  v165 = v70;
  if (v210)
  {
    sub_1E1AF381C();
    v109 = static Action.tryToMakeInstance(byDeserializing:using:)(v105, v83);
    (v191)(v105, v106);
    if (v109)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_1E1B12AE0;
      v161 = v110;
      *(v110 + 32) = v109;
      v212 = 0;
      v210 = 0u;
      v211 = 0u;
      v177 = v109;

      v111 = v173;
      sub_1E1AF3DFC();
      sub_1E134E724(v213, &v207);
      v112 = swift_allocObject();
      *(v112 + 16) = v108;
      v113 = v208;
      *(v112 + 24) = v207;
      *(v112 + 40) = v113;
      *(v112 + 56) = v209;
      type metadata accessor for LocalAction();
      v114 = swift_allocObject();
      v115 = (v114 + OBJC_IVAR____TtC11AppStoreKit11LocalAction_handler);
      *v115 = sub_1E155A5A8;
      v115[1] = v112;
      sub_1E134FD1C(&v210, &v204, &unk_1ECEB5670);
      v160 = *(v189 + 16);
      v160(v174, v111, v186);
      v116 = sub_1E1AF46DC();
      v117 = *(v116 - 8);
      v158 = *(v117 + 56);
      v159 = v116;
      v157 = v117 + 56;
      (v158)(v175, 1, 1);
      v118 = (v114 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
      *v118 = 0u;
      v118[1] = 0u;
      sub_1E134FD1C(&v204, &v198, &unk_1ECEB5670);
      if (*(&v199 + 1))
      {
        v201 = v198;
        v202 = v199;
        v203 = v200;
      }

      else
      {

        v120 = v168;
        sub_1E1AEFE9C();
        v121 = sub_1E1AEFE7C();
        v123 = v122;
        (*(v188 + 8))(v120, v79);
        v196 = v121;
        v197 = v123;
        sub_1E1AF6F6C();
        sub_1E1308058(&v198, &unk_1ECEB5670);
      }

      sub_1E1308058(&v204, &unk_1ECEB5670);
      v124 = v189;
      v125 = v173;
      v126 = v186;
      v173 = *(v189 + 8);
      (v173)(v125, v186);
      sub_1E1308058(&v210, &unk_1ECEB5670);
      v127 = v114 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
      v128 = v202;
      *v127 = v201;
      *(v127 + 16) = v128;
      *(v127 + 32) = v203;
      sub_1E134B7C8(v175, v114 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
      *(v114 + 16) = 0u;
      *(v114 + 32) = 0u;
      v129 = *(v124 + 32);
      v189 = v124 + 32;
      v175 = v129;
      v129(v114 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v174, v126);
      v130 = v161;
      *(v161 + 40) = v114;
      v131 = v176;
      sub_1E1AF3DFC();
      type metadata accessor for CompoundAction();
      v119 = swift_allocObject();
      *(v119 + OBJC_IVAR____TtC11AppStoreKit14CompoundAction_actions) = v130;
      v212 = 0;
      v210 = 0u;
      v211 = 0u;
      v132 = v169;
      v160(v169, v131, v126);
      v133 = v170;
      v158(v170, 1, 1, v159);
      v134 = (v119 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
      *v134 = 0u;
      v134[1] = 0u;
      sub_1E134FD1C(&v210, &v204, &unk_1ECEB5670);
      if (*(&v205 + 1))
      {
        v207 = v204;
        v208 = v205;
        v209 = v206;
      }

      else
      {
        v135 = v168;
        sub_1E1AEFE9C();
        v136 = sub_1E1AEFE7C();
        v138 = v137;
        (*(v188 + 8))(v135, v185);
        *&v201 = v136;
        *(&v201 + 1) = v138;
        sub_1E1AF6F6C();
        sub_1E1308058(&v204, &unk_1ECEB5670);
      }

      sub_1E1308058(&v210, &unk_1ECEB5670);
      v139 = v186;
      (v173)(v176, v186);
      v140 = v119 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
      v141 = v208;
      *v140 = v207;
      *(v140 + 16) = v141;
      *(v140 + 32) = v209;
      sub_1E134B7C8(v133, v119 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
      *(v119 + 16) = 0u;
      *(v119 + 32) = 0u;
      v175(v119 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v132, v139);

      goto LABEL_42;
    }
  }

  v119 = 0;
LABEL_42:
  v143 = v181;
  v142 = v182;
  v145 = v179;
  v144 = v180;
  (*(v180 + 104))(v179, *MEMORY[0x1E69A02F0], v181);
  v146 = sub_1E1AF062C();
  (*(v144 + 8))(v145, v143);
  v147 = v191;
  v148 = v162;
  if (v146)
  {
    v149 = v171;
    sub_1E1AF381C();
    sub_1E1AF370C();
    v147(v149, v195);
  }

  sub_1E134E724(v213, &v210);
  sub_1E134FD1C(v193, v142, &unk_1ECEB5680);
  if (v148)
  {
    v150 = sub_1E155A6C0(qword_1EE1D2F80, type metadata accessor for Action);
    v151 = v148;
    v152 = v184;
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v150 = 0;
    *(&v207 + 1) = 0;
    *&v208 = 0;
  }

  *&v207 = v151;
  *(&v208 + 1) = v152;
  v209 = v150;
  if (v119)
  {
    v153 = sub_1E155A6C0(qword_1EE1D2F80, type metadata accessor for Action);
    v154 = v184;
  }

  else
  {
    v154 = 0;
    v153 = 0;
    *(&v204 + 1) = 0;
    *&v205 = 0;
  }

  v203 = 0;
  *&v204 = v119;
  *(&v205 + 1) = v154;
  v206 = v153;
  v201 = 0u;
  v202 = 0u;

  sub_1E1AF06BC();

  v155 = sub_1E1AF39DC();
  (*(*(v155 - 8) + 8))(v194, v155);
  v147(v165, v195);
  sub_1E1308058(v193, &unk_1ECEB5680);
  return sub_1E134B88C(v213);
}

uint64_t type metadata accessor for ImpressionableSmallPlayerCard()
{
  result = qword_1EE1E8A00;
  if (!qword_1EE1E8A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImpressionableSmallPlayerCard.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_data;
  v4 = sub_1E1AF06FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E1559650()
{
  v0 = sub_1E1AF071C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5680);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  sub_1E1AF06AC();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_1E1308058(v6, &unk_1ECEB5680);
    return 0;
  }

  (*(v1 + 16))(v3, v6, v0);
  v8 = (*(v1 + 88))(v3, v0);
  if (v8 == *MEMORY[0x1E69A0300])
  {
    (*(v1 + 96))(v3, v0);
    v9 = *v3;
    v10 = sub_1E1515164(300.0, 300.0);
  }

  else
  {
    if (v8 != *MEMORY[0x1E69A0308])
    {
      (*(v1 + 8))(v3, v0);
      v11 = 0;
      goto LABEL_9;
    }

    (*(v1 + 96))(v3, v0);
    v9 = *v3;
    v10 = sub_1E181C338(300.0, 300.0);
  }

  v11 = v10;

LABEL_9:
  (*(v1 + 8))(v6, v0);
  return v11;
}

void sub_1E1559904(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5680);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32[-v6];
  v8 = objc_opt_self();
  if (![v8 valueWithNewObjectInContext_])
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1E1AF06CC();
  sub_1E134E724(&v33, v32);
  v9 = sub_1E1AF755C();
  sub_1E134B88C(&v33);
  v10 = [v8 valueWithObject:v9 inContext:a1];
  swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1E1AF6C5C();
  v33 = sub_1E1AF06DC();
  v34 = v11;
  v12 = [v8 valueWithObject:sub_1E1AF755C() inContext:a1];
  swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1E1AF6C5C();
  v13 = sub_1E1AF06EC();
  if (v14)
  {
    v33 = v13;
    v34 = v14;
    v15 = a1;
    v16 = sub_1E1AF748C();
    sub_1E1455104(&v33);
  }

  else
  {
    v17 = a1;
    v16 = 0;
  }

  v18 = [v8 valueWithObject:v16 inContext:a1];
  swift_unknownObjectRelease();

  if (!v18)
  {
    goto LABEL_21;
  }

  sub_1E1AF6C5C();
  v33 = sub_1E1AF068C();
  v34 = v19;
  v20 = [v8 valueWithObject:sub_1E1AF755C() inContext:a1];
  swift_unknownObjectRelease();
  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1E1AF6C5C();
  sub_1E1AF06AC();
  v21 = sub_1E1AF071C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v7, 1, v21) == 1)
  {
LABEL_14:
    sub_1E1308058(v7, &unk_1ECEB5680);
    goto LABEL_15;
  }

  sub_1E134FD1C(v7, v4, &unk_1ECEB5680);
  if ((*(v22 + 88))(v4, v21) != *MEMORY[0x1E69A0308])
  {
    (*(v22 + 8))(v4, v21);
    goto LABEL_14;
  }

  (*(v22 + 96))(v4, v21);
  v23 = *v4;
  v24 = [*v4 identifier];
  v25 = sub_1E1AF5DFC();
  v27 = v26;

  sub_1E1308058(v7, &unk_1ECEB5680);
  if (v27)
  {
    v33 = v25;
    v34 = v27;
    v28 = a1;
    v29 = sub_1E1AF748C();
    sub_1E1455104(&v33);
    goto LABEL_16;
  }

LABEL_15:
  v30 = a1;
  v29 = 0;
LABEL_16:
  v31 = [v8 valueWithObject:v29 inContext:a1];
  swift_unknownObjectRelease();

  if (v31)
  {
    sub_1E1AF6C5C();
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t ImpressionableSmallPlayerCard.deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_data;
  v2 = sub_1E1AF06FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t ImpressionableSmallPlayerCard.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_data;
  v2 = sub_1E1AF06FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit29ImpressionableSmallPlayerCard_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1559F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ImpressionableSmallPlayerCard();
  v7 = swift_allocObject();
  result = ImpressionableSmallPlayerCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

JSValue __swiftcall SmallPlayerCardData.makeValue(in:)(JSContext in)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5680);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35[-v6];
  v8 = objc_opt_self();
  result.super.isa = [v8 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_20;
  }

  isa = result.super.isa;
  sub_1E1AF06CC();
  sub_1E134E724(&v36, v35);
  v11 = sub_1E1AF755C();
  sub_1E134B88C(&v36);
  v12 = [v8 valueWithObject:v11 inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1E1AF6C5C();
  v36 = sub_1E1AF06DC();
  v37 = v13;
  v14 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_1E1AF6C5C();
  v15 = sub_1E1AF06EC();
  if (v16)
  {
    v36 = v15;
    v37 = v16;
    v17 = in.super.isa;
    v18 = sub_1E1AF748C();
    sub_1E1455104(&v36);
  }

  else
  {
    v19 = in.super.isa;
    v18 = 0;
  }

  v20 = [v8 valueWithObject:v18 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v20)
  {
    goto LABEL_22;
  }

  sub_1E1AF6C5C();
  v36 = sub_1E1AF068C();
  v37 = v21;
  v22 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1E1AF6C5C();
  sub_1E1AF06AC();
  v23 = sub_1E1AF071C();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v7, 1, v23) == 1)
  {
LABEL_14:
    sub_1E1308058(v7, &unk_1ECEB5680);
    goto LABEL_15;
  }

  sub_1E134FD1C(v7, v4, &unk_1ECEB5680);
  if ((*(v24 + 88))(v4, v23) != *MEMORY[0x1E69A0308])
  {
    (*(v24 + 8))(v4, v23);
    goto LABEL_14;
  }

  (*(v24 + 96))(v4, v23);
  v25 = *v4;
  v26 = [*v4 identifier];
  v27 = sub_1E1AF5DFC();
  v29 = v28;

  sub_1E1308058(v7, &unk_1ECEB5680);
  if (v29)
  {
    v36 = v27;
    v37 = v29;
    v30 = in.super.isa;
    v31 = sub_1E1AF748C();
    sub_1E1455104(&v36);
    goto LABEL_16;
  }

LABEL_15:
  v32 = in.super.isa;
  v31 = 0;
LABEL_16:
  v33 = [v8 valueWithObject:v31 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v33)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1E1AF6C5C();
  LOBYTE(v36) = sub_1E1AF069C() & 1;
  v34 = [v8 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v34)
  {
    sub_1E1AF6C5C();
    return isa;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1E155A5D4()
{
  result = qword_1ECEB56B0;
  if (!qword_1ECEB56B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECEB56B0);
  }

  return result;
}

uint64_t sub_1E155A668(uint64_t a1)
{
  result = sub_1E155A6C0(qword_1EE1E8A30, type metadata accessor for ImpressionableSmallPlayerCard);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E155A6C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E155A710()
{
  sub_1E1AF06FC();
  if (v0 <= 0x3F)
  {
    sub_1E134EAF4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t SearchFocusDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a3;
  v57 = a4;
  v59 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = swift_allocObject();
  v50 = a2;
  sub_1E134FD1C(a2, v13, &unk_1ECEB4B60);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1E13E23F8(v13, v17 + v15);
  v18 = v59;
  *(v17 + v16) = v59;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a5;
  sub_1E134FD1C(a2, v10, &unk_1ECEB4B60);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E155B9C0;
  *(v20 + 24) = v18;
  v55 = v20;
  *(v14 + qword_1EE1E9D48) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v14 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v22 = qword_1EE2166A0;
  v58 = a5;
  swift_retain_n();
  swift_retain_n();

  *(v14 + v22) = sub_1E159D6F0(v21);
  v23 = (v14 + qword_1EE1E9E00);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v14 + qword_1EE1E9EA0);
  *v24 = 0;
  v24[1] = 0;
  v53 = v24;
  v25 = (v14 + qword_1EE1E9E08);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v14 + qword_1EE1E9DF0);
  *v26 = 0;
  v26[1] = 0;
  v52 = v26;
  v27 = (v14 + qword_1EE1E9E98);
  *v27 = 0;
  v27[1] = 0;
  v51 = v27;
  v28 = (v14 + qword_1EE216698);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 25) = 0u;
  *(v14 + qword_1EE2166D0) = 0;
  *(v14 + qword_1EE1E9D50) = 0;
  *(v14 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v14 + qword_1EE2166C8) = 0;
  v29 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32F8);
  swift_allocObject();
  *(v14 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v14 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3310);
  swift_allocObject();
  *(v14 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE2166B0;
  swift_allocObject();
  *(v14 + v32) = sub_1E1AF5BEC();
  v33 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v14 + v33) = sub_1E1AF5BEC();
  v34 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  v35 = sub_1E1AF5BEC();

  v36 = v19;

  v37 = v59;

  sub_1E1308058(v50, &unk_1ECEB4B60);
  *(v14 + v34) = v35;
  v38 = qword_1EE1E9DD8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v40 = *(*(v39 - 8) + 56);
  v40(v14 + v38, 1, 1, v39);
  v40(v14 + qword_1EE1E9DE0, 1, 1, v39);
  v41 = v56;
  *(v14 + 16) = v37;
  sub_1E13E23F8(v54, v14 + qword_1EE216678);
  *v23 = sub_1E155B778;
  v23[1] = v17;
  *v25 = 0;
  v25[1] = 0;
  if (v41)
  {
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    v43 = sub_1E1445E6C;
  }

  else
  {
    v43 = 0;
    v42 = 0;
  }

  v44 = v52;
  v45 = v53;
  *v53 = v43;
  v45[1] = v42;
  *v44 = sub_1E155B86C;
  v44[1] = v36;
  v46 = v51;
  v47 = v55;
  *v51 = sub_1E155BA28;
  v46[1] = v47;
  v48 = v58;
  *(v14 + qword_1EE1E9E90) = v57;
  *(v14 + qword_1EE216690) = v48;
  return v14;
}

uint64_t SearchFocusDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v65 = a3;
  v66 = a4;
  v57 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v59 = a2;
  sub_1E134FD1C(a2, &v56 - v14, &unk_1ECEB4B60);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_1E13E23F8(v15, v18 + v16);
  v19 = v57;
  *(v18 + v17) = v57;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v58 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a5;
  sub_1E134FD1C(a2, v12, &unk_1ECEB4B60);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1E155BD88;
  *(v21 + 24) = v19;
  v63 = v21;
  *(v6 + qword_1EE1E9D48) = 0;
  v22 = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v23 = qword_1EE2166A0;
  v67 = a5;
  swift_retain_n();
  swift_retain_n();

  *(v6 + v23) = sub_1E159D6F0(v22);
  v24 = (v6 + qword_1EE1E9E00);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v6 + qword_1EE1E9EA0);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v6 + qword_1EE1E9E08);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v6 + qword_1EE1E9DF0);
  *v27 = 0;
  v27[1] = 0;
  v60 = v27;
  v28 = (v6 + qword_1EE1E9E98);
  *v28 = 0;
  v28[1] = 0;
  v61 = v28;
  v29 = (v6 + qword_1EE216698);
  *v29 = 0u;
  v29[1] = 0u;
  *(v29 + 25) = 0u;
  *(v6 + qword_1EE2166D0) = 0;
  *(v6 + qword_1EE1E9D50) = 0;
  *(v6 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v6 + qword_1EE2166C8) = 0;
  v30 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB32F8);
  swift_allocObject();
  *(v6 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v6 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3310);
  swift_allocObject();
  *(v6 + v32) = sub_1E1AF5BEC();
  v33 = qword_1EE2166B0;
  swift_allocObject();
  *(v6 + v33) = sub_1E1AF5BEC();
  v34 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v6 + v34) = sub_1E1AF5BEC();
  v35 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  v36 = sub_1E1AF5BEC();
  v37 = v58;

  v64 = v20;

  sub_1E1308058(v59, &unk_1ECEB4B60);
  *(v6 + v35) = v36;
  v38 = qword_1EE1E9DD8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v40 = *(*(v39 - 8) + 56);
  v40(v6 + v38, 1, 1, v39);
  v41 = v39;
  v42 = v65;
  v40(v6 + qword_1EE1E9DE0, 1, 1, v41);
  *(v6 + 16) = v19;
  sub_1E13E23F8(v62, v6 + qword_1EE216678);
  v43 = *v24;
  *v24 = sub_1E155BD84;
  v24[1] = v37;
  sub_1E1300EA8(v43);
  v44 = *v26;
  *v26 = 0;
  v26[1] = 0;
  sub_1E1300EA8(v44);
  if (v42)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    v46 = sub_1E155BD80;
  }

  else
  {
    v46 = 0;
    v45 = 0;
  }

  v47 = *v25;
  *v25 = v46;
  v25[1] = v45;
  sub_1E1300EA8(v47);
  v48 = v60;
  v49 = *v60;
  v50 = v64;
  *v60 = sub_1E155BDB4;
  v48[1] = v50;
  sub_1E1300EA8(v49);
  v51 = v61;
  v52 = *v61;
  v53 = v63;
  *v61 = sub_1E155BD8C;
  v51[1] = v53;
  sub_1E1300EA8(v52);
  v54 = v67;
  *(v6 + qword_1EE1E9E90) = v66;
  *(v6 + qword_1EE216690) = v54;
  return v6;
}

uint64_t sub_1E155B448(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1E1AEFCCC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a2, v8, &unk_1ECEB4B60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1E1308058(v8, &unk_1ECEB4B60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB56C8);
    sub_1E155BD1C();
    swift_allocError();
    *v13 = 0;
    return sub_1E1AF581C();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    (*(v10 + 16))(v5, v12, v9);
    sub_1E1AF4C1C();

    sub_1E1AF422C();
    sub_1E1AF4BEC();

    v15 = sub_1E1AF4BFC();

    v16 = sub_1E13698D4(v5, v15, "AppStoreKit/SearchFocusDiffablePageContentPresenter.swift", 57, 2);

    sub_1E1308058(v5, &qword_1ECEB2A20);
    (*(v10 + 8))(v12, v9);
    return v16;
  }
}

uint64_t sub_1E155B77C(uint64_t a1)
{
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  sub_1E1AF4BEC();

  v2 = sub_1E1AF4C0C();

  v3 = sub_1E1367B40(a1, v2, "AppStoreKit/SearchFocusDiffablePageContentPresenter.swift", 57, 2);

  return v3;
}

uint64_t sub_1E155B874(uint64_t a1, uint64_t a2)
{
  sub_1E134FD1C(a1, &v6, &qword_1ECEB2DF0);
  if (v7)
  {
    sub_1E1301CF0(&v6, v8);
    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    sub_1E137A5C4(v8, &v6);
    v3 = sub_1E1369B70(&v6, a2, "AppStoreKit/SearchFocusDiffablePageContentPresenter.swift", 57, 2);

    sub_1E1308058(&v6, &qword_1ECEB2A10);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_1E1308058(&v6, &qword_1ECEB2DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB56C8);
    sub_1E155BD1C();
    swift_allocError();
    *v5 = 2;
    return sub_1E1AF581C();
  }
}

uint64_t sub_1E155B9C8(uint64_t a1, uint64_t (*a2)(_BYTE *))
{
  sub_1E137A5C4(a1, v5);
  v3 = a2(v5);
  sub_1E1308058(v5, &qword_1ECEB2DF0);
  return v3;
}

uint64_t SearchFocusDiffablePageContentPresenter.__deallocating_deinit()
{
  _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_1E155BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1E1300EA8(a10);
  sub_1E1300EA8(a6);
  sub_1E1300EA8(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1E155BB1C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E155B448(a1, v4);
}

uint64_t objectdestroy_2Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1E155BC10(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1E137A5C4(a1, v5);
  v3 = v2(v5);
  sub_1E1308058(v5, &qword_1ECEB2DF0);
  return v3;
}

uint64_t type metadata accessor for SearchFocusDiffablePageContentPresenter()
{
  result = qword_1ECEB56B8;
  if (!qword_1ECEB56B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E155BD1C()
{
  result = qword_1ECEB56D0;
  if (!qword_1ECEB56D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB56C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB56D0);
  }

  return result;
}

uint64_t ErrorPresenter.ReasonForNoInternet.localizedReason.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (!*v0)
    {
      v4._countAndFlagsBits = 0x5F434952454E4547;
      v4._object = 0xED0000524F525245;
      v5._countAndFlagsBits = 0;
      v5._object = 0xE000000000000000;
      return localizedString(_:comment:)(v4, v5)._countAndFlagsBits;
    }

    v7 = 0x80000001E1B659E0;
    v3 = 0xD000000000000012;
  }

  else
  {
    if (v1 == 2)
    {
      v2 = "CELLULAR_DATA_DEVICE_ERROR";
      v3 = 0xD000000000000013;
    }

    else if (v1 == 3)
    {
      v2 = "CELLULAR_DATA_APP_ERROR";
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v2 = "ageContentPresenter.swift";
      v3 = 0xD000000000000017;
    }

    v7 = v2 | 0x8000000000000000;
  }

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  return localizedStringReferencingWiFi(_:comment:)(*&v3, v8)._countAndFlagsBits;
}

uint64_t ErrorPresenter.ReasonForNoInternet.solutionSensitiveURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = *v1;
  if ((v9 - 3) < 2)
  {
    v10 = [objc_opt_self() settingsURL];
    if (v10)
    {
      v11 = v10;
      sub_1E1AEFC5C();

      v12 = sub_1E1AEFCCC();
      (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    }

    else
    {
      v19 = sub_1E1AEFCCC();
      (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    }

    v20 = v5;
    return sub_1E13E23F8(v20, a1);
  }

  if (v9 == 2)
  {
    v13 = [objc_opt_self() settingsURL];
    if (v13)
    {
      v14 = v13;
      sub_1E1AEFC5C();

      v15 = sub_1E1AEFCCC();
      (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
    }

    else
    {
      v21 = sub_1E1AEFCCC();
      (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    }

    v20 = v8;
    return sub_1E13E23F8(v20, a1);
  }

  v16 = sub_1E1AEFCCC();
  v17 = *(*(v16 - 8) + 56);

  return v17(a1, 1, 1, v16);
}

uint64_t ErrorPresenter.ReasonForNoInternet.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

id ErrorPresenter.init(networkInquiry:airplaneModeInquiry:cellularDataInquiry:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_networkObservation];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_view + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_reasonForNoInternet] = 0;
  *&v4[OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_error] = 0;
  sub_1E1300B24(a1, &v4[OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_networkInquiry]);
  *&v4[OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_airplaneModeInquiry] = a2;
  *&v4[OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_cellularDataInquiry] = a3;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v10 = a2;
  v20 = a3;
  v11 = objc_msgSendSuper2(&v23, sel_init);
  [v10 setDelegate_];
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v12);
  v14 = sub_1E1361A80();
  v15 = sub_1E1AF68EC();
  v21[3] = v14;
  v21[4] = MEMORY[0x1E69AB720];
  v21[0] = v15;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = *(v13 + 40);

  v17(v22, v21, sub_1E155C4D8, v16, v12, v13);

  __swift_destroy_boxed_opaque_existential_1(v21);
  v18 = OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_networkObservation;
  swift_beginAccess();
  sub_1E155C4E0(v22, v11 + v18);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

void sub_1E155C3E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    ErrorPresenter.update()();
    v2 = *&v1[OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_networkInquiry + 24];
    v3 = *&v1[OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_networkInquiry + 32];
    __swift_project_boxed_opaque_existential_1Tm(&v1[OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_networkInquiry], v2);
    if ((*(v3 + 8))(v2, v3))
    {
      v4 = &v1[OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_view];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 1);
        ObjectType = swift_getObjectType();
        (*(v5 + 16))(ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1E155C4E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5718);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id ErrorPresenter.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = v0 + OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_networkObservation;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    sub_1E1300B24(v3, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

Swift::Void __swiftcall ErrorPresenter.update()()
{
  v1 = sub_1E1AF320C();
  v17 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF324C();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF321C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1361A80();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F88], v7);
  v11 = sub_1E1AF693C();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1E155CECC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_25;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_1E1AF322C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v6, v3, v13);
  _Block_release(v13);

  (*(v17 + 8))(v3, v1);
  (*(v4 + 8))(v6, v16);
}

uint64_t sub_1E155CAE0(uint64_t a1)
{
  v2 = sub_1E1AF320C();
  v21 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E1AF324C();
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_networkInquiry);
  v9 = *(a1 + OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_networkInquiry + 24);
  v10 = *(a1 + OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_networkInquiry + 32);
  __swift_project_boxed_opaque_existential_1Tm((a1 + OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_networkInquiry), v9);
  if ((*(v10 + 8))(v9, v10))
  {
    v11 = 0;
  }

  else if ([*(a1 + OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_airplaneModeInquiry) isEnabled])
  {
    v11 = 2;
  }

  else
  {
    v12 = *(a1 + OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_cellularDataInquiry);
    if ([v12 isSupported] && !objc_msgSend(v12, sel_isEnabledForDevice))
    {
      v11 = 3;
    }

    else if ([v12 isSupported] && (v13 = v8[3], v14 = v8[4], __swift_project_boxed_opaque_existential_1Tm(v8, v13), (*(v14 + 16))(aBlock, v13, v14), LOBYTE(aBlock[0]) == 3) && !objc_msgSend(v12, sel_isEnabledForBundle))
    {
      v11 = 4;
    }

    else
    {
      v11 = 1;
    }
  }

  sub_1E1361A80();
  v15 = sub_1E1AF68EC();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v11;
  aBlock[4] = sub_1E155DC9C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_21;
  v18 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v7, v4, v18);
  _Block_release(v18);

  (*(v21 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v20);
}

void sub_1E155CED4(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    sub_1E155CF34(&v5);
  }
}

uint64_t sub_1E155CF34(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_reasonForNoInternet;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v5 != v2)
  {
    v6 = v1 + OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(ObjectType, v7);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t ErrorPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ErrorPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t ErrorPresenter.reasonForNoInternet.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_reasonForNoInternet;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t ErrorPresenter.message.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _s11AppStoreKit14ErrorPresenterC7message10describingSSSgs0D0_p_tFZ_0(v2);

  return v4;
}

uint64_t ErrorPresenter.settingsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_reasonForNoInternet;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if ((v10 - 3) >= 2)
  {
    if (v10 != 2)
    {
      v17 = sub_1E1AEFCCC();
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }

    v14 = [objc_opt_self() settingsURL];
    if (v14)
    {
      v15 = v14;
      sub_1E1AEFC5C();

      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    v21 = sub_1E1AEFCCC();
    (*(*(v21 - 8) + 56))(v8, v16, 1, v21);
    v20 = v8;
  }

  else
  {
    v11 = [objc_opt_self() settingsURL];
    if (v11)
    {
      v12 = v11;
      sub_1E1AEFC5C();

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v19 = sub_1E1AEFCCC();
    (*(*(v19 - 8) + 56))(v5, v13, 1, v19);
    v20 = v5;
  }

  return sub_1E13E23F8(v20, a1);
}

void *ErrorPresenter.error.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ErrorPresenter.error.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_error;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = v1 + OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t (*ErrorPresenter.error.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E155D628;
}

uint64_t sub_1E155D628(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24) + OBJC_IVAR____TtC11AppStoreKit14ErrorPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(ObjectType, v6);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id ErrorPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t _s11AppStoreKit14ErrorPresenterC7message10describingSSSgs0D0_p_tFZ_0(void *a1)
{
  v2 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E1B03760;
  *(v3 + 32) = @"debug";
  *(v3 + 40) = @"convergence";
  *(v3 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v4 = @"debug";
  v5 = @"convergence";
  v6 = @"internal";
  v7 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v2, v7);

  result = 0;
  if (IsAnyOf)
  {
    v10 = a1;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      swift_getErrorValue();
      v12 = a1;
      v13 = sub_1E1AF75AC();
      v15 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1E130C06C(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_1E130C06C((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      v19 = sub_1E1AEFB1C();
      v20 = [v19 userInfo];

      v21 = sub_1E1AF5C7C();
      v22 = sub_1E1AF5DFC();
      if (!*(v21 + 16))
      {

        goto LABEL_13;
      }

      v24 = sub_1E13018F8(v22, v23);
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        break;
      }

      sub_1E137A5C4(*(v21 + 56) + 32 * v24, &v31);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      a1 = v30;
    }

LABEL_13:

LABEL_14:
    v31 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
    sub_1E1302CD4(&qword_1EE1E34E0, &unk_1ECEB2D10);
    v27 = sub_1E1AF5D6C();
    v29 = v28;

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1E1AF6FEC();

    v31 = 0x6C616E7265746E49;
    v32 = 0xEF0A3A796C6E4F20;
    MEMORY[0x1E68FECA0](v27, v29);

    return v31;
  }

  return result;
}

unint64_t sub_1E155DB58()
{
  result = qword_1ECEB5728;
  if (!qword_1ECEB5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB5728);
  }

  return result;
}

uint64_t sub_1E155DC34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E155DCC8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910);
  v2 = sub_1E1AF588C();
  type metadata accessor for ArcadeSubscriptionManager();
  sub_1E1AF55EC();
  v3 = v19[0];
  v4 = v19[0] + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v5 = *(v4 + 8) >> 6;
  if (v5 <= 1)
  {
    if (v5)
    {
      v6 = &OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_purchasingAction;
    }

    else
    {
      v6 = &OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_notSubscribedAction;
    }

    v8 = *(a1 + *v6);
    if (!v8)
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v7 = &OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_subscribedAction;
  }

  else
  {
    v7 = &OBJC_IVAR____TtC11AppStoreKit29ArcadeSubscriptionStateAction_unknownAction;
  }

  v8 = *(a1 + *v7);
  if (v8)
  {
LABEL_11:
    v10 = type metadata accessor for Action();
    v9 = sub_1E155E0C8(qword_1EE1D2F80, type metadata accessor for Action);
    goto LABEL_13;
  }

  v10 = 0;
  v9 = 0;
LABEL_13:
  v19[0] = v8;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = v10;
  v19[4] = v9;

  sub_1E155DFD8(v19, &v15);
  if (v16)
  {
    sub_1E1308EC0(&v15, v18);
    type metadata accessor for ArcadeSubscriptionStateActionImplementation();
    swift_getWitnessTable();
    sub_1E1834054(v18);
    v11 = sub_1E1361A80();
    swift_retain_n();
    v12 = sub_1E1AF68EC();
    v16 = v11;
    v17 = MEMORY[0x1E69AB720];
    *&v15 = v12;
    sub_1E1AF57FC();

    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_1E155E048(v19);
    __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  else
  {
    sub_1E155E048(&v15);
    type metadata accessor for ArcadeSubscriptionStateActionImplementation.ArcadeSubscriptionStateActionImplementationError();
    swift_getWitnessTable();
    v13 = swift_allocError();
    sub_1E1AF584C();

    sub_1E155E048(v19);
  }

  return v2;
}

uint64_t sub_1E155DFD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E155E048(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E155E0C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t TodayCardTriggerIdentifier.persistantStoreKey.getter()
{
  v1 = *v0;
  sub_1E1AF6FEC();

  v2 = 0xED000065726F7453;
  v3 = 0x7070416F5477656ELL;
  v4 = 0xEF676E6972696150;
  v5 = 0x686374615777656ELL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001E1B57920;
  }

  if (v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001E1B578F0;
  }

  if (v1 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (v1 <= 1)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1E68FECA0](v6, v7);

  return 0xD00000000000001BLL;
}

unint64_t TodayCardTriggerIdentifier.bagKey.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000016;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1E155E2CC()
{
  v1 = 0x7070416F5477656ELL;
  v2 = 0x686374615777656ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

AppStoreKit::TodayCardTriggerIdentifier_optional __swiftcall TodayCardTriggerIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E155E3D4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E155E4BC()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E155E590()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E155E680(unint64_t *a1@<X8>)
{
  v2 = 0xED000065726F7453;
  v3 = 0x7070416F5477656ELL;
  v4 = 0xEF676E6972696150;
  v5 = 0x686374615777656ELL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001E1B57920;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x80000001E1B578F0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1E155E764()
{
  result = qword_1EE1D8270;
  if (!qword_1EE1D8270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D8270);
  }

  return result;
}

double CGPoint.distance(to:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v11 = vabdd_f64(a5, CGRectGetMidX(*&a1));
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  v12 = v11 - CGRectGetWidth(v17) * 0.5;
  if (v12 > 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  v14 = vabdd_f64(a6, CGRectGetMidY(v18));
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  v15 = v14 - CGRectGetHeight(v19) * 0.5;
  if (v15 <= 0.0)
  {
    v15 = 0.0;
  }

  return sqrt(v13 * v13 + v15 * v15);
}

AppStoreKit::AccessibilityMetadata __swiftcall AccessibilityMetadata.init(label:roleDescription:)(Swift::String_optional label, Swift::String_optional roleDescription)
{
  *v2 = label;
  v2[1] = roleDescription;
  result.roleDescription = roleDescription;
  result.label = label;
  return result;
}

uint64_t AccessibilityMetadata.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a2;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF381C();
  v9 = sub_1E1AF37CC();
  v11 = v10;
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  v15 = v14;
  v16 = sub_1E1AF39DC();
  (*(*(v16 - 8) + 8))(v19, v16);
  v12(a1, v5);
  result = (v12)(v8, v5);
  *a3 = v9;
  a3[1] = v11;
  a3[2] = v13;
  a3[3] = v15;
  return result;
}

uint64_t AccessibilityMetadata.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccessibilityMetadata.roleDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AccessibilityMetadata.hash(into:)()
{
  v1 = *(v0 + 24);
  if (!*(v0 + 8))
  {
    sub_1E1AF764C();
    if (v1)
    {
      goto LABEL_3;
    }

    return sub_1E1AF764C();
  }

  sub_1E1AF764C();
  sub_1E1AF5F0C();
  if (!v1)
  {
    return sub_1E1AF764C();
  }

LABEL_3:
  sub_1E1AF764C();

  return sub_1E1AF5F0C();
}

uint64_t AccessibilityMetadata.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1E1AF762C();
  if (!v1)
  {
    sub_1E1AF764C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E1AF764C();
    return sub_1E1AF767C();
  }

  sub_1E1AF764C();
  sub_1E1AF5F0C();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E1AF764C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E155ECD4()
{
  v1 = *(v0 + 24);
  if (!*(v0 + 8))
  {
    sub_1E1AF764C();
    if (v1)
    {
      goto LABEL_3;
    }

    return sub_1E1AF764C();
  }

  sub_1E1AF764C();
  sub_1E1AF5F0C();
  if (!v1)
  {
    return sub_1E1AF764C();
  }

LABEL_3:
  sub_1E1AF764C();

  return sub_1E1AF5F0C();
}

uint64_t sub_1E155ED8C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_1E1AF762C();
  if (!v1)
  {
    sub_1E1AF764C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E1AF764C();
    return sub_1E1AF767C();
  }

  sub_1E1AF764C();
  sub_1E1AF5F0C();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E1AF764C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t _s11AppStoreKit21AccessibilityMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1E1AF74AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_1E1AF74AC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1E155EEE8()
{
  result = qword_1ECEB58B8;
  if (!qword_1ECEB58B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB58B8);
  }

  return result;
}

uint64_t sub_1E155EF3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1E155EF98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *ClickMetricsEvent.__allocating_init(targetType:targetId:including:excluding:eventFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[6] = a1;
  result[7] = a2;
  result[4] = a3;
  result[5] = a4;
  result[8] = a5;
  result[9] = a6;
  v15 = MEMORY[0x1E69E7CC0];
  result[2] = a7;
  result[3] = v15;
  return result;
}

AppStoreKit::MetricsEvent::PageLifecycleInvocationPoint_optional __swiftcall MetricsEvent.PageLifecycleInvocationPoint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MetricsEvent.PageLifecycleInvocationPoint.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x65746E4565676170;
  v3 = 0x72656D6974;
  if (v1 != 5)
  {
    v3 = 0x726576656ELL;
  }

  v4 = 0x7265746E45707061;
  if (v1 != 3)
  {
    v4 = 0x747475426B636162;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7469784565676170;
  if (v1 != 1)
  {
    v5 = 0x74697845707061;
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

uint64_t sub_1E155F1C4()
{
  sub_1E1AF5F0C();
}

void sub_1E155F2E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0x65746E4565676170;
  v5 = 0xE500000000000000;
  v6 = 0x72656D6974;
  if (v2 != 5)
  {
    v6 = 0x726576656ELL;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7265746E45707061;
  if (v2 != 3)
  {
    v8 = 0x747475426B636162;
    v7 = 0xEA00000000006E6FLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x7469784565676170;
  if (v2 != 1)
  {
    v10 = 0x74697845707061;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1E155F3C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = sub_1E13018F8(0x6369706F74, 0xE500000000000000);
    if (v4)
    {
      sub_1E137A5C4(*(v1 + 56) + 32 * v3, v9);
      if (swift_dynamicCast())
      {
        v5 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v5 = *v7 & 0xFFFFFFFFFFFFLL;
        }

        if (!v5)
        {
        }
      }
    }
  }

  return sub_1E1AF3A7C();
}

uint64_t MetricsEvent.__allocating_init(eventFields:invocationPoints:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MetricsEvent.init(eventFields:invocationPoints:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AppEnterMetricsEvent.EnterKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x746977536B736174;
  }

  else
  {
    return 0x68636E75616CLL;
  }
}

uint64_t sub_1E155F5A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746977536B736174;
  }

  else
  {
    v3 = 0x68636E75616CLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA00000000006863;
  }

  if (*a2)
  {
    v5 = 0x746977536B736174;
  }

  else
  {
    v5 = 0x68636E75616CLL;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006863;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E155F64C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E155F6D0()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E155F740()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t static AppEnterMetricsEvent.makeData(enterKind:)(unsigned __int8 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x707954746E657665;
  *(inited + 16) = xmmword_1E1B02CD0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x7265746E65;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v3;
  *(inited + 80) = 1701869940;
  v4 = 0x68636E75616CLL;
  if (v1)
  {
    v4 = 0x746977536B736174;
  }

  v5 = 0xE600000000000000;
  if (v1)
  {
    v5 = 0xEA00000000006863;
  }

  *(inited + 120) = v3;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v4;
  *(inited + 104) = v5;
  v6 = sub_1E1303A74(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5F80);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7220);
  v7 = sub_1E1AF523C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF522C();
  sub_1E1498AF4(v10);
  swift_setDeallocating();
  (*(v8 + 8))(v10 + v9, v7);
  swift_deallocClassInstance();
  if (*(v6 + 16))
  {
    v11 = sub_1E13018F8(0x6369706F74, 0xE500000000000000);
    if (v12)
    {
      sub_1E137A5C4(*(v6 + 56) + 32 * v11, v17);
      if (swift_dynamicCast())
      {
        v13 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v13 = *v15 & 0xFFFFFFFFFFFFLL;
        }

        if (!v13)
        {
        }
      }
    }
  }

  return sub_1E1AF3A7C();
}

uint64_t static AppExitMetricsEvent.makeData()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = 0x707954746E657665;
  v1 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 1953069157;
  *(inited + 56) = 0xE400000000000000;
  v2 = sub_1E1303A74(inited);
  swift_setDeallocating();
  sub_1E1308058(v1, &qword_1ECEB5F80);
  if (*(v2 + 16))
  {
    v3 = sub_1E13018F8(0x6369706F74, 0xE500000000000000);
    if (v4)
    {
      sub_1E137A5C4(*(v2 + 56) + 32 * v3, v9);
      if (swift_dynamicCast())
      {
        v5 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v5 = *v7 & 0xFFFFFFFFFFFFLL;
        }

        if (!v5)
        {
        }
      }
    }
  }

  return sub_1E1AF3A7C();
}

void *static ClickMetricsEvent.tabClickEvent(named:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E6158];
  v28 = MEMORY[0x1E69E6158];
  *&v27 = 0x7463656C6573;
  *(&v27 + 1) = 0xE600000000000000;
  sub_1E1301CF0(&v27, v26);
  v5 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v26, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v7 = MEMORY[0x1E69E6530];
  v28 = MEMORY[0x1E69E6530];
  *&v27 = a3;
  sub_1E1301CF0(&v27, v26);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v26, 0xD000000000000010, 0x80000001E1B65B70, v8);
  v28 = v4;
  *&v27 = 6447476;
  *(&v27 + 1) = 0xE300000000000000;
  sub_1E1301CF0(&v27, v26);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v26, 0x6E6F697461636F6CLL, 0xEC00000065707954, v9);
  v28 = v7;
  *&v27 = 0;
  sub_1E1301CF0(&v27, v26);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v26, 0xD000000000000010, 0x80000001E1B65B70, v10);
  v28 = v4;
  *&v27 = 0x726142626174;
  *(&v27 + 1) = 0xE600000000000000;
  sub_1E1301CF0(&v27, v26);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v26, 0x6E6F697461636F6CLL, 0xEC00000065707954, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2748);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E1B02CD0;
  *(v12 + 32) = v5;
  *(v12 + 40) = v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4738);
  *&v27 = v12;
  sub_1E1301CF0(&v27, v26);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v26, 0x6E6F697461636F6CLL, 0xE800000000000000, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7220);
  v14 = sub_1E1AF523C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E1B02CC0;
  if (qword_1EE1E3680 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_1EE1E3688);
  (*(v15 + 16))(v17 + v16, v18, v14);
  v19 = sub_1E1498AF4(v17);
  swift_setDeallocating();
  (*(v15 + 8))(v17 + v16, v14);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v20 = swift_allocObject();
  v20[6] = 6447476;
  v20[7] = 0xE300000000000000;
  v20[4] = a1;
  v20[5] = a2;
  v21 = MEMORY[0x1E69E7CD0];
  v20[8] = v19;
  v20[9] = v21;
  v22 = MEMORY[0x1E69E7CC0];
  v20[2] = v5;
  v20[3] = v22;

  return v20;
}

double static ClickMetricsEvent.makeBackClickEvent()()
{
  v0 = MEMORY[0x1E69E6158];
  v16 = MEMORY[0x1E69E6158];
  *&v15 = 1801675106;
  *(&v15 + 1) = 0xE400000000000000;
  sub_1E1301CF0(&v15, v14);
  v1 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v14, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v16 = v0;
  *&v15 = 0x6B63696C63;
  *(&v15 + 1) = 0xE500000000000000;
  sub_1E1301CF0(&v15, v14);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v14, 0x707954746E657665, 0xE900000000000065, v3);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7220);
  v5 = sub_1E1AF523C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF520C();
  v9 = sub_1E1498AF4(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v10 = swift_allocObject();
  *(v10 + 48) = 0x6E6F74747562;
  *(v10 + 56) = 0xE600000000000000;
  result = 2.08576518e-306;
  *(v10 + 32) = xmmword_1E1B17200;
  v12 = MEMORY[0x1E69E7CD0];
  *(v10 + 64) = v9;
  *(v10 + 72) = v12;
  v13 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = v4;
  *(v10 + 24) = v13;
  return result;
}

uint64_t sub_1E1560214()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6158];
  v3 = v0[2];
  v19 = MEMORY[0x1E69E6158];
  *&v18 = 0x6B63696C63;
  *(&v18 + 1) = 0xE500000000000000;
  sub_1E1301CF0(&v18, v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v3;
  sub_1E159827C(v17, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v5 = v20;
  v6 = v1[6];
  v7 = v1[7];
  v19 = v2;
  *&v18 = v6;
  *(&v18 + 1) = v7;
  sub_1E1301CF0(&v18, v17);

  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v17, 0x7954746567726174, 0xEA00000000006570, v8);
  v20 = v5;
  v9 = v1[5];
  if (v9)
  {
    v10 = v1[4];
    v19 = v2;
    *&v18 = v10;
    *(&v18 + 1) = v9;
    sub_1E1301CF0(&v18, v17);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v17, 0x6449746567726174, 0xE800000000000000, v11);
  }

  else
  {
    sub_1E1496610(0x6449746567726174, 0xE800000000000000, &v18);
    sub_1E1308058(&v18, &qword_1ECEB2DF0);
    v5 = v20;
  }

  v12 = *(v5 + 16);

  if (v12)
  {
    v13 = sub_1E13018F8(0x6369706F74, 0xE500000000000000);
    if (v14)
    {
      sub_1E137A5C4(*(v5 + 56) + 32 * v13, &v18);
      if (swift_dynamicCast())
      {
        v15 = HIBYTE(*(&v17[0] + 1)) & 0xFLL;
        if ((*(&v17[0] + 1) & 0x2000000000000000) == 0)
        {
          v15 = *&v17[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v15)
        {
        }
      }
    }
  }

  return sub_1E1AF3A7C();
}

void *ClickMetricsEvent.init(targetType:targetId:including:excluding:eventFields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a1;
  v7[7] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v7[8] = a5;
  v7[9] = a6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[2] = a7;
  v7[3] = v8;
  return v7;
}

uint64_t sub_1E15604B8()
{
}

uint64_t ClickMetricsEvent.deinit()
{

  return v0;
}

uint64_t ClickMetricsEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

AppStoreKit::MediaClickMetricsEvent::ActionType_optional __swiftcall MediaClickMetricsEvent.ActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaClickMetricsEvent.ActionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 2036427888;
  v3 = 0x6574756D6E75;
  v4 = 0x6C75467265746E65;
  if (v1 != 4)
  {
    v4 = 0x6C6C754674697865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6573756170;
  if (v1 != 1)
  {
    v5 = 1702131053;
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

uint64_t sub_1E15606EC()
{
  sub_1E1AF5F0C();
}

void sub_1E15607F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036427888;
  v5 = 0xE600000000000000;
  v6 = 0x6574756D6E75;
  v7 = 0xEF6E65657263736CLL;
  v8 = 0x6C75467265746E65;
  if (v2 != 4)
  {
    v8 = 0x6C6C754674697865;
    v7 = 0xEE006E6565726373;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6573756170;
  if (v2 != 1)
  {
    v10 = 1702131053;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

AppStoreKit::MediaClickMetricsEvent::TargetId_optional __swiftcall MediaClickMetricsEvent.TargetId.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaClickMetricsEvent.TargetId.rawValue.getter()
{
  v1 = *v0;
  v2 = 2036427888;
  v3 = 1702131053;
  v4 = 0x657263736C6C7566;
  if (v1 != 3)
  {
    v4 = 0x656E696C6E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6573756170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E15609B8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1560A88()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1560B44()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1560C1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036427888;
  v5 = 0xE400000000000000;
  v6 = 1702131053;
  v7 = 0xEA00000000006E65;
  v8 = 0x657263736C6C7566;
  if (v2 != 3)
  {
    v8 = 0x656E696C6E69;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6573756170;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t MediaClickMetricsEvent.TargetType.rawValue.getter()
{
  if (*v0)
  {
    return 0x616964656DLL;
  }

  else
  {
    return 0x6E6F74747562;
  }
}

uint64_t sub_1E1560CE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616964656DLL;
  }

  else
  {
    v3 = 0x6E6F74747562;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x616964656DLL;
  }

  else
  {
    v5 = 0x6E6F74747562;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E1560D88()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1560E04()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1560E6C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1560EF0(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F74747562;
  if (*v1)
  {
    v2 = 0x616964656DLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static MediaClickMetricsEvent.fillIn(template:targetType:targetId:actionType:actionContext:position:)(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t a6, char a7)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = sub_1E1AF3AAC();
  v12 = MEMORY[0x1E69E6158];
  v43 = MEMORY[0x1E69E6158];
  *&v42 = 0x6B63696C63;
  *(&v42 + 1) = 0xE500000000000000;
  sub_1E1301CF0(&v42, v41);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v41, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v44 = v11;
  if (v7 == 2)
  {
    sub_1E1496610(0x7954746567726174, 0xEA00000000006570, &v42);
    sub_1E1308058(&v42, &qword_1ECEB2DF0);
    if (v8 > 2)
    {
      goto LABEL_3;
    }

LABEL_11:
    if (v8)
    {
      if (v8 == 1)
      {
        v14 = 0xE500000000000000;
        v15 = 0x6573756170;
      }

      else
      {
        v14 = 0xE400000000000000;
        v15 = 1702131053;
      }
    }

    else
    {
      v14 = 0xE400000000000000;
      v15 = 2036427888;
    }

    goto LABEL_21;
  }

  v16 = 0x6E6F74747562;
  if (v7)
  {
    v16 = 0x616964656DLL;
  }

  v17 = 0xE600000000000000;
  v43 = v12;
  if (v7)
  {
    v17 = 0xE500000000000000;
  }

  *&v42 = v16;
  *(&v42 + 1) = v17;
  sub_1E1301CF0(&v42, v41);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v41, 0x7954746567726174, 0xEA00000000006570, v18);
  v44 = v11;
  if (v8 <= 2)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v8 == 3)
  {
    v14 = 0xEA00000000006E65;
    v15 = 0x657263736C6C7566;
  }

  else
  {
    if (v8 != 4)
    {
      sub_1E1496610(0x6449746567726174, 0xE800000000000000, &v42);
      sub_1E1308058(&v42, &qword_1ECEB2DF0);
      if (v9 > 2)
      {
        goto LABEL_22;
      }

LABEL_17:
      if (v9)
      {
        if (v9 == 1)
        {
          v19 = 0xE500000000000000;
          v20 = 0x6573756170;
        }

        else
        {
          v19 = 0xE400000000000000;
          v20 = 1702131053;
        }
      }

      else
      {
        v19 = 0xE400000000000000;
        v20 = 2036427888;
      }

LABEL_30:
      v23 = a7;
      v43 = v12;
      *&v42 = v20;
      *(&v42 + 1) = v19;
      sub_1E1301CF0(&v42, v41);
      v24 = v44;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_1E159827C(v41, 0x79546E6F69746361, 0xEA00000000006570, v25);
      v44 = v24;
      if (v10 == 2)
      {
        goto LABEL_31;
      }

LABEL_34:
      v31 = 0x656E696C6E69;
      if (v10)
      {
        v31 = 0x657263736C6C7566;
      }

      v32 = 0xEA00000000006E65;
      v43 = v12;
      if ((v10 & 1) == 0)
      {
        v32 = 0xE600000000000000;
      }

      *&v42 = v31;
      *(&v42 + 1) = v32;
      sub_1E1301CF0(&v42, v41);
      v33 = v44;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      sub_1E159827C(v41, 0x6F436E6F69746361, 0xED0000747865746ELL, v34);
      v44 = v33;
      if ((v23 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_39:
      v30 = v44;
      goto LABEL_40;
    }

    v14 = 0xE600000000000000;
    v15 = 0x656E696C6E69;
  }

LABEL_21:
  v43 = v12;
  *&v42 = v15;
  *(&v42 + 1) = v14;
  sub_1E1301CF0(&v42, v41);
  v21 = v44;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v41, 0x6449746567726174, 0xE800000000000000, v22);
  v44 = v21;
  if (v9 <= 2)
  {
    goto LABEL_17;
  }

LABEL_22:
  if (v9 <= 4)
  {
    if (v9 == 3)
    {
      v19 = 0xE600000000000000;
      v20 = 0x6574756D6E75;
    }

    else
    {
      v19 = 0xEF6E65657263736CLL;
      v20 = 0x6C75467265746E65;
    }

    goto LABEL_30;
  }

  if (v9 == 5)
  {
    v19 = 0xEE006E6565726373;
    v20 = 0x6C6C754674697865;
    goto LABEL_30;
  }

  sub_1E1496610(0x79546E6F69746361, 0xEA00000000006570, &v42);
  sub_1E1308058(&v42, &qword_1ECEB2DF0);
  v23 = a7;
  if (v10 != 2)
  {
    goto LABEL_34;
  }

LABEL_31:
  sub_1E1496610(0x6F436E6F69746361, 0xED0000747865746ELL, &v42);
  sub_1E1308058(&v42, &qword_1ECEB2DF0);
  if (v23)
  {
    goto LABEL_39;
  }

LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB58C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_1E1563338(a6, 0);
  v27 = sub_1E15A09D8(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &qword_1ECEB58C8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB58D0);
  *&v42 = v27;
  sub_1E1301CF0(&v42, v41);
  v28 = v44;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E159827C(v41, 0x65446E6F69746361, 0xED0000736C696174, v29);
  v30 = v28;
LABEL_40:
  sub_1E1AF3A6C();
  sub_1E1AF3A5C();
  if (*(v30 + 16))
  {
    v35 = sub_1E13018F8(0x6369706F74, 0xE500000000000000);
    if (v36)
    {
      sub_1E137A5C4(*(v30 + 56) + 32 * v35, &v42);
      if (swift_dynamicCast())
      {
        v37 = HIBYTE(*(&v41[0] + 1)) & 0xFLL;
        if ((*(&v41[0] + 1) & 0x2000000000000000) == 0)
        {
          v37 = *&v41[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v37)
        {
        }
      }
    }
  }

  return sub_1E1AF3A7C();
}