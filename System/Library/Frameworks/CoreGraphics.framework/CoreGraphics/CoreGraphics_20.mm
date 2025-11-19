char *sub_183F81B04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_183F81C20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_183F81D24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA8542D0);
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

uint64_t sub_183F81F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = v5;
  v57 = a1;
  v52 = *(*(a4 + 24) - 8);
  MEMORY[0x1EEE9AC00](a1, a5);
  v54 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v11 + 40);
  v59 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8, v14);
  v55 = v49 - v15;
  v16 = *(a4 + 32);
  v17 = *(a4 + 16);
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_18438FF18();
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v53 = v49 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v18;
  v27 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v24, v28);
  v30 = v49 - v29;
  v32 = v6;
  (*(v31 + 16))(v26, v6, v17);
  v33 = sub_18438FD48();
  v56 = v16;
  swift_getAssociatedTypeWitness();
  v49[1] = a2;
  v50 = a3;
  v34 = v33;
  result = sub_18438FF28();
  if (__OFSUB__(result, v33))
  {
    __break(1u);
  }

  else
  {
    v36 = *(a4 + 52);
    if (result - v33 < sub_18438FD58())
    {
      v37 = *(v27 + 16);
      v38 = v53;
      v50 = v33;
      v39 = v51;
      v37(v53, v30, v51);
      (*(v27 + 56))(v38, 0, 1, v39);
      (*(v52 + 16))(v54, v32 + v36, v59);
      v40 = v55;
      sub_18438FD38();
      v41 = v39;
      v42 = v50;
      (*(v27 + 8))(v30, v41);
      sub_183F823DC(v38, v40, v57);
      return v42;
    }

    (*(v52 + 16))(v54, v6 + v36, v59);
    sub_18438FF48();
    sub_18438FF38();
    v43 = v55;
    v44 = sub_18438FD48();
    v45 = v53;
    v46 = v30;
    v47 = v51;
    (*(v27 + 32))(v53, v46, v51);
    (*(v27 + 56))(v45, 0, 1, v47);
    result = sub_183F823DC(v45, v43, v57);
    v48 = __OFADD__(v34, v44);
    v42 = v34 + v44;
    if (!v48)
    {
      return v42;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_183F823DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = sub_18438FF18();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for BothSequence.Iterator() + 52);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 32))(a3 + v7, a2, AssociatedTypeWitness);
}

uint64_t sub_183F82504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v4 = v3;
  v27 = a2;
  v6 = *(a1 + 24);
  v26 = *(v6 - 8);
  v8 = *(MEMORY[0x1EEE9AC00](a1, a3) + 40);
  v25[0] = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8, v10);
  v13 = v25 - v12;
  v14 = *(a1 + 16);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v11, v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  v20 = sub_18438FF18();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = v25 - v22;
  (*(v15 + 16))(v18, v4, v14);
  sub_18438FD38();
  (*(*(v19 - 8) + 56))(v23, 0, 1, v19);
  (*(v26 + 16))(v25[0], v4 + *(a1 + 52), v6);
  sub_18438FD38();
  return sub_183F823DC(v23, v13, v27);
}

uint64_t sub_183F827BC()
{
  v0 = sub_18438FD58();
  v1 = sub_18438FD58();
  v2 = __OFADD__(v0, v1);
  result = v0 + v1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183F82814@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = sub_18438FF18();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v24 = &v20 - v4;
  v5 = swift_getAssociatedTypeWitness();
  v6 = sub_18438FF18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - v9;
  v11 = *(v7 + 16);
  v27 = v1;
  v11(&v20 - v9, v1, v6);
  v21 = *(v5 - 8);
  v12 = *(v21 + 48);
  v13 = v12(v10, 1, v5);
  v20 = *(v7 + 8);
  v20(v10, v6);
  if (v13 == 1)
  {
    goto LABEL_5;
  }

  v14 = v26;
  result = v12(v27, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    v16 = v24;
    sub_18438FF58();
    v17 = AssociatedTypeWitness;
    v18 = *(AssociatedTypeWitness - 8);
    if ((*(v18 + 48))(v16, 1, AssociatedTypeWitness) == 1)
    {
      (*(v22 + 8))(v16, v23);
      v19 = v27;
      v20(v27, v6);
      (*(v21 + 56))(v19, 1, 1, v5);
LABEL_5:
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      return sub_18438FF58();
    }

    (*(v18 + 32))(v14, v16, v17);
    return (*(v18 + 56))(v14, 0, 1, v17);
  }

  return result;
}

uint64_t sub_183F82BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  sub_183F82504(a1, a2, a3);
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t sub_183F82C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_183F8ED98(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t sub_183F82CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v7 = sub_183F81F14(a1, a2, a3, a4, a5);
  (*(*(a4 - 8) + 8))(v5, a4);
  return v7;
}

uint64_t sub_183F82D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  v7 = *(_s5IndexVMa() + 52);
  v8 = swift_getAssociatedTypeWitness();
  return (*(*(v8 - 8) + 32))(a3 + v7, a2, v8);
}

uint64_t sub_183F82E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v9 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8, v11);
  v13 = &v20 - v12;
  v14 = *(a1 + 16);
  v15 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v20 - v17;
  a4(v14, a2);
  a4(v9, a3);
  return sub_183F82D2C(v18, v13, v21);
}

uint64_t sub_183F82FA8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v34 = *(a2 + 24);
  v35 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8, v10);
  v36 = &v29 - v11;
  v31 = a2;
  v12 = *(a2 + 16);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v30 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v29 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v29 - v23;
  v25 = *(v14 + 16);
  v29 = a1;
  v25(&v29 - v23, a1, v13);
  v32 = v5;
  sub_18438FE48();
  swift_getAssociatedConformanceWitness();
  if (sub_18438FCC8())
  {
    v26 = v30;
    v25(v30, v21, v13);
    v37 = v12;
    v38 = v34;
    v39 = a3;
    v40 = v35;
    _s5IndexVMa();
    sub_18438FE18();
  }

  else
  {
    v26 = v30;
    sub_18438FE18();
    sub_18438FE08();
  }

  v27 = *(v14 + 8);
  v27(v21, v13);
  v27(v24, v13);
  return sub_183F82D2C(v26, v36, v33);
}

uint64_t sub_183F83298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v35 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v11 = &v27 - v10;
  v12 = *(a2 + 16);
  v13 = swift_getAssociatedTypeWitness();
  v32 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v36 = &v27 - v19;
  sub_18438FE08();
  v33 = v11;
  v29 = v7;
  v30 = a4;
  sub_18438FE08();
  sub_18438FE48();
  swift_getAssociatedConformanceWitness();
  if ((sub_18438FCC8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v28 = sub_18438FE38();
  v37 = v12;
  v38 = v29;
  v39 = a3;
  v40 = v30;
  _s5IndexVMa();
  v20 = v33;
  v21 = sub_18438FE38();
  v22 = *(v32 + 8);
  v22(v17, v13);
  (*(v34 + 8))(v20, v35);
  v22(v36, v13);
  result = v28 + v21;
  if (__OFADD__(v28, v21))
  {
    __break(1u);
LABEL_5:
    v24 = v36;
    v25 = sub_18438FE38();
    v26 = *(v32 + 8);
    v26(v17, v13);
    (*(v34 + 8))(v33, v35);
    v26(v24, v13);
    return v25;
  }

  return result;
}

uint64_t sub_183F835D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a5;
  v44 = a1;
  v47 = *(a2 + 24);
  v48 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v42 = AssociatedTypeWitness;
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v45 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v39 - v12;
  v14 = *(a2 + 16);
  v46 = swift_getAssociatedTypeWitness();
  v15 = *(v46 - 8);
  v17 = MEMORY[0x1EEE9AC00](v46, v16);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = v39 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = v39 - v25;
  sub_18438FE08();
  v40 = v13;
  sub_18438FE08();
  sub_18438FE48();
  v27 = sub_18438FE38();
  v28 = v44;
  if (v27 > v44)
  {
    sub_18438FE28();
    v29 = *(v15 + 8);
    v30 = v46;
    v29(v23, v46);
    v29(v26, v30);
    v31 = v45;
    (*(v41 + 32))(v45, v40, v42);
    return sub_183F82D2C(v19, v31, v43);
  }

  v32 = v27;
  v39[1] = a3;
  v39[2] = v14;
  v33 = v45;
  v34 = *(v15 + 16);
  v39[0] = v19;
  result = v34(v19, v23, v46);
  if (!__OFSUB__(v28, v32))
  {
    v31 = v33;
    v36 = v40;
    sub_18438FE28();
    v37 = *(v15 + 8);
    v38 = v46;
    v37(v23, v46);
    (*(v41 + 8))(v36, v42);
    v37(v26, v38);
    v19 = v39[0];
    return sub_183F82D2C(v19, v31, v43);
  }

  __break(1u);
  return result;
}

uint64_t sub_183F83950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = sub_183F83298(a1, a3, a4, a5);
  v12 = __OFADD__(v11, a2);
  result = v11 + a2;
  if (v12)
  {
    __break(1u);
  }

  else
  {

    return sub_183F835D4(result, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_183F839CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_183F83298(a2, a3, a4, a5);
  v10 = sub_183F83298(a1, a3, a4, a5);
  v11 = __OFSUB__(v9, v10);
  result = v9 - v10;
  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183F83A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a4;
  v30 = a5;
  v8 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v28 - v16;
  v18 = *(v10 + 16);
  v28[1] = a1;
  v18(v28 - v16, a1, AssociatedTypeWitness);
  sub_18438FE48();
  swift_getAssociatedConformanceWitness();
  v19 = sub_18438FCC8();
  v20 = v14;
  v21 = *(v10 + 8);
  v21(v20, AssociatedTypeWitness);
  if (v19)
  {
    v22 = *(a2 + 24);
    v31[0] = v8;
    v31[1] = v22;
    v31[2] = a3;
    v31[3] = v29;
    _s5IndexVMa();
  }

  v23 = sub_18438FEE8();
  v25 = v24;
  v26 = swift_getAssociatedTypeWitness();
  (*(*(v26 - 8) + 16))(v30, v25, v26);
  v23(v31, 0);
  return (v21)(v17, AssociatedTypeWitness);
}

uint64_t sub_183F83D34()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (sub_18438FCC8())
  {
    swift_getAssociatedTypeWitness();
    _s5IndexVMa();
    swift_getAssociatedConformanceWitness();
    v0 = sub_18438FCC8();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_183F83E64()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (sub_18438FCC8())
  {
    swift_getAssociatedTypeWitness();
    _s5IndexVMa();
    swift_getAssociatedConformanceWitness();
  }

  return sub_18438FC68() & 1;
}

void (*sub_183F84034(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
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
  v8[4] = sub_183F8410C(v8, a2, a3, *(a4 - 8), *(a4 - 16));
  return sub_183F840C4;
}

void sub_183F840C4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_183F8410C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  a1[1] = v11;
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  a1[2] = v12;
  sub_183F83A40(a2, a3, a4, a5, v12);
  return sub_183F84210;
}

void sub_183F84210(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_183F8426C@<X0>(uint64_t a1@<X8>)
{
  _s5IndexVMa();
  v2 = sub_18438FF18();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t sub_183F843A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 16);
  v5 = *(a3 - 8);
  v13 = *(a2 + 16);
  v14 = v5;
  v15 = v6;
  v7 = _s5IndexVMa();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, v7);
  sub_183F82FA8(v11, a2, v5, v6, a1);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_183F844BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v32 = a1;
  v30[0] = a3;
  v7 = *(a3 + 8);
  v8 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8, v10);
  v34 = v30 - v11;
  v30[1] = a4;
  v12 = *(a4 + 8);
  v13 = *(a2 + 24);
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = v30 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = v30 - v25;
  v30[3] = v8;
  v35 = v8;
  v36 = v13;
  v33 = v7;
  v37 = v7;
  v38 = v12;
  v27 = _s5IndexVMa();
  (*(v15 + 16))(v26, v32 + *(v27 + 52), v14);
  sub_18438FE08();
  swift_getAssociatedConformanceWitness();
  if (sub_18438FCC8())
  {
    sub_18438FC38();
    (*(v15 + 8))(v26, v14);
    (*(v15 + 32))(v19, v23, v14);
  }

  else
  {
    sub_18438FE48();
    sub_18438FC38();
    v28 = *(v15 + 8);
    v28(v23, v14);
    v28(v26, v14);
  }

  return sub_183F82D2C(v34, v19, v31);
}

uint64_t sub_183F847CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 16);
  v5 = *(a3 - 8);
  v7 = *(v5 + 8);
  v8 = *(v6 + 8);
  v15 = *(a2 + 16);
  v16 = v7;
  v17 = v8;
  v9 = _s5IndexVMa();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v15 - v12;
  (*(v10 + 32))(&v15 - v12, a1, v9);
  sub_183F844BC(v13, a2, v5, v6, a1);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_183F849D4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_18438FC88();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_18438FF08();
  result = sub_18438FC88();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_183F84AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_18438FC88();
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

