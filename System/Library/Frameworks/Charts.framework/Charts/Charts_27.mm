uint64_t sub_1AAEB5BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) != 2)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    result = sub_1AAF905B4();
    __break(1u);
    return result;
  }

  v4 = a2;
  v5 = a1;
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = vabdd_f64(v7, v6) / v8;
    v10 = sub_1AADF7720(MEMORY[0x1E69E7CC0]);
    v51 = v5;
    if (v6 <= v7)
    {
      v30 = 0;
      v31 = (v5 + 40);
      while (1)
      {
        v34 = *(v31 - 1);
        v33 = *v31;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = sub_1AADB05C0(v34, v33);
        v38 = v10[2];
        v39 = (v37 & 1) == 0;
        v21 = __OFADD__(v38, v39);
        v40 = v38 + v39;
        if (v21)
        {
          break;
        }

        v41 = v37;
        if (v10[3] >= v40)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v47 = v36;
            sub_1AAD9745C();
            v36 = v47;
          }
        }

        else
        {
          sub_1AAD8CFF0(v40, isUniquelyReferenced_nonNull_native);
          v36 = sub_1AADB05C0(v34, v33);
          if ((v41 & 1) != (v42 & 1))
          {
            goto LABEL_38;
          }
        }

        v43 = v6 + v9 * v30;
        if (v41)
        {
          v32 = v36;

          *(v10[7] + 8 * v32) = v43;
        }

        else
        {
          v10[(v36 >> 6) + 8] |= 1 << v36;
          v44 = (v10[6] + 16 * v36);
          *v44 = v34;
          v44[1] = v33;
          *(v10[7] + 8 * v36) = v43;
          v45 = v10[2];
          v21 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v21)
          {
            goto LABEL_36;
          }

          v10[2] = v46;
        }

        ++v30;
        v31 += 2;
        if (v8 == v30)
        {
LABEL_29:
          v5 = v51;
          v4 = a2;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v11 = 0;
      v12 = (v5 + 40);
      while (1)
      {
        v15 = *(v12 - 1);
        v14 = *v12;

        v16 = swift_isUniquelyReferenced_nonNull_native();
        v17 = sub_1AADB05C0(v15, v14);
        v19 = v10[2];
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          break;
        }

        v23 = v18;
        if (v10[3] >= v22)
        {
          if ((v16 & 1) == 0)
          {
            v29 = v17;
            sub_1AAD9745C();
            v17 = v29;
          }
        }

        else
        {
          sub_1AAD8CFF0(v22, v16);
          v17 = sub_1AADB05C0(v15, v14);
          if ((v23 & 1) != (v24 & 1))
          {
            goto LABEL_38;
          }
        }

        v25 = v6 - v9 * (v11 + 1.0);
        if (v23)
        {
          v13 = v17;

          *(v10[7] + 8 * v13) = v25;
        }

        else
        {
          v10[(v17 >> 6) + 8] |= 1 << v17;
          v26 = (v10[6] + 16 * v17);
          *v26 = v15;
          v26[1] = v14;
          *(v10[7] + 8 * v17) = v25;
          v27 = v10[2];
          v21 = __OFADD__(v27, 1);
          v28 = v27 + 1;
          if (v21)
          {
            goto LABEL_35;
          }

          v10[2] = v28;
        }

        ++v11;
        v12 += 2;
        if (v8 == v11)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v10 = sub_1AADF7720(MEMORY[0x1E69E7CC0]);
  v9 = 0.0;
LABEL_30:
  v48 = swift_allocObject();
  *(v48 + 16) = v10;
  v49 = swift_allocObject();
  *(v49 + 16) = v6;
  *(v49 + 24) = v7;
  *(v49 + 32) = v9;
  *(v49 + 40) = v5;
  *(a3 + 16) = v9;
  *(a3 + 24) = 0;
  *a3 = sub_1AAEB88E4;
  *(a3 + 8) = v48;
  *(a3 + 48) = v5;
  *(a3 + 56) = v4;
  *(a3 + 64) = 0;
  *(a3 + 32) = sub_1AAEB8D84;
  *(a3 + 40) = v49;
  *(a3 + 72) = xmmword_1AAFB4DB0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  swift_bridgeObjectRetain_n();
}

uint64_t sub_1AAEB5F84@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  v7 = sub_1AADF844C(MEMORY[0x1E69E7CC0]);
  *(v6 + 16) = v7;
  v8 = a1[2];
  v9 = a2[2];
  v52 = a1;
  v53 = a2;
  if (v8 == v9)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v7;
    *(v6 + 16) = 0x8000000000000000;
    sub_1AAEB8AC8(a1, a2, isUniquelyReferenced_nonNull_native, &v57);

    *(v6 + 16) = v57;

LABEL_39:
    *(a3 + 8) = v6;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
    *a3 = sub_1AAEB8960;
    *(a3 + 48) = v52;
    *(a3 + 56) = v53;
    *(a3 + 64) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 72) = xmmword_1AAFB4DB0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
  }

  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    goto LABEL_48;
  }

  if (!v8)
  {
    goto LABEL_39;
  }

  v12 = 0;
  v13 = (v9 - 1);
  v54 = v9 - 2;
  v55 = v9;
  v56 = (v53 + 4);
  v14 = (a1 + 5);
  while (1)
  {
    v17 = *(v14 - 1);
    v3 = *v14;
    if (v9 != 1)
    {
      v29 = 0.5;
      if (v8 != 1)
      {
        v29 = v12 / (v8 - 1);
      }

      v30 = v29 * v13;
      sub_1AAEC87F4(&v57, floor(v29 * v13));
      if (v58)
      {
        goto LABEL_49;
      }

      v31 = v57;
      if (v57 >= v54)
      {
        v31 = v54;
      }

      v32 = v31 & ~(v31 >> 63);
      if (v32 >= v9)
      {
        goto LABEL_43;
      }

      if (v32 + 1 >= v9)
      {
        goto LABEL_44;
      }

      v33 = v56[v32];
      v34 = v56[v32 + 1];

      v35 = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(v6 + 16);
      v36 = v57;
      *(v6 + 16) = 0x8000000000000000;
      v21 = sub_1AADB05C0(v17, v3);
      v38 = v36[2];
      v39 = (v37 & 1) == 0;
      v25 = __OFADD__(v38, v39);
      v40 = v38 + v39;
      if (v25)
      {
        goto LABEL_45;
      }

      v41 = v37;
      if (v36[3] >= v40)
      {
        if ((v35 & 1) == 0)
        {
          v49 = v21;
          sub_1AAD96368();
          v21 = v49;
        }
      }

      else
      {
        sub_1AAD8B208(v40, v35);
        v21 = sub_1AADB05C0(v17, v3);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_50;
        }
      }

      v18 = (1.0 - (v30 - v32)) * v33 + (v30 - v32) * v34;
      if ((v41 & 1) == 0)
      {
        v16 = v57;
        v57[(v21 >> 6) + 8] |= 1 << v21;
        v46 = (v16[6] + 16 * v21);
        *v46 = v17;
        v46[1] = v3;
        *(v16[7] + 8 * v21) = v18;
        v47 = v16[2];
        v25 = __OFADD__(v47, 1);
        v45 = v47 + 1;
        if (v25)
        {
          goto LABEL_47;
        }

LABEL_36:
        v16[2] = v45;
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v18 = *v56;

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v6 + 16);
    v20 = v57;
    *(v6 + 16) = 0x8000000000000000;
    v21 = sub_1AADB05C0(v17, v3);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      break;
    }

    v27 = v22;
    if (v20[3] < v26)
    {
      sub_1AAD8B208(v26, v19);
      v21 = sub_1AADB05C0(v17, v3);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_50;
      }

LABEL_28:
      if ((v27 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_9;
    }

    if (v19)
    {
      goto LABEL_28;
    }

    v48 = v21;
    sub_1AAD96368();
    v21 = v48;
    if ((v27 & 1) == 0)
    {
LABEL_29:
      v16 = v57;
      v57[(v21 >> 6) + 8] |= 1 << v21;
      v43 = (v16[6] + 16 * v21);
      *v43 = v17;
      v43[1] = v3;
      *(v16[7] + 8 * v21) = v18;
      v44 = v16[2];
      v25 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v25)
      {
        goto LABEL_46;
      }

      goto LABEL_36;
    }

LABEL_9:
    v15 = v21;

    v16 = v57;
    *(v57[7] + 8 * v15) = v18;
LABEL_10:
    *(v6 + 16) = v16;

    v9 = v55;
    ++v12;
    v14 += 2;
    if (v8 == v12)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  v57 = 0;
  v58 = 0xE000000000000000;

  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](0x74616F6C464743, 0xE700000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000001ELL, 0x80000001AAFCE890);
  MEMORY[0x1AC5982F0](7630409, 0xE300000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCE8B0);
  sub_1AAF902C4();
  __break(1u);
LABEL_50:
  sub_1AAF905B4();
  __break(1u);

  *(v6 + 16) = v57;

  __break(1u);
  return result;
}

uint64_t sub_1AAEB64E8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  v7 = sub_1AADF7720(MEMORY[0x1E69E7CC0]);
  *(v6 + 16) = v7;
  v8 = a1[2];
  v9 = a2[2];
  v53 = a1;
  v54 = a2;
  if (v8 == v9)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v7;
    *(v6 + 16) = 0x8000000000000000;
    sub_1AAEB8DE8(a1, a2, isUniquelyReferenced_nonNull_native, &v58);

    *(v6 + 16) = v58;

LABEL_39:
    *(a3 + 8) = v6;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
    *a3 = sub_1AAEB8960;
    *(a3 + 48) = v53;
    *(a3 + 56) = v54;
    *(a3 + 64) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 72) = xmmword_1AAFB4DB0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
  }

  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    goto LABEL_48;
  }

  if (!v8)
  {
    goto LABEL_39;
  }

  v12 = 0;
  v13 = (v9 - 1);
  v55 = v9 - 2;
  v56 = v9;
  v57 = (v54 + 4);
  v14 = (a1 + 5);
  while (1)
  {
    v17 = *(v14 - 1);
    v3 = *v14;
    if (v9 != 1)
    {
      v29 = 0.5;
      if (v8 != 1)
      {
        v29 = v12 / (v8 - 1);
      }

      v30 = v29 * v13;
      v31 = floor(v29 * v13);

      sub_1AAEC8604(&v58, v31);
      if (v59)
      {
        goto LABEL_49;
      }

      v32 = v58;
      if (v58 >= v55)
      {
        v32 = v55;
      }

      v33 = v32 & ~(v32 >> 63);
      if (v33 >= v9)
      {
        goto LABEL_43;
      }

      if (v33 + 1 >= v9)
      {
        goto LABEL_44;
      }

      v34 = v57[v33];
      v35 = v57[v33 + 1];
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v58 = *(v6 + 16);
      v37 = v58;
      *(v6 + 16) = 0x8000000000000000;
      v21 = sub_1AADB05C0(v17, v3);
      v39 = v37[2];
      v40 = (v38 & 1) == 0;
      v25 = __OFADD__(v39, v40);
      v41 = v39 + v40;
      if (v25)
      {
        goto LABEL_45;
      }

      v42 = v38;
      if (v37[3] >= v41)
      {
        if ((v36 & 1) == 0)
        {
          v50 = v21;
          sub_1AAD9745C();
          v21 = v50;
        }
      }

      else
      {
        sub_1AAD8CFF0(v41, v36);
        v21 = sub_1AADB05C0(v17, v3);
        if ((v42 & 1) != (v43 & 1))
        {
          goto LABEL_50;
        }
      }

      v18 = (1.0 - (v30 - v33)) * v34 + (v30 - v33) * v35;
      if ((v42 & 1) == 0)
      {
        v16 = v58;
        v58[(v21 >> 6) + 8] |= 1 << v21;
        v47 = (v16[6] + 16 * v21);
        *v47 = v17;
        v47[1] = v3;
        *(v16[7] + 8 * v21) = v18;
        v48 = v16[2];
        v25 = __OFADD__(v48, 1);
        v46 = v48 + 1;
        if (v25)
        {
          goto LABEL_47;
        }

LABEL_36:
        v16[2] = v46;
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v18 = *v57;

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(v6 + 16);
    v20 = v58;
    *(v6 + 16) = 0x8000000000000000;
    v21 = sub_1AADB05C0(v17, v3);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      break;
    }

    v27 = v22;
    if (v20[3] < v26)
    {
      sub_1AAD8CFF0(v26, v19);
      v21 = sub_1AADB05C0(v17, v3);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_50;
      }

LABEL_28:
      if ((v27 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_9;
    }

    if (v19)
    {
      goto LABEL_28;
    }

    v49 = v21;
    sub_1AAD9745C();
    v21 = v49;
    if ((v27 & 1) == 0)
    {
LABEL_29:
      v16 = v58;
      v58[(v21 >> 6) + 8] |= 1 << v21;
      v44 = (v16[6] + 16 * v21);
      *v44 = v17;
      v44[1] = v3;
      *(v16[7] + 8 * v21) = v18;
      v45 = v16[2];
      v25 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v25)
      {
        goto LABEL_46;
      }

      goto LABEL_36;
    }

LABEL_9:
    v15 = v21;

    v16 = v58;
    *(v58[7] + 8 * v15) = v18;
LABEL_10:
    *(v6 + 16) = v16;

    v9 = v56;
    ++v12;
    v14 += 2;
    if (v8 == v12)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000001ELL, 0x80000001AAFCE890);
  MEMORY[0x1AC5982F0](7630409, 0xE300000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCE8B0);
  sub_1AAF902C4();
  __break(1u);
LABEL_50:
  sub_1AAF905B4();
  __break(1u);

  *(v6 + 16) = v58;

  __break(1u);
  return result;
}

uint64_t sub_1AAEB6A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1AADF7720(MEMORY[0x1E69E7CC0]);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (a1 + 40);
    while (1)
    {
      v11 = *(v8 - 1);
      v10 = *v8;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_1AADB05C0(v11, v10);
      v15 = v5[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        break;
      }

      v19 = v14;
      if (v5[3] >= v18)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = v13;
          sub_1AAD9745C();
          v13 = v25;
        }
      }

      else
      {
        sub_1AAD8CFF0(v18, isUniquelyReferenced_nonNull_native);
        v13 = sub_1AADB05C0(v11, v10);
        if ((v19 & 1) != (v20 & 1))
        {
          goto LABEL_19;
        }
      }

      v21 = v7 / (v6 - 1);
      if (v19)
      {
        v9 = v13;

        *(v5[7] + 8 * v9) = v21;
      }

      else
      {
        v5[(v13 >> 6) + 8] |= 1 << v13;
        v22 = (v5[6] + 16 * v13);
        *v22 = v11;
        v22[1] = v10;
        *(v5[7] + 8 * v13) = v21;
        v23 = v5[2];
        v17 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v17)
        {
          goto LABEL_18;
        }

        v5[2] = v24;
      }

      ++v7;
      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_1AAF905B4();
    __break(1u);
  }

  else
  {
LABEL_14:
    v26 = swift_allocObject();
    *(v26 + 16) = a2;
    *(v26 + 24) = v5;
    *(a3 + 8) = v26;
    *(a3 + 16) = 0;
    *a3 = sub_1AAEB90AC;
    *(a3 + 40) = a1;
    *(a3 + 48) = a2;
    *(a3 + 56) = 1;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 64) = xmmword_1AAFB4DB0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    swift_retain_n();
  }

  return result;
}

