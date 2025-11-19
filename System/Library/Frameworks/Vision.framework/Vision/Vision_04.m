uint64_t InstanceMaskObservation.encode(to:)(void *a1)
{
  v2 = v1;
  v30[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768);
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF5C8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = objc_opt_self();
  v12 = type metadata accessor for InstanceMaskObservation();
  v13 = *(v2 + *(v12 + 40));
  v30[0] = 0;
  v14 = [v11 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v30];
  v15 = v30[0];
  if (v14)
  {
    v26 = v4;
    v24 = sub_1A5FD35DC();
    v25 = v16;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1A5B57A0C();
    sub_1A5FD4CDC();
    LOBYTE(v30[0]) = 1;
    sub_1A5B0A360();
    sub_1A5FD49EC();
    v17 = sub_1A5B57B7C(&qword_1EB1EF5A8, type metadata accessor for InstanceMaskObservation);
    v18 = v27;
    sub_1A5BBD46C(v6, v12, &off_1F1952B08, v17);
    if (v18)
    {
      sub_1A5B066DC(v24, v25);
      (*(v28 + 8))(v6, v26);
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      v22 = v24;
      v21 = v25;
      v30[0] = v24;
      v30[1] = v25;
      v29 = 0;
      sub_1A5B0A6B8();
      sub_1A5FD4A5C();
      (*(v28 + 8))(v6, v26);
      (*(v8 + 8))(v10, v7);
      return sub_1A5B066DC(v22, v21);
    }
  }

  else
  {
    v20 = v15;
    sub_1A5FD348C();

    return swift_willThrow();
  }
}

void *InstanceMaskObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1A5FD378C();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1A5FD367C();
  v60 = *(v62 - 8);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v56 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790);
  v61 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF5D0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - v14;
  v16 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A5B57A0C();
  v17 = v63;
  sub_1A5FD4CCC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v63 = v8;
  v18 = v62;
  LOBYTE(v67) = 0;
  sub_1A5B0A8B0();
  sub_1A5FD497C();
  v54 = v15;
  v19 = v65[0];
  sub_1A5B16F58(0, &qword_1EB1EF038);
  sub_1A5B16F58(0, &qword_1EB1EF5D8);
  result = sub_1A5FD435C();
  v53 = *(&v19 + 1);
  v52 = result;
  if (result)
  {
    LOBYTE(v65[0]) = 1;
    sub_1A5B0A360();
    sub_1A5FD48CC();
    LOBYTE(v65[0]) = 0;
    sub_1A5B57B7C(&qword_1EB1EE7A8, MEMORY[0x1E69695A8]);
    sub_1A5FD497C();
    v21 = v9;
    LOBYTE(v65[0]) = 1;
    sub_1A5FD495C();
    v23 = v22;
    LOBYTE(v67) = 3;
    sub_1A5B0A454();
    sub_1A5FD492C();
    v50 = LOWORD(v65[0]);
    sub_1A5BBDB04(v68);
    v24 = v13;
    v51 = v11;
    v25 = v60;
    v26 = v52;
    v27 = [v52 allInstances];
    v49 = v24;
    v28 = v25;
    v29 = v27;
    v30 = v57;
    sub_1A5FD375C();

    v46 = [v26 instanceMask];
    v44 = type metadata accessor for InstanceMaskObservation();
    v48 = v12;
    v31 = *(v44 + 24);
    v32 = *(v28 + 16);
    v47 = v21;
    v45 = v19;
    v33 = v55;
    v32(v55 + v31, v63, v18);
    v34 = v58;
    v35 = v30;
    v36 = v30;
    v37 = v59;
    (*(v58 + 16))(v33, v36, v59);
    v38 = (v33 + v31);
    v39 = v56;
    v32(v56, v38, v18);
    LOWORD(v32) = v50;
    v67 = v50;
    memset(v65, 0, sizeof(v65));
    v66 = 1;
    v40 = v44;
    sub_1A5BF327C(v39, v68, &v67, v46, v65, v33 + *(v44 + 20), v23);
    sub_1A5B066DC(v45, v53);
    (*(v34 + 8))(v35, v37);
    (*(v60 + 8))(v63, v18);
    (*(v61 + 8))(v51, v47);
    (*(v49 + 8))(v54, v48);
    *(v33 + v40[7]) = v23;
    v41 = v33 + v40[8];
    v42 = v68[1];
    *v41 = v68[0];
    *(v41 + 16) = v42;
    *(v41 + 32) = v68[2];
    *(v41 + 48) = v69;
    *(v33 + v40[9]) = v32;
    *(v33 + v40[10]) = v52;
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  __break(1u);
  return result;
}

__n128 sub_1A5B56D48@<Q0>(void *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29 = sub_1A5FD367C();
  v8 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1A5FD378C();
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a2;
  v14 = [a1 allInstances];
  sub_1A5FD375C();

  v26 = [a1 instanceMask];
  v15 = a1;
  v16 = [v15 uuid];
  v17 = type metadata accessor for InstanceMaskObservation();
  v18 = v17[6];
  sub_1A5FD365C();

  [v15 confidence];
  v20 = v19;

  v21 = v28;
  (*(v11 + 16))(a4, v13, v28);
  (*(v8 + 16))(v10, a4 + v18, v29);
  LOWORD(v18) = v27;
  v32 = v27;
  memset(v30, 0, sizeof(v30));
  v31 = 1;
  v22 = sub_1A5BF327C(v10, a3, &v32, v26, v30, a4 + v17[5], v20);
  (*(v11 + 8))(v13, v21, v22);
  *(a4 + v17[7]) = v20;
  v23 = a4 + v17[8];
  v24 = *(a3 + 16);
  *v23 = *a3;
  *(v23 + 16) = v24;
  result = *(a3 + 32);
  *(v23 + 32) = result;
  *(v23 + 48) = *(a3 + 48);
  *(a4 + v17[9]) = v18;
  *(a4 + v17[10]) = v15;
  return result;
}

uint64_t InstanceMaskObservation.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = sub_1A5FD367C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = sub_1A5FD378C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v42 = 0;
  v14 = [a1 vn:&v42 deepCloneObjectWithError:?];
  if (v14)
  {
    v15 = v14;
    v16 = v42;
    v17 = [a1 allInstances];
    sub_1A5FD375C();

    v36 = [v15 instanceMask];
    v18 = a1;
    v19 = [v18 uuid];
    v37 = v15;
    v20 = v4;
    v21 = v19;
    sub_1A5FD365C();

    [v18 confidence];
    v23 = v22;
    [v18 timeRange];
    v35 = v42;
    v34 = v43;
    v33 = v44;

    v42 = v35;
    v43 = v34;
    v44 = v33;
    v45 = 0;
    v24 = v10;
    (*(v11 + 16))(a2, v13, v10);
    v25 = v38;
    (*(v5 + 16))(v38, v9, v20);
    v39 = -8;
    memset(v40, 0, sizeof(v40));
    v41 = 1;
    v26 = type metadata accessor for InstanceMaskObservation();
    sub_1A5BF327C(v25, &v42, &v39, v36, v40, a2 + v26[5], v23);

    (*(v11 + 8))(v13, v24);
    (*(v5 + 32))(a2 + v26[6], v9, v20);
    *(a2 + v26[7]) = v23;
    v27 = a2 + v26[8];
    v28 = v43;
    *v27 = v42;
    *(v27 + 16) = v28;
    *(v27 + 32) = v44;
    *(v27 + 48) = v45;
    *(a2 + v26[9]) = -8;
    *(a2 + v26[10]) = v37;
    return (*(*(v26 - 1) + 56))(a2, 0, 1, v26);
  }

  else
  {
    v30 = v42;
    v31 = sub_1A5FD348C();

    swift_willThrow();
    v32 = type metadata accessor for InstanceMaskObservation();
    return (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
  }
}

double sub_1A5B57460@<D0>(void *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a2;
  *&result = sub_1A5B56D48(a1, &v5, a3, a4).n128_u64[0];
  return result;
}

char *sub_1A5B5748C(char *a1, int64_t a2, char a3)
{
  result = sub_1A5B574AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A5B574AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A5B575BC(unint64_t a1)
{
  v2 = v1;
  v40[1] = *MEMORY[0x1E69E9840];
  v4 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_57:
    v22 = 0x80000001A6054070;
    sub_1A5B16774();
    swift_allocError();
    *v24 = 0xD000000000000022;
    *(v24 + 8) = 0x80000001A6054070;
    *(v24 + 16) = 0;
    *(v24 + 20) = 0;
    swift_willThrow();
    return v22;
  }

LABEL_56:
  if (!sub_1A5FD484C())
  {
    goto LABEL_57;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1AC554EE0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v5 = *(a1 + 32);
  }

  v6 = v5;
  Width = CVPixelBufferGetWidth(v5);
  Height = CVPixelBufferGetHeight(v6);
  v40[0] = 0;
  UsingIOSurface = VNCVPixelBufferCreateUsingIOSurface(Width, Height, 0x4C303038u, 0, v40);
  if (!v40[0])
  {
    v22 = UsingIOSurface;
    sub_1A5B16774();
    swift_allocError();
    *v23 = v22;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 20) = 11;
    swift_willThrow();

    return v22;
  }

  v10 = v40[0];
  BytesPerRow = CVPixelBufferGetBytesPerRow(v10);
  CVPixelBufferLockBaseAddress(v10, 0);
  pixelBuffer = v10;
  BaseAddress = CVPixelBufferGetBaseAddress(v10);
  if (BaseAddress)
  {
    if ((Height & 0x8000000000000000) == 0)
    {
      if (Height)
      {
        if ((Width & 0x8000000000000000) == 0)
        {
          v32 = 0;
          v28 = v6;
          v29 = v4;
          v33 = Width;
          v27 = Height;
          while (1)
          {
            v31 = v2;
            if (Width)
            {
              if (v4)
              {
                v11 = sub_1A5FD484C();
                if ((v11 & 0x8000000000000000) != 0)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v12 = 0;
              v36 = v32 * Width;
              v13 = (v32 * Width) >> 64 != (v32 * Width) >> 63;
              v34 = v32 * BytesPerRow;
              do
              {
                if (v12 >= Width)
                {
                  goto LABEL_50;
                }

                if (__OFADD__(v12, 1))
                {
LABEL_51:
                  __break(1u);
LABEL_52:
                  __break(1u);
LABEL_53:
                  __break(1u);
LABEL_54:
                  __break(1u);
                  goto LABEL_55;
                }

                v37 = v12 + 1;
                v38 = v12;
                v14 = 0;
                v4 = 0;
                v15 = v12 + v36;
                v16 = __OFADD__(v12, v36);
                v17 = 0.0;
LABEL_24:
                v39 = v14;
                v18 = v4;
                while (v11 != v18)
                {
                  if (v18 >= v11)
                  {
                    __break(1u);
LABEL_46:
                    __break(1u);
LABEL_47:
                    __break(1u);
LABEL_48:
                    __break(1u);
LABEL_49:
                    __break(1u);
LABEL_50:
                    __break(1u);
                    goto LABEL_51;
                  }

                  v4 = v18 + 1;
                  if (__OFADD__(v18, 1))
                  {
                    goto LABEL_46;
                  }

                  if (v13)
                  {
                    goto LABEL_47;
                  }

                  if (v16)
                  {
                    goto LABEL_48;
                  }

                  if ((a1 & 0xC000000000000001) != 0)
                  {
                    v19 = MEMORY[0x1AC554EE0](v18, a1);
                  }

                  else
                  {
                    if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_49;
                    }

                    v19 = *(a1 + 8 * v18 + 32);
                  }

                  v2 = v19;
                  CVPixelBufferLockBaseAddress(v19, 1uLL);
                  v20 = CVPixelBufferGetBaseAddress(v2);
                  if (!v20)
                  {
                    goto LABEL_65;
                  }

                  v21 = v20[v15];
                  CVPixelBufferUnlockBaseAddress(v2, 1uLL);

                  ++v18;
                  if (v17 < v21)
                  {
                    if ((v4 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_54;
                    }

                    v14 = v4;
                    v17 = v21;
                    if (v4 > 0xFF)
                    {
LABEL_55:
                      __break(1u);
                      goto LABEL_56;
                    }

                    goto LABEL_24;
                  }
                }

                if ((v32 * BytesPerRow) >> 64 != (v32 * BytesPerRow) >> 63)
                {
                  goto LABEL_52;
                }

                if (__OFADD__(v38, v34))
                {
                  goto LABEL_53;
                }

                BaseAddress[v38 + v34] = v39;
                v12 = v37;
                Width = v33;
              }

              while (v37 != v33);
            }

            v2 = v31;
            v6 = v28;
            ++v32;
            v4 = v29;
            if (v32 == v27)
            {
              goto LABEL_44;
            }
          }
        }

LABEL_63:
        __break(1u);
      }

LABEL_44:
      v22 = pixelBuffer;
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);

      return v22;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  __break(1u);
LABEL_65:
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

unint64_t sub_1A5B57A0C()
{
  result = qword_1EB20ACD0[0];
  if (!qword_1EB20ACD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB20ACD0);
  }

  return result;
}

uint64_t sub_1A5B57A60(void *a1)
{
  a1[1] = sub_1A5B57B7C(&qword_1EB1EF5E0, type metadata accessor for InstanceMaskObservation);
  a1[2] = sub_1A5B57B7C(&qword_1EB1EF5E8, type metadata accessor for InstanceMaskObservation);
  a1[3] = sub_1A5B57B7C(&qword_1EB1EF5F0, type metadata accessor for InstanceMaskObservation);
  result = sub_1A5B57B7C(&qword_1EB1EF5C0, type metadata accessor for InstanceMaskObservation);
  a1[4] = result;
  return result;
}

uint64_t sub_1A5B57B7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A5B57BC4(uint64_t a1)
{
  result = sub_1A5B57B7C(&qword_1EB1EF5A8, type metadata accessor for InstanceMaskObservation);
  *(a1 + 8) = result;
  return result;
}

void sub_1A5B57C44()
{
  sub_1A5FD378C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PixelBufferObservation();
    if (v1 <= 0x3F)
    {
      sub_1A5FD367C();
      if (v2 <= 0x3F)
      {
        sub_1A5B0AD5C();
        if (v3 <= 0x3F)
        {
          sub_1A5B57E7C(319, &qword_1EB1EE6A0, &type metadata for RequestDescriptor, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1A5B16F58(319, &qword_1EB1EF5D8);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1A5B57D78()
{
  result = qword_1EB20B170[0];
  if (!qword_1EB20B170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB20B170);
  }

  return result;
}

unint64_t sub_1A5B57DD0()
{
  result = qword_1EB20B280;
  if (!qword_1EB20B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB20B280);
  }

  return result;
}

unint64_t sub_1A5B57E28()
{
  result = qword_1EB20B288[0];
  if (!qword_1EB20B288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB20B288);
  }

  return result;
}

void sub_1A5B57E7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A5B57ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v357 = a4;
  *&v354 = type metadata accessor for DetectHumanHandPoseRequest();
  MEMORY[0x1EEE9AC00](v354);
  *&v353 = &v329 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  *&v355 = &v329 - v10;
  v356 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v356);
  v346 = &v329 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v348 = &v329 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v347 = &v329 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v345 = (&v329 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v344 = (&v329 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v343 = &v329 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v342 = (&v329 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v341 = (&v329 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v340 = &v329 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v339 = (&v329 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v338 = (&v329 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v337 = &v329 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v336 = &v329 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v335 = (&v329 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v334 = (&v329 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v333 = (&v329 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v332 = (&v329 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v331 = (&v329 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v330 = (&v329 - v47);
  MEMORY[0x1EEE9AC00](v48);
  v350 = &v329 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v349 = (&v329 - v51);
  MEMORY[0x1EEE9AC00](v52);
  v351 = &v329 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v352 = &v329 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v329 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v329 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v329 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v329 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v329 - v69;
  v358 = a3;
  if (a3)
  {
    v4 = a1;
    *v367 = a3;
    v71 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3E90);
    sub_1A5B5C528();
    if (swift_dynamicCast())
    {
      v72 = v359;
      sub_1A5D28CD8(v72, v367);
      if (v367[20] != 255)
      {
        v86 = *&v367[16] | (v367[20] << 32);
        v87 = *v367;

        v88 = v4;
        v89 = v4;
        v90 = v357;
        sub_1A5B180A0(v89, v357);
        sub_1A5B16774();
        *(v90 + 5) = swift_allocError();
        *v91 = v87;
        *(v91 + 16) = v86;
        *(v91 + 20) = BYTE4(v86);

        __swift_destroy_boxed_opaque_existential_1(v88);
        return swift_storeEnumTagMultiPayload();
      }
    }

    v73 = a2;
    a1 = v4;
    if (!a2)
    {
      v74 = v358;
      v75 = v358;
LABEL_16:
      *v367 = 0;
      *&v367[8] = 0xE000000000000000;
      v93 = v74;
      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD000000000000021, 0x80000001A6054100);
      MEMORY[0x1AC554600](0xD000000000000038, 0x80000001A6054130);
      *&v359 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3E90);
      sub_1A5FD481C();
      sub_1A5BF63A0(0, *v367, *&v367[8]);

      v94 = v357;
      sub_1A5B180A0(v4, v357);
      __swift_destroy_boxed_opaque_existential_1(v4);

      *(v94 + 5) = v75;
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v73 = a2;
    if (!a2)
    {
      v4 = a1;
      sub_1A5B16774();
      v75 = swift_allocError();
      sub_1A5D2869C(0xD000000000000052, 0x80000001A60540A0, v92);
      v74 = v358;
      goto LABEL_16;
    }
  }

  sub_1A5B180A0(a1, v371);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
  if (swift_dynamicCast())
  {
    v359 = *v367;
    v360 = *&v367[16];
    v361 = *&v367[32];
    *&v362 = *&v367[48];
    v76 = sub_1A5B5C30C(v73, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

    __swift_destroy_boxed_opaque_existential_1(a1);
    v77 = v360;
    v78 = v357;
    *v357 = v359;
    v78[1] = v77;
    v78[2] = v361;
    *(v78 + 6) = v362;
    *(v78 + 7) = v76;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_1(v371);
  }

  v329 = a1;
  if (swift_dynamicCast())
  {
    v79 = v367[0];
    v80 = v367[40];
    v81 = *&v367[48];
    v354 = *&v367[24];
    v355 = *&v367[8];
    v82 = sub_1A5B5C30C(v73, type metadata accessor for HumanObservation, sub_1A5B696E0, type metadata accessor for HumanObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v83 = v357;
    *v357 = v79;
    v84 = v355;
    *(v83 + 24) = v354;
    *(v83 + 8) = v84;
    *(v83 + 40) = v80;
    *(v83 + 6) = v81;
    *(v83 + 7) = v82;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v95 = *&v367[40];
    *v70 = v367[0];
    *(v70 + 8) = *&v367[8];
    *(v70 + 24) = *&v367[24];
    *(v70 + 5) = v95;
    if (*(v73 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C8);
      sub_1A5B180A0(v73 + 32, v366);

      __swift_destroy_boxed_opaque_existential_1(v329);
      sub_1A5B063D4(v366, &v359);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      type metadata accessor for ImageAestheticsScoresObservation();
      swift_dynamicCast();
      swift_storeEnumTagMultiPayload();
      v96 = v70;
LABEL_21:
      sub_1A5B5C4C0(v96, v357, type metadata accessor for VisionResult);
      return __swift_destroy_boxed_opaque_existential_1(v371);
    }

    __break(1u);
    goto LABEL_80;
  }

  if (swift_dynamicCast())
  {
    v361 = *&v367[32];
    v362 = *&v367[48];
    v363 = v368;
    v359 = *v367;
    v360 = *&v367[16];
    v97 = sub_1A5B5C30C(v73, type metadata accessor for ClassificationObservation, sub_1A5B6969C, type metadata accessor for ClassificationObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v98 = v362;
    v99 = v357;
    v357[2] = v361;
    v99[3] = v98;
    v99[4] = v363;
    v100 = v360;
    *v99 = v359;
    v99[1] = v100;
    *(v99 + 10) = v97;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v101 = *&v367[32];
    v354 = *&v367[16];
    v355 = *v367;
    v102 = sub_1A5B5C30C(v73, type metadata accessor for AnimalBodyPoseObservation, sub_1A5B69658, type metadata accessor for AnimalBodyPoseObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v103 = v357;
    v104 = v354;
    *v357 = v355;
    v103[1] = v104;
    *(v103 + 4) = v101;
    *(v103 + 5) = v102;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v359 = *v367;
    v360 = *&v367[16];
    v361 = *&v367[32];
    v362 = *&v367[48];
    v105 = sub_1A5B5C30C(v73, type metadata accessor for BarcodeObservation, sub_1A5B69614, type metadata accessor for BarcodeObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v106 = v360;
    v107 = v357;
    *v357 = v359;
    v107[1] = v106;
    v108 = v362;
    v107[2] = v361;
    v107[3] = v108;
    *(v107 + 8) = v105;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v109 = *v367;
    v110 = *&v367[40];
    v354 = *&v367[24];
    v355 = *&v367[8];
    v111 = sub_1A5B5C30C(v73, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v112 = v357;
    *v357 = v109;
    v113 = v355;
    *(v112 + 24) = v354;
    *(v112 + 8) = v113;
    *(v112 + 5) = v110;
    *(v112 + 6) = v111;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v114 = *v367;
    v115 = v367[40];
    v116 = *&v367[48];
    v354 = *&v367[24];
    v355 = *&v367[8];
    v117 = sub_1A5B5C30C(v73, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v118 = v357;
    *v357 = v114;
    v119 = v355;
    *(v118 + 24) = v354;
    *(v118 + 8) = v119;
    *(v118 + 40) = v115;
    *(v118 + 6) = v116;
    *(v118 + 7) = v117;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v120 = *&v367[48];
    *(v67 + 2) = *&v367[32];
    *(v67 + 3) = v120;
    *(v67 + 8) = v368;
    v121 = *&v367[16];
    *v67 = *v367;
    *(v67 + 1) = v121;
    if (*(v73 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C0);
      sub_1A5B180A0(v73 + 32, v366);

      __swift_destroy_boxed_opaque_existential_1(v329);
      sub_1A5B063D4(v366, &v359);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      type metadata accessor for ContoursObservation(0);
      swift_dynamicCast();
      swift_storeEnumTagMultiPayload();
      v96 = v67;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_102;
  }

  if (swift_dynamicCast())
  {
    v122 = v73;
    v123 = *&v367[32];
    v124 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B8) + 48);
    v125 = *&v367[16];
    *v64 = *v367;
    *(v64 + 1) = v125;
    *(v64 + 4) = v123;
    if (*(v122 + 16))
    {
      sub_1A5B180A0(v122 + 32, &v359);

      __swift_destroy_boxed_opaque_existential_1(v329);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      v126 = type metadata accessor for DetectedDocumentObservation();
      v127 = swift_dynamicCast();
      (*(*(v126 - 8) + 56))(&v64[v124], v127 ^ 1u, 1, v126);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v329);

      v139 = type metadata accessor for DetectedDocumentObservation();
      (*(*(v139 - 8) + 56))(&v64[v124], 1, 1, v139);
    }

    swift_storeEnumTagMultiPayload();
    v96 = v64;
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v128 = v73;
    v129 = *&v367[32];
    v130 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B0) + 48);
    v131 = *&v367[16];
    *v61 = *v367;
    *(v61 + 1) = v131;
    *(v61 + 4) = v129;
    if (*(v128 + 16))
    {
      sub_1A5B180A0(v128 + 32, &v359);

      __swift_destroy_boxed_opaque_existential_1(v329);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      v132 = type metadata accessor for HorizonObservation();
      v133 = swift_dynamicCast();
      (*(*(v132 - 8) + 56))(&v61[v130], v133 ^ 1u, 1, v132);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v329);

      v143 = type metadata accessor for HorizonObservation();
      (*(*(v143 - 8) + 56))(&v61[v130], 1, 1, v143);
    }

    swift_storeEnumTagMultiPayload();
    v96 = v61;
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v134 = v367[32];
    v135 = *&v367[40];
    v354 = *&v367[16];
    v355 = *v367;
    v136 = sub_1A5B5C30C(v73, type metadata accessor for HumanBodyPoseObservation, sub_1A5B695D0, type metadata accessor for HumanBodyPoseObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v137 = v357;
    v138 = v354;
    *v357 = v355;
    v137[1] = v138;
    *(v137 + 32) = v134;
    *(v137 + 5) = v135;
    *(v137 + 6) = v136;
    goto LABEL_12;
  }

  type metadata accessor for DetectHumanBodyPose3DRequest();
  if (swift_dynamicCast())
  {
    v140 = *v367;
    v141 = sub_1A5B5C30C(v73, type metadata accessor for HumanBodyPose3DObservation, sub_1A5B6958C, type metadata accessor for HumanBodyPose3DObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v142 = v357;
    *v357 = v140;
    *(v142 + 1) = v141;
    goto LABEL_12;
  }

  v4 = v73;
  if (swift_dynamicCast())
  {
    v144 = v353;
    sub_1A5B5C4C0(v355, v353, type metadata accessor for DetectHumanHandPoseRequest);
    v145 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A8) + 48);
    v146 = v357;
    sub_1A5B5DE58(v144, v357, type metadata accessor for DetectHumanHandPoseRequest);
    v147 = sub_1A5B5C30C(v73, type metadata accessor for HumanHandPoseObservation, sub_1A5B69548, type metadata accessor for HumanHandPoseObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    sub_1A5B5DF14(v144, type metadata accessor for DetectHumanHandPoseRequest);
    *(v146 + v145) = v147;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v359 = *v367;
    v360 = *&v367[16];
    v361 = *&v367[32];
    *&v362 = *&v367[48];
    v148 = sub_1A5B5C30C(v73, type metadata accessor for DetectedObjectObservation, sub_1A5B69504, type metadata accessor for DetectedObjectObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v149 = v360;
    v150 = v357;
    *v357 = v359;
    v150[1] = v149;
    v150[2] = v361;
    *(v150 + 6) = v362;
    *(v150 + 7) = v148;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v151 = v367[32];
    v152 = *&v367[40];
    v153 = *&v367[16];
    *v58 = *v367;
    *(v58 + 1) = v153;
    v58[32] = v151;
    *(v58 + 5) = v152;
    if (*(v73 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A0);
      sub_1A5B180A0(v73 + 32, v366);

      __swift_destroy_boxed_opaque_existential_1(v329);
      sub_1A5B063D4(v366, &v359);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      type metadata accessor for SmudgeObservation();
      swift_dynamicCast();
      swift_storeEnumTagMultiPayload();
      v96 = v58;
      goto LABEL_21;
    }

    __break(1u);
LABEL_121:
    type metadata accessor for DetectCameraGazeRequest();
    if (swift_dynamicCast())
    {
      goto LABEL_128;
    }

    if (swift_dynamicCast())
    {
LABEL_124:
      v231 = *v367;
      v232 = v367[40];
      v233 = *&v367[48];
      v354 = *&v367[24];
      v355 = *&v367[8];
      v234 = sub_1A5B5C30C(v4, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

      __swift_destroy_boxed_opaque_existential_1(v329);
      v235 = v357;
      *v357 = v231;
      v236 = v355;
      *(v235 + 24) = v354;
      *(v235 + 8) = v236;
      *(v235 + 40) = v232;
      *(v235 + 6) = v233;
      *(v235 + 7) = v234;
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      v237 = *v367;
      v353 = *&v367[24];
      v354 = *&v367[40];
      v355 = *&v367[8];
      v238 = sub_1A5B5C30C(v4, type metadata accessor for HumanObservation, sub_1A5B696E0, type metadata accessor for HumanObservation);

      __swift_destroy_boxed_opaque_existential_1(v329);
      v239 = v357;
      *v357 = v237;
      *(v239 + 24) = v353;
      v240 = v354;
      *(v239 + 8) = v355;
      *(v239 + 40) = v240;
      *(v239 + 7) = v238;
      goto LABEL_12;
    }

    type metadata accessor for CalculateFaceLivelinessScoreRequest();
    if (swift_dynamicCast())
    {
      goto LABEL_128;
    }

    if (swift_dynamicCast())
    {
      v244 = *&v367[32];
      v354 = *&v367[16];
      v355 = *v367;
      v245 = sub_1A5B5C30C(v4, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

      __swift_destroy_boxed_opaque_existential_1(v329);
      v246 = v357;
      v247 = v354;
      *v357 = v355;
      v246[1] = v247;
      v246[2] = v244;
      *(v246 + 6) = v245;
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      v248 = *&v367[8];
      v249 = *&v367[48];
      v250 = v337;
      *v337 = v367[0];
      *(v250 + 1) = v248;
      v251 = *&v367[32];
      *(v250 + 1) = *&v367[16];
      *(v250 + 2) = v251;
      *(v250 + 6) = v249;
      if (*(v4 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF648);
        sub_1A5B180A0(v4 + 32, v366);

        __swift_destroy_boxed_opaque_existential_1(v329);
        sub_1A5B063D4(v366, &v359);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
        type metadata accessor for ImageBlurObservation();
        v179 = v337;
        swift_dynamicCast();
        goto LABEL_86;
      }

LABEL_161:

      __break(1u);
LABEL_162:

      __break(1u);
      goto LABEL_163;
    }

    goto LABEL_135;
  }

  if (swift_dynamicCast())
  {
    v361 = *&v367[32];
    v362 = *&v367[48];
    v363 = v368;
    v359 = *v367;
    v360 = *&v367[16];
    v154 = sub_1A5B5C30C(v73, type metadata accessor for RectangleObservation, sub_1A5B694C0, type metadata accessor for RectangleObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v155 = v362;
    v156 = v357;
    v357[2] = v361;
    v156[3] = v155;
    v156[4] = v363;
    v157 = v360;
    *v156 = v359;
    v156[1] = v157;
    *(v156 + 10) = v154;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v361 = *&v367[32];
    v362 = *&v367[48];
    v363 = v368;
    *&v364 = v369;
    v359 = *v367;
    v360 = *&v367[16];
    v158 = sub_1A5B5C30C(v73, type metadata accessor for TextObservation, sub_1A5B6947C, type metadata accessor for TextObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v159 = v362;
    v160 = v357;
    v357[2] = v361;
    v160[3] = v159;
    v160[4] = v363;
    v161 = v364;
    v162 = v360;
    *v160 = v359;
    v160[1] = v162;
    *(v160 + 10) = v161;
    *(v160 + 11) = v158;
    goto LABEL_12;
  }

  type metadata accessor for DetectTrajectoriesRequest();
  if (swift_dynamicCast())
  {
    v163 = *v367;
    v164 = sub_1A5B5C30C(v73, type metadata accessor for TrajectoryObservation, sub_1A5B69438, type metadata accessor for TrajectoryObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v165 = v357;
    *v357 = v163;
    *(v165 + 1) = v164;
    goto LABEL_12;
  }

  type metadata accessor for TrackObjectRequest(0);
  if (swift_dynamicCast())
  {
    v166 = v359;
    v167 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF698) + 48);
    *v352 = v166;
    if (*(v4 + 16))
    {
      sub_1A5B180A0(v4 + 32, v367);

      __swift_destroy_boxed_opaque_existential_1(v329);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      v168 = type metadata accessor for DetectedObjectObservation();
      v169 = v352;
      v170 = swift_dynamicCast();
      (*(*(v168 - 8) + 56))(&v169[v167], v170 ^ 1u, 1, v168);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v329);

      v180 = type metadata accessor for DetectedObjectObservation();
      (*(*(v180 - 8) + 56))(&v352[v167], 1, 1, v180);
    }

    v181 = v352;
    goto LABEL_78;
  }

  type metadata accessor for TrackOpticalFlowRequest(0);
  if (swift_dynamicCast())
  {
    v171 = v359;
    v172 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF690) + 48);
    *v351 = v171;
    if (*(v4 + 16))
    {
      sub_1A5B180A0(v4 + 32, v367);

      __swift_destroy_boxed_opaque_existential_1(v329);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      v173 = type metadata accessor for OpticalFlowObservation();
      v174 = v351;
      v175 = swift_dynamicCast();
      (*(*(v173 - 8) + 56))(&v174[v172], v175 ^ 1u, 1, v173);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v329);

      v185 = type metadata accessor for OpticalFlowObservation();
      (*(*(v185 - 8) + 56))(&v351[v172], 1, 1, v185);
    }

    v181 = v351;
    goto LABEL_78;
  }

  if (swift_dynamicCast())
  {
    v176 = *&v367[32];
    v177 = *&v367[16];
    v178 = v349;
    *v349 = *v367;
    v178[1] = v177;
    *(v178 + 4) = v176;
    if (!*(v73 + 16))
    {

      __break(1u);
LABEL_135:
      if (swift_dynamicCast())
      {
        v252 = *&v367[32];
        v253 = *&v367[16];
        v254 = v338;
        *v338 = *v367;
        v254[1] = v253;
        *(v254 + 4) = v252;
        if (*(v4 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF640);
          sub_1A5B180A0(v4 + 32, v366);

          __swift_destroy_boxed_opaque_existential_1(v329);
          sub_1A5B063D4(v366, &v359);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
          type metadata accessor for ImageExposureObservation();
          v179 = v338;
          swift_dynamicCast();
          goto LABEL_86;
        }

        goto LABEL_162;
      }

LABEL_139:
      if (swift_dynamicCast())
      {
        goto LABEL_212;
      }

      goto LABEL_142;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF688);
    sub_1A5B180A0(v73 + 32, v366);

    __swift_destroy_boxed_opaque_existential_1(v329);
    sub_1A5B063D4(v366, &v359);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
    type metadata accessor for SaliencyImageObservation();
    v179 = v349;
    swift_dynamicCast();
LABEL_86:
    swift_storeEnumTagMultiPayload();
    v96 = v179;
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v182 = v367[40];
    v183 = *&v367[48];
    v184 = v350;
    *v350 = v367[0];
    *(v184 + 8) = *&v367[8];
    *(v184 + 24) = *&v367[24];
    v184[40] = v182;
    *(v184 + 6) = v183;
    if (!*(v73 + 16))
    {

      __break(1u);
      goto LABEL_139;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF680);
    sub_1A5B180A0(v73 + 32, v366);

    __swift_destroy_boxed_opaque_existential_1(v329);
    sub_1A5B063D4(v366, &v359);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
    type metadata accessor for FeaturePrintObservation();
    v179 = v350;
    swift_dynamicCast();
    goto LABEL_86;
  }

LABEL_80:
  if (swift_dynamicCast())
  {
    v186 = *&v367[32];
    v187 = *&v367[16];
    v188 = v330;
    *v330 = *v367;
    v188[1] = v187;
    *(v188 + 4) = v186;
    if (*(v4 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF678);
      sub_1A5B180A0(v4 + 32, v366);

      __swift_destroy_boxed_opaque_existential_1(v329);
      sub_1A5B063D4(v366, &v359);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      type metadata accessor for SaliencyImageObservation();
      v179 = v330;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
LABEL_142:
    if (swift_dynamicCast())
    {
      goto LABEL_124;
    }

    goto LABEL_145;
  }

  type metadata accessor for GeneratePersonSegmentationRequest(0);
  if (swift_dynamicCast())
  {
    *v331 = *&v366[0];
    if (*(v4 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF670);
      sub_1A5B180A0(v4 + 32, &v359);

      __swift_destroy_boxed_opaque_existential_1(v329);
      sub_1A5B063D4(&v359, v367);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      type metadata accessor for PixelBufferObservation();
      v179 = v331;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
LABEL_145:
    if (swift_dynamicCast())
    {
      v255 = v367[0];
      v256 = v367[40];
      v257 = *&v367[48];
      v354 = *&v367[24];
      v355 = *&v367[8];
      v258 = sub_1A5B5C30C(v4, type metadata accessor for ImageAestheticsObservation, sub_1A5B69328, type metadata accessor for ImageAestheticsObservation);

      __swift_destroy_boxed_opaque_existential_1(v329);
      v259 = v357;
      *v357 = v255;
      v260 = v355;
      *(v259 + 24) = v354;
      *(v259 + 8) = v260;
      *(v259 + 40) = v256;
      *(v259 + 6) = v257;
      *(v259 + 7) = v258;
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_212;
    }

    if (swift_dynamicCast() || swift_dynamicCast())
    {
      goto LABEL_207;
    }

    if (swift_dynamicCast())
    {
      v359 = *v367;
      v360 = *&v367[16];
      v361 = *&v367[32];
      v362 = *&v367[48];
      v261 = sub_1A5B5C30C(v4, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

      __swift_destroy_boxed_opaque_existential_1(v329);
      v262 = v360;
      v263 = v357;
      *v357 = v359;
      v263[1] = v262;
      v264 = v362;
      v263[2] = v361;
      v263[3] = v264;
      *(v263 + 8) = v261;
      goto LABEL_12;
    }

    if (swift_dynamicCast() || swift_dynamicCast())
    {
      v265 = *v367;
      v266 = *&v367[40];
      v354 = *&v367[24];
      v355 = *&v367[8];
      v267 = sub_1A5B5C30C(v4, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

      __swift_destroy_boxed_opaque_existential_1(v329);
      v268 = v357;
      *v357 = v265;
      v269 = v355;
      *(v268 + 24) = v354;
      *(v268 + 8) = v269;
      *(v268 + 5) = v266;
      *(v268 + 6) = v267;
      goto LABEL_12;
    }

    goto LABEL_158;
  }

  if (swift_dynamicCast())
  {
    v189 = *&v367[32];
    v190 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF668) + 48);
    v191 = *&v367[16];
    v192 = v332;
    *v332 = *v367;
    v192[1] = v191;
    *(v192 + 4) = v189;
    if (*(v4 + 16))
    {
      sub_1A5B180A0(v4 + 32, &v359);

      __swift_destroy_boxed_opaque_existential_1(v329);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      v193 = type metadata accessor for InstanceMaskObservation();
      v194 = v332;
      v195 = swift_dynamicCast();
      (*(*(v193 - 8) + 56))(&v194[v190], v195 ^ 1u, 1, v193);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v329);

      v209 = type metadata accessor for InstanceMaskObservation();
      (*(*(v209 - 8) + 56))(v332 + v190, 1, 1, v209);
    }

    v181 = v332;
    goto LABEL_78;
  }

  if (swift_dynamicCast())
  {
    v196 = *&v367[32];
    v197 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF660) + 48);
    v198 = *&v367[16];
    v199 = v333;
    *v333 = *v367;
    v199[1] = v198;
    *(v199 + 4) = v196;
    if (*(v4 + 16))
    {
      sub_1A5B180A0(v4 + 32, &v359);

      __swift_destroy_boxed_opaque_existential_1(v329);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      v200 = type metadata accessor for InstanceMaskObservation();
      v201 = v333;
      v202 = swift_dynamicCast();
      (*(*(v200 - 8) + 56))(&v201[v197], v202 ^ 1u, 1, v200);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v329);

      v214 = type metadata accessor for InstanceMaskObservation();
      (*(*(v214 - 8) + 56))(v333 + v197, 1, 1, v214);
    }

    v181 = v333;
    goto LABEL_78;
  }

  if (swift_dynamicCast())
  {
    v363 = v368;
    v364 = v369;
    v365 = v370;
    v359 = *v367;
    v360 = *&v367[16];
    v361 = *&v367[32];
    v362 = *&v367[48];
    v203 = sub_1A5B5C30C(v4, type metadata accessor for DocumentObservation, sub_1A5B693F4, type metadata accessor for DocumentObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v204 = v364;
    v205 = v357;
    v357[4] = v363;
    v205[5] = v204;
    v206 = v365;
    v207 = v360;
    *v205 = v359;
    v205[1] = v207;
    v208 = v362;
    v205[2] = v361;
    v205[3] = v208;
    *(v205 + 12) = v206;
    *(v205 + 13) = v203;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v361 = *&v367[32];
    v362 = *&v367[48];
    v363 = v368;
    v359 = *v367;
    v360 = *&v367[16];
    v210 = sub_1A5B5C30C(v4, type metadata accessor for RecognizedTextObservation, sub_1A5B693B0, type metadata accessor for RecognizedTextObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v211 = v362;
    v212 = v357;
    v357[2] = v361;
    v212[3] = v211;
    v212[4] = v363;
    v213 = v360;
    *v212 = v359;
    v212[1] = v213;
    *(v212 + 10) = v210;
    goto LABEL_12;
  }

LABEL_102:
  if (swift_dynamicCast())
  {
    v215 = v367[32];
    v216 = *&v367[40];
    v354 = *&v367[16];
    v355 = *v367;
    v217 = sub_1A5B5C30C(v4, type metadata accessor for RecognizedObjectObservation, sub_1A5B6936C, type metadata accessor for RecognizedObjectObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v218 = v357;
    v219 = v354;
    *v357 = v355;
    v218[1] = v219;
    *(v218 + 32) = v215;
    *(v218 + 5) = v216;
    *(v218 + 6) = v217;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v363 = v368;
    v364 = v369;
    v365 = v370;
    v359 = *v367;
    v360 = *&v367[16];
    v361 = *&v367[32];
    v362 = *&v367[48];
    __swift_destroy_boxed_opaque_existential_1(v329);

    v220 = v364;
    v221 = v357;
    v357[4] = v363;
    v221[5] = v220;
    v222 = v365;
    v223 = v360;
    *v221 = v359;
    v221[1] = v223;
    v224 = v362;
    v221[2] = v361;
    v221[3] = v224;
    *(v221 + 12) = v222;
    *(v221 + 13) = v4;
    goto LABEL_12;
  }

  type metadata accessor for TrackHomographicImageRegistrationRequest();
  if (!swift_dynamicCast())
  {
    type metadata accessor for TrackTranslationalImageRegistrationRequest();
    if (swift_dynamicCast())
    {
      *v335 = *&v366[0];
      if (*(v4 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F48B0);
        sub_1A5B180A0(v4 + 32, &v359);

        __swift_destroy_boxed_opaque_existential_1(v329);
        sub_1A5B063D4(&v359, v367);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
        type metadata accessor for ImageTranslationAlignmentObservation();
        v179 = v335;
        swift_dynamicCast();
        goto LABEL_86;
      }

      __break(1u);
      goto LABEL_161;
    }

    type metadata accessor for TrackRectangleRequest(0);
    if (swift_dynamicCast())
    {
      v225 = v359;
      v226 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF650) + 48);
      *v336 = v225;
      if (*(v4 + 16))
      {
        sub_1A5B180A0(v4 + 32, v367);

        __swift_destroy_boxed_opaque_existential_1(v329);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
        v227 = type metadata accessor for RectangleObservation();
        v228 = v336;
        v229 = swift_dynamicCast();
        (*(*(v227 - 8) + 56))(&v228[v226], v229 ^ 1u, 1, v227);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v329);

        v230 = type metadata accessor for RectangleObservation();
        (*(*(v230 - 8) + 56))(&v336[v226], 1, 1, v230);
      }

      v181 = v336;
      goto LABEL_78;
    }

    type metadata accessor for DetectScreenGazeRequest();
    if (swift_dynamicCast() || (type metadata accessor for DetectDeviceGazeRequest(), swift_dynamicCast()))
    {
LABEL_128:
      v241 = *v367;
      v242 = sub_1A5B5C30C(v4, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

      __swift_destroy_boxed_opaque_existential_1(v329);
      v243 = v357;
      *v357 = v241;
      *(v243 + 1) = v242;
      goto LABEL_12;
    }

    goto LABEL_121;
  }

  *v334 = *&v366[0];
  if (*(v4 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF658);
    sub_1A5B180A0(v4 + 32, &v359);

    __swift_destroy_boxed_opaque_existential_1(v329);
    sub_1A5B063D4(&v359, v367);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
    type metadata accessor for ImageHomographicAlignmentObservation();
    v179 = v334;
    swift_dynamicCast();
    goto LABEL_86;
  }

  __break(1u);
LABEL_158:
  if (swift_dynamicCast())
  {
    v270 = *v367;
    v271 = *&v367[8];
    v272 = *&v367[48];
    v354 = *&v367[32];
    v355 = *&v367[16];
    v273 = sub_1A5B5C30C(v4, type metadata accessor for FaceObservation, sub_1A5B2A524, type metadata accessor for FaceObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v274 = v357;
    *v357 = v270;
    *(v274 + 2) = v271;
    v275 = v354;
    v274[1] = v355;
    v274[2] = v275;
    *(v274 + 6) = v272;
    *(v274 + 7) = v273;
    goto LABEL_12;
  }

LABEL_163:
  if (swift_dynamicCast())
  {
    v276 = *v367;
    v277 = *&v367[40];
    v354 = *&v367[24];
    v355 = *&v367[8];
    v278 = sub_1A5B5C30C(v4, type metadata accessor for RecognizedObjectObservation, sub_1A5B6936C, type metadata accessor for RecognizedObjectObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v279 = v357;
    *v357 = v276;
    v280 = v355;
    *(v279 + 24) = v354;
    *(v279 + 8) = v280;
    *(v279 + 5) = v277;
    *(v279 + 6) = v278;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v281 = *&v367[16];
    v282 = v339;
    *v339 = *v367;
    v282[1] = v281;
    v282[2] = *&v367[32];
    if (*(v4 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF638);
      sub_1A5B180A0(v4 + 32, v366);

      __swift_destroy_boxed_opaque_existential_1(v329);
      sub_1A5B063D4(v366, &v359);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      type metadata accessor for PixelBufferObservation();
      v179 = v339;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
  }

  else if (swift_dynamicCast())
  {
    v283 = v367[40];
    v284 = *&v367[48];
    v285 = v340;
    *v340 = v367[0];
    *(v285 + 8) = *&v367[8];
    *(v285 + 24) = *&v367[24];
    v285[40] = v283;
    *(v285 + 6) = v284;
    if (*(v4 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF630);
      sub_1A5B180A0(v4 + 32, v366);

      __swift_destroy_boxed_opaque_existential_1(v329);
      sub_1A5B063D4(v366, &v359);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      type metadata accessor for DetectionPrintObservation();
      v179 = v340;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_176;
  }

  if (swift_dynamicCast())
  {
    v286 = *&v367[16];
    v287 = v341;
    *v341 = *v367;
    v287[1] = v286;
    v287[2] = *&v367[32];
    if (*(v4 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF628);
      sub_1A5B180A0(v4 + 32, v366);

      __swift_destroy_boxed_opaque_existential_1(v329);
      sub_1A5B063D4(v366, &v359);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      type metadata accessor for PixelBufferObservation();
      v179 = v341;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_180;
  }

LABEL_176:
  if (swift_dynamicCast())
  {
    v288 = *&v367[16];
    v289 = v342;
    *v342 = *v367;
    v289[1] = v288;
    v289[2] = *&v367[32];
    if (*(v4 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF620);
      sub_1A5B180A0(v4 + 32, v366);

      __swift_destroy_boxed_opaque_existential_1(v329);
      sub_1A5B063D4(v366, &v359);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      type metadata accessor for PixelBufferObservation();
      v179 = v342;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_184;
  }

LABEL_180:
  if (swift_dynamicCast())
  {
    v290 = *&v367[40];
    v291 = v343;
    *v343 = v367[0];
    *(v291 + 8) = *&v367[8];
    *(v291 + 24) = *&v367[24];
    *(v291 + 5) = v290;
    if (*(v4 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF618);
      sub_1A5B180A0(v4 + 32, v366);

      __swift_destroy_boxed_opaque_existential_1(v329);
      sub_1A5B063D4(v366, &v359);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      type metadata accessor for ImageFingerprintsObservation();
      v179 = v343;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_188;
  }

LABEL_184:
  if (swift_dynamicCast())
  {
    v292 = *&v367[32];
    v293 = *&v367[16];
    v294 = v344;
    *v344 = *v367;
    v294[1] = v293;
    *(v294 + 4) = v292;
    if (*(v4 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF610);
      sub_1A5B180A0(v4 + 32, v366);

      __swift_destroy_boxed_opaque_existential_1(v329);
      sub_1A5B063D4(v366, &v359);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      type metadata accessor for FeaturePrintObservation();
      v179 = v344;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_192;
  }

LABEL_188:
  if (swift_dynamicCast())
  {
    v295 = *&v367[16];
    v296 = v345;
    *v345 = *v367;
    v296[1] = v295;
    v296[2] = *&v367[32];
    if (*(v4 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF608);
      sub_1A5B180A0(v4 + 32, v366);

      __swift_destroy_boxed_opaque_existential_1(v329);
      sub_1A5B063D4(v366, &v359);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      type metadata accessor for PixelBufferObservation();
      v179 = v345;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_195;
  }

LABEL_192:
  if (swift_dynamicCast())
  {
    goto LABEL_202;
  }

LABEL_195:
  if (swift_dynamicCast())
  {
    v359 = *v367;
    v360 = *&v367[16];
    v361 = *&v367[32];
    *&v362 = *&v367[48];
    v297 = sub_1A5B5C30C(v4, type metadata accessor for RecognizedObjectObservation, sub_1A5B6936C, type metadata accessor for RecognizedObjectObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v298 = v360;
    v299 = v357;
    *v357 = v359;
    v299[1] = v298;
    v299[2] = v361;
    *(v299 + 6) = v362;
    *(v299 + 7) = v297;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_202;
  }

  if (swift_dynamicCast())
  {
    v361 = *&v367[32];
    v362 = *&v367[48];
    v363 = v368;
    *&v364 = v369;
    v359 = *v367;
    v360 = *&v367[16];
    v300 = sub_1A5B5C30C(v4, type metadata accessor for RecognizedObjectObservation, sub_1A5B6936C, type metadata accessor for RecognizedObjectObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v301 = v362;
    v302 = v357;
    v357[2] = v361;
    v302[3] = v301;
    v302[4] = v363;
    v303 = v364;
    v304 = v360;
    *v302 = v359;
    v302[1] = v304;
    *(v302 + 10) = v303;
    *(v302 + 11) = v300;
    goto LABEL_12;
  }

  if (swift_dynamicCast() || swift_dynamicCast())
  {
LABEL_202:
    v305 = *&v367[32];
    v354 = *&v367[16];
    v355 = *v367;
    v306 = sub_1A5B5C30C(v4, type metadata accessor for RecognizedObjectObservation, sub_1A5B6936C, type metadata accessor for RecognizedObjectObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v307 = v357;
    v308 = v354;
    *v357 = v355;
    v307[1] = v308;
    *(v307 + 4) = v305;
    *(v307 + 5) = v306;
    goto LABEL_12;
  }

  type metadata accessor for TrackMaskRequest(0);
  if (swift_dynamicCast())
  {
    v309 = v359;
    v310 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4CD0) + 48);
    *v347 = v309;
    if (*(v4 + 16))
    {
      sub_1A5B180A0(v4 + 32, v367);

      __swift_destroy_boxed_opaque_existential_1(v329);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      v311 = type metadata accessor for PixelBufferObservation();
      v312 = v347;
      v313 = swift_dynamicCast();
      (*(*(v311 - 8) + 56))(&v312[v310], v313 ^ 1u, 1, v311);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v329);
      v319 = type metadata accessor for PixelBufferObservation();
      (*(*(v319 - 8) + 56))(&v347[v310], 1, 1, v319);
    }

    v181 = v347;
    goto LABEL_78;
  }

  if (swift_dynamicCast())
  {
LABEL_207:
    v314 = v367[0];
    v315 = *&v367[40];
    v354 = *&v367[24];
    v355 = *&v367[8];
    v316 = sub_1A5B5C30C(v4, type metadata accessor for ClassificationObservation, sub_1A5B6969C, type metadata accessor for ClassificationObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v317 = v357;
    *v357 = v314;
    v318 = v355;
    *(v317 + 24) = v354;
    *(v317 + 8) = v318;
    *(v317 + 5) = v315;
    *(v317 + 6) = v316;
    goto LABEL_12;
  }

  if (swift_dynamicCast() || swift_dynamicCast())
  {
LABEL_212:
    v320 = v367[0];
    v321 = v367[40];
    v322 = *&v367[48];
    v354 = *&v367[24];
    v355 = *&v367[8];
    v323 = sub_1A5B5C30C(v4, type metadata accessor for ClassificationObservation, sub_1A5B6969C, type metadata accessor for ClassificationObservation);

    __swift_destroy_boxed_opaque_existential_1(v329);
    v324 = v357;
    *v357 = v320;
    v325 = v355;
    *(v324 + 24) = v354;
    *(v324 + 8) = v325;
    *(v324 + 40) = v321;
    *(v324 + 6) = v322;
    *(v324 + 7) = v323;
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v326 = v367[40];
    v327 = *&v367[48];
    v328 = v348;
    *v348 = v367[0];
    *(v328 + 8) = *&v367[8];
    *(v328 + 24) = *&v367[24];
    v328[40] = v326;
    *(v328 + 6) = v327;
    if (*(v4 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF600);
      sub_1A5B180A0(v4 + 32, v366);

      __swift_destroy_boxed_opaque_existential_1(v329);
      sub_1A5B063D4(v366, &v359);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation();
      v179 = v348;
      swift_dynamicCast();
      goto LABEL_86;
    }

    __break(1u);
  }

  else
  {

    result = sub_1A5B180A0(v329, v346);
    if (v358)
    {
      __swift_destroy_boxed_opaque_existential_1(v329);
      v181 = v346;
      *(v346 + 40) = v358;
LABEL_78:
      swift_storeEnumTagMultiPayload();
      v96 = v181;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5B5C30C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), uint64_t (*a4)(void))
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v21 = MEMORY[0x1E69E7CC0];
    v19 = a3;
    (a3)(0, v12, 0, v9);
    v13 = v21;
    v14 = a1 + 32;
    do
    {
      sub_1A5B180A0(v14, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4510);
      swift_dynamicCast();
      v21 = v13;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        v19(v15 > 1, v16 + 1, 1);
        v13 = v21;
      }

      *(v13 + 16) = v16 + 1;
      sub_1A5B5C4C0(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, a4);
      v14 += 40;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_1A5B5C4C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A5B5C528()
{
  result = qword_1EB1EF6D0;
  if (!qword_1EB1EF6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1EF6D0);
  }

  return result;
}

uint64_t sub_1A5B5C574@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B5DE58(v2, v6, type metadata accessor for VisionResult);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v88 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v88;

      a1[3] = &type metadata for DetectHumanRectanglesRequest;
      a1[4] = sub_1A5B5EF2C();
      goto LABEL_91;
    case 2u:

      return sub_1A5B063D4(v6, a1);
    case 3u:
      v80 = *v6;
      v81 = *(v6 + 5);
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C8) + 48);
      a1[3] = &type metadata for CalculateImageAestheticsScoresRequest;
      a1[4] = sub_1A5B364B8();
      v82 = swift_allocObject();
      *a1 = v82;
      *(v82 + 16) = v80;
      v83 = *(v6 + 8);
      *(v82 + 40) = *(v6 + 24);
      *(v82 + 24) = v83;
      *(v82 + 56) = v81;
      v47 = type metadata accessor for ImageAestheticsScoresObservation;
      goto LABEL_71;
    case 4u:
      v58 = *(v6 + 3);
      v173 = *(v6 + 2);
      v174 = v58;
      v175 = *(v6 + 4);
      v59 = *(v6 + 1);
      v171 = *v6;
      v172 = v59;

      a1[3] = &type metadata for ClassifyImageRequest;
      a1[4] = sub_1A5B5EED8();
      goto LABEL_45;
    case 5u:
      v177 = *(v6 + 12);
      v98 = *(v6 + 5);
      v175 = *(v6 + 4);
      v176 = v98;
      v99 = *(v6 + 1);
      v171 = *v6;
      v172 = v99;
      v100 = *(v6 + 3);
      v173 = *(v6 + 2);
      v174 = v100;

      a1[3] = &type metadata for CoreMLRequest;
      a1[4] = sub_1A5B5EE84();
      goto LABEL_75;
    case 6u:
      v16 = *(v6 + 4);
      v112 = *v6;
      v169 = *(v6 + 1);
      v170 = v112;

      a1[3] = &type metadata for DetectAnimalBodyPoseRequest;
      a1[4] = sub_1A5B5EE30();
      goto LABEL_55;
    case 7u:
      v84 = *(v6 + 1);
      v171 = *v6;
      v172 = v84;
      v85 = *(v6 + 3);
      v173 = *(v6 + 2);
      v174 = v85;

      a1[3] = &type metadata for DetectBarcodesRequest;
      a1[4] = sub_1A5B5ED9C();
      goto LABEL_41;
    case 8u:
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C0) + 48);
      a1[3] = &type metadata for DetectContoursRequest;
      a1[4] = sub_1A5B5ED48();
      v119 = swift_allocObject();
      *a1 = v119;
      v120 = *(v6 + 3);
      *(v119 + 48) = *(v6 + 2);
      *(v119 + 64) = v120;
      *(v119 + 80) = *(v6 + 8);
      v121 = *(v6 + 1);
      *(v119 + 16) = *v6;
      *(v119 + 32) = v121;
      v122 = type metadata accessor for ContoursObservation;
      goto LABEL_86;
    case 9u:
      v73 = *(v6 + 4);
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B8) + 48);
      a1[3] = &type metadata for DetectDocumentSegmentationRequest;
      a1[4] = sub_1A5B1AD3C();
      v74 = swift_allocObject();
      *a1 = v74;
      v75 = *(v6 + 1);
      *(v74 + 16) = *v6;
      *(v74 + 32) = v75;
      *(v74 + 48) = v73;
      v72 = &qword_1EB1EF888;
      return sub_1A5B10168(&v6[v69], v72);
    case 0xAu:
      v12 = *v6;
      v13 = *(v6 + 5);
      v118 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v118;

      a1[3] = &type metadata for DetectFaceCaptureQualityRequest;
      a1[4] = sub_1A5B5ECB4();
      goto LABEL_94;
    case 0xBu:
      v19 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v55 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v55;

      a1[3] = &type metadata for DetectFaceLandmarksRequest;
      a1[4] = sub_1A5B5EC20();
      goto LABEL_26;
    case 0xCu:
      v68 = *(v6 + 4);
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B0) + 48);
      a1[3] = &type metadata for DetectHorizonRequest;
      a1[4] = sub_1A5B5EBCC();
      v70 = swift_allocObject();
      *a1 = v70;
      v71 = *(v6 + 1);
      *(v70 + 16) = *v6;
      *(v70 + 32) = v71;
      *(v70 + 48) = v68;
      v72 = &qword_1EB1EF870;
      return sub_1A5B10168(&v6[v69], v72);
    case 0xDu:
      v109 = v6[32];
      v110 = *(v6 + 5);
      v111 = *v6;
      v169 = *(v6 + 1);
      v170 = v111;

      a1[3] = &type metadata for DetectHumanBodyPoseRequest;
      a1[4] = sub_1A5B5EB78();
      goto LABEL_80;
    case 0xEu:
      v36 = *v6;

      a1[3] = type metadata accessor for DetectHumanBodyPose3DRequest();
      v37 = &qword_1EB1EEA20;
      v38 = type metadata accessor for DetectHumanBodyPose3DRequest;
      goto LABEL_67;
    case 0xFu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A8);

      a1[3] = type metadata accessor for DetectHumanHandPoseRequest();
      a1[4] = sub_1A5B5E6AC(&qword_1EB1EF2E0, type metadata accessor for DetectHumanHandPoseRequest);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      return sub_1A5B5C4C0(v6, boxed_opaque_existential_1, type metadata accessor for DetectHumanHandPoseRequest);
    case 0x10u:
      v42 = v6[32];
      v43 = *(v6 + 5);
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A0) + 48);
      a1[3] = &type metadata for DetectLensSmudgeRequest;
      a1[4] = sub_1A5B5EAD0();
      v45 = swift_allocObject();
      *a1 = v45;
      v46 = *(v6 + 1);
      *(v45 + 16) = *v6;
      *(v45 + 32) = v46;
      *(v45 + 48) = v42;
      *(v45 + 56) = v43;
      v47 = type metadata accessor for SmudgeObservation;
      goto LABEL_71;
    case 0x11u:
      v90 = *(v6 + 3);
      v173 = *(v6 + 2);
      v174 = v90;
      v175 = *(v6 + 4);
      v91 = *(v6 + 1);
      v171 = *v6;
      v172 = v91;

      a1[3] = &type metadata for DetectRectanglesRequest;
      a1[4] = sub_1A5B5EA7C();
      goto LABEL_45;
    case 0x12u:
      v114 = *(v6 + 3);
      v173 = *(v6 + 2);
      v174 = v114;
      v175 = *(v6 + 4);
      *&v176 = *(v6 + 10);
      v115 = *(v6 + 1);
      v171 = *v6;
      v172 = v115;

      a1[3] = &type metadata for DetectTextRectanglesRequest;
      a1[4] = sub_1A5B5E9E8();
      goto LABEL_57;
    case 0x13u:
      v36 = *v6;

      a1[3] = type metadata accessor for DetectTrajectoriesRequest();
      v37 = &unk_1EB1F00A0;
      v38 = type metadata accessor for DetectTrajectoriesRequest;
      goto LABEL_67;
    case 0x14u:
      v97 = *(v6 + 4);
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF688) + 48);
      a1[3] = &type metadata for GenerateAttentionBasedSaliencyImageRequest;
      a1[4] = sub_1A5B5E994();
      goto LABEL_73;
    case 0x15u:
      v104 = *v6;
      v105 = v6[40];
      v106 = *(v6 + 6);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF680) + 48);
      a1[3] = &type metadata for GenerateImageFeaturePrintRequest;
      a1[4] = sub_1A5B5E940();
      v107 = swift_allocObject();
      *a1 = v107;
      *(v107 + 16) = v104;
      v108 = *(v6 + 8);
      *(v107 + 40) = *(v6 + 24);
      *(v107 + 24) = v108;
      *(v107 + 56) = v105;
      *(v107 + 64) = v106;
      v35 = type metadata accessor for FeaturePrintObservation;
      goto LABEL_83;
    case 0x16u:
      v76 = *(v6 + 4);
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF668) + 48);
      a1[3] = &type metadata for GenerateForegroundInstanceMaskRequest;
      a1[4] = sub_1A5B5E8EC();
      goto LABEL_64;
    case 0x17u:
      v97 = *(v6 + 4);
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF678) + 48);
      a1[3] = &type metadata for GenerateObjectnessBasedSaliencyImageRequest;
      a1[4] = sub_1A5B5E898();
LABEL_73:
      v139 = swift_allocObject();
      *a1 = v139;
      v140 = *(v6 + 1);
      *(v139 + 16) = *v6;
      *(v139 + 32) = v140;
      *(v139 + 48) = v97;
      v52 = type metadata accessor for SaliencyImageObservation;
      goto LABEL_77;
    case 0x18u:
      v77 = *v6;
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF670) + 48);
      a1[3] = type metadata accessor for GeneratePersonSegmentationRequest(0);
      a1[4] = sub_1A5B5E6AC(&qword_1EB1EF818, type metadata accessor for GeneratePersonSegmentationRequest);
      *a1 = v77;
      v52 = type metadata accessor for PixelBufferObservation;
      goto LABEL_77;
    case 0x19u:
      v76 = *(v6 + 4);
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF660) + 48);
      a1[3] = &type metadata for GeneratePersonInstanceMaskRequest;
      a1[4] = sub_1A5B3152C();
