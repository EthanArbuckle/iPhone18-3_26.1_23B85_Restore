void sub_2173EB3A4(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v31 = a3 & 1;
  if ((a3 & 1) == 0)
  {
    v27 = 0;
    v12 = MEMORY[0x277D84F90];
LABEL_18:
    *a4 = v5;
    *(a4 + 8) = 0;
    *(a4 + 16) = a2;
    *(a4 + 24) = v27;
    *(a4 + 32) = v12;
    return;
  }

  v7 = a1;
  v8 = [v7 numberOfSections];
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  v9 = v8;
  if (!v8)
  {

    v12 = MEMORY[0x277D84F90];
    v27 = 1;
    goto LABEL_18;
  }

  v28 = v5;
  v29 = a2;
  v30 = a4;
  v10 = 0;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = [v7 numberOfItemsInSection_];
    if (v13 < 1)
    {
      goto LABEL_14;
    }

    v14 = v10 + v13;
    if (__OFADD__(v10, v13))
    {
      break;
    }

    v15 = v14 - 1;
    if (__OFSUB__(v14, 1))
    {
      goto LABEL_20;
    }

    if (v15 < v10)
    {
      goto LABEL_21;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = OUTLINED_FUNCTION_145_4();
      sub_2172B1944(v18, v19, v20, v21);
      v12 = v22;
    }

    v16 = *(v12 + 16);
    if (v16 >= *(v12 + 24) >> 1)
    {
      OUTLINED_FUNCTION_1222();
      sub_2172B1944(v23, v24, v25, v12);
      v12 = v26;
    }

    *(v12 + 16) = v16 + 1;
    v17 = v12 + 16 * v16;
    *(v17 + 32) = v10;
    *(v17 + 40) = v15;
    v10 = v14;
LABEL_14:
    if (v9 == ++v11)
    {

      v27 = v31;
      a2 = v29;
      a4 = v30;
      v5 = v28;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_2173EB528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 1;
  v10 = MEMORY[0x277D84F90];
  *(a5 + 16) = MEMORY[0x277D84F90];
  *(a5 + 24) = v10;
  swift_beginAccess();
  v11 = off_280BEBCD0;

  (v11)(&v25, v12);

  v13 = *(&v26 + 1);
  v14 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v13, v14, a5 + 128);
  __swift_destroy_boxed_opaque_existential_1(&v25);
  *(a5 + 168) = v10;
  *(a5 + 176) = 0;
  if (dynamic_cast_existential_1_conditional(&type metadata for Track))
  {
    sub_217441EF0(a1, a2, a3, a4, sub_2172CB708, v15, v16, v17, v23, v24, v25, *(&v25 + 1), v26, *(&v26 + 1), v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);

    v19 = v28;
    v20 = v27 & 1;
    v21 = v29 & 0xCFFFFFFFFFFFFFF8;
    v22 = v26;
    *(a5 + 32) = v25;
    *(a5 + 48) = v22;
    *(a5 + 64) = v20;
    *(a5 + 72) = v19;
    *(a5 + 80) = v21;
    *(a5 + 88) = 0x8000000000000000;
    *(a5 + 96) = 0;
    *(a5 + 104) = 0;
    *(a5 + 112) = 1;
    *(a5 + 120) = 0;
  }

  else
  {
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_2173EB6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for MusicVideo))
  {
    sub_217441EF0(a1, a2, a3, a4, sub_2172CB708, v16, v17, v18, v34, v35, v37, *(&v37 + 1), v39, *(&v39 + 1), v41, *(&v41 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);

    LOBYTE(a5) = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v38;
    v24 = v40;
    v25 = v42;
    v26 = 1;
  }

  else
  {
    if (qword_280BE6EA0 != -1)
    {
      swift_once();
    }

    v27 = off_280BE6EA8;
    if (a5 == 5)
    {
      if (!*(off_280BE6EA8 + 2))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (*(off_280BE6EA8 + 48) != 1)
      {
        v8 = *(off_280BE6EA8 + 4);
        a5 = *(off_280BE6EA8 + 5);
        v7 = off_280BE6EA8;
        v28 = qword_280BE4BA8;
        sub_217751DE8();
        if (v28 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }

      a5 = 1;
    }

    while (1)
    {
      v7 = a1;
      if ((a6 & 1) == 0)
      {
        break;
      }

      v36 = a4;
      if (v27[2])
      {
        v30 = a3;
        v21 = v27[4];
        v26 = v27[5];
        v20 = a5;
        v22 = *(v27 + 48);
        v31 = v27;
        sub_217751DE8();
        v27 = v31;
        a4 = v36;
        goto LABEL_21;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
LABEL_10:
      v29 = v8 == qword_280BE4BB0 && a5 == unk_280BE4BB8;
      if (v29 || (sub_217753058() & 1) != 0)
      {

        a5 = 2;
      }

      else
      {
        if (qword_280BE4B60 != -1)
        {
          swift_once();
        }

        v32 = v8 == qword_280BE4B68 && a5 == unk_280BE4B70;
        if (v32 || (sub_217753058() & 1) != 0)
        {

          a5 = 3;
        }

        else
        {
          if (qword_280BE4C10 != -1)
          {
            swift_once();
          }

          if (v8 == qword_280BE4C18 && a5 == unk_280BE4C20)
          {

            a5 = 4;
          }

          else
          {
            v8 = sub_217753058();

            if (v8)
            {
              a5 = 4;
            }

            else
            {
              a5 = 0;
            }
          }
        }
      }

      v27 = v7;
    }

    v30 = a3;
    v20 = 0;
    v21 = 0;
    v26 = 0;
    v22 = 0;
LABEL_21:
    sub_2173EDFD4(v7, a2, v27, v30, a4, sub_2172CB708);

    v23 = v37;
    v24 = v39;
    v25 = v41;
  }

  *a7 = v23;
  *(a7 + 16) = v24;
  *(a7 + 32) = v25;
  *(a7 + 48) = v43;
  *(a7 + 56) = a5;
  *(a7 + 64) = v20;
  *(a7 + 72) = v21;
  *(a7 + 80) = v26;
  *(a7 + 88) = v22;
  return result;
}

uint64_t sub_2173EBA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for RecordLabel))
  {
    sub_217441EF0(a1, a2, a3, a4, sub_2172CB708, v16, v17, v18, v34, v35, v37, *(&v37 + 1), v39, *(&v39 + 1), v41, *(&v41 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);

    LOBYTE(a5) = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v38;
    v24 = v40;
    v25 = v42;
    v26 = 1;
  }

  else
  {
    if (qword_280BE3F50 != -1)
    {
      swift_once();
    }

    v27 = off_280BE3F58;
    if (a5 == 5)
    {
      if (!*(off_280BE3F58 + 2))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (*(off_280BE3F58 + 48) != 1)
      {
        v8 = *(off_280BE3F58 + 4);
        a5 = *(off_280BE3F58 + 5);
        v7 = off_280BE3F58;
        v28 = qword_280BE4BA8;
        sub_217751DE8();
        if (v28 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }

      a5 = 1;
    }

    while (1)
    {
      v7 = a1;
      if ((a6 & 1) == 0)
      {
        break;
      }

      v36 = a4;
      if (v27[2])
      {
        v30 = a3;
        v21 = v27[4];
        v26 = v27[5];
        v20 = a5;
        v22 = *(v27 + 48);
        v31 = v27;
        sub_217751DE8();
        v27 = v31;
        a4 = v36;
        goto LABEL_21;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
LABEL_10:
      v29 = v8 == qword_280BE4BB0 && a5 == unk_280BE4BB8;
      if (v29 || (sub_217753058() & 1) != 0)
      {

        a5 = 2;
      }

      else
      {
        if (qword_280BE4B60 != -1)
        {
          swift_once();
        }

        v32 = v8 == qword_280BE4B68 && a5 == unk_280BE4B70;
        if (v32 || (sub_217753058() & 1) != 0)
        {

          a5 = 3;
        }

        else
        {
          if (qword_280BE4C10 != -1)
          {
            swift_once();
          }

          if (v8 == qword_280BE4C18 && a5 == unk_280BE4C20)
          {

            a5 = 4;
          }

          else
          {
            v8 = sub_217753058();

            if (v8)
            {
              a5 = 4;
            }

            else
            {
              a5 = 0;
            }
          }
        }
      }

      v27 = v7;
    }

    v30 = a3;
    v20 = 0;
    v21 = 0;
    v26 = 0;
    v22 = 0;
LABEL_21:
    sub_2173EDFD4(v7, a2, v27, v30, a4, sub_2172CB708);

    v23 = v37;
    v24 = v39;
    v25 = v41;
  }

  *a7 = v23;
  *(a7 + 16) = v24;
  *(a7 + 32) = v25;
  *(a7 + 48) = v43;
  *(a7 + 56) = a5;
  *(a7 + 64) = v20;
  *(a7 + 72) = v21;
  *(a7 + 80) = v26;
  *(a7 + 88) = v22;
  return result;
}

uint64_t sub_2173EBDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for Song))
  {
    sub_217441EF0(a1, a2, a3, a4, sub_2172CB708, v16, v17, v18, v34, v35, v37, *(&v37 + 1), v39, *(&v39 + 1), v41, *(&v41 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);

    LOBYTE(a5) = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v38;
    v24 = v40;
    v25 = v42;
    v26 = 1;
  }

  else
  {
    if (qword_280BE7620 != -1)
    {
      swift_once();
    }

    v27 = off_280BE7628;
    if (a5 == 5)
    {
      if (!*(off_280BE7628 + 2))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (*(off_280BE7628 + 48) != 1)
      {
        v8 = *(off_280BE7628 + 4);
        a5 = *(off_280BE7628 + 5);
        v7 = off_280BE7628;
        v28 = qword_280BE4BA8;
        sub_217751DE8();
        if (v28 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }

      a5 = 1;
    }

    while (1)
    {
      v7 = a1;
      if ((a6 & 1) == 0)
      {
        break;
      }

      v36 = a4;
      if (v27[2])
      {
        v30 = a3;
        v21 = v27[4];
        v26 = v27[5];
        v20 = a5;
        v22 = *(v27 + 48);
        v31 = v27;
        sub_217751DE8();
        v27 = v31;
        a4 = v36;
        goto LABEL_21;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
LABEL_10:
      v29 = v8 == qword_280BE4BB0 && a5 == unk_280BE4BB8;
      if (v29 || (sub_217753058() & 1) != 0)
      {

        a5 = 2;
      }

      else
      {
        if (qword_280BE4B60 != -1)
        {
          swift_once();
        }

        v32 = v8 == qword_280BE4B68 && a5 == unk_280BE4B70;
        if (v32 || (sub_217753058() & 1) != 0)
        {

          a5 = 3;
        }

        else
        {
          if (qword_280BE4C10 != -1)
          {
            swift_once();
          }

          if (v8 == qword_280BE4C18 && a5 == unk_280BE4C20)
          {

            a5 = 4;
          }

          else
          {
            v8 = sub_217753058();

            if (v8)
            {
              a5 = 4;
            }

            else
            {
              a5 = 0;
            }
          }
        }
      }

      v27 = v7;
    }

    v30 = a3;
    v20 = 0;
    v21 = 0;
    v26 = 0;
    v22 = 0;
LABEL_21:
    sub_2173EDFD4(v7, a2, v27, v30, a4, sub_2172CB708);

    v23 = v37;
    v24 = v39;
    v25 = v41;
  }

  *a7 = v23;
  *(a7 + 16) = v24;
  *(a7 + 32) = v25;
  *(a7 + 48) = v43;
  *(a7 + 56) = a5;
  *(a7 + 64) = v20;
  *(a7 + 72) = v21;
  *(a7 + 80) = v26;
  *(a7 + 88) = v22;
  return result;
}

uint64_t sub_2173EC108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for Album))
  {
    sub_217441EF0(a1, a2, a3, a4, sub_2171F87CC, v16, v17, v18, v34, v35, v37, *(&v37 + 1), v39, *(&v39 + 1), v41, *(&v41 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);

    LOBYTE(a5) = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v38;
    v24 = v40;
    v25 = v42;
    v26 = 1;
  }

  else
  {
    if (qword_280BE7F08 != -1)
    {
      swift_once();
    }

    v27 = off_280BE7F10;
    if (a5 == 5)
    {
      if (!*(off_280BE7F10 + 2))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (*(off_280BE7F10 + 48) != 1)
      {
        v8 = *(off_280BE7F10 + 4);
        a5 = *(off_280BE7F10 + 5);
        v7 = off_280BE7F10;
        v28 = qword_280BE4BA8;
        sub_217751DE8();
        if (v28 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }

      a5 = 1;
    }

    while (1)
    {
      v7 = a1;
      if ((a6 & 1) == 0)
      {
        break;
      }

      v36 = a4;
      if (v27[2])
      {
        v30 = a3;
        v21 = v27[4];
        v26 = v27[5];
        v20 = a5;
        v22 = *(v27 + 48);
        v31 = v27;
        sub_217751DE8();
        v27 = v31;
        a4 = v36;
        goto LABEL_21;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
LABEL_10:
      v29 = v8 == qword_280BE4BB0 && a5 == unk_280BE4BB8;
      if (v29 || (sub_217753058() & 1) != 0)
      {

        a5 = 2;
      }

      else
      {
        if (qword_280BE4B60 != -1)
        {
          swift_once();
        }

        v32 = v8 == qword_280BE4B68 && a5 == unk_280BE4B70;
        if (v32 || (sub_217753058() & 1) != 0)
        {

          a5 = 3;
        }

        else
        {
          if (qword_280BE4C10 != -1)
          {
            swift_once();
          }

          if (v8 == qword_280BE4C18 && a5 == unk_280BE4C20)
          {

            a5 = 4;
          }

          else
          {
            v8 = sub_217753058();

            if (v8)
            {
              a5 = 4;
            }

            else
            {
              a5 = 0;
            }
          }
        }
      }

      v27 = v7;
    }

    v30 = a3;
    v20 = 0;
    v21 = 0;
    v26 = 0;
    v22 = 0;
LABEL_21:
    sub_2173EDFD4(v7, a2, v27, v30, a4, sub_2172CB708);

    v23 = v37;
    v24 = v39;
    v25 = v41;
  }

  *a7 = v23;
  *(a7 + 16) = v24;
  *(a7 + 32) = v25;
  *(a7 + 48) = v43;
  *(a7 + 56) = a5;
  *(a7 + 64) = v20;
  *(a7 + 72) = v21;
  *(a7 + 80) = v26;
  *(a7 + 88) = v22;
  return result;
}

uint64_t sub_2173EC468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for Genre))
  {
    sub_217441EF0(a1, a2, a3, a4, sub_2172CB708, v16, v17, v18, v34, v35, v37, *(&v37 + 1), v39, *(&v39 + 1), v41, *(&v41 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);

    LOBYTE(a5) = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v38;
    v24 = v40;
    v25 = v42;
    v26 = 1;
  }

  else
  {
    if (qword_280BE5538 != -1)
    {
      swift_once();
    }

    v27 = off_280BE5540;
    if (a5 == 5)
    {
      if (!*(off_280BE5540 + 2))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (*(off_280BE5540 + 48) != 1)
      {
        v8 = *(off_280BE5540 + 4);
        a5 = *(off_280BE5540 + 5);
        v7 = off_280BE5540;
        v28 = qword_280BE4BA8;
        sub_217751DE8();
        if (v28 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }

      a5 = 1;
    }

    while (1)
    {
      v7 = a1;
      if ((a6 & 1) == 0)
      {
        break;
      }

      v36 = a4;
      if (v27[2])
      {
        v30 = a3;
        v21 = v27[4];
        v26 = v27[5];
        v20 = a5;
        v22 = *(v27 + 48);
        v31 = v27;
        sub_217751DE8();
        v27 = v31;
        a4 = v36;
        goto LABEL_21;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
LABEL_10:
      v29 = v8 == qword_280BE4BB0 && a5 == unk_280BE4BB8;
      if (v29 || (sub_217753058() & 1) != 0)
      {

        a5 = 2;
      }

      else
      {
        if (qword_280BE4B60 != -1)
        {
          swift_once();
        }

        v32 = v8 == qword_280BE4B68 && a5 == unk_280BE4B70;
        if (v32 || (sub_217753058() & 1) != 0)
        {

          a5 = 3;
        }

        else
        {
          if (qword_280BE4C10 != -1)
          {
            swift_once();
          }

          if (v8 == qword_280BE4C18 && a5 == unk_280BE4C20)
          {

            a5 = 4;
          }

          else
          {
            v8 = sub_217753058();

            if (v8)
            {
              a5 = 4;
            }

            else
            {
              a5 = 0;
            }
          }
        }
      }

      v27 = v7;
    }

    v30 = a3;
    v20 = 0;
    v21 = 0;
    v26 = 0;
    v22 = 0;
LABEL_21:
    sub_2173EDFD4(v7, a2, v27, v30, a4, sub_2172CB708);

    v23 = v37;
    v24 = v39;
    v25 = v41;
  }

  *a7 = v23;
  *(a7 + 16) = v24;
  *(a7 + 32) = v25;
  *(a7 + 48) = v43;
  *(a7 + 56) = a5;
  *(a7 + 64) = v20;
  *(a7 + 72) = v21;
  *(a7 + 80) = v26;
  *(a7 + 88) = v22;
  return result;
}

uint64_t sub_2173EC7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for Artist))
  {
    sub_217441EF0(a1, a2, a3, a4, sub_2172CB708, v16, v17, v18, v34, v35, v37, *(&v37 + 1), v39, *(&v39 + 1), v41, *(&v41 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);

    LOBYTE(a5) = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v38;
    v24 = v40;
    v25 = v42;
    v26 = 1;
  }

  else
  {
    if (qword_280BE5220 != -1)
    {
      swift_once();
    }

    v27 = off_280BE5228[0];
    if (a5 == 5)
    {
      if (!*(off_280BE5228[0] + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (*(off_280BE5228[0] + 48) != 1)
      {
        v8 = *(off_280BE5228[0] + 32);
        a5 = *(off_280BE5228[0] + 40);
        v7 = off_280BE5228[0];
        v28 = qword_280BE4BA8;
        sub_217751DE8();
        if (v28 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }

      a5 = 1;
    }

    while (1)
    {
      v7 = a1;
      if ((a6 & 1) == 0)
      {
        break;
      }

      v36 = a4;
      if (*(v27 + 16))
      {
        v30 = a3;
        v21 = *(v27 + 32);
        v26 = *(v27 + 40);
        v20 = a5;
        v22 = *(v27 + 48);
        v31 = v27;
        sub_217751DE8();
        v27 = v31;
        a4 = v36;
        goto LABEL_21;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
LABEL_10:
      v29 = v8 == qword_280BE4BB0 && a5 == unk_280BE4BB8;
      if (v29 || (sub_217753058() & 1) != 0)
      {

        a5 = 2;
      }

      else
      {
        if (qword_280BE4B60 != -1)
        {
          swift_once();
        }

        v32 = v8 == qword_280BE4B68 && a5 == unk_280BE4B70;
        if (v32 || (sub_217753058() & 1) != 0)
        {

          a5 = 3;
        }

        else
        {
          if (qword_280BE4C10 != -1)
          {
            swift_once();
          }

          if (v8 == qword_280BE4C18 && a5 == unk_280BE4C20)
          {

            a5 = 4;
          }

          else
          {
            v8 = sub_217753058();

            if (v8)
            {
              a5 = 4;
            }

            else
            {
              a5 = 0;
            }
          }
        }
      }

      v27 = v7;
    }

    v30 = a3;
    v20 = 0;
    v21 = 0;
    v26 = 0;
    v22 = 0;
LABEL_21:
    sub_2173EDFD4(v7, a2, v27, v30, a4, sub_2172CB708);

    v23 = v37;
    v24 = v39;
    v25 = v41;
  }

  *a7 = v23;
  *(a7 + 16) = v24;
  *(a7 + 32) = v25;
  *(a7 + 48) = v43;
  *(a7 + 56) = a5;
  *(a7 + 64) = v20;
  *(a7 + 72) = v21;
  *(a7 + 80) = v26;
  *(a7 + 88) = v22;
  return result;
}

uint64_t sub_2173ECB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for Curator))
  {
    sub_217441EF0(a1, a2, a3, a4, sub_2172CB708, v16, v17, v18, v34, v35, v37, *(&v37 + 1), v39, *(&v39 + 1), v41, *(&v41 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);

    LOBYTE(a5) = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v38;
    v24 = v40;
    v25 = v42;
    v26 = 1;
  }

  else
  {
    if (qword_280BE4FB0 != -1)
    {
      swift_once();
    }

    v27 = off_280BE4FB8;
    if (a5 == 5)
    {
      if (!*(off_280BE4FB8 + 2))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (*(off_280BE4FB8 + 48) != 1)
      {
        v8 = *(off_280BE4FB8 + 4);
        a5 = *(off_280BE4FB8 + 5);
        v7 = off_280BE4FB8;
        v28 = qword_280BE4BA8;
        sub_217751DE8();
        if (v28 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }

      a5 = 1;
    }

    while (1)
    {
      v7 = a1;
      if ((a6 & 1) == 0)
      {
        break;
      }

      v36 = a4;
      if (v27[2])
      {
        v30 = a3;
        v21 = v27[4];
        v26 = v27[5];
        v20 = a5;
        v22 = *(v27 + 48);
        v31 = v27;
        sub_217751DE8();
        v27 = v31;
        a4 = v36;
        goto LABEL_21;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
LABEL_10:
      v29 = v8 == qword_280BE4BB0 && a5 == unk_280BE4BB8;
      if (v29 || (sub_217753058() & 1) != 0)
      {

        a5 = 2;
      }

      else
      {
        if (qword_280BE4B60 != -1)
        {
          swift_once();
        }

        v32 = v8 == qword_280BE4B68 && a5 == unk_280BE4B70;
        if (v32 || (sub_217753058() & 1) != 0)
        {

          a5 = 3;
        }

        else
        {
          if (qword_280BE4C10 != -1)
          {
            swift_once();
          }

          if (v8 == qword_280BE4C18 && a5 == unk_280BE4C20)
          {

            a5 = 4;
          }

          else
          {
            v8 = sub_217753058();

            if (v8)
            {
              a5 = 4;
            }

            else
            {
              a5 = 0;
            }
          }
        }
      }

      v27 = v7;
    }

    v30 = a3;
    v20 = 0;
    v21 = 0;
    v26 = 0;
    v22 = 0;
LABEL_21:
    sub_2173EDFD4(v7, a2, v27, v30, a4, sub_2172CB708);

    v23 = v37;
    v24 = v39;
    v25 = v41;
  }

  *a7 = v23;
  *(a7 + 16) = v24;
  *(a7 + 32) = v25;
  *(a7 + 48) = v43;
  *(a7 + 56) = a5;
  *(a7 + 64) = v20;
  *(a7 + 72) = v21;
  *(a7 + 80) = v26;
  *(a7 + 88) = v22;
  return result;
}

uint64_t sub_2173ECE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for Station))
  {
    sub_217441EF0(a1, a2, a3, a4, sub_2172CB708, v16, v17, v18, v34, v35, v37, *(&v37 + 1), v39, *(&v39 + 1), v41, *(&v41 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);

    LOBYTE(a5) = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v38;
    v24 = v40;
    v25 = v42;
    v26 = 1;
  }

  else
  {
    if (qword_280BE4DA0 != -1)
    {
      swift_once();
    }

    v27 = off_280BE4DA8;
    if (a5 == 5)
    {
      if (!*(off_280BE4DA8 + 2))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (*(off_280BE4DA8 + 48) != 1)
      {
        v8 = *(off_280BE4DA8 + 4);
        a5 = *(off_280BE4DA8 + 5);
        v7 = off_280BE4DA8;
        v28 = qword_280BE4BA8;
        sub_217751DE8();
        if (v28 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }

      a5 = 1;
    }

    while (1)
    {
      v7 = a1;
      if ((a6 & 1) == 0)
      {
        break;
      }

      v36 = a4;
      if (v27[2])
      {
        v30 = a3;
        v21 = v27[4];
        v26 = v27[5];
        v20 = a5;
        v22 = *(v27 + 48);
        v31 = v27;
        sub_217751DE8();
        v27 = v31;
        a4 = v36;
        goto LABEL_21;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
LABEL_10:
      v29 = v8 == qword_280BE4BB0 && a5 == unk_280BE4BB8;
      if (v29 || (sub_217753058() & 1) != 0)
      {

        a5 = 2;
      }

      else
      {
        if (qword_280BE4B60 != -1)
        {
          swift_once();
        }

        v32 = v8 == qword_280BE4B68 && a5 == unk_280BE4B70;
        if (v32 || (sub_217753058() & 1) != 0)
        {

          a5 = 3;
        }

        else
        {
          if (qword_280BE4C10 != -1)
          {
            swift_once();
          }

          if (v8 == qword_280BE4C18 && a5 == unk_280BE4C20)
          {

            a5 = 4;
          }

          else
          {
            v8 = sub_217753058();

            if (v8)
            {
              a5 = 4;
            }

            else
            {
              a5 = 0;
            }
          }
        }
      }

      v27 = v7;
    }

    v30 = a3;
    v20 = 0;
    v21 = 0;
    v26 = 0;
    v22 = 0;
LABEL_21:
    sub_2173EDFD4(v7, a2, v27, v30, a4, sub_2172CB708);

    v23 = v37;
    v24 = v39;
    v25 = v41;
  }

  *a7 = v23;
  *(a7 + 16) = v24;
  *(a7 + 32) = v25;
  *(a7 + 48) = v43;
  *(a7 + 56) = a5;
  *(a7 + 64) = v20;
  *(a7 + 72) = v21;
  *(a7 + 80) = v26;
  *(a7 + 88) = v22;
  return result;
}

void sub_2173ED1E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, __n128 *a9@<X8>)
{
  v10 = a7;
  if (dynamic_cast_existential_1_conditional(a7))
  {
    sub_217441EF0(a1, a2, a3, a4, a8, v18, v19, v20, v58, v60, v62, v64, v66, *(&v66 + 1), v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);

    LOBYTE(a5) = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v32 = OUTLINED_FUNCTION_1465(v21, v25, v26, v27, v28, v29, v30, v31, v59, v61, v63, v65, v67);
    v35 = 1;
LABEL_21:
    *a9 = v32;
    a9[1] = v33;
    a9[2] = v34;
    a9[3].n128_u64[0] = v72;
    a9[3].n128_u8[8] = a5;
    a9[4].n128_u64[0] = v22;
    a9[4].n128_u64[1] = v23;
    a9[5].n128_u64[0] = v35;
    a9[5].n128_u8[8] = v24;
    return;
  }

  v36 = dynamic_cast_existential_1_conditional(v10);
  if (v36)
  {
    v38 = v36;
    v39 = (*(v37 + 8))();
    v40 = v39;
    if (a5 == 5)
    {
      if (!*(v39 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (*(v39 + 48) != 1)
      {
        v10 = *(v39 + 32);
        a5 = *(v39 + 40);
        v38 = v39;
        v41 = qword_280BE4BA8;
        sub_217751DE8();
        if (v41 == -1)
        {
          goto LABEL_9;
        }

        goto LABEL_42;
      }

      a5 = 1;
    }

    while (1)
    {
      v38 = a1;
      if ((a6 & 1) == 0)
      {
        break;
      }

      v64 = a4;
      if (*(v40 + 16))
      {
        v43 = a3;
        v23 = *(v40 + 32);
        v35 = *(v40 + 40);
        v22 = a5;
        v24 = *(v40 + 48);
        sub_217751DE8();
        goto LABEL_20;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      swift_once();
LABEL_9:
      v42 = v10 == qword_280BE4BB0 && a5 == unk_280BE4BB8;
      if (v42 || (OUTLINED_FUNCTION_178_0(), (sub_217753058() & 1) != 0))
      {

        a5 = 2;
      }

      else
      {
        if (qword_280BE4B60 != -1)
        {
          swift_once();
        }

        v56 = v10 == qword_280BE4B68 && a5 == unk_280BE4B70;
        if (v56 || (OUTLINED_FUNCTION_178_0(), (sub_217753058() & 1) != 0))
        {

          a5 = 3;
        }

        else
        {
          if (qword_280BE4C10 != -1)
          {
            swift_once();
          }

          if (v10 == qword_280BE4C18 && a5 == unk_280BE4C20)
          {

            a5 = 4;
          }

          else
          {
            OUTLINED_FUNCTION_178_0();
            v10 = sub_217753058();

            if (v10)
            {
              a5 = 4;
            }

            else
            {
              a5 = 0;
            }
          }
        }
      }

      v40 = v38;
    }

    v43 = a3;
    v22 = 0;
    v23 = 0;
    v35 = 0;
    v24 = 0;
LABEL_20:
    v44 = OUTLINED_FUNCTION_154();
    sub_2173EDFD4(v44, v45, v47, v43, a4, v46);

    v32 = OUTLINED_FUNCTION_1465(v48, v49, v50, v51, v52, v53, v54, v55, v58, v60, v62, v64, v66);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_893();
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_1221();
  __break(1u);
}

uint64_t sub_2173ED558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry))
  {
    sub_217441EF0(a1, a2, a3, a4, sub_2172CB708, v15, v16, v17, v37, v38, v39, v40, v42, *(&v42 + 1), v44, *(&v44 + 1), v46, *(&v46 + 1), v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);

    LOBYTE(a5) = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = v43;
    v23 = v45;
    v24 = v47;
    v25 = 1;
LABEL_21:
    *a7 = v22;
    *(a7 + 16) = v23;
    *(a7 + 32) = v24;
    *(a7 + 48) = v48;
    *(a7 + 56) = a5;
    *(a7 + 64) = v19;
    *(a7 + 72) = v20;
    *(a7 + 80) = v25;
    *(a7 + 88) = v21;
    return result;
  }

  v26 = dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry);
  if (v26)
  {
    v28 = v26;
    v29 = (*(v27 + 8))();
    v30 = v29;
    if (a5 == 5)
    {
      if (!*(v29 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (*(v29 + 48) != 1)
      {
        v7 = *(v29 + 32);
        a5 = *(v29 + 40);
        v28 = v29;
        v31 = qword_280BE4BA8;
        sub_217751DE8();
        if (v31 == -1)
        {
          goto LABEL_9;
        }

        goto LABEL_42;
      }

      a5 = 1;
    }

    while (1)
    {
      v28 = a1;
      if ((a6 & 1) == 0)
      {
        break;
      }

      v41 = a4;
      if (*(v30 + 16))
      {
        v33 = a3;
        v20 = *(v30 + 32);
        v25 = *(v30 + 40);
        v19 = a5;
        v21 = *(v30 + 48);
        v34 = v30;
        sub_217751DE8();
        v30 = v34;
        a4 = v41;
        goto LABEL_20;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      swift_once();
LABEL_9:
      v32 = v7 == qword_280BE4BB0 && a5 == unk_280BE4BB8;
      if (v32 || (sub_217753058() & 1) != 0)
      {

        a5 = 2;
      }

      else
      {
        if (qword_280BE4B60 != -1)
        {
          swift_once();
        }

        v35 = v7 == qword_280BE4B68 && a5 == unk_280BE4B70;
        if (v35 || (sub_217753058() & 1) != 0)
        {

          a5 = 3;
        }

        else
        {
          if (qword_280BE4C10 != -1)
          {
            swift_once();
          }

          if (v7 == qword_280BE4C18 && a5 == unk_280BE4C20)
          {

            a5 = 4;
          }

          else
          {
            v7 = sub_217753058();

            if (v7)
            {
              a5 = 4;
            }

            else
            {
              a5 = 0;
            }
          }
        }
      }

      v30 = v28;
    }

    v33 = a3;
    v19 = 0;
    v20 = 0;
    v25 = 0;
    v21 = 0;
LABEL_20:
    sub_2173EDFD4(v28, a2, v30, v33, a4, sub_2172CB708);

    v22 = v42;
    v23 = v44;
    v24 = v46;
    goto LABEL_21;
  }

  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2173ED914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for Playlist))
  {
    sub_217441EF0(a1, a2, a3, a4, sub_2172CB708, v16, v17, v18, v34, v35, v37, *(&v37 + 1), v39, *(&v39 + 1), v41, *(&v41 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);

    LOBYTE(a5) = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v38;
    v24 = v40;
    v25 = v42;
    v26 = 1;
  }

  else
  {
    if (qword_280BE4610 != -1)
    {
      swift_once();
    }

    v27 = off_280BE4618[0];
    if (a5 == 5)
    {
      if (!*(off_280BE4618[0] + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (*(off_280BE4618[0] + 48) != 1)
      {
        v8 = *(off_280BE4618[0] + 32);
        a5 = *(off_280BE4618[0] + 40);
        v7 = off_280BE4618[0];
        v28 = qword_280BE4BA8;
        sub_217751DE8();
        if (v28 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }

      a5 = 1;
    }

    while (1)
    {
      v7 = a1;
      if ((a6 & 1) == 0)
      {
        break;
      }

      v36 = a4;
      if (*(v27 + 16))
      {
        v30 = a3;
        v21 = *(v27 + 32);
        v26 = *(v27 + 40);
        v20 = a5;
        v22 = *(v27 + 48);
        v31 = v27;
        sub_217751DE8();
        v27 = v31;
        a4 = v36;
        goto LABEL_21;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
LABEL_10:
      v29 = v8 == qword_280BE4BB0 && a5 == unk_280BE4BB8;
      if (v29 || (sub_217753058() & 1) != 0)
      {

        a5 = 2;
      }

      else
      {
        if (qword_280BE4B60 != -1)
        {
          swift_once();
        }

        v32 = v8 == qword_280BE4B68 && a5 == unk_280BE4B70;
        if (v32 || (sub_217753058() & 1) != 0)
        {

          a5 = 3;
        }

        else
        {
          if (qword_280BE4C10 != -1)
          {
            swift_once();
          }

          if (v8 == qword_280BE4C18 && a5 == unk_280BE4C20)
          {

            a5 = 4;
          }

          else
          {
            v8 = sub_217753058();

            if (v8)
            {
              a5 = 4;
            }

            else
            {
              a5 = 0;
            }
          }
        }
      }

      v27 = v7;
    }

    v30 = a3;
    v20 = 0;
    v21 = 0;
    v26 = 0;
    v22 = 0;
LABEL_21:
    sub_2173EDFD4(v7, a2, v27, v30, a4, sub_2172CB708);

    v23 = v37;
    v24 = v39;
    v25 = v41;
  }

  *a7 = v23;
  *(a7 + 16) = v24;
  *(a7 + 32) = v25;
  *(a7 + 48) = v43;
  *(a7 + 56) = a5;
  *(a7 + 64) = v20;
  *(a7 + 72) = v21;
  *(a7 + 80) = v26;
  *(a7 + 88) = v22;
  return result;
}

uint64_t sub_2173EDC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for RadioShow))
  {
    sub_217441EF0(a1, a2, a3, a4, sub_2172CB708, v16, v17, v18, v34, v35, v37, *(&v37 + 1), v39, *(&v39 + 1), v41, *(&v41 + 1), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);

    LOBYTE(a5) = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v38;
    v24 = v40;
    v25 = v42;
    v26 = 1;
  }

  else
  {
    if (qword_27CB23D58 != -1)
    {
      swift_once();
    }

    v27 = off_27CB2A980;
    if (a5 == 5)
    {
      if (!*(off_27CB2A980 + 2))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (*(off_27CB2A980 + 48) != 1)
      {
        v8 = *(off_27CB2A980 + 4);
        a5 = *(off_27CB2A980 + 5);
        v7 = off_27CB2A980;
        v28 = qword_280BE4BA8;
        sub_217751DE8();
        if (v28 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_43;
      }

      a5 = 1;
    }

    while (1)
    {
      v7 = a1;
      if ((a6 & 1) == 0)
      {
        break;
      }

      v36 = a4;
      if (v27[2])
      {
        v30 = a3;
        v21 = v27[4];
        v26 = v27[5];
        v20 = a5;
        v22 = *(v27 + 48);
        v31 = v27;
        sub_217751DE8();
        v27 = v31;
        a4 = v36;
        goto LABEL_21;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
LABEL_10:
      v29 = v8 == qword_280BE4BB0 && a5 == unk_280BE4BB8;
      if (v29 || (sub_217753058() & 1) != 0)
      {

        a5 = 2;
      }

      else
      {
        if (qword_280BE4B60 != -1)
        {
          swift_once();
        }

        v32 = v8 == qword_280BE4B68 && a5 == unk_280BE4B70;
        if (v32 || (sub_217753058() & 1) != 0)
        {

          a5 = 3;
        }

        else
        {
          if (qword_280BE4C10 != -1)
          {
            swift_once();
          }

          if (v8 == qword_280BE4C18 && a5 == unk_280BE4C20)
          {

            a5 = 4;
          }

          else
          {
            v8 = sub_217753058();

            if (v8)
            {
              a5 = 4;
            }

            else
            {
              a5 = 0;
            }
          }
        }
      }

      v27 = v7;
    }

    v30 = a3;
    v20 = 0;
    v21 = 0;
    v26 = 0;
    v22 = 0;
LABEL_21:
    sub_2173EDFD4(v7, a2, v27, v30, a4, sub_2172CB708);

    v23 = v37;
    v24 = v39;
    v25 = v41;
  }

  *a7 = v23;
  *(a7 + 16) = v24;
  *(a7 + 32) = v25;
  *(a7 + 48) = v43;
  *(a7 + 56) = a5;
  *(a7 + 64) = v20;
  *(a7 + 72) = v21;
  *(a7 + 80) = v26;
  *(a7 + 88) = v22;
  return result;
}

void sub_2173EDFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void *))
{
  OUTLINED_FUNCTION_1348();
  v27[0] = 44;
  v27[1] = 0xE100000000000000;
  v26 = v27;
  sub_217751DE8();
  v9 = sub_2176B5914(0x7FFFFFFFFFFFFFFFLL, 1, a6, v25, a4, a5);
  v10 = *(v9 + 16);
  if (v10)
  {
    v27[0] = MEMORY[0x277D84F90];
    sub_217275C90();
    v11 = 0;
    v12 = v27[0];
    v13 = (v9 + 56);
    while (v11 < *(v9 + 16))
    {
      v14 = *(v13 - 3);
      v15 = *(v13 - 2);
      v17 = *(v13 - 1);
      v16 = *v13;
      sub_217751DE8();
      v18 = OUTLINED_FUNCTION_596();
      v19 = MEMORY[0x21CEA2320](v18);
      v21 = v20;

      v27[0] = v12;
      v22 = *(v12 + 16);
      if (v22 >= *(v12 + 24) >> 1)
      {
        sub_217275C90();
        v12 = v27[0];
      }

      ++v11;
      *(v12 + 16) = v22 + 1;
      v23 = v12 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v21;
      v13 += 4;
      if (v10 == v11)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
LABEL_9:
    sub_2172C3424(v12);
    v24 = OUTLINED_FUNCTION_13_2();
    sub_21744226C(v24);
  }
}

uint64_t sub_2173EE194(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_217751908();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_217751928();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v1;
  v8[1] = sub_2173EE2FC;

  return sub_2173F1920((v1 + 2));
}

uint64_t sub_2173EE2FC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173EE3F4()
{
  OUTLINED_FUNCTION_30_0();
  memcpy(*(v0 + 144), (v0 + 16), 0x68uLL);
  OUTLINED_FUNCTION_1246();

  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_2173EE478()
{
  OUTLINED_FUNCTION_1412();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_457();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (OUTLINED_FUNCTION_456())
  {
    v2 = OUTLINED_FUNCTION_90_10();
    v3(v2);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_944();
    sub_2177518B8();
    OUTLINED_FUNCTION_32_20();
    sub_2171FF280(v6, v7);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_650();
    v8 = OUTLINED_FUNCTION_520();
    v0(v8);
    v9 = OUTLINED_FUNCTION_20_6();
    v0(v9);
    OUTLINED_FUNCTION_1021();
    if (v10)
    {
      OUTLINED_FUNCTION_651();
      sub_2174AA128();
      v11 = OUTLINED_FUNCTION_519();
      v12(v11);

      OUTLINED_FUNCTION_1246();

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    v13 = OUTLINED_FUNCTION_518();
    v14(v13);
  }

  OUTLINED_FUNCTION_934();

  OUTLINED_FUNCTION_535();
LABEL_6:
  OUTLINED_FUNCTION_1411();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2173EE608(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_217751908();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_217751928();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v1;
  v8[1] = sub_2173EE770;

  return sub_2173F2A54((v1 + 2));
}

uint64_t sub_2173EE770()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173EE868()
{
  OUTLINED_FUNCTION_1412();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_457();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (OUTLINED_FUNCTION_456())
  {
    v2 = OUTLINED_FUNCTION_90_10();
    v3(v2);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_944();
    sub_2177518B8();
    OUTLINED_FUNCTION_32_20();
    sub_2171FF280(v6, v7);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_650();
    v8 = OUTLINED_FUNCTION_520();
    v0(v8);
    v9 = OUTLINED_FUNCTION_20_6();
    v0(v9);
    OUTLINED_FUNCTION_1021();
    if (v10)
    {
      OUTLINED_FUNCTION_651();
      sub_2174AA43C();
      v11 = OUTLINED_FUNCTION_519();
      v12(v11);

      OUTLINED_FUNCTION_1246();

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    v13 = OUTLINED_FUNCTION_518();
    v14(v13);
  }

  OUTLINED_FUNCTION_934();

  OUTLINED_FUNCTION_535();
LABEL_6:
  OUTLINED_FUNCTION_1411();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2173EE9F8(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_217751908();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_217751928();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v1;
  v8[1] = sub_2173EEB60;

  return sub_2173F3BE0((v1 + 2));
}

uint64_t sub_2173EEB60()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173EEC58()
{
  OUTLINED_FUNCTION_1412();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_457();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (OUTLINED_FUNCTION_456())
  {
    v2 = OUTLINED_FUNCTION_90_10();
    v3(v2);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_944();
    sub_2177518B8();
    OUTLINED_FUNCTION_32_20();
    sub_2171FF280(v6, v7);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_650();
    v8 = OUTLINED_FUNCTION_520();
    v0(v8);
    v9 = OUTLINED_FUNCTION_20_6();
    v0(v9);
    OUTLINED_FUNCTION_1021();
    if (v10)
    {
      OUTLINED_FUNCTION_651();
      sub_2174AA0A4();
      v11 = OUTLINED_FUNCTION_519();
      v12(v11);

      OUTLINED_FUNCTION_1246();

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    v13 = OUTLINED_FUNCTION_518();
    v14(v13);
  }

  OUTLINED_FUNCTION_934();

  OUTLINED_FUNCTION_535();
LABEL_6:
  OUTLINED_FUNCTION_1411();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2173EEDE8(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_217751908();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_217751928();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v1;
  v8[1] = sub_2173EEF50;

  return sub_2173F4CB8((v1 + 2));
}

uint64_t sub_2173EEF50()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173EF048()
{
  OUTLINED_FUNCTION_1412();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_457();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (OUTLINED_FUNCTION_456())
  {
    v2 = OUTLINED_FUNCTION_90_10();
    v3(v2);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_944();
    sub_2177518B8();
    OUTLINED_FUNCTION_32_20();
    sub_2171FF280(v6, v7);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_650();
    v8 = OUTLINED_FUNCTION_520();
    v0(v8);
    v9 = OUTLINED_FUNCTION_20_6();
    v0(v9);
    OUTLINED_FUNCTION_1021();
    if (v10)
    {
      OUTLINED_FUNCTION_651();
      sub_2174AA078();
      v11 = OUTLINED_FUNCTION_519();
      v12(v11);

      OUTLINED_FUNCTION_1246();

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    v13 = OUTLINED_FUNCTION_518();
    v14(v13);
  }

  OUTLINED_FUNCTION_934();

  OUTLINED_FUNCTION_535();
LABEL_6:
  OUTLINED_FUNCTION_1411();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2173EF1D8(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_217751908();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_217751928();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v1;
  v8[1] = sub_2173EF340;

  return sub_2173F5D90((v1 + 2));
}

uint64_t sub_2173EF340()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173EF438()
{
  OUTLINED_FUNCTION_1412();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_457();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (OUTLINED_FUNCTION_456())
  {
    v2 = OUTLINED_FUNCTION_90_10();
    v3(v2);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_944();
    sub_2177518B8();
    OUTLINED_FUNCTION_32_20();
    sub_2171FF280(v6, v7);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_650();
    v8 = OUTLINED_FUNCTION_520();
    v0(v8);
    v9 = OUTLINED_FUNCTION_20_6();
    v0(v9);
    OUTLINED_FUNCTION_1021();
    if (v10)
    {
      OUTLINED_FUNCTION_651();
      sub_2174AA1AC();
      v11 = OUTLINED_FUNCTION_519();
      v12(v11);

      OUTLINED_FUNCTION_1246();

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    v13 = OUTLINED_FUNCTION_518();
    v14(v13);
  }

  OUTLINED_FUNCTION_934();

  OUTLINED_FUNCTION_535();
LABEL_6:
  OUTLINED_FUNCTION_1411();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2173EF5C8(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_217751908();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_217751928();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v1;
  v8[1] = sub_2173EF730;

  return sub_2173F6E68((v1 + 2));
}

uint64_t sub_2173EF730()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173EF828()
{
  OUTLINED_FUNCTION_1412();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_457();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (OUTLINED_FUNCTION_456())
  {
    v2 = OUTLINED_FUNCTION_90_10();
    v3(v2);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_944();
    sub_2177518B8();
    OUTLINED_FUNCTION_32_20();
    sub_2171FF280(v6, v7);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_650();
    v8 = OUTLINED_FUNCTION_520();
    v0(v8);
    v9 = OUTLINED_FUNCTION_20_6();
    v0(v9);
    OUTLINED_FUNCTION_1021();
    if (v10)
    {
      OUTLINED_FUNCTION_651();
      sub_2174AA468();
      v11 = OUTLINED_FUNCTION_519();
      v12(v11);

      OUTLINED_FUNCTION_1246();

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    v13 = OUTLINED_FUNCTION_518();
    v14(v13);
  }

  OUTLINED_FUNCTION_934();

  OUTLINED_FUNCTION_535();
LABEL_6:
  OUTLINED_FUNCTION_1411();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2173EF9B8()
{
  OUTLINED_FUNCTION_10();
  v0[18] = v1;
  v2 = sub_217751908();
  v0[19] = v2;
  OUTLINED_FUNCTION_15_3(v2);
  v0[20] = v3;
  v5 = *(v4 + 64) + 15;
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v6 = sub_217751928();
  v0[23] = v6;
  OUTLINED_FUNCTION_15_3(v6);
  v0[24] = v7;
  v9 = *(v8 + 64) + 15;
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[27] = v10;
  *v10 = v11;
  v10[1] = sub_2173EFB08;

  return sub_2173F7F40((v0 + 2));
}

uint64_t sub_2173EFB08()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173EFC00()
{
  OUTLINED_FUNCTION_1412();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_457();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (OUTLINED_FUNCTION_456())
  {
    v2 = OUTLINED_FUNCTION_90_10();
    v3(v2);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_944();
    sub_2177518B8();
    OUTLINED_FUNCTION_32_20();
    sub_2171FF280(v6, v7);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_650();
    v8 = OUTLINED_FUNCTION_520();
    v0(v8);
    v9 = OUTLINED_FUNCTION_20_6();
    v0(v9);
    OUTLINED_FUNCTION_1021();
    if (v10)
    {
      OUTLINED_FUNCTION_651();
      sub_2174AA1D8();
      v11 = OUTLINED_FUNCTION_519();
      v12(v11);

      OUTLINED_FUNCTION_1246();

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    v13 = OUTLINED_FUNCTION_518();
    v14(v13);
  }

  OUTLINED_FUNCTION_934();

  OUTLINED_FUNCTION_535();
LABEL_6:
  OUTLINED_FUNCTION_1411();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2173EFD90(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_217751908();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_217751928();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v1;
  v8[1] = sub_2173EFEF8;

  return sub_2173F9074((v1 + 2));
}

uint64_t sub_2173EFEF8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173EFFF0()
{
  OUTLINED_FUNCTION_1412();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_457();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (OUTLINED_FUNCTION_456())
  {
    v2 = OUTLINED_FUNCTION_90_10();
    v3(v2);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_944();
    sub_2177518B8();
    OUTLINED_FUNCTION_32_20();
    sub_2171FF280(v6, v7);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_650();
    v8 = OUTLINED_FUNCTION_520();
    v0(v8);
    v9 = OUTLINED_FUNCTION_20_6();
    v0(v9);
    OUTLINED_FUNCTION_1021();
    if (v10)
    {
      OUTLINED_FUNCTION_651();
      sub_2174AA180();
      v11 = OUTLINED_FUNCTION_519();
      v12(v11);

      OUTLINED_FUNCTION_1246();

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    v13 = OUTLINED_FUNCTION_518();
    v14(v13);
  }

  OUTLINED_FUNCTION_934();

  OUTLINED_FUNCTION_535();
LABEL_6:
  OUTLINED_FUNCTION_1411();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2173F0180(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_217751908();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_217751928();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v1;
  v8[1] = sub_2173F02E8;

  return sub_2173FA14C((v1 + 2));
}

uint64_t sub_2173F02E8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F03E0()
{
  OUTLINED_FUNCTION_1412();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_457();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (OUTLINED_FUNCTION_456())
  {
    v2 = OUTLINED_FUNCTION_90_10();
    v3(v2);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_944();
    sub_2177518B8();
    OUTLINED_FUNCTION_32_20();
    sub_2171FF280(v6, v7);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_650();
    v8 = OUTLINED_FUNCTION_520();
    v0(v8);
    v9 = OUTLINED_FUNCTION_20_6();
    v0(v9);
    OUTLINED_FUNCTION_1021();
    if (v10)
    {
      OUTLINED_FUNCTION_651();
      sub_2174AA154();
      v11 = OUTLINED_FUNCTION_519();
      v12(v11);

      OUTLINED_FUNCTION_1246();

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    v13 = OUTLINED_FUNCTION_518();
    v14(v13);
  }

  OUTLINED_FUNCTION_934();

  OUTLINED_FUNCTION_535();
LABEL_6:
  OUTLINED_FUNCTION_1411();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2173F0570(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_217751908();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_217751928();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v1;
  v8[1] = sub_2173F06D8;

  return sub_2173FB224((v1 + 2));
}

uint64_t sub_2173F06D8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F07D0()
{
  OUTLINED_FUNCTION_1412();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_457();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (OUTLINED_FUNCTION_456())
  {
    v2 = OUTLINED_FUNCTION_90_10();
    v3(v2);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_944();
    sub_2177518B8();
    OUTLINED_FUNCTION_32_20();
    sub_2171FF280(v6, v7);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_650();
    v8 = OUTLINED_FUNCTION_520();
    v0(v8);
    v9 = OUTLINED_FUNCTION_20_6();
    v0(v9);
    OUTLINED_FUNCTION_1021();
    if (v10)
    {
      OUTLINED_FUNCTION_651();
      sub_2174AA04C();
      v11 = OUTLINED_FUNCTION_519();
      v12(v11);

      OUTLINED_FUNCTION_1246();

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    v13 = OUTLINED_FUNCTION_518();
    v14(v13);
  }

  OUTLINED_FUNCTION_934();

  OUTLINED_FUNCTION_535();
LABEL_6:
  OUTLINED_FUNCTION_1411();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2173F0960(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_217751908();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_217751928();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v1;
  v8[1] = sub_2173F0AC8;

  return sub_2173FC2FC((v1 + 2));
}

uint64_t sub_2173F0AC8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F0BC0()
{
  OUTLINED_FUNCTION_1412();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_457();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (OUTLINED_FUNCTION_456())
  {
    v2 = OUTLINED_FUNCTION_90_10();
    v3(v2);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_944();
    sub_2177518B8();
    OUTLINED_FUNCTION_32_20();
    sub_2171FF280(v6, v7);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_650();
    v8 = OUTLINED_FUNCTION_520();
    v0(v8);
    v9 = OUTLINED_FUNCTION_20_6();
    v0(v9);
    OUTLINED_FUNCTION_1021();
    if (v10)
    {
      OUTLINED_FUNCTION_651();
      sub_2174AA494();
      v11 = OUTLINED_FUNCTION_519();
      v12(v11);

      OUTLINED_FUNCTION_1246();

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    v13 = OUTLINED_FUNCTION_518();
    v14(v13);
  }

  OUTLINED_FUNCTION_934();

  OUTLINED_FUNCTION_535();
LABEL_6:
  OUTLINED_FUNCTION_1411();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2173F0D50(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_217751908();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_217751928();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v1;
  v8[1] = sub_2173F0EB8;

  return sub_2173FD430((v1 + 2));
}

uint64_t sub_2173F0EB8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F0FB0()
{
  OUTLINED_FUNCTION_1412();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_457();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (OUTLINED_FUNCTION_456())
  {
    v2 = OUTLINED_FUNCTION_90_10();
    v3(v2);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_944();
    sub_2177518B8();
    OUTLINED_FUNCTION_32_20();
    sub_2171FF280(v6, v7);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_650();
    v8 = OUTLINED_FUNCTION_520();
    v0(v8);
    v9 = OUTLINED_FUNCTION_20_6();
    v0(v9);
    OUTLINED_FUNCTION_1021();
    if (v10)
    {
      OUTLINED_FUNCTION_651();
      sub_2174AA4C0();
      v11 = OUTLINED_FUNCTION_519();
      v12(v11);

      OUTLINED_FUNCTION_1246();

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    v13 = OUTLINED_FUNCTION_518();
    v14(v13);
  }

  OUTLINED_FUNCTION_934();

  OUTLINED_FUNCTION_535();
LABEL_6:
  OUTLINED_FUNCTION_1411();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2173F1140(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_217751908();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_217751928();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v1;
  v8[1] = sub_2173F12A8;

  return sub_2173FE508((v1 + 2));
}

uint64_t sub_2173F12A8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F13A0()
{
  OUTLINED_FUNCTION_1412();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_457();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (OUTLINED_FUNCTION_456())
  {
    v2 = OUTLINED_FUNCTION_90_10();
    v3(v2);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_944();
    sub_2177518B8();
    OUTLINED_FUNCTION_32_20();
    sub_2171FF280(v6, v7);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_650();
    v8 = OUTLINED_FUNCTION_520();
    v0(v8);
    v9 = OUTLINED_FUNCTION_20_6();
    v0(v9);
    OUTLINED_FUNCTION_1021();
    if (v10)
    {
      OUTLINED_FUNCTION_651();
      sub_2174AA0FC();
      v11 = OUTLINED_FUNCTION_519();
      v12(v11);

      OUTLINED_FUNCTION_1246();

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    v13 = OUTLINED_FUNCTION_518();
    v14(v13);
  }

  OUTLINED_FUNCTION_934();

  OUTLINED_FUNCTION_535();
LABEL_6:
  OUTLINED_FUNCTION_1411();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2173F1530(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_217751908();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_217751928();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[27] = v8;
  *v8 = v1;
  v8[1] = sub_2173F1698;

  return sub_2173FF5E0((v1 + 2));
}

uint64_t sub_2173F1698()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F1790()
{
  OUTLINED_FUNCTION_1412();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_457();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (OUTLINED_FUNCTION_456())
  {
    v2 = OUTLINED_FUNCTION_90_10();
    v3(v2);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_944();
    sub_2177518B8();
    OUTLINED_FUNCTION_32_20();
    sub_2171FF280(v6, v7);
    OUTLINED_FUNCTION_458();
    OUTLINED_FUNCTION_650();
    v8 = OUTLINED_FUNCTION_520();
    v0(v8);
    v9 = OUTLINED_FUNCTION_20_6();
    v0(v9);
    OUTLINED_FUNCTION_1021();
    if (v10)
    {
      OUTLINED_FUNCTION_651();
      sub_2174AA0D0();
      v11 = OUTLINED_FUNCTION_519();
      v12(v11);

      OUTLINED_FUNCTION_1246();

      OUTLINED_FUNCTION_0_2();
      goto LABEL_6;
    }

    v13 = OUTLINED_FUNCTION_518();
    v14(v13);
  }

  OUTLINED_FUNCTION_934();

  OUTLINED_FUNCTION_535();
LABEL_6:
  OUTLINED_FUNCTION_1411();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_2173F1920(uint64_t a1)
{
  *(v2 + 2736) = v1;
  *(v2 + 2728) = a1;
  return MEMORY[0x2822009F8](sub_2173F1944, 0, 0);
}

uint64_t sub_2173F1944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_674();
  v12 = *(v11 + 1840);
  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_213_4();
    OUTLINED_FUNCTION_28_6();
    swift_allocObject();
    v13 = SharedRelatedItemStore.init()();
    OUTLINED_FUNCTION_496(v13);
    if (*(v11 + 1424))
    {
      OUTLINED_FUNCTION_929();
      OUTLINED_FUNCTION_217_4();
      if (v15 && (v14 & 0xF000000000000007) == 0)
      {
        v16 = OUTLINED_FUNCTION_216_4();
        v17 = OUTLINED_FUNCTION_1178(v16);
        OUTLINED_FUNCTION_1190(v17, v18, &qword_27CB27918, &qword_21776B478);
        OUTLINED_FUNCTION_392();
        sub_217751DC8();
        OUTLINED_FUNCTION_798();
        OUTLINED_FUNCTION_392();
        v19 = sub_217751DC8();
        v20 = OUTLINED_FUNCTION_49_15(v19, xmmword_2177586D0);
        sub_217412B70(v20, v21);
        sub_2171F0790(v10, &qword_27CB27910, &qword_21776B470);
        OUTLINED_FUNCTION_709();
        sub_2171F0790(v22, v23, v24);
        OUTLINED_FUNCTION_263();
        OUTLINED_FUNCTION_1183();

        v25 = OUTLINED_FUNCTION_206_3();
        sub_217418044(v25, v26, v27);
        OUTLINED_FUNCTION_811();
        if (v15)
        {
          OUTLINED_FUNCTION_802();
          OUTLINED_FUNCTION_93_3();
          sub_2171F0688(v28, v29, v30, v31);
          v32 = OUTLINED_FUNCTION_20_6();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          if (OUTLINED_FUNCTION_337())
          {
            OUTLINED_FUNCTION_68_11();
            sub_2172CEA34();
            if (*(v11 + 2520))
            {
              OUTLINED_FUNCTION_1_53();
              v35 = OUTLINED_FUNCTION_349();
              v36(v35);
              sub_217283C08(&unk_21776B428);
            }

            else
            {
              sub_2171F0790(v34, &qword_27CB24550, &qword_217758A58);
            }

            __swift_destroy_boxed_opaque_existential_1((v11 + 2608));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2171F0790(&qword_27CB27908, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        v70 = swift_task_alloc();
        v71 = OUTLINED_FUNCTION_350(v70);
        *v71 = v72;
        OUTLINED_FUNCTION_96_9(v71);
        OUTLINED_FUNCTION_1029();

        return sub_217418CBC(v73, v74);
      }

      OUTLINED_FUNCTION_15_29();
      *(v11 + 1880) = v53;
      *(v11 + 1888) = *(v11 + 1328);
      *(v11 + 1904) = v54;
      *(v11 + 1912) = v55;
      *(v11 + 1920) = v56;
      *(v11 + 1928) = v57;
      *(v11 + 1936) = v58;
      OUTLINED_FUNCTION_215_4();
      v61 = OUTLINED_FUNCTION_1259(v59, v60, &qword_27CB27910, &qword_21776B470);
      OUTLINED_FUNCTION_1191(v61, v62, &qword_27CB27920, &qword_21776B480);
      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_415(v63);
      *v64 = v65;
      OUTLINED_FUNCTION_235_2(v64);
    }

    else
    {
      OUTLINED_FUNCTION_568();
      v50 = swift_task_alloc();
      v51 = OUTLINED_FUNCTION_430(v50);
      *v51 = v52;
      OUTLINED_FUNCTION_234_2(v51);
    }

    OUTLINED_FUNCTION_961();
    OUTLINED_FUNCTION_1029();

    return sub_21740CB8C(v66, v67, v68);
  }

  v37 = OUTLINED_FUNCTION_16_30(v12);
  sub_2172CA838(v37, v11 + 2688);
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_648();
  OUTLINED_FUNCTION_391(&dword_21776B488);
  sub_217751DE8();
  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_588(v38);
  *v39 = v40;
  OUTLINED_FUNCTION_123_9(v39);
  OUTLINED_FUNCTION_1410();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_2173F1D1C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2744);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F1E14()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2171F0790(v0 + 1784, &qword_27CB27928, &qword_21776B490);
  OUTLINED_FUNCTION_926();
  type metadata accessor for SharedRelatedItemStore();
  OUTLINED_FUNCTION_28_6();
  swift_allocObject();
  v1 = SharedRelatedItemStore.init()();
  OUTLINED_FUNCTION_495(v1);
  if (!*(v0 + 1424))
  {
    OUTLINED_FUNCTION_568();
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_430(v25);
    *v26 = v27;
    OUTLINED_FUNCTION_234_2(v26);
LABEL_12:
    OUTLINED_FUNCTION_838();
    OUTLINED_FUNCTION_1322();

    return sub_21740CB8C(v41, v42, v43);
  }

  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_217_4();
  if (!v3 || (v2 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_15_29();
    *(v0 + 1880) = v28;
    *(v0 + 1888) = *(v0 + 1328);
    *(v0 + 1904) = v29;
    *(v0 + 1912) = v30;
    *(v0 + 1920) = v31;
    *(v0 + 1928) = v32;
    *(v0 + 1936) = v33;
    OUTLINED_FUNCTION_215_4();
    v36 = OUTLINED_FUNCTION_1258(v34, v35, &qword_27CB27910, &qword_21776B470);
    OUTLINED_FUNCTION_1191(v36, v37, &qword_27CB27920, &qword_21776B480);
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_415(v38);
    *v39 = v40;
    OUTLINED_FUNCTION_235_2(v39);
    goto LABEL_12;
  }

  v4 = OUTLINED_FUNCTION_216_4();
  v5 = OUTLINED_FUNCTION_1177(v4);
  OUTLINED_FUNCTION_1190(v5, v6, &qword_27CB27918, &qword_21776B478);
  OUTLINED_FUNCTION_17_13();
  sub_217751DC8();
  OUTLINED_FUNCTION_17_13();
  v7 = sub_217751DC8();
  v8 = OUTLINED_FUNCTION_50_12(v7, xmmword_2177586D0);
  sub_217412B70(v8, v9);
  sub_2171F0790(v0 + 840, &qword_27CB27910, &qword_21776B470);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v10, v11, v12);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v13 = OUTLINED_FUNCTION_206_3();
  sub_217418044(v13, v14, v15);
  OUTLINED_FUNCTION_811();
  if (v3)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_20_6();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CEA34();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v23 = OUTLINED_FUNCTION_349();
        v24(v23);
        sub_217283C08(&unk_21776B428);
      }

      else
      {
        sub_2171F0790(v22, &qword_27CB24550, &qword_217758A58);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27908, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_350(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_96_9(v47);
  OUTLINED_FUNCTION_1322();

  return sub_217418CBC(v49, v50);
}

uint64_t sub_2173F216C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 1784, &qword_27CB27928, &qword_21776B490);
  OUTLINED_FUNCTION_587();

  return v1();
}

uint64_t sub_2173F21D4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2768);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2776) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F22CC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 2784);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 2792) = v0;

  if (v0)
  {
    sub_2171F0790(v3 + 840, &qword_27CB27910, &qword_21776B470);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F23DC()
{
  OUTLINED_FUNCTION_30_0();
  sub_2171F0790(v0 + 1320, &qword_27CB27920, &qword_21776B480);
  OUTLINED_FUNCTION_928();
  v1 = OUTLINED_FUNCTION_383();
  sub_217412B70(v1, v2);
  sub_2171F0790(v0 + 840, &qword_27CB27910, &qword_21776B470);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v6 = OUTLINED_FUNCTION_206_3();
  sub_217418044(v6, v7, v8);
  OUTLINED_FUNCTION_811();
  if (v9)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CEA34();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_217283C08(&unk_21776B428);
      }

      else
      {
        sub_2171F0790(v16, &qword_27CB24550, &qword_217758A58);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27908, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_350(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_96_9(v20);

  return sub_217418CBC(v22, v23);
}

uint64_t sub_2173F25A4()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);
  sub_2171F0790(v0 + 1320, &qword_27CB27920, &qword_21776B480);

  sub_2171F0790(v0 + 840, &qword_27CB27910, &qword_21776B470);
  OUTLINED_FUNCTION_558();

  return v2();
}

uint64_t sub_2173F2630()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2800);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2808) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F2728()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB27910, &qword_21776B470);
  sub_2171F0790(v0 + 1680, &qword_27CB278F8, &unk_21776B440);
  sub_2171F0790(v0 + 456, &qword_27CB27908, &qword_21776B460);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173F27C8()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB27910, &qword_21776B470);
  sub_2171F0790(v0 + 1680, &qword_27CB278F8, &unk_21776B440);
  sub_2171F0790(v0 + 456, &qword_27CB27908, &qword_21776B460);
  OUTLINED_FUNCTION_513();

  return v2();
}

uint64_t sub_2173F2868()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_927();
  OUTLINED_FUNCTION_1067();
  v2 = OUTLINED_FUNCTION_779();
  sub_2171F0688(v2, v3, v4, v5);
  OUTLINED_FUNCTION_1320();

  v6 = OUTLINED_FUNCTION_374();
  sub_217418044(v6, v0, v7);
  OUTLINED_FUNCTION_1019();
  if (v8)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_20_6();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CEA34();
      if (*(v1 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v16 = OUTLINED_FUNCTION_349();
        v17(v16);
        sub_217283C08(&unk_21776B428);
      }

      else
      {
        sub_2171F0790(v15, &qword_27CB24550, &qword_217758A58);
      }

      __swift_destroy_boxed_opaque_existential_1((v1 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(v0, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_350(v18);
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_96_9(v19);

  return sub_217418CBC(v21, v22);
}

uint64_t sub_2173F29F8()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  v2 = *(v0 + 2776);
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2173F2A54(uint64_t a1)
{
  *(v2 + 2752) = v1;
  *(v2 + 2744) = a1;
  return MEMORY[0x2822009F8](sub_2173F2A78, 0, 0);
}

uint64_t sub_2173F2A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  v11 = *(v10 + 2752);
  OUTLINED_FUNCTION_933();
  v12 = *(v10 + 1840);
  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_213_4();
    OUTLINED_FUNCTION_28_6();
    swift_allocObject();
    *(v10 + 2776) = SharedRelatedItemStore.init()();
    OUTLINED_FUNCTION_931();
    if (*(v10 + 1424))
    {
      OUTLINED_FUNCTION_929();
      OUTLINED_FUNCTION_217_4();
      if (v14 && (v13 & 0xF000000000000007) == 0)
      {
        v15 = OUTLINED_FUNCTION_216_4();
        v16 = OUTLINED_FUNCTION_1178(v15);
        OUTLINED_FUNCTION_1190(v16, v17, &qword_27CB27AB8, &qword_21776B718);
        OUTLINED_FUNCTION_392();
        sub_217751DC8();
        OUTLINED_FUNCTION_798();
        OUTLINED_FUNCTION_392();
        v18 = sub_217751DC8();
        v19 = OUTLINED_FUNCTION_49_15(v18, xmmword_2177586D0);
        sub_21741315C(v19, v20);
        sub_2171F0790(v11, &qword_27CB27AB0, &qword_21776B710);
        OUTLINED_FUNCTION_709();
        sub_2171F0790(v21, v22, v23);
        OUTLINED_FUNCTION_442();
        OUTLINED_FUNCTION_1347();

        v24 = OUTLINED_FUNCTION_420();
        sub_217418128(v24, v25, v26);
        OUTLINED_FUNCTION_811();
        if (v14)
        {
          OUTLINED_FUNCTION_1037();
          OUTLINED_FUNCTION_93_3();
          sub_2171F0688(v27, v28, v29, v30);
          v31 = OUTLINED_FUNCTION_20_6();
          __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          v33 = OUTLINED_FUNCTION_337();
          if (v33)
          {
            OUTLINED_FUNCTION_203_4(v33, v10 + 2624);
            sub_2172CEA70();
            OUTLINED_FUNCTION_1036();
            if (v14)
            {
              sub_2171F0790(v10 + 2520, &qword_27CB245B8, &qword_217758AE0);
            }

            else
            {
              OUTLINED_FUNCTION_36_16();
              v34 = OUTLINED_FUNCTION_349();
              v35(v34);
              sub_21729C748(&unk_21776B6B8);
            }

            __swift_destroy_boxed_opaque_existential_1((v10 + 2624));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2171F0790(&qword_27CB27AA8, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        v68 = swift_task_alloc();
        v69 = OUTLINED_FUNCTION_562(v68);
        *v69 = v70;
        OUTLINED_FUNCTION_225_4(v69);
        OUTLINED_FUNCTION_1029();

        return sub_217418F48(v71, v72);
      }

      OUTLINED_FUNCTION_15_29();
      *(v10 + 1880) = v51;
      *(v10 + 1888) = *(v10 + 1328);
      *(v10 + 1904) = v52;
      *(v10 + 1912) = v53;
      *(v10 + 1920) = v54;
      *(v10 + 1928) = v55;
      *(v10 + 1936) = v56;
      OUTLINED_FUNCTION_215_4();
      v59 = OUTLINED_FUNCTION_1259(v57, v58, &qword_27CB27AB0, &qword_21776B710);
      OUTLINED_FUNCTION_1191(v59, v60, &byte_27CB27AC0, &qword_21776B720);
      v61 = swift_task_alloc();
      v62 = OUTLINED_FUNCTION_350(v61);
      *v62 = v63;
      OUTLINED_FUNCTION_602(v62);
    }

    else
    {
      OUTLINED_FUNCTION_810(*(v10 + 2752));
      v48 = swift_task_alloc();
      v49 = OUTLINED_FUNCTION_415(v48);
      *v49 = v50;
      OUTLINED_FUNCTION_601(v49);
    }

    OUTLINED_FUNCTION_961();
    OUTLINED_FUNCTION_1029();

    return sub_21740D37C(v64, v65, v66);
  }

  v36 = OUTLINED_FUNCTION_16_30(v12);
  sub_2172CA838(v36, v10 + 2704);
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_648();
  OUTLINED_FUNCTION_391(&dword_21776B728);
  sub_217751DE8();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v10 + 2760) = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_517(v37);
  OUTLINED_FUNCTION_515();
  OUTLINED_FUNCTION_1410();

  return v43(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t sub_2173F2E74()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2760);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2768) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F2F6C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2171F0790(v0 + 1784, &qword_27CB27AC8, &qword_21776B730);
  OUTLINED_FUNCTION_926();
  type metadata accessor for SharedRelatedItemStore();
  OUTLINED_FUNCTION_28_6();
  swift_allocObject();
  *(v0 + 2776) = SharedRelatedItemStore.init()();
  OUTLINED_FUNCTION_932();
  if (!*(v0 + 1424))
  {
    OUTLINED_FUNCTION_810(*(v0 + 2752));
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_415(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_601(v25);
LABEL_12:
    OUTLINED_FUNCTION_838();
    OUTLINED_FUNCTION_1322();

    return sub_21740D37C(v40, v41, v42);
  }

  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_217_4();
  if (!v2 || (v1 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_15_29();
    *(v0 + 1880) = v27;
    *(v0 + 1888) = *(v0 + 1328);
    *(v0 + 1904) = v28;
    *(v0 + 1912) = v29;
    *(v0 + 1920) = v30;
    *(v0 + 1928) = v31;
    *(v0 + 1936) = v32;
    OUTLINED_FUNCTION_215_4();
    v35 = OUTLINED_FUNCTION_1258(v33, v34, &qword_27CB27AB0, &qword_21776B710);
    OUTLINED_FUNCTION_1191(v35, v36, &byte_27CB27AC0, &qword_21776B720);
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_350(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_602(v38);
    goto LABEL_12;
  }

  v3 = OUTLINED_FUNCTION_216_4();
  v4 = OUTLINED_FUNCTION_1177(v3);
  OUTLINED_FUNCTION_1190(v4, v5, &qword_27CB27AB8, &qword_21776B718);
  OUTLINED_FUNCTION_17_13();
  sub_217751DC8();
  OUTLINED_FUNCTION_17_13();
  v6 = sub_217751DC8();
  v7 = OUTLINED_FUNCTION_50_12(v6, xmmword_2177586D0);
  sub_21741315C(v7, v8);
  sub_2171F0790(v0 + 840, &qword_27CB27AB0, &qword_21776B710);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v9, v10, v11);
  OUTLINED_FUNCTION_442();
  OUTLINED_FUNCTION_1347();

  v12 = OUTLINED_FUNCTION_420();
  sub_217418128(v12, v13, v14);
  OUTLINED_FUNCTION_811();
  if (v2)
  {
    OUTLINED_FUNCTION_1037();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v15, v16, v17, v18);
    v19 = OUTLINED_FUNCTION_20_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    v21 = OUTLINED_FUNCTION_337();
    if (v21)
    {
      OUTLINED_FUNCTION_203_4(v21, v0 + 2624);
      sub_2172CEA70();
      OUTLINED_FUNCTION_1036();
      if (v2)
      {
        sub_2171F0790(v0 + 2520, &qword_27CB245B8, &qword_217758AE0);
      }

      else
      {
        OUTLINED_FUNCTION_36_16();
        v22 = OUTLINED_FUNCTION_349();
        v23(v22);
        sub_21729C748(&unk_21776B6B8);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2624));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27AA8, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v45 = swift_task_alloc();
  v46 = OUTLINED_FUNCTION_562(v45);
  *v46 = v47;
  OUTLINED_FUNCTION_225_4(v46);
  OUTLINED_FUNCTION_1322();

  return sub_217418F48(v48, v49);
}

uint64_t sub_2173F32D8()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 1784, &qword_27CB27AC8, &qword_21776B730);
  v1 = *(v0 + 2768);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2173F3344()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2784);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2792) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F343C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 2800);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 2808) = v0;

  if (v0)
  {
    sub_2171F0790(v3 + 840, &qword_27CB27AB0, &qword_21776B710);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F354C()
{
  OUTLINED_FUNCTION_30_0();
  sub_2171F0790(v0 + 1320, &byte_27CB27AC0, &qword_21776B720);
  OUTLINED_FUNCTION_928();
  v1 = OUTLINED_FUNCTION_383();
  sub_21741315C(v1, v2);
  sub_2171F0790(v0 + 840, &qword_27CB27AB0, &qword_21776B710);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_442();
  OUTLINED_FUNCTION_1347();

  v6 = OUTLINED_FUNCTION_420();
  sub_217418128(v6, v7, v8);
  OUTLINED_FUNCTION_811();
  if (v9)
  {
    OUTLINED_FUNCTION_1037();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    v16 = OUTLINED_FUNCTION_337();
    if (v16)
    {
      OUTLINED_FUNCTION_203_4(v16, v0 + 2624);
      sub_2172CEA70();
      OUTLINED_FUNCTION_1036();
      if (v9)
      {
        sub_2171F0790(v0 + 2520, &qword_27CB245B8, &qword_217758AE0);
      }

      else
      {
        OUTLINED_FUNCTION_36_16();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_21729C748(&unk_21776B6B8);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2624));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27AA8, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_562(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_225_4(v20);

  return sub_217418F48(v22, v23);
}

uint64_t sub_2173F371C()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2776);
  sub_2171F0790(v0 + 1320, &byte_27CB27AC0, &qword_21776B720);

  sub_2171F0790(v0 + 840, &qword_27CB27AB0, &qword_21776B710);
  OUTLINED_FUNCTION_513();

  return v2();
}

uint64_t sub_2173F37A8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2816);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2824) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F38A0()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2776);

  sub_2171F0790(v0 + 840, &qword_27CB27AB0, &qword_21776B710);
  sub_2171F0790(v0 + 1680, &qword_27CB27A98, &unk_21776B6E0);
  sub_2171F0790(v0 + 456, &qword_27CB27AA8, &qword_21776B700);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173F3940()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2776);

  sub_2171F0790(v0 + 840, &qword_27CB27AB0, &qword_21776B710);
  sub_2171F0790(v0 + 1680, &qword_27CB27A98, &unk_21776B6E0);
  sub_2171F0790(v0 + 456, &qword_27CB27AA8, &qword_21776B700);
  v2 = *(v0 + 2824);
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2173F39E4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_927();
  v1 = v0[347];
  v2 = v0[344];
  v3 = OUTLINED_FUNCTION_779();
  sub_2171F0688(v3, v4, v5, v6);
  sub_2172CA838(v2 + 128, (v0 + 333));

  v7 = OUTLINED_FUNCTION_559();
  sub_217418128(v7, v1, v8);
  OUTLINED_FUNCTION_1019();
  if (v9)
  {
    OUTLINED_FUNCTION_1037();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    v16 = OUTLINED_FUNCTION_337();
    if (v16)
    {
      OUTLINED_FUNCTION_203_4(v16, (v0 + 328));
      sub_2172CEA70();
      OUTLINED_FUNCTION_1036();
      if (v9)
      {
        sub_2171F0790((v0 + 315), &qword_27CB245B8, &qword_217758AE0);
      }

      else
      {
        OUTLINED_FUNCTION_36_16();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_21729C748(&unk_21776B6B8);
      }

      __swift_destroy_boxed_opaque_existential_1(v0 + 328);
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(v1, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_562(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_225_4(v20);

  return sub_217418F48(v22, v23);
}

uint64_t sub_2173F3B88()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2776);

  OUTLINED_FUNCTION_558();

  return v2();
}

uint64_t sub_2173F3BE0(uint64_t a1)
{
  *(v2 + 2736) = v1;
  *(v2 + 2728) = a1;
  return MEMORY[0x2822009F8](sub_2173F3C04, 0, 0);
}

uint64_t sub_2173F3C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_674();
  v12 = *(v11 + 1840);
  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_213_4();
    OUTLINED_FUNCTION_28_6();
    swift_allocObject();
    v13 = SharedRelatedItemStore.init()();
    OUTLINED_FUNCTION_496(v13);
    if (*(v11 + 1424))
    {
      OUTLINED_FUNCTION_929();
      OUTLINED_FUNCTION_217_4();
      if (v15 && (v14 & 0xF000000000000007) == 0)
      {
        v16 = OUTLINED_FUNCTION_216_4();
        v17 = OUTLINED_FUNCTION_1178(v16);
        OUTLINED_FUNCTION_1190(v17, v18, &qword_27CB27FE8, &qword_21776BF70);
        OUTLINED_FUNCTION_392();
        sub_217751DC8();
        OUTLINED_FUNCTION_798();
        OUTLINED_FUNCTION_392();
        v19 = sub_217751DC8();
        v20 = OUTLINED_FUNCTION_49_15(v19, xmmword_2177586D0);
        sub_2174137EC(v20, v21);
        sub_2171F0790(v10, &qword_27CB27FE0, &qword_21776BF68);
        OUTLINED_FUNCTION_709();
        sub_2171F0790(v22, v23, v24);
        OUTLINED_FUNCTION_263();
        OUTLINED_FUNCTION_1183();

        v25 = OUTLINED_FUNCTION_206_3();
        sub_21741820C(v25, v26, v27);
        OUTLINED_FUNCTION_811();
        if (v15)
        {
          OUTLINED_FUNCTION_802();
          OUTLINED_FUNCTION_93_3();
          sub_2171F0688(v28, v29, v30, v31);
          v32 = OUTLINED_FUNCTION_20_6();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          if (OUTLINED_FUNCTION_337())
          {
            OUTLINED_FUNCTION_68_11();
            sub_2172CEAAC();
            if (*(v11 + 2520))
            {
              OUTLINED_FUNCTION_1_53();
              v35 = OUTLINED_FUNCTION_349();
              v36(v35);
              sub_217283CC4(&unk_21776BF10);
            }

            else
            {
              sub_2171F0790(v34, &unk_27CB2AF60, &qword_217758C00);
            }

            __swift_destroy_boxed_opaque_existential_1((v11 + 2608));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2171F0790(&qword_27CB27FD8, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        v70 = swift_task_alloc();
        v71 = OUTLINED_FUNCTION_350(v70);
        *v71 = v72;
        OUTLINED_FUNCTION_96_9(v71);
        OUTLINED_FUNCTION_1029();

        return sub_217419150(v73, v74);
      }

      OUTLINED_FUNCTION_15_29();
      *(v11 + 1880) = v53;
      *(v11 + 1888) = *(v11 + 1328);
      *(v11 + 1904) = v54;
      *(v11 + 1912) = v55;
      *(v11 + 1920) = v56;
      *(v11 + 1928) = v57;
      *(v11 + 1936) = v58;
      OUTLINED_FUNCTION_215_4();
      v61 = OUTLINED_FUNCTION_1259(v59, v60, &qword_27CB27FE0, &qword_21776BF68);
      OUTLINED_FUNCTION_1191(v61, v62, &qword_27CB27FF0, &qword_21776BF78);
      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_415(v63);
      *v64 = v65;
      OUTLINED_FUNCTION_235_2(v64);
    }

    else
    {
      OUTLINED_FUNCTION_568();
      v50 = swift_task_alloc();
      v51 = OUTLINED_FUNCTION_430(v50);
      *v51 = v52;
      OUTLINED_FUNCTION_234_2(v51);
    }

    OUTLINED_FUNCTION_961();
    OUTLINED_FUNCTION_1029();

    return sub_21740DA40(v66, v67, v68);
  }

  v37 = OUTLINED_FUNCTION_16_30(v12);
  sub_2172CA838(v37, v11 + 2688);
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_648();
  OUTLINED_FUNCTION_391(&dword_21776BF80);
  sub_217751DE8();
  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_588(v38);
  *v39 = v40;
  OUTLINED_FUNCTION_123_9(v39);
  OUTLINED_FUNCTION_1410();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_2173F3FDC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2744);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F40D4()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2171F0790(v0 + 1784, &qword_27CB27FF8, &qword_21776BF88);
  OUTLINED_FUNCTION_926();
  type metadata accessor for SharedRelatedItemStore();
  OUTLINED_FUNCTION_28_6();
  swift_allocObject();
  v1 = SharedRelatedItemStore.init()();
  OUTLINED_FUNCTION_495(v1);
  if (!*(v0 + 1424))
  {
    OUTLINED_FUNCTION_568();
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_430(v25);
    *v26 = v27;
    OUTLINED_FUNCTION_234_2(v26);
LABEL_12:
    OUTLINED_FUNCTION_838();
    OUTLINED_FUNCTION_1322();

    return sub_21740DA40(v41, v42, v43);
  }

  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_217_4();
  if (!v3 || (v2 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_15_29();
    *(v0 + 1880) = v28;
    *(v0 + 1888) = *(v0 + 1328);
    *(v0 + 1904) = v29;
    *(v0 + 1912) = v30;
    *(v0 + 1920) = v31;
    *(v0 + 1928) = v32;
    *(v0 + 1936) = v33;
    OUTLINED_FUNCTION_215_4();
    v36 = OUTLINED_FUNCTION_1258(v34, v35, &qword_27CB27FE0, &qword_21776BF68);
    OUTLINED_FUNCTION_1191(v36, v37, &qword_27CB27FF0, &qword_21776BF78);
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_415(v38);
    *v39 = v40;
    OUTLINED_FUNCTION_235_2(v39);
    goto LABEL_12;
  }

  v4 = OUTLINED_FUNCTION_216_4();
  v5 = OUTLINED_FUNCTION_1177(v4);
  OUTLINED_FUNCTION_1190(v5, v6, &qword_27CB27FE8, &qword_21776BF70);
  OUTLINED_FUNCTION_17_13();
  sub_217751DC8();
  OUTLINED_FUNCTION_17_13();
  v7 = sub_217751DC8();
  v8 = OUTLINED_FUNCTION_50_12(v7, xmmword_2177586D0);
  sub_2174137EC(v8, v9);
  sub_2171F0790(v0 + 840, &qword_27CB27FE0, &qword_21776BF68);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v10, v11, v12);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v13 = OUTLINED_FUNCTION_206_3();
  sub_21741820C(v13, v14, v15);
  OUTLINED_FUNCTION_811();
  if (v3)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_20_6();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CEAAC();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v23 = OUTLINED_FUNCTION_349();
        v24(v23);
        sub_217283CC4(&unk_21776BF10);
      }

      else
      {
        sub_2171F0790(v22, &unk_27CB2AF60, &qword_217758C00);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27FD8, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_350(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_96_9(v47);
  OUTLINED_FUNCTION_1322();

  return sub_217419150(v49, v50);
}

uint64_t sub_2173F442C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 1784, &qword_27CB27FF8, &qword_21776BF88);
  OUTLINED_FUNCTION_587();

  return v1();
}

uint64_t sub_2173F4494()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2768);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2776) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F458C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 2784);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 2792) = v0;

  if (v0)
  {
    sub_2171F0790(v3 + 840, &qword_27CB27FE0, &qword_21776BF68);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F469C()
{
  OUTLINED_FUNCTION_30_0();
  sub_2171F0790(v0 + 1320, &qword_27CB27FF0, &qword_21776BF78);
  OUTLINED_FUNCTION_928();
  v1 = OUTLINED_FUNCTION_383();
  sub_2174137EC(v1, v2);
  sub_2171F0790(v0 + 840, &qword_27CB27FE0, &qword_21776BF68);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v6 = OUTLINED_FUNCTION_206_3();
  sub_21741820C(v6, v7, v8);
  OUTLINED_FUNCTION_811();
  if (v9)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CEAAC();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_217283CC4(&unk_21776BF10);
      }

      else
      {
        sub_2171F0790(v16, &unk_27CB2AF60, &qword_217758C00);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27FD8, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_350(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_96_9(v20);

  return sub_217419150(v22, v23);
}

uint64_t sub_2173F4864()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);
  sub_2171F0790(v0 + 1320, &qword_27CB27FF0, &qword_21776BF78);

  sub_2171F0790(v0 + 840, &qword_27CB27FE0, &qword_21776BF68);
  OUTLINED_FUNCTION_558();

  return v2();
}

uint64_t sub_2173F48F0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2800);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2808) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F49E8()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB27FE0, &qword_21776BF68);
  sub_2171F0790(v0 + 1680, &qword_27CB27FC8, &unk_21776BF38);
  sub_2171F0790(v0 + 456, &qword_27CB27FD8, &qword_21776BF58);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173F4A88()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB27FE0, &qword_21776BF68);
  sub_2171F0790(v0 + 1680, &qword_27CB27FC8, &unk_21776BF38);
  sub_2171F0790(v0 + 456, &qword_27CB27FD8, &qword_21776BF58);
  OUTLINED_FUNCTION_513();

  return v2();
}

uint64_t sub_2173F4B28()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_927();
  OUTLINED_FUNCTION_1067();
  v2 = OUTLINED_FUNCTION_779();
  sub_2171F0688(v2, v3, v4, v5);
  OUTLINED_FUNCTION_1320();

  v6 = OUTLINED_FUNCTION_374();
  sub_21741820C(v6, v0, v7);
  OUTLINED_FUNCTION_1019();
  if (v8)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_20_6();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CEAAC();
      if (*(v1 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v16 = OUTLINED_FUNCTION_349();
        v17(v16);
        sub_217283CC4(&unk_21776BF10);
      }

      else
      {
        sub_2171F0790(v15, &unk_27CB2AF60, &qword_217758C00);
      }

      __swift_destroy_boxed_opaque_existential_1((v1 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(v0, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_350(v18);
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_96_9(v19);

  return sub_217419150(v21, v22);
}

uint64_t sub_2173F4CB8(uint64_t a1)
{
  *(v2 + 2736) = v1;
  *(v2 + 2728) = a1;
  return MEMORY[0x2822009F8](sub_2173F4CDC, 0, 0);
}

uint64_t sub_2173F4CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_674();
  v12 = *(v11 + 1840);
  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_213_4();
    OUTLINED_FUNCTION_28_6();
    swift_allocObject();
    v13 = SharedRelatedItemStore.init()();
    OUTLINED_FUNCTION_496(v13);
    if (*(v11 + 1424))
    {
      OUTLINED_FUNCTION_929();
      OUTLINED_FUNCTION_217_4();
      if (v15 && (v14 & 0xF000000000000007) == 0)
      {
        v16 = OUTLINED_FUNCTION_216_4();
        v17 = OUTLINED_FUNCTION_1178(v16);
        OUTLINED_FUNCTION_1190(v17, v18, &qword_27CB27850, &qword_21776B330);
        OUTLINED_FUNCTION_392();
        sub_217751DC8();
        OUTLINED_FUNCTION_798();
        OUTLINED_FUNCTION_392();
        v19 = sub_217751DC8();
        v20 = OUTLINED_FUNCTION_49_15(v19, xmmword_2177586D0);
        sub_217413DD8(v20, v21);
        sub_2171F0790(v10, &qword_27CB27848, &qword_21776B328);
        OUTLINED_FUNCTION_709();
        sub_2171F0790(v22, v23, v24);
        OUTLINED_FUNCTION_263();
        OUTLINED_FUNCTION_1183();

        v25 = OUTLINED_FUNCTION_206_3();
        sub_2174182F0(v25, v26, v27);
        OUTLINED_FUNCTION_811();
        if (v15)
        {
          OUTLINED_FUNCTION_802();
          OUTLINED_FUNCTION_93_3();
          sub_2171F0688(v28, v29, v30, v31);
          v32 = OUTLINED_FUNCTION_20_6();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          if (OUTLINED_FUNCTION_337())
          {
            OUTLINED_FUNCTION_68_11();
            sub_2172CEAE8();
            if (*(v11 + 2520))
            {
              OUTLINED_FUNCTION_1_53();
              v35 = OUTLINED_FUNCTION_349();
              v36(v35);
              sub_217283B58(&qword_21776B2D0);
            }

            else
            {
              sub_2171F0790(v34, &qword_27CB277F0, &unk_21775A2B0);
            }

            __swift_destroy_boxed_opaque_existential_1((v11 + 2608));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2171F0790(&qword_27CB27840, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        v70 = swift_task_alloc();
        v71 = OUTLINED_FUNCTION_350(v70);
        *v71 = v72;
        OUTLINED_FUNCTION_96_9(v71);
        OUTLINED_FUNCTION_1029();

        return sub_217419260(v73, v74);
      }

      OUTLINED_FUNCTION_15_29();
      *(v11 + 1880) = v53;
      *(v11 + 1888) = *(v11 + 1328);
      *(v11 + 1904) = v54;
      *(v11 + 1912) = v55;
      *(v11 + 1920) = v56;
      *(v11 + 1928) = v57;
      *(v11 + 1936) = v58;
      OUTLINED_FUNCTION_215_4();
      v61 = OUTLINED_FUNCTION_1259(v59, v60, &qword_27CB27848, &qword_21776B328);
      OUTLINED_FUNCTION_1191(v61, v62, &qword_27CB27858, &qword_21776B338);
      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_415(v63);
      *v64 = v65;
      OUTLINED_FUNCTION_235_2(v64);
    }

    else
    {
      OUTLINED_FUNCTION_568();
      v50 = swift_task_alloc();
      v51 = OUTLINED_FUNCTION_430(v50);
      *v51 = v52;
      OUTLINED_FUNCTION_234_2(v51);
    }

    OUTLINED_FUNCTION_961();
    OUTLINED_FUNCTION_1029();

    return sub_21740E104(v66, v67, v68);
  }

  v37 = OUTLINED_FUNCTION_16_30(v12);
  sub_2172CA838(v37, v11 + 2688);
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_648();
  OUTLINED_FUNCTION_391(&dword_21776B340);
  sub_217751DE8();
  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_588(v38);
  *v39 = v40;
  OUTLINED_FUNCTION_123_9(v39);
  OUTLINED_FUNCTION_1410();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_2173F50B4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2744);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F51AC()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2171F0790(v0 + 1784, &qword_27CB27860, &qword_21776B348);
  OUTLINED_FUNCTION_926();
  type metadata accessor for SharedRelatedItemStore();
  OUTLINED_FUNCTION_28_6();
  swift_allocObject();
  v1 = SharedRelatedItemStore.init()();
  OUTLINED_FUNCTION_495(v1);
  if (!*(v0 + 1424))
  {
    OUTLINED_FUNCTION_568();
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_430(v25);
    *v26 = v27;
    OUTLINED_FUNCTION_234_2(v26);
LABEL_12:
    OUTLINED_FUNCTION_838();
    OUTLINED_FUNCTION_1322();

    return sub_21740E104(v41, v42, v43);
  }

  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_217_4();
  if (!v3 || (v2 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_15_29();
    *(v0 + 1880) = v28;
    *(v0 + 1888) = *(v0 + 1328);
    *(v0 + 1904) = v29;
    *(v0 + 1912) = v30;
    *(v0 + 1920) = v31;
    *(v0 + 1928) = v32;
    *(v0 + 1936) = v33;
    OUTLINED_FUNCTION_215_4();
    v36 = OUTLINED_FUNCTION_1258(v34, v35, &qword_27CB27848, &qword_21776B328);
    OUTLINED_FUNCTION_1191(v36, v37, &qword_27CB27858, &qword_21776B338);
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_415(v38);
    *v39 = v40;
    OUTLINED_FUNCTION_235_2(v39);
    goto LABEL_12;
  }

  v4 = OUTLINED_FUNCTION_216_4();
  v5 = OUTLINED_FUNCTION_1177(v4);
  OUTLINED_FUNCTION_1190(v5, v6, &qword_27CB27850, &qword_21776B330);
  OUTLINED_FUNCTION_17_13();
  sub_217751DC8();
  OUTLINED_FUNCTION_17_13();
  v7 = sub_217751DC8();
  v8 = OUTLINED_FUNCTION_50_12(v7, xmmword_2177586D0);
  sub_217413DD8(v8, v9);
  sub_2171F0790(v0 + 840, &qword_27CB27848, &qword_21776B328);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v10, v11, v12);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v13 = OUTLINED_FUNCTION_206_3();
  sub_2174182F0(v13, v14, v15);
  OUTLINED_FUNCTION_811();
  if (v3)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_20_6();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CEAE8();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v23 = OUTLINED_FUNCTION_349();
        v24(v23);
        sub_217283B58(&qword_21776B2D0);
      }

      else
      {
        sub_2171F0790(v22, &qword_27CB277F0, &unk_21775A2B0);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27840, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_350(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_96_9(v47);
  OUTLINED_FUNCTION_1322();

  return sub_217419260(v49, v50);
}

uint64_t sub_2173F5504()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 1784, &qword_27CB27860, &qword_21776B348);
  OUTLINED_FUNCTION_587();

  return v1();
}

uint64_t sub_2173F556C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2768);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2776) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F5664()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 2784);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 2792) = v0;

  if (v0)
  {
    sub_2171F0790(v3 + 840, &qword_27CB27848, &qword_21776B328);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F5774()
{
  OUTLINED_FUNCTION_30_0();
  sub_2171F0790(v0 + 1320, &qword_27CB27858, &qword_21776B338);
  OUTLINED_FUNCTION_928();
  v1 = OUTLINED_FUNCTION_383();
  sub_217413DD8(v1, v2);
  sub_2171F0790(v0 + 840, &qword_27CB27848, &qword_21776B328);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v6 = OUTLINED_FUNCTION_206_3();
  sub_2174182F0(v6, v7, v8);
  OUTLINED_FUNCTION_811();
  if (v9)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CEAE8();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_217283B58(&qword_21776B2D0);
      }

      else
      {
        sub_2171F0790(v16, &qword_27CB277F0, &unk_21775A2B0);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27840, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_350(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_96_9(v20);

  return sub_217419260(v22, v23);
}

uint64_t sub_2173F593C()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);
  sub_2171F0790(v0 + 1320, &qword_27CB27858, &qword_21776B338);

  sub_2171F0790(v0 + 840, &qword_27CB27848, &qword_21776B328);
  OUTLINED_FUNCTION_558();

  return v2();
}

uint64_t sub_2173F59C8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2800);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2808) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F5AC0()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB27848, &qword_21776B328);
  sub_2171F0790(v0 + 1680, &unk_27CB27830, &qword_21776B2F8);
  sub_2171F0790(v0 + 456, &qword_27CB27840, &qword_21776B318);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173F5B60()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB27848, &qword_21776B328);
  sub_2171F0790(v0 + 1680, &unk_27CB27830, &qword_21776B2F8);
  sub_2171F0790(v0 + 456, &qword_27CB27840, &qword_21776B318);
  OUTLINED_FUNCTION_513();

  return v2();
}

uint64_t sub_2173F5C00()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_927();
  OUTLINED_FUNCTION_1067();
  v2 = OUTLINED_FUNCTION_779();
  sub_2171F0688(v2, v3, v4, v5);
  OUTLINED_FUNCTION_1320();

  v6 = OUTLINED_FUNCTION_374();
  sub_2174182F0(v6, v0, v7);
  OUTLINED_FUNCTION_1019();
  if (v8)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_20_6();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CEAE8();
      if (*(v1 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v16 = OUTLINED_FUNCTION_349();
        v17(v16);
        sub_217283B58(&qword_21776B2D0);
      }

      else
      {
        sub_2171F0790(v15, &qword_27CB277F0, &unk_21775A2B0);
      }

      __swift_destroy_boxed_opaque_existential_1((v1 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(v0, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_350(v18);
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_96_9(v19);

  return sub_217419260(v21, v22);
}

uint64_t sub_2173F5D90(uint64_t a1)
{
  *(v2 + 2736) = v1;
  *(v2 + 2728) = a1;
  return MEMORY[0x2822009F8](sub_2173F5DB4, 0, 0);
}

uint64_t sub_2173F5DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_674();
  v12 = *(v11 + 1840);
  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_213_4();
    OUTLINED_FUNCTION_28_6();
    swift_allocObject();
    v13 = SharedRelatedItemStore.init()();
    OUTLINED_FUNCTION_496(v13);
    if (*(v11 + 1424))
    {
      OUTLINED_FUNCTION_929();
      OUTLINED_FUNCTION_217_4();
      if (v15 && (v14 & 0xF000000000000007) == 0)
      {
        v16 = OUTLINED_FUNCTION_216_4();
        v17 = OUTLINED_FUNCTION_1178(v16);
        OUTLINED_FUNCTION_1190(v17, v18, &qword_27CB276F8, &qword_21776B158);
        OUTLINED_FUNCTION_392();
        sub_217751DC8();
        OUTLINED_FUNCTION_798();
        OUTLINED_FUNCTION_392();
        v19 = sub_217751DC8();
        v20 = OUTLINED_FUNCTION_49_15(v19, xmmword_2177586D0);
        sub_2174143C4(v20, v21);
        sub_2171F0790(v10, &unk_27CB276E0, &qword_21776B150);
        OUTLINED_FUNCTION_709();
        sub_2171F0790(v22, v23, v24);
        OUTLINED_FUNCTION_263();
        OUTLINED_FUNCTION_1183();

        v25 = OUTLINED_FUNCTION_206_3();
        sub_2174183D4(v25, v26, v27);
        OUTLINED_FUNCTION_811();
        if (v15)
        {
          OUTLINED_FUNCTION_802();
          OUTLINED_FUNCTION_93_3();
          sub_2171F0688(v28, v29, v30, v31);
          v32 = OUTLINED_FUNCTION_20_6();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          if (OUTLINED_FUNCTION_337())
          {
            OUTLINED_FUNCTION_68_11();
            sub_2172CE9F8();
            if (*(v11 + 2520))
            {
              OUTLINED_FUNCTION_1_53();
              v35 = OUTLINED_FUNCTION_349();
              v36(v35);
              sub_21725CE44(&qword_21776B108);
            }

            else
            {
              sub_2171F0790(v34, &unk_27CB275E0, &qword_2177589D0);
            }

            __swift_destroy_boxed_opaque_existential_1((v11 + 2608));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2171F0790(&qword_27CB276D8, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        v70 = swift_task_alloc();
        v71 = OUTLINED_FUNCTION_350(v70);
        *v71 = v72;
        OUTLINED_FUNCTION_96_9(v71);
        OUTLINED_FUNCTION_1029();

        return sub_217419370(v73, v74);
      }

      OUTLINED_FUNCTION_15_29();
      *(v11 + 1880) = v53;
      *(v11 + 1888) = *(v11 + 1328);
      *(v11 + 1904) = v54;
      *(v11 + 1912) = v55;
      *(v11 + 1920) = v56;
      *(v11 + 1928) = v57;
      *(v11 + 1936) = v58;
      OUTLINED_FUNCTION_215_4();
      v61 = OUTLINED_FUNCTION_1259(v59, v60, &unk_27CB276E0, &qword_21776B150);
      OUTLINED_FUNCTION_1191(v61, v62, &qword_27CB27700, &qword_21776B160);
      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_415(v63);
      *v64 = v65;
      OUTLINED_FUNCTION_235_2(v64);
    }

    else
    {
      OUTLINED_FUNCTION_568();
      v50 = swift_task_alloc();
      v51 = OUTLINED_FUNCTION_430(v50);
      *v51 = v52;
      OUTLINED_FUNCTION_234_2(v51);
    }

    OUTLINED_FUNCTION_961();
    OUTLINED_FUNCTION_1029();

    return sub_21740E7C8(v66, v67, v68);
  }

  v37 = OUTLINED_FUNCTION_16_30(v12);
  sub_2172CA838(v37, v11 + 2688);
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_648();
  OUTLINED_FUNCTION_391(&dword_21776B168);
  sub_217751DE8();
  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_588(v38);
  *v39 = v40;
  OUTLINED_FUNCTION_123_9(v39);
  OUTLINED_FUNCTION_1410();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_2173F618C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2744);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F6284()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2171F0790(v0 + 1784, &qword_27CB27708, &qword_21776B170);
  OUTLINED_FUNCTION_926();
  type metadata accessor for SharedRelatedItemStore();
  OUTLINED_FUNCTION_28_6();
  swift_allocObject();
  v1 = SharedRelatedItemStore.init()();
  OUTLINED_FUNCTION_495(v1);
  if (!*(v0 + 1424))
  {
    OUTLINED_FUNCTION_568();
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_430(v25);
    *v26 = v27;
    OUTLINED_FUNCTION_234_2(v26);
LABEL_12:
    OUTLINED_FUNCTION_838();
    OUTLINED_FUNCTION_1322();

    return sub_21740E7C8(v41, v42, v43);
  }

  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_217_4();
  if (!v3 || (v2 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_15_29();
    *(v0 + 1880) = v28;
    *(v0 + 1888) = *(v0 + 1328);
    *(v0 + 1904) = v29;
    *(v0 + 1912) = v30;
    *(v0 + 1920) = v31;
    *(v0 + 1928) = v32;
    *(v0 + 1936) = v33;
    OUTLINED_FUNCTION_215_4();
    v36 = OUTLINED_FUNCTION_1258(v34, v35, &unk_27CB276E0, &qword_21776B150);
    OUTLINED_FUNCTION_1191(v36, v37, &qword_27CB27700, &qword_21776B160);
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_415(v38);
    *v39 = v40;
    OUTLINED_FUNCTION_235_2(v39);
    goto LABEL_12;
  }

  v4 = OUTLINED_FUNCTION_216_4();
  v5 = OUTLINED_FUNCTION_1177(v4);
  OUTLINED_FUNCTION_1190(v5, v6, &qword_27CB276F8, &qword_21776B158);
  OUTLINED_FUNCTION_17_13();
  sub_217751DC8();
  OUTLINED_FUNCTION_17_13();
  v7 = sub_217751DC8();
  v8 = OUTLINED_FUNCTION_50_12(v7, xmmword_2177586D0);
  sub_2174143C4(v8, v9);
  sub_2171F0790(v0 + 840, &unk_27CB276E0, &qword_21776B150);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v10, v11, v12);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v13 = OUTLINED_FUNCTION_206_3();
  sub_2174183D4(v13, v14, v15);
  OUTLINED_FUNCTION_811();
  if (v3)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_20_6();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CE9F8();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v23 = OUTLINED_FUNCTION_349();
        v24(v23);
        sub_21725CE44(&qword_21776B108);
      }

      else
      {
        sub_2171F0790(v22, &unk_27CB275E0, &qword_2177589D0);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB276D8, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_350(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_96_9(v47);
  OUTLINED_FUNCTION_1322();

  return sub_217419370(v49, v50);
}

uint64_t sub_2173F65DC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 1784, &qword_27CB27708, &qword_21776B170);
  OUTLINED_FUNCTION_587();

  return v1();
}

uint64_t sub_2173F6644()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2768);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2776) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F673C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 2784);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 2792) = v0;

  if (v0)
  {
    sub_2171F0790(v3 + 840, &unk_27CB276E0, &qword_21776B150);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F684C()
{
  OUTLINED_FUNCTION_30_0();
  sub_2171F0790(v0 + 1320, &qword_27CB27700, &qword_21776B160);
  OUTLINED_FUNCTION_928();
  v1 = OUTLINED_FUNCTION_383();
  sub_2174143C4(v1, v2);
  sub_2171F0790(v0 + 840, &unk_27CB276E0, &qword_21776B150);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v6 = OUTLINED_FUNCTION_206_3();
  sub_2174183D4(v6, v7, v8);
  OUTLINED_FUNCTION_811();
  if (v9)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CE9F8();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_21725CE44(&qword_21776B108);
      }

      else
      {
        sub_2171F0790(v16, &unk_27CB275E0, &qword_2177589D0);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB276D8, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_350(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_96_9(v20);

  return sub_217419370(v22, v23);
}

uint64_t sub_2173F6A14()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);
  sub_2171F0790(v0 + 1320, &qword_27CB27700, &qword_21776B160);

  sub_2171F0790(v0 + 840, &unk_27CB276E0, &qword_21776B150);
  OUTLINED_FUNCTION_558();

  return v2();
}

uint64_t sub_2173F6AA0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2800);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2808) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F6B98()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &unk_27CB276E0, &qword_21776B150);
  sub_2171F0790(v0 + 1680, &qword_27CB276B8, &unk_21776B120);
  sub_2171F0790(v0 + 456, &qword_27CB276D8, &qword_21776B140);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173F6C38()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &unk_27CB276E0, &qword_21776B150);
  sub_2171F0790(v0 + 1680, &qword_27CB276B8, &unk_21776B120);
  sub_2171F0790(v0 + 456, &qword_27CB276D8, &qword_21776B140);
  OUTLINED_FUNCTION_513();

  return v2();
}

