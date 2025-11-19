uint64_t sub_1A2CCAD48(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v3 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v37 - v6;
  v7 = *(v3 + 88);
  v46 = v2;
  v8 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A2D087E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v38 = &v37 - v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v47 = AssociatedTypeWitness;
  v48 = AssociatedConformanceWitness;
  v40 = v22;
  v41 = AssociatedConformanceWitness;
  v49 = v22;
  v50 = v23;
  v39 = v23;
  v24 = type metadata accessor for ActivityContent();
  v25 = sub_1A2D087E4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v37 - v29;
  v37 = *(*(v24 - 8) + 56);
  v37(&v37 - v29, 1, 1, v24, v28);
  (*(v11 + 16))(v14, v44, v10);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    (*(v26 + 8))(v30, v25);
    v31 = *(v15 + 32);
    v32 = v38;
    v31(v38, v14, AssociatedTypeWitness);
    v33 = v42;
    v31(v42, v32, AssociatedTypeWitness);
    v34 = sub_1A2D07F94();
    v35 = v43;
    (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
    ActivityContent.init(state:staleDate:relevanceScore:)(v33, v35, AssociatedTypeWitness, v30, 0.0);
    (v37)(v30, 0, 1, v24);
  }

  sub_1A2C8F2B4(v30, v45);
  return (*(v26 + 8))(v30, v25);
}

uint64_t sub_1A2CCB1D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2CCB274, 0, 0);
}

uint64_t sub_1A2CCB274()
{
  v1 = v0[4];
  v2 = type metadata accessor for ActivityEndingOptions();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1A2CCB350;
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return sub_1A2CCB478(v6, v4);
}

uint64_t sub_1A2CCB350()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  sub_1A2C54E38(v2, &unk_1EB0A0AC0, &qword_1A2D0A810);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A2CCB478(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A90, &unk_1A2D0D260) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for ActivityUIDismissalPolicy();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2CCB5AC, 0, 0);
}

uint64_t sub_1A2CCB5AC()
{
  v1 = v0[5];
  sub_1A2C6BD18(v0[3], v1, &unk_1EB0A0AC0, &qword_1A2D0A810);
  v2 = type metadata accessor for ActivityEndingOptions();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[6];
    sub_1A2C54E38(v0[5], &unk_1EB0A0AC0, &qword_1A2D0A810);
    (*(v4 + 56))(v5, 1, 1, v3);
    if (qword_1EB09F340 != -1)
    {
      swift_once();
    }

    v7 = v0[8];
    v6 = v0[9];
    v9 = v0[6];
    v8 = v0[7];
    v10 = __swift_project_value_buffer(v8, qword_1EB09F348);
    sub_1A2C7FF28(v10, v6, type metadata accessor for ActivityUIDismissalPolicy);
    if ((*(v7 + 48))(v9, 1, v8) != 1)
    {
      sub_1A2C54E38(v0[6], &unk_1EB0A0A90, &unk_1A2D0D260);
    }
  }

  else
  {
    v12 = v0[8];
    v11 = v0[9];
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];
    sub_1A2C7FF28(v15, v14, type metadata accessor for ActivityUIDismissalPolicy);
    sub_1A2C69F84(v15, type metadata accessor for ActivityEndingOptions);
    (*(v12 + 56))(v14, 0, 1, v13);
    sub_1A2C92B5C(v14, v11, type metadata accessor for ActivityUIDismissalPolicy);
  }

  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_1A2CCB824;
  v17 = v0[9];
  v18 = v0[4];
  v19 = v0[2];

  return sub_1A2CCA4B0(v19, v17);
}

uint64_t sub_1A2CCB824()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v7 = *v0;

  sub_1A2C69F84(v2, type metadata accessor for ActivityUIDismissalPolicy);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A2CCB990@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1A2CCF17C();
  a1[1] = v4;
}

uint64_t sub_1A2CCB9D8()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A2CCBAD4, 0, 0);
}

uint64_t sub_1A2CCBAEC(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A2CCBC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1A2CD14F8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t Activity.ActivityStateUpdates.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E48, &qword_1A2D0EC98);
  result = sub_1A2D08024();
  *a1 = result;
  return result;
}

uint64_t Activity.ActivityStateUpdates.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1A2CCBD48, 0, 0);
}

uint64_t sub_1A2CCBD48()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 16);
  v3[2] = v4;
  v5 = *(v1 + 24);
  v3[3] = v5;
  v3[4] = v2;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v2;
  v7 = *(MEMORY[0x1E69E88F0] + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E50, &qword_1A2D0ECB8);
  *v8 = v0;
  v8[1] = sub_1A2CCBE7C;
  v10 = v0[2];

  return MEMORY[0x1EEE6DE18](v10, &unk_1A2D0ECB0, v3, sub_1A2CCF238, v6, 0, 0, v9);
}

void sub_1A2CCBE7C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 40);
    v5 = *(v2 + 48);

    v7 = *(v4 + 8);

    v7();
  }
}

uint64_t sub_1A2CCBFB8(uint64_t a1)
{
  v3 = *(MEMORY[0x1E69CA958] + 4);
  v6 = (*MEMORY[0x1E69CA958] + MEMORY[0x1E69CA958]);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A2CCC06C;

  return v6(a1);
}

uint64_t sub_1A2CCC06C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A2CCC164(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A2CD151C;

  return Activity.ActivityStateUpdates.Iterator.next()(a1, a2);
}

uint64_t sub_1A2CCC20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1A2CCC2D8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_1A2CCC2D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t Activity.ContentStateUpdates.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_1A2D08054();
  result = sub_1A2D08024();
  *a2 = result;
  return result;
}

uint64_t Activity.ContentStateUpdates.Iterator.next()(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x1E69CA958] + 4);
  v8 = (*MEMORY[0x1E69CA958] + MEMORY[0x1E69CA958]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A2C8ED44;

  return v8(a1);
}

uint64_t sub_1A2CCC4F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A2CD151C;

  return Activity.ContentStateUpdates.Iterator.next()(a1);
}

uint64_t Activity.ContentUpdates.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ActivityContent();
  sub_1A2D08054();
  result = sub_1A2D08024();
  *a2 = result;
  return result;
}

uint64_t Activity.ContentUpdates.Iterator.next()(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x1E69CA958] + 4);
  v8 = (*MEMORY[0x1E69CA958] + MEMORY[0x1E69CA958]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A2C8ED48;

  return v8(a1);
}

uint64_t sub_1A2CCC744(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A2CD151C;

  return Activity.ContentUpdates.Iterator.next()(a1);
}

uint64_t sub_1A2CCC7F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t Activity.PushTokenUpdates.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0A0E58, &qword_1A2D0ECD0);
  result = sub_1A2D08024();
  *a1 = result;
  return result;
}

uint64_t Activity.PushTokenUpdates.Iterator.next()(uint64_t a1)
{
  v3 = *v1;
  v2[5] = a1;
  v2[6] = v3;
  v4 = *(MEMORY[0x1E69CA958] + 4);
  v7 = (*MEMORY[0x1E69CA958] + MEMORY[0x1E69CA958]);
  v5 = swift_task_alloc();
  v2[7] = v5;
  *v5 = v2;
  v5[1] = sub_1A2CCC944;

  return v7(v2 + 2);
}

uint64_t sub_1A2CCC944()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A2CCCA40, 0, 0);
}

void sub_1A2CCCA40()
{
  v25 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v0[8] = v1;
  v0[9] = v2;
  if (v2 >> 60 != 15)
  {
    v3 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v3 != 2)
      {
        goto LABEL_21;
      }

      v5 = *(v1 + 16);
      v4 = *(v1 + 24);
      v6 = v4 - v5;
      if (!__OFSUB__(v4, v5))
      {
LABEL_12:
        sub_1A2C5E63C(v1, v2);
        if (v6 >= 1)
        {
LABEL_13:
          sub_1A2C5DE40(v1, v2);
          if (qword_1EB09F5F8 != -1)
          {
            swift_once();
          }

          v7 = sub_1A2D08094();
          __swift_project_value_buffer(v7, qword_1EB09F570);
          sub_1A2C5E63C(v1, v2);
          v8 = sub_1A2D08074();
          v9 = sub_1A2D086A4();
          sub_1A2C5DE40(v1, v2);
          if (os_log_type_enabled(v8, v9))
          {
            v10 = swift_slowAlloc();
            v11 = swift_slowAlloc();
            v24 = v11;
            *v10 = 136446210;
            sub_1A2C5E63C(v1, v2);
            v12 = sub_1A2D07F14();
            v14 = v13;
            sub_1A2C5DE40(v1, v2);
            v15 = sub_1A2C55558(v12, v14, &v24);

            *(v10 + 4) = v15;
            _os_log_impl(&dword_1A2C51000, v8, v9, "Emitting push token %{public}s", v10, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v11);
            MEMORY[0x1A58E5180](v11, -1, -1);
            MEMORY[0x1A58E5180](v10, -1, -1);
          }

          goto LABEL_18;
        }

LABEL_21:
        if (qword_1EB09F5F8 != -1)
        {
          swift_once();
        }

        v17 = sub_1A2D08094();
        __swift_project_value_buffer(v17, qword_1EB09F570);
        v18 = sub_1A2D08074();
        v19 = sub_1A2D086A4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_1A2C51000, v18, v19, "Push token is not available; waiting for next update", v20, 2u);
          MEMORY[0x1A58E5180](v20, -1, -1);
        }

        v21 = v0[6];

        v0[4] = v21;
        v22 = swift_task_alloc();
        v0[10] = v22;
        *v22 = v0;
        v22[1] = sub_1A2CCCDC8;
        v23 = v0[5];

        Activity.PushTokenUpdates.Iterator.next()(v23);
        return;
      }

      __break(1u);
    }

    else if (!v3)
    {
      if (!BYTE6(v2))
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    if (__OFSUB__(HIDWORD(v1), v1))
    {
      __break(1u);
      return;
    }

    v6 = HIDWORD(v1) - v1;
    goto LABEL_12;
  }

LABEL_18:
  v16 = v0[1];

  v16(v1, v2);
}

uint64_t sub_1A2CCCDC8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v6 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A2CCCEC8, 0, 0);
}

uint64_t sub_1A2CCCEC8()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_1A2C5DE40(v1, v2);
  sub_1A2C5DE40(v1, v2);
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_1A2CCCF40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A2CCCFD8;

  return Activity.PushTokenUpdates.Iterator.next()(a2);
}

uint64_t sub_1A2CCCFD8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  *v6 = a1;
  v6[1] = a2;
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1A2CCD110(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t Activity.Request.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ActivityContent();
  return (*(*(v7 - 8) + 16))(a2, v2 + v4, v7);
}

uint64_t Activity.Request.content.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for ActivityContent();
  return (*(*(v7 - 8) + 40))(v2 + v4, a1, v7);
}

uint64_t (*Activity.Request.content.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t Activity.Request.sceneTargets.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*Activity.Request.sceneTargets.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t Activity.Request.alertSceneTargets.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*Activity.Request.alertSceneTargets.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t Activity.Request.presentationOptions.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 48));
  v7 = *v3;
  v4 = *(v3 + 2);
  v8 = v4;
  *a2 = v7;
  *(a2 + 16) = v4;
  return sub_1A2C66F58(&v7, v6);
}

__n128 Activity.Request.presentationOptions.setter(__n128 *a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 48));
  v6 = *v4;
  v7 = v4[1].n128_i64[0];
  sub_1A2C69EAC(&v6);
  result = *a1;
  *v4 = *a1;
  v4[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

uint64_t (*Activity.Request.presentationOptions.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t Activity.Request.contentSourceRequests.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*Activity.Request.contentSourceRequests.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t (*Activity.Request.isEphemeral.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t (*Activity.Request.isUnbounded.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t (*Activity.Request.isMomentary.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 64);
  return result;
}

uint64_t (*Activity.Request.isImportant.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 68);
  return result;
}

uint64_t (*Activity.Request.protectionClass.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 72);
  return result;
}

uint64_t Activity.Request.startDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = sub_1A2D07F94();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Activity.Request.startDate.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 76);
  v5 = sub_1A2D07F94();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*Activity.Request.startDate.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 76);
  return result;
}

uint64_t (*Activity.Request.alertConfiguration.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 80);
  return result;
}

uint64_t Activity.Request.init(attributes:content:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, uint64_t a13, uint64_t a14)
{
  v33 = *a5;
  v34 = *(a5 + 2);
  v16 = type metadata accessor for Activity.Request();
  v26 = v16[18];
  v17 = v16[20];
  v18 = type metadata accessor for AlertConfiguration();
  v29 = *(*(v18 - 8) + 56);
  v29(a9 + v17, 1, 1, v18);
  (*(*(a14 - 8) + 32))(a9, a1, a14);
  v24 = v16[9];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for ActivityContent();
  (*(*(v19 - 8) + 32))(a9 + v24, a2, v19);
  *(a9 + v16[10]) = a3;
  *(a9 + v16[11]) = a4;
  v20 = a9 + v16[12];
  *v20 = v33;
  *(v20 + 16) = v34;
  *(a9 + v16[13]) = a6;
  *(a9 + v16[14]) = a7;
  *(a9 + v16[15]) = a8;
  *(a9 + v16[16]) = a10;
  *(a9 + v16[17]) = a11;
  *(a9 + v26) = a12;
  v21 = v16[19];
  v22 = sub_1A2D07F94();
  (*(*(v22 - 8) + 32))(a9 + v21, a13, v22);
  sub_1A2C54E38(a9 + v17, &qword_1EB0A04D0, &unk_1A2D15640);
  return (v29)(a9 + v17, 1, 1, v18);
}

uint64_t Activity.Request.init(attributes:content:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:alertConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v34 = *a5;
  v35 = *(a5 + 2);
  v17 = type metadata accessor for Activity.Request();
  v26 = v17[18];
  v18 = v17[20];
  v33 = type metadata accessor for AlertConfiguration();
  v32 = *(*(v33 - 8) + 56);
  v32(a9 + v18, 1, 1, v33);
  (*(*(a15 - 8) + 32))(a9, a1, a15);
  v19 = v17[9];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v20 = type metadata accessor for ActivityContent();
  (*(*(v20 - 8) + 32))(a9 + v19, a2, v20);
  *(a9 + v17[10]) = a3;
  *(a9 + v17[11]) = a4;
  v21 = a9 + v17[12];
  *v21 = v34;
  *(v21 + 16) = v35;
  *(a9 + v17[13]) = a6;
  *(a9 + v17[14]) = a7;
  *(a9 + v17[15]) = a8;
  *(a9 + v17[16]) = a10;
  *(a9 + v17[17]) = a11;
  *(a9 + v26) = a12;
  v22 = v17[19];
  v23 = sub_1A2D07F94();
  (*(*(v23 - 8) + 32))(a9 + v22, a13, v23);
  sub_1A2C54E38(a9 + v18, &qword_1EB0A04D0, &unk_1A2D15640);
  sub_1A2C92B5C(a14, a9 + v18, type metadata accessor for AlertConfiguration);
  return (v32)(a9 + v18, 0, 1, v33);
}