LABEL_64:
      v126 = swift_allocObject();
      *a1 = v126;
      v127 = *(v6 + 1);
      *(v126 + 16) = *v6;
      *(v126 + 32) = v127;
      *(v126 + 48) = v76;
      v72 = &qword_1EB1EF810;
      return sub_1A5B10168(&v6[v69], v72);
    case 0x1Au:
      v109 = v6[32];
      v110 = *(v6 + 5);
      v151 = *v6;
      v169 = *(v6 + 1);
      v170 = v151;

      a1[3] = &type metadata for RecognizeAnimalsRequest;
      a1[4] = sub_1A5B5E844();
LABEL_80:
      result = swift_allocObject();
      *a1 = result;
      v152 = v169;
      *(result + 16) = v170;
      *(result + 32) = v152;
      *(result + 48) = v109;
      *(result + 56) = v110;
      return result;
    case 0x1Bu:
      v40 = *(v6 + 3);
      v173 = *(v6 + 2);
      v174 = v40;
      v175 = *(v6 + 4);
      v41 = *(v6 + 1);
      v171 = *v6;
      v172 = v41;

      a1[3] = &type metadata for RecognizeTextRequest;
      a1[4] = sub_1A5B5E79C();
LABEL_45:
      result = swift_allocObject();
      *a1 = result;
      v92 = v174;
      *(result + 48) = v173;
      *(result + 64) = v92;
      *(result + 80) = v175;
      v93 = v172;
      *(result + 16) = v171;
      *(result + 32) = v93;
      return result;
    case 0x1Cu:
      v177 = *(v6 + 12);
      v141 = *(v6 + 5);
      v175 = *(v6 + 4);
      v176 = v141;
      v142 = *(v6 + 1);
      v171 = *v6;
      v172 = v142;
      v143 = *(v6 + 3);
      v173 = *(v6 + 2);
      v174 = v143;

      a1[3] = &type metadata for RecognizeDocumentsRequest;
      a1[4] = sub_1A5B5E7F0();
LABEL_75:
      result = swift_allocObject();
      *a1 = result;
      v144 = v176;
      *(result + 80) = v175;
      *(result + 96) = v144;
      *(result + 112) = v177;
      v145 = v172;
      *(result + 16) = v171;
      *(result + 32) = v145;
      v146 = v174;
      *(result + 48) = v173;
      *(result + 64) = v146;
      return result;
    case 0x1Du:
      v147 = *v6;
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF658) + 48);
      a1[3] = type metadata accessor for TrackHomographicImageRegistrationRequest();
      a1[4] = sub_1A5B5E6AC(&qword_1EB1EF7F0, type metadata accessor for TrackHomographicImageRegistrationRequest);
      *a1 = v147;
      v52 = type metadata accessor for ImageHomographicAlignmentObservation;
      goto LABEL_77;
    case 0x1Eu:
      v123 = *v6;
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF698) + 48);
      a1[3] = type metadata accessor for TrackObjectRequest(0);
      a1[4] = sub_1A5B5E6AC(&qword_1EB1EF7E0, type metadata accessor for TrackObjectRequest);
      *a1 = v123;
      v72 = &qword_1EB1EF7E8;
      return sub_1A5B10168(&v6[v69], v72);
    case 0x1Fu:
      v89 = *v6;
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF690) + 48);
      a1[3] = type metadata accessor for TrackOpticalFlowRequest(0);
      a1[4] = sub_1A5B5E6AC(&qword_1EB1EF7D0, type metadata accessor for TrackOpticalFlowRequest);
      *a1 = v89;
      v72 = &qword_1EB1EF7D8;
      return sub_1A5B10168(&v6[v69], v72);
    case 0x20u:
      v124 = *v6;
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF650) + 48);
      a1[3] = type metadata accessor for TrackRectangleRequest(0);
      a1[4] = sub_1A5B5E6AC(&qword_1EB1EF7C0, type metadata accessor for TrackRectangleRequest);
      *a1 = v124;
      v72 = &qword_1EB1EF7C8;
      return sub_1A5B10168(&v6[v69], v72);
    case 0x21u:
      v50 = *v6;
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F48B0) + 48);
      a1[3] = type metadata accessor for TrackTranslationalImageRegistrationRequest();
      a1[4] = sub_1A5B5E6AC(&unk_1EB1F48C0, type metadata accessor for TrackTranslationalImageRegistrationRequest);
      *a1 = v50;
      v52 = type metadata accessor for ImageTranslationAlignmentObservation;
      goto LABEL_77;
    case 0x22u:
      v36 = *v6;

      a1[3] = type metadata accessor for DetectScreenGazeRequest();
      v37 = &unk_1EB1EF560;
      v38 = type metadata accessor for DetectScreenGazeRequest;
      goto LABEL_67;
    case 0x23u:
      v36 = *v6;

      a1[3] = type metadata accessor for DetectDeviceGazeRequest();
      v37 = &unk_1EB1EF7B8;
      v38 = type metadata accessor for DetectDeviceGazeRequest;
      goto LABEL_67;
    case 0x24u:
      v36 = *v6;

      a1[3] = type metadata accessor for DetectCameraGazeRequest();
      v37 = &unk_1EB1EF7B0;
      v38 = type metadata accessor for DetectCameraGazeRequest;
      goto LABEL_67;
    case 0x25u:
      v19 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v20 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v20;

      a1[3] = &type metadata for GenerateFacePrintRequest;
      a1[4] = sub_1A5B5E748();
      goto LABEL_26;
    case 0x26u:
      v148 = *v6;
      v149 = *(v6 + 8);
      v168 = *(v6 + 24);
      v169 = *(v6 + 40);
      v170 = v149;

      a1[3] = &type metadata for GenerateTorsoPrintRequest;
      a1[4] = sub_1A5B5E6F4();
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v148;
      *(result + 40) = v168;
      v150 = v169;
      *(result + 24) = v170;
      *(result + 56) = v150;
      return result;
    case 0x27u:
      v36 = *v6;

      a1[3] = type metadata accessor for CalculateFaceLivelinessScoreRequest();
      v37 = &unk_1EB1EF798;
      v38 = type metadata accessor for CalculateFaceLivelinessScoreRequest;
LABEL_67:
      result = sub_1A5B5E6AC(v37, v38);
      a1[4] = result;
      *a1 = v36;
      return result;
    case 0x28u:
      v60 = *(v6 + 4);
      v61 = *(v6 + 5);
      v62 = *v6;
      v169 = *(v6 + 1);
      v170 = v62;

      a1[3] = &type metadata for AlignFaceRectanglesRequest;
      a1[4] = sub_1A5B5E658();
      result = swift_allocObject();
      *a1 = result;
      v63 = v169;
      *(result + 16) = v170;
      *(result + 32) = v63;
      *(result + 48) = v60;
      *(result + 56) = v61;
      return result;
    case 0x29u:
      v94 = *(v6 + 4);
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF640) + 48);
      a1[3] = &type metadata for CalculateExposureScoreRequest;
      a1[4] = sub_1A5B133D4();
      v95 = swift_allocObject();
      *a1 = v95;
      v96 = *(v6 + 1);
      *(v95 + 16) = *v6;
      *(v95 + 32) = v96;
      *(v95 + 48) = v94;
      v52 = type metadata accessor for ImageExposureObservation;
      goto LABEL_77;
    case 0x2Au:
      v128 = *v6;
      v129 = *(v6 + 1);
      v130 = *(v6 + 6);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF648) + 48);
      a1[3] = &type metadata for CalculateBlurScoreRequest;
      a1[4] = sub_1A5B5E508();
      v131 = swift_allocObject();
      *a1 = v131;
      *(v131 + 16) = v128;
      *(v131 + 24) = v129;
      v132 = *(v6 + 2);
      *(v131 + 32) = *(v6 + 1);
      *(v131 + 48) = v132;
      *(v131 + 64) = v130;
      v35 = type metadata accessor for ImageBlurObservation;
      goto LABEL_83;
    case 0x2Bu:
      v8 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v15 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v15;

      a1[3] = &type metadata for ClassifyCityNatureImageRequest;
      a1[4] = sub_1A5B5E604();
      goto LABEL_91;
    case 0x2Cu:
      v19 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v49 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v49;

      a1[3] = &type metadata for ClassifyFaceAttributesRequest;
      a1[4] = sub_1A5B0F9A8();
LABEL_26:
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v19;
      goto LABEL_92;
    case 0x2Du:
      v8 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v125 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v125;

      a1[3] = &type metadata for ClassifyImageAestheticsRequest;
      a1[4] = sub_1A5B22BB4();
      goto LABEL_91;
    case 0x2Eu:
      v8 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v163 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v163;

      a1[3] = &type metadata for ClassifyJunkImageRequest;
      a1[4] = sub_1A5B38DD8();
      goto LABEL_91;
    case 0x2Fu:
      v27 = *v6;
      v13 = *(v6 + 5);
      v28 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v28;

      a1[3] = &type metadata for ClassifyMemeImageRequest;
      a1[4] = sub_1A5B5E5B0();
      goto LABEL_23;
    case 0x30u:
      v27 = *v6;
      v13 = *(v6 + 5);
      v53 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v53;

      a1[3] = &type metadata for ClassifyPotentialLandmarkRequest;
      a1[4] = sub_1A5B5E55C();
      goto LABEL_23;
    case 0x31u:
      v56 = *(v6 + 1);
      v171 = *v6;
      v172 = v56;
      v57 = *(v6 + 3);
      v173 = *(v6 + 2);
      v174 = v57;

      a1[3] = &type metadata for DetectFaceGazeRequest;
      a1[4] = sub_1A5B5E4B4();
