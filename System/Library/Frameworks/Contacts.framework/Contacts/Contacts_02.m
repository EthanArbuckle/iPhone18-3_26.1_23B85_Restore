uint64_t sub_1955F608C(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t a5, void (*a6)(id *, id))
{
  v9 = a1;
  v47 = a1;
  if (a1 >> 62)
  {
    v10 = sub_19565D81C();
    v11 = &selRef_updatedGroups;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11 = &selRef_updatedGroups;
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  v46 = MEMORY[0x1E69E7CC0];

  result = sub_19565D97C();
  if (v10 < 0)
  {
    __break(1u);
    return result;
  }

  v41 = a4;
  v13 = 0;
  v14 = v9 & 0xC000000000000001;
  v15 = v9;
  do
  {
    if (v14)
    {
      v16 = MEMORY[0x19A8B3850](v13, v9);
    }

    else
    {
      v16 = *(v9 + 8 * v13 + 32);
    }

    v17 = v16;
    ++v13;
    v18 = [v16 value];

    sub_19565D94C();
    sub_19565D98C();
    sub_19565D99C();
    sub_19565D95C();
    v9 = v15;
  }

  while (v10 != v13);
  v19 = v46;
  a4 = v41;
LABEL_12:
  v20 = a3(v19);

  v46 = v20;
  if (a2 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19565D81C())
  {
    sub_1954C3460(0, a4);
    a4 = 0;
    v44 = a2 & 0xC000000000000001;
    v39 = a2 + 32;
    v40 = a2 & 0xFFFFFFFFFFFFFF8;
    v37 = i;
    v38 = a2;
    while (1)
    {
      if (v44)
      {
        v22 = MEMORY[0x19A8B3850](a4, a2);
      }

      else
      {
        if (a4 >= *(v40 + 16))
        {
          goto LABEL_37;
        }

        v22 = *(v39 + 8 * a4);
      }

      v23 = v22;
      v24 = __OFADD__(a4, 1);
      a4 = (a4 + 1);
      if (v24)
      {
        break;
      }

      v25 = v46;
      v26 = [v22 v11[36]];
      v27 = v26;
      if ((v25 & 0xC000000000000001) == 0)
      {
        v42 = v9;
        if (*(v25 + 16))
        {
          v30 = sub_19565D74C();
          v31 = -1 << *(v25 + 32);
          v32 = v30 & ~v31;
          if ((*(v25 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
          {
            v33 = ~v31;
            while (1)
            {
              v34 = *(*(v25 + 48) + 8 * v32);
              v35 = sub_19565D75C();

              if (v35)
              {
                break;
              }

              v32 = (v32 + 1) & v33;
              if (((*(v25 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            i = v37;
            a2 = v38;
            v11 = &selRef_updatedGroups;
            v9 = v42;
            goto LABEL_16;
          }
        }

LABEL_30:

        i = v37;
        a2 = v38;
        v11 = &selRef_updatedGroups;
LABEL_31:
        v36 = v23;
        MEMORY[0x19A8B3320]();
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_19565D42C();
        }

        sub_19565D48C();
        v9 = v47;
        a6(&v45, [v36 v11[36]]);

        goto LABEL_16;
      }

      v28 = v26;
      v29 = sub_19565D84C();

      if ((v29 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_16:
      if (a4 == i)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

LABEL_35:

  return v9;
}

void sub_1955F6488(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = sub_19565D81C();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = sub_19565D8BC();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_19565D81C();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E69E7CD0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v43 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v40 = v4;
    while (1)
    {
      v13 = MEMORY[0x19A8B3850](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = sub_19565D74C();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_1954C3460(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = sub_19565D75C();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            v4 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        v4 = v40;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = *(v4 + 32 + 8 * v27);
      v29 = sub_19565D74C();
      v30 = -1 << *(v6 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v33 = *(v11 + 8 * (v31 >> 6));
      v34 = 1 << v31;
      if (((1 << v31) & v33) != 0)
      {
        v35 = ~v30;
        sub_1954C3460(0, a4);
        while (1)
        {
          v36 = *(*(v6 + 48) + 8 * v31);
          v37 = sub_19565D75C();

          if (v37)
          {
            break;
          }

          v31 = (v31 + 1) & v35;
          v32 = v31 >> 6;
          v33 = *(v11 + 8 * (v31 >> 6));
          v34 = 1 << v31;
          if (((1 << v31) & v33) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v32) = v34 | v33;
        *(*(v6 + 48) + 8 * v31) = v28;
        v38 = *(v6 + 16);
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v39;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_1955F6774(unint64_t a1, void *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_23:
    v21 = v2 & 0xFFFFFFFFFFFFFF8;
    v24 = sub_19565D81C();
  }

  else
  {
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v23 = v2 & 0xC000000000000001;
  v20 = v2;
  while (1)
  {
    if (v24 == v3)
    {
      return 0;
    }

    if (v23)
    {
      v4 = MEMORY[0x19A8B3850](v3, v2);
    }

    else
    {
      if (v3 >= *(v21 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v4 = *(v2 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 value];
    v7 = [a2 value];
    sub_1954C3460(0, &qword_1EAECDD80);
    if (sub_19565D75C())
    {
      goto LABEL_17;
    }

    v8 = [v6 stringValue];
    v9 = sub_19565D28C();
    v11 = v10;

    v12 = [v7 stringValue];
    v13 = sub_19565D28C();
    v15 = v14;

    if (v9 == v13 && v11 == v15)
    {
      break;
    }

    v16 = sub_19565DB1C();

    if (v16)
    {
LABEL_17:

      return v3;
    }

    v17 = [v6 isLikePhoneNumber_];

    if (v17)
    {
      return v3;
    }

    v18 = __OFADD__(v3++, 1);
    v2 = v20;
    if (v18)
    {
      goto LABEL_22;
    }
  }

  return v3;
}

void sub_1955F69C4(unint64_t *a1, void *a2)
{
  v3 = a2;
  v5 = *a1;
  v6 = sub_1955F6774(*a1, a2);
  if (v2)
  {
    return;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      goto LABEL_53;
    }

    return;
  }

  v34 = a1;
  v35 = v6;
  v8 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    return;
  }

  v37 = v3;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v8 == sub_19565D81C())
      {
        return;
      }
    }

    else if (v8 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x19A8B3850](v8, v5);
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    v10 = *(v5 + 8 * v8 + 32);
LABEL_15:
    v11 = v10;
    v12 = [v10 value];
    v13 = [v3 value];
    sub_1954C3460(0, &qword_1EAECDD80);
    if (sub_19565D75C())
    {
    }

    else
    {
      v36 = v5 & 0xC000000000000001;
      v38 = v5;
      v14 = [v12 stringValue];
      v15 = sub_19565D28C();
      v17 = v16;

      v18 = [v13 stringValue];
      v19 = sub_19565D28C();
      v21 = v20;

      if (v15 == v19 && v17 == v21)
      {

LABEL_21:
        v5 = v38;
        v3 = v37;
        goto LABEL_8;
      }

      v22 = sub_19565DB1C();

      if (v22)
      {

        goto LABEL_21;
      }

      v23 = [v12 isLikePhoneNumber_];

      v5 = v38;
      v3 = v37;
      if ((v23 & 1) == 0)
      {
        if (v35 != v8)
        {
          if (v36)
          {
            v24 = MEMORY[0x19A8B3850](v35, v38);
            v25 = MEMORY[0x19A8B3850](v8, v38);
          }

          else
          {
            if ((v35 & 0x8000000000000000) != 0)
            {
              goto LABEL_56;
            }

            v26 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v35 >= v26)
            {
              goto LABEL_57;
            }

            if (v8 >= v26)
            {
              goto LABEL_58;
            }

            v27 = *(v38 + 32 + 8 * v8);
            v24 = *(v38 + 32 + 8 * v35);
            v25 = v27;
          }

          v28 = v25;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
          {
            v5 = sub_1956271D0(v38);
            v29 = (v5 >> 62) & 1;
          }

          else
          {
            LODWORD(v29) = 0;
          }

          v30 = v5 & 0xFFFFFFFFFFFFFF8;
          v31 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v35 + 0x20);
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v35 + 0x20) = v28;

          if ((v5 & 0x8000000000000000) != 0 || v29)
          {
            v5 = sub_1956271D0(v5);
            v30 = v5 & 0xFFFFFFFFFFFFFF8;
            if ((v8 & 0x8000000000000000) != 0)
            {
LABEL_47:
              __break(1u);
              return;
            }
          }

          else if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          if (v8 >= *(v30 + 16))
          {
            goto LABEL_55;
          }

          v32 = v30 + 8 * v8;
          v33 = *(v32 + 32);
          *(v32 + 32) = v24;

          *v34 = v5;
        }

        v9 = __OFADD__(v35++, 1);
        if (v9)
        {
          goto LABEL_52;
        }
      }
    }

LABEL_8:
    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  sub_19565D81C();
}

void sub_1955F6D8C(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v63 = *a1;
  v3 = a1[2];
  if (v2 >> 62)
  {
    goto LABEL_140;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v60)
  {
    v5 = a2;
    if (i)
    {
      v6 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x19A8B3850](v6, v2);
        }

        else
        {
          if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_128;
          }

          v7 = *(v2 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v5 updateContact_];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_12;
        }
      }

LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

LABEL_12:

    v2 = v3 >> 62 ? sub_19565D81C() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v64 = v5;
    if (!v2)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x19A8B3850](v10, v3);
      }

      else
      {
        if (v10 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_130;
        }

        v11 = *(v3 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      [v64 deleteContact_];

      ++v10;
      if (v13 == v2)
      {
        goto LABEL_23;
      }
    }

LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
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
    v59 = a2;
    v60 = sub_19565D81C();
    a2 = v59;
  }

LABEL_23:
  v3 = v64;

  v14 = v63;
  v62 = *(v63 + 16);
  if (!v62)
  {
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_66;
  }

  v15 = 0;
  v61 = *MEMORY[0x1E6996570];
  v16 = MEMORY[0x1E69E7CC0];
  do
  {
    v66 = v16;
    while (1)
    {
      if (v15 >= *(v14 + 16))
      {
        goto LABEL_131;
      }

      v17 = *(v63 + 32 + 8 * v15);
      if (v17 >> 62)
      {
        v18 = sub_19565D81C();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v65 = v15 + 1;
      if (!v18)
      {

        goto LABEL_58;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {

        v20 = MEMORY[0x19A8B3850](0, v17);
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_132;
        }

        v19 = *(v17 + 32);

        v20 = v19;
      }

      v21 = v20;
      v22 = [v20 linkIdentifier];

      if (!v22)
      {
        goto LABEL_58;
      }

      v24 = sub_19565D28C();
      if (!v61)
      {

        __break(1u);
        return;
      }

      v25 = v23;
      v3 = (*(v61 + 16))();

      if (!v3)
      {
        break;
      }

      v26 = 0;
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x19A8B3850](v26, v17);
        }

        else
        {
          if (v26 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_126;
          }

          v27 = *(v17 + 8 * v26 + 32);
        }

        v28 = v27;
        v2 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        v29 = [v27 linkIdentifier];
        if (!v29)
        {

          goto LABEL_57;
        }

        v3 = v29;
        v30 = sub_19565D28C();
        v32 = v31;

        if (v30 == v24 && v32 == v25)
        {
        }

        else
        {
          v3 = sub_19565DB1C();

          if ((v3 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        ++v26;
      }

      while (v2 != v18);

      v14 = v63;
      v15 = v65;
      v16 = v66;
      if (v65 == v62)
      {
        goto LABEL_66;
      }
    }

LABEL_56:

LABEL_57:
    v14 = v63;
LABEL_58:
    v16 = v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v66;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = &v70;
      sub_1955EAE0C(0, *(v66 + 16) + 1, 1);
      v16 = v70;
    }

    v15 = v65;
    v3 = *(v16 + 16);
    v35 = *(v16 + 24);
    if (v3 >= v35 >> 1)
    {
      v2 = &v70;
      sub_1955EAE0C((v35 > 1), v3 + 1, 1);
      v16 = v70;
    }

    *(v16 + 16) = v3 + 1;
    *(v16 + 8 * v3 + 32) = v17;
  }

  while (v65 != v62);
LABEL_66:
  v3 = *(v16 + 16);
  v2 = v64;
  v69 = v3;
  if (v3)
  {
    v36 = 0;
    v67 = v16;
    v68 = v16 + 32;
    do
    {
      if (v36 >= *(v16 + 16))
      {
        goto LABEL_133;
      }

      v37 = *(v68 + 8 * v36);
      v38 = v37 >> 62;
      if (v37 >> 62)
      {
        v39 = sub_19565D81C();
        if (!v39)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v39)
        {
          goto LABEL_69;
        }
      }

      if ((v37 & 0xC000000000000001) != 0)
      {

        v40 = MEMORY[0x19A8B3850](0, v37);
      }

      else
      {
        if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_135;
        }

        v3 = *(v37 + 32);

        v40 = v3;
      }

      v41 = v40;
      if (v39 < 1)
      {
        goto LABEL_134;
      }

      if (v38)
      {
        if (v37 < 0)
        {
          v3 = v37;
        }

        else
        {
          v3 = v37 & 0xFFFFFFFFFFFFFF8;
        }

        if (sub_19565D81C() < 1)
        {
          goto LABEL_138;
        }

        v42 = sub_19565D81C();
      }

      else
      {
        v42 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v42)
        {
          goto LABEL_137;
        }
      }

      if (v42 < v39)
      {
        goto LABEL_136;
      }

      if ((v37 & 0xC000000000000001) == 0 || v39 == 1)
      {

        if (!v38)
        {
          goto LABEL_91;
        }
      }

      else
      {
        sub_1954C3460(0, &qword_1EAECB830);

        v43 = 1;
        do
        {
          v3 = v43 + 1;
          sub_19565D8FC();
          v43 = v3;
        }

        while (v39 != v3);
        if (!v38)
        {
LABEL_91:
          v44 = v37 & 0xFFFFFFFFFFFFFF8;
          v45 = (v37 & 0xFFFFFFFFFFFFFF8) + 32;
          v46 = (2 * v39) | 1;
          v47 = 1;
          if ((v46 & 1) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_96;
        }
      }

      v44 = sub_19565DA3C();
      v47 = v48;
      v46 = v49;
      if ((v49 & 1) == 0)
      {
        goto LABEL_95;
      }

LABEL_96:
      v3 = v45;
      sub_19565DB2C();
      swift_unknownObjectRetain_n();
      v52 = swift_dynamicCastClass();
      if (!v52)
      {
        swift_unknownObjectRelease();
        v52 = MEMORY[0x1E69E7CC0];
      }

      v53 = *(v52 + 16);

      if (__OFSUB__(v46 >> 1, v47))
      {
        goto LABEL_139;
      }

      if (v53 != (v46 >> 1) - v47)
      {
        swift_unknownObjectRelease();
        v45 = v3;
LABEL_95:
        sub_1955F4A70(v44, v45, v47, v46);
        v51 = v50;
        goto LABEL_102;
      }

      v51 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v51)
      {
        goto LABEL_103;
      }

      v51 = MEMORY[0x1E69E7CC0];
LABEL_102:
      swift_unknownObjectRelease();
LABEL_103:
      if (v51 < 0 || (v51 & 0x4000000000000000) != 0)
      {
        v54 = sub_19565D81C();
        if (v54)
        {
LABEL_106:
          v55 = 0;
          v3 = v51 & 0xC000000000000001;
          do
          {
            if (v3)
            {
              v56 = MEMORY[0x19A8B3850](v55, v51);
            }

            else
            {
              if (v55 >= *(v51 + 16))
              {
                goto LABEL_125;
              }

              v56 = *(v51 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              goto LABEL_124;
            }

            [v2 linkContact:v41 toContact:v56];

            ++v55;
          }

          while (v58 != v54);
        }
      }

      else
      {
        v54 = *(v51 + 16);
        if (v54)
        {
          goto LABEL_106;
        }
      }

      v16 = v67;
LABEL_69:
      ++v36;
    }

    while (v36 != v69);
  }
}

uint64_t dispatch thunk of static DuplicateContacts.mergeDuplicateEmailAddresses(in:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

uint64_t dispatch thunk of static DuplicateContacts.mergeDuplicatePhoneNumbers(in:)()
{
  return (*(v0 + 120))();
}

{
  return (*(v0 + 128))();
}

uint64_t dispatch thunk of static DuplicateContacts.mergeDuplicateUrlAddresses(in:)()
{
  return (*(v0 + 136))();
}

{
  return (*(v0 + 144))();
}

uint64_t sub_1955F7674()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1955F76C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1955F7710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1955F7788(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1955F77D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1955F7844()
{
  result = qword_1EAECB858;
  if (!qword_1EAECB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECB858);
  }

  return result;
}

unint64_t sub_1955F7898()
{
  result = qword_1EAECE4D0;
  if (!qword_1EAECE4D0)
  {
    sub_1954C3460(255, &unk_1EAECE440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE4D0);
  }

  return result;
}

unint64_t sub_1955F7900()
{
  result = qword_1EAECE3E0;
  if (!qword_1EAECE3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAECDF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE3E0);
  }

  return result;
}

uint64_t sub_1955F7964(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1955F79CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1955F79E0(a1, a2);
  }

  return a1;
}

uint64_t sub_1955F79E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1955F79F4(a1, a2);
  }

  return a1;
}

uint64_t sub_1955F79F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1955F7A48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1955F7A5C(a1, a2);
  }

  return a1;
}

uint64_t sub_1955F7A5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1954C1C4C(a1, a2);
  }

  return a1;
}

uint64_t sub_1955F7A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDDA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1955F7B40()
{
  v0 = sub_19565D0EC();
  __swift_allocate_value_buffer(v0, qword_1EAECDDC0);
  __swift_project_value_buffer(v0, qword_1EAECDDC0);
  return sub_19565D0DC();
}

uint64_t BackupRestoreMigrator.init(container:tempURL:modelName:recoveryLimit:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v10 = type metadata accessor for BackupRestoreMigrator(0);
  v11 = &a6[v10[8]];
  *v11 = 0xD000000000000013;
  *(v11 + 1) = 0x800000019568CC50;
  v12 = &a6[v10[9]];
  sub_1954C3460(0, &qword_1EAECDDD8);
  v13 = [swift_getObjCClassFromMetadata() entityName];
  v14 = sub_19565D28C();
  v16 = v15;

  *v12 = v14;
  v12[1] = v16;
  v17 = &a6[v10[10]];
  sub_1954C3460(0, &qword_1EAECDDE0);
  v18 = [swift_getObjCClassFromMetadata() entityName];
  v19 = sub_19565D28C();
  v21 = v20;

  *v17 = v19;
  v17[1] = v21;
  v22 = &a6[v10[11]];
  v23 = [objc_opt_self() entityName];
  v24 = sub_19565D28C();
  v26 = v25;

  *v22 = v24;
  v22[1] = v26;
  v27 = a2;
  *a6 = a1;
  v28 = v10[5];
  v29 = sub_19565CEFC();
  v48 = *(v29 - 8);
  (*(v48 + 16))(&a6[v28], a2, v29);
  v30 = &a6[v10[6]];
  *v30 = a3;
  *(v30 + 1) = a4;
  *&a6[v10[7]] = a5;
  v31 = qword_1EAECD988;
  v32 = a1;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = sub_19565D0EC();
  __swift_project_value_buffer(v33, qword_1EAECDDC0);
  v34 = v32;
  v35 = sub_19565D0CC();
  v36 = sub_19565D68C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v49 = v38;
    *v37 = 136315138;
    v39 = [v34 name];

    v40 = sub_19565D28C();
    v42 = v41;

    v43 = sub_1955EA0F8(v40, v42, &v49);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_1954A0000, v35, v36, "BackupRestoreMigrator initialized for container %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x19A8B5DB0](v38, -1, -1);
    MEMORY[0x19A8B5DB0](v37, -1, -1);
  }

  else
  {
  }

  v44 = *(v48 + 8);

  return v44(v27, v29);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BackupRestoreMigrator.attemptMigration(direction:)(Contacts::BackupRestoreMigrator::MigrationDirection direction)
{
  v3 = v2;
  v4 = v1;
  v98 = type metadata accessor for BackupRestoreMigrator(0);
  v6 = MEMORY[0x1EEE9AC00](v98);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v93 - v9);
  if (qword_1EAECD988 != -1)
  {
    swift_once();
  }

  v11 = sub_19565D0EC();
  v12 = __swift_project_value_buffer(v11, qword_1EAECDDC0);
  v13 = sub_19565D0CC();
  v14 = sub_19565D67C();
  v15 = os_log_type_enabled(v13, v14);
  v96 = v8;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v95 = v12;
    v97 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v99 = v18;
    *v17 = 136315138;
    if (direction)
    {
      v19 = 0x65726F74736572;
    }

    else
    {
      v19 = 0x70756B636162;
    }

    v20 = v10;
    if (direction)
    {
      v21 = 0xE700000000000000;
    }

    else
    {
      v21 = 0xE600000000000000;
    }

    v22 = sub_1955EA0F8(v19, v21, &v99);
    v10 = v20;

    *(v17 + 4) = v22;
    v3 = v2;
    _os_log_impl(&dword_1954A0000, v13, v14, "Attempting Core Data migration. Requested direction: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x19A8B5DB0](v18, -1, -1);
    v23 = v17;
    v4 = v97;
    MEMORY[0x19A8B5DB0](v23, -1, -1);
  }

  if ((direction & 1) == 0)
  {
    v40 = sub_1955F89E4(*v4);
    if (v3)
    {
      return v25 & 1;
    }

    if (v40)
    {
      sub_1955F8E18();
      sub_1955F9278(0);
      v25 = 1;
      return v25 & 1;
    }

    v42 = sub_19565D0CC();
    v43 = sub_19565D67C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "Not bothering to backup empty main container";
LABEL_22:
      v46 = v43;
      v47 = v42;
      v48 = v44;
      v49 = 2;
LABEL_39:
      _os_log_impl(&dword_1954A0000, v47, v46, v45, v48, v49);
      MEMORY[0x19A8B5DB0](v44, -1, -1);
    }

LABEL_41:

    v25 = 0;
    return v25 & 1;
  }

  v24 = BackupRestoreMigrator.getRecoveryAttemptCount()();
  if (v26)
  {
    return v25 & 1;
  }

  v27 = v24;
  if (v24 >= 1)
  {
    v95 = 0;
    sub_195600850(v4, v10);
    v28 = sub_19565D0CC();
    v29 = sub_19565D67C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v97 = v4;
      v31 = v30;
      v94 = swift_slowAlloc();
      v99 = v94;
      *v31 = 136315394;
      v32 = [*v10 name];
      v33 = sub_19565D28C();
      v34 = v10;
      v36 = v35;

      sub_1956008B4(v34);
      v37 = sub_1955EA0F8(v33, v36, &v99);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2048;
      *(v31 + 14) = v27;
      _os_log_impl(&dword_1954A0000, v28, v29, "Previous recovery attempts for %s: %ld", v31, 0x16u);
      v38 = v94;
      __swift_destroy_boxed_opaque_existential_0(v94);
      MEMORY[0x19A8B5DB0](v38, -1, -1);
      v39 = v31;
      v4 = v97;
      MEMORY[0x19A8B5DB0](v39, -1, -1);
    }

    else
    {

      sub_1956008B4(v10);
    }

    v26 = v95;
  }

  v50 = v98;
  if (v27 >= *(v4 + *(v98 + 28)))
  {
    v68 = v96;
    sub_195600850(v4, v96);
    v42 = sub_19565D0CC();
    v69 = sub_19565D69C();
    if (!os_log_type_enabled(v42, v69))
    {
      sub_1956008B4(v68);
      goto LABEL_41;
    }

    v44 = swift_slowAlloc();
    *v44 = 134217984;
    v70 = *(v68 + *(v50 + 28));
    sub_1956008B4(v68);
    *(v44 + 4) = v70;
    v45 = "Recovery limit (%ld) exceeded. Skipping recovery check.";
    v46 = v69;
    v47 = v42;
    v48 = v44;
    v49 = 12;
    goto LABEL_39;
  }

  v51 = sub_1955F99B8();
  if (v26)
  {
    return v25 & 1;
  }

  if (v51)
  {
    BackupRestoreMigrator.setRecoveryAttemptCount(_:)(v27 + 1);
    if (!v52)
    {
      v53 = sub_19565D0CC();
      v54 = sub_19565D67C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 134217984;
        *(v55 + 4) = v27 + 1;
        _os_log_impl(&dword_1954A0000, v53, v54, "Set restore attempt count to %ld.", v55, 0xCu);
        MEMORY[0x19A8B5DB0](v55, -1, -1);
      }

      v56 = sub_19565D0CC();
      v57 = sub_19565D67C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1954A0000, v56, v57, "Attempting restore migration (Temp File -> Main container)", v58, 2u);
        MEMORY[0x19A8B5DB0](v58, -1, -1);
      }

      sub_1955F9278(1);
      BackupRestoreMigrator.setRecoveryAttemptCount(_:)(0);
      if (v59)
      {
        v60 = v59;
        v61 = sub_19565D0CC();
        v62 = sub_19565D69C();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v99 = v64;
          *v63 = 136315138;
          swift_getErrorValue();
          v65 = sub_19565DB8C();
          v67 = sub_1955EA0F8(v65, v66, &v99);

          *(v63 + 4) = v67;
          _os_log_impl(&dword_1954A0000, v61, v62, "Restore migration failed: %s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v64);
          MEMORY[0x19A8B5DB0](v64, -1, -1);
          MEMORY[0x19A8B5DB0](v63, -1, -1);
        }

        swift_willThrow();
      }

      else
      {
        v90 = sub_19565D0CC();
        v91 = sub_19565D67C();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_1954A0000, v90, v91, "Restore migration successful. Reset restore attempt count to zero.", v92, 2u);
          MEMORY[0x19A8B5DB0](v92, -1, -1);
        }

        v25 = 1;
      }
    }

    return v25 & 1;
  }

  v71 = [objc_opt_self() defaultManager];
  sub_19565CEEC();
  v72 = sub_19565D27C();

  v73 = [v71 fileExistsAtPath_];

  if (v73)
  {
    v74 = sub_19565D0CC();
    v75 = sub_19565D67C();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1954A0000, v74, v75, "Temp file exists but has no data. Cleaning it up.", v76, 2u);
      MEMORY[0x19A8B5DB0](v76, -1, -1);
    }

    sub_1955FAA40();
    if (v27 >= 1)
    {
      BackupRestoreMigrator.setRecoveryAttemptCount(_:)(0);
      if (v89)
      {
        v77 = v89;
        v78 = sub_19565D0CC();
        v79 = sub_19565D69C();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v99 = v81;
          *v80 = 136315138;
          swift_getErrorValue();
          v82 = sub_19565DB8C();
          v84 = sub_1955EA0F8(v82, v83, &v99);

          *(v80 + 4) = v84;
          _os_log_impl(&dword_1954A0000, v78, v79, "Failed to clean up empty temporary store: %s", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v81);
          MEMORY[0x19A8B5DB0](v81, -1, -1);
          MEMORY[0x19A8B5DB0](v80, -1, -1);
        }

        else
        {
        }

        v25 = 0;
        return v25 & 1;
      }
    }

    v42 = sub_19565D0CC();
    v43 = sub_19565D67C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "Cleaned up empty temporary store.";
      goto LABEL_22;
    }

    goto LABEL_41;
  }

  if (v27 < 1)
  {
    v25 = 0;
  }

  else
  {
    v85 = sub_19565D0CC();
    v86 = sub_19565D67C();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_1954A0000, v85, v86, "We marked in the main database that we failed to restore in the past, but we found nothing to restore. Surprising.", v87, 2u);
      MEMORY[0x19A8B5DB0](v87, -1, -1);
    }

    BackupRestoreMigrator.setRecoveryAttemptCount(_:)(0);
    if (!v88)
    {
      v25 = 0;
    }
  }

  return v25 & 1;
}

