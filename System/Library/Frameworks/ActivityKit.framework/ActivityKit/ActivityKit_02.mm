void sub_1A2C81D68(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v17 = *(a1 + 9);
  v18 = *(a1 + 10);
  v19 = *(a1 + 11);
  v20 = *(a1 + 12);
  v3 = *(a1 + 13);
  v4 = *(a1 + 14);
  v5 = a1[2];
  v21 = MEMORY[0x1E69E7CC0];
  v6 = *(*a1 + 16);
  if (!v6)
  {
    goto LABEL_20;
  }

  v16 = *(a1 + 14);

  v7 = 32;
  do
  {
    v9 = *(v1 + v7);
    v10 = objc_allocWithZone(ACActivityPresentationDestination);
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v8 = 7;
      }

      else if (v9 == 4)
      {
        v8 = 3;
      }

      else
      {
        v8 = 8;
      }

LABEL_4:
      [v10 initWithDestination_];
      MEMORY[0x1A58E41F0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A2D08584();
      }

      goto LABEL_6;
    }

    if (v9)
    {
      if (v9 == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      goto LABEL_4;
    }

    [v10 initWithDestination_];
    MEMORY[0x1A58E41F0]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A2D08584();
    }

LABEL_6:
    sub_1A2D085B4();
    ++v7;
    --v6;
  }

  while (v6);

  v4 = v16;
  v3 = v3;
LABEL_20:
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1A2C569A0(0, &qword_1ED7088C8, off_1E76B6508);
  v13 = sub_1A2D08544();
  v14 = [v12 initWithDestinations_];

  if (v14)
  {

    v15 = v14;
    [v15 setUserDismissalAllowedOnLockScreen_];
    [v15 setShouldSuppressAlertContentOnLockScreen_];
    [v15 setShouldSuppressAlertContentOnHostApplication_];
    [v15 setActionButtonInitiated_];
    [v15 setShouldShowSystemAperture_];
    [v15 setShowsAuthorizationOptions_];

    [v15 setAuthorizationOptionsType_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A2C82038@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for ActivityDescriptorState();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0390, &qword_1A2D0AAA0);
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v52 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0410, &qword_1A2D0AAF0);
  v54 = *(v56 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v52 = &v52 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02D8, &qword_1A2D0AA38);
  v11 = *(*(v63 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v63);
  v62 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v52 - v16);
  v18 = *a1;
  v19 = *a1 + 64;
  v20 = 1 << *(*a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(*a1 + 64);
  v23 = (v20 + 63) >> 6;
  v67 = v18;

  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v59 = v23;
  v60 = v19;
  for (i = v6; v22; result = sub_1A2C725C0(v41, v26 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v46, type metadata accessor for ActivityDescriptorState))
  {
    v68 = v26;
LABEL_9:
    v28 = __clz(__rbit64(v22)) | (v25 << 6);
    v29 = *(v67 + 56);
    v30 = (*(v67 + 48) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v33 = (type metadata accessor for SubscribedActivity(0) - 8);
    v34 = v63;
    sub_1A2C7BFE4(v29 + *(*v33 + 72) * v28, v17 + *(v63 + 48), type metadata accessor for SubscribedActivity);
    *v17 = v31;
    v17[1] = v32;
    v35 = v17;
    v36 = v17;
    v37 = v61;
    sub_1A2C6BD18(v35, v61, &qword_1EB0A02D8, &qword_1A2D0AA38);
    v38 = *(v37 + 8);

    v39 = v37 + *(v34 + 48);
    v17 = v36;
    v40 = v39 + v33[8];
    v41 = i;
    sub_1A2C7BFE4(v40, i, type metadata accessor for ActivityDescriptor);
    sub_1A2C73F50(v39, type metadata accessor for SubscribedActivity);
    v42 = v62;
    sub_1A2C6BD18(v36, v62, &qword_1EB0A02D8, &qword_1A2D0AA38);
    v43 = *(v42 + 8);

    v44 = v42 + *(v34 + 48);
    LOBYTE(v31) = *(v44 + 16);
    sub_1A2C73F50(v44, type metadata accessor for SubscribedActivity);
    *(v41 + *(v66 + 20)) = v31;
    v26 = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1A2C82658(0, v26[2] + 1, 1, v26);
    }

    v46 = v26[2];
    v45 = v26[3];
    v23 = v59;
    v19 = v60;
    if (v46 >= v45 >> 1)
    {
      v26 = sub_1A2C82658(v45 > 1, v46 + 1, 1, v26);
    }

    v22 &= v22 - 1;
    sub_1A2C54E38(v17, &qword_1EB0A02D8, &qword_1A2D0AA38);
    v26[2] = v46 + 1;
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v23)
    {

      v69 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A01C0, &qword_1A2D0A8A8);
      v47 = v53;
      sub_1A2D081D4();
      v48 = v52;
      v49 = v57;
      sub_1A2D081C4();
      (*(v55 + 8))(v47, v49);
      sub_1A2C56A78(&qword_1EB09F4D8, &unk_1EB0A0410, &qword_1A2D0AAF0);
      v50 = v56;
      v51 = sub_1A2D081F4();
      result = (*(v54 + 8))(v48, v50);
      *v58 = v51;
      return result;
    }

    v22 = *(v19 + 8 * v27);
    ++v25;
    if (v22)
    {
      v68 = v26;
      v25 = v27;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ActivityDescriptorState()
{
  result = qword_1EB09F5D0;
  if (!qword_1EB09F5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A2C826D4@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0390, &qword_1A2D0AAA0);
  v35 = *(v37 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v33 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0398, &qword_1A2D0AAA8);
  v36 = *(v38 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v33 - v8;
  v9 = type metadata accessor for ActivityDescriptorState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v33 - v16;
  v18 = *a1;
  v42 = *(*a1 + 16);
  if (v42)
  {
    v19 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    v40 = v14;
    v41 = v10;
    while (v19 < *(v18 + 16))
    {
      v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v22 = *(v10 + 72);
      sub_1A2C7BFE4(v18 + v21 + v22 * v19, v17, type metadata accessor for ActivityDescriptorState);
      v23 = a2[1];
      v43 = *a2;
      v44 = v23;
      v45 = a2[2];
      v46 = *(a2 + 6);
      if (ActivityPredicate.matches(descriptor:)(v17))
      {
        sub_1A2C725C0(v17, v14, type metadata accessor for ActivityDescriptorState);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A2C82B20(0, *(v20 + 16) + 1, 1);
          v20 = v47;
        }

        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1A2C82B20(v25 > 1, v26 + 1, 1);
          v20 = v47;
        }

        *(v20 + 16) = v26 + 1;
        v27 = v20 + v21 + v26 * v22;
        v14 = v40;
        result = sub_1A2C725C0(v40, v27, type metadata accessor for ActivityDescriptorState);
        v10 = v41;
      }

      else
      {
        result = sub_1A2C73F50(v17, type metadata accessor for ActivityDescriptorState);
      }

      if (v42 == ++v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_13:
    *&v43 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A01C0, &qword_1A2D0A8A8);
    v28 = v33;
    sub_1A2D081D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
    v29 = v34;
    v30 = v37;
    sub_1A2D081C4();
    (*(v35 + 8))(v28, v30);
    sub_1A2C56A78(&unk_1EB09F4E0, &unk_1EB0A0398, &qword_1A2D0AAA8);
    v31 = v38;
    v32 = sub_1A2D081F4();
    result = (*(v36 + 8))(v29, v31);
    *v39 = v32;
  }

  return result;
}

size_t sub_1A2C82B20(size_t a1, int64_t a2, char a3)
{
  result = sub_1A2C7E67C(a1, a2, a3, *v3, &qword_1EB0A03A8, &qword_1A2D0AAB0, type metadata accessor for ActivityDescriptorState);
  *v3 = result;
  return result;
}

void ActivityDescriptor.platterTarget.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = sub_1A2C66BC0(0);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = *(v3 + 56) + 48 * v4;
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v10 = *(v6 + 32);
  v11 = *(v6 + 40);
  *a1 = *v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;

  sub_1A2C72A00();
}

uint64_t ActivityDescriptorState.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActivityDescriptorState();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ActivityDescriptor.requester.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v6[0] = *(v1 + 48);
  v6[1] = v2;
  v7 = *(v1 + 80);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1A2C73320(v6, v5);
}

unint64_t sub_1A2C82C60(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1A2D087B4();

  return sub_1A2C82F30(a1, v5);
}

uint64_t sub_1A2C82CAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09A0, &qword_1A2D0D148);
  v37 = a2;
  result = sub_1A2D08974();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v37 & 1) == 0)
      {
        v26 = v22;
      }

      v27 = *(v8 + 40);
      result = sub_1A2D087B4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1A2C82F30(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A2CB4A50();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A2D087C4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A2C82FF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09A8, &unk_1A2D0D150);
  result = sub_1A2D08974();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_1A2D087B4();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1A2C8325C()
{
  result = qword_1EB09F500;
  if (!qword_1EB09F500)
  {
    sub_1A2C569A0(255, &qword_1ED7088C8, off_1E76B6508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F500);
  }

  return result;
}