uint64_t sub_183F84BF4()
{
  swift_getAssociatedTypeWitness();
  result = sub_18438FF18();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_183F84CB4(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v5)
  {
    v12 = *(v4 + 64);
  }

  else
  {
    v12 = *(v4 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v12 + v11;
  if (a2 <= v10)
  {
    goto LABEL_34;
  }

  v14 = (v13 & ~v11) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v17 < 2)
    {
LABEL_33:
      if (v10)
      {
LABEL_34:
        if (v6 >= v9)
        {
          v23 = (*(v4 + 48))(a1, v5, AssociatedTypeWitness);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v21 = *(v8 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_33;
  }

LABEL_20:
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

  return v10 + (v20 | v18) + 1;
}

void sub_183F84F64(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v27 = AssociatedTypeWitness;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v8)
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(v11 + 80);
  v16 = ((v14 + v15) & ~v15) + *(v11 + 64);
  if (a3 <= v13)
  {
    goto LABEL_21;
  }

  if (v16 <= 3)
  {
    v17 = ((a3 - v13 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v17))
    {
      v10 = 4;
      if (v13 >= a2)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v10 = v18;
    }

    else
    {
      v10 = 0;
    }

LABEL_21:
    if (v13 >= a2)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v10 = 1;
  if (v13 >= a2)
  {
LABEL_31:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v16] = 0;
    }

    else if (v10)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 >= v12)
      {
        if (v9 >= a2)
        {
          v26 = *(v7 + 56);

          v26(a1, (a2 + 1), v8, v27);
        }

        else
        {
          if (v14 <= 3)
          {
            v23 = ~(-1 << (8 * v14));
          }

          else
          {
            v23 = -1;
          }

          if (v14)
          {
            v24 = v23 & (~v9 + a2);
            if (v14 <= 3)
            {
              v25 = v14;
            }

            else
            {
              v25 = 4;
            }

            bzero(a1, v14);
            if (v25 > 2)
            {
              if (v25 == 3)
              {
                *a1 = v24;
                a1[2] = BYTE2(v24);
              }

              else
              {
                *a1 = v24;
              }
            }

            else if (v25 == 1)
            {
              *a1 = v24;
            }

            else
            {
              *a1 = v24;
            }
          }
        }
      }

      else
      {
        v22 = *(v11 + 56);

        v22(&a1[v14 + v15] & ~v15, a2);
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_22:
  v19 = ~v13 + a2;
  if (v16 >= 4)
  {
    bzero(a1, v16);
    *a1 = v19;
    v20 = 1;
    if (v10 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v20 = (v19 >> (8 * v16)) + 1;
  if (!v16)
  {
LABEL_59:
    if (v10 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v21 = v19 & ~(-1 << (8 * v16));
  bzero(a1, v16);
  if (v16 == 3)
  {
    *a1 = v21;
    a1[2] = BYTE2(v21);
    goto LABEL_59;
  }

  if (v16 == 2)
  {
    *a1 = v21;
    if (v10 > 1)
    {
LABEL_63:
      if (v10 == 2)
      {
        *&a1[v16] = v20;
      }

      else
      {
        *&a1[v16] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v10 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v10)
  {
    a1[v16] = v20;
  }
}

uint64_t sub_183F85330()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_183F853E4(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v5 + 64) + v10;
  if (a2 <= v11)
  {
    goto LABEL_28;
  }

  v13 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((a2 - v11 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v11)
      {
LABEL_28:
        if (v6 >= v9)
        {
          v22 = *(v5 + 48);

          return v22(a1, v6, AssociatedTypeWitness);
        }

        else
        {
          v20 = *(v8 + 48);

          return v20((a1 + v12) & ~v10);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v11 + (v19 | v17) + 1;
}

void sub_183F856A4(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v7 + 64) + v12;
  v14 = (v13 & ~v12) + *(v9 + 64);
  if (a3 <= v11)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v11 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v11 < a2)
  {
    v16 = ~v11 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v14)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_46:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
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
  if (v8 >= v10)
  {
    v22 = *(v7 + 56);

    v22(a1, a2, v8, AssociatedTypeWitness);
  }

  else
  {
    v21 = *(v9 + 56);

    v21(&a1[v13] & ~v12, a2);
  }
}

uint64_t sub_183F859E0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_183F85A6C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_183F85C48(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
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
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

unint64_t sub_183F85F3C(uint64_t a1)
{
  result = sub_183F85F64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_183F85F64()
{
  result = qword_1EA854458;
  if (!qword_1EA854458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854458);
  }

  return result;
}

unint64_t sub_183F85FD0(uint64_t a1)
{
  result = sub_183F85FF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_183F85FF8()
{
  result = qword_1EA854460;
  if (!qword_1EA854460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854460);
  }

  return result;
}

unint64_t sub_183F86064(uint64_t a1)
{
  result = sub_183F8608C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_183F8608C()
{
  result = qword_1EA854468;
  if (!qword_1EA854468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854468);
  }

  return result;
}

uint64_t static CGContentToneMappingInfo.LightLevel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((a1[1] & 1) == 0)
  {
    return (a2[1] & 1) == 0 && *&v2 == *&v3;
  }

  if (v2 == v3)
  {
    return *(a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t CGContentToneMappingInfo.LightLevel.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x1865ECC10](1);
    return MEMORY[0x1865ECC10](v1);
  }

  else
  {
    MEMORY[0x1865ECC10](0);
    return sub_184390318();
  }
}

uint64_t CGContentToneMappingInfo.LightLevel.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1843902E8();
  if (v2)
  {
    MEMORY[0x1865ECC10](1);
    MEMORY[0x1865ECC10](v1);
  }

  else
  {
    MEMORY[0x1865ECC10](0);
    sub_184390318();
  }

  return sub_184390348();
}

uint64_t sub_183F86208(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((a1[1] & 1) == 0)
  {
    return (a2[1] & 1) == 0 && *&v2 == *&v3;
  }

  if (v2 == v3)
  {
    return *(a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183F86254()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1843902E8();
  if (v2)
  {
    MEMORY[0x1865ECC10](1);
    MEMORY[0x1865ECC10](v1);
  }

  else
  {
    MEMORY[0x1865ECC10](0);
    sub_184390318();
  }

  return sub_184390348();
}

BOOL static CGContentToneMappingInfo.DynamicRange.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          v4 = *(a2 + 8);
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (v3 > 1)
        {
          v7 = *(a2 + 8);
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          return 1;
        }
      }
    }

    else
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = *(a2 + 8);
      }

      if (v6)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && *&v2 == *&v3)
  {
    return *(&v2 + 1) == *(&v3 + 1);
  }

  return 0;
}

uint64_t CGContentToneMappingInfo.DynamicRange.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1865ECC10](v2);
  }

  else
  {
    MEMORY[0x1865ECC10](3);
    sub_184390318();
    return sub_184390318();
  }
}

uint64_t CGContentToneMappingInfo.DynamicRange.hashValue.getter()
{
  sub_1843902E8();
  CGContentToneMappingInfo.DynamicRange.hash(into:)();
  return sub_184390348();
}

BOOL sub_183F86458(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          v4 = *(a2 + 8);
        }

        else
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (v3 > 1)
        {
          v7 = *(a2 + 8);
        }

        else
        {
          v7 = 0;
        }

        if (v7)
        {
          return 1;
        }
      }
    }

    else
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = *(a2 + 8);
      }

      if (v6)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && *&v2 == *&v3)
  {
    return *(&v2 + 1) == *(&v3 + 1);
  }

  return 0;
}

uint64_t sub_183F864F0()
{
  sub_1843902E8();
  CGContentToneMappingInfo.DynamicRange.hash(into:)();
  return sub_184390348();
}

uint64_t sub_183F86548()
{
  sub_1843902E8();
  CGContentToneMappingInfo.DynamicRange.hash(into:)();
  return sub_184390348();
}

void CGContentToneMappingInfo.DefaultOptions.contentAverageLightLevel.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t CGContentToneMappingInfo.DefaultOptions.contentAverageLightLevel.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void CGContentToneMappingInfo.DefaultOptions.preferredDynamicRange.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 20);
  *a1 = *(v1 + 12);
  *(a1 + 8) = v2;
}

uint64_t CGContentToneMappingInfo.DefaultOptions.preferredDynamicRange.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 12) = *result;
  *(v1 + 20) = v2;
  return result;
}

void CGContentToneMappingInfo.DefaultOptions.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2;
  *(a1 + 20) = 1;
}

uint64_t CGContentToneMappingInfo.DefaultOptions.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 12);
  v3 = *(v0 + 20);
  if (v0[1])
  {
    MEMORY[0x1865ECC10](1);
    MEMORY[0x1865ECC10](v1);
    if (!v3)
    {
LABEL_3:
      MEMORY[0x1865ECC10](3);
      sub_184390318();
      return sub_184390318();
    }
  }

  else
  {
    MEMORY[0x1865ECC10](0);
    sub_184390318();
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x1865ECC10](v5);
}

uint64_t CGContentToneMappingInfo.DefaultOptions.hashValue.getter()
{
  sub_1843902E8();
  CGContentToneMappingInfo.DefaultOptions.hash(into:)();
  return sub_184390348();
}

uint64_t sub_183F86780()
{
  sub_1843902E8();
  CGContentToneMappingInfo.DefaultOptions.hash(into:)();
  return sub_184390348();
}

uint64_t sub_183F867E8()
{
  sub_1843902E8();
  CGContentToneMappingInfo.DefaultOptions.hash(into:)();
  return sub_184390348();
}

uint64_t CGContentToneMappingInfo.ITURecommendedOptions.hash(into:)()
{
  sub_184390308();
  sub_184390308();
  sub_184390308();
  return sub_184390308();
}

uint64_t CGContentToneMappingInfo.ITURecommendedOptions.hashValue.getter()
{
  sub_1843902E8();
  sub_184390308();
  sub_184390308();
  sub_184390308();
  sub_184390308();
  return sub_184390348();
}

uint64_t sub_183F86A0C()
{
  sub_1843902E8();
  sub_184390308();
  sub_184390308();
  sub_184390308();
  sub_184390308();
  return sub_184390348();
}

CoreGraphics::CGContentToneMappingInfo::EXRGammaOptions __swiftcall CGContentToneMappingInfo.EXRGammaOptions.init()()
{
  v1 = 0.0;
  *v0 = xmmword_184398950;
  result.defog = v1;
  return result;
}

uint64_t CGContentToneMappingInfo.EXRGammaOptions.hash(into:)()
{
  sub_184390318();
  sub_184390318();
  sub_184390318();
  return sub_184390318();
}

uint64_t CGContentToneMappingInfo.EXRGammaOptions.hashValue.getter()
{
  sub_1843902E8();
  CGContentToneMappingInfo.EXRGammaOptions.hash(into:)();
  return sub_184390348();
}

uint64_t sub_183F86C34()
{
  sub_1843902E8();
  CGContentToneMappingInfo.EXRGammaOptions.hash(into:)();
  return sub_184390348();
}

uint64_t sub_183F86C84()
{
  sub_1843902E8();
  CGContentToneMappingInfo.EXRGammaOptions.hash(into:)();
  return sub_184390348();
}

uint64_t CGContentToneMappingInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 20) >> 5;
  if (v3 <= 2)
  {
    v4 = *(v0 + 4) | (*(v0 + 20) << 32);
    *(&v6 + 1) = v4;
    *&v6 = v0[1];
    v5 = v6 >> 32;
    if (v3)
    {
      if (v3 == 1)
      {
        MEMORY[0x1865ECC10](1);
        if ((v2 & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_13:
        MEMORY[0x1865ECC10](1);
        MEMORY[0x1865ECC10](v1);
        if ((v4 & 0x100000000) != 0)
        {
LABEL_6:
          if (v5)
          {
            if (v5 == 1)
            {
              v7 = 1;
            }

            else
            {
              v7 = 2;
            }
          }

          else
          {
            v7 = 0;
          }

          return MEMORY[0x1865ECC10](v7);
        }

        goto LABEL_14;
      }

      MEMORY[0x1865ECC10](2);
      if (v2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      MEMORY[0x1865ECC10](0);
      if (v2)
      {
        goto LABEL_13;
      }
    }

LABEL_5:
    MEMORY[0x1865ECC10](0);
    sub_184390318();
    if ((v4 & 0x100000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    MEMORY[0x1865ECC10](3);
    sub_184390318();
    return sub_184390318();
  }

  if (v3 == 3)
  {
    MEMORY[0x1865ECC10](3);
    sub_184390308();
    sub_184390308();
    sub_184390308();
    return sub_184390308();
  }

  if (v3 == 4)
  {
    MEMORY[0x1865ECC10](4);
    sub_184390318();
    sub_184390318();
    sub_184390318();
    return sub_184390318();
  }

  v7 = 5;
  return MEMORY[0x1865ECC10](v7);
}

uint64_t CGContentToneMappingInfo.hashValue.getter()
{
  sub_1843902E8();
  CGContentToneMappingInfo.hash(into:)();
  return sub_184390348();
}

uint64_t sub_183F86EEC()
{
  sub_1843902E8();
  CGContentToneMappingInfo.hash(into:)();
  return sub_184390348();
}

uint64_t sub_183F86F4C()
{
  sub_1843902E8();
  CGContentToneMappingInfo.hash(into:)();
  return sub_184390348();
}

void sub_183F86FA4(unsigned int *a1@<X8>)
{
  v2 = *(v1 + 20) >> 5;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      *a1 = 3;
      return;
    }

    if (v2 != 4)
    {
      *a1 = 5;
      return;
    }

    v2 = 4;
    goto LABEL_11;
  }

  if (!v2)
  {
LABEL_11:
    *a1 = v2;
    return;
  }

  if (v2 == 1)
  {
    *a1 = 1;
  }

  else
  {
    *a1 = 2;
  }
}

uint64_t sub_183F87038()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 20);
  v4 = *(v0 + 4);
  v30 = MEMORY[0x1E69E7CC8];
  v5 = v3 >> 5;
  if (v3 >> 5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 != 4)
      {
        goto LABEL_35;
      }

      v10 = MEMORY[0x1E69E6448];
      if ((v1 & 0x7FFFFFFF) != 0)
      {
        v29 = MEMORY[0x1E69E6448];
        LODWORD(v28) = v1;
        swift_beginAccess();
        sub_183F8752C(&v28, @"kCGEXRToneMappingGammaDefog");
        swift_endAccess();
      }

      if ((v1 & 0x7FFFFFFF00000000) != 0)
      {
        v29 = v10;
        LODWORD(v28) = HIDWORD(v1);
        swift_beginAccess();
        sub_183F8752C(&v28, @"kCGEXRToneMappingGammaExposure");
        swift_endAccess();
      }

      if (*&v2 != 5.0)
      {
        v29 = v10;
        LODWORD(v28) = v2;
        swift_beginAccess();
        sub_183F8752C(&v28, @"kCGEXRToneMappingGammaKneeHigh");
        swift_endAccess();
      }

      if ((v2 & 0x7FFFFFFF00000000) == 0)
      {
        goto LABEL_35;
      }

      v11 = @"kCGEXRToneMappingGammaKneeLow";
      v29 = v10;
      LODWORD(v28) = HIDWORD(v2);
LABEL_34:
      swift_beginAccess();
      sub_183F8752C(&v28, v11);
      swift_endAccess();
      goto LABEL_35;
    }

    v17 = MEMORY[0x1E69E6370];
    if (v1)
    {
      if ((v1 & 0x100) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E6370];
      LOBYTE(v28) = 0;
      swift_beginAccess();
      sub_183F8752C(&v28, @"kCGSkipBoostToHDR");
      swift_endAccess();
      if ((v1 & 0x100) != 0)
      {
LABEL_24:
        if ((v1 & 0x10000) != 0)
        {
          goto LABEL_25;
        }

        goto LABEL_32;
      }
    }

    v29 = v17;
    LOBYTE(v28) = 0;
    swift_beginAccess();
    sub_183F8752C(&v28, @"kCGUse100nitsHLGOOTF");
    swift_endAccess();
    if ((v1 & 0x10000) != 0)
    {
LABEL_25:
      if ((v1 & 0x1000000) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_32:
    v29 = v17;
    LOBYTE(v28) = 0;
    swift_beginAccess();
    sub_183F8752C(&v28, @"kCGUseBT1886ForCoreVideoGamma");
    swift_endAccess();
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_35;
    }

LABEL_33:
    v11 = @"kCGUseLegacyHDREcosystem";
    v29 = v17;
    LOBYTE(v28) = 0;
    goto LABEL_34;
  }

  v6 = v4 & 0xFFFFFF00FFFFFFFFLL | (v3 << 32);
  *(&v8 + 1) = v6;
  *&v8 = v2;
  v7 = v8 >> 32;
  if (v2)
  {
    v9 = @"kCGContentAverageLightLevelNits";
    v29 = MEMORY[0x1E69E6530];
    *&v28 = v1;
LABEL_16:
    sub_183F89274(&v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v30;
    sub_183F88480(v27, v9, isUniquelyReferenced_nonNull_native);
    v30 = v24;
    goto LABEL_17;
  }

  if ((v1 & 0x7FFFFFFF) != 0)
  {
    v9 = @"kCGContentAverageLightLevel";
    v29 = MEMORY[0x1E69E6448];
    LODWORD(v28) = v1;
    goto LABEL_16;
  }

LABEL_17:
  if ((v6 & 0x100000000) != 0)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_35;
      }

      v15 = @"kCGPreferredDynamicRange";
      v16 = kCGDynamicRangeConstrained;
    }

    else
    {
      v15 = @"kCGPreferredDynamicRange";
      v16 = kCGDynamicRangeHigh;
    }

    v18 = *v16;
    type metadata accessor for CFString(0);
    v29 = v19;
    *&v28 = v18;
    sub_183F89274(&v28, v27);
    v20 = v18;
  }

  else
  {
    v13 = MEMORY[0x1E69E6448];
    v29 = MEMORY[0x1E69E6448];
    LODWORD(v28) = v7;
    sub_183F89274(&v28, v27);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v25 = v30;
    sub_183F88480(v27, @"kCGContentEDRStrength", v14);
    v30 = v25;
    v15 = @"kCGConstrainedDynamicRange";
    v29 = v13;
    LODWORD(v28) = HIDWORD(v7);
    sub_183F89274(&v28, v27);
  }

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v26 = v30;
  sub_183F88480(v27, v15, v21);
  v30 = v26;