uint64_t sub_1955F89E4(void *a1)
{
  v2 = [a1 newBackgroundContext];
  v3 = [a1 managedObjectModel];
  v4 = [v3 entities];

  sub_1954C3460(0, &qword_1EAECDE70);
  v5 = sub_19565D3FC();

  v29 = 0;
  v28 = 0;
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = &v29;
  v6[5] = a1;
  v6[6] = &v28;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_195601900;
  *(v7 + 24) = v6;
  aBlock[4] = sub_19560196C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1955E7E8C;
  aBlock[3] = &block_descriptor_40;
  v8 = _Block_copy(aBlock);
  v9 = v2;
  v10 = a1;

  [v9 performBlockAndWait_];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  v11 = v28;
  if (v28 && (v29 & 1) == 0)
  {
    type metadata accessor for BackupRestoreError(0);
    sub_195600A84();
    swift_allocError();
    *v23 = 7958081;
    v23[1] = 0xE300000000000000;
    v23[2] = v11;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v24 = v11;

    return v9 & 1;
  }

  if (qword_1EAECD988 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v12 = sub_19565D0EC();
  __swift_project_value_buffer(v12, qword_1EAECDDC0);
  v13 = v10;
  v14 = sub_19565D0CC();
  v15 = sub_19565D68C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315394;
    v18 = [v13 name];
    v19 = sub_19565D28C();
    v26 = v9;
    v21 = v20;

    v22 = sub_1955EA0F8(v19, v21, aBlock);

    *(v16 + 4) = v22;
    *(v16 + 12) = 1024;
    swift_beginAccess();
    *(v16 + 14) = v29;
    _os_log_impl(&dword_1954A0000, v14, v15, "Container %s has data: %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x19A8B5DB0](v17, -1, -1);
    MEMORY[0x19A8B5DB0](v16, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  LOBYTE(v9) = v29;

  return v9 & 1;
}

uint64_t sub_1955F8E18()
{
  v43[1] = *MEMORY[0x1E69E9840];
  v0 = sub_19565CEFC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v36[-v5];
  type metadata accessor for BackupRestoreMigrator(0);
  sub_19565CECC();
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_19565CE9C();
  v43[0] = 0;
  v9 = [v7 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:v43];

  if (v9)
  {
    v10 = *(v1 + 8);
    v11 = v43[0];
    return v10(v6, v0);
  }

  else
  {
    v13 = v43[0];
    v14 = sub_19565CE6C();

    swift_willThrow();
    if (qword_1EAECD988 != -1)
    {
      swift_once();
    }

    v15 = sub_19565D0EC();
    __swift_project_value_buffer(v15, qword_1EAECDDC0);
    v40 = *(v1 + 16);
    v41 = v1 + 16;
    v40(v4, v6, v0);
    v16 = v14;
    v17 = sub_19565D0CC();
    v18 = sub_19565D69C();

    v19 = os_log_type_enabled(v17, v18);
    v42 = v0;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v20 = 136315394;
      v38 = v17;
      v21 = sub_19565CEEC();
      v22 = v14;
      v24 = v23;
      v25 = *(v1 + 8);
      v37 = v18;
      v25(v4, v42);
      v26 = sub_1955EA0F8(v21, v24, v43);
      v14 = v22;

      *(v20 + 4) = v26;
      *(v20 + 12) = 2080;
      swift_getErrorValue();
      v27 = sub_19565DB8C();
      v29 = sub_1955EA0F8(v27, v28, v43);

      *(v20 + 14) = v29;
      v30 = v38;
      _os_log_impl(&dword_1954A0000, v38, v37, "Failed to create directory for temp database at %s: %s", v20, 0x16u);
      v31 = v39;
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v31, -1, -1);
      MEMORY[0x19A8B5DB0](v20, -1, -1);
    }

    else
    {

      v25 = *(v1 + 8);
      v25(v4, v42);
    }

    type metadata accessor for BackupRestoreError(0);
    sub_195600A84();
    swift_allocError();
    v33 = v32;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDE68) + 48);
    v35 = v42;
    v40(v33, v6, v42);
    *&v33[v34] = v14;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (v25)(v6, v35);
  }
}

void sub_1955F9278(char a1)
{
  v4 = sub_1955FB6E0(0, 0);
  if (v2)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 persistentStoreCoordinator];
  v7 = [v6 persistentStores];

  sub_1954C3460(0, &qword_1EAECB818);
  v8 = sub_19565D3FC();

  if (v8 >> 62)
  {
    v13 = sub_19565D81C();

    if (v13)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v9)
    {
LABEL_4:
      v10 = *v1;
      if (a1)
      {
        v11 = v5;
        v12 = 1;
      }

      else
      {
        v11 = *v1;
        v10 = v5;
        v12 = 0;
      }

      sub_1955FBA14(v11, v10, v12);

      return;
    }
  }

  if (qword_1EAECD988 != -1)
  {
    swift_once();
  }

  v14 = sub_19565D0EC();
  __swift_project_value_buffer(v14, qword_1EAECDDC0);
  v15 = sub_19565D0CC();
  v16 = sub_19565D69C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1954A0000, v15, v16, "Target temporary container has no loaded stores.", v17, 2u);
    MEMORY[0x19A8B5DB0](v17, -1, -1);
  }

  type metadata accessor for BackupRestoreError(0);
  sub_195600A84();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BackupRestoreMigrator.getRecoveryAttemptCount()()
{
  v2 = type metadata accessor for BackupRestoreMigrator(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  v9 = *v0;
  v10 = [*v0 persistentStoreCoordinator];
  v11 = [v10 persistentStores];

  sub_1954C3460(0, &qword_1EAECB818);
  v12 = sub_19565D3FC();

  if (v12 >> 62)
  {
    if (sub_19565D81C())
    {
LABEL_3:
      aBlock[7] = v1;
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x19A8B3850](0, v12);
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        v13 = *(v12 + 32);
      }

      v14 = v13;

      v6 = swift_allocObject();
      *(v6 + 2) = sub_19565CC1C();
      v15 = [v9 newBackgroundContext];
      sub_195600850(v0, v8);
      v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v17 = (v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v0 = swift_allocObject();
      sub_195600910(v8, v0 + v16);
      *(v0 + v17) = v14;
      *(v0 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v6;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_195600974;
      *(v18 + 24) = v0;
      aBlock[4] = sub_195600A0C;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1955E7E8C;
      aBlock[3] = &block_descriptor_0;
      v19 = _Block_copy(aBlock);
      v20 = v14;

      [v15 performBlockAndWait_];

      _Block_release(v19);
      LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

      if ((v19 & 1) == 0)
      {
        swift_beginAccess();
        v21 = *(v6 + 2);

        return v21;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (qword_1EAECD988 != -1)
  {
LABEL_18:
    swift_once();
  }

  v22 = sub_19565D0EC();
  __swift_project_value_buffer(v22, qword_1EAECDDC0);
  sub_195600850(v0, v6);
  v23 = sub_19565D0CC();
  v21 = sub_19565D69C();
  if (os_log_type_enabled(v23, v21))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    v26 = [*v6 name];
    v27 = sub_19565D28C();
    v29 = v28;

    sub_1956008B4(v6);
    v30 = sub_1955EA0F8(v27, v29, aBlock);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_1954A0000, v23, v21, "Failed to find real persistent store in container %s for metadata read.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x19A8B5DB0](v25, -1, -1);
    MEMORY[0x19A8B5DB0](v24, -1, -1);
  }

  else
  {

    sub_1956008B4(v6);
  }

  type metadata accessor for BackupRestoreError(0);
  sub_195600A84();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v21;
}

uint64_t sub_1955F99B8()
{
  v2 = v1;
  v3 = sub_19565CEFC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v109 = &v107 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v113 = &v107 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v107 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v107 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v107 - v18;
  v20 = *(type metadata accessor for BackupRestoreMigrator(0) + 20);
  v118 = v4;
  v119 = v3;
  v21 = *(v4 + 16);
  v115 = v0;
  v117 = v21;
  v21(v19, &v0[v20], v3);
  v22 = [objc_opt_self() defaultManager];
  sub_19565CEEC();
  v23 = sub_19565D27C();

  v24 = [v22 fileExistsAtPath_];

  if (!v24)
  {
    v116 = v1;
    if (qword_1EAECD988 != -1)
    {
      swift_once();
    }

    v38 = sub_19565D0EC();
    __swift_project_value_buffer(v38, qword_1EAECDDC0);
    v117(v14, v19, v119);
    v39 = sub_19565D0CC();
    v40 = sub_19565D68C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v112 = v19;
      v42 = v41;
      v43 = swift_slowAlloc();
      v114 = v22;
      v44 = v43;
      v120 = v43;
      *v42 = 136315138;
      v45 = sub_19565CEEC();
      v47 = v46;
      v48 = *(v118 + 8);
      v49 = v14;
      v50 = v119;
      v48(v49, v119);
      v51 = sub_1955EA0F8(v45, v47, &v120);

      *(v42 + 4) = v51;
      _os_log_impl(&dword_1954A0000, v39, v40, "Temp store file not found at %s.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x19A8B5DB0](v44, -1, -1);
      MEMORY[0x19A8B5DB0](v42, -1, -1);

      v48(v112, v50);
    }

    else
    {

      v55 = v119;
      v56 = *(v118 + 8);
      v56(v14, v119);
      v56(v19, v55);
    }

    goto LABEL_26;
  }

  if (qword_1EAECD988 != -1)
  {
    swift_once();
  }

  v108 = v7;
  v25 = sub_19565D0EC();
  v26 = __swift_project_value_buffer(v25, qword_1EAECDDC0);
  v117(v17, v19, v119);
  v110 = v26;
  v27 = sub_19565D0CC();
  v28 = sub_19565D68C();
  v29 = os_log_type_enabled(v27, v28);
  v112 = v19;
  v114 = v22;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v116 = v1;
    v31 = v30;
    v32 = swift_slowAlloc();
    v120 = v32;
    *v31 = 136315138;
    v33 = sub_19565CEEC();
    v35 = v34;
    v111 = *(v118 + 8);
    v111(v17, v119);
    v36 = sub_1955EA0F8(v33, v35, &v120);
    v22 = v114;

    *(v31 + 4) = v36;
    _os_log_impl(&dword_1954A0000, v27, v28, "Temp store file found at %s. Checking for data...", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v19 = v112;
    MEMORY[0x19A8B5DB0](v32, -1, -1);
    v37 = v31;
    v2 = v116;
    MEMORY[0x19A8B5DB0](v37, -1, -1);
  }

  else
  {

    v111 = *(v118 + 8);
    v111(v17, v119);
  }

  v52 = sub_1955FB6E0(0, 0);
  v53 = v2;
  if (!v2)
  {
    v57 = v52;
    v106 = sub_1955F89E4(v52);
    v111(v19, v119);

    return v106 & 1;
  }

  v116 = 0;
  v54 = v113;
  v117(v113, v19, v119);
  v58 = v53;
  v59 = sub_19565D0CC();
  v60 = sub_19565D69C();

  if (os_log_type_enabled(v59, v60))
  {
    v62 = v54;
    v63 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v120 = v113;
    *v63 = 136315394;
    v64 = sub_19565CEEC();
    v66 = v65;
    v111(v62, v119);
    v67 = sub_1955EA0F8(v64, v66, &v120);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2080;
    swift_getErrorValue();
    v68 = sub_19565DB8C();
    v70 = sub_1955EA0F8(v68, v69, &v120);

    *(v63 + 14) = v70;
    _os_log_impl(&dword_1954A0000, v59, v60, "Failed to load temporary store at %s for data check: %s", v63, 0x16u);
    v71 = v113;
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v71, -1, -1);
    MEMORY[0x19A8B5DB0](v63, -1, -1);
  }

  else
  {

    v111(v54, v119);
  }

  v72 = v116;
  sub_1955FAA40();
  if (!v72)
  {
    v116 = 0;
    v89 = v109;
    v117(v109, v19, v119);
    v90 = sub_19565D0CC();
    v91 = sub_19565D67C();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v120 = v93;
      *v92 = 136315138;
      v94 = sub_19565CEEC();
      v96 = v95;
      v97 = v89;
      v98 = v111;
      v115 = v53;
      v99 = v119;
      v111(v97, v119);
      v100 = sub_1955EA0F8(v94, v96, &v120);

      *(v92 + 4) = v100;
      _os_log_impl(&dword_1954A0000, v90, v91, "Cleaned up unreadable temporary store at %s.", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v93);
      MEMORY[0x19A8B5DB0](v93, -1, -1);
      MEMORY[0x19A8B5DB0](v92, -1, -1);

      v98(v112, v99);
    }

    else
    {

      v103 = v119;
      v104 = v111;
      v111(v89, v119);
      v104(v19, v103);
    }

LABEL_26:
    v106 = 0;
    return v106 & 1;
  }

  v115 = v53;
  v73 = v108;
  v117(v108, v19, v119);
  v74 = v72;
  v75 = sub_19565D0CC();
  v76 = v19;
  v77 = sub_19565D69C();

  if (os_log_type_enabled(v75, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v120 = v79;
    *v78 = 136315394;
    v80 = sub_19565CEEC();
    v82 = v81;
    v83 = v73;
    v84 = v111;
    v111(v83, v119);
    v85 = sub_1955EA0F8(v80, v82, &v120);

    *(v78 + 4) = v85;
    *(v78 + 12) = 2080;
    swift_getErrorValue();
    v86 = sub_19565DB8C();
    v88 = sub_1955EA0F8(v86, v87, &v120);

    *(v78 + 14) = v88;
    _os_log_impl(&dword_1954A0000, v75, v77, "Failed to clean up unreadable temporary store at %s: %s", v78, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v79, -1, -1);
    MEMORY[0x19A8B5DB0](v78, -1, -1);

    v84(v112, v119);
  }

  else
  {

    v101 = v119;
    v102 = v111;
    v111(v73, v119);
    v102(v76, v101);
  }

  v106 = 0;
  return v106 & 1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BackupRestoreMigrator.setRecoveryAttemptCount(_:)(Swift::Int a1)
{
  v38 = a1;
  v3 = type metadata accessor for BackupRestoreMigrator(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  v10 = *v1;
  v11 = [*v1 persistentStoreCoordinator];
  v12 = [v11 persistentStores];

  sub_1954C3460(0, &qword_1EAECB818);
  v13 = sub_19565D3FC();

  if (v13 >> 62)
  {
    if (sub_19565D81C())
    {
LABEL_3:
      v37 = v2;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x19A8B3850](0, v13);
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v14 = *(v13 + 32);
      }

      v15 = v14;

      v40 = 0;
      v16 = [v10 newBackgroundContext];
      sub_195600850(v1, v9);
      v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v18 = (v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
      v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
      v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1 = swift_allocObject();
      sub_195600910(v9, v1 + v17);
      *(v1 + v18) = v15;
      *(v1 + v19) = v38;
      *(v1 + v20) = v16;
      *(v1 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v40;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_195600ADC;
      *(v21 + 24) = v1;
      aBlock[4] = sub_19560196C;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1955E7E8C;
      aBlock[3] = &block_descriptor_16;
      v22 = _Block_copy(aBlock);
      v7 = v15;
      v23 = v16;

      [v23 performBlockAndWait_];
      _Block_release(v22);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if ((v22 & 1) == 0)
      {
        v24 = v40;
        if (v40)
        {
          type metadata accessor for BackupRestoreError(0);
          sub_195600A84();
          swift_allocError();
          *v25 = v24;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v26 = v24;
        }

        return;
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (qword_1EAECD988 != -1)
  {
LABEL_20:
    swift_once();
  }

  v27 = sub_19565D0EC();
  __swift_project_value_buffer(v27, qword_1EAECDDC0);
  sub_195600850(v1, v7);
  v28 = sub_19565D0CC();
  v29 = sub_19565D69C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315138;
    v32 = [*v7 name];
    v33 = sub_19565D28C();
    v35 = v34;

    sub_1956008B4(v7);
    v36 = sub_1955EA0F8(v33, v35, aBlock);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_1954A0000, v28, v29, "Failed to find real persistent store in container %s for metadata write.", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x19A8B5DB0](v31, -1, -1);
    MEMORY[0x19A8B5DB0](v30, -1, -1);
  }

  else
  {

    sub_1956008B4(v7);
  }

  type metadata accessor for BackupRestoreError(0);
  sub_195600A84();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

void sub_1955FAA40()
{
  v2 = v0;
  v111 = *MEMORY[0x1E69E9840];
  v102 = sub_19565D6CC();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v4 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19565CEFC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v100 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v94 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v94 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v94 - v15;
  v17 = *(type metadata accessor for BackupRestoreMigrator(0) + 20);
  v107 = v6;
  v18 = *(v6 + 16);
  v106 = v5;
  v104 = v18;
  v18(v16, (v2 + v17), v5);
  v19 = [objc_opt_self() defaultManager];
  v108 = v16;
  sub_19565CEEC();
  v20 = sub_19565D27C();

  v105 = v19;
  LODWORD(v5) = [v19 fileExistsAtPath_];

  if (v5)
  {
    v21 = sub_1955FFF00();
    v22 = v1;
    if (v1)
    {
      (*(v107 + 8))(v108, v106);

      return;
    }

    v38 = v21;
    v39 = objc_allocWithZone(MEMORY[0x1E695D6C0]);
    v97 = v38;
    v99 = [v39 initWithManagedObjectModel_];
    v40 = v107;
    if (qword_1EAECD988 != -1)
    {
      swift_once();
    }

    v41 = sub_19565D0EC();
    v42 = __swift_project_value_buffer(v41, qword_1EAECDDC0);
    v43 = v106;
    v104(v14, v108, v106);
    v98 = v42;
    v44 = sub_19565D0CC();
    v45 = sub_19565D68C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v103 = 0;
      v47 = v46;
      v109 = swift_slowAlloc();
      v48 = v109;
      *v47 = 136315138;
      v95 = sub_19565CEEC();
      v50 = v49;
      v96 = *(v107 + 8);
      v96(v14, v43);
      v51 = sub_1955EA0F8(v95, v50, &v109);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_1954A0000, v44, v45, "Attempting to truncate temporary store at: %s using Core Data...", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x19A8B5DB0](v48, -1, -1);
      v52 = v47;
      v22 = v103;
      MEMORY[0x19A8B5DB0](v52, -1, -1);
    }

    else
    {

      v96 = *(v40 + 8);
      v96(v14, v43);
    }

    v53 = v43;
    sub_19565D6BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDCB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19567B7A0;
    v109 = sub_19565D28C();
    v110 = v55;
    sub_19565D87C();
    *(inited + 96) = MEMORY[0x1E69E6370];
    *(inited + 72) = 1;
    sub_19562FBCC(inited);
    swift_setDeallocating();
    sub_1954C2698(inited + 32, &qword_1EAECDCB8);
    sub_19565D70C();
    if (v22)
    {
      (*(v101 + 8))(v4, v102);
    }

    else
    {
      (*(v101 + 8))(v4, v102);

      v56 = sub_19565D0CC();
      v57 = sub_19565D68C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_1954A0000, v56, v57, "Temporary store truncated successfully.", v58, 2u);
        MEMORY[0x19A8B5DB0](v58, -1, -1);
      }

      v60 = qword_1F094B6A0;
      v59 = unk_1F094B6A8;

      v109 = sub_19565CEEC();
      v110 = v61;

      MEMORY[0x19A8B3270](v60, v59);

      v62 = sub_19565D27C();

      v109 = 0;
      v63 = v105;
      LODWORD(v60) = [v105 removeItemAtPath:v62 error:&v109];

      v64 = v109;
      if (v60)
      {
        v65 = v109;
        v67 = *aShm;
        v66 = unk_1F094B6B8;

        v109 = sub_19565CEEC();
        v110 = v68;

        MEMORY[0x19A8B3270](v67, v66);

        v69 = sub_19565D27C();

        v109 = 0;
        LODWORD(v67) = [v63 removeItemAtPath:v69 error:&v109];

        v64 = v109;
        if (v67)
        {
          v70 = v109;
          v72 = *aWal;
          v71 = unk_1F094B6C8;

          v109 = sub_19565CEEC();
          v110 = v73;

          MEMORY[0x19A8B3270](v72, v71);

          v74 = sub_19565D27C();

          v109 = 0;
          LODWORD(v72) = [v63 removeItemAtPath:v74 error:&v109];

          v64 = v109;
          if (v72)
          {
            v75 = v109;
            v96(v108, v53);

            swift_arrayDestroy();
            return;
          }
        }
      }

      v76 = v64;
      swift_arrayDestroy();
      v22 = sub_19565CE6C();

      swift_willThrow();
    }

    v77 = v100;
    v104(v100, v108, v53);
    v78 = v22;
    v79 = sub_19565D0CC();
    v80 = sub_19565D69C();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v109 = v82;
      *v81 = 136315394;
      v83 = sub_19565CEEC();
      v84 = v77;
      v85 = v83;
      v87 = v86;
      v88 = v96;
      v96(v84, v106);
      v89 = sub_1955EA0F8(v85, v87, &v109);

      *(v81 + 4) = v89;
      *(v81 + 12) = 2080;
      swift_getErrorValue();
      v90 = sub_19565DB8C();
      v92 = sub_1955EA0F8(v90, v91, &v109);

      *(v81 + 14) = v92;
      _os_log_impl(&dword_1954A0000, v79, v80, "Failed to destroy temporary store at %s: %s", v81, 0x16u);
      swift_arrayDestroy();
      v53 = v106;
      MEMORY[0x19A8B5DB0](v82, -1, -1);
      MEMORY[0x19A8B5DB0](v81, -1, -1);
    }

    else
    {

      v88 = v96;
      v96(v77, v53);
    }

    v93 = v97;
    swift_willThrow();

    v88(v108, v53);
  }

  else
  {
    v103 = v1;
    if (qword_1EAECD988 != -1)
    {
      swift_once();
    }

    v23 = sub_19565D0EC();
    __swift_project_value_buffer(v23, qword_1EAECDDC0);
    v24 = v106;
    v104(v11, v108, v106);
    v25 = sub_19565D0CC();
    v26 = sub_19565D68C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v109 = v28;
      *v27 = 136315138;
      v29 = sub_19565CEEC();
      v30 = v24;
      v32 = v31;
      v33 = *(v107 + 8);
      v34 = v11;
      v35 = v30;
      v33(v34, v30);
      v36 = sub_1955EA0F8(v29, v32, &v109);

      *(v27 + 4) = v36;
      _os_log_impl(&dword_1954A0000, v25, v26, "Temporary store file not found at %s, no destruction needed.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x19A8B5DB0](v28, -1, -1);
      MEMORY[0x19A8B5DB0](v27, -1, -1);

      v33(v108, v35);
    }

    else
    {

      v37 = *(v107 + 8);
      v37(v11, v24);
      v37(v108, v24);
    }
  }
}

id sub_1955FB6E0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = (v2 + *(type metadata accessor for BackupRestoreMigrator(0) + 24));
    v5 = v4[1];
    aBlock = *v4;
    v24 = v5;

    MEMORY[0x19A8B3270](1886217556, 0xE400000000000000);
  }

  type metadata accessor for BackupRestoreMigrator(0);

  v6 = sub_1955FFCE8();

  if (!v3)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    v8 = (v7 + 16);
    v27 = sub_195601958;
    v28 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_19562056C;
    v26 = &block_descriptor_46;
    v9 = _Block_copy(&aBlock);

    [v6 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v9);
    swift_beginAccess();
    v10 = *v8;
    if (v10)
    {
      v11 = v10;
      if (qword_1EAECD988 != -1)
      {
        swift_once();
      }

      v12 = sub_19565D0EC();
      __swift_project_value_buffer(v12, qword_1EAECDDC0);
      v13 = v10;
      v14 = sub_19565D0CC();
      v15 = sub_19565D69C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v29 = v17;
        *v16 = 136315138;
        swift_getErrorValue();
        v18 = sub_19565DB8C();
        v20 = sub_1955EA0F8(v18, v19, &v29);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_1954A0000, v14, v15, "Failed to load temporary container: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x19A8B5DB0](v17, -1, -1);
        MEMORY[0x19A8B5DB0](v16, -1, -1);
      }

      type metadata accessor for BackupRestoreError(0);
      sub_195600A84();
      swift_allocError();
      *v21 = v10;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  return v6;
}