uint64_t sub_2173F6CD8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_927();
  OUTLINED_FUNCTION_1067();
  v2 = OUTLINED_FUNCTION_779();
  sub_2171F0688(v2, v3, v4, v5);
  OUTLINED_FUNCTION_1320();

  v6 = OUTLINED_FUNCTION_374();
  sub_2174183D4(v6, v0, v7);
  OUTLINED_FUNCTION_1019();
  if (v8)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_20_6();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CE9F8();
      if (*(v1 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v16 = OUTLINED_FUNCTION_349();
        v17(v16);
        sub_21725CE44(&qword_21776B108);
      }

      else
      {
        sub_2171F0790(v15, &unk_27CB275E0, &qword_2177589D0);
      }

      __swift_destroy_boxed_opaque_existential_1((v1 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(v0, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_350(v18);
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_96_9(v19);

  return sub_217419370(v21, v22);
}

uint64_t sub_2173F6E68(uint64_t a1)
{
  *(v2 + 2736) = v1;
  *(v2 + 2728) = a1;
  return MEMORY[0x2822009F8](sub_2173F6E8C, 0, 0);
}

uint64_t sub_2173F6E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_674();
  v12 = *(v11 + 1840);
  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_213_4();
    OUTLINED_FUNCTION_28_6();
    swift_allocObject();
    v13 = SharedRelatedItemStore.init()();
    OUTLINED_FUNCTION_496(v13);
    if (*(v11 + 1424))
    {
      OUTLINED_FUNCTION_929();
      OUTLINED_FUNCTION_217_4();
      if (v15 && (v14 & 0xF000000000000007) == 0)
      {
        v16 = OUTLINED_FUNCTION_216_4();
        v17 = OUTLINED_FUNCTION_1178(v16);
        OUTLINED_FUNCTION_1190(v17, v18, &qword_27CB27CA8, &qword_21776BA40);
        OUTLINED_FUNCTION_392();
        sub_217751DC8();
        OUTLINED_FUNCTION_798();
        OUTLINED_FUNCTION_392();
        v19 = sub_217751DC8();
        v20 = OUTLINED_FUNCTION_49_15(v19, xmmword_2177586D0);
        sub_2174149B0(v20, v21);
        sub_2171F0790(v10, &qword_27CB27CA0, &qword_21776BA38);
        OUTLINED_FUNCTION_709();
        sub_2171F0790(v22, v23, v24);
        OUTLINED_FUNCTION_263();
        OUTLINED_FUNCTION_1183();

        v25 = OUTLINED_FUNCTION_206_3();
        sub_2174184B8(v25, v26, v27);
        OUTLINED_FUNCTION_811();
        if (v15)
        {
          OUTLINED_FUNCTION_802();
          OUTLINED_FUNCTION_93_3();
          sub_2171F0688(v28, v29, v30, v31);
          v32 = OUTLINED_FUNCTION_20_6();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          if (OUTLINED_FUNCTION_337())
          {
            OUTLINED_FUNCTION_68_11();
            sub_2172CE898();
            if (*(v11 + 2520))
            {
              OUTLINED_FUNCTION_1_53();
              v35 = OUTLINED_FUNCTION_349();
              v36(v35);
              sub_21728418C(&unk_21776B9F8);
            }

            else
            {
              sub_2171F0790(v34, &unk_27CB27760, &unk_21775A2D0);
            }

            __swift_destroy_boxed_opaque_existential_1((v11 + 2608));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2171F0790(&qword_27CB27748, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        v70 = swift_task_alloc();
        v71 = OUTLINED_FUNCTION_350(v70);
        *v71 = v72;
        OUTLINED_FUNCTION_96_9(v71);
        OUTLINED_FUNCTION_1029();

        return sub_217419480(v73, v74);
      }

      OUTLINED_FUNCTION_15_29();
      *(v11 + 1880) = v53;
      *(v11 + 1888) = *(v11 + 1328);
      *(v11 + 1904) = v54;
      *(v11 + 1912) = v55;
      *(v11 + 1920) = v56;
      *(v11 + 1928) = v57;
      *(v11 + 1936) = v58;
      OUTLINED_FUNCTION_215_4();
      v61 = OUTLINED_FUNCTION_1259(v59, v60, &qword_27CB27CA0, &qword_21776BA38);
      OUTLINED_FUNCTION_1191(v61, v62, &qword_27CB27CB0, &qword_21776BA48);
      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_415(v63);
      *v64 = v65;
      OUTLINED_FUNCTION_235_2(v64);
    }

    else
    {
      OUTLINED_FUNCTION_568();
      v50 = swift_task_alloc();
      v51 = OUTLINED_FUNCTION_430(v50);
      *v51 = v52;
      OUTLINED_FUNCTION_234_2(v51);
    }

    OUTLINED_FUNCTION_961();
    OUTLINED_FUNCTION_1029();

    return sub_21740EE8C(v66, v67, v68);
  }

  v37 = OUTLINED_FUNCTION_16_30(v12);
  sub_2172CA838(v37, v11 + 2688);
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_648();
  OUTLINED_FUNCTION_391(&dword_21776BA50);
  sub_217751DE8();
  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_588(v38);
  *v39 = v40;
  OUTLINED_FUNCTION_123_9(v39);
  OUTLINED_FUNCTION_1410();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_2173F7264()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2744);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F735C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2171F0790(v0 + 1784, &qword_27CB27CB8, &qword_21776BA58);
  OUTLINED_FUNCTION_926();
  type metadata accessor for SharedRelatedItemStore();
  OUTLINED_FUNCTION_28_6();
  swift_allocObject();
  v1 = SharedRelatedItemStore.init()();
  OUTLINED_FUNCTION_495(v1);
  if (!*(v0 + 1424))
  {
    OUTLINED_FUNCTION_568();
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_430(v25);
    *v26 = v27;
    OUTLINED_FUNCTION_234_2(v26);
LABEL_12:
    OUTLINED_FUNCTION_838();
    OUTLINED_FUNCTION_1322();

    return sub_21740EE8C(v41, v42, v43);
  }

  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_217_4();
  if (!v3 || (v2 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_15_29();
    *(v0 + 1880) = v28;
    *(v0 + 1888) = *(v0 + 1328);
    *(v0 + 1904) = v29;
    *(v0 + 1912) = v30;
    *(v0 + 1920) = v31;
    *(v0 + 1928) = v32;
    *(v0 + 1936) = v33;
    OUTLINED_FUNCTION_215_4();
    v36 = OUTLINED_FUNCTION_1258(v34, v35, &qword_27CB27CA0, &qword_21776BA38);
    OUTLINED_FUNCTION_1191(v36, v37, &qword_27CB27CB0, &qword_21776BA48);
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_415(v38);
    *v39 = v40;
    OUTLINED_FUNCTION_235_2(v39);
    goto LABEL_12;
  }

  v4 = OUTLINED_FUNCTION_216_4();
  v5 = OUTLINED_FUNCTION_1177(v4);
  OUTLINED_FUNCTION_1190(v5, v6, &qword_27CB27CA8, &qword_21776BA40);
  OUTLINED_FUNCTION_17_13();
  sub_217751DC8();
  OUTLINED_FUNCTION_17_13();
  v7 = sub_217751DC8();
  v8 = OUTLINED_FUNCTION_50_12(v7, xmmword_2177586D0);
  sub_2174149B0(v8, v9);
  sub_2171F0790(v0 + 840, &qword_27CB27CA0, &qword_21776BA38);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v10, v11, v12);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v13 = OUTLINED_FUNCTION_206_3();
  sub_2174184B8(v13, v14, v15);
  OUTLINED_FUNCTION_811();
  if (v3)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_20_6();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CE898();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v23 = OUTLINED_FUNCTION_349();
        v24(v23);
        sub_21728418C(&unk_21776B9F8);
      }

      else
      {
        sub_2171F0790(v22, &unk_27CB27760, &unk_21775A2D0);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27748, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_350(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_96_9(v47);
  OUTLINED_FUNCTION_1322();

  return sub_217419480(v49, v50);
}

uint64_t sub_2173F76B4()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 1784, &qword_27CB27CB8, &qword_21776BA58);
  OUTLINED_FUNCTION_587();

  return v1();
}

uint64_t sub_2173F771C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2768);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2776) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F7814()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 2784);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 2792) = v0;

  if (v0)
  {
    sub_2171F0790(v3 + 840, &qword_27CB27CA0, &qword_21776BA38);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F7924()
{
  OUTLINED_FUNCTION_30_0();
  sub_2171F0790(v0 + 1320, &qword_27CB27CB0, &qword_21776BA48);
  OUTLINED_FUNCTION_928();
  v1 = OUTLINED_FUNCTION_383();
  sub_2174149B0(v1, v2);
  sub_2171F0790(v0 + 840, &qword_27CB27CA0, &qword_21776BA38);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v6 = OUTLINED_FUNCTION_206_3();
  sub_2174184B8(v6, v7, v8);
  OUTLINED_FUNCTION_811();
  if (v9)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CE898();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_21728418C(&unk_21776B9F8);
      }

      else
      {
        sub_2171F0790(v16, &unk_27CB27760, &unk_21775A2D0);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27748, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_350(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_96_9(v20);

  return sub_217419480(v22, v23);
}

uint64_t sub_2173F7AEC()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);
  sub_2171F0790(v0 + 1320, &qword_27CB27CB0, &qword_21776BA48);

  sub_2171F0790(v0 + 840, &qword_27CB27CA0, &qword_21776BA38);
  OUTLINED_FUNCTION_558();

  return v2();
}