LABEL_35:
  swift_beginAccess();
  if (*(v30 + 16))
  {
    type metadata accessor for CFString(0);
    sub_183F892E0(&qword_1EA8541E0, type metadata accessor for CFString);
    v22 = sub_18438FC18();
  }

  else
  {

    return 0;
  }

  return v22;
}

void sub_183F8752C(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_183F89274(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_183F88480(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_183F89328(a1);
    sub_183F87E54(a2, v6);

    sub_183F89328(v6);
  }
}

void sub_183F875C0(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v38 = 0;
      type metadata accessor for CFString(0);
      sub_183F892E0(&qword_1EA8541E0, type metadata accessor for CFString);
      sub_18438FC28();
    }
  }

  v10 = sub_183FCE330(MEMORY[0x1E69E7CC0]);
  if (a1 > 2)
  {
    if (a1 != 3)
    {
      if (a1 != 4)
      {
        goto LABEL_13;
      }

      if (*(v10 + 16) && (v16 = sub_183F87EF4(@"kCGEXRToneMappingGammaDefog"), (v17 & 1) != 0) && (sub_183F89284(*(v10 + 56) + 32 * v16, &v38), swift_dynamicCast()))
      {
        v18 = v37;
      }

      else
      {
        v18 = 0;
      }

      if (*(v10 + 16) && (v28 = sub_183F87EF4(@"kCGEXRToneMappingGammaExposure"), (v29 & 1) != 0) && (sub_183F89284(*(v10 + 56) + 32 * v28, &v38), swift_dynamicCast()))
      {
        v30 = v37 << 32;
      }

      else
      {
        v30 = 0;
      }

      if (*(v10 + 16) && (v31 = sub_183F87EF4(@"kCGEXRToneMappingGammaKneeHigh"), (v32 & 1) != 0) && (sub_183F89284(*(v10 + 56) + 32 * v31, &v38), swift_dynamicCast()))
      {
        v33 = v37;
      }

      else
      {
        v33 = 1084227584;
      }

      if (*(v10 + 16) && (v34 = sub_183F87EF4(@"kCGEXRToneMappingGammaKneeLow"), (v35 & 1) != 0))
      {
        sub_183F89284(*(v10 + 56) + 32 * v34, &v38);

        if (swift_dynamicCast())
        {
          v36 = v37 << 32;
LABEL_70:
          v6 = v30 | v18;
          v7 = v36 | v33;
          v9 = 0x8000000000;
          goto LABEL_71;
        }
      }

      else
      {
      }

      v36 = 0;
      goto LABEL_70;
    }

    if (*(v10 + 16) && (v12 = sub_183F87EF4(@"kCGSkipBoostToHDR"), (v13 & 1) != 0) && (sub_183F89284(*(v10 + 56) + 32 * v12, &v38), swift_dynamicCast()))
    {
      v14 = v37;
    }

    else
    {
      v14 = 1;
    }

    if (*(v10 + 16) && (v19 = sub_183F87EF4(@"kCGUse100nitsHLGOOTF"), (v20 & 1) != 0) && (sub_183F89284(*(v10 + 56) + 32 * v19, &v38), swift_dynamicCast()))
    {
      if (v37)
      {
        v21 = 256;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 256;
    }

    if (*(v10 + 16) && (v22 = sub_183F87EF4(@"kCGUseBT1886ForCoreVideoGamma"), (v23 & 1) != 0) && (sub_183F89284(*(v10 + 56) + 32 * v22, &v38), swift_dynamicCast()))
    {
      if (v37)
      {
        v24 = 0x10000;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0x10000;
    }

    if (*(v10 + 16) && (v25 = sub_183F87EF4(@"kCGUseLegacyHDREcosystem"), (v26 & 1) != 0))
    {
      sub_183F89284(*(v10 + 56) + 32 * v25, &v38);

      if (swift_dynamicCast())
      {
        v27 = 0x1000000;
        if (!v37)
        {
          v27 = 0;
        }

        goto LABEL_67;
      }
    }

    else
    {
    }

    v27 = 0x1000000;
LABEL_67:
    v7 = 0;
    v6 = v21 | v14 | v24 | v27;
    v9 = 0x6000000000;
    goto LABEL_71;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      sub_183F87B4C(v10, &v38);

      v6 = v38;
      v7 = v39 | (v40 << 32);
      v15 = 0x100000000;
      if (!v41)
      {
        v15 = 0;
      }

      v9 = v15 & 0xFFFFFFFF00000000 | HIDWORD(v40) | 0x2000000000;
    }

    else
    {
      if (a1 != 2)
      {
LABEL_13:
        v9 = 0xA000000000;

        v6 = 0;
        v7 = 0;
        goto LABEL_71;
      }

      sub_183F87B4C(v10, &v38);

      v6 = v38;
      v7 = v39 | (v40 << 32);
      v8 = 0x100000000;
      if (!v41)
      {
        v8 = 0;
      }

      v9 = v8 & 0xFFFFFFFF00000000 | HIDWORD(v40) | 0x4000000000;
    }
  }

  else
  {
    sub_183F87B4C(v10, &v38);

    v6 = v38;
    v7 = v39 | (v40 << 32);
    if (v41)
    {
      v11 = 0x100000000;
    }

    else
    {
      v11 = 0;
    }

    v9 = v11 & 0xFFFFFFFF00000000 | HIDWORD(v40);
  }

LABEL_71:
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9;
  *(a3 + 20) = BYTE4(v9);
}

unint64_t sub_183F87B4C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (!*(result + 16))
  {
    goto LABEL_9;
  }

  result = sub_183F87EF4(@"kCGContentAverageLightLevel");
  if (v4)
  {
    sub_183F89284(*(v2 + 56) + 32 * result, v19);
    result = swift_dynamicCast();
    if (result)
    {
      v5 = 0;
      v6 = v18;
      goto LABEL_10;
    }
  }

  if (*(v2 + 16) && (result = sub_183F87EF4(@"kCGContentAverageLightLevelNits"), (v7 & 1) != 0) && (sub_183F89284(*(v2 + 56) + 32 * result, v19), result = swift_dynamicCast(), (result & 1) != 0))
  {
    v6 = v18;
    v5 = 1;
  }

  else
  {
LABEL_9:
    v6 = 0;
    v5 = 0;
  }

LABEL_10:
  if (!*(v2 + 16))
  {
    goto LABEL_30;
  }

  result = sub_183F87EF4(@"kCGPreferredDynamicRange");
  if ((v8 & 1) == 0)
  {
    if (*(v2 + 16))
    {
      result = sub_183F87EF4(@"kCGContentEDRStrength");
      if (v13)
      {
        sub_183F89284(*(v2 + 56) + 32 * result, v19);
        result = swift_dynamicCast();
        v14 = result ^ 1;
        if (result)
        {
          v15 = *&v18;
        }

        else
        {
          v15 = 0.0;
        }

        if (!*(v2 + 16))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v14 = 1;
        v15 = 0.0;
        if (!*(v2 + 16))
        {
          goto LABEL_29;
        }
      }

      result = sub_183F87EF4(@"kCGConstrainedDynamicRange");
      if (v16)
      {
        sub_183F89284(*(v2 + 56) + 32 * result, v19);
        result = swift_dynamicCast();
        if (v14)
        {
          v15 = 1.0;
          if ((result & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else if (!result)
        {
LABEL_35:
          v17 = 0;
          goto LABEL_36;
        }

        v17 = v18 << 32;
LABEL_36:
        v12 = 0;
        v11 = v17 | LODWORD(v15);
        goto LABEL_31;
      }

LABEL_29:
      if (v14)
      {
        goto LABEL_30;
      }

      goto LABEL_35;
    }

LABEL_30:
    v12 = 1;
    v11 = 2;
    goto LABEL_31;
  }

  sub_183F89284(*(v2 + 56) + 32 * result, v19);
  __swift_project_boxed_opaque_existential_0(v19, v19[3]);
  v9 = sub_184390238();
  __swift_destroy_boxed_opaque_existential_0(v19);
  v10 = swift_unknownObjectRetain();
  if (CFEqual(v10, @"kCGDynamicRangeHigh"))
  {
    result = swift_unknownObjectRelease_n();
    v11 = 0;
    v12 = 1;
  }

  else
  {
    if (CFEqual(v9, @"kCGDynamicRangeConstrained"))
    {
      result = swift_unknownObjectRelease_n();
      v11 = 1;
    }

    else
    {
      CFEqual(v9, @"kCGDynamicRangeStandard");
      v11 = 2;
      result = swift_unknownObjectRelease_n();
    }

    v12 = 1;
  }

LABEL_31:
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 12) = v11;
  *(a2 + 20) = v12;
  return result;
}

double sub_183F87E54@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_183F87EF4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_183F88734();
      v9 = v11;
    }

    sub_183F89274((*(v9 + 56) + 32 * v7), a2);
    sub_183F88288(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_183F87EF4(uint64_t a1)
{
  sub_1843902E8();
  type metadata accessor for CFString(0);
  sub_183F892E0(&qword_1EA8544B0, type metadata accessor for CFString);
  sub_18438FBC8();
  v2 = sub_184390348();

  return sub_183F88628(a1, v2);
}

uint64_t sub_183F87FA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8544A8);
  result = sub_184390148();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_183F89274(v21, v31);
      }

      else
      {
        sub_183F89284(v21, v31);
        v22 = v20;
      }

      sub_1843902E8();
      type metadata accessor for CFString(0);
      sub_183F892E0(&qword_1EA8544B0, type metadata accessor for CFString);
      sub_18438FBC8();
      result = sub_184390348();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_183F89274(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_183F88288(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_184390088() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1843902E8();
      type metadata accessor for CFString(0);
      sub_183F892E0(&qword_1EA8544B0, type metadata accessor for CFString);
      v11 = v10;
      sub_18438FBC8();
      v12 = sub_184390348();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

_OWORD *sub_183F88480(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_183F87EF4(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_183F88734();
      v8 = v16;
      goto LABEL_8;
    }

    sub_183F87FA8(v13, a3 & 1);
    v8 = sub_183F87EF4(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_184390298();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_183F89274(a1, v19);
  }

  else
  {
    sub_183F885C0(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_183F885C0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_183F89274(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_183F88628(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_183F892E0(&qword_1EA8544B0, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_18438FBB8();

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

id sub_183F88734()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8544A8);
  v2 = *v0;
  v3 = sub_184390138();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_183F89284(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_183F89274(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t _s12CoreGraphics24CGContentToneMappingInfoO14DefaultOptionsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 12);
  v4 = *a2;
  v5 = *(a2 + 12);
  if (a1[1])
  {
    if (v2 == v4)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    if (v6 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (*&v2 == *&v4)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (*(a1 + 20))
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v5 == 1)
        {
          v8 = *(a2 + 20);
        }

        else
        {
          v8 = 0;
        }

        if (v8)
        {
          return 1;
        }
      }

      else
      {
        if (v5 > 1)
        {
          v13 = *(a2 + 20);
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          return 1;
        }
      }
    }

    else
    {
      if (v5)
      {
        LOBYTE(v12) = 0;
      }

      else
      {
        v12 = *(a2 + 20);
      }

      if (v12)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 20) & 1) == 0)
  {
    v10 = HIDWORD(v5);
    if (*&v3 == COERCE_FLOAT(*(a2 + 12)) && *(&v3 + 1) == *&v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s12CoreGraphics24CGContentToneMappingInfoO2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 4) | (*(a2 + 20) << 32);
  v7 = *(a1 + 20) >> 5;
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if ((v6 & 0xE000000000) != 0x2000000000)
        {
          return 0;
        }
      }

      else if ((v6 & 0xE000000000) != 0x4000000000)
      {
        return 0;
      }
    }

    else if (v6 >> 37)
    {
      return 0;
    }

    if (v2)
    {
      if ((v4 & (v3 == v5)) != 1)
      {
        return 0;
      }

      goto LABEL_36;
    }

    if (!(v4 & 1 | (*&v3 != *&v5)))
    {
LABEL_36:
      *(&v16 + 1) = *(a1 + 4) | (*(a1 + 20) << 32);
      *&v16 = a1[1];
      v15 = v16 >> 32;
      *(&v16 + 1) = *(a2 + 4) | (*(a2 + 20) << 32);
      *&v16 = a2[1];
      v17 = v16 >> 32;
      if (((*(a1 + 20) << 32) & 0x100000000) != 0)
      {
        if (v15)
        {
          if (v15 == 1)
          {
            if ((v6 & 0x100000000) == 0 || v17 != 1)
            {
              return 0;
            }
          }

          else if ((v6 & 0x100000000) == 0 || v17 < 2)
          {
            return 0;
          }
        }

        else if ((v6 & 0x100000000) == 0 || v17)
        {
          return 0;
        }
      }

      else
      {
        if ((v6 & 0x100000000) != 0)
        {
          return 0;
        }

        if (*&v15 != *&v17 || *(&v15 + 1) != *(&v17 + 1))
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  if (v7 == 3)
  {
    if ((v6 & 0xE000000000) == 0x6000000000)
    {
      return (((*a2 & 0x100) == 0) ^ (v3 >> 8)) & ~(*a2 ^ v3) & (((*a2 & 0x10000) == 0) ^ WORD1(v3)) & ((v3 >> 24) & 1 ^ ((*a2 & 0x1000000) == 0));
    }

    return 0;
  }

  if (v7 != 4)
  {
    v12 = v4 | v5;
    return (v6 & 0xE000000000) == 0xA000000000 && v12 == 0 && v6 == 0xA000000000;
  }

  if ((v6 & 0xE000000000) != 0x8000000000)
  {
    return 0;
  }

  v9 = *(&v3 + 1) == *(&v5 + 1) && *&v3 == *&v5;
  v10 = v9 && *&v2 == *&v4;
  if (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(a2[1])))
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_183F88C04()
{
  result = qword_1EA854470;
  if (!qword_1EA854470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854470);
  }

  return result;
}

unint64_t sub_183F88C5C()
{
  result = qword_1EA854478;
  if (!qword_1EA854478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854478);
  }

  return result;
}

unint64_t sub_183F88CB4()
{
  result = qword_1EA854480;
  if (!qword_1EA854480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854480);
  }

  return result;
}

unint64_t sub_183F88D0C()
{
  result = qword_1EA854488;
  if (!qword_1EA854488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854488);
  }

  return result;
}

unint64_t sub_183F88D64()
{
  result = qword_1EA854490;
  if (!qword_1EA854490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854490);
  }

  return result;
}

unint64_t sub_183F88DBC()
{
  result = qword_1EA854498;
  if (!qword_1EA854498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854498);
  }

  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CGContentToneMappingInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 21))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 20) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 20) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CGContentToneMappingInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 20) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_183F88F1C(uint64_t a1)
{
  v1 = *(a1 + 20) >> 5;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_183F88F38(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = a1 + 16;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x1F;
  return result;
}

uint64_t sub_183F88F54(uint64_t result, uint64_t a2)
{
  if (a2 < 5)
  {
    v2 = *(result + 16);
    result += 16;
    v3 = (v2 | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 37);
    *result = v2;
    *(result + 4) = BYTE4(v3);
  }

  else
  {
    *result = (a2 - 5);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 20) = -96;
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

uint64_t getEnumTagSinglePayload for CGContentToneMappingInfo.LightLevel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CGContentToneMappingInfo.LightLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CGContentToneMappingInfo.DynamicRange(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CGContentToneMappingInfo.DynamicRange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_183F890C8(uint64_t a1)
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

uint64_t sub_183F890E4(uint64_t result, int a2)
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

uint64_t getEnumTagSinglePayload for CGContentToneMappingInfo.DefaultOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 21))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CGContentToneMappingInfo.DefaultOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CGContentToneMappingInfo.ITURecommendedOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CGContentToneMappingInfo.ITURecommendedOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_OWORD *sub_183F89274(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_183F89284(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_183F892E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_183F89328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8544B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_183F893A4()
{
  result = qword_1EA8544C0[0];
  if (!qword_1EA8544C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA8544C0);
  }

  return result;
}

uint64_t sub_183F893F8(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1865ECC40](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x1865ECC40](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x1865ECC40](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x1865ECC40](*&v9);
}

uint64_t sub_183F8948C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1843902E8();
  sub_183F893F8(v1, v2, v3, v4);
  return sub_184390348();
}