void sub_1955FBA14(void *a1, void *a2, int a3)
{
  v5 = v4;
  v6 = v3;
  LODWORD(v54) = a3;
  v53 = type metadata accessor for BackupRestoreMigrator(0);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 newBackgroundContext];
  v12 = [a2 newBackgroundContext];
  if (qword_1EAECD988 != -1)
  {
    swift_once();
  }

  v13 = sub_19565D0EC();
  __swift_project_value_buffer(v13, qword_1EAECDDC0);
  v14 = sub_19565D0CC();
  v15 = sub_19565D67C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v52 = a2;
    v17 = v10;
    v18 = v6;
    v19 = v11;
    v20 = v12;
    v21 = v16;
    *v16 = 0;
    _os_log_impl(&dword_1954A0000, v14, v15, "Starting migration...", v16, 2u);
    v22 = v21;
    v12 = v20;
    v11 = v19;
    v6 = v18;
    v10 = v17;
    v5 = v4;
    a2 = v52;
    MEMORY[0x19A8B5DB0](v22, -1, -1);
  }

  v23 = [a2 managedObjectModel];
  sub_1955FC0D0(v11, v12, v23);
  if (v5)
  {
    v24 = v11;

    v25 = v5;
    v26 = sub_19565D0CC();
    v27 = sub_19565D69C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v55 = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v30 = sub_19565DB8C();
      v32 = sub_1955EA0F8(v30, v31, &v55);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1954A0000, v26, v27, "Internal migration failed with error: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x19A8B5DB0](v29, -1, -1);
      MEMORY[0x19A8B5DB0](v28, -1, -1);
    }

    swift_willThrow();
LABEL_17:

    return;
  }

  v33 = sub_19565D0CC();
  v34 = sub_19565D67C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1954A0000, v33, v34, "Migration completed successfully.", v35, 2u);
    MEMORY[0x19A8B5DB0](v35, -1, -1);
  }

  if ((v54 & 1) == 0)
  {
    v44 = sub_19565D0CC();
    v45 = sub_19565D67C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1954A0000, v44, v45, "Cleanup after migration was not requested.", v46, 2u);
      MEMORY[0x19A8B5DB0](v46, -1, -1);
    }

    goto LABEL_17;
  }

  v54 = v12;
  sub_195600850(v6, v10);
  v36 = sub_19565D0CC();
  v37 = sub_19565D67C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55 = v52;
    *v38 = 136315138;
    v39 = sub_19565CEEC();
    v41 = v40;
    sub_1956008B4(v10);
    v42 = sub_1955EA0F8(v39, v41, &v55);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1954A0000, v36, v37, "Migration succeeded. Cleaning up temporary store at %s...", v38, 0xCu);
    v43 = v52;
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x19A8B5DB0](v43, -1, -1);
    MEMORY[0x19A8B5DB0](v38, -1, -1);
  }

  else
  {

    sub_1956008B4(v10);
  }

  sub_1955FAA40();
  v47 = v54;
  v48 = sub_19565D0CC();
  v49 = sub_19565D67C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1954A0000, v48, v49, "Temporary store destroyed successfully on success.", v50, 2u);
    MEMORY[0x19A8B5DB0](v50, -1, -1);
  }
}

void sub_1955FC0D0(void *a1, void *a2, void *a3)
{
  v246 = a1;
  v256 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for BackupRestoreMigrator(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v218 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v218 - v9;
  if (qword_1EAECD988 != -1)
  {
    swift_once();
  }

  v11 = sub_19565D0EC();
  v12 = __swift_project_value_buffer(v11, qword_1EAECDDC0);
  v13 = sub_19565D0CC();
  v14 = sub_19565D6AC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1954A0000, v13, v14, "Starting Poster/Avatar migration", v15, 2u);
    MEMORY[0x19A8B5DB0](v15, -1, -1);
  }

  v16 = *MEMORY[0x1E695D370];
  v244 = a2;
  [a2 setMergePolicy_];
  v17 = [a3 entitiesByName];
  sub_1954C3460(0, &qword_1EAECDE70);
  v18 = sub_19565D17C();

  if (!*(v18 + 16))
  {

LABEL_22:
    v19 = v247;
    goto LABEL_23;
  }

  v19 = v247;
  v20 = &v247[v5[9]];
  v21 = v20[1];
  v241 = *v20;
  v242 = v21;
  v22 = sub_1954C2328(v241, v21);
  if ((v23 & 1) == 0)
  {

LABEL_23:
    sub_195600850(v19, v10);
    sub_195600850(v19, v8);
    v59 = sub_19565D0CC();
    v60 = sub_19565D69C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v254 = v62;
      *v61 = 136315394;
      v63 = &v10[v5[9]];
      v64 = *v63;
      v65 = v63[1];

      sub_1956008B4(v10);
      v66 = sub_1955EA0F8(v64, v65, &v254);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2080;
      v67 = &v8[v5[10]];
      v68 = *v67;
      v69 = v67[1];

      sub_1956008B4(v8);
      v70 = sub_1955EA0F8(v68, v69, &v254);

      *(v61 + 14) = v70;
      _os_log_impl(&dword_1954A0000, v59, v60, "Required source entities (%s or %s) not found.", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v62, -1, -1);
      MEMORY[0x19A8B5DB0](v61, -1, -1);
    }

    else
    {

      sub_1956008B4(v8);
      sub_1956008B4(v10);
    }

    type metadata accessor for BackupRestoreError(0);
    sub_195600A84();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v243 = v12;
  v24 = *(*(v18 + 56) + 8 * v22);

  v25 = [a3 entitiesByName];
  v26 = sub_19565D17C();

  if (!*(v26 + 16))
  {

    goto LABEL_22;
  }

  v240 = v24;
  v19 = v247;
  v27 = &v247[v5[10]];
  v28 = v27[1];
  v239 = *v27;
  v29 = sub_1954C2328(v239, v28);
  if ((v30 & 1) == 0)
  {

    goto LABEL_23;
  }

  v238 = v28;
  v31 = *(*(v26 + 56) + 8 * v29);

  v32 = [a3 entitiesByName];
  v33 = sub_19565D17C();

  if (!*(v33 + 16) || (v34 = sub_1954C2328(*&v247[v5[11]], *&v247[v5[11] + 8]), v35 = v243, (v36 & 1) == 0))
  {

    goto LABEL_22;
  }

  v37 = *(*(v33 + 56) + 8 * v34);

  v38 = sub_19565D0CC();
  v39 = sub_19565D67C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1954A0000, v38, v39, "Starting Pass 1: Migrating Posters and paired Avatars.", v40, 2u);
    MEMORY[0x19A8B5DB0](v40, -1, -1);
  }

  v41 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v42 = sub_19565D27C();
  v43 = [v41 initWithEntityName_];

  v44 = sub_1954C3460(0, &qword_1EAECDDD8);
  v45 = v245;
  v46 = sub_19565D6FC();
  if (v45)
  {
    v47 = v45;
    v48 = sub_19565D0CC();
    v49 = sub_19565D69C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v237 = v37;
      v51 = v50;
      v52 = swift_slowAlloc();
      v254 = v52;
      *v51 = 136315138;
      swift_getErrorValue();
      v53 = sub_19565DB8C();
      v55 = sub_1955EA0F8(v53, v54, &v254);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_1954A0000, v48, v49, "Failed to fetch source Posters: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x19A8B5DB0](v52, -1, -1);
      v56 = v51;
      v37 = v237;
      MEMORY[0x19A8B5DB0](v56, -1, -1);
    }

    type metadata accessor for BackupRestoreError(0);
    sub_195600A84();
    swift_allocError();
    v57 = v242;
    *v58 = v241;
    v58[1] = v57;
    v58[2] = v45;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v71 = v46;
  v242 = v31;

  v72 = sub_19565D0CC();
  v73 = sub_19565D67C();
  v74 = os_log_type_enabled(v72, v73);
  v236 = v44;
  if (v74)
  {
    v75 = swift_slowAlloc();
    *v75 = 134217984;
    if (v71 >> 62)
    {
      v76 = sub_19565D81C();
    }

    else
    {
      v76 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v75 + 4) = v76;

    _os_log_impl(&dword_1954A0000, v72, v73, "Fetched %ld source Posters.", v75, 0xCu);
    MEMORY[0x19A8B5DB0](v75, -1, -1);

    v35 = v243;
  }

  else
  {
  }

  v241 = sub_1955FE93C(v71, v240, v244, sub_19562FD30, off_1E7410598, sub_1956016B4, sub_195624BF8, sub_19562686C);
  v235 = v43;
  v254 = MEMORY[0x1E69E7CC0];
  v237 = v37;
  if (v71 >> 62)
  {
    v245 = sub_19565D81C();
  }

  else
  {
    v245 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = 0;
  v78 = v71 & 0xC000000000000001;
  v79 = MEMORY[0x1E69E7CC0];
  v227 = MEMORY[0x1E69E7CC0];
  while (v245 != v77)
  {
    if (v78)
    {
      v80 = MEMORY[0x19A8B3850](v77, v71);
    }

    else
    {
      if (v77 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_133;
      }

      v80 = *(v71 + 8 * v77 + 32);
    }

    v35 = v80;
    v81 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:

LABEL_135:

      v164 = v226;
      v165 = sub_19565D0CC();
      v166 = sub_19565D69C();

      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        *v167 = 138412290;
        v169 = [v164 objectID];
        *(v167 + 4) = v169;
        *v168 = v169;
        _os_log_impl(&dword_1954A0000, v165, v166, "Internal error: Newly migrated avatar not found for source ID %@. Giving up.", v167, 0xCu);
        sub_1954C2698(v168, &qword_1EAECDC58);
        MEMORY[0x19A8B5DB0](v168, -1, -1);
        MEMORY[0x19A8B5DB0](v167, -1, -1);
      }

      type metadata accessor for BackupRestoreError(0);
      sub_195600A84();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v163 = &v253;
      goto LABEL_138;
    }

    v82 = [v80 pairedImage];

    ++v77;
    v35 = v243;
    if (v82)
    {
      MEMORY[0x19A8B3320]();
      if (*((v254 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19565D42C();
      }

      sub_19565D48C();
      v79 = v254;
      v77 = v81;
    }
  }

  v83 = v242;
  v230 = sub_1955FE93C(v79, v242, v244, sub_19562FD1C, off_1E74104F0, sub_195601468, sub_195624BE4, sub_195626858);

  v84 = 0;
  v85 = MEMORY[0x1E69E7CC0];
  v254 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v245 == v84)
    {
      v224 = sub_1955FE93C(v85, v237, v244, sub_19562FD08, off_1E74104B0, sub_19560121C, sub_195624BD0, sub_195626844);

      if (!v245)
      {
LABEL_115:

        v145 = sub_19565D0CC();
        v146 = sub_19565D67C();
        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          *v147 = 0;
          _os_log_impl(&dword_1954A0000, v145, v146, "Starting Pass 2: Migrating unpaired Avatars.", v147, 2u);
          MEMORY[0x19A8B5DB0](v147, -1, -1);
        }

        v148 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
        v149 = sub_19565D27C();
        v150 = [v148 initWithEntityName_];

        v85 = sub_1955F4B64(v230);

        v151 = (v85 >> 62) & 1;
        if (v85 < 0)
        {
          LODWORD(v151) = 1;
        }

        LODWORD(v245) = v151;
        if (v151 == 1)
        {
          goto LABEL_216;
        }

        if (!*(v85 + 16))
        {
          goto LABEL_122;
        }

        goto LABEL_121;
      }

      v89 = 0;
      v225 = v241 & 0xC000000000000001;
      v90 = v241 & 0xFFFFFFFFFFFFFF8;
      if (v241 < 0)
      {
        v90 = v241;
      }

      v223 = v90;
      v222 = v224 & 0xC000000000000001;
      v91 = v224 & 0xFFFFFFFFFFFFFF8;
      if (v224 < 0)
      {
        v91 = v224;
      }

      v219 = v91;
      v221 = v230 & 0xC000000000000001;
      v92 = v230 & 0xFFFFFFFFFFFFFF8;
      if (v230 < 0)
      {
        v92 = v230;
      }

      v218 = v92;
      v93 = &off_1E7419000;
      *&v88 = 138412802;
      v220 = v88;
      v94 = &selRef_recentImages;
      while (1)
      {
        if (v78)
        {
          v98 = MEMORY[0x19A8B3850](v89, v71);
        }

        else
        {
          if (v89 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_213;
          }

          v98 = *(v71 + 8 * v89 + 32);
        }

        v229 = v89;
        *&v228 = &v89->isa + 1;
        if (__OFADD__(v89, 1))
        {
          __break(1u);
LABEL_213:
          __break(1u);
        }

        v99 = v93[265];
        v234 = v98;
        v100 = [v98 v99];
        v101 = v100;
        if (v225)
        {
          v102 = v100;
          v103 = sub_19565D9FC();

          if (!v103)
          {
            goto LABEL_127;
          }

          v255 = v103;
          swift_dynamicCast();
          v104 = v251;
        }

        else
        {
          if (!*(v241 + 16) || (v105 = sub_1955EBE7C(v100), (v106 & 1) == 0))
          {
LABEL_127:

            v107 = v234;
LABEL_128:

            v157 = v107;
            v158 = sub_19565D0CC();
            v159 = sub_19565D69C();

            if (os_log_type_enabled(v158, v159))
            {
              v160 = swift_slowAlloc();
              v161 = swift_slowAlloc();
              *v160 = 138412290;
              v162 = [v157 objectID];
              *(v160 + 4) = v162;
              *v161 = v162;
              _os_log_impl(&dword_1954A0000, v158, v159, "Internal error: Migrated target poster not found for source ID %@. Giving up.", v160, 0xCu);
              sub_1954C2698(v161, &qword_1EAECDC58);
              MEMORY[0x19A8B5DB0](v161, -1, -1);
              MEMORY[0x19A8B5DB0](v160, -1, -1);
            }

            type metadata accessor for BackupRestoreError(0);
            sub_195600A84();
            swift_allocError();
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

LABEL_131:
            v163 = &v256;
            goto LABEL_138;
          }

          v104 = *(*(v241 + 56) + 8 * v105);
        }

        v107 = v234;
        if (!v104)
        {
          goto LABEL_128;
        }

        v251 = 0;
        v108 = [v234 externalDetails];
        v109 = v108;
        v233 = v104;
        if (v108)
        {
          v110 = [v108 objectID];
          if (v222)
          {
            v111 = v110;
            v112 = sub_19565D9FC();

            if (v112)
            {
              v249 = v112;
              sub_1954C3460(0, &qword_1EAECDE80);
              swift_dynamicCast();
              v113 = v255;

              v109 = v113;
            }

            else
            {

              v109 = 0;
            }

            v107 = v234;
          }

          else
          {
            v114 = v224;
            if (*(v224 + 16))
            {
              v115 = v110;
              v116 = sub_1955EBE7C(v110);
              if (v117)
              {
                v118 = *(*(v114 + 56) + 8 * v116);
                v119 = v118;

                v109 = v118;
              }

              else
              {

                v109 = 0;
              }

              v107 = v234;
              v94 = &selRef_recentImages;
            }

            else
            {

              v109 = 0;
            }
          }

          v104 = v233;
          swift_beginAccess();
          v251 = v109;
        }

        v255 = 0;
        v120 = [v107 pairedImage];
        v232 = v109;
        if (v120)
        {
          v226 = v120;
          v121 = [v120 objectID];
          v35 = v121;
          if (v221)
          {
            v122 = v94;
            v123 = v121;
            v124 = sub_19565D9FC();

            v109 = v232;
            if (!v124)
            {
              goto LABEL_134;
            }

            v248 = v124;
            sub_1954C3460(0, &qword_1EAECDDE0);
            swift_dynamicCast();
            v125 = v249;
          }

          else
          {
            if (!*(v230 + 16))
            {
              goto LABEL_134;
            }

            v122 = v94;
            v127 = sub_1955EBE7C(v121);
            if ((v128 & 1) == 0)
            {
              goto LABEL_134;
            }

            v125 = *(*(v230 + 56) + 8 * v127);
          }

          v104 = v233;

          if (!v125)
          {
            goto LABEL_135;
          }

          swift_beginAccess();
          v255 = v125;
          v231 = v125;
          v129 = v125;
          [v129 setPairedPoster_];
          if (!v109)
          {

            v35 = v243;
            goto LABEL_106;
          }

          v126 = v109;
          v94 = v122;
          v130 = v129;
          [v130 v122 + 2547];

          v35 = v243;
        }

        else
        {
          if (!v109)
          {
            v231 = 0;
            goto LABEL_106;
          }

          v231 = 0;
          v126 = v109;
        }

        v131 = v126;
        v104 = v233;
        [v233 v94[391]];
LABEL_106:
        v132 = v104;
        v133 = sub_19565D0CC();
        v134 = sub_19565D68C();

        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v137 = v132;
          v138 = v136;
          *v135 = v220;
          v233 = v137;
          v139 = [v137 objectID];
          *(v135 + 4) = v139;
          *v138 = v139;
          *(v135 + 12) = 2112;
          v140 = v231;
          if (v231)
          {
            v140 = [v231 objectID];
            v141 = v140;
          }

          else
          {
            v141 = 0;
          }

          *(v135 + 14) = v140;
          v138[1] = v141;
          *(v135 + 22) = 2112;
          v142 = v232;
          if (v232)
          {
            v143 = [v232 objectID];
            v144 = v143;
          }

          else
          {
            v143 = 0;
            v144 = 0;
          }

          *(v135 + 24) = v143;
          v138[2] = v144;
          _os_log_impl(&dword_1954A0000, v133, v134, "Set relationships between target Poster %@, target Avatar %@, and target ExternalDetails: %@.", v135, 0x20u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC58);
          swift_arrayDestroy();
          MEMORY[0x19A8B5DB0](v138, -1, -1);
          MEMORY[0x19A8B5DB0](v135, -1, -1);

          v35 = v243;
          v95 = v234;
          v96 = &v252;
        }

        else
        {

          v95 = v231;
          v96 = &v253;
        }

        v97 = *(v96 - 32);

        v89 = (&v229->isa + 1);
        v93 = &off_1E7419000;
        v94 = &selRef_recentImages;
        if (v228 == v245)
        {
          goto LABEL_115;
        }
      }
    }

    if (v78)
    {
      v86 = MEMORY[0x19A8B3850](v84, v71);
    }

    else
    {
      if (v84 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_159;
      }

      v86 = *(v71 + 8 * v84 + 32);
    }

    v35 = v86;
    v87 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      break;
    }

    v83 = [v86 externalDetails];

    ++v84;
    v35 = v243;
    if (v83)
    {
      MEMORY[0x19A8B3320]();
      if (*((v254 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19565D42C();
      }

      sub_19565D48C();
      v85 = v254;
      v84 = v87;
    }
  }

  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:

  v154 = 0;
  v234 = (v245 & 0xC000000000000001);
  v174 = (v245 & 0xFFFFFFFFFFFFFF8);
  if (v245 < 0)
  {
    v174 = v245;
  }

  v232 = v174;
  v231 = (v233 & 0xC000000000000001);
  v175 = v233 & 0xFFFFFFFFFFFFFF8;
  if (v233 < 0)
  {
    v175 = v233;
  }

  v230 = v175;
  *&v173 = 138412546;
  v228 = v173;
  while (2)
  {
    if (v239)
    {
      v176 = MEMORY[0x19A8B3850](v154, v71);
    }

    else
    {
      if (v154 >= *(v238 + 16))
      {
        goto LABEL_221;
      }

      v176 = *(v71 + 8 * v154 + 32);
    }

    v247 = v176;
    v241 = v154 + 1;
    if (__OFADD__(v154, 1))
    {
      __break(1u);
LABEL_221:
      __break(1u);
      while (1)
      {
        for (i = sub_19565D81C(); ; i = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          *(v35 + 1) = i;

          *(v35 + 6) = 2048;
          v156 = v245 ? sub_19565D81C() : *(v85 + 16);

          *(v35 + 14) = v156;

          _os_log_impl(&dword_1954A0000, v84, v83, "Fetched %ld unpaired Avatars, after excluding %ld paired avatars, for Pass 2.", v35, 0x16u);
          MEMORY[0x19A8B5DB0](v35, -1, -1);

          while (1)
          {
            if (v154)
            {
              v83 = sub_19565D81C();
              if (!v83)
              {
                goto LABEL_198;
              }
            }

            else
            {
              v83 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v83)
              {
                goto LABEL_198;
              }
            }

            v245 = sub_1955FE93C(v71, v242, v244, sub_19562FD1C, off_1E74104F0, sub_195601468, sub_195624BE4, sub_195626858);
            v170 = 0;
            v251 = MEMORY[0x1E69E7CC0];
            v239 = v71 & 0xC000000000000001;
            v238 = v71 & 0xFFFFFFFFFFFFFF8;
LABEL_145:
            v150 = v239;
            while (1)
            {
              if (v83 == v170)
              {
                v84 = v247;
                v233 = sub_1955FE93C(v227, v237, v244, sub_19562FD08, off_1E74104B0, sub_19560121C, sub_195624BD0, sub_195626844);
                goto LABEL_160;
              }

              if (v150)
              {
                v171 = MEMORY[0x19A8B3850](v170, v71);
              }

              else
              {
                if (v170 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_215;
                }

                v171 = *(v71 + 8 * v170 + 32);
              }

              v35 = v171;
              v172 = (&v170->isa + 1);
              if (__OFADD__(v170, 1))
              {
                break;
              }

              v85 = [v171 externalDetails];

              v170 = (v170 + 1);
              if (v85)
              {
                MEMORY[0x19A8B3320]();
                v35 = *((v251 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v35 >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_19565D42C();
                }

                sub_19565D48C();
                v227 = v251;
                v170 = v172;
                goto LABEL_145;
              }
            }

            __break(1u);
LABEL_215:
            __break(1u);
LABEL_216:
            if (sub_19565D81C())
            {
LABEL_121:
              sub_1954C3460(0, &qword_1EAECB838);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE010);
              v152 = swift_allocObject();
              *(v152 + 16) = xmmword_19567B7A0;
              *(v152 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDE88);
              v35 = v243;
              *(v152 + 64) = sub_195601910(&qword_1EAECDE90, &qword_1EAECDE88);
              *(v152 + 32) = v85;

              v153 = sub_19565D66C();
              [v150 setPredicate_];
            }

LABEL_122:
            v83 = sub_1954C3460(0, &qword_1EAECDDE0);
            v71 = sub_19565D6FC();
            v236 = v83;
            v246 = v150;

            v84 = sub_19565D0CC();
            LOBYTE(v83) = sub_19565D67C();
            v154 = v71 >> 62;
            if (os_log_type_enabled(v84, v83))
            {
              break;
            }
          }

          v35 = swift_slowAlloc();
          *v35 = 134218240;
          if (v154)
          {
            break;
          }
        }
      }
    }

    v177 = [v247 objectID];
    v85 = v177;
    if (v234)
    {
      v178 = v177;
      v179 = sub_19565D9FC();

      if (!v179)
      {
        goto LABEL_192;
      }

      v249 = v179;
      swift_dynamicCast();
      v84 = v255;
    }

    else
    {
      if (!*(v245 + 16) || (v180 = sub_1955EBE7C(v177), (v181 & 1) == 0))
      {
LABEL_192:

LABEL_193:

        v194 = v247;
        v195 = sub_19565D0CC();
        v196 = sub_19565D69C();

        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          *v197 = 138412290;
          v199 = [v194 objectID];
          *(v197 + 4) = v199;
          *v198 = v199;
          _os_log_impl(&dword_1954A0000, v195, v196, "Internal error: Migrated target avatar not found for source ID %@. Giving up.", v197, 0xCu);
          sub_1954C2698(v198, &qword_1EAECDC58);
          MEMORY[0x19A8B5DB0](v198, -1, -1);
          MEMORY[0x19A8B5DB0](v197, -1, -1);
        }

        type metadata accessor for BackupRestoreError(0);
        sub_195600A84();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
LABEL_207:

        goto LABEL_131;
      }

      v84 = *(*(v245 + 56) + 8 * v180);
    }

    if (!v84)
    {
      goto LABEL_193;
    }

    v182 = v84;
    v255 = 0;
    v183 = [v247 externalDetails];
    if (!v183)
    {
      goto LABEL_166;
    }

    v85 = v183;
    v184 = [v183 objectID];
    v185 = v184;
    if (v231)
    {
      v35 = v184;
      v84 = sub_19565D9FC();

      if (v84)
      {
        v248 = v84;
        sub_1954C3460(0, &qword_1EAECDE80);
        swift_dynamicCast();
        v35 = v249;
        goto LABEL_186;
      }

LABEL_165:

      swift_beginAccess();
      v255 = 0;
      goto LABEL_166;
    }

    if (!*(v233 + 16))
    {
      goto LABEL_165;
    }

    v84 = v233;
    v186 = sub_1955EBE7C(v184);
    if ((v187 & 1) == 0)
    {
      goto LABEL_165;
    }

    v35 = *(*(v233 + 56) + 8 * v186);
