uint64_t sub_29E6BB470(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_29E754DD8();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_29E6BD468(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_29E6BB770(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v61 = a2;
  v58 = a1;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for TestOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E752098();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v54 - v17;
  sub_29E752048();

  v19 = sub_29E752088();
  v20 = sub_29E7546C8();

  v21 = os_log_type_enabled(v19, v20);
  v60 = ObjectType;
  if (v21)
  {
    v56 = v16;
    v57 = v10;
    v54 = v12;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v62 = v23;
    *v22 = 136446722;
    v24 = sub_29E755178();
    v26 = sub_29E6B9C90(v24, v25, &v62);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    if (!a3)
    {
LABEL_15:

      __break(1u);
      goto LABEL_16;
    }

    v55 = v11;
    result = sub_29E6B9C90(v61, a3, &v62);
    *(v22 + 14) = result;
    *(v22 + 22) = 2082;
    if (!a4)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v28 = sub_29E754088();
    v30 = sub_29E6B9C90(v28, v29, &v62);

    *(v22 + 24) = v30;
    _os_log_impl(&dword_29E5ED000, v19, v20, "[%{public}s] Executing test %{public}s with options %{public}s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v23, -1, -1);
    MEMORY[0x29ED98410](v22, -1, -1);

    v11 = v55;
    v31 = *(v54 + 8);
    v31(v18, v55);
    v16 = v56;
    v10 = v57;
    v32 = v61;
  }

  else
  {

    v31 = *(v12 + 8);
    result = (v31)(v18, v11);
    v32 = v61;
    if (!a4)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  sub_29E6BAC3C(v33, v10);
  if (!a3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v34 = sub_29E6BECD4();
  v35 = v60;
  if (v34 == 5)
  {
    sub_29E752048();

    v36 = sub_29E752088();
    v37 = v16;
    v38 = sub_29E7546A8();

    if (os_log_type_enabled(v36, v38))
    {
      v39 = swift_slowAlloc();
      v55 = v11;
      v57 = v10;
      v40 = v39;
      v41 = swift_slowAlloc();
      v56 = v37;
      v42 = v32;
      v43 = v41;
      v62 = v41;
      *v40 = 136446466;
      v44 = sub_29E755178();
      v46 = sub_29E6B9C90(v44, v45, &v62);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_29E6B9C90(v42, a3, &v62);
      _os_log_impl(&dword_29E5ED000, v36, v38, "[%{public}s] No test configured by name %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v43, -1, -1);
      v47 = v40;
      v10 = v57;
      MEMORY[0x29ED98410](v47, -1, -1);

      v49 = v55;
      v48 = v56;
    }

    else
    {

      v48 = v37;
      v49 = v11;
    }

    v31(v48, v49);
    v53 = 0;
  }

  else
  {
    v50 = v34;
    v51 = sub_29E7544C8();
    MEMORY[0x2A1C7C4A8](v51);
    *(&v54 - 64) = v50;
    *(&v54 - 7) = v32;
    *(&v54 - 6) = a3;
    v52 = v59;
    *(&v54 - 5) = v58;
    *(&v54 - 4) = v10;
    *(&v54 - 3) = v52;
    *(&v54 - 2) = v35;
    v53 = sub_29E607DD8(sub_29E6BED7C, (&v54 - 10), "SleepHealthAppPlugin/SleepPPT.swift");
  }

  sub_29E6BED20(v10);
  return v53 & 1;
}

void sub_29E6BBCB4(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v9 = v8;
  v43 = a6;
  v44 = a7;
  v49 = a5;
  v51 = a8;
  v52 = a4;
  v46 = a2;
  v47 = a3;
  v11 = sub_29E752098();
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TestOptions();
  v42 = *(v15 - 8);
  v16 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  sub_29E7544C8();
  v50 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      goto LABEL_21;
    }
  }

  else if (a1 >= 2u)
  {
LABEL_14:

    goto LABEL_22;
  }

  v48 = v8;
  v17 = [objc_opt_self() sharedBehavior];
  if (!v17)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v18 = v17;
  v19 = [v17 hksp_supportsSleep];

  if (!v19)
  {
    sub_29E752048();
    v20 = v47;

    v21 = sub_29E752088();
    v22 = sub_29E7546A8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v53 = v24;
      *v23 = 136446466;
      v25 = sub_29E755178();
      v27 = sub_29E6B9C90(v25, v26, &v53);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      if (!v20)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      *(v23 + 14) = sub_29E6B9C90(v46, v20, &v53);
      _os_log_impl(&dword_29E5ED000, v21, v22, "[%{public}s] Can't test %{public}s on this device", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v24, -1, -1);
      MEMORY[0x29ED98410](v23, -1, -1);

      (*(v45 + 8))(v14, v11);
    }

    else
    {

      (*(v45 + 8))(v14, v11);
    }

    v28 = v52;
    if (v52)
    {
      if (v20)
      {
        v29 = sub_29E754198();
      }

      else
      {
        v29 = 0;
      }

      v30 = sub_29E754198();
      [v28 failedTest:v29 withFailure:v30];

      v31 = 0;
      goto LABEL_25;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v9 = v48;
  if (a1 == 2)
  {
    goto LABEL_14;
  }

LABEL_21:
  v32 = sub_29E755028();

  if (v32)
  {
LABEL_22:
    if (v52)
    {
      sub_29E6BC2C4(v49);
LABEL_24:

      v31 = 1;
LABEL_25:
      *v51 = v31;
      return;
    }

    goto LABEL_32;
  }

  if (sub_29E6BAA90(a1))
  {
    if (v52)
    {
      sub_29E6BC528(v49, v43);
      goto LABEL_24;
    }

    goto LABEL_35;
  }

  v48 = v9;
  v33 = v52;
  if (v52)
  {
    v34 = sub_29E750658();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    sub_29E6BEDE4(v49, &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    v36 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    *(v37 + 24) = v33;
    sub_29E6BEE48(&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
    v38 = (v37 + ((v16 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v38 = sub_29E6BEDA4;
    v38[1] = v35;
    v39 = v34;
    v40 = v33;

    sub_29E6BCBE0(sub_29E6BEEAC, v37);

    v31 = 1;
    goto LABEL_25;
  }

LABEL_36:
  __break(1u);
}

void sub_29E6BC2C4(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_29E7513C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E750658();
  v9 = [v8 resolvedHealthToolbox];
  sub_29E6E62F8();
  v10 = [objc_opt_self() unknownProvenance];
  v11 = objc_allocWithZone(type metadata accessor for SleepRoomViewController());
  v12 = sub_29E69F6AC(v9, v7, v10);

  v14 = *a1;
  v13 = a1[1];
  v15 = sub_29E754198();
  [v2 startedTest_];

  [v8 pushViewController:v12 animated:1];
  v16 = sub_29E754198();
  sub_29E68B464(MEMORY[0x29EDCA190]);
  v17 = sub_29E754068();

  v18 = swift_allocObject();
  *(v18 + 16) = v8;
  aBlock[4] = sub_29E6BEF54;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6A1514;
  aBlock[3] = &unk_2A2501580;
  v19 = _Block_copy(aBlock);
  v20 = v8;

  [v2 finishedTest:v16 waitForCommit:1 extraResults:v17 withTeardownBlock:v19];
  _Block_release(v19);
}

void sub_29E6BC528(uint64_t *a1, void *a2)
{
  v3 = v2;
  v39 = a2;
  v40 = sub_29E750FE8();
  v38 = *(v40 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v40);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TestOptions();
  v8 = v7 - 8;
  v36 = *(v7 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  sub_29E6BF43C(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v35 - v12;
  v14 = sub_29E74EAF8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E750658();
  sub_29E6BEF74(a1 + *(v8 + 36), v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_29E6BF008(v13, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
    v20 = *a1;
    v21 = a1[1];
    v22 = sub_29E754198();
    v23 = sub_29E754198();
    [v3 failedTest:v22 withFailure:v23];
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v24 = *a1;
    v25 = a1[1];
    v26 = sub_29E754198();
    [v3 startedTest_];

    v27 = objc_opt_self();
    [v27 begin];
    sub_29E6BEDE4(a1, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    sub_29E6BEE48(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    *(v29 + ((v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
    aBlock[4] = sub_29E6BF078;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E6A1514;
    aBlock[3] = &unk_2A25015D0;
    v30 = _Block_copy(aBlock);
    v31 = v3;
    v32 = v19;

    [v27 setCompletionBlock_];
    _Block_release(v30);
    v33 = v37;
    sub_29E6E646C(v32);
    v34 = v32;
    sub_29E6BDE68(v18, v33, v34, v39);

    (*(v38 + 8))(v33, v40);
    [v27 commit];

    (*(v15 + 8))(v18, v14);
  }
}

void sub_29E6BCB0C(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t a1), uint64_t a6)
{
  if (a2 == 4)
  {
    sub_29E6C5FD8(a3, a4);
  }

  else if (a2 == 3)
  {
    sub_29E6C6C24(a4, a5, a6);
  }

  else
  {
    v6 = *a4;
    v7 = *(a4 + 8);
    v9 = sub_29E754198();
    v10 = sub_29E754198();
    [a3 failedTest:v9 withFailure:v10];
  }
}

uint64_t sub_29E6BCBE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v39 = a2;
  v4 = sub_29E753CF8();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E753D18();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E753D38();
  v36 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v35 - v16;
  v18 = sub_29E7513C8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18 - 8);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [v3 resolvedHealthToolbox];
  sub_29E6E62F8();
  v23 = [objc_opt_self() unknownProvenance];
  v24 = objc_allocWithZone(type metadata accessor for SleepRoomViewController());
  v25 = sub_29E69F6AC(v22, v21, v23);

  [v3 pushViewController:v25 animated:1];
  sub_29E602DD4();
  v26 = sub_29E754908();
  sub_29E753D28();
  sub_29E753D98();
  v27 = *(v11 + 8);
  v35 = v11 + 8;
  v27(v15, v10);
  v28 = swift_allocObject();
  v29 = v39;
  v28[2] = v38;
  v28[3] = v29;
  v28[4] = v25;
  aBlock[4] = sub_29E6BF3E8;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6A1514;
  aBlock[3] = &unk_2A2501648;
  v30 = _Block_copy(aBlock);

  v31 = v25;
  v32 = v37;
  sub_29E753D08();
  v44 = MEMORY[0x29EDCA190];
  sub_29E6BF3F4(&qword_2A18569F8, MEMORY[0x29EDCA248]);
  sub_29E6BF43C(0, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29E609A80();
  v33 = v40;
  sub_29E754C58();
  MEMORY[0x29ED971D0](v17, v32, v33, v30);
  _Block_release(v30);

  (*(v43 + 8))(v33, v4);
  (*(v41 + 8))(v32, v42);
  v27(v17, v36);
}

void sub_29E6BD0A8(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 popToRootViewControllerAnimated_];
}

void sub_29E6BD16C(void *a1, uint64_t *a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = sub_29E754198();
  sub_29E68B464(MEMORY[0x29EDCA190]);
  v9 = sub_29E754068();

  [a1 finishedTest:v8 extraResults:v9];

  v10 = [a3 popToRootViewControllerAnimated_];
}

uint64_t sub_29E6BD2A8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1(a3);
}

id sub_29E6BD368()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t type metadata accessor for TestOptions()
{
  result = qword_2A18590C0;
  if (!qword_2A18590C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_29E6BD3DC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  sub_29E6BF60C(0, &qword_2A18590B0, MEMORY[0x29EDCA018], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_29E6BD468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_29E754378();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_29E6BD9F4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_29E754DD8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_29E6BD9F4()
{
  v0 = sub_29E754388();
  v4 = sub_29E6BDA74(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_29E6BDA74(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_29E7542C8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_29E754BE8();
  if (!v9)
  {
    v11 = MEMORY[0x29EDCA190];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_29E6BD3DC(v9, 0);
  v12 = sub_29E6BDBCC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_29E7542C8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_29E754DD8();
LABEL_4:

  return sub_29E7542C8();
}

unint64_t sub_29E6BDBCC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_29E6BDDEC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_29E754348();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_29E754DD8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_29E6BDDEC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_29E754328();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_29E6BDDEC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_29E754358();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x29ED96C50](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_29E6BDE68(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v72 = a3;
  v73 = a2;
  v74 = a4;
  ObjectType = swift_getObjectType();
  sub_29E6BF43C(0, &qword_2A1859098, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v69 = &v64 - v8;
  v9 = sub_29E74ED88();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v68 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E74EAF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E752098();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v76 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v23 = &v64 - v22;
  sub_29E752048();
  v24 = *(v13 + 16);
  v75 = a1;
  v24(v16, a1, v12);
  v25 = sub_29E752088();
  v26 = sub_29E7546C8();
  v27 = os_log_type_enabled(v25, v26);
  v67 = ObjectType;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v66 = v18;
    v29 = v28;
    v65 = swift_slowAlloc();
    v77 = v65;
    *v29 = 136446466;
    nullsub_1(ObjectType);
    v30 = sub_29E755178();
    v32 = sub_29E6B9C90(v30, v31, &v77);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    sub_29E6BF3F4(&qword_2A18590A0, MEMORY[0x29EDB9B18]);
    v33 = sub_29E754FD8();
    v35 = v34;
    (*(v13 + 8))(v16, v12);
    v36 = sub_29E6B9C90(v33, v35, &v77);

    *(v29 + 14) = v36;
    _os_log_impl(&dword_29E5ED000, v25, v26, "[%{public}s] Received request to open URL: %{public}s", v29, 0x16u);
    v37 = v65;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v37, -1, -1);
    v38 = v29;
    v18 = v66;
    MEMORY[0x29ED98410](v38, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v39 = *(v18 + 8);
  v39(v23, v17);
  v40 = *(sub_29E74EAA8() + 16);

  v41 = v76;
  if (v40 != 3)
  {
    goto LABEL_13;
  }

  v42 = sub_29E74EAA8();
  if (v42[2] < 2uLL)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v44 = v42[6];
  v43 = v42[7];

  v45 = *MEMORY[0x29EDC6998];
  if (v44 == sub_29E7541D8() && v43 == v46)
  {
  }

  else
  {
    v47 = sub_29E755028();

    if ((v47 & 1) == 0)
    {
LABEL_13:
      v55 = sub_29E74EA68();
      sub_29E6BE568(v55, v73, v72, v74);

      return;
    }
  }

  v48 = sub_29E74EAA8();
  if (v48[2] < 3uLL)
  {
    goto LABEL_18;
  }

  v49 = v48[8];
  v50 = v48[9];

  v51 = v69;
  sub_29E74ED38();
  v52 = v51;

  v54 = v70;
  v53 = v71;
  if ((*(v70 + 48))(v52, 1, v71) == 1)
  {
    sub_29E6BF008(v52, &qword_2A1859098, MEMORY[0x29EDB9C08]);
    goto LABEL_13;
  }

  (*(v54 + 32))(v68, v52, v53);
  sub_29E752048();
  v56 = sub_29E752088();
  v57 = sub_29E7546C8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v77 = v59;
    *v58 = 136446210;
    nullsub_1(v67);
    v60 = sub_29E755178();
    v62 = sub_29E6B9C90(v60, v61, &v77);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_29E5ED000, v56, v57, "[%{public}s] URL contains sufficient components to open breathing disturbances room", v58, 0xCu);
    sub_29E5FECBC(v59);
    MEMORY[0x29ED98410](v59, -1, -1);
    MEMORY[0x29ED98410](v58, -1, -1);
  }

  v39(v41, v17);
  v63 = v68;
  sub_29E6EF6DC(v68, v73);
  (*(v70 + 8))(v63, v71);
}

void sub_29E6BE568(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_29E754748();
  if (!v8)
  {
    goto LABEL_32;
  }

  v43 = v8;
  v9 = *MEMORY[0x29EDC6820];
  v10 = sub_29E7541D8();
  v12 = v11;
  if (v10 == sub_29E7541D8() && v12 == v13)
  {

    goto LABEL_16;
  }

  v15 = sub_29E755028();

  if (v15)
  {
LABEL_16:
    sub_29E6F5190(a2);
    goto LABEL_33;
  }

  v16 = *MEMORY[0x29EDC6838];
  v17 = sub_29E7541D8();
  v19 = v18;
  if (v17 == sub_29E7541D8() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_29E755028();

    if ((v22 & 1) == 0)
    {
      v23 = *MEMORY[0x29EDC6840];
      v24 = sub_29E7541D8();
      v26 = v25;
      if (v24 == sub_29E7541D8() && v26 == v27)
      {

LABEL_20:
        sub_29E6F030C(a2);
        goto LABEL_33;
      }

      v28 = sub_29E755028();

      if (v28)
      {
        goto LABEL_20;
      }

      v29 = *MEMORY[0x29EDC6868];
      v30 = sub_29E7541D8();
      v32 = v31;
      if (v30 == sub_29E7541D8() && v32 == v33)
      {

LABEL_25:
        v35 = sub_29E750FD8();
        sub_29E6F0720(a1, v35);

        v36 = v35;
        goto LABEL_34;
      }

      v34 = sub_29E755028();

      if (v34)
      {
        goto LABEL_25;
      }

      v37 = *MEMORY[0x29EDC6848];
      v38 = sub_29E7541D8();
      v40 = v39;
      if (v38 == sub_29E7541D8() && v40 == v41)
      {

LABEL_30:
        sub_29E6BF108(a2, a3);
        goto LABEL_33;
      }

      v42 = sub_29E755028();

      if (v42)
      {
        goto LABEL_30;
      }

LABEL_32:
      v43 = sub_29E750FD8();
      sub_29E6BE8B4(a1, v43, a3, a4);
      goto LABEL_33;
    }
  }

  sub_29E6EFEB4();
LABEL_33:
  v36 = v43;
LABEL_34:
}

uint64_t sub_29E6BE8B4(void *a1, void *a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_29E752098();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E750738();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[1] = a3;
  (*(v12 + 104))(v15, *MEMORY[0x29EDC1E10], v11);
  v48 = a2;
  v49 = a1;
  type metadata accessor for SleepRoomViewController();
  sub_29E6BF374();
  v16 = a3;
  v17 = sub_29E750858();
  v19 = v18;
  (*(v12 + 8))(v15, v11);

  v20 = [v19 navigationController];
  if (v20)
  {
    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = a1;
    *(v22 + 32) = (v17 & 1) == 0;
    *(v22 + 40) = a4;
    *(v22 + 48) = a2;
    v23 = v19;
    v24 = a1;
    a4;
    v25 = a2;
    sub_29E6F29F0(v24, v21, v23, sub_29E6BF3D8, v22);
  }

  else
  {
    v27 = v45;
    v28 = ObjectType;
    v29 = v44;
    sub_29E752058();
    v30 = v19;
    v31 = sub_29E752088();
    v32 = sub_29E7546A8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v50[0] = v34;
      *v33 = 136315394;
      nullsub_1(v28);
      v35 = sub_29E755178();
      v37 = sub_29E6B9C90(v35, v36, v50);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = v30;
      v39 = [v38 description];
      v40 = sub_29E7541D8();
      v42 = v41;

      v43 = sub_29E6B9C90(v40, v42, v50);

      *(v33 + 14) = v43;
      _os_log_impl(&dword_29E5ED000, v31, v32, "[%s]: No navigation controller provided to open sleep room: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v34, -1, -1);
      MEMORY[0x29ED98410](v33, -1, -1);
    }

    else
    {
    }

    return (*(v29 + 8))(v47, v27);
  }
}

uint64_t sub_29E6BECD4()
{
  v0 = sub_29E754EF8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29E6BED20(uint64_t a1)
{
  v2 = type metadata accessor for TestOptions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E6BEDA4()
{
  v1 = [*(v0 + 16) popToRootViewControllerAnimated_];
}

uint64_t sub_29E6BEDE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestOptions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6BEE48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestOptions();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E6BEEAC(uint64_t a1)
{
  v3 = *(type metadata accessor for TestOptions() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v1 + 16);

  sub_29E6BCB0C(a1, v9, v5, v1 + v4, v7, v8);
}

uint64_t sub_29E6BEF5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E6BEF74(uint64_t a1, uint64_t a2)
{
  sub_29E6BF43C(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6BF008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6BF43C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E6BF078()
{
  v1 = *(type metadata accessor for TestOptions() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_29E6BD16C(v3, (v0 + v2), v4);
}

void sub_29E6BF108(uint64_t a1, void *a2)
{
  v4 = sub_29E750738();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = &type metadata for SleepPPTNavigator;
  v21[4] = sub_29E6BF374();
  v21[0] = a2;
  v9 = objc_opt_self();
  v10 = a2;
  v11 = [v9 sharedBehavior];
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v11 features];

  if (!v13)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v14 = [v13 sleepDetails];

  if (v14)
  {
    v15 = sub_29E601938(v21, &type metadata for SleepPPTNavigator);
    MEMORY[0x2A1C7C4A8](v15);
    *(&v20 - 2) = a1;
    type metadata accessor for SleepScoreRoomViewController();
    sub_29E6F3CAC(v8);
    sub_29E750858();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_29E750FD8();
    v19 = [v18 navigationController];

    if (v19)
    {
    }

    sub_29E6B93B4();
  }

  sub_29E5FECBC(v21);
}

unint64_t sub_29E6BF374()
{
  result = qword_2A18590A8;
  if (!qword_2A18590A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18590A8);
  }

  return result;
}

uint64_t sub_29E6BF3F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E6BF43C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E6BF4D8()
{
  sub_29E6BF60C(319, &unk_2A18590D0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29E6BF60C(319, &qword_2A1858D30, MEMORY[0x29EDCA210], MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      sub_29E6BF43C(319, qword_2A1A7CFF0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E6BF60C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_29E6BF66C(const char *a1)
{
  v3 = v1;
  v4 = *v1;
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v10 = sub_29E752088();
  v11 = sub_29E7546C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446210;
    v15 = sub_29E755178();
    v17 = sub_29E6B9C90(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_29E5ED000, v10, v11, v19, v13, 0xCu);
    sub_29E5FECBC(v14);
    MEMORY[0x29ED98410](v14, -1, -1);
    MEMORY[0x29ED98410](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  return v3;
}

uint64_t sub_29E6BF844()
{
  sub_29E6BF66C("[%{public}s] Plugin delegate is deallocated");

  return swift_deallocClassInstance();
}

id sub_29E6BF8A4(uint64_t a1)
{
  v51 = *v1;
  v3 = sub_29E74FEB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v45 - v9;
  v11 = sub_29E752098();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v15 = *(v4 + 16);
  v15(v10, a1, v3);
  v16 = sub_29E752088();
  v50 = sub_29E7546C8();
  v52 = v16;
  v17 = os_log_type_enabled(v16, v50);
  v48 = v3;
  v49 = v8;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v47 = a1;
    v19 = v18;
    v46 = swift_slowAlloc();
    v54 = v46;
    *v19 = 136446466;
    v20 = sub_29E755178();
    v22 = sub_29E6B9C90(v20, v21, &v54);
    v51 = v11;
    v23 = v3;
    v24 = v22;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    v15(v8, v10, v23);
    v25 = sub_29E7541F8();
    v27 = v26;
    (*(v4 + 8))(v10, v23);
    v28 = sub_29E6B9C90(v25, v27, &v54);

    *(v19 + 14) = v28;
    v29 = v52;
    _os_log_impl(&dword_29E5ED000, v52, v50, "[%{public}s] Creating pipelines for context: %{public}s", v19, 0x16u);
    v30 = v46;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v30, -1, -1);
    v31 = v19;
    a1 = v47;
    MEMORY[0x29ED98410](v31, -1, -1);

    (*(v53 + 8))(v14, v51);
  }

  else
  {

    (*(v4 + 8))(v10, v3);
    (*(v53 + 8))(v14, v11);
  }

  if ((sub_29E74FE88() & 1) == 0)
  {
    v32 = sub_29E74FE78();
    v33 = v32;
    v34 = sub_29E74FBE8();
    v35 = sub_29E74FBD8();

    if (v35)
    {

      return sub_29E6C0C78(a1);
    }

    if (v32)
    {
      [v33 type];
    }

    else
    {
      sub_29E6C0558();
      if (*(v37 + 16))
      {
        sub_29E6C1758(0, &qword_2A1A7D3F0, &qword_2A1A7D6B8);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_29E762F30;
        v15(v49, a1, v48);
        sub_29E6C06D0();
        v40 = v39;
        v41 = *(v39 + 48);
        v42 = *(v39 + 52);
        swift_allocObject();
        v43 = sub_29E751F58();
        *(v38 + 56) = v40;
        v44 = sub_29E6C17B8(&qword_2A1A7C138, sub_29E6C06D0);
        result = v38;
        *(v38 + 64) = v44;
        *(v38 + 32) = v43;
        return result;
      }
    }
  }

  return MEMORY[0x29EDCA190];
}

void *sub_29E6BFD74@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_29E6BF66C("[%{public}s] Plugin delegate is initialized");
  *a1 = v2;
  return result;
}

uint64_t sub_29E6BFDE0(uint64_t a1)
{
  v66 = *v1;
  v67 = sub_29E752098();
  v3 = *(v67 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v67);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v64 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v64 - v11;
  v13 = sub_29E74ED28();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v17 = swift_conformsToProtocol2();
  if (v17 && a1)
  {
    v18 = v17;
    swift_getObjectType();
    v19 = *(v18 + 16);
    swift_unknownObjectRetain();
    v20 = sub_29E74FB28();
    if (v20)
    {
      v21 = v20;
      v22 = [v20 profileIdentifier];
      v23 = [v22 type];

      if (v23 == 1)
      {
        sub_29E6C1758(0, &qword_2A1A7BD08, &qword_2A1A7CED8);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_29E762F30;
        swift_unknownObjectRetain();
        v25 = v21;
        sub_29E74ED18();
        v26 = type metadata accessor for BreathingDisturbancesHighlightExecutor(0);
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        swift_allocObject();
        v29 = sub_29E74520C(a1, v18, v25, v16);
        sub_29E751758();

        v30 = sub_29E6C17B8(&qword_2A1A7C368, type metadata accessor for BreathingDisturbancesHighlightExecutor);
        *(v24 + 32) = v29;
        *(v24 + 40) = v30;
        sub_29E751758();

        return v24;
      }

      v53 = *(v19 + 8);
      sub_29E751E48();
      swift_unknownObjectRetain();
      v54 = sub_29E752088();
      v55 = sub_29E7546C8();
      sub_29E751758();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v69 = v65;
        *v56 = 136446466;
        v57 = sub_29E755178();
        v59 = sub_29E6B9C90(v57, v58, &v69);

        *(v56 + 4) = v59;
        *(v56 + 12) = 2080;
        v68 = a1;
        swift_unknownObjectRetain();
        v60 = sub_29E7541F8();
        v62 = sub_29E6B9C90(v60, v61, &v69);

        *(v56 + 14) = v62;
        _os_log_impl(&dword_29E5ED000, v54, v55, "[%{public}s] Sleep plugin only supports primary profile, ignoring context: %s", v56, 0x16u);
        v63 = v65;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v63, -1, -1);
        MEMORY[0x29ED98410](v56, -1, -1);
      }

      (*(v3 + 8))(v12, v67);
      sub_29E751758();
    }

    else
    {
      v42 = *(v19 + 8);
      sub_29E751E48();
      swift_unknownObjectRetain();
      v43 = sub_29E752088();
      v44 = sub_29E7546C8();
      sub_29E751758();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v69 = v46;
        *v45 = 136446466;
        v47 = sub_29E755178();
        v49 = sub_29E6B9C90(v47, v48, &v69);

        *(v45 + 4) = v49;
        *(v45 + 12) = 2080;
        v68 = a1;
        swift_unknownObjectRetain();
        v50 = sub_29E7541F8();
        v52 = sub_29E6B9C90(v50, v51, &v69);

        *(v45 + 14) = v52;
        _os_log_impl(&dword_29E5ED000, v43, v44, "[%{public}s] Sleep plugin cannot perform work without a health store, ignoring context: %s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v46, -1, -1);
        MEMORY[0x29ED98410](v45, -1, -1);
      }

      (*(v3 + 8))(v10, v67);
      sub_29E751758();
    }
  }

  else
  {
    sub_29E751E48();
    swift_unknownObjectRetain();
    v32 = sub_29E752088();
    v33 = sub_29E7546C8();
    sub_29E751758();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v69 = v35;
      *v34 = 136446466;
      v36 = sub_29E755178();
      v38 = sub_29E6B9C90(v36, v37, &v69);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v68 = a1;
      swift_unknownObjectRetain();
      v39 = sub_29E7541F8();
      v41 = sub_29E6B9C90(v39, v40, &v69);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_29E5ED000, v32, v33, "[%{public}s] Sleep plugin cannot perform work without a HealthPlatformOrchestrationContext, ignoring context: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v35, -1, -1);
      MEMORY[0x29ED98410](v34, -1, -1);
    }

    (*(v3 + 8))(v7, v67);
  }

  return MEMORY[0x29EDCA190];
}

uint64_t sub_29E6C04E8()
{
  v0 = swift_allocObject();
  sub_29E6BF66C("[%{public}s] Plugin delegate is initialized");
  return v0;
}

void sub_29E6C0558()
{
  sub_29E6C11CC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E769B70;
  *(v0 + 56) = &type metadata for SleepHygieneArticleDataProvider;
  *(v0 + 64) = sub_29E6C13F8();
  *(v0 + 72) = sub_29E6C144C();
  *(v0 + 104) = &type metadata for SleepImportanceArticleDataProvider;
  *(v0 + 112) = sub_29E6C14A0();
  *(v0 + 120) = sub_29E6C14F4();
  *(v0 + 152) = &type metadata for SleepApneaNotificationArticleDataProvider;
  *(v0 + 160) = sub_29E6C1548();
  *(v0 + 168) = sub_29E6C159C();
  *(v0 + 200) = &type metadata for SleepApneaArticleDataProvider;
  *(v0 + 208) = sub_29E6C15F0();
  *(v0 + 216) = sub_29E6C1644();
  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 features];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = [v3 sleepDetails];

  if (v4)
  {
    v5 = sub_29E6DB41C(1, 5, 1, v0);
    v7 = &type metadata for SleepScoreArticleDataProvider;
    v8 = sub_29E6C1698();
    v9 = sub_29E6C16EC();
    v5[2] = 5;
    sub_29E6C1740(&v6, v5 + 14);
  }
}

void sub_29E6C06D0()
{
  if (!qword_2A1A7C130)
  {
    sub_29E6C072C();
    v0 = sub_29E751F68();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7C130);
    }
  }
}

unint64_t sub_29E6C072C()
{
  result = qword_2A1A7CCA8;
  if (!qword_2A1A7CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CCA8);
  }

  return result;
}

void *sub_29E6C0780(uint64_t a1, void *a2)
{
  v4 = sub_29E750048();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v49 = &v41 - v10;
  v11 = type metadata accessor for SleepApneaNotificationTipGeneratorPipeline();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_29E74FEB8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v44 = v11;
    v45 = v9;
    v20 = *(v16 + 16);
    v43 = v16 + 16;
    v48 = a1;
    v46 = v5;
    v47 = v20;
    v20(v19, a1, v15);
    v21 = type metadata accessor for SleepOnboardingTileGeneratorPipeline();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = a2;
    v42 = sub_29E6D2F58(v19, v24);
    v25 = sub_29E6DB568(0, 1, 1, MEMORY[0x29EDCA190]);
    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_29E6DB568((v26 > 1), v27 + 1, 1, v25);
    }

    v51 = v21;
    v52 = sub_29E6C17B8(&unk_2A1A7D600, type metadata accessor for SleepOnboardingTileGeneratorPipeline);
    *&v50 = v42;
    v25[2] = v27 + 1;
    sub_29E5FAEE4(&v50, &v25[5 * v27 + 4]);
    v47(v19, v48, v15);
    v28 = v24;
    sub_29E648774(v19, v28, v14);
    v30 = v25[2];
    v29 = v25[3];
    if (v30 >= v29 >> 1)
    {
      v25 = sub_29E6DB568((v29 > 1), v30 + 1, 1, v25);
    }

    v9 = v45;

    v51 = v44;
    v52 = sub_29E6C17B8(&qword_2A1A7CB28, type metadata accessor for SleepApneaNotificationTipGeneratorPipeline);
    v31 = sub_29E5FEBF4(&v50);
    sub_29E6C1338(v14, v31);
    v25[2] = v30 + 1;
    sub_29E5FAEE4(&v50, &v25[5 * v30 + 4]);
    sub_29E6C139C(v14);
    v5 = v46;
    v47(v19, v48, v15);
  }

  else
  {
    v25 = MEMORY[0x29EDCA190];
    (*(v16 + 16))(v19, a1, v15);
  }

  v32 = *MEMORY[0x29EDBA748];
  v51 = &type metadata for SleepApneaPromotionFeedItemProvider;
  v52 = sub_29E62F480();
  v33 = v32;
  v34 = v49;
  sub_29E750038();
  v35 = v5[2];
  v35(v9, v34, v4);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_29E6DB568(0, v25[2] + 1, 1, v25);
  }

  v37 = v25[2];
  v36 = v25[3];
  if (v37 >= v36 >> 1)
  {
    v25 = sub_29E6DB568((v36 > 1), v37 + 1, 1, v25);
  }

  v38 = v5[1];
  v38(v34, v4);
  v51 = v4;
  v52 = MEMORY[0x29EDC3C28];
  v39 = sub_29E5FEBF4(&v50);
  v35(v39, v9, v4);
  v25[2] = v37 + 1;
  sub_29E5FAEE4(&v50, &v25[5 * v37 + 4]);
  v38(v9, v4);
  return v25;
}

id sub_29E6C0C78(uint64_t a1)
{
  v2 = sub_29E74FEB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x29EDCA190];
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v8 = result;
    v9 = [result hksp_supportsSleep];

    if (!v9)
    {
      goto LABEL_5;
    }

    sub_29E74FE58();
    sub_29E601938(v48, v49);
    v10 = sub_29E74FDD8();
    v11 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
    v12 = sub_29E754198();
    v13 = [v11 initWithIdentifier:v12 healthStore:v10 options:2];

    sub_29E5FECBC(v48);
    if (v13)
    {
      sub_29E6C1758(0, &qword_2A1A7D3F0, &qword_2A1A7D6B8);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_29E762F40;
      v15 = *(v3 + 16);
      v15(v6, a1, v2);
      v16 = type metadata accessor for SleepNotificationSettingsGeneratorPipeline();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v46 = v13;
      v19 = v13;
      v20 = sub_29E661E74(v6, v19);
      *(v14 + 56) = v16;
      *(v14 + 64) = sub_29E6C17B8(qword_2A1A7CA90, type metadata accessor for SleepNotificationSettingsGeneratorPipeline);
      *(v14 + 32) = v20;
      v15(v6, a1, v2);
      v21 = type metadata accessor for SleepApneaNotificationSettingsGeneratorPipeline();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      v24 = v19;
      v25 = sub_29E683CDC(v6, v24);
      *(v14 + 96) = v21;
      *(v14 + 104) = sub_29E6C17B8(qword_2A1A7C880, type metadata accessor for SleepApneaNotificationSettingsGeneratorPipeline);
      *(v14 + 72) = v25;

      v26 = v14;
    }

    else
    {
LABEL_5:
      v46 = 0;
      v26 = MEMORY[0x29EDCA190];
    }

    sub_29E6DAB28(v26);
    sub_29E6C11CC();
    v27 = swift_allocObject();
    v47 = xmmword_29E762F30;
    *(v27 + 16) = xmmword_29E762F30;
    *(v27 + 56) = &type metadata for SleepStagesArticleDataProvider;
    *(v27 + 64) = sub_29E6C1290();
    *(v27 + 72) = sub_29E6C12E4();
    sub_29E6C1758(0, &qword_2A1A7D3F0, &qword_2A1A7D6B8);
    inited = swift_initStackObject();
    *(inited + 16) = v47;
    v29 = *(v3 + 16);
    v29(v6, a1, v2);
    sub_29E6C06D0();
    v31 = v30;
    v32 = *(v30 + 48);
    v33 = *(v30 + 52);
    swift_allocObject();
    v34 = sub_29E751F58();
    *(inited + 56) = v31;
    *(inited + 64) = sub_29E6C17B8(&qword_2A1A7C138, sub_29E6C06D0);
    *(inited + 32) = v34;
    sub_29E6DAB28(inited);
    v35 = swift_initStackObject();
    *(v35 + 16) = v47;
    v29(v6, a1, v2);
    v36 = *MEMORY[0x29EDBA748];
    v37 = type metadata accessor for SleepApneaHealthChecklistFeedItemProvider();
    v38 = swift_allocObject();
    v49 = v37;
    v50 = sub_29E6C17B8(qword_2A1A7C7B8, type metadata accessor for SleepApneaHealthChecklistFeedItemProvider);
    v48[0] = v38;
    v39 = sub_29E750048();
    v40 = MEMORY[0x29EDC3C28];
    *(v35 + 56) = v39;
    *(v35 + 64) = v40;
    sub_29E5FEBF4((v35 + 32));
    v41 = v36;
    sub_29E750038();
    sub_29E6DAB28(v35);
    v42 = a1;
    v43 = v46;
    v44 = sub_29E6C0780(v42, v46);
    sub_29E6DAB28(v44);

    return v51;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E6C11CC()
{
  if (!qword_2A1A7D3E8)
  {
    sub_29E6C1224();
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D3E8);
    }
  }
}

unint64_t sub_29E6C1224()
{
  result = qword_2A1A7D698;
  if (!qword_2A1A7D698)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A7D698);
  }

  return result;
}

unint64_t sub_29E6C1290()
{
  result = qword_2A1A7D348;
  if (!qword_2A1A7D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D348);
  }

  return result;
}

unint64_t sub_29E6C12E4()
{
  result = qword_2A1A7D340;
  if (!qword_2A1A7D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D340);
  }

  return result;
}

uint64_t sub_29E6C1338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepApneaNotificationTipGeneratorPipeline();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6C139C(uint64_t a1)
{
  v2 = type metadata accessor for SleepApneaNotificationTipGeneratorPipeline();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29E6C13F8()
{
  result = qword_2A1A7D798;
  if (!qword_2A1A7D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D798);
  }

  return result;
}

unint64_t sub_29E6C144C()
{
  result = qword_2A1A7D790;
  if (!qword_2A1A7D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D790);
  }

  return result;
}

unint64_t sub_29E6C14A0()
{
  result = qword_2A1A7D6E8;
  if (!qword_2A1A7D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D6E8);
  }

  return result;
}

unint64_t sub_29E6C14F4()
{
  result = qword_2A1A7D6E0;
  if (!qword_2A1A7D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D6E0);
  }

  return result;
}

unint64_t sub_29E6C1548()
{
  result = qword_2A1A7CB38;
  if (!qword_2A1A7CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CB38);
  }

  return result;
}

unint64_t sub_29E6C159C()
{
  result = qword_2A1A7CB30;
  if (!qword_2A1A7CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CB30);
  }

  return result;
}

unint64_t sub_29E6C15F0()
{
  result = qword_2A1A7CCC8[0];
  if (!qword_2A1A7CCC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A7CCC8);
  }

  return result;
}

unint64_t sub_29E6C1644()
{
  result = qword_2A1A7CCC0;
  if (!qword_2A1A7CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CCC0);
  }

  return result;
}

unint64_t sub_29E6C1698()
{
  result = qword_2A1A7CCB8;
  if (!qword_2A1A7CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CCB8);
  }

  return result;
}

