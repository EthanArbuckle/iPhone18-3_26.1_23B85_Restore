uint64_t sub_1C99F2848(uint64_t a1)
{
  if (!a1)
  {
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000018, 0x80000001C9ADE310);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1C99F28D0(uint64_t a1)
{
  if (!a1)
  {
    type metadata accessor for SNError();
    sub_1C99F3A94("iterator is invalid");
    swift_willThrow();
  }

  return a1;
}

void sub_1C99F2930()
{
  sub_1C97BE5BC();
  v1 = IOObjectRelease(*(v0 + 16));
  sub_1C9A3B42C(v1);
  sub_1C97BE5A4();
}

uint64_t sub_1C99F2A1C()
{
  sub_1C99F2930();
  sub_1C99F39F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99F2AB4(int a1)
{
  sub_1C99F39F0();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1C99F2AE0(uint64_t a1)
{
  v3 = sub_1C99F277C(a1);
  if (!v1)
  {
    v4 = v3;
    sub_1C97A2CEC(&qword_1EC3D15D0);
    *(swift_initStackObject() + 16) = v4;
    v2 = sub_1C99F2384();
    swift_setDeallocating();
    sub_1C99F2EF0();
    swift_deallocClassInstance();
  }

  return v2;
}

uint64_t sub_1C99F2B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97A2CEC(&unk_1EC3C6918);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AA3B60;
  sub_1C99F3A18();
  v11 = sub_1C99F2CA0(a1, a2, v10);
  if (v4)
  {
    *(inited + 16) = 0;
    swift_setDeallocating();
    sub_1C985D6C0();
  }

  else
  {
    *(inited + 32) = v11;
    sub_1C99F3A00();
    *(inited + 40) = sub_1C99F2CA0(a3, a4, v12);
    v14 = sub_1C98BC9C0(inited);
    swift_setDeallocating();
    sub_1C985D6C0();
    v15 = sub_1C97E8CE8(v14);

    inited = sub_1C99F4454(v15);
  }

  return inited;
}

uint64_t sub_1C99F2CA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1C9A92508();
  v6 = a3(v5 + 32);

  if (v6)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v7 = v6;
      sub_1C9A92318();

      v3 = 0;
    }

    sub_1C97A8E8C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }

  else
  {
    sub_1C97A8E8C();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1C99F2DC8(io_iterator_t a1)
{
  result = IOIteratorIsValid(a1);
  if (!result)
  {
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000013, 0x80000001C9ADE2F0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C99F2E4C@<X0>(io_iterator_t a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1C99F2DC8(a1);
  if (!v4)
  {
    v10 = IOIteratorNext(a1);
    if (v10)
    {
      (*(a3 + 24))(v10, a2, a3);
      v11 = a4;
      v12 = 0;
    }

    else
    {
      v11 = a4;
      v12 = 1;
    }

    return sub_1C97ACC50(v11, v12, 1, a2);
  }

  return result;
}

uint64_t sub_1C99F2EF0()
{
  v1 = IOObjectRelease(*(v0 + 16));
  sub_1C9A3B42C(v1);
  return v0;
}

void sub_1C99F305C()
{
  sub_1C97BE5BC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = type metadata accessor for UnsafeIOIterator();
  sub_1C99F258C(v0, &off_1EEBB6258);
  sub_1C97BE5A4();
}

uint64_t sub_1C99F31D4()
{
  sub_1C99F305C();
  sub_1C99F39F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99F3218()
{
  v1 = *(v0 + 16);
  if (IOIteratorIsValid(v1))
  {
    v2 = IOIteratorNext(v1);
    if (v2)
    {
      v3 = v2;
      sub_1C99F28D0(v2);
      type metadata accessor for IOService();
      result = swift_allocObject();
      *(result + 16) = v3;
      return result;
    }
  }

  else
  {
    type metadata accessor for SNError();
    v4 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000013, 0x80000001C9ADE2F0);
    swift_willThrow();
  }

  return 0;
}

uint64_t sub_1C99F32F4@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1C9A93258();
  v23 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = v1[4];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C99F2E4C(v15, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v17 = v23;
  if (sub_1C97ABF20(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v8, v5);
    v18 = 1;
    v19 = v24;
  }

  else
  {
    v21 = *(v9 + 32);
    v21(v14, v8, AssociatedTypeWitness);
    v21(v12, v14, AssociatedTypeWitness);
    v19 = v24;
    (*(v2 + 32))(v12, v3, v2);
    v18 = 0;
  }

  return sub_1C97ACC50(v19, v18, 1, v3);
}

char *sub_1C99F35B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, mach_port_t a10)
{
  if ((a7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(a7))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C99F3B50(a1, a2, a3, a3, a5, a6, a7);
  if (v17 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(v13))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  v18 = sub_1C99F3ACC(v15, a10, v11, v12, v13, v14, v16, v20, v21, v22);
  result = sub_1C9A3B42C(v18);
  if (v10)
  {
    return result;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if (HIDWORD(v23))
  {
    goto LABEL_15;
  }

  return (v24 | (v23 << 32));
}

void sub_1C99F36B4()
{
  sub_1C97BE5BC();
  v1 = IOServiceClose(*(v0 + 16));
  sub_1C9A3B42C(v1);
  sub_1C97BE5A4();
}

uint64_t sub_1C99F37A0()
{
  sub_1C99F36B4();
  sub_1C99F39F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99F37FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

char *sub_1C99F3880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if ((a7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(a7))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C99F3B50(*(v7 + 16), a1, a2, a3, a5, a6, a7);
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(v12))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  v16 = sub_1C99F3ACC(v14, v9, v10, v11, v12, v13, v15, v18, v19, v20);
  result = sub_1C9A3B42C(v16);
  if (v8)
  {
    return result;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if (HIDWORD(v21))
  {
    goto LABEL_15;
  }

  return (v22 | (v21 << 32));
}

void sub_1C99F3A30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1C99F3A60()
{
  sub_1C97A592C(v0);

  JUMPOUT(0x1CCA93280);
}

id sub_1C99F3A94@<X0>(uint64_t a1@<X8>)
{

  return sub_1C9929478(0xD000000000000017, (v1 - 32) | 0x8000000000000000, 1, 0, 0xD000000000000018, a1 | 0x8000000000000000);
}

uint64_t sub_1C99F3ACC@<X0>(void *outputStruct@<X7>, mach_port_t a2@<W0>, uint32_t a3@<W1>, const uint64_t *a4@<X2>, uint32_t a5@<W3>, uint64_t a6@<X4>, const void *a7@<X8>, void *outputStructa, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a7)
  {
    v13 = a6 - a7;
  }

  else
  {
    v13 = 0;
  }

  return IOConnectCallMethod(a2, a3, a4, a5, a7, v13, v10, (v11 - 28), outputStruct, va);
}

uint64_t sub_1C99F3AFC()
{

  return swift_slowAlloc();
}

uint64_t sub_1C99F3B18()
{

  return swift_slowAlloc();
}

BOOL sub_1C99F3B34(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1C99F3B74(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1C97B7B08(0, v2, 0);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1C97B7B08(v6 > 1, v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 3;
      --v2;
    }

    while (v2);
  }

  return v10;
}

uint64_t sub_1C99F3C4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C97B7B08(0, v2, 0);
  if (v2)
  {
    v3 = (a1 + 56);
    do
    {
      v5 = *(v3 - 3);
      v4 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;

      sub_1C97CE3DC(v6, v7);
      sub_1C97CE3DC(v6, v7);
      sub_1C97A5978(v6, v7);
      sub_1C97A5978(v6, v7);
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C97B7B08(v8 > 1, v9 + 1, 1);
      }

      v3 += 4;
      *(v12 + 16) = v9 + 1;
      v10 = v12 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v4;
      --v2;
    }

    while (v2);
  }

  return v12;
}

uint64_t sub_1C99F3D58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1C97B7B08(0, v2, 0);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_1C97B7B08(v6 > 1, v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 3;
      --v2;
    }

    while (v2);
  }

  return v10;
}

uint64_t sub_1C99F3E30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v4 >= v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v25 = MEMORY[0x1E69E7CC0];
  result = sub_1C97B7B08(0, v5, 0);
  v23 = v5;
  v24 = v4;
  v22 = a1;
  if (v5)
  {
    v7 = (a1 + 40);
    v8 = v3;
    v9 = v3;
    while (v8)
    {
      if (!v4)
      {
        goto LABEL_24;
      }

      v11 = *(v7 - 1);
      v10 = *v7;

      v13 = *(v25 + 16);
      v12 = *(v25 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1C97B7B08(v12 > 1, v13 + 1, 1);
      }

      *(v25 + 16) = v13 + 1;
      v14 = v25 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      --v4;
      --v8;
      v7 += 2;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    v9 = v3;
LABEL_13:
    v15 = v23;
    for (i = (v22 + 16 * v23 + 40); v9 != v15; i += 2)
    {
      if (v15 >= v9)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v15, 1))
      {
        goto LABEL_26;
      }

      if (v24 == v15)
      {
        break;
      }

      if (v15 >= v24)
      {
        goto LABEL_27;
      }

      v17 = *(i - 1);
      v18 = *i;
      v20 = *(v25 + 16);
      v19 = *(v25 + 24);

      if (v20 >= v19 >> 1)
      {
        result = sub_1C97B7B08(v19 > 1, v20 + 1, 1);
      }

      *(v25 + 16) = v20 + 1;
      v21 = v25 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      ++v15;
    }

    return v25;
  }

  return result;
}

uint64_t sub_1C99F3FF4(uint64_t a1, void (*a2)(__int128 *, __int128 *, __int128 *), uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *(a1 + 16);
  v51 = MEMORY[0x1E69E7CC0];
  sub_1C97B7B88(0, v6, 0);
  v7 = v5 + 64;
  v8 = v51;
  v9 = -1;
  v10 = -1 << *(v5 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v5 + 64);
  v12 = (63 - v10) >> 6;
  v40 = v6;
  if (v6)
  {

    v13 = 0;
    v14 = 0;
    v39 = v5;
    while (1)
    {
      v43 = v8;
      if (!v11)
      {
        break;
      }

      v15 = v4;
LABEL_11:
      v17 = __clz(__rbit64(v11)) | (v14 << 6);
      v18 = (*(v5 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      sub_1C97BD360(*(v5 + 56) + 32 * v17, &v46);
      *&v45 = v20;
      *(&v45 + 1) = v19;

      v8 = a3;
      a2(&v48, &v49, &v45);
      if (v15)
      {

        sub_1C993973C(&v45, &qword_1EC3CBA60);
        return v8;
      }

      sub_1C993973C(&v45, &qword_1EC3CBA60);
      v8 = v43;
      v51 = v43;
      v22 = *(v43 + 16);
      v21 = *(v43 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1C97B7B88(v21 > 1, v22 + 1, 1);
        v8 = v51;
      }

      ++v13;
      v11 &= v11 - 1;
      *(v8 + 16) = v22 + 1;
      v23 = (v8 + 48 * v22);
      v24 = v48;
      v25 = v50;
      v23[3] = v49;
      v23[4] = v25;
      v23[2] = v24;
      v5 = v39;
      v4 = 0;
      if (v13 == v40)
      {
        goto LABEL_17;
      }
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v12)
      {
        goto LABEL_34;
      }

      v11 = *(v7 + 8 * v16);
      ++v14;
      if (v11)
      {
        v15 = v4;
        v14 = v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v14 = 0;
LABEL_17:
    if (!v11)
    {
      goto LABEL_19;
    }

    do
    {
      v44 = v8;
LABEL_23:
      v27 = __clz(__rbit64(v11)) | (v14 << 6);
      v28 = *(v5 + 56);
      v29 = v5;
      v30 = (*(v5 + 48) + 16 * v27);
      v31 = *v30;
      v32 = v30[1];
      sub_1C97BD360(v28 + 32 * v27, &v46);
      *&v45 = v31;
      *(&v45 + 1) = v32;
      v49 = v46;
      v50 = v47;
      v48 = v45;

      v8 = a3;
      a2(&v45, &v46, &v48);
      if (v4)
      {
        sub_1C993973C(&v48, &qword_1EC3CBA60);

        return v8;
      }

      sub_1C993973C(&v48, &qword_1EC3CBA60);
      v8 = v44;
      v51 = v44;
      v34 = *(v44 + 16);
      v33 = *(v44 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1C97B7B88(v33 > 1, v34 + 1, 1);
        v8 = v51;
      }

      v11 &= v11 - 1;
      *(v8 + 16) = v34 + 1;
      v35 = (v8 + 48 * v34);
      v36 = v45;
      v37 = v47;
      v35[3] = v46;
      v35[4] = v37;
      v35[2] = v36;
      v5 = v29;
    }

    while (v11);
LABEL_19:
    while (1)
    {
      v26 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v26 >= v12)
      {

        return v8;
      }

      v11 = *(v7 + 8 * v26);
      ++v14;
      if (v11)
      {
        v44 = v8;
        v14 = v26;
        goto LABEL_23;
      }
    }
  }

  __break(1u);
LABEL_34:

  __break(1u);
  return result;
}

uint64_t sub_1C99F437C(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a1;
  v35 = a1;
  v9 = *(a4 + 16);

  v10 = (a4 + 80);
  if (v9)
  {
    while (1)
    {
      v11 = *v10;
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *(v10 - 4);
      v15 = *(v10 - 3);
      v16 = *(v10 - 5);
      v28 = *(v10 - 6);
      v29 = v16;
      v30 = v14;
      v31 = v15;
      v32 = v12;
      v33 = v13;
      v34 = v11;
      sub_1C98133B4(v28, v16, v14, v15);
      v17 = a2(&v27, &v35, &v28);
      if (v5)
      {
        break;
      }

      sub_1C9A06D78(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, v30, v31);

      v8 = v27;
      v35 = v27;
      v10 += 14;
      if (!--v9)
      {
        return v8;
      }
    }

    sub_1C9A06D78(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, v30, v31);
  }

  return v8;
}

uint64_t sub_1C99F4454(uint64_t a1)
{
  v2 = *(a1 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  v3 = sub_1C9A06C10();
  sub_1C97B7B08(v3, v4, v5);
  v6 = v22;
  if (v2)
  {
    v7 = a1 + 32;
    do
    {
      sub_1C97E82EC(v7, v21, &qword_1EC3C69F0);
      v20[0] = v21[1];
      v20[1] = v21[2];
      v8 = v21[0];
      sub_1C97A592C(v20);
      v22 = v6;
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = sub_1C97CE0F4(v9);
        sub_1C97B7B08(v11, v10 + 1, 1);
        v6 = v22;
      }

      *(v6 + 16) = v10 + 1;
      *(v6 + 16 * v10 + 32) = v8;
      v7 += 48;
      --v2;
    }

    while (v2);
  }

  v13 = sub_1C9A3C12C(v12);
  v14 = *(v6 + 16);

  v15 = *(v13 + 16);

  if (v14 == v15)
  {

    return sub_1C992C208(v16);
  }

  else
  {
    sub_1C97E78C8();
    v18 = sub_1C97A7A80();
    return sub_1C9A06D58(v18, v19);
  }
}

uint64_t sub_1C99F46AC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v4 = a2();

  v6 = sub_1C9A3C12C(v5);
  v7 = *(v4 + 16);

  v8 = *(v6 + 16);

  if (v7 == v8)
  {

    return a3(v9);
  }

  else
  {
    sub_1C97E78C8();
    v11 = sub_1C97A7A80();
    return sub_1C9A06D58(v11, v12);
  }
}

uint64_t sub_1C99F4750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C99F3E30(a1, a2);

  v6 = sub_1C9A3C12C(v5);
  v7 = *(v4 + 16);

  v8 = *(v6 + 16);

  if (v7 == v8)
  {

    return sub_1C992C4C4(a1, a2);
  }

  else
  {
    sub_1C97E78C8();
    swift_allocError();
    *v10 = 3;
    return swift_willThrow();
  }
}

uint64_t sub_1C99F4814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = sub_1C9A324EC();
    if (v5)
    {
      return sub_1C97BD360(*(a1 + 56) + 32 * v4, a2);
    }
  }

  sub_1C97E78C8();
  v7 = sub_1C97A7A80();
  return sub_1C9A06B74(v7, v8);
}

uint64_t sub_1C99F4888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    v5 = sub_1C993AF6C(a1, a2);
    v7 = sub_1C9A32230(v5, v6);
    if (v8)
    {
      return sub_1C97BD360(*(a1 + 56) + 32 * v7, a3);
    }
  }

  sub_1C97E78C8();
  v10 = sub_1C97A7A80();
  return sub_1C9A06B74(v10, v11);
}

uint64_t sub_1C99F48FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v3 = sub_1C993AF6C(a1, a2);
    v5 = sub_1C9A32230(v3, v4);
    if (v6)
    {
      return *(*(a1 + 56) + 4 * v5);
    }
  }

  sub_1C97E78C8();
  v8 = sub_1C97A7A80();
  return sub_1C9A06B74(v8, v9);
}

void sub_1C99F495C()
{
  sub_1C97AEB94();
  v25 = v0;
  v2 = v1;
  v3 = sub_1C9A93D68();
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SNLogMelParameters(0);
  *(&v37 + 1) = v9;
  v10 = swift_allocObject();
  *&v36 = v10;
  v11 = *(v2 + 16);
  *(v10 + 16) = *v2;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v2 + 32);
  *(v10 + 64) = *(v2 + 48);
  sub_1C9A93D28();
  sub_1C9A93D58();
  (*(v5 + 8))(v8, v3);
  sub_1C9A936F8();
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C9A93818();
    if (!*(&v38 + 1))
    {

      goto LABEL_16;
    }

    v35[0] = v36;
    v35[1] = v37;
    v35[2] = v38;
    sub_1C97E82EC(v35, &v29, &qword_1EC3CC380);

    if (!swift_dynamicCast())
    {
      break;
    }

    v32 = v26;
    v33 = v27;
    v34 = v28;
    sub_1C993973C(v35, &qword_1EC3CC380);
    if (*(&v33 + 1))
    {
      v29 = v32;
      v30 = v33;
      v31 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C9A06D08();
        sub_1C97E4DEC();
        v12 = v18;
      }

      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C97CE0F4(v13);
        sub_1C97E4DEC();
        v12 = v19;
      }

      *(v12 + 16) = v14 + 1;
      v15 = v12 + 40 * v14;
      v16 = v29;
      v17 = v30;
      *(v15 + 64) = v31;
      *(v15 + 32) = v16;
      *(v15 + 48) = v17;
    }

    else
    {
      sub_1C993973C(&v32, &unk_1EC3D1A40);
    }
  }

  v20 = 0xD000000000000026;
  v28 = 0;
  v27 = 0u;
  v26 = 0u;
  sub_1C993973C(&v26, &unk_1EC3D1A40);
  sub_1C97E82EC(v35, &v29, &qword_1EC3CC380);
  if (*(&v29 + 1))
  {
    sub_1C97A592C(&v30);
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    sub_1C9A935B8();

    *&v29 = 0xD000000000000029;
    *(&v29 + 1) = 0x80000001C9ADE3E0;
    v21 = sub_1C97FB300();
    MEMORY[0x1CCA90230](v21);

    v22 = *(&v29 + 1);
    v20 = v29;
  }

  else
  {
    sub_1C97A592C(&v30);
    v22 = 0x80000001C9ADE3B0;
  }

  sub_1C9A03680();
  sub_1C97A7A80();
  *v23 = v20;
  v23[1] = v22;
  swift_willThrow();

  sub_1C993973C(v35, &qword_1EC3CC380);

LABEL_16:
  sub_1C9971578();
  sub_1C97AEB5C();
}