uint64_t static Activity.request(request:)(uint64_t a1)
{
  v3 = sub_1A2D07F94();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 80);
  v6 = *(v1 + 88);
  v64 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  *&v70 = AssociatedTypeWitness;
  *(&v70 + 1) = AssociatedConformanceWitness;
  v59 = AssociatedConformanceWitness;
  v58 = v10;
  v71 = v10;
  v72 = v11;
  v57 = v11;
  v55 = type metadata accessor for ActivityContent();
  v12 = *(v55 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v73 = &v48 - v14;
  v15 = *(v7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ActivityRequest();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v56 = (&v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for Activity.Request();
  v24 = (a1 + *(v23 + 48));
  if (*(*v24 + 16))
  {
    v25 = v23;
    v26 = *(v15 + 16);
    v54 = v19;
    v26(v19, a1, v7);
    ActivityAttributesType.init<A>(from:)(v69);
    v68[0] = v69[0];
    v68[1] = v69[1];
    (*(v12 + 16))(v73, a1 + v25[9], v55);
    v27 = v25[11];
    v49 = *(a1 + v25[10]);
    v28 = *(a1 + v27);
    v70 = *v24;
    v71 = v24[2];
    v66 = *v24;
    v29 = v24[2];
    v30 = v25[14];
    v48 = *(a1 + v25[13]);
    LODWORD(v55) = *(a1 + v30);
    v31 = v25[16];
    v53 = *(a1 + v25[15]);
    v52 = *(a1 + v31);
    v32 = v25[18];
    v51 = *(a1 + v25[17]);
    v67 = v29;
    v50 = *(a1 + v32);
    v33 = v62;
    (*(v60 + 16))(v62, a1 + v25[19], v61);

    sub_1A2C66F58(&v70, v65);
    v34 = *(v6 + 8);
    v35 = *(v6 + 16);
    v36 = v48;

    v47 = v34;
    v46 = v33;
    v37 = v56;
    v38 = v63;
    ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v54, v68, v73, v49, v28, &v66, v36, v55, v56, v53, v52, v51, 0, 0, v50, v46, 0, 0, v7, AssociatedTypeWitness, v47, v35, v59, v58, v57);
    if (v38)
    {
      v39 = v64;
      sub_1A2CC6E68(v38);
      swift_willThrow();
    }

    else
    {
      v44 = v37;
      if (qword_1ED709CF0 != -1)
      {
        swift_once();
      }

      v39 = sub_1A2C67380(v37, a1 + v25[20], v7, v6);
      sub_1A2C69F84(v44, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v40 = sub_1A2D08094();
    __swift_project_value_buffer(v40, qword_1EB09F570);
    v41 = sub_1A2D08074();
    v39 = sub_1A2D08684();
    if (os_log_type_enabled(v41, v39))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1A2C51000, v41, v39, "Cannot specify presentationOptions with no visual destinations", v42, 2u);
      MEMORY[0x1A58E5180](v42, -1, -1);
    }

    sub_1A2CA1590();
    swift_allocError();
    *v43 = xmmword_1A2D0EBF0;
    *(v43 + 16) = 0u;
    *(v43 + 32) = 0u;
    *(v43 + 48) = 0u;
    *(v43 + 64) = 0;
    swift_willThrow();
  }

  return v39;
}

void Activity.mockPush(forProcessIdentifier:payload:environmentName:pushPriority:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void *), uint64_t a8)
{
  v9 = v8;
  v18 = sub_1A2CC9424();
  if (v19 >> 60 == 15)
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v20 = sub_1A2D08094();
    __swift_project_value_buffer(v20, qword_1EB09F570);

    v21 = sub_1A2D08074();
    v22 = sub_1A2D08684();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_1A2C55558(0xD000000000000024, 0x80000001A2D19C30, aBlock);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1A2C55558(*(v9 + 16), *(v9 + 24), aBlock);
      _os_log_impl(&dword_1A2C51000, v21, v22, "%s %s. Ensure that you requested this activity with pushType of PushType.token", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58E5180](v24, -1, -1);
      MEMORY[0x1A58E5180](v23, -1, -1);
    }

    sub_1A2CAE3BC();
    v25 = swift_allocError();
    *v26 = 0;
    a7(0, v25);
  }

  else
  {
    v27 = a2;
    v35 = a7;
    v36 = a8;
    v28 = v19;
    v29 = v18;
    if (qword_1ED709CF0 != -1)
    {
      swift_once();
    }

    v30 = off_1ED709CF8;
    queue = *(off_1ED709CF8 + 12);
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v29;
    v31[4] = v28;
    v31[5] = 0;
    v31[6] = 0;
    v31[7] = a1;
    v31[8] = v27;
    v31[9] = a4;
    v31[10] = a5;
    v31[11] = a3;
    v31[12] = a6;
    v31[13] = v35;
    v31[14] = v36;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1A2CCF2E4;
    *(v32 + 24) = v31;
    aBlock[4] = sub_1A2C5C998;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A2C56C44;
    aBlock[3] = &block_descriptor_32_1;
    v33 = _Block_copy(aBlock);
    sub_1A2CB0824(v29, v28);
    sub_1A2CB0824(v29, v28);

    dispatch_sync(queue, v33);
    sub_1A2C5DE40(v29, v28);
    sub_1A2C5DE40(v29, v28);
    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
    }
  }
}

uint64_t Activity.mockPushChannel(forProcessIdentifier:channelID:payload:environmentName:pushPriority:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (qword_1ED709CF0 != -1)
  {
    swift_once();
  }

  v16 = off_1ED709CF8;
  queue = *(off_1ED709CF8 + 12);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = xmmword_1A2D0AC30;
  *(v17 + 40) = a3;
  *(v17 + 48) = a4;
  *(v17 + 56) = a1;
  *(v17 + 64) = a2;
  *(v17 + 72) = a6;
  *(v17 + 80) = a7;
  *(v17 + 88) = a5;
  *(v17 + 96) = a8;
  *(v17 + 104) = a9;
  *(v17 + 112) = a10;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1A2CD1518;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1A2C5C998;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_43;
  v19 = _Block_copy(aBlock);

  dispatch_sync(queue, v19);
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  return result;
}

void static Activity.mockPushStart(forProcessIdentifier:payload:environmentName:pushPriority:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void *), uint64_t a8)
{
  started = static Activity.pushToStartToken.getter();
  if (v17 >> 60 == 15)
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v18 = sub_1A2D08094();
    __swift_project_value_buffer(v18, qword_1EB09F570);
    v19 = sub_1A2D08074();
    v20 = sub_1A2D08684();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1A2C55558(0xD000000000000024, 0x80000001A2D19C30, aBlock);
      _os_log_impl(&dword_1A2C51000, v19, v20, "%s. Ensure that you requested this activity from an activity that supports push-to-start", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1A58E5180](v22, -1, -1);
      MEMORY[0x1A58E5180](v21, -1, -1);
    }

    sub_1A2CAE3BC();
    v23 = swift_allocError();
    *v24 = 0;
    a7(0, v23);
  }

  else
  {
    v32 = a7;
    v33 = a8;
    v25 = v17;
    v26 = started;
    if (qword_1ED709CF0 != -1)
    {
      swift_once();
    }

    v27 = off_1ED709CF8;
    queue = *(off_1ED709CF8 + 12);
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v26;
    v28[4] = v25;
    v28[5] = 0;
    v28[6] = 0;
    v28[7] = a1;
    v28[8] = a2;
    v28[9] = a4;
    v28[10] = a5;
    v28[11] = a3;
    v28[12] = a6;
    v28[13] = v32;
    v28[14] = v33;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1A2CD1518;
    *(v29 + 24) = v28;
    aBlock[4] = sub_1A2C5C998;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A2C56C44;
    aBlock[3] = &block_descriptor_54;
    v30 = _Block_copy(aBlock);
    sub_1A2CB0824(v26, v25);
    sub_1A2CB0824(v26, v25);

    dispatch_sync(queue, v30);
    sub_1A2C5DE40(v26, v25);
    sub_1A2C5DE40(v26, v25);
    _Block_release(v30);
    LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

    if (v30)
    {
      __break(1u);
    }
  }
}

_BYTE **sub_1A2CCEF64(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1A2CCEF9C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1A2C55558(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1A2CCEFF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1168, &qword_1A2D0F3A8);
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

uint64_t sub_1A2CCF0EC()
{
  v1 = *(v0 + 48);

  sub_1A2D08174();
}

uint64_t sub_1A2CCF134()
{
  v1 = *(v0 + 40);

  sub_1A2D08174();
}

uint64_t sub_1A2CCF17C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1A2CCF184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A2C8ED48;

  return sub_1A2CCBFB8(a1);
}

uint64_t sub_1A2CCF25C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_24Tm()
{
  v1 = v0[2];

  v2 = v0[4];
  if (v2 >> 60 != 15)
  {
    sub_1A2C55840(v0[3], v2);
  }

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t dispatch thunk of Activity.update(using:)(uint64_t a1)
{
  v4 = *(*v1 + 392);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A2C8ED44;

  return v8(a1);
}

uint64_t dispatch thunk of Activity.update(_:)(uint64_t a1)
{
  v4 = *(*v1 + 400);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A2C8ED44;

  return v8(a1);
}

uint64_t dispatch thunk of Activity.update(using:alertConfiguration:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 408);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A2C8ED44;

  return v10(a1, a2);
}

uint64_t dispatch thunk of Activity.update(_:alertConfiguration:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 424);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1A2C8ED44;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of Activity.end(using:dismissalPolicy:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 432);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A2C8ED48;

  return v10(a1, a2);
}

uint64_t dispatch thunk of Activity.end(_:dismissalPolicy:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 440);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A2C8ED44;

  return v10(a1, a2);
}

uint64_t dispatch thunk of Activity.end(_:dismissalPolicy:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 448);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1A2C8ED44;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of Activity.end(using:)(uint64_t a1)
{
  v4 = *(*v1 + 480);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A2C8ED44;

  return v8(a1);
}

