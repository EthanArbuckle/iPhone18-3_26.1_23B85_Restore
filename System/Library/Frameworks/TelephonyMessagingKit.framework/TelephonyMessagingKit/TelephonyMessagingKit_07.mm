uint64_t sub_1E4B7BEB4()
{
  v1 = sub_1E4BEFBBC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = swift_allocObject();
  v3[2] = 0xD00000000000001CLL;
  v3[3] = 0x80000001E4BF1BF0;
  v3[4] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96018, &unk_1E4C0E8F0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v26 = qword_1EE2C2010;
  sub_1E4BEFAEC();
  v8 = *(*v7 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BB8, &qword_1E4C02170);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  v30 = v8;
  *(v7 + v8) = v9;
  v10 = *(*v7 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BC0, &unk_1E4C0E900);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC8];
  *(v11 + 24) = 0;
  *(v11 + 16) = v12;
  *(v7 + v10) = v11;
  v13 = (v7 + *(*v7 + 120));
  *v13 = sub_1E4B851F0;
  v13[1] = v3;
  v14 = sub_1E4BEFC3C();

  sub_1E4BEFBAC();
  v15 = v14;
  v16 = sub_1E4BEFB9C();
  if (v0)
  {

    v17 = sub_1E4BEFAFC();
    (*(*(v17 - 8) + 8))(v7 + v26, v17);
    v18 = v13[1];
    sub_1E4AD651C(*v13);
    v19 = *(v7 + v30);

    v20 = *(v7 + v10);

    v21 = *(*v7 + 48);
    v22 = *(*v7 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BC8, &qword_1E4C02178);
    v24 = swift_allocObject();
    *(v24 + 24) = 0;
    *(v24 + 16) = v23;
    *(v7 + *(*v7 + 128)) = v24;
    *(v7 + *(*v7 + 112)) = 1;

    sub_1E4B21ABC();

    v29[3] = v4;
    v29[4] = sub_1E4B14808(&qword_1ECF96020, &qword_1ECF96018, &unk_1E4C0E8F0);
    v29[0] = v7;
    v28[3] = &type metadata for DefaultNotifyProvider;
    v28[4] = &off_1F5EB8FD8;
    v27[3] = &type metadata for TimeProvider;
    v27[4] = &off_1F5EB9B80;
    type metadata accessor for Messaging.Client();
    v15 = swift_allocObject();
    sub_1E4B776CC(v29, v28, v27);
  }

  return v15;
}

uint64_t sub_1E4B7C29C(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E4B85194;
  *(v6 + 24) = a2;
  v7 = *(v5 + 72);
  v8 = sub_1E4B8519C();
  swift_retain_n();
  v7(sub_1E4B853CC, v6, &type metadata for ServiceStatusNotification, v8, v4, v5);

  v9 = a1[2];
  os_unfair_lock_lock((v9 + 104));
  sub_1E4B853B4((v9 + 16));
  os_unfair_lock_unlock((v9 + 104));
  os_unfair_lock_lock((v9 + 104));
  v10 = sub_1E4B76B24(sub_1E4B78524, 0);
  os_unfair_lock_unlock((v9 + 104));
  v11 = *(v10 + 16);
  if (v11)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_21:
      swift_once();
    }

    v12 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v12, qword_1ECF95E30);

    v13 = sub_1E4BEFB5C();
    v14 = sub_1E4BF04BC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 134218242;
      *(v15 + 4) = *(v10 + 16);

      *(v15 + 12) = 2080;
      LOBYTE(v29[0]) = 8;
      v17 = sub_1E4BEFEFC();
      v19 = sub_1E4B30548(v17, v18, &v30);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_1E4AD3000, v13, v14, "Flushing %ld messages (%s) to client, since it started listening for them", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E6921800](v16, -1, -1);
      MEMORY[0x1E6921800](v15, -1, -1);
    }

    else
    {
    }

    v21 = 0;
    v22 = v10 + 32;
    do
    {
      if (v21 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      sub_1E4B3AA00(v22, &v30);
      sub_1E4ADB544(v31, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          v29[0] = v28;
          sub_1E4B35E3C(v29);
        }

        else
        {
        }
      }

      else
      {
        v28 = 0;

        v23 = sub_1E4BEFB5C();
        v24 = sub_1E4BF04DC();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = a2;
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_1E4AD3000, v23, v24, "Got an unexpected message type when flushing pending messages", v26, 2u);
          v27 = v26;
          a2 = v25;
          MEMORY[0x1E6921800](v27, -1, -1);
        }
      }

      ++v21;
      v22 += 48;
    }

    while (v11 != v21);
  }

  else
  {
  }
}

unint64_t sub_1E4B7C724(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = sub_1E4B848C4(v9, a2, 0, a4, a5);
  *v5 = v7;
  return result;
}

unint64_t sub_1E4B7C80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v11 = *v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(*(result - 8) + 72);
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v13 = *(*(result - 8) + 80);
  v16 = (v13 + 32) & ~v13;
  v17 = v11 + v16 + v14 * a1;
  result = swift_arrayDestroy();
  v18 = __OFSUB__(a3, v15);
  v19 = a3 - v15;
  if (v18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v19)
  {
    goto LABEL_15;
  }

  v20 = *(v11 + 16);
  if (__OFSUB__(v20, a2))
  {
    goto LABEL_23;
  }

  result = v17 + v14 * a3;
  v21 = v11 + v16 + v14 * a2;
  if (result < v21 || result >= v21 + (v20 - a2) * v14)
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v21)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v23 = *(v11 + 16);
  v18 = __OFADD__(v23, v19);
  v24 = v23 + v19;
  if (v18)
  {
    goto LABEL_24;
  }

  *(v11 + 16) = v24;
LABEL_15:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_1E4B7C9C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = *(a3 + 16);
  v14 = __OFSUB__(v13, v11);
  v15 = v13 - v11;
  if (v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = v9 + v15;
  if (__OFADD__(v9, v15))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v16 > *(v8 + 24) >> 1)
  {
    v8 = a4();
    *v6 = v8;
  }

  result = sub_1E4B7C80C(v10, a2, v13, a3, a5, a6);
  *v6 = v8;
  return result;
}

uint64_t sub_1E4B7CABC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v73 = *(v9 - 8);
  v10 = *(v73 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v69 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v68 - v13;
  v14 = a1[6];
  v15 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1E4B84EB0;
  *(v16 + 24) = a2;
  v17 = *(v15 + 72);
  v18 = sub_1E4B84EB8();
  swift_retain_n();
  v17(sub_1E4B853CC, v16, &type metadata for SMSResultNotification, v18, v14, v15);

  v19 = a1[2];
  os_unfair_lock_lock((v19 + 104));
  sub_1E4B853B4((v19 + 16));
  os_unfair_lock_unlock((v19 + 104));
  os_unfair_lock_lock((v19 + 104));
  v20 = sub_1E4B76B24(sub_1E4B78534, 0);
  os_unfair_lock_unlock((v19 + 104));
  v79 = *(v20 + 16);
  if (v79)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_38:
      swift_once();
    }

    v21 = sub_1E4BEFB7C();
    v22 = __swift_project_value_buffer(v21, qword_1ECF95E30);

    v78 = v22;
    v23 = sub_1E4BEFB5C();
    v24 = sub_1E4BF04BC();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v74;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = a2;
      v29 = swift_slowAlloc();
      v83 = v29;
      *v27 = 134218242;
      *(v27 + 4) = *(v20 + 16);

      *(v27 + 12) = 2080;
      LOBYTE(v82[0]) = 1;
      v30 = sub_1E4BEFEFC();
      v32 = sub_1E4B30548(v30, v31, &v83);

      *(v27 + 14) = v32;
      _os_log_impl(&dword_1E4AD3000, v23, v24, "Flushing %ld messages (%s) to client, since it started listening for them", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v33 = v29;
      a2 = v28;
      MEMORY[0x1E6921800](v33, -1, -1);
      MEMORY[0x1E6921800](v27, -1, -1);
    }

    else
    {
    }

    v35 = 0;
    v36 = v20 + 32;
    v76 = (v73 + 56);
    v77 = (v73 + 32);
    v75 = (v73 + 48);
    v70 = (v73 + 8);
    v71 = a2;
    do
    {
      if (v35 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_1E4B3AA00(v36, &v83);
      sub_1E4ADB544(v84, v82);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (swift_dynamicCast())
      {
        v37 = v80;
        v38 = v81;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v40 = *(Strong + 48);
          if (v38 == 4)
          {
            v41 = *(v40 + 16);
            os_unfair_lock_lock((v41 + 24));
            v42 = *(v41 + 16);
            v43 = sub_1E4B8EFD0(v37);
            if (v44)
            {
              v45 = v43;
              v46 = *(v41 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v48 = *(v41 + 16);
              v82[0] = v48;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_1E4BDF72C();
                v48 = v82[0];
              }

              (*(v73 + 32))(v26, *(v48 + 56) + *(v73 + 72) * v45, v9);
              sub_1E4BE6980(v45, v48);
              v49 = 0;
              *(v41 + 16) = v48;
            }

            else
            {
              v49 = 1;
            }

            (*v76)(v26, v49, 1, v9);
            os_unfair_lock_unlock((v41 + 24));
            if ((*v75)(v26, 1, v9) == 1)
            {
              sub_1E4AE0AE4(v26, &qword_1ECF95EC0, &unk_1E4C0E780);
            }

            else
            {
              v65 = v69;
              (*v77)(v69, v26, v9);
              sub_1E4BF01BC();
              (*v70)(v65, v9);
            }
          }

          else
          {
            sub_1E4B84F0C();
            v53 = swift_allocError();
            *v54 = v38;
            v55 = *(v40 + 16);
            os_unfair_lock_lock((v55 + 24));
            v56 = *(v55 + 16);
            v57 = sub_1E4B8EFD0(v37);
            if (v58)
            {
              v59 = v57;
              v60 = *(v55 + 16);
              v61 = swift_isUniquelyReferenced_nonNull_native();
              v62 = *(v55 + 16);
              v82[0] = v62;
              if (!v61)
              {
                sub_1E4BDF72C();
                v62 = v82[0];
              }

              v63 = v72;
              (*(v73 + 32))(v72, *(v62 + 56) + *(v73 + 72) * v59, v9);
              sub_1E4BE6980(v59, v62);
              v64 = 0;
              *(v55 + 16) = v62;
            }

            else
            {
              v64 = 1;
              v63 = v72;
            }

            (*v76)(v63, v64, 1, v9);
            os_unfair_lock_unlock((v55 + 24));
            if ((*v75)(v63, 1, v9) == 1)
            {
              sub_1E4AE0AE4(v63, &qword_1ECF95EC0, &unk_1E4C0E780);
            }

            else
            {
              v66 = v68;
              (*v77)(v68, v63, v9);
              v82[0] = v53;
              v67 = v53;
              sub_1E4BF01AC();
              (*v70)(v66, v9);
            }

            a2 = v71;
            v26 = v74;
          }
        }
      }

      else
      {
        v50 = sub_1E4BEFB5C();
        v51 = sub_1E4BF04DC();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_1E4AD3000, v50, v51, "Got an unexpected message type when flushing pending messages", v52, 2u);
          MEMORY[0x1E6921800](v52, -1, -1);
        }
      }

      ++v35;
      v36 += 48;
    }

    while (v79 != v35);
  }

  else
  {
  }
}

uint64_t sub_1E4B7D378(void *a1, uint64_t a2)
{
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94548, &qword_1E4C05560);
  v99 = *(v101 - 8);
  v4 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v79 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95FA0, &qword_1E4C0E880);
  v7 = *(v6 - 8);
  v97 = v6;
  v98 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v75 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F20, &qword_1E4BFDCB0);
  v82 = *(v83 - 8);
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v75 - v11;
  v12 = type metadata accessor for SMSService.IncomingMessageNotification();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v80 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95FA8, &qword_1E4C0E888);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v85 = &v75 - v19;
  v20 = type metadata accessor for SMSReceivedNotification();
  v100 = *(v20 - 8);
  v21 = *(v100 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v86 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v84 = &v75 - v24;
  v25 = a1[6];
  v26 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v25);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1E4B84E80;
  *(v27 + 24) = a2;
  v28 = *(v26 + 72);
  v29 = sub_1E4B85014(&qword_1ECF94880, type metadata accessor for SMSReceivedNotification);
  v91 = a2;
  swift_retain_n();
  v28(sub_1E4B84E88, v27, v20, v29, v25, v26);

  v30 = a1[2];
  os_unfair_lock_lock((v30 + 104));
  sub_1E4B853B4((v30 + 16));
  os_unfair_lock_unlock((v30 + 104));
  os_unfair_lock_lock((v30 + 104));
  v31 = sub_1E4B76B24(sub_1E4B78544, 0);
  os_unfair_lock_unlock((v30 + 104));
  v95 = *(v31 + 16);
  if (v95)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_26:
      swift_once();
    }

    v32 = sub_1E4BEFB7C();
    v33 = __swift_project_value_buffer(v32, qword_1ECF95E30);

    v90 = v33;
    v34 = sub_1E4BEFB5C();
    v35 = sub_1E4BF04BC();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v84;
    v89 = v31;
    if (v36)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v104 = v39;
      *v38 = 134218242;
      *(v38 + 4) = *(v31 + 16);

      *(v38 + 12) = 2080;
      v103[0] = 3;
      v40 = sub_1E4BEFEFC();
      v42 = sub_1E4B30548(v40, v41, &v104);

      *(v38 + 14) = v42;
      v31 = v89;
      _os_log_impl(&dword_1E4AD3000, v34, v35, "Flushing %ld messages (%s) to client, since it started listening for them", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1E6921800](v39, -1, -1);
      MEMORY[0x1E6921800](v38, -1, -1);
    }

    else
    {
    }

    v44 = v102;
    v45 = v85;
    v46 = 0;
    v94 = v31 + 32;
    v47 = (v100 + 56);
    v48 = &qword_1E4BFDCB0;
    v93 = (v100 + 56);
    v78 = v20;
    v77 = (v99 + 8);
    v76 = (v98 + 8);
    v100 = v99 + 16;
    do
    {
      if (v46 >= *(v31 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_1E4B3AA00(v94 + 48 * v46, &v104);
      sub_1E4ADB544(&v105, v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      v49 = swift_dynamicCast();
      v50 = *v47;
      if (v49)
      {
        v50(v45, 0, 1, v20);
        sub_1E4B8505C(v45, v37, type metadata accessor for SMSReceivedNotification);
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v52 = Strong;
          v92 = v46;
          v53 = v86;
          sub_1E4B850C4(v37, v86, type metadata accessor for SMSReceivedNotification);
          sub_1E4B8505C(v53, v44, type metadata accessor for SMSMessage);
          v54 = *(*(v52 + 24) + 16);
          os_unfair_lock_lock((v54 + 24));
          v55 = *(v54 + 16);

          os_unfair_lock_unlock((v54 + 24));
          v56 = v55;
          v57 = *(v55 + 16);
          if (v57)
          {
            v88 = v52;
            v99 = *(v83 + 28);
            v58 = (*(v82 + 80) + 32) & ~*(v82 + 80);
            v87 = v56;
            v59 = v56 + v58;
            v98 = *(v82 + 72);
            v60 = v101;
            v61 = v79;
            v62 = v81;
            v63 = v80;
            v64 = v77;
            v65 = v76;
            do
            {
              sub_1E4AF1898(v59, v62, &qword_1ECF92F20, &qword_1E4BFDCB0);
              (*v100)(v61, v62 + v99, v60);
              sub_1E4AE0AE4(v62, &qword_1ECF92F20, &qword_1E4BFDCB0);
              sub_1E4B850C4(v102, v63, type metadata accessor for SMSService.IncomingMessageNotification);
              v66 = v96;
              sub_1E4BF022C();
              v60 = v101;
              (*v64)(v61, v101);
              (*v65)(v66, v97);
              v59 += v98;
              --v57;
            }

            while (v57);

            v44 = v102;
            v45 = v85;
            v20 = v78;
            v37 = v84;
            v31 = v89;
            v48 = &qword_1E4BFDCB0;
          }

          else
          {
          }

          sub_1E4B8512C(v44, type metadata accessor for SMSService.IncomingMessageNotification);

          v46 = v92;
          v47 = v93;
        }

        sub_1E4B8512C(v37, type metadata accessor for SMSReceivedNotification);
      }

      else
      {
        v67 = v37;
        v68 = v44;
        v69 = v48;
        v70 = v46;
        v50(v45, 1, 1, v20);
        sub_1E4AE0AE4(v45, &qword_1ECF95FA8, &qword_1E4C0E888);
        v71 = sub_1E4BEFB5C();
        v72 = sub_1E4BF04DC();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_1E4AD3000, v71, v72, "Got an unexpected message type when flushing pending messages", v73, 2u);
          v74 = v73;
          v31 = v89;
          MEMORY[0x1E6921800](v74, -1, -1);
        }

        v46 = v70;
        v47 = v93;
        v48 = v69;
        v44 = v68;
        v37 = v67;
      }

      ++v46;
    }

    while (v46 != v95);
  }

  else
  {
  }
}