unint64_t sub_29E6C16EC()
{
  result = qword_2A1A7CCB0;
  if (!qword_2A1A7CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7CCB0);
  }

  return result;
}

_OWORD *sub_29E6C1740(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void sub_29E6C1758(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29E60A664(255, a3);
    v4 = sub_29E754FE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6C17B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E6C1848()
{
  sub_29E6C5AD0(319, &qword_2A18576A8, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    sub_29E65AA20(319);
    if (v1 <= 0x3F)
    {
      sub_29E6C5BF0(319, &qword_2A1859150, sub_29E650A80, MEMORY[0x29EDC9C68]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E6C1954(uint64_t a1@<X8>)
{
  v3 = sub_29E750698();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_29E752FE8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_29E6C5B20(0, &qword_2A1859158, sub_29E6C34BC);
  sub_29E6C1BD8(v1, a1 + *(v8 + 44));
  v9 = sub_29E7533A8();
  sub_29E6C3CFC(0);
  v11 = a1 + *(v10 + 36);
  *v11 = v9;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 1;
  v12 = sub_29E753C48();
  v14 = v13;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6C3DB8(0, &qword_2A1859210, sub_29E6C3CFC, sub_29E6C3E2C);
  v16 = a1 + *(v15 + 36);
  (*(v4 + 104))(v7, *MEMORY[0x29EDC1D60], v3);
  sub_29E750678();
  (*(v4 + 8))(v7, v3);
  v19[1] = sub_29E7538E8();
  sub_29E753668();

  sub_29E6C3E2C();
  v18 = (v16 + *(v17 + 36));
  *v18 = v12;
  v18[1] = v14;
}

uint64_t sub_29E6C1BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v80 = a2;
  v2 = type metadata accessor for SleepScoreCard(0);
  v71 = *(v2 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v72 = v4;
  v75 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C3960();
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v77 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v76 = &v68 - v9;
  sub_29E65AA20(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for CardHeader(0);
  v18 = *(*(v68 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v68);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C3DB8(0, &qword_2A1859178, type metadata accessor for CardHeader, sub_29E6C35A8);
  v22 = v21;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v68 - v24;
  sub_29E6C34F8();
  v69 = v26;
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v73 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v32 = &v68 - v31;
  MEMORY[0x2A1C7C4A8](v30);
  v34 = &v68 - v33;
  sub_29E7544C8();
  v70 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = v74;
  sub_29E6C5E1C(v74 + *(v2 + 20), v13, sub_29E65AA20);
  v36 = type metadata accessor for SleepScoreRoomModel();
  if ((*(*(v36 - 8) + 48))(v13, 1, v36) == 1)
  {
    sub_29E6C54C4(v13, sub_29E65AA20);
    v37 = sub_29E74F2D8();
    (*(*(v37 - 8) + 56))(v17, 1, 1, v37);
  }

  else
  {
    sub_29E6C5E1C(&v13[*(v36 + 20)], v17, sub_29E631834);
    sub_29E6C54C4(v13, type metadata accessor for SleepScoreRoomModel);
  }

  KeyPath = swift_getKeyPath();
  sub_29E6C5C54(v17, v20, sub_29E631834);
  v39 = &v20[*(v68 + 20)];
  *v39 = KeyPath;
  v39[8] = 0;
  v40 = sub_29E753C18();
  v42 = v41;
  v43 = &v25[*(v22 + 36)];
  sub_29E6C2430(v35, v43);
  sub_29E6C35A8();
  v45 = (v43 + *(v44 + 36));
  *v45 = v40;
  v45[1] = v42;
  sub_29E6C5C54(v20, v25, type metadata accessor for CardHeader);
  LOBYTE(v40) = sub_29E7533C8();
  sub_29E7529C8();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_29E6C5524(v25, v32, &qword_2A1859178, type metadata accessor for CardHeader, sub_29E6C35A8, sub_29E6C3DB8);
  v54 = &v32[*(v69 + 36)];
  *v54 = v40;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  sub_29E5F61BC(v32, v34);
  v81 = sub_29E74EFC8();
  swift_getKeyPath();
  v55 = v75;
  sub_29E6C5E1C(v35, v75, type metadata accessor for SleepScoreCard);
  v56 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v57 = swift_allocObject();
  sub_29E6C5C54(v55, v57 + v56, type metadata accessor for SleepScoreCard);
  sub_29E64E7F4(0);
  sub_29E6C3A64(0);
  sub_29E6C37F4(&qword_2A1857C20, sub_29E64E7F4);
  sub_29E6C37F4(&qword_2A1857C28, MEMORY[0x29EDC6910]);
  sub_29E6C37F4(&qword_2A1859228, sub_29E6C3A64);
  v58 = v76;
  sub_29E753B38();
  v59 = v73;
  sub_29E5F6414(v34, v73);
  v61 = v77;
  v60 = v78;
  v62 = *(v78 + 16);
  v63 = v79;
  v62(v77, v58, v79);
  v64 = v80;
  sub_29E5F6414(v59, v80);
  sub_29E6C3AFC(0, &qword_2A1859168, sub_29E6C34F8, sub_29E6C3960);
  v62((v64 + *(v65 + 48)), v61, v63);
  v66 = *(v60 + 8);
  v66(v58, v63);
  sub_29E5F6478(v34);
  v66(v61, v63);
  sub_29E5F6478(v59);
}

uint64_t sub_29E6C2430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E752EB8();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v36 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C370C();
  v8 = v7;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C363C();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v39 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C5BF0(0, &qword_2A1859188, sub_29E6C363C, MEMORY[0x29EDC9C68]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = v35 - v19;
  sub_29E7544C8();
  v40 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = (a1 + *(type metadata accessor for SleepScoreCard(0) + 24));
  v22 = *v21;
  if (!*v21)
  {
    (*(v14 + 56))(v20, 1, 1, v13);
LABEL_12:
    sub_29E6C5524(v20, a2, &qword_2A1859188, sub_29E6C363C, MEMORY[0x29EDC9C68], sub_29E6C5BF0);
  }

  v23 = v21[1];
  v42 = *v21;
  v43 = v23;
  v24 = *a1;
  v25 = *(a1 + 8);
  v35[1] = v8;
  if (v25)
  {
    sub_29E5F51BC(v22);

    if (v24)
    {
LABEL_6:
      v26 = MEMORY[0x29EDBC4E8];
      goto LABEL_10;
    }
  }

  else
  {
    sub_29E5F51BC(v22);
    sub_29E5F51BC(v22);
    sub_29E6C5598(v24, 0);
    sub_29E7546B8();
    v27 = v13;
    v28 = a2;
    v29 = sub_29E753358();
    sub_29E751F78();

    a2 = v28;
    v13 = v27;
    v30 = v36;
    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v24, 0);
    (*(v37 + 8))(v30, v38);
    if (v41)
    {
      goto LABEL_6;
    }
  }

  v26 = MEMORY[0x29EDBC510];
LABEL_10:
  v31 = *v26;
  v32 = sub_29E752BF8();
  (*(*(v32 - 8) + 104))(v11, v31, v32);
  sub_29E6C37F4(&qword_2A1859230, MEMORY[0x29EDBC518]);
  result = sub_29E754108();
  if (result)
  {
    sub_29E6C37A0();
    sub_29E6C37F4(&qword_2A18591B0, sub_29E6C370C);
    v34 = v39;
    sub_29E7537A8();
    sub_29E6459B8(v22);
    sub_29E6C54C4(v11, sub_29E6C370C);
    sub_29E6459B8(v22);
    (*(v14 + 32))(v20, v34, v13);
    (*(v14 + 56))(v20, 0, 1, v13);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6C296C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a3;
  v100 = a2;
  v4 = sub_29E7532D8();
  v97 = *(v4 - 8);
  v98 = v4;
  v5 = *(v97 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v96 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C5BF0(0, &unk_2A1856658, MEMORY[0x29EDC6AA8], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v92 = &v83 - v9;
  sub_29E65AA20(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v83 - v15;
  sub_29E631834();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x2A1C7C4A8](v17 - 8);
  v84 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v103 = &v83 - v21;
  v102 = sub_29E74EFE8();
  v22 = *(v102 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v102);
  v101 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for SleepScoreCardComponentViewModel();
  v25 = *(*(v85 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v85);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for CardComponentSection(0);
  v28 = *(*(v86 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v86);
  v87 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C3C24(0);
  v88 = v30;
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v30);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C3BA0();
  v95 = v34;
  v94 = *(v34 - 8);
  v35 = *(v94 + 64);
  v36 = MEMORY[0x2A1C7C4A8](v34);
  v93 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v36);
  v91 = &v83 - v38;
  sub_29E6C3B78(0);
  v40 = v39;
  v41 = *(*(v39 - 8) + 64);
  v42 = MEMORY[0x2A1C7C4A8](v39);
  v90 = &v83 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v42);
  v45 = &v83 - v44;
  sub_29E7544C8();
  v89 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E753AF8();
  v46 = sub_29E7533F8();
  sub_29E7529C8();
  v47 = &v45[*(v40 + 36)];
  *v47 = v46;
  *(v47 + 1) = v48;
  *(v47 + 2) = v49;
  *(v47 + 3) = v50;
  *(v47 + 4) = v51;
  v47[40] = 0;
  v52 = *(v22 + 16);
  v83 = a1;
  v52(v101, a1, v102);
  v53 = *(type metadata accessor for SleepScoreCard(0) + 20);
  sub_29E6C5E1C(v100 + v53, v16, sub_29E65AA20);
  v54 = type metadata accessor for SleepScoreRoomModel();
  v55 = *(*(v54 - 8) + 48);
  if (v55(v16, 1, v54) == 1)
  {
    sub_29E6C54C4(v16, sub_29E65AA20);
    v56 = sub_29E74F2D8();
    (*(*(v56 - 8) + 56))(v103, 1, 1, v56);
  }

  else
  {
    sub_29E6C5E1C(&v16[*(v54 + 20)], v103, sub_29E631834);
    sub_29E6C54C4(v16, type metadata accessor for SleepScoreRoomModel);
  }

  sub_29E6C5E1C(v100 + v53, v14, sub_29E65AA20);
  if (v55(v14, 1, v54) == 1)
  {
    sub_29E6C54C4(v14, sub_29E65AA20);
    v57 = 1;
    v58 = v92;
  }

  else
  {
    v59 = &v14[*(v54 + 20)];
    v60 = v84;
    sub_29E6C5E1C(v59, v84, sub_29E631834);
    sub_29E6C54C4(v14, type metadata accessor for SleepScoreRoomModel);
    v61 = sub_29E74F2D8();
    v62 = *(v61 - 8);
    v63 = (*(v62 + 48))(v60, 1, v61);
    v58 = v92;
    if (v63 == 1)
    {
      sub_29E6C54C4(v60, sub_29E631834);
      v57 = 1;
    }

    else
    {
      sub_29E74F268();
      (*(v62 + 8))(v60, v61);
      v57 = 0;
    }
  }

  v64 = sub_29E74F688();
  (*(*(v64 - 8) + 56))(v58, v57, 1, v64);
  (*(v22 + 32))(v27, v101, v102);
  v65 = v85;
  sub_29E6C5C54(v103, &v27[*(v85 + 20)], sub_29E631834);
  sub_29E6C5524(v58, &v27[*(v65 + 24)], &unk_2A1856658, MEMORY[0x29EDC6AA8], MEMORY[0x29EDC9C68], sub_29E6C5BF0);
  v66 = v87;
  sub_29E6C5C54(v27, v87, type metadata accessor for SleepScoreCardComponentViewModel);
  v67 = v66 + *(v86 + 20);
  *v67 = swift_getKeyPath();
  *(v67 + 8) = 0;
  sub_29E753C58();
  sub_29E752CA8();
  sub_29E6C5C54(v66, v33, type metadata accessor for CardComponentSection);
  v68 = &v33[*(v88 + 36)];
  v69 = v109;
  *(v68 + 4) = v108;
  *(v68 + 5) = v69;
  *(v68 + 6) = v110;
  v70 = v105;
  *v68 = v104;
  *(v68 + 1) = v70;
  v71 = v107;
  *(v68 + 2) = v106;
  *(v68 + 3) = v71;
  v72 = v96;
  sub_29E7532C8();
  sub_29E6C3C4C();
  v73 = v91;
  sub_29E753808();
  (*(v97 + 8))(v72, v98);
  sub_29E6C54C4(v33, sub_29E6C3C24);
  v74 = v90;
  sub_29E6C5E1C(v45, v90, sub_29E6C3B78);
  v75 = v94;
  v76 = *(v94 + 16);
  v77 = v93;
  v78 = v95;
  v76(v93, v73, v95);
  v79 = v99;
  sub_29E6C5E1C(v74, v99, sub_29E6C3B78);
  sub_29E6C3AFC(0, &qword_2A18591D0, sub_29E6C3B78, sub_29E6C3BA0);
  v76((v79 + *(v80 + 48)), v77, v78);
  v81 = *(v75 + 8);
  v81(v73, v78);
  sub_29E6C54C4(v45, sub_29E6C3B78);
  v81(v77, v78);
  sub_29E6C54C4(v74, sub_29E6C3B78);
}

void sub_29E6C34F8()
{
  if (!qword_2A1859170)
  {
    sub_29E6C3DB8(255, &qword_2A1859178, type metadata accessor for CardHeader, sub_29E6C35A8);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859170);
    }
  }
}

void sub_29E6C35A8()
{
  if (!qword_2A1859180)
  {
    sub_29E6C5BF0(255, &qword_2A1859188, sub_29E6C363C, MEMORY[0x29EDC9C68]);
    sub_29E6C383C();
    v0 = sub_29E752CB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859180);
    }
  }
}

void sub_29E6C363C()
{
  if (!qword_2A1859190)
  {
    sub_29E6C370C();
    sub_29E6C37A0();
    sub_29E6C37F4(&qword_2A18591B0, sub_29E6C370C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1859190);
    }
  }
}

void sub_29E6C370C()
{
  if (!qword_2A1859198)
  {
    sub_29E752BF8();
    sub_29E6C37F4(&qword_2A18591A0, MEMORY[0x29EDBC518]);
    v0 = sub_29E754ED8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859198);
    }
  }
}

unint64_t sub_29E6C37A0()
{
  result = qword_2A18591A8;
  if (!qword_2A18591A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18591A8);
  }

  return result;
}

uint64_t sub_29E6C37F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E6C383C()
{
  result = qword_2A18591B8;
  if (!qword_2A18591B8)
  {
    sub_29E6C5BF0(255, &qword_2A1859188, sub_29E6C363C, MEMORY[0x29EDC9C68]);
    sub_29E6C370C();
    sub_29E6C37A0();
    sub_29E6C37F4(&qword_2A18591B0, sub_29E6C370C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18591B8);
  }

  return result;
}

void sub_29E6C3960()
{
  if (!qword_2A18591C0)
  {
    sub_29E64E7F4(255);
    sub_29E74EFE8();
    sub_29E6C3A64(255);
    sub_29E6C37F4(&qword_2A1857C20, sub_29E64E7F4);
    sub_29E6C37F4(&qword_2A1857C28, MEMORY[0x29EDC6910]);
    v0 = sub_29E753B58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18591C0);
    }
  }
}