LABEL_186:

    swift_beginAccess();
    v255 = v35;
    if (v35)
    {
      [v182 setExternalDetails_];
      v85 = v182;
      v188 = sub_19565D0CC();
      v189 = sub_19565D68C();
      v84 = v85;

      v229 = v188;
      if (os_log_type_enabled(v188, v189))
      {
        v85 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        *v85 = v228;
        v227 = v84;
        v191 = [v84 objectID];
        *(v85 + 4) = v191;
        *v190 = v191;
        *(v85 + 12) = 2112;
        v192 = [v35 objectID];
        *(v85 + 14) = v192;
        v190[1] = v192;
        v84 = v229;
        _os_log_impl(&dword_1954A0000, v229, v189, "Set relationships between target unpaired Avatar %@ and target ExternalDetails: %@.", v85, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC58);
        swift_arrayDestroy();
        MEMORY[0x19A8B5DB0](v190, -1, -1);
        MEMORY[0x19A8B5DB0](v85, -1, -1);

        v193 = &v249;
      }

      else
      {

        v193 = &v250;
      }
    }

    else
    {
LABEL_166:
    }

    ++v154;
    if (v241 != v83)
    {
      continue;
    }

    break;
  }

LABEL_198:

  if (![v244 hasChanges])
  {
    v201 = sub_19565D0CC();
    v202 = sub_19565D67C();
    if (os_log_type_enabled(v201, v202))
    {
      v203 = swift_slowAlloc();
      *v203 = 0;
      v204 = "No changes in target context. Skipping save.";
LABEL_204:
      _os_log_impl(&dword_1954A0000, v201, v202, v204, v203, 2u);
      MEMORY[0x19A8B5DB0](v203, -1, -1);
    }

LABEL_205:

    v194 = sub_19565D0CC();
    v205 = sub_19565D6AC();
    if (os_log_type_enabled(v194, v205))
    {
      v206 = swift_slowAlloc();
      *v206 = 0;
      _os_log_impl(&dword_1954A0000, v194, v205, "Poster/Avatar migration completed.", v206, 2u);
      MEMORY[0x19A8B5DB0](v206, -1, -1);
    }

    goto LABEL_207;
  }

  v255 = 0;
  if ([v244 save_])
  {
    v200 = v255;
    v201 = sub_19565D0CC();
    v202 = sub_19565D67C();
    if (os_log_type_enabled(v201, v202))
    {
      v203 = swift_slowAlloc();
      *v203 = 0;
      v204 = "Saved after migrating.";
      goto LABEL_204;
    }

    goto LABEL_205;
  }

  v207 = v255;
  v208 = sub_19565CE6C();

  swift_willThrow();
  v209 = v208;
  v210 = sub_19565D0CC();
  v211 = sub_19565D69C();

  if (os_log_type_enabled(v210, v211))
  {
    v212 = swift_slowAlloc();
    v213 = swift_slowAlloc();
    v255 = v213;
    *v212 = 136315138;
    swift_getErrorValue();
    v214 = sub_19565DB8C();
    v216 = sub_1955EA0F8(v214, v215, &v255);

    *(v212 + 4) = v216;
    _os_log_impl(&dword_1954A0000, v210, v211, "Failed to save target context: %s", v212, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v213);
    MEMORY[0x19A8B5DB0](v213, -1, -1);
    MEMORY[0x19A8B5DB0](v212, -1, -1);
  }

  type metadata accessor for BackupRestoreError(0);
  sub_195600A84();
  swift_allocError();
  *v217 = v208;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v163 = &v257;
LABEL_138:
}