uint64_t sub_1E4B7DE70(void *a1, uint64_t a2)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94530, &qword_1E4C05550);
  v69 = *(v56 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v70 = &v48 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F98, &qword_1E4C0E878);
  v68 = *(v65 - 8);
  v6 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v48 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F10, &qword_1E4BFDCA0);
  v58 = *(v59 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v48 - v9;
  v10 = a1[6];
  v11 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v10);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1E4B84E78;
  *(v12 + 24) = a2;
  v13 = *(v11 + 72);
  v14 = sub_1E4B484F0();
  swift_retain_n();
  v13(sub_1E4B84300, v12, &type metadata for CriticalMessageNotification, v14, v10, v11);

  v15 = a1[2];
  os_unfair_lock_lock((v15 + 104));
  sub_1E4B853B4((v15 + 16));
  os_unfair_lock_unlock((v15 + 104));
  os_unfair_lock_lock((v15 + 104));
  v16 = sub_1E4B76B24(sub_1E4B78554, 0);
  os_unfair_lock_unlock((v15 + 104));
  v17 = *(v16 + 16);
  if (v17)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_24:
      swift_once();
    }

    v18 = sub_1E4BEFB7C();
    v19 = __swift_project_value_buffer(v18, qword_1ECF95E30);

    v20 = sub_1E4BEFB5C();
    v21 = sub_1E4BF04BC();
    v22 = os_log_type_enabled(v20, v21);
    v55 = v19;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v74 = v24;
      *v23 = 134218242;
      *(v23 + 4) = *(v16 + 16);

      *(v23 + 12) = 2080;
      v72[0] = 31;
      v25 = sub_1E4BEFEFC();
      v27 = sub_1E4B30548(v25, v26, &v74);

      *(v23 + 14) = v27;
      _os_log_impl(&dword_1E4AD3000, v20, v21, "Flushing %ld messages (%s) to client, since it started listening for them", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E6921800](v24, -1, -1);
      MEMORY[0x1E6921800](v23, -1, -1);
    }

    else
    {
    }

    v29 = 0;
    v63 = v16 + 32;
    v51 = (v69 + 16);
    v50 = (v69 + 8);
    v49 = (v68 + 8);
    v54 = a2;
    v53 = v16;
    v52 = v17;
    do
    {
      if (v29 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      sub_1E4B3AA00(v63 + 48 * v29, &v74);
      sub_1E4ADB544(&v75, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (swift_dynamicCast())
      {
        v30 = v71;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v32 = Strong;
          v33 = *(*(Strong + 40) + 16);
          os_unfair_lock_lock((v33 + 24));
          v34 = *(v33 + 16);

          os_unfair_lock_unlock((v33 + 24));
          v35 = *(v34 + 16);
          if (v35)
          {
            v61 = v32;
            v62 = v29;
            v69 = HIDWORD(v30);
            v68 = *(v59 + 28);
            v36 = (*(v58 + 80) + 32) & ~*(v58 + 80);
            v60 = v34;
            v37 = v34 + v36;
            v67 = *(v58 + 72);
            v38 = v56;
            v66 = v30 & 1;
            v39 = v70;
            v40 = v57;
            v41 = v51;
            v42 = v50;
            v43 = v49;
            do
            {
              sub_1E4AF1898(v37, v40, &qword_1ECF92F10, &qword_1E4BFDCA0);
              (*v41)(v39, v40 + v68, v38);
              sub_1E4AE0AE4(v40, &qword_1ECF92F10, &qword_1E4BFDCA0);
              v72[0] = v66;
              v73 = v69;
              v44 = v64;
              sub_1E4BF022C();
              v39 = v70;
              (*v42)(v70, v38);
              (*v43)(v44, v65);
              v37 += v67;
              --v35;
            }

            while (v35);

            a2 = v54;
            v16 = v53;
            v17 = v52;
            v29 = v62;
          }

          else
          {
          }
        }
      }

      else
      {
        v45 = sub_1E4BEFB5C();
        v46 = sub_1E4BF04DC();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_1E4AD3000, v45, v46, "Got an unexpected message type when flushing pending messages", v47, 2u);
          MEMORY[0x1E6921800](v47, -1, -1);
        }
      }

      ++v29;
    }

    while (v29 != v17);
  }

  else
  {
  }
}

uint64_t sub_1E4B7E650(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v56 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v9 = *(v65 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v65);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v56 - v13;
  v14 = a1[6];
  v15 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1E4B84E1C;
  *(v16 + 24) = a2;
  v17 = *(v15 + 72);
  v18 = sub_1E4B72230();
  swift_retain_n();
  v17(sub_1E4B84300, v16, &type metadata for RCSResultNotification, v18, v14, v15);

  v19 = a1[2];
  os_unfair_lock_lock((v19 + 104));
  sub_1E4B853B4((v19 + 16));
  os_unfair_lock_unlock((v19 + 104));
  os_unfair_lock_lock((v19 + 104));
  v20 = sub_1E4B76B24(sub_1E4B78564, 0);
  v21 = (v19 + 104);
  v22 = v20;
  os_unfair_lock_unlock(v21);
  v23 = *(v22 + 16);
  if (v23)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_31:
      swift_once();
    }

    v58 = v9;
    v24 = sub_1E4BEFB7C();
    v25 = __swift_project_value_buffer(v24, qword_1ECF95E30);

    v67 = v25;
    v26 = sub_1E4BEFB5C();
    v27 = sub_1E4BF04BC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v74 = v29;
      *v28 = 134218242;
      *(v28 + 4) = *(v22 + 16);

      *(v28 + 12) = 2080;
      LOBYTE(v72) = 12;
      v30 = sub_1E4BEFEFC();
      v32 = sub_1E4B30548(v30, v31, &v74);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_1E4AD3000, v26, v27, "Flushing %ld messages (%s) to client, since it started listening for them", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E6921800](v29, -1, -1);
      MEMORY[0x1E6921800](v28, -1, -1);
    }

    else
    {
    }

    v34 = 0;
    v9 = &v74;
    v35 = v22 + 32;
    v63 = (v58 + 6);
    v59 = (v58 + 4);
    ++v58;
    v60 = a2;
    v64 = v22;
    v66 = v23;
    while (1)
    {
      if (v34 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      sub_1E4B3AA00(v35, &v74);
      sub_1E4ADB544(v75, &v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (!swift_dynamicCast())
      {
        v68 = 0;
        v69 = 0;
        v71 = 0;
        v70 = 0;

        v44 = sub_1E4BEFB5C();
        v45 = sub_1E4BF04DC();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_1E4AD3000, v44, v45, "Got an unexpected message type when flushing pending messages", v46, 2u);
          MEMORY[0x1E6921800](v46, -1, -1);
        }

        goto LABEL_11;
      }

      v36 = v69;
      v37 = v70;
      v38 = v71;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v40 = *(Strong + 96);
        if (v38 == 10)
        {
          v72 = v36;
          v73 = v37;
          v41 = *(v40 + 16);
          MEMORY[0x1EEE9AC00](Strong);
          *(&v56 - 2) = &v72;
          os_unfair_lock_lock(v41 + 6);
          v42 = v62;
          sub_1E4B84E24(v62);
          os_unfair_lock_unlock(v41 + 6);
          v43 = v65;
          if ((*v63)(v42, 1, v65) == 1)
          {
            sub_1E4AE0AE4(v42, &qword_1ECF95EC0, &unk_1E4C0E780);
          }

          else
          {
            v53 = v57;
            (*v59)(v57, v42, v43);
            sub_1E4BF01BC();
            (*v58)(v53, v43);
          }

          v22 = v64;
          v23 = v66;

          goto LABEL_28;
        }

        sub_1E4B843DC();
        v47 = swift_allocError();
        *v48 = v38;
        v72 = v36;
        v73 = v37;
        v49 = *(v40 + 16);
        MEMORY[0x1EEE9AC00](v47);
        *(&v56 - 2) = &v72;
        os_unfair_lock_lock(v49 + 6);
        v50 = v61;
        sub_1E4B84E5C(v61);
        v51 = v50;
        os_unfair_lock_unlock(v49 + 6);
        v52 = v65;
        if ((*v63)(v50, 1, v65) == 1)
        {
          sub_1E4AE0AE4(v50, &qword_1ECF95EC0, &unk_1E4C0E780);
        }

        else
        {
          v54 = v56;
          (*v59)(v56, v51, v52);
          v68 = v47;
          v55 = v47;
          sub_1E4BF01AC();
          (*v58)(v54, v52);
        }

        a2 = v60;
        v22 = v64;
      }

      else
      {
      }

      v23 = v66;
LABEL_28:
      v9 = &v74;
LABEL_11:
      ++v34;
      v35 += 48;
      if (v23 == v34)
      {
      }
    }
  }
}

uint64_t sub_1E4B7EEAC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F70, &unk_1E4C0E850);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944F8, &qword_1E4C05508);
  v86 = *(v12 - 8);
  v13 = v86[8];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v72 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F78, &qword_1E4C0E860);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v82 = &v71 - v19;
  v20 = type metadata accessor for RCSCapabilityDiscoveryResponseNotification(0);
  v81 = *(v20 - 8);
  v21 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a1;
  v23 = a1[6];
  v24 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1E4B84D98;
  *(v25 + 24) = a2;
  v26 = *(v24 + 72);
  v27 = sub_1E4B85014(&qword_1ECF95F80, type metadata accessor for RCSCapabilityDiscoveryResponseNotification);
  v84 = a2;
  swift_retain_n();
  v26(sub_1E4B84DA0, v25, v20, v27, v23, v24);

  v28 = v87[2];
  os_unfair_lock_lock((v28 + 104));
  sub_1E4B853B4((v28 + 16));
  os_unfair_lock_unlock((v28 + 104));
  os_unfair_lock_lock((v28 + 104));
  v29 = sub_1E4B76B24(sub_1E4B78574, 0);
  os_unfair_lock_unlock((v28 + 104));
  v87 = *(v29 + 16);
  if (v87)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_29:
      swift_once();
    }

    v30 = sub_1E4BEFB7C();
    v31 = __swift_project_value_buffer(v30, qword_1ECF95E30);

    v83 = v31;
    v32 = sub_1E4BEFB5C();
    v33 = sub_1E4BF04BC();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v82;
    if (v34)
    {
      v36 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v91 = v79;
      *v36 = 134218242;
      *(v36 + 4) = *(v29 + 16);

      *(v36 + 12) = 2080;
      LOBYTE(v89) = 14;
      v37 = sub_1E4BEFEFC();
      v39 = sub_1E4B30548(v37, v38, &v91);

      *(v36 + 14) = v39;
      _os_log_impl(&dword_1E4AD3000, v32, v33, "Flushing %ld messages (%s) to client, since it started listening for them", v36, 0x16u);
      v40 = v79;
      __swift_destroy_boxed_opaque_existential_1(v79);
      MEMORY[0x1E6921800](v40, -1, -1);
      MEMORY[0x1E6921800](v36, -1, -1);
    }

    else
    {
    }

    v42 = v85;
    v43 = 0;
    v44 = v29 + 32;
    v45 = (v81 + 56);
    v79 = (v86 + 6);
    v75 = (v86 + 4);
    v74 = (v86 + 1);
    v81 = v20;
    v86 = v45;
    v80 = v29;
    do
    {
      if (v43 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      sub_1E4B3AA00(v44, &v91);
      sub_1E4ADB544(&v92, &v89);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      v46 = swift_dynamicCast();
      v47 = *v45;
      if (v46)
      {
        v47(v35, 0, 1, v20);
        sub_1E4B8505C(v35, v42, type metadata accessor for RCSCapabilityDiscoveryResponseNotification);
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v50 = *(v42 + 48);
          v49 = *(v42 + 56);
          v51 = *(v42 + *(v20 + 32));
          v52 = v20;
          v53 = *(Strong + 136);
          if (v51 == 10)
          {
            v54 = *(v52 + 28);
            v89 = v50;
            v90 = v49;
            v55 = *(v53 + 16);
            MEMORY[0x1EEE9AC00](Strong);
            *(&v71 - 2) = &v89;
            os_unfair_lock_lock(v55 + 6);
            v56 = v77;
            sub_1E4B84DC8(v77);
            os_unfair_lock_unlock(v55 + 6);
            if ((*v79)(v56, 1, v12) == 1)
            {
              sub_1E4AE0AE4(v56, &qword_1ECF95F70, &unk_1E4C0E850);
              v35 = v82;
              v42 = v85;
            }

            else
            {
              v57 = v72;
              (*v75)(v72, v56, v12);
              v58 = &v85[v54];
              v42 = v85;
              sub_1E4AF1898(v58, v73, &qword_1ECF95F68, &qword_1E4C12EB0);
              sub_1E4BF01BC();
              (*v74)(v57, v12);
              v35 = v82;
            }

            v29 = v80;

            v20 = v81;
          }

          else
          {
            sub_1E4B843DC();
            v63 = swift_allocError();
            v78 = v63;
            *v64 = v51;
            v89 = v50;
            v90 = v49;
            v65 = *(v53 + 16);
            MEMORY[0x1EEE9AC00](v63);
            *(&v71 - 2) = &v89;
            os_unfair_lock_lock(v65 + 6);
            v66 = v76;
            sub_1E4B84E00(v76);
            os_unfair_lock_unlock(v65 + 6);
            if ((*v79)(v66, 1, v12) == 1)
            {
              sub_1E4AE0AE4(v66, &qword_1ECF95F70, &unk_1E4C0E850);

              v67 = v78;
            }

            else
            {
              v68 = v71;
              (*v75)(v71, v66, v12);
              v69 = v78;
              v88 = v78;
              v70 = v78;
              sub_1E4BF01AC();
              (*v74)(v68, v12);

              v67 = v69;
            }

            v35 = v82;
            v20 = v81;
            v42 = v85;
            v29 = v80;
          }
        }

        v45 = v86;
        sub_1E4B8512C(v42, type metadata accessor for RCSCapabilityDiscoveryResponseNotification);
      }

      else
      {
        v47(v35, 1, 1, v20);
        sub_1E4AE0AE4(v35, &qword_1ECF95F78, &qword_1E4C0E860);
        v59 = sub_1E4BEFB5C();
        v60 = sub_1E4BF04DC();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_1E4AD3000, v59, v60, "Got an unexpected message type when flushing pending messages", v61, 2u);
          v62 = v61;
          v42 = v85;
          MEMORY[0x1E6921800](v62, -1, -1);
        }

        v45 = v86;
      }

      v43 = (v43 + 1);
      v44 += 48;
    }

    while (v87 != v43);
  }

  else
  {
  }
}

uint64_t sub_1E4B7F94C(void *a1, uint64_t a2)
{
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944E8, &qword_1E4C0E820);
  v102 = *(v104 - 8);
  v4 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v81 = &v78 - v5;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F38, &qword_1E4C0E828);
  v98 = *(v101 - 8);
  v6 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v78 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EF0, &qword_1E4BFDC80);
  v83 = *(v84 - 8);
  v8 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v78 - v9;
  v91 = type metadata accessor for RCSService.RemoteHandleUpdate(0);
  v10 = *(*(v91 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v91);
  v100 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v105 = &v78 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F40, &qword_1E4C0E830);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = &v78 - v16;
  v17 = type metadata accessor for RCSCapabilityDiscoveryNotification(0);
  v97 = *(v17 - 8);
  v18 = *(v97 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v90 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v78 - v21;
  v23 = a1[6];
  v24 = a1[7];
  v103 = __swift_project_boxed_opaque_existential_1(a1 + 3, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1E4B84D0C;
  *(v25 + 24) = a2;
  v26 = *(v24 + 72);
  v27 = sub_1E4B85014(&qword_1ECF95F48, type metadata accessor for RCSCapabilityDiscoveryNotification);
  v95 = a2;
  swift_retain_n();
  v26(sub_1E4B84D14, v25, v17, v27, v23, v24);

  v28 = a1[2];
  os_unfair_lock_lock((v28 + 104));
  sub_1E4B853B4((v28 + 16));
  os_unfair_lock_unlock((v28 + 104));
  os_unfair_lock_lock((v28 + 104));
  v29 = sub_1E4B76B24(sub_1E4B78584, 0);
  os_unfair_lock_unlock((v28 + 104));
  v30 = *(v29 + 16);
  if (v30)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_26:
      swift_once();
    }

    v31 = sub_1E4BEFB7C();
    v32 = __swift_project_value_buffer(v31, qword_1ECF95E30);

    v93 = v32;
    v33 = sub_1E4BEFB5C();
    v34 = sub_1E4BF04BC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v107 = v36;
      *v35 = 134218242;
      *(v35 + 4) = *(v29 + 16);

      *(v35 + 12) = 2080;
      v106[0] = 15;
      v37 = sub_1E4BEFEFC();
      v39 = sub_1E4B30548(v37, v38, &v107);

      *(v35 + 14) = v39;
      _os_log_impl(&dword_1E4AD3000, v33, v34, "Flushing %ld messages (%s) to client, since it started listening for them", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1E6921800](v36, -1, -1);
      MEMORY[0x1E6921800](v35, -1, -1);
    }

    else
    {
    }

    v41 = v105;
    v42 = v85;
    v43 = v98;
    v44 = 0;
    v98 = v29 + 32;
    v45 = (v97 + 56);
    v80 = (v102 + 16);
    v79 = (v102 + 8);
    v78 = (v43 + 8);
    v94 = (v97 + 56);
    v89 = v17;
    v88 = v22;
    v87 = v29;
    v86 = v30;
    do
    {
      if (v44 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_1E4B3AA00(v98 + 48 * v44, &v107);
      sub_1E4ADB544(&v108, v106);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      v46 = swift_dynamicCast();
      v47 = *v45;
      if (v46)
      {
        v47(v42, 0, 1, v17);
        sub_1E4B8505C(v42, v22, type metadata accessor for RCSCapabilityDiscoveryNotification);
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v49 = Strong;
          v96 = v44;
          v50 = v90;
          sub_1E4B850C4(v22, v90, type metadata accessor for RCSCapabilityDiscoveryNotification);
          LODWORD(v102) = *v50;
          v97 = v49;
          v51 = *(v50 + 1);
          v52 = *(v50 + 2);
          v53 = v17;
          v55 = *(v50 + 3);
          v54 = *(v50 + 4);
          v56 = v50[40];
          v57 = &v50[*(v53 + 24)];
          LODWORD(v103) = *(v57 + 11);
          v58 = *(v91 + 32);
          sub_1E4B850C4(v57, v41 + v58, type metadata accessor for RCSService.RemoteCapabilities);
          sub_1E4ADD6D8(v51, v52, v55, v54, v56);
          sub_1E4B8512C(v50, type metadata accessor for RCSCapabilityDiscoveryNotification);
          v59 = type metadata accessor for RCSService.RemoteCapabilities();
          (*(*(v59 - 8) + 56))(v41 + v58, 0, 1, v59);
          *v41 = v102;
          *(v41 + 8) = v51;
          *(v41 + 16) = v52;
          v60 = v97;
          *(v41 + 24) = v55;
          *(v41 + 32) = v54;
          *(v41 + 40) = v56;
          *(v41 + 48) = 0u;
          *(v41 + 64) = 0u;
          *(v41 + 80) = -1;
          *(v41 + 81) = v103;
          v61 = *(*(v60 + 88) + 16);
          os_unfair_lock_lock((v61 + 24));
          v62 = *(v61 + 16);

          os_unfair_lock_unlock((v61 + 24));
          v63 = *(v62 + 16);
          if (v63)
          {
            v103 = *(v84 + 28);
            v64 = (*(v83 + 80) + 32) & ~*(v83 + 80);
            v92 = v62;
            v65 = v62 + v64;
            v102 = *(v83 + 72);
            v66 = v104;
            v67 = v81;
            v68 = v82;
            v69 = v80;
            v70 = v79;
            v71 = v78;
            do
            {
              sub_1E4AF1898(v65, v68, &qword_1ECF92EF0, &qword_1E4BFDC80);
              (*v69)(v67, &v103[v68], v66);
              sub_1E4AE0AE4(v68, &qword_1ECF92EF0, &qword_1E4BFDC80);
              sub_1E4B850C4(v105, v100, type metadata accessor for RCSService.RemoteHandleUpdate);
              v72 = v99;
              sub_1E4BF022C();
              v66 = v104;
              (*v70)(v67, v104);
              (*v71)(v72, v101);
              v65 += v102;
              --v63;
            }

            while (v63);

            v41 = v105;
            v42 = v85;
            v17 = v89;
          }

          else
          {

            v17 = v89;
          }

          sub_1E4B8512C(v41, type metadata accessor for RCSService.RemoteHandleUpdate);

          v22 = v88;
          v29 = v87;
          v30 = v86;
          v44 = v96;
          v45 = v94;
        }

        sub_1E4B8512C(v22, type metadata accessor for RCSCapabilityDiscoveryNotification);
      }

      else
      {
        v47(v42, 1, 1, v17);
        sub_1E4AE0AE4(v42, &qword_1ECF95F40, &qword_1E4C0E830);
        v73 = sub_1E4BEFB5C();
        v74 = sub_1E4BF04DC();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = v44;
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_1E4AD3000, v73, v74, "Got an unexpected message type when flushing pending messages", v76, 2u);
          v77 = v76;
          v44 = v75;
          v45 = v94;
          MEMORY[0x1E6921800](v77, -1, -1);
        }
      }

      ++v44;
    }

    while (v44 != v30);
  }

  else
  {
  }
}