uint64_t OpaqueActivityPayload.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A2D07FC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1A2C834FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A04F0, &qword_1A2D0AC98);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ActivityRequest();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1A2C54E38(a1, &unk_1EB0A04F0, &qword_1A2D0AC98);
    sub_1A2C91E28(a2, a3, type metadata accessor for ActivityRequest, type metadata accessor for ActivityRequest, type metadata accessor for ActivityRequest, sub_1A2CB3844, v10);

    return sub_1A2C54E38(v10, &unk_1EB0A04F0, &qword_1A2D0AC98);
  }

  else
  {
    sub_1A2C7C590(a1, v14, type metadata accessor for ActivityRequest);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1A2C83720(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1A2C83720(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A2C64868(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ActivityRequest();
      return sub_1A2C8B18C(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ActivityRequest);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1A2CB3844();
    goto LABEL_7;
  }

  sub_1A2CB2DC8(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1A2C64868(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1A2D08B84();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1A2C7D544(v12, a2, a3, a1, v18, type metadata accessor for ActivityRequest, type metadata accessor for ActivityRequest);
}

uint64_t sub_1A2C838B4(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(v3 + 96);
  v7 = *a3;
  type metadata accessor for Activity();
  result = sub_1A2D08704();
  if (!v4)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1A2C83944@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  result = sub_1A2C83994(v6, v8, &v10, v4, v5);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A2C83994(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v9 = sub_1A2D08344();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a3;
  v15 = *(v5 + 96);
  *v13 = v15;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v16 = v15;
  LOBYTE(v15) = sub_1A2D08364();
  result = (*(v10 + 8))(v13, v9);
  if (v15)
  {
    v18 = *(v5 + 72);
    v21 = v14;

    v19 = sub_1A2C83B08(a1, a2, &v21);

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2C83B08(uint64_t *a1, uint64_t a2, char *a3)
{
  v5 = *a3;
  sub_1A2C5E898();
  v8 = v5;
  v6 = sub_1A2C83B88(a1, a2, &v8);

  return v6;
}

uint64_t sub_1A2C83B88(uint64_t *a1, uint64_t a2, char *a3)
{
  v7 = *a3;
  v8 = *(v3[9] + 16);

  os_unfair_lock_lock(v8);
  sub_1A2C83C24(v3, a1, a2, v7, &v10);
  os_unfair_lock_unlock(v8);

  if (!v4)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1A2C83C24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  v12 = a2[1];
  swift_beginAccess();
  v13 = a1[11];
  v18[0] = v11;
  v18[1] = v12;
  v14 = *(v10 + 80);
  v15 = *(v10 + 88);
  type metadata accessor for Activity();

  sub_1A2D083D4();

  result = v19;
  if (v19 || (LOBYTE(v18[0]) = a4, result = sub_1A2C7F36C(a2, a3, v18), !v5))
  {
    *a5 = result;
  }

  return result;
}

uint64_t dispatch thunk of Activity.update(_:alertConfiguration:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 416);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A2C8ED44;

  return v10(a1, a2);
}

uint64_t sub_1A2C83E7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A2D07F94();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2C847A8, 0, 0);
}

void AlertConfiguration.init(title:body:sound:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a3[1];
  v17 = *a3;
  v7 = *(a3 + 16);
  v8 = a3[3];
  v9 = type metadata accessor for AlertConfiguration();
  v10 = a4 + v9[6];
  *(v10 + 24) = 0;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v11 = a4 + v9[7];
  *v11 = 0x4018000000000000;
  *(v11 + 8) = 0;
  *(a4 + v9[8]) = 0;
  v12 = sub_1A2D07EF4();
  v13 = *(*(v12 - 8) + 32);
  v13(a4, a1, v12);
  v13(a4 + v9[5], a2, v12);
  v14 = *(v10 + 8);
  v15 = *(v10 + 24);

  *v10 = v17;
  *(v10 + 8) = v16;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
}

uint64_t OpaqueActivityContent.contentState.getter()
{
  v1 = *v0;
  sub_1A2C5E63C(*v0, *(v0 + 8));
  return v1;
}

uint64_t ActivityDescriptorContentState.init(descriptor:state:contentState:content:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  sub_1A2C726F8(a1, a6, type metadata accessor for ActivityDescriptor);
  v11 = type metadata accessor for ActivityDescriptorContentState();
  *(a6 + v11[5]) = v10;
  v12 = (a6 + v11[6]);
  *v12 = a3;
  v12[1] = a4;
  return sub_1A2C726F8(a5, a6 + v11[7], type metadata accessor for OpaqueActivityContent);
}

uint64_t ActivityDescriptorContentState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EA8, &qword_1A2D172B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C843DC();
  sub_1A2D08C74();
  LOBYTE(v17) = 0;
  type metadata accessor for ActivityDescriptor();
  sub_1A2C60E50(&qword_1ED708D60, type metadata accessor for ActivityDescriptor);
  sub_1A2D08AE4();
  if (!v2)
  {
    v11 = type metadata accessor for ActivityDescriptorContentState();
    LOBYTE(v17) = *(v3 + v11[5]);
    v19 = 1;
    sub_1A2C74124();
    sub_1A2D08AE4();
    v12 = (v3 + v11[6]);
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v19 = 2;
    sub_1A2C5E63C(v17, v13);
    sub_1A2C669D0();
    sub_1A2D08AE4();
    sub_1A2C55840(v17, v18);
    v14 = v11[7];
    LOBYTE(v17) = 3;
    type metadata accessor for OpaqueActivityContent();
    sub_1A2C60E50(&qword_1ED708AD8, type metadata accessor for OpaqueActivityContent);
    sub_1A2D08AE4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A2C843DC()
{
  result = qword_1EB09F5C8;
  if (!qword_1EB09F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F5C8);
  }

  return result;
}

uint64_t sub_1A2C84430()
{
  v1 = 0x7470697263736564;
  v2 = 0x53746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
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

uint64_t static AlertConfiguration.AlertSound.named(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
}

uint64_t sub_1A2C844C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = *v3;
  v6 = *(*(type metadata accessor for OpaqueActivityPayload(0) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = *(v5 + 88);
  v9 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[20] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4[21] = AssociatedConformanceWitness;
  v12 = swift_getAssociatedConformanceWitness();
  v4[22] = v12;
  v13 = swift_getAssociatedConformanceWitness();
  v4[23] = v13;
  v4[2] = AssociatedTypeWitness;
  v4[3] = AssociatedConformanceWitness;
  v4[4] = v12;
  v4[5] = v13;
  v14 = type metadata accessor for ActivityContent();
  v4[24] = v14;
  v15 = *(v14 - 8);
  v4[25] = v15;
  v16 = *(v15 + 64) + 15;
  v4[26] = swift_task_alloc();
  v17 = sub_1A2D07F94();
  v4[27] = v17;
  v18 = *(v17 - 8);
  v4[28] = v18;
  v19 = *(v18 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[6] = AssociatedTypeWitness;
  v4[7] = AssociatedConformanceWitness;
  v4[8] = v12;
  v4[9] = v13;
  v20 = type metadata accessor for ActivityPayload();
  v4[30] = v20;
  v21 = *(v20 - 8);
  v4[31] = v21;
  v22 = *(v21 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2C84864, 0, 0);
}

uint64_t sub_1A2C847A8()
{
  v1 = v0[7];
  _s11ActivityKit0A7RequestV14attributesType0D4Data20initialOpaqueContent12sceneTargets010alertSceneK019presentationOptions21contentSourceRequests11isEphemeral0S9Unbounded0S9Momentary0S9Important10identifier15protectionClass9startDate21assetProviderBundleIdAcA0a10AttributesE0V_10Foundation0F0VAA0haI0VSDyAA0a12PresentationO0V0A23PresentationDestinationOAA0M6TargetO0C0OGA6_A_SayAA0aiQ0OA4_OGS4bSSSgAA0a10ProtectionZ0OSgAU4DateVA11_tcfcfA12__0();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1A2C8B244;
  v3 = v0[7];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_1A2C844C8(v6, v4, v3);
}

uint64_t sub_1A2C84864()
{
  v27 = v0[33];
  v1 = v0[31];
  v29 = v0[32];
  v30 = v0[30];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[25];
  v25 = v0[22];
  v26 = v0[23];
  v6 = v0[20];
  v24 = v0[21];
  v7 = v0[19];
  v28 = v0[18];
  v8 = v0[15];
  v9 = v0[14];
  (*(v0[28] + 16))(v2, v0[16], v0[27]);
  (*(v5 + 16))(v3, v9, v4);
  sub_1A2C6BD18(v8, v7, &qword_1EB0A04D0, &unk_1A2D15640);
  ActivityPayload.init(timestamp:content:alertConfiguration:)(v2, v3, v7, v27);
  (*(v1 + 16))(v29, v27, v30);
  OpaqueActivityPayload.init<A>(encoding:)(v29, v6, v24, v25, v26, v28);
  v10 = v0[33];
  v11 = v0[30];
  v12 = v0[31];
  v13 = v0[17];
  v14 = v0[18];
  v15 = *(v13 + *(*v13 + 144));
  sub_1A2C85250(v13[2], v13[3], v14);
  sub_1A2C69F84(v14, type metadata accessor for OpaqueActivityPayload);
  (*(v12 + 8))(v10, v11);
  v17 = v0[32];
  v16 = v0[33];
  v18 = v0[29];
  v19 = v0[26];
  v21 = v0[18];
  v20 = v0[19];

  v22 = v0[1];

  return v22();
}

uint64_t ActivityPayload.init(timestamp:content:alertConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for ActivityPayload();
  v8 = v7[15];
  v9 = type metadata accessor for AlertConfiguration();
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  sub_1A2D07FB4();
  v10 = v7[13];
  v11 = sub_1A2D07F94();
  (*(*(v11 - 8) + 32))(a4 + v10, a1, v11);
  v12 = v7[14];
  v13 = type metadata accessor for ActivityContent();
  (*(*(v13 - 8) + 32))(a4 + v12, a2, v13);
  return sub_1A2C7A000(a3, a4 + v8, &qword_1EB0A04D0, &unk_1A2D15640);
}

uint64_t OpaqueActivityPayload.init<A>(encoding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a4;
  v50 = a2;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v48 = a5;
  v53 = type metadata accessor for ActivityContent();
  v55 = *(v53 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v40 - v11;
  v41 = type metadata accessor for OpaqueActivityContent();
  v12 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v51 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OpaqueActivityPayload(0);
  v15 = v14[8];
  v16 = type metadata accessor for AlertConfiguration();
  (*(*(v16 - 8) + 56))(a6 + v15, 1, 1, v16);
  v17 = v14[9];
  v49 = v17;
  v18 = sub_1A2D07F94();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a6 + v17, 1, 1, v18);
  *(a6 + v14[10]) = 0;
  v20 = sub_1A2D07FC4();
  v43 = *(v20 - 8);
  v44 = v20;
  (*(v43 + 16))(a6, a1);
  v56 = v50;
  v57 = a3;
  v58 = v60;
  v59 = a5;
  v21 = type metadata accessor for ActivityPayload();
  v22 = v21[13];
  v23 = v14[5];
  v45 = v19;
  v46 = v18;
  v24 = v19;
  v25 = v51;
  v26 = *(v24 + 16);
  v42 = v23;
  v26(a6 + v23, a1 + v22, v18);
  v27 = a1 + v21[15];
  v47 = v15;
  sub_1A2C72098(v27, a6 + v15, &qword_1EB0A04D0, &unk_1A2D15640);
  v28 = v21[14];
  v29 = *(v55 + 16);
  v55 = a1;
  v30 = a1 + v28;
  v31 = v49;
  v32 = v52;
  v29(v52, v30, v53);
  v33 = v54;
  OpaqueActivityContent.init<A>(encoding:)(v32, v25);
  if (v33)
  {
    (*(*(v21 - 1) + 8))(v55, v21);
    (*(v43 + 8))(a6, v44);
    (*(v45 + 8))(a6 + v42, v46);
    sub_1A2C54E38(a6 + v47, &qword_1EB0A04D0, &unk_1A2D15640);
    return sub_1A2C54E38(a6 + v31, &qword_1EB0A0E28, &unk_1A2D0EC10);
  }

  else
  {
    v34 = a6 + v14[7];
    sub_1A2C67248(v25, v34, type metadata accessor for OpaqueActivityContent);
    v35 = *v34;
    v36 = *(v34 + 8);
    v37 = (a6 + v14[6]);
    *v37 = *v34;
    v37[1] = v36;
    v38 = *(v41 + 20);
    sub_1A2C5E63C(v35, v36);
    sub_1A2C72098(v34 + v38, a6 + v31, &qword_1EB0A0E28, &unk_1A2D0EC10);
    sub_1A2C6E9DC(*v34, *(v34 + 8));
    return (*(*(v21 - 1) + 8))(v55, v21);
  }
}

uint64_t sub_1A2C851E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C85250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for OpaqueActivityPayload(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = *(v3 + 96);
  sub_1A2C85768(a3, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpaqueActivityPayload);
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = a1;
  v12[4] = a2;
  sub_1A2C857D0(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for OpaqueActivityPayload);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1A2C8BB18;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1A2C56C1C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_5;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2C8547C()
{
  v1 = type metadata accessor for OpaqueActivityPayload(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v27 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + 32);

  v6 = v0 + v3;
  v7 = sub_1A2D07FC4();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = v1[5];
  v9 = sub_1A2D07F94();
  v10 = *(v9 - 8);
  v25 = *(v10 + 8);
  v25(v0 + v3 + v8, v9);
  sub_1A2C55840(*(v6 + v1[6]), *(v6 + v1[6] + 8));
  v11 = v0 + v3 + v1[7];
  sub_1A2C55840(*v11, *(v11 + 8));
  v12 = *(type metadata accessor for OpaqueActivityContent() + 20);
  v26 = *(v10 + 48);
  if (!v26(v11 + v12, 1, v9))
  {
    v25(v11 + v12, v9);
  }

  v13 = v6 + v1[8];
  v14 = type metadata accessor for AlertConfiguration();
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v23 = v2;
    v24 = v0;
    v15 = sub_1A2D07EF4();
    v16 = *(*(v15 - 8) + 8);
    v16(v13, v15);
    v17 = v15;
    v2 = v23;
    v16(v13 + *(v14 + 20), v17);
    v18 = v13 + *(v14 + 24);
    v19 = *(v18 + 8);

    v20 = *(v18 + 24);
    v0 = v24;
  }

  v21 = v1[9];
  if (!v26(v6 + v21, 1, v9))
  {
    v25(v6 + v21, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v27, v2 | 7);
}

uint64_t sub_1A2C85768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C857D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ActivityDescriptorContentState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for OpaqueActivityContent();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivityDescriptor();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EB0, &qword_1A2D172B8);
  v25 = *(v28 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ActivityDescriptorContentState();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1A2C843DC();
  v27 = v12;
  v19 = v29;
  sub_1A2D08C64();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v20 = v25;
  LOBYTE(v31) = 0;
  sub_1A2C60E50(&qword_1ED709430, type metadata accessor for ActivityDescriptor);
  v21 = v26;
  sub_1A2D08A54();
  sub_1A2C726F8(v21, v16, type metadata accessor for ActivityDescriptor);
  v32 = 1;
  sub_1A2C78A64();
  sub_1A2D08A54();
  v16[v13[5]] = v31;
  v32 = 2;
  sub_1A2C6CFD4();
  sub_1A2D08A54();
  *&v16[v13[6]] = v31;
  LOBYTE(v31) = 3;
  sub_1A2C60E50(&qword_1ED709098, type metadata accessor for OpaqueActivityContent);
  sub_1A2D08A54();
  (*(v20 + 8))(v27, v28);
  sub_1A2C726F8(v6, &v16[v13[7]], type metadata accessor for OpaqueActivityContent);
  sub_1A2C7C04C(v16, v24, type metadata accessor for ActivityDescriptorContentState);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_1A2C73FB0(v16, type metadata accessor for ActivityDescriptorContentState);
}

uint64_t sub_1A2C85CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
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
  sub_1A2C75024(&qword_1ED709070, type metadata accessor for OpaqueActivityPayload);
  sub_1A2D07E64();
  sub_1A2C54E38(a2, &qword_1EB0A02E0, &qword_1A2D0AA50);
  sub_1A2C55840(v12, v14);

  (*(*(a3 - 8) + 56))(v8, 0, 1, a3);
  return sub_1A2C8737C(v8, a2);
}

void AlertConfiguration.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v54 = sub_1A2D07EF4();
  v52 = *(v54 - 8);
  v3 = *(v52 + 64);
  v4 = MEMORY[0x1EEE9AC00](v54);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1348, &qword_1A2D100C8);
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - v9;
  v11 = type metadata accessor for AlertConfiguration();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v15[*(v13 + 24)];
  *(v16 + 3) = 0;
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = &v15[*(v13 + 28)];
  *v17 = 0x4018000000000000;
  v17[8] = 0;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C8641C();
  v19 = v57;
  sub_1A2D08C64();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v22 = *(v16 + 1);
    v23 = *(v16 + 3);
  }

  else
  {
    v47 = v17;
    v48 = v11;
    v49 = v15;
    v57 = a1;
    LOBYTE(v58) = 0;
    sub_1A2C86470(&qword_1ED708D68);
    v20 = v53;
    v21 = v54;
    sub_1A2D08A54();
    v24 = v10;
    v25 = v49;
    v53 = *(v52 + 32);
    (v53)(v49, v20, v21);
    LOBYTE(v58) = 1;
    v26 = v51;
    sub_1A2D08A54();
    (v53)(&v25[*(v48 + 20)], v26, v21);
    v62 = 2;
    sub_1A2C865C8();
    v27 = v56;
    sub_1A2D08A54();
    v28 = v59;
    v54 = v58;
    v29 = v60;
    v30 = v61;
    v31 = *(v16 + 1);
    v32 = v24;
    v33 = v27;
    v34 = *(v16 + 3);

    *v16 = v54;
    *(v16 + 1) = v28;
    v16[16] = v29;
    *(v16 + 3) = v30;
    v62 = 3;
    sub_1A2C869B0();
    sub_1A2D08A14();
    if ((v59 & 0x100) != 0)
    {
      v35 = 0x4018000000000000;
    }

    else
    {
      v35 = v58;
    }

    if ((v59 & 0x100) != 0)
    {
      v36 = 0;
    }

    else
    {
      v36 = v59;
    }

    v37 = v57;
    v38 = v50;
    v39 = v55;
    v41 = v47;
    v40 = v48;
    *v47 = v35;
    *(v41 + 8) = v36 & 1;
    v42 = *(v40 + 32);
    LOBYTE(v58) = 4;
    v43 = sub_1A2D08A04();
    (*(v39 + 8))(v32, v33);
    v44 = v43 & 1;
    v45 = v49;
    v49[v42] = v44;
    sub_1A2C872BC(v45, v38);
    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_1A2C87320(v45);
  }
}

unint64_t sub_1A2C8641C()
{
  result = qword_1ED708C40;
  if (!qword_1ED708C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C40);
  }

  return result;
}

uint64_t sub_1A2C86470(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A2D07EF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A2C864B4()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x646E756F73;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2036625250;
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

unint64_t sub_1A2C865C8()
{
  result = qword_1ED708C48;
  if (!qword_1ED708C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C48);
  }

  return result;
}

uint64_t AlertConfiguration.AlertSound.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1358, &qword_1A2D100D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C86904();
  sub_1A2D08C64();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v26) = 0;
    v11 = sub_1A2D089F4();
    v14 = v13;
    v25 = v11;
    v28 = 1;
    sub_1A2C6CFD4();
    sub_1A2D08A14();
    v15 = v27;
    if (v27 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      v17 = v26;
      v23 = 0;
      sub_1A2C569A0(0, &qword_1EB0A0858, 0x1E696ACD0);
      sub_1A2C569A0(0, &qword_1EB0A1360, 0x1E69DA8E8);
      v24 = v17;
      v18 = v23;
      v19 = sub_1A2D086B4();
      if (v18)
      {

        sub_1A2C5DE40(v24, v15);
        v16 = 0;
      }

      else
      {
        v16 = v19;
        sub_1A2C5DE40(v24, v15);
      }
    }

    LOBYTE(v26) = 2;
    v20 = sub_1A2D08A04();
    (*(v6 + 8))(v9, v5);
    *a2 = v25;
    *(a2 + 8) = v14;
    *(a2 + 16) = v20 & 1;
    *(a2 + 24) = v16;
    v21 = v16;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_1A2C86904()
{
  result = qword_1ED708C60;
  if (!qword_1ED708C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C60);
  }

  return result;
}

uint64_t sub_1A2C86958()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x746E656C69537369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t sub_1A2C869B0()
{
  result = qword_1ED708BE0;
  if (!qword_1ED708BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708BE0);
  }

  return result;
}