uint64_t sub_1AAEB6C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1AADF844C(MEMORY[0x1E69E7CC0]);
  v6 = *(a1 + 16);
  v30 = a1;
  if (!v6)
  {
LABEL_16:
    v27 = swift_allocObject();
    *(v27 + 16) = v5;
    *(a3 + 8) = v27;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
    *a3 = sub_1AAEB9124;
    *(a3 + 48) = v30;
    *(a3 + 56) = a2;
    *(a3 + 64) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 72) = xmmword_1AAFB4DB0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
  }

  v7 = 0;
  v8 = (a1 + 40);
  while (1)
  {
    v10 = *(a2 + 16);
    if (!v10)
    {
      break;
    }

    v12 = *(v8 - 1);
    v11 = *v8;
    v13 = *(a2 + 32 + 8 * (v7 % v10));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_1AADB05C0(v12, v11);
    v17 = v5[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_20;
    }

    v21 = v16;
    if (v5[3] < v20)
    {
      sub_1AAD8B208(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_1AADB05C0(v12, v11);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if (v21)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v26 = v15;
    sub_1AAD96368();
    v15 = v26;
    if (v21)
    {
LABEL_3:
      v9 = v15;

      *(v5[7] + 8 * v9) = v13;
      goto LABEL_4;
    }

LABEL_12:
    v5[(v15 >> 6) + 8] |= 1 << v15;
    v23 = (v5[6] + 16 * v15);
    *v23 = v12;
    v23[1] = v11;
    *(v5[7] + 8 * v15) = v13;
    v24 = v5[2];
    v19 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v5[2] = v25;
LABEL_4:
    ++v7;
    v8 += 2;
    if (v6 == v7)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AAEB6EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1AADF8544(MEMORY[0x1E69E7CC0]);
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_16:
    v30 = swift_allocObject();
    *(v30 + 16) = v5;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *a3 = sub_1AAEB9114;
    *(a3 + 8) = v30;
    *(a3 + 72) = a1;
    *(a3 + 80) = a2;
    *(a3 + 88) = 0;
    *(a3 + 64) = 0;
    *(a3 + 96) = xmmword_1AAFB4DB0;
    *(a3 + 112) = 0;
    *(a3 + 120) = 0;
  }

  v7 = 0;
  v33 = a2 + 32;
  v8 = (a1 + 40);
  while (1)
  {
    v10 = *(a2 + 16);
    if (!v10)
    {
      break;
    }

    v11 = a2;
    v13 = *(v8 - 1);
    v12 = *v8;
    sub_1AAD9B194(v33 + 40 * (v7 % v10), v34);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_1AADB05C0(v13, v12);
    v17 = v5[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_18;
    }

    v21 = v16;
    if (v5[3] < v20)
    {
      sub_1AAD8B4A0(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_1AADB05C0(v13, v12);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v21)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v29 = v15;
    sub_1AAD964C4();
    v15 = v29;
    if (v21)
    {
LABEL_3:
      v9 = v15;

      sub_1AAEB90B8(v34, v5[7] + 40 * v9);
      goto LABEL_4;
    }

LABEL_12:
    v5[(v15 >> 6) + 8] |= 1 << v15;
    v23 = (v5[6] + 16 * v15);
    *v23 = v13;
    v23[1] = v12;
    v24 = v5[7] + 40 * v15;
    v25 = v35;
    v26 = v34[1];
    *v24 = v34[0];
    *(v24 + 16) = v26;
    *(v24 + 32) = v25;
    v27 = v5[2];
    v19 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v19)
    {
      goto LABEL_19;
    }

    v5[2] = v28;
LABEL_4:
    ++v7;
    v8 += 2;
    a2 = v11;
    if (v6 == v7)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AAEB7100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1AADF8690(MEMORY[0x1E69E7CC0]);
  v40 = *(a1 + 16);
  v37 = a1;
  if (!v40)
  {
LABEL_16:
    v34 = swift_allocObject();
    *(v34 + 16) = v5;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0;
    *a3 = sub_1AAEB911C;
    *(a3 + 8) = v34;
    *(a3 + 72) = v37;
    *(a3 + 80) = a2;
    *(a3 + 88) = 0;
    *(a3 + 64) = 0;
    *(a3 + 96) = xmmword_1AAFB4DB0;
    *(a3 + 112) = 0;
    *(a3 + 120) = 0;
  }

  v6 = 0;
  v38 = a2;
  v39 = a2 + 32;
  v7 = (a1 + 40);
  while (1)
  {
    v10 = *(a2 + 16);
    if (!v10)
    {
      break;
    }

    v12 = *(v7 - 1);
    v11 = *v7;
    v13 = (v39 + 40 * (v6 % v10));
    v14 = *v13;
    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    v17 = v13[2];
    v18 = v13[3];
    v19 = v13[4];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1AADB05C0(v12, v11);
    v23 = v5[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_20;
    }

    v27 = v22;
    if (v5[3] < v26)
    {
      sub_1AAD8B764(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1AADB05C0(v12, v11);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if (v27)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v33 = v21;
    sub_1AAD9666C();
    v21 = v33;
    if (v27)
    {
LABEL_3:
      v8 = v21;

      v9 = v5[7] + 40 * v8;
      *v9 = v14;
      *(v9 + 8) = v16;
      *(v9 + 12) = v15;
      *(v9 + 16) = v17;
      *(v9 + 24) = v18;
      *(v9 + 32) = v19;

      goto LABEL_4;
    }

LABEL_12:
    v5[(v21 >> 6) + 8] |= 1 << v21;
    v29 = (v5[6] + 16 * v21);
    *v29 = v12;
    v29[1] = v11;
    v30 = v5[7] + 40 * v21;
    *v30 = v14;
    *(v30 + 8) = v16;
    *(v30 + 12) = v15;
    *(v30 + 16) = v17;
    *(v30 + 24) = v18;
    *(v30 + 32) = v19;
    v31 = v5[2];
    v25 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v5[2] = v32;
LABEL_4:
    ++v6;
    v7 += 2;
    a2 = v38;
    if (v40 == v6)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AAEB73AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1AADF87C0(MEMORY[0x1E69E7CC0]);
  v6 = *(a1 + 16);
  v30 = a1;
  if (!v6)
  {
LABEL_16:
    v27 = swift_allocObject();
    *(v27 + 16) = v5;
    *(a3 + 8) = v27;
    *(a3 + 16) = 0;
    *a3 = sub_1AAEB90A4;
    *(a3 + 40) = v30;
    *(a3 + 48) = a2;
    *(a3 + 56) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 64) = xmmword_1AAFB4DB0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
  }

  v7 = 0;
  v8 = (a1 + 40);
  while (1)
  {
    v10 = *(a2 + 16);
    if (!v10)
    {
      break;
    }

    v12 = *(v8 - 1);
    v11 = *v8;
    v13 = *(a2 + 32 + 8 * (v7 % v10));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_1AADB05C0(v12, v11);
    v17 = v5[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_20;
    }

    v21 = v16;
    if (v5[3] < v20)
    {
      sub_1AAD8BA38(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_1AADB05C0(v12, v11);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if (v21)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v26 = v15;
    sub_1AAD967F8();
    v15 = v26;
    if (v21)
    {
LABEL_3:
      v9 = v15;

      *(v5[7] + 8 * v9) = v13;

      goto LABEL_4;
    }

LABEL_12:
    v5[(v15 >> 6) + 8] |= 1 << v15;
    v23 = (v5[6] + 16 * v15);
    *v23 = v12;
    v23[1] = v11;
    *(v5[7] + 8 * v15) = v13;
    v24 = v5[2];
    v19 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v5[2] = v25;
LABEL_4:
    ++v7;
    v8 += 2;
    if (v6 == v7)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AAEB75EC(uint64_t a1, void (*a2)(unint64_t *, double), uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v11 = a5 - a6;
  if (a6 > a7)
  {
    v11 = -v11;
  }

  a2(&v17, floor(v11 / a8));
  if (v18)
  {
    goto LABEL_13;
  }

  v12 = v17;
  if ((v17 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  if (v13 < v17)
  {
    return 0;
  }

  if (!v13)
  {
    __break(1u);
LABEL_13:
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1AAF900D4();
    MEMORY[0x1AC5982F0](a3, a4);
    MEMORY[0x1AC5982F0](0xD00000000000001ELL, 0x80000001AAFCE890);
    MEMORY[0x1AC5982F0](7630409, 0xE300000000000000);
    MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCE8B0);
    result = sub_1AAF902C4();
    __break(1u);
    return result;
  }

  v15 = v13 - 1;
  if (v15 < v17)
  {
    v12 = v15;
  }

  v16 = *(a1 + 16 * v12 + 32);

  return v16;
}

unint64_t sub_1AAEB7754(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v1[6] = 0;
  v1[7] = 0;
  v1[5] = 1;

  v4 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1AAEB8780;
  *(v5 + 24) = v3;
  v6 = *(v4 + 48);
  *(v4 + 48) = sub_1AACD8830;
  *(v4 + 56) = v5;

  sub_1AACB4A98(v6);

  swift_beginAccess();
  v7 = *(v4 + 40);
  *(v4 + 40) = a1;
  swift_retain_n();
  sub_1AAE28C84(v7);

  *(v4 + 16) = 1;

  return v4;
}

uint64_t sub_1AAEB787C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AACD8DD8();
  swift_beginAccess();
  v4 = *(a1 + 40);
  if (v4 == 1)
  {
    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t *sub_1AAEB7920@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 16))
  {
    result = sub_1AADB05C0(*result, result[1]);
    if (v5)
    {
      *a3 = *(*(a2 + 56) + 8 * result);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AAEB796C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1AADB05C0(*result, *(result + 8));
  if ((v5 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(a2 + 56) + 40 * result;

  return sub_1AAD9B194(v6, a3);
}

unint64_t sub_1AAEB79CC@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1AADB05C0(*result, *(result + 8));
  if ((v5 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = (*(a2 + 56) + 40 * result);
  v8 = v6[1];
  v7 = v6[2];
  v9 = v6[3];
  v10 = v6[4];
  *a3 = *v6;
  a3[1] = v8;
  a3[2] = v7;
  a3[3] = v9;
  a3[4] = v10;
}

unint64_t sub_1AAEB7A48@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1AADB05C0(*result, *(result + 8));
  if ((v5 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *a3 = *(*(a2 + 56) + 8 * result);
}

uint64_t sub_1AAEB7AA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (*(v7 + 16) && (v8 = sub_1AADB05C0(v6, v5), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0x7FF8000000000000;
  }

  result = swift_endAccess();
  *a3 = v10;
  return result;
}

uint64_t *sub_1AAEB7B34@<X0>(uint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t **a3@<X8>)
{
  if (*(a2 + 16))
  {
    result = sub_1AADB05C0(*result, result[1]);
    if (v4)
    {
      sub_1AAF8D8A4();
      result = sub_1AAF8DA44();
      *a3 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AAEB7D18(uint64_t *a1, char a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v33 = *(a1 + 4);
  v34 = *(a1 + 80);
  v7 = v34;
  v8 = v33;
  v9 = v34 >> 5;
  if (v9 > 3)
  {
    if (v34 >> 5 > 5u)
    {
      if (v9 != 6)
      {
        if (BYTE8(v33) > 1u)
        {
          v30 = a3;
          v27 = &v30;
          if (BYTE8(v33) == 2)
          {

            v32 = sub_1AAEA03BC(v8);
            v28 = &v32;
            return sub_1AAEA3718(&v27, sub_1AAEB5388, 0);
          }

          else
          {

            v32 = sub_1AAEA03A4(v8);
            v28 = &v32;
            return sub_1AAEA34D0(&v27, sub_1AAEB5224, 0);
          }
        }

        else
        {
          v30 = a3;
          v27 = &v30;
          if (BYTE8(v33))
          {

            v32 = sub_1AAEA03D4(v8);
            v28 = &v32;
            return sub_1AAEA3964(&v27, sub_1AAEB54F0, 0);
          }

          else
          {

            v32 = sub_1AAEA03EC(v8);
            v28 = &v32;
            return sub_1AAEA3BC0(&v27, sub_1AAEB5680, 0);
          }
        }
      }

      v32 = a3;
      v30 = &v32;

      sub_1AAEB7BD8(&v33, &v27);
      v27 = sub_1AAEAA148(v8, *(&v8 + 1), v7 & 0x1F);
      v31 = &v27;
      v18 = swift_allocObject();
      *(v18 + 16) = v5;
      *(v18 + 24) = v6;
      v16 = sub_1AAEA3250(&v30, sub_1AAEB87CC, v18);
    }

    else
    {
      v32 = a3;
      v30 = &v32;
      if (v9 == 4)
      {

        sub_1AAEB7BD8(&v33, &v27);
        v27 = sub_1AAEAA224(v8, *(&v8 + 1), v7 & 0x1F);
        v31 = &v27;
        v15 = swift_allocObject();
        *(v15 + 16) = v5;
        *(v15 + 24) = v6;
        v16 = sub_1AAEA2FE0(&v30, sub_1AAEB8800, v15);
      }

      else
      {

        sub_1AAEB7BD8(&v33, &v27);
        v27 = sub_1AAEAA090(v8, *(&v8 + 1), v7 & 0x1F);
        v31 = &v27;
        v20 = swift_allocObject();
        *(v20 + 16) = v5;
        *(v20 + 24) = v6;
        v16 = sub_1AAEA2DA4(&v30, sub_1AAEB8834, v20);
      }
    }

LABEL_16:
    v14 = v16;
    sub_1AAEB7C4C(&v33);
    return v14;
  }

  if (v34 >> 5 > 1u)
  {
    v32 = a3;
    v30 = &v32;
    if (v9 == 2)
    {

      sub_1AAEB7BD8(&v33, &v27);
      v27 = sub_1AAEA9ED8(v8, *(&v8 + 1), v7 & 0x1F);
      v31 = &v27;
      v17 = swift_allocObject();
      *(v17 + 16) = v5;
      *(v17 + 24) = v6;
      *(v17 + 25) = a2;
      v16 = sub_1AAEA28D0(&v30, sub_1AAEB884C, v17);
    }

    else
    {

      sub_1AAEB7BD8(&v33, &v27);
      v27 = sub_1AAEA9FB4(v8, *(&v8 + 1), v7 & 0x1F);
      v31 = &v27;
      v21 = swift_allocObject();
      *(v21 + 16) = v5;
      *(v21 + 24) = v6;
      v16 = sub_1AAEA2B3C(&v30, sub_1AAEB8840, v21);
    }

    goto LABEL_16;
  }

  if (v9)
  {
    v32 = a3;
    v30 = &v32;

    sub_1AAEB7BD8(&v33, &v27);
    v27 = sub_1AAEA9DFC(v8, *(&v8 + 1), v7 & 0x1F);
    v31 = &v27;
    v19 = swift_allocObject();
    *(v19 + 16) = v5;
    *(v19 + 24) = v6;
    *(v19 + 25) = a2;
    v16 = sub_1AAEA2664(&v30, sub_1AAEB8898, v19);
    goto LABEL_16;
  }

  v32 = a4;
  v26 = sub_1AACF263C(v33);
  v27 = &v32;
  v25 = sub_1AACF263C(*(&v33 + 1));
  v28 = &v26;
  v29 = &v25;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 17) = 0;

  v23 = sub_1AACF2EB4(&v27, sub_1AAEB92B0, v11);
  v24 = a3;
  v30 = &v24;
  v31 = &v23;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v6;
  *(v12 + 25) = a2;

  return sub_1AAEA2664(&v30, sub_1AAEB92B4, v12);
}

void *sub_1AAEB82D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v6 = *(v4 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  result = v6(&v10, v8);
  *a4 = v10;
  return result;
}

void *sub_1AAEB832C@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  result = (*(v2 + 16))(&v5, *a1);
  *a2 = v5;
  return result;
}

void *sub_1AAEB8378@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  result = (*(v3 + 16))(&v6, *&a3, 0, a1);
  *a2 = v6;
  return result;
}

double sub_1AAEB83C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 16);
  v11[0] = a1;
  v11[1] = a2;
  v12 = a3;
  v6(v13, v11);
  v8 = v13[1];
  result = *&v13[2];
  v9 = v13[3];
  v10 = v13[4];
  *a4 = v13[0];
  *(a4 + 8) = v8;
  *(a4 + 16) = result;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  return result;
}

double sub_1AAEB8430@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  (*(v2 + 16))(v8, *a1);
  v5 = v8[1];
  result = *&v8[2];
  v6 = v8[3];
  v7 = v8[4];
  *a2 = v8[0];
  *(a2 + 8) = v5;
  *(a2 + 16) = result;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

double sub_1AAEB8494@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  (*(v3 + 16))(v9, *&a3, 0, a1);
  v6 = v9[1];
  result = *&v9[2];
  v7 = v9[3];
  v8 = v9[4];
  *a2 = v9[0];
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_1AAEB84F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3;
  return v4(v6);
}

double sub_1AAEB85C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, double *a4@<X8>)
{
  v6 = *(v4 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  v6(&v10, v8);
  result = v10;
  *a4 = v10;
  return result;
}

double sub_1AAEB861C@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  (*(v2 + 16))(&v5, *a1);
  result = v5;
  *a2 = v5;
  return result;
}

double sub_1AAEB8668@<D0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  (*(v3 + 16))(&v6, *&a3, 0, a1);
  result = v6;
  *a2 = v6;
  return result;
}

void sub_1AAEB86B4()
{
  if (!qword_1ED9B0DC8)
  {
    sub_1AACDE090(255, &qword_1ED9B10D8, &type metadata for DomainOverride, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Signal();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0DC8);
    }
  }
}

uint64_t sub_1AAEB8738(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AAEB878C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t *sub_1AAEB88E4@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (result = sub_1AADB05C0(*result, result[1]), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + 8 * result);
  }

  else
  {
    v6 = 0x7FF8000000000000;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1AAEB8968(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_1AAD7AAA4(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_1AAD411E8(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1AAD411E8((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

unint64_t sub_1AAEB8AC8(void *a1, void *a2, char a3, void *a4)
{
  LOBYTE(v5) = a3;
  v7 = a1[2];

  if (!v7 || !a2[2])
  {
LABEL_14:
  }

  v9 = a1[4];
  v8 = a1[5];
  v10 = a2[4];
  v11 = *a4;

  result = sub_1AADB05C0(v9, v8);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v13;
  if (v11[3] < v17)
  {
    sub_1AAD8B208(v17, v5 & 1);
    result = sub_1AADB05C0(v9, v8);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    result = sub_1AAF905B4();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    v20 = *a4;
    if (v18)
    {
LABEL_9:
      v21 = result;

      *(v20[7] + 8 * v21) = v10;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v22 = result;
  sub_1AAD96368();
  result = v22;
  v20 = *a4;
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_11:
  v20[(result >> 6) + 8] |= 1 << result;
  v23 = (v20[6] + 16 * result);
  *v23 = v9;
  v23[1] = v8;
  *(v20[7] + 8 * result) = v10;
  v24 = v20[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v16)
  {
    v20[2] = v25;
LABEL_13:
    if (v7 != 1)
    {
      v5 = a1 + 7;
      v26 = a2 + 5;
      v27 = 1;
      while (1)
      {
        v29 = a2[2];
        if (v27 == v29)
        {
          break;
        }

        if (v27 >= v29)
        {
          goto LABEL_27;
        }

        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v26;
        v30 = *a4;

        result = sub_1AADB05C0(v9, v8);
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v16 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v16)
        {
          goto LABEL_26;
        }

        v18 = v31;
        if (v30[3] < v34)
        {
          sub_1AAD8B208(v34, 1);
          result = sub_1AADB05C0(v9, v8);
          if ((v18 & 1) != (v35 & 1))
          {
            goto LABEL_6;
          }
        }

        v36 = *a4;
        if (v18)
        {
          v28 = result;

          *(v36[7] + 8 * v28) = v10;
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          v37 = (v36[6] + 16 * result);
          *v37 = v9;
          v37[1] = v8;
          *(v36[7] + 8 * result) = v10;
          v38 = v36[2];
          v16 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v16)
          {
            goto LABEL_28;
          }

          v36[2] = v39;
        }

        ++v27;
        v5 += 2;
        ++v26;
        if (v7 == v27)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_14;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1AAEB8DAC@<X0>(double *a1@<X0>, void (*a2)(unint64_t *, double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1AAEB75EC(*(v5 + 40), a2, a3, a4, *a1, *(v5 + 16), *(v5 + 24), *(v5 + 32));
  *a5 = result;
  a5[1] = v8;
  return result;
}

unint64_t sub_1AAEB8DE8(void *a1, void *a2, char a3, void *a4)
{
  LOBYTE(v5) = a3;
  v7 = a1[2];

  if (!v7 || !a2[2])
  {
LABEL_14:
  }

  v9 = a1[4];
  v8 = a1[5];
  v10 = a2[4];
  v11 = *a4;

  result = sub_1AADB05C0(v9, v8);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v13;
  if (v11[3] < v17)
  {
    sub_1AAD8CFF0(v17, v5 & 1);
    result = sub_1AADB05C0(v9, v8);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    result = sub_1AAF905B4();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    v20 = *a4;
    if (v18)
    {
LABEL_9:
      v21 = result;

      *(v20[7] + 8 * v21) = v10;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v22 = result;
  sub_1AAD9745C();
  result = v22;
  v20 = *a4;
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_11:
  v20[(result >> 6) + 8] |= 1 << result;
  v23 = (v20[6] + 16 * result);
  *v23 = v9;
  v23[1] = v8;
  *(v20[7] + 8 * result) = v10;
  v24 = v20[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v16)
  {
    v20[2] = v25;
LABEL_13:
    if (v7 != 1)
    {
      v5 = a1 + 7;
      v26 = a2 + 5;
      v27 = 1;
      while (1)
      {
        v29 = a2[2];
        if (v27 == v29)
        {
          break;
        }

        if (v27 >= v29)
        {
          goto LABEL_27;
        }

        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v26;
        v30 = *a4;

        result = sub_1AADB05C0(v9, v8);
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v16 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v16)
        {
          goto LABEL_26;
        }

        v18 = v31;
        if (v30[3] < v34)
        {
          sub_1AAD8CFF0(v34, 1);
          result = sub_1AADB05C0(v9, v8);
          if ((v18 & 1) != (v35 & 1))
          {
            goto LABEL_6;
          }
        }

        v36 = *a4;
        if (v18)
        {
          v28 = result;

          *(v36[7] + 8 * v28) = v10;
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          v37 = (v36[6] + 16 * result);
          *v37 = v9;
          v37[1] = v8;
          *(v36[7] + 8 * result) = v10;
          v38 = v36[2];
          v16 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v16)
          {
            goto LABEL_28;
          }

          v36[2] = v39;
        }

        ++v27;
        v5 += 2;
        ++v26;
        if (v7 == v27)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_14;
  }

LABEL_28:
  __break(1u);
  return result;
}

double sub_1AAEB9144@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

uint64_t sub_1AAEB9180(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1AAEB9228@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v7 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return v6(a2, v7, v4);
}

__n128 sub_1AAEB92A4@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

unint64_t sub_1AAEB92B8(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEBF794;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AAEC013C;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEBF694(0, &qword_1EB426AE8, sub_1AAEBF760, type metadata accessor for Signal);
  v5 = swift_allocObject();
  v5[5] = 1;
  v5[6] = 0;
  v5[7] = 0;
  v5[8] = 0;

  v6 = sub_1AACBD668(v2);

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = *(v6 + 56);
  *(v6 + 56) = sub_1AACFEA94;
  *(v6 + 64) = v7;

  sub_1AACB4A98(v8);

  return v6;
}

unint64_t sub_1AAEB9438(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEC0144;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AAEC013C;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEBF694(0, &unk_1EB426AD0, sub_1AAEBF72C, type metadata accessor for Signal);
  v5 = swift_allocObject();
  v5[5] = 1;
  v5[6] = 0;
  v5[7] = 0;
  v5[8] = 0;

  v6 = sub_1AACBD668(v2);

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = *(v6 + 56);
  *(v6 + 56) = sub_1AACFEA94;
  *(v6 + 64) = v7;

  sub_1AACB4A98(v8);

  return v6;
}

unint64_t sub_1AAEB95B8(uint64_t a1)
{
  if (a1)
  {
    sub_1AACB25D8(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AAF9DE80;
    *(v2 + 32) = a1;
    v3 = sub_1AAEC0144;
    v4 = a1;
  }

  else
  {
    v3 = sub_1AAEC013C;
    v4 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAEBF694(0, &qword_1EB426A98, sub_1AAEBF6F8, type metadata accessor for Signal);
  v5 = swift_allocObject();
  v5[5] = 1;
  v5[6] = 0;
  v5[7] = 0;
  v5[8] = 0;

  v6 = sub_1AACBD668(v2);

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  v8 = *(v6 + 56);
  *(v6 + 56) = sub_1AACFEA94;
  *(v6 + 64) = v7;

  sub_1AACB4A98(v8);

  return v6;
}

uint64_t sub_1AAEB9738@<X0>(__int128 **a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v37 = a3;
  v5 = sub_1AAF8DF14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *a1;
  v10 = a1[1];
  v11 = **a1;
  v12 = (*a1)[1];
  v41 = (*a1)[2];
  v39 = v11;
  v40 = v12;
  v13 = v9[3];
  v14 = v9[4];
  v15 = v9[5];
  v45 = *(v9 + 12);
  v43 = v14;
  v44 = v15;
  v42 = v13;
  v16 = *v10;
  v17 = v10[1];
  v18 = 0.0;
  if (v14 == 255 || (v14 & 1) != 0)
  {
    v19 = 0.0;
  }

  else
  {
    v20 = *(*(&v42 + 1) + 16);
    v19 = 0.0;
    if (v20)
    {
      v19 = *(*(&v42 + 1) + 8 * v20 + 24);
      v18 = *(*(&v42 + 1) + 32);
    }
  }

  v21 = v19 - v18;
  (*(v6 + 16))(&v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1[2], v5);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = (v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 111) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v6 + 32))(v26 + v22, v8, v5);
  v27 = (v26 + v23);
  *v27 = v16;
  v27[1] = v17;
  v28 = v26 + v24;
  v29 = v40;
  *v28 = v39;
  *(v28 + 16) = v29;
  *(v28 + 96) = v45;
  v30 = v44;
  *(v28 + 64) = v43;
  *(v28 + 80) = v30;
  v31 = v42;
  *(v28 + 32) = v41;
  *(v28 + 48) = v31;
  *(v26 + v25) = v21;
  v32 = v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = *(a2 + 48);
  *(v32 + 32) = *(a2 + 32);
  *(v32 + 48) = v33;
  *(v32 + 64) = *(a2 + 64);
  *(v32 + 80) = *(a2 + 80);
  v34 = *(a2 + 16);
  *v32 = *a2;
  *(v32 + 16) = v34;
  v35 = v37;
  *v37 = sub_1AAEBFB3C;
  v35[1] = v26;
  sub_1AAEBDE80(&v39, v38, qword_1ED9B40B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E7DE0], sub_1AACFE640);
  return sub_1AACC74AC(a2, v38);
}

void sub_1AAEB99C0(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v14 = sub_1AAF8DF14();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v19 = 0;
    v20 = 0;
    v21 = -1;
LABEL_13:
    v29 = 1;
LABEL_17:
    *a4 = v19;
    *(a4 + 8) = v20;
    *(a4 + 16) = v21;
    *(a4 + 17) = v29;
    return;
  }

  v22 = *a1;
  v23 = *(a1 + 8);
  (*(v15 + 104))(v18, *MEMORY[0x1E697E7D8], v14, v16);
  v24 = sub_1AAF8DF04();
  (*(v15 + 8))(v18, v14);
  v25 = *(a2 + 32);
  if (!v25)
  {
    v29 = 0;
    v19 = 0;
    v20 = 0;
LABEL_16:
    v21 = -1;
    goto LABEL_17;
  }

  v26 = a5 - v22;
  if ((v24 & 1) == 0)
  {
    v26 = v22;
  }

  v27 = atan2(-(v23 - a6 * 0.5), v26 - a5 * 0.5) * 180.0 / 3.14159265;
  if (v27 <= 0.0)
  {
    v27 = v27 + 360.0;
  }

  v28 = 90.0 - v27;
  if (v28 < 0.0)
  {
    v28 = v28 + 360.0;
  }

  v31 = v28 / 360.0 * a7;

  v25(&v32, &v31);
  sub_1AACB4A98(v25);
  v20 = v33;
  if (!v33)
  {
    v29 = 0;
    v19 = 0;
    goto LABEL_16;
  }

  if ((*(a3 + 48) & 0x6000000000000000) == 0x4000000000000000)
  {
    v19 = v32;
    v21 = 2;
    goto LABEL_13;
  }

  sub_1AAF902C4();
  __break(1u);
}

uint64_t sub_1AAEB9C64@<X0>(__int128 **a1@<X0>, char a2@<W1>, void (**a3)(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v6 = sub_1AAF8DF14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *a1;
  v11 = a1[1];
  v13 = (*a1)[1];
  v12 = (*a1)[2];
  v29 = **a1;
  v30 = v13;
  v31 = v12;
  v15 = v10[4];
  v14 = v10[5];
  v16 = v10[3];
  v35 = *(v10 + 12);
  v33 = v15;
  v34 = v14;
  v32 = v16;
  v17 = *v11;
  v18 = v11[1];
  (*(v7 + 16))(v9, a1[2], v6);
  v19 = (*(v7 + 80) + 120) & ~*(v7 + 80);
  v20 = v19 + v8;
  v21 = swift_allocObject();
  v22 = v34;
  *(v21 + 80) = v33;
  *(v21 + 96) = v22;
  *(v21 + 112) = v35;
  v23 = v30;
  *(v21 + 16) = v29;
  *(v21 + 32) = v23;
  v24 = v32;
  *(v21 + 48) = v31;
  *(v21 + 64) = v24;
  (*(v7 + 32))(v21 + v19, v9, v6);
  *(v21 + v20) = a2;
  v25 = v21 + (v20 & 0xFFFFFFFFFFFFFFF8);
  *(v25 + 8) = v17;
  *(v25 + 16) = v18;
  *a3 = sub_1AAEBFC10;
  a3[1] = v21;
  return sub_1AAEBDE80(&v29, v28, qword_1ED9B40B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E7DE0], sub_1AACFE640);
}

void sub_1AAEB9E48(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_1AAF8DF14();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 8) & 1) != 0 || (v15 = *a1, (*(v11 + 104))(v14, *MEMORY[0x1E697E7D8], v10, v12), v16 = sub_1AAF8DF04(), (*(v11 + 8))(v14, v10), (v17 = *(a2 + 32)) == 0))
  {
    v19 = 0;
    v20 = 0;
    v21 = -1;
  }

  else
  {
    v18 = a5 - v15;
    if ((v16 & (a3 == 0)) == 0)
    {
      v18 = v15;
    }

    v23 = v18;

    v17(&v24, &v23);
    sub_1AACB4A98(v17);
    v19 = v24;
    v20 = v25;
    if (v25)
    {
      v21 = 2;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = -1;
    }
  }

  *a4 = v19;
  *(a4 + 8) = v20;
  *(a4 + 16) = v21;
}

void sub_1AAEB9FF8(__int128 **a1@<X0>, void (**a2)(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = sub_1AAF8DF14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *a1;
  v10 = **a1;
  v11 = (*a1)[1];
  v43 = (*a1)[2];
  v41 = v10;
  v42 = v11;
  v12 = v9[3];
  v13 = v9[4];
  v14 = v9[5];
  v47 = *(v9 + 12);
  v45 = v13;
  v46 = v14;
  v44 = v12;
  v15 = *(v12 + 16);
  if (v15)
  {
    v39 = a2;
    v16 = a1[1];
    v17 = a1[2];
    v18 = *v16;
    v19 = v16[1];
    v20 = *(v12 + 32);
    v21 = *(v12 + 32 + 8 * v15 - 8);
    v22 = COERCE_DOUBLE(sub_1AACE1D40(v7));
    v24 = 0.0;
    v25 = 0.0;
    if (v45 != 255 && (v45 & 1) == 0 && *(*(&v44 + 1) + 16))
    {
      v25 = *(*(&v44 + 1) + 32);
    }

    if ((v23 & 1) == 0)
    {
      v24 = v22;
    }

    v26 = v24 - v25;
    (*(v5 + 16))(&v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v17, v4);
    v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v28 = (v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 111) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    (*(v5 + 32))(v32 + v27, v8, v4);
    v33 = (v32 + v28);
    *v33 = v18;
    v33[1] = v19;
    v34 = v32 + v29;
    v35 = v42;
    *v34 = v41;
    *(v34 + 16) = v35;
    *(v34 + 96) = v47;
    v36 = v46;
    *(v34 + 64) = v45;
    *(v34 + 80) = v36;
    v37 = v44;
    *(v34 + 32) = v43;
    *(v34 + 48) = v37;
    *(v32 + v30) = v26;
    *(v32 + v31) = v20;
    *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
    v38 = v39;
    *v39 = sub_1AAEBF7B0;
    v38[1] = v32;
    sub_1AAEBDE80(&v41, v40, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0], sub_1AACFE640);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AAEBA28C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>)
{
  v16 = sub_1AAF8DF14();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0.0;
  if (*(a1 + 16))
  {
    goto LABEL_10;
  }

  v22 = *a1;
  v23 = *(a1 + 8);
  (*(v17 + 104))(v20, *MEMORY[0x1E697E7D8], v16, v18);
  v24 = sub_1AAF8DF04();
  (*(v17 + 8))(v20, v16);
  v25 = *(a2 + 32);
  if (!v25)
  {
    goto LABEL_10;
  }

  v26 = a4 - v22;
  if ((v24 & 1) == 0)
  {
    v26 = v22;
  }

  v27 = atan2(-(v23 - a5 * 0.5), v26 - a4 * 0.5) * 180.0 / 3.14159265;
  if (v27 <= 0.0)
  {
    v27 = v27 + 360.0;
  }

  v28 = 90.0 - v27;
  if (v28 < 0.0)
  {
    v28 = v28 + 360.0;
  }

  v34 = v28 / 360.0 * a6;

  v25(&v35, &v34);
  sub_1AACB4A98(v25);
  if (v36)
  {
LABEL_10:
    v29 = -1;
  }

  else
  {
    v29 = 0;
    v30 = v35;
    if (a7 >= a8)
    {
      v31 = a7;
    }

    else
    {
      v31 = a8;
    }

    if (a7 >= a8)
    {
      v32 = a8;
    }

    else
    {
      v32 = a7;
    }

    if (v35 <= v32)
    {
      v30 = v32;
    }

    if (v31 >= v30)
    {
      v21 = v30;
    }

    else
    {
      v21 = v31;
    }
  }

  *a3 = v21;
  *(a3 + 8) = 0;
  *(a3 + 16) = v29;
  *(a3 + 17) = 1;
}

void sub_1AAEBA4E0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D2>, double a7@<D3>)
{
  v14 = sub_1AAF8DF14();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0.0;
  if (*(a1 + 8))
  {
    goto LABEL_6;
  }

  v20 = *a1;
  (*(v15 + 104))(v18, *MEMORY[0x1E697E7D8], v14, v16);
  v21 = sub_1AAF8DF04();
  (*(v15 + 8))(v18, v14);
  v22 = *(a2 + 32);
  if (!v22)
  {
    goto LABEL_6;
  }

  v23 = a5 - v20;
  if ((v21 & (a3 == 0)) == 0)
  {
    v23 = v20;
  }

  v29 = v23;

  v22(&v30, &v29);
  sub_1AACB4A98(v22);
  if (v31)
  {
LABEL_6:
    v24 = -1;
  }

  else
  {
    v24 = 0;
    v25 = v30;
    if (a6 >= a7)
    {
      v26 = a6;
    }

    else
    {
      v26 = a7;
    }

    if (a6 >= a7)
    {
      v27 = a7;
    }

    else
    {
      v27 = a6;
    }

    if (v30 <= v27)
    {
      v25 = v27;
    }

    if (v26 >= v25)
    {
      v19 = v25;
    }

    else
    {
      v19 = v26;
    }
  }

  *a4 = v19;
  *(a4 + 8) = 0;
  *(a4 + 16) = v24;
}

void sub_1AAEBA6B8(__int128 **a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = sub_1AAF8DF14();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = *a1;
  v13 = (*a1)[4];
  v12 = (*a1)[5];
  v14 = *(*a1 + 12);
  v40 = (*a1)[3];
  v15 = *v11;
  v16 = v11[1];
  v39 = v11[2];
  v43 = v14;
  v41 = v13;
  v42 = v12;
  v37 = v15;
  v38 = v16;
  v17 = *(v40 + 16);
  if (v17)
  {
    v19 = a1[1];
    v18 = a1[2];
    v20 = *(v40 + 32);
    v22 = *v19;
    v21 = v19[1];
    v23 = *(v40 + 32 + 8 * v17 - 8);
    v24 = *(v9 + 16);
    v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24(v34, v18, v8);
    v25 = (*(v9 + 80) + 120) & ~*(v9 + 80);
    v26 = v25 + v10;
    v35 = a3;
    HIDWORD(v33) = a2;
    v27 = ((v26 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    v29 = v42;
    *(v28 + 80) = v41;
    *(v28 + 96) = v29;
    *(v28 + 112) = v43;
    v30 = v38;
    *(v28 + 16) = v37;
    *(v28 + 32) = v30;
    v31 = v40;
    *(v28 + 48) = v39;
    *(v28 + 64) = v31;
    (*(v9 + 32))(v28 + v25, v34, v8);
    *(v28 + v26) = BYTE4(v33);
    v32 = v28 + (v26 & 0xFFFFFFFFFFFFFFF8);
    *(v32 + 8) = v22;
    *(v32 + 16) = v21;
    *(v28 + v27) = v20;
    *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
    *a4 = v35;
    a4[1] = v28;
    sub_1AAEBDE80(&v37, v36, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0], sub_1AACFE640);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AAEBA900(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D2>, double a9@<D3>)
{
  v42 = a5;
  v17 = sub_1AAF8DF14();
  v18 = *(v17 - 8);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = *a2;
  v24 = *(a2 + 8);
  v25 = MEMORY[0x1E697E7D8];
  if (*(a1 + 8))
  {
    v26 = 1;
    v27 = 0.0;
    if (*(a2 + 8))
    {
LABEL_26:
      v36 = 1;
      goto LABEL_27;
    }
  }

  else
  {
    (*(v18 + 104))(v21, *MEMORY[0x1E697E7D8], v17, v19.n128_f64[0]);
    v41[1] = a4;
    v28 = sub_1AAF8DF04();
    (*(v18 + 8))(v21, v17);
    v29 = *(a3 + 32);
    if (v29)
    {
      v30 = v22;
      if ((v28 & (v42 == 0)) != 0)
      {
        v30 = a7 - v22;
      }

      v43 = v30;

      v29(&v44, &v43);
      sub_1AACB4A98(v29);
      v22 = v44;
      if (v45)
      {
        v26 = 1;
      }

      else
      {
        v26 = 0;
        v19.n128_f64[0] = v44;
        if (a8 >= a9)
        {
          v31 = a8;
        }

        else
        {
          v31 = a9;
        }

        if (a8 >= a9)
        {
          v32 = a9;
        }

        else
        {
          v32 = a8;
        }

        if (v32 >= v44)
        {
          v19.n128_f64[0] = v32;
        }

        if (v31 < v19.n128_f64[0])
        {
          v19.n128_f64[0] = v31;
        }

        v22 = v19.n128_f64[0];
      }
    }

    else
    {
      v22 = 0.0;
      v26 = 1;
    }

    v25 = MEMORY[0x1E697E7D8];
    v27 = 0.0;
    if (v24)
    {
      goto LABEL_26;
    }
  }

  (*(v18 + 104))(v21, *v25, v17, v19);
  v33 = sub_1AAF8DF04();
  (*(v18 + 8))(v21, v17);
  v34 = *(a3 + 32);
  if (!v34)
  {
    goto LABEL_26;
  }

  v35 = a7 - v23;
  if ((v33 & (v42 == 0)) == 0)
  {
    v35 = v23;
  }

  v43 = v35;

  v34(&v44, &v43);
  sub_1AACB4A98(v34);
  if (v45)
  {
    goto LABEL_26;
  }

  v36 = 0;
  v38 = v44;
  if (a8 >= a9)
  {
    v39 = a8;
  }

  else
  {
    v39 = a9;
  }

  if (a8 >= a9)
  {
    v40 = a9;
  }

  else
  {
    v40 = a8;
  }

  if (v40 >= v44)
  {
    v38 = v40;
  }

  if (v39 >= v38)
  {
    v27 = v38;
  }

  else
  {
    v27 = v39;
  }

LABEL_27:
  if (v26)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = v22;
  }

  *a6 = v37;
  *(a6 + 8) = 0;
  *(a6 + 16) = v26 << 31 >> 31;
  *(a6 + 24) = v27;
  *(a6 + 32) = 0;
  *(a6 + 40) = v36 << 31 >> 31;
}

uint64_t sub_1AAEBAC14@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **a1;
  v5 = (*a1)[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v31 = v6;
    v29 = sub_1AAEC014C;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v7 = a1[1];
  v8 = *v7;
  v9 = v7[1];
  if (*v7)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v27 = sub_1AAEC0140;
    v28 = v10;
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v32 = v4;
  v11 = a1[2];
  v13 = *v11;
  v12 = v11[1];
  if (*v11)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    v26 = sub_1AAEBF5CC;
  }

  else
  {
    v26 = 0;
    v14 = 0;
  }

  v30 = v8;
  v15 = a1[3];
  v16 = *v15;
  v17 = v15[1];
  if (*v15)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v19 = sub_1AAEBF5C8;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v20 = a1[4];
  v21 = *v20;
  v22 = v20[1];
  if (*v20)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    v24 = sub_1AAEBF568;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  *a2 = swift_getKeyPath();
  *(a2 + 419) = 0;
  *(a2 + 424) = v29;
  *(a2 + 432) = v31;
  *(a2 + 440) = v27;
  *(a2 + 448) = v28;
  *(a2 + 456) = v26;
  *(a2 + 464) = v14;
  *(a2 + 472) = v19;
  *(a2 + 480) = v18;
  *(a2 + 488) = v24;
  *(a2 + 496) = v23;
  sub_1AACBD93C(v32);
  sub_1AACBD93C(v30);
  sub_1AACBD93C(v13);
  sub_1AACBD93C(v16);

  return sub_1AACBD93C(v21);
}

void *sub_1AAEBAE4C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1AAF8E134();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AAEBDE80(v2, v10, &unk_1ED9B4560, &type metadata for ChartSelectionConfiguration, MEMORY[0x1E697DCB8], sub_1AACB25D8);
  if (v10[419] == 1)
  {
    return memcpy(a1, v10, 0x1A3uLL);
  }

  sub_1AAF8FD14();
  v9 = sub_1AAF8E764();
  sub_1AAF8D7B4();

  sub_1AAF8E124();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AAEBAFF4(uint64_t a1, uint64_t (*a2)(void, void, void))
{
  v2 = a2(*a1, *(a1 + 8), *(a1 + 16));
  if ((v4 & 0x100) != 0)
  {
    v6 = v2;
    v7 = v3;
    v8 = v4;
    sub_1AAEBAE4C(v12);
    sub_1AAEBDE24(&v13, v11);
    sub_1AAD10630(v12);
    sub_1AAEBDE80(v11, &v9, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding, MEMORY[0x1E69E6720], sub_1AACB25D8);
    sub_1AAEBDEF4(v11);
    if (v10[24] == 255)
    {
      sub_1AAE2CC54(v6, v7, v8);
      return sub_1AAEBDF48(&v9, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
    }

    else
    {
      v14 = v9;
      v15[0] = *v10;
      *(v15 + 9) = *&v10[9];
      sub_1AAE84DC0(v6, v7, v8);
      return sub_1AAD9E1BC(&v14);
    }
  }

  else
  {

    return sub_1AAE2CC54(v2, v3, v4);
  }
}

uint64_t sub_1AAEBB160(uint64_t a1, uint64_t (*a2)(void, void))
{
  v2 = a2(*a1, *(a1 + 8));
  v4 = v3;
  v6 = v5;
  sub_1AAEBAE4C(v11);
  sub_1AAEBDE24(v11, v10);
  sub_1AAD10630(v11);
  sub_1AAEBDE80(v10, &v8, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding, MEMORY[0x1E69E6720], sub_1AACB25D8);
  sub_1AAEBDEF4(v10);
  if (v9[24] == 255)
  {
    sub_1AAE2CC54(v2, v4, v6);
    return sub_1AAEBDF48(&v8, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
  }

  else
  {
    v12 = v8;
    v13[0] = *v9;
    *(v13 + 9) = *&v9[9];
    sub_1AAE84DC0(v2, v4, v6);
    return sub_1AAD9E1BC(&v12);
  }
}

uint64_t sub_1AAEBB290(uint64_t a1, uint64_t (*a2)(void, void))
{
  v2 = a2(*a1, *(a1 + 8));
  v4 = v3;
  v6 = v5;
  sub_1AAEBAE4C(v11);
  sub_1AAEBDE24(&v12, v10);
  sub_1AAD10630(v11);
  sub_1AAEBDE80(v10, &v8, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding, MEMORY[0x1E69E6720], sub_1AACB25D8);
  sub_1AAEBDEF4(v10);
  if (v9[24] == 255)
  {
    sub_1AAE2CC54(v2, v4, v6);
    return sub_1AAEBDF48(&v8, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding);
  }

  else
  {
    v13 = v8;
    v14[0] = *v9;
    *(v14 + 9) = *&v9[9];
    sub_1AAE84DC0(v2, v4, v6);
    return sub_1AAD9E1BC(&v13);
  }
}

uint64_t sub_1AAEBB3CC(uint64_t a1, uint64_t a2, void (*a3)(unsigned __int128 *__return_ptr, void, void, void, void))
{
  a3(&v20, *a1, *(a1 + 8), *a2, *(a2 + 8));
  v3 = v20;
  v4 = v21;
  v6 = v22;
  v5 = v23;
  v7 = v24;
  sub_1AAEBAE4C(&v20);
  sub_1AAEBDE24(&v20, v16);
  sub_1AAD10630(&v20);
  sub_1AAEBDE80(&v19, &v14, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding, MEMORY[0x1E69E6720], sub_1AACB25D8);
  sub_1AAEBDEF4(v16);
  if (v15[24] == 255)
  {
    sub_1AAE2CC54(v3, *(&v3 + 1), v4);
    sub_1AAE2CC54(v6, v5, v7);
    return sub_1AAEBDF48(&v14, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding);
  }

  else
  {
    v25 = v14;
    v26[0] = *v15;
    *(v26 + 9) = *&v15[9];
    if (v4 == 255)
    {
      v9 = v6;
      v10 = v5;
      v11 = v7;
    }

    else
    {
      if (v7 != 255)
      {
        sub_1AAE84F4C(v3, *(&v3 + 1), v4, v6, v5, v7);
        return sub_1AAE2CD54(&v25);
      }

      v10 = v3 >> 64;
      v9 = v3;
      v11 = v4;
    }

    sub_1AAE2CC54(v9, v10, v11);
    sub_1AAE89C44(&v25, &v20);
    sub_1AACBB198(&v20, v16);
    v12 = v17;
    v13 = v18;
    sub_1AACBB42C(v16, v17);
    (*(v13 + 24))(0, 0, 1, v12, v13);
    sub_1AAE2CD54(&v25);
    return sub_1AACB634C(v16);
  }
}

uint64_t sub_1AAEBB5D8(uint64_t a1, uint64_t a2, void (*a3)(unsigned __int128 *__return_ptr, void, void, void, void))
{
  a3(&v20, *a1, *(a1 + 8), *a2, *(a2 + 8));
  v3 = v20;
  v4 = v21;
  v6 = v22;
  v5 = v23;
  v7 = v24;
  sub_1AAEBAE4C(&v20);
  sub_1AAEBDE24(&v25, v16);
  sub_1AAD10630(&v20);
  sub_1AAEBDE80(&v19, &v14, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding, MEMORY[0x1E69E6720], sub_1AACB25D8);
  sub_1AAEBDEF4(v16);
  if (v15[24] == 255)
  {
    sub_1AAE2CC54(v3, *(&v3 + 1), v4);
    sub_1AAE2CC54(v6, v5, v7);
    return sub_1AAEBDF48(&v14, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding);
  }

  else
  {
    v26 = v14;
    v27[0] = *v15;
    *(v27 + 9) = *&v15[9];
    if (v4 == 255)
    {
      v9 = v6;
      v10 = v5;
      v11 = v7;
    }

    else
    {
      if (v7 != 255)
      {
        sub_1AAE84F4C(v3, *(&v3 + 1), v4, v6, v5, v7);
        return sub_1AAE2CD54(&v26);
      }

      v10 = v3 >> 64;
      v9 = v3;
      v11 = v4;
    }

    sub_1AAE2CC54(v9, v10, v11);
    sub_1AAE89C44(&v26, &v20);
    sub_1AACBB198(&v20, v16);
    v12 = v17;
    v13 = v18;
    sub_1AACBB42C(v16, v17);
    (*(v13 + 24))(0, 0, 1, v12, v13);
    sub_1AAE2CD54(&v26);
    return sub_1AACB634C(v16);
  }
}

void *sub_1AAEBB7E8(void *result, void (*a2)(uint64_t, uint64_t, void), uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = result[2];
  if (a2 && v13 == 1)
  {
    v15 = result[4];
    v16 = result[5];

    a2(v15, v16, 0);
    v17 = a2;
LABEL_4:

    return sub_1AACB4A98(v17);
  }

  if (!v13)
  {
    return result;
  }

  if (v13 == 1)
  {
    if (a4)
    {
      v18 = result[4];
      v19 = result;

      a4(v18, 0);
      sub_1AACB4A98(a4);
      result = v19;
    }

    if (a6)
    {
      v20 = result[5];

      a6(v20, 0);
      result = sub_1AACB4A98(a6);
    }

    if (a8)
    {

      a8(0, 1, 0, 1);
      result = sub_1AACB4A98(a8);
    }

    if (a10)
    {

      a10(0, 1, 0, 1);
      v17 = a10;
      goto LABEL_4;
    }
  }

  else
  {
    if (a8)
    {
      v21 = result[4];
      v22 = result[6];
      v25 = result;

      a8(v21, 0, v22, 0);
      sub_1AACB4A98(a8);
      result = v25;
    }

    if (a10)
    {
      v23 = result[5];
      v24 = result[7];

      a10(v23, 0, v24, 0);
      result = sub_1AACB4A98(a10);
    }

    if (a4)
    {

      a4(0, 1);
      result = sub_1AACB4A98(a4);
    }

    if (a6)
    {

      a6(0, 1);
      v17 = a6;
      goto LABEL_4;
    }
  }

  return result;
}

void sub_1AAEBBA7C(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3, void (*a4)(void, uint64_t), uint64_t a5, void (*a6)(void, uint64_t, void, uint64_t), uint64_t a7, void (*a8)(void, uint64_t, void, uint64_t), uint64_t a9, void (*a10)(void, void, uint64_t))
{
  if (a2)
  {

    a2(0, 1);
    sub_1AACB4A98(a2);
  }

  if (a4)
  {

    a4(0, 1);
    sub_1AACB4A98(a4);
  }

  if (a6)
  {

    a6(0, 1, 0, 1);
    sub_1AACB4A98(a6);
  }

  if (a8)
  {

    a8(0, 1, 0, 1);
    sub_1AACB4A98(a8);
  }

  if (a10)
  {

    a10(0, 0, 1);

    sub_1AACB4A98(a10);
  }
}

uint64_t sub_1AAEBBC58(_BYTE *a1)
{
  v3 = &a1[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_currentLocations];
  v13 = *&a1[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_currentLocations];
  if (a1[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_isDirectTouch] != 1)
  {
    v8 = *&a1[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_startLocations];
    v7 = *&a1[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_startLocations + 8];
    sub_1AAEBF694(0, &qword_1EB423048, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AAF9E2B0;
    *(v5 + 32) = v8;
    *(v5 + 40) = v7;
    v6 = v13;
    goto LABEL_5;
  }

  v12 = *(v3 + 1);
  v4 = v3[32];
  sub_1AAEBF694(0, &qword_1EB423048, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AAF92AB0;
  *(v5 + 32) = v13;
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AAD6A9E4(1, 2, 1, v5);
    *(v5 + 16) = 2;
    v6 = v12;
LABEL_5:
    *(v5 + 48) = v6;
  }

  if ([a1 state] == 1 || objc_msgSend(a1, sel_state) == 2)
  {
    v9 = *(v1 + OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onChanged);
    if (!v9)
    {
      goto LABEL_11;
    }

    sub_1AACBD93C(v9);

    goto LABEL_10;
  }

  if ([a1 state] == 3)
  {
    v9 = *(v1 + OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onEnd);
    if (v9)
    {

      sub_1AACBD93C(v9);
      v10 = v5;
LABEL_10:
      v9(v10);

      sub_1AACB4A98(v9);
    }
  }

LABEL_11:
}

id sub_1AAEBBEF0(void *a1)
{
  [a1 locationInView_];
  v4 = v3;
  v6 = v5;
  result = [a1 state];
  if (result == 1 || (result = [a1 state], result == 2))
  {
    v8 = OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onChanged;
  }

  else
  {
    result = [a1 state];
    if (result != 3)
    {
      return result;
    }

    v8 = OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onEnd;
  }

  v9 = *(v1 + v8);
  if (v9)
  {
    sub_1AAEBF694(0, &qword_1EB423048, type metadata accessor for CGPoint, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AAF92AB0;
    *(v10 + 32) = v4;
    *(v10 + 40) = v6;

    v9(v10);
    sub_1AACB4A98(v9);
  }

  return result;
}

void sub_1AAEBC0A4()
{
  [v0 setUserInteractionEnabled_];
  v1 = objc_allocWithZone(type metadata accessor for ChartDragGestureRecognizer());
  v2 = v0;
  v3 = [v1 initWithTarget:v2 action:sel_handleDragGesture_];
  [v3 setDelegate_];
  [v2 addGestureRecognizer_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCAA0]) initWithTarget:v2 action:sel_handleHover_];

  [v2 addGestureRecognizer_];
}

id sub_1AAEBC254(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onChanged];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onEnd];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_panDelegate;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for InteractionHandlingView.UIViewType.PanDelegate()) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InteractionHandlingView.UIViewType();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1AAEBC33C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1AAEBC420()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for InteractionHandlingView.UIViewType();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1AAEBC0A4();
  v6 = &v5[OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onChanged];
  v7 = *&v5[OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onChanged];
  *v6 = v2;
  *(v6 + 1) = v1;

  sub_1AACB4A98(v7);
  v8 = &v5[OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onEnd];
  v9 = *&v5[OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onEnd];
  *v8 = v4;
  *(v8 + 1) = v3;

  sub_1AACB4A98(v9);
  return v5;
}

uint64_t sub_1AAEBC4D0(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = (a1 + OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onChanged);
  v8 = *(a1 + OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onChanged);
  *v7 = v4;
  v7[1] = v3;

  sub_1AACB4A98(v8);
  v9 = (a1 + OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onEnd);
  v10 = *(a1 + OBJC_IVAR____TtCV6Charts23InteractionHandlingView10UIViewType_onEnd);
  *v9 = v6;
  v9[1] = v5;

  return sub_1AACB4A98(v10);
}

uint64_t sub_1AAEBC580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAEBDFB8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1AAEBC5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAEBDFB8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1AAEBC648()
{
  sub_1AAEBDFB8();
  sub_1AAF8E324();
  __break(1u);
}

void sub_1AAEBC670(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v2 state];
  if ((v5 - 1) < 2)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1AAF8FFA4();
      sub_1AAEBE00C();
      sub_1AAD135EC(&qword_1EB426A90, sub_1AAEBE00C);
      sub_1AAF8FA84();
      a1 = aBlock;
      v6 = v116;
      v7 = v117;
      v8 = v118;
      v9 = v119;
    }

    else
    {
      v18 = -1 << *(a1 + 32);
      v6 = a1 + 56;
      v7 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v9 = v20 & *(a1 + 56);

      v8 = 0;
    }

    v21 = (v7 + 64) >> 6;
    while (1)
    {
      if (a1 < 0)
      {
        v27 = sub_1AAF8FFD4();
        if (!v27)
        {
          goto LABEL_75;
        }

        v121 = v27;
        sub_1AAEBE00C();
        swift_dynamicCast();
        v26 = v122;
        v24 = v8;
        v25 = v9;
        if (!v122)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v22 = v8;
        v23 = v9;
        v24 = v8;
        if (!v9)
        {
          while (1)
          {
            v24 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v24 >= v21)
            {
              goto LABEL_75;
            }

            v23 = *(v6 + 8 * v24);
            ++v22;
            if (v23)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_79:
          v78 = -1 << *(a1 + 32);
          v74 = a1 + 56;
          v75 = ~v78;
          v79 = -v78;
          if (v79 < 64)
          {
            v80 = ~(-1 << v79);
          }

          else
          {
            v80 = -1;
          }

          v77 = v80 & *(a1 + 56);

          v76 = 0;
          goto LABEL_83;
        }

LABEL_25:
        v25 = (v23 - 1) & v23;
        v26 = *(*(a1 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
        if (!v26)
        {
          goto LABEL_75;
        }
      }

      v28 = OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch;
      if (*&v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch])
      {
        goto LABEL_18;
      }

      v29 = *&v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch];
      if (v29)
      {
        sub_1AAEBE00C();
        v30 = v26;
        v31 = v29;
        v32 = sub_1AAF8FE44();

        if (v32)
        {

LABEL_18:
          [v3 ignoreTouch:v26 forEvent:a2];
          goto LABEL_19;
        }

        v28 = OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch;
        v33 = *&v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch];
      }

      else
      {
        v34 = v26;
        v33 = 0;
      }

      *&v3[v28] = v26;

      v35 = [v3 view];
      [v26 locationInView_];
      v37 = v36;
      v39 = v38;

      v40 = &v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_startLocations];
      *(v40 + 2) = v37;
      *(v40 + 3) = v39;
      v40[32] = 0;
      sub_1AAEBD1B8();
LABEL_19:

      v8 = v24;
      v9 = v25;
    }
  }

  if (v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1AAF8FFA4();
      sub_1AAEBE00C();
      sub_1AAD135EC(&qword_1EB426A90, sub_1AAEBE00C);
      sub_1AAF8FA84();
      a1 = aBlock;
      v14 = v116;
      v15 = v117;
      v16 = v118;
      v17 = v119;
    }

    else
    {
      v41 = -1 << *(a1 + 32);
      v14 = a1 + 56;
      v15 = ~v41;
      v42 = -v41;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      else
      {
        v43 = -1;
      }

      v17 = v43 & *(a1 + 56);

      v16 = 0;
    }

    v44 = (v15 + 64) >> 6;
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v45 = sub_1AAF8FFD4();
      if (!v45)
      {
        goto LABEL_75;
      }

      v121 = v45;
      sub_1AAEBE00C();
      swift_dynamicCast();
      v46 = v122;
      i = v16;
      v48 = v17;
      if (!v122)
      {
        goto LABEL_75;
      }

      while (1)
      {
        [v3 ignoreTouch:v46 forEvent:a2];

        v16 = i;
        v17 = v48;
        if (a1 < 0)
        {
          break;
        }

LABEL_44:
        v49 = v16;
        v50 = v17;
        for (i = v16; !v50; ++v49)
        {
          i = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            __break(1u);
            goto LABEL_101;
          }

          if (i >= v44)
          {
LABEL_75:
            sub_1AACC9C00();
            return;
          }

          v50 = *(v14 + 8 * i);
        }

        v48 = (v50 - 1) & v50;
        v46 = *(*(a1 + 48) + ((i << 9) | (8 * __clz(__rbit64(v50)))));
        if (!v46)
        {
          goto LABEL_75;
        }
      }
    }
  }

  v9 = OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_timer;
  if (*&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_timer] || *&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch] || *&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch])
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1AAF8FFA4();
      sub_1AAEBE00C();
      sub_1AAD135EC(&qword_1EB426A90, sub_1AAEBE00C);
      sub_1AAF8FA84();
      a1 = aBlock;
      v10 = v116;
      v11 = v117;
      v12 = v118;
      v13 = v119;
    }

    else
    {
      v51 = -1 << *(a1 + 32);
      v10 = a1 + 56;
      v11 = ~v51;
      v52 = -v51;
      if (v52 < 64)
      {
        v53 = ~(-1 << v52);
      }

      else
      {
        v53 = -1;
      }

      v13 = v53 & *(a1 + 56);

      v12 = 0;
    }

    v54 = (v11 + 64) >> 6;
    while (1)
    {
      if (a1 < 0)
      {
        v60 = sub_1AAF8FFD4();
        if (!v60)
        {
          goto LABEL_75;
        }

        v121 = v60;
        sub_1AAEBE00C();
        swift_dynamicCast();
        v59 = v122;
        v57 = v12;
        v58 = v13;
        if (!v122)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v55 = v12;
        v56 = v13;
        v57 = v12;
        if (!v13)
        {
          while (1)
          {
            v57 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            if (v57 >= v54)
            {
              goto LABEL_75;
            }

            v56 = *(v10 + 8 * v57);
            ++v55;
            if (v56)
            {
              goto LABEL_65;
            }
          }

LABEL_101:
          __break(1u);
          goto LABEL_75;
        }

LABEL_65:
        v58 = (v56 - 1) & v56;
        v59 = *(*(a1 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));
        if (!v59)
        {
          goto LABEL_75;
        }
      }

      v61 = OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch;
      if (*&v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch])
      {
        goto LABEL_58;
      }

      v62 = *&v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch];
      if (v62)
      {
        sub_1AAEBE00C();
        v63 = v59;
        v64 = v62;
        v65 = sub_1AAF8FE44();

        if (v65)
        {

LABEL_58:
          [v3 ignoreTouch:v59 forEvent:a2];

          goto LABEL_59;
        }

        v61 = OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch;
        v66 = *&v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch];
      }

      else
      {
        v67 = v59;
        v66 = 0;
      }

      *&v3[v61] = v59;

      v68 = [v3 view];
      [v59 locationInView_];
      v70 = v69;
      v72 = v71;

      v73 = &v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_startLocations];
      *(v73 + 2) = v70;
      *(v73 + 3) = v72;
      v73[32] = 0;
LABEL_59:
      v12 = v57;
      v13 = v58;
    }
  }

  v111 = OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch;
  v112 = OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_79;
  }

  swift_unknownObjectRetain();
  sub_1AAF8FFA4();
  sub_1AAEBE00C();
  sub_1AAD135EC(&qword_1EB426A90, sub_1AAEBE00C);
  sub_1AAF8FA84();
  a1 = v122;
  v74 = v123;
  v75 = v124;
  v76 = v125;
  v77 = v126;