uint64_t dispatch thunk of Activity.end(using:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 488);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A2C8ED44;

  return v10(a1, a2);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1A2CD01A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A2CD01F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  result = sub_1A2D08054();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A2CD02C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A2CD0314(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ActivityContent();
  result = sub_1A2D08054();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A2CD0478()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A2CD04E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1A2CD13F4(319, a4, a5, MEMORY[0x1E69CA960]);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_index_80Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_81Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t sub_1A2CD068C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A2CD06E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for ActivityContent();
    if (v5 <= 0x3F)
    {
      sub_1A2CD1390();
      if (v6 <= 0x3F)
      {
        sub_1A2CD13F4(319, &qword_1ED709518, &type metadata for ActivityContentSource.Request, MEMORY[0x1E69E62F8]);
        if (v7 <= 0x3F)
        {
          sub_1A2CD13F4(319, qword_1ED70A010, &type metadata for ActivityProtectionClass, MEMORY[0x1E69E6720]);
          if (v8 <= 0x3F)
          {
            sub_1A2D07F94();
            if (v9 <= 0x3F)
            {
              sub_1A2CD1444();
              if (v10 <= 0x3F)
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

uint64_t sub_1A2CD0904(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v60 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v57 = sub_1A2D07F94();
  v9 = *(v57 - 8);
  v63 = v9;
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v58 = v11;
  v59 = v8;
  if (v11 > v8)
  {
    v8 = v11;
  }

  v61 = v6;
  if (v8 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v8;
  }

  if (v12 <= v10)
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v12;
  }

  v14 = *(sub_1A2D07EF4() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  if (v16 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  v18 = v17 - 1;
  if (v13 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v13;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v9 + 80);
  v22 = *(v7 + 64);
  v23 = *(v9 + 64);
  v24 = *(v14 + 80);
  v25 = *(v14 + 64);
  v26 = 7;
  if (!v10)
  {
    v26 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = *(v7 + 80) & 0xF8 | v21 | 7;
  v28 = *(v5 + 64) + v27;
  v29 = v22 + v21;
  v30 = (v22 + v21) & ~v21;
  v31 = v24 | 7;
  v32 = v25 + v24;
  v33 = v25 + 7;
  v34 = ((v26 + v23 + v30) & 0xFFFFFFFFFFFFFFF8) + 8;
  v35 = v21 + 13;
  v36 = (v24 | 7) + v23;
  v37 = a1;
  if (v20 >= a2)
  {
    goto LABEL_46;
  }

  v38 = ((((v33 + (v32 & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + ((v36 + ((v35 + ((((((v34 + (v28 & ~v27) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & ~v31) + 10;
  if (v38 <= 3)
  {
    v39 = ((a2 - v20 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v39 = 2;
  }

  if (v39 >= 0x10000)
  {
    v40 = 4;
  }

  else
  {
    v40 = 2;
  }

  if (v39 < 0x100)
  {
    v40 = 1;
  }

  if (v39 >= 2)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  if (v41 <= 1)
  {
    if (!v41)
    {
      goto LABEL_46;
    }

    v42 = *(a1 + v38);
    if (!*(a1 + v38))
    {
      goto LABEL_46;
    }

LABEL_42:
    v44 = (v42 - 1) << (8 * v38);
    if (v38 <= 3)
    {
      v45 = *a1;
    }

    else
    {
      v44 = 0;
      v45 = *a1;
    }

    return v20 + (v45 | v44) + 1;
  }

  if (v41 == 2)
  {
    v42 = *(a1 + v38);
    if (*(a1 + v38))
    {
      goto LABEL_42;
    }
  }

  else
  {
    v42 = *(a1 + v38);
    if (v42)
    {
      goto LABEL_42;
    }
  }

LABEL_46:
  if (v61 == v20)
  {
    v46 = v60;
    v47 = *(v5 + 48);
    v48 = v61;
LABEL_48:

    return v47(v37, v48, v46);
  }

  v49 = ~v21;
  v37 = (a1 + v28) & ~v27;
  if (v8 == v20)
  {
    v48 = v59;
    if (v59 >= v58)
    {
      v47 = *(v7 + 48);
      v46 = AssociatedTypeWitness;
      goto LABEL_48;
    }

    v50 = (*(v63 + 48))((v29 + v37) & v49, v10, v57);
LABEL_54:
    if (v50 >= 2)
    {
      return v50 - 1;
    }

    else
    {
      return 0;
    }
  }

  v51 = (v34 + v37);
  if ((v19 & 0x80000000) != 0)
  {
    v37 = (v35 + ((((((v51 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & v49;
    if (v10 == v20)
    {
      v47 = *(v63 + 48);
      v48 = v10;
      v46 = v57;
      goto LABEL_48;
    }

    v53 = (v36 + v37) & ~v31;
    if (v16 < 0x7FFFFFFE)
    {
      v54 = *(((v33 + ((v32 + v53) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v54 >= 0xFFFFFFFF)
      {
        LODWORD(v54) = -1;
      }

      v55 = v54 - 1;
      if (v55 < 0)
      {
        v55 = -1;
      }

      v50 = v55 + 1;
    }

    else
    {
      v50 = (*(v15 + 48))(v53);
    }

    goto LABEL_54;
  }

  v52 = *v51;
  if (*v51 >= 0xFFFFFFFF)
  {
    LODWORD(v52) = -1;
  }

  return (v52 + 1);
}

void sub_1A2CD0DC8(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v5 = *(*(a4 + 16) - 8);
  v62 = v5;
  v6 = *(v5 + 84);
  v63 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v58 = sub_1A2D07F94();
  v9 = *(v58 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v60 = v8;
  v61 = v11;
  if (v11 > v8)
  {
    v8 = v11;
  }

  v64 = v6;
  if (v8 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v8;
  }

  if (v12 <= v10)
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v12;
  }

  v14 = 0;
  v15 = *(sub_1A2D07EF4() - 8);
  v16 = *(v15 + 84);
  v17 = *(v5 + 64);
  v18 = *(v9 + 80);
  v19 = *(v7 + 64);
  v20 = *(v9 + 64);
  v21 = *(v15 + 80);
  v22 = *(v15 + 64);
  if (v16 <= 0x7FFFFFFE)
  {
    v23 = 2147483646;
  }

  else
  {
    v23 = *(v15 + 84);
  }

  if (v13 <= v23 - 1)
  {
    v24 = v23 - 1;
  }

  else
  {
    v24 = v13;
  }

  if (v24 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v7 + 80) & 0xF8 | v18 | 7;
  v27 = v17 + v26;
  v28 = (v17 + v26) & ~v26;
  v29 = v19 + v18;
  v30 = (v19 + v18) & ~v18;
  if (v10)
  {
    v31 = *(v9 + 64);
  }

  else
  {
    v31 = v20 + 1;
  }

  v32 = v21 | 7;
  v33 = v22 + v21;
  v34 = v22 + 7;
  v35 = ((((v22 + 7 + ((v22 + v21) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 10;
  v36 = ((v30 + v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v37 = v18 + 13;
  v38 = (v21 | 7) + v20;
  v39 = ((v38 + ((v18 + 13 + ((((((v36 + v28 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & ~(v21 | 7)) + v35;
  if (v25 < a3)
  {
    if (v39 <= 3)
    {
      v40 = ((a3 - v25 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v40 = 2;
    }

    if (v40 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v40 < 0x100)
    {
      v14 = 1;
    }

    if (v40 < 2)
    {
      v14 = 0;
    }
  }

  if (v25 >= a2)
  {
    v43 = a1;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        *(a1 + v39) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_52;
      }

      *(a1 + v39) = 0;
    }

    else if (v14)
    {
      *(a1 + v39) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_52;
    }

    if (!a2)
    {
      return;
    }

LABEL_52:
    if (v64 == v25)
    {
      v44 = v63;
      v45 = *(v62 + 56);
      v46 = a2;
      v47 = v64;
LABEL_54:

      v45(v43, v46, v47, v44);
      return;
    }

    v48 = ~v18;
    v43 = (a1 + v27) & ~v26;
    if (v8 == v25)
    {
      v47 = v60;
      if (v60 >= v61)
      {
        v45 = *(v7 + 56);
        v46 = a2;
        v44 = AssociatedTypeWitness;
        goto LABEL_54;
      }

      v49 = ((v29 + v43) & v48);
      if (v61 < a2)
      {
        if (v31 <= 3)
        {
          v50 = ~(-1 << (8 * v31));
        }

        else
        {
          v50 = -1;
        }

        if (!v31)
        {
          return;
        }

        v51 = v50 & (~v61 + a2);
        if (v31 <= 3)
        {
          v52 = v31;
        }

        else
        {
          v52 = 4;
        }

        bzero(((v29 + v43) & v48), v31);
        if (v52 <= 2)
        {
          if (v52 == 1)
          {
            *v49 = v51;
            return;
          }

          goto LABEL_90;
        }

        if (v52 == 3)
        {
          *v49 = v51;
          v49[2] = BYTE2(v51);
          return;
        }

        goto LABEL_93;
      }

      v45 = *(v9 + 56);
      v46 = a2 + 1;
      v43 = (v29 + v43) & v48;
    }

    else
    {
      v53 = (v36 + v43);
      if ((v24 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v54 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v54 = a2 - 1;
        }

        *v53 = v54;
        return;
      }

      v43 = (v37 + ((((((v53 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)) & v48;
      if (v10 != v25)
      {
        v49 = ((v38 + v43) & ~v32);
        v51 = a2 - v23;
        if (a2 < v23)
        {
          v55 = a2 + 1;
          if (v16 <= 0x7FFFFFFD)
          {
            v57 = ((v34 + (&v49[v33] & ~v21)) & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFD)
            {
              v57[2] = 0;
              v57[3] = 0;
              *v57 = a2 - 2147483646;
              v57[1] = 0;
            }

            else
            {
              v57[1] = v55;
            }
          }

          else
          {
            v56 = *(v15 + 56);

            v56(v49, v55);
          }

          return;
        }

        bzero(((v38 + v43) & ~v32), v35);
        if (v35 <= 3)
        {
LABEL_90:
          *v49 = v51;
          return;
        }

LABEL_93:
        *v49 = v51;
        return;
      }

      v45 = *(v9 + 56);
      v46 = a2;
    }

    v47 = v10;
    v44 = v58;
    goto LABEL_54;
  }

  v41 = ~v25 + a2;
  bzero(a1, v39);
  if (v39 <= 3)
  {
    v42 = HIWORD(v41) + 1;
  }

  else
  {
    v42 = 1;
  }

  if (v39 <= 3)
  {
    *a1 = v41;
    if (v14 > 1)
    {
LABEL_40:
      if (v14 == 2)
      {
        *(a1 + v39) = v42;
      }

      else
      {
        *(a1 + v39) = v42;
      }

      return;
    }
  }

  else
  {
    *a1 = v41;
    if (v14 > 1)
    {
      goto LABEL_40;
    }
  }

  if (v14)
  {
    *(a1 + v39) = v42;
  }
}

void sub_1A2CD1390()
{
  if (!qword_1ED709298)
  {
    sub_1A2C5604C();
    v0 = sub_1A2D083C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED709298);
    }
  }
}

void sub_1A2CD13F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A2CD1444()
{
  if (!qword_1ED709990)
  {
    type metadata accessor for AlertConfiguration();
    v0 = sub_1A2D087E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED709990);
    }
  }
}

unint64_t sub_1A2CD149C()
{
  result = qword_1EB0A1178;
  if (!qword_1EB0A1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1178);
  }

  return result;
}

uint64_t sub_1A2CD1558(uint64_t a1)
{
  v2 = sub_1A2C74724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD1594(uint64_t a1)
{
  v2 = sub_1A2C74724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD15DC(uint64_t a1)
{
  v2 = sub_1A2C746D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD1618(uint64_t a1)
{
  v2 = sub_1A2C746D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD1654(uint64_t a1)
{
  v2 = sub_1A2C957C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD1690(uint64_t a1)
{
  v2 = sub_1A2C957C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD16CC(uint64_t a1)
{
  v2 = sub_1A2CD1888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD1708(uint64_t a1)
{
  v2 = sub_1A2CD1888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD1744(uint64_t a1)
{
  v2 = sub_1A2CD18DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD1780(uint64_t a1)
{
  v2 = sub_1A2CD18DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD17BC(uint64_t a1)
{
  v2 = sub_1A2CD1834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD17F8(uint64_t a1)
{
  v2 = sub_1A2CD1834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A2CD1834()
{
  result = qword_1EB0A11B0;
  if (!qword_1EB0A11B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A11B0);
  }

  return result;
}

unint64_t sub_1A2CD1888()
{
  result = qword_1EB09F678;
  if (!qword_1EB09F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F678);
  }

  return result;
}

unint64_t sub_1A2CD18DC()
{
  result = qword_1EB0A11B8;
  if (!qword_1EB0A11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A11B8);
  }

  return result;
}

uint64_t ActivityState.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

unint64_t sub_1A2CD19A8()
{
  result = qword_1EB0A11F0;
  if (!qword_1EB0A11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A11F0);
  }

  return result;
}

unint64_t sub_1A2CD19FC(void *a1)
{
  a1[1] = sub_1A2C78A64();
  a1[2] = sub_1A2C74124();
  result = sub_1A2CD1A34();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CD1A34()
{
  result = qword_1EB0A11F8;
  if (!qword_1EB0A11F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A11F8);
  }

  return result;
}

uint64_t sub_1A2CD1A88()
{
  v9 = *v0;
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C74124();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

uint64_t sub_1A2CD1B44(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1A2D07E84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  sub_1A2C78A64();
  sub_1A2D07E64();
  sub_1A2C55840(v6, v8);

  *a2 = v10;
  return result;
}

unint64_t sub_1A2CD1C88()
{
  result = qword_1EB0A1200;
  if (!qword_1EB0A1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1200);
  }

  return result;
}

unint64_t sub_1A2CD1CE0()
{
  result = qword_1ED709028;
  if (!qword_1ED709028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709028);
  }

  return result;
}

unint64_t sub_1A2CD1D38()
{
  result = qword_1ED709030;
  if (!qword_1ED709030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709030);
  }

  return result;
}

unint64_t sub_1A2CD1D90()
{
  result = qword_1ED709218;
  if (!qword_1ED709218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709218);
  }

  return result;
}

unint64_t sub_1A2CD1DE8()
{
  result = qword_1ED709220;
  if (!qword_1ED709220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709220);
  }

  return result;
}

unint64_t sub_1A2CD1E40()
{
  result = qword_1ED709230;
  if (!qword_1ED709230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709230);
  }

  return result;
}

unint64_t sub_1A2CD1E98()
{
  result = qword_1ED709238;
  if (!qword_1ED709238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709238);
  }

  return result;
}

unint64_t sub_1A2CD1EF0()
{
  result = qword_1ED709200;
  if (!qword_1ED709200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709200);
  }

  return result;
}

unint64_t sub_1A2CD1F48()
{
  result = qword_1ED709208;
  if (!qword_1ED709208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709208);
  }

  return result;
}

unint64_t sub_1A2CD1FA0()
{
  result = qword_1ED7090D8;
  if (!qword_1ED7090D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7090D8);
  }

  return result;
}

unint64_t sub_1A2CD1FF8()
{
  result = qword_1ED7090E0;
  if (!qword_1ED7090E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7090E0);
  }

  return result;
}

unint64_t sub_1A2CD2050()
{
  result = qword_1ED709240;
  if (!qword_1ED709240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709240);
  }

  return result;
}

unint64_t sub_1A2CD20A8()
{
  result = qword_1ED709248;
  if (!qword_1ED709248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709248);
  }

  return result;
}

uint64_t sub_1A2CD20FC()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1ED708A38);
  __swift_project_value_buffer(v0, qword_1ED708A38);
  return sub_1A2D08004();
}

uint64_t static ActivityAuthorizationServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED708A30 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED708A38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CD220C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED708A30 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED708A38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CD2330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144656C617473 && a2 == 0xE900000000000065 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E6176656C6572 && a2 == 0xEE0065726F635365)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A2CD248C(unsigned __int8 a1)
{
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](a1);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CD24D4(char a1)
{
  if (!a1)
  {
    return 0x6574617473;
  }

  if (a1 == 1)
  {
    return 0x746144656C617473;
  }

  return 0x636E6176656C6572;
}

BOOL sub_1A2CD2538(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_1A2CD2454(*a1, *a2);
}

uint64_t sub_1A2CD2550(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1A2CD248C(*v1);
}

uint64_t sub_1A2CD2560(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_1A2CD2464(a1, *v2);
}

uint64_t sub_1A2CD2570(uint64_t a1, void *a2)
{
  sub_1A2D08C14();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_1A2CD2464(v9, *v2);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CD25BC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1A2CD24D4(*v1);
}

uint64_t sub_1A2CD25CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_1A2CD2330(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1A2CD2600@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1A2CD4450();
  *a2 = result;
  return result;
}

uint64_t sub_1A2CD2634(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A2CD2688(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ActivityContent.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - v6;
  v8 = *(a1 + 16);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  strcpy(v27, "State: ");
  v27[1] = 0xE700000000000000;
  (*(v13 + 16))(v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v8, v11);
  v14 = sub_1A2D08454();
  MEMORY[0x1A58E4150](v14);

  v15 = v27[0];
  v16 = v27[1];
  strcpy(v27, "Stale date: ");
  BYTE5(v27[1]) = 0;
  HIWORD(v27[1]) = -5120;
  sub_1A2C7214C(v2 + *(a1 + 52), v7);
  v17 = sub_1A2D08454();
  MEMORY[0x1A58E4150](v17);

  v18 = v27[0];
  v19 = v27[1];
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_1A2D08864();

  v27[0] = 0xD000000000000011;
  v27[1] = 0x80000001A2D1A560;
  v20 = *(v2 + *(a1 + 56));
  v21 = sub_1A2D08644();
  MEMORY[0x1A58E4150](v21);

  v22 = v27[0];
  v23 = v27[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A2D0FAE0;
  *(v24 + 32) = v15;
  *(v24 + 40) = v16;
  *(v24 + 48) = v18;
  *(v24 + 56) = v19;
  *(v24 + 64) = v22;
  *(v24 + 72) = v23;
  v25 = MEMORY[0x1A58E4220]();

  return v25;
}

uint64_t sub_1A2CD2944(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return OpaqueObjectiveCBridgable<>._bridgeToObjectiveC()(a1, WitnessTable);
}

uint64_t sub_1A2CD2998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static OpaqueObjectiveCBridgable<>._forceBridgeFromObjectiveC(_:result:)(a1, a2, a3, WitnessTable);
}

BOOL sub_1A2CD2A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static OpaqueObjectiveCBridgable<>._conditionallyBridgeFromObjectiveC(_:result:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1A2CD2A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return static OpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)(a1, a2, WitnessTable, a3);
}

uint64_t ActivityContent.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v19 = *(a2 + 32);
  v20 = v5;
  v18 = a2;
  v21 = v5;
  v22 = v19;
  type metadata accessor for ActivityContent.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1A2D08AF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2D08C74();
  LOBYTE(v21) = 0;
  v12 = v23;
  sub_1A2D08AE4();
  if (!v12)
  {
    v13 = v18;
    v14 = *(v18 + 52);
    LOBYTE(v21) = 1;
    sub_1A2D07F94();
    sub_1A2C6D4B0(&qword_1ED7093B0, MEMORY[0x1E6969530]);
    sub_1A2D08AA4();
    v15 = *(v3 + *(v13 + 56));
    LOBYTE(v21) = 2;
    sub_1A2D08AD4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t OpaqueActivityContent.contentState.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A2C55840(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t OpaqueActivityContent.staleDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for OpaqueActivityContent() + 20);

  return sub_1A2C6D68C(a1, v3);
}

uint64_t OpaqueActivityContent.init(contentState:staleDate:relevanceScore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>)
{
  v10 = type metadata accessor for OpaqueActivityContent();
  v11 = *(v10 + 20);
  v12 = sub_1A2D07F94();
  (*(*(v12 - 8) + 56))(&a4[v11], 1, 1, v12);
  *a4 = a1;
  *(a4 + 1) = a2;
  result = sub_1A2C6D68C(a3, &a4[v11]);
  *&a4[*(v10 + 24)] = a5;
  return result;
}

uint64_t OpaqueActivityContent.asTypedContentState<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v32 = sub_1A2D087E4();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v29 = *(a1 - 8);
  v14 = *(v29 + 56);
  v14(&v26 - v12, 1, 1, a1, v11);
  v15 = sub_1A2D07D54();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_1A2D07D44();
  v18 = *v2;
  v19 = v2[1];
  v20 = v31;
  sub_1A2D07D34();
  if (v20)
  {
    (*(v4 + 8))(v13, v32);
  }

  else
  {
    v22 = *(v4 + 8);
    v23 = v32;
    v31 = v4 + 8;
    v27 = v22;
    v22(v13, v32);
    (v14)(v9, 0, 1, a1);
    (*(v4 + 32))(v13, v9, v23);
    v24 = v30;
    (*(v4 + 16))(v30, v13, v23);
    v25 = v29;
    result = (*(v29 + 48))(v24, 1, a1);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v27(v13, v32);

      return (*(v25 + 32))(v28, v24, a1);
    }
  }

  return result;
}

id OpaqueActivityContent.acActivityContent.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for OpaqueActivityContent();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A2C6D6FC(v1, v10);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v7 + 28);
  v14 = *(v10 + *(v7 + 32));
  v15 = sub_1A2D07F24();
  sub_1A2C7214C(v10 + v13, v5);
  v16 = sub_1A2D07F94();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v5, 1, v16) != 1)
  {
    v18 = sub_1A2D07F54();
    (*(v17 + 8))(v5, v16);
  }

  v19 = [objc_allocWithZone(ACActivityContent) initWithContentData:v15 staleDate:v18 relevanceScore:v14];

  sub_1A2C6FD00(v10);
  return v19;
}

id ACActivityContent.init(opaqueContent:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = type metadata accessor for OpaqueActivityContent();
  sub_1A2C7214C(a1 + *(v11 + 20), v8);
  v12 = *(a1 + *(v11 + 24));
  v13 = sub_1A2D07F24();
  sub_1A2C7214C(v8, v5);
  v14 = sub_1A2D07F94();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = sub_1A2D07F54();
    (*(v15 + 8))(v5, v14);
  }

  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContentData:v13 staleDate:v16 relevanceScore:v12];

  sub_1A2C54E38(v8, &qword_1EB0A0E28, &unk_1A2D0EC10);
  sub_1A2C6FD00(a1);
  return v17;
}

uint64_t sub_1A2CD3A3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746144656C617473;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x636E6176656C6572;
    v4 = 0xEE0065726F635365;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x53746E65746E6F63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065746174;
  }

  v7 = 0x746144656C617473;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x636E6176656C6572;
    v8 = 0xEE0065726F635365;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x53746E65746E6F63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065746174;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A2D08B34();
  }

  return v11 & 1;
}

uint64_t sub_1A2CD3B64()
{
  v1 = *v0;
  sub_1A2D08C14();
  sub_1A2D08484();

  return sub_1A2D08C54();
}

uint64_t sub_1A2CD3C20()
{
  *v0;
  *v0;
  sub_1A2D08484();
}

uint64_t sub_1A2CD3CC8()
{
  v1 = *v0;
  sub_1A2D08C14();
  sub_1A2D08484();

  return sub_1A2D08C54();
}

uint64_t sub_1A2CD3D80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1A2CD4458();
  *a2 = result;
  return result;
}

void sub_1A2CD3DB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065746174;
  v4 = 0xE900000000000065;
  v5 = 0x746144656C617473;
  if (v2 != 1)
  {
    v5 = 0x636E6176656C6572;
    v4 = 0xEE0065726F635365;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x53746E65746E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A2CD3E28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A2CD4458();
  *a1 = result;
  return result;
}

uint64_t sub_1A2CD3E50(uint64_t a1)
{
  v2 = sub_1A2C6D3E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD3E8C(uint64_t a1)
{
  v2 = sub_1A2C6D3E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD3ECC()
{
  v0 = sub_1A2D07EB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C6D4B0(&qword_1ED708AD8, type metadata accessor for OpaqueActivityContent);
  v3 = sub_1A2D07E94();
  v5 = v4;
  v6 = sub_1A2D07F24();
  sub_1A2C55840(v3, v5);

  return v6;
}

uint64_t sub_1A2CD3FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AA0, &unk_1A2D10000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_1A2D07E84();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v12 = sub_1A2D07F44();
  v14 = v13;
  sub_1A2C6D4B0(&qword_1ED709098, type metadata accessor for OpaqueActivityContent);
  sub_1A2D07E64();
  sub_1A2C54E38(a2, &unk_1EB0A0AA0, &unk_1A2D10000);
  sub_1A2C55840(v12, v14);

  (*(*(a3 - 8) + 56))(v8, 0, 1, a3);
  return sub_1A2C639DC(v8, a2, &unk_1EB0A0AA0, &unk_1A2D10000);
}

uint64_t sub_1A2CD4188(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1A2CD4208(void *a1)
{
  a1[1] = sub_1A2C6D4B0(&qword_1ED709098, type metadata accessor for OpaqueActivityContent);
  a1[2] = sub_1A2C6D4B0(&qword_1ED708AD8, type metadata accessor for OpaqueActivityContent);
  result = sub_1A2C6D4B0(qword_1EB0A1228, type metadata accessor for OpaqueActivityContent);
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CD4314()
{
  result = qword_1EB0A12B0;
  if (!qword_1EB0A12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A12B0);
  }

  return result;
}

unint64_t sub_1A2CD436C()
{
  result = qword_1ED7090A0;
  if (!qword_1ED7090A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7090A0);
  }

  return result;
}

unint64_t sub_1A2CD43C4()
{
  result = qword_1ED7090A8;
  if (!qword_1ED7090A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7090A8);
  }

  return result;
}

uint64_t sub_1A2CD4458()
{
  v0 = sub_1A2D089C4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

id sub_1A2CD44A4(void *a1)
{
  [a1 selector];
  if (sub_1A2D07FD4())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1A2CD451C()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB09ECA0);
  __swift_project_value_buffer(v0, qword_1EB09ECA0);
  return sub_1A2D08084();
}

uint64_t sub_1A2CD459C()
{
  v2 = *(v0 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient__subscriptionTypePublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A12C0, &unk_1A2D10010);
  sub_1A2C56A78(&qword_1EB0A12C8, &qword_1EB0A12C0, &unk_1A2D10010);
  return sub_1A2D081F4();
}

id SubscriptionPreferencesObservationClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SubscriptionPreferencesObservationClient.init()()
{
  v27 = sub_1A2D086E4();
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A2D086C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1A2D08314();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v26 = OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue;
  v9 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v25[0] = "Relevance Score: ";
  v25[1] = v9;
  sub_1A2D082E4();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2D08804();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v27);
  *&v0[v26] = sub_1A2D08724();
  v10 = OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_serverStartupToken] = -1;
  v11 = OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient__subscriptionTypePublisher;
  aBlock = 0;
  v29 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A12C0, &unk_1A2D10010);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&v0[v11] = sub_1A2D081B4();
  v15 = *&v0[v10];
  *&v0[v10] = 0;

  v16 = type metadata accessor for SubscriptionPreferencesObservationClient();
  v34.receiver = v0;
  v34.super_class = v16;
  v17 = objc_msgSendSuper2(&v34, sel_init);
  v18 = *&v17[OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue];
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1A2CD4A98;
  *(v20 + 24) = v19;
  v32 = sub_1A2C56C14;
  v33 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1A2C56C44;
  v31 = &block_descriptor_11;
  v21 = _Block_copy(&aBlock);
  v22 = v17;
  v23 = v18;

  dispatch_sync(v23, v21);

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    return v22;
  }

  __break(1u);
  return result;
}

void sub_1A2CD4AE0()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue];
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2CD60E8();
    v10 = v0;
    v11 = sub_1A2D08784();
    if (v11)
    {
      v12 = *&v0[v9];
      *&v10[v9] = v11;
      v13 = v11;

      v14 = swift_allocObject();
      *(v14 + 16) = v10;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1A2CD613C;
      *(v15 + 24) = v14;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_25_0;
      v16 = _Block_copy(aBlock);
      v10;

      [v13 configureConnection_];
      _Block_release(v16);
      LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

      if ((v16 & 1) == 0)
      {
        sub_1A2CD54B4();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

void sub_1A2CD4D8C(void *a1, char *a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v21 = sub_1A2CD44A4;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C577A8;
  v20 = &block_descriptor_28_0;
  v6 = _Block_copy(&v17);
  v7 = &unk_1F1589630;

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol:v7 interpreter:v6];
  _Block_release(v6);

  [v5 setClient_];
  v10 = [v8 protocolForProtocol_];
  [v5 setServer_];

  v11 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v21 = sub_1A2CD6144;
  v22 = v12;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C58E8C;
  v20 = &block_descriptor_34;
  v13 = _Block_copy(&v17);
  v14 = a2;

  [a1 setActivationHandler_];
  _Block_release(v13);
  v21 = sub_1A2CD521C;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C58E8C;
  v20 = &block_descriptor_37_0;
  v15 = _Block_copy(&v17);
  [a1 setInterruptionHandler_];
  _Block_release(v15);
  v21 = sub_1A2CD5228;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C58E8C;
  v20 = &block_descriptor_40;
  v16 = _Block_copy(&v17);
  [a1 setInvalidationHandler_];
  _Block_release(v16);
}

void sub_1A2CD5138()
{
  if (qword_1EB09EC98 != -1)
  {
    swift_once();
  }

  v0 = sub_1A2D08094();
  __swift_project_value_buffer(v0, qword_1EB09ECA0);
  v1 = sub_1A2D08074();
  v2 = sub_1A2D08674();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A2C51000, v1, v2, "Subscription preferences observation: activated", v3, 2u);
    MEMORY[0x1A58E5180](v3, -1, -1);
  }

  sub_1A2CD5A34();
}

void sub_1A2CD5234(uint64_t a1, const char *a2)
{
  if (qword_1EB09EC98 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1EB09ECA0);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CD5324()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    sub_1A2CD4AE0();
    v9 = *(v0 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_connection);
    if (v9)
    {
      v10 = v9;
      if ([v10 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C599D8(v11);
      }

      else
      {
        memset(v11, 0, sizeof(v11));
        sub_1A2C599D8(v11);
        [v10 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CD54B4()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CD60E0;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_16;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1EB09EC98 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1EB09ECA0);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

void sub_1A2CD56AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A2CD5A34();
  }
}

uint64_t sub_1A2CD5700()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = *(isa + 8);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue);
  *v6 = v7;
  (*(isa + 13))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  v9 = (*(isa + 1))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2CD5324(v9);
  v10 = *(v0 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_connection);
  if (!v10)
  {
    if (qword_1EB09EC98 != -1)
    {
      swift_once();
    }

    v11 = sub_1A2D08094();
    __swift_project_value_buffer(v11, qword_1EB09ECA0);
    v1 = sub_1A2D08074();
    v12 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v12, "SubscriptionPreferencesObservationClient: Failed to establish a connection", v13, 2u);
      MEMORY[0x1A58E5180](v13, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v10;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (*(&v21 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A12F8, &qword_1A2D10078);
    if (swift_dynamicCast())
    {

      return v19[1];
    }
  }

  else
  {
    sub_1A2C599D8(v22);
  }

  if (qword_1EB09EC98 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v15 = sub_1A2D08094();
  __swift_project_value_buffer(v15, qword_1EB09ECA0);
  v16 = sub_1A2D08074();
  v17 = sub_1A2D08694();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1A2C51000, v16, v17, "SubscriptionPreferencesObservationClient: Failed to cast connection to server interface protocol", v18, 2u);
    MEMORY[0x1A58E5180](v18, -1, -1);
  }

LABEL_18:
  return 0;
}

void sub_1A2CD5A34()
{
  v27[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1A2D08344();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
LABEL_8:
    v15 = sub_1A2D08094();
    __swift_project_value_buffer(v15, qword_1EB09ECA0);
    v16 = v1;
    v17 = sub_1A2D08074();
    v18 = sub_1A2D08684();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27[0] = v20;
      *v19 = 136446210;
      v26[2] = v1;
      v21 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
      v22 = sub_1A2D08454();
      v24 = sub_1A2C55558(v22, v23, v27);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1A2C51000, v17, v18, "Could not register for push tokens: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1A58E5180](v20, -1, -1);
      MEMORY[0x1A58E5180](v19, -1, -1);
    }

    else
    {
    }

    goto LABEL_11;
  }

  v9 = sub_1A2CD5700();
  if (!v9)
  {
LABEL_11:
    v25 = *MEMORY[0x1E69E9840];
    return;
  }

  v27[0] = 0;
  v10 = [v9 registerForSubscriptionPreferencesWithError_];
  swift_unknownObjectRelease();
  v11 = v27[0];
  if (!v10)
  {
    v26[1] = v27[0];
    v14 = v27[0];
    v1 = sub_1A2D07ED4();

    swift_willThrow();
    if (qword_1EB09EC98 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v12 = *MEMORY[0x1E69E9840];

  v13 = v11;
}

id SubscriptionPreferencesObservationClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubscriptionPreferencesObservationClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SubscriptionPreferencesObservationClient.subscriptionPreferencesDidChange(_:)()
{
  v1 = v0;
  v2 = sub_1A2D08344();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1A2D08364();
  result = (*(v3 + 8))(v7, v2);
  if (v8)
  {
    v11 = sub_1A2D07D54();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_1A2D07D44();
    sub_1A2CD5FB8();
    sub_1A2D07D34();
    v14 = *(v1 + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient__subscriptionTypePublisher);
    sub_1A2D08174();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A2CD5FB8()
{
  result = qword_1EB0A12E8;
  if (!qword_1EB0A12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A12E8);
  }

  return result;
}

unint64_t sub_1A2CD60E8()
{
  result = qword_1EB09ED48;
  if (!qword_1EB09ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED48);
  }

  return result;
}

uint64_t AlertConfiguration.title.setter(uint64_t a1)
{
  v3 = sub_1A2D07EF4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AlertConfiguration.body.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlertConfiguration() + 20);
  v4 = sub_1A2D07EF4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void static AlertConfiguration.AlertSound.default.getter(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void AlertConfiguration.sound.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = v1 + *(type metadata accessor for AlertConfiguration() + 24);
  v7 = *(v6 + 8);
  v8 = *(v6 + 24);

  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
}

void AlertConfiguration.init(title:body:sound:automaticDismissOption:breaksThroughFocus:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v21 = a3[1];
  v22 = *a3;
  v20 = *(a3 + 16);
  v18 = *a4;
  v19 = a3[3];
  v17 = *(a4 + 8);
  v9 = type metadata accessor for AlertConfiguration();
  v10 = a6 + v9[6];
  *(v10 + 24) = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v11 = a6 + v9[7];
  *v11 = 0x4018000000000000;
  *(v11 + 8) = 0;
  v12 = v9[8];
  v13 = sub_1A2D07EF4();
  v14 = *(*(v13 - 8) + 32);
  v14(a6, a1, v13);
  v14(a6 + v9[5], a2, v13);
  v15 = *(v10 + 8);
  v16 = *(v10 + 24);

  *v10 = v22;
  *(v10 + 8) = v21;
  *(v10 + 16) = v20;
  *(v10 + 24) = v19;
  *v11 = v18;
  *(v11 + 8) = v17;
  *(a6 + v12) = a5;
}

uint64_t AlertConfiguration.automaticDismissOption.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for AlertConfiguration();
  v5 = v1 + *(result + 28);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t AlertConfiguration.breaksThroughFocus.setter(char a1)
{
  result = type metadata accessor for AlertConfiguration();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t static AlertConfiguration.AutomaticDismissOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && (v8 = *a1, v9 = *a2, v2 == v3);
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1A2CD6624(uint64_t a1)
{
  v2 = sub_1A2C871E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD6660(uint64_t a1)
{
  v2 = sub_1A2C871E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD669C(uint64_t a1)
{
  v2 = sub_1A2C8704C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD66D8(uint64_t a1)
{
  v2 = sub_1A2C8704C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD6714(uint64_t a1)
{
  v2 = sub_1A2CD6858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD6750(uint64_t a1)
{
  v2 = sub_1A2CD6858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD678C(uint64_t a1)
{
  v2 = sub_1A2CD6804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD67C8(uint64_t a1)
{
  v2 = sub_1A2CD6804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A2CD6804()
{
  result = qword_1ED708A60;
  if (!qword_1ED708A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708A60);
  }

  return result;
}

unint64_t sub_1A2CD6858()
{
  result = qword_1EB0A1320;
  if (!qword_1EB0A1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1320);
  }

  return result;
}

uint64_t sub_1A2CD68AC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && (v8 = *a1, v9 = *a2, v2 == v3);
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t AlertConfiguration.AlertSound.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AlertConfiguration.AlertSound.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

id static AlertConfiguration.AlertSound.withToneLibraryConfig(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = a1;
  *(a2 + 16) = 0;
  return a1;
}

void static AlertConfiguration.AlertSound.silent.getter(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void *AlertConfiguration.AlertSound.toneLibraryConfig.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_1A2CD6A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CD74D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CD6A88(uint64_t a1)
{
  v2 = sub_1A2C8641C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD6AC4(uint64_t a1)
{
  v2 = sub_1A2C8641C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CD6B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CD7688(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CD6B28(uint64_t a1)
{
  v2 = sub_1A2C86904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD6B64(uint64_t a1)
{
  v2 = sub_1A2C86904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s11ActivityKit18AlertConfigurationV0C5SoundV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    if (*a1 == *a2 && v3 == v6)
    {
      if (v4 != v7)
      {
        return 0;
      }

      goto LABEL_13;
    }

    v10 = sub_1A2D08B34();
    result = 0;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v6)
    {
      return result;
    }
  }

  if (((v4 ^ v7) & 1) == 0)
  {
LABEL_13:
    if (v5)
    {
      if (v8)
      {
        sub_1A2C569A0(0, &qword_1EB0A1360, 0x1E69DA8E8);
        v12 = v8;
        v13 = v5;
        v14 = sub_1A2D087C4();

        if (v14)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s11ActivityKit18AlertConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1A58E3BA0]())
  {
    v4 = type metadata accessor for AlertConfiguration();
    if (MEMORY[0x1A58E3BA0](a1 + v4[5], a2 + v4[5]))
    {
      v5 = a1 + v4[6];
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
      v29[0] = *v5;
      v29[1] = v6;
      v30 = v7;
      v31 = v8;
      v9 = (a2 + v4[6]);
      v10 = *v9;
      v11 = v9[1];
      v12 = *(v9 + 16);
      v13 = v9[3];
      v26[0] = v10;
      v26[1] = v11;
      v27 = v12;
      v28 = v13;
      v14 = v13;

      v15 = v8;

      LOBYTE(v6) = _s11ActivityKit18AlertConfigurationV0C5SoundV2eeoiySbAE_AEtFZ_0(v29, v26);
      v16 = v28;

      v17 = v31;

      if (v6)
      {
        v18 = v4[7];
        v19 = *(a1 + v18);
        v20 = *(a1 + v18 + 8);
        v21 = a2 + v18;
        v22 = *v21;
        v23 = *(v21 + 8);
        if (v20 == 1)
        {
          if (v19 == 0.0)
          {
            if (v22 != 0.0)
            {
              LOBYTE(v23) = 0;
            }

            if ((v23 & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          else
          {
            if (v22 == 0.0)
            {
              v23 = 0;
            }

            if (v23 != 1)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
          if (v19 != v22)
          {
            LOBYTE(v23) = 1;
          }

          if (v23)
          {
            goto LABEL_9;
          }
        }

        v24 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
        return v24 & 1;
      }
    }
  }

LABEL_9:
  v24 = 0;
  return v24 & 1;
}

uint64_t getEnumTagSinglePayload for AlertConfiguration.AutomaticDismissOption(uint64_t a1, int a2)
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

uint64_t sub_1A2CD6E14(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

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

uint64_t sub_1A2CD6E40(uint64_t a1, unsigned int a2)
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

uint64_t sub_1A2CD6E9C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A2CD6F54()
{
  result = qword_1EB0A1370;
  if (!qword_1EB0A1370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1370);
  }

  return result;
}

unint64_t sub_1A2CD6FAC()
{
  result = qword_1EB0A1378;
  if (!qword_1EB0A1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1378);
  }

  return result;
}

unint64_t sub_1A2CD7004()
{
  result = qword_1EB0A1380;
  if (!qword_1EB0A1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1380);
  }

  return result;
}

unint64_t sub_1A2CD705C()
{
  result = qword_1EB0A1388;
  if (!qword_1EB0A1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1388);
  }

  return result;
}

unint64_t sub_1A2CD70B4()
{
  result = qword_1ED708C50;
  if (!qword_1ED708C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C50);
  }

  return result;
}

unint64_t sub_1A2CD710C()
{
  result = qword_1ED708C58;
  if (!qword_1ED708C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C58);
  }

  return result;
}

unint64_t sub_1A2CD7164()
{
  result = qword_1ED708C30;
  if (!qword_1ED708C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C30);
  }

  return result;
}

unint64_t sub_1A2CD71BC()
{
  result = qword_1ED708C38;
  if (!qword_1ED708C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C38);
  }

  return result;
}

unint64_t sub_1A2CD7214()
{
  result = qword_1ED708BF8;
  if (!qword_1ED708BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708BF8);
  }

  return result;
}

unint64_t sub_1A2CD726C()
{
  result = qword_1ED708C00;
  if (!qword_1ED708C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C00);
  }

  return result;
}

unint64_t sub_1A2CD72C4()
{
  result = qword_1ED708BE8;
  if (!qword_1ED708BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708BE8);
  }

  return result;
}

unint64_t sub_1A2CD731C()
{
  result = qword_1ED708BF0;
  if (!qword_1ED708BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708BF0);
  }

  return result;
}

unint64_t sub_1A2CD7374()
{
  result = qword_1ED708C08;
  if (!qword_1ED708C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C08);
  }

  return result;
}

unint64_t sub_1A2CD73CC()
{
  result = qword_1ED708C10;
  if (!qword_1ED708C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C10);
  }

  return result;
}

unint64_t sub_1A2CD7424()
{
  result = qword_1ED708C18;
  if (!qword_1ED708C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C18);
  }

  return result;
}

unint64_t sub_1A2CD747C()
{
  result = qword_1ED708C20;
  if (!qword_1ED708C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C20);
  }

  return result;
}

uint64_t sub_1A2CD74D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E756F73 && a2 == 0xE500000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A2D1A660 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A2D1A470 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A2CD7688(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A2D1A680 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656C69537369 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A2CD7814(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = sub_1A2D07F94();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActivityUIDismissalPolicy();
  __swift_allocate_value_buffer(v10, a2);
  v11 = __swift_project_value_buffer(v10, a2);
  a3();
  return (*(v6 + 32))(v11, v9, v5);
}

uint64_t static ActivityUIDismissalPolicy.after(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A2D07F94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1A2CD797C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CD7A04(uint64_t a1)
{
  v2 = sub_1A2C92338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CD7A40(uint64_t a1)
{
  v2 = sub_1A2C92338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityUIDismissalPolicy.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1390, &qword_1A2D108D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C92338();
  sub_1A2D08C74();
  sub_1A2D07F94();
  sub_1A2C6D4F8(&qword_1ED7093B0, MEMORY[0x1E6969530]);
  sub_1A2D08AE4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A2CD7BF4(void *a1)
{
  a1[1] = sub_1A2C6D4F8(&qword_1EB09F090, type metadata accessor for ActivityUIDismissalPolicy);
  a1[2] = sub_1A2C6D4F8(&qword_1ED708A68, type metadata accessor for ActivityUIDismissalPolicy);
  result = sub_1A2C6D4F8(&qword_1EB0A13A0, type metadata accessor for ActivityUIDismissalPolicy);
  a1[3] = result;
  return result;
}

uint64_t sub_1A2CD7CA0()
{
  v0 = sub_1A2D07EB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C6D4F8(&qword_1ED708A68, type metadata accessor for ActivityUIDismissalPolicy);
  v3 = sub_1A2D07E94();
  v5 = v4;
  v6 = sub_1A2D07F24();
  sub_1A2C55840(v3, v5);

  return v6;
}

uint64_t sub_1A2CD7D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A90, &unk_1A2D0D260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_1A2D07E84();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v12 = sub_1A2D07F44();
  v14 = v13;
  sub_1A2C6D4F8(&qword_1EB09F090, type metadata accessor for ActivityUIDismissalPolicy);
  sub_1A2D07E64();
  sub_1A2CD80E8(a2);
  sub_1A2C55840(v12, v14);

  (*(*(a3 - 8) + 56))(v8, 0, 1, a3);
  return sub_1A2CD8150(v8, a2);
}

uint64_t sub_1A2CD7F64()
{
  result = sub_1A2D07F94();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A2CD7FE4()
{
  result = qword_1EB0A13A8;
  if (!qword_1EB0A13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A13A8);
  }

  return result;
}

unint64_t sub_1A2CD803C()
{
  result = qword_1ED708DB8;
  if (!qword_1ED708DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708DB8);
  }

  return result;
}

unint64_t sub_1A2CD8094()
{
  result = qword_1ED708DC0;
  if (!qword_1ED708DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708DC0);
  }

  return result;
}

uint64_t sub_1A2CD80E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A90, &unk_1A2D0D260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2CD8150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A90, &unk_1A2D0D260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2CD81C0()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1EB09F328);
  __swift_project_value_buffer(v0, qword_1EB09F328);
  return sub_1A2D08004();
}

uint64_t static ActivityPresentationObservationServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09F320 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09F328);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CD82D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09F320 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09F328);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CD83A4()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB0A13B0);
  __swift_project_value_buffer(v0, qword_1EB0A13B0);
  return sub_1A2D08084();
}

id StateCaptureClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t StateCaptureClient.init()()
{
  v22 = sub_1A2D086E4();
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A2D086C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1A2D08314();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_connection] = 0;
  v21 = OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_queue;
  v20[1] = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  sub_1A2D08304();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C5ACDC();
  sub_1A2D08804();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8098], v22);
  *&v0[v21] = sub_1A2D08724();
  v10 = *&v0[v9];
  *&v0[v9] = 0;

  v11 = type metadata accessor for StateCaptureClient();
  v24.receiver = v0;
  v24.super_class = v11;
  v12 = objc_msgSendSuper2(&v24, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1A2CD8814;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_12;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v18 = v13;

  dispatch_sync(v18, v16);

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

void *sub_1A2CD885C()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_queue];
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  result = (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2CD9654();
    v11 = v0;
    result = sub_1A2D08784();
    if (result)
    {
      v12 = *&v0[v10];
      *&v0[v10] = result;
      v13 = result;

      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1A2CD96A8;
      *(v15 + 24) = v14;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_16_0;
      v16 = _Block_copy(aBlock);
      v17 = v11;

      [v13 configureConnection_];

      _Block_release(v16);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

void sub_1A2CD8AFC(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1A2CD8DF4;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_19;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1A2CD8E00;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_22;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1A2CD8E0C;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_25_1;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1A2CD8E18(uint64_t a1, const char *a2)
{
  if (qword_1EB09F728 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1EB0A13B0);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CD8F08()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    sub_1A2CD885C();
    v9 = *(v0 + OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_connection);
    if (v9)
    {
      v10 = v9;
      if ([v10 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C599D8(v11);
      }

      else
      {
        memset(v11, 0, sizeof(v11));
        sub_1A2C599D8(v11);
        [v10 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A2CD9098()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = *(isa + 8);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_queue);
  *v6 = v7;
  (*(isa + 13))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  (*(isa + 1))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2CD8F08();
  v9 = *(v0 + OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_connection);
  if (!v9)
  {
    if (qword_1EB09F728 != -1)
    {
      swift_once();
    }

    v10 = sub_1A2D08094();
    __swift_project_value_buffer(v10, qword_1EB0A13B0);
    v1 = sub_1A2D08074();
    v11 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v11, "StateCaptureClient: Failed to establish a connection", v12, 2u);
      MEMORY[0x1A58E5180](v12, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v9;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A13E0, qword_1A2D10BE8);
    if (swift_dynamicCast())
    {

      return v18[1];
    }
  }

  else
  {
    sub_1A2C599D8(v21);
  }

  if (qword_1EB09F728 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v14 = sub_1A2D08094();
  __swift_project_value_buffer(v14, qword_1EB0A13B0);
  v15 = sub_1A2D08074();
  v16 = sub_1A2D08694();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1A2C51000, v15, v16, "StateCaptureClient: Failed to cast connection to server interface protocol", v17, 2u);
    MEMORY[0x1A58E5180](v17, -1, -1);
  }

LABEL_18:
  return 0;
}

id StateCaptureClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateCaptureClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t StateCaptureClient.state(identifier:)()
{
  v2 = *(v0 + OBJC_IVAR____TtC11ActivityKit18StateCaptureClient_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A13D8, qword_1A2D10BA8);
  result = sub_1A2D08704();
  if (!v1)
  {
    return v4;
  }

  return result;
}

void sub_1A2CD94DC(void *a1@<X2>, void *a2@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A2CD9098();
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      a1 = sub_1A2D08434();
    }

    v12[0] = 0;
    v6 = [v5 stateForIdentifier:a1 error:v12];
    swift_unknownObjectRelease();

    v7 = v12[0];
    if (v6)
    {
      v8 = sub_1A2D08394();
      v9 = v7;

      *a2 = v8;
    }

    else
    {
      v10 = v12[0];
      sub_1A2D07ED4();

      swift_willThrow();
    }
  }

  else
  {
    *a2 = sub_1A2CAAF40(MEMORY[0x1E69E7CC0]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1A2CD961C(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1A2CD94DC(*(v1 + 32), a1);
}

unint64_t sub_1A2CD9654()
{
  result = qword_1EB0A13F0;
  if (!qword_1EB0A13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A13F0);
  }

  return result;
}

uint64_t sub_1A2CD96CC()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1ED708858);
  __swift_project_value_buffer(v0, qword_1ED708858);
  return sub_1A2D08004();
}

uint64_t static ActivityProminenceObservationServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED708850 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED708858);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CD97DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED708850 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED708858);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

ActivityKit::ActivityCategory_optional __swiftcall ActivityCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A2D08B54();

  v5 = 0;
  v6 = 22;
  switch(v3)
  {
    case 0:
      goto LABEL_35;
    case 1:
      v5 = 1;
      goto LABEL_35;
    case 2:
      v5 = 2;
      goto LABEL_35;
    case 3:
      v5 = 3;
      goto LABEL_35;
    case 4:
      v5 = 4;
      goto LABEL_35;
    case 5:
      v5 = 5;
      goto LABEL_35;
    case 6:
      v5 = 6;
      goto LABEL_35;
    case 7:
      v5 = 7;
      goto LABEL_35;
    case 8:
      v5 = 8;
      goto LABEL_35;
    case 9:
      v5 = 9;
      goto LABEL_35;
    case 10:
      v5 = 10;
      goto LABEL_35;
    case 11:
      v5 = 11;
      goto LABEL_35;
    case 12:
      v5 = 12;
      goto LABEL_35;
    case 13:
      v5 = 13;
      goto LABEL_35;
    case 14:
      v5 = 14;
      goto LABEL_35;
    case 15:
      v5 = 15;
      goto LABEL_35;
    case 16:
      v5 = 16;
      goto LABEL_35;
    case 17:
      v5 = 17;
      goto LABEL_35;
    case 18:
      v5 = 18;
      goto LABEL_35;
    case 19:
      v5 = 19;
      goto LABEL_35;
    case 20:
      v5 = 20;
      goto LABEL_35;
    case 21:
      v5 = 21;
LABEL_35:
      v6 = v5;
      break;
    case 22:
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    default:
      v6 = 40;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t ActivityCategory.rawValue.getter()
{
  result = 0x7974697669746361;
  switch(*v0)
  {
    case 2:
      result = 6910049;
      break;
    case 3:
      result = 0x7A69726F68747561;
      break;
    case 5:
      result = 0x726573624F736F71;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x7472656C61;
      break;
    case 8:
      result = 0x7061436574617473;
      break;
    case 9:
      result = 0x6573616261746164;
      break;
    case 0xB:
    case 0x23:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
      result = 0xD000000000000012;
      break;
    case 0xE:
    case 0x25:
      result = 0xD000000000000013;
      break;
    case 0xF:
      result = 0x5274736575716572;
      break;
    case 0x10:
      result = 0x6F69747265737361;
      break;
    case 0x11:
      result = 1701536119;
      break;
    case 0x12:
      result = 0x76696C417065656BLL;
      break;
    case 0x13:
      result = 1953460066;
      break;
    case 0x14:
      result = 0x737365636F7270;
      break;
    case 0x15:
      result = 0xD00000000000001BLL;
      break;
    case 0x16:
      result = 0xD000000000000017;
      break;
    case 0x17:
      result = 0x70757472617473;
      break;
    case 0x18:
      result = 6516856;
      break;
    case 0x19:
      result = 0x7672655368737570;
      break;
    case 0x1A:
      result = 0x656B6F5468737570;
      break;
    case 0x1B:
      result = 0xD000000000000014;
      break;
    case 0x1C:
      result = 0x6C4374757074756FLL;
      break;
    case 0x1D:
      result = 0x7574706143677562;
      break;
    case 0x1E:
      result = 0x676F646863746177;
      break;
    case 0x1F:
      result = 0xD000000000000010;
      break;
    case 0x20:
    case 0x27:
      result = 0xD00000000000001ALL;
      break;
    case 0x21:
      result = 0x69676E45636E7973;
      break;
    case 0x22:
      result = 0x696C436E776F6E6BLL;
      break;
    case 0x24:
      result = 0x7069726373627573;
      break;
    case 0x26:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A2CD9EDC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ActivityCategory.rawValue.getter();
  v4 = v3;
  if (v2 == ActivityCategory.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A2D08B34();
  }

  return v7 & 1;
}

uint64_t sub_1A2CD9F78()
{
  v1 = *v0;
  sub_1A2D08C14();
  ActivityCategory.rawValue.getter();
  sub_1A2D08484();

  return sub_1A2D08C54();
}

uint64_t sub_1A2CD9FE0()
{
  v2 = *v0;
  ActivityCategory.rawValue.getter();
  sub_1A2D08484();
}

uint64_t sub_1A2CDA044()
{
  v1 = *v0;
  sub_1A2D08C14();
  ActivityCategory.rawValue.getter();
  sub_1A2D08484();

  return sub_1A2D08C54();
}

unint64_t sub_1A2CDA0B4@<X0>(unint64_t *a1@<X8>)
{
  result = ActivityCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A2CDA0F4(char *a1, uint64_t (*a2)(unint64_t, unint64_t, unint64_t, uint64_t))
{
  v6 = *a1;
  v3 = ActivityCategory.rawValue.getter();

  return a2(0xD000000000000015, 0x80000001A2D18EF0, v3, v2);
}

unint64_t sub_1A2CDA178()
{
  result = qword_1EB0A13F8;
  if (!qword_1EB0A13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A13F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A2CDA31C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for ActivityAuthorizationInfo.ActivityEnablementUpdates.Iterator(0);
  v4 = sub_1A2C5F40C(&qword_1EB0A1450, type metadata accessor for ActivityAuthorizationInfo.ActivityEnablementUpdates.Iterator);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_1A2CDA40C;

  return MEMORY[0x1EEE6D8C8](v2 + 7, v3, v4);
}

uint64_t sub_1A2CDA40C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v15 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 24);
      v6 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_1A2D08614();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1A2CDA5B8;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 24);
      v12 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_1A2D08614();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1A2CDA59C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t sub_1A2CDA5B8()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A2CDA660(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for ActivityAuthorizationInfo.FrequentPushEnablementUpdates.Iterator(0);
  v4 = sub_1A2C5F40C(&qword_1EB0A1458, type metadata accessor for ActivityAuthorizationInfo.FrequentPushEnablementUpdates.Iterator);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_1A2CDA750;

  return MEMORY[0x1EEE6D8C8](v2 + 7, v3, v4);
}

uint64_t sub_1A2CDA750()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v15 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 24);
      v6 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_1A2D08614();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1A2CDD92C;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 24);
      v12 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_1A2D08614();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1A2CDD930;
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t ActivityAuthorizationInfo.ActivityEnablementUpdates.makeAsyncIterator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1400, &qword_1A2D10DF0);

  return sub_1A2D08104();
}

uint64_t ActivityAuthorizationInfo.ActivityEnablementUpdates.Iterator.next()()
{
  v1 = *(MEMORY[0x1E695BF28] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1408, &qword_1A2D10E00);
  *v2 = v0;
  v2[1] = sub_1A2CDA9D8;

  return MEMORY[0x1EEDB5C50](v0 + 24, v3);
}

uint64_t sub_1A2CDA9D8()
{
  v1 = *(*v0 + 16);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A2CDAAD4, 0, 0);
}

uint64_t sub_1A2CDAAEC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(MEMORY[0x1E695BF28] + 4);
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1408, &qword_1A2D10E00);
  *v3 = v1;
  v3[1] = sub_1A2CDABA0;

  return MEMORY[0x1EEDB5C50](v1 + 32, v4);
}

uint64_t sub_1A2CDABA0()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A2CDAC9C, 0, 0);
}

uint64_t sub_1A2CDACC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1A2CDAD7C;

  return sub_1A2CDA31C(a2, a3);
}

uint64_t sub_1A2CDAD7C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t ActivityAuthorizationInfo.FrequentPushEnablementUpdates.Iterator.next()()
{
  v1 = *(MEMORY[0x1E695BF28] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1408, &qword_1A2D10E00);
  *v2 = v0;
  v2[1] = sub_1A2CDAF78;

  return MEMORY[0x1EEDB5C50](v0 + 24, v3);
}

uint64_t sub_1A2CDAF78()
{
  v1 = *(*v0 + 16);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A2CDD934, 0, 0);
}

uint64_t sub_1A2CDB074(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(MEMORY[0x1E695BF28] + 4);
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1408, &qword_1A2D10E00);
  *v3 = v1;
  v3[1] = sub_1A2CDB128;

  return MEMORY[0x1EEDB5C50](v1 + 32, v4);
}

uint64_t sub_1A2CDB128()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A2CDD938, 0, 0);
}

uint64_t sub_1A2CDB224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1A2CDD91C;

  return sub_1A2CDA660(a2, a3);
}

uint64_t ActivityAuthorizationInfo.ActivityAuthorizationStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

uint64_t ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates.makeAsyncIterator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1410, &qword_1A2D10E10);

  return sub_1A2D08104();
}

uint64_t ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates.Iterator.next()(uint64_t a1)
{
  v3 = *(MEMORY[0x1E695BF28] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1418, &qword_1A2D10E20);
  *v4 = v1;
  v4[1] = sub_1A2C8ED48;

  return MEMORY[0x1EEDB5C50](a1, v5);
}

uint64_t sub_1A2CDB494(uint64_t a1)
{
  v3 = *(MEMORY[0x1E695BF28] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1418, &qword_1A2D10E20);
  *v4 = v1;
  v4[1] = sub_1A2CCC06C;

  return MEMORY[0x1EEDB5C50](a1, v5);
}

uint64_t sub_1A2CDB550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = *(MEMORY[0x1E69E85A8] + 4);
  v11 = swift_task_alloc();
  v6[5] = v11;
  *v11 = v6;
  v11[1] = sub_1A2CDB608;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

uint64_t sub_1A2CDB608()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v15 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 24);
      v6 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_1A2D08614();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1A2CDA5B8;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 24);
      v12 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_1A2D08614();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1A2CDB798;
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t sub_1A2CDB7D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1A2D08104();
  return sub_1A2CDD270(v5, a5);
}

uint64_t sub_1A2CDB828()
{
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization);
  v2 = *(*&v1[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v3 = v1;
  os_unfair_lock_lock(v2);
  v4 = &v3[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    LOBYTE(v6) = (*(v6 + 104))(ObjectType, v6);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v2);

    return v6 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ActivityAuthorizationInfo.areActivitiesEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization);
  v2 = *(*&v1[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v3 = v1;
  os_unfair_lock_lock(v2);
  v4 = &v3[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    LOBYTE(v6) = (*(v6 + 32))(ObjectType, v6);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v2);

    return v6 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CDBA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

ActivityKit::ActivityAuthorizationInfo::ActivityAuthorizationStatus __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActivityAuthorizationInfo.activityAuthorizationStatus(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1;
  v6 = *(v2 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization);
  v7 = *(*&v6[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v8 = v6;
  os_unfair_lock_lock(v7);
  v9 = &v8[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    (*(v11 + 64))(&v15, countAndFlagsBits, object, ObjectType, v11);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v7);

    if (v15)
    {
      v13 = 2 * (v15 == 1);
    }

    else
    {
      v13 = 1;
    }

    *v5 = v13;
  }

  else
  {
    __break(1u);
  }

  return Strong;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActivityAuthorizationInfo.subscribeToActivityAuthorizationStatusUpdates(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization);
  v5 = *(*&v4[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v6 = v4;
  os_unfair_lock_lock(v5);
  v7 = &v6[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    (*(v8 + 72))(countAndFlagsBits, object, ObjectType, v8);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActivityAuthorizationInfo.unsubscribeToActivityAuthorizationStatusUpdates(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization);
  v5 = *(*&v4[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v6 = v4;
  os_unfair_lock_lock(v5);
  v7 = &v6[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    (*(v8 + 80))(countAndFlagsBits, object, ObjectType, v8);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t ActivityAuthorizationInfo.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ActivityAuthorizationInfo.init()();
  return v3;
}

uint64_t ActivityAuthorizationInfo.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1420, &unk_1A2D10E28);
  v102 = *(v2 - 8);
  v103 = v2;
  v3 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v101 = &v100 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v100 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1428, &unk_1A2D10E38);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v100 - v14;
  v15 = type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v114 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ActivityAuthorizationInfo.FrequentPushEnablementUpdates(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v113 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ActivityAuthorizationInfo.ActivityEnablementUpdates(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v115 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityEnablementUpdatesPublisher;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A30, &unk_1A2D0D220);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v0 + v24) = sub_1A2D08144();
  v28 = OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_frequentPushEnablementUpdatesPublisher;
  v29 = *(v25 + 48);
  v30 = *(v25 + 52);
  swift_allocObject();
  v31 = sub_1A2D08144();
  v111 = v28;
  *(v0 + v28) = v31;
  v32 = OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorizationStatusUpdatesPublisher;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1430, &qword_1A2D10E48);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_1A2D08144();
  v112 = v32;
  *(v0 + v32) = v36;
  v107 = v9;
  v108 = v8;
  v106 = v10;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1A2D08924())
  {
    v37 = sub_1A2CDCFDC(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_cancellableSet) = v37;
  *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization) = [objc_allocWithZone(type metadata accessor for ActivityAuthorization()) init];
  v117 = *(v0 + v24);
  v110 = MEMORY[0x1E695BF88];
  sub_1A2C56A78(&unk_1EB09F2A8, &unk_1EB0A0A30, &unk_1A2D0D220);
  v117 = sub_1A2D081F4();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1438, &qword_1A2D10E50);
  v39 = sub_1A2C56A78(&qword_1EB09F2D8, &qword_1EB0A1438, &qword_1A2D10E50);
  v40 = v115;
  MEMORY[0x1A58E3F50](v38, v39);

  sub_1A2CDCAD0(v40, v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityEnablementUpdates, type metadata accessor for ActivityAuthorizationInfo.ActivityEnablementUpdates);
  v117 = *(v0 + v111);
  v41 = sub_1A2D081F4();
  v116 = v38;
  v117 = v41;
  v42 = v113;
  v115 = v39;
  MEMORY[0x1A58E3F50](v38, v39);

  sub_1A2CDCAD0(v42, v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_frequentPushEnablementUpdates, type metadata accessor for ActivityAuthorizationInfo.FrequentPushEnablementUpdates);
  v117 = *(v0 + v112);
  sub_1A2C56A78(&qword_1EB09F2C0, &qword_1EB0A1430, &qword_1A2D10E48);
  v117 = sub_1A2D081F4();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1440, &qword_1A2D10E58);
  v44 = sub_1A2C56A78(&qword_1EB09F2E8, &qword_1EB0A1440, &qword_1A2D10E58);
  v45 = v114;
  MEMORY[0x1A58E3F50](v43, v44);

  sub_1A2CDCAD0(v45, v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorizationStatusUpdates, type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates);
  v46 = *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityEnablementUpdatesPublisher);
  v47 = OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization;
  v48 = *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorization);
  v49 = *(*&v48[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v50 = v48;
  os_unfair_lock_lock(v49);
  v51 = &v50[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v53 = *(v51 + 1);
  ObjectType = swift_getObjectType();
  LOBYTE(v53) = (*(v53 + 32))(ObjectType, v53);
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v49);

  LOBYTE(v117) = v53 & 1;
  sub_1A2D08124();
  v55 = *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_frequentPushEnablementUpdatesPublisher);
  v56 = *(v0 + v47);
  v57 = *(*&v56[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v58 = v56;
  os_unfair_lock_lock(v57);
  v59 = &v58[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v60 = *(v59 + 1);
  v61 = swift_getObjectType();
  LOBYTE(v60) = (*(v60 + 104))(v61, v60);
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v57);

  LOBYTE(v117) = v60 & 1;
  sub_1A2D08124();
  v114 = v47;
  v62 = *(v0 + v47);
  v63 = &v62[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v64 = *(v63 + 1);
  v65 = swift_getObjectType();
  v66 = *(v64 + 8);
  v67 = v62;
  v68 = v66(v65, v64);

  swift_unknownObjectRelease();
  v117 = v68;
  v69 = sub_1A2C5D300();
  v70 = sub_1A2D086F4();
  v118 = v70;
  v71 = sub_1A2D086D4();
  v72 = *(v71 - 8);
  v73 = v108;
  v110 = *(v72 + 56);
  v111 = v71;
  v109 = v72 + 56;
  v110(v108, 1, 1);
  v74 = sub_1A2C5F40C(&qword_1ED709120, sub_1A2C5D300);
  v75 = v105;
  v112 = v74;
  v113 = v69;
  sub_1A2D08264();
  sub_1A2CDCB38(v73);

  swift_allocObject();
  swift_weakInit();
  v76 = sub_1A2C56A78(&qword_1EB09F2F0, &qword_1EB0A1428, &unk_1A2D10E38);

  v77 = v107;
  v100 = v76;
  sub_1A2D08284();

  v105 = *(v106 + 8);
  (v105)(v75, v77);
  v78 = OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_cancellableSet;
  swift_beginAccess();
  v106 = v78;
  sub_1A2D080C4();
  swift_endAccess();

  v79 = *&v114[v1];
  v80 = &v79[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v81 = *(v80 + 1);
  v82 = swift_getObjectType();
  v83 = *(v81 + 16);
  v84 = v79;
  v85 = v83(v82, v81);

  swift_unknownObjectRelease();
  v117 = v85;
  v86 = sub_1A2D086F4();
  v118 = v86;
  (v110)(v73, 1, 1, v111);
  v87 = v104;
  sub_1A2D08264();
  sub_1A2CDCB38(v73);

  swift_allocObject();
  swift_weakInit();
  sub_1A2D08284();

  (v105)(v87, v77);
  swift_beginAccess();
  sub_1A2D080C4();
  swift_endAccess();

  v88 = *&v114[v1];
  v89 = &v88[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v90 = *(v89 + 1);
    v91 = swift_getObjectType();
    v92 = *(v90 + 24);
    v93 = v88;
    v94 = v92(v91, v90);

    swift_unknownObjectRelease();
    v117 = v94;
    v95 = sub_1A2D086F4();
    v118 = v95;
    (v110)(v73, 1, 1, v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1448, qword_1A2D10E60);
    sub_1A2C56A78(&qword_1EB09F2E0, &qword_1EB0A1448, qword_1A2D10E60);
    v96 = v101;
    sub_1A2D08264();
    sub_1A2CDCB38(v73);

    v97 = swift_allocObject();
    swift_weakInit();

    v98 = swift_allocObject();
    *(v98 + 16) = sub_1A2CDCD0C;
    *(v98 + 24) = v97;
    sub_1A2C56A78(&unk_1EB09F2F8, &qword_1EB0A1420, &unk_1A2D10E28);
    v99 = v103;
    sub_1A2D08284();

    (*(v102 + 8))(v96, v99);
    swift_beginAccess();
    sub_1A2D080C4();
    swift_endAccess();

    return v1;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A2CDCAD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2CDCB38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2CDCBC4(char *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + *a3);
    sub_1A2D08124();
  }

  return result;
}

uint64_t sub_1A2CDCC60(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorizationStatusUpdatesPublisher);

    sub_1A2D08124();
  }

  return result;
}

uint64_t sub_1A2CDCD14(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1 + 2);
}

uint64_t ActivityAuthorizationInfo.deinit()
{
  sub_1A2CDD270(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityEnablementUpdates, type metadata accessor for ActivityAuthorizationInfo.ActivityEnablementUpdates);
  sub_1A2CDD270(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_frequentPushEnablementUpdates, type metadata accessor for ActivityAuthorizationInfo.FrequentPushEnablementUpdates);
  sub_1A2CDD270(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorizationStatusUpdates, type metadata accessor for ActivityAuthorizationInfo.ActivityAuthorizationStatusUpdates);

  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityEnablementUpdatesPublisher);

  v2 = *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_frequentPushEnablementUpdatesPublisher);

  v3 = *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_activityAuthorizationStatusUpdatesPublisher);

  v4 = *(v0 + OBJC_IVAR____TtC11ActivityKit25ActivityAuthorizationInfo_cancellableSet);

  return v0;
}

uint64_t ActivityAuthorizationInfo.__deallocating_deinit()
{
  ActivityAuthorizationInfo.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1A2CDCE74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0A0B30, &qword_1A2D0D210);
    v3 = sub_1A2D08844();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1A2D08C14();

      sub_1A2D08484();
      result = sub_1A2D08C54();
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
          result = sub_1A2D08B34();
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

unint64_t sub_1A2CDCFDC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1A2D08924();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1498, &unk_1A2D111A8);
      result = sub_1A2D08844();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1A2D08924();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x1A58E4540](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_1A2D080E4();
    sub_1A2C5F40C(&qword_1EB0A14A0, MEMORY[0x1E695BF10]);
    result = sub_1A2D083F4();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1A2C5F40C(&qword_1EB0A14A8, MEMORY[0x1E695BF10]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_1A2D08424();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1A2CDD270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A2CDD3A4()
{
  result = qword_1EB0A1460;
  if (!qword_1EB0A1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1460);
  }

  return result;
}

void sub_1A2CDD488()
{
  sub_1A2CDD630(319, &qword_1EB09F2C8, MEMORY[0x1E695BF40]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1A2CDD86C(319, &qword_1EB09F2D0, MEMORY[0x1E695BF40]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A2CDD630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A1438, &qword_1A2D10E50);
    v7 = sub_1A2C56A78(&qword_1EB09F2D8, &qword_1EB0A1438, &qword_1A2D10E50);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A2CDD7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  result = a6(319, a4, a5);
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A2CDD86C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A1440, &qword_1A2D10E58);
    v7 = sub_1A2C56A78(&qword_1EB09F2E8, &qword_1EB0A1440, &qword_1A2D10E58);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t OpaqueActivityManager.Request.attributesType.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t OpaqueActivityManager.Request.attributesData.getter()
{
  v1 = *(v0 + 16);
  sub_1A2C5E63C(v1, *(v0 + 24));
  return v1;
}

uint64_t type metadata accessor for OpaqueActivityManager.Request()
{
  result = qword_1EB0A14B0;
  if (!qword_1EB0A14B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OpaqueActivityManager.Request.sceneTargets.getter()
{
  v1 = *(v0 + *(type metadata accessor for OpaqueActivityManager.Request() + 28));
}

uint64_t OpaqueActivityManager.Request.alertSceneTargets.getter()
{
  v1 = *(v0 + *(type metadata accessor for OpaqueActivityManager.Request() + 32));
}

uint64_t OpaqueActivityManager.Request.presentationOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OpaqueActivityManager.Request() + 36));
  v7 = *v3;
  v4 = *(v3 + 2);
  v8 = v4;
  *a1 = v7;
  *(a1 + 16) = v4;
  return sub_1A2C66F58(&v7, v6);
}

uint64_t OpaqueActivityManager.Request.contentSourceRequests.getter()
{
  v1 = *(v0 + *(type metadata accessor for OpaqueActivityManager.Request() + 40));
}

uint64_t OpaqueActivityManager.Request.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpaqueActivityManager.Request() + 64);
  v4 = sub_1A2D07F94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OpaqueActivityManager.Request.assetProviderBundleId.getter()
{
  v1 = (v0 + *(type metadata accessor for OpaqueActivityManager.Request() + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t OpaqueActivityManager.Request.init(attributesType:attributesData:initialOpaqueContent:sceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, char a10, char a11, char a12, char a13, uint64_t a14)
{
  v19 = a1[1];
  *a9 = *a1;
  a9[1] = v19;
  a9[2] = a2;
  a9[3] = a3;
  v20 = type metadata accessor for OpaqueActivityManager.Request();
  sub_1A2C69728(a4, a9 + v20[6], type metadata accessor for OpaqueActivityContent);
  *(a9 + v20[7]) = a5;
  v21 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
  sub_1A2C6E16C(a4, type metadata accessor for OpaqueActivityContent);
  *(a9 + v20[8]) = v21;
  v22 = a9 + v20[9];
  *v22 = *a6;
  *(v22 + 2) = *(a6 + 16);
  *(a9 + v20[10]) = a7;
  *(a9 + v20[11]) = a8;
  *(a9 + v20[12]) = a10;
  *(a9 + v20[13]) = a11;
  *(a9 + v20[14]) = a12;
  *(a9 + v20[15]) = a13;
  v23 = v20[16];
  v24 = sub_1A2D07F94();
  result = (*(*(v24 - 8) + 32))(a9 + v23, a14, v24);
  v26 = (a9 + v20[17]);
  *v26 = 0;
  v26[1] = 0;
  return result;
}

uint64_t OpaqueActivityManager.Request.init(attributesType:attributesData:initialOpaqueContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, char a11, char a12, char a13, char a14, uint64_t a15)
{
  v20 = a1[1];
  *a9 = *a1;
  a9[1] = v20;
  a9[2] = a2;
  a9[3] = a3;
  v21 = type metadata accessor for OpaqueActivityManager.Request();
  sub_1A2C67178(a4, a9 + v21[6], type metadata accessor for OpaqueActivityContent);
  *(a9 + v21[7]) = a5;
  *(a9 + v21[8]) = a6;
  v22 = a9 + v21[9];
  *v22 = *a7;
  *(v22 + 2) = *(a7 + 16);
  *(a9 + v21[10]) = a8;
  *(a9 + v21[11]) = a10;
  *(a9 + v21[12]) = a11;
  *(a9 + v21[13]) = a12;
  *(a9 + v21[14]) = a13;
  *(a9 + v21[15]) = a14;
  v23 = v21[16];
  v24 = sub_1A2D07F94();
  result = (*(*(v24 - 8) + 32))(a9 + v23, a15, v24);
  v26 = (a9 + v21[17]);
  *v26 = 0;
  v26[1] = 0;
  return result;
}

uint64_t OpaqueActivityManager.Request.init(attributesType:attributesData:initialOpaqueContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:assetProviderBundleId:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = a1[1];
  *a9 = *a1;
  a9[1] = v22;
  a9[2] = a2;
  a9[3] = a3;
  v23 = type metadata accessor for OpaqueActivityManager.Request();
  sub_1A2C67178(a4, a9 + v23[6], type metadata accessor for OpaqueActivityContent);
  *(a9 + v23[7]) = a5;
  *(a9 + v23[8]) = a6;
  v24 = a9 + v23[9];
  *v24 = *a7;
  *(v24 + 2) = *(a7 + 16);
  *(a9 + v23[10]) = a8;
  *(a9 + v23[11]) = a10;
  *(a9 + v23[12]) = a11;
  *(a9 + v23[13]) = a12;
  *(a9 + v23[14]) = a13;
  *(a9 + v23[15]) = a14;
  v25 = v23[16];
  v26 = sub_1A2D07F94();
  result = (*(*(v26 - 8) + 32))(a9 + v25, a15, v26);
  v28 = (a9 + v23[17]);
  *v28 = a16;
  v28[1] = a17;
  return result;
}

double OpaqueActivityManager.Request.activityRequest.getter@<D0>(void *a1@<X8>)
{
  v3 = v1[1];
  v25 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = type metadata accessor for OpaqueActivityManager.Request();
  v7 = v6[6];
  v8 = type metadata accessor for ActivityRequest();
  sub_1A2C69728(v1 + v7, a1 + v8[7], type metadata accessor for OpaqueActivityContent);
  v9 = *(v1 + v6[7]);
  v10 = *(v1 + v6[8]);
  v11 = v6[10];
  v12 = v1 + v6[9];
  v27 = *v12;
  v13 = *(v1 + v11);
  v22 = *(v1 + v6[11]);
  v23 = *(v1 + v6[12]);
  v20 = *(v1 + v6[13]);
  v21 = *(v1 + v6[14]);
  v28 = *(v12 + 2);
  v14 = (v1 + v6[17]);
  v15 = v14[1];
  v24 = *v14;
  v16 = v8[17];

  sub_1A2C5E63C(v4, v5);

  sub_1A2C66F58(&v27, v26);

  _s11ActivityKit0A7RequestV14attributesType0D4Data20initialOpaqueContent12sceneTargets010alertSceneK019presentationOptions21contentSourceRequests11isEphemeral0S9Unbounded0S9Momentary0S9Important10identifier15protectionClass9startDate21assetProviderBundleIdAcA0a10AttributesE0V_10Foundation0F0VAA0haI0VSDyAA0a12PresentationO0V0A23PresentationDestinationOAA0M6TargetO0C0OGA6_A_SayAA0aiQ0OA4_OGS4bSSSgAA0a10ProtectionZ0OSgAU4DateVA11_tcfcfA12__0();
  a1[2] = v25;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  *(a1 + v8[8]) = v9;
  *(a1 + v8[9]) = v10;
  v17 = a1 + v8[10];
  result = *&v27;
  *v17 = v27;
  *(v17 + 2) = v28;
  *(a1 + v8[11]) = v13;
  *(a1 + v8[12]) = v22;
  *(a1 + v8[13]) = v23;
  *(a1 + v8[14]) = v20;
  *(a1 + v8[15]) = v21;
  *a1 = 0;
  a1[1] = 0;
  *(a1 + v8[16]) = 4;
  v19 = (a1 + v8[18]);
  *v19 = v24;
  v19[1] = v15;
  return result;
}

uint64_t OpaqueActivityManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for ActivityInputClient()) init];
  return v0;
}