uint64_t AlertConfiguration.AutomaticDismissOption.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1328, &qword_1A2D100A0);
  v45 = *(v47 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v40 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1330, &qword_1A2D100A8);
  v44 = *(v42 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1338, &qword_1A2D100B0);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1340, &unk_1A2D100B8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1A2C8704C();
  v19 = v49;
  sub_1A2D08C64();
  if (!v19)
  {
    v40 = v8;
    v41 = 0;
    v21 = v46;
    v20 = v47;
    v49 = v13;
    v22 = v48;
    v23 = v16;
    v24 = sub_1A2D08A64();
    v25 = (2 * *(v24 + 16)) | 1;
    v52 = v24;
    v53 = v24 + 32;
    v54 = 0;
    v55 = v25;
    v26 = sub_1A2C6D930();
    if (v26 == 3 || v54 != v55 >> 1)
    {
      v31 = sub_1A2D088A4();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
      *v33 = &type metadata for AlertConfiguration.AutomaticDismissOption;
      v27 = v23;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
LABEL_9:
      (*(v49 + 8))(v27, v12);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v50);
    }

    if (!v26)
    {
      v51 = 0;
      sub_1A2CD6858();
      v27 = v16;
      v36 = v41;
      sub_1A2D089D4();
      if (!v36)
      {
        (*(v43 + 8))(v11, v40);
        (*(v49 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v29 = 1;
        v30 = 0;
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    if (v26 == 1)
    {
      v51 = 1;
      sub_1A2CD6804();
      v27 = v16;
      v28 = v41;
      sub_1A2D089D4();
      if (!v28)
      {
        (*(v44 + 8))(v7, v42);
        (*(v49 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v29 = 1;
        v30 = 1;
LABEL_16:
        *v22 = v30;
        *(v22 + 8) = v29;
        return __swift_destroy_boxed_opaque_existential_1(v50);
      }

      goto LABEL_9;
    }

    v51 = 2;
    sub_1A2C871E0();
    v37 = v41;
    sub_1A2D089D4();
    if (!v37)
    {
      sub_1A2D08A44();
      v38 = v49;
      v30 = v39;
      (*(v45 + 8))(v21, v20);
      (*(v38 + 8))(v16, v12);
      swift_unknownObjectRelease();
      v29 = 0;
      goto LABEL_16;
    }

    (*(v49 + 8))(v16, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

unint64_t sub_1A2C8704C()
{
  result = qword_1ED708C28;
  if (!qword_1ED708C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708C28);
  }

  return result;
}

uint64_t sub_1A2C870A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2C870C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2C870C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726576656ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616470557478656ELL && a2 == 0xEA00000000006574 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746661 && a2 == 0xE500000000000000)
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

unint64_t sub_1A2C871E0()
{
  result = qword_1EB09F648;
  if (!qword_1EB09F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F648);
  }

  return result;
}

uint64_t sub_1A2C87234()
{
  v1 = 0x616470557478656ELL;
  if (*v0 != 1)
  {
    v1 = 0x7265746661;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726576656ELL;
  }
}

uint64_t storeEnumTagSinglePayload for AlertConfiguration.AutomaticDismissOption(uint64_t result, int a2, int a3)
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

uint64_t sub_1A2C872BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C87320(uint64_t a1)
{
  v2 = type metadata accessor for AlertConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2C8737C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C873EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A2C87488()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1A2C874D8();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1A2C874D8()
{
  v1 = v0;
  v2 = *(v0 + 24);

  os_unfair_lock_assert_owner(v2 + 4);

  if (*(v1 + 16))
  {
    v4 = *(v1 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A2D08764();
    swift_unknownObjectRelease();
    v5 = *(v1 + 16);
    *(v1 + 16) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2C87570(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[1];
      v21[0] = *v7;
      v21[1] = v9;
      v11 = *v7;
      v10 = v7[1];
      v22[0] = v7[2];
      *(v22 + 9) = *(v7 + 41);
      v18 = v11;
      v19 = v10;
      v20[0] = v7[2];
      *(v20 + 9) = *(v7 + 41);
      sub_1A2C87684(v21, &v15);
      v12 = a1(&v18);
      if (v3)
      {
        break;
      }

      v4 = v12;
      v15 = v18;
      v16 = v19;
      v17[0] = v20[0];
      *(v17 + 9) = *(v20 + 9);
      sub_1A2C87A10(&v15);
      v13 = v8-- == 0;
      v7 += 4;
      if ((v4 | v13))
      {
        return v4 & 1;
      }
    }

    v15 = v18;
    v16 = v19;
    v17[0] = v20[0];
    *(v17 + 9) = *(v20 + 9);
    sub_1A2C87A10(&v15);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

Swift::Bool __swiftcall ActivityContentSource.contained(in:)(Swift::OpaquePointer in)
{
  v2 = v1[1];
  v5[0] = *v1;
  v5[1] = v2;
  v6[0] = v1[2];
  *(v6 + 9) = *(v1 + 41);
  v4[2] = v5;
  return sub_1A2C87570(sub_1A2C8774C, v4, in._rawValue) & 1;
}

uint64_t sub_1A2C8774C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v4 = v2[1];
  v6[0] = *v2;
  v6[1] = v4;
  v7[0] = v2[2];
  *(v7 + 9) = *(v2 + 41);
  return _s11ActivityKit0A13ContentSourceO2eeoiySbAC_ACtFZ_0(v8, v6) & 1;
}

uint64_t _s11ActivityKit0A13ContentSourceO2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  *v21 = *a1;
  *&v21[16] = v2;
  *v22 = a1[2];
  v3 = *v22;
  v4 = a2[1];
  v23 = *a2;
  *v24 = v4;
  v6 = *a2;
  v5 = a2[1];
  *&v24[16] = a2[2];
  *&v24[25] = *(a2 + 41);
  *&v22[9] = *(a1 + 41);
  v25[0] = *v21;
  v25[1] = v2;
  v26[0] = v3;
  *(v26 + 9) = *&v22[9];
  v26[2] = v6;
  v26[3] = v5;
  v27[0] = a2[2];
  *(v27 + 9) = *(a2 + 41);
  if (v22[24])
  {
    if (v22[24] == 1)
    {
      if (v24[40] == 1)
      {
        if (*v21 != v23)
        {
          v7 = sub_1A2D08B34();
          sub_1A2C87684(v21, v20);
          sub_1A2C87684(&v23, v20);
          sub_1A2C54E38(v25, &qword_1EB0A0D20, &qword_1A2D0E510);
          return v7 & 1;
        }

        sub_1A2C87684(v21, v20);
        sub_1A2C87684(&v23, v20);
        goto LABEL_12;
      }
    }

    else if (v24[40] == 2)
    {
      v8 = vorrq_s8(*&v24[8], *&v24[24]);
      if (!(*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | *v24 | *(&v23 + 1) | v23))
      {
LABEL_12:
        sub_1A2C54E38(v25, &qword_1EB0A0D20, &qword_1A2D0E510);
        v7 = 1;
        return v7 & 1;
      }
    }

    goto LABEL_10;
  }

  if (v24[40])
  {
LABEL_10:
    sub_1A2C87684(v21, v20);
    sub_1A2C87684(&v23, v20);
    sub_1A2C54E38(v25, &qword_1EB0A0D20, &qword_1A2D0E510);
    v7 = 0;
    return v7 & 1;
  }

  v13 = *&v24[32];
  v14 = *v21;
  v15 = *&v21[8];
  v16 = *&v21[24];
  v17 = v22[0];
  v18 = *&v22[8];
  v19 = *&v22[16];
  v10[0] = v23;
  v10[1] = *v24;
  v11 = v24[16];
  v12 = *&v24[24];
  sub_1A2C87684(&v23, v20);
  sub_1A2C87684(v21, v20);
  sub_1A2C87684(v21, v20);
  sub_1A2C87684(&v23, v20);
  v7 = _s11ActivityKit04PushA13ContentSourceV2eeoiySbAC_ACtFZ_0(&v14, v10);
  sub_1A2C54E38(v25, &qword_1EB0A0D20, &qword_1A2D0E510);
  sub_1A2C87A10(&v23);
  sub_1A2C87A10(v21);
  return v7 & 1;
}

uint64_t sub_1A2C87A6C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for OpaqueActivityPayload(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED709838 != -1)
  {
    swift_once();
  }

  v11 = sub_1A2D08094();
  __swift_project_value_buffer(v11, qword_1ED709840);
  sub_1A2C68E98(a3, v10, type metadata accessor for OpaqueActivityPayload);

  v12 = sub_1A2D08074();
  v13 = sub_1A2D086A4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v3;
    v15 = a3;
    v16 = v14;
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136446466;
    v18 = a1;
    *(v16 + 4) = sub_1A2C55558(a1, a2, &v30);
    *(v16 + 12) = 2082;
    sub_1A2D07FC4();
    sub_1A2C5AD40(&qword_1EB09F640, MEMORY[0x1E69695A8]);
    v19 = sub_1A2D08B04();
    v21 = v20;
    sub_1A2C69F24(v10, type metadata accessor for OpaqueActivityPayload);
    v22 = sub_1A2C55558(v19, v21, &v30);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_1A2C51000, v12, v13, "Updating activity: %{public}s; payload: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58E5180](v17, -1, -1);
    v23 = v16;
    a3 = v15;
    MEMORY[0x1A58E5180](v23, -1, -1);
  }

  else
  {
    v18 = a1;

    sub_1A2C69F24(v10, type metadata accessor for OpaqueActivityPayload);
  }

  if (qword_1ED708A58 != -1)
  {
    swift_once();
  }

  v24 = qword_1ED712970;
  swift_unknownObjectWeakInit();
  type metadata accessor for Watchdog();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  type metadata accessor for UnfairLock();
  v26 = swift_allocObject();
  v27 = swift_slowAlloc();
  *(v26 + 16) = v27;
  v27->_os_unfair_lock_opaque = 0;
  *(v25 + 24) = v26;
  *(v25 + 32) = 0;

  os_unfair_lock_lock(v27);
  sub_1A2C8BCE8(v24, sub_1A2CA1640, 0, 10.0);
  os_unfair_lock_unlock(v27);

  sub_1A2C87E1C(v25, &v30, v18, a2, a3);

  return MEMORY[0x1A58E5250](&v30);
}

uint64_t sub_1A2C87E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for OpaqueActivityPayload(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(result + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue);
    v14 = result;
    sub_1A2C68E98(a5, &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpaqueActivityPayload);
    v15 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = a3;
    v16[4] = a4;
    sub_1A2C7C528(&aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for OpaqueActivityPayload);
    *(v16 + ((v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1A2C8C768;
    *(v17 + 24) = v16;
    aBlock[4] = sub_1A2C5C998;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A2C56C44;
    aBlock[3] = &block_descriptor_57;
    v18 = _Block_copy(aBlock);
    v19 = v14;

    dispatch_sync(v13, v18);

    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A2C880A0()
{
  v1 = type metadata accessor for OpaqueActivityPayload(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v28 = *(*(v1 - 1) + 64);

  v4 = *(v0 + 32);

  v5 = v0 + v3;
  v6 = sub_1A2D07FC4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_1A2D07F94();
  v9 = *(v8 - 8);
  v26 = *(v9 + 8);
  v26(v0 + v3 + v7, v8);
  sub_1A2C55840(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v10 = v0 + v3 + v1[7];
  sub_1A2C55840(*v10, *(v10 + 8));
  v11 = *(type metadata accessor for OpaqueActivityContent() + 20);
  v27 = *(v9 + 48);
  if (!v27(v10 + v11, 1, v8))
  {
    v26(v10 + v11, v8);
  }

  v12 = v5 + v1[8];
  v13 = type metadata accessor for AlertConfiguration();
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v24 = v2;
    v25 = v0;
    v14 = sub_1A2D07EF4();
    v15 = *(*(v14 - 8) + 8);
    v15(v12, v14);
    v16 = v14;
    v2 = v24;
    v15(v12 + *(v13 + 20), v16);
    v17 = v12 + *(v13 + 24);
    v18 = *(v17 + 8);

    v19 = *(v17 + 24);
    v0 = v25;
  }

  v20 = v1[9];
  if (!v27(v5 + v20, 1, v8))
  {
    v26(v5 + v20, v8);
  }

  v21 = (v28 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v0 + v21);

  return MEMORY[0x1EEE6BDD0](v0, v21 + 8, v2 | 7);
}

uint64_t sub_1A2C884F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C88734(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a7;
  v50 = a5;
  LODWORD(v55) = a2;
  v54 = a1;
  v53 = sub_1A2D086E4();
  v51 = *(v53 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A2D086C4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = sub_1A2D08314();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v46 = a6;
  v20[4] = a6;
  v20[5] = a7;
  v45 = a8;
  v20[6] = a8;
  v48 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v47 = "xInterval";
  v21 = a4;

  sub_1A2D082E4();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1A2C88F64(&qword_1ED709E30, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C88FAC(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2D08804();
  (*(v51 + 104))(v49, *MEMORY[0x1E69E8090], v53);
  v22 = v45;
  v23 = v46;
  v24 = sub_1A2D08724();
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = xmmword_1A2D17170;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 16) = v24;
  *(a3 + 24) = sub_1A2D01650;
  v25 = v54;
  *(a3 + 32) = v20;
  *(a3 + 40) = v25;
  *(a3 + 48) = v55 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1A2D0AD20;
  v27 = v50;
  *(v26 + 32) = v50;
  *(v26 + 40) = v23;
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = v23;
  v28[4] = v52;
  v28[5] = v22;
  v29 = *&v21[OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue];
  v56 = v21;
  v57 = v26;
  v58 = sub_1A2C9569C;
  v59 = v28;
  v30 = sub_1A2D080E4();
  swift_bridgeObjectRetain_n();

  sub_1A2D08704();
  v55 = v21;

  v31 = v60;
  v32 = type metadata accessor for CancellableAssertion();
  v33 = objc_allocWithZone(v32);
  v60 = v31;
  v34 = *(v30 + 48);
  v35 = *(v30 + 52);
  swift_allocObject();

  *&v33[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v61.receiver = v33;
  v61.super_class = v32;
  v36 = objc_msgSendSuper2(&v61, sel_init);
  v64 = v32;
  v65 = sub_1A2C88F64(qword_1EB09ED00, type metadata accessor for CancellableAssertion);

  *&v63 = v36;
  sub_1A2C5E3C4(&v63, &aBlock);
  if (qword_1EB09EC60 != -1)
  {
    swift_once();
  }

  v37 = sub_1A2D08094();
  __swift_project_value_buffer(v37, qword_1EB0B2580);
  v38 = sub_1A2D08074();
  v39 = sub_1A2D086A4();
  v40 = os_log_type_enabled(v38, v39);
  v41 = v55;
  if (v40)
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1A2C51000, v38, v39, "Created inner cancellable on the first attempt", v42, 2u);
    MEMORY[0x1A58E5180](v42, -1, -1);
  }

  *(a3 + 120) = 1;
  sub_1A2C5E3C4(&aBlock, &v63);
  swift_beginAccess();
  sub_1A2C8BA60(&v63, a3 + 64);
  swift_endAccess();
  return a3;
}

uint64_t sub_1A2C88ECC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1A2C88F14()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A2C88F64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2C88FAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A2C89000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v79 = a3;
  v83[4] = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0938, &qword_1A2D0CDD8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v68 - v15;
  v81 = sub_1A2C897FC();
  if (!v81)
  {
    sub_1A2CA1590();
    swift_allocError();
    *v34 = xmmword_1A2D0AC20;
    *(v34 + 16) = 0u;
    *(v34 + 32) = 0u;
    *(v34 + 48) = 0u;
    *(v34 + 64) = 0;
    result = swift_willThrow();
    goto LABEL_29;
  }

  v72 = v16;
  v17 = OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__queue_predicates;
  swift_beginAccess();
  v70 = v17;
  v18 = *(a1 + v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v12;
  v77 = a5;
  v71 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_35:
    v18 = sub_1A2C8A0F0(0, *(v18 + 2) + 1, 1, v18);
  }

  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  v22 = v21 + 1;
  v74 = a4;
  v75 = v13;
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1A2C8A0F0((v20 > 1), v21 + 1, 1, v18);
  }

  v13 = 0;
  *(v18 + 2) = v22;
  v73 = a2;
  *&v18[8 * v21 + 32] = a2;
  v23 = MEMORY[0x1E69E7CC0];
  a2 = MEMORY[0x1E69E6158];
  while (1)
  {
    if (v13 >= *(v18 + 2))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v24 = &v18[8 * v13];
    a4 = *(v24 + 4);
    if (!a4)
    {
      break;
    }

    v25 = *(a4 + 16);
    v26 = *(v23 + 2);
    v27 = v26 + v25;
    if (__OFADD__(v26, v25))
    {
      goto LABEL_31;
    }

    v28 = *(v24 + 4);

    v29 = swift_isUniquelyReferenced_nonNull_native();
    if (v29 && v27 <= *(v23 + 3) >> 1)
    {
      if (!*(a4 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v26 <= v27)
      {
        v30 = v26 + v25;
      }

      else
      {
        v30 = v26;
      }

      v23 = sub_1A2C8A10C(v29, v30, 1, v23);
      if (!*(a4 + 16))
      {
LABEL_6:

        if (v25)
        {
          goto LABEL_32;
        }

        goto LABEL_7;
      }
    }

    if ((*(v23 + 3) >> 1) - *(v23 + 2) < v25)
    {
      goto LABEL_33;
    }

    swift_arrayInitWithCopy();

    if (v25)
    {
      v31 = *(v23 + 2);
      v32 = __OFADD__(v31, v25);
      v33 = v31 + v25;
      if (v32)
      {
        goto LABEL_34;
      }

      *(v23 + 2) = v33;
    }

LABEL_7:
    if (v22 == ++v13)
    {
      goto LABEL_25;
    }
  }

  v23 = 0;
LABEL_25:
  v83[0] = v23;
  v36 = sub_1A2D07EB4();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C8A218();
  v39 = v80;
  v40 = sub_1A2D07E94();
  if (v39)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v42 = v40;
    v43 = v41;

    v44 = sub_1A2D07F24();
    sub_1A2C55840(v42, v43);

    v45 = sub_1A2D07F44();
    v47 = v46;

    v48 = sub_1A2D07F24();
    v83[0] = 0;
    LOBYTE(v44) = [v81 subscribeToActivityProminenceMatchingPredicate:v48 error:v83];

    v49 = v83[0];
    if (v44)
    {
      v50 = v71;
      v51 = *(v71 + v70);
      *(v71 + v70) = v18;
      v52 = v49;

      v53 = *(v50 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__prominencePublisher);
      v82 = *(v50 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue);
      v54 = v82;
      v83[0] = v53;
      v55 = sub_1A2D086D4();
      v56 = *(*(v55 - 8) + 56);
      v80 = v45;
      v57 = v78;
      v56(v78, 1, 1, v55);

      v69 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0928, &unk_1A2D0CDC8);
      sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
      v70 = v47;
      sub_1A2C56A78(&unk_1EB09EB58, &unk_1EB0A0928, &unk_1A2D0CDC8);
      sub_1A2C8B9D4();
      v58 = v72;
      sub_1A2D08264();
      sub_1A2C54E38(v57, &qword_1EB0A0570, &qword_1A2D0ADA0);

      v59 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v60 = swift_allocObject();
      v61 = v73;
      *(v60 + 16) = v59;
      *(v60 + 24) = v61;
      v62 = swift_allocObject();
      v63 = v79;
      v62[2] = v61;
      v62[3] = v63;
      v62[4] = v74;
      sub_1A2C56A78(&unk_1EB09EBA8, &qword_1EB0A0938, &qword_1A2D0CDD8);
      swift_bridgeObjectRetain_n();

      v64 = v76;
      v65 = sub_1A2D08224();
      sub_1A2C55840(v80, v70);
      swift_unknownObjectRelease();

      result = (*(v75 + 8))(v58, v64);
      *v77 = v65;
    }

    else
    {
      v66 = v83[0];

      sub_1A2D07ED4();

      swift_willThrow();
      sub_1A2C55840(v45, v47);
      result = swift_unknownObjectRelease();
    }

LABEL_29:
    v67 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1A2C89724()
{
  MEMORY[0x1A58E5250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C8975C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2C8979C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A2C897FC()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue);
  *v5 = v6;
  (*(isa + 13))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(isa + 1))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2C89B40();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_connection);
  if (!v8)
  {
    if (qword_1EB09EC70 != -1)
    {
      swift_once();
    }

    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1EB09EC80);
    v1 = sub_1A2D08074();
    v10 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v10, "ActivityProminenceObservationClient: Failed to establish a connection", v11, 2u);
      MEMORY[0x1A58E5180](v11, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0920, &qword_1A2D0CDC0);
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_1A2C54E38(v20, &qword_1EB0A04E0, &unk_1A2D0AA70);
  }

  if (qword_1EB09EC70 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1EB09EC80);
  v14 = sub_1A2D08074();
  v15 = sub_1A2D08694();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A2C51000, v14, v15, "ActivityProminenceObservationClient: Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

LABEL_18:
  return 0;
}

void sub_1A2C89B40()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1A2C89CF0();
    v8 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_connection);
    if (v8)
    {
      v9 = v8;
      if ([v9 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C54E38(v10, &qword_1EB0A04E0, &unk_1A2D0AA70);
      }

      else
      {
        memset(v10, 0, sizeof(v10));
        sub_1A2C54E38(v10, &qword_1EB0A04E0, &unk_1A2D0AA70);
        [v9 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2C89CF0()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2CB05F4();
    v9 = v0;
    v10 = sub_1A2D08784();
    if (v10)
    {
      v11 = *&v0[v8];
      *&v9[v8] = v10;
      v12 = v10;

      v13 = swift_allocObject();
      *(v13 + 16) = v9;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1A2CB0648;
      *(v14 + 24) = v13;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_38_0;
      v15 = _Block_copy(aBlock);
      v9;

      [v12 configureConnection_];
      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if ((v15 & 1) == 0)
      {
        sub_1A2CAF70C();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

uint64_t sub_1A2C89F9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

char *sub_1A2C89FE4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1A2C8A10C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
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

unint64_t sub_1A2C8A218()
{
  result = qword_1ED708430;
  if (!qword_1ED708430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708430);
  }

  return result;
}

uint64_t ActivityProminencePredicate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0D08, &unk_1A2D0E2B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C8A41C();

  sub_1A2D08C74();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
  sub_1A2C8A470(&unk_1ED708820);
  sub_1A2D08AA4();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A2C8A41C()
{
  result = qword_1ED708448[0];
  if (!qword_1ED708448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED708448);
  }

  return result;
}

uint64_t sub_1A2C8A470(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AlertConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1350, &qword_1A2D100D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C8641C();
  sub_1A2D08C74();
  LOBYTE(v23) = 0;
  sub_1A2D07EF4();
  sub_1A2C86470(&unk_1EB09F4C8);
  sub_1A2D08AE4();
  if (!v2)
  {
    v11 = type metadata accessor for AlertConfiguration();
    v12 = v11[5];
    LOBYTE(v23) = 1;
    sub_1A2D08AE4();
    v13 = (v3 + v11[6]);
    v14 = v13[1];
    v15 = *(v13 + 16);
    v16 = v13[3];
    v23 = *v13;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v27 = 2;
    sub_1A2C8A7C0();

    v17 = v16;
    sub_1A2D08AE4();
    v18 = v26;

    v19 = (v3 + v11[7]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 8);
    v23 = v20;
    LOBYTE(v24) = v19;
    v27 = 3;
    sub_1A2C8AB00();
    sub_1A2D08AE4();
    v21 = *(v3 + v11[8]);
    LOBYTE(v23) = 4;
    sub_1A2D08AC4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A2C8A7C0()
{
  result = qword_1EB09F318;
  if (!qword_1EB09F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F318);
  }

  return result;
}

uint64_t AlertConfiguration.AlertSound.encode(to:)(void *a1)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1368, &qword_1A2D100E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v24 - v6;
  v8 = *v1;
  v9 = v1[1];
  v24[3] = *(v1 + 16);
  v25 = v1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C86904();
  sub_1A2D08C74();
  LOBYTE(v28[0]) = 0;
  v11 = v26;
  sub_1A2D08A94();
  if (!v11)
  {
    v13 = v4;
    v14 = v25;
    if (v25)
    {
      v15 = objc_opt_self();
      v28[0] = 0;
      v16 = v14;
      v17 = [v15 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:v28];
      v18 = v28[0];
      if (!v17)
      {
        v22 = v18;
        sub_1A2D07ED4();

        swift_willThrow();
LABEL_8:
        result = (*(v13 + 8))(v7, v3);
        goto LABEL_9;
      }

      v19 = sub_1A2D07F44();
      v21 = v20;

      v28[0] = v19;
      v28[1] = v21;
      v27 = 1;
      sub_1A2C669D0();
      sub_1A2D08AE4();

      sub_1A2C55840(v19, v21);
    }

    LOBYTE(v28[0]) = 2;
    sub_1A2D08AC4();
    goto LABEL_8;
  }

  result = (*(v4 + 8))(v7, v3);
LABEL_9:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1A2C8AB00()
{
  result = qword_1EB09F310;
  if (!qword_1EB09F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F310);
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

uint64_t AlertConfiguration.AutomaticDismissOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1300, &qword_1A2D10080);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1308, &qword_1A2D10088);
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1310, &qword_1A2D10090);
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v27 = &v26 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1318, &qword_1A2D10098);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v17 = *v1;
  v18 = *(v1 + 8);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C8704C();
  sub_1A2D08C74();
  if (v18 == 1)
  {
    if (v17)
    {
      v37 = 1;
      sub_1A2CD6804();
      v20 = v30;
      sub_1A2D08A84();
      v22 = v31;
      v21 = v32;
    }

    else
    {
      v36 = 0;
      sub_1A2CD6858();
      v20 = v27;
      sub_1A2D08A84();
      v22 = v28;
      v21 = v29;
    }

    (*(v22 + 8))(v20, v21);
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    v38 = 2;
    sub_1A2C871E0();
    v23 = v33;
    sub_1A2D08A84();
    v24 = v35;
    sub_1A2D08AD4();
    (*(v34 + 8))(v23, v24);
    return (*(v13 + 8))(v16, v12);
  }
}

void *sub_1A2C8AF54()
{
  v1 = v0;
  v2 = type metadata accessor for OpaqueActivityPayload(0);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0990, &qword_1A2D0D128);
  v5 = *v0;
  v6 = sub_1A2D08964();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = *(*(v5 + 48) + v21);
        v23 = v27;
        v24 = *(v28 + 72) * v21;
        sub_1A2C68F00(*(v5 + 56) + v24, v27, type metadata accessor for OpaqueActivityPayload);
        v25 = v29;
        *(*(v29 + 48) + v21) = v22;
        result = sub_1A2C7C5F8(v23, *(v25 + 56) + v24, type metadata accessor for OpaqueActivityPayload);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v26;
        v7 = v29;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1A2C8B18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C8B248()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A2C8B3A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A2C8B428(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  v8 = sub_1A2D07E84();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v11 = sub_1A2D07F44();
  v13 = v12;
  a3();
  sub_1A2D07E64();
  a5(*a2);
  sub_1A2C55840(v11, v13);

  *a2 = v15;
  return result;
}

unint64_t sub_1A2C8B528()
{
  result = qword_1EB09ED98;
  if (!qword_1EB09ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED98);
  }

  return result;
}

uint64_t ActivityProminencePredicate.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0D10, &qword_1A2D0E2C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C8A41C();
  sub_1A2D08C64();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    sub_1A2C8A470(&qword_1ED709510);
    sub_1A2D08A14();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2C8B73C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1A2C8B74C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t ActivityProminences.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A08C8, &unk_1A2D0CB30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C8B964();

  sub_1A2D08C74();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
  sub_1A2C8A470(&unk_1ED708820);
  sub_1A2D08AE4();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A2C8B964()
{
  result = qword_1ED708818;
  if (!qword_1ED708818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708818);
  }

  return result;
}

unint64_t sub_1A2C8B9D4()
{
  result = qword_1ED709120;
  if (!qword_1ED709120)
  {
    sub_1A2C569A0(255, &qword_1ED709E20, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709120);
  }

  return result;
}

uint64_t sub_1A2C8BA60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EA0, &qword_1A2D172A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C8BAD0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A2C8BB18()
{
  v1 = *(type metadata accessor for OpaqueActivityPayload(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_1A2C8BB80(v2, v3, v4, v5);
}

void sub_1A2C8BB80(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1A2D08344();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 96);
  *v13 = v14;
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8020], v8, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1A2D08364();
  (*(v9 + 8))(v13, v8);
  if (v14)
  {
    v16 = *(a1 + 24);
    sub_1A2C87A6C(a2, a3, a4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2C8BCE8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v60 = a3;
  v55 = a2;
  v54 = a1;
  v7 = sub_1A2D082D4();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1A2D08314();
  v59 = *(v62 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v58 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1A2D08334();
  v63 = *(v67 - 8);
  v12 = *(v63 + 64);
  v13 = MEMORY[0x1EEE9AC00](v67);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v51 - v16;
  v17 = sub_1A2D082C4();
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v53 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v65 = (&v51 - v24);
  v25 = sub_1A2D08734();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v4 + 24) + 16));
  if (qword_1ED708B98 != -1)
  {
    swift_once();
  }

  v30 = sub_1A2D08094();
  __swift_project_value_buffer(v30, qword_1ED708BA0);
  v31 = sub_1A2D08074();
  v32 = sub_1A2D086A4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134349056;
    *(v33 + 4) = a4;
    _os_log_impl(&dword_1A2C51000, v31, v32, "Watchdog will fire in %{public}fs", v33, 0xCu);
    MEMORY[0x1A58E5180](v33, -1, -1);
  }

  v34 = a4 * 1000000.0;
  if (COERCE__INT64(fabs(a4 * 1000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v52 = v7;
  v35 = v5;
  if (v34 >= 0x7FFFFFFF)
  {
    v36 = 0x7FFFFFFFLL;
  }

  else
  {
    v36 = v34;
  }

  sub_1A2C8C524();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C8C4CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0840, qword_1A2D0C0A8);
  sub_1A2C8C468();
  sub_1A2D08804();
  v37 = sub_1A2D08744();
  (*(v26 + 8))(v29, v25);
  v38 = v65;
  *v65 = v36;
  v40 = v56;
  v39 = v57;
  (*(v56 + 104))(v38, *MEMORY[0x1E69E7F30], v57);
  sub_1A2D08324();
  v41 = v66;
  MEMORY[0x1A58E4010](v15, v38);
  v63 = *(v63 + 8);
  (v63)(v15, v67);
  ObjectType = swift_getObjectType();
  sub_1A2C8C570(v23);
  v43 = v53;
  sub_1A2C8C5E4(v53);
  MEMORY[0x1A58E4450](v41, v23, v43, ObjectType);
  v44 = *(v40 + 8);
  v44(v43, v39);
  v44(v23, v39);
  v45 = swift_allocObject();
  v46 = v55;
  v45[2] = v35;
  v45[3] = v46;
  v45[4] = v60;
  aBlock[4] = sub_1A2CAE688;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C5E5B8;
  aBlock[3] = &block_descriptor_3;
  v47 = _Block_copy(aBlock);

  v48 = v58;
  sub_1A2C8C66C();
  v49 = v61;
  sub_1A2C8C670();
  sub_1A2D08754();
  _Block_release(v47);
  (*(v64 + 8))(v49, v52);
  (*(v59 + 8))(v48, v62);

  v50 = *(v35 + 16);
  *(v35 + 16) = v37;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  sub_1A2D08774();
  swift_unknownObjectRelease_n();
  (v63)(v66, v67);
  v44(v65, v39);
}

uint64_t sub_1A2C8C428()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1A2C8C468()
{
  result = qword_1ED708B70;
  if (!qword_1ED708B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0840, qword_1A2D0C0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B70);
  }

  return result;
}

unint64_t sub_1A2C8C4CC()
{
  result = qword_1ED708B60;
  if (!qword_1ED708B60)
  {
    sub_1A2D08734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708B60);
  }

  return result;
}

unint64_t sub_1A2C8C524()
{
  result = qword_1ED708B50;
  if (!qword_1ED708B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED708B50);
  }

  return result;
}

uint64_t sub_1A2C8C570@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = sub_1A2D082C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1A2C8C5E4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1A2D082C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1A2C8C670()
{
  sub_1A2D082D4();
  sub_1A2C88F64(&qword_1ED709AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A50, &unk_1A2D0AA40);
  sub_1A2C88FAC(&unk_1ED709AC0, &qword_1EB0A0A50, &unk_1A2D0AA40);
  return sub_1A2D08804();
}

uint64_t sub_1A2C8C748(uint64_t a1)
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

uint64_t sub_1A2C8C768()
{
  v1 = *(type metadata accessor for OpaqueActivityPayload(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  return sub_1A2C8C7FC(v3, v4, v6, v0 + v2, v5);
}

uint64_t sub_1A2C8C7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a5;
  v73 = a3;
  v74 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A04F0, &qword_1A2D0AC98);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v70 = v61 - v9;
  v10 = type metadata accessor for ActivityRequest();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = v61 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v61 - v19);
  v21 = OBJC_IVAR____TtC11ActivityKit19ActivityInputClient__queue_ephemeralActivityRequests;
  swift_beginAccess();
  v22 = *(a1 + v21);
  v23 = *(v22 + 16);
  v71 = a2;
  if (v23)
  {
    v24 = v74;

    v25 = sub_1A2C64868(a2, v73);
    if (v26)
    {
      v27 = *(v22 + 56) + *(v11 + 72) * v25;
      v68 = type metadata accessor for ActivityRequest;
      v69 = v11;
      sub_1A2C68E98(v27, v17, type metadata accessor for ActivityRequest);

      sub_1A2C7C528(v17, v20, type metadata accessor for ActivityRequest);
      v28 = v20[2];
      v29 = v20[3];
      v66 = a1;
      v67 = v28;
      v30 = v20[4];
      v31 = v20[5];
      v32 = type metadata accessor for OpaqueActivityPayload(0);
      sub_1A2C68E98(v24 + *(v32 + 28), v14 + v10[7], type metadata accessor for OpaqueActivityContent);
      v33 = *(v20 + v10[8]);
      v34 = *(v20 + v10[9]);
      v35 = v10[11];
      v36 = v20 + v10[10];
      v76 = *v36;
      v77 = *(v36 + 2);
      v37 = *(v20 + v35);
      LODWORD(v36) = *(v20 + v10[13]);
      v64 = *(v20 + v10[12]);
      v65 = v36;
      LODWORD(v36) = *(v20 + v10[15]);
      v62 = *(v20 + v10[14]);
      v63 = v36;
      v61[1] = v10[17];

      sub_1A2C5E63C(v30, v31);

      sub_1A2C66F58(&v76, v75);

      _s11ActivityKit0A7RequestV14attributesType0D4Data20initialOpaqueContent12sceneTargets010alertSceneK019presentationOptions21contentSourceRequests11isEphemeral0S9Unbounded0S9Momentary0S9Important10identifier15protectionClass9startDate21assetProviderBundleIdAcA0a10AttributesE0V_10Foundation0F0VAA0haI0VSDyAA0a12PresentationO0V0A23PresentationDestinationOAA0M6TargetO0C0OGA6_A_SayAA0aiQ0OA4_OGS4bSSSgAA0a10ProtectionZ0OSgAU4DateVA11_tcfcfA12__0();
      v14[2] = v67;
      v14[3] = v29;
      v14[4] = v30;
      v14[5] = v31;
      *(v14 + v10[8]) = v33;
      v38 = v71;
      *(v14 + v10[9]) = v34;
      v39 = v73;
      v40 = v14 + v10[10];
      *v40 = v76;
      *(v40 + 2) = v77;
      *(v14 + v10[11]) = v37;
      v41 = v65;
      *(v14 + v10[12]) = v64;
      *(v14 + v10[13]) = v41;
      v42 = v63;
      *(v14 + v10[14]) = v62;
      *(v14 + v10[15]) = v42;
      *v14 = v38;
      v14[1] = v39;
      *(v14 + v10[16]) = 4;
      v43 = (v14 + v10[18]);
      *v43 = 0;
      v43[1] = 0;
      v44 = v70;
      sub_1A2C68E98(v14, v70, v68);
      (*(v69 + 56))(v44, 0, 1, v10);
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      sub_1A2C834FC(v44, v38, v39);
      swift_endAccess();
      sub_1A2C69F24(v14, type metadata accessor for ActivityRequest);
      sub_1A2C69F24(v20, type metadata accessor for ActivityRequest);
    }

    else
    {
    }
  }

  v45 = sub_1A2D07EB4();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  type metadata accessor for OpaqueActivityPayload(0);
  sub_1A2C5AD40(&qword_1EB09F658, type metadata accessor for OpaqueActivityPayload);
  v48 = sub_1A2D07E94();
  v50 = v49;
  v51 = sub_1A2D07F24();
  sub_1A2C55840(v48, v50);

  v52 = sub_1A2D07F44();
  v54 = v53;

  v55 = sub_1A2C68B54();
  if (v55)
  {
    v56 = v55;
    v57 = sub_1A2D08434();
    v58 = sub_1A2D07F24();
    [v56 updateActivityWithIdentifier:v57 payload:v58];

    swift_unknownObjectRelease();
  }

  v59 = *(*(v72 + 24) + 16);

  os_unfair_lock_lock(v59);
  sub_1A2C8EB74();
  os_unfair_lock_unlock(v59);

  return sub_1A2C55840(v52, v54);
}

