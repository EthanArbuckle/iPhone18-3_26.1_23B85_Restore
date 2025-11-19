double sub_1820223F0(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 156) = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_182022420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1820224B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a1 + 139) == 2 && *(a2 + 88))
  {
    v46 = *(a2 + 88);

    sub_182232DCC(&v46);
  }

  v6 = *(a2 + 81);
  if (v6 == 5 || (, v7 = sub_182233E9C(v6), , v7) && ((v6 - 3) <= 1u ? (v8 = *(a1 + 139) - 12 > 0xFFFFFFFC) : (v8 = 1), v8))
  {

    sub_182234090(a2, a3);

    return 1;
  }

  if ((v6 | 2) != 2)
  {
    v24 = *(a1 + 80);
    v23 = *(a1 + 88);
    v25 = qword_1EA837250;

    if (v25 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1)
    {
      goto LABEL_47;
    }

    v46 = 0;
    v47 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000018, 0x8000000182BD8AD0);
    v26 = 0xE700000000000000;
    v27 = 0x6C616974696E69;
    v28 = 0xE500000000000000;
    v29 = 0x7474722D30;
    v30 = 3174507;
    if (v6 != 3)
    {
      v30 = 3240043;
    }

    if (v6 != 2)
    {
      v29 = v30;
      v28 = 0xE300000000000000;
    }

    if (v6)
    {
      v27 = 0x6B616873646E6168;
      v26 = 0xE900000000000065;
    }

    if (v6 <= 1)
    {
      v31 = v27;
    }

    else
    {
      v31 = v29;
    }

    if (v6 <= 1)
    {
      v32 = v26;
    }

    else
    {
      v32 = v28;
    }

    MEMORY[0x1865D9CA0](v31, v32);

    MEMORY[0x1865D9CA0](0xD00000000000002BLL, 0x8000000182BD8AF0);
    if (*(a1 + 139) - 9 >= 3)
    {
      v33 = 0x6E6E6F6320746F6ELL;
    }

    else
    {
      v33 = 0x657463656E6E6F63;
    }

    if (*(a1 + 139) - 9 >= 3)
    {
      v34 = 0xED00006465746365;
    }

    else
    {
      v34 = 0xE900000000000064;
    }

    MEMORY[0x1865D9CA0](v33, v34);

    MEMORY[0x1865D9CA0](0xD000000000000011, 0x8000000182BD8B20);
    v36 = v46;
    v35 = v47;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v37 = sub_182AD2698();
    __swift_project_value_buffer(v37, qword_1EA843418);

    v13 = sub_182AD2678();
    v38 = sub_182AD38A8();

    if (os_log_type_enabled(v13, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46 = v40;
      *v39 = 136315650;
      v41 = sub_182AD3BF8();
      v43 = sub_181C64FFC(v41, v42, &v46);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v44 = sub_181C64FFC(v24, v23, &v46);

      *(v39 + 14) = v44;
      *(v39 + 22) = 2080;
      v45 = sub_181C64FFC(v36, v35, &v46);

      *(v39 + 24) = v45;
      _os_log_impl(&dword_181A37000, v13, v38, "%s %s %s", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v40, -1, -1);
      v21 = v39;
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  v10 = *(a1 + 80);
  v9 = *(a1 + 88);
  v11 = qword_1EA837250;

  if (v11 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1)
  {
    goto LABEL_47;
  }

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v12 = sub_182AD2698();
  __swift_project_value_buffer(v12, qword_1EA843418);

  v13 = sub_182AD2678();
  v14 = sub_182AD38A8();

  if (!os_log_type_enabled(v13, v14))
  {
LABEL_46:

LABEL_47:

    return 0;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v46 = v16;
  *v15 = 136315650;
  v17 = sub_182AD3BF8();
  v19 = sub_181C64FFC(v17, v18, &v46);

  *(v15 + 4) = v19;
  *(v15 + 12) = 2080;
  v20 = sub_181C64FFC(v10, v9, &v46);

  *(v15 + 14) = v20;
  *(v15 + 22) = 2080;
  *(v15 + 24) = sub_181C64FFC(0xD000000000000022, 0x8000000182BD8B40, &v46);
  _os_log_impl(&dword_181A37000, v13, v14, "%s %s %s", v15, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v16, -1, -1);
  v21 = v15;
LABEL_44:
  MEMORY[0x1865DF520](v21, -1, -1);

  return 0;
}

uint64_t sub_182022CC8(uint64_t a1, unsigned __int8 a2)
{
  result = 0;
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v5 = a1;
      v6 = sub_182AD3428();
      *(v6 + 16) = 3;
      *(v6 + 32) = 0;
      *(v6 + 34) = 0;
      v12 = v6;
      sub_1820D83AC(v5, 1, &v12, &v10);
      if (BYTE8(v10) == 1 && v10 != 0)
      {
        v10 = xmmword_182AEFDE0;
        v11 = 0;
        sub_181F5F494();
        swift_willThrowTypedImpl();

        return 14;
      }

      result = v12;
      if (*(v12 + 16) < 3uLL)
      {
        __break(1u);
      }

      else
      {
        v8 = (*(v12 + 34) << 16) | (*(v12 + 33) << 8);
        v9 = *(v12 + 32);

        return v8 | v9;
      }
    }

    else if (a2 == 4)
    {
      LODWORD(v12) = 0;
      sub_1820D8BA4(a1, 1, &v12, &v10);
      if (BYTE8(v10) != 1 || !v10)
      {
        return v12;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (a2 == 1)
    {
      LOBYTE(v12) = 0;
      sub_1820D7B60(a1, 1, &v12, &v10);
      if (BYTE8(v10) != 1 || v10 == 0)
      {
        return v12;
      }

      goto LABEL_18;
    }

    if (a2 == 2)
    {
      LOWORD(v12) = 0;
      sub_1820D7BB4(a1, 1, &v12, &v10);
      if (BYTE8(v10) != 1 || !v10)
      {
        return v12;
      }

LABEL_18:
      v10 = xmmword_182AEFDE0;
      v11 = 0;
      sub_181F5F494();
      swift_willThrowTypedImpl();
      return 14;
    }
  }

  return result;
}

uint64_t sub_182022EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 304);
  if ((v6 - 3) <= 1)
  {
    v7 = *(a1 + 81);
    if (v6 != v7 && (v7 - 5) >= 0xFFFFFFFE)
    {
      v12 = *(a3 + 80);
      v11 = *(a3 + 88);
      v13 = qword_1EA837250;

      if (v13 != -1)
      {
        swift_once();
      }

      v31 = v5;
      v34 = a2;
      v28 = v12;
      if (byte_1EA843430 == 1)
      {
        v29 = v11;
        sub_182AD3BA8();

        v32 = 0xD000000000000017;
        v33 = 0x8000000182BD8A60;
        if (v7 == 4)
        {
          v14 = 3240043;
        }

        else
        {
          v14 = 3174507;
        }

        MEMORY[0x1865D9CA0](v14, 0xE300000000000000);

        v15 = v32;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v16 = sub_182AD2698();
        __swift_project_value_buffer(v16, qword_1EA843418);

        v17 = sub_182AD2678();
        v18 = sub_182AD38A8();
        v19 = v33;

        if (os_log_type_enabled(v17, v18))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v32 = v21;
          *v20 = 136315650;
          v22 = sub_182AD3BF8();
          v24 = sub_181C64FFC(v22, v23, &v32);

          *(v20 + 4) = v24;
          *(v20 + 12) = 2080;
          v25 = sub_181C64FFC(v28, v29, &v32);

          *(v20 + 14) = v25;
          *(v20 + 22) = 2080;
          v26 = sub_181C64FFC(v15, v19, &v32);

          *(v20 + 24) = v26;
          _os_log_impl(&dword_181A37000, v17, v18, "%s %s %s", v20, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v21, -1, -1);
          MEMORY[0x1865DF520](v20, -1, -1);

LABEL_22:
          v27 = *(a3 + 304);

          sub_18223EF20(v27, 0);
          sub_18223EF20(v27, 1);

          v5 = v31;
          a2 = v34;
          goto LABEL_6;
        }
      }

      goto LABEL_22;
    }
  }

LABEL_6:

  v9 = sub_182234774(v5, a2);

  if (v3)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_182023268(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_18202327C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_18202327C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_182023298@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18208355C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 24);
    v12 = *(v9 + 48);
    v13 = *(v9 + 8);
    v14 = *(v9 + 32);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 8) = v13;
    *(a2 + 24) = v11;
    *(a2 + 32) = v14;
    *(a2 + 48) = v12;
  }

  return result;
}

uint64_t sub_182023364(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_182084878(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1820233F4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_182083598(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_182023480@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1820835E8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    sub_181F3CF20(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void sub_18202351C(unint64_t a1)
{
  v2 = a1;
  if ((*(a1 + 372) & 0x10) != 0)
  {
    goto LABEL_43;
  }

  v5 = v1[15];
  v3 = v1 + 15;
  v4 = v5;
  if (v5 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_182AD3EB8())
  {
    v7 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1865DA790](v7, v4);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_17;
      }

LABEL_12:
      v11 = *(v9 + 16);
      v12 = *(v9 + 24);

      v8 = *(v2 + 24);
      if (v12)
      {
        if (v8)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v11 != *(v2 + 16))
        {
          v8 = 1;
        }

        if (v8 != 1)
        {
LABEL_37:
          v27 = *(v2 + 32);
          v2 = *(v2 + 40);

          sub_182AD3BA8();

          v49 = 0xD000000000000022;
          v50 = 0x8000000182BD9A70;
          MEMORY[0x1865D9CA0](oslog->isa, oslog[1].isa);
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v28 = sub_182AD2698();
          __swift_project_value_buffer(v28, qword_1EA843418);

          v29 = sub_182AD2678();
          v1 = sub_182AD38B8();

          if (os_log_type_enabled(v29, v1))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v49 = v31;
            *v30 = 136315650;
            v32 = sub_182AD3BF8();
            v34 = sub_181C64FFC(v32, v33, &v49);

            *(v30 + 4) = v34;
            *(v30 + 12) = 2080;
            v35 = sub_181C64FFC(v27, v2, &v49);

            *(v30 + 14) = v35;
            *(v30 + 22) = 2080;
            v2 = sub_181C64FFC(0xD000000000000022, 0x8000000182BD9A70, &v49);

            *(v30 + 24) = v2;
            _os_log_impl(&dword_181A37000, v29, v1, "%s %s %s", v30, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v31, -1, -1);
            MEMORY[0x1865DF520](v30, -1, -1);
          }

          else
          {
          }

          while (1)
          {
            sub_182AD3EA8();
            __break(1u);
LABEL_43:
            v36 = *(v2 + 32);
            v2 = *(v2 + 40);
            v49 = 0;
            v50 = 0xE000000000000000;

            sub_182AD3BA8();

            v49 = 0xD000000000000026;
            v50 = 0x8000000182BD9AD0;
            MEMORY[0x1865D9CA0](*v1, v1[1]);
            v38 = v49;
            v37 = v50;
            if (qword_1EA837248 != -1)
            {
              swift_once();
            }

            v39 = sub_182AD2698();
            __swift_project_value_buffer(v39, qword_1EA843418);

            v40 = sub_182AD2678();
            v1 = sub_182AD38B8();

            if (os_log_type_enabled(v40, v1))
            {
              v41 = swift_slowAlloc();
              v42 = swift_slowAlloc();
              v49 = v42;
              *v41 = 136315650;
              v43 = sub_182AD3BF8();
              v45 = sub_181C64FFC(v43, v44, &v49);

              *(v41 + 4) = v45;
              *(v41 + 12) = 2080;
              v46 = sub_181C64FFC(v36, v2, &v49);

              *(v41 + 14) = v46;
              *(v41 + 22) = 2080;
              v2 = sub_181C64FFC(v38, v37, &v49);

              *(v41 + 24) = v2;
              _os_log_impl(&dword_181A37000, v40, v1, "%s %s %s", v41, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1865DF520](v42, -1, -1);
              MEMORY[0x1865DF520](v41, -1, -1);
            }

            else
            {
            }
          }
        }
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_20;
      }
    }

    if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v10 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  MEMORY[0x1865D9F10](v13);
  if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v14 = *(v2 + 372);
  if ((v14 & 0x10) == 0)
  {
    *(v2 + 372) = v14 | 0x10;
  }

  v16 = *(v2 + 32);
  v15 = *(v2 + 40);
  v17 = qword_1EA837250;

  if (v17 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    v49 = 0x69646E6570207369;
    v50 = 0xEB0000000020676ELL;
    MEMORY[0x1865D9CA0](oslog->isa, oslog[1].isa);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v18 = sub_182AD2698();
    __swift_project_value_buffer(v18, qword_1EA843418);

    osloga = sub_182AD2678();
    v19 = sub_182AD38A8();

    if (os_log_type_enabled(osloga, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49 = v21;
      *v20 = 136315650;
      v22 = sub_182AD3BF8();
      v24 = sub_181C64FFC(v22, v23, &v49);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = sub_181C64FFC(v16, v15, &v49);

      *(v20 + 14) = v25;
      *(v20 + 22) = 2080;
      v26 = sub_181C64FFC(0x69646E6570207369, 0xEB0000000020676ELL, &v49);

      *(v20 + 24) = v26;
      _os_log_impl(&dword_181A37000, osloga, v19, "%s %s %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v21, -1, -1);
      MEMORY[0x1865DF520](v20, -1, -1);

      return;
    }
  }
}

void sub_182023D88(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((*(a1 + 372) & 0x10) == 0)
  {
    goto LABEL_41;
  }

  isa = v1[15].isa;
  if (isa >> 62)
  {
LABEL_34:
    v5 = sub_182AD3EB8();
  }

  else
  {
    v5 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v25 = *(v3 + 32);
      v3 = *(v3 + 40);

      sub_182AD3BA8();

      v46 = 0xD00000000000001ELL;
      v47 = 0x8000000182BD8DD0;
      MEMORY[0x1865D9CA0](v1->isa, v1[1].isa);
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v26 = sub_182AD2698();
      __swift_project_value_buffer(v26, qword_1EA843418);

      v2 = sub_182AD2678();
      v27 = sub_182AD38B8();

      if (os_log_type_enabled(v2, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v46 = v29;
        *v28 = 136315650;
        v30 = sub_182AD3BF8();
        v32 = sub_181C64FFC(v30, v31, &v46);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        v33 = sub_181C64FFC(v25, v3, &v46);

        *(v28 + 14) = v33;
        *(v28 + 22) = 2080;
        v3 = sub_181C64FFC(0xD00000000000001ELL, 0x8000000182BD8DD0, &v46);

        *(v28 + 24) = v3;
        _os_log_impl(&dword_181A37000, v2, v27, "%s %s %s", v28, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v29, -1, -1);
        MEMORY[0x1865DF520](v28, -1, -1);
      }

      else
      {
      }

      while (1)
      {
        sub_182AD3EA8();
        __break(1u);
LABEL_41:
        v34 = *(v3 + 32);
        v3 = *(v3 + 40);
        v46 = 0;
        v47 = 0xE000000000000000;

        sub_182AD3BA8();

        v46 = 0xD000000000000022;
        v47 = 0x8000000182BD8D30;
        MEMORY[0x1865D9CA0](v2->isa, v2[1].isa);
        v36 = v46;
        v35 = v47;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v37 = sub_182AD2698();
        __swift_project_value_buffer(v37, qword_1EA843418);

        v2 = sub_182AD2678();
        v38 = sub_182AD38B8();

        if (os_log_type_enabled(v2, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v46 = v40;
          *v39 = 136315650;
          v41 = sub_182AD3BF8();
          v43 = sub_181C64FFC(v41, v42, &v46);

          *(v39 + 4) = v43;
          *(v39 + 12) = 2080;
          v44 = sub_181C64FFC(v34, v3, &v46);

          *(v39 + 14) = v44;
          *(v39 + 22) = 2080;
          v3 = sub_181C64FFC(v36, v35, &v46);

          *(v39 + 24) = v3;
          _os_log_impl(&dword_181A37000, v2, v38, "%s %s %s", v39, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v40, -1, -1);
          MEMORY[0x1865DF520](v39, -1, -1);
        }

        else
        {
        }
      }
    }

    if ((isa & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1865DA790](v6, isa);
    }

    else
    {
      if (v6 >= *((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    v9 = *(v8 + 16);
    v10 = *(v8 + 24);

    v11 = *(v3 + 24);
    if (v10)
    {
      if (*(v3 + 24))
      {
        break;
      }

      goto LABEL_6;
    }

    if (v9 != *(v3 + 16))
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      break;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_33;
    }
  }

  sub_182023364(v6);

  v12 = *(v3 + 372);
  if ((v12 & 0x10) != 0)
  {
    *(v3 + 372) = v12 & 0xFFFFFFEF;
  }

  v14 = *(v3 + 32);
  v13 = *(v3 + 40);
  v15 = qword_1EA837250;

  if (v15 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430)
  {
    sub_182AD3BA8();

    v46 = 0xD000000000000015;
    v47 = 0x8000000182BD8DB0;
    MEMORY[0x1865D9CA0](v2->isa, v2[1].isa);
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v16 = sub_182AD2698();
    __swift_project_value_buffer(v16, qword_1EA843418);

    oslog = sub_182AD2678();
    v17 = sub_182AD38A8();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v46 = v19;
      *v18 = 136315650;
      v20 = sub_182AD3BF8();
      v22 = sub_181C64FFC(v20, v21, &v46);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = sub_181C64FFC(v14, v13, &v46);

      *(v18 + 14) = v23;
      *(v18 + 22) = 2080;
      v24 = sub_181C64FFC(0xD000000000000015, 0x8000000182BD8DB0, &v46);

      *(v18 + 24) = v24;
      _os_log_impl(&dword_181A37000, oslog, v17, "%s %s %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v19, -1, -1);
      MEMORY[0x1865DF520](v18, -1, -1);

      return;
    }
  }
}

unint64_t sub_1820245A4(char a1, uint64_t a2, unint64_t a3)
{
  v6 = *(v3 + 48);
  result = sub_181F9DFBC(v6, *(v3 + 24), *(v3 + 88), *(v3 + 96), a1, a2, a3);
  if ((v8 & 1) == 0)
  {
    if (__OFADD__(v6, 1))
    {
      return 0;
    }

    else
    {
      *(v3 + 48) = v6 + 1;
      *(v3 + 56) = result;
      *(v3 + 64) = 0;
      if (qword_1EA837250 != -1)
      {
        v23 = result;
        swift_once();
        result = v23;
      }

      if (byte_1EA843430 == 1)
      {
        v25 = 0;
        v26 = 0xE000000000000000;
        v9 = result;
        sub_182AD3BA8();
        v11 = *v3;
        v10 = *(v3 + 8);

        v25 = v11;
        v26 = v10;
        MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD8CF0);
        v24 = v9;
        v12 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v12);

        v13 = v11;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v14 = sub_182AD2698();
        __swift_project_value_buffer(v14, qword_1EA843418);

        v15 = sub_182AD2678();
        v16 = sub_182AD38A8();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v25 = v18;
          *v17 = 136315650;
          v19 = sub_182AD3BF8();
          v21 = sub_181C64FFC(v19, v20, &v25);

          *(v17 + 4) = v21;
          *(v17 + 12) = 2080;
          *(v17 + 14) = sub_181C64FFC(a2, a3, &v25);
          *(v17 + 22) = 2080;
          v22 = sub_181C64FFC(v13, v10, &v25);

          *(v17 + 24) = v22;
          _os_log_impl(&dword_181A37000, v15, v16, "%s %s %s", v17, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v18, -1, -1);
          MEMORY[0x1865DF520](v17, -1, -1);
        }

        else
        {
        }

        return v24;
      }
    }
  }

  return result;
}

uint64_t sub_1820248B8(unint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  if (v4[10])
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1EA843418);
    v6 = sub_182AD2678();
    v7 = sub_182AD38C8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v52 = v9;
      *v8 = 136315650;
      v10 = sub_182AD3BF8();
      v12 = sub_181C64FFC(v10, v11, &v52);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v52);
      *(v8 + 22) = 2080;
      *(v8 + 24) = sub_181C64FFC(0xD000000000000021, 0x8000000182BD9850, &v52);
      _os_log_impl(&dword_181A37000, v6, v7, "%s %s %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v9, -1, -1);
      MEMORY[0x1865DF520](v8, -1, -1);
    }

    v13 = 0;
    v14 = 0;
    return v14 | v13;
  }

  if (((a1 & 1) == 0) == (a2 & 1))
  {
    if (v4[5] && (v4[14] & 1) == 0 && v4[13] > a1)
    {
      if (v4[9] <= a1)
      {
        v14 = 0;
        v13 = 1;
        return v14 | v13;
      }

      v16 = a3;
      sub_182AD3BA8();

      v52 = 0xD000000000000024;
      v53 = 0x8000000182BD98F0;
      MEMORY[0x1865D9CA0](*v4, v4[1]);
      MEMORY[0x1865D9CA0](32, 0xE100000000000000);
      goto LABEL_16;
    }

    v16 = a3;
    sub_182AD3BA8();

    v52 = 0x49206D6165727473;
    v53 = 0xEA00000000002044;
    v31 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v31);

    MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BD98B0);
    v33 = 0x49206D6165727473;
    v32 = 0xEA00000000002044;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v34 = sub_182AD2698();
    __swift_project_value_buffer(v34, qword_1EA843418);

    v35 = sub_182AD2678();
    v36 = sub_182AD38B8();

    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v16 = a3;
  v17 = *(v4 + 64);
  if ((v17 & 1) != 0 || v4[7] < a1)
  {
    sub_182AD3BA8();

    v52 = 0x282072656570;
    v53 = 0xE600000000000000;
    if (a2)
    {
      v44 = 0x746E65696C63;
    }

    else
    {
      v44 = 0x726576726573;
    }

    if (a2)
    {
      v45 = 0x726576726573;
    }

    else
    {
      v45 = 0x746E65696C63;
    }

    MEMORY[0x1865D9CA0](v44, 0xE600000000000000);
    MEMORY[0x1865D9CA0](0xD000000000000011, 0x8000000182BD9920);
    MEMORY[0x1865D9CA0](v45, 0xE600000000000000);
    MEMORY[0x1865D9CA0](0x206D616572747320, 0xE800000000000000);
    v46 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v46);

    MEMORY[0x1865D9CA0](0x207473616C2820, 0xE700000000000000);
    MEMORY[0x1865D9CA0](*v4, v4[1]);
    MEMORY[0x1865D9CA0](32, 0xE100000000000000);
    if (v17)
    {
      v47 = 0xE300000000000000;
      v48 = 7104878;
    }

    else
    {
      v48 = sub_182AD41B8();
      v47 = v49;
    }

    MEMORY[0x1865D9CA0](v48, v47);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    v33 = v52;
    v32 = v53;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v50 = sub_182AD2698();
    __swift_project_value_buffer(v50, qword_1EA843418);

    v35 = sub_182AD2678();
    v36 = sub_182AD38B8();

    if (!os_log_type_enabled(v35, v36))
    {
LABEL_32:

      goto LABEL_33;
    }

LABEL_23:
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v52 = v38;
    *v37 = 136315650;
    v39 = sub_182AD3BF8();
    v41 = sub_181C64FFC(v39, v40, &v52);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_181C64FFC(v16, a4, &v52);
    *(v37 + 22) = 2080;
    v42 = sub_181C64FFC(v33, v32, &v52);

    *(v37 + 24) = v42;
    _os_log_impl(&dword_181A37000, v35, v36, "%s %s %s", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v38, -1, -1);
    MEMORY[0x1865DF520](v37, -1, -1);
LABEL_33:

    v13 = 0;
    v14 = 0;
    return v14 | v13;
  }

  sub_182AD3BA8();

  v52 = 21339;
  v53 = 0xE200000000000000;
  v18 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v18);

  MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD9960);
  MEMORY[0x1865D9CA0](*v4, v4[1]);
  MEMORY[0x1865D9CA0](32, 0xE100000000000000);
LABEL_16:
  v19 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v19);

  MEMORY[0x1865D9CA0](41, 0xE100000000000000);
  v21 = v52;
  v20 = v53;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v22 = sub_182AD2698();
  __swift_project_value_buffer(v22, qword_1EA843418);

  v23 = sub_182AD2678();
  v24 = sub_182AD3898();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v52 = v26;
    *v25 = 136315650;
    v27 = sub_182AD3BF8();
    v29 = sub_181C64FFC(v27, v28, &v52);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_181C64FFC(v16, a4, &v52);
    *(v25 + 22) = 2080;
    v30 = sub_181C64FFC(v21, v20, &v52);

    *(v25 + 24) = v30;
    _os_log_impl(&dword_181A37000, v23, v24, "%s %s %s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v26, -1, -1);
    MEMORY[0x1865DF520](v25, -1, -1);
  }

  else
  {
  }

  v13 = 0;
  v14 = 256;
  return v14 | v13;
}