uint64_t sub_1E4B80504(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944E8, &qword_1E4C0E820);
  v89 = *(v4 - 8);
  v5 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v66 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F38, &qword_1E4C0E828);
  v86 = *(v88 - 8);
  v7 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v73 = &v66 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EF0, &qword_1E4BFDC80);
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v66 - v11;
  v74 = type metadata accessor for RCSService.RemoteHandleUpdate(0);
  v12 = *(*(v74 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v74);
  v87 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v66 - v15;
  v16 = a1[6];
  v17 = a1[7];
  v90 = __swift_project_boxed_opaque_existential_1(a1 + 3, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1E4B84D3C;
  *(v18 + 24) = a2;
  v19 = *(v17 + 72);
  v20 = sub_1E4B84D44();
  v78 = a2;
  swift_retain_n();
  v19(sub_1E4B84300, v18, &type metadata for RCSCapabilitiesUpdatedNotification, v20, v16, v17);

  v21 = a1[2];
  os_unfair_lock_lock((v21 + 104));
  sub_1E4B853B4((v21 + 16));
  os_unfair_lock_unlock((v21 + 104));
  os_unfair_lock_lock((v21 + 104));
  v22 = sub_1E4B76B24(sub_1E4B78594, 0);
  os_unfair_lock_unlock((v21 + 104));
  v77 = *(v22 + 16);
  if (v77)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_26:
      swift_once();
    }

    v23 = sub_1E4BEFB7C();
    v24 = __swift_project_value_buffer(v23, qword_1ECF95E30);

    v75 = v24;
    v25 = sub_1E4BEFB5C();
    v26 = sub_1E4BF04BC();
    v27 = os_log_type_enabled(v25, v26);
    v68 = v4;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v98 = v29;
      *v28 = 134218242;
      *(v28 + 4) = *(v22 + 16);

      *(v28 + 12) = 2080;
      LOBYTE(v92) = 16;
      v30 = sub_1E4BEFEFC();
      v32 = sub_1E4B30548(v30, v31, v98);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_1E4AD3000, v25, v26, "Flushing %ld messages (%s) to client, since it started listening for them", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E6921800](v29, -1, -1);
      MEMORY[0x1E6921800](v28, -1, -1);
    }

    else
    {
    }

    v34 = v91;
    v4 = v77;
    v35 = v86;
    v36 = 0;
    v67 = (v89 + 16);
    v86 = v89 + 8;
    v84 = v22 + 32;
    v85 = (v35 + 8);
    v76 = v22;
    do
    {
      if (v36 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_1E4B3AA00(v84 + 48 * v36, v100);
      sub_1E4ADB544(v101, v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (swift_dynamicCast())
      {
        v83 = v36;
        v92 = *v98;
        v93 = *&v98[16];
        v94 = *&v98[32];
        v95 = *&v98[48];
        v96 = *&v98[64];
        v97 = *&v98[80];
        v37 = v98[0];
        v38 = *&v98[8];
        v40 = *&v98[16];
        v39 = *&v98[32];
        v82 = *&v98[48];
        v41 = *&v98[64];
        v89 = *&v98[56];
        v90 = *&v98[72];
        v79 = v98[40];
        v80 = v98[80];
        LODWORD(v81) = v98[81];
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v43 = Strong;
          v44 = *(v74 + 32);
          v45 = type metadata accessor for RCSService.RemoteCapabilities();
          (*(*(v45 - 8) + 56))(v34 + v44, 1, 1, v45);
          *v34 = v37 & 1;
          *(v34 + 8) = v38;
          *(v34 + 16) = v40;
          *(v34 + 32) = v39;
          v46 = v39;
          v47 = v80;
          v48 = v79 & 1;
          *(v34 + 40) = v79 & 1;
          v49 = v82;
          v50 = v89;
          v51 = v90;
          *(v34 + 48) = v82;
          *(v34 + 56) = v50;
          *(v34 + 64) = v41;
          *(v34 + 72) = v51;
          v52 = v47 & 1;
          *(v34 + 80) = v47 & 1;
          *(v34 + 81) = v81 & 1;
          v53 = *(*(v43 + 88) + 16);
          sub_1E4ADD6D8(v38, v40, *(&v40 + 1), v46, v48);
          sub_1E4ADD6D8(v49, v50, v41, v51, v52);
          os_unfair_lock_lock((v53 + 24));
          v54 = *(v53 + 16);

          os_unfair_lock_unlock((v53 + 24));
          v55 = *(v54 + 16);
          if (v55)
          {
            v81 = v54;
            v82 = v43;
            v56 = *(v72 + 28);
            v57 = v54 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
            v89 = *(v71 + 72);
            v90 = v56;
            v59 = v68;
            v58 = v69;
            v60 = v73;
            v61 = v70;
            v62 = v67;
            do
            {
              sub_1E4AF1898(v57, v61, &qword_1ECF92EF0, &qword_1E4BFDC80);
              (*v62)(v58, &v90[v61], v59);
              sub_1E4AE0AE4(v61, &qword_1ECF92EF0, &qword_1E4BFDC80);
              sub_1E4B850C4(v91, v87, type metadata accessor for RCSService.RemoteHandleUpdate);
              sub_1E4BF022C();
              (*v86)(v58, v59);
              (*v85)(v60, v88);
              v57 += v89;
              --v55;
            }

            while (v55);

            v34 = v91;
            v22 = v76;
            v4 = v77;
          }

          else
          {

            v22 = v76;
            v4 = v77;
          }

          sub_1E4B8512C(v34, type metadata accessor for RCSService.RemoteHandleUpdate);

          sub_1E4AE0AE4(&v92, &qword_1ECF95F60, &unk_1E4C0E840);
          v36 = v83;
        }

        else
        {
          sub_1E4AE0AE4(&v92, &qword_1ECF95F60, &unk_1E4C0E840);
          v36 = v83;
          v22 = v76;
          v4 = v77;
        }
      }

      else
      {
        *v98 = 2;
        memset(&v98[8], 0, 74);
        v94 = *&v98[32];
        v95 = *&v98[48];
        v96 = *&v98[64];
        v97 = 0;
        v92 = *v98;
        v93 = *&v98[16];
        sub_1E4AE0AE4(&v92, &qword_1ECF95F60, &unk_1E4C0E840);
        v63 = sub_1E4BEFB5C();
        v64 = sub_1E4BF04DC();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&dword_1E4AD3000, v63, v64, "Got an unexpected message type when flushing pending messages", v65, 2u);
          MEMORY[0x1E6921800](v65, -1, -1);
        }
      }

      ++v36;
    }

    while (v36 != v4);
  }

  else
  {
  }
}

uint64_t sub_1E4B80E80(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v77 = &v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F18, &qword_1E4C0E7F8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v81 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v74 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944D0, &qword_1E4C0E800);
  v83 = *(v86 - 8);
  v12 = *(v83 + 8);
  v13 = MEMORY[0x1EEE9AC00](v86);
  v76 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F20, &qword_1E4C0E808);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v74 - v18;
  v20 = type metadata accessor for RCSChatbotRenderInformationResponse();
  v84 = *(v20 - 8);
  v21 = *(v84 + 8);
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a1;
  v23 = a1[6];
  v24 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1E4B84C88;
  *(v25 + 24) = a2;
  v26 = *(v24 + 72);
  v27 = sub_1E4B85014(&qword_1ECF95F28, type metadata accessor for RCSChatbotRenderInformationResponse);
  swift_retain_n();
  v87 = v20;
  v26(sub_1E4B84C90, v25, v20, v27, v23, v24);

  v28 = v92[2];
  os_unfair_lock_lock((v28 + 104));
  v29 = 0;
  sub_1E4B853B4((v28 + 16));
  os_unfair_lock_unlock((v28 + 104));
  os_unfair_lock_lock((v28 + 104));
  v30 = sub_1E4B76B24(sub_1E4B785A4, 0);
  os_unfair_lock_unlock((v28 + 104));
  v92 = *&v30[4]._os_unfair_lock_opaque;
  if (v92)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_36:
      swift_once();
    }

    v88 = v29;
    v82 = sub_1E4BEFB7C();
    v31 = __swift_project_value_buffer(v82, qword_1ECF95E30);

    v89 = v31;
    v32 = sub_1E4BEFB5C();
    v33 = v30;
    v34 = sub_1E4BF04BC();
    v35 = os_log_type_enabled(v32, v34);
    v36 = v87;
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v96 = v38;
      *v37 = 134218242;
      *(v37 + 4) = *&v30[4]._os_unfair_lock_opaque;

      *(v37 + 12) = 2080;
      LOBYTE(v94) = 34;
      v39 = sub_1E4BEFEFC();
      v30 = v40;
      v41 = sub_1E4B30548(v39, v40, &v96);

      *(v37 + 14) = v41;
      _os_log_impl(&dword_1E4AD3000, v32, v34, "Flushing %ld messages (%s) to client, since it started listening for them", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1E6921800](v38, -1, -1);
      MEMORY[0x1E6921800](v37, -1, -1);
    }

    else
    {
    }

    v29 = v91;
    v43 = v33;
    v44 = 0;
    v45 = &v43[8];
    v46 = (v84 + 56);
    v84 = v83 + 48;
    v79 = (v83 + 32);
    v78 = (v83 + 8);
    v85 = a2;
    v90 = v43;
    do
    {
      if (v44 >= *&v43[4]._os_unfair_lock_opaque)
      {
        __break(1u);
        goto LABEL_36;
      }

      sub_1E4B3AA00(v45, &v96);
      sub_1E4ADB544(&v97, &v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      v47 = swift_dynamicCast();
      v48 = *v46;
      if (v47)
      {
        v48(v19, 0, 1, v36);
        sub_1E4B8505C(v19, v29, type metadata accessor for RCSChatbotRenderInformationResponse);
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v50 = (v29 + *(v36 + 20));
          v51 = v50[1];
          if (v51)
          {
            v52 = v36;
            v53 = *v50;
            v54 = *(v29 + *(v52 + 24));
            v55 = *(Strong + 160);
            if (v54 == 10)
            {
              v94 = *v50;
              v95 = v51;
              v30 = *(v55 + 16);
              MEMORY[0x1EEE9AC00](Strong);
              *(&v74 - 2) = &v94;
              os_unfair_lock_lock(v30 + 6);
              v56 = v81;
              v57 = v88;
              sub_1E4B84CB8(v81);
              v88 = v57;
              os_unfair_lock_unlock(v30 + 6);
              v58 = v86;
              if ((*v84)(v56, 1, v86) == 1)
              {
                sub_1E4AE0AE4(v56, &qword_1ECF95F18, &qword_1E4C0E7F8);
              }

              else
              {
                v71 = v76;
                (*v79)(v76, v56, v58);
                sub_1E4AF1898(v91, v77, &qword_1ECF95F10, &qword_1E4C0E7F0);
                sub_1E4BF01BC();
                (*v78)(v71, v58);
              }

              a2 = v85;
              v36 = v87;
            }

            else
            {
              sub_1E4B843DC();
              v65 = swift_allocError();
              v83 = v65;
              *v66 = v54;
              v94 = v53;
              v95 = v51;
              v30 = *(v55 + 16);
              MEMORY[0x1EEE9AC00](v65);
              *(&v74 - 2) = &v94;
              os_unfair_lock_lock(v30 + 6);
              v67 = v80;
              v68 = v88;
              sub_1E4B84CF0(v80);
              v88 = v68;
              os_unfair_lock_unlock(v30 + 6);
              v69 = v86;
              if ((*v84)(v67, 1, v86) == 1)
              {
                sub_1E4AE0AE4(v67, &qword_1ECF95F18, &qword_1E4C0E7F8);

                v70 = v83;
              }

              else
              {
                v72 = v75;
                (*v79)(v75, v67, v69);
                v30 = v83;
                v93 = v83;
                v73 = v83;
                sub_1E4BF01AC();
                (*v78)(v72, v69);

                v70 = v30;
              }

              a2 = v85;
              v36 = v87;
            }

            v29 = v91;
          }

          else
          {
            if (qword_1ECF92440 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v82, qword_1ECF97928);
            v62 = sub_1E4BEFB5C();
            v30 = sub_1E4BF04DC();
            if (os_log_type_enabled(v62, v30))
            {
              v63 = swift_slowAlloc();
              *v63 = 0;
              _os_log_impl(&dword_1E4AD3000, v62, v30, "Received render info response with missing operation ID", v63, 2u);
              v64 = v63;
              v29 = v91;
              MEMORY[0x1E6921800](v64, -1, -1);
            }
          }
        }

        sub_1E4B8512C(v29, type metadata accessor for RCSChatbotRenderInformationResponse);
        v43 = v90;
      }

      else
      {
        v48(v19, 1, 1, v36);
        sub_1E4AE0AE4(v19, &qword_1ECF95F20, &qword_1E4C0E808);
        v59 = sub_1E4BEFB5C();
        v30 = sub_1E4BF04DC();
        if (os_log_type_enabled(v59, v30))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_1E4AD3000, v59, v30, "Got an unexpected message type when flushing pending messages", v60, 2u);
          v61 = v60;
          v29 = v91;
          MEMORY[0x1E6921800](v61, -1, -1);
        }
      }

      v44 = (v44 + 1);
      v45 += 48;
    }

    while (v92 != v44);
  }

  else
  {
  }
}

uint64_t sub_1E4B819E4(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E4B84B7C;
  *(v6 + 24) = a2;
  v7 = *(v5 + 72);
  v8 = sub_1E4B1C600();
  swift_retain_n();
  v7(sub_1E4B853CC, v6, &type metadata for RCSGroupChatMutationResponseNotification, v8, v4, v5);

  v9 = a1[2];
  os_unfair_lock_lock((v9 + 104));
  sub_1E4B853B4((v9 + 16));
  os_unfair_lock_unlock((v9 + 104));
  os_unfair_lock_lock((v9 + 104));
  v10 = sub_1E4B76B24(sub_1E4B785B4, 0);
  os_unfair_lock_unlock((v9 + 104));
  v11 = *(v10 + 16);
  if (v11)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_19:
      swift_once();
    }

    v12 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v12, qword_1ECF95E30);

    v13 = sub_1E4BEFB5C();
    v14 = sub_1E4BF04BC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v48 = v16;
      *v15 = 134218242;
      *(v15 + 4) = *(v10 + 16);

      *(v15 + 12) = 2080;
      LOBYTE(v41) = 19;
      v17 = sub_1E4BEFEFC();
      v19 = a2;
      v20 = sub_1E4B30548(v17, v18, &v48);

      *(v15 + 14) = v20;
      a2 = v19;
      _os_log_impl(&dword_1E4AD3000, v13, v14, "Flushing %ld messages (%s) to client, since it started listening for them", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E6921800](v16, -1, -1);
      MEMORY[0x1E6921800](v15, -1, -1);
    }

    else
    {
    }

    v22 = 0;
    v23 = &qword_1ECF95E60;
    v24 = &qword_1E4C0E730;
    v25 = v10 + 32;
    v34 = v10;
    do
    {
      if (v22 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      sub_1E4B3AA00(v25, v54);
      sub_1E4ADB544(v55, v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
      if (swift_dynamicCast())
      {
        v50 = v43;
        v51 = v44;
        v52 = v45;
        v53 = v46;
        v48 = v41;
        v49 = v42;
        sub_1E4BDD8DC(&v48);
        v37 = v50;
        v38 = v51;
        v39 = v52;
        v40 = v53;
        v35 = v48;
        v36 = v49;
        sub_1E4B1B874(&v35);
      }

      else
      {
        v26 = v11;
        v27 = v24;
        v28 = v23;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0;
        sub_1E4AE0AE4(&v35, &qword_1ECF95EF0, &qword_1E4C0E7B8);
        v29 = sub_1E4BEFB5C();
        v30 = sub_1E4BF04DC();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = a2;
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_1E4AD3000, v29, v30, "Got an unexpected message type when flushing pending messages", v32, 2u);
          v33 = v32;
          a2 = v31;
          MEMORY[0x1E6921800](v33, -1, -1);
        }

        v23 = v28;
        v24 = v27;
        v11 = v26;
        v10 = v34;
      }

      ++v22;
      v25 += 48;
    }

    while (v11 != v22);
  }

  else
  {
  }
}

