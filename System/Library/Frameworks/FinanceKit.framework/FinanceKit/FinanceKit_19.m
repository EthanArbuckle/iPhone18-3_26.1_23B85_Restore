void sub_1B735880C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ManagedOrderReturnLabel();
  v6 = [swift_getObjCClassFromMetadata() fetchRequest];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 16) = xmmword_1B78123D0;
  *(v7 + 56) = v8;
  *(v7 + 32) = 1701667182;
  *(v7 + 40) = 0xE400000000000000;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  *(v7 + 64) = a1;
  *(v7 + 120) = v8;
  *(v7 + 88) = v9;
  *(v7 + 96) = 0xD000000000000015;
  *(v7 + 104) = 0x80000001B7873E70;
  v34 = a1;

  v10 = [v3 objectID];
  *(v7 + 152) = sub_1B723C524();
  *(v7 + 128) = v10;
  v11 = v6;
  v12 = sub_1B7800838();
  v13 = sub_1B7800C18();

  v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:v13];

  [v6 setPredicate_];
  v15 = [v3 managedObjectContext];
  if (!v15)
  {
    sub_1B7359AA4();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    goto LABEL_5;
  }

  v16 = v15;
  v17 = sub_1B7801498();
  if (v4)
  {

    v11 = v14;
    v14 = v16;
LABEL_5:

    return;
  }

  v32 = v14;
  v33 = v11;
  v19 = v17;

  v20 = sub_1B7359174(v19, a3, sub_1B7249E5C);

  v37 = MEMORY[0x1E69E7CC0];
  v21 = (v20 + 64);
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  if (!v24)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_9:
    while (1)
    {
      v24 &= v24 - 1;

      v28 = sub_1B7358CA4(v27, a2);

      if (v28)
      {
        break;
      }

      if (!v24)
      {
        goto LABEL_11;
      }
    }

    MEMORY[0x1B8CA4F20](v29);
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
  }

  while (v24);
LABEL_11:
  while (1)
  {
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v30 >= v25)
    {

      v37 = sub_1B725F314(v31);
      sub_1B735A79C(&v37, a3, v34, sub_1B77E6DD4, type metadata accessor for ManagedOrderReturnLabel);

      return;
    }

    v24 = v21[v30];
    ++v26;
    if (v24)
    {
      v26 = v30;
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);
}

id sub_1B7358CA4(unint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v5 = a2 + 40;
  v15 = a2 + 40;
LABEL_2:
  v6 = v5 + 16 * v3;
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      if (!sub_1B7801958())
      {
        goto LABEL_19;
      }

LABEL_12:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1B8CA5DC0](0, v6);
        goto LABEL_15;
      }

      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v6 + 32);
LABEL_15:
        v13 = v12;

        return v13;
      }

      __break(1u);
      goto LABEL_27;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_17;
    }

    v8 = *(v6 - 8);
    v9 = *v6;

    v10 = sub_1B7358EB4(v8, v9, a1);

    ++v3;
    v6 += 16;
    if (v10)
    {
      MEMORY[0x1B8CA4F20](v11);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
      v16 = v17;
      v3 = v7;
      v5 = v15;
      goto LABEL_2;
    }
  }

  v6 = v16;
  if (v16 >> 62)
  {
    goto LABEL_18;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_19:

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_27:
  result = sub_1B7801958();
  if (!result)
  {
    return result;
  }

LABEL_21:
  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1B8CA5DC0](0, a1);
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(a1 + 32);
  }

  __break(1u);
  return result;
}

id sub_1B7358EB4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v4 = sub_1B7801958();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B8CA5DC0](i, a3);
          v7 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_13:
            __break(1u);
            return 0;
          }
        }

        else
        {
          if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = *(a3 + 8 * i + 32);
          v7 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_13;
          }
        }

        v8 = v6;
        swift_getAtKeyPath();

        if (v11)
        {
          sub_1B7205210();
          v9 = sub_1B78017F8();

          if (!v9)
          {
            return v8;
          }
        }

        if (v7 == v4)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

BOOL sub_1B735901C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  swift_getAtKeyPath();

  v7 = a2;
  swift_getAtKeyPath();

  v8 = *(a4 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (a4 + 40);
    while (1)
    {
      v11 = *(v10 - 1) == v16 && *v10 == v17;
      if (v11 || (sub_1B78020F8() & 1) != 0)
      {
        break;
      }

      ++v9;
      v10 += 2;
      if (v8 == v9)
      {
        goto LABEL_9;
      }
    }

    v13 = 0;
    v14 = (a4 + 40);
    while (1)
    {
      v15 = *(v14 - 1) == v16 && *v14 == v17;
      if (v15 || (sub_1B78020F8() & 1) != 0)
      {
        break;
      }

      ++v13;
      v14 += 2;
      if (v8 == v13)
      {
        goto LABEL_10;
      }
    }

    return v9 < v13;
  }

  else
  {
LABEL_9:

LABEL_10:

    return 0;
  }
}

uint64_t sub_1B7359174(unint64_t a1, uint64_t a2, void (*a3)(void))
{
  v29 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_24:
    v4 = sub_1B7801958();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1B8CA5DC0](v5, a1);
          v10 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v9 = *(a1 + 8 * v5 + 32);
          v10 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v26 = v10;
        v11 = v9;
        swift_getAtKeyPath();

        v13 = sub_1B724548C(v27, v28);
        v14 = v6[2];
        v15 = (v12 & 1) == 0;
        if (__OFADD__(v14, v15))
        {
          goto LABEL_22;
        }

        v16 = v12;
        if (v6[3] < v14 + v15)
        {
          a3();
          v6 = v29;
          v17 = sub_1B724548C(v27, v28);
          if ((v16 & 1) != (v18 & 1))
          {

            result = sub_1B78021C8();
            __break(1u);
            return result;
          }

          v13 = v17;
        }

        if (v16)
        {

          v8 = (v6[7] + 8 * v13);
          MEMORY[0x1B8CA4F20](v7);
          if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B7800C58();
          }

          sub_1B7800C88();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1B780B190;
          *(v19 + 32) = v11;
          v6[(v13 >> 6) + 8] |= 1 << v13;
          v20 = (v6[6] + 16 * v13);
          *v20 = v27;
          v20[1] = v28;
          *(v6[7] + 8 * v13) = v19;
          v21 = v6[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_23;
          }

          v6[2] = v23;
        }

        ++v5;
        if (v26 == v4)
        {
          return v6;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1B7359414(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9927D0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v60 - v11);
  v71 = sub_1B77FF4F8();
  v13 = *(v71 - 8);
  v14 = MEMORY[0x1EEE9AC00](v71);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v60 - v17);
  v19 = type metadata accessor for LocalizedURLMap();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1E69E7CC0];
  sub_1B72CDE28(a3, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v68 = v12;
    v72 = v16;
    v65 = a4;
    v66 = a1;
    v22 = 0;
    v23 = *v21;
    v24 = *(*v21 + 64);
    v61 = *v21 + 64;
    v64 = v23;
    v25 = 1 << *(v23 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v13;
    v13 = v26 & v24;
    v28 = ((v25 + 63) >> 6);
    v62 = v27 + 16;
    v63 = v27;
    v70 = (v27 + 32);
    v60 = MEMORY[0x1E69E7CC0];
    v67 = a2;
    v29 = v71;
    while (v13)
    {
      v30 = v22;
      v31 = v72;
LABEL_15:
      v35 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v36 = v35 | (v30 << 6);
      v37 = v63;
      v38 = (*(v64 + 48) + 16 * v36);
      v40 = *v38;
      v39 = v38[1];
      (*(v63 + 16))(v31, *(v64 + 56) + *(v63 + 72) * v36, v29);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901D0);
      v42 = *(v41 + 48);
      v43 = v69;
      *v69 = v40;
      *(v43 + 1) = v39;
      v34 = v43;
      (*(v37 + 32))(&v43[v42], v31, v29);
      (*(*(v41 - 8) + 56))(v34, 0, 1, v41);

LABEL_16:
      v44 = v68;
      sub_1B7359A34(v34, v68);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901D0);
      if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
      {

        return v60;
      }

      v46 = *v44;
      v47 = v44[1];
      v48 = *(v45 + 48);
      type metadata accessor for ManagedOrderReceipt();
      v49 = v44 + v48;
      v50 = v72;
      (*v70)(v72, v49, v71);
      v51 = v67;

      v52 = v65;
      v53 = ManagedOrderReceipt.__allocating_init(name:url:localizationName:context:)(v66, v51, v50, v46, v47, v52);
      if (v53)
      {
        v54 = v53;
        MEMORY[0x1B8CA4F20]();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B7800C58();
        }

        sub_1B7800C88();

        v60 = v73;
      }
    }

    if (v28 <= v22 + 1)
    {
      v32 = (v22 + 1);
    }

    else
    {
      v32 = v28;
    }

    v33 = v32 - 1;
    v31 = v72;
    v34 = v69;
    v18 = &qword_1EB9901D0;
    while (1)
    {
      v30 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v30 >= v28)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9901D0);
        (*(*(v55 - 8) + 56))(v34, 1, 1, v55);
        v13 = 0;
        v22 = v33;
        goto LABEL_16;
      }

      v13 = *(v61 + 8 * v30);
      ++v22;
      if (v13)
      {
        v22 = v30;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v56 = a1;
  v57 = v71;
  (*(v13 + 32))(v18, v21, v71);
  type metadata accessor for ManagedOrderReceipt();
  (*(v13 + 16))(v16, v18, v57);

  v58 = ManagedOrderReceipt.__allocating_init(name:url:localizationName:context:)(v56, a2, v16, 0, 0, a4);
  if (v58)
  {
    v28 = v58;
    MEMORY[0x1B8CA4F20]();
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_24:
      sub_1B7800C88();

      (*(v13 + 8))(v18, v71);
      return v73;
    }

LABEL_28:
    sub_1B7800C58();
    goto LABEL_24;
  }

  (*(v13 + 8))(v18, v71);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B7359A34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9927D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7359AA4()
{
  result = qword_1EB9927D8;
  if (!qword_1EB9927D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9927D8);
  }

  return result;
}

uint64_t sub_1B7359AF8(char *__src, void **a2, id *a3, uint64_t __dst, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    v15 = a2;
    v16 = __dst;
    if (__dst != __src || &__src[8 * v11] <= __dst)
    {
      memmove(__dst, __src, 8 * v11);
    }

    v17 = &v16[v11];
    if (v9 < 8)
    {
LABEL_10:
      v18 = v8;
      goto LABEL_51;
    }

    while (1)
    {
      if (v15 >= v7)
      {
        goto LABEL_10;
      }

      v21 = *v16;
      v22 = *v15;
      v23 = v21;
      v24 = sub_1B735901C(v22, v23, a5, a6);
      if (v6)
      {

        v45 = v17 - v16 + 7;
        if (v17 - v16 >= 0)
        {
          v45 = v17 - v16;
        }

        if (v8 < v16 || v8 >= (v16 + (v45 & 0xFFFFFFFFFFFFFFF8)) || v8 != v16)
        {
          v44 = 8 * (v45 >> 3);
          v18 = v8;
          goto LABEL_57;
        }

        goto LABEL_59;
      }

      v25 = v24;

      if (v25)
      {
        break;
      }

      v19 = v16;
      v20 = v8 == v16++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      if (v16 >= v17)
      {
        goto LABEL_10;
      }
    }

    v19 = v15;
    v20 = v8 == v15++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v19;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v14] <= __dst)
  {
    v26 = a2;
    v27 = __dst;
    memmove(__dst, a2, 8 * v14);
    a2 = v26;
    __dst = v27;
  }

  v18 = a2;
  v17 = (__dst + 8 * v14);
  v28 = v12 < 8;
  v16 = __dst;
  if (!v28 && a2 > v8)
  {
    v29 = -__dst;
    v50 = __dst;
    v48 = -__dst;
LABEL_26:
    v49 = v18;
    v30 = v18 - 1;
    v31 = v17 + v29;
    --v7;
    v51 = v17;
    v32 = v17;
    while (1)
    {
      v33 = *--v32;
      v34 = v30;
      v35 = *v30;
      v36 = v33;
      v37 = v35;
      v38 = sub_1B735901C(v36, v37, a5, a6);

      if (v6)
      {
        break;
      }

      v39 = v7 + 1;
      if (v38)
      {
        v40 = v34;
        if (v39 != v49)
        {
          *v7 = *v34;
        }

        v16 = v50;
        v17 = v51;
        if (v51 <= v50 || (v18 = v40, v29 = v48, v40 <= v8))
        {
          v18 = v40;
          goto LABEL_51;
        }

        goto LABEL_26;
      }

      if (v39 != v51)
      {
        *v7 = *v32;
      }

      v31 -= 8;
      --v7;
      v51 = v32;
      v30 = v34;
      if (v32 <= v50)
      {
        v17 = v32;
        v18 = v49;
        v16 = v50;
        goto LABEL_51;
      }
    }

    if (v31 >= 0)
    {
      v41 = v31;
    }

    else
    {
      v41 = v31 + 7;
    }

    v42 = v41 >> 3;
    v18 = v49;
    v43 = v50;
    if (v49 < v50 || v49 >= v50 + (v41 & 0xFFFFFFFFFFFFFFF8))
    {
      memmove(v49, v50, 8 * v42);
      goto LABEL_59;
    }

    if (v49 == v50)
    {
      goto LABEL_59;
    }

    v44 = 8 * v42;
    goto LABEL_58;
  }

LABEL_51:
  v46 = v17 - v16 + 7;
  if (v17 - v16 >= 0)
  {
    v46 = v17 - v16;
  }

  if (v18 < v16 || v18 >= (v16 + (v46 & 0xFFFFFFFFFFFFFFF8)) || v18 != v16)
  {
    v44 = 8 * (v46 >> 3);
LABEL_57:
    v43 = v16;
LABEL_58:
    memmove(v18, v43, v44);
  }

LABEL_59:

  return 1;
}

uint64_t sub_1B7359E84(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v118 = MEMORY[0x1E69E7CC0];
  v10 = a3[1];
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  if (v10 >= 1)
  {
    v111 = MEMORY[0x1E69E7CC0];
    v11 = 0;
    v116 = a6;
    v108 = a4;
    do
    {
      v12 = v11;
      v13 = v11 + 1;
      if (v11 + 1 < v10)
      {
        v14 = v11;
        v15 = *a3;
        v16 = *(*a3 + 8 * v11);
        v17 = a6;
        v18 = *(*a3 + 8 * v13);
        v19 = v16;
        v20 = sub_1B735901C(v18, v19, a5, v17);
        if (v6)
        {

LABEL_100:
LABEL_101:
          swift_bridgeObjectRelease_n();
        }

        v21 = v20;

        v22 = v14 + 2;
        *v113 = v14;
        v23 = 8 * v14;
        v24 = (v15 + 8 * v14 + 16);
        while (v10 != v22)
        {
          v25 = *(v24 - 1);
          v26 = *v24;
          v27 = v25;
          LODWORD(v25) = sub_1B735901C(v26, v27, a5, v116);

          ++v22;
          ++v24;
          if ((v21 ^ v25))
          {
            v10 = v22 - 1;
            break;
          }
        }

        v12 = *v113;
        a6 = v116;
        if (v21)
        {
          if (v10 < *v113)
          {
            goto LABEL_122;
          }

          a4 = v108;
          if (*v113 < v10)
          {
            v28 = 8 * v10 - 8;
            v29 = v10;
            v30 = *v113;
            do
            {
              if (v30 != --v29)
              {
                v31 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v32 = *(v31 + v23);
                *(v31 + v23) = *(v31 + v28);
                *(v31 + v28) = v32;
              }

              ++v30;
              v28 -= 8;
              v23 += 8;
            }

            while (v30 < v29);
          }

          v13 = v10;
        }

        else
        {
          v13 = v10;
          a4 = v108;
        }
      }

      v33 = v111;
      v34 = a3[1];
      if (v13 >= v34)
      {
        goto LABEL_31;
      }

      v35 = v13;
      v54 = __OFSUB__(v13, v12);
      v36 = v13 - v12;
      if (v54)
      {
        goto LABEL_119;
      }

      if (v36 >= a4)
      {
LABEL_30:
        v13 = v35;
LABEL_31:
        if (v13 < v12)
        {
          goto LABEL_118;
        }

        goto LABEL_32;
      }

      if (__OFADD__(v12, a4))
      {
        goto LABEL_120;
      }

      if (v12 + a4 >= v34)
      {
        v37 = a3[1];
      }

      else
      {
        v37 = v12 + a4;
      }

      if (v37 < v12)
      {
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        swift_bridgeObjectRelease_n();

        __break(1u);
LABEL_124:
        swift_bridgeObjectRelease_n();

        __break(1u);
LABEL_125:
        swift_bridgeObjectRelease_n();

        __break(1u);
LABEL_126:
        swift_bridgeObjectRelease_n();

        __break(1u);
        goto LABEL_127;
      }

      if (v35 == v37)
      {
        goto LABEL_30;
      }

      v90 = *a3;
      v91 = *a3 + 8 * v35 - 8;
      *v115 = v12;
      v92 = v12 - v35;
      v107 = v37;
      do
      {
        v105 = v35;
        v93 = *(v90 + 8 * v35);
        v94 = v92;
        __dsta = v91;
        while (1)
        {
          v95 = *v91;
          v96 = v93;
          v19 = v95;
          v97 = sub_1B735901C(v96, v19, a5, a6);
          if (v6)
          {

            goto LABEL_100;
          }

          v98 = v97;

          if (!v98)
          {
            break;
          }

          if (!v90)
          {
            goto LABEL_124;
          }

          v99 = *v91;
          v93 = *(v91 + 8);
          *v91 = v93;
          *(v91 + 8) = v99;
          v91 -= 8;
          v100 = __CFADD__(v94++, 1);
          a6 = v116;
          if (v100)
          {
            goto LABEL_90;
          }
        }

        a6 = v116;
LABEL_90:
        v35 = v105 + 1;
        v91 = __dsta + 8;
        --v92;
      }

      while (v105 + 1 != v107);
      v13 = v107;
      v33 = v111;
      a4 = v108;
      v12 = *v115;
      if (v107 < *v115)
      {
        goto LABEL_118;
      }

LABEL_32:
      v104 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1B723E420(0, *(v33 + 2) + 1, 1, v33);
      }

      v39 = *(v33 + 2);
      v38 = *(v33 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v33 = sub_1B723E420((v38 > 1), v39 + 1, 1, v33);
      }

      *(v33 + 2) = v40;
      v41 = v33 + 32;
      v42 = &v33[16 * v39 + 32];
      *v42 = v12;
      *(v42 + 1) = v104;
      v118 = v33;
      __dst = *a1;
      if (!*a1)
      {
        goto LABEL_126;
      }

      v111 = v33;
      if (v39)
      {
        v106 = v33 + 32;
        while (1)
        {
          v43 = v40 - 1;
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v44 = *(v33 + 4);
            v45 = *(v33 + 5);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_52:
            if (v47)
            {
              goto LABEL_109;
            }

            v60 = &v33[16 * v40];
            v62 = *v60;
            v61 = *(v60 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = &v41[16 * v43];
            v68 = *v66;
            v67 = *(v66 + 1);
            v54 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v54)
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v69))
            {
              goto LABEL_116;
            }

            if (v64 + v69 >= v46)
            {
              if (v46 < v69)
              {
                v43 = v40 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v70 = &v33[16 * v40];
          v72 = *v70;
          v71 = *(v70 + 1);
          v54 = __OFSUB__(v71, v72);
          v64 = v71 - v72;
          v65 = v54;
LABEL_66:
          if (v65)
          {
            goto LABEL_111;
          }

          v73 = &v41[16 * v43];
          v75 = *v73;
          v74 = *(v73 + 1);
          v54 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v54)
          {
            goto LABEL_114;
          }

          if (v76 < v64)
          {
            goto LABEL_3;
          }

LABEL_73:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
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
            goto LABEL_121;
          }

          v81 = *a3;
          if (!*a3)
          {
            goto LABEL_123;
          }

          v82 = &v41[16 * v43 - 16];
          v83 = *v82;
          v84 = v43;
          v85 = &v41[16 * v43];
          v86 = *(v85 + 1);
          v87 = (v81 + 8 * *v82);
          v88 = (v81 + 8 * *v85);
          v114 = (v81 + 8 * v86);

          sub_1B7359AF8(v87, v88, v114, __dst, a5, v116);
          if (v6)
          {

            goto LABEL_101;
          }

          v33 = v111;
          if (v86 < v83)
          {
            goto LABEL_104;
          }

          v89 = *(v111 + 2);
          if (v84 > v89)
          {
            goto LABEL_105;
          }

          *v82 = v83;
          *(v82 + 1) = v86;
          if (v84 >= v89)
          {
            goto LABEL_106;
          }

          v40 = v89 - 1;
          memmove(v85, v85 + 16, 16 * (v89 - 1 - v84));
          *(v111 + 2) = v89 - 1;
          v41 = v106;
          a4 = v108;
          if (v89 <= 2)
          {
LABEL_3:
            v118 = v33;
            goto LABEL_4;
          }
        }

        v48 = &v41[16 * v40];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_107;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_108;
        }

        v55 = &v33[16 * v40];
        v57 = *v55;
        v56 = *(v55 + 1);
        v54 = __OFSUB__(v56, v57);
        v58 = v56 - v57;
        if (v54)
        {
          goto LABEL_110;
        }

        v54 = __OFADD__(v46, v58);
        v59 = v46 + v58;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v59 >= v51)
        {
          v77 = &v41[16 * v43];
          v79 = *v77;
          v78 = *(v77 + 1);
          v54 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v54)
          {
            goto LABEL_117;
          }

          if (v46 < v80)
          {
            v43 = v40 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_4:
      v10 = a3[1];
      v11 = v104;
      a6 = v116;
    }

    while (v104 < v10);
  }

  v101 = *a1;
  if (*a1)
  {

    sub_1B735A5C0(&v118, v101, a3, a5, a6);
    if (v7)
    {

      goto LABEL_101;
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
LABEL_127:
    swift_bridgeObjectRelease_n();

    __break(1u);
  }

  return result;
}