uint64_t sub_2173F7B78()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2800);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2808) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F7C70()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB27CA0, &qword_21776BA38);
  sub_2171F0790(v0 + 1680, &unk_27CB27C90, &unk_21776BA10);
  sub_2171F0790(v0 + 456, &qword_27CB27748, &qword_21776B1B0);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173F7D10()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB27CA0, &qword_21776BA38);
  sub_2171F0790(v0 + 1680, &unk_27CB27C90, &unk_21776BA10);
  sub_2171F0790(v0 + 456, &qword_27CB27748, &qword_21776B1B0);
  OUTLINED_FUNCTION_513();

  return v2();
}

uint64_t sub_2173F7DB0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_927();
  OUTLINED_FUNCTION_1067();
  v2 = OUTLINED_FUNCTION_779();
  sub_2171F0688(v2, v3, v4, v5);
  OUTLINED_FUNCTION_1320();

  v6 = OUTLINED_FUNCTION_374();
  sub_2174184B8(v6, v0, v7);
  OUTLINED_FUNCTION_1019();
  if (v8)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_20_6();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CE898();
      if (*(v1 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v16 = OUTLINED_FUNCTION_349();
        v17(v16);
        sub_21728418C(&unk_21776B9F8);
      }

      else
      {
        sub_2171F0790(v15, &unk_27CB27760, &unk_21775A2D0);
      }

      __swift_destroy_boxed_opaque_existential_1((v1 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(v0, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_350(v18);
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_96_9(v19);

  return sub_217419480(v21, v22);
}

uint64_t sub_2173F7F40(uint64_t a1)
{
  *(v2 + 2752) = v1;
  *(v2 + 2744) = a1;
  return MEMORY[0x2822009F8](sub_2173F7F64, 0, 0);
}

uint64_t sub_2173F7F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  v11 = *(v10 + 2752);
  OUTLINED_FUNCTION_933();
  v12 = *(v10 + 1840);
  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_213_4();
    OUTLINED_FUNCTION_28_6();
    swift_allocObject();
    *(v10 + 2776) = SharedRelatedItemStore.init()();
    OUTLINED_FUNCTION_931();
    if (*(v10 + 1424))
    {
      OUTLINED_FUNCTION_929();
      OUTLINED_FUNCTION_217_4();
      if (v14 && (v13 & 0xF000000000000007) == 0)
      {
        v15 = OUTLINED_FUNCTION_216_4();
        v16 = OUTLINED_FUNCTION_1178(v15);
        OUTLINED_FUNCTION_1190(v16, v17, &qword_27CB27E38, &qword_21776BCE0);
        OUTLINED_FUNCTION_392();
        sub_217751DC8();
        OUTLINED_FUNCTION_798();
        OUTLINED_FUNCTION_392();
        v18 = sub_217751DC8();
        v19 = OUTLINED_FUNCTION_49_15(v18, xmmword_2177586D0);
        sub_217414F9C(v19, v20);
        sub_2171F0790(v11, &qword_27CB27E30, &qword_21776BCD8);
        OUTLINED_FUNCTION_709();
        sub_2171F0790(v21, v22, v23);
        OUTLINED_FUNCTION_442();
        OUTLINED_FUNCTION_1347();

        v24 = OUTLINED_FUNCTION_420();
        sub_21741859C(v24, v25, v26);
        OUTLINED_FUNCTION_811();
        if (v14)
        {
          OUTLINED_FUNCTION_1037();
          OUTLINED_FUNCTION_93_3();
          sub_2171F0688(v27, v28, v29, v30);
          v31 = OUTLINED_FUNCTION_20_6();
          __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          v33 = OUTLINED_FUNCTION_337();
          if (v33)
          {
            OUTLINED_FUNCTION_203_4(v33, v10 + 2624);
            sub_2172CEB24();
            OUTLINED_FUNCTION_1036();
            if (v14)
            {
              sub_2171F0790(v10 + 2520, &unk_27CB28AA0, &qword_21775A020);
            }

            else
            {
              OUTLINED_FUNCTION_36_16();
              v34 = OUTLINED_FUNCTION_349();
              v35(v34);
              sub_21727576C(&unk_21776BC90);
            }

            __swift_destroy_boxed_opaque_existential_1((v10 + 2624));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2171F0790(&qword_27CB27E28, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        v68 = swift_task_alloc();
        v69 = OUTLINED_FUNCTION_562(v68);
        *v69 = v70;
        OUTLINED_FUNCTION_225_4(v69);
        OUTLINED_FUNCTION_1029();

        return sub_217419590(v71, v72);
      }

      OUTLINED_FUNCTION_15_29();
      *(v10 + 1880) = v51;
      *(v10 + 1888) = *(v10 + 1328);
      *(v10 + 1904) = v52;
      *(v10 + 1912) = v53;
      *(v10 + 1920) = v54;
      *(v10 + 1928) = v55;
      *(v10 + 1936) = v56;
      OUTLINED_FUNCTION_215_4();
      v59 = OUTLINED_FUNCTION_1259(v57, v58, &qword_27CB27E30, &qword_21776BCD8);
      OUTLINED_FUNCTION_1191(v59, v60, &qword_27CB27E40, &qword_21776BCE8);
      v61 = swift_task_alloc();
      v62 = OUTLINED_FUNCTION_350(v61);
      *v62 = v63;
      OUTLINED_FUNCTION_602(v62);
    }

    else
    {
      OUTLINED_FUNCTION_810(*(v10 + 2752));
      v48 = swift_task_alloc();
      v49 = OUTLINED_FUNCTION_415(v48);
      *v49 = v50;
      OUTLINED_FUNCTION_601(v49);
    }

    OUTLINED_FUNCTION_961();
    OUTLINED_FUNCTION_1029();

    return sub_21740F550(v64, v65, v66);
  }

  v36 = OUTLINED_FUNCTION_16_30(v12);
  sub_2172CA838(v36, v10 + 2704);
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_648();
  OUTLINED_FUNCTION_391(&dword_21776BCF0);
  sub_217751DE8();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v10 + 2760) = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_517(v37);
  OUTLINED_FUNCTION_515();
  OUTLINED_FUNCTION_1410();

  return v43(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t sub_2173F8360()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2760);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2768) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F8458()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2171F0790(v0 + 1784, &qword_27CB27E48, &qword_21776BCF8);
  OUTLINED_FUNCTION_926();
  type metadata accessor for SharedRelatedItemStore();
  OUTLINED_FUNCTION_28_6();
  swift_allocObject();
  *(v0 + 2776) = SharedRelatedItemStore.init()();
  OUTLINED_FUNCTION_932();
  if (!*(v0 + 1424))
  {
    OUTLINED_FUNCTION_810(*(v0 + 2752));
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_415(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_601(v25);
LABEL_12:
    OUTLINED_FUNCTION_838();
    OUTLINED_FUNCTION_1322();

    return sub_21740F550(v40, v41, v42);
  }

  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_217_4();
  if (!v2 || (v1 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_15_29();
    *(v0 + 1880) = v27;
    *(v0 + 1888) = *(v0 + 1328);
    *(v0 + 1904) = v28;
    *(v0 + 1912) = v29;
    *(v0 + 1920) = v30;
    *(v0 + 1928) = v31;
    *(v0 + 1936) = v32;
    OUTLINED_FUNCTION_215_4();
    v35 = OUTLINED_FUNCTION_1258(v33, v34, &qword_27CB27E30, &qword_21776BCD8);
    OUTLINED_FUNCTION_1191(v35, v36, &qword_27CB27E40, &qword_21776BCE8);
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_350(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_602(v38);
    goto LABEL_12;
  }

  v3 = OUTLINED_FUNCTION_216_4();
  v4 = OUTLINED_FUNCTION_1177(v3);
  OUTLINED_FUNCTION_1190(v4, v5, &qword_27CB27E38, &qword_21776BCE0);
  OUTLINED_FUNCTION_17_13();
  sub_217751DC8();
  OUTLINED_FUNCTION_17_13();
  v6 = sub_217751DC8();
  v7 = OUTLINED_FUNCTION_50_12(v6, xmmword_2177586D0);
  sub_217414F9C(v7, v8);
  sub_2171F0790(v0 + 840, &qword_27CB27E30, &qword_21776BCD8);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v9, v10, v11);
  OUTLINED_FUNCTION_442();
  OUTLINED_FUNCTION_1347();

  v12 = OUTLINED_FUNCTION_420();
  sub_21741859C(v12, v13, v14);
  OUTLINED_FUNCTION_811();
  if (v2)
  {
    OUTLINED_FUNCTION_1037();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v15, v16, v17, v18);
    v19 = OUTLINED_FUNCTION_20_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    v21 = OUTLINED_FUNCTION_337();
    if (v21)
    {
      OUTLINED_FUNCTION_203_4(v21, v0 + 2624);
      sub_2172CEB24();
      OUTLINED_FUNCTION_1036();
      if (v2)
      {
        sub_2171F0790(v0 + 2520, &unk_27CB28AA0, &qword_21775A020);
      }

      else
      {
        OUTLINED_FUNCTION_36_16();
        v22 = OUTLINED_FUNCTION_349();
        v23(v22);
        sub_21727576C(&unk_21776BC90);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2624));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27E28, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v45 = swift_task_alloc();
  v46 = OUTLINED_FUNCTION_562(v45);
  *v46 = v47;
  OUTLINED_FUNCTION_225_4(v46);
  OUTLINED_FUNCTION_1322();

  return sub_217419590(v48, v49);
}

uint64_t sub_2173F87C4()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 1784, &qword_27CB27E48, &qword_21776BCF8);
  v1 = *(v0 + 2768);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2173F8830()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2784);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2792) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F8928()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 2800);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 2808) = v0;

  if (v0)
  {
    sub_2171F0790(v3 + 840, &qword_27CB27E30, &qword_21776BCD8);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F8A38()
{
  OUTLINED_FUNCTION_30_0();
  sub_2171F0790(v0 + 1320, &qword_27CB27E40, &qword_21776BCE8);
  OUTLINED_FUNCTION_928();
  v1 = OUTLINED_FUNCTION_383();
  sub_217414F9C(v1, v2);
  sub_2171F0790(v0 + 840, &qword_27CB27E30, &qword_21776BCD8);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_442();
  OUTLINED_FUNCTION_1347();

  v6 = OUTLINED_FUNCTION_420();
  sub_21741859C(v6, v7, v8);
  OUTLINED_FUNCTION_811();
  if (v9)
  {
    OUTLINED_FUNCTION_1037();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    v16 = OUTLINED_FUNCTION_337();
    if (v16)
    {
      OUTLINED_FUNCTION_203_4(v16, v0 + 2624);
      sub_2172CEB24();
      OUTLINED_FUNCTION_1036();
      if (v9)
      {
        sub_2171F0790(v0 + 2520, &unk_27CB28AA0, &qword_21775A020);
      }

      else
      {
        OUTLINED_FUNCTION_36_16();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_21727576C(&unk_21776BC90);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2624));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27E28, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_562(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_225_4(v20);

  return sub_217419590(v22, v23);
}

uint64_t sub_2173F8C08()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2776);
  sub_2171F0790(v0 + 1320, &qword_27CB27E40, &qword_21776BCE8);

  sub_2171F0790(v0 + 840, &qword_27CB27E30, &qword_21776BCD8);
  OUTLINED_FUNCTION_513();

  return v2();
}

uint64_t sub_2173F8C94()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2816);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2824) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F8D8C()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2776);

  sub_2171F0790(v0 + 840, &qword_27CB27E30, &qword_21776BCD8);
  sub_2171F0790(v0 + 1680, &qword_27CB27E18, &qword_217791F10);
  sub_2171F0790(v0 + 456, &qword_27CB27E28, &qword_21776BCC8);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173F8E2C()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2776);

  sub_2171F0790(v0 + 840, &qword_27CB27E30, &qword_21776BCD8);
  sub_2171F0790(v0 + 1680, &qword_27CB27E18, &qword_217791F10);
  sub_2171F0790(v0 + 456, &qword_27CB27E28, &qword_21776BCC8);
  v2 = *(v0 + 2824);
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2173F8ED0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_927();
  v1 = v0[347];
  v2 = v0[344];
  v3 = OUTLINED_FUNCTION_779();
  sub_2171F0688(v3, v4, v5, v6);
  sub_2172CA838(v2 + 128, (v0 + 333));

  v7 = OUTLINED_FUNCTION_559();
  sub_21741859C(v7, v1, v8);
  OUTLINED_FUNCTION_1019();
  if (v9)
  {
    OUTLINED_FUNCTION_1037();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    v16 = OUTLINED_FUNCTION_337();
    if (v16)
    {
      OUTLINED_FUNCTION_203_4(v16, (v0 + 328));
      sub_2172CEB24();
      OUTLINED_FUNCTION_1036();
      if (v9)
      {
        sub_2171F0790((v0 + 315), &unk_27CB28AA0, &qword_21775A020);
      }

      else
      {
        OUTLINED_FUNCTION_36_16();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_21727576C(&unk_21776BC90);
      }

      __swift_destroy_boxed_opaque_existential_1(v0 + 328);
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(v1, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_562(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_225_4(v20);

  return sub_217419590(v22, v23);
}

uint64_t sub_2173F9074(uint64_t a1)
{
  *(v2 + 2736) = v1;
  *(v2 + 2728) = a1;
  return MEMORY[0x2822009F8](sub_2173F9098, 0, 0);
}

uint64_t sub_2173F9098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_674();
  v12 = *(v11 + 1840);
  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_213_4();
    OUTLINED_FUNCTION_28_6();
    swift_allocObject();
    v13 = SharedRelatedItemStore.init()();
    OUTLINED_FUNCTION_496(v13);
    if (*(v11 + 1424))
    {
      OUTLINED_FUNCTION_929();
      OUTLINED_FUNCTION_217_4();
      if (v15 && (v14 & 0xF000000000000007) == 0)
      {
        v16 = OUTLINED_FUNCTION_216_4();
        v17 = OUTLINED_FUNCTION_1178(v16);
        OUTLINED_FUNCTION_1190(v17, v18, &qword_27CB27BE8, &qword_21776B8F0);
        OUTLINED_FUNCTION_392();
        sub_217751DC8();
        OUTLINED_FUNCTION_798();
        OUTLINED_FUNCTION_392();
        v19 = sub_217751DC8();
        v20 = OUTLINED_FUNCTION_49_15(v19, xmmword_2177586D0);
        sub_21741562C(v20, v21);
        sub_2171F0790(v10, &qword_27CB27BE0, &qword_21776B8E8);
        OUTLINED_FUNCTION_709();
        sub_2171F0790(v22, v23, v24);
        OUTLINED_FUNCTION_263();
        OUTLINED_FUNCTION_1183();

        v25 = OUTLINED_FUNCTION_206_3();
        sub_217418680(v25, v26, v27);
        OUTLINED_FUNCTION_811();
        if (v15)
        {
          OUTLINED_FUNCTION_802();
          OUTLINED_FUNCTION_93_3();
          sub_2171F0688(v28, v29, v30, v31);
          v32 = OUTLINED_FUNCTION_20_6();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          if (OUTLINED_FUNCTION_337())
          {
            OUTLINED_FUNCTION_68_11();
            sub_2172CE9BC();
            if (*(v11 + 2520))
            {
              OUTLINED_FUNCTION_1_53();
              v35 = OUTLINED_FUNCTION_349();
              v36(v35);
              sub_217284498(&unk_21776B890);
            }

            else
            {
              sub_2171F0790(v34, &qword_27CB2CD90, &unk_21775A2C0);
            }

            __swift_destroy_boxed_opaque_existential_1((v11 + 2608));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2171F0790(&qword_27CB27BD8, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        v70 = swift_task_alloc();
        v71 = OUTLINED_FUNCTION_350(v70);
        *v71 = v72;
        OUTLINED_FUNCTION_96_9(v71);
        OUTLINED_FUNCTION_1029();

        return sub_217419698(v73, v74);
      }

      OUTLINED_FUNCTION_15_29();
      *(v11 + 1880) = v53;
      *(v11 + 1888) = *(v11 + 1328);
      *(v11 + 1904) = v54;
      *(v11 + 1912) = v55;
      *(v11 + 1920) = v56;
      *(v11 + 1928) = v57;
      *(v11 + 1936) = v58;
      OUTLINED_FUNCTION_215_4();
      v61 = OUTLINED_FUNCTION_1259(v59, v60, &qword_27CB27BE0, &qword_21776B8E8);
      OUTLINED_FUNCTION_1191(v61, v62, &qword_27CB27BF0, &qword_21776B8F8);
      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_415(v63);
      *v64 = v65;
      OUTLINED_FUNCTION_235_2(v64);
    }

    else
    {
      OUTLINED_FUNCTION_568();
      v50 = swift_task_alloc();
      v51 = OUTLINED_FUNCTION_430(v50);
      *v51 = v52;
      OUTLINED_FUNCTION_234_2(v51);
    }

    OUTLINED_FUNCTION_961();
    OUTLINED_FUNCTION_1029();

    return sub_21740FC14(v66, v67, v68);
  }

  v37 = OUTLINED_FUNCTION_16_30(v12);
  sub_2172CA838(v37, v11 + 2688);
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_648();
  OUTLINED_FUNCTION_391(&dword_21776B900);
  sub_217751DE8();
  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_588(v38);
  *v39 = v40;
  OUTLINED_FUNCTION_123_9(v39);
  OUTLINED_FUNCTION_1410();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_2173F9470()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2744);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F9568()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2171F0790(v0 + 1784, &qword_27CB27BF8, &qword_21776B908);
  OUTLINED_FUNCTION_926();
  type metadata accessor for SharedRelatedItemStore();
  OUTLINED_FUNCTION_28_6();
  swift_allocObject();
  v1 = SharedRelatedItemStore.init()();
  OUTLINED_FUNCTION_495(v1);
  if (!*(v0 + 1424))
  {
    OUTLINED_FUNCTION_568();
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_430(v25);
    *v26 = v27;
    OUTLINED_FUNCTION_234_2(v26);
LABEL_12:
    OUTLINED_FUNCTION_838();
    OUTLINED_FUNCTION_1322();

    return sub_21740FC14(v41, v42, v43);
  }

  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_217_4();
  if (!v3 || (v2 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_15_29();
    *(v0 + 1880) = v28;
    *(v0 + 1888) = *(v0 + 1328);
    *(v0 + 1904) = v29;
    *(v0 + 1912) = v30;
    *(v0 + 1920) = v31;
    *(v0 + 1928) = v32;
    *(v0 + 1936) = v33;
    OUTLINED_FUNCTION_215_4();
    v36 = OUTLINED_FUNCTION_1258(v34, v35, &qword_27CB27BE0, &qword_21776B8E8);
    OUTLINED_FUNCTION_1191(v36, v37, &qword_27CB27BF0, &qword_21776B8F8);
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_415(v38);
    *v39 = v40;
    OUTLINED_FUNCTION_235_2(v39);
    goto LABEL_12;
  }

  v4 = OUTLINED_FUNCTION_216_4();
  v5 = OUTLINED_FUNCTION_1177(v4);
  OUTLINED_FUNCTION_1190(v5, v6, &qword_27CB27BE8, &qword_21776B8F0);
  OUTLINED_FUNCTION_17_13();
  sub_217751DC8();
  OUTLINED_FUNCTION_17_13();
  v7 = sub_217751DC8();
  v8 = OUTLINED_FUNCTION_50_12(v7, xmmword_2177586D0);
  sub_21741562C(v8, v9);
  sub_2171F0790(v0 + 840, &qword_27CB27BE0, &qword_21776B8E8);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v10, v11, v12);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v13 = OUTLINED_FUNCTION_206_3();
  sub_217418680(v13, v14, v15);
  OUTLINED_FUNCTION_811();
  if (v3)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_20_6();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CE9BC();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v23 = OUTLINED_FUNCTION_349();
        v24(v23);
        sub_217284498(&unk_21776B890);
      }

      else
      {
        sub_2171F0790(v22, &qword_27CB2CD90, &unk_21775A2C0);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27BD8, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_350(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_96_9(v47);
  OUTLINED_FUNCTION_1322();

  return sub_217419698(v49, v50);
}

uint64_t sub_2173F98C0()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 1784, &qword_27CB27BF8, &qword_21776B908);
  OUTLINED_FUNCTION_587();

  return v1();
}

uint64_t sub_2173F9928()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2768);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2776) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F9A20()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 2784);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 2792) = v0;

  if (v0)
  {
    sub_2171F0790(v3 + 840, &qword_27CB27BE0, &qword_21776B8E8);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F9B30()
{
  OUTLINED_FUNCTION_30_0();
  sub_2171F0790(v0 + 1320, &qword_27CB27BF0, &qword_21776B8F8);
  OUTLINED_FUNCTION_928();
  v1 = OUTLINED_FUNCTION_383();
  sub_21741562C(v1, v2);
  sub_2171F0790(v0 + 840, &qword_27CB27BE0, &qword_21776B8E8);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v6 = OUTLINED_FUNCTION_206_3();
  sub_217418680(v6, v7, v8);
  OUTLINED_FUNCTION_811();
  if (v9)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CE9BC();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_217284498(&unk_21776B890);
      }

      else
      {
        sub_2171F0790(v16, &qword_27CB2CD90, &unk_21775A2C0);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27BD8, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_350(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_96_9(v20);

  return sub_217419698(v22, v23);
}

uint64_t sub_2173F9CF8()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);
  sub_2171F0790(v0 + 1320, &qword_27CB27BF0, &qword_21776B8F8);

  sub_2171F0790(v0 + 840, &qword_27CB27BE0, &qword_21776B8E8);
  OUTLINED_FUNCTION_558();

  return v2();
}