void sub_18202539C(char a1, uint8_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  if (*(v4 + 16) == 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v10 = 4 * a2 - 2;
      v11 = v10 >> 62 != 0;
      if (v10 >> 62)
      {
        v10 = 0;
      }

      v12 = 4 * a2 - 1;
      goto LABEL_10;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](*v4, *(v4 + 8));
    MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD8EF0);
    v44 = a2;
    v15 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v15);

    MEMORY[0x1865D9CA0](0xD00000000000001FLL, 0x8000000182BD8F10);
    if (v6)
    {
      v16 = 0xE700000000000000;
      v17 = 0x6E776F6E6B6E75;
    }

    else
    {
      v44 = v5;
      v17 = sub_182AD41B8();
      v16 = v18;
    }

    MEMORY[0x1865D9CA0](v17, v16);

    v19 = v45;
    v20 = v46;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v21 = sub_182AD2698();
    __swift_project_value_buffer(v21, qword_1EA843418);
    v22 = swift_allocObject();
    *(v22 + 16) = "updateRemoteMaxStreams(server:initialMaxStreams:logIDString:)";
    *(v22 + 24) = 61;
    *(v22 + 32) = 2;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_181F8C258;
    *(v23 + 24) = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = a3;
    *(v24 + 24) = a4;
    v25 = swift_allocObject();
    *(v25 + 16) = v19;
    *(v25 + 24) = v20;

    v38 = sub_182AD2678();
    v41 = sub_182AD38A8();
    v40 = swift_allocObject();
    *(v40 + 16) = 32;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_181F8C264;
    *(v26 + 24) = v23;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_181F8C27C;
    *(v27 + 24) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = 32;
    v29 = swift_allocObject();
    *(v29 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_181F8C26C;
    *(v30 + 24) = v24;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_181F8C718;
    *(v31 + 24) = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = 32;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_181F8C26C;
    *(v34 + 24) = v25;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_181F8C718;
    *(v35 + 24) = v34;
    if (os_log_type_enabled(v38, v41))
    {
      v36 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = 0;
      v37 = v42;
      *v36 = 770;
      v44 = v36 + 2;
      v45 = sub_181F8C274;
      v46 = v40;
      sub_181F73AE0(&v45, &v44, &v43, &v42);

      v45 = sub_181F8C728;
      v46 = v39;
      sub_181F73AE0(&v45, &v44, &v43, &v42);

      v45 = sub_181F8C284;
      v46 = v27;
      sub_181F73AE0(&v45, &v44, &v43, &v42);

      v45 = sub_181F8C728;
      v46 = v28;
      sub_181F73AE0(&v45, &v44, &v43, &v42);

      v45 = sub_181F8C728;
      v46 = v29;
      sub_181F73AE0(&v45, &v44, &v43, &v42);

      v45 = sub_181F8C714;
      v46 = v31;
      sub_181F73AE0(&v45, &v44, &v43, &v42);

      v45 = sub_181F8C728;
      v46 = v32;
      sub_181F73AE0(&v45, &v44, &v43, &v42);

      v45 = sub_181F8C728;
      v46 = v33;
      sub_181F73AE0(&v45, &v44, &v43, &v42);

      v45 = sub_181F8C714;
      v46 = v35;
      sub_181F73AE0(&v45, &v44, &v43, &v42);

      _os_log_impl(&dword_181A37000, v38, v41, "%s %s %s", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v37, -1, -1);
      MEMORY[0x1865DF520](v36, -1, -1);
    }

    else
    {
    }

    return;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  v10 = 4 * a2 - 4;
  v11 = v10 >> 62 != 0;
  if (v10 >> 62)
  {
    v10 = 0;
  }

  v12 = 4 * a2 - 3;
LABEL_10:
  v13 = v12 >> 62 != 0;
  if (v12 >> 62)
  {
    v12 = 0;
  }

  if (a1)
  {
    v14 = v13;
  }

  else
  {
    v12 = v10;
    v14 = v11;
  }

  if (a2)
  {
    v5 = v12;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = v14;
  }

  else
  {
    v6 = 1;
  }

  *(v4 + 88) = v5;
  *(v4 + 96) = v6;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_28;
  }
}

void sub_182025C3C(char a1, uint8_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a2;
  if (*(v4 + 16) == 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v8 = 4 * a2 - 2;
      v9 = v8 >> 62 != 0;
      if (v8 >> 62)
      {
        v8 = 0;
      }

      v10 = 4 * a2 - 1;
      goto LABEL_10;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](*v4, *(v4 + 8));
    MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD8EF0);
    v43 = a2;
    v14 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v14);

    MEMORY[0x1865D9CA0](0xD00000000000001ELL, 0x8000000182BD9B70);
    if (*(v4 + 96))
    {
      v15 = 0xE700000000000000;
      v16 = 0x6E776F6E6B6E75;
    }

    else
    {
      v43 = *(v4 + 88);
      v16 = sub_182AD41B8();
      v15 = v17;
    }

    MEMORY[0x1865D9CA0](v16, v15);

    v18 = v44;
    v19 = v45;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v20 = sub_182AD2698();
    __swift_project_value_buffer(v20, qword_1EA843418);
    v21 = swift_allocObject();
    *(v21 + 16) = "updateLocalMaxStreams(server:initialMaxStreams:logIDString:)";
    *(v21 + 24) = 60;
    *(v21 + 32) = 2;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_181F8C724;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = a3;
    *(v23 + 24) = a4;
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    *(v24 + 24) = v19;

    v37 = sub_182AD2678();
    v40 = sub_182AD38A8();
    v39 = swift_allocObject();
    *(v39 + 16) = 32;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_181F8C71C;
    *(v25 + 24) = v22;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_181F8C718;
    *(v26 + 24) = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = 32;
    v28 = swift_allocObject();
    *(v28 + 16) = 8;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_181F8C720;
    *(v29 + 24) = v23;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_181F8C718;
    *(v30 + 24) = v29;
    v31 = swift_allocObject();
    *(v31 + 16) = 32;
    v32 = swift_allocObject();
    *(v32 + 16) = 8;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_181F8C720;
    *(v33 + 24) = v24;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_181F8C718;
    *(v34 + 24) = v33;
    if (os_log_type_enabled(v37, v40))
    {
      v35 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = 0;
      v36 = v41;
      *v35 = 770;
      v43 = v35 + 2;
      v44 = sub_181F8C728;
      v45 = v39;
      sub_181F73AE0(&v44, &v43, &v42, &v41);

      v44 = sub_181F8C728;
      v45 = v38;
      sub_181F73AE0(&v44, &v43, &v42, &v41);

      v44 = sub_181F8C714;
      v45 = v26;
      sub_181F73AE0(&v44, &v43, &v42, &v41);

      v44 = sub_181F8C728;
      v45 = v27;
      sub_181F73AE0(&v44, &v43, &v42, &v41);

      v44 = sub_181F8C728;
      v45 = v28;
      sub_181F73AE0(&v44, &v43, &v42, &v41);

      v44 = sub_181F8C714;
      v45 = v30;
      sub_181F73AE0(&v44, &v43, &v42, &v41);

      v44 = sub_181F8C728;
      v45 = v31;
      sub_181F73AE0(&v44, &v43, &v42, &v41);

      v44 = sub_181F8C728;
      v45 = v32;
      sub_181F73AE0(&v44, &v43, &v42, &v41);

      v44 = sub_181F8C714;
      v45 = v34;
      sub_181F73AE0(&v44, &v43, &v42, &v41);

      _os_log_impl(&dword_181A37000, v37, v40, "%s %s %s", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v36, -1, -1);
      MEMORY[0x1865DF520](v35, -1, -1);
    }

    else
    {
    }

    return;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  v8 = 4 * a2 - 4;
  v9 = v8 >> 62 != 0;
  if (v8 >> 62)
  {
    v8 = 0;
  }

  v10 = 4 * a2 - 3;
LABEL_10:
  v11 = v10 >> 62 != 0;
  if (v10 >> 62)
  {
    v10 = 0;
  }

  if (a1)
  {
    v12 = v11;
  }

  else
  {
    v10 = v8;
    v12 = v9;
  }

  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v10 = 0;
    v13 = 1;
  }

  *(v4 + 104) = v10;
  *(v4 + 112) = v13;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_25;
  }
}

uint64_t sub_1820264E4(uint64_t result)
{
  v1 = *(result + 372);
  if ((v1 & 0x8000) == 0)
  {
    *(result + 372) = v1 | 0x8000;
  }

  return result;
}

uint64_t sub_182026508(uint64_t result)
{
  v1 = *(result + 372);
  if ((v1 & 0x8000) != 0)
  {
    *(result + 372) = v1 & 0xFFFF7FFF;
  }

  return result;
}

uint64_t sub_182026528(uint64_t result)
{
  v1 = *(result + 372);
  if ((v1 & 0x4000) == 0)
  {
    *(result + 372) = v1 | 0x4000;
  }

  return result;
}

uint64_t sub_18202654C(uint64_t result)
{
  v1 = *(result + 372);
  if ((v1 & 0x4000) != 0)
  {
    *(result + 372) = v1 & 0xFFFFBFFF;
  }

  return result;
}

uint64_t sub_18202656C(uint64_t result)
{
  v1 = *(result + 372);
  if ((v1 & 0x10000) == 0)
  {
    *(result + 372) = v1 | 0x10000;
  }

  return result;
}

uint64_t sub_182026590(uint64_t result)
{
  v1 = *(result + 372);
  if ((v1 & 0x10000) != 0)
  {
    *(result + 372) = v1 & 0xFFFEFFFF;
  }

  return result;
}

void sub_1820265B0(unint64_t a1)
{
  v2 = v1;
  if (((v1[6])() & 1) == 0)
  {
    goto LABEL_41;
  }

  v4 = *v1;
  if (*v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_182AD3EB8())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1865DA790](v6, v4);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_17;
      }

LABEL_12:
      v10 = *(v8 + 16);
      v11 = *(v8 + 24);

      v7 = *(a1 + 24);
      if (v11)
      {
        if (v7)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v10 != *(a1 + 16))
        {
          v7 = 1;
        }

        if (v7 != 1)
        {
LABEL_35:
          v26 = *(a1 + 32);
          a1 = *(a1 + 40);

          sub_182AD3BA8();

          v51 = 0xD000000000000015;
          v52 = 0x8000000182BD8E70;
          v27 = sub_182AD3BF8();
          MEMORY[0x1865D9CA0](v27);

          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v28 = sub_182AD2698();
          __swift_project_value_buffer(v28, qword_1EA843418);

          v29 = sub_182AD2678();
          v30 = sub_182AD38B8();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v51 = v32;
            *v31 = 136315650;
            v33 = sub_182AD3BF8();
            v35 = sub_181C64FFC(v33, v34, &v51);

            *(v31 + 4) = v35;
            *(v31 + 12) = 2080;
            v36 = sub_181C64FFC(v26, a1, &v51);

            *(v31 + 14) = v36;
            *(v31 + 22) = 2080;
            a1 = sub_181C64FFC(0xD000000000000015, 0x8000000182BD8E70, &v51);

            *(v31 + 24) = a1;
            _os_log_impl(&dword_181A37000, v29, v30, "%s %s %s", v31, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v32, -1, -1);
            MEMORY[0x1865DF520](v31, -1, -1);
          }

          else
          {
          }

          while (1)
          {
            sub_182AD3EA8();
            __break(1u);
LABEL_41:
            v37 = *(a1 + 32);
            a1 = *(a1 + 40);
            v51 = 0;
            v52 = 0xE000000000000000;

            sub_182AD3BA8();

            v51 = 0xD00000000000001CLL;
            v52 = 0x8000000182BD8E20;
            v38 = sub_182AD3BF8();
            MEMORY[0x1865D9CA0](v38);

            v40 = v51;
            v39 = v52;
            if (qword_1EA837248 != -1)
            {
              swift_once();
            }

            v41 = sub_182AD2698();
            __swift_project_value_buffer(v41, qword_1EA843418);

            v42 = sub_182AD2678();
            v43 = sub_182AD38B8();

            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              v51 = v45;
              *v44 = 136315650;
              v46 = sub_182AD3BF8();
              v48 = sub_181C64FFC(v46, v47, &v51);

              *(v44 + 4) = v48;
              *(v44 + 12) = 2080;
              v49 = sub_181C64FFC(v37, a1, &v51);

              *(v44 + 14) = v49;
              *(v44 + 22) = 2080;
              a1 = sub_181C64FFC(v40, v39, &v51);

              *(v44 + 24) = a1;
              _os_log_impl(&dword_181A37000, v42, v43, "%s %s %s", v44, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1865DF520](v45, -1, -1);
              MEMORY[0x1865DF520](v44, -1, -1);
            }

            else
            {
            }
          }
        }
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_20;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v9 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  MEMORY[0x1865D9F10](v12);
  if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  (v2[4])(a1);
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15 = qword_1EA837250;

  if (v15 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    v52 = 0xE900000000000020;
    v16 = sub_182AD3BF8();
    MEMORY[0x1865D9CA0](v16);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v17 = sub_182AD2698();
    __swift_project_value_buffer(v17, qword_1EA843418);

    oslog = sub_182AD2678();
    v18 = sub_182AD38A8();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v51 = v20;
      *v19 = 136315650;
      v21 = sub_182AD3BF8();
      v23 = sub_181C64FFC(v21, v22, &v51);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = sub_181C64FFC(v14, v13, &v51);

      *(v19 + 14) = v24;
      *(v19 + 22) = 2080;
      v25 = sub_181C64FFC(0x6F74206465646461, 0xE900000000000020, &v51);

      *(v19 + 24) = v25;
      _os_log_impl(&dword_181A37000, oslog, v18, "%s %s %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v20, -1, -1);
      MEMORY[0x1865DF520](v19, -1, -1);

      return;
    }
  }
}

uint64_t sub_182026E50()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
LABEL_21:
    result = sub_182AD3EB8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v3 = *(v0 + 80);
  while (1)
  {
    if (v1 >> 62)
    {
      if (!sub_182AD3EB8())
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v1 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v1 = sub_182084878(v1);
    }

    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }

    v6 = v5 - 1;
    v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    if ((v3(v7) & 1) == 0)
    {
      break;
    }

    (*(v0 + 64))(v7);

    if (v1 >> 62)
    {
      result = sub_182AD3EB8();
      if (!result)
      {
LABEL_17:
        *v0 = v1;
        return result;
      }
    }

    else
    {
      result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_17;
      }
    }
  }

  *v0 = v1;
  v9 = *(v7 + 32);
  v8 = *(v7 + 40);

  sub_182AD3BA8();

  v21[0] = 0xD000000000000018;
  v21[1] = 0x8000000182BD8FE0;
  v10 = sub_182AD3BF8();
  MEMORY[0x1865D9CA0](v10);

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v11 = sub_182AD2698();
  __swift_project_value_buffer(v11, qword_1EA843418);

  v12 = sub_182AD2678();
  v13 = sub_182AD38B8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21[0] = v15;
    *v14 = 136315650;
    v16 = sub_182AD3BF8();
    v18 = sub_181C64FFC(v16, v17, v21);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = sub_181C64FFC(v9, v8, v21);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2080;
    v20 = sub_181C64FFC(0xD000000000000018, 0x8000000182BD8FE0, v21);

    *(v14 + 24) = v20;
    _os_log_impl(&dword_181A37000, v12, v13, "%s %s %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v15, -1, -1);
    MEMORY[0x1865DF520](v14, -1, -1);
  }

  else
  {
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_1820271F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v5 + 64) = 0;
  v12 = a2 & 1;
  *(v5 + 72) = 1;
  *(v5 + 80) = 0;
  FrameArray.init()(v5 + 88);
  *(v5 + 320) = 0;
  *(v5 + 328) = 0;
  *(v5 + 336) = MEMORY[0x1E69E7CC0];
  type metadata accessor for ReassemblyQueue();
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0x7FFFFFFFFFFFFFFFLL;
  *(v13 + 56) = 1;
  *(v13 + 64) = *sub_182AD2388();
  *(v6 + 344) = v13;
  *(v6 + 352) = 0;
  *(v6 + 356) = 1;
  *(v6 + 360) = 0;
  *(v6 + 368) = 0;
  *(v6 + 372) = 0;
  *(v6 + 16) = a1;
  *(v6 + 24) = v12;

  if (a2)
  {
    a1 = 0;
    v14 = 0xE100000000000000;
    v15 = 63;
  }

  else
  {
    v15 = sub_182AD41B8();
    v14 = v16;
  }

  MEMORY[0x1865D9CA0](5462816, 0xE300000000000000);
  MEMORY[0x1865D9CA0](v15, v14);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = a3;
  type metadata accessor for FlowControlStream();
  swift_allocObject();
  *(v6 + 56) = sub_1822125B4(a1, a2 & 1, a4, a5);
  return v6;
}

uint64_t sub_1820273A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;

  MEMORY[0x1865D9CA0](5462816, 0xE300000000000000);
  v7 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v7);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;

  if ((a1 & 2) != 0)
  {
    v8 = *(v3 + 372);
    if ((v8 & 0x400) == 0)
    {
      *(v3 + 372) = v8 | 0x400;
    }
  }

  v9 = *(v3 + 56);
  *(v9 + 104) = a1;
  *(v9 + 112) = 0;
  *(v9 + 120) = a2;
  *(v9 + 128) = a3;
}

uint64_t sub_182027498()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = qword_1EA837250;

  if (v3 == 1)
  {
    if (v6 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1)
    {
      goto LABEL_19;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v7 = sub_182AD2698();
    __swift_project_value_buffer(v7, qword_1EA843418);

    v8 = sub_182AD2678();
    v9 = sub_182AD38A8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v64 = v11;
      *v10 = 136315650;
      v12 = sub_182AD3BF8();
      v14 = sub_181C64FFC(v12, v13, &v64);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = sub_181C64FFC(v5, v4, &v64);

      *(v10 + 14) = v15;
      *(v10 + 22) = 2080;
      *(v10 + 24) = sub_181C64FFC(0xD00000000000001ELL, 0x8000000182BD8F40, &v64);
      _os_log_impl(&dword_181A37000, v8, v9, "%s %s %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v11, -1, -1);
      v16 = v10;
LABEL_16:
      MEMORY[0x1865DF520](v16, -1, -1);

      goto LABEL_20;
    }
  }

  else
  {
    if (v6 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1)
    {
      goto LABEL_19;
    }

    sub_182AD3BA8();

    *&v64 = 0xD00000000000001FLL;
    *(&v64 + 1) = 0x8000000182BD8F60;
    *&v62[0] = v2;
    v17 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v17);

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v18 = sub_182AD2698();
    __swift_project_value_buffer(v18, qword_1EA843418);

    v8 = sub_182AD2678();
    v19 = sub_182AD38A8();

    if (os_log_type_enabled(v8, v19))
    {
      v20 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v64 = v60;
      *v20 = 136315650;
      v21 = sub_182AD3BF8();
      v23 = sub_181C64FFC(v21, v22, &v64);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = sub_181C64FFC(v5, v4, &v64);

      *(v20 + 14) = v24;
      *(v20 + 22) = 2080;
      v25 = sub_181C64FFC(0xD00000000000001FLL, 0x8000000182BD8F60, &v64);

      *(v20 + 24) = v25;
      _os_log_impl(&dword_181A37000, v8, v19, "%s %s %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v60, -1, -1);
      v16 = v20;
      goto LABEL_16;
    }
  }

LABEL_19:

LABEL_20:
  v26 = (v1 + 88);
  swift_beginAccess();
  Frame.finalize(success:)(0);
  v27 = *(v1 + 304);
  if (v27)
  {
    v28 = v27[4];
    if (v27[2] >= v27[3] + v28)
    {
      v29 = v27[3] + v28;
    }

    else
    {
      v29 = v27[2];
    }

    *&v64 = *(v1 + 304);
    *(&v64 + 1) = v28;
    *&v65 = v29;
    v30 = swift_retain_n();
    while (1)
    {
      if (v28 == v29)
      {
        if ((sub_181AC81FC(v30) & 1) == 0)
        {

          break;
        }

        v28 = *(&v64 + 1);
        v29 = v65;
      }

      *(&v64 + 1) = v28 + 1;
      swift_beginAccess();

      Frame.finalize(success:)(0);
      swift_endAccess();

      ++v28;
    }
  }

  FrameArray.init()(&v64);

  v31 = *(v1 + 88);
  v32 = *(v1 + 96);
  v33 = *(v1 + 104);
  v34 = *(v1 + 112);
  v35 = *(v1 + 120);
  v36 = *(v1 + 128);
  v37 = *(v1 + 136);
  v38 = *(v1 + 256);
  if (v37 != 2 || v36 | v35)
  {
    sub_181F68EF4(*(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112));

    sub_181F68F3C(v35, v36, v37);
    __break(1u);
LABEL_49:
    sub_181F68EF4(v57, v32, v33, v34);

    sub_181F68F3C(v37, v38, v31);
    __break(1u);
LABEL_50:
    sub_181F68EF4(v59, v35, v31, v32);

    result = sub_181F68F3C(v33, v34, v36);
    __break(1u);
    return result;
  }

  v56 = v74;
  v35 = v75;
  v59 = v77;
  v61 = v73;
  v36 = v81;
  v58 = v82;
  if ((*(v1 + 248) & 1) == 0)
  {
    v39 = *(v1 + 232);
    if (v39)
    {
      MEMORY[0x1865DF520](v39, -1, -1);
    }
  }

  sub_181F68EF4(v31, v32, v33, v34);

  v40 = v67;
  *(v1 + 120) = v66;
  *(v1 + 136) = v40;
  v41 = v72;
  *(v1 + 200) = v71;
  *(v1 + 216) = v41;
  v42 = v70;
  *(v1 + 168) = v69;
  *(v1 + 184) = v42;
  *(v1 + 152) = v68;
  v43 = v65;
  *v26 = v64;
  *(v1 + 104) = v43;
  *(v1 + 232) = v61;
  *(v1 + 240) = v56;
  *(v1 + 248) = v35;
  *(v1 + 249) = *v76;
  *(v1 + 252) = *&v76[3];
  *(v1 + 256) = v59;
  v44 = v79;
  *(v1 + 264) = v78;
  *(v1 + 280) = v44;
  *(v1 + 296) = v80;
  *(v1 + 304) = v36;
  *(v1 + 312) = v58;
  v32 = *(v1 + 96);
  v57 = *(v1 + 88);
  v33 = *(v1 + 104);
  v34 = *(v1 + 112);
  v37 = *(v1 + 120);
  v38 = *(v1 + 128);
  v31 = *(v1 + 136);
  FrameArray.init()(v62);

  v45 = v62[13];
  *(v1 + 280) = v62[12];
  *(v1 + 296) = v45;
  *(v1 + 312) = v63;
  v46 = v62[9];
  *(v1 + 216) = v62[8];
  *(v1 + 232) = v46;
  v47 = v62[11];
  *(v1 + 248) = v62[10];
  *(v1 + 264) = v47;
  v48 = v62[5];
  *(v1 + 152) = v62[4];
  *(v1 + 168) = v48;
  v49 = v62[7];
  *(v1 + 184) = v62[6];
  *(v1 + 200) = v49;
  v50 = v62[1];
  *v26 = v62[0];
  *(v1 + 104) = v50;
  v51 = v62[3];
  *(v1 + 120) = v62[2];
  *(v1 + 136) = v51;
  if (v31 != 2 || v38 | v37)
  {
    goto LABEL_49;
  }

  if ((v35 & 1) == 0 && v61)
  {
    MEMORY[0x1865DF520](v61, -1, -1);
  }

  sub_181F68EF4(v57, v32, v33, v34);
  swift_endAccess();

  v35 = *(v1 + 96);
  v31 = *(v1 + 104);
  LOBYTE(v32) = *(v1 + 112);
  v33 = *(v1 + 120);
  v34 = *(v1 + 128);
  LODWORD(v36) = *(v1 + 136);
  v52 = *(v1 + 232);
  v53 = *(v1 + 248);
  v59 = *(v1 + 88);

  if (v36 != 2 || v34 | v33)
  {
    goto LABEL_50;
  }

  if (v52)
  {
    v54 = v53;
  }

  else
  {
    v54 = 1;
  }

  if ((v54 & 1) == 0)
  {
    MEMORY[0x1865DF520](v52, -1, -1);
  }

  sub_181F68EF4(v59, v35, v31, v32);

  return v1;
}

uint64_t sub_182027CD4()
{
  sub_182027498();

  return swift_deallocClassInstance();
}

uint64_t sub_182027D2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_182027D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_182027E10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_182027E58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_182027ECC()
{
  result = qword_1EA839BB0;
  if (!qword_1EA839BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839BB0);
  }

  return result;
}

unint64_t sub_182027F24()
{
  result = qword_1EA839BB8;
  if (!qword_1EA839BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839BB8);
  }

  return result;
}

unint64_t sub_182027F7C()
{
  result = qword_1EA839BC0;
  if (!qword_1EA839BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839BC0);
  }

  return result;
}

unint64_t sub_182027FD4()
{
  result = qword_1EA839BC8;
  if (!qword_1EA839BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839BC8);
  }

  return result;
}