uint64_t sub_1B735A5C0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a1;
  v9 = *a1;

  v25 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = sub_1B77E4CA4(v25);
  }

  v21 = v8;
  *v8 = v25;
  v10 = v25 + 16;
  v11 = *(v25 + 2);
  if (v11 < 2)
  {
LABEL_9:

    *v21 = v25;

    return 1;
  }

  else
  {
    while (1)
    {
      v12 = *a3;
      if (!*a3)
      {
        break;
      }

      v13 = &v25[16 * v11];
      v14 = *v13;
      v15 = v10;
      v16 = &v10[16 * v11];
      v8 = *(v16 + 1);
      __src = (v12 + 8 * *v13);
      v26 = (v12 + 8 * *v16);
      v17 = (v12 + 8 * v8);

      sub_1B7359AF8(__src, v26, v17, a2, a4, a5);

      if (v6)
      {
        *v21 = v25;

        return 1;
      }

      if (v8 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v18 = *v15;
      if (v11 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v13 = v14;
      *(v13 + 1) = v8;
      v19 = v18 - v11;
      if (v18 < v11)
      {
        goto LABEL_14;
      }

      v10 = v15;
      v11 = v18 - 1;
      memmove(v16, v16 + 16, 16 * v19);
      *v15 = v11;
      if (v11 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v25;

    __break(1u);
  }

  return result;
}

uint64_t sub_1B735A79C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  v11 = *a1;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = a4(v11);
    *a1 = v11;
  }

  v13 = *(v11 + 16);
  v14 = v11 + 32;
  v37[0] = v11 + 32;
  v37[1] = v13;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v15 = sub_1B7802038();
  if (v15 >= v13)
  {
    if (v13)
    {
      if (v13 == 1)
      {
      }

      else
      {

        v19 = -1;
        v20 = 1;
        v21 = v11 + 32;
        v32 = v11 + 32;
        while (2)
        {
          v34 = v20;
          v35 = v19;
          v22 = *(v14 + 8 * v20);
          v23 = v19;
          v33 = v21;
          do
          {
            v24 = *v21;
            v25 = v22;
            v26 = v24;
            v27 = sub_1B735901C(v25, v26, a2, a3);
            if (v5)
            {

              swift_bridgeObjectRelease_n();

              goto LABEL_22;
            }

            v28 = v27;

            if (!v28)
            {
              break;
            }

            v29 = *v21;
            v22 = *(v21 + 8);
            *v21 = v22;
            *(v21 + 8) = v29;
            v21 -= 8;
          }

          while (!__CFADD__(v23++, 1));
          v20 = v34 + 1;
          v21 = v33 + 8;
          v19 = v35 - 1;
          v14 = v32;
          if (v34 + 1 != v13)
          {
            continue;
          }

          break;
        }

        swift_bridgeObjectRelease_n();
      }
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v16 = v15;
    v17 = (v13 >> 1);
    if (v13 >= 2)
    {
      a5(0);
      v18 = sub_1B7800C78();
      *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) = v17;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v36[0] = ((v18 & 0xFFFFFFFFFFFFFF8) + 32);
    v36[1] = v17;

    sub_1B7359E84(v36, v38, v37, v16, a2, a3);

    *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_22:
  sub_1B7801B78();
  swift_bridgeObjectRelease_n();
}

uint64_t Order.Fulfillment.NotificationFormatStyle.Output.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Order.Fulfillment.NotificationFormatStyle.Output.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Order.Fulfillment.NotificationFormatStyle.Output.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Order.Fulfillment.NotificationFormatStyle.Output.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static Order.Fulfillment.NotificationFormatStyle.Output.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B78020F8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B78020F8();
    }
  }

  return result;
}

double Order.Fulfillment.NotificationFormatStyle.format(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v39 = a1;
  v41 = a2;
  v2 = _s14descr1F2F3F6D1V40NotificationSingleFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s14descr1F2F3F6D1V39NotificationMultiFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s40NotificationSingleFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s39NotificationMultiFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Order.Fulfillment.NotificationFormatStyle.Input(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7369218(v39, v26, type metadata accessor for Order.Fulfillment.NotificationFormatStyle.Input);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B73692E0(v26, v11, type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input);
    sub_1B7369218(v40, v8, type metadata accessor for FormatterConfiguration);
    if (v11[*(v9 + 24)] == 1)
    {
      v27 = v37;
      sub_1B7369218(v8, v37, type metadata accessor for FormatterConfiguration);
      sub_1B735F37C(sub_1B7362874, v42);
      v28 = _s14descr1F2F3F6D1V39NotificationMultiFulfillmentFormatStyleVMa;
    }

    else
    {
      v27 = v38;
      sub_1B7369218(v8, v38, type metadata accessor for FormatterConfiguration);
      sub_1B735F4C0(v11, v42);
      v28 = _s14descr1F2F3F6D1V40NotificationSingleFulfillmentFormatStyleVMa;
    }

    sub_1B7369280(v27, v28);
    sub_1B7369280(v8, type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle);
    v31 = type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input;
    v32 = v11;
  }

  else
  {
    sub_1B73692E0(v26, v23, type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input);
    sub_1B7369218(v40, v20, type metadata accessor for FormatterConfiguration);
    if (v23[*(v21 + 24)] == 1)
    {
      sub_1B7369218(v20, v17, type metadata accessor for FormatterConfiguration);
      sub_1B735F37C(sub_1B735D9E4, v42);
      v29 = _s39NotificationMultiFulfillmentFormatStyleVMa;
      v30 = v17;
    }

    else
    {
      sub_1B7369218(v20, v14, type metadata accessor for FormatterConfiguration);
      sub_1B735B908(v23, v42);
      v29 = _s40NotificationSingleFulfillmentFormatStyleVMa;
      v30 = v14;
    }

    sub_1B7369280(v30, v29);
    sub_1B7369280(v20, type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle);
    v31 = type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input;
    v32 = v23;
  }

  sub_1B7369280(v32, v31);
  result = *v42;
  v34 = v42[1];
  v35 = v41;
  *v41 = v42[0];
  v35[1] = v34;
  return result;
}

double Order.PickupFulfillment.NotificationFormatStyle.format(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = _s40NotificationSingleFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s39NotificationMultiFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0) + 24)) == 1)
  {
    sub_1B7369218(v3, v11, type metadata accessor for FormatterConfiguration);
    sub_1B735F37C(sub_1B735D9E4, v16);
    v12 = _s39NotificationMultiFulfillmentFormatStyleVMa;
    v13 = v11;
  }

  else
  {
    sub_1B7369218(v3, v8, type metadata accessor for FormatterConfiguration);
    sub_1B735B908(a1, v16);
    v12 = _s40NotificationSingleFulfillmentFormatStyleVMa;
    v13 = v8;
  }

  sub_1B7369280(v13, v12);
  result = *v16;
  v15 = v16[1];
  *a2 = v16[0];
  a2[1] = v15;
  return result;
}

double Order.ShippingFulfillment.NotificationFormatStyle.format(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = _s14descr1F2F3F6D1V40NotificationSingleFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s14descr1F2F3F6D1V39NotificationMultiFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 24)) == 1)
  {
    sub_1B7369218(v3, v11, type metadata accessor for FormatterConfiguration);
    sub_1B735F37C(sub_1B7362874, v16);
    v12 = _s14descr1F2F3F6D1V39NotificationMultiFulfillmentFormatStyleVMa;
    v13 = v11;
  }

  else
  {
    sub_1B7369218(v3, v8, type metadata accessor for FormatterConfiguration);
    sub_1B735F4C0(a1, v16);
    v12 = _s14descr1F2F3F6D1V40NotificationSingleFulfillmentFormatStyleVMa;
    v13 = v8;
  }

  sub_1B7369280(v13, v12);
  result = *v16;
  v15 = v16[1];
  *a2 = v16[0];
  a2[1] = v15;
  return result;
}

uint64_t sub_1B735B50C(uint64_t a1)
{
  v2 = sub_1B7369348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B735B548(uint64_t a1)
{
  v2 = sub_1B7369348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.Fulfillment.NotificationFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9927F0);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Order.Fulfillment.NotificationFormatStyle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7369348();
  v12 = v17;
  sub_1B78023C8();
  if (!v12)
  {
    v13 = v15;
    sub_1B736939C(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B72A2B9C(v5, v11);
    sub_1B7369218(v11, v13, type metadata accessor for Order.Fulfillment.NotificationFormatStyle);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B7369280(v11, type metadata accessor for Order.Fulfillment.NotificationFormatStyle);
}

uint64_t sub_1B735B908@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v66 - v5;
  v7 = (a1 + *(type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0) + 20));
  v8 = *v7;
  v9 = v7[1];
  sub_1B7205588(a1, v6, &qword_1EB990830);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v11 = *v6;
    if (!*v6)
    {
LABEL_16:
      v19 = v11;
      v39 = v11;
      v41 = v11;
      goto LABEL_31;
    }

    v67 = v8;
    if (v11 == 1)
    {
      v25 = qword_1EDAF93A8;

      v26 = v9;
      if (v25 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }

    goto LABEL_21;
  }

  if (result == 1)
  {
    v11 = *v6;
    if (*v6 <= 2u)
    {
      if (*v6)
      {
        if (v11 == 1)
        {
          v12 = qword_1EDAF93A8;

          if (v12 != -1)
          {
            swift_once();
          }

          v13 = qword_1EDAF93B0;
          v14 = sub_1B7800838();
          v15 = sub_1B7800838();
          v16 = sub_1B7800838();
          v17 = [v13 localizedStringForKey:v14 value:v15 table:v16];

          v11 = sub_1B7800868();
          v19 = v18;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1B7807CD0;
          *(v20 + 56) = MEMORY[0x1E69E6158];
          *(v20 + 64) = sub_1B721FF04();
          *(v20 + 32) = v8;
          *(v20 + 40) = v9;
          v21 = sub_1B7800838();
          v22 = sub_1B7800838();
          v23 = sub_1B7800838();
          v24 = [v13 localizedStringForKey:v21 value:v22 table:v23];
          goto LABEL_23;
        }

        if (qword_1EDAF93A8 != -1)
        {
          swift_once();
        }

        v60 = qword_1EDAF93B0;
        v61 = sub_1B7800838();
        v62 = sub_1B7800838();
        v63 = sub_1B7800838();
        v64 = [v60 localizedStringForKey:v61 value:v62 table:v63];

        v11 = sub_1B7800868();
        v19 = v65;

        result = sub_1B735C9D0(a1);
LABEL_30:
        v39 = result;
        v41 = v59;
        goto LABEL_31;
      }

      goto LABEL_16;
    }

    if (v11 == 3)
    {
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v53 = qword_1EDAF93B0;
      v54 = sub_1B7800838();
      v55 = sub_1B7800838();
      v56 = sub_1B7800838();
      v57 = [v53 localizedStringForKey:v54 value:v55 table:v56];

      v11 = sub_1B7800868();
      v19 = v58;

      result = sub_1B735D08C(a1);
      goto LABEL_30;
    }

    v67 = v8;
    if (v11 == 4)
    {
      v42 = qword_1EDAF93A8;

      v26 = v9;
      if (v42 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }

LABEL_21:
    v43 = qword_1EDAF93A8;

    v26 = v9;
    if (v43 == -1)
    {
LABEL_22:
      v44 = qword_1EDAF93B0;
      v45 = sub_1B7800838();
      v46 = sub_1B7800838();
      v47 = sub_1B7800838();
      v48 = [v44 localizedStringForKey:v45 value:v46 table:v47];

      v11 = sub_1B7800868();
      v19 = v49;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1B7807CD0;
      *(v50 + 56) = MEMORY[0x1E69E6158];
      *(v50 + 64) = sub_1B721FF04();
      *(v50 + 32) = v67;
      *(v50 + 40) = v26;
      v21 = sub_1B7800838();
      v22 = sub_1B7800838();
      v23 = sub_1B7800838();
      v24 = [v44 localizedStringForKey:v21 value:v22 table:v23];
LABEL_23:
      v51 = v24;

      sub_1B7800868();
      v39 = sub_1B78008A8();
      v41 = v52;

      goto LABEL_31;
    }

LABEL_32:
    swift_once();
    goto LABEL_22;
  }

  v67 = a2;
  v27 = qword_1EDAF93A8;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDAF93B0;
  v29 = sub_1B7800838();
  v30 = sub_1B7800838();
  v31 = sub_1B7800838();
  v32 = [v28 localizedStringForKey:v29 value:v30 table:v31];

  v11 = sub_1B7800868();
  v19 = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B7807CD0;
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 64) = sub_1B721FF04();
  *(v34 + 32) = v8;
  *(v34 + 40) = v9;
  v35 = sub_1B7800838();
  v36 = sub_1B7800838();
  v37 = sub_1B7800838();
  v38 = [v28 localizedStringForKey:v35 value:v36 table:v37];

  sub_1B7800868();
  v39 = sub_1B78008A8();
  v41 = v40;

  result = sub_1B7205418(v6, &qword_1EB990830);
  a2 = v67;
LABEL_31:
  *a2 = v11;
  a2[1] = v19;
  a2[2] = v39;
  a2[3] = v41;
  return result;
}

uint64_t sub_1B735C490(uint64_t a1)
{
  v2 = sub_1B7369404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B735C4CC(uint64_t a1)
{
  v2 = sub_1B7369404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.PickupFulfillment.NotificationFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992808);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7369404();
  v12 = v17;
  sub_1B78023C8();
  if (!v12)
  {
    v13 = v15;
    sub_1B736939C(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B72A2B9C(v5, v11);
    sub_1B7369218(v11, v13, type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B7369280(v11, type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle);
}

double sub_1B735C7E0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = _s40NotificationSingleFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s39NotificationMultiFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0) + 24)) == 1)
  {
    sub_1B7369218(v3, v11, type metadata accessor for FormatterConfiguration);
    sub_1B735F37C(sub_1B735D9E4, v16);
    v12 = _s39NotificationMultiFulfillmentFormatStyleVMa;
    v13 = v11;
  }

  else
  {
    sub_1B7369218(v3, v8, type metadata accessor for FormatterConfiguration);
    sub_1B735B908(a1, v16);
    v12 = _s40NotificationSingleFulfillmentFormatStyleVMa;
    v13 = v8;
  }

  sub_1B7369280(v13, v12);
  result = *v16;
  v15 = v16[1];
  *a2 = v16[0];
  a2[1] = v15;
  return result;
}

uint64_t sub_1B735C9D0(uint64_t a1)
{
  v45 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1B77FF988();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for Order.FulfillmentWindow(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Order.PickupFulfillment.StatusValues(0) + 20);
  v48 = a1;
  sub_1B7205588(a1 + v15, v10, &qword_1EB990828);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7205418(v10, &qword_1EB990828);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B7807CD0;
    v17 = (v48 + *(type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0) + 20));
    v19 = *v17;
    v18 = v17[1];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1B721FF04();
    *(v16 + 32) = v19;
    *(v16 + 40) = v18;
    v20 = qword_1EDAF93A8;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDAF93B0;
    v22 = sub_1B7800838();
    v23 = sub_1B7800838();
    v24 = sub_1B7800838();
    v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

    sub_1B7800868();
    v26 = sub_1B78008A8();
  }

  else
  {
    sub_1B73692E0(v10, v14, type metadata accessor for Order.FulfillmentWindow);
    Order.FulfillmentWindow.isSingleDateWindow(calendar:)();
    Order.FulfillmentWindow.endDate.getter(v7);
    v27 = v43;
    sub_1B7369218(v1, v43, type metadata accessor for FormatterConfiguration);
    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v27, v5);
    v5[*(v47 + 20)] = 0;
    sub_1B736939C(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
    sub_1B77FF968();
    (*(v44 + 8))(v7, v46);
    sub_1B7369280(v5, type metadata accessor for FullDateFormatter);
    v28 = v49;
    v29 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B7808C50;
    v31 = (v48 + *(type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0) + 20));
    v33 = *v31;
    v32 = v31[1];
    v34 = MEMORY[0x1E69E6158];
    *(v30 + 56) = MEMORY[0x1E69E6158];
    v35 = sub_1B721FF04();
    *(v30 + 32) = v33;
    *(v30 + 40) = v32;
    *(v30 + 96) = v34;
    *(v30 + 104) = v35;
    *(v30 + 64) = v35;
    *(v30 + 72) = v28;
    *(v30 + 80) = v29;
    v36 = qword_1EDAF93A8;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDAF93B0;
    v38 = sub_1B7800838();

    v39 = sub_1B7800838();
    v40 = sub_1B7800838();
    v41 = [v37 localizedStringForKey:v38 value:v39 table:v40];

    sub_1B7800868();
    v26 = sub_1B78008A8();

    sub_1B7369280(v14, type metadata accessor for Order.FulfillmentWindow);
  }

  return v26;
}

uint64_t sub_1B735D08C(uint64_t a1)
{
  v2 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Order.PickupFulfillment.StatusValues(0);
  sub_1B7205588(a1 + *(v14 + 24), v9, &qword_1EB98EBD0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B7205418(v9, &qword_1EB98EBD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B7807CD0;
    v16 = (a1 + *(type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0) + 20));
    v18 = *v16;
    v17 = v16[1];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1B721FF04();
    *(v15 + 32) = v18;
    *(v15 + 40) = v17;
    v19 = qword_1EDAF93A8;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDAF93B0;
    v21 = sub_1B7800838();
    v22 = sub_1B7800838();
    v23 = sub_1B7800838();
    v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

    sub_1B7800868();
    v25 = sub_1B78008A8();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v39 = "ON_BODY_SINGLE_PICKUP_PICKED_UP";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1B7808C50;
    v27 = (a1 + *(type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0) + 20));
    v29 = *v27;
    v28 = v27[1];
    v40 = v10;
    v30 = MEMORY[0x1E69E6158];
    *(v26 + 56) = MEMORY[0x1E69E6158];
    v31 = sub_1B721FF04();
    *(v26 + 64) = v31;
    *(v26 + 32) = v29;
    *(v26 + 40) = v28;
    sub_1B7369218(v41, v4, type metadata accessor for FormatterConfiguration);

    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v4, v6);
    v6[*(v42 + 20)] = 0;
    *(v26 + 96) = v30;
    *(v26 + 104) = v31;
    sub_1B736939C(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
    sub_1B77FF968();
    sub_1B7369280(v6, type metadata accessor for FullDateFormatter);
    v32 = v13;
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v33 = qword_1EDAF93B0;
    v34 = sub_1B7800838();
    v35 = sub_1B7800838();
    v36 = sub_1B7800838();
    v37 = [v33 localizedStringForKey:v34 value:v35 table:v36];

    sub_1B7800868();
    v25 = sub_1B78008A8();

    (*(v11 + 8))(v32, v40);
  }

  return v25;
}