LABEL_41:
      result = swift_allocObject();
      *a1 = result;
      v86 = v172;
      *(result + 16) = v171;
      *(result + 32) = v86;
      v87 = v174;
      *(result + 48) = v173;
      *(result + 64) = v87;
      return result;
    case 0x32u:
      v12 = *v6;
      v13 = *(v6 + 5);
      v14 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v14;

      a1[3] = &type metadata for DetectFacePoseRequest;
      a1[4] = sub_1A5B2A9D0();
      goto LABEL_94;
    case 0x33u:
      v12 = *v6;
      v13 = *(v6 + 5);
      v165 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v165;

      a1[3] = &type metadata for DetectFaceExpressionsRequest;
      a1[4] = sub_1A5B4A7B4();
      goto LABEL_94;
    case 0x34u:
      v161 = *(v6 + 1);
      v171 = *v6;
      v172 = v161;
      v173 = *(v6 + 2);
      *&v174 = *(v6 + 6);

      a1[3] = &type metadata for DetectHumanHeadRectanglesRequest;
      a1[4] = sub_1A5B5EB24();
      goto LABEL_89;
    case 0x35u:
      v21 = *v6;
      v22 = *(v6 + 2);
      v23 = *(v6 + 6);
      v24 = *(v6 + 1);
      v169 = *(v6 + 2);
      v170 = v24;

      a1[3] = &type metadata for GenerateFaceSegmentsRequest;
      a1[4] = sub_1A5B5E460();
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v21;
      *(result + 24) = v22;
      v26 = v169;
      *(result + 32) = v170;
      *(result + 48) = v26;
      *(result + 64) = v23;
      return result;
    case 0x36u:
      v12 = *v6;
      v13 = *(v6 + 5);
      v153 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v153;

      a1[3] = &type metadata for GenerateAnimalPrintRequest;
      a1[4] = sub_1A5B5E40C();
LABEL_94:
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v12;
      goto LABEL_95;
    case 0x37u:
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF638) + 48);
      a1[3] = &type metadata for GenerateAnimalSegmentationRequest;
      a1[4] = sub_1A5B5E3B8();
      goto LABEL_85;
    case 0x38u:
      v29 = *v6;
      v30 = v6[40];
      v31 = *(v6 + 6);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF630) + 48);
      a1[3] = &type metadata for GenerateDetectionPrintRequest;
      a1[4] = sub_1A5B3E06C();
      v33 = swift_allocObject();
      *a1 = v33;
      *(v33 + 16) = v29;
      v34 = *(v6 + 8);
      *(v33 + 40) = *(v6 + 24);
      *(v33 + 24) = v34;
      *(v33 + 56) = v30;
      *(v33 + 64) = v31;
      v35 = type metadata accessor for DetectionPrintObservation;
      goto LABEL_83;
    case 0x39u:
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF628) + 48);
      a1[3] = &type metadata for GenerateGlassesSegmentationRequest;
      a1[4] = sub_1A5B48734();
      goto LABEL_85;
    case 0x3Au:
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF620) + 48);
      a1[3] = &type metadata for GenerateHumanAttributesSegmentationRequest;
      a1[4] = sub_1A5B5E364();
      goto LABEL_85;
    case 0x3Bu:
      v133 = *v6;
      v134 = *(v6 + 5);
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF618) + 48);
      a1[3] = &type metadata for GenerateImageFingerprintsRequest;
      a1[4] = sub_1A5B5E310();
      v135 = swift_allocObject();
      *a1 = v135;
      *(v135 + 16) = v133;
      v136 = *(v6 + 8);
      *(v135 + 40) = *(v6 + 24);
      *(v135 + 24) = v136;
      *(v135 + 56) = v134;
      v47 = type metadata accessor for ImageFingerprintsObservation;
LABEL_71:
      v137 = v47;
      v138 = &v6[v44];
      goto LABEL_87;
    case 0x3Cu:
      v64 = *(v6 + 4);
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF610) + 48);
      a1[3] = &type metadata for GenerateImagePrintRequest;
      a1[4] = sub_1A5B5E2BC();
      v65 = swift_allocObject();
      *a1 = v65;
      v66 = *(v6 + 1);
      *(v65 + 16) = *v6;
      *(v65 + 32) = v66;
      *(v65 + 48) = v64;
      v52 = type metadata accessor for FeaturePrintObservation;
LABEL_77:
      v137 = v52;
      v138 = &v6[v51];
      goto LABEL_87;
    case 0x3Du:
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF608) + 48);
      a1[3] = &type metadata for GenerateSkySegmentationRequest;
      a1[4] = sub_1A5B5E268();
LABEL_85:
      v159 = swift_allocObject();
      *a1 = v159;
      v160 = *(v6 + 1);
      v159[1] = *v6;
      v159[2] = v160;
      v159[3] = *(v6 + 2);
      v122 = type metadata accessor for PixelBufferObservation;
LABEL_86:
      v137 = v122;
      v138 = &v6[v54];
      goto LABEL_87;
    case 0x3Eu:
      v16 = *(v6 + 4);
      v103 = *v6;
      v169 = *(v6 + 1);
      v170 = v103;

      a1[3] = &type metadata for RecognizeAnimalFacesRequest;
      a1[4] = sub_1A5B5E214();
      goto LABEL_55;
    case 0x3Fu:
      v79 = *(v6 + 1);
      v171 = *v6;
      v172 = v79;
      v173 = *(v6 + 2);
      *&v174 = *(v6 + 6);

      a1[3] = &type metadata for RecognizeDocumentElementsRequest;
      a1[4] = sub_1A5B5E1C0();
      goto LABEL_89;
    case 0x40u:
      v16 = *(v6 + 4);
      v67 = *v6;
      v169 = *(v6 + 1);
      v170 = v67;

      a1[3] = &type metadata for RecognizeFoodAndDrinkRequest;
      a1[4] = sub_1A5B5E16C();
      goto LABEL_55;
    case 0x41u:
      v101 = *(v6 + 3);
      v173 = *(v6 + 2);
      v174 = v101;
      v175 = *(v6 + 4);
      *&v176 = *(v6 + 10);
      v102 = *(v6 + 1);
      v171 = *v6;
      v172 = v102;

      a1[3] = &type metadata for RecognizeObjectsRequest;
      a1[4] = sub_1A5B5E118();
LABEL_57:
      result = swift_allocObject();
      *a1 = result;
      v116 = v174;
      *(result + 48) = v173;
      *(result + 64) = v116;
      *(result + 80) = v175;
      *(result + 96) = v176;
      v117 = v172;
      *(result + 16) = v171;
      *(result + 32) = v117;
      return result;
    case 0x42u:
      v16 = *(v6 + 4);
      v17 = *v6;
      v169 = *(v6 + 1);
      v170 = v17;

      a1[3] = &type metadata for RecognizePosteriorAnimalHeadsRequest;
      a1[4] = sub_1A5B5E0C4();
      goto LABEL_55;
    case 0x43u:
      v16 = *(v6 + 4);
      v48 = *v6;
      v169 = *(v6 + 1);
      v170 = v48;

      a1[3] = &type metadata for RecognizeSportBallsRequest;
      a1[4] = sub_1A5B5E070();
LABEL_55:
      result = swift_allocObject();
      *a1 = result;
      v113 = v169;
      *(result + 16) = v170;
      *(result + 32) = v113;
      *(result + 48) = v16;
      return result;
    case 0x44u:
      v167 = *v6;
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4CD0) + 48);
      a1[3] = type metadata accessor for TrackMaskRequest(0);
      a1[4] = sub_1A5B5E6AC(&unk_1EB1F4CF0, type metadata accessor for TrackMaskRequest);
      *a1 = v167;
      v72 = &qword_1EB1EF6F8;
      return sub_1A5B10168(&v6[v69], v72);
    case 0x45u:
      v27 = *v6;
      v13 = *(v6 + 5);
      v39 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v39;

      a1[3] = &type metadata for SVYvzEtX1JlUdu8xx5qhDIRequest;
      a1[4] = sub_1A5B5E01C();
LABEL_23:
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v27;
LABEL_95:
      v166 = v170;
      *(result + 40) = v169;
      *(result + 24) = v166;
      *(result + 56) = v13;
      return result;
    case 0x46u:
      v8 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v11 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v11;

      a1[3] = &type metadata for S5kJNH3eYuyaLxNpZr5Z7ziRequest;
      a1[4] = sub_1A5B5DFC8();
      goto LABEL_91;
    case 0x47u:
      v8 = *v6;
      v9 = v6[40];
      v10 = *(v6 + 6);
      v18 = *(v6 + 8);
      v169 = *(v6 + 24);
      v170 = v18;

      a1[3] = &type metadata for S6Mb1ME89lyW3HpahkEygIGRequest;
      a1[4] = sub_1A5B5DF74();
LABEL_91:
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v8;
LABEL_92:
      v164 = v170;
      *(result + 40) = v169;
      *(result + 24) = v164;
      *(result + 56) = v9;
      *(result + 64) = v10;
      break;
    case 0x48u:
      v154 = *v6;
      v155 = v6[40];
      v156 = *(v6 + 6);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF600) + 48);
      a1[3] = &type metadata for S1JC7R3k4455fKQz0dY1VhQRequest;
      a1[4] = sub_1A5B5DEC0();
      v157 = swift_allocObject();
      *a1 = v157;
      *(v157 + 16) = v154;
      v158 = *(v6 + 8);
      *(v157 + 40) = *(v6 + 24);
      *(v157 + 24) = v158;
      *(v157 + 56) = v155;
      *(v157 + 64) = v156;
      v35 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation;
LABEL_83:
      v137 = v35;
      v138 = &v6[v32];
LABEL_87:
      result = sub_1A5B5DF14(v138, v137);
      break;
    default:
      v7 = *(v6 + 1);
      v171 = *v6;
      v172 = v7;
      v173 = *(v6 + 2);
      *&v174 = *(v6 + 6);

      a1[3] = &type metadata for DetectFaceRectanglesRequest;
      a1[4] = sub_1A5B5EF80();
LABEL_89:
      result = swift_allocObject();
      *a1 = result;
      v162 = v172;
      *(result + 16) = v171;
      *(result + 32) = v162;
      *(result + 48) = v173;
      *(result + 64) = v174;
      break;
  }

  return result;
}

uint64_t sub_1A5B5DE58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A5B5DEC0()
{
  result = qword_1EB1EF6D8;
  if (!qword_1EB1EF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF6D8);
  }

  return result;
}

uint64_t sub_1A5B5DF14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A5B5DF74()
{
  result = qword_1EB1EF6E0;
  if (!qword_1EB1EF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF6E0);
  }

  return result;
}

unint64_t sub_1A5B5DFC8()
{
  result = qword_1EB1EF6E8;
  if (!qword_1EB1EF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF6E8);
  }

  return result;
}

unint64_t sub_1A5B5E01C()
{
  result = qword_1EB1EF6F0;
  if (!qword_1EB1EF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF6F0);
  }

  return result;
}

unint64_t sub_1A5B5E070()
{
  result = qword_1EB1EF700;
  if (!qword_1EB1EF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF700);
  }

  return result;
}

unint64_t sub_1A5B5E0C4()
{
  result = qword_1EB1EF708;
  if (!qword_1EB1EF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF708);
  }

  return result;
}

unint64_t sub_1A5B5E118()
{
  result = qword_1EB1EF710;
  if (!qword_1EB1EF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF710);
  }

  return result;
}

unint64_t sub_1A5B5E16C()
{
  result = qword_1EB1EF718;
  if (!qword_1EB1EF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF718);
  }

  return result;
}

unint64_t sub_1A5B5E1C0()
{
  result = qword_1EB1EF720;
  if (!qword_1EB1EF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF720);
  }

  return result;
}

unint64_t sub_1A5B5E214()
{
  result = qword_1EB1EF728;
  if (!qword_1EB1EF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF728);
  }

  return result;
}

unint64_t sub_1A5B5E268()
{
  result = qword_1EB1EF730;
  if (!qword_1EB1EF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF730);
  }

  return result;
}

unint64_t sub_1A5B5E2BC()
{
  result = qword_1EB1EF738;
  if (!qword_1EB1EF738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF738);
  }

  return result;
}

unint64_t sub_1A5B5E310()
{
  result = qword_1EB1EF740;
  if (!qword_1EB1EF740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF740);
  }

  return result;
}

unint64_t sub_1A5B5E364()
{
  result = qword_1EB1EF748;
  if (!qword_1EB1EF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF748);
  }

  return result;
}

unint64_t sub_1A5B5E3B8()
{
  result = qword_1EB1EF750;
  if (!qword_1EB1EF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF750);
  }

  return result;
}

unint64_t sub_1A5B5E40C()
{
  result = qword_1EB1EF758;
  if (!qword_1EB1EF758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF758);
  }

  return result;
}

unint64_t sub_1A5B5E460()
{
  result = qword_1EB1EF760;
  if (!qword_1EB1EF760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF760);
  }

  return result;
}

unint64_t sub_1A5B5E4B4()
{
  result = qword_1EB1EF768;
  if (!qword_1EB1EF768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF768);
  }

  return result;
}

unint64_t sub_1A5B5E508()
{
  result = qword_1EB1EF770;
  if (!qword_1EB1EF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF770);
  }

  return result;
}

unint64_t sub_1A5B5E55C()
{
  result = qword_1EB1EF778;
  if (!qword_1EB1EF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF778);
  }

  return result;
}

unint64_t sub_1A5B5E5B0()
{
  result = qword_1EB1EF780;
  if (!qword_1EB1EF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF780);
  }

  return result;
}

unint64_t sub_1A5B5E604()
{
  result = qword_1EB1EF788;
  if (!qword_1EB1EF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF788);
  }

  return result;
}

unint64_t sub_1A5B5E658()
{
  result = qword_1EB1EF790;
  if (!qword_1EB1EF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF790);
  }

  return result;
}

uint64_t sub_1A5B5E6AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A5B5E6F4()
{
  result = qword_1EB1EF7A0;
  if (!qword_1EB1EF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF7A0);
  }

  return result;
}

unint64_t sub_1A5B5E748()
{
  result = qword_1EB1EF7A8;
  if (!qword_1EB1EF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF7A8);
  }

  return result;
}

unint64_t sub_1A5B5E79C()
{
  result = qword_1EB1EF7F8;
  if (!qword_1EB1EF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF7F8);
  }

  return result;
}

unint64_t sub_1A5B5E7F0()
{
  result = qword_1EB1EF800;
  if (!qword_1EB1EF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF800);
  }

  return result;
}

unint64_t sub_1A5B5E844()
{
  result = qword_1EB1EF808;
  if (!qword_1EB1EF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF808);
  }

  return result;
}

unint64_t sub_1A5B5E898()
{
  result = qword_1EB1EF820;
  if (!qword_1EB1EF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF820);
  }

  return result;
}

unint64_t sub_1A5B5E8EC()
{
  result = qword_1EB1EF828;
  if (!qword_1EB1EF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF828);
  }

  return result;
}

unint64_t sub_1A5B5E940()
{
  result = qword_1EB1EF830;
  if (!qword_1EB1EF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF830);
  }

  return result;
}

unint64_t sub_1A5B5E994()
{
  result = qword_1EB1EF838;
  if (!qword_1EB1EF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF838);
  }

  return result;
}

unint64_t sub_1A5B5E9E8()
{
  result = qword_1EB1EF840;
  if (!qword_1EB1EF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF840);
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

unint64_t sub_1A5B5EA7C()
{
  result = qword_1EB1EF848;
  if (!qword_1EB1EF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF848);
  }

  return result;
}

unint64_t sub_1A5B5EAD0()
{
  result = qword_1EB1EF850;
  if (!qword_1EB1EF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF850);
  }

  return result;
}

unint64_t sub_1A5B5EB24()
{
  result = qword_1EB1EF858;
  if (!qword_1EB1EF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF858);
  }

  return result;
}

unint64_t sub_1A5B5EB78()
{
  result = qword_1EB1EF860;
  if (!qword_1EB1EF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF860);
  }

  return result;
}

unint64_t sub_1A5B5EBCC()
{
  result = qword_1EB1EF868;
  if (!qword_1EB1EF868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF868);
  }

  return result;
}

unint64_t sub_1A5B5EC20()
{
  result = qword_1EB1EF878;
  if (!qword_1EB1EF878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF878);
  }

  return result;
}

uint64_t objectdestroy_53Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

unint64_t sub_1A5B5ECB4()
{
  result = qword_1EB1EF880;
  if (!qword_1EB1EF880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF880);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_1A5B5ED48()
{
  result = qword_1EB1EF890;
  if (!qword_1EB1EF890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF890);
  }

  return result;
}

unint64_t sub_1A5B5ED9C()
{
  result = qword_1EB1EF898;
  if (!qword_1EB1EF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF898);
  }

  return result;
}

uint64_t objectdestroy_59Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t sub_1A5B5EE30()
{
  result = qword_1EB1EF8A0;
  if (!qword_1EB1EF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF8A0);
  }

  return result;
}

unint64_t sub_1A5B5EE84()
{
  result = qword_1EB1F2F80;
  if (!qword_1EB1F2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F2F80);
  }

  return result;
}

unint64_t sub_1A5B5EED8()
{
  result = qword_1EB1EF8A8;
  if (!qword_1EB1EF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF8A8);
  }

  return result;
}

unint64_t sub_1A5B5EF2C()
{
  result = qword_1EB1EF8B0;
  if (!qword_1EB1EF8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF8B0);
  }

  return result;
}

unint64_t sub_1A5B5EF80()
{
  result = qword_1EB1EE670;
  if (!qword_1EB1EE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EE670);
  }

  return result;
}

uint64_t sub_1A5B5EFD4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v177 = a1;
  v169 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation();
  MEMORY[0x1EEE9AC00](v169);
  v167 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v170 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v168 = &v141 - v7;
  v166 = type metadata accessor for ImageFingerprintsObservation();
  MEMORY[0x1EEE9AC00](v166);
  v165 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for DetectionPrintObservation();
  MEMORY[0x1EEE9AC00](v164);
  v163 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for ImageExposureObservation();
  MEMORY[0x1EEE9AC00](v162);
  v161 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for ImageBlurObservation();
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for ImageTranslationAlignmentObservation();
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v159 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v157 = &v141 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7D8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v154 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v153 = &v141 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7E8);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v152 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v151 = &v141 - v24;
  v150 = type metadata accessor for ImageHomographicAlignmentObservation();
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for PixelBufferObservation();
  v147 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v175 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF810);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v148 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v146 = &v141 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v145 = &v141 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v144 = &v141 - v34;
  v173 = type metadata accessor for FeaturePrintObservation();
  MEMORY[0x1EEE9AC00](v173);
  v174 = &v141 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for SaliencyImageObservation();
  MEMORY[0x1EEE9AC00](v171);
  v172 = &v141 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for SmudgeObservation();
  MEMORY[0x1EEE9AC00](v141);
  v38 = &v141 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF870);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v143 = &v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v142 = &v141 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF888);
  v44 = MEMORY[0x1EEE9AC00](v43 - 8);
  v46 = &v141 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v141 - v47;
  v49 = type metadata accessor for ContoursObservation(0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v141 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ImageAestheticsScoresObservation();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v141 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v141 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B5DE58(v2, v57, type metadata accessor for VisionResult);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v59 = *(v57 + 7);

      v60 = &unk_1EB1EF350;
      goto LABEL_45;
    case 2u:

      v92 = v177;
      *v177 = 0u;
      *(v92 + 1) = 0u;
      return __swift_destroy_boxed_opaque_existential_1(v57);
    case 3u:

      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C8);
      v78 = type metadata accessor for ImageAestheticsScoresObservation;
      sub_1A5B5C4C0(&v57[*(v95 + 48)], v54, type metadata accessor for ImageAestheticsScoresObservation);
      v80 = v177;
      v177[3] = v52;
      goto LABEL_83;
    case 4u:
      v59 = *(v57 + 10);
      goto LABEL_30;
    case 5u:
      v99 = *(v57 + 6);
      v85 = *(v57 + 13);

      swift_unknownObjectRelease();
      v86 = &unk_1EB1EF928;
      goto LABEL_47;
    case 6u:
      v59 = *(v57 + 5);

      v60 = &unk_1EB1EF920;
      goto LABEL_45;
    case 7u:
      v58 = *(v57 + 8);

      v82 = &unk_1EB1EF918;
      goto LABEL_26;
    case 8u:

      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C0);
      v78 = type metadata accessor for ContoursObservation;
      sub_1A5B5C4C0(&v57[*(v104 + 48)], v51, type metadata accessor for ContoursObservation);
      v105 = v177;
      v177[3] = v49;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v105);
      v107 = v51;
      goto LABEL_84;
    case 9u:

      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B8);
      sub_1A5B60994(&v57[*(v89 + 48)], v48, &qword_1EB1EF888);
      sub_1A5B31A34(v48, v46, &qword_1EB1EF888);
      v90 = type metadata accessor for DetectedDocumentObservation();
      if ((*(*(v90 - 8) + 48))(v46, 1, v90) == 1)
      {
        v68 = &qword_1EB1EF888;
        sub_1A5B10168(v48, &qword_1EB1EF888);
        v91 = v46;
        goto LABEL_61;
      }

      v137 = v177;
      v177[3] = v90;
      v138 = __swift_allocate_boxed_opaque_existential_1(v137);
      sub_1A5B5C4C0(v46, v138, type metadata accessor for DetectedDocumentObservation);
      return sub_1A5B10168(v48, &qword_1EB1EF888);
    case 0xAu:
    case 0x32u:
    case 0x33u:
      v61 = v57;
      goto LABEL_24;
    case 0xBu:
    case 0x25u:
    case 0x2Cu:
    case 0x35u:
      v58 = *(v57 + 7);
      goto LABEL_25;
    case 0xCu:

      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B0);
      v65 = v142;
      sub_1A5B60994(&v57[*(v101 + 48)], v142, &qword_1EB1EF870);
      v66 = v143;
      sub_1A5B31A34(v65, v143, &qword_1EB1EF870);
      v102 = type metadata accessor for HorizonObservation();
      if ((*(*(v102 - 8) + 48))(v66, 1, v102) == 1)
      {
        v68 = &qword_1EB1EF870;
        goto LABEL_60;
      }

      v139 = v177;
      v177[3] = v102;
      v140 = __swift_allocate_boxed_opaque_existential_1(v139);
      sub_1A5B5C4C0(v66, v140, type metadata accessor for HorizonObservation);
      v119 = &qword_1EB1EF870;
      return sub_1A5B10168(v65, v119);
    case 0xDu:
      v59 = *(v57 + 6);

      v60 = &unk_1EB1EF910;
      goto LABEL_45;
    case 0xEu:
      v59 = *(v57 + 1);

      v60 = &unk_1EB1EF908;
      goto LABEL_45;
    case 0xFu:
      v108 = *&v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A8) + 48)];
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF900);
      v110 = v177;
      v177[3] = v109;
      *v110 = v108;
      return sub_1A5B5DF14(v57, type metadata accessor for DetectHumanHandPoseRequest);
    case 0x10u:

      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A0);
      sub_1A5B5C4C0(&v57[*(v111 + 48)], v38, type metadata accessor for SmudgeObservation);
      v112 = v177;
      v177[3] = v141;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v112);
      v107 = v38;
      v113 = type metadata accessor for SmudgeObservation;
      return sub_1A5B5C4C0(v107, boxed_opaque_existential_1, v113);
    case 0x11u:
      v59 = *(v57 + 10);

      v60 = &unk_1EB1EF8F0;
      goto LABEL_45;
    case 0x12u:
      v58 = *(v57 + 11);

      v82 = &unk_1EB1EF8E8;
      goto LABEL_26;
    case 0x13u:
      v59 = *(v57 + 1);

      v60 = &unk_1EB1EF8E0;
      goto LABEL_45;
    case 0x14u:
      v93 = v57;

      v94 = &unk_1EB1EF688;
      goto LABEL_73;
    case 0x15u:
      v96 = v57;

      v97 = &unk_1EB1EF680;
      goto LABEL_78;
    case 0x16u:

      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF668);
      v65 = v144;
      sub_1A5B60994(&v57[*(v75 + 48)], v144, &qword_1EB1EF810);
      v76 = v65;
      v77 = &v177;
      goto LABEL_58;
    case 0x17u:
      v93 = v57;

      v94 = &unk_1EB1EF678;
LABEL_73:
      v78 = type metadata accessor for SaliencyImageObservation;
      v123 = &v93[*(__swift_instantiateConcreteTypeFromMangledNameV2(v94) + 48)];
      v54 = v172;
      sub_1A5B5C4C0(v123, v172, type metadata accessor for SaliencyImageObservation);
      v80 = v177;
      v81 = v171;
      goto LABEL_82;
    case 0x18u:
      v87 = v57;

      v88 = &unk_1EB1EF670;
      goto LABEL_75;
    case 0x19u:

      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF660);
      v65 = v146;
      sub_1A5B60994(&v57[*(v114 + 48)], v146, &qword_1EB1EF810);
      v76 = v65;
      v77 = &v178;
LABEL_58:
      v66 = *(v77 - 32);
      sub_1A5B31A34(v76, v66, &qword_1EB1EF810);
      v115 = type metadata accessor for InstanceMaskObservation();
      if ((*(*(v115 - 8) + 48))(v66, 1, v115) == 1)
      {
        v68 = &qword_1EB1EF810;
        goto LABEL_60;
      }

      v117 = v177;
      v177[3] = v115;
      v118 = __swift_allocate_boxed_opaque_existential_1(v117);
      sub_1A5B5C4C0(v66, v118, type metadata accessor for InstanceMaskObservation);
      v119 = &qword_1EB1EF810;
      return sub_1A5B10168(v65, v119);
    case 0x1Au:
      v59 = *(v57 + 6);
      goto LABEL_44;
    case 0x1Bu:
      v62 = *(v57 + 10);

      v63 = &unk_1EB1EF8D0;
      goto LABEL_64;
    case 0x1Cu:
      v85 = *(v57 + 13);

      v86 = &unk_1EB1EF8D8;
LABEL_47:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(v86);
      v100 = v177;
      v177[3] = result;
      *v100 = v85;
      return result;
    case 0x1Du:

      v78 = type metadata accessor for ImageHomographicAlignmentObservation;
      v79 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF658) + 48)];
      v54 = v149;
      sub_1A5B5C4C0(v79, v149, type metadata accessor for ImageHomographicAlignmentObservation);
      v80 = v177;
      v81 = v150;
      goto LABEL_82;
    case 0x1Eu:

      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF698);
      v65 = v151;
      sub_1A5B60994(&v57[*(v71 + 48)], v151, &qword_1EB1EF7E8);
      v66 = v152;
      sub_1A5B31A34(v65, v152, &qword_1EB1EF7E8);
      v72 = type metadata accessor for DetectedObjectObservation();
      if ((*(*(v72 - 8) + 48))(v66, 1, v72) == 1)
      {
        v68 = &qword_1EB1EF7E8;
        goto LABEL_60;
      }

      v133 = v177;
      v177[3] = v72;
      v134 = __swift_allocate_boxed_opaque_existential_1(v133);
      sub_1A5B5C4C0(v66, v134, type metadata accessor for DetectedObjectObservation);
      v119 = &qword_1EB1EF7E8;
      return sub_1A5B10168(v65, v119);
    case 0x1Fu:

      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF690);
      v65 = v153;
      sub_1A5B60994(&v57[*(v73 + 48)], v153, &qword_1EB1EF7D8);
      v66 = v154;
      sub_1A5B31A34(v65, v154, &qword_1EB1EF7D8);
      v74 = type metadata accessor for OpticalFlowObservation();
      if ((*(*(v74 - 8) + 48))(v66, 1, v74) == 1)
      {
        v68 = &qword_1EB1EF7D8;
        goto LABEL_60;
      }

      v135 = v177;
      v177[3] = v74;
      v136 = __swift_allocate_boxed_opaque_existential_1(v135);
      sub_1A5B5C4C0(v66, v136, type metadata accessor for OpticalFlowObservation);
      v119 = &qword_1EB1EF7D8;
      return sub_1A5B10168(v65, v119);
    case 0x20u:

      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF650);
      v65 = v157;
      sub_1A5B60994(&v57[*(v69 + 48)], v157, &qword_1EB1EF7C8);
      v66 = v159;
      sub_1A5B31A34(v65, v159, &qword_1EB1EF7C8);
      v70 = type metadata accessor for RectangleObservation();
      if ((*(*(v70 - 8) + 48))(v66, 1, v70) == 1)
      {
        v68 = &qword_1EB1EF7C8;
        goto LABEL_60;
      }

      v131 = v177;
      v177[3] = v70;
      v132 = __swift_allocate_boxed_opaque_existential_1(v131);
      sub_1A5B5C4C0(v66, v132, type metadata accessor for RectangleObservation);
      v119 = &qword_1EB1EF7C8;
      return sub_1A5B10168(v65, v119);
    case 0x21u:

      v78 = type metadata accessor for ImageTranslationAlignmentObservation;
      v125 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F48B0) + 48)];
      v54 = v155;
      sub_1A5B5C4C0(v125, v155, type metadata accessor for ImageTranslationAlignmentObservation);
      v80 = v177;
      v81 = v156;
      goto LABEL_82;
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x27u:
      v59 = *(v57 + 1);

      goto LABEL_5;
    case 0x26u:
      v62 = *(v57 + 7);

      v63 = &unk_1EB1EF350;
LABEL_64:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(v63);
      v120 = v177;
      v177[3] = result;
      *v120 = v62;
      return result;
    case 0x28u:
      v61 = v57;
LABEL_24:
      v58 = *(v61 + 6);
      goto LABEL_25;
    case 0x29u:

      v78 = type metadata accessor for ImageExposureObservation;
      v121 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF640) + 48)];
      v54 = v161;
      sub_1A5B5C4C0(v121, v161, type metadata accessor for ImageExposureObservation);
      v80 = v177;
      v81 = v162;
      goto LABEL_82;
    case 0x2Au:

      v78 = type metadata accessor for ImageBlurObservation;
      v128 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF648) + 48)];
      v54 = v158;
      sub_1A5B5C4C0(v128, v158, type metadata accessor for ImageBlurObservation);
      v80 = v177;
      v81 = v160;
      goto LABEL_82;
    case 0x2Bu:
    case 0x2Eu:
    case 0x46u:
    case 0x47u:
      v59 = *(v57 + 7);
      goto LABEL_30;
    case 0x2Du:
      v59 = *(v57 + 7);

      v60 = &unk_1EB1EF8C8;
      goto LABEL_45;
    case 0x2Fu:
    case 0x30u:
    case 0x45u:
      v59 = *(v57 + 6);
LABEL_30:

      v60 = &unk_1EB1EF8B8;
      goto LABEL_45;
    case 0x31u:
      v58 = *(v57 + 8);
LABEL_25:

      v82 = &unk_1EB1F2980;
      goto LABEL_26;
    case 0x34u:
      v59 = *(v57 + 7);

      v60 = &unk_1EB1EF8F8;
      goto LABEL_45;
    case 0x36u:
      v58 = *(v57 + 6);
      goto LABEL_68;
    case 0x37u:
      v87 = v57;

      v88 = &unk_1EB1EF638;
      goto LABEL_75;
    case 0x38u:

      v78 = type metadata accessor for DetectionPrintObservation;
      v122 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF630) + 48)];
      v54 = v163;
      sub_1A5B5C4C0(v122, v163, type metadata accessor for DetectionPrintObservation);
      v80 = v177;
      v81 = v164;
      goto LABEL_82;
    case 0x39u:
      v87 = v57;

      v88 = &unk_1EB1EF628;
      goto LABEL_75;
    case 0x3Au:
      v87 = v57;

      v88 = &unk_1EB1EF620;
      goto LABEL_75;
    case 0x3Bu:

      v78 = type metadata accessor for ImageFingerprintsObservation;
      v103 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF618) + 48)];
      v54 = v165;
      sub_1A5B5C4C0(v103, v165, type metadata accessor for ImageFingerprintsObservation);
      v80 = v177;
      v81 = v166;
      goto LABEL_82;
    case 0x3Cu:
      v96 = v57;

      v97 = &unk_1EB1EF610;
LABEL_78:
      v78 = type metadata accessor for FeaturePrintObservation;
      v126 = &v96[*(__swift_instantiateConcreteTypeFromMangledNameV2(v97) + 48)];
      v54 = v174;
      sub_1A5B5C4C0(v126, v174, type metadata accessor for FeaturePrintObservation);
      v80 = v177;
      v81 = v173;
      goto LABEL_82;
    case 0x3Du:
      v87 = v57;

      v88 = &unk_1EB1EF608;
LABEL_75:
      v78 = type metadata accessor for PixelBufferObservation;
      v124 = &v87[*(__swift_instantiateConcreteTypeFromMangledNameV2(v88) + 48)];
      v54 = v175;
      sub_1A5B5C4C0(v124, v175, type metadata accessor for PixelBufferObservation);
      v81 = v176;
      v80 = v177;
      goto LABEL_82;
    case 0x3Eu:
    case 0x40u:
    case 0x42u:
    case 0x43u:
      v59 = *(v57 + 5);
      goto LABEL_44;
    case 0x3Fu:
      v59 = *(v57 + 7);
LABEL_44:

      v60 = &unk_1EB1EF8C0;
      goto LABEL_45;
    case 0x41u:
      v58 = *(v57 + 11);
LABEL_68:

      v82 = &unk_1EB1EF8C0;
LABEL_26:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(v82);
      v84 = v177;
      v177[3] = result;
      *v84 = v58;
      return result;
    case 0x44u:

      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4CD0);
      v65 = v168;
      sub_1A5B60994(&v57[*(v64 + 48)], v168, &qword_1EB1EF6F8);
      v66 = v170;
      sub_1A5B31A34(v65, v170, &qword_1EB1EF6F8);
      v67 = v176;
      if ((*(v147 + 48))(v66, 1, v176) == 1)
      {
        v68 = &qword_1EB1EF6F8;
LABEL_60:
        sub_1A5B10168(v65, v68);
        v91 = v66;
LABEL_61:
        result = sub_1A5B10168(v91, v68);
        v116 = v177;
        *v177 = 0u;
        *(v116 + 1) = 0u;
      }

      else
      {
        v129 = v177;
        v177[3] = v67;
        v130 = __swift_allocate_boxed_opaque_existential_1(v129);
        sub_1A5B5C4C0(v66, v130, type metadata accessor for PixelBufferObservation);
        v119 = &qword_1EB1EF6F8;
        return sub_1A5B10168(v65, v119);
      }

      return result;
    case 0x48u:

      v78 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation;
      v127 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF600) + 48)];
      v54 = v167;
      sub_1A5B5C4C0(v127, v167, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
      v80 = v177;
      v81 = v169;
LABEL_82:
      v80[3] = v81;
LABEL_83:
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
      v107 = v54;
LABEL_84:
      v113 = v78;
      return sub_1A5B5C4C0(v107, boxed_opaque_existential_1, v113);
    default:
      v59 = *(v57 + 7);

LABEL_5:
      v60 = &unk_1EB1F2980;
LABEL_45:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(v60);
      v98 = v177;
      v177[3] = result;
      *v98 = v59;
      return result;
  }
}

uint64_t sub_1A5B60994(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A5B609FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF930);
  *v3 = v1;
  v3[1] = sub_1A5B0CE78;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t sub_1A5B60AD8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A5B60B10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF938);
  sub_1A5FD40DC();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_1A5B60BCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF930);
  *v3 = v1;
  v3[1] = sub_1A5B60C88;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t sub_1A5B60C88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A5B60D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_1A5B60E38;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