uint64_t _s11ActivityKit010SubscribedA0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1A2D08B34() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = type metadata accessor for SubscribedActivity(0);
  if ((_s11ActivityKit0A10DescriptorV2eeoiySbAC_ACtFZ_0(a1 + *(v5 + 24), a2 + *(v5 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1A2C8CE18(v7, v8);
}

uint64_t sub_1A2C8CE18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpaqueActivityPayload(0);
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18E8, &qword_1A2D14CE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = a2;
  v52 = &v49 - v14;
  v53 = v15;
  v54 = v8;
  v16 = 0;
  v50 = a1;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  while (1)
  {
    v24 = v53;
    if (!v22)
    {
      break;
    }

    v25 = (v22 - 1) & v22;
    v26 = __clz(__rbit64(v22)) | (v16 << 6);
LABEL_16:
    v32 = *(*(v50 + 48) + v26);
    v33 = v55;
    sub_1A2C69790(*(v50 + 56) + *(v56 + 72) * v26, v55, type metadata accessor for OpaqueActivityPayload);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18F0, &qword_1A2D14CE8);
    v35 = *(v34 + 48);
    *v24 = v32;
    sub_1A2C671E0(v33, &v24[v35], type metadata accessor for OpaqueActivityPayload);
    (*(*(v34 - 8) + 56))(v24, 0, 1, v34);
    v29 = v54;
    v22 = v25;
LABEL_17:
    v36 = v24;
    v37 = v52;
    sub_1A2C639DC(v36, v52, &qword_1EB0A18E8, &qword_1A2D14CE0);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18F0, &qword_1A2D14CE8);
    v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = *(v38 + 48);
    v42 = *v37;
    sub_1A2C671E0(&v37[v41], v29, type metadata accessor for OpaqueActivityPayload);
    v43 = v51;
    v44 = sub_1A2C7C7B4(v42);
    if ((v45 & 1) == 0)
    {
      sub_1A2C6E1CC(v29, type metadata accessor for OpaqueActivityPayload);
      return 0;
    }

    v46 = v55;
    sub_1A2C69790(*(v43 + 56) + *(v56 + 72) * v44, v55, type metadata accessor for OpaqueActivityPayload);
    v47 = _s11ActivityKit06OpaqueA7PayloadV2eeoiySbAC_ACtFZ_0(v46, v29);
    sub_1A2C6E1CC(v46, type metadata accessor for OpaqueActivityPayload);
    result = sub_1A2C6E1CC(v29, type metadata accessor for OpaqueActivityPayload);
    if ((v47 & 1) == 0)
    {
      return v40;
    }
  }

  if (v23 <= v16 + 1)
  {
    v27 = v16 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = v27 - 1;
  v29 = v54;
  while (1)
  {
    v30 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v30 >= v23)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18F0, &qword_1A2D14CE8);
      (*(*(v48 - 8) + 56))(v24, 1, 1, v48);
      v22 = 0;
      v16 = v28;
      goto LABEL_17;
    }

    v31 = *(v18 + 8 * v30);
    ++v16;
    if (v31)
    {
      v25 = (v31 - 1) & v31;
      v26 = __clz(__rbit64(v31)) | (v30 << 6);
      v16 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2C8D278(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1A2C5E63C(a3, a4);
          return sub_1A2C8D710(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s11ActivityKit06OpaqueA7ContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A2D07F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1208, &qword_1A2D0FAF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  if ((sub_1A2C8D278(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for OpaqueActivityContent();
  if (*(a1 + *(v17 + 24)) != *(a2 + *(v17 + 24)))
  {
    return 0;
  }

  v18 = *(v17 + 20);
  v19 = *(v13 + 48);
  sub_1A2C7214C(a1 + v18, v16);
  sub_1A2C7214C(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      sub_1A2C54E38(v16, &qword_1EB0A0E28, &unk_1A2D0EC10);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1A2C7214C(v16, v12);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_8:
    sub_1A2C54E38(v16, &qword_1EB0A1208, &qword_1A2D0FAF0);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v19], v4);
  sub_1A2C6D4B0(&qword_1EB0A1210, MEMORY[0x1E6969530]);
  v22 = sub_1A2D08424();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_1A2C54E38(v16, &qword_1EB0A0E28, &unk_1A2D0EC10);
  return (v22 & 1) != 0;
}

uint64_t sub_1A2C8D710(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1A2D01C78(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1A2C55840(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1A2C8D8A4(v14, a3, a4, &v13);
  v10 = v4;
  sub_1A2C55840(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1A2C8D8A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1A2D07DF4();
    if (v10)
    {
      v11 = sub_1A2D07E14();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1A2D07E04();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1A2D07DF4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1A2D07E14();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1A2D07E04();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1A2C8DAD4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v31 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v32 = (v4 + 63) >> 6;
  v33 = result;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v37 = (v6 - 1) & v6;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = *(result + 56) + 48 * v10;
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 40);
    v15 = *(*(result + 48) + v10);
    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = *(v11 + 32);
    sub_1A2C72A00();
    v19 = sub_1A2C66BC0(v15);
    if ((v20 & 1) == 0)
    {
      goto LABEL_36;
    }

    v21 = *(v2 + 56) + 48 * v19;
    v23 = *v21;
    v22 = *(v21 + 8);
    v25 = *(v21 + 16);
    v24 = *(v21 + 24);
    v26 = *(v21 + 32);
    if (*(v21 + 40))
    {
      if ((v14 & 1) == 0)
      {

        sub_1A2C732E4();
LABEL_36:
        sub_1A2C732E4();
        return 0;
      }

      v35 = *(v21 + 24);
      if (v23 == v13 && v22 == v12)
      {

        sub_1A2C732E4();
        goto LABEL_31;
      }

      v30 = sub_1A2D08B34();

      sub_1A2C732E4();
LABEL_27:
      sub_1A2C732E4();
      result = v33;
      v2 = a2;
      v6 = v37;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v14)
      {
        v39 = *v21;
        v40 = v22;
        v41 = v25;
        v42 = v24;
        v43 = v26;
        v44 = 0;
        sub_1A2CECFBC(&v39, v38);
        sub_1A2C732E4();
        goto LABEL_36;
      }

      if (v23 != v13 || v22 != v12)
      {
        v29 = *(v21 + 16);
        v36 = *(v21 + 24);
        v30 = sub_1A2D08B34();
        v39 = v23;
        v40 = v22;
        v41 = v29;
        v42 = v36;
        v43 = v26;
        v44 = 0;
        sub_1A2CECFBC(&v39, v38);
        sub_1A2C732E4();
        goto LABEL_27;
      }

      v39 = v13;
      v40 = v12;
      v41 = v25;
      v42 = v24;
      v43 = v26;
      v44 = 0;
      sub_1A2CECFBC(&v39, v38);
      sub_1A2C732E4();
LABEL_31:
      sub_1A2C732E4();
      result = v33;
      v2 = a2;
      v6 = v37;
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v32)
    {
      return 1;
    }

    v9 = *(v31 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v37 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2C8DEE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v68 = v2;
  v69 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v60 = *v5;
    v61 = v8;
    *v62 = v5[2];
    v9 = *v62;
    v10 = v6[1];
    v63 = *v6;
    *v64 = v10;
    v12 = *v6;
    v11 = v6[1];
    *&v64[16] = v6[2];
    *&v64[25] = *(v6 + 41);
    *&v62[9] = *(v5 + 41);
    v65[0] = v60;
    v65[1] = v8;
    v66[0] = v9;
    *(v66 + 9) = *&v62[9];
    v66[2] = v12;
    v66[3] = v11;
    v67[0] = v6[2];
    *(v67 + 9) = *(v6 + 41);
    v13 = v60;
    if (!v62[24])
    {
      break;
    }

    if (v62[24] != 1)
    {
      if (v64[40] == 2)
      {
        v20 = vorrq_s8(*&v64[8], *&v64[24]);
        if (!(*&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) | *v64 | *(&v63 + 1) | v63))
        {
          goto LABEL_18;
        }
      }

      v33 = &v63;
LABEL_46:
      sub_1A2C87684(v33, v55);
      sub_1A2C54E38(v65, &qword_1EB0A0D20, &qword_1A2D0E510);
      return 0;
    }

    if (v64[40] != 1)
    {
      goto LABEL_44;
    }

    if (v60 == v63)
    {
      sub_1A2C87684(&v63, v55);
      sub_1A2C87684(&v60, v55);
LABEL_18:
      sub_1A2C54E38(v65, &qword_1EB0A0D20, &qword_1A2D0E510);
      goto LABEL_35;
    }

    v21 = sub_1A2D08B34();
    sub_1A2C87684(&v63, v55);
    sub_1A2C87684(&v60, v55);
    sub_1A2C54E38(v65, &qword_1EB0A0D20, &qword_1A2D0E510);
    if ((v21 & 1) == 0)
    {
      return 0;
    }

LABEL_35:
    if (!i)
    {
      return 1;
    }

    v5 += 4;
    v6 += 4;
  }

  if (v64[40])
  {
LABEL_44:
    sub_1A2C87684(&v63, v55);
    v33 = &v60;
    goto LABEL_46;
  }

  v14 = *(&v61 + 1);
  v15 = v63;
  v16 = *&v64[8];
  v17 = *v64;
  v18 = v64[16];
  v55[0] = v60;
  v55[1] = v61;
  v56 = v62[0];
  v57 = v63;
  v58 = *v64;
  v59 = v64[16];
  v52 = *&v62[16];
  v53 = *&v62[8];
  v50 = *&v64[32];
  v51 = *&v64[24];
  if (v62[0])
  {
    if (v62[0] == 1)
    {
      if (v64[16] != 1)
      {
        v40 = *(&v61 + 1);
        v41 = v61;
        v42 = *&v64[8];
        sub_1A2C87684(&v63, v54);
        sub_1A2C87684(&v60, v54);
        sub_1A2C87684(&v60, v54);
        sub_1A2C87684(&v63, v54);
        sub_1A2C87684(&v63, v54);
        sub_1A2C87684(&v60, v54);
        sub_1A2CC3668(v15, *(&v15 + 1), v17, v42, v18);
        v36 = *(&v13 + 1);
        v35 = v13;
        v37 = v41;
        v38 = v40;
        v39 = 1;
        goto LABEL_52;
      }

      v19 = *&v64[8];
      v46 = *(&v61 + 1);
      v48 = v61;
      if (v60 != v63)
      {
        v45 = sub_1A2D08B34();
        sub_1A2C87684(&v63, v54);
        sub_1A2C87684(&v60, v54);
        sub_1A2C87684(&v60, v54);
        sub_1A2C87684(&v63, v54);
        sub_1A2C87684(&v63, v54);
        sub_1A2C87684(&v60, v54);
        sub_1A2CC3668(v15, *(&v15 + 1), v17, v19, 1);
        sub_1A2CC3668(v13, *(&v13 + 1), v48, v46, 1);
        sub_1A2C54E38(v55, &qword_1EB0A0D28, qword_1A2D0E518);
        if ((v45 & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_31;
      }

      sub_1A2C87684(&v63, v54);
      sub_1A2C87684(&v60, v54);
      sub_1A2C87684(&v60, v54);
      sub_1A2C87684(&v63, v54);
      sub_1A2C87684(&v63, v54);
      sub_1A2C87684(&v60, v54);
      sub_1A2CC3668(v13, *(&v13 + 1), v17, v19, 1);
      sub_1A2CC3668(v13, *(&v13 + 1), v48, v46, 1);
    }

    else
    {
      if (v64[16] != 2 || *(&v63 + 1) | v63 | *v64 | *&v64[8])
      {
        v34 = *&v64[8];
        sub_1A2C87684(&v63, v54);
        sub_1A2C87684(&v60, v54);
        sub_1A2C87684(&v60, v54);
        sub_1A2C87684(&v63, v54);
        sub_1A2C87684(&v63, v54);
        sub_1A2C87684(&v60, v54);
        v36 = *(&v15 + 1);
        v35 = v15;
        v37 = v17;
        v38 = v34;
        v39 = v18;
        goto LABEL_52;
      }

      sub_1A2C87684(&v63, v54);
      sub_1A2C87684(&v60, v54);
      sub_1A2C87684(&v60, v54);
      sub_1A2C87684(&v63, v54);
      sub_1A2C87684(&v63, v54);
      sub_1A2C87684(&v60, v54);
    }

LABEL_30:
    sub_1A2C54E38(v55, &qword_1EB0A0D28, qword_1A2D0E518);
LABEL_31:
    if (v53 == v51 && v52 == v50)
    {
      sub_1A2C54E38(v65, &qword_1EB0A0D20, &qword_1A2D0E510);
      sub_1A2C87A10(&v63);
      sub_1A2C87A10(&v60);
      sub_1A2C87A10(&v63);
      sub_1A2C87A10(&v60);
    }

    else
    {
      v26 = sub_1A2D08B34();
      sub_1A2C54E38(v65, &qword_1EB0A0D20, &qword_1A2D0E510);
      sub_1A2C87A10(&v63);
      sub_1A2C87A10(&v60);
      sub_1A2C87A10(&v63);
      sub_1A2C87A10(&v60);
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_35;
  }

  v49 = v61;
  if (v64[16])
  {
    v43 = *(&v61 + 1);
    v44 = *&v64[8];
    sub_1A2C87684(&v63, v54);
    sub_1A2C87684(&v60, v54);
    sub_1A2C87684(&v60, v54);
    sub_1A2C87684(&v63, v54);
    sub_1A2C87684(&v63, v54);
    sub_1A2C87684(&v60, v54);
    sub_1A2CC3668(v15, *(&v15 + 1), v17, v44, v18);
    v36 = *(&v13 + 1);
    v35 = v13;
    v37 = v49;
    v38 = v43;
    goto LABEL_51;
  }

  if (v60 == v63 || (v22 = *(&v61 + 1), v23 = *&v64[8], v24 = sub_1A2D08B34(), v16 = v23, v14 = v22, (v24 & 1) != 0))
  {
    if (v49 != v17 || v14 != v16)
    {
      v27 = v14;
      v28 = v16;
      v47 = sub_1A2D08B34();
      sub_1A2C87684(&v63, v54);
      sub_1A2C87684(&v60, v54);
      sub_1A2C87684(&v60, v54);
      sub_1A2C87684(&v63, v54);
      sub_1A2C87684(&v63, v54);
      sub_1A2C87684(&v60, v54);
      sub_1A2CC3668(v15, *(&v15 + 1), v17, v28, 0);
      sub_1A2CC3668(v13, *(&v13 + 1), v49, v27, 0);
      sub_1A2C54E38(v55, &qword_1EB0A0D28, qword_1A2D0E518);
      if ((v47 & 1) == 0)
      {
LABEL_40:
        v29 = &qword_1EB0A0D20;
        v30 = &qword_1A2D0E510;
        v31 = v65;
        goto LABEL_53;
      }

      goto LABEL_31;
    }

    v25 = v14;
    sub_1A2C87684(&v63, v54);
    sub_1A2C87684(&v60, v54);
    sub_1A2C87684(&v60, v54);
    sub_1A2C87684(&v63, v54);
    sub_1A2C87684(&v63, v54);
    sub_1A2C87684(&v60, v54);
    sub_1A2CC3668(v15, *(&v15 + 1), v49, v25, 0);
    sub_1A2CC3668(v13, *(&v13 + 1), v49, v25, 0);
    goto LABEL_30;
  }

  sub_1A2C87684(&v63, v54);
  sub_1A2C87684(&v60, v54);
  sub_1A2C87684(&v60, v54);
  sub_1A2C87684(&v63, v54);
  sub_1A2C87684(&v63, v54);
  sub_1A2C87684(&v60, v54);
  sub_1A2CC3668(v15, *(&v15 + 1), v17, v23, 0);
  v36 = *(&v13 + 1);
  v35 = v13;
  v37 = v49;
  v38 = v22;
LABEL_51:
  v39 = 0;
LABEL_52:
  sub_1A2CC3668(v35, v36, v37, v38, v39);
  sub_1A2C54E38(v65, &qword_1EB0A0D20, &qword_1A2D0E510);
  v29 = &qword_1EB0A0D28;
  v30 = qword_1A2D0E518;
  v31 = v55;
LABEL_53:
  sub_1A2C54E38(v31, v29, v30);
  sub_1A2C87A10(&v63);
  sub_1A2C87A10(&v60);
  sub_1A2C87A10(&v63);
  sub_1A2C87A10(&v60);
  return 0;
}

uint64_t _s11ActivityKit0A19PresentationOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 11);
  v21 = *(a1 + 13);
  v22 = *(a1 + 12);
  v18 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *(a2 + 10);
  v9 = *(a2 + 11);
  v10 = *(a2 + 12);
  v11 = *(a2 + 13);
  v19 = *(a2 + 14);
  v20 = *(a1 + 14);
  v17 = *(a2 + 16);
  v12 = sub_1A2C8E930(*a1, *a2);
  result = 0;
  if ((v12 & 1) != 0 && ((v2 ^ v6) & 1) == 0 && ((v3 ^ v7) & 1) == 0 && ((v4 ^ v8) & 1) == 0 && ((v5 ^ v9) & 1) == 0 && ((v22 ^ v10) & 1) == 0 && ((v21 ^ v11) & 1) == 0 && v20 == v19)
  {
    if (v18)
    {
      if (v17)
      {
        sub_1A2C569A0(0, &qword_1EB0A0860, 0x1E698E650);
        v14 = v17;
        v15 = v18;
        v16 = sub_1A2D087C4();

        if (v16)
        {
          return 1;
        }
      }
    }

    else if (!v17)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A2C8E930(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 32); ; ++i)
    {
      v6 = *v3;
      v7 = *i;
      if (v6 == 4)
      {
        v8 = 0x746E6569626D61;
      }

      else
      {
        v8 = 0x79616C50726163;
      }

      v9 = 0xE700000000000000;
      if (v6 == 3)
      {
        v8 = 0x657263536C6C7566;
        v9 = 0xEA00000000006E65;
      }

      v10 = 0x70416D6574737973;
      if (v6 == 1)
      {
        v10 = 0x72656E6E6162;
      }

      v11 = 0xEE00657275747265;
      if (v6 == 1)
      {
        v11 = 0xE600000000000000;
      }

      if (!*v3)
      {
        v10 = 0x657263736B636F6CLL;
        v11 = 0xEA00000000006E65;
      }

      v12 = *v3 <= 2u ? v10 : v8;
      v13 = *v3 <= 2u ? v11 : v9;
      if (*i > 2u)
      {
        break;
      }

      if (!*i)
      {
        v15 = 0x63736B636F6CLL;
LABEL_35:
        v14 = 0xEA00000000006E65;
        if (v12 != (v15 & 0xFFFFFFFFFFFFLL | 0x6572000000000000))
        {
          goto LABEL_5;
        }

        goto LABEL_40;
      }

      if (v7 == 1)
      {
        v14 = 0xE600000000000000;
        if (v12 != 0x72656E6E6162)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = 0xEE00657275747265;
        if (v12 != 0x70416D6574737973)
        {
          goto LABEL_5;
        }
      }

LABEL_40:
      if (v13 != v14)
      {
LABEL_5:
        v5 = sub_1A2D08B34();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7 != 3)
    {
      v14 = 0xE700000000000000;
      if (v7 == 4)
      {
        if (v12 != 0x746E6569626D61)
        {
          goto LABEL_5;
        }
      }

      else if (v12 != 0x79616C50726163)
      {
        goto LABEL_5;
      }

      goto LABEL_40;
    }

    v15 = 0x63536C6C7566;
    goto LABEL_35;
  }

  return 1;
}

void sub_1A2C8EB74()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 24) + 16));
  if (*(v0 + 16))
  {
    if (qword_1ED708B98 != -1)
    {
      swift_once();
    }

    v2 = sub_1A2D08094();
    __swift_project_value_buffer(v2, qword_1ED708BA0);
    v3 = sub_1A2D08074();
    v4 = sub_1A2D086A4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1A2C51000, v3, v4, "Cancelling watchdog", v5, 2u);
      MEMORY[0x1A58E5180](v5, -1, -1);
    }

    if (*(v1 + 16))
    {
      v6 = *(v1 + 16);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1A2D08764();
      swift_unknownObjectRelease();
      v7 = *(v1 + 16);
    }

    *(v1 + 16) = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t Watchdog.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t sub_1A2C8ED04()
{
  MEMORY[0x1A58E5180](*(v0 + 16), -1, -1);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1A2C8ED48()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AlertConfiguration.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A2D07EF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_1A2C8EEA4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_1A2D07F94() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v8 + 64) + v15;
  if (v12)
  {
    v17 = *(v11 + 64);
  }

  else
  {
    v17 = *(v11 + 64) + 1;
  }

  v18 = ((v17 + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 < a3)
  {
    if (((v17 + (v16 & ~v15) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = a3 - v14 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((v17 + (v16 & ~v15) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a2 - v14;
    }

    else
    {
      v21 = 1;
    }

    if (((v17 + (v16 & ~v15) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = ~v14 + a2;
      bzero(a1, ((v17 + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v22;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v18) = v21;
      }

      else
      {
        *(a1 + v18) = v21;
      }
    }

    else if (v10)
    {
      *(a1 + v18) = v21;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v18) = 0;
  }

  else if (v10)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v9 >= v13)
  {
    v27 = *(v29 + 56);

    v27(a1, a2, v9, v7);
  }

  else
  {
    v23 = ((a1 + v16) & ~v15);
    if (v13 >= a2)
    {
      v28 = *(v11 + 56);

      v28(v23, (a2 + 1));
    }

    else
    {
      if (v17 <= 3)
      {
        v24 = ~(-1 << (8 * v17));
      }

      else
      {
        v24 = -1;
      }

      if (v17)
      {
        v25 = v24 & (~v13 + a2);
        if (v17 <= 3)
        {
          v26 = v17;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v17);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }
}

uint64_t sub_1A2C8F1C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ActivityUIDismissalPolicy();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_1A2C8F224(v6, a3);
}

uint64_t sub_1A2C8F224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityUIDismissalPolicy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C8F2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A2D07F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11ActivityKit0A7RequestV14attributesType0D4Data20initialOpaqueContent12sceneTargets010alertSceneK019presentationOptions21contentSourceRequests11isEphemeral0S9Unbounded0S9Momentary0S9Important10identifier15protectionClass9startDate21assetProviderBundleIdAcA0a10AttributesE0V_10Foundation0F0VAA0haI0VSDyAA0a12PresentationO0V0A23PresentationDestinationOAA0M6TargetO0C0OGA6_A_SayAA0aiQ0OA4_OGS4bSSSgAA0a10ProtectionZ0OSgAU4DateVA11_tcfcfA12__0();
  sub_1A2C8F394(a1, a2, v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1A2C8F394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v81 = a2;
  v85 = a1;
  v4 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v82 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v77 = &v68 - v10;
  v11 = type metadata accessor for OpaqueActivityPayload(0);
  v78 = *(v11 - 8);
  v79 = v11;
  v12 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = &v68 - v16;
  v71 = sub_1A2D07F94();
  v70 = *(v71 - 8);
  v17 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 88);
  v20 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v86 = AssociatedTypeWitness;
  v87 = AssociatedConformanceWitness;
  v88 = v23;
  v89 = v24;
  v76 = type metadata accessor for ActivityPayload();
  v69 = *(v76 - 8);
  v25 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v68 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v83 = &v68 - v28;
  v86 = AssociatedTypeWitness;
  v87 = AssociatedConformanceWitness;
  v72 = AssociatedConformanceWitness;
  v88 = v23;
  v89 = v24;
  v29 = type metadata accessor for ActivityContent();
  v30 = sub_1A2D087E4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v68 - v33;
  v35 = *(v29 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v68 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v84 = &v68 - v42;
  (*(v31 + 16))(v34, v85, v30, v41);
  v85 = v35;
  if ((*(v35 + 48))(v34, 1, v29) == 1)
  {
    (*(v31 + 8))(v34, v30);
    v43 = *(v3 + *(*v3 + 144));
    v45 = v3[2];
    v44 = v3[3];
    v46 = v77;
    (*(v78 + 56))(v77, 1, 1, v79);
    v47 = v82;
    sub_1A2C7FF28(v81, v82, type metadata accessor for ActivityUIDismissalPolicy);
    v48 = type metadata accessor for ActivityEndingOptions();
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    sub_1A2C90058(v45, v44, v46, v47);
    sub_1A2C54E38(v47, &unk_1EB0A0AC0, &qword_1A2D0A810);
    return sub_1A2C54E38(v46, &qword_1EB0A02E0, &qword_1A2D0AA50);
  }

  else
  {
    v51 = v84;
    v50 = v85;
    (*(v85 + 32))(v84, v34, v29);
    v52 = v73;
    (*(v70 + 16))(v73, v75, v71);
    (*(v50 + 16))(v39, v51, v29);
    v53 = type metadata accessor for AlertConfiguration();
    v54 = v74;
    (*(*(v53 - 8) + 56))(v74, 1, 1, v53);
    v55 = v83;
    v56 = v54;
    v57 = v72;
    ActivityPayload.init(timestamp:content:alertConfiguration:)(v52, v39, v56, v83);
    v58 = v69;
    v59 = v68;
    v60 = v76;
    (*(v69 + 16))(v68, v55, v76);
    OpaqueActivityPayload.init<A>(encoding:)(v59, AssociatedTypeWitness, v57, v23, v24, v80);
    v61 = *(v3 + *(*v3 + 144));
    v63 = v3[2];
    v62 = v3[3];
    v64 = v80;
    v65 = v77;
    sub_1A2C7FF28(v80, v77, type metadata accessor for OpaqueActivityPayload);
    (*(v78 + 56))(v65, 0, 1, v79);
    v66 = v82;
    sub_1A2C7FF28(v81, v82, type metadata accessor for ActivityUIDismissalPolicy);
    v67 = type metadata accessor for ActivityEndingOptions();
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    sub_1A2C90058(v63, v62, v65, v66);
    sub_1A2C54E38(v66, &unk_1EB0A0AC0, &qword_1A2D0A810);
    sub_1A2C54E38(v65, &qword_1EB0A02E0, &qword_1A2D0AA50);
    sub_1A2C69F84(v64, type metadata accessor for OpaqueActivityPayload);
    (*(v58 + 8))(v83, v60);
    return (*(v85 + 8))(v84, v29);
  }
}

uint64_t sub_1A2C8FDE4(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1A2D07F94();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = 7;
  }

  else
  {
    v14 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (v12 < a2)
  {
    v16 = ((v14 + *(*(v8 - 8) + 64) + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v17 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = a2 - v12 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    v20 = v18 >= 2 ? v19 : 0;
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *(a1 + v16);
        if (v21)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v21 = *(a1 + v16);
        if (v21)
        {
          goto LABEL_26;
        }
      }
    }

    else if (v20)
    {
      v21 = *(a1 + v16);
      if (v21)
      {
LABEL_26:
        v22 = v21 - 1;
        if (v17)
        {
          v22 = 0;
          v23 = *a1;
        }

        else
        {
          v23 = 0;
        }

        return v12 + (v23 | v22) + 1;
      }
    }

    if (!v12)
    {
      return 0;
    }
  }

  if (v7 >= v11)
  {
    v26 = *(v6 + 48);

    return v26(a1, v7, v5);
  }

  else
  {
    v24 = (*(v9 + 48))((a1 + v15) & ~v13);
    if (v24 >= 2)
    {
      return v24 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t type metadata accessor for ActivityEndingOptions()
{
  result = qword_1ED7092F8;
  if (!qword_1ED7092F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A2C90058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a1;
  v25 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v23 - v14;
  v26 = *(v4 + 96);
  sub_1A2C6BD18(a3, &v23 - v14, &qword_1EB0A02E0, &qword_1A2D0AA50);
  sub_1A2C6BD18(v23, v10, &unk_1EB0A0AC0, &qword_1A2D0A810);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = (v13 + *(v7 + 80) + v16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = v24;
  v18[2] = v4;
  v18[3] = v19;
  v18[4] = v25;
  sub_1A2C639DC(v15, v18 + v16, &qword_1EB0A02E0, &qword_1A2D0AA50);
  sub_1A2C639DC(v10, v18 + v17, &unk_1EB0A0AC0, &qword_1A2D0A810);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1A2C90768;
  *(v20 + 24) = v18;
  aBlock[4] = sub_1A2C90938;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_13;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v26, v21);
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2C90364()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(v0 + 16);

  v10 = *(v0 + 32);

  v11 = v0 + v3;
  v12 = type metadata accessor for OpaqueActivityPayload(0);
  if (!(*(*(v12 - 1) + 48))(v11, 1, v12))
  {
    v33 = v8;
    v13 = sub_1A2D07FC4();
    (*(*(v13 - 8) + 8))(v11, v13);
    v14 = v12[5];
    v15 = sub_1A2D07F94();
    v16 = *(v15 - 8);
    v31 = *(v16 + 8);
    v31(v11 + v14, v15);
    sub_1A2C55840(*(v11 + v12[6]), *(v11 + v12[6] + 8));
    v17 = v11 + v12[7];
    sub_1A2C55840(*v17, *(v17 + 8));
    v18 = *(type metadata accessor for OpaqueActivityContent() + 20);
    v32 = *(v16 + 48);
    if (!v32(v17 + v18, 1, v15))
    {
      v31(v17 + v18, v15);
    }

    v19 = v11 + v12[8];
    v20 = type metadata accessor for AlertConfiguration();
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {
      v29 = v7;
      v21 = sub_1A2D07EF4();
      v30 = *(*(v21 - 8) + 8);
      v30(v19, v21);
      v22 = v21;
      v7 = v29;
      v30(v19 + *(v20 + 20), v22);
      v23 = v19 + *(v20 + 24);
      v24 = *(v23 + 8);
    }

    v25 = v12[9];
    v8 = v33;
    if (!v32(v11 + v25, 1, v15))
    {
      v31(v11 + v25, v15);
    }
  }

  v26 = type metadata accessor for ActivityEndingOptions();
  if (!(*(*(v26 - 8) + 48))(v0 + v7, 1, v26))
  {
    v27 = sub_1A2D07F94();
    (*(*(v27 - 8) + 8))(v0 + v7, v27);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_1A2C90768()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810) - 8);
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0 + v2;
  v8 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));
  v9 = v0[2];
  return sub_1A2C9093C(v5, v6, v7, v8);
}

uint64_t sub_1A2C9084C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810) - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1A2CB0894(v5, v6, v7, v0 + v2, v8);
}

uint64_t sub_1A2C9093C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for ActivityEndingOptions();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v17 = sub_1A2D08344();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = v4;
  v22 = *(v4 + 96);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17);
  v23 = v22;
  LOBYTE(v22) = sub_1A2D08364();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_4;
  }

  sub_1A2C6BD18(v29, v8, &unk_1EB0A0AC0, &qword_1A2D0A810);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_1A2C857D0(v8, v16, type metadata accessor for ActivityEndingOptions);
    v14 = v16;
    goto LABEL_6;
  }

  sub_1A2C92BC4(v8);
  if (qword_1EB09F340 != -1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v24 = type metadata accessor for ActivityUIDismissalPolicy();
  v25 = __swift_project_value_buffer(v24, qword_1EB09F348);
  sub_1A2C85768(v25, v14, type metadata accessor for ActivityUIDismissalPolicy);
LABEL_6:
  v26 = *(v30 + 24);
  sub_1A2C90C5C(v31, v32, v33, v14);

  return sub_1A2C74010(v14, type metadata accessor for ActivityEndingOptions);
}

uint64_t sub_1A2C90C5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v70 = a1;
  v6 = type metadata accessor for ActivityEndingOptions();
  v66 = *(v6 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = v8;
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = v13;
  v64 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v60 - v14;
  v16 = type metadata accessor for OpaqueActivityPayload(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v60 - v22;
  v65 = a3;
  sub_1A2C6BD18(a3, v15, &qword_1EB0A02E0, &qword_1A2D0AA50);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1A2C54E38(v15, &qword_1EB0A02E0, &qword_1A2D0AA50);
    if (qword_1ED709838 != -1)
    {
      swift_once();
    }

    v24 = sub_1A2D08094();
    __swift_project_value_buffer(v24, qword_1ED709840);

    v25 = sub_1A2D08074();
    v26 = sub_1A2D086A4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_1A2C55558(v70, a2, aBlock);
      _os_log_impl(&dword_1A2C51000, v25, v26, "Ending activity: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1A58E5180](v28, -1, -1);
      MEMORY[0x1A58E5180](v27, -1, -1);
    }
  }

  else
  {
    sub_1A2C7C528(v15, v23, type metadata accessor for OpaqueActivityPayload);
    if (qword_1ED709838 != -1)
    {
      swift_once();
    }

    v29 = sub_1A2D08094();
    __swift_project_value_buffer(v29, qword_1ED709840);
    sub_1A2C68E98(v23, v21, type metadata accessor for OpaqueActivityPayload);

    v30 = sub_1A2D08074();
    v31 = sub_1A2D086A4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v61 = v9;
      v34 = v33;
      aBlock[0] = v33;
      *v32 = 136446466;
      *(v32 + 4) = sub_1A2C55558(v70, a2, aBlock);
      *(v32 + 12) = 2082;
      sub_1A2D07FC4();
      v35 = a2;
      sub_1A2C5AD40(&qword_1EB09F640, MEMORY[0x1E69695A8]);
      v36 = sub_1A2D08B04();
      v38 = v37;
      sub_1A2C69F24(v21, type metadata accessor for OpaqueActivityPayload);
      v39 = v36;
      a2 = v35;
      v40 = sub_1A2C55558(v39, v38, aBlock);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_1A2C51000, v30, v31, "Ending activity: %{public}s; payload: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      v41 = v34;
      v9 = v61;
      MEMORY[0x1A58E5180](v41, -1, -1);
      MEMORY[0x1A58E5180](v32, -1, -1);
    }

    else
    {

      sub_1A2C69F24(v21, type metadata accessor for OpaqueActivityPayload);
    }

    sub_1A2C69F24(v23, type metadata accessor for OpaqueActivityPayload);
  }

  if (qword_1ED708A58 != -1)
  {
    swift_once();
  }

  v42 = qword_1ED712970;
  swift_unknownObjectWeakInit();
  type metadata accessor for Watchdog();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  type metadata accessor for UnfairLock();
  v44 = swift_allocObject();
  v45 = swift_slowAlloc();
  *(v44 + 16) = v45;
  v45->_os_unfair_lock_opaque = 0;
  *(v43 + 24) = v44;
  *(v43 + 32) = 0;

  os_unfair_lock_lock(v45);
  sub_1A2C8BCE8(v42, sub_1A2CA1640, 0, 10.0);
  os_unfair_lock_unlock(v45);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v69 = *(Strong + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue);
    v47 = Strong;
    v48 = v64;
    sub_1A2C6BD18(v65, v64, &qword_1EB0A02E0, &qword_1A2D0AA50);
    sub_1A2C68E98(v68, v9, type metadata accessor for ActivityEndingOptions);
    v49 = a2;
    v50 = (*(v62 + 80) + 40) & ~*(v62 + 80);
    v51 = (v63 + *(v66 + 80) + v50) & ~*(v66 + 80);
    v52 = v9;
    v53 = (v67 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = v70;
    v54[2] = v47;
    v54[3] = v55;
    v54[4] = v49;
    sub_1A2C639DC(v48, v54 + v50, &qword_1EB0A02E0, &qword_1A2D0AA50);
    sub_1A2C7C528(v52, v54 + v51, type metadata accessor for ActivityEndingOptions);
    *(v54 + v53) = v43;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1A2C91904;
    *(v56 + 24) = v54;
    aBlock[4] = sub_1A2C5C998;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A2C56C44;
    aBlock[3] = &block_descriptor_47;
    v57 = _Block_copy(aBlock);

    v58 = v47;

    dispatch_sync(v69, v57);
    _Block_release(v57);

    MEMORY[0x1A58E5250](v72);

    LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

    if ((v57 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return MEMORY[0x1A58E5250](v72);
}

uint64_t sub_1A2C91530()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(type metadata accessor for ActivityEndingOptions() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);

  v8 = *(v0 + 32);

  v9 = v0 + v3;
  v10 = type metadata accessor for OpaqueActivityPayload(0);
  if (!(*(*(v10 - 1) + 48))(v0 + v3, 1, v10))
  {
    v32 = v7;
    v33 = v4;
    v11 = sub_1A2D07FC4();
    (*(*(v11 - 8) + 8))(v0 + v3, v11);
    v12 = v10[5];
    v13 = sub_1A2D07F94();
    v14 = *(v13 - 8);
    v30 = *(v14 + 8);
    v30(v9 + v12, v13);
    sub_1A2C55840(*(v9 + v10[6]), *(v9 + v10[6] + 8));
    v15 = v9 + v10[7];
    sub_1A2C55840(*v15, *(v15 + 8));
    v16 = *(type metadata accessor for OpaqueActivityContent() + 20);
    v31 = *(v14 + 48);
    if (!v31(v15 + v16, 1, v13))
    {
      v30(v15 + v16, v13);
    }

    v17 = v9 + v10[8];
    v18 = type metadata accessor for AlertConfiguration();
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      v19 = sub_1A2D07EF4();
      v29 = *(*(v19 - 8) + 8);
      v29(v17, v19);
      v20 = v19;
      v3 = (v2 + 40) & ~v2;
      v29(v17 + *(v18 + 20), v20);
      v21 = v17 + *(v18 + 24);
      v22 = *(v21 + 8);
    }

    v23 = v10[9];
    v7 = v32;
    v4 = v33;
    if (!v31(v9 + v23, 1, v13))
    {
      v30(v9 + v23, v13);
    }
  }

  v24 = (v3 + v4 + v6) & ~v6;
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = sub_1A2D07F94();
  (*(*(v26 - 8) + 8))(v0 + v24, v26);
  v27 = *(v0 + v25);

  return MEMORY[0x1EEE6BDD0](v0, v25 + 8, v2 | v6 | 7);
}

uint64_t sub_1A2C91904()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for ActivityEndingOptions() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A2C91A10(v6, v7, v8, v0 + v2, v0 + v5, v9);
}

uint64_t sub_1A2C91A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40[0] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A04F0, &qword_1A2D0AC98);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v40 - v16;
  v18 = type metadata accessor for ActivityRequest();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  swift_beginAccess();

  sub_1A2C834FC(v17, a2, a3);
  swift_endAccess();
  sub_1A2C6BD18(a4, v13, &qword_1EB0A02E0, &qword_1A2D0AA50);
  v19 = type metadata accessor for OpaqueActivityPayload(0);
  if ((*(*(v19 - 8) + 48))(v13, 1, v19) == 1)
  {
    sub_1A2C54E38(v13, &qword_1EB0A02E0, &qword_1A2D0AA50);
LABEL_4:
    v22 = 0;
    v21 = 0xF000000000000000;
    goto LABEL_6;
  }

  sub_1A2C569A0(0, &qword_1EB09F2A0, 0x1E695DEF0);
  swift_dynamicCast();
  v20 = v41;
  v41 = xmmword_1A2D0AC30;
  sub_1A2D07F34();

  v21 = *(&v41 + 1);
  if (*(&v41 + 1) >> 60 == 15)
  {
    goto LABEL_4;
  }

  v22 = v41;
LABEL_6:
  v23 = sub_1A2D07EB4();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  type metadata accessor for ActivityEndingOptions();
  sub_1A2C5AD40(&qword_1ED708DD0, type metadata accessor for ActivityEndingOptions);
  v26 = sub_1A2D07E94();
  v28 = v27;
  v29 = sub_1A2D07F24();
  sub_1A2C55840(v26, v28);

  v30 = sub_1A2D07F44();
  v32 = v31;

  v33 = sub_1A2C68B54();
  if (v33)
  {
    v34 = v33;
    v35 = sub_1A2D08434();
    if (v21 >> 60 == 15)
    {
      v36 = 0;
    }

    else
    {
      sub_1A2C5E63C(v22, v21);
      v36 = sub_1A2D07F24();
      sub_1A2C5DE40(v22, v21);
    }

    v37 = sub_1A2D07F24();
    [v34 endActivityWithIdentifier:v35 payload:v36 options:{v37, v40[0]}];

    swift_unknownObjectRelease();
  }

  v38 = *(*(a6 + 24) + 16);

  os_unfair_lock_lock(v38);
  sub_1A2C8EB74();
  os_unfair_lock_unlock(v38);

  sub_1A2C55840(v30, v32);
  return sub_1A2C5DE40(v22, v21);
}

uint64_t sub_1A2C91E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_1A2C64868(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v31 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v20 = v31;
    }

    v21 = *(*(v20 + 48) + 16 * v17 + 8);

    v22 = *(v20 + 56);
    v23 = a3(0);
    v30 = *(v23 - 8);
    sub_1A2C7C590(v22 + *(v30 + 72) * v17, a7, a4);
    sub_1A2C95818(v17, v20, a5);
    *v12 = v20;
    v24 = *(v30 + 56);
    v25 = a7;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = a3(0);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a7;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

uint64_t sub_1A2C91FAC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0120, &qword_1A2D0A5D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C92124();
  sub_1A2D08C74();
  type metadata accessor for ActivityUIDismissalPolicy();
  sub_1A2C92178(&qword_1ED708A68, type metadata accessor for ActivityUIDismissalPolicy);
  sub_1A2D08AE4();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1A2C92124()
{
  result = qword_1ED708DE8;
  if (!qword_1ED708DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708DE8);
  }

  return result;
}

uint64_t sub_1A2C92178(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2C921C0(void *a1)
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

unint64_t sub_1A2C92338()
{
  result = qword_1ED708DC8;
  if (!qword_1ED708DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708DC8);
  }

  return result;
}

uint64_t sub_1A2C923B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
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
  sub_1A2C92178(&qword_1EB09F0D0, type metadata accessor for ActivityEndingOptions);
  sub_1A2D07E64();
  sub_1A2C92BC4(a2);
  sub_1A2C55840(v12, v14);

  (*(*(a3 - 8) + 56))(v8, 0, 1, a3);
  return sub_1A2C92C2C(v8, a2);
}