uint64_t sub_1E4B81EA0(void *a1, uint64_t a2)
{
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94480, &qword_1E4C05488);
  v103 = *(v105 - 8);
  v4 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v82 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EE0, &qword_1E4C0E7A0);
  v7 = *(v6 - 8);
  v101 = v6;
  v102 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v100 = &v79 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EE0, &qword_1E4BFDC70);
  v85 = *(v86 - 8);
  v10 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v79 - v11;
  v90 = type metadata accessor for RCSService.IncomingMessageNotification(0);
  v12 = *(*(v90 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v90);
  v83 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v106 = &v79 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EE8, &qword_1E4C0E7A8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v88 = &v79 - v18;
  v19 = type metadata accessor for RCSReceivedNotification();
  v104 = *(v19 - 8);
  v20 = *(v104 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v89 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v79 - v23;
  v24 = a1[6];
  v25 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v24);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1E4B84B4C;
  *(v26 + 24) = a2;
  v27 = *(v25 + 72);
  v28 = sub_1E4B85014(&qword_1ECF94878, type metadata accessor for RCSReceivedNotification);
  v95 = a2;
  swift_retain_n();
  v27(sub_1E4B84B54, v26, v19, v28, v24, v25);

  v29 = a1[2];
  os_unfair_lock_lock((v29 + 104));
  sub_1E4B853B4((v29 + 16));
  os_unfair_lock_unlock((v29 + 104));
  os_unfair_lock_lock((v29 + 104));
  v30 = sub_1E4B76B24(sub_1E4B785C4, 0);
  os_unfair_lock_unlock((v29 + 104));
  v99 = *(v30 + 16);
  if (v99)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_26:
      swift_once();
    }

    v31 = sub_1E4BEFB7C();
    v32 = __swift_project_value_buffer(v31, qword_1ECF95E30);

    v94 = v32;
    v33 = sub_1E4BEFB5C();
    v34 = sub_1E4BF04BC();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v87;
    v93 = v30;
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v108 = v38;
      *v37 = 134218242;
      *(v37 + 4) = *(v30 + 16);

      *(v37 + 12) = 2080;
      v107[0] = 10;
      v39 = sub_1E4BEFEFC();
      v41 = sub_1E4B30548(v39, v40, &v108);

      *(v37 + 14) = v41;
      v30 = v93;
      _os_log_impl(&dword_1E4AD3000, v33, v34, "Flushing %ld messages (%s) to client, since it started listening for them", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1E6921800](v38, -1, -1);
      MEMORY[0x1E6921800](v37, -1, -1);
    }

    else
    {
    }

    v43 = v106;
    v44 = v88;
    v45 = 0;
    v98 = v30 + 32;
    v46 = (v104 + 56);
    v47 = &qword_1E4BFDC70;
    v97 = (v104 + 56);
    v81 = v19;
    v80 = (v103 + 8);
    v79 = (v102 + 8);
    v104 = v103 + 16;
    do
    {
      if (v45 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_1E4B3AA00(v98 + 48 * v45, &v108);
      sub_1E4ADB544(&v109, v107);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      v48 = swift_dynamicCast();
      v49 = *v46;
      if (v48)
      {
        v49(v44, 0, 1, v19);
        sub_1E4B8505C(v44, v36, type metadata accessor for RCSReceivedNotification);
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v51 = Strong;
          v96 = v45;
          v52 = v89;
          sub_1E4B850C4(v36, v89, type metadata accessor for RCSReceivedNotification);
          sub_1E4B8505C(v52, v43, type metadata accessor for RCSMessage);
          v53 = *(v52 + *(v19 + 24));
          v54 = (v52 + *(v19 + 20));
          v55 = v90;
          v56 = (v43 + *(v90 + 20));
          v57 = v54[1];
          *v56 = *v54;
          v56[1] = v57;
          *(v43 + *(v55 + 24)) = v53;
          v58 = *(*(v51 + 64) + 16);
          os_unfair_lock_lock((v58 + 24));
          v59 = *(v58 + 16);

          os_unfair_lock_unlock((v58 + 24));
          v60 = v59;
          v61 = *(v59 + 16);
          if (v61)
          {
            v92 = v51;
            v103 = *(v86 + 28);
            v62 = (*(v85 + 80) + 32) & ~*(v85 + 80);
            v91 = v60;
            v63 = v60 + v62;
            v102 = *(v85 + 72);
            v64 = v105;
            v65 = v82;
            v66 = v84;
            v67 = v83;
            v68 = v80;
            v69 = v79;
            do
            {
              sub_1E4AF1898(v63, v66, &qword_1ECF92EE0, &qword_1E4BFDC70);
              (*v104)(v65, v66 + v103, v64);
              sub_1E4AE0AE4(v66, &qword_1ECF92EE0, &qword_1E4BFDC70);
              sub_1E4B850C4(v106, v67, type metadata accessor for RCSService.IncomingMessageNotification);
              v70 = v100;
              sub_1E4BF022C();
              v64 = v105;
              (*v68)(v65, v105);
              (*v69)(v70, v101);
              v63 += v102;
              --v61;
            }

            while (v61);

            v43 = v106;
            v44 = v88;
            v19 = v81;
            v36 = v87;
            v30 = v93;
            v47 = &qword_1E4BFDC70;
          }

          else
          {
          }

          sub_1E4B8512C(v43, type metadata accessor for RCSService.IncomingMessageNotification);

          v45 = v96;
          v46 = v97;
        }

        sub_1E4B8512C(v36, type metadata accessor for RCSReceivedNotification);
      }

      else
      {
        v71 = v43;
        v72 = v36;
        v73 = v47;
        v74 = v45;
        v49(v44, 1, 1, v19);
        sub_1E4AE0AE4(v44, &qword_1ECF95EE8, &qword_1E4C0E7A8);
        v75 = sub_1E4BEFB5C();
        v76 = sub_1E4BF04DC();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_1E4AD3000, v75, v76, "Got an unexpected message type when flushing pending messages", v77, 2u);
          v78 = v77;
          v30 = v93;
          MEMORY[0x1E6921800](v78, -1, -1);
        }

        v45 = v74;
        v46 = v97;
        v47 = v73;
        v36 = v72;
        v43 = v71;
      }

      ++v45;
    }

    while (v45 != v99);
  }

  else
  {
  }
}

uint64_t sub_1E4B829D0(void *a1, uint64_t a2)
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94468, &qword_1E4C05468);
  v68 = *(v70 - 8);
  v4 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v59 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95ED0, &qword_1E4C0E790);
  v66 = *(v6 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92ED0, &qword_1E4BFDC60);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v51 - v11;
  v12 = a1[6];
  v13 = a1[7];
  v69 = __swift_project_boxed_opaque_existential_1(a1 + 3, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1E4B84A38;
  *(v14 + 24) = a2;
  v15 = *(v13 + 72);
  v16 = sub_1E4B1C750();
  v60 = a2;
  swift_retain_n();
  v15(sub_1E4B84300, v14, &type metadata for RCSGroupChatMutationNotification, v16, v12, v13);

  v17 = a1[2];
  os_unfair_lock_lock((v17 + 104));
  sub_1E4B853B4((v17 + 16));
  os_unfair_lock_unlock((v17 + 104));
  os_unfair_lock_lock((v17 + 104));
  v18 = sub_1E4B76B24(sub_1E4B785D4, 0);
  os_unfair_lock_unlock((v17 + 104));
  v19 = *(v18 + 16);
  if (v19)
  {
    v67 = v6;
    if (qword_1ECF923E8 != -1)
    {
LABEL_26:
      swift_once();
    }

    v20 = sub_1E4BEFB7C();
    v21 = __swift_project_value_buffer(v20, qword_1ECF95E30);

    v22 = sub_1E4BEFB5C();
    v23 = sub_1E4BF04BC();
    v24 = os_log_type_enabled(v22, v23);
    v54 = v21;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v88[0] = v69;
      *v25 = 134218242;
      *(v25 + 4) = *(v18 + 16);

      *(v25 + 12) = 2080;
      v83.n128_u8[0] = 18;
      v26 = sub_1E4BEFEFC();
      v28 = sub_1E4B30548(v26, v27, v88);

      *(v25 + 14) = v28;
      _os_log_impl(&dword_1E4AD3000, v22, v23, "Flushing %ld messages (%s) to client, since it started listening for them", v25, 0x16u);
      v29 = v69;
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x1E6921800](v29, -1, -1);
      MEMORY[0x1E6921800](v25, -1, -1);
    }

    else
    {
    }

    v31 = v66;
    v32 = 0;
    v66 = v68 + 16;
    v64 = v18 + 32;
    v65 = (v68 + 8);
    v51 = (v31 + 8);
    v52 = v19;
    v53 = v18;
    v33 = v59;
    do
    {
      if (v32 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_1E4B3AA00(v64 + 48 * v32, v90);
      sub_1E4ADB544(v91, v89);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (swift_dynamicCast())
      {
        v82[2] = v88[2];
        v82[3] = v88[3];
        v82[0] = v88[0];
        v82[1] = v88[1];
        v85 = v88[2];
        v86 = v88[3];
        v87 = v88[4];
        v84 = v88[1];
        v82[4] = v88[4];
        v83 = v88[0];
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v35 = Strong;
          v79 = v85;
          v80 = v86;
          v81 = v87;
          v77 = v83;
          v78 = v84;
          sub_1E4B84A40(&v83, &v72);
          sub_1E4BDB0DC(&v77, &v72);
          v79 = v74;
          v80 = v75;
          v81 = v76;
          v77 = v72;
          v78 = v73;
          v36 = *(*(v35 + 80) + 16);
          os_unfair_lock_lock((v36 + 24));
          v37 = *(v36 + 16);

          v38 = (v36 + 24);
          v39 = v37;
          os_unfair_lock_unlock(v38);
          v40 = *(v37 + 16);
          if (v40)
          {
            v62 = v35;
            v63 = v32;
            v41 = *(v57 + 28);
            v42 = *(v56 + 80);
            v61 = v39;
            v43 = v39 + ((v42 + 32) & ~v42);
            v68 = *(v56 + 72);
            v69 = v41;
            v44 = v70;
            v45 = v58;
            v46 = v55;
            v47 = v51;
            do
            {
              sub_1E4AF1898(v43, v46, &qword_1ECF92ED0, &qword_1E4BFDC60);
              (*v66)(v33, v69 + v46, v44);
              sub_1E4AE0AE4(v46, &qword_1ECF92ED0, &qword_1E4BFDC60);
              v74 = v79;
              v75 = v80;
              v76 = v81;
              v72 = v77;
              v73 = v78;
              sub_1E4B84A9C(&v77, &v71);
              sub_1E4BF022C();
              v44 = v70;
              (*v65)(v33, v70);
              (*v47)(v45, v67);
              v43 += v68;
              --v40;
            }

            while (v40);

            v19 = v52;
            v18 = v53;
            v32 = v63;
          }

          else
          {
          }

          sub_1E4B84AF8(&v77);
        }

        sub_1E4AE0AE4(v82, &qword_1ECF95ED8, &qword_1E4C0E798);
      }

      else
      {
        *&v88[0] = 0x1FFFFFFFELL;
        *(v88 + 8) = 0u;
        *(&v88[1] + 8) = 0u;
        *(&v88[2] + 8) = 0u;
        *(&v88[3] + 8) = 0u;
        *(&v88[4] + 1) = 0;
        v85 = v88[2];
        v86 = v88[3];
        v87 = 0uLL;
        v83 = v88[0];
        v84 = v88[1];
        sub_1E4AE0AE4(&v83, &qword_1ECF95ED8, &qword_1E4C0E798);
        v48 = sub_1E4BEFB5C();
        v49 = sub_1E4BF04DC();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_1E4AD3000, v48, v49, "Got an unexpected message type when flushing pending messages", v50, 2u);
          MEMORY[0x1E6921800](v50, -1, -1);
        }
      }

      ++v32;
    }

    while (v32 != v19);
  }

  else
  {
  }
}

uint64_t sub_1E4B8323C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95EC0, &unk_1E4C0E780);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v56 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v9 = *(v65 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v65);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v56 - v13;
  v14 = a1[6];
  v15 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1E4B84480;
  *(v16 + 24) = a2;
  v17 = *(v15 + 72);
  v18 = sub_1E4B84488();
  swift_retain_n();
  v17(sub_1E4B853CC, v16, &type metadata for RCSReportSpamResultNotification, v18, v14, v15);

  v19 = a1[2];
  os_unfair_lock_lock((v19 + 104));
  sub_1E4B853B4((v19 + 16));
  os_unfair_lock_unlock((v19 + 104));
  os_unfair_lock_lock((v19 + 104));
  v20 = sub_1E4B76B24(sub_1E4B785E4, 0);
  v21 = (v19 + 104);
  v22 = v20;
  os_unfair_lock_unlock(v21);
  v23 = *(v22 + 16);
  if (v23)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_31:
      swift_once();
    }

    v58 = v9;
    v24 = sub_1E4BEFB7C();
    v25 = __swift_project_value_buffer(v24, qword_1ECF95E30);

    v67 = v25;
    v26 = sub_1E4BEFB5C();
    v27 = sub_1E4BF04BC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v74 = v29;
      *v28 = 134218242;
      *(v28 + 4) = *(v22 + 16);

      *(v28 + 12) = 2080;
      LOBYTE(v72) = 29;
      v30 = sub_1E4BEFEFC();
      v32 = sub_1E4B30548(v30, v31, &v74);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_1E4AD3000, v26, v27, "Flushing %ld messages (%s) to client, since it started listening for them", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E6921800](v29, -1, -1);
      MEMORY[0x1E6921800](v28, -1, -1);
    }

    else
    {
    }

    v34 = 0;
    v9 = &v74;
    v35 = v22 + 32;
    v63 = (v58 + 6);
    v59 = (v58 + 4);
    ++v58;
    v60 = a2;
    v64 = v22;
    v66 = v23;
    while (1)
    {
      if (v34 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      sub_1E4B3AA00(v35, &v74);
      sub_1E4ADB544(v75, &v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (!swift_dynamicCast())
      {
        v68 = 0;
        v69 = 0;
        v71 = 0;
        v70 = 0;

        v44 = sub_1E4BEFB5C();
        v45 = sub_1E4BF04DC();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_1E4AD3000, v44, v45, "Got an unexpected message type when flushing pending messages", v46, 2u);
          MEMORY[0x1E6921800](v46, -1, -1);
        }

        goto LABEL_11;
      }

      v36 = v69;
      v37 = v70;
      v38 = v71;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v40 = *(Strong + 152);
        if (v38 == 10)
        {
          v72 = v36;
          v73 = v37;
          v41 = *(v40 + 16);
          MEMORY[0x1EEE9AC00](Strong);
          *(&v56 - 2) = &v72;
          os_unfair_lock_lock(v41 + 6);
          v42 = v62;
          sub_1E4B85400(v62);
          os_unfair_lock_unlock(v41 + 6);
          v43 = v65;
          if ((*v63)(v42, 1, v65) == 1)
          {
            sub_1E4AE0AE4(v42, &qword_1ECF95EC0, &unk_1E4C0E780);
          }

          else
          {
            v53 = v57;
            (*v59)(v57, v42, v43);
            sub_1E4BF01BC();
            (*v58)(v53, v43);
          }

          v22 = v64;
          v23 = v66;

          goto LABEL_28;
        }

        sub_1E4B843DC();
        v47 = swift_allocError();
        *v48 = v38;
        v72 = v36;
        v73 = v37;
        v49 = *(v40 + 16);
        MEMORY[0x1EEE9AC00](v47);
        *(&v56 - 2) = &v72;
        os_unfair_lock_lock(v49 + 6);
        v50 = v61;
        sub_1E4B844DC(v61);
        v51 = v50;
        os_unfair_lock_unlock(v49 + 6);
        v52 = v65;
        if ((*v63)(v50, 1, v65) == 1)
        {
          sub_1E4AE0AE4(v50, &qword_1ECF95EC0, &unk_1E4C0E780);
        }

        else
        {
          v54 = v56;
          (*v59)(v56, v51, v52);
          v68 = v47;
          v55 = v47;
          sub_1E4BF01AC();
          (*v58)(v54, v52);
        }

        a2 = v60;
        v22 = v64;
      }

      else
      {
      }

      v23 = v66;
LABEL_28:
      v9 = &v74;
LABEL_11:
      ++v34;
      v35 += 48;
      if (v23 == v34)
      {
      }
    }
  }
}

uint64_t sub_1E4B83A98(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E50, &qword_1E4C0E6E8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v56 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94450, qword_1E4C0E6F0);
  v9 = *(v65 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v65);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v56 - v13;
  v14 = a1[6];
  v15 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1E4B842F8;
  *(v16 + 24) = a2;
  v17 = *(v15 + 72);
  v18 = sub_1E4B84334();
  v67 = a2;
  swift_retain_n();
  v17(sub_1E4B84300, v16, &type metadata for RCSRevokeMessageResponseNotification, v18, v14, v15);

  v19 = a1[2];
  os_unfair_lock_lock((v19 + 104));
  sub_1E4B84388((v19 + 16));
  os_unfair_lock_unlock((v19 + 104));
  os_unfair_lock_lock((v19 + 104));
  v20 = sub_1E4B76B24(sub_1E4B785F4, 0);
  os_unfair_lock_unlock((v19 + 104));
  v21 = *(v20 + 16);
  if (v21)
  {
    if (qword_1ECF923E8 != -1)
    {
LABEL_31:
      swift_once();
    }

    v22 = sub_1E4BEFB7C();
    v23 = __swift_project_value_buffer(v22, qword_1ECF95E30);

    v66 = v23;
    v24 = sub_1E4BEFB5C();
    v25 = sub_1E4BF04BC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v74 = v27;
      *v26 = 134218242;
      *(v26 + 4) = *(v20 + 16);

      *(v26 + 12) = 2080;
      LOBYTE(v72) = 36;
      v28 = sub_1E4BEFEFC();
      v30 = v9;
      v31 = sub_1E4B30548(v28, v29, &v74);

      *(v26 + 14) = v31;
      v9 = v30;
      _os_log_impl(&dword_1E4AD3000, v24, v25, "Flushing %ld messages (%s) to client, since it started listening for them", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E6921800](v27, -1, -1);
      MEMORY[0x1E6921800](v26, -1, -1);
    }

    else
    {
    }

    v33 = 0;
    v34 = v20 + 32;
    v62 = (v9 + 6);
    v59 = (v9 + 4);
    v58 = (v9 + 1);
    v9 = &qword_1ECF95E60;
    v64 = v20;
    v63 = v21;
    do
    {
      if (v33 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      sub_1E4B3AA00(v34, &v74);
      sub_1E4ADB544(v75, &v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95E60, &qword_1E4C0E730);
      if (swift_dynamicCast())
      {
        v35 = v69;
        v36 = v70;
        v37 = v71;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v39 = v37 >> 8;
          v40 = *(Strong + 144);
          if (v37 >> 8 == 10)
          {
            v72 = v35;
            v73 = v36;
            v41 = *(v40 + 16);
            MEMORY[0x1EEE9AC00](Strong);
            *(&v56 - 2) = &v72;
            os_unfair_lock_lock(v41 + 6);
            v42 = v61;
            sub_1E4B843A4(v61);
            os_unfair_lock_unlock(v41 + 6);
            v43 = v65;
            if ((*v62)(v42, 1, v65) == 1)
            {
              sub_1E4AE0AE4(v42, &qword_1ECF95E50, &qword_1E4C0E6E8);
            }

            else
            {
              v53 = v57;
              (*v59)(v57, v42, v43);
              LOBYTE(v68) = v37 & 1;
              sub_1E4BF01BC();
              (*v58)(v53, v43);
            }
          }

          else
          {
            sub_1E4B843DC();
            v47 = swift_allocError();
            *v48 = v39;
            v72 = v35;
            v73 = v36;
            v49 = *(v40 + 16);
            MEMORY[0x1EEE9AC00](v47);
            *(&v56 - 2) = &v72;
            os_unfair_lock_lock(v49 + 6);
            v50 = v60;
            sub_1E4B84430(v60);
            v51 = v50;
            os_unfair_lock_unlock(v49 + 6);
            v52 = v65;
            if ((*v62)(v50, 1, v65) == 1)
            {
              sub_1E4AE0AE4(v50, &qword_1ECF95E50, &qword_1E4C0E6E8);
            }

            else
            {
              v54 = v56;
              (*v59)(v56, v51, v52);
              v68 = v47;
              v55 = v47;
              sub_1E4BF01AC();
              (*v58)(v54, v52);
            }
          }

          v20 = v64;
          v21 = v63;
        }

        else
        {
        }

        v9 = &qword_1ECF95E60;
      }

      else
      {
        v68 = 0;
        v69 = 0;
        v71 = 0;
        v70 = 0;

        v44 = sub_1E4BEFB5C();
        v45 = sub_1E4BF04DC();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_1E4AD3000, v44, v45, "Got an unexpected message type when flushing pending messages", v46, 2u);
          MEMORY[0x1E6921800](v46, -1, -1);
        }
      }

      ++v33;
      v34 += 48;
    }

    while (v21 != v33);
  }

  else
  {
  }
}

