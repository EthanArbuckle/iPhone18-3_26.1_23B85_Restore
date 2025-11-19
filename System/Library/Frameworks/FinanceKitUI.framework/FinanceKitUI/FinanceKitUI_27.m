void sub_238708B1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = a3;
  v42 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v8 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v43 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v38 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v44 - a2;
  if (v44 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v47 = a1;
  v46 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38[1] = v4;
    v23 = a4 + v18;
    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = a4 + v18;
      v26 = v23;
      v40 = v24;
      v41 = a4;
      do
      {
        v38[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v44;
          if (v27 <= a1)
          {
            v47 = v27;
            v45 = v38[0];
            goto LABEL_59;
          }

          v39 = v26;
          v44 += v24;
          v31 = v25 + v24;
          sub_23870F694(v31, v12, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v43;
          sub_23870F694(v33, v43, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
          v36 = sub_2384A3F7C(v35, v34);
          v37 = v35;
          v12 = v34;
          sub_23870F348(v37);
          sub_23870F348(v34);
          if (v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v44 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v41;
          v24 = v40;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v44 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          v24 = v40;
        }

        else
        {
          v26 = v39;
          v24 = v40;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v41);
    }

LABEL_58:
    v47 = a2;
    v45 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v45 = a4 + v17;
    if (v17 >= 1 && a2 < v44)
    {
      do
      {
        sub_23870F694(a2, v12, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        v21 = v43;
        sub_23870F694(a4, v43, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        v22 = sub_2384A3F7C(v21, v12);
        sub_23870F348(v21);
        sub_23870F348(v12);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v47 = a1;
      }

      while (a4 < v19 && a2 < v44);
    }
  }

LABEL_59:
  sub_238709038(&v47, &v46, &v45, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
}

uint64_t sub_238709038(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_238709120(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238759D30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_238710C38(&qword_27DF0B0C8, MEMORY[0x277CC7C98]);
  v36 = a2;
  v13 = sub_23875E950();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_238710C38(&qword_27DF0B0E8, MEMORY[0x277CC7C98]);
      v23 = sub_23875E9E0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_23870BB5C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_238709400(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238758680();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_238710C38(&qword_27DF0B0F0, MEMORY[0x277CC6F70]);
  v36 = a2;
  v13 = sub_23875E950();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_238710C38(&qword_27DF09538, MEMORY[0x277CC6F70]);
      v23 = sub_23875E9E0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_23870BE24(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2387096E0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23875BCB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_238710C38(&qword_27DF0A200, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_23875E950();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_238710C38(&qword_27DF0A788, MEMORY[0x277CC95F0]);
      v23 = sub_23875E9E0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_23870C0EC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2387099C0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238758F50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_238710C38(&qword_27DF11878, MEMORY[0x277CC7678]);
  v36 = a2;
  v13 = sub_23875E950();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_238710C38(&qword_27DF0D430, MEMORY[0x277CC7678]);
      v23 = sub_23875E9E0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_23870C3B4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_238709CA0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238757AD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_238710C38(&qword_27DF0B168, MEMORY[0x277CC6B60]);
  v36 = a2;
  v13 = sub_23875E950();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_238710C38(&qword_27DF0CA28, MEMORY[0x277CC6B60]);
      v23 = sub_23875E9E0();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_23870C67C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_238709FC8(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_23875F3B0();

    if (v17)
    {

      sub_238449184(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_23875F3A0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_23870A38C(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_23870B658(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_23870BAD8(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_238449184(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_23875F1A0();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_23875F1B0();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_23870C944(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_23870A23C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_23875F700();
  sub_23875EB30();
  v9 = sub_23875F760();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_23875F630() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_23870CAD4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_23870A38C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_23875F440();
    v24 = v10;
    sub_23875F360();
    if (sub_23875F3D0())
    {
      sub_238449184(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_23870B658(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_23875F1A0();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_23875F3D0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_23870A58C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_238759D30();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14E90, &unk_238782460);
  result = sub_23875F430();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_238710C38(&qword_27DF0B0C8, MEMORY[0x277CC7C98]);
      result = sub_23875E950();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_23870A8E8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_238758680();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14EA0, &qword_238782470);
  result = sub_23875F430();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_238710C38(&qword_27DF0B0F0, MEMORY[0x277CC6F70]);
      result = sub_23875E950();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_23870AC44(uint64_t a1)
{
  v2 = v1;
  v41 = sub_23875BCB0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F48, &qword_2387825A8);
  result = sub_23875F430();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_238710C38(&qword_27DF0A200, MEMORY[0x277CC95F0]);
      result = sub_23875E950();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_23870AFA0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_238758F50();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F38, &qword_238782598);
  result = sub_23875F430();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_238710C38(&qword_27DF11878, MEMORY[0x277CC7678]);
      result = sub_23875E950();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_23870B2FC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_238757AD0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F60, &qword_238782608);
  result = sub_23875F430();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_238710C38(&qword_27DF0B168, MEMORY[0x277CC6B60]);
      result = sub_23875E950();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_23870B658(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_23875F430();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_23875F1A0();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_23870B878(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FC8, &qword_2387826E8);
  result = sub_23875F430();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_23875F700();
      sub_23875EB30();
      result = sub_23875F760();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_23870BAD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_23875F1A0();
  v5 = -1 << *(a2 + 32);
  result = sub_23875F340();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_23870BB5C(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_238759D30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23870A58C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_23870CCA4(MEMORY[0x277CC7C98], &qword_27DF14E90, &unk_238782460);
      goto LABEL_12;
    }

    sub_23870D178(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_238710C38(&qword_27DF0B0C8, MEMORY[0x277CC7C98]);
  v16 = sub_23875E950();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_238710C38(&qword_27DF0B0E8, MEMORY[0x277CC7C98]);
      v24 = sub_23875E9E0();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23875F670();
  __break(1u);
  return result;
}

uint64_t sub_23870BE24(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_238758680();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23870A8E8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23870CCA4(MEMORY[0x277CC6F70], &qword_27DF14EA0, &qword_238782470);
      goto LABEL_12;
    }

    sub_23870D494(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_238710C38(&qword_27DF0B0F0, MEMORY[0x277CC6F70]);
  v15 = sub_23875E950();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_238710C38(&qword_27DF09538, MEMORY[0x277CC6F70]);
      v23 = sub_23875E9E0();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23875F670();
  __break(1u);
  return result;
}

uint64_t sub_23870C0EC(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_23875BCB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23870AC44(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_23870CCA4(MEMORY[0x277CC95F0], &qword_27DF14F48, &qword_2387825A8);
      goto LABEL_12;
    }

    sub_23870D7B0(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_238710C38(&qword_27DF0A200, MEMORY[0x277CC95F0]);
  v16 = sub_23875E950();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_238710C38(&qword_27DF0A788, MEMORY[0x277CC95F0]);
      v24 = sub_23875E9E0();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23875F670();
  __break(1u);
  return result;
}

uint64_t sub_23870C3B4(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_238758F50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23870AFA0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_23870CCA4(MEMORY[0x277CC7678], &qword_27DF14F38, &qword_238782598);
      goto LABEL_12;
    }

    sub_23870DACC(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_238710C38(&qword_27DF11878, MEMORY[0x277CC7678]);
  v16 = sub_23875E950();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_238710C38(&qword_27DF0D430, MEMORY[0x277CC7678]);
      v24 = sub_23875E9E0();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23875F670();
  __break(1u);
  return result;
}

uint64_t sub_23870C67C(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_238757AD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23870B2FC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_23870CCA4(MEMORY[0x277CC6B60], &qword_27DF14F60, &qword_238782608);
      goto LABEL_12;
    }

    sub_23870DDE8(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_238710C38(&qword_27DF0B168, MEMORY[0x277CC6B60]);
  v16 = sub_23875E950();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_238710C38(&qword_27DF0CA28, MEMORY[0x277CC6B60]);
      v24 = sub_23875E9E0();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23875F670();
  __break(1u);
  return result;
}

void sub_23870C944(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_23870B658(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_23870CEDC(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_23870E104(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_23875F1A0();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_238449184(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_23875F1B0();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_23875F670();
  __break(1u);
}

uint64_t sub_23870CAD4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_23870B878(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_23870D01C();
      goto LABEL_16;
    }

    sub_23870E310(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_23875F700();
  sub_23875EB30();
  result = sub_23875F760();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_23875F630();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_23875F670();
  __break(1u);
  return result;
}

void *sub_23870CCA4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_23875F420();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

id sub_23870CEDC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23875F420();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_23870D01C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FC8, &qword_2387826E8);
  v2 = *v0;
  v3 = sub_23875F420();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_23870D178(uint64_t a1)
{
  v2 = v1;
  v37 = sub_238759D30();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14E90, &unk_238782460);
  v10 = sub_23875F430();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_238710C38(&qword_27DF0B0C8, MEMORY[0x277CC7C98]);
      result = sub_23875E950();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23870D494(uint64_t a1)
{
  v2 = v1;
  v37 = sub_238758680();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14EA0, &qword_238782470);
  v10 = sub_23875F430();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_238710C38(&qword_27DF0B0F0, MEMORY[0x277CC6F70]);
      result = sub_23875E950();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23870D7B0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_23875BCB0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F48, &qword_2387825A8);
  v10 = sub_23875F430();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_238710C38(&qword_27DF0A200, MEMORY[0x277CC95F0]);
      result = sub_23875E950();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23870DACC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_238758F50();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F38, &qword_238782598);
  v10 = sub_23875F430();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_238710C38(&qword_27DF11878, MEMORY[0x277CC7678]);
      result = sub_23875E950();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23870DDE8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_238757AD0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F60, &qword_238782608);
  v10 = sub_23875F430();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_238710C38(&qword_27DF0B168, MEMORY[0x277CC6B60]);
      result = sub_23875E950();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23870E104(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_23875F430();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_23875F1A0();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_23870E310(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14FC8, &qword_2387826E8);
  result = sub_23875F430();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_23875F700();

      sub_23875EB30();
      result = sub_23875F760();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_23870E548(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (sub_238518A64(a1, a3))
  {
    if (a2)
    {
      v6 = 0x63697373616C63;
    }

    else
    {
      v6 = 1818845549;
    }

    if (a2)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (a4)
    {
      v8 = 0x63697373616C63;
    }

    else
    {
      v8 = 1818845549;
    }

    if (a4)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    if (v6 == v8 && v7 == v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_23875F630();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_23870E600(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v39 = *(v5 + 80);
  v11 = *(v5 + 72);
  v41 = (v39 + 32) & ~v39;
  v12 = a1 + v41;
  v38 = xmmword_2387632F0;
  v42 = v6;
  v40 = v11;
  while (1)
  {
    sub_23870F694(v12, v8, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    v15 = *(v8 + 8);
    v16 = *(v8 + 9);

    v18 = sub_23853B46C(v15, v16);
    v19 = v9[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v9[3] < v21)
    {
      sub_238548C74(v21, 1);
      v9 = v43;
      v23 = sub_23853B46C(v15, v16);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    if (v22)
    {

      v25 = v9[7];
      sub_23870F6FC(v8, v42, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_238498610(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_238498610(v28 > 1, v29 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v26[2] = v29 + 1;
      v13 = v26 + v41 + v29 * v40;
      v14 = v40;
      sub_23870F6FC(v42, v13, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF28, &unk_238767540);
      v30 = v41;
      v31 = swift_allocObject();
      *(v31 + 16) = v38;
      sub_23870F6FC(v8, v31 + v30, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      v9[(v18 >> 6) + 8] |= 1 << v18;
      v32 = (v9[6] + 16 * v18);
      *v32 = v15;
      v32[1] = v16;
      *(v9[7] + 8 * v18) = v31;
      v33 = v9[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_18;
      }

      v9[2] = v35;
      v14 = v40;
    }

    v12 += v14;
    if (!--v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_23875F680();
  __break(1u);
  return result;
}

size_t sub_23870E94C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EB18, &unk_238770F50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v110 = &v107 - v8;
  v9 = sub_238759D30();
  v111 = *(v9 - 8);
  v10 = *(v111 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v107 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v107 - v18;
  v126 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v118 = *(v126 - 8);
  v20 = *(v118 + 64);
  MEMORY[0x28223BE20](v126);
  v107 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v107 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v107 - v26;
  v117 = a3 & 1;
  v28 = sub_2387025A8(a1, v117);
  v125 = 0;

  if (v28[2])
  {

LABEL_3:
    v29 = v125;
    goto LABEL_26;
  }

  v30 = v111;
  v116 = v27;
  v124 = v24;

  if (a2 >> 62)
  {
    v31 = sub_23875F3A0();
    if (v31)
    {
      goto LABEL_6;
    }

LABEL_48:

    v28 = MEMORY[0x277D84F90];
    goto LABEL_3;
  }

  v31 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_48;
  }

LABEL_6:
  v129[0] = MEMORY[0x277D84F90];
  result = sub_2385FECC0(0, v31 & ~(v31 >> 63), 0);
  if (v31 < 0)
  {
    __break(1u);
    return result;
  }

  v33 = 0;
  v112 = a2 & 0xC000000000000001;
  v123 = v129[0];
  v108 = a2 + 32;
  v109 = v30 + 16;
  v34 = (v30 + 8);
  v113 = v31;
  v114 = v19;
  v35 = v124;
  v115 = a2;
  do
  {
    v122 = v33;
    if (v112)
    {
      v36 = MEMORY[0x23EE63F70]();
    }

    else
    {
      v36 = *(v108 + 8 * v33);
    }

    v37 = v36;
    v127 = v36;
    v38 = v126;
    v39 = *(v126 + 32);
    v40 = sub_23875B940();
    (*(*(v40 - 8) + 56))(&v35[v39], 1, 1, v40);
    v41 = v35;
    v42 = [v37 messageID];
    v43 = sub_23875EA80();
    v45 = v44;

    v41[8] = v43;
    v41[9] = v45;
    v46 = [v127 dateSent];
    v47 = v41 + *(v38 + 28);
    sub_23875BBE0();

    v48 = v114;
    sub_238759670();
    sub_2384A475C(v48, v41 + v39);
    v49 = [v127 senderDomain];
    v50 = sub_23875EA80();
    v52 = v51;

    v53 = (v41 + *(v38 + 36));
    *v53 = v50;
    v53[1] = v52;
    v54 = [v127 fromEmailAddress];
    v55 = sub_23875EA80();
    v57 = v56;

    v41[10] = v55;
    v41[11] = v57;
    v58 = v127;
    v59 = [v127 fromEmailAddress];
    v60 = sub_23875EA80();
    v120 = v61;
    v121 = v60;

    v62 = [v58 fromDisplayName];
    if (v62)
    {
      v63 = v62;
      v119 = sub_23875EA80();
      v65 = v64;
    }

    else
    {
      v119 = 0;
      v65 = 0;
    }

    v66 = v125;
    v67 = [v58 subject];
    if (v67)
    {
      v68 = v67;
      v69 = sub_23875EA80();
      v71 = v70;
    }

    else
    {
      v69 = 0;
      v71 = 0;
    }

    v72 = v124;
    v73 = v120;
    *v124 = v121;
    v72[1] = v73;
    v72[2] = v119;
    v72[3] = v65;
    v72[4] = v69;
    v72[5] = v71;
    *(v72 + 56) = 2;
    v74 = sub_238759680();
    v75 = sub_23851EAE0(sub_2384A68C0, 0, v74);
    v125 = v66;

    v76 = *(v75 + 16);
    v77 = sub_238710C38(&qword_27DF0B0C8, MEMORY[0x277CC7C98]);
    v78 = MEMORY[0x23EE63960](v76, v9, v77);
    v128 = v78;
    v79 = *(v75 + 16);
    if (v79)
    {
      v80 = *(v111 + 80);
      v121 = v75;
      v81 = v75 + ((v80 + 32) & ~v80);
      v82 = *(v111 + 72);
      v83 = *(v111 + 16);
      do
      {
        v83(v12, v81, v9);
        sub_238709120(v15, v12);
        (*v34)(v15, v9);
        v81 += v82;
        --v79;
      }

      while (v79);

      v84 = v128;
    }

    else
    {
      v84 = v78;
    }

    v85 = v116;
    v86 = v126;
    v87 = v124;
    *(v124 + *(v126 + 40)) = v84;
    v35 = v87;
    *(v87 + *(v86 + 44)) = v117;
    *(v87 + *(v86 + 48)) = 4;
    sub_23870F6FC(v87, v85, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    v88 = v123;
    v129[0] = v123;
    v90 = *(v123 + 16);
    v89 = *(v123 + 24);
    if (v90 >= v89 >> 1)
    {
      sub_2385FECC0(v89 > 1, v90 + 1, 1);
      v35 = v124;
      v88 = v129[0];
    }

    v91 = v122 + 1;
    *(v88 + 16) = v90 + 1;
    v92 = (*(v118 + 80) + 32) & ~*(v118 + 80);
    v123 = v88;
    sub_23870F6FC(v85, v88 + v92 + *(v118 + 72) * v90, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    v33 = v91;
  }

  while (v91 != v113);

  v29 = v125;
  v28 = v123;
LABEL_26:
  v93 = sub_23870E600(v28);
  v127 = v29;

  swift_getKeyPath();
  v94 = 1 << *(v93 + 32);
  v95 = -1;
  if (v94 < 64)
  {
    v95 = ~(-1 << v94);
  }

  v96 = v95 & *(v93 + 64);
  v97 = (v94 + 63) >> 6;
  v98 = (v118 + 48);

  v99 = 0;
  v100 = MEMORY[0x277D84F90];
  while (1)
  {
    v101 = v99;
    if (!v96)
    {
      break;
    }

LABEL_33:
    v102 = __clz(__rbit64(v96));
    v96 &= v96 - 1;
    v129[0] = *(*(v93 + 56) + ((v99 << 9) | (8 * v102)));

    v103 = v110;
    swift_getAtKeyPath();

    if ((*v98)(v103, 1, v126) == 1)
    {
      sub_238439884(v103, &qword_27DF0EB18, &unk_238770F50);
    }

    else
    {
      sub_23870F6FC(v103, v107, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_238498610(0, v100[2] + 1, 1, v100);
      }

      v105 = v100[2];
      v104 = v100[3];
      if (v105 >= v104 >> 1)
      {
        v100 = sub_238498610(v104 > 1, v105 + 1, 1, v100);
      }

      v100[2] = v105 + 1;
      sub_23870F6FC(v107, v100 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v105, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
    }
  }

  while (1)
  {
    v99 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v99 >= v97)
    {
      break;
    }

    v96 = *(v93 + 64 + 8 * v99);
    ++v101;
    if (v96)
    {
      goto LABEL_33;
    }
  }

  if (v100[2])
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_42:
      v106 = v100[2];
      v129[0] = v100 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
      v129[1] = v106;
      sub_238706978(v129);
      return v100;
    }

LABEL_46:
    v100 = sub_23852F0F0(v100);
    goto LABEL_42;
  }

  return 0;
}

uint64_t sub_23870F348(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23870F45C()
{
  result = qword_27DF14EC8;
  if (!qword_27DF14EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14EC0, &qword_238782490);
    sub_23870F4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14EC8);
  }

  return result;
}

unint64_t sub_23870F4F4()
{
  result = qword_27DF14ED0;
  if (!qword_27DF14ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14ED8, &unk_238782498);
    sub_238710C38(&qword_27DF14EE0, type metadata accessor for OrderDetailsRelatedEmailView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14ED0);
  }

  return result;
}

unint64_t sub_23870F5B0()
{
  result = qword_27DF14EF0;
  if (!qword_27DF14EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14EA8, &qword_238782478);
    sub_23843A3E8(&qword_27DF14EF8, &qword_27DF14F00, &qword_2387824E0);
    sub_23843A3E8(&qword_27DF09C60, &qword_27DF09C20, &qword_2387711C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14EF0);
  }

  return result;
}

uint64_t sub_23870F694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23870F6FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_34()
{
  v1 = (type metadata accessor for AllRelatedEmailsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23875C600();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23870F8B8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AllRelatedEmailsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_23870F944()
{
  result = qword_27DF14F58;
  if (!qword_27DF14F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14F18, &qword_2387824F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14EB8, &qword_238782488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14EB0, &qword_238782480);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14EA8, &qword_238782478);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14EE8, &qword_2387824D8);
    sub_23870F5B0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14F08, &unk_2387824E8);
    sub_23843A3E8(&qword_27DF14F10, &qword_27DF14F08, &unk_2387824E8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2384397A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14F58);
  }

  return result;
}

uint64_t sub_23870FB60(uint64_t a1)
{
  v2 = sub_238758520();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = &v43 - v7;
  v8 = MEMORY[0x277D84F98];
  v55 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v11 = *(v6 + 16);
  v10 = v6 + 16;
  v45 = *(v10 + 64);
  v12 = *(v10 + 56);
  v48 = (v45 + 32) & ~v45;
  v49 = v11;
  v13 = a1 + v48;
  v52 = (v10 + 16);
  v44 = xmmword_2387632F0;
  v46 = v2;
  v47 = v10;
  v51 = v12;
  while (1)
  {
    v53 = v9;
    v15 = v10;
    v49(v54, v13, v2);
    v19 = sub_238758510();
    v21 = v20;
    v23 = sub_23853B46C(v19, v20);
    v24 = v8[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v8[3] < v26)
    {
      sub_238548C88(v26, 1);
      v8 = v55;
      v28 = sub_23853B46C(v19, v21);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_19;
      }

      v23 = v28;
    }

    if (v27)
    {

      v30 = v8[7];
      v31 = *v52;
      (*v52)(v50, v54, v2);
      v32 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_23849865C(0, v32[2] + 1, 1, v32);
        *(v30 + 8 * v23) = v32;
      }

      v35 = v32[2];
      v34 = v32[3];
      if (v35 >= v34 >> 1)
      {
        v32 = sub_23849865C(v34 > 1, v35 + 1, 1, v32);
        *(v30 + 8 * v23) = v32;
      }

      v15 = v47;
      v14 = v48;
      v32[2] = v35 + 1;
      v16 = v51;
      v17 = v32 + v14 + v35 * v51;
      v2 = v46;
      v18 = v53;
      v31(v17, v50, v46);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AFB8, &unk_238767600);
      v36 = v48;
      v37 = swift_allocObject();
      *(v37 + 16) = v44;
      (*v52)((v37 + v36), v54, v2);
      v8[(v23 >> 6) + 8] |= 1 << v23;
      v38 = (v8[6] + 16 * v23);
      *v38 = v19;
      v38[1] = v21;
      *(v8[7] + 8 * v23) = v37;
      v39 = v8[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_18;
      }

      v8[2] = v41;
      v16 = v51;
      v18 = v53;
    }

    v13 += v16;
    v9 = v18 - 1;
    v10 = v15;
    if (!v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_23875F680();
  __break(1u);
  return result;
}

char *sub_23870FED4(uint64_t a1, int a2)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v85 = &v78 - v5;
  v84 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v86 = *(v84 - 8);
  v6 = *(v86 + 64);
  MEMORY[0x28223BE20](v84);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14F68, &qword_238782610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v78 - v11;
  v88 = sub_238758520();
  v13 = *(v88 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v88);
  v83 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v82 = &v78 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - v19;
  MEMORY[0x28223BE20](v21);
  v90 = &v78 - v22;
  v23 = sub_23870FB60(a1);

  KeyPath = swift_getKeyPath();
  v92 = v23;
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 64);
  v28 = (v25 + 63) >> 6;
  v29 = (v13 + 48);
  v87 = v13;
  v89 = (v13 + 32);

  v30 = 0;
  v80 = MEMORY[0x277D84F90];
  while (1)
  {
    v31 = v30;
    if (!v27)
    {
      break;
    }

LABEL_8:
    v32 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v93[0] = *(*(v92 + 7) + ((v30 << 9) | (8 * v32)));

    swift_getAtKeyPath();

    if ((*v29)(v12, 1, v88) == 1)
    {
      sub_238439884(v12, &qword_27DF14F68, &qword_238782610);
    }

    else
    {
      v81 = *v89;
      (v81)(v90, v12, v88);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_23849865C(0, v80[2] + 1, 1, v80);
      }

      v34 = v80[2];
      v33 = v80[3];
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v78 = v34 + 1;
        v37 = sub_23849865C(v33 > 1, v34 + 1, 1, v80);
        v35 = v78;
        v80 = v37;
      }

      v36 = v80;
      v80[2] = v35;
      (v81)(v36 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v34, v90, v88);
    }
  }

  while (1)
  {
    v30 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v30 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v30);
    ++v31;
    if (v27)
    {
      goto LABEL_8;
    }
  }

  v93[0] = MEMORY[0x277D84F90];
  v38 = v80;
  v39 = v80[2];
  if (v39)
  {
    v40 = v88;
    v41 = *(v87 + 16);
    v42 = v80 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v90 = *(v87 + 72);
    KeyPath = v41;
    LODWORD(v89) = v79 & 1;
    v92 = (v87 + 16);
    v43 = (v87 + 8);
    do
    {
      KeyPath(v20, v42, v40);
      v44 = sub_238758480();
      MEMORY[0x28223BE20](v44);
      *(&v78 - 2) = v20;
      *(&v78 - 8) = v89;
      v45 = sub_23857F7D0(sub_23871073C, (&v78 - 4), v44);

      (*v43)(v20, v40);
      sub_238569AF8(v45);
      v42 = &v90[v42];
      --v39;
    }

    while (v39);
    v20 = v93[0];
    v38 = v80;
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v46 = v88;
  if (!*(v20 + 2))
  {
    v78 = 0;

    v48 = v38[2];
    if (v48)
    {
      v93[0] = MEMORY[0x277D84F90];
      sub_2385FECC0(0, v48, 0);
      v20 = v93[0];
      v49 = *(v87 + 16);
      v50 = v38 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
      v90 = *(v87 + 72);
      KeyPath = v49;
      v87 += 16;
      v89 = (v87 - 8);
      LODWORD(v81) = v79 & 1;
      do
      {
        v92 = v20;
        v51 = v82;
        v52 = KeyPath;
        KeyPath(v82, v50, v46);
        v53 = v83;
        v52(v83, v51, v46);
        v54 = v84;
        v55 = *(v84 + 32);
        v56 = sub_23875B940();
        (*(*(v56 - 8) + 56))(&v8[v55], 1, 1, v56);
        *(v8 + 8) = sub_238758510();
        *(v8 + 9) = v57;
        v58 = &v8[v54[7]];
        sub_238758500();
        v59 = v85;
        sub_2387583A0();
        sub_2384A475C(v59, &v8[v55]);
        v60 = sub_238758490();
        v61 = &v8[v54[9]];
        *v61 = v60;
        v61[1] = v62;
        *(v8 + 10) = sub_2387584C0();
        *(v8 + 11) = v63;
        v64 = sub_2387584C0();
        v66 = v65;
        v67 = sub_2387584B0();
        v69 = v68;
        v70 = sub_2387584F0();
        *v8 = v64;
        *(v8 + 1) = v66;
        *(v8 + 2) = v67;
        *(v8 + 3) = v69;
        v46 = v88;
        *(v8 + 4) = v70;
        *(v8 + 5) = v71;
        v8[56] = 2;
        v72 = sub_2387584D0();
        v73 = *v89;
        (*v89)(v53, v46);
        v73(v51, v46);
        *&v8[v54[10]] = v72;
        v8[v54[11]] = v81;
        v74 = v54[12];
        v20 = v92;
        v8[v74] = 4;
        v93[0] = v20;
        v76 = *(v20 + 2);
        v75 = *(v20 + 3);
        if (v76 >= v75 >> 1)
        {
          sub_2385FECC0(v75 > 1, v76 + 1, 1);
          v20 = v93[0];
        }

        *(v20 + 2) = v76 + 1;
        sub_23870F6FC(v8, &v20[((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v76], type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        v50 = &v90[v50];
        --v48;
      }

      while (v48);
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    if (!*(v20 + 2))
    {
      goto LABEL_32;
    }

LABEL_22:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_23:
      v47 = *(v20 + 2);
      v93[0] = &v20[(*(v86 + 80) + 32) & ~*(v86 + 80)];
      v93[1] = v47;
      sub_238706978(v93);
      return v20;
    }

LABEL_35:
    v20 = sub_23852F0F0(v20);
    goto LABEL_23;
  }

  if (*(v20 + 2))
  {
    goto LABEL_22;
  }

LABEL_32:

  return 0;
}

unint64_t sub_238710774()
{
  result = qword_27DF14FA0;
  if (!qword_27DF14FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14F88, &unk_238782668);
    sub_23871082C();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14FA0);
  }

  return result;
}

unint64_t sub_23871082C()
{
  result = qword_27DF14FA8;
  if (!qword_27DF14FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14F98, &qword_238782678);
    sub_2387108E4();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14FA8);
  }

  return result;
}

unint64_t sub_2387108E4()
{
  result = qword_27DF14FB0;
  if (!qword_27DF14FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14FB8, &unk_2387826B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF08EA8, &unk_238761D30);
    sub_23843A3E8(&qword_27DF14F90, &qword_27DF08EA8, &unk_238761D30);
    swift_getOpaqueTypeConformance2();
    sub_23870F4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14FB0);
  }

  return result;
}

uint64_t sub_2387109EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2384494A4;

  return sub_2387043E0(v2, v3, v4, v5);
}

uint64_t objectdestroy_49Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_238710B20()
{
  result = qword_27DF14FF8;
  if (!qword_27DF14FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14FD0, &qword_2387826F0);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
    sub_23843A3E8(&qword_27DF09C60, &qword_27DF09C20, &qword_2387711C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14FF8);
  }

  return result;
}

uint64_t sub_238710C38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238710C80(void **a1)
{
  v2 = *(sub_238758680() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_238491594(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_238715378(v6, MEMORY[0x277CC6F70], sub_238715DF0, sub_2387154C8);
  *a1 = v3;
  return result;
}

uint64_t sub_238710D64(void **a1)
{
  v2 = *(sub_238759300() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2384915A8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_238715378(v6, MEMORY[0x277CC7840], sub_238717074, sub_238715B2C);
  *a1 = v3;
  return result;
}

uint64_t AppSettingsProvider.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AppSettingsProvider.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_238567F60;
}

uint64_t AppSettingsProvider.bundleIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t AppSettingsProvider.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id AppSettingsProvider.__allocating_init(bundleIdentifier:delegate:localizedTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return sub_23871872C(a1, a2, a3, a4, a5, v5);
}

id AppSettingsProvider.init(bundleIdentifier:delegate:localizedTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();

  return sub_2387187A4(a1, a2, a3, a4, a5, v5);
}

id AppSettingsProvider.init(bundleIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_23875EA50();

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  if (!v11)
  {
    sub_23875EA80();
    v11 = sub_23875EA50();
  }

  v12 = [v4 initWithBundleIdentifier:v6 delegate:a3 localizedTitle:v11];

  swift_unknownObjectRelease();
  return v12;
}

void AppSettingsProvider.specifiers.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v52 - v4;
  v6 = sub_238758850();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_authorizationStateManager];
  v12 = &v1[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier];
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];

  sub_238758830();
  v15 = sub_23875A410();

  (*(v7 + 8))(v10, v6);
  if (!v15)
  {
    return;
  }

  v16 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_storeCoordinator;
  if (*&v1[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_storeCoordinator])
  {
    v17 = *&v1[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_storeCoordinator];

    sub_23875AA50();
  }

  v18 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountSpecifiers;
  v19 = *&v1[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountSpecifiers];
  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v19 < 0)
  {
    v50 = *&v1[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountSpecifiers];
  }

  if (!sub_23875F3A0())
  {
LABEL_6:
    v20 = sub_23875ED80();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    sub_23875ED50();
    v21 = v1;
    v22 = sub_23875ED40();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v21;
    sub_2386C3BA4(0, 0, v5, &unk_238782760, v23);
  }

LABEL_7:
  if (*&v1[v16])
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_23875AA50();
  }

  v25 = *&v1[v18];
  if (!(v25 >> 62))
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_11:
    if (*&v1[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_localizedTitle + 8])
    {
      v26 = *&v1[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_localizedTitle];
      v27 = objc_opt_self();
      v28 = sub_23875EA50();
      v29 = [v27 groupSpecifierWithName_];

      if (v29)
      {
LABEL_15:
        v32 = *v12;
        v33 = v12[1];
        objc_allocWithZone(MEMORY[0x277CC1E70]);

        v34 = sub_2386CB5C4(v32, v33, 0);
        if (v34)
        {
          v35 = v34;
          v36 = [v34 localizedName];
          v37 = sub_23875EA80();
          v39 = v38;

          if (qword_2814F0880 != -1)
          {
            swift_once();
          }

          v40 = qword_2814F1B90;
          v41 = sub_23875EA50();
          v42 = sub_23875EA50();
          v43 = sub_23875EA50();
          v44 = [v40 localizedStringForKey:v41 value:v42 table:v43];

          sub_23875EA80();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_2387632F0;
          *(v45 + 56) = MEMORY[0x277D837D0];
          *(v45 + 64) = sub_238448C58();
          *(v45 + 32) = v37;
          *(v45 + 40) = v39;
          sub_23875EAB0();

          v46 = sub_23875EA50();

          [v29 setProperty:v46 forKey:*MEMORY[0x277D3FF88]];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_238763E70;
        *(v47 + 32) = v29;
        v48 = *&v1[v18];
        v52[1] = v47;

        sub_238569B24(v49);
        return;
      }

      __break(1u);
    }

    v30 = objc_opt_self();
    v31 = sub_23875EA50();
    v29 = [v30 groupSpecifierWithID_];

    if (!v29)
    {
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

  if (v25 < 0)
  {
    v51 = *&v1[v18];
  }

  if (sub_23875F3A0())
  {
    goto LABEL_11;
  }
}

uint64_t sub_238711D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = sub_23875ED50();
  v4[7] = sub_23875ED40();
  v5 = swift_task_alloc();
  v4[8] = v5;
  *v5 = v4;
  v5[1] = sub_238711DB8;

  return sub_238712028();
}

uint64_t sub_238711DB8()
{
  v2 = v0;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 72) = v2;

  v7 = sub_23875ECE0();
  if (v2)
  {
    v8 = sub_238711FBC;
  }

  else
  {
    v8 = sub_238711F14;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_238711F14()
{
  v1 = v0[7];
  v2 = v0[5];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong providerReloadSpecifiers_];
    swift_unknownObjectRelease();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_238711FBC()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_238712028()
{
  v1[13] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v3 = sub_238757FD0();
  v1[15] = v3;
  v4 = *(v3 - 8);
  v1[16] = v4;
  v5 = *(v4 + 64) + 15;
  v1[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11620, &qword_238778B68);
  v1[18] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11628, &qword_238778B70) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v9 = sub_23875BCB0();
  v1[23] = v9;
  v10 = *(v9 - 8);
  v1[24] = v10;
  v11 = *(v10 + 64) + 15;
  v1[25] = swift_task_alloc();
  v12 = sub_238757FC0();
  v1[26] = v12;
  v13 = *(v12 - 8);
  v1[27] = v13;
  v14 = *(v13 + 64) + 15;
  v1[28] = swift_task_alloc();
  v15 = sub_238758A00();
  v1[29] = v15;
  v16 = *(v15 - 8);
  v1[30] = v16;
  v17 = *(v16 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v18 = sub_238758680();
  v1[33] = v18;
  v19 = *(v18 - 8);
  v1[34] = v19;
  v20 = *(v19 + 64) + 15;
  v1[35] = swift_task_alloc();
  v21 = sub_238759300();
  v1[36] = v21;
  v22 = *(v21 - 8);
  v1[37] = v22;
  v23 = *(v22 + 64) + 15;
  v1[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238712384, 0, 0);
}

uint64_t sub_238712384()
{
  v1 = v0[13];
  v0[11] = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountForSpecifier;
  v0[39] = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountForSpecifier;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v1 + v2) = MEMORY[0x277D84F98];

  sub_2387579D0();
  v0[40] = sub_2387579A0();
  v4 = *(MEMORY[0x277CC6748] + 4);
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_238712470;

  return MEMORY[0x282116E40]();
}

uint64_t sub_238712470(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(v4 + 336) = a1;
  *(v4 + 344) = v1;

  v7 = *(v3 + 320);

  if (v1)
  {
    v8 = sub_23871335C;
  }

  else
  {
    v8 = sub_2387125AC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void sub_2387125AC()
{
  v140 = v0;
  v1 = *(v0 + 336);
  v2 = *(v1 + 16);
  v97 = v2;
  if (v2)
  {
    v3 = *(v0 + 296);
    v4 = sub_238569FAC(v2, 0);
    v5 = sub_23856BD44(v139, &v4[(*(v3 + 80) + 32) & ~*(v3 + 80)], v2, v1);
    swift_bridgeObjectRetain_n();
    sub_238434840();
    if (v5 != v2)
    {
      goto LABEL_47;
    }
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v6 = *(v0 + 344);
  v138 = v4;
  sub_238710D64(&v138);
  if (v6)
  {

    return;
  }

  v7 = *(v0 + 336);

  v8 = v138;
  v104 = v138[2];
  if (!v104)
  {

    v14 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v96 = *(v0 + 336);
  v103 = v1;
  v9 = 0;
  v128 = (*(v0 + 104) + OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier);
  v10 = *(v0 + 296);
  v101 = v138 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v11 = *(v0 + 272);
  v12 = *(v0 + 240);
  v122 = (v12 + 8);
  v123 = (v12 + 104);
  v112 = (*(v0 + 216) + 8);
  v121 = (*(v0 + 192) + 8);
  v13 = *(v0 + 128);
  v119 = (v13 + 56);
  v120 = (v13 + 104);
  v105 = (v13 + 32);
  v111 = (v13 + 8);
  v117 = (v11 + 56);
  v124 = v11;
  v116 = (v11 + 8);
  v14 = MEMORY[0x277D84F90];
  v115 = *MEMORY[0x277CC7158];
  v110 = *MEMORY[0x277D3FE58];
  v102 = v10;
  v99 = v138;
  v100 = (v10 + 8);
  v108 = *MEMORY[0x277D40160];
  v109 = *MEMORY[0x277D40158];
  v114 = *MEMORY[0x277CC6D50];
  v107 = *MEMORY[0x277D3FF38];
  v113 = *(v0 + 144);
  v118 = (v13 + 48);
  while (1)
  {
    if (v9 >= v8[2])
    {
      goto LABEL_46;
    }

    v106 = v9;
    (*(v102 + 16))(*(v0 + 304), &v101[*(v102 + 72) * v9], *(v0 + 288));
    if (*(v103 + 16))
    {
      v15 = *(v0 + 336);
      v16 = sub_238547C90(*(v0 + 304));
      if (v17)
      {
        break;
      }
    }

    (*v100)(*(v0 + 304), *(v0 + 288));
LABEL_10:
    v9 = v106 + 1;
    v8 = v99;
    if (v106 + 1 == v104)
    {
      v81 = *(v0 + 336);

LABEL_40:
      v82 = *(v0 + 104);
      v83 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountSpecifiers;
      v84 = *(v82 + OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountSpecifiers);

      v85 = sub_23851A150(v14, v84);

      if ((v85 & 1) == 0)
      {
        v86 = *(v82 + v83);
        *(v82 + v83) = v14;
      }

      v87 = *(v0 + 304);
      v88 = *(v0 + 280);
      v90 = *(v0 + 248);
      v89 = *(v0 + 256);
      v91 = *(v0 + 224);
      v92 = *(v0 + 200);
      v94 = *(v0 + 168);
      v93 = *(v0 + 176);
      v130 = *(v0 + 160);
      v132 = *(v0 + 152);
      v134 = *(v0 + 136);
      v137 = *(v0 + 112);

      v95 = *(v0 + 8);

      v95();
      return;
    }
  }

  v139[0] = *(*(v96 + 56) + 8 * v16);
  swift_bridgeObjectRetain_n();
  sub_238710C80(v139);
  v18 = *(v0 + 304);

  v19 = v139[0];
  v20 = objc_opt_self();
  sub_2387592F0();
  v21 = sub_23875EA50();

  v127 = v20;
  v22 = [v20 groupSpecifierWithID_];

  if (!v22)
  {
    goto LABEL_49;
  }

  if (v97 >= 2)
  {
    v23 = *(v0 + 304);
    sub_2387592F0();
    v24 = sub_23875EA50();

    [v22 setName_];
  }

  v25 = v22;
  MEMORY[0x23EE63730]();
  if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v80 = *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23875EC90();
  }

  v98 = v25;
  sub_23875ECB0();
  v14 = *(v0 + 88);
  v26 = v19[2];
  swift_beginAccess();
  v126 = v26;
  if (!v26)
  {
LABEL_37:
    (*v100)(*(v0 + 304), *(v0 + 288));

    goto LABEL_10;
  }

  v27 = 0;
  v125 = v19;
  while (v27 < v19[2])
  {
    v28 = *(v0 + 104);
    v133 = v27;
    v29 = *(v124 + 16);
    v29(*(v0 + 280), v19 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v27, *(v0 + 264));
    sub_2387585B0();
    v30 = sub_23875EA50();

    v31 = [v127 preferenceSpecifierNamed:v30 target:v28 set:0 get:sel_accountLinked_ detail:0 cell:2 edit:0];

    if (!v31)
    {
      goto LABEL_48;
    }

    v131 = v29;
    v32 = *(v0 + 280);
    v34 = *(v0 + 248);
    v33 = *(v0 + 256);
    v35 = *(v0 + 232);
    [v31 setButtonAction_];
    sub_238758580();
    (*v123)(v34, v115, v35);
    sub_238718A90(&unk_27DF0B400, MEMORY[0x277CC7180]);
    sub_23875EC40();
    sub_23875EC40();
    v36 = *v122;
    (*v122)(v34, v35);
    v36(v33, v35);
    if (*(v0 + 352) == *(v0 + 354))
    {
      v37 = *(v0 + 280);
      v38 = *(v0 + 224);
      v39 = *(v0 + 208);
      *(v0 + 96) = sub_238449184(0, &qword_27DF15050, 0x277D3FB00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15058, &qword_2387827B8);
      [v31 setProperty:sub_23875F660() forKey:v110];
      swift_unknownObjectRelease();
      v40 = [objc_opt_self() secondaryLabelColor];
      [v31 setProperty:v40 forKey:v109];

      sub_2387585C0();
      sub_238757FB0();
      (*v112)(v38, v39);
      v41 = sub_23875EA50();

      [v31 setProperty:v41 forKey:v108];
    }

    v42 = *(v0 + 280);
    v43 = *(v0 + 200);
    v44 = *(v0 + 184);
    v129 = *(v0 + 176);
    v45 = *(v0 + 168);
    v46 = *(v0 + 152);
    v47 = *(v0 + 120);
    sub_2387585B0();
    v48 = sub_23875EA50();

    v49 = sub_23875EA50();
    [v31 setProperty:v48 forKey:v49];

    sub_238758640();
    v50 = sub_23875BC60();
    (*v121)(v43, v44);
    v51 = sub_23875EA50();
    [v31 setProperty:v50 forKey:v51];

    v52 = *v128;
    v53 = v128[1];

    v54 = sub_23875EA50();

    v55 = sub_23875EA50();
    [v31 setProperty:v54 forKey:v55];

    sub_2387585D0();
    (*v120)(v45, v114, v47);
    (*v119)(v45, 0, 1, v47);
    v56 = *(v113 + 48);
    sub_238718AD8(v129, v46);
    sub_238718AD8(v45, v46 + v56);
    v57 = *v118;
    v58 = (*v118)(v46, 1, v47);
    v59 = *(v0 + 120);
    v135 = v31;
    if (v58 == 1)
    {
      v60 = *(v0 + 176);
      sub_238439884(*(v0 + 168), &qword_27DF11628, &qword_238778B70);
      sub_238439884(v60, &qword_27DF11628, &qword_238778B70);
      if (v57(v46 + v56, 1, v59) == 1)
      {
        sub_238439884(*(v0 + 152), &qword_27DF11628, &qword_238778B70);
LABEL_32:
        v71 = sub_23875ECD0();
        [v135 setProperty:v71 forKey:v107];

        goto LABEL_33;
      }

      goto LABEL_30;
    }

    sub_238718AD8(*(v0 + 152), *(v0 + 160));
    v61 = v57(v46 + v56, 1, v59);
    v63 = *(v0 + 168);
    v62 = *(v0 + 176);
    v64 = *(v0 + 160);
    if (v61 == 1)
    {
      v65 = *(v0 + 120);
      sub_238439884(*(v0 + 168), &qword_27DF11628, &qword_238778B70);
      sub_238439884(v62, &qword_27DF11628, &qword_238778B70);
      (*v111)(v64, v65);
LABEL_30:
      sub_238439884(*(v0 + 152), &qword_27DF11620, &qword_238778B68);
      goto LABEL_33;
    }

    v66 = *(v0 + 152);
    v67 = *(v0 + 136);
    v68 = *(v0 + 120);
    (*v105)(v67, v46 + v56, v68);
    sub_238718A90(&qword_27DF11630, MEMORY[0x277CC6D60]);
    v69 = sub_23875E9E0();
    v70 = *v111;
    (*v111)(v67, v68);
    sub_238439884(v63, &qword_27DF11628, &qword_238778B70);
    sub_238439884(v62, &qword_27DF11628, &qword_238778B70);
    v70(v64, v68);
    sub_238439884(v66, &qword_27DF11628, &qword_238778B70);
    if (v69)
    {
      goto LABEL_32;
    }

LABEL_33:
    v72 = v135;
    MEMORY[0x23EE63730]();
    if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v79 = *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23875EC90();
    }

    v27 = v133 + 1;
    v73 = *(v0 + 312);
    v74 = *(v0 + 280);
    v75 = *(v0 + 264);
    v77 = *(v0 + 104);
    v76 = *(v0 + 112);
    sub_23875ECB0();
    v136 = v72;
    v78 = *(v0 + 88);
    v131(v76, v74, v75);
    (*v117)(v76, 0, 1, v75);
    swift_beginAccess();
    sub_2386C4464(v76, v136);
    swift_endAccess();
    (*v116)(v74, v75);
    v19 = v125;
    if (v126 == v133 + 1)
    {
      v14 = v78;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t sub_23871335C()
{
  v1 = v0[38];
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[28];
  v6 = v0[25];
  v8 = v0[21];
  v7 = v0[22];
  v10 = v0[19];
  v9 = v0[20];
  v14 = v0[17];
  v15 = v0[14];

  v11 = v0[1];
  v12 = v0[43];

  return v11();
}

uint64_t sub_23871345C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_23875ED80();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_23875ED50();

  v7 = sub_23875ED40();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_2386C3BA4(0, 0, v5, &unk_2387827C8, v8);
}

uint64_t sub_238713580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_23875ED50();
  *(v4 + 72) = sub_23875ED40();
  v6 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238713618, v6, v5);
}

uint64_t sub_238713618()
{
  v2 = v0[8];
  v1 = v0[9];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      [v6 providerReloadSpecifiers_];
      swift_unknownObjectRelease();
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_238713790(void *a1)
{
  v2 = v1;
  v113 = a1;
  v3 = sub_23875C1E0();
  v111 = *(v3 - 8);
  v112 = v3;
  v4 = *(v111 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v110 = &v97 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v102 = &v97 - v11;
  v12 = sub_23875BC40();
  v103 = *(v12 - 8);
  v104 = v12;
  v13 = *(v103 + 64);
  MEMORY[0x28223BE20](v12);
  v101 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23875BCB0();
  v107 = *(v15 - 8);
  v16 = *(v107 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_238758850();
  v106 = *(v19 - 8);
  v20 = *(v106 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v97 - v25;
  v27 = sub_2387587E0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v105 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_238758680();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v36 = *&v2[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_storeCoordinator];
  if (!v36)
  {
    sub_23875C120();
    v59 = sub_23875C1B0();
    v60 = sub_23875EFE0();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2383F8000, v59, v60, "Expected store coordinator", v61, 2u);
      MEMORY[0x23EE64DF0](v61, -1, -1);
    }

    (*(v111 + 8))(v6, v112);
    return 0;
  }

  v97 = v28;
  v98 = v27;
  v99 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v35;
  v108 = v33;
  v37 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountForSpecifier;
  swift_beginAccess();
  v38 = *&v2[v37];
  v39 = *(v38 + 16);
  v109 = v36;

  if (!v39 || (v40 = sub_238547BE0(v113), (v41 & 1) == 0))
  {
    swift_endAccess();
    v45 = v110;
    sub_23875C120();
    v46 = v113;
    v47 = v2;
    v48 = sub_23875C1B0();
    v49 = sub_23875EFE0();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v114 = v52;
      *v50 = 138412546;
      *(v50 + 4) = v46;
      *v51 = v46;
      *(v50 + 12) = 2080;
      v53 = *&v2[v37];
      sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
      sub_238718A28();
      v54 = v46;

      v55 = sub_23875E930();
      v57 = v56;

      v58 = sub_2384615AC(v55, v57, &v114);

      *(v50 + 14) = v58;
      _os_log_impl(&dword_2383F8000, v48, v49, "Inconsistent state for specifier: %@ dict: %s", v50, 0x16u);
      sub_238439884(v51, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v51, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x23EE64DF0](v52, -1, -1);
      MEMORY[0x23EE64DF0](v50, -1, -1);
    }

    (*(v111 + 8))(v45, v112);
    return 0;
  }

  (*(v100 + 16))(v99, *(v38 + 56) + *(v100 + 72) * v40, v108);
  swift_endAccess();
  v42 = &v2[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier];
  swift_beginAccess();
  v44 = *v42;
  v43 = *(v42 + 1);

  sub_238758830();
  sub_238758640();
  sub_23875AA60();
  v63 = v108;
  (*(v107 + 8))(v18, v15);
  (*(v106 + 8))(v22, v19);
  v65 = v97;
  v64 = v98;
  if ((*(v97 + 48))(v26, 1, v98) == 1)
  {
    sub_238439884(v26, &qword_27DF0B328, &qword_238768050);
    v66 = v63;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v67 = qword_2814F1B90;
    v68 = sub_23875EA50();
    v69 = sub_23875EA50();
    v70 = sub_23875EA50();
    v71 = [v67 localizedStringForKey:v68 value:v69 table:v70];

    v72 = sub_23875EA80();

    (*(v100 + 8))(v99, v66);
    return v72;
  }

  v73 = v105;
  (*(v65 + 32))(v105, v26, v64);
  if (sub_2387587D0())
  {
    v74 = v63;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v75 = qword_2814F1B90;
    v76 = sub_23875EA50();
    v77 = sub_23875EA50();
    v78 = sub_23875EA50();
    v79 = [v75 localizedStringForKey:v76 value:v77 table:v78];

    v72 = sub_23875EA80();

    (*(v65 + 8))(v73, v64);
    (*(v100 + 8))(v99, v74);
    return v72;
  }

  v80 = v102;
  sub_2387587B0();
  v82 = v103;
  v81 = v104;
  if ((*(v103 + 48))(v80, 1, v104) == 1)
  {

    (*(v65 + 8))(v73, v64);
    (*(v100 + 8))(v99, v63);
    sub_238439884(v80, &qword_27DF12E00, &unk_238763FC0);
    return 0;
  }

  v83 = v101;
  (*(v82 + 32))(v101, v80, v81);
  v84 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v84 setDateStyle_];
  [v84 setTimeStyle_];
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v85 = qword_2814F1B90;
  v86 = sub_23875EA50();
  v87 = sub_23875EA50();
  v88 = sub_23875EA50();
  v89 = [v85 localizedStringForKey:v86 value:v87 table:v88];

  sub_23875EA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_2387632F0;
  v91 = sub_23875BB40();
  v92 = [v84 stringFromDate_];

  v93 = sub_23875EA80();
  v95 = v94;

  *(v90 + 56) = MEMORY[0x277D837D0];
  *(v90 + 64) = sub_238448C58();
  *(v90 + 32) = v93;
  *(v90 + 40) = v95;
  v96 = sub_23875EAB0();

  (*(v82 + 8))(v83, v104);
  (*(v97 + 8))(v73, v98);
  (*(v100 + 8))(v99, v108);
  return v96;
}

id AppSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppSettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_238714698(uint64_t a1, uint64_t a2)
{
  v4 = sub_238757FC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2387585B0();
  v11 = v10;
  v44[3] = a2;
  if (v9 == sub_2387585B0() && v11 == v12)
  {

    goto LABEL_5;
  }

  v13 = sub_23875F630();

  if (v13)
  {
LABEL_5:
    v44[1] = v2;
    sub_2387585C0();
    v14 = sub_238757FB0();
    v16 = v15;
    v17 = *(v5 + 8);
    v17(v8, v4);
    v18 = sub_238718B48(4uLL, v14, v16);
    v44[0] = v19;
    v21 = v20;
    v23 = v22;

    sub_2387585C0();
    v24 = sub_238757FB0();
    v26 = v25;
    v17(v8, v4);
    v27 = sub_238718B48(4uLL, v24, v26);
    v29 = v28;
    v31 = v30;
    v33 = v32;

    if (v21 != v31 || v23 != v33 || v18 >> 16 != v27 >> 16 || v44[0] >> 16 != v29 >> 16)
    {
      v37 = sub_23875F5F0();

      return v37 & 1;
    }

LABEL_18:

    v37 = 0;
    return v37 & 1;
  }

  v38 = sub_2387585B0();
  v40 = v39;
  if (v38 == sub_2387585B0() && v40 == v41)
  {
    goto LABEL_18;
  }

  v43 = sub_23875F630();

  return v43 & 1;
}

uint64_t sub_238714984(void *a1)
{
  v2 = v1;
  v4 = sub_23875C1E0();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v56 - v9;
  v10 = sub_238758A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_238758680();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountForSpecifier;
  swift_beginAccess();
  v59 = v2;
  v21 = *(v2 + v20);
  if (!*(v21 + 16) || (v22 = sub_238547BE0(a1), (v23 & 1) == 0))
  {
    swift_endAccess();
    sub_23875C120();
    v27 = a1;
    v28 = sub_23875C1B0();
    v29 = sub_23875EFE0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_2383F8000, v28, v29, "Could not find account for specifier: %@ in handleAccountTap.", v30, 0xCu);
      sub_238439884(v31, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v31, -1, -1);
      MEMORY[0x23EE64DF0](v30, -1, -1);
    }

    (*(v57 + 8))(v7, v58);
LABEL_8:
    v26 = 55;
    goto LABEL_9;
  }

  (*(v16 + 16))(v19, *(v21 + 56) + *(v16 + 72) * v22, v15);
  swift_endAccess();
  sub_238758580();
  v24 = v11;
  v25 = (*(v11 + 88))(v14, v10);
  if (v25 != *MEMORY[0x277CC7158])
  {
    if (v25 == *MEMORY[0x277CC7170])
    {
      (*(v16 + 8))(v19, v15);
      v26 = 50;
      goto LABEL_9;
    }

    if (v25 == *MEMORY[0x277CC7178])
    {
      (*(v16 + 8))(v19, v15);
      v26 = 51;
      goto LABEL_9;
    }

    if (v25 == *MEMORY[0x277CC7168])
    {
      (*(v16 + 8))(v19, v15);
      v26 = 52;
      goto LABEL_9;
    }

    v50 = v56;
    sub_23875C120();
    v51 = sub_23875C1B0();
    v52 = sub_23875EFE0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = v52;
      v55 = v53;
      _os_log_impl(&dword_2383F8000, v51, v54, "Unknown account originType for analytics.", v53, 2u);
      MEMORY[0x23EE64DF0](v55, -1, -1);
    }

    (*(v57 + 8))(v50, v58);
    (*(v16 + 8))(v19, v15);
    (*(v24 + 8))(v14, v10);
    goto LABEL_8;
  }

  (*(v16 + 8))(v19, v15);
  v26 = 53;
LABEL_9:
  v33 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v35 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v36 = *MEMORY[0x277D38428];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v37;
  v38 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = sub_23844B4DC(v26);
  *(inited + 72) = v39;
  v40 = *MEMORY[0x277D384B8];
  *(inited + 80) = *MEMORY[0x277D384B8];
  *(inited + 88) = 0xD000000000000016;
  *(inited + 96) = 0x8000000238785020;
  v41 = v35;
  v42 = v38;
  v43 = v40;
  v44 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60[0] = v44;
  sub_2385C33E4(v33, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v60);

  v46 = *MEMORY[0x277D38568];
  v47 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238718A90(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v48 = sub_23875E910();

  [v47 subject:v46 sendEvent:v48];

  return sub_238715064(a1);
}

uint64_t sub_238715064(uint64_t a1)
{
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 navigationController];
      if (v8)
      {
        v9 = v8;
        type metadata accessor for SingleAccountSharingChoiceController();
        v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v10 setSpecifier_];
        if ([v9 _pk_settings_useStateDrivenNavigation])
        {
          [v9 _pk_settings_pushViewController_];
        }

        else
        {
          [v9 pushViewController:v10 animated:1];
        }

        return swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }

  sub_23875C120();
  v11 = sub_23875C1B0();
  v12 = sub_23875EFE0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2383F8000, v11, v12, "Could not navigate: Missing detail controller class, delegate, or navigation controller.", v13, 2u);
    MEMORY[0x23EE64DF0](v13, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_238715378(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_23875F5E0();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_23875ECA0();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_2387154C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v91 = sub_238757FC0();
  v8 = *(v91 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v80[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v90 = &v80[-v12];
  v13 = sub_238758680();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v95 = &v80[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v103 = &v80[-v17];
  v20.n128_f64[0] = MEMORY[0x28223BE20](v18);
  v22 = &v80[-v21];
  v82 = a2;
  if (a3 == a2)
  {
    return;
  }

  v23 = *a4;
  v25 = *(v19 + 16);
  v24 = v19 + 16;
  v26 = *(v24 + 56);
  v27 = (v8 + 8);
  v96 = (v24 - 8);
  v97 = v25;
  v98 = v24;
  v93 = (v24 + 16);
  v94 = v23;
  v28 = v23 + v26 * (a3 - 1);
  v92 = -v26;
  v29 = a1 - a3;
  v81 = v26;
  v30 = v23 + v26 * a3;
  v87 = v22;
  v88 = v13;
LABEL_7:
  v85 = v28;
  v86 = a3;
  v83 = v30;
  v84 = v29;
  v33 = v29;
  v104 = v28;
  while (1)
  {
    v102 = v33;
    v34 = v97;
    (v97)(v22, v30, v13, v20);
    v34(v103, v104, v13);
    v35 = sub_2387585B0();
    v37 = v36;
    if (v35 == sub_2387585B0() && v37 == v38)
    {
    }

    else
    {
      v39 = sub_23875F630();

      if ((v39 & 1) == 0)
      {
        v70 = sub_2387585B0();
        v72 = v71;
        v31 = v103;
        if (v70 == sub_2387585B0() && v72 == v73)
        {
          goto LABEL_5;
        }

        v69 = sub_23875F630();
        goto LABEL_32;
      }
    }

    v99 = v30;
    v40 = v90;
    sub_2387585C0();
    v41 = sub_238757FB0();
    v43 = v42;
    v44 = *v27;
    v45 = v91;
    (*v27)(v40, v91);
    v46 = v27;
    if ((v43 & 0x2000000000000000) != 0)
    {
      v47 = HIBYTE(v43) & 0xF;
    }

    else
    {
      v47 = v41 & 0xFFFFFFFFFFFFLL;
    }

    v48 = sub_23875EB60();
    if (v49)
    {
      v48 = 15;
    }

    if (4 * v47 < v48 >> 14)
    {
      break;
    }

    v50 = sub_23875EC00();
    v100 = v51;
    v101 = v52;
    v54 = v53;

    v55 = v89;
    sub_2387585C0();
    v56 = sub_238757FB0();
    v58 = v57;
    v44(v55, v45);
    if ((v58 & 0x2000000000000000) != 0)
    {
      v59 = HIBYTE(v58) & 0xF;
    }

    else
    {
      v59 = v56 & 0xFFFFFFFFFFFFLL;
    }

    v60 = sub_23875EB60();
    if (v61)
    {
      v60 = 15;
    }

    if (4 * v59 < v60 >> 14)
    {
      goto LABEL_38;
    }

    v62 = sub_23875EC00();
    v64 = v63;
    v66 = v65;
    v68 = v67;

    if (v54 == v66 && v101 == v68 && v50 >> 16 == v62 >> 16 && v100 >> 16 == v64 >> 16)
    {
      v22 = v87;
      v13 = v88;
      v31 = v103;
      v27 = v46;
LABEL_5:

      v32 = *v96;
      (*v96)(v31, v13);
      v32(v22, v13);
LABEL_6:
      a3 = v86 + 1;
      v28 = v85 + v81;
      v29 = v84 - 1;
      v30 = v83 + v81;
      if (v86 + 1 == v82)
      {
        return;
      }

      goto LABEL_7;
    }

    v69 = sub_23875F5F0();
    v22 = v87;
    v13 = v88;
    v31 = v103;
    v27 = v46;
    v30 = v99;
LABEL_32:

    v74 = *v96;
    (*v96)(v31, v13);
    v74(v22, v13);
    v75 = v102;
    if (v69)
    {
      if (!v94)
      {
        goto LABEL_39;
      }

      v76 = *v93;
      v77 = v95;
      (*v93)(v95, v30, v13);
      v78 = v104;
      swift_arrayInitWithTakeFrontToBack();
      v76(v78, v77, v13);
      v104 = v78 + v92;
      v30 += v92;
      v79 = __CFADD__(v75, 1);
      v33 = v75 + 1;
      if (!v79)
      {
        continue;
      }
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_238715B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_238759300();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v42 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = &v32 - v12;
  v15.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v14 + 16);
    v44 = v14 + 16;
    v18 = *(v14 + 72);
    v19 = (v14 + 8);
    v40 = (v14 + 32);
    v41 = v17;
    v20 = (v17 + v18 * (a3 - 1));
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v37 = v20;
    v38 = a3;
    v35 = v22;
    v36 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v45;
      v25 = v43;
      (v43)(v45, v22, v8, v15);
      v26 = v46;
      v25(v46, v23, v8);
      sub_238718A90(&unk_27DF15060, MEMORY[0x277CC7840]);
      v27 = sub_23875E9A0();
      v28 = *v19;
      (*v19)(v26, v8);
      v28(v24, v8);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v20 = &v37[v33];
        v21 = v36 - 1;
        v22 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v29 = *v40;
      v30 = v42;
      (*v40)(v42, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v29(v23, v30, v8);
      v23 += v39;
      v22 += v39;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_238715DF0(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v197 = a4;
  v193 = a1;
  v5 = sub_238757FC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v211 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v212 = &v191 - v10;
  MEMORY[0x28223BE20](v11);
  v202 = &v191 - v12;
  MEMORY[0x28223BE20](v13);
  v203 = &v191 - v14;
  v15 = sub_238758680();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v198 = &v191 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v217 = &v191 - v19;
  MEMORY[0x28223BE20](v20);
  v229 = &v191 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v191 - v23;
  MEMORY[0x28223BE20](v25);
  v209 = &v191 - v26;
  MEMORY[0x28223BE20](v27);
  v210 = &v191 - v28;
  MEMORY[0x28223BE20](v29);
  v34.n128_f64[0] = MEMORY[0x28223BE20](v30);
  v206 = a3;
  v35 = *(a3 + 8);
  v205 = v33;
  if (v35 < 1)
  {
    v37 = MEMORY[0x277D84F90];
LABEL_152:
    a3 = *v193;
    if (!*v193)
    {
      goto LABEL_198;
    }

    v6 = v37;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v183 = v6;
      goto LABEL_155;
    }

LABEL_192:
    v183 = sub_238490ED4(v6);
LABEL_155:
    v230 = v183;
    v6 = *(v183 + 2);
    v184 = v205;
    if (v6 >= 2)
    {
      while (*v206)
      {
        v185 = *&v183[16 * v6];
        v186 = v183;
        v187 = *&v183[16 * v6 + 24];
        v188 = v208;
        sub_238717A9C(&(*v206)[v184[9] * v185], &(*v206)[v184[9] * *&v183[16 * v6 + 16]], &(*v206)[v184[9] * v187], a3);
        v208 = v188;
        if (v188)
        {
          goto LABEL_166;
        }

        if (v187 < v185)
        {
          goto LABEL_185;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v186 = sub_238490ED4(v186);
        }

        if (v6 - 2 >= *(v186 + 2))
        {
          goto LABEL_186;
        }

        v189 = &v186[16 * v6];
        *v189 = v185;
        *(v189 + 1) = v187;
        v230 = v186;
        sub_238490E48(v6 - 1);
        v183 = v230;
        v6 = *(v230 + 2);
        v184 = v205;
        if (v6 <= 1)
        {
          goto LABEL_166;
        }
      }

      goto LABEL_196;
    }

    goto LABEL_166;
  }

  v191 = &v191 - v31;
  v192 = v32;
  v36 = 0;
  v222 = v33 + 1;
  v223 = v33 + 2;
  v213 = (v6 + 8);
  v220 = v33 + 4;
  v37 = MEMORY[0x277D84F90];
  v221 = v5;
  v219 = v15;
  v214 = v24;
  while (1)
  {
    v38 = v36 + 1;
    v199 = v37;
    v194 = v36;
    if (v36 + 1 >= v35)
    {
      v48 = v36 + 1;
      v84 = v197;
      goto LABEL_53;
    }

    v39 = v36;
    v207 = v35;
    v40 = *v206;
    v41 = v33[9];
    v42 = v33[2];
    v43 = v191;
    v226 = &(*v206)[v41 * v38];
    v42(v191, v34);
    v228 = v40;
    v44 = &v40[v41 * v39];
    v6 = v192;
    v215 = v42;
    (v42)(v192, v44, v15);
    v45 = v208;
    LODWORD(v218) = sub_238714698(v43, v6);
    v208 = v45;
    if (v45)
    {
      v190 = *v222;
      (*v222)(v6, v15);
      v190(v43, v15);
LABEL_166:

      return;
    }

    a3 = *v222;
    (*v222)(v6, v15);
    v204 = a3;
    (a3)(v43, v15);
    v46 = (v39 + 2);
    v47 = &v228[v41 * (v39 + 2)];
    v48 = v207;
    v216 = v41;
    v49 = v226;
    while (v48 != v46)
    {
      v227 = v47;
      v228 = v46;
      v51 = v215;
      (v215)(v210);
      v51(v209, v49, v15);
      v52 = sub_2387585B0();
      v54 = v53;
      if (v52 == sub_2387585B0() && v54 == v55)
      {

LABEL_15:
        v226 = v49;
        v57 = v203;
        sub_2387585C0();
        v6 = sub_238757FB0();
        a3 = v58;
        v59 = *v213;
        (*v213)(v57, v5);
        if ((a3 & 0x2000000000000000) != 0)
        {
          v60 = HIBYTE(a3) & 0xF;
        }

        else
        {
          v60 = v6 & 0xFFFFFFFFFFFFLL;
        }

        v61 = sub_23875EB60();
        if (v62)
        {
          v61 = 15;
        }

        if (4 * v60 < v61 >> 14)
        {
          goto LABEL_172;
        }

        v63 = sub_23875EC00();
        v224 = v64;
        v225 = v65;
        v67 = v66;

        v68 = v202;
        sub_2387585C0();
        v6 = sub_238757FB0();
        a3 = v69;
        v59(v68, v5);
        if ((a3 & 0x2000000000000000) != 0)
        {
          v70 = HIBYTE(a3) & 0xF;
        }

        else
        {
          v70 = v6 & 0xFFFFFFFFFFFFLL;
        }

        v71 = sub_23875EB60();
        if (v72)
        {
          v71 = 15;
        }

        if (4 * v70 < v71 >> 14)
        {
          goto LABEL_173;
        }

        v73 = sub_23875EC00();
        v75 = v74;
        v77 = v76;
        v79 = v78;

        if (v67 == v77 && v225 == v79 && v63 >> 16 == v73 >> 16 && v224 >> 16 == v75 >> 16)
        {
          a3 = 0;
        }

        else
        {
          a3 = sub_23875F5F0();
        }

        v5 = v221;
        v15 = v219;
        v24 = v214;
        v48 = v207;
        v41 = v216;
        v49 = v226;
        goto LABEL_9;
      }

      v56 = sub_23875F630();

      if (v56)
      {
        goto LABEL_15;
      }

      v80 = sub_2387585B0();
      v82 = v81;
      if (v80 == sub_2387585B0() && v82 == v83)
      {
        a3 = 0;
      }

      else
      {
        a3 = sub_23875F630();
      }

      v48 = v207;
LABEL_9:

      v6 = v222;
      v50 = v204;
      v204(v209, v15);
      v50(v210, v15);
      v46 = v228 + 1;
      v47 = &v227[v41];
      v49 += v41;
      if ((v218 ^ a3))
      {
        v48 = v228;
        break;
      }
    }

    v33 = v205;
    v84 = v197;
    v85 = v199;
    if ((v218 & 1) == 0)
    {
      goto LABEL_53;
    }

    if (v48 < v194)
    {
      goto LABEL_191;
    }

    if (v194 < v48)
    {
      v6 = v41 * (v48 - 1);
      v86 = v48 * v41;
      v207 = v48;
      v87 = v194;
      v88 = v194 * v41;
      do
      {
        if (v87 != --v48)
        {
          v90 = *v206;
          if (!*v206)
          {
            goto LABEL_195;
          }

          a3 = &v90[v88];
          v91 = *v220;
          (*v220)(v198, &v90[v88], v219, v85);
          if (v88 < v6 || a3 >= &v90[v86])
          {
            v89 = v219;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v89 = v219;
            if (v88 != v6)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v91(&v90[v6], v198, v89);
          v33 = v205;
          v84 = v197;
          v5 = v221;
          v85 = v199;
          v41 = v216;
        }

        ++v87;
        v6 -= v41;
        v86 -= v41;
        v88 += v41;
      }

      while (v87 < v48);
      v15 = v219;
      v24 = v214;
      v48 = v207;
    }

LABEL_53:
    v92 = v206[1];
    if (v48 < v92)
    {
      if (__OFSUB__(v48, v194))
      {
        goto LABEL_188;
      }

      if (v48 - v194 < v84)
      {
        break;
      }
    }

LABEL_62:
    v36 = v48;
LABEL_63:
    v94 = v194;
    if (v36 < v194)
    {
      goto LABEL_187;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v37 = v199;
    }

    else
    {
      v37 = sub_238490EE8(0, *(v199 + 2) + 1, 1, v199);
    }

    a3 = *(v37 + 2);
    v95 = *(v37 + 3);
    v6 = a3 + 1;
    v33 = v205;
    if (a3 >= v95 >> 1)
    {
      v182 = sub_238490EE8((v95 > 1), a3 + 1, 1, v37);
      v33 = v205;
      v37 = v182;
    }

    *(v37 + 2) = v6;
    v96 = &v37[16 * a3];
    *(v96 + 4) = v94;
    *(v96 + 5) = v36;
    v97 = *v193;
    if (!*v193)
    {
      goto LABEL_197;
    }

    if (a3)
    {
      while (1)
      {
        v98 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v99 = *(v37 + 4);
          v100 = *(v37 + 5);
          v109 = __OFSUB__(v100, v99);
          v101 = v100 - v99;
          v102 = v109;
LABEL_83:
          if (v102)
          {
            goto LABEL_176;
          }

          v115 = &v37[16 * v6];
          v117 = *v115;
          v116 = *(v115 + 1);
          v118 = __OFSUB__(v116, v117);
          v119 = v116 - v117;
          v120 = v118;
          if (v118)
          {
            goto LABEL_179;
          }

          v121 = &v37[16 * v98 + 32];
          v123 = *v121;
          v122 = *(v121 + 1);
          v109 = __OFSUB__(v122, v123);
          v124 = v122 - v123;
          if (v109)
          {
            goto LABEL_182;
          }

          if (__OFADD__(v119, v124))
          {
            goto LABEL_183;
          }

          if (v119 + v124 >= v101)
          {
            if (v101 < v124)
            {
              v98 = v6 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v125 = &v37[16 * v6];
        v127 = *v125;
        v126 = *(v125 + 1);
        v109 = __OFSUB__(v126, v127);
        v119 = v126 - v127;
        v120 = v109;
LABEL_97:
        if (v120)
        {
          goto LABEL_178;
        }

        v128 = &v37[16 * v98];
        v130 = *(v128 + 4);
        v129 = *(v128 + 5);
        v109 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v109)
        {
          goto LABEL_181;
        }

        if (v131 < v119)
        {
          goto LABEL_3;
        }

LABEL_104:
        a3 = v98 - 1;
        if (v98 - 1 >= v6)
        {
          goto LABEL_169;
        }

        if (!*v206)
        {
          goto LABEL_194;
        }

        v136 = v37;
        v6 = *&v37[16 * a3 + 32];
        v137 = *&v37[16 * v98 + 40];
        v138 = v208;
        sub_238717A9C(&(*v206)[v33[9] * v6], &(*v206)[v33[9] * *&v37[16 * v98 + 32]], &(*v206)[v33[9] * v137], v97);
        v208 = v138;
        if (v138)
        {
          goto LABEL_166;
        }

        if (v137 < v6)
        {
          goto LABEL_170;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v136 = sub_238490ED4(v136);
        }

        if (a3 >= *(v136 + 2))
        {
          goto LABEL_171;
        }

        v139 = &v136[16 * a3];
        *(v139 + 4) = v6;
        *(v139 + 5) = v137;
        v230 = v136;
        sub_238490E48(v98);
        v37 = v230;
        v6 = *(v230 + 2);
        v33 = v205;
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v103 = &v37[16 * v6 + 32];
      v104 = *(v103 - 64);
      v105 = *(v103 - 56);
      v109 = __OFSUB__(v105, v104);
      v106 = v105 - v104;
      if (v109)
      {
        goto LABEL_174;
      }

      v108 = *(v103 - 48);
      v107 = *(v103 - 40);
      v109 = __OFSUB__(v107, v108);
      v101 = v107 - v108;
      v102 = v109;
      if (v109)
      {
        goto LABEL_175;
      }

      v110 = &v37[16 * v6];
      v112 = *v110;
      v111 = *(v110 + 1);
      v109 = __OFSUB__(v111, v112);
      v113 = v111 - v112;
      if (v109)
      {
        goto LABEL_177;
      }

      v109 = __OFADD__(v101, v113);
      v114 = v101 + v113;
      if (v109)
      {
        goto LABEL_180;
      }

      if (v114 >= v106)
      {
        v132 = &v37[16 * v98 + 32];
        v134 = *v132;
        v133 = *(v132 + 1);
        v109 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v109)
        {
          goto LABEL_184;
        }

        if (v101 < v135)
        {
          v98 = v6 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }

LABEL_3:
    v35 = v206[1];
    v5 = v221;
    v24 = v214;
    if (v36 >= v35)
    {
      goto LABEL_152;
    }
  }

  if (__OFADD__(v194, v84))
  {
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  if (v194 + v84 >= v92)
  {
    v93 = v206[1];
  }

  else
  {
    v93 = v194 + v84;
  }

  if (v93 < v194)
  {
    goto LABEL_190;
  }

  if (v48 == v93)
  {
    goto LABEL_62;
  }

  v140 = *v206;
  v141 = v33[9];
  v218 = v33[2];
  v142 = &v140[v141 * (v48 - 1)];
  v215 = -v141;
  v143 = v194 - v48;
  v216 = v140;
  v195 = v141;
  v144 = &v140[v48 * v141];
  v196 = v93;
  while (2)
  {
    v207 = v48;
    v200 = v144;
    v145 = v144;
    v201 = v143;
    v146 = v143;
    v204 = v142;
LABEL_117:
    v147 = v218;
    (v218)(v24, v145, v15, v34);
    v228 = v142;
    v147(v229, v142, v15);
    v148 = sub_2387585B0();
    v150 = v149;
    if (v148 == sub_2387585B0() && v150 == v151)
    {

      goto LABEL_121;
    }

    v152 = sub_23875F630();

    if ((v152 & 1) == 0)
    {
      v176 = sub_2387585B0();
      v178 = v177;
      if (v176 == sub_2387585B0() && v178 == v179)
      {
        goto LABEL_147;
      }

      a3 = sub_23875F630();
      goto LABEL_141;
    }

LABEL_121:
    v225 = v146;
    v153 = v212;
    sub_2387585C0();
    a3 = sub_238757FB0();
    v6 = v154;
    v155 = *v213;
    (*v213)(v153, v5);
    if ((v6 & 0x2000000000000000) != 0)
    {
      v156 = HIBYTE(v6) & 0xF;
    }

    else
    {
      v156 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v157 = sub_23875EB60();
    if (v158)
    {
      v157 = 15;
    }

    if (4 * v156 < v157 >> 14)
    {
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    v224 = v145;
    v159 = sub_23875EC00();
    v226 = v160;
    v227 = v161;
    v163 = v162;

    v164 = v211;
    sub_2387585C0();
    v6 = sub_238757FB0();
    a3 = v165;
    v155(v164, v5);
    if ((a3 & 0x2000000000000000) != 0)
    {
      v166 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v166 = v6 & 0xFFFFFFFFFFFFLL;
    }

    v167 = sub_23875EB60();
    if (v168)
    {
      v167 = 15;
    }

    if (4 * v166 < v167 >> 14)
    {
      goto LABEL_168;
    }

    v169 = sub_23875EC00();
    v171 = v170;
    v173 = v172;
    v175 = v174;

    if (v163 == v173 && v227 == v175 && v159 >> 16 == v169 >> 16 && v226 >> 16 == v171 >> 16)
    {
      v5 = v221;
      v15 = v219;
      v24 = v214;
LABEL_147:

      v6 = v222;
      a3 = *v222;
      (*v222)(v229, v15);
      (a3)(v24, v15);
LABEL_115:
      v48 = v207 + 1;
      v142 = v204 + v195;
      v143 = v201 - 1;
      v144 = &v200[v195];
      v36 = v196;
      if (v207 + 1 == v196)
      {
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  a3 = sub_23875F5F0();
  v15 = v219;
  v24 = v214;
  v145 = v224;
  v146 = v225;
LABEL_141:

  v6 = *v222;
  (*v222)(v229, v15);
  (v6)(v24, v15);
  if ((a3 & 1) == 0)
  {
    v5 = v221;
    goto LABEL_115;
  }

  if (v216)
  {
    a3 = *v220;
    v6 = v217;
    (*v220)(v217, v145, v15);
    v180 = v228;
    swift_arrayInitWithTakeFrontToBack();
    (a3)(v180, v6, v15);
    v142 = &v180[v215];
    v145 += v215;
    v181 = __CFADD__(v146++, 1);
    v5 = v221;
    if (v181)
    {
      goto LABEL_115;
    }

    goto LABEL_117;
  }

  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
}

void sub_238717074(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_238759300();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v128 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v135 = &v120 - v13;
  MEMORY[0x28223BE20](v14);
  v141 = &v120 - v15;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v140 = &v120 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v21 = sub_238490ED4(v21);
    }

    v143 = v21;
    v116 = *(v21 + 2);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v117 = *&v21[16 * v116];
        v118 = *&v21[16 * v116 + 24];
        sub_238718138(*a3 + v9[9] * v117, *a3 + v9[9] * *&v21[16 * v116 + 16], *a3 + v9[9] * v118, v22);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_238490ED4(v21);
        }

        if (v116 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v21[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v143 = v21;
        sub_238490E48(v116 - 1);
        v21 = v143;
        v116 = *(v143 + 2);
        if (v116 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v120 = a4;
  v20 = 0;
  v138 = (v9 + 1);
  v139 = v9 + 2;
  v137 = (v9 + 4);
  v21 = MEMORY[0x277D84F90];
  v125 = v9;
  v142 = v8;
  v121 = a3;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v35 = v20 + 1;
    }

    else
    {
      v133 = v19;
      v122 = v5;
      v23 = *a3;
      v24 = v9[9];
      v25 = v20;
      v124 = v20;
      v26 = &v23[v24 * (v20 + 1)];
      v27 = v8;
      v28 = v9[2];
      v29 = v140;
      v28(v140, v26, v27, v17);
      v30 = &v23[v24 * v25];
      v31 = v141;
      v132 = v28;
      (v28)(v141, v30, v27);
      v131 = sub_238718A90(&unk_27DF15060, MEMORY[0x277CC7840]);
      LODWORD(v134) = sub_23875E9A0();
      v32 = v9[1];
      v32(v31, v27);
      v130 = v32;
      v32(v29, v27);
      v33 = v124 + 2;
      v136 = v24;
      v34 = &v23[v24 * (v124 + 2)];
      while (1)
      {
        v35 = v133;
        if (v133 == v33)
        {
          break;
        }

        v36 = v140;
        v37 = v9;
        v38 = v142;
        v39 = v132;
        (v132)(v140, v34, v142);
        v40 = v141;
        v39(v141, v26, v38);
        v41 = sub_23875E9A0() & 1;
        v42 = v130;
        (v130)(v40, v38);
        v43 = v38;
        v9 = v37;
        v42(v36, v43);
        ++v33;
        v34 += v136;
        v26 += v136;
        if ((v134 & 1) != v41)
        {
          v35 = v33 - 1;
          break;
        }
      }

      v5 = v122;
      v21 = v126;
      v8 = v142;
      a3 = v121;
      v22 = v124;
      if (v134)
      {
        if (v35 < v124)
        {
          goto LABEL_123;
        }

        if (v124 < v35)
        {
          v44 = v35;
          v45 = v136 * (v35 - 1);
          v46 = v35 * v136;
          v133 = v35;
          v47 = v124;
          v48 = v124 * v136;
          do
          {
            if (v47 != --v44)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v134 = *v137;
              v134(v128, &v50[v48], v142);
              if (v48 < v45 || &v50[v48] >= &v50[v46])
              {
                v49 = v142;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v142;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v134(&v50[v45], v128, v49);
              v9 = v125;
              v21 = v126;
            }

            ++v47;
            v45 -= v136;
            v46 -= v136;
            v48 += v136;
          }

          while (v47 < v44);
          v5 = v122;
          v8 = v142;
          v22 = v124;
          v35 = v133;
        }
      }
    }

    v51 = a3[1];
    if (v35 < v51)
    {
      if (__OFSUB__(v35, v22))
      {
        goto LABEL_122;
      }

      if (v35 - v22 < v120)
      {
        if (__OFADD__(v22, v120))
        {
          goto LABEL_124;
        }

        if (v22 + v120 >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v22 + v120;
        }

        if (v52 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v35 != v52)
        {
          break;
        }
      }
    }

    v53 = v35;
    if (v35 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_238490EE8(0, *(v21 + 2) + 1, 1, v21);
    }

    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      v21 = sub_238490EE8((v54 > 1), v55 + 1, 1, v21);
    }

    *(v21 + 2) = v56;
    v57 = &v21[16 * v55];
    *(v57 + 4) = v22;
    *(v57 + 5) = v53;
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_131;
    }

    v129 = v53;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_52:
          if (v62)
          {
            goto LABEL_110;
          }

          v75 = &v21[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_113;
          }

          v81 = &v21[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_117;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v85 = &v21[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_66:
        if (v80)
        {
          goto LABEL_112;
        }

        v88 = &v21[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_73:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v97 = *&v21[16 * v96 + 32];
        v98 = *&v21[16 * v58 + 40];
        sub_238718138(*a3 + v9[9] * v97, *a3 + v9[9] * *&v21[16 * v58 + 32], *a3 + v9[9] * v98, v22);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_238490ED4(v21);
        }

        if (v96 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v99 = &v21[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v143 = v21;
        sub_238490E48(v58);
        v21 = v143;
        v56 = *(v143 + 2);
        v8 = v142;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v21[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = &v21[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v74 >= v66)
      {
        v92 = &v21[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v129;
    if (v129 >= v19)
    {
      goto LABEL_94;
    }
  }

  v122 = v5;
  v100 = *a3;
  v101 = v9[9];
  v136 = v9[2];
  v102 = v100 + v101 * (v35 - 1);
  v103 = -v101;
  v124 = v22;
  v104 = v22 - v35;
  v134 = v100;
  v127 = v101;
  v105 = v100 + v35 * v101;
  v129 = v52;
LABEL_85:
  v132 = v102;
  v133 = v35;
  v130 = v105;
  v131 = v104;
  v106 = v102;
  while (1)
  {
    v107 = v140;
    v108 = v136;
    (v136)(v140, v105, v8);
    v109 = v141;
    v108(v141, v106, v142);
    sub_238718A90(&unk_27DF15060, MEMORY[0x277CC7840]);
    v110 = sub_23875E9A0();
    v111 = *v138;
    v112 = v109;
    v8 = v142;
    (*v138)(v112, v142);
    v111(v107, v8);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v35 = v133 + 1;
      v102 = &v132[v127];
      v104 = v131 - 1;
      v105 = &v130[v127];
      v53 = v129;
      if (v133 + 1 != v129)
      {
        goto LABEL_85;
      }

      v5 = v122;
      a3 = v121;
      v9 = v125;
      v21 = v126;
      v22 = v124;
      if (v129 < v124)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v134)
    {
      break;
    }

    v113 = *v137;
    v114 = v135;
    (*v137)(v135, v105, v8);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v8);
    v106 += v103;
    v105 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_238717A9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v77 = a3;
  v9 = sub_238758680();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](&v62 - v16);
  v20 = &v62 - v19;
  v73 = *(v21 + 72);
  if (!v73)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v73 == -1)
  {
    goto LABEL_66;
  }

  v22 = v77 - a2;
  if (v77 - a2 == 0x8000000000000000 && v73 == -1)
  {
    goto LABEL_67;
  }

  v23 = (a2 - a1) / v73;
  v80 = a1;
  v79 = a4;
  v75 = v9;
  if (v23 >= v22 / v73)
  {
    v71 = v18;
    v72 = v14;
    v25 = v22 / v73 * v73;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v25;
    if (v25 >= 1)
    {
      v38 = v72;
      v39 = -v73;
      v68 = (v10 + 16);
      v69 = (v10 + 8);
      v40 = v37;
      v74 = a4;
      v65 = a1;
      v66 = -v73;
      do
      {
        v76 = v5;
        v63 = v37;
        v41 = a2;
        v42 = a2 + v39;
        v67 = v42;
        v70 = v41;
        while (1)
        {
          v45 = v77;
          if (v41 <= a1)
          {
            v80 = v41;
            v60 = v63;
LABEL_62:
            v78 = v60;
            goto LABEL_64;
          }

          v64 = v37;
          v73 = v40;
          v46 = v40 + v39;
          v47 = *v68;
          v48 = v75;
          (*v68)(v38, v40 + v39, v75);
          v49 = v42;
          v50 = v39;
          v51 = v71;
          v47(v71, v49, v48);
          v52 = v76;
          v53 = sub_238714698(v38, v51);
          v76 = v52;
          if (v52)
          {
            v61 = *v69;
            (*v69)(v51, v48);
            v61(v38, v48);
            v80 = v70;
            v60 = v64;
            goto LABEL_62;
          }

          v54 = v53;
          v77 = v45 + v50;
          v55 = *v69;
          (*v69)(v51, v48);
          v55(v38, v48);
          if (v54)
          {
            break;
          }

          v37 = v46;
          v56 = v65;
          if (v45 < v73 || v77 >= v73)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v66;
            v42 = v67;
            v43 = v74;
          }

          else
          {
            v39 = v66;
            v42 = v67;
            v43 = v74;
            if (v45 != v73)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v40 = v46;
          v44 = v46 > v43;
          v38 = v72;
          a1 = v56;
          v41 = v70;
          if (!v44)
          {
            a2 = v70;
            goto LABEL_63;
          }
        }

        a1 = v65;
        if (v45 < v70 || v77 >= v70)
        {
          a2 = v67;
          swift_arrayInitWithTakeFrontToBack();
          v58 = v74;
          v5 = v76;
          v37 = v64;
          v39 = v66;
        }

        else
        {
          v57 = v45 == v70;
          v39 = v66;
          a2 = v67;
          v58 = v74;
          v5 = v76;
          v37 = v64;
          if (!v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v72;
        v40 = v73;
      }

      while (v73 > v58);
    }

LABEL_63:
    v80 = a2;
    v78 = v37;
  }

  else
  {
    v24 = v23 * v73;
    v72 = v17;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v71 = a4 + v24;
    v78 = a4 + v24;
    if (v24 >= 1 && a2 < v77)
    {
      v27 = *(v10 + 16);
      v70 = v10 + 16;
      v68 = v27;
      v69 = (v10 + 8);
      while (1)
      {
        v28 = a2;
        v29 = a4;
        v30 = v68;
        (v68)(v20, a2, v9);
        v31 = v20;
        v32 = v72;
        v74 = v29;
        (v30)(v72, v29, v9);
        v33 = sub_238714698(v31, v32);
        if (v5)
        {
          break;
        }

        v34 = v33;
        v76 = 0;
        v35 = *v69;
        (*v69)(v32, v9);
        v35(v31, v9);
        v20 = v31;
        if (v34)
        {
          v36 = v73;
          a2 = v28 + v73;
          if (a1 < v28 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v74;
        }

        else
        {
          v36 = v73;
          a4 = v74 + v73;
          a2 = v28;
          if (a1 < v74 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v79 = a4;
        }

        a1 += v36;
        v80 = a1;
        v5 = v76;
        if (a4 < v71)
        {
          v9 = v75;
          if (a2 < v77)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v59 = *v69;
      (*v69)(v32, v9);
      v59(v31, v9);
    }
  }

LABEL_64:
  sub_238709008(&v80, &v79, &v78);
}

void sub_238718138(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_238759300();
  v8 = *(v52 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_238718A90(&unk_27DF15060, MEMORY[0x277CC7840]);
          LOBYTE(v35) = sub_23875E9A0();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        v46(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_238718A90(&unk_27DF15060, MEMORY[0x277CC7840]);
        LOBYTE(v22) = sub_23875E9A0();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= v44 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = v44 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_238709020(&v55, &v54, &v53);
}

id sub_23871872C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class a6)
{
  v11 = objc_allocWithZone(a6);

  return sub_2387187A4(a1, a2, a3, a4, a5, v11);
}

id sub_2387187A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_authorizationStateManager;
  v26[3] = sub_2387588D0();
  v26[4] = MEMORY[0x277CC70E0];
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_2387588C0();
  v13 = sub_23875A460();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&a6[v12] = sub_23875A420();
  v16 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_storeCoordinator;
  v17 = sub_23875AA80();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&a6[v16] = sub_23875AA70();
  v20 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountForSpecifier;
  v21 = MEMORY[0x277D84F90];
  *&a6[v20] = sub_23854C324(MEMORY[0x277D84F90]);
  *&a6[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountSpecifiers] = v21;
  v22 = &a6[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier];
  *v22 = a1;
  *(v22 + 1) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v23 = &a6[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_localizedTitle];
  *v23 = a4;
  *(v23 + 1) = a5;
  v25.receiver = a6;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_238718924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2384494A4;

  return sub_238711D08(a1, v4, v5, v6);
}

unint64_t sub_238718A28()
{
  result = qword_27DF15048;
  if (!qword_27DF15048)
  {
    sub_238449184(255, &qword_27DF0AE38, 0x277D3FAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15048);
  }

  return result;
}

uint64_t sub_238718A90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238718AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11628, &qword_238778B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_238718B48(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_23875EB60();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_23875EC00();
}

uint64_t sub_238718C04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238449A7C;

  return sub_238713580(a1, v4, v5, v6);
}

uint64_t sub_238718CCC()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  return v2;
}

uint64_t sub_238718D28()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF151D8, &unk_238782AC8);
  sub_23875E310();
  return v2;
}

uint64_t TransactionPicker.init(selection:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  sub_23875E1A0();
  *a5 = v13;
  *(a5 + 8) = v14;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  v10 = *(type metadata accessor for TransactionPicker() + 40);

  a4(v11);
}

uint64_t TransactionPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v9 = sub_23875E240();
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v41 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15070, &qword_2387827F0);
  v48 = v12;
  WitnessTable = swift_getWitnessTable();
  v42 = WitnessTable;
  v47 = sub_2387192A0();
  v54 = v9;
  v55 = v12;
  v56 = WitnessTable;
  v57 = v47;
  v45 = MEMORY[0x277CDEF68];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v40 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v43 = &v39 - v18;
  (*(v4 + 16))(&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v17);
  v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  *(v20 + 24) = v8;
  (*(v4 + 32))(v20 + v19, &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v51 = v7;
  v52 = v8;
  v53 = v2;
  v21 = v41;
  sub_23875E200();
  v22 = sub_238718CCC();
  v24 = v23;
  LOBYTE(v7) = v25;
  v26 = sub_238718D28();
  v28 = v27;
  LOBYTE(v27) = v7 & 1;
  v29 = v40;
  v30 = v42;
  View.transactionPicker(isPresented:selection:)(v22, v24, v27, v26, v31, v28);

  (*(v49 + 8))(v21, v9);
  v54 = v9;
  v55 = v48;
  v56 = v30;
  v57 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v43;
  v34 = v29;
  v35 = v29;
  v36 = OpaqueTypeMetadata2;
  sub_23844EA0C(v35, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v37 = *(v46 + 8);
  v37(v34, v36);
  sub_23844EA0C(v33, v36, OpaqueTypeConformance2);
  return (v37)(v33, v36);
}

unint64_t sub_2387192A0()
{
  result = qword_27DF15078;
  if (!qword_27DF15078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15070, &qword_2387827F0);
    sub_23871932C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15078);
  }

  return result;
}

unint64_t sub_23871932C()
{
  result = qword_27DF15080[0];
  if (!qword_27DF15080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF15080);
  }

  return result;
}

uint64_t sub_238719380(char *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *a1;
  v4 = *(a1 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  sub_23875E1C0();
}

uint64_t sub_238719488()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for TransactionPicker() - 8);
  v4 = (v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_238719380(v4);
}

uint64_t sub_23871950C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = type metadata accessor for TransactionPicker();
  sub_23844EA0C(a1 + *(v10 + 40), a2, a3);
  sub_23844EA0C(v9, a2, a3);
  (*(v6 + 8))(v9, a2);
}

uint64_t View.transactionPicker(isPresented:selection:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15070, &qword_2387827F0);
  sub_2387192A0();
  sub_23875DF40();
}

uint64_t sub_2387197B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_23875D7A0();

  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = v14;
  return result;
}

uint64_t sub_2387198CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];

  return swift_deallocClassInstance();
}

id sub_238719944()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151C8, &unk_238782AB8);
  sub_23875D710();
  v0 = objc_allocWithZone(type metadata accessor for TransactionPickerHostViewController());
  v1 = sub_23871B7A0(v3, v0);
  sub_238719D34();
  return v1;
}

uint64_t sub_2387199B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  type metadata accessor for TransactionPickerRepresentableViewController.Coordinator();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  *a1 = v9;
}

uint64_t sub_238719A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23871BF84();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_238719AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23871BF84();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_238719B1C()
{
  sub_23871BF84();
  sub_23875D6B0();
  __break(1u);
}

void sub_238719C2C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for TransactionPickerHostViewController();
  objc_msgSendSuper2(&v14, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_remoteViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_238719D34()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = result;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_activityIndicator;
  [result addSubview_];

  [*&v0[v5] setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_238763E60;
  v7 = [*&v0[v5] centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  v9 = [result centerXAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v10;
  v11 = [*&v0[v5] centerYAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = objc_opt_self();
  v14 = [v12 centerYAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v6 + 40) = v15;
  sub_23871BFF8();
  v16 = sub_23875EC60();

  [v13 activateConstraints_];

  [*&v0[v5] startAnimating];
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  v18 = v0;
  sub_23871A3F4(sub_23871C044, v17);
}

void sub_23871A000(void *a1, void *a2, char *a3)
{
  v6 = sub_23875C1E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for TransactionPickerRemoteViewController();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = a1;
    }

    v13 = *&a3[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_remoteViewController];
    *&a3[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_remoteViewController] = v11;
    v14 = a1;
    v15 = v11;

    if (v11)
    {
      v16 = *&v15[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController_delegate];
      *&v15[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController_delegate] = *&a3[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_delegate];
      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
    }

    v17 = v14;
    [a3 addChildViewController_];
    v18 = [a3 view];
    if (v18)
    {
      v19 = v18;
      v20 = [v17 view];

      if (v20)
      {
        [v19 addSubview_];

        v21 = [a3 view];
        if (v21)
        {
          v22 = v21;
          [v21 setNeedsLayout];

          v23 = [a3 view];
          if (v23)
          {
            v24 = v23;
            [v23 layoutIfNeeded];

            [v17 didMoveToParentViewController_];
            [*&a3[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_activityIndicator] stopAnimating];
            v25 = [a3 view];
            if (v25)
            {
              v26 = v25;
              v37 = [objc_opt_self() clearColor];
              [v26 setBackgroundColor_];

              v27 = v37;

              return;
            }

LABEL_24:
            __break(1u);
            return;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_23875C130();
  v28 = a2;
  v29 = sub_23875C1B0();
  v30 = sub_23875EFE0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    if (a2)
    {
      v33 = a2;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      v35 = v34;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    *(v31 + 4) = v34;
    *v32 = v35;
    _os_log_impl(&dword_2383F8000, v29, v30, "Unable to create remoteViewController: %@", v31, 0xCu);
    sub_238455DD4(v32);
    MEMORY[0x23EE64DF0](v32, -1, -1);
    MEMORY[0x23EE64DF0](v31, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  [a3 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_23871A3F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for TransactionPickerRemoteViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v17[4] = a1;
  v17[5] = a2;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_23871A59C;
  v17[3] = &block_descriptor_20;
  v9 = _Block_copy(v17);

  v10 = [ObjCClassFromMetadata requestViewController:v7 fromServiceWithBundleIdentifier:v8 connectionHandler:v9];
  _Block_release(v9);

  *(swift_allocObject() + 16) = v10;
  v11 = sub_23875C220();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_23875C230();
  v15 = *(v3 + OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_transactionPickerCancellable);
  *(v3 + OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_transactionPickerCancellable) = v14;
}

void sub_23871A59C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_23871A628(void *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 invoke];
}

id static TransactionPickerExportedInterfaces.serviceProtocol()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

void sub_23871AA68(void *a1)
{
  v2 = v1;
  v4 = sub_23875C1E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C130();
  v9 = a1;
  v10 = sub_23875C1B0();
  v11 = sub_23875EFE0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    if (a1)
    {
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v12 + 4) = v15;
    *v13 = v16;
    _os_log_impl(&dword_2383F8000, v10, v11, "Transaction picker view service terminated with error: %@", v12, 0xCu);
    sub_238455DD4(v13);
    MEMORY[0x23EE64DF0](v13, -1, -1);
    MEMORY[0x23EE64DF0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v17 = [v2 presentingViewController];
  if (v17)
  {
    v18 = v17;
    [v17 dismissViewControllerAnimated:0 completion:0];
  }

  if (a1)
  {
    v19 = sub_23875B720();
  }

  else
  {
    v19 = 0;
  }

  v20 = type metadata accessor for TransactionPickerRemoteViewController();
  v21.receiver = v2;
  v21.super_class = v20;
  objc_msgSendSuper2(&v21, sel_viewServiceDidTerminateWithError_, v19);
}

id sub_23871AFA0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_23871AFF0(void *a1)
{
  v2 = v1;
  v4 = sub_23875C1E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C130();
  v9 = a1;
  v10 = sub_23875C1B0();
  v11 = sub_23875F000();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = *(sub_238757D10() + 16);

    *(v12 + 4) = v13;

    _os_log_impl(&dword_2383F8000, v10, v11, "Transaction picker completed with %ld transactions", v12, 0xCu);
    MEMORY[0x23EE64DF0](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  (*(v5 + 8))(v8, v4);
  v14 = *&v2[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController_delegate];
  if (v14)
  {
    v15 = *&v2[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B37TransactionPickerRemoteViewController_delegate];
    swift_unknownObjectRetain();
    v16 = sub_238757D10();
    v17 = *(v14 + 40);
    v22 = v16;
    v23 = v17;
    v24 = *(v14 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF151D8, &unk_238782AC8);
    sub_23875E2F0();
    v18 = *(v14 + 24);
    v19 = *(v14 + 32);
    v23 = *(v14 + 16);
    *&v24 = v18;
    BYTE8(v24) = v19;
    LOBYTE(v22) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
    sub_23875E2F0();

    swift_unknownObjectRelease();
  }

  v20 = [v2 presentingViewController];
  if (v20)
  {
    v21 = v20;
    [v20 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_23871B26C()
{
  v1 = v0;
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C130();
  v7 = sub_23875C1B0();
  v8 = sub_23875F000();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2383F8000, v7, v8, "Transaction picker cancelled", v9, 2u);
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = [v1 presentingViewController];
  if (v10)
  {
    v11 = v10;
    [v10 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_23871B400(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_23871B4CC(void *a1)
{
  v2 = v1;
  v4 = sub_23875C1E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C130();
  v9 = a1;
  v10 = sub_23875C1B0();
  v11 = sub_23875EFE0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_2383F8000, v10, v11, "Transaction picker failed with error: %@", v12, 0xCu);
    sub_238455DD4(v13);
    MEMORY[0x23EE64DF0](v13, -1, -1);
    MEMORY[0x23EE64DF0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v15 = [v2 presentingViewController];
  if (v15)
  {
    v16 = v15;
    [v15 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_23871B6B4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  a5(v8);
}

id sub_23871B7A0(uint64_t a1, char *a2)
{
  v3 = &a2[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_delegate];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&a2[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_remoteViewController] = 0;
  *&a2[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_transactionPickerCancellable] = 0;
  *v3 = a1;
  *(v3 + 1) = &off_284B30D68;
  v4 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  *&a2[OBJC_IVAR____TtC12FinanceKitUIP33_6287C40558B61A6945C038C9D260157B35TransactionPickerHostViewController_activityIndicator] = v4;
  v6.receiver = a2;
  v6.super_class = type metadata accessor for TransactionPickerHostViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t _s12FinanceKitUI35TransactionPickerExportedInterfacesO14remoteProtocolSo14NSXPCInterfaceCyFZ_0()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2387632F0;
  v1 = sub_238757D20();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15200, &qword_238782AD8);
  *(v0 + 32) = v1;
  v2 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v3 = sub_23875EC60();

  [v2 initWithArray_];

  result = sub_23875EE50();
  __break(1u);
  return result;
}

void sub_23871BA08(uint64_t a1)
{
  sub_2384B49C4();
  if (v2 <= 0x3F)
  {
    sub_23871BE90();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23871BAA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = (a1 + 23) & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 24) & ~v6);
      }

      v16 = *(v15 + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_23871BC34(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  v19 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 24) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    v19[1] = 0;
    v19[2] = 0;
    *v19 = a2 & 0x7FFFFFFF;
  }

  else
  {
    v19[1] = a2 - 1;
  }
}

void sub_23871BE90()
{
  if (!qword_27DF15110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF15118, qword_238782878);
    v0 = sub_23875E340();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF15110);
    }
  }
}

unint64_t sub_23871BF84()
{
  result = qword_27DF151C0;
  if (!qword_27DF151C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF151C0);
  }

  return result;
}

unint64_t sub_23871BFF8()
{
  result = qword_27DF151F0;
  if (!qword_27DF151F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF151F0);
  }

  return result;
}

uint64_t type metadata accessor for TransactionSearchList()
{
  result = qword_27DF15208;
  if (!qword_27DF15208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23871C0C0()
{
  sub_2384DCE28(319, &qword_27DF0B5A8, &qword_27DF0B558, &qword_238768210);
  if (v0 <= 0x3F)
  {
    sub_2384DCE28(319, &qword_27DF0C470, &qword_27DF0B5D0, &qword_23877B640);
    if (v1 <= 0x3F)
    {
      sub_2384B4864();
      if (v2 <= 0x3F)
      {
        sub_238663B5C();
        if (v3 <= 0x3F)
        {
          sub_2384DCD94();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23871C1D8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_23875D310();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15218, &qword_238782B48);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15220, &qword_238782B50);
  v12 = *(v11 - 8);
  v27 = v11;
  v28 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15228, &qword_238782B58);
  sub_23843A3E8(&qword_27DF15230, &qword_27DF15228, &qword_238782B58);
  sub_23875D9C0();
  sub_23875D300();
  v16 = sub_23843A3E8(&qword_27DF15238, &qword_27DF15218, &qword_238782B48);
  v17 = MEMORY[0x277CDE0D0];
  sub_23875DF50();
  (*(v29 + 8))(v5, v2);
  (*(v7 + 8))(v10, v6);
  v32 = v6;
  v33 = v2;
  v34 = v16;
  v35 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v30;
  v19 = v27;
  sub_23875DE10();
  (*(v28 + 8))(v15, v19);
  v20 = sub_23875E4A0();
  v22 = v21;
  v23 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15240, &qword_238782B60) + 36);
  sub_23871EA3C(v23);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15248, &qword_238782B68);
  v25 = (v23 + *(result + 36));
  *v25 = v20;
  v25[1] = v22;
  return result;
}

uint64_t sub_23871C55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v3 = sub_23875CE00();
  v103 = *(v3 - 8);
  v104 = v3;
  v4 = *(v103 + 64);
  MEMORY[0x28223BE20](v3);
  v102 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15268, &qword_238782CB0);
  v97 = *(v99 - 8);
  v6 = *(v97 + 64);
  MEMORY[0x28223BE20](v99);
  v95 = &v92 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15270, &qword_238782CB8);
  v100 = *(v101 - 8);
  v8 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v98 = &v92 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15278, &qword_238782CC0);
  v112 = *(v116 - 8);
  v10 = *(v112 + 64);
  MEMORY[0x28223BE20](v116);
  v96 = &v92 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12940, &qword_23877B698);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v92 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15280, &qword_238782CC8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v113 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v111 = &v92 - v21;
  v22 = sub_23875C400();
  v106 = *(v22 - 8);
  v107 = v22;
  v23 = *(v106 + 64);
  MEMORY[0x28223BE20](v22);
  v105 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15288, &qword_238782CD0);
  v94 = *(v93 - 8);
  v25 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  v27 = &v92 - v26;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15290, &qword_238782CD8);
  v28 = *(v108 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v108);
  v31 = &v92 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15298, &qword_238782CE0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v110 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v117 = &v92 - v36;
  sub_23875ED50();
  v109 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v115 = a1;
  v37 = *(a1 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v38 = *(v119 + 16);

  if (v38 && (swift_getKeyPath(), swift_getKeyPath(), sub_23875C2D0(), , , (v119 & 1) == 0))
  {
    v92 = v13;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v41 = qword_2814F1B90;
    v42 = sub_23875EA50();
    v43 = sub_23875EA50();
    v44 = sub_23875EA50();
    v45 = [v41 localizedStringForKey:v42 value:v43 table:v44];

    v46 = sub_23875EA80();
    v48 = v47;

    v119 = v46;
    v120 = v48;
    sub_2384397A8();
    v119 = sub_23875DAA0();
    v120 = v49;
    v121 = v50 & 1;
    v122 = v51;
    MEMORY[0x28223BE20](v119);
    *(&v92 - 2) = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF152A0, &qword_238782CE8);
    sub_23871FB0C();
    v52 = v27;
    sub_23875E3B0();
    v54 = v105;
    v53 = v106;
    v55 = v107;
    (*(v106 + 104))(v105, *MEMORY[0x277CDF350], v107);
    sub_23871FEEC(&qword_27DF152E0, &qword_27DF15288, &qword_238782CD0, sub_23871FB0C);
    v56 = v93;
    sub_23875DC80();
    (*(v53 + 8))(v54, v55);
    (*(v94 + 8))(v52, v56);
    v57 = v108;
    (*(v28 + 32))(v117, v31, v108);
    v40 = v57;
    v39 = 0;
    v13 = v92;
  }

  else
  {
    v39 = 1;
    v40 = v108;
  }

  v58 = 1;
  (*(v28 + 56))(v117, v39, 1, v40);
  v59 = *(type metadata accessor for TransactionSearchList() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF15260, &qword_27DF12940, &qword_23877B698);
  sub_23875EED0();
  sub_23875EF00();
  (*(v13 + 8))(v16, v12);
  v60 = v116;
  v62 = v111;
  v61 = v112;
  if (v119 != v118)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v63 = qword_2814F1B90;
    v64 = sub_23875EA50();
    v65 = sub_23875EA50();
    v66 = sub_23875EA50();
    v67 = [v63 localizedStringForKey:v64 value:v65 table:v66];

    v68 = sub_23875EA80();
    v70 = v69;

    v119 = v68;
    v120 = v70;
    sub_2384397A8();
    v119 = sub_23875DAA0();
    v120 = v71;
    v121 = v72 & 1;
    v122 = v73;
    MEMORY[0x28223BE20](v119);
    *(&v92 - 2) = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF152E8, &qword_238782D10);
    sub_23871FD8C();
    v74 = v95;
    sub_23875E3B0();
    v76 = v105;
    v75 = v106;
    v77 = v107;
    (*(v106 + 104))(v105, *MEMORY[0x277CDF350], v107);
    v78 = sub_23871FEEC(&qword_27DF15308, &qword_27DF15268, &qword_238782CB0, sub_23871FD8C);
    v79 = v98;
    v80 = v99;
    sub_23875DC80();
    (*(v75 + 8))(v76, v77);
    (*(v97 + 8))(v74, v80);
    v82 = v102;
    v81 = v103;
    v83 = v104;
    (*(v103 + 104))(v102, *MEMORY[0x277CDDDC0], v104);
    v119 = v80;
    v120 = v78;
    swift_getOpaqueTypeConformance2();
    v84 = v96;
    v85 = v101;
    sub_23875DE50();
    (*(v81 + 8))(v82, v83);
    (*(v100 + 8))(v79, v85);
    v60 = v116;
    (*(v61 + 32))(v62, v84, v116);
    v58 = 0;
  }

  (*(v61 + 56))(v62, v58, 1, v60);
  v86 = v117;
  v87 = v110;
  sub_23843981C(v117, v110, &qword_27DF15298, &qword_238782CE0);
  v88 = v113;
  sub_23843981C(v62, v113, &qword_27DF15280, &qword_238782CC8);
  v89 = v114;
  sub_23843981C(v87, v114, &qword_27DF15298, &qword_238782CE0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15310, qword_238782D28);
  sub_23843981C(v88, v89 + *(v90 + 48), &qword_27DF15280, &qword_238782CC8);
  sub_238439884(v62, &qword_27DF15280, &qword_238782CC8);
  sub_238439884(v86, &qword_27DF15298, &qword_238782CE0);
  sub_238439884(v88, &qword_27DF15280, &qword_238782CC8);
  sub_238439884(v87, &qword_27DF15298, &qword_238782CE0);
}