uint64_t ActivityEndingOptions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for ActivityUIDismissalPolicy();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0128, &qword_1A2D0A5D8);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ActivityEndingOptions();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C92124();
  sub_1A2D08C64();
  if (!v2)
  {
    v16 = v19;
    sub_1A2C92178(&qword_1EB09F090, type metadata accessor for ActivityUIDismissalPolicy);
    v17 = v21;
    sub_1A2D08A54();
    (*(v20 + 8))(v10, v7);
    sub_1A2C92AF4(v17, v14, type metadata accessor for ActivityUIDismissalPolicy);
    sub_1A2C92AF4(v14, v16, type metadata accessor for ActivityEndingOptions);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ActivityUIDismissalPolicy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1A2D07F94();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1398, &qword_1A2D108D8);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ActivityUIDismissalPolicy();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C92338();
  sub_1A2D08C64();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1A2C6D4F8(&qword_1ED7097D0, MEMORY[0x1E6969530]);
    sub_1A2D08A54();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1A2C92A90(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2C92A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityUIDismissalPolicy();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C92AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C92B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C92BC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2C92C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AlertConfiguration.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlertConfiguration() + 20);
  v4 = sub_1A2D07EF4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AlertConfiguration.automaticDismissOption.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for AlertConfiguration();
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t AlertConfiguration.sound.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AlertConfiguration() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = v7;
}