uint64_t sub_1A2CDE31C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v43 = a3;
  v5 = type metadata accessor for ActivityRequest();
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 16);
  v11 = a1[1];
  v40 = *a1;
  v41 = v10;
  v13 = a1[2];
  v12 = a1[3];
  v14 = type metadata accessor for OpaqueActivityManager.Request();
  sub_1A2C69728(a1 + v14[6], v9 + v6[9], type metadata accessor for OpaqueActivityContent);
  v15 = *(a1 + v14[7]);
  v16 = *(a1 + v14[8]);
  v17 = v14[10];
  v18 = a1 + v14[9];
  v48 = *v18;
  v19 = *(v18 + 2);
  v20 = *(a1 + v17);
  v33 = v16;
  v34 = v20;
  LODWORD(v20) = *(a1 + v14[12]);
  v37 = *(a1 + v14[11]);
  v38 = v20;
  LODWORD(v20) = *(a1 + v14[14]);
  v35 = *(a1 + v14[13]);
  v36 = v20;
  v49 = v19;
  v21 = (a1 + v14[17]);
  v22 = v21[1];
  v39 = *v21;
  v32 = v6[19];

  sub_1A2C5E63C(v13, v12);
  v23 = v15;

  v24 = v33;

  sub_1A2C66F58(&v48, v47);

  v25 = v34;

  _s11ActivityKit0A7RequestV14attributesType0D4Data20initialOpaqueContent12sceneTargets010alertSceneK019presentationOptions21contentSourceRequests11isEphemeral0S9Unbounded0S9Momentary0S9Important10identifier15protectionClass9startDate21assetProviderBundleIdAcA0a10AttributesE0V_10Foundation0F0VAA0haI0VSDyAA0a12PresentationO0V0A23PresentationDestinationOAA0M6TargetO0C0OGA6_A_SayAA0aiQ0OA4_OGS4bSSSgAA0a10ProtectionZ0OSgAU4DateVA11_tcfcfA12__0();
  v9[2] = v40;
  v9[3] = v11;
  v9[4] = v13;
  v9[5] = v12;
  *(v9 + v6[10]) = v23;
  *(v9 + v6[11]) = v24;
  v26 = v9 + v6[12];
  *v26 = v48;
  *(v26 + 2) = v49;
  *(v9 + v6[13]) = v25;
  v27 = v38;
  *(v9 + v6[14]) = v37;
  *(v9 + v6[15]) = v27;
  v28 = v36;
  *(v9 + v6[16]) = v35;
  *(v9 + v6[17]) = v28;
  *v9 = 0;
  v9[1] = 0;
  *(v9 + v6[18]) = 4;
  v29 = (v9 + v6[20]);
  *v29 = v39;
  v29[1] = v22;
  v30 = *(v41 + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue);
  v44 = v41;
  v45 = v9;
  v46 = v42;
  type metadata accessor for ActivityDescriptor();
  sub_1A2D08704();
  return sub_1A2C6E16C(v9, type metadata accessor for ActivityRequest);
}