uint64_t sub_183F89500()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1843902E8();
  sub_183F893F8(v1, v2, v3, v4);
  return sub_184390348();
}

uint64_t sub_183F89564(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 == a5 && a2 == a6 && a3 == a7 && a4 == a8)
  {
    return 1;
  }

  if ((~*&a1 & 0x7FF0000000000000) != 0)
  {
    return 0;
  }

  v11 = (~*&a5 & 0x7FF0000000000000) == 0 && (*&a5 & 0xFFFFFFFFFFFFFLL) != 0;
  return (*&a1 & 0xFFFFFFFFFFFFFLL) != 0 && v11;
}

uint64_t sub_183F895BC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_183F89650(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(*(a3[2] - 8) + 64);
  v4 = *(a3[3] - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = *(*(a3[4] - 8) + 64);
  if (v5 <= v3)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_183F89798(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(a4[2] - 8) + 64);
  if (*(*(a4[3] - 8) + 64) > v5)
  {
    v5 = *(*(a4[3] - 8) + 64);
  }

  v6 = *(a4[4] - 8);
  if (*(v6 + 64) > v5)
  {
    v5 = *(v6 + 64);
  }

  v7 = v5 + 1;
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 253) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v7 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v5 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_41:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_26;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_183F899EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v47 = a1[4];
  v48 = a2;
  v45 = *(v47 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1, a3);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v43 - v8;
  v10 = *(v7 + 24);
  v43 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v7, v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v43 - v17;
  v19 = *(v16 + 16);
  v20 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v16, v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v43 - v27;
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v46 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v43;
      (*(v43 + 32))(v18, v31, v10);
      (*(v34 + 16))(v14, v18, v10);
      v35 = a1[6];
      sub_18438FD38();
      (*(v34 + 8))(v18, v10);
      v36 = a1[5];
      v37 = a1[7];
      v49 = v19;
      v50 = v10;
      v51 = v47;
      *v52 = v36;
      *&v52[8] = v35;
      *&v52[16] = v37;
    }

    else
    {
      v39 = v45;
      v40 = v47;
      (*(v45 + 32))(v9, v31, v47);
      (*(v39 + 16))(v44, v9, v40);
      v41 = a1[7];
      sub_18438FD38();
      (*(v39 + 8))(v9, v40);
      v49 = v19;
      v50 = v10;
      v51 = v40;
      *v52 = *(a1 + 5);
      *&v52[16] = v41;
    }
  }

  else
  {
    (*(v20 + 32))(v28, v31, v19);
    (*(v20 + 16))(v24, v28, v19);
    v38 = a1[5];
    sub_18438FD38();
    (*(v20 + 8))(v28, v19);
    v49 = v19;
    v50 = v10;
    v51 = v47;
    *v52 = v38;
    *&v52[8] = *(a1 + 3);
  }

  type metadata accessor for EitherSequence.Iterator();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_183F89E58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v5 = a1[7];
  v35 = a1[4];
  v36 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v33 = v31 - v7;
  v8 = a1[6];
  v31[0] = a1[3];
  v31[1] = v8;
  v9 = swift_getAssociatedTypeWitness();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v31 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v31 - v17;
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 + 32);
  v39 = v3;
  v23(v21, v3, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *(v32 + 32);
      v25(v12, v21, v9);
      swift_getAssociatedConformanceWitness();
      sub_18438FF58();
      v25(v39, v12, v9);
    }

    else
    {
      v27 = v33;
      v28 = *(v34 + 32);
      v29 = AssociatedTypeWitness;
      v28(v33, v21, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      sub_18438FF58();
      v28(v39, v27, v29);
    }
  }

  else
  {
    v26 = *(v14 + 32);
    v26(v18, v21, v13);
    swift_getAssociatedConformanceWitness();
    sub_18438FF58();
    v26(v39, v18, v13);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_183F8A2CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  sub_183F899EC(a1, a2, a3);
  v5 = *(*(a1 - 1) + 8);

  return v5(v3, a1);
}

uint64_t sub_183F8A338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>, __n128 a7@<Q0>)
{
  v36 = a5;
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v40 = a6;
  v8 = *(a1 + 32);
  v35 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 24);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v9, v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 16);
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v15, v20);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v28, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v32 = v35;
      (*(v35 + 32))(v11, v26, v8);
      v33 = v39;
      v36(v8, v39);
      (*(v32 + 8))(v11, v8);
      v41 = v18;
      v42 = v12;
      v43 = v8;
      v44 = v37;
      v45 = v38;
      v46 = v33;
      goto LABEL_7;
    }

    (*(v13 + 32))(v17, v26, v12);
    v30 = v38;
    v36(v12, v38);
    (*(v13 + 8))(v17, v12);
    v41 = v18;
    v42 = v12;
    v43 = v8;
    v44 = v37;
    v45 = v30;
  }

  else
  {
    (*(v19 + 32))(v23, v26, v18);
    v31 = v37;
    v36(v18, v37);
    (*(v19 + 8))(v23, v18);
    v41 = v18;
    v42 = v12;
    v43 = v8;
    v44 = v31;
    v45 = v38;
  }

  v46 = v39;
LABEL_7:
  _s5IndexOMa();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_183F8A6EC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v100 = a6;
  v101 = a1;
  v10 = a2[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  v94 = AssociatedTypeWitness;
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v91 = &v77 - v14;
  v92 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v89 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[3];
  v87 = swift_getAssociatedTypeWitness();
  v86 = *(v87 - 8);
  v19 = MEMORY[0x1EEE9AC00](v87, v18);
  v84 = &v77 - v20;
  v85 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v83 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2[2];
  v81 = swift_getAssociatedTypeWitness();
  v80 = *(v81 - 8);
  v25 = MEMORY[0x1EEE9AC00](v81, v24);
  v79 = &v77 - v26;
  v82 = *(v23 - 8);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v77 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a2 - 1);
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v78 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v37 = &v77 - v36;
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v77 - v39;
  v102 = v23;
  v103 = v17;
  v90 = v17;
  v96 = a5;
  v97 = v10;
  v104 = v10;
  v105 = a3;
  v88 = a3;
  v95 = a4;
  v106 = a4;
  v107 = a5;
  v41 = _s5IndexOMa();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v43);
  v46 = &v77 - v45;
  v47 = *(v44 + 56);
  v99 = v30;
  v48 = *(v30 + 16);
  v48(&v77 - v45, v98, a2);
  (*(*(v41 - 8) + 16))(&v46[v47], v101, v41);
  v101 = a2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    LODWORD(v98) = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 1)
    {
      v48(v37, v46, v101);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v50 = v85;
        v51 = v83;
        v52 = v37;
        v53 = v90;
        (*(v85 + 32))(v83, v52, v90);
        v54 = v86;
        v55 = v84;
        v56 = v87;
        (*(v86 + 32))(v84, &v46[v47], v87);
        sub_18438FE18();
        (*(v54 + 8))(v55, v56);
        (*(v50 + 8))(v51, v53);
        v57 = v99;
LABEL_7:
        v66 = v101;
LABEL_10:
        swift_storeEnumTagMultiPayload();
        return (*(v57 + 8))(v46, v66);
      }

      v82 = v85;
      v75 = v90;
    }

    else
    {
      v37 = v78;
      v48(v78, v46, v101);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v67 = v92;
        v68 = v89;
        v69 = v37;
        v70 = v97;
        (*(v92 + 32))(v89, v69, v97);
        v72 = v93;
        v71 = v94;
        v73 = v91;
        (*(v93 + 32))(v91, &v46[v47], v94);
        sub_18438FE18();
        (*(v72 + 8))(v73, v71);
        (*(v67 + 8))(v68, v70);
        v57 = v99;
        v66 = v101;
        goto LABEL_10;
      }

      v82 = v92;
      v75 = v97;
    }

    v96 = v75;
    v76 = v37;
  }

  else
  {
    v96 = v23;
    v58 = v77;
    v59 = v79;
    v60 = v80;
    v48(v40, v46, v101);
    v97 = v41;
    if (!swift_getEnumCaseMultiPayload())
    {
      v61 = v82;
      v62 = v96;
      (*(v82 + 32))(v58, v40, v96);
      v63 = v59;
      v64 = v59;
      v65 = v81;
      (*(v60 + 32))(v64, &v46[v47], v81);
      sub_18438FE18();
      (*(v60 + 8))(v63, v65);
      (*(v61 + 8))(v58, v62);
      v57 = v99;
      goto LABEL_7;
    }

    v76 = v40;
  }

  (*(v82 + 8))(v76, v96);
  result = sub_184390118();
  __break(1u);
  return result;
}

uint64_t sub_183F8AFB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v102 = a2;
  v103 = a7;
  v104 = a1;
  v11 = a3[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  v96 = AssociatedTypeWitness;
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v93 = &v78 - v15;
  v94 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v91 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3[3];
  v89 = swift_getAssociatedTypeWitness();
  v88 = *(v89 - 8);
  v20 = MEMORY[0x1EEE9AC00](v89, v19);
  v86 = &v78 - v21;
  v87 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v85 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a3[2];
  v83 = swift_getAssociatedTypeWitness();
  v82 = *(v83 - 8);
  v26 = MEMORY[0x1EEE9AC00](v83, v25);
  v81 = &v78 - v27;
  v84 = *(v24 - 8);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v79 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a3 - 1);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v80 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v38 = &v78 - v37;
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v78 - v40;
  v105 = v24;
  v106 = v18;
  v92 = v18;
  v98 = a6;
  v99 = v11;
  v107 = v11;
  v108 = a4;
  v90 = a4;
  v97 = a5;
  v109 = a5;
  v110 = a6;
  v42 = _s5IndexOMa();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v44);
  v47 = &v78 - v46;
  v48 = *(v45 + 56);
  v101 = v31;
  v49 = *(v31 + 16);
  v49(&v78 - v46, v100, a3);
  (*(*(v42 - 8) + 16))(&v47[v48], v104, v42);
  v104 = a3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    LODWORD(v100) = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 1)
    {
      v49(v38, v47, v104);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v51 = v87;
        v52 = v85;
        v53 = v38;
        v54 = v92;
        (*(v87 + 32))(v85, v53, v92);
        v55 = v88;
        v56 = v86;
        v57 = v89;
        (*(v88 + 32))(v86, &v47[v48], v89);
        sub_18438FE28();
        (*(v55 + 8))(v56, v57);
        (*(v51 + 8))(v52, v54);
        v58 = v101;
LABEL_7:
        v67 = v104;
LABEL_10:
        swift_storeEnumTagMultiPayload();
        return (*(v58 + 8))(v47, v67);
      }

      v84 = v87;
      v76 = v92;
    }

    else
    {
      v38 = v80;
      v49(v80, v47, v104);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v68 = v94;
        v69 = v91;
        v70 = v38;
        v71 = v99;
        (*(v94 + 32))(v91, v70, v99);
        v73 = v95;
        v72 = v96;
        v74 = v93;
        (*(v95 + 32))(v93, &v47[v48], v96);
        sub_18438FE28();
        (*(v73 + 8))(v74, v72);
        (*(v68 + 8))(v69, v71);
        v58 = v101;
        v67 = v104;
        goto LABEL_10;
      }

      v84 = v94;
      v76 = v99;
    }

    v98 = v76;
    v77 = v38;
  }

  else
  {
    v98 = v24;
    v59 = v79;
    v60 = v81;
    v61 = v82;
    v49(v41, v47, v104);
    v99 = v42;
    if (!swift_getEnumCaseMultiPayload())
    {
      v62 = v84;
      v63 = v98;
      (*(v84 + 32))(v59, v41, v98);
      v64 = v60;
      v65 = v60;
      v66 = v83;
      (*(v61 + 32))(v65, &v47[v48], v83);
      sub_18438FE28();
      (*(v61 + 8))(v64, v66);
      (*(v62 + 8))(v59, v63);
      v58 = v101;
      goto LABEL_7;
    }

    v77 = v41;
  }

  (*(v84 + 8))(v77, v98);
  result = sub_184390118();
  __break(1u);
  return result;
}

uint64_t sub_183F8B888(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v142 = a1;
  v143 = a2;
  v10 = a3[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v131 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v129 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v128 = &v113 - v16;
  v130 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v139 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3[3];
  v127 = swift_getAssociatedTypeWitness();
  v126 = *(v127 - 8);
  v21 = MEMORY[0x1EEE9AC00](v127, v20);
  v123 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v122 = &v113 - v25;
  v125 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v138 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a3[2];
  v117 = swift_getAssociatedTypeWitness();
  v120 = *(v117 - 8);
  v30 = MEMORY[0x1EEE9AC00](v117, v29);
  v119 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v118 = &v113 - v34;
  v121 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v135 = &v113 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v28;
  v148 = v28;
  v149 = v19;
  v140 = v19;
  v141 = v10;
  v150 = v10;
  v151 = a4;
  v124 = a4;
  v132 = a5;
  v152 = a5;
  v153 = a6;
  v133 = a6;
  v37 = _s5IndexOMa();
  v38 = *(v37 - 8);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v116 = &v113 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v115 = &v113 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v137 = &v113 - v47;
  v48 = *(a3 - 1);
  v50 = MEMORY[0x1EEE9AC00](v46, v49);
  v114 = &v113 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v113 = &v113 - v54;
  MEMORY[0x1EEE9AC00](v53, v55);
  v57 = &v113 - v56;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v60 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3 - 8, v59);
  v62 = &v113 - v61;
  v63 = *(v60 + 56);
  v64 = *(v60 + 72);
  v144 = v48;
  v65 = *(v48 + 16);
  v65(&v113 - v61, v145, a3);
  v145 = v38;
  v146 = v63;
  v66 = *(v38 + 16);
  v67 = &v62[v63];
  v68 = v64;
  v66(v67, v142, v37);
  v66(&v64[v62], v143, v37);
  v147 = a3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v70 = v113;
      v65(v113, v62, v147);
      v71 = v146;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v72 = v115;
        v66(v115, &v62[v71], v37);
        v73 = swift_getEnumCaseMultiPayload();
        v143 = v68;
        if (v73 == 1)
        {
          v74 = v125;
          (*(v125 + 32))(v138, v70, v140);
          v75 = v126;
          v76 = *(v126 + 32);
          v77 = v122;
          v78 = v127;
          v76(v122, v72, v127);
          v79 = v123;
          v76(v123, &v143[v62], v78);
          v80 = v140;
          v81 = sub_18438FE38();
          v82 = *(v75 + 8);
          v82(v79, v78);
          v82(v77, v78);
          (*(v74 + 8))(v138, v80);
LABEL_12:
          v108 = v144;
          v109 = v147;
          (*(v145 + 8))(&v62[v146], v37);
          (*(v108 + 8))(v62, v109);
          return v81;
        }

        v120 = v126;
        v117 = v127;
        v137 = v72;
        v121 = v125;
        v112 = v140;
        goto LABEL_18;
      }

      v121 = v125;
      v111 = v140;
    }

    else
    {
      v70 = v114;
      v65(v114, v62, v147);
      v96 = v146;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v97 = v116;
        v66(v116, &v62[v96], v37);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v98 = v130;
          (*(v130 + 32))(v139, v70, v141);
          v99 = v131;
          v100 = *(v131 + 32);
          v101 = v128;
          v102 = v97;
          v103 = AssociatedTypeWitness;
          v100(v128, v102, AssociatedTypeWitness);
          v104 = &v68[v62];
          v105 = v129;
          v100(v129, v104, v103);
          v106 = v141;
          v81 = sub_18438FE38();
          v107 = *(v99 + 8);
          v107(v105, v103);
          v107(v101, v103);
          (*(v98 + 8))(v139, v106);
          goto LABEL_12;
        }

        v120 = v131;
        v117 = AssociatedTypeWitness;
        v137 = v97;
        v121 = v130;
        v112 = v141;