LABEL_83:
  v81 = (v75 + 64) >> 6;
  v113 = v74;
  while (a1 < 0)
  {
    v103 = sub_1AAF8FFD4();
    if (!v103)
    {
      goto LABEL_75;
    }

    v121 = v103;
    sub_1AAEBE00C();
    swift_dynamicCast();
    v102 = aBlock;
    v100 = v76;
    v101 = v77;
    v74 = v113;
LABEL_94:
    if (!v102)
    {
      goto LABEL_75;
    }

    if (*&v3[v112])
    {
      if (*&v3[v111])
      {
        [v3 ignoreTouch:v102 forEvent:a2];
      }

      else
      {
        *&v3[v111] = v102;
        v104 = v102;
        v105 = [v3 view];
        [v104 locationInView_];
        v107 = v106;
        v109 = v108;

        v74 = v113;
        v110 = &v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_startLocations];
        *(v110 + 2) = v107;
        *(v110 + 3) = v109;
        v110[32] = 0;
      }
    }

    else
    {
      *&v3[v112] = v102;
      v82 = v102;
      v83 = [v3 view];
      [v82 locationInView_];
      v85 = v84;
      v87 = v86;

      v88 = &v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_startLocations];
      *v88 = v85;
      *(v88 + 1) = v87;
      v89 = *&v3[v112];
      *&v3[v112] = v102;

      v90 = ([v82 type] & 0xFFFFFFFFFFFFFFFDLL) == 0;
      v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_isDirectTouch] = v90;
      v91 = objc_opt_self();
      v92 = *&v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_minimumPressDuration];
      v93 = swift_allocObject();
      *(v93 + 16) = v3;
      v119 = sub_1AAEBF430;
      v120 = v93;
      aBlock = MEMORY[0x1E69E9820];
      v116 = 1107296256;
      v117 = sub_1AAEBD6B0;
      v118 = &unk_1F1FDFA80;
      v94 = _Block_copy(&aBlock);
      v95 = v3;

      v96 = [v91 scheduledTimerWithTimeInterval:0 repeats:v94 block:v92];

      v74 = v113;
      _Block_release(v94);
      v97 = *&v3[v9];
      *&v3[v9] = v96;
    }

    v76 = v100;
    v77 = v101;
  }

  v98 = v76;
  v99 = v77;
  v100 = v76;
  if (v77)
  {
LABEL_91:
    v101 = (v99 - 1) & v99;
    v102 = *(*(a1 + 48) + ((v100 << 9) | (8 * __clz(__rbit64(v99)))));
    goto LABEL_94;
  }

  while (1)
  {
    v100 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      break;
    }

    if (v100 >= v81)
    {
      goto LABEL_75;
    }

    v99 = *(v74 + 8 * v100);
    ++v98;
    if (v99)
    {
      goto LABEL_91;
    }
  }

  __break(1u);
}

void sub_1AAEBD1B8()
{
  v1 = OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch;
  v2 = *&v0[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 view];
    [v3 locationInView_];
    v6 = v5;
    v8 = v7;

    v9 = &v0[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_currentLocations];
    *v9 = v6;
    *(v9 + 1) = v8;
    v10 = &v0[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch];
    v11 = *&v0[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch];
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = &v0[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch];
    v11 = *&v0[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch];
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = v11;
  v13 = [v0 view];
  [v12 locationInView_];
  v15 = v14;
  v17 = v16;

  v18 = &v0[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_currentLocations];
  *(v18 + 2) = v15;
  *(v18 + 3) = v17;
  v18[32] = 0;
LABEL_6:
  if (![v0 state])
  {
    v19 = 1;
    goto LABEL_10;
  }

  if ([v0 state] == 1)
  {
    v19 = 2;
LABEL_10:
    [v0 setState_];
  }

LABEL_11:
  if (!*&v0[v1] && !*v10 && ([v0 state] == 1 || objc_msgSend(v0, sel_state) == 2))
  {

    [v0 setState_];
  }
}

uint64_t sub_1AAEBD488(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  sub_1AAEBE00C();
  sub_1AAD135EC(&qword_1EB426A90, sub_1AAEBE00C);
  v8 = sub_1AAF8FA44();
  v9 = a4;
  v10 = a1;
  a5(v8);
}

double sub_1AAEBD560()
{
  v1 = OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_timer;
  v2 = *(v0 + OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_timer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch);
  *(v0 + OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch) = 0;

  v5 = *(v0 + OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch);
  *(v0 + OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch) = 0;

  v6 = v0 + OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_startLocations;
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  v8 = v0 + OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_currentLocations;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  return result;
}

void sub_1AAEBD64C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_timer;
  v4 = *(a2 + OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_timer);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(a2 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(a2 + v3) = 0;

  if (*(a2 + OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch))
  {
    sub_1AAEBD1B8();
  }
}

void sub_1AAEBD6B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1AAEBD718(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_startLocations];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = &v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_currentLocations];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_isDirectTouch] = 1;
  *&v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_minimumPressDuration] = 0x3FB999999999999ALL;
  *&v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch] = 0;
  *&v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch] = 0;
  *&v3[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_timer] = 0;
  v9 = MEMORY[0x1E69E7CA0];
  sub_1AAEBDE80(a1, v20, &qword_1EB426A80, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AACB25D8);
  v10 = v21;
  if (v21)
  {
    v11 = sub_1AACBB42C(v20, v21);
    v12 = *(v10 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = sub_1AAF904D4();
    (*(v12 + 8))(v15, v10);
    sub_1AACB634C(v20);
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v3;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_initWithTarget_action_, v16, a2);
  swift_unknownObjectRelease();
  sub_1AAEBDF48(a1, &qword_1EB426A80, v9 + 8);
  return v17;
}