void sub_1C99F4D74()
{
  sub_1C99F495C();
  if (!v0)
  {
    v2 = v1;
    sub_1C99F495C();
    v4 = v3;
    v5 = 0;
    v6 = *(v2 + 16);
    v7 = 32;
    while (1)
    {
      if (v6 == v5)
      {
LABEL_9:

        return;
      }

      if (v5 >= *(v2 + 16))
      {
        break;
      }

      sub_1C97C9078(v2 + v7, v10);
      v8 = *(v4 + 16);
      if (v5 == v8)
      {

        sub_1C97C90D4(v10);
        return;
      }

      if (v5++ >= v8)
      {
        goto LABEL_13;
      }

      v12[0] = v10[0];
      v12[1] = v10[1];
      v13 = v11;
      sub_1C97C9078(v4 + v7, v14);
      v9 = MEMORY[0x1CCA911D0](v12, v14);
      sub_1C993973C(v12, &unk_1EC3D1A50);
      v7 += 40;
      if ((v9 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }
}

void sub_1C99F4EE8()
{
  sub_1C99F495C();
  if (!v0)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v1 + 32;
      do
      {
        sub_1C97C9078(v3, v4);
        sub_1C9A93538();
        sub_1C97C90D4(v4);
        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }
}

void sub_1C99F4F74()
{
  sub_1C97AEB94();
  v24 = v2;
  v25 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C98021C4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(0x6A2E657069636572, 0xEB000000006E6F73, AssociatedTypeWitness, AssociatedConformanceWitness);
  v15 = (*(v5 + 16))(v1, v7, v5);
  if (v0)
  {
    v17 = sub_1C9A06A00();
    v18(v17);
  }

  else
  {
    v19 = v15;
    v26 = v9;
    v23 = v16;
    v20 = sub_1C98DB63C();
    sub_1C99FD550(v20, v24, v11, v26, v7, v5, v25);
    v21 = sub_1C9A06A00();
    v22(v21);
    sub_1C97A5978(v19, v23);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C99F51C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v12 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v6 = v7;
    v5 = a5;
    v8 = a4;
    v9 = a3;
    v10 = a1;
    v13 = sub_1C9A59974(a5, v12);
    v14 = sub_1C97DD928(*(v5 + 28) * v13 / 8, 0, 0);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  v14 = sub_1C97E7368();
LABEL_5:
  v15 = *(v14 + 16);
  v18[0] = v14 + 32;
  v18[1] = v15;
  result = sub_1C99F56AC(v18, v10, a2, v9, v8, v5);
  if (v6)
  {

    return v5;
  }

  v17 = *(v14 + 16);
  if (!(v17 >> 58))
  {
    v5 = sub_1C97DDAC8((v14 + 32), 8 * v17, *(v5 + 28));

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C99F530C(float32x4_t *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    if (a2 <= 0x7FFFFFFF)
    {
      v3 = a3;
      v5 = a1;
      v6 = sub_1C9A59974(a3, a2);
      v7 = sub_1C97DD928(*(v3 + 28) * v6 / 8, 0, 0);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  v7 = sub_1C97E7368();
LABEL_4:
  v10 = 0;
  if (sub_1C9A5999C(v3, v5, v7 + 32, v4, &v10))
  {
    v8 = *(v7 + 16);
    if (v8 >> 58)
    {
      __break(1u);
    }

    v3 = sub_1C97DDAC8((v7 + 32), 8 * v8, *(v3 + 28));
  }

  else
  {
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000025, 0x80000001C9AD5AE0);
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1C99F54A4(void *a1, uint64_t a2)
{
  sub_1C97A5A8C(a1, a1[3]);
  v5 = sub_1C9A911D8();
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v5 <= 0x7FFFFFFF)
  {
    v6 = sub_1C9A59974(a2, v5);
    v7 = sub_1C97DD928(*(a2 + 28) * v6 / 8, 0, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_15:
  isUniquelyReferenced_nonNull_native = sub_1C97E7368();
  v7 = isUniquelyReferenced_nonNull_native;
LABEL_4:
  v9 = v7 + 32;
  v12 = v7 + 32;
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  sub_1C97A5A8C(a1, a1[3]);
  result = sub_1C983E270();
  if (v13)
  {
    if (v7 == -32)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v9 == v12)
    {

      return a2;
    }

    __break(1u);
    __break(1u);
    goto LABEL_17;
  }

  if (v7 != -32)
  {
    if (v9 == v12)
    {
      v11 = *(v7 + 16);
      if (!(v11 >> 58))
      {
        a2 = sub_1C97DDAC8((v7 + 32), 8 * v11, *(a2 + 28));

        return a2;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C99F56AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = __OFSUB__(a5 >> 1, a4);
  v8 = (a5 >> 1) - a4;
  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = 0;
  if (v8 < 0xFFFFFFFF80000000)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (v8 > 0x7FFFFFFF)
  {
    goto LABEL_9;
  }

  result = sub_1C9A5999C(a6, (a3 + 4 * a4), *a1, v8, &v10);
  if ((result & 1) == 0)
  {
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000025, 0x80000001C9AD5AE0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C99F57AC(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v7 = *a4;
  sub_1C97A5A8C(a5, a5[3]);
  v8 = sub_1C9A911D8();
  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (v8 > 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

  result = sub_1C9A5999C(a3, a1, v7, v8, &v10);
  if ((result & 1) == 0)
  {
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000025, 0x80000001C9AD5AE0);
    return swift_willThrow();
  }

  return result;
}

void *sub_1C99F58E0(uint64_t a1, void *a2, void *(*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *), uint64_t a6, void (*a7)(void **, uint64_t *, uint64_t *))
{
  v16 = a1;
  result = a3(&v15, &v16);
  if (!v7)
  {
    a5(&v14, &v15);
    a7(&v13, &v12, &v14);

    result = v13;
    *a2 = v12;
  }

  return result;
}

uint64_t sub_1C99F59C8(uint64_t a1, uint64_t a2)
{
  sub_1C97A2CEC(&qword_1EC3D16C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AA3B60;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v5 = sub_1C98BC9D8(inited);
  swift_setDeallocating();
  sub_1C985D9F0();
  v6 = sub_1C97E8E28(v5);

  v7 = sub_1C99F46AC(v6, sub_1C99F3C4C, sub_1C992C258);

  return v7;
}

void sub_1C99F5ABC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *))
{
  v3 = v2;
  v4 = a1;
  v5 = a1 + 64;
  sub_1C984ACA4();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  v41 = v11;
LABEL_2:
  v13 = v12;
  if (!v8)
  {
    goto LABEL_4;
  }

  do
  {
    v12 = v13;
LABEL_7:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v8)));
    v15 = *(v4 + 56);
    v16 = (*(v4 + 48) + v14);
    v17 = v16[1];
    v39[0] = *v16;
    v39[1] = v17;
    v40 = *(v15 + v14);

    v18 = sub_1C9A06CA0();
    sub_1C97CE3DC(v18, v19);
    a2(&v37, v39);
    if (v3)
    {

      v32 = sub_1C9A06CA0();
      sub_1C97A5978(v32, v33);
LABEL_17:

      return;
    }

    v8 &= v8 - 1;
    v20 = v38;
    if (v38)
    {
      v34 = v37;
      v23 = v40;

      sub_1C97CE3DC(v23, *(&v23 + 1));

      v24 = sub_1C9A06CA0();
      sub_1C97A5978(v24, v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C9A06D08();
        sub_1C97E5608();
        v35 = v29;
      }

      v27 = *(v35 + 16);
      v26 = *(v35 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1C97CE0F4(v26);
        sub_1C97E5608();
        v35 = v30;
      }

      *(v35 + 16) = v27 + 1;
      v28 = v35 + 32 * v27;
      *(v28 + 32) = v34;
      *(v28 + 40) = v20;
      *(v28 + 48) = v23;
      v3 = 0;
      v4 = v41;
      goto LABEL_2;
    }

    v21 = sub_1C9A06CA0();
    sub_1C97A5978(v21, v22);
    v13 = v12;
    v3 = 0;
    v4 = v41;
  }

  while (v8);
  while (1)
  {
LABEL_4:
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v10)
    {
      break;
    }

    v8 = *(v5 + 8 * v12);
    ++v13;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  sub_1C9A0699C();
  sub_1C99F46AC(v35, v31, sub_1C992C258);
  if (v3)
  {
    goto LABEL_17;
  }
}

uint64_t sub_1C99F5D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C9A32230(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1C99F5DB8(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  sub_1C97A5A8C(a2, a2[3]);
  sub_1C9A93DC8();
  v3 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v3;
  v8[2] = *(a1 + 32);
  v9 = *(a1 + 48);
  v4 = sub_1C98FBA38(v8, &v10);
  v6 = v5;
  *&v8[0] = v4;
  *(&v8[0] + 1) = v5;
  sub_1C97BDE74(v11, v12);
  sub_1C98CB4F8();
  sub_1C9A93B58();
  sub_1C97A5978(v4, v6);
  return sub_1C97A592C(v11);
}

void cdeclSavePipeline(outputPath:ebankInputCount:ebankInputStride:modelPath:feedbackConnectionStarts:feedbackConnectionDestinations:feedbackConnectionsCount:)()
{
  sub_1C97BE460();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v50 = v8;
  v9 = sub_1C9A91558();
  sub_1C97AE9C8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A92598();
  sub_1C9A91468();

  v15 = sub_1C9A92598();
  v17 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v44[1] = v15;
    v45 = v7;
    v46 = v14;
    v47 = v16;
    v48 = v11;
    v49 = v9;
    v18 = v1;
    v51 = MEMORY[0x1E69E7CC0];
    v19 = sub_1C9A06C10();
    sub_1C97B7B08(v19, v20, v21);
    v22 = v51;
    v23 = v18;
    do
    {
      v24 = sub_1C9A92598();
      v26 = v25;
      v51 = v22;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        v30 = sub_1C97CE0F4(v27);
        sub_1C97B7B08(v30, v28 + 1, 1);
        v22 = v51;
      }

      *(v22 + 16) = v28 + 1;
      v29 = v22 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v5 += 8;
      --v23;
    }

    while (v23);
    v44[0] = v22;
    v51 = v17;
    v31 = sub_1C9A06C10();
    sub_1C97B7B08(v31, v32, v33);
    v17 = v51;
    do
    {
      v34 = sub_1C9A92598();
      v36 = v35;
      v51 = v17;
      v38 = *(v17 + 16);
      v37 = *(v17 + 24);
      if (v38 >= v37 >> 1)
      {
        v40 = sub_1C97CE0F4(v37);
        sub_1C97B7B08(v40, v38 + 1, 1);
        v17 = v51;
      }

      *(v17 + 16) = v38 + 1;
      v39 = v17 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
      v3 += 8;
      --v18;
    }

    while (v18);
    v41 = v44[0];
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  sub_1C99F4750(v41, v17);

  sub_1C99F61A4();
  v42 = sub_1C9A06BF0();
  v43(v42);

  sub_1C97BE478();
}

void sub_1C99F61A4()
{
  sub_1C97AEB94();
  v108 = v3;
  v109 = v0;
  v105 = v4;
  v106 = v5;
  v107 = v6;
  v103 = v7;
  v104 = v8;
  v10 = v9;
  sub_1C97A2CEC(&qword_1EC3C7FE0);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEA4C();
  v12 = sub_1C9A91558();
  sub_1C97AE9C8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C9A06BA0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v94 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v94 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v94 - v23;
  sub_1C9A914D8();
  sub_1C97ACC50(v1, 0, 1, v12);
  sub_1C9A91448();
  sub_1C993973C(v1, &qword_1EC3C7FE0);
  v25 = v109;
  v26 = sub_1C9880658();
  if (v25)
  {
    v27 = sub_1C9A06AB0();
    v28(v27);
  }

  else
  {
    v29 = v26;
    v107 = v19;
    v108 = v10;
    v102 = v2;
    type metadata accessor for E5RTExecutionStream();
    swift_allocObject();
    v109 = sub_1C9880798(v29);
    type metadata accessor for E5RTExecutionStreamOperation();
    sub_1C9A913F8();
    sub_1C9A91508();
    v30 = *(v14 + 8);
    v30(v22, v12);
    sub_1C98817E8();
    v32 = v31;
    v101 = v30;

    sub_1C9882AF4(v32);
    sub_1C9880DE8();
    sub_1C987E9B0();
    v97 = v12;
    v98 = v14 + 8;
    v34 = 0;
    v35 = *(v33 + 16);
    v36 = v33 + 40;
    v99 = MEMORY[0x1E69E7CC0];
    v100 = v24;
    v96 = v33 + 40;
LABEL_5:
    v37 = (v36 + 16 * v34);
    while (v35 != v34)
    {
      if (v34 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v38 = v33;
      v39 = *(v37 - 1);
      v22 = *v37;
      v110[0] = v39;
      v110[1] = v22;
      MEMORY[0x1EEE9AC00](v33);
      *(&v94 - 2) = v110;

      if ((sub_1C989AB80(sub_1C9A022BC, (&v94 - 4), v106) & 1) == 0)
      {
        v40 = v99;
        v111 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1C9A06D08();
          sub_1C97B7B08(v41, v42, v43);
          v40 = v111;
        }

        v45 = *(v40 + 16);
        v44 = *(v40 + 24);
        v46 = v45 + 1;
        if (v45 >= v44 >> 1)
        {
          v48 = sub_1C97CE0F4(v44);
          v99 = v49;
          v95 = v50;
          sub_1C97B7B08(v48, v49, 1);
          v46 = v99;
          v45 = v95;
          v40 = v111;
        }

        ++v34;
        *(v40 + 16) = v46;
        v99 = v40;
        v47 = v40 + 16 * v45;
        *(v47 + 32) = v39;
        *(v47 + 40) = v22;
        v33 = v38;
        v36 = v96;
        goto LABEL_5;
      }

      v37 += 2;
      ++v34;
      v33 = v38;
    }

    v51 = sub_1C985BA7C(v99);
    v53 = v52;

    sub_1C987EA14();
    v55 = v54;
    v94 = v51;
    v95 = 0;
    v96 = v53;
    v56 = 0;
    v57 = *(v54 + 16);
    v58 = v54 + 40;
    v59 = MEMORY[0x1E69E7CC0];
    v60 = v106;
    v99 = v54 + 40;
LABEL_16:
    for (i = (v58 + 16 * v56); ; i += 2)
    {
      v62 = v104;
      v63 = v105;
      if (v57 == v56)
      {
        break;
      }

      if (v56 >= *(v55 + 16))
      {
        __break(1u);
        return;
      }

      v65 = *(i - 1);
      v64 = *i;
      v66 = *(v60 + 16);

      if (!v66 || (v67 = sub_1C97A7890(), sub_1C9A32230(v67, v68), v60 = v106, (v69 & 1) == 0))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v59;
        v110[0] = v59;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v72 = sub_1C9A06D08();
          sub_1C97B7B08(v72, v73, v74);
          v60 = v106;
          v71 = v110[0];
        }

        v76 = *(v71 + 16);
        v75 = *(v71 + 24);
        if (v76 >= v75 >> 1)
        {
          v78 = sub_1C97CE0F4(v75);
          sub_1C97B7B08(v78, v76 + 1, 1);
          v60 = v106;
          v71 = v110[0];
        }

        ++v56;
        *(v71 + 16) = v76 + 1;
        v59 = v71;
        v77 = v71 + 16 * v76;
        *(v77 + 32) = v65;
        *(v77 + 40) = v64;
        v58 = v99;
        goto LABEL_16;
      }

      ++v56;
    }

    v79 = v95;
    v80 = sub_1C985BA7C(v59);
    if (v79)
    {
      v101(v100, v97);

      goto LABEL_4;
    }

    v82 = v80;
    v83 = v81;
    v106 = v32;

    sub_1C97A2CEC(&qword_1EC3D1760);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_1C9AA0140;
    *(v84 + 32) = 0;
    *(v84 + 40) = 0;
    *(v84 + 48) = 0;
    *(v84 + 56) = 0x80000000;
    *(v84 + 64) = 0;
    *(v84 + 72) = 0;
    *(v84 + 80) = 0;
    *(v84 + 88) = 1;
    *(v84 + 96) = 0;
    *(v84 + 104) = 0;
    *(v84 + 112) = 0x80000000;
    *(v84 + 120) = 0;
    *(v84 + 128) = 0;
    *(v84 + 136) = 0;
    *(v84 + 144) = v103;
    *(v84 + 152) = v62;
    *(v84 + 160) = xmmword_1C9ACA7D0;
    *(v84 + 176) = 0;
    *(v84 + 184) = 0;
    *(v84 + 192) = 0;
    *(v84 + 200) = 6;
    *(v84 + 208) = 0;
    *(v84 + 216) = 0;
    *(v84 + 224) = 0x80000000;
    *(v84 + 232) = 0;
    *(v84 + 240) = 0;
    *(v84 + 248) = 0;
    v85 = v96;
    *(v84 + 256) = v94;
    *(v84 + 264) = v85;
    *(v84 + 272) = xmmword_1C9ACA7E0;
    *(v84 + 304) = 0;
    *(v84 + 288) = 0;
    *(v84 + 296) = 0;
    v22 = v100;
    *(v84 + 312) = sub_1C9A91518();
    *(v84 + 320) = v86;
    *(v84 + 328) = v60;
    *(v84 + 336) = v63 & 1 | 0x20000000;
    *(v84 + 344) = 0;
    *(v84 + 352) = 0;
    *(v84 + 360) = 0;
    *(v84 + 368) = v82;
    *(v84 + 376) = v83;
    *(v84 + 384) = xmmword_1C9ACA7F0;
    *(v84 + 400) = 0;
    *(v84 + 408) = 0;
    *(v84 + 416) = 0;

    sub_1C9A914D8();
    v87 = sub_1C99A4D94();
    v34 = v97;
    v32 = v101;
    v88 = v87;
    v89 = sub_1C9A06AB0();
    (v32)(v89);
    if (v88)
    {
      v110[3] = &unk_1F494C110;
      v110[4] = sub_1C9A02330();
      v110[0] = v84;
      v91 = sub_1C9A1DDD0(v110);
      v93 = v92;
      sub_1C97A592C(v110);
      sub_1C99A4EE4(1, v102);
      v101(v102, v97);
      sub_1C9A91648();
      v101(v100, v97);
      sub_1C97A5978(v91, v93);

      goto LABEL_4;
    }

LABEL_32:

    sub_1C9A022DC();
    sub_1C97A7A80();
    *v90 = 2;
    swift_willThrow();

    v32(v22, v34);
  }

LABEL_4:
  sub_1C9971578();
  sub_1C97AEB5C();
}

uint64_t sub_1C99F6B18(uint64_t a1)
{
  v2 = sub_1C9A056E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99F6B54(uint64_t a1)
{
  v2 = sub_1C9A056E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99F6BD4(uint64_t a1)
{
  v2 = sub_1C9A054D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99F6C10(uint64_t a1)
{
  v2 = sub_1C9A054D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99F6C90(uint64_t a1)
{
  v2 = sub_1C9A0568C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99F6CCC(uint64_t a1)
{
  v2 = sub_1C9A0568C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99F6E68()
{
  v1 = v0[1];
  v7 = *v0;
  v8 = v1;
  v9 = v0[2];
  v10 = *(v0 + 12);
  sub_1C99F495C();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_1C97C9078(v4, v6);
      sub_1C9A93538();
      sub_1C97C90D4(v6);
      v4 += 40;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1C99F6FDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22[5] = *MEMORY[0x1E69E9840];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DA8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  sub_1C97A5A8C(v22, v22[3]);
  sub_1C98DD970();
  sub_1C9A93B38();
  v5 = v20;
  switch(v21 >> 62)
  {
    case 1uLL:
      goto LABEL_12;
    case 2uLL:
      goto LABEL_5;
    case 3uLL:
      goto LABEL_10;
    default:
      v15[0] = v20;
      LOWORD(v15[1]) = v21;
      *(&v15[1] + 2) = *(&v21 + 2);
      result = sub_1C99CCD20(v15, v15 + BYTE6(v21), 52);
      if (result)
      {
        goto LABEL_18;
      }

      __break(1u);
LABEL_5:
      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (sub_1C9A91308() && __OFSUB__(v7, sub_1C9A91338()))
      {
        goto LABEL_21;
      }

      if (__OFSUB__(v8, v7))
      {
        goto LABEL_20;
      }

      v9 = sub_1C9A91328();
      result = sub_1C9A06AC8(v9);
      if (result)
      {
        goto LABEL_18;
      }

      __break(1u);
LABEL_10:
      memset(v15, 0, 14);
      result = sub_1C99CCD20(v15, v15, 52);
      if (result)
      {
        goto LABEL_18;
      }

      __break(1u);
LABEL_12:
      if (v5 >> 32 < v5)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      if (sub_1C9A91308() && __OFSUB__(v5, sub_1C9A91338()))
      {
        goto LABEL_22;
      }

      v10 = sub_1C9A91328();
      result = sub_1C9A06AC8(v10);
      if (result)
      {
LABEL_18:
        v11 = *(result + 16);
        v16 = *result;
        v17 = v11;
        v18 = *(result + 32);
        v19 = *(result + 48);
        v12 = sub_1C97A7890();
        sub_1C97A5978(v12, v13);
        sub_1C97A592C(v22);
        result = sub_1C97A592C(a1);
        v14 = v17;
        *a2 = v16;
        *(a2 + 16) = v14;
        *(a2 + 32) = v18;
        *(a2 + 48) = v19;
      }

      else
      {
        __break(1u);
      }

      return result;
  }
}

uint64_t sub_1C99F72C8(void *a1)
{
  v2 = *(v1 + 16);
  v4[0] = *v1;
  v4[1] = v2;
  v4[2] = *(v1 + 32);
  v5 = *(v1 + 48);
  return sub_1C99F5DB8(v4, a1);
}

uint64_t sub_1C99F7308()
{
  sub_1C9A93CC8();
  sub_1C99F4EE8();
  return sub_1C9A93D18();
}

uint64_t sub_1C99F744C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73676E697070616DLL && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C99F74DC()
{
  sub_1C9A06D98();
  sub_1C9A06C20();
  sub_1C97A2CEC(&qword_1EC3D1D48);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C98550DC();
  sub_1C98CA9DC(v0);
  sub_1C9A05378();
  sub_1C9A06B14();
  sub_1C97A2CEC(&unk_1EC3C7B20);
  sub_1C9A06A60(&unk_1EC3D1D40);
  sub_1C9A06974();
  v2 = sub_1C9A06A84();
  v3(v2);
  sub_1C9A06DAC();
}

void sub_1C99F75E8()
{
  sub_1C9A06D98();
  sub_1C9A06C3C();
  sub_1C97A2CEC(&qword_1EC3D1CD8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97FB2C8();
  sub_1C9A068C0();
  sub_1C9A05378();
  sub_1C98CA998();
  if (!v1)
  {
    sub_1C97A2CEC(&unk_1EC3C7B20);
    sub_1C9A06A2C(&unk_1EC3D1CD0);
    sub_1C9A06900();
    v3 = sub_1C9A0686C();
    v4(v3);
  }

  sub_1C97A592C(v0);
  sub_1C9A06C00();
  sub_1C9A06DAC();
}

uint64_t sub_1C99F7704(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1C9A93B18(), v14 = 0, (v13 & 1) != 0))
  {
    sub_1C98453B0(a3, a7);
    v14 = a4 ^ a8 ^ 1;
    if ((v15 & 1) == 0)
    {
      v14 = 0;
    }
  }

  return v14 & 1;
}

uint64_t sub_1C99F777C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001C9ADC0B0 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x796C6E4F757063 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
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

uint64_t sub_1C99F7894(char a1)
{
  if (!a1)
  {
    return 1752457584;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x796C6E4F757063;
}

void sub_1C99F78E8()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3D1D38);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C98550DC();
  v2 = sub_1C9A06BBC();
  sub_1C97A5A8C(v2, v3);
  sub_1C9A05324();
  sub_1C9A93DD8();
  sub_1C9A939C8();
  if (!v0)
  {
    sub_1C9A06CD8();
    sub_1C97A2CEC(&unk_1EC3C7B20);
    sub_1C9A06A60(&unk_1EC3D1D40);
    sub_1C9A93A18();
    sub_1C97BE2BC();
    sub_1C9A939D8();
  }

  v4 = sub_1C98B7720();
  v5(v4);
  sub_1C97AEB5C();
}

uint64_t sub_1C99F7A90(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C9A92528();
  sub_1C984AA08(a1, a4);
  return sub_1C9A93CE8();
}

uint64_t sub_1C99F7ADC()
{
  sub_1C9A06D2C();
  sub_1C97BE32C();
  v0 = sub_1C9A92528();
  v8 = sub_1C9A06C48(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12);
  sub_1C984AA08(v8, v9);
  sub_1C9A93CE8();
  return sub_1C9A93D18();
}

void sub_1C99F7B44()
{
  sub_1C97AEB94();
  v2 = v1;
  sub_1C97A2CEC(&qword_1EC3D1CC0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C98021C4();
  sub_1C97A5A8C(v2, v2[3]);
  sub_1C9A05324();
  sub_1C9A93DB8();
  if (!v0)
  {
    sub_1C9A938A8();
    sub_1C97A2CEC(&unk_1EC3C7B20);
    sub_1C9A06CD8();
    sub_1C9A06A2C(&unk_1EC3D1CD0);
    sub_1C9A938F8();
    sub_1C9A938B8();
    v4 = sub_1C97BE31C();
    v5(v4);
  }

  sub_1C97A592C(v2);
  sub_1C9971578();
  sub_1C97AEB5C();
}

uint64_t sub_1C99F7D80(uint64_t a1, uint64_t a2)
{
  if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C99F7DF8()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = sub_1C97A2CEC(v5);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97FB2D8();
  sub_1C97A5A8C(v4, v4[3]);
  v2();
  sub_1C9A93DD8();
  sub_1C9A939C8();
  (*(v8 + 8))(v0, v6);
  sub_1C97AEB5C();
}

uint64_t sub_1C99F7F1C()
{
  v0 = sub_1C9A06B54();
  sub_1C9A06C48(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void sub_1C99F7F58()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v6 = sub_1C993AF6C(v3, v5);
  sub_1C97A2CEC(v6);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97FB2C8();
  sub_1C97A5A8C(v4, v4[3]);
  v2();
  sub_1C9A06CFC();
  sub_1C9A93DB8();
  if (!v0)
  {
    sub_1C9A06BE0();
    sub_1C9A938A8();
    sub_1C9A06BD4();
    v8 = sub_1C97FB300();
    v9(v8);
  }

  sub_1C97A592C(v4);
  sub_1C97AEB5C();
}

uint64_t sub_1C99F8094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656469727473 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

uint64_t sub_1C99F8154(char a1)
{
  if (a1)
  {
    return 0x656469727473;
  }

  else
  {
    return 0x746E756F63;
  }
}

void sub_1C99F8184()
{
  sub_1C97AEB94();
  sub_1C97A2CEC(&qword_1EC3D1D20);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C98550DC();
  v2 = sub_1C98B7774();
  sub_1C97A5A8C(v2, v3);
  sub_1C9A05228();
  sub_1C9A06CFC();
  sub_1C9A93DD8();
  sub_1C97BE2BC();
  sub_1C9A93A08();
  if (!v0)
  {
    sub_1C9A06CD8();
    sub_1C97BE2BC();
    sub_1C9A93A08();
  }

  v4 = sub_1C98B7720();
  v5(v4);
  sub_1C97AEB5C();
}

uint64_t sub_1C99F82DC(uint64_t a1, uint64_t a2)
{
  sub_1C97BE32C();
  MEMORY[0x1CCA91980](a1);
  MEMORY[0x1CCA91980](a2);
  return sub_1C9A93D18();
}

void sub_1C99F8334()
{
  sub_1C9A06D98();
  sub_1C9A06C3C();
  sub_1C97A2CEC(&qword_1EC3D1C90);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C97FB2C8();
  sub_1C9A068C0();
  sub_1C9A05228();
  sub_1C98CA998();
  sub_1C9A06BE0();
  sub_1C9A938E8();
  sub_1C9A06CD8();
  sub_1C9A06BE0();
  sub_1C9A938E8();
  v2 = sub_1C9A0686C();
  v3(v2);
  sub_1C97A592C(v0);
  sub_1C9A06DAC();
}

void sub_1C99F8470()
{
  sub_1C97AEB94();
  v1 = v0;
  v3 = v2;
  v5 = sub_1C993AF6C(v2, v4);
  sub_1C97A2CEC(v5);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C98021C4();
  sub_1C97A5A8C(v3, v3[3]);
  v1();
  sub_1C9A06CFC();
  sub_1C9A93DD8();
  v7 = sub_1C97A7890();
  v8(v7);
  sub_1C9971578();
  sub_1C97AEB5C();
}

uint64_t sub_1C99F855C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C99F85E4()
{
  sub_1C9A06D98();
  sub_1C9A06C20();
  sub_1C97A2CEC(&qword_1EC3D1CF8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C98550DC();
  sub_1C98CA9DC(v0);
  sub_1C9A051D4();
  sub_1C9A06B14();
  sub_1C97A2CEC(&qword_1EC3C7BF0);
  sub_1C9A05420(&unk_1EC3D23D0);
  sub_1C9A06974();
  v2 = sub_1C9A06A84();
  v3(v2);
  sub_1C9A06DAC();
}

uint64_t sub_1C99F8700(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1CCA91980](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_1C9971264();
      sub_1C9A92528();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1C99F8774()
{
  sub_1C9A06D98();
  sub_1C9A06C3C();
  sub_1C97A2CEC(&qword_1EC3D1C80);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97FB2C8();
  sub_1C9A068C0();
  sub_1C9A051D4();
  sub_1C98CA998();
  if (!v1)
  {
    sub_1C97A2CEC(&qword_1EC3C7BF0);
    sub_1C9A05420(&qword_1EC3CA010);
    sub_1C9A06900();
    v3 = sub_1C9A0686C();
    v4(v3);
  }

  sub_1C97A592C(v0);
  sub_1C9A06C00();
  sub_1C9A06DAC();
}

uint64_t sub_1C99F88A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E69727065756C62 && a2 == 0xE900000000000074)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C99F8940()
{
  sub_1C97AEB94();
  v1 = sub_1C97A2CEC(&qword_1EC3D1CE8);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C98021C4();
  v5 = sub_1C98B7774();
  sub_1C97A5A8C(v5, v6);
  sub_1C9A0512C();
  sub_1C9A06CFC();
  sub_1C9A93DD8();
  sub_1C9A053CC();
  sub_1C9A93A18();
  (*(v3 + 8))(v0, v1);
  sub_1C97AEB5C();
}

uint64_t sub_1C99F8A64()
{
  v1 = sub_1C9A06B54();
  sub_1C9A06C48(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1C97C7F50();
  MEMORY[0x1CCA91980](v0);
  return sub_1C9A93D18();
}

void sub_1C99F8AA8()
{
  sub_1C9A06D98();
  sub_1C9A06C3C();
  sub_1C97A2CEC(&qword_1EC3D1C68);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97FB2C8();
  sub_1C9A068C0();
  sub_1C9A0512C();
  sub_1C98CA998();
  if (!v1)
  {
    sub_1C9A05180();
    sub_1C9A067A8();
    sub_1C9A938F8();
    v3 = sub_1C9A0686C();
    v4(v3);
  }

  sub_1C97A592C(v0);
  sub_1C9A06DAC();
}

void sub_1C99F8BC0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v9 = *(a1 + 12);
  switch(v7 >> 28)
  {
    case 1u:
      sub_1C9A06BC8();
      if (v23 == 0x10000000)
      {
        v24 = *v22;

        sub_1C98453B0(v21, v24);
      }

      return;
    case 2u:
      if ((a2[3] & 0xF0000000) == 0x20000000)
      {
        v14 = v3 == *a2 && v4 == a2[1];
        if (v14 || (sub_1C9A93B18() & 1) != 0)
        {
          v15 = sub_1C9971264();
          sub_1C98453B0(v15, v16);
        }
      }

      return;
    case 3u:
      sub_1C9A06BC8();
      v13 = 805306368;
      goto LABEL_13;
    case 4u:
      sub_1C9A06BC8();
      v13 = 0x40000000;
LABEL_13:
      if (v12 == v13 && (v10 != *v11 || v4 != v11[1]))
      {

        sub_1C9A93B18();
      }

      return;
    case 5u:
      sub_1C9A06BC8();
      return;
    case 6u:
      sub_1C9A06BC8();
      if (v27 == 1610612736)
      {
        v28 = *v26;

        sub_1C9808C60(v25, v28);
      }

      return;
    case 7u:
      sub_1C9A06BC8();
      if (v20 == 1879048192)
      {
        sub_1C9808CEC(v18, *v19);
      }

      return;
    case 8u:
      if (v9)
      {
        v29 = 0;
      }

      else
      {
        v29 = v7 == 0x80000000;
      }

      if (v29 && (v5 | v4 | v3 | v6 | v8) == 0)
      {
        sub_1C9A067DC();
        if (!v14)
        {
          return;
        }
      }

      else
      {
        v31 = v5 | v4 | v6 | v8;
        if (!v9 && ((sub_1C9A06CF0(), v14) ? (v32 = v3 == 1) : (v32 = 0), v32 ? (v33 = v31 == 0) : (v33 = 0), v33))
        {
          sub_1C9A067DC();
          if (!v14)
          {
            return;
          }
        }

        else if (!v9 && ((sub_1C9A06CF0(), v14) ? (v34 = v3 == 2) : (v34 = 0), v34 ? (v35 = v31 == 0) : (v35 = 0), v35))
        {
          sub_1C9A067DC();
          if (!v14)
          {
            return;
          }
        }

        else if (v9 || ((sub_1C9A06CF0(), v14) ? (v36 = v3 == 3) : (v36 = 0), !v36 || v31))
        {
          if (v9 || ((sub_1C9A06CF0(), v14) ? (v37 = v3 == 4) : (v37 = 0), !v37 || v31))
          {
            if (v9 || (v7 == 0x80000000 ? (v38 = v3 == 5) : (v38 = 0), !v38 || v31))
            {
              sub_1C9A067DC();
              if (!v14)
              {
                return;
              }
            }

            else
            {
              sub_1C9A067DC();
              if (!v14)
              {
                return;
              }
            }
          }

          else
          {
            sub_1C9A067DC();
            if (!v14)
            {
              return;
            }
          }
        }

        else
        {
          sub_1C9A067DC();
          if (!v14)
          {
            return;
          }
        }
      }

      sub_1C9A067C8();
      return;
    default:
      if ((a2[3] & 0xF0000000) == 0)
      {
        sub_1C99F4D74();
      }

      return;
  }
}

uint64_t sub_1C99F8FF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B6E616265 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C9ADE410 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C9ADB3D0 == a2;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C9ADE430 == a2;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C9ADE450 == a2;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000001C9ADE470 == a2;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7379654B70616DLL && a2 == 0xE700000000000000;
              if (v11 || (sub_1C9A93B18() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65646F4D74723565 && a2 == 0xE90000000000006CLL;
                if (v12 || (sub_1C9A93B18() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x654B7463656C6573 && a2 == 0xE900000000000079;
                  if (v13 || (sub_1C9A93B18() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x654B6E6769737361 && a2 == 0xE900000000000079;
                    if (v14 || (sub_1C9A93B18() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6563696C73 && a2 == 0xE500000000000000;
                      if (v15 || (sub_1C9A93B18() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E657474616C66 && a2 == 0xE700000000000000;
                        if (v16 || (sub_1C9A93B18() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x667542656772656DLL && a2 == 0xEC00000073726566;
                          if (v17 || (sub_1C9A93B18() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000011 && 0x80000001C9ADE490 == a2;
                            if (v18 || (sub_1C9A93B18() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD00000000000001ALL && 0x80000001C9ADE4B0 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1C9A93B18();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C99F946C(char a1)
{
  result = 0x6B6E616265;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0x7379654B70616DLL;
      break;
    case 7:
      result = 0x65646F4D74723565;
      break;
    case 8:
      v3 = 0x7463656C6573;
      goto LABEL_17;
    case 9:
      v3 = 0x6E6769737361;
LABEL_17:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x654B000000000000;
      break;
    case 10:
      result = 0x6563696C73;
      break;
    case 11:
      result = 0x6E657474616C66;
      break;
    case 12:
      result = 0x667542656772656DLL;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C99F9614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v125 = sub_1C97A2CEC(&qword_1EC3D1948);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AC02C();
  v124 = v29;
  v123 = sub_1C97A2CEC(&qword_1EC3D1950);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  v122 = v31;
  v32 = sub_1C97A2CEC(&qword_1EC3D1958);
  sub_1C97ABF78(v32, &v121);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  sub_1C97ABFB4(v34);
  v35 = sub_1C97A2CEC(&qword_1EC3D1960);
  sub_1C97ABF78(v35, &v119);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97AC02C();
  sub_1C97ABFB4(v37);
  v121 = sub_1C97A2CEC(&qword_1EC3D1968);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C97AC02C();
  v120 = v39;
  v119 = sub_1C97A2CEC(&qword_1EC3D1970);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C97AC02C();
  v118 = v41;
  v117 = sub_1C97A2CEC(&qword_1EC3D1978);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C97AC02C();
  v116 = v43;
  v115 = sub_1C97A2CEC(&qword_1EC3D1980);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C97AC02C();
  sub_1C97ABFB4(v45);
  v46 = sub_1C97A2CEC(&qword_1EC3D1988);
  sub_1C97ABF78(v46, &a16);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C97AC02C();
  sub_1C97ABFB4(v48);
  v49 = sub_1C97A2CEC(&qword_1EC3D1990);
  sub_1C97ABF78(v49, &v124);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C97AC02C();
  sub_1C97ABFB4(v51);
  v52 = sub_1C97A2CEC(&qword_1EC3D1998);
  sub_1C97ABF78(v52, v127);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C97AC02C();
  sub_1C97ABFB4(v54);
  v55 = sub_1C97A2CEC(&qword_1EC3D19A0);
  sub_1C97ABF78(v55, &v128);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C97AC02C();
  sub_1C97ABFB4(v57);
  v58 = sub_1C97A2CEC(&qword_1EC3D19A8);
  sub_1C97ABF78(v58, &a13);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C98550DC();
  v60 = sub_1C97A2CEC(&qword_1EC3D19B0);
  sub_1C97ABF78(v60, v132);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C97AC02C();
  sub_1C97ABFB4(v62);
  v63 = sub_1C97A2CEC(&qword_1EC3D19B8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C97AEA4C();
  v127[1] = sub_1C97A2CEC(&qword_1EC3D19C0);
  sub_1C97AE9C8();
  v126 = v65;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C97E86E4();
  sub_1C98CA9DC(v27);
  sub_1C9A02768();
  v127[0] = v22;
  sub_1C9A93DD8();
  v68 = *v25;
  v67 = v25[1];
  v70 = v25[2];
  v69 = v25[3];
  v71 = v25[4];
  v72 = v25[5];
  v73 = *(v25 + 12);
  switch(v69 >> 28)
  {
    case 1u:
      sub_1C9A06ABC(6);
      sub_1C9A02CFC();
      v80 = v112;
      sub_1C9A06760();
      v128 = v73;
      sub_1C9A03434();
      v63 = v113;
      sub_1C9A06A10();
      goto LABEL_10;
    case 2u:
      v81 = v67;
      sub_1C9A06ABC(7);
      sub_1C9A02C54();
      sub_1C9A93988();
      v128 = v73;
      v129 = v81;
      v130 = v70;
      LOBYTE(v131) = v69;
      sub_1C9A033E0();
      v63 = v115;
      sub_1C9A93A18();
      sub_1C97DAA58();
      v83 = v114;
      goto LABEL_11;
    case 3u:
      v84 = v67;
      sub_1C9A06ABC(8);
      sub_1C9A02BAC();
      v80 = v116;
      sub_1C9A06760();
      v128 = v73;
      v129 = v84;
      sub_1C9A0338C();
      v63 = v117;
      sub_1C9A06A10();
      goto LABEL_10;
    case 4u:
      v79 = v67;
      sub_1C9A06ABC(9);
      sub_1C9A02B04();
      v80 = v118;
      sub_1C9A06760();
      v128 = v73;
      v129 = v79;
      sub_1C9A03338();
      v63 = v119;
      sub_1C9A06A10();
      goto LABEL_10;
    case 5u:
      v86 = v67;
      sub_1C9A06ABC(10);
      sub_1C9A02A5C();
      v80 = v120;
      sub_1C9A06760();
      v128 = v73;
      v129 = v86;
      sub_1C9A032E4();
      v63 = v121;
      sub_1C9A06A10();
      goto LABEL_10;
    case 6u:
      sub_1C9A06ABC(13);
      sub_1C9A02864();
      v80 = v122;
      sub_1C9A06760();
      v128 = v73;
      sub_1C9A031E8();
      v63 = v123;
      sub_1C9A06A10();
      goto LABEL_10;
    case 7u:
      v85 = v67;
      sub_1C9A06ABC(14);
      sub_1C9A027BC();
      v80 = v124;
      sub_1C9A06760();
      v128 = v73;
      v129 = v85;
      sub_1C9A03194();
      v63 = v125;
      sub_1C9A06A10();
      goto LABEL_10;
    case 8u:
      if (v73 || (sub_1C9A06B94(), !v93) || v87 | v88 | v71 | v72)
      {
        if (v73 || ((sub_1C9A06B94(), v93) ? (v93 = v92 == 1) : (v93 = 0), !v93 || v91))
        {
          if (v73 || ((sub_1C9A06B94(), v93) ? (v96 = v95 == 2) : (v96 = 0), !v96 || v94))
          {
            if (v73 || ((sub_1C9A06B94(), v93) ? (v99 = v98 == 3) : (v99 = 0), !v99 || v97))
            {
              if (v73 || ((sub_1C9A06B94(), v93) ? (v102 = v101 == 4) : (v102 = 0), !v102 || v100))
              {
                if (v73 || ((sub_1C9A06B94(), v93) ? (v105 = v104 == 5) : (v105 = 0), !v105 || v103))
                {
                  LOBYTE(v128) = 12;
                  sub_1C9A0290C();
                  v80 = v107;
                  sub_1C9A06760();
                  sub_1C9A0323C();
                  sub_1C9A06880();
                }

                else
                {
                  LOBYTE(v128) = 11;
                  sub_1C9A029B4();
                  v80 = v106;
                  sub_1C9A06760();
                  sub_1C9A03290();
                  sub_1C9A06880();
                }
              }

              else
              {
                LOBYTE(v128) = 5;
                sub_1C9A02DA4();
                v80 = v108;
                sub_1C9A06760();
                sub_1C9A03488();
                sub_1C9A06880();
              }
            }

            else
            {
              LOBYTE(v128) = 4;
              sub_1C9A02E4C();
              v80 = v109;
              sub_1C9A06760();
              sub_1C9A034DC();
              sub_1C9A06880();
            }
          }

          else
          {
            LOBYTE(v128) = 3;
            sub_1C9A02EF4();
            v80 = v110;
            sub_1C9A06760();
            sub_1C9A03530();
            sub_1C9A06880();
          }
        }

        else
        {
          LOBYTE(v128) = 1;
          sub_1C9A03044();
          v80 = v111;
          sub_1C9A06760();
          sub_1C9A035D8();
          sub_1C9A06880();
        }

LABEL_10:
        sub_1C97DAA58();
        v83 = v80;
LABEL_11:
        v82(v83, v63);
        v77 = sub_1C9871794();
LABEL_12:
        v78(v77);
      }

      else
      {
        LOBYTE(v128) = 0;
        sub_1C9A030EC();
        v89 = v127[0];
        sub_1C9A93988();
        sub_1C9A0362C();
        sub_1C9A93A18();
        sub_1C97DAA58();
        v90(v21, v63);
        (*(v126 + 8))(v89);
      }

      sub_1C97AEB5C();
      return;
    default:
      v124 = v67;
      v125 = v69 & 0xFFFFFFFF0FFFFFFFLL;
      LOBYTE(v128) = 2;
      v74 = v68;
      sub_1C9A02F9C();
      sub_1C9A93988();
      v128 = v74;
      v129 = v124;
      v130 = v70;
      v131 = v125;
      v132[0] = v71;
      v132[1] = v72;
      v133 = v73;
      sub_1C9A03584();
      sub_1C9A93A18();
      sub_1C97DAA58();
      v75 = sub_1C9871794();
      v76(v75);
      v77 = sub_1C97A7890();
      goto LABEL_12;
  }
}

void sub_1C99FA3FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = *(v0 + 12);
  switch(v3 >> 28)
  {
    case 1u:
      MEMORY[0x1CCA91980](6);
      sub_1C98B7720();
      sub_1C9A06AF8();

      sub_1C984AA08(v9, v10);
      return;
    case 2u:
      MEMORY[0x1CCA91980](7);
      sub_1C98B7720();
      sub_1C9A92528();
      v6 = sub_1C9871794();
      sub_1C984AA08(v6, v7);
      sub_1C9A93CE8();
      break;
    case 3u:
      v5 = 8;
      goto LABEL_6;
    case 4u:
      v5 = 9;
LABEL_6:
      MEMORY[0x1CCA91980](v5);
      sub_1C98B7720();
      sub_1C9A06AF8();

      sub_1C9A92528();
      return;
    case 5u:
      MEMORY[0x1CCA91980](10);
      MEMORY[0x1CCA91980](v1);
      goto LABEL_14;
    case 6u:
      MEMORY[0x1CCA91980](13);
      sub_1C98B7720();
      sub_1C9A06AF8();

      sub_1C97C7EF4();
      return;
    case 7u:
      MEMORY[0x1CCA91980](14);
      sub_1C98B7720();
      sub_1C97C7F50();
LABEL_14:
      v12 = v2;
      goto LABEL_36;
    case 8u:
      if (v4)
      {
        v14 = 0;
      }

      else
      {
        v14 = v3 == 0x80000000;
      }

      if (v14 && (v0[2] | v2 | v1 | v0[4] | v0[5]) == 0)
      {
        v12 = 0;
      }

      else if (!v4 && ((sub_1C9A06C30(), v14) ? (v17 = v1 == 1) : (v17 = 0), v17 ? (v18 = v16 == 0) : (v18 = 0), v18))
      {
        v12 = 1;
      }

      else if (!v4 && ((sub_1C9A06C30(), v14) ? (v20 = v1 == 2) : (v20 = 0), v20 ? (v21 = v19 == 0) : (v21 = 0), v21))
      {
        v12 = 3;
      }

      else if (v4 || ((sub_1C9A06C30(), v14) ? (v23 = v1 == 3) : (v23 = 0), !v23 || v22))
      {
        if (v4 || ((sub_1C9A06C30(), v14) ? (v25 = v1 == 4) : (v25 = 0), !v25 || v24))
        {
          if (v4 || ((sub_1C9A06C30(), v14) ? (v27 = v1 == 5) : (v27 = 0), !v27 || v26))
          {
            v12 = 12;
          }

          else
          {
            v12 = 11;
          }
        }

        else
        {
          v12 = 5;
        }
      }

      else
      {
        v12 = 4;
      }

LABEL_36:
      MEMORY[0x1CCA91980](v12);
      break;
    default:
      MEMORY[0x1CCA91980](2);
      sub_1C99F4EE8();
      break;
  }

  sub_1C9A06AF8();
}

uint64_t sub_1C99FA740()
{
  sub_1C97BE32C();
  sub_1C99FA3FC();
  return sub_1C9A93D18();
}

void sub_1C99FA778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  a19 = v24;
  a20 = v25;
  a10 = v21;
  v27 = v26;
  v179 = v28;
  v29 = sub_1C97A2CEC(&qword_1EC3D17D0);
  sub_1C97ABF78(v29, &a17);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  v178 = v31;
  v32 = sub_1C97A2CEC(&qword_1EC3D17D8);
  sub_1C97ABF78(v32, &a15);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  v177 = v34;
  v35 = sub_1C97A2CEC(&qword_1EC3D17E0);
  sub_1C97ABF78(v35, &a13);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97AC02C();
  v176 = v37;
  v38 = sub_1C97A2CEC(&qword_1EC3D17E8);
  sub_1C97ABF78(v38, &a11);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C97AC02C();
  v175 = v40;
  v41 = sub_1C97A2CEC(&qword_1EC3D17F0);
  sub_1C97ABF78(v41, &a9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C97AC02C();
  v174 = v43;
  v44 = sub_1C97A2CEC(&qword_1EC3D17F8);
  sub_1C97ABF78(v44, &v188);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C97AC02C();
  v182 = v46;
  v47 = sub_1C97A2CEC(&qword_1EC3D1800);
  sub_1C97ABF78(v47, v187);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C97AC02C();
  v181 = v49;
  v50 = sub_1C97A2CEC(&qword_1EC3D1808);
  sub_1C97ABF78(v50, &v186);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C97AC02C();
  v180 = v52;
  v53 = sub_1C97A2CEC(&qword_1EC3D1810);
  sub_1C97ABF78(v53, &v184);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C97AC02C();
  v173 = v55;
  v56 = sub_1C97A2CEC(&qword_1EC3D1818);
  sub_1C97ABF78(v56, &v182);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C97AC02C();
  v172 = v58;
  v59 = sub_1C97A2CEC(&qword_1EC3D1820);
  sub_1C97ABF78(v59, &v180);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C97AC02C();
  v171 = v61;
  v62 = sub_1C97A2CEC(&qword_1EC3D1828);
  sub_1C97ABF78(v62, &v178);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C97AC02C();
  v170 = v64;
  v65 = sub_1C97A2CEC(&qword_1EC3D1830);
  sub_1C97ABF78(v65, &v176);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C97AC02C();
  sub_1C97ABFB4(v67);
  v68 = sub_1C97A2CEC(&qword_1EC3D1838);
  sub_1C97ABF78(v68, &v174);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C97AEA4C();
  v70 = sub_1C97A2CEC(&qword_1EC3D1840);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C9945F4C();
  v72 = sub_1C97A2CEC(&qword_1EC3D1848);
  sub_1C97AE9C8();
  v74 = v73;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C97E86E4();
  v183 = v27;
  sub_1C98CA9DC(v27);
  sub_1C9A02768();
  v76 = a10;
  sub_1C9A93DB8();
  if (v76)
  {
    goto LABEL_9;
  }

  v160 = v20;
  v159 = v70;
  v161 = v22;
  v78 = v180;
  v77 = v181;
  v79 = v182;
  a10 = v74;
  v80 = v23;
  v81 = sub_1C9A93958();
  sub_1C98EE524(v81, 0);
  if (v83 == v84 >> 1)
  {
LABEL_8:
    v94 = sub_1C9A93648();
    sub_1C97A7A80();
    v96 = v95;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v96 = &unk_1F494C0F0;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v94 - 8) + 104))(v96, *MEMORY[0x1E69E6AF8], v94);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1C9A06BD4();
    v97(v80, v72);
LABEL_9:
    sub_1C97A592C(v183);
LABEL_10:
    sub_1C97AEB5C();
    return;
  }

  if (v83 < (v84 >> 1))
  {
    v85 = v23;
    v158 = *(v82 + v83);
    sub_1C98EE520(v83 + 1);
    v87 = v86;
    v89 = v88;
    swift_unknownObjectRelease();
    if (v87 == v89 >> 1)
    {
      v90 = v23;
      switch(v158)
      {
        case 1:
          LOBYTE(v184) = 1;
          sub_1C9A03044();
          v78 = v161;
          sub_1C9A06784();
          sub_1C9A067F0();
          sub_1C9A03098();
          v91 = v162;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v133 = sub_1C9A06738();
          v134(v133);
          v135 = sub_1C9A067B8();
          v136(v135);
          sub_1C9A06720();
          v132 = 0x80000000;
          v92 = 1;
          break;
        case 2:
          LOBYTE(v184) = 2;
          sub_1C9A02F9C();
          sub_1C9A0684C();
          sub_1C9A02FF0();
          sub_1C9A06D38();
          sub_1C9A068E4();
          v118 = sub_1C991A5DC();
          v119(v118);
          sub_1C9A06BD4();
          v120(v23, v72);
          v92 = v184;
          v91 = v185;
          v77 = v186;
          v89 = v187[1];
          v85 = v187[2];
          v78 = v188;
          v132 = v187[0] & 0xFFFFFFFF00000001;
          v90 = v183;
          break;
        case 3:
          LOBYTE(v184) = 3;
          sub_1C9A02EF4();
          v78 = v170;
          sub_1C9A06784();
          sub_1C9A067F0();
          sub_1C9A02F48();
          v91 = v163;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v121 = sub_1C9A06738();
          v122(v121);
          v123 = sub_1C9A067B8();
          v124(v123);
          sub_1C9A06720();
          v132 = 0x80000000;
          v92 = 2;
          break;
        case 4:
          LOBYTE(v184) = 4;
          sub_1C9A02E4C();
          v78 = v171;
          sub_1C9A06784();
          sub_1C9A067F0();
          sub_1C9A02EA0();
          v91 = v164;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v106 = sub_1C9A06738();
          v107(v106);
          v108 = sub_1C9A067B8();
          v109(v108);
          sub_1C9A06720();
          v132 = 0x80000000;
          v92 = 3;
          break;
        case 5:
          LOBYTE(v184) = 5;
          sub_1C9A02DA4();
          v78 = v172;
          sub_1C9A06784();
          sub_1C9A067F0();
          sub_1C9A02DF8();
          v91 = v165;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v137 = sub_1C9A06738();
          v138(v137);
          v139 = sub_1C9A067B8();
          v140(v139);
          sub_1C9A06720();
          v132 = 0x80000000;
          v92 = 4;
          break;
        case 6:
          LOBYTE(v184) = 6;
          sub_1C9A02CFC();
          v78 = v173;
          sub_1C9A06784();
          sub_1C9A067F0();
          sub_1C9A02D50();
          v91 = v166;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v145 = sub_1C9A06738();
          v146(v145);
          v147 = sub_1C9A067B8();
          v148(v147);
          sub_1C9A06720();
          v92 = v184;
          v132 = 0x10000000;
          break;
        case 7:
          LOBYTE(v184) = 7;
          sub_1C9A02C54();
          sub_1C9A06784();
          sub_1C9A067F0();
          sub_1C9A02CA8();
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v125 = sub_1C9A06738();
          v126(v125);
          v127 = sub_1C9A067B8();
          v128(v127);
          v89 = 0;
          v85 = 0;
          v78 = 0;
          v92 = v184;
          v91 = v185;
          v77 = v186;
          v132 = LOBYTE(v187[0]) | 0x20000000;
          break;
        case 8:
          LOBYTE(v184) = 8;
          sub_1C9A02BAC();
          v78 = v77;
          sub_1C9A0684C();
          sub_1C9A067F0();
          sub_1C9A02C00();
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v153 = sub_1C9A06738();
          v154(v153);
          v155 = sub_1C9A067B8();
          v156(v155);
          sub_1C9A0674C();
          v92 = v184;
          v91 = v185;
          v132 = 805306368;
          break;
        case 9:
          LOBYTE(v184) = 9;
          sub_1C9A02B04();
          v78 = v79;
          sub_1C9A0684C();
          sub_1C9A067F0();
          sub_1C9A02B58();
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v114 = sub_1C9A06738();
          v115(v114);
          v116 = sub_1C9A067B8();
          v117(v116);
          sub_1C9A0674C();
          v92 = v184;
          v91 = v185;
          v132 = 0x40000000;
          break;
        case 10:
          LOBYTE(v184) = 10;
          sub_1C9A02A5C();
          v78 = v174;
          sub_1C9A06784();
          sub_1C9A067F0();
          sub_1C9A02AB0();
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v149 = sub_1C9A06738();
          v150(v149);
          v151 = sub_1C9A067B8();
          v152(v151);
          sub_1C9A0674C();
          v92 = v184;
          v91 = v185;
          v132 = 1342177280;
          break;
        case 11:
          LOBYTE(v184) = 11;
          sub_1C9A029B4();
          v78 = v175;
          sub_1C9A06784();
          sub_1C9A067F0();
          sub_1C9A02A08();
          v91 = v167;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v102 = sub_1C9A06738();
          v103(v102);
          v104 = sub_1C9A067B8();
          v105(v104);
          sub_1C9A06720();
          v132 = 0x80000000;
          v92 = 5;
          break;
        case 12:
          LOBYTE(v184) = 12;
          sub_1C9A0290C();
          v78 = v176;
          sub_1C9A06784();
          sub_1C9A067F0();
          sub_1C9A02960();
          v91 = v168;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v110 = sub_1C9A06738();
          v111(v110);
          v112 = sub_1C9A067B8();
          v113(v112);
          sub_1C9A06720();
          v132 = 0x80000000;
          v92 = 6;
          break;
        case 13:
          LOBYTE(v184) = 13;
          sub_1C9A02864();
          v78 = v177;
          sub_1C9A06784();
          sub_1C9A067F0();
          sub_1C9A028B8();
          v91 = v169;
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v141 = sub_1C9A06738();
          v142(v141);
          v143 = sub_1C9A067B8();
          v144(v143);
          sub_1C9A06720();
          v92 = v184;
          v132 = 1610612736;
          break;
        case 14:
          LOBYTE(v184) = 14;
          sub_1C9A027BC();
          v78 = v178;
          sub_1C9A06784();
          sub_1C9A067F0();
          sub_1C9A02810();
          sub_1C9A067A8();
          sub_1C9A938F8();
          sub_1C9A06968();
          sub_1C9A068E4();
          v98 = sub_1C9A06738();
          v99(v98);
          v100 = sub_1C9A067B8();
          v101(v100);
          sub_1C9A0674C();
          v92 = v184;
          v91 = v185;
          v132 = 1879048192;
          break;
        default:
          LOBYTE(v184) = 0;
          sub_1C9A030EC();
          v91 = v160;
          sub_1C9A0684C();
          sub_1C9A067F0();
          sub_1C9A03140();
          v77 = v159;
          sub_1C9A06D38();
          v92 = 0;
          v93 = a10;
          sub_1C9A068E4();
          v129 = sub_1C991A5DC();
          v130(v129);
          v131 = *(v93 + 8);
          v89 = v93 + 8;
          v131(v23, v72);
          sub_1C9A06720();
          v132 = 0x80000000;
          break;
      }

      sub_1C97A592C(v90);
      v157 = v179;
      *v179 = v92;
      v157[1] = v91;
      v157[2] = v77;
      v157[3] = v132;
      v157[4] = v89;
      v157[5] = v85;
      *(v157 + 12) = v78;
      goto LABEL_10;
    }

    v80 = v23;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C99FBB5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736567617473 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C99FBBE4()
{
  sub_1C9A06D98();
  sub_1C9A06C20();
  sub_1C97A2CEC(&qword_1EC3D17B8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C98550DC();
  sub_1C98CA9DC(v0);
  sub_1C9A025FC();
  sub_1C9A06B14();
  sub_1C97A2CEC(&qword_1EC3D17A0);
  sub_1C9A026A4(&unk_1EC3D17C0);
  sub_1C9A06974();
  v2 = sub_1C9A06A84();
  v3(v2);
  sub_1C9A06DAC();
}

uint64_t sub_1C99FBD10()
{
  v1 = sub_1C9A06B54();
  v9 = sub_1C9A06C48(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  v0(v9);
  return sub_1C9A93D18();
}

void sub_1C99FBD4C()
{
  sub_1C9A06D98();
  sub_1C9A06C3C();
  sub_1C97A2CEC(&qword_1EC3D1790);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97FB2C8();
  sub_1C9A068C0();
  sub_1C9A025FC();
  sub_1C98CA998();
  if (!v1)
  {
    sub_1C97A2CEC(&qword_1EC3D17A0);
    sub_1C9A026A4(&unk_1EC3D17A8);
    sub_1C9A06900();
    v3 = sub_1C9A0686C();
    v4(v3);
  }

  sub_1C97A592C(v0);
  sub_1C9A06C00();
  sub_1C9A06DAC();
}

double sub_1C99FBE88@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C99F6FDC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1C99FBF14(uint64_t a1)
{
  v2 = sub_1C9A05638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FBF50(uint64_t a1)
{
  v2 = sub_1C9A05638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FBFD0(uint64_t a1)
{
  v2 = sub_1C9A055E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC00C(uint64_t a1)
{
  v2 = sub_1C9A055E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FC08C(uint64_t a1)
{
  v2 = sub_1C9A05590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC0C8(uint64_t a1)
{
  v2 = sub_1C9A05590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FC14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99F744C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C99FC178(uint64_t a1)
{
  v2 = sub_1C9A05378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC1B4(uint64_t a1)
{
  v2 = sub_1C9A05378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99FC1F0(void *a1@<X8>)
{
  sub_1C99F75E8();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C99FC2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99F777C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99FC2DC(uint64_t a1)
{
  v2 = sub_1C9A05324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC318(uint64_t a1)
{
  v2 = sub_1C9A05324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99FC354(uint64_t a1@<X8>)
{
  sub_1C99F7B44();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6 & 1;
  }
}

uint64_t sub_1C99FC3D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C9A93CC8();
  sub_1C99F7A90(v5, v1, v2, v3);
  return sub_1C9A93D18();
}

uint64_t sub_1C99FC458(uint64_t a1)
{
  v2 = sub_1C9A052D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC494(uint64_t a1)
{
  v2 = sub_1C9A052D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FC55C(uint64_t a1)
{
  v2 = sub_1C9A0527C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC598(uint64_t a1)
{
  v2 = sub_1C9A0527C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99FC618(void *a1@<X8>)
{
  sub_1C99F7F58();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_1C99FC6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99F8094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99FC6CC(uint64_t a1)
{
  v2 = sub_1C9A05228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC708(uint64_t a1)
{
  v2 = sub_1C9A05228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99FC744(void *a1@<X8>)
{
  sub_1C99F8334();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_1C99FC7B0(uint64_t a1)
{
  v2 = sub_1C9A05484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC7EC(uint64_t a1)
{
  v2 = sub_1C9A05484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FC870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99F855C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C99FC89C(uint64_t a1)
{
  v2 = sub_1C9A051D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FC8D8(uint64_t a1)
{
  v2 = sub_1C9A051D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99FC914(void *a1@<X8>)
{
  sub_1C99F8774();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C99FC9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99F88A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C99FC9E8(uint64_t a1)
{
  v2 = sub_1C9A0512C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCA24(uint64_t a1)
{
  v2 = sub_1C9A0512C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99FCA60(void *a1@<X8>)
{
  sub_1C99F8AA8();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_1C99FCAB0(uint64_t a1)
{
  v2 = sub_1C9A02B04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCAEC(uint64_t a1)
{
  v2 = sub_1C9A02B04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99F8FF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99FCB58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C99F9464();
  *a1 = result;
  return result;
}

uint64_t sub_1C99FCB80(uint64_t a1)
{
  v2 = sub_1C9A02768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCBBC(uint64_t a1)
{
  v2 = sub_1C9A02768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCBF8(uint64_t a1)
{
  v2 = sub_1C9A02C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCC34(uint64_t a1)
{
  v2 = sub_1C9A02C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCC70(uint64_t a1)
{
  v2 = sub_1C9A030EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCCAC(uint64_t a1)
{
  v2 = sub_1C9A030EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCCE8(uint64_t a1)
{
  v2 = sub_1C9A029B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCD24(uint64_t a1)
{
  v2 = sub_1C9A029B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCD60(uint64_t a1)
{
  v2 = sub_1C9A02E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCD9C(uint64_t a1)
{
  v2 = sub_1C9A02E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCDD8(uint64_t a1)
{
  v2 = sub_1C9A02EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCE14(uint64_t a1)
{
  v2 = sub_1C9A02EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCE50(uint64_t a1)
{
  v2 = sub_1C9A03044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCE8C(uint64_t a1)
{
  v2 = sub_1C9A03044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCEC8(uint64_t a1)
{
  v2 = sub_1C9A02DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCF04(uint64_t a1)
{
  v2 = sub_1C9A02DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCF40(uint64_t a1)
{
  v2 = sub_1C9A02864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCF7C(uint64_t a1)
{
  v2 = sub_1C9A02864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FCFB8(uint64_t a1)
{
  v2 = sub_1C9A02F9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FCFF4(uint64_t a1)
{
  v2 = sub_1C9A02F9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FD030(uint64_t a1)
{
  v2 = sub_1C9A02CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FD06C(uint64_t a1)
{
  v2 = sub_1C9A02CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FD0A8(uint64_t a1)
{
  v2 = sub_1C9A0290C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FD0E4(uint64_t a1)
{
  v2 = sub_1C9A0290C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FD120(uint64_t a1)
{
  v2 = sub_1C9A02BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FD15C(uint64_t a1)
{
  v2 = sub_1C9A02BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FD198(uint64_t a1)
{
  v2 = sub_1C9A02A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FD1D4(uint64_t a1)
{
  v2 = sub_1C9A02A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99FD210(uint64_t a1)
{
  v2 = sub_1C9A027BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FD24C(uint64_t a1)
{
  v2 = sub_1C9A027BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C99FD288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1C99FA778(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, v15, v16, v18, v19, v21, v22, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v14;
    *(a9 + 16) = v17;
    result = *&v20;
    *(a9 + 32) = v20;
    *(a9 + 48) = v23;
  }

  return result;
}

uint64_t sub_1C99FD310(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1C9A93CC8();
  a4(v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C99FD35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99FBB5C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C99FD388(uint64_t a1)
{
  v2 = sub_1C9A025FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99FD3C4(uint64_t a1)
{
  v2 = sub_1C9A025FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C99FD400(void *a1@<X8>)
{
  sub_1C99FBD4C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C99FD498(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_1C9A93CC8();
  v13 = sub_1C9A06C48(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_1C9A93D18();
}

uint64_t sub_1C99FD504(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C99FD550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a3;
  v8[6] = a4;
  return sub_1C99F437C(a2, sub_1C9A01ED8, v8, a1);
}

void sub_1C99FD5A0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  sub_1C99FD5D8(a2, *a1, a3, a4, a5, a6, a7);
  if (!v8)
  {
    *a8 = v10;
  }
}

void sub_1C99FD5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 25);
  v16 = v15 | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  switch((v15 >> 20) & 0xF)
  {
    case 1uLL:
      sub_1C99FEAF0();
      break;
    case 2uLL:
      sub_1C99FED5C(v11, v12, v13, v14 & 1, a2, a3, a4, a5, a6, a7, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, vars0);
      break;
    case 3uLL:
      sub_1C99FF4B4();
      break;
    case 4uLL:
      sub_1C99FF6F4();
      break;
    case 5uLL:
      sub_1C99FF910();
      break;
    case 6uLL:
      sub_1C99FFF9C();
      break;
    case 7uLL:
      sub_1C9A00214();
      break;
    case 8uLL:
      v20 = v14 | (v16 << 8);
      v21 = v13 | v12;
      if (!v19 && (v20 == 0x80000000 ? (v22 = (v21 | v11 | v17 | v18) == 0) : (v22 = 0), v22))
      {
        sub_1C99FD7F4();
      }

      else
      {
        v23 = v21 | v17 | v18;
        if (!v19 && ((sub_1C9A06D14(), v22) ? (v24 = v11 == 1) : (v24 = 0), v24 ? (v25 = v23 == 0) : (v25 = 0), v25))
        {
          sub_1C99FDB44();
        }

        else if (!v19 && ((sub_1C9A06D14(), v22) ? (v26 = v11 == 2) : (v26 = 0), v26 ? (v27 = v23 == 0) : (v27 = 0), v27))
        {
          sub_1C99FE3BC();
        }

        else if (!v19 && ((sub_1C9A06D14(), v22) ? (v28 = v11 == 3) : (v28 = 0), v28 ? (v29 = v23 == 0) : (v29 = 0), v29))
        {
          sub_1C99FE5E8();
        }

        else if (!v19 && ((sub_1C9A06D14(), v22) ? (v30 = v11 == 4) : (v30 = 0), v30 ? (v31 = v23 == 0) : (v31 = 0), v31))
        {
          sub_1C99FE824();
        }

        else if (!v19 && (v20 == 0x80000000 ? (v32 = v11 == 5) : (v32 = 0), v32 ? (v33 = v23 == 0) : (v33 = 0), v33))
        {
          sub_1C99FDD80();
        }

        else
        {
          sub_1C99FFB50();
        }
      }

      break;
    default:
      sub_1C99FDFE4();
      break;
  }
}

void sub_1C99FD7F4()
{
  sub_1C97BE460();
  v1 = sub_1C97A2CEC(&qword_1EC3D15D8);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97FB2C8();
  sub_1C97A2CEC(&qword_1EC3D15E0);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C98550DC();
  v23 = sub_1C97A2CEC(&qword_1EC3D15E8);
  sub_1C97AE9C8();
  v22 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  v21 = v6;
  v7 = sub_1C9971264();
  sub_1C97A2CEC(v7);
  sub_1C97A2CEC(&qword_1EC3D15F0);
  sub_1C97DA9B0();
  sub_1C9A0227C(v8);
  sub_1C9A0695C();
  sub_1C9A06A98();
  sub_1C9A92048();
  v9 = (v0 + *(v1 + 52));
  *v9 = sub_1C991B428;
  v9[1] = 0;
  v10 = (v0 + *(v1 + 56));
  *v10 = sub_1C9A02044;
  v10[1] = 0;
  sub_1C97AA878();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C9A066E4;
  *(v11 + 24) = 0;
  v12 = sub_1C98B7774();
  sub_1C97A2CEC(v12);
  sub_1C99113F4();
  sub_1C9A0227C(v13);
  sub_1C9A06800();
  sub_1C9A0227C(v14);
  sub_1C9A06CC4();
  sub_1C9A92078();

  v15 = sub_1C97FB300();
  sub_1C993973C(v15, v16);
  sub_1C99113DC();
  sub_1C9A0227C(v17);
  sub_1C9A069B4();
  sub_1C9A91F68();
  v18 = sub_1C98B7720();
  sub_1C993973C(v18, v19);
  sub_1C97E8518();
  sub_1C9A0227C(v20);
  sub_1C9A91F28();
  (*(v22 + 8))(v21, v23);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FDB44()
{
  sub_1C97BE460();
  v13 = sub_1C97A2CEC(&unk_1EC3CE340);
  sub_1C97AE9C8();
  v2 = v1;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3D1618);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C9A0681C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C9A0694C();
  sub_1C9A06DC0();
  sub_1C97A2CEC(&qword_1EC3C9AA0);
  sub_1C97DA9B0();
  sub_1C9A0227C(v8);
  sub_1C9A06838();
  sub_1C9A92048();
  sub_1C9A06D20();
  sub_1C9A06AA4();
  sub_1C9A91CA8();
  (*(v2 + 8))(v0, v13);
  sub_1C9A06D20();
  sub_1C9A069CC();
  sub_1C9A91CA8();
  v9 = *(v5 + 8);
  v10 = sub_1C98BBB68();
  v9(v10);
  sub_1C99710C8();
  sub_1C9A0227C(v11);
  sub_1C9A06C78();
  v12 = sub_1C9971360();
  v9(v12);
  sub_1C9A06CE4();
  sub_1C97BE478();
}

void sub_1C99FDD80()
{
  sub_1C97BE460();
  sub_1C97A2CEC(&qword_1EC3D1630);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3D1638);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97FB2C8();
  v3 = sub_1C9A06BBC();
  sub_1C97A2CEC(v3);
  sub_1C97A2CEC(&unk_1EC3C8690);
  sub_1C97DA9B0();
  sub_1C9A0227C(v4);
  sub_1C9A06838();
  sub_1C9A92048();
  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C9A00D60;
  *(v5 + 24) = 0;
  sub_1C9A06DC0();
  sub_1C99710C8();
  sub_1C9A0227C(v6);
  sub_1C9A06800();
  sub_1C9A0227C(v7);
  sub_1C9A92078();

  v8 = sub_1C9A06A50();
  v9(v8);
  sub_1C99113DC();
  sub_1C9A0227C(v10);
  sub_1C9A91F28();
  sub_1C993973C(v0, &qword_1EC3D1638);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FDFE4()
{
  sub_1C97BE460();
  v2 = v1;
  v3 = sub_1C97A2CEC(&qword_1EC3D1670);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97FB2C8();
  sub_1C97A2CEC(&qword_1EC3D1678);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98550DC();
  v6 = sub_1C97A2CEC(&qword_1EC3D1680);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AC02C();
  v29 = v8;
  v9 = sub_1C9A06BBC();
  sub_1C97A2CEC(v9);
  v10 = sub_1C97A2CEC(&qword_1EC3C9AA0);
  sub_1C97DA9B0();
  sub_1C9A0227C(v11);
  sub_1C9A0695C();
  sub_1C9A06A98();
  sub_1C9A92048();
  v12 = *(v2 + 32);
  v13 = *(v2 + 36);
  if (__CFADD__(v13, v12))
  {
    __break(1u);
  }

  else
  {
    v28 = v6;
    v14 = *(v2 + 28);
    v15 = sub_1C97A2CEC(&qword_1EC3D1688);
    *(v0 + v15[15]) = (v13 + v12);
    *(v0 + v15[16]) = v14;
    *(v0 + v15[17]) = v10;
    v16 = swift_allocObject();
    *(v16 + 16) = *v2;
    *(v16 + 28) = *(v2 + 12);
    *(v16 + 44) = v14;
    *(v16 + 48) = v12;
    *(v16 + 52) = v13;
    *(v16 + 56) = *(v2 + 40);
    *(v16 + 64) = *(v2 + 48);
    v17 = (v0 + *(v3 + 52));
    *v17 = sub_1C97AE3B8;
    v17[1] = v16;
    v18 = (v0 + *(v3 + 56));
    *v18 = sub_1C9A020F4;
    v18[1] = 0;
    sub_1C97AA878();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1C9A066E4;
    *(v19 + 24) = 0;
    v20 = sub_1C98B7774();
    sub_1C97A2CEC(v20);
    sub_1C99113F4();
    sub_1C9A0227C(v21);
    sub_1C9A06800();
    sub_1C9A0227C(v22);
    sub_1C9A06CC4();
    sub_1C9A92078();

    sub_1C993973C(v0, &qword_1EC3D1670);
    sub_1C99113DC();
    sub_1C9A0227C(v23);
    sub_1C9A069B4();
    sub_1C9A91F68();
    v24 = sub_1C98B7720();
    sub_1C993973C(v24, v25);
    sub_1C97E8518();
    sub_1C9A0227C(v26);
    sub_1C9A91F28();
    sub_1C9A06CB8();
    v27(v29, v28);
    sub_1C9A069C0();
    sub_1C97BE478();
  }
}

void sub_1C99FE3BC()
{
  sub_1C97BE460();
  sub_1C97A2CEC(&qword_1EC3D16A8);
  sub_1C97AE9C8();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C9A0681C();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C9A0694C();
  sub_1C97A2CEC(&qword_1EC3D1618);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C98021C4();
  sub_1C9A06DC0();
  sub_1C97A2CEC(&qword_1EC3D16B0);
  sub_1C97DA9B0();
  sub_1C9A0227C(v5);
  sub_1C9A0695C();
  sub_1C9A06AA4();
  sub_1C9A92048();
  sub_1C9A069CC();
  sub_1C9A91CA8();
  v6 = *(v1 + 8);
  v7 = sub_1C98BBB68();
  v6(v7);
  sub_1C9A068A4();
  sub_1C9A91CA8();
  v8 = sub_1C9971360();
  v6(v8);
  sub_1C99710C8();
  sub_1C9A0227C(v9);
  sub_1C9A06B34();
  v10 = sub_1C9A06A50();
  v11(v10);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FE5E8()
{
  sub_1C97BE460();
  v13 = sub_1C97A2CEC(&qword_1EC3D16A8);
  sub_1C97AE9C8();
  v2 = v1;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3D1618);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C9A0681C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C9A0694C();
  sub_1C9A06DC0();
  sub_1C97A2CEC(&qword_1EC3D16B0);
  sub_1C97DA9B0();
  sub_1C9A0227C(v8);
  sub_1C9A06838();
  sub_1C9A92048();
  sub_1C9A06D20();
  sub_1C9A06AA4();
  sub_1C9A91CA8();
  (*(v2 + 8))(v0, v13);
  sub_1C9A06D20();
  sub_1C9A069CC();
  sub_1C9A91CA8();
  v9 = *(v5 + 8);
  v10 = sub_1C98BBB68();
  v9(v10);
  sub_1C99710C8();
  sub_1C9A0227C(v11);
  sub_1C9A06C78();
  v12 = sub_1C9971360();
  v9(v12);
  sub_1C9A06CE4();
  sub_1C97BE478();
}

void sub_1C99FE824()
{
  sub_1C97BE460();
  v15 = sub_1C97A2CEC(&unk_1EC3CE340);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3D16C0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97E86E4();
  v14 = sub_1C97A2CEC(&qword_1EC3D1618);
  sub_1C97AE9C8();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97FB2D8();
  v9 = sub_1C9A06BBC();
  sub_1C97A2CEC(v9);
  sub_1C97A2CEC(&qword_1EC3C9AA0);
  sub_1C97DA9B0();
  sub_1C9A0227C(v10);
  sub_1C9A06838();
  sub_1C9A92048();
  sub_1C97A2CEC(&qword_1EC3C8290);
  sub_1C9A06AA4();
  sub_1C9A91CA8();
  (*(v3 + 8))(v0, v15);
  sub_1C9A069B4();
  sub_1C9A06C94();
  sub_1C9A91CA8();
  v11 = sub_1C98BBB68();
  v12(v11);
  sub_1C99710C8();
  sub_1C9A0227C(v13);
  sub_1C9A91F28();
  (*(v7 + 8))(v1, v14);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FEAF0()
{
  sub_1C97BE460();
  v14 = v1;
  v2 = sub_1C97A2CEC(&qword_1EC3CE380);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C9A06BA0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C9A0694C();
  sub_1C97A2CEC(&qword_1EC3D1618);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C98021C4();
  sub_1C97A2CEC(&unk_1EC3CC2B0);
  sub_1C97A2CEC(&qword_1EC3C6330);
  sub_1C97DA9B0();
  sub_1C9A0227C(v8);
  sub_1C9A0695C();
  sub_1C9A06C94();
  sub_1C9A92048();
  sub_1C97F07FC();
  *(swift_allocObject() + 16) = v14;

  sub_1C9A91C98();

  v9 = *(v4 + 8);
  v9(v0, v2);
  sub_1C9A068A4();
  sub_1C9A91CA8();
  v10 = sub_1C9971360();
  (v9)(v10);
  sub_1C99710C8();
  sub_1C9A0227C(v11);
  sub_1C9A06B34();
  v12 = sub_1C9A06A50();
  v13(v12);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FED5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1C97AEB94();
  v70 = v24;
  v60 = sub_1C97A2CEC(&qword_1EC3CE380);
  sub_1C97AE9C8();
  v58 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C9945F6C();
  v61 = sub_1C97A2CEC(&qword_1EC3CE388);
  sub_1C97AE9C8();
  v59 = v27;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97E86E4();
  v64 = sub_1C97A2CEC(&qword_1EC3CE390);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C97AC02C();
  v63 = v30;
  sub_1C97A2CEC(&qword_1EC3CE398);
  sub_1C97AE9C8();
  v66 = v32;
  v67 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  v62 = v34;
  sub_1C97A2CEC(&unk_1EC3CE3A0);
  sub_1C97AE9C8();
  v68 = v36;
  v69 = v35;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C97AC02C();
  v65 = v38;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C9945F4C();
  swift_getAssociatedConformanceWitness();
  v41 = sub_1C97FB300();
  v42(v41);
  sub_1C987EBFC();
  v71 = v44;
  if (!v21)
  {
    v72 = v43;
    sub_1C97A2CEC(&unk_1EC3CC2B0);
    sub_1C97A2CEC(&qword_1EC3C6330);
    sub_1C97DA9B0();
    sub_1C9A0227C(v46);
    sub_1C9A06CAC();
    sub_1C9A92048();
    sub_1C97A2CEC(&unk_1EC3CE3B0);
    sub_1C9A06AA4();
    sub_1C9A91C98();
    (*(v58 + 8))(v23, v60);
    sub_1C97A2CEC(qword_1EC3C9850);
    sub_1C9A06CAC();
    sub_1C9A91C98();
    (*(v59 + 8))(v22, v61);
    sub_1C97AA878();
    v47 = swift_allocObject();
    *(v47 + 16) = v71;
    *(v47 + 24) = v72;
    sub_1C97F07FC();
    v48 = swift_allocObject();
    *(v48 + 16) = v70;
    sub_1C97AA878();
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1C9875D04;
    *(v49 + 24) = v48;
    sub_1C97AA878();
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1C9875D20;
    *(v50 + 24) = v49;
    sub_1C97AA878();
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1C9875CE8;
    *(v51 + 24) = v47;
    v52 = swift_allocObject();
    v52[2] = sub_1C9A01F34;
    v52[3] = 0;
    v52[4] = sub_1C9A021A4;
    v52[5] = v51;
    v52[6] = sub_1C9A0215C;
    v52[7] = v50;
    v53 = swift_allocObject();
    *(v53 + 2) = v71;
    *(v53 + 3) = v72;
    *(v53 + 4) = v70;
    v54 = (v63 + *(v64 + 52));
    *v54 = sub_1C9875D98;
    v54[1] = v53;
    v55 = (v63 + *(v64 + 56));
    *v55 = sub_1C9875D74;
    v55[1] = v52;
    sub_1C99113F4();
    sub_1C9A0227C(v56);
    swift_retain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    sub_1C9A06AA4();
    sub_1C9A91F68();
    sub_1C993973C(v63, &qword_1EC3CE390);
    sub_1C9A069B4();
    sub_1C9A06A98();
    sub_1C9A91C48();
    (*(v66 + 8))(v62, v67);
    sub_1C97E8518();
    sub_1C9A0227C(v57);
    sub_1C9A91F28();

    (*(v68 + 8))(v65, v69);
  }

  sub_1C9A06CB8();
  v45(a21, AssociatedTypeWitness);
  sub_1C9971578();
  sub_1C97AEB5C();
}

void sub_1C99FF4B4()
{
  sub_1C97BE460();
  v14 = v1;
  v15 = v2;
  sub_1C97A2CEC(&qword_1EC3CE380);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97FB2C8();
  v4 = sub_1C97A2CEC(&qword_1EC3D1618);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C98021C4();
  v8 = sub_1C9A06BBC();
  sub_1C97A2CEC(v8);
  sub_1C97A2CEC(&qword_1EC3C6330);
  sub_1C97DA9B0();
  sub_1C9A0227C(v9);
  sub_1C9A0695C();
  sub_1C9A06A98();
  sub_1C9A92048();
  sub_1C97AA878();
  v10 = swift_allocObject();
  *(v10 + 16) = v14;
  *(v10 + 24) = v15;

  sub_1C9A069B4();
  sub_1C9A91C98();

  v11 = sub_1C9971360();
  v12(v11);
  sub_1C99710C8();
  sub_1C9A0227C(v13);
  sub_1C9A91F28();
  (*(v6 + 8))(v0, v4);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FF6F4()
{
  sub_1C97BE460();
  v1 = v0;
  v3 = v2;
  sub_1C97A2CEC(&qword_1EC3D16D8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97FB2C8();
  sub_1C97A2CEC(&qword_1EC3D16E0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C98021C4();
  sub_1C97AA878();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;

  v7 = sub_1C98B7774();
  sub_1C97A2CEC(v7);
  sub_1C97A2CEC(&qword_1EC3C6330);
  sub_1C97DA9B0();
  sub_1C9A0227C(v8);
  sub_1C9A0695C();
  sub_1C9A91F68();

  sub_1C9A068A4();
  sub_1C9A91C48();
  v9 = sub_1C9971360();
  v10(v9);
  sub_1C97E8518();
  sub_1C9A0227C(v11);
  sub_1C9A06B34();
  v12 = sub_1C9A06A50();
  v13(v12);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FF910()
{
  sub_1C97BE460();
  v14 = v2;
  v4 = v3;
  v5 = sub_1C97A2CEC(&qword_1EC3D16F0);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97FB2D8();
  v7 = sub_1C97A2CEC(&qword_1EC3D16F8);
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97E86E4();
  sub_1C97A2CEC(&unk_1EC3CC2B0);
  v11 = sub_1C97A2CEC(&unk_1EC3C8690);
  sub_1C97DA9B0();
  sub_1C9A0227C(v12);
  sub_1C9A0695C();
  sub_1C9A06C94();
  sub_1C9A91F68();
  *(v1 + v5[15]) = v4;
  *(v1 + v5[16]) = v14;
  *(v1 + v5[17]) = v11;
  sub_1C9A0227C(&unk_1EC3D1700);
  sub_1C9A069B4();
  sub_1C9A06AA4();
  sub_1C9A91F68();
  sub_1C993973C(v1, &qword_1EC3D16F0);
  sub_1C97E8518();
  sub_1C9A0227C(v13);
  sub_1C9A91F28();
  (*(v9 + 8))(v0, v7);
  sub_1C9A069C0();
  sub_1C97BE478();
}

void sub_1C99FFB50()
{
  sub_1C97BE460();
  sub_1C97A2CEC(&qword_1EC3D1630);
  sub_1C97AE9C8();
  v27 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C98021C4();
  v21 = sub_1C97A2CEC(&qword_1EC3D1710);
  sub_1C97AE9C8();
  v8 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97E86E4();
  v23 = sub_1C97A2CEC(&qword_1EC3D1718);
  sub_1C97AE9C8();
  v26 = v10;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C9945F6C();
  v22 = sub_1C97A2CEC(&unk_1EC3CD650);
  sub_1C97AE9C8();
  v25 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97FB2D8();
  v20 = sub_1C97A2CEC(&qword_1EC3D1618);
  sub_1C97AE9C8();
  v24 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C9945F4C();
  v16 = sub_1C9971264();
  sub_1C97A2CEC(v16);
  sub_1C97A2CEC(&unk_1EC3C8690);
  sub_1C97DA9B0();
  sub_1C9A0227C(v17);
  sub_1C9A06838();
  sub_1C9A92048();
  sub_1C97A2CEC(&qword_1EC3D1720);
  sub_1C9A06AA4();
  sub_1C9A91C98();
  sub_1C9A06CB8();
  v18(v1, v27);
  sub_1C9A06CAC();
  sub_1C9A91CA8();
  (*(v8 + 8))(v2, v21);
  sub_1C97A2CEC(&qword_1EC3CD680);
  sub_1C9A06C94();
  sub_1C9A91CA8();
  (*(v26 + 8))(v4, v23);
  sub_1C9A069B4();
  sub_1C9A91CA8();
  (*(v25 + 8))(v3, v22);
  sub_1C99710C8();
  sub_1C9A0227C(v19);
  sub_1C9A91F28();
  (*(v24 + 8))(v0, v20);
  sub_1C9A06CE4();
  sub_1C97BE478();
}

void sub_1C99FFF9C()
{
  sub_1C97BE460();
  v15 = v1;
  v16 = sub_1C97A2CEC(&qword_1EC3D16C0);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3D1618);
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C9A0681C();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C9A0694C();
  v9 = sub_1C9A06BBC();
  sub_1C97A2CEC(v9);
  sub_1C97A2CEC(&qword_1EC3C8290);
  sub_1C97DA9B0();
  sub_1C9A0227C(v10);
  sub_1C9A06838();
  sub_1C9A92048();
  sub_1C97F07FC();
  *(swift_allocObject() + 16) = v15;

  sub_1C9A91C98();

  (*(v3 + 8))(v0, v16);
  sub_1C9A069CC();
  sub_1C9A91CA8();
  v11 = *(v6 + 8);
  v12 = sub_1C98BBB68();
  v11(v12);
  sub_1C99710C8();
  sub_1C9A0227C(v13);
  sub_1C9A06C78();
  v14 = sub_1C9971360();
  v11(v14);
  sub_1C9A06CE4();
  sub_1C97BE478();
}

void sub_1C9A00214()
{
  sub_1C97BE460();
  v20 = v3;
  v17 = v4;
  v16 = sub_1C97A2CEC(&qword_1EC3D1728);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C98550DC();
  v19 = sub_1C97A2CEC(&qword_1EC3D1730);
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97FB2D8();
  v18 = sub_1C97A2CEC(&qword_1EC3D1738);
  sub_1C97AE9C8();
  v12 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C9945F6C();
  sub_1C97A2CEC(&unk_1EC3CC2B0);
  sub_1C97A2CEC(&qword_1EC3C82B8);
  sub_1C97DA9B0();
  sub_1C9A0227C(v14);
  sub_1C9A0695C();
  sub_1C9A92048();
  sub_1C9A01CE0(v17, v20);
  (*(v6 + 8))(v0, v16);
  sub_1C9A0227C(&unk_1EC3D1740);
  sub_1C9A069B4();
  sub_1C9A06CAC();
  sub_1C9A91F68();
  (*(v9 + 8))(v1, v19);
  sub_1C97E8518();
  sub_1C9A0227C(v15);
  sub_1C9A91F28();
  (*(v12 + 8))(v2, v18);
  sub_1C9A069C0();
  sub_1C97BE478();
}

uint64_t sub_1C9A00500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C97BD360(a1, v8);
  sub_1C97A2CEC(&qword_1EC3D15F0);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v6;
    *a2 = v5;
    *(a2 + 16) = v4;
    *(a2 + 32) = v7;
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    sub_1C993973C(&v5, &unk_1EC3D1610);
    sub_1C98066EC();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C9A005D0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*result + 16);
  if (v3 >> 61)
  {
    __break(1u);
  }

  else
  {
    result = sub_1C98FBA38(*result + 32, *result + 32 + 4 * v3);
    a2[3] = MEMORY[0x1E6969080];
    *a2 = result;
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_1C9A00620@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C97BD360(a1, v5);
  sub_1C97A2CEC(&qword_1EC3C9AA0);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v4;
  }

  else
  {
    sub_1C98066EC();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C9A006C4()
{
  v1 = sub_1C97A2CEC(&qword_1EC3C6750);
  sub_1C97AE9C8();
  v3 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEA4C();
  sub_1C97A2CEC(&unk_1EC3CC290);
  sub_1C9A0227C(&qword_1EC3C4A50);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040);
  sub_1C9A91CE8();
  return (*(v3 + 8))(v0, v1);
}

uint64_t sub_1C9A0081C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v8[2] = a2;
  result = sub_1C99F3FF4(v5, sub_1C9A02140, v8);
  if (!v3)
  {
    v7 = sub_1C99F4454(result);

    *a3 = v7;
  }

  return result;
}

_OWORD *sub_1C9A008A0(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  sub_1C97E82EC(a3, &v14, &qword_1EC3CBA60);
  v8 = sub_1C98781BC(v14, *(&v14 + 1), a4);
  v10 = v9;

  if (!v10)
  {
    sub_1C97E82EC(a3, &v12, &qword_1EC3CBA60);
    v10 = *(&v12 + 1);
    v8 = v12;
    sub_1C97A592C(v13);
  }

  sub_1C97A592C(v15);
  *&v14 = v8;
  *(&v14 + 1) = v10;
  sub_1C97E82EC(a3, &v12, &qword_1EC3CBA60);

  sub_1C97A2D34(v13, v15);
  v12 = v14;
  v13[0] = v15[0];
  v13[1] = v15[1];
  *a1 = v14;
  return sub_1C97A2D34(v13, a2);
}

uint64_t sub_1C9A009C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C97BD360(a1, v7);
  v3 = sub_1C97A2CEC(&qword_1EC3C9AA0);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v7[5];
    a2[3] = v3;
    a2[4] = &off_1F4948EB8;
    *a2 = v5;
  }

  else
  {
    sub_1C9A02090();
    swift_allocError();
    *v6 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C9A00AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C97BD360(a1, v7);
  sub_1C97A2CEC(&qword_1EC3D16B0);
  if (swift_dynamicCast())
  {
    return sub_1C979B054(v5, a2);
  }

  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_1C993973C(v5, &unk_1EC3D16B8);
  sub_1C9A02090();
  swift_allocError();
  *v4 = 0;
  return swift_willThrow();
}

uint64_t sub_1C9A00B74(void *a1)
{
  v2 = a1[3];
  v1 = a1[4];
  sub_1C97A5A8C(a1, v2);
  return (*(*(v1 + 8) + 8))(sub_1C9A00BFC, 0, MEMORY[0x1E69E7CA0] + 8, v2);
}

void *sub_1C9A00BFC@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = sub_1C97A2CEC(&qword_1EC3C9AA0);
  if (a1)
  {
    result = sub_1C9A08564(a1, (a2 - a1) / 4);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a3 = result;
  return result;
}

void sub_1C9A00C74(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1C97B7EE8();
    v5 = v9;
    v6 = (v3 + 32);
    v7 = *(v9 + 16);
    do
    {
      v8 = *v6;
      v10 = v5;
      if (v7 >= *(v5 + 24) >> 1)
      {
        sub_1C97B7EE8();
        v5 = v10;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + 8 * v7 + 32) = v8;
      ++v6;
      ++v7;
      --v4;
    }

    while (v4);
  }

  *a2 = v5;
}

uint64_t sub_1C9A00D60(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3D1660);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = *a1;
  sub_1C97A2CEC(&unk_1EC3C8690);
  sub_1C9A0227C(&unk_1EC3D1668);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040);
  sub_1C9A91CE8();
  return (*(v3 + 8))(v5, v2);
}

void sub_1C9A00ED0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  sub_1C97A2CEC(&qword_1EC3D16D0);
  v3 = sub_1C9A937E8();
  v4 = 0;
  sub_1C984ACA4();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v30 = v10 + 64;
  if ((v6 & v5) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_8:
      v15 = v11 | (v4 << 6);
      v16 = (*(v2 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      sub_1C97BD360(*(v2 + 56) + 32 * v15, v29);
      sub_1C97BD360(v29, v27);

      sub_1C97A2CEC(&qword_1EC3D16B0);
      if (!swift_dynamicCast())
      {
        break;
      }

      sub_1C97A592C(v29);
      sub_1C979B054(v25, v28);
      *(v30 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (v3[6] + 16 * v15);
      *v19 = v17;
      v19[1] = v18;
      sub_1C979B054(v28, v3[7] + 40 * v15);
      v20 = v3[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_15;
      }

      v3[2] = v22;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1C993973C(v25, &unk_1EC3D16B8);
    sub_1C9A02090();
    sub_1C97A7A80();
    *v23 = 0;
    swift_willThrow();
    sub_1C97A592C(v29);
  }

  else
  {
LABEL_3:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        *a2 = v3;
        return;
      }

      ++v12;
      if (*(v2 + 64 + 8 * v4))
      {
        sub_1C984ACD8();
        v7 = v14 & v13;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_1C9A010F4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v4 = *a1;
  sub_1C97A2CEC(&qword_1EC3CD228);
  v5 = 0;
  v29 = v4 + 64;
  v31 = sub_1C9A937E8();
  v32 = v4;
  sub_1C984ACA4();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v30 = v6 + 8;
  if (v9)
  {
    while (1)
    {
      v39 = v3;
      v12 = __clz(__rbit64(v9));
      v33 = (v9 - 1) & v9;
LABEL_8:
      v16 = v12 | (v5 << 6);
      v17 = (*(v32 + 48) + 16 * v16);
      v18 = v17[1];
      v34 = *v17;
      sub_1C97D9AF8(*(v32 + 56) + 40 * v16, v36);
      v19 = v37;
      v20 = v38;
      sub_1C97A5A8C(v36, v37);
      v21 = *(v20 + 8);
      v22 = *(v21 + 8);

      v23 = v39;
      v22(&v35, sub_1C9A066C4, 0, MEMORY[0x1E6969080], v19, v21);
      v3 = v23;
      sub_1C97A592C(v36);
      v6 = v31;
      *(v30 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v24 = (v31[6] + 16 * v16);
      *v24 = v34;
      v24[1] = v18;
      *(v31[7] + 16 * v16) = v35;
      v25 = v31[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v31[2] = v27;
      v9 = v33;
      if (!v33)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v11)
      {
        *a2 = v6;
        return;
      }

      ++v13;
      if (*(v29 + 8 * v5))
      {
        v39 = v3;
        sub_1C984ACD8();
        v33 = v15 & v14;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C9A012EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  sub_1C97A2CEC(&qword_1EC3CA090);
  result = sub_1C9A937E8();
  v4 = result;
  v5 = 0;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = result + 64;
  v11 = MEMORY[0x1E6969080];
  if (v8)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v16 = v12 | (v5 << 6);
      v17 = (*(v2 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v2 + 56) + 16 * v16);
      v28 = v11;
      v26 = v20;
      v27 = v20;
      *(v10 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v21 = (v4[6] + 16 * v16);
      *v21 = v18;
      v21[1] = v19;
      result = sub_1C97A2D34(&v27, (v4[7] + 32 * v16));
      v22 = v4[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v4[2] = v24;

      result = sub_1C97CE3DC(v26, *(&v26 + 1));
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        *a2 = v4;
        return result;
      }

      ++v13;
      if (*(v2 + 64 + 8 * v5))
      {
        sub_1C984ACD8();
        v8 = v15 & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C9A01488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1C97A2CEC(&qword_1EC3C69E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9A9EDD0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  sub_1C97BD360(a1, inited + 48);

  result = sub_1C9A92348();
  *a4 = result;
  return result;
}

uint64_t sub_1C9A0154C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = sub_1C993AF6C(a1, a2);
  a3[3] = sub_1C97A2CEC(v5);
  *a3 = v4;
}

uint64_t sub_1C9A01594@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = *(*result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v10 = a2;
    v16 = MEMORY[0x1E69E7CC0];
    result = sub_1C97B8400(0, v3, 0);
    v5 = 0;
    v4 = v16;
    v6 = v2 + 32;
    while (v5 < *(v2 + 16))
    {
      sub_1C97BD360(v6, v14);
      sub_1C97BD360(v14, v13);
      sub_1C97A2CEC(&qword_1EC3CD680);
      if (!swift_dynamicCast())
      {
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        sub_1C993973C(v11, &unk_1EC3CD690);
        sub_1C9A02090();
        swift_allocError();
        *v9 = 0;
        swift_willThrow();
        sub_1C97A592C(v14);
      }

      sub_1C97A592C(v14);
      sub_1C979B054(v11, v15);
      v16 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1C97B8400(v7 > 1, v8 + 1, 1);
        v4 = v16;
      }

      ++v5;
      *(v4 + 16) = v8 + 1;
      result = sub_1C979B054(v15, v4 + 40 * v8 + 32);
      v6 += 32;
      if (v3 == v5)
      {
        a2 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1C9A01760@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v2 + 32;
    v8 = 0xC000000000000000;
    v20 = *(*result + 16);
    v21 = *result;
    while (2)
    {
      if (v4 < *(v2 + 16))
      {
        sub_1C97D9AF8(v7, v29);
        v23 = v4 + 1;
        v9 = v30;
        v10 = v31;
        sub_1C97A5A8C(v29, v30);
        v11 = MEMORY[0x1E6969080];
        (*(v10 + 8))(&v25, sub_1C9A066C4, 0, MEMORY[0x1E6969080], v9, v10);
        v12 = v25;
        v13 = v26;
        v27 = v5;
        v28 = v8;
        v24[3] = v11;
        v24[4] = MEMORY[0x1E6969078];
        v24[0] = v25;
        v24[1] = v26;
        v14 = sub_1C97A5A8C(v24, v11);
        v15 = *v14;
        switch(v14[1] >> 62)
        {
          case 1uLL:
            if (v15 >> 32 < v15)
            {
              goto LABEL_20;
            }

            v22 = v6;
            v18 = v15;
            sub_1C97CE3DC(v5, v8);
            sub_1C97CE3DC(v12, v13);
            if (!sub_1C9A91308() || !__OFSUB__(v18, sub_1C9A91338()))
            {
              goto LABEL_14;
            }

            goto LABEL_23;
          case 2uLL:
            v22 = v6;
            v16 = *(v15 + 16);
            v17 = *(v15 + 24);
            sub_1C97CE3DC(v5, v8);
            sub_1C97CE3DC(v12, v13);
            if (sub_1C9A91308() && __OFSUB__(v16, sub_1C9A91338()))
            {
              goto LABEL_22;
            }

            if (__OFSUB__(v17, v16))
            {
              goto LABEL_21;
            }

LABEL_14:
            sub_1C9A91328();
            sub_1C9A915C8();
            sub_1C97A5978(v12, v13);
            sub_1C97A5978(v5, v8);
            v3 = v20;
            v2 = v21;
            v6 = v22;
LABEL_15:
            sub_1C97A592C(v24);
            result = sub_1C97A592C(v29);
            v5 = v27;
            v8 = v28;
            v7 += 40;
            ++v4;
            if (v3 == v23)
            {
              goto LABEL_18;
            }

            continue;
          default:
            sub_1C9A915C8();
            goto LABEL_15;
        }
      }

      break;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v5 = 0;
  v8 = 0xC000000000000000;
LABEL_18:
  *a2 = v5;
  a2[1] = v8;
  return result;
}

uint64_t sub_1C9A01A90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  a2[3] = MEMORY[0x1E6969080];
  a2[4] = &off_1F4948F20;
  *a2 = v3;
  a2[1] = v2;
  return sub_1C97CE3DC(v3, v2);
}

uint64_t sub_1C9A01AB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = sub_1C97A5A8C(a1, v3);
  a2[3] = v3;
  v5 = sub_1C981CDF0(a2);
  v6 = *(*(v3 - 8) + 16);

  return v6(v5, v4, v3);
}

uint64_t sub_1C9A01B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*a1 + 16) == *(a2 + 16))
  {

    v4 = sub_1C992C2F8();
    result = sub_1C97A2CEC(&qword_1EC3C82B8);
    a3[3] = result;
    *a3 = v4;
  }

  else
  {
    sub_1C9A02090();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C9A01C3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C97BD360(a1, v7);
  v3 = sub_1C9871794();
  sub_1C97A2CEC(v3);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v6;
  }

  else
  {
    sub_1C9A02090();
    sub_1C97A7A80();
    *v5 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C9A01CE0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C97A2CEC(&qword_1EC3D1750);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1C97A2CEC(&qword_1EC3D1728);
  (*(*(v10 - 8) + 16))(v7, v2, v10);
  v11 = &v7[*(v5 + 52)];
  *v11 = sub_1C9A02260;
  *(v11 + 1) = v9;
  v12 = &v7[*(v5 + 56)];
  *v12 = sub_1C9A02244;
  *(v12 + 1) = v8;
  sub_1C9A0227C(&unk_1EC3D1758);
  swift_bridgeObjectRetain_n();
  sub_1C9A91F38();
  return sub_1C993973C(v7, &qword_1EC3D1750);
}

uint64_t sub_1C9A01EC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  a2[3] = MEMORY[0x1E69E6158];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1C9A01EFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C99F5D58(*a1, a1[1], a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1C9A01F34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C99F59C8(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C9A01F68(uint64_t *a1, void *a2, void *a3, uint64_t (*a4)(void))
{
  result = a4(*a3);
  if (!v4)
  {
    *a2 = v8;
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C9A01FB0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1C9A01FE8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t *)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, uint64_t *)@<X4>, uint64_t a6@<X5>, void (*a7)(void **, uint64_t *, uint64_t *)@<X6>, void *a8@<X8>)
{
  result = sub_1C99F58E0(*a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    *a8 = result;
  }

  return result;
}

uint64_t sub_1C9A02044@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C99F51B0(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1C9A02090()
{
  result = qword_1EC3D1628;
  if (!qword_1EC3D1628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1628);
  }

  return result;
}

unsigned int *sub_1C9A020F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned int **a3@<X8>)
{
  result = sub_1C97E37B8(*a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C9A0215C(uint64_t *a1, void *a2, void *a3)
{
  result = (*(v3 + 16))(*a3);
  if (!v4)
  {
    *a2 = v8;
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C9A021A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C9A02200@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C986802C(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C9A0227C(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    v4 = sub_1C993AF6C(0, v3);
    sub_1C97AA4F0(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9A022DC()
{
  result = qword_1EC3D1768;
  if (!qword_1EC3D1768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1768);
  }

  return result;
}

unint64_t sub_1C9A02330()
{
  result = qword_1EC3D1770;
  if (!qword_1EC3D1770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1770);
  }

  return result;
}

uint64_t sub_1C9A02384(_DWORD *a1)
{
  v1 = a1[6];
  if (v1 >= 0)
  {
    return v1 >> 28;
  }

  else
  {
    return (*a1 + 8);
  }
}

__n128 sub_1C9A023A0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C9A023BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFF7 && *(a1 + 52))
    {
      v2 = *a1 + 2147483639;
    }

    else if ((((*(a1 + 24) >> 28) & 0x8000000F | (16 * ((*(a1 + 24) >> 1) & 0x7FFFFFF))) ^ 0x7FFFFFFF) >= 0x7FFFFFF7)
    {
      v2 = -1;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 28) & 0x8000000F | (16 * ((*(a1 + 24) >> 1) & 0x7FFFFFF))) ^ 0x7FFFFFFF;
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C9A02410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 2147483640;
    if (a3 > 0x7FFFFFF7)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF7)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * ((-a2 >> 4) & 0x7FFFFFF) - (a2 << 28);
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
    }
  }

  return result;
}

uint64_t sub_1C9A02498(uint64_t result, unsigned int a2)
{
  if (a2 < 8)
  {
    *(result + 24) = *(result + 24) & 0xFFFFFFFF00000001 | (a2 << 28);
  }

  else
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0x80000000;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
  }

  return result;
}

unint64_t sub_1C9A024F8()
{
  result = qword_1EC3D1778;
  if (!qword_1EC3D1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1778);
  }

  return result;
}

unint64_t sub_1C9A02550()
{
  result = qword_1EC3D1780;
  if (!qword_1EC3D1780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1780);
  }

  return result;
}

unint64_t sub_1C9A025A8()
{
  result = qword_1EC3D1788;
  if (!qword_1EC3D1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1788);
  }

  return result;
}

unint64_t sub_1C9A025FC()
{
  result = qword_1EC3D1798;
  if (!qword_1EC3D1798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1798);
  }

  return result;
}

unint64_t sub_1C9A02650()
{
  result = qword_1EC3D17B0;
  if (!qword_1EC3D17B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D17B0);
  }

  return result;
}

unint64_t sub_1C9A026A4(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C9A06D2C();
    sub_1C97AA4F0(&qword_1EC3D17A0);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9A02714()
{
  result = qword_1EC3D17C8;
  if (!qword_1EC3D17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D17C8);
  }

  return result;
}

unint64_t sub_1C9A02768()
{
  result = qword_1EC3D1850;
  if (!qword_1EC3D1850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1850);
  }

  return result;
}

unint64_t sub_1C9A027BC()
{
  result = qword_1EC3D1858;
  if (!qword_1EC3D1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1858);
  }

  return result;
}

unint64_t sub_1C9A02810()
{
  result = qword_1EC3D1860;
  if (!qword_1EC3D1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1860);
  }

  return result;
}

unint64_t sub_1C9A02864()
{
  result = qword_1EC3D1868;
  if (!qword_1EC3D1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1868);
  }

  return result;
}

unint64_t sub_1C9A028B8()
{
  result = qword_1EC3D1870;
  if (!qword_1EC3D1870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1870);
  }

  return result;
}

unint64_t sub_1C9A0290C()
{
  result = qword_1EC3D1878;
  if (!qword_1EC3D1878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1878);
  }

  return result;
}

unint64_t sub_1C9A02960()
{
  result = qword_1EC3D1880;
  if (!qword_1EC3D1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1880);
  }

  return result;
}

unint64_t sub_1C9A029B4()
{
  result = qword_1EC3D1888;
  if (!qword_1EC3D1888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1888);
  }

  return result;
}

unint64_t sub_1C9A02A08()
{
  result = qword_1EC3D1890;
  if (!qword_1EC3D1890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1890);
  }

  return result;
}

unint64_t sub_1C9A02A5C()
{
  result = qword_1EC3D1898;
  if (!qword_1EC3D1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1898);
  }

  return result;
}

unint64_t sub_1C9A02AB0()
{
  result = qword_1EC3D18A0;
  if (!qword_1EC3D18A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18A0);
  }

  return result;
}

unint64_t sub_1C9A02B04()
{
  result = qword_1EC3D18A8;
  if (!qword_1EC3D18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18A8);
  }

  return result;
}

unint64_t sub_1C9A02B58()
{
  result = qword_1EC3D18B0;
  if (!qword_1EC3D18B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18B0);
  }

  return result;
}

unint64_t sub_1C9A02BAC()
{
  result = qword_1EC3D18B8;
  if (!qword_1EC3D18B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18B8);
  }

  return result;
}

unint64_t sub_1C9A02C00()
{
  result = qword_1EC3D18C0;
  if (!qword_1EC3D18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18C0);
  }

  return result;
}

unint64_t sub_1C9A02C54()
{
  result = qword_1EC3D18C8;
  if (!qword_1EC3D18C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18C8);
  }

  return result;
}

unint64_t sub_1C9A02CA8()
{
  result = qword_1EC3D18D0;
  if (!qword_1EC3D18D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18D0);
  }

  return result;
}

unint64_t sub_1C9A02CFC()
{
  result = qword_1EC3D18D8;
  if (!qword_1EC3D18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18D8);
  }

  return result;
}

unint64_t sub_1C9A02D50()
{
  result = qword_1EC3D18E0;
  if (!qword_1EC3D18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18E0);
  }

  return result;
}

unint64_t sub_1C9A02DA4()
{
  result = qword_1EC3D18E8;
  if (!qword_1EC3D18E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18E8);
  }

  return result;
}

unint64_t sub_1C9A02DF8()
{
  result = qword_1EC3D18F0;
  if (!qword_1EC3D18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18F0);
  }

  return result;
}

unint64_t sub_1C9A02E4C()
{
  result = qword_1EC3D18F8;
  if (!qword_1EC3D18F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D18F8);
  }

  return result;
}

unint64_t sub_1C9A02EA0()
{
  result = qword_1EC3D1900;
  if (!qword_1EC3D1900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1900);
  }

  return result;
}

unint64_t sub_1C9A02EF4()
{
  result = qword_1EC3D1908;
  if (!qword_1EC3D1908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1908);
  }

  return result;
}

unint64_t sub_1C9A02F48()
{
  result = qword_1EC3D1910;
  if (!qword_1EC3D1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1910);
  }

  return result;
}

unint64_t sub_1C9A02F9C()
{
  result = qword_1EC3D1918;
  if (!qword_1EC3D1918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1918);
  }

  return result;
}

unint64_t sub_1C9A02FF0()
{
  result = qword_1EC3D1920;
  if (!qword_1EC3D1920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1920);
  }

  return result;
}

unint64_t sub_1C9A03044()
{
  result = qword_1EC3D1928;
  if (!qword_1EC3D1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1928);
  }

  return result;
}

unint64_t sub_1C9A03098()
{
  result = qword_1EC3D1930;
  if (!qword_1EC3D1930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1930);
  }

  return result;
}

unint64_t sub_1C9A030EC()
{
  result = qword_1EC3D1938;
  if (!qword_1EC3D1938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1938);
  }

  return result;
}

unint64_t sub_1C9A03140()
{
  result = qword_1EC3D1940;
  if (!qword_1EC3D1940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1940);
  }

  return result;
}

unint64_t sub_1C9A03194()
{
  result = qword_1EC3D19C8;
  if (!qword_1EC3D19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D19C8);
  }

  return result;
}

unint64_t sub_1C9A031E8()
{
  result = qword_1EC3D19D0;
  if (!qword_1EC3D19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D19D0);
  }

  return result;
}

unint64_t sub_1C9A0323C()
{
  result = qword_1EC3D19D8;
  if (!qword_1EC3D19D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D19D8);
  }

  return result;
}

unint64_t sub_1C9A03290()
{
  result = qword_1EC3D19E0;
  if (!qword_1EC3D19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D19E0);
  }

  return result;
}

unint64_t sub_1C9A032E4()
{
  result = qword_1EC3D19E8;
  if (!qword_1EC3D19E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D19E8);
  }

  return result;
}

unint64_t sub_1C9A03338()
{
  result = qword_1EC3D19F0;
  if (!qword_1EC3D19F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D19F0);
  }

  return result;
}

unint64_t sub_1C9A0338C()
{
  result = qword_1EC3D19F8;
  if (!qword_1EC3D19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D19F8);
  }

  return result;
}

unint64_t sub_1C9A033E0()
{
  result = qword_1EC3D1A00;
  if (!qword_1EC3D1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A00);
  }

  return result;
}

unint64_t sub_1C9A03434()
{
  result = qword_1EC3D1A08;
  if (!qword_1EC3D1A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A08);
  }

  return result;
}

unint64_t sub_1C9A03488()
{
  result = qword_1EC3D1A10;
  if (!qword_1EC3D1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A10);
  }

  return result;
}

unint64_t sub_1C9A034DC()
{
  result = qword_1EC3D1A18;
  if (!qword_1EC3D1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A18);
  }

  return result;
}

unint64_t sub_1C9A03530()
{
  result = qword_1EC3D1A20;
  if (!qword_1EC3D1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A20);
  }

  return result;
}

unint64_t sub_1C9A03584()
{
  result = qword_1EC3D1A28;
  if (!qword_1EC3D1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A28);
  }

  return result;
}

unint64_t sub_1C9A035D8()
{
  result = qword_1EC3D1A30;
  if (!qword_1EC3D1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A30);
  }

  return result;
}

unint64_t sub_1C9A0362C()
{
  result = qword_1EC3D1A38;
  if (!qword_1EC3D1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A38);
  }

  return result;
}

unint64_t sub_1C9A03680()
{
  result = qword_1EC3D1A48;
  if (!qword_1EC3D1A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SNPipelineModelRecipe.Stage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SNPipelineModelRecipe.Stage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C9A039C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1C9A03A08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C9A03A80()
{
  result = qword_1EC3D1A58;
  if (!qword_1EC3D1A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A58);
  }

  return result;
}

unint64_t sub_1C9A03AD8()
{
  result = qword_1EC3D1A60;
  if (!qword_1EC3D1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A60);
  }

  return result;
}

unint64_t sub_1C9A03B30()
{
  result = qword_1EC3D1A68;
  if (!qword_1EC3D1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A68);
  }

  return result;
}

unint64_t sub_1C9A03B88()
{
  result = qword_1EC3D1A70;
  if (!qword_1EC3D1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A70);
  }

  return result;
}

unint64_t sub_1C9A03BE0()
{
  result = qword_1EC3D1A78;
  if (!qword_1EC3D1A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A78);
  }

  return result;
}

unint64_t sub_1C9A03C38()
{
  result = qword_1EC3D1A80;
  if (!qword_1EC3D1A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A80);
  }

  return result;
}

unint64_t sub_1C9A03C90()
{
  result = qword_1EC3D1A88;
  if (!qword_1EC3D1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A88);
  }

  return result;
}

unint64_t sub_1C9A03CE8()
{
  result = qword_1EC3D1A90;
  if (!qword_1EC3D1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A90);
  }

  return result;
}

unint64_t sub_1C9A03D40()
{
  result = qword_1EC3D1A98;
  if (!qword_1EC3D1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1A98);
  }

  return result;
}

unint64_t sub_1C9A03D98()
{
  result = qword_1EC3D1AA0;
  if (!qword_1EC3D1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AA0);
  }

  return result;
}

unint64_t sub_1C9A03DF0()
{
  result = qword_1EC3D1AA8;
  if (!qword_1EC3D1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AA8);
  }

  return result;
}

unint64_t sub_1C9A03E48()
{
  result = qword_1EC3D1AB0;
  if (!qword_1EC3D1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AB0);
  }

  return result;
}

unint64_t sub_1C9A03EA0()
{
  result = qword_1EC3D1AB8;
  if (!qword_1EC3D1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AB8);
  }

  return result;
}

unint64_t sub_1C9A03EF8()
{
  result = qword_1EC3D1AC0;
  if (!qword_1EC3D1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AC0);
  }

  return result;
}

unint64_t sub_1C9A03F50()
{
  result = qword_1EC3D1AC8;
  if (!qword_1EC3D1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AC8);
  }

  return result;
}

unint64_t sub_1C9A03FA8()
{
  result = qword_1EC3D1AD0;
  if (!qword_1EC3D1AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AD0);
  }

  return result;
}

unint64_t sub_1C9A04000()
{
  result = qword_1EC3D1AD8;
  if (!qword_1EC3D1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AD8);
  }

  return result;
}

unint64_t sub_1C9A04058()
{
  result = qword_1EC3D1AE0;
  if (!qword_1EC3D1AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AE0);
  }

  return result;
}

unint64_t sub_1C9A040B0()
{
  result = qword_1EC3D1AE8;
  if (!qword_1EC3D1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AE8);
  }

  return result;
}

unint64_t sub_1C9A04108()
{
  result = qword_1EC3D1AF0;
  if (!qword_1EC3D1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AF0);
  }

  return result;
}

unint64_t sub_1C9A04160()
{
  result = qword_1EC3D1AF8;
  if (!qword_1EC3D1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1AF8);
  }

  return result;
}

unint64_t sub_1C9A041B8()
{
  result = qword_1EC3D1B00;
  if (!qword_1EC3D1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B00);
  }

  return result;
}

unint64_t sub_1C9A04210()
{
  result = qword_1EC3D1B08;
  if (!qword_1EC3D1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B08);
  }

  return result;
}

unint64_t sub_1C9A04268()
{
  result = qword_1EC3D1B10;
  if (!qword_1EC3D1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B10);
  }

  return result;
}

unint64_t sub_1C9A042C0()
{
  result = qword_1EC3D1B18;
  if (!qword_1EC3D1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B18);
  }

  return result;
}

unint64_t sub_1C9A04318()
{
  result = qword_1EC3D1B20;
  if (!qword_1EC3D1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B20);
  }

  return result;
}

unint64_t sub_1C9A04370()
{
  result = qword_1EC3D1B28;
  if (!qword_1EC3D1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B28);
  }

  return result;
}

unint64_t sub_1C9A043C8()
{
  result = qword_1EC3D1B30;
  if (!qword_1EC3D1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B30);
  }

  return result;
}

unint64_t sub_1C9A04420()
{
  result = qword_1EC3D1B38;
  if (!qword_1EC3D1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B38);
  }

  return result;
}

unint64_t sub_1C9A04478()
{
  result = qword_1EC3D1B40;
  if (!qword_1EC3D1B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B40);
  }

  return result;
}

unint64_t sub_1C9A044D0()
{
  result = qword_1EC3D1B48;
  if (!qword_1EC3D1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B48);
  }

  return result;
}

unint64_t sub_1C9A04528()
{
  result = qword_1EC3D1B50;
  if (!qword_1EC3D1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B50);
  }

  return result;
}

unint64_t sub_1C9A04580()
{
  result = qword_1EC3D1B58;
  if (!qword_1EC3D1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B58);
  }

  return result;
}

unint64_t sub_1C9A045D8()
{
  result = qword_1EC3D1B60;
  if (!qword_1EC3D1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B60);
  }

  return result;
}

unint64_t sub_1C9A04630()
{
  result = qword_1EC3D1B68;
  if (!qword_1EC3D1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B68);
  }

  return result;
}

unint64_t sub_1C9A04688()
{
  result = qword_1EC3D1B70;
  if (!qword_1EC3D1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B70);
  }

  return result;
}

unint64_t sub_1C9A046E0()
{
  result = qword_1EC3D1B78;
  if (!qword_1EC3D1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B78);
  }

  return result;
}

unint64_t sub_1C9A04738()
{
  result = qword_1EC3D1B80;
  if (!qword_1EC3D1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B80);
  }

  return result;
}

unint64_t sub_1C9A04790()
{
  result = qword_1EC3D1B88;
  if (!qword_1EC3D1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B88);
  }

  return result;
}

unint64_t sub_1C9A047E8()
{
  result = qword_1EC3D1B90;
  if (!qword_1EC3D1B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B90);
  }

  return result;
}

unint64_t sub_1C9A04840()
{
  result = qword_1EC3D1B98;
  if (!qword_1EC3D1B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1B98);
  }

  return result;
}

unint64_t sub_1C9A04898()
{
  result = qword_1EC3D1BA0;
  if (!qword_1EC3D1BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BA0);
  }

  return result;
}

unint64_t sub_1C9A048F0()
{
  result = qword_1EC3D1BA8;
  if (!qword_1EC3D1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BA8);
  }

  return result;
}