uint64_t sub_182028028(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  v8 = qword_1EA837250;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = byte_1EA843430;
  if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
  {
LABEL_5:

    v10 = *(v3 + 372);
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v28 = sub_182AD2698();
  __swift_project_value_buffer(v28, qword_1EA843418);
  v29 = swift_allocObject();
  *(v29 + 16) = "processIncomingStream(connection:frame:)";
  *(v29 + 24) = 40;
  *(v29 + 32) = 2;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_181F8C724;
  *(v30 + 24) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = v7;
  *(v31 + 24) = v6;
  v47 = swift_allocObject();
  *(v47 + 16) = 0x69737365636F7270;
  *(v47 + 24) = 0xEA0000000000676ELL;

  oslog = sub_182AD2678();
  v49 = sub_182AD38A8();
  v44 = swift_allocObject();
  *(v44 + 16) = 32;
  v43 = swift_allocObject();
  *(v43 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_181F8C71C;
  *(v32 + 24) = v30;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_181F8C718;
  *(v33 + 24) = v32;
  v45 = v33;
  v46 = swift_allocObject();
  *(v46 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_181F8C720;
  *(v35 + 24) = v31;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_181F8C718;
  *(v36 + 24) = v35;
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_181F8C720;
  *(v39 + 24) = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_181F8C718;
  *(v48 + 24) = v39;
  if (!os_log_type_enabled(oslog, v49))
  {

    goto LABEL_5;
  }

  v41 = v37;
  v40 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  v53 = 0;
  v42 = v52;
  *v40 = 770;
  v54 = (v40 + 2);
  v56 = sub_181F8C728;
  v57 = v44;
  sub_181F73AE0(&v56, &v54, &v53, &v52);

  v56 = sub_181F8C728;
  v57 = v43;
  sub_181F73AE0(&v56, &v54, &v53, &v52);

  v56 = sub_181F8C714;
  v57 = v45;
  sub_181F73AE0(&v56, &v54, &v53, &v52);

  v56 = sub_181F8C728;
  v57 = v46;
  sub_181F73AE0(&v56, &v54, &v53, &v52);

  v56 = sub_181F8C728;
  v57 = v34;
  sub_181F73AE0(&v56, &v54, &v53, &v52);

  v56 = sub_181F8C714;
  v57 = v36;
  sub_181F73AE0(&v56, &v54, &v53, &v52);

  v56 = sub_181F8C728;
  v57 = v41;
  sub_181F73AE0(&v56, &v54, &v53, &v52);

  v56 = sub_181F8C728;
  v57 = v38;
  sub_181F73AE0(&v56, &v54, &v53, &v52);

  v56 = sub_181F8C714;
  v57 = v48;
  sub_181F73AE0(&v56, &v54, &v53, &v52);

  _os_log_impl(&dword_181A37000, oslog, v49, "%s %s %s", v40, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v42, -1, -1);
  MEMORY[0x1865DF520](v40, -1, -1);

  v10 = *(v3 + 372);
  if ((v10 & 0x100) != 0)
  {
LABEL_6:
    *(v3 + 372) = v10 & 0xFFFFFEFF;
  }

LABEL_7:
  swift_beginAccess();
  v11 = *(v3 + 369);
  if ((v11 - 3) >= 4)
  {
    if ((v11 - 1) > 1)
    {
      v12 = 1;
      if (!v9)
      {
        return v12 & 1;
      }
    }

    else
    {
      v12 = sub_182028A74(a1, a2);
      if (!v9)
      {
        return v12 & 1;
      }
    }

    v14 = *(v3 + 32);
    v13 = *(v3 + 40);
    v54 = 0;
    v55 = 0xE000000000000000;

    sub_182AD3BA8();

    v54 = 0xD000000000000015;
    v55 = 0x8000000182BD95C0;
    v53 = *(*(v3 + 56) + 168);
    v15 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v15);

    v17 = v54;
    v16 = v55;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v18 = sub_182AD2698();
    __swift_project_value_buffer(v18, qword_1EA843418);

    v19 = sub_182AD2678();
    v20 = sub_182AD38A8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      osloga = swift_slowAlloc();
      v54 = osloga;
      *v21 = 136315650;
      v22 = sub_182AD3BF8();
      v24 = sub_181C64FFC(v22, v23, &v54);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      v25 = sub_181C64FFC(v14, v13, &v54);

      *(v21 + 14) = v25;
      *(v21 + 22) = 2080;
      v26 = sub_181C64FFC(v17, v16, &v54);

      *(v21 + 24) = v26;
      _os_log_impl(&dword_181A37000, v19, v20, "%s %s %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](osloga, -1, -1);
      MEMORY[0x1865DF520](v21, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t sub_182028A74(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 56);
  if (*(v6 + 136))
  {
    goto LABEL_9;
  }

  v7 = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v8 = qword_1EA8387E8;
    if (is_mul_ok(v7, qword_1EA8387E8))
    {
      if (qword_1EA837038 == -1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    v61 = v7;
    swift_once();
    v7 = v61;
LABEL_5:
    v9 = qword_1EA8387F0;
    if (qword_1EA8387F0)
    {
      if (qword_1EA837010 == -1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    v62 = v7;
    swift_once();
    v7 = v62;
LABEL_7:
    if (!qword_1EA8431F0)
    {
      __break(1u);
LABEL_61:
      swift_once();
LABEL_21:
      v20 = sub_182AD2698();
      __swift_project_value_buffer(v20, qword_1EA843418);

      v21 = sub_182AD2678();
      v22 = sub_182AD38B8();

      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_50;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v63[0] = v24;
      *v23 = 136315650;
      v25 = sub_182AD3BF8();
      v27 = sub_181C64FFC(v25, v26, v63);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = sub_181C64FFC(v6, a1, v63);

      *(v23 + 14) = v28;
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_181C64FFC(0xD00000000000001ELL, 0x8000000182BD9610, v63);
      _os_log_impl(&dword_181A37000, v21, v22, "%s %s %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v24, -1, -1);
      v29 = v23;
      goto LABEL_27;
    }

    *(v6 + 136) = v7 * v8 / v9 / qword_1EA8431F0;

    v6 = *(v3 + 56);
LABEL_9:
    v10 = *(a2 + 32);
    v11 = *(v10 + 16);
    if (v11 && *(v6 + 24) < v11)
    {
      break;
    }

    v30 = v65;
    v13 = *(v3 + 344);
    sub_182034418(v65);
    v63[10] = v65[10];
    v63[11] = v65[11];
    v63[12] = v65[12];
    v64 = v66;
    v63[6] = v65[6];
    v63[7] = v65[7];
    v63[8] = v65[8];
    v63[9] = v65[9];
    v63[2] = v65[2];
    v63[3] = v65[3];
    v63[4] = v65[4];
    v63[5] = v65[5];
    v63[0] = v65[0];
    v63[1] = v65[1];
    v14 = *(a2 + 24);
    if (v14 < 0)
    {
      __break(1u);
LABEL_53:
      swift_once();
      goto LABEL_24;
    }

    v15 = *(a2 + 40);

    a2 = v13;
    v6 = sub_1820E66DC(v63, v10, v14, v11, v15);

    v16 = *(*(v3 + 344) + 24);
    if ((v16 & 0x8000000000000000) == 0)
    {
      if (v15)
      {
        v17 = (v14 + v11);
      }

      else
      {
        v17 = 0;
      }

      sub_182029434(a1, v16, v17, v15 ^ 1, v15);
      if (v18)
      {
        v6 = *(v3 + 32);
        a1 = *(v3 + 40);
        v19 = qword_1EA837248;

        if (v19 == -1)
        {
          goto LABEL_21;
        }

        goto LABEL_61;
      }

      if (v15)
      {
        swift_beginAccess();
        if (*(v3 + 369) != 2)
        {
          v43 = *(v3 + 32);
          v44 = *(v3 + 40);
          swift_beginAccess();

          sub_181F6D028(v43, v44, 2u);
          swift_endAccess();
        }
      }

      if (!v6)
      {
LABEL_34:
        if (*(*(v3 + 344) + 48) != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_35;
        }

        return 1;
      }

      if (v6 < 0)
      {
        __break(1u);
        goto LABEL_34;
      }

LABEL_35:

      v45 = sub_18221A27C(v6, a1);

      if (v45)
      {
        sub_18202A9CC(a1);
      }

      v46 = *(*(v3 + 56) + 168);
      v47 = *(*(v3 + 344) + 48);
      if ((v47 & 0x8000000000000000) == 0 && v46 == v47)
      {
        v48 = *(v3 + 32);
        v49 = *(v3 + 40);
        swift_beginAccess();

        sub_181F6D028(v48, v49, 3u);
        swift_endAccess();

        v46 = *(*(v3 + 56) + 168);
        v47 = *(*(v3 + 344) + 48);
      }

      if ((v47 & 0x8000000000000000) == 0 && v47 >= v46)
      {
        if ((*(v3 + 373) & 0x80) == 0)
        {
          swift_beginAccess();
          sub_1820265B0(v3);
          swift_endAccess();
        }

        return 1;
      }

      v52 = *(v3 + 32);
      v51 = *(v3 + 40);
      *&v63[0] = 0;
      *(&v63[0] + 1) = 0xE000000000000000;

      sub_182AD3BA8();

      *&v63[0] = 0x6572207365747962;
      *(&v63[0] + 1) = 0xEF20646576696563;
      v53 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v53);

      MEMORY[0x1865D9CA0](0x6F206E6966203E20, 0xEE00207465736666);
      v54 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v54);

      v11 = *(&v63[0] + 1);
      v10 = *&v63[0];
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v55 = sub_182AD2698();
      __swift_project_value_buffer(v55, qword_1EA843418);

      v21 = sub_182AD2678();
      v34 = sub_182AD38B8();

      if (!os_log_type_enabled(v21, v34))
      {
        goto LABEL_49;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v63[0] = v36;
      *v35 = 136315650;
      v56 = sub_182AD3BF8();
      v58 = sub_181C64FFC(v56, v57, v63);

      *(v35 + 4) = v58;
      *(v35 + 12) = 2080;
      v59 = sub_181C64FFC(v52, v51, v63);

      *(v35 + 14) = v59;
      *(v35 + 22) = 2080;
      v41 = v63;
LABEL_26:
      v42 = sub_181C64FFC(v10, v11, v41);

      *(v35 + 24) = v42;
      _os_log_impl(&dword_181A37000, v21, v34, "%s %s %s", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v36, -1, -1);
      v29 = v35;
LABEL_27:
      MEMORY[0x1865DF520](v29, -1, -1);

      return 0;
    }

    __break(1u);
LABEL_55:
    v60 = v7;
    swift_once();
    v7 = v60;
  }

  v30 = *(v3 + 32);
  a1 = *(v3 + 40);
  *&v65[0] = 0;
  *(&v65[0] + 1) = 0xE000000000000000;

  sub_182AD3BA8();

  *&v65[0] = 0xD000000000000020;
  *(&v65[0] + 1) = 0x8000000182BD9630;
  *&v63[0] = v11;
  v31 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v31);

  MEMORY[0x1865D9CA0](2113056, 0xE300000000000000);
  *&v63[0] = *(*(v3 + 56) + 24);
  v32 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v32);

  v11 = *(&v65[0] + 1);
  v10 = *&v65[0];
  if (qword_1EA837248 != -1)
  {
    goto LABEL_53;
  }

LABEL_24:
  v33 = sub_182AD2698();
  __swift_project_value_buffer(v33, qword_1EA843418);

  v21 = sub_182AD2678();
  v34 = sub_182AD38B8();

  if (os_log_type_enabled(v21, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v65[0] = v36;
    *v35 = 136315650;
    v37 = sub_182AD3BF8();
    v39 = sub_181C64FFC(v37, v38, v65);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    v40 = sub_181C64FFC(v30, a1, v65);

    *(v35 + 14) = v40;
    *(v35 + 22) = 2080;
    v41 = v65;
    goto LABEL_26;
  }

LABEL_49:

LABEL_50:

  return 0;
}

uint64_t (*sub_182029434(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint8_t *a3, char a4, char a5))(uint64_t, uint64_t, uint64_t)
{
  if (*(v6 + 72))
  {
    if ((a5 & 1) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(v6 + 56) + 96);
    if (v11 < 1 || v11 <= a2)
    {
      if ((a4 & 1) == 0)
      {
        if ((a3 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v8 = a2;
          v7 = a1;
          *(v6 + 64) = a3;
          *(v6 + 72) = 0;
          v9 = *(v6 + 32);
          v5 = *(v6 + 40);
          v13 = qword_1EA837250;

          if (v13 == -1)
          {
            goto LABEL_10;
          }
        }

        swift_once();
LABEL_10:
        if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
        {
          sub_182AD3BA8();

          v98 = 0xD000000000000012;
          v99 = 0x8000000182BD96C0;
          v94 = v6;
          if (*(v6 + 72))
          {
            __break(1u);

            while (1)
            {

              __break(1u);
            }
          }

          v100 = *(v6 + 64);
          v63 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v63);

          v64 = v98;
          v92 = v99;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v65 = sub_182AD2698();
          __swift_project_value_buffer(v65, qword_1EA843418);
          v66 = swift_allocObject();
          *(v66 + 16) = "updateLastOffset(connection:newLastOffset:newFinalSize:final:)";
          *(v66 + 24) = 62;
          *(v66 + 32) = 2;
          v67 = swift_allocObject();
          *(v67 + 16) = sub_181F8C724;
          *(v67 + 24) = v66;
          v68 = swift_allocObject();
          *(v68 + 16) = v9;
          *(v68 + 24) = v5;
          v69 = swift_allocObject();
          *(v69 + 16) = v64;
          *(v69 + 24) = v92;

          oslog = sub_182AD2678();
          v70 = sub_182AD38A8();
          v81 = swift_allocObject();
          *(v81 + 16) = 32;
          v82 = swift_allocObject();
          *(v82 + 16) = 8;
          v71 = swift_allocObject();
          *(v71 + 16) = sub_181F8C71C;
          *(v71 + 24) = v67;
          v72 = swift_allocObject();
          *(v72 + 16) = sub_181F8C718;
          *(v72 + 24) = v71;
          v84 = swift_allocObject();
          *(v84 + 16) = 32;
          v86 = swift_allocObject();
          *(v86 + 16) = 8;
          v73 = swift_allocObject();
          *(v73 + 16) = sub_181F8C720;
          *(v73 + 24) = v68;
          v74 = swift_allocObject();
          *(v74 + 16) = sub_181F8C718;
          *(v74 + 24) = v73;
          v88 = swift_allocObject();
          *(v88 + 16) = 32;
          v90 = swift_allocObject();
          *(v90 + 16) = 8;
          v75 = swift_allocObject();
          *(v75 + 16) = sub_181F8C720;
          *(v75 + 24) = v69;
          v9 = swift_allocObject();
          *(v9 + 16) = sub_181F8C718;
          *(v9 + 24) = v75;
          v76 = v70;
          if (os_log_type_enabled(oslog, v70))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v96 = v78;
            v97 = 0;
            *v77 = 770;
            v79 = v78;
            v100 = (v77 + 2);
            v98 = sub_181F8C728;
            v99 = v81;
            sub_181F73AE0(&v98, &v100, &v97, &v96);

            v98 = sub_181F8C728;
            v99 = v82;
            sub_181F73AE0(&v98, &v100, &v97, &v96);

            v98 = sub_181F8C714;
            v99 = v72;
            sub_181F73AE0(&v98, &v100, &v97, &v96);

            v98 = sub_181F8C728;
            v99 = v84;
            sub_181F73AE0(&v98, &v100, &v97, &v96);

            v98 = sub_181F8C728;
            v99 = v86;
            sub_181F73AE0(&v98, &v100, &v97, &v96);

            v98 = sub_181F8C714;
            v99 = v74;
            sub_181F73AE0(&v98, &v100, &v97, &v96);

            v98 = sub_181F8C728;
            v99 = v88;
            sub_181F73AE0(&v98, &v100, &v97, &v96);

            v98 = sub_181F8C728;
            v99 = v90;
            sub_181F73AE0(&v98, &v100, &v97, &v96);

            v98 = sub_181F8C714;
            v99 = v9;
            sub_181F73AE0(&v98, &v100, &v97, &v96);

            v5 = oslog;
            _os_log_impl(&dword_181A37000, oslog, v76, "%s %s %s", v77, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v79, -1, -1);
            MEMORY[0x1865DF520](v77, -1, -1);
          }

          else
          {
          }

          v6 = v94;
        }

        else
        {
        }

        a1 = v7;
        a2 = v8;
LABEL_21:
        v20 = *(*(v6 + 56) + 96);
        if ((v20 & 0x8000000000000000) == 0 && v20 >= a2)
        {
          return 0;
        }

        if ((a2 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v7 = (a2 - v20);
          if (!__OFSUB__(a2, v20))
          {
            v8 = a1;
            v22 = sub_1820347B8(*(*(v6 + 56) + 96), *(*(v6 + 56) + 96), 0, 0);
            if ((v23 & 1) == 0)
            {
              *(*(v6 + 56) + 96) = v22;
            }

            v9 = *(v6 + 32);
            v5 = *(v6 + 40);
            v24 = qword_1EA837250;

            if (v24 == -1)
            {
LABEL_29:
              if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
              {
                goto LABEL_31;
              }

              v98 = 0;
              v99 = 0xE000000000000000;
              sub_182AD3BA8();
              v100 = v98;
              v101 = v99;
              MEMORY[0x1865D9CA0](91, 0xE100000000000000);
              if (*(v6 + 72))
              {
                v42 = 0x65736C6166;
              }

              else
              {
                v42 = 1702195828;
              }

              if (*(v6 + 72))
              {
                v43 = 0xE500000000000000;
              }

              else
              {
                v43 = 0xE400000000000000;
              }

              MEMORY[0x1865D9CA0](v42, v43);

              MEMORY[0x1865D9CA0](58, 0xE100000000000000);
              swift_beginAccess();
              LOBYTE(v97) = *(v6 + 369);
              sub_182AD3E18();
              MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BD96A0);
              v97 = *(*(v8 + 18) + 96);
              v44 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v44);

              MEMORY[0x1865D9CA0](0x6D6165727473202CLL, 0xE900000000000020);
              v97 = *(*(v6 + 56) + 96);
              v45 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v45);

              v8 = v100;
              v10 = v101;
              if (qword_1EA837248 == -1)
              {
LABEL_52:
                v46 = sub_182AD2698();
                __swift_project_value_buffer(v46, qword_1EA843418);
                v47 = swift_allocObject();
                *(v47 + 16) = "updateLastOffset(connection:newLastOffset:newFinalSize:final:)";
                *(v47 + 24) = 62;
                *(v47 + 32) = 2;
                v48 = swift_allocObject();
                *(v48 + 16) = sub_181F8C724;
                *(v48 + 24) = v47;
                v49 = swift_allocObject();
                *(v49 + 16) = v9;
                *(v49 + 24) = v5;
                v50 = swift_allocObject();
                *(v50 + 16) = v8;
                *(v50 + 24) = v10;

                v51 = sub_182AD2678();
                v52 = sub_182AD38A8();
                v83 = swift_allocObject();
                *(v83 + 16) = 32;
                v85 = swift_allocObject();
                *(v85 + 16) = 8;
                v53 = swift_allocObject();
                *(v53 + 16) = sub_181F8C71C;
                *(v53 + 24) = v48;
                v54 = swift_allocObject();
                *(v54 + 16) = sub_181F8C718;
                *(v54 + 24) = v53;
                v87 = swift_allocObject();
                *(v87 + 16) = 32;
                v89 = swift_allocObject();
                *(v89 + 16) = 8;
                v55 = swift_allocObject();
                *(v55 + 16) = sub_181F8C720;
                *(v55 + 24) = v49;
                v56 = swift_allocObject();
                *(v56 + 16) = sub_181F8C718;
                *(v56 + 24) = v55;
                v91 = swift_allocObject();
                *(v91 + 16) = 32;
                v93 = swift_allocObject();
                *(v93 + 16) = 8;
                v57 = swift_allocObject();
                *(v57 + 16) = sub_181F8C720;
                *(v57 + 24) = v50;
                v58 = swift_allocObject();
                *(v58 + 16) = sub_181F8C718;
                *(v58 + 24) = v57;
                v59 = v52;
                v60 = v51;
                if (os_log_type_enabled(v51, v52))
                {
                  v61 = swift_slowAlloc();
                  v62 = swift_slowAlloc();
                  v95 = v62;
                  v96 = 0;
                  *v61 = 770;
                  v97 = v61 + 2;
                  v100 = sub_181F8C728;
                  v101 = v83;
                  sub_181F73AE0(&v100, &v97, &v96, &v95);

                  v100 = sub_181F8C728;
                  v101 = v85;
                  sub_181F73AE0(&v100, &v97, &v96, &v95);

                  v100 = sub_181F8C714;
                  v101 = v54;
                  sub_181F73AE0(&v100, &v97, &v96, &v95);

                  v100 = sub_181F8C728;
                  v101 = v87;
                  sub_181F73AE0(&v100, &v97, &v96, &v95);

                  v100 = sub_181F8C728;
                  v101 = v89;
                  sub_181F73AE0(&v100, &v97, &v96, &v95);

                  v100 = sub_181F8C714;
                  v101 = v56;
                  sub_181F73AE0(&v100, &v97, &v96, &v95);

                  v100 = sub_181F8C728;
                  v101 = v91;
                  sub_181F73AE0(&v100, &v97, &v96, &v95);

                  v100 = sub_181F8C728;
                  v101 = v93;
                  sub_181F73AE0(&v100, &v97, &v96, &v95);

                  v100 = sub_181F8C714;
                  v101 = v58;
                  sub_181F73AE0(&v100, &v97, &v96, &v95);

                  _os_log_impl(&dword_181A37000, v60, v59, "%s %s %s", v61, 0x20u);
                  swift_arrayDestroy();
                  MEMORY[0x1865DF520](v62, -1, -1);
                  MEMORY[0x1865DF520](v61, -1, -1);

                  return v7;
                }

LABEL_31:

                return v7;
              }

LABEL_66:
              swift_once();
              goto LABEL_52;
            }

LABEL_44:
            swift_once();
            goto LABEL_29;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v15 = *(v6 + 32);
    v14 = *(v6 + 40);
    v98 = 0;
    v99 = 0xE000000000000000;
    v27 = a2;

    sub_182AD3BA8();
    v100 = 0;
    v101 = 0xE000000000000000;
    MEMORY[0x1865D9CA0](0x3A65736C61665BLL, 0xE700000000000000);
    swift_beginAccess();
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BD96E0);
    v97 = v27;
    v28 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v28);

    MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD9700);
    v97 = *(*(v6 + 56) + 96);
  }

  else
  {
    v7 = *(v6 + 64);
    if (a5)
    {
      if (a4)
      {
        __break(1u);
        goto LABEL_65;
      }

      if ((v7 & 0x8000000000000000) == 0 && v7 == a3)
      {
        goto LABEL_21;
      }

      v15 = *(v6 + 32);
      v14 = *(v6 + 40);

      sub_182AD3BA8();
      v100 = 0;
      v101 = 0xE000000000000000;
      MEMORY[0x1865D9CA0](0x3A657572745BLL, 0xE600000000000000);
      swift_beginAccess();
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0xD00000000000001FLL, 0x8000000182BD9780);
      v97 = a3;
      v17 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v17);

      v18 = 0xD000000000000024;
      v19 = 0x8000000182BD97A0;
    }

    else
    {
      if ((v7 & 0x8000000000000000) == 0 && v7 >= a2)
      {
        goto LABEL_21;
      }

      v15 = *(v6 + 32);
      v14 = *(v6 + 40);
      v25 = a2;

      sub_182AD3BA8();
      v100 = 0;
      v101 = 0xE000000000000000;
      MEMORY[0x1865D9CA0](0x3A657572745BLL, 0xE600000000000000);
      swift_beginAccess();
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0xD000000000000022, 0x8000000182BD9730);
      v97 = v25;
      v26 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v26);

      v19 = 0x8000000182BD9760;
      v18 = 0xD000000000000019;
    }

    MEMORY[0x1865D9CA0](v18, v19);
    v97 = v7;
  }

  v29 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v29);

  v31 = v100;
  v30 = v101;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v32 = sub_182AD2698();
  __swift_project_value_buffer(v32, qword_1EA843418);

  v33 = sub_182AD2678();
  v34 = sub_182AD38B8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v100 = v36;
    *v35 = 136315650;
    v37 = sub_182AD3BF8();
    v39 = sub_181C64FFC(v37, v38, &v100);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    v40 = sub_181C64FFC(v15, v14, &v100);

    *(v35 + 14) = v40;
    *(v35 + 22) = 2080;
    v41 = sub_181C64FFC(v31, v30, &v100);

    *(v35 + 24) = v41;
    _os_log_impl(&dword_181A37000, v33, v34, "%s %s %s", v35, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v36, -1, -1);
    MEMORY[0x1865DF520](v35, -1, -1);
  }

  else
  {
  }

  return 0;
}