id sub_1AAEBD9C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AAEBDAF4(uint64_t a1, uint64_t a2)
{
  sub_1AAD0A9A4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAEBDB58(uint64_t a1)
{
  sub_1AAD0A9A4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAEBDBC4()
{

  if (*(v0 + 451) != 1)
  {
    goto LABEL_20;
  }

  if (*(v0 + 72) != 255)
  {
    sub_1AACB634C(v0 + 32);
  }

  if (*(v0 + 120) != 255)
  {
    sub_1AACB634C(v0 + 80);
  }

  if (*(v0 + 168) != 255)
  {
    sub_1AACB634C(v0 + 128);
  }

  if (*(v0 + 216) != 255)
  {
    sub_1AACB634C(v0 + 176);
  }

  if (*(v0 + 264) != 255)
  {
    sub_1AACB634C(v0 + 224);
  }

  if (*(v0 + 312) != 255)
  {
    sub_1AACB634C(v0 + 272);
  }

  if (*(v0 + 360) != 255)
  {
    sub_1AACB634C(v0 + 320);
  }

  if (*(v0 + 408) != 255)
  {
    sub_1AACB634C(v0 + 368);
  }

  if (*(v0 + 424))
  {

LABEL_20:
  }

  if (*(v0 + 456))
  {
  }

  if (*(v0 + 472))
  {
  }

  if (*(v0 + 488))
  {
  }

  if (*(v0 + 504))
  {
  }

  if (*(v0 + 520))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 536, 15);
}

uint64_t sub_1AAEBDD2C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v9 = a1;
  v10 = a2 & 1;
  v7 = a3;
  v8 = a4 & 1;
  return v5(&v9, &v7);
}

uint64_t sub_1AAEBDD98(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1AAEBDDE4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

uint64_t sub_1AAEBDE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AAEBDF48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AACB25D8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AAEBDFB8()
{
  result = qword_1EB426A78;
  if (!qword_1EB426A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426A78);
  }

  return result;
}

unint64_t sub_1AAEBE00C()
{
  result = qword_1EB426A88;
  if (!qword_1EB426A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB426A88);
  }

  return result;
}

uint64_t sub_1AAEBE058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1AACD8DD8();
  swift_beginAccess();
  v8 = *(a1 + 40);
  if (v8)
  {
    *a4 = v8;
    v9 = *(a1 + 80);
    v10 = *(a1 + 96);
    *(a4 + 40) = v9;
    *(a4 + 56) = v10;
    v11 = *(a1 + 112);
    v12 = *(a1 + 128);
    *(a4 + 72) = v11;
    *(a4 + 88) = v12;
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    *(a4 + 8) = v13;
    *(a4 + 24) = v14;
    v17 = v8;
    v19 = v14;
    v18 = v13;
    v22 = v11;
    v21 = v10;
    v20 = v9;
    v23 = v12;
    return sub_1AAEBDE80(&v17, v16, a2, a3, MEMORY[0x1E69E7DE0], sub_1AACFE640);
  }

  else
  {
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEBE180@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AACD8DD8();
  swift_beginAccess();
  v4 = *(a1 + 120);
  v20 = *(a1 + 104);
  v21 = v4;
  v5 = *(a1 + 152);
  v22 = *(a1 + 136);
  v23 = v5;
  v6 = *(a1 + 56);
  v16 = *(a1 + 40);
  v17 = v6;
  v7 = *(a1 + 88);
  v18 = *(a1 + 72);
  v19 = v7;
  v24[0] = v16;
  v24[1] = v6;
  v24[2] = v18;
  v24[3] = v7;
  v24[4] = v20;
  v24[5] = v4;
  v24[6] = v22;
  v24[7] = v5;
  if (sub_1AAEB1528(v24) == 1)
  {
    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
    v9 = v21;
    a2[4] = v20;
    a2[5] = v9;
    v10 = v23;
    a2[6] = v22;
    a2[7] = v10;
    v11 = v17;
    *a2 = v16;
    a2[1] = v11;
    v12 = v19;
    a2[2] = v18;
    a2[3] = v12;
    nullsub_1(a2, v8);
    v15[4] = v20;
    v15[5] = v21;
    v15[6] = v22;
    v15[7] = v23;
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    v15[3] = v19;
    return sub_1AAEBDE80(v15, v14, &qword_1ED9B40A8, MEMORY[0x1E69E6158], MEMORY[0x1E697DD48], sub_1AACFE640);
  }

  return result;
}

uint64_t sub_1AAEBE2E8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AACD8DD8();
  swift_beginAccess();
  result = sub_1AAEBFF94(a1 + 40, v9);
  if (*&v9[0])
  {
    v5 = v9[5];
    a2[4] = v9[4];
    a2[5] = v5;
    v6 = v9[7];
    a2[6] = v9[6];
    a2[7] = v6;
    v7 = v9[1];
    *a2 = v9[0];
    a2[1] = v7;
    v8 = v9[3];
    a2[2] = v9[2];
    a2[3] = v8;
  }

  else
  {
    sub_1AAEC0018(v9);
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEBE3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1AACD8DD8();
  swift_beginAccess();
  v8 = *(a1 + 40);
  if (v8)
  {
    *a4 = v8;
    v9 = *(a1 + 80);
    v10 = *(a1 + 96);
    *(a4 + 40) = v9;
    *(a4 + 56) = v10;
    v11 = *(a1 + 112);
    *(a4 + 72) = v11;
    v12 = *(a1 + 128);
    *(a4 + 88) = v12;
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    *(a4 + 8) = v13;
    *(a4 + 24) = v14;
    v17 = v8;
    v18 = v13;
    v19 = v14;
    v22 = v11;
    v21 = v10;
    v20 = v9;
    v23 = v12;
    return sub_1AAEBDE80(&v17, v16, a2, a3, MEMORY[0x1E697E0B8], sub_1AACFE640);
  }

  else
  {
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEBE4DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AACD8DD8();
  swift_beginAccess();
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 48);
    *a2 = v4;
    a2[1] = v5;
  }

  else
  {
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEBE580(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = *(a1 + 72);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v11 = 0;
  v12 = 0;
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v4 = *(*(v6 + 48) + (v14 | (v12 << 6)));
    if (v4 <= 1)
    {
      if (!*(v6 + 16) || (v15 = sub_1AACB6398(v4), (v16 & 1) == 0))
      {
LABEL_44:
        v61 = 0;
        v62 = 0xE000000000000000;
        sub_1AAF900D4();
        MEMORY[0x1AC5982F0](543516756, 0xE400000000000000);
        LOBYTE(v67) = v4;
        sub_1AAF90284();
        MEMORY[0x1AC5982F0](0xD00000000000001BLL, 0x80000001AAFCF890);
        result = sub_1AAF902C4();
        __break(1u);
        return result;
      }

      v17 = *(v6 + 56) + 88 * v15;
      v18 = *(v17 + 16);
      v72 = *v17;
      v73 = v18;
      v20 = *(v17 + 48);
      v19 = *(v17 + 64);
      v21 = *(v17 + 32);
      v77 = *(v17 + 80);
      v75 = v20;
      v76 = v19;
      v74 = v21;
      if (*(a2 + 16))
      {
        sub_1AACB6398(v4);
        if (v22)
        {
          if ((BYTE7(v75) & 0x40) != 0)
          {
            sub_1AAEAF504();
            v29 = swift_dynamicCastClass();
            if (v29)
            {
              if (!v4 && (*(a1 + 24) & 1) != 0)
              {
                LOBYTE(v4) = a3;
                v70 = a3;
                v71 = v29;
                v67 = &v71;
                v68 = &v70;
                v66 = a4;
                v69 = &v66;
                v32 = swift_allocObject();
                v33 = v75;
                *(v32 + 48) = v74;
                *(v32 + 64) = v33;
                *(v32 + 80) = v76;
                *(v32 + 96) = v77;
                v34 = v73;
                *(v32 + 16) = v72;
                *(v32 + 32) = v34;
                swift_retain_n();
                sub_1AACC74AC(&v72, &v61);

                sub_1AACC74AC(&v72, &v61);

                v31 = sub_1AAEA5744(&v67, sub_1AAEBF4F0, v32);
LABEL_33:
                v35 = v31;

                sub_1AACF5F90(&v72);
                v54 = v35;
              }

              else
              {
                v67 = v29;
                v61 = &v67;
                v62 = &v71;
                v70 = a4;
                v71 = a3;
                v63 = &v70;
                v50 = swift_allocObject();
                *(v50 + 16) = v4;

                v30 = sub_1AAEA5A34(&v61, sub_1AAEBF450, v50);

                if (v4)
                {
                  v57 = v30;
                }

                else
                {
                  v11 = v30;
                }
              }
            }
          }

          else
          {
            sub_1AACC9C70();
            v23 = swift_dynamicCastClass();
            if (v23)
            {
              v24 = v23;
              if (!v4 && (*(a1 + 24) & 1) != 0)
              {
                LOBYTE(v4) = a3;
                v70 = a3;
                v71 = v23;
                v67 = &v71;
                v68 = &v70;
                v66 = a4;
                v69 = &v66;
                swift_retain_n();
                sub_1AACC74AC(&v72, &v61);

                v31 = sub_1AAEA4E74(&v67, sub_1AAEB9FF8, 0);
                goto LABEL_33;
              }

              v70 = a3;
              v71 = v23;
              v67 = &v71;
              v68 = &v70;
              v66 = a4;
              v69 = &v66;
              v48 = swift_allocObject();
              *(v48 + 16) = v4;
              swift_retain_n();
              sub_1AACC74AC(&v72, &v61);

              v49 = sub_1AAEA5164(&v67, sub_1AAEBF4F8, v48);
              v60 = v24;
              v61 = &v60;
              v62 = &v59;
              v58 = a4;
              v59 = a3;
              v63 = &v58;
              v47 = swift_allocObject();
              *(v47 + 16) = v4;

              v25 = sub_1AAEA5454(&v61, sub_1AAEBF530, v47);

              sub_1AACF5F90(&v72);
              v27 = v55;
              v26 = v56;
              v28 = v57;
              if (v4)
              {
                v26 = v25;
              }

              else
              {
                v27 = v25;
              }

              v55 = v27;
              v56 = v26;
              if (v4)
              {
                v28 = v49;
              }

              v57 = v28;
              if (!v4)
              {
                v11 = v49;
              }
            }
          }
        }
      }
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  if (v11 || v57 || v54 || v55 || v56)
  {

    v67 = sub_1AAEB92B8(v41);
    v61 = &v67;

    v71 = sub_1AAEB9438(v42);
    v62 = &v71;

    v70 = sub_1AAEB92B8(v43);
    v63 = &v70;

    v66 = sub_1AAEB9438(v44);
    v64 = &v66;

    v60 = sub_1AAEB95B8(v45);
    v65 = &v60;
    v38 = sub_1AAEA5D24(&v61, sub_1AAEBAC14, 0);
  }

  else
  {
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1AAD04F78;
    *(v36 + 24) = 0;
    sub_1AACB25D8(0, &qword_1ED9B31E0, &type metadata for ChartInternalOverlayListenerModifier, type metadata accessor for Signal);
    v37 = swift_allocObject();
    *(v37 + 48) = 0u;
    *(v37 + 64) = 0u;
    *(v37 + 80) = 0u;
    *(v37 + 96) = 0u;
    *(v37 + 112) = 0u;
    *(v37 + 128) = 0u;
    *(v37 + 144) = 0u;
    *(v37 + 160) = 0u;
    *(v37 + 176) = 0u;
    *(v37 + 192) = 0u;
    *(v37 + 208) = 0u;
    *(v37 + 224) = 0u;
    *(v37 + 240) = 0u;
    *(v37 + 256) = 0u;
    *(v37 + 272) = 0u;
    *(v37 + 288) = 0u;
    *(v37 + 304) = 0u;
    *(v37 + 320) = 0u;
    *(v37 + 336) = 0u;
    *(v37 + 352) = 0u;
    *(v37 + 368) = 0u;
    *(v37 + 384) = 0u;
    *(v37 + 400) = 0u;
    *(v37 + 416) = 0u;
    *(v37 + 432) = 0u;
    *(v37 + 448) = 0u;
    *(v37 + 464) = 0;
    *(v37 + 472) = 1;
    *(v37 + 480) = 0u;
    *(v37 + 496) = 0u;
    *(v37 + 512) = 0u;
    *(v37 + 528) = 0u;
    *(v37 + 544) = 0u;
    *(v37 + 560) = 0;
    v38 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1AACDECE8;
    *(v39 + 24) = v36;
    v40 = *(v38 + 552);
    *(v38 + 552) = sub_1AACD8830;
    *(v38 + 560) = v39;

    sub_1AACB4A98(v40);
  }

  return v38;
}

void sub_1AAEBED48(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_timer))
  {
    return;
  }

  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AAF8FFA4();
    sub_1AAEBE00C();
    sub_1AAD135EC(&qword_1EB426A90, sub_1AAEBE00C);
    sub_1AAF8FA84();
    v3 = v27;
    v4 = v28;
    v5 = v29;
    v6 = v30;
    v7 = v31;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_1AAF8FFD4() || (sub_1AAEBE00C(), swift_dynamicCast(), v15 = v26, v14 = v7, !v26))
    {
LABEL_26:
      sub_1AACC9C00();
      return;
    }

LABEL_19:
    v16 = v3;
    v17 = v2;
    v18 = *(v2 + OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch);
    if (v18)
    {
      sub_1AAEBE00C();
      v19 = v15;
      v20 = v18;
      v21 = sub_1AAF8FE44();

      if (v21)
      {

        sub_1AACC9C00();
LABEL_28:
        sub_1AAEBD1B8();
        return;
      }
    }

    else
    {
      v22 = v15;
    }

    v2 = v17;
    v23 = *(v17 + OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch);
    if (v23)
    {
      sub_1AAEBE00C();
      v24 = v23;
      v25 = sub_1AAF8FE44();

      v3 = v16;
      v7 = v14;
      if (v25)
      {
        sub_1AACC9C00();
        goto LABEL_28;
      }
    }

    else
    {

      v3 = v16;
      v7 = v14;
    }
  }

  v12 = v6;
  v13 = v7;
  if (v7)
  {
LABEL_15:
    v14 = (v13 - 1) & v13;
    v15 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v15)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_26;
    }

    v13 = *(v4 + 8 * v6);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_1AAEBF040(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AAF8FFA4();
    sub_1AAEBE00C();
    sub_1AAD135EC(&qword_1EB426A90, sub_1AAEBE00C);
    sub_1AAF8FA84();
    v3 = v43;
    v4 = v44;
    v5 = v45;
    v6 = v46;
    v7 = v47;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v40 = v5;
  v11 = (v5 + 64) >> 6;
  while (1)
  {
    if (v3 < 0)
    {
      v19 = sub_1AAF8FFD4();
      if (!v19 || (v41 = v19, sub_1AAEBE00C(), swift_dynamicCast(), v18 = v42, v16 = v6, v17 = v7, !v42))
      {
LABEL_27:
        sub_1AACC9C00();
        if (!*&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch])
        {
          v30 = OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch;
          v31 = *&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch];
          if (v31)
          {
            *&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch] = v31;
            v32 = &v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_startLocations];
            v33 = vdup_n_s32(v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_startLocations + 32]);
            v34.i64[0] = v33.u32[0];
            v34.i64[1] = v33.u32[1];
            *v32 = vandq_s8(*&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_startLocations + 16], vcgezq_s64(vshlq_n_s64(v34, 0x3FuLL)));
            v35 = &v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_currentLocations];
            v36 = vdup_n_s32(v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_currentLocations + 32]);
            v34.i64[0] = v36.u32[0];
            v34.i64[1] = v36.u32[1];
            *v35 = vandq_s8(*&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_currentLocations + 16], vcgezq_s64(vshlq_n_s64(v34, 0x3FuLL)));
            *&v2[v30] = 0;
            v32[1].i64[0] = 0;
            v32[1].i64[1] = 0;
            v32[2].i8[0] = 1;
            v35[1].i64[0] = 0;
            v35[1].i64[1] = 0;
            v35[2].i8[0] = 1;
          }

          else
          {
            v37 = OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_timer;
            v38 = *&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_timer];
            if (v38)
            {
              [v38 invalidate];
              v39 = *&v2[v37];
            }

            else
            {
              v39 = 0;
            }

            *&v2[v37] = 0;

            if ([v2 state] == 1 || objc_msgSend(v2, sel_state) == 2)
            {
              [v2 setState_];
            }
          }
        }

        return;
      }

      goto LABEL_19;
    }

    v14 = v6;
    v15 = v7;
    v16 = v6;
    if (!v7)
    {
      break;
    }

LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_27;
    }

LABEL_19:
    v20 = *&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch];
    if (v20)
    {
      sub_1AAEBE00C();
      v21 = v18;
      v22 = v20;
      v23 = sub_1AAF8FE44();

      if (v23)
      {

        v12 = *&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch];
        *&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialFirstTouch] = 0;

        v13 = &v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_currentLocations];
        *v13 = 0;
        *(v13 + 1) = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v24 = v18;
    }

    v25 = *&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch];
    if (v25)
    {
      sub_1AAEBE00C();
      v26 = v25;
      v27 = sub_1AAF8FE44();

      v6 = v16;
      v7 = v17;
      if (v27)
      {
        v28 = *&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch];
        *&v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_initialSecondTouch] = 0;

        v29 = &v2[OBJC_IVAR____TtC6Charts26ChartDragGestureRecognizer_currentLocations];
        *(v29 + 2) = 0;
        *(v29 + 3) = 0;
        v29[32] = 1;
        goto LABEL_9;
      }
    }

    else
    {

LABEL_9:
      v6 = v16;
      v7 = v17;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      goto LABEL_27;
    }

    v15 = *(v4 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1AAEBF438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AAEBF458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = (a5 >> 61) & 3;
  if (((a5 >> 61) & 3) <= 1)
  {
    if (v5)
    {
      a5 &= 0x9FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_4;
  }

  if (v5 == 2)
  {
    a5 &= 0x9FFFFFFFFFFFFFFFLL;
LABEL_4:
    sub_1AAEBF488(a1, a2, a3, a4, a5);
  }
}

void sub_1AAEBF488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
    v6 = a5 >> 8;
    sub_1AAEAEF98(a2, a3, SBYTE1(a3));

    sub_1AAEAEF98(a4, a5, v6);
  }
}

uint64_t sub_1AAEBF568(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  v4(&v6, v7);
  return v6;
}

__n128 sub_1AAEBF5D0@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v7 = *(v5 + 16);
  v17 = a1;
  v18 = a2 & 1;
  v15 = a3;
  v16 = a4 & 1;
  v7(&v11, &v17, &v15);
  v8 = v12;
  v9 = v14;
  result = v13;
  *a5 = v11;
  *(a5 + 16) = v8;
  *(a5 + 24) = result;
  *(a5 + 40) = v9;
  return result;
}

uint64_t sub_1AAEBF648(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v7 = a2 & 1;
  v3(&v5, &v6);
  return v5;
}

void sub_1AAEBF694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AAEBF7B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1AAF8DF14() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 111) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v2 + v6);
  v11 = *(v2 + v8);
  v12 = *(v2 + v9);
  v13 = *v10;
  v14 = v10[1];
  v15 = *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1AAEBA28C(a1, v2 + v7, a2, v13, v14, v11, v12, v15);
}

void sub_1AAEBF890(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(sub_1AAF8DF14() - 8);
  v8 = (*(v7 + 80) + 120) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = ((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + (v9 & 0xFFFFFFFFFFFFFFF8) + 8);
  v12 = *(v3 + v10);
  v13 = *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *(v3 + v9);

  sub_1AAEBA900(a1, a2, v3 + 16, v3 + v8, v14, a3, v11, v12, v13);
}

uint64_t sub_1AAEBF964()
{
  v1 = sub_1AAF8DF14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 48))
  {
  }

  v5 = *(v0 + 80);
  if (v5 != 255)
  {
    sub_1AACE40AC(*(v0 + 72), v5 & 1);
  }

  v6 = (v3 + 120) & ~v3;
  v7 = (((((v6 + v4) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

void sub_1AAEBFA70(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1AAF8DF14() - 8);
  v6 = ((*(v5 + 80) + 120) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v2 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = *(v2 + v6);

  sub_1AAEBA4E0(a1, v2 + 16, v11, a2, v10, v8, v9);
}

void sub_1AAEBFB3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1AAF8DF14() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 111) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);

  sub_1AAEB99C0(a1, v2 + v7, v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8), a2, v10, v11, v12);
}

void sub_1AAEBFC10(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1AAF8DF14() - 8);
  v6 = ((*(v5 + 80) + 120) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = *(v2 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *(v2 + v6);

  sub_1AAEB9E48(a1, v2 + 16, v8, a2, v7);
}

void sub_1AAEBFCF0()
{
  if (!qword_1ED9B3220)
  {
    sub_1AAEBFD68(255, &qword_1ED9B4050, &qword_1ED9B4060);
    v0 = type metadata accessor for Signal();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3220);
    }
  }
}

void sub_1AAEBFD68(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AACFE640(255, a3);
    v4 = sub_1AAF8FE74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAEBFDF0()
{
  if (!qword_1ED9B3278[0])
  {
    sub_1AAEBFD68(255, &qword_1ED9B40B0, qword_1ED9B40B8);
    v0 = type metadata accessor for Signal();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9B3278);
    }
  }
}

void sub_1AAEBFE94()
{
  if (!qword_1ED9B3268)
  {
    sub_1AAEBFD68(255, &qword_1ED9B40A0, &qword_1ED9B40A8);
    v0 = type metadata accessor for Signal();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3268);
    }
  }
}

void sub_1AAEBFF14()
{
  if (!qword_1ED9B3250)
  {
    sub_1AAEBFD68(255, &qword_1ED9B4078, &qword_1ED9B4080);
    v0 = type metadata accessor for Signal();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3250);
    }
  }
}