uint64_t sub_1A2CDE5CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for ActivityEndingOptions();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25 - v19;
  sub_1A2CDE84C(a4, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A2C92BC4(v12);
    if (qword_1EB09F340 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for ActivityUIDismissalPolicy();
    v22 = __swift_project_value_buffer(v21, qword_1EB09F348);
    sub_1A2C69728(v22, v17, type metadata accessor for ActivityUIDismissalPolicy);
  }

  else
  {
    sub_1A2C67178(v12, v20, type metadata accessor for ActivityEndingOptions);
    v17 = v20;
  }

  v23 = *(v4 + 16);
  sub_1A2C90C5C(a1, a2, a3, v17);
  return sub_1A2C6E16C(v17, type metadata accessor for ActivityEndingOptions);
}

uint64_t OpaqueActivityManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1A2CDE84C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A2CDE9B4()
{
  type metadata accessor for OpaqueActivityContent();
  if (v0 <= 0x3F)
  {
    sub_1A2CD1390();
    if (v1 <= 0x3F)
    {
      sub_1A2CDEB0C(319, &qword_1ED709518, &type metadata for ActivityContentSource.Request, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1A2D07F94();
        if (v3 <= 0x3F)
        {
          sub_1A2CDEB0C(319, &qword_1ED70A008, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A2CDEB0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 ActivityPredicate.init(attributesType:owner:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a1;
  v4 = *(a2 + 4);

  sub_1A2C5E574(0, 0);
  result = v7;
  *a3 = v8;
  *(a3 + 16) = v6;
  *(a3 + 32) = v7;
  *(a3 + 48) = v4;
  return result;
}

uint64_t static ActivityPredicate.allAuthorizedForRequester.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED7092D8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *(&xmmword_1ED708D00 + 1);
  v2 = xmmword_1ED708D10;
  v3 = xmmword_1ED708D20;
  v4 = qword_1ED708D30;
  *a1 = xmmword_1ED708D00;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;

  return sub_1A2CA0190(v2, *(&v2 + 1));
}

uint64_t ActivityPredicate.attributesType.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ActivityPredicate.attributesType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t ActivityPredicate.owner.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1A2CA0190(v2, v3);
}

__n128 ActivityPredicate.owner.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  sub_1A2C5E574(v1[2], v1[3]);
  result = *a1;
  v8 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v8;
  v1[6] = v3;
  return result;
}

uint64_t sub_1A2CDED68()
{
  if (*v0)
  {
    result = 0x72656E776FLL;
  }

  else
  {
    result = 0x7475626972747461;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CDEDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475626972747461 && a2 == 0xEE00657079547365;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72656E776FLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CDEE8C(uint64_t a1)
{
  v2 = sub_1A2CDFAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CDEEC8(uint64_t a1)
{
  v2 = sub_1A2CDFAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPredicate.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  if (v0[1])
  {
    v6 = *v0;
    sub_1A2D08C34();
    sub_1A2D08484();
    if (v2)
    {
LABEL_3:
      *&v8 = v1;
      *(&v8 + 1) = v2;
      *&v9 = v3;
      *(&v9 + 1) = v4;
      sub_1A2D08C34();
      v10[0] = v1;
      v10[1] = v2;
      v10[2] = v3;
      v10[3] = v4;
      v10[4] = v5;
      sub_1A2C73320(v10, v11);
      ProcessDescriptor.hash(into:)();
      v11[0] = v8;
      v11[1] = v9;
      v12 = v5;
      return sub_1A2C7337C(v11);
    }
  }

  else
  {
    sub_1A2D08C34();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  return sub_1A2D08C34();
}

uint64_t ActivityPredicate.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v5 = *(v0 + 2);
  v6 = *(v0 + 1);
  v3 = v0[6];
  sub_1A2D08C14();
  sub_1A2D08C34();
  if (v2)
  {
    sub_1A2D08484();
  }

  if (*(&v6 + 1))
  {
    v7[0] = v6;
    v7[1] = v5;
    v8 = v3;
    sub_1A2D08C34();
    sub_1A2C73320(v7, v9);
    ProcessDescriptor.hash(into:)();
    v9[0] = v6;
    v9[1] = v5;
    v10 = v3;
    sub_1A2C7337C(v9);
  }

  else
  {
    sub_1A2D08C34();
  }

  return sub_1A2D08C54();
}

uint64_t sub_1A2CDF0E8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  sub_1A2D08C14();
  ActivityPredicate.hash(into:)();
  return sub_1A2D08C54();
}

uint64_t sub_1A2CDF148()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  sub_1A2D08C14();
  ActivityPredicate.hash(into:)();
  return sub_1A2D08C54();
}

uint64_t ActivityPredicate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A14C0, &qword_1A2D11278);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  v11 = v1[4];
  v17 = v1[5];
  v18 = v11;
  v16 = v1[6];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CDFAAC();

  sub_1A2D08C74();
  v22 = v8;
  v23 = v9;
  v27 = 0;
  sub_1A2C6ABA0();
  v13 = v21;
  sub_1A2D08AA4();

  if (!v13)
  {
    v22 = v20;
    v23 = v19;
    v24 = v18;
    v25 = v17;
    v26 = v16;
    v27 = 1;
    sub_1A2CA0190(v20, v19);
    sub_1A2C72F38();
    sub_1A2D08AA4();
    sub_1A2C5E574(v22, v23);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ActivityPredicate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A14D0, &qword_1A2D11280);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CDFAAC();
  sub_1A2D08C64();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    v19 = 0;
    v20 = 0;
  }

  else
  {
    v27 = 0;
    sub_1A2C6CDD0();
    sub_1A2D08A14();
    v13 = v22;
    v12 = v23;

    v27 = 1;
    sub_1A2C7774C();
    sub_1A2D08A14();
    (*(v6 + 8))(v9, v5);
    v14 = v22;
    v15 = v23;
    v21 = v13;
    v16 = v24;
    v17 = v25;
    v18 = v26;
    sub_1A2C5E574(0, 0);
    *a2 = v21;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v15;
    a2[4] = v16;
    a2[5] = v17;
    a2[6] = v18;

    sub_1A2CA0190(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v19 = v14;
    v20 = v15;
  }

  return sub_1A2C5E574(v19, v20);
}

uint64_t sub_1A2CDF634()
{
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v12 = *(v0 + 6);
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CDFB90();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

uint64_t sub_1A2CDF70C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0218, &qword_1A2D0A8F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s11ActivityKit0A9PredicateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v13 = a2[5];
  v12 = a2[6];
  if (!v2)
  {
    if (!v8)
    {
      v22 = a2[6];

      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

    v18 = a2[1];
LABEL_14:

    return 0;
  }

  if (!v8)
  {
    v19 = a1[1];
    goto LABEL_14;
  }

  v21 = a2[6];
  if (*a1 == *a2 && v2 == v8 || (v14 = sub_1A2D08B34(), result = 0, (v14 & 1) != 0))
  {
    if (v5)
    {
LABEL_7:
      if (v11)
      {
        if (v3 == v9 && v5 == v11)
        {
          sub_1A2CA0190(v3, v5);
          sub_1A2CA0190(v3, v5);
          sub_1A2CA0190(v3, v5);
          sub_1A2C5E574(v3, v5);

          v16 = v3;
          v17 = v5;
LABEL_24:
          sub_1A2C5E574(v16, v17);
          return 1;
        }

        v20 = sub_1A2D08B34();
        sub_1A2CA0190(v3, v5);
        sub_1A2CA0190(v9, v11);
        sub_1A2CA0190(v3, v5);
        sub_1A2C5E574(v9, v11);

        sub_1A2C5E574(v3, v5);
        return (v20 & 1) != 0;
      }

      sub_1A2CA0190(v3, v5);
      sub_1A2CA0190(v9, 0);
      sub_1A2CA0190(v3, v5);

LABEL_19:
      sub_1A2C5E574(v3, v5);
      sub_1A2C5E574(v9, v11);
      return 0;
    }

LABEL_16:
    sub_1A2CA0190(v3, 0);
    if (!v11)
    {
      sub_1A2CA0190(v9, 0);
      v16 = v3;
      v17 = 0;
      goto LABEL_24;
    }

    sub_1A2CA0190(v9, v11);
    goto LABEL_19;
  }

  return result;
}

unint64_t sub_1A2CDFAAC()
{
  result = qword_1EB0A14C8;
  if (!qword_1EB0A14C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A14C8);
  }

  return result;
}

unint64_t sub_1A2CDFB04()
{
  result = qword_1EB0A14D8;
  if (!qword_1EB0A14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A14D8);
  }

  return result;
}

unint64_t sub_1A2CDFB58(void *a1)
{
  a1[1] = sub_1A2CBBB98();
  a1[2] = sub_1A2CDFB90();
  result = sub_1A2CDFBE4();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CDFB90()
{
  result = qword_1EB0A14E0;
  if (!qword_1EB0A14E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A14E0);
  }

  return result;
}

unint64_t sub_1A2CDFBE4()
{
  result = qword_1EB0A14E8;
  if (!qword_1EB0A14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A14E8);
  }

  return result;
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

uint64_t sub_1A2CDFC54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1A2CDFCB0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A2CDFD34()
{
  result = qword_1EB0A14F0;
  if (!qword_1EB0A14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A14F0);
  }

  return result;
}