void sub_18202A9CC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if ((*(a1 + 139) & 0xFE) == 0xA)
  {
    return;
  }

  v4 = sub_18220ED70();

  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = qword_1EA837250;

  if (v7 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v29 = sub_182AD2698();
    __swift_project_value_buffer(v29, qword_1EA843418);
    v30 = swift_allocObject();
    *(v30 + 16) = "sendFlowControlCredit(connection:)";
    *(v30 + 24) = 34;
    *(v30 + 32) = 2;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_181F8C724;
    *(v31 + 24) = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = v6;
    *(v32 + 24) = v5;
    v4 = swift_allocObject();
    strcpy((v4 + 16), "send MAX_DATA");
    *(v4 + 30) = -4864;

    oslog = sub_182AD2678();
    v68 = sub_182AD38A8();
    v60 = swift_allocObject();
    *(v60 + 16) = 32;
    v62 = swift_allocObject();
    *(v62 + 16) = 8;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_181F8C71C;
    *(v33 + 24) = v31;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_181F8C718;
    *(v34 + 24) = v33;
    v64 = swift_allocObject();
    *(v64 + 16) = 32;
    v66 = swift_allocObject();
    *(v66 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_181F8C720;
    *(v35 + 24) = v32;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_181F8C718;
    *(v36 + 24) = v35;
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v70 = swift_allocObject();
    *(v70 + 16) = 8;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_181F8C720;
    *(v37 + 24) = v4;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_181F8C718;
    *(v38 + 24) = v37;
    v72 = v38;
    v12 = oslog;
    if (!os_log_type_enabled(oslog, v68))
    {
      goto LABEL_40;
    }

    v39 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v76 = 0;
    v54 = v75;
    bufa = v39;
    *v39 = 770;
    v77 = v39 + 2;
    *&v78 = sub_181F8C728;
    *(&v78 + 1) = v60;
    v4 = 0;
    sub_181F73AE0(&v78, &v77, &v76, &v75);

    *&v78 = sub_181F8C728;
    *(&v78 + 1) = v62;
    sub_181F73AE0(&v78, &v77, &v76, &v75);

    *&v78 = sub_181F8C714;
    *(&v78 + 1) = v34;
    sub_181F73AE0(&v78, &v77, &v76, &v75);

    *&v78 = sub_181F8C728;
    *(&v78 + 1) = v64;
    sub_181F73AE0(&v78, &v77, &v76, &v75);

    *&v78 = sub_181F8C728;
    *(&v78 + 1) = v66;
    sub_181F73AE0(&v78, &v77, &v76, &v75);

    *&v78 = sub_181F8C714;
    *(&v78 + 1) = v36;
    sub_181F73AE0(&v78, &v77, &v76, &v75);

    *&v78 = sub_181F8C728;
    *(&v78 + 1) = v58;
    sub_181F73AE0(&v78, &v77, &v76, &v75);

    *&v78 = sub_181F8C728;
    *(&v78 + 1) = v70;
    sub_181F73AE0(&v78, &v77, &v76, &v75);

    *&v78 = sub_181F8C714;
    *(&v78 + 1) = v72;
    sub_181F73AE0(&v78, &v77, &v76, &v75);

    _os_log_impl(&dword_181A37000, oslog, v68, "%s %s %s", bufa, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v54, -1, -1);
    MEMORY[0x1865DF520](bufa, -1, -1);

    goto LABEL_8;
  }

  while (1)
  {

LABEL_8:
    v8 = *(*(a1 + 144) + 40);
    v78 = xmmword_182AEFE00;
    v79 = v8;

    sub_181F82F10(2u, &v78);

LABEL_9:
    v9 = *(*(v2 + 344) + 16);
    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    v4 = *(v2 + 56);

    v10 = sub_18220F598(v9);

    if (!v10)
    {
      goto LABEL_18;
    }

    v12 = *(v2 + 32);
    v11 = *(v2 + 40);
    v13 = qword_1EA837250;

    if (v13 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
    {
      break;
    }

LABEL_15:

    if ((*(v2 + 24) & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_39:
    __break(1u);
LABEL_40:
  }

  *&v78 = 0;
  *(&v78 + 1) = 0xE000000000000000;
  sub_182AD3BA8();

  *&v78 = 0xD000000000000015;
  *(&v78 + 1) = 0x8000000182BD9270;
  v77 = *(*(v2 + 56) + 40);
  v40 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v40);

  v41 = *(&v78 + 1);
  v73 = v78;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v42 = sub_182AD2698();
  __swift_project_value_buffer(v42, qword_1EA843418);
  v43 = swift_allocObject();
  *(v43 + 16) = "sendFlowControlCredit(connection:)";
  *(v43 + 24) = 34;
  *(v43 + 32) = 2;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_181F8C724;
  *(v44 + 24) = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = v12;
  *(v45 + 24) = v11;
  v4 = swift_allocObject();
  *(v4 + 16) = v73;
  *(v4 + 24) = v41;

  buf = sub_182AD2678();
  v69 = sub_182AD38A8();
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_181F8C71C;
  *(v46 + 24) = v44;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_181F8C718;
  *(v47 + 24) = v46;
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v12 = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_181F8C720;
  *(v48 + 24) = v45;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_181F8C718;
  *(v49 + 24) = v48;
  v67 = swift_allocObject();
  *(v67 + 16) = 32;
  v71 = swift_allocObject();
  *(v71 + 16) = 8;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_181F8C720;
  *(v50 + 24) = v4;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_181F8C718;
  *(v51 + 24) = v50;
  v74 = v51;
  if (!os_log_type_enabled(buf, v69))
  {

    goto LABEL_15;
  }

  v12 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  v75 = v52;
  v76 = 0;
  *v12 = 770;
  v53 = v52;
  v77 = (v12 + 2);
  *&v78 = sub_181F8C728;
  *(&v78 + 1) = v59;
  sub_181F73AE0(&v78, &v77, &v76, &v75);

  *&v78 = sub_181F8C728;
  *(&v78 + 1) = v61;
  sub_181F73AE0(&v78, &v77, &v76, &v75);

  *&v78 = sub_181F8C714;
  *(&v78 + 1) = v47;
  sub_181F73AE0(&v78, &v77, &v76, &v75);

  *&v78 = sub_181F8C728;
  *(&v78 + 1) = v63;
  sub_181F73AE0(&v78, &v77, &v76, &v75);

  *&v78 = sub_181F8C728;
  *(&v78 + 1) = v65;
  sub_181F73AE0(&v78, &v77, &v76, &v75);

  *&v78 = sub_181F8C714;
  *(&v78 + 1) = v49;
  sub_181F73AE0(&v78, &v77, &v76, &v75);

  *&v78 = sub_181F8C728;
  *(&v78 + 1) = v67;
  sub_181F73AE0(&v78, &v77, &v76, &v75);

  *&v78 = sub_181F8C728;
  *(&v78 + 1) = v71;
  sub_181F73AE0(&v78, &v77, &v76, &v75);

  *&v78 = sub_181F8C714;
  *(&v78 + 1) = v74;
  sub_181F73AE0(&v78, &v77, &v76, &v75);

  _os_log_impl(&dword_181A37000, buf, v69, "%s %s %s", v12, 0x20u);
  v4 = v53;
  swift_arrayDestroy();
  MEMORY[0x1865DF520](v53, -1, -1);
  MEMORY[0x1865DF520](v12, -1, -1);

  if (*(v2 + 24))
  {
    goto LABEL_39;
  }

LABEL_16:
  v14 = *(v2 + 16);
  v15 = *(*(v2 + 56) + 40);
  v78 = xmmword_182AEFE10;
  v79 = v14;
  v80 = v15;

  sub_181F82F10(2u, &v78);

  v16 = *(v2 + 372);
  if ((v16 & 0x2000) == 0)
  {
    *(v2 + 372) = v16 | 0x2000;
  }

LABEL_18:
  if (*(a1 + 952))
  {

    v18 = sub_182047340(v17, 0, 0);

    if (v18)
    {
      return;
    }
  }

  v4 = *(v2 + 32);
  v2 = *(v2 + 40);
  v19 = qword_1EA837250;

  if (v19 != -1)
  {
LABEL_30:
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v20 = sub_182AD2698();
    __swift_project_value_buffer(v20, qword_1EA843418);

    v21 = sub_182AD2678();
    v22 = sub_182AD38A8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v78 = v24;
      *v23 = 136315650;
      v25 = sub_182AD3BF8();
      v27 = sub_181C64FFC(v25, v26, &v78);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = sub_181C64FFC(v4, v2, &v78);

      *(v23 + 14) = v28;
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_181C64FFC(0xD00000000000002DLL, 0x8000000182BD9240, &v78);
      _os_log_impl(&dword_181A37000, v21, v22, "%s %s %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v24, -1, -1);
      MEMORY[0x1865DF520](v23, -1, -1);

      return;
    }
  }
}

uint64_t sub_18202BB74(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v2 = v3;
  v11 = *(v3 + 56);
  v12 = v11[8];
  v13 = __CFADD__(v12, a1);
  v14 = v12 + a1;
  if (v13)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v11[8] = v14;
  v15 = v11[9];
  v13 = __CFADD__(v15, a1);
  v16 = v15 + a1;
  if (v13)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v10 = a2;
  v11[9] = v16;
  v17 = *(a2 + 144);
  v18 = v17[8];
  v13 = __CFADD__(v18, a1);
  v19 = v18 + a1;
  if (v13)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v17[8] = v19;
  v20 = v17[9];
  v13 = __CFADD__(v20, a1);
  v21 = v20 + a1;
  if (v13)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v17[9] = v21;
  v22 = *(*(v2 + 344) + 16);
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_32;
  }

  if ((*(v2 + 373) & 0x10) == 0)
  {
    v23 = v11[11];
    v13 = v22 >= v23;
    v24 = v22 - v23;
    if (!v13)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v25 = v17[11];
    v13 = __CFADD__(v25, v24);
    v26 = v25 + v24;
    if (v13)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
      goto LABEL_20;
    }

    v17[11] = v26;
  }

  v11[11] = v22;
  v5 = v11[10];

  v4 = sub_182211FE8();

  v27 = *(v2 + 56);
  v28 = *(v27 + 80);
  v29 = *(v10 + 144);
  v30 = v29[10];
  v31 = v28 - v4;
  log = v5;
  if (v28 < v4)
  {
    v32 = v4 - v28;
    v13 = __CFADD__(v30, v32);
    v30 += v32;
    if (!v13)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v13 = v30 >= v31;
  v30 -= v31;
  if (!v13)
  {
    goto LABEL_52;
  }

LABEL_18:
  v9 = 0xD000000000000012;
  v29[10] = v30;
  oslog = *(v27 + 80);
  *(v27 + 80) = v4;
  v141 = v2;
  if (v29[11] >= v29[8])
  {
    goto LABEL_24;
  }

  v33 = v2;
  v2 = *(v2 + 32);
  v4 = *(v33 + 40);

  sub_182AD3BA8();

  v145 = 0xD000000000000016;
  v146 = 0x8000000182BD91F0;
  v144 = *(*(v10 + 144) + 64);
  v34 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v34);

  MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD91D0);
  v144 = *(*(v10 + 144) + 88);
  v35 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v35);

  v5 = 0xD000000000000016;
  v7 = 0x8000000182BD91F0;
  if (qword_1EA837248 != -1)
  {
    goto LABEL_54;
  }

LABEL_20:
  v36 = sub_182AD2698();
  __swift_project_value_buffer(v36, qword_1EA843418);

  v37 = sub_182AD2678();
  v38 = sub_182AD38C8();

  if (os_log_type_enabled(v37, v38))
  {
    v137 = v10;
    v39 = swift_slowAlloc();
    v129 = v5;
    v40 = swift_slowAlloc();
    v145 = v40;
    *v39 = 136315650;
    v41 = sub_182AD3BF8();
    v43 = sub_181C64FFC(v41, v42, &v145);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2080;
    v44 = sub_181C64FFC(v2, v4, &v145);

    *(v39 + 14) = v44;
    *(v39 + 22) = 2080;
    v45 = sub_181C64FFC(v129, v7, &v145);

    *(v39 + 24) = v45;
    _os_log_impl(&dword_181A37000, v37, v38, "%s %s %s", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v40, -1, -1);
    v46 = v39;
    v10 = v137;
    MEMORY[0x1865DF520](v46, -1, -1);
  }

  else
  {
  }

  v9 = 0xD000000000000012;
  v2 = v141;
LABEL_24:
  if (*(*(v2 + 56) + 88) < *(*(v2 + 56) + 64))
  {
    v47 = v2;
    v48 = *(v2 + 32);
    v49 = *(v47 + 40);
    v145 = 0;
    v146 = 0xE000000000000000;

    sub_182AD3BA8();

    v145 = 0xD000000000000012;
    v146 = 0x8000000182BD91B0;
    v144 = *(*(v47 + 56) + 64);
    v50 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v50);

    MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD91D0);
    v144 = *(*(v47 + 56) + 88);
    v51 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v51);

    v52 = v145;
    v53 = v146;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v54 = sub_182AD2698();
    __swift_project_value_buffer(v54, qword_1EA843418);

    v55 = sub_182AD2678();
    v56 = sub_182AD38C8();

    if (os_log_type_enabled(v55, v56))
    {
      v138 = v10;
      v57 = swift_slowAlloc();
      v130 = v52;
      v58 = swift_slowAlloc();
      v145 = v58;
      *v57 = 136315650;
      v59 = sub_182AD3BF8();
      v61 = sub_181C64FFC(v59, v60, &v145);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v62 = sub_181C64FFC(v48, v49, &v145);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2080;
      v63 = sub_181C64FFC(v130, v53, &v145);

      *(v57 + 24) = v63;
      _os_log_impl(&dword_181A37000, v55, v56, "%s %s %s", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v58, -1, -1);
      v64 = v57;
      v10 = v138;
      MEMORY[0x1865DF520](v64, -1, -1);
    }

    else
    {
    }

    v9 = 0xD000000000000012;
    v2 = v141;
  }

  v8 = *(v2 + 32);
  v6 = *(v2 + 40);
  v65 = qword_1EA837250;

  if (v65 != -1)
  {
    goto LABEL_51;
  }

  if (byte_1EA843430 != 1)
  {
    goto LABEL_36;
  }

LABEL_32:
  if (__nwlog_is_datapath_logging_enabled())
  {
    v139 = v10;
    v145 = 0;
    v146 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](v9 - 1, 0x8000000182BD9190);
    v69 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v69);

    MEMORY[0x1865D9CA0](0x203A746F742029, 0xE700000000000000);
    v70 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v70);

    MEMORY[0x1865D9CA0](0x203A63636120, 0xE600000000000000);
    v71 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v71);

    MEMORY[0x1865D9CA0](v9 - 2, 0x8000000182BD9170);
    v72 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v72);

    MEMORY[0x1865D9CA0](0x726564724F6E6920, 0xEF3A646165726E55);
    v144 = oslog;
    v73 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v73);

    MEMORY[0x1865D9CA0](0x3A77656E3E2DLL, 0xE600000000000000);
    v144 = *(*(v2 + 56) + 80);
    v74 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v74);

    v75 = v145;
    v76 = v146;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v77 = sub_182AD2698();
    __swift_project_value_buffer(v77, qword_1EA843418);
    v78 = swift_allocObject();
    *(v78 + 16) = "applicationRead(consumedLength:connection:)";
    *(v78 + 24) = 43;
    *(v78 + 32) = 2;
    v79 = swift_allocObject();
    *(v79 + 16) = sub_181F8C724;
    *(v79 + 24) = v78;
    v80 = swift_allocObject();
    *(v80 + 16) = v8;
    *(v80 + 24) = v6;
    v81 = swift_allocObject();
    *(v81 + 16) = v75;
    *(v81 + 24) = v76;

    osloga = sub_182AD2678();
    v131 = sub_182AD38A8();
    v124 = swift_allocObject();
    *(v124 + 16) = 32;
    v122 = swift_allocObject();
    *(v122 + 16) = 8;
    v82 = swift_allocObject();
    *(v82 + 16) = sub_181F8C71C;
    *(v82 + 24) = v79;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_181F8C718;
    *(v83 + 24) = v82;
    v126 = swift_allocObject();
    *(v126 + 16) = 32;
    v120 = swift_allocObject();
    *(v120 + 16) = 8;
    v84 = swift_allocObject();
    *(v84 + 16) = sub_181F8C720;
    *(v84 + 24) = v80;
    v85 = swift_allocObject();
    *(v85 + 16) = sub_181F8C718;
    *(v85 + 24) = v84;
    v86 = swift_allocObject();
    *(v86 + 16) = 32;
    v87 = swift_allocObject();
    *(v87 + 16) = 8;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_181F8C720;
    *(v88 + 24) = v81;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_181F8C718;
    *(v89 + 24) = v88;
    if (os_log_type_enabled(osloga, v131))
    {
      v116 = v86;
      v118 = v89;
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v142 = v91;
      v143 = 0;
      *v90 = 770;
      v115 = v91;
      v144 = (v90 + 2);
      v145 = sub_181F8C728;
      v146 = v124;
      sub_181F73AE0(&v145, &v144, &v143, &v142);
      v10 = v139;

      v145 = sub_181F8C728;
      v146 = v122;
      sub_181F73AE0(&v145, &v144, &v143, &v142);

      v145 = sub_181F8C714;
      v146 = v83;
      sub_181F73AE0(&v145, &v144, &v143, &v142);

      v145 = sub_181F8C728;
      v146 = v126;
      sub_181F73AE0(&v145, &v144, &v143, &v142);

      v145 = sub_181F8C728;
      v146 = v120;
      sub_181F73AE0(&v145, &v144, &v143, &v142);

      v145 = sub_181F8C714;
      v146 = v85;
      sub_181F73AE0(&v145, &v144, &v143, &v142);
      v92 = v90;

      v145 = sub_181F8C728;
      v146 = v116;
      sub_181F73AE0(&v145, &v144, &v143, &v142);

      v145 = sub_181F8C728;
      v146 = v87;
      sub_181F73AE0(&v145, &v144, &v143, &v142);
      v9 = 0xD000000000000012;

      v145 = sub_181F8C714;
      v146 = v118;
      sub_181F73AE0(&v145, &v144, &v143, &v142);

      _os_log_impl(&dword_181A37000, osloga, v131, "%s %s %s", v92, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v115, -1, -1);
      MEMORY[0x1865DF520](v92, -1, -1);
    }

    else
    {

      v10 = v139;
      v9 = 0xD000000000000012;
    }
  }

  else
  {
  }

  v67 = *(v2 + 32);
  v66 = *(v2 + 40);

  if (__nwlog_is_datapath_logging_enabled())
  {
    v145 = 0;
    v146 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](v9 + 15, 0x8000000182BD9140);
    v144 = *(*(v10 + 144) + 64);
    v93 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v93);

    MEMORY[0x1865D9CA0](0x203A63636120, 0xE600000000000000);
    v144 = *(*(v10 + 144) + 72);
    v94 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v94);

    MEMORY[0x1865D9CA0](v9 - 2, 0x8000000182BD9170);
    v144 = *(*(v10 + 144) + 88);
    v95 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v95);

    MEMORY[0x1865D9CA0](0x726564724F6E6920, 0xEF3A646165726E55);
    v144 = log;
    v96 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v96);

    MEMORY[0x1865D9CA0](0x3A77656E3E2DLL, 0xE600000000000000);
    v140 = v10;
    v144 = *(*(v10 + 144) + 80);
    v97 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v97);

    v98 = v145;
    v99 = v146;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v100 = sub_182AD2698();
    __swift_project_value_buffer(v100, qword_1EA843418);
    v101 = swift_allocObject();
    *(v101 + 16) = "applicationRead(consumedLength:connection:)";
    *(v101 + 24) = 43;
    *(v101 + 32) = 2;
    v102 = swift_allocObject();
    *(v102 + 16) = sub_181F8C724;
    *(v102 + 24) = v101;
    v103 = swift_allocObject();
    *(v103 + 16) = v67;
    *(v103 + 24) = v66;
    v104 = swift_allocObject();
    *(v104 + 16) = v98;
    *(v104 + 24) = v99;

    loga = sub_182AD2678();
    oslogb = sub_182AD38A8();
    v127 = swift_allocObject();
    *(v127 + 16) = 32;
    v125 = swift_allocObject();
    *(v125 + 16) = 8;
    v105 = swift_allocObject();
    *(v105 + 16) = sub_181F8C71C;
    *(v105 + 24) = v102;
    v106 = swift_allocObject();
    *(v106 + 16) = sub_181F8C718;
    *(v106 + 24) = v105;
    v128 = swift_allocObject();
    *(v128 + 16) = 32;
    v123 = swift_allocObject();
    *(v123 + 16) = 8;
    v107 = swift_allocObject();
    *(v107 + 16) = sub_181F8C720;
    *(v107 + 24) = v103;
    v108 = swift_allocObject();
    *(v108 + 16) = sub_181F8C718;
    *(v108 + 24) = v107;
    v109 = swift_allocObject();
    *(v109 + 16) = 32;
    v110 = swift_allocObject();
    *(v110 + 16) = 8;
    v111 = swift_allocObject();
    *(v111 + 16) = sub_181F8C720;
    *(v111 + 24) = v104;
    v112 = swift_allocObject();
    *(v112 + 16) = sub_181F8C718;
    *(v112 + 24) = v111;
    if (os_log_type_enabled(loga, oslogb))
    {
      v119 = v110;
      v121 = v112;
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v142 = v114;
      v143 = 0;
      *v113 = 770;
      v117 = v114;
      v144 = (v113 + 2);
      v145 = sub_181F8C728;
      v146 = v127;
      sub_181F73AE0(&v145, &v144, &v143, &v142);

      v145 = sub_181F8C728;
      v146 = v125;
      sub_181F73AE0(&v145, &v144, &v143, &v142);
      v10 = v140;

      v145 = sub_181F8C714;
      v146 = v106;
      sub_181F73AE0(&v145, &v144, &v143, &v142);

      v145 = sub_181F8C728;
      v146 = v128;
      sub_181F73AE0(&v145, &v144, &v143, &v142);

      v145 = sub_181F8C728;
      v146 = v123;
      sub_181F73AE0(&v145, &v144, &v143, &v142);

      v145 = sub_181F8C714;
      v146 = v108;
      sub_181F73AE0(&v145, &v144, &v143, &v142);

      v145 = sub_181F8C728;
      v146 = v109;
      sub_181F73AE0(&v145, &v144, &v143, &v142);

      v145 = sub_181F8C728;
      v146 = v119;
      sub_181F73AE0(&v145, &v144, &v143, &v142);

      v145 = sub_181F8C714;
      v146 = v121;
      sub_181F73AE0(&v145, &v144, &v143, &v142);

      _os_log_impl(&dword_181A37000, loga, oslogb, "%s %s %s", v113, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v117, -1, -1);
      MEMORY[0x1865DF520](v113, -1, -1);
    }

    else
    {

      v10 = v140;
    }
  }

  else
  {
LABEL_36:
  }

  if (sub_18202D44C())
  {
    sub_18202A9CC(v10);
  }

  if (sub_18203970C())
  {
    sub_18203978C();
  }

  result = swift_beginAccess();
  if (*(v2 + 369) == 5 && (*(v2 + 372) & 0x220) == 0x200)
  {
    *(v2 + 372) |= 0x20u;
  }

  return result;
}

BOOL sub_18202D44C()
{
  swift_beginAccess();
  if (*(v0 + 369) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 56);
  if ((*(v0 + 373) & 0x20) != 0)
  {
    v4 = v1[3];
    v5 = v1[10];
    v6 = v4 >= v5;
    v2 = v4 - v5;
    if (!v6)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = v1[5];
  }

  return v1[9] > v2 >> 1;
}

void sub_18202D4C0(_BYTE *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = v3;
  v8 = *(v3[43] + 32);
  v10 = v3[4];
  v9 = v3[5];
  v11 = qword_1EA837250;

  if (v11 != -1)
  {
LABEL_68:
    swift_once();
  }

  v102 = byte_1EA843430;
  if (byte_1EA843430 != 1)
  {
    goto LABEL_7;
  }

  *&v111 = 0;
  *(&v111 + 1) = 0xE000000000000000;
  sub_182AD3BA8();

  *&v111 = 0xD000000000000021;
  *(&v111 + 1) = 0x8000000182BD90E0;
  v125 = v8;
  v12 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v12);

  v5 = *(&v111 + 1);
  v4 = v111;
  if (qword_1EA837248 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v13 = sub_182AD2698();
    __swift_project_value_buffer(v13, qword_1EA843418);

    v14 = sub_182AD2678();
    v15 = sub_182AD38A8();

    if (os_log_type_enabled(v14, v15))
    {
      osloga = v4;
      v4 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v111 = v99;
      *v4 = 136315650;
      v16 = sub_182AD3BF8();
      v95 = v15;
      v18 = a3;
      v19 = sub_181C64FFC(v16, v17, &v111);

      *(v4 + 4) = v19;
      *(v4 + 12) = 2080;
      v20 = sub_181C64FFC(v10, v9, &v111);

      *(v4 + 14) = v20;
      a3 = v18;
      *(v4 + 22) = 2080;
      v21 = sub_181C64FFC(osloga, v5, &v111);

      *(v4 + 24) = v21;
      _os_log_impl(&dword_181A37000, v14, v95, "%s %s %s", v4, 0x20u);
      v9 = v99;
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v99, -1, -1);
      MEMORY[0x1865DF520](v4, -1, -1);
    }

    else
    {

LABEL_7:
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_70:
    swift_once();
  }

  if (!v8)
  {
    v47 = *(v6[43] + 48);
    if (v47 < 0 || v47 != v6[10] || (swift_beginAccess(), *(v6 + 369) == 5))
    {
      sub_182034418(&v111);
      v48 = v122;
      *(a3 + 10) = v121;
      *(a3 + 11) = v48;
      *(a3 + 12) = v123;
      a3[208] = v124;
      v49 = v118;
      *(a3 + 6) = v117;
      *(a3 + 7) = v49;
      v50 = v120;
      *(a3 + 8) = v119;
      *(a3 + 9) = v50;
      v51 = v114;
      *(a3 + 2) = v113;
      *(a3 + 3) = v51;
      v52 = v116;
      *(a3 + 4) = v115;
      *(a3 + 5) = v52;
      v53 = v112;
      *a3 = v111;
      *(a3 + 1) = v53;
      return;
    }
  }

  v100 = a3;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  if (v6[3])
  {
LABEL_71:
    __break(1u);

    __break(1u);

    __break(1u);

    __break(1u);
    return;
  }

  v9 = 0;
  a3 = MEMORY[0x1E69E7CC0];
  v5 = 1;
  while (1)
  {
    v22 = v6[2];
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v23 = sub_1820E99EC(v22, &v125);

    if ((v23 & 1) == 0)
    {

      v54 = (&__nwlog_fault_add_description_to_list(char const*)::mutex + 56);
      goto LABEL_53;
    }

    v24 = *(a3 + 2);
    v4 = v128;
    v25 = *(v128 + 16);
    v10 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_62;
    }

    if (v8 < v10)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= *(a3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v24 <= v10)
      {
        v31 = v24 + v25;
      }

      else
      {
        v31 = v24;
      }

      a3 = sub_181ADBA10(isUniquelyReferenced_nonNull_native, v31, 1, a3);
      if (*(v4 + 16))
      {
LABEL_19:
        v27 = *(a3 + 2);
        if ((*(a3 + 3) >> 1) - v27 < v25)
        {
          goto LABEL_66;
        }

        memcpy(&a3[v27 + 32], (v4 + 32), v25);

        if (v25)
        {
          v28 = *(a3 + 2);
          v29 = __OFADD__(v28, v25);
          v30 = v28 + v25;
          if (v29)
          {
            goto LABEL_67;
          }

          *(a3 + 2) = v30;
        }

        goto LABEL_28;
      }
    }

    if (v25)
    {
      goto LABEL_63;
    }

LABEL_28:
    if (v127 == 1 && *(v6 + 369) != 5)
    {
      if (v102)
      {
        v32 = v6[4];
        v10 = v6[5];

        if (!__nwlog_is_datapath_logging_enabled())
        {
          goto LABEL_32;
        }

        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v35 = sub_182AD2698();
        __swift_project_value_buffer(v35, qword_1EA843418);
        v36 = swift_allocObject();
        *(v36 + 16) = "dequeueReassembledData(isFinal:connection:)";
        *(v36 + 24) = 43;
        *(v36 + 32) = 2;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_181F8C724;
        *(v37 + 24) = v36;
        v38 = swift_allocObject();
        *(v38 + 16) = v32;
        *(v38 + 24) = v10;
        v86 = swift_allocObject();
        strcpy((v86 + 16), "delivering FIN");
        *(v86 + 31) = -18;

        oslog = sub_182AD2678();
        v96 = sub_182AD38A8();
        v89 = swift_allocObject();
        *(v89 + 16) = 32;
        v88 = swift_allocObject();
        *(v88 + 16) = 8;
        v39 = swift_allocObject();
        *(v39 + 16) = sub_181F8C71C;
        *(v39 + 24) = v37;
        v40 = swift_allocObject();
        *(v40 + 16) = sub_181F8C718;
        *(v40 + 24) = v39;
        v91 = v40;
        v90 = swift_allocObject();
        *(v90 + 16) = 32;
        v93 = swift_allocObject();
        *(v93 + 16) = 8;
        v41 = swift_allocObject();
        *(v41 + 16) = sub_181F8C720;
        *(v41 + 24) = v38;
        v42 = swift_allocObject();
        *(v42 + 16) = sub_181F8C718;
        *(v42 + 24) = v41;
        v94 = v42;
        v92 = swift_allocObject();
        *(v92 + 16) = 32;
        v43 = swift_allocObject();
        *(v43 + 16) = 8;
        v44 = swift_allocObject();
        *(v44 + 16) = sub_181F8C720;
        *(v44 + 24) = v86;
        v45 = swift_allocObject();
        *(v45 + 16) = sub_181F8C718;
        *(v45 + 24) = v44;
        if (os_log_type_enabled(oslog, v96))
        {
          v87 = v43;
          v46 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v107 = 0;
          v85 = v106;
          *v46 = 770;
          v108 = v46 + 2;
          *&v111 = sub_181F8C728;
          *(&v111 + 1) = v89;
          sub_181F73AE0(&v111, &v108, &v107, &v106);

          *&v111 = sub_181F8C728;
          *(&v111 + 1) = v88;
          sub_181F73AE0(&v111, &v108, &v107, &v106);

          *&v111 = sub_181F8C714;
          *(&v111 + 1) = v91;
          sub_181F73AE0(&v111, &v108, &v107, &v106);

          *&v111 = sub_181F8C728;
          *(&v111 + 1) = v90;
          sub_181F73AE0(&v111, &v108, &v107, &v106);

          *&v111 = sub_181F8C728;
          *(&v111 + 1) = v93;
          sub_181F73AE0(&v111, &v108, &v107, &v106);

          *&v111 = sub_181F8C714;
          *(&v111 + 1) = v94;
          sub_181F73AE0(&v111, &v108, &v107, &v106);

          *&v111 = sub_181F8C728;
          *(&v111 + 1) = v92;
          sub_181F73AE0(&v111, &v108, &v107, &v106);

          *&v111 = sub_181F8C728;
          *(&v111 + 1) = v87;
          sub_181F73AE0(&v111, &v108, &v107, &v106);

          *&v111 = sub_181F8C714;
          *(&v111 + 1) = v45;
          sub_181F73AE0(&v111, &v108, &v107, &v106);

          _os_log_impl(&dword_181A37000, oslog, v96, "%s %s %s", v46, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v85, -1, -1);
          MEMORY[0x1865DF520](v46, -1, -1);
        }

        else
        {

LABEL_32:
        }
      }

      v4 = v6[4];
      v33 = v6[5];
      swift_beginAccess();

      sub_181F6D028(v4, v33, 5u);
      swift_endAccess();

      *a1 = 1;
    }

    if (v126 < 0)
    {
      goto LABEL_64;
    }

    v34 = v6[10];
    if (__CFADD__(v34, v126))
    {
      goto LABEL_65;
    }

    v6[10] = v34 + v126;
    if (v6[3])
    {
      goto LABEL_71;
    }
  }

  v56 = v6[4];
  v55 = v6[5];
  v54 = &__nwlog_fault_add_description_to_list(char const*)::mutex.__opaque[48];
  v57 = qword_1EA837248;

  if (v57 != -1)
  {
    swift_once();
  }

  v58 = sub_182AD2698();
  __swift_project_value_buffer(v58, qword_1EA843418);

  v59 = sub_182AD2678();
  v60 = sub_182AD38B8();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *&v111 = v104;
    *v61 = 136315650;
    v62 = sub_182AD3BF8();
    v64 = v56;
    v65 = sub_181C64FFC(v62, v63, &v111);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2080;
    v66 = sub_181C64FFC(v64, v55, &v111);

    *(v61 + 14) = v66;
    *(v61 + 22) = 2080;
    *(v61 + 24) = sub_181C64FFC(0xD000000000000042, 0x8000000182BD9090, &v111);
    _os_log_impl(&dword_181A37000, v59, v60, "%s %s %s", v61, 0x20u);
    swift_arrayDestroy();
    v54 = (&__nwlog_fault_add_description_to_list(char const*)::mutex + 56);
    MEMORY[0x1865DF520](v104, -1, -1);
    MEMORY[0x1865DF520](v61, -1, -1);
  }

  else
  {
  }