uint64_t sub_1B735D678@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992B08);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = _s40NotificationSingleFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B736AC54();
  v12 = v17;
  sub_1B78023C8();
  if (!v12)
  {
    v13 = v15;
    sub_1B736939C(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B72A2B9C(v5, v11);
    sub_1B7369218(v11, v13, _s40NotificationSingleFulfillmentFormatStyleVMa);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B7369280(v11, _s40NotificationSingleFulfillmentFormatStyleVMa);
}

uint64_t sub_1B735D90C(uint64_t a1)
{
  v2 = sub_1B736AC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B735D948(uint64_t a1)
{
  v2 = sub_1B736AC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B735D9E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34 - v3;
  v5 = (a1 + *(type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0) + 20));
  v7 = *v5;
  v6 = v5[1];
  sub_1B7205588(a1, v4, &qword_1EB990830);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v9 = *v4;
    if (!*v4)
    {
      return v9;
    }

    if (v9 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1B7807CD0;
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = sub_1B721FF04();
      *(v12 + 32) = v7;
      *(v12 + 40) = v6;
      v13 = qword_1EDAF93A8;

      if (v13 == -1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1B7807CD0;
      *(v23 + 56) = MEMORY[0x1E69E6158];
      *(v23 + 64) = sub_1B721FF04();
      *(v23 + 32) = v7;
      *(v23 + 40) = v6;
      v24 = qword_1EDAF93A8;

      if (v24 == -1)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = *v4;
    if (*v4 <= 2u)
    {
      if (!*v4)
      {
        return v9;
      }

      if (v9 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1B7807CD0;
        *(v10 + 56) = MEMORY[0x1E69E6158];
        *(v10 + 64) = sub_1B721FF04();
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        v11 = qword_1EDAF93A8;

        if (v11 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_28;
      }

      return sub_1B735E1DC(a1);
    }

    if (v9 == 3)
    {
      return sub_1B735E898(a1);
    }

    if (v9 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1B7807CD0;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1B721FF04();
      *(v21 + 32) = v7;
      *(v21 + 40) = v6;
      v22 = qword_1EDAF93A8;

      if (v22 == -1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1B7807CD0;
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = sub_1B721FF04();
      *(v26 + 32) = v7;
      *(v26 + 40) = v6;
      v27 = qword_1EDAF93A8;

      if (v27 == -1)
      {
LABEL_26:
        v28 = qword_1EDAF93B0;
        v29 = sub_1B7800838();
        v30 = sub_1B7800838();
        v31 = sub_1B7800838();
        v32 = [v28 localizedStringForKey:v29 value:v30 table:v31];

        sub_1B7800868();
        v9 = sub_1B78008A8();

        return v9;
      }
    }

LABEL_28:
    swift_once();
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B7807CD0;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1B721FF04();
  *(v14 + 32) = v7;
  *(v14 + 40) = v6;
  v15 = qword_1EDAF93A8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDAF93B0;
  v17 = sub_1B7800838();
  v18 = sub_1B7800838();
  v19 = sub_1B7800838();
  v20 = [v16 localizedStringForKey:v17 value:v18 table:v19];

  sub_1B7800868();
  v9 = sub_1B78008A8();

  sub_1B7205418(v4, &qword_1EB990830);
  return v9;
}

uint64_t sub_1B735E1DC(uint64_t a1)
{
  v45 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1B77FF988();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for Order.FulfillmentWindow(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Order.PickupFulfillment.StatusValues(0) + 20);
  v48 = a1;
  sub_1B7205588(a1 + v15, v10, &qword_1EB990828);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7205418(v10, &qword_1EB990828);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B7807CD0;
    v17 = (v48 + *(type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0) + 20));
    v19 = *v17;
    v18 = v17[1];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1B721FF04();
    *(v16 + 32) = v19;
    *(v16 + 40) = v18;
    v20 = qword_1EDAF93A8;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDAF93B0;
    v22 = sub_1B7800838();
    v23 = sub_1B7800838();
    v24 = sub_1B7800838();
    v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

    sub_1B7800868();
    v26 = sub_1B78008A8();
  }

  else
  {
    sub_1B73692E0(v10, v14, type metadata accessor for Order.FulfillmentWindow);
    Order.FulfillmentWindow.isSingleDateWindow(calendar:)();
    Order.FulfillmentWindow.endDate.getter(v7);
    v27 = v43;
    sub_1B7369218(v1, v43, type metadata accessor for FormatterConfiguration);
    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v27, v5);
    v5[*(v47 + 20)] = 0;
    sub_1B736939C(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
    sub_1B77FF968();
    (*(v44 + 8))(v7, v46);
    sub_1B7369280(v5, type metadata accessor for FullDateFormatter);
    v28 = v49;
    v29 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B7808C50;
    v31 = (v48 + *(type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0) + 20));
    v33 = *v31;
    v32 = v31[1];
    v34 = MEMORY[0x1E69E6158];
    *(v30 + 56) = MEMORY[0x1E69E6158];
    v35 = sub_1B721FF04();
    *(v30 + 32) = v33;
    *(v30 + 40) = v32;
    *(v30 + 96) = v34;
    *(v30 + 104) = v35;
    *(v30 + 64) = v35;
    *(v30 + 72) = v28;
    *(v30 + 80) = v29;
    v36 = qword_1EDAF93A8;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDAF93B0;
    v38 = sub_1B7800838();

    v39 = sub_1B7800838();
    v40 = sub_1B7800838();
    v41 = [v37 localizedStringForKey:v38 value:v39 table:v40];

    sub_1B7800868();
    v26 = sub_1B78008A8();

    sub_1B7369280(v14, type metadata accessor for Order.FulfillmentWindow);
  }

  return v26;
}

uint64_t sub_1B735E898(uint64_t a1)
{
  v2 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Order.PickupFulfillment.StatusValues(0);
  sub_1B7205588(a1 + *(v14 + 24), v9, &qword_1EB98EBD0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B7205418(v9, &qword_1EB98EBD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B7807CD0;
    v16 = (a1 + *(type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0) + 20));
    v18 = *v16;
    v17 = v16[1];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1B721FF04();
    *(v15 + 32) = v18;
    *(v15 + 40) = v17;
    v19 = qword_1EDAF93A8;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDAF93B0;
    v21 = sub_1B7800838();
    v22 = sub_1B7800838();
    v23 = sub_1B7800838();
    v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

    sub_1B7800868();
    v25 = sub_1B78008A8();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v39 = "ON_BODY_MULTI_PICKUP_PICKED_UP";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1B7808C50;
    v27 = (a1 + *(type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0) + 20));
    v29 = *v27;
    v28 = v27[1];
    v40 = v10;
    v30 = MEMORY[0x1E69E6158];
    *(v26 + 56) = MEMORY[0x1E69E6158];
    v31 = sub_1B721FF04();
    *(v26 + 64) = v31;
    *(v26 + 32) = v29;
    *(v26 + 40) = v28;
    sub_1B7369218(v41, v4, type metadata accessor for FormatterConfiguration);

    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v4, v6);
    v6[*(v42 + 20)] = 0;
    *(v26 + 96) = v30;
    *(v26 + 104) = v31;
    sub_1B736939C(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
    sub_1B77FF968();
    sub_1B7369280(v6, type metadata accessor for FullDateFormatter);
    v32 = v13;
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v33 = qword_1EDAF93B0;
    v34 = sub_1B7800838();
    v35 = sub_1B7800838();
    v36 = sub_1B7800838();
    v37 = [v33 localizedStringForKey:v34 value:v35 table:v36];

    sub_1B7800868();
    v25 = sub_1B78008A8();

    (*(v11 + 8))(v32, v40);
  }

  return v25;
}

uint64_t sub_1B735EE84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992AF0);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = _s39NotificationMultiFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B736AC00();
  v12 = v17;
  sub_1B78023C8();
  if (!v12)
  {
    v13 = v15;
    sub_1B736939C(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B72A2B9C(v5, v11);
    sub_1B7369218(v11, v13, _s39NotificationMultiFulfillmentFormatStyleVMa);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B7369280(v11, _s39NotificationMultiFulfillmentFormatStyleVMa);
}

uint64_t sub_1B735F118(uint64_t a1)
{
  v2 = sub_1B736AC00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B735F154(uint64_t a1)
{
  v2 = sub_1B736AC00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B735F244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if (a3() & 1) != 0 && ((v7 = a4(0), v8 = *(v7 + 20), v9 = *(a1 + v8), v10 = *(a1 + v8 + 8), v11 = (a2 + v8), v9 == *v11) ? (v12 = v10 == v11[1]) : (v12 = 0), v12 || (sub_1B78020F8()))
  {
    v13 = *(a1 + *(v7 + 24)) ^ *(a2 + *(v7 + 24)) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1B735F2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a5() & 1) != 0 && ((v8 = *(a3 + 20), v9 = *(a1 + v8), v10 = *(a1 + v8 + 8), v11 = (a2 + v8), v9 == *v11) ? (v12 = v10 == v11[1]) : (v12 = 0), v12 || (sub_1B78020F8()))
  {
    v13 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

double sub_1B735F37C@<D0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v3 = a1();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v7 = qword_1EDAF93A8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDAF93B0;
    v9 = sub_1B7800838();
    v10 = sub_1B7800838();
    v11 = sub_1B7800838();
    v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

    v13 = sub_1B7800868();
    v15 = v14;

    *a2 = v13;
    a2[1] = v15;
    a2[2] = v5;
    a2[3] = v6;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1B735F4C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44[-v5 - 2];
  v7 = (a1 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
  v9 = *v7;
  v8 = v7[1];
  sub_1B7205588(a1, v6, &qword_1EB990820);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v15 = *v6;
    if (!*v6)
    {
      v14 = *v6;
      v13 = v14;
      v12 = v14;
      goto LABEL_14;
    }

    if (v15 == 1)
    {
      v16 = qword_1EDAF93A8;

      if (v16 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v30 = qword_1EDAF93A8;

      if (v30 == -1)
      {
LABEL_13:
        v31 = qword_1EDAF93B0;
        v32 = sub_1B7800838();
        v33 = sub_1B7800838();
        v34 = sub_1B7800838();
        v35 = [v31 localizedStringForKey:v32 value:v33 table:v34];

        v12 = sub_1B7800868();
        v13 = v36;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1B7807CD0;
        *(v37 + 56) = MEMORY[0x1E69E6158];
        *(v37 + 64) = sub_1B721FF04();
        *(v37 + 32) = v9;
        *(v37 + 40) = v8;
        v38 = sub_1B7800838();
        v39 = sub_1B7800838();
        v40 = sub_1B7800838();
        v41 = [v31 localizedStringForKey:v38 value:v39 table:v40];

        sub_1B7800868();
        v14 = sub_1B78008A8();
        v15 = v42;

        goto LABEL_14;
      }
    }

    swift_once();
    goto LABEL_13;
  }

  if (result == 1)
  {
    v11 = v6[1];
    v44[0] = *v6;
    v44[1] = v11;
    result = sub_1B73600A0(a1, v44, v45);
    v12 = v45[0];
    v13 = v45[1];
    v14 = v45[2];
    v15 = v45[3];
  }

  else
  {
    v17 = qword_1EDAF93A8;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDAF93B0;
    v19 = sub_1B7800838();
    v20 = sub_1B7800838();
    v21 = sub_1B7800838();
    v22 = [v18 localizedStringForKey:v19 value:v20 table:v21];

    v12 = sub_1B7800868();
    v13 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B7807CD0;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1B721FF04();
    *(v24 + 32) = v9;
    *(v24 + 40) = v8;
    v25 = sub_1B7800838();
    v26 = sub_1B7800838();
    v27 = sub_1B7800838();
    v28 = [v18 localizedStringForKey:v25 value:v26 table:v27];

    sub_1B7800868();
    v14 = sub_1B78008A8();
    v15 = v29;

    result = sub_1B7205418(v6, &qword_1EB990820);
  }

LABEL_14:
  *a2 = v12;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v15;
  return result;
}

uint64_t sub_1B735FB60(uint64_t a1)
{
  v2 = sub_1B7369458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B735FB9C(uint64_t a1)
{
  v2 = sub_1B7369458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.ShippingFulfillment.NotificationFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992820);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7369458();
  v12 = v17;
  sub_1B78023C8();
  if (!v12)
  {
    v13 = v15;
    sub_1B736939C(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B72A2B9C(v5, v11);
    sub_1B7369218(v11, v13, type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B7369280(v11, type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle);
}

double sub_1B735FEB0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = _s14descr1F2F3F6D1V40NotificationSingleFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s14descr1F2F3F6D1V39NotificationMultiFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 24)) == 1)
  {
    sub_1B7369218(v3, v11, type metadata accessor for FormatterConfiguration);
    sub_1B735F37C(sub_1B7362874, v16);
    v12 = _s14descr1F2F3F6D1V39NotificationMultiFulfillmentFormatStyleVMa;
    v13 = v11;
  }

  else
  {
    sub_1B7369218(v3, v8, type metadata accessor for FormatterConfiguration);
    sub_1B735F4C0(a1, v16);
    v12 = _s14descr1F2F3F6D1V40NotificationSingleFulfillmentFormatStyleVMa;
    v13 = v8;
  }

  sub_1B7369280(v13, v12);
  result = *v16;
  v15 = v16[1];
  *a2 = v16[0];
  a2[1] = v15;
  return result;
}

uint64_t sub_1B73600A0@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  result = type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0);
  v8 = (a1 + *(result + 20));
  v10 = *v8;
  v9 = v8[1];
  if (v5 > 3)
  {
    if (v5 > 5)
    {
      if (v5 == 6)
      {
        v27 = qword_1EDAF93A8;

        if (v27 == -1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v41 = qword_1EDAF93A8;

        if (v41 == -1)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_32;
    }

    if (v5 == 4)
    {
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v14 = qword_1EDAF93B0;
      v15 = sub_1B7800838();
      v16 = sub_1B7800838();
      v17 = sub_1B7800838();
      v18 = [v14 localizedStringForKey:v15 value:v16 table:v17];

      v5 = sub_1B7800868();
      v11 = v19;

      result = sub_1B73618CC(a1);
    }

    else
    {
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v29 = qword_1EDAF93B0;
      v30 = sub_1B7800838();
      v31 = sub_1B7800838();
      v32 = sub_1B7800838();
      v33 = [v29 localizedStringForKey:v30 value:v31 table:v32];

      v5 = sub_1B7800868();
      v11 = v34;

      v54 = v6;
      result = sub_1B7361EB8(a1, &v54);
    }

LABEL_26:
    v12 = result;
    v13 = v20;
    goto LABEL_31;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v21 = qword_1EDAF93B0;
      v22 = sub_1B7800838();
      v23 = sub_1B7800838();
      v24 = sub_1B7800838();
      v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

      v5 = sub_1B7800868();
      v11 = v26;

      result = sub_1B7360B54(a1);
    }

    else
    {
      if (qword_1EDAF93A8 != -1)
      {
        swift_once();
      }

      v35 = qword_1EDAF93B0;
      v36 = sub_1B7800838();
      v37 = sub_1B7800838();
      v38 = sub_1B7800838();
      v39 = [v35 localizedStringForKey:v36 value:v37 table:v38];

      v5 = sub_1B7800868();
      v11 = v40;

      result = sub_1B7361210(a1);
    }

    goto LABEL_26;
  }

  if (v5)
  {
    v28 = qword_1EDAF93A8;

    if (v6)
    {
      if (v28 == -1)
      {
        goto LABEL_30;
      }
    }

    else if (v28 == -1)
    {
LABEL_30:
      v42 = qword_1EDAF93B0;
      v43 = sub_1B7800838();
      v44 = sub_1B7800838();
      v45 = sub_1B7800838();
      v46 = [v42 localizedStringForKey:v43 value:v44 table:v45];

      v5 = sub_1B7800868();
      v11 = v47;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1B7807CD0;
      *(v48 + 56) = MEMORY[0x1E69E6158];
      *(v48 + 64) = sub_1B721FF04();
      *(v48 + 32) = v10;
      *(v48 + 40) = v9;
      v49 = sub_1B7800838();
      v50 = sub_1B7800838();
      v51 = sub_1B7800838();
      v52 = [v42 localizedStringForKey:v49 value:v50 table:v51];

      sub_1B7800868();
      v12 = sub_1B78008A8();
      v13 = v53;

      goto LABEL_31;
    }

LABEL_32:
    swift_once();
    goto LABEL_30;
  }

  v11 = v5;
  v12 = v5;
  v13 = v5;
LABEL_31:
  *a3 = v5;
  a3[1] = v11;
  a3[2] = v12;
  a3[3] = v13;
  return result;
}

uint64_t sub_1B7360B54(uint64_t a1)
{
  v45 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1B77FF988();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for Order.FulfillmentWindow(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Order.ShippingFulfillment.StatusValues(0) + 20);
  v48 = a1;
  sub_1B7205588(a1 + v15, v10, &qword_1EB990828);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7205418(v10, &qword_1EB990828);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B7807CD0;
    v17 = (v48 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v19 = *v17;
    v18 = v17[1];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1B721FF04();
    *(v16 + 32) = v19;
    *(v16 + 40) = v18;
    v20 = qword_1EDAF93A8;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDAF93B0;
    v22 = sub_1B7800838();
    v23 = sub_1B7800838();
    v24 = sub_1B7800838();
    v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

    sub_1B7800868();
    v26 = sub_1B78008A8();
  }

  else
  {
    sub_1B73692E0(v10, v14, type metadata accessor for Order.FulfillmentWindow);
    Order.FulfillmentWindow.isSingleDateWindow(calendar:)();
    Order.FulfillmentWindow.endDate.getter(v7);
    v27 = v43;
    sub_1B7369218(v1, v43, type metadata accessor for FormatterConfiguration);
    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v27, v5);
    v5[*(v47 + 20)] = 0;
    sub_1B736939C(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
    sub_1B77FF968();
    (*(v44 + 8))(v7, v46);
    sub_1B7369280(v5, type metadata accessor for FullDateFormatter);
    v28 = v49;
    v29 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B7808C50;
    v31 = (v48 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v33 = *v31;
    v32 = v31[1];
    v34 = MEMORY[0x1E69E6158];
    *(v30 + 56) = MEMORY[0x1E69E6158];
    v35 = sub_1B721FF04();
    *(v30 + 32) = v33;
    *(v30 + 40) = v32;
    *(v30 + 96) = v34;
    *(v30 + 104) = v35;
    *(v30 + 64) = v35;
    *(v30 + 72) = v28;
    *(v30 + 80) = v29;
    v36 = qword_1EDAF93A8;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDAF93B0;
    v38 = sub_1B7800838();

    v39 = sub_1B7800838();
    v40 = sub_1B7800838();
    v41 = [v37 localizedStringForKey:v38 value:v39 table:v40];

    sub_1B7800868();
    v26 = sub_1B78008A8();

    sub_1B7369280(v14, type metadata accessor for Order.FulfillmentWindow);
  }

  return v26;
}

uint64_t sub_1B7361210(uint64_t a1)
{
  v45 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1B77FF988();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for Order.FulfillmentWindow(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Order.ShippingFulfillment.StatusValues(0) + 20);
  v48 = a1;
  sub_1B7205588(a1 + v15, v10, &qword_1EB990828);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7205418(v10, &qword_1EB990828);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B7807CD0;
    v17 = (v48 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v19 = *v17;
    v18 = v17[1];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1B721FF04();
    *(v16 + 32) = v19;
    *(v16 + 40) = v18;
    v20 = qword_1EDAF93A8;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDAF93B0;
    v22 = sub_1B7800838();
    v23 = sub_1B7800838();
    v24 = sub_1B7800838();
    v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

    sub_1B7800868();
    v26 = sub_1B78008A8();
  }

  else
  {
    sub_1B73692E0(v10, v14, type metadata accessor for Order.FulfillmentWindow);
    Order.FulfillmentWindow.isSingleDateWindow(calendar:)();
    Order.FulfillmentWindow.endDate.getter(v7);
    v27 = v43;
    sub_1B7369218(v1, v43, type metadata accessor for FormatterConfiguration);
    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v27, v5);
    v5[*(v47 + 20)] = 0;
    sub_1B736939C(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
    sub_1B77FF968();
    (*(v44 + 8))(v7, v46);
    sub_1B7369280(v5, type metadata accessor for FullDateFormatter);
    v28 = v49;
    v29 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B7808C50;
    v31 = (v48 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v33 = *v31;
    v32 = v31[1];
    v34 = MEMORY[0x1E69E6158];
    *(v30 + 56) = MEMORY[0x1E69E6158];
    v35 = sub_1B721FF04();
    *(v30 + 32) = v33;
    *(v30 + 40) = v32;
    *(v30 + 96) = v34;
    *(v30 + 104) = v35;
    *(v30 + 64) = v35;
    *(v30 + 72) = v28;
    *(v30 + 80) = v29;
    v36 = qword_1EDAF93A8;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDAF93B0;
    v38 = sub_1B7800838();

    v39 = sub_1B7800838();
    v40 = sub_1B7800838();
    v41 = [v37 localizedStringForKey:v38 value:v39 table:v40];

    sub_1B7800868();
    v26 = sub_1B78008A8();

    sub_1B7369280(v14, type metadata accessor for Order.FulfillmentWindow);
  }

  return v26;
}

uint64_t sub_1B73618CC(uint64_t a1)
{
  v2 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
  sub_1B7205588(a1 + *(v14 + 24), v9, &qword_1EB98EBD0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B7205418(v9, &qword_1EB98EBD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B7807CD0;
    v16 = (a1 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v18 = *v16;
    v17 = v16[1];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1B721FF04();
    *(v15 + 32) = v18;
    *(v15 + 40) = v17;
    v19 = qword_1EDAF93A8;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDAF93B0;
    v21 = sub_1B7800838();
    v22 = sub_1B7800838();
    v23 = sub_1B7800838();
    v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

    sub_1B7800868();
    v25 = sub_1B78008A8();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v39 = "HIPPING_DELIVERED";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1B7808C50;
    v27 = (a1 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v29 = *v27;
    v28 = v27[1];
    v40 = v10;
    v30 = MEMORY[0x1E69E6158];
    *(v26 + 56) = MEMORY[0x1E69E6158];
    v31 = sub_1B721FF04();
    *(v26 + 64) = v31;
    *(v26 + 32) = v29;
    *(v26 + 40) = v28;
    sub_1B7369218(v41, v4, type metadata accessor for FormatterConfiguration);

    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v4, v6);
    v6[*(v42 + 20)] = 0;
    *(v26 + 96) = v30;
    *(v26 + 104) = v31;
    sub_1B736939C(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
    sub_1B77FF968();
    sub_1B7369280(v6, type metadata accessor for FullDateFormatter);
    v32 = v13;
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v33 = qword_1EDAF93B0;
    v34 = sub_1B7800838();
    v35 = sub_1B7800838();
    v36 = sub_1B7800838();
    v37 = [v33 localizedStringForKey:v34 value:v35 table:v36];

    sub_1B7800868();
    v25 = sub_1B78008A8();

    (*(v11 + 8))(v32, v40);
  }

  return v25;
}

uint64_t sub_1B7361EB8(uint64_t a1, unsigned __int8 *a2)
{
  v44 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v44);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v45);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v43 - v9;
  v11 = sub_1B77FF988();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = *(type metadata accessor for Order.ShippingFulfillment.StatusValues(0) + 28);
  v46 = a1;
  sub_1B7205588(a1 + v16, v10, &qword_1EB98EBD0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7205418(v10, &qword_1EB98EBD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B7807CD0;
    v18 = (v46 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v20 = *v18;
    v19 = v18[1];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1B721FF04();
    *(v17 + 32) = v20;
    *(v17 + 40) = v19;
    v21 = qword_1EDAF93A8;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDAF93B0;
    v23 = sub_1B7800838();

    v24 = sub_1B7800838();
    v25 = sub_1B7800838();
    v26 = [v22 localizedStringForKey:v23 value:v24 table:v25];

    sub_1B7800868();
    v27 = sub_1B78008A8();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v28 = 0xD000000000000039;
    if (v15)
    {
      v28 = 0xD00000000000003CLL;
    }

    v43[1] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1B7808C50;
    v30 = (v46 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v32 = *v30;
    v31 = v30[1];
    v33 = MEMORY[0x1E69E6158];
    *(v29 + 56) = MEMORY[0x1E69E6158];
    v34 = sub_1B721FF04();
    v46 = v11;
    v35 = v34;
    *(v29 + 64) = v34;
    *(v29 + 32) = v32;
    *(v29 + 40) = v31;
    sub_1B7369218(v43[2], v5, type metadata accessor for FormatterConfiguration);

    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v5, v7);
    v7[*(v45 + 20)] = 0;
    *(v29 + 96) = v33;
    *(v29 + 104) = v35;
    sub_1B736939C(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
    sub_1B77FF968();
    sub_1B7369280(v7, type metadata accessor for FullDateFormatter);
    v36 = v14;
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDAF93B0;
    v38 = sub_1B7800838();

    v39 = sub_1B7800838();
    v40 = sub_1B7800838();
    v41 = [v37 localizedStringForKey:v38 value:v39 table:v40];

    sub_1B7800868();
    v27 = sub_1B78008A8();

    (*(v12 + 8))(v36, v46);
  }

  return v27;
}

uint64_t sub_1B7362508@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992B38);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = _s14descr1F2F3F6D1V40NotificationSingleFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B736ACFC();
  v12 = v17;
  sub_1B78023C8();
  if (!v12)
  {
    v13 = v15;
    sub_1B736939C(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B72A2B9C(v5, v11);
    sub_1B7369218(v11, v13, _s14descr1F2F3F6D1V40NotificationSingleFulfillmentFormatStyleVMa);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B7369280(v11, _s14descr1F2F3F6D1V40NotificationSingleFulfillmentFormatStyleVMa);
}

uint64_t sub_1B736279C(uint64_t a1)
{
  v2 = sub_1B736ACFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73627D8(uint64_t a1)
{
  v2 = sub_1B736ACFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7362874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29[-v3 - 2];
  v5 = (a1 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
  v7 = *v5;
  v6 = v5[1];
  sub_1B7205588(a1, v4, &qword_1EB990820);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = v4[1];
      v29[0] = *v4;
      v29[1] = v9;
      return sub_1B7362D48(a1, v29);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B7807CD0;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1B721FF04();
    *(v13 + 32) = v7;
    *(v13 + 40) = v6;
    v14 = qword_1EDAF93A8;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDAF93B0;
    v16 = sub_1B7800838();
    v17 = sub_1B7800838();
    v18 = sub_1B7800838();
    v19 = [v15 localizedStringForKey:v16 value:v17 table:v18];

    sub_1B7800868();
    v20 = sub_1B78008A8();

    sub_1B7205418(v4, &qword_1EB990820);
    return v20;
  }

  result = *v4;
  if (*v4)
  {
    if (result == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1B7807CD0;
      *(v11 + 56) = MEMORY[0x1E69E6158];
      *(v11 + 64) = sub_1B721FF04();
      *(v11 + 32) = v7;
      *(v11 + 40) = v6;
      v12 = qword_1EDAF93A8;

      if (v12 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1B7807CD0;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1B721FF04();
      *(v21 + 32) = v7;
      *(v21 + 40) = v6;
      v22 = qword_1EDAF93A8;

      if (v22 == -1)
      {
LABEL_13:
        v23 = qword_1EDAF93B0;
        v24 = sub_1B7800838();
        v25 = sub_1B7800838();
        v26 = sub_1B7800838();
        v27 = [v23 localizedStringForKey:v24 value:v25 table:v26];

        sub_1B7800868();
        v20 = sub_1B78008A8();

        return v20;
      }
    }

    swift_once();
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1B7362D48(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = (a1 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
  v7 = *v5;
  v6 = v5[1];
  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1B7807CD0;
        *(v10 + 56) = MEMORY[0x1E69E6158];
        *(v10 + 64) = sub_1B721FF04();
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        v11 = qword_1EDAF93A8;

        if (v11 == -1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1B7807CD0;
        *(v12 + 56) = MEMORY[0x1E69E6158];
        *(v12 + 64) = sub_1B721FF04();
        *(v12 + 32) = v7;
        *(v12 + 40) = v6;
        v13 = qword_1EDAF93A8;

        if (v13 == -1)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_22;
    }

    if (v3 == 4)
    {
      return sub_1B7363F90(a1);
    }

    else
    {
      v20 = v4;
      return sub_1B736457C(a1, &v20);
    }
  }

  else if (v3 > 1)
  {
    if (v3 == 2)
    {
      return sub_1B7363218(a1);
    }

    else
    {
      return sub_1B73638D4(a1);
    }
  }

  else if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B7807CD0;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1B721FF04();
    *(v8 + 32) = v7;
    *(v8 + 40) = v6;
    v9 = qword_1EDAF93A8;

    if (v4)
    {
      if (v9 == -1)
      {
        goto LABEL_20;
      }
    }

    else if (v9 == -1)
    {
LABEL_20:
      v14 = qword_1EDAF93B0;
      v15 = sub_1B7800838();
      v16 = sub_1B7800838();
      v17 = sub_1B7800838();
      v18 = [v14 localizedStringForKey:v15 value:v16 table:v17];

      sub_1B7800868();
      v3 = sub_1B78008A8();

      return v3;
    }

LABEL_22:
    swift_once();
    goto LABEL_20;
  }

  return v3;
}

uint64_t sub_1B7363218(uint64_t a1)
{
  v45 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1B77FF988();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for Order.FulfillmentWindow(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Order.ShippingFulfillment.StatusValues(0) + 20);
  v48 = a1;
  sub_1B7205588(a1 + v15, v10, &qword_1EB990828);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7205418(v10, &qword_1EB990828);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B7807CD0;
    v17 = (v48 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v19 = *v17;
    v18 = v17[1];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1B721FF04();
    *(v16 + 32) = v19;
    *(v16 + 40) = v18;
    v20 = qword_1EDAF93A8;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDAF93B0;
    v22 = sub_1B7800838();
    v23 = sub_1B7800838();
    v24 = sub_1B7800838();
    v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

    sub_1B7800868();
    v26 = sub_1B78008A8();
  }

  else
  {
    sub_1B73692E0(v10, v14, type metadata accessor for Order.FulfillmentWindow);
    Order.FulfillmentWindow.isSingleDateWindow(calendar:)();
    Order.FulfillmentWindow.endDate.getter(v7);
    v27 = v43;
    sub_1B7369218(v1, v43, type metadata accessor for FormatterConfiguration);
    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v27, v5);
    v5[*(v47 + 20)] = 0;
    sub_1B736939C(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
    sub_1B77FF968();
    (*(v44 + 8))(v7, v46);
    sub_1B7369280(v5, type metadata accessor for FullDateFormatter);
    v28 = v49;
    v29 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B7808C50;
    v31 = (v48 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v33 = *v31;
    v32 = v31[1];
    v34 = MEMORY[0x1E69E6158];
    *(v30 + 56) = MEMORY[0x1E69E6158];
    v35 = sub_1B721FF04();
    *(v30 + 32) = v33;
    *(v30 + 40) = v32;
    *(v30 + 96) = v34;
    *(v30 + 104) = v35;
    *(v30 + 64) = v35;
    *(v30 + 72) = v28;
    *(v30 + 80) = v29;
    v36 = qword_1EDAF93A8;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDAF93B0;
    v38 = sub_1B7800838();

    v39 = sub_1B7800838();
    v40 = sub_1B7800838();
    v41 = [v37 localizedStringForKey:v38 value:v39 table:v40];

    sub_1B7800868();
    v26 = sub_1B78008A8();

    sub_1B7369280(v14, type metadata accessor for Order.FulfillmentWindow);
  }

  return v26;
}

uint64_t sub_1B73638D4(uint64_t a1)
{
  v45 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1B77FF988();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for Order.FulfillmentWindow(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Order.ShippingFulfillment.StatusValues(0) + 20);
  v48 = a1;
  sub_1B7205588(a1 + v15, v10, &qword_1EB990828);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7205418(v10, &qword_1EB990828);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B7807CD0;
    v17 = (v48 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v19 = *v17;
    v18 = v17[1];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1B721FF04();
    *(v16 + 32) = v19;
    *(v16 + 40) = v18;
    v20 = qword_1EDAF93A8;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDAF93B0;
    v22 = sub_1B7800838();
    v23 = sub_1B7800838();
    v24 = sub_1B7800838();
    v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

    sub_1B7800868();
    v26 = sub_1B78008A8();
  }

  else
  {
    sub_1B73692E0(v10, v14, type metadata accessor for Order.FulfillmentWindow);
    Order.FulfillmentWindow.isSingleDateWindow(calendar:)();
    Order.FulfillmentWindow.endDate.getter(v7);
    v27 = v43;
    sub_1B7369218(v1, v43, type metadata accessor for FormatterConfiguration);
    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v27, v5);
    v5[*(v47 + 20)] = 0;
    sub_1B736939C(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
    sub_1B77FF968();
    (*(v44 + 8))(v7, v46);
    sub_1B7369280(v5, type metadata accessor for FullDateFormatter);
    v28 = v49;
    v29 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B7808C50;
    v31 = (v48 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v33 = *v31;
    v32 = v31[1];
    v34 = MEMORY[0x1E69E6158];
    *(v30 + 56) = MEMORY[0x1E69E6158];
    v35 = sub_1B721FF04();
    *(v30 + 32) = v33;
    *(v30 + 40) = v32;
    *(v30 + 96) = v34;
    *(v30 + 104) = v35;
    *(v30 + 64) = v35;
    *(v30 + 72) = v28;
    *(v30 + 80) = v29;
    v36 = qword_1EDAF93A8;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDAF93B0;
    v38 = sub_1B7800838();

    v39 = sub_1B7800838();
    v40 = sub_1B7800838();
    v41 = [v37 localizedStringForKey:v38 value:v39 table:v40];

    sub_1B7800868();
    v26 = sub_1B78008A8();

    sub_1B7369280(v14, type metadata accessor for Order.FulfillmentWindow);
  }

  return v26;
}

uint64_t sub_1B7363F90(uint64_t a1)
{
  v2 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
  sub_1B7205588(a1 + *(v14 + 24), v9, &qword_1EB98EBD0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B7205418(v9, &qword_1EB98EBD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B7807CD0;
    v16 = (a1 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v18 = *v16;
    v17 = v16[1];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1B721FF04();
    *(v15 + 32) = v18;
    *(v15 + 40) = v17;
    v19 = qword_1EDAF93A8;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDAF93B0;
    v21 = sub_1B7800838();
    v22 = sub_1B7800838();
    v23 = sub_1B7800838();
    v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

    sub_1B7800868();
    v25 = sub_1B78008A8();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v39 = "IPPING_DELIVERED";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1B7808C50;
    v27 = (a1 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v29 = *v27;
    v28 = v27[1];
    v40 = v10;
    v30 = MEMORY[0x1E69E6158];
    *(v26 + 56) = MEMORY[0x1E69E6158];
    v31 = sub_1B721FF04();
    *(v26 + 64) = v31;
    *(v26 + 32) = v29;
    *(v26 + 40) = v28;
    sub_1B7369218(v41, v4, type metadata accessor for FormatterConfiguration);

    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v4, v6);
    v6[*(v42 + 20)] = 0;
    *(v26 + 96) = v30;
    *(v26 + 104) = v31;
    sub_1B736939C(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
    sub_1B77FF968();
    sub_1B7369280(v6, type metadata accessor for FullDateFormatter);
    v32 = v13;
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v33 = qword_1EDAF93B0;
    v34 = sub_1B7800838();
    v35 = sub_1B7800838();
    v36 = sub_1B7800838();
    v37 = [v33 localizedStringForKey:v34 value:v35 table:v36];

    sub_1B7800868();
    v25 = sub_1B78008A8();

    (*(v11 + 8))(v32, v40);
  }

  return v25;
}

uint64_t sub_1B736457C(uint64_t a1, unsigned __int8 *a2)
{
  v44 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v44);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v45);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v43 - v9;
  v11 = sub_1B77FF988();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = *(type metadata accessor for Order.ShippingFulfillment.StatusValues(0) + 28);
  v46 = a1;
  sub_1B7205588(a1 + v16, v10, &qword_1EB98EBD0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7205418(v10, &qword_1EB98EBD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B7807CD0;
    v18 = (v46 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v20 = *v18;
    v19 = v18[1];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1B721FF04();
    *(v17 + 32) = v20;
    *(v17 + 40) = v19;
    v21 = qword_1EDAF93A8;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDAF93B0;
    v23 = sub_1B7800838();

    v24 = sub_1B7800838();
    v25 = sub_1B7800838();
    v26 = [v22 localizedStringForKey:v23 value:v24 table:v25];

    sub_1B7800868();
    v27 = sub_1B78008A8();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v28 = 0xD000000000000038;
    if (v15)
    {
      v28 = 0xD00000000000003BLL;
    }

    v43[1] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1B7808C50;
    v30 = (v46 + *(type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0) + 20));
    v32 = *v30;
    v31 = v30[1];
    v33 = MEMORY[0x1E69E6158];
    *(v29 + 56) = MEMORY[0x1E69E6158];
    v34 = sub_1B721FF04();
    v46 = v11;
    v35 = v34;
    *(v29 + 64) = v34;
    *(v29 + 32) = v32;
    *(v29 + 40) = v31;
    sub_1B7369218(v43[2], v5, type metadata accessor for FormatterConfiguration);

    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v5, v7);
    v7[*(v45 + 20)] = 0;
    *(v29 + 96) = v33;
    *(v29 + 104) = v35;
    sub_1B736939C(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
    sub_1B77FF968();
    sub_1B7369280(v7, type metadata accessor for FullDateFormatter);
    v36 = v14;
    if (qword_1EDAF93A8 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDAF93B0;
    v38 = sub_1B7800838();

    v39 = sub_1B7800838();
    v40 = sub_1B7800838();
    v41 = [v37 localizedStringForKey:v38 value:v39 table:v40];

    sub_1B7800868();
    v27 = sub_1B78008A8();

    (*(v12 + 8))(v36, v46);
  }

  return v27;
}

uint64_t sub_1B7364BCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992B20);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = _s14descr1F2F3F6D1V39NotificationMultiFulfillmentFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B736ACA8();
  v12 = v17;
  sub_1B78023C8();
  if (!v12)
  {
    v13 = v15;
    sub_1B736939C(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B72A2B9C(v5, v11);
    sub_1B7369218(v11, v13, _s14descr1F2F3F6D1V39NotificationMultiFulfillmentFormatStyleVMa);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B7369280(v11, _s14descr1F2F3F6D1V39NotificationMultiFulfillmentFormatStyleVMa);
}

uint64_t sub_1B7364E60(uint64_t a1)
{
  v2 = sub_1B736ACA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7364E9C(uint64_t a1)
{
  v2 = sub_1B736ACA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s10FinanceKit5OrderV11FulfillmentO23NotificationFormatStyleV13configurationAgA22FormatterConfigurationV_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B77FFA68();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFBC8();
  sub_1B77FFCC8();

  return sub_1B72A2B9C(a1, a2);
}

uint64_t Order.Return.NotificationFormatStyle.format(_:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = _s35NotificationSingleReturnFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s34NotificationMultiReturnFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[24] == 1)
  {
    sub_1B7369218(v3, v11, type metadata accessor for FormatterConfiguration);
    sub_1B7365150(a1, v18);
    v12 = _s34NotificationMultiReturnFormatStyleVMa;
    v13 = v11;
  }

  else
  {
    sub_1B7369218(v3, v8, type metadata accessor for FormatterConfiguration);
    sub_1B736598C(a1, v18);
    v12 = _s35NotificationSingleReturnFormatStyleVMa;
    v13 = v8;
  }

  result = sub_1B7369280(v13, v12);
  v15 = v18[1];
  v16 = v18[2];
  v17 = v18[3];
  *a2 = v18[0];
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v17;
  return result;
}

uint64_t sub_1B7365150@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v57 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v58);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v54 - v7;
  v9 = sub_1B77FF988();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDAF93B0;
  v12 = sub_1B7800838();
  v13 = sub_1B7800838();
  v14 = sub_1B7800838();
  v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

  v16 = sub_1B7800868();
  v62 = v17;

  v18 = a1;
  if (*a1 > 2u || *a1)
  {
    v19 = sub_1B7800838();
    v20 = sub_1B7800838();
    v21 = sub_1B7800838();
    v22 = [v11 localizedStringForKey:v19 value:v20 table:v21];
  }

  else
  {
    v23 = type metadata accessor for Order.Return.NotificationFormatStyle.Input(0);
    sub_1B7205588(&a1[*(v23 + 28)], v8, &qword_1EB98EBD0);
    v24 = v60;
    if ((*(v60 + 48))(v8, 1, v61) != 1)
    {
      v36 = v59;
      (*(v24 + 32))();
      v37 = sub_1B7800838();
      v38 = v24;
      v39 = sub_1B7800838();
      v40 = sub_1B7800838();
      v41 = v18;
      v42 = [v11 localizedStringForKey:v37 value:v39 table:v40];

      v54 = sub_1B7800868();
      v43 = v55;
      sub_1B7369218(v56, v55, type metadata accessor for FormatterConfiguration);
      sub_1B77FFA68();
      sub_1B77FFBC8();
      sub_1B77FFCC8();
      sub_1B72A2B9C(v43, v5);
      v5[*(v58 + 20)] = 0;
      sub_1B736939C(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
      v44 = v36;
      sub_1B77FF968();
      sub_1B7369280(v5, type metadata accessor for FullDateFormatter);
      v45 = v64;
      v46 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1B7808C50;
      v48 = v16;
      v50 = *(v41 + 1);
      v49 = *(v41 + 2);
      v51 = MEMORY[0x1E69E6158];
      *(v47 + 56) = MEMORY[0x1E69E6158];
      v52 = sub_1B721FF04();
      *(v47 + 32) = v50;
      *(v47 + 40) = v49;
      v16 = v48;
      *(v47 + 96) = v51;
      *(v47 + 104) = v52;
      *(v47 + 64) = v52;
      *(v47 + 72) = v45;
      *(v47 + 80) = v46;

      v30 = sub_1B78008B8();
      v32 = v53;

      result = (*(v38 + 8))(v44, v61);
      goto LABEL_10;
    }

    sub_1B7205418(v8, &qword_1EB98EBD0);
    v19 = sub_1B7800838();
    v20 = sub_1B7800838();
    v21 = sub_1B7800838();
    v22 = [v11 localizedStringForKey:v19 value:v20 table:v21];
  }

  v25 = v22;

  sub_1B7800868();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B7807CD0;
  v27 = v18;
  v28 = *(v18 + 1);
  v29 = *(v27 + 2);
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = sub_1B721FF04();
  *(v26 + 32) = v28;
  *(v26 + 40) = v29;

  v30 = sub_1B78008B8();
  v32 = v31;

LABEL_10:
  v35 = v62;
  v34 = v63;
  *v63 = v16;
  v34[1] = v35;
  v34[2] = v30;
  v34[3] = v32;
  return result;
}

void sub_1B736598C(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FullDateFormatter();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v81 - v12;
  v14 = sub_1B77FF988();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v18 = *a1;
  if (v18 > 2)
  {
    if (v18 == 3)
    {
      if (qword_1EDAF93A8 == -1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v18 == 4)
      {
        v89 = a1;
        if (qword_1EDAF93A8 == -1)
        {
          goto LABEL_17;
        }

        goto LABEL_24;
      }

      if (qword_1EDAF93A8 == -1)
      {
LABEL_19:
        v56 = qword_1EDAF93B0;
        v57 = sub_1B7800838();
        v58 = sub_1B7800838();
        v59 = sub_1B7800838();
        v60 = [v56 localizedStringForKey:v57 value:v58 table:v59];

        v54 = sub_1B7800868();
        v46 = v61;

        v62 = sub_1B7800838();
        v63 = sub_1B7800838();
        v64 = sub_1B7800838();
        v65 = [v56 localizedStringForKey:v62 value:v63 table:v64];

        v36 = sub_1B7800868();
        v38 = v66;

        goto LABEL_22;
      }
    }

    swift_once();
    goto LABEL_19;
  }

  v89 = a1;
  if (v18)
  {
    if (v18 == 1)
    {
      if (qword_1EDAF93A8 == -1)
      {
        goto LABEL_17;
      }
    }

    else if (qword_1EDAF93A8 == -1)
    {
LABEL_17:
      v39 = qword_1EDAF93B0;
      v40 = sub_1B7800838();
      v41 = sub_1B7800838();
      v42 = sub_1B7800838();
      v43 = [v39 localizedStringForKey:v40 value:v41 table:v42];

      v44 = sub_1B7800868();
      v46 = v45;

      v47 = sub_1B7800838();
      v48 = sub_1B7800838();
      v49 = sub_1B7800838();
      v50 = [v39 localizedStringForKey:v47 value:v48 table:v49];

      sub_1B7800868();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1B7807CD0;
      v53 = *(v89 + 1);
      v52 = *(v89 + 2);
      v54 = v44;
      *(v51 + 56) = MEMORY[0x1E69E6158];
      *(v51 + 64) = sub_1B721FF04();
      *(v51 + 32) = v53;
      *(v51 + 40) = v52;

      v36 = sub_1B78008B8();
      v38 = v55;

      goto LABEL_22;
    }

LABEL_24:
    swift_once();
    goto LABEL_17;
  }

  v83 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a2;
  v87 = v17;
  v88 = v15;
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDAF93B0;
  v20 = sub_1B7800838();
  v21 = sub_1B7800838();
  v81[1] = "FinanceKit_Localizable";
  v22 = sub_1B7800838();
  v82 = v19;
  v23 = [v19 localizedStringForKey:v20 value:v21 table:v22];

  v24 = sub_1B7800868();
  v84 = v25;
  v85 = v24;

  v26 = type metadata accessor for Order.Return.NotificationFormatStyle.Input(0);
  v27 = v89;
  sub_1B7205588(&v89[*(v26 + 28)], v13, &qword_1EB98EBD0);
  v28 = v87;
  if ((*(v87 + 48))(v13, 1, v88) == 1)
  {
    sub_1B7205418(v13, &qword_1EB98EBD0);
    v29 = sub_1B7800838();
    v30 = sub_1B7800838();
    v31 = sub_1B7800838();
    v32 = [v82 localizedStringForKey:v29 value:v30 table:v31];

    sub_1B7800868();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1B7807CD0;
    v35 = *(v27 + 1);
    v34 = *(v27 + 2);
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = sub_1B721FF04();
    *(v33 + 32) = v35;
    *(v33 + 40) = v34;

    v36 = sub_1B78008B8();
    v38 = v37;
  }

  else
  {
    (*(v28 + 32))(v83, v13, v88);
    v67 = sub_1B7800838();
    v68 = sub_1B7800838();
    v69 = sub_1B7800838();
    v70 = v27;
    v71 = [v82 localizedStringForKey:v67 value:v68 table:v69];

    v82 = sub_1B7800868();
    sub_1B7369218(v2, v7, type metadata accessor for FormatterConfiguration);
    sub_1B77FFA68();
    sub_1B77FFBC8();
    sub_1B77FFCC8();
    sub_1B72A2B9C(v7, v10);
    v10[*(v8 + 20)] = 0;
    sub_1B736939C(&qword_1EB992B50, type metadata accessor for FullDateFormatter);
    v72 = v83;
    sub_1B77FF968();
    sub_1B7369280(v10, type metadata accessor for FullDateFormatter);
    v73 = v90;
    v74 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1B7808C50;
    v77 = *(v70 + 1);
    v76 = *(v70 + 2);
    v78 = MEMORY[0x1E69E6158];
    *(v75 + 56) = MEMORY[0x1E69E6158];
    v79 = sub_1B721FF04();
    *(v75 + 32) = v77;
    *(v75 + 40) = v76;
    *(v75 + 96) = v78;
    *(v75 + 104) = v79;
    *(v75 + 64) = v79;
    *(v75 + 72) = v73;
    *(v75 + 80) = v74;

    v36 = sub_1B78008B8();
    v38 = v80;

    (*(v87 + 8))(v72, v88);
  }

  v54 = v85;
  a2 = v86;
  v46 = v84;
LABEL_22:
  *a2 = v54;
  a2[1] = v46;
  a2[2] = v36;
  a2[3] = v38;
}

uint64_t sub_1B73666B0(uint64_t a1)
{
  v2 = sub_1B73694EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73666EC(uint64_t a1)
{
  v2 = sub_1B73694EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B736676C(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration();
  sub_1B736939C(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t _s10FinanceKit5OrderV11FulfillmentO23NotificationFormatStyleV4hash4intoys6HasherVz_tF_0()
{
  sub_1B77FFAF8();
  sub_1B736939C(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B736939C(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B736939C(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  return sub_1B7800768();
}

uint64_t _s10FinanceKit5OrderV11FulfillmentO23NotificationFormatStyleV9hashValueSivg_0()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B736939C(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B736939C(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B736939C(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t Order.Return.NotificationFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992838);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Order.Return.NotificationFormatStyle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B73694EC();
  v12 = v17;
  sub_1B78023C8();
  if (!v12)
  {
    v13 = v15;
    sub_1B736939C(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B72A2B9C(v5, v11);
    sub_1B7369218(v11, v13, type metadata accessor for Order.Return.NotificationFormatStyle);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B7369280(v11, type metadata accessor for Order.Return.NotificationFormatStyle);
}

uint64_t sub_1B7366E70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992AD8);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = _s35NotificationSingleReturnFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B736ABAC();
  sub_1B78023C8();
  if (!v2)
  {
    v12 = v15;
    sub_1B736939C(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    v13 = v17;
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B73692E0(v13, v11, type metadata accessor for FormatterConfiguration);
    sub_1B73692E0(v11, v12, _s35NotificationSingleReturnFormatStyleVMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B73670E4(uint64_t a1)
{
  v2 = sub_1B736ABAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7367120(uint64_t a1)
{
  v2 = sub_1B736ABAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B73671BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992AC0);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = _s34NotificationMultiReturnFormatStyleVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B736AB58();
  sub_1B78023C8();
  if (!v2)
  {
    v12 = v15;
    sub_1B736939C(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    v13 = v17;
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B73692E0(v13, v11, type metadata accessor for FormatterConfiguration);
    sub_1B73692E0(v11, v12, _s34NotificationMultiReturnFormatStyleVMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7367430(uint64_t a1)
{
  v2 = sub_1B736AB58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B736746C(uint64_t a1)
{
  v2 = sub_1B736AB58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7367508(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration();
  sub_1B736939C(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B7367688()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B736939C(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B736939C(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B736939C(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t Order.Fulfillment.NotificationFormatStyle.Input.init(order:orderContent:fulfillment:)@<X0>(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v77 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v84 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v77 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v77 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v77 - v26;
  v82 = a1;
  v83 = a2;
  if ((a3 & 0x8000000000000000) != 0)
  {
    v38 = a1;
    v39 = a2;
    v33 = (a3 & 0x7FFFFFFFFFFFFFFFLL);
    v40 = ManagedOrderPickupFulfillment.status.getter();
    v84 = v39;
    Order.Fulfillment.DisplayStatus<>.init(order:orderContent:pickupStatus:)(v38, v39, v40, v27);
    ManagedOrderPickupFulfillment.pickupWindow.getter(v24);
    v41 = [v33 pickedUpDate];
    if (v41)
    {
      v42 = v41;
      sub_1B77FF928();

      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v62 = sub_1B77FF988();
    v63 = *(*(v62 - 8) + 56);
    v63(v18, v43, 1, v62);
    v64 = type metadata accessor for Order.PickupFulfillment.StatusValues(0);
    v65 = *(v64 + 20);
    v66 = type metadata accessor for Order.FulfillmentWindow(0);
    (*(*(v66 - 8) + 56))(a4 + v65, 1, 1, v66);
    v67 = *(v64 + 24);
    v63((a4 + v67), 1, 1, v62);
    sub_1B722376C(v27, a4, &qword_1EB990830);
    sub_1B7213740(v24, a4 + v65, &qword_1EB990828);
    sub_1B7213740(v18, a4 + v67, &qword_1EB98EBD0);
    v68 = [v84 merchant];
    v69 = [v68 displayName];

    v70 = sub_1B77FFA48();
    v58 = sub_1B741F7D4(v70);
    v60 = v71;

    v61 = type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0);
  }

  else
  {
    v77 = a4;
    v28 = a1;
    v29 = a2;
    v30 = a3;
    v31 = v28;
    v32 = v29;
    v33 = v30;
    LOBYTE(v28) = ManagedOrderShippingFulfillment.status.getter();
    v34 = ManagedOrderShippingFulfillment.shippingType.getter();
    v80 = v10;
    v81 = v32;
    Order.Fulfillment.DisplayStatus<>.init(order:orderContent:shippingStatus:shippingType:)(v31, v32, v28, v34 & 1, v10);
    ManagedOrderShippingFulfillment.estimatedDeliveryWindow.getter(v22);
    v35 = [v33 deliveryDate];
    v78 = v22;
    if (v35)
    {
      v36 = v35;
      sub_1B77FF928();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v44 = sub_1B77FF988();
    v45 = *(*(v44 - 8) + 56);
    v46 = 1;
    v45(v16, v37, 1, v44);
    v47 = [v33 shippedDate];
    v79 = v16;
    if (v47)
    {
      v48 = v47;
      sub_1B77FF928();

      v46 = 0;
    }

    v49 = v84;
    v45(v84, v46, 1, v44);
    v50 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
    v51 = v50[5];
    v52 = type metadata accessor for Order.FulfillmentWindow(0);
    a4 = v77;
    (*(*(v52 - 8) + 56))(v77 + v51, 1, 1, v52);
    v53 = v50[6];
    v45((a4 + v53), 1, 1, v44);
    v54 = v50[7];
    v45((a4 + v54), 1, 1, v44);
    sub_1B722376C(v80, a4, &qword_1EB990820);
    sub_1B7213740(v78, a4 + v51, &qword_1EB990828);
    sub_1B7213740(v79, a4 + v53, &qword_1EB98EBD0);
    sub_1B7213740(v49, a4 + v54, &qword_1EB98EBD0);
    v55 = [v81 merchant];
    v56 = [v55 displayName];

    v57 = sub_1B77FFA48();
    v58 = sub_1B741F7D4(v57);
    v60 = v59;

    v61 = type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0);
  }

  v72 = (a4 + *(v61 + 20));
  *v72 = v58;
  v72[1] = v60;
  v73 = v83;
  v74 = ManagedECommerceOrderContent.fulfillments.getter();

  v75 = *(v74 + 2);

  *(a4 + *(v61 + 24)) = v75 > 1;
  type metadata accessor for Order.Fulfillment.NotificationFormatStyle.Input(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Order.PickupFulfillment.NotificationFormatStyle.Input.init(order:orderContent:fulfillment:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v40 - v15;
  v17 = a1;
  v18 = a2;
  v19 = ManagedOrderPickupFulfillment.status.getter();
  v40 = v17;
  Order.Fulfillment.DisplayStatus<>.init(order:orderContent:pickupStatus:)(v17, v18, v19, v16);
  ManagedOrderPickupFulfillment.pickupWindow.getter(v13);
  v41 = a3;
  v20 = [a3 pickedUpDate];
  if (v20)
  {
    v21 = v20;
    sub_1B77FF928();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_1B77FF988();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, v22, 1, v23);
  v25 = type metadata accessor for Order.PickupFulfillment.StatusValues(0);
  v26 = *(v25 + 20);
  v27 = type metadata accessor for Order.FulfillmentWindow(0);
  (*(*(v27 - 8) + 56))(a4 + v26, 1, 1, v27);
  v28 = *(v25 + 24);
  v24((a4 + v28), 1, 1, v23);
  sub_1B722376C(v16, a4, &qword_1EB990830);
  sub_1B7213740(v13, a4 + v26, &qword_1EB990828);
  sub_1B7213740(v10, a4 + v28, &qword_1EB98EBD0);
  v29 = [v18 merchant];
  v30 = [v29 displayName];

  v31 = sub_1B77FFA48();
  v32 = sub_1B741F7D4(v31);
  v34 = v33;

  v35 = type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0);
  v36 = (a4 + *(v35 + 20));
  *v36 = v32;
  v36[1] = v34;
  v37 = ManagedECommerceOrderContent.fulfillments.getter();

  v38 = *(v37 + 2);

  *(a4 + *(v35 + 24)) = v38 > 1;
  return result;
}

uint64_t Order.ShippingFulfillment.NotificationFormatStyle.Input.init(order:orderContent:fulfillment:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v51 - v17;
  v19 = a1;
  v20 = a2;
  v21 = v19;
  v22 = v20;
  v23 = a3;
  LOBYTE(v20) = ManagedOrderShippingFulfillment.status.getter();
  v24 = ManagedOrderShippingFulfillment.shippingType.getter();
  v53 = v18;
  Order.Fulfillment.DisplayStatus<>.init(order:orderContent:shippingStatus:shippingType:)(v21, v22, v20, v24 & 1, v18);
  v54 = v15;
  ManagedOrderShippingFulfillment.estimatedDeliveryWindow.getter(v15);
  v25 = [v23 deliveryDate];
  if (v25)
  {
    v26 = v25;
    sub_1B77FF928();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = sub_1B77FF988();
  v29 = *(*(v28 - 8) + 56);
  v30 = 1;
  v55 = v12;
  v29(v12, v27, 1, v28);
  v31 = [v23 shippedDate];
  if (v31)
  {
    v32 = v31;
    sub_1B77FF928();

    v30 = 0;
  }

  v33 = v56;
  v29(v56, v30, 1, v28);
  v34 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
  v35 = v34[5];
  v36 = type metadata accessor for Order.FulfillmentWindow(0);
  (*(*(v36 - 8) + 56))(a4 + v35, 1, 1, v36);
  v52 = v21;
  v37 = v34[6];
  v29((a4 + v37), 1, 1, v28);
  v51 = v23;
  v38 = v22;
  v39 = v34[7];
  v29((a4 + v39), 1, 1, v28);
  sub_1B722376C(v53, a4, &qword_1EB990820);
  sub_1B7213740(v54, a4 + v35, &qword_1EB990828);
  sub_1B7213740(v55, a4 + v37, &qword_1EB98EBD0);
  sub_1B7213740(v33, a4 + v39, &qword_1EB98EBD0);
  v40 = [v38 merchant];
  v41 = [v40 displayName];

  v42 = sub_1B77FFA48();
  v43 = sub_1B741F7D4(v42);
  v45 = v44;

  v46 = type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0);
  v47 = (a4 + *(v46 + 20));
  *v47 = v43;
  v47[1] = v45;
  v48 = ManagedECommerceOrderContent.fulfillments.getter();

  v49 = *(v48 + 2);

  *(a4 + *(v46 + 24)) = v49 > 1;
  return result;
}

uint64_t Order.Return.NotificationFormatStyle.Input.init(order:orderContent:orderReturn:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;

  v11 = *(type metadata accessor for Order.Return.NotificationFormatStyle.Input(0) + 28);
  v12 = sub_1B77FF988();
  v25 = *(*(v12 - 8) + 56);
  v26 = v11;
  v25((a4 + v11), 1, 1, v12);
  *a4 = ManagedOrderReturn.status.getter();
  v13 = [a2 merchant];
  v14 = [v13 displayName];

  v15 = sub_1B77FFA48();
  v16 = sub_1B741F7D4(v15);
  v18 = v17;

  *(a4 + 8) = v16;
  *(a4 + 16) = v18;
  v19 = [a2 returnObjects];
  v20 = [v19 count];

  *(a4 + 24) = v20 > 1;
  v21 = [a3 dropOffDate];
  if (v21)
  {
    v22 = v21;
    sub_1B77FF928();

    v23 = 0;
  }

  else
  {

    v23 = 1;
  }

  v25(v10, v23, 1, v12);
  return sub_1B7213740(v10, a4 + v26, &qword_1EB98EBD0);
}

BOOL _s10FinanceKit5OrderV6ReturnV23NotificationFormatStyleV5InputV2eeoiySbAI_AItFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2 || (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (sub_1B78020F8() & 1) == 0 || a1[24] != a2[24])
  {
    return 0;
  }

  v14 = *(type metadata accessor for Order.Return.NotificationFormatStyle.Input(0) + 28);
  v15 = *(v11 + 48);
  sub_1B7205588(&a1[v14], v13, &qword_1EB98EBD0);
  sub_1B7205588(&a2[v14], &v13[v15], &qword_1EB98EBD0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1B7205418(v13, &qword_1EB98EBD0);
      return 1;
    }

    goto LABEL_11;
  }

  sub_1B7205588(v13, v10, &qword_1EB98EBD0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_11:
    sub_1B7205418(v13, &qword_1EB98FCE0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1B736939C(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v18 = sub_1B7800828();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1B7205418(v13, &qword_1EB98EBD0);
  return (v18 & 1) != 0;
}

uint64_t _s10FinanceKit5OrderV11FulfillmentO23NotificationFormatStyleV5InputO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(0);
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(0);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Order.Fulfillment.NotificationFormatStyle.Input(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992B58);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v36 - v16;
  v18 = *(v15 + 56);
  sub_1B7369218(a1, &v36 - v16, type metadata accessor for Order.Fulfillment.NotificationFormatStyle.Input);
  sub_1B7369218(a2, &v17[v18], type metadata accessor for Order.Fulfillment.NotificationFormatStyle.Input);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7369218(v17, v11, type metadata accessor for Order.Fulfillment.NotificationFormatStyle.Input);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B73692E0(&v17[v18], v5, type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input);
      if (!_s10FinanceKit5OrderV19ShippingFulfillmentV12StatusValuesV2eeoiySbAG_AGtFZ_0(v11, v5) || ((v19 = *(v37 + 20), v20 = *&v11[v19], v21 = *&v11[v19 + 8], v22 = &v5[v19], v20 == *v22) ? (v23 = v21 == *(v22 + 1)) : (v23 = 0), !v23 && (sub_1B78020F8() & 1) == 0 || v11[*(v37 + 24)] != v5[*(v37 + 24)]))
      {
        sub_1B7369280(v5, type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input);
        v24 = v11;
        v25 = type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input;
LABEL_23:
        sub_1B7369280(v24, v25);
        sub_1B7369280(v17, type metadata accessor for Order.Fulfillment.NotificationFormatStyle.Input);
        return 0;
      }

      sub_1B7369280(v5, type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input);
      v34 = v11;
      v35 = type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input;
      goto LABEL_28;
    }

    v26 = type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input;
    v27 = v11;
  }

  else
  {
    sub_1B7369218(v17, v13, type metadata accessor for Order.Fulfillment.NotificationFormatStyle.Input);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B73692E0(&v17[v18], v7, type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input);
      if (!_s10FinanceKit5OrderV17PickupFulfillmentV12StatusValuesV2eeoiySbAG_AGtFZ_0(v13, v7) || ((v28 = *(v36 + 20), v29 = *&v13[v28], v30 = *&v13[v28 + 8], v31 = &v7[v28], v29 == *v31) ? (v32 = v30 == *(v31 + 1)) : (v32 = 0), !v32 && (sub_1B78020F8() & 1) == 0 || v13[*(v36 + 24)] != v7[*(v36 + 24)]))
      {
        sub_1B7369280(v7, type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input);
        v24 = v13;
        v25 = type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input;
        goto LABEL_23;
      }

      sub_1B7369280(v7, type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input);
      v34 = v13;
      v35 = type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input;
LABEL_28:
      sub_1B7369280(v34, v35);
      sub_1B7369280(v17, type metadata accessor for Order.Fulfillment.NotificationFormatStyle.Input);
      return 1;
    }

    v26 = type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input;
    v27 = v13;
  }

  sub_1B7369280(v27, v26);
  sub_1B7205418(v17, &qword_1EB992B58);
  return 0;
}

uint64_t sub_1B7369218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7369280(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B73692E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B7369348()
{
  result = qword_1EB9927E8;
  if (!qword_1EB9927E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9927E8);
  }

  return result;
}

uint64_t sub_1B736939C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B7369404()
{
  result = qword_1EB992800;
  if (!qword_1EB992800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992800);
  }

  return result;
}

unint64_t sub_1B7369458()
{
  result = qword_1EB992818;
  if (!qword_1EB992818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992818);
  }

  return result;
}

unint64_t sub_1B73694EC()
{
  result = qword_1EB992830;
  if (!qword_1EB992830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992830);
  }

  return result;
}

uint64_t sub_1B7369A28()
{
  result = type metadata accessor for Order.PickupFulfillment.NotificationFormatStyle.Input(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Order.ShippingFulfillment.NotificationFormatStyle.Input(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_30Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_31Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B7369D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B7369DD8()
{
  sub_1B72F2B80();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_1B736A4FC()
{
  result = qword_1EB992A20;
  if (!qword_1EB992A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992A20);
  }

  return result;
}

unint64_t sub_1B736A554()
{
  result = qword_1EB992A28;
  if (!qword_1EB992A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992A28);
  }

  return result;
}

unint64_t sub_1B736A5AC()
{
  result = qword_1EB992A30;
  if (!qword_1EB992A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992A30);
  }

  return result;
}

unint64_t sub_1B736A844()
{
  result = qword_1EB992A78;
  if (!qword_1EB992A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992A78);
  }

  return result;
}

unint64_t sub_1B736A89C()
{
  result = qword_1EB992A80;
  if (!qword_1EB992A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992A80);
  }

  return result;
}

unint64_t sub_1B736A8F4()
{
  result = qword_1EB992A88;
  if (!qword_1EB992A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992A88);
  }

  return result;
}

unint64_t sub_1B736A94C()
{
  result = qword_1EB992A90;
  if (!qword_1EB992A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992A90);
  }

  return result;
}

unint64_t sub_1B736A9A4()
{
  result = qword_1EB992A98;
  if (!qword_1EB992A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992A98);
  }

  return result;
}

unint64_t sub_1B736A9FC()
{
  result = qword_1EB992AA0;
  if (!qword_1EB992AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992AA0);
  }

  return result;
}

unint64_t sub_1B736AA54()
{
  result = qword_1EB992AA8;
  if (!qword_1EB992AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992AA8);
  }

  return result;
}

unint64_t sub_1B736AAAC()
{
  result = qword_1EB992AB0;
  if (!qword_1EB992AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992AB0);
  }

  return result;
}

unint64_t sub_1B736AB04()
{
  result = qword_1EB992AB8;
  if (!qword_1EB992AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992AB8);
  }

  return result;
}

unint64_t sub_1B736AB58()
{
  result = qword_1EB992AC8;
  if (!qword_1EB992AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992AC8);
  }

  return result;
}

unint64_t sub_1B736ABAC()
{
  result = qword_1EB992AE0;
  if (!qword_1EB992AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992AE0);
  }

  return result;
}

unint64_t sub_1B736AC00()
{
  result = qword_1EB992AF8;
  if (!qword_1EB992AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992AF8);
  }

  return result;
}

unint64_t sub_1B736AC54()
{
  result = qword_1EB992B10;
  if (!qword_1EB992B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992B10);
  }

  return result;
}

unint64_t sub_1B736ACA8()
{
  result = qword_1EB992B28;
  if (!qword_1EB992B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992B28);
  }

  return result;
}

unint64_t sub_1B736ACFC()
{
  result = qword_1EB992B40;
  if (!qword_1EB992B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992B40);
  }

  return result;
}

unint64_t sub_1B736ADB4()
{
  result = qword_1EB992B60;
  if (!qword_1EB992B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992B60);
  }

  return result;
}

unint64_t sub_1B736AE0C()
{
  result = qword_1EB992B68;
  if (!qword_1EB992B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992B68);
  }

  return result;
}

unint64_t sub_1B736AE64()
{
  result = qword_1EB992B70;
  if (!qword_1EB992B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992B70);
  }

  return result;
}

unint64_t sub_1B736AEBC()
{
  result = qword_1EB992B78;
  if (!qword_1EB992B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992B78);
  }

  return result;
}

unint64_t sub_1B736AF14()
{
  result = qword_1EB992B80;
  if (!qword_1EB992B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992B80);
  }

  return result;
}

unint64_t sub_1B736AF6C()
{
  result = qword_1EB992B88;
  if (!qword_1EB992B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992B88);
  }

  return result;
}

unint64_t sub_1B736AFC4()
{
  result = qword_1EB992B90;
  if (!qword_1EB992B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992B90);
  }

  return result;
}

unint64_t sub_1B736B01C()
{
  result = qword_1EB992B98;
  if (!qword_1EB992B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992B98);
  }

  return result;
}

unint64_t sub_1B736B074()
{
  result = qword_1EB992BA0;
  if (!qword_1EB992BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992BA0);
  }

  return result;
}

unint64_t sub_1B736B0CC()
{
  result = qword_1EB992BA8;
  if (!qword_1EB992BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992BA8);
  }

  return result;
}

unint64_t sub_1B736B124()
{
  result = qword_1EB992BB0;
  if (!qword_1EB992BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992BB0);
  }

  return result;
}

unint64_t sub_1B736B17C()
{
  result = qword_1EB992BB8;
  if (!qword_1EB992BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992BB8);
  }

  return result;
}

unint64_t sub_1B736B1D4()
{
  result = qword_1EB992BC0;
  if (!qword_1EB992BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992BC0);
  }

  return result;
}

unint64_t sub_1B736B22C()
{
  result = qword_1EB992BC8;
  if (!qword_1EB992BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992BC8);
  }

  return result;
}

unint64_t sub_1B736B284()
{
  result = qword_1EB992BD0;
  if (!qword_1EB992BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992BD0);
  }

  return result;
}

unint64_t sub_1B736B2DC()
{
  result = qword_1EB992BD8;
  if (!qword_1EB992BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992BD8);
  }

  return result;
}

unint64_t sub_1B736B334()
{
  result = qword_1EB992BE0;
  if (!qword_1EB992BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992BE0);
  }

  return result;
}

unint64_t sub_1B736B38C()
{
  result = qword_1EB992BE8;
  if (!qword_1EB992BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992BE8);
  }

  return result;
}

uint64_t DropboxApplePayOrder.credentialIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DropboxApplePayOrder.credentialIdentifier.setter(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DropboxApplePayOrder.encryptedTransactionInfo.getter()
{
  v1 = v0 + *(type metadata accessor for DropboxApplePayOrder() + 20);
  v2 = *v1;
  sub_1B720ABEC(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for DropboxApplePayOrder()
{
  result = qword_1EB992C08;
  if (!qword_1EB992C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DropboxApplePayOrder.encryptedTransactionInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for DropboxApplePayOrder() + 20);
  result = sub_1B720A388(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t DropboxApplePayOrder.EncryptionScheme.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

uint64_t DropboxApplePayOrder.ephemeralPublicKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DropboxApplePayOrder() + 28);
  v4 = sub_1B7800658();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DropboxApplePayOrder.ephemeralPublicKey.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DropboxApplePayOrder() + 28);
  v4 = sub_1B7800658();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DropboxApplePayOrder.data.getter()
{
  v1 = v0 + *(type metadata accessor for DropboxApplePayOrder() + 32);
  v2 = *v1;
  sub_1B720ABEC(*v1, *(v1 + 8));
  return v2;
}

uint64_t DropboxApplePayOrder.data.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for DropboxApplePayOrder() + 32);
  result = sub_1B720A388(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t DropboxApplePayOrder.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DropboxApplePayOrder() + 36);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DropboxApplePayOrder.creationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DropboxApplePayOrder() + 36);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DropboxApplePayOrder.init(credentialIdentifier:encryptedTransactionInfo:encryptionScheme:ephemeralPublicKey:data:creationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v16 = sub_1B77FFA18();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = type metadata accessor for DropboxApplePayOrder();
  v18 = (a8 + v17[5]);
  *v18 = a2;
  v18[1] = a3;
  v19 = v17[7];
  v20 = sub_1B7800658();
  (*(*(v20 - 8) + 32))(a8 + v19, a4, v20);
  v21 = (a8 + v17[8]);
  *v21 = a5;
  v21[1] = a6;
  v22 = v17[9];
  v23 = sub_1B77FF988();
  v24 = *(*(v23 - 8) + 32);

  return v24(a8 + v22, a7, v23);
}

uint64_t DropboxApplePayOrder.isRecent(now:)(uint64_t a1)
{
  v24 = a1;
  v1 = sub_1B77FFC68();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v25 = sub_1B77FF988();
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v23 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FFB08();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1B77FFC88();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *MEMORY[0x1E6969830], v10);
  sub_1B77FFB18();
  (*(v11 + 8))(v13, v10);
  v17 = v1;
  (*(v2 + 104))(v4, *MEMORY[0x1E6969A58], v1);
  type metadata accessor for DropboxApplePayOrder();
  sub_1B77FFC18();
  v18 = v25;
  (*(v2 + 8))(v4, v17);
  if ((*(v8 + 48))(v7, 1, v18) == 1)
  {
    (*(v14 + 8))(v16, v26);
    sub_1B7205418(v7, &qword_1EB98EBD0);
    v19 = 0;
  }

  else
  {
    v20 = v23;
    (*(v8 + 32))(v23, v7, v18);
    v19 = sub_1B77FF8D8();
    (*(v8 + 8))(v20, v18);
    (*(v14 + 8))(v16, v26);
  }

  return v19 & 1;
}

uint64_t DropboxApplePayOrder.HPKEInfo.versionIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DropboxApplePayOrder.HPKEInfo.transactionIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1B720ABEC(v2, v3);
}