uint64_t sub_1955FE93C(unint64_t a1, NSObject *a2, uint64_t a3, uint64_t isUniquelyReferenced_nonNull_native, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), void (*a7)(void), void (*a8)(void))
{
  if (qword_1EAECD988 != -1)
  {
LABEL_55:
    swift_once();
  }

  v12 = sub_19565D0EC();
  __swift_project_value_buffer(v12, qword_1EAECDDC0);

  v13 = a2;
  a2 = sub_19565D0CC();
  LOBYTE(v14) = sub_19565D68C();
  v67 = v13;

  v15 = a1 >> 62;
  v58 = a1 >> 62;
  if (!os_log_type_enabled(a2, v14))
  {

    goto LABEL_10;
  }

  v13 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v69 = v8;
  LODWORD(v13->isa) = 134218242;
  if (v15)
  {
    goto LABEL_57;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19565D81C())
  {
    *(&v13->isa + 4) = i;

    WORD2(v13[1].isa) = 2080;
    v17 = [v67 name];
    if (v17)
    {
      v18 = isUniquelyReferenced_nonNull_native;
      v19 = v17;
      v20 = sub_19565D28C();
      v22 = v21;

      isUniquelyReferenced_nonNull_native = v18;
    }

    else
    {
      v22 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E55;
    }

    v23 = sub_1955EA0F8(v20, v22, &v69);

    *(&v13[1].isa + 6) = v23;
    _os_log_impl(&dword_1954A0000, a2, v14, "Copying attributes for %ld objects of entity %s.", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x19A8B5DB0](v8, -1, -1);
    MEMORY[0x19A8B5DB0](v13, -1, -1);

    v15 = a1 >> 62;
LABEL_10:
    v24 = (isUniquelyReferenced_nonNull_native)(MEMORY[0x1E69E7CC0]);
    v25 = [v67 attributesByName];
    sub_1954C3460(0, &qword_1EAECDE98);
    v26 = sub_19565D17C();

    a2 = *(v26 + 16);
    if (!a2)
    {
      break;
    }

    v66 = sub_19562477C(*(v26 + 16), 0);
    v14 = sub_1956276D8(&v69, v66 + 4, a2, v26);
    sub_1954C55E4();
    if (v14 == a2)
    {
      v27 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v15)
      {
        goto LABEL_13;
      }

LABEL_41:
      v28 = sub_19565D81C();
      if (!v28)
      {
        goto LABEL_42;
      }

LABEL_14:
      v8 = 0;
      v63 = a1 & 0xFFFFFFFFFFFFFF8;
      v64 = a1 & 0xC000000000000001;
      v61 = v28;
      v62 = a1;
      while (2)
      {
        if (v64)
        {
          v30 = MEMORY[0x19A8B3850](v8, a1);
        }

        else
        {
          if (v8 >= *(v63 + 16))
          {
            goto LABEL_51;
          }

          v30 = *(a1 + 8 * v8 + 32);
        }

        a2 = v30;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
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

        isUniquelyReferenced_nonNull_native = [objc_allocWithZone(MEMORY[0x1E695D620]) initWithEntity:v67 insertIntoManagedObjectContext:a3];
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (!v31)
        {

          type metadata accessor for BackupRestoreError(0);
          sub_195600A84();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return v24;
        }

        v32 = v31;
        v68 = v8;
        v70 = v8 + 1;
        v33 = v24;
        v34 = a2;
        v35 = sub_19565D3EC();
        v36 = [v34 dictionaryWithValuesForKeys:v35];

        a2 = sub_19565D17C();
        v37 = v34;
        v38 = v33;
        v39 = isUniquelyReferenced_nonNull_native;
        v8 = sub_19565D16C();

        [v32 setValuesForKeysWithDictionary_];

        a1 = [v37 objectID];
        if ((v38 & 0xC000000000000001) != 0)
        {
          if (v38 >= 0)
          {
            v38 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v40 = v39;
          v41 = sub_19565D81C();
          if (__OFADD__(v41, 1))
          {
            goto LABEL_53;
          }

          v38 = a6(v38, v41 + 1);
        }

        else
        {
          v42 = v39;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v38;
        a2 = v38;
        v44 = sub_1955EBE7C(a1);
        v45 = *(v38 + 16);
        v46 = (v43 & 1) == 0;
        if (__OFADD__(v45, v46))
        {
          goto LABEL_52;
        }

        v8 = v43;
        if (*(v38 + 24) >= v45 + v46)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v24 = v69;
            if ((v43 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else
          {
            a2 = &v69;
            a8();
            v24 = v69;
            if ((v8 & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          a7();
          a2 = v69;
          v47 = sub_1955EBE7C(a1);
          if ((v8 & 1) != (v48 & 1))
          {
            sub_1954C3460(0, &qword_1EAECE190);
            result = sub_19565DB5C();
            __break(1u);
            return result;
          }

          v44 = v47;
          v24 = v69;
          if ((v8 & 1) == 0)
          {
LABEL_35:
            v24[(v44 >> 6) + 8].isa = (v24[(v44 >> 6) + 8].isa | (1 << v44));
            *(v24[6].isa + v44) = a1;
            *(v24[7].isa + v44) = v32;

            isa = v24[2].isa;
            v50 = __OFADD__(isa, 1);
            v51 = (isa + 1);
            if (v50)
            {
              goto LABEL_54;
            }

            v24[2].isa = v51;
            goto LABEL_16;
          }
        }

        v29 = v24[7].isa;
        a2 = *(v29 + v44);
        *(v29 + v44) = v32;

LABEL_16:
        v8 = v68 + 1;
        a1 = v62;
        if (v70 == v61)
        {
          goto LABEL_42;
        }

        continue;
      }
    }

    __break(1u);
LABEL_57:
    ;
  }

  v27 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v15)
  {
    goto LABEL_41;
  }

LABEL_13:
  v28 = *(v27 + 16);
  if (v28)
  {
    goto LABEL_14;
  }

LABEL_42:

  v52 = sub_19565D0CC();
  v53 = sub_19565D68C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    if (v58)
    {
      v55 = sub_19565D81C();
    }

    else
    {
      v55 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v54 + 4) = v55;

    _os_log_impl(&dword_1954A0000, v52, v53, "Finished copying attributes for %ld objects.", v54, 0xCu);
    MEMORY[0x19A8B5DB0](v54, -1, -1);
  }

  else
  {
  }

  return v24;
}

void sub_1955FF0B4(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = [*a1 persistentStoreCoordinator];
  v7 = [v6 metadataForPersistentStore_];

  v8 = sub_19565D17C();
  v9 = type metadata accessor for BackupRestoreMigrator(0);
  if (*(v8 + 16) && (v10 = sub_1954C2328(*(a1 + *(v9 + 32)), *(a1 + *(v9 + 32) + 8)), (v11 & 1) != 0))
  {
    sub_1954C2458(*(v8 + 56) + 32 * v10, v18);

    if (swift_dynamicCast())
    {
      v12 = v17;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_7:
  swift_beginAccess();
  *(a3 + 16) = v12;
  if (qword_1EAECD988 != -1)
  {
    swift_once();
  }

  v13 = sub_19565D0EC();
  __swift_project_value_buffer(v13, qword_1EAECDDC0);

  v14 = sub_19565D0CC();
  v15 = sub_19565D68C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    swift_beginAccess();
    *(v16 + 4) = *(a3 + 16);

    _os_log_impl(&dword_1954A0000, v14, v15, "Read recovery attempt count: %ld", v16, 0xCu);
    MEMORY[0x19A8B5DB0](v16, -1, -1);
  }

  else
  {
  }
}

void sub_1955FF2E0(id *a1, uint64_t a2, uint64_t a3, void *a4, void **a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = [*a1 persistentStoreCoordinator];
  v10 = [v9 metadataForPersistentStore_];

  sub_19565D17C();
  v11 = (a1 + *(type metadata accessor for BackupRestoreMigrator(0) + 32));
  v13 = *v11;
  v12 = v11[1];
  v40 = MEMORY[0x1E69E6530];
  v39[0] = a3;
  sub_1955EBBA0(v39, v38);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1956262E0(v38, v13, v12, isUniquelyReferenced_nonNull_native);
  v15 = [v8 persistentStoreCoordinator];
  v16 = sub_19565D16C();

  [v15 setMetadata:v16 forPersistentStore:a2];

  v39[0] = 0;
  if ([a4 save_])
  {
    v17 = qword_1EAECD988;
    v18 = v39[0];
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = sub_19565D0EC();
    __swift_project_value_buffer(v19, qword_1EAECDDC0);
    v20 = sub_19565D0CC();
    v21 = sub_19565D68C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = a3;
      _os_log_impl(&dword_1954A0000, v20, v21, "Set recovery attempt count to %ld and saved metadata.", v22, 0xCu);
      MEMORY[0x19A8B5DB0](v22, -1, -1);
    }
  }

  else
  {
    v23 = v39[0];
    v24 = sub_19565CE6C();

    swift_willThrow();
    v25 = *a5;
    *a5 = v24;
    v26 = v24;

    if (qword_1EAECD988 != -1)
    {
      swift_once();
    }

    v27 = sub_19565D0EC();
    __swift_project_value_buffer(v27, qword_1EAECDDC0);
    v28 = v24;
    v29 = sub_19565D0CC();
    v30 = sub_19565D69C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39[0] = v32;
      *v31 = 136315138;
      swift_getErrorValue();
      v33 = sub_19565DB8C();
      v35 = sub_1955EA0F8(v33, v34, v39);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1954A0000, v29, v30, "Failed to set and save metadata for store: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x19A8B5DB0](v32, -1, -1);
      MEMORY[0x19A8B5DB0](v31, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1955FF6FC(unint64_t a1, uint64_t a2, _BYTE *a3, void *a4)
{
  if (a1 >> 62)
  {
LABEL_23:
    v5 = sub_19565D81C();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  v6 = 0;
  v32 = v5;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x19A8B3850](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v11 = [v8 name];
    if (v11)
    {
      break;
    }

LABEL_6:

    ++v6;
    if (v10 == v5)
    {
      return;
    }
  }

  v12 = v11;
  v34 = sub_19565D28C();
  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];

  [v15 setFetchLimit_];
  sub_1954C3460(0, &qword_1EAECDE78);
  v16 = sub_19565D6FC();
  if (v16 >> 62)
  {
    v7 = sub_19565D81C();
    v5 = v32;

    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v17)
  {
LABEL_5:

    goto LABEL_6;
  }

LABEL_15:
  *a3 = 1;
  if (qword_1EAECD988 != -1)
  {
    swift_once();
  }

  v18 = sub_19565D0EC();
  __swift_project_value_buffer(v18, qword_1EAECDDC0);
  v19 = a4;

  v20 = sub_19565D0CC();
  v21 = sub_19565D68C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35[0] = v23;
    *v22 = 136315394;
    v24 = [v19 name];
    v25 = v9;
    v26 = sub_19565D28C();
    v28 = v27;

    v29 = sub_1955EA0F8(v26, v28, v35);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2080;
    v30 = sub_1955EA0F8(v34, v14, v35);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_1954A0000, v20, v21, "Container %s has data in entity: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v23, -1, -1);
    MEMORY[0x19A8B5DB0](v22, -1, -1);
  }

  else
  {
  }
}

id sub_1955FFCE8()
{
  v2 = sub_1955FFF00();
  if (!v1)
  {
    v3 = v2;
    v4 = objc_allocWithZone(MEMORY[0x1E695D688]);
    v5 = v3;
    v6 = sub_19565D27C();
    v0 = [v4 initWithName:v6 managedObjectModel:v5];

    v7 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
    v8 = sub_19565CE9C();
    v9 = [v7 initWithURL_];

    sub_1954C3460(0, &qword_1EAECB930);
    v10 = sub_19565D72C();
    [v9 setOption:v10 forKey:*MEMORY[0x1E695D3C0]];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_19567B7B0;
    *(v11 + 32) = v9;
    sub_1954C3460(0, &qword_1EAECB928);
    v12 = v9;
    v13 = sub_19565D3EC();

    [v0 setPersistentStoreDescriptions_];
  }

  return v0;
}

void sub_1955FFEA0(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  v6 = a2;
}

id sub_1955FFF00()
{
  v1 = type metadata accessor for BackupRestoreMigrator(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19565CEFC();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - v7;
  sub_1954C3460(0, &qword_1EAECDEB0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = (v0 + *(v1 + 24));
  v12 = v11[1];
  v49 = *v11;
  v50 = v12;
  v13 = sub_19565D27C();
  v14 = sub_19565D27C();
  v15 = [v10 URLForResource:v13 withExtension:v14];

  if (v15)
  {
    sub_19565CEDC();

    v16 = objc_allocWithZone(MEMORY[0x1E695D638]);
    v17 = sub_19565CE9C();
    v18 = [v16 initWithContentsOfURL_];

    if (v18)
    {
      (*(v51 + 8))(v8, v52);
    }

    else
    {
      v29 = v51;
      v28 = v52;
      if (qword_1EAECD988 != -1)
      {
        swift_once();
      }

      v30 = sub_19565D0EC();
      __swift_project_value_buffer(v30, qword_1EAECDDC0);
      v31 = v48;
      (*(v29 + 16))(v48, v8, v28);
      v32 = sub_19565D0CC();
      v33 = sub_19565D69C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v47 = v8;
        v35 = v34;
        v36 = v31;
        v37 = swift_slowAlloc();
        v53 = v37;
        *v35 = 136315138;
        v38 = sub_19565CEEC();
        v40 = v39;
        v41 = *(v29 + 8);
        v41(v36, v52);
        v42 = sub_1955EA0F8(v38, v40, &v53);
        v28 = v52;

        *(v35 + 4) = v42;
        _os_log_impl(&dword_1954A0000, v32, v33, "Failed to load Core Data model from URL %s.", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x19A8B5DB0](v37, -1, -1);
        v43 = v35;
        v8 = v47;
        MEMORY[0x19A8B5DB0](v43, -1, -1);
      }

      else
      {

        v41 = *(v29 + 8);
        v41(v31, v28);
      }

      type metadata accessor for BackupRestoreError(0);
      sub_195600A84();
      swift_allocError();
      v18 = v50;
      *v45 = v49;
      v45[1] = v18;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v41(v8, v28);
    }
  }

  else
  {
    if (qword_1EAECD988 != -1)
    {
      swift_once();
    }

    v19 = sub_19565D0EC();
    __swift_project_value_buffer(v19, qword_1EAECDDC0);
    sub_195600850(v0, v3);
    v20 = sub_19565D0CC();
    v21 = sub_19565D69C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v53 = v23;
      *v22 = 136315138;
      v24 = &v3[*(v1 + 24)];
      v25 = *v24;
      v26 = v24[1];

      sub_1956008B4(v3);
      v27 = sub_1955EA0F8(v25, v26, &v53);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1954A0000, v20, v21, "Core Data model '%s' not found.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x19A8B5DB0](v23, -1, -1);
      MEMORY[0x19A8B5DB0](v22, -1, -1);
    }

    else
    {

      sub_1956008B4(v3);
    }

    type metadata accessor for BackupRestoreError(0);
    sub_195600A84();
    swift_allocError();
    v18 = v50;
    *v44 = v49;
    v44[1] = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v18;
}

uint64_t BackupRestoreMigrator.MigrationDirection.description.getter(char a1)
{
  if (a1)
  {
    return 0x65726F74736572;
  }

  else
  {
    return 0x70756B636162;
  }
}

Contacts::BackupRestoreMigrator::MigrationDirection_optional __swiftcall BackupRestoreMigrator.MigrationDirection.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_19565DA8C();

  if (v1 == 1)
  {
    v2.value = Contacts_BackupRestoreMigrator_MigrationDirection_restore;
  }

  else
  {
    v2.value = Contacts_BackupRestoreMigrator_MigrationDirection_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_195600560(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65726F74736572;
  }

  else
  {
    v3 = 0x70756B636162;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x65726F74736572;
  }

  else
  {
    v5 = 0x70756B636162;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19565DB1C();
  }

  return v8 & 1;
}

uint64_t sub_195600604()
{
  sub_19565DBDC();
  sub_19565D30C();

  return sub_19565DBFC();
}

uint64_t sub_195600684()
{
  sub_19565D30C();
}

uint64_t sub_1956006F0()
{
  sub_19565DBDC();
  sub_19565D30C();

  return sub_19565DBFC();
}

uint64_t sub_19560076C@<X0>(char *a1@<X8>)
{
  v2 = sub_19565DA8C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1956007CC(uint64_t *a1@<X8>)
{
  v2 = 0x70756B636162;
  if (*v1)
  {
    v2 = 0x65726F74736572;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_195600808()
{
  if (*v0)
  {
    return 0x65726F74736572;
  }

  else
  {
    return 0x70756B636162;
  }
}

uint64_t sub_195600850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackupRestoreMigrator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1956008B4(uint64_t a1)
{
  v2 = type metadata accessor for BackupRestoreMigrator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_195600910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackupRestoreMigrator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_195600974()
{
  v1 = *(type metadata accessor for BackupRestoreMigrator(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1955FF0B4((v0 + v2), v4, v5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_195600A4C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_195600A84()
{
  result = qword_1EAECDDE8;
  if (!qword_1EAECDDE8)
  {
    type metadata accessor for BackupRestoreError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECDDE8);
  }

  return result;
}

void sub_195600ADC()
{
  v1 = *(type metadata accessor for BackupRestoreMigrator(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1955FF2E0((v0 + v2), v6, v7, v8, v9);
}

unint64_t sub_195600B90()
{
  result = qword_1EAECDDF0;
  if (!qword_1EAECDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECDDF0);
  }

  return result;
}

uint64_t sub_195600C50()
{
  result = sub_1954C3460(319, &qword_1EAECDE18);
  if (v1 <= 0x3F)
  {
    result = sub_19565CEFC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BackupRestoreMigrator.MigrationDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackupRestoreMigrator.MigrationDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_195600EC8()
{
  sub_195600F94();
  if (v0 <= 0x3F)
  {
    sub_195600FC4();
    if (v1 <= 0x3F)
    {
      sub_195601070();
      if (v2 <= 0x3F)
      {
        sub_1956010E8();
        if (v3 <= 0x3F)
        {
          sub_19560116C();
          if (v4 <= 0x3F)
          {
            sub_1956011EC();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_195600F94()
{
  result = qword_1EAECDE30;
  if (!qword_1EAECDE30)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EAECDE30);
  }

  return result;
}

void sub_195600FC4()
{
  if (!qword_1EAECDE38)
  {
    v0 = sub_19560100C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAECDE38);
    }
  }
}

unint64_t sub_19560100C()
{
  result = qword_1EAECDE40;
  if (!qword_1EAECDE40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EAECDE40);
  }

  return result;
}

void sub_195601070()
{
  if (!qword_1EAECDE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAECE100);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EAECDE48);
    }
  }
}

void sub_1956010E8()
{
  if (!qword_1EAECDE50)
  {
    sub_19565CEFC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAECE100);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EAECDE50);
    }
  }
}

void sub_19560116C()
{
  if (!qword_1EAECDE58)
  {
    sub_19565CEFC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAECE100);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EAECDE58);
    }
  }
}

uint64_t sub_1956011EC()
{
  result = qword_1EAECDE60;
  if (!qword_1EAECDE60)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EAECDE60);
  }

  return result;
}

uint64_t sub_19560121C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEA0);
    v2 = sub_19565DA6C();
    v19 = v2;
    sub_19565D9DC();
    v3 = sub_19565DA0C();
    if (v3)
    {
      v4 = v3;
      sub_1954C3460(0, &qword_1EAECE190);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1954C3460(0, &qword_1EAECDE80);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_195624BD0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_19565D74C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_19565DA0C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_195601468(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE1A0);
    v2 = sub_19565DA6C();
    v19 = v2;
    sub_19565D9DC();
    v3 = sub_19565DA0C();
    if (v3)
    {
      v4 = v3;
      sub_1954C3460(0, &qword_1EAECE190);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1954C3460(0, &qword_1EAECDDE0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_195624BE4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_19565D74C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_19565DA0C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1956016B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEA8);
    v2 = sub_19565DA6C();
    v19 = v2;
    sub_19565D9DC();
    v3 = sub_19565DA0C();
    if (v3)
    {
      v4 = v3;
      sub_1954C3460(0, &qword_1EAECE190);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1954C3460(0, &qword_1EAECDDD8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_195624BF8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_19565D74C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_19565DA0C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_195601910(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_195601980()
{
  v0 = sub_19565D0EC();
  __swift_allocate_value_buffer(v0, qword_1EAED0998);
  __swift_project_value_buffer(v0, qword_1EAED0998);
  return sub_19565D0DC();
}

id sub_1956019F0()
{
  v1 = OBJC_IVAR____TtC8Contacts28CNContactProviderSupportHost____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC8Contacts28CNContactProviderSupportHost____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Contacts28CNContactProviderSupportHost____lazy_storage___contactStore);
  }

  else
  {
    v4 = [objc_allocWithZone(CNContactStore) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_195601A64(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEB8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v37 = sub_19565D0BC();
  v10 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19565D0EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_1EAED0998);
  v38 = v13;
  v39 = v12;
  (*(v13 + 16))(v15, v16, v12);
  if (qword_1EAECB7E8 != -1)
  {
    swift_once();
  }

  v36 = v10;
  v17 = qword_1EAECB7F0;

  v18 = sub_19565D0CC();
  v19 = sub_19565D6AC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40[0] = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1955EA0F8(a1, a2, v40);
    _os_log_impl(&dword_1954A0000, v18, v19, "providerContainer(for: %{public}s)", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x19A8B5DB0](v21, -1, -1);
    MEMORY[0x19A8B5DB0](v20, -1, -1);
  }

  v22 = *(v17 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v24 = MEMORY[0x1EEE9AC00](v23);
  *(&v35 - 4) = v17;
  *(&v35 - 3) = a1;
  *(&v35 - 2) = a2;
  MEMORY[0x1EEE9AC00](v24);
  *(&v35 - 2) = sub_1956109C8;
  *(&v35 - 1) = v25;
  os_unfair_lock_lock(v22 + 4);
  sub_195610A10();
  os_unfair_lock_unlock(v22 + 4);
  sub_195610A38(v7, v9);
  v27 = v36;
  v26 = v37;
  if ((*(v36 + 48))(v9, 1, v37) == 1)
  {
    sub_1954C2698(v9, &qword_1EAECDEB8);

    v28 = sub_19565D0CC();
    v29 = sub_19565D69C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40[0] = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_1955EA0F8(a1, a2, v40);
      _os_log_impl(&dword_1954A0000, v28, v29, "providerContainer() did not find extension for %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x19A8B5DB0](v31, -1, -1);
      MEMORY[0x19A8B5DB0](v30, -1, -1);
    }

    (*(v38 + 8))(v15, v39);
    return 0;
  }

  else
  {
    v33 = v35;
    (*(v27 + 32))(v35, v9, v26);
    v34 = sub_19560E29C(v33);
    (*(v27 + 8))(v33, v26);
    (*(v38 + 8))(v15, v39);
    return v34;
  }
}

uint64_t sub_195602020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_19565D07C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_19565D0EC();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_195602140, 0, 0);
}

uint64_t sub_195602140()
{
  v17 = v0;
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v3, qword_1EAED0998);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_19565D0CC();
  v6 = sub_19565D6AC();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1955EA0F8(v8, v7, &v16);
    _os_log_impl(&dword_1954A0000, v5, v6, "synchronize(using session:, bundleIdentifier: %{public}s)", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x19A8B5DB0](v10, -1, -1);
    MEMORY[0x19A8B5DB0](v9, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_195602324;
  v12 = v0[8];
  v13 = v0[4];
  v14 = v0[3];

  return sub_19560C4B0(v12, v14, v13);
}

uint64_t sub_195602324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[13] = a1;
  v6[14] = a2;
  v6[15] = a3;
  v6[16] = a4;
  v6[17] = v4;

  if (v4)
  {
    v7 = sub_195602888;
  }

  else
  {
    v7 = sub_195602440;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_195602440()
{
  v1 = *(v0 + 136);
  v2 = sub_19565D06C();
  *(v0 + 144) = v2;
  if (v1)
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = v2;
    v16 = *(v0 + 120);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 88);
    v9 = *(v0 + 40);
    v15 = *(v0 + 32);
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = [objc_opt_self() interfaceWithProtocol_];
    [v5 setRemoteObjectInterface_];

    [v5 resume];
    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = v8;
    *(v13 + 32) = v7;
    *(v13 + 40) = v6;
    *(v13 + 48) = v16;
    *(v13 + 64) = v11;
    *(v13 + 72) = v9;
    *(v13 + 80) = v10;
    *(v13 + 88) = v15;
    v14 = swift_task_alloc();
    *(v0 + 160) = v14;
    *v14 = v0;
    v14[1] = sub_19560268C;

    return MEMORY[0x1EEE6DE38]();
  }
}

uint64_t sub_19560268C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_195602918;
  }

  else
  {

    v2 = sub_1956027C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1956027C8()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_195602888()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_195602918()
{
  v1 = v0[5];

  v2 = sub_19565CE5C();
  v3 = [v2 domain];
  v4 = sub_19565D28C();
  v6 = v5;

  if (v4 == *(v1 + OBJC_IVAR____TtC8Contacts28CNContactProviderSupportHost_ContactProviderErrorDomain) && v6 == *(v1 + OBJC_IVAR____TtC8Contacts28CNContactProviderSupportHost_ContactProviderErrorDomain + 8))
  {
  }

  else
  {
    v8 = sub_19565DB1C();

    if ((v8 & 1) == 0)
    {

LABEL_13:
      if (sub_195603A00(v0[21], v0[5]))
      {
        sub_195606294(v0[3], v0[4]);
      }

      v14 = v0[18];
      v16 = v0[7];
      v15 = v0[8];
      v17 = v0[6];
      swift_willThrow();

      (*(v16 + 8))(v15, v17);
      (*(v0[10] + 8))(v0[11], v0[9]);

      v18 = v0[1];

      return v18();
    }
  }

  v9 = [v2 code];

  if (v9 != 1007)
  {

    goto LABEL_13;
  }

  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_195602B78;
  v12 = v0[13];
  v11 = v0[14];

  return sub_195610BF0(v12, v11);
}

uint64_t sub_195602B78()
{

  return MEMORY[0x1EEE6DFA0](sub_195602C90, 0, 0);
}

uint64_t sub_195602C90()
{
  if (sub_195603A00(v0[21], v0[5]))
  {
    sub_195606294(v0[3], v0[4]);
  }

  v1 = v0[18];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  swift_willThrow();

  (*(v3 + 8))(v2, v4);
  (*(v0[10] + 8))(v0[11], v0[9]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_195602DB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11)
{
  v93 = a8;
  v98 = a5;
  v99 = a7;
  v101 = a4;
  v102 = a6;
  v95 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEE8);
  v100 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v73 - v16;
  v94 = &v73 - v16;
  v18 = sub_19565D0EC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v19 + 16);
  v96 = a3;
  v87 = v19 + 16;
  v86 = v22;
  v22(v21, a3, v18);
  v23 = *(v14 + 16);
  v97 = a1;
  v85 = v14 + 16;
  v84 = v23;
  v23(v17, a1, v13);
  v24 = *(v19 + 80);
  v25 = (v24 + 16) & ~v24;
  v83 = v20 + 7;
  v26 = (v20 + 7 + v25) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = *(v14 + 80);
  v81 = (v28 + 16);
  v29 = (v28 + 16 + v27) & ~v28;
  v80 = v24;
  v79 = v28;
  v91 = v15;
  v82 = v24 | v28;
  v30 = swift_allocObject();
  v31 = *(v19 + 32);
  v88 = v21;
  v32 = v21;
  v33 = v98;
  v90 = v18;
  v89 = v19 + 32;
  v31(v30 + v25, v32, v18);
  v34 = (v30 + v26);
  v35 = v102;
  *v34 = v101;
  v34[1] = v33;
  v36 = (v30 + v27);
  v37 = v99;
  *v36 = v35;
  v36[1] = v37;
  v38 = *(v14 + 32);
  v39 = v30 + v29;
  v40 = v94;
  v92 = v14 + 32;
  v38(v39);
  v108 = sub_195613054;
  v109 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v105 = 1107296256;
  v106 = sub_195603620;
  v107 = &block_descriptor_195;
  v41 = _Block_copy(&aBlock);

  v42 = [v95 remoteObjectProxyWithErrorHandler_];
  _Block_release(v41);
  sub_19565D7CC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEF0);
  if (swift_dynamicCast())
  {
    v77 = v38;
    v78 = v31;
    v95 = a11;
    v75 = a10;
    v76 = a9;
    v43 = v80;
    v73 = ~v80;
    v74 = ~v79;
    v44 = v103;

    v79 = v44;
    swift_unknownObjectRetain();
    v45 = v96;
    v46 = sub_19565D0CC();
    v47 = sub_19565D6AC();

    v48 = v43;
    if (os_log_type_enabled(v46, v47))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock = v50;
      *v49 = 136446466;
      *(v49 + 4) = sub_1955EA0F8(v101, v33, &aBlock);
      *(v49 + 12) = 2082;
      *(v49 + 14) = sub_1955EA0F8(v102, v37, &aBlock);
      _os_log_impl(&dword_1954A0000, v46, v47, "synchronize() will synchronize extension %{public}s for %{public}s app", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v50, -1, -1);
      MEMORY[0x19A8B5DB0](v49, -1, -1);
    }

    v51 = v88;
    v52 = v90;
    v86(v88, v45, v90);
    v53 = v100;
    v84(v40, v97, v100);
    v54 = (v48 + 40) & v73;
    v55 = (v83 + v54) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
    v57 = &v81[v56] & v74;
    v58 = swift_allocObject();
    v59 = v76;
    v60 = v75;
    *(v58 + 2) = v76;
    *(v58 + 3) = v60;
    *(v58 + 4) = v95;
    v78(&v58[v54], v51, v52);
    v61 = &v58[v55];
    v62 = v102;
    v64 = v98;
    v63 = v99;
    *v61 = v101;
    *(v61 + 1) = v64;
    v65 = &v58[v56];
    *v65 = v62;
    v65[1] = v63;
    v77(&v58[v57], v40, v53);
    v108 = sub_195613308;
    v109 = v58;
    aBlock = MEMORY[0x1E69E9820];
    v105 = 1107296256;
    v106 = sub_195603994;
    v107 = &block_descriptor_201;
    v66 = _Block_copy(&aBlock);

    v67 = v59;

    [v79 synchronizeUsing:v93 reply:v66];
    _Block_release(v66);
    return swift_unknownObjectRelease_n();
  }

  else
  {

    v69 = sub_19565D0CC();
    v70 = sub_19565D69C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      aBlock = v72;
      *v71 = 136446466;
      *(v71 + 4) = sub_1955EA0F8(v101, v33, &aBlock);
      *(v71 + 12) = 2082;
      *(v71 + 14) = sub_1955EA0F8(v102, v37, &aBlock);
      _os_log_impl(&dword_1954A0000, v69, v70, "synchronize() failed due to some XPC connection error with extension %{public}s for %{public}s app, extension proxy might not conform to CNContactProviderExtensionXPCProtocol.", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v72, -1, -1);
      MEMORY[0x19A8B5DB0](v71, -1, -1);
    }

    type metadata accessor for CNError(0);
    v103 = 1;
    sub_1956128FC(MEMORY[0x1E69E7CC0]);
    sub_195612A2C();
    sub_19565CE4C();
    v103 = aBlock;
    return sub_19565D51C();
  }
}

void sub_195603620(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_195603688(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  sub_195612A9C(a3, a4);
  if (a1)
  {
    v13 = a1;

    v14 = sub_19565D0CC();
    v15 = sub_19565D69C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136446722;
      *(v16 + 4) = sub_1955EA0F8(a6, a7, &v27);
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1955EA0F8(a8, a9, &v27);
      *(v16 + 22) = 2082;
      v18 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
      v19 = sub_19565D2EC();
      v21 = sub_1955EA0F8(v19, v20, &v27);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_1954A0000, v14, v15, "synchronize() failed to synchronize extension %{public}s for %{public}s app, error = %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v17, -1, -1);
      MEMORY[0x19A8B5DB0](v16, -1, -1);
    }

    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEE8);
    return sub_19565D51C();
  }

  else
  {

    v23 = sub_19565D0CC();
    v24 = sub_19565D6AC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v25 = 136446466;
      *(v25 + 4) = sub_1955EA0F8(a6, a7, &v27);
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_1955EA0F8(a8, a9, &v27);
      _os_log_impl(&dword_1954A0000, v23, v24, "synchronize() did synchronize extension %{public}s for %{public}s app", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v26, -1, -1);
      MEMORY[0x19A8B5DB0](v25, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEE8);
    return sub_19565D52C();
  }
}

void sub_195603994(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

BOOL sub_195603A00(uint64_t a1, uint64_t a2)
{
  v3 = sub_19565CE5C();
  v4 = [v3 domain];
  v5 = sub_19565D28C();
  v7 = v6;

  if (v5 == *(a2 + OBJC_IVAR____TtC8Contacts28CNContactProviderSupportHost_ContactProviderErrorDomain) && v7 == *(a2 + OBJC_IVAR____TtC8Contacts28CNContactProviderSupportHost_ContactProviderErrorDomain + 8))
  {
  }

  else
  {
    v9 = sub_19565DB1C();

    if ((v9 & 1) == 0)
    {

      return 0;
    }
  }

  if ([v3 code] == 1003)
  {

    return 1;
  }

  else
  {
    v11 = [v3 code];

    return v11 == 1004;
  }
}

uint64_t sub_195603C80(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_19565D28C();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_195603D6C;

  return sub_195602020(v10, v7, v9);
}

uint64_t sub_195603D6C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_19565CE5C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_195603F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEB8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v6 = sub_19565D0BC();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = sub_19565D0EC();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_195604094, 0, 0);
}