LABEL_53:
  v67 = *(a3 + 2);
  if (v67 >= v8)
  {
  }

  else
  {
    v69 = v6[4];
    v68 = v6[5];
    v70 = *(v54 + 73);

    if (v70 != -1)
    {
      swift_once();
    }

    v71 = sub_182AD2698();
    __swift_project_value_buffer(v71, qword_1EA843418);

    v72 = sub_182AD2678();
    v73 = sub_182AD38B8();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&v111 = v105;
      *v74 = 136315650;
      v75 = sub_182AD3BF8();
      v77 = sub_181C64FFC(v75, v76, &v111);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      v78 = sub_181C64FFC(v69, v68, &v111);

      *(v74 + 14) = v78;
      *(v74 + 22) = 2080;
      *(v74 + 24) = sub_181C64FFC(0xD000000000000033, 0x8000000182BD9050, &v111);
      _os_log_impl(&dword_181A37000, v72, v73, "%s %s %s", v74, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v105, -1, -1);
      MEMORY[0x1865DF520](v74, -1, -1);
    }

    else
    {
    }
  }

  Frame.init(copyBuffer:)(a3, v109);
  sub_18202BB74(v67, a2);

  v121 = v109[10];
  v122 = v109[11];
  v123 = v109[12];
  v117 = v109[6];
  v118 = v109[7];
  v124 = v110;
  v119 = v109[8];
  v120 = v109[9];
  v113 = v109[2];
  v114 = v109[3];
  v115 = v109[4];
  v116 = v109[5];
  v111 = v109[0];
  v112 = v109[1];
  nullsub_41(&v111);
  v79 = v122;
  *(v100 + 10) = v121;
  *(v100 + 11) = v79;
  *(v100 + 12) = v123;
  v100[208] = v124;
  v80 = v118;
  *(v100 + 6) = v117;
  *(v100 + 7) = v80;
  v81 = v120;
  *(v100 + 8) = v119;
  *(v100 + 9) = v81;
  v82 = v114;
  *(v100 + 2) = v113;
  *(v100 + 3) = v82;
  v83 = v116;
  *(v100 + 4) = v115;
  *(v100 + 5) = v83;
  v84 = v112;
  *v100 = v111;
  *(v100 + 1) = v84;
}

uint64_t sub_18202E5D8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_beginAccess();

  sub_181F6D028(v1, v2, 1u);
  swift_endAccess();

  if ((*(v0 + 373) & 4) == 0)
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    swift_beginAccess();

    sub_181F6C974(v4, v5, 1u);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_18202E698()
{
  if ((*(v0 + 373) & 4) == 0)
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40);
    swift_beginAccess();

    sub_181F6D028(v1, v2, 1u);
    swift_endAccess();
  }

  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  swift_beginAccess();

  sub_181F6C974(v3, v4, 1u);
  swift_endAccess();
}

uint64_t sub_18202E758(uint64_t a1, char a2)
{
  v4 = v2;
  v6 = *a1;
  v70 = *(a1 + 8);
  v7 = *(a1 + 24);
  v69[0] = *(a1 + 25);
  *(v69 + 15) = *(a1 + 40);
  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  v43 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 96);
  v12 = *(a1 + 128);
  v62 = *(a1 + 112);
  v63 = v12;
  v60 = v10;
  v61 = v11;
  v13 = *(a1 + 144);
  v14 = *(a1 + 160);
  v15 = *(a1 + 176);
  v16 = *(a1 + 192);
  v68 = *(a1 + 208);
  v66 = v15;
  v67 = v16;
  v64 = v13;
  v65 = v14;
  result = swift_beginAccess();
  if (*(v2 + 368) == 1)
  {
    v18 = v8;
    v3 = *(v2 + 32);
    v19 = *(v2 + 40);
    swift_beginAccess();

    sub_181F6C974(v3, v19, 2u);
    swift_endAccess();
    v8 = v18;
  }

  v20 = *(v2 + 56);
  if (v7 == 5)
  {

    v21 = nw_frame_unclaimed_length(v6);
    goto LABEL_11;
  }

  if (!v43)
  {
    goto LABEL_10;
  }

  v22 = v9 + v8;
  if (__OFADD__(v9, v8))
  {
    __break(1u);
    goto LABEL_27;
  }

  v21 = v43 - v22;
  if (__OFSUB__(v43, v22))
  {
LABEL_27:
    __break(1u);
    return result;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_10:

  v21 = 0;
LABEL_11:
  v23 = *(v20 + 56);
  v24 = __CFADD__(v23, v21);
  v25 = v23 + v21;
  if (v24)
  {
    __break(1u);
    goto LABEL_25;
  }

  *(v20 + 56) = v25;

  v21 = *(v4 + 32);
  v3 = *(v4 + 40);
  v26 = qword_1EA837250;

  if (v26 != -1)
  {
LABEL_25:
    swift_once();
  }

  if (byte_1EA843430)
  {
    v42 = v9;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v27 = sub_182AD2698();
    __swift_project_value_buffer(v27, qword_1EA843418);

    v28 = sub_182AD2678();
    v29 = sub_182AD38A8();

    if (os_log_type_enabled(v28, v29))
    {
      v41 = a2;
      v30 = swift_slowAlloc();
      v40 = v6;
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315650;
      v32 = sub_182AD3BF8();
      v39 = v8;
      v34 = v21;
      v35 = sub_181C64FFC(v32, v33, &v44);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2080;
      v36 = sub_181C64FFC(v34, v3, &v44);

      *(v30 + 14) = v36;
      *(v30 + 22) = 2080;
      v8 = v39;
      *(v30 + 24) = sub_181C64FFC(0xD000000000000027, 0x8000000182BD8FA0, &v44);
      _os_log_impl(&dword_181A37000, v28, v29, "%s %s %s", v30, 0x20u);
      swift_arrayDestroy();
      v37 = v31;
      v6 = v40;
      MEMORY[0x1865DF520](v37, -1, -1);
      v38 = v30;
      a2 = v41;
      MEMORY[0x1865DF520](v38, -1, -1);
    }

    else
    {
    }

    v9 = v42;
  }

  else
  {
  }

  swift_beginAccess();
  v44 = v6;
  v45 = v70;
  v46 = v7;
  *v47 = v69[0];
  *&v47[15] = *(v69 + 15);
  v48 = v9;
  v49 = v8;
  v50 = v43;
  v57 = v66;
  v58 = v67;
  v59 = v68;
  v53 = v62;
  v54 = v63;
  v56 = v65;
  v55 = v64;
  v52 = v61;
  v51 = v60;
  if (a2)
  {
    *(v4 + 328) = 1;
  }

  FrameArray.add(frame:)(&v44);
  return swift_endAccess();
}

uint64_t sub_18202EBA0(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, int64_t a5, uint64_t a6)
{
  v8 = v6;
  v11 = a1;
  v12 = *(a1 + 1072);
  v13 = sub_181F834CC(v12, a6, a4, a3, a1, 0);
  v14 = v13;
  v15 = &unk_1EA843000;
  v16 = v12 - a5;
  if (__OFSUB__(v12, a5))
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = __OFSUB__(v16, 3);
  v18 = v16 - 3;
  if (v17)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  a5 = v18 - v13;
  if (__OFSUB__(v18, v13))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_182AD3BA8();

    v76 = 0xD00000000000001ELL;
    v77 = 0x8000000182BD9500;
    v75 = a5;
    v39 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v39);

    MEMORY[0x1865D9CA0](0x7466656C2042, 0xE600000000000000);
    v40 = v77;
    osloga = v76;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v41 = sub_182AD2698();
    __swift_project_value_buffer(v41, qword_1EA843418);
    v42 = swift_allocObject();
    *(v42 + 16) = "currentPacketSpace(path:packetBuilder:keyState:lastAcked:tagSize:newPacketNumber:)";
    *(v42 + 24) = 82;
    *(v42 + 32) = 2;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_181F8C724;
    *(v43 + 24) = v42;
    v44 = swift_allocObject();
    *(v44 + 16) = v7;
    *(v44 + 24) = v8;
    v45 = swift_allocObject();
    *(v45 + 16) = osloga;
    *(v45 + 24) = v40;

    oslogb = sub_182AD2678();
    v46 = sub_182AD38A8();
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_181F8C71C;
    *(v47 + 24) = v43;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_181F8C718;
    *(v48 + 24) = v47;
    loga = swift_allocObject();
    LOBYTE(loga[2].isa) = 32;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_181F8C720;
    *(v49 + 24) = v44;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_181F8C718;
    *(v50 + 24) = v49;
    v66 = swift_allocObject();
    *(v66 + 16) = 32;
    v68 = swift_allocObject();
    *(v68 + 16) = 8;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_181F8C720;
    *(v51 + 24) = v45;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_181F8C718;
    *(v52 + 24) = v51;
    a2 = oslogb;
    if (os_log_type_enabled(oslogb, v46))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v73 = v54;
      v74 = 0;
      *v53 = 770;
      v56 = v54;
      v75 = v53 + 2;
      v76 = sub_181F8C728;
      v77 = v58;
      sub_181F73AE0(&v76, &v75, &v74, &v73);

      v76 = sub_181F8C728;
      v77 = v60;
      sub_181F73AE0(&v76, &v75, &v74, &v73);

      v76 = sub_181F8C714;
      v77 = v48;
      sub_181F73AE0(&v76, &v75, &v74, &v73);

      v76 = sub_181F8C728;
      v77 = loga;
      sub_181F73AE0(&v76, &v75, &v74, &v73);

      v76 = sub_181F8C728;
      v77 = v64;
      sub_181F73AE0(&v76, &v75, &v74, &v73);

      v76 = sub_181F8C714;
      v77 = v50;
      sub_181F73AE0(&v76, &v75, &v74, &v73);

      v76 = sub_181F8C728;
      v77 = v66;
      sub_181F73AE0(&v76, &v75, &v74, &v73);

      v76 = sub_181F8C728;
      v77 = v68;
      sub_181F73AE0(&v76, &v75, &v74, &v73);

      v76 = sub_181F8C714;
      v77 = v52;
      sub_181F73AE0(&v76, &v75, &v74, &v73);

      _os_log_impl(&dword_181A37000, oslogb, v46, "%s %s %s", v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v56, -1, -1);
      MEMORY[0x1865DF520](v53, -1, -1);

      return v15;
    }

    goto LABEL_41;
  }

  if (a5 <= 0)
  {
    v14 = *(v8 + 32);
    a5 = *(v8 + 40);
    a2 = qword_1EA837250;

    if (a2 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
    {
      goto LABEL_27;
    }

    a5 = 0;
  }

  if ((*(v8 + 24) & 1) == 0)
  {
    while (1)
    {
      v19 = *(*(v8 + 56) + 48);
      v20 = v19 ? 14 : 10;
      result = sub_182118FAC(v13, v20, v8, v19, a5);
      if (!a5 || result >= a5)
      {
        break;
      }

      v22 = a5 - result;
      if (!__OFSUB__(a5, result))
      {
        v23 = *(v11 + 1072);
        result = v23 - v22;
        if (!__OFSUB__(v23, v22))
        {
          return result;
        }

        __break(1u);
        break;
      }

      __break(1u);
LABEL_27:
      v69 = v11;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v26 = sub_182AD2698();
      __swift_project_value_buffer(v26, qword_1EA843418);
      v27 = swift_allocObject();
      *(v27 + 16) = "currentPacketSpace(path:packetBuilder:keyState:lastAcked:tagSize:newPacketNumber:)";
      *(v27 + 24) = 82;
      *(v27 + 32) = 2;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_181F8C724;
      *(v28 + 24) = v27;
      v29 = swift_allocObject();
      *(v29 + 16) = v14;
      *(v29 + 24) = a5;
      v30 = swift_allocObject();
      *(v30 + 16) = 0xD000000000000012;
      *(v30 + 24) = 0x8000000182BD9520;

      v14 = sub_182AD2678();
      v31 = sub_182AD38A8();
      v59 = swift_allocObject();
      *(v59 + 16) = 32;
      v63 = swift_allocObject();
      *(v63 + 16) = 8;
      v32 = swift_allocObject();
      *(v32 + 16) = sub_181F8C71C;
      *(v32 + 24) = v28;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_181F8C718;
      *(v33 + 24) = v32;
      v57 = swift_allocObject();
      *(v57 + 16) = 32;
      v65 = swift_allocObject();
      a2 = 8;
      *(v65 + 16) = 8;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_181F8C720;
      *(v34 + 24) = v29;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_181F8C718;
      *(v35 + 24) = v34;
      v67 = swift_allocObject();
      *(v67 + 16) = 32;
      oslog = swift_allocObject();
      LOBYTE(oslog[2].isa) = 8;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_181F8C720;
      *(v36 + 24) = v30;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_181F8C718;
      *(v37 + 24) = v36;
      v55 = v31;
      log = v14;
      if (os_log_type_enabled(v14, v31))
      {
        v14 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v73 = v38;
        v74 = 0;
        *v14 = 770;
        v75 = v14 + 2;
        v76 = sub_181F8C728;
        v77 = v59;
        sub_181F73AE0(&v76, &v75, &v74, &v73);

        v76 = sub_181F8C728;
        v77 = v63;
        sub_181F73AE0(&v76, &v75, &v74, &v73);

        v76 = sub_181F8C714;
        v77 = v33;
        sub_181F73AE0(&v76, &v75, &v74, &v73);

        v76 = sub_181F8C728;
        v77 = v57;
        sub_181F73AE0(&v76, &v75, &v74, &v73);

        v76 = sub_181F8C728;
        v77 = v65;
        sub_181F73AE0(&v76, &v75, &v74, &v73);

        v76 = sub_181F8C714;
        v77 = v35;
        sub_181F73AE0(&v76, &v75, &v74, &v73);

        v76 = sub_181F8C728;
        v77 = v67;
        sub_181F73AE0(&v76, &v75, &v74, &v73);

        v76 = sub_181F8C728;
        v77 = oslog;
        sub_181F73AE0(&v76, &v75, &v74, &v73);

        v76 = sub_181F8C714;
        v77 = v37;
        sub_181F73AE0(&v76, &v75, &v74, &v73);

        a2 = log;
        _os_log_impl(&dword_181A37000, log, v55, "%s %s %s", v14, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v38, -1, -1);
        MEMORY[0x1865DF520](v14, -1, -1);
      }

      else
      {
      }

      a5 = 0;
      v11 = v69;
      v15 = &unk_1EA843000;
      if (*(v8 + 24))
      {
        goto LABEL_40;
      }
    }

    v24 = v15;
    v15 = result;
    v7 = *(v8 + 32);
    v8 = *(v8 + 40);
    v25 = qword_1EA837250;

    if (v25 != -1)
    {
      swift_once();
    }

    if (v24[1072] != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

LABEL_40:
  __break(1u);
LABEL_41:

LABEL_24:

  return v15;
}

uint64_t sub_18202FE30(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 a4, uint64_t a5, unint64_t a6, int64_t a7, unint64_t a8, uint64_t (*a9)(uint64_t), uint64_t a10, void (*a11)(unint64_t), uint64_t a12, uint64_t (*a13)(uint64_t))
{
  v14 = v13;
  v16 = *(*(v13 + 56) + 48);
  swift_beginAccess();
  v17 = 0;
  v18 = *(v13 + 320);
  if (*(v13 + 312))
  {
    goto LABEL_25;
  }

  v19 = *(v13 + 304);
  if (*(v13 + 112) == 5)
  {
    v17 = nw_frame_unclaimed_length(*(v13 + 88));
    if (!v19)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v20 = *(v13 + 160);
    if (v20)
    {
      v21 = *(v13 + 144);
      v22 = *(v13 + 152);
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_232;
      }

      v17 = v20 - v24;
      if (__OFSUB__(v20, v24))
      {
        goto LABEL_233;
      }

      if (!v19)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = 0;
      if (!v19)
      {
        goto LABEL_24;
      }
    }
  }

  v25 = v19[4];
  v26 = v19[3] + v25;
  if (v19[2] < v26)
  {
    v26 = v19[2];
  }

  *&v269 = v19;
  *(&v269 + 1) = v25;
  *&v270 = v26;
  v27 = swift_retain_n();
  v28 = v19;
  while (1)
  {
    if (v25 != v270)
    {
      goto LABEL_17;
    }

    if ((sub_181AC81FC(v27) & 1) == 0)
    {
      break;
    }

    v25 = *(&v269 + 1);
    v28 = v269;
LABEL_17:
    v31 = &v28[v25++];
    *(&v269 + 1) = v25;
    v32 = v31[5];
    swift_beginAccess();
    if (*(v32 + 40) == 5)
    {
      v29 = *(v32 + 16);

      v30 = nw_frame_unclaimed_length(v29);
    }

    else
    {
      v33 = *(v32 + 88);
      if (v33)
      {
        v34 = *(v32 + 72);
        v35 = *(v32 + 80);
        v23 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v23)
        {
          goto LABEL_211;
        }

        v30 = v33 - v36;
        if (__OFSUB__(v33, v36))
        {
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
          goto LABEL_228;
        }
      }

      else
      {

        v30 = 0;
      }
    }

    swift_endAccess();

    v23 = __OFADD__(v17, v30);
    v17 += v30;
    if (v23)
    {
      goto LABEL_205;
    }
  }

LABEL_24:
  if (v17 < 0)
  {
    goto LABEL_224;
  }

LABEL_25:
  if (__CFADD__(v18, v17))
  {
    goto LABEL_225;
  }

  swift_endAccess();
  if (v16 >= v18 + v17)
  {
    return 0;
  }

  v231 = a13;
  swift_beginAccess();
  v254 = 0;
  v230 = 0;
  while (2)
  {
    v37 = *(*(v14 + 56) + 48);
    swift_beginAccess();
    v16 = *(v14 + 320);
    if (*(v14 + 312))
    {
      v38 = 0;
    }

    else
    {
      v39 = *(v14 + 304);
      if (*(v14 + 112) == 5)
      {
        v38 = nw_frame_unclaimed_length(*(v14 + 88));
        if (v39)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v40 = *(v14 + 160);
        if (v40)
        {
          v41 = *(v14 + 144);
          v42 = *(v14 + 152);
          v23 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v23)
          {
            goto LABEL_226;
          }

          v38 = v40 - v43;
          if (!__OFSUB__(v40, v43))
          {
            if (!v39)
            {
              goto LABEL_52;
            }

LABEL_37:
            v44 = v39[4];
            v45 = v39[3] + v44;
            if (v39[2] < v45)
            {
              v45 = v39[2];
            }

            *&v269 = v39;
            *(&v269 + 1) = v44;
            *&v270 = v45;
            v46 = swift_retain_n();
            v47 = v39;
            while (1)
            {
              if (v44 == v270)
              {
                if ((sub_181AC81FC(v46) & 1) == 0)
                {

                  goto LABEL_52;
                }

                v44 = *(&v269 + 1);
                v47 = v269;
              }

              v49 = &v47[v44++];
              *(&v269 + 1) = v44;
              v50 = v49[5];
              swift_beginAccess();
              if (*(v50 + 40) == 5)
              {
                v48 = *(v50 + 16);

                v18 = nw_frame_unclaimed_length(v48);
              }

              else
              {
                v51 = *(v50 + 88);
                if (v51)
                {
                  v52 = *(v50 + 72);
                  v53 = *(v50 + 80);
                  v23 = __OFADD__(v52, v53);
                  v54 = v52 + v53;
                  if (v23)
                  {
                    goto LABEL_206;
                  }

                  v18 = v51 - v54;
                  if (__OFSUB__(v51, v54))
                  {
                    goto LABEL_207;
                  }
                }

                else
                {

                  v18 = 0;
                }
              }

              swift_endAccess();

              v23 = __OFADD__(v38, v18);
              v38 += v18;
              if (v23)
              {
                __break(1u);
LABEL_204:
                __break(1u);
LABEL_205:
                __break(1u);
LABEL_206:
                __break(1u);
LABEL_207:
                __break(1u);
LABEL_208:
                __break(1u);
LABEL_209:
                __break(1u);
LABEL_210:
                __break(1u);
LABEL_211:
                __break(1u);
                goto LABEL_212;
              }
            }
          }

          goto LABEL_227;
        }

        v38 = 0;
        if (v39)
        {
          goto LABEL_37;
        }
      }

LABEL_52:
      if (v38 < 0)
      {
        goto LABEL_213;
      }
    }

    if (__CFADD__(v16, v38))
    {
      goto LABEL_214;
    }

    swift_endAccess();
    if (v37 >= v16 + v38)
    {
      goto LABEL_162;
    }

    v55 = *(v14 + 372);

    v56 = sub_18220FDCC(a1, a8, v55 & 1);

    v57 = *(a1 + 912);
    v293 = *(a1 + 896);
    v294 = v57;
    v295 = *(a1 + 928);
    v296 = *(a1 + 944);
    v58 = *(a1 + 848);
    v289 = *(a1 + 832);
    v290 = v58;
    v59 = *(a1 + 880);
    v291 = *(a1 + 864);
    v292 = v59;
    v60 = *(a1 + 784);
    v285 = *(a1 + 768);
    v286 = v60;
    v61 = *(a1 + 816);
    v287 = *(a1 + 800);
    v288 = v61;
    v62 = *(a1 + 752);
    v283 = *(a1 + 736);
    v284 = v62;
    if (sub_182015D6C(&v283) == 1)
    {
      __break(1u);
      goto LABEL_242;
    }

    v279 = v293;
    v280 = v294;
    v281 = v295;
    v282 = v296;
    v275 = v289;
    v276 = v290;
    v277 = v291;
    v278 = v292;
    v271 = v285;
    v272 = v286;
    v273 = v287;
    v274 = v288;
    v269 = v283;
    v270 = v284;
    sub_182015D80(&v269);
    v63 = nullsub_41(&v269);
    v64 = v63[1];
    if (*v63 >= v64)
    {
      v16 = *v63 - v64;
    }

    else
    {
      v16 = 0;
    }

    v65 = sub_18202EBA0(a1, a2, a4, a6, a7, a5);
    if ((v66 & 0x8000000000000000) != 0)
    {
      goto LABEL_215;
    }

    v18 = v65;
    v67 = v66;
    if (!v66 || !v56 || (v65 & 0x8000000000000000) == 0 && v65 >= v16)
    {
      v68 = *(v14 + 32);
      v69 = *(v14 + 40);
      v70 = qword_1EA837250;

      if (v70 != -1)
      {
        swift_once();
      }

      v71 = byte_1EA843430;
      if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
      {
        *&v264 = 0;
        *(&v264 + 1) = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD00000000000001ALL, 0x8000000182BD93E0);
        v260 = v67;
        v130 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v130);

        MEMORY[0x1865D9CA0](0x206366202CLL, 0xE500000000000000);
        v260 = v56;
        v131 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v131);

        MEMORY[0x1865D9CA0](0x206363202CLL, 0xE500000000000000);
        v260 = v16;
        v132 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v132);

        MEMORY[0x1865D9CA0](0x206C61746F74202CLL, 0xEF20726564616568);
        v260 = v18;
        v133 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v133);

        oslogb = v264;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v134 = sub_182AD2698();
        __swift_project_value_buffer(v134, qword_1EA843418);
        v135 = swift_allocObject();
        *(v135 + 16) = "servicePendingSendData(on:with:packetNumberSpace:keyState:newPacketNumber:lastAcked:tagSize:connectionRemoteReceiveWindow:using:sendDataConsumed:blockedNotification:)";
        *(v135 + 24) = 166;
        *(v135 + 32) = 2;
        v136 = swift_allocObject();
        *(v136 + 16) = sub_181F8C724;
        *(v136 + 24) = v135;
        v226 = swift_allocObject();
        *(v226 + 16) = v68;
        *(v226 + 24) = v69;
        v204 = swift_allocObject();
        *(v204 + 16) = oslogb;

        oslogc = sub_182AD2678();
        logb = sub_182AD38A8();
        v209 = swift_allocObject();
        *(v209 + 16) = 32;
        v212 = swift_allocObject();
        *(v212 + 16) = 8;
        v137 = swift_allocObject();
        *(v137 + 16) = sub_181F8C71C;
        *(v137 + 24) = v136;
        v138 = swift_allocObject();
        *(v138 + 16) = sub_181F8C718;
        *(v138 + 24) = v137;
        v214 = v138;
        v220 = swift_allocObject();
        *(v220 + 16) = 32;
        v217 = swift_allocObject();
        *(v217 + 16) = 8;
        v139 = swift_allocObject();
        *(v139 + 16) = sub_181F8C720;
        *(v139 + 24) = v226;
        v140 = swift_allocObject();
        *(v140 + 16) = sub_181F8C718;
        *(v140 + 24) = v139;
        v223 = v140;
        v227 = swift_allocObject();
        *(v227 + 16) = 32;
        v141 = swift_allocObject();
        *(v141 + 16) = 8;
        v142 = swift_allocObject();
        *(v142 + 16) = sub_181F8C720;
        *(v142 + 24) = v204;
        v143 = swift_allocObject();
        *(v143 + 16) = sub_181F8C718;
        *(v143 + 24) = v142;
        if (!os_log_type_enabled(oslogc, logb))
        {

          goto LABEL_68;
        }

        v205 = v141;
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v259[0] = 0;
        buf = v145;
        *v144 = 770;
        v260 = (v144 + 1);
        v263 = v145;
        *&v264 = sub_181F8C728;
        *(&v264 + 1) = v209;
        sub_181F73AE0(&v264, &v260, v259, &v263);

        *&v264 = sub_181F8C728;
        *(&v264 + 1) = v212;
        sub_181F73AE0(&v264, &v260, v259, &v263);

        *&v264 = sub_181F8C714;
        *(&v264 + 1) = v214;
        sub_181F73AE0(&v264, &v260, v259, &v263);

        *&v264 = sub_181F8C728;
        *(&v264 + 1) = v220;
        sub_181F73AE0(&v264, &v260, v259, &v263);

        *&v264 = sub_181F8C728;
        *(&v264 + 1) = v217;
        sub_181F73AE0(&v264, &v260, v259, &v263);

        *&v264 = sub_181F8C714;
        *(&v264 + 1) = v223;
        sub_181F73AE0(&v264, &v260, v259, &v263);

        *&v264 = sub_181F8C728;
        *(&v264 + 1) = v227;
        sub_181F73AE0(&v264, &v260, v259, &v263);

        *&v264 = sub_181F8C728;
        *(&v264 + 1) = v205;
        sub_181F73AE0(&v264, &v260, v259, &v263);

        *&v264 = sub_181F8C714;
        *(&v264 + 1) = v143;
        sub_181F73AE0(&v264, &v260, v259, &v263);
        v230 = 0;

        _os_log_impl(&dword_181A37000, oslogc, logb, "%s %s %s", 0, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](buf, -1, -1);
        MEMORY[0x1865DF520](0, -1, -1);
      }

      else
      {
LABEL_68:
      }

      v16 = *(a1 + 1072);
      if ((sub_181F83128(a3) & 1) != 0 || v16 >= 1 && v56 < v16)
      {
        goto LABEL_162;
      }

      if (v71)
      {
        v72 = *(v14 + 32);
        v73 = *(v14 + 40);

        if (!__nwlog_is_datapath_logging_enabled())
        {
          goto LABEL_74;
        }

        *&v264 = 0;
        *(&v264 + 1) = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD000000000000036, 0x8000000182BD93A0);
        v260 = v16;
        v146 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v146);

        oslogd = v264;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v147 = sub_182AD2698();
        __swift_project_value_buffer(v147, qword_1EA843418);
        v148 = swift_allocObject();
        *(v148 + 16) = "servicePendingSendData(on:with:packetNumberSpace:keyState:newPacketNumber:lastAcked:tagSize:connectionRemoteReceiveWindow:using:sendDataConsumed:blockedNotification:)";
        *(v148 + 24) = 166;
        *(v148 + 32) = 2;
        v149 = swift_allocObject();
        *(v149 + 16) = sub_181F8C724;
        *(v149 + 24) = v148;
        v228 = swift_allocObject();
        *(v228 + 16) = v72;
        *(v228 + 24) = v73;
        v206 = swift_allocObject();
        *(v206 + 16) = oslogd;

        osloge = sub_182AD2678();
        logc = sub_182AD38A8();
        v210 = swift_allocObject();
        *(v210 + 16) = 32;
        v213 = swift_allocObject();
        *(v213 + 16) = 8;
        v150 = swift_allocObject();
        *(v150 + 16) = sub_181F8C71C;
        *(v150 + 24) = v149;
        v151 = swift_allocObject();
        *(v151 + 16) = sub_181F8C718;
        *(v151 + 24) = v150;
        v215 = v151;
        v221 = swift_allocObject();
        *(v221 + 16) = 32;
        v218 = swift_allocObject();
        *(v218 + 16) = 8;
        v152 = swift_allocObject();
        *(v152 + 16) = sub_181F8C720;
        *(v152 + 24) = v228;
        v153 = swift_allocObject();
        *(v153 + 16) = sub_181F8C718;
        *(v153 + 24) = v152;
        v224 = v153;
        v229 = swift_allocObject();
        *(v229 + 16) = 32;
        v154 = swift_allocObject();
        *(v154 + 16) = 8;
        v155 = swift_allocObject();
        *(v155 + 16) = sub_181F8C720;
        *(v155 + 24) = v206;
        v156 = swift_allocObject();
        *(v156 + 16) = sub_181F8C718;
        *(v156 + 24) = v155;
        if (os_log_type_enabled(osloge, logc))
        {
          v207 = v154;
          v157 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          v259[0] = 0;
          bufa = v158;
          *v157 = 770;
          v260 = (v157 + 1);
          v263 = v158;
          *&v264 = sub_181F8C728;
          *(&v264 + 1) = v210;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C728;
          *(&v264 + 1) = v213;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C714;
          *(&v264 + 1) = v215;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C728;
          *(&v264 + 1) = v221;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C728;
          *(&v264 + 1) = v218;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C714;
          *(&v264 + 1) = v224;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C728;
          *(&v264 + 1) = v229;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C728;
          *(&v264 + 1) = v207;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C714;
          *(&v264 + 1) = v156;
          sub_181F73AE0(&v264, &v260, v259, &v263);
          v230 = 0;

          _os_log_impl(&dword_181A37000, osloge, logc, "%s %s %s", 0, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](bufa, -1, -1);
          MEMORY[0x1865DF520](0, -1, -1);

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_222;
          }

          goto LABEL_76;
        }