LABEL_18:
        v136 = v112;
        v143 = v70;
LABEL_19:
        (*(v120 + 8))(v137, v117);
        goto LABEL_20;
      }

      v121 = v130;
      v111 = v141;
    }

    v136 = v111;
    v143 = v70;
  }

  else
  {
    v83 = v135;
    v143 = v57;
    v65(v57, v62, v147);
    v84 = v146;
    if (!swift_getEnumCaseMultiPayload())
    {
      v66(v137, &v62[v84], v37);
      v85 = v64;
      v86 = swift_getEnumCaseMultiPayload();
      v87 = v121;
      v88 = v117;
      if (!v86)
      {
        (*(v121 + 32))(v83, v143, v136);
        v89 = v120;
        v90 = *(v120 + 32);
        v91 = v118;
        v90(v118, v137, v88);
        v92 = &v85[v62];
        v93 = v119;
        v90(v119, v92, v88);
        v94 = v136;
        v81 = sub_18438FE38();
        v95 = *(v89 + 8);
        v95(v93, v88);
        v95(v91, v88);
        (*(v87 + 8))(v135, v94);
        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

LABEL_20:
  (*(v121 + 8))(v143, v136);
  result = sub_184390118();
  __break(1u);
  return result;
}

uint64_t sub_183F8C490@<X0>(void (*a1)(void *, void)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v110 = a1;
  v114 = a6;
  v10 = a2[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v106 = *(AssociatedTypeWitness - 8);
  v107 = AssociatedTypeWitness;
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v104 = &v88 - v14;
  v105 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v100 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[3];
  v99 = swift_getAssociatedTypeWitness();
  v98 = *(v99 - 8);
  v19 = MEMORY[0x1EEE9AC00](v99, v18);
  v96 = &v88 - v20;
  v97 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v95 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2[2];
  v93 = swift_getAssociatedTypeWitness();
  v92 = *(v93 - 8);
  v25 = MEMORY[0x1EEE9AC00](v93, v24);
  v91 = &v88 - v26;
  v94 = *(v23 - 8);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v89 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a2 - 1);
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v90 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v37 = &v88 - v36;
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v88 - v39;
  v111 = v23;
  v115[0] = v23;
  v115[1] = v17;
  v101 = v17;
  v102 = a4;
  v41 = a2;
  v108 = v10;
  v115[2] = v10;
  v115[3] = a3;
  v113 = a3;
  v115[4] = a4;
  v115[5] = a5;
  v103 = a5;
  v42 = _s5IndexOMa();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v44);
  v47 = &v88 - v46;
  v48 = *(v45 + 56);
  v112 = v30;
  v49 = *(v30 + 16);
  v49(&v88 - v46, v109, a2);
  (*(*(v42 - 8) + 16))(&v47[v48], v110, v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v64 = v89;
    v65 = v91;
    v66 = v92;
    v49(v40, v47, v41);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_13;
    }

    v67 = v94;
    v68 = v64;
    v69 = v40;
    v70 = v111;
    (*(v94 + 32))(v64, v69, v111);
    v71 = &v47[v48];
    v72 = v93;
    (*(v66 + 32))(v65, v71, v93);
    v110 = sub_18438FEE8();
    v74 = v73;
    v75 = swift_getAssociatedTypeWitness();
    (*(*(v75 - 8) + 16))(v114, v74, v75);
    v110(v115, 0);
    (*(v66 + 8))(v65, v72);
    (*(v67 + 8))(v68, v70);
LABEL_9:
    v63 = v112;
    return (*(v63 + 8))(v47, v41);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v40 = v90;
    v49(v90, v47, a2);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v94 = v105;
      v111 = v108;
      goto LABEL_13;
    }

    v76 = v105;
    v77 = v100;
    v78 = v108;
    (*(v105 + 32))(v100, v40, v108);
    v80 = v106;
    v79 = v107;
    v81 = &v47[v48];
    v82 = v104;
    (*(v106 + 32))(v104, v81, v107);
    v83 = sub_18438FEE8();
    v85 = v84;
    v86 = swift_getAssociatedTypeWitness();
    (*(*(v86 - 8) + 16))(v114, v85, v86);
    v83(v115, 0);
    (*(v80 + 8))(v82, v79);
    (*(v76 + 8))(v77, v78);
    goto LABEL_9;
  }

  v51 = a2;
  v49(v37, v47, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = v97;
    v53 = v95;
    v54 = v101;
    (*(v97 + 32))(v95, v37, v101);
    v55 = v98;
    v56 = &v47[v48];
    v57 = v96;
    v58 = v99;
    (*(v98 + 32))(v96, v56, v99);
    v59 = sub_18438FEE8();
    v61 = v60;
    v62 = swift_getAssociatedTypeWitness();
    (*(*(v62 - 8) + 16))(v114, v61, v62);
    v59(v115, 0);
    (*(v55 + 8))(v57, v58);
    (*(v52 + 8))(v53, v54);
    v63 = v112;
    v41 = v51;
    return (*(v63 + 8))(v47, v41);
  }

  v94 = v97;
  v111 = v101;
  v40 = v37;
LABEL_13:
  (*(v94 + 8))(v40, v111);
  result = sub_184390118();
  __break(1u);
  return result;
}

uint64_t sub_183F8CE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v88 = a1;
  v89 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = *(AssociatedTypeWitness - 8);
  v87 = AssociatedTypeWitness;
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v15);
  v80 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v79 = &v72 - v19;
  v73 = swift_getAssociatedTypeWitness();
  v78 = *(v73 - 8);
  v21 = MEMORY[0x1EEE9AC00](v73, v20);
  v75 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v74 = &v72 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v76 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v72 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v72 - v30;
  v81 = a3;
  v82 = a4;
  v91 = a3;
  v92 = a4;
  v83 = a5;
  v84 = a7;
  v93 = a5;
  v94 = a6;
  v77 = a6;
  v95 = a7;
  v96 = a8;
  v85 = a8;
  v32 = _s5IndexOMa();
  v33 = *(v32 - 8);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v37 = &v72 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  v41 = &v72 - v40;
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = &v72 - v43;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v46);
  v49 = &v72 - v48;
  v50 = *(v47 + 56);
  v90 = v33;
  v51 = *(v33 + 16);
  v51(&v72 - v48, v88, v32);
  v51(&v49[v50], v89, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v51(v41, v49, v32);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v53 = v78;
        v54 = *(v78 + 32);
        v55 = v74;
        v56 = v73;
        v54(v74, v41, v73);
        v57 = v75;
        v54(v75, &v49[v50], v56);
        swift_getAssociatedConformanceWitness();
        v58 = sub_18438FCC8();
        v59 = *(v53 + 8);
        v59(v57, v56);
        v59(v55, v56);
LABEL_9:
        (*(v90 + 8))(v49, v32);
        return v58 & 1;
      }

      v76 = v78;
      v25 = v73;
      v44 = v41;
    }

    else
    {
      v51(v37, v49, v32);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v64 = v86;
        v65 = *(v86 + 32);
        v66 = v79;
        v67 = v37;
        v68 = v87;
        v65(v79, v67, v87);
        v69 = v80;
        v65(v80, &v49[v50], v68);
        swift_getAssociatedConformanceWitness();
        v58 = sub_18438FCC8();
        v70 = *(v64 + 8);
        v70(v69, v68);
        v70(v66, v68);
        goto LABEL_9;
      }

      v25 = v87;
      v76 = v86;
      v44 = v37;
    }
  }

  else
  {
    v51(v44, v49, v32);
    if (!swift_getEnumCaseMultiPayload())
    {
      v60 = v76;
      v61 = *(v76 + 32);
      v61(v31, v44, v25);
      v62 = v72;
      v61(v72, &v49[v50], v25);
      swift_getAssociatedConformanceWitness();
      v58 = sub_18438FCC8();
      v63 = *(v60 + 8);
      v63(v62, v25);
      v63(v31, v25);
      goto LABEL_9;
    }
  }

  (*(v76 + 8))(v44, v25);
  result = sub_184390118();
  __break(1u);
  return result;
}

uint64_t sub_183F8D5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v88 = a1;
  v89 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = *(AssociatedTypeWitness - 8);
  v87 = AssociatedTypeWitness;
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v15);
  v80 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v79 = &v72 - v19;
  v73 = swift_getAssociatedTypeWitness();
  v78 = *(v73 - 8);
  v21 = MEMORY[0x1EEE9AC00](v73, v20);
  v75 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v74 = &v72 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v76 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v72 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v72 - v30;
  v81 = a3;
  v82 = a4;
  v91 = a3;
  v92 = a4;
  v83 = a5;
  v84 = a7;
  v93 = a5;
  v94 = a6;
  v77 = a6;
  v95 = a7;
  v96 = a8;
  v85 = a8;
  v32 = _s5IndexOMa();
  v33 = *(v32 - 8);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v37 = &v72 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v35, v38);
  v41 = &v72 - v40;
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = &v72 - v43;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v46);
  v49 = &v72 - v48;
  v50 = *(v47 + 56);
  v90 = v33;
  v51 = *(v33 + 16);
  v51(&v72 - v48, v88, v32);
  v51(&v49[v50], v89, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v51(v41, v49, v32);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v53 = v78;
        v54 = *(v78 + 32);
        v55 = v74;
        v56 = v73;
        v54(v74, v41, v73);
        v57 = v75;
        v54(v75, &v49[v50], v56);
        swift_getAssociatedConformanceWitness();
        v58 = sub_18438FC68();
        v59 = *(v53 + 8);
        v59(v57, v56);
        v59(v55, v56);
LABEL_9:
        (*(v90 + 8))(v49, v32);
        return v58 & 1;
      }

      v76 = v78;
      v25 = v73;
      v44 = v41;
    }

    else
    {
      v51(v37, v49, v32);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v64 = v86;
        v65 = *(v86 + 32);
        v66 = v79;
        v67 = v37;
        v68 = v87;
        v65(v79, v67, v87);
        v69 = v80;
        v65(v80, &v49[v50], v68);
        swift_getAssociatedConformanceWitness();
        v58 = sub_18438FC68();
        v70 = *(v64 + 8);
        v70(v69, v68);
        v70(v66, v68);
        goto LABEL_9;
      }

      v25 = v87;
      v76 = v86;
      v44 = v37;
    }
  }

  else
  {
    v51(v44, v49, v32);
    if (!swift_getEnumCaseMultiPayload())
    {
      v60 = v76;
      v61 = *(v76 + 32);
      v61(v31, v44, v25);
      v62 = v72;
      v61(v72, &v49[v50], v25);
      swift_getAssociatedConformanceWitness();
      v58 = sub_18438FC68();
      v63 = *(v60 + 8);
      v63(v62, v25);
      v63(v31, v25);
      goto LABEL_9;
    }
  }

  (*(v76 + 8))(v44, v25);
  result = sub_184390118();
  __break(1u);
  return result;
}

void (*sub_183F8DDE0(uint64_t **a1, void (*a2)(void *, void), void *a3, uint64_t a4))(void *a1)
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
  v8[4] = sub_183F8DE74(v8, a2, a3, *(a4 - 8), *(a4 - 16), *(a4 - 24));
  return sub_183F840C4;
}

void (*sub_183F8DE74(uint64_t *a1, void (*a2)(void *, void), void *a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  a1[1] = v13;
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  a1[2] = v14;
  sub_183F8C490(a2, a3, a4, a5, a6, v14);
  return sub_183F84210;
}

uint64_t sub_183F8DF80@<X0>(uint64_t a1@<X8>)
{
  _s5IndexOMa();
  v2 = sub_18438FF18();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t sub_183F8E054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 16);
  v5 = *(a3 - 8);
  v7 = *(a3 - 24);
  v8 = *(a2 + 32);
  v15 = *(a2 + 16);
  v16 = v8;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v9 = _s5IndexOMa();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v15 - v12);
  (*(v10 + 32))(&v15 - v12, a1, v9);
  sub_183F8A6EC(v13, a2, v5, v6, v7, a1);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_183F8E188@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v97 = a6;
  v98 = a1;
  v93 = a5;
  v96 = *(a5 + 8);
  v9 = a2[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = *(AssociatedTypeWitness - 8);
  v91 = AssociatedTypeWitness;
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v88 = &v74 - v13;
  v89 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v86 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a4;
  v16 = *(a4 + 8);
  v17 = a2[3];
  v84 = swift_getAssociatedTypeWitness();
  v83 = *(v84 - 8);
  v19 = MEMORY[0x1EEE9AC00](v84, v18);
  v81 = &v74 - v20;
  v82 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v80 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a3;
  v23 = *(a3 + 8);
  v24 = a2[2];
  v78 = swift_getAssociatedTypeWitness();
  v77 = *(v78 - 8);
  v26 = MEMORY[0x1EEE9AC00](v78, v25);
  v76 = &v74 - v27;
  v79 = *(v24 - 8);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v75 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a2 - 1);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v35 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v33, v36);
  v39 = &v74 - v38;
  MEMORY[0x1EEE9AC00](v37, v40);
  v42 = &v74 - v41;
  v99 = v24;
  v100 = v17;
  v87 = v17;
  v94 = v9;
  v101 = v9;
  v102 = v23;
  v103 = v16;
  v104 = v96;
  v43 = _s5IndexOMa();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v45);
  v48 = &v74 - v47;
  v49 = *(v46 + 56);
  v96 = v31;
  v50 = *(v31 + 16);
  v50(&v74 - v47, v95, a2);
  (*(*(v43 - 8) + 16))(&v48[v49], v98, v43);
  v98 = a2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    LODWORD(v95) = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 1)
    {
      v50(v39, v48, v98);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v52 = v82;
        v53 = v80;
        v54 = v87;
        (*(v82 + 32))(v80, v39, v87);
        v55 = v83;
        v56 = v81;
        v57 = v84;
        (*(v83 + 32))(v81, &v48[v49], v84);
        sub_18438FC38();
        (*(v55 + 8))(v56, v57);
        (*(v52 + 8))(v53, v54);
        v58 = v96;
LABEL_7:
        v65 = v98;
LABEL_10:
        swift_storeEnumTagMultiPayload();
        return (*(v58 + 8))(v48, v65);
      }

      v79 = v82;
      v94 = v87;
      v42 = v39;
    }

    else
    {
      v50(v35, v48, v98);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v66 = v89;
        v67 = v86;
        v68 = v35;
        v69 = v94;
        (*(v89 + 32))(v86, v68, v94);
        v71 = v90;
        v70 = v91;
        v72 = v88;
        (*(v90 + 32))(v88, &v48[v49], v91);
        sub_18438FC38();
        (*(v71 + 8))(v72, v70);
        (*(v66 + 8))(v67, v69);
        v58 = v96;
        v65 = v98;
        goto LABEL_10;
      }

      v79 = v89;
      v42 = v35;
    }
  }

  else
  {
    v94 = v24;
    v59 = v75;
    v60 = v76;
    v61 = v77;
    v50(v42, v48, v98);
    v93 = v43;
    if (!swift_getEnumCaseMultiPayload())
    {
      v62 = v79;
      v63 = v94;
      (*(v79 + 32))(v59, v42, v94);
      v64 = v78;
      (*(v61 + 32))(v60, &v48[v49], v78);
      sub_18438FC38();
      (*(v61 + 8))(v60, v64);
      (*(v62 + 8))(v59, v63);
      v58 = v96;
      goto LABEL_7;
    }
  }

  (*(v79 + 8))(v42, v94);
  result = sub_184390118();
  __break(1u);
  return result;
}