uint64_t sub_2173F9D84()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2800);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2808) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173F9E7C()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB27BE0, &qword_21776B8E8);
  sub_2171F0790(v0 + 1680, &qword_27CB27BC8, &qword_21776B8B8);
  sub_2171F0790(v0 + 456, &qword_27CB27BD8, &qword_21776B8D8);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173F9F1C()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB27BE0, &qword_21776B8E8);
  sub_2171F0790(v0 + 1680, &qword_27CB27BC8, &qword_21776B8B8);
  sub_2171F0790(v0 + 456, &qword_27CB27BD8, &qword_21776B8D8);
  OUTLINED_FUNCTION_513();

  return v2();
}

uint64_t sub_2173F9FBC()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_927();
  OUTLINED_FUNCTION_1067();
  v2 = OUTLINED_FUNCTION_779();
  sub_2171F0688(v2, v3, v4, v5);
  OUTLINED_FUNCTION_1320();

  v6 = OUTLINED_FUNCTION_374();
  sub_217418680(v6, v0, v7);
  OUTLINED_FUNCTION_1019();
  if (v8)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_20_6();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CE9BC();
      if (*(v1 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v16 = OUTLINED_FUNCTION_349();
        v17(v16);
        sub_217284498(&unk_21776B890);
      }

      else
      {
        sub_2171F0790(v15, &qword_27CB2CD90, &unk_21775A2C0);
      }

      __swift_destroy_boxed_opaque_existential_1((v1 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(v0, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_350(v18);
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_96_9(v19);

  return sub_217419698(v21, v22);
}

uint64_t sub_2173FA14C(uint64_t a1)
{
  *(v2 + 2736) = v1;
  *(v2 + 2728) = a1;
  return MEMORY[0x2822009F8](sub_2173FA170, 0, 0);
}

uint64_t sub_2173FA170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_674();
  v12 = *(v11 + 1840);
  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_213_4();
    OUTLINED_FUNCTION_28_6();
    swift_allocObject();
    v13 = SharedRelatedItemStore.init()();
    OUTLINED_FUNCTION_496(v13);
    if (*(v11 + 1424))
    {
      OUTLINED_FUNCTION_929();
      OUTLINED_FUNCTION_217_4();
      if (v15 && (v14 & 0xF000000000000007) == 0)
      {
        v16 = OUTLINED_FUNCTION_216_4();
        v17 = OUTLINED_FUNCTION_1178(v16);
        OUTLINED_FUNCTION_1190(v17, v18, &qword_27CB28168, &qword_21776C1D0);
        OUTLINED_FUNCTION_392();
        sub_217751DC8();
        OUTLINED_FUNCTION_798();
        OUTLINED_FUNCTION_392();
        v19 = sub_217751DC8();
        v20 = OUTLINED_FUNCTION_49_15(v19, xmmword_2177586D0);
        sub_217415C18(v20, v21);
        sub_2171F0790(v10, &qword_27CB28160, &qword_21776C1C8);
        OUTLINED_FUNCTION_709();
        sub_2171F0790(v22, v23, v24);
        OUTLINED_FUNCTION_263();
        OUTLINED_FUNCTION_1183();

        v25 = OUTLINED_FUNCTION_206_3();
        sub_217418764(v25, v26, v27);
        OUTLINED_FUNCTION_811();
        if (v15)
        {
          OUTLINED_FUNCTION_802();
          OUTLINED_FUNCTION_93_3();
          sub_2171F0688(v28, v29, v30, v31);
          v32 = OUTLINED_FUNCTION_20_6();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          if (OUTLINED_FUNCTION_337())
          {
            OUTLINED_FUNCTION_68_11();
            sub_2172CEC4C();
            if (*(v11 + 2520))
            {
              OUTLINED_FUNCTION_1_53();
              v35 = OUTLINED_FUNCTION_349();
              v36(v35);
              sub_2172842E4(&unk_21776C170);
            }

            else
            {
              sub_2171F0790(v34, &qword_27CB246E8, &qword_21776C140);
            }

            __swift_destroy_boxed_opaque_existential_1((v11 + 2608));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2171F0790(&qword_27CB28158, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        v70 = swift_task_alloc();
        v71 = OUTLINED_FUNCTION_350(v70);
        *v71 = v72;
        OUTLINED_FUNCTION_96_9(v71);
        OUTLINED_FUNCTION_1029();

        return sub_2174197A8(v73, v74);
      }

      OUTLINED_FUNCTION_15_29();
      *(v11 + 1880) = v53;
      *(v11 + 1888) = *(v11 + 1328);
      *(v11 + 1904) = v54;
      *(v11 + 1912) = v55;
      *(v11 + 1920) = v56;
      *(v11 + 1928) = v57;
      *(v11 + 1936) = v58;
      OUTLINED_FUNCTION_215_4();
      v61 = OUTLINED_FUNCTION_1259(v59, v60, &qword_27CB28160, &qword_21776C1C8);
      OUTLINED_FUNCTION_1191(v61, v62, &qword_27CB28170, &qword_21776C1D8);
      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_415(v63);
      *v64 = v65;
      OUTLINED_FUNCTION_235_2(v64);
    }

    else
    {
      OUTLINED_FUNCTION_568();
      v50 = swift_task_alloc();
      v51 = OUTLINED_FUNCTION_430(v50);
      *v51 = v52;
      OUTLINED_FUNCTION_234_2(v51);
    }

    OUTLINED_FUNCTION_961();
    OUTLINED_FUNCTION_1029();

    return sub_2174102D8(v66, v67, v68);
  }

  v37 = OUTLINED_FUNCTION_16_30(v12);
  sub_2172CA838(v37, v11 + 2688);
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_648();
  OUTLINED_FUNCTION_391(&dword_21776C1E0);
  sub_217751DE8();
  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_588(v38);
  *v39 = v40;
  OUTLINED_FUNCTION_123_9(v39);
  OUTLINED_FUNCTION_1410();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_2173FA548()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2744);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FA640()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2171F0790(v0 + 1784, &qword_27CB28178, &qword_21776C1E8);
  OUTLINED_FUNCTION_926();
  type metadata accessor for SharedRelatedItemStore();
  OUTLINED_FUNCTION_28_6();
  swift_allocObject();
  v1 = SharedRelatedItemStore.init()();
  OUTLINED_FUNCTION_495(v1);
  if (!*(v0 + 1424))
  {
    OUTLINED_FUNCTION_568();
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_430(v25);
    *v26 = v27;
    OUTLINED_FUNCTION_234_2(v26);
LABEL_12:
    OUTLINED_FUNCTION_838();
    OUTLINED_FUNCTION_1322();

    return sub_2174102D8(v41, v42, v43);
  }

  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_217_4();
  if (!v3 || (v2 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_15_29();
    *(v0 + 1880) = v28;
    *(v0 + 1888) = *(v0 + 1328);
    *(v0 + 1904) = v29;
    *(v0 + 1912) = v30;
    *(v0 + 1920) = v31;
    *(v0 + 1928) = v32;
    *(v0 + 1936) = v33;
    OUTLINED_FUNCTION_215_4();
    v36 = OUTLINED_FUNCTION_1258(v34, v35, &qword_27CB28160, &qword_21776C1C8);
    OUTLINED_FUNCTION_1191(v36, v37, &qword_27CB28170, &qword_21776C1D8);
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_415(v38);
    *v39 = v40;
    OUTLINED_FUNCTION_235_2(v39);
    goto LABEL_12;
  }

  v4 = OUTLINED_FUNCTION_216_4();
  v5 = OUTLINED_FUNCTION_1177(v4);
  OUTLINED_FUNCTION_1190(v5, v6, &qword_27CB28168, &qword_21776C1D0);
  OUTLINED_FUNCTION_17_13();
  sub_217751DC8();
  OUTLINED_FUNCTION_17_13();
  v7 = sub_217751DC8();
  v8 = OUTLINED_FUNCTION_50_12(v7, xmmword_2177586D0);
  sub_217415C18(v8, v9);
  sub_2171F0790(v0 + 840, &qword_27CB28160, &qword_21776C1C8);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v10, v11, v12);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v13 = OUTLINED_FUNCTION_206_3();
  sub_217418764(v13, v14, v15);
  OUTLINED_FUNCTION_811();
  if (v3)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_20_6();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CEC4C();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v23 = OUTLINED_FUNCTION_349();
        v24(v23);
        sub_2172842E4(&unk_21776C170);
      }

      else
      {
        sub_2171F0790(v22, &qword_27CB246E8, &qword_21776C140);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB28158, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_350(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_96_9(v47);
  OUTLINED_FUNCTION_1322();

  return sub_2174197A8(v49, v50);
}

uint64_t sub_2173FA998()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 1784, &qword_27CB28178, &qword_21776C1E8);
  OUTLINED_FUNCTION_587();

  return v1();
}

uint64_t sub_2173FAA00()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2768);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2776) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FAAF8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 2784);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 2792) = v0;

  if (v0)
  {
    sub_2171F0790(v3 + 840, &qword_27CB28160, &qword_21776C1C8);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FAC08()
{
  OUTLINED_FUNCTION_30_0();
  sub_2171F0790(v0 + 1320, &qword_27CB28170, &qword_21776C1D8);
  OUTLINED_FUNCTION_928();
  v1 = OUTLINED_FUNCTION_383();
  sub_217415C18(v1, v2);
  sub_2171F0790(v0 + 840, &qword_27CB28160, &qword_21776C1C8);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v6 = OUTLINED_FUNCTION_206_3();
  sub_217418764(v6, v7, v8);
  OUTLINED_FUNCTION_811();
  if (v9)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CEC4C();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_2172842E4(&unk_21776C170);
      }

      else
      {
        sub_2171F0790(v16, &qword_27CB246E8, &qword_21776C140);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB28158, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_350(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_96_9(v20);

  return sub_2174197A8(v22, v23);
}

uint64_t sub_2173FADD0()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);
  sub_2171F0790(v0 + 1320, &qword_27CB28170, &qword_21776C1D8);

  sub_2171F0790(v0 + 840, &qword_27CB28160, &qword_21776C1C8);
  OUTLINED_FUNCTION_558();

  return v2();
}