uint64_t sub_1E4B84300(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 + 80);
}

unint64_t sub_1E4B84334()
{
  result = qword_1ECF95E58;
  if (!qword_1ECF95E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95E58);
  }

  return result;
}

uint64_t sub_1E4B843A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  return sub_1E4BDEC0C(a1);
}

unint64_t sub_1E4B843DC()
{
  result = qword_1ECF95E68;
  if (!qword_1ECF95E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95E68);
  }

  return result;
}

unint64_t sub_1E4B84488()
{
  result = qword_1ECF95EC8;
  if (!qword_1ECF95EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95EC8);
  }

  return result;
}

uint64_t sub_1E4B844DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  return sub_1E4BDE6CC(a1);
}

uint64_t sub_1E4B845B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1E4BF061C();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_1E4BF061C();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4B846E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    v7 = a4;
    v10 = a3;
    v8 = a2;
    v9 = a1;
    v11 = *v6;
    v12 = *v6 >> 62;
    if (!v12)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1E4BF061C();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9 - v8;
  if (__OFSUB__(0, v8 - v9))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12)
  {
    v15 = sub_1E4BF061C();
  }

  else
  {
    v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (!v16)
  {
    v10(result, 1);
    return sub_1E4B845B4(v9, v8, 0, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1E4B848C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v17 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E4B84B84@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  return sub_1E4BDE50C(a1);
}

uint64_t sub_1E4B84C18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  return sub_1E4BDEA4C(a1);
}

uint64_t sub_1E4B84C50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  return sub_1E4BDE88C(a1);
}

uint64_t sub_1E4B84CB8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  return sub_1E4BDE34C(a1);
}

unint64_t sub_1E4B84D44()
{
  result = qword_1ECF95F58;
  if (!qword_1ECF95F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95F58);
  }

  return result;
}

uint64_t sub_1E4B84DC8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  return sub_1E4BDE18C(a1);
}

uint64_t sub_1E4B84E24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = v2[1];
  return sub_1E4BDDFCC(a1);
}

unint64_t sub_1E4B84EB8()
{
  result = qword_1ECF95FB0;
  if (!qword_1ECF95FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95FB0);
  }

  return result;
}

unint64_t sub_1E4B84F0C()
{
  result = qword_1ECF95FB8;
  if (!qword_1ECF95FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF95FB8);
  }

  return result;
}

uint64_t sub_1E4B84FC4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return v6(a1 + *(v7 + 40));
}

uint64_t sub_1E4B85014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4B8505C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B850C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B8512C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4B8519C()
{
  result = qword_1ECF96008;
  if (!qword_1ECF96008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96008);
  }

  return result;
}

uint64_t sub_1E4B85234(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E4B33678;

  return sub_1E4B77F90(a1, v4, v5, v6);
}

uint64_t sub_1E4B852E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E4B85310(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B85358(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RCSReceiveRequest.messageID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t sub_1E4B85498(uint64_t a1)
{
  v2 = sub_1E4B856C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B854D4(uint64_t a1)
{
  v2 = sub_1E4B856C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSReceiveRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96038, &qword_1E4C0E980);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v13[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B856C4();
  sub_1E4BF0ACC();
  LOBYTE(v14) = v8;
  v16 = 0;
  sub_1E4ADBE98();
  v11 = v13[1];
  sub_1E4BF093C();
  if (!v11)
  {
    v14 = v13[0];
    v15 = v9;
    v16 = 1;
    sub_1E4AE2DEC();

    sub_1E4BF093C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E4B856C4()
{
  result = qword_1ECF96040;
  if (!qword_1ECF96040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96040);
  }

  return result;
}

uint64_t RCSReceiveRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96048, &qword_1E4C0E988);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B856C4();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v16 = 0;
    sub_1E4ADBF38();
    sub_1E4BF087C();
    v11 = v15[0];
    v16 = 1;
    sub_1E4AE30EC();
    sub_1E4BF087C();
    (*(v6 + 8))(v9, v5);
    v13 = v15[0];
    v14 = v15[1];
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B858F0(uint64_t a1)
{
  result = sub_1E4B85918();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B85918()
{
  result = qword_1EE2BDD68;
  if (!qword_1EE2BDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDD68);
  }

  return result;
}

uint64_t sub_1E4B859D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RCSMessage(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4B85A24(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B85A54();
  result = sub_1E4B85AA8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B85A54()
{
  result = qword_1EE2BDD70;
  if (!qword_1EE2BDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDD70);
  }

  return result;
}

unint64_t sub_1E4B85AA8()
{
  result = qword_1EE2BDD78[0];
  if (!qword_1EE2BDD78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2BDD78);
  }

  return result;
}

unint64_t sub_1E4B85B50()
{
  result = qword_1ECF96050;
  if (!qword_1ECF96050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96050);
  }

  return result;
}

unint64_t sub_1E4B85BA8()
{
  result = qword_1ECF96058;
  if (!qword_1ECF96058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96058);
  }

  return result;
}

unint64_t sub_1E4B85C00()
{
  result = qword_1ECF96060;
  if (!qword_1ECF96060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96060);
  }

  return result;
}

_BYTE *SMSResultNotification.init(cellularServiceID:messageID:error:)@<X0>(_BYTE *result@<X0>, int *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  *(a4 + 4) = v4;
  *(a4 + 8) = v5;
  return result;
}

uint64_t sub_1E4B85CA0(uint64_t a1)
{
  v2 = sub_1E4B85EF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B85CDC(uint64_t a1)
{
  v2 = sub_1E4B85EF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SMSResultNotification.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96068, &qword_1E4C0EB80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  HIDWORD(v14) = v1[8];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B85EF8();
  sub_1E4BF0ACC();
  v21 = v9;
  v20 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v12 = BYTE4(v14);
    v17 = v15;
    v19 = 1;
    sub_1E4B4824C();
    sub_1E4BF093C();
    v18 = v12;
    v16 = 2;
    sub_1E4B85F4C();
    sub_1E4BF08EC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E4B85EF8()
{
  result = qword_1ECF96070;
  if (!qword_1ECF96070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96070);
  }

  return result;
}

unint64_t sub_1E4B85F4C()
{
  result = qword_1ECF96078;
  if (!qword_1ECF96078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96078);
  }

  return result;
}

uint64_t SMSResultNotification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96080, &qword_1E4C0EB88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B85EF8();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v19 = 0;
    sub_1E4ADBF38();
    sub_1E4BF087C();
    v11 = v20;
    v18 = 1;
    sub_1E4B48474();
    sub_1E4BF087C();
    v13 = v16;
    v15[15] = 2;
    sub_1E4B861BC();
    sub_1E4BF082C();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    *a2 = v11;
    *(a2 + 4) = v13;
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B861BC()
{
  result = qword_1ECF96088;
  if (!qword_1ECF96088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96088);
  }

  return result;
}

unint64_t sub_1E4B86210(uint64_t a1)
{
  result = sub_1E4B84EB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B86238(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B86268();
  result = sub_1E4B862BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B86268()
{
  result = qword_1ECF96090;
  if (!qword_1ECF96090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96090);
  }

  return result;
}

unint64_t sub_1E4B862BC()
{
  result = qword_1ECF96098;
  if (!qword_1ECF96098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96098);
  }

  return result;
}

unint64_t sub_1E4B86364()
{
  result = qword_1ECF960A0;
  if (!qword_1ECF960A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF960A0);
  }

  return result;
}

unint64_t sub_1E4B863BC()
{
  result = qword_1ECF960A8;
  if (!qword_1ECF960A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF960A8);
  }

  return result;
}

unint64_t sub_1E4B86414()
{
  result = qword_1ECF960B0;
  if (!qword_1ECF960B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF960B0);
  }

  return result;
}

uint64_t sub_1E4B86478(uint64_t a1)
{
  result = sub_1E4BEFAFC();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 88);
    result = sub_1E4BF053C();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1E4B86564(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_1E4B8661C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4B86640, 0, 0);
}

uint64_t sub_1E4B86640()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1E4B8673C;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_1E4B8B8BC, v3, v6);
}

uint64_t sub_1E4B8673C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1E4B32F7C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1E4B86858;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1E4B86870(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94948, &unk_1E4C0EF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95808, &unk_1E4C0BED0);
  if (swift_dynamicCast())
  {
    sub_1E4ADB544(v34, v37);
    v5 = v38;
    v6 = v39;
    v7 = __swift_project_boxed_opaque_existential_1(v37, v38);
    v8 = *(*(v5 - 8) + 64);
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v11 + 16))(v10);
    sub_1E4B8B7C0();
    sub_1E4B8B814();
    sub_1E4B65600(v10, v5, v6, a2);

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_1E4AE0AE4(v34, &qword_1ECF95810, &qword_1E4C0EF30);
    swift_getErrorValue();
    v12 = a1;
    v13 = sub_1E4BF0A0C();
    v15 = v14;
    ErrorValue = swift_getErrorValue();
    v17 = *(*(v33 - 8) + 64);
    MEMORY[0x1EEE9AC00](ErrorValue);
    (*(v19 + 16))(&v31[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v20 = sub_1E4BEFEFC();
    v22 = v21;
    v23 = swift_getErrorValue();
    v24 = *(*(v32 - 8) + 64);
    MEMORY[0x1EEE9AC00](v23);
    (*(v26 + 16))(&v31[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v27 = sub_1E4BEFF0C();
    v29 = v28;

    *(a2 + 32) = &type metadata for XPCApplicationError;
    *(a2 + 40) = sub_1E4B6781C();
    *(a2 + 48) = sub_1E4B67870();
    *(a2 + 56) = sub_1E4B678C4();
    v30 = swift_allocObject();
    *(a2 + 8) = v30;

    v30[2] = v13;
    v30[3] = v15;
    v30[4] = v20;
    v30[5] = v22;
    v30[6] = v27;
    v30[7] = v29;
    *a2 = 0;
    *(a2 + 64) = 1;
  }
}

uint64_t sub_1E4B86C30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v4 = sub_1E4BEFD3C();
  return (*(*(v4 - 8) + 8))(a1, v4);
}

uint64_t sub_1E4B86CA4()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF960B8);
  v1 = __swift_project_value_buffer(v0, qword_1ECF960B8);
  if (qword_1EE2BD750 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E4B86DC4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, void *, char *, void, void))
{
  v8 = sub_1E4BEFBBC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4BEFC3C();
  v12 = a3;

  sub_1E4BEFBAC();
  return a4(a1, a2, a3, v11, 0, 0);
}

uint64_t sub_1E4B86E9C()
{
  v1 = *v0;
  if (qword_1ECF923F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v2, qword_1ECF960B8);

  v3 = sub_1E4BEFB5C();
  v4 = sub_1E4BF04BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    sub_1E4BEFAFC();
    sub_1E4B8B944(&qword_1ECF93B78, MEMORY[0x1E69695A8]);
    v7 = sub_1E4BF096C();
    v9 = v8;

    v10 = sub_1E4B30548(v7, v9, &v19);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1E4AD3000, v3, v4, "Configuring connection %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E6921800](v6, -1, -1);
    MEMORY[0x1E6921800](v5, -1, -1);
  }

  else
  {
  }

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v13 = v1[10];
  v12[2] = v13;
  v14 = v1[11];
  v12[3] = v14;
  v15 = v1[12];
  v12[4] = v15;
  v12[5] = v11;

  sub_1E4BEFBDC();

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v14;
  v17[4] = v15;
  v17[5] = v16;

  sub_1E4BEFBCC();

  return sub_1E4BEFC1C();
}

char *sub_1E4B871A0()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1ECF923F0 != -1)
  {
    swift_once();
  }

  v3 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v3, qword_1ECF960B8);

  v4 = sub_1E4BEFB5C();
  v5 = sub_1E4BF04BC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    sub_1E4BEFAFC();
    sub_1E4B8B944(&qword_1ECF93B78, MEMORY[0x1E69695A8]);
    v8 = sub_1E4BF096C();
    v10 = v9;

    v11 = sub_1E4B30548(v8, v10, &v23);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1E4AD3000, v4, v5, "XPCConnection %s deinit", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E6921800](v7, -1, -1);
    MEMORY[0x1E6921800](v6, -1, -1);
  }

  else
  {
  }

  sub_1E4B874C4();
  sub_1E4BEFC0C();

  v12 = qword_1EE2C2010;
  v13 = sub_1E4BEFAFC();
  (*(*(v13 - 8) + 8))(&v1[v12], v13);
  v14 = *(*v1 + 112);
  v15 = *(v2 + 88);
  v16 = sub_1E4BF053C();
  (*(*(v16 - 8) + 8))(&v1[v14], v16);
  v17 = &v1[*(*v1 + 120)];
  v18 = v17[1];
  sub_1E4AD651C(*v17);
  v19 = *&v1[*(*v1 + 128)];

  v20 = *&v1[*(*v1 + 136)];

  v21 = *&v1[*(*v1 + 144)];

  return v1;
}

uint64_t sub_1E4B874C4()
{
  v1 = *(v0 + *(*v0 + 128));
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t sub_1E4B87518()
{
  sub_1E4B871A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1E4B87588@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E4B8760C(a1, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E4B8760C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v112 = a2;
  v109 = *v3;
  v5 = v109;
  v6 = sub_1E4BEFD3C();
  v104 = *(v6 - 8);
  v105 = v6;
  v7 = *(v104 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v103 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(*(v109 + 80) - 8);
  v10 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v106 = v98 - v11;
  v12 = *(v5 + 96);
  v110 = v13;
  v108 = v12;
  v14 = type metadata accessor for XPCBoxedMessage();
  v15 = sub_1E4BF053C();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v98 - v18;
  v20 = *(v14 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v24 = v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v98 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v111 = (v98 - v28);
  swift_getWitnessTable();
  sub_1E4BEFD2C();
  v99 = v24;
  v100 = v27;
  v101 = a1;
  (*(v20 + 56))(v19, 0, 1, v14);
  v102 = v20;
  v29 = v111;
  v30 = (*(v20 + 32))(v111, v19, v14);
  v31 = *(v3 + *(*v3 + 144));
  MEMORY[0x1EEE9AC00](v30);
  v32 = v110;
  v33 = *(v109 + 88);
  v98[-4] = v110;
  v98[-3] = v33;
  v34 = v108;
  v98[-2] = v108;
  v98[-1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF95BF0, &unk_1E4C0EF00);
  v35 = v34[3];
  sub_1E4BEFDAC();
  v36 = *(*v31 + *MEMORY[0x1E69E6B68] + 16);
  v37 = (*(*v31 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v31 + v37));
  sub_1E4B8B6F4((v31 + v36), v113);
  v109 = 0;
  os_unfair_lock_unlock((v31 + v37));
  v38 = *&v113[0];
  v39 = v29;
  v40 = v14;
  if (*&v113[0])
  {
    v41 = *(&v113[0] + 1);
    if (qword_1ECF923F0 != -1)
    {
      swift_once();
    }

    v42 = sub_1E4BEFB7C();
    v43 = __swift_project_value_buffer(v42, qword_1ECF960B8);
    v44 = v102;
    v45 = v100;
    (*(v102 + 16))(v100, v39, v14);
    v99 = v43;
    v46 = sub_1E4BEFB5C();
    v47 = sub_1E4BF04BC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v108 = v14;
      v49 = v48;
      v98[0] = swift_slowAlloc();
      v98[1] = v41;
      *&v113[0] = v98[0];
      *v49 = 136315138;
      (*(v107 + 16))(v106, v45, v32);
      v50 = sub_1E4BEFEFC();
      v52 = v51;
      v53 = *(v102 + 8);
      v54 = v45;
      v55 = v108;
      v53(v54, v108);
      v56 = sub_1E4B30548(v50, v52, v113);

      *(v49 + 4) = v56;
      _os_log_impl(&dword_1E4AD3000, v46, v47, "Handling request: %s", v49, 0xCu);
      v57 = v98[0];
      __swift_destroy_boxed_opaque_existential_1(v98[0]);
      MEMORY[0x1E6921800](v57, -1, -1);
      MEMORY[0x1E6921800](v49, -1, -1);

      v58 = v101;
      v59 = v105;
      v60 = v55;
    }

    else
    {

      v53 = *(v44 + 8);
      v53(v45, v14);
      v60 = v14;
      v58 = v101;
      v59 = v105;
    }

    v78 = v103;
    (*(v104 + 16))(v103, v58, v59);
    v79 = v111;
    v80 = v111 + *(v60 + 36);
    v81 = v109;
    v38(v78, v80);
    if (v81)
    {
      sub_1E4AD651C(v38);
      v82 = v81;
      v83 = sub_1E4BEFB5C();
      v84 = sub_1E4BF04DC();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *v85 = 138412290;
        v87 = v81;
        v88 = _swift_stdlib_bridgeErrorToNSError();
        *(v85 + 4) = v88;
        *v86 = v88;
        _os_log_impl(&dword_1E4AD3000, v83, v84, "Error while handling request: %@", v85, 0xCu);
        sub_1E4AE0AE4(v86, &qword_1ECF93B50, &qword_1E4C05660);
        MEMORY[0x1E6921800](v86, -1, -1);
        MEMORY[0x1E6921800](v85, -1, -1);
      }

      v89 = *(v80 + 4);
      __swift_project_boxed_opaque_existential_1(v80, *(v80 + 3));
      sub_1E4B6F600(v81);
    }

    else
    {
      sub_1E4AD651C(v38);
    }

    v90 = v112;
    *(v112 + 32) = 0;
    *v90 = 0u;
    v90[1] = 0u;
    return (v53)(v79, v60);
  }

  else
  {
    v61 = v106;
    if (qword_1ECF923F0 != -1)
    {
      swift_once();
    }

    v62 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v62, qword_1ECF960B8);
    v63 = v102;
    v64 = v99;
    (*(v102 + 16))(v99, v39, v14);
    v65 = sub_1E4BEFB5C();
    v66 = sub_1E4BF04DC();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v107;
    if (v67)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v108 = v40;
      v71 = v70;
      *&v113[0] = v70;
      *v69 = 136315138;
      (*(v68 + 16))(v61, v64, v32);
      v72 = sub_1E4BEFEFC();
      v74 = v73;
      v75 = *(v63 + 8);
      v75(v64, v108);
      v76 = sub_1E4B30548(v72, v74, v113);

      *(v69 + 4) = v76;
      _os_log_impl(&dword_1E4AD3000, v65, v66, "Received unhandled request: %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v77 = v71;
      v40 = v108;
      MEMORY[0x1E6921800](v77, -1, -1);
      MEMORY[0x1E6921800](v69, -1, -1);
    }

    else
    {

      v75 = *(v63 + 8);
      v75(v64, v40);
    }

    v92 = v111;
    v93 = v111 + *(v40 + 36);
    v94 = *(v93 + 4);
    __swift_project_boxed_opaque_existential_1(v93, *(v93 + 3));
    sub_1E4B14264();
    v95 = swift_allocError();
    *v96 = 2;
    sub_1E4B6F600(v95);

    v97 = v112;
    *(v112 + 32) = 0;
    *v97 = 0u;
    v97[1] = 0u;
    return (v75)(v92, v40);
  }
}

uint64_t sub_1E4B880E4(uint64_t a1)
{
  v2 = sub_1E4BEFAFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_1ECF923F0 != -1)
    {
      swift_once();
    }

    v9 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v9, qword_1ECF960B8);

    v10 = sub_1E4BEFB5C();
    v11 = sub_1E4BF04BC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v28 = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136315138;
      (*(v3 + 16))(v6, v8 + qword_1EE2C2010, v2);
      sub_1E4B8B944(&qword_1ECF93B78, MEMORY[0x1E69695A8]);
      v15 = sub_1E4BF096C();
      v17 = v16;

      (*(v3 + 8))(v6, v2);
      v18 = sub_1E4B30548(v15, v17, &v29);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1E4AD3000, v10, v11, "Received cancellation for connection %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E6921800](v14, -1, -1);
      v19 = v13;
      a1 = v28;
      MEMORY[0x1E6921800](v19, -1, -1);
    }

    else
    {
    }

    v20 = *(v8 + *(*v8 + 136));
    os_unfair_lock_lock((v20 + 32));
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v20 + 24);
      v23 = swift_allocObject();
      *(v23 + 16) = v21;
      *(v23 + 24) = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_1E4B8B6A4;
      *(v24 + 24) = v23;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_1E4B8B6A4;
      *(v25 + 24) = v23;
      *(v20 + 16) = sub_1E4B8BB40;
      *(v20 + 24) = v25;

      os_unfair_lock_unlock((v20 + 32));

      v26 = *(v24 + 24);
      (*(v24 + 16))(a1);
      sub_1E4AD651C(sub_1E4B8B6CC);
      sub_1E4AD651C(sub_1E4B8B6CC);
    }

    else
    {
      os_unfair_lock_unlock((v20 + 32));
    }
  }

  return result;
}