uint64_t sub_1AAEBFF94(uint64_t a1, uint64_t a2)
{
  sub_1AAEBFD68(0, &qword_1ED9B4078, &qword_1ED9B4080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAEC0018(uint64_t a1)
{
  sub_1AAEBFD68(0, &qword_1ED9B4078, &qword_1ED9B4080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AAEC0094()
{
  if (!qword_1ED9B3258)
  {
    sub_1AAEBFD68(255, &qword_1ED9B4090, &qword_1ED9B4098);
    v0 = type metadata accessor for Signal();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3258);
    }
  }
}

uint64_t static AreaMark._collectChartContent(content:inputs:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v123 = a3;
  *&v139 = type metadata accessor for ChartContainerValues();
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v140 = type metadata accessor for CollectedChartContent(0);
  v121 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v122 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v142 = &v120 - v8;
  v9 = *(a1 + 5);
  v10 = *(a1 + 7);
  v274 = *(a1 + 6);
  v275 = v10;
  v11 = *(a1 + 7);
  v276 = *(a1 + 8);
  v12 = *(a1 + 1);
  v13 = *(a1 + 3);
  v270 = *(a1 + 2);
  v271 = v13;
  v15 = *(a1 + 3);
  v14 = *(a1 + 4);
  v16 = v14;
  v273 = *(a1 + 5);
  v272 = v14;
  v17 = *a1;
  v18 = *a1;
  v269[1] = *(a1 + 1);
  v269[0] = v17;
  v278[6] = v274;
  v278[7] = v11;
  v19 = *(a1 + 9);
  v278[8] = *(a1 + 8);
  v278[2] = v270;
  v278[3] = v15;
  v278[5] = v9;
  v278[4] = v16;
  v278[1] = v12;
  v278[0] = v18;
  v20 = *(a1 + 14);
  v21 = *(a1 + 16);
  v22 = *(a1 + 17);
  v277[6] = *(a1 + 15);
  v277[7] = v21;
  v277[8] = v22;
  v23 = *(a1 + 10);
  v24 = *(a1 + 12);
  v25 = *(a1 + 13);
  v277[2] = *(a1 + 11);
  v277[3] = v24;
  v277[5] = v20;
  v277[4] = v25;
  v277[1] = v23;
  v277[0] = v19;
  v27 = a1[36];
  v26 = a1[37];
  v28 = *(a1 + 304);
  v29 = type metadata accessor for _ChartContentCollectInputs(0);
  sub_1AAF09418(v269, &v233);
  v285 = v239;
  v286[0] = v240[0];
  *(v286 + 9) = *(v240 + 9);
  v281 = v235;
  v282 = v236;
  v284 = v238;
  v283 = v237;
  v280 = v234;
  v279 = v233;
  sub_1AAF09418(v277, &v241);
  v30 = 0;
  v293 = v247;
  v294[0] = v248[0];
  *(v294 + 9) = *(v248 + 9);
  v289 = v243;
  v290 = v244;
  v291 = v245;
  v292 = v246;
  v287 = v241;
  v288 = v242;
  LODWORD(v141) = v28;
  if (v28 >= 2)
  {
    if (v28 != 2)
    {
      LODWORD(v141) = 0;
      v135 = 1;
      v136 = 0.0;
      *&v27 = 0.0;
      goto LABEL_7;
    }

    swift_beginAccess();
    v32 = sub_1AAEC115C(v27, v26);
    swift_endAccess();
    sub_1AACCAE10(v27, v26, 2);
    v31 = v32;
    v30 = v26;
  }

  else
  {
    v31 = *&v27;
    *&v27 = 0.0;
  }

  v135 = v30;
  v136 = v31;
LABEL_7:
  v33 = a2 + *(v29 + 28);
  sub_1AAEF1A60(v33, v232);
  v34 = sub_1AACDB99C(v278) <= 2 && sub_1AAE63890(v269, v277);
  v35 = *(a2 + *(v29 + 20));
  sub_1AAEC12C0(v232, &v147, sub_1AAEC1244);
  v137 = v27;
  v131 = v35;
  if (*(&v148 + 1) == 2)
  {

    sub_1AAEC1328(&v147, sub_1AAEC1244);
    v227 = 0u;
    v228 = 0u;
    v229 = 0u;
    v230 = 0u;
    v231 = -256;
  }

  else
  {
    sub_1AAEC1444(&v150, &v227);

    sub_1AAEC1388(&v147, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
  }

  v36 = *(v33 + 81);
  *&v143 = *(v33 + 312);
  v132 = *(v33 + 320);
  v133 = v36;
  v37 = v142;
  *(v142 + 424) = 0u;
  *(v37 + 440) = 0u;
  *(v37 + 456) = 0u;
  *(v37 + 472) = 0u;
  *(v37 + 488) = -256;
  v38 = *(v33 + 328);
  v134 = type metadata accessor for CollectedChartContent.Primitive(0);
  v39 = *(v134 + 72);
  v40 = sub_1AAF8E244();
  (*(*(v40 - 8) + 56))(v37 + v39, 1, 1, v40);
  v41 = v139;
  v42 = v33 + *(v139 + 60);
  v129 = *v42;
  v128 = *(v42 + 8);
  v130 = v34;
  v43 = v138;
  sub_1AAEC12C0(v33, v138, type metadata accessor for ChartContainerValues);
  v44 = v41[17];
  v45 = (v43 + v41[16]);
  v46 = *v45;
  v47 = v45[1];
  v49 = v45[2];
  v48 = v45[3];
  v126 = v49;
  v127 = v48;
  v51 = *(v43 + v44);
  v50 = *(v43 + v44 + 8);
  v53 = *(v43 + v44 + 24);
  v124 = *(v43 + v44 + 16);
  v52 = v124;
  v125 = v50;
  v54 = (v43 + v41[18]);
  v55 = v54[1];
  *&v139 = *v54;

  sub_1AADA61DC(v51, v50, v52, v53);

  v57 = v126;
  v56 = v127;
  sub_1AADA61DC(v46, v47, v126, v127);
  sub_1AAEC1328(v43, type metadata accessor for ChartContainerValues);
  *&v219 = v46;
  *(&v219 + 1) = v47;
  *&v220 = v57;
  *(&v220 + 1) = v56;
  *&v221 = v51;
  *(&v221 + 1) = v125;
  *&v222 = v124;
  *(&v222 + 1) = v53;
  *&v223 = v139;
  *(&v223 + 1) = v55;
  v224 = 0;
  v225[0] = v46;
  v225[1] = v47;
  v225[2] = v57;
  v225[3] = v56;
  v225[4] = v51;
  v225[5] = v125;
  v225[6] = v124;
  v225[7] = v53;
  v225[8] = v139;
  v225[9] = v55;
  v226 = 0;
  sub_1AAE0F994(&v219, &v147);
  sub_1AAE0F9F0(v225);
  *v37 = v131;
  *(v37 + 8) = 3;
  v58 = v240[0];
  *(v37 + 112) = v239;
  *(v37 + 128) = v58;
  *(v37 + 137) = *(v240 + 9);
  v59 = v236;
  *(v37 + 48) = v235;
  *(v37 + 64) = v59;
  v60 = v238;
  *(v37 + 80) = v237;
  *(v37 + 96) = v60;
  v61 = v234;
  *(v37 + 16) = v233;
  *(v37 + 32) = v61;
  v62 = v248[0];
  *(v37 + 256) = v247;
  *(v37 + 272) = v62;
  *(v37 + 281) = *(v248 + 9);
  v63 = v244;
  *(v37 + 192) = v243;
  *(v37 + 208) = v63;
  v64 = v246;
  *(v37 + 224) = v245;
  *(v37 + 240) = v64;
  v65 = v242;
  *(v37 + 160) = v241;
  *(v37 + 176) = v65;
  v66 = v137;
  *(v37 + 304) = v136;
  *(v37 + 312) = v66;
  *(v37 + 320) = v135;
  *(v37 + 328) = v141;
  v67 = v230;
  *(v37 + 368) = v229;
  *(v37 + 384) = v67;
  *(v37 + 400) = v231;
  v68 = v228;
  *(v37 + 336) = v227;
  *(v37 + 352) = v68;
  *(v37 + 402) = v133;
  *(v37 + 408) = v143;
  *(v37 + 416) = v132;
  *(v37 + 504) = 0;
  *(v37 + 512) = 0;
  *(v37 + 496) = 0;
  *(v37 + 520) = 0x1FFFFFFFELL;
  *(v37 + 560) = 0;
  *(v37 + 528) = 0u;
  *(v37 + 544) = 0u;
  *(v37 + 600) = 0u;
  *(v37 + 616) = 0u;
  *(v37 + 568) = 0u;
  *(v37 + 584) = 0u;
  *(v37 + 632) = 124;
  *(v37 + 640) = v38;
  *(v37 + 648) = 0;
  *(v37 + 656) = 1;
  *(v37 + 664) = 0u;
  *(v37 + 680) = 0u;
  *(v37 + 696) = 1;
  v69 = v134;
  v70 = v37 + *(v134 + 76);
  *v70 = v129;
  *(v70 + 8) = v128;
  *(v37 + *(v69 + 80)) = v130;
  v71 = v37 + *(v69 + 84);
  v72 = v222;
  *(v71 + 32) = v221;
  *(v71 + 48) = v72;
  *(v71 + 64) = v223;
  *(v71 + 80) = v224;
  v73 = v220;
  *v71 = v219;
  *(v71 + 16) = v73;
  swift_storeEnumTagMultiPayload();
  sub_1AAE680CC(&v233, &v147);
  sub_1AAE680CC(&v233, &v147);
  sub_1AAE680CC(&v241, &v147);
  sub_1AAEF2E48(&v233, v249);
  v143 = v249[1];
  v141 = v249[0];
  v74 = v250;
  v75 = v251;
  sub_1AAE680CC(&v241, &v147);
  sub_1AAEF2E48(&v241, v252);
  v139 = v252[0];
  v140 = v252[1];
  v76 = v253;
  v77 = v254;
  v78 = sub_1AADF89F0(MEMORY[0x1E69E7CC0]);
  v263[6] = v239;
  v264[0] = v240[0];
  *(v264 + 9) = *(v240 + 9);
  v263[2] = v235;
  v263[3] = v236;
  v263[5] = v238;
  v263[4] = v237;
  v263[1] = v234;
  v263[0] = v233;
  if (sub_1AAE63EF0(v263) == 5)
  {
    result = sub_1AAD357A8(v263);
    v80 = *(result + 80);
    v81 = *(result + 96);
    v82 = *(result + 112);
    *(v154 + 9) = *(result + 121);
    v153 = v81;
    v154[0] = v82;
    v152 = v80;
    v147 = *result;
    v84 = *(result + 16);
    v83 = *(result + 32);
    v85 = *(result + 64);
    v150 = *(result + 48);
    v151 = v85;
    v148 = v84;
    v149 = v83;
    v86 = *(result + 88);
    v87 = *(result + 120);
    v267[2] = *(result + 104);
    v267[3] = v87;
    v268 = *(result + 136);
    v88 = *(result + 72);
    v267[1] = v86;
    v267[0] = v88;
    if (v85 < 0)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v85)
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v89 = fmin(*(&v149 + 1), 0.0);
    if (*(&v149 + 1) >= 0.0)
    {
      v90 = *(&v149 + 1);
    }

    else
    {
      v90 = 0.0;
    }

    v261 = v285;
    v262[0] = v286[0];
    *(v262 + 9) = *(v286 + 9);
    v257 = v281;
    v258 = v282;
    v260 = v284;
    v259 = v283;
    v256 = v280;
    v255 = v279;
    v91 = sub_1AAD357A8(&v255);
    sub_1AAEC12C0(v91, v145, sub_1AAEC13E4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v145[0] = v78;
    sub_1AADD33B0(v267, isUniquelyReferenced_nonNull_native, v90, v89);
    sub_1AADB3024(&v151 + 8);
    v78 = *&v145[0];
    if (BYTE8(v151) == 3)
    {
      sub_1AAE63F58(&v147);
    }

    else
    {
      sub_1AAEC1388(v249, &qword_1ED9AE220, &type metadata for PlottedValueCollectorV2, MEMORY[0x1E69E6720]);
      sub_1AAE63F58(&v147);
      v74 = 0;
      v75 = 0;
      v143 = xmmword_1AAF92AC0;
      v141 = 0u;
    }
  }

  v261 = v247;
  v262[0] = v248[0];
  *(v262 + 9) = *(v248 + 9);
  v257 = v243;
  v258 = v244;
  v260 = v246;
  v259 = v245;
  v256 = v242;
  v255 = v241;
  v93 = sub_1AAE63EF0(&v255);
  LODWORD(v138) = v75;
  v137 = v74;
  if (v93 != 5)
  {
    v107 = v77;
    goto LABEL_33;
  }

  result = sub_1AAD357A8(&v255);
  v94 = *(result + 80);
  v95 = *(result + 96);
  v96 = *(result + 112);
  *(v154 + 9) = *(result + 121);
  v153 = v95;
  v154[0] = v96;
  v152 = v94;
  v147 = *result;
  v98 = *(result + 16);
  v97 = *(result + 32);
  v99 = *(result + 64);
  v150 = *(result + 48);
  v151 = v99;
  v148 = v98;
  v149 = v97;
  v100 = *(result + 88);
  v101 = *(result + 120);
  v265[2] = *(result + 104);
  v265[3] = v101;
  v266 = *(result + 136);
  v102 = *(result + 72);
  v265[1] = v100;
  v265[0] = v102;
  if ((v99 & 0x80000000) == 0)
  {
    if (!v99)
    {
      v103 = fmin(*(&v149 + 1), 0.0);
      if (*(&v149 + 1) >= 0.0)
      {
        v104 = *(&v149 + 1);
      }

      else
      {
        v104 = 0.0;
      }

      v145[6] = v293;
      v146[0] = v294[0];
      *(v146 + 9) = *(v294 + 9);
      v145[2] = v289;
      v145[3] = v290;
      v145[4] = v291;
      v145[5] = v292;
      v145[0] = v287;
      v145[1] = v288;
      v105 = sub_1AAD357A8(v145);
      sub_1AAEC12C0(v105, v144, sub_1AAEC13E4);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v144[0] = v78;
      sub_1AADD33B0(v265, v106, v104, v103);
      sub_1AADB3024(&v151 + 8);
      v78 = v144[0];
      if (BYTE8(v151) == 3)
      {
        v107 = v77;
        sub_1AAE63F58(&v147);
      }

      else
      {
        sub_1AAEC1388(v252, &qword_1ED9AE220, &type metadata for PlottedValueCollectorV2, MEMORY[0x1E69E6720]);
        sub_1AAE63F58(&v147);
        v76 = 0;
        v107 = 0;
        v139 = 0u;
        v140 = xmmword_1AAF92AC0;
      }

LABEL_33:
      v108 = v76;
      sub_1AAEC12C0(v232, &v147, sub_1AAEC1244);
      v109 = *(&v148 + 1);
      if (*(&v148 + 1) == 2)
      {
        sub_1AAEC1328(&v147, sub_1AAEC1244);
        v110 = 0;
        v111 = 0;
        v112 = 0;
        v113 = 0;
        v114 = 0;
        v109 = 1;
        if (!*(v78 + 16))
        {
          goto LABEL_37;
        }
      }

      else
      {
        v111 = *(&v147 + 1);
        v110 = v147;
        v112 = v148;
        v113 = v149;
        v114 = BYTE8(v149);
        sub_1AAE682A0(v147, *(&v147 + 1), v148, *(&v148 + 1));
        sub_1AAEC1388(&v147, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
        if (!*(v78 + 16))
        {
LABEL_37:

          v78 = 0;
        }
      }

      v197 = 0;
      v198 = 0;
      v199 = 1;
      v200 = 0u;
      v201 = 0u;
      v202 = 0u;
      v203 = 0u;
      v204 = 0u;
      v205 = 0u;
      v206 = 0u;
      v207 = 0u;
      v208 = 0u;
      v209 = 0u;
      v210 = 0u;
      v211 = 0u;
      v212 = 0u;
      v213 = 0u;
      v214 = 0u;
      v215 = 0u;
      v216 = 0u;
      v147 = v141;
      v148 = v143;
      *&v149 = v137;
      BYTE8(v149) = v138;
      v150 = v139;
      v151 = v140;
      *&v152 = v108;
      BYTE8(v152) = v107;
      *&v154[0] = 0;
      v153 = 0uLL;
      *(v154 + 8) = xmmword_1AAF92AC0;
      BYTE8(v154[1]) = 0;
      v157 = 0;
      v155 = 0;
      v156 = 0;
      v158 = xmmword_1AAF92AC0;
      v159 = 0;
      v162 = 0;
      v160 = 0;
      v161 = 0;
      v163 = xmmword_1AAF92AC0;
      v164 = 0;
      v165 = 0;
      v166 = 0;
      v167 = 0;
      v168 = 1;
      v169 = 0;
      v170 = 0;
      v171 = v110;
      v172 = v111;
      v173 = v112;
      v174 = v109;
      v175 = v113;
      v176 = v114;
      v177 = 0;
      v178 = 0;
      v179 = 0;
      v180 = 1;
      v181 = 0;
      v182 = 0;
      v184 = 0;
      v183 = 0;
      v185 = 0;
      v186 = 1;
      v187 = 0;
      v188 = 0;
      v189 = 0;
      v190 = 0;
      v191 = 0;
      v192 = 1;
      v193 = 0;
      v194 = 0;
      v196 = 0;
      v195 = v78;
      v217 = 0;
      v218 = 0;
      v115 = v142;
      v116 = v122;
      sub_1AAEC12C0(v142, v122, type metadata accessor for CollectedChartContent);
      v117 = v123;
      sub_1AADFA56C(&v147, (v123 + 1));
      sub_1AAE0FAB0();
      v118 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_1AAF92AB0;
      sub_1AAE0FB08(v116, v119 + v118);
      sub_1AAE68190(&v233);
      sub_1AAE68190(&v241);
      sub_1AAD58120(&v147);
      sub_1AAEC1328(v115, type metadata accessor for CollectedChartContent);
      result = sub_1AAEC1328(v232, sub_1AAEC1244);
      *v117 = v119;
      return result;
    }

    goto LABEL_40;
  }

LABEL_42:
  __break(1u);
  return result;
}

double sub_1AAEC103C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  if (*(v10 + 16))
  {
    v11 = sub_1AADB0A28(a1, a2, a3 & 1, a4);
    if (v12)
    {
      return *(*(v10 + 56) + 8 * v11);
    }
  }

  v13 = v5[2] + 1.0;
  v5[2] = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v5;
  sub_1AADD2F58(a1, a2, a3 & 1, a4, isUniquelyReferenced_nonNull_native, v13);
  *v5 = v17;
  sub_1AACD7304(a1, a2, a3 & 1);

  v15 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v5 + 1);
  sub_1AADD2DB4(a1, a2, a3 & 1, a4, v15, v13);
  *(v5 + 1) = v18;
  return v13;
}

double sub_1AAEC115C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (*(v6 + 16))
  {
    v7 = sub_1AADB05C0(a1, a2);
    if (v8)
    {
      return *(*(v6 + 56) + 8 * v7);
    }
  }

  v9 = v3[2] + 1.0;
  v3[2] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_1AADD3254(a1, a2, isUniquelyReferenced_nonNull_native, v9);
  *v3 = v13;

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v3 + 1);
  sub_1AADD30F8(a1, a2, v11, v9);
  *(v3 + 1) = v14;
  return v9;
}

void sub_1AAEC1244()
{
  if (!qword_1ED9AE8B8)
  {
    sub_1AAEC14CC(255, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AE8B8);
    }
  }
}

uint64_t sub_1AAEC12C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAEC1328(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAEC1388(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AAEC14CC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AAEC13E4()
{
  if (!qword_1EB426AF8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB426AF8);
    }
  }
}