uint64_t sub_1A5B60E38()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A5FD404C();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A5B60FE0;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1A5FD404C();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1A5B60FC8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1A5B60FE0()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3E90);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t VisionResult.description.getter()
{
  v539 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation();
  MEMORY[0x1EEE9AC00](v539);
  v540 = &v508 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8);
  v2 = MEMORY[0x1EEE9AC00](v537);
  v535 = &v508 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v538 = &v508 - v4;
  v533 = type metadata accessor for ImageFingerprintsObservation();
  MEMORY[0x1EEE9AC00](v533);
  v536 = &v508 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v532 = type metadata accessor for DetectionPrintObservation();
  MEMORY[0x1EEE9AC00](v532);
  v534 = &v508 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v529 = type metadata accessor for ImageExposureObservation();
  MEMORY[0x1EEE9AC00](v529);
  v531 = &v508 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v527 = type metadata accessor for ImageBlurObservation();
  MEMORY[0x1EEE9AC00](v527);
  v530 = &v508 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v526 = type metadata accessor for ImageTranslationAlignmentObservation();
  MEMORY[0x1EEE9AC00](v526);
  v528 = &v508 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  v10 = MEMORY[0x1EEE9AC00](v524);
  v523 = &v508 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v525 = &v508 - v12;
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7D8);
  v13 = MEMORY[0x1EEE9AC00](v521);
  v520 = &v508 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v522 = &v508 - v15;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7E8);
  v16 = MEMORY[0x1EEE9AC00](v517);
  v516 = &v508 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v519 = &v508 - v18;
  v515 = type metadata accessor for ImageHomographicAlignmentObservation();
  MEMORY[0x1EEE9AC00](v515);
  v518 = &v508 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v548 = type metadata accessor for PixelBufferObservation();
  MEMORY[0x1EEE9AC00](v548);
  *&v549 = &v508 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF810);
  v21 = MEMORY[0x1EEE9AC00](v544);
  v542 = &v508 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v546 = &v508 - v23;
  v543 = type metadata accessor for FeaturePrintObservation();
  MEMORY[0x1EEE9AC00](v543);
  v547 = &v508 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v541 = type metadata accessor for SaliencyImageObservation();
  MEMORY[0x1EEE9AC00](v541);
  v545 = &v508 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v512 = type metadata accessor for SmudgeObservation();
  MEMORY[0x1EEE9AC00](v512);
  v514 = &v508 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v510 = type metadata accessor for DetectHumanHandPoseRequest();
  MEMORY[0x1EEE9AC00](v510);
  v513 = &v508 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF870);
  v28 = MEMORY[0x1EEE9AC00](v509);
  v508 = &v508 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v511 = &v508 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF888);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v508 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v508 - v35;
  v37 = type metadata accessor for ContoursObservation(0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v508 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ImageAestheticsScoresObservation();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v508 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for VisionResult(0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v508 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5B5DE58(v0, v45, type metadata accessor for VisionResult);
  v46 = v45;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v244 = v45;
      v245 = *v45;
      v246 = v45[40];
      v248 = *(v45 + 6);
      v247 = *(v244 + 7);
      *v557 = 0;
      *&v557[8] = 0xE000000000000000;
      v549 = *(v244 + 8);
      v548 = *(v244 + 24);
      sub_1A5FD46AC();

      *&v550 = 0xD000000000000016;
      *(&v550 + 1) = 0x80000001A6054B40;
      v557[0] = v245;
      *&v557[24] = v548;
      *&v557[8] = v549;
      v557[40] = v246;
      *&v558 = v248;
      sub_1A5B67450();
      v249 = sub_1A5FD4ACC();
      v251 = v250;

      MEMORY[0x1AC554600](v249, v251);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v252 = *(v247 + 16);

      *v557 = v252;
      v253 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v253);

      v254 = "detectHumanRectangles(";
      v255 = 0xD000000000000013;
      goto LABEL_81;
    case 2u:
      v212 = *(v45 + 5);
      sub_1A5B063D4(v45, v557);
      *&v550 = 0;
      *(&v550 + 1) = 0xE000000000000000;
      MEMORY[0x1AC554600](0x28726F727265, 0xE600000000000000);
      __swift_project_boxed_opaque_existential_1(v557, *&v557[24]);
      sub_1A5FD4AEC();
      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      *&v562 = v212;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F3E90);
      sub_1A5FD481C();

      v92 = v550;
      __swift_destroy_boxed_opaque_existential_1(v557);
      return v92;
    case 3u:
      v225 = v45;
      v226 = *v45;
      v227 = *(v46 + 5);
      v228 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C8) + 48);
      v549 = *(v225 + 8);
      v548 = *(v225 + 24);
      sub_1A5B5C4C0(&v225[v228], v42, type metadata accessor for ImageAestheticsScoresObservation);
      *v557 = 0;
      *&v557[8] = 0xE000000000000000;
      sub_1A5FD46AC();

      *&v550 = 0xD00000000000001FLL;
      *(&v550 + 1) = 0x80000001A6054B00;
      v557[0] = v226;
      *&v557[24] = v548;
      *&v557[8] = v549;
      *&v557[40] = v227;
      sub_1A5B3653C();
      v229 = sub_1A5FD4ACC();
      v231 = v230;

      MEMORY[0x1AC554600](v229, v231);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFB40, type metadata accessor for ImageAestheticsScoresObservation);
      v232 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v232);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v550;
      v123 = type metadata accessor for ImageAestheticsScoresObservation;
      v124 = v42;
      goto LABEL_89;
    case 4u:
      v165 = *(v45 + 3);
      *&v557[32] = *(v45 + 2);
      v558 = v165;
      v559 = *(v45 + 4);
      v166 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v166;
      v167 = *(v45 + 10);
      *&v550 = 0;
      *(&v550 + 1) = 0xE000000000000000;
      sub_1A5FD46AC();

      strcpy(&v562, "classifyImage(");
      HIBYTE(v562) = -18;
      v552 = *&v557[32];
      v553 = v558;
      v554 = v559;
      v551 = *&v557[16];
      v550 = *v557;
      sub_1A5B67300();
      v168 = sub_1A5FD4ACC();
      v170 = v169;
      sub_1A5B67354(v557);
      MEMORY[0x1AC554600](v168, v170);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v171 = *(v167 + 16);

      *&v550 = v171;
      v172 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v172);

      v111 = " VisionObservations)";
      v112 = 0xD00000000000001CLL;
      goto LABEL_91;
    case 5u:
      v285 = *(v45 + 3);
      v286 = *(v45 + 5);
      v559 = *(v45 + 4);
      v560 = v286;
      v287 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v287;
      v288 = *(v45 + 3);
      v290 = *v45;
      v289 = *(v45 + 1);
      *&v557[32] = *(v45 + 2);
      v558 = v288;
      v291 = *(v45 + 5);
      v554 = v559;
      v555 = v291;
      v550 = v290;
      v551 = v289;
      v292 = *(v45 + 13);
      v561 = *(v45 + 12);
      *&v562 = 0x284C4D65726F63;
      *(&v562 + 1) = 0xE700000000000000;
      v556 = *(v45 + 12);
      v553 = v285;
      v552 = *&v557[32];
      sub_1A5B67258();
      v293 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v293);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v294 = *(v292 + 16);

      *&v550 = v294;
      v295 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v295);

      MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A6054AC0);
      sub_1A5B672AC(v557);
      goto LABEL_93;
    case 6u:
      v333 = v45;
      v335 = *(v45 + 4);
      v334 = *(v46 + 5);
      *v557 = 0;
      *&v557[8] = 0xE000000000000000;
      v336 = v333[1];
      v549 = *v333;
      v548 = v336;
      sub_1A5FD46AC();
      v550 = *v557;
      MEMORY[0x1AC554600](0xD000000000000015, 0x80000001A6054A80);
      *v557 = v549;
      *&v557[16] = v548;
      *&v557[32] = v335;
      sub_1A5B67204();
      v337 = sub_1A5FD4ACC();
      v339 = v338;

      MEMORY[0x1AC554600](v337, v339);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v340 = *(v334 + 16);

      *v557 = v340;
      v341 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v341);

      v254 = "detectAnimalBodyPose(";
      v255 = 0xD00000000000001CLL;
      goto LABEL_81;
    case 7u:
      v233 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v233;
      v234 = *(v45 + 3);
      v236 = *v45;
      v235 = *(v45 + 1);
      *&v557[32] = *(v45 + 2);
      v558 = v234;
      v237 = *(v45 + 8);
      *&v562 = 0x6142746365746564;
      *(&v562 + 1) = 0xEF287365646F6372;
      v550 = v236;
      v551 = v235;
      v238 = *(v45 + 3);
      v552 = *(v45 + 2);
      v553 = v238;
      sub_1A5B6715C();
      v239 = sub_1A5FD4ACC();
      v241 = v240;
      sub_1A5B671B0(v557);
      MEMORY[0x1AC554600](v239, v241);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v242 = *(v237 + 16);

      *&v550 = v242;
      v243 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v243);

      v111 = "detectDocumentSegmentation(";
      v112 = 0xD000000000000015;
      goto LABEL_91;
    case 8u:
      v355 = *(v45 + 3);
      *&v557[32] = *(v45 + 2);
      v558 = v355;
      *&v559 = *(v45 + 8);
      v356 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v356;
      v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C0);
      sub_1A5B5C4C0(&v45[*(v357 + 48)], v39, type metadata accessor for ContoursObservation);
      *&v562 = 0x6F43746365746564;
      *(&v562 + 1) = 0xEF287372756F746ELL;
      v552 = *&v557[32];
      v553 = v558;
      *&v554 = v559;
      v551 = *&v557[16];
      v550 = *v557;
      sub_1A5B670B4();
      v358 = sub_1A5FD4ACC();
      v360 = v359;
      sub_1A5B67108(v557);
      MEMORY[0x1AC554600](v358, v360);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFB18, type metadata accessor for ContoursObservation);
      v361 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v361);

      v92 = v562;
      v123 = type metadata accessor for ContoursObservation;
      v124 = v39;
      goto LABEL_89;
    case 9u:
      v194 = v45;
      v195 = *(v45 + 4);
      v196 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B8) + 48);
      v197 = *(v45 + 1);
      v549 = *v45;
      v548 = v197;
      v198 = &qword_1EB1EF888;
      sub_1A5B60994(&v194[v196], v36, &qword_1EB1EF888);
      *&v550 = 0xD00000000000001BLL;
      *(&v550 + 1) = 0x80000001A6054A40;
      *v557 = v549;
      *&v557[16] = v548;
      *&v557[32] = v195;
      sub_1A5B1ADC0();
      v199 = sub_1A5FD4ACC();
      v201 = v200;

      MEMORY[0x1AC554600](v199, v201);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B31A34(v36, v34, &qword_1EB1EF888);
      v202 = sub_1A5FD3D7C();
      MEMORY[0x1AC554600](v202);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v550;
      v192 = v36;
      goto LABEL_103;
    case 0xAu:
      v352 = v45;
      v353 = *v45;
      v354 = *(v46 + 5);
      v59 = *(v352 + 6);
      *&v550 = 0xD000000000000019;
      *(&v550 + 1) = 0x80000001A6054A20;
      *v557 = v353;
      *&v557[8] = *(v352 + 8);
      *&v557[24] = *(v352 + 24);
      *&v557[40] = v354;
      sub_1A5B67060();
      goto LABEL_98;
    case 0xBu:
      v152 = v45;
      v153 = *v45;
      v154 = v46[40];
      v155 = *(v46 + 6);
      v59 = *(v152 + 7);
      *&v550 = 0xD000000000000014;
      *(&v550 + 1) = 0x80000001A6054A00;
      *v557 = v153;
      *&v557[8] = *(v152 + 8);
      *&v557[24] = *(v152 + 24);
      v557[40] = v154;
      *&v558 = v155;
      sub_1A5B6700C();
      goto LABEL_98;
    case 0xCu:
      v183 = *(v45 + 4);
      v184 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B0) + 48);
      v185 = *(v45 + 1);
      v549 = *v45;
      v548 = v185;
      v186 = &v45[v184];
      v187 = v511;
      sub_1A5B60994(v186, v511, &qword_1EB1EF870);
      strcpy(&v550, "detectHorizon(");
      HIBYTE(v550) = -18;
      *v557 = v549;
      *&v557[16] = v548;
      *&v557[32] = v183;
      sub_1A5B66FB8();
      v188 = sub_1A5FD4ACC();
      v190 = v189;

      MEMORY[0x1AC554600](v188, v190);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B31A34(v187, v508, &qword_1EB1EF870);
      v191 = sub_1A5FD3D7C();
      MEMORY[0x1AC554600](v191);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v550;
      v192 = v187;
      v193 = &qword_1EB1EF870;
      goto LABEL_104;
    case 0xDu:
      v322 = v45;
      v323 = v45[32];
      v325 = *(v45 + 5);
      v324 = *(v322 + 6);
      *v557 = 0;
      *&v557[8] = 0xE000000000000000;
      v326 = *(v322 + 1);
      v549 = *v322;
      v548 = v326;
      sub_1A5FD46AC();
      v550 = *v557;
      MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A60549C0);
      *v557 = v549;
      *&v557[16] = v548;
      v557[32] = v323;
      *&v557[40] = v325;
      sub_1A5B66F64();
      v327 = sub_1A5FD4ACC();
      v329 = v328;

      MEMORY[0x1AC554600](v327, v329);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v330 = *(v324 + 16);

      *v557 = v330;
      v331 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v331);

      v254 = "detectHumanBodyPose(";
      v332 = 9;
      goto LABEL_80;
    case 0xEu:
      v132 = *v45;
      v133 = *(v45 + 1);
      *v557 = 0;
      *&v557[8] = 0xE000000000000000;
      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD000000000000016, 0x80000001A6054980);
      *&v550 = v132;
      type metadata accessor for DetectHumanBodyPose3DRequest();
      sub_1A5B5E6AC(&qword_1EB1EEA28, type metadata accessor for DetectHumanBodyPose3DRequest);
      v134 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v134);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v135 = *(v133 + 16);

      *&v550 = v135;
      v136 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v136);

      v137 = "detectHumanBodyPose3D(";
      v138 = 0xD00000000000001DLL;
      goto LABEL_66;
    case 0xFu:
      v213 = *&v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A8) + 48)];
      v87 = v513;
      sub_1A5B5C4C0(v45, v513, type metadata accessor for DetectHumanHandPoseRequest);
      *v557 = 0;
      *&v557[8] = 0xE000000000000000;
      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A6054940);
      sub_1A5B5E6AC(&qword_1EB1EF2E8, type metadata accessor for DetectHumanHandPoseRequest);
      v214 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v214);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v215 = *(v213 + 16);

      *&v550 = v215;
      v216 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v216);

      MEMORY[0x1AC554600](0xD00000000000001BLL, 0x80000001A6054960);
      v92 = *v557;
      v93 = type metadata accessor for DetectHumanHandPoseRequest;
      goto LABEL_84;
    case 0x10u:
      v114 = v45[32];
      v115 = *(v45 + 5);
      v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A0) + 48);
      v117 = *(v45 + 1);
      v549 = *v45;
      v548 = v117;
      v118 = v514;
      sub_1A5B5C4C0(&v45[v116], v514, type metadata accessor for SmudgeObservation);
      *&v550 = 0xD000000000000012;
      *(&v550 + 1) = 0x80000001A60548C0;
      *v557 = v549;
      *&v557[16] = v548;
      v557[32] = v114;
      *&v557[40] = v115;
      sub_1A5B66E68();
      v119 = sub_1A5FD4ACC();
      v121 = v120;

      MEMORY[0x1AC554600](v119, v121);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFAE0, type metadata accessor for SmudgeObservation);
      v122 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v122);

      MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A60548E0);
      v92 = v550;
      v123 = type metadata accessor for SmudgeObservation;
      v124 = v118;
      goto LABEL_89;
    case 0x11u:
      v261 = *(v45 + 1);
      v262 = *(v45 + 3);
      *&v557[32] = *(v45 + 2);
      v558 = v262;
      v263 = *(v45 + 3);
      v559 = *(v45 + 4);
      v264 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v264;
      v552 = *&v557[32];
      v553 = v263;
      v554 = *(v45 + 4);
      v265 = *(v45 + 10);
      *&v562 = 0xD000000000000011;
      *(&v562 + 1) = 0x80000001A6054880;
      v551 = v261;
      v550 = *v557;
      sub_1A5B66DC0();
      v266 = sub_1A5FD4ACC();
      v268 = v267;
      sub_1A5B66E14(v557);
      MEMORY[0x1AC554600](v266, v268);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v269 = *(v265 + 16);

      *&v550 = v269;
      v270 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v270);

      v271 = " RectangleObservations)";
      goto LABEL_74;
    case 0x12u:
      v342 = *(v45 + 3);
      v343 = *(v45 + 1);
      *&v557[32] = *(v45 + 2);
      v558 = v342;
      v344 = *(v45 + 3);
      v559 = *(v45 + 4);
      v345 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v345;
      v552 = *&v557[32];
      v553 = v344;
      v554 = *(v45 + 4);
      v346 = *(v45 + 11);
      *&v560 = *(v45 + 10);
      *&v562 = 0xD000000000000015;
      *(&v562 + 1) = 0x80000001A6054840;
      *&v555 = *(v45 + 10);
      v550 = *v557;
      v551 = v343;
      sub_1A5B66D18();
      v347 = sub_1A5FD4ACC();
      v349 = v348;
      sub_1A5B66D6C(v557);
      MEMORY[0x1AC554600](v347, v349);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v350 = *(v346 + 16);

      *&v550 = v350;
      v351 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v351);

      v164 = " TextObservations)";
      goto LABEL_54;
    case 0x13u:
      v391 = *v45;
      v392 = *(v45 + 1);
      *v557 = 0xD000000000000013;
      *&v557[8] = 0x80000001A6054800;
      *&v550 = v391;
      type metadata accessor for DetectTrajectoriesRequest();
      sub_1A5B5E6AC(&qword_1EB1EFAC8, type metadata accessor for DetectTrajectoriesRequest);
      v393 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v393);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v394 = *(v392 + 16);

      *&v550 = v394;
      v395 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v395);

      v137 = "detectTrajectories(";
      v138 = 0xD000000000000018;
LABEL_66:
      v390 = v137 | 0x8000000000000000;
      goto LABEL_67;
    case 0x14u:
      v279 = *(v45 + 4);
      v280 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF688) + 48);
      v281 = *(v45 + 1);
      v549 = *v45;
      v548 = v281;
      v87 = v545;
      sub_1A5B5C4C0(&v45[v280], v545, type metadata accessor for SaliencyImageObservation);
      *&v550 = 0xD000000000000024;
      *(&v550 + 1) = 0x80000001A60547D0;
      *v557 = v549;
      *&v557[16] = v548;
      *&v557[32] = v279;
      sub_1A5B66CC4();
      goto LABEL_72;
    case 0x15u:
      v312 = v45;
      v313 = *v45;
      v314 = v45[40];
      v315 = *(v46 + 6);
      v316 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF680) + 48);
      v549 = *(v312 + 8);
      v548 = *(v312 + 24);
      v317 = &v312[v316];
      v87 = v547;
      sub_1A5B5C4C0(v317, v547, type metadata accessor for FeaturePrintObservation);
      *&v550 = 0xD00000000000001ALL;
      *(&v550 + 1) = 0x80000001A60547B0;
      v557[0] = v313;
      *&v557[24] = v548;
      *&v557[8] = v549;
      v557[40] = v314;
      *&v558 = v315;
      sub_1A5B66C70();
      goto LABEL_50;
    case 0x16u:
      v378 = v45;
      v379 = *(v45 + 4);
      v380 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF668) + 48);
      v381 = *(v45 + 1);
      v549 = *v45;
      v548 = v381;
      v198 = &qword_1EB1EF810;
      v207 = v546;
      sub_1A5B60994(&v378[v380], v546, &qword_1EB1EF810);
      *&v550 = 0xD00000000000001FLL;
      *(&v550 + 1) = 0x80000001A6054790;
      *v557 = v549;
      *&v557[16] = v548;
      *&v557[32] = v379;
      sub_1A5B66C1C();
      goto LABEL_62;
    case 0x17u:
      v417 = *(v45 + 4);
      v418 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF678) + 48);
      v419 = *(v45 + 1);
      v549 = *v45;
      v548 = v419;
      v87 = v545;
      sub_1A5B5C4C0(&v45[v418], v545, type metadata accessor for SaliencyImageObservation);
      *&v550 = 0xD000000000000025;
      *(&v550 + 1) = 0x80000001A6054760;
      *v557 = v549;
      *&v557[16] = v548;
      *&v557[32] = v417;
      sub_1A5B66BC8();
LABEL_72:
      v420 = sub_1A5FD4ACC();
      v422 = v421;

      MEMORY[0x1AC554600](v420, v422);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFAA8, type metadata accessor for SaliencyImageObservation);
      v423 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v423);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v550;
      v93 = type metadata accessor for SaliencyImageObservation;
      goto LABEL_84;
    case 0x18u:
      v208 = *v45;
      v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF670);
      v141 = v549;
      sub_1A5B5C4C0(&v45[*(v209 + 48)], v549, type metadata accessor for PixelBufferObservation);
      *v557 = 0xD00000000000001BLL;
      *&v557[8] = 0x80000001A6054740;
      *&v550 = v208;
      type metadata accessor for GeneratePersonSegmentationRequest(0);
      sub_1A5B5E6AC(&qword_1EB1EFA98, type metadata accessor for GeneratePersonSegmentationRequest);
      v210 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v210);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EF5A0, type metadata accessor for PixelBufferObservation);
      v211 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v211);

      MEMORY[0x1AC554600](41, 0xE100000000000000);

      v92 = *v557;
      goto LABEL_87;
    case 0x19u:
      v203 = v45;
      v204 = *(v45 + 4);
      v205 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF660) + 48);
      v206 = *(v45 + 1);
      v549 = *v45;
      v548 = v206;
      v198 = &qword_1EB1EF810;
      v207 = v546;
      sub_1A5B60994(&v203[v205], v546, &qword_1EB1EF810);
      *&v550 = 0xD00000000000001BLL;
      *(&v550 + 1) = 0x80000001A6054720;
      *v557 = v549;
      *&v557[16] = v548;
      *&v557[32] = v204;
      sub_1A5B315B0();
LABEL_62:
      v382 = sub_1A5FD4ACC();
      v384 = v383;

      MEMORY[0x1AC554600](v382, v384);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B31A34(v207, v542, &qword_1EB1EF810);
      v385 = sub_1A5FD3D7C();
      MEMORY[0x1AC554600](v385);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v550;
      v192 = v207;
      goto LABEL_103;
    case 0x1Au:
      v448 = v45;
      v449 = v45[32];
      v450 = *(v45 + 5);
      v64 = *(v448 + 6);
      *v557 = 0;
      *&v557[8] = 0xE000000000000000;
      v451 = *(v448 + 1);
      v549 = *v448;
      v548 = v451;
      sub_1A5FD46AC();
      v550 = *v557;
      MEMORY[0x1AC554600](0xD000000000000011, 0x80000001A6054700);
      *v557 = v549;
      *&v557[16] = v548;
      v557[32] = v449;
      *&v557[40] = v450;
      sub_1A5B66B74();
      goto LABEL_79;
    case 0x1Bu:
      v101 = *(v45 + 1);
      v102 = *(v45 + 3);
      *&v557[32] = *(v45 + 2);
      v558 = v102;
      v103 = *(v45 + 3);
      v559 = *(v45 + 4);
      v104 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v104;
      v552 = *&v557[32];
      v553 = v103;
      v554 = *(v45 + 4);
      v105 = *(v45 + 10);
      strcpy(&v562, "recognizeText(");
      HIBYTE(v562) = -18;
      v551 = v101;
      v550 = *v557;
      sub_1A5B66A24();
      v106 = sub_1A5FD4ACC();
      v108 = v107;
      sub_1A5B66A78(v557);
      MEMORY[0x1AC554600](v106, v108);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v109 = *(v105 + 16);

      *&v550 = v109;
      v110 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v110);

      v111 = "ImageRegistration(";
      v112 = 0xD00000000000001DLL;
      goto LABEL_91;
    case 0x1Cu:
      v424 = *(v45 + 3);
      v425 = *(v45 + 5);
      v559 = *(v45 + 4);
      v560 = v425;
      v426 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v426;
      v427 = *(v45 + 3);
      v429 = *v45;
      v428 = *(v45 + 1);
      *&v557[32] = *(v45 + 2);
      v558 = v427;
      v430 = *(v45 + 5);
      v554 = v559;
      v555 = v430;
      v550 = v429;
      v551 = v428;
      v431 = *(v45 + 13);
      v561 = *(v45 + 12);
      *&v562 = 0xD000000000000013;
      *(&v562 + 1) = 0x80000001A60546C0;
      v556 = *(v45 + 12);
      v553 = v424;
      v552 = *&v557[32];
      sub_1A5B66ACC();
      v432 = sub_1A5FD4ACC();
      v434 = v433;
      sub_1A5B66B20(v557);
      MEMORY[0x1AC554600](v432, v434);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v435 = *(v431 + 16);

      *&v550 = v435;
      v436 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v436);

      v271 = ") DocumentObservations)";
LABEL_74:
      v111 = (v271 - 32);
      v224 = 5;
      goto LABEL_75;
    case 0x1Du:
      v437 = *v45;
      v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF658);
      v141 = v518;
      sub_1A5B5C4C0(&v45[*(v438 + 48)], v518, type metadata accessor for ImageHomographicAlignmentObservation);
      *v557 = 0xD000000000000022;
      *&v557[8] = 0x80000001A6054670;
      *&v550 = v437;
      type metadata accessor for TrackHomographicImageRegistrationRequest();
      sub_1A5B5E6AC(&qword_1EB1EFA70, type metadata accessor for TrackHomographicImageRegistrationRequest);
      v439 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v439);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFA78, type metadata accessor for ImageHomographicAlignmentObservation);
      v440 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v440);

      MEMORY[0x1AC554600](41, 0xE100000000000000);

      v92 = *v557;
      v144 = type metadata accessor for ImageHomographicAlignmentObservation;
      goto LABEL_88;
    case 0x1Eu:
      v362 = v45;
      v363 = *v45;
      v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF698);
      v198 = &qword_1EB1EF7E8;
      v259 = v519;
      sub_1A5B60994(&v362[*(v364 + 48)], v519, &qword_1EB1EF7E8);
      strcpy(v557, "trackObject(");
      v557[13] = 0;
      *&v557[14] = -5120;
      *&v550 = v363;
      type metadata accessor for TrackObjectRequest(0);
      sub_1A5B5E6AC(&qword_1EB1EFA68, type metadata accessor for TrackObjectRequest);
      v365 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v365);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B31A34(v259, v516, &qword_1EB1EF7E8);
      goto LABEL_59;
    case 0x1Fu:
      v256 = v45;
      v257 = *v45;
      v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF690);
      v198 = &qword_1EB1EF7D8;
      v259 = v522;
      sub_1A5B60994(&v256[*(v258 + 48)], v522, &qword_1EB1EF7D8);
      *v557 = 0xD000000000000011;
      *&v557[8] = 0x80000001A6054650;
      *&v550 = v257;
      type metadata accessor for TrackOpticalFlowRequest(0);
      sub_1A5B5E6AC(&qword_1EB1EFA60, type metadata accessor for TrackOpticalFlowRequest);
      v260 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v260);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B31A34(v259, v520, &qword_1EB1EF7D8);
      goto LABEL_59;
    case 0x20u:
      v366 = v45;
      v367 = *v45;
      v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF650);
      v198 = &qword_1EB1EF7C8;
      v259 = v525;
      sub_1A5B60994(&v366[*(v368 + 48)], v525, &qword_1EB1EF7C8);
      *v557 = 0x6365526B63617274;
      *&v557[8] = 0xEF28656C676E6174;
      *&v550 = v367;
      type metadata accessor for TrackRectangleRequest(0);
      sub_1A5B5E6AC(&qword_1EB1EFA58, type metadata accessor for TrackRectangleRequest);
      v369 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v369);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B31A34(v259, v523, &qword_1EB1EF7C8);
LABEL_59:
      v370 = sub_1A5FD3D7C();
      MEMORY[0x1AC554600](v370);

      MEMORY[0x1AC554600](41, 0xE100000000000000);

      goto LABEL_102;
    case 0x21u:
      v139 = *v45;
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F48B0);
      v141 = v528;
      sub_1A5B5C4C0(&v45[*(v140 + 48)], v528, type metadata accessor for ImageTranslationAlignmentObservation);
      *v557 = 0xD000000000000024;
      *&v557[8] = 0x80000001A6054620;
      *&v550 = v139;
      type metadata accessor for TrackTranslationalImageRegistrationRequest();
      sub_1A5B5E6AC(&qword_1EB1EFA48, type metadata accessor for TrackTranslationalImageRegistrationRequest);
      v142 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v142);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFA50, type metadata accessor for ImageTranslationAlignmentObservation);
      v143 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v143);

      MEMORY[0x1AC554600](41, 0xE100000000000000);

      v92 = *v557;
      v144 = type metadata accessor for ImageTranslationAlignmentObservation;
      goto LABEL_88;
    case 0x22u:
      v113 = *v45;
      v95 = *(v45 + 1);
      *v557 = 0xD000000000000011;
      *&v557[8] = 0x80000001A6054600;
      *&v550 = v113;
      type metadata accessor for DetectScreenGazeRequest();
      v96 = &qword_1EB1EF568;
      v97 = type metadata accessor for DetectScreenGazeRequest;
      goto LABEL_64;
    case 0x23u:
      v94 = *v45;
      v95 = *(v45 + 1);
      *v557 = 0xD000000000000011;
      *&v557[8] = 0x80000001A60545E0;
      *&v550 = v94;
      type metadata accessor for DetectDeviceGazeRequest();
      v96 = &unk_1EB1EFA40;
      v97 = type metadata accessor for DetectDeviceGazeRequest;
      goto LABEL_64;
    case 0x24u:
      v98 = *v45;
      v95 = *(v45 + 1);
      *v557 = 0xD000000000000011;
      *&v557[8] = 0x80000001A60545C0;
      *&v550 = v98;
      type metadata accessor for DetectCameraGazeRequest();
      v96 = &unk_1EB1EFA38;
      v97 = type metadata accessor for DetectCameraGazeRequest;
      goto LABEL_64;
    case 0x25u:
      v70 = v45;
      v71 = *v45;
      v72 = v46[40];
      v73 = *(v46 + 6);
      v59 = *(v70 + 7);
      *&v550 = 0xD000000000000012;
      *(&v550 + 1) = 0x80000001A60545A0;
      *v557 = v71;
      *&v557[8] = *(v70 + 8);
      *&v557[24] = *(v70 + 24);
      v557[40] = v72;
      *&v558 = v73;
      sub_1A5B669D0();
      goto LABEL_98;
    case 0x26u:
      v441 = v45;
      v442 = *v45;
      v443 = *(v46 + 5);
      v444 = *(v441 + 6);
      v59 = *(v441 + 7);
      *&v550 = 0xD000000000000013;
      *(&v550 + 1) = 0x80000001A6054580;
      *v557 = v442;
      *&v557[8] = *(v441 + 8);
      *&v557[24] = *(v441 + 24);
      *&v557[40] = v443;
      *&v558 = v444;
      sub_1A5B6697C();
      v445 = sub_1A5FD4ACC();
      v447 = v446;

      MEMORY[0x1AC554600](v445, v447);
      goto LABEL_99;
    case 0x27u:
      v386 = *v45;
      v95 = *(v45 + 1);
      *v557 = 0;
      *&v557[8] = 0xE000000000000000;
      sub_1A5FD46AC();
      MEMORY[0x1AC554600](0xD00000000000001DLL, 0x80000001A6054560);
      *&v550 = v386;
      type metadata accessor for CalculateFaceLivelinessScoreRequest();
      v96 = &unk_1EB1EFA20;
      v97 = type metadata accessor for CalculateFaceLivelinessScoreRequest;
LABEL_64:
      sub_1A5B5E6AC(v96, v97);
      v387 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v387);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v388 = *(v95 + 16);

      *&v550 = v388;
      v389 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v389);

      v390 = 0x80000001A60543A0;
      v138 = 0xD000000000000012;
LABEL_67:
      MEMORY[0x1AC554600](v138, v390);

      return *v557;
    case 0x28u:
      v173 = v45;
      v174 = *(v45 + 4);
      v175 = *(v46 + 5);
      v59 = *(v173 + 6);
      *&v550 = 0xD000000000000014;
      *(&v550 + 1) = 0x80000001A6054540;
      v176 = *(v173 + 1);
      *v557 = *v173;
      *&v557[16] = v176;
      *&v557[32] = v174;
      *&v557[40] = v175;
      sub_1A5B66928();
      goto LABEL_98;
    case 0x29u:
      v272 = *(v45 + 4);
      v273 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF640) + 48);
      v274 = *(v45 + 1);
      v549 = *v45;
      v548 = v274;
      v87 = v531;
      sub_1A5B5C4C0(&v45[v273], v531, type metadata accessor for ImageExposureObservation);
      *&v550 = 0xD000000000000017;
      *(&v550 + 1) = 0x80000001A6054500;
      *v557 = v549;
      *&v557[16] = v548;
      *&v557[32] = v272;
      sub_1A5B13458();
      v275 = sub_1A5FD4ACC();
      v277 = v276;

      MEMORY[0x1AC554600](v275, v277);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFA00, type metadata accessor for ImageExposureObservation);
      v278 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v278);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v550;
      v93 = type metadata accessor for ImageExposureObservation;
      goto LABEL_84;
    case 0x2Au:
      v399 = v45;
      v400 = *v45;
      v401 = *(v45 + 1);
      v402 = *(v46 + 6);
      v403 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF648) + 48);
      v404 = *(v399 + 2);
      v549 = *(v399 + 1);
      v548 = v404;
      v405 = &v399[v403];
      v87 = v530;
      sub_1A5B5C4C0(v405, v530, type metadata accessor for ImageBlurObservation);
      *&v550 = 0xD000000000000013;
      *(&v550 + 1) = 0x80000001A6054520;
      v557[0] = v400;
      *&v557[8] = v401;
      *&v557[16] = v549;
      *&v557[32] = v548;
      *&v558 = v402;
      sub_1A5B668D4();
      v406 = sub_1A5FD4ACC();
      v408 = v407;

      MEMORY[0x1AC554600](v406, v408);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EFA10, type metadata accessor for ImageBlurObservation);
      v409 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v409);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v550;
      v93 = type metadata accessor for ImageBlurObservation;
      goto LABEL_84;
    case 0x2Bu:
      v60 = *v45;
      v61 = v45[40];
      v62 = *(v45 + 6);
      v54 = *(v46 + 7);
      *&v550 = 0xD000000000000018;
      *(&v550 + 1) = 0x80000001A60544E0;
      v557[0] = v60;
      *&v557[8] = *(v46 + 8);
      *&v557[24] = *(v46 + 24);
      v557[40] = v61;
      *&v558 = v62;
      sub_1A5B66880();
      goto LABEL_95;
    case 0x2Cu:
      v128 = v45;
      v129 = *v45;
      v130 = v46[40];
      v131 = *(v46 + 6);
      v59 = *(v128 + 7);
      *&v550 = 0xD000000000000017;
      *(&v550 + 1) = 0x80000001A60544C0;
      *v557 = v129;
      *&v557[8] = *(v128 + 8);
      *&v557[24] = *(v128 + 24);
      v557[40] = v130;
      *&v558 = v131;
      sub_1A5B0FAAC();
      goto LABEL_98;
    case 0x2Du:
      v371 = *v45;
      v372 = v45[40];
      v373 = *(v45 + 6);
      v54 = *(v46 + 7);
      *&v550 = 0xD000000000000018;
      *(&v550 + 1) = 0x80000001A60544A0;
      v557[0] = v371;
      *&v557[8] = *(v46 + 8);
      *&v557[24] = *(v46 + 24);
      v557[40] = v372;
      *&v558 = v373;
      sub_1A5B22C38();
      v374 = sub_1A5FD4ACC();
      v376 = v375;

      MEMORY[0x1AC554600](v374, v376);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v377 = type metadata accessor for ImageAestheticsObservation();
      goto LABEL_96;
    case 0x2Eu:
      v485 = *v45;
      v486 = v45[40];
      v487 = *(v45 + 6);
      v54 = *(v46 + 7);
      *&v550 = 0xD000000000000012;
      *(&v550 + 1) = 0x80000001A6054480;
      v557[0] = v485;
      *&v557[8] = *(v46 + 8);
      *&v557[24] = *(v46 + 24);
      v557[40] = v486;
      *&v558 = v487;
      sub_1A5B38E5C();
      goto LABEL_95;
    case 0x2Fu:
      v79 = *v45;
      v80 = *(v45 + 5);
      v54 = *(v46 + 6);
      *&v550 = 0xD000000000000012;
      *(&v550 + 1) = 0x80000001A6054460;
      v557[0] = v79;
      *&v557[8] = *(v46 + 8);
      *&v557[24] = *(v46 + 24);
      *&v557[40] = v80;
      sub_1A5B6682C();
      goto LABEL_95;
    case 0x30u:
      v145 = *v45;
      v146 = *(v45 + 5);
      v54 = *(v46 + 6);
      *&v550 = 0xD00000000000001ALL;
      *(&v550 + 1) = 0x80000001A6054440;
      v557[0] = v145;
      *&v557[8] = *(v46 + 8);
      *&v557[24] = *(v46 + 24);
      *&v557[40] = v146;
      sub_1A5B667D8();
      goto LABEL_95;
    case 0x31u:
      v156 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v156;
      v157 = *(v45 + 3);
      v159 = *v45;
      v158 = *(v45 + 1);
      *&v557[32] = *(v45 + 2);
      v558 = v157;
      v48 = *(v45 + 8);
      *&v562 = 0x6146746365746564;
      *(&v562 + 1) = 0xEF28657A61476563;
      v550 = v159;
      v551 = v158;
      v160 = *(v45 + 3);
      v552 = *(v45 + 2);
      v553 = v160;
      sub_1A5B66730();
      v49 = sub_1A5FD4ACC();
      v51 = v161;
      sub_1A5B66784(v557);
      goto LABEL_26;
    case 0x32u:
      v56 = v45;
      v57 = *v45;
      v58 = *(v46 + 5);
      v59 = *(v56 + 6);
      *&v550 = 0x6146746365746564;
      *(&v550 + 1) = 0xEF2865736F506563;
      *v557 = v57;
      *&v557[8] = *(v56 + 8);
      *&v557[24] = *(v56 + 24);
      *&v557[40] = v58;
      sub_1A5B2AA54();
      goto LABEL_98;
    case 0x33u:
      v494 = v45;
      v495 = *v45;
      v496 = *(v46 + 5);
      v59 = *(v494 + 6);
      *&v550 = 0xD000000000000016;
      *(&v550 + 1) = 0x80000001A6054420;
      *v557 = v495;
      *&v557[8] = *(v494 + 8);
      *&v557[24] = *(v494 + 24);
      *&v557[40] = v496;
      sub_1A5B4A838();
      goto LABEL_98;
    case 0x34u:
      v478 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v478;
      *&v557[32] = *(v45 + 2);
      v479 = *(v45 + 7);
      *&v558 = *(v45 + 6);
      *&v550 = 0;
      *(&v550 + 1) = 0xE000000000000000;
      sub_1A5FD46AC();
      v562 = v550;
      MEMORY[0x1AC554600](0xD00000000000001ALL, 0x80000001A6054900);
      v550 = *v557;
      v551 = *&v557[16];
      v552 = *&v557[32];
      *&v553 = v558;
      sub_1A5B66EBC();
      v480 = sub_1A5FD4ACC();
      v482 = v481;
      sub_1A5B66F10(v557);
      MEMORY[0x1AC554600](v480, v482);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v483 = *(v479 + 16);

      *&v550 = v483;
      v484 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v484);

      v111 = "detectHumanHeadRectangles(";
      v112 = 0xD00000000000001CLL;
      goto LABEL_91;
    case 0x35u:
      v74 = v45;
      v75 = *v45;
      v76 = *(v46 + 2);
      v77 = *(v46 + 6);
      v59 = *(v74 + 7);
      *&v550 = 0xD000000000000015;
      *(&v550 + 1) = 0x80000001A6054380;
      *v557 = v75;
      *&v557[8] = v76;
      v78 = *(v74 + 2);
      *&v557[16] = *(v74 + 1);
      *&v557[32] = v78;
      *&v558 = v77;
      sub_1A5B665E0();