uint64_t DropboxApplePayOrder.HPKEInfo.transactionIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1B720A388(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

__n128 DropboxApplePayOrder.HPKEInfo.init(transactionIdentifier:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  a2->n128_u64[0] = 0xD000000000000011;
  a2->n128_u64[1] = 0x80000001B787C0D0;
  result = *a1;
  a2[1] = *a1;
  return result;
}

uint64_t DropboxApplePayOrder.HPKEInfo.encode(to:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023D8();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  sub_1B78020A8();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    sub_1B720ABEC(v3, v4);
    sub_1B727A60C();
    sub_1B78020B8();
    sub_1B720A388(v3, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t DropboxApplePayOrder.TransactionContext.transactionIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1B720ABEC(v2, v3);
}

uint64_t DropboxApplePayOrder.TransactionContext.transactionIdentifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1B720A388(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

__n128 DropboxApplePayOrder.TransactionContext.init(transactionIdentifier:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t static DropboxApplePayOrder.seal(signedArchive:using:withIdentifier:context:creationDate:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v89 = a6;
  v88 = a4;
  v115 = a3;
  v92 = a2;
  v91 = a1;
  v90 = a7;
  v109 = sub_1B7800658();
  v93 = *(v109 - 8);
  v8 = MEMORY[0x1EEE9AC00](v109);
  v95 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v94 = &v80 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v80 - v12;
  v96 = sub_1B78005F8();
  v97 = *(v96 - 8);
  v13 = MEMORY[0x1EEE9AC00](v96);
  v108 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v80 - v15;
  v106 = sub_1B78005B8();
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1B7800598();
  v100 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1B78005A8();
  v112 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v111 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1B7800588();
  v110 = *(v101 - 8);
  v19 = MEMORY[0x1EEE9AC00](v101);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v80 - v22;
  v24 = type metadata accessor for ApplePayTransactionInfo();
  v25 = v24 - 8;
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_1B78006A8();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a5;
  v34 = a5[1];
  v35 = v30;
  sub_1B7800698();
  v36 = *(v25 + 28);
  v121 = v29;
  v37 = *(v29 + 16);
  v114 = v35;
  v37(v27 + v36, v32, v35);
  *v27 = v33;
  v27[1] = v34;
  sub_1B720ABEC(v33, v34);
  v38 = v115;
  v115 = v27;
  v39 = v113;
  v40 = ApplePayTransactionInfo.seal(using:)(v38);
  if (v39)
  {
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v42 = sub_1B78000B8();
    __swift_project_value_buffer(v42, qword_1EDAF6550);
    v43 = v39;
    v44 = sub_1B7800098();
    v45 = sub_1B78011D8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      v48 = v39;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v49;
      *v47 = v49;
      _os_log_impl(&dword_1B7198000, v44, v45, "Failed to encode or encrypt transaction info with error: %@", v46, 0xCu);
      sub_1B7205418(v47, &qword_1EB9910D0);
      MEMORY[0x1B8CA7A40](v47, -1, -1);
      MEMORY[0x1B8CA7A40](v46, -1, -1);
    }

    swift_willThrow();
    sub_1B736E374(v115);
    return (*(v121 + 8))(v32, v114);
  }

  else
  {
    v51 = v111;
    v50 = v112;
    v82 = v21;
    v113 = v32;
    v83 = v23;
    v86 = v40;
    v87 = v41;
    sub_1B77FFDA8();
    swift_allocObject();
    sub_1B720ABEC(v33, v34);
    v52 = sub_1B77FFD98();
    v117 = 0xD000000000000011;
    v118 = 0x80000001B787C0D0;
    v85 = 0x80000001B787C0D0;
    v119 = v33;
    v120 = v34;
    sub_1B736E3D0();
    v84 = v52;
    v53 = sub_1B77FFD88();
    v80 = v33;
    v81 = v34;
    v55 = v54;
    v56 = v53;
    (*(v50 + 104))(v51, *MEMORY[0x1E6966518], v99);
    (*(v100 + 104))(v102, *MEMORY[0x1E6966500], v103);
    (*(v104 + 104))(v105, *MEMORY[0x1E6966528], v106);
    v57 = v83;
    sub_1B7800578();
    sub_1B7800668();
    v58 = v101;
    (*(v110 + 16))(v82, v57, v101);
    sub_1B720ABEC(v56, v55);
    v60 = v108;
    v59 = v109;
    v111 = v56;
    v112 = v55;
    sub_1B78005C8();
    v61 = v60;
    v62 = v98;
    v63 = v96;
    (*(v97 + 32))(v98, v61, v96);
    v117 = sub_1B78005D8();
    v118 = v64;
    v65 = v95;
    sub_1B7800648();
    v66 = v113;
    v67 = *(v93 + 32);
    v68 = v94;
    v67(v94, v65, v59);
    v117 = v91;
    v118 = v92;
    v116 = xmmword_1B781DD20;
    sub_1B736E424();
    v108 = sub_1B78005E8();
    v107 = v70;

    sub_1B720A388(v80, v81);
    sub_1B720A388(v111, v112);
    sub_1B720A388(v116, *(&v116 + 1));
    (*(v97 + 8))(v62, v63);
    (*(v110 + 8))(v83, v58);
    sub_1B736E374(v115);
    (*(v121 + 8))(v66, v114);
    v71 = sub_1B77FFA18();
    v72 = v90;
    (*(*(v71 - 8) + 16))(v90, v88, v71);
    v73 = type metadata accessor for DropboxApplePayOrder();
    v67((v72 + v73[7]), v68, v59);
    v74 = v73[9];
    v75 = sub_1B77FF988();
    result = (*(*(v75 - 8) + 16))(v72 + v74, v89, v75);
    v76 = (v72 + v73[5]);
    v77 = v87;
    *v76 = v86;
    v76[1] = v77;
    v78 = (v72 + v73[8]);
    v79 = v107;
    *v78 = v108;
    v78[1] = v79;
  }

  return result;
}

NSObject *DropboxApplePayOrder.open(using:)(uint64_t *a1, unint64_t a2)
{
  v145 = a2;
  v126 = a1;
  v127 = sub_1B7800628();
  v128 = *(v127 - 8);
  v3 = MEMORY[0x1EEE9AC00](v127);
  v137 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v129 = &v118 - v5;
  v6 = sub_1B78005B8();
  v135 = *(v6 - 8);
  v136 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v134 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1B7800598();
  v140 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1B78005A8();
  v139 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1B7800588();
  v141 = *(v138 - 8);
  v10 = MEMORY[0x1EEE9AC00](v138);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v118 - v13;
  v144 = sub_1B78006A8();
  v142 = *(v144 - 8);
  v15 = MEMORY[0x1EEE9AC00](v144);
  v17 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v143 = &v118 - v18;
  v19 = type metadata accessor for ApplePayTransactionInfo();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v118 - v23);
  v25 = type metadata accessor for DropboxApplePayOrder();
  v26 = v151;
  static ApplePayTransactionInfo.open(combined:using:)(*(v2 + *(v25 + 20)), *(v2 + *(v25 + 20) + 8));
  v151 = v26;
  if (v26)
  {
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v27 = sub_1B78000B8();
    __swift_project_value_buffer(v27, qword_1EDAF6550);
    v28 = v151;
    v29 = v151;
    v30 = sub_1B7800098();
    v31 = sub_1B78011D8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v151;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_1B7198000, v30, v31, "Failed to decrypt or decode transaction info with error: %@", v32, 0xCu);
      sub_1B7205418(v33, &qword_1EB9910D0);
      MEMORY[0x1B8CA7A40](v33, -1, -1);
      MEMORY[0x1B8CA7A40](v32, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v145 = v19;
    v122 = v25;
    v119 = v17;
    v120 = v12;
    v121 = v2;
    v123 = v14;
    sub_1B736E478(v22, v24);
    v36 = *v24;
    v37 = v24[1];
    v125 = v24;
    sub_1B720ABEC(v36, v37);
    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v38 = sub_1B78000B8();
    v39 = __swift_project_value_buffer(v38, qword_1EDAF6550);
    sub_1B720ABEC(v36, v37);
    v124 = v39;
    v40 = sub_1B7800098();
    v41 = sub_1B78011B8();
    sub_1B720A388(v36, v37);
    v42 = os_log_type_enabled(v40, v41);
    v43 = v145;
    if (v42)
    {
      v44 = v36;
      v45 = v37;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v147 = v47;
      *v46 = 136315138;
      sub_1B720ABEC(v44, v45);
      v48 = sub_1B72B71E4(v44, v45);
      v50 = v49;
      sub_1B720A388(v44, v45);
      v51 = sub_1B71A3EF8(v48, v50, &v147);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_1B7198000, v40, v41, "Recovered info for transaction %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1B8CA7A40](v47, -1, -1);
      v52 = v46;
      v37 = v45;
      v36 = v44;
      MEMORY[0x1B8CA7A40](v52, -1, -1);
    }

    v54 = v140;
    v53 = v141;
    v55 = v139;
    v56 = *(v43 + 20);
    v57 = v125;
    v139 = *(v142 + 16);
    (v139)(v143, v125 + v56, v144);
    sub_1B77FFDA8();
    swift_allocObject();
    sub_1B720ABEC(v36, v37);
    v58 = sub_1B77FFD98();
    v147 = 0xD000000000000011;
    v148 = 0x80000001B787C0D0;
    v145 = 0x80000001B787C0D0;
    v59 = v58;
    v149 = v36;
    v150 = v37;
    sub_1B736E3D0();
    v140 = v59;
    v60 = v151;
    v61 = sub_1B77FFD88();
    v151 = v60;
    if (v60)
    {
      v63 = v151;
      v64 = v151;
      v30 = sub_1B7800098();
      v65 = sub_1B78011D8();

      if (os_log_type_enabled(v30, v65))
      {
        v66 = v36;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        v69 = v151;
        v70 = _swift_stdlib_bridgeErrorToNSError();
        *(v67 + 4) = v70;
        *v68 = v70;
        _os_log_impl(&dword_1B7198000, v30, v65, "Failed to encode info parameter with error: %@", v67, 0xCu);
        sub_1B7205418(v68, &qword_1EB9910D0);
        MEMORY[0x1B8CA7A40](v68, -1, -1);
        v71 = v67;
        v36 = v66;
        MEMORY[0x1B8CA7A40](v71, -1, -1);
      }

      swift_willThrow();

      sub_1B720A388(v36, v37);
      sub_1B720A388(v36, v37);
      (*(v142 + 8))(v143, v144);
      v72 = v57;
    }

    else
    {
      v73 = v62;
      v74 = v53;
      v75 = v61;
      v55[13](v131, *MEMORY[0x1E6966518], v130);
      v76 = *MEMORY[0x1E6966500];
      v77 = *(v54 + 104);
      v130 = v73;
      v77(v132, v76, v133);
      (*(v135 + 104))(v134, *MEMORY[0x1E6966528], v136);
      v78 = v123;
      v79 = v130;
      sub_1B7800578();
      (v139)(v119, v143, v144);
      (*(v74 + 16))(v120, v78, v138);
      v80 = sub_1B720ABEC(v75, v79);
      v81 = v121;
      MEMORY[0x1B8CA4950](v80);
      v82 = v137;
      v139 = v75;
      v83 = v151;
      sub_1B7800608();
      v151 = v83;
      if (v83)
      {
        v84 = v151;
        v85 = v151;
        v30 = sub_1B7800098();
        v86 = sub_1B78011D8();

        v87 = os_log_type_enabled(v30, v86);
        v88 = v141;
        v89 = v123;
        if (v87)
        {
          v90 = v36;
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          *v91 = 138412290;
          v93 = v151;
          v94 = _swift_stdlib_bridgeErrorToNSError();
          *(v91 + 4) = v94;
          *v92 = v94;
          _os_log_impl(&dword_1B7198000, v30, v86, "Failed to create recipient context with error: %@", v91, 0xCu);
          sub_1B7205418(v92, &qword_1EB9910D0);
          v95 = v92;
          v89 = v123;
          MEMORY[0x1B8CA7A40](v95, -1, -1);
          v96 = v91;
          v36 = v90;
          v79 = v130;
          v88 = v141;
          MEMORY[0x1B8CA7A40](v96, -1, -1);
        }

        swift_willThrow();

        sub_1B720A388(v36, v37);
        sub_1B720A388(v139, v79);
        sub_1B720A388(v36, v37);
        (*(v88 + 8))(v89, v138);
      }

      else
      {
        v97 = v128;
        v98 = v129;
        v99 = v127;
        (*(v128 + 32))(v129, v82, v127);
        v100 = (v81 + *(v122 + 32));
        v101 = v100[1];
        v147 = *v100;
        v148 = v101;
        v146 = xmmword_1B781DD20;
        sub_1B720ABEC(v147, v101);
        sub_1B736E424();
        v102 = v151;
        v103 = sub_1B7800618();
        v151 = v102;
        if (!v102)
        {
          v30 = v103;

          sub_1B720A388(v36, v37);
          sub_1B720A388(v139, v79);
          sub_1B720A388(v146, *(&v146 + 1));
          sub_1B720A388(v147, v148);
          (*(v97 + 8))(v98, v99);
          (*(v141 + 8))(v123, v138);
          (*(v142 + 8))(v143, v144);
          sub_1B736E374(v125);
          v117 = v126;
          *v126 = v36;
          v117[1] = v37;
          return v30;
        }

        sub_1B720A388(v146, *(&v146 + 1));
        sub_1B720A388(v147, v148);
        v104 = v151;
        v105 = v151;
        v30 = sub_1B7800098();
        v106 = sub_1B78011D8();

        v107 = os_log_type_enabled(v30, v106);
        v108 = v141;
        v109 = v123;
        if (v107)
        {
          v110 = v36;
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          *v111 = 138412290;
          v113 = v151;
          v114 = _swift_stdlib_bridgeErrorToNSError();
          *(v111 + 4) = v114;
          *v112 = v114;
          _os_log_impl(&dword_1B7198000, v30, v106, "Failed to decrypt order package with error: %@", v111, 0xCu);
          sub_1B7205418(v112, &qword_1EB9910D0);
          v109 = v123;
          MEMORY[0x1B8CA7A40](v112, -1, -1);
          v115 = v111;
          v36 = v110;
          v97 = v128;
          v108 = v141;
          MEMORY[0x1B8CA7A40](v115, -1, -1);
        }

        swift_willThrow();

        sub_1B720A388(v36, v37);
        sub_1B720A388(v139, v130);
        sub_1B720A388(v36, v37);
        (*(v97 + 8))(v129, v99);
        (*(v108 + 8))(v109, v138);
      }

      (*(v142 + 8))(v143, v144);
      v72 = v125;
    }

    sub_1B736E374(v72);
  }

  return v30;
}

uint64_t static DropboxApplePayOrder.seal(signedArchive:using:context:creationDate:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a4;
  v12 = a4[1];
  v13 = *(type metadata accessor for ApplePayTransactionDocumentCredential() + 20);
  v15[0] = v11;
  v15[1] = v12;
  return static DropboxApplePayOrder.seal(signedArchive:using:withIdentifier:context:creationDate:)(a1, a2, a3 + v13, a3, v15, a5, a6);
}

uint64_t _s10FinanceKit20DropboxApplePayOrderV8HPKEInfoV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  sub_1B720ABEC(v2, v3);
  sub_1B720ABEC(v4, v5);
  v7 = sub_1B73FC434(v2, v3, v4, v5);
  sub_1B720A388(v4, v5);
  sub_1B720A388(v2, v3);
  return v7 & 1;
}

uint64_t sub_1B736E374(uint64_t a1)
{
  v2 = type metadata accessor for ApplePayTransactionInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B736E3D0()
{
  result = qword_1EB992BF0;
  if (!qword_1EB992BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992BF0);
  }

  return result;
}

unint64_t sub_1B736E424()
{
  result = qword_1EB992BF8;
  if (!qword_1EB992BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992BF8);
  }

  return result;
}