void sub_1E4B884BC()
{
  v2 = v1;
  v3 = (v0 + *(*v0 + 120));
  v4 = *v3;
  if (*v3)
  {
    v5 = v0;
    v6 = v3[1];
    v7 = qword_1ECF923F0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v8, qword_1ECF960B8);
    v9 = sub_1E4BEFB5C();
    v10 = sub_1E4BF04BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1E4AD3000, v9, v10, "Resetting session", v11, 2u);
      MEMORY[0x1E6921800](v11, -1, -1);
    }

    v12 = *(v5 + *(*v5 + 128));
    MEMORY[0x1EEE9AC00](v13);
    os_unfair_lock_lock((v12 + 24));
    sub_1E4B8B66C((v12 + 16));
    os_unfair_lock_unlock((v12 + 24));
    if (v2)
    {
      sub_1E4AD651C(v4);
    }

    else
    {
      v14 = sub_1E4BEFB5C();
      v15 = sub_1E4BF04BC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1E4AD3000, v14, v15, "Created new session", v16, 2u);
        MEMORY[0x1E6921800](v16, -1, -1);
      }

      sub_1E4AD651C(v4);
    }
  }
}

uint64_t sub_1E4B886E0(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v5 = *a1;

  v6 = sub_1E4BEFC0C();
  v7 = a2(v6);

  if (!v2)
  {
    *a1 = v7;
    sub_1E4B86E9C();
  }

  return result;
}

uint64_t sub_1E4B88794()
{
  if (qword_1ECF923F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v0, qword_1ECF960B8);
  v1 = sub_1E4BEFB5C();
  v2 = sub_1E4BF04BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1E4AD3000, v1, v2, "Pinging remote end", v3, 2u);
    MEMORY[0x1E6921800](v3, -1, -1);
  }

  sub_1E4B874C4();
  sub_1E4B8B868();
  sub_1E4BEFBFC();
}

uint64_t sub_1E4B888B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E4B888D8, 0, 0);
}

uint64_t sub_1E4B888D8()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v7 = v0;
  v7[1] = sub_1E4B889F8;
  v9 = v0[2];

  return MEMORY[0x1EEE6DE38](v9, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_1E4B8BA4C, v5, AssociatedTypeWitness);
}

uint64_t sub_1E4B889F8()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4B88B34, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E4B88B34()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1E4B88B98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v48 = a5;
  v50 = a2;
  v51 = a1;
  v6 = *a3;
  v44 = sub_1E4BEFCCC();
  v40 = *(v44 - 8);
  v7 = *(v40 + 64);
  v8 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v39 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v39 - v12;
  swift_getAssociatedTypeWitness();
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF94948, &unk_1E4C0EF20);
  v13 = sub_1E4BF01CC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v47 = &v39 - v17;
  v18 = a4;
  v19 = *(a4 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v6;
  v23 = *(v6 + 80);
  v24 = *(v6 + 96);
  v45 = type metadata accessor for XPCBoxedMessage();
  v49 = *(v45 - 8);
  v25 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v27 = &v39 - v26;
  (*(v19 + 16))(v22, v50, v18);
  v28 = v22;
  v29 = v18;
  v30 = v18;
  v31 = v48;
  sub_1E4BC4FB4(v28, v29, v48, v27);
  v50 = sub_1E4B874C4();
  v32 = v47;
  (*(v14 + 16))(v47, v51, v13);
  v33 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 2) = v23;
  v36 = v45;
  *(v34 + 3) = *(v35 + 88);
  *(v34 + 4) = v30;
  *(v34 + 5) = v31;
  v37 = *(v14 + 32);
  v48 = v13;
  v37(&v34[v33], v32, v13);
  swift_getWitnessTable();
  sub_1E4BEFBEC();
  (*(v49 + 8))(v27, v36);
}

uint64_t sub_1E4B894E8(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = sub_1E4BEFCCC();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v27 - v8;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for CodableResult();
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = sub_1E4BEFD3C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF960E8, &qword_1E4C0EF48);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - v20;
  sub_1E4B8B98C(a1, &v27 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v30;
    v23 = v31;
    (*(v31 + 32))(v30, v21, v3);
    sub_1E4B8B944(&qword_1ECF95C80, MEMORY[0x1E69E84C0]);
    v24 = swift_allocError();
    (*(v23 + 16))(v25, v22, v3);
    v33 = v24;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF94948, &unk_1E4C0EF20);
    sub_1E4BF01CC();
    sub_1E4BF01AC();
    return (*(v23 + 8))(v22, v3);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    swift_getWitnessTable();
    sub_1E4BEFD2C();
    sub_1E4B65B14(v9, v29);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF94948, &unk_1E4C0EF20);
    sub_1E4BF01CC();
    sub_1E4BF01BC();
    (*(v28 + 8))(v12, v9);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_1E4B89A00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v41 = a2;
  v42 = a5;
  v43 = a1;
  v7 = *a3;
  v38 = sub_1E4BEFCCC();
  v35 = *(v38 - 8);
  v8 = *(v35 + 64);
  v9 = MEMORY[0x1EEE9AC00](v38);
  v37 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v34[1] = v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v36 = v34 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v34 - v18;
  v20 = *(a4 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a3;
  v24 = *(v7 + 80);
  v25 = *(v7 + 96);
  v26 = type metadata accessor for XPCBoxedMessage();
  v40 = *(v26 - 8);
  v27 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v34 - v28;
  (*(v20 + 16))(v23, v41, a4);
  sub_1E4BC4FB4(v23, a4, v42, v29);
  sub_1E4B874C4();
  (*(v15 + 16))(v19, v43, v14);
  v30 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v31 = swift_allocObject();
  v32 = *(v15 + 32);
  v42 = v14;
  v32(v31 + v30, v19, v14);
  swift_getWitnessTable();
  sub_1E4BEFBEC();
  (*(v40 + 8))(v29, v26);
}

uint64_t sub_1E4B8A2D8(uint64_t a1)
{
  v2 = sub_1E4BEFCCC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4BEFD3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF960E8, &qword_1E4C0EF48);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20[-1] - v14;
  sub_1E4B8B98C(a1, &v20[-1] - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v15, v2);
    sub_1E4B8B944(&qword_1ECF95C80, MEMORY[0x1E69E84C0]);
    v16 = swift_allocError();
    (*(v3 + 16))(v17, v6, v2);
    v20[0] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
    sub_1E4BF01AC();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BA0, &qword_1E4C0BEC0);
    sub_1E4B8B9FC(&qword_1ECF960F0);
    sub_1E4BEFD2C();
    sub_1E4B66FBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
    sub_1E4BF01BC();
    sub_1E4AE0AE4(v20, &qword_1ECF93BA0, &qword_1E4C0BEC0);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1E4B8A670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v31 = a4;
  v7 = *v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v32 = type metadata accessor for CodableResult();
  v30 = *(v32 - 8);
  v8 = *(v30 + 64);
  v9 = MEMORY[0x1EEE9AC00](v32);
  v11 = &v29 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v7 + 80);
  v17 = *(v7 + 96);
  v18 = type metadata accessor for XPCBoxedMessage();
  v33 = *(v18 - 8);
  v19 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  (*(v12 + 16))(v15, v34, a2);
  v22 = v32;
  v23 = a3;
  v24 = v11;
  sub_1E4BC4FB4(v15, a2, v23, v21);
  sub_1E4B874C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v25 = v35;
  sub_1E4BEFC2C();
  if (v25)
  {
    (*(v33 + 8))(v21, v18);
  }

  else
  {
    v27 = v33;
    v28 = v30;

    sub_1E4B65B14(v22, v31);
    (*(v28 + 8))(v24, v22);
    return (*(v27 + 8))(v21, v18);
  }
}

void sub_1E4B8A9E8()
{
  v1 = *(v0 + *(*v0 + 144));
  v5 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF95BF0, &unk_1E4C0EF00);
  v2 = *(swift_getAssociatedConformanceWitness() + 24);
  sub_1E4BEFDAC();
  v3 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v4));
  sub_1E4B8B778(v1 + v3);
  os_unfair_lock_unlock((v1 + v4));
}

uint64_t sub_1E4B8AB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 64))(v15, v14);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a2;
  v16[7] = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1E4B8B79C;
  *(v17 + 24) = v16;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF95BF0, &unk_1E4C0EF00);
  v18 = *(swift_getAssociatedConformanceWitness() + 24);
  sub_1E4BEFDAC();
  return sub_1E4BEFDCC();
}

uint64_t sub_1E4B8ACC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a4;
  v44 = a3;
  v57 = a1;
  v9 = type metadata accessor for XPCPeerMessage();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v43 - v11;
  v12 = sub_1E4BF053C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43 - v16;
  v18 = *(a7 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  sub_1E4B14334(a2, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECF95BF8, &unk_1E4C0EF10);
  v25 = swift_dynamicCast();
  v26 = *(v18 + 56);
  if (v25)
  {
    v26(v17, 0, 1, a7);
    (*(v18 + 32))(v24, v17, a7);
    v27 = sub_1E4BEFD3C();
    v50 = v27;
    v51 = &off_1F5EB8920;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v49);
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v57, v27);
    v29 = sub_1E4BEFCFC();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    type metadata accessor for audit_token_t(0);
    v54 = v36;
    v55 = &off_1F5EB1D50;
    v37 = swift_allocObject();
    *&v53 = v37;
    v37[2] = v29;
    v37[3] = v31;
    v37[4] = v33;
    v37[5] = v35;
    (*(v18 + 16))(v22, v24, a7);
    v38 = v46;
    sub_1E4BA9114(&v49, &v53, v22, a7, v46);
    v39 = v45;
    v44(v38);
    if (v39)
    {
      v40 = v39;
      sub_1E4B86870(v39, &v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BA0, &qword_1E4C0BEC0);
      sub_1E4B8B9FC(&qword_1ECF93BA8);
      sub_1E4BEFD1C();
    }

    else
    {
      v52 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93BA0, &qword_1E4C0BEC0);
      sub_1E4B8B9FC(&qword_1ECF93BA8);
      sub_1E4BEFD1C();
    }

    sub_1E4AE0AE4(&v49, &qword_1ECF93BA0, &qword_1E4C0BEC0);
    (*(v47 + 8))(v38, v48);
    return (*(v18 + 8))(v24, a7);
  }

  else
  {
    v26(v17, 1, 1, a7);
    (*(v13 + 8))(v17, v12);
    sub_1E4B14264();
    swift_allocError();
    *v42 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1E4B8B1FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1EE2C2010;
  v5 = sub_1E4BEFAFC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E4B8B278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E4B33678;

  return sub_1E4B888B0(a1, a2, a3, a4);
}

uint64_t sub_1E4B8B33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E4B34F84;

  return sub_1E4B8661C(a1, a2, a3);
}

uint64_t sub_1E4B8B490()
{
  sub_1E4BEFAFC();
  sub_1E4B8B944(&qword_1ECF94700, MEMORY[0x1E69695A8]);
  return sub_1E4BEFDDC();
}

uint64_t sub_1E4B8B514()
{
  sub_1E4BF0A6C();
  sub_1E4B8B490();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B8B59C()
{
  sub_1E4BF0A6C();
  v1 = *v0;
  sub_1E4B8B490();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B8B5DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1E4B8B47C() & 1;
}

uint64_t sub_1E4B8B66C(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1E4B886E0(a1, *(v1 + 16));
}

double sub_1E4B8B68C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  return sub_1E4B87588(a1, a2);
}

uint64_t sub_1E4B8B698(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  return sub_1E4B880E4(a1);
}

uint64_t sub_1E4B8B6A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E4B8B6CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

double sub_1E4B8B6F4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[2];
  v6 = v2[4];
  v5 = v2[5];
  v7 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95BF0, &unk_1E4C0EF00);
  v8 = *(v6 + 24);
  sub_1E4BEFDBC();
  result = *&v10;
  *a2 = v10;
  return result;
}

unint64_t sub_1E4B8B7C0()
{
  result = qword_1ECF960D0;
  if (!qword_1ECF960D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF960D0);
  }

  return result;
}

unint64_t sub_1E4B8B814()
{
  result = qword_1ECF960D8;
  if (!qword_1ECF960D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF960D8);
  }

  return result;
}

unint64_t sub_1E4B8B868()
{
  result = qword_1ECF960E0;
  if (!qword_1ECF960E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF960E0);
  }

  return result;
}

uint64_t sub_1E4B8B8C8(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40) - 8) + 80);

  return sub_1E4B8A2D8(a1);
}

uint64_t sub_1E4B8B944(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4B8B98C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF960E8, &qword_1E4C0EF48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4B8B9FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF93BA0, &qword_1E4C0BEC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4B8BA58(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF94948, &unk_1E4C0EF20);
  v7 = *(sub_1E4BF01CC() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1E4B894E8(a1, v8);
}

uint64_t MessagingServiceStatus.cellularServices.getter()
{
  v1 = *v0;

  v3 = sub_1E4B38DD4(v2);

  return v3;
}

uint64_t sub_1E4B8BC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B8EEC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B8BC64(uint64_t a1)
{
  v2 = sub_1E4B8DBAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B8BCA0(uint64_t a1)
{
  v2 = sub_1E4B8DBAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B8BCDC(uint64_t a1)
{
  v2 = sub_1E4B8DC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B8BD18(uint64_t a1)
{
  v2 = sub_1E4B8DC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B8BD54(uint64_t a1)
{
  v2 = sub_1E4B8DC00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B8BD90(uint64_t a1)
{
  v2 = sub_1E4B8DC00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B8BDCC(uint64_t a1)
{
  v2 = sub_1E4B8DCA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B8BE08(uint64_t a1)
{
  v2 = sub_1E4B8DCA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagingServiceType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF960F8, &qword_1E4C0EF60);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96100, &qword_1E4C0EF68);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96108, &qword_1E4C0EF70);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96110, &qword_1E4C0EF78);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8DBAC();
  sub_1E4BF0ACC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1E4B8DC54();
      v12 = v26;
      sub_1E4BF08BC();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1E4B8DC00();
      v12 = v29;
      sub_1E4BF08BC();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1E4B8DCA8();
    sub_1E4BF08BC();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t MessagingServiceType.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t MessagingServiceType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96138, &qword_1E4C0EF80);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96140, &qword_1E4C0EF88);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96148, &qword_1E4C0EF90);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96150, &unk_1E4C0EF98);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E4B8DBAC();
  v20 = v43;
  sub_1E4BF0ABC();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1E4BF088C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1E4AE0F1C();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1E4BF06EC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v30 = &type metadata for MessagingServiceType;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1E4B8DC54();
          sub_1E4BF07EC();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1E4B8DC00();
          v33 = v22;
          sub_1E4BF07EC();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1E4B8DCA8();
        sub_1E4BF07EC();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_1E4B8C850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C626169567369 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4B8C8D8(uint64_t a1)
{
  v2 = sub_1E4B8DCFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B8C914(uint64_t a1)
{
  v2 = sub_1E4B8DCFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagingServiceStatus.ServiceInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96158, &qword_1E4C0EFA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8DCFC();
  sub_1E4BF0ACC();
  sub_1E4BF090C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t MessagingServiceStatus.ServiceInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96168, &qword_1E4C0EFB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8DCFC();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v11 = sub_1E4BF084C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B8CBF8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96158, &qword_1E4C0EFA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8DCFC();
  sub_1E4BF0ACC();
  sub_1E4BF090C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t MessagingServiceStatus.State.cellularServiceState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t sub_1E4B8CD68(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v26 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v27 = (v7 - 1) & v7;
LABEL_14:
    v13 = v10 | (v3 << 6);
    v14 = *(*(result + 48) + v13);
    v15 = (*(result + 56) + 32 * v13);
    v16 = *v15;
    v18 = v15[1];
    v17 = v15[2];
    v19 = v15[3];
    v20 = v17 == 0;

    if (!v17)
    {
      return v20;
    }

    v21 = sub_1E4B8DD50(v14, sub_1E4B8DF0C);
    if ((v22 & 1) == 0 || (v23 = (*(a2 + 56) + 32 * v21), v16 != *v23) || ((v24 = v23[3], v23[1] == v18) ? (v25 = v17 == v23[2]) : (v25 = 0), !v25 && (sub_1E4BF099C() & 1) == 0))
    {

      return 0;
    }

    v9 = sub_1E4B8CF34(v24, v19);

    result = v26;
    v7 = v27;
    if ((v9 & 1) == 0)
    {
      return v20;
    }
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v27 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E4B8CF34(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_1E4B8DDC8(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
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
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E4B8D03C()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B8D078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000014 && 0x80000001E4BF20B0 == a2;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E4BF20D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B8D158(uint64_t a1)
{
  v2 = sub_1E4B8E194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B8D194(uint64_t a1)
{
  v2 = sub_1E4B8E194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagingServiceStatus.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96170, &qword_1E4C0EFB8);
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = *v1;
  v9 = *(v1 + 1);
  v8 = *(v1 + 2);
  v13[0] = *(v1 + 3);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8E194();

  sub_1E4BF0ACC();
  LOBYTE(v15) = v7;
  v16 = v9;
  v17 = v8;
  v18 = 0;
  sub_1E4B8E1E8();
  v11 = v13[1];
  sub_1E4BF093C();

  if (!v11)
  {
    v15 = v13[0];
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96188, &qword_1E4C0EFC0);
    sub_1E4B8E338(&qword_1ECF96190, sub_1E4B8E23C, sub_1E4B8E290);
    sub_1E4BF093C();
  }

  return (*(v14 + 8))(v6, v3);
}

uint64_t MessagingServiceStatus.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF961A8, &qword_1E4C0EFC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8E194();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_1E4B8E2E4();
  sub_1E4BF087C();
  v11 = v17;
  v12 = v19;
  v16 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96188, &qword_1E4C0EFC0);
  v20 = 1;
  sub_1E4B8E338(&qword_1ECF961B8, sub_1E4B8E3C8, sub_1E4B8E41C);
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v13 = v16;
  v14 = v17;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B8D6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4979426574617473 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4B8D764(uint64_t a1)
{
  v2 = sub_1E4B8E470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B8D7A0(uint64_t a1)
{
  v2 = sub_1E4B8E470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessagingServiceStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF961D0, &qword_1E4C0EFD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8E470();

  sub_1E4BF0ACC();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF961E0, &qword_1E4C0EFD8);
  sub_1E4B8E4C4(&qword_1ECF961E8, sub_1E4ADBE98, sub_1E4B8E554);
  sub_1E4BF093C();

  return (*(v4 + 8))(v7, v3);
}

uint64_t MessagingServiceStatus.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF961F8, &qword_1E4C0EFE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B8E470();
  sub_1E4BF0ABC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF961E0, &qword_1E4C0EFD8);
    sub_1E4B8E4C4(&qword_1ECF96200, sub_1E4ADBF38, sub_1E4B8E5A8);
    sub_1E4BF087C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B8DBAC()
{
  result = qword_1ECF96118;
  if (!qword_1ECF96118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96118);
  }

  return result;
}

unint64_t sub_1E4B8DC00()
{
  result = qword_1ECF96120;
  if (!qword_1ECF96120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96120);
  }

  return result;
}

unint64_t sub_1E4B8DC54()
{
  result = qword_1ECF96128;
  if (!qword_1ECF96128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96128);
  }

  return result;
}