void sub_29E6C3AA0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29E6C3AFC(255, a3, a4, a5);
    v6 = sub_29E753C78();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6C3AFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E6C3BA0()
{
  if (!qword_2A18591D8)
  {
    sub_29E6C3C24(255);
    sub_29E6C3C4C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A18591D8);
    }
  }
}

unint64_t sub_29E6C3C4C()
{
  result = qword_2A18591E8;
  if (!qword_2A18591E8)
  {
    sub_29E6C3C24(255);
    sub_29E6C37F4(&qword_2A18591F0, type metadata accessor for CardComponentSection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18591E8);
  }

  return result;
}

void sub_29E6C3D24()
{
  if (!qword_2A1859200)
  {
    sub_29E6C34BC(255);
    sub_29E6C37F4(&qword_2A1859208, sub_29E6C34BC);
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859200);
    }
  }
}

void sub_29E6C3DB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29E752C28();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6C3E2C()
{
  if (!qword_2A1859218)
  {
    sub_29E6C3EC8();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29E753108();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859218);
    }
  }
}

void sub_29E6C3EC8()
{
  if (!qword_2A1859220)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1859220);
    }
  }
}

__n128 sub_29E6C3F48@<Q0>(uint64_t a1@<X8>)
{
  sub_29E6C582C(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_29E752EF8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_29E6C5B20(0, &qword_2A18592C8, sub_29E6C58E8);
  sub_29E6C4100(v1, &v7[*(v8 + 44)]);
  v9 = sub_29E7533F8();
  sub_29E6C5128();
  sub_29E7529C8();
  v10 = &v7[*(v4 + 44)];
  *v10 = v9;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 4) = v14;
  v10[40] = 0;
  sub_29E753C58();
  sub_29E752CA8();
  sub_29E6C5C54(v7, a1, sub_29E6C582C);
  sub_29E6C5B8C(0, &qword_2A18592D0, sub_29E6C582C);
  v16 = a1 + *(v15 + 36);
  v17 = v20[5];
  *(v16 + 64) = v20[4];
  *(v16 + 80) = v17;
  *(v16 + 96) = v20[6];
  v18 = v20[1];
  *v16 = v20[0];
  *(v16 + 16) = v18;
  result = v20[3];
  *(v16 + 32) = v20[2];
  *(v16 + 48) = result;
  return result;
}

uint64_t sub_29E6C4100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a1;
  v109 = a2;
  v107 = sub_29E752FB8();
  v106 = *(v107 - 8);
  v2 = *(v106 + 64);
  MEMORY[0x2A1C7C4A8](v107);
  v104 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v102 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_29E753508();
  v101 = *(v103 - 8);
  v7 = *(v101 + 64);
  MEMORY[0x2A1C7C4A8](v103);
  v99 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C5A10(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x2A1C7C4A8](v9 - 8);
  v108 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v105 = &v90 - v13;
  v97 = sub_29E74F718();
  v96 = *(v97 - 8);
  v14 = *(v96 + 64);
  MEMORY[0x2A1C7C4A8](v97);
  v95 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_29E74F5F8();
  v16 = *(v91 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v91);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_29E74F618();
  v24 = *(v93 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v93);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C3DB8(0, &qword_2A1859298, MEMORY[0x29EDC6AA0], sub_29E6C59DC);
  v90 = v28;
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v28);
  v31 = &v90 - v30;
  sub_29E6C594C();
  v92 = v32;
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v32);
  v35 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C5924(0);
  v94 = v36;
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x2A1C7C4A8](v36);
  v100 = &v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x2A1C7C4A8](v38);
  v42 = &v90 - v41;
  MEMORY[0x2A1C7C4A8](v40);
  v110 = &v90 - v43;
  sub_29E7544C8();
  v98 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6C5E1C(v111, v23, sub_29E631834);
  (*(v16 + 104))(v19, *MEMORY[0x29EDC6A98], v91);
  sub_29E74F608();
  KeyPath = swift_getKeyPath();
  if (sub_29E6C52B4())
  {
    v45 = v95;
    sub_29E74F708();
  }

  else
  {
    v45 = v95;
    sub_29E74F6F8();
  }

  v46 = &v31[*(v90 + 36)];
  sub_29E6C59DC(0);
  (*(v96 + 32))(v46 + *(v47 + 28), v45, v97);
  *v46 = KeyPath;
  (*(v24 + 32))(v31, v27, v93);
  sub_29E6C4CE4();
  sub_29E753C48();
  sub_29E752AB8();
  sub_29E6C5524(v31, v35, &qword_2A1859298, MEMORY[0x29EDC6AA0], sub_29E6C59DC, sub_29E6C3DB8);
  v48 = &v35[*(v92 + 36)];
  v49 = v122;
  *v48 = v121;
  *(v48 + 1) = v49;
  *(v48 + 2) = v123;
  v50 = sub_29E7533E8();
  sub_29E7529C8();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_29E6C5C54(v35, v42, sub_29E6C594C);
  v59 = &v42[*(v94 + 36)];
  *v59 = v50;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  sub_29E6C5C54(v42, v110, sub_29E6C5924);
  *&v119[0] = sub_29E6C4E70();
  *(&v119[0] + 1) = v60;
  sub_29E60DE10();
  v61 = sub_29E753608();
  v63 = v62;
  v65 = v64;
  v111 = v66;
  v67 = v101;
  v68 = v99;
  v69 = v103;
  (*(v101 + 104))(v99, *MEMORY[0x29EDBC9B8], v103);
  v70 = *MEMORY[0x29EDBC988];
  v71 = sub_29E753448();
  v72 = *(v71 - 8);
  v73 = v102;
  (*(v72 + 104))(v102, v70, v71);
  (*(v72 + 56))(v73, 0, 1, v71);
  sub_29E753458();
  sub_29E753498();
  sub_29E6C54C4(v73, sub_29E637500);
  (*(v67 + 8))(v68, v69);
  v74 = sub_29E7535D8();
  v76 = v75;
  LOBYTE(v69) = v77;
  v79 = v78;

  sub_29E60DB44(v61, v63, v65 & 1);

  v80 = swift_getKeyPath();
  v81 = swift_getKeyPath();
  v118 = v69 & 1;
  v117 = 0;
  *&v112 = v74;
  *(&v112 + 1) = v76;
  LOBYTE(v113) = v69 & 1;
  *(&v113 + 1) = v79;
  *&v114 = v80;
  *(&v114 + 1) = 1;
  LOBYTE(v115) = 0;
  *(&v115 + 1) = v81;
  v116 = 0x3FD3333333333333;
  v82 = v104;
  sub_29E752FA8();
  sub_29E6C5A44();
  sub_29E6C5D20();
  v83 = v105;
  sub_29E753828();
  (*(v106 + 8))(v82, v107);
  v119[2] = v114;
  v119[3] = v115;
  v120 = v116;
  v119[0] = v112;
  v119[1] = v113;
  sub_29E6C54C4(v119, sub_29E6C5A44);
  v84 = v110;
  v85 = v100;
  sub_29E6C5E1C(v110, v100, sub_29E6C5924);
  v86 = v108;
  sub_29E6C5E1C(v83, v108, sub_29E6C5A10);
  v87 = v109;
  sub_29E6C5E1C(v85, v109, sub_29E6C5924);
  sub_29E6C3AFC(0, &qword_2A1859280, sub_29E6C5924, sub_29E6C5A10);
  sub_29E6C5E1C(v86, v87 + *(v88 + 48), sub_29E6C5A10);
  sub_29E6C54C4(v83, sub_29E6C5A10);
  sub_29E6C54C4(v84, sub_29E6C5924);
  sub_29E6C54C4(v86, sub_29E6C5A10);
  sub_29E6C54C4(v85, sub_29E6C5924);
}