uint64_t type metadata accessor for AlertPayload()
{
  result = qword_1EB09EF88;
  if (!qword_1EB09EF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlertPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0730, &qword_1A2D0BB58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C931CC();
  sub_1A2D08C74();
  LOBYTE(v31) = 0;
  sub_1A2D07FC4();
  sub_1A2C93220(&qword_1EB09F670, MEMORY[0x1E69695A8]);
  sub_1A2D08AE4();
  if (!v2)
  {
    v11 = type metadata accessor for AlertPayload();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v31) = 1;
    sub_1A2D08AB4();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v31) = 2;
    sub_1A2D08AB4();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v31) = 3;
    sub_1A2D08AB4();
    v21 = v3 + v11[8];
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    v24 = *(v21 + 24);
    *&v31 = *v21;
    *(&v31 + 1) = v22;
    v32 = v23;
    v33 = v24;
    v34 = 4;
    sub_1A2C8A7C0();

    v25 = v24;
    sub_1A2D08AE4();
    v26 = v33;

    v31 = *(v3 + v11[9]);
    v34 = 5;
    sub_1A2C73B10();
    sub_1A2D08AE4();
    *&v31 = *(v3 + v11[10]);
    v34 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0738, &qword_1A2D0BB60);
    sub_1A2C733D0(&unk_1ED708B88, sub_1A2CAA9F0, sub_1A2C72AB0);
    sub_1A2D08AE4();
    v27 = (v3 + v11[11]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v31) = 7;
    sub_1A2D08AB4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A2C931CC()
{
  result = qword_1EB09EFB8;
  if (!qword_1EB09EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EFB8);
  }

  return result;
}