LABEL_98:
      v497 = sub_1A5FD4ACC();
      v499 = v498;

      MEMORY[0x1AC554600](v497, v499);
LABEL_99:

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v500 = *(v59 + 16);

      *v557 = v500;
      v501 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v501);

      v457 = 0x80000001A60543A0;
      v255 = 0xD000000000000012;
      goto LABEL_100;
    case 0x36u:
      v458 = v45;
      v459 = *v45;
      v460 = *(v46 + 5);
      v54 = *(v458 + 6);
      *&v550 = 0xD000000000000014;
      *(&v550 + 1) = 0x80000001A6054400;
      *v557 = v459;
      *&v557[8] = *(v458 + 8);
      *&v557[24] = *(v458 + 24);
      *&v557[40] = v460;
      sub_1A5B666DC();
      v461 = sub_1A5FD4ACC();
      v463 = v462;

      MEMORY[0x1AC554600](v461, v463);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v377 = type metadata accessor for RecognizedObjectObservation();
      goto LABEL_96;
    case 0x37u:
      v474 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v474;
      *&v557[32] = *(v45 + 2);
      v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF638);
      v141 = v549;
      sub_1A5B5C4C0(&v45[*(v475 + 48)], v549, type metadata accessor for PixelBufferObservation);
      *&v562 = 0xD00000000000001BLL;
      *(&v562 + 1) = 0x80000001A60543E0;
      v550 = *v557;
      v551 = *&v557[16];
      v552 = *&v557[32];
      sub_1A5B66634();
      v149 = sub_1A5FD4ACC();
      v151 = v476;
      sub_1A5B66688(v557);
      goto LABEL_86;
    case 0x38u:
      v81 = v45;
      v82 = *v45;
      v83 = v45[40];
      v84 = *(v46 + 6);
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF630) + 48);
      v549 = *(v81 + 8);
      v548 = *(v81 + 24);
      v86 = &v81[v85];
      v87 = v534;
      sub_1A5B5C4C0(v86, v534, type metadata accessor for DetectionPrintObservation);
      *&v550 = 0xD000000000000017;
      *(&v550 + 1) = 0x80000001A60543C0;
      v557[0] = v82;
      *&v557[24] = v548;
      *&v557[8] = v549;
      v557[40] = v83;
      *&v558 = v84;
      sub_1A5B3E0F0();
      v88 = sub_1A5FD4ACC();
      v90 = v89;

      MEMORY[0x1AC554600](v88, v90);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EEE98, type metadata accessor for DetectionPrintObservation);
      v91 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v91);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v550;
      v93 = type metadata accessor for DetectionPrintObservation;
      goto LABEL_84;
    case 0x39u:
      v396 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v396;
      *&v557[32] = *(v45 + 2);
      v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF628);
      v141 = v549;
      sub_1A5B5C4C0(&v45[*(v397 + 48)], v549, type metadata accessor for PixelBufferObservation);
      *&v562 = 0xD00000000000001CLL;
      *(&v562 + 1) = 0x80000001A6054360;
      v550 = *v557;
      v551 = *&v557[16];
      v552 = *&v557[32];
      sub_1A5B487B4();
      v149 = sub_1A5FD4ACC();
      v151 = v398;
      sub_1A5B6658C(v557);
      goto LABEL_86;
    case 0x3Au:
      v147 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v147;
      *&v557[32] = *(v45 + 2);
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF620);
      v141 = v549;
      sub_1A5B5C4C0(&v45[*(v148 + 48)], v549, type metadata accessor for PixelBufferObservation);
      *&v562 = 0xD000000000000024;
      *(&v562 + 1) = 0x80000001A6054330;
      v550 = *v557;
      v551 = *&v557[16];
      v552 = *&v557[32];
      sub_1A5B664E4();
      v149 = sub_1A5FD4ACC();
      v151 = v150;
      sub_1A5B66538(v557);
      goto LABEL_86;
    case 0x3Bu:
      v410 = *v45;
      v411 = *(v45 + 5);
      v412 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF618) + 48);
      v549 = *(v45 + 8);
      v548 = *(v45 + 24);
      v87 = v536;
      sub_1A5B5C4C0(&v45[v412], v536, type metadata accessor for ImageFingerprintsObservation);
      *&v550 = 0xD00000000000001ALL;
      *(&v550 + 1) = 0x80000001A6054310;
      v557[0] = v410;
      *&v557[24] = v548;
      *&v557[8] = v549;
      *&v557[40] = v411;
      sub_1A5B66490();
      v413 = sub_1A5FD4ACC();
      v415 = v414;

      MEMORY[0x1AC554600](v413, v415);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EF9B8, type metadata accessor for ImageFingerprintsObservation);
      v416 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v416);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v550;
      v93 = type metadata accessor for ImageFingerprintsObservation;
      goto LABEL_84;
    case 0x3Cu:
      v177 = *(v45 + 4);
      v178 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF610) + 48);
      v179 = *(v45 + 1);
      v549 = *v45;
      v548 = v179;
      v87 = v547;
      sub_1A5B5C4C0(&v45[v178], v547, type metadata accessor for FeaturePrintObservation);
      *&v550 = 0xD000000000000013;
      *(&v550 + 1) = 0x80000001A60542F0;
      *v557 = v549;
      *&v557[16] = v548;
      *&v557[32] = v177;
      sub_1A5B6643C();
LABEL_50:
      v318 = sub_1A5FD4ACC();
      v320 = v319;

      MEMORY[0x1AC554600](v318, v320);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EE928, type metadata accessor for FeaturePrintObservation);
      v321 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v321);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v550;
      v93 = type metadata accessor for FeaturePrintObservation;
      goto LABEL_84;
    case 0x3Du:
      v282 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v282;
      *&v557[32] = *(v45 + 2);
      v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF608);
      v141 = v549;
      sub_1A5B5C4C0(&v45[*(v283 + 48)], v549, type metadata accessor for PixelBufferObservation);
      *&v562 = 0xD000000000000018;
      *(&v562 + 1) = 0x80000001A60542D0;
      v550 = *v557;
      v551 = *&v557[16];
      v552 = *&v557[32];
      sub_1A5B66394();
      v149 = sub_1A5FD4ACC();
      v151 = v284;
      sub_1A5B663E8(v557);
LABEL_86:
      MEMORY[0x1AC554600](v149, v151);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EF5A0, type metadata accessor for PixelBufferObservation);
      v477 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v477);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v562;
LABEL_87:
      v144 = type metadata accessor for PixelBufferObservation;
LABEL_88:
      v123 = v144;
      v124 = v141;
      goto LABEL_89;
    case 0x3Eu:
      v309 = v45;
      v310 = *(v45 + 4);
      v64 = *(v46 + 5);
      *v557 = 0;
      *&v557[8] = 0xE000000000000000;
      v311 = v309[1];
      v549 = *v309;
      v548 = v311;
      sub_1A5FD46AC();
      v550 = *v557;
      MEMORY[0x1AC554600](0xD000000000000015, 0x80000001A60542B0);
      *v557 = v549;
      *&v557[16] = v548;
      *&v557[32] = v310;
      sub_1A5B66340();
      goto LABEL_79;
    case 0x3Fu:
      v217 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v217;
      *&v557[32] = *(v45 + 2);
      v218 = *(v45 + 7);
      *&v558 = *(v45 + 6);
      *&v550 = 0;
      *(&v550 + 1) = 0xE000000000000000;
      sub_1A5FD46AC();
      v562 = v550;
      MEMORY[0x1AC554600](0xD00000000000001ALL, 0x80000001A6054290);
      v550 = *v557;
      v551 = *&v557[16];
      v552 = *&v557[32];
      *&v553 = v558;
      sub_1A5B66298();
      v219 = sub_1A5FD4ACC();
      v221 = v220;
      sub_1A5B662EC(v557);
      MEMORY[0x1AC554600](v219, v221);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v222 = *(v218 + 16);

      *&v550 = v222;
      v223 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v223);

      v111 = "recognizeSportBalls(";
      v224 = 13;
LABEL_75:
      v112 = v224 | 0xD000000000000012;
LABEL_91:
      v308 = v111 | 0x8000000000000000;
      goto LABEL_92;
    case 0x40u:
      v180 = v45;
      v181 = *(v45 + 4);
      v64 = *(v46 + 5);
      *v557 = 0;
      *&v557[8] = 0xE000000000000000;
      v182 = v180[1];
      v549 = *v180;
      v548 = v182;
      sub_1A5FD46AC();
      v550 = *v557;
      MEMORY[0x1AC554600](0xD000000000000016, 0x80000001A6054270);
      *v557 = v549;
      *&v557[16] = v548;
      *&v557[32] = v181;
      sub_1A5B66244();
      goto LABEL_79;
    case 0x41u:
      v296 = *(v45 + 3);
      v297 = *(v45 + 1);
      *&v557[32] = *(v45 + 2);
      v558 = v296;
      v298 = *(v45 + 3);
      v559 = *(v45 + 4);
      v299 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v299;
      v552 = *&v557[32];
      v553 = v298;
      v554 = *(v45 + 4);
      v300 = *(v45 + 11);
      *&v560 = *(v45 + 10);
      *&v562 = 0xD000000000000011;
      *(&v562 + 1) = 0x80000001A6054250;
      *&v555 = *(v45 + 10);
      v550 = *v557;
      v551 = v297;
      sub_1A5B6619C();
      v301 = sub_1A5FD4ACC();
      v303 = v302;
      sub_1A5B661F0(v557);
      MEMORY[0x1AC554600](v301, v303);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v304 = type metadata accessor for RecognizedObjectObservation();
      v305 = MEMORY[0x1AC554750](v300, v304);
      v307 = v306;

      MEMORY[0x1AC554600](v305, v307);

      v112 = 41;
      v308 = 0xE100000000000000;
      goto LABEL_92;
    case 0x42u:
      v63 = v45;
      v65 = *(v45 + 4);
      v64 = *(v46 + 5);
      *v557 = 0;
      *&v557[8] = 0xE000000000000000;
      v66 = v63[1];
      v549 = *v63;
      v548 = v66;
      sub_1A5FD46AC();
      v550 = *v557;
      MEMORY[0x1AC554600](0xD00000000000001ELL, 0x80000001A6054230);
      *v557 = v549;
      *&v557[16] = v548;
      *&v557[32] = v65;
      sub_1A5B66148();
      goto LABEL_79;
    case 0x43u:
      v125 = v45;
      v126 = *(v45 + 4);
      v64 = *(v46 + 5);
      *v557 = 0;
      *&v557[8] = 0xE000000000000000;
      v127 = v125[1];
      v549 = *v125;
      v548 = v127;
      sub_1A5FD46AC();
      v550 = *v557;
      MEMORY[0x1AC554600](0xD000000000000014, 0x80000001A60541F0);
      *v557 = v549;
      *&v557[16] = v548;
      *&v557[32] = v126;
      sub_1A5B660F4();
LABEL_79:
      v452 = sub_1A5FD4ACC();
      v454 = v453;

      MEMORY[0x1AC554600](v452, v454);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v455 = *(v64 + 16);

      *v557 = v455;
      v456 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v456);

      v254 = "recognizeSportBalls(";
      v332 = 13;
LABEL_80:
      v255 = v332 | 0xD000000000000012;
LABEL_81:
      v457 = v254 | 0x8000000000000000;
      goto LABEL_100;
    case 0x44u:
      v502 = v45;
      v503 = *v45;
      v504 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4CD0);
      v198 = &qword_1EB1EF6F8;
      v259 = v538;
      sub_1A5B60994(&v502[*(v504 + 48)], v538, &qword_1EB1EF6F8);
      strcpy(v557, "trackMask(");
      v557[11] = 0;
      *&v557[12] = -369098752;
      *&v550 = v503;
      type metadata accessor for TrackMaskRequest(0);
      sub_1A5B5E6AC(&qword_1EB1EF968, type metadata accessor for TrackMaskRequest);
      v505 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v505);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B31A34(v259, v535, &qword_1EB1EF6F8);
      v506 = sub_1A5FD3D7C();
      MEMORY[0x1AC554600](v506);

LABEL_102:
      v92 = *v557;
      v192 = v259;
LABEL_103:
      v193 = v198;
LABEL_104:
      sub_1A5B10168(v192, v193);
      return v92;
    case 0x45u:
      v99 = *v45;
      v100 = *(v45 + 5);
      v54 = *(v46 + 6);
      *&v550 = 0xD000000000000017;
      *(&v550 + 1) = 0x80000001A60541D0;
      v557[0] = v99;
      *&v557[8] = *(v46 + 8);
      *&v557[24] = *(v46 + 24);
      *&v557[40] = v100;
      sub_1A5B660A0();
      goto LABEL_95;
    case 0x46u:
      v52 = *v45;
      v53 = v45[40];
      v55 = *(v45 + 6);
      v54 = *(v46 + 7);
      *&v550 = 0xD000000000000018;
      *(&v550 + 1) = 0x80000001A60541B0;
      v557[0] = v52;
      *&v557[8] = *(v46 + 8);
      *&v557[24] = *(v46 + 24);
      v557[40] = v53;
      *&v558 = v55;
      sub_1A5B6604C();
      goto LABEL_95;
    case 0x47u:
      v67 = *v45;
      v68 = v45[40];
      v69 = *(v45 + 6);
      v54 = *(v46 + 7);
      *&v550 = 0xD000000000000018;
      *(&v550 + 1) = 0x80000001A6054190;
      v557[0] = v67;
      *&v557[8] = *(v46 + 8);
      *&v557[24] = *(v46 + 24);
      v557[40] = v68;
      *&v558 = v69;
      sub_1A5B65FF8();
LABEL_95:
      v488 = sub_1A5FD4ACC();
      v490 = v489;

      MEMORY[0x1AC554600](v488, v490);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v377 = type metadata accessor for ClassificationObservation();
LABEL_96:
      v491 = MEMORY[0x1AC554750](v54, v377);
      v493 = v492;

      MEMORY[0x1AC554600](v491, v493);

      v255 = 41;
      v457 = 0xE100000000000000;
LABEL_100:
      MEMORY[0x1AC554600](v255, v457);
      v92 = v550;
      break;
    case 0x48u:
      v464 = v45;
      v465 = *v45;
      v466 = v45[40];
      v467 = *(v46 + 6);
      v468 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF600) + 48);
      v549 = *(v464 + 8);
      v548 = *(v464 + 24);
      v469 = &v464[v468];
      v87 = v540;
      sub_1A5B5C4C0(v469, v540, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
      *&v550 = 0xD000000000000018;
      *(&v550 + 1) = 0x80000001A6054170;
      v557[0] = v465;
      *&v557[24] = v548;
      *&v557[8] = v549;
      v557[40] = v466;
      *&v558 = v467;
      sub_1A5B65FA4();
      v470 = sub_1A5FD4ACC();
      v472 = v471;

      MEMORY[0x1AC554600](v470, v472);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      sub_1A5B5E6AC(&qword_1EB1EF948, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
      v473 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v473);

      MEMORY[0x1AC554600](41, 0xE100000000000000);
      v92 = v550;
      v93 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation;
LABEL_84:
      v123 = v93;
      v124 = v87;
LABEL_89:
      sub_1A5B5DF14(v124, v123);
      break;
    default:
      v47 = *(v45 + 1);
      *v557 = *v45;
      *&v557[16] = v47;
      *&v557[32] = *(v45 + 2);
      v48 = *(v45 + 7);
      *&v558 = *(v45 + 6);
      *&v550 = 0;
      *(&v550 + 1) = 0xE000000000000000;
      sub_1A5FD46AC();

      *&v562 = 0xD000000000000015;
      *(&v562 + 1) = 0x80000001A6054B20;
      v550 = *v557;
      v551 = *&v557[16];
      v552 = *&v557[32];
      *&v553 = v558;
      sub_1A5B673A8();
      v49 = sub_1A5FD4ACC();
      v51 = v50;
      sub_1A5B673FC(v557);
LABEL_26:
      MEMORY[0x1AC554600](v49, v51);

      MEMORY[0x1AC554600](8236, 0xE200000000000000);
      v162 = *(v48 + 16);

      *&v550 = v162;
      v163 = sub_1A5FD4ACC();
      MEMORY[0x1AC554600](v163);

      v164 = " FaceObservations)";
LABEL_54:
      v308 = (v164 - 32) | 0x8000000000000000;
      v112 = 0xD000000000000012;
LABEL_92:
      MEMORY[0x1AC554600](v112, v308);
LABEL_93:
      v92 = v562;
      break;
  }

  return v92;
}

unint64_t sub_1A5B65FA4()
{
  result = qword_1EB1EF940;
  if (!qword_1EB1EF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF940);
  }

  return result;
}

unint64_t sub_1A5B65FF8()
{
  result = qword_1EB1EF950;
  if (!qword_1EB1EF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF950);
  }

  return result;
}

unint64_t sub_1A5B6604C()
{
  result = qword_1EB1EF958;
  if (!qword_1EB1EF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF958);
  }

  return result;
}

unint64_t sub_1A5B660A0()
{
  result = qword_1EB1EF960;
  if (!qword_1EB1EF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF960);
  }

  return result;
}

unint64_t sub_1A5B660F4()
{
  result = qword_1EB1EF970;
  if (!qword_1EB1EF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF970);
  }

  return result;
}

unint64_t sub_1A5B66148()
{
  result = qword_1EB1EF978;
  if (!qword_1EB1EF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF978);
  }

  return result;
}

unint64_t sub_1A5B6619C()
{
  result = qword_1EB1EF980;
  if (!qword_1EB1EF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF980);
  }

  return result;
}

unint64_t sub_1A5B66244()
{
  result = qword_1EB1EF988;
  if (!qword_1EB1EF988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF988);
  }

  return result;
}

unint64_t sub_1A5B66298()
{
  result = qword_1EB1EF990;
  if (!qword_1EB1EF990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF990);
  }

  return result;
}

unint64_t sub_1A5B66340()
{
  result = qword_1EB1EF998;
  if (!qword_1EB1EF998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF998);
  }

  return result;
}

unint64_t sub_1A5B66394()
{
  result = qword_1EB1EF9A0;
  if (!qword_1EB1EF9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9A0);
  }

  return result;
}

unint64_t sub_1A5B6643C()
{
  result = qword_1EB1EF9A8;
  if (!qword_1EB1EF9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9A8);
  }

  return result;
}

unint64_t sub_1A5B66490()
{
  result = qword_1EB1EF9B0;
  if (!qword_1EB1EF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9B0);
  }

  return result;
}

unint64_t sub_1A5B664E4()
{
  result = qword_1EB1EF9C0;
  if (!qword_1EB1EF9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9C0);
  }

  return result;
}

unint64_t sub_1A5B665E0()
{
  result = qword_1EB1EF9C8;
  if (!qword_1EB1EF9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9C8);
  }

  return result;
}

unint64_t sub_1A5B66634()
{
  result = qword_1EB1EF9D0;
  if (!qword_1EB1EF9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9D0);
  }

  return result;
}

unint64_t sub_1A5B666DC()
{
  result = qword_1EB1EF9D8;
  if (!qword_1EB1EF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9D8);
  }

  return result;
}

unint64_t sub_1A5B66730()
{
  result = qword_1EB1EF9E0;
  if (!qword_1EB1EF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9E0);
  }

  return result;
}

unint64_t sub_1A5B667D8()
{
  result = qword_1EB1EF9E8;
  if (!qword_1EB1EF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9E8);
  }

  return result;
}

unint64_t sub_1A5B6682C()
{
  result = qword_1EB1EF9F0;
  if (!qword_1EB1EF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9F0);
  }

  return result;
}

unint64_t sub_1A5B66880()
{
  result = qword_1EB1EF9F8;
  if (!qword_1EB1EF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EF9F8);
  }

  return result;
}

unint64_t sub_1A5B668D4()
{
  result = qword_1EB1EFA08;
  if (!qword_1EB1EFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFA08);
  }

  return result;
}

unint64_t sub_1A5B66928()
{
  result = qword_1EB1EFA18;
  if (!qword_1EB1EFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFA18);
  }

  return result;
}

unint64_t sub_1A5B6697C()
{
  result = qword_1EB1EFA28;
  if (!qword_1EB1EFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFA28);
  }

  return result;
}

unint64_t sub_1A5B669D0()
{
  result = qword_1EB1EFA30;
  if (!qword_1EB1EFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFA30);
  }

  return result;
}

unint64_t sub_1A5B66A24()
{
  result = qword_1EB1EFA80;
  if (!qword_1EB1EFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFA80);
  }

  return result;
}

unint64_t sub_1A5B66ACC()
{
  result = qword_1EB1EFA88;
  if (!qword_1EB1EFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFA88);
  }

  return result;
}

unint64_t sub_1A5B66B74()
{
  result = qword_1EB1EFA90;
  if (!qword_1EB1EFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFA90);
  }

  return result;
}

unint64_t sub_1A5B66BC8()
{
  result = qword_1EB1EFAA0;
  if (!qword_1EB1EFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAA0);
  }

  return result;
}

unint64_t sub_1A5B66C1C()
{
  result = qword_1EB1EFAB0;
  if (!qword_1EB1EFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAB0);
  }

  return result;
}

unint64_t sub_1A5B66C70()
{
  result = qword_1EB1EFAB8;
  if (!qword_1EB1EFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAB8);
  }

  return result;
}

unint64_t sub_1A5B66CC4()
{
  result = qword_1EB1EFAC0;
  if (!qword_1EB1EFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAC0);
  }

  return result;
}

unint64_t sub_1A5B66D18()
{
  result = qword_1EB1F1630;
  if (!qword_1EB1F1630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F1630);
  }

  return result;
}

unint64_t sub_1A5B66DC0()
{
  result = qword_1EB1EFAD0;
  if (!qword_1EB1EFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAD0);
  }

  return result;
}

unint64_t sub_1A5B66E68()
{
  result = qword_1EB1EFAD8;
  if (!qword_1EB1EFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAD8);
  }

  return result;
}

unint64_t sub_1A5B66EBC()
{
  result = qword_1EB1EFAE8;
  if (!qword_1EB1EFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAE8);
  }

  return result;
}

unint64_t sub_1A5B66F64()
{
  result = qword_1EB1EFAF0;
  if (!qword_1EB1EFAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAF0);
  }

  return result;
}

unint64_t sub_1A5B66FB8()
{
  result = qword_1EB1EFAF8;
  if (!qword_1EB1EFAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFAF8);
  }

  return result;
}

unint64_t sub_1A5B6700C()
{
  result = qword_1EB1EFB00;
  if (!qword_1EB1EFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB00);
  }

  return result;
}

unint64_t sub_1A5B67060()
{
  result = qword_1EB1EFB08;
  if (!qword_1EB1EFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB08);
  }

  return result;
}

unint64_t sub_1A5B670B4()
{
  result = qword_1EB1EFB10;
  if (!qword_1EB1EFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB10);
  }

  return result;
}

unint64_t sub_1A5B6715C()
{
  result = qword_1EB1EFB20;
  if (!qword_1EB1EFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB20);
  }

  return result;
}

unint64_t sub_1A5B67204()
{
  result = qword_1EB1EFB28;
  if (!qword_1EB1EFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB28);
  }

  return result;
}

unint64_t sub_1A5B67258()
{
  result = qword_1EB1EFB30;
  if (!qword_1EB1EFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB30);
  }

  return result;
}

unint64_t sub_1A5B67300()
{
  result = qword_1EB1EFB38;
  if (!qword_1EB1EFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB38);
  }

  return result;
}

unint64_t sub_1A5B673A8()
{
  result = qword_1EB1EE680;
  if (!qword_1EB1EE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EE680);
  }

  return result;
}

unint64_t sub_1A5B67450()
{
  result = qword_1EB1EFB48;
  if (!qword_1EB1EFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EFB48);
  }

  return result;
}