uint64_t sub_29E6C4CE4()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CardHeader(0);
  v7 = v0 + *(result + 20);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_29E7546B8();
    v9 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v8, 0);
    result = (*(v2 + 8))(v5, v1);
    v8 = v12;
  }

  if ((v8 - 1) >= 6)
  {
    type metadata accessor for HKWidthDesignation(0);
    v12 = v8;
    result = sub_29E755048();
    __break(1u);
  }

  else
  {
    v10 = qword_29E769E48[v8 - 1];
  }

  return result;
}

uint64_t sub_29E6C4E70()
{
  v1 = v0;
  v2 = sub_29E754188();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74EF88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6C5E1C(v1, v15, sub_29E631834);
  v16 = sub_29E74F2D8();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_29E6C54C4(v15, sub_29E631834);
    sub_29E754118();
    v18 = sub_29E65B0B4(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_29E74F2C8();
    (*(v17 + 8))(v15, v16);
    v18 = sub_29E74EF58();
    (*(v8 + 8))(v11, v7);
  }

  return v18;
}

uint64_t sub_29E6C5128()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CardHeader(0);
  v7 = v0 + *(result + 20);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_29E7546B8();
    v9 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v8, 0);
    result = (*(v2 + 8))(v5, v1);
    v8 = v12;
  }

  if ((v8 - 1) >= 6)
  {
    type metadata accessor for HKWidthDesignation(0);
    v12 = v8;
    result = sub_29E755048();
    __break(1u);
  }

  else
  {
    v10 = qword_29E769E78[v8 - 1];
  }

  return result;
}

uint64_t sub_29E6C52B4()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for CardHeader(0) + 20);
  v7 = *v6;
  if ((*(v6 + 8) & 1) == 0)
  {

    sub_29E7546B8();
    v8 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v7, 0);
    (*(v2 + 8))(v5, v1);
    v7 = v11;
  }

  if ((v7 - 1) < 6)
  {
    return (0x38u >> (v7 - 1)) & 1;
  }

  type metadata accessor for HKWidthDesignation(0);
  v11 = v7;
  result = sub_29E755048();
  __break(1u);
  return result;
}

uint64_t sub_29E6C5444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SleepScoreCard(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29E6C296C(a1, v6, a2);
}

uint64_t sub_29E6C54C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6C5524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t sub_29E6C5598(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_29E6C55CC()
{
  sub_29E631834();
  if (v0 <= 0x3F)
  {
    sub_29E6C5BF0(319, &qword_2A1A7BEF0, type metadata accessor for HKWidthDesignation, MEMORY[0x29EDBC390]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29E6C5680()
{
  result = qword_2A1859248;
  if (!qword_2A1859248)
  {
    sub_29E6C3DB8(255, &qword_2A1859210, sub_29E6C3CFC, sub_29E6C3E2C);
    sub_29E6C5760();
    sub_29E6C37F4(&qword_2A1859260, sub_29E6C3E2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859248);
  }

  return result;
}

unint64_t sub_29E6C5760()
{
  result = qword_2A1859250;
  if (!qword_2A1859250)
  {
    sub_29E6C3CFC(255);
    sub_29E6C37F4(&qword_2A1859258, sub_29E6C3D24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859250);
  }

  return result;
}

void sub_29E6C5854()
{
  if (!qword_2A1859270)
  {
    sub_29E6C58E8(255);
    sub_29E6C37F4(&qword_2A18592C0, sub_29E6C58E8);
    v0 = sub_29E753A78();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859270);
    }
  }
}

void sub_29E6C594C()
{
  if (!qword_2A1859290)
  {
    sub_29E6C3DB8(255, &qword_2A1859298, MEMORY[0x29EDC6AA0], sub_29E6C59DC);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859290);
    }
  }
}

void sub_29E6C5A44()
{
  if (!qword_2A18592B0)
  {
    sub_29E637234();
    sub_29E6C5AD0(255, &qword_2A18592B8, MEMORY[0x29EDCA210], MEMORY[0x29EDBC938]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18592B0);
    }
  }
}

void sub_29E6C5AD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E6C5B20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752B08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E6C5B8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E6C5BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E6C5C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6C5CBC@<X0>(uint64_t a1@<X8>)
{
  result = sub_29E752E88();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_29E6C5CF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_29E752E98();
}

unint64_t sub_29E6C5D20()
{
  result = qword_2A18592D8;
  if (!qword_2A18592D8)
  {
    sub_29E6C5A44();
    sub_29E6503A4();
    sub_29E6C5DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18592D8);
  }

  return result;
}

unint64_t sub_29E6C5DA0()
{
  result = qword_2A18592E0;
  if (!qword_2A18592E0)
  {
    sub_29E6C5AD0(255, &qword_2A18592B8, MEMORY[0x29EDCA210], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18592E0);
  }

  return result;
}

uint64_t sub_29E6C5E1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_29E6C5E84()
{
  result = qword_2A18592E8;
  if (!qword_2A18592E8)
  {
    sub_29E6C5B8C(255, &qword_2A18592D0, sub_29E6C582C);
    sub_29E6C5F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18592E8);
  }

  return result;
}

unint64_t sub_29E6C5F28()
{
  result = qword_2A18592F0;
  if (!qword_2A18592F0)
  {
    sub_29E6C582C(255);
    sub_29E6C37F4(&qword_2A18592F8, sub_29E6C5854);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18592F0);
  }

  return result;
}

uint64_t sub_29E6C5FD8(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TestOptions();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  sub_29E6BEDE4(a2, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_29E6BEE48(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *(v9 + ((v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v10 = a1;
  sub_29E69D984(sub_29E6C6FD0, v9);
}

uint64_t sub_29E6C610C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E6C7294(0, &qword_2A1859CD0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v14 - v7;
  v9 = sub_29E7544F8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_29E7544C8();

  v10 = sub_29E7544B8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x29EDCA390];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  v11[5] = a3;
  sub_29E6E4804(0, 0, v8, &unk_29E769EB0, v11);
}

uint64_t sub_29E6C6258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_29E7544C8();
  v5[4] = sub_29E7544B8();
  v7 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E6C62F0, v7, v6);
}

uint64_t sub_29E6C62F0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v3(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_29E6C635C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_29E754078();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_29E6C63EC(void *a1, void *a2, void *a3, uint64_t a4)
{
  v70 = a4;
  v69 = sub_29E753CF8();
  v78 = *(v69 - 8);
  v7 = *(v78 + 64);
  MEMORY[0x2A1C7C4A8](v69);
  v77 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E753D18();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v74 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TestOptions();
  v65 = *(v12 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v64 = v14;
  v66 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E753D38();
  v71 = *(v15 - 8);
  v72 = v15;
  v16 = *(v71 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v63 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v67 = &v61 - v19;
  v20 = sub_29E751FA8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x2A1C7C4A8](v20);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v27 = &v61 - v26;
  v62 = sub_29E751FE8();
  v28 = *(v62 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v62);
  v31 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74FA18();
  v32 = *a3;
  v33 = a3[1];
  v68 = a3;
  v34 = sub_29E754198();
  v73 = a2;
  [a2 startedTest_];

  byte_2A1869420 = 1;
  sub_29E751FB8();
  sub_29E751F98();
  v35 = sub_29E751FD8();
  v36 = sub_29E754958();
  if (sub_29E754BC8())
  {
    v37 = swift_slowAlloc();
    v61 = v20;
    v38 = a1;
    v39 = v37;
    *v37 = 0;
    v40 = sub_29E751F88();
    _os_signpost_emit_with_name_impl(&dword_29E5ED000, v35, v36, v40, "SaveSingleDayOverride", "", v39, 2u);
    v41 = v39;
    a1 = v38;
    v20 = v61;
    MEMORY[0x29ED98410](v41, -1, -1);
  }

  (*(v21 + 16))(v25, v27, v20);
  v42 = sub_29E752028();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = sub_29E752018();
  (*(v21 + 8))(v27, v20);
  (*(v28 + 8))(v31, v62);
  qword_2A1869428 = v45;

  [a1 saveButtonPressed_];
  sub_29E602DD4();
  v46 = sub_29E754908();
  v47 = v63;
  sub_29E753D28();
  v48 = v67;
  sub_29E753D98();
  v49 = v72;
  v71 = *(v71 + 8);
  (v71)(v47, v72);
  v50 = v66;
  sub_29E6BEDE4(v68, v66);
  v51 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v52 = (v64 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v73;
  *(v53 + 16) = v73;
  sub_29E6BEE48(v50, v53 + v51);
  *(v53 + v52) = v70;
  aBlock[4] = sub_29E6C71AC;
  aBlock[5] = v53;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6A1514;
  aBlock[3] = &unk_2A25017B0;
  v55 = _Block_copy(aBlock);
  v56 = v54;
  v57 = v74;
  sub_29E753D08();
  v79 = MEMORY[0x29EDCA190];
  sub_29E6C723C();
  sub_29E6C7294(0, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29E609A80();
  v58 = v77;
  v59 = v69;
  sub_29E754C58();
  MEMORY[0x29ED971D0](v48, v57, v58, v55);
  _Block_release(v55);

  (*(v78 + 8))(v58, v59);
  (*(v75 + 8))(v57, v76);
  (v71)(v48, v49);
}

uint64_t sub_29E6C6B14(void *a1, uint64_t *a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = sub_29E754198();
  sub_29E68B464(MEMORY[0x29EDCA190]);
  v7 = sub_29E754068();

  [a1 finishedTest:v6 extraResults:v7];

  byte_2A1869420 = 0;
}

void sub_29E6C6C24(double *a1, uint64_t (*a2)(uint64_t a1), uint64_t a3)
{
  v4 = v3;
  if (*(a1 + *(type metadata accessor for TestOptions() + 32)) == 1 && (v8 = objc_opt_self(), [v8 isRecapAvailable]))
  {
    v9 = *a1;
    v10 = *(a1 + 1);
    v11 = [v4 collectionView];
    if (v11)
    {
      v12 = v11;
      v13 = objc_allocWithZone(MEMORY[0x29EDC64A8]);

      v14 = sub_29E754198();
      v28 = a2;
      v29 = a3;
      v24 = MEMORY[0x29EDCA5F8];
      v25 = 1107296256;
      v26 = sub_29E6A1514;
      v27 = &unk_2A2501710;
      v15 = _Block_copy(&v24);

      v16 = [v13 initWithTestName:v14 scrollView:v12 completionHandler:v15];
      _Block_release(v15);

      [v8 runTestWithParameters_];
LABEL_11:

      return;
    }
  }

  else
  {
    v17 = [v4 collectionView];
    if (v17)
    {
      v18 = v17;
      v16 = [objc_allocWithZone(MEMORY[0x29EDC7C48]) init];
      v19 = *a1;
      v20 = *(a1 + 1);
      v21 = sub_29E754198();
      [v16 setTestName_];

      if ((a1[3] & 1) == 0)
      {
        [v16 setIterations_];
      }

      if ((a1[5] & 1) == 0)
      {
        [v16 setDelta_];
      }

      v22 = swift_allocObject();
      *(v22 + 16) = a2;
      *(v22 + 24) = a3;
      v28 = sub_29E6C6EF0;
      v29 = v22;
      v24 = MEMORY[0x29EDCA5F8];
      v25 = 1107296256;
      v26 = sub_29E6C635C;
      v27 = &unk_2A25016E8;
      v23 = _Block_copy(&v24);

      [v18 _performScrollTestWithParameters_completionBlock_];
      _Block_release(v23);

      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_29E6C6EF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E6C6F10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29E605728;

  return sub_29E6C6258(a1, v4, v5, v7, v6);
}

uint64_t sub_29E6C6FD0(void *a1)
{
  v3 = *(type metadata accessor for TestOptions() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E6C63EC(a1, v5, (v1 + v4), v6);
}

uint64_t sub_29E6C7070()
{
  v1 = (type metadata accessor for TestOptions() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 8);

  v6 = v1[9];
  v7 = sub_29E74EAF8();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x2A1C733A0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_29E6C71AC()
{
  v1 = *(type metadata accessor for TestOptions() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E6C6B14(v3, (v0 + v2));
}

unint64_t sub_29E6C723C()
{
  result = qword_2A18569F8;
  if (!qword_2A18569F8)
  {
    sub_29E753CF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18569F8);
  }

  return result;
}

void sub_29E6C7294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_29E6C7308(char a1)
{
  v3 = sub_29E74F8B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[OBJC_IVAR____TtC20SleepHealthAppPlugin43SleepApneaOnboardingEducationViewController_delegate];
  *v8 = 0;
  v8[1] = 0;
  v1[OBJC_IVAR____TtC20SleepHealthAppPlugin43SleepApneaOnboardingEducationViewController_presentedFromOnboarding] = a1;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v4 + 8))(v7, v3);
  v9 = sub_29E754198();

  v10 = type metadata accessor for SleepApneaOnboardingEducationViewController();
  v13.receiver = v1;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, sel_initWithTitle_detailText_icon_contentLayout_, v9, 0, 0, 2);

  return v11;
}

void sub_29E6C74B8()
{
  v1 = sub_29E74F698();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v39 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29E74FA88();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v38);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74F8B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SleepApneaOnboardingEducationViewController();
  v47 = v0;
  v48.receiver = v0;
  v48.super_class = v13;
  objc_msgSendSuper2(&v48, sel_viewDidLoad);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v46 = qword_2A1A7FA18;
  sub_29E74F8A8();
  sub_29E74F7C8();
  v45 = *(v9 + 8);
  v45(v12, v8);
  v14 = sub_29E754198();

  v15 = sub_29E754198();
  v16 = *MEMORY[0x29EDC6B98];
  v42 = v8;
  v17 = v4;
  v18 = *(v4 + 104);
  v37[1] = v4 + 104;
  v44 = v18;
  v19 = v38;
  v18(v7, v16, v38);
  v20 = sub_29E74FA78();
  v43 = *(v17 + 8);
  v43(v7, v19);
  [v47 addBulletedListItemWithTitle:v14 description:v15 image:v20];

  sub_29E74F8A8();
  sub_29E74F7C8();
  v45(v12, v8);
  v21 = sub_29E754198();

  v22 = sub_29E754198();
  v44(v7, *MEMORY[0x29EDC6BA8], v19);
  v23 = sub_29E74FA78();
  v43(v7, v19);
  [v47 addBulletedListItemWithTitle:v21 description:v22 image:v23];

  sub_29E74F8A8();
  sub_29E74F7C8();
  v37[0] = v9 + 8;
  v24 = v45;
  v45(v12, v42);
  v25 = sub_29E754198();

  v26 = sub_29E754198();
  v44(v7, *MEMORY[0x29EDC6BA0], v19);
  v27 = sub_29E74FA78();
  v43(v7, v19);
  v28 = v47;
  [v47 addBulletedListItemWithTitle:v25 description:v26 image:v27];

  if (*(v28 + OBJC_IVAR____TtC20SleepHealthAppPlugin43SleepApneaOnboardingEducationViewController_presentedFromOnboarding))
  {
    sub_29E74F8A8();
    sub_29E74F7C8();
    v24(v12, v42);
    v29 = sub_29E754198();

    v30 = *MEMORY[0x29EDC6AC0];
    v32 = v39;
    v31 = v40;
    v33 = v41;
    (*(v40 + 104))(v39, v30, v41);
    sub_29E754238();
    (*(v31 + 8))(v32, v33);
    v34 = sub_29E754198();
  }

  else
  {
    v30 = *MEMORY[0x29EDC6AC0];
    v31 = v40;
    v33 = v41;
    v32 = v39;
  }

  v35 = [v28 headerView];
  (*(v31 + 104))(v32, v30, v33);
  sub_29E754238();
  (*(v31 + 8))(v32, v33);
  v36 = sub_29E754198();

  [v35 setTitleAccessibilityIdentifier_];
}

uint64_t sub_29E6C7C08()
{
  sub_29E6979D8();
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x2A1C7C4A8](v1 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin43SleepApneaOnboardingEducationViewController_delegate];
  if (v6)
  {
    v7 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin43SleepApneaOnboardingEducationViewController_delegate];
    swift_unknownObjectRetain();
    sub_29E7544D8();
    v8 = sub_29E7544F8();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    sub_29E7544C8();
    swift_unknownObjectRetain();
    v9 = v0;
    v10 = sub_29E7544B8();
    v11 = swift_allocObject();
    v12 = MEMORY[0x29EDCA390];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v6;
    v11[5] = v9;
    v11[6] = &off_2A25017D8;
    sub_29E6E4804(0, 0, v5, &unk_29E767EC0, v11);

    return sub_29E751758();
  }

  return result;
}

void sub_29E6C7D84(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_29E6C804C()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_29E6C80E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaOnboardingEducationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E6C8150(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin43SleepApneaOnboardingEducationViewController_delegate);
  v4 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin43SleepApneaOnboardingEducationViewController_delegate);
  *v3 = a1;
  v3[1] = a2;
  return sub_29E751758();
}

void sub_29E6C816C()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29E6C8238();
  }

  else
  {
  }
}

id sub_29E6C8238()
{
  v1 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider + 32);
  sub_29E601938((v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider), *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider + 24));
  sub_29E74F4D8();
  sub_29E7527B8();

  if (*(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher))
  {

    sub_29E6C8728();
    result = [objc_opt_self() sharedBehavior];
    if (result)
    {
      v3 = result;
      [result hksp_supportsSleep];

      sub_29E7527C8();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_29E6C833C()
{
  v1 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_featureAvailability];
  if (v1)
  {
    [v1 unregisterObserver_];
  }

  v2 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepStore];
  if (v2)
  {
    [v2 removeObserver_];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for SleepRoomDataProvider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for SleepRoomDataProvider()
{
  result = qword_2A18593B8;
  if (!qword_2A18593B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6C8728()
{
  swift_getObjectType();
  v1 = sub_29E751FA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E751FE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_featureAvailability);
  if (!v12)
  {
    return 0;
  }

  v23 = 0;
  v22 = v9;
  swift_unknownObjectRetain();
  sub_29E751FC8();
  sub_29E751F98();
  v13 = swift_slowAlloc();
  v21 = v1;
  v14 = v13;
  *v13 = 0;
  v15 = sub_29E751FD8();
  v16 = sub_29E754958();
  v17 = sub_29E751F88();
  _os_signpost_emit_with_name_impl(&dword_29E5ED000, v15, v16, v17, "SleepCoachingQuery", "", v14, 2u);
  sub_29E6C89A0(&v23, v12);
  v18 = sub_29E754948();
  v19 = sub_29E751F88();
  _os_signpost_emit_with_name_impl(&dword_29E5ED000, v15, v18, v19, "SleepCoachingQuery", "", v14, 2u);

  MEMORY[0x29ED98410](v14, -1, -1);
  sub_29E751758();
  (*(v2 + 8))(v5, v21);
  (*(v7 + 8))(v11, v22);
  return v23;
}

uint64_t sub_29E6C89A0(unsigned __int8 *a1, void *a2)
{
  v37[1] = *MEMORY[0x29EDCA608];
  v4 = sub_29E752098();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37[0] = 0;
  v8 = [a2 isCurrentOnboardingVersionCompletedWithError_];
  if (v8)
  {
    v9 = v8;
    v10 = v37[0];
    v11 = [v9 BOOLValue];

    *a1 = v11;
  }

  else
  {
    v12 = v37[0];
    v13 = sub_29E74EA48();

    swift_willThrow();
    sub_29E752048();
    v14 = v13;
    v15 = sub_29E752088();
    v16 = sub_29E7546A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v33 = v16;
      v18 = v17;
      v34 = swift_slowAlloc();
      v37[0] = v34;
      *v18 = 136446466;
      v19 = sub_29E755178();
      v21 = sub_29E6B9C90(v19, v20, v37);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v32 = &v32;
      v23 = *(*(v36 - 8) + 64);
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v25 + 16))(&v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      v26 = sub_29E7541F8();
      v28 = sub_29E6B9C90(v26, v27, v37);

      *(v18 + 14) = v28;
      _os_log_impl(&dword_29E5ED000, v15, v33, "[%{public}s] Error reading onboarding version complete during init: %{public}s", v18, 0x16u);
      v29 = v34;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v29, -1, -1);
      MEMORY[0x29ED98410](v18, -1, -1);
    }

    else
    {
    }

    (*(v35 + 8))(v7, v4);
  }

  v31 = *MEMORY[0x29EDCA608];
  return result;
}