unint64_t sub_1A2CDFD8C()
{
  result = qword_1EB0A14F8;
  if (!qword_1EB0A14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A14F8);
  }

  return result;
}

unint64_t sub_1A2CDFDE4()
{
  result = qword_1EB0A1500;
  if (!qword_1EB0A1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1500);
  }

  return result;
}

uint64_t sub_1A2CDFE38()
{
  v2 = *(*(v0 + OBJC_IVAR____TtC11ActivityKit45ActivityRemoteSubscriptionPreferencesListener_client) + OBJC_IVAR____TtC11ActivityKit40SubscriptionPreferencesObservationClient__subscriptionTypePublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A12C0, &unk_1A2D10010);
  sub_1A2CDFEA4();
  return sub_1A2D081F4();
}

unint64_t sub_1A2CDFEA4()
{
  result = qword_1EB0A12C8;
  if (!qword_1EB0A12C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A12C0, &unk_1A2D10010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A12C8);
  }

  return result;
}

id ActivityRemoteSubscriptionPreferencesListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityRemoteSubscriptionPreferencesListener.init()()
{
  *&v0[OBJC_IVAR____TtC11ActivityKit45ActivityRemoteSubscriptionPreferencesListener_client] = [objc_allocWithZone(type metadata accessor for SubscriptionPreferencesObservationClient()) init];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityRemoteSubscriptionPreferencesListener();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ActivityRemoteSubscriptionPreferencesListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityRemoteSubscriptionPreferencesListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2CE00C8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result - 1) > 0xB)
  {
    *a2 = 12;
  }

  else
  {
    *a2 = byte_1A2D1171E[result - 1];
  }

  return result;
}