unint64_t sub_1C9A04948()
{
  result = qword_1EC3D1BB0;
  if (!qword_1EC3D1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BB0);
  }

  return result;
}

unint64_t sub_1C9A049A0()
{
  result = qword_1EC3D1BB8;
  if (!qword_1EC3D1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BB8);
  }

  return result;
}

unint64_t sub_1C9A049F8()
{
  result = qword_1EC3D1BC0;
  if (!qword_1EC3D1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BC0);
  }

  return result;
}

unint64_t sub_1C9A04A50()
{
  result = qword_1EC3D1BC8;
  if (!qword_1EC3D1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BC8);
  }

  return result;
}

unint64_t sub_1C9A04AA8()
{
  result = qword_1EC3D1BD0;
  if (!qword_1EC3D1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BD0);
  }

  return result;
}

unint64_t sub_1C9A04B00()
{
  result = qword_1EC3D1BD8;
  if (!qword_1EC3D1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BD8);
  }

  return result;
}

unint64_t sub_1C9A04B58()
{
  result = qword_1EC3D1BE0;
  if (!qword_1EC3D1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BE0);
  }

  return result;
}

unint64_t sub_1C9A04BB0()
{
  result = qword_1EC3D1BE8;
  if (!qword_1EC3D1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BE8);
  }

  return result;
}