uint64_t sub_1B736E478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplePayTransactionInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B736E4E0()
{
  result = qword_1EB992C00;
  if (!qword_1EB992C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992C00);
  }

  return result;
}

uint64_t sub_1B736E55C()
{
  result = sub_1B77FFA18();
  if (v1 <= 0x3F)
  {
    result = sub_1B7800658();
    if (v2 <= 0x3F)
    {
      result = sub_1B77FF988();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B736E630(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B736E684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *NSManagedObjectContext.localStore.getter()
{
  v1 = [v0 persistentStoreCoordinator];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 persistentStores];

    sub_1B7205540(0, &qword_1EDAFC540);
    v4 = sub_1B7800C38();

    if (v4 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B8CA5DC0](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = [v7 configurationName];
        v11 = sub_1B7800868();
        v13 = v12;

        if (v11 == 0x6C61636F4CLL && v13 == 0xE500000000000000)
        {

          return v8;
        }

        v15 = sub_1B78020F8();

        if (v15)
        {

          return v8;
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  return 0;
}

void *Array<A>.first(where:)(unsigned __int8 *a1, unint64_t a2)
{
  v3 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B8CA5DC0](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v6 = *(a2 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = [v6 configuration];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1B7800868();
        v13 = v12;

        if (!v3)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v11 = 0;
        v13 = 0;
        if (!v3)
        {
LABEL_21:
          v15 = 0xE500000000000000;
          v14 = 0x6C61636F4CLL;
          if (!v13)
          {
            goto LABEL_4;
          }

          goto LABEL_22;
        }
      }

      if (v3 == 1)
      {
        v14 = 0x64756F6C43;
      }

      else
      {
        v14 = 0x786F62706F7244;
      }

      if (v3 == 1)
      {
        v15 = 0xE500000000000000;
      }

      else
      {
        v15 = 0xE700000000000000;
      }

      if (!v13)
      {
LABEL_4:

        goto LABEL_5;
      }

LABEL_22:
      if (v11 == v14 && v13 == v15)
      {

        return v7;
      }

      v16 = sub_1B78020F8();

      if (v16)
      {
        return v7;
      }

LABEL_5:

      if (v8 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return 0;
}

{
  v3 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B8CA5DC0](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v6 = *(a2 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = [v6 configurationName];
      v10 = sub_1B7800868();
      v12 = v11;

      if (v3)
      {
        if (v3 == 1)
        {
          v13 = 0x64756F6C43;
        }

        else
        {
          v13 = 0x786F62706F7244;
        }

        if (v3 == 1)
        {
          v14 = 0xE500000000000000;
        }

        else
        {
          v14 = 0xE700000000000000;
        }
      }

      else
      {
        v14 = 0xE500000000000000;
        v13 = 0x6C61636F4CLL;
      }

      if (v10 == v13 && v12 == v14)
      {

        return v7;
      }

      v16 = sub_1B78020F8();

      if (v16)
      {
        return v7;
      }

      if (v8 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return 0;
}

void *NSManagedObjectContext.cloudStore.getter()
{
  v1 = [v0 persistentStoreCoordinator];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 persistentStores];

    sub_1B7205540(0, &qword_1EDAFC540);
    v4 = sub_1B7800C38();

    if (v4 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B8CA5DC0](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = [v7 configurationName];
        v11 = sub_1B7800868();
        v13 = v12;

        if (v11 == 0x64756F6C43 && v13 == 0xE500000000000000)
        {

          return v8;
        }

        v15 = sub_1B78020F8();

        if (v15)
        {

          return v8;
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  return 0;
}

void *NSManagedObjectContext.dropboxStore.getter()
{
  v1 = [v0 persistentStoreCoordinator];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 persistentStores];

    sub_1B7205540(0, &qword_1EDAFC540);
    v4 = sub_1B7800C38();

    if (v4 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B8CA5DC0](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = [v7 configurationName];
        v11 = sub_1B7800868();
        v13 = v12;

        if (v11 == 0x786F62706F7244 && v13 == 0xE700000000000000)
        {

          return v8;
        }

        v15 = sub_1B78020F8();

        if (v15)
        {

          return v8;
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  return 0;
}

void sub_1B736EFFC(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
  v3 = sub_1B77FF3F8();
  v4 = [v2 initWithURL_];

  v5 = sub_1B7800838();
  [v4 setConfiguration_];

  [v4 setType_];
  sub_1B7205540(0, &qword_1EDAFC4C8);
  v6 = sub_1B7801528();
  [v4 setOption:v6 forKey:*MEMORY[0x1E695D3C0]];

  v7 = sub_1B7801528();
  [v4 setOption:v7 forKey:*MEMORY[0x1E695D430]];

  v8 = sub_1B7801528();
  [v4 setOption:v8 forKey:*MEMORY[0x1E695D380]];

  v9 = sub_1B7801528();
  [v4 setOption:v9 forKey:*MEMORY[0x1E695D318]];

  v10 = *(a1 + *(type metadata accessor for CoreDataStoreClientConfiguration(0) + 24));
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = v19 | (v16 << 6);
      v21 = (*(v10 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      sub_1B719BDE4(*(v10 + 56) + 32 * v20, v29);
      *&v30 = v23;
      *(&v30 + 1) = v22;
      sub_1B72051F0(v29, &v31);

      v18 = v16;
LABEL_13:
      v33 = v30;
      v34[0] = v31;
      v34[1] = v32;
      if (!*(&v30 + 1))
      {
        break;
      }

      sub_1B72051F0(v34, &v30);
      sub_1B7205540(0, &qword_1EDAFC4C0);
      v24 = swift_dynamicCast();
      v25 = *&v29[0];
      v26 = sub_1B7800838();

      if (v24)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0;
      }

      [v4 setOption:v27 forKey:v26];

      v15 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1B780B190;
    *(v28 + 32) = v4;
  }

  else
  {
LABEL_5:
    if (v14 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v14;
    }

    v18 = v17 - 1;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        v13 = 0;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        goto LABEL_13;
      }

      v13 = *(v10 + 64 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

id sub_1B736F370()
{
  v0 = *MEMORY[0x1E695D3B8];
  v1 = sub_1B7372494();
  v2 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
  v3 = sub_1B77FF3F8();
  v4 = [v2 initWithURL_];

  v5 = sub_1B7800838();
  [v4 setConfiguration_];

  [v4 setType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7808C50;
  *(inited + 32) = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  *(inited + 40) = v1;
  v8 = *MEMORY[0x1E695D3A0];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = sub_1B7205540(0, &qword_1EDAFC4C8);
  v10 = v0;
  v11 = v8;
  v12 = sub_1B7801528();
  *(inited + 104) = v9;
  *(inited + 80) = v12;
  sub_1B7201ED4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F4F0);
  swift_arrayDestroy();
  type metadata accessor for NSPersistentHistoryTrackingOptionKey(0);
  sub_1B73701A0();
  v13 = sub_1B7800708();

  [v4 setOption:v13 forKey:*MEMORY[0x1E695D3C0]];

  v14 = sub_1B7801528();
  [v4 setOption:v14 forKey:*MEMORY[0x1E695D430]];

  v15 = sub_1B7801528();
  [v4 setOption:v15 forKey:*MEMORY[0x1E695D380]];

  v16 = sub_1B7801528();
  [v4 setOption:v16 forKey:*MEMORY[0x1E695D318]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B7807CD0;
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDAF93B0;
  *(v17 + 56) = sub_1B7205540(0, &qword_1EDAF6450);
  *(v17 + 32) = v18;
  sub_1B7205540(0, &qword_1EDAF93B8);
  v19 = v18;
  v20 = MEMORY[0x1B8CA5800](v17);
  [v4 setOption:v20 forKey:*MEMORY[0x1E695D3D8]];

  [v4 setOption:*MEMORY[0x1E696A388] forKey:*MEMORY[0x1E695D3F8]];
  v21 = sub_1B7801528();
  [v4 setOption:v21 forKey:*MEMORY[0x1E695D438]];

  v22 = sub_1B7801538();
  [v4 setOption:v22 forKey:*MEMORY[0x1E695D3D0]];

  return v4;
}

id sub_1B736F754()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
  v1 = sub_1B77FF3F8();
  v2 = [v0 initWithURL_];

  [v2 setType_];
  sub_1B7205540(0, &qword_1EDAFC4C8);
  v3 = sub_1B7801528();
  [v2 setOption:v3 forKey:*MEMORY[0x1E695D430]];

  [v2 setOption:*MEMORY[0x1E696A388] forKey:*MEMORY[0x1E695D3F8]];
  v4 = sub_1B7801528();
  [v2 setOption:v4 forKey:*MEMORY[0x1E695D438]];

  v5 = sub_1B7801538();
  [v2 setOption:v5 forKey:*MEMORY[0x1E695D3D0]];

  return v2;
}

id sub_1B736F898(uint64_t a1)
{
  v2 = type metadata accessor for CoreDataStoreCloudConfiguration(0);
  v3 = sub_1B736F754();
  v4 = sub_1B7800838();
  [v3 setConfiguration_];

  v5 = *MEMORY[0x1E695D3B8];
  v6 = sub_1B737261C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  v8 = v5;
  sub_1B7201FFC(inited);
  swift_setDeallocating();
  sub_1B7370138(inited + 32);
  type metadata accessor for NSPersistentHistoryTrackingOptionKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  sub_1B73701A0();
  v9 = sub_1B7800708();

  [v3 setOption:v9 forKey:*MEMORY[0x1E695D3C0]];

  if (*(a1 + *(v2 + 36)) == 1)
  {
    if (qword_1EDAFD2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1B78000B8();
    __swift_project_value_buffer(v10, qword_1EDAFD2D0);
    v11 = sub_1B7800098();
    v12 = sub_1B78011B8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B7198000, v11, v12, "Cloud mirroring enabled, setting mirroring delegate", v13, 2u);
      MEMORY[0x1B8CA7A40](v13, -1, -1);
    }

    v14 = objc_allocWithZone(MEMORY[0x1E695D680]);
    v15 = sub_1B7800838();
    v16 = [v14 initWithContainerIdentifier_];

    [v16 setUseDeviceToDeviceEncryption_];
    v17 = sub_1B7800838();
    [v16 setApsConnectionMachServiceName_];

    sub_1B7205540(0, &qword_1EDAFC4C8);
    v18 = sub_1B7801538();
    [v16 setOperationMemoryThresholdBytes_];

    v19 = [objc_allocWithZone(MEMORY[0x1E695B8B0]) init];
    v20 = sub_1B7800838();
    [v19 setApplicationBundleIdentifierOverrideForTCC_];

    v21 = sub_1B7800838();
    [v19 setApplicationBundleIdentifierOverrideForNetworkAttribution_];

    v22 = sub_1B7800838();
    [v19 setEncryptionServiceName_];

    [v19 setUseZoneWidePCS_];
    [v16 setContainerOptions_];
    [v3 setCloudKitContainerOptions_];
  }

  return v3;
}

id sub_1B736FC8C(uint64_t a1)
{
  v2 = type metadata accessor for CoreDataStoreCloudConfiguration(0);
  v3 = sub_1B736F754();
  v4 = sub_1B7800838();
  [v3 setConfiguration_];

  v5 = *MEMORY[0x1E695D3B8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  *(inited + 32) = v5;
  *(inited + 40) = &unk_1F2F40CB0;
  v7 = v5;
  sub_1B7201FFC(inited);
  swift_setDeallocating();
  sub_1B7370138(inited + 32);
  type metadata accessor for NSPersistentHistoryTrackingOptionKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  sub_1B73701A0();
  v8 = sub_1B7800708();

  [v3 setOption:v8 forKey:*MEMORY[0x1E695D3C0]];

  if (*(a1 + *(v2 + 36)) == 1)
  {
    if (qword_1EDAFD2C8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B78000B8();
    __swift_project_value_buffer(v9, qword_1EDAFD2D0);
    v10 = sub_1B7800098();
    v11 = sub_1B78011B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B7198000, v10, v11, "Cloud mirroring enabled, setting mirroring delegate for dropbox", v12, 2u);
      MEMORY[0x1B8CA7A40](v12, -1, -1);
    }

    v13 = objc_allocWithZone(MEMORY[0x1E695D680]);
    v14 = sub_1B7800838();
    v15 = [v13 initWithContainerIdentifier_];

    [v15 setUseDeviceToDeviceEncryption_];
    v16 = sub_1B7800838();
    [v15 setApsConnectionMachServiceName_];

    sub_1B7205540(0, &qword_1EDAFC4C8);
    v17 = sub_1B7801538();
    [v15 setOperationMemoryThresholdBytes_];

    v18 = [objc_allocWithZone(MEMORY[0x1E695B8B0]) init];
    v19 = sub_1B7800838();
    [v18 setApplicationBundleIdentifierOverrideForTCC_];

    v20 = sub_1B7800838();
    [v18 setApplicationBundleIdentifierOverrideForNetworkAttribution_];

    [v15 setContainerOptions_];
    [v3 setCloudKitContainerOptions_];
  }

  return v3;
}

uint64_t sub_1B737003C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B780C060;
  *(v3 + 32) = sub_1B736F370();
  *(v3 + 40) = sub_1B736F898(a2);
  if (*(a2 + *(type metadata accessor for CoreDataStoreCloudConfiguration(0) + 28)) == 1)
  {
    sub_1B736FC8C(a2);
    MEMORY[0x1B8CA4F20]();
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B7800C58();
    }

    sub_1B7800C88();
  }

  return v3;
}

uint64_t sub_1B7370138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B73701A0()
{
  result = qword_1EDAF6468;
  if (!qword_1EDAF6468)
  {
    type metadata accessor for NSPersistentHistoryTrackingOptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF6468);
  }

  return result;
}

uint64_t CoreDataStore.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CoreDataStore.init(configuration:)(a1);
  return v2;
}

char *CoreDataStore.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v110 = *v1;
  v4 = type metadata accessor for CoreDataStoreCloudConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v101 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CoreDataStoreLocalConfiguration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v100 = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FE748();
  v104 = *(v8 - 8);
  v105 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v95 - v12;
  v112 = sub_1B77FE758();
  v109 = *(v112 - 8);
  v14 = MEMORY[0x1EEE9AC00](v112);
  v16 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v102 = v95 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v95 - v19;
  v111 = type metadata accessor for CoreDataStoreConfiguration(0);
  v21 = MEMORY[0x1EEE9AC00](v111);
  v99 = v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v107 = v95 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v108 = v95 - v25;
  v103 = type metadata accessor for CoreDataStoreClientConfiguration(0);
  MEMORY[0x1EEE9AC00](v103);
  v106 = v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAFD058 != -1)
  {
    swift_once();
  }

  v27 = sub_1B73721BC();
  [v27 mutableCopy];
  sub_1B7801848();

  swift_unknownObjectRelease();
  sub_1B7205540(0, &qword_1EDAFC528);
  swift_dynamicCast();
  v28 = v117;
  v29 = objc_allocWithZone(MEMORY[0x1E695D668]);
  v30 = sub_1B7800838();
  v31 = [v29 initWithName:v30 managedObjectModel:v28];

  v114 = v2;
  *(v2 + 2) = v31;
  v32 = v31;
  v33 = v113;
  sub_1B73713D8(a1);
  v34 = a1;
  if (!v33)
  {

    v45 = v114;
    goto LABEL_8;
  }

  v116 = v33;
  v35 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v36 = v112;
  if (swift_dynamicCast())
  {
    v113 = v34;

    v37 = v109;
    (*(v109 + 16))(v20, v16, v36);
    v98 = sub_1B7357B18(&qword_1EDAF6608, MEMORY[0x1E6967E98]);
    sub_1B77FF2E8();
    sub_1B77FE6A8();
    sub_1B7357B18(&qword_1EB992C40, MEMORY[0x1E6967E70]);
    v38 = v105;
    sub_1B7800B38();
    sub_1B7800B38();
    v39 = v11;
    v40 = v16;
    v41 = v13;
    v42 = *(v104 + 8);
    v42(v39, v38);
    v96 = v41;
    v97 = v42;
    v42(v41, v38);
    if (v117 == v115)
    {
      v43 = v40;
      v44 = sub_1B77FE688();
      v45 = v114;
      v46 = *(v114 + 2);
      v34 = v113;
      sub_1B7372E98(v44, v46, v113);

      v77 = *(v109 + 8);
      v77(v20, v36);
      v77(v43, v36);

      goto LABEL_8;
    }

    v64 = *(v37 + 8);
    v95[1] = v37 + 8;
    v95[0] = v64;
    v64(v20, v36);
    v45 = v102;
    (*(v37 + 32))(v102, v40, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C48);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1B781DFC0;
    sub_1B77FE738();
    sub_1B77FE6C8();
    sub_1B77FE6F8();
    sub_1B77FE718();
    sub_1B77FE6E8();
    sub_1B77FE728();
    v66 = sub_1B723ADB0(v65);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v67 = v96;
    sub_1B77FF2E8();
    LOBYTE(v65) = sub_1B72C36C4(v67, v66);
    v62 = v113;

    v97(v67, v38);
    if ((v65 & 1) == 0)
    {
      goto LABEL_21;
    }

    if (qword_1EDAF9E98 == -1)
    {
      goto LABEL_18;
    }
  }

  else
  {

    v116 = v33;
    v52 = v33;
    sub_1B7205540(0, &qword_1EB992C30);
    if (!swift_dynamicCast())
    {
      sub_1B73731E0(v34, type metadata accessor for CoreDataStoreConfiguration);

      v45 = v114;
      goto LABEL_36;
    }

    v53 = v34;
    v54 = v117;
    v55 = [v117 domain];
    v56 = sub_1B7800868();
    v58 = v57;

    v60 = sub_1B7800868();
    v61 = v56;
    v62 = v59;
    v45 = v114;
    if (v61 == v60 && v58 == v59)
    {
    }

    else
    {
      v72 = sub_1B78020F8();

      if ((v72 & 1) == 0)
      {
        sub_1B73731E0(v53, type metadata accessor for CoreDataStoreConfiguration);

        goto LABEL_36;
      }
    }

    v73 = [v54 code];
    if (v73 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v73 <= 0x7FFFFFFF)
    {
      if (v73 != 26 && v73 != 11)
      {
        swift_willThrow();
        sub_1B73731E0(v53, type metadata accessor for CoreDataStoreConfiguration);

        goto LABEL_36;
      }

      v74 = *(v45 + 2);
      v75 = v54;
      v76 = v74;
      sub_1B7372E98(v75, v76, v53);

      v34 = v53;
      goto LABEL_8;
    }

    __break(1u);
  }

  swift_once();
LABEL_18:
  if (byte_1EDAF9EA0 != 1)
  {
LABEL_21:
    sub_1B77FE688();
    swift_willThrow();
    sub_1B73731E0(v62, type metadata accessor for CoreDataStoreConfiguration);
    (v95[0])(v45, v112);

    v45 = v114;
LABEL_36:

    swift_deallocPartialClassInstance();
    return v45;
  }

  v68 = v99;
  sub_1B737317C(v62, v99);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B73731E0(v68, type metadata accessor for CoreDataStoreConfiguration);
    goto LABEL_21;
  }

  v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C38) + 48);
  sub_1B737325C(v68, v100, type metadata accessor for CoreDataStoreLocalConfiguration);
  sub_1B737325C(v68 + v82, v101, type metadata accessor for CoreDataStoreCloudConfiguration);
  if (qword_1EDAFD2C8 != -1)
  {
    swift_once();
  }

  v83 = sub_1B78000B8();
  __swift_project_value_buffer(v83, qword_1EDAFD2D0);
  v84 = sub_1B7800098();
  v85 = sub_1B78011D8();
  v86 = os_log_type_enabled(v84, v85);
  v45 = v114;
  if (v86)
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_1B7198000, v84, v85, "Failed to migrate Core Data store. Let's delete it and try again.", v87, 2u);
    MEMORY[0x1B8CA7A40](v87, -1, -1);
  }

  v88 = *(v45 + 2);
  v89 = v100;
  sub_1B73729A4(v88, v100, v101);

  v90 = *(v45 + 2);
  sub_1B73713D8(v62);

  type metadata accessor for BankConnectAutoBugCaptureReporter();
  inited = swift_initStackObject();
  v92 = [objc_allocWithZone(FKAutoBugCaptureReporter) init];
  *(inited + 16) = v92;
  LOBYTE(v117) = 1;
  v93 = v102;
  v94 = sub_1B77FE688();
  BankConnectAutoBugCaptureReporter.reportValidationIssue(_:error:)();

  v34 = v113;
  sub_1B73731E0(v101, type metadata accessor for CoreDataStoreCloudConfiguration);
  sub_1B73731E0(v89, type metadata accessor for CoreDataStoreLocalConfiguration);
  (v95[0])(v93, v112);

LABEL_8:
  v47 = v108;
  sub_1B737317C(v34, v108);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v63 = type metadata accessor for CoreDataStoreConfiguration;
LABEL_24:
    sub_1B73731E0(v47, v63);
    v80 = 0;
    goto LABEL_25;
  }

  v48 = v47;
  v47 = v106;
  sub_1B737325C(v48, v106, type metadata accessor for CoreDataStoreClientConfiguration);
  if (*(v47 + *(v103 + 20)) != 1)
  {
    v63 = type metadata accessor for CoreDataStoreClientConfiguration;
    goto LABEL_24;
  }

  v49 = v34;
  v50 = [*(v45 + 2) viewContext];
  v51 = [v50 setAutomaticallyMergesChangesFromParent_];
  MEMORY[0x1EEE9AC00](v51);
  v95[-2] = v50;
  sub_1B7801468();
  v78 = *(v45 + 2);
  type metadata accessor for RemoteStoreManager();
  swift_allocObject();
  v79 = v78;
  v80 = sub_1B76F7CF0(v79);

  sub_1B73731E0(v106, type metadata accessor for CoreDataStoreClientConfiguration);
  v34 = v49;