id sub_29E6C8D80()
{
  v1 = v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepChartComponent;
  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepChartComponent);
  v3 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepChartComponent + 8);
  v4 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepChartComponent + 16);
  if (v2)
  {
    v5 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepChartComponent);
    v6 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepChartComponent + 8);
    v7 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepChartComponent + 16);
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_dataType);
    *v1 = v8;
    *(v1 + 8) = xmmword_29E769F00;
    v5 = v8;
  }

  sub_29E6CBFA8(v2);
  return v5;
}

__n128 sub_29E6C8E38@<Q0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepOnboardingComponent;
  swift_beginAccess();
  sub_29E6CBED4(v1 + v3, v7, &unk_2A18594B8, &qword_2A1859448, &_s24SleepOnboardingComponentVN, sub_29E6CBB58);
  if (*(&v7[0] + 1) == 1)
  {
    sub_29E6CBF48(v7, &unk_2A18594B8, &qword_2A1859448, &_s24SleepOnboardingComponentVN, sub_29E6CBB58);
    sub_29E6C8F9C(v1, a1);
    sub_29E6CBBC4(a1, v7, &qword_2A1859448, &_s24SleepOnboardingComponentVN);
    swift_beginAccess();
    sub_29E6CBE60(v7, v1 + v3, &unk_2A18594B8, &qword_2A1859448, &_s24SleepOnboardingComponentVN, sub_29E6CBB58);
    swift_endAccess();
  }

  else
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

double sub_29E6C8F9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E6CBED4(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_onboardingManager, &v6, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E60BCF8);
  if (v7)
  {
    sub_29E5FAEE4(&v6, v8);
    v4 = *(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher);
    if (v4)
    {
      sub_29E602E20(v8, a2 + 16);
      sub_29E602E20(a1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider, a2 + 56);

      sub_29E5FECBC(v8);
      *a2 = 0x626E4F7065656C53;
      *(a2 + 8) = 0xEF676E696472616FLL;
      *(a2 + 96) = v4;
      return result;
    }

    sub_29E5FECBC(v8);
  }

  else
  {
    sub_29E6CBF48(&v6, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E60BCF8);
  }

  *(a2 + 96) = 0;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_29E6C90E4()
{
  v1 = (v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent);
  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent);
  v3 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent + 8);
  v4 = v2;
  v5 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent + 16);
  v6 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent + 24);
  if (v3 == 1)
  {
    v7 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepStore);
    if (v7)
    {
      v8 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher);
      if (v8)
      {
        v9 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_userDefaults);
        v10 = objc_allocWithZone(type metadata accessor for SleepFocusPromotionStore(0));
        v11 = v7;

        v7 = sub_29E70A79C(v11, v9);

        v12 = 0x800000029E757130;
        v13 = *v1;
        v15 = v1[2];
        v16 = v1[3];
        v18 = v1[1];
        v4 = 0xD000000000000013;
LABEL_8:
        *v1 = v4;
        v1[1] = v12;
        v1[2] = v7;
        v1[3] = v8;
        sub_29E6CBDA8(v4, v12, v7);
        sub_29E6CBDF4(v13, v18, v15);
        goto LABEL_9;
      }

      v4 = 0;
      v12 = 0;
      v7 = 0;
    }

    else
    {
      v4 = 0;
      v12 = 0;
      v8 = 0;
    }

    v17 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent + 24);
    v18 = 1;
    v15 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent + 16);
    v13 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent);
    goto LABEL_8;
  }

LABEL_9:
  sub_29E6CBE50(v2, v3, v5);
  return v4;
}

uint64_t sub_29E6C9264()
{
  v1 = (v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepScheduleOffComponent);
  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepScheduleOffComponent);
  v3 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepScheduleOffComponent + 8);
  v4 = v2;
  v5 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepScheduleOffComponent + 16);
  if (v3 == 1)
  {
    v6 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher);
    if (v6)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0;
    }

    if (v6)
    {
      v7 = 0x800000029E75E840;
    }

    else
    {
      v7 = 0;
    }

    *v1 = v4;
    v1[1] = v7;
    v1[2] = v6;

    sub_29E6CBD54(v4, v7);
  }

  sub_29E6CBD98(v2, v3);
  return v4;
}

uint64_t sub_29E6C932C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent);
  v5 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent);
  v6 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent + 8);
  v7 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent + 16);
  v8 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent + 24);
  v9 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent + 32);
  v10 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent + 40);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v4[6];
  if (v6 == 1)
  {
    v13 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepStore);
    v35 = v5;
    v34 = v7;
    v32 = v9;
    v33 = v8;
    v30 = v4[6];
    v31 = v10;
    if (v13)
    {
      v17 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher);
      if (v17)
      {
        v18 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider + 32);
        sub_29E601938((v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider), *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider + 24));
        v19 = v13;

        v14 = sub_29E74F4E8();
        v15 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_dateCache);
        v16 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_gregorianCalendarCache);
        v20 = v15;
        v21 = v16;
        v22 = v4[1];
        v24 = *v4;
        v25 = v4[2];
        v27 = v4[3];
        v28 = v4[4];
        v29 = v4[5];
        v12 = 0xEE0065636E657272;
        v11 = 0x7563634F7478654ELL;
        v26 = v4[6];
LABEL_8:
        *v4 = v11;
        v4[1] = v12;
        v4[2] = v13;
        v4[3] = v14;
        v4[4] = v15;
        v4[5] = v16;
        v4[6] = v17;
        sub_29E6CBC44(v11, v12, v13, v14, v15, v16);
        sub_29E6CBCBC(v24, v22, v25, v27, v28, v29);
        v5 = v35;
        v7 = v34;
        v6 = 1;
        v9 = v32;
        v8 = v33;
        v10 = v31;
        goto LABEL_9;
      }

      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    v22 = 1;
    v27 = v8;
    v28 = v9;
    v29 = v10;
    v24 = v5;
    v25 = v7;
    goto LABEL_8;
  }

LABEL_9:
  result = sub_29E6CBD44(v5, v6, v7, v8, v9, v10);
  *a1 = v11;
  a1[1] = v12;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v15;
  a1[5] = v16;
  a1[6] = v17;
  return result;
}

uint64_t sub_29E6C9534@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepScheduleComponent;
  swift_beginAccess();
  result = sub_29E6CBED4(v1 + v3, v10, &unk_2A18594B0, &unk_2A1859450, &_s22SleepScheduleComponentVN, sub_29E6CBB58);
  if (*(&v10[0] + 1) == 1)
  {
    sub_29E6CBF48(v10, &unk_2A18594B0, &unk_2A1859450, &_s22SleepScheduleComponentVN, sub_29E6CBB58);
    v5 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher);
    if (v5)
    {
      sub_29E602E20(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider, a1 + 16);
      v6 = 0xED0000656C756465;
      v7 = 0x6863537065656C53;
    }

    else
    {
      v7 = 0;
      v6 = 0;
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
    }

    *a1 = v7;
    *(a1 + 8) = v6;
    *(a1 + 56) = v5;
    sub_29E6CBBC4(a1, v10, &unk_2A1859450, &_s22SleepScheduleComponentVN);
    swift_beginAccess();

    sub_29E6CBE60(v10, v1 + v3, &unk_2A18594B0, &unk_2A1859450, &_s22SleepScheduleComponentVN, sub_29E6CBB58);
    return swift_endAccess();
  }

  else
  {
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    v9 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v9;
  }

  return result;
}