uint64_t sub_2173FAE5C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2800);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2808) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FAF54()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB28160, &qword_21776C1C8);
  sub_2171F0790(v0 + 1680, &qword_27CB28148, &qword_21776C198);
  sub_2171F0790(v0 + 456, &qword_27CB28158, &qword_21776C1B8);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173FAFF4()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB28160, &qword_21776C1C8);
  sub_2171F0790(v0 + 1680, &qword_27CB28148, &qword_21776C198);
  sub_2171F0790(v0 + 456, &qword_27CB28158, &qword_21776C1B8);
  OUTLINED_FUNCTION_513();

  return v2();
}

uint64_t sub_2173FB094()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_927();
  OUTLINED_FUNCTION_1067();
  v2 = OUTLINED_FUNCTION_779();
  sub_2171F0688(v2, v3, v4, v5);
  OUTLINED_FUNCTION_1320();

  v6 = OUTLINED_FUNCTION_374();
  sub_217418764(v6, v0, v7);
  OUTLINED_FUNCTION_1019();
  if (v8)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_20_6();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CEC4C();
      if (*(v1 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v16 = OUTLINED_FUNCTION_349();
        v17(v16);
        sub_2172842E4(&unk_21776C170);
      }

      else
      {
        sub_2171F0790(v15, &qword_27CB246E8, &qword_21776C140);
      }

      __swift_destroy_boxed_opaque_existential_1((v1 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(v0, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_350(v18);
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_96_9(v19);

  return sub_2174197A8(v21, v22);
}

uint64_t sub_2173FB224(uint64_t a1)
{
  *(v2 + 2736) = v1;
  *(v2 + 2728) = a1;
  return MEMORY[0x2822009F8](sub_2173FB248, 0, 0);
}

uint64_t sub_2173FB248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_674();
  v12 = *(v11 + 1840);
  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_213_4();
    OUTLINED_FUNCTION_28_6();
    swift_allocObject();
    v13 = SharedRelatedItemStore.init()();
    OUTLINED_FUNCTION_496(v13);
    if (*(v11 + 1424))
    {
      OUTLINED_FUNCTION_929();
      OUTLINED_FUNCTION_217_4();
      if (v15 && (v14 & 0xF000000000000007) == 0)
      {
        v16 = OUTLINED_FUNCTION_216_4();
        v17 = OUTLINED_FUNCTION_1178(v16);
        OUTLINED_FUNCTION_1190(v17, v18, &qword_27CB280A8, &qword_21776C0A0);
        OUTLINED_FUNCTION_392();
        sub_217751DC8();
        OUTLINED_FUNCTION_798();
        OUTLINED_FUNCTION_392();
        v19 = sub_217751DC8();
        v20 = OUTLINED_FUNCTION_49_15(v19, xmmword_2177586D0);
        sub_217416204(v20, v21);
        sub_2171F0790(v10, &qword_27CB280A0, &qword_21776C098);
        OUTLINED_FUNCTION_709();
        sub_2171F0790(v22, v23, v24);
        OUTLINED_FUNCTION_263();
        OUTLINED_FUNCTION_1183();

        v25 = OUTLINED_FUNCTION_206_3();
        sub_217418848(v25, v26, v27);
        OUTLINED_FUNCTION_811();
        if (v15)
        {
          OUTLINED_FUNCTION_802();
          OUTLINED_FUNCTION_93_3();
          sub_2171F0688(v28, v29, v30, v31);
          v32 = OUTLINED_FUNCTION_20_6();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          if (OUTLINED_FUNCTION_337())
          {
            OUTLINED_FUNCTION_68_11();
            sub_2172CE39C();
            if (*(v11 + 2520))
            {
              OUTLINED_FUNCTION_1_53();
              v35 = OUTLINED_FUNCTION_349();
              v36(v35);
              sub_217283DC8(&unk_21776C040);
            }

            else
            {
              sub_2171F0790(v34, &unk_27CB2AF80, &qword_217758C30);
            }

            __swift_destroy_boxed_opaque_existential_1((v11 + 2608));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2171F0790(&qword_27CB28098, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        v70 = swift_task_alloc();
        v71 = OUTLINED_FUNCTION_350(v70);
        *v71 = v72;
        OUTLINED_FUNCTION_96_9(v71);
        OUTLINED_FUNCTION_1029();

        return sub_2174198B8(v73, v74);
      }

      OUTLINED_FUNCTION_15_29();
      *(v11 + 1880) = v53;
      *(v11 + 1888) = *(v11 + 1328);
      *(v11 + 1904) = v54;
      *(v11 + 1912) = v55;
      *(v11 + 1920) = v56;
      *(v11 + 1928) = v57;
      *(v11 + 1936) = v58;
      OUTLINED_FUNCTION_215_4();
      v61 = OUTLINED_FUNCTION_1259(v59, v60, &qword_27CB280A0, &qword_21776C098);
      OUTLINED_FUNCTION_1191(v61, v62, &qword_27CB280B0, &qword_21776C0A8);
      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_415(v63);
      *v64 = v65;
      OUTLINED_FUNCTION_235_2(v64);
    }

    else
    {
      OUTLINED_FUNCTION_568();
      v50 = swift_task_alloc();
      v51 = OUTLINED_FUNCTION_430(v50);
      *v51 = v52;
      OUTLINED_FUNCTION_234_2(v51);
    }

    OUTLINED_FUNCTION_961();
    OUTLINED_FUNCTION_1029();

    return sub_21741099C(v66, v67, v68);
  }

  v37 = OUTLINED_FUNCTION_16_30(v12);
  sub_2172CA838(v37, v11 + 2688);
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_648();
  OUTLINED_FUNCTION_391(&dword_21776C0B0);
  sub_217751DE8();
  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_588(v38);
  *v39 = v40;
  OUTLINED_FUNCTION_123_9(v39);
  OUTLINED_FUNCTION_1410();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_2173FB620()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2744);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FB718()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2171F0790(v0 + 1784, &qword_27CB280B8, &qword_21776C0B8);
  OUTLINED_FUNCTION_926();
  type metadata accessor for SharedRelatedItemStore();
  OUTLINED_FUNCTION_28_6();
  swift_allocObject();
  v1 = SharedRelatedItemStore.init()();
  OUTLINED_FUNCTION_495(v1);
  if (!*(v0 + 1424))
  {
    OUTLINED_FUNCTION_568();
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_430(v25);
    *v26 = v27;
    OUTLINED_FUNCTION_234_2(v26);
LABEL_12:
    OUTLINED_FUNCTION_838();
    OUTLINED_FUNCTION_1322();

    return sub_21741099C(v41, v42, v43);
  }

  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_217_4();
  if (!v3 || (v2 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_15_29();
    *(v0 + 1880) = v28;
    *(v0 + 1888) = *(v0 + 1328);
    *(v0 + 1904) = v29;
    *(v0 + 1912) = v30;
    *(v0 + 1920) = v31;
    *(v0 + 1928) = v32;
    *(v0 + 1936) = v33;
    OUTLINED_FUNCTION_215_4();
    v36 = OUTLINED_FUNCTION_1258(v34, v35, &qword_27CB280A0, &qword_21776C098);
    OUTLINED_FUNCTION_1191(v36, v37, &qword_27CB280B0, &qword_21776C0A8);
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_415(v38);
    *v39 = v40;
    OUTLINED_FUNCTION_235_2(v39);
    goto LABEL_12;
  }

  v4 = OUTLINED_FUNCTION_216_4();
  v5 = OUTLINED_FUNCTION_1177(v4);
  OUTLINED_FUNCTION_1190(v5, v6, &qword_27CB280A8, &qword_21776C0A0);
  OUTLINED_FUNCTION_17_13();
  sub_217751DC8();
  OUTLINED_FUNCTION_17_13();
  v7 = sub_217751DC8();
  v8 = OUTLINED_FUNCTION_50_12(v7, xmmword_2177586D0);
  sub_217416204(v8, v9);
  sub_2171F0790(v0 + 840, &qword_27CB280A0, &qword_21776C098);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v10, v11, v12);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v13 = OUTLINED_FUNCTION_206_3();
  sub_217418848(v13, v14, v15);
  OUTLINED_FUNCTION_811();
  if (v3)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_20_6();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CE39C();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v23 = OUTLINED_FUNCTION_349();
        v24(v23);
        sub_217283DC8(&unk_21776C040);
      }

      else
      {
        sub_2171F0790(v22, &unk_27CB2AF80, &qword_217758C30);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB28098, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_350(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_96_9(v47);
  OUTLINED_FUNCTION_1322();

  return sub_2174198B8(v49, v50);
}

uint64_t sub_2173FBA70()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 1784, &qword_27CB280B8, &qword_21776C0B8);
  OUTLINED_FUNCTION_587();

  return v1();
}

uint64_t sub_2173FBAD8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2768);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2776) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FBBD0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 2784);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 2792) = v0;

  if (v0)
  {
    sub_2171F0790(v3 + 840, &qword_27CB280A0, &qword_21776C098);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FBCE0()
{
  OUTLINED_FUNCTION_30_0();
  sub_2171F0790(v0 + 1320, &qword_27CB280B0, &qword_21776C0A8);
  OUTLINED_FUNCTION_928();
  v1 = OUTLINED_FUNCTION_383();
  sub_217416204(v1, v2);
  sub_2171F0790(v0 + 840, &qword_27CB280A0, &qword_21776C098);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v6 = OUTLINED_FUNCTION_206_3();
  sub_217418848(v6, v7, v8);
  OUTLINED_FUNCTION_811();
  if (v9)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CE39C();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_217283DC8(&unk_21776C040);
      }

      else
      {
        sub_2171F0790(v16, &unk_27CB2AF80, &qword_217758C30);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB28098, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_350(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_96_9(v20);

  return sub_2174198B8(v22, v23);
}

uint64_t sub_2173FBEA8()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);
  sub_2171F0790(v0 + 1320, &qword_27CB280B0, &qword_21776C0A8);

  sub_2171F0790(v0 + 840, &qword_27CB280A0, &qword_21776C098);
  OUTLINED_FUNCTION_558();

  return v2();
}