LABEL_25:
  *(v45 + 3) = v80;
  v69 = v107;
  sub_1B737317C(v34, v107);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B73731E0(v34, type metadata accessor for CoreDataStoreConfiguration);
  }

  else
  {
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C38);
    sub_1B73731E0(v69 + *(v70 + 48), type metadata accessor for CoreDataStoreCloudConfiguration);
    sub_1B73731E0(v69, type metadata accessor for CoreDataStoreLocalConfiguration);
    v71 = [*(v45 + 2) newBackgroundContext];
    sub_1B7372754(v71);

    v69 = v34;
  }

  sub_1B73731E0(v69, type metadata accessor for CoreDataStoreConfiguration);
  return v45;
}

id sub_1B73713D8(uint64_t a1)
{
  v2 = v1;
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for CoreDataStoreCloudConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CoreDataStoreLocalConfiguration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CoreDataStoreClientConfiguration(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CoreDataStoreConfiguration(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B737317C(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B737325C(v15, v12, type metadata accessor for CoreDataStoreClientConfiguration);
    if (qword_1EDAFD2C8 != -1)
    {
      swift_once();
    }

    v16 = sub_1B78000B8();
    __swift_project_value_buffer(v16, qword_1EDAFD2D0);
    v17 = sub_1B7800098();
    v18 = sub_1B78011B8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B7198000, v17, v18, "Configuring core data store for client", v19, 2u);
      MEMORY[0x1B8CA7A40](v19, -1, -1);
    }

    sub_1B736EFFC(v12);
    sub_1B7205540(0, &unk_1EDAFC4D0);
    v20 = sub_1B7800C18();

    [v2 setPersistentStoreDescriptions_];

    v21 = type metadata accessor for CoreDataStoreClientConfiguration;
    v22 = v12;
  }

  else
  {
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C38) + 48);
    sub_1B737325C(v15, v9, type metadata accessor for CoreDataStoreLocalConfiguration);
    sub_1B737325C(&v15[v23], v6, type metadata accessor for CoreDataStoreCloudConfiguration);
    if (qword_1EDAFD2C8 != -1)
    {
      swift_once();
    }

    v24 = sub_1B78000B8();
    __swift_project_value_buffer(v24, qword_1EDAFD2D0);
    v25 = sub_1B7800098();
    v26 = sub_1B78011B8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B7198000, v25, v26, "Configuring core data store for daemon", v27, 2u);
      MEMORY[0x1B8CA7A40](v27, -1, -1);
    }

    sub_1B737003C(v9, v6);
    sub_1B7205540(0, &unk_1EDAFC4D0);
    v28 = sub_1B7800C18();

    [v2 setPersistentStoreDescriptions_];

    sub_1B73731E0(v6, type metadata accessor for CoreDataStoreCloudConfiguration);
    v21 = type metadata accessor for CoreDataStoreLocalConfiguration;
    v22 = v9;
  }

  sub_1B73731E0(v22, v21);
  v31[0] = 0;
  if ([v2 load_])
  {
    return v31[0];
  }

  v30 = v31[0];
  sub_1B77FF318();

  return swift_willThrow();
}