uint64_t sub_1A5B674A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumanObservation();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for HumanObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for HumanObservation);
        sub_1A5B5E6AC(&qword_1EB1EE860, type metadata accessor for HumanObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for HumanObservation);
        sub_1A5B5DF14(v10, type metadata accessor for HumanObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B676B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationObservation();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for ClassificationObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for ClassificationObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE78, type metadata accessor for ClassificationObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for ClassificationObservation);
        sub_1A5B5DF14(v10, type metadata accessor for ClassificationObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B678B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimalBodyPoseObservation();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for AnimalBodyPoseObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for AnimalBodyPoseObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE30, type metadata accessor for AnimalBodyPoseObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for AnimalBodyPoseObservation);
        sub_1A5B5DF14(v10, type metadata accessor for AnimalBodyPoseObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B67AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BarcodeObservation();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for BarcodeObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for BarcodeObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE38, type metadata accessor for BarcodeObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for BarcodeObservation);
        sub_1A5B5DF14(v10, type metadata accessor for BarcodeObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B67CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumanBodyPoseObservation();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for HumanBodyPoseObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for HumanBodyPoseObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE40, type metadata accessor for HumanBodyPoseObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for HumanBodyPoseObservation);
        sub_1A5B5DF14(v10, type metadata accessor for HumanBodyPoseObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B67ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumanBodyPose3DObservation();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for HumanBodyPose3DObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for HumanBodyPose3DObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE48, type metadata accessor for HumanBodyPose3DObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for HumanBodyPose3DObservation);
        sub_1A5B5DF14(v10, type metadata accessor for HumanBodyPose3DObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B680D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HumanHandPoseObservation();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for HumanHandPoseObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for HumanHandPoseObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE50, type metadata accessor for HumanHandPoseObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for HumanHandPoseObservation);
        sub_1A5B5DF14(v10, type metadata accessor for HumanHandPoseObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B682E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RectangleObservation();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for RectangleObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for RectangleObservation);
        sub_1A5B5E6AC(&qword_1EB1EED68, type metadata accessor for RectangleObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for RectangleObservation);
        sub_1A5B5DF14(v10, type metadata accessor for RectangleObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B684E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextObservation();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for TextObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for TextObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE58, type metadata accessor for TextObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for TextObservation);
        sub_1A5B5DF14(v10, type metadata accessor for TextObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B686F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrajectoryObservation();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for TrajectoryObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for TrajectoryObservation);
        sub_1A5B5E6AC(&qword_1EB1EECE0, type metadata accessor for TrajectoryObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for TrajectoryObservation);
        sub_1A5B5DF14(v10, type metadata accessor for TrajectoryObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B688F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecognizedObjectObservation();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for RecognizedObjectObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for RecognizedObjectObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE70, type metadata accessor for RecognizedObjectObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for RecognizedObjectObservation);
        sub_1A5B5DF14(v10, type metadata accessor for RecognizedObjectObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B68B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentObservation(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for DocumentObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for DocumentObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE60, type metadata accessor for DocumentObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for DocumentObservation);
        sub_1A5B5DF14(v10, type metadata accessor for DocumentObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B68D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecognizedTextObservation();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for RecognizedTextObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for RecognizedTextObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE68, type metadata accessor for RecognizedTextObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for RecognizedTextObservation);
        sub_1A5B5DF14(v10, type metadata accessor for RecognizedTextObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B68F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PixelBufferObservation();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for PixelBufferObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for PixelBufferObservation);
        sub_1A5B5E6AC(&qword_1EB1EFDE0, type metadata accessor for PixelBufferObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for PixelBufferObservation);
        sub_1A5B5DF14(v10, type metadata accessor for PixelBufferObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A5B69118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAestheticsObservation();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A5B5DE58(v13, v10, type metadata accessor for ImageAestheticsObservation);
        sub_1A5B5DE58(v14, v7, type metadata accessor for ImageAestheticsObservation);
        sub_1A5B5E6AC(&qword_1EB1EF2A0, type metadata accessor for ImageAestheticsObservation);
        v16 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v7, type metadata accessor for ImageAestheticsObservation);
        sub_1A5B5DF14(v10, type metadata accessor for ImageAestheticsObservation);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

size_t sub_1A5B69328(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFED8, &unk_1A5FFA048, type metadata accessor for ImageAestheticsObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B6936C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEE0, &unk_1A5FFA050, type metadata accessor for RecognizedObjectObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B693B0(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFED0, &unk_1A5FFCFC0, type metadata accessor for RecognizedTextObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B693F4(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEC8, &unk_1A5FFA038, type metadata accessor for DocumentObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B69438(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEC0, &unk_1A5FFA030, type metadata accessor for TrajectoryObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B6947C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEB8, &unk_1A5FFA028, type metadata accessor for TextObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B694C0(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEB0, &unk_1A6009450, type metadata accessor for RectangleObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B69504(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEA8, &unk_1A5FFA020, type metadata accessor for DetectedObjectObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B69548(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEA0, &unk_1A5FFA018, type metadata accessor for HumanHandPoseObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B6958C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFE98, &unk_1A5FFA010, type metadata accessor for HumanBodyPose3DObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B695D0(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFE90, &unk_1A5FFA008, type metadata accessor for HumanBodyPoseObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B69614(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFE88, &unk_1A5FFA000, type metadata accessor for BarcodeObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B69658(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFE80, &unk_1A5FF9FF8, type metadata accessor for AnimalBodyPoseObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B6969C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1EFEE8, &unk_1A60083F0, type metadata accessor for ClassificationObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B696E0(size_t a1, int64_t a2, char a3)
{
  result = sub_1A5B69724(a1, a2, a3, *v3, &qword_1EB1F2E00, &unk_1A5FFA040, type metadata accessor for HumanObservation);
  *v3 = result;
  return result;
}

size_t sub_1A5B69724(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t _s6Vision0A6ResultO2eeoiySbAC_ACtFZ_0(uint64_t a1, void *a2)
{
  v1179 = a2;
  *&v1178 = a1;
  v2 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v1100 = &v1011 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v1099 = &v1011 - v5;
  v1051 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDA0);
  MEMORY[0x1EEE9AC00](v1051);
  v1052 = &v1011 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v1026 = &v1011 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v1111 = &v1011 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v1101 = &v1011 - v12;
  v13 = type metadata accessor for ImageFingerprintsObservation();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v1098 = &v1011 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v1097 = &v1011 - v16;
  v17 = type metadata accessor for DetectionPrintObservation();
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v1096 = &v1011 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v1095 = &v1011 - v20;
  v21 = type metadata accessor for ImageExposureObservation();
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v1093 = &v1011 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v1092 = &v1011 - v24;
  v25 = type metadata accessor for ImageBlurObservation();
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v1091 = &v1011 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v1090 = &v1011 - v28;
  v29 = type metadata accessor for ImageTranslationAlignmentObservation();
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v1089 = &v1011 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v1088 = &v1011 - v32;
  v1049 = type metadata accessor for RectangleObservation();
  v1047 = *(v1049 - 8);
  MEMORY[0x1EEE9AC00](v1049);
  v1017 = &v1011 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1043 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDA8);
  MEMORY[0x1EEE9AC00](v1043);
  v1050 = &v1011 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7C8);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v1025 = &v1011 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v1110 = &v1011 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v1094 = &v1011 - v40;
  v1046 = type metadata accessor for OpticalFlowObservation();
  v1044 = *(v1046 - 8);
  MEMORY[0x1EEE9AC00](v1046);
  v1016 = &v1011 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1040 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDB0);
  MEMORY[0x1EEE9AC00](v1040);
  v1048 = &v1011 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7D8);
  v44 = MEMORY[0x1EEE9AC00](v43 - 8);
  v1024 = &v1011 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v1109 = &v1011 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v1087 = &v1011 - v48;
  v49 = type metadata accessor for DetectedObjectObservation();
  v1041 = *(v49 - 8);
  v1042 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v1015 = &v1011 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1038 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDB8);
  MEMORY[0x1EEE9AC00](v1038);
  v1045 = &v1011 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF7E8);
  v53 = MEMORY[0x1EEE9AC00](v52 - 8);
  v1023 = &v1011 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v1108 = &v1011 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v1086 = &v1011 - v57;
  v58 = type metadata accessor for ImageHomographicAlignmentObservation();
  v59 = MEMORY[0x1EEE9AC00](v58 - 8);
  v1083 = &v1011 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v1082 = &v1011 - v61;
  v1039 = type metadata accessor for PixelBufferObservation();
  v1037 = *(v1039 - 8);
  v62 = MEMORY[0x1EEE9AC00](v1039);
  v1014 = &v1011 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v1081 = &v1011 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v1080 = &v1011 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v1079 = &v1011 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v1078 = &v1011 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v1077 = &v1011 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v1076 = &v1011 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v1075 = &v1011 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v1074 = &v1011 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v1072 = &v1011 - v81;
  MEMORY[0x1EEE9AC00](v80);
  v1071 = &v1011 - v82;
  v1085 = type metadata accessor for InstanceMaskObservation();
  v1084 = *(v1085 - 8);
  MEMORY[0x1EEE9AC00](v1085);
  v1022 = &v1011 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1073 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDC0);
  v84 = MEMORY[0x1EEE9AC00](v1073);
  v1036 = &v1011 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v1035 = &v1011 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF810);
  v88 = MEMORY[0x1EEE9AC00](v87 - 8);
  v1021 = &v1011 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x1EEE9AC00](v88);
  v1106 = &v1011 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v1107 = &v1011 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v1020 = &v1011 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v1104 = &v1011 - v97;
  MEMORY[0x1EEE9AC00](v96);
  v1105 = &v1011 - v98;
  v99 = type metadata accessor for FeaturePrintObservation();
  v100 = MEMORY[0x1EEE9AC00](v99 - 8);
  v1070 = &v1011 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = MEMORY[0x1EEE9AC00](v100);
  v1069 = &v1011 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v1068 = &v1011 - v105;
  MEMORY[0x1EEE9AC00](v104);
  v1067 = &v1011 - v106;
  v107 = type metadata accessor for SaliencyImageObservation();
  v108 = MEMORY[0x1EEE9AC00](v107 - 8);
  v1066 = &v1011 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = MEMORY[0x1EEE9AC00](v108);
  v1065 = &v1011 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v1064 = &v1011 - v113;
  MEMORY[0x1EEE9AC00](v112);
  v1063 = &v1011 - v114;
  v115 = type metadata accessor for SmudgeObservation();
  v116 = MEMORY[0x1EEE9AC00](v115 - 8);
  v1061 = &v1011 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v116);
  v1060 = &v1011 - v118;
  v119 = type metadata accessor for DetectHumanHandPoseRequest();
  v120 = MEMORY[0x1EEE9AC00](v119 - 8);
  v1059 = &v1011 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v120);
  v1058 = &v1011 - v122;
  v123 = type metadata accessor for HorizonObservation();
  v1032 = *(v123 - 8);
  v1033 = v123;
  MEMORY[0x1EEE9AC00](v123);
  v1013 = &v1011 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1028 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDC8);
  MEMORY[0x1EEE9AC00](v1028);
  v1034 = &v1011 - v125;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF870);
  v127 = MEMORY[0x1EEE9AC00](v126 - 8);
  v1019 = &v1011 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = MEMORY[0x1EEE9AC00](v127);
  v1103 = &v1011 - v130;
  MEMORY[0x1EEE9AC00](v129);
  v1062 = &v1011 - v131;
  v132 = type metadata accessor for DetectedDocumentObservation();
  v1029 = *(v132 - 8);
  v1030 = v132;
  MEMORY[0x1EEE9AC00](v132);
  v1012 = &v1011 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1027 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDD0);
  MEMORY[0x1EEE9AC00](v1027);
  v1031 = &v1011 - v134;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF888);
  v136 = MEMORY[0x1EEE9AC00](v135 - 8);
  v1018 = &v1011 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = MEMORY[0x1EEE9AC00](v136);
  v1102 = &v1011 - v139;
  MEMORY[0x1EEE9AC00](v138);
  v1057 = &v1011 - v140;
  v141 = type metadata accessor for ContoursObservation(0);
  v142 = MEMORY[0x1EEE9AC00](v141 - 8);
  v1056 = &v1011 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v142);
  v1055 = &v1011 - v144;
  v145 = type metadata accessor for ImageAestheticsScoresObservation();
  v146 = MEMORY[0x1EEE9AC00](v145 - 8);
  v1054 = &v1011 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v146);
  v1053 = &v1011 - v148;
  *&v1177 = type metadata accessor for VisionResult(0);
  v149 = MEMORY[0x1EEE9AC00](v1177);
  *&v1175 = &v1011 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = MEMORY[0x1EEE9AC00](v149);
  *&v1174 = &v1011 - v152;
  v153 = MEMORY[0x1EEE9AC00](v151);
  *&v1173 = &v1011 - v154;
  v155 = MEMORY[0x1EEE9AC00](v153);
  *&v1171 = &v1011 - v156;
  v157 = MEMORY[0x1EEE9AC00](v155);
  *&v1172 = &v1011 - v158;
  v159 = MEMORY[0x1EEE9AC00](v157);
  v1169 = &v1011 - v160;
  v161 = MEMORY[0x1EEE9AC00](v159);
  v1168 = &v1011 - v162;
  v163 = MEMORY[0x1EEE9AC00](v161);
  *&v1176 = &v1011 - v164;
  v165 = MEMORY[0x1EEE9AC00](v163);
  v1166 = &v1011 - v166;
  v167 = MEMORY[0x1EEE9AC00](v165);
  v1170 = &v1011 - v168;
  v169 = MEMORY[0x1EEE9AC00](v167);
  v1164 = &v1011 - v170;
  v171 = MEMORY[0x1EEE9AC00](v169);
  v1167 = (&v1011 - v172);
  v173 = MEMORY[0x1EEE9AC00](v171);
  v1165 = &v1011 - v174;
  v175 = MEMORY[0x1EEE9AC00](v173);
  v1163 = &v1011 - v176;
  v177 = MEMORY[0x1EEE9AC00](v175);
  v1162 = (&v1011 - v178);
  v179 = MEMORY[0x1EEE9AC00](v177);
  v1161 = (&v1011 - v180);
  v181 = MEMORY[0x1EEE9AC00](v179);
  v1157 = &v1011 - v182;
  v183 = MEMORY[0x1EEE9AC00](v181);
  v1160 = &v1011 - v184;
  v185 = MEMORY[0x1EEE9AC00](v183);
  v1159 = (&v1011 - v186);
  v187 = MEMORY[0x1EEE9AC00](v185);
  v1156 = &v1011 - v188;
  v189 = MEMORY[0x1EEE9AC00](v187);
  v1158 = &v1011 - v190;
  v191 = MEMORY[0x1EEE9AC00](v189);
  v1155 = &v1011 - v192;
  v193 = MEMORY[0x1EEE9AC00](v191);
  v1154 = &v1011 - v194;
  v195 = MEMORY[0x1EEE9AC00](v193);
  v1153 = &v1011 - v196;
  v197 = MEMORY[0x1EEE9AC00](v195);
  v1152 = &v1011 - v198;
  v199 = MEMORY[0x1EEE9AC00](v197);
  v1150 = &v1011 - v200;
  v201 = MEMORY[0x1EEE9AC00](v199);
  v1149 = &v1011 - v202;
  v203 = MEMORY[0x1EEE9AC00](v201);
  v1146 = &v1011 - v204;
  v205 = MEMORY[0x1EEE9AC00](v203);
  v1148 = &v1011 - v206;
  v207 = MEMORY[0x1EEE9AC00](v205);
  v1147 = &v1011 - v208;
  v209 = MEMORY[0x1EEE9AC00](v207);
  v1145 = &v1011 - v210;
  v211 = MEMORY[0x1EEE9AC00](v209);
  v1141 = (&v1011 - v212);
  v213 = MEMORY[0x1EEE9AC00](v211);
  v1144 = (&v1011 - v214);
  v215 = MEMORY[0x1EEE9AC00](v213);
  v1142 = &v1011 - v216;
  v217 = MEMORY[0x1EEE9AC00](v215);
  v1139 = (&v1011 - v218);
  v219 = MEMORY[0x1EEE9AC00](v217);
  v1136 = (&v1011 - v220);
  v221 = MEMORY[0x1EEE9AC00](v219);
  v1134 = (&v1011 - v222);
  v223 = MEMORY[0x1EEE9AC00](v221);
  v1151 = &v1011 - v224;
  v225 = MEMORY[0x1EEE9AC00](v223);
  v1137 = &v1011 - v226;
  v227 = MEMORY[0x1EEE9AC00](v225);
  v1138 = &v1011 - v228;
  v229 = MEMORY[0x1EEE9AC00](v227);
  v1135 = &v1011 - v230;
  v231 = MEMORY[0x1EEE9AC00](v229);
  v1133 = &v1011 - v232;
  v233 = MEMORY[0x1EEE9AC00](v231);
  v1132 = &v1011 - v234;
  v235 = MEMORY[0x1EEE9AC00](v233);
  v1131 = &v1011 - v236;
  v237 = MEMORY[0x1EEE9AC00](v235);
  v1140 = &v1011 - v238;
  v239 = MEMORY[0x1EEE9AC00](v237);
  v1143 = &v1011 - v240;
  v241 = MEMORY[0x1EEE9AC00](v239);
  v1127 = &v1011 - v242;
  v243 = MEMORY[0x1EEE9AC00](v241);
  v1129 = &v1011 - v244;
  v245 = MEMORY[0x1EEE9AC00](v243);
  v1128 = &v1011 - v246;
  v247 = MEMORY[0x1EEE9AC00](v245);
  v1126 = &v1011 - v248;
  v249 = MEMORY[0x1EEE9AC00](v247);
  v1124 = &v1011 - v250;
  v251 = MEMORY[0x1EEE9AC00](v249);
  v1123 = &v1011 - v252;
  v253 = MEMORY[0x1EEE9AC00](v251);
  v1122 = &v1011 - v254;
  v255 = MEMORY[0x1EEE9AC00](v253);
  v1119 = &v1011 - v256;
  v257 = MEMORY[0x1EEE9AC00](v255);
  v1130 = &v1011 - v258;
  v259 = MEMORY[0x1EEE9AC00](v257);
  v1125 = &v1011 - v260;
  v261 = MEMORY[0x1EEE9AC00](v259);
  v1121 = &v1011 - v262;
  v263 = MEMORY[0x1EEE9AC00](v261);
  v1120 = &v1011 - v264;
  v265 = MEMORY[0x1EEE9AC00](v263);
  v1113 = &v1011 - v266;
  v267 = MEMORY[0x1EEE9AC00](v265);
  v1116 = &v1011 - v268;
  v269 = MEMORY[0x1EEE9AC00](v267);
  v1118 = &v1011 - v270;
  v271 = MEMORY[0x1EEE9AC00](v269);
  v1112 = &v1011 - v272;
  v273 = MEMORY[0x1EEE9AC00](v271);
  v275 = &v1011 - v274;
  v276 = MEMORY[0x1EEE9AC00](v273);
  v278 = &v1011 - v277;
  v279 = MEMORY[0x1EEE9AC00](v276);
  v1117 = &v1011 - v280;
  v281 = MEMORY[0x1EEE9AC00](v279);
  v1114 = &v1011 - v282;
  v283 = MEMORY[0x1EEE9AC00](v281);
  v285 = &v1011 - v284;
  v286 = MEMORY[0x1EEE9AC00](v283);
  v1115 = &v1011 - v287;
  v288 = MEMORY[0x1EEE9AC00](v286);
  v290 = &v1011 - v289;
  v291 = MEMORY[0x1EEE9AC00](v288);
  v293 = &v1011 - v292;
  MEMORY[0x1EEE9AC00](v291);
  v295 = &v1011 - v294;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDD8);
  v297 = MEMORY[0x1EEE9AC00](v296 - 8);
  v299 = &v1011 - v298;
  v300 = &v1011 + *(v297 + 56) - v298;
  sub_1A5B5DE58(v1178, &v1011 - v298, type metadata accessor for VisionResult);
  v301 = v1179;
  v1179 = v300;
  sub_1A5B5DE58(v301, v300, type metadata accessor for VisionResult);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_1A5B5DE58(v299, v293, type metadata accessor for VisionResult);
      v302 = *(v293 + 1);
      *v1201 = *v293;
      *&v1201[16] = v302;
      *&v1201[32] = *(v293 + 2);
      v303 = *(v293 + 7);
      *&v1202 = *(v293 + 6);
      v304 = v1179;
      if (swift_getEnumCaseMultiPayload())
      {

        sub_1A5B673FC(v1201);
        goto LABEL_298;
      }

      v364 = v299;
      v966 = *(v304 + 1);
      v1196[0] = *v304;
      v1196[1] = v966;
      v968 = *v304;
      v967 = *(v304 + 1);
      v1196[2] = *(v304 + 2);
      v969 = *(v293 + 1);
      v1189 = *v293;
      v1190 = v969;
      v1191 = *(v293 + 2);
      *&v1197 = v304[6];
      *&v1192 = *(v293 + 6);
      v1182 = v968;
      v1183 = v967;
      v1184 = *(v304 + 2);
      v970 = v304[7];
      *&v1185 = v304[6];
      v971 = static DetectFaceRectanglesRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B673FC(v1196);
      sub_1A5B673FC(v1201);
      if (v971)
      {
        v347 = sub_1A5B0E074(v303, v970);
      }

      else
      {
        v347 = 0;
      }

      goto LABEL_241;
    case 1u:
      v316 = v299;
      sub_1A5B5DE58(v299, v295, type metadata accessor for VisionResult);
      v620 = *(v295 + 6);
      v619 = *(v295 + 7);
      v621 = v1179;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_223;
      }

      v622 = v295[40];
      v623 = *v621;
      v624 = *(v621 + 40);
      v626 = v621[6];
      v625 = v621[7];
      v1201[0] = *v295;
      *&v1201[8] = *(v295 + 8);
      *&v1201[24] = *(v295 + 24);
      v1201[40] = v622;
      *&v1202 = v620;
      LOBYTE(v1196[0]) = v623;
      *(v1196 + 8) = *(v621 + 1);
      *(&v1196[1] + 8) = *(v621 + 3);
      BYTE8(v1196[2]) = v624;
      *&v1197 = v626;
      v627 = static DetectHumanRectanglesRequest.== infix(_:_:)(v1201, v1196);

      if ((v627 & 1) == 0)
      {
        goto LABEL_225;
      }

      v444 = sub_1A5B674A8(v619, v625);
      goto LABEL_222;
    case 2u:
      v549 = v1137;
      sub_1A5B5DE58(v299, v1137, type metadata accessor for VisionResult);
      v550 = *(v549 + 40);
      v551 = v1179;
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        __swift_destroy_boxed_opaque_existential_1(v549);
        goto LABEL_298;
      }

      v316 = v299;
      v552 = *(v551 + 5);
      sub_1A5B063D4(v549, v1201);
      sub_1A5B063D4(v551, v1196);
      sub_1A5B180A0(v1201, &v1189);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EEB58);
      swift_dynamicCast();
      v553 = *(&v1183 + 1);
      v554 = v1184;
      __swift_project_boxed_opaque_existential_1(&v1182, *(&v1183 + 1));
      if ((*(v554 + 88))(v1196, v553, v554))
      {
        swift_getErrorValue();
        v555 = sub_1A5FD4B9C();
        v557 = v556;
        swift_getErrorValue();
        if (v555 == sub_1A5FD4B9C() && v557 == v558)
        {
          v347 = 1;
        }

        else
        {
          v347 = sub_1A5FD4B0C();
        }
      }

      else
      {
        v347 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v1196);
      __swift_destroy_boxed_opaque_existential_1(v1201);
      __swift_destroy_boxed_opaque_existential_1(&v1182);
      goto LABEL_267;
    case 3u:
      sub_1A5B5DE58(v299, v290, type metadata accessor for VisionResult);
      v685 = *(v290 + 5);
      v686 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C8) + 48);
      v687 = v1179;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v960 = type metadata accessor for ImageAestheticsScoresObservation;
        v961 = &v290[v686];
        goto LABEL_296;
      }

      *&v1178 = v299;
      v688 = *v290;
      v689 = *v687;
      v690 = v687[5];
      v1176 = *(v290 + 8);
      v1174 = *(v290 + 24);
      v1177 = *(v687 + 1);
      v1175 = *(v687 + 3);
      v691 = v1053;
      sub_1A5B5C4C0(&v290[v686], v1053, type metadata accessor for ImageAestheticsScoresObservation);
      v692 = v687 + v686;
      v693 = v1054;
      sub_1A5B5C4C0(v692, v1054, type metadata accessor for ImageAestheticsScoresObservation);
      v1201[0] = v688;
      *&v1201[24] = v1174;
      *&v1201[8] = v1176;
      *&v1201[40] = v685;
      LOBYTE(v1196[0]) = v689;
      *(&v1196[1] + 8) = v1175;
      *(v1196 + 8) = v1177;
      *(&v1196[2] + 1) = v690;
      v694 = static CalculateImageAestheticsScoresRequest.== infix(_:_:)(v1201, v1196);

      if (v694)
      {
        v347 = static ImageAestheticsScoresObservation.== infix(_:_:)(v691, v693);
      }

      else
      {
        v347 = 0;
      }

      v975 = v1178;
      sub_1A5B5DF14(v693, type metadata accessor for ImageAestheticsScoresObservation);
      sub_1A5B5DF14(v691, type metadata accessor for ImageAestheticsScoresObservation);
      v923 = v975;
      goto LABEL_355;
    case 4u:
      v702 = v1115;
      sub_1A5B5DE58(v299, v1115, type metadata accessor for VisionResult);
      v703 = *(v702 + 48);
      *&v1201[32] = *(v702 + 32);
      v1202 = v703;
      v1203 = *(v702 + 64);
      v704 = *(v702 + 16);
      *v1201 = *v702;
      *&v1201[16] = v704;
      v705 = *(v702 + 80);
      v706 = v1179;
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        sub_1A5B67354(v1201);
        goto LABEL_298;
      }

      v364 = v299;
      v707 = *(v706 + 1);
      v708 = *(v706 + 3);
      v1196[2] = *(v706 + 2);
      v1197 = v708;
      v709 = *(v706 + 3);
      v1198 = *(v706 + 4);
      v710 = *v706;
      v711 = *v706;
      v1196[1] = *(v706 + 1);
      v1196[0] = v710;
      v712 = *(v702 + 48);
      v1191 = *(v702 + 32);
      v1192 = v712;
      v1193 = *(v702 + 64);
      v713 = *v702;
      v1190 = *(v702 + 16);
      v1189 = v713;
      v1184 = v1196[2];
      v1185 = v709;
      v1186 = *(v706 + 4);
      v714 = v706[10];
      v1183 = v707;
      v1182 = v711;
      v715 = static ClassifyImageRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B67354(v1196);
      sub_1A5B67354(v1201);
      if ((v715 & 1) == 0)
      {
        goto LABEL_240;
      }

      v374 = sub_1A5B676B0(v705, v714);
      goto LABEL_239;
    case 5u:
      v569 = v1151;
      sub_1A5B5DE58(v299, v1151, type metadata accessor for VisionResult);
      v570 = *(v569 + 104);
      v1205 = *(v569 + 96);
      v571 = *(v569 + 80);
      v1203 = *(v569 + 64);
      v1204 = v571;
      v572 = *(v569 + 16);
      *v1201 = *v569;
      *&v1201[16] = v572;
      v573 = *(v569 + 48);
      *&v1201[32] = *(v569 + 32);
      v1202 = v573;
      v574 = v1179;
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        sub_1A5B672AC(v1201);
        goto LABEL_298;
      }

      v316 = v299;
      v575 = *(v574 + 3);
      v576 = *(v574 + 5);
      v1198 = *(v574 + 4);
      v1199 = v576;
      v577 = *(v574 + 1);
      v1196[0] = *v574;
      v1196[1] = v577;
      v578 = *(v574 + 2);
      v580 = *v574;
      v579 = *(v574 + 1);
      v581 = v578;
      v1197 = *(v574 + 3);
      v1196[2] = v578;
      v582 = *(v569 + 80);
      v1193 = *(v569 + 64);
      v1194 = v582;
      v583 = *(v569 + 16);
      v1189 = *v569;
      v1190 = v583;
      v584 = *(v569 + 32);
      v1192 = *(v569 + 48);
      v1191 = v584;
      v585 = *(v574 + 5);
      v1186 = v1198;
      v1187 = v585;
      v1182 = v580;
      v1183 = v579;
      v586 = v574[13];
      v1200 = v574[12];
      v1195 = *(v569 + 96);
      v1188 = v574[12];
      v1185 = v575;
      v1184 = v581;
      sub_1A5B724BC();
      if (sub_1A5FD3D0C())
      {
        *&v1189 = v570;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF928);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF8B8);
        if (swift_dynamicCast())
        {
          v587 = v1182;
          v1181 = v586;

          if (swift_dynamicCast())
          {
            v588 = sub_1A5B676B0(v587, v1180);
LABEL_404:
            v347 = v588;
            sub_1A5B672AC(v1196);
            sub_1A5B672AC(v1201);

            goto LABEL_267;
          }
        }

        *&v1189 = v570;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF8C0);
        if (swift_dynamicCast())
        {
          v1004 = v1182;
          v1181 = v586;

          if (swift_dynamicCast())
          {
            v588 = sub_1A5B688F8(v1004, v1180);
            goto LABEL_404;
          }
        }

        *&v1189 = v570;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFE08);
        if (swift_dynamicCast())
        {
          v1010 = v1182;
          v1181 = v586;

          if (swift_dynamicCast())
          {
            v588 = sub_1A5B68F10(v1010, v1180);
            goto LABEL_404;
          }

          sub_1A5B672AC(v1196);
          sub_1A5B672AC(v1201);
        }

        else
        {
          sub_1A5B672AC(v1196);
          sub_1A5B672AC(v1201);
        }
      }

      else
      {

        sub_1A5B672AC(v1196);
        sub_1A5B672AC(v1201);
      }

      sub_1A5B5DF14(v316, type metadata accessor for VisionResult);
      goto LABEL_299;
    case 6u:
      v628 = v299;
      sub_1A5B5DE58(v299, v285, type metadata accessor for VisionResult);
      v630 = *(v285 + 4);
      v629 = *(v285 + 5);
      v631 = v1179;
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        v299 = v628;
        goto LABEL_298;
      }

      v633 = v631[4];
      v632 = v631[5];
      v634 = *(v285 + 1);
      *v1201 = *v285;
      *&v1201[16] = v634;
      *&v1201[32] = v630;
      v635 = *(v631 + 1);
      v1196[0] = *v631;
      v1196[1] = v635;
      *&v1196[2] = v633;
      v636 = static DetectAnimalBodyPoseRequest.== infix(_:_:)(v1201, v1196);

      if (v636)
      {
        v347 = sub_1A5B678B8(v629, v632);
      }

      else
      {
        v347 = 0;
      }

      v299 = v628;
      goto LABEL_227;
    case 7u:
      v637 = v1114;
      sub_1A5B5DE58(v299, v1114, type metadata accessor for VisionResult);
      v638 = *(v637 + 16);
      *v1201 = *v637;
      *&v1201[16] = v638;
      v639 = *(v637 + 48);
      *&v1201[32] = *(v637 + 32);
      v1202 = v639;
      v640 = *(v637 + 64);
      v641 = v1179;
      if (swift_getEnumCaseMultiPayload() != 7)
      {

        sub_1A5B671B0(v1201);
        goto LABEL_298;
      }

      v475 = v299;
      v642 = *(v641 + 1);
      v1196[0] = *v641;
      v1196[1] = v642;
      v643 = *(v641 + 3);
      v645 = *v641;
      v644 = *(v641 + 1);
      v1196[2] = *(v641 + 2);
      v1197 = v643;
      v646 = *(v637 + 16);
      v1189 = *v637;
      v1190 = v646;
      v647 = *(v637 + 48);
      v1191 = *(v637 + 32);
      v1192 = v647;
      v648 = v641[8];
      v1182 = v645;
      v1183 = v644;
      v649 = *(v641 + 3);
      v1184 = *(v641 + 2);
      v1185 = v649;
      v650 = static DetectBarcodesRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B671B0(v1196);
      sub_1A5B671B0(v1201);
      if (v650)
      {
        v347 = sub_1A5B67AC0(v640, v648);
      }

      else
      {
        v347 = 0;
      }

      goto LABEL_339;
    case 8u:
      v747 = v1117;
      sub_1A5B5DE58(v299, v1117, type metadata accessor for VisionResult);
      v748 = *(v747 + 48);
      *&v1201[32] = *(v747 + 32);
      v1202 = v748;
      *&v1203 = *(v747 + 64);
      v749 = *(v747 + 16);
      *v1201 = *v747;
      *&v1201[16] = v749;
      v750 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6C0) + 48);
      v751 = v1179;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        sub_1A5B5DF14(v747 + v750, type metadata accessor for ContoursObservation);
        sub_1A5B67108(v1201);
        goto LABEL_298;
      }

      v752 = *(v751 + 3);
      v1196[2] = *(v751 + 2);
      v1197 = v752;
      *&v1198 = v751[8];
      v753 = *v751;
      v1196[1] = *(v751 + 1);
      v1196[0] = v753;
      v754 = v747 + v750;
      v343 = v1055;
      sub_1A5B5C4C0(v754, v1055, type metadata accessor for ContoursObservation);
      v755 = v751 + v750;
      v345 = v1056;
      sub_1A5B5C4C0(v755, v1056, type metadata accessor for ContoursObservation);
      v1191 = *&v1201[32];
      v1192 = v1202;
      *&v1193 = v1203;
      v1190 = *&v1201[16];
      v1189 = *v1201;
      v1184 = v1196[2];
      v1185 = v1197;
      *&v1186 = v1198;
      v1183 = v1196[1];
      v1182 = v1196[0];
      v756 = static DetectContoursRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B67108(v1196);
      sub_1A5B67108(v1201);
      if (v756)
      {
        v347 = static ContoursObservation.== infix(_:_:)(v343, v345);
      }

      else
      {
        v347 = 0;
      }

      v356 = type metadata accessor for ContoursObservation;
      goto LABEL_20;
    case 9u:
      sub_1A5B5DE58(v299, v278, type metadata accessor for VisionResult);
      v724 = *(v278 + 4);
      v725 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B8) + 48);
      v726 = v1179;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        sub_1A5B10168(&v278[v725], &qword_1EB1EF888);
        goto LABEL_297;
      }

      *&v1178 = v299;
      v727 = v726[4];
      v728 = *(v278 + 1);
      v1176 = *v278;
      v1174 = v728;
      v729 = *(v726 + 1);
      v1177 = *v726;
      v1175 = v729;
      v452 = v1057;
      sub_1A5B60994(&v278[v725], v1057, &qword_1EB1EF888);
      v730 = v726 + v725;
      v537 = v1102;
      sub_1A5B60994(v730, v1102, &qword_1EB1EF888);
      *v1201 = v1176;
      *&v1201[16] = v1174;
      *&v1201[32] = v724;
      v1196[1] = v1175;
      v1196[0] = v1177;
      *&v1196[2] = v727;
      v731 = static DetectDocumentSegmentationRequest.== infix(_:_:)(v1201, v1196);

      if ((v731 & 1) == 0)
      {
        v963 = &qword_1EB1EF888;
        goto LABEL_328;
      }

      v732 = *(v1027 + 48);
      v540 = v1031;
      sub_1A5B31A34(v452, v1031, &qword_1EB1EF888);
      sub_1A5B31A34(v537, v540 + v732, &qword_1EB1EF888);
      v733 = v1030;
      v734 = *(v1029 + 48);
      if (v734(v540, 1, v1030) == 1)
      {
        sub_1A5B10168(v537, &qword_1EB1EF888);
        sub_1A5B10168(v452, &qword_1EB1EF888);
        if (v734(v540 + v732, 1, v733) == 1)
        {
          v315 = &qword_1EB1EF888;
          goto LABEL_149;
        }

        goto LABEL_379;
      }

      v983 = v1018;
      sub_1A5B31A34(v540, v1018, &qword_1EB1EF888);
      if (v734(v540 + v732, 1, v733) == 1)
      {
        sub_1A5B10168(v1102, &qword_1EB1EF888);
        sub_1A5B10168(v452, &qword_1EB1EF888);
        sub_1A5B5DF14(v983, type metadata accessor for DetectedDocumentObservation);
LABEL_379:
        v980 = &qword_1EB1EFDD0;
        v972 = v540;
        goto LABEL_348;
      }

      v1007 = v1012;
      sub_1A5B5C4C0(v540 + v732, v1012, type metadata accessor for DetectedDocumentObservation);
      sub_1A5B5E6AC(&qword_1EB1EFE28, type metadata accessor for DetectedDocumentObservation);
      v997 = v452;
      v347 = sub_1A5FD3D0C();
      v998 = type metadata accessor for DetectedDocumentObservation;
      sub_1A5B5DF14(v1007, type metadata accessor for DetectedDocumentObservation);
      v989 = &qword_1EB1EF888;
      v999 = v1102;
      goto LABEL_395;
    case 0xAu:
      sub_1A5B5DE58(v299, v275, type metadata accessor for VisionResult);
      v484 = *v275;
      v485 = *(v275 + 5);
      v329 = *(v275 + 6);
      v486 = v1179;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_253;
      }

      v332 = v299;
      v487 = *v486;
      v488 = v486[5];
      v334 = v486[6];
      *&v1201[8] = *(v275 + 8);
      *&v1201[24] = *(v275 + 24);
      *v1201 = v484;
      *&v1201[40] = v485;
      *(v1196 + 8) = *(v486 + 1);
      *(&v1196[1] + 8) = *(v486 + 3);
      *&v1196[0] = v487;
      *(&v1196[2] + 1) = v488;
      v336 = static DetectFaceCaptureQualityRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_231;
    case 0xBu:
      v589 = v1112;
      sub_1A5B5DE58(v299, v1112, type metadata accessor for VisionResult);
      v590 = *v589;
      v591 = *(v589 + 48);
      v329 = *(v589 + 56);
      v592 = v1179;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_253;
      }

      v332 = v299;
      v593 = *(v589 + 40);
      v594 = v589;
      v595 = *v592;
      v596 = *(v592 + 40);
      v597 = v592[6];
      v334 = v592[7];
      *v1201 = v590;
      *&v1201[8] = *(v594 + 8);
      *&v1201[24] = *(v594 + 24);
      v1201[40] = v593;
      *&v1202 = v591;
      *&v1196[0] = v595;
      *(v1196 + 8) = *(v592 + 1);
      *(&v1196[1] + 8) = *(v592 + 3);
      BYTE8(v1196[2]) = v596;
      *&v1197 = v597;
      v598 = static DetectFaceLandmarksRequest.== infix(_:_:)(v1201, v1196);

      if (v598)
      {
        goto LABEL_232;
      }

      goto LABEL_234;
    case 0xCu:
      v445 = v1118;
      sub_1A5B5DE58(v299, v1118, type metadata accessor for VisionResult);
      v531 = *(v445 + 32);
      v447 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6B0) + 48);
      v532 = v1179;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v530 = &qword_1EB1EF870;
        goto LABEL_260;
      }

      *&v1178 = v299;
      v533 = v532[4];
      v534 = *(v445 + 16);
      v1176 = *v445;
      v1174 = v534;
      v535 = *(v532 + 1);
      v1177 = *v532;
      v1175 = v535;
      v452 = v1062;
      sub_1A5B60994(v445 + v447, v1062, &qword_1EB1EF870);
      v536 = v532 + v447;
      v537 = v1103;
      sub_1A5B60994(v536, v1103, &qword_1EB1EF870);
      *v1201 = v1176;
      *&v1201[16] = v1174;
      *&v1201[32] = v531;
      v1196[1] = v1175;
      v1196[0] = v1177;
      *&v1196[2] = v533;
      v538 = static DetectHorizonRequest.== infix(_:_:)(v1201, v1196);

      if (v538)
      {
        v539 = *(v1028 + 48);
        v540 = v1034;
        sub_1A5B31A34(v452, v1034, &qword_1EB1EF870);
        sub_1A5B31A34(v537, v540 + v539, &qword_1EB1EF870);
        v541 = v1033;
        v542 = *(v1032 + 48);
        if (v542(v540, 1, v1033) == 1)
        {
          sub_1A5B10168(v537, &qword_1EB1EF870);
          sub_1A5B10168(v452, &qword_1EB1EF870);
          if (v542(v540 + v539, 1, v541) == 1)
          {
            v315 = &qword_1EB1EF870;
LABEL_149:
            v529 = v540;
LABEL_209:
            sub_1A5B10168(v529, v315);
            v347 = 1;
            goto LABEL_349;
          }

LABEL_367:
          v980 = &qword_1EB1EFDC8;
          v972 = v540;
          goto LABEL_348;
        }

        v983 = v1019;
        sub_1A5B31A34(v540, v1019, &qword_1EB1EF870);
        if (v542(v540 + v539, 1, v541) == 1)
        {
          sub_1A5B10168(v1103, &qword_1EB1EF870);
          sub_1A5B10168(v452, &qword_1EB1EF870);
          sub_1A5B5DF14(v983, type metadata accessor for HorizonObservation);
          goto LABEL_367;
        }

        v996 = v1013;
        sub_1A5B5C4C0(v540 + v539, v1013, type metadata accessor for HorizonObservation);
        sub_1A5B5E6AC(&qword_1EB1EFE20, type metadata accessor for HorizonObservation);
        v997 = v452;
        v347 = sub_1A5FD3D0C();
        v998 = type metadata accessor for HorizonObservation;
        sub_1A5B5DF14(v996, type metadata accessor for HorizonObservation);
        v989 = &qword_1EB1EF870;
        v999 = v1103;
LABEL_395:
        sub_1A5B10168(v999, v989);
        sub_1A5B10168(v997, v989);
        sub_1A5B5DF14(v983, v998);
        v995 = v540;
        goto LABEL_399;
      }

      v963 = &qword_1EB1EF870;
LABEL_328:
      v964 = v537;
      goto LABEL_346;
    case 0xDu:
      v316 = v299;
      v433 = v1116;
      sub_1A5B5DE58(v299, v1116, type metadata accessor for VisionResult);
      v435 = *(v433 + 40);
      v434 = *(v433 + 48);
      v436 = v1179;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_223;
      }

      v437 = *(v433 + 32);
      v438 = *(v436 + 32);
      v440 = v436[5];
      v439 = v436[6];
      v441 = *(v433 + 16);
      *v1201 = *v433;
      *&v1201[16] = v441;
      v1201[32] = v437;
      *&v1201[40] = v435;
      v442 = *(v436 + 1);
      v1196[0] = *v436;
      v1196[1] = v442;
      LOBYTE(v1196[2]) = v438;
      *(&v1196[2] + 1) = v440;
      v443 = static DetectHumanBodyPoseRequest.== infix(_:_:)(v1201, v1196);

      if ((v443 & 1) == 0)
      {
        goto LABEL_225;
      }

      v444 = sub_1A5B67CC8(v434, v439);
      goto LABEL_222;
    case 0xEu:
      v661 = v1113;
      sub_1A5B5DE58(v299, v1113, type metadata accessor for VisionResult);
      v662 = *(v661 + 8);
      v663 = v1179;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_123;
      }

      v316 = v299;
      v664 = v663[1];

      v665 = sub_1A5FD4B5C();

      if ((v665 & 1) == 0)
      {
        goto LABEL_265;
      }

      v548 = sub_1A5B67ED0(v662, v664);
      goto LABEL_122;
    case 0xFu:
      v666 = v1120;
      sub_1A5B5DE58(v299, v1120, type metadata accessor for VisionResult);
      v667 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A8) + 48);
      v668 = *(v666 + v667);
      v669 = v1179;
      if (swift_getEnumCaseMultiPayload() != 15)
      {

        sub_1A5B5DF14(v666, type metadata accessor for DetectHumanHandPoseRequest);
        goto LABEL_298;
      }

      v670 = *(v669 + v667);
      v671 = v666;
      v672 = v1058;
      sub_1A5B5C4C0(v671, v1058, type metadata accessor for DetectHumanHandPoseRequest);
      v673 = v669;
      v674 = v1059;
      sub_1A5B5C4C0(v673, v1059, type metadata accessor for DetectHumanHandPoseRequest);
      if (static DetectHumanHandPoseRequest.== infix(_:_:)(v672, v674))
      {
        v347 = sub_1A5B680D8(v668, v670);
      }

      else
      {
        v347 = 0;
      }

      v357 = type metadata accessor for DetectHumanHandPoseRequest;
      sub_1A5B5DF14(v674, type metadata accessor for DetectHumanHandPoseRequest);
      v358 = v672;
      goto LABEL_21;
    case 0x10u:
      v471 = v1121;
      sub_1A5B5DE58(v299, v1121, type metadata accessor for VisionResult);
      v775 = *(v471 + 40);
      v473 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6A0) + 48);
      v776 = v1179;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        v815 = type metadata accessor for SmudgeObservation;
        goto LABEL_289;
      }

      *&v1178 = v299;
      v777 = *(v471 + 32);
      v778 = *(v776 + 32);
      v779 = v776[5];
      v780 = *(v471 + 16);
      v1176 = *v471;
      v1174 = v780;
      v781 = *(v776 + 1);
      v1177 = *v776;
      v1175 = v781;
      v782 = v471 + v473;
      v783 = v1060;
      sub_1A5B5C4C0(v782, v1060, type metadata accessor for SmudgeObservation);
      v784 = v776 + v473;
      v785 = v1061;
      sub_1A5B5C4C0(v784, v1061, type metadata accessor for SmudgeObservation);
      *v1201 = v1176;
      *&v1201[16] = v1174;
      v1201[32] = v777;
      *&v1201[40] = v775;
      v1196[1] = v1175;
      v1196[0] = v1177;
      LOBYTE(v1196[2]) = v778;
      *(&v1196[2] + 1) = v779;
      v786 = static DetectLensSmudgeRequest.== infix(_:_:)(v1201, v1196);

      if (v786)
      {
        v347 = static SmudgeObservation.== infix(_:_:)(v783, v785);
      }

      else
      {
        v347 = 0;
      }

      v977 = type metadata accessor for SmudgeObservation;
      goto LABEL_342;
    case 0x11u:
      v757 = v1125;
      sub_1A5B5DE58(v299, v1125, type metadata accessor for VisionResult);
      v758 = *(v757 + 48);
      *&v1201[32] = *(v757 + 32);
      v1202 = v758;
      v1203 = *(v757 + 64);
      v759 = *(v757 + 16);
      *v1201 = *v757;
      *&v1201[16] = v759;
      v760 = *(v757 + 80);
      v761 = v1179;
      if (swift_getEnumCaseMultiPayload() != 17)
      {

        sub_1A5B66E14(v1201);
        goto LABEL_298;
      }

      v364 = v299;
      v762 = *(v761 + 1);
      v763 = *(v761 + 3);
      v1196[2] = *(v761 + 2);
      v1197 = v763;
      v764 = *(v761 + 3);
      v1198 = *(v761 + 4);
      v765 = *v761;
      v766 = *v761;
      v1196[1] = *(v761 + 1);
      v1196[0] = v765;
      v767 = *(v757 + 48);
      v1191 = *(v757 + 32);
      v1192 = v767;
      v1193 = *(v757 + 64);
      v768 = *v757;
      v1190 = *(v757 + 16);
      v1189 = v768;
      v1184 = v1196[2];
      v1185 = v764;
      v1186 = *(v761 + 4);
      v769 = v761[10];
      v1183 = v762;
      v1182 = v766;
      v770 = static DetectRectanglesRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B66E14(v1196);
      sub_1A5B66E14(v1201);
      if ((v770 & 1) == 0)
      {
        goto LABEL_240;
      }

      v374 = sub_1A5B682E0(v760, v769);
      goto LABEL_239;
    case 0x12u:
      v408 = v1130;
      sub_1A5B5DE58(v299, v1130, type metadata accessor for VisionResult);
      v409 = *(v408 + 48);
      *&v1201[32] = *(v408 + 32);
      v1202 = v409;
      v1203 = *(v408 + 64);
      v410 = *(v408 + 88);
      *&v1204 = *(v408 + 80);
      v411 = *(v408 + 16);
      *v1201 = *v408;
      *&v1201[16] = v411;
      v412 = v1179;
      if (swift_getEnumCaseMultiPayload() != 18)
      {

        sub_1A5B66D6C(v1201);
        goto LABEL_298;
      }

      v364 = v299;
      v413 = *(v412 + 3);
      v414 = *(v412 + 1);
      v1196[2] = *(v412 + 2);
      v1197 = v413;
      v415 = *(v412 + 3);
      v1198 = *(v412 + 4);
      v416 = *(v412 + 1);
      v1196[0] = *v412;
      v1196[1] = v416;
      v417 = *(v408 + 48);
      v1191 = *(v408 + 32);
      v1192 = v417;
      v1193 = *(v408 + 64);
      v418 = *(v408 + 16);
      v1189 = *v408;
      v1190 = v418;
      v1184 = v1196[2];
      v1185 = v415;
      v1186 = *(v412 + 4);
      *&v1199 = v412[10];
      *&v1194 = *(v408 + 80);
      v419 = v412[11];
      *&v1187 = v412[10];
      v1182 = v1196[0];
      v1183 = v414;
      v420 = static DetectTextRectanglesRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B66D6C(v1196);
      sub_1A5B66D6C(v1201);
      if ((v420 & 1) == 0)
      {
        goto LABEL_240;
      }

      v374 = sub_1A5B684E8(v410, v419);
      goto LABEL_239;
    case 0x13u:
      v543 = v1119;
      sub_1A5B5DE58(v299, v1119, type metadata accessor for VisionResult);
      v544 = *(v543 + 8);
      v545 = v1179;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