uint64_t sub_183F8EA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 16);
  v5 = *(a3 - 8);
  v7 = *(a3 - 24);
  v8 = *(a2 + 32);
  v9 = *(v5 + 8);
  v10 = *(v6 + 8);
  v11 = *(v7 + 8);
  v18 = *(a2 + 16);
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v12 = _s5IndexOMa();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v18 - v15);
  (*(v13 + 32))(&v18 - v15, a1, v12);
  sub_183F8E188(v16, a2, v5, v6, v7, a1);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_183F8EDC8()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_183F8EE9C(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v5 > v4)
  {
    v4 = v5;
  }

  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_28;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 253) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v12 < 2)
    {
LABEL_28:
      v14 = *(a1 + v7);
      if (v14 >= 3)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_17:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 254;
}

void sub_183F8F06C(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v6)
  {
    v8 = v6;
  }

  v9 = v8 + 1;
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 253) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_41:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v8] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_26;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

unint64_t sub_183F8F2C8()
{
  result = qword_1EA854548;
  if (!qword_1EA854548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854548);
  }

  return result;
}

uint64_t sub_183F8F33C(int a1)
{
  if (!a1)
  {
    return 0x72656765746E69;
  }

  if (a1 == 256)
  {
    return 0x74616F6C66;
  }

  sub_184390098();

  v2 = sub_1843901B8();
  MEMORY[0x1865EC630](v2);

  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 0x7761722874696E69;
}

uint64_t CGPDFObjectRef.debugDescription.getter(const __CFString *a1)
{
  DebugDescription = CGPDFObjectCreateDebugDescription(a1);
  if (!DebugDescription)
  {
    return 0;
  }

  v2 = DebugDescription;
  v3 = sub_18438FCD8();

  return v3;
}

uint64_t CGPDFObjectRef.objectReference.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = CGPDFObjectGetReference(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t CGPDFObjectRef.BOOLeanValue.getter(CGPDFObject *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  value = 0;
  if (CGPDFObjectGetValue(a1, kCGPDFObjectTypeBoolean, &value))
  {
    return value != 0;
  }

  else
  {
    return 2;
  }
}

uint64_t CGPDFObjectRef.integerValue.getter(CGPDFObject *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  Value = CGPDFObjectGetValue(a1, kCGPDFObjectTypeInteger, v4);
  v2 = v4[0];
  if (!Value)
  {
    return 0;
  }

  return v2;
}

uint64_t CGPDFObjectRef.realValue.getter(CGPDFObject *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  Value = CGPDFObjectGetValue(a1, kCGPDFObjectTypeReal, v4);
  v2 = v4[0];
  if (!Value)
  {
    return 0;
  }

  return v2;
}

uint64_t CGPDFObjectRef.nameValue.getter(CGPDFObject *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  Value = CGPDFObjectGetValue(a1, kCGPDFObjectTypeName, v3);
  result = 0;
  if (Value)
  {
    result = v3[0];
    if (v3[0])
    {
      return sub_18438FD28();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t CGPDFObjectRef.stringValue.getter(CGPDFObject *a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (CGPDFObjectGetValue(a1, kCGPDFObjectTypeString, v2))
  {
    return v2[0];
  }

  else
  {
    return 0;
  }
}

uint64_t CGPDFObjectRef.arrayValue.getter(CGPDFObject *a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (CGPDFObjectGetValue(a1, kCGPDFObjectTypeArray, v2))
  {
    return v2[0];
  }

  else
  {
    return 0;
  }
}

uint64_t CGPDFObjectRef.dictionaryValue.getter(CGPDFObject *a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (CGPDFObjectGetValue(a1, kCGPDFObjectTypeDictionary, v2))
  {
    return v2[0];
  }

  else
  {
    return 0;
  }
}

uint64_t CGPDFObjectRef.streamValue.getter(CGPDFObject *a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (CGPDFObjectGetValue(a1, kCGPDFObjectTypeStream, v2))
  {
    return v2[0];
  }

  else
  {
    return 0;
  }
}

void sub_183F8F868(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v6 = sub_18438FCF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_183F903C8(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854560);
  if (swift_dynamicCast())
  {
    v11 = CGPDFObjectCreateWithBoolean(v15);
LABEL_7:
    v12 = v11;
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v11 = CGPDFObjectCreateWithInteger(v15);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v11 = CGPDFObjectCreateWithReal(*&v15);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
    type metadata accessor for CGPDFStringRef(0);
    if (swift_dynamicCast())
    {
      v11 = CGPDFObjectCreateWithString(v15);
      goto LABEL_7;
    }

    type metadata accessor for CGPDFArrayRef(0);
    if (swift_dynamicCast())
    {
      v11 = CGPDFObjectCreateWithArray(v15);
      goto LABEL_7;
    }

    type metadata accessor for CGPDFDictionaryRef(0);
    if (swift_dynamicCast())
    {
      v11 = CGPDFObjectCreateWithDictionary(v15);
      goto LABEL_7;
    }

    type metadata accessor for CGPDFStreamRef(0);
    if (swift_dynamicCast())
    {
      v11 = CGPDFObjectCreateWithStream(v15);
      goto LABEL_7;
    }

LABEL_23:
    sub_184390118();
    __break(1u);
    return;
  }

  v14[1] = v15;
  v14[2] = v16;
  sub_18438FCE8();
  sub_183F8FF4C();
  v13 = sub_18438FF68();
  (*(v7 + 8))(v10, v6);
  if (!v13)
  {
    __break(1u);
    goto LABEL_23;
  }

  v12 = CGPDFObjectCreateWithName((v13 + 32));

LABEL_8:
  sub_183F90438(v17);
  if (v12)
  {
    CGPDFArraySetObjectAtIndex(*a2, a3, v12);
    CGPDFObjectRelease(v12);
  }
}

void static CGPDFObjectRef.withObject<A>(_:_:)(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4)
{
  v7 = sub_18438FCF8();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v10, v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, a4);
  if (swift_dynamicCast())
  {
    v17 = CGPDFObjectCreateWithBoolean(v21);
LABEL_7:
    v18 = v17;
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v17 = CGPDFObjectCreateWithInteger(v21);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v17 = CGPDFObjectCreateWithReal(*&v21);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
    type metadata accessor for CGPDFStringRef(0);
    if (swift_dynamicCast())
    {
      v17 = CGPDFObjectCreateWithString(v21);
      goto LABEL_7;
    }

    type metadata accessor for CGPDFArrayRef(0);
    if (swift_dynamicCast())
    {
      v17 = CGPDFObjectCreateWithArray(v21);
      goto LABEL_7;
    }

    type metadata accessor for CGPDFDictionaryRef(0);
    if (swift_dynamicCast())
    {
      v17 = CGPDFObjectCreateWithDictionary(v21);
      goto LABEL_7;
    }

    type metadata accessor for CGPDFStreamRef(0);
    if (swift_dynamicCast())
    {
      v17 = CGPDFObjectCreateWithStream(v21);
      goto LABEL_7;
    }

LABEL_23:
    sub_184390118();
    __break(1u);
    return;
  }

  v20[0] = v21;
  v20[1] = v22;
  sub_18438FCE8();
  sub_183F8FF4C();
  v19 = sub_18438FF68();
  (*(v8 + 8))(v12, v7);
  if (!v19)
  {
    __break(1u);
    goto LABEL_23;
  }

  v18 = CGPDFObjectCreateWithName((v19 + 32));

LABEL_8:
  (*(v13 + 8))(v16, a4);
  if (v18)
  {
    a2(v18);
    CGPDFObjectRelease(v18);
  }
}

unint64_t sub_183F8FF4C()
{
  result = qword_1EA854558;
  if (!qword_1EA854558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854558);
  }

  return result;
}

uint64_t sub_183F8FFA0()
{
  DebugDescription = CGPDFObjectCreateDebugDescription(*v0);
  if (!DebugDescription)
  {
    return 0;
  }

  v2 = DebugDescription;
  v3 = sub_18438FCD8();

  return v3;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PDFReferenceType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PDFReferenceType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

void sub_183F90068(uint64_t a1, uint64_t *a2)
{
  v4 = sub_18438FCF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_183F903C8(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854560);
  if (swift_dynamicCast())
  {
    v9 = CGPDFObjectCreateWithBoolean(v15);
LABEL_7:
    v10 = v9;
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v9 = CGPDFObjectCreateWithInteger(v15);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v9 = CGPDFObjectCreateWithReal(*&v15);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
    type metadata accessor for CGPDFStringRef(0);
    if (swift_dynamicCast())
    {
      v9 = CGPDFObjectCreateWithString(v15);
      goto LABEL_7;
    }

    type metadata accessor for CGPDFArrayRef(0);
    if (swift_dynamicCast())
    {
      v9 = CGPDFObjectCreateWithArray(v15);
      goto LABEL_7;
    }

    type metadata accessor for CGPDFDictionaryRef(0);
    if (swift_dynamicCast())
    {
      v9 = CGPDFObjectCreateWithDictionary(v15);
      goto LABEL_7;
    }

    type metadata accessor for CGPDFStreamRef(0);
    if (swift_dynamicCast())
    {
      v9 = CGPDFObjectCreateWithStream(v15);
      goto LABEL_7;
    }

LABEL_23:

    sub_184390118();
    __break(1u);
    return;
  }

  v14[1] = v15;
  v14[2] = v16;
  sub_18438FCE8();
  sub_183F8FF4C();
  v13 = sub_18438FF68();
  (*(v5 + 8))(v8, v4);
  if (!v13)
  {
    __break(1u);
    goto LABEL_23;
  }

  v10 = CGPDFObjectCreateWithName((v13 + 32));

LABEL_8:
  sub_183F90438(v17);
  if (v10)
  {
    v11 = *a2;
    v12 = sub_18438FD08();
    CGPDFDictionarySetObject(v11, (v12 + 32), v10);

    CGPDFObjectRelease(v10);
  }
}

uint64_t sub_183F903C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_183F90438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_183F904A0(void *result, unsigned __int8 a2)
{
  v2 = result[3];
  if (__OFSUB__(v2, 1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v2 - 1 < 0)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (v2 != 1)
  {
    v4 = result;
    v5 = sub_183F9BBCC(v2 - 1, 0);
    if (v2 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v2;
    }

    if (v2 >= 1)
    {
      v7 = v5;
      result = v4;
      v8 = 0;
      v9 = v6 - 1;
      v10 = v4 + 5;
      v11 = 4;
      while (v9 != v8)
      {
        v12 = &v7[v11];
        v13 = v4[4];
        v14 = v4[2];
        if (v8 + v13 >= v14)
        {
          v15 = v4[2];
        }

        else
        {
          v15 = 0;
        }

        v16 = v8 + v13 - v15;
        v17 = v10[v16];
        if (v8 + v13 + 1 >= v14)
        {
          v18 = v4[2];
        }

        else
        {
          v18 = 0;
        }

        if ((v8 ^ a2))
        {
          v19 = v10[v8 + 1 + v13 - v18];
        }

        else
        {
          v19 = v10[v16];
        }

        if (((v8 ^ a2) & 1) == 0)
        {
          v17 = v10[v8 + 1 + v13 - v18];
        }

        *v12 = v17;
        v12[1] = v19;
        if (v2 - 2 == v8)
        {
          goto LABEL_25;
        }

        ++v8;
        v11 += 2;
        if (v2 == v8)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_23:
    __break(1u);
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_25:

  return v7;
}

uint64_t sub_183F905AC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a3);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = &v97 - v11;
  (*(v5 + 16))(v7, a1, a2);
  sub_18438FD38();
  swift_getAssociatedConformanceWitness();
  sub_18438FF58();
  if (v101)
  {
    (*(v5 + 8))(a1, a2);
    (*(v9 + 8))(v12, AssociatedTypeWitness);
    return 0;
  }

  v97 = v9;
  v98 = a1;
  v14 = v99;
  v13 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1843982F0;
  *(inited + 32) = v13;
  *(inited + 40) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0);
  v16 = swift_allocObject();
  v17 = _swift_stdlib_malloc_size(v16);
  v18 = v17 - 40;
  if (v17 < 40)
  {
    v18 = v17 - 33;
  }

  v16[2] = v18 >> 3;
  v16[3] = 0;
  v16[4] = 0;
  sub_183FBA808(v16 + 2, v16 + 5, 2uLL, inited);
  swift_setDeallocating();
  v19 = 0;
  v102 = v16;
  v103 = 0;
  v20 = 1;
  while (1)
  {
    result = sub_18438FF58();
    if (v101)
    {
      goto LABEL_108;
    }

    v23 = v16[3];
    v24 = v23 - 2;
    if (__OFSUB__(v23, 2))
    {
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
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    if (v24 < 0)
    {
      goto LABEL_133;
    }

    if (v24 >= v23)
    {
      goto LABEL_134;
    }

    if (v23 - 1 >= v23)
    {
      goto LABEL_135;
    }

    v25 = v16 + 5;
    v26 = v16[4];
    v27 = v16[2];
    if (v26 + v24 >= v27)
    {
      v28 = v16[2];
    }

    else
    {
      v28 = 0;
    }

    v29 = v26 + v24 - v28;
    v30 = *&v25[v29];
    v31 = v26 + v23 - 1;
    if (v31 >= v27)
    {
      v32 = v16[2];
    }

    else
    {
      v32 = 0;
    }

    v33 = v31 - v32;
    v34 = v99;
    v35 = v100;
    v36 = v19 ^ v24;
    if (v36)
    {
      v37 = *&v25[v29];
    }

    else
    {
      v37 = *&v25[v33];
    }

    if (v36)
    {
      v30 = *&v25[v33];
    }

    if (v37 == v99)
    {
      break;
    }

    if (v30 != v100)
    {
      goto LABEL_109;
    }

    if (v23 != 2)
    {
      v59 = v23 - 1;
      if ((v19 ^ (v23 - 1)))
      {
        v16 = v102;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_183FCAC68();
          v16 = v102;
        }

        v60 = v16[4] + v59;
        v61 = v16[2];
        if (v60 < v61)
        {
          v61 = 0;
        }

        *&v16[v60 - v61 + 5] = v34;
        goto LABEL_9;
      }

      v70 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_142;
      }

      v16 = v102;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (v16[2] < v70 || (result & 1) == 0)
      {
        result = sub_183FCA8F4(result, v70);
        v16 = v102;
      }

      v71 = v16[3];
      v72 = v16[4];
      v42 = __OFADD__(v72, v71);
      v73 = v72 + v71;
      if (v42)
      {
        goto LABEL_143;
      }

      if (v71 < 0)
      {
        if (v73 < 0)
        {
          v81 = v16[2];
          v42 = __OFADD__(v73, v81);
          v73 += v81;
          if (v42)
          {
            goto LABEL_157;
          }
        }
      }

      else
      {
        v74 = v16[2];
        v75 = __OFSUB__(v73, v74);
        v76 = v73 - v74;
        if (v76 < 0 == v75)
        {
          v73 = v76;
          if (v75)
          {
            goto LABEL_150;
          }
        }
      }

      *&v16[v73 + 5] = v34;
      v42 = __OFADD__(v71, 1);
      v21 = v71 + 1;
      if (v42)
      {
        goto LABEL_144;
      }

      goto LABEL_8;
    }

    v16 = v102;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_183FCAC68();
      v16 = v102;
    }

    v44 = v16[4];
    v45 = v16[2];
    if (v44 >= v45)
    {
      v46 = v16[2];
    }

    else
    {
      v46 = 0;
    }

    v47 = v44 - v46;
    v48 = v44 + 1;
    if (v48 < v45)
    {
      v45 = 0;
    }

    v49 = v48 - v45;
    if (v47 != v49)
    {
      v50 = v16[v47 + 5];
      v16[v47 + 5] = v16[v49 + 5];
      v16[v49 + 5] = v50;
    }

    v51 = v16[3];
    v52 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (v16[2] < v52 || (result & 1) == 0)
    {
      result = sub_183FCA8F4(result, v52);
      v16 = v102;
    }

    v53 = v16[3];
    v54 = v16[4];
    v42 = __OFADD__(v54, v53);
    v55 = v54 + v53;
    if (v42)
    {
      goto LABEL_138;
    }

    if (v53 < 0)
    {
      if (v55 < 0)
      {
        v77 = v16[2];
        v42 = __OFADD__(v55, v77);
        v55 += v77;
        if (v42)
        {
          goto LABEL_151;
        }
      }
    }

    else
    {
      v56 = v16[2];
      v57 = __OFSUB__(v55, v56);
      v58 = v55 - v56;
      if (v58 < 0 == v57)
      {
        v55 = v58;
        if (v57)
        {
          goto LABEL_148;
        }
      }
    }

    *&v16[v55 + 5] = v34;
    v42 = __OFADD__(v53, 1);
    v78 = v53 + 1;
    if (v42)
    {
      goto LABEL_139;
    }

    v16[3] = v78;
    v19 = 1;
    v103 = 1;
LABEL_9:
    v42 = __OFADD__(v20++, 1);
    if (v42)
    {
      goto LABEL_136;
    }
  }

  if (v30 == v100)
  {
    goto LABEL_9;
  }

  if (v23 != 2)
  {
    v62 = v23 - 1;
    if (((v19 ^ (v23 - 1)) & 1) == 0)
    {
      v16 = v102;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_183FCAC68();
        v16 = v102;
      }

      v79 = v16[4] + v62;
      v80 = v16[2];
      if (v79 < v80)
      {
        v80 = 0;
      }

      *&v16[v79 - v80 + 5] = v35;
      goto LABEL_9;
    }

    v63 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_145;
    }

    v16 = v102;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (v16[2] < v63 || (result & 1) == 0)
    {
      result = sub_183FCA8F4(result, v63);
      v16 = v102;
    }

    v64 = v16[3];
    v65 = v16[4];
    v42 = __OFADD__(v65, v64);
    v66 = v65 + v64;
    if (v42)
    {
      goto LABEL_146;
    }

    if (v64 < 0)
    {
      if (v66 < 0)
      {
        v82 = v16[2];
        v42 = __OFADD__(v66, v82);
        v66 += v82;
        if (v42)
        {
          goto LABEL_158;
        }
      }
    }

    else
    {
      v67 = v16[2];
      v68 = __OFSUB__(v66, v67);
      v69 = v66 - v67;
      if (v69 < 0 == v68)
      {
        v66 = v69;
        if (v68)
        {
          goto LABEL_152;
        }
      }
    }

    *&v16[v66 + 5] = v35;
    v42 = __OFADD__(v64, 1);
    v21 = v64 + 1;
    if (v42)
    {
      goto LABEL_147;
    }

    goto LABEL_8;
  }

  v16 = v102;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (v16[2] < 3 || (result & 1) == 0)
  {
    result = sub_183FCA8F4(result, 3);
    v16 = v102;
  }

  v38 = v16[3];
  v39 = v16[4];
  v42 = __OFADD__(v39, v38);
  v40 = v39 + v38;
  if (v42)
  {
    goto LABEL_140;
  }

  if ((v38 & 0x8000000000000000) == 0)
  {
    v41 = v16[2];
    v42 = __OFSUB__(v40, v41);
    v43 = v40 - v41;
    if (v43 < 0 == v42)
    {
      v40 = v43;
      if (v42)
      {
        goto LABEL_149;
      }
    }

LABEL_7:
    *&v16[v40 + 5] = v35;
    v42 = __OFADD__(v38, 1);
    v21 = v38 + 1;
    if (v42)
    {
      goto LABEL_141;
    }

LABEL_8:
    v16[3] = v21;
    goto LABEL_9;
  }

  if ((v40 & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

  v83 = v16[2];
  v42 = __OFADD__(v40, v83);
  v40 += v83;
  if (!v42)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_108:
  if (v20 < 4)
  {
LABEL_109:
    (*(v5 + 8))(v98, a2);
    (*(v97 + 8))(v12, AssociatedTypeWitness);

    return 0;
  }

  v84 = v16[3];
  v85 = v84 - 2;
  if (__OFSUB__(v84, 2))
  {
    goto LABEL_153;
  }

  if (v85 < 0)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v85 >= v84)
  {
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    return result;
  }

  if (v84 - 1 >= v84)
  {
    goto LABEL_156;
  }

  v86 = v16 + 5;
  v87 = v16[4];
  v88 = v16[2];
  if (v87 + v85 >= v88)
  {
    v89 = v16[2];
  }

  else
  {
    v89 = 0;
  }

  v90 = v87 + v85 - v89;
  v91 = *&v86[v90];
  v92 = v87 + v85 + 1;
  if (v92 >= v88)
  {
    v93 = v16[2];
  }

  else
  {
    v93 = 0;
  }

  v94 = v92 - v93;
  v95 = v19 ^ v85;
  if (v95)
  {
    v96 = *&v86[v90];
  }

  else
  {
    v96 = *&v86[v94];
  }

  if (v95)
  {
    v91 = *&v86[v94];
  }

  if (v96 == v14)
  {
    if (v91 != v13)
    {
      sub_183F911D4(v13);
    }
  }

  else
  {
    if (v91 != v13)
    {
      goto LABEL_109;
    }

    sub_183F912E8(v14);
  }

  sub_183F91488();
  (*(v5 + 8))(v98, a2);
  (*(v97 + 8))(v12, AssociatedTypeWitness);
  return v102;
}

uint64_t sub_183F90DB8()
{
  v10 = MEMORY[0x1E69E7CC0];
  v8 = 0;
  v9 = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = &v8;
  *(v1 + 24) = &v10;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_183F92D64;
  *(v2 + 24) = v1;
  aBlock[4] = sub_183F92D6C;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_183F92CE0;
  aBlock[3] = &block_descriptor;
  v3 = _Block_copy(aBlock);

  CGPathApplyWithBlock(v0, v3);
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v6 = v10;

    return v6;
  }

  return result;
}