id sub_1B73718B0(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() currentQueryGenerationToken];
  v6[0] = 0;
  v3 = [a1 setQueryGenerationFromToken:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1B77FF318();

  return swift_willThrow();
}

uint64_t sub_1B73719B4()
{
  if (*(v0[2] + 24))
  {
    v1 = swift_task_alloc();
    v0[3] = v1;
    *v1 = v0;
    v1[1] = sub_1B7371A7C;

    return sub_1B76F314C();
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1B7371A7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1B7371B74()
{
  v0 = objc_opt_self();
  v1 = [objc_allocWithZone(type metadata accessor for CLLocationValueTransformer()) init];
  if (qword_1EDAFCB70 != -1)
  {
    swift_once();
  }

  [v0 setValueTransformer:v1 forName:qword_1EDB08760];

  v2 = [objc_allocWithZone(type metadata accessor for CNPostalAddressValueTransformer()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991EE8);
  sub_1B7800908();
  v3 = sub_1B7800838();

  [v0 setValueTransformer:v2 forName:v3];

  if (qword_1EDAFC4F0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDAFC500;
  v5 = [objc_allocWithZone(type metadata accessor for LocalizedStringTransformer()) init];
  [v0 setValueTransformer:v5 forName:v4];

  v6 = [objc_allocWithZone(type metadata accessor for UNNotificationContentValueTransformer()) init];
  if (qword_1EDAFC4E0 != -1)
  {
    swift_once();
  }

  [v0 setValueTransformer:v6 forName:qword_1EDAFC4E8];

  v7 = [objc_allocWithZone(type metadata accessor for StorableColorValueTransformer()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB992CD0);
  sub_1B7800908();
  v8 = sub_1B7800838();

  [v0 setValueTransformer:v7 forName:v8];

  if (qword_1EDAFC510 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDAFC520;
  v10 = [objc_allocWithZone(type metadata accessor for StringParamsTransformer()) init];
  [v0 setValueTransformer:v10 forName:v9];
}

uint64_t static CoreDataStore.localPersistentHistoryTrackingEntitiesWithPruning.getter()
{
  v0 = sub_1B7545330(&unk_1F2F40B60);
  swift_arrayDestroy();
  return v0;
}

uint64_t static CoreDataStore.localPersistentHistoryTrackingEntitiesWithoutPruning.getter()
{
  v0 = sub_1B7545330(&unk_1F2F431C0);
  swift_arrayDestroy();
  return v0;
}

void sub_1B7371EC8(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 3;
  NSPersistentStore.subscript.getter(&v18, v19);
  v3 = v20;
  sub_1B726990C(v19);
  if (!v3)
  {
    v20 = MEMORY[0x1E69E7290];
    LOWORD(v19[0]) = 1;
    v18 = 3;
    NSPersistentStore.subscript.setter(v19, &v18);
  }

  v19[0] = 0;
  v4 = [a2 save_];
  v5 = v19[0];
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v19[0];
    v8 = sub_1B77FF318();

    swift_willThrow();
    if (qword_1EDAFD2C8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B78000B8();
    __swift_project_value_buffer(v9, qword_1EDAFD2D0);
    v10 = v8;
    v11 = sub_1B7800098();
    v12 = sub_1B78011D8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_1B7802228();
      v17 = sub_1B71A3EF8(v15, v16, v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1B7198000, v11, v12, "Error saving default store metadata: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1B8CA7A40](v14, -1, -1);
      MEMORY[0x1B8CA7A40](v13, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t CoreDataStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B73721BC()
{
  v0 = sub_1B77FF4F8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v21 - v5;
  v7 = objc_opt_self();
  v8 = sub_1B7800838();
  v9 = [v7 bundleWithIdentifier_];

  if (v9)
  {
    v10 = sub_1B7800838();
    v11 = sub_1B7800838();
    v12 = [v9 URLForResource:v10 withExtension:v11];

    if (v12)
    {
      sub_1B77FF478();

      (*(v1 + 32))(v6, v4, v0);
      v13 = objc_allocWithZone(MEMORY[0x1E695D638]);
      v14 = sub_1B77FF3F8();
      v15 = [v13 initWithContentsOfURL_];

      (*(v1 + 8))(v6, v0);
      if (v15)
      {

        return v15;
      }
    }
  }

  else
  {
    __break(1u);
  }

  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1B7801A78();

  v17 = [v9 description];
  v18 = sub_1B7800868();
  v20 = v19;

  MEMORY[0x1B8CA4D30](v18, v20);

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

void *sub_1B7372494()
{
  v0 = sub_1B7545330(&unk_1F2F40C70);
  swift_arrayDestroy();
  v1 = sub_1B7545330(&unk_1F2F40B60);
  swift_arrayDestroy();
  v2 = sub_1B7485DF0(v1, v0);
  v8 = v2;
  v7[3] = &_s10FinanceKit11FeatureFlagVN_0;
  v7[4] = sub_1B721D3DC();
  LOBYTE(v7[0]) = 5;
  LOBYTE(v0) = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (v0)
  {
    sub_1B724E408(v7, 0x6574636172747845, 0xEE00726564724F64);

    sub_1B724E408(v7, 0xD000000000000015, 0x80000001B787C170);

    v2 = v8;
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = sub_1B7247064(*(v2 + 16), 0);
  v5 = sub_1B72619E8(v7, v4 + 4, v3, v2);
  sub_1B71B7B58();
  if (v5 != v3)
  {
    __break(1u);
LABEL_6:

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1B737261C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B78123D0;
  *(v0 + 32) = 0xD000000000000011;
  *(v0 + 40) = 0x80000001B787C190;
  *(v0 + 48) = 0xD000000000000013;
  *(v0 + 56) = 0x80000001B787C1B0;
  strcpy((v0 + 64), "CloudConsent");
  *(v0 + 77) = 0;
  *(v0 + 78) = -5120;
  *(v0 + 80) = 0x64724F64756F6C43;
  *(v0 + 88) = 0xEA00000000007265;
  v4 = &_s10FinanceKit11FeatureFlagVN_0;
  v5 = sub_1B721D3DC();
  v3[0] = 5;
  v1 = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(v3);
  if (v1)
  {
    v0 = sub_1B723E180(1, 5, 1, v0);
    *(v0 + 16) = 5;
    *(v0 + 96) = 0x64724F64756F6C43;
    *(v0 + 104) = 0xEF746E6576457265;
  }

  return v0;
}

void sub_1B7372754(void *a1)
{
  v2 = NSManagedObjectContext.cloudStore.getter();
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = a1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1B7373420;
    *(v5 + 24) = v4;
    aBlock[4] = sub_1B720493C;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B737BA64;
    aBlock[3] = &block_descriptor_4;
    v6 = _Block_copy(aBlock);
    v7 = v3;
    v8 = a1;

    [v8 performBlockAndWait_];

    _Block_release(v6);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if ((v8 & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_1EDAFD2C8 != -1)
  {
LABEL_11:
    swift_once();
  }

  v9 = sub_1B78000B8();
  __swift_project_value_buffer(v9, qword_1EDAFD2D0);
  oslog = sub_1B7800098();
  v10 = sub_1B78011D8();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1B7198000, oslog, v10, "Could not fetch cloud store to set default metadata", v11, 2u);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
  }
}

void sub_1B73729A4(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v46 = a2;
  v47[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B78012F8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v44 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v42 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v42 - v12;
  if (qword_1EDAFD2C8 != -1)
  {
    swift_once();
  }

  v14 = sub_1B78000B8();
  __swift_project_value_buffer(v14, qword_1EDAFD2D0);
  v15 = sub_1B7800098();
  v16 = sub_1B78011F8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1B7198000, v15, v16, "Removing persistent stores", v17, 2u);
    MEMORY[0x1B8CA7A40](v17, -1, -1);
  }

  v18 = [a1 persistentStoreCoordinator];
  v47[0] = 0;
  v19 = [v18 _removeAllPersistentStores_];

  v20 = v47[0];
  if (v19)
  {
    v21 = v47[0];
    v22 = [a1 persistentStoreCoordinator];
    sub_1B78012E8();
    sub_1B78014C8();
    if (v3)
    {
      (*(v6 + 8))(v13, v5);

      return;
    }

    v43 = *(v6 + 8);
    v43(v13, v5);

    v23 = [a1 persistentStoreCoordinator];
    v24 = *(type metadata accessor for CoreDataStoreCloudConfiguration(0) + 20);
    sub_1B78012E8();
    sub_1B78014C8();
    v42[1] = v24;
    v25 = v43;
    v43(v11, v5);

    v26 = [a1 persistentStoreCoordinator];
    v27 = v44;
    sub_1B78012E8();
    sub_1B78014C8();
    v25(v27, v5);

    v28 = objc_opt_self();
    v29 = [v28 defaultManager];
    v30 = sub_1B77FF3F8();
    v47[0] = 0;
    v31 = [v29 removeItemAtURL:v30 error:v47];

    if (!v31)
    {
      v41 = v47[0];
      goto LABEL_13;
    }

    v32 = v47[0];
    v33 = [v28 defaultManager];
    v34 = sub_1B77FF3F8();
    v47[0] = 0;
    v35 = [v33 removeItemAtURL:v34 error:v47];

    v20 = v47[0];
    if (v35)
    {
      v36 = v47[0];
      v37 = [v28 defaultManager];
      v38 = sub_1B77FF3F8();
      v47[0] = 0;
      v39 = [v37 removeItemAtURL:v38 error:v47];

      v20 = v47[0];
      if (v39)
      {
        v40 = v47[0];
        return;
      }
    }
  }

  v41 = v20;
LABEL_13:
  sub_1B77FF318();

  swift_willThrow();
}

id sub_1B7372E98(void *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for CoreDataStoreConfiguration(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CoreDataStoreCloudConfiguration(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CoreDataStoreLocalConfiguration(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B737317C(a3, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B73731E0(v9, type metadata accessor for CoreDataStoreConfiguration);
    swift_willThrow();
    return a1;
  }

  else
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C38) + 48);
    sub_1B737325C(v9, v15, type metadata accessor for CoreDataStoreLocalConfiguration);
    sub_1B737325C(&v9[v17], v12, type metadata accessor for CoreDataStoreCloudConfiguration);
    if (qword_1EDAFD2C8 != -1)
    {
      swift_once();
    }

    v18 = sub_1B78000B8();
    __swift_project_value_buffer(v18, qword_1EDAFD2D0);
    v19 = sub_1B7800098();
    v20 = sub_1B78011D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B7198000, v19, v20, "Core Data store was corrupted. Deleting and retrying.", v21, 2u);
      MEMORY[0x1B8CA7A40](v21, -1, -1);
    }

    sub_1B73729A4(a2, v15, v12);
    if (!v3)
    {
      sub_1B73713D8(a3);
    }

    sub_1B73731E0(v12, type metadata accessor for CoreDataStoreCloudConfiguration);
    return sub_1B73731E0(v15, type metadata accessor for CoreDataStoreLocalConfiguration);
  }
}

uint64_t sub_1B737317C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreDataStoreConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B73731E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B737325C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit13CoreDataStoreC0E4TypeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7373340(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7373394(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1B73733F0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t SendableRegex.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C50);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PIIRedactionRegex.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PIIRedactionRegex.pattern.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PIIRedactionRegex.replacement.getter()
{
  v1 = *(v0 + *(type metadata accessor for PIIRedactionRegex(0) + 28));

  return v1;
}

uint64_t PIIRedactionRegex.locales.getter()
{
  type metadata accessor for PIIRedactionRegex(0);
}

uint64_t PIIRedactionRegex.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C50);
  v51 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = v41 - v3;
  v4 = type metadata accessor for SendableRegex(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992C58);
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - v10;
  v12 = type metadata accessor for PIIRedactionRegex(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7373CE4();
  v15 = v52;
  sub_1B78023C8();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v52 = v8;
  v17 = v50;
  v18 = v51;
  v19 = v49;
  v60 = 0;
  *v14 = sub_1B7801DF8();
  v14[1] = v20;
  v45 = v20;
  v59 = 2;
  v21 = sub_1B7801DF8();
  v22 = (v14 + *(v12 + 28));
  *v22 = v21;
  v22[1] = v23;
  v44 = v23;
  v58 = 1;
  v24 = sub_1B7801DF8();
  v42 = v14;
  v43 = v12;
  v14[2] = v24;
  v14[3] = v25;
  v26 = v25;

  v27 = v17;
  v41[1] = v26;
  sub_1B77FFEC8();
  v28 = v47;
  (*(v18 + 32))(v47, v27, v48);
  v29 = v52;
  sub_1B7373D38(v28, v52);
  v30 = v42;
  sub_1B7373D38(v29, v42 + *(v43 + 24));
  v57 = 3;
  v31 = sub_1B7801E08();
  v52 = 0;
  LODWORD(v51) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  v56 = 4;
  sub_1B7373D9C();
  v32 = v52;
  sub_1B7801DB8();
  v52 = v32;
  if (v32)
  {
    (*(v19 + 8))(v11, v9);
    v33 = v43;
    __swift_destroy_boxed_opaque_existential_1(a1);

    v34 = 0;
    goto LABEL_5;
  }

  v50 = v9;
  if (v53)
  {
    v35 = v53;
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = sub_1B723B658(v35);

  v33 = v43;
  *(v30 + *(v43 + 32)) = v36;
  v37 = *(v36 + 16);
  if ((v51 & 1) == 0)
  {
    v38 = v46;
    if (!v37)
    {
      v55 = 4;
      sub_1B7801B18();
      v39 = swift_allocError();
      sub_1B73744D8();
      goto LABEL_17;
    }

LABEL_15:
    (*(v19 + 8))(v11, v50);
    sub_1B7374410(v30, v38, type metadata accessor for PIIRedactionRegex);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B7374478(v30, type metadata accessor for PIIRedactionRegex);
  }

  v38 = v46;
  if (!v37)
  {
    goto LABEL_15;
  }

  v54 = 4;
  sub_1B7801B18();
  v39 = swift_allocError();
  sub_1B73744D8();
LABEL_17:
  v40 = v50;
  sub_1B7801AD8();
  v52 = v39;
  swift_willThrow();
  (*(v19 + 8))(v11, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);

  v34 = 1;
LABEL_5:
  sub_1B7374478(v30 + *(v33 + 24), type metadata accessor for SendableRegex);

  if (v34)
  {
  }

  return result;
}

unint64_t sub_1B7373CE4()
{
  result = qword_1EB992C60;
  if (!qword_1EB992C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992C60);
  }

  return result;
}

uint64_t sub_1B7373D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendableRegex(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7373D9C()
{
  result = qword_1EDAF64A8;
  if (!qword_1EDAF64A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB99A670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAF64A8);
  }

  return result;
}

FinanceKit::PIIRedactionRegex::CodingKeys_optional __swiftcall PIIRedactionRegex.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

FinanceKit::PIIRedactionRegex::CodingKeys_optional __swiftcall PIIRedactionRegex.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = PIIRedactionRegex.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t PIIRedactionRegex.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x616C706552696970;
  v4 = 0x6C61626F6C477369;
  if (v1 != 3)
  {
    v4 = 0x73656C61636F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E726574746170;
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

uint64_t sub_1B7373F70()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7374058()
{
  sub_1B7800798();
}

uint64_t sub_1B737412C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B737421C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xEE00746E656D6563;
  v6 = 0x616C706552696970;
  v7 = 0xE800000000000000;
  v8 = 0x6C61626F6C477369;
  if (v2 != 3)
  {
    v8 = 0x73656C61636F6CLL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E726574746170;
    v3 = 0xE700000000000000;
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

uint64_t sub_1B73742C0()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x616C706552696970;
  v4 = 0x6C61626F6C477369;
  if (v1 != 3)
  {
    v4 = 0x73656C61636F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E726574746170;
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

FinanceKit::PIIRedactionRegex::CodingKeys_optional sub_1B7374360@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = PIIRedactionRegex.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_1B7374398(uint64_t a1)
{
  v2 = sub_1B7373CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B73743D4(uint64_t a1)
{
  v2 = sub_1B7373CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7374410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7374478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B73744D8()
{
  result = qword_1EB992C68;
  if (!qword_1EB992C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB992C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992C68);
  }

  return result;
}

unint64_t sub_1B7374540()
{
  result = qword_1EB992C70;
  if (!qword_1EB992C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992C70);
  }

  return result;
}

unint64_t sub_1B7374598()
{
  result = qword_1EB992C78;
  if (!qword_1EB992C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992C78);
  }

  return result;
}

unint64_t sub_1B73745F0()
{
  result = qword_1EB992C80;
  if (!qword_1EB992C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992C80);
  }

  return result;
}

void sub_1B737466C()
{
  sub_1B73746D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B73746D8()
{
  if (!qword_1EB992C98)
  {
    sub_1B77FFE38();
    v0 = sub_1B77FFED8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB992C98);
    }
  }
}

void sub_1B7374758()
{
  type metadata accessor for SendableRegex(319);
  if (v0 <= 0x3F)
  {
    sub_1B73747EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B73747EC()
{
  if (!qword_1EB99E2C0)
  {
    v0 = sub_1B7800FF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB99E2C0);
    }
  }
}

CGColorRef StorableColor.cgColor.getter()
{
  v1 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC10FinanceKit13StorableColor_green);
  v7[0] = *(v0 + OBJC_IVAR____TtC10FinanceKit13StorableColor_red);
  v7[1] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC10FinanceKit13StorableColor_alpha);
  v7[2] = *(v0 + OBJC_IVAR____TtC10FinanceKit13StorableColor_blue);
  v7[3] = v3;
  v4 = v1;
  v5 = CGColorCreate(v1, v7);

  return v5;
}

void static StorableColorValueTransformer.register()()
{
  v1 = objc_opt_self();
  v2 = [objc_allocWithZone(v0) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB992CD0);
  sub_1B7800908();
  v3 = sub_1B7800838();

  [v1 setValueTransformer:v2 forName:v3];
}

uint64_t static StorableColorValueTransformer.allowedTopLevelClasses.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB98FCB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  *(v0 + 32) = type metadata accessor for StorableColor();
  return v0;
}

id StorableColorValueTransformer.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id StorableColor.init(color:)(CGColor *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
    if (v5)
    {
      v6 = v5;
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v5, kCGRenderingIntentAbsoluteColorimetric, a1, 0);
      if (CopyByMatchingToColorSpace)
      {
        v8 = CopyByMatchingToColorSpace;
        v9 = sub_1B78010D8();
        if (v9)
        {
          if (v9[2] == 4)
          {
            *&v2[OBJC_IVAR____TtC10FinanceKit13StorableColor_red] = v9[4];
            *&v2[OBJC_IVAR____TtC10FinanceKit13StorableColor_green] = v9[5];
            *&v2[OBJC_IVAR____TtC10FinanceKit13StorableColor_blue] = v9[6];
            v10 = v9[7];

            *&v2[OBJC_IVAR____TtC10FinanceKit13StorableColor_alpha] = v10;
            v13.receiver = v2;
            v13.super_class = ObjectType;
            v11 = [(CGColor *)&v13 init];

            return v11;
          }
        }
      }

      else
      {
        v8 = a1;
      }
    }

    else
    {
      v6 = a1;
    }
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1B7374CA0()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7374D48()
{
  sub_1B7800798();
}

uint64_t sub_1B7374DDC()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B7374E80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B73757EC();
  *a1 = result;
  return result;
}

void sub_1B7374EB0(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6579570;
  v4 = 0xE400000000000000;
  v5 = 1702194274;
  if (*v1 != 2)
  {
    v5 = 0x6168706C61;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65657267;
    v2 = 0xE500000000000000;
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

uint64_t sub_1B7374F14()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
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

uint64_t sub_1B7374F74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B73757EC();
  *a1 = result;
  return result;
}

uint64_t sub_1B7374F9C(uint64_t a1)
{
  v2 = sub_1B7375984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7374FD8(uint64_t a1)
{
  v2 = sub_1B7375984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Void __swiftcall StorableColor.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC10FinanceKit13StorableColor_red);
  v4 = sub_1B7800838();
  [(objc_class *)with.super.isa encodeDouble:v4 forKey:v3];

  v5 = *(v1 + OBJC_IVAR____TtC10FinanceKit13StorableColor_green);
  v6 = sub_1B7800838();
  [(objc_class *)with.super.isa encodeDouble:v6 forKey:v5];

  v7 = *(v1 + OBJC_IVAR____TtC10FinanceKit13StorableColor_blue);
  v8 = sub_1B7800838();
  [(objc_class *)with.super.isa encodeDouble:v8 forKey:v7];

  v9 = *(v1 + OBJC_IVAR____TtC10FinanceKit13StorableColor_alpha);
  v10 = sub_1B7800838();
  [(objc_class *)with.super.isa encodeDouble:v10 forKey:v9];
}

id StorableColor.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1B7375838(a1);

  return v4;
}

id StorableColor.init(coder:)(void *a1)
{
  v2 = sub_1B7375838(a1);

  return v2;
}

uint64_t StorableColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992CE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7375984();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B7801F98();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1B7801F98();
  v8[13] = 2;
  sub_1B7801F98();
  v8[12] = 3;
  sub_1B7801F98();
  return (*(v4 + 8))(v6, v3);
}