uint64_t sub_1A2C93220(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A2C93268()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v4 = 0x726154656E656373;
    if (v1 != 6)
    {
      v4 = 0xD000000000000015;
    }

    v5 = 0x646E756F73;
    if (v1 != 4)
    {
      v5 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0x656C746974;
    if (v1 != 2)
    {
      v2 = 2036625250;
    }

    *v0;
    if (*v0 <= 1u)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t static Watchdog.execute(within:on:action:else:)(uint64_t a1, void (*a2)(uint64_t), double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Watchdog();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *(v12 + 16) = v13;
  v13->_os_unfair_lock_opaque = 0;
  *(v11 + 24) = v12;
  *(v11 + 32) = 0;

  os_unfair_lock_lock(v13);
  sub_1A2C8BCE8(a1, a5, a6, a3);
  os_unfair_lock_unlock(v13);

  a2(v11);
}

void AlertPayload.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_1A2D07FC4();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0740, &qword_1A2D0BB68);
  v40 = *(v43 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v36 - v8;
  v10 = type metadata accessor for AlertPayload();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C931CC();
  v42 = v9;
  sub_1A2D08C64();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v40;
    v37 = v13;
    LOBYTE(v44) = 0;
    sub_1A2C93220(&qword_1ED7090B8, MEMORY[0x1E69695A8]);
    v16 = v41;
    sub_1A2D08A54();
    v17 = v37;
    (*(v39 + 32))(v37, v16, v4);
    LOBYTE(v44) = 1;
    v18 = sub_1A2D08A24();
    v36 = v4;
    v19 = &v17[v10[5]];
    *v19 = v18;
    v19[1] = v20;
    LOBYTE(v44) = 2;
    v41 = 0;
    v21 = sub_1A2D08A24();
    v22 = &v17[v10[6]];
    *v22 = v21;
    v22[1] = v23;
    LOBYTE(v44) = 3;
    v24 = sub_1A2D08A24();
    v25 = &v17[v10[7]];
    *v25 = v24;
    v25[1] = v26;
    v47 = 4;
    sub_1A2C865C8();
    sub_1A2D08A54();
    v27 = v45;
    v28 = v46;
    v29 = &v17[v10[8]];
    *v29 = v44;
    v29[16] = v27;
    *(v29 + 3) = v28;
    v47 = 5;
    sub_1A2C78344();
    sub_1A2D08A54();
    *&v17[v10[9]] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0738, &qword_1A2D0BB60);
    v47 = 6;
    sub_1A2C733D0(&unk_1ED709440, sub_1A2CAAA44, sub_1A2CAAA98);
    sub_1A2D08A54();
    *&v17[v10[10]] = v44;
    LOBYTE(v44) = 7;
    v30 = sub_1A2D08A24();
    v32 = v31;
    (*(v15 + 8))(v42, v43);
    v34 = v37;
    v33 = v38;
    v35 = &v37[v10[11]];
    *v35 = v30;
    v35[1] = v32;
    sub_1A2C93B3C(v34, v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1A2C93BA0(v34);
  }
}

uint64_t sub_1A2C93B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertPayload();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C93BA0(uint64_t a1)
{
  v2 = type metadata accessor for AlertPayload();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2C93C10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A2D07FC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t AlertPayload.bundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for AlertPayload() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

NSData __swiftcall AlertPresentationOptions._bridgeToObjectiveC()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = sub_1A2D07EB4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C93DD8();
  v7 = sub_1A2D07E94();
  v9 = v8;
  v10 = sub_1A2D07F24();
  sub_1A2C55840(v7, v9);

  return v10;
}

unint64_t sub_1A2C93DD8()
{
  result = qword_1EB09ECF0;
  if (!qword_1EB09ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ECF0);
  }

  return result;
}

uint64_t AlertPresentationOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E10, &qword_1A2D0E970);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[6] = v1[1];
  v12[3] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C94000();
  sub_1A2D08C74();
  v15 = 0;
  sub_1A2D08AC4();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = 1;
  sub_1A2D08AC4();
  v13 = 2;
  sub_1A2D08AC4();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1A2C94000()
{
  result = qword_1EB09EF40;
  if (!qword_1EB09EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EF40);
  }

  return result;
}

uint64_t sub_1A2C94054()
{
  v1 = 0x7075727265746E69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616E6F6974706FLL;
  }
}

uint64_t sub_1A2C940BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0790, &unk_1A2D0D270);
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
  sub_1A2C93220(&qword_1EB09EFA0, type metadata accessor for AlertPayload);
  sub_1A2D07E64();
  sub_1A2C54E38(a2, &qword_1EB0A0790, &unk_1A2D0D270);
  sub_1A2C55840(v12, v14);

  (*(*(a3 - 8) + 56))(v8, 0, 1, a3);
  return sub_1A2C9434C(v8, a2);
}

uint64_t sub_1A2C9428C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A2D07FC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A2C9434C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0790, &unk_1A2D0D270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AlertPresentationOptions._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v5 = sub_1A2D07E84();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v8 = sub_1A2D07F44();
    v10 = v9;
    sub_1A2C944B4();
    sub_1A2D07E64();

    result = sub_1A2C55840(v8, v10);
    *a2 = v12;
    a2[1] = v13;
    a2[2] = v14;
  }

  else
  {
    __break(1u);
    sub_1A2C55840(v3, v2);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_1A2C944B4()
{
  result = qword_1EB09EF28;
  if (!qword_1EB09EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EF28);
  }

  return result;
}

uint64_t AlertPresentationOptions.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E18, &qword_1A2D0E978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C94000();
  sub_1A2D08C64();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_1A2D08A34();
    v17 = 1;
    v12 = sub_1A2D08A34();
    v16 = 2;
    v14 = sub_1A2D08A34();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    a2[1] = v12 & 1;
    a2[2] = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ActivityUIDismissalPolicy.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A2D07F94();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1A2C948C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t AlertClient.presentAlert(withActivityIdentifier:payload:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a7;
  v53 = a8;
  v47 = a5;
  v48 = a6;
  v50 = a1;
  v51 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0790, &unk_1A2D0D270);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v55 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  v17 = type metadata accessor for AlertPayload();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A2D08344();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v8 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x1E69E8020], v21);
  v27 = v26;
  LOBYTE(v26) = sub_1A2D08364();
  (*(v22 + 8))(v25, v21);
  if (v26)
  {
    v46 = v8;
    v28 = sub_1A2D07F24();
    v29 = *(v18 + 56);
    v29(v16, 1, 1, v17);
    v30 = sub_1A2D07E84();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v45 = v28;
    v25 = sub_1A2D07F44();
    v34 = v33;
    sub_1A2C94E04(&qword_1EB09EFA0, type metadata accessor for AlertPayload);
    sub_1A2D07E64();
    sub_1A2C54E38(v16, &qword_1EB0A0790, &unk_1A2D0D270);
    sub_1A2C55840(v25, v34);

    v35 = v55;
    v29(v55, 0, 1, v17);
    sub_1A2C9434C(v35, v16);
    v21 = v54;
    sub_1A2C94E4C(v16, v54);
    if ((*(v18 + 48))(v21, 1, v17) != 1)
    {
      sub_1A2C54E38(v16, &qword_1EB0A0790, &unk_1A2D0D270);
      v36 = v49;
      sub_1A2CC0604(v21, v49, type metadata accessor for AlertPayload);

      v37 = sub_1A2D07F24();
      v38 = *(v30 + 48);
      v39 = *(v30 + 52);
      swift_allocObject();
      sub_1A2D07E74();
      v40 = sub_1A2D07F44();
      v42 = v41;
      sub_1A2C944B4();
      sub_1A2D07E64();

      sub_1A2C55840(v40, v42);

      v56[0] = v56[3];
      v56[1] = v56[4];
      v56[2] = v56[5];
      sub_1A2CBF0F8(v50, v51, v36, v56, v52, v53);
      return sub_1A2CC0730(v36, type metadata accessor for AlertPayload);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v25, v21);
  swift_unexpectedError();
  __break(1u);
  sub_1A2C55840(v16, v21);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2C94E04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2C94E4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0790, &unk_1A2D0D270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C94F6C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = sub_1A2D08344();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1A2D07F24();
  v12 = sub_1A2D07E84();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v15 = sub_1A2D07F44();
  v17 = v16;
  sub_1A2C951D0();
  sub_1A2D07E64();
  sub_1A2C55840(v15, v17);

  v18 = v25;
  if (v25)
  {

    v19 = *(a3 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue);
    *v10 = v19;
    (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
    v20 = v19;
    LOBYTE(v19) = sub_1A2D08364();
    (*(v7 + 8))(v10, v6);
    if (v19)
    {
      v21 = *(a3 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__queue_prominentActivityIdentifiers);
      *(a3 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__queue_prominentActivityIdentifiers) = v18;

      v22 = *(a3 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__prominencePublisher);
      v25 = v18;

      sub_1A2D08174();

      a4[2](a4, 0);
    }

    __break(1u);
  }

  _Block_release(a4);
  __break(1u);
  _Block_release(a4);
  sub_1A2C55840(v15, v17);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1A2C951D0()
{
  result = qword_1ED708800;
  if (!qword_1ED708800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708800);
  }

  return result;
}

uint64_t ActivityProminences.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A08D0, &qword_1A2D0CB40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C8B964();
  sub_1A2D08C64();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    sub_1A2C8A470(&qword_1ED709510);
    sub_1A2D08A54();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2C953EC(uint64_t result, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v21 = a4;
  v22 = a3;
  v4 = *result;
  v5 = *(*result + 16);
  if (v5)
  {
    v7 = 0;
    v8 = v4 + 40;
    v19 = v5 - 1;
    v23 = MEMORY[0x1E69E7CC0];
    v20 = v4 + 40;
    do
    {
      v9 = (v8 + 16 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *(v9 - 1);
        v11 = *v9;
        if (!a2)
        {
          break;
        }

        v24[0] = *(v9 - 1);
        v24[1] = v11;
        MEMORY[0x1EEE9AC00](result);
        v18[2] = v24;

        if (sub_1A2C956A8(sub_1A2CB0698, v18, a2))
        {
          goto LABEL_10;
        }

        ++v10;

        v9 += 2;
        if (v5 == v10)
        {
          goto LABEL_17;
        }
      }

      v13 = *v9;

LABEL_10:
      v14 = v23;
      result = swift_isUniquelyReferenced_nonNull_native();
      v25 = v14;
      if ((result & 1) == 0)
      {
        result = sub_1A2C7F170(0, *(v14 + 16) + 1, 1);
        v14 = v25;
      }

      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1A2C7F170((v15 > 1), v16 + 1, 1);
        v14 = v25;
      }

      v7 = v10 + 1;
      *(v14 + 16) = v16 + 1;
      v23 = v14;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v11;
      v8 = v20;
    }

    while (v19 != v10);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

LABEL_17:
  v22(v23);
}

uint64_t sub_1A2C955B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8[0] = a2;
  v8[1] = a3;
  v7[2] = v8;
  v5 = sub_1A2C956A8(sub_1A2CB05CC, v7, a1);
  return a4(v5 & 1);
}

uint64_t sub_1A2C9562C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v9[0] = v2;
  v9[1] = v3;
  v8[2] = v9;
  v6 = sub_1A2C956A8(sub_1A2CB05CC, v8, a1);
  return v4(v6 & 1);
}

uint64_t sub_1A2C956A8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1A2C9576C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

unint64_t sub_1A2C957C4()
{
  result = qword_1ED709210;
  if (!qword_1ED709210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709210);
  }

  return result;
}

unint64_t sub_1A2C95818(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1A2D08814() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_1A2D08C14();

      sub_1A2D08484();
      v15 = sub_1A2D08C54();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t AlertPayload.sound.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AlertPayload() + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = v7;
}

uint64_t sub_1A2C95A6C(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for ActivityDescriptorContentState();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v42[-v10];
  os_unfair_lock_assert_owner(*(v2[9] + 16));
  v13 = *a1;
  v12 = a1[1];
  swift_beginAccess();
  v14 = v2[11];
  v45[0] = v13;
  v45[1] = v12;
  v15 = *(v4 + 80);
  v16 = *(v4 + 88);
  type metadata accessor for Activity();

  sub_1A2D083D4();

  v18 = v46;
  if (v46)
  {
    if (qword_1ED708BB8 != -1)
    {
      swift_once();
    }

    v19 = sub_1A2D08094();
    __swift_project_value_buffer(v19, qword_1ED708BC0);
    sub_1A2C7C04C(a1, v11, type metadata accessor for ActivityDescriptorContentState);
    sub_1A2C7C04C(a1, v9, type metadata accessor for ActivityDescriptorContentState);

    v20 = sub_1A2D08074();
    v21 = sub_1A2D086A4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45[0] = v44;
      *v22 = 136446978;
      v24 = v2[2];
      v23 = v2[3];

      v25 = sub_1A2C55558(v24, v23, v45);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      v26 = *(v18 + 16);
      v27 = *(v18 + 24);

      v28 = sub_1A2C55558(v26, v27, v45);

      *(v22 + 14) = v28;
      *(v22 + 22) = 2082;
      LOBYTE(v46) = v11[*(v5 + 20)];
      v29 = sub_1A2D08454();
      v31 = v30;
      v43 = v21;
      sub_1A2C73FB0(v11, type metadata accessor for ActivityDescriptorContentState);
      v32 = sub_1A2C55558(v29, v31, v45);

      *(v22 + 24) = v32;
      *(v22 + 32) = 2082;
      v33 = &v9[*(v5 + 28)];
      v34 = *v33;
      v35 = v33[1];
      v36 = sub_1A2D07F14();
      v38 = v37;
      sub_1A2C73FB0(v9, type metadata accessor for ActivityDescriptorContentState);
      v39 = sub_1A2C55558(v36, v38, v45);

      *(v22 + 34) = v39;
      _os_log_impl(&dword_1A2C51000, v20, v43, "[%{public}s] Updating activity: %{public}s to state: %{public}s and to content state: %{public}s", v22, 0x2Au);
      v40 = v44;
      swift_arrayDestroy();
      MEMORY[0x1A58E5180](v40, -1, -1);
      MEMORY[0x1A58E5180](v22, -1, -1);
    }

    else
    {

      sub_1A2C73FB0(v9, type metadata accessor for ActivityDescriptorContentState);
      sub_1A2C73FB0(v11, type metadata accessor for ActivityDescriptorContentState);
    }

    v41 = *(a1 + *(v5 + 20));
    sub_1A2C8081C();
    if (LOBYTE(v45[0]) != v41)
    {
      LOBYTE(v45[0]) = v41;
      sub_1A2C8079C(v45);
    }

    sub_1A2C95EBC(a1 + *(v5 + 28));
  }

  return result;
}

uint64_t sub_1A2C95EBC(uint64_t a1)
{
  v31 = a1;
  v2 = *v1;
  v3 = type metadata accessor for OpaqueActivityContent();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
  v7 = *(v2 + 88);
  v8 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v32[0] = AssociatedTypeWitness;
  v32[1] = AssociatedConformanceWitness;
  v32[2] = v11;
  v32[3] = v12;
  v13 = type metadata accessor for ActivityContent();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v32 - v19 + 32;
  sub_1A2C7FF28(v31, v6, type metadata accessor for OpaqueActivityContent);
  ActivityContent.init(from:)(v6, AssociatedTypeWitness, AssociatedConformanceWitness, v11, v12, v20);
  v21 = v1;
  sub_1A2C963B0();
  v22 = static ActivityContent.== infix(_:_:)(v18, v20, AssociatedTypeWitness, AssociatedConformanceWitness, v11, v12);
  v23 = *(v14 + 8);
  v23(v18, v13);
  if (!v22)
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v24 = sub_1A2D08094();
    __swift_project_value_buffer(v24, qword_1EB09F570);
    v25 = v21;

    v26 = sub_1A2D08074();
    v27 = sub_1A2D08684();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1A2C55558(v25[2], v25[3], v32);
      _os_log_impl(&dword_1A2C51000, v26, v27, "Updating content for activity %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1A58E5180](v29, -1, -1);
      MEMORY[0x1A58E5180](v28, -1, -1);
    }

    sub_1A2CCF0EC();
    sub_1A2CCF134();
  }

  return (v23)(v20, v13);
}

uint64_t sub_1A2C963B0()
{
  v1 = *(v0 + 48);

  sub_1A2D08184();
}

BOOL static ActivityContent.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A2D07F94();
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1208, &qword_1A2D0FAF0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - v21;
  v23 = *(a6 + 8);
  if ((sub_1A2D08424() & 1) == 0)
  {
    return 0;
  }

  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v24 = type metadata accessor for ActivityContent();
  if (*(a1 + *(v24 + 56)) != *(a2 + *(v24 + 56)))
  {
    return 0;
  }

  v25 = *(v24 + 52);
  v26 = *(v19 + 48);
  sub_1A2C7214C(a1 + v25, v22);
  sub_1A2C7214C(a2 + v25, &v22[v26]);
  v27 = v34;
  v28 = *(v34 + 48);
  if (v28(v22, 1, v12) == 1)
  {
    if (v28(&v22[v26], 1, v12) == 1)
    {
      sub_1A2C54E38(v22, &qword_1EB0A0E28, &unk_1A2D0EC10);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1A2C7214C(v22, v18);
  if (v28(&v22[v26], 1, v12) == 1)
  {
    (*(v27 + 8))(v18, v12);
LABEL_8:
    sub_1A2C54E38(v22, &qword_1EB0A1208, &qword_1A2D0FAF0);
    return 0;
  }

  v30 = v33;
  (*(v27 + 32))(v33, &v22[v26], v12);
  sub_1A2C6D4B0(&qword_1EB0A1210, MEMORY[0x1E6969530]);
  v31 = sub_1A2D08424();
  v32 = *(v27 + 8);
  v32(v30, v12);
  v32(v18, v12);
  sub_1A2C54E38(v22, &qword_1EB0A0E28, &unk_1A2D0EC10);
  return (v31 & 1) != 0;
}

uint64_t sub_1A2C967E0()
{
  if (v0[7])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A2D08764();
    swift_unknownObjectRelease();
    v1 = v0[7];
  }

  v0[7] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_1A2C96900((v0 + 8), &v6);
  if (*(&v7 + 1))
  {
    sub_1A2C53CD8(&v6, v5);
    sub_1A2C96970(&v6);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_1A2D080A4();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_1A2C96970(&v6);
  }

  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  swift_beginAccess();
  sub_1A2C8BA60(&v6, (v0 + 8));
  swift_endAccess();
  v2 = v0[3];
  v3 = v0[4];
  v0[3] = 0;
  v0[4] = 0;
  return sub_1A2C80A04(v2);
}