uint64_t sub_2173FBF34()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2800);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2808) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FC02C()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB280A0, &qword_21776C098);
  sub_2171F0790(v0 + 1680, &qword_27CB28088, &unk_21776C068);
  sub_2171F0790(v0 + 456, &qword_27CB28098, &qword_21776C088);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173FC0CC()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB280A0, &qword_21776C098);
  sub_2171F0790(v0 + 1680, &qword_27CB28088, &unk_21776C068);
  sub_2171F0790(v0 + 456, &qword_27CB28098, &qword_21776C088);
  OUTLINED_FUNCTION_513();

  return v2();
}

uint64_t sub_2173FC16C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_927();
  OUTLINED_FUNCTION_1067();
  v2 = OUTLINED_FUNCTION_779();
  sub_2171F0688(v2, v3, v4, v5);
  OUTLINED_FUNCTION_1320();

  v6 = OUTLINED_FUNCTION_374();
  sub_217418848(v6, v0, v7);
  OUTLINED_FUNCTION_1019();
  if (v8)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_20_6();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CE39C();
      if (*(v1 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v16 = OUTLINED_FUNCTION_349();
        v17(v16);
        sub_217283DC8(&unk_21776C040);
      }

      else
      {
        sub_2171F0790(v15, &unk_27CB2AF80, &qword_217758C30);
      }

      __swift_destroy_boxed_opaque_existential_1((v1 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(v0, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_350(v18);
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_96_9(v19);

  return sub_2174198B8(v21, v22);
}

uint64_t sub_2173FC2FC(uint64_t a1)
{
  *(v2 + 2752) = v1;
  *(v2 + 2744) = a1;
  return MEMORY[0x2822009F8](sub_2173FC320, 0, 0);
}

uint64_t sub_2173FC320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  v11 = *(v10 + 2752);
  OUTLINED_FUNCTION_933();
  v12 = *(v10 + 1840);
  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_213_4();
    OUTLINED_FUNCTION_28_6();
    swift_allocObject();
    *(v10 + 2776) = SharedRelatedItemStore.init()();
    OUTLINED_FUNCTION_931();
    if (*(v10 + 1424))
    {
      OUTLINED_FUNCTION_929();
      OUTLINED_FUNCTION_217_4();
      if (v14 && (v13 & 0xF000000000000007) == 0)
      {
        v15 = OUTLINED_FUNCTION_216_4();
        v16 = OUTLINED_FUNCTION_1178(v15);
        OUTLINED_FUNCTION_1190(v16, v17, &qword_27CB27D70, &qword_21776BB88);
        OUTLINED_FUNCTION_392();
        sub_217751DC8();
        OUTLINED_FUNCTION_798();
        OUTLINED_FUNCTION_392();
        v18 = sub_217751DC8();
        v19 = OUTLINED_FUNCTION_49_15(v18, xmmword_2177586D0);
        sub_2174167F0(v19, v20);
        sub_2171F0790(v11, &qword_27CB27D68, &qword_21776BB80);
        OUTLINED_FUNCTION_709();
        sub_2171F0790(v21, v22, v23);
        OUTLINED_FUNCTION_442();
        OUTLINED_FUNCTION_1347();

        v24 = OUTLINED_FUNCTION_420();
        sub_21741892C(v24, v25, v26);
        OUTLINED_FUNCTION_811();
        if (v14)
        {
          OUTLINED_FUNCTION_1037();
          OUTLINED_FUNCTION_93_3();
          sub_2171F0688(v27, v28, v29, v30);
          v31 = OUTLINED_FUNCTION_20_6();
          __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          v33 = OUTLINED_FUNCTION_337();
          if (v33)
          {
            OUTLINED_FUNCTION_203_4(v33, v10 + 2624);
            sub_2172CEC88();
            OUTLINED_FUNCTION_1036();
            if (v14)
            {
              sub_2171F0790(v10 + 2520, &qword_27CB27D20, &qword_217758B80);
            }

            else
            {
              OUTLINED_FUNCTION_36_16();
              v34 = OUTLINED_FUNCTION_349();
              v35(v34);
              sub_21729C7F8(&unk_21776BB28);
            }

            __swift_destroy_boxed_opaque_existential_1((v10 + 2624));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2171F0790(&qword_27CB27D60, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        v68 = swift_task_alloc();
        v69 = OUTLINED_FUNCTION_562(v68);
        *v69 = v70;
        OUTLINED_FUNCTION_225_4(v69);
        OUTLINED_FUNCTION_1029();

        return sub_2174199C8(v71, v72);
      }

      OUTLINED_FUNCTION_15_29();
      *(v10 + 1880) = v51;
      *(v10 + 1888) = *(v10 + 1328);
      *(v10 + 1904) = v52;
      *(v10 + 1912) = v53;
      *(v10 + 1920) = v54;
      *(v10 + 1928) = v55;
      *(v10 + 1936) = v56;
      OUTLINED_FUNCTION_215_4();
      v59 = OUTLINED_FUNCTION_1259(v57, v58, &qword_27CB27D68, &qword_21776BB80);
      OUTLINED_FUNCTION_1191(v59, v60, &byte_27CB27D78, &qword_21776BB90);
      v61 = swift_task_alloc();
      v62 = OUTLINED_FUNCTION_350(v61);
      *v62 = v63;
      OUTLINED_FUNCTION_602(v62);
    }

    else
    {
      OUTLINED_FUNCTION_810(*(v10 + 2752));
      v48 = swift_task_alloc();
      v49 = OUTLINED_FUNCTION_415(v48);
      *v49 = v50;
      OUTLINED_FUNCTION_601(v49);
    }

    OUTLINED_FUNCTION_961();
    OUTLINED_FUNCTION_1029();

    return sub_217411060(v64, v65, v66);
  }

  v36 = OUTLINED_FUNCTION_16_30(v12);
  sub_2172CA838(v36, v10 + 2704);
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_648();
  OUTLINED_FUNCTION_391(&dword_21776BB98);
  sub_217751DE8();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v10 + 2760) = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_517(v37);
  OUTLINED_FUNCTION_515();
  OUTLINED_FUNCTION_1410();

  return v43(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t sub_2173FC71C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2760);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2768) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FC814()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2171F0790(v0 + 1784, &qword_27CB27D80, &qword_21776BBA0);
  OUTLINED_FUNCTION_926();
  type metadata accessor for SharedRelatedItemStore();
  OUTLINED_FUNCTION_28_6();
  swift_allocObject();
  *(v0 + 2776) = SharedRelatedItemStore.init()();
  OUTLINED_FUNCTION_932();
  if (!*(v0 + 1424))
  {
    OUTLINED_FUNCTION_810(*(v0 + 2752));
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_415(v24);
    *v25 = v26;
    OUTLINED_FUNCTION_601(v25);
LABEL_12:
    OUTLINED_FUNCTION_838();
    OUTLINED_FUNCTION_1322();

    return sub_217411060(v40, v41, v42);
  }

  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_217_4();
  if (!v2 || (v1 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_15_29();
    *(v0 + 1880) = v27;
    *(v0 + 1888) = *(v0 + 1328);
    *(v0 + 1904) = v28;
    *(v0 + 1912) = v29;
    *(v0 + 1920) = v30;
    *(v0 + 1928) = v31;
    *(v0 + 1936) = v32;
    OUTLINED_FUNCTION_215_4();
    v35 = OUTLINED_FUNCTION_1258(v33, v34, &qword_27CB27D68, &qword_21776BB80);
    OUTLINED_FUNCTION_1191(v35, v36, &byte_27CB27D78, &qword_21776BB90);
    v37 = swift_task_alloc();
    v38 = OUTLINED_FUNCTION_350(v37);
    *v38 = v39;
    OUTLINED_FUNCTION_602(v38);
    goto LABEL_12;
  }

  v3 = OUTLINED_FUNCTION_216_4();
  v4 = OUTLINED_FUNCTION_1177(v3);
  OUTLINED_FUNCTION_1190(v4, v5, &qword_27CB27D70, &qword_21776BB88);
  OUTLINED_FUNCTION_17_13();
  sub_217751DC8();
  OUTLINED_FUNCTION_17_13();
  v6 = sub_217751DC8();
  v7 = OUTLINED_FUNCTION_50_12(v6, xmmword_2177586D0);
  sub_2174167F0(v7, v8);
  sub_2171F0790(v0 + 840, &qword_27CB27D68, &qword_21776BB80);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v9, v10, v11);
  OUTLINED_FUNCTION_442();
  OUTLINED_FUNCTION_1347();

  v12 = OUTLINED_FUNCTION_420();
  sub_21741892C(v12, v13, v14);
  OUTLINED_FUNCTION_811();
  if (v2)
  {
    OUTLINED_FUNCTION_1037();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v15, v16, v17, v18);
    v19 = OUTLINED_FUNCTION_20_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    v21 = OUTLINED_FUNCTION_337();
    if (v21)
    {
      OUTLINED_FUNCTION_203_4(v21, v0 + 2624);
      sub_2172CEC88();
      OUTLINED_FUNCTION_1036();
      if (v2)
      {
        sub_2171F0790(v0 + 2520, &qword_27CB27D20, &qword_217758B80);
      }

      else
      {
        OUTLINED_FUNCTION_36_16();
        v22 = OUTLINED_FUNCTION_349();
        v23(v22);
        sub_21729C7F8(&unk_21776BB28);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2624));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27D60, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v45 = swift_task_alloc();
  v46 = OUTLINED_FUNCTION_562(v45);
  *v46 = v47;
  OUTLINED_FUNCTION_225_4(v46);
  OUTLINED_FUNCTION_1322();

  return sub_2174199C8(v48, v49);
}

uint64_t sub_2173FCB80()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 1784, &qword_27CB27D80, &qword_21776BBA0);
  v1 = *(v0 + 2768);
  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2173FCBEC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2784);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2792) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FCCE4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 2800);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 2808) = v0;

  if (v0)
  {
    sub_2171F0790(v3 + 840, &qword_27CB27D68, &qword_21776BB80);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FCDF4()
{
  OUTLINED_FUNCTION_30_0();
  sub_2171F0790(v0 + 1320, &byte_27CB27D78, &qword_21776BB90);
  OUTLINED_FUNCTION_928();
  v1 = OUTLINED_FUNCTION_383();
  sub_2174167F0(v1, v2);
  sub_2171F0790(v0 + 840, &qword_27CB27D68, &qword_21776BB80);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_442();
  OUTLINED_FUNCTION_1347();

  v6 = OUTLINED_FUNCTION_420();
  sub_21741892C(v6, v7, v8);
  OUTLINED_FUNCTION_811();
  if (v9)
  {
    OUTLINED_FUNCTION_1037();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    v16 = OUTLINED_FUNCTION_337();
    if (v16)
    {
      OUTLINED_FUNCTION_203_4(v16, v0 + 2624);
      sub_2172CEC88();
      OUTLINED_FUNCTION_1036();
      if (v9)
      {
        sub_2171F0790(v0 + 2520, &qword_27CB27D20, &qword_217758B80);
      }

      else
      {
        OUTLINED_FUNCTION_36_16();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_21729C7F8(&unk_21776BB28);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2624));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27D60, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_562(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_225_4(v20);

  return sub_2174199C8(v22, v23);
}

uint64_t sub_2173FCFC4()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2776);
  sub_2171F0790(v0 + 1320, &byte_27CB27D78, &qword_21776BB90);

  sub_2171F0790(v0 + 840, &qword_27CB27D68, &qword_21776BB80);
  OUTLINED_FUNCTION_513();

  return v2();
}

uint64_t sub_2173FD050()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2816);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2824) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FD148()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2776);

  sub_2171F0790(v0 + 840, &qword_27CB27D68, &qword_21776BB80);
  sub_2171F0790(v0 + 1680, &unk_27CB27D50, &unk_21776BB50);
  sub_2171F0790(v0 + 456, &qword_27CB27D60, &qword_21776BB70);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173FD1E8()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2776);

  sub_2171F0790(v0 + 840, &qword_27CB27D68, &qword_21776BB80);
  sub_2171F0790(v0 + 1680, &unk_27CB27D50, &unk_21776BB50);
  sub_2171F0790(v0 + 456, &qword_27CB27D60, &qword_21776BB70);
  v2 = *(v0 + 2824);
  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2173FD28C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_927();
  v1 = v0[347];
  v2 = v0[344];
  v3 = OUTLINED_FUNCTION_779();
  sub_2171F0688(v3, v4, v5, v6);
  sub_2172CA838(v2 + 128, (v0 + 333));

  v7 = OUTLINED_FUNCTION_559();
  sub_21741892C(v7, v1, v8);
  OUTLINED_FUNCTION_1019();
  if (v9)
  {
    OUTLINED_FUNCTION_1037();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    v16 = OUTLINED_FUNCTION_337();
    if (v16)
    {
      OUTLINED_FUNCTION_203_4(v16, (v0 + 328));
      sub_2172CEC88();
      OUTLINED_FUNCTION_1036();
      if (v9)
      {
        sub_2171F0790((v0 + 315), &qword_27CB27D20, &qword_217758B80);
      }

      else
      {
        OUTLINED_FUNCTION_36_16();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_21729C7F8(&unk_21776BB28);
      }

      __swift_destroy_boxed_opaque_existential_1(v0 + 328);
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(v1, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_562(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_225_4(v20);

  return sub_2174199C8(v22, v23);
}

uint64_t sub_2173FD430(uint64_t a1)
{
  *(v2 + 2736) = v1;
  *(v2 + 2728) = a1;
  return MEMORY[0x2822009F8](sub_2173FD454, 0, 0);
}

uint64_t sub_2173FD454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_674();
  v12 = *(v11 + 1840);
  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_213_4();
    OUTLINED_FUNCTION_28_6();
    swift_allocObject();
    v13 = SharedRelatedItemStore.init()();
    OUTLINED_FUNCTION_496(v13);
    if (*(v11 + 1424))
    {
      OUTLINED_FUNCTION_929();
      OUTLINED_FUNCTION_217_4();
      if (v15 && (v14 & 0xF000000000000007) == 0)
      {
        v16 = OUTLINED_FUNCTION_216_4();
        v17 = OUTLINED_FUNCTION_1178(v16);
        OUTLINED_FUNCTION_1190(v17, v18, &qword_27CB279F8, &qword_21776B5E8);
        OUTLINED_FUNCTION_392();
        sub_217751DC8();
        OUTLINED_FUNCTION_798();
        OUTLINED_FUNCTION_392();
        v19 = sub_217751DC8();
        v20 = OUTLINED_FUNCTION_49_15(v19, xmmword_2177586D0);
        sub_217416E80(v20, v21);
        sub_2171F0790(v10, &qword_27CB279F0, &qword_21776B5E0);
        OUTLINED_FUNCTION_709();
        sub_2171F0790(v22, v23, v24);
        OUTLINED_FUNCTION_263();
        OUTLINED_FUNCTION_1183();

        v25 = OUTLINED_FUNCTION_206_3();
        sub_217418A10(v25, v26, v27);
        OUTLINED_FUNCTION_811();
        if (v15)
        {
          OUTLINED_FUNCTION_802();
          OUTLINED_FUNCTION_93_3();
          sub_2171F0688(v28, v29, v30, v31);
          v32 = OUTLINED_FUNCTION_20_6();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          if (OUTLINED_FUNCTION_337())
          {
            OUTLINED_FUNCTION_68_11();
            sub_2172CECC4();
            if (*(v11 + 2520))
            {
              OUTLINED_FUNCTION_1_53();
              v35 = OUTLINED_FUNCTION_349();
              v36(v35);
              sub_2172758B4(&unk_21776B598);
            }

            else
            {
              sub_2171F0790(v34, &unk_27CB2ACC0, &qword_217758AA8);
            }

            __swift_destroy_boxed_opaque_existential_1((v11 + 2608));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2171F0790(&qword_27CB279E8, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        v70 = swift_task_alloc();
        v71 = OUTLINED_FUNCTION_350(v70);
        *v71 = v72;
        OUTLINED_FUNCTION_96_9(v71);
        OUTLINED_FUNCTION_1029();

        return sub_217419AD0(v73, v74);
      }

      OUTLINED_FUNCTION_15_29();
      *(v11 + 1880) = v53;
      *(v11 + 1888) = *(v11 + 1328);
      *(v11 + 1904) = v54;
      *(v11 + 1912) = v55;
      *(v11 + 1920) = v56;
      *(v11 + 1928) = v57;
      *(v11 + 1936) = v58;
      OUTLINED_FUNCTION_215_4();
      v61 = OUTLINED_FUNCTION_1259(v59, v60, &qword_27CB279F0, &qword_21776B5E0);
      OUTLINED_FUNCTION_1191(v61, v62, &qword_27CB27A00, &qword_21776B5F0);
      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_415(v63);
      *v64 = v65;
      OUTLINED_FUNCTION_235_2(v64);
    }

    else
    {
      OUTLINED_FUNCTION_568();
      v50 = swift_task_alloc();
      v51 = OUTLINED_FUNCTION_430(v50);
      *v51 = v52;
      OUTLINED_FUNCTION_234_2(v51);
    }

    OUTLINED_FUNCTION_961();
    OUTLINED_FUNCTION_1029();

    return sub_217411724(v66, v67, v68);
  }

  v37 = OUTLINED_FUNCTION_16_30(v12);
  sub_2172CA838(v37, v11 + 2688);
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_648();
  OUTLINED_FUNCTION_391(&dword_21776B5F8);
  sub_217751DE8();
  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_588(v38);
  *v39 = v40;
  OUTLINED_FUNCTION_123_9(v39);
  OUTLINED_FUNCTION_1410();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_2173FD82C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2744);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FD924()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2171F0790(v0 + 1784, &qword_27CB27A08, &qword_21776B600);
  OUTLINED_FUNCTION_926();
  type metadata accessor for SharedRelatedItemStore();
  OUTLINED_FUNCTION_28_6();
  swift_allocObject();
  v1 = SharedRelatedItemStore.init()();
  OUTLINED_FUNCTION_495(v1);
  if (!*(v0 + 1424))
  {
    OUTLINED_FUNCTION_568();
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_430(v25);
    *v26 = v27;
    OUTLINED_FUNCTION_234_2(v26);
LABEL_12:
    OUTLINED_FUNCTION_838();
    OUTLINED_FUNCTION_1322();

    return sub_217411724(v41, v42, v43);
  }

  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_217_4();
  if (!v3 || (v2 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_15_29();
    *(v0 + 1880) = v28;
    *(v0 + 1888) = *(v0 + 1328);
    *(v0 + 1904) = v29;
    *(v0 + 1912) = v30;
    *(v0 + 1920) = v31;
    *(v0 + 1928) = v32;
    *(v0 + 1936) = v33;
    OUTLINED_FUNCTION_215_4();
    v36 = OUTLINED_FUNCTION_1258(v34, v35, &qword_27CB279F0, &qword_21776B5E0);
    OUTLINED_FUNCTION_1191(v36, v37, &qword_27CB27A00, &qword_21776B5F0);
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_415(v38);
    *v39 = v40;
    OUTLINED_FUNCTION_235_2(v39);
    goto LABEL_12;
  }

  v4 = OUTLINED_FUNCTION_216_4();
  v5 = OUTLINED_FUNCTION_1177(v4);
  OUTLINED_FUNCTION_1190(v5, v6, &qword_27CB279F8, &qword_21776B5E8);
  OUTLINED_FUNCTION_17_13();
  sub_217751DC8();
  OUTLINED_FUNCTION_17_13();
  v7 = sub_217751DC8();
  v8 = OUTLINED_FUNCTION_50_12(v7, xmmword_2177586D0);
  sub_217416E80(v8, v9);
  sub_2171F0790(v0 + 840, &qword_27CB279F0, &qword_21776B5E0);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v10, v11, v12);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v13 = OUTLINED_FUNCTION_206_3();
  sub_217418A10(v13, v14, v15);
  OUTLINED_FUNCTION_811();
  if (v3)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_20_6();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CECC4();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v23 = OUTLINED_FUNCTION_349();
        v24(v23);
        sub_2172758B4(&unk_21776B598);
      }

      else
      {
        sub_2171F0790(v22, &unk_27CB2ACC0, &qword_217758AA8);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB279E8, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_350(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_96_9(v47);
  OUTLINED_FUNCTION_1322();

  return sub_217419AD0(v49, v50);
}

uint64_t sub_2173FDC7C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 1784, &qword_27CB27A08, &qword_21776B600);
  OUTLINED_FUNCTION_587();

  return v1();
}

uint64_t sub_2173FDCE4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2768);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2776) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FDDDC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 2784);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 2792) = v0;

  if (v0)
  {
    sub_2171F0790(v3 + 840, &qword_27CB279F0, &qword_21776B5E0);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FDEEC()
{
  OUTLINED_FUNCTION_30_0();
  sub_2171F0790(v0 + 1320, &qword_27CB27A00, &qword_21776B5F0);
  OUTLINED_FUNCTION_928();
  v1 = OUTLINED_FUNCTION_383();
  sub_217416E80(v1, v2);
  sub_2171F0790(v0 + 840, &qword_27CB279F0, &qword_21776B5E0);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v6 = OUTLINED_FUNCTION_206_3();
  sub_217418A10(v6, v7, v8);
  OUTLINED_FUNCTION_811();
  if (v9)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CECC4();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_2172758B4(&unk_21776B598);
      }

      else
      {
        sub_2171F0790(v16, &unk_27CB2ACC0, &qword_217758AA8);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB279E8, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_350(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_96_9(v20);

  return sub_217419AD0(v22, v23);
}

uint64_t sub_2173FE0B4()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);
  sub_2171F0790(v0 + 1320, &qword_27CB27A00, &qword_21776B5F0);

  sub_2171F0790(v0 + 840, &qword_27CB279F0, &qword_21776B5E0);
  OUTLINED_FUNCTION_558();

  return v2();
}