LABEL_74:
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_222;
      }
    }

LABEL_76:
    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_216;
    }

    if (v16 < v18)
    {
      goto LABEL_217;
    }

    if (v16 - v18 >= v56)
    {
      v74 = v56;
    }

    else
    {
      v74 = v16 - v18;
    }

    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    v16 = byte_1EA843430;
    if (byte_1EA843430 == 1)
    {
      v75 = *(*(v14 + 56) + 48);
      swift_beginAccess();
      v76 = sub_181FCE700(v75);
      if (*(v14 + 312))
      {
        v77 = 0;
      }

      else
      {
        v242 = v74;
        v78 = *(v14 + 304);
        if (*(v14 + 112) == 5)
        {
          v77 = nw_frame_unclaimed_length(*(v14 + 88));
          if (v78)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v79 = *(v14 + 160);
          if (v79)
          {
            v80 = *(v14 + 144);
            v81 = *(v14 + 152);
            v23 = __OFADD__(v80, v81);
            v82 = v80 + v81;
            if (v23)
            {
              goto LABEL_230;
            }

            v77 = v79 - v82;
            if (__OFSUB__(v79, v82))
            {
              goto LABEL_231;
            }

            if (v78)
            {
LABEL_93:
              log = v76;
              oslog = v16;
              v16 = v78[4];
              v83 = v78[3] + v16;
              if (v78[2] < v83)
              {
                v83 = v78[2];
              }

              v260 = v78;
              v261 = v16;
              v262 = v83;
              v84 = swift_retain_n();
              v85 = v78;
              while (1)
              {
                if (v16 == v262)
                {
                  if ((sub_181AC81FC(v84) & 1) == 0)
                  {

                    v16 = oslog;
                    v76 = log;
                    break;
                  }

                  v85 = v260;
                  v16 = v261;
                }

                v88 = &v85[v16++];
                v261 = v16;
                v89 = v88[5];
                swift_beginAccess();
                if (*(v89 + 40) == 5)
                {
                  v86 = *(v89 + 16);

                  v87 = nw_frame_unclaimed_length(v86);
                }

                else
                {
                  v90 = *(v89 + 88);
                  if (v90)
                  {
                    v91 = *(v89 + 72);
                    v92 = *(v89 + 80);
                    v23 = __OFADD__(v91, v92);
                    v93 = v91 + v92;
                    if (v23)
                    {
                      goto LABEL_208;
                    }

                    v87 = v90 - v93;
                    if (__OFSUB__(v90, v93))
                    {
                      goto LABEL_209;
                    }
                  }

                  else
                  {

                    v87 = 0;
                  }
                }

                swift_endAccess();

                v23 = __OFADD__(v77, v87);
                v77 += v87;
                if (v23)
                {
                  goto LABEL_204;
                }
              }
            }
          }

          else
          {
            v77 = 0;
            if (v78)
            {
              goto LABEL_93;
            }
          }
        }

        v74 = v242;
        if (v77 < 0)
        {
          goto LABEL_223;
        }
      }

      swift_endAccess();
      v95 = *(v14 + 32);
      v94 = *(v14 + 40);

      if (__nwlog_is_datapath_logging_enabled())
      {
        osloga = v16;
        *&v264 = 0;
        *(&v264 + 1) = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BD9380);
        v260 = v77;
        v243 = v74;
        v107 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v107);

        MEMORY[0x1865D9CA0](0x203A66666F20, 0xE600000000000000);
        v260 = *(v14 + 320);
        v108 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v108);

        MEMORY[0x1865D9CA0](0x76726573206F7420, 0xED0000203A656369);
        v260 = v76;
        v109 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v109);

        MEMORY[0x1865D9CA0](0x73616C2073692820, 0xEA00000000002074);
        if (*(v14 + 328))
        {
          v110 = 1702195828;
        }

        else
        {
          v110 = 0x65736C6166;
        }

        if (*(v14 + 328))
        {
          v111 = 0xE400000000000000;
        }

        else
        {
          v111 = 0xE500000000000000;
        }

        MEMORY[0x1865D9CA0](v110, v111);

        MEMORY[0x1865D9CA0](0x65776F6C6C61202CLL, 0xEA00000000002064);
        v260 = v74;
        v112 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v112);

        MEMORY[0x1865D9CA0](0x206C61746F74202CLL, 0xEF20726564616568);
        v260 = v18;
        v113 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v113);

        MEMORY[0x1865D9CA0](0x616C69617661202CLL, 0xEC00000020656C62);
        v260 = v67;
        v114 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v114);

        v115 = v264;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v116 = sub_182AD2698();
        __swift_project_value_buffer(v116, qword_1EA843418);
        v117 = swift_allocObject();
        *(v117 + 16) = "servicePendingSendData(on:with:packetNumberSpace:keyState:newPacketNumber:lastAcked:tagSize:connectionRemoteReceiveWindow:using:sendDataConsumed:blockedNotification:)";
        *(v117 + 24) = 166;
        *(v117 + 32) = 2;
        v118 = swift_allocObject();
        *(v118 + 16) = sub_181F8C724;
        *(v118 + 24) = v117;
        v119 = swift_allocObject();
        *(v119 + 16) = v95;
        *(v119 + 24) = v94;
        v202 = swift_allocObject();
        *(v202 + 16) = v115;

        loga = sub_182AD2678();
        v225 = sub_182AD38A8();
        v211 = swift_allocObject();
        *(v211 + 16) = 32;
        v208 = swift_allocObject();
        *(v208 + 16) = 8;
        v120 = swift_allocObject();
        *(v120 + 16) = sub_181F8C71C;
        *(v120 + 24) = v118;
        v121 = swift_allocObject();
        *(v121 + 16) = sub_181F8C718;
        *(v121 + 24) = v120;
        v216 = v121;
        v219 = swift_allocObject();
        *(v219 + 16) = 32;
        v222 = swift_allocObject();
        *(v222 + 16) = 8;
        v122 = swift_allocObject();
        *(v122 + 16) = sub_181F8C720;
        *(v122 + 24) = v119;
        v123 = swift_allocObject();
        *(v123 + 16) = sub_181F8C718;
        *(v123 + 24) = v122;
        v124 = swift_allocObject();
        *(v124 + 16) = 32;
        v125 = swift_allocObject();
        *(v125 + 16) = 8;
        v126 = swift_allocObject();
        *(v126 + 16) = sub_181F8C720;
        *(v126 + 24) = v202;
        v127 = swift_allocObject();
        *(v127 + 16) = sub_181F8C718;
        *(v127 + 24) = v126;
        if (os_log_type_enabled(loga, v225))
        {
          v200 = v127;
          v201 = v123;
          v203 = v125;
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v259[0] = 0;
          v197 = v129;
          *v128 = 770;
          v260 = (v128 + 2);
          v263 = v129;
          *&v264 = sub_181F8C728;
          *(&v264 + 1) = v211;
          sub_181F73AE0(&v264, &v260, v259, &v263);
          v16 = osloga;
          v74 = v243;

          *&v264 = sub_181F8C728;
          *(&v264 + 1) = v208;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C714;
          *(&v264 + 1) = v216;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C728;
          *(&v264 + 1) = v219;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C728;
          *(&v264 + 1) = v222;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C714;
          *(&v264 + 1) = v201;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C728;
          *(&v264 + 1) = v124;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C728;
          *(&v264 + 1) = v203;
          sub_181F73AE0(&v264, &v260, v259, &v263);

          *&v264 = sub_181F8C714;
          *(&v264 + 1) = v200;
          sub_181F73AE0(&v264, &v260, v259, &v263);
          v230 = 0;

          _os_log_impl(&dword_181A37000, loga, v225, "%s %s %s", v128, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v197, -1, -1);
          MEMORY[0x1865DF520](v128, -1, -1);
        }

        else
        {

          v16 = osloga;
          v74 = v243;
        }
      }

      else
      {
      }
    }

    v96 = *(*(v14 + 56) + 48);
    swift_beginAccess();
    v18 = sub_181FCE700(v96);
    swift_endAccess();
    if (v67 >= v74)
    {
      v97 = v74;
    }

    else
    {
      v97 = v67;
    }

    if (v18 >= v97)
    {
      v98 = v97;
    }

    else
    {
      v98 = v18;
    }

    sub_18221227C(v98);

    a11(v98);
    if (v18 <= v97)
    {
      v99 = *(v14 + 328);
    }

    else
    {
      v99 = 0;
    }

    if (v99 == 1 && *(v14 + 368) == 2)
    {
      v18 = *(v14 + 32);
      v100 = *(v14 + 40);
      swift_beginAccess();

      sub_181F6C974(v18, v100, 3u);
      swift_endAccess();
    }

    if (*(v14 + 24))
    {
      goto LABEL_218;
    }

    v101 = *(*(v14 + 56) + 48);
    if (v101)
    {
      v102 = 6;
      if (!v98)
      {
        v102 = 4;
      }

      if (v99)
      {
LABEL_128:
        v102 |= 1uLL;
      }
    }

    else
    {
      v102 = 2 * (v98 != 0);
      if (v99)
      {
        goto LABEL_128;
      }
    }

    *&v264 = v102;
    *(&v264 + 1) = 0x4800000000000000;
    v265 = v14;
    v266 = v101;
    v267 = v98;
    v268 = v99;

    sub_181F82F10(a3, &v264);

    v103 = *(v14 + 56);
    v104 = *(v103 + 48);
    v105 = __CFADD__(v104, v98);
    v106 = v104 + v98;
    if (v105)
    {
      goto LABEL_219;
    }

    *(v103 + 48) = v106;
    if ((a9(a1) & 1) == 0)
    {
LABEL_162:
      v55 = 0;
      goto LABEL_169;
    }

    if (v254 != 9)
    {
      ++v254;
      continue;
    }

    break;
  }

  if (v16)
  {
    v18 = *(v14 + 32);
    v16 = *(v14 + 40);

    if (__nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_236;
    }

    goto LABEL_167;
  }

  while (2)
  {
    v55 = 1;
LABEL_169:
    v159 = *(*(v14 + 56) + 48);
    swift_beginAccess();
    v160 = 0;
    v18 = *(v14 + 320);
    if ((*(v14 + 312) & 1) == 0)
    {
      v16 = *(v14 + 304);
      if (*(v14 + 112) == 5)
      {
        v160 = nw_frame_unclaimed_length(*(v14 + 88));
        if (v16)
        {
          goto LABEL_177;
        }

        goto LABEL_192;
      }

      v161 = *(v14 + 160);
      if (v161)
      {
        v162 = *(v14 + 144);
        v163 = *(v14 + 152);
        v23 = __OFADD__(v162, v163);
        v164 = v162 + v163;
        if (!v23)
        {
          v160 = v161 - v164;
          if (!__OFSUB__(v161, v164))
          {
            if (!v16)
            {
              goto LABEL_192;
            }

LABEL_177:
            v165 = *(v16 + 32);
            v166 = *(v16 + 24) + v165;
            if (*(v16 + 16) < v166)
            {
              v166 = *(v16 + 16);
            }

            *&v269 = v16;
            *(&v269 + 1) = v165;
            *&v270 = v166;
            v167 = swift_retain_n();
            v168 = v16;
            while (1)
            {
              if (v165 == v270)
              {
                if ((sub_181AC81FC(v167) & 1) == 0)
                {

                  goto LABEL_192;
                }

                v165 = *(&v269 + 1);
                v168 = v269;
              }

              v171 = v168 + 8 * v165++;
              *(&v269 + 1) = v165;
              v172 = *(v171 + 40);
              swift_beginAccess();
              if (*(v172 + 40) == 5)
              {
                v169 = *(v172 + 16);

                v170 = nw_frame_unclaimed_length(v169);
              }

              else
              {
                v173 = *(v172 + 88);
                if (v173)
                {
                  v174 = *(v172 + 72);
                  v175 = *(v172 + 80);
                  v23 = __OFADD__(v174, v175);
                  v176 = v174 + v175;
                  if (v23)
                  {
                    goto LABEL_220;
                  }

                  v170 = v173 - v176;
                  if (__OFSUB__(v173, v176))
                  {
                    goto LABEL_221;
                  }
                }

                else
                {

                  v170 = 0;
                }
              }

              swift_endAccess();

              v23 = __OFADD__(v160, v170);
              v160 += v170;
              if (v23)
              {
                goto LABEL_210;
              }
            }
          }

LABEL_235:
          __break(1u);
LABEL_236:
          *&v264 = 0;
          *(&v264 + 1) = 0xE000000000000000;
          sub_182AD3BA8();
          MEMORY[0x1865D9CA0](0xD00000000000003FLL, 0x8000000182BD9340);
          v260 = 10;
          v180 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v180);

          a2 = *(&v264 + 1);
          v55 = v264;
          if (qword_1EA837248 == -1)
          {
LABEL_237:
            v181 = sub_182AD2698();
            __swift_project_value_buffer(v181, qword_1EA843418);
            v182 = swift_allocObject();
            *(v182 + 16) = "servicePendingSendData(on:with:packetNumberSpace:keyState:newPacketNumber:lastAcked:tagSize:connectionRemoteReceiveWindow:using:sendDataConsumed:blockedNotification:)";
            *(v182 + 24) = 166;
            *(v182 + 32) = 2;
            v183 = swift_allocObject();
            *(v183 + 16) = sub_181F8C724;
            *(v183 + 24) = v182;
            v184 = swift_allocObject();
            *(v184 + 16) = v18;
            *(v184 + 24) = v16;
            v185 = swift_allocObject();
            *(v185 + 16) = v55;
            *(v185 + 24) = a2;

            v186 = sub_182AD2678();
            v187 = sub_182AD38A8();
            v249 = swift_allocObject();
            *(v249 + 16) = 32;
            v251 = swift_allocObject();
            *(v251 + 16) = 8;
            v188 = swift_allocObject();
            *(v188 + 16) = sub_181F8C71C;
            *(v188 + 24) = v183;
            v189 = swift_allocObject();
            *(v189 + 16) = sub_181F8C718;
            *(v189 + 24) = v188;
            v247 = swift_allocObject();
            *(v247 + 16) = 32;
            v253 = swift_allocObject();
            *(v253 + 16) = 8;
            v190 = swift_allocObject();
            *(v190 + 16) = sub_181F8C720;
            *(v190 + 24) = v184;
            v191 = swift_allocObject();
            *(v191 + 16) = sub_181F8C718;
            *(v191 + 24) = v190;
            v255 = swift_allocObject();
            *(v255 + 16) = 32;
            v257 = swift_allocObject();
            *(v257 + 16) = 8;
            v192 = swift_allocObject();
            *(v192 + 16) = sub_181F8C720;
            *(v192 + 24) = v185;
            v193 = swift_allocObject();
            *(v193 + 16) = sub_181F8C718;
            *(v193 + 24) = v192;
            v245 = v187;
            v194 = v186;
            if (!os_log_type_enabled(v186, v187))
            {

LABEL_167:

              continue;
            }

            v195 = swift_slowAlloc();
            v196 = swift_slowAlloc();
            v259[0] = 0;
            *v195 = 770;
            v260 = (v195 + 2);
            v263 = v196;
            *&v264 = sub_181F8C728;
            *(&v264 + 1) = v249;
            sub_181F73AE0(&v264, &v260, v259, &v263);
            if (v230)
            {

              while (1)
              {

                __break(1u);
              }
            }

            *&v264 = sub_181F8C728;
            *(&v264 + 1) = v251;
            sub_181F73AE0(&v264, &v260, v259, &v263);

            *&v264 = sub_181F8C714;
            *(&v264 + 1) = v189;
            sub_181F73AE0(&v264, &v260, v259, &v263);

            *&v264 = sub_181F8C728;
            *(&v264 + 1) = v247;
            sub_181F73AE0(&v264, &v260, v259, &v263);

            *&v264 = sub_181F8C728;
            *(&v264 + 1) = v253;
            sub_181F73AE0(&v264, &v260, v259, &v263);

            *&v264 = sub_181F8C714;
            *(&v264 + 1) = v191;
            sub_181F73AE0(&v264, &v260, v259, &v263);

            *&v264 = sub_181F8C728;
            *(&v264 + 1) = v255;
            sub_181F73AE0(&v264, &v260, v259, &v263);

            *&v264 = sub_181F8C728;
            *(&v264 + 1) = v257;
            sub_181F73AE0(&v264, &v260, v259, &v263);

            *&v264 = sub_181F8C714;
            *(&v264 + 1) = v193;
            sub_181F73AE0(&v264, &v260, v259, &v263);

            _os_log_impl(&dword_181A37000, v194, v245, "%s %s %s", v195, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v196, -1, -1);
            MEMORY[0x1865DF520](v195, -1, -1);

            continue;
          }

LABEL_243:
          swift_once();
          goto LABEL_237;
        }

LABEL_234:
        __break(1u);
        goto LABEL_235;
      }

      v160 = 0;
      if (v16)
      {
        goto LABEL_177;
      }

LABEL_192:
      if (v160 < 0)
      {
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
        goto LABEL_234;
      }
    }

    break;
  }

  if (__CFADD__(v18, v160))
  {
    goto LABEL_229;
  }

  v177 = swift_endAccess();
  if (v159 >= v18 + v160 || *(*(v14 + 56) + 48) < *(*(v14 + 56) + 32) || (v231(v177) & 1) == 0)
  {
    return v55;
  }

  if (*(v14 + 24))
  {
LABEL_242:
    __break(1u);
    goto LABEL_243;
  }

  v178 = *(v14 + 372);
  if ((v178 & 1) == 0)
  {
    *(v14 + 372) = v178 | 1;
  }

  return v55;
}