uint64_t sub_183F90F40(void *a1, unsigned __int8 a2)
{
  v2 = a1[3];
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_78;
  }

  if (v2 == 1)
  {
LABEL_86:
    result = sub_184390118();
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0;
  v6 = a1 + 5;
  v7 = 1;
  v8 = NAN;
  v9 = NAN;
LABEL_6:
  v10 = v5;
  v11 = v8;
  v12 = (~*&v9 & 0x7FF0000000000000) == 0;
  if ((*&v9 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v12 = 0;
  }

  if (v4 <= v3)
  {
    v13 = v2 - 1;
  }

  else
  {
    v13 = v4;
  }

  if (v4 <= v2)
  {
    v14 = a1[3];
  }

  else
  {
    v14 = v4;
  }

  v5 = v4;
  do
  {
    if (v13 == v5)
    {
      goto LABEL_74;
    }

    if (v14 == v5)
    {
      goto LABEL_75;
    }

    v15 = v5 + 1;
    if (v5 + 1 >= v2)
    {
      goto LABEL_76;
    }

    v16 = a1[4];
    v17 = a1[2];
    if (v5 + v16 >= v17)
    {
      v18 = a1[2];
    }

    else
    {
      v18 = 0;
    }

    v19 = v5 + v16 - v18;
    v8 = *&v6[v19];
    if (v5 + v16 + 1 >= v17)
    {
      v20 = a1[2];
    }

    else
    {
      v20 = 0;
    }

    if ((v5 ^ a2))
    {
      v21 = *&v6[v19];
    }

    else
    {
      v21 = *&v6[v5 + 1 + v16 - v20];
    }

    if ((v5 ^ a2))
    {
      v8 = *&v6[v5 + 1 + v16 - v20];
    }

    v22 = v21 < v9 || v12;
    if ((v22 & 1) != 0 || (v9 == v21 ? (v23 = v8 < v11) : (v23 = 0), v23))
    {
      v7 = 0;
      v4 = v5 + 1;
      v9 = v21;
      if (v2 - 2 != v5)
      {
        goto LABEL_6;
      }

      goto LABEL_39;
    }

    ++v5;
  }

  while (v3 != v15);
  v8 = v11;
  v5 = v10;
  v21 = v9;
  if (v7)
  {
    goto LABEL_86;
  }

LABEL_39:
  if (!v5)
  {
    v24 = v2 - 3;
    if (((v2 - 3) & 0x8000000000000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v24 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    goto LABEL_84;
  }

  if (v24 < 0)
  {
    goto LABEL_73;
  }

LABEL_42:
  if (v24 >= v2)
  {
    goto LABEL_79;
  }

  v25 = a1[4];
  v26 = a1[2];
  if (v25 + v24 >= v26)
  {
    v27 = a1[2];
  }

  else
  {
    v27 = 0;
  }

  v28 = v24 + 1;
  if (v24 + 1 >= v2)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v29 = 0;
  v30 = *&v6[v25 + v24 - v27];
  v31 = v25 + v28;
  if (v25 + v28 >= v26)
  {
    v32 = v26;
  }

  else
  {
    v32 = 0;
  }

  if (v5 != v2 - 2)
  {
    v29 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_85;
    }

    if ((v29 & 0x8000000000000000) != 0)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }
  }

  if (v29 >= v2)
  {
    goto LABEL_82;
  }

  v33 = v29 + 1;
  if (v29 + 1 >= v2)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if ((v29 + v25) >= v26)
  {
    v34 = v26;
  }

  else
  {
    v34 = 0;
  }

  if ((v24 ^ a2))
  {
    v35 = *&v6[v31 - v32];
  }

  else
  {
    v35 = *&v6[v25 + v24 - v27];
  }

  if (((v24 ^ a2) & 1) == 0)
  {
    v30 = *&v6[v31 - v32];
  }

  v36 = v33 + v25;
  if ((v33 + v25) >= v26)
  {
    v37 = v26;
  }

  else
  {
    v37 = 0;
  }

  v38 = *&v6[v36 - v37];
  if ((v29 ^ a2))
  {
    v39 = *&v6[v29 + v25 - v34];
  }

  else
  {
    v39 = *&v6[v36 - v37];
  }

  if (((v29 ^ a2) & 1) == 0)
  {
    v38 = *&v6[v29 + v25 - v34];
  }

  return (v8 - v35) * (v39 - v30) >= (v21 - v30) * (v38 - v35);
}

uint64_t sub_183F911D4(double a1)
{
  result = *v1;
  v4 = *(*v1 + 24);
  if (v4 == 2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v1;
    if (*(*v1 + 16) >= 3 && (isUniquelyReferenced_nonNull_native & 1) != 0)
    {
      return sub_183F92D0C((v6 + 16), v6 + 40, a1);
    }

    v7 = 3;
LABEL_11:
    sub_183FCA8F4(isUniquelyReferenced_nonNull_native, v7);
    v6 = *v1;
    return sub_183F92D0C((v6 + 16), v6 + 40, a1);
  }

  v8 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v8 & 1) != v1[8])
  {
    v9 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = *v1;
      if (*(*v1 + 16) >= v9 && (isUniquelyReferenced_nonNull_native & 1) != 0)
      {
        return sub_183F92D0C((v6 + 16), v6 + 40, a1);
      }

      v7 = v9;
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  if (v8 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 >= v4)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_183FCAC68();
  }

  v10 = *(*v1 + 32) + v8;
  v11 = *(*v1 + 16);
  if (v10 < v11)
  {
    v11 = 0;
  }

  *(*v1 + 8 * (v10 - v11) + 40) = a1;
  return result;
}

uint64_t sub_183F912E8(double a1)
{
  result = *v1;
  v4 = *(*v1 + 24);
  if (v4 == 2)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_183FCAC68();
    }

    v5 = *v1;
    v6 = *(*v1 + 32);
    v7 = *(*v1 + 16);
    if (v6 >= v7)
    {
      v8 = *(*v1 + 16);
    }

    else
    {
      v8 = 0;
    }

    v9 = v6 - v8;
    v10 = v6 + 1;
    if (v10 < v7)
    {
      v7 = 0;
    }

    v11 = v10 - v7;
    if (v9 != v11)
    {
      v12 = *(v5 + 40 + 8 * v9);
      *(v5 + 40 + 8 * v9) = *(v5 + 40 + 8 * v11);
      *(v5 + 40 + 8 * v11) = v12;
    }

    v13 = *(v5 + 24);
    v14 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v1;
      if (*(*v1 + 16) < v14 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_183FCA8F4(isUniquelyReferenced_nonNull_native, v14);
        v16 = *v1;
      }

      result = sub_183F92D0C((v16 + 16), v16 + 40, a1);
      v1[8] = 1;
      return result;
    }

    __break(1u);
    goto LABEL_31;
  }

  v17 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v17 & 1) == v1[8])
  {
    v20 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v1;
    if (*(*v1 + 16) < v20 || (v21 & 1) == 0)
    {
      sub_183FCA8F4(v21, v20);
      v22 = *v1;
    }

    return sub_183F92D0C((v22 + 16), v22 + 40, a1);
  }

  else
  {
    if (v17 < 0)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v17 >= v4)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_183FCAC68();
    }

    v18 = *(*v1 + 32) + v17;
    v19 = *(*v1 + 16);
    if (v18 < v19)
    {
      v19 = 0;
    }

    *(*v1 + 8 * (v18 - v19) + 40) = a1;
  }

  return result;
}

void sub_183F91488()
{
  if (v0[8] == 1)
  {
    v1 = *v0;
    v2 = *(*v0 + 24);
    if (v2)
    {
      if (v2 < 3)
      {
LABEL_31:
        __break(1u);
        return;
      }

      v8 = v2 - 1;
      v9 = *(v1 + 32) + 2;
      v10 = *(v1 + 16);
      if (v9 < v10)
      {
        v10 = 0;
      }

      v11 = *(v1 + 8 * (v9 - v10) + 40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_183FCAC68();
      }

      v7 = *v0;
      v12 = v8 + *(*v0 + 32);
      v13 = *(*v0 + 16);
      if (v12 < v13)
      {
        v13 = 0;
      }

      *(v7 + 8 * (v12 - v13) + 40) = v11;
    }

    else
    {
      if (v2 < 3)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v3 = *(v1 + 32) + 2;
      v4 = *(v1 + 16);
      if (v3 < v4)
      {
        v4 = 0;
      }

      v5 = *(v1 + 8 * (v3 - v4) + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = *v0;
      if (*(*v0 + 16) <= v2 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_183FCA8F4(isUniquelyReferenced_nonNull_native, v2 | 1);
        v7 = *v0;
      }

      sub_183F92D0C((v7 + 16), v7 + 40, v5);
    }

    if (*(v7 + 24))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_183FCAC68();
      }

      v14 = *v0;
      v15 = *(*v0 + 32);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        v18 = v14[3];
        if (v17 >= v14[2])
        {
          v17 = 0;
        }

        v14[4] = v17;
        if (!__OFSUB__(v18, 1))
        {
          v14[3] = v18 - 1;
          v0[8] = 0;
          return;
        }

        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }
}

uint64_t sub_183F915F4()
{
  v1 = *v0;
  sub_1843902E8();
  MEMORY[0x1865ECC10](v1);
  return sub_184390348();
}