uint64_t sub_2173FE140()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2800);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2808) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FE238()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB279F0, &qword_21776B5E0);
  sub_2171F0790(v0 + 1680, &qword_27CB279D8, &unk_21776B5B0);
  sub_2171F0790(v0 + 456, &qword_27CB279E8, &qword_21776B5D0);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173FE2D8()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB279F0, &qword_21776B5E0);
  sub_2171F0790(v0 + 1680, &qword_27CB279D8, &unk_21776B5B0);
  sub_2171F0790(v0 + 456, &qword_27CB279E8, &qword_21776B5D0);
  OUTLINED_FUNCTION_513();

  return v2();
}

uint64_t sub_2173FE378()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_927();
  OUTLINED_FUNCTION_1067();
  v2 = OUTLINED_FUNCTION_779();
  sub_2171F0688(v2, v3, v4, v5);
  OUTLINED_FUNCTION_1320();

  v6 = OUTLINED_FUNCTION_374();
  sub_217418A10(v6, v0, v7);
  OUTLINED_FUNCTION_1019();
  if (v8)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_20_6();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CECC4();
      if (*(v1 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v16 = OUTLINED_FUNCTION_349();
        v17(v16);
        sub_2172758B4(&unk_21776B598);
      }

      else
      {
        sub_2171F0790(v15, &unk_27CB2ACC0, &qword_217758AA8);
      }

      __swift_destroy_boxed_opaque_existential_1((v1 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(v0, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_350(v18);
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_96_9(v19);

  return sub_217419AD0(v21, v22);
}

uint64_t sub_2173FE508(uint64_t a1)
{
  *(v2 + 2736) = v1;
  *(v2 + 2728) = a1;
  return MEMORY[0x2822009F8](sub_2173FE52C, 0, 0);
}

uint64_t sub_2173FE52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_674();
  v12 = *(v11 + 1840);
  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_213_4();
    OUTLINED_FUNCTION_28_6();
    swift_allocObject();
    v13 = SharedRelatedItemStore.init()();
    OUTLINED_FUNCTION_496(v13);
    if (*(v11 + 1424))
    {
      OUTLINED_FUNCTION_929();
      OUTLINED_FUNCTION_217_4();
      if (v15 && (v14 & 0xF000000000000007) == 0)
      {
        v16 = OUTLINED_FUNCTION_216_4();
        v17 = OUTLINED_FUNCTION_1178(v16);
        OUTLINED_FUNCTION_1190(v17, v18, &qword_27CB28260, &qword_21776C338);
        OUTLINED_FUNCTION_392();
        sub_217751DC8();
        OUTLINED_FUNCTION_798();
        OUTLINED_FUNCTION_392();
        v19 = sub_217751DC8();
        v20 = OUTLINED_FUNCTION_49_15(v19, xmmword_2177586D0);
        sub_21741746C(v20, v21);
        sub_2171F0790(v10, &qword_27CB28258, &qword_21776C330);
        OUTLINED_FUNCTION_709();
        sub_2171F0790(v22, v23, v24);
        OUTLINED_FUNCTION_263();
        OUTLINED_FUNCTION_1183();

        v25 = OUTLINED_FUNCTION_206_3();
        sub_217418AF4(v25, v26, v27);
        OUTLINED_FUNCTION_811();
        if (v15)
        {
          OUTLINED_FUNCTION_802();
          OUTLINED_FUNCTION_93_3();
          sub_2171F0688(v28, v29, v30, v31);
          v32 = OUTLINED_FUNCTION_20_6();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          if (OUTLINED_FUNCTION_337())
          {
            OUTLINED_FUNCTION_68_11();
            sub_2172CED00();
            if (*(v11 + 2520))
            {
              OUTLINED_FUNCTION_1_53();
              v35 = OUTLINED_FUNCTION_349();
              v36(v35);
              sub_21726B8C4(&unk_21776C2E8);
            }

            else
            {
              sub_2171F0790(v34, &unk_27CB28A90, &qword_217758F90);
            }

            __swift_destroy_boxed_opaque_existential_1((v11 + 2608));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2171F0790(&qword_27CB28250, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        v70 = swift_task_alloc();
        v71 = OUTLINED_FUNCTION_350(v70);
        *v71 = v72;
        OUTLINED_FUNCTION_96_9(v71);
        OUTLINED_FUNCTION_1029();

        return sub_217419BE0(v73, v74);
      }

      OUTLINED_FUNCTION_15_29();
      *(v11 + 1880) = v53;
      *(v11 + 1888) = *(v11 + 1328);
      *(v11 + 1904) = v54;
      *(v11 + 1912) = v55;
      *(v11 + 1920) = v56;
      *(v11 + 1928) = v57;
      *(v11 + 1936) = v58;
      OUTLINED_FUNCTION_215_4();
      v61 = OUTLINED_FUNCTION_1259(v59, v60, &qword_27CB28258, &qword_21776C330);
      OUTLINED_FUNCTION_1191(v61, v62, &qword_27CB28268, &qword_21776C340);
      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_415(v63);
      *v64 = v65;
      OUTLINED_FUNCTION_235_2(v64);
    }

    else
    {
      OUTLINED_FUNCTION_568();
      v50 = swift_task_alloc();
      v51 = OUTLINED_FUNCTION_430(v50);
      *v51 = v52;
      OUTLINED_FUNCTION_234_2(v51);
    }

    OUTLINED_FUNCTION_961();
    OUTLINED_FUNCTION_1029();

    return sub_217411DE8(v66, v67, v68);
  }

  v37 = OUTLINED_FUNCTION_16_30(v12);
  sub_2172CA838(v37, v11 + 2688);
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_648();
  OUTLINED_FUNCTION_391(&dword_21776C348);
  sub_217751DE8();
  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_588(v38);
  *v39 = v40;
  OUTLINED_FUNCTION_123_9(v39);
  OUTLINED_FUNCTION_1410();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_2173FE904()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2744);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FE9FC()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2171F0790(v0 + 1784, &qword_27CB28270, &qword_21776C350);
  OUTLINED_FUNCTION_926();
  type metadata accessor for SharedRelatedItemStore();
  OUTLINED_FUNCTION_28_6();
  swift_allocObject();
  v1 = SharedRelatedItemStore.init()();
  OUTLINED_FUNCTION_495(v1);
  if (!*(v0 + 1424))
  {
    OUTLINED_FUNCTION_568();
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_430(v25);
    *v26 = v27;
    OUTLINED_FUNCTION_234_2(v26);
LABEL_12:
    OUTLINED_FUNCTION_838();
    OUTLINED_FUNCTION_1322();

    return sub_217411DE8(v41, v42, v43);
  }

  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_217_4();
  if (!v3 || (v2 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_15_29();
    *(v0 + 1880) = v28;
    *(v0 + 1888) = *(v0 + 1328);
    *(v0 + 1904) = v29;
    *(v0 + 1912) = v30;
    *(v0 + 1920) = v31;
    *(v0 + 1928) = v32;
    *(v0 + 1936) = v33;
    OUTLINED_FUNCTION_215_4();
    v36 = OUTLINED_FUNCTION_1258(v34, v35, &qword_27CB28258, &qword_21776C330);
    OUTLINED_FUNCTION_1191(v36, v37, &qword_27CB28268, &qword_21776C340);
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_415(v38);
    *v39 = v40;
    OUTLINED_FUNCTION_235_2(v39);
    goto LABEL_12;
  }

  v4 = OUTLINED_FUNCTION_216_4();
  v5 = OUTLINED_FUNCTION_1177(v4);
  OUTLINED_FUNCTION_1190(v5, v6, &qword_27CB28260, &qword_21776C338);
  OUTLINED_FUNCTION_17_13();
  sub_217751DC8();
  OUTLINED_FUNCTION_17_13();
  v7 = sub_217751DC8();
  v8 = OUTLINED_FUNCTION_50_12(v7, xmmword_2177586D0);
  sub_21741746C(v8, v9);
  sub_2171F0790(v0 + 840, &qword_27CB28258, &qword_21776C330);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v10, v11, v12);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v13 = OUTLINED_FUNCTION_206_3();
  sub_217418AF4(v13, v14, v15);
  OUTLINED_FUNCTION_811();
  if (v3)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_20_6();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CED00();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v23 = OUTLINED_FUNCTION_349();
        v24(v23);
        sub_21726B8C4(&unk_21776C2E8);
      }

      else
      {
        sub_2171F0790(v22, &unk_27CB28A90, &qword_217758F90);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB28250, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_350(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_96_9(v47);
  OUTLINED_FUNCTION_1322();

  return sub_217419BE0(v49, v50);
}

uint64_t sub_2173FED54()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0790(v0 + 1784, &qword_27CB28270, &qword_21776C350);
  OUTLINED_FUNCTION_587();

  return v1();
}

uint64_t sub_2173FEDBC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2768);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2776) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FEEB4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 2784);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 2792) = v0;

  if (v0)
  {
    sub_2171F0790(v3 + 840, &qword_27CB28258, &qword_21776C330);
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FEFC4()
{
  OUTLINED_FUNCTION_30_0();
  sub_2171F0790(v0 + 1320, &qword_27CB28268, &qword_21776C340);
  OUTLINED_FUNCTION_928();
  v1 = OUTLINED_FUNCTION_383();
  sub_21741746C(v1, v2);
  sub_2171F0790(v0 + 840, &qword_27CB28258, &qword_21776C330);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v3, v4, v5);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v6 = OUTLINED_FUNCTION_206_3();
  sub_217418AF4(v6, v7, v8);
  OUTLINED_FUNCTION_811();
  if (v9)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_20_6();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CED00();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v17 = OUTLINED_FUNCTION_349();
        v18(v17);
        sub_21726B8C4(&unk_21776C2E8);
      }

      else
      {
        sub_2171F0790(v16, &unk_27CB28A90, &qword_217758F90);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB28250, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_350(v19);
  *v20 = v21;
  v22 = OUTLINED_FUNCTION_96_9(v20);

  return sub_217419BE0(v22, v23);
}