uint64_t sub_29E6C96F8@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x29EDC26B8];
  v4 = MEMORY[0x29EDC9C68];
  sub_29E6CBAA4(0, &qword_2A18593C8, MEMORY[0x29EDC26B8], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v18[-v10];
  v12 = OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___favoritesComponent;
  swift_beginAccess();
  sub_29E6CBED4(v1 + v12, v11, &qword_2A18593C8, v3, v4, sub_29E6CBAA4);
  v13 = sub_29E751348();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v11, v13);
  }

  sub_29E6CBF48(v11, &qword_2A18593C8, MEMORY[0x29EDC26B8], MEMORY[0x29EDC9C68], sub_29E6CBAA4);
  v15 = qword_2A1A7D6F0;
  v16 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_dataType);
  if (v15 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E751328();
  (*(v14 + 16))(v9, a1, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_29E6CBE60(v9, v1 + v12, &qword_2A18593C8, MEMORY[0x29EDC26B8], MEMORY[0x29EDC9C68], sub_29E6CBAA4);
  return swift_endAccess();
}

uint64_t sub_29E6C9A44@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v1 = MEMORY[0x29EDB98E8];
  v2 = MEMORY[0x29EDC9C68];
  sub_29E6CBAA4(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v28 - v5;
  v7 = sub_29E750528();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E693FB8(v11);
  v12 = sub_29E750518();
  (*(v8 + 8))(v11, v7);
  v13 = MEMORY[0x29EDC9E90];
  sub_29E6CBB08(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E7655E0;
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *(inited + 40) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  v29 = v12;
  sub_29E6DAC4C(inited);
  v15 = v29;
  sub_29E750088();
  sub_29E6CBAA4(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v16 = sub_29E74FB98();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_29E762F30;
  (*(v17 + 104))(v20 + v19, *MEMORY[0x29EDC3760], v16);
  v21 = sub_29E74E838();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  sub_29E6CBB08(0, &qword_2A1858820, MEMORY[0x29EDC37E0], v13);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29E762F40;
  *(v22 + 32) = sub_29E74FBE8();
  *(v22 + 40) = 0;
  v23 = MEMORY[0x29ED92970](v20, v15, v6, v22);

  sub_29E6CBF48(v6, &unk_2A18594A0, v1, v2, sub_29E6CBAA4);
  v24 = v28;
  *v28 = v23;
  v25 = *MEMORY[0x29EDC2AF8];
  v26 = sub_29E7519F8();
  return (*(*(v26 - 8) + 104))(v24, v25, v26);
}

uint64_t sub_29E6C9E80()
{
  v1 = v0;
  v99 = sub_29E7519E8();
  v98 = *(v99 - 8);
  v2 = *(v98 + 64);
  MEMORY[0x2A1C7C4A8](v99);
  v97 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E7519F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v96 = (&v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = sub_29E751208();
  v101 = *(v102 - 8);
  v7 = *(v101 + 64);
  MEMORY[0x2A1C7C4A8](v102);
  v100 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_29E751218();
  v94 = *(v108 - 8);
  v9 = *(v94 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v108);
  v95 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v93 = (&v90 - v13);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v92 = &v90 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v91 = &v90 - v17;
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v20 = &v90 - v19;
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v90 - v21;
  v23 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_dataType);
  sub_29E751228();
  sub_29E751298();
  v24 = sub_29E6C8D80();
  v26 = v25;
  v28 = v27;
  *(&v114 + 1) = &_s19SleepChartComponentVN;
  v29 = sub_29E6CB74C();
  *&v113 = v24;
  *(&v113 + 1) = v26;
  *&v115 = v29;
  *&v114 = v28;
  v107 = sub_29E7513D8();
  sub_29E7518F8();

  sub_29E6CBF48(&v113, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  v106 = v1;
  sub_29E6C8E38(&v113);
  if (*(&v113 + 1))
  {
    v30 = sub_29E6CBA50();
    v31 = swift_allocObject();
    v32 = v118;
    *(v31 + 80) = v117;
    *(v31 + 96) = v32;
    *(v31 + 112) = v119;
    v33 = v114;
    *(v31 + 16) = v113;
    *(v31 + 32) = v33;
    v34 = v116;
    *(v31 + 48) = v115;
    *(v31 + 64) = v34;
    v35 = &_s24SleepOnboardingComponentVN;
  }

  else
  {
    sub_29E6CB7A0(&v113, &qword_2A1859448, &_s24SleepOnboardingComponentVN);
    v31 = 0;
    v35 = 0;
    v30 = 0;
    *(&v113 + 1) = 0;
    *&v114 = 0;
  }

  *&v113 = v31;
  *(&v114 + 1) = v35;
  *&v115 = v30;
  v36 = v94;
  v37 = *(v94 + 104);
  v104 = *MEMORY[0x29EDC2618];
  v103 = v94 + 104;
  v105 = v37;
  (v37)(v22);
  sub_29E6CBED4(&v113, &v111, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  if (v112)
  {
    sub_29E5FAEE4(&v111, &v120);
    sub_29E7518E8();
    sub_29E5FECBC(&v120);
    v38 = *(v36 + 8);
    v38(v22, v108);
  }

  else
  {
    v38 = *(v36 + 8);
    v38(v22, v108);
    sub_29E6CBF48(&v111, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  }

  sub_29E6CBF48(&v113, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  v39 = sub_29E6C90E4();
  if (v40)
  {
    v43 = v39;
    v44 = v40;
    v45 = v41;
    v46 = v42;
    v47 = sub_29E6CB9FC();
    v48 = swift_allocObject();
    v48[2] = v43;
    v48[3] = v44;
    v48[4] = v45;
    v48[5] = v46;
    v49 = &_s28SleepFocusPromotionComponentVN;
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v47 = 0;
    *(&v113 + 1) = 0;
    *&v114 = 0;
  }

  *&v113 = v48;
  *(&v114 + 1) = v49;
  *&v115 = v47;
  v105(v20, v104, v108);
  sub_29E6CBED4(&v113, &v111, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  if (v112)
  {
    sub_29E5FAEE4(&v111, &v120);
    sub_29E7518E8();
    sub_29E5FECBC(&v120);
    v50 = v38;
    v38(v20, v108);
  }

  else
  {
    v50 = v38;
    v38(v20, v108);
    sub_29E6CBF48(&v111, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  }

  sub_29E6CBF48(&v113, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  v51 = sub_29E6C9264();
  v54 = v53;
  if (v53)
  {
    v55 = v51;
    v56 = v52;
    v57 = &_s25SleepScheduleOffComponentVN;
    v58 = sub_29E6CB9A8();
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
  }

  *&v113 = v55;
  *(&v113 + 1) = v54;
  *&v114 = v56;
  *(&v114 + 1) = v57;
  *&v115 = v58;
  sub_29E751258();
  v59 = v91;
  v60 = v104;
  v105(v91, v104, v108);
  sub_29E6CBED4(&v113, &v111, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  if (v112)
  {
    sub_29E5FAEE4(&v111, &v120);
    sub_29E7518E8();

    sub_29E5FECBC(&v120);
    v50(v59, v108);
  }

  else
  {

    v50(v59, v108);
    sub_29E6CBF48(&v111, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  }

  sub_29E6CBF48(&v113, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  sub_29E6C932C(&v120);
  v61 = v121;
  if (v121)
  {
    v62 = v120;
    v63 = sub_29E6CB954();
    v64 = swift_allocObject();
    *(v64 + 16) = v62;
    *(v64 + 24) = v61;
    v65 = v123;
    *(v64 + 32) = v122;
    *(v64 + 48) = v65;
    *(v64 + 64) = v124;
    v66 = &_s23NextOccurrenceComponentVN;
  }

  else
  {
    v64 = 0;
    v66 = 0;
    v63 = 0;
    *(&v113 + 1) = 0;
    *&v114 = 0;
  }

  *&v113 = v64;
  *(&v114 + 1) = v66;
  *&v115 = v63;
  v67 = v92;
  v105(v92, v60, v108);
  sub_29E6CBED4(&v113, &v109, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  if (v110)
  {
    sub_29E5FAEE4(&v109, &v111);
    sub_29E7518E8();
    sub_29E5FECBC(&v111);
    v50(v67, v108);
  }

  else
  {
    v50(v67, v108);
    sub_29E6CBF48(&v109, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  }

  v68 = v93;
  sub_29E6CBF48(&v113, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  sub_29E6C9534(&v113);
  if (*(&v113 + 1))
  {
    v69 = sub_29E6CB900();
    v70 = swift_allocObject();
    v71 = v114;
    v70[1] = v113;
    v70[2] = v71;
    v72 = v116;
    v70[3] = v115;
    v70[4] = v72;
    v73 = &_s22SleepScheduleComponentVN;
  }

  else
  {
    sub_29E6CB7A0(&v113, &unk_2A1859450, &_s22SleepScheduleComponentVN);
    v70 = 0;
    v73 = 0;
    v69 = 0;
    *(&v113 + 1) = 0;
    *&v114 = 0;
  }

  *&v113 = v70;
  *(&v114 + 1) = v73;
  *&v115 = v69;
  v105(v68, v60, v108);
  sub_29E6CBED4(&v113, &v109, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  v90 = v50;
  if (v110)
  {
    sub_29E5FAEE4(&v109, &v111);
    sub_29E7518E8();
    sub_29E5FECBC(&v111);
    v94 = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50(v68, v108);
  }

  else
  {
    v94 = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50(v68, v108);
    sub_29E6CBF48(&v109, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  }

  v74 = MEMORY[0x29EDC22E8];
  v93 = sub_29E60BCF8;
  sub_29E6CBF48(&v113, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], sub_29E60BCF8);
  sub_29E751248();
  *(&v114 + 1) = sub_29E751348();
  *&v115 = sub_29E6CB8B8(&qword_2A1858C30, MEMORY[0x29EDC26B8]);
  v75 = sub_29E5FEBF4(&v113);
  v76 = v106;
  sub_29E6C96F8(v75);
  sub_29E7518F8();

  sub_29E6CBF48(&v113, &qword_2A18582F0, &qword_2A1859440, v74, sub_29E60BCF8);
  v78 = *(v76 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleDataComponent);
  v77 = *(v76 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleDataComponent + 8);
  *(&v114 + 1) = &_s26SleepScheduleDataComponentVN;
  *&v115 = sub_29E6CB810();
  *&v113 = v78;
  *(&v113 + 1) = v77;

  sub_29E751288();
  v79 = v95;
  v80 = v108;
  v81 = v105;
  v105(v95, v104, v108);
  sub_29E7518E8();

  v82 = v90;
  v90(v79, v80);
  sub_29E5FECBC(&v113);
  v84 = *(v76 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepDurationGoalComponent);
  v83 = *(v76 + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepDurationGoalComponent + 8);
  *(&v114 + 1) = &_s26SleepDurationGoalComponentVN;
  *&v115 = sub_29E6CB864();
  *&v113 = v84;
  *(&v113 + 1) = v83;
  v81(v79, v104, v80);

  sub_29E7518E8();
  v82(v79, v80);
  sub_29E5FECBC(&v113);
  sub_29E6C9A44(v96);
  (*(v98 + 104))(v97, *MEMORY[0x29EDC2AF0], v99);
  v85 = v100;
  sub_29E7511F8();
  sub_29E7512A8();
  v86 = v102;
  *(&v114 + 1) = v102;
  *&v115 = sub_29E6CB8B8(&qword_2A1859470, MEMORY[0x29EDC2610]);
  v87 = sub_29E5FEBF4(&v113);
  v88 = v101;
  (*(v101 + 16))(v87, v85, v86);
  sub_29E7518F8();

  (*(v88 + 8))(v85, v86);
  return sub_29E6CBF48(&v113, &qword_2A18582F0, &qword_2A1859440, MEMORY[0x29EDC22E8], v93);
}

void sub_29E6CAFF4()
{
  v0 = sub_29E7513C8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_29E6CBAA4(319, &qword_2A18593C8, MEMORY[0x29EDC26B8], MEMORY[0x29EDC9C68]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29E6CB184()
{
  v1 = sub_29E7513D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_29E6C9E80();
  v7 = sub_29E751148();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_29E6CB2F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v21 = a4;
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v22 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752048();
  v10 = sub_29E752088();
  v11 = sub_29E7546C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[1] = v4;
    v14 = v13;
    v23 = v13;
    *v12 = 136446210;
    v15 = sub_29E755178();
    v17 = sub_29E6B9C90(v15, v16, &v23);
    v20[0] = v5;
    v18 = v17;

    *(v12 + 4) = v18;
    _os_log_impl(&dword_29E5ED000, v10, v11, v21, v12, 0xCu);
    sub_29E5FECBC(v14);
    MEMORY[0x29ED98410](v14, -1, -1);
    MEMORY[0x29ED98410](v12, -1, -1);

    (*(v6 + 8))(v9, v20[0]);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_29E6C8238();
}

uint64_t initializeBufferWithCopyOfBuffer for SleepRoomState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepRoomState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepRoomState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_29E6CB74C()
{
  result = qword_2A1859430;
  if (!qword_2A1859430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859430);
  }

  return result;
}

uint64_t sub_29E6CB7A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_29E6CBB08(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29E6CB810()
{
  result = qword_2A1859460;
  if (!qword_2A1859460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859460);
  }

  return result;
}

unint64_t sub_29E6CB864()
{
  result = qword_2A1859468;
  if (!qword_2A1859468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859468);
  }

  return result;
}

uint64_t sub_29E6CB8B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E6CB900()
{
  result = qword_2A1859478;
  if (!qword_2A1859478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859478);
  }

  return result;
}

unint64_t sub_29E6CB954()
{
  result = qword_2A1859480;
  if (!qword_2A1859480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859480);
  }

  return result;
}

unint64_t sub_29E6CB9A8()
{
  result = qword_2A1859488;
  if (!qword_2A1859488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859488);
  }

  return result;
}

unint64_t sub_29E6CB9FC()
{
  result = qword_2A1859490;
  if (!qword_2A1859490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859490);
  }

  return result;
}

unint64_t sub_29E6CBA50()
{
  result = qword_2A1859498;
  if (!qword_2A1859498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859498);
  }

  return result;
}

void sub_29E6CBAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E6CBB08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E6CBB58(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29E6CBB08(255, a3, a4, MEMORY[0x29EDC9C68]);
    v5 = sub_29E754BD8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E6CBBC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_29E6CBB08(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E6CBC44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (a2)
  {

    v9 = a3;

    v10 = a5;
    v11 = a6;
  }

  return result;
}

uint64_t sub_29E6CBCBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (a2 != 1)
  {
    return sub_29E6CBCCC(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_29E6CBCCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_29E6CBD44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (a2 != 1)
  {
    return sub_29E6CBC44(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_29E6CBD54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_29E6CBD98(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_29E6CBD54(a1, a2);
  }

  return a1;
}

uint64_t sub_29E6CBDA8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {

    v4 = a3;
  }

  return result;
}

uint64_t sub_29E6CBDF4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 != 1)
  {
    return sub_29E6CBE04(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_29E6CBE04(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_29E6CBE50(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 != 1)
  {
    return sub_29E6CBDA8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_29E6CBE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 40))(a2, a1, v8);
  return a2;
}

uint64_t sub_29E6CBED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_29E6CBF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void *sub_29E6CBFA8(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void *sub_29E6CBFE8(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29E6CC028(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_29E6CC038(a1, a2);
  }

  return a1;
}

uint64_t sub_29E6CC038(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t type metadata accessor for SupplementaryTypeSection()
{
  result = qword_2A18594C0;
  if (!qword_2A18594C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6CC108(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v20 = MEMORY[0x29EDCA190];
    sub_29E6DBB54(0, v1, 0);
    v2 = v20;
    v4 = a1 + 32;
    do
    {
      sub_29E602E20(v4, v16);
      sub_29E609CF8(0, &qword_2A1858310);
      sub_29E609CF8(0, &qword_2A1856FF0);
      swift_dynamicCast();
      v20 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_29E6DBB54((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = sub_29E613218(v17, v18);
      v10 = *(*(v7 - 8) + 64);
      MEMORY[0x2A1C7C4A8](v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12);
      sub_29E6CE380(v6, v12, &v20, v7, v8);
      sub_29E5FECBC(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_29E6CC2E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_29E754C98();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x29EDCA190];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x29EDCA190];
  result = sub_29E6DBB54(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x29ED976A0](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_29E6DBB54((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for SettingsToggleItem(0);
        v15 = sub_29E6CEA0C(&qword_2A1859548, type metadata accessor for SettingsToggleItem);
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_29E5FAEE4(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_29E6DBB54((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for SettingsToggleItem(0);
        v15 = sub_29E6CEA0C(&qword_2A1859548, type metadata accessor for SettingsToggleItem);
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_29E5FAEE4(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6CC508(uint64_t a1)
{
  v2 = type metadata accessor for SleepOnboardingScheduleItem(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x29EDCA190];
  if (v7)
  {
    v18 = MEMORY[0x29EDCA190];
    sub_29E6DBB54(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_29E6CE9A8(v9, v6);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_29E6DBB54((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_29E6CEA0C(&qword_2A1857018, type metadata accessor for SleepOnboardingScheduleItem);
      v13 = sub_29E5FEBF4(&v15);
      sub_29E6CE9A8(v6, v13);
      *(v8 + 16) = v12 + 1;
      sub_29E5FAEE4(&v15, v8 + 40 * v12 + 32);
      sub_29E6CEA54(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_29E6CC6D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v18 = MEMORY[0x29EDCA190];
    sub_29E6DBB54(0, v1, 0);
    v2 = v18;
    v4 = (a1 + 72);
    do
    {
      v5 = *(v4 - 4);
      v7 = *(v4 - 3);
      v6 = *(v4 - 2);
      v8 = *v4;
      v13 = *(v4 - 1);
      v14 = *(v4 - 5);
      v18 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_29E6DBB54((v10 > 1), v9 + 1, 1);
        v2 = v18;
      }

      v4 += 6;
      v16 = &type metadata for AddScheduledItem;
      v17 = sub_29E68D0D8();
      v11 = swift_allocObject();
      *&v15 = v11;
      v11[2] = v14;
      v11[3] = v5;
      v11[4] = v7;
      v11[5] = v6;
      v11[6] = v13;
      v11[7] = v8;
      *(v2 + 16) = v9 + 1;
      sub_29E5FAEE4(&v15, v2 + 40 * v9 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_29E6CC80C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v13 = MEMORY[0x29EDCA190];
    sub_29E6DBC6C(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_29E6DBC6C((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for SleepInternalSettingsViewController.ResetRow;
      v12 = &off_2A2500960;
      LOBYTE(v10) = v5;
      *(v2 + 16) = v8 + 1;
      sub_29E5FAEE4(&v10, v2 + 40 * v8 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_29E6CC8FC(uint64_t a1)
{
  v2 = sub_29E751B38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x29EDCA190];
  if (v7)
  {
    v22 = MEMORY[0x29EDCA190];
    sub_29E6DBCC4(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_29E6DBCC4((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = MEMORY[0x29EDC2BE0];
      v15 = sub_29E5FEBF4(&v19);
      v10(v15, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_29E5FAEE4(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_29E6CCAC8(uint64_t a1)
{
  v2 = sub_29E750EE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x29EDCA190];
  if (v7)
  {
    v22 = MEMORY[0x29EDCA190];
    sub_29E6DBB54(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_29E6DBB54((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = sub_29E6CEA0C(&qword_2A1859540, MEMORY[0x29EDC23F8]);
      v15 = sub_29E5FEBF4(&v19);
      v10(v15, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_29E5FAEE4(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_29E6CCCC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v75 = a2;
  v3 = sub_29E751908();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v72 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_29E74F698();
  v69 = *(v71 - 8);
  v6 = *(v69 + 64);
  MEMORY[0x2A1C7C4A8](v71);
  v68 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDC9C68];
  sub_29E68E4E8(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v67 = &v55 - v11;
  v12 = sub_29E750DC8();
  v65 = *(v12 - 8);
  v66 = v12;
  v13 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v76 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E68E4E8(0, &qword_2A1856A98, MEMORY[0x29EDC7770], v8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v57 = &v55 - v17;
  v59 = sub_29E752108();
  v58 = *(v59 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v59);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E7520C8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29E752258();
  v62 = *(v26 - 8);
  v27 = v62;
  v28 = *(v62 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752248();

  v31 = v30;
  v60 = v30;
  sub_29E752228();
  v32 = [a1 identifier];
  v33 = sub_29E7541D8();
  v35 = v34;

  v77 = v33;
  v78 = v35;
  MEMORY[0x29ED96C20](0x6C6C41776F68532ELL, 0xEC00000061746144);
  v63 = v78;
  v64 = v77;
  v61 = v26;
  v79 = v26;
  v80 = MEMORY[0x29EDC7800];
  v36 = sub_29E5FEBF4(&v77);
  (*(v27 + 16))(v36, v31, v26);
  sub_29E68E4E8(0, &qword_2A1856AA0, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v37 = *(sub_29E752128() - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  (*(v22 + 104))(v25, *MEMORY[0x29EDC7768], v21);
  v40 = sub_29E7520D8();
  (*(*(v40 - 8) + 56))(v57, 1, 1, v40);
  sub_29E7520F8();
  sub_29E7520E8();
  (*(v58 + 8))(v20, v59);
  (*(v22 + 8))(v25, v21);
  v41 = swift_allocObject();
  v42 = v56;
  v43 = v70;
  *(v41 + 16) = v56;
  *(v41 + 24) = v43;
  *v76 = 1;
  v44 = *MEMORY[0x29EDC22C0];
  (*(v65 + 104))();
  v45 = sub_29E752178();
  (*(*(v45 - 8) + 56))(v67, 1, 1, v45);
  v47 = v68;
  v46 = v69;
  v48 = v71;
  (*(v69 + 104))(v68, *MEMORY[0x29EDC6AD0], v71);
  sub_29E662E20();
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_29E762F40;
  v50 = [v42 identifier];
  v51 = sub_29E7541D8();
  v53 = v52;

  *(v49 + 32) = v51;
  *(v49 + 40) = v53;
  *(v49 + 48) = 0x446C6C41776F6853;
  *(v49 + 56) = 0xEB00000000617461;
  sub_29E754298();

  (*(v46 + 8))(v47, v48);
  (*(v73 + 104))(v72, *MEMORY[0x29EDC2A38], v74);
  sub_29E750ED8();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_29E6CD50C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v74 = a2;
  v3 = sub_29E751908();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v71 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_29E74F698();
  v68 = *(v70 - 8);
  v6 = *(v68 + 64);
  MEMORY[0x2A1C7C4A8](v70);
  v67 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDC9C68];
  sub_29E68E4E8(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v66 = &v54 - v11;
  v12 = sub_29E750DC8();
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v75 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E68E4E8(0, &qword_2A1856A98, MEMORY[0x29EDC7770], v8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v56 = &v54 - v17;
  v58 = sub_29E752108();
  v57 = *(v58 - 8);
  v18 = *(v57 + 64);
  MEMORY[0x2A1C7C4A8](v58);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_29E7520C8();
  v21 = *(v55 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v55);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29E752258();
  v61 = *(v25 - 8);
  v26 = v61;
  v27 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v25);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752248();

  v59 = v29;
  sub_29E752228();
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_29E754D78();
  v30 = [a1 identifier];
  v31 = sub_29E7541D8();
  v33 = v32;

  v76 = v31;
  v77 = v33;
  MEMORY[0x29ED96C20](0xD000000000000015, 0x800000029E75E910);
  v62 = v77;
  v63 = v76;
  v60 = v25;
  v78 = v25;
  v79 = MEMORY[0x29EDC7800];
  v34 = sub_29E5FEBF4(&v76);
  (*(v26 + 16))(v34, v29, v25);
  sub_29E68E4E8(0, &qword_2A1856AA0, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v35 = *(sub_29E752128() - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  v38 = v55;
  (*(v21 + 104))(v24, *MEMORY[0x29EDC7768], v55);
  v39 = sub_29E7520D8();
  (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
  sub_29E7520F8();
  sub_29E7520E8();
  (*(v57 + 8))(v20, v58);
  (*(v21 + 8))(v24, v38);
  v40 = swift_allocObject();
  v41 = v54;
  v42 = v69;
  *(v40 + 16) = v54;
  *(v40 + 24) = v42;
  *v75 = 1;
  v43 = *MEMORY[0x29EDC22C0];
  (*(v64 + 104))();
  v44 = sub_29E752178();
  (*(*(v44 - 8) + 56))(v66, 1, 1, v44);
  v46 = v67;
  v45 = v68;
  v47 = v70;
  (*(v68 + 104))(v67, *MEMORY[0x29EDC6AD0], v70);
  sub_29E662E20();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_29E762F40;
  v49 = [v41 identifier];
  v50 = sub_29E7541D8();
  v52 = v51;

  *(v48 + 32) = v50;
  *(v48 + 40) = v52;
  *(v48 + 48) = 0x72756F5361746144;
  *(v48 + 56) = 0xEB00000000736563;
  sub_29E754298();

  (*(v45 + 8))(v46, v47);
  (*(v72 + 104))(v71, *MEMORY[0x29EDC2A38], v73);
  sub_29E750ED8();
  return (*(v61 + 8))(v59, v60);
}

uint64_t sub_29E6CDDB8()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E38();
  v5 = sub_29E750E68();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E6CDF30(void *a1, void *a2, uint64_t a3, uint64_t a4, const char *a5, SEL *a6)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6CE00C(a2, a1, a5, a6);
}

void sub_29E6CE00C(void *a1, void *a2, const char *a3, SEL *a4)
{
  v7 = v4;
  v10 = sub_29E752098();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v15 = a1;
  v16 = sub_29E752088();
  v17 = sub_29E7546C8();

  v18 = os_log_type_enabled(v16, v17);
  v45 = v7;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v41 = a3;
    v20 = v19;
    v42 = swift_slowAlloc();
    v46[0] = v42;
    *v20 = 136446466;
    v21 = sub_29E755178();
    v43 = v10;
    v23 = sub_29E6B9C90(v21, v22, v46);
    v44 = a2;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v25 = v15;
    v26 = [v25 description];
    v27 = sub_29E7541D8();
    HIDWORD(v40) = v17;
    v28 = v11;
    v29 = v15;
    v30 = a4;
    v32 = v31;

    a2 = v44;
    v33 = sub_29E6B9C90(v27, v32, v46);
    a4 = v30;
    v15 = v29;

    *(v20 + 14) = v33;
    _os_log_impl(&dword_29E5ED000, v16, BYTE4(v40), v41, v20, 0x16u);
    v34 = v42;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v34, -1, -1);
    MEMORY[0x29ED98410](v20, -1, -1);

    (*(v28 + 8))(v14, v43);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v35 = [a2 resolvedHealthToolbox];
  v36 = [v35 *a4];

  v46[1] = &unk_2A2538648;
  v37 = swift_dynamicCastObjCProtocolConditional();
  if (v37)
  {
    v38 = v37;
    v46[0] = v45;
    sub_29E6CE930();
    v39 = v36;
    [a2 showAdaptively:v38 sender:sub_29E755058()];

    sub_29E751758();
  }

  else
  {
    v46[0] = v45;
    sub_29E6CE930();
    [a2 showViewController:v36 sender:sub_29E755058()];
    sub_29E751758();
  }
}

uint64_t sub_29E6CE380(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_29E5FEBF4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_29E5FAEE4(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_29E6CE418(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v42 = a4;
  v43 = a5;
  v47 = v6;
  v8 = *v6;
  v9 = sub_29E74ED88();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v44 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E750EE8();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = v40 - v18;
  v40[1] = v8;
  v41 = a1;
  sub_29E6CCCC0(a1, v40 - v18);

  v20 = sub_29E6DAD84(0, 1, 1, MEMORY[0x29EDCA190]);
  v22 = v20[2];
  v21 = v20[3];
  if (v22 >= v21 >> 1)
  {
    v20 = sub_29E6DAD84((v21 > 1), v22 + 1, 1, v20);
  }

  v49 = v12;
  v23 = sub_29E6CEA0C(&qword_2A1858328, MEMORY[0x29EDC23F8]);
  v50 = v23;
  v24 = sub_29E5FEBF4(&v48);
  v25 = v13[2];
  v25(v24, v19, v12);
  v20[2] = v22 + 1;
  sub_29E5FAEE4(&v48, &v20[5 * v22 + 4]);
  v26 = v13[1];
  v26(v19, v12);
  sub_29E6CD50C(v41, v17);

  v28 = v20[2];
  v27 = v20[3];
  if (v28 >= v27 >> 1)
  {
    v20 = sub_29E6DAD84((v27 > 1), v28 + 1, 1, v20);
  }

  v49 = v12;
  v50 = v23;
  v29 = sub_29E5FEBF4(&v48);
  v25(v29, v17, v12);
  v20[2] = v28 + 1;
  sub_29E5FAEE4(&v48, &v20[5 * v28 + 4]);
  v26(v17, v12);
  sub_29E68E4E8(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v30 = *(sub_29E750CA8() - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E6CC108(v20);

  v33 = v44;
  sub_29E74ED78();
  sub_29E74ED48();
  v34 = v46;
  v35 = *(v45 + 8);
  v35(v33, v46);
  sub_29E750C98();
  *&v48 = 0;
  *(&v48 + 1) = 0xE000000000000000;
  sub_29E754D78();

  strcpy(&v48, "MutableArray<");
  HIWORD(v48) = -4864;
  sub_29E74ED78();
  v36 = sub_29E74ED48();
  v38 = v37;
  v35(v33, v34);
  MEMORY[0x29ED96C20](v36, v38);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  return sub_29E750D08();
}

unint64_t sub_29E6CE930()
{
  result = qword_2A1859538;
  if (!qword_2A1859538)
  {
    type metadata accessor for SupplementaryTypeSection();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1859538);
  }

  return result;
}

uint64_t sub_29E6CE9A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepOnboardingScheduleItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6CEA0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E6CEA54(uint64_t a1)
{
  v2 = type metadata accessor for SleepOnboardingScheduleItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_29E6CEAB0()
{
  v0 = sub_29E7519E8();
  v16 = *(v0 - 8);
  v17 = v0;
  v1 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v15 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E7519F8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v14 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_29E751208();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() appleSleepScoreType];
  if (result)
  {
    v12 = result;
    sub_29E751228();

    sub_29E751298();
    *(&v19 + 1) = &_s25LatestSleepScoreComponentVN;
    v20 = sub_29E6CEF3C();
    sub_29E7513D8();
    sub_29E7518F8();

    sub_29E6CF658(&v18, &qword_2A18582F0, sub_29E6CEF90);
    sub_29E751258();
    sub_29E63027C();
    MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D0]);
    sub_29E6CF4D4(&unk_2A24FCFB8);
    *(&v19 + 1) = sub_29E7512C8();
    v20 = sub_29E6CF764(&qword_2A1859558, MEMORY[0x29EDC2638]);
    sub_29E5FEBF4(&v18);
    sub_29E7512B8();
    sub_29E7518F8();

    sub_29E6CF658(&v18, &qword_2A18582F0, sub_29E6CEF90);
    sub_29E751288();
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_29E7518F8();

    sub_29E6CF658(&v18, &qword_2A18582F0, sub_29E6CEF90);
    sub_29E751268();
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_29E7518F8();

    sub_29E6CF658(&v18, &qword_2A18582F0, sub_29E6CEF90);
    sub_29E6CEFF4(v14);
    (*(v16 + 104))(v15, *MEMORY[0x29EDC2AF0], v17);
    sub_29E7511F8();
    sub_29E7512A8();
    *(&v19 + 1) = v6;
    v20 = sub_29E6CF764(&qword_2A1859470, MEMORY[0x29EDC2610]);
    v13 = sub_29E5FEBF4(&v18);
    (*(v7 + 16))(v13, v10, v6);
    sub_29E7518F8();

    (*(v7 + 8))(v10, v6);
    return sub_29E6CF658(&v18, &qword_2A18582F0, sub_29E6CEF90);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_29E6CEF3C()
{
  result = qword_2A1859550;
  if (!qword_2A1859550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859550);
  }

  return result;
}

unint64_t sub_29E6CEF90()
{
  result = qword_2A1859440;
  if (!qword_2A1859440)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1859440);
  }

  return result;
}

uint64_t sub_29E6CEFF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x29EDB98E8];
  sub_29E6CF5A4(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v24 - v5;
  v7 = sub_29E750528();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E693FB8(v11);
  v12 = sub_29E750518();
  (*(v8 + 8))(v11, v7);
  sub_29E750088();
  sub_29E6CF5A4(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v13 = sub_29E74FB98();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29E762F30;
  (*(v14 + 104))(v17 + v16, *MEMORY[0x29EDC3760], v13);
  v18 = sub_29E74E838();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_29E6CF608();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29E762F40;
  *(v19 + 32) = sub_29E74FBE8();
  *(v19 + 40) = 0;
  v20 = MEMORY[0x29ED92970](v17, v12, v6, v19);

  sub_29E6CF658(v6, &unk_2A18594A0, v2);
  *a1 = v20;
  v21 = *MEMORY[0x29EDC2AF8];
  v22 = sub_29E7519F8();
  return (*(*(v22 - 8) + 104))(a1, v21, v22);
}

uint64_t sub_29E6CF34C()
{
  v0 = sub_29E751388();
  v1 = sub_29E7513B8();
  v2 = type metadata accessor for LatestSleepScoreSnapshotDataSource();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_29E6D7190(v0, v1);
  sub_29E750828();

  v5 = sub_29E750818();

  return v5;
}

unint64_t sub_29E6CF3FC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_29E7550C8();
  MEMORY[0x29ED979F0](a1);
  v4 = sub_29E755108();

  return sub_29E6CF468(a1, v4);
}

unint64_t sub_29E6CF468(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_29E6CF4D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E6CF6C8();
    v3 = sub_29E754EB8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_29E6CF3FC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29E6CF5A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E6CF608()
{
  if (!qword_2A1858820)
  {
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858820);
    }
  }
}

uint64_t sub_29E6CF658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6CF5A4(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E6CF6C8()
{
  if (!qword_2A1859560)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_29E6CF764(&qword_2A1859568, type metadata accessor for UIUserInterfaceSizeClass);
    v0 = sub_29E754EC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859560);
    }
  }
}

uint64_t sub_29E6CF764(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E6CF7D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  v4 = sub_29E7541D8();
  v6 = v5;

  if (v4 == 0xD00000000000003ALL && 0x800000029E75D980 == v6)
  {
  }

  else
  {
    v8 = sub_29E755028();

    if ((v8 & 1) == 0)
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  *(a2 + 24) = &type metadata for BreathingDisturbancesActionProvider;
  result = sub_29E6CF8A8();
  *(a2 + 32) = result;
  return result;
}

unint64_t sub_29E6CF8A8()
{
  result = qword_2A1859570;
  if (!qword_2A1859570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859570);
  }

  return result;
}

__n128 sub_29E6CF908(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_29E6CF91C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_29E6CF964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_29E6CF9C8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_29E6D0D2C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_29E755028();
}

uint64_t sub_29E6CFA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v35[1] = a1;
  v37 = a4;
  v7 = sub_29E753198();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6D027C();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6D06AC(0, &qword_2A18595C0, sub_29E6D0720, sub_29E6D0890);
  v36 = v18;
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = v35 - v20;
  v38 = a1;
  v39 = a2;
  v40 = a3 & 1;
  sub_29E6D0340();
  sub_29E6D05BC(&qword_2A18595A8, sub_29E6D0340, sub_29E6D0574);
  sub_29E753568();
  sub_29E753188();
  sub_29E6D0B78(&qword_2A18595D8, sub_29E6D027C);
  sub_29E7538B8();
  (*(v8 + 8))(v11, v7);
  (*(v14 + 8))(v17, v13);
  type metadata accessor for SleepOptionsModel();
  sub_29E6D0B78(&qword_2A1859600, type metadata accessor for SleepOptionsModel);
  v22 = sub_29E752A48();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  v23 = v41;
  sub_29E74F418();
  sub_29E6D0B78(&qword_2A18568C0, MEMORY[0x29EDC6A30]);
  v24 = sub_29E752748();
  sub_29E6D0720(0);
  v26 = &v21[*(v25 + 36)];
  *v26 = v24;
  v26[1] = v23;
  v27 = sub_29E752A48();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  v28 = v41;
  sub_29E74F948();
  sub_29E6D0B78(&qword_2A1858198, MEMORY[0x29EDC6B68]);
  v29 = sub_29E752748();
  v30 = &v21[*(v36 + 36)];
  *v30 = v29;
  v30[1] = v28;
  v31 = sub_29E752A48();
  v32 = *&v31[OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel_navigationTitle];
  v33 = *&v31[OBJC_IVAR____TtC20SleepHealthAppPlugin17SleepOptionsModel_navigationTitle + 8];

  v41 = v32;
  v42 = v33;
  sub_29E6D0968();
  sub_29E60DE10();
  sub_29E7537C8();

  return sub_29E5F69F4(v21);
}

uint64_t sub_29E6CFFA4()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SleepOptionsModel();
  sub_29E6D0B78(&qword_2A1859600, type metadata accessor for SleepOptionsModel);
  v0 = sub_29E752A48();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  sub_29E6D0408();
  sub_29E6D0458(0);
  sub_29E6D0B78(&qword_2A18595A0, sub_29E6D0408);
  sub_29E6D0574();
  sub_29E6D0CD8();
  sub_29E753B48();
}

double sub_29E6D01A0@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E623B84(v3, v7);

  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  return result;
}

void sub_29E6D027C()
{
  if (!qword_2A1859578)
  {
    sub_29E6D0340();
    sub_29E6D05BC(&qword_2A18595A8, sub_29E6D0340, sub_29E6D0574);
    v0 = sub_29E753578();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859578);
    }
  }
}

void sub_29E6D0340()
{
  if (!qword_2A1859580)
  {
    sub_29E6D0408();
    sub_29E6D0458(255);
    sub_29E6D0B78(&qword_2A18595A0, sub_29E6D0408);
    v0 = sub_29E753B58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859580);
    }
  }
}

void sub_29E6D0408()
{
  if (!qword_2A1859588)
  {
    v0 = sub_29E754448();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859588);
    }
  }
}

void sub_29E6D048C()
{
  if (!qword_2A1859598)
  {
    sub_29E6D0524(255, &qword_2A1857320);
    sub_29E6D0524(255, &qword_2A1857328);
    v0 = sub_29E753128();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859598);
    }
  }
}

void sub_29E6D0524(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_29E753128();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_29E6D05BC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E6D062C()
{
  result = qword_2A18595B8;
  if (!qword_2A18595B8)
  {
    sub_29E6D048C();
    sub_29E6284D0();
    sub_29E628624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18595B8);
  }

  return result;
}

void sub_29E6D06AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29E752C28();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6D0754()
{
  if (!qword_2A18595D0)
  {
    sub_29E6D027C();
    sub_29E753198();
    sub_29E6D0B78(&qword_2A18595D8, sub_29E6D027C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A18595D0);
    }
  }
}

void sub_29E6D08F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E6D095C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_29E6CFFA4();
}

unint64_t sub_29E6D0968()
{
  result = qword_2A1859608;
  if (!qword_2A1859608)
  {
    sub_29E6D06AC(255, &qword_2A18595C0, sub_29E6D0720, sub_29E6D0890);
    sub_29E6D0A48();
    sub_29E6D0B78(&qword_2A1859620, sub_29E6D0890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859608);
  }

  return result;
}

unint64_t sub_29E6D0A48()
{
  result = qword_2A1859610;
  if (!qword_2A1859610)
  {
    sub_29E6D0720(255);
    sub_29E6D027C();
    sub_29E753198();
    sub_29E6D0B78(&qword_2A18595D8, sub_29E6D027C);
    swift_getOpaqueTypeConformance2();
    sub_29E6D0B78(&qword_2A1859618, sub_29E6D0828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859610);
  }

  return result;
}

uint64_t sub_29E6D0B78(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_29E6D0BC0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_29E6D0C48(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v6 = v5;
  return sub_29E752898();
}

unint64_t sub_29E6D0CD8()
{
  result = qword_2A1859628;
  if (!qword_2A1859628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859628);
  }

  return result;
}

uint64_t sub_29E6D0D2C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SleepApneaOnboardingStartViewController()
{
  result = qword_2A1859638;
  if (!qword_2A1859638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E6D0E20()
{
  v1 = sub_29E74F8B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0;
  *(v0 + qword_2A1859630 + 8) = 0;
  swift_unknownObjectWeakInit();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v6 = qword_2A1A7FA18;
  sub_29E74F8A8();
  sub_29E74F7C8();
  v7 = *(v2 + 8);
  v7(v5, v1);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v7(v5, v1);
  v8 = v6;
  v9 = sub_29E754198();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

  if (v10)
  {
    sub_29E7519C8();
  }

  else
  {
    __break(1u);
  }
}

void sub_29E6D108C()
{
  v1 = v0;
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_29E74F8B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  started = type metadata accessor for SleepApneaOnboardingStartViewController();
  v26.receiver = v1;
  v26.super_class = started;
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v8 + 8))(v11, v7);
  v13 = sub_29E754198();

  v14 = *MEMORY[0x29EDC6AC0];
  v25 = v3[13];
  v24 = v14;
  v25(v6, v14, v2);
  sub_29E754238();
  v15 = v3[1];
  v15(v6, v2);
  v16 = sub_29E754198();

  v17 = [v1 headerView];
  v18 = v14;
  v19 = v25;
  v25(v6, v18, v2);
  sub_29E754238();
  v15(v6, v2);
  v20 = sub_29E754198();

  [v17 setTitleAccessibilityIdentifier_];

  v21 = [v1 headerView];
  v19(v6, v24, v2);
  sub_29E754238();
  v15(v6, v2);
  v22 = sub_29E754198();

  [v21 setDetailTextAccessibilityIdentifier_];
}

uint64_t sub_29E6D14A4()
{
  sub_29E6979D8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_29E7544D8();
    v7 = sub_29E7544F8();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    sub_29E7544C8();
    swift_unknownObjectRetain();
    v8 = v0;
    v9 = sub_29E7544B8();
    v10 = swift_allocObject();
    v11 = MEMORY[0x29EDCA390];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v6;
    v10[5] = v8;
    v10[6] = &off_2A2501AE8;
    sub_29E6E4804(0, 0, v4, &unk_29E767EC0, v10);

    return sub_29E751758();
  }

  return result;
}

void sub_29E6D1620(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_29E6D16EC(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    sub_29E6D1950(v3, 0, &unk_2A2501B20, &unk_29E76A460);

    sub_29E751758();
  }

  else
  {
  }
}

id sub_29E6D1848()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaOnboardingStartViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E6D1898(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A1859630 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29E751758();
}

uint64_t sub_29E6D1950(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  LODWORD(v5) = a2;
  v7 = *a1;
  sub_29E6979D8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E752098();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v16 = sub_29E752088();
  v17 = sub_29E7546C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v5;
    v5 = v18;
    v19 = swift_slowAlloc();
    v35 = a4;
    v20 = v19;
    v40 = v19;
    *v5 = 136315650;
    nullsub_1(v7);
    v21 = sub_29E755178();
    v23 = sub_29E6B9C90(v21, v22, &v40);

    *(v5 + 4) = v23;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_29E6B9C90(0xD000000000000025, 0x800000029E75EAF0, &v40);
    *(v5 + 22) = 2080;
    v39 = v36;
    v24 = sub_29E7541F8();
    v26 = sub_29E6B9C90(v24, v25, &v40);

    *(v5 + 24) = v26;
    _os_log_impl(&dword_29E5ED000, v16, v17, "[%s.%s]: Onboarding did cancel from stage %s", v5, 0x20u);
    swift_arrayDestroy();
    v27 = v20;
    a4 = v35;
    MEMORY[0x29ED98410](v27, -1, -1);
    v28 = v5;
    LOBYTE(v5) = v36;
    MEMORY[0x29ED98410](v28, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  sub_29E71AFB8(0, 0);
  v29 = sub_29E7544F8();
  v30 = v37;
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  sub_29E7544C8();

  v31 = sub_29E7544B8();
  v32 = swift_allocObject();
  v33 = MEMORY[0x29EDCA390];
  *(v32 + 16) = v31;
  *(v32 + 24) = v33;
  *(v32 + 32) = a1;
  *(v32 + 40) = v5;
  *(v32 + 41) = 1;
  sub_29E6E4804(0, 0, v30, a4, v32);
}

uint64_t sub_29E6D1CB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 41);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29E66A9A0;

  return sub_29E71BF18(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_29E6D1D80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 41);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29E605728;

  return sub_29E71BF18(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_29E6D1E4C()
{
  v1 = *(v0 + 16);
  sub_29E751758();
  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 42, 7);
}

uint64_t sub_29E6D1EF8@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E751D88() ^ a1;
  sub_29E752048();
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = a2;
    v33 = v15;
    v16 = v15;
    *v14 = 136446466;
    v17 = sub_29E755178();
    v31 = v6;
    v18 = v3;
    v20 = sub_29E6B9C90(v17, v19, &v33);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    if (v11)
    {
      v21 = 0x65736C6166;
    }

    else
    {
      v21 = 1702195828;
    }

    if (v11)
    {
      v22 = 0xE500000000000000;
    }

    else
    {
      v22 = 0xE400000000000000;
    }

    v23 = sub_29E6B9C90(v21, v22, &v33);
    v3 = v18;

    *(v14 + 14) = v23;
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] isVisible: %s", v14, 0x16u);
    swift_arrayDestroy();
    v24 = v16;
    a2 = v32;
    MEMORY[0x29ED98410](v24, -1, -1);
    MEMORY[0x29ED98410](v14, -1, -1);

    (*(v7 + 8))(v10, v31);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v25 = *(v3 + qword_2A1869458);
  v26 = *(v3 + qword_2A1869458 + 8);
  v27 = sub_29E7508F8();
  v28 = MEMORY[0x29EDC1FF8];
  if ((v11 & 1) == 0)
  {
    v28 = MEMORY[0x29EDC2000];
  }

  return (*(*(v27 - 8) + 104))(a2, *v28, v27);
}

uint64_t sub_29E6D219C()
{
  v0 = sub_29E7508F8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v3 = &v7 - v2;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v5 = *(Strong + *(*Strong + qword_2A1869458 + 24));

  sub_29E6D1EF8(v5, v3);
  sub_29E750908();
}

uint64_t sub_29E6D2358()
{
  sub_29E5FECBC((v0 + *(*v0 + qword_2A1869458 + 16)));
  v1 = *(v0 + *(*v0 + qword_2A1869458 + 32));
}

void *sub_29E6D23F4()
{
  v0 = sub_29E750938();
  sub_29E5FECBC((v0 + *(*v0 + qword_2A1869458 + 16)));
  v1 = *(v0 + *(*v0 + qword_2A1869458 + 32));

  return v0;
}

uint64_t sub_29E6D2490()
{
  sub_29E6D23F4();

  return swift_deallocClassInstance();
}

void *sub_29E6D24D8(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v51 = a2;
  v7 = *v3;
  v48 = sub_29E752098();
  v47 = *(v48 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v48);
  v59 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6212E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v54 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6894C4();
  v57 = *(v13 - 8);
  v58 = v13;
  v14 = *(v57 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v56 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29E751D98();
  v45 = *(v46 - 8);
  v16 = *(v45 + 64);
  MEMORY[0x2A1C7C4A8](v46);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v7;
  v20 = v7 + qword_2A1869458;
  v21 = *(v7 + qword_2A1869458);
  v52 = *(v7 + qword_2A1869458 + 8);
  v53 = v21;
  v22 = sub_29E7508F8();
  v61 = *(v22 - 8);
  v62 = v22;
  v23 = *(v61 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v50 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = &v45 - v26;
  *(v4 + *(v20 + 32)) = MEMORY[0x29EDCA1A0];
  sub_29E602E20(a1, v4 + *(*v4 + qword_2A1869458 + 16));
  v28 = a3;
  *(v4 + *(*v4 + qword_2A1869458 + 24)) = a3;
  v30 = a1[3];
  v29 = a1[4];
  v55 = a1;
  sub_29E601938(a1, v30);
  sub_29E751DB8();
  v60 = v27;
  v49 = v19;
  sub_29E6D1EF8(v28 & 1, v27);
  (*(v45 + 8))(v18, v46);
  (*(v61 + 16))(v50, v27, v62);
  swift_unknownObjectRetain();
  v31 = sub_29E750918();
  v32 = v55;
  v33 = v55[4];
  sub_29E601938(v55, v55[3]);
  swift_retain_n();
  v63 = sub_29E751DC8();
  sub_29E602DD4();
  v34 = sub_29E754908();
  v64 = v34;
  v35 = sub_29E7548D8();
  v36 = v54;
  (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
  sub_29E64C52C();
  sub_29E6D2E6C(&qword_2A1A7BFA0, sub_29E64C52C);
  sub_29E6D2E6C(&qword_2A18568B8, sub_29E602DD4);
  v37 = v56;
  sub_29E752968();
  sub_29E6214E8(v36);

  v38 = swift_allocObject();
  swift_weakInit();

  v39 = swift_allocObject();
  v40 = v52;
  v39[2] = v53;
  v39[3] = v40;
  v41 = v49;
  v39[4] = v38;
  v39[5] = v41;
  sub_29E6D2E6C(&qword_2A18585D0, sub_29E6894C4);
  v42 = v58;
  sub_29E7529A8();

  (*(v57 + 8))(v37, v42);
  v43 = *(*v31 + qword_2A1869458 + 32);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  (*(v61 + 8))(v60, v62);
  sub_29E5FECBC(v32);
  return v31;
}

void *sub_29E6D2DF8(uint64_t *a1, uint64_t a2, char a3)
{
  v7 = *(v3 + qword_2A1869458);
  v8 = *(v3 + qword_2A1869458 + 8);
  v9 = type metadata accessor for FeatureOnboardedHideableDataSource();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  return sub_29E6D24D8(a1, a2, a3);
}

uint64_t sub_29E6D2E60()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_29E6D219C();
}

uint64_t sub_29E6D2E6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E6D2EB4(uint64_t result, void (*a2)(uint64_t *, id *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 32); ; ++i)
    {
      v9 = *i;
      v8 = v9;
      a2(&v10, &v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t sub_29E6D2F58(char *a1, void *a2)
{
  v77 = a2;
  sub_29E6D5C4C();
  v76 = v3;
  v75 = *(v3 - 8);
  v4 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74FEB8();
  v80 = *(v6 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v78 = v8;
  v79 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6D5E1C();
  v72 = v9;
  v70 = *(v9 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v69 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6D5EB0();
  v13 = v12;
  v73 = *(v12 - 8);
  v14 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v71 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6C0 != -1)
  {
    swift_once();
  }

  v16 = sub_29E74FE48();
  v17 = sub_29E61037C(v16, qword_2A1A7FA00);
  (*(*(v16 - 8) + 16))(v81 + OBJC_IVAR____TtC20SleepHealthAppPlugin36SleepOnboardingTileGeneratorPipeline_domain, v17, v16);
  v18 = *MEMORY[0x29EDBAFB0];
  v19 = *MEMORY[0x29EDBAFC8];
  v20 = sub_29E7541D8();
  v22 = v21;
  v23 = objc_allocWithZone(MEMORY[0x29EDB8E78]);
  v24 = v19;
  v25 = [v23 initWithSuiteName_];
  if (v25)
  {
    v26 = v25;
    v27 = type metadata accessor for UserDefaultsBooleanObserver();
    v28 = objc_allocWithZone(v27);
    v68 = v6;
    v29 = a1;
    v30 = v13;
    v31 = OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_objectWillChange;
    sub_29E622640();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    *&v28[v31] = sub_29E752778();
    *&v28[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext] = 0;
    *&v28[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults] = v26;
    v35 = &v28[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_key];
    *v35 = v20;
    v35[1] = v22;
    v82.receiver = v28;
    v82.super_class = v27;
    v36 = v26;
    v37 = objc_msgSendSuper2(&v82, sel_init);
    v38 = OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext;
    v13 = v30;
    a1 = v29;
    v6 = v68;
    v39 = v37;
    [v36 addObserver:v39 forKeyPath:v24 options:0 context:&v37[v38]];

    v85 = v27;
    v86 = &off_2A24FE4B0;
    *&v84 = v39;
    sub_29E5FAEE4(&v84, v87);
  }

  else
  {

    v40 = type metadata accessor for BooleanObserver();
    v41 = swift_allocObject();
    sub_29E622640();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    *(v41 + 16) = sub_29E752778();
    *(v41 + 24) = 0;
    v87[3] = v40;
    v87[4] = &off_2A24FE498;
    v87[0] = v41;
  }

  sub_29E74FE58();
  sub_29E601938(&v84, v85);
  v45 = sub_29E74FDD8();
  sub_29E602E20(v87, v83);
  v46 = objc_allocWithZone(type metadata accessor for SleepOnboardingChangeDetector());
  v47 = v77;
  v48 = sub_29E6D4DB0(v45, v47, v83, v46);
  sub_29E5FECBC(&v84);
  v49 = OBJC_IVAR____TtC20SleepHealthAppPlugin36SleepOnboardingTileGeneratorPipeline_changeDetector;
  v50 = v81;
  *(v81 + OBJC_IVAR____TtC20SleepHealthAppPlugin36SleepOnboardingTileGeneratorPipeline_changeDetector) = v48;
  v51 = sub_29E74FE68();
  *&v84 = *(*(v50 + v49) + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_onboardingCapability);
  if (v51)
  {
    v52 = v79;
    v53 = v80;
    v54 = v6;
    (*(v80 + 16))(v79, a1, v6);
    v55 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v56 = swift_allocObject();
    (*(v53 + 32))(v56 + v55, v52, v6);
    sub_29E6D6178(0, &qword_2A1A7D4D8, sub_29E6D5CF8, MEMORY[0x29EDB8A60]);
    sub_29E66257C();
    sub_29E6D5D94();
    v79 = a1;

    v57 = v74;
    sub_29E7528F8();

    sub_29E6D6564(qword_2A1A7D538, sub_29E6D5C4C);
    v58 = v76;
    v59 = sub_29E7528E8();

    (*(v53 + 8))(v79, v54);
    (*(v75 + 8))(v57, v58);
  }

  else
  {
    sub_29E6D6178(0, &qword_2A1A7D4D8, sub_29E6D5CF8, MEMORY[0x29EDB8A60]);
    sub_29E6D5D94();
    v60 = v69;
    sub_29E752938();
    v62 = v79;
    v61 = v80;
    (*(v80 + 16))(v79, a1, v6);
    v63 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v64 = swift_allocObject();
    (*(v61 + 32))(v64 + v63, v62, v6);
    sub_29E66257C();
    sub_29E6D6564(&qword_2A1A7D520, sub_29E6D5E1C);
    v65 = v71;
    v66 = v72;
    sub_29E752928();

    (*(v70 + 8))(v60, v66);
    sub_29E6D6564(&qword_2A1A7BFF8, sub_29E6D5EB0);
    v59 = sub_29E7528E8();

    (*(v61 + 8))(a1, v6);
    (*(v73 + 8))(v65, v13);
  }

  sub_29E5FECBC(v87);
  result = v81;
  *(v81 + 16) = v59;
  return result;
}

uint64_t sub_29E6D3858@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29E6D60E4();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74FEB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = *a1;
  v13 = *(v8 + 16);
  v30 = &v28 - v14;
  v13();
  v15 = type metadata accessor for SleepOnboardingTileGenerator();
  a2[3] = v15;
  a2[4] = sub_29E6D6564(&qword_2A1A7D690, type metadata accessor for SleepOnboardingTileGenerator);
  v16 = sub_29E5FEBF4(a2);
  v17 = qword_2A1A7D6C0;
  v29 = v12;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_29E74FE48();
  v19 = sub_29E61037C(v18, qword_2A1A7FA00);
  (*(*(v18 - 8) + 16))(v16 + *(v15 + 20), v19, v18);
  v20 = v30;
  (v13)(v11, v30, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v21, v11, v7);
  *(v23 + v22) = v29;
  sub_29E6D6178(0, &qword_2A1A7D4F8, sub_29E6D61EC, MEMORY[0x29EDB89F8]);
  sub_29E6D623C();
  v24 = v31;
  sub_29E752848();
  sub_29E6D6564(&qword_2A1A7D4B8, sub_29E6D60E4);
  v25 = v33;
  v26 = sub_29E7528E8();
  (*(v32 + 8))(v24, v25);
  result = (*(v8 + 8))(v20, v7);
  *v16 = v26;
  return result;
}

uint64_t sub_29E6D3C1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_29E6D60E4();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74FEB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = *a1;
  v13 = *(v8 + 16);
  v30 = &v28 - v14;
  v13();
  v15 = type metadata accessor for SleepOnboardingTileGenerator();
  a2[3] = v15;
  a2[4] = sub_29E6D6564(&qword_2A1A7D690, type metadata accessor for SleepOnboardingTileGenerator);
  v16 = sub_29E5FEBF4(a2);
  v17 = qword_2A1A7D6C0;
  v29 = v12;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_29E74FE48();
  v19 = sub_29E61037C(v18, qword_2A1A7FA00);
  (*(*(v18 - 8) + 16))(v16 + *(v15 + 20), v19, v18);
  v20 = v30;
  (v13)(v11, v30, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v21, v11, v7);
  *(v23 + v22) = v29;
  sub_29E6D6178(0, &qword_2A1A7D4F8, sub_29E6D61EC, MEMORY[0x29EDB89F8]);
  sub_29E6D623C();
  v24 = v31;
  sub_29E752848();
  sub_29E6D6564(&qword_2A1A7D4B8, sub_29E6D60E4);
  v25 = v33;
  v26 = sub_29E7528E8();
  (*(v32 + 8))(v24, v25);
  result = (*(v8 + 8))(v20, v7);
  *v16 = v26;
  return result;
}

uint64_t sub_29E6D3FE0()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC20SleepHealthAppPlugin36SleepOnboardingTileGeneratorPipeline_domain;
  v3 = sub_29E74FE48();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SleepOnboardingTileGeneratorPipeline()
{
  result = qword_2A1A7D5F0;
  if (!qword_2A1A7D5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6D40E8()
{
  result = sub_29E74FE48();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29E6D4194@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20SleepHealthAppPlugin36SleepOnboardingTileGeneratorPipeline_domain;
  v5 = sub_29E74FE48();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29E6D4210()
{
  v26 = sub_29E74FE18();
  v0 = *(v26 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E750528();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74FE48();
  sub_29E6103B4(v9, qword_2A1A7FA00);
  v25[2] = sub_29E61037C(v9, qword_2A1A7FA00);
  v25[1] = sub_29E74FBE8();
  sub_29E6D6400(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v10 = sub_29E74FB98();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E762F30;
  (*(v11 + 104))(v14 + v13, *MEMORY[0x29EDC3790], v10);
  sub_29E5FF364(v14);
  swift_setDeallocating();
  (*(v11 + 8))(v14 + v13, v10);
  swift_deallocClassInstance();
  sub_29E693FB8(v8);
  v15 = sub_29E750518();
  (*(v5 + 8))(v8, v4);
  if (v15 >> 62)
  {
    sub_29E609B5C(0, &qword_2A1A7D480, 0x29EDBAD78);

    v24 = sub_29E754E68();
    swift_bridgeObjectRelease_n();
    v15 = v24;
    v18 = v26;
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;

    sub_29E755038();
    sub_29E609B5C(0, &qword_2A1A7D480, 0x29EDBAD78);
    v17 = swift_dynamicCastMetatype();
    v18 = v26;
    if (v17 || (v21 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v22 = (v16 + 32);
      while (1)
      {
        v23 = *v22;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v22;
        if (!--v21)
        {
          goto LABEL_3;
        }
      }

      v15 = v16 | 1;
    }
  }

  v19 = sub_29E6D5A94(v15, &qword_2A1A7D480, 0x29EDBAD78, &qword_2A1A7D478, sub_29E64A184);

  sub_29E6D463C(v19);

  (*(v0 + 104))(v3, *MEMORY[0x29EDC3898], v18);
  return sub_29E74FE38();
}

void sub_29E6D463C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x29EDCA1A0];
    goto LABEL_6;
  }

  if (!sub_29E754C98())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29E5FF284();
  v3 = sub_29E754D48();
LABEL_6:
  if (sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8) == MEMORY[0x29EDC99B0])
  {
    if (v2)
    {

      sub_29E754C88();
      sub_29E609B5C(0, &qword_2A1A7D480, 0x29EDBAD78);
      sub_29E6D5C00(&qword_2A1A7D478, &qword_2A1A7D480, 0x29EDBAD78);
      sub_29E754588();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v31 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v11 = v33 & *(v1 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_29E754CC8())
        {
LABEL_55:
          sub_29E6D5C44();

          return;
        }

        sub_29E609B5C(0, &qword_2A1A7D480, 0x29EDBAD78);
        swift_dynamicCast();
        v36 = v38;
      }

      else
      {
        if (v11)
        {
          v34 = v10;
        }

        else
        {
          v37 = v10;
          do
          {
            v34 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_58;
            }

            if (v34 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v34);
            ++v37;
          }

          while (!v11);
          v10 = v34;
        }

        v35 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v36 = *(*(v1 + 48) + ((v34 << 9) | (8 * v35)));
      }

      sub_29E6D4B68(v36);
    }
  }

  if (v2)
  {

    sub_29E754C88();
    sub_29E609B5C(0, &qword_2A1A7D480, 0x29EDBAD78);
    sub_29E6D5C00(&qword_2A1A7D478, &qword_2A1A7D480, 0x29EDBAD78);
    sub_29E754588();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_29E754CC8())
    {
      goto LABEL_55;
    }

    sub_29E609B5C(0, &qword_2A1A7D480, 0x29EDBAD78);
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = *(v3 + 40);
    v23 = sub_29E754B78();
    v24 = -1 << *(v3 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v26);
      }

      while (v30 == -1);
      v17 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_29E6D4B68(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_29E754B78();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8);
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_29E754B88();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(v3 + 48);
    v17 = *(v16 + 8 * v8);
    *(v16 + 8 * v8) = a1;
  }

  else
  {
LABEL_5:
    v15 = *(v3 + 16);
    if (v15 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 8 * v9) = v11 | v10;
      *(*(v3 + 48) + 8 * v8) = a1;
      *(v3 + 16) = v15 + 1;
    }
  }
}

uint64_t (*sub_29E6D4CA8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED976A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29E6D6664;
  }

  __break(1u);
  return result;
}

void (*sub_29E6D4D28(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED976A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29E6D4DA8;
  }

  __break(1u);
  return result;
}

char *sub_29E6D4DB0(void *a1, void *a2, uint64_t *a3, char *a4)
{
  v115 = a1;
  v124[1] = *MEMORY[0x29EDCA608];
  ObjectType = swift_getObjectType();
  sub_29E6D6400(0, &unk_2A1A7D440, MEMORY[0x29EDB9E10], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v111 = &v103 - v9;
  sub_29E6D6464();
  v113 = *(v10 - 8);
  v114 = v10;
  v11 = *(v113 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v112 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E752098();
  v109 = *(v13 - 8);
  v14 = v109[8];
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v108 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v103 - v17;
  v19 = OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepEventRecord;
  *&a4[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepEventRecord] = 0;
  v110 = OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepSettings;
  *&a4[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepSettings] = 0;
  *&a4[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_ageGatingDidChange] = 0;
  v20 = [objc_allocWithZone(MEMORY[0x29EDC6890]) initWithFeatureIdentifier:*MEMORY[0x29EDBA758] sleepStore:a2];
  *&a4[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_watchFeatureAvailability] = v20;
  *&a4[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepStore] = a2;
  v124[0] = 0;
  v118 = v20;
  v21 = a2;
  v22 = [v21 currentSleepEventRecordWithError_];
  v23 = v124[0];
  v117 = a3;
  if (v22)
  {
    v116 = 0;
    v24 = v22;
  }

  else
  {
    v107 = v13;
    v25 = v23;
    v26 = sub_29E74EA48();

    swift_willThrow();
    v116 = 0;
    sub_29E752068();
    v27 = v26;
    v28 = sub_29E752088();
    v29 = sub_29E7546A8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v124[0] = v106;
      *v30 = 136446466;
      nullsub_1(ObjectType);
      v31 = sub_29E755178();
      LODWORD(v105) = v29;
      v33 = sub_29E6B9C90(v31, v32, v124);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v104 = &v103;
      v35 = *(*(v120 - 8) + 64);
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v37 + 16))(&v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
      v38 = sub_29E7541F8();
      v40 = sub_29E6B9C90(v38, v39, v124);

      *(v30 + 14) = v40;
      a3 = v117;
      _os_log_impl(&dword_29E5ED000, v28, v105, "[%{public}s]: Failed to read current sleep event record: %{public}s", v30, 0x16u);
      v41 = v106;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v41, -1, -1);
      MEMORY[0x29ED98410](v30, -1, -1);
    }

    else
    {
    }

    v13 = v107;
    (v109[1])(v18, v107);
    v24 = 0;
  }

  v42 = *&a4[v19];
  *&a4[v19] = v24;
  v43 = v22;

  v124[0] = 0;
  v44 = v24;
  v45 = [v21 currentSleepSettingsWithError_];
  v46 = v124[0];
  if (v45)
  {
    v47 = v45;
  }

  else
  {
    v107 = v13;
    v48 = v46;
    v49 = sub_29E74EA48();

    swift_willThrow();
    v116 = 0;
    v50 = v108;
    sub_29E752068();
    v51 = v49;
    v52 = sub_29E752088();
    v53 = sub_29E7546A8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v106 = v43;
      v55 = v54;
      v105 = swift_slowAlloc();
      v124[0] = v105;
      *v55 = 136446466;
      nullsub_1(ObjectType);
      v56 = sub_29E755178();
      v58 = sub_29E6B9C90(v56, v57, v124);
      LODWORD(v104) = v53;
      v59 = v58;

      *(v55 + 4) = v59;
      *(v55 + 12) = 2082;
      v60 = swift_getErrorValue();
      v61 = *(*(v121 - 8) + 64);
      MEMORY[0x2A1C7C4A8](v60);
      (*(v63 + 16))(&v103 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
      v64 = sub_29E7541F8();
      v66 = sub_29E6B9C90(v64, v65, v124);

      *(v55 + 14) = v66;
      a3 = v117;
      _os_log_impl(&dword_29E5ED000, v52, v104, "[%{public}s]: Failed to read current sleep settings: %{public}s", v55, 0x16u);
      v67 = v105;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v67, -1, -1);
      v68 = v55;
      v43 = v106;
      MEMORY[0x29ED98410](v68, -1, -1);

      (v109[1])(v108, v107);
    }

    else
    {

      (v109[1])(v50, v107);
    }

    v47 = 0;
  }

  v109 = v21;
  v69 = *&a4[v110];
  *&a4[v110] = v47;
  v70 = v45;

  sub_29E602E20(a3, &a4[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_isAgeGatedObserver]);
  v71 = qword_2A1A7D610;
  v72 = v70;
  if (v71 != -1)
  {
    swift_once();
  }

  v73 = off_2A1A7D620;
  v74 = sub_29E68B34C(MEMORY[0x29EDCA190]);
  v75 = MEMORY[0x2A1C7C4A8](v74);
  v77 = v118;
  v76 = ObjectType;
  *(&v103 - 6) = v118;
  *(&v103 - 5) = v24;
  *(&v103 - 4) = v47;
  *(&v103 - 3) = a3;
  *(&v103 - 2) = v76;
  v78 = sub_29E6D2EB4(v75, sub_29E6D65AC, (&v103 - 8), v73);

  v124[0] = v78;
  sub_29E6D6178(0, &qword_2A1A7D4D8, sub_29E6D5CF8, MEMORY[0x29EDB8A60]);
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  swift_allocObject();
  *&a4[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_onboardingCapability] = sub_29E7527E8();
  v82 = type metadata accessor for SleepOnboardingChangeDetector();
  v123.receiver = a4;
  v123.super_class = v82;
  v83 = objc_msgSendSuper2(&v123, sel_init);
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v84 = v83;
  v85 = sub_29E754908();
  [v77 registerObserver:v84 queue:v85];

  v86 = v84;
  v87 = v109;
  [v109 addObserver_];

  v88 = a3[3];
  v89 = a3[4];
  sub_29E601938(a3, v88);
  v124[0] = (*(v89 + 8))(v88, v89);
  v90 = [objc_opt_self() mainRunLoop];
  v122 = v90;
  v91 = sub_29E754BB8();
  v92 = *(*(v91 - 8) + 56);
  v116 = v72;
  v93 = v111;
  v92(v111, 1, 1, v91);
  sub_29E622640();
  sub_29E609B5C(0, &unk_2A1A7D420, 0x29EDB8E48);
  sub_29E6D6564(&qword_2A1A7D4F0, sub_29E622640);
  sub_29E6D5C00(&qword_2A1A7D430, &unk_2A1A7D420, 0x29EDB8E48);
  v94 = v112;
  sub_29E752968();
  sub_29E6D65D0(v93);

  v95 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v96 = swift_allocObject();
  v97 = ObjectType;
  *(v96 + 16) = v95;
  *(v96 + 24) = v97;
  sub_29E6D6564(&qword_2A1A7D510, sub_29E6D6464);
  v98 = v114;
  v99 = sub_29E7529A8();

  (*(v113 + 8))(v94, v98);
  v100 = *&v86[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_ageGatingDidChange];
  *&v86[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_ageGatingDidChange] = v99;

  sub_29E5FECBC(v117);
  v101 = *MEMORY[0x29EDCA608];
  return v86;
}