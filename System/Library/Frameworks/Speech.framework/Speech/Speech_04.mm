void sub_1AC617030()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  sub_1AC617128();
}

void sub_1AC6170AC()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  sub_1AC617128();
}

void sub_1AC617128()
{
  OUTLINED_FUNCTION_104();
  v5 = v1;
  v37[2] = *MEMORY[0x1E69E9840];
  if (*(v1 + 16))
  {
    v6 = v0;
    v34[0] = v4;
    v34[2] = v2;
    v34[3] = v3;
    v37[0] = v0;
    v35 = *(v0 + 16);
    if (v35)
    {
      v7 = 0;
      v8 = v1 + 56;
      v9 = v0 + 32;
      while (2)
      {
        v10 = *(v7 + v9);
        v7 = (v7 + 1);
        v11 = *(v5 + 40);
        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](v10);
        v12 = sub_1AC7A0EC8();
        v13 = -1 << *(v5 + 32);
        v14 = ~v13;
        while (1)
        {
          v15 = (v12 & v14);
          v16 = (v12 & v14) >> 6;
          v17 = 1 << (v12 & v14);
          if ((v17 & *(v8 + 8 * v16)) == 0)
          {
            break;
          }

          if (*(v15 + *(v5 + 48)) == v10)
          {
            v37[1] = v7;
            v18 = (63 - v13) >> 6;
            v19 = 8 * v18;
            v34[1] = v18;
            if (v18 > 0x80)
            {
              goto LABEL_29;
            }

            {
              v35 = v34;
              MEMORY[0x1EEE9AC00](i);
              v18 = v34 - v21;
              memcpy(v34 - v21, (v5 + 56), v19);
              v22 = *(v5 + 16);
              *(v18 + 8 * v16) &= ~v17;
              v17 = v22 - 1;
              v23 = *(v6 + 16);
              if (v7 == v23)
              {
                break;
              }

              v19 = 1;
              while (2)
              {
                if (v7 < v23)
                {
                  v24 = v7;
                  v7 = (v7 + 1);
                  v16 = *(v24 + v9);
                  v25 = *(v5 + 40);
                  sub_1AC7A0E78();
                  v15 = &v36;
                  MEMORY[0x1B26E9A40](v16);
                  sub_1AC7A0EC8();
                  OUTLINED_FUNCTION_53_0();
                  v28 = ~v27;
                  while (1)
                  {
                    v29 = v26 & v28;
                    if (((1 << (v26 & v28)) & *(v8 + 8 * ((v26 & v28) >> 6))) == 0)
                    {
                      break;
                    }

                    v26 = v29 + 1;
                    if (*(*(v5 + 48) + v29) == v16)
                    {
                      OUTLINED_FUNCTION_175_1();
                      if (!v30)
                      {
                        if (__OFSUB__(v17--, 1))
                        {
                          goto LABEL_28;
                        }

                        if (!v17)
                        {

                          goto LABEL_23;
                        }
                      }

                      break;
                    }
                  }

                  v23 = *(v6 + 16);
                  if (v7 != v23)
                  {
                    continue;
                  }

                  goto LABEL_22;
                }

                break;
              }

              __break(1u);
LABEL_28:
              __break(1u);
LABEL_29:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                v33 = swift_slowAlloc();
                (v34[0])(v33, v18, v5 + 56, v18, v5, v15, v37);
                OUTLINED_FUNCTION_86();

                OUTLINED_FUNCTION_77_1();

                goto LABEL_25;
              }
            }

LABEL_22:
            sub_1AC618B50();
LABEL_23:

            goto LABEL_25;
          }

          v12 = v15 + 1;
        }

        if (v7 != v35)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
  }

LABEL_25:
  v32 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC617440(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v60 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v4 = MEMORY[0x1E69E7CD0];
    goto LABEL_52;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AC7A08A8();
    type metadata accessor for SpeechRecognizerWorker();
    sub_1AC61AAD8(&qword_1EB56B418, type metadata accessor for SpeechRecognizerWorker);
    sub_1AC7A0488();
    v5 = v55;
    v6 = v56;
    v8 = v57;
    v7 = v58;
    v9 = v59;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v7 = 0;
  }

  v50 = v5;
  v51 = v6;
  v52 = v8;
  v53 = v7;
  v13 = (v8 + 64) >> 6;
  v14 = v4 + 56;
  v54 = v9;
  v47 = v5;
  v46 = v8;
LABEL_10:
  v45 = v7;
  if (v5 < 0)
  {
    v18 = sub_1AC7A0918();
    if (!v18)
    {
      goto LABEL_51;
    }

    v48 = v18;
    type metadata accessor for SpeechRecognizerWorker();
    swift_dynamicCast();
    v3 = v49;
    v15 = v45;
    v2 = v9;
    if (!v49)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v15 = v7;
    v16 = v9;
    v17 = v7;
    if (v9)
    {
LABEL_15:
      v2 = (v16 - 1) & v16;
      v3 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

      v15 = v17;
    }

    else
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_55;
        }

        if (v17 >= v13)
        {
          break;
        }

        v16 = *(v6 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      v3 = 0;
      v2 = 0;
    }

    v50 = v5;
    v51 = v6;
    v52 = v46;
    v53 = v15;
    v54 = v2;
    if (!v3)
    {
      goto LABEL_51;
    }
  }

  v19 = *(v4 + 40);
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v3);
  v20 = sub_1AC7A0EC8();
  v21 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v17 = v20 & v21;
    v9 = (v20 & v21) >> 6;
    v5 = 1 << (v20 & v21);
    if ((v5 & *(v14 + 8 * v9)) == 0)
    {

      v7 = v15;
      v9 = v2;
      v5 = v47;
      goto LABEL_10;
    }

    if (*(*(v4 + 48) + 8 * v17) == v3)
    {
      break;
    }

    v20 = v17 + 1;
  }

  v23 = *(v4 + 32);
  v42 = ((1 << v23) + 63) >> 6;
  v3 = 8 * v42;
  if ((v23 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (2)
  {
    v43 = &v41;
    MEMORY[0x1EEE9AC00](v22);
    v24 = &v41 - ((v3 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v24, (v4 + 56), v3);
    v41 = 0;
    v25 = *&v24[8 * v9] & ~v5;
    v26 = *(v4 + 16);
    v45 = v24;
    *&v24[8 * v9] = v25;
    v27 = v26 - 1;
    v3 = 1;
    v17 = v47;
    while (1)
    {
      v44 = v27;
LABEL_29:
      if (v17 < 0)
      {
        v30 = sub_1AC7A0918();
        if (!v30)
        {
          goto LABEL_50;
        }

        v48 = v30;
        type metadata accessor for SpeechRecognizerWorker();
        swift_dynamicCast();
        v9 = v49;
        if (!v49)
        {
          goto LABEL_50;
        }

        goto LABEL_40;
      }

      if (!v2)
      {
        break;
      }

LABEL_35:
      v29 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v9 = *(*(v17 + 48) + ((v15 << 9) | (8 * v29)));

LABEL_36:
      v50 = v17;
      v51 = v6;
      v52 = v46;
      v53 = v15;
      v54 = v2;
      if (!v9)
      {
LABEL_50:
        v4 = sub_1AC618E1C(v45, v42, v44, v4);
        goto LABEL_51;
      }

LABEL_40:
      v31 = *(v4 + 40);
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](v9);
      v32 = sub_1AC7A0EC8();
      v33 = ~(-1 << *(v4 + 32));
      do
      {
        v34 = v32 & v33;
        v35 = (v32 & v33) >> 6;
        v5 = 1 << (v32 & v33);
        if ((v5 & *(v14 + 8 * v35)) == 0)
        {

          v17 = v47;
          goto LABEL_29;
        }

        v32 = v34 + 1;
      }

      while (*(*(v4 + 48) + 8 * v34) != v9);

      v36 = v45[v35];
      v45[v35] = v36 & ~v5;
      v17 = v47;
      if ((v36 & v5) == 0)
      {
        goto LABEL_29;
      }

      v27 = v44 - 1;
      if (__OFSUB__(v44, 1))
      {
        __break(1u);
      }

      if (v44 == 1)
      {

        v4 = MEMORY[0x1E69E7CD0];
        goto LABEL_51;
      }
    }

    while (1)
    {
      v28 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v28 >= v13)
      {
        v9 = 0;
        v2 = 0;
        goto LABEL_36;
      }

      v2 = *(v6 + 8 * v28);
      ++v15;
      if (v2)
      {
        v15 = v28;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v39 = swift_slowAlloc();
  v40 = sub_1AC6187F4(v39, v42, (v4 + 56), v42, v4, v17, &v50);

  MEMORY[0x1B26EAB10](v39, -1, -1);
  v4 = v40;
LABEL_51:
  sub_1AC5CA508();
LABEL_52:
  v37 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1AC617A48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37[1] = a2;
  v9 = sub_1AC79FB18();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v41 = v37 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v49 = v37 - v16;
  v17 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v18 = v17 - 1;
  v47 = v19 + 16;
  v48 = a3;
  v39 = a1;
  v40 = v19 + 32;
  v43 = a5;
  v44 = a3 + 56;
  v42 = v19;
  v20 = (v19 + 8);
  while (1)
  {
    v38 = v18;
LABEL_3:
    v21 = *a5;
    v22 = a5[1];
    v23 = *(*a5 + 16);
    if (v22 == v23)
    {

      sub_1AC61887C();
      return;
    }

    if (v22 >= v23)
    {
      break;
    }

    v25 = v41;
    v24 = v42;
    v26 = *(v42 + 80);
    v46 = *(v42 + 72);
    v45 = *(v42 + 16);
    v45(v41, v21 + ((v26 + 32) & ~v26) + v46 * v22, v9);
    a5[1] = v22 + 1;
    (*(v24 + 32))(v49, v25, v9);
    v27 = v48;
    v28 = *(v48 + 40);
    sub_1AC61AAD8(&qword_1EB56B468, MEMORY[0x1E6969770]);
    v29 = sub_1AC79FE48();
    v30 = ~(-1 << *(v27 + 32));
    do
    {
      v31 = v29 & v30;
      v32 = (v29 & v30) >> 6;
      v33 = 1 << (v29 & v30);
      if ((v33 & *(v44 + 8 * v32)) == 0)
      {
        (*v20)(v49, v9);
        a5 = v43;
        goto LABEL_3;
      }

      v45(v13, *(v48 + 48) + v31 * v46, v9);
      sub_1AC61AAD8(&qword_1EB56B460, MEMORY[0x1E6969770]);
      v34 = sub_1AC79FED8();
      v35 = *v20;
      (*v20)(v13, v9);
      v29 = v31 + 1;
    }

    while ((v34 & 1) == 0);
    v35(v49, v9);
    v36 = *(v39 + 8 * v32);
    *(v39 + 8 * v32) = v36 & ~v33;
    a5 = v43;
    if ((v36 & v33) == 0)
    {
      goto LABEL_3;
    }

    v18 = v38 - 1;
    if (__OFSUB__(v38, 1))
    {
      goto LABEL_16;
    }

    if (v38 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1AC617DDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v40 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - v11;
  v13 = sub_1AC79FB18();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v40 - v19;
  v20 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v21 = v20 - 1;
  v42 = a1;
  v43 = (v14 + 32);
  v47 = a3 + 56;
  v48 = v14 + 16;
  v49 = (v14 + 8);
  v50 = a3;
  v44 = v12;
  v45 = a5;
  while (1)
  {
    v41 = v21;
LABEL_3:
    v23 = *a5;
    v22 = a5[1];
    v24 = a5[2];
    v25 = a5[3];
    v26 = a5[4];
    v46 = v24;
    if (!v26)
    {
      break;
    }

    v27 = v25;
LABEL_9:
    v28 = (v26 - 1) & v26;
    (*(v14 + 16))(v12, *(v23 + 48) + *(v14 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v13);
    v29 = 0;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v12, v29, 1, v13);
    *a5 = v23;
    a5[1] = v22;
    a5[2] = v46;
    a5[3] = v25;
    a5[4] = v28;
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_1AC61BBF0(v12, &qword_1EB56BFD8);

      sub_1AC61887C();
      return;
    }

    (*v43)(v51, v12, v13);
    v30 = v50;
    v31 = *(v50 + 40);
    sub_1AC61AAD8(&qword_1EB56B468, MEMORY[0x1E6969770]);
    v32 = sub_1AC79FE48();
    v33 = ~(-1 << *(v30 + 32));
    do
    {
      v34 = v32 & v33;
      v35 = (v32 & v33) >> 6;
      v36 = 1 << (v32 & v33);
      if ((v36 & *(v47 + 8 * v35)) == 0)
      {
        (*v49)(v51, v13);
        v12 = v44;
        a5 = v45;
        goto LABEL_3;
      }

      (*(v14 + 16))(v18, *(v50 + 48) + *(v14 + 72) * v34, v13);
      sub_1AC61AAD8(&qword_1EB56B460, MEMORY[0x1E6969770]);
      v37 = sub_1AC79FED8();
      v38 = *(v14 + 8);
      v38(v18, v13);
      v32 = v34 + 1;
    }

    while ((v37 & 1) == 0);
    v38(v51, v13);
    v39 = *(v42 + 8 * v35);
    *(v42 + 8 * v35) = v39 & ~v36;
    v12 = v44;
    a5 = v45;
    if ((v39 & v36) == 0)
    {
      goto LABEL_3;
    }

    v21 = v41 - 1;
    if (__OFSUB__(v41, 1))
    {
      goto LABEL_23;
    }

    if (v41 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= ((v24 + 64) >> 6))
    {
      v28 = 0;
      v29 = 1;
      goto LABEL_10;
    }

    v26 = *(v22 + 8 * v27);
    ++v25;
    if (v26)
    {
      v25 = v27;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1AC61822C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = *a5;
  v9 = a5[1];
  v10 = *(*a5 + 16);
  if (v9 == v10)
  {
LABEL_11:

    sub_1AC618B50();
    return;
  }

  while (2)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < v10)
    {
      v12 = *(v8 + v9 + 32);
      a5[1] = v9 + 1;
      v13 = *(a3 + 40);
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](v12);
      v14 = sub_1AC7A0EC8();
      v15 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v16 = v14 & v15;
        if (((1 << (v14 & v15)) & *(a3 + 56 + 8 * ((v14 & v15) >> 6))) == 0)
        {
          break;
        }

        v14 = v16 + 1;
        if (*(*(a3 + 48) + v16) == v12)
        {
          OUTLINED_FUNCTION_175_1();
          if (!v17)
          {
            if (__OFSUB__(v7--, 1))
            {
              goto LABEL_15;
            }

            if (!v7)
            {
              return;
            }
          }

          break;
        }
      }

      v8 = *a5;
      v9 = a5[1];
      v10 = *(*a5 + 16);
      if (v9 != v10)
      {
        continue;
      }

      goto LABEL_11;
    }

    break;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1AC61839C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v24 = v9;
LABEL_3:
    if ((*a5 & 0x8000000000000000) != 0)
    {
      if (!sub_1AC7A0918())
      {
        goto LABEL_25;
      }

      type metadata accessor for SpeechRecognizerWorker();
      swift_dynamicCast();
      v14 = v25;
      if (!v25)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v12 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v13 = a5[3];
LABEL_13:
    v15 = (v11 - 1) & v11;
    v14 = *(*(*a5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v11)))));

LABEL_14:
    a5[3] = v12;
    a5[4] = v15;
    if (!v14)
    {
LABEL_25:

      return sub_1AC618E1C(v7, a2, v24, a3);
    }

LABEL_15:
    v16 = *(a3 + 40);
    sub_1AC7A0E78();
    MEMORY[0x1B26E9A40](v14);
    v17 = sub_1AC7A0EC8();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v10 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v17 = v19 + 1;
    }

    while (*(*(a3 + 48) + 8 * v19) != v14);

    v22 = v7[v20];
    v7[v20] = v22 & ~v21;
    if ((v22 & v21) == 0)
    {
      goto LABEL_3;
    }

    v9 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_27;
    }

    if (v24 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= ((a5[2] + 64) >> 6))
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_14;
    }

    v11 = *(a5[1] + 8 * v13);
    ++v12;
    if (v11)
    {
      v12 = v13;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1AC6185B4(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1AC617A48(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1AC61863C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1AC617DDC(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1AC6186C4(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1AC61822C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1AC61875C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1AC61822C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1AC6187F4(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1AC61839C(a1, a2, a5, a6, a7);

  return v12;
}

void sub_1AC61887C()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v45 = sub_1AC79FB18();
  v8 = OUTLINED_FUNCTION_40(v45);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v3)
  {
LABEL_28:

LABEL_29:
    OUTLINED_FUNCTION_105();
    return;
  }

  if (*(v1 + 16) == v3)
  {
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFB8, &qword_1AC7A83D0);
  v14 = sub_1AC7A0988();
  v15 = v14;
  if (v5 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *v7;
  }

  v17 = 0;
  v18 = v14 + 56;
  v40 = (v10 + 32);
  v41 = v10 + 16;
  v39 = v1;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v42 = (v16 - 1) & v16;
LABEL_16:
    v23 = *(v1 + 48);
    v43 = *(v10 + 72);
    (*(v10 + 16))(v44, v23 + v43 * (v19 | (v17 << 6)), v45);
    v24 = *(v15 + 40);
    OUTLINED_FUNCTION_10_1();
    sub_1AC61AAD8(&qword_1EB56B468, v25);
    sub_1AC79FE48();
    v26 = *(v15 + 32);
    OUTLINED_FUNCTION_95_0();
    if (((v29 << v28) & ~*(v18 + 8 * v27)) == 0)
    {
      OUTLINED_FUNCTION_8_1();
      while (1)
      {
        OUTLINED_FUNCTION_82_0();
        if (v33)
        {
          if (v31)
          {
            goto LABEL_31;
          }
        }

        if (v30 == v32)
        {
          v30 = 0;
        }

        if (*(v18 + 8 * v30) != -1)
        {
          OUTLINED_FUNCTION_7_2();
          goto LABEL_26;
        }
      }
    }

    OUTLINED_FUNCTION_9_2();
LABEL_26:
    OUTLINED_FUNCTION_17_0();
    *(v18 + v34) |= v35;
    (*v40)(*(v15 + 48) + v36 * v43, v44, v45);
    ++*(v15 + 16);
    if (__OFSUB__(v3--, 1))
    {
      goto LABEL_32;
    }

    v1 = v39;
    v16 = v42;
    if (!v3)
    {
      goto LABEL_28;
    }
  }

  v20 = v17;
  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= v5)
    {
      goto LABEL_28;
    }

    ++v20;
    if (v7[v17])
    {
      OUTLINED_FUNCTION_25_0();
      v42 = v22 & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1AC618B50()
{
  OUTLINED_FUNCTION_62();
  v6 = v3;
  if (!v2)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (*(v3 + 16) == v2)
  {
LABEL_6:
    OUTLINED_FUNCTION_61_0();
    return;
  }

  v7 = v1;
  v8 = v0;
  OUTLINED_FUNCTION_156_0(v0, v1, v2, v3, v4, v5);
  v9 = sub_1AC7A0988();
  v10 = v9;
  if (v7 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v8;
  }

  v12 = 0;
  v13 = v9 + 56;
  while (v11)
  {
    OUTLINED_FUNCTION_57_2();
LABEL_16:
    v18 = *(*(v6 + 48) + (v14 | (v12 << 6)));
    v19 = *(v10 + 40);
    sub_1AC7A0E78();
    MEMORY[0x1B26E9A40](v18);
    sub_1AC7A0EC8();
    v20 = *(v10 + 32);
    OUTLINED_FUNCTION_95_0();
    if (((v23 << v22) & ~*(v13 + 8 * v21)) == 0)
    {
      OUTLINED_FUNCTION_8_1();
      while (1)
      {
        OUTLINED_FUNCTION_82_0();
        if (v28)
        {
          if (v26)
          {
            goto LABEL_29;
          }
        }

        if (v25 == v27)
        {
          v25 = 0;
        }

        OUTLINED_FUNCTION_44_0(v25);
        if (!v28)
        {
          OUTLINED_FUNCTION_7_2();
          goto LABEL_26;
        }
      }
    }

    OUTLINED_FUNCTION_9_2();
LABEL_26:
    OUTLINED_FUNCTION_1_3(v24);
    *(*(v10 + 48) + v29) = v18;
    OUTLINED_FUNCTION_176_0();
    if (v30)
    {
      goto LABEL_30;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      goto LABEL_5;
    }

    ++v15;
    if (v8[v12])
    {
      OUTLINED_FUNCTION_25_0();
      v11 = v17 & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1AC618CB4()
{
  OUTLINED_FUNCTION_104();
  v4 = v3;
  if (!v2)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (*(v3 + 16) == v2)
  {
LABEL_6:
    OUTLINED_FUNCTION_105();
    return;
  }

  v5 = v1;
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF10, &qword_1AC7A8320);
  v7 = sub_1AC7A0988();
  v8 = v7;
  if (v5 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v6;
  }

  v10 = 0;
  v11 = v7 + 56;
  while (v9)
  {
    OUTLINED_FUNCTION_57_2();
LABEL_16:
    v16 = *(v8 + 40);
    v17 = *(*(v4 + 48) + 8 * (v12 | (v10 << 6)));
    sub_1AC7A0748();
    v18 = *(v8 + 32);
    OUTLINED_FUNCTION_95_0();
    if (((v21 << v20) & ~*(v11 + 8 * v19)) == 0)
    {
      OUTLINED_FUNCTION_8_1();
      while (1)
      {
        OUTLINED_FUNCTION_82_0();
        if (v26)
        {
          if (v24)
          {
            goto LABEL_29;
          }
        }

        if (v23 == v25)
        {
          v23 = 0;
        }

        OUTLINED_FUNCTION_44_0(v23);
        if (!v26)
        {
          OUTLINED_FUNCTION_7_2();
          goto LABEL_26;
        }
      }
    }

    OUTLINED_FUNCTION_9_2();
LABEL_26:
    OUTLINED_FUNCTION_1_3(v22);
    *(*(v8 + 48) + 8 * v27) = v17;
    OUTLINED_FUNCTION_176_0();
    if (v28)
    {
      goto LABEL_30;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v5)
    {
      goto LABEL_5;
    }

    ++v13;
    if (v6[v10])
    {
      OUTLINED_FUNCTION_25_0();
      v9 = v15 & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1AC618E1C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF90, &qword_1AC7A83A0);
  result = sub_1AC7A0988();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_1AC7A0E78();
    MEMORY[0x1B26E9A40](v16);
    result = sub_1AC7A0EC8();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1AC619024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1AC79FB18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1AC61AAD8(&qword_1EB56B468, MEMORY[0x1E6969770]);
  v28 = a1;
  v11 = sub_1AC79FE48();
  v27 = v9;
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v26;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v4);
    }

    v14 = *(v5 + 72) * v13;
    (*(v5 + 16))(v8, *(v27 + 48) + v14, v4);
    sub_1AC61AAD8(&qword_1EB56B460, MEMORY[0x1E6969770]);
    v15 = sub_1AC79FED8();
    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = v25;
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AC6141EC();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_1AC61A1F0(v13);
  v16 = 0;
  *v18 = v29;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v4);
}

uint64_t sub_1AC6192BC(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  sub_1AC7A0E78();
  sub_1AC60D2F0(&v39, a1);
  v5 = sub_1AC7A0EC8();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  if (((*(v3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v37 = v1;
  v38 = v3;
  v9 = ~v7;
  v10 = &selRef_initWithText_confidence_startTime_duration_;
  while (1)
  {
    v11 = *(*(v3 + 48) + 8 * v8);
    v12 = [v11 v10[171]];
    if (v12 != [a1 v10[171]])
    {

      goto LABEL_23;
    }

    v13 = [v11 language];
    v14 = sub_1AC79FF68();
    v16 = v15;

    v17 = a1;
    v18 = [a1 language];
    v19 = sub_1AC79FF68();
    v21 = v20;

    if (v14 == v19 && v16 == v21)
    {
    }

    else
    {
      v23 = sub_1AC7A0D38();

      if ((v23 & 1) == 0)
      {

        v3 = v38;
        v10 = &selRef_initWithText_confidence_startTime_duration_;
        a1 = v17;
        goto LABEL_23;
      }
    }

    v24 = sub_1AC61AA74(v11);
    v26 = v25;
    a1 = v17;
    v27 = sub_1AC61AA74(v17);
    v29 = v28;
    v10 = &selRef_initWithText_confidence_startTime_duration_;
    if (v26)
    {
      break;
    }

    v3 = v38;
    if (!v29)
    {
      goto LABEL_27;
    }

LABEL_23:
    v8 = (v8 + 1) & v9;
    if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  if (!v28)
  {

    v3 = v38;
    goto LABEL_23;
  }

  if (v24 != v27 || v26 != v28)
  {
    v31 = sub_1AC7A0D38();

    v3 = v38;
    if (v31)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_27:
  v34 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v37;
  v39 = *v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AC613E04();
    v36 = v39;
  }

  v32 = *(*(v36 + 48) + 8 * v8);
  sub_1AC61A4FC(v8);
  *v37 = v39;
  return v32;
}

unint64_t sub_1AC61956C()
{
  result = qword_1EB56BCA8;
  if (!qword_1EB56BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56BCA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetInventory.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetInventory.Status(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of static LocaleDependentSpeechModule.supportedLocales.getter()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_78_0();
  v3 = *(v2 + 16);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_64_0(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_85_0(v6);

  return v9(v1, v0);
}

uint64_t dispatch thunk of static LocaleDependentSpeechModule.supportedLocale(equivalentTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_29_0(v10);
  *v11 = v12;
  v11[1] = sub_1AC5C5380;

  return v14(a1, a2, a3, a4);
}

unint64_t sub_1AC6199EC()
{
  result = qword_1EB56BCB0;
  if (!qword_1EB56BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56BCB0);
  }

  return result;
}

void sub_1AC619A70()
{
  OUTLINED_FUNCTION_62();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v10 = v6;
  v11 = *v5;
  v12 = *(*v5 + 40);
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v7);
  sub_1AC7A0EC8();
  v13 = *(v11 + 32);
  OUTLINED_FUNCTION_43_0();
  while (1)
  {
    v17 = v14 & v16;
    if (((*(v15 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v16)) & 1) == 0)
    {
      *v9 = v4;
      goto LABEL_9;
    }

    if (*(*(v11 + 48) + v17) == v10)
    {
      break;
    }

    v14 = v17 + 1;
  }

  v18 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v5;
  v22 = *v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = OUTLINED_FUNCTION_181_0();
    sub_1AC614554(v21, v2);
    v20 = v22;
  }

  *v9 = *(*(v20 + 48) + v17);
  sub_1AC61A744(v17);
  *v5 = v22;
LABEL_9:
  OUTLINED_FUNCTION_61_0();
}

unint64_t sub_1AC619B68(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v7 = *(v3 + 40);
    sub_1AC7A0E78();
    MEMORY[0x1B26E9A40](a1);
    v8 = sub_1AC7A0EC8();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = v8 & v9;
      if (((*(v3 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 8 * v10) == a1)
      {
        v11 = *v1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = *v1;
        v15 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AC6147A8();
          v13 = v15;
        }

        v6 = *(*(v13 + 48) + 8 * v10);
        sub_1AC61A8D8(v10);
        *v1 = v15;
        return v6;
      }

      v8 = v10 + 1;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1AC7A0928();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_1AC61A110(v4, a1);

  return v6;
}

uint64_t sub_1AC619CBC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_1AC79FB18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_1AC61BBF0(v6, &qword_1EB56BFD8))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_1AC619024(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC619ED8(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    result = sub_1AC7A08E8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(v3 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AC7A08A8();
    type metadata accessor for SpeechRecognizerWorker();
    sub_1AC61AAD8(&qword_1EB56B418, type metadata accessor for SpeechRecognizerWorker);
    result = sub_1AC7A0488();
    a1 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
    v9 = v23;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
      return sub_1AC5CA508();
    }

    while (1)
    {
      sub_1AC619B68(v17);

      v8 = v15;
      v9 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_1AC7A0918())
      {
        type metadata accessor for SpeechRecognizerWorker();
        swift_dynamicCast();
        v17 = v18;
        v15 = v8;
        v16 = v9;
        if (v18)
        {
          continue;
        }
      }

      return sub_1AC5CA508();
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      return sub_1AC5CA508();
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AC61A110(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  v5 = sub_1AC7A08E8();
  v6 = swift_unknownObjectRetain();
  v11 = sub_1AC683844(v6, v5);
  v7 = *(v11 + 40);
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](a2);
  for (i = sub_1AC7A0EC8(); ; i = result + 1)
  {
    result = i & ~(-1 << *(v11 + 32));
    if (((*(v11 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
    {
      break;
    }

    v10 = *(*(v11 + 48) + 8 * result);
    if (v10 == a2)
    {
      sub_1AC61A8D8(result);
      *v2 = v11;
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC61A1F0(int64_t a1)
{
  v3 = sub_1AC79FB18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_1AC7A0878();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v40 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v39 = v17;
      v18 = *(v16 + 56);
      v41 = v16;
      v42 = v18;
      v19 = v13;
      v20 = (v16 - 8);
      v21 = v9;
      while (1)
      {
        v22 = v10;
        v23 = v42 * v12;
        v24 = v19;
        v39(v8, *(v21 + 48) + v42 * v12, v3);
        v25 = v21;
        v26 = *(v21 + 40);
        sub_1AC61AAD8(&qword_1EB56B468, MEMORY[0x1E6969770]);
        v27 = sub_1AC79FE48();
        (*v20)(v8, v3);
        v19 = v24;
        v28 = v27 & v24;
        if (a1 >= v40)
        {
          if (v28 < v40 || a1 < v28)
          {
LABEL_20:
            v21 = v25;
            goto LABEL_24;
          }
        }

        else if (v28 < v40 && a1 < v28)
        {
          goto LABEL_20;
        }

        v21 = v25;
        v30 = *(v25 + 48);
        v31 = v42 * a1;
        v32 = v30 + v42 * a1;
        v33 = v30 + v23 + v42;
        if (v42 * a1 < v23 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v19 = v24;
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v31 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v22;
        if (((*(v22 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v9;
LABEL_28:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v9;
  }

  v36 = *(v21 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v38;
    ++*(v21 + 36);
  }

  return result;
}

unint64_t sub_1AC61A4FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1AC7A0878();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_1AC7A0E78();
        v13 = v12;
        MEMORY[0x1B26E9A40]([v13 assetType]);
        v14 = [v13 language];
        sub_1AC79FF68();

        sub_1AC7A0048();

        sub_1AC61AA74(v13);
        if (v15)
        {
          sub_1AC7A0E98();
          sub_1AC7A0048();
        }

        else
        {
          sub_1AC7A0E98();
        }

        v16 = sub_1AC7A0EC8();

        v17 = v16 & v7;
        if (v2 >= v10)
        {
          if (v17 >= v10 && v2 >= v17)
          {
LABEL_18:
            v20 = *(v3 + 48);
            v21 = (v20 + 8 * v2);
            v22 = (v20 + 8 * v6);
            if (v2 != v6 || v21 >= v22 + 1)
            {
              *v21 = *v22;
              v2 = v6;
            }
          }
        }

        else if (v17 >= v10 || v2 >= v17)
        {
          goto LABEL_18;
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

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1AC61A744(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1AC7A0878();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_1AC7A0E78();
        OUTLINED_FUNCTION_194_0();
        v13 = sub_1AC7A0EC8() & v7;
        if (v2 >= v10)
        {
          if (v13 >= v10 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + v2);
            v18 = (v16 + v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v10 || v2 >= v13)
        {
          goto LABEL_15;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1AC61A8D8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1AC7A0878();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](v12);
        v13 = sub_1AC7A0EC8() & v7;
        if (v2 >= v10)
        {
          if (v13 >= v10 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v10 || v2 >= v13)
        {
          goto LABEL_15;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1AC61AA74(void *a1)
{
  v1 = [a1 regionId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AC79FF68();

  return v3;
}

uint64_t sub_1AC61AAD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AC61AB20()
{
  result = qword_1EB56BDC8;
  if (!qword_1EB56BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56BDC8);
  }

  return result;
}

unint64_t sub_1AC61AB74()
{
  result = qword_1EB56BDD8;
  if (!qword_1EB56BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56BDD8);
  }

  return result;
}

unint64_t sub_1AC61ABC8()
{
  result = qword_1EB56BDE8;
  if (!qword_1EB56BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56BDE8);
  }

  return result;
}

unint64_t sub_1AC61AC1C()
{
  result = qword_1EB56BE00;
  if (!qword_1EB56BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56BE00);
  }

  return result;
}

uint64_t sub_1AC61AC70()
{
  OUTLINED_FUNCTION_72();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C5380;
  v6 = OUTLINED_FUNCTION_70_2();

  return sub_1AC60CBFC(v6);
}

uint64_t sub_1AC61AD08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_19:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            v13 = v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      result = sub_1AC5DC8D8(*(a4 + 48) + 40 * (v16 | (v13 << 6)), v19);
      v17 = v20;
      v18 = v19[1];
      *v11 = v19[0];
      *(v11 + 16) = v18;
      *(v11 + 32) = v17;
      v11 += 40;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AC61AE5C(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1AC79FB18();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v33 - v13;
  v15 = a4 + 56;
  v14 = *(a4 + 56);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 56;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 48);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC61B0F4(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AC61B250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, int64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_62();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  if ((v18 & 0xC000000000000001) != 0)
  {
    sub_1AC7A08A8();
    sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
    sub_1AC61B8BC();
    sub_1AC7A0488();
    v19 = a14;
    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
    a17 = 0;
    v36 = *(v18 + 32);
    OUTLINED_FUNCTION_63_0();
    a15 = v19 + 56;
    a16 = ~v38;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(v37 << v39);
    }

    else
    {
      v40 = v37;
    }

    a18 = v40 & *(v19 + 56);
    if (!v23)
    {
      goto LABEL_26;
    }
  }

  if (!v21)
  {
LABEL_26:
    *v25 = v19;
    v25[1] = a15;
    v25[2] = a16;
    v25[3] = a17;
    v25[4] = a18;
    OUTLINED_FUNCTION_61_0();
    return;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    v41 = a16;
    v42 = v25;
    v30 = 0;
    v31 = (a16 + 64) >> 6;
    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v19 < 0)
      {
        if (!sub_1AC7A0918() || (sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418), swift_dynamicCast(), (v35 = a13) == 0))
        {
LABEL_25:
          a16 = v41;
          v25 = v42;
          goto LABEL_26;
        }
      }

      else
      {
        if (!a18)
        {
          while (1)
          {
            v33 = a17 + 1;
            if (__OFADD__(a17, 1))
            {
              break;
            }

            if (v33 >= v31)
            {
              a18 = 0;
              goto LABEL_25;
            }

            a18 = *(a15 + 8 * v33);
            ++a17;
            if (a18)
            {
              a17 = v33;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        OUTLINED_FUNCTION_168_0();
        v35 = *(*(v19 + 48) + ((a17 << 9) | (8 * v34)));
        if (!v35)
        {
          goto LABEL_25;
        }
      }

      *v23++ = v35;
      ++v30;
      if (v32 == v21)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1AC61B420(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - v14;
  v32 = a4;
  v18 = *(a4 + 64);
  v17 = a4 + 64;
  v16 = v18;
  v19 = -1 << *(v17 - 32);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v16;
  if (!a2)
  {
    v23 = 0;
    a3 = 0;
LABEL_21:
    *a1 = v32;
    a1[1] = v17;
    a1[2] = ~v19;
    a1[3] = v23;
    a1[4] = v21;
    return a3;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = -1 << *(v17 - 32);
    v30 = a1;
    v22 = 0;
    v23 = 0;
    v24 = (63 - v19) >> 6;
    while (1)
    {
      if (v22 >= a3)
      {
        goto LABEL_24;
      }

      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_25;
      }

      if (!v21)
      {
        while (1)
        {
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v26 >= v24)
          {
            v21 = 0;
            a3 = v22;
            goto LABEL_19;
          }

          v21 = *(v17 + 8 * v26);
          ++v23;
          if (v21)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v26 = v23;
LABEL_15:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v28 = *(v31 + 72);
      sub_1AC61B924(*(v32 + 48) + v28 * (v27 | (v26 << 6)), v12);
      sub_1AC61B988(v12, v15);
      result = sub_1AC61B988(v15, a2);
      if (v25 == a3)
      {
        break;
      }

      a2 += v28;
      v22 = v25;
      v23 = v26;
    }

    v23 = v26;
LABEL_19:
    v19 = v29;
    a1 = v30;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1AC61B634(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1AC61B78C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AC61B814()
{
  result = qword_1EB56B2C8;
  if (!qword_1EB56B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B2C8);
  }

  return result;
}

unint64_t sub_1AC61B868()
{
  result = qword_1EB56B2B8;
  if (!qword_1EB56B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B2B8);
  }

  return result;
}

unint64_t sub_1AC61B8BC()
{
  result = qword_1EB56BF00;
  if (!qword_1EB56BF00)
  {
    sub_1AC5CF764(255, &qword_1EB56ABA0, 0x1E6958418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56BF00);
  }

  return result;
}

uint64_t sub_1AC61B924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC61B988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AC61B9EC()
{
  result = qword_1EB56AD40;
  if (!qword_1EB56AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AD40);
  }

  return result;
}

unint64_t sub_1AC61BA40()
{
  result = qword_1EB56AF40;
  if (!qword_1EB56AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AF40);
  }

  return result;
}

unint64_t sub_1AC61BA94()
{
  result = qword_1EB56AF18;
  if (!qword_1EB56AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AF18);
  }

  return result;
}

uint64_t sub_1AC61BAE8()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_85_0(v5);
  v7 = OUTLINED_FUNCTION_170();

  return sub_1AC60C390(v7, v8, v3);
}

uint64_t sub_1AC61BB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC61BBF0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_130_0(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AC61BC4C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C4D48;

  return sub_1AC6E0BC4();
}

uint64_t objectdestroy_53Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AC61BD30()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_29_0(v4);
  *v5 = v6;
  v5[1] = sub_1AC5C4D48;
  v7 = OUTLINED_FUNCTION_70_2();

  return sub_1AC60A294(v7, v8, v2, v3);
}

uint64_t sub_1AC61BDD0()
{
  OUTLINED_FUNCTION_72();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C4D48;
  v6 = OUTLINED_FUNCTION_70_2();

  return v7(v6);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AC61BEBC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1AC61BFB0;

  return v6(v2 + 32);
}

uint64_t sub_1AC61BFB0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1;
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  *v6 = *(v2 + 32);
  OUTLINED_FUNCTION_44();

  return v9();
}

uint64_t sub_1AC61C0A8()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_29_0(v5);
  *v6 = v7;
  v6[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_149_0();

  return sub_1AC608444(v8, v9, v10, v11, v12);
}

uint64_t sub_1AC61C14C()
{
  OUTLINED_FUNCTION_72();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_29_0(v3);
  *v4 = v5;
  v4[1] = sub_1AC5C4D48;
  v6 = OUTLINED_FUNCTION_70_2();

  return v7(v6);
}

uint64_t sub_1AC61C1F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_130_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_2()
{
  result = v0 + 56;
  v3 = v1 + 56 + 8 * (((1 << *(v0 + 32)) + 63) >> 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_1()
{
  result = v0 + 56;
  v2 = 1 << *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t result)
{
  v4 = result & ~(v2 << *(v1 + 32));
  v5 = (v2 << v4) & ~*(v3 + 8 * (v4 >> 6));
  return result;
}

uint64_t OUTLINED_FUNCTION_48_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_66_0(uint64_t a1)
{
  *(a1 + 8) = sub_1AC60BD48;
  v2 = *(v1 + 32);
  return *(v1 + 56);
}

void OUTLINED_FUNCTION_91_1()
{
  v2 = *v0;
  *(*v0 + 8 * (v1 >> 6) + 56) |= 1 << v1;
  v3 = *(v2 + 48);
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_109_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_115_0()
{
  v2 = *(*(v1 - 120) + 48) + v0;
  result = *(v1 - 136);
  v4 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_121_0()
{
  *v0 = *(v2 - 88);
  v3 = *(v1 + 32);
  return *(v2 - 136);
}

uint64_t OUTLINED_FUNCTION_124_2()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 104);
  v6 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_130_1()
{
  result = v0[6];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_135_0()
{
  v2 = *(v0 + 40);

  return sub_1AC7A0E78();
}

__n128 OUTLINED_FUNCTION_137_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  v15 = *(v13 + 24);
  v16 = *(v13 + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_138_0()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_147_0()
{
  v2 = *(v0 - 96);

  return sub_1AC79FED8();
}

BOOL OUTLINED_FUNCTION_151_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_152_0()
{

  return sub_1AC7A0968();
}

void OUTLINED_FUNCTION_153_1()
{
  v2 = *(v0 + 16) + 1;

  sub_1AC60DAF8();
}

uint64_t OUTLINED_FUNCTION_188_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(a1 - 1);
  v3 = *a1;

  return swift_getObjectType();
}

void Assets.init(locale:taskHint:clientID:modelOverridePath:)()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v38 = v2;
  v39 = v3;
  v5 = v4;
  v7 = v6;
  v37 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v10 = OUTLINED_FUNCTION_167(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v36 = v13 - v14;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v35 - v16;
  v18 = sub_1AC79FB18();
  v19 = OUTLINED_FUNCTION_40(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v35 - v28;
  v35[3] = *v5 == 13;
  v30 = *(v21 + 16);
  v30(v35 - v28, v7, v18);
  sub_1AC61CB64(v1, v17);
  v30(v26, v29, v18);
  sub_1AC61CB64(v17, v36);
  sub_1AC61CBD4();
  sub_1AC5C720C(v1, &qword_1EB56BB68, &qword_1AC7A8490);
  v31 = *(v21 + 8);
  v31(v7, v18);
  OUTLINED_FUNCTION_51();
  sub_1AC5C720C(v32, v33, v34);
  v31(v29, v18);
  OUTLINED_FUNCTION_105();
}

void Assets.init(locale:taskHint:clientID:modelOverridePath:isSpelling:)()
{
  OUTLINED_FUNCTION_104();
  v20[3] = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  v13 = sub_1AC79FB18();
  v14 = OUTLINED_FUNCTION_40(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  LOBYTE(v4) = *v4;
  (*(v16 + 16))(v20 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v13);
  sub_1AC61CB64(v2, v12);
  sub_1AC61CBD4();
  sub_1AC5C720C(v2, &qword_1EB56BB68, &qword_1AC7A8490);
  (*(v16 + 8))(v6, v13);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC61CB64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AC61CBD4()
{
  OUTLINED_FUNCTION_104();
  HIDWORD(v91) = v1;
  v3 = v2;
  v92 = v4;
  v93 = v5;
  v89 = v6;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v12 = OUTLINED_FUNCTION_167(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v90 = v15 - v16;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  OUTLINED_FUNCTION_167(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  v26 = sub_1AC79FB18();
  v27 = OUTLINED_FUNCTION_40(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v34 = v32 - v33;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_53_1();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v84 - v38;
  Locale.languageRegionLocale.getter(v37, v40, v41, v42, v43, v44, v45, v46, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v8, v95);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    v65 = v26;
    v66 = v94;
    v67 = v29;
    sub_1AC5C720C(v25, &qword_1EB56BFD8, &qword_1AC7A83F0);
    if (off_1ED937D60 != -1)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v68 = sub_1AC79FDE8();
      __swift_project_value_buffer(v68, qword_1ED9386C8);
      v69 = OUTLINED_FUNCTION_57_3();
      v70(v69, v66, v65);
      v66 = sub_1AC79FDC8();
      v71 = sub_1AC7A05F8();
      if (os_log_type_enabled(v66, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        OUTLINED_FUNCTION_38_1(v73, 4.8149e-34);
        OUTLINED_FUNCTION_64_2();
        OUTLINED_FUNCTION_20_2();
        sub_1AC622350(v74, v75);
        v76 = OUTLINED_FUNCTION_68_1();
        MEMORY[0x1B26E8C40](v76);

        MEMORY[0x1B26E8C40](46, 0xE100000000000000);
        v77 = v95;
        v0 = v96;
        v78 = *(v67 + 8);
        v67 += 8;
        v79 = OUTLINED_FUNCTION_54_1();
        v80(v79);
        v65 = sub_1AC5CFE74(v77, v0, &v97);

        *(v72 + 4) = v65;
        OUTLINED_FUNCTION_67_2(&dword_1AC5BC000, v81, v82, "Failed precondition: %s");
        __swift_destroy_boxed_opaque_existential_0(v73);
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_70();
      }

      else
      {

        v83 = *(v67 + 8);
        v67 += 8;
        v83(v0, v65);
      }

      __break(1u);
LABEL_8:
      OUTLINED_FUNCTION_3();
    }
  }

  (*(v29 + 32))(v39, v25, v26);
  v47 = *(v29 + 16);
  v87 = v34;
  v88 = v39;
  v47(v34, v39, v26);
  v48 = objc_allocWithZone(SFEntitledAssetConfig);
  v49 = v29;
  v50 = sub_1AC751A98(v89, v34, 0, 0);
  v51 = OUTLINED_FUNCTION_54_1();
  v53 = v52;
  v86 = v52;
  (v47)(v51);
  v85 = v3;
  sub_1AC61CB64(v3, v19);
  v54 = v10;
  v47(v10, v34, v53);
  v55 = type metadata accessor for Assets(0);
  *(v10 + v55[8]) = v50;
  v56 = (v10 + v55[5]);
  v57 = v92;
  v58 = v19;
  v59 = v93;
  *v56 = v92;
  v56[1] = v59;
  sub_1AC61CB64(v58, v54 + v55[6]);
  LOBYTE(v47) = BYTE4(v91) & 1;
  *(v54 + v55[7]) = BYTE4(v91) & 1;
  v60 = v90;
  sub_1AC61CB64(v58, v90);
  OUTLINED_FUNCTION_46_2();
  v61 = v50;

  v62 = sub_1AC61F634(v61, 1, v57, v59, v60, v47);
  sub_1AC5C720C(v85, &qword_1EB56BB68, &qword_1AC7A8490);
  v63 = v86;
  v64 = *(v49 + 8);
  v64(v94, v86);
  sub_1AC5C720C(v58, &qword_1EB56BB68, &qword_1AC7A8490);
  v64(v87, v63);
  v64(v88, v63);
  *(v54 + v55[9]) = v62;
  OUTLINED_FUNCTION_105();
}

void sub_1AC61D5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v25 = OUTLINED_FUNCTION_167(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C060, &unk_1AC7A8760);
  OUTLINED_FUNCTION_167(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C068, &unk_1AC7B09E0);
  OUTLINED_FUNCTION_167(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &a9 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  OUTLINED_FUNCTION_167(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &a9 - v50;
  v52 = sub_1AC79FB18();
  v53 = OUTLINED_FUNCTION_40(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v59 = &a9 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AC79F998();
  v60 = sub_1AC79F9C8();
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v60);
  v61 = sub_1AC79FA78();
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v61);
  v62 = sub_1AC79FA48();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v62);
  sub_1AC79F9D8();
  v63 = SFEntitledAssetConfigForLanguageDetector();
  v64 = sub_1AC79F7F8();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v64);
  (*(v55 + 16))(v23, v59, v52);
  v65 = type metadata accessor for Assets(0);
  *(v23 + v65[8]) = v63;
  v66 = (v23 + v65[5]);
  *v66 = 0;
  v66[1] = 0xE000000000000000;
  sub_1AC61CB64(v33, v23 + v65[6]);
  *(v23 + v65[7]) = 0;
  sub_1AC61CB64(v33, v30);
  OUTLINED_FUNCTION_46_2();
  v67 = sub_1AC61F634(v63, 0, 0, 0xE000000000000000, v30, 0);
  sub_1AC5C720C(v33, &qword_1EB56BB68, &qword_1AC7A8490);
  (*(v55 + 8))(v59, v52);
  *(v23 + v65[9]) = v67;
  OUTLINED_FUNCTION_105();
}

uint64_t Assets.locale.getter()
{
  OUTLINED_FUNCTION_56();
  v0 = sub_1AC79FB18();
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_39();

  return v4(v3);
}

uint64_t Assets.clientID.getter()
{
  v1 = (v0 + *(type metadata accessor for Assets(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t Assets.modelOverridePath.getter()
{
  v2 = OUTLINED_FUNCTION_56();
  v3 = v1 + *(type metadata accessor for Assets(v2) + 24);

  return sub_1AC61CB64(v3, v0);
}

uint64_t Assets.modelRoot.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC61DA5C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_8_2();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_55(v2);
  *v3 = v4;
  v3[1] = sub_1AC61DAF0;
  v5 = *(v0 + 16);

  return sub_1AC61F6D8();
}

uint64_t sub_1AC61DAF0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC61DBE4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_8_2();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC61F910();
}

uint64_t sub_1AC61DC6C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_50();
  v5 = *(v4 + 24);
  v6 = *v3;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  OUTLINED_FUNCTION_43_1();
  if (!v1)
  {
    v8 = v2;
    v9 = v0;
  }

  return v10(v8, v9);
}

uint64_t sub_1AC61DD78()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_8_2();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC61FB58();
}

uint64_t sub_1AC61DE00()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_7_3();
  v4 = *(v3 + 24);
  v5 = *v2;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  OUTLINED_FUNCTION_82();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1AC61DEFC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_8_2();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC61FFCC();
}

uint64_t sub_1AC61DF84()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;

  if (v1)
  {
    OUTLINED_FUNCTION_11_3();

    return v10();
  }

  else
  {
    *(v4 + 32) = v0;

    return MEMORY[0x1EEE6DFA0](sub_1AC61E0AC, 0, 0);
  }
}

uint64_t sub_1AC61E0AC()
{
  OUTLINED_FUNCTION_85();
  sub_1AC608F68(*(v0 + 32));
  OUTLINED_FUNCTION_82();

  return v1();
}

uint64_t sub_1AC61E11C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_8_2();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC61FD84();
}

uint64_t Assets.contextualNamedEntitySources(forApplication:taskName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC61E1C0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_8_2();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_42_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_41_1(v3);

  return sub_1AC620318();
}

uint64_t sub_1AC61E248()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_7_3();
  v4 = *(v3 + 56);
  v5 = *v2;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  OUTLINED_FUNCTION_82();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t Assets.contextualRankedContactSources(forApplication:taskName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC61E34C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_8_2();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_42_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_41_1(v3);

  return sub_1AC620978();
}

uint64_t Assets.geoLMRegionID(forLatitude:longitude:)()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v0;
  v1[2] = v2;
  v1[3] = v3;
  v4 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_126();
  v7 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v7);
  v9 = *(v8 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  v10 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC61E470()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 4);
  OUTLINED_FUNCTION_8_2();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_42_1(v2);
  *v3 = v4;
  v3[1] = sub_1AC61E500;
  v5 = v0[2];
  v6 = v0[3];

  return sub_1AC620F70(v5, v6);
}

uint64_t sub_1AC61E500()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 56);
  *v4 = *v1;
  v3[8] = v7;
  v3[9] = v8;

  if (v0)
  {
    v10 = v3[5];
    v9 = v3[6];

    OUTLINED_FUNCTION_27();

    return v11();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC61E640, 0, 0);
  }
}

uint64_t sub_1AC61E640()
{
  v1 = v0[9];
  v2 = v0[6];
  if (v1)
  {
    v3 = v0[5];

    OUTLINED_FUNCTION_43_1();
    v5 = v0[8];

    return v4(v5, v1);
  }

  else
  {
    v7 = v0[6];
    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      swift_once();
    }

    v8 = v0[8];
    v10 = v0[5];
    v9 = v0[6];
    v11 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_39();
    v12 = sub_1AC79FFC8();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(1, v12, v13);
    swift_willThrow();
    v15 = v0[5];
    v14 = v0[6];

    OUTLINED_FUNCTION_44();

    return v16();
  }
}

uint64_t ContextualNamedEntitySource.toDate.getter()
{
  v2 = OUTLINED_FUNCTION_56();
  v3 = *(type metadata accessor for ContextualNamedEntitySource(v2) + 24);
  v4 = sub_1AC79F8E8();
  v5 = OUTLINED_FUNCTION_80(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

void ContextualNamedEntitySource.init(sourceApplications:fromDate:toDate:limit:)()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *v6 = v8;
  v9 = type metadata accessor for ContextualNamedEntitySource(0);
  v10 = v9[5];
  v11 = sub_1AC79F8E8();
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 32);
  v13(&v7[v10], v5, v11);
  v13(&v7[v9[6]], v3, v11);
  *&v7[v9[7]] = v1;
  OUTLINED_FUNCTION_105();
}

BOOL static ContextualNamedEntitySource.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  sub_1AC61E98C();
  if (v5 & 1) != 0 && (v6 = type metadata accessor for ContextualNamedEntitySource(0), (OUTLINED_FUNCTION_65_2(v6)) && (v7 = *(v2 + 24), (sub_1AC79F8B8()))
  {
    return OUTLINED_FUNCTION_40_2();
  }

  else
  {
    return 0;
  }
}

void sub_1AC61E98C()
{
  OUTLINED_FUNCTION_62();
  if (v0 != v1 && (v2 = v1, v3 = OUTLINED_FUNCTION_16_1(v0, v1), v22))
  {
    v4 = 0;
    v5 = v3 + 56;
    v6 = 1 << *(v3 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v3 + 56);
    v9 = (v6 + 63) >> 6;
    v24 = v3;
    if (v8)
    {
      while (2)
      {
        v10 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_14:
        v14 = (*(v3 + 48) + 16 * (v10 | (v4 << 6)));
        v16 = *v14;
        v15 = v14[1];
        v17 = *(v2 + 40);
        sub_1AC7A0E78();

        sub_1AC7A0048();
        v18 = sub_1AC7A0EC8();
        v19 = ~(-1 << *(v2 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(v2 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            goto LABEL_25;
          }

          v21 = (*(v2 + 48) + 16 * v20);
          v22 = *v21 == v16 && v21[1] == v15;
          if (v22)
          {
            break;
          }

          v23 = sub_1AC7A0D38();
          v18 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        v3 = v24;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        goto LABEL_25;
      }

      ++v11;
      if (*(v5 + 8 * v4))
      {
        OUTLINED_FUNCTION_25_0();
        v8 = v13 & v12;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:
    OUTLINED_FUNCTION_61_0();
  }
}

void sub_1AC61EB64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t))
{
  if (a1 == a2)
  {
    return;
  }

  v6 = OUTLINED_FUNCTION_16_1(a1, a2);
  if (!v8)
  {
    return;
  }

  v9 = v7;
  v10 = 0;
  v12 = v6 + 56;
  v11 = *(v6 + 56);
  v13 = *(v6 + 32);
  OUTLINED_FUNCTION_33_1();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v20 = a2 + 56;
  v35 = v19;
  v36 = v14;
  if (!v17)
  {
    goto LABEL_6;
  }

  do
  {
    v21 = __clz(__rbit64(v17));
    v37 = (v17 - 1) & v17;
LABEL_11:
    v25 = *(*(v14 + 48) + 8 * (v21 | (v10 << 6)));
    v26 = *(a2 + 40);
    sub_1AC7A0E78();
    if (v25)
    {
      if (v25 == 1)
      {
        v27 = 1;
      }

      else
      {
        if (v25 != 2)
        {
          MEMORY[0x1B26E9A40](3);
          a4(v25);
          sub_1AC7A0768();
          goto LABEL_19;
        }

        v27 = 2;
      }
    }

    else
    {
      v27 = 0;
    }

    MEMORY[0x1B26E9A40](v27);
LABEL_19:
    v28 = sub_1AC7A0EC8();
    v29 = v4 << *(a2 + 32);
    v30 = v28 & ~v29;
    if (((*(v20 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
LABEL_38:
      v9(v25);
      return;
    }

    v31 = ~v29;
    while (1)
    {
      v32 = *(*(a2 + 48) + 8 * v30);
      if (v32)
      {
        break;
      }

      v9(0);
      if (!v25)
      {
        v33 = 0;
        goto LABEL_35;
      }

LABEL_32:
      v30 = (v30 + 1) & v31;
      if (((*(v20 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    if (v32 == 1)
    {
      v9(1uLL);
      v33 = 1;
      if (v25 == 1)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    if (v32 == 2)
    {
      v9(2uLL);
      v33 = 2;
      if (v25 == 2)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    if (v25 < 3)
    {
      goto LABEL_32;
    }

    sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
    a4(v32);
    v34 = sub_1AC7A0758();
    v9(v32);
    if ((v34 & 1) == 0)
    {
      goto LABEL_32;
    }

    v33 = v25;
LABEL_35:
    v9(v33);
    v19 = v35;
    v14 = v36;
    v4 = -1;
    v17 = v37;
  }

  while (v37);
LABEL_6:
  v22 = v10;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v19)
    {
      return;
    }

    ++v22;
    if (*(v12 + 8 * v10))
    {
      OUTLINED_FUNCTION_25_0();
      v37 = v24 & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1AC61EDF0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_78_0();
    OUTLINED_FUNCTION_16_1(v5, v6);
    if (v7)
    {
      v8 = 0;
      v10 = *(v3 + 56);
      v9 = v3 + 56;
      v11 = *(v9 - 24);
      OUTLINED_FUNCTION_33_1();
      v14 = v13 & v12;
      v16 = (v15 + 63) >> 6;
      while (v14)
      {
LABEL_10:
        v14 &= v14 - 1;
        v18 = *(v2 + 40);
        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](0);
        v19 = sub_1AC7A0EC8() & ~(v4 << *(v2 + 32));
        if (((*(v2 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          return;
        }
      }

      while (1)
      {
        v17 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v17 >= v16)
        {
          return;
        }

        v14 = *(v9 + 8 * v17);
        ++v8;
        if (v14)
        {
          v8 = v17;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_1AC61EEDC()
{
  OUTLINED_FUNCTION_62();
  if (v7 == v8 || (OUTLINED_FUNCTION_78_0(), OUTLINED_FUNCTION_16_1(v9, v10), !v11))
  {
LABEL_16:
    OUTLINED_FUNCTION_61_0();
    return;
  }

  OUTLINED_FUNCTION_19_1();
LABEL_5:
  if (v6)
  {
    OUTLINED_FUNCTION_57_2();
LABEL_12:
    OUTLINED_FUNCTION_45_3(v12);
    MEMORY[0x1B26E9A40](v1);
    v16 = sub_1AC7A0EC8();
    v17 = ~(v4 << *(v0 + 32));
    while (1)
    {
      OUTLINED_FUNCTION_44_1(v16, v17);
      if ((v19 & 1) == 0)
      {
        goto LABEL_16;
      }

      v16 = v18 + 1;
      if (*(*(v0 + 48) + v18) == v1)
      {
        goto LABEL_5;
      }
    }
  }

  v13 = v3;
  while (1)
  {
    v3 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v3 >= v5)
    {
      goto LABEL_16;
    }

    ++v13;
    if (*(v2 + 8 * v3))
    {
      OUTLINED_FUNCTION_25_0();
      v6 = v15 & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1AC61EFA8()
{
  OUTLINED_FUNCTION_62();
  if (v7 == v8 || (OUTLINED_FUNCTION_78_0(), OUTLINED_FUNCTION_16_1(v9, v10), !v11))
  {
LABEL_16:
    OUTLINED_FUNCTION_61_0();
    return;
  }

  OUTLINED_FUNCTION_19_1();
LABEL_5:
  if (v6)
  {
    OUTLINED_FUNCTION_57_2();
LABEL_12:
    OUTLINED_FUNCTION_45_3(v12);
    MEMORY[0x1B26E9A40](v1);
    v16 = sub_1AC7A0EC8();
    v17 = ~(v4 << *(v0 + 32));
    while (1)
    {
      OUTLINED_FUNCTION_44_1(v16, v17);
      if ((v19 & 1) == 0)
      {
        goto LABEL_16;
      }

      v16 = v18 + 1;
      if (v1 == *(*(v0 + 48) + v18))
      {
        goto LABEL_5;
      }
    }
  }

  v13 = v3;
  while (1)
  {
    v3 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v3 >= v5)
    {
      goto LABEL_16;
    }

    ++v13;
    if (*(v2 + 8 * v3))
    {
      OUTLINED_FUNCTION_25_0();
      v6 = v15 & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t ContextualNamedEntitySource.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_1AC6221D4(a1, *v1);
  v3 = type metadata accessor for ContextualNamedEntitySource(0);
  v4 = v3[5];
  sub_1AC79F8E8();
  OUTLINED_FUNCTION_6_3();
  sub_1AC622350(v5, v6);
  sub_1AC79FE58();
  v7 = v2 + v3[6];
  sub_1AC79FE58();
  return MEMORY[0x1B26E9A40](*(v2 + v3[7]));
}

uint64_t ContextualNamedEntitySource.hashValue.getter()
{
  v1 = v0;
  sub_1AC7A0E78();
  sub_1AC6221D4(v8, *v0);
  v2 = type metadata accessor for ContextualNamedEntitySource(0);
  v3 = v2[5];
  sub_1AC79F8E8();
  OUTLINED_FUNCTION_6_3();
  sub_1AC622350(v4, v5);
  OUTLINED_FUNCTION_51();
  sub_1AC79FE58();
  v6 = v1 + v2[6];
  OUTLINED_FUNCTION_51();
  sub_1AC79FE58();
  MEMORY[0x1B26E9A40](*(v1 + v2[7]));
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC61F20C(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1AC7A0E78();
  sub_1AC6221D4(v8, *v2);
  v5 = a2[5];
  sub_1AC79F8E8();
  sub_1AC622350(&qword_1EB56C020, MEMORY[0x1E6969530]);
  sub_1AC79FE58();
  v6 = v4 + a2[6];
  sub_1AC79FE58();
  MEMORY[0x1B26E9A40](*(v4 + a2[7]));
  return sub_1AC7A0EC8();
}

uint64_t ContextualRankedContactSource.sourceApplication.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t sub_1AC61F32C()
{
  v2 = OUTLINED_FUNCTION_56();
  v4 = *(v3(v2) + 20);
  v5 = sub_1AC79F8E8();
  v6 = OUTLINED_FUNCTION_80(v5);
  v8 = *(v7 + 16);

  return v8(v0, v1 + v4, v6);
}

uint64_t ContextualRankedContactSource.init(sourceApplication:rankDate:contactOnly:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for ContextualRankedContactSource(0);
  v11 = v10[5];
  v12 = sub_1AC79F8E8();
  OUTLINED_FUNCTION_80(v12);
  result = (*(v13 + 32))(&a6[v11], a3);
  a6[v10[6]] = a4;
  *&a6[v10[7]] = a5;
  return result;
}

BOOL static ContextualRankedContactSource.== infix(_:_:)(void *a1, void *a2)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (v5 || (sub_1AC7A0D38()) && (v6 = type metadata accessor for ContextualRankedContactSource(0), (OUTLINED_FUNCTION_65_2(v6)) && *(a1 + *(v2 + 24)) == *(a2 + *(v2 + 24)))
  {
    return OUTLINED_FUNCTION_40_2();
  }

  else
  {
    return 0;
  }
}

uint64_t ContextualRankedContactSource.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_1AC7A0048();
  v4 = type metadata accessor for ContextualRankedContactSource(0);
  v5 = v4[5];
  sub_1AC79F8E8();
  OUTLINED_FUNCTION_6_3();
  sub_1AC622350(v6, v7);
  sub_1AC79FE58();
  v8 = *(v1 + v4[6]);
  sub_1AC7A0E98();
  return MEMORY[0x1B26E9A40](*(v1 + v4[7]));
}

uint64_t ContextualRankedContactSource.hashValue.getter()
{
  sub_1AC7A0E78();
  ContextualRankedContactSource.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC61F5F8()
{
  sub_1AC7A0E78();
  ContextualRankedContactSource.hash(into:)();
  return sub_1AC7A0EC8();
}

void *sub_1AC61F634(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  swift_defaultActor_initialize();
  *(v6 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor__assetsService) = 0;
  *(v6 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor__modelProperties) = 0;
  v6[14] = a1;
  v6[15] = a3;
  v6[16] = a4;
  sub_1AC623D54(a5, v6 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor_modelOverridePath);
  *(v6 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor_isSpelling) = a6;
  *(v6 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor_shouldSubscribe) = a2;
  return v6;
}

uint64_t sub_1AC61F6D8()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_55(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_85_0(v4);

  return sub_1AC621794();
}

uint64_t sub_1AC61F75C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 32);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;

  if (v1)
  {
    OUTLINED_FUNCTION_11_3();

    return v10();
  }

  else
  {
    v12 = *(v4 + 24);
    *(v4 + 40) = v0;
    v13 = OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1AC61F87C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = [v1 modelRoot];

  sub_1AC79F7A8();
  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC61F910()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC61F9A0;

  return sub_1AC621794();
}

uint64_t sub_1AC61F9A0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_3();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_11_3();

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_47_1();
    v11 = OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC61FABC()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 32);
  v2 = [v1 modelVersion];

  v3 = sub_1AC79FF68();
  v5 = v4;

  OUTLINED_FUNCTION_43_1();

  return v6(v3, v5);
}

uint64_t sub_1AC61FB58()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC621794();
}

uint64_t sub_1AC61FBDC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_3();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_11_3();

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_47_1();
    v11 = OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC61FCF8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 32);
  v2 = [v1 modelTaskNames];

  sub_1AC7A0158();
  v3 = OUTLINED_FUNCTION_12_1();

  return v4(v3);
}

uint64_t sub_1AC61FD84()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC61FE14;

  return sub_1AC621794();
}

uint64_t sub_1AC61FE14()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_3();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_11_3();

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_47_1();
    v11 = OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC61FF30()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 32);
  v2 = [v1 modelQualityType];

  v3 = sub_1AC79FF68();
  v5 = v4;

  OUTLINED_FUNCTION_43_1();

  return v6(v3, v5);
}

uint64_t sub_1AC61FFCC()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return sub_1AC621794();
}

uint64_t sub_1AC620050()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_7_3();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_11_3();

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_47_1();
    v11 = OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

void sub_1AC62016C()
{
  v1 = *(v0 + 32);
  v2 = [v1 modelSamplingRates];

  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v3 = sub_1AC7A0158();

  v4 = sub_1AC61C24C(v3);
  if (v4)
  {
    v5 = v4;
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AC631164();
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = v14;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B26E95B0](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      v14 = v7;
      v11 = *(v7 + 16);
      if (v11 >= *(v7 + 24) >> 1)
      {
        sub_1AC631164();
      }

      ++v6;
      *(v7 + 16) = v11 + 1;
      *(v7 + 8 * v11 + 32) = v10;
    }

    while (v5 != v6);
  }

  v12 = OUTLINED_FUNCTION_12_1();

  v13(v12);
}

uint64_t sub_1AC620318()
{
  OUTLINED_FUNCTION_85();
  v5 = OUTLINED_FUNCTION_49_0(v1, v2, v3, v4);
  v6 = type metadata accessor for ContextualNamedEntitySource(v5);
  OUTLINED_FUNCTION_48_2(v6);
  v0[8] = v7;
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_126();
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_85_0(v10);

  return sub_1AC62139C();
}

uint64_t sub_1AC6203E4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 80);
  *v4 = *v1;
  v3[11] = v7;

  if (v0)
  {
    v8 = v3[9];

    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {
    v11 = v3[6];
    v12 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1AC620514()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[5];
  v2 = v0[3];
  OUTLINED_FUNCTION_66_1(&unk_1AC7AF198);

  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_30_0(v3);

  return v5(v4);
}

uint64_t sub_1AC6205B4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 96);
  *v4 = *v1;
  v3[13] = v7;
  v3[14] = v0;

  if (v0)
  {
    v8 = v3[6];
    v9 = sub_1AC620914;
  }

  else
  {
    v10 = v3[11];
    v11 = v3[6];

    v9 = sub_1AC6206CC;
    v8 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

void sub_1AC6206CC()
{
  v1 = sub_1AC61C24C(v0[13]);
  if (v1)
  {
    v2 = v1;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1AC6311A8();
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    v3 = 0;
    v4 = v0[13];
    v6 = v0[7];
    v5 = v0[8];
    v24 = v4 + 32;
    v25 = v4 & 0xC000000000000001;
    do
    {
      if (v25)
      {
        v7 = MEMORY[0x1B26E95B0](v3, v0[13]);
      }

      else
      {
        v7 = *(v24 + 8 * v3);
      }

      v8 = v7;
      v9 = v0[9];
      v10 = [v7 sourceApplications];
      v11 = sub_1AC7A0158();

      v12 = sub_1AC608FF4(v11);
      v13 = [v8 fromDate];
      v14 = v9 + v6[5];
      sub_1AC79F8C8();

      v15 = [v8 toDate];
      v16 = v9 + v6[6];
      sub_1AC79F8C8();

      v17 = [v8 limit];
      *v9 = v12;
      *(v9 + v6[7]) = v17;
      v18 = *(v26 + 16);
      if (v18 >= *(v26 + 24) >> 1)
      {
        sub_1AC6311A8();
      }

      v19 = v0[9];
      ++v3;
      *(v26 + 16) = v18 + 1;
      sub_1AC623DC4(v19, v26 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, type metadata accessor for ContextualNamedEntitySource);
    }

    while (v2 != v3);
  }

  v20 = v0[13];

  v21 = v0[9];

  v22 = OUTLINED_FUNCTION_12_1();

  v23(v22);
}

uint64_t sub_1AC620914()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[11];

  v2 = v0[14];
  v3 = v0[9];

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC620978()
{
  OUTLINED_FUNCTION_85();
  v5 = OUTLINED_FUNCTION_49_0(v1, v2, v3, v4);
  v6 = type metadata accessor for ContextualRankedContactSource(v5);
  OUTLINED_FUNCTION_48_2(v6);
  v0[8] = v7;
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_126();
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_85_0(v10);

  return sub_1AC62139C();
}

uint64_t sub_1AC620A44()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 80);
  *v4 = *v1;
  v3[11] = v7;

  if (v0)
  {
    v8 = v3[9];

    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {
    v11 = v3[6];
    v12 = OUTLINED_FUNCTION_37();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1AC620B74()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[5];
  v2 = v0[3];
  OUTLINED_FUNCTION_66_1(&unk_1AC7AF190);

  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_30_0(v3);

  return v5(v4);
}

uint64_t sub_1AC620C14()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 96);
  *v4 = *v1;
  v3[13] = v7;
  v3[14] = v0;

  if (v0)
  {
    v8 = v3[6];
    v9 = sub_1AC623E20;
  }

  else
  {
    v10 = v3[11];
    v11 = v3[6];

    v9 = sub_1AC620D2C;
    v8 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

void sub_1AC620D2C()
{
  v1 = sub_1AC61C24C(v0[13]);
  if (v1)
  {
    v2 = v1;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1AC631200();
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    v3 = 0;
    v4 = v0[13];
    v24 = v0[8];
    v25 = v0[9];
    v5 = v0[7];
    v22 = v4 + 32;
    v23 = v4 & 0xC000000000000001;
    v26 = v2;
    do
    {
      if (v23)
      {
        v6 = MEMORY[0x1B26E95B0](v3, v0[13]);
      }

      else
      {
        v6 = *(v22 + 8 * v3);
      }

      v7 = v6;
      v8 = v0[9];
      v9 = [v6 sourceApplication];
      v10 = sub_1AC79FF68();
      v12 = v11;

      v13 = [v7 rankDate];
      v14 = v8 + v5[5];
      sub_1AC79F8C8();

      LOBYTE(v13) = [v7 contactOnly];
      v15 = [v7 limit];

      *v8 = v10;
      *(v25 + 8) = v12;
      *(v8 + v5[6]) = v13;
      *(v8 + v5[7]) = v15;
      v16 = *(v27 + 16);
      if (v16 >= *(v27 + 24) >> 1)
      {
        sub_1AC631200();
      }

      v17 = v0[9];
      ++v3;
      *(v27 + 16) = v16 + 1;
      sub_1AC623DC4(v17, v27 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v16, type metadata accessor for ContextualRankedContactSource);
    }

    while (v26 != v3);
  }

  v18 = v0[13];

  v19 = v0[9];

  v20 = OUTLINED_FUNCTION_12_1();

  v21(v20);
}

uint64_t sub_1AC620F70(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = swift_task_alloc();
  *(v3 + 40) = v4;
  *v4 = v3;
  v4[1] = sub_1AC621004;

  return sub_1AC62139C();
}

uint64_t sub_1AC621004()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v4 = *(v2 + 40);
  v11 = *v1;
  *(v3 + 48) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1AC621124()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[6] + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_42_1(v2);
  *v3 = v4;
  v3[1] = sub_1AC6211B4;
  v5 = v0[2];
  v6 = v0[3];

  return sub_1AC6F2528();
}

uint64_t sub_1AC6211B4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_50();
  v7 = v6;
  OUTLINED_FUNCTION_19();
  *v8 = v7;
  v10 = *(v9 + 56);
  v11 = *v3;
  OUTLINED_FUNCTION_18();
  *v12 = v11;
  v7[8] = v2;

  if (v2)
  {
    v13 = v7[4];
    v14 = sub_1AC621340;
  }

  else
  {
    v7[9] = a2;
    v7[10] = a1;
    v14 = sub_1AC6212E0;
    v13 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, 0);
}

uint64_t sub_1AC6212E0()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[6];

  OUTLINED_FUNCTION_43_1();
  v4 = v0[9];
  v3 = v0[10];

  return v2(v3, v4);
}

uint64_t sub_1AC621340()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC6213BC()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor__assetsService;
  *(v0 + 24) = OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor__assetsService;
  if (*(v1 + v2))
  {
    OUTLINED_FUNCTION_82();
    v14 = v3;

    return v14(v4);
  }

  else
  {
    if (qword_1ED938050 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v6 = *(v1 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor_shouldSubscribe);
    v7 = v1[14];
    v8 = v1[15];
    v9 = v1[16];
    v10 = *(v1 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor_isSpelling);
    v11 = swift_task_alloc();
    v12 = OUTLINED_FUNCTION_55(v11);
    *v12 = v13;
    v12[1] = sub_1AC5C5DB4;

    return sub_1AC638828();
  }
}

uint64_t sub_1AC621544()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    v9 = *(v3 + 16);
    v10 = sub_1AC621648;
  }

  else
  {
    v10 = sub_1AC6216AC;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC621648()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[8];
  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC6216AC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1AC621714, v2, 0);
}

uint64_t sub_1AC621714()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];

  result = *(v2 + v3);
  if (result)
  {
    OUTLINED_FUNCTION_82();
    v7 = v5;

    return v7(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6217B4()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor__modelProperties;
  *(v0 + 24) = OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor__modelProperties;
  if (*(v1 + v2))
  {
    OUTLINED_FUNCTION_44();
    v11 = v3;
    v5 = v4;

    return v11(v5);
  }

  else
  {
    v7 = swift_task_alloc();
    v8 = OUTLINED_FUNCTION_55(v7);
    *v8 = v9;
    v8[1] = sub_1AC621890;
    v10 = *(v0 + 16);

    return sub_1AC62139C();
  }
}

uint64_t sub_1AC621890()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v4 = *(v2 + 32);
  v11 = *v1;
  *(v3 + 40) = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_74();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1AC6219B0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC6F2CF4();
}

uint64_t sub_1AC621A3C()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  v5[7] = v0;

  if (v0)
  {
    v11 = v5[2];
    v12 = sub_1AC621B58;
  }

  else
  {
    v5[8] = v3;
    v12 = sub_1AC621BB4;
    v11 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1AC621B58()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC621BB4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1AC621C1C, v2, 0);
}

void sub_1AC621C1C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + v2);
  *(v1 + v2) = v0[8];

  if (*(v1 + v2))
  {
    OUTLINED_FUNCTION_44();
    v7 = v4;
    v6 = v5;

    v7(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC621CA4()
{
  v1 = *(v0 + 128);

  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor_modelOverridePath, &qword_1EB56BB68, &qword_1AC7A8490);
  v2 = *(v0 + OBJC_IVAR____TtC6SpeechP33_6B1670AB856C3007E889A80D62F6F07E11AssetsActor__assetsService);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1AC621D14()
{
  v0 = sub_1AC621CA4();

  return MEMORY[0x1EEE6DEF0](v0);
}

void Assets.init(locale:clientID:modelOverridePath:)()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v41 = v2;
  v42 = v3;
  v5 = v4;
  v40 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v8 = OUTLINED_FUNCTION_167(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v39 = v11 - v12;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v37 - v14;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = sub_1AC79FB18();
  v19 = OUTLINED_FUNCTION_40(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v26 = (v24 - v25);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v37 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v37 - v31;
  v33 = *(v21 + 16);
  v33(&v37 - v31, v5, v18);
  v37 = v17;
  sub_1AC61CB64(v1, v17);
  v33(v30, v32, v18);
  v34 = v17;
  v35 = v38;
  sub_1AC61CB64(v34, v38);
  v33(v26, v30, v18);
  sub_1AC61CB64(v35, v39);
  sub_1AC61CBD4();
  sub_1AC5C720C(v1, &qword_1EB56BB68, &qword_1AC7A8490);
  v36 = *(v21 + 8);
  v36(v5, v18);
  sub_1AC5C720C(v35, &qword_1EB56BB68, &qword_1AC7A8490);
  v36(v30, v18);
  sub_1AC5C720C(v37, &qword_1EB56BB68, &qword_1AC7A8490);
  v36(v32, v18);
  OUTLINED_FUNCTION_105();
}

void Assets.init(locale:clientID:modelOverridePath:isSpelling:)()
{
  OUTLINED_FUNCTION_104();
  v35 = v0;
  v2 = v1;
  v34[1] = v3;
  v34[2] = v4;
  v6 = v5;
  v34[0] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v9 = OUTLINED_FUNCTION_167(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - v13;
  v15 = sub_1AC79FB18();
  v16 = OUTLINED_FUNCTION_40(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v34 - v25;
  v27 = *(v18 + 16);
  v27(v34 - v25, v6, v15);
  sub_1AC61CB64(v2, v14);
  v27(v23, v26, v15);
  v28 = OUTLINED_FUNCTION_54_1();
  sub_1AC61CB64(v28, v29);
  sub_1AC61CBD4();
  sub_1AC5C720C(v2, &qword_1EB56BB68, &qword_1AC7A8490);
  v30 = *(v18 + 8);
  v30(v6, v15);
  OUTLINED_FUNCTION_51();
  sub_1AC5C720C(v31, v32, v33);
  v30(v26, v15);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC622350(unint64_t *a1, void (*a2)(uint64_t))
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

char *initializeBufferWithCopyOfBuffer for Assets(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AC79FB18();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = a3[5];
    v9 = a3[6];
    v10 = &v4[v8];
    v11 = &a2[v8];
    v12 = *(v11 + 1);
    *v10 = *v11;
    *(v10 + 1) = v12;
    v13 = sub_1AC79F7F8();

    if (__swift_getEnumTagSinglePayload(&a2[v9], 1, v13))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
      memcpy(&v4[v9], &a2[v9], *(*(v14 - 8) + 64));
    }

    else
    {
      (*(*(v13 - 8) + 16))(&v4[v9], &a2[v9], v13);
      __swift_storeEnumTagSinglePayload(&v4[v9], 0, 1, v13);
    }

    v16 = a3[8];
    v4[a3[7]] = a2[a3[7]];
    v17 = *&a2[v16];
    *&v4[v16] = v17;
    *&v4[a3[9]] = *&a2[a3[9]];
    v18 = v17;
  }

  return v4;
}

uint64_t destroy for Assets(uint64_t a1, int *a2)
{
  v4 = sub_1AC79FB18();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + a2[5] + 8);

  v6 = a2[6];
  v7 = sub_1AC79F7F8();
  if (!__swift_getEnumTagSinglePayload(a1 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(a1 + v6, v7);
  }

  v8 = *(a1 + a2[9]);
}

uint64_t initializeWithCopy for Assets(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = sub_1AC79F7F8();

  if (__swift_getEnumTagSinglePayload(a2 + v8, 1, v12))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy((a1 + v8), (a2 + v8), *(*(v13 - 8) + 64));
  }

  else
  {
    (*(*(v12 - 8) + 16))(a1 + v8, a2 + v8, v12);
    __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v12);
  }

  v14 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v15 = *(a2 + v14);
  *(a1 + v14) = v15;
  *(a1 + a3[9]) = *(a2 + a3[9]);
  v16 = v15;

  return a1;
}

uint64_t assignWithCopy for Assets(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v10 = v8[1];
  v8[1] = v9[1];

  v11 = a3[6];
  v12 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v11, 1, v12);
  v14 = __swift_getEnumTagSinglePayload(a2 + v11, 1, v12);
  if (!EnumTagSinglePayload)
  {
    v15 = *(v12 - 8);
    if (!v14)
    {
      (*(v15 + 24))(a1 + v11, a2 + v11, v12);
      goto LABEL_7;
    }

    (*(v15 + 8))(a1 + v11, v12);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy((a1 + v11), (a2 + v11), *(*(v16 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
  __swift_storeEnumTagSinglePayload(a1 + v11, 0, 1, v12);
LABEL_7:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v17 = a3[8];
  v18 = *(a2 + v17);
  v19 = *(a1 + v17);
  *(a1 + v17) = v18;
  v20 = v18;

  v21 = a3[9];
  v22 = *(a2 + v21);
  v23 = *(a1 + v21);
  *(a1 + v21) = v22;

  return a1;
}

uint64_t initializeWithTake for Assets(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = sub_1AC79F7F8();
  if (__swift_getEnumTagSinglePayload(a2 + v7, 1, v8))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy((a1 + v7), (a2 + v7), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
    __swift_storeEnumTagSinglePayload(a1 + v7, 0, 1, v8);
  }

  v10 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v10) = *(a2 + v10);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t assignWithTake for Assets(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  v12 = v8[1];
  *v8 = v11;
  v8[1] = v10;

  v13 = a3[6];
  v14 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v13, 1, v14);
  v16 = __swift_getEnumTagSinglePayload(a2 + v13, 1, v14);
  if (!EnumTagSinglePayload)
  {
    v17 = *(v14 - 8);
    if (!v16)
    {
      (*(v17 + 40))(a1 + v13, a2 + v13, v14);
      goto LABEL_7;
    }

    (*(v17 + 8))(a1 + v13, v14);
    goto LABEL_6;
  }

  if (v16)
  {
LABEL_6:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy((a1 + v13), (a2 + v13), *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v14 - 8) + 32))(a1 + v13, a2 + v13, v14);
  __swift_storeEnumTagSinglePayload(a1 + v13, 0, 1, v14);
LABEL_7:
  v19 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v20 = *(a1 + v19);
  *(a1 + v19) = *(a2 + v19);

  v21 = a3[9];
  v22 = *(a1 + v21);
  *(a1 + v21) = *(a2 + v21);

  return a1;
}

void sub_1AC622D28()
{
  v0 = sub_1AC79FB18();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1AC622E1C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void sub_1AC622E1C()
{
  if (!qword_1ED937D70)
  {
    sub_1AC79F7F8();
    v0 = sub_1AC7A0798();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED937D70);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for ContextualNamedEntitySource(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v7 = a1;
    v8 = a3[5];
    v9 = sub_1AC79F8E8();
    v10 = *(*(v9 - 8) + 16);

    v10(&v7[v8], a2 + v8, v9);
    v10(&v7[a3[6]], a2 + a3[6], v9);
    *&v7[a3[7]] = *(a2 + a3[7]);
  }

  return v7;
}

uint64_t destroy for ContextualNamedEntitySource(char *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = *(a2 + 20);
  v6 = sub_1AC79F8E8();
  v9 = *(*(v6 - 8) + 8);
  (v9)((v6 - 8), &a1[v5], v6);
  v7 = &a1[*(a2 + 24)];

  return v9(v7, v6);
}

char *initializeWithCopy for ContextualNamedEntitySource(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AC79F8E8();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  v8(&a1[a3[6]], &a2[a3[6]], v7);
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *assignWithCopy for ContextualNamedEntitySource(char *a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a3[5];
  v8 = sub_1AC79F8E8();
  v9 = *(*(v8 - 8) + 24);
  v9(&a1[v7], &a2[v7], v8);
  v9(&a1[a3[6]], &a2[a3[6]], v8);
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *initializeWithTake for ContextualNamedEntitySource(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AC79F8E8();
  v8 = *(*(v7 - 8) + 32);
  v8(&a1[v6], &a2[v6], v7);
  v8(&a1[a3[6]], &a2[a3[6]], v7);
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *assignWithTake for ContextualNamedEntitySource(char *a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a3[5];
  v8 = sub_1AC79F8E8();
  v9 = *(*(v8 - 8) + 40);
  v9(&a1[v7], &a2[v7], v8);
  v9(&a1[a3[6]], &a2[a3[6]], v8);
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

uint64_t sub_1AC623350()
{
  result = sub_1AC79F8E8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for ContextualRankedContactSource(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *v4 = *a2;
    v4 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[5];
    v9 = sub_1AC79F8E8();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], &a2[v8], v9);
    v11 = a3[7];
    v4[a3[6]] = a2[a3[6]];
    *&v4[v11] = *&a2[v11];
  }

  return v4;
}

uint64_t destroy for ContextualRankedContactSource(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a2 + 20);
  v6 = sub_1AC79F8E8();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

char *initializeWithCopy for ContextualRankedContactSource(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = sub_1AC79F8E8();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  *&a1[v10] = *&a2[v10];
  return a1;
}

char *assignWithCopy for ContextualRankedContactSource(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  v7 = a3[5];
  v8 = sub_1AC79F8E8();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  a1[a3[6]] = a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *initializeWithTake for ContextualRankedContactSource(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AC79F8E8();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  *&a1[v8] = *&a2[v8];
  return a1;
}

char *assignWithTake for ContextualRankedContactSource(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = a3[5];
  v9 = sub_1AC79F8E8();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  v10 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  *&a1[v10] = *&a2[v10];
  return a1;
}

uint64_t sub_1AC623810()
{
  result = sub_1AC79F8E8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1AC6238E8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AC623920()
{
  sub_1AC622E1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1AC623A44(void *__src, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC7A0EC8();
  v6 = *(a2 + 56);
  v7 = *(a2 + 32);
  OUTLINED_FUNCTION_117_0();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;

  v14 = 0;
  for (i = 0; v10; v14 ^= v19)
  {
LABEL_6:
    v17 = *(*(a2 + 48) + ((i << 9) | (8 * __clz(__rbit64(v10)))));
    sub_1AC7A0E78();
    if (v17)
    {
      if (v17 == 1)
      {
        v18 = 1;
      }

      else
      {
        if (v17 != 2)
        {
          MEMORY[0x1B26E9A40](3);
          a3(v17);
          sub_1AC7A0768();
          goto LABEL_14;
        }

        v18 = 2;
      }
    }

    else
    {
      v18 = 0;
    }

    MEMORY[0x1B26E9A40](v18);
LABEL_14:
    v10 &= v10 - 1;
    v19 = sub_1AC7A0EC8();
    result = a4(v17);
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return MEMORY[0x1B26E9A40](v14);
    }

    v10 = *(a2 + 56 + 8 * v16);
    ++i;
    if (v10)
    {
      i = v16;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1AC623C80(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_15_2(a1, a2, a3, a4, a5, a6, a7, a8, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  sub_1AC7A0EC8();
  v9 = 0;
  v10 = 0;
  v12 = *(v8 + 56);
  v11 = v8 + 56;
  v13 = *(v11 - 24);
  OUTLINED_FUNCTION_117_0();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  if ((v15 & v14) != 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v19 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v19 >= v18)
    {
      MEMORY[0x1B26E9A40](v9);
      return;
    }

    v16 = *(v11 + 8 * v19);
    ++v10;
    if (v16)
    {
      v10 = v19;
      do
      {
LABEL_6:
        v16 &= v16 - 1;
        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](0);
        v9 ^= sub_1AC7A0EC8();
      }

      while (v16);
    }
  }

  __break(1u);
}

uint64_t sub_1AC623D54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC623DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_39();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_8_2()
{
  result = type metadata accessor for Assets(0);
  v2 = *(v0 + *(result + 36));
  return result;
}

uint64_t OUTLINED_FUNCTION_30_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[2];
  v6 = v2[3];
  return v2[11];
}

uint64_t OUTLINED_FUNCTION_46_2()
{
  v0 = type metadata accessor for AssetsActor(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_48_2(uint64_t a1)
{
  *(v1 + 56) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_66_1@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

void sub_1AC623F78(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_1AC79FDE8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  SFLogInitIfNeeded();
  if (*a3)
  {
    v6 = *a3;
    sub_1AC79FDF8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_1AC624048(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v22 = MEMORY[0x1E69E7CC0];
    v21 = *(a1 + 16);
    sub_1AC63129C();
    v4 = sub_1AC6C2CA0(a1);
    v5 = v21;
    v6 = 0;
    v7 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_25;
        }

        v9 = *(*(a1 + 48) + v4);
        v10 = *(v22 + 16);
        if (v10 >= *(v22 + 24) >> 1)
        {
          v20 = v2;
          v19 = v3;
          sub_1AC63129C();
          v3 = v19;
          v2 = v20;
          v7 = a1 + 56;
          v5 = v21;
        }

        *(v22 + 16) = v10 + 1;
        *(v22 + v10 + 32) = v9 + 3;
        if (v3)
        {
          goto LABEL_29;
        }

        v11 = 1 << *(a1 + 32);
        if (v4 >= v11)
        {
          goto LABEL_26;
        }

        v12 = *(v7 + 8 * v8);
        if ((v12 & (1 << v4)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_28;
        }

        v13 = v12 & (-2 << (v4 & 0x3F));
        if (v13)
        {
          v11 = __clz(__rbit64(v13)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = v8 << 6;
          v15 = v8 + 1;
          v16 = (a1 + 64 + 8 * v8);
          while (v15 < (v11 + 63) >> 6)
          {
            v18 = *v16++;
            v17 = v18;
            v14 += 64;
            ++v15;
            if (v18)
            {
              sub_1AC637E98(v4, v2, 0);
              v7 = a1 + 56;
              v5 = v21;
              v11 = __clz(__rbit64(v17)) + v14;
              goto LABEL_19;
            }
          }

          sub_1AC637E98(v4, v2, 0);
          v7 = a1 + 56;
          v5 = v21;
        }

LABEL_19:
        if (++v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v11;
        if (v11 < 0)
        {
          break;
        }
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
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1AC62428C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v22 = MEMORY[0x1E69E7CC0];
    v21 = *(a1 + 16);
    sub_1AC631258();
    v4 = sub_1AC6C2CA0(a1);
    v5 = v21;
    v6 = 0;
    v7 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_25;
        }

        v9 = *(*(a1 + 48) + v4);
        v10 = *(v22 + 16);
        if (v10 >= *(v22 + 24) >> 1)
        {
          v20 = v2;
          v19 = v3;
          sub_1AC631258();
          v3 = v19;
          v2 = v20;
          v7 = a1 + 56;
          v5 = v21;
        }

        *(v22 + 16) = v10 + 1;
        *(v22 + v10 + 32) = v9;
        if (v3)
        {
          goto LABEL_29;
        }

        v11 = 1 << *(a1 + 32);
        if (v4 >= v11)
        {
          goto LABEL_26;
        }

        v12 = *(v7 + 8 * v8);
        if ((v12 & (1 << v4)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_28;
        }

        v13 = v12 & (-2 << (v4 & 0x3F));
        if (v13)
        {
          v11 = __clz(__rbit64(v13)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = v8 << 6;
          v15 = v8 + 1;
          v16 = (a1 + 64 + 8 * v8);
          while (v15 < (v11 + 63) >> 6)
          {
            v18 = *v16++;
            v17 = v18;
            v14 += 64;
            ++v15;
            if (v18)
            {
              sub_1AC637E98(v4, v2, 0);
              v7 = a1 + 56;
              v5 = v21;
              v11 = __clz(__rbit64(v17)) + v14;
              goto LABEL_19;
            }
          }

          sub_1AC637E98(v4, v2, 0);
          v7 = a1 + 56;
          v5 = v21;
        }

LABEL_19:
        if (++v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v11;
        if (v11 < 0)
        {
          break;
        }
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
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

BOOL sub_1AC6244CC()
{
  sub_1AC79FBC8();
  sub_1AC633400(&qword_1EB56C4F8, MEMORY[0x1E6969C28]);
  sub_1AC7A0498();
  sub_1AC7A04E8();
  return v2 == v1;
}

void DictationTranscriber.__allocating_init(locale:preset:)()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v23 = v3;
  v4 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v5 = OUTLINED_FUNCTION_167(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v8 = sub_1AC79FB18();
  v9 = OUTLINED_FUNCTION_40(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v14 = *(v11 + 16);
  v15 = OUTLINED_FUNCTION_142();
  v16(v15);
  v17 = *v2;
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_40_3();
  sub_1AC633280();
  v18 = v2[1];
  v19 = v2[2];
  v20 = v2[3];
  v21 = *(v0 + 48);
  v22 = *(v0 + 52);
  swift_allocObject();

  OUTLINED_FUNCTION_142();
  DictationTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  sub_1AC6332D8();
  (*(v11 + 8))(v23, v8);
  OUTLINED_FUNCTION_105();
}

void DictationTranscriber.__allocating_init(locale:contentHints:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_25();
  v4 = type metadata accessor for DictationTranscriber.ModelOptions(v3);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v9 = (v8 - v7);
  v10 = sub_1AC79FB18();
  v11 = OUTLINED_FUNCTION_40(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  (*(v13 + 16))(v17 - v16, v0, v10);
  *v9 = 0;
  v9[1] = 0;
  v18 = v5[7];
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = (v9 + v5[8]);
  *v23 = 0;
  v23[1] = 0;
  *(v9 + v5[9]) = MEMORY[0x1E69E7CC0];
  *(v9 + v5[10]) = 0;
  *(v9 + v5[11]) = 0;
  *(v9 + v5[12]) = 0;
  *(v9 + v5[13]) = 0;
  *(v9 + v5[14]) = &unk_1F212ED78;
  v24 = *(v2 + 48);
  v25 = *(v2 + 52);
  swift_allocObject();
  DictationTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  v26 = *(v13 + 8);
  v27 = OUTLINED_FUNCTION_118_1();
  v28(v27);
  OUTLINED_FUNCTION_105();
}

uint64_t DictationTranscriber.ModelOptions.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = v2[5];
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_65_0();
  result = __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v9 = (a1 + v2[6]);
  *v9 = 0;
  v9[1] = 0;
  *(a1 + v2[7]) = MEMORY[0x1E69E7CC0];
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = 0;
  *(a1 + v2[10]) = 0;
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = &unk_1F212EDA0;
  return result;
}

uint64_t DictationTranscriber.__allocating_init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_16_2();
  DictationTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  return v3;
}

void DictationTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  OUTLINED_FUNCTION_104();
  v206 = v1;
  v211 = v2;
  v209 = v3;
  v5 = v4;
  v7 = v6;
  v202 = v8;
  v203 = v0;
  v186 = *v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v12);
  v199 = &v186 - v13;
  OUTLINED_FUNCTION_70_0();
  v201 = sub_1AC79FB18();
  v14 = OUTLINED_FUNCTION_40(v201);
  v200 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v198 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v21 = OUTLINED_FUNCTION_167(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v210 = v24 - v25;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_91();
  v205 = v27;
  v28 = OUTLINED_FUNCTION_70_0();
  v207 = type metadata accessor for TranscriberCommon.ModelOptions(v28);
  v29 = OUTLINED_FUNCTION_80(v207);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_6();
  v208 = v33 - v32;
  v34 = OUTLINED_FUNCTION_70_0();
  v204 = type metadata accessor for DictationTranscriber.ModelOptions(v34);
  v35 = *(v5 + *(v204 + 48));
  v36 = *(v35 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  v212 = v5;
  v213 = v7;
  v188 = v35;
  if (v36)
  {
    v215[0] = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v36, 0);
    v38 = v215[0];
    v39 = (v35 + 32);
    OUTLINED_FUNCTION_114();
    OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_52_1();
    OUTLINED_FUNCTION_110_1();
    v49 = 0x746F687354;
    do
    {
      v50 = *v39++;
      v51 = 0xE90000000000006ELL;
      v52 = 0x6F69746174636944;
      switch(v50)
      {
        case 1:
          v52 = v44;
          v51 = v43;
          break;
        case 2:
          v52 = v45;
          v51 = 0xE900000000000068;
          break;
        case 3:
          v52 = 0xD000000000000011;
          v51 = v42;
          break;
        case 4:
          v51 = 0xE90000000000006CLL;
          v52 = v46;
          break;
        case 5:
          v51 = 0xEA0000000000676ELL;
          v52 = v47;
          break;
        case 6:
          v52 = 0x6F69746174636944;
          v51 = v48;
          break;
        case 7:
          v51 = 0xE700000000000000;
          v52 = v40;
          break;
        case 8:
          v51 = 0xE800000000000000;
          v52 = v41;
          break;
        case 9:
          v51 = 0xE500000000000000;
          v52 = v49;
          break;
        default:
          break;
      }

      v215[0] = v38;
      v53 = *(v38 + 16);
      if (v53 >= *(v38 + 24) >> 1)
      {
        OUTLINED_FUNCTION_64_3();
        v197 = v55;
        v57 = v56;
        sub_1AC6310CC(v58, v59, v60);
        OUTLINED_FUNCTION_110_1();
        OUTLINED_FUNCTION_52_1();
        OUTLINED_FUNCTION_111();
        OUTLINED_FUNCTION_112();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_114();
        v43 = v57;
        v42 = v197;
        v38 = v215[0];
      }

      *(v38 + 16) = v53 + 1;
      v54 = v38 + 16 * v53;
      *(v54 + 32) = v52;
      *(v54 + 40) = v51;
      --v36;
    }

    while (v36);
    v5 = v212;
    v7 = v213;
    v37 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  v215[0] = v37;
  v62 = v7 + 56;
  v61 = *(v7 + 56);
  v63 = *(v7 + 32);
  OUTLINED_FUNCTION_117_0();
  v66 = v65 & v64;
  v68 = (v67 + 63) >> 6;

  v69 = 0;
  while (v66)
  {
LABEL_24:
    v71 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v72 = (v69 << 9) | (8 * v71);
    v36 = *(*(v7 + 48) + v72);
    if (v36 >= 3)
    {
      v73 = sub_1AC61C264(*(*(v7 + 48) + v72));
      MEMORY[0x1B26E8CF0](v73);
      if (*((v215[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v215[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AC7A0178();
      }

      sub_1AC7A0198();
      v37 = v215[0];
      v7 = v213;
    }
  }

  while (1)
  {
    v70 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
      goto LABEL_101;
    }

    if (v70 >= v68)
    {
      break;
    }

    v66 = *(v62 + 8 * v70);
    ++v69;
    if (v66)
    {
      v69 = v70;
      goto LABEL_24;
    }
  }

  if (off_1ED937D60 != -1)
  {
    goto LABEL_102;
  }

LABEL_29:
  v74 = sub_1AC79FDE8();
  v75 = __swift_project_value_buffer(v74, qword_1ED9386C8);
  v76 = sub_1AC61C24C(v37);
  v77 = v204;
  if (v76 <= 1)
  {
    v193 = v37;
    sub_1AC79F7F8();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
    v82 = *(v7 + 16);
    v187 = v75;
    if (!v82 || (v83 = *(v7 + 40), sub_1AC7A0E78(), MEMORY[0x1B26E9A40](1), v84 = sub_1AC7A0EC8(), OUTLINED_FUNCTION_51_2(v84), (v85 & 1) == 0))
    {
LABEL_40:
      v197 = 0;
      goto LABEL_41;
    }

    while (1)
    {
      v86 = *(*(v7 + 48) + 8 * v36);
      if (v86)
      {
        v87 = v86 == 2;
      }

      else
      {
        v87 = 1;
      }

      if (v87)
      {
        (sub_1AC623E3C)();
      }

      else if (v86 == 1)
      {
        v197 = 1;
        (sub_1AC623E3C)();
LABEL_41:
        v89 = *(v5 + 8);
        v195 = *v5;
        v90 = v77[5];
        sub_1AC5C6E6C();
        v91 = *(v5 + v77[7]);
        v92 = *(v5 + v77[9]);
        v93 = (v5 + v77[6]);
        v94 = v93[1];
        v191 = *v93;
        v95 = *(v7 + 16);
        v196 = v92;
        v194 = v89;
        v192 = v91;
        v190 = v94;
        if (!v95)
        {

          HIDWORD(v189) = 0;
LABEL_51:
          v100 = v212;
          goto LABEL_52;
        }

        v96 = *(v7 + 40);
        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](2);
        v97 = sub_1AC7A0EC8() & ~(-1 << *(v7 + 32));
        v98 = *(v62 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8));

        if (((v98 >> v97) & 1) == 0)
        {
          HIDWORD(v189) = 0;
          goto LABEL_51;
        }

        v100 = v212;
        v99 = v213;
        while (2)
        {
          v101 = *(*(v99 + 48) + 8 * v97);
          if (v101 < 2)
          {
            sub_1AC623E3C(v101);
            goto LABEL_47;
          }

          if (v101 != 2)
          {
LABEL_47:
            OUTLINED_FUNCTION_17_2();
            if ((v102 & 1) == 0)
            {
              HIDWORD(v189) = 0;
              goto LABEL_52;
            }

            continue;
          }

          break;
        }

        sub_1AC623E3C(2);
        HIDWORD(v189) = 1;
LABEL_52:
        v103 = *(v100 + v77[8]);
        v104 = *(v100 + v77[10]);
        v105 = *(v100 + v77[11]);
        v106 = v193;
        if (sub_1AC61C24C(v193))
        {
          sub_1AC61C25C(0, (v106 & 0xC000000000000001) == 0, v106);
          if ((v106 & 0xC000000000000001) != 0)
          {

            v108 = MEMORY[0x1B26E95B0](0, v106);
          }

          else
          {
            v107 = *(v106 + 32);

            v108 = v107;
          }

          v109 = v108;
        }

        else
        {

          v109 = 0;
        }

        v37 = v208;
        sub_1AC637E08();
        v110 = v207;
        *(v37 + v207[5]) = v197;
        v111 = (v37 + v110[6]);
        v112 = v194;
        *v111 = v195;
        v111[1] = v112;
        v113 = v110[7];
        sub_1AC637E08();
        *(v37 + v110[9]) = v192;
        v114 = (v37 + v110[8]);
        v115 = v190;
        *v114 = v191;
        v114[1] = v115;
        *(v37 + v110[10]) = BYTE4(v189);
        *(v37 + v110[11]) = v103;
        *(v37 + v110[12]) = v196;
        *(v37 + v110[15]) = v104;
        *(v37 + v110[13]) = v105;
        *(v37 + v110[14]) = v109;
        v116 = v213;
        if (!*(v213 + 16))
        {
          v123 = 0;
          v119 = v211;
          goto LABEL_68;
        }

        v117 = *(v213 + 40);
        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](0);
        v118 = sub_1AC7A0EC8();
        OUTLINED_FUNCTION_51_2(v118);
        v119 = v211;
        if ((v120 & 1) == 0)
        {
LABEL_63:
          v123 = 0;
          goto LABEL_68;
        }

        while (2)
        {
          v121 = *(*(v116 + 48) + 8 * &qword_1AC7A8490);
          if ((v121 - 1) < 2)
          {
            sub_1AC623E3C(v121);
            goto LABEL_62;
          }

          if (v121)
          {
LABEL_62:
            OUTLINED_FUNCTION_17_2();
            if ((v122 & 1) == 0)
            {
              goto LABEL_63;
            }

            continue;
          }

          break;
        }

        sub_1AC623E3C(0);
        v123 = 1;
LABEL_68:
        v124 = sub_1AC625A64(3u, v119);
        v125 = sub_1AC625A64(2u, v119);
        v126 = v125;
        if (v124)
        {
          v127 = 1;
          if (v123 & v125)
          {
            v128 = 0;
            v129 = 0;
            goto LABEL_77;
          }

LABEL_72:
          v130 = sub_1AC79FDC8();
          v131 = sub_1AC7A05D8();
          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            *v132 = 67110144;
            *(v132 + 4) = v124 & 1;
            *(v132 + 8) = 1024;
            *(v132 + 10) = v123;
            *(v132 + 14) = 1024;
            *(v132 + 16) = v126 & 1;
            *(v132 + 20) = 1024;
            *(v132 + 22) = v127 & 1;
            *(v132 + 26) = 1024;
            *(v132 + 28) = 0;
            _os_log_impl(&dword_1AC5BC000, v130, v131, "DictationTranscriber: Remapped selected (repSing %{BOOL}d, expShort %{BOOL}d, repFreq %{BOOL}d) to actual (single %{BOOL}d, longer %{BOOL}d)", v132, 0x20u);
            v133 = v132;
            v119 = v211;
            MEMORY[0x1B26EAB10](v133, -1, -1);
          }

          v128 = 0;
          if (v127)
          {
            v127 = 1;
            v129 = 0;
            goto LABEL_77;
          }
        }

        else
        {
          LOBYTE(v127) = v125 ^ 1;
          LOBYTE(v128) = v125 ^ 1;
          if (v123)
          {
            goto LABEL_72;
          }
        }

        v129 = v128;
        v128 = sub_1AC625A64(4u, v119);
        v127 = 0;
LABEL_77:
        v7 = 0;
        sub_1AC624048(v209);
        LODWORD(v205) = v128;
        LODWORD(v210) = v127;
        v215[0] = sub_1AC6090E4(v134);
        sub_1AC6102B0(v214, 1, v135, v136, v137, v138, v139, v140, v186, v187);
        if (v129)
        {
          sub_1AC6102B0(v214, 2, v141, v142, v143, v144, v145, v146, v186, v187);
        }

        v148 = v119 + 56;
        v147 = *(v119 + 56);
        v149 = *(v119 + 32);
        OUTLINED_FUNCTION_117_0();
        v5 = v151 & v150;
        OUTLINED_FUNCTION_108_1();

        v36 = 0;
        v152 = MEMORY[0x1E69E7CC0];
        while (v5)
        {
LABEL_85:
          v154 = __clz(__rbit64(v5));
          v5 &= v5 - 1;
          v155 = *(*(v119 + 48) + (v154 | (v36 << 6)));
          switch(v155)
          {
            case 2:
            case 3:
            case 4:
              continue;
            case 5:
              v155 = 2;
              goto LABEL_90;
            case 6:
              v155 = 3;
              goto LABEL_90;
            case 7:
              v155 = 4;
              goto LABEL_90;
            case 8:
              v155 = 5;
              goto LABEL_90;
            default:
LABEL_90:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_31_2();
                sub_1AC60DC84();
                v152 = v156;
              }

              v37 = *(v152 + 16);
              if (v37 >= *(v152 + 24) >> 1)
              {
                OUTLINED_FUNCTION_33_2();
                sub_1AC60DC84();
                v152 = v157;
              }

              *(v152 + 16) = v37 + 1;
              *(v152 + v37 + 32) = v155;
              v119 = v211;
              break;
          }
        }

        while (1)
        {
          v153 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          if (v153 >= v62)
          {

            v158 = sub_1AC6091C8(v152);
            sub_1AC62428C(v206);
            v160 = sub_1AC6090B4(v159);
            v161 = [objc_opt_self() standardUserDefaults];
            v162 = sub_1AC79FF58();
            v163 = [v161 BOOLForKey_];

            v197 = v158;
            v196 = v160;
            LODWORD(v204) = (v163 & 1) == 0 && *(v188 + 16) && (*(v188 + 32) & 0xFC) == 4;
            v164 = v203;
            v165 = v200;
            v203 = *(v200 + 16);
            v166 = v202;
            v167 = v201;
            (v203)(v198, v202, v201);
            v168 = v199;
            sub_1AC633280();
            __swift_storeEnumTagSinglePayload(v168, 0, 1, v207);
            v169 = v215[0];
            v170 = type metadata accessor for TranscriberCommon(0);
            v171 = *(v170 + 48);
            v172 = *(v170 + 52);
            swift_allocObject();
            LOBYTE(v185) = v204;
            v184 = v196;
            v173 = OUTLINED_FUNCTION_39();
            sub_1AC74B560(v173, v174, v38, 3, v210, v175, v169, v197, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
            v177 = v176;
            (*(v165 + 8))(v166, v167);
            sub_1AC6332D8();
            *(v164 + OBJC_IVAR____TtC6Speech20DictationTranscriber_common) = v177;
            (v203)(v164 + OBJC_IVAR____TtC6Speech20DictationTranscriber_locale, v177 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v167);
            *(v164 + OBJC_IVAR____TtC6Speech20DictationTranscriber_contentHints) = v213;
            OUTLINED_FUNCTION_9_3();
            sub_1AC637C7C();
            *(v164 + OBJC_IVAR____TtC6Speech20DictationTranscriber_transcriptionOptions) = v209;
            *(v164 + OBJC_IVAR____TtC6Speech20DictationTranscriber_reportingOptions) = v211;
            *(v164 + OBJC_IVAR____TtC6Speech20DictationTranscriber_resultAttributeOptions) = v206;
            OUTLINED_FUNCTION_105();
            return;
          }

          v5 = *(v148 + 8 * v153);
          ++v36;
          if (v5)
          {
            v36 = v153;
            goto LABEL_85;
          }
        }

LABEL_101:
        __break(1u);
LABEL_102:
        swift_once();
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_17_2();
      if ((v88 & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  v178 = sub_1AC79FDC8();
  v179 = sub_1AC7A05F8();
  if (os_log_type_enabled(v178, v179))
  {
    v180 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v215[0] = v181;
    *v180 = 136315138;
    *(v180 + 4) = sub_1AC5CFE74(0xD00000000000003CLL, 0x80000001AC7B5890, v215);
    _os_log_impl(&dword_1AC5BC000, v178, v179, "Failed precondition: %s", v180, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v181);
    MEMORY[0x1B26EAB10](v181, -1, -1);
    MEMORY[0x1B26EAB10](v180, -1, -1);
  }

  __break(1u);
  v182 = *(*v203 + 48);
  v183 = *(*v203 + 52);
  swift_deallocPartialClassInstance();
  __break(1u);
}

uint64_t sub_1AC625934(char a1)
{
  result = 0x6F69746174636944;
  switch(a1)
  {
    case 1:
      result = 0x7463694469726953;
      break;
    case 2:
      result = 0x6372616553626557;
      break;
    case 3:
      result = OUTLINED_FUNCTION_53_2();
      break;
    case 4:
      result = 0x69614D6563696F56;
      break;
    case 5:
      result = 0x696E6F6974706143;
      break;
    case 7:
      result = OUTLINED_FUNCTION_52_1();
      break;
    case 8:
      result = 0x676E696C6C657053;
      break;
    case 9:
      result = 0x746F687354;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AC625A64(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    v5 = *(a2 + 40);
    sub_1AC7A0E78();
    MEMORY[0x1B26E9A40](v4);
    v6 = sub_1AC7A0EC8();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + v8) != v4);
  }

  return v2;
}

uint64_t sub_1AC625B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AC6C2CA0(a1);
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_79_1();
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    sub_1AC6377CC(v8, v9, a1, a2);
    v11 = 0;
  }

  v12 = sub_1AC79FB18();

  return __swift_storeEnumTagSinglePayload(a2, v11, 1, v12);
}

uint64_t sub_1AC625BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for TranscriptionSegment();
  v5 = v4;
  if (v3)
  {
    v6 = *(*(v4 - 8) + 80);
    sub_1AC633280();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v5);
}

uint64_t sub_1AC625C74@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t sub_1AC625D20(uint64_t a1)
{
  result = sub_1AC6C2CA0();
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_79_1();
  if (v8)
  {
    return 0;
  }

  else
  {
    return sub_1AC637754(v6, v7, 0, a1);
  }
}

uint64_t sub_1AC625D94(uint64_t a1)
{
  result = sub_1AC637A8C(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_79_1();
  if (v8)
  {
    return 0;
  }

  else
  {
    return sub_1AC637ACC(v6, v7, 0, a1);
  }
}

void *sub_1AC625DF0(uint64_t a1)
{
  result = sub_1AC76BEFC();
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_1AC637B1C(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_1AC625E90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = v6;
  if (v5)
  {
    v8 = *(*(v6 - 8) + 80);
    OUTLINED_FUNCTION_89_0();
    sub_1AC5C6E6C();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v9, 1, v7);
}

void sub_1AC625F4C()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v2 = sub_1AC79F558();
  v3 = OUTLINED_FUNCTION_40(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25[-v12];
  sub_1AC79F568();
  sub_1AC633400(&qword_1EB56C480, MEMORY[0x1E69687C8]);
  OUTLINED_FUNCTION_123_1();
  sub_1AC7A0498();
  OUTLINED_FUNCTION_123_1();
  sub_1AC7A04E8();
  sub_1AC633400(&qword_1EB56C488, MEMORY[0x1E69687B0]);
  v14 = sub_1AC79FED8();
  v15 = *(v5 + 8);
  v15(v10, v2);
  if (v14)
  {
    v15(v13, v2);
    sub_1AC79F538();
    OUTLINED_FUNCTION_65_0();
  }

  else
  {
    v20 = sub_1AC7A0518();
    v22 = v21;
    v23 = sub_1AC79F538();
    OUTLINED_FUNCTION_80(v23);
    (*(v24 + 16))(v1, v22, v23);
    v20(v25, 0);
    v15(v13, v2);
    v16 = v1;
    v17 = 0;
    v18 = 1;
    v19 = v23;
  }

  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC626198()
{
  v0 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v0, qword_1EB56C078);
  v1 = OUTLINED_FUNCTION_39();
  v3 = __swift_project_value_buffer(v1, v2);
  *v3 = sub_1AC724260(&unk_1F212EDC8);
  result = DictationTranscriber.ModelOptions.init()((v3 + *(v0 + 32)));
  v5 = MEMORY[0x1E69E7CD0];
  v3[1] = MEMORY[0x1E69E7CD0];
  v3[2] = v5;
  v3[3] = v5;
  return result;
}

uint64_t DictationTranscriber.Preset.init(contentHints:transcriptionOptions:reportingOptions:attributeOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  OUTLINED_FUNCTION_28_1();
  v10 = (a5 + v9);
  v11 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  *v10 = 0;
  v10[1] = 0;
  v12 = v11[5];
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_65_0();
  result = __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v18 = (v10 + v11[6]);
  *v18 = 0;
  v18[1] = 0;
  *(v10 + v11[7]) = MEMORY[0x1E69E7CC0];
  *(v10 + v11[8]) = 0;
  *(v10 + v11[9]) = 0;
  *(v10 + v11[10]) = 0;
  *(v10 + v11[11]) = 0;
  *(v10 + v11[12]) = &unk_1F212EDA0;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1AC6262FC()
{
  v0 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v0, qword_1EB56C090);
  v1 = __swift_project_value_buffer(v0, qword_1EB56C090);
  v2 = sub_1AC724260(&unk_1F212EDF0);
  sub_1AC72424C();
  v4 = v3;
  *v1 = v2;
  result = DictationTranscriber.ModelOptions.init()((v1 + *(v0 + 32)));
  v6 = MEMORY[0x1E69E7CD0];
  v1[1] = v4;
  v1[2] = v6;
  v1[3] = v6;
  return result;
}

uint64_t sub_1AC6263B0()
{
  v0 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v0, qword_1EB56C0A8);
  v1 = __swift_project_value_buffer(v0, qword_1EB56C0A8);
  v2 = sub_1AC724260(&unk_1F212EE40);
  sub_1AC72424C();
  v4 = v3;
  sub_1AC724238();
  v6 = v5;
  *v1 = v2;
  result = DictationTranscriber.ModelOptions.init()((v1 + *(v0 + 32)));
  v1[1] = v4;
  v1[2] = v6;
  v1[3] = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t sub_1AC62647C()
{
  v0 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v0, qword_1EB56C0C0);
  v1 = __swift_project_value_buffer(v0, qword_1EB56C0C0);
  sub_1AC72424C();
  v3 = v2;
  v4 = MEMORY[0x1E69E7CD0];
  *v1 = MEMORY[0x1E69E7CD0];
  result = DictationTranscriber.ModelOptions.init()((v1 + *(v0 + 32)));
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v4;
  return result;
}

uint64_t sub_1AC626520()
{
  v0 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v0, qword_1EB56C0D8);
  v1 = OUTLINED_FUNCTION_39();
  v3 = __swift_project_value_buffer(v1, v2);
  sub_1AC72424C();
  v5 = v4;
  sub_1AC724238();
  v7 = v6;
  v8 = MEMORY[0x1E69E7CD0];
  *v3 = MEMORY[0x1E69E7CD0];
  result = DictationTranscriber.ModelOptions.init()((v3 + *(v0 + 32)));
  v3[1] = v5;
  v3[2] = v7;
  v3[3] = v8;
  return result;
}

uint64_t sub_1AC6265D8()
{
  v0 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v0, qword_1EB56C0F0);
  v1 = __swift_project_value_buffer(v0, qword_1EB56C0F0);
  sub_1AC72424C();
  v3 = v2;
  sub_1AC724224();
  v5 = v4;
  v6 = MEMORY[0x1E69E7CD0];
  *v1 = MEMORY[0x1E69E7CD0];
  result = DictationTranscriber.ModelOptions.init()((v1 + *(v0 + 32)));
  v1[1] = v3;
  v1[2] = v6;
  v1[3] = v5;
  return result;
}

uint64_t DictationTranscriber.Preset.init(contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  *a5 = a1;
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_9_3();
  result = sub_1AC637C7C();
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1AC626800(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = OUTLINED_FUNCTION_74_0();
  v8 = __swift_project_value_buffer(v6, v7);
  v9 = (v8 + *(v5 + 32));
  v10 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  *v9 = 0;
  v9[1] = 0;
  v11 = v10[5];
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_65_0();
  result = __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v17 = (v9 + v10[6]);
  *v17 = 0;
  v17[1] = 0;
  *(v9 + v10[7]) = MEMORY[0x1E69E7CC0];
  *(v9 + v10[8]) = 0;
  *(v9 + v10[9]) = 0;
  *(v9 + v10[10]) = 0;
  *(v9 + v10[11]) = 0;
  *(v9 + v10[12]) = a3;
  v18 = MEMORY[0x1E69E7CD0];
  *v8 = MEMORY[0x1E69E7CD0];
  v8[1] = v18;
  v8[2] = v18;
  v8[3] = v18;
  return result;
}

uint64_t sub_1AC626A44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v6 = (v5 - 8);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v10 = (v9 - v8);
  v11 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v11, a2);
  v12 = OUTLINED_FUNCTION_117();
  v14 = __swift_project_value_buffer(v12, v13);
  *v10 = 0;
  v10[1] = 0;
  v15 = v6[7];
  sub_1AC79F7F8();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = (v10 + v6[8]);
  *v20 = 0;
  v20[1] = 0;
  *(v10 + v6[9]) = MEMORY[0x1E69E7CC0];
  *(v10 + v6[10]) = 0;
  *(v10 + v6[11]) = 0;
  *(v10 + v6[12]) = 0;
  *(v10 + v6[13]) = 0;
  *(v10 + v6[14]) = a3;
  sub_1AC724238();
  v22 = v21;
  v23 = MEMORY[0x1E69E7CD0];
  *v14 = MEMORY[0x1E69E7CD0];
  v24 = *(v11 + 32);
  OUTLINED_FUNCTION_9_3();
  result = sub_1AC637C7C();
  v14[1] = v23;
  v14[2] = v22;
  v14[3] = v23;
  return result;
}

void sub_1AC626EF0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    OUTLINED_FUNCTION_124_0();
    swift_once();
  }

  __swift_project_value_buffer(v7, a4);
  OUTLINED_FUNCTION_41_2();
  sub_1AC633280();
  sub_1AC6102CC(&v15 + 7, 6, v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1AC626FBC(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for DictationTranscriber.Preset(0);
  __swift_project_value_buffer(v3, a2);
  OUTLINED_FUNCTION_41_2();
  return sub_1AC633280();
}

uint64_t DictationTranscriber.Preset.contentHints.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t DictationTranscriber.Preset.transcriptionOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t DictationTranscriber.Preset.reportingOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t DictationTranscriber.Preset.attributeOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t DictationTranscriber.Preset.modelOptions.getter()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_40_3();
  return sub_1AC633280();
}

uint64_t DictationTranscriber.Preset.modelOptions.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = v1 + *(type metadata accessor for DictationTranscriber.Preset(v2) + 32);

  return sub_1AC63332C(v0, v3);
}

uint64_t DictationTranscriber.Preset.modelOptions.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for DictationTranscriber.Preset(v0) + 32);
  return OUTLINED_FUNCTION_58();
}

void static DictationTranscriber.Preset.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_0();
  sub_1AC61EB38(*v2, *v3);
  if (v4 & 1) != 0 && (sub_1AC623E28(v1[1], v0[1]) & 1) != 0 && (sub_1AC623E28(v1[2], v0[2]) & 1) != 0 && (sub_1AC623E2C(v1[3], v0[3]))
  {
    OUTLINED_FUNCTION_28_1();

    static DictationTranscriber.ModelOptions.== infix(_:_:)();
  }
}

void static DictationTranscriber.ModelOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_78_0();
  v3 = sub_1AC79F7F8();
  v4 = OUTLINED_FUNCTION_40(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C320, &qword_1AC7A87A0);
  OUTLINED_FUNCTION_80(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_49_1();
  v22 = v1[1];
  v23 = v0[1];
  if (v22)
  {
    if (!v23)
    {
      goto LABEL_19;
    }

    v24 = *v1 == *v0 && v22 == v23;
    if (!v24 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v23)
  {
    goto LABEL_19;
  }

  v25 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v26 = v1;
  v27 = v0;
  v65 = v25;
  v66 = v26;
  v28 = *(v25 + 20);
  v29 = *(v18 + 48);
  sub_1AC5C6E6C();
  v30 = v27;
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_96(v2, 1, v3);
  if (!v24)
  {
    OUTLINED_FUNCTION_142();
    sub_1AC5C6E6C();
    OUTLINED_FUNCTION_96(v2 + v29, 1, v3);
    if (!v31)
    {
      (*(v6 + 32))(v11, v2 + v29, v3);
      OUTLINED_FUNCTION_39_2();
      sub_1AC633400(v32, v33);
      v34 = sub_1AC79FED8();
      v35 = *(v6 + 8);
      v36 = OUTLINED_FUNCTION_98();
      v35(v36);
      (v35)(v17, v3);
      v30 = v27;
      sub_1AC5C720C(v2, &qword_1EB56BB68, &qword_1AC7A8490);
      if ((v34 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    (*(v6 + 8))(v17, v3);
LABEL_18:
    sub_1AC5C720C(v2, &qword_1EB56C320, &qword_1AC7A87A0);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_96(v2 + v29, 1, v3);
  if (!v24)
  {
    goto LABEL_18;
  }

  sub_1AC5C720C(v2, &qword_1EB56BB68, &qword_1AC7A8490);
LABEL_21:
  v38 = v65;
  v37 = v66;
  v39 = v65[6];
  v40 = (v66 + v39);
  v41 = *(v66 + v39 + 8);
  v42 = (v30 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43)
    {
      goto LABEL_19;
    }

    v44 = *v40 == *v42 && v41 == v43;
    if (!v44 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v43)
  {
    goto LABEL_19;
  }

  v45 = v38[7];
  v46 = *(v37 + v45);
  v47 = *(v30 + v45);
  OUTLINED_FUNCTION_10_2();
  sub_1AC629144();
  if ((v48 & 1) != 0 && *(v37 + v38[8]) == *(v30 + v38[8]))
  {
    v49 = v38[9];
    v50 = *(v30 + v49);
    if (*(v37 + v49))
    {
      if (!v50)
      {
        goto LABEL_19;
      }

      v51 = *(v30 + v49);

      v52 = OUTLINED_FUNCTION_98();
      sub_1AC630858(v52, v53);
      v55 = v54;

      if ((v55 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v50)
    {
      goto LABEL_19;
    }

    v56 = v38[10];
    v57 = *(v30 + v56);
    if (*(v37 + v56))
    {
      if (!v57)
      {
        goto LABEL_19;
      }

      v58 = *(v30 + v56);

      v59 = OUTLINED_FUNCTION_98();
      v61 = sub_1AC629308(v59, v60);

      if ((v61 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v57)
    {
      goto LABEL_19;
    }

    if (*(v37 + v38[11]) == *(v30 + v38[11]))
    {
      v62 = v38[12];
      v63 = *(v37 + v62);
      v64 = *(v30 + v62);
      sub_1AC6294D8();
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_105();
}

uint64_t DictationTranscriber.Preset.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  sub_1AC623A18(v10, *v0);
  sub_1AC623E34(v10, v0[1]);
  sub_1AC623E34(v10, v0[2]);
  sub_1AC623E34(v10, v0[3]);
  OUTLINED_FUNCTION_28_1();
  DictationTranscriber.ModelOptions.hash(into:)(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6277BC(uint64_t a1, uint64_t a2)
{
  sub_1AC7A0E78();
  sub_1AC623A18(v14, *v2);
  sub_1AC623E34(v14, v2[1]);
  sub_1AC623E34(v14, v2[2]);
  sub_1AC623E34(v14, v2[3]);
  v4 = v2 + *(a2 + 32);
  DictationTranscriber.ModelOptions.hash(into:)(v14, v5, v6, v7, v8, v9, v10, v11, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC62785C(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
  }

  if (a2 < 3)
  {
    return 0;
  }

  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  return OUTLINED_FUNCTION_132() & 1;
}

uint64_t sub_1AC6278E8(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x1B26E9A40](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x1B26E9A40](v2);
    case 2:
      v2 = 2;
      return MEMORY[0x1B26E9A40](v2);
  }

  MEMORY[0x1B26E9A40](3);
  return sub_1AC7A0768();
}

uint64_t sub_1AC627950(uint64_t a1)
{
  OUTLINED_FUNCTION_85_1();
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (a1 != 2)
      {
        MEMORY[0x1B26E9A40](3);
        sub_1AC7A0768();
        return sub_1AC7A0EC8();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B26E9A40](v2);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6279E8()
{
  v1 = *v0;
  sub_1AC7A0E78();
  sub_1AC6278E8(v3, v1);
  return sub_1AC7A0EC8();
}

BOOL static DictationTranscriber.ContentHint.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else if (v2 == 2)
    {
      if (v3 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v3 < 3)
      {
        return 0;
      }

      sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
      if ((OUTLINED_FUNCTION_132() & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return !v3;
}

uint64_t DictationTranscriber.ContentHint.hash(into:)()
{
  v1 = *v0;
  if (!*v0)
  {
    v2 = 0;
    return MEMORY[0x1B26E9A40](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1B26E9A40](v2);
  }

  if (v1 == 2)
  {
    v2 = 2;
    return MEMORY[0x1B26E9A40](v2);
  }

  MEMORY[0x1B26E9A40](3);
  return sub_1AC7A0768();
}

uint64_t DictationTranscriber.ContentHint.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1B26E9A40](3);
        sub_1AC7A0768();
        return sub_1AC7A0EC8();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B26E9A40](v2);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC627BB8()
{
  v1 = *v0;
  sub_1AC7A0E78();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1B26E9A40](3);
        sub_1AC7A0768();
        return sub_1AC7A0EC8();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B26E9A40](v2);
  return sub_1AC7A0EC8();
}

uint64_t DictationTranscriber.ModelOptions.geoLMRegionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t DictationTranscriber.ModelOptions.geoLMRegionID.setter()
{
  OUTLINED_FUNCTION_78_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DictationTranscriber.ModelOptions.modelOverrideURL.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = v1 + *(type metadata accessor for DictationTranscriber.ModelOptions(v2) + 20);

  return sub_1AC633390(v0, v3);
}

uint64_t DictationTranscriber.ModelOptions.modelOverrideURL.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for DictationTranscriber.ModelOptions(v0) + 20);
  return OUTLINED_FUNCTION_58();
}

uint64_t DictationTranscriber.ModelOptions.taskForMemoryLock.getter()
{
  v1 = (v0 + *(type metadata accessor for DictationTranscriber.ModelOptions(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t DictationTranscriber.ModelOptions.taskForMemoryLock.setter()
{
  OUTLINED_FUNCTION_78_0();
  v3 = (v1 + *(type metadata accessor for DictationTranscriber.ModelOptions(0) + 24));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t DictationTranscriber.ModelOptions.taskForMemoryLock.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for DictationTranscriber.ModelOptions(v0) + 24);
  return OUTLINED_FUNCTION_58();
}

uint64_t DictationTranscriber.ModelOptions.speechProfiles.getter()
{
  v1 = *(v0 + *(type metadata accessor for DictationTranscriber.ModelOptions(0) + 28));
}

uint64_t DictationTranscriber.ModelOptions.speechProfiles.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for DictationTranscriber.ModelOptions(v2) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t DictationTranscriber.ModelOptions.speechProfiles.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for DictationTranscriber.ModelOptions(v0) + 28);
  return OUTLINED_FUNCTION_58();
}

uint64_t DictationTranscriber.ModelOptions.enableParallelLoading.setter(char a1)
{
  result = type metadata accessor for DictationTranscriber.ModelOptions(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t DictationTranscriber.ModelOptions.enableParallelLoading.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for DictationTranscriber.ModelOptions(v0) + 32);
  return OUTLINED_FUNCTION_58();
}

uint64_t DictationTranscriber.ModelOptions.userIdMask.getter()
{
  v1 = *(v0 + *(type metadata accessor for DictationTranscriber.ModelOptions(0) + 36));
}

uint64_t DictationTranscriber.ModelOptions.userIdMask.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for DictationTranscriber.ModelOptions(v2) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t DictationTranscriber.ModelOptions.userIdMask.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for DictationTranscriber.ModelOptions(v0) + 36);
  return OUTLINED_FUNCTION_58();
}

uint64_t DictationTranscriber.ModelOptions.speechProfileContainers.getter()
{
  v1 = *(v0 + *(type metadata accessor for DictationTranscriber.ModelOptions(0) + 40));
}

uint64_t DictationTranscriber.ModelOptions.speechProfileContainers.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for DictationTranscriber.ModelOptions(v2) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t DictationTranscriber.ModelOptions.speechProfileContainers.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for DictationTranscriber.ModelOptions(v0) + 40);
  return OUTLINED_FUNCTION_58();
}

uint64_t DictationTranscriber.ModelOptions.enableFullPayloadCorrection.setter(char a1)
{
  result = type metadata accessor for DictationTranscriber.ModelOptions(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t DictationTranscriber.ModelOptions.enableFullPayloadCorrection.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for DictationTranscriber.ModelOptions(v0) + 44);
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_1AC628178()
{
  v0 = sub_1AC7A0BF8();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AC6281C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1AC628178();
  *a2 = result;
  return result;
}

uint64_t sub_1AC6281F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC625934(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AC628244(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_46_3(a1, a2);
  if (!v13)
  {
    return 0;
  }

  if (!v2 || result == v4)
  {
    return 1;
  }

  v5 = 0;
  v6 = result + 32;
  v7 = v4 + 32;
  while (v5 != v2)
  {
    v8 = (v6 + 24 * v5);
    result = *v8;
    v9 = v8[1];
    v10 = v8[2];
    v11 = (v7 + 24 * v5);
    v12 = v11[2];
    v13 = result == *v11 && v9 == v11[1];
    if (!v13)
    {
      result = sub_1AC7A0D38();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v14 = *(v10 + 16);
    if (v14 != *(v12 + 16))
    {
      return 0;
    }

    if (v14)
    {
      v15 = v10 == v12;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = (v10 + 40);
      v17 = (v12 + 40);
      while (v14)
      {
        result = *(v16 - 1);
        if (result != *(v17 - 1) || *v16 != *v17)
        {
          result = sub_1AC7A0D38();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v16 += 2;
        v17 += 2;
        if (!--v14)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      break;
    }

LABEL_25:
    ++v5;
    result = 1;
    if (v5 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC628354(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_46_3(a1, a2);
  if (!v11)
  {
    return 0;
  }

  if (v2 && v5 != v6)
  {
    v7 = v5 + 48;
    v8 = v6 + 48;
    do
    {
      OUTLINED_FUNCTION_90_1();
      v11 = v11 && v9 == v10;
      if (v11)
      {
        if (v3 != v4)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_1AC7A0D38();
        result = 0;
        if ((v12 & 1) == 0 || v3 != v4)
        {
          return result;
        }
      }

      v7 += 24;
      v8 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1AC6283F4()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    v4 = sub_1AC7A08E8();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v0 >> 62)
  {
    v5 = sub_1AC7A08E8();
  }

  else
  {
    v5 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 != v5)
  {
    return 0;
  }

  if (v4)
  {
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 < 0)
    {
      v6 = v1;
    }

    if (!v3)
    {
      v6 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v7 = v0 & 0xFFFFFFFFFFFFFF8;
    if (v0 < 0)
    {
      v7 = v0;
    }

    if (!(v0 >> 62))
    {
      v7 = (v0 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    if (v6 != v7)
    {
      if (v4 < 0)
      {
        __break(1u);
      }

      else
      {
        sub_1AC61C25C(0, (v1 & 0xC000000000000001) == 0, v1);
        if ((v1 & 0xC000000000000001) == 0)
        {
          v8 = *(v1 + 32);

LABEL_19:
          sub_1AC61C25C(0, (v0 & 0xC000000000000001) == 0, v0);
          if ((v0 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1B26E95B0](0, v0);
            swift_unknownObjectRelease();
          }

          return 0;
        }
      }

      MEMORY[0x1B26E95B0](0, v1);
      goto LABEL_19;
    }
  }

  return 1;
}

uint64_t sub_1AC62852C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_46_3(a1, a2);
  if (v7)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v5 = (v3 + 40);
    for (i = (v4 + 40); ; i += 2)
    {
      v7 = *(v5 - 1) == *(i - 1) && *v5 == *i;
      if (!v7 && (sub_1AC7A0D38() & 1) == 0)
      {
        break;
      }

      v5 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1AC628640()
{
  OUTLINED_FUNCTION_104();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1 && (v3 = v0 + 32, v4 = v1 + 32, v5 = *(v0 + 32), v6 = *(v1 + 32), v7 = *(v5 + 16), v7 == *(v6 + 16)))
  {
    v8 = 1;
    while (!v7 || v5 == v6)
    {
LABEL_42:
      if (v8 == v2)
      {
        goto LABEL_49;
      }

      if (v8 >= v2)
      {
        goto LABEL_52;
      }

      v5 = *(v3 + 8 * v8);
      v6 = *(v4 + 8 * v8++);
      v7 = *(v5 + 16);
      if (v7 != *(v6 + 16))
      {
        goto LABEL_49;
      }
    }

    v15 = v2;
    v16 = v8;
    v17 = v4;
    v18 = v3;

    v9 = 0;
    v19 = v7 - 1;
    v10 = 32;
    while (v9 < *(v5 + 16))
    {
      memcpy(__dst, (v5 + v10), sizeof(__dst));
      if (v9 >= *(v6 + 16))
      {
        goto LABEL_51;
      }

      memcpy(v22, (v6 + v10), 0xA0uLL);
      if (__dst[0] != v22[0] || __dst[1] != v22[1])
      {
        OUTLINED_FUNCTION_57_0();
        if ((sub_1AC7A0D38() & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      sub_1AC637BCC(__dst, v20);
      sub_1AC637BCC(v22, v20);
      OUTLINED_FUNCTION_77();
      if ((sub_1AC7A06A8() & 1) == 0 || (sub_1AC7A06A8() & 1) == 0 || (sub_1AC7A06A8() & 1) == 0 || *&__dst[11] != *&v22[11] || LOBYTE(__dst[12]) != LOBYTE(v22[12]) || BYTE1(__dst[12]) != BYTE1(v22[12]) || (__dst[13] == v22[13] ? (v12 = __dst[14] == v22[14]) : (v12 = 0), !v12 && (sub_1AC7A0D38() & 1) == 0))
      {
        sub_1AC637C28(v22);
        sub_1AC637C28(__dst);
LABEL_48:

        goto LABEL_49;
      }

      if (__dst[15] == v22[15] && __dst[16] == v22[16])
      {
        sub_1AC637C28(v22);
        sub_1AC637C28(__dst);
      }

      else
      {
        v14 = sub_1AC7A0D38();
        sub_1AC637C28(v22);
        sub_1AC637C28(__dst);
        if ((v14 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      if (LOBYTE(__dst[17]) != LOBYTE(v22[17]) || BYTE1(__dst[17]) != BYTE1(v22[17]) || BYTE2(__dst[17]) != BYTE2(v22[17]) || *&__dst[18] != *&v22[18] || *&__dst[19] != *&v22[19])
      {
        goto LABEL_48;
      }

      if (v19 == v9)
      {

        v4 = v17;
        v3 = v18;
        v2 = v15;
        v8 = v16;
        goto LABEL_42;
      }

      v10 += 160;
      ++v9;
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {
LABEL_49:
    OUTLINED_FUNCTION_105();
  }
}

void sub_1AC628938()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v4 = sub_1AC79F5C8();
  v5 = OUTLINED_FUNCTION_40(v4);
  v78 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v77 = v9 - v10;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_91();
  v79 = v12;
  OUTLINED_FUNCTION_70_0();
  v13 = type metadata accessor for TranscriptionSegment();
  v14 = OUTLINED_FUNCTION_107_0(v13);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v76 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v22 = *(v3 + 16);
  if (v22 == *(v1 + 16) && v22 && v3 != v1)
  {
    v70 = v19;
    v71 = &v61 - v21;
    v23 = 0;
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = v3 + v24;
    v26 = v79;
    v74 = (v78 + 8);
    v75 = v78 + 16;
    v27 = *(v20 + 72);
    v67 = v25;
    v68 = v22;
    v65 = v27;
    v66 = v1 + v24;
    while (1)
    {
      OUTLINED_FUNCTION_1_4();
      sub_1AC633280();
      if (v23 == v22)
      {
        goto LABEL_62;
      }

      v69 = v23;
      OUTLINED_FUNCTION_1_4();
      sub_1AC633280();
      OUTLINED_FUNCTION_124_0();
      if ((sub_1AC79F518() & 1) == 0 || (v28 = v70[5], v29 = *&v71[v28], v30 = *&v76[v28], v31 = *(v29 + 16), v31 != *(v30 + 16)))
      {
LABEL_58:
        sub_1AC6332D8();
        sub_1AC6332D8();
        goto LABEL_59;
      }

      if (v31 && v29 != v30)
      {
        v32 = 0;
        v33 = *(v78 + 80);
        OUTLINED_FUNCTION_89_0();
        v72 = (v30 + v34);
        v73 = (v29 + v34);
        while (v32 < *(v29 + 16))
        {
          v35 = *(v78 + 72) * v32;
          v36 = *(v78 + 16);
          v36(v26, &v73[v35], v4);
          if (v32 >= *(v30 + 16))
          {
            goto LABEL_61;
          }

          v37 = v77;
          v36(v77, &v72[v35], v4);
          OUTLINED_FUNCTION_37_2();
          sub_1AC633400(&qword_1EB56BD60, v38);
          v39 = sub_1AC79FED8();
          v40 = *v74;
          v41 = v37;
          v26 = v79;
          (*v74)(v41, v4);
          v40(v26, v4);
          if ((v39 & 1) == 0)
          {
            goto LABEL_58;
          }

          if (v31 == ++v32)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_15:
      v42 = v70[6];
      v43 = *&v71[v42];
      v44 = *&v76[v42];
      v45 = *(v43 + 16);
      if (v45 != *(v44 + 16))
      {
        goto LABEL_58;
      }

      v46 = !v45 || v43 == v44;
      v47 = v69;
      if (!v46)
      {
        break;
      }

LABEL_21:
      v48 = v70[7];
      v49 = *&v71[v48];
      v50 = *&v76[v48];
      sub_1AC628640();
      v52 = v51;
      sub_1AC6332D8();
      OUTLINED_FUNCTION_124_0();
      sub_1AC6332D8();
      if (v52)
      {
        v23 = v47 + 1;
        v22 = v68;
        if (v23 != v68)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    v53 = 0;
    v54 = (v43 + 32);
    v55 = (v44 + 32);
    v63 = *(v43 + 16);
    v64 = v44;
    v62 = v43;
    while (v53 < *(v43 + 16))
    {
      v72 = v54;
      memcpy(v81, v54, sizeof(v81));
      if (v53 >= *(v44 + 16))
      {
        goto LABEL_64;
      }

      memcpy(v82, v55, 0xA0uLL);
      v56 = v81[0] == v82[0] && v81[1] == v82[1];
      if (!v56 && (sub_1AC7A0D38() & 1) == 0)
      {
        goto LABEL_58;
      }

      v73 = v55;
      sub_1AC637BCC(v81, v80);
      sub_1AC637BCC(v82, v80);
      if ((sub_1AC7A06A8() & 1) == 0 || (sub_1AC7A06A8() & 1) == 0 || (sub_1AC7A06A8() & 1) == 0 || *&v81[11] != *&v82[11] || LOBYTE(v81[12]) != LOBYTE(v82[12]) || BYTE1(v81[12]) != BYTE1(v82[12]) || (v81[13] == v82[13] ? (v57 = v81[14] == v82[14]) : (v57 = 0), !v57 && (sub_1AC7A0D38() & 1) == 0))
      {
        sub_1AC637C28(v82);
        sub_1AC637C28(v81);
        goto LABEL_58;
      }

      if (v81[15] == v82[15] && v81[16] == v82[16])
      {
        sub_1AC637C28(v82);
        sub_1AC637C28(v81);
        v26 = v79;
        v60 = v73;
      }

      else
      {
        v59 = sub_1AC7A0D38();
        sub_1AC637C28(v82);
        sub_1AC637C28(v81);
        v26 = v79;
        v60 = v73;
        if ((v59 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      if (LOBYTE(v81[17]) != LOBYTE(v82[17]) || BYTE1(v81[17]) != BYTE1(v82[17]) || BYTE2(v81[17]) != BYTE2(v82[17]) || *&v81[18] != *&v82[18] || *&v81[19] != *&v82[19])
      {
        goto LABEL_58;
      }

      ++v53;
      v54 = v72 + 160;
      v55 = v60 + 160;
      v44 = v64;
      v43 = v62;
      if (v63 == v53)
      {
        goto LABEL_21;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  else
  {
LABEL_59:
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_1AC628F98(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_78_1(a1, a2);
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v6 = (v3 + 32);
    for (i = (v4 + 32); ; i += 160)
    {
      memcpy(__dst, v6, sizeof(__dst));
      memcpy(v12, v6, sizeof(v12));
      memcpy(v14, i, sizeof(v14));
      memcpy(__src, i, sizeof(__src));
      sub_1AC637BCC(__dst, v10);
      sub_1AC637BCC(v14, v10);
      v8 = static TranscriptionToken.== infix(_:_:)(v12, __src);
      memcpy(v15, __src, sizeof(v15));
      sub_1AC637C28(v15);
      memcpy(v16, v12, sizeof(v16));
      sub_1AC637C28(v16);
      if ((v8 & 1) == 0)
      {
        break;
      }

      v6 += 160;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}