id sub_195604094()
{
  v58 = v0;
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = __swift_project_value_buffer(v3, qword_1EAED0998);
  (*(v2 + 16))(v1, v4, v3);
  if (qword_1EAECB7E8 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAECB7F0;

  v6 = sub_19565D0CC();
  v7 = sub_19565D6AC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[4];
    v8 = v0[5];
    v11 = v0[2];
    v10 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v57[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1955EA0F8(v11, v10, v57);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_1955EA0F8(v9, v8, v57);
    _os_log_impl(&dword_1954A0000, v6, v7, "invalidateExtension(for: %s, bundleIdentifier: %{public}s)", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v13, -1, -1);
    MEMORY[0x19A8B5DB0](v12, -1, -1);
  }

  v15 = v0[4];
  v14 = v0[5];
  v16 = *(v5 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v17 = swift_task_alloc();
  v17[2] = v5;
  v17[3] = v15;
  v17[4] = v14;
  v18 = swift_task_alloc();
  *(v18 + 16) = sub_195613548;
  *(v18 + 24) = v17;
  os_unfair_lock_lock(v16 + 4);
  sub_195613588();
  os_unfair_lock_unlock(v16 + 4);

  v19 = v0[9];
  v20 = v0[10];
  v22 = v0[7];
  v21 = v0[8];

  sub_195610A38(v22, v21);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    sub_1954C2698(v0[8], &qword_1EAECDEB8);

    v23 = sub_19565D0CC();
    v24 = sub_19565D69C();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[4];
      v25 = v0[5];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v57[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_1955EA0F8(v26, v25, v57);
      _os_log_impl(&dword_1954A0000, v23, v24, "invalidateExtension() did not find extension for %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x19A8B5DB0](v28, -1, -1);
      MEMORY[0x19A8B5DB0](v27, -1, -1);
    }

    result = [objc_opt_self() errorWithCode_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    swift_willThrow();
    (*(v0[13] + 8))(v0[14], v0[12]);

    v30 = v0[1];
    goto LABEL_22;
  }

  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  v31 = _s19ExtensionFoundation04_AppA8IdentityV8ContactsE03appA16BundleIdentifierSSvg_0();
  v33 = v32;
  v0[15] = v31;
  v0[16] = v32;
  v34 = _AppExtensionIdentity.appDisplayName.getter();
  v36 = v35;
  v0[17] = v34;
  v0[18] = v35;

  v37 = sub_19565D0CC();
  v38 = sub_19565D6AC();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v57[0] = v40;
    *v39 = 136446466;
    *(v39 + 4) = sub_1955EA0F8(v31, v33, v57);
    *(v39 + 12) = 2082;
    *(v39 + 14) = sub_1955EA0F8(v34, v36, v57);
    _os_log_impl(&dword_1954A0000, v37, v38, "invalidateExtension() will invalidate extension %{public}s for %{public}s app", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v40, -1, -1);
    MEMORY[0x19A8B5DB0](v39, -1, -1);
  }

  v41 = sub_19560E29C(v0[11]);
  if (!v41 || (v42 = v41, v43 = [v41 isEnabled], v42, !v43))
  {

    v47 = sub_19565D0CC();
    v48 = sub_19565D6AC();
    v49 = os_log_type_enabled(v47, v48);
    v51 = v0[13];
    v50 = v0[14];
    v53 = v0[11];
    v52 = v0[12];
    v54 = v0[9];
    v55 = v0[10];
    if (v49)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1954A0000, v47, v48, "invalidateExtension() did not invalidate as extension is disabled", v56, 2u);
      MEMORY[0x19A8B5DB0](v56, -1, -1);
    }

    (*(v55 + 8))(v53, v54);
    (*(v51 + 8))(v50, v52);

    v30 = v0[1];
LABEL_22:

    return v30();
  }

  v44 = swift_task_alloc();
  v0[19] = v44;
  *v44 = v0;
  v44[1] = sub_1956047DC;
  v46 = v0[2];
  v45 = v0[3];

  return sub_19560F110(v46, v45, v31, v33);
}

uint64_t sub_1956047DC()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_195604B74;
  }

  else
  {
    v2 = sub_195604904;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195604904()
{
  v27 = v0;

  v1 = sub_19565D0CC();
  v2 = sub_19565D6AC();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[18];
  if (v3)
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];
    v24 = v0[12];
    v25 = v0[14];
    v8 = v0[10];
    v22 = v0[11];
    v23 = v0[13];
    v21 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446466;
    v11 = sub_1955EA0F8(v7, v6, &v26);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2082;
    v12 = sub_1955EA0F8(v5, v4, &v26);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_1954A0000, v1, v2, "invalidateExtension() did invalidate extension %{public}s for %{public}s app", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v10, -1, -1);
    MEMORY[0x19A8B5DB0](v9, -1, -1);

    (*(v8 + 8))(v22, v21);
    (*(v23 + 8))(v25, v24);
  }

  else
  {
    v14 = v0[13];
    v13 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[9];
    v18 = v0[10];

    (*(v18 + 8))(v16, v17);
    (*(v14 + 8))(v13, v15);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_195604B74()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_195604DC8(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_19565D28C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_19565D28C();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_195613540;

  return sub_195603F2C(v6, v8, v9, v11);
}

uint64_t sub_195604EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEB8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v6 = sub_19565D0BC();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_19565D0EC();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19560502C, 0, 0);
}

id sub_19560502C()
{
  v61 = v0;
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = __swift_project_value_buffer(v3, qword_1EAED0998);
  (*(v2 + 16))(v1, v4, v3);
  if (qword_1EAECB7E8 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAECB7F0;

  v6 = sub_19565D0CC();
  v7 = sub_19565D6AC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[5];
    v8 = v0[6];
    v11 = v0[3];
    v10 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v60[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1955EA0F8(v11, v10, v60);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_1955EA0F8(v9, v8, v60);
    _os_log_impl(&dword_1954A0000, v6, v7, "resetEnumeration(for: %s, bundleIdentifier: %{public}s)", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v13, -1, -1);
    MEMORY[0x19A8B5DB0](v12, -1, -1);
  }

  v15 = v0[5];
  v14 = v0[6];
  v16 = *(v5 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v17 = swift_task_alloc();
  v17[2] = v5;
  v17[3] = v15;
  v17[4] = v14;
  v18 = swift_task_alloc();
  *(v18 + 16) = sub_195613548;
  *(v18 + 24) = v17;
  os_unfair_lock_lock(v16 + 4);
  sub_195613588();
  os_unfair_lock_unlock(v16 + 4);

  v19 = v0[10];
  v20 = v0[11];
  v22 = v0[8];
  v21 = v0[9];

  sub_195610A38(v22, v21);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    sub_1954C2698(v0[9], &qword_1EAECDEB8);

    v23 = sub_19565D0CC();
    v24 = sub_19565D69C();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[5];
      v25 = v0[6];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v60[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_1955EA0F8(v26, v25, v60);
      _os_log_impl(&dword_1954A0000, v23, v24, "resetEnumeration() did not find extension for %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x19A8B5DB0](v28, -1, -1);
      MEMORY[0x19A8B5DB0](v27, -1, -1);
    }

    result = [objc_opt_self() errorWithCode_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v31 = v0[14];
    v30 = v0[15];
    v32 = v0[13];
    swift_willThrow();
    (*(v31 + 8))(v30, v32);

    v33 = v0[1];
    goto LABEL_22;
  }

  (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  v34 = _s19ExtensionFoundation04_AppA8IdentityV8ContactsE03appA16BundleIdentifierSSvg_0();
  v36 = v35;
  v0[16] = v34;
  v0[17] = v35;
  v37 = _AppExtensionIdentity.appDisplayName.getter();
  v39 = v38;
  v0[18] = v37;
  v0[19] = v38;

  v40 = sub_19565D0CC();
  v41 = sub_19565D6AC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v60[0] = v43;
    *v42 = 136446466;
    *(v42 + 4) = sub_1955EA0F8(v34, v36, v60);
    *(v42 + 12) = 2082;
    *(v42 + 14) = sub_1955EA0F8(v37, v39, v60);
    _os_log_impl(&dword_1954A0000, v40, v41, "resetEnumeration() will reset extension %{public}s for %{public}s app", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v43, -1, -1);
    MEMORY[0x19A8B5DB0](v42, -1, -1);
  }

  v44 = sub_19560E29C(v0[12]);
  if (!v44 || (v45 = v44, v46 = [v44 isEnabled], v45, !v46))
  {

    v50 = sub_19565D0CC();
    v51 = sub_19565D6AC();
    v52 = os_log_type_enabled(v50, v51);
    v54 = v0[14];
    v53 = v0[15];
    v56 = v0[12];
    v55 = v0[13];
    v57 = v0[10];
    v58 = v0[11];
    if (v52)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1954A0000, v50, v51, "resetEnumeration() did not reset as extension is disabled", v59, 2u);
      MEMORY[0x19A8B5DB0](v59, -1, -1);
    }

    (*(v58 + 8))(v56, v57);
    (*(v54 + 8))(v53, v55);

    v33 = v0[1];
LABEL_22:

    return v33();
  }

  v47 = swift_task_alloc();
  v0[20] = v47;
  *v47 = v0;
  v47[1] = sub_19560577C;
  v49 = v0[3];
  v48 = v0[4];

  return sub_19560F110(v49, v48, v34, v36);
}

uint64_t sub_19560577C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_195605B98;
  }

  else
  {
    v2 = sub_195605890;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_195605890()
{
  v34 = v0;
  v1 = v0[21];
  sub_195606294(v0[5], v0[6]);
  v2 = v0[15];
  if (v1)
  {
    v3 = v0[13];
    v4 = v0[14];
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[10];

    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v2, v3);

    v8 = v0[1];
  }

  else
  {

    v9 = sub_19565D0CC();
    v10 = sub_19565D6AC();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[19];
    if (v11)
    {
      v14 = v0[17];
      v13 = v0[18];
      v15 = v0[16];
      v31 = v0[13];
      v32 = v0[15];
      v16 = v0[11];
      v29 = v0[12];
      v30 = v0[14];
      v28 = v0[10];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33[0] = v18;
      *v17 = 136446466;
      v19 = sub_1955EA0F8(v15, v14, v33);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      v20 = sub_1955EA0F8(v13, v12, v33);

      *(v17 + 14) = v20;
      _os_log_impl(&dword_1954A0000, v9, v10, "resetEnumeration() did reset extension %{public}s for %{public}s app", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v18, -1, -1);
      MEMORY[0x19A8B5DB0](v17, -1, -1);

      (*(v16 + 8))(v29, v28);
      (*(v30 + 8))(v32, v31);
    }

    else
    {
      v22 = v0[14];
      v21 = v0[15];
      v24 = v0[12];
      v23 = v0[13];
      v25 = v0[10];
      v26 = v0[11];

      (*(v26 + 8))(v24, v25);
      (*(v22 + 8))(v21, v23);
    }

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_195605B98()
{
  v41 = v0;
  v1 = v0[21];

  v2 = v1;
  v3 = sub_19565D0CC();
  v4 = sub_19565D69C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v7 = v0[18];
    v6 = v0[19];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_1955EA0F8(v7, v6, v40);
    *(v8 + 12) = 2082;
    v0[2] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
    v11 = sub_19565D2EC();
    v13 = sub_1955EA0F8(v11, v12, v40);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_1954A0000, v3, v4, "resetEnumeration() continuing to reset although failed to invalidate %{public}s app, error = %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v9, -1, -1);
    MEMORY[0x19A8B5DB0](v8, -1, -1);
  }

  else
  {
    v14 = v0[21];
  }

  sub_195606294(v0[5], v0[6]);

  v15 = sub_19565D0CC();
  v16 = sub_19565D6AC();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[19];
  if (v17)
  {
    v20 = v0[17];
    v19 = v0[18];
    v21 = v0[16];
    v38 = v0[13];
    v39 = v0[15];
    v22 = v0[11];
    v36 = v0[12];
    v37 = v0[14];
    v35 = v0[10];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40[0] = v24;
    *v23 = 136446466;
    v25 = sub_1955EA0F8(v21, v20, v40);

    *(v23 + 4) = v25;
    *(v23 + 12) = 2082;
    v26 = sub_1955EA0F8(v19, v18, v40);

    *(v23 + 14) = v26;
    _os_log_impl(&dword_1954A0000, v15, v16, "resetEnumeration() did reset extension %{public}s for %{public}s app", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v24, -1, -1);
    MEMORY[0x19A8B5DB0](v23, -1, -1);

    (*(v22 + 8))(v36, v35);
    (*(v37 + 8))(v39, v38);
  }

  else
  {
    v28 = v0[14];
    v27 = v0[15];
    v30 = v0[12];
    v29 = v0[13];
    v31 = v0[10];
    v32 = v0[11];

    (*(v32 + 8))(v30, v31);
    (*(v28 + 8))(v27, v29);
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_195606198(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_19565D28C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_19565D28C();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_195613540;

  return sub_195604EC4(v6, v8, v9, v11);
}

void sub_195606294(uint64_t a1, unint64_t a2)
{
  v61 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEB8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v56[-v8];
  v10 = sub_19565D0BC();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_19565D0EC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_1EAED0998);
  v18 = v14;
  v19 = *(v14 + 16);
  v64 = v16;
  v60 = v13;
  v20 = v19(v16, v17, v13);
  if (qword_1EAECB7E8 != -1)
  {
    v20 = swift_once();
  }

  v21 = *(qword_1EAECB7F0 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v22 = MEMORY[0x1EEE9AC00](v20);
  *&v56[-32] = v23;
  *&v56[-24] = v61;
  *&v56[-16] = a2;
  MEMORY[0x1EEE9AC00](v22);
  *&v56[-16] = sub_195613548;
  *&v56[-8] = v24;
  os_unfair_lock_lock(v21 + 4);
  sub_195613588();
  if (!v2)
  {
    os_unfair_lock_unlock(v21 + 4);
    sub_195610A38(v7, v9);
    v26 = v62;
    v25 = v63;
    if ((*(v62 + 48))(v9, 1, v63) != 1)
    {
      (*(v26 + 32))(v12, v9, v25);
      v58 = _s19ExtensionFoundation04_AppA8IdentityV8ContactsE03appA16BundleIdentifierSSvg_0();
      v35 = v34;
      v61 = _AppExtensionIdentity.appDisplayName.getter();
      v37 = v36;
      v38 = sub_19560E29C(v12);
      v39 = v64;
      if (v38)
      {
        v40 = v38;
        v57 = [v38 isEnabled];
      }

      else
      {
        v57 = 0;
      }

      v41 = sub_19565D0CC();
      v42 = sub_19565D6AC();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v65 = v44;
        *v43 = 136446466;
        *(v43 + 4) = sub_1955EA0F8(v58, v35, &v65);
        *(v43 + 12) = 2082;
        *(v43 + 14) = sub_1955EA0F8(v61, v37, &v65);
        _os_log_impl(&dword_1954A0000, v41, v42, "resetProviderContainer() will reset provider container for %{public}s for %{public}s app", v43, 0x16u);
        swift_arrayDestroy();
        v45 = v44;
        v39 = v64;
        MEMORY[0x19A8B5DB0](v45, -1, -1);
        MEMORY[0x19A8B5DB0](v43, -1, -1);
      }

      sub_19560DAE4();
      sub_19560D380(v12, v57);

      v49 = sub_19565D0CC();
      v50 = sub_19565D6AC();

      if (os_log_type_enabled(v49, v50))
      {
        v52 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v65 = v59;
        *v52 = 136446466;
        v53 = sub_1955EA0F8(v58, v35, &v65);

        *(v52 + 4) = v53;
        *(v52 + 12) = 2082;
        v54 = sub_1955EA0F8(v61, v37, &v65);

        *(v52 + 14) = v54;
        _os_log_impl(&dword_1954A0000, v49, v50, "resetProviderContainer() did reset provider container for %{public}s for %{public}s app", v52, 0x16u);
        v55 = v59;
        swift_arrayDestroy();
        MEMORY[0x19A8B5DB0](v55, -1, -1);
        MEMORY[0x19A8B5DB0](v52, -1, -1);

        (*(v62 + 8))(v12, v63);
        v46 = *(v18 + 8);
        v47 = v64;
      }

      else
      {

        (*(v62 + 8))(v12, v63);
        v46 = *(v18 + 8);
        v47 = v39;
      }

      v48 = v60;
      goto LABEL_17;
    }

    sub_1954C2698(v9, &qword_1EAECDEB8);

    v27 = v64;
    v28 = sub_19565D0CC();
    v29 = sub_19565D69C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v65 = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_1955EA0F8(v61, a2, &v65);
      _os_log_impl(&dword_1954A0000, v28, v29, "resetProviderContainer() did not find extension for %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x19A8B5DB0](v31, -1, -1);
      v32 = v30;
      v27 = v64;
      MEMORY[0x19A8B5DB0](v32, -1, -1);
    }

    v33 = v60;
    if ([objc_opt_self() errorWithCode_])
    {
      swift_willThrow();
      v46 = *(v18 + 8);
      v47 = v27;
      v48 = v33;
LABEL_17:
      v46(v47, v48);
      return;
    }

    __break(1u);
  }

  os_unfair_lock_unlock(v21 + 4);
  __break(1u);
}

uint64_t sub_195606A5C(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEB8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - v8;
  v10 = sub_19565D0BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19565D0EC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v40 = v11;
  v17 = __swift_project_value_buffer(v13, qword_1EAED0998);
  v42 = v14;
  v43 = v13;
  (*(v14 + 16))(v16, v17, v13);
  if (qword_1EAECB7E8 != -1)
  {
    swift_once();
  }

  v41 = v10;
  v18 = qword_1EAECB7F0;

  v19 = sub_19565D0CC();
  v20 = sub_19565D6AC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_1955EA0F8(a1, a2, v44);
    _os_log_impl(&dword_1954A0000, v19, v20, "isExtensionEnabled(with: %{public}s)", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x19A8B5DB0](v22, -1, -1);
    MEMORY[0x19A8B5DB0](v21, -1, -1);
  }

  v23 = *(v18 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v25 = MEMORY[0x1EEE9AC00](v24);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = a1;
  *(&v39 - 2) = a2;
  MEMORY[0x1EEE9AC00](v25);
  *(&v39 - 2) = sub_195613548;
  *(&v39 - 1) = v26;
  os_unfair_lock_lock(v23 + 4);
  sub_195613588();
  os_unfair_lock_unlock(v23 + 4);
  sub_195610A38(v7, v9);
  v28 = v40;
  v27 = v41;
  if ((*(v40 + 48))(v9, 1, v41) == 1)
  {
    sub_1954C2698(v9, &qword_1EAECDEB8);

    v29 = sub_19565D0CC();
    v30 = sub_19565D69C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_1955EA0F8(a1, a2, v44);
      _os_log_impl(&dword_1954A0000, v29, v30, "isExtensionEnabled() did not find extension for %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x19A8B5DB0](v32, -1, -1);
      MEMORY[0x19A8B5DB0](v31, -1, -1);
    }

    v33 = v42;
    sub_1954C3460(0, &qword_1EAECB930);
    v34 = sub_19565D72C();
  }

  else
  {
    v35 = v39;
    (*(v28 + 32))(v39, v9, v27);
    v36 = sub_19560E29C(v35);
    if (v36)
    {
      v37 = v36;
      [v36 isEnabled];
    }

    v33 = v42;
    v34 = sub_19565D4FC();
    (*(v28 + 8))(v35, v27);
  }

  (*(v33 + 8))(v16, v43);
  return v34;
}

uint64_t sub_19560705C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEB8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v5 = sub_19565D0BC();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_19565D0EC();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1956071C0, 0, 0);
}