uint64_t sub_2173FF18C()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);
  sub_2171F0790(v0 + 1320, &qword_27CB28268, &qword_21776C340);

  sub_2171F0790(v0 + 840, &qword_27CB28258, &qword_21776C330);
  OUTLINED_FUNCTION_558();

  return v2();
}

uint64_t sub_2173FF218()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2800);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2808) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FF310()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB28258, &qword_21776C330);
  sub_2171F0790(v0 + 1680, &unk_27CB28240, &unk_21776C300);
  sub_2171F0790(v0 + 456, &qword_27CB28250, &qword_21776C320);
  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_2173FF3B0()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 2760);

  sub_2171F0790(v0 + 840, &qword_27CB28258, &qword_21776C330);
  sub_2171F0790(v0 + 1680, &unk_27CB28240, &unk_21776C300);
  sub_2171F0790(v0 + 456, &qword_27CB28250, &qword_21776C320);
  OUTLINED_FUNCTION_513();

  return v2();
}

uint64_t sub_2173FF450()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_927();
  OUTLINED_FUNCTION_1067();
  v2 = OUTLINED_FUNCTION_779();
  sub_2171F0688(v2, v3, v4, v5);
  OUTLINED_FUNCTION_1320();

  v6 = OUTLINED_FUNCTION_374();
  sub_217418AF4(v6, v0, v7);
  OUTLINED_FUNCTION_1019();
  if (v8)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_20_6();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CED00();
      if (*(v1 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v16 = OUTLINED_FUNCTION_349();
        v17(v16);
        sub_21726B8C4(&unk_21776C2E8);
      }

      else
      {
        sub_2171F0790(v15, &unk_27CB28A90, &qword_217758F90);
      }

      __swift_destroy_boxed_opaque_existential_1((v1 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(v0, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_350(v18);
  *v19 = v20;
  v21 = OUTLINED_FUNCTION_96_9(v19);

  return sub_217419BE0(v21, v22);
}

uint64_t sub_2173FF5E0(uint64_t a1)
{
  *(v2 + 2736) = v1;
  *(v2 + 2728) = a1;
  return MEMORY[0x2822009F8](sub_2173FF604, 0, 0);
}

uint64_t sub_2173FF604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_674();
  v12 = *(v11 + 1840);
  if ((v12 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_213_4();
    OUTLINED_FUNCTION_28_6();
    swift_allocObject();
    v13 = SharedRelatedItemStore.init()();
    OUTLINED_FUNCTION_496(v13);
    if (*(v11 + 1424))
    {
      OUTLINED_FUNCTION_929();
      OUTLINED_FUNCTION_217_4();
      if (v15 && (v14 & 0xF000000000000007) == 0)
      {
        v16 = OUTLINED_FUNCTION_216_4();
        v17 = OUTLINED_FUNCTION_1178(v16);
        OUTLINED_FUNCTION_1190(v17, v18, &qword_27CB27EF8, &qword_21776BE10);
        OUTLINED_FUNCTION_392();
        sub_217751DC8();
        OUTLINED_FUNCTION_798();
        OUTLINED_FUNCTION_392();
        v19 = sub_217751DC8();
        v20 = OUTLINED_FUNCTION_49_15(v19, xmmword_2177586D0);
        sub_217417A58(v20, v21);
        sub_2171F0790(v10, &qword_27CB27EF0, &qword_21776BE08);
        OUTLINED_FUNCTION_709();
        sub_2171F0790(v22, v23, v24);
        OUTLINED_FUNCTION_263();
        OUTLINED_FUNCTION_1183();

        v25 = OUTLINED_FUNCTION_206_3();
        sub_217418BD8(v25, v26, v27);
        OUTLINED_FUNCTION_811();
        if (v15)
        {
          OUTLINED_FUNCTION_802();
          OUTLINED_FUNCTION_93_3();
          sub_2171F0688(v28, v29, v30, v31);
          v32 = OUTLINED_FUNCTION_20_6();
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
          if (OUTLINED_FUNCTION_337())
          {
            OUTLINED_FUNCTION_68_11();
            sub_2172CED3C();
            if (*(v11 + 2520))
            {
              OUTLINED_FUNCTION_1_53();
              v35 = OUTLINED_FUNCTION_349();
              v36(v35);
              sub_217284394(&unk_21776BDB0);
            }

            else
            {
              sub_2171F0790(v34, &qword_27CB24678, &qword_217758BD0);
            }

            __swift_destroy_boxed_opaque_existential_1((v11 + 2608));
          }

          else
          {
            OUTLINED_FUNCTION_92_2();
            sub_2171F0790(&qword_27CB27EE8, &qword_27CB276F0, &qword_21775AC30);
          }
        }

        v70 = swift_task_alloc();
        v71 = OUTLINED_FUNCTION_350(v70);
        *v71 = v72;
        OUTLINED_FUNCTION_96_9(v71);
        OUTLINED_FUNCTION_1029();

        return sub_217419CF0(v73, v74);
      }

      OUTLINED_FUNCTION_15_29();
      *(v11 + 1880) = v53;
      *(v11 + 1888) = *(v11 + 1328);
      *(v11 + 1904) = v54;
      *(v11 + 1912) = v55;
      *(v11 + 1920) = v56;
      *(v11 + 1928) = v57;
      *(v11 + 1936) = v58;
      OUTLINED_FUNCTION_215_4();
      v61 = OUTLINED_FUNCTION_1259(v59, v60, &qword_27CB27EF0, &qword_21776BE08);
      OUTLINED_FUNCTION_1191(v61, v62, &qword_27CB27F00, &qword_21776BE18);
      v63 = swift_task_alloc();
      v64 = OUTLINED_FUNCTION_415(v63);
      *v64 = v65;
      OUTLINED_FUNCTION_235_2(v64);
    }

    else
    {
      OUTLINED_FUNCTION_568();
      v50 = swift_task_alloc();
      v51 = OUTLINED_FUNCTION_430(v50);
      *v51 = v52;
      OUTLINED_FUNCTION_234_2(v51);
    }

    OUTLINED_FUNCTION_961();
    OUTLINED_FUNCTION_1029();

    return sub_2174124AC(v66, v67, v68);
  }

  v37 = OUTLINED_FUNCTION_16_30(v12);
  sub_2172CA838(v37, v11 + 2688);
  OUTLINED_FUNCTION_649();
  OUTLINED_FUNCTION_648();
  OUTLINED_FUNCTION_391(&dword_21776BE20);
  sub_217751DE8();
  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_588(v38);
  *v39 = v40;
  OUTLINED_FUNCTION_123_9(v39);
  OUTLINED_FUNCTION_1410();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_2173FF9DC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 2744);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 2752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173FFAD4()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  sub_2171F0790(v0 + 1784, &qword_27CB27F08, &qword_21776BE28);
  OUTLINED_FUNCTION_926();
  type metadata accessor for SharedRelatedItemStore();
  OUTLINED_FUNCTION_28_6();
  swift_allocObject();
  v1 = SharedRelatedItemStore.init()();
  OUTLINED_FUNCTION_495(v1);
  if (!*(v0 + 1424))
  {
    OUTLINED_FUNCTION_568();
    v25 = swift_task_alloc();
    v26 = OUTLINED_FUNCTION_430(v25);
    *v26 = v27;
    OUTLINED_FUNCTION_234_2(v26);
LABEL_12:
    OUTLINED_FUNCTION_838();
    OUTLINED_FUNCTION_1322();

    return sub_2174124AC(v41, v42, v43);
  }

  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_217_4();
  if (!v3 || (v2 & 0xF000000000000007) != 0)
  {
    OUTLINED_FUNCTION_15_29();
    *(v0 + 1880) = v28;
    *(v0 + 1888) = *(v0 + 1328);
    *(v0 + 1904) = v29;
    *(v0 + 1912) = v30;
    *(v0 + 1920) = v31;
    *(v0 + 1928) = v32;
    *(v0 + 1936) = v33;
    OUTLINED_FUNCTION_215_4();
    v36 = OUTLINED_FUNCTION_1258(v34, v35, &qword_27CB27EF0, &qword_21776BE08);
    OUTLINED_FUNCTION_1191(v36, v37, &qword_27CB27F00, &qword_21776BE18);
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_415(v38);
    *v39 = v40;
    OUTLINED_FUNCTION_235_2(v39);
    goto LABEL_12;
  }

  v4 = OUTLINED_FUNCTION_216_4();
  v5 = OUTLINED_FUNCTION_1177(v4);
  OUTLINED_FUNCTION_1190(v5, v6, &qword_27CB27EF8, &qword_21776BE10);
  OUTLINED_FUNCTION_17_13();
  sub_217751DC8();
  OUTLINED_FUNCTION_17_13();
  v7 = sub_217751DC8();
  v8 = OUTLINED_FUNCTION_50_12(v7, xmmword_2177586D0);
  sub_217417A58(v8, v9);
  sub_2171F0790(v0 + 840, &qword_27CB27EF0, &qword_21776BE08);
  OUTLINED_FUNCTION_709();
  sub_2171F0790(v10, v11, v12);
  OUTLINED_FUNCTION_263();
  OUTLINED_FUNCTION_1183();

  v13 = OUTLINED_FUNCTION_206_3();
  sub_217418BD8(v13, v14, v15);
  OUTLINED_FUNCTION_811();
  if (v3)
  {
    OUTLINED_FUNCTION_802();
    OUTLINED_FUNCTION_93_3();
    sub_2171F0688(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_20_6();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24FA0, &qword_21775AC28);
    if (OUTLINED_FUNCTION_337())
    {
      OUTLINED_FUNCTION_68_11();
      sub_2172CED3C();
      if (*(v0 + 2520))
      {
        OUTLINED_FUNCTION_1_53();
        v23 = OUTLINED_FUNCTION_349();
        v24(v23);
        sub_217284394(&unk_21776BDB0);
      }

      else
      {
        sub_2171F0790(v22, &qword_27CB24678, &qword_217758BD0);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2608));
    }

    else
    {
      OUTLINED_FUNCTION_92_2();
      sub_2171F0790(&qword_27CB27EE8, &qword_27CB276F0, &qword_21775AC30);
    }
  }

  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_350(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_96_9(v47);
  OUTLINED_FUNCTION_1322();

  return sub_217419CF0(v49, v50);
}