LABEL_123:

        goto LABEL_297;
      }

      v316 = v299;
      v546 = v545[1];

      v547 = sub_1A5FD4B5C();

      if (v547)
      {
        v548 = sub_1A5B686F0(v544, v546);
LABEL_122:
        v347 = v548;
      }

      else
      {
LABEL_265:
        v347 = 0;
      }

      goto LABEL_266;
    case 0x14u:
      v471 = v1122;
      sub_1A5B5DE58(v299, v1122, type metadata accessor for VisionResult);
      v807 = *(v471 + 32);
      v473 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF688) + 48);
      v808 = v1179;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_174;
      }

      v475 = v299;
      v809 = v808[4];
      v810 = *(v471 + 16);
      v1177 = *v471;
      v1175 = v810;
      v811 = *(v808 + 1);
      v1178 = *v808;
      v1176 = v811;
      v812 = v471 + v473;
      v480 = v1063;
      sub_1A5B5C4C0(v812, v1063, type metadata accessor for SaliencyImageObservation);
      v813 = v808 + v473;
      v482 = v1064;
      sub_1A5B5C4C0(v813, v1064, type metadata accessor for SaliencyImageObservation);
      *v1201 = v1177;
      *&v1201[16] = v1175;
      *&v1201[32] = v807;
      v1196[1] = v1176;
      v1196[0] = v1178;
      *&v1196[2] = v809;
      v483 = static GenerateAttentionBasedSaliencyImageRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_172;
    case 0x15u:
      v421 = v1123;
      sub_1A5B5DE58(v299, v1123, type metadata accessor for VisionResult);
      v422 = *(v421 + 48);
      v423 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF680) + 48);
      v424 = v1179;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        v960 = type metadata accessor for FeaturePrintObservation;
        v961 = v421 + v423;
        goto LABEL_296;
      }

      *&v1178 = v299;
      LODWORD(v1176) = *(v421 + 40);
      v425 = *v421;
      v426 = *v424;
      LODWORD(v1177) = *(v424 + 40);
      v427 = v424[6];
      v1173 = *(v421 + 8);
      v1172 = *(v421 + 24);
      v1175 = *(v424 + 1);
      v1174 = *(v424 + 3);
      v428 = v421 + v423;
      v429 = v1067;
      sub_1A5B5C4C0(v428, v1067, type metadata accessor for FeaturePrintObservation);
      v430 = v424 + v423;
      v431 = v1068;
      sub_1A5B5C4C0(v430, v1068, type metadata accessor for FeaturePrintObservation);
      v1201[0] = v425;
      *&v1201[24] = v1172;
      *&v1201[8] = v1173;
      v1201[40] = v1176;
      *&v1202 = v422;
      LOBYTE(v1196[0]) = v426;
      *(&v1196[1] + 8) = v1174;
      *(v1196 + 8) = v1175;
      BYTE8(v1196[2]) = v1177;
      *&v1197 = v427;
      v432 = static GenerateImageFeaturePrintRequest.== infix(_:_:)(v1201, v1196);

      if (v432)
      {
        v347 = static FeaturePrintObservation.== infix(_:_:)(v429, v431);
      }

      else
      {
        v347 = 0;
      }

      v973 = type metadata accessor for FeaturePrintObservation;
      sub_1A5B5DF14(v431, type metadata accessor for FeaturePrintObservation);
      v974 = v429;
      goto LABEL_353;
    case 0x16u:
      v445 = v1124;
      sub_1A5B5DE58(v299, v1124, type metadata accessor for VisionResult);
      v522 = *(v445 + 32);
      v447 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF668) + 48);
      v523 = v1179;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        goto LABEL_67;
      }

      *&v1178 = v299;
      v524 = v523[4];
      v525 = *(v445 + 16);
      v1176 = *v445;
      v1174 = v525;
      v526 = *(v523 + 1);
      v1177 = *v523;
      v1175 = v526;
      v452 = v1105;
      sub_1A5B60994(v445 + v447, v1105, &qword_1EB1EF810);
      v527 = v523 + v447;
      v454 = v1104;
      sub_1A5B60994(v527, v1104, &qword_1EB1EF810);
      *v1201 = v1176;
      *&v1201[16] = v1174;
      *&v1201[32] = v522;
      v1196[1] = v1175;
      v1196[0] = v1177;
      *&v1196[2] = v524;
      v528 = static GenerateForegroundInstanceMaskRequest.== infix(_:_:)(v1201, v1196);

      if ((v528 & 1) == 0)
      {
        goto LABEL_257;
      }

      v456 = *(v1073 + 48);
      v457 = v1035;
      sub_1A5B31A34(v452, v1035, &qword_1EB1EF810);
      sub_1A5B31A34(v454, v457 + v456, &qword_1EB1EF810);
      v458 = *(v1084 + 48);
      v459 = v1085;
      if (v458(v457, 1, v1085) == 1)
      {
        goto LABEL_65;
      }

      v460 = v1020;
      sub_1A5B31A34(v457, v1020, &qword_1EB1EF810);
      if (v458(v457 + v456, 1, v459) == 1)
      {
        sub_1A5B10168(v1104, &qword_1EB1EF810);
        v461 = v1105;
        goto LABEL_363;
      }

      v994 = v1022;
      sub_1A5B5C4C0(v457 + v456, v1022, type metadata accessor for InstanceMaskObservation);
      sub_1A5B5E6AC(&qword_1EB1EF5F8, type metadata accessor for InstanceMaskObservation);
      v992 = v460;
      v347 = sub_1A5FD3D0C();
      sub_1A5B5DF14(v994, type metadata accessor for InstanceMaskObservation);
      v989 = &qword_1EB1EF810;
      sub_1A5B10168(v1104, &qword_1EB1EF810);
      v993 = v1105;
      goto LABEL_386;
    case 0x17u:
      v471 = v1126;
      sub_1A5B5DE58(v299, v1126, type metadata accessor for VisionResult);
      v472 = *(v471 + 32);
      v473 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF678) + 48);
      v474 = v1179;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
LABEL_174:
        v815 = type metadata accessor for SaliencyImageObservation;
        goto LABEL_289;
      }

      v475 = v299;
      v476 = v474[4];
      v477 = *(v471 + 16);
      v1177 = *v471;
      v1175 = v477;
      v478 = *(v474 + 1);
      v1178 = *v474;
      v1176 = v478;
      v479 = v471 + v473;
      v480 = v1065;
      sub_1A5B5C4C0(v479, v1065, type metadata accessor for SaliencyImageObservation);
      v481 = v474 + v473;
      v482 = v1066;
      sub_1A5B5C4C0(v481, v1066, type metadata accessor for SaliencyImageObservation);
      *v1201 = v1177;
      *&v1201[16] = v1175;
      *&v1201[32] = v472;
      v1196[1] = v1176;
      v1196[0] = v1178;
      *&v1196[2] = v476;
      v483 = static GenerateObjectnessBasedSaliencyImageRequest.== infix(_:_:)(v1201, v1196);
LABEL_172:
      v814 = v483;

      if (v814)
      {
        v347 = static SaliencyImageObservation.== infix(_:_:)(v480, v482);
      }

      else
      {
        v347 = 0;
      }

      v618 = type metadata accessor for SaliencyImageObservation;
      goto LABEL_338;
    case 0x18u:
      v489 = v1128;
      sub_1A5B5DE58(v299, v1128, type metadata accessor for VisionResult);
      v490 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF670) + 48);
      v606 = v1179;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        v962 = type metadata accessor for PixelBufferObservation;
        goto LABEL_269;
      }

      v475 = v299;
      v607 = v489 + v490;
      v480 = v1071;
      sub_1A5B5C4C0(v607, v1071, type metadata accessor for PixelBufferObservation);
      v608 = v606 + v490;
      v482 = v1072;
      sub_1A5B5C4C0(v608, v1072, type metadata accessor for PixelBufferObservation);

      v609 = sub_1A5FD4B5C();

      if (v609)
      {
        v347 = static PixelBufferObservation.== infix(_:_:)(v480, v482);
      }

      else
      {
        v347 = 0;
      }

      v618 = type metadata accessor for PixelBufferObservation;
      goto LABEL_338;
    case 0x19u:
      v445 = v1129;
      sub_1A5B5DE58(v299, v1129, type metadata accessor for VisionResult);
      v446 = *(v445 + 32);
      v447 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF660) + 48);
      v448 = v1179;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        *&v1178 = v299;
        v449 = v448[4];
        v450 = *(v445 + 16);
        v1176 = *v445;
        v1174 = v450;
        v451 = *(v448 + 1);
        v1177 = *v448;
        v1175 = v451;
        v452 = v1107;
        sub_1A5B60994(v445 + v447, v1107, &qword_1EB1EF810);
        v453 = v448 + v447;
        v454 = v1106;
        sub_1A5B60994(v453, v1106, &qword_1EB1EF810);
        *v1201 = v1176;
        *&v1201[16] = v1174;
        *&v1201[32] = v446;
        v1196[1] = v1175;
        v1196[0] = v1177;
        *&v1196[2] = v449;
        v455 = static GeneratePersonInstanceMaskRequest.== infix(_:_:)(v1201, v1196);

        if ((v455 & 1) == 0)
        {
LABEL_257:
          v963 = &qword_1EB1EF810;
          v964 = v454;
          goto LABEL_346;
        }

        v456 = *(v1073 + 48);
        v457 = v1036;
        sub_1A5B31A34(v452, v1036, &qword_1EB1EF810);
        sub_1A5B31A34(v454, v457 + v456, &qword_1EB1EF810);
        v458 = *(v1084 + 48);
        v459 = v1085;
        if (v458(v457, 1, v1085) == 1)
        {
LABEL_65:
          sub_1A5B10168(v454, &qword_1EB1EF810);
          sub_1A5B10168(v452, &qword_1EB1EF810);
          if (v458(v457 + v456, 1, v459) == 1)
          {
            v315 = &qword_1EB1EF810;
            v529 = v457;
            goto LABEL_209;
          }

          goto LABEL_364;
        }

        v460 = v1021;
        sub_1A5B31A34(v457, v1021, &qword_1EB1EF810);
        if (v458(v457 + v456, 1, v459) == 1)
        {
          sub_1A5B10168(v1106, &qword_1EB1EF810);
          v461 = v1107;
LABEL_363:
          sub_1A5B10168(v461, &qword_1EB1EF810);
          sub_1A5B5DF14(v460, type metadata accessor for InstanceMaskObservation);
LABEL_364:
          v980 = &qword_1EB1EFDC0;
          v972 = v457;
          goto LABEL_348;
        }

        v991 = v1022;
        sub_1A5B5C4C0(v457 + v456, v1022, type metadata accessor for InstanceMaskObservation);
        sub_1A5B5E6AC(&qword_1EB1EF5F8, type metadata accessor for InstanceMaskObservation);
        v992 = v460;
        v347 = sub_1A5FD3D0C();
        sub_1A5B5DF14(v991, type metadata accessor for InstanceMaskObservation);
        v989 = &qword_1EB1EF810;
        sub_1A5B10168(v1106, &qword_1EB1EF810);
        v993 = v1107;
LABEL_386:
        sub_1A5B10168(v993, &qword_1EB1EF810);
        sub_1A5B5DF14(v992, type metadata accessor for InstanceMaskObservation);
        v995 = v457;
LABEL_399:
        sub_1A5B10168(v995, v989);
        goto LABEL_349;
      }

LABEL_67:
      v530 = &qword_1EB1EF810;
LABEL_260:
      sub_1A5B10168(v445 + v447, v530);
LABEL_297:

      goto LABEL_298;
    case 0x1Au:
      v316 = v299;
      v865 = v1127;
      sub_1A5B5DE58(v299, v1127, type metadata accessor for VisionResult);
      v866 = *(v865 + 40);
      v463 = *(v865 + 48);
      v867 = v1179;
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_223;
      }

      v868 = *(v865 + 32);
      v869 = *(v867 + 32);
      v870 = v867[5];
      v466 = v867[6];
      v871 = *(v865 + 16);
      *v1201 = *v865;
      *&v1201[16] = v871;
      v1201[32] = v868;
      *&v1201[40] = v866;
      v872 = *(v867 + 1);
      v1196[0] = *v867;
      v1196[1] = v872;
      LOBYTE(v1196[2]) = v869;
      *(&v1196[2] + 1) = v870;
      v470 = static RecognizeAnimalsRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_216;
    case 0x1Bu:
      v851 = v1140;
      sub_1A5B5DE58(v299, v1140, type metadata accessor for VisionResult);
      v852 = *(v851 + 48);
      *&v1201[32] = *(v851 + 32);
      v1202 = v852;
      v1203 = *(v851 + 64);
      v853 = *(v851 + 16);
      *v1201 = *v851;
      *&v1201[16] = v853;
      v854 = *(v851 + 80);
      v855 = v1179;
      if (swift_getEnumCaseMultiPayload() != 27)
      {

        sub_1A5B66A78(v1201);
        goto LABEL_298;
      }

      v364 = v299;
      v856 = *(v855 + 1);
      v857 = *(v855 + 3);
      v1196[2] = *(v855 + 2);
      v1197 = v857;
      v858 = *(v855 + 3);
      v1198 = *(v855 + 4);
      v859 = *v855;
      v860 = *v855;
      v1196[1] = *(v855 + 1);
      v1196[0] = v859;
      v861 = *(v851 + 48);
      v1191 = *(v851 + 32);
      v1192 = v861;
      v1193 = *(v851 + 64);
      v862 = *v851;
      v1190 = *(v851 + 16);
      v1189 = v862;
      v1184 = v1196[2];
      v1185 = v858;
      v1186 = *(v855 + 4);
      v863 = v855[10];
      v1183 = v856;
      v1182 = v860;
      v864 = static RecognizeTextRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B66A78(v1196);
      sub_1A5B66A78(v1201);
      if ((v864 & 1) == 0)
      {
        goto LABEL_240;
      }

      v374 = sub_1A5B68D08(v854, v863);
      goto LABEL_239;
    case 0x1Cu:
      v495 = v1143;
      sub_1A5B5DE58(v299, v1143, type metadata accessor for VisionResult);
      v496 = *(v495 + 104);
      v1205 = *(v495 + 96);
      v497 = *(v495 + 80);
      v1203 = *(v495 + 64);
      v1204 = v497;
      v498 = *(v495 + 16);
      *v1201 = *v495;
      *&v1201[16] = v498;
      v499 = *(v495 + 48);
      *&v1201[32] = *(v495 + 32);
      v1202 = v499;
      v500 = v1179;
      if (swift_getEnumCaseMultiPayload() != 28)
      {

        sub_1A5B66B20(v1201);
        goto LABEL_298;
      }

      v364 = v299;
      v501 = *(v500 + 3);
      v502 = *(v500 + 5);
      v1198 = *(v500 + 4);
      v1199 = v502;
      v503 = *(v500 + 1);
      v1196[0] = *v500;
      v1196[1] = v503;
      v504 = *(v500 + 2);
      v506 = *v500;
      v505 = *(v500 + 1);
      v507 = v504;
      v1197 = *(v500 + 3);
      v1196[2] = v504;
      v508 = *(v495 + 80);
      v1193 = *(v495 + 64);
      v1194 = v508;
      v509 = *(v495 + 16);
      v1189 = *v495;
      v1190 = v509;
      v510 = *(v495 + 32);
      v1192 = *(v495 + 48);
      v1191 = v510;
      v511 = *(v500 + 5);
      v1186 = v1198;
      v1187 = v511;
      v1182 = v506;
      v1183 = v505;
      v1200 = v500[12];
      v1195 = *(v495 + 96);
      v512 = v500[13];
      v1188 = v500[12];
      v1185 = v501;
      v1184 = v507;
      v513 = static RecognizeDocumentsRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B66B20(v1196);
      sub_1A5B66B20(v1201);
      if ((v513 & 1) == 0)
      {
        goto LABEL_240;
      }

      v374 = sub_1A5B68B00(v496, v512);
      goto LABEL_239;
    case 0x1Du:
      v489 = v1131;
      sub_1A5B5DE58(v299, v1131, type metadata accessor for VisionResult);
      v490 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF658) + 48);
      v559 = v1179;
      if (swift_getEnumCaseMultiPayload() != 29)
      {
        v962 = type metadata accessor for ImageHomographicAlignmentObservation;
        goto LABEL_269;
      }

      v475 = v299;
      v560 = v489 + v490;
      v480 = v1082;
      sub_1A5B5C4C0(v560, v1082, type metadata accessor for ImageHomographicAlignmentObservation);
      v561 = v559 + v490;
      v482 = v1083;
      sub_1A5B5C4C0(v561, v1083, type metadata accessor for ImageHomographicAlignmentObservation);

      v562 = sub_1A5FD4B5C();

      if (v562)
      {
        v347 = static ImageHomographicAlignmentObservation.== infix(_:_:)(v480, v482);
      }

      else
      {
        v347 = 0;
      }

      v618 = type metadata accessor for ImageHomographicAlignmentObservation;
      goto LABEL_338;
    case 0x1Eu:
      v305 = v1132;
      sub_1A5B5DE58(v299, v1132, type metadata accessor for VisionResult);
      v306 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF698) + 48);
      v680 = v1179;
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        v959 = &qword_1EB1EF7E8;
        goto LABEL_292;
      }

      *&v1178 = v299;
      v452 = v1086;
      sub_1A5B60994(v305 + v306, v1086, &qword_1EB1EF7E8);
      v564 = v1108;
      sub_1A5B60994(v680 + v306, v1108, &qword_1EB1EF7E8);

      v681 = sub_1A5FD4B5C();

      if ((v681 & 1) == 0)
      {

        v963 = &qword_1EB1EF7E8;
        goto LABEL_345;
      }

      v682 = *(v1038 + 48);
      v311 = v1045;
      sub_1A5B31A34(v452, v1045, &qword_1EB1EF7E8);
      sub_1A5B31A34(v564, v311 + v682, &qword_1EB1EF7E8);
      v683 = v1042;
      v684 = *(v1041 + 48);
      if (v684(v311, 1, v1042) == 1)
      {

        sub_1A5B10168(v564, &qword_1EB1EF7E8);
        sub_1A5B10168(v452, &qword_1EB1EF7E8);
        if (v684(v311 + v682, 1, v683) == 1)
        {
          v315 = &qword_1EB1EF7E8;
          goto LABEL_208;
        }

        goto LABEL_376;
      }

      v984 = v1023;
      sub_1A5B31A34(v311, v1023, &qword_1EB1EF7E8);
      if (v684(v311 + v682, 1, v683) == 1)
      {

        sub_1A5B10168(v1108, &qword_1EB1EF7E8);
        sub_1A5B10168(v452, &qword_1EB1EF7E8);
        sub_1A5B5DF14(v984, type metadata accessor for DetectedObjectObservation);
LABEL_376:
        v980 = &qword_1EB1EFDB8;
        v972 = v311;
        goto LABEL_348;
      }

      v1005 = v311 + v682;
      v1006 = v1015;
      sub_1A5B5C4C0(v1005, v1015, type metadata accessor for DetectedObjectObservation);
      sub_1A5B5E6AC(&qword_1EB1EFE18, type metadata accessor for DetectedObjectObservation);
      v1002 = v452;
      v347 = sub_1A5FD3D0C();

      v988 = type metadata accessor for DetectedObjectObservation;
      sub_1A5B5DF14(v1006, type metadata accessor for DetectedObjectObservation);
      v989 = &qword_1EB1EF7E8;
      v1003 = v1108;
      goto LABEL_397;
    case 0x1Fu:
      v305 = v1133;
      sub_1A5B5DE58(v299, v1133, type metadata accessor for VisionResult);
      v306 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF690) + 48);
      v563 = v1179;
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        v959 = &qword_1EB1EF7D8;
        goto LABEL_292;
      }

      *&v1178 = v299;
      v452 = v1087;
      sub_1A5B60994(v305 + v306, v1087, &qword_1EB1EF7D8);
      v564 = v1109;
      sub_1A5B60994(v563 + v306, v1109, &qword_1EB1EF7D8);

      v565 = sub_1A5FD4B5C();

      if ((v565 & 1) == 0)
      {

        v963 = &qword_1EB1EF7D8;
        goto LABEL_345;
      }

      v566 = *(v1040 + 48);
      v311 = v1048;
      sub_1A5B31A34(v452, v1048, &qword_1EB1EF7D8);
      sub_1A5B31A34(v564, v311 + v566, &qword_1EB1EF7D8);
      v567 = *(v1044 + 48);
      v568 = v1046;
      if (v567(v311, 1, v1046) == 1)
      {

        sub_1A5B10168(v564, &qword_1EB1EF7D8);
        sub_1A5B10168(v452, &qword_1EB1EF7D8);
        if (v567(v311 + v566, 1, v568) == 1)
        {
          v315 = &qword_1EB1EF7D8;
          goto LABEL_208;
        }

        goto LABEL_373;
      }

      v984 = v1024;
      sub_1A5B31A34(v311, v1024, &qword_1EB1EF7D8);
      if (v567(v311 + v566, 1, v568) == 1)
      {

        sub_1A5B10168(v1109, &qword_1EB1EF7D8);
        sub_1A5B10168(v452, &qword_1EB1EF7D8);
        sub_1A5B5DF14(v984, type metadata accessor for OpticalFlowObservation);
LABEL_373:
        v980 = &qword_1EB1EFDB0;
        v972 = v311;
        goto LABEL_348;
      }

      v1000 = v311 + v566;
      v1001 = v1016;
      sub_1A5B5C4C0(v1000, v1016, type metadata accessor for OpticalFlowObservation);
      sub_1A5B5E6AC(&qword_1EB1EFE10, type metadata accessor for OpticalFlowObservation);
      v1002 = v452;
      v347 = sub_1A5FD3D0C();

      v988 = type metadata accessor for OpticalFlowObservation;
      sub_1A5B5DF14(v1001, type metadata accessor for OpticalFlowObservation);
      v989 = &qword_1EB1EF7D8;
      v1003 = v1109;
      goto LABEL_397;
    case 0x20u:
      v305 = v1135;
      sub_1A5B5DE58(v299, v1135, type metadata accessor for VisionResult);
      v306 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF650) + 48);
      v893 = v1179;
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        v959 = &qword_1EB1EF7C8;
        goto LABEL_292;
      }

      *&v1178 = v299;
      v452 = v1094;
      sub_1A5B60994(v305 + v306, v1094, &qword_1EB1EF7C8);
      v564 = v1110;
      sub_1A5B60994(v893 + v306, v1110, &qword_1EB1EF7C8);

      v894 = sub_1A5FD4B5C();

      if ((v894 & 1) == 0)
      {

        v963 = &qword_1EB1EF7C8;
LABEL_345:
        v964 = v564;
LABEL_346:
        sub_1A5B10168(v964, v963);
        v972 = v452;
LABEL_347:
        v980 = v963;
LABEL_348:
        sub_1A5B10168(v972, v980);
        v347 = 0;
LABEL_349:
        v923 = v1178;
LABEL_355:
        sub_1A5B5DF14(v923, type metadata accessor for VisionResult);
        return v347 & 1;
      }

      v895 = *(v1043 + 48);
      v311 = v1050;
      sub_1A5B31A34(v452, v1050, &qword_1EB1EF7C8);
      sub_1A5B31A34(v564, v311 + v895, &qword_1EB1EF7C8);
      v896 = *(v1047 + 48);
      v897 = v1049;
      if (v896(v311, 1, v1049) == 1)
      {

        sub_1A5B10168(v564, &qword_1EB1EF7C8);
        sub_1A5B10168(v452, &qword_1EB1EF7C8);
        if (v896(v311 + v895, 1, v897) == 1)
        {
          v315 = &qword_1EB1EF7C8;
          goto LABEL_208;
        }

        goto LABEL_382;
      }

      v984 = v1025;
      sub_1A5B31A34(v311, v1025, &qword_1EB1EF7C8);
      if (v896(v311 + v895, 1, v897) == 1)
      {

        sub_1A5B10168(v1110, &qword_1EB1EF7C8);
        sub_1A5B10168(v452, &qword_1EB1EF7C8);
        sub_1A5B5DF14(v984, type metadata accessor for RectangleObservation);
LABEL_382:
        v980 = &qword_1EB1EFDA8;
        v972 = v311;
        goto LABEL_348;
      }

      v1008 = v311 + v895;
      v1009 = v1017;
      sub_1A5B5C4C0(v1008, v1017, type metadata accessor for RectangleObservation);
      sub_1A5B5E6AC(&qword_1EB1EED68, type metadata accessor for RectangleObservation);
      v1002 = v452;
      v347 = sub_1A5FD3D0C();

      v988 = type metadata accessor for RectangleObservation;
      sub_1A5B5DF14(v1009, type metadata accessor for RectangleObservation);
      v989 = &qword_1EB1EF7C8;
      v1003 = v1110;
LABEL_397:
      sub_1A5B10168(v1003, v989);
      sub_1A5B10168(v1002, v989);
      v990 = v984;
      goto LABEL_398;
    case 0x21u:
      v489 = v1138;
      sub_1A5B5DE58(v299, v1138, type metadata accessor for VisionResult);
      v490 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F48B0) + 48);
      v491 = v1179;
      if (swift_getEnumCaseMultiPayload() == 33)
      {
        v475 = v299;
        v492 = v489 + v490;
        v480 = v1088;
        sub_1A5B5C4C0(v492, v1088, type metadata accessor for ImageTranslationAlignmentObservation);
        v493 = v491 + v490;
        v482 = v1089;
        sub_1A5B5C4C0(v493, v1089, type metadata accessor for ImageTranslationAlignmentObservation);

        v494 = sub_1A5FD4B5C();

        if (v494)
        {
          v347 = static ImageTranslationAlignmentObservation.== infix(_:_:)(v480, v482);
        }

        else
        {
          v347 = 0;
        }

        v618 = type metadata accessor for ImageTranslationAlignmentObservation;
        goto LABEL_338;
      }

      v962 = type metadata accessor for ImageTranslationAlignmentObservation;
LABEL_269:
      sub_1A5B5DF14(v489 + v490, v962);

      goto LABEL_298;
    case 0x22u:
      v316 = v299;
      v771 = v1134;
      sub_1A5B5DE58(v299, v1134, type metadata accessor for VisionResult);
      v772 = *v771;
      v377 = v771[1];
      v773 = v1179;
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_201;
      }

      v774 = *v773;
      v380 = v773[1];
      v381 = type metadata accessor for DetectScreenGazeRequest();
      *v1201 = v772;
      *&v1196[0] = v774;
      v382 = &qword_1EB1EF580;
      v383 = type metadata accessor for DetectScreenGazeRequest;
      goto LABEL_199;
    case 0x23u:
      v316 = v299;
      v889 = v1136;
      sub_1A5B5DE58(v299, v1136, type metadata accessor for VisionResult);
      v890 = *v889;
      v377 = v889[1];
      v891 = v1179;
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_201;
      }

      v892 = *v891;
      v380 = v891[1];
      v381 = type metadata accessor for DetectDeviceGazeRequest();
      *v1201 = v890;
      *&v1196[0] = v892;
      v382 = &unk_1EB1EFDF8;
      v383 = type metadata accessor for DetectDeviceGazeRequest;
      goto LABEL_199;
    case 0x24u:
      v316 = v299;
      v396 = v1139;
      sub_1A5B5DE58(v299, v1139, type metadata accessor for VisionResult);
      v397 = *v396;
      v377 = v396[1];
      v398 = v1179;
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_201;
      }

      v399 = *v398;
      v380 = v398[1];
      v381 = type metadata accessor for DetectCameraGazeRequest();
      *v1201 = v397;
      *&v1196[0] = v399;
      v382 = &unk_1EB1EFDF0;
      v383 = type metadata accessor for DetectCameraGazeRequest;
      goto LABEL_199;
    case 0x25u:
      v716 = v1142;
      sub_1A5B5DE58(v299, v1142, type metadata accessor for VisionResult);
      v717 = *v716;
      v718 = *(v716 + 48);
      v329 = *(v716 + 56);
      v719 = v1179;
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_253;
      }

      v332 = v299;
      v720 = *(v716 + 40);
      v721 = *v719;
      v722 = *(v719 + 40);
      v723 = v719[6];
      v334 = v719[7];
      *v1201 = v717;
      *&v1201[8] = *(v716 + 8);
      *&v1201[24] = *(v716 + 24);
      v1201[40] = v720;
      *&v1202 = v718;
      *&v1196[0] = v721;
      *(v1196 + 8) = *(v719 + 1);
      *(&v1196[1] + 8) = *(v719 + 3);
      BYTE8(v1196[2]) = v722;
      *&v1197 = v723;
      v336 = static GenerateFacePrintRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_231;
    case 0x26u:
      v384 = v1144;
      sub_1A5B5DE58(v299, v1144, type metadata accessor for VisionResult);
      v385 = *v384;
      v386 = v384[5];
      v387 = v384[6];
      v388 = v384[7];
      v389 = v1179;
      if (swift_getEnumCaseMultiPayload() == 38)
      {
        *&v1178 = v299;
        v390 = v384;
        v391 = *v389;
        v392 = v389[5];
        v393 = v389[6];
        v394 = v389[7];
        *&v1201[8] = *(v390 + 1);
        *&v1201[24] = *(v390 + 3);
        *v1201 = v385;
        *&v1201[40] = v386;
        *&v1202 = v387;
        *(v1196 + 8) = *(v389 + 1);
        *(&v1196[1] + 8) = *(v389 + 3);
        *&v1196[0] = v391;
        *(&v1196[2] + 1) = v392;
        *&v1197 = v393;
        v395 = static GenerateTorsoPrintRequest.== infix(_:_:)(v1201, v1196);

        if (v395)
        {
          v347 = sub_1A5B674A8(v388, v394);
        }

        else
        {
          v347 = 0;
        }

        goto LABEL_354;
      }

LABEL_253:

      goto LABEL_297;
    case 0x27u:
      v316 = v299;
      v375 = v1141;
      sub_1A5B5DE58(v299, v1141, type metadata accessor for VisionResult);
      v376 = *v375;
      v377 = v375[1];
      v378 = v1179;
      if (swift_getEnumCaseMultiPayload() != 39)
      {
LABEL_201:

        goto LABEL_224;
      }

      v379 = *v378;
      v380 = v378[1];
      v381 = type metadata accessor for CalculateFaceLivelinessScoreRequest();
      *v1201 = v376;
      *&v1196[0] = v379;
      v382 = &unk_1EB1EFDE8;
      v383 = type metadata accessor for CalculateFaceLivelinessScoreRequest;
LABEL_199:
      sub_1A5B5E6AC(v382, v383);
      if (static StatefulRequest.== infix(_:_:)(v1201, v1196, v381))
      {
        v347 = sub_1A5B0E074(v377, v380);
      }

      else
      {
        v347 = 0;
      }

LABEL_266:

LABEL_267:
      v923 = v316;
      goto LABEL_355;
    case 0x28u:
      v514 = v1145;
      sub_1A5B5DE58(v299, v1145, type metadata accessor for VisionResult);
      v515 = *(v514 + 32);
      v516 = *(v514 + 40);
      v329 = *(v514 + 48);
      v517 = v1179;
      if (swift_getEnumCaseMultiPayload() != 40)
      {
        goto LABEL_253;
      }

      v332 = v299;
      v518 = v517[4];
      v519 = v517[5];
      v334 = v517[6];
      v520 = *(v514 + 16);
      *v1201 = *v514;
      *&v1201[16] = v520;
      *&v1201[32] = v515;
      *&v1201[40] = v516;
      v521 = *(v517 + 1);
      v1196[0] = *v517;
      v1196[1] = v521;
      *&v1196[2] = v518;
      *(&v1196[2] + 1) = v519;
      v336 = static AlignFaceRectanglesRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_231;
    case 0x29u:
      v471 = v1148;
      sub_1A5B5DE58(v299, v1148, type metadata accessor for VisionResult);
      v610 = *(v471 + 32);
      v473 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF640) + 48);
      v611 = v1179;
      if (swift_getEnumCaseMultiPayload() != 41)
      {
        v815 = type metadata accessor for ImageExposureObservation;
        goto LABEL_289;
      }

      v475 = v299;
      v612 = v611[4];
      v613 = *(v471 + 16);
      v1177 = *v471;
      v1175 = v613;
      v614 = *(v611 + 1);
      v1178 = *v611;
      v1176 = v614;
      v615 = v471 + v473;
      v480 = v1092;
      sub_1A5B5C4C0(v615, v1092, type metadata accessor for ImageExposureObservation);
      v616 = v611 + v473;
      v482 = v1093;
      sub_1A5B5C4C0(v616, v1093, type metadata accessor for ImageExposureObservation);
      *v1201 = v1177;
      *&v1201[16] = v1175;
      *&v1201[32] = v610;
      v1196[1] = v1176;
      v1196[0] = v1178;
      *&v1196[2] = v612;
      v617 = static CalculateExposureScoreRequest.== infix(_:_:)(v1201, v1196);

      if (v617)
      {
        v347 = static ImageExposureObservation.== infix(_:_:)(v480, v482);
      }

      else
      {
        v347 = 0;
      }

      v618 = type metadata accessor for ImageExposureObservation;
      goto LABEL_338;
    case 0x2Au:
      v471 = v1147;
      sub_1A5B5DE58(v299, v1147, type metadata accessor for VisionResult);
      v795 = *(v471 + 48);
      v473 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF648) + 48);
      v796 = v1179;
      if (swift_getEnumCaseMultiPayload() != 42)
      {
        v815 = type metadata accessor for ImageBlurObservation;
        goto LABEL_289;
      }

      *&v1178 = v299;
      v797 = *(v471 + 8);
      v798 = *v471;
      LODWORD(v1177) = *v796;
      v799 = *(v796 + 1);
      v800 = *(v796 + 6);
      v801 = *(v471 + 32);
      v1174 = *(v471 + 16);
      v1173 = v801;
      v802 = *(v796 + 2);
      v1176 = *(v796 + 1);
      v1175 = v802;
      v803 = v471 + v473;
      v783 = v1090;
      sub_1A5B5C4C0(v803, v1090, type metadata accessor for ImageBlurObservation);
      v804 = &v796[v473];
      v805 = v1091;
      sub_1A5B5C4C0(v804, v1091, type metadata accessor for ImageBlurObservation);
      v1201[0] = v798;
      *&v1201[8] = v797;
      *&v1201[16] = v1174;
      *&v1201[32] = v1173;
      *&v1202 = v795;
      LOBYTE(v1196[0]) = v1177;
      *(&v1196[0] + 1) = v799;
      v1196[2] = v1175;
      v1196[1] = v1176;
      *&v1197 = v800;
      v806 = static CalculateBlurScoreRequest.== infix(_:_:)(v1201, v1196);

      if (v806)
      {
        v347 = static ImageBlurObservation.== infix(_:_:)(v783, v805);
      }

      else
      {
        v347 = 0;
      }

      v977 = type metadata accessor for ImageBlurObservation;
      v973 = type metadata accessor for ImageBlurObservation;
      v978 = v805;
      goto LABEL_343;
    case 0x2Bu:
      v316 = v299;
      v317 = v1146;
      sub_1A5B5DE58(v299, v1146, type metadata accessor for VisionResult);
      v319 = *(v317 + 48);
      v318 = *(v317 + 56);
      v320 = v1179;
      if (swift_getEnumCaseMultiPayload() != 43)
      {
        goto LABEL_223;
      }

      v321 = *(v317 + 40);
      v322 = *v320;
      v323 = *(v320 + 40);
      v325 = v320[6];
      v324 = v320[7];
      v1201[0] = *v317;
      *&v1201[8] = *(v317 + 8);
      *&v1201[24] = *(v317 + 24);
      v1201[40] = v321;
      *&v1202 = v319;
      LOBYTE(v1196[0]) = v322;
      *(v1196 + 8) = *(v320 + 1);
      *(&v1196[1] + 8) = *(v320 + 3);
      BYTE8(v1196[2]) = v323;
      *&v1197 = v325;
      v326 = static ClassifyCityNatureImageRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_220;
    case 0x2Cu:
      v400 = v1149;
      sub_1A5B5DE58(v299, v1149, type metadata accessor for VisionResult);
      v401 = *v400;
      v402 = *(v400 + 48);
      v329 = *(v400 + 56);
      v403 = v1179;
      if (swift_getEnumCaseMultiPayload() != 44)
      {
        goto LABEL_253;
      }

      v332 = v299;
      v404 = *(v400 + 40);
      v405 = *v403;
      v406 = *(v403 + 40);
      v407 = v403[6];
      v334 = v403[7];
      *v1201 = v401;
      *&v1201[8] = *(v400 + 8);
      *&v1201[24] = *(v400 + 24);
      v1201[40] = v404;
      *&v1202 = v402;
      *&v1196[0] = v405;
      *(v1196 + 8) = *(v403 + 1);
      *(&v1196[1] + 8) = *(v403 + 3);
      BYTE8(v1196[2]) = v406;
      *&v1197 = v407;
      v336 = static ClassifyFaceAttributesRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_231;
    case 0x2Du:
      v316 = v299;
      v651 = v1150;
      sub_1A5B5DE58(v299, v1150, type metadata accessor for VisionResult);
      v653 = *(v651 + 48);
      v652 = *(v651 + 56);
      v654 = v1179;
      if (swift_getEnumCaseMultiPayload() != 45)
      {
        goto LABEL_223;
      }

      v655 = *(v651 + 40);
      v656 = *v654;
      v657 = *(v654 + 40);
      v659 = v654[6];
      v658 = v654[7];
      v1201[0] = *v651;
      *&v1201[8] = *(v651 + 8);
      *&v1201[24] = *(v651 + 24);
      v1201[40] = v655;
      *&v1202 = v653;
      LOBYTE(v1196[0]) = v656;
      *(v1196 + 8) = *(v654 + 1);
      *(&v1196[1] + 8) = *(v654 + 3);
      BYTE8(v1196[2]) = v657;
      *&v1197 = v659;
      v660 = static ClassifyImageAestheticsRequest.== infix(_:_:)(v1201, v1196);

      if ((v660 & 1) == 0)
      {
        goto LABEL_225;
      }

      v444 = sub_1A5B69118(v652, v658);
      goto LABEL_222;
    case 0x2Eu:
      v316 = v299;
      v695 = v1152;
      sub_1A5B5DE58(v299, v1152, type metadata accessor for VisionResult);
      v696 = *(v695 + 48);
      v318 = *(v695 + 56);
      v697 = v1179;
      if (swift_getEnumCaseMultiPayload() != 46)
      {
        goto LABEL_223;
      }

      v698 = *(v695 + 40);
      v699 = *v697;
      v700 = *(v697 + 40);
      v701 = v697[6];
      v324 = v697[7];
      v1201[0] = *v695;
      *&v1201[8] = *(v695 + 8);
      *&v1201[24] = *(v695 + 24);
      v1201[40] = v698;
      *&v1202 = v696;
      LOBYTE(v1196[0]) = v699;
      *(v1196 + 8) = *(v697 + 1);
      *(&v1196[1] + 8) = *(v697 + 3);
      BYTE8(v1196[2]) = v700;
      *&v1197 = v701;
      v326 = static ClassifyJunkImageRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_220;
    case 0x2Fu:
      v316 = v299;
      v898 = v1153;
      sub_1A5B5DE58(v299, v1153, type metadata accessor for VisionResult);
      v899 = *(v898 + 40);
      v318 = *(v898 + 48);
      v900 = v1179;
      if (swift_getEnumCaseMultiPayload() != 47)
      {
        goto LABEL_223;
      }

      v901 = *v900;
      v902 = v900[5];
      v324 = v900[6];
      v1201[0] = *v898;
      *&v1201[8] = *(v898 + 8);
      *&v1201[24] = *(v898 + 24);
      *&v1201[40] = v899;
      LOBYTE(v1196[0]) = v901;
      *(v1196 + 8) = *(v900 + 1);
      *(&v1196[1] + 8) = *(v900 + 3);
      *(&v1196[2] + 1) = v902;
      v326 = static ClassifyMemeImageRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_220;
    case 0x30u:
      v316 = v299;
      v675 = v1154;
      sub_1A5B5DE58(v299, v1154, type metadata accessor for VisionResult);
      v676 = *(v675 + 40);
      v318 = *(v675 + 48);
      v677 = v1179;
      if (swift_getEnumCaseMultiPayload() != 48)
      {
        goto LABEL_223;
      }

      v678 = *v677;
      v679 = v677[5];
      v324 = v677[6];
      v1201[0] = *v675;
      *&v1201[8] = *(v675 + 8);
      *&v1201[24] = *(v675 + 24);
      *&v1201[40] = v676;
      LOBYTE(v1196[0]) = v678;
      *(v1196 + 8) = *(v677 + 1);
      *(&v1196[1] + 8) = *(v677 + 3);
      *(&v1196[2] + 1) = v679;
      v326 = static ClassifyPotentialLandmarkRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_220;
    case 0x31u:
      v359 = v1158;
      sub_1A5B5DE58(v299, v1158, type metadata accessor for VisionResult);
      v360 = *(v359 + 16);
      *v1201 = *v359;
      *&v1201[16] = v360;
      v361 = *(v359 + 48);
      *&v1201[32] = *(v359 + 32);
      v1202 = v361;
      v362 = *(v359 + 64);
      v363 = v1179;
      if (swift_getEnumCaseMultiPayload() != 49)
      {

        sub_1A5B66784(v1201);
        goto LABEL_298;
      }

      v364 = v299;
      v365 = *(v363 + 1);
      v1196[0] = *v363;
      v1196[1] = v365;
      v366 = *(v363 + 3);
      v368 = *v363;
      v367 = *(v363 + 1);
      v1196[2] = *(v363 + 2);
      v1197 = v366;
      v369 = *(v359 + 16);
      v1189 = *v359;
      v1190 = v369;
      v370 = *(v359 + 48);
      v1191 = *(v359 + 32);
      v1192 = v370;
      v371 = v363[8];
      v1182 = v368;
      v1183 = v367;
      v372 = *(v363 + 3);
      v1184 = *(v363 + 2);
      v1185 = v372;
      v373 = static DetectFaceGazeRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B66784(v1196);
      sub_1A5B66784(v1201);
      if ((v373 & 1) == 0)
      {
        goto LABEL_240;
      }

      v374 = sub_1A5B0E074(v362, v371);
      goto LABEL_239;
    case 0x33u:
      v327 = v1155;
      sub_1A5B5DE58(v299, v1155, type metadata accessor for VisionResult);
      v328 = *v327;
      v330 = *(v327 + 40);
      v329 = *(v327 + 48);
      v331 = v1179;
      if (swift_getEnumCaseMultiPayload() != 51)
      {
        goto LABEL_253;
      }

      v332 = v299;
      v333 = *v331;
      v335 = v331[5];
      v334 = v331[6];
      *&v1201[8] = *(v327 + 8);
      *&v1201[24] = *(v327 + 24);
      *v1201 = v328;
      *&v1201[40] = v330;
      *(v1196 + 8) = *(v331 + 1);
      *(&v1196[1] + 8) = *(v331 + 3);
      *&v1196[0] = v333;
      *(&v1196[2] + 1) = v335;
      v336 = static DetectFaceExpressionsRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_231;
    case 0x35u:
      v924 = v1157;
      sub_1A5B5DE58(v299, v1157, type metadata accessor for VisionResult);
      v925 = *v924;
      v926 = *(v924 + 48);
      v329 = *(v924 + 56);
      v927 = v1179;
      if (swift_getEnumCaseMultiPayload() != 53)
      {
        goto LABEL_253;
      }

      v332 = v299;
      v928 = *(v924 + 8);
      v929 = *v927;
      v930 = *(v927 + 2);
      v931 = v927[6];
      v334 = v927[7];
      *v1201 = v925;
      *&v1201[8] = v928;
      v932 = *(v924 + 32);
      *&v1201[16] = *(v924 + 16);
      *&v1201[32] = v932;
      *&v1202 = v926;
      *&v1196[0] = v929;
      DWORD2(v1196[0]) = v930;
      v933 = *(v927 + 2);
      v1196[1] = *(v927 + 1);
      v1196[2] = v933;
      *&v1197 = v931;
      v336 = static GenerateFaceSegmentsRequest.== infix(_:_:)(v1201, v1196);
LABEL_231:
      v934 = v336;

      if ((v934 & 1) == 0)
      {
        goto LABEL_234;
      }

LABEL_232:
      v888 = sub_1A5B0E074(v329, v334);
      goto LABEL_233;
    case 0x36u:
      v879 = v1156;
      sub_1A5B5DE58(v299, v1156, type metadata accessor for VisionResult);
      v880 = *v879;
      v882 = *(v879 + 40);
      v881 = *(v879 + 48);
      v883 = v1179;
      if (swift_getEnumCaseMultiPayload() != 54)
      {
        goto LABEL_253;
      }

      v332 = v299;
      v884 = *v883;
      v886 = v883[5];
      v885 = v883[6];
      *&v1201[8] = *(v879 + 8);
      *&v1201[24] = *(v879 + 24);
      *v1201 = v880;
      *&v1201[40] = v882;
      *(v1196 + 8) = *(v883 + 1);
      *(&v1196[1] + 8) = *(v883 + 3);
      *&v1196[0] = v884;
      *(&v1196[2] + 1) = v886;
      v887 = static GenerateAnimalPrintRequest.== infix(_:_:)(v1201, v1196);

      if (v887)
      {
        v888 = sub_1A5B688F8(v881, v885);
LABEL_233:
        v347 = v888;
      }

      else
      {
LABEL_234:
        v347 = 0;
      }

      v923 = v332;
      goto LABEL_355;
    case 0x37u:
      v348 = v1159;
      sub_1A5B5DE58(v299, v1159, type metadata accessor for VisionResult);
      v349 = v348[1];
      *v1201 = *v348;
      *&v1201[16] = v349;
      *&v1201[32] = v348[2];
      v350 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF638) + 48);
      v351 = v1179;
      if (swift_getEnumCaseMultiPayload() != 55)
      {
        sub_1A5B5DF14(v348 + v350, type metadata accessor for PixelBufferObservation);
        sub_1A5B66688(v1201);
        goto LABEL_298;
      }

      v352 = v351[1];
      v1196[0] = *v351;
      v1196[1] = v352;
      v1196[2] = v351[2];
      v353 = v348 + v350;
      v343 = v1074;
      sub_1A5B5C4C0(v353, v1074, type metadata accessor for PixelBufferObservation);
      v354 = v351 + v350;
      v345 = v1075;
      sub_1A5B5C4C0(v354, v1075, type metadata accessor for PixelBufferObservation);
      v1189 = *v1201;
      v1190 = *&v1201[16];
      v1191 = *&v1201[32];
      v1182 = v1196[0];
      v1183 = v1196[1];
      v1184 = v1196[2];
      v355 = static GenerateAnimalSegmentationRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B66688(v1196);
      sub_1A5B66688(v1201);
      if (v355)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    case 0x38u:
      v735 = v1160;
      sub_1A5B5DE58(v299, v1160, type metadata accessor for VisionResult);
      v736 = *(v735 + 48);
      v737 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF630) + 48);
      v738 = v1179;
      if (swift_getEnumCaseMultiPayload() != 56)
      {
        v965 = type metadata accessor for DetectionPrintObservation;
        goto LABEL_295;
      }

      *&v1178 = v299;
      LODWORD(v1176) = *(v735 + 40);
      v739 = *v735;
      v740 = *v738;
      LODWORD(v1177) = *(v738 + 40);
      v741 = v738[6];
      v1173 = *(v735 + 8);
      v1172 = *(v735 + 24);
      v1175 = *(v738 + 1);
      v1174 = *(v738 + 3);
      v742 = v735 + v737;
      v743 = v1095;
      sub_1A5B5C4C0(v742, v1095, type metadata accessor for DetectionPrintObservation);
      v744 = v738 + v737;
      v745 = v1096;
      sub_1A5B5C4C0(v744, v1096, type metadata accessor for DetectionPrintObservation);
      v1201[0] = v739;
      *&v1201[24] = v1172;
      *&v1201[8] = v1173;
      v1201[40] = v1176;
      *&v1202 = v736;
      LOBYTE(v1196[0]) = v740;
      *(&v1196[1] + 8) = v1174;
      *(v1196 + 8) = v1175;
      BYTE8(v1196[2]) = v1177;
      *&v1197 = v741;
      v746 = static GenerateDetectionPrintRequest.== infix(_:_:)(v1201, v1196);

      if (v746)
      {
        v347 = static DetectionPrintObservation.== infix(_:_:)(v743, v745);
      }

      else
      {
        v347 = 0;
      }

      v976 = type metadata accessor for DetectionPrintObservation;
      goto LABEL_352;
    case 0x39u:
      v787 = v1161;
      sub_1A5B5DE58(v299, v1161, type metadata accessor for VisionResult);
      v788 = v787[1];
      *v1201 = *v787;
      *&v1201[16] = v788;
      *&v1201[32] = v787[2];
      v789 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF628) + 48);
      v790 = v1179;
      if (swift_getEnumCaseMultiPayload() != 57)
      {
        sub_1A5B5DF14(v787 + v789, type metadata accessor for PixelBufferObservation);
        sub_1A5B6658C(v1201);
        goto LABEL_298;
      }

      v791 = v790[1];
      v1196[0] = *v790;
      v1196[1] = v791;
      v1196[2] = v790[2];
      v792 = v787 + v789;
      v343 = v1076;
      sub_1A5B5C4C0(v792, v1076, type metadata accessor for PixelBufferObservation);
      v793 = v790 + v789;
      v345 = v1077;
      sub_1A5B5C4C0(v793, v1077, type metadata accessor for PixelBufferObservation);
      v1189 = *v1201;
      v1190 = *&v1201[16];
      v1191 = *&v1201[32];
      v1182 = v1196[0];
      v1183 = v1196[1];
      v1184 = v1196[2];
      v794 = static GenerateGlassesSegmentationRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B6658C(v1196);
      sub_1A5B6658C(v1201);
      if ((v794 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    case 0x3Au:
      v337 = v1162;
      sub_1A5B5DE58(v299, v1162, type metadata accessor for VisionResult);
      v338 = v337[1];
      *v1201 = *v337;
      *&v1201[16] = v338;
      *&v1201[32] = v337[2];
      v339 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF620) + 48);
      v340 = v1179;
      if (swift_getEnumCaseMultiPayload() != 58)
      {
        sub_1A5B5DF14(v337 + v339, type metadata accessor for PixelBufferObservation);
        sub_1A5B66538(v1201);
        goto LABEL_298;
      }

      v341 = v340[1];
      v1196[0] = *v340;
      v1196[1] = v341;
      v1196[2] = v340[2];
      v342 = v337 + v339;
      v343 = v1078;
      sub_1A5B5C4C0(v342, v1078, type metadata accessor for PixelBufferObservation);
      v344 = v340 + v339;
      v345 = v1079;
      sub_1A5B5C4C0(v344, v1079, type metadata accessor for PixelBufferObservation);
      v1189 = *v1201;
      v1190 = *&v1201[16];
      v1191 = *&v1201[32];
      v1182 = v1196[0];
      v1183 = v1196[1];
      v1184 = v1196[2];
      v346 = static GenerateHumanAttributesSegmentationRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B66538(v1196);
      sub_1A5B66538(v1201);
      if ((v346 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    case 0x3Bu:
      v471 = v1163;
      sub_1A5B5DE58(v299, v1163, type metadata accessor for VisionResult);
      v843 = *(v471 + 40);
      v473 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF618) + 48);
      v844 = v1179;
      if (swift_getEnumCaseMultiPayload() != 59)
      {
        v815 = type metadata accessor for ImageFingerprintsObservation;
        goto LABEL_289;
      }

      *&v1178 = v299;
      v845 = *v471;
      v846 = *v844;
      v847 = v844[5];
      v1176 = *(v471 + 8);
      v1174 = *(v471 + 24);
      v1177 = *(v844 + 1);
      v1175 = *(v844 + 3);
      v848 = v471 + v473;
      v783 = v1097;
      sub_1A5B5C4C0(v848, v1097, type metadata accessor for ImageFingerprintsObservation);
      v849 = v844 + v473;
      v785 = v1098;
      sub_1A5B5C4C0(v849, v1098, type metadata accessor for ImageFingerprintsObservation);
      v1201[0] = v845;
      *&v1201[24] = v1174;
      *&v1201[8] = v1176;
      *&v1201[40] = v843;
      LOBYTE(v1196[0]) = v846;
      *(&v1196[1] + 8) = v1175;
      *(v1196 + 8) = v1177;
      *(&v1196[2] + 1) = v847;
      v850 = static GenerateImageFingerprintsRequest.== infix(_:_:)(v1201, v1196);

      if (v850)
      {
        v347 = static ImageFingerprintsObservation.== infix(_:_:)(v783, v785);
      }

      else
      {
        v347 = 0;
      }

      v977 = type metadata accessor for ImageFingerprintsObservation;
LABEL_342:
      v973 = v977;
      v978 = v785;
LABEL_343:
      sub_1A5B5DF14(v978, v977);
      v974 = v783;
      goto LABEL_353;
    case 0x3Cu:
      v471 = v1165;
      sub_1A5B5DE58(v299, v1165, type metadata accessor for VisionResult);
      v816 = *(v471 + 32);
      v473 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF610) + 48);
      v817 = v1179;
      if (swift_getEnumCaseMultiPayload() == 60)
      {
        v475 = v299;
        v818 = v817[4];
        v819 = *(v471 + 16);
        v1177 = *v471;
        v1175 = v819;
        v820 = *(v817 + 1);
        v1178 = *v817;
        v1176 = v820;
        v821 = v471 + v473;
        v480 = v1069;
        sub_1A5B5C4C0(v821, v1069, type metadata accessor for FeaturePrintObservation);
        v822 = v817 + v473;
        v482 = v1070;
        sub_1A5B5C4C0(v822, v1070, type metadata accessor for FeaturePrintObservation);
        *v1201 = v1177;
        *&v1201[16] = v1175;
        *&v1201[32] = v816;
        v1196[1] = v1176;
        v1196[0] = v1178;
        *&v1196[2] = v818;
        v823 = static GenerateImagePrintRequest.== infix(_:_:)(v1201, v1196);

        if (v823)
        {
          v347 = static FeaturePrintObservation.== infix(_:_:)(v480, v482);
        }

        else
        {
          v347 = 0;
        }

        v618 = type metadata accessor for FeaturePrintObservation;
LABEL_338:
        v979 = v618;
        sub_1A5B5DF14(v482, v618);
        sub_1A5B5DF14(v480, v979);
LABEL_339:
        v923 = v475;
        goto LABEL_355;
      }

      v815 = type metadata accessor for FeaturePrintObservation;
LABEL_289:
      v960 = v815;
      v961 = v471 + v473;
      goto LABEL_296;
    case 0x3Du:
      v951 = v1167;
      sub_1A5B5DE58(v299, v1167, type metadata accessor for VisionResult);
      v952 = v951[1];
      *v1201 = *v951;
      *&v1201[16] = v952;
      *&v1201[32] = v951[2];
      v953 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF608) + 48);
      v954 = v1179;
      if (swift_getEnumCaseMultiPayload() != 61)
      {
        sub_1A5B5DF14(v951 + v953, type metadata accessor for PixelBufferObservation);
        sub_1A5B663E8(v1201);
        goto LABEL_298;
      }

      v955 = v954[1];
      v1196[0] = *v954;
      v1196[1] = v955;
      v1196[2] = v954[2];
      v956 = v951 + v953;
      v343 = v1080;
      sub_1A5B5C4C0(v956, v1080, type metadata accessor for PixelBufferObservation);
      v957 = v954 + v953;
      v345 = v1081;
      sub_1A5B5C4C0(v957, v1081, type metadata accessor for PixelBufferObservation);
      v1189 = *v1201;
      v1190 = *&v1201[16];
      v1191 = *&v1201[32];
      v1182 = v1196[0];
      v1183 = v1196[1];
      v1184 = v1196[2];
      v958 = static GenerateSkySegmentationRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B663E8(v1196);
      sub_1A5B663E8(v1201);
      if (v958)
      {
LABEL_15:
        v347 = static PixelBufferObservation.== infix(_:_:)(v343, v345);
      }

      else
      {
LABEL_18:
        v347 = 0;
      }

      v356 = type metadata accessor for PixelBufferObservation;
LABEL_20:
      v357 = v356;
      sub_1A5B5DF14(v345, v356);
      v358 = v343;
LABEL_21:
      sub_1A5B5DF14(v358, v357);
      goto LABEL_228;
    case 0x3Eu:
      v316 = v299;
      v908 = v1164;
      sub_1A5B5DE58(v299, v1164, type metadata accessor for VisionResult);
      v909 = *(v908 + 32);
      v463 = *(v908 + 40);
      v910 = v1179;
      if (swift_getEnumCaseMultiPayload() != 62)
      {
        goto LABEL_223;
      }

      v911 = v910[4];
      v466 = v910[5];
      v912 = *(v908 + 16);
      *v1201 = *v908;
      *&v1201[16] = v912;
      *&v1201[32] = v909;
      v913 = *(v910 + 1);
      v1196[0] = *v910;
      v1196[1] = v913;
      *&v1196[2] = v911;
      v470 = static RecognizeAnimalFacesRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_216;
    case 0x3Fu:
      v935 = v1170;
      sub_1A5B5DE58(v299, v1170, type metadata accessor for VisionResult);
      v936 = *(v935 + 16);
      *v1201 = *v935;
      *&v1201[16] = v936;
      *&v1201[32] = *(v935 + 32);
      v832 = *(v935 + 56);
      *&v1202 = *(v935 + 48);
      v937 = v1179;
      if (swift_getEnumCaseMultiPayload() != 63)
      {

        sub_1A5B662EC(v1201);
        goto LABEL_298;
      }

      v364 = v299;
      v938 = *(v937 + 1);
      v1196[0] = *v937;
      v1196[1] = v938;
      v940 = *v937;
      v939 = *(v937 + 1);
      v1196[2] = *(v937 + 2);
      v941 = *(v935 + 16);
      v1189 = *v935;
      v1190 = v941;
      v1191 = *(v935 + 32);
      *&v1197 = v937[6];
      *&v1192 = *(v935 + 48);
      v1182 = v940;
      v1183 = v939;
      v1184 = *(v937 + 2);
      v841 = v937[7];
      *&v1185 = v937[6];
      v942 = static RecognizeDocumentElementsRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B662EC(v1196);
      sub_1A5B662EC(v1201);
      if ((v942 & 1) == 0)
      {
        goto LABEL_240;
      }

      goto LABEL_238;
    case 0x40u:
      v316 = v299;
      v824 = v1166;
      sub_1A5B5DE58(v299, v1166, type metadata accessor for VisionResult);
      v825 = *(v824 + 32);
      v463 = *(v824 + 40);
      v826 = v1179;
      if (swift_getEnumCaseMultiPayload() != 64)
      {
        goto LABEL_223;
      }

      v827 = v826[4];
      v466 = v826[5];
      v828 = *(v824 + 16);
      *v1201 = *v824;
      *&v1201[16] = v828;
      *&v1201[32] = v825;
      v829 = *(v826 + 1);
      v1196[0] = *v826;
      v1196[1] = v829;
      *&v1196[2] = v827;
      v470 = static RecognizeFoodAndDrinkRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_216;
    case 0x41u:
      v830 = v1176;
      sub_1A5B5DE58(v299, v1176, type metadata accessor for VisionResult);
      v831 = v830[3];
      *&v1201[32] = v830[2];
      v1202 = v831;
      v1203 = v830[4];
      v832 = *(v830 + 11);
      *&v1204 = *(v830 + 10);
      v833 = v830[1];
      *v1201 = *v830;
      *&v1201[16] = v833;
      v834 = v1179;
      if (swift_getEnumCaseMultiPayload() != 65)
      {

        sub_1A5B661F0(v1201);
        goto LABEL_298;
      }

      v364 = v299;
      v835 = *(v834 + 3);
      v836 = *(v834 + 1);
      v1196[2] = *(v834 + 2);
      v1197 = v835;
      v837 = *(v834 + 3);
      v1198 = *(v834 + 4);
      v838 = *(v834 + 1);
      v1196[0] = *v834;
      v1196[1] = v838;
      v839 = v830[3];
      v1191 = v830[2];
      v1192 = v839;
      v1193 = v830[4];
      v840 = v830[1];
      v1189 = *v830;
      v1190 = v840;
      v1184 = v1196[2];
      v1185 = v837;
      v1186 = *(v834 + 4);
      *&v1199 = v834[10];
      *&v1194 = *(v830 + 10);
      v841 = v834[11];
      *&v1187 = v834[10];
      v1182 = v1196[0];
      v1183 = v836;
      v842 = static RecognizeObjectsRequest.== infix(_:_:)(&v1189, &v1182);
      sub_1A5B661F0(v1196);
      sub_1A5B661F0(v1201);
      if (v842)
      {
LABEL_238:
        v374 = sub_1A5B688F8(v832, v841);
LABEL_239:
        v347 = v374;
      }

      else
      {
LABEL_240:
        v347 = 0;
      }

LABEL_241:

      v923 = v364;
      goto LABEL_355;
    case 0x42u:
      v316 = v299;
      v462 = v1168;
      sub_1A5B5DE58(v299, v1168, type metadata accessor for VisionResult);
      v464 = *(v462 + 32);
      v463 = *(v462 + 40);
      v465 = v1179;
      if (swift_getEnumCaseMultiPayload() != 66)
      {
        goto LABEL_223;
      }

      v467 = v465[4];
      v466 = v465[5];
      v468 = *(v462 + 16);
      *v1201 = *v462;
      *&v1201[16] = v468;
      *&v1201[32] = v464;
      v469 = *(v465 + 1);
      v1196[0] = *v465;
      v1196[1] = v469;
      *&v1196[2] = v467;
      v470 = static RecognizePosteriorAnimalHeadsRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_216;
    case 0x43u:
      v316 = v299;
      v873 = v1169;
      sub_1A5B5DE58(v299, v1169, type metadata accessor for VisionResult);
      v874 = *(v873 + 32);
      v463 = *(v873 + 40);
      v875 = v1179;
      if (swift_getEnumCaseMultiPayload() != 67)
      {
        goto LABEL_223;
      }

      v876 = v875[4];
      v466 = v875[5];
      v877 = *(v873 + 16);
      *v1201 = *v873;
      *&v1201[16] = v877;
      *&v1201[32] = v874;
      v878 = *(v875 + 1);
      v1196[0] = *v875;
      v1196[1] = v878;
      *&v1196[2] = v876;
      v470 = static RecognizeSportBallsRequest.== infix(_:_:)(v1201, v1196);
LABEL_216:
      v914 = v470;

      if ((v914 & 1) == 0)
      {
        goto LABEL_225;
      }

      v444 = sub_1A5B688F8(v463, v466);
      goto LABEL_222;
    case 0x44u:
      v305 = v1172;
      sub_1A5B5DE58(v299, v1172, type metadata accessor for VisionResult);
      v306 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F4CD0) + 48);
      v307 = v1179;
      if (swift_getEnumCaseMultiPayload() == 68)
      {
        *&v1178 = v299;
        v308 = v1101;
        sub_1A5B60994(v305 + v306, v1101, &qword_1EB1EF6F8);
        v309 = v1111;
        sub_1A5B60994(v307 + v306, v1111, &qword_1EB1EF6F8);

        v310 = sub_1A5FD4B5C();

        if ((v310 & 1) == 0)
        {

          v963 = &qword_1EB1EF6F8;
          sub_1A5B10168(v309, &qword_1EB1EF6F8);
          v972 = v308;
          goto LABEL_347;
        }

        v311 = v1052;
        v312 = *(v1051 + 48);
        sub_1A5B31A34(v308, v1052, &qword_1EB1EF6F8);
        sub_1A5B31A34(v309, v311 + v312, &qword_1EB1EF6F8);
        v313 = *(v1037 + 48);
        v314 = v1039;
        if (v313(v311, 1, v1039) == 1)
        {

          sub_1A5B10168(v309, &qword_1EB1EF6F8);
          sub_1A5B10168(v308, &qword_1EB1EF6F8);
          if (v313(v311 + v312, 1, v314) == 1)
          {
            v315 = &qword_1EB1EF6F8;
LABEL_208:
            v529 = v311;
            goto LABEL_209;
          }
        }

        else
        {
          v982 = v1026;
          sub_1A5B31A34(v311, v1026, &qword_1EB1EF6F8);
          if (v313(v311 + v312, 1, v314) != 1)
          {
            v985 = v311 + v312;
            v986 = v1014;
            sub_1A5B5C4C0(v985, v1014, type metadata accessor for PixelBufferObservation);
            sub_1A5B5E6AC(&qword_1EB1EFDE0, type metadata accessor for PixelBufferObservation);
            v987 = v982;
            v347 = sub_1A5FD3D0C();

            v988 = type metadata accessor for PixelBufferObservation;
            sub_1A5B5DF14(v986, type metadata accessor for PixelBufferObservation);
            v989 = &qword_1EB1EF6F8;
            sub_1A5B10168(v1111, &qword_1EB1EF6F8);
            sub_1A5B10168(v308, &qword_1EB1EF6F8);
            v990 = v987;
LABEL_398:
            sub_1A5B5DF14(v990, v988);
            v995 = v311;
            goto LABEL_399;
          }

          sub_1A5B10168(v1111, &qword_1EB1EF6F8);
          sub_1A5B10168(v308, &qword_1EB1EF6F8);
          sub_1A5B5DF14(v982, type metadata accessor for PixelBufferObservation);
        }

        v980 = &qword_1EB1EFDA0;
        v972 = v311;
        goto LABEL_348;
      }

      v959 = &qword_1EB1EF6F8;
LABEL_292:
      sub_1A5B10168(v305 + v306, v959);

LABEL_298:
      sub_1A5B10168(v299, &qword_1EB1EFDD8);
LABEL_299:
      v347 = 0;
      return v347 & 1;
    case 0x45u:
      v316 = v299;
      v903 = v1171;
      sub_1A5B5DE58(v299, v1171, type metadata accessor for VisionResult);
      v904 = *(v903 + 40);
      v318 = *(v903 + 48);
      v905 = v1179;
      if (swift_getEnumCaseMultiPayload() != 69)
      {
        goto LABEL_223;
      }

      v906 = *v905;
      v907 = v905[5];
      v324 = v905[6];
      v1201[0] = *v903;
      *&v1201[8] = *(v903 + 8);
      *&v1201[24] = *(v903 + 24);
      *&v1201[40] = v904;
      LOBYTE(v1196[0]) = v906;
      *(v1196 + 8) = *(v905 + 1);
      *(&v1196[1] + 8) = *(v905 + 3);
      *(&v1196[2] + 1) = v907;
      v326 = static SVYvzEtX1JlUdu8xx5qhDIRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_220;
    case 0x46u:
      v316 = v299;
      v915 = v1173;
      sub_1A5B5DE58(v299, v1173, type metadata accessor for VisionResult);
      v916 = *(v915 + 48);
      v318 = *(v915 + 56);
      v917 = v1179;
      if (swift_getEnumCaseMultiPayload() != 70)
      {
        goto LABEL_223;
      }

      v918 = *(v915 + 40);
      v919 = *v917;
      v920 = *(v917 + 40);
      v921 = v917[6];
      v324 = v917[7];
      v1201[0] = *v915;
      *&v1201[8] = *(v915 + 8);
      *&v1201[24] = *(v915 + 24);
      v1201[40] = v918;
      *&v1202 = v916;
      LOBYTE(v1196[0]) = v919;
      *(v1196 + 8) = *(v917 + 1);
      *(&v1196[1] + 8) = *(v917 + 3);
      BYTE8(v1196[2]) = v920;
      *&v1197 = v921;
      v326 = static S5kJNH3eYuyaLxNpZr5Z7ziRequest.== infix(_:_:)(v1201, v1196);
      goto LABEL_220;
    case 0x47u:
      v316 = v299;
      v599 = v1174;
      sub_1A5B5DE58(v299, v1174, type metadata accessor for VisionResult);
      v600 = *(v599 + 48);
      v318 = *(v599 + 56);
      v601 = v1179;
      if (swift_getEnumCaseMultiPayload() != 71)
      {
LABEL_223:

LABEL_224:

        v299 = v316;
        goto LABEL_298;
      }

      v602 = *(v599 + 40);
      v603 = *v601;
      v604 = *(v601 + 40);
      v605 = v601[6];
      v324 = v601[7];
      v1201[0] = *v599;
      *&v1201[8] = *(v599 + 8);
      *&v1201[24] = *(v599 + 24);
      v1201[40] = v602;
      *&v1202 = v600;
      LOBYTE(v1196[0]) = v603;
      *(v1196 + 8) = *(v601 + 1);
      *(&v1196[1] + 8) = *(v601 + 3);
      BYTE8(v1196[2]) = v604;
      *&v1197 = v605;
      v326 = static S6Mb1ME89lyW3HpahkEygIGRequest.== infix(_:_:)(v1201, v1196);
LABEL_220:
      v922 = v326;

      if (v922)
      {
        v444 = sub_1A5B676B0(v318, v324);
LABEL_222:
        v347 = v444;
      }

      else
      {
LABEL_225:
        v347 = 0;
      }

      v299 = v316;
LABEL_227:

LABEL_228:
      v923 = v299;
      goto LABEL_355;
    case 0x48u:
      v735 = v1175;
      sub_1A5B5DE58(v299, v1175, type metadata accessor for VisionResult);
      v943 = *(v735 + 48);
      v737 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF600) + 48);
      v944 = v1179;
      if (swift_getEnumCaseMultiPayload() == 72)
      {
        *&v1178 = v299;
        LODWORD(v1176) = *(v735 + 40);
        v945 = *v735;
        v946 = *v944;
        LODWORD(v1177) = *(v944 + 40);
        v947 = v944[6];
        v1172 = *(v735 + 8);
        v1171 = *(v735 + 24);
        v1174 = *(v944 + 1);
        v1173 = *(v944 + 3);
        v948 = v735 + v737;
        v743 = v1099;
        sub_1A5B5C4C0(v948, v1099, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
        v949 = v944 + v737;
        v745 = v1100;
        sub_1A5B5C4C0(v949, v1100, type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation);
        v1201[0] = v945;
        *&v1201[24] = v1171;
        *&v1201[8] = v1172;
        v1201[40] = v1176;
        *&v1202 = v943;
        LOBYTE(v1196[0]) = v946;
        *(&v1196[1] + 8) = v1173;
        *(v1196 + 8) = v1174;
        BYTE8(v1196[2]) = v1177;
        *&v1197 = v947;
        v950 = static S1JC7R3k4455fKQz0dY1VhQRequest.== infix(_:_:)(v1201, v1196);

        if (v950)
        {
          v347 = static S1vLyVSh30UQ26TGBoV8MHvObservation.== infix(_:_:)(v743, v745);
        }

        else
        {
          v347 = 0;
        }

        v976 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation;
LABEL_352:
        v973 = v976;
        sub_1A5B5DF14(v745, v976);
        v974 = v743;
LABEL_353:
        sub_1A5B5DF14(v974, v973);
LABEL_354:
        v923 = v1178;
        goto LABEL_355;
      }

      v965 = type metadata accessor for S1vLyVSh30UQ26TGBoV8MHvObservation;
LABEL_295:
      v960 = v965;
      v961 = v735 + v737;
LABEL_296:
      sub_1A5B5DF14(v961, v960);
      goto LABEL_297;
    default:
      goto LABEL_298;
  }
}