uint64_t sub_1AAEC1444(uint64_t a1, uint64_t a2)
{
  sub_1AAEC14CC(0, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AAEC14CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static BarMark._collectChartContent(content:inputs:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v122 = a3;
  v5 = type metadata accessor for ChartContainerValues();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v142 = type metadata accessor for CollectedChartContent(0);
  v120 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v121 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v119 - v10;
  v12 = a1[5];
  v13 = a1[7];
  v274 = a1[6];
  v275 = v13;
  v14 = a1[7];
  v276 = a1[8];
  v15 = a1[1];
  v16 = a1[3];
  v270 = a1[2];
  v271 = v16;
  v18 = a1[3];
  v17 = a1[4];
  v19 = v17;
  v273 = a1[5];
  v272 = v17;
  v20 = *a1;
  v21 = *a1;
  v269[1] = a1[1];
  v269[0] = v20;
  v278[6] = v274;
  v278[7] = v14;
  v22 = a1[9];
  v278[8] = a1[8];
  v278[2] = v270;
  v278[3] = v18;
  v278[5] = v12;
  v278[4] = v19;
  v278[1] = v15;
  v278[0] = v21;
  v23 = a1[14];
  v24 = a1[16];
  v25 = a1[17];
  v277[6] = a1[15];
  v277[7] = v24;
  v277[8] = v25;
  v26 = a1[10];
  v27 = a1[12];
  v28 = a1[13];
  v277[2] = a1[11];
  v277[3] = v27;
  v277[5] = v23;
  v277[4] = v28;
  v277[1] = v26;
  v277[0] = v22;
  v29 = type metadata accessor for _ChartContentCollectInputs(0);
  sub_1AAF09418(v269, &v233);
  v285 = v239;
  v286[0] = v240[0];
  *(v286 + 9) = *(v240 + 9);
  v281 = v235;
  v282 = v236;
  v284 = v238;
  v283 = v237;
  v280 = v234;
  v279 = v233;
  sub_1AAF09418(v277, &v241);
  v293 = v247;
  v294[0] = v248[0];
  *(v294 + 9) = *(v248 + 9);
  v289 = v243;
  v290 = v244;
  v291 = v245;
  v292 = v246;
  v287 = v241;
  v288 = v242;
  v30 = a2 + *(v29 + 28);
  sub_1AAEF1A60(v30, v232);
  v31 = sub_1AACDB99C(v278) <= 2 && sub_1AAE63890(v269, v277);
  *&v141 = v11 + 656;
  v32 = *(a2 + *(v29 + 20));
  sub_1AAEC24E8(v232, &v147, sub_1AAEC1244);
  *&v140 = v32;
  if (*(&v148 + 1) == 2)
  {

    sub_1AAEC1328(&v147, sub_1AAEC1244);
    v227 = 0u;
    v228 = 0u;
    v229 = 0u;
    v230 = 0u;
    v231 = -256;
  }

  else
  {
    sub_1AAEC2410(&v150, &v227, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720], sub_1AAEC14CC);

    sub_1AAEC1388(&v147, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
  }

  v33 = *(v30 + 81);
  *&v143 = *(v30 + 312);
  v134 = *(v30 + 320);
  v135 = v33;
  *(v11 + 424) = 0u;
  *(v11 + 440) = 0u;
  *(v11 + 456) = 0u;
  *(v11 + 472) = 0u;
  *(v11 + 244) = -256;
  v34 = *(v30 + 328);
  v138 = *(v30 + 336);
  LODWORD(v137) = *(v30 + 344);
  LODWORD(v139) = *(v30 + 384);
  v35 = v5[14];
  v133 = type metadata accessor for CollectedChartContent.Primitive(0);
  v36 = *(v133 + 72);
  v136 = v31;
  v127 = v11 + 160;
  v130 = v11 + 568;
  v37 = *(v30 + 352);
  v131 = *(v30 + 368);
  v132 = v37;
  sub_1AAEC2410(v30 + v35, &v11[v36], &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720], sub_1AAEC2484);
  v38 = v30 + v5[15];
  v129 = *v38;
  v128 = *(v38 + 8);
  sub_1AAEC24E8(v30, v7, type metadata accessor for ChartContainerValues);
  v39 = v5[17];
  v40 = &v7[v5[16]];
  v41 = *v40;
  v42 = v40[1];
  v123 = v7;
  v124 = v41;
  v44 = v40[2];
  v43 = v40[3];
  v45 = &v7[v39];
  v46 = v11;
  v48 = *&v7[v39];
  v47 = *&v7[v39 + 8];
  v49 = v7;
  v51 = *(v45 + 2);
  v50 = *(v45 + 3);
  v52 = &v49[v5[18]];
  v53 = *v52;
  v125 = *(v52 + 1);
  v126 = v53;

  sub_1AADA61DC(v48, v47, v51, v50);

  v54 = v124;
  sub_1AADA61DC(v124, v42, v44, v43);
  sub_1AAEC1328(v123, type metadata accessor for ChartContainerValues);
  *&v219 = v54;
  *(&v219 + 1) = v42;
  *&v220 = v44;
  *(&v220 + 1) = v43;
  *&v221 = v48;
  *(&v221 + 1) = v47;
  *&v222 = v51;
  *(&v222 + 1) = v50;
  *&v223 = v126;
  *(&v223 + 1) = v125;
  v224 = 0;
  v225[0] = v54;
  v225[1] = v42;
  v225[2] = v44;
  v225[3] = v43;
  v225[4] = v48;
  v225[5] = v47;
  v225[6] = v51;
  v225[7] = v50;
  v225[8] = v126;
  v225[9] = v125;
  v226 = 0;
  sub_1AAE0F994(&v219, &v147);
  sub_1AAE0F9F0(v225);
  *v46 = v140;
  *(v46 + 8) = 4;
  v55 = v240[0];
  *(v46 + 112) = v239;
  *(v46 + 128) = v55;
  *(v46 + 137) = *(v240 + 9);
  v56 = v236;
  *(v46 + 48) = v235;
  *(v46 + 64) = v56;
  v57 = v238;
  *(v46 + 80) = v237;
  *(v46 + 96) = v57;
  v58 = v234;
  *(v46 + 16) = v233;
  *(v46 + 32) = v58;
  v59 = v248[0];
  *(v46 + 256) = v247;
  *(v46 + 272) = v59;
  *(v127 + 121) = *(v248 + 9);
  v60 = v244;
  *(v46 + 192) = v243;
  *(v46 + 208) = v60;
  v61 = v246;
  *(v46 + 224) = v245;
  *(v46 + 240) = v61;
  v62 = v242;
  *(v46 + 160) = v241;
  *(v46 + 176) = v62;
  *(v46 + 304) = 0;
  *(v46 + 312) = 0;
  *(v46 + 320) = 1;
  *(v46 + 328) = 0;
  v63 = v230;
  *(v46 + 368) = v229;
  *(v46 + 384) = v63;
  *(v46 + 400) = v231;
  v64 = v228;
  *(v46 + 336) = v227;
  *(v46 + 352) = v64;
  *(v46 + 402) = v135;
  *(v46 + 408) = v143;
  *(v46 + 416) = v134;
  *(v46 + 504) = 0;
  *(v46 + 512) = 0;
  *(v46 + 496) = 0;
  *(v46 + 520) = 0x1FFFFFFFELL;
  *(v46 + 560) = 0;
  *(v46 + 528) = 0u;
  *(v46 + 544) = 0u;
  v65 = v130;
  *(v130 + 2) = 0u;
  *(v65 + 3) = 0u;
  *v65 = 0u;
  *(v65 + 1) = 0u;
  *(v46 + 632) = 124;
  *(v46 + 640) = v34;
  *(v46 + 648) = v138;
  v66 = v141;
  *v141 = v137;
  v67 = v132;
  *(v66 + 24) = v131;
  *(v66 + 8) = v67;
  *(v66 + 40) = v139;
  v68 = v133;
  v69 = v46 + *(v133 + 76);
  *v69 = v129;
  *(v69 + 8) = v128;
  *(v46 + *(v68 + 80)) = v136;
  v70 = v46 + *(v68 + 84);
  v71 = v222;
  *(v70 + 32) = v221;
  *(v70 + 48) = v71;
  *(v70 + 64) = v223;
  *(v70 + 80) = v224;
  v72 = v220;
  *v70 = v219;
  *(v70 + 16) = v72;
  v139 = v46;
  swift_storeEnumTagMultiPayload();
  sub_1AAE680CC(&v233, &v147);
  sub_1AAE680CC(&v233, &v147);
  sub_1AAE680CC(&v241, &v147);
  sub_1AAEF2E48(&v233, v249);
  v142 = v249[0];
  v143 = v249[1];
  v73 = v250;
  v74 = v251;
  sub_1AAE680CC(&v241, &v147);
  sub_1AAEF2E48(&v241, v252);
  v140 = v252[0];
  v141 = v252[1];
  v75 = v253;
  v76 = v254;
  v77 = sub_1AADF89F0(MEMORY[0x1E69E7CC0]);
  v263[6] = v239;
  v264[0] = v240[0];
  *(v264 + 9) = *(v240 + 9);
  v263[2] = v235;
  v263[3] = v236;
  v263[5] = v238;
  v263[4] = v237;
  v263[1] = v234;
  v263[0] = v233;
  if (sub_1AAE63EF0(v263) == 5)
  {
    result = sub_1AAD357A8(v263);
    v79 = *(result + 80);
    v80 = *(result + 96);
    v81 = *(result + 112);
    *(v154 + 9) = *(result + 121);
    v153 = v80;
    v154[0] = v81;
    v152 = v79;
    v147 = *result;
    v83 = *(result + 16);
    v82 = *(result + 32);
    v84 = *(result + 64);
    v150 = *(result + 48);
    v151 = v84;
    v148 = v83;
    v149 = v82;
    v85 = *(result + 88);
    v86 = *(result + 120);
    v267[2] = *(result + 104);
    v267[3] = v86;
    v268 = *(result + 136);
    v87 = *(result + 72);
    v267[1] = v85;
    v267[0] = v87;
    if (v84 < 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v84)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v88 = fmin(*(&v149 + 1), 0.0);
    if (*(&v149 + 1) >= 0.0)
    {
      v89 = *(&v149 + 1);
    }

    else
    {
      v89 = 0.0;
    }

    v261 = v285;
    v262[0] = v286[0];
    *(v262 + 9) = *(v286 + 9);
    v257 = v281;
    v258 = v282;
    v260 = v284;
    v259 = v283;
    v256 = v280;
    v255 = v279;
    v90 = sub_1AAD357A8(&v255);
    sub_1AAEC24E8(v90, v145, sub_1AAEC13E4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v145[0] = v77;
    sub_1AADD33B0(v267, isUniquelyReferenced_nonNull_native, v89, v88);
    sub_1AADB3024(&v151 + 8);
    v77 = *&v145[0];
    if (BYTE8(v151) == 3)
    {
      sub_1AAE63F58(&v147);
    }

    else
    {
      sub_1AAEC1388(v249, &qword_1ED9AE220, &type metadata for PlottedValueCollectorV2, MEMORY[0x1E69E6720]);
      sub_1AAE63F58(&v147);
      v73 = 0;
      v74 = 0;
      v142 = 0u;
      v143 = xmmword_1AAF92AC0;
    }
  }

  v261 = v247;
  v262[0] = v248[0];
  *(v262 + 9) = *(v248 + 9);
  v257 = v243;
  v258 = v244;
  v260 = v246;
  v259 = v245;
  v256 = v242;
  v255 = v241;
  v92 = sub_1AAE63EF0(&v255);
  LODWORD(v138) = v74;
  if (v92 != 5)
  {
    v137 = v75;
    goto LABEL_26;
  }

  result = sub_1AAD357A8(&v255);
  v93 = *(result + 80);
  v94 = *(result + 96);
  v95 = *(result + 112);
  *(v154 + 9) = *(result + 121);
  v153 = v94;
  v154[0] = v95;
  v152 = v93;
  v147 = *result;
  v97 = *(result + 16);
  v96 = *(result + 32);
  v98 = *(result + 64);
  v150 = *(result + 48);
  v151 = v98;
  v148 = v97;
  v149 = v96;
  v99 = *(result + 88);
  v100 = *(result + 120);
  v265[2] = *(result + 104);
  v265[3] = v100;
  v266 = *(result + 136);
  v101 = *(result + 72);
  v265[1] = v99;
  v265[0] = v101;
  if ((v98 & 0x80000000) == 0)
  {
    if (!v98)
    {
      v102 = fmin(*(&v149 + 1), 0.0);
      if (*(&v149 + 1) >= 0.0)
      {
        v103 = *(&v149 + 1);
      }

      else
      {
        v103 = 0.0;
      }

      v145[6] = v293;
      v146[0] = v294[0];
      *(v146 + 9) = *(v294 + 9);
      v145[2] = v289;
      v145[3] = v290;
      v145[4] = v291;
      v145[5] = v292;
      v145[0] = v287;
      v145[1] = v288;
      v104 = sub_1AAD357A8(v145);
      sub_1AAEC24E8(v104, v144, sub_1AAEC13E4);
      v105 = swift_isUniquelyReferenced_nonNull_native();
      v144[0] = v77;
      sub_1AADD33B0(v265, v105, v103, v102);
      sub_1AADB3024(&v151 + 8);
      v77 = v144[0];
      if (BYTE8(v151) == 3)
      {
        v137 = v75;
        sub_1AAE63F58(&v147);
      }

      else
      {
        sub_1AAEC1388(v252, &qword_1ED9AE220, &type metadata for PlottedValueCollectorV2, MEMORY[0x1E69E6720]);
        sub_1AAE63F58(&v147);
        v137 = 0;
        v76 = 0;
        v140 = 0u;
        v141 = xmmword_1AAF92AC0;
      }

LABEL_26:
      v106 = v76;
      v107 = v73;
      sub_1AAEC24E8(v232, &v147, sub_1AAEC1244);
      v108 = *(&v148 + 1);
      if (*(&v148 + 1) == 2)
      {
        sub_1AAEC1328(&v147, sub_1AAEC1244);
        v109 = 0;
        v110 = 0;
        v111 = 0;
        v112 = 0;
        v113 = 0;
        v108 = 1;
        if (!*(v77 + 16))
        {
          goto LABEL_30;
        }
      }

      else
      {
        v110 = *(&v147 + 1);
        v109 = v147;
        v111 = v148;
        v112 = v149;
        v113 = BYTE8(v149);
        sub_1AAE682A0(v147, *(&v147 + 1), v148, *(&v148 + 1));
        sub_1AAEC1388(&v147, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier);
        if (!*(v77 + 16))
        {
LABEL_30:

          v77 = 0;
        }
      }

      v197 = 0;
      v198 = 0;
      v199 = 1;
      v200 = 0u;
      v201 = 0u;
      v202 = 0u;
      v203 = 0u;
      v204 = 0u;
      v205 = 0u;
      v206 = 0u;
      v207 = 0u;
      v208 = 0u;
      v209 = 0u;
      v210 = 0u;
      v211 = 0u;
      v212 = 0u;
      v213 = 0u;
      v214 = 0u;
      v215 = 0u;
      v216 = 0u;
      v147 = v142;
      v148 = v143;
      *&v149 = v107;
      BYTE8(v149) = v138;
      v150 = v140;
      v151 = v141;
      *&v152 = v137;
      BYTE8(v152) = v106;
      *&v154[0] = 0;
      v153 = 0uLL;
      *(v154 + 8) = xmmword_1AAF92AC0;
      BYTE8(v154[1]) = 0;
      v157 = 0;
      v155 = 0;
      v156 = 0;
      v158 = xmmword_1AAF92AC0;
      v159 = 0;
      v162 = 0;
      v160 = 0;
      v161 = 0;
      v163 = xmmword_1AAF92AC0;
      v164 = 0;
      v165 = 0;
      v166 = 0;
      v167 = 0;
      v168 = 1;
      v169 = 0;
      v170 = 0;
      v171 = v109;
      v172 = v110;
      v173 = v111;
      v174 = v108;
      v175 = v112;
      v176 = v113;
      v177 = 0;
      v178 = 0;
      v179 = 0;
      v180 = 1;
      v181 = 0;
      v182 = 0;
      v184 = 0;
      v183 = 0;
      v185 = 0;
      v186 = 1;
      v187 = 0;
      v188 = 0;
      v189 = 0;
      v190 = 0;
      v191 = 0;
      v192 = 1;
      v193 = 0;
      v194 = 0;
      v196 = 0;
      v195 = v77;
      v217 = 0;
      v218 = 0;
      v114 = v139;
      v115 = v121;
      sub_1AAEC24E8(v139, v121, type metadata accessor for CollectedChartContent);
      v116 = v122;
      sub_1AADFA56C(&v147, (v122 + 1));
      sub_1AAEC2484(0, &qword_1ED9AD6F8, type metadata accessor for CollectedChartContent, MEMORY[0x1E69E6F90]);
      v117 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1AAF92AB0;
      sub_1AAE0FB08(v115, v118 + v117);
      sub_1AAE68190(&v233);
      sub_1AAE68190(&v241);
      sub_1AAD58120(&v147);
      sub_1AAEC1328(v114, type metadata accessor for CollectedChartContent);
      result = sub_1AAEC1328(v232, sub_1AAEC1244);
      *v116 = v118;
      return result;
    }

    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1AAEC2410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1AAEC2484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AAEC24E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static LineMark._collectChartContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v119 = a3;
  v5 = type metadata accessor for ChartContainerValues();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CollectedChartContent(0);
  v9 = *(v8 - 8);
  v116 = v8;
  v117 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v120 = &v89 - v12;
  v13 = *(a1 + 112);
  v245[6] = *(a1 + 96);
  v245[7] = v13;
  v14 = *(a1 + 144);
  v245[8] = *(a1 + 128);
  v15 = *(a1 + 48);
  v245[2] = *(a1 + 32);
  v245[3] = v15;
  v16 = *(a1 + 80);
  v245[4] = *(a1 + 64);
  v245[5] = v16;
  v17 = *(a1 + 16);
  v245[0] = *a1;
  v245[1] = v17;
  v18 = *(a1 + 224);
  v19 = *(a1 + 256);
  v20 = *(a1 + 272);
  v244[6] = *(a1 + 240);
  v244[7] = v19;
  v244[8] = v20;
  v21 = *(a1 + 160);
  v22 = *(a1 + 192);
  v23 = *(a1 + 208);
  v244[2] = *(a1 + 176);
  v244[3] = v22;
  v244[5] = v18;
  v244[4] = v23;
  v244[1] = v21;
  v244[0] = v14;
  v25 = *(a1 + 288);
  v24 = *(a1 + 296);
  v26 = *(a1 + 304);
  v27 = type metadata accessor for _ChartContentCollectInputs(0);
  sub_1AAF09418(v245, v214);
  sub_1AAF09418(v244, v216);
  v28 = 0;
  if (v26 >= 2)
  {
    if (v26 != 2)
    {
      v26 = 0;
      v112 = 1;
      v113 = 0.0;
      *&v25 = 0.0;
      goto LABEL_7;
    }

    swift_beginAccess();
    v30 = sub_1AAEC115C(v25, v24);
    swift_endAccess();
    sub_1AACCAE10(v25, v24, 2);
    v29 = v30;
    v28 = v24;
  }

  else
  {
    v29 = *&v25;
    *&v25 = 0.0;
  }

  v112 = v28;
  v113 = v29;
LABEL_7:
  v31 = a2 + *(v27 + 28);
  sub_1AAEF1A60(v31, v213);
  sub_1AAEF1ED8(v31, v212);
  sub_1AAEF1C70(v31, &v218);
  sub_1AAEF20F0(v31, &v229);
  v32 = *(a2 + *(v27 + 20));
  sub_1AAEC3298(v213, &v121, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle);
  if (*(&v122[0] + 1) == 2)
  {

    sub_1AAEC33DC(&v121, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle);
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = -256;
  }

  else
  {
    sub_1AAEC34A8(&v123, &v207, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);

    sub_1AAEC3438(&v121, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle);
  }

  v111 = *(v31 + 81);
  v33 = *(v31 + 312);
  LODWORD(v109) = *(v31 + 320);
  sub_1AAEC3298(v212, &v121, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol);
  v108 = v32;
  if (*(&v122[0] + 1) == 2)
  {

    sub_1AAEC33DC(&v121, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol);
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v206 = -256;
  }

  else
  {
    sub_1AAEC34A8(&v123, &v202, qword_1ED9B2508, &type metadata for ResolvedSymbol);

    sub_1AAEC3438(&v121, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol);
  }

  if (*(&v225 + 1) >> 1 != 4294967294 || (v228 & 0x7C) != 0)
  {
    v122[1] = v226;
    v123 = v227;
    v121 = v224;
    v122[0] = v225;
    v124[0] = v228;
    sub_1AAEC34A8(&v121, v200, qword_1ED9B22C0, &type metadata for ResolvedSymbolSize);
    v105 = v121;
    v106 = v122[0];
    v103 = v122[1];
    v104 = v123;
    LODWORD(v107) = v124[0];
  }

  else
  {
    LODWORD(v107) = 0;
    v105 = 0u;
    v106 = xmmword_1AAFABEE0;
    v103 = 0u;
    v104 = 0u;
  }

  v102 = (v120 + 496);
  LODWORD(v115) = v26;
  v114 = v25;
  v110 = v33;
  if (v232 == 2)
  {
    LODWORD(v101) = 124;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
  }

  else
  {
    v122[1] = v237;
    v123 = v238;
    v124[0] = v239;
    v121 = v235;
    v122[0] = v236;
    sub_1AAEC34A8(&v121, v200, &qword_1ED9B23C8, &type metadata for ResolvedLineStyle);
    v99 = v122[0];
    v100 = v121;
    v97 = v123;
    v98 = v122[1];
    LODWORD(v101) = v124[0];
  }

  v34 = *(v31 + 328);
  v96 = type metadata accessor for CollectedChartContent.Primitive(0);
  v35 = *(v96 + 72);
  v36 = sub_1AAF8E244();
  v37 = v120;
  (*(*(v36 - 8) + 56))(v120 + v35, 1, 1, v36);
  v38 = v31 + v5[15];
  v95 = *v38;
  v94 = *(v38 + 8);
  v93 = type metadata accessor for ChartContainerValues;
  sub_1AAEC3374(v31, v7, type metadata accessor for ChartContainerValues);
  v39 = v5[17];
  v40 = &v7[v5[16]];
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  v90 = v40[3];
  v91 = v43;
  v44 = &v7[v39];
  v45 = v5;
  v47 = *v44;
  v46 = v44[1];
  v49 = v44[2];
  v48 = v44[3];
  v50 = &v7[v45[18]];
  v51 = *(v50 + 1);
  v92 = *v50;
  sub_1AADA61DC(v41, v42, v43, v90);
  sub_1AADA61DC(v47, v46, v49, v48);

  sub_1AAE68240(v7, v93);
  *&v194 = v41;
  *(&v194 + 1) = v42;
  *&v195 = v91;
  *(&v195 + 1) = v90;
  *&v196 = v47;
  *(&v196 + 1) = v46;
  *&v197 = v49;
  *(&v197 + 1) = v48;
  *&v198 = v92;
  *(&v198 + 1) = v51;
  v199 = 0;
  v200[0] = v41;
  v200[1] = v42;
  v200[2] = v91;
  v200[3] = v90;
  v200[4] = v47;
  v200[5] = v46;
  v200[6] = v49;
  v200[7] = v48;
  v200[8] = v92;
  v200[9] = v51;
  v201 = 0;
  sub_1AAE0F994(&v194, &v121);
  sub_1AAE0F9F0(v200);
  *v37 = v108;
  *(v37 + 8) = 2;
  v52 = v215[0];
  *(v37 + 112) = v214[6];
  *(v37 + 128) = v52;
  *(v37 + 137) = *(v215 + 9);
  v53 = v214[3];
  *(v37 + 48) = v214[2];
  *(v37 + 64) = v53;
  v54 = v214[5];
  *(v37 + 80) = v214[4];
  *(v37 + 96) = v54;
  v55 = v214[1];
  *(v37 + 16) = v214[0];
  *(v37 + 32) = v55;
  v56 = v217[0];
  *(v37 + 256) = v216[6];
  *(v37 + 272) = v56;
  *(v37 + 281) = *(v217 + 9);
  v57 = v216[3];
  *(v37 + 192) = v216[2];
  *(v37 + 208) = v57;
  v58 = v216[5];
  *(v37 + 224) = v216[4];
  *(v37 + 240) = v58;
  v59 = v216[1];
  *(v37 + 160) = v216[0];
  *(v37 + 176) = v59;
  v60 = v114;
  *(v37 + 304) = v113;
  *(v37 + 312) = v60;
  *(v37 + 320) = v112;
  *(v37 + 328) = v115;
  v61 = v210;
  *(v37 + 368) = v209;
  *(v37 + 384) = v61;
  *(v37 + 400) = v211;
  v62 = v208;
  *(v37 + 336) = v207;
  *(v37 + 352) = v62;
  *(v37 + 402) = v111;
  *(v37 + 408) = v110;
  *(v37 + 416) = v109;
  v63 = v205;
  *(v37 + 456) = v204;
  *(v37 + 472) = v63;
  *(v37 + 488) = v206;
  v64 = v203;
  *(v37 + 424) = v202;
  *(v37 + 440) = v64;
  v65 = v106;
  v66 = v102;
  *v102 = v105;
  v66[1] = v65;
  v67 = v104;
  v66[2] = v103;
  v66[3] = v67;
  *(v37 + 560) = v107;
  v68 = v100;
  *(v66 + 88) = v99;
  *(v66 + 72) = v68;
  v69 = v98;
  *(v66 + 120) = v97;
  *(v66 + 104) = v69;
  *(v37 + 632) = v101;
  *(v37 + 640) = v34;
  *(v37 + 648) = 0;
  *(v66 + 160) = 1;
  *(v37 + 664) = 0u;
  *(v37 + 680) = 0u;
  *(v66 + 200) = 1;
  v70 = v96;
  v71 = v37 + *(v96 + 76);
  *v71 = v95;
  *(v71 + 8) = v94;
  *(v37 + *(v70 + 80)) = 2;
  v72 = v37 + *(v70 + 84);
  v73 = v197;
  *(v72 + 32) = v196;
  *(v72 + 48) = v73;
  *(v72 + 64) = v198;
  *(v72 + 80) = v199;
  v74 = v195;
  *v72 = v194;
  *(v72 + 16) = v74;
  swift_storeEnumTagMultiPayload();
  sub_1AAE680CC(v214, &v121);
  sub_1AAE680CC(v214, &v121);
  sub_1AAE680CC(v216, &v121);
  sub_1AAEF2E48(v214, &v240);
  sub_1AAE680CC(v216, &v121);
  sub_1AAEF2E48(v216, &v242);
  sub_1AAEC3298(v213, &v121, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle);
  if (*(&v122[0] + 1) == 2)
  {
    sub_1AAEC33DC(&v121, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle);
    v113 = 0.0;
    v114 = 0;
    v112 = 0;
    v111 = 0;
    v115 = 1;
    v116 = 0;
  }

  else
  {
    v115 = *(&v122[0] + 1);
    v116 = v121;
    v113 = *v122;
    v114 = *(&v121 + 1);
    v112 = *&v122[1];
    v111 = BYTE8(v122[1]);
    sub_1AAE682A0(v121, *(&v121 + 1), *&v122[0], *(&v122[0] + 1));
    sub_1AAEC3438(&v121, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle);
  }

  sub_1AAEC3298(v212, &v121, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol);
  v75 = *(&v122[0] + 1);
  if (*(&v122[0] + 1) == 2)
  {
    sub_1AAEC33DC(&v121, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol);
    v109 = 0;
    v110 = 0;
    v107 = 0;
    v108 = 0;
    LODWORD(v106) = 0;
    v75 = 1;
  }

  else
  {
    v109 = *(&v121 + 1);
    v110 = v121;
    v107 = *&v122[1];
    v108 = *&v122[0];
    LODWORD(v106) = BYTE8(v122[1]);
    sub_1AAE682A0(v121, *(&v121 + 1), *&v122[0], *(&v122[0] + 1));
    sub_1AAEC3438(&v121, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol);
  }

  if (*(&v225 + 1) >> 1 != 4294967294 || (v228 & 0x7C) != 0)
  {
    v76 = v221;
    v101 = v218;
    v102 = v219;
    *&v103 = v220;
    *&v104 = v222;
    LODWORD(v105) = v223;
    sub_1AAE682A0(v218, v219, v220, v221);
  }

  else
  {
    v101 = 0;
    v102 = 0;
    *&v103 = 0;
    *&v104 = 0;
    LODWORD(v105) = 0;
    v76 = 1;
  }

  v77 = v232;
  if (v232 == 2)
  {
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v77 = 1;
  }

  else
  {
    v82 = v234;
    v81 = v233;
    v80 = v231;
    v79 = v230;
    v78 = v229;
    sub_1AAE682A0(v229, v230, v231, v232);
  }

  v172 = 0;
  v173 = 0;
  v174 = 1;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v121 = v240;
  v122[0] = v241[0];
  *(v122 + 9) = *(v241 + 9);
  v123 = v242;
  *v124 = v243[0];
  *&v124[9] = *(v243 + 9);
  v126 = 0;
  v127 = 0;
  v125 = 0;
  v128 = xmmword_1AAF92AC0;
  v129 = 0;
  v131 = 0;
  v132 = 0;
  v130 = 0;
  v133 = xmmword_1AAF92AC0;
  v134 = 0;
  v137 = 0;
  v135 = 0;
  v136 = 0;
  v138 = xmmword_1AAF92AC0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v143 = 1;
  v144 = 0;
  v145 = 0;
  v146 = v116;
  v147 = v114;
  v148 = v113;
  v149 = v115;
  v150 = v112;
  v151 = v111;
  v152 = v110;
  v153 = v109;
  v154 = v108;
  v155 = v75;
  v156 = v107;
  v157 = v106;
  v158 = v101;
  v159 = v102;
  v160 = v103;
  v161 = v76;
  v162 = v104;
  v163 = v105;
  v164 = v78;
  v165 = v79;
  v166 = v80;
  v167 = v77;
  v168 = v81;
  v169 = v82;
  v171 = 0;
  v170 = 0;
  v192 = 0;
  v193 = 0;
  v83 = v120;
  v84 = v118;
  sub_1AAEC3374(v120, v118, type metadata accessor for CollectedChartContent);
  v85 = v119;
  sub_1AADFA56C(&v121, (v119 + 1));
  sub_1AAE0FAB0();
  v86 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1AAF92AB0;
  sub_1AAE0FB08(v84, v87 + v86);
  sub_1AAE68190(v214);
  sub_1AAE68190(v216);
  sub_1AAEC33DC(&v229, &qword_1EB426B00, &qword_1EB426B08, &type metadata for ResolvedLineStyle);
  sub_1AAEC33DC(&v218, &qword_1ED9AE8C8, &qword_1ED9AE8D0, &type metadata for ResolvedSymbolSize);
  sub_1AAD58120(&v121);
  sub_1AAE68240(v83, type metadata accessor for CollectedChartContent);
  sub_1AAEC33DC(v212, &qword_1ED9AE8A8, &qword_1ED9AE8B0, &type metadata for ResolvedSymbol);
  result = sub_1AAEC33DC(v213, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle);
  *v85 = v87;
  return result;
}

uint64_t sub_1AAEC3298(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1AAEC3308(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1AAEC3308(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AAEC3528(255, a3, a4, type metadata accessor for ResolvedModifier);
    v5 = sub_1AAF8FE74();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAEC3374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAEC33DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAEC3308(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAEC3438(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAEC3528(0, a2, a3, type metadata accessor for ResolvedModifier);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAEC34A8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAEC3528(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AAEC3528(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static RectangleMark._collectChartContent(content:inputs:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v97 = a3;
  v5 = type metadata accessor for ChartContainerValues();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CollectedChartContent(0);
  v9 = *(v8 - 8);
  v94 = v8;
  v95 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - v12;
  v14 = a1[7];
  v195[6] = a1[6];
  v195[7] = v14;
  v15 = a1[9];
  v195[8] = a1[8];
  v16 = a1[3];
  v195[2] = a1[2];
  v195[3] = v16;
  v17 = a1[5];
  v195[4] = a1[4];
  v195[5] = v17;
  v18 = a1[1];
  v195[0] = *a1;
  v195[1] = v18;
  v19 = a1[14];
  v20 = a1[16];
  v21 = a1[17];
  v194[6] = a1[15];
  v194[7] = v20;
  v194[8] = v21;
  v22 = a1[10];
  v23 = a1[12];
  v24 = a1[13];
  v194[2] = a1[11];
  v194[3] = v23;
  v194[5] = v19;
  v194[4] = v24;
  v93 = &v77 - v12 + 656;
  v194[1] = v22;
  v194[0] = v15;
  v25 = type metadata accessor for _ChartContentCollectInputs(0);
  sub_1AAF09418(v195, v186);
  sub_1AAF09418(v194, v188);
  v26 = a2 + *(v25 + 28);
  sub_1AAEF1A60(v26, v185);
  v27 = *(a2 + *(v25 + 20));
  sub_1AAEC3E2C(v185, &v99, sub_1AAEC1244);
  v84 = v27;
  if (*(&v100[0] + 1) == 2)
  {

    sub_1AAEC1328(&v99, sub_1AAEC1244);
    v180 = 0u;
    v181 = 0u;
    v182 = 0u;
    v183 = 0u;
    v184 = -256;
  }

  else
  {
    sub_1AAEC1444(&v101, &v180);

    sub_1AAEC3E94(&v99);
  }

  v28 = *(v26 + 81);
  v98 = *(v26 + 312);
  v88 = *(v26 + 320);
  v89 = v28;
  *(v13 + 424) = 0u;
  *(v13 + 440) = 0u;
  *(v13 + 456) = 0u;
  *(v13 + 472) = 0u;
  *(v13 + 244) = -256;
  v29 = *(v26 + 328);
  v91 = *(v26 + 336);
  v90 = *(v26 + 344);
  v92 = *(v26 + 384);
  v30 = v5[14];
  v87 = type metadata accessor for CollectedChartContent.Primitive(0);
  v31 = *(v87 + 72);
  v82 = v13 + 160;
  v83 = v13 + 568;
  v32 = *(v26 + 352);
  v85 = *(v26 + 368);
  v86 = v32;
  sub_1AAD0F558(v26 + v30, &v13[v31]);
  sub_1AAEC3E2C(v26, v7, type metadata accessor for ChartContainerValues);
  v33 = v5[17];
  v34 = &v7[v5[16]];
  v36 = *v34;
  v35 = v34[1];
  v37 = v5;
  v38 = v34[3];
  v78 = v34[2];
  v79 = v35;
  v39 = *&v7[v33];
  v40 = *&v7[v33 + 8];
  v41 = *&v7[v33 + 16];
  v42 = *&v7[v33 + 24];
  v43 = &v7[v37[18]];
  v44 = *v43;
  v80 = v7;
  v81 = v44;
  v45 = *(v43 + 1);

  v46 = v35;
  v47 = v78;
  sub_1AADA61DC(v36, v46, v78, v38);
  sub_1AADA61DC(v39, v40, v41, v42);

  sub_1AAEC1328(v80, type metadata accessor for ChartContainerValues);
  *&v172 = v36;
  *(&v172 + 1) = v79;
  *&v173 = v47;
  *(&v173 + 1) = v38;
  *&v174 = v39;
  *(&v174 + 1) = v40;
  *&v175 = v41;
  *(&v175 + 1) = v42;
  *&v176 = v81;
  *(&v176 + 1) = v45;
  v177 = 0;
  v178[0] = v36;
  v178[1] = v79;
  v178[2] = v47;
  v178[3] = v38;
  v178[4] = v39;
  v178[5] = v40;
  v178[6] = v41;
  v178[7] = v42;
  v178[8] = v81;
  v178[9] = v45;
  v179 = 0;
  sub_1AAE0F994(&v172, &v99);
  sub_1AAE0F9F0(v178);
  *v13 = v84;
  v13[8] = 5;
  v48 = v187[0];
  *(v13 + 7) = v186[6];
  *(v13 + 8) = v48;
  *(v13 + 137) = *(v187 + 9);
  v49 = v186[3];
  *(v13 + 3) = v186[2];
  *(v13 + 4) = v49;
  v50 = v186[5];
  *(v13 + 5) = v186[4];
  *(v13 + 6) = v50;
  v51 = v186[1];
  *(v13 + 1) = v186[0];
  *(v13 + 2) = v51;
  v52 = v189[0];
  *(v13 + 16) = v188[6];
  *(v13 + 17) = v52;
  *(v82 + 121) = *(v189 + 9);
  v53 = v188[3];
  *(v13 + 12) = v188[2];
  *(v13 + 13) = v53;
  v54 = v188[5];
  *(v13 + 14) = v188[4];
  *(v13 + 15) = v54;
  v55 = v188[1];
  *(v13 + 10) = v188[0];
  *(v13 + 11) = v55;
  *(v13 + 38) = 0;
  *(v13 + 39) = 0;
  *(v13 + 40) = 1;
  v13[328] = 0;
  v56 = v183;
  *(v13 + 23) = v182;
  *(v13 + 24) = v56;
  *(v13 + 200) = v184;
  v57 = v181;
  *(v13 + 21) = v180;
  *(v13 + 22) = v57;
  v13[402] = v89;
  *(v13 + 51) = v98;
  *(v13 + 208) = v88;
  *(v13 + 63) = 0;
  *(v13 + 64) = 0;
  *(v13 + 62) = 0;
  *(v13 + 65) = 0x1FFFFFFFELL;
  v13[560] = 0;
  *(v13 + 33) = 0u;
  *(v13 + 34) = 0u;
  v58 = v83;
  *(v83 + 2) = 0u;
  *(v58 + 3) = 0u;
  *v58 = 0u;
  *(v58 + 1) = 0u;
  v13[632] = 124;
  *(v13 + 80) = v29;
  *(v13 + 81) = v91;
  v59 = v93;
  *v93 = v90;
  v60 = v86;
  *(v59 + 24) = v85;
  *(v59 + 8) = v60;
  v59[40] = v92;
  v61 = v87;
  v62 = &v13[*(v87 + 76)];
  *v62 = 0;
  v62[8] = 3;
  v13[*(v61 + 80)] = 2;
  v63 = &v13[*(v61 + 84)];
  v64 = v175;
  *(v63 + 2) = v174;
  *(v63 + 3) = v64;
  *(v63 + 4) = v176;
  v63[80] = v177;
  v65 = v173;
  *v63 = v172;
  *(v63 + 1) = v65;
  swift_storeEnumTagMultiPayload();
  sub_1AAE680CC(v186, &v99);
  sub_1AAE680CC(v186, &v99);
  sub_1AAE680CC(v188, &v99);
  sub_1AAEF2E48(v186, &v190);
  sub_1AAE680CC(v188, &v99);
  sub_1AAEF2E48(v188, &v192);
  sub_1AAEC3E2C(v185, &v99, sub_1AAEC1244);
  v66 = *(&v100[0] + 1);
  if (*(&v100[0] + 1) == 2)
  {
    sub_1AAEC1328(&v99, sub_1AAEC1244);
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v66 = 1;
  }

  else
  {
    v68 = *(&v99 + 1);
    v67 = v99;
    v69 = *&v100[0];
    v70 = *&v100[1];
    v71 = BYTE8(v100[1]);
    sub_1AAE682A0(v99, *(&v99 + 1), *&v100[0], *(&v100[0] + 1));
    sub_1AAEC3E94(&v99);
  }

  v151 = 0;
  v150 = 0;
  v152 = 1;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v99 = v190;
  v100[0] = v191[0];
  *(v100 + 9) = *(v191 + 9);
  v101 = v192;
  v102[0] = v193[0];
  *(v102 + 9) = *(v193 + 9);
  v104 = 0;
  v105 = 0;
  v103 = 0;
  v106 = xmmword_1AAF92AC0;
  v107 = 0;
  v109 = 0;
  v110 = 0;
  v108 = 0;
  v111 = xmmword_1AAF92AC0;
  v112 = 0;
  v114 = 0;
  v115 = 0;
  v113 = 0;
  v116 = xmmword_1AAF92AC0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 1;
  v122 = 0;
  v123 = 0;
  v124 = v67;
  v125 = v68;
  v126 = v69;
  v127 = v66;
  v128 = v70;
  v129 = v71;
  v131 = 0;
  v130 = 0;
  v132 = 0;
  v133 = 1;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v139 = 1;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 1;
  v146 = 0;
  v147 = 0;
  v149 = 0;
  v148 = 0;
  v170 = 0;
  v171 = 0;
  v72 = v96;
  sub_1AAEC3E2C(v13, v96, type metadata accessor for CollectedChartContent);
  v73 = v97;
  sub_1AADFA56C(&v99, (v97 + 1));
  sub_1AAEC2484(0, &qword_1ED9AD6F8, type metadata accessor for CollectedChartContent, MEMORY[0x1E69E6F90]);
  v74 = (*(v95 + 80) + 32) & ~*(v95 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1AAF92AB0;
  sub_1AAE0FB08(v72, v75 + v74);
  sub_1AAE68190(v186);
  sub_1AAE68190(v188);
  sub_1AAD58120(&v99);
  sub_1AAEC1328(v13, type metadata accessor for CollectedChartContent);
  result = sub_1AAEC1328(v185, sub_1AAEC1244);
  *v73 = v75;
  return result;
}

uint64_t sub_1AAEC3E2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAEC3E94(uint64_t a1)
{
  sub_1AAEC3F0C(0, &qword_1ED9AE8C0, type metadata accessor for ResolvedModifier);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AAEC3F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ResolvedForegroundStyle);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t static RuleMark._collectChartContent(content:inputs:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v98 = a3;
  v5 = type metadata accessor for ChartContainerValues();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CollectedChartContent(0);
  v9 = *(v8 - 8);
  v95 = v8;
  v96 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v79 - v12;
  v14 = a1[7];
  v215[6] = a1[6];
  v215[7] = v14;
  v15 = a1[9];
  v215[8] = a1[8];
  v16 = a1[3];
  v215[2] = a1[2];
  v215[3] = v16;
  v17 = a1[5];
  v215[4] = a1[4];
  v215[5] = v17;
  v18 = a1[1];
  v215[0] = *a1;
  v215[1] = v18;
  v19 = a1[14];
  v20 = a1[16];
  v21 = a1[17];
  v214[6] = a1[15];
  v214[7] = v20;
  v214[8] = v21;
  v22 = a1[10];
  v23 = a1[12];
  v24 = a1[13];
  v214[2] = a1[11];
  v214[3] = v23;
  v214[5] = v19;
  v214[4] = v24;
  v214[1] = v22;
  v214[0] = v15;
  v25 = type metadata accessor for _ChartContentCollectInputs(0);
  sub_1AAF09418(v215, v195);
  sub_1AAF09418(v214, v197);
  v26 = a2 + *(v25 + 28);
  sub_1AAEF1A60(v26, v194);
  sub_1AAEF20F0(v26, &v199);
  v27 = *(a2 + *(v25 + 20));
  sub_1AAEC4954(v194, &v100);
  if (*(&v101[0] + 1) == 2)
  {

    sub_1AAEC49D0(&v100, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, sub_1AAEC4A30);
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    v192 = 0u;
    v193 = -256;
  }

  else
  {
    sub_1AAEC4A9C(&v102, &v189, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);

    sub_1AAEC49D0(&v100, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier, sub_1AAEC4B1C);
  }

  v93 = v27;
  v94 = v13 + 568;
  v28 = *(v26 + 81);
  v99 = *(v26 + 312);
  v91 = *(v26 + 320);
  v92 = v28;
  if (v202 == 2)
  {
    v90 = 124;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
  }

  else
  {
    v101[1] = v207;
    v102 = v208;
    v103[0] = v209;
    v100 = v205;
    v101[0] = v206;
    sub_1AAEC4A9C(&v100, &v179, &qword_1ED9B23C8, &type metadata for ResolvedLineStyle);
    v88 = v100;
    v89 = v101[0];
    v86 = v101[1];
    v87 = v102;
    v90 = v103[0];
  }

  v29 = *(v26 + 328);
  v85 = type metadata accessor for CollectedChartContent.Primitive(0);
  v30 = *(v85 + 72);
  v31 = sub_1AAF8E244();
  (*(*(v31 - 8) + 56))(&v13[v30], 1, 1, v31);
  v84 = type metadata accessor for ChartContainerValues;
  sub_1AAEC3374(v26, v7, type metadata accessor for ChartContainerValues);
  v32 = *(v5 + 68);
  v33 = &v7[*(v5 + 64)];
  v34 = *(v33 + 1);
  *&v82 = *v33;
  v35 = v82;
  *(&v82 + 1) = v34;
  v36 = *(v33 + 2);
  v80 = *(v33 + 3);
  v81 = v36;
  v37 = &v7[v32];
  v38 = v5;
  v40 = *v37;
  v39 = v37[1];
  v41 = v37[2];
  v42 = v37[3];
  v43 = &v7[*(v38 + 72)];
  v44 = *(v43 + 1);
  v83 = *v43;

  v45 = v35;
  v46 = v34;
  v48 = v80;
  v47 = v81;
  sub_1AADA61DC(v45, v46, v81, v80);
  sub_1AADA61DC(v40, v39, v41, v42);

  sub_1AAE68240(v7, v84);
  v173 = v82;
  *&v174 = v47;
  *(&v174 + 1) = v48;
  *&v175 = v40;
  *(&v175 + 1) = v39;
  *&v176 = v41;
  *(&v176 + 1) = v42;
  *&v177 = v83;
  *(&v177 + 1) = v44;
  v178 = 0;
  v179 = v82;
  v180 = v47;
  v181 = v48;
  v182 = v40;
  v183 = v39;
  v184 = v41;
  v185 = v42;
  v186 = v83;
  v187 = v44;
  v188 = 0;
  sub_1AAE0F994(&v173, &v100);
  sub_1AAE0F9F0(&v179);
  *v13 = v93;
  v13[8] = 1;
  v49 = v196[0];
  *(v13 + 7) = v195[6];
  *(v13 + 8) = v49;
  *(v13 + 137) = *(v196 + 9);
  v50 = v195[3];
  *(v13 + 3) = v195[2];
  *(v13 + 4) = v50;
  v51 = v195[5];
  *(v13 + 5) = v195[4];
  *(v13 + 6) = v51;
  v52 = v195[1];
  *(v13 + 1) = v195[0];
  *(v13 + 2) = v52;
  v53 = v197[5];
  v54 = v198[0];
  *(v13 + 16) = v197[6];
  *(v13 + 17) = v54;
  *(v13 + 281) = *(v198 + 9);
  v55 = v197[3];
  *(v13 + 12) = v197[2];
  *(v13 + 13) = v55;
  *(v13 + 14) = v197[4];
  *(v13 + 15) = v53;
  v56 = v197[1];
  *(v13 + 10) = v197[0];
  *(v13 + 11) = v56;
  *(v13 + 38) = 0;
  *(v13 + 39) = 0;
  *(v13 + 40) = 1;
  v13[328] = 0;
  v57 = v192;
  *(v13 + 23) = v191;
  *(v13 + 24) = v57;
  *(v13 + 200) = v193;
  v58 = v190;
  *(v13 + 21) = v189;
  *(v13 + 22) = v58;
  v13[402] = v92;
  *(v13 + 51) = v99;
  *(v13 + 208) = v91;
  *(v13 + 424) = 0u;
  *(v13 + 440) = 0u;
  *(v13 + 456) = 0u;
  *(v13 + 472) = 0u;
  *(v13 + 244) = -256;
  *(v13 + 63) = 0;
  *(v13 + 64) = 0;
  *(v13 + 62) = 0;
  *(v13 + 65) = 0x1FFFFFFFELL;
  *(v13 + 33) = 0u;
  *(v13 + 34) = 0u;
  v13[560] = 0;
  v59 = v94;
  v60 = v89;
  *v94 = v88;
  v59[1] = v60;
  v61 = v87;
  v59[2] = v86;
  v59[3] = v61;
  v13[632] = v90;
  *(v13 + 80) = v29;
  *(v13 + 81) = 0;
  *(v59 + 88) = 1;
  *(v13 + 664) = 0u;
  *(v13 + 680) = 0u;
  *(v59 + 128) = 1;
  v62 = v85;
  v63 = &v13[*(v85 + 76)];
  *v63 = 0;
  v63[8] = 3;
  v13[*(v62 + 80)] = 2;
  v64 = &v13[*(v62 + 84)];
  v65 = v176;
  *(v64 + 2) = v175;
  *(v64 + 3) = v65;
  *(v64 + 4) = v177;
  v64[80] = v178;
  v66 = v174;
  *v64 = v173;
  *(v64 + 1) = v66;
  swift_storeEnumTagMultiPayload();
  sub_1AAE680CC(v195, &v100);
  sub_1AAE680CC(v195, &v100);
  sub_1AAE680CC(v197, &v100);
  sub_1AAEF2E48(v195, &v210);
  sub_1AAE680CC(v197, &v100);
  sub_1AAEF2E48(v197, &v212);
  sub_1AAEC4954(v194, &v100);
  v67 = *(&v101[0] + 1);
  if (*(&v101[0] + 1) == 2)
  {
    sub_1AAEC49D0(&v100, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, sub_1AAEC4A30);
    v99 = 0;
    v94 = 0;
    v95 = 0;
    v93 = 0;
    v92 = 0;
    v67 = 1;
  }

  else
  {
    v99 = v100;
    v94 = *&v101[0];
    v95 = *(&v100 + 1);
    v93 = *&v101[1];
    v92 = BYTE8(v101[1]);
    sub_1AAE682A0(v100, *(&v100 + 1), *&v101[0], *(&v101[0] + 1));
    sub_1AAEC49D0(&v100, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, type metadata accessor for ResolvedModifier, sub_1AAEC4B1C);
  }

  v68 = v202;
  if (v202 == 2)
  {
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v68 = 1;
  }

  else
  {
    v73 = v204;
    v72 = v203;
    v71 = v201;
    v70 = v200;
    v69 = v199;
    sub_1AAE682A0(v199, v200, v201, v202);
  }

  v151 = 0;
  v152 = 0;
  v153 = 1;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v100 = v210;
  v101[0] = v211[0];
  *(v101 + 9) = *(v211 + 9);
  v102 = v212;
  *v103 = v213[0];
  *&v103[9] = *(v213 + 9);
  v105 = 0;
  v106 = 0;
  v104 = 0;
  v107 = xmmword_1AAF92AC0;
  v108 = 0;
  v110 = 0;
  v111 = 0;
  v109 = 0;
  v112 = xmmword_1AAF92AC0;
  v113 = 0;
  v115 = 0;
  v116 = 0;
  v114 = 0;
  v117 = xmmword_1AAF92AC0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 1;
  v123 = 0;
  v124 = 0;
  v125 = v99;
  v126 = v95;
  v127 = v94;
  v128 = v67;
  v129 = v93;
  v130 = v92;
  v132 = 0;
  v131 = 0;
  v133 = 0;
  v134 = 1;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v140 = 1;
  v141 = 0;
  v142 = 0;
  v143 = v69;
  v144 = v70;
  v145 = v71;
  v146 = v68;
  v147 = v72;
  v148 = v73;
  v150 = 0;
  v149 = 0;
  v171 = 0;
  v172 = 0;
  v74 = v97;
  sub_1AAEC3374(v13, v97, type metadata accessor for CollectedChartContent);
  v75 = v98;
  sub_1AADFA56C(&v100, (v98 + 1));
  sub_1AAE0FAB0();
  v76 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1AAF92AB0;
  sub_1AAE0FB08(v74, v77 + v76);
  sub_1AAE68190(v195);
  sub_1AAE68190(v197);
  sub_1AAEC49D0(&v199, &qword_1EB426B00, &qword_1EB426B08, &type metadata for ResolvedLineStyle, sub_1AAEC4A30);
  sub_1AAD58120(&v100);
  sub_1AAE68240(v13, type metadata accessor for CollectedChartContent);
  result = sub_1AAEC49D0(v194, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle, sub_1AAEC4A30);
  *v75 = v77;
  return result;
}

uint64_t sub_1AAEC4954(uint64_t a1, uint64_t a2)
{
  sub_1AAEC4A30(0, &qword_1ED9AE8B8, &qword_1ED9AE8C0, &type metadata for ResolvedForegroundStyle);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAEC49D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AAEC4A30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AAEC4B1C(255, a3, a4, type metadata accessor for ResolvedModifier);
    v5 = sub_1AAF8FE74();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAEC4A9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAEC4B1C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AAEC4B1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *initializeBufferWithCopyOfBuffer for MakeAxis(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MakeAxis(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 13))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MakeAxis(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 2;
    }
  }

  return result;
}

__n128 sub_1AAEC4C1C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AAEC4C30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
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

uint64_t sub_1AAEC4C78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAEC4CDC()
{
  v1 = v0;
  v28 = *v0;
  if (*(v0 + 56))
  {
    if (*(v0 + 56) != 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    sub_1AAEC8CE4(v0, v36);
    return v28;
  }

  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v1 + 48);
  v26 = *(v1 + 40);
  v27 = v3;
  v8 = *(v1 + 16);
  v30 = *v1;
  v31 = v8;
  *v32 = *(v1 + 32);
  *&v32[9] = *(v1 + 41);
  sub_1AAEC8CE4(v1, v36);
  sub_1AAEC8CE4(v1, v36);

  v33[0] = v30;
  v33[1] = v31;
  v33[2] = *v32;
  v33[3] = *&v32[16];
  v34 = 0;
  v35 = v4;
  v24 = *(&v30 + 1);
  v25 = v30;
  v22 = *(&v31 + 1);
  v23 = v31;
  v20 = *&v32[8];
  v21 = *v32;
  v19 = *&v32[16];
  v18 = v32[24];
  v36[0] = v30;
  v36[1] = v31;
  v36[2] = *v32;
  v36[3] = *&v32[16];
  v37 = 0;
  v38 = v4;
  sub_1AACD1BE8(v33, v29, sub_1AAEC8D74);
  result = sub_1AAEC8978(v36, sub_1AAEC8D74);
  if (!v4)
  {
    v2 = MEMORY[0x1E69E7CC0];
LABEL_19:
    sub_1AAEC8EE8(v25, v24, v23, v22, v21, v20, v19, v18);
    return v2;
  }

  v10 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    sub_1AAEC8CE4(v1, v29);

    v6(v29, v10);
    v6(&v30, v10 + 1);

    if (v4 < 0)
    {
      goto LABEL_22;
    }

    v12 = *&v29[0];
    v13 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AAD67B50(0, *(v2 + 2) + 1, 1, v2);
    }

    v15 = *(v2 + 2);
    v14 = *(v2 + 3);
    if (v15 >= v14 >> 1)
    {
      v2 = sub_1AAD67B50((v14 > 1), v15 + 1, 1, v2);
    }

    *(v2 + 2) = v15 + 1;
    *&v2[8 * v15 + 32] = v12;
    sub_1AAEC8E88(v28, v27, v4, v6, v5, v26, v7, 0);

    if (v4 - 1 == v10)
    {
      v17 = *(v2 + 2);
      v16 = *(v2 + 3);
      if (v17 >= v16 >> 1)
      {
        result = sub_1AAD67B50((v16 > 1), v17 + 1, 1, v2);
        v2 = result;
      }

      *(v2 + 2) = v17 + 1;
      *&v2[8 * v17 + 32] = v13;
    }

    ++v10;
    if (v11 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1AAEC4FD4(uint64_t a1, char a2, double a3, double a4)
{
  result = type metadata accessor for AxisMarkValues.Storage(0);
  v10 = 0;
  if (*(v4 + *(result + 20)) == 2)
  {
    v11 = a2;
  }

  else
  {
    v11 = *(v4 + *(result + 20));
  }

  if (*(v4 + *(result + 24)) == 2)
  {
    v12 = a2;
  }

  else
  {
    v12 = *(v4 + *(result + 24));
  }

  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 == v10)
    {
      return v14;
    }

    if (v10 >= v13)
    {
      break;
    }

    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_20;
    }

    v16 = *(a1 + 32 + 8 * v10++);
    if (v11 & 1 | (v16 >= a3) && v12 & 1 | (v16 <= a4))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AACEF664(0, *(v14 + 16) + 1, 1);
      }

      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1AACEF664((v17 > 1), v18 + 1, 1);
      }

      *(v14 + 16) = v18 + 1;
      *(v14 + 8 * v18 + 32) = v16;
      v10 = v15;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1AAEC512C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  if (a2 <= 0.0)
  {
    __break(1u);
  }

  else
  {
    v6 = floor(a3 / a2);
    v7 = v6 * a2;
    sub_1AAEC8604(&v11, ceil((a4 - v6 * a2) / a2));
    if ((v12 & 1) == 0)
    {
      v8 = v11;
      v9 = swift_allocObject();
      *(v9 + 16) = a2;
      *(v9 + 24) = v7;
      result = swift_allocObject();
      *(result + 16) = v7;
      *(result + 24) = a2;
      *a1 = a2;
      *(a1 + 8) = v7;
      *(a1 + 16) = v8;
      *(a1 + 24) = sub_1AAEC8F48;
      *(a1 + 32) = v9;
      *(a1 + 40) = sub_1AAEC8F60;
      *(a1 + 48) = result;
      *(a1 + 56) = 0;
      return result;
    }
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000001ELL, 0x80000001AAFCE890);
  MEMORY[0x1AC5982F0](7630409, 0xE300000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCE8B0);
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAEC52CC(double a1, double a2, double a3)
{
  sub_1AAEC8604(&v4, floor((a1 - a2) / a3));
  if ((v5 & 1) == 0)
  {
    return v4;
  }

  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000001ELL, 0x80000001AAFCE890);
  MEMORY[0x1AC5982F0](7630409, 0xE300000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCE8B0);
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAEC53D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  if (!*(v2 + 56))
  {
    v7 = *(v2 + 24);
    sub_1AAEC8CE4(v2, v12);
    v7(v12, v3);
    result = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      v7(&v11, result);
      v9 = v11;
      v8 = v12[0];
      v10 = sub_1AADE683C();

      if (!__OFSUB__(v10, 1))
      {
        v6 = v10 - 1 == v3;
        *a2 = v8;
        *(a2 + 8) = v9;
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(v2 + 56) == 1)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      v5 = *(*v2 + 16);
      if ((v5 - 1) > result)
      {
        if (v5 > result)
        {
          v6 = v5 - 2 == result;
          *a2 = *(*v2 + 8 * result + 32);
LABEL_10:
          *(a2 + 16) = v6;
          return result;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1AAEC5500(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AADB8144(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1AAEC55B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = *&v1[v3 + 32];
    v10 = *&v1[v3 + 40];
    v13 = *&v1[i - 8];
    v12 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1AADB825C(v1);
    }

    v14 = &v1[v3];
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

char *sub_1AAEC56D0()
{
  v1 = type metadata accessor for AxisMarksResult();
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v0 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(v2 + 36);
  v8 = *v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v9 = *(v3 + 72);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1AACD1BE8(v8, v5, type metadata accessor for AxisMarksResult);
    v12 = *&v5[v7];

    result = sub_1AAEC8978(v5, type metadata accessor for AxisMarksResult);
    v13 = *(v12 + 16);
    v14 = *(v10 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= *(v10 + 3) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_1AAD68E28(result, v16, 1, v10);
      v10 = result;
      if (*(v12 + 16))
      {
LABEL_14:
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v13)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v17 = *(v10 + 2);
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_23;
          }

          *(v10 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_21;
    }

LABEL_4:
    v8 += v9;
    if (!--v6)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1AAEC58D8()
{
  v3 = v0;
  v430 = *MEMORY[0x1E69E9840];
  v353 = sub_1AAF8CA64();
  v334 = *(v353 - 8);
  v4 = MEMORY[0x1EEE9AC00](v353);
  v348 = (&v300 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v349 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v369 = &v300 - v6;
  *&v332 = COERCE_DOUBLE(type metadata accessor for AxisMarkValues.Storage.Stride(0));
  MEMORY[0x1EEE9AC00](v332);
  v324 = &v300 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1AACAF24C(0, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v327 = &v300 - v10;
  v337 = type metadata accessor for AxisMarkValues.Storage(0);
  v374 = *(v337 - 8);
  MEMORY[0x1EEE9AC00](v337);
  v347 = (&v300 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v326 = type metadata accessor for AxisMarksResult();
  v329 = *(v326 - 8);
  v12 = MEMORY[0x1EEE9AC00](v326);
  v352 = &v300 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v333 = &v300 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v372 = &v300 - v16;
  v17 = type metadata accessor for AxisMarksConfiguration();
  v18 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v361 = (&v300 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AAEC8598();
  v338 = v20;
  v371 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v322 = (&v300 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AACAF24C(0, &qword_1ED9AD890, sub_1AAEC8598, v8);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v340 = &v300 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v328 = (&v300 - v25);
  v344 = sub_1AAF8CBA4();
  v342 = *(v344 - 8);
  v26 = MEMORY[0x1EEE9AC00](v344);
  v321 = &v300 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v300 - v28;
  v30 = sub_1AAF8CAA4();
  v335 = *(v30 - 8);
  v336 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v300 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v33 = COERCE_DOUBLE(sub_1AAF8E134());
  v34 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v320 = &v300 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v300 - v37;
  v319 = *(v3 + 4);
  Value = AGGraphGetValue();
  v41 = v40;
  v341 = v34;
  v317 = *(v34 + 16);
  v318 = v34 + 16;
  v317(v38, Value, v33);
  v345 = v32;
  sub_1AAF8E104();
  v343 = v29;
  v351 = v38;
  sub_1AAF8E114();
  v42 = AGGraphGetValue();
  v44 = v43;
  LODWORD(v373) = *v42;
  v45 = *(v42 + 1);
  v375 = *(v42 + 2);
  v339 = v17;
  v323 = v18;
  if (v45)
  {
    v46 = v45;
  }

  else
  {
    sub_1AACAF24C(0, &qword_1ED9B1DF0, type metadata accessor for AxisMarksConfiguration, MEMORY[0x1E69E6F90]);
    v47 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1AAF92AB0;
    v48 = (v46 + v47);
    (*(v374 + 56))(&v48[v17[6]], 1, 1, v337);
    v49 = &v48[v17[7]];
    v49[40] = 2;
    *(v49 + 4) = 0;
    *v49 = 0u;
    *(v49 + 1) = 0u;
    v50 = &v48[v17[8]];
    *(v50 + 4) = 0;
    *v50 = 0u;
    *(v50 + 1) = 0u;
    *v48 = 1027;
  }

  swift_bridgeObjectRetain_n();

  v51 = AGGraphGetValue();
  v53 = v52;
  sub_1AADFA56C(v51, &v408);
  if ((v41 & 1) == 0 && (v44 & 1) == 0 && (v53 & 1) == 0)
  {

    sub_1AAD58120(&v408);
    (*(v342 + 8))(v343, v344);
    (*(v335 + 8))(v345, v336);
    return (*(v341 + 8))(v351, v33);
  }

  v54 = *(v3 + 12);
  v362 = v54;
  v316 = *&v33;
  if (v54)
  {
    v55 = v372;
    if (v54 == 1)
    {
      v56 = v418;
      v57 = &v417;
      v58 = &v416;
      v59 = &v415;
      v60 = v413[1];
      v61 = &v414;
    }

    else
    {
      v56 = &v423;
      v57 = &v422;
      v58 = &v421;
      v59 = &v420;
      v60 = v418[1];
      v61 = &v419;
    }
  }

  else
  {
    v56 = v413;
    v57 = &v412;
    v58 = &v411;
    v59 = &v410;
    v60 = v408;
    v61 = &v409;
    v55 = v372;
  }

  v62 = *v61;
  v63 = *v59;
  v64 = *v58;
  v65 = *v56;
  v66 = *v61;
  v67 = *v59;
  v68 = *v58;
  v370 = *v57;
  sub_1AAE682A0(v60, *&v66, v67, v68);
  sub_1AACBE71C();
  sub_1AAF8E144();
  v69 = *v385;
  if (*(*v385 + 16) && (v70 = sub_1AACB6398(v362), (v71 & 1) != 0))
  {
    v72 = *(v69 + 56) + 72 * v70;
    v384[0] = *v72;
    v74 = *(v72 + 32);
    v73 = *(v72 + 48);
    v75 = *(v72 + 64);
    v384[1] = *(v72 + 16);
    v384[2] = v74;
    LOBYTE(v384[4]) = v75;
    v384[3] = v73;
    *&v385[16] = *(v72 + 16);
    *&v385[32] = *(v72 + 32);
    *&v385[48] = *(v72 + 48);
    v385[64] = *(v72 + 64);
    *v385 = *v72;
    sub_1AACB1E30(v384, v383);

    v405 = *&v385[32];
    v406 = *&v385[48];
    v407 = v385[64];
    v404 = *&v385[16];
    v403 = *v385;
  }

  else
  {

    v403 = xmmword_1AAF94BF0;
    v404 = 0u;
    v405 = 0u;
    v406 = 0u;
    v407 = 0;
  }

  v331 = v46;
  LODWORD(v77) = 0;
  v364 = v65;
  if (v65)
  {
    v78 = 1;
  }

  else
  {
    v78 = v64 == 1;
  }

  v79 = !v78;
  if (BYTE8(v403) == 254)
  {
    goto LABEL_42;
  }

  v80 = HIBYTE(WORD4(v405));
  if (v80 > 0xFE)
  {
    goto LABEL_42;
  }

  if (HIBYTE(WORD4(v405)) <= 1u)
  {
    v81 = v364;
    v82 = v404;
    sub_1AACAF2E4(v404, *(&v404 + 1), v405, BYTE8(v405), v80 != 0);
    v307 = 0;
    v93 = v362;
    v94 = v334;
LABEL_29:
    v311 = v82;
    if (v64 == 1)
    {

      v95 = v369;
    }

    else
    {

      v95 = v369;
      if (v80 != v81)
      {
        if (qword_1ED9B59F0 != -1)
        {
          swift_once();
        }

        v96 = qword_1ED9C36C8;
        sub_1AAF8FD04();
        sub_1AACAF24C(0, &qword_1ED9AEE70, sub_1AAD6E5E0, MEMORY[0x1E69E6F90]);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_1AAF92AB0;
        *v385 = 0;
        *&v385[8] = 0xE000000000000000;
        sub_1AAF900D4();
        MEMORY[0x1AC5982F0](0xD000000000000048, 0x80000001AAFCFCB0);
        LOBYTE(v384[0]) = v80;
        sub_1AAF90284();
        MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCFD00);
        LOBYTE(v384[0]) = v362;
        v93 = v362;
        sub_1AAF90284();
        v98 = *v385;
        v99 = *&v385[8];
        *(v97 + 56) = MEMORY[0x1E69E6158];
        *(v97 + 64) = sub_1AAD6E644();
        *(v97 + 32) = v98;
        *(v97 + 40) = v99;
        sub_1AAF8D7B4();

        v94 = v334;
        v95 = v369;
        v55 = v372;
        v82 = v311;
      }
    }

    v308 = 0;
    v100 = BYTE8(v403);
    v101 = v404;
    v102 = v405;
    v103 = WORD4(v405);
    v104 = v406;
    v364 = v80;
    v325 = v82;
    v105 = v407;
    goto LABEL_67;
  }

  if (v80 == 2)
  {
    *&v368 = &v300;
    MEMORY[0x1EEE9AC00](v76);
    *(&v300 - 2) = v351;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;
    sub_1AACAF2E4(v83, v85, v87, v89, 2u);
    v91 = sub_1AADE5AC4(sub_1AAEC8CC4, (&v300 - 4), v84);
    v307 = 0;
    v92 = v88;
    v55 = v372;
    sub_1AACAF33C(v84, v86, v92, v90);
    v82 = v91;
    v93 = v362;
    v94 = v334;
    v81 = v364;
    goto LABEL_29;
  }

  v106 = v404;
  v77 = (v404 >> 8) & 1;
  if (BYTE8(v405) == 0xFF)
  {
    v107 = (v404 >> 8) & 1;
    sub_1AACAF33C(v404, *(&v404 + 1), v405, SWORD4(v405));
    goto LABEL_40;
  }

  if (qword_1ED9B59F0 != -1)
  {
    v107 = (v404 >> 8) & 1;
    swift_once();
LABEL_40:
    LODWORD(v77) = v107;
  }

  v79 = (v106 == 2) | v106;
LABEL_42:
  if (v64 == 1)
  {

    if (qword_1ED9B59F0 != -1)
    {
      goto LABEL_287;
    }

    goto LABEL_47;
  }

  if ((v63 & 1) != 0 || (v1 = *&v60, v2 = v62, *&v60 > v62))
  {
    v108 = v77;
    v1 = 0.0;
    v2 = 0.0;
  }

  else
  {
    v108 = v77;
  }

  sub_1AAEC9110(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
  v114 = swift_allocObject();
  v115 = v114;
  v368 = xmmword_1AAF9E2B0;
  *(v114 + 16) = xmmword_1AAF9E2B0;
  *(v114 + 32) = v1;
  *(v114 + 40) = v2;
  v93 = v362;
  v94 = v334;
  if (v79)
  {
    *v385 = v114;
    sub_1AADC8AB4(&unk_1F1FCF238);
    v115 = *v385;
  }

  v116 = sub_1AACEC978(v115);
  if (v118)
  {
    v325 = &unk_1F1FCF260;
  }

  else
  {
    v119 = v116;
    v120 = v117;
    v121 = swift_allocObject();
    v121[1] = v368;
    *(v121 + 4) = v119;
    *(v121 + 5) = v120;
    v325 = v121;
  }

  v55 = v372;
  v122 = v364;

  if (v108)
  {
    v325 = sub_1AAEC5500(v325);
  }

  if (v122 > 1)
  {
    if (v122 == 2)
    {

      v123 = MEMORY[0x1E69E7CC0];
      if (v64)
      {
        v123 = v64;
      }
    }

    else
    {

      v123 = MEMORY[0x1E69E7CC0];
    }

    v325 = v123;
  }

  else
  {
  }

  v100 = BYTE8(v403);
  v95 = v369;
  if (BYTE8(v403) == 254)
  {
    v311 = 0;
    v307 = 0;
    v308 = 1;
    v125 = 0;
    *&v124 = 0;
    v314 = v124;
    goto LABEL_76;
  }

  v311 = 0;
  v307 = 0;
  v105 = v407;
  v104 = v406;
  v103 = WORD4(v405);
  v102 = v405;
  v308 = 1;
  v101 = v404;
LABEL_67:
  *v385 = v403;
  v385[8] = v100;
  *&v385[16] = v101;
  *&v385[32] = v102;
  *&v385[40] = v103;
  *&v385[48] = v104;
  v385[64] = v105;
  v126 = v104;
  v314 = v104;
  v127 = *(&v104 + 1);
  sub_1AACAF328(v104, *(&v104 + 1), v105);
  sub_1AAEC8AD4(&v403, v384, &unk_1ED9AEC30, &type metadata for ChartInternal.ScaleDef, MEMORY[0x1E69E6720], sub_1AAEC9110);
  sub_1AACB24B4(v385);
  if (v105 >= 0xFC)
  {
LABEL_74:
    v125 = 0;
    *&v128 = 0;
    v314 = v128;
    goto LABEL_75;
  }

  if (v105 >> 5 == 1)
  {
    sub_1AACC0710(v126, v127, v105);
    goto LABEL_74;
  }

  if (v105 >> 5)
  {
    sub_1AACC0710(v126, v127, v105);
    if (qword_1ED9B59F0 != -1)
    {
      swift_once();
    }

    goto LABEL_74;
  }

  v125 = v127;
  sub_1AACC0710(v126, v127, v105);
LABEL_75:
  v122 = v364;
LABEL_76:
  v129 = MEMORY[0x1E69E7CC0];
  v376 = MEMORY[0x1E69E7CC0];
  sub_1AAEC9110(0, &qword_1ED9AD750, &type metadata for ChartContentID.Part, MEMORY[0x1E69E6F90]);
  v357 = v130;
  v131 = swift_allocObject();
  v363 = xmmword_1AAF92AB0;
  *(v131 + 16) = xmmword_1AAF92AB0;
  *v385 = v93 + 0x736978612D78;
  *&v385[8] = 0xE600000000000000;
  sub_1AAF90024();
  *(v131 + 72) = 1;
  *v385 = v129;
  sub_1AADC85B8(v131);
  v132 = *v385;
  v364 = v122;
  if (v122 == 3)
  {

    if (v311)
    {
      v133 = MEMORY[0x1E69E7CC0];
LABEL_79:

LABEL_237:
      v273 = *(v133 + 2);
      v330 = v133;
      v274 = 0;
      v275 = 0;
      v276 = 0;
      if (v273)
      {
        v277 = &v133[(*(v329 + 80) + 32) & ~*(v329 + 80)];
        v278 = *(v329 + 72);
        v279 = v352;
        do
        {
          sub_1AACD1BE8(v277, v279, type metadata accessor for AxisMarksResult);
          v280 = *v279;
          sub_1AAEC8978(v279, type metadata accessor for AxisMarksResult);
          if (v280 == 2)
          {
            v281 = 1;
          }

          else
          {
            v281 = v274;
          }

          if (v280)
          {
            v282 = 1;
          }

          else
          {
            v282 = v275;
          }

          if (v280)
          {
            v283 = v276;
          }

          else
          {
            v283 = 1;
          }

          if (v280 <= 1)
          {
            v275 = v282;
          }

          else
          {
            v274 = v281;
          }

          if (v280 <= 1)
          {
            v276 = v283;
          }

          v277 += v278;
          --v273;
        }

        while (v273);
      }

      *v385 = v330;
      v385[8] = v362;
      v385[9] = v364;
      *&v385[16] = v325;
      *&v385[24] = v314;
      *&v385[32] = v125;
      v385[40] = v276 & 1;
      v385[41] = v275 & 1;
      v385[42] = v274 & 1;
      v384[0] = *v385;
      v384[1] = *&v385[16];
      goto LABEL_255;
    }

    v133 = MEMORY[0x1E69E7CC0];

    v272 = &unk_1F1FCF290;
LABEL_236:
    v325 = v272;
    goto LABEL_237;
  }

  if (v373 == 3)
  {

    v134 = *&v332;
    v135 = v374;
  }

  else
  {
    v136 = sub_1AAF8D874();

    v134 = *&v332;
    v135 = v374;
    if (v136)
    {

      v133 = MEMORY[0x1E69E7CC0];
      if (v311)
      {
        goto LABEL_79;
      }

LABEL_263:
      if (v122 > 1)
      {

        v272 = v376;
        goto LABEL_236;
      }

      v285 = v376;
      v286 = COERCE_DOUBLE(sub_1AADE69D4(v376));
      v2 = 0.0;
      if (v287)
      {
        v1 = 0.0;
      }

      else
      {
        v1 = v286;
      }

      v288 = COERCE_DOUBLE(sub_1AADC5CE8(v285));
      v290 = v289;

      if ((v290 & 1) == 0)
      {
        v2 = v288;
      }

      v291 = v325;
      *&v292 = COERCE_DOUBLE(sub_1AADE69D4(v325));
      if (v293)
      {
      }

      else
      {
        v196 = *&v292;
        v134 = COERCE_DOUBLE(sub_1AADC5CE8(v291));
        v295 = v294;

        if ((v295 & 1) == 0)
        {
LABEL_275:
          sub_1AAEC9110(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
          v297 = swift_allocObject();
          *(v297 + 1) = xmmword_1AAF9E2B0;
          if (v1 <= v196)
          {
            v298 = v1;
          }

          else
          {
            v298 = v196;
          }

          if (v2 > v134)
          {
            v299 = v2;
          }

          else
          {
            v299 = v134;
          }

          v297[4] = v298;
          v297[5] = v299;
          v325 = v297;
          goto LABEL_237;
        }
      }

      sub_1AAEC9110(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
      v296 = swift_allocObject();
      *(v296 + 1) = xmmword_1AAF9E2B0;
      v296[4] = v1;
      v296[5] = v2;
      v325 = v296;
      goto LABEL_237;
    }
  }

  v354 = v132;
  v137 = 0;
  v313 = (v371 + 56);
  v312 = (v371 + 48);
  v309 = (v135 + 48);
  v310 = (v135 + 56);
  v305 = (v342 + 8);
  v306 = (v341 + 8);
  v304 = 0x80000001AAFCE640;
  v350 = v94 + 32;
  v346 = (v94 + 8);
  v133 = MEMORY[0x1E69E7CC0];
  v138 = v338;
  while (1)
  {
    v139 = *(v331 + 16);
    v140 = v340;
    if (v137 == v139)
    {
      v315 = v137;
      v141 = 1;
    }

    else
    {
      if (v137 >= v139)
      {
        goto LABEL_286;
      }

      v142 = v137 + 1;
      v143 = v331 + ((*(v323 + 80) + 32) & ~*(v323 + 80)) + *(v323 + 72) * v137;
      v144 = *(v138 + 48);
      v145 = v322;
      *v322 = v137;
      sub_1AACD1BE8(v143, v145 + v144, type metadata accessor for AxisMarksConfiguration);
      sub_1AAEC8A6C(v145, v340, sub_1AAEC8598);
      v141 = 0;
      v315 = v142;
      v140 = v340;
    }

    (*v313)(v140, v141, 1, v138);
    v146 = v140;
    v147 = v328;
    sub_1AAEC89D8(v146, v328);
    if ((*v312)(v147, 1, v138) == 1)
    {
LABEL_259:

      if (v311)
      {
        goto LABEL_79;
      }

LABEL_262:
      v122 = v364;
      goto LABEL_263;
    }

    v330 = v133;
    v359 = *v147;
    v148 = v361;
    sub_1AAEC8A6C(v147 + *(v138 + 48), v361, type metadata accessor for AxisMarksConfiguration);
    *v55 = 1027;
    v149 = v326;
    v150 = v55 + *(v326 + 24);
    *v150 = 0;
    v150[8] = 1;
    *(v150 + 2) = 0;
    v150[24] = 1;
    swift_storeEnumTagMultiPayload();
    v151 = v55;
    v152 = v337;
    v153 = *(v337 + 24);
    v150[*(v337 + 20)] = 2;
    v150[v153] = 2;
    (*v310)(v150, 0, 1, v152);
    v154 = MEMORY[0x1E69E7CC0];
    *&v368 = v149[7];
    *(v151 + v368) = MEMORY[0x1E69E7CC0];
    v367 = v149[8];
    *(v151 + v367) = v154;
    v366 = v149[9];
    *(v151 + v366) = v154;
    v155 = v149[10];
    v156 = sub_1AADF9228(v154);
    v374 = v155;
    *(v151 + v155) = v156;
    *v151 = *v148;
    v157 = v327;
    sub_1AAEC8AD4(v148 + v339[6], v327, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720], sub_1AACAF24C);
    v158 = *v309;
    if ((*v309)(v157, 1, v152) == 1)
    {
      v159 = v347;
      *v347 = 0;
      *(v159 + 8) = 1;
      v159[2] = 0;
      *(v159 + 24) = 1;
      swift_storeEnumTagMultiPayload();
      v160 = *(v152 + 24);
      *(v159 + *(v152 + 20)) = 2;
      *(v159 + v160) = 2;
      if (v158(v157, 1, v152) != 1)
      {
        sub_1AAEC8B48(v157, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720], sub_1AACAF24C);
      }
    }

    else
    {
      sub_1AAEC8A6C(v157, v347, type metadata accessor for AxisMarkValues.Storage);
    }

    v138 = v338;
    v161 = v364;
    v133 = v330;
    if (!v364)
    {
      sub_1AACD1BE8(v347, v324, type metadata accessor for AxisMarkValues.Storage.Stride);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        v168 = v334;
        if (EnumCaseMultiPayload == 2)
        {
          v1 = *v324;
          v183 = COERCE_DOUBLE(sub_1AACEC978(v325));
          if (v185)
          {
            v2 = 1.0;
          }

          else
          {
            v2 = v184;
          }

          if (v185)
          {
            v186 = 0.0;
          }

          else
          {
            v186 = v183;
          }

          sub_1AAEC512C(v385, v1, v186, v2);
          v426[0] = *v385;
          v426[1] = *&v385[16];
          v427[0] = *&v385[32];
          *(v427 + 9) = *&v385[41];
          v134 = COERCE_DOUBLE(sub_1AAEC4CDC());
          v165 = sub_1AAEC4FD4(*&v134, v308, v186, v2);

          v181 = v426;
          goto LABEL_131;
        }

        if (!*(v324 + 8))
        {
          v165 = *v324;
          v182 = v362;
          if (!v362)
          {
            goto LABEL_144;
          }

          goto LABEL_120;
        }

        if (qword_1EB422C58 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v192 = sub_1AAD7B1A0(v384, 5);
        swift_endAccess();
        if (v192)
        {
          sub_1AAEC9110(0, &qword_1EB424C30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
          v193 = swift_allocObject();
          *(v193 + 16) = v363;
          *(v193 + 56) = MEMORY[0x1E69E6158];
          *(v193 + 32) = 0xD000000000000038;
          *(v193 + 40) = v304;
          sub_1AAF90674();
        }
      }

      else
      {
        v168 = v334;
        if (EnumCaseMultiPayload)
        {
          if (qword_1EB422C58 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v187 = sub_1AAD7B1A0(v384, 5);
          swift_endAccess();
          if (v187)
          {
            sub_1AAEC9110(0, &qword_1EB424C30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
            v188 = swift_allocObject();
            *(v188 + 16) = v363;
            *(v188 + 56) = MEMORY[0x1E69E6158];
            *(v188 + 32) = 0xD000000000000038;
            *(v188 + 40) = v304;
            sub_1AAF90674();
          }

          sub_1AACAF0D8();
          v190 = v324;
          sub_1AAEC8B48(v324 + *(v189 + 64), &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF24C);
          v191 = sub_1AAF8CB94();
          (*(*(v191 - 8) + 8))(v190, v191);
        }

        else
        {
          if (*(v324 + 8))
          {
            v169 = 4;
          }

          else
          {
            v169 = *v324;
          }

          if (v169 > 0)
          {
            v170 = *(v324 + 24);
            v171 = *(v324 + 16);
            v172 = COERCE_DOUBLE(sub_1AACEC978(v325));
            if (v174)
            {
              v1 = 1.0;
            }

            else
            {
              v1 = v173;
            }

            if (v174)
            {
              v2 = 0.0;
            }

            else
            {
              v2 = v172;
            }

            if (v170)
            {
              v175 = 0.0;
            }

            else
            {
              v175 = v171;
            }

            v176 = *(v347 + *(v337 + 20));
            v177 = v308;
            if (v176 == 2)
            {
              LOBYTE(v176) = v308;
            }

            v178 = *(v347 + *(v337 + 24));
            if (v178 == 2)
            {
              LOBYTE(v178) = v308;
            }

            v179 = sub_1AADEAF9C(v169, v176 & 1, v178 & 1, v2, v1, v175);
            sub_1AAEC512C(v385, v179, v2, v1);
            v428[0] = *v385;
            v428[1] = *&v385[16];
            v429[0] = *&v385[32];
            *(v429 + 9) = *&v385[41];
            v134 = COERCE_DOUBLE(sub_1AAEC4CDC());
            v180 = v177;
            v138 = v338;
            v161 = v364;
            v165 = sub_1AAEC4FD4(*&v134, v180, v2, v1);

            v181 = v428;
LABEL_131:
            sub_1AAEC8C3C(v181);
            v182 = v362;
            if (!v362)
            {
              goto LABEL_144;
            }

            goto LABEL_120;
          }
        }
      }

      v165 = MEMORY[0x1E69E7CC0];
      v182 = v362;
      if (!v362)
      {
        goto LABEL_144;
      }

      goto LABEL_120;
    }

    if (v364 == 1)
    {
      v134 = v316;
      v162 = AGGraphGetValue();
      v163 = v320;
      v317(v320, v162, *&v134);
      v164 = v321;
      sub_1AAF8E114();
      (*v306)(v163, COERCE_DOUBLE(*&v134));
      v165 = sub_1AACE59E8(v325, 0, 1, v164);
      v166 = v164;
      v161 = v364;
      (*v305)(v166, v344);
    }

    else
    {
      v165 = v325;
    }

    v168 = v334;
    v182 = v362;
    if (!v362)
    {
LABEL_144:
      v194 = sub_1AAF904F4();

      if ((v194 & 1) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_145;
    }

LABEL_120:
    if (v182 != 1)
    {
      goto LABEL_144;
    }

LABEL_145:
    v165 = sub_1AAEC5500(v165);
LABEL_146:
    sub_1AAEC8978(v347, type metadata accessor for AxisMarkValues.Storage);

    v196 = COERCE_DOUBLE(&v376);
    v360 = v165;
    sub_1AADC8AB4(v195);
    if (v161)
    {
      if (v161 == 1)
      {
        v197 = v360;
        v134 = v360[2];
        if (v134 == 0.0)
        {
          v196 = MEMORY[0x1E69E7CC0];
          v55 = v372;
        }

        else
        {
          *v385 = MEMORY[0x1E69E7CC0];
          sub_1AACEA040(0, *&v134, 0);
          v196 = *v385;
          v198 = v197 + 32;
          do
          {
            sub_1AAF8C844();
            *v385 = v196;
            v200 = *(*&v196 + 16);
            v199 = *(*&v196 + 24);
            if (v200 >= v199 >> 1)
            {
              sub_1AACEA040(v199 > 1, v200 + 1, 1);
              v196 = *v385;
            }

            *(*&v196 + 16) = v200 + 1;
            (*(v168 + 32))(*&v196 + ((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v200, v95, v353);
            v198 += 8;
            --*&v134;
          }

          while (v134 != 0.0);
          v55 = v372;
          v161 = v364;
          v138 = v338;
        }

        sub_1AACEA258(*&v196, v345, v343, v385);
      }

      else
      {
        v55 = v372;
        if (qword_1ED9B0278 != -1)
        {
          swift_once();
        }

        sub_1AACE0A98(&unk_1ED9C33B8, v385);
      }
    }

    else
    {
      sub_1AAF0D208(v360, v345, v385);
      v55 = v372;
    }

    v401 = *v385;
    v402[0] = *&v385[16];
    *(v402 + 9) = *&v385[25];
    v358 = *(v360 + 2);
    if (v358)
    {
      break;
    }

LABEL_228:
    sub_1AACD1BE8(v55, v333, type metadata accessor for AxisMarksResult);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v133 = sub_1AAD6AB0C(0, *(v133 + 2) + 1, 1, v133);
    }

    v271 = *(v133 + 2);
    v270 = *(v133 + 3);
    if (v271 >= v270 >> 1)
    {
      v133 = sub_1AAD6AB0C(v270 > 1, v271 + 1, 1, v133);
    }

    sub_1AAD57C94(&v401);
    sub_1AAEC8978(v361, type metadata accessor for AxisMarksConfiguration);
    *(v133 + 2) = v271 + 1;
    sub_1AAEC8A6C(v333, &v133[((*(v329 + 80) + 32) & ~*(v329 + 80)) + *(v329 + 72) * v271], type metadata accessor for AxisMarksResult);
    sub_1AAEC8978(v55, type metadata accessor for AxisMarksResult);
    v134 = *&v332;
    v137 = v315;
  }

  v201 = 0.0;
  v355 = v339[7];
  v356 = (v360 + 4);
  v202 = MEMORY[0x1E69E7CC0];
  v373 = MEMORY[0x1E69E7CC0];
  v133 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v203 = v360;
    v204 = *(v360 + 2);
    if (*&v201 >= v204)
    {
      __break(1u);
      goto LABEL_275;
    }

    v1 = *&v356[8 * *&v201];
    v365 = v201;
    if (v161)
    {
      if (v161 == 1)
      {
        v205 = v348;
        sub_1AAF8C844();
        if (v349 != 8)
        {
          goto LABEL_283;
        }

        v204 = *(v203 + 16);
        v206 = *v205;
        (*v346)(v205, v353);
        v207 = 0;
      }

      else
      {
        sub_1AAD58818();
        sub_1AAF8E144();
        v208 = *v385;
        swift_beginAccess();
        v209 = *(v208 + 24);
        if (!*(v209 + 16))
        {
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
          goto LABEL_285;
        }

        v210 = sub_1AADB0548(v1);
        if ((v211 & 1) == 0)
        {
          goto LABEL_284;
        }

        v212 = (*(v209 + 56) + 16 * v210);
        v206 = *v212;
        v207 = *(v212 + 1);

        v204 = *(v203 + 16);
        LOBYTE(v161) = v364;
      }
    }

    else
    {
      v207 = 0;
      v206 = v1;
    }

    sub_1AACB4B38(v361 + v355, v385);
    if (v385[40])
    {
      if (v385[40] == 1)
      {
        *v384 = v206;
        *(&v384[0] + 1) = v207;
        LOBYTE(v384[1]) = v161;
        *(&v384[1] + 1) = v365;
        *&v384[2] = v204;
        (*v385)(&v398, v384);
      }

      else
      {
        sub_1AADD7908();
        memset(v424, 0, sizeof(v424));
        v425 = 0;
        *(&v399 + 1) = v213;
        *&v400 = COERCE_DOUBLE(sub_1AADD79FC());
        *&v398 = swift_allocObject();
        sub_1AADCF710(v424, (v398 + 16));
      }
    }

    else
    {
      v398 = *v385;
      v399 = *&v385[16];
      v400 = *&v385[32];
    }

    v214 = swift_allocObject();
    *(v214 + 16) = v363;
    *(v214 + 32) = v359;
    *(v214 + 72) = 0;
    *v385 = v354;

    sub_1AADC85B8(v214);
    v215 = *v385;
    v216 = swift_allocObject();
    *(v216 + 16) = v363;
    *v385 = v1;
    sub_1AAF90024();
    *(v216 + 72) = 1;
    *v385 = v215;
    sub_1AADC85B8(v216);
    v217 = *v385;
    sub_1AACE0A98(&v401, v391);
    v387[0] = v362;
    v388 = v217;
    v389 = 0u;
    v390 = 0u;
    *&v391[6] = v1;
    v161 = v364;
    v392 = v364;
    v393 = v206;
    v394 = v207;
    v395 = v364;
    v396 = v365;
    v397 = v204;
    v218 = *(&v399 + 1);
    v134 = *&v400;
    v219 = sub_1AACBB42C(&v398, *(&v399 + 1));
    sub_1AADD050C(v219, v387, v218, *&v134);
    v220 = *v385;
    v221 = *(*v385 + 16);
    if (v221)
    {
      break;
    }

LABEL_163:
    *&v196 = *&v365 + 1;
    sub_1AADD1484(v387);
    sub_1AACE1B40(&v398);
    v201 = v196;
    if (*&v196 == v358)
    {

      v55 = v372;
      v138 = v338;
      v133 = v330;
      goto LABEL_228;
    }
  }

  v222 = 0;
  v375 = *v385 + 32;
  v223 = v372;
  v371 = *v385;
  v370 = v221;
  while (1)
  {
    if (v222 >= *(v220 + 16))
    {
      __break(1u);
LABEL_258:
      __break(1u);
      goto LABEL_259;
    }

    sub_1AAEC8BA8(v375 + 272 * v222, v385);
    if ((v386 & 1) == 0)
    {
      v384[4] = *&v385[64];
      v384[5] = *&v385[80];
      v384[6] = *&v385[96];
      v384[7] = *&v385[112];
      v384[0] = *v385;
      v384[1] = *&v385[16];
      v384[2] = *&v385[32];
      v384[3] = *&v385[48];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v202 = sub_1AAD687A0(0, *(v202 + 2) + 1, 1, v202);
      }

      v134 = *(v202 + 2);
      v245 = *(v202 + 3);
      if (*&v134 >= v245 >> 1)
      {
        v202 = sub_1AAD687A0((v245 > 1), *&v134 + 1, 1, v202);
      }

      *(v202 + 2) = *&v134 + 1;
      v246 = &v202[128 * *&v134];
      v247 = v384[0];
      v248 = v384[1];
      v249 = v384[3];
      *(v246 + 4) = v384[2];
      *(v246 + 5) = v249;
      *(v246 + 2) = v247;
      *(v246 + 3) = v248;
      v250 = v384[4];
      v251 = v384[5];
      v252 = v384[7];
      *(v246 + 8) = v384[6];
      *(v246 + 9) = v252;
      *(v246 + 6) = v250;
      *(v246 + 7) = v251;
      *&v223[v368] = v202;
      goto LABEL_182;
    }

    memcpy(v384, v385, 0x108uLL);
    sub_1AAD57CE8(v384, v383);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v133 = sub_1AAD68660(0, *(v133 + 2) + 1, 1, v133);
    }

    v224 = v373;
    v226 = *(v133 + 2);
    v225 = *(v133 + 3);
    if (v226 >= v225 >> 1)
    {
      v133 = sub_1AAD68660((v225 > 1), v226 + 1, 1, v133);
    }

    *(v133 + 2) = v226 + 1;
    memcpy(&v133[264 * v226 + 32], v383, 0x108uLL);
    *&v223[v367] = v133;
    v380 = v384[10];
    v381 = v384[11];
    v382 = v384[12];
    v378 = v384[8];
    v379 = v384[9];
    sub_1AAEC8C04(&v378, v377);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v224 = sub_1AAD68E28(0, *(v224 + 2) + 1, 1, v224);
    }

    v228 = *(v224 + 2);
    v227 = *(v224 + 3);
    if (v228 >= v227 >> 1)
    {
      v224 = sub_1AAD68E28((v227 > 1), v228 + 1, 1, v224);
    }

    *(v224 + 2) = v228 + 1;
    v229 = &v224[80 * v228];
    *(v229 + 2) = v378;
    v230 = v379;
    v231 = v380;
    v232 = v382;
    *(v229 + 5) = v381;
    *(v229 + 6) = v232;
    *(v229 + 3) = v230;
    *(v229 + 4) = v231;
    v373 = v224;
    *&v223[v366] = v224;
    v1 = *(v384 + 1);
    v134 = *v384;

    v233 = v374;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v235 = *&v223[v233];
    v377[0] = v235;
    v237 = sub_1AADB0548(v1);
    v238 = *(v235 + 16);
    v239 = (v236 & 1) == 0;
    v240 = v238 + v239;
    if (__OFADD__(v238, v239))
    {
      goto LABEL_258;
    }

    v241 = v236;
    if (*(v235 + 24) >= v240)
    {
      break;
    }

    sub_1AAD8EA58(v240, isUniquelyReferenced_nonNull_native);
    v242 = v377[0];
    v243 = sub_1AADB0548(v1);
    if ((v241 & 1) != (v244 & 1))
    {
      result = sub_1AAF905B4();
      __break(1u);
      return result;
    }

    v237 = v243;
    v95 = v369;
    if ((v241 & 1) == 0)
    {
LABEL_205:
      *(v242 + 8 * (v237 >> 6) + 64) |= 1 << v237;
      *(*(v242 + 48) + 8 * v237) = v1;
      *(*(v242 + 56) + 8 * v237) = v134;
      sub_1AAD57D44(v384);
      v253 = *(v242 + 16);
      v254 = __OFADD__(v253, 1);
      v255 = v253 + 1;
      if (v254)
      {
        __break(1u);
        goto LABEL_262;
      }

      *(v242 + 16) = v255;
      goto LABEL_181;
    }

LABEL_180:
    *(*(v242 + 56) + 8 * v237) = v134;

    sub_1AAD57D44(v384);
LABEL_181:
    v223 = v372;
    *&v372[v374] = v242;
    v220 = v371;
    v221 = v370;
LABEL_182:
    if (++v222 == v221)
    {

      v161 = v364;
      goto LABEL_163;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v242 = v235;
    v95 = v369;
    if ((v236 & 1) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_180;
  }

  sub_1AAEC9160(0, &qword_1ED9AD780, &type metadata for ChartContentID, MEMORY[0x1E69E63D0], MEMORY[0x1E69E6EC8]);
  v256 = sub_1AAF90384();
  v242 = v256;
  if (!*(v235 + 16))
  {
LABEL_223:

    v95 = v369;
    if ((v241 & 1) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_180;
  }

  v257 = (v256 + 64);
  v258 = (v235 + 64);
  v259 = ((1 << *(v242 + 32)) + 63) >> 6;
  v301 = v235 + 64;
  if (v242 != v235 || v257 >= &v258[8 * v259])
  {
    memmove(v257, v258, 8 * v259);
  }

  v260 = 0;
  *(v242 + 16) = *(v235 + 16);
  v261 = 1 << *(v235 + 32);
  if (v261 < 64)
  {
    v262 = ~(-1 << v261);
  }

  else
  {
    v262 = -1;
  }

  v263 = v262 & *(v235 + 64);
  v264 = (v261 + 63) >> 6;
  v302 = v264;
  if (v263)
  {
    do
    {
      v265 = __clz(__rbit64(v263));
      v303 = (v263 - 1) & v263;
LABEL_221:
      v268 = v265 | (v260 << 6);
      v269 = *(*(v235 + 56) + 8 * v268);
      *(*(v242 + 48) + 8 * v268) = *(*(v235 + 48) + 8 * v268);
      *(*(v242 + 56) + 8 * v268) = v269;

      v264 = v302;
      v263 = v303;
    }

    while (v303);
  }

  v266 = v260;
  while (1)
  {
    v260 = v266 + 1;
    if (__OFADD__(v266, 1))
    {
      break;
    }

    if (v260 >= v264)
    {
      goto LABEL_223;
    }

    v267 = *(v301 + 8 * v260);
    ++v266;
    if (v267)
    {
      v265 = __clz(__rbit64(v267));
      v303 = (v267 - 1) & v267;
      goto LABEL_221;
    }
  }

LABEL_285:
  __break(1u);
LABEL_286:
  __break(1u);
LABEL_287:
  swift_once();
LABEL_47:
  v109 = qword_1ED9C36C8;
  sub_1AAF8FD04();
  sub_1AACAF24C(0, &qword_1ED9AEE70, sub_1AAD6E5E0, MEMORY[0x1E69E6F90]);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1AAF92AB0;
  *v385 = 0;
  *&v385[8] = 0xE000000000000000;
  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](0xD000000000000028, 0x80000001AAFCFC30);
  v111 = v362;
  LOBYTE(v384[0]) = v362;
  sub_1AAF90284();
  MEMORY[0x1AC5982F0](0xD00000000000004DLL, 0x80000001AAFCFC60);
  v112 = *v385;
  v113 = *&v385[8];
  *(v110 + 56) = MEMORY[0x1E69E6158];
  *(v110 + 64) = sub_1AAD6E644();
  *(v110 + 32) = v112;
  *(v110 + 40) = v113;
  sub_1AAF8D7B4();

  *v385 = MEMORY[0x1E69E7CC0];
  v385[8] = v111;
  v385[9] = 3;
  *&v385[16] = MEMORY[0x1E69E7CC0];
  memset(&v385[24], 0, 19);
  v384[0] = *v385;
  v384[1] = MEMORY[0x1E69E7CC0];
LABEL_255:
  *(&v384[1] + 11) = *&v385[27];
  AGGraphSetOutputValue();
  sub_1AAEC8B48(&v403, &unk_1ED9AEC30, &type metadata for ChartInternal.ScaleDef, MEMORY[0x1E69E6720], sub_1AAEC9110);
  sub_1AAD58120(&v408);
  (*(v342 + 8))(v343, v344);
  (*(v335 + 8))(v345, v336);
  sub_1AADF9BF4(v385);
  *&v33 = v316;
  return (*(v341 + 8))(v351, v33);
}