uint64_t sub_1A2C96900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EA0, &qword_1A2D172A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2C96970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EA0, &qword_1A2D172A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2C969D8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token);

  sub_1A2D080D4();
}

uint64_t sub_1A2C96A44()
{
  v1 = *(v0 + 32);
  sub_1A2C80A04(*(v0 + 24));
  v2 = *(v0 + 56);
  swift_unknownObjectRelease();
  sub_1A2C96970(v0 + 64);

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t AlertPayload.updateIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A2D07FC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AlertPayload.title.getter()
{
  v1 = (v0 + *(type metadata accessor for AlertPayload() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AlertPayload.body.getter()
{
  v1 = (v0 + *(type metadata accessor for AlertPayload() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AlertPayload.deviceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for AlertPayload() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Activity.__deallocating_deinit()
{
  Activity.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *Activity.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = *(v0 + 6);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 128)]);
  sub_1A2C69F84(&v0[*(*v0 + 136)], type metadata accessor for ActivityDescriptor);
  v6 = *&v0[*(*v0 + 144)];

  v7 = *&v0[*(*v0 + 160)];

  return v0;
}

uint64_t sub_1A2C96E50()
{
  v1 = *(*(v0 + 24) + 16);

  os_unfair_lock_lock(v1);
  v2 = *(v0 + 32);
  os_unfair_lock_unlock(v1);

  return v2;
}

uint64_t sub_1A2C96EC8()
{
  v1 = *(*(v0 + 24) + 16);

  os_unfair_lock_lock(v1);
  sub_1A2C8EB74();
  os_unfair_lock_unlock(v1);
}

uint64_t Watchdog.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t sub_1A2C96FB4(uint64_t a1, uint64_t (*a2)(uint64_t), double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*(v6 + 24) + 16);

  os_unfair_lock_lock(v12);
  sub_1A2C8BCE8(a1, a5, a6, a3);
  os_unfair_lock_unlock(v12);

  return a2(v6);
}

uint64_t sub_1A2C97054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityUIDismissalPolicy();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A2C970C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityUIDismissalPolicy();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A2C97130()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1A2C97168()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2C971B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2C971F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C97228()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A2C97270()
{
  MEMORY[0x1A58E5250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C972A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C972F0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A2C97338()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A2C973B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A2C973F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityDescriptor();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A2C974B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityDescriptor();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_1A2C9756C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A2C975B4()
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

uint64_t sub_1A2C9762C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1A2CB06C0();
  *a2 = result;
  return result;
}

uint64_t sub_1A2C97658(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
}

uint64_t sub_1A2C9769C()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1A2C55840(*(v0 + 16), v1);
  }

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  v7 = *(v0 + 120);

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1A2C97720()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A2C97760()
{
  MEMORY[0x1A58E5250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C97798()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C977E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C97830@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1A2C9788C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1A2C978F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AlertPayload();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A2C9799C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AlertPayload();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A2C97A40()
{
  MEMORY[0x1A58E5250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C97A78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A2C97AD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1A2C8081C();
  *a2 = v5;
  return result;
}

uint64_t sub_1A2C97B14(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1A2C8079C(&v4);
}

__n128 sub_1A2C97B58(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1A2C97C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  type metadata accessor for Activity();
  v7 = sub_1A2D08054();
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_1A2C97C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  type metadata accessor for Activity();
  v8 = sub_1A2D08054();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t sub_1A2C97D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  swift_getAssociatedTypeWitness();
  v8 = sub_1A2D08054();
  v9 = *(*(v8 - 8) + 48);

  return v9(a1, a2, v8);
}

uint64_t sub_1A2C97DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  v8 = sub_1A2D08054();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t sub_1A2C97E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ActivityContent();
  v7 = sub_1A2D08054();
  return (*(*(v7 - 8) + 48))(a1, a2, v7);
}

uint64_t sub_1A2C97F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ActivityContent();
  v8 = sub_1A2D08054();
  return (*(*(v8 - 8) + 56))(a1, a2, a2, v8);
}

uint64_t sub_1A2C980DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A2C981A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A2C9825C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C982A4()
{
  MEMORY[0x1A58E5250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C982E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A2D07F94();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A2C98354(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A2D07F94();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A2C983C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C98554()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C9858C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2C986DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for OpaqueActivityContent();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1A2D07F94();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A2C98800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for OpaqueActivityContent();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1A2D07F94();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A2C98950(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A2D07F94();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2C989BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1A2D07F94();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1A2C98A3C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2C98A74()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A2C98AB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C98B40()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C98B78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A2C98BB8()
{
  MEMORY[0x1A58E5250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C98BF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C98C38()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2C98C78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A2C98CC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id acTryWithObjCException(void *a1)
{
  v1 = a1;
  v1[2]();

  return 0;
}

void sub_1A2C996D8(void *a1)
{
  v1 = objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1A2C996B4);
}

uint64_t sub_1A2C9A3D0(uint64_t a1, int a2)
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

uint64_t sub_1A2C9A3F0(uint64_t result, int a2, int a3)
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

uint64_t ActivityEndingOptions.platterDismissalPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActivityUIDismissalPolicy();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2C7F29C(v1, v6, type metadata accessor for ActivityUIDismissalPolicy);
  v7 = sub_1A2D07F94();
  v8 = *(v7 - 8);
  (*(v8 + 32))(a1, v6, v7);
  return (*(v8 + 56))(a1, 0, 1, v7);
}

uint64_t ActivityEndingOptions.init(platterDismissalPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ActivityPlatterDismissalPolicy();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2C7F29C(a1, v7, type metadata accessor for ActivityPlatterDismissalPolicy);
  v8 = sub_1A2D07F94();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    if (qword_1ED708D98 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for ActivityUIDismissalPolicy();
    v11 = __swift_project_value_buffer(v10, qword_1ED708DA0);
    sub_1A2C7F29C(v11, a2, type metadata accessor for ActivityUIDismissalPolicy);
    return sub_1A2C9A6A4(a1);
  }

  else
  {
    sub_1A2C9A6A4(a1);
    return (*(v9 + 32))(a2, v7, v8);
  }
}

uint64_t sub_1A2C9A6A4(uint64_t a1)
{
  v2 = type metadata accessor for ActivityPlatterDismissalPolicy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2C9A73C()
{
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](0);
  return sub_1A2D08C54();
}

uint64_t sub_1A2C9A780()
{
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](0);
  return sub_1A2D08C54();
}

uint64_t sub_1A2C9A7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001A2D18B40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A2D08B34();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A2C9A854(uint64_t a1)
{
  v2 = sub_1A2C92124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2C9A890(uint64_t a1)
{
  v2 = sub_1A2C92124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityEndingOptions.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0120, &qword_1A2D0A5D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C92124();
  sub_1A2D08C74();
  type metadata accessor for ActivityUIDismissalPolicy();
  sub_1A2C92178(&qword_1ED708A68, type metadata accessor for ActivityUIDismissalPolicy);
  sub_1A2D08AE4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A2C9AA48()
{
  v0 = sub_1A2D07EB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C92178(&qword_1ED708DD0, type metadata accessor for ActivityEndingOptions);
  v3 = sub_1A2D07E94();
  v5 = v4;
  v6 = sub_1A2D07F24();
  sub_1A2C55840(v3, v5);

  return v6;
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

uint64_t sub_1A2C9AB80(void *a1)
{
  a1[1] = sub_1A2C92178(&qword_1EB09F0D0, type metadata accessor for ActivityEndingOptions);
  a1[2] = sub_1A2C92178(&qword_1ED708DD0, type metadata accessor for ActivityEndingOptions);
  result = sub_1A2C92178(&qword_1EB09F0C8, type metadata accessor for ActivityEndingOptions);
  a1[3] = result;
  return result;
}

uint64_t sub_1A2C9AC54()
{
  result = type metadata accessor for ActivityUIDismissalPolicy();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A2C9ACDC()
{
  result = qword_1EB0A0130;
  if (!qword_1EB0A0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0130);
  }

  return result;
}

unint64_t sub_1A2C9AD34()
{
  result = qword_1ED708DD8;
  if (!qword_1ED708DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708DD8);
  }

  return result;
}

unint64_t sub_1A2C9AD8C()
{
  result = qword_1ED708DE0;
  if (!qword_1ED708DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708DE0);
  }

  return result;
}

uint64_t _s11ActivityKit0A17PresentationStateO18DisplacementReasonO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

uint64_t sub_1A2C9AE28()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

uint64_t ActivityOutputClient.__allocating_init()()
{
  v0 = swift_allocObject();
  ActivityOutputClient.init()();
  return v0;
}

uint64_t ActivityOutputClient.deinit()
{
  v1 = v0;
  v3 = v0 + 16;
  v2 = *(v0 + 16);
  v4 = *(v3 + 8);
  sub_1A2C9AF2C(v2);

  v5 = *(v1 + 32);

  return v1;
}

uint64_t sub_1A2C9AF2C(uint64_t a1)
{
  v3 = sub_1A2D082D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A2D08314();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_1A2CA0474;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C5E5B8;
  aBlock[3] = &block_descriptor_113;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  sub_1A2D082E4();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1A2C586F0(&qword_1ED709AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A50, &unk_1A2D0AA40);
  sub_1A2C56A78(&unk_1ED709AC0, &qword_1EB0A0A50, &unk_1A2D0AA40);
  sub_1A2D08804();
  MEMORY[0x1A58E43D0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

uint64_t ActivityOutputClient.__deallocating_deinit()
{
  v1 = v0;
  v3 = v0 + 16;
  v2 = *(v0 + 16);
  v4 = *(v3 + 8);
  sub_1A2C9AF2C(v2);

  v5 = *(v1 + 32);

  return MEMORY[0x1EEE6BDC0](v1, 64, 7);
}

uint64_t ActivityOutputClient.observeDescriptors()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0138, &qword_1A2D0A840);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0140, &qword_1A2D0A848);
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v11 = sub_1A2D08094();
  __swift_project_value_buffer(v11, qword_1ED709870);
  v12 = sub_1A2D08074();
  v13 = sub_1A2D086A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1A2C51000, v12, v13, "Attempting to observe descriptors", v14, 2u);
    MEMORY[0x1A58E5180](v14, -1, -1);
  }

  v15 = v2;
  ActivityOutputClient.observeDescriptorStates()();
  if (!v1)
  {
    v24 = v16;
    v21 = 0;
    v19[3] = v16;
    v19[2] = sub_1A2D080B4();
    v19[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0148, &qword_1A2D0A850);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0150, &qword_1A2D0A858);
    v20 = v7;
    sub_1A2C56A78(&unk_1EB09F510, &qword_1EB0A0148, &qword_1A2D0A850);
    sub_1A2C56A78(&unk_1EB09EB90, &qword_1EB0A0150, &qword_1A2D0A858);
    sub_1A2D082B4();

    sub_1A2C56A78(&unk_1EB09EBC8, &qword_1EB0A0138, &qword_1A2D0A840);
    sub_1A2C9EE14();
    sub_1A2D08274();
    (*(v22 + 8))(v6, v3);
    sub_1A2C56A78(&qword_1EB09EBE8, &qword_1EB0A0140, &qword_1A2D0A848);
    v17 = v20;
    v15 = sub_1A2D081F4();
    (*(v23 + 8))(v10, v17);
  }

  return v15;
}

void ActivityOutputClient.observeDescriptorStates()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0160, &qword_1A2D0A868);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0168, &qword_1A2D0A870);
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0170, &qword_1A2D0A878);
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0178, &qword_1A2D0A880);
  v52 = *(v15 - 8);
  v53 = v15;
  v16 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v44 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0180, &qword_1A2D0A888);
  v54 = *(v18 - 8);
  v55 = v18;
  v19 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v44 - v20;
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v21 = sub_1A2D08094();
  __swift_project_value_buffer(v21, qword_1ED709870);
  v22 = sub_1A2D08074();
  v23 = sub_1A2D086A4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1A2C51000, v22, v23, "Attempting to observe states", v24, 2u);
    MEMORY[0x1A58E5180](v24, -1, -1);
  }

  v25 = *(v2[4] + 16);

  os_unfair_lock_lock(v25);
  v26 = v2[7];
  if (__OFADD__(v26, 1))
  {
    __break(1u);
    return;
  }

  v27 = v2[6] | v26;
  v2[7] = v26 + 1;
  os_unfair_lock_unlock(v25);

  if (!v27)
  {
    v29 = v2[2];
    v30 = *(v2[3] + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
    MEMORY[0x1EEE9AC00](v28);
    sub_1A2D08704();
    if (v1)
    {
      return;
    }

    v56 = 0;
  }

  v44 = swift_allocObject();
  swift_weakInit();
  v31 = v2[3];
  v32 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities;
  swift_beginAccess();
  v57 = *(v31 + v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0190, &qword_1A2D0A890);
  sub_1A2D081D4();
  v57 = *(v31 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_activityDiffPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01A0, &qword_1A2D0A898);
  sub_1A2C56A78(&qword_1ED7092A8, &qword_1EB0A0160, &qword_1A2D0A868);
  sub_1A2C56A78(&qword_1ED7092B0, &unk_1EB0A01A0, &qword_1A2D0A898);
  sub_1A2D08244();
  (*(v4 + 8))(v7, v3);
  sub_1A2C56A78(&unk_1ED7092C8, &qword_1EB0A0168, &qword_1A2D0A870);
  v33 = v46;
  v34 = sub_1A2D081F4();
  (*(v45 + 8))(v11, v33);
  v57 = v34;
  sub_1A2D080B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01B0, &qword_1A2D0A8A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0148, &qword_1A2D0A850);
  sub_1A2C56A78(&unk_1ED7092B8, &unk_1EB0A01B0, &qword_1A2D0A8A0);
  sub_1A2C56A78(&unk_1EB09F510, &qword_1EB0A0148, &qword_1A2D0A850);
  v35 = v47;
  sub_1A2D082B4();

  sub_1A2C56A78(&qword_1EB09F530, &qword_1EB0A0170, &qword_1A2D0A878);
  sub_1A2CA001C();
  v36 = v49;
  v37 = v50;
  sub_1A2D08274();
  (*(v48 + 8))(v35, v36);
  v38 = swift_allocObject();
  v39 = v44;
  *(v38 + 16) = sub_1A2CA0014;
  *(v38 + 24) = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1A2CA0014;
  *(v40 + 24) = v39;
  sub_1A2C56A78(&unk_1EB09F540, &qword_1EB0A0178, &qword_1A2D0A880);
  swift_retain_n();
  v41 = v53;
  v42 = v51;
  sub_1A2D08214();

  (*(v52 + 8))(v37, v41);
  sub_1A2C56A78(&unk_1EB09F558, &unk_1EB0A0180, &qword_1A2D0A888);
  v43 = v55;
  sub_1A2D081F4();

  (*(v54 + 8))(v42, v43);
}

uint64_t sub_1A2C9BEFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ActivityDescriptorState();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActivityDescriptor();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A03B0, &qword_1A2D0AAB8);
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v30 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0420, &qword_1A2D0AAF8);
  v35 = *(v16 - 8);
  v17 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - v18;
  v20 = *a1;
  v21 = *(*a1 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v30 = v16;
    v31 = v13;
    v32 = a2;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1A2CA014C(0, v21, 0);
    v22 = v37;
    v23 = v20 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v24 = *(v33 + 72);
    do
    {
      sub_1A2C7BFE4(v23, v7, type metadata accessor for ActivityDescriptorState);
      sub_1A2C725C0(v7, v12, type metadata accessor for ActivityDescriptor);
      v37 = v22;
      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1A2CA014C(v25 > 1, v26 + 1, 1);
        v22 = v37;
      }

      *(v22 + 16) = v26 + 1;
      sub_1A2C725C0(v12, v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26, type metadata accessor for ActivityDescriptor);
      v23 += v24;
      --v21;
    }

    while (v21);
    v13 = v31;
    a2 = v32;
    v16 = v30;
  }

  v37 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0158, &qword_1A2D0A860);
  v27 = v34;
  sub_1A2D081D4();
  sub_1A2D081C4();
  (*(v36 + 8))(v27, v13);
  sub_1A2C56A78(&qword_1EB09EB08, &unk_1EB0A0420, &qword_1A2D0AAF8);
  v28 = sub_1A2D081F4();
  result = (*(v35 + 8))(v19, v16);
  *a2 = v28;
  return result;
}

uint64_t sub_1A2C9C30C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(*(result + 32) + 16);
    v2 = result;

    os_unfair_lock_lock(v1);
    sub_1A2C9C398(v2);
    os_unfair_lock_unlock(v1);
  }

  return result;
}

void sub_1A2C9C398(uint64_t *a1)
{
  v3 = a1[6];
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
    swift_once();
    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1ED709870);

    v10 = v1;
    v11 = sub_1A2D08074();
    v12 = sub_1A2D08684();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 134349314;
      *(v13 + 4) = v2;

      *(v13 + 12) = 2080;
      v15 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
      v16 = sub_1A2D08454();
      v18 = sub_1A2C55558(v16, v17, &v20);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1A2C51000, v11, v12, "Could not update subscription for client %{public}llu: %s", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1A58E5180](v14, -1, -1);
      MEMORY[0x1A58E5180](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    a1[6] = v5;
    if (!v5)
    {
      v6 = a1[7];
      if (v6 < 1)
      {
        if (!v6)
        {
          v19 = a1[3];
          sub_1A2C9AF2C(a1[2]);
        }
      }

      else
      {
        v7 = a1[2];
        v8 = *(a1[3] + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
        MEMORY[0x1EEE9AC00](a1);
        sub_1A2D08704();
      }
    }
  }
}

void sub_1A2C9C5FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(*(Strong + 32) + 16);

    os_unfair_lock_lock(v2);
    v3 = v1[7];
    v4 = __OFSUB__(v3, 1);
    v5 = v3 - 1;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v1[7] = v5;
      if (!v5 && !v1[6])
      {
        v6 = v1[3];
        sub_1A2C9AF2C(v1[2]);
      }

      os_unfair_lock_unlock(v2);
    }
  }
}

uint64_t sub_1A2C9C6A8(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1ED709870);
  v4 = sub_1A2D08074();
  v5 = sub_1A2D086A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1A2C51000, v4, v5, "Activity feed completed", v6, 2u);
    MEMORY[0x1A58E5180](v6, -1, -1);
  }

  return a2();
}