void sub_182032A1C(uint8_t *a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = qword_1EA837250;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = byte_1EA843430;
  if (byte_1EA843430 == 1 && (__nwlog_is_datapath_logging_enabled() & 1) != 0)
  {
    v103 = v1;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v35 = sub_182AD2698();
    __swift_project_value_buffer(v35, qword_1EA843418);
    v36 = swift_allocObject();
    *(v36 + 16) = "processIncomingMaxStreamData(remoteMaxStreamData:)";
    *(v36 + 24) = 50;
    *(v36 + 32) = 2;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_181F8C724;
    *(v37 + 24) = v36;
    v38 = swift_allocObject();
    *(v38 + 16) = v4;
    *(v38 + 24) = v3;
    v39 = swift_allocObject();
    *(v39 + 16) = 0xD000000000000017;
    *(v39 + 24) = 0x8000000182BD9A40;

    oslog = sub_182AD2678();
    v100 = sub_182AD38A8();
    v97 = swift_allocObject();
    *(v97 + 16) = 32;
    v94 = swift_allocObject();
    *(v94 + 16) = 8;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_181F8C71C;
    *(v40 + 24) = v37;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_181F8C718;
    *(v41 + 24) = v40;
    v91 = swift_allocObject();
    *(v91 + 16) = 32;
    v88 = swift_allocObject();
    *(v88 + 16) = 8;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_181F8C720;
    *(v42 + 24) = v38;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_181F8C718;
    *(v43 + 24) = v42;
    v44 = swift_allocObject();
    *(v44 + 16) = 32;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_181F8C720;
    *(v46 + 24) = v39;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_181F8C718;
    *(v47 + 24) = v46;
    if (os_log_type_enabled(oslog, v100))
    {
      v48 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v112 = 0;
      v83 = v111;
      buf = v48;
      *v48 = 770;
      v113 = (v48 + 2);
      v115 = sub_181F8C728;
      v116 = v97;
      sub_181F73AE0(&v115, &v113, &v112, &v111);
      v1 = v103;

      v115 = sub_181F8C728;
      v116 = v94;
      sub_181F73AE0(&v115, &v113, &v112, &v111);

      v115 = sub_181F8C714;
      v116 = v41;
      sub_181F73AE0(&v115, &v113, &v112, &v111);

      v115 = sub_181F8C728;
      v116 = v91;
      sub_181F73AE0(&v115, &v113, &v112, &v111);

      v115 = sub_181F8C728;
      v116 = v88;
      sub_181F73AE0(&v115, &v113, &v112, &v111);

      v115 = sub_181F8C714;
      v116 = v43;
      sub_181F73AE0(&v115, &v113, &v112, &v111);

      v115 = sub_181F8C728;
      v116 = v44;
      sub_181F73AE0(&v115, &v113, &v112, &v111);

      v115 = sub_181F8C728;
      v116 = v45;
      sub_181F73AE0(&v115, &v113, &v112, &v111);

      v115 = sub_181F8C714;
      v116 = v47;
      sub_181F73AE0(&v115, &v113, &v112, &v111);

      _os_log_impl(&dword_181A37000, oslog, v100, "%s %s %s", buf, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v83, -1, -1);
      MEMORY[0x1865DF520](buf, -1, -1);
    }

    else
    {

      v1 = v103;
    }
  }

  else
  {
  }

  swift_beginAccess();
  if (*(v1 + 368) - 3 >= 4)
  {
    v7 = *(v1 + 56);
    v8 = *(v7 + 32);
    if (v8 >= a1)
    {
      if (!v6)
      {
        return;
      }

      v13 = *(v1 + 32);
      v12 = *(v1 + 40);
      v113 = 0;
      v114 = 0xE000000000000000;

      sub_182AD3BA8();

      v113 = 0xD000000000000010;
      v114 = 0x8000000182BD99C0;
      v112 = a1;
      v21 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v21);

      MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BD99E0);
      v112 = *(*(v1 + 56) + 32);
      v22 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v22);

      v17 = v113;
      v16 = v114;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v23 = sub_182AD2698();
      __swift_project_value_buffer(v23, qword_1EA843418);

      v19 = sub_182AD2678();
      v20 = sub_182AD38A8();
    }

    else
    {
      *(v7 + 32) = a1;
      if (v6)
      {
        v10 = *(v1 + 32);
        v9 = *(v1 + 40);

        if (__nwlog_is_datapath_logging_enabled())
        {
          v104 = v1;
          v113 = 0;
          v114 = 0xE000000000000000;
          sub_182AD3BA8();

          v113 = 0xD000000000000012;
          v114 = 0x8000000182BD9A20;
          v112 = a1;
          v49 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v49);

          MEMORY[0x1865D9CA0](0x20736177202CLL, 0xE600000000000000);
          v112 = v8;
          v50 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v50);

          v51 = v114;
          osloga = v113;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v52 = sub_182AD2698();
          __swift_project_value_buffer(v52, qword_1EA843418);
          v53 = swift_allocObject();
          *(v53 + 16) = "processIncomingMaxStreamData(remoteMaxStreamData:)";
          *(v53 + 24) = 50;
          *(v53 + 32) = 2;
          v54 = swift_allocObject();
          *(v54 + 16) = sub_181F8C724;
          *(v54 + 24) = v53;
          v55 = swift_allocObject();
          *(v55 + 16) = v10;
          *(v55 + 24) = v9;
          v56 = swift_allocObject();
          *(v56 + 16) = osloga;
          *(v56 + 24) = v51;

          v87 = sub_182AD2678();
          v57 = sub_182AD38A8();
          v92 = swift_allocObject();
          *(v92 + 16) = 32;
          v95 = swift_allocObject();
          *(v95 + 16) = 8;
          v58 = swift_allocObject();
          *(v58 + 16) = sub_181F8C71C;
          *(v58 + 24) = v54;
          v59 = swift_allocObject();
          *(v59 + 16) = sub_181F8C718;
          *(v59 + 24) = v58;
          v89 = swift_allocObject();
          *(v89 + 16) = 32;
          v98 = swift_allocObject();
          *(v98 + 16) = 8;
          v60 = swift_allocObject();
          *(v60 + 16) = sub_181F8C720;
          *(v60 + 24) = v55;
          v61 = swift_allocObject();
          *(v61 + 16) = sub_181F8C718;
          *(v61 + 24) = v60;
          v101 = swift_allocObject();
          *(v101 + 16) = 32;
          oslogb = swift_allocObject();
          LOBYTE(oslogb[2].isa) = 8;
          v62 = swift_allocObject();
          *(v62 + 16) = sub_181F8C720;
          *(v62 + 24) = v56;
          v63 = swift_allocObject();
          *(v63 + 16) = sub_181F8C718;
          *(v63 + 24) = v62;
          v86 = v57;
          if (os_log_type_enabled(v87, v57))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v110 = v65;
            v111 = 0;
            *v64 = 770;
            bufa = v65;
            v112 = v64 + 2;
            v113 = sub_181F8C728;
            v114 = v92;
            sub_181F73AE0(&v113, &v112, &v111, &v110);

            v113 = sub_181F8C728;
            v114 = v95;
            sub_181F73AE0(&v113, &v112, &v111, &v110);

            v113 = sub_181F8C714;
            v114 = v59;
            sub_181F73AE0(&v113, &v112, &v111, &v110);

            v113 = sub_181F8C728;
            v114 = v89;
            sub_181F73AE0(&v113, &v112, &v111, &v110);

            v113 = sub_181F8C728;
            v114 = v98;
            sub_181F73AE0(&v113, &v112, &v111, &v110);

            v113 = sub_181F8C714;
            v114 = v61;
            sub_181F73AE0(&v113, &v112, &v111, &v110);

            v113 = sub_181F8C728;
            v114 = v101;
            sub_181F73AE0(&v113, &v112, &v111, &v110);

            v113 = sub_181F8C728;
            v114 = oslogb;
            sub_181F73AE0(&v113, &v112, &v111, &v110);

            v113 = sub_181F8C714;
            v114 = v63;
            sub_181F73AE0(&v113, &v112, &v111, &v110);

            _os_log_impl(&dword_181A37000, v87, v86, "%s %s %s", v64, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](bufa, -1, -1);
            MEMORY[0x1865DF520](v64, -1, -1);
          }

          else
          {
          }

          v1 = v104;
        }

        else
        {
        }
      }

      v11 = *(*(v1 + 344) + 24);
      if ((v11 & 0x8000000000000000) != 0 || v11 < *(*(v1 + 56) + 32))
      {
        if ((*(v1 + 372) & 1) != 0 && v6)
        {
          v33 = *(v1 + 32);
          v32 = *(v1 + 40);

          if (__nwlog_is_datapath_logging_enabled())
          {
            v105 = v1;
            if (qword_1EA837248 != -1)
            {
              swift_once();
            }

            v66 = sub_182AD2698();
            __swift_project_value_buffer(v66, qword_1EA843418);
            v67 = swift_allocObject();
            *(v67 + 16) = "processIncomingMaxStreamData(remoteMaxStreamData:)";
            *(v67 + 24) = 50;
            *(v67 + 32) = 2;
            v68 = swift_allocObject();
            *(v68 + 16) = sub_181F8C724;
            *(v68 + 24) = v67;
            v69 = swift_allocObject();
            *(v69 + 16) = v33;
            *(v69 + 24) = v32;
            v70 = swift_allocObject();
            *(v70 + 16) = 0x656B636F6C626E75;
            *(v70 + 24) = 0xE900000000000064;

            v71 = sub_182AD2678();
            v72 = sub_182AD38A8();
            v93 = swift_allocObject();
            *(v93 + 16) = 32;
            v96 = swift_allocObject();
            *(v96 + 16) = 8;
            v73 = swift_allocObject();
            *(v73 + 16) = sub_181F8C71C;
            *(v73 + 24) = v68;
            v74 = swift_allocObject();
            *(v74 + 16) = sub_181F8C718;
            *(v74 + 24) = v73;
            v99 = swift_allocObject();
            *(v99 + 16) = 32;
            v102 = swift_allocObject();
            *(v102 + 16) = 8;
            v75 = swift_allocObject();
            *(v75 + 16) = sub_181F8C720;
            *(v75 + 24) = v69;
            v76 = swift_allocObject();
            *(v76 + 16) = sub_181F8C718;
            *(v76 + 24) = v75;
            v90 = swift_allocObject();
            *(v90 + 16) = 32;
            oslogc = swift_allocObject();
            LOBYTE(oslogc[2].isa) = 8;
            v77 = swift_allocObject();
            *(v77 + 16) = sub_181F8C720;
            *(v77 + 24) = v70;
            v78 = swift_allocObject();
            *(v78 + 16) = sub_181F8C718;
            *(v78 + 24) = v77;
            v79 = v72;
            v80 = v71;
            if (os_log_type_enabled(v71, v72))
            {
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v110 = v82;
              v111 = 0;
              *v81 = 770;
              v112 = v81 + 2;
              v113 = sub_181F8C728;
              v114 = v93;
              sub_181F73AE0(&v113, &v112, &v111, &v110);

              v113 = sub_181F8C728;
              v114 = v96;
              sub_181F73AE0(&v113, &v112, &v111, &v110);

              v113 = sub_181F8C714;
              v114 = v74;
              sub_181F73AE0(&v113, &v112, &v111, &v110);

              v113 = sub_181F8C728;
              v114 = v99;
              sub_181F73AE0(&v113, &v112, &v111, &v110);

              v113 = sub_181F8C728;
              v114 = v102;
              sub_181F73AE0(&v113, &v112, &v111, &v110);

              v113 = sub_181F8C714;
              v114 = v76;
              sub_181F73AE0(&v113, &v112, &v111, &v110);

              v113 = sub_181F8C728;
              v114 = v90;
              sub_181F73AE0(&v113, &v112, &v111, &v110);

              v113 = sub_181F8C728;
              v114 = oslogc;
              sub_181F73AE0(&v113, &v112, &v111, &v110);

              v113 = sub_181F8C714;
              v114 = v78;
              sub_181F73AE0(&v113, &v112, &v111, &v110);

              _os_log_impl(&dword_181A37000, v80, v79, "%s %s %s", v81, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1865DF520](v82, -1, -1);
              MEMORY[0x1865DF520](v81, -1, -1);
            }

            else
            {
            }

            v1 = v105;
          }

          else
          {
          }
        }

        v34 = *(v1 + 372);
        if (v34)
        {
          *(v1 + 372) = v34 & 0xFFFFFFFE;
        }

        return;
      }

      v13 = *(v1 + 32);
      v12 = *(v1 + 40);
      v113 = 0;
      v114 = 0xE000000000000000;

      sub_182AD3BA8();

      v113 = 0xD000000000000010;
      v114 = 0x8000000182BD99C0;
      v112 = a1;
      v14 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v14);

      MEMORY[0x1865D9CA0](0xD00000000000001ALL, 0x8000000182BD9A00);
      v112 = *(*(v1 + 344) + 24);
      v15 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v15);

      v17 = v113;
      v16 = v114;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v18 = sub_182AD2698();
      __swift_project_value_buffer(v18, qword_1EA843418);

      v19 = sub_182AD2678();
      v20 = sub_182AD38B8();
    }

    v24 = v20;

    if (os_log_type_enabled(v19, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v113 = v26;
      *v25 = 136315650;
      v27 = sub_182AD3BF8();
      v29 = sub_181C64FFC(v27, v28, &v113);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v30 = sub_181C64FFC(v13, v12, &v113);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2080;
      v31 = sub_181C64FFC(v17, v16, &v113);

      *(v25 + 24) = v31;
      _os_log_impl(&dword_181A37000, v19, v24, "%s %s %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v26, -1, -1);
      MEMORY[0x1865DF520](v25, -1, -1);
    }

    else
    {
    }
  }
}

double sub_182034418(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  return result;
}

uint64_t sub_182034444(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v6 || result < 0)
  {
    sub_182AD3BA8();

    v24 = 0x4F4C465245444E55;
    v25 = 0xEB00000000203A57;
    v8 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v8);

    MEMORY[0x1865D9CA0](0x656D657263656420, 0xEB0000000020746ELL);
    v9 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v9);

    MEMORY[0x1865D9CA0](0x20746C7573657220, 0xE800000000000000);
    if (a4)
    {
      v10 = 0xE300000000000000;
      v11 = 7104878;
    }

    else
    {
      sub_182034764();
      v11 = sub_182AD3A88();
      v10 = v12;
    }

    MEMORY[0x1865D9CA0](v11, v10);

    v14 = v24;
    v13 = v25;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v15 = sub_182AD2698();
    __swift_project_value_buffer(v15, qword_1EA843418);

    v16 = sub_182AD2678();
    v17 = sub_182AD38C8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315650;
      v20 = sub_182AD3BF8();
      v22 = sub_181C64FFC(v20, v21, &v24);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v24);
      *(v18 + 22) = 2080;
      v23 = sub_181C64FFC(v14, v13, &v24);

      *(v18 + 24) = v23;
      _os_log_impl(&dword_181A37000, v16, v17, "%s %s %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v19, -1, -1);
      MEMORY[0x1865DF520](v18, -1, -1);
    }

    else
    {
    }

    return a3;
  }

  return result;
}

unint64_t sub_182034764()
{
  result = qword_1EA83AE90;
  if (!qword_1EA83AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83AE90);
  }

  return result;
}

uint64_t sub_1820347B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!__OFADD__(a1, a2))
  {
    return a1 + a2;
  }

  v9 = a3;
  sub_182AD3BA8();

  v23 = 0x574F4C465245564FLL;
  v24 = 0xEA0000000000203ALL;
  v5 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v5);

  MEMORY[0x1865D9CA0](0x656D6572636E6920, 0xEB0000000020746ELL);
  v6 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v6);

  MEMORY[0x1865D9CA0](0x20746C7573657220, 0xE800000000000000);
  if (a4)
  {
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    sub_182034764();
    v8 = sub_182AD3A88();
    v7 = v10;
  }

  MEMORY[0x1865D9CA0](v8, v7);

  v12 = v23;
  v11 = v24;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v13 = sub_182AD2698();
  __swift_project_value_buffer(v13, qword_1EA843418);

  v14 = sub_182AD2678();
  v15 = sub_182AD38C8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315650;
    v18 = sub_182AD3BF8();
    v20 = sub_181C64FFC(v18, v19, &v23);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v23);
    *(v16 + 22) = 2080;
    v21 = sub_181C64FFC(v12, v11, &v23);

    *(v16 + 24) = v21;
    _os_log_impl(&dword_181A37000, v14, v15, "%s %s %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v17, -1, -1);
    MEMORY[0x1865DF520](v16, -1, -1);
  }

  else
  {
  }

  return v9;
}

id sub_182034AD4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 952);
  v3 = *(v1 + 936);
  v4 = *(v1 + 944);
  if (v2 == 6)
  {
    if (v3 | v4)
    {
      LOBYTE(v2) = 6;
    }

    else
    {
      *(v1 + 936) = v1;
      *(v1 + 944) = &off_1EEFB17F0;
      *(v1 + 952) = 3;
      v5 = a1;

      sub_181F68E5C(0, 0, 6u);
      a1 = v5;
      v3 = *(v1 + 936);
      v4 = *(v1 + 944);
      LOBYTE(v2) = *(v1 + 952);
    }
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v2;
  return sub_181F68EA8(v3, v4, v2);
}

uint64_t sub_182034B64()
{
  v1 = v0;
  type metadata accessor for SwiftTLSProtocol.SwiftTLSInstance();
  swift_allocObject();
  *(v0 + 16) = SwiftTLSProtocol.SwiftTLSInstance.init()();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = 6;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 6;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 6;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 6;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 6;
  type metadata accessor for ReassemblyQueue();
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0x7FFFFFFFFFFFFFFFLL;
  *(v2 + 56) = 1;
  v3 = sub_182AD2388();
  *(v2 + 64) = *v3;
  *(v1 + 184) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0x7FFFFFFFFFFFFFFFLL;
  *(v4 + 56) = 1;
  *(v4 + 64) = *v3;
  *(v1 + 192) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0x7FFFFFFFFFFFFFFFLL;
  *(v5 + 56) = 1;
  *(v5 + 64) = *v3;
  *(v1 + 200) = v5;

  FrameArray.init()(v1 + 208);
  FrameArray.init()(v1 + 440);
  FrameArray.init()(v1 + 672);
  *(v1 + 920) = 0;
  *(v1 + 904) = 0u;
  *(v1 + 928) = 6;
  *(v1 + 936) = 0u;
  *(v1 + 952) = 6;
  *(v1 + 960) = *v3;

  return v1;
}

uint64_t sub_182034CF8(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  *(v3 + 56) = a1;

  v6 = sub_182AD29C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  v39 = a2[2];
  v40 = v10;
  v41 = *(a2 + 8);
  v11 = a2[1];
  v37 = *a2;
  v38 = v11;

  sub_182070AB4();
  swift_beginAccess();
  v12 = *(a1 + 288);

  sub_1822CDE98(0, v12);

  sub_182AD2988();
  v13 = _s7Network16SwiftTLSProtocolV7optionsAA15ProtocolOptionsCyACGyFZ_0();
  *(v3 + 24) = v13;

  sub_1820350CC(0x6F7470797243, 0xE600000000000000, 49, 0xE100000000000000, 1);
  v14 = *(v3 + 16);
  v15 = v13[6];
  v16 = v13[7];
  v13[6] = v14;
  v13[7] = 0x60000001EEFD6190uLL;
  swift_retain_n();
  sub_181AAD250(v15, v16);

  v17 = (v13 + *(*v13 + 128));
  swift_beginAccess();
  if (*v17 != 1)
  {
    *v17 = v3;
    v17[1] = &off_1EEFB17B0;

    swift_unknownObjectRelease();
  }

  swift_endAccess();
  v18 = swift_beginAccess();
  if (*v17 != 1)
  {
    v19 = MEMORY[0x1EEE9AC00](v18);
    v20 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v20, v9, v6, v19);
    sub_182070CF4(v20);
  }

  swift_endAccess();
  v34 = v14;
  v35 = 0x60000001EEFD6190;

  v21 = sub_18203520C(&v34);
  sub_181F749D0(v14, 0x60000001EEFD6190uLL);
  if (v21 & 1) != 0 && (v34 = v3, v35 = 0x60000001EEFB16F0, , v22 = sub_182292CF0(&v34), sub_181F749D0(v34, v35), (v22))
  {
    v23 = *(v3 + 72);
    v24 = *(v3 + 80);
    v34 = *(v3 + 64);
    v35 = v23;
    v36 = v24;
    v26 = *(v3 + 920);
    v27 = *(v3 + 928);
    v31 = *(v3 + 912);
    v25 = v31;
    v32 = v26;
    v33 = v27;
    sub_181F68EA8(v34, v23, v24);
    sub_181F68EA8(v25, v26, v27);
    v28 = OutputHandlerLinkage.invokeConnect(_:)(&v31);

    sub_181F68E5C(v31, v32, v33);
    sub_181F68E5C(v34, v35, v36);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v7 + 8))(v9, v6);

    v28 = 0;
  }

  *(v3 + 24) = 0;

  return v28 & 1;
}

uint64_t sub_1820350CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = v5 + *(*v5 + 160);
  swift_beginAccess();
  *v12 = a5;
  *(v12 + 8) = 0;
  MEMORY[0x1865D9CA0](a1, a2);
  MEMORY[0x1865D9CA0](a3, a4);
  MEMORY[0x1865D9CA0](58, 0xE100000000000000);
  v13 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v13);

  MEMORY[0x1865D9CA0](93, 0xE100000000000000);
  v14 = (v6 + *(*v6 + 168));
  swift_beginAccess();
  *v14 = 91;
  v14[1] = 0xE100000000000000;
}

uint64_t sub_18203520C(uint64_t *a1)
{
  if (*(v1 + 928) != 6)
  {
    return 0;
  }

  if (*(v1 + 912) != 0)
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  *(v1 + 912) = v1;
  *(v1 + 920) = &off_1EEFB1770;
  *(v1 + 928) = 3;

  sub_181F68E5C(0, 0, 6u);
  v14 = v3;
  v15 = v4;
  v5 = *(v1 + 920);
  v6 = *(v1 + 928);
  v11 = *(v1 + 912);
  v12 = v5;
  v13 = v6;
  sub_181F68EA8(v11, v5, v6);
  sub_181F70FF8(&v11, &v16);
  sub_181F68E5C(v11, v12, v13);
  v7 = v17;
  if (v17 == 255)
  {
    return 0;
  }

  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  *(v1 + 64) = v16;
  v10 = *(v1 + 80);
  *(v1 + 80) = v7;
  sub_181F68E5C(v8, v9, v10);
  return 1;
}

void sub_1820352F4()
{
  if (*(v0 + 56))
  {
    *(v0 + 56) = 0;

    v1 = *(v0 + 920);
    v2 = *(v0 + 928);
    *&v12 = *(v0 + 912);
    *(&v12 + 1) = v1;
    v13 = v2;
    sub_181F68EA8(v12, v1, v2);
    sub_1822935B8(&v12, 1);
    sub_181F68E5C(v12, *(&v12 + 1), v13);
    v3 = *(v0 + 936);
    v4 = *(v0 + 944);
    *(v0 + 936) = 0u;
    v5 = *(v0 + 952);
    *(v0 + 952) = 6;
    sub_181F68E5C(v3, v4, v5);
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    *(v0 + 64) = 0u;
    v8 = *(v0 + 80);
    *(v0 + 80) = 6;
    sub_181F68E5C(v6, v7, v8);
    v9 = *(v0 + 912);
    v10 = *(v0 + 920);
    *(v0 + 912) = 0u;
    v11 = *(v0 + 928);
    *(v0 + 928) = 6;
    sub_181F68E5C(v9, v10, v11);
  }
}