uint64_t sub_183F9163C()
{
  v1 = *v0;
  sub_1843902E8();
  MEMORY[0x1865ECC10](v1);
  return sub_184390348();
}

uint64_t Region.Points.endIndex.getter()
{
  v1 = *(*v0 + 24);
  result = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  return result;
}

int64_t Region.Points.subscript.getter(int64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = *(*v1 + 24);
  if (v2 <= result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result + 1 >= v2)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_183F9171C()
{
  result = qword_1EA854568;
  if (!qword_1EA854568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854568);
  }

  return result;
}

unint64_t sub_183F91770()
{
  result = qword_1EA854580;
  if (!qword_1EA854580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854580);
  }

  return result;
}

unint64_t sub_183F9180C()
{
  result = qword_1EA854598;
  if (!qword_1EA854598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854598);
  }

  return result;
}

unint64_t sub_183F91864()
{
  result = qword_1EA8545A0;
  if (!qword_1EA8545A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8545A0);
  }

  return result;
}

uint64_t sub_183F91900(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854590);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_183F91978@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(*v2 + 24);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((v3 & 0x8000000000000000) == 0 && v3 < v6)
  {
    *a2 = v3;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t *sub_183F919B4(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(*v1 + 24);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((v2 & 0x8000000000000000) == 0 && v2 < v5)
  {
    *result = v2;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_183F919F4()
{
  result = qword_1EA853ED0;
  if (!qword_1EA853ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853ED0);
  }

  return result;
}

uint64_t sub_183F91A48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854578);
    sub_183F91770();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_183F91B04(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
  }
}

uint64_t (*sub_183F91B20(void *a1, int64_t *a2))(void)
{
  Region.Points.subscript.getter(*a2);
  *a1 = v3;
  a1[1] = v4;
  return CGBitmapPixelInfoGetBitsPerComponent;
}

uint64_t sub_183F91B68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *v2;
  v5 = *(*v2 + 24);
  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = *a1;
  if (*a1 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = a1[1];
  if (v6 >= v8)
  {
    v9 = v2[8];
    *(a2 + 8) = v8;
    *(a2 + 16) = result;
    *(a2 + 24) = v9;
    *a2 = v7;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_183F91BB8(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    *a1 = 0;
    a1[1] = v4;
    return;
  }

  __break(1u);
}

BOOL sub_183F91BDC()
{
  v1 = *(*v0 + 24);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (!v2)
  {
    return v3 == 0;
  }

  __break(1u);
  return result;
}

void *sub_183F91BFC@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = *(*v3 + 24);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) == 0 && v7 >= v4)
  {
    *a3 = v4;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_183F91C38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_183F77F84(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t *sub_183F91C78(uint64_t *result, uint64_t *a2)
{
  v3 = *(*v2 + 24);
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = *result;
  if (*result < 0 || v4 < v5)
  {
    goto LABEL_8;
  }

  v6 = *a2;
  if ((*a2 & 0x8000000000000000) == 0 && v4 >= v6)
  {
    return (v6 - v5);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_183F91CBC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_183F91CD8(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_183F91CF4(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_183F91D10@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *(*v2 + 24);
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *result;
    if ((*result & 0x8000000000000000) == 0 && v5 < v4)
    {
      *a2 = v5 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_183F91D44(uint64_t *result)
{
  v2 = *(*v1 + 24);
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    if ((*result & 0x8000000000000000) == 0 && v4 < v3)
    {
      *result = v4 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_183F91DBC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t sub_183F91DD4()
{
  v1 = *(*v0 + 24);
  result = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result < 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_183F91E1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_183F91E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_183F91F18(uint64_t result, uint64_t a2)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = 2 * result;
  if (2 * result < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(a2 + 24);
  if (v2 >= v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 | 1uLL) >= v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v2 + 2 >= v3)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_183F91FD4(double a1)
{
  result = *v1;
  v4 = *(*v1 + 24);
  if (v4 != 2)
  {
    goto LABEL_8;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (*(*v1 + 16) < 3 || (result & 1) == 0)
  {
    result = sub_183FCA8F4(result, 3);
    v4 = *v1;
    v5 = *(*v1 + 32);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_16:
    v10 = *(v4 + 16);
    v6 = __OFSUB__(v10, 1);
    v7 = v10 - 1;
    if (v6)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    goto LABEL_17;
  }

  v5 = *(v4 + 32);
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_5:
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (!v6)
  {
LABEL_17:
    *(v4 + 8 * v7 + 40) = a1;
    *(v4 + 32) = v7;
    v11 = *(v4 + 24);
    v6 = __OFADD__(v11, 1);
    v12 = v11 + 1;
    if (!v6)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_20:
    v13 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v4 = *v1;
      if (*(*v1 + 16) < v13 || (result & 1) == 0)
      {
        goto LABEL_27;
      }

      v14 = *(v4 + 32);
      if (v14)
      {
        while (1)
        {
          v6 = __OFSUB__(v14, 1);
          v15 = v14 - 1;
          if (!v6)
          {
            break;
          }

          __break(1u);
LABEL_27:
          result = sub_183FCA8F4(result, v13);
          v4 = *v1;
          v14 = *(*v1 + 32);
          if (!v14)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        v16 = *(v4 + 16);
        v6 = __OFSUB__(v16, 1);
        v15 = v16 - 1;
        if (v6)
        {
LABEL_35:
          __break(1u);
          return result;
        }
      }

      *(v4 + 8 * v15 + 40) = a1;
      *(v4 + 32) = v15;
      v17 = *(v4 + 24);
      v6 = __OFADD__(v17, 1);
      v12 = v17 + 1;
      if (!v6)
      {
LABEL_30:
        *(v4 + 24) = v12;
        v1[8] = 1;
        return result;
      }

      goto LABEL_33;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __break(1u);
LABEL_8:
  if (v1[8] != 1)
  {
    goto LABEL_20;
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_32;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_183FCAC68();
  }

  v8 = *(*v1 + 32);
  v9 = *(*v1 + 16);
  if (v8 < v9)
  {
    v9 = 0;
  }

  *(*v1 + 8 * (v8 - v9) + 40) = a1;
  return result;
}

uint64_t sub_183F9214C(double a1)
{
  result = *v1;
  v4 = *(*v1 + 24);
  if (v4 != 2)
  {
    goto LABEL_18;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_183FCAC68();
  }

  v5 = *v1;
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  if (v6 >= v7)
  {
    v8 = *(*v1 + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 - v8;
  v10 = v6 + 1;
  if (v10 < v7)
  {
    v7 = 0;
  }

  v11 = v10 - v7;
  if (v9 != v11)
  {
    v12 = *(v5 + 40 + 8 * v9);
    *(v5 + 40 + 8 * v9) = *(v5 + 40 + 8 * v11);
    *(v5 + 40 + 8 * v11) = v12;
  }

  v13 = *(v5 + 24);
  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (*(*v1 + 16) < v14 || (result & 1) == 0)
  {
    result = sub_183FCA8F4(result, v14);
    v4 = *v1;
    v15 = *(*v1 + 32);
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_33:
    v23 = *(v4 + 16);
    v16 = __OFSUB__(v23, 1);
    v17 = v23 - 1;
    if (v16)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    goto LABEL_34;
  }

  v15 = *(v4 + 32);
  if (!v15)
  {
    goto LABEL_33;
  }

LABEL_15:
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (!v16)
  {
LABEL_34:
    *(v4 + 8 * v17 + 40) = a1;
    *(v4 + 32) = v17;
    v24 = *(v4 + 24);
    v16 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v16)
    {
      *(v4 + 24) = v25;
      return result;
    }

    goto LABEL_41;
  }

  __break(1u);
LABEL_18:
  if (v1[8] != 1)
  {
    goto LABEL_26;
  }

  v18 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (*(*v1 + 16) < v18 || (result & 1) == 0)
  {
    result = sub_183FCA8F4(result, v18);
    v4 = *v1;
    v19 = *(*v1 + 32);
    if (v19)
    {
      goto LABEL_23;
    }

LABEL_37:
    v26 = *(v4 + 16);
    v16 = __OFSUB__(v26, 1);
    v20 = v26 - 1;
    if (v16)
    {
LABEL_46:
      __break(1u);
      return result;
    }

    goto LABEL_38;
  }

  v19 = *(v4 + 32);
  if (!v19)
  {
    goto LABEL_37;
  }

LABEL_23:
  v16 = __OFSUB__(v19, 1);
  v20 = v19 - 1;
  if (!v16)
  {
LABEL_38:
    *(v4 + 8 * v20 + 40) = a1;
    *(v4 + 32) = v20;
    v27 = *(v4 + 24);
    v16 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v16)
    {
      *(v4 + 24) = v28;
      v1[8] = 0;
      return result;
    }

    goto LABEL_44;
  }

  __break(1u);
LABEL_26:
  if (v4 < 1)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_183FCAC68();
  }

  v21 = *(*v1 + 32);
  v22 = *(*v1 + 16);
  if (v21 < v22)
  {
    v22 = 0;
  }

  *(*v1 + 8 * (v21 - v22) + 40) = a1;
  return result;
}

uint64_t sub_183F9232C(void *a1, unsigned __int8 a2, double a3, double a4)
{
  v8 = a1[3];
  if (a3 == 0.0 && a4 == 0.0)
  {
  }

  result = sub_183F90F40(a1, a2 & 1);
  v10 = -a3;
  v11 = -a4;
  if ((result & 1) == 0)
  {
    v11 = a4;
    v10 = a3;
  }

  v12 = a1[3];
  if (__OFSUB__(v12, 1))
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if (v12 == 1)
  {
    v25 = NAN;
    v23 = NAN;
    v35 = NAN;
  }

  else
  {
    v13 = v12 & ~(v12 >> 63);
    v14 = (v12 - 1) & ~((v12 - 1) >> 63);
    if (v13 >= v14)
    {
      v15 = (v12 - 1) & ~((v12 - 1) >> 63);
    }

    else
    {
      v15 = v12 & ~(v12 >> 63);
    }

    if (v12 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = a1[3];
    }

    v17 = v16 - 1;
    if (v15 >= v17)
    {
      v15 = v17;
    }

    if (v15 >= v12 - 2)
    {
      v15 = v12 - 2;
    }

    if (v13 == v15)
    {
      goto LABEL_113;
    }

    if (v17 == v15)
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    if (v14 == v15)
    {
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v18 = a1[4];
    v19 = a1[2];
    v20 = &a1[v18];
    v21 = v18 + 5;
    v22 = 1 - v12;
    v23 = NAN;
    v24 = 5;
    v25 = NAN;
    v26 = NAN;
    v27 = NAN;
    do
    {
      if (v21 - 5 >= v19)
      {
        v28 = a1[2];
      }

      else
      {
        v28 = 0;
      }

      v29 = *&v20[-v28 + 5];
      if (v21 - 4 >= v19)
      {
        v30 = a1[2];
      }

      else
      {
        v30 = 0;
      }

      if (((v24 + 1) ^ a2))
      {
        v31 = v29;
      }

      else
      {
        v31 = *&v20[-v30 + 6];
      }

      if (((v24 + 1) ^ a2))
      {
        v29 = *&v20[-v30 + 6];
      }

      if ((*&v31 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v32 = v27;
      }

      else
      {
        v32 = v31;
      }

      if ((~*&v31 & 0x7FF0000000000000) != 0)
      {
        v32 = v31;
      }

      if (v27 > v31)
      {
        v27 = v32;
      }

      if ((*&v31 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v33 = v26;
      }

      else
      {
        v33 = v31;
      }

      if ((~*&v31 & 0x7FF0000000000000) != 0)
      {
        v33 = v31;
      }

      if (v31 >= v26)
      {
        v26 = v33;
      }

      if ((*&v29 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v34 = v25;
      }

      else
      {
        v34 = v29;
      }

      if ((~*&v29 & 0x7FF0000000000000) != 0)
      {
        v34 = v29;
      }

      if (v25 > v29)
      {
        v25 = v34;
      }

      if (v29 >= v23)
      {
        if ((~*&v29 & 0x7FF0000000000000) != 0)
        {
          v23 = v29;
        }

        else if ((*&v29 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          v23 = v29;
        }
      }

      ++v20;
      ++v21;
      ++v24;
    }

    while (v22 + v24 != 5);
    v35 = v26 - v27;
  }

  if (v10 + v10 >= v35 || v11 + v11 >= v23 - v25)
  {
    return 0;
  }

  v36 = a1[3];
  if ((v36 & 0x8000000000000000) == 0)
  {
    if (!v36)
    {

      v66 = *sub_18438FBE8();

      return v66;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0);
    v37 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v37);
    v41 = result - 33;
    if (result >= 40)
    {
      v41 = result - 40;
    }

    *(v37 + 24) = 0;
    *(v37 + 16) = v41 >> 3;
    v42 = v8 - 3;
    v43 = __OFSUB__(v8, 3);
    v44 = __OFSUB__(v8, 1);
    *(v37 + 32) = 0;
    if (v43)
    {
      goto LABEL_118;
    }

    if ((v42 & 0x8000000000000000) != 0)
    {
      goto LABEL_116;
    }

    if (v42 < v36)
    {
      v45 = a1[4];
      v46 = v45 + v42;
      v47 = a1[2];
      if (v46 >= v47)
      {
        v48 = a1[2];
      }

      else
      {
        v48 = 0;
      }

      if (v44)
      {
        goto LABEL_119;
      }

      if (v8 == 1)
      {
        v49 = 2;
      }

      else
      {
        v49 = 1;
      }

      if (v49 < v36)
      {
        result = v37;
        v50 = 0;
        v51 = a1 + 5;
        v38.i64[0] = a1[v46 - v48 + 5];
        if ((v45 + v49) >= v47)
        {
          v52 = a1[2];
        }

        else
        {
          v52 = 0;
        }

        if (v45 >= v47)
        {
          v53 = a1[2];
        }

        else
        {
          v53 = 0;
        }

        *v39.i64 = -(*v38.i64 - *&v51[v45 + v49 - v52]);
        v38.i64[0] = 1.0;
        v54.f64[0] = NAN;
        v54.f64[1] = NAN;
        v55 = vnegq_f64(v54);
        *(v37 + 40) = *&v51[v45 - v53] + *vbslq_s8(v55, v38, v39).i64 * (a3 * 0.0 + a4);
        v56 = &a1[v45];
        v57 = 1.0;
        while (1)
        {
          v58 = v8 - 2 == v50 ? 2 : v50 + 2;
          if (v58 >= v36)
          {
            break;
          }

          if (v45 + v50 >= v47)
          {
            v59 = v47;
          }

          else
          {
            v59 = 0;
          }

          v60 = &v56[-v59];
          v61 = v45 + v58;
          if (v61 >= v47)
          {
            v62 = v47;
          }

          else
          {
            v62 = 0;
          }

          v63 = &v60[v50];
          v40.i64[0] = v51[v61 - v62];
          if (v45 + 1 + v50 >= v47)
          {
            v64 = v47;
          }

          else
          {
            v64 = 0;
          }

          *v40.i64 = v63[5] - *v40.i64;
          v40 = vbslq_s8(v55, v38, v40);
          *(v37 + 48 + 8 * v50) = *&v56[v50 - v64 + 6] + (v57 * 2.0 + -1.0) * *v40.i64 * (v57 * a3 + (1.0 - v57) * a4);
          if (v36 - 2 == v50)
          {
            *(v37 + 24) = v36;
            return result;
          }

          v57 = ((v50 + 2) & 1);
          v65 = v50 + 2;
          ++v50;
          if (v65 > v36)
          {
            goto LABEL_107;
          }
        }
      }

      __break(1u);
      goto LABEL_112;
    }

LABEL_107:
    __break(1u);
    return 0;
  }

LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
  return result;
}