uint64_t ActivityAuthorizationError.failureReason.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0xD000000000000037;
    v7 = 0xD000000000000029;
    if (v1 != 10)
    {
      v7 = 0xD000000000000039;
    }

    if (v1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000002BLL;
    if (v1 == 7)
    {
      v8 = 0xD00000000000001CLL;
    }

    if (v1 == 6)
    {
      v8 = 0xD000000000000018;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x100000000000004BLL;
    v3 = 0xD000000000000036;
    if (v1 != 4)
    {
      v3 = 0xD00000000000003ALL;
    }

    if (v1 == 3)
    {
      v3 = 0xD00000000000003ELL;
    }

    v4 = 0xD00000000000003ALL;
    if (v1 != 1)
    {
      v4 = 0xD00000000000002ALL;
    }

    if (*v0)
    {
      v2 = v4;
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
}

unint64_t ActivityAuthorizationError.recoverySuggestion.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v5 = 0xD00000000000002BLL;
    if (v1 != 10)
    {
      v5 = 0;
    }

    if (v1 == 7)
    {
      v5 = 0xD00000000000002CLL;
    }

    if (v1 == 5)
    {
      return 0xD00000000000004BLL;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000020;
    v3 = 0xD000000000000020;
    if (v1 != 4)
    {
      v3 = 0;
    }

    if (v1 != 3)
    {
      v2 = v3;
    }

    if (*v0)
    {
      return v2;
    }

    else
    {
      return 0xD00000000000002ELL;
    }
  }
}

uint64_t ActivityAuthorizationError.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

unint64_t sub_1A2CE03E4()
{
  result = qword_1EB0A1510;
  if (!qword_1EB0A1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1510);
  }

  return result;
}