unint64_t sub_1C9A04C08()
{
  result = qword_1EC3D1BF0;
  if (!qword_1EC3D1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BF0);
  }

  return result;
}

unint64_t sub_1C9A04C60()
{
  result = qword_1EC3D1BF8;
  if (!qword_1EC3D1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1BF8);
  }

  return result;
}

unint64_t sub_1C9A04CB8()
{
  result = qword_1EC3D1C00;
  if (!qword_1EC3D1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C00);
  }

  return result;
}

unint64_t sub_1C9A04D10()
{
  result = qword_1EC3D1C08;
  if (!qword_1EC3D1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C08);
  }

  return result;
}

unint64_t sub_1C9A04D68()
{
  result = qword_1EC3D1C10;
  if (!qword_1EC3D1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C10);
  }

  return result;
}

unint64_t sub_1C9A04DC0()
{
  result = qword_1EC3D1C18;
  if (!qword_1EC3D1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C18);
  }

  return result;
}

unint64_t sub_1C9A04E18()
{
  result = qword_1EC3D1C20;
  if (!qword_1EC3D1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C20);
  }

  return result;
}

unint64_t sub_1C9A04E70()
{
  result = qword_1EC3D1C28;
  if (!qword_1EC3D1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C28);
  }

  return result;
}

unint64_t sub_1C9A04EC8()
{
  result = qword_1EC3D1C30;
  if (!qword_1EC3D1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C30);
  }

  return result;
}