unint64_t sub_1E4B8DCA8()
{
  result = qword_1ECF96130;
  if (!qword_1ECF96130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96130);
  }

  return result;
}

unint64_t sub_1E4B8DCFC()
{
  result = qword_1ECF96160;
  if (!qword_1ECF96160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96160);
  }

  return result;
}

uint64_t sub_1E4B8DD50(char a1, uint64_t (*a2)(void, uint64_t))
{
  v4 = *(v2 + 40);
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](a1 & 1);
  v5 = sub_1E4BF0A9C();

  return a2(a1 & 1, v5);
}

unint64_t sub_1E4B8DDC8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](a1);
  v4 = sub_1E4BF0A9C();
  return sub_1E4B8DF7C(a1, v4);
}

unint64_t sub_1E4B8DE30(int a1)
{
  v3 = *(v1 + 40);
  sub_1E4BF0A6C();
  sub_1E4BF0A8C();
  v4 = sub_1E4BF0A9C();
  return sub_1E4B8DFEC(a1, v4);
}

unint64_t sub_1E4B8DE98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();
  v6 = sub_1E4BF0A9C();
  return sub_1E4B8E058(a1, a2, v6);
}

unint64_t sub_1E4B8DF0C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E4B8DF7C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E4B8DFEC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E4B8E058(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1E4BF099C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t _s21TelephonyMessagingKit0B13ServiceStatusV5StateV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = a2[3];
  v5 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v5 && (sub_1E4BF099C() & 1) == 0)
  {
    return 0;
  }

  return sub_1E4B8CF34(v3, v4);
}

unint64_t sub_1E4B8E194()
{
  result = qword_1ECF96178;
  if (!qword_1ECF96178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96178);
  }

  return result;
}

unint64_t sub_1E4B8E1E8()
{
  result = qword_1ECF96180;
  if (!qword_1ECF96180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96180);
  }

  return result;
}

unint64_t sub_1E4B8E23C()
{
  result = qword_1ECF96198;
  if (!qword_1ECF96198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96198);
  }

  return result;
}

unint64_t sub_1E4B8E290()
{
  result = qword_1ECF961A0;
  if (!qword_1ECF961A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF961A0);
  }

  return result;
}

unint64_t sub_1E4B8E2E4()
{
  result = qword_1ECF961B0;
  if (!qword_1ECF961B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF961B0);
  }

  return result;
}

uint64_t sub_1E4B8E338(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF96188, &qword_1E4C0EFC0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4B8E3C8()
{
  result = qword_1ECF961C0;
  if (!qword_1ECF961C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF961C0);
  }

  return result;
}

unint64_t sub_1E4B8E41C()
{
  result = qword_1ECF961C8;
  if (!qword_1ECF961C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF961C8);
  }

  return result;
}

unint64_t sub_1E4B8E470()
{
  result = qword_1ECF961D8;
  if (!qword_1ECF961D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF961D8);
  }

  return result;
}

uint64_t sub_1E4B8E4C4(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF961E0, &qword_1E4C0EFD8);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4B8E554()
{
  result = qword_1ECF961F0;
  if (!qword_1ECF961F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF961F0);
  }

  return result;
}

unint64_t sub_1E4B8E5A8()
{
  result = qword_1ECF96208;
  if (!qword_1ECF96208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96208);
  }

  return result;
}

unint64_t sub_1E4B8E600()
{
  result = qword_1ECF96210;
  if (!qword_1ECF96210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96210);
  }

  return result;
}

unint64_t sub_1E4B8E658()
{
  result = qword_1ECF96218;
  if (!qword_1ECF96218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF96220, &qword_1E4C0F0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96218);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagingServiceStatus.ServiceInfo(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E4B8E78C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E4B8E7D4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1E4B8E898()
{
  result = qword_1ECF96228;
  if (!qword_1ECF96228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96228);
  }

  return result;
}

unint64_t sub_1E4B8E8F0()
{
  result = qword_1ECF96230;
  if (!qword_1ECF96230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96230);
  }

  return result;
}

unint64_t sub_1E4B8E948()
{
  result = qword_1ECF96238;
  if (!qword_1ECF96238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96238);
  }

  return result;
}

unint64_t sub_1E4B8E9A0()
{
  result = qword_1ECF96240;
  if (!qword_1ECF96240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96240);
  }

  return result;
}

unint64_t sub_1E4B8E9F8()
{
  result = qword_1ECF96248;
  if (!qword_1ECF96248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96248);
  }

  return result;
}

unint64_t sub_1E4B8EA50()
{
  result = qword_1ECF96250;
  if (!qword_1ECF96250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96250);
  }

  return result;
}

unint64_t sub_1E4B8EAA8()
{
  result = qword_1ECF96258;
  if (!qword_1ECF96258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96258);
  }

  return result;
}

unint64_t sub_1E4B8EB00()
{
  result = qword_1ECF96260;
  if (!qword_1ECF96260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96260);
  }

  return result;
}

unint64_t sub_1E4B8EB58()
{
  result = qword_1ECF96268;
  if (!qword_1ECF96268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96268);
  }

  return result;
}

unint64_t sub_1E4B8EBB0()
{
  result = qword_1ECF96270;
  if (!qword_1ECF96270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96270);
  }

  return result;
}

unint64_t sub_1E4B8EC08()
{
  result = qword_1ECF96278;
  if (!qword_1ECF96278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96278);
  }

  return result;
}

unint64_t sub_1E4B8EC60()
{
  result = qword_1ECF96280;
  if (!qword_1ECF96280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96280);
  }

  return result;
}

unint64_t sub_1E4B8ECB8()
{
  result = qword_1ECF96288;
  if (!qword_1ECF96288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96288);
  }

  return result;
}

unint64_t sub_1E4B8ED10()
{
  result = qword_1ECF96290;
  if (!qword_1ECF96290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96290);
  }

  return result;
}

unint64_t sub_1E4B8ED68()
{
  result = qword_1ECF96298;
  if (!qword_1ECF96298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96298);
  }

  return result;
}

unint64_t sub_1E4B8EDC0()
{
  result = qword_1ECF962A0;
  if (!qword_1ECF962A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF962A0);
  }

  return result;
}

unint64_t sub_1E4B8EE18()
{
  result = qword_1ECF962A8;
  if (!qword_1ECF962A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF962A8);
  }

  return result;
}

unint64_t sub_1E4B8EE70()
{
  result = qword_1ECF962B0;
  if (!qword_1ECF962B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF962B0);
  }

  return result;
}

uint64_t sub_1E4B8EEC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 7564659 && a2 == 0xE300000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7564653 && a2 == 0xE300000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7562098 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4B8EFD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E4B8F014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B8F05C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1E4B8F0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  sub_1E4B14334(a3, (a4 + 2));
  type metadata accessor for ExpiringArray.Wrapped();
  v6 = sub_1E4BF012C();
  result = __swift_destroy_boxed_opaque_existential_1(a3);
  a4[7] = v6;
  return result;
}

uint64_t sub_1E4B8F148(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1E4BF031C();
  if (!v26)
  {
    return sub_1E4BF012C();
  }

  v48 = v26;
  v52 = sub_1E4BF076C();
  v39 = sub_1E4BF077C();
  sub_1E4BF072C();
  result = sub_1E4BF02EC();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1E4BF03BC();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1E4BF075C();
      result = sub_1E4BF034C();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4B8F568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1E4BEFABC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E4BEFAAC();
  v18 = *(a4 + 16);
  v19 = a5;
  v20 = a6;
  v21 = v13;
  v14 = type metadata accessor for ExpiringArray.Wrapped();
  v22 = sub_1E4B8F148(sub_1E4B917FC, v17, a5, v14, MEMORY[0x1E69E73E0], a6, MEMORY[0x1E69E7410], v15);
  sub_1E4BF017C();
  swift_getWitnessTable();
  sub_1E4BF00FC();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1E4B8F708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E4BEFABC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1, a3);
  (*(v9 + 16))(v13, a2, v8);
  return sub_1E4B8F890(v16, v13, a3, a4);
}

uint64_t sub_1E4B8F890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for ExpiringArray.Wrapped() + 28);
  v7 = sub_1E4BEFABC();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4 + v6, a2, v7);
}

uint64_t sub_1E4B8F948@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for ExpiringArray.Wrapped();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v2 + 56);
  sub_1E4BF018C();
  (*(*(v4 - 8) + 16))(a2, v9, v4);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E4B8FA64(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(a1 + 16);
  type metadata accessor for ExpiringArray.Wrapped();

  return sub_1E4BF015C();
}

uint64_t sub_1E4B8FAA8@<X0>(void *a1@<X8>)
{
  v2 = sub_1E4BF0AFC();
  v5[3] = &type metadata for TimeProvider;
  v5[4] = &off_1F5EB9B80;
  return sub_1E4B8F0E0(v2, v3, v5, a1);
}

uint64_t sub_1E4B8FB18(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1E4B91540(a1, *a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void (*sub_1E4B8FB88(void *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = v3;
  v8[1] = a3;
  v10 = *(a3 + 16);
  v8[2] = v10;
  v11 = *(v10 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v12);
    v13 = malloc(v12);
  }

  v14 = v13;
  v15 = *a2;
  v9[5] = v14;
  v9[6] = v15;
  sub_1E4B8F948(a3, v14);
  return sub_1E4B8FCA4;
}

void sub_1E4B8FCA4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v3, v7);
    sub_1E4B91540(v5, v4, v8);
    v10 = *(v6 + 8);
    v10(v5, v7);
    v10(v3, v7);
  }

  else
  {
    sub_1E4B91540((*a1)[5], v4, v8);
    (*(v6 + 8))(v3, v7);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_1E4B8FD9C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_1E4B9174C(a1, &v7, a3, a4);
  swift_getWitnessTable();
  v5 = sub_1E4BF0A5C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

void (*sub_1E4B8FE3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_1E4B8FF14(v8, a2, a3, a4);
  return sub_1E4B8FECC;
}

void sub_1E4B8FECC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1E4B8FF14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = *(a4 + 8);
  v13 = sub_1E4BF0A5C();
  v11[3] = v13;
  v14 = *(v13 - 8);
  v11[4] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v17 = v16;
  v11[6] = v16;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = sub_1E4BF049C();
  v11[7] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v11[8] = v19;
  if (v9)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v19 + 64));
  }

  v11[9] = v21;
  (*(v20 + 16))();
  sub_1E4B90838(a2, a3, a4, v17);
  return sub_1E4B90138;
}