void sub_1956071C0()
{
  v81 = v0;
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = __swift_project_value_buffer(v3, qword_1EAED0998);
  (*(v2 + 16))(v1, v4, v3);
  if (qword_1EAECB7E8 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAECB7F0;
  v6 = *(v0 + 16);

  v7 = sub_19565D0CC();
  v8 = sub_19565D6AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 24);
    v76 = *(v0 + 32);
    v10 = *(v0 + 16);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v80[0] = v12;
    *v11 = 136446466;
    v13 = [v10 domainIdentifier];
    v14 = sub_19565D28C();
    v16 = v15;

    v17 = sub_1955EA0F8(v14, v16, v80);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_1955EA0F8(v9, v76, v80);
    _os_log_impl(&dword_1954A0000, v7, v8, "addDomain(domain: %{public}s, bundleIdentifier: %{public}s)", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v12, -1, -1);
    MEMORY[0x19A8B5DB0](v11, -1, -1);
  }

  v19 = *(v0 + 24);
  v18 = *(v0 + 32);
  v20 = *(v5 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v21 = swift_task_alloc();
  v21[2] = v5;
  v21[3] = v19;
  v21[4] = v18;
  v22 = swift_task_alloc();
  *(v22 + 16) = sub_195613548;
  *(v22 + 24) = v21;
  os_unfair_lock_lock(v20 + 4);
  sub_195613588();
  os_unfair_lock_unlock(v20 + 4);

  v23 = *(v0 + 64);
  v24 = *(v0 + 72);
  v26 = *(v0 + 48);
  v25 = *(v0 + 56);

  sub_195610A38(v26, v25);
  if ((*(v24 + 48))(v25, 1, v23) != 1)
  {
    v37 = *(v0 + 80);
    (*(*(v0 + 72) + 32))(v37, *(v0 + 56), *(v0 + 64));
    v38 = _AppExtensionIdentity.appDisplayName.getter();
    v40 = v39;
    v41 = _AppExtensionIdentity.appBundleIdentifier.getter();
    v43 = v42;
    v44 = sub_19560E29C(v37);
    v45 = *(v0 + 104);
    if (v44)
    {
      v46 = v44;

      v47 = sub_19565D0CC();
      v48 = sub_19565D6AC();
      if (os_log_type_enabled(v47, v48))
      {
        v74 = v41;
        v75 = v38;
        v49 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v80[0] = v73;
        *v49 = 136446722;
        v50 = [v46 identifier];

        v77 = v46;

        if (!v50)
        {
LABEL_23:
          __break(1u);
          return;
        }

        v71 = *(v0 + 88);
        v72 = *(v0 + 104);
        v69 = *(v0 + 80);
        v70 = *(v0 + 96);
        v51 = *(v0 + 72);
        v68 = *(v0 + 64);
        v52 = sub_19565D28C();
        v54 = v53;

        v55 = sub_1955EA0F8(v52, v54, v80);

        *(v49 + 4) = v55;
        *(v49 + 12) = 2082;
        v56 = sub_1955EA0F8(v74, v43, v80);

        *(v49 + 14) = v56;
        *(v49 + 22) = 2082;
        v57 = sub_1955EA0F8(v75, v40, v80);

        *(v49 + 24) = v57;
        _os_log_impl(&dword_1954A0000, v47, v48, "addDomain() found container already exists with identifier %{public}s and provider identifier %{public}s for %{public}s app", v49, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x19A8B5DB0](v73, -1, -1);
        MEMORY[0x19A8B5DB0](v49, -1, -1);

        (*(v51 + 8))(v69, v68);
        (*(v70 + 8))(v72, v71);
      }

      else
      {
        v79 = *(v0 + 104);
        v62 = v46;
        v64 = *(v0 + 88);
        v63 = *(v0 + 96);
        v66 = *(v0 + 72);
        v65 = *(v0 + 80);
        v67 = *(v0 + 64);

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        (*(v66 + 8))(v65, v67);
        (*(v63 + 8))(v79, v64);
      }
    }

    else
    {
      v58 = *(v0 + 96);
      v78 = *(v0 + 88);
      v59 = *(v0 + 72);
      v60 = *(v0 + 80);
      v61 = *(v0 + 64);

      sub_19560D380(v60, 0);
      (*(v59 + 8))(v60, v61);
      (*(v58 + 8))(v45, v78);
    }

    v36 = *(v0 + 8);
    goto LABEL_19;
  }

  sub_1954C2698(*(v0 + 56), &qword_1EAECDEB8);

  v27 = sub_19565D0CC();
  v28 = sub_19565D69C();

  if (os_log_type_enabled(v27, v28))
  {
    v30 = *(v0 + 24);
    v29 = *(v0 + 32);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v80[0] = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_1955EA0F8(v30, v29, v80);
    _os_log_impl(&dword_1954A0000, v27, v28, "addDomain() did not find extension for %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x19A8B5DB0](v32, -1, -1);
    MEMORY[0x19A8B5DB0](v31, -1, -1);
  }

  if (![objc_opt_self() errorWithCode_])
  {
    __break(1u);
    goto LABEL_23;
  }

  v34 = *(v0 + 96);
  v33 = *(v0 + 104);
  v35 = *(v0 + 88);
  swift_willThrow();
  (*(v34 + 8))(v33, v35);

  v36 = *(v0 + 8);
LABEL_19:

  v36();
}

uint64_t sub_195607B28(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_19565D28C();
  v9 = v8;
  v4[5] = v8;
  v10 = a1;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_195613544;

  return sub_19560705C(v10, v7, v9);
}

uint64_t sub_195607DBC(int a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 0);
  _Block_release(v4);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_195607E38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEB8);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v4 = sub_19565D0BC();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_19565D0EC();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_195607F9C, 0, 0);
}

id sub_195607F9C()
{
  v48 = v0;
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = __swift_project_value_buffer(v3, qword_1EAED0998);
  (*(v2 + 16))(v1, v4, v3);
  if (qword_1EAECB7E8 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAECB7F0;

  v6 = sub_19565D0CC();
  v7 = sub_19565D6AC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v47[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1955EA0F8(v9, v8, v47);
    _os_log_impl(&dword_1954A0000, v6, v7, "registeredDomains(for: %{public}s)", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x19A8B5DB0](v11, -1, -1);
    MEMORY[0x19A8B5DB0](v10, -1, -1);
  }

  v13 = v0[2];
  v12 = v0[3];
  v14 = *(v5 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v15 = swift_task_alloc();
  v15[2] = v5;
  v15[3] = v13;
  v15[4] = v12;
  v16 = swift_task_alloc();
  *(v16 + 16) = sub_195613548;
  *(v16 + 24) = v15;
  os_unfair_lock_lock(v14 + 4);
  sub_195613588();
  os_unfair_lock_unlock(v14 + 4);

  v17 = v0[7];
  v18 = v0[8];
  v20 = v0[5];
  v19 = v0[6];

  sub_195610A38(v20, v19);
  if ((*(v18 + 48))(v19, 1, v17) == 1)
  {
    sub_1954C2698(v0[6], &qword_1EAECDEB8);

    v21 = sub_19565D0CC();
    v22 = sub_19565D69C();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = v0[2];
      v23 = v0[3];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_1955EA0F8(v24, v23, v47);
      _os_log_impl(&dword_1954A0000, v21, v22, "registeredDomains() did not find extension for %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x19A8B5DB0](v26, -1, -1);
      MEMORY[0x19A8B5DB0](v25, -1, -1);
    }

    result = [objc_opt_self() errorWithCode_];
    if (result)
    {
      v29 = v0[11];
      v28 = v0[12];
      v30 = v0[10];
      swift_willThrow();
      (*(v29 + 8))(v28, v30);

      v31 = v0[1];

      return v31();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v32 = v0[9];
    (*(v0[8] + 32))(v32, v0[6], v0[7]);
    v33 = sub_19560E29C(v32);
    if (v33)
    {
      v34 = v33;
      _AppExtensionIdentity.appDisplayName.getter();
      _s19ExtensionFoundation04_AppA8IdentityV8ContactsE03appA16BundleIdentifierSSvg_0();
      v35 = [v34 isEnabled];
      v36 = objc_allocWithZone(CNContactProviderSupportDomain);
      v37 = sub_19565D27C();
      v38 = sub_19565D27C();

      v39 = sub_19565D16C();
      v40 = sub_19565D27C();

      v41 = [v36 initWithDomainIdentifer:v37 displayName:v38 userInfo:v39 bundleIdentifier:v40 registered:1 enabled:v35];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_19567B7B0;
      *(v42 + 32) = v41;
    }

    else
    {
      v42 = MEMORY[0x1E69E7CC0];
    }

    v44 = v0[11];
    v43 = v0[12];
    v45 = v0[10];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v44 + 8))(v43, v45);

    v46 = v0[1];

    return v46(v42);
  }

  return result;
}

uint64_t sub_195608758(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_19565D28C();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_19560882C;

  return sub_195607E38(v5, v7);
}

uint64_t sub_19560882C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v2)
  {
    v6 = sub_19565CE5C();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    sub_1954C3460(0, &qword_1EAECDED8);
    v9 = sub_19565D3EC();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v3 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_1956089EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 40) = a4;
  *(v7 + 48) = v6;
  *(v7 + 129) = a6;
  *(v7 + 128) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3B0);
  *(v7 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEB8);
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 72) = swift_task_alloc();
  v8 = sub_19565D0BC();
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();
  v9 = sub_19565D0EC();
  *(v7 + 104) = v9;
  *(v7 + 112) = *(v9 - 8);
  *(v7 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_195608B94, 0, 0);
}