uint64_t sub_1820353C4(uint64_t result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v7 = v4[7];
  if (v7)
  {
    v8 = a4 < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return result;
  }

  v9 = result;
  if (result)
  {
    if (result != 1)
    {
      goto LABEL_13;
    }

    v11 = v4[6];
    v4 += 6;
    v10 = v11;
    v12 = v11 + a4;
    if (!__OFADD__(v11, a4))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v13 = v4[4];
  v4 += 4;
  v10 = v13;
  v12 = v13 + a4;
  if (!__OFADD__(v13, a4))
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  v14 = v4[5];
  v4 += 5;
  v10 = v14;
  v12 = v14 + a4;
  if (__OFADD__(v14, a4))
  {
    __break(1u);
    return result;
  }

LABEL_14:
  *v4 = v12;
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = sub_181AC1C5C(a2, a3);
  v4 = *(v7[37] + 32);
  if (!v4[2])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = v15;
  v16 = sub_18224EF74(v9);
  if ((v17 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = *(v4[7] + 8 * v16);
  swift_beginAccess();
  v6 = v4[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[2] = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_32:
    v6 = sub_181F59790(0, *(v6 + 2) + 1, 1, v6);
    v4[2] = v6;
  }

  v20 = *(v6 + 2);
  v19 = *(v6 + 3);
  if (v20 >= v19 >> 1)
  {
    v6 = sub_181F59790((v19 > 1), v20 + 1, 1, v6);
  }

  *(v6 + 2) = v20 + 1;
  v21 = &v6[80 * v20];
  *(v21 + 4) = 6;
  *(v21 + 5) = (v9 << 8) | 0x3000000000000002;
  *(v21 + 6) = v10;
  *(v21 + 7) = v5;
  v4[2] = v6;
  swift_endAccess();

  if (!v7[119] || (v22 = , v23 = sub_182047340(v22, 0, 0), , (v23 & 1) == 0))
  {
    v25 = v7[10];
    v24 = v7[11];
    v26 = qword_1EA837248;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_182AD2698();
    __swift_project_value_buffer(v27, qword_1EA843418);

    v28 = sub_182AD2678();
    v29 = sub_182AD38B8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36[0] = v31;
      *v30 = 136315650;
      v32 = sub_182AD3BF8();
      v34 = sub_181C64FFC(v32, v33, v36);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = sub_181C64FFC(v25, v24, v36);

      *(v30 + 14) = v35;
      *(v30 + 22) = 2080;
      *(v30 + 24) = sub_181C64FFC(0xD00000000000001CLL, 0x8000000182BD9F20, v36);
      _os_log_impl(&dword_181A37000, v28, v29, "%s %s %s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v31, -1, -1);
      MEMORY[0x1865DF520](v30, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_18203576C()
{

  sub_181F68E5C(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));
  sub_181F68E5C(*(v0 + 136), *(v0 + 144), *(v0 + 152));
  sub_181F68E5C(*(v0 + 160), *(v0 + 168), *(v0 + 176));

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  v8 = *(v0 + 352);
  v9 = *(v0 + 368);

  if (v7 != 2 || v6 | v5)
  {
    sub_181F68EF4(v1, v2, v3, v4);

    sub_181F68F3C(v5, v6, v7);
    __break(1u);
LABEL_24:
    sub_181F68EF4(v1, v2, v3, v4);

    sub_181F68F3C(v5, v6, v7);
    __break(1u);
LABEL_25:
    sub_181F68EF4(v1, v2, v3, v4);

    result = sub_181F68F3C(v5, v6, v7);
    __break(1u);
    return result;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    MEMORY[0x1865DF520](v8, -1, -1);
  }

  sub_181F68EF4(v1, v2, v3, v4);

  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v4 = *(v0 + 464);
  v5 = *(v0 + 472);
  v6 = *(v0 + 480);
  v7 = *(v0 + 488);
  v11 = *(v0 + 584);
  v12 = *(v0 + 600);

  if (v7 != 2 || v6 | v5)
  {
    goto LABEL_24;
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    MEMORY[0x1865DF520](v11, -1, -1);
  }

  sub_181F68EF4(v1, v2, v3, v4);

  v1 = *(v0 + 672);
  v2 = *(v0 + 680);
  v3 = *(v0 + 688);
  v4 = *(v0 + 696);
  v5 = *(v0 + 704);
  v6 = *(v0 + 712);
  v7 = *(v0 + 720);
  v14 = *(v0 + 816);
  v15 = *(v0 + 832);

  if (v7 != 2 || v6 | v5)
  {
    goto LABEL_25;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    MEMORY[0x1865DF520](v14, -1, -1);
  }

  sub_181F68EF4(v1, v2, v3, v4);

  sub_181F68E5C(*(v0 + 912), *(v0 + 920), *(v0 + 928));
  sub_181F68E5C(*(v0 + 936), *(v0 + 944), *(v0 + 952));

  return v0;
}

uint64_t sub_182035A3C()
{
  sub_18203576C();

  return swift_deallocClassInstance();
}

void sub_182035AA4(uint64_t a1, int a2, int a3)
{
  v42 = a1;
  v6 = sub_182AD2B78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 56);
  if (!v10)
  {
    return;
  }

  v11 = *(v10 + 80);
  v12 = *(v10 + 88);
  v13 = qword_1EA837250;

  if (v13 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 != 1)
  {

    if (!*(v3 + 56))
    {
      return;
    }

    goto LABEL_19;
  }

  v38 = v11;
  v39 = v6;
  v41 = v3;
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_182AD3BA8();

  v43 = 544501575;
  v44 = 0xE400000000000000;
  if (a3)
  {
    v14 = 0x6574697277;
  }

  else
  {
    v14 = 1684104562;
  }

  if (a3)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x1865D9CA0](v14, v15);

  MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BD9F90);
  v40 = a2;
  v16 = sub_182AD28C8();
  MEMORY[0x1865D9CA0](v16);

  v17 = v43;
  v18 = v44;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v19 = sub_182AD2698();
  __swift_project_value_buffer(v19, qword_1EA843418);

  v20 = sub_182AD2678();
  v21 = sub_182AD38A8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = v21;
    v23 = v22;
    v37 = swift_slowAlloc();
    v43 = v37;
    *v23 = 136315650;
    v24 = sub_182AD3BF8();
    v35 = v17;
    v26 = v9;
    v27 = a3;
    v28 = v7;
    v29 = sub_181C64FFC(v24, v25, &v43);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    v30 = sub_181C64FFC(v38, v12, &v43);

    *(v23 + 14) = v30;
    *(v23 + 22) = 2080;
    v7 = v28;
    a3 = v27;
    v9 = v26;
    v31 = sub_181C64FFC(v35, v18, &v43);

    *(v23 + 24) = v31;
    _os_log_impl(&dword_181A37000, v20, v36, "%s %s %s", v23, 0x20u);
    v32 = v37;
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v32, -1, -1);
    MEMORY[0x1865DF520](v23, -1, -1);
  }

  else
  {
  }

  v3 = v41;
  a2 = v40;
  v6 = v39;
  if (*(v41 + 56))
  {
LABEL_19:
    v33 = *(v3 + 904);
    v34 = v33 - 1;
    if ((v33 - 4865) <= 2)
    {
      v43 = v42;

      LODWORD(v42) = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
      sub_181AB3DCC(&qword_1EA838C88, &qword_1EA838C80);
      sub_182AD2B58();
      sub_182234C94(a2, v34, v9, v42 & 1);

      (*(v7 + 8))(v9, v6);
      if (sub_182AD28D8())
      {
        sub_18203A114();
      }
    }
  }
}

uint64_t sub_182035F70(uint64_t result)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = result;
    v5 = *(v2 + 80);
    v4 = *(v2 + 88);
    v6 = qword_1EA837250;

    if (v6 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      sub_182AD3BA8();

      v19[1] = 0x8000000182BD9EC0;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80);
      v8 = MEMORY[0x1865D9F40](v3, v7);
      MEMORY[0x1865D9CA0](v8);

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v9 = sub_182AD2698();
      __swift_project_value_buffer(v9, qword_1EA843418);

      v10 = sub_182AD2678();
      v11 = sub_182AD38A8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19[0] = v18;
        *v12 = 136315650;
        v13 = sub_182AD3BF8();
        v15 = sub_181C64FFC(v13, v14, v19);

        *(v12 + 4) = v15;
        *(v12 + 12) = 2080;
        v16 = sub_181C64FFC(v5, v4, v19);

        *(v12 + 14) = v16;
        *(v12 + 22) = 2080;
        v17 = sub_181C64FFC(0xD000000000000015, 0x8000000182BD9EC0, v19);

        *(v12 + 24) = v17;
        _os_log_impl(&dword_181A37000, v10, v11, "%s %s %s", v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v18, -1, -1);
        MEMORY[0x1865DF520](v12, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_182036268(char *a1)
{
  v3 = v1;
  v5 = *(v1 + 56);
  if (v5)
  {
    v7 = *(v5 + 80);
    v6 = *(v5 + 88);
    v8 = qword_1EA837250;

    if (v8 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      v45 = v1;
      sub_182AD3BA8();

      v47 = 0xD000000000000024;
      v48 = 0x8000000182BD9E30;
      v9 = MEMORY[0x1865D9F40](a1, MEMORY[0x1E69E7508]);
      MEMORY[0x1865D9CA0](v9);

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v10 = sub_182AD2698();
      __swift_project_value_buffer(v10, qword_1EA843418);

      v11 = sub_182AD2678();
      v12 = sub_182AD38A8();

      if (os_log_type_enabled(v11, v12))
      {
        v41 = v7;
        v13 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v47 = v43;
        *v13 = 136315650;
        v14 = sub_182AD3BF8();
        v16 = sub_181C64FFC(v14, v15, &v47);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2080;
        v17 = sub_181C64FFC(v41, v6, &v47);

        *(v13 + 14) = v17;
        *(v13 + 22) = 2080;
        v18 = sub_181C64FFC(0xD000000000000024, 0x8000000182BD9E30, &v47);

        *(v13 + 24) = v18;
        _os_log_impl(&dword_181A37000, v11, v12, "%s %s %s", v13, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v43, -1, -1);
        MEMORY[0x1865DF520](v13, -1, -1);
      }

      else
      {
      }

      v3 = v45;
    }

    else
    {
    }
  }

  v52 = a1;

  v21 = sub_1822D1530(&v52);
  if (!v2)
  {

    if (!*(v3 + 56))
    {
    }

    sub_18203A1F4(v21);
  }

  v22 = v19;
  v23 = v20;

  v24 = *(v3 + 56);
  if (!v24)
  {
    result = sub_18202232C(v21, v22, v23);
    if (!*(v3 + 56))
    {
      return result;
    }

    goto LABEL_24;
  }

  v25 = *(v24 + 80);
  v26 = *(v24 + 88);
  v47 = 0;
  v48 = 0xE000000000000000;

  sub_182AD3BA8();
  v50 = v47;
  v51 = v48;
  MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD9E00);
  v47 = v21;
  v48 = v22;
  v49 = v23;
  sub_182AD3E18();
  sub_18202232C(v21, v22, v23);
  v28 = v50;
  v27 = v51;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v29 = sub_182AD2698();
  __swift_project_value_buffer(v29, qword_1EA843418);

  v30 = sub_182AD2678();
  v31 = sub_182AD38B8();

  if (os_log_type_enabled(v30, v31))
  {
    v46 = v3;
    v32 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v32 = 136315650;
    v33 = sub_182AD3BF8();
    v42 = v28;
    v35 = v25;
    v36 = sub_181C64FFC(v33, v34, &v47);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v37 = sub_181C64FFC(v35, v26, &v47);

    *(v32 + 14) = v37;
    *(v32 + 22) = 2080;
    v38 = sub_181C64FFC(v42, v27, &v47);

    *(v32 + 24) = v38;
    _os_log_impl(&dword_181A37000, v30, v31, "%s %s %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v44, -1, -1);
    v39 = v32;
    v3 = v46;
    MEMORY[0x1865DF520](v39, -1, -1);
  }

  else
  {
  }

  if (*(v3 + 56))
  {
LABEL_24:

    sub_18203ADF4();
  }

  return result;
}

uint64_t sub_1820368AC(uint64_t result)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = result;
    v5 = *(v2 + 80);
    v4 = *(v2 + 88);
    v6 = qword_1EA837250;

    if (v6 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      sub_182AD3BA8();

      v21 = 0xD000000000000019;
      v22 = 0x8000000182BD9E80;
      if (v3)
      {
        v7 = 1702195828;
      }

      else
      {
        v7 = 0x65736C6166;
      }

      if (v3)
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      MEMORY[0x1865D9CA0](v7, v8);

      v10 = v21;
      v9 = v22;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v11 = sub_182AD2698();
      __swift_project_value_buffer(v11, qword_1EA843418);

      v12 = sub_182AD2678();
      v13 = sub_182AD38A8();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = v20;
        *v14 = 136315650;
        v15 = sub_182AD3BF8();
        v17 = sub_181C64FFC(v15, v16, &v21);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2080;
        v18 = sub_181C64FFC(v5, v4, &v21);

        *(v14 + 14) = v18;
        *(v14 + 22) = 2080;
        v19 = sub_181C64FFC(v10, v9, &v21);

        *(v14 + 24) = v19;
        _os_log_impl(&dword_181A37000, v12, v13, "%s %s %s", v14, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v20, -1, -1);
        MEMORY[0x1865DF520](v14, -1, -1);
      }
    }
  }

  return result;
}

uint64_t sub_182036BAC(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 56);
  if (v3)
  {
    v5 = *(v3 + 80);
    v4 = *(v3 + 88);
    v6 = qword_1EA837250;

    if (v6 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      v18 = v1;
      sub_182AD3BA8();

      v19[0] = 0xD00000000000001CLL;
      v19[1] = 0x8000000182BD9FD0;
      v7 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v7);

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v8 = sub_182AD2698();
      __swift_project_value_buffer(v8, qword_1EA843418);

      v9 = sub_182AD2678();
      v10 = sub_182AD38A8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v19[0] = v17;
        *v11 = 136315650;
        v12 = sub_182AD3BF8();
        v14 = sub_181C64FFC(v12, v13, v19);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2080;
        v15 = sub_181C64FFC(v5, v4, v19);

        *(v11 + 14) = v15;
        *(v11 + 22) = 2080;
        v16 = sub_181C64FFC(0xD00000000000001CLL, 0x8000000182BD9FD0, v19);

        *(v11 + 24) = v16;
        _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v17, -1, -1);
        MEMORY[0x1865DF520](v11, -1, -1);
      }

      else
      {
      }

      v1 = v18;
    }

    else
    {
    }
  }

  *(v1 + 904) = v2;
  return result;
}

void sub_182036E98()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = v0;
    v4 = *(v1 + 80);
    v3 = *(v1 + 88);
    v5 = qword_1EA837248;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843418);

    v7 = sub_182AD2678();
    v8 = sub_182AD3898();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315650;
      v11 = sub_182AD3BF8();
      v13 = sub_181C64FFC(v11, v12, &v15);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      v14 = sub_181C64FFC(v4, v3, &v15);

      *(v9 + 14) = v14;
      *(v9 + 22) = 2080;
      *(v9 + 24) = sub_181C64FFC(0xD000000000000017, 0x8000000182BD9F50, &v15);
      _os_log_impl(&dword_181A37000, v7, v8, "%s %s %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v10, -1, -1);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    else
    {
    }

    if (*(v2 + 56))
    {

      sub_18203B62C();
    }
  }
}

void *sub_1820370EC@<X0>(void *a1@<X8>)
{
  Parameters.init(noInternetProtocol:)(0, __src);
  v3 = *(v1 + 56);
  if (v3)
  {
    Parameters.server.setter(*(v3 + 1024));
  }

  if (*(v1 + 24))
  {
    v7[0] = *(v1 + 24);
    v7[1] = sub_181AB3DCC(&qword_1EA839BD0, &qword_1EA839BD8) | 0x4000000000000000;
    swift_retain_n();
    sub_181B2A5BC(v7);
    sub_181AAD084(v7[0], v7[1]);
  }

  memcpy(v5, __src, sizeof(v5));
  memcpy(__dst, __src, sizeof(__dst));
  sub_181F481DC(v5, v7);
  sub_181F48214(__dst);
  memcpy(v7, v5, sizeof(v7));
  nullsub_41(v7);
  return memcpy(a1, v7, 0x188uLL);
}

void sub_18203720C(uint64_t a1, uint8_t *a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = 0;
  v95 = *MEMORY[0x1E69E9840];
  v78 = v2 + 46;
  v86[0] = 0;
  v86[1] = 0;
  v87 = 0;
  v88 = MEMORY[0x1E69E7CC0];
  v7 = (v2 + 23);
  v8 = (v2 + 111);
  v71 = v2 + 105;
  v72 = v2 + 102;
  v69 = v2 + 96;
  v70 = v2 + 91;
  v73 = (v2 + 82);
  v67 = v2 + 76;
  v68 = v2 + 73;
  v66 = v2 + 67;
  v76 = a1;
  v77 = (v2 + 23);
  v75 = (v2 + 111);
  while (1)
  {

    v10 = sub_1820E99EC(v4, v86);

    v11 = v88;
    if ((v10 & 1) == 0)
    {
      break;
    }

    LOBYTE(v92) = 1;
    v12 = *(v88 + 16);
    v13 = swift_slowAlloc();
    memmove(v13, (v11 + 32), *(v11 + 16));
    v14 = v92;
    v6 = 1;
    v15 = 1;
    if (v5)
    {
      if (v5 == 1)
      {
        v83 = v92;
        swift_beginAccess();
        if (*(v3 + 664) != 1)
        {
          v4 = v8;
          v8 = v13;
          v14 = v73;
          if (!*v73)
          {
            *v73 = *sub_182AD2388();
          }

          type metadata accessor for FrameArrayEntry();
          v25 = swift_allocObject();
          swift_beginAccess();
          *(v25 + 16) = v8;
          *(v25 + 24) = v12;
          *(v25 + 32) = 0;
          *(v25 + 40) = 0;
          *(v25 + 48) = xmmword_182AE69F0;
          *(v25 + 64) = 2;
          *(v25 + 72) = 0;
          *(v25 + 80) = 0;
          *(v25 + 88) = v12;
          *(v25 + 96) = 0;
          *(v25 + 104) = 0;
          *(v25 + 112) = 0u;
          *(v25 + 128) = 0u;
          *(v25 + 144) = 0;
          *(v25 + 152) = 2;
          *(v25 + 156) = v83;
          *(v25 + 160) = 0;
          *(v25 + 168) = 0;
          *(v25 + 176) = 1;
          *(v25 + 184) = 0;
          *(v25 + 192) = 0;
          *(v25 + 208) = 0;
          *(v25 + 200) = 0;
          *(v25 + 209) = 1;
          *(v25 + 216) = 0;
          *(v25 + 224) = -1;
          v26 = *(*v73 + 24);
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_103;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = *v73;
          if (*(*v73 + 16) < v27 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_181F461F8(isUniquelyReferenced_nonNull_native, v27);
            v29 = *v73;
          }

          v30 = v29[3];
          v31 = v29[4];
          v34 = __OFADD__(v31, v30);
          v32 = v31 + v30;
          if (v34)
          {
            goto LABEL_107;
          }

          v8 = v4;
          if (v30 < 0)
          {
            v4 = a2;
            if (v32 < 0)
            {
              v57 = v29[2];
              v34 = __OFADD__(v32, v57);
              v32 += v57;
              if (v34)
              {
                __break(1u);
                break;
              }
            }
          }

          else
          {
            v33 = v29[2];
            v34 = __OFSUB__(v32, v33);
            v35 = v32 - v33;
            v4 = a2;
            if (v35 < 0 == v34)
            {
              v32 = v35;
              if (v34)
              {
                goto LABEL_111;
              }
            }
          }

          v29[v32 + 5] = v25;
          v34 = __OFADD__(v30, 1);
          v9 = v30 + 1;
          if (v34)
          {
            goto LABEL_108;
          }

          goto LABEL_4;
        }

        v80 = v13;
        v5 = v3[56];
        v7 = v3[57];
        v8 = *(v3 + 464);
        v14 = v3[59];
        v15 = v3[60];
        LODWORD(v4) = *(v3 + 488);
        v16 = v3[73];
        v17 = *(v78 + 232);
        v74 = v3[55];

        if (v4 != 2 || v15 | v14)
        {
          goto LABEL_116;
        }

        if (v16)
        {
          v18 = v17;
        }

        else
        {
          v18 = 1;
        }

        v4 = a2;
        if ((v18 & 1) == 0)
        {
          MEMORY[0x1865DF520](v16, -1, -1);
        }

        sub_181F68EF4(v74, v5, v7, v8);

        v3[55] = v80;
        v3[56] = v12;
        v3[57] = 0;
        *(v3 + 464) = 0;
        *(v78 + 13) = xmmword_182AE69F0;
        *(v3 + 488) = 2;
        v3[62] = 0;
        v3[63] = 0;
        v3[64] = v12;
        v3[65] = 0;
        *(v3 + 528) = 0;
        *v66 = 0u;
        *(v66 + 1) = 0u;
        v66[4] = 0;
        *(v3 + 144) = 2;
        *(v3 + 580) = v83;
        *v68 = 0;
        v68[1] = 0;
        *(v3 + 600) = 1;
        *v67 = 0;
        v67[1] = 0;
        *(v67 + 24) = 0;
        v67[2] = 0;
        *(v3 + 633) = 1;
        *(v3 + 634) = 0;
        v3[80] = 0;
        *(v3 + 648) = -1;
        v3[82] = 0;
        *(v3 + 664) = 0;
      }

      else
      {
        swift_beginAccess();
        if (*(v3 + 896) != 1)
        {
          v7 = v4;
          v4 = v8;
          v8 = v13;
          if (!*v4)
          {
            *v4 = *sub_182AD2388();
          }

          type metadata accessor for FrameArrayEntry();
          v45 = swift_allocObject();
          swift_beginAccess();
          *(v45 + 16) = v8;
          *(v45 + 24) = v12;
          *(v45 + 32) = 0;
          *(v45 + 40) = 0;
          *(v45 + 48) = xmmword_182AE69F0;
          *(v45 + 64) = 2;
          *(v45 + 72) = 0;
          *(v45 + 80) = 0;
          *(v45 + 88) = v12;
          *(v45 + 96) = 0;
          *(v45 + 104) = 0;
          *(v45 + 112) = 0u;
          *(v45 + 128) = 0u;
          *(v45 + 144) = 0;
          *(v45 + 152) = 2;
          *(v45 + 156) = v14;
          *(v45 + 160) = 0;
          *(v45 + 168) = 0;
          *(v45 + 176) = 1;
          *(v45 + 184) = 0;
          *(v45 + 192) = 0;
          *(v45 + 208) = 0;
          *(v45 + 200) = 0;
          *(v45 + 209) = 1;
          *(v45 + 216) = 0;
          *(v45 + 224) = -1;
          v46 = *(*v4 + 24);
          v47 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            __break(1u);
LABEL_103:
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
            sub_181F68EF4(v74, v5, v7, v8);

            sub_181F68F3C(v14, v15, v4);
            __break(1u);
LABEL_117:
            sub_181F68EF4(v7, v8, v74, v5);

            sub_181F68F3C(v14, v15, v4);
            __break(1u);
LABEL_118:
            sub_181F68EF4(v74, v5, v7, v8);

            sub_181F68F3C(v15, v14, v4);
            __break(1u);
          }

          v8 = v4;
          v48 = swift_isUniquelyReferenced_nonNull_native();
          v29 = *v4;
          if (*(*v4 + 16) < v47 || (v48 & 1) == 0)
          {
            sub_181F461F8(v48, v47);
            v29 = *v4;
          }

          v49 = v29[3];
          v50 = v29[4];
          v34 = __OFADD__(v50, v49);
          v51 = v50 + v49;
          if (v34)
          {
            goto LABEL_106;
          }

          v4 = v7;
          if (v49 < 0)
          {
            v7 = v77;
            if (v51 < 0)
            {
              v56 = v29[2];
              v34 = __OFADD__(v51, v56);
              v51 += v56;
              if (v34)
              {
                goto LABEL_114;
              }
            }
          }

          else
          {
            v52 = v29[2];
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v7 = v77;
            if (v54 < 0 == v53)
            {
              v51 = v54;
              if (v53)
              {
                goto LABEL_113;
              }
            }
          }

          v29[v51 + 5] = v45;
          v34 = __OFADD__(v49, 1);
          v9 = v49 + 1;
          if (v34)
          {
            goto LABEL_110;
          }

          goto LABEL_4;
        }

        v82 = v13;
        v85 = v14;
        v5 = v3[85];
        v7 = v3[86];
        LOBYTE(v8) = *(v3 + 696);
        v15 = v3[88];
        v14 = v3[89];
        LODWORD(v4) = *(v3 + 720);
        v22 = v3[102];
        v23 = *(v3 + 832);
        v74 = v3[84];

        if (v4 != 2 || v14 | v15)
        {
          goto LABEL_118;
        }

        if (v22)
        {
          v24 = v23;
        }

        else
        {
          v24 = 1;
        }

        v4 = a2;
        if ((v24 & 1) == 0)
        {
          MEMORY[0x1865DF520](v22, -1, -1);
        }

        sub_181F68EF4(v74, v5, v7, v8);

        v3[84] = v82;
        v3[85] = v12;
        v3[86] = 0;
        *(v3 + 696) = 0;
        *(v3 + 44) = xmmword_182AE69F0;
        *(v3 + 720) = 2;
        *v70 = 0;
        v70[1] = 0;
        v3[93] = v12;
        v3[94] = 0;
        *(v3 + 760) = 0;
        *v69 = 0u;
        *(v69 + 1) = 0u;
        v69[4] = 0;
        *(v3 + 202) = 2;
        *(v3 + 812) = v85;
        *v72 = 0;
        v72[1] = 0;
        *(v3 + 832) = 1;
        *v71 = 0;
        v71[1] = 0;
        *(v71 + 24) = 0;
        v71[2] = 0;
        *(v3 + 865) = 1;
        *(v3 + 866) = 0;
        v3[109] = 0;
        *(v3 + 880) = -1;
        v3[111] = 0;
        *(v3 + 896) = 0;
      }

      v5 = v76;
    }

    else
    {
      swift_beginAccess();
      if (*(v78 + 64) != 1)
      {
        v4 = v8;
        v8 = v13;
        if (!v3[53])
        {
          v3[53] = *sub_182AD2388();
        }

        type metadata accessor for FrameArrayEntry();
        v36 = swift_allocObject();
        swift_beginAccess();
        *(v36 + 16) = v8;
        *(v36 + 24) = v12;
        *(v36 + 32) = 0;
        *(v36 + 40) = 0;
        *(v36 + 48) = xmmword_182AE69F0;
        *(v36 + 64) = 2;
        *(v36 + 72) = 0;
        *(v36 + 80) = 0;
        *(v36 + 88) = v12;
        *(v36 + 96) = 0;
        *(v36 + 104) = 0;
        *(v36 + 112) = 0u;
        *(v36 + 128) = 0u;
        *(v36 + 144) = 0;
        *(v36 + 152) = 2;
        *(v36 + 156) = v14;
        *(v36 + 160) = 0;
        *(v36 + 168) = 0;
        *(v36 + 176) = 1;
        *(v36 + 184) = 0;
        *(v36 + 192) = 0;
        *(v36 + 208) = 0;
        *(v36 + 200) = 0;
        *(v36 + 209) = 1;
        *(v36 + 216) = 0;
        *(v36 + 224) = -1;
        v37 = *(v3[53] + 24);
        v14 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_104;
        }

        v38 = swift_isUniquelyReferenced_nonNull_native();
        v29 = v3[53];
        if (v29[2] < v14 || (v38 & 1) == 0)
        {
          sub_181F461F8(v38, v14);
          v29 = v3[53];
        }

        v39 = v29[3];
        v40 = v29[4];
        v34 = __OFADD__(v40, v39);
        v41 = v40 + v39;
        if (v34)
        {
          goto LABEL_105;
        }

        v8 = v4;
        if (v39 < 0)
        {
          v4 = a2;
          if (v41 < 0)
          {
            v55 = v29[2];
            v34 = __OFADD__(v41, v55);
            v41 += v55;
            if (v34)
            {
              goto LABEL_115;
            }
          }
        }

        else
        {
          v42 = v29[2];
          v43 = __OFSUB__(v41, v42);
          v44 = v41 - v42;
          v4 = a2;
          if (v44 < 0 == v43)
          {
            v41 = v44;
            if (v43)
            {
              goto LABEL_112;
            }
          }
        }

        v29[v41 + 5] = v36;
        v34 = __OFADD__(v39, 1);
        v9 = v39 + 1;
        if (v34)
        {
          goto LABEL_109;
        }

LABEL_4:
        v29[3] = v9;
        goto LABEL_5;
      }

      v81 = v13;
      v84 = v14;
      v7 = v3[26];
      v8 = v3[27];
      v5 = *(v3 + 232);
      v14 = v3[30];
      v15 = v3[31];
      LODWORD(v4) = *(v3 + 256);
      v19 = v3[44];
      v20 = *v78;
      v74 = v3[28];

      if (v4 != 2 || v15 | v14)
      {
        goto LABEL_117;
      }

      if (v19)
      {
        v21 = v20;
      }

      else
      {
        v21 = 1;
      }

      if ((v21 & 1) == 0)
      {
        MEMORY[0x1865DF520](v19, -1, -1);
      }

      sub_181F68EF4(v7, v8, v74, v5);

      v3[26] = v81;
      v3[27] = v12;
      v3[28] = 0;
      *(v3 + 232) = 0;
      *(v3 + 15) = xmmword_182AE69F0;
      *(v3 + 256) = 2;
      v3[33] = 0;
      v3[34] = 0;
      v3[35] = v12;
      v3[36] = 0;
      *(v3 + 296) = 0;
      *(v3 + 19) = 0u;
      *(v3 + 20) = 0u;
      v3[42] = 0;
      *(v3 + 86) = 2;
      *(v3 + 348) = v84;
      v3[44] = 0;
      v3[45] = 0;
      *(v3 + 368) = 1;
      v3[47] = 0;
      v3[48] = 0;
      *(v3 + 400) = 0;
      v3[49] = 0;
      *(v3 + 401) = 1;
      *(v3 + 402) = 0;
      v3[51] = 0;
      *(v3 + 416) = -1;
      v3[53] = 0;
      *(v3 + 432) = 0;
      v5 = v76;
      v4 = a2;
    }

    v7 = v77;
    v8 = v75;
LABEL_5:
    swift_endAccess();
    v6 = 1;
  }

  if (v6)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v58 = v3[17];
        v59 = v3[18];
        v60 = *(v3 + 152);
      }

      else
      {
        v58 = v3[20];
        v59 = v3[21];
        v60 = *(v3 + 176);
      }

      v89 = v58;
      v90 = v59;
      v91 = v60;
      if (*(v3 + 952) != 6 || *(v3 + 117) != 0)
      {
LABEL_97:
        sub_181F68EA8(v58, v59, v60);
        goto LABEL_98;
      }

      v3[117] = v3;
      v3[118] = &off_1EEFB17F0;
      *(v3 + 952) = 3;
      v63 = v58;
      v64 = v59;
      v65 = v60;

      sub_181F68EA8(v63, v64, v65);
    }

    else
    {
      v58 = v3[11];
      v59 = v3[12];
      v60 = *(v3 + 104);
      v89 = v58;
      v90 = v59;
      v91 = v60;
      if (*(v3 + 952) != 6 || *(v3 + 117) != 0)
      {
        goto LABEL_97;
      }

      v3[117] = v3;
      v3[118] = &off_1EEFB17F0;
      *(v3 + 952) = 3;
      sub_181F68EA8(v58, v59, v60);
    }

    sub_181F68E5C(0, 0, 6u);
LABEL_98:
    v61 = v3[118];
    v62 = *(v3 + 952);
    v92 = v3[117];
    v93 = v61;
    v94 = v62;
    sub_181F68EA8(v92, v61, v62);
    InputHandlerLinkage.invokeInputAvailable(_:)(&v92);
    sub_181F68E5C(v92, v93, v94);
    sub_181F68E5C(v89, v90, v91);
  }
}