void sub_1E4B90138(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v14 = (*a1)[7];
  v9 = (*a1)[2];
  v8 = (*a1)[3];
  v11 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    sub_1E4BF095C();
    v12 = *(v4 + 8);
    v12(v3, v8);
    (*(v6 + 8))(v5, v14);
    v12(v7, v8);
  }

  else
  {
    v13 = v2[3];
    swift_getWitnessTable();
    sub_1E4BF095C();
    (*(v6 + 8))(v5, v14);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t sub_1E4B903B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1E4B8F568(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_1E4B90534(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

uint64_t sub_1E4B905BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E4B8FA64(a1);
  *a2 = result;
  return result;
}

void (*sub_1E4B905E4(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1E4B906B4(v6, *a2, a3);
  return sub_1E4B9066C;
}

void sub_1E4B9066C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1E4B906B4(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  v7 = *(v6 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  a1[2] = v8;
  sub_1E4B8F948(a3, v8);
  return sub_1E4B90784;
}

void sub_1E4B90784(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1E4B907D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1E4B90838(a1, a2, WitnessTable, a3);
}

uint64_t sub_1E4B90838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a1;
  v50 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  v44 = *(AssociatedTypeWitness - 8);
  v14 = *(v44 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  swift_getAssociatedConformanceWitness();
  v47 = sub_1E4BF049C();
  v45 = *(v47 - 8);
  v20 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v22 = &v39 - v21;
  sub_1E4BF02EC();
  v51 = v4;
  v48 = v6;
  v49 = a2;
  sub_1E4BF033C();
  result = sub_1E4BEFE1C();
  if (result)
  {
    v24 = v44;
    v25 = *(v44 + 32);
    v25(v13, v19, AssociatedTypeWitness);
    v26 = TupleTypeMetadata2;
    v25(&v13[*(TupleTypeMetadata2 + 48)], v17, AssociatedTypeWitness);
    v27 = v25;
    v28 = v46;
    v29 = v42;
    (*(v46 + 16))(v42, v13, v26);
    v40 = *(v26 + 48);
    v27(v22, v29, AssociatedTypeWitness);
    v41 = v27;
    v30 = *(v24 + 8);
    v30(&v29[v40], AssociatedTypeWitness);
    (*(v28 + 32))(v29, v13, v26);
    v31 = v47;
    v27(&v22[*(v47 + 36)], &v29[*(v26 + 48)], AssociatedTypeWitness);
    v30(v29, AssociatedTypeWitness);
    v32 = v51;
    v33 = v52;
    v34 = v49;
    sub_1E4BF030C();
    v35 = v45;
    (*(v45 + 8))(v22, v31);
    v36 = sub_1E4BF0A5C();
    v37 = v50;
    (*(*(v34 - 8) + 16))(&v50[*(v36 + 40)], v32, v34);
    (*(v35 + 16))(v22, v33, v31);
    v38 = v41;
    v41(v37, v22, AssociatedTypeWitness);
    return v38(&v37[*(v36 + 36)], &v22[*(v31 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4B90CC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

uint64_t sub_1E4B90DC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69820](a1, a2, WitnessTable, v5);
}

uint64_t sub_1E4B90E48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

__n128 sub_1E4B90EC0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_1E4B90ED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1E4B90F2C(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_1E4B91470();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

unint64_t sub_1E4B9103C()
{
  result = qword_1ECF962C8;
  if (!qword_1ECF962C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF962C8);
  }

  return result;
}

uint64_t sub_1E4B9125C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF962C0, &qword_1E4C0FA88);
    sub_1E4B9103C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4B91338(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1E4B9138C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1E4BEFE1C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4B91474()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1E4BEFE1C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_1E4BF049C() + 36);
  result = sub_1E4BEFE1C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4B91540(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E4BEFABC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ExpiringArray.Wrapped();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v25 - v21;
  (*(v14 + 16))(v17, a1, v13);
  sub_1E4BEFAAC();
  sub_1E4B8F890(v17, v12, v13, v22);
  sub_1E4BF017C();
  sub_1E4BF011C();
  v23 = *(v4 + 56);
  sub_1E4B91338(a2, v23);
  return (*(v19 + 40))(v23 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * a2, v22, v18);
}

uint64_t sub_1E4B9174C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  sub_1E4BF0A5C();
  swift_getWitnessTable();

  return sub_1E4BF095C();
}

uint64_t sub_1E4B917FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_1E4B8F708(a1, v2[5], v2[2], a2);
}

uint64_t sub_1E4B91828(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1E4BEFABC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4B918B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1E4BEFABC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1E4B91B14(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1E4BEFABC() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t RCSService.Configuration.chatRevokeTimeout.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t RCSService.Configuration.maximumTextMessageSize.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for RCSService.Configuration(0);
  sub_1E4B920AC(v1 + *(v12 + 20), v11);
  v13 = 1;
  if ((*(v4 + 48))(v11, 1, v3) != 1)
  {
    v14 = *(v4 + 32);
    v14(v7, v11, v3);
    if (qword_1ECF92400 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v3, qword_1ECFD4440);
    sub_1E4AF19DC(&qword_1ECF94610);
    if (sub_1E4BEFE0C())
    {
      (*(v4 + 16))(a1, v15, v3);
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v14(a1, v7, v3);
    }

    v13 = 0;
  }

  return (*(v4 + 56))(a1, v13, 1, v3);
}

uint64_t sub_1E4B920AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RCSService.Configuration.maximumGroupSize.getter()
{
  v1 = v0 + *(type metadata accessor for RCSService.Configuration(0) + 24);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v1 < 100;
  v5 = 100;
  if (v4)
  {
    v5 = v2;
  }

  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t RCSService.Configuration.maximumFileTransferSize.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for RCSService.Configuration(0);
  sub_1E4B920AC(v1 + *(v12 + 28), v11);
  v13 = 1;
  if ((*(v4 + 48))(v11, 1, v3) != 1)
  {
    v14 = *(v4 + 32);
    v14(v7, v11, v3);
    if (qword_1ECF923F8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v3, qword_1ECFD4428);
    sub_1E4AF19DC(&qword_1ECF94610);
    if (sub_1E4BEFE0C())
    {
      (*(v4 + 16))(a1, v15, v3);
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v14(a1, v7, v3);
    }

    v13 = 0;
  }

  return (*(v4 + 56))(a1, v13, 1, v3);
}

uint64_t RCSService.Configuration.fileTransferWarningSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RCSService.Configuration(0) + 32);

  return sub_1E4B920AC(v3, a1);
}

uint64_t sub_1E4B92480(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = [objc_opt_self() *a3];
  sub_1E4AF15E0();
  return sub_1E4BEF97C();
}

uint64_t sub_1E4B92524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4B925D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(void))
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  v17 = a11(0);
  sub_1E4B92524(a4, a9 + v17[5]);
  v18 = a9 + v17[6];
  *v18 = a5;
  *(v18 + 8) = a6 & 1;
  sub_1E4B92524(a7, a9 + v17[7]);
  v19 = a9 + v17[8];

  return sub_1E4B92524(a8, v19);
}

unint64_t sub_1E4B926AC()
{
  v1 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000017;
  }

  v2 = 0xD000000000000016;
  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B92734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B94638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B9275C(uint64_t a1)
{
  v2 = sub_1E4B92A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B92798(uint64_t a1)
{
  v2 = sub_1E4B92A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Configuration.CodableRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96360, &qword_1E4C0FD60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B92A50();
  sub_1E4BF0ACC();
  v11 = *(v3 + 16);
  v20 = *v3;
  v21 = v11;
  v22 = 0;
  sub_1E4BF08EC();
  if (!v2)
  {
    v12 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
    v13 = v12[5];
    LOBYTE(v20) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
    sub_1E4AF19DC(&qword_1ECF92D88);
    sub_1E4BF08EC();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = *(v14 + 8);
    LOBYTE(v20) = 2;
    sub_1E4BF08DC();
    v17 = v12[7];
    LOBYTE(v20) = 3;
    sub_1E4BF08EC();
    v18 = v12[8];
    LOBYTE(v20) = 4;
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E4B92A50()
{
  result = qword_1ECF96368;
  if (!qword_1ECF96368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96368);
  }

  return result;
}

uint64_t RCSService.Configuration.CodableRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v35 = &v31 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96370, &qword_1E4C0FD68);
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B92A50();
  v20 = v14;
  v21 = v38;
  sub_1E4BF0ABC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v10;
  v38 = a1;
  v32 = v15;
  v23 = v36;
  v24 = v37;
  v41 = 0;
  sub_1E4BF082C();
  v25 = v40;
  *v18 = v39;
  v18[16] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  LOBYTE(v39) = 1;
  sub_1E4AF19DC(&qword_1ECF92D98);
  sub_1E4BF082C();
  sub_1E4B92524(v22, &v18[v32[5]]);
  LOBYTE(v39) = 2;
  v26 = sub_1E4BF081C();
  v27 = &v18[v32[6]];
  *v27 = v26;
  v27[8] = v28 & 1;
  LOBYTE(v39) = 3;
  sub_1E4BF082C();
  sub_1E4B92524(v35, &v18[v32[7]]);
  LOBYTE(v39) = 4;
  v29 = v34;
  sub_1E4BF082C();
  (*(v23 + 8))(v20, v24);
  sub_1E4B92524(v29, &v18[v32[8]]);
  sub_1E4B92FB8(v18, v33);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_1E4B93190(v18, type metadata accessor for RCSService.Configuration.CodableRepresentation);
}

uint64_t sub_1E4B92F50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4B92FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RCSConfigurationRequest.Reply.init(config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  RCSService.Configuration.maximumTextMessageSize.getter(&v21 - v6);
  v11 = type metadata accessor for RCSService.Configuration(0);
  v12 = a1 + *(v11 + 24);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *v12 < 100;
  v16 = 100;
  if (v15)
  {
    v16 = v13;
  }

  if (v14)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  v18 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  RCSService.Configuration.maximumFileTransferSize.getter((a2 + v18[7]));
  sub_1E4B920AC(a1 + *(v11 + 32), a2 + v18[8]);
  sub_1E4B93190(a1, type metadata accessor for RCSService.Configuration);
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  result = sub_1E4B92524(v7, a2 + v18[5]);
  v20 = a2 + v18[6];
  *v20 = v17;
  *(v20 + 8) = v14;
  return result;
}

uint64_t sub_1E4B93190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4B93208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6769666E6F635FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4B93290(uint64_t a1)
{
  v2 = sub_1E4B93480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B932CC(uint64_t a1)
{
  v2 = sub_1E4B93480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSConfigurationRequest.Reply.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96378, &qword_1E4C0FD70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B93480();
  sub_1E4BF0ACC();
  type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  sub_1E4B93768(&qword_1ECF96388, type metadata accessor for RCSService.Configuration.CodableRepresentation);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E4B93480()
{
  result = qword_1ECF96380;
  if (!qword_1ECF96380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96380);
  }

  return result;
}

uint64_t RCSConfigurationRequest.Reply.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96390, &qword_1E4C0FD78);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RCSConfigurationRequest.Reply(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B93480();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v16 = v19;
    sub_1E4B93768(&qword_1ECF96398, type metadata accessor for RCSService.Configuration.CodableRepresentation);
    v17 = v21;
    sub_1E4BF087C();
    (*(v20 + 8))(v10, v7);
    sub_1E4B937B0(v17, v14, type metadata accessor for RCSService.Configuration.CodableRepresentation);
    sub_1E4B937B0(v14, v16, type metadata accessor for RCSConfigurationRequest.Reply);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B93768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4B937B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B93830(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96378, &qword_1E4C0FD70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B93480();
  sub_1E4BF0ACC();
  type metadata accessor for RCSService.Configuration.CodableRepresentation(0);
  sub_1E4B93768(&qword_1ECF96388, type metadata accessor for RCSService.Configuration.CodableRepresentation);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E4B939EC(uint64_t a1)
{
  v2 = sub_1E4B93BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B93A28(uint64_t a1)
{
  v2 = sub_1E4B93BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSConfigurationRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF963A0, &qword_1E4C0FD80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B93BB0();
  sub_1E4BF0ACC();
  v12 = v8;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E4B93BB0()
{
  result = qword_1ECF963A8;
  if (!qword_1ECF963A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF963A8);
  }

  return result;
}

uint64_t RCSConfigurationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF963B0, &qword_1E4C0FD88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B93BB0();
  sub_1E4BF0ABC();
  if (!v2)
  {
    sub_1E4ADBF38();
    sub_1E4BF087C();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B93E00(uint64_t a1)
{
  result = sub_1E4B93E28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B93E28()
{
  result = qword_1EE2BDB20;
  if (!qword_1EE2BDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDB20);
  }

  return result;
}

unint64_t sub_1E4B93F18(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B93F48();
  result = sub_1E4B93F9C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B93F48()
{
  result = qword_1EE2BDB28;
  if (!qword_1EE2BDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDB28);
  }

  return result;
}

unint64_t sub_1E4B93F9C()
{
  result = qword_1EE2BDB30;
  if (!qword_1EE2BDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDB30);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 20);

  return v7(v8, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 20);

  return v8(v9, a2, a2, v7);
}

void sub_1E4B94184()
{
  sub_1E4AE5B08(319, &qword_1EE2BD700);
  if (v0 <= 0x3F)
  {
    sub_1E4AF1EBC();
    if (v1 <= 0x3F)
    {
      sub_1E4AE5B08(319, &qword_1ECF92DD8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4B94284()
{
  result = type metadata accessor for RCSService.Configuration.CodableRepresentation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4B94324()
{
  result = qword_1ECF963F8;
  if (!qword_1ECF963F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF963F8);
  }

  return result;
}

unint64_t sub_1E4B9437C()
{
  result = qword_1ECF96400;
  if (!qword_1ECF96400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96400);
  }

  return result;
}

unint64_t sub_1E4B943D4()
{
  result = qword_1ECF96408;
  if (!qword_1ECF96408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96408);
  }

  return result;
}

unint64_t sub_1E4B9442C()
{
  result = qword_1ECF96410;
  if (!qword_1ECF96410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96410);
  }

  return result;
}

unint64_t sub_1E4B94484()
{
  result = qword_1ECF96418;
  if (!qword_1ECF96418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96418);
  }

  return result;
}

unint64_t sub_1E4B944DC()
{
  result = qword_1ECF96420;
  if (!qword_1ECF96420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96420);
  }

  return result;
}

unint64_t sub_1E4B94534()
{
  result = qword_1ECF96428;
  if (!qword_1ECF96428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96428);
  }

  return result;
}

unint64_t sub_1E4B9458C()
{
  result = qword_1ECF96430;
  if (!qword_1ECF96430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96430);
  }

  return result;
}

unint64_t sub_1E4B945E4()
{
  result = qword_1ECF96438;
  if (!qword_1ECF96438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96438);
  }

  return result;
}

uint64_t sub_1E4B94638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x80000001E4BF20F0 == a2;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E4BF2110 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF2130 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E4BF2150 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E4BF2170 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4B947FC(uint64_t a1)
{
  v2 = sub_1E4B94988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B94838(uint64_t a1)
{
  v2 = sub_1E4B94988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CarrierMessagingCapabilityRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96440, &qword_1E4C10280);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B94988();
  sub_1E4BF0ACC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E4B94988()
{
  result = qword_1ECF96448;
  if (!qword_1ECF96448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96448);
  }

  return result;
}

unint64_t sub_1E4B94A04(uint64_t a1)
{
  result = sub_1E4B39064();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B94A50(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B94A80();
  result = sub_1E4B94AD4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B94A80()
{
  result = qword_1EE2BECA8;
  if (!qword_1EE2BECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BECA8);
  }

  return result;
}

unint64_t sub_1E4B94AD4()
{
  result = qword_1EE2BECB0;
  if (!qword_1EE2BECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BECB0);
  }

  return result;
}

uint64_t sub_1E4B94B28(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96440, &qword_1E4C10280);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B94988();
  sub_1E4BF0ACC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E4B94C60()
{
  result = qword_1ECF96450;
  if (!qword_1ECF96450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96450);
  }

  return result;
}

unint64_t sub_1E4B94CB8()
{
  result = qword_1ECF96458;
  if (!qword_1ECF96458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96458);
  }

  return result;
}

uint64_t sub_1E4B94D0C()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF96460);
  v1 = __swift_project_value_buffer(v0, qword_1ECF96460);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_1E4B94DD4()
{
  v1 = v0[10];
  os_unfair_lock_lock(v1 + 10);
  sub_1E4B95534(&v1[4]);
  os_unfair_lock_unlock(v1 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[8];

  v3 = v0[9];

  return v0;
}

uint64_t sub_1E4B94E44()
{
  sub_1E4B94DD4();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t get_enum_tag_for_layout_string_s5Int32VIeghy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E4B94EB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1E4B94F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1E4B94F74(int *a1, void *a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  if (*a1 == -1)
  {
    out_token = -1;
    v9 = a2[7];
    v10 = a2[8];
    v11 = a2[9];
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1E4B955A4;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E4B95550;
    aBlock[3] = &block_descriptor_0;
    v13 = _Block_copy(aBlock);
    swift_retain_n();

    v14 = sub_1E4BEFF1C();
    v15 = notify_register_dispatch((v14 + 32), &out_token, v11, v13);

    _Block_release(v13);

    if (v15)
    {
      if (qword_1ECF92408 != -1)
      {
        swift_once();
      }

      v16 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v16, qword_1ECF96460);
      v17 = sub_1E4BEFB5C();
      v18 = sub_1E4BF04DC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 67109120;
        *(v19 + 4) = v15;
        _os_log_impl(&dword_1E4AD3000, v17, v18, "Failed to register for daemon ready notification: %u", v19, 8u);
        MEMORY[0x1E6921800](v19, -1, -1);
      }

      sub_1E4B955C4();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      *a1 = out_token;
    }
  }

  else
  {
    if (qword_1ECF92408 != -1)
    {
      swift_once();
    }

    v3 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v3, qword_1ECF96460);

    v4 = sub_1E4BEFB5C();
    v5 = sub_1E4BF04BC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1E4B30548(a2[7], a2[8], aBlock);
      _os_log_impl(&dword_1E4AD3000, v4, v5, "Already registered for: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1E6921800](v7, -1, -1);
      MEMORY[0x1E6921800](v6, -1, -1);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1E4B952EC(int a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E4B9534C(a1);
  }

  return result;
}

void sub_1E4B9534C(int a1)
{
  v3 = *(v1 + 80);
  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E4B95618;
  }

  else
  {
    v7 = 0;
  }

  sub_1E4AD650C(v4);
  os_unfair_lock_unlock((v3 + 40));
  if (v4)
  {
    v8 = a1;

    v7(&v8);
    sub_1E4AD651C(v7);
    sub_1E4AD651C(v7);
  }
}

uint64_t sub_1E4B9541C(uint64_t result)
{
  v1 = *result;
  if (*result != -1)
  {
    v2 = result;
    v3 = *(result + 16);
    sub_1E4AD651C(*(result + 8));
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    if (qword_1ECF92408 != -1)
    {
      swift_once();
    }

    v4 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v4, qword_1ECF96460);
    v5 = sub_1E4BEFB5C();
    v6 = sub_1E4BF04BC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E4AD3000, v5, v6, "Deregistering for daemon ready notification", v7, 2u);
      MEMORY[0x1E6921800](v7, -1, -1);
    }

    result = notify_cancel(v1);
    *v2 = -1;
  }

  return result;
}

uint64_t sub_1E4B95550(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E4B955C4()
{
  result = qword_1ECF96478;
  if (!qword_1ECF96478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96478);
  }

  return result;
}

uint64_t sub_1E4B95618(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_1E4B95658()
{
  result = qword_1ECF96480;
  if (!qword_1ECF96480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF96480);
  }

  return result;
}

uint64_t RCSRevokeMessageRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

uint64_t RCSRevokeMessageRequest.messageID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
}

uint64_t RCSRevokeMessageRequest.messageID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t RCSRevokeMessageRequest.init(request:messageID:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = a1[40];
  v11 = *(a1 + 6);
  v10 = *(a1 + 7);
  v12 = *a2;
  v14 = a2[1];
  sub_1E4ADD6D8(v5, v6, v7, v8, v9);

  sub_1E4ADD764(v5, v6, v7, v8, v9);

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = v11;
  *(a3 + 56) = v10;
  *(a3 + 64) = v12;
  *(a3 + 72) = v14;
  return result;
}

uint64_t sub_1E4B95840()
{
  if (*v0)
  {
    result = 0x496567617373656DLL;
  }

  else
  {
    result = 0x747365757165725FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E4B95880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747365757165725FLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4B95964(uint64_t a1)
{
  v2 = sub_1E4B965C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B959A0(uint64_t a1)
{
  v2 = sub_1E4B965C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSRevokeMessageRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF96488, &qword_1E4C10520);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = v1[1];
  v24 = *v1;
  v25 = v9;
  v10 = v1[3];
  v26 = v1[2];
  v27 = v10;
  v11 = *(v1 + 9);
  v14 = *(v1 + 8);
  v28 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B96568(&v24, &v20);
  sub_1E4B965C4();
  sub_1E4BF0ACC();
  v20 = v24;
  v21 = v25;
  v22 = v26;
  v23 = v27;
  v19 = 0;
  sub_1E4B96618();
  sub_1E4BF093C();
  v18[0] = v20;
  v18[1] = v21;
  v18[2] = v22;
  v18[3] = v23;
  sub_1E4B9666C(v18);
  if (!v2)
  {
    v16 = v14;
    v17 = v28;
    v15 = 1;
    sub_1E4AE2DEC();

    sub_1E4BF093C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t RCSRevokeMessageRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF964A0, &qword_1E4C10528);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B965C4();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v17;
  v31 = 0;
  sub_1E4B966C0();
  sub_1E4BF087C();
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = 1;
  sub_1E4AE30EC();
  sub_1E4BF087C();
  (*(v5 + 8))(v8, v4);
  v11 = v21;
  v12 = v26;
  v13 = v27;
  v18[0] = v26;
  v18[1] = v27;
  v14 = v29;
  v18[2] = v28;
  v18[3] = v29;
  v19 = v21;
  v10[2] = v28;
  v10[3] = v14;
  *v10 = v12;
  v10[1] = v13;
  v10[4] = v19;
  sub_1E4B96714(v18, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v20[0] = v26;
  v20[1] = v27;
  v20[2] = v28;
  v20[3] = v29;
  v20[4] = v11;
  return sub_1E4B9674C(v20);
}

uint64_t RCSRevokeMessageResponseNotification.messageID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

unint64_t sub_1E4B95F40()
{
  v1 = 0x496567617373656DLL;
  v2 = 0x6B6F766552646964;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1E4B95FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B96DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B95FE8(uint64_t a1)
{
  v2 = sub_1E4B9677C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B96024(uint64_t a1)
{
  v2 = sub_1E4B9677C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSRevokeMessageResponseNotification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF964B0, &qword_1E4C10530);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v16 = *(v1 + 1);
  v20 = v1[24];
  v15 = v1[25];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B9677C();
  sub_1E4BF0ACC();
  LOBYTE(v18) = v8;
  v21 = 0;
  sub_1E4ADBE98();
  v11 = v17;
  sub_1E4BF093C();
  if (!v11)
  {
    v12 = v15;
    v18 = v16;
    v19 = v9;
    v21 = 1;
    sub_1E4AE2DEC();

    sub_1E4BF093C();

    LOBYTE(v18) = 2;
    sub_1E4BF090C();
    LOBYTE(v18) = v12;
    v21 = 3;
    sub_1E4B1B740();
    sub_1E4BF08EC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RCSRevokeMessageResponseNotification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF964C0, &qword_1E4C10538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B9677C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v11 = v20;
  v23 = 1;
  sub_1E4AE30EC();
  sub_1E4BF087C();
  v12 = v20;
  v19 = v21;
  LOBYTE(v20) = 2;
  v13 = sub_1E4BF084C();
  v18 = v12;
  v22 = v13;
  v23 = 3;
  sub_1E4B1B7E8();
  sub_1E4BF082C();
  v15 = v22 & 1;
  (*(v6 + 8))(v9, v5);
  v16 = v20;
  *a2 = v11;
  v17 = v19;
  *(a2 + 8) = v18;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;
  *(a2 + 25) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}