uint64_t sub_1A2CE0470(uint64_t a1)
{
  v2 = sub_1A2CE0638();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A2CE04AC(uint64_t a1)
{
  v2 = sub_1A2CE0638();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t getEnumTagSinglePayload for ActivityAuthorizationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityAuthorizationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A2CE0638()
{
  result = qword_1EB0A1518;
  if (!qword_1EB0A1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1518);
  }

  return result;
}

uint64_t sub_1A2CE0690()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1EB09F018);
  __swift_project_value_buffer(v0, qword_1EB09F018);
  return sub_1A2D08004();
}

uint64_t static ActivityRemoteSubscriptionPreferencesObservationServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09F010 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09F018);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CE07A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09F010 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09F018);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double ActivityContentSource.target.getter@<D0>(void *a1@<X8>)
{
  if (*(v1 + 56) && *(v1 + 56) == 1)
  {
    v3 = v1[3];
    v2 = v1[4];
    v5 = v1[1];
    v4 = v1[2];
    v6 = *v1;
    *a1 = *v1;
    a1[1] = v5;
    a1[2] = v4;
    a1[3] = v3;
    a1[4] = v2;
    v9[0] = v6;
    v9[1] = v5;
    v9[2] = v4;
    v9[3] = v3;
    v9[4] = v2;
    v10 = *(v1 + 5);
    v11 = 1;
    sub_1A2CDF70C(v9, v8);
  }

  else
  {
    a1[4] = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

uint64_t static ActivityContentSource.pushRequest(using:target:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  *a4 = *a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = 0;
  sub_1A2C66A98(v7, v6);

  return sub_1A2C66A98(a2, a3);
}

uint64_t static ActivityContentSource.processRequest(using:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return sub_1A2C66A98(a1, a2);
}

uint64_t sub_1A2CE0968()
{
  if (*v0)
  {
    result = 0x737365636F7270;
  }

  else
  {
    result = 1752397168;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CE099C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1752397168 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737365636F7270 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CE0A78(uint64_t a1)
{
  v2 = sub_1A2CE4888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE0AB4(uint64_t a1)
{
  v2 = sub_1A2CE4888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE0AF0(uint64_t a1)
{
  v2 = sub_1A2CE48DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE0B2C(uint64_t a1)
{
  v2 = sub_1A2CE48DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE0B68()
{
  if (*v0)
  {
    result = 0x746567726174;
  }

  else
  {
    result = 0x74736575716572;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CE0BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CE0C78(uint64_t a1)
{
  v2 = sub_1A2CE4930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE0CB4(uint64_t a1)
{
  v2 = sub_1A2CE4930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityContentSource.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1520, &qword_1A2D11838);
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1528, &qword_1A2D11840);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1530, &qword_1A2D11848);
  v11 = *(v33 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v14 = &v24 - v13;
  v15 = v1[1];
  v30 = *v1;
  v31 = v15;
  v16 = v1[2];
  v24 = v1[3];
  v25 = v16;
  v17 = *(v1 + 32);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CE4888();
  sub_1A2D08C74();
  if (v17)
  {
    LOBYTE(v34) = 1;
    sub_1A2CE48DC();
    v19 = v33;
    sub_1A2D08A84();
    v34 = v30;
    v35 = v31;
    sub_1A2C6D630();
    v20 = v27;
    sub_1A2D08AE4();
    (*(v26 + 8))(v6, v20);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_1A2CE4930();
    v19 = v33;
    sub_1A2D08A84();
    v34 = v30;
    v35 = v31;
    v36 = 0;
    sub_1A2CE4984();
    v21 = v29;
    v22 = v32;
    sub_1A2D08AE4();
    if (v22)
    {
      (*(v28 + 8))(v10, v21);
      return (*(v11 + 8))(v14, v19);
    }

    v34 = v25;
    v35 = v24;
    v36 = 1;
    sub_1A2C6D630();
    sub_1A2D08AE4();
    (*(v28 + 8))(v10, v21);
  }

  return (*(v11 + 8))(v14, v19);
}

uint64_t ActivityContentSource.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1538, &qword_1A2D11850);
  v4 = *(v3 - 8);
  v38 = v3;
  *&v39 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1540, &qword_1A2D11858);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1548, &unk_1A2D11860);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1A2CE4888();
  v19 = v42;
  sub_1A2D08C64();
  if (!v19)
  {
    v20 = v41;
    v42 = v13;
    v21 = sub_1A2D08A64();
    v22 = (2 * *(v21 + 16)) | 1;
    v46 = v21;
    v47 = v21 + 32;
    v48 = 0;
    v49 = v22;
    v23 = sub_1A2C6D870();
    if (v23 == 2 || v48 != v49 >> 1)
    {
      v29 = sub_1A2D088A4();
      swift_allocError();
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
      *v31 = &type metadata for ActivityContentSource.Request;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v42 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v50 = v23;
      if (v23)
      {
        LOBYTE(v45) = 1;
        sub_1A2CE48DC();
        v24 = v7;
        sub_1A2D089D4();
        v25 = v20;
        sub_1A2C6D8A8();
        v26 = v38;
        sub_1A2D08A54();
        (*(v39 + 8))(v24, v26);
        (*(v42 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v27 = v45;
        v28 = 0uLL;
      }

      else
      {
        LOBYTE(v45) = 0;
        sub_1A2CE4930();
        sub_1A2D089D4();
        v25 = v20;
        v34 = v16;
        LOBYTE(v44) = 0;
        sub_1A2CE49D8();
        v35 = v8;
        sub_1A2D08A54();
        v36 = v42;
        v39 = v45;
        v51 = 1;
        sub_1A2C6D8A8();
        sub_1A2D08A54();
        (*(v40 + 8))(v11, v35);
        (*(v36 + 8))(v34, v12);
        swift_unknownObjectRelease();
        v28 = v44;
        v27 = v39;
      }

      *v25 = v27;
      *(v25 + 16) = v28;
      *(v25 + 32) = v50 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

BOOL ActivityContentSource.isSyncSource.getter()
{
  v1 = vorrq_s8(*v0, v0[1]);
  v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v0[2].i64[0] | v0[2].i64[1] | v0[3].i64[0];
  return v0[3].i8[8] == 2 && v2 == 0;
}

uint64_t ActivityContentSource.castToPushSource.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 56))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = *(v1 + 40);
    v9 = *(v1 + 48);
    v7 = *(v1 + 32);
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v3 = *v1;
    v4 = *(v1 + 8);
    sub_1A2CC3668(*v1, v4, v5, v6, *(v1 + 32));
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  return result;
}

uint64_t sub_1A2CE17A8(uint64_t a1)
{
  v2 = sub_1A2C739AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE17E4(uint64_t a1)
{
  v2 = sub_1A2C739AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE1820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CE18A4(uint64_t a1)
{
  v2 = sub_1A2C73A00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE18E0(uint64_t a1)
{
  v2 = sub_1A2C73A00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE191C(uint64_t a1)
{
  v2 = sub_1A2CE4A2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE1958(uint64_t a1)
{
  v2 = sub_1A2CE4A2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE1994(uint64_t a1)
{
  v2 = sub_1A2C73ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE19D0(uint64_t a1)
{
  v2 = sub_1A2C73ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double static PushActivityContentSource.externalRequest.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1A2D0EBF0;
  return result;
}

uint64_t static PushActivityContentSource.broadcastPushRequest(channel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_1A2CE1A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CE1ACC(uint64_t a1)
{
  v2 = sub_1A2CE4C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE1B08(uint64_t a1)
{
  v2 = sub_1A2CE4C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE1B44()
{
  v1 = 1752397168;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73616364616F7262;
  }
}

uint64_t sub_1A2CE1BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CE6224(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CE1BCC(uint64_t a1)
{
  v2 = sub_1A2CE4B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE1C08(uint64_t a1)
{
  v2 = sub_1A2CE4B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE1C44(uint64_t a1)
{
  v2 = sub_1A2CE4B7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE1C80(uint64_t a1)
{
  v2 = sub_1A2CE4B7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE1CBC(uint64_t a1)
{
  v2 = sub_1A2CE4BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE1CF8(uint64_t a1)
{
  v2 = sub_1A2CE4BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PushActivityContentSource.Request.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1590, &qword_1A2D118B0);
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1598, &qword_1A2D118B8);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15A0, &qword_1A2D118C0);
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15A8, &qword_1A2D118C8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v26 - v18;
  v20 = *v2;
  v21 = v2[1];
  v26[1] = v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CE4B28();
  sub_1A2D08C74();
  if (!v21)
  {
    v35 = 1;
    sub_1A2CE4BD0();
    sub_1A2D08A84();
    (*(v29 + 8))(v10, v30);
    return (*(v16 + 8))(v19, v15);
  }

  if (v21 == 1)
  {
    v36 = 2;
    sub_1A2CE4B7C();
    v23 = v31;
    sub_1A2D08A84();
    (*(v32 + 8))(v23, v33);
    return (*(v16 + 8))(v19, v15);
  }

  v34 = 0;
  sub_1A2CE4C24();
  sub_1A2D08A84();
  v25 = v28;
  sub_1A2D08AB4();
  (*(v27 + 8))(v14, v25);
  return (*(v16 + 8))(v19, v15);
}

uint64_t PushActivityContentSource.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15C0, &qword_1A2D118D0);
  v41 = *(v44 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v40 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15C8, &qword_1A2D118D8);
  v42 = *(v45 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15D0, &qword_1A2D118E0);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15D8, &qword_1A2D118E8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1A2CE4B28();
  v19 = v48;
  sub_1A2D08C64();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v40 = 0;
  v48 = v13;
  v20 = v46;
  v21 = v47;
  v22 = sub_1A2D08A64();
  v23 = (2 * *(v22 + 16)) | 1;
  v50 = v22;
  v51 = v22 + 32;
  v52 = 0;
  v53 = v23;
  v24 = sub_1A2C6D930();
  if (v24 == 3 || v52 != v53 >> 1)
  {
    v27 = sub_1A2D088A4();
    swift_allocError();
    v29 = v28;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
    *v29 = &type metadata for PushActivityContentSource.Request;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v48 + 8))(v16, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  if (v24)
  {
    if (v24 == 1)
    {
      v54 = 1;
      sub_1A2CE4BD0();
      v25 = v40;
      sub_1A2D089D4();
      v26 = v48;
      if (v25)
      {
        goto LABEL_14;
      }

      (*(v42 + 8))(v7, v45);
      (*(v26 + 8))(v16, v12);
      swift_unknownObjectRelease();
      v37 = 0;
      v39 = 0;
    }

    else
    {
      v54 = 2;
      sub_1A2CE4B7C();
      v35 = v40;
      sub_1A2D089D4();
      v36 = v48;
      if (v35)
      {
LABEL_14:
        (*(v48 + 8))(v16, v12);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v49);
      }

      (*(v41 + 8))(v20, v44);
      (*(v36 + 8))(v16, v12);
      swift_unknownObjectRelease();
      v37 = 0;
      v39 = 1;
    }

    v33 = v21;
  }

  else
  {
    v54 = 0;
    sub_1A2CE4C24();
    v32 = v40;
    sub_1A2D089D4();
    if (v32)
    {
      goto LABEL_14;
    }

    v33 = v21;
    v34 = v8;
    v37 = sub_1A2D08A24();
    v39 = v38;
    (*(v43 + 8))(v11, v34);
    (*(v48 + 8))(v16, v12);
    swift_unknownObjectRelease();
  }

  *v33 = v37;
  v33[1] = v39;
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1A2CE275C()
{
  if (*v0)
  {
    result = 0x6C656E6E616863;
  }

  else
  {
    result = 0x6D6E6F7269766E65;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CE27A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CE2880(uint64_t a1)
{
  v2 = sub_1A2CE4D74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE28BC(uint64_t a1)
{
  v2 = sub_1A2CE4D74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE28F8()
{
  v1 = 0x6E656B6F74;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C656E6E616863;
  }
}

uint64_t sub_1A2CE2950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CE6344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CE2978(uint64_t a1)
{
  v2 = sub_1A2CE4C78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE29B4(uint64_t a1)
{
  v2 = sub_1A2CE4C78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE29F0(uint64_t a1)
{
  v2 = sub_1A2CE4CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE2A2C(uint64_t a1)
{
  v2 = sub_1A2CE4CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CE2A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CE2B14(uint64_t a1)
{
  v2 = sub_1A2CE4D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CE2B50(uint64_t a1)
{
  v2 = sub_1A2CE4D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PushActivityContentSource.PushType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15E0, &qword_1A2D118F0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v30 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15E8, &qword_1A2D118F8);
  v33 = *(v35 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v30 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15F0, &qword_1A2D11900);
  v31 = *(v36 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A15F8, &qword_1A2D11908);
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v15 = *v1;
  v39 = v1[1];
  v40 = v15;
  v16 = v1[2];
  v17 = v1[3];
  v18 = *(v1 + 32);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CE4C78();
  sub_1A2D08C74();
  if (v18)
  {
    if (v18 == 1)
    {
      v47 = 1;
      sub_1A2CE4D20();
      v20 = v32;
      v21 = v42;
      sub_1A2D08A84();
      v22 = v35;
      sub_1A2D08AB4();
      (*(v33 + 8))(v20, v22);
      return (*(v41 + 8))(v14, v21);
    }

    else
    {
      v48 = 2;
      sub_1A2CE4CCC();
      v28 = v34;
      v29 = v42;
      sub_1A2D08A84();
      (*(v37 + 8))(v28, v38);
      return (*(v41 + 8))(v14, v29);
    }
  }

  else
  {
    v24 = v31;
    v46 = 0;
    sub_1A2CE4D74();
    v25 = v42;
    sub_1A2D08A84();
    v45 = 0;
    v26 = v36;
    v27 = v43;
    sub_1A2D08AB4();
    if (!v27)
    {
      v44 = 1;
      sub_1A2D08AB4();
    }

    (*(v24 + 8))(v10, v26);
    return (*(v41 + 8))(v14, v25);
  }
}

uint64_t PushActivityContentSource.PushType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1610, &qword_1A2D11910);
  v55 = *(v53 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v50 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1618, &qword_1A2D11918);
  v54 = *(v52 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1620, &qword_1A2D11920);
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1628, &qword_1A2D11928);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1A2CE4C78();
  v19 = v58;
  sub_1A2D08C64();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v58 = 0;
  v20 = v13;
  v21 = sub_1A2D08A64();
  v22 = (2 * *(v21 + 16)) | 1;
  v60 = v21;
  v61 = v21 + 32;
  v62 = 0;
  v63 = v22;
  v23 = sub_1A2C6D930();
  v24 = v16;
  if (v23 == 3 || v62 != v63 >> 1)
  {
    v29 = sub_1A2D088A4();
    swift_allocError();
    v31 = v30;
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
    *v31 = &type metadata for PushActivityContentSource.PushType;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v20 + 8))(v16, v12);
    goto LABEL_9;
  }

  v25 = v12;
  v26 = v13;
  v64 = v23;
  if (!v23)
  {
    v65 = 0;
    sub_1A2CE4D74();
    v34 = v11;
    v35 = v58;
    sub_1A2D089D4();
    if (!v35)
    {
      v65 = 0;
      v40 = sub_1A2D08A24();
      v42 = v45;
      v56 = v40;
      v65 = 1;
      v46 = sub_1A2D08A24();
      v58 = (v26 + 8);
      v47 = v46;
      v49 = v48;
      (*(v51 + 8))(v34, v8);
      (*v58)(v16, v25);
      swift_unknownObjectRelease();
      v44 = v56;
      v28 = v57;
      goto LABEL_19;
    }

    (*(v13 + 8))(v16, v25);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v27 = v58;
  if (v23 == 1)
  {
    v65 = 1;
    sub_1A2CE4D20();
    sub_1A2D089D4();
    v28 = v57;
    if (v27)
    {
LABEL_7:
      (*(v13 + 8))(v24, v25);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v59);
    }

    v37 = v24;
    v38 = v52;
    v39 = sub_1A2D08A24();
    v42 = v41;
    v43 = v39;
    (*(v54 + 8))(v7, v38);
    (*(v26 + 8))(v37, v25);
    swift_unknownObjectRelease();
    v44 = v43;
  }

  else
  {
    v65 = 2;
    sub_1A2CE4CCC();
    v36 = v56;
    sub_1A2D089D4();
    v28 = v57;
    if (v27)
    {
      goto LABEL_7;
    }

    (*(v55 + 8))(v36, v53);
    (*(v13 + 8))(v24, v25);
    swift_unknownObjectRelease();
    v44 = 0;
    v42 = 0;
  }

  v47 = 0;
  v49 = 0;
LABEL_19:
  *v28 = v44;
  *(v28 + 8) = v42;
  *(v28 + 16) = v47;
  *(v28 + 24) = v49;
  *(v28 + 32) = v64;
  return __swift_destroy_boxed_opaque_existential_1(v59);
}