id sub_195608B94()
{
  v102 = v0;
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = __swift_project_value_buffer(v3, qword_1EAED0998);
  (*(v2 + 16))(v1, v4, v3);
  if (qword_1EAECB7E8 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAECB7F0;

  v6 = sub_19565D0CC();
  v7 = sub_19565D6AC();

  if (os_log_type_enabled(v6, v7))
  {
    v99 = *(v0 + 129);
    v95 = *(v0 + 128);
    v8 = v5;
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v101[0] = v14;
    *v13 = 136446978;
    *(v13 + 4) = sub_1955EA0F8(v12, v11, v101);
    *(v13 + 12) = 2082;
    v15 = v10;
    v5 = v8;
    *(v13 + 14) = sub_1955EA0F8(v15, v9, v101);
    *(v13 + 22) = 1026;
    *(v13 + 24) = v95;
    *(v13 + 28) = 1026;
    *(v13 + 30) = v99;
    _os_log_impl(&dword_1954A0000, v6, v7, "enableDomain(for: %{public}s, bundleIdentifier: %{public}s, showPrompt: %{BOOL,public}d, shouldSynchronize: %{BOOL,public}d)", v13, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v14, -1, -1);
    MEMORY[0x19A8B5DB0](v13, -1, -1);
  }

  v17 = *(v0 + 32);
  v16 = *(v0 + 40);
  v18 = *(v5 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v19 = swift_task_alloc();
  v19[2] = v5;
  v19[3] = v17;
  v19[4] = v16;
  v20 = swift_task_alloc();
  *(v20 + 16) = sub_195613548;
  *(v20 + 24) = v19;
  os_unfair_lock_lock(v18 + 4);
  sub_195613588();
  os_unfair_lock_unlock(v18 + 4);

  v21 = *(v0 + 80);
  v22 = *(v0 + 88);
  v24 = *(v0 + 64);
  v23 = *(v0 + 72);

  sub_195610A38(v24, v23);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {
    sub_1954C2698(*(v0 + 72), &qword_1EAECDEB8);

    v25 = sub_19565D0CC();
    v26 = sub_19565D69C();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = *(v0 + 32);
      v27 = *(v0 + 40);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v101[0] = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_1955EA0F8(v28, v27, v101);
      _os_log_impl(&dword_1954A0000, v25, v26, "enableDomain() did not find extension for %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x19A8B5DB0](v30, -1, -1);
      MEMORY[0x19A8B5DB0](v29, -1, -1);
    }

    result = [objc_opt_self() errorWithCode_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    swift_willThrow();
  }

  else
  {
    v32 = *(v0 + 96);
    (*(*(v0 + 88) + 32))(v32, *(v0 + 72), *(v0 + 80));
    v33 = _s19ExtensionFoundation04_AppA8IdentityV8ContactsE03appA16BundleIdentifierSSvg_0();
    v35 = v34;
    v36 = _AppExtensionIdentity.appDisplayName.getter();
    v38 = v37;
    v96 = _AppExtensionIdentity.appBundleIdentifier.getter();
    v40 = v39;
    v41 = sub_19560E29C(v32);
    if (v41)
    {
      v100 = v41;
      v42 = v5;
      v43 = sub_19560E29C(*(v0 + 96));
      if (v43 && (v44 = v43, v45 = [v43 isEnabled], v44, (v45 & 1) != 0))
      {
        v91 = v36;

        v46 = sub_19565D0CC();
        v47 = sub_19565D6AC();

        v48 = os_log_type_enabled(v46, v47);
        v49 = *(v0 + 112);
        v50 = *(v0 + 120);
        v52 = *(v0 + 96);
        v51 = *(v0 + 104);
        v53 = *(v0 + 88);
        v93 = *(v0 + 80);
        if (v48)
        {
          v89 = *(v0 + 104);
          v54 = swift_slowAlloc();
          v88 = v50;
          v55 = swift_slowAlloc();
          v101[0] = v55;
          *v54 = 136446466;
          v56 = sub_1955EA0F8(v96, v40, v101);
          v97 = v52;
          v57 = v56;

          *(v54 + 4) = v57;
          *(v54 + 12) = 2082;
          v58 = sub_1955EA0F8(v91, v38, v101);

          *(v54 + 14) = v58;
          _os_log_impl(&dword_1954A0000, v46, v47, "enableDomain() found container already enabled with provider identifier %{public}s for %{public}s app", v54, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x19A8B5DB0](v55, -1, -1);
          MEMORY[0x19A8B5DB0](v54, -1, -1);

          (*(v53 + 8))(v97, v93);
          (*(v49 + 8))(v88, v89);
        }

        else
        {

          (*(v53 + 8))(v52, v93);
          (*(v49 + 8))(v50, v51);
        }
      }

      else
      {
        v59 = *(v0 + 120);
        v60 = *(v0 + 128);

        sub_19560965C(v60, v36, v38, v59, v33, v35);
        v73 = *(v0 + 96);
        v74 = *(v0 + 48);

        sub_195609BF8(v73, v100, v74, v42);
        v76 = *(v0 + 112);
        v77 = *(v0 + 120);
        v79 = *(v0 + 96);
        v78 = *(v0 + 104);
        v81 = *(v0 + 80);
        v80 = *(v0 + 88);
        if (*(v0 + 129) == 1)
        {
          v94 = *(v0 + 96);
          v98 = *(v0 + 104);
          v92 = v36;
          v83 = *(v0 + 48);
          v82 = *(v0 + 56);
          v84 = *(v0 + 40);
          v90 = *(v0 + 32);
          v85 = sub_19565D56C();
          (*(*(v85 - 8) + 56))(v82, 1, 1, v85);
          v86 = swift_allocObject();
          v86[2] = 0;
          v86[3] = 0;
          v86[4] = v90;
          v86[5] = v84;
          v86[6] = v83;
          v86[7] = v92;
          v86[8] = v38;

          v87 = v83;
          sub_19560A5BC(0, 0, v82, &unk_19567BD88, v86);

          (*(v80 + 8))(v94, v81);
          (*(v76 + 8))(v77, v98);
        }

        else
        {

          (*(v80 + 8))(v79, v81);
          (*(v76 + 8))(v77, v78);
        }
      }

      v75 = *(v0 + 8);
      goto LABEL_23;
    }

    v61 = sub_19565D0CC();
    v62 = sub_19565D69C();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v101[0] = v64;
      *v63 = 136446466;
      v65 = v36;
      v66 = sub_1955EA0F8(v96, v40, v101);

      *(v63 + 4) = v66;
      *(v63 + 12) = 2082;
      v67 = sub_1955EA0F8(v65, v38, v101);

      *(v63 + 14) = v67;
      _os_log_impl(&dword_1954A0000, v61, v62, "enableDomain() did not find container with provider identifier %{public}s for %{public}s app", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v64, -1, -1);
      MEMORY[0x19A8B5DB0](v63, -1, -1);
    }

    else
    {
    }

    v69 = *(v0 + 88);
    v68 = *(v0 + 96);
    v70 = *(v0 + 80);
    v71 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v72 = sub_19565D27C();
    [v71 initWithDomain:v72 code:1010 userInfo:0];

    swift_willThrow();
    (*(v69 + 8))(v68, v70);
  }

  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

  v75 = *(v0 + 8);
LABEL_23:

  return v75();
}

void sub_19560965C(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v11 = sub_19565CFCC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_19565D26C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_19565D24C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  if (a1)
  {
    v24 = a5;
    v26 = a6;
    type metadata accessor for CNContactProviderSupportHost();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_19565D23C();
    sub_19565D22C();
    sub_19565D21C();
    sub_19565D22C();
    sub_19565D25C();
    v16 = v15;
    sub_19565CFBC();
    v27 = v16;
    sub_19565D2DC();
    v28 = sub_19565D27C();

    sub_19565D23C();
    sub_19565D22C();
    v25 = a3;
    sub_19565D21C();
    sub_19565D22C();
    sub_19565D25C();
    sub_19565CFBC();
    sub_19565D2DC();
    v17 = sub_19565D27C();

    sub_19565D20C();
    sub_19565CFBC();
    sub_19565D2DC();
    v18 = sub_19565D27C();

    sub_19565D20C();
    sub_19565CFBC();
    sub_19565D2DC();
    v19 = sub_19565D27C();

    v29 = 3;
    CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v28, v17, v18, v19, 0, &v29);
    if (v29)
    {

      v20 = sub_19565D0CC();
      v21 = sub_19565D6AC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v30[0] = v23;
        *v22 = 136446466;
        *(v22 + 4) = sub_1955EA0F8(v24, v26, v30);
        *(v22 + 12) = 2082;
        *(v22 + 14) = sub_1955EA0F8(a2, v25, v30);
        _os_log_impl(&dword_1954A0000, v20, v21, "askUserToEnable() user did not enable extension %{public}s for %{public}s app", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x19A8B5DB0](v23, -1, -1);
        MEMORY[0x19A8B5DB0](v22, -1, -1);
      }

      if ([objc_opt_self() errorWithCode_])
      {
        swift_willThrow();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_195609BF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v50 = _AppExtensionIdentity.appDisplayName.getter();
  v7 = v6;
  v49 = _AppExtensionIdentity.appBundleIdentifier.getter();
  v9 = v8;
  v10 = [objc_allocWithZone(CNSaveRequest) init];
  [a2 setEnabled_];
  [v10 updateContainer_];
  [v10 setIgnoresContactProviderRestrictions_];
  v11 = sub_1956019F0();
  v53[0] = 0;
  v12 = [v11 executeSaveRequest:v10 error:v53];

  if (!v12)
  {
    v28 = v53[0];
    v29 = sub_19565CE6C();

    swift_willThrow();
    v30 = a2;

    v31 = v29;
    v32 = sub_19565D0CC();
    v33 = sub_19565D69C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v29;
      v35 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53[0] = v52;
      *v35 = 136446978;
      v36 = [v30 identifier];
      if (!v36)
      {

        __break(1u);
        goto LABEL_15;
      }

      v37 = v36;

      v38 = sub_19565D28C();
      v40 = v39;

      v41 = sub_1955EA0F8(v38, v40, v53);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2082;
      v42 = sub_1955EA0F8(v49, v9, v53);

      *(v35 + 14) = v42;
      *(v35 + 22) = 2082;
      v43 = sub_1955EA0F8(v50, v7, v53);

      *(v35 + 24) = v43;
      *(v35 + 32) = 2082;
      v44 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
      v45 = sub_19565D2EC();
      v47 = sub_1955EA0F8(v45, v46, v53);

      *(v35 + 34) = v47;
      _os_log_impl(&dword_1954A0000, v32, v33, "enableProviderContainer() failed to enable container with identifier %{public}s and provider identifier %{public}s for %{public}s app, error = %{public}s", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v52, -1, -1);
      MEMORY[0x19A8B5DB0](v35, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    swift_willThrow();
    return;
  }

  v13 = v53[0];

  v14 = _AppExtensionIdentity.appBundleIdentifier.getter();
  v15 = *(a4 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v48 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v48);
  os_unfair_lock_lock(v15 + 4);
  sub_195613588();
  v16 = v15 + 4;
  if (v51)
  {
LABEL_16:
    os_unfair_lock_unlock(v16);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v16);

  v17 = a2;

  v18 = sub_19565D0CC();
  v19 = sub_19565D6AC();
  if (!os_log_type_enabled(v18, v19))
  {
    swift_bridgeObjectRelease_n();

    goto LABEL_12;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v53[0] = v21;
  *v20 = 136446466;
  v22 = [v17 identifier];

  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = sub_19565D28C();
  v25 = v24;

  v26 = sub_1955EA0F8(v23, v25, v53);

  *(v20 + 4) = v26;
  *(v20 + 12) = 2082;
  v27 = sub_1955EA0F8(v50, v7, v53);

  *(v20 + 14) = v27;
  _os_log_impl(&dword_1954A0000, v18, v19, "enableProviderContainer() enabled container with identifier %{public}s for %{public}s app", v20, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x19A8B5DB0](v21, -1, -1);
  MEMORY[0x19A8B5DB0](v20, -1, -1);
LABEL_12:
}

uint64_t sub_19560A1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;

  return MEMORY[0x1EEE6DFA0](sub_19560A250, 0, 0);
}

uint64_t sub_19560A250()
{
  v26 = v0;
  v25[1] = *MEMORY[0x1E69E9840];
  v1 = v0[5];
  v2 = [objc_opt_self() sharedInstance];
  v3 = [objc_allocWithZone(CNContactProviderSupportSession) init];
  [v3 setSynchronizationReason_];
  v4 = sub_19565D27C();
  v5 = [v2 synchronizeProviderDomainUsingSession:v3 bundleIdentifier:v4 providerHost:v1];

  v0[2] = 0;
  v6 = [v5 result_];
  v7 = v0[2];
  if (v6)
  {
    v8 = v7;
    swift_unknownObjectRelease();

    v9 = v0[1];
  }

  else
  {
    v10 = v7;
    v11 = sub_19565CE6C();

    swift_willThrow();
    if (qword_1EAECD990 != -1)
    {
      swift_once();
    }

    v12 = sub_19565D0EC();
    __swift_project_value_buffer(v12, qword_1EAED0998);

    v13 = v11;
    v14 = sub_19565D0CC();
    v15 = sub_19565D69C();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[6];
      v16 = v0[7];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25[0] = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_1955EA0F8(v17, v16, v25);
      *(v18 + 12) = 2082;
      v0[2] = v11;
      v20 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
      v21 = sub_19565D2EC();
      v23 = sub_1955EA0F8(v21, v22, v25);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_1954A0000, v14, v15, "scheduleFirstSynchronization() failed to schedule synchronization for %{public}s app, error = %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v19, -1, -1);
      MEMORY[0x19A8B5DB0](v18, -1, -1);
    }

    swift_willThrow();
    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_19560A5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1955F7964(a3, v22 - v9, &qword_1EAECE3B0);
  v11 = sub_19565D56C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1954C2698(v10, &qword_1EAECE3B0);
  }

  else
  {
    sub_19565D55C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_19565D50C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_19565D2FC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1954C2698(a3, &qword_1EAECE3B0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1954C2698(a3, &qword_1EAECE3B0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_19560AA10(int a1, int a2, char a3, char a4, void *aBlock, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  v10 = sub_19565D28C();
  v12 = v11;
  v6[4] = v11;
  v13 = sub_19565D28C();
  v15 = v14;
  v6[5] = v14;
  a6;
  v16 = swift_task_alloc();
  v6[6] = v16;
  *v16 = v6;
  v16[1] = sub_19560AB28;

  return sub_1956089EC(v10, v12, v13, v15, a3, a4);
}

uint64_t sub_19560AB28()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_19565CE5C();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_19560ACEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEB8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v6 = sub_19565D0BC();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_19565D0EC();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19560AE54, 0, 0);
}

id sub_19560AE54()
{
  v67 = v0;
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = __swift_project_value_buffer(v3, qword_1EAED0998);
  (*(v2 + 16))(v1, v4, v3);
  if (qword_1EAECB7E8 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAECB7F0;

  v6 = sub_19565D0CC();
  v7 = sub_19565D6AC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[5];
    v8 = v0[6];
    v11 = v0[3];
    v10 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v66[0] = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_1955EA0F8(v11, v10, v66);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_1955EA0F8(v9, v8, v66);
    _os_log_impl(&dword_1954A0000, v6, v7, "disableDomain(for: %{public}s, bundleIdentifier: %{public}s)", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v13, -1, -1);
    MEMORY[0x19A8B5DB0](v12, -1, -1);
  }

  v15 = v0[5];
  v14 = v0[6];
  v16 = *(v5 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v17 = swift_task_alloc();
  v17[2] = v5;
  v17[3] = v15;
  v17[4] = v14;
  v18 = swift_task_alloc();
  *(v18 + 16) = sub_195613548;
  *(v18 + 24) = v17;
  os_unfair_lock_lock(v16 + 4);
  sub_195613588();
  os_unfair_lock_unlock(v16 + 4);

  v19 = v0[10];
  v20 = v0[11];
  v22 = v0[8];
  v21 = v0[9];

  sub_195610A38(v22, v21);
  if ((*(v20 + 48))(v21, 1, v19) == 1)
  {
    sub_1954C2698(v0[9], &qword_1EAECDEB8);

    v23 = sub_19565D0CC();
    v24 = sub_19565D69C();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[5];
      v25 = v0[6];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v66[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_1955EA0F8(v26, v25, v66);
      _os_log_impl(&dword_1954A0000, v23, v24, "disableDomain() did not find extension for %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x19A8B5DB0](v28, -1, -1);
      MEMORY[0x19A8B5DB0](v27, -1, -1);
    }

    result = [objc_opt_self() errorWithCode_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v31 = v0[14];
    v30 = v0[15];
    v32 = v0[13];
    swift_willThrow();
    (*(v31 + 8))(v30, v32);

    v33 = v0[1];
    goto LABEL_21;
  }

  v34 = v0[12];
  (*(v0[11] + 32))(v34, v0[9], v0[10]);
  v35 = _s19ExtensionFoundation04_AppA8IdentityV8ContactsE03appA16BundleIdentifierSSvg_0();
  v37 = v36;
  v0[16] = v36;
  v38 = _AppExtensionIdentity.appDisplayName.getter();
  v40 = v39;
  v0[17] = v38;
  v0[18] = v39;
  v41 = _AppExtensionIdentity.appBundleIdentifier.getter();
  v43 = v42;
  v44 = sub_19560E29C(v34);
  if (!v44 || (v45 = v44, v46 = [v44 isEnabled], v45, !v46))
  {

    v50 = sub_19565D0CC();
    v51 = sub_19565D6AC();

    v63 = v51;
    v52 = os_log_type_enabled(v50, v51);
    v54 = v0[14];
    v53 = v0[15];
    v55 = v0[13];
    v56 = v0[11];
    v64 = v0[10];
    v65 = v0[12];
    if (v52)
    {
      v62 = v0[15];
      v57 = swift_slowAlloc();
      v61 = v55;
      v58 = swift_slowAlloc();
      v66[0] = v58;
      *v57 = 136446466;
      v59 = sub_1955EA0F8(v41, v43, v66);

      *(v57 + 4) = v59;
      *(v57 + 12) = 2082;
      v60 = sub_1955EA0F8(v38, v40, v66);

      *(v57 + 14) = v60;
      _os_log_impl(&dword_1954A0000, v50, v63, "disableDomain() found container already disabled with provider identifier %{public}s for %{public}s app", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v58, -1, -1);
      MEMORY[0x19A8B5DB0](v57, -1, -1);

      (*(v56 + 8))(v65, v64);
      (*(v54 + 8))(v62, v61);
    }

    else
    {

      (*(v56 + 8))(v65, v64);
      (*(v54 + 8))(v53, v55);
    }

    v33 = v0[1];
LABEL_21:

    return v33();
  }

  v47 = swift_task_alloc();
  v0[19] = v47;
  *v47 = v0;
  v47[1] = sub_19560B59C;
  v49 = v0[3];
  v48 = v0[4];

  return sub_19560F110(v49, v48, v35, v37);
}

uint64_t sub_19560B59C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_19560B82C;
  }

  else
  {

    v2 = sub_19560B6CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19560B6CC()
{
  v1 = v0[20];
  sub_19560DAE4();
  if (!v1)
  {
    sub_19560D380(v0[12], 0);
  }

  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_19560B82C()
{
  v22 = v0;
  v1 = v0[20];

  v2 = v1;
  v3 = sub_19565D0CC();
  v4 = sub_19565D69C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v7 = v0[17];
    v6 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136446466;
    v10 = sub_1955EA0F8(v7, v6, v21);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2082;
    v0[2] = v5;
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
    v12 = sub_19565D2EC();
    v14 = sub_1955EA0F8(v12, v13, v21);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_1954A0000, v3, v4, "disableDomain() continuing to disable although failed to invalidate %{public}s app, error = %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v9, -1, -1);
    MEMORY[0x19A8B5DB0](v8, -1, -1);
  }

  else
  {
    v15 = v0[20];
  }

  sub_19560DAE4();
  sub_19560D380(v0[12], 0);
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v17 + 8))(v16, v18);

  v20 = v0[1];

  return v20();
}

uint64_t sub_19560BCA4(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_19565D28C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_19565D28C();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_195613540;

  return sub_19560ACEC(v6, v8, v9, v11);
}

uint64_t sub_19560BDA0()
{
  if (sub_19560BECC() >> 62)
  {
    sub_19565D81C();
  }

  sub_1954C3460(0, &qword_1EAECB930);
  return sub_19565D73C();
}

unint64_t sub_19560BECC()
{
  v0 = sub_19565D0BC();
  v1 = *(v0 - 1);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAECB7E8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v5 = *(qword_1EAECB7F0 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
    v6 = MEMORY[0x1EEE9AC00](v2);
    *(&v40 - 2) = v7;
    MEMORY[0x1EEE9AC00](v6);
    *(&v40 - 2) = sub_195611548;
    *(&v40 - 1) = v8;
    os_unfair_lock_lock(v5 + 4);
    sub_195611564(&v49);
    os_unfair_lock_unlock(v5 + 4);
    v9 = v49;
    v10 = *(v49 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v49 = MEMORY[0x1E69E7CC0];
      sub_19565D97C();
      v12 = v1 + 16;
      v13 = *(v1 + 16);
      v14 = *(v1 + 80);
      v40 = v9;
      v41 = v4;
      v15 = v9 + ((v14 + 32) & ~v14);
      v47 = 0x800000019568C360;
      v43 = *(v12 + 56);
      v44 = v13;
      v45 = v0;
      v46 = v12;
      v42 = (v12 - 8);
      v13(v4, v15, v0);
      while (1)
      {
        _s19ExtensionFoundation04_AppA8IdentityV8ContactsE03appA16BundleIdentifierSSvg_0();
        v48 = v22;
        if (_s19ExtensionFoundation04_AppA8IdentityV8ContactsE03appA16BundleIdentifierSSvg_0() == 0xD00000000000002BLL && v47 == v23)
        {

          goto LABEL_17;
        }

        v24 = sub_19565DB1C();

        if ((v24 & 1) == 0)
        {
          v25 = sub_19565D0AC();
          if (!v25)
          {
            goto LABEL_16;
          }

          v26 = v25;
          v27 = [v25 localizedName];

          v28 = sub_19565D28C();
          v30 = v29;

          v31 = HIBYTE(v30) & 0xF;
          if ((v30 & 0x2000000000000000) == 0)
          {
            v31 = v28 & 0xFFFFFFFFFFFFLL;
          }

          if (!v31)
          {
            break;
          }
        }

LABEL_17:
        v32 = sub_19560E29C(v4);
        v33 = v32;
        if (v32)
        {
          v16 = [v32 isEnabled];
        }

        else
        {
          v16 = 0;
        }

        v17 = objc_allocWithZone(CNContactProviderSupportDomain);
        v18 = sub_19565D27C();
        v19 = sub_19565D27C();

        v20 = sub_19565D16C();
        v21 = sub_19565D27C();

        [v17 initWithDomainIdentifer:v18 displayName:v19 userInfo:v20 bundleIdentifier:v21 registered:v33 != 0 enabled:v16];

        v4 = v41;
        v0 = v45;
        (*v42)(v41, v45);
        sub_19565D94C();
        sub_19565D98C();
        sub_19565D99C();
        sub_19565D95C();
        v15 += v43;
        if (!--v10)
        {

          v34 = v49;
          v11 = MEMORY[0x1E69E7CC0];
          goto LABEL_21;
        }

        v44(v4, v15, v0);
      }

LABEL_16:
      sub_19565D08C();
      goto LABEL_17;
    }

    v34 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v49 = v11;
    if (v34 >> 62)
    {
      break;
    }

    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
      goto LABEL_34;
    }

LABEL_23:
    v36 = 0;
    v1 = v34 & 0xC000000000000001;
    v4 = (v34 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v1)
      {
        v37 = MEMORY[0x19A8B3850](v36, v34);
      }

      else
      {
        if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v37 = *(v34 + 8 * v36 + 32);
      }

      v0 = v37;
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if ([v37 isRegistered])
      {
        sub_19565D94C();
        sub_19565D98C();
        sub_19565D99C();
        sub_19565D95C();
      }

      else
      {
      }

      ++v36;
      if (v38 == v35)
      {
        v11 = v49;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v2 = swift_once();
  }

  v35 = sub_19565D81C();
  if (v35)
  {
    goto LABEL_23;
  }

LABEL_34:

  return v11;
}

uint64_t sub_19560C4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_19565D04C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDEB8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = sub_19565D0BC();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = sub_19565D0EC();
  v4[16] = v7;
  v8 = *(v7 - 8);
  v4[17] = v8;
  v4[18] = *(v8 + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19560C69C, 0, 0);
}

uint64_t sub_19560C69C()
{
  v67 = v0;
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = __swift_project_value_buffer(v2, qword_1EAED0998);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  if (qword_1EAECB7E8 != -1)
  {
    swift_once();
  }

  v7 = v0[3];
  v6 = v0[4];
  v8 = qword_1EAECB7F0;
  v9 = *(qword_1EAECB7F0 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
  v10 = swift_task_alloc();
  v10[2] = v8;
  v10[3] = v7;
  v10[4] = v6;
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_195613548;
  *(v11 + 24) = v10;
  os_unfair_lock_lock(v9 + 4);
  sub_195613588();
  os_unfair_lock_unlock(v9 + 4);

  v12 = v0[12];
  v13 = v0[13];
  v15 = v0[10];
  v14 = v0[11];

  sub_195610A38(v15, v14);
  if ((*(v13 + 48))(v14, 1, v12) != 1)
  {
    v24 = v0[15];
    (*(v0[13] + 32))(v24, v0[11], v0[12]);
    v25 = _s19ExtensionFoundation04_AppA8IdentityV8ContactsE03appA16BundleIdentifierSSvg_0();
    v27 = v26;
    v0[21] = v25;
    v0[22] = v26;
    v28 = _AppExtensionIdentity.appDisplayName.getter();
    v30 = v29;
    v0[23] = v28;
    v0[24] = v29;
    v31 = sub_19560E29C(v24);
    if (v31)
    {
      v32 = v31;
      v33 = [v31 isEnabled];

      if (v33)
      {
        v65 = v25;

        v34 = sub_19565D0CC();
        v35 = sub_19565D6AC();

        v60 = v28;
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v66[0] = v37;
          *v36 = 136446466;
          *(v36 + 4) = sub_1955EA0F8(v65, v27, v66);
          *(v36 + 12) = 2082;
          *(v36 + 14) = sub_1955EA0F8(v28, v30, v66);
          _os_log_impl(&dword_1954A0000, v34, v35, "appExtensionProcess() if needed will launch extension %{public}s for %{public}s app", v36, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x19A8B5DB0](v37, -1, -1);
          MEMORY[0x19A8B5DB0](v36, -1, -1);
        }

        v38 = v0[19];
        v39 = v0[20];
        v41 = v0[17];
        v40 = v0[18];
        v42 = v0[16];
        v61 = v0[9];
        v62 = v0[7];
        v63 = v0[6];
        v64 = v0[8];
        (*(v0[13] + 16))();
        v5(v38, v39, v42);
        v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
        v44 = (v40 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
        v45 = swift_allocObject();
        (*(v41 + 32))(v45 + v43, v38, v42);
        v46 = (v45 + v44);
        *v46 = v65;
        v46[1] = v27;
        v47 = (v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v47 = v60;
        v47[1] = v30;

        sub_19565D03C();
        (*(v62 + 16))(v64, v61, v63);
        v48 = swift_task_alloc();
        v0[25] = v48;
        *v48 = v0;
        v48[1] = sub_19560CEB0;
        v23 = v0[8];
        v22 = v0[2];

        return MEMORY[0x1EEDC0A48](v22, v23);
      }
    }

    v49 = sub_19565D0CC();
    v50 = sub_19565D6AC();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v66[0] = v52;
      *v51 = 136446466;
      v53 = sub_1955EA0F8(v25, v27, v66);

      *(v51 + 4) = v53;
      *(v51 + 12) = 2082;
      v54 = sub_1955EA0F8(v28, v30, v66);

      *(v51 + 14) = v54;
      _os_log_impl(&dword_1954A0000, v49, v50, "appExtensionProcess() will not launch extension %{public}s for %{public}s app", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8B5DB0](v52, -1, -1);
      MEMORY[0x19A8B5DB0](v51, -1, -1);
    }

    else
    {
    }

    v22 = [objc_opt_self() errorWithCode_];
    if (v22)
    {
      v55 = v0[15];
      v56 = v0[12];
      v57 = v0[13];
      swift_willThrow();
      (*(v57 + 8))(v55, v56);
      goto LABEL_22;
    }

LABEL_26:
    __break(1u);
    return MEMORY[0x1EEDC0A48](v22, v23);
  }

  sub_1954C2698(v0[11], &qword_1EAECDEB8);

  v16 = sub_19565D0CC();
  v17 = sub_19565D69C();

  if (os_log_type_enabled(v16, v17))
  {
    v19 = v0[3];
    v18 = v0[4];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v66[0] = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1955EA0F8(v19, v18, v66);
    _os_log_impl(&dword_1954A0000, v16, v17, "appExtensionProcess() did not find extension for %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x19A8B5DB0](v21, -1, -1);
    MEMORY[0x19A8B5DB0](v20, -1, -1);
  }

  v22 = [objc_opt_self() errorWithCode_];
  if (!v22)
  {
    __break(1u);
    goto LABEL_26;
  }

  swift_willThrow();
LABEL_22:
  (*(v0[17] + 8))(v0[20], v0[16]);

  v58 = v0[1];

  return v58();
}

uint64_t sub_19560CEB0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {

    v2 = sub_19560D104;
  }

  else
  {
    v2 = sub_19560CFD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19560CFD8()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  (*(v0[7] + 8))(v0[9], v0[6]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];
  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[21];
  v11 = v0[22];

  return v7(v10, v11, v8, v9);
}

uint64_t sub_19560D104()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  (*(v0[7] + 8))(v0[9], v0[6]);
  (*(v3 + 8))(v1, v2);
  (*(v0[17] + 8))(v0[20], v0[16]);

  v4 = v0[1];

  return v4();
}

void sub_19560D220(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{

  oslog = sub_19565D0CC();
  v9 = sub_19565D69C();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1955EA0F8(a2, a3, &v13);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_1955EA0F8(a4, a5, &v13);
    _os_log_impl(&dword_1954A0000, oslog, v9, "appExtensionProcess() extension process configuration was interrupted for extension %{public}s for %{public}s app", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8B5DB0](v11, -1, -1);
    MEMORY[0x19A8B5DB0](v10, -1, -1);
  }
}

void sub_19560D380(uint64_t a1, char a2)
{
  v72[1] = *MEMORY[0x1E69E9840];
  v3 = sub_19565D0EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAECD990 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_1EAED0998);
  v68 = v4;
  v8 = *(v4 + 16);
  v70 = v6;
  v8(v6, v7, v3);
  if (qword_1EAECB7E8 != -1)
  {
    swift_once();
  }

  v66 = qword_1EAECB7F0;
  v9 = _AppExtensionIdentity.appDisplayName.getter();
  v11 = v10;
  v12 = _AppExtensionIdentity.appBundleIdentifier.getter();
  v14 = v13;
  v15 = [objc_allocWithZone(CNMutableContainer) init];
  v65 = v9;
  v16 = sub_19565D27C();
  [v15 setName_];

  [v15 setType_];
  v64 = v12;
  v17 = sub_19565D27C();
  [v15 setProviderIdentifier_];

  [v15 setEnabled_];
  v18 = [objc_allocWithZone(CNSaveRequest) init];
  [v18 addContainer:v15 toAccountWithIdentifier:0];
  [v18 setIgnoresContactProviderRestrictions_];
  v19 = sub_1956019F0();
  v72[0] = 0;
  v20 = [v19 executeSaveRequest:v18 error:v72];

  if (v20)
  {
    v69 = v3;
    v21 = v72[0];
    v22 = _AppExtensionIdentity.appBundleIdentifier.getter();
    v23 = *(v66 + OBJC_IVAR____TtC8Contacts29CNContactProviderSupportCache_lock);
    v24 = MEMORY[0x1EEE9AC00](v22);
    *(&v62 - 4) = v25;
    *(&v62 - 3) = v24;
    *(&v62 - 2) = v26;
    *(&v62 - 1) = v15;
    MEMORY[0x1EEE9AC00](v24);
    *(&v62 - 2) = sub_195613528;
    *(&v62 - 1) = v27;
    os_unfair_lock_lock(v23 + 4);
    v28 = v67;
    sub_195613588();
    if (!v28)
    {
      os_unfair_lock_unlock(v23 + 4);

      v29 = v15;

      v30 = v70;
      v31 = sub_19565D0CC();
      v32 = sub_19565D6AC();
      v67 = v31;
      if (!os_log_type_enabled(v31, v32))
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        v43 = *(v68 + 8);
        v44 = v30;
        goto LABEL_15;
      }

      LODWORD(v66) = v32;
      v33 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v72[0] = v63;
      *v33 = 136446722;
      v23 = [v29 identifier];
      v34 = v29;

      if (v23)
      {
        v35 = sub_19565D28C();
        v37 = v36;

        v38 = sub_1955EA0F8(v35, v37, v72);

        *(v33 + 4) = v38;
        *(v33 + 12) = 2082;
        v39 = sub_1955EA0F8(v64, v14, v72);

        *(v33 + 14) = v39;
        *(v33 + 22) = 2082;
        v40 = sub_1955EA0F8(v65, v11, v72);

        *(v33 + 24) = v40;
        v41 = v67;
        _os_log_impl(&dword_1954A0000, v67, v66, "createProviderContainer() created container with identifier %{public}s and provider identifier %{public}s for %{public}s app", v33, 0x20u);
        v42 = v63;
        swift_arrayDestroy();
        MEMORY[0x19A8B5DB0](v42, -1, -1);
        MEMORY[0x19A8B5DB0](v33, -1, -1);

        v43 = *(v68 + 8);
        v44 = v70;
LABEL_15:
        v43(v44, v69);
        return;
      }

      __break(1u);
    }

    os_unfair_lock_unlock(v23 + 4);
    __break(1u);
  }

  else
  {
    v45 = v72[0];
    v46 = sub_19565CE6C();

    swift_willThrow();

    v47 = v46;
    v48 = v70;
    v49 = sub_19565D0CC();
    v50 = sub_19565D69C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = v3;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v72[0] = v53;
      *v52 = 136446722;
      v54 = sub_1955EA0F8(v64, v14, v72);

      *(v52 + 4) = v54;
      *(v52 + 12) = 2082;
      v55 = sub_1955EA0F8(v65, v11, v72);

      *(v52 + 14) = v55;
      *(v52 + 22) = 2082;
      v71 = v46;
      v56 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE100);
      v57 = sub_19565D2EC();
      v59 = sub_1955EA0F8(v57, v58, v72);

      *(v52 + 24) = v59;
      _os_log_impl(&dword_1954A0000, v49, v50, "createProviderContainer() failed to create container with provider identifier %{public}s for %{public}s app, error = %{public}s", v52, 0x20u);
      swift_arrayDestroy();
      v60 = v53;
      v48 = v70;
      MEMORY[0x19A8B5DB0](v60, -1, -1);
      v61 = v52;
      v3 = v51;
      MEMORY[0x19A8B5DB0](v61, -1, -1);
    }

    else
    {
    }

    swift_willThrow();
    (*(v68 + 8))(v48, v3);
  }
}