unint64_t sub_1C9A04F20()
{
  result = qword_1EC3D1C38;
  if (!qword_1EC3D1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C38);
  }

  return result;
}

unint64_t sub_1C9A04F78()
{
  result = qword_1EC3D1C40;
  if (!qword_1EC3D1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C40);
  }

  return result;
}

unint64_t sub_1C9A04FD0()
{
  result = qword_1EC3D1C48;
  if (!qword_1EC3D1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C48);
  }

  return result;
}

unint64_t sub_1C9A05028()
{
  result = qword_1EC3D1C50;
  if (!qword_1EC3D1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C50);
  }

  return result;
}

unint64_t sub_1C9A05080()
{
  result = qword_1EC3D1C58;
  if (!qword_1EC3D1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C58);
  }

  return result;
}

unint64_t sub_1C9A050D8()
{
  result = qword_1EC3D1C60;
  if (!qword_1EC3D1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C60);
  }

  return result;
}

unint64_t sub_1C9A0512C()
{
  result = qword_1EC3D1C70;
  if (!qword_1EC3D1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C70);
  }

  return result;
}

unint64_t sub_1C9A05180()
{
  result = qword_1EC3D1C78;
  if (!qword_1EC3D1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C78);
  }

  return result;
}

unint64_t sub_1C9A051D4()
{
  result = qword_1EC3D1C88;
  if (!qword_1EC3D1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C88);
  }

  return result;
}

unint64_t sub_1C9A05228()
{
  result = qword_1EC3D1C98;
  if (!qword_1EC3D1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1C98);
  }

  return result;
}

unint64_t sub_1C9A0527C()
{
  result = qword_1EC3D1CA8;
  if (!qword_1EC3D1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1CA8);
  }

  return result;
}

unint64_t sub_1C9A052D0()
{
  result = qword_1EC3D1CB8;
  if (!qword_1EC3D1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1CB8);
  }

  return result;
}

unint64_t sub_1C9A05324()
{
  result = qword_1EC3D1CC8;
  if (!qword_1EC3D1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1CC8);
  }

  return result;
}

unint64_t sub_1C9A05378()
{
  result = qword_1EC3D1CE0;
  if (!qword_1EC3D1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1CE0);
  }

  return result;
}

unint64_t sub_1C9A053CC()
{
  result = qword_1EC3D1CF0;
  if (!qword_1EC3D1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1CF0);
  }

  return result;
}

unint64_t sub_1C9A05420(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C9A06D2C();
    sub_1C97AA4F0(&qword_1EC3C7BF0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9A05484()
{
  result = qword_1EC3D1D08;
  if (!qword_1EC3D1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1D08);
  }

  return result;
}

unint64_t sub_1C9A054D8()
{
  result = qword_1EC3D1D18;
  if (!qword_1EC3D1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1D18);
  }

  return result;
}

unint64_t sub_1C9A0552C(uint64_t a1)
{
  result = sub_1C97BE38C(a1);
  if (!result)
  {
    sub_1C9A06D2C();
    sub_1C97AA4F0(&unk_1EC3C7B20);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C9A05590()
{
  result = qword_1EC3D1D58;
  if (!qword_1EC3D1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1D58);
  }

  return result;
}

unint64_t sub_1C9A055E4()
{
  result = qword_1EC3D1D68;
  if (!qword_1EC3D1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1D68);
  }

  return result;
}

unint64_t sub_1C9A05638()
{
  result = qword_1EC3D1D78;
  if (!qword_1EC3D1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1D78);
  }

  return result;
}

unint64_t sub_1C9A0568C()
{
  result = qword_1EC3D1D88;
  if (!qword_1EC3D1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1D88);
  }

  return result;
}

unint64_t sub_1C9A056E0()
{
  result = qword_1EC3D1D98;
  if (!qword_1EC3D1D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1D98);
  }

  return result;
}

_BYTE *sub_1C9A057B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SNPipelineModelRecipe.Stages.Slice.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C9A0599C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9A05A4C()
{
  result = qword_1EC3D1DA0;
  if (!qword_1EC3D1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1DA0);
  }

  return result;
}

unint64_t sub_1C9A05AA4()
{
  result = qword_1EC3D1DA8;
  if (!qword_1EC3D1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1DA8);
  }

  return result;
}

unint64_t sub_1C9A05AFC()
{
  result = qword_1EC3D1DB0;
  if (!qword_1EC3D1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1DB0);
  }

  return result;
}

unint64_t sub_1C9A05B54()
{
  result = qword_1EC3D1DB8;
  if (!qword_1EC3D1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1DB8);
  }

  return result;
}

unint64_t sub_1C9A05BAC()
{
  result = qword_1EC3D1DC0;
  if (!qword_1EC3D1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1DC0);
  }

  return result;
}

unint64_t sub_1C9A05C04()
{
  result = qword_1EC3D1DC8;
  if (!qword_1EC3D1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1DC8);
  }

  return result;
}

unint64_t sub_1C9A05C5C()
{
  result = qword_1EC3D1DD0;
  if (!qword_1EC3D1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1DD0);
  }

  return result;
}

unint64_t sub_1C9A05CB4()
{
  result = qword_1EC3D1DD8;
  if (!qword_1EC3D1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1DD8);
  }

  return result;
}

unint64_t sub_1C9A05D0C()
{
  result = qword_1EC3D1DE0;
  if (!qword_1EC3D1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1DE0);
  }

  return result;
}

unint64_t sub_1C9A05D64()
{
  result = qword_1EC3D1DE8;
  if (!qword_1EC3D1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1DE8);
  }

  return result;
}

unint64_t sub_1C9A05DBC()
{
  result = qword_1EC3D1DF0;
  if (!qword_1EC3D1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1DF0);
  }

  return result;
}

unint64_t sub_1C9A05E14()
{
  result = qword_1EC3D1DF8;
  if (!qword_1EC3D1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1DF8);
  }

  return result;
}

unint64_t sub_1C9A05E6C()
{
  result = qword_1EC3D1E00;
  if (!qword_1EC3D1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E00);
  }

  return result;
}

unint64_t sub_1C9A05EC4()
{
  result = qword_1EC3D1E08;
  if (!qword_1EC3D1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E08);
  }

  return result;
}

unint64_t sub_1C9A05F1C()
{
  result = qword_1EC3D1E10;
  if (!qword_1EC3D1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E10);
  }

  return result;
}

unint64_t sub_1C9A05F74()
{
  result = qword_1EC3D1E18;
  if (!qword_1EC3D1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E18);
  }

  return result;
}

unint64_t sub_1C9A05FCC()
{
  result = qword_1EC3D1E20;
  if (!qword_1EC3D1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E20);
  }

  return result;
}

unint64_t sub_1C9A06024()
{
  result = qword_1EC3D1E28;
  if (!qword_1EC3D1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E28);
  }

  return result;
}

unint64_t sub_1C9A0607C()
{
  result = qword_1EC3D1E30;
  if (!qword_1EC3D1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E30);
  }

  return result;
}

unint64_t sub_1C9A060D4()
{
  result = qword_1EC3D1E38;
  if (!qword_1EC3D1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E38);
  }

  return result;
}

unint64_t sub_1C9A0612C()
{
  result = qword_1EC3D1E40;
  if (!qword_1EC3D1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E40);
  }

  return result;
}

unint64_t sub_1C9A06184()
{
  result = qword_1EC3D1E48;
  if (!qword_1EC3D1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E48);
  }

  return result;
}

unint64_t sub_1C9A061DC()
{
  result = qword_1EC3D1E50;
  if (!qword_1EC3D1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E50);
  }

  return result;
}

unint64_t sub_1C9A06234()
{
  result = qword_1EC3D1E58;
  if (!qword_1EC3D1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E58);
  }

  return result;
}

unint64_t sub_1C9A0628C()
{
  result = qword_1EC3D1E60;
  if (!qword_1EC3D1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E60);
  }

  return result;
}

unint64_t sub_1C9A062E4()
{
  result = qword_1EC3D1E68;
  if (!qword_1EC3D1E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E68);
  }

  return result;
}

unint64_t sub_1C9A0633C()
{
  result = qword_1EC3D1E70;
  if (!qword_1EC3D1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E70);
  }

  return result;
}

unint64_t sub_1C9A06394()
{
  result = qword_1EC3D1E78;
  if (!qword_1EC3D1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E78);
  }

  return result;
}

unint64_t sub_1C9A063EC()
{
  result = qword_1EC3D1E80;
  if (!qword_1EC3D1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E80);
  }

  return result;
}

unint64_t sub_1C9A06444()
{
  result = qword_1EC3D1E88;
  if (!qword_1EC3D1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E88);
  }

  return result;
}

unint64_t sub_1C9A0649C()
{
  result = qword_1EC3D1E90;
  if (!qword_1EC3D1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E90);
  }

  return result;
}

unint64_t sub_1C9A064F4()
{
  result = qword_1EC3D1E98;
  if (!qword_1EC3D1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1E98);
  }

  return result;
}

unint64_t sub_1C9A0654C()
{
  result = qword_1EC3D1EA0;
  if (!qword_1EC3D1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1EA0);
  }

  return result;
}

unint64_t sub_1C9A065A4()
{
  result = qword_1EC3D1EA8;
  if (!qword_1EC3D1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1EA8);
  }

  return result;
}

unint64_t sub_1C9A065FC()
{
  result = qword_1EC3D1EB0;
  if (!qword_1EC3D1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3D1EB0);
  }

  return result;
}

uint64_t sub_1C9A06760()
{

  return sub_1C9A93988();
}

uint64_t sub_1C9A06784()
{

  return sub_1C9A93858();
}

uint64_t sub_1C9A0684C()
{

  return sub_1C9A93858();
}

uint64_t sub_1C9A06880()
{

  return sub_1C9A93A18();
}

uint64_t sub_1C9A068E4()
{
  *(v1 - 528) = v0;

  return swift_unknownObjectRelease();
}

uint64_t sub_1C9A06900()
{

  return sub_1C9A938F8();
}

void sub_1C9A0692C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1C9A06974()
{

  return sub_1C9A93A18();
}

unint64_t sub_1C9A069DC(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = a1;

  return sub_1C9849140(0xD000000000000019, v3 | 0x8000000000000000, va);
}

uint64_t sub_1C9A06A10()
{

  return sub_1C9A93A18();
}

unint64_t sub_1C9A06A2C(uint64_t a1)
{

  return sub_1C9A0552C(a1);
}

unint64_t sub_1C9A06A60(uint64_t a1)
{

  return sub_1C9A0552C(a1);
}

uint64_t sub_1C9A06AC8(uint64_t a1)
{
  if (a1 >= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = a1;
  }

  v5 = v4 + v1;
  if (v1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1C99CCD20(v1, v6, 52);
}

uint64_t sub_1C9A06B14()
{

  return sub_1C9A93DD8();
}

uint64_t sub_1C9A06B34()
{

  return sub_1C9A91F28();
}

uint64_t sub_1C9A06B54()
{

  return sub_1C9A93CC8();
}

uint64_t sub_1C9A06B74(uint64_t a1, _BYTE *a2)
{
  *a2 = 8;

  return swift_willThrow();
}

unint64_t sub_1C9A06C54(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_1C9849140(0xD000000000000019, v11 | 0x8000000000000000, &a10);
}

uint64_t sub_1C9A06C78()
{

  return sub_1C9A91F28();
}

uint64_t sub_1C9A06D38()
{

  return sub_1C9A938F8();
}

uint64_t sub_1C9A06D58(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t sub_1C9A06D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14)
{

  return sub_1C97C8FE4(a11, a12, a13, a14);
}

uint64_t sub_1C9A06DC0()
{

  return sub_1C97A2CEC(v0);
}

id sub_1C9A06DD8(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C9A91488();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1C9A91558();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1C9A913C8();

    swift_willThrow();
    v11 = sub_1C9A91558();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_1C9A06F40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C989B614();
  v4 = v3;
  v5 = MGGetProductType();
  sub_1C9A06FA0(v5, v2, v4, 1, a1);
}

uint64_t sub_1C9A06FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v59 = a4;
  v9 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v54 - v10;
  v61 = sub_1C9A91558();
  sub_1C97AE9C8();
  v57 = v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v58 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v54 - v16;
  sub_1C97A2CEC(&qword_1EC3C6CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AA3B60;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 40) = 0x80000001C9ADE4F0;
  *(inited + 48) = 0xD00000000000001ALL;
  *(inited + 56) = 0x80000001C9ADE510;
  sub_1C989B2F8(a1, v63);
  if (v63[6])
  {
    v18 = v63[0];
  }

  else
  {
    v18 = 8;
  }

  sub_1C989B454(v18, a2, a3);
  v19 = v61;
  if (v20)
  {
    v28 = sub_1C989B780();
    v30 = v29;
    v55 = a5;

    v31 = 0;
    v32 = (v57 + 32);
    v60 = MEMORY[0x1E69E7CC0];
    while (v31 != 32)
    {
      v33 = *(inited + v31 + 40);
      v62[0] = *(inited + v31 + 32);
      v62[1] = v33;

      sub_1C9A075F8(v62, v28, v30, v59 & 1, v11);

      if (sub_1C97ABF20(v11, 1, v19) == 1)
      {
        sub_1C9927650(v11);
      }

      else
      {
        v34 = v28;
        v35 = inited;
        v36 = v30;
        v37 = *v32;
        v38 = v56;
        (*v32)(v56, v11, v61);
        v37(v58, v38, v61);
        v39 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C97E6C9C();
          v39 = v44;
        }

        v40 = v39;
        v41 = *(v39 + 16);
        v60 = v40;
        if (v41 >= *(v40 + 24) >> 1)
        {
          sub_1C97E6C9C();
          v60 = v45;
        }

        v42 = v60;
        *(v60 + 16) = v41 + 1;
        v43 = v42 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v41;
        v19 = v61;
        v37(v43, v58, v61);
        v30 = v36;
        inited = v35;
        v28 = v34;
      }

      v31 += 16;
    }

    swift_setDeallocating();
    sub_1C985D728();

    v46 = v60;
    v47 = v55;
    if (!*(v60 + 16))
    {
      if (qword_1EC3C5520 != -1)
      {
        sub_1C97DAA64();
      }

      v48 = sub_1C9A91B58();
      sub_1C97BFF6C(v48, qword_1EC3D3108);
      v49 = sub_1C9A91B38();
      v50 = sub_1C9A92FA8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        sub_1C9A08394(&dword_1C9788000, v52, v53, "Valid distance classifier model path points to non-existent file");
        MEMORY[0x1CCA93280](v51, -1, -1);
      }

      v46 = v60;
    }

    sub_1C98BBED4(v46, v47);
  }

  else
  {

    if (qword_1EC3C5520 != -1)
    {
      sub_1C97DAA64();
    }

    v21 = sub_1C9A91B58();
    sub_1C97BFF6C(v21, qword_1EC3D3108);
    v22 = sub_1C9A91B38();
    v23 = sub_1C9A92FA8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      sub_1C9A08394(&dword_1C9788000, v25, v26, "No distance classifier model available on this product");
      MEMORY[0x1CCA93280](v24, -1, -1);
    }

    return sub_1C97ACC50(a5, 1, 1, v61);
  }
}

uint64_t sub_1C9A075F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v39 = a4;
  v41 = a5;
  v10 = sub_1C9A91558();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = *a1;
  v18 = a1[1];
  v40[0] = a2;
  v40[1] = a3;

  MEMORY[0x1CCA90230](47, 0xE100000000000000);
  MEMORY[0x1CCA90230](v17, v18);
  sub_1C9A91468();

  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v19 = sub_1C9A91B58();
  sub_1C97BFF6C(v19, qword_1EC3D3108);
  (*(v11 + 16))(v14, v16, v10);
  v20 = sub_1C9A91B38();
  v21 = sub_1C9A92FC8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v16;
    v23 = v22;
    v24 = swift_slowAlloc();
    v40[0] = v24;
    *v23 = 136315138;
    v25 = sub_1C9A91428();
    v38 = v5;
    v27 = v26;
    v28 = v14;
    v29 = *(v11 + 8);
    v29(v28, v10);
    v30 = sub_1C9849140(v25, v27, v40);
    v6 = v38;

    *(v23 + 4) = v30;
    _os_log_impl(&dword_1C9788000, v20, v21, "%s", v23, 0xCu);
    sub_1C97A592C(v24);
    v31 = v24;
    v32 = v29;
    MEMORY[0x1CCA93280](v31, -1, -1);
    v33 = v23;
    v16 = v37;
    MEMORY[0x1CCA93280](v33, -1, -1);
  }

  else
  {

    v32 = *(v11 + 8);
    v32(v14, v10);
  }

  if ((v39 & 1) != 0 && (sub_1C9A914C8(), v6))
  {

    v32(v16, v10);
    v34 = 1;
  }

  else
  {
    (*(v11 + 32))(v41, v16, v10);
    v34 = 0;
  }

  return sub_1C97ACC50(v41, v34, 1, v10);
}