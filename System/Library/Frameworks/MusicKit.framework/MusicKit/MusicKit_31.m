void sub_2174943BC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v23 = v2;
  sub_217276A94();
  v3 = 0;
  v4 = v2;
  v17 = a1 + 32;
  v18 = a1;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v3 == v5)
    {

      return;
    }

    if (v3 >= *(v18 + 16))
    {
      break;
    }

    sub_2171F0688(v17 + 88 * v3, v21, &qword_27CB27758, &unk_21776B1C0);
    v7 = v21[0];
    v6 = v21[1];
    memcpy(__dst, v22, 0x41uLL);
    v8 = v24;
    v9 = v25;
    v10 = *(v25 + 16);
    if (v24)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v25 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(__dst, __src, &qword_27CB24508, &unk_2177589F0);
    v23 = v4;
    v16 = *(v4 + 16);
    if (v16 >= *(v4 + 24) >> 1)
    {
      sub_217276A94();

      v4 = v23;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(__dst, &qword_27CB24508, &unk_2177589F0);
    *(v4 + 16) = v16 + 1;
    memcpy((v4 + 72 * v16 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217494630(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v32 = v2;
  sub_217276AB4();
  v3 = 0;
  v4 = v2;
  v22 = a1;
  v20 = a1 + 32;
  v21 = *(a1 + 16);
  while (1)
  {
    if (v3 == v21)
    {

      return;
    }

    if (v3 >= *(v22 + 16))
    {
      break;
    }

    sub_2171F0688(v20 + 72 * v3, v27, &qword_27CB27CE0, &qword_21776BA88);
    v6 = v27[0];
    v5 = v27[1];
    v26 = v31;
    v25[1] = v29;
    v25[2] = v30;
    v25[0] = v28;
    v7 = v33;
    v8 = v34;
    v9 = *(v34 + 16);
    if (v33)
    {

      sub_2172CA228(v6, v5, v8 + 32, v9, (v7 + 16));
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = (v34 + 40);
      v13 = v9 + 1;
      while (--v13)
      {
        if (*(v12 - 1) != v6 || *v12 != v5)
        {
          v12 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(v25, v23, &unk_27CB27760, &unk_21775A2D0);
    v32 = v4;
    v15 = *(v4 + 16);
    if (v15 >= *(v4 + 24) >> 1)
    {
      sub_217276AB4();

      v4 = v32;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(v25, &unk_27CB27760, &unk_21775A2D0);
    *(v4 + 16) = v15 + 1;
    v16 = v4 + 56 * v15;
    v17 = v23[2];
    v18 = v23[0];
    v19 = v23[1];
    *(v16 + 80) = v24;
    *(v16 + 48) = v19;
    *(v16 + 64) = v17;
    *(v16 + 32) = v18;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174948C0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v23 = v2;
  sub_217276AD4();
  v3 = 0;
  v4 = v2;
  v17 = a1 + 32;
  v18 = a1;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v3 == v5)
    {

      return;
    }

    if (v3 >= *(v18 + 16))
    {
      break;
    }

    sub_2171F0688(v17 + 88 * v3, v21, &qword_27CB27CF0, &qword_21776BA98);
    v7 = v21[0];
    v6 = v21[1];
    memcpy(__dst, v22, 0x41uLL);
    v8 = v24;
    v9 = v25;
    v10 = *(v25 + 16);
    if (v24)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v25 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(__dst, __src, &qword_27CB24608, &qword_21776BA80);
    v23 = v4;
    v16 = *(v4 + 16);
    if (v16 >= *(v4 + 24) >> 1)
    {
      sub_217276AD4();

      v4 = v23;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(__dst, &qword_27CB24608, &qword_21776BA80);
    *(v4 + 16) = v16 + 1;
    memcpy((v4 + 72 * v16 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217494B34(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v34 = 0;
  v35 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v33 = v2;
  sub_217276AF4();
  v3 = 0;
  v4 = v2;
  v24 = a1;
  v22 = a1 + 32;
  v23 = *(a1 + 16);
  v5 = &unk_27CB28AA0;
  while (1)
  {
    if (v3 == v23)
    {

      return;
    }

    if (v3 >= *(v24 + 16))
    {
      break;
    }

    v6 = v5;
    sub_2171F0688(v22 + 80 * v3, v29, &qword_27CB27E70, &qword_21776BD28);
    v8 = v29[0];
    v7 = v29[1];
    *&v28[9] = *(v32 + 9);
    v27[1] = v31;
    *v28 = v32[0];
    v27[0] = v30;
    v9 = v34;
    v10 = v35;
    v11 = *(v35 + 16);
    if (v34)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v35 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    v5 = v6;
    sub_2171F0688(v27, v25, v6, &qword_21775A020);
    v33 = v4;
    v17 = *(v4 + 16);
    if (v17 >= *(v4 + 24) >> 1)
    {
      sub_217276AF4();

      v4 = v33;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(v27, v6, &qword_21775A020);
    *(v4 + 16) = v17 + 1;
    v18 = (v4 + (v17 << 6));
    v20 = v25[1];
    v19 = v26[0];
    v21 = v25[0];
    *(v18 + 73) = *(v26 + 9);
    v18[3] = v20;
    v18[4] = v19;
    v18[2] = v21;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217494DC4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v23 = v2;
  sub_217276B14();
  v3 = 0;
  v4 = v2;
  v17 = a1 + 32;
  v18 = a1;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v3 == v5)
    {

      return;
    }

    if (v3 >= *(v18 + 16))
    {
      break;
    }

    sub_2171F0688(v17 + 96 * v3, v21, &qword_27CB27E80, &qword_21776BD38);
    v7 = v21[0];
    v6 = v21[1];
    memcpy(__dst, v22, 0x49uLL);
    v8 = v24;
    v9 = v25;
    v10 = *(v25 + 16);
    if (v24)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v25 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(__dst, __src, &qword_27CB24660, &qword_21776BD20);
    v23 = v4;
    v16 = *(v4 + 16);
    if (v16 >= *(v4 + 24) >> 1)
    {
      sub_217276B14();

      v4 = v23;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(__dst, &qword_27CB24660, &qword_21776BD20);
    *(v4 + 16) = v16 + 1;
    memcpy((v4 + 80 * v16 + 32), __src, 0x49uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217495038(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v32 = v2;
  sub_217276B34();
  v3 = 0;
  v4 = v2;
  v22 = a1;
  v20 = a1 + 32;
  v21 = *(a1 + 16);
  while (1)
  {
    if (v3 == v21)
    {

      return;
    }

    if (v3 >= *(v22 + 16))
    {
      break;
    }

    sub_2171F0688(v20 + 72 * v3, v27, &qword_27CB27C20, &qword_21776B938);
    v6 = v27[0];
    v5 = v27[1];
    v26 = v31;
    v25[1] = v29;
    v25[2] = v30;
    v25[0] = v28;
    v7 = v33;
    v8 = v34;
    v9 = *(v34 + 16);
    if (v33)
    {

      sub_2172CA228(v6, v5, v8 + 32, v9, (v7 + 16));
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = (v34 + 40);
      v13 = v9 + 1;
      while (--v13)
      {
        if (*(v12 - 1) != v6 || *v12 != v5)
        {
          v12 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(v25, v23, &qword_27CB2CD90, &unk_21775A2C0);
    v32 = v4;
    v15 = *(v4 + 16);
    if (v15 >= *(v4 + 24) >> 1)
    {
      sub_217276B34();

      v4 = v32;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(v25, &qword_27CB2CD90, &unk_21775A2C0);
    *(v4 + 16) = v15 + 1;
    v16 = v4 + 56 * v15;
    v17 = v23[2];
    v18 = v23[0];
    v19 = v23[1];
    *(v16 + 80) = v24;
    *(v16 + 48) = v19;
    *(v16 + 64) = v17;
    *(v16 + 32) = v18;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174952C8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v23 = v2;
  sub_217276B54();
  v3 = 0;
  v4 = v2;
  v17 = a1 + 32;
  v18 = a1;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v3 == v5)
    {

      return;
    }

    if (v3 >= *(v18 + 16))
    {
      break;
    }

    sub_2171F0688(v17 + 88 * v3, v21, &qword_27CB27C30, &qword_21776B948);
    v7 = v21[0];
    v6 = v21[1];
    memcpy(__dst, v22, 0x41uLL);
    v8 = v24;
    v9 = v25;
    v10 = *(v25 + 16);
    if (v24)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v25 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(__dst, __src, &qword_27CB245E8, &qword_21776B930);
    v23 = v4;
    v16 = *(v4 + 16);
    if (v16 >= *(v4 + 24) >> 1)
    {
      sub_217276B54();

      v4 = v23;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(__dst, &qword_27CB245E8, &qword_21776B930);
    *(v4 + 16) = v16 + 1;
    memcpy((v4 + 72 * v16 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_21749553C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v32 = v2;
  sub_217276B74();
  v3 = 0;
  v4 = v2;
  v22 = a1;
  v20 = a1 + 32;
  v21 = *(a1 + 16);
  while (1)
  {
    if (v3 == v21)
    {

      return;
    }

    if (v3 >= *(v22 + 16))
    {
      break;
    }

    sub_2171F0688(v20 + 72 * v3, v27, &qword_27CB281A0, &qword_21776C218);
    v6 = v27[0];
    v5 = v27[1];
    v26 = v31;
    v25[1] = v29;
    v25[2] = v30;
    v25[0] = v28;
    v7 = v33;
    v8 = v34;
    v9 = *(v34 + 16);
    if (v33)
    {

      sub_2172CA228(v6, v5, v8 + 32, v9, (v7 + 16));
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = (v34 + 40);
      v13 = v9 + 1;
      while (--v13)
      {
        if (*(v12 - 1) != v6 || *v12 != v5)
        {
          v12 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(v25, v23, &qword_27CB246E8, &qword_21776C140);
    v32 = v4;
    v15 = *(v4 + 16);
    if (v15 >= *(v4 + 24) >> 1)
    {
      sub_217276B74();

      v4 = v32;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(v25, &qword_27CB246E8, &qword_21776C140);
    *(v4 + 16) = v15 + 1;
    v16 = v4 + 56 * v15;
    v17 = v23[2];
    v18 = v23[0];
    v19 = v23[1];
    *(v16 + 80) = v24;
    *(v16 + 48) = v19;
    *(v16 + 64) = v17;
    *(v16 + 32) = v18;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174957CC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v23 = v2;
  sub_217276B94();
  v3 = 0;
  v4 = v2;
  v17 = a1 + 32;
  v18 = a1;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v3 == v5)
    {

      return;
    }

    if (v3 >= *(v18 + 16))
    {
      break;
    }

    sub_2171F0688(v17 + 88 * v3, v21, &qword_27CB281B0, &qword_21776C228);
    v7 = v21[0];
    v6 = v21[1];
    memcpy(__dst, v22, 0x41uLL);
    v8 = v24;
    v9 = v25;
    v10 = *(v25 + 16);
    if (v24)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v25 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(__dst, __src, &qword_27CB246F8, &qword_21776C210);
    v23 = v4;
    v16 = *(v4 + 16);
    if (v16 >= *(v4 + 24) >> 1)
    {
      sub_217276B94();

      v4 = v23;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(__dst, &qword_27CB246F8, &qword_21776C210);
    *(v4 + 16) = v16 + 1;
    memcpy((v4 + 72 * v16 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217495A40(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v32 = v2;
  sub_217276BB4();
  v3 = 0;
  v4 = v2;
  v22 = a1;
  v20 = a1 + 32;
  v21 = *(a1 + 16);
  while (1)
  {
    if (v3 == v21)
    {

      return;
    }

    if (v3 >= *(v22 + 16))
    {
      break;
    }

    sub_2171F0688(v20 + 72 * v3, v27, &qword_27CB280E0, &qword_21776C0E8);
    v6 = v27[0];
    v5 = v27[1];
    v26 = v31;
    v25[1] = v29;
    v25[2] = v30;
    v25[0] = v28;
    v7 = v33;
    v8 = v34;
    v9 = *(v34 + 16);
    if (v33)
    {

      sub_2172CA228(v6, v5, v8 + 32, v9, (v7 + 16));
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = (v34 + 40);
      v13 = v9 + 1;
      while (--v13)
      {
        if (*(v12 - 1) != v6 || *v12 != v5)
        {
          v12 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(v25, v23, &unk_27CB2AF80, &qword_217758C30);
    v32 = v4;
    v15 = *(v4 + 16);
    if (v15 >= *(v4 + 24) >> 1)
    {
      sub_217276BB4();

      v4 = v32;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(v25, &unk_27CB2AF80, &qword_217758C30);
    *(v4 + 16) = v15 + 1;
    v16 = v4 + 56 * v15;
    v17 = v23[2];
    v18 = v23[0];
    v19 = v23[1];
    *(v16 + 80) = v24;
    *(v16 + 48) = v19;
    *(v16 + 64) = v17;
    *(v16 + 32) = v18;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217495CD0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v23 = v2;
  sub_217276BD4();
  v3 = 0;
  v4 = v2;
  v17 = a1 + 32;
  v18 = a1;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v3 == v5)
    {

      return;
    }

    if (v3 >= *(v18 + 16))
    {
      break;
    }

    sub_2171F0688(v17 + 88 * v3, v21, &qword_27CB280F0, &qword_21776C0F8);
    v7 = v21[0];
    v6 = v21[1];
    memcpy(__dst, v22, 0x41uLL);
    v8 = v24;
    v9 = v25;
    v10 = *(v25 + 16);
    if (v24)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v25 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(__dst, __src, &qword_27CB246C8, &unk_217758C40);
    v23 = v4;
    v16 = *(v4 + 16);
    if (v16 >= *(v4 + 24) >> 1)
    {
      sub_217276BD4();

      v4 = v23;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(__dst, &qword_27CB246C8, &unk_217758C40);
    *(v4 + 16) = v16 + 1;
    memcpy((v4 + 72 * v16 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217495F44(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v34 = 0;
  v35 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v33 = v2;
  sub_217276C60();
  v3 = 0;
  v4 = v2;
  v24 = a1;
  v22 = a1 + 32;
  v23 = *(a1 + 16);
  v5 = &qword_27CB27D20;
  while (1)
  {
    if (v3 == v23)
    {

      return;
    }

    if (v3 >= *(v24 + 16))
    {
      break;
    }

    v6 = v5;
    sub_2171F0688(v22 + 80 * v3, v29, &qword_27CB27DA8, &qword_21776BBD0);
    v8 = v29[0];
    v7 = v29[1];
    *&v28[9] = *(v32 + 9);
    v27[1] = v31;
    *v28 = v32[0];
    v27[0] = v30;
    v9 = v34;
    v10 = v35;
    v11 = *(v35 + 16);
    if (v34)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v35 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    v5 = v6;
    sub_2171F0688(v27, v25, v6, &qword_217758B80);
    v33 = v4;
    v17 = *(v4 + 16);
    if (v17 >= *(v4 + 24) >> 1)
    {
      sub_217276C60();

      v4 = v33;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(v27, v6, &qword_217758B80);
    *(v4 + 16) = v17 + 1;
    v18 = (v4 + (v17 << 6));
    v20 = v25[1];
    v19 = v26[0];
    v21 = v25[0];
    *(v18 + 73) = *(v26 + 9);
    v18[3] = v20;
    v18[4] = v19;
    v18[2] = v21;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174961D4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v23 = v2;
  sub_217276C80();
  v3 = 0;
  v4 = v2;
  v17 = a1 + 32;
  v18 = a1;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v3 == v5)
    {

      return;
    }

    if (v3 >= *(v18 + 16))
    {
      break;
    }

    sub_2171F0688(v17 + 96 * v3, v21, &qword_27CB27DB8, &qword_21776BBE0);
    v7 = v21[0];
    v6 = v21[1];
    memcpy(__dst, v22, 0x49uLL);
    v8 = v24;
    v9 = v25;
    v10 = *(v25 + 16);
    if (v24)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v25 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(__dst, __src, &qword_27CB27DA0, &unk_217758B90);
    v23 = v4;
    v16 = *(v4 + 16);
    if (v16 >= *(v4 + 24) >> 1)
    {
      sub_217276C80();

      v4 = v23;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(__dst, &qword_27CB27DA0, &unk_217758B90);
    *(v4 + 16) = v16 + 1;
    memcpy((v4 + 80 * v16 + 32), __src, 0x49uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217496448(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v32 = v2;
  sub_217276CA0();
  v3 = 0;
  v4 = v2;
  v22 = a1;
  v20 = a1 + 32;
  v21 = *(a1 + 16);
  while (1)
  {
    if (v3 == v21)
    {

      return;
    }

    if (v3 >= *(v22 + 16))
    {
      break;
    }

    sub_2171F0688(v20 + 72 * v3, v27, &qword_27CB27A30, &qword_21776B630);
    v6 = v27[0];
    v5 = v27[1];
    v26 = v31;
    v25[1] = v29;
    v25[2] = v30;
    v25[0] = v28;
    v7 = v33;
    v8 = v34;
    v9 = *(v34 + 16);
    if (v33)
    {

      sub_2172CA228(v6, v5, v8 + 32, v9, (v7 + 16));
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = (v34 + 40);
      v13 = v9 + 1;
      while (--v13)
      {
        if (*(v12 - 1) != v6 || *v12 != v5)
        {
          v12 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(v25, v23, &unk_27CB2ACC0, &qword_217758AA8);
    v32 = v4;
    v15 = *(v4 + 16);
    if (v15 >= *(v4 + 24) >> 1)
    {
      sub_217276CA0();

      v4 = v32;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(v25, &unk_27CB2ACC0, &qword_217758AA8);
    *(v4 + 16) = v15 + 1;
    v16 = v4 + 56 * v15;
    v17 = v23[2];
    v18 = v23[0];
    v19 = v23[1];
    *(v16 + 80) = v24;
    *(v16 + 48) = v19;
    *(v16 + 64) = v17;
    *(v16 + 32) = v18;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174966D8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v23 = v2;
  sub_217276CC0();
  v3 = 0;
  v4 = v2;
  v17 = a1 + 32;
  v18 = a1;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v3 == v5)
    {

      return;
    }

    if (v3 >= *(v18 + 16))
    {
      break;
    }

    sub_2171F0688(v17 + 88 * v3, v21, &qword_27CB27A40, &qword_21776B640);
    v7 = v21[0];
    v6 = v21[1];
    memcpy(__dst, v22, 0x41uLL);
    v8 = v24;
    v9 = v25;
    v10 = *(v25 + 16);
    if (v24)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v25 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(__dst, __src, &qword_27CB24598, &unk_2177A0800);
    v23 = v4;
    v16 = *(v4 + 16);
    if (v16 >= *(v4 + 24) >> 1)
    {
      sub_217276CC0();

      v4 = v23;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(__dst, &qword_27CB24598, &unk_2177A0800);
    *(v4 + 16) = v16 + 1;
    memcpy((v4 + 72 * v16 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_21749694C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v32 = v2;
  sub_217276CE0();
  v3 = 0;
  v4 = v2;
  v22 = a1;
  v20 = a1 + 32;
  v21 = *(a1 + 16);
  while (1)
  {
    if (v3 == v21)
    {

      return;
    }

    if (v3 >= *(v22 + 16))
    {
      break;
    }

    sub_2171F0688(v20 + 72 * v3, v27, &qword_27CB28298, &qword_21776C380);
    v6 = v27[0];
    v5 = v27[1];
    v26 = v31;
    v25[1] = v29;
    v25[2] = v30;
    v25[0] = v28;
    v7 = v33;
    v8 = v34;
    v9 = *(v34 + 16);
    if (v33)
    {

      sub_2172CA228(v6, v5, v8 + 32, v9, (v7 + 16));
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = (v34 + 40);
      v13 = v9 + 1;
      while (--v13)
      {
        if (*(v12 - 1) != v6 || *v12 != v5)
        {
          v12 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(v25, v23, &unk_27CB28A90, &qword_217758F90);
    v32 = v4;
    v15 = *(v4 + 16);
    if (v15 >= *(v4 + 24) >> 1)
    {
      sub_217276CE0();

      v4 = v32;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(v25, &unk_27CB28A90, &qword_217758F90);
    *(v4 + 16) = v15 + 1;
    v16 = v4 + 56 * v15;
    v17 = v23[2];
    v18 = v23[0];
    v19 = v23[1];
    *(v16 + 80) = v24;
    *(v16 + 48) = v19;
    *(v16 + 64) = v17;
    *(v16 + 32) = v18;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217496BDC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v23 = v2;
  sub_217276D00();
  v3 = 0;
  v4 = v2;
  v17 = a1 + 32;
  v18 = a1;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v3 == v5)
    {

      return;
    }

    if (v3 >= *(v18 + 16))
    {
      break;
    }

    sub_2171F0688(v17 + 88 * v3, v21, &qword_27CB282A8, &qword_21776C390);
    v7 = v21[0];
    v6 = v21[1];
    memcpy(__dst, v22, 0x41uLL);
    v8 = v24;
    v9 = v25;
    v10 = *(v25 + 16);
    if (v24)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v25 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(__dst, __src, &qword_27CB28290, &qword_217758FA0);
    v23 = v4;
    v16 = *(v4 + 16);
    if (v16 >= *(v4 + 24) >> 1)
    {
      sub_217276D00();

      v4 = v23;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(__dst, &qword_27CB28290, &qword_217758FA0);
    *(v4 + 16) = v16 + 1;
    memcpy((v4 + 72 * v16 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217496E50(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v32 = v2;
  sub_217276D20();
  v3 = 0;
  v4 = v2;
  v22 = a1;
  v20 = a1 + 32;
  v21 = *(a1 + 16);
  while (1)
  {
    if (v3 == v21)
    {

      return;
    }

    if (v3 >= *(v22 + 16))
    {
      break;
    }

    sub_2171F0688(v20 + 72 * v3, v27, &qword_27CB27F30, &qword_21776BE58);
    v6 = v27[0];
    v5 = v27[1];
    v26 = v31;
    v25[1] = v29;
    v25[2] = v30;
    v25[0] = v28;
    v7 = v33;
    v8 = v34;
    v9 = *(v34 + 16);
    if (v33)
    {

      sub_2172CA228(v6, v5, v8 + 32, v9, (v7 + 16));
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v12 = (v34 + 40);
      v13 = v9 + 1;
      while (--v13)
      {
        if (*(v12 - 1) != v6 || *v12 != v5)
        {
          v12 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(v25, v23, &qword_27CB24678, &qword_217758BD0);
    v32 = v4;
    v15 = *(v4 + 16);
    if (v15 >= *(v4 + 24) >> 1)
    {
      sub_217276D20();

      v4 = v32;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(v25, &qword_27CB24678, &qword_217758BD0);
    *(v4 + 16) = v15 + 1;
    v16 = v4 + 56 * v15;
    v17 = v23[2];
    v18 = v23[0];
    v19 = v23[1];
    *(v16 + 80) = v24;
    *(v16 + 48) = v19;
    *(v16 + 64) = v17;
    *(v16 + 32) = v18;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174970E0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  sub_217497354(*(a1 + 16), 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v23 = v2;
  sub_217276D40();
  v3 = 0;
  v4 = v2;
  v17 = a1 + 32;
  v18 = a1;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v3 == v5)
    {

      return;
    }

    if (v3 >= *(v18 + 16))
    {
      break;
    }

    sub_2171F0688(v17 + 88 * v3, v21, &qword_27CB27F40, &qword_21776BE68);
    v7 = v21[0];
    v6 = v21[1];
    memcpy(__dst, v22, 0x41uLL);
    v8 = v24;
    v9 = v25;
    v10 = *(v25 + 16);
    if (v24)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v25 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0();
    sub_2171F0688(__dst, __src, &qword_27CB24688, &qword_217758BE0);
    v23 = v4;
    v16 = *(v4 + 16);
    if (v16 >= *(v4 + 24) >> 1)
    {
      sub_217276D40();

      v4 = v23;
    }

    else
    {
    }

    ++v3;
    sub_2171F0790(__dst, &qword_27CB24688, &qword_217758BE0);
    *(v4 + 16) = v16 + 1;
    memcpy((v4 + 72 * v16 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_217497354(uint64_t result, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void))
{
  if (result < 0)
  {
    goto LABEL_25;
  }

  v8 = v5;
  v10 = result;
  a3();
  v11 = *v5;
  if (*v5)
  {
    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    v12 = *(v11 + 16) & 0x3FLL;
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x21CEA1DB0](v10);
  v14 = v13;
  if (a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v11 && (a2 & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    v15 = *(v11 + 24) & 0x3FLL;
  }

  if (v12 < v14)
  {
    v16 = v14;
    return a4(v16, v15);
  }

  if (v15 > v14)
  {
    v14 = v15;
  }

  v16 = MEMORY[0x21CEA1DB0](*(v8[1] + 16));
  if (v16 <= v14)
  {
    v16 = v14;
  }

  if (v16 < v12)
  {
    return a4(v16, v15);
  }

  result = a5();
  v17 = *v8;
  if (!v17)
  {
    if (!v15)
    {
      return result;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if ((*(v17 + 24) & 0x3FLL) != v15)
  {
    *(v17 + 24) = *(v17 + 24) & 0xFFFFFFFFFFFFFFC0 | v15 & 0x3F;
  }

  return result;
}

void sub_2174974A4(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_2174976CC(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= MEMORY[0x21CEA1D90]())
  {
LABEL_12:
    sub_2174976CC(a1);
    if (v7)
    {
      swift_beginAccess();
      v12 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(*v5 + 16);
    if (v12 || v13 >= 0x10)
    {
      v14 = MEMORY[0x21CEA1DB0](v13);
      sub_2172C9C58(v14, v12);
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_2172CB704();
  v9 = *v3;
  if (*v3)
  {
    v10 = *v3;

    sub_217497750(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v11 = v3[1];

      sub_217497940(a1, a1 + 1, v11, (v9 + 16));

      sub_2174976CC(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_217497654(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_217492638(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    sub_217504014(v7 + 40);
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

void sub_2174976CC(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2174923A8(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    sub_217230498((v8 + 48), v7, (v8 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

unint64_t sub_217497750(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v26 = sub_2177519B8();
  sub_217751A18();
  if (v26)
  {
    v7 = sub_2177519C8();
    v8 = a1;
    while (1)
    {
      result = sub_2177519F8();
      if (v10)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_26;
      }

      v12 = *a2;
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      sub_2177531E8();
      sub_217751DE8();
      sub_217751FF8();
      v16 = sub_217753238();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_27;
      }

      v19 = v18 & v16;
      if (v8 >= v7)
      {
        if (v19 >= v7 && v8 >= v19)
        {
LABEL_18:
          v22 = sub_2177519F8();
          if ((v23 & 1) == 0)
          {
            v24 = ((v18 & ((v22 - (a2[1] >> 6)) >> 63)) + v22 - (a2[1] >> 6)) ^ v18;
          }

          v8 = a1;
          sub_2177519D8();
        }
      }

      else if (v19 >= v7 || v8 >= v19)
      {
        goto LABEL_18;
      }

      sub_217751A18();
    }
  }

  return sub_2177519D8();
}

uint64_t sub_217497940(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_57;
  }

  if (v4 >= 1)
  {
    v7 = result;
    v8 = *(a3 + 16);
    if ((v8 - v4) / 2 <= result)
    {
      v16 = a2;
      v17 = __OFSUB__(v8, a2);
      v18 = v8 - a2;
      if (v17)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v18 >= MEMORY[0x21CEA1D80](*a4 & 0x3F) / 3)
      {
        sub_2177519B8();
        v33 = sub_2177519F8();
        if ((v34 & 1) == 0 && v33 >= v16)
        {
          v17 = __OFSUB__(v33, v4);
          result = v33 - v4;
          if (v17)
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          sub_217751A08();
        }

        return sub_217751A18();
      }

      result = sub_21749264C(v16, a3);
      v20 = v19;
      v22 = v21;
      v24 = v23 >> 1;
      while (v22 != v24)
      {
        if (v22 >= v24)
        {
          goto LABEL_51;
        }

        v25 = (v20 + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = *a4;
        sub_2177531E8();
        sub_217751DE8();
        sub_217751FF8();
        result = sub_217753238();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (sub_2177519B8())
        {
          while (1)
          {
            v29 = sub_2177519F8();
            if ((v30 & 1) == 0 && v29 == v16)
            {
              break;
            }

            sub_217751A18();
          }
        }

        result = v16 - v4;
        if (__OFSUB__(v16, v4))
        {
          goto LABEL_53;
        }

        sub_217751A08();

        v17 = __OFADD__(v16++, 1);
        if (v17)
        {
          goto LABEL_54;
        }

        ++v22;
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      result = MEMORY[0x21CEA1D80](*a4 & 0x3F);
      if (result / 3 > v7)
      {
        if (v7 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v8 < v7)
        {
LABEL_62:
          __break(1u);
          return result;
        }

        for (i = 0; ; ++i)
        {
          if (i == v7)
          {

            goto LABEL_40;
          }

          v10 = (a3 + 32 + 16 * i);
          v11 = *v10;
          v12 = v10[1];
          v13 = *a4;
          sub_2177531E8();
          sub_217751DE8();
          sub_217751FF8();
          result = sub_217753238();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (sub_2177519B8())
          {
            while (1)
            {
              v14 = sub_2177519F8();
              if ((v15 & 1) == 0 && v14 == i)
              {
                break;
              }

              sub_217751A18();
            }
          }

          result = i + v4;
          if (__OFADD__(i, v4))
          {
            goto LABEL_50;
          }

          sub_217751A08();
        }

        __break(1u);
LABEL_50:
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

      sub_2177519B8();
      v31 = sub_2177519F8();
      if ((v32 & 1) == 0 && v31 < v7)
      {
        v17 = __OFADD__(v31, v4);
        result = v31 + v4;
        if (v17)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_217751A08();
      }

      result = sub_217751A18();
LABEL_40:
      v35 = a4[1];
      if (__OFSUB__(v35 >> 6, v4))
      {
        goto LABEL_59;
      }

      v36 = 1 << *a4;
      v17 = __OFSUB__(v36, 1);
      v37 = v36 - 1;
      if (v17)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v38 = (v37 & (((v35 >> 6) - v4) >> 63)) + (v35 >> 6) - v4;
      if (v38 < v37)
      {
        v37 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v38 - v37) << 6);
    }
  }

  return result;
}

uint64_t sub_217497D90(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v37 = -1 << *(a1 + 32);
  v6 = (63 - v3) >> 6;
  result = sub_217751DE8();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v35 = 0;
  v11 = 0;
  v38 = MEMORY[0x277D84F90];
  v34 = (MEMORY[0x277D84F90] + 32);
  while (1)
  {
    while (v9)
    {
      v12 = *(v9 + 16);
      if (v10 == v12)
      {
        break;
      }

      if (v10 >= v12)
      {
        goto LABEL_39;
      }

      v18 = v9 + 16 * v10;
      v19 = *(v18 + 32);
      result = *(v18 + 40);
      v33 = result;
      if (v35)
      {
        result = sub_217751DE8();
        v20 = v38;
      }

      else
      {
        v32 = *(v18 + 32);
        v21 = v38[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_41;
        }

        v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        v36 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
        v20 = swift_allocObject();
        v24 = (_swift_stdlib_malloc_size(v20) - 32) / 16;
        v20[2] = v36;
        v20[3] = 2 * v24;
        v25 = v20 + 4;
        v26 = v38[3] >> 1;
        v34 = &v20[2 * v26 + 4];
        v35 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v26;
        if (v38[2])
        {
          if (v20 != v38 || v25 >= &v38[2 * v26 + 4])
          {
            memmove(v25, v38 + 4, 16 * v26);
          }

          sub_217751DE8();
          v38[2] = 0;
        }

        else
        {
          sub_217751DE8();
        }
      }

      v28 = __OFSUB__(v35--, 1);
      if (v28)
      {
        goto LABEL_40;
      }

      ++v10;
      *v34 = v19;
      v34[1] = v33;
      v34 += 2;
      v38 = v20;
    }

    if (!v5)
    {
      break;
    }

    v13 = v11;
LABEL_13:
    v14 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v15 = (*(a1 + 56) + ((v13 << 10) | (16 * v14)));
    v16 = *v15;
    v17 = v15[1];

    result = sub_217498E38(v8, v9);
    v10 = 0;
    v8 = v16;
    v9 = v17;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v13 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v13);
    ++v11;
    if (v5)
    {
      v11 = v13;
      goto LABEL_13;
    }
  }

  sub_2172303F0();
  sub_217498E38(v8, v9);
  result = v38;
  v29 = v38[3];
  if (v29 < 2)
  {
    return result;
  }

  v30 = v29 >> 1;
  v28 = __OFSUB__(v30, v35);
  v31 = v30 - v35;
  if (!v28)
  {
    v38[2] = v31;
    return result;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_217498098@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  return sub_21746ECBC(v1[3], v1[5], a1);
}

unint64_t sub_2174980BC()
{
  result = qword_27CB275D8;
  if (!qword_27CB275D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB275D8);
  }

  return result;
}

uint64_t dispatch thunk of MusicLibrary.add<A>(_:)()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_0_41();
  v13 = *(v1 + 280) + **(v1 + 280);
  v2 = *(*(v1 + 280) + 4);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2172849C8;
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_1385();

  return v7(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t dispatch thunk of MusicLibrary.add<A>(_:to:)()
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_0_41();
  v14 = (v0 + 288);
  v15 = *v14 + **v14;
  v1 = *(*(v0 + 288) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19(v2);
  *v3 = v4;
  v3[1] = sub_2172849C8;
  OUTLINED_FUNCTION_849();
  OUTLINED_FUNCTION_1029();

  return v10(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
}

uint64_t dispatch thunk of MusicLibrary.createPlaylist(name:description:authorDisplayName:)()
{
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_1210();
  OUTLINED_FUNCTION_0_41();
  v6 = (*(v0 + 296) + **(v0 + 296));
  v1 = *(*(v0 + 296) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19(v2);
  *v3 = v4;
  v3[1] = sub_2172849C8;
  OUTLINED_FUNCTION_1071();
  OUTLINED_FUNCTION_1463();

  return v6();
}

uint64_t dispatch thunk of MusicLibrary.createPlaylist<A, B>(name:description:authorDisplayName:items:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  v46 = v22;
  v47 = v23;
  v44 = v24;
  v45 = v25;
  OUTLINED_FUNCTION_1109();
  OUTLINED_FUNCTION_0_41();
  v42 = (v26 + 304);
  v43 = *v42 + **v42;
  v27 = *(*(v26 + 304) + 4);
  v28 = swift_task_alloc();
  v29 = OUTLINED_FUNCTION_19(v28);
  *v29 = v30;
  v29[1] = sub_217282D8C;
  OUTLINED_FUNCTION_897();
  OUTLINED_FUNCTION_172_1();

  return v39(v31, v32, v33, v34, v35, v36, v37, v38, a9, v42, v43, v44, v45, v46, v47, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t dispatch thunk of MusicLibrary.edit(_:name:description:authorDisplayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_1109();
  OUTLINED_FUNCTION_0_41();
  v30 = (v14 + 312);
  v31 = *v30 + **v30;
  v15 = *(*(v14 + 312) + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_19(v16);
  *v17 = v18;
  v17[1] = sub_2172849C8;
  OUTLINED_FUNCTION_897();
  OUTLINED_FUNCTION_1399();
  OUTLINED_FUNCTION_120_0();

  return v27(v19, v20, v21, v22, v23, v24, v25, v26, a9, v30, v31, a12, a13, a14);
}

uint64_t dispatch thunk of MusicLibrary.edit<A, B>(_:name:description:authorDisplayName:items:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  v49 = v23;
  v50 = v24;
  v47 = v25;
  v48 = v26;
  v46 = v27;
  OUTLINED_FUNCTION_1109();
  OUTLINED_FUNCTION_0_41();
  v44 = (v28 + 320);
  v45 = *v44 + **v44;
  v29 = *(*(v28 + 320) + 4);
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_19(v30);
  *v31 = v32;
  v31[1] = sub_2172849C8;
  OUTLINED_FUNCTION_897();
  OUTLINED_FUNCTION_172_1();

  return v41(v33, v34, v35, v36, v37, v38, v39, v40, v44, v45, v46, v47, v48, v49, v50, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t dispatch thunk of MusicLibrary._connect()()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_0_41();
  v5 = (*(v1 + 344) + **(v1 + 344));
  v2 = *(*(v1 + 344) + 4);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2172849C8;

  return v5();
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MusicLibrary.UnderlyingConnectionStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MusicLibrary.UnderlyingConnectionStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_217498B78(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217498B94(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_1101((v0 + 32));
  OUTLINED_FUNCTION_197();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

unint64_t sub_217498C10()
{
  result = qword_27CB275F8;
  if (!qword_27CB275F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB275F8);
  }

  return result;
}

uint64_t sub_217498C64()
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_103_9(v1);
  OUTLINED_FUNCTION_1279();

  return sub_217481678(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_217498CF0()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_395();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_217483FDC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_217498E38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_217498E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_41_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_217498ED8()
{
  result = qword_27CB277A8;
  if (!qword_27CB277A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB277A8);
  }

  return result;
}

uint64_t sub_217498F2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_1302();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217498F70()
{
  result = qword_27CB27800;
  if (!qword_27CB27800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27800);
  }

  return result;
}

uint64_t sub_217498FC4()
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_103_9(v1);
  OUTLINED_FUNCTION_1279();

  return sub_217481088(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_64Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v3 = v0[11];

  v4 = v0[13];

  OUTLINED_FUNCTION_953();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2174990A4()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_395();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_217483E20(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_100Tm()
{
  v1 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v2 = *(v0 + 104);

  OUTLINED_FUNCTION_953();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

unint64_t sub_217499260()
{
  result = qword_27CB278B0;
  if (!qword_27CB278B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB278B0);
  }

  return result;
}

unint64_t sub_2174992B4()
{
  result = qword_27CB278C8;
  if (!qword_27CB278C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB278C8);
  }

  return result;
}

uint64_t sub_217499308()
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_103_9(v1);
  OUTLINED_FUNCTION_1279();

  return sub_217480A04(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_217499394()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_395();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_217483BC0(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_217499488()
{
  result = qword_27CB27978;
  if (!qword_27CB27978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27978);
  }

  return result;
}

unint64_t sub_2174994DC()
{
  result = qword_27CB27998;
  if (!qword_27CB27998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27998);
  }

  return result;
}

uint64_t sub_217499530()
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_103_9(v1);
  OUTLINED_FUNCTION_1279();

  return sub_217482FE0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2174995BC()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_395();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_21748432C(v3, v4, v5, v6, v7);
}

unint64_t sub_2174996B0()
{
  result = qword_27CB27A58;
  if (!qword_27CB27A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27A58);
  }

  return result;
}

unint64_t sub_217499754()
{
  result = qword_27CB27B18;
  if (!qword_27CB27B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27B18);
  }

  return result;
}

unint64_t sub_2174997A8()
{
  result = qword_27CB27B38;
  if (!qword_27CB27B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27B38);
  }

  return result;
}

uint64_t sub_2174997FC()
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_103_9(v1);
  OUTLINED_FUNCTION_1279();

  return sub_2174829F0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_217499888()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_395();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_217484268(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2174999D0(uint64_t *a1, uint64_t *a2, _BYTE *a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = 256;
  if ((a3[1] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFFFELL | *a3 & 1;
  v8 = 0x10000;
  if ((a3[2] & 1) == 0)
  {
    v8 = 0;
  }

  v9 = 0x1000000;
  if ((a3[3] & 1) == 0)
  {
    v9 = 0;
  }

  v10 = v7 | v8 | v9;
  v11 = 0x100000000;
  if ((a3[4] & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000000000;
  if ((a3[5] & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000000000;
  if ((a3[6] & 1) == 0)
  {
    v13 = 0;
  }

  v14 = v11 | v12;
  v15 = 0x100000000000000;
  if ((a3[7] & 1) == 0)
  {
    v15 = 0;
  }

  return a4(v4, v5, v10 | v14 | v13 | v15, a3[8] & 1);
}

unint64_t sub_217499AFC()
{
  result = qword_27CB27C48;
  if (!qword_27CB27C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27C48);
  }

  return result;
}

unint64_t sub_217499B50()
{
  result = qword_27CB27C60;
  if (!qword_27CB27C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27C60);
  }

  return result;
}

uint64_t sub_217499BA4()
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_103_9(v1);
  OUTLINED_FUNCTION_1279();

  return sub_217481C68(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_217499C30()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_395();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_2174840A0(v3, v4, v5, v6, v7);
}

unint64_t sub_217499CF8()
{
  result = qword_27CB27D08;
  if (!qword_27CB27D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27D08);
  }

  return result;
}

uint64_t objectdestroy_470Tm()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_1101((v0 + 32));
  OUTLINED_FUNCTION_203_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

unint64_t sub_217499DD4()
{
  result = qword_27CB27DD0;
  if (!qword_27CB27DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27DD0);
  }

  return result;
}

unint64_t sub_217499E28()
{
  result = qword_27CB27DE8;
  if (!qword_27CB27DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27DE8);
  }

  return result;
}

uint64_t sub_217499E7C()
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_103_9(v1);
  OUTLINED_FUNCTION_1279();

  return sub_217482258(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_217499F08()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_19(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_132_8(v7);
  OUTLINED_FUNCTION_234();

  return sub_217484184(v9, v10, v11, v12, v13);
}

unint64_t sub_21749A028()
{
  result = qword_27CB27E98;
  if (!qword_27CB27E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27E98);
  }

  return result;
}

unint64_t sub_21749A0CC()
{
  result = qword_27CB27F58;
  if (!qword_27CB27F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27F58);
  }

  return result;
}

unint64_t sub_21749A170()
{
  result = qword_27CB28048;
  if (!qword_27CB28048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28048);
  }

  return result;
}

unint64_t sub_21749A214()
{
  result = qword_27CB28108;
  if (!qword_27CB28108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28108);
  }

  return result;
}

unint64_t sub_21749A2B8()
{
  result = qword_27CB281C8;
  if (!qword_27CB281C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB281C8);
  }

  return result;
}

uint64_t sub_21749A30C@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  return sub_2174706D8(v1[3], v1[5], a1);
}

uint64_t sub_21749A32C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_41_0(v3);
  (*v4)(a2);
  return a2;
}

uint64_t objectdestroy_85Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[12];

  OUTLINED_FUNCTION_1142();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

unint64_t sub_21749A400()
{
  result = qword_280BE2658;
  if (!qword_280BE2658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2658);
  }

  return result;
}

uint64_t sub_21749A454()
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_103_9(v1);
  OUTLINED_FUNCTION_1279();

  return sub_2174835D0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21749A4E0()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_395();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_217484410(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_21749A584(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_41_0(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return v4;
}

uint64_t sub_21749A624(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_41_0(v5);
  v7 = *(v6 + 24);
  v8 = OUTLINED_FUNCTION_93();
  v9(v8);
  return v4;
}

uint64_t sub_21749A674(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21749A6F0()
{
  result = qword_27CB282C0;
  if (!qword_27CB282C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB282C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_25()
{
  v1 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  result = v1 + 16;
  v3 = *(v1 + 16);
  return result;
}

void OUTLINED_FUNCTION_15_29()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1360);
  v4 = *(v0 + 1344);
  v5 = *(v0 + 1320);
  v6 = *(v0 + 1376) & 7 | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_16_30@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 1872);
  v4 = *(v2 + 1848);
  *(v2 + 2168) = *(v2 + 1784);
  *(v2 + 2176) = *(v2 + 1792);
  *(v2 + 2192) = *(v2 + 1808);
  *(v2 + 2208) = *(v2 + 1824);
  *(v2 + 2224) = a1 & 0x7FFFFFFFFFFFFFFFLL;
  *(v2 + 2232) = v4;
  *(v2 + 2240) = *(v2 + 1856);
  *(v2 + 2256) = v3;
  v5 = *(v1 + 16);
  return v1 + 128;
}

double OUTLINED_FUNCTION_18_23()
{
  *(v0 + 106) = 0;
  result = 0.0;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  *(v0 + 105) = v1;
  v3 = *(v0 + 408);
  v4 = *(v0 + 384);
  v5 = *(*(v0 + 240) + 24);
  *(v0 + 472) = v5;
  *(v0 + 208) = v5;
  v6 = *(v3 + *(v4 + 24));
  return result;
}

uint64_t OUTLINED_FUNCTION_20_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  __swift_destroy_boxed_opaque_existential_1(a18);
  sub_2172202A4(a20);
  sub_2172202A4(v39);
  *v41 = a24;
  *(v41 + 16) = a23;
  *(v41 + 32) = v42;
  *(v41 + 40) = a27;
  *(v41 + 48) = a26;
  *(v41 + 56) = a30;
  *(v41 + 64) = v36;
  *(v41 + 72) = v35;
  *(v41 + 80) = v40;
  *(v41 + 88) = v38;
  *(v41 + 96) = a35;
  *(v41 + 104) = a33;
  *(v41 + 112) = a31;
  result = v37 + 8;
  v44 = *(v37 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_22(uint64_t result, uint64_t a2)
{
  *(v3 - 184) = result;
  *(v3 - 176) = a2;
  *(v3 - 216) = a2;
  v4 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_23()
{
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[32];

  return sub_2177513F8();
}

void OUTLINED_FUNCTION_26_23()
{
  v3 = v0 + 16 * v1;
  v4 = *(v2 - 120);
  *(v3 + 32) = *(v2 - 128);
  *(v3 + 40) = v4;
}

unint64_t OUTLINED_FUNCTION_29_21()
{
  *(v2 + 16) = v0;
  v4 = *(v3 + 32);
  return v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1;
}

__n128 OUTLINED_FUNCTION_34_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __n128 a12, uint64_t a13)
{
  *v13 = a10;
  *(v13 + 16) = a11;
  result = a12;
  *(v13 + 32) = a12;
  *(v13 + 48) = a13;
  return result;
}

__n128 OUTLINED_FUNCTION_40_16()
{
  v2 = *(v1 + 16);
  *(v0 + 3072) = *v1;
  *(v0 + 3088) = v2;
  result = *(v1 + 32);
  *(v0 + 3104) = result;
  *(v0 + 3120) = *(v1 + 48);
  return result;
}

__n128 OUTLINED_FUNCTION_42_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15, __int128 a16, __int128 a17)
{
  v22 = *(v19 + 1168);
  v20 = *(v19 + 1160);
  *(v19 + 480) = v18;
  *(v19 + 880) = a17;
  *(v19 + 896) = a16;
  result = a15;
  *(v19 + 912) = a15;
  *(v19 + 928) = v17;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_9()
{
  v1 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = *(v0 + 176);
  *(v0 + 488) = *(v0 + 520);
  v2 = *(*(v0 + 472) + 80);
  *(v0 + 496) = v2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_45_15()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_47_12()
{
  v3 = *(v2 + 496);
  v4 = *(v2 + 464);
  v5 = *(v1 + 16);
  *(v0 + 224) = *v1;
  *(v0 + 240) = v5;
  result = *(v1 + 32);
  *(v0 + 256) = result;
  *(v0 + 272) = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_13@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = v1 + 8;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_49_15(uint64_t a1, __n128 a2)
{
  *(v3 + 200) = a2;
  *(v3 + 216) = v2;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 312) = v4;
  *(v3 + 320) = a1;
  return v3 + 200;
}

uint64_t OUTLINED_FUNCTION_50_12(uint64_t a1, __n128 a2)
{
  *(v3 + 200) = a2;
  *(v3 + 216) = v2;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 312) = v4;
  *(v3 + 320) = a1;
  return v3 + 200;
}

__n128 OUTLINED_FUNCTION_55_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __n128 a23, uint64_t a24)
{
  *(v24 + 144) = a21;
  *(v24 + 160) = a22;
  result = a23;
  *(v24 + 176) = a23;
  *(v24 + 192) = a24;
  return result;
}

__n128 OUTLINED_FUNCTION_56_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __n128 a12, uint64_t a13)
{
  *v13 = a10;
  *(v13 + 16) = a11;
  result = a12;
  *(v13 + 32) = a12;
  *(v13 + 48) = a13;
  return result;
}

__n128 OUTLINED_FUNCTION_57_13()
{
  *(v0 + 160) = *(v0 + 64);
  v1 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v1;
  result = *(v0 + 48);
  *(v0 + 144) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_59_6()
{
  v1 = *(v0 + 136);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = *(v3 + 56);
  return v2;
}

uint64_t OUTLINED_FUNCTION_60_14()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  result = v1 + 104;
  v3 = *(v1 + 104);
  return result;
}

__n128 OUTLINED_FUNCTION_61_7()
{
  v6 = *(*(v0 + 904) + 56);
  result = *(v0 + 176);
  v4 = *(v0 + 192);
  v2 = *(v0 + 208);
  v3 = *(v0 + 224);
  v5 = *(v0 + 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_62_11()
{
  *(v0 + 448) = 0;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 400) = 0u;
  return v0 + 400;
}

uint64_t OUTLINED_FUNCTION_63_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(a16 + 48) = 0;
  *(a16 + 16) = 0u;
  *(a16 + 32) = 0u;
  *a16 = 0u;
  return a16;
}

__n128 OUTLINED_FUNCTION_64_14()
{
  v2 = *(v0 + 4272);
  v3 = *(v1 + 16);
  *(v0 + 3296) = *v1;
  *(v0 + 3312) = v3;
  result = *(v1 + 32);
  *(v0 + 3328) = result;
  *(v0 + 3344) = *(v1 + 48);
  return result;
}

__n128 OUTLINED_FUNCTION_65_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __n128 a13, uint64_t a14)
{
  v15 = *(v14 + 4256);
  *v15 = a11;
  *(v15 + 16) = a12;
  result = a13;
  *(v15 + 32) = a13;
  *(v15 + 48) = a14;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_12()
{
  v1 = v0[38];
  result = v0[36];
  v5 = v0[35];
  v3 = v0[32];
  v4 = *(v0[33] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_70_9()
{
  __swift_project_boxed_opaque_existential_1((v0 + 128), v1);
  result = v2 + 40;
  v4 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_71_11()
{
  __swift_project_boxed_opaque_existential_1((v0 + 128), v1);
  result = v2 + 40;
  v5 = *(v2 + 40);
  *(v3 - 88) = v2 + 40;
  return result;
}

__n128 OUTLINED_FUNCTION_74_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = *(v19 + 120);
  *a19 = *(v19 + 104);
  *(a19 + 16) = v20;
  result = *(v19 + 136);
  *(a19 + 32) = result;
  *(a19 + 48) = *(v19 + 152);
  return result;
}

__n128 OUTLINED_FUNCTION_76_8()
{
  v1 = *(v0 + 904);
  v3 = *(v1 + 16);
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(v0 + 232) = *v1;
  *(v0 + 280) = v4;
  *(v0 + 264) = result;
  *(v0 + 248) = v3;
  return result;
}

void OUTLINED_FUNCTION_77_8(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *(v10 + 24) = a2;
  *(v10 + 40) = a3;
  *(v9 + 2600) = a1;
  *(v9 + 2608) = v4;
  *(v9 + 2616) = v5;
  *(v9 + 2624) = v8;
  *(v10 + 88) = a4;
  *(v9 + 2648) = v6;
  *(v9 + 2656) = v7;
}

uint64_t OUTLINED_FUNCTION_78_7()
{
  *(v0 + 72) = *(v0 + 184);
  *(v0 + 88) = *(v0 + 200);
  *(v0 + 104) = *(v0 + 216);
  *(v0 + 120) = *(v0 + 232);
  v2 = *(v0 + 464);
  return *(v0 + 472);
}

void OUTLINED_FUNCTION_79_10(uint64_t a1@<X8>)
{
  v1[41] = a1;
  v1[30] = 0xE000000000000000;
  v3 = v1[1];
  v2 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[6] >> 62;
}

uint64_t OUTLINED_FUNCTION_83_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v16 = *(v14 + 32);
  *(a1 + 32) = *(v14 + 16);
  *(a1 + 48) = v16;
  *(a1 + 64) = *(v14 + 48);
  *(a1 + 80) = *(v14 + 64);
  *(a1 + 88) = v15;
  *(a1 + 96) = a12;
  *(a1 + 104) = v13;
  return v12;
}

__n128 OUTLINED_FUNCTION_85_9()
{
  v2 = *v0;
  v3 = v0[1];
  result = v0[2];
  v4 = *(v0 + 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_86_7()
{
  *(v1 + 3008) = 0;
  *(v1 + 2992) = 0u;
  *(v1 + 2976) = 0u;
  *(v1 + 2960) = 0u;
  *v0 = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  *(v1 + 3064) = 0;
  return v2;
}

__n128 OUTLINED_FUNCTION_88_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __n128 a12)
{
  *v12 = a10;
  v12[1] = a11;
  result = a12;
  v12[2] = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_90_10()
{
  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = *(v0[24] + 32);
  return v0[25];
}

void OUTLINED_FUNCTION_91_9()
{
  *(v0 + 16) = v1;
  v5 = v0 + v3;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_92_9()
{
  v2 = v0[39];
  result = v0[40];
  v3 = v0[32];
  v4 = *(v0[33] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_96_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 2736);
  return *(v2 + 2728);
}

uint64_t OUTLINED_FUNCTION_97_9(uint64_t result)
{
  v2 = *(result + 16);
  v5 = v1[121];
  v3 = v1[120];
  v4 = v1[115];
  v6 = v1[113];
  return result;
}

uint64_t OUTLINED_FUNCTION_98_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_100_9()
{
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[120];
  v6 = v0[123];
}

__n128 OUTLINED_FUNCTION_102_8()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  *(v1 + 32) = result;
  v4 = *(v0 + 48);
  return result;
}

__n128 OUTLINED_FUNCTION_104_7()
{
  v2 = *(v0 + 16);
  *(v1 + 3072) = *v0;
  *(v1 + 3088) = v2;
  result = *(v0 + 32);
  *(v1 + 3104) = result;
  *(v1 + 3120) = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_105_9(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_106_6()
{

  return swift_once();
}

void OUTLINED_FUNCTION_107_7()
{
  v2[12] = sub_2172AB494;
  v2[13] = v0;
  v2[14] = v1;
}

uint64_t OUTLINED_FUNCTION_108_9()
{
  result = v0;
  *(v2 - 80) = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_109_8()
{
  v1 = v0[458];
  v2 = v0[459];
  __swift_project_boxed_opaque_existential_1(v0 + 455, v1);

  return MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v1, v2, (v0 + 333));
}

uint64_t OUTLINED_FUNCTION_110_7()
{
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[32];
  v5 = v0[33];

  return sub_2177513F8();
}

uint64_t OUTLINED_FUNCTION_112_10()
{
  v1 = v0[38];
  result = v0[36];
  v5 = v0[35];
  v3 = v0[32];
  v4 = *(v0[33] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_114_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2;
  v5 = *(v3 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_116_11()
{
  v3 = *(v1 + 480);
  v4 = *(v1 + 488);
  v5 = *(v1 + 464);
  v6 = *(v0 + 16);
  *(v1 + 352) = *v0;
  *(v1 + 368) = v6;
  *(v1 + 384) = *(v0 + 32);
  *(v1 + 400) = *(v0 + 48);

  return sub_217751DE8();
}

__n128 OUTLINED_FUNCTION_117_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 16);
  *a10 = *v10;
  *(a10 + 16) = v11;
  result = *(v10 + 32);
  *(a10 + 32) = result;
  *(a10 + 48) = *(v10 + 48);
  return result;
}

void OUTLINED_FUNCTION_120_7()
{
  v2 = *(v0 - 208);
  v1 = *(v0 - 200);
  v3 = *(v0 - 192);
  v4 = *(*(v0 - 216) + 16);
}

void OUTLINED_FUNCTION_121_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v25 = (a22 + 16 * v23);
  v26 = v25[1];
  *(v24 + 16) = *v25;
  *(v24 + 24) = v26;
  v27 = *(a23 + 16);
}

uint64_t OUTLINED_FUNCTION_122_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 504);
  return v2 + 16;
}

__n128 OUTLINED_FUNCTION_125_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __n128 a12)
{
  *v12 = a10;
  v12[1] = a11;
  result = a12;
  v12[2] = a12;
  return result;
}

void OUTLINED_FUNCTION_130_8(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *(v10 + 24) = a2;
  *(v10 + 40) = a3;
  *(v9 + 2600) = a1;
  *(v9 + 2608) = v4;
  *(v9 + 2616) = v5;
  *(v9 + 2624) = v8;
  *(v10 + 88) = a4;
  *(v9 + 2648) = v6;
  *(v9 + 2656) = v7;
}

void OUTLINED_FUNCTION_133_9()
{
  v1 = v0[121];
  v2 = v0[120];
  v3 = v0[115];
}

__n128 OUTLINED_FUNCTION_137_6()
{
  v2 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v2;
  result = *(v1 + 32);
  *(v0 + 32) = result;
  v4 = *(v1 + 48);
  return result;
}

double OUTLINED_FUNCTION_138_4()
{
  result = 0.0;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 208) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_140_8()
{
  result = v0 + 632;
  v3 = *(v1 + 24);
  return result;
}

__n128 OUTLINED_FUNCTION_142_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11, uint64_t a12)
{
  v13 = *(v12 + 4256);
  *v13 = a9;
  *(v13 + 16) = a10;
  result = a11;
  *(v13 + 32) = a11;
  *(v13 + 48) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_147_5()
{
  result = sub_21725CF00(v0, v2);
  *(v1 + 480) = 0;
  v4 = *(v1 + 384);
  v5 = *(v1 + 376) + 32;
  return result;
}

void OUTLINED_FUNCTION_148_5()
{

  JUMPOUT(0x21CEA23B0);
}

__n128 OUTLINED_FUNCTION_150_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v30[24] = a28;
  *&v30[16] = a27;
  *&v30[8] = a26;
  *v30 = a25;
  v28[9] = a23;
  v28[10] = a24;
  v28[11] = *v30;
  result = *&v30[9];
  *(v28 + 185) = *&v30[9];
  return result;
}

__n128 OUTLINED_FUNCTION_151_5()
{
  v2 = *(v1 + 560);
  v3 = *(v1 + 528);
  v4 = *(v0 + 16);
  *(v1 + 272) = *v0;
  *(v1 + 288) = v4;
  *(v1 + 304) = *(v0 + 32);
  result = *(v0 + 41);
  *(v1 + 313) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_152_8()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_153_6(uint64_t a1)
{
  result = sub_2172202A4(a1);
  v3 = *(v1 - 184);
  v4 = *(*(v1 - 216) + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_154_6()
{
  v2 = v0[50];
  result = v0[51];
  v3 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v7 = v0[42];
  v6 = v0[43];
  v9 = v0[40];
  v8 = v0[41];
  return result;
}

uint64_t OUTLINED_FUNCTION_156_7()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  *(v1 + 48) = *(v0 + 6);
  *(v1 + 16) = v4;
  *(v1 + 32) = v5;
  *v1 = v3;
  result = v2 + 8;
  v7 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_157_6()
{
  *(v1 + 2888) = v0;
  *(v1 + 2896) = 0;
  return 25705;
}

uint64_t OUTLINED_FUNCTION_158_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 576);
  v4 = *(v2 + 568);
  return v2 + 16;
}

__n128 OUTLINED_FUNCTION_163_4()
{
  v2 = *v0;
  v3 = v0[1];
  result = v0[2];
  v4 = *(v0 + 6);
  return result;
}

void OUTLINED_FUNCTION_164_5()
{
  *(v1 + 16) = v4;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_165_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 472);
  return v2 + 128;
}

uint64_t OUTLINED_FUNCTION_166_5(uint64_t a1, uint64_t a2)
{
  v2[116] = a1;
  v2[117] = a2;
  return v2[114];
}

uint64_t OUTLINED_FUNCTION_167_7()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 792), *(v0 + 816));
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 32);
  *(v0 + 872) = *(*v1 + 16);
  *(v0 + 880) = v2;
  *(v0 + 888) = v3;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_169_6()
{
  v1 = *(v0 + 104);
  sub_2172CB1B0(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  sub_2174417EC();
}

uint64_t OUTLINED_FUNCTION_170_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 392);
  v4 = *(v2 + 240);
  return result;
}

void OUTLINED_FUNCTION_172_6()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  v4 = v0[46];
  v5 = v0[47];
  v7 = v0[42];
  v6 = v0[43];
}

void OUTLINED_FUNCTION_173_7(void *a1@<X8>)
{
  v3 = v1[37];
  v2 = v1[38];
  v4 = v1[32];
  v5 = v1[33];
  v1[27] = *a1;
}

uint64_t OUTLINED_FUNCTION_174_5(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

__n128 OUTLINED_FUNCTION_175_5()
{
  v2 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v2;
  result = *(v1 + 32);
  *(v0 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_176_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2;
  v6 = *(v3 - 88);
  v5 = *(v3 - 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_177_5(uint64_t a1)
{
  *(v3 - 88) = a1;
  v4 = *(v2 + 8);
  return v1;
}

__n128 OUTLINED_FUNCTION_178_5()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  *(v1 + 32) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_181_5()
{
  v3 = *(v2 + 16);
  *v0 = *v2;
  *(v0 + 16) = v3;
  result = *(v2 + 32);
  *(v0 + 32) = result;
  *(v1 + 3064) = *(v1 + 2952);
  return result;
}

void OUTLINED_FUNCTION_183_5()
{
  v1 = *(v0 + 4272);
  *(v0 + 2536) = 0;
  *(v0 + 2544) = 1;
}

uint64_t OUTLINED_FUNCTION_184_4()
{

  return sub_2173B6DA4(0xD000000000000015, v3 | 0x8000000000000000, v1, 0, (v0 + 112), v2);
}

void OUTLINED_FUNCTION_185_2()
{
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_186_4()
{
  v2 = v0[61];
  v3 = v0[59];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[32];
  v7 = v0[33];

  return sub_2177513F8();
}

__n128 OUTLINED_FUNCTION_187_5@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = a2;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  v7 = *(v3 + 16);
  *(a1 + 48) = *v3;
  *(a1 + 64) = v7;
  result = *(v3 + 32);
  *(a1 + 80) = result;
  *(a1 + 96) = *(v3 + 48);
  *(a1 + 104) = v5;
  return result;
}

__n128 OUTLINED_FUNCTION_189_4()
{
  *(v1 + 176) = *(v1 + 232);
  v2 = *(v1 + 216);
  result = *(v1 + 200);
  v4 = *(v1 + 184);
  *(v1 + 144) = result;
  *(v1 + 160) = v2;
  *(v1 + 128) = v4;
  v5 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_191_4()
{
  v2 = v0[21];
  v3 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v2);

  return MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v2, v3, v1);
}

void *OUTLINED_FUNCTION_192_5()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1(v0 + 99);
  result = v0 + 1;
  v2 = v0[1];
  v3 = v0[122];
  return result;
}

uint64_t OUTLINED_FUNCTION_194_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 128);
  return v2 + 16;
}

uint64_t OUTLINED_FUNCTION_195_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 360);
  v5 = *(v3 + 344);
  return v2;
}

uint64_t OUTLINED_FUNCTION_196_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 360);
  v4 = *(v2 + 344);
  return v2 + 72;
}

uint64_t OUTLINED_FUNCTION_197_4(uint64_t result)
{
  *(result + 8) = v1;
  v6 = v3[71];
  v7 = v3[67];
  v8 = v3[66];
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_198_4(uint64_t result, uint64_t a2)
{
  *(v3 - 184) = result;
  *(v3 - 176) = a2;
  *(v3 - 216) = a2;
  v4 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_201_4()
{
  result = *(v1 - 184);
  v3 = *(v1 - 216);
  *(v1 - 160) = result;
  *(v1 - 152) = v3;
  *(v1 - 144) = v0;
  *(v1 - 136) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_208_4()
{
  v4 = v1[60];
  v5 = v1[61];
  v6 = v1[58];
  v7 = *(v2 + 16);
  *(v0 + 336) = *v2;
  *(v0 + 352) = v7;
  *(v0 + 368) = *(v2 + 32);
  *(v0 + 384) = *(v2 + 48);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_210_4()
{
  result = v0;
  v3 = *(v1 - 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_211_2()
{
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v6 = v0[40];
  v7 = v0[41];
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[37];
  v13 = v0[36];
  v11 = v0[46];

  return sub_2172CB230(v2, v11);
}

uint64_t OUTLINED_FUNCTION_212_2()
{
  *(v1 - 128) = v0;

  return sub_2172C8720();
}

uint64_t OUTLINED_FUNCTION_213_4()
{
  *(v0 + 952) = 0;
  *(v0 + 920) = 0u;
  *(v0 + 936) = 0u;
  *(v0 + 888) = 0u;
  *(v0 + 904) = 0u;
  *(v0 + 856) = 0u;
  *(v0 + 872) = 0u;
  *(v0 + 840) = 0u;

  return type metadata accessor for SharedRelatedItemStore();
}

__n128 OUTLINED_FUNCTION_215_4()
{
  v2[121].n128_u64[1] = v1;
  result = v2[87];
  v2[122] = result;
  v2[123].n128_u8[0] = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_216_4()
{
  *(v0 + 304) = 0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  return v0 + 1560;
}

__n128 OUTLINED_FUNCTION_218_2()
{
  v2 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v2;
  result = *(v1 + 32);
  *(v0 + 32) = result;
  return result;
}

double OUTLINED_FUNCTION_219_4()
{
  result = 0.0;
  v0[11] = 0u;
  v0[12] = 0u;
  v0[9] = 0u;
  v0[10] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_220_4()
{
  v2 = *(v0 + 488);
  v3 = *(v0 + 416);
  v7 = *(v0 + 400);
  v4 = *(v0 + 432);
  v5 = *(v0 + 448);

  return sub_217204DD0(v2);
}

__n128 OUTLINED_FUNCTION_221_4()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  *(v1 + 32) = *(v0 + 32);
  result = *(v0 + 41);
  *(v1 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_222_3()
{
  v1 = v0[31];
  v2 = v0[32];
  __swift_project_boxed_opaque_existential_1(v0 + 28, v1);
  v3 = *(v2 + 96);
  return v1;
}

__n128 OUTLINED_FUNCTION_223_3()
{
  v2 = *v0;
  v3 = v0[1];
  return v0[2];
}

uint64_t OUTLINED_FUNCTION_225_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 2752);
  return *(v2 + 2744);
}

__n128 OUTLINED_FUNCTION_226_4@<Q0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, __int128 a4, __int128 a5, __n128 a6)
{
  *a1 = a4;
  a1[1] = a5;
  result = a6;
  a1[2] = a6;
  return result;
}

double OUTLINED_FUNCTION_227_4()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_228_4()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  *(v1 + 32) = result;
  return result;
}

void OUTLINED_FUNCTION_229_3(uint64_t a1@<X8>)
{
  v4[325] = a1;
  v4[326] = v1;
  v4[327] = v2;
  v4[328] = v3;
}

uint64_t OUTLINED_FUNCTION_234_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 2736);
  return v2 + 584;
}

uint64_t OUTLINED_FUNCTION_235_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 2736);
  return v2 + 328;
}

uint64_t OUTLINED_FUNCTION_236_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 472);
  return v2 + 184;
}

double OUTLINED_FUNCTION_237_2()
{
  *(v0 + 336) = 0;
  result = 0.0;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 288) = 0u;
  return result;
}

void OUTLINED_FUNCTION_240_1()
{
  v3 = v1 + 16 * v0;
  v4 = *(v3 + 40);
  *(v2 - 128) = *(v3 + 32);
  *(v2 - 120) = v4;
  v5 = *(v4 + 16);
}

uint64_t OUTLINED_FUNCTION_244_0()
{
  v0[61] = v1;
  v2 = *(v0[59] + 80);
  v0[62] = v2;
  return v2;
}

double OUTLINED_FUNCTION_245_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = 0.0;
  *a10 = 0u;
  *(a10 + 16) = 0u;
  *(a10 + 32) = 0u;
  *(a10 + 48) = 0;
  return result;
}

void OUTLINED_FUNCTION_247_0(float a1)
{
  *v1 = a1;

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_248_0(float a1)
{
  *v1 = a1;

  JUMPOUT(0x21CEA23B0);
}

double OUTLINED_FUNCTION_250_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a12 + 48) = 0;
  result = 0.0;
  *(a12 + 16) = 0u;
  *(a12 + 32) = 0u;
  *a12 = 0u;
  *(v12 + 360) = -1;
  return result;
}

uint64_t OUTLINED_FUNCTION_252_0()
{

  return sub_2177513F8();
}

uint64_t OUTLINED_FUNCTION_253_0()
{

  return sub_2177513F8();
}

uint64_t OUTLINED_FUNCTION_254_0()
{

  return sub_2177513F8();
}

void OUTLINED_FUNCTION_258_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
}

uint64_t OUTLINED_FUNCTION_259()
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 152);
  v5 = *(v1 + 120);
  *(v0 + 48) = *(v1 + 168);
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  *v0 = v5;
}

void OUTLINED_FUNCTION_260()
{

  sub_2172CA2C4(v3, v4, v5, v2 + 32, v0, (v1 + 16), v1 + 32);
}

uint64_t OUTLINED_FUNCTION_261()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 48);
  v7 = *(v0 + 80);
  v6 = *(v0 + 64);
  v4 = *(v0 + 96);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_262(uint64_t a1, uint64_t a2)
{
  v3[64] = a1;
  v3[65] = a2;
  v3[59] = v4;
  v6 = *(v2 + 56);
  v3[66] = v6;
  v7 = *(v6 + 16);
}

uint64_t OUTLINED_FUNCTION_263()
{
  v4 = *(v2 + 2760);
  v5 = *(v2 + 2736);

  return sub_2171F0688(v2 + 456, v2 + 712, v1, v0);
}

uint64_t *OUTLINED_FUNCTION_264()
{
  v1 = v0[72];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[21];
  v5 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v4);
  v0[41] = v4;
  v0[42] = *(v5 + 8);

  return __swift_allocate_boxed_opaque_existential_0(v0 + 38);
}

uint64_t OUTLINED_FUNCTION_265()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 264));
  sub_2171F3F0C((v0 + 424), v0 + 264);
  __swift_destroy_boxed_opaque_existential_1((v0 + 344));
  v1 = *(v0 + 648);
  sub_2171F3F0C((v0 + 264), *(v0 + 512));
}

uint64_t OUTLINED_FUNCTION_266()
{
  v2 = *(v0 + 4192);
  __swift_project_boxed_opaque_existential_1((v0 + v1), *(v0 + 4184));
  v3 = *(v2 + 24);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_267()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_268()
{

  return sub_217751618();
}

uint64_t OUTLINED_FUNCTION_271()
{
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[44];
  v5 = v0[42];
  v8 = v0[39];
  v6 = v0[34];
}

__n128 OUTLINED_FUNCTION_273()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  *(v1 + 32) = result;
  return result;
}

void OUTLINED_FUNCTION_274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v22 = v19[52];
  v21 = v19[53];
  v24 = v19[46];
  v23 = v19[47];
  v19[39] = v20;
  v19[40] = a19;
}

uint64_t OUTLINED_FUNCTION_288(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_290(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = *(v2 + 24);

  return sub_217751DE8();
}

__n128 OUTLINED_FUNCTION_291()
{
  *(v0 + 120) = *(v1 + 112);
  v3 = *(v1 + 80);
  result = *(v1 + 96);
  *(v0 + 104) = result;
  *(v0 + 88) = v3;
  v4 = *(v1 + 184);
  return result;
}

uint64_t *OUTLINED_FUNCTION_292()
{
  v2 = v1[67];
  v3 = v1[66];
  v4 = v1[21];
  v5 = v1[22];
  __swift_project_boxed_opaque_existential_1(v0, v4);
  v1[41] = v4;
  v1[42] = *(v5 + 8);

  return __swift_allocate_boxed_opaque_existential_0(v1 + 38);
}

uint64_t *OUTLINED_FUNCTION_293()
{
  v2 = v1[41];
  sub_2171F3F0C((v0 + 88), v0 + 48);
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_1((v0 + 48), v3);
  v1[32] = v3;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 160));
}

void OUTLINED_FUNCTION_294(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6[47];
  v6[33] = 1;
  v6[34] = a1;
  v6[35] = a6;
}

uint64_t OUTLINED_FUNCTION_295()
{
  v2 = *v0;
  v3 = *(*v0 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  sub_217283C5C(v1, 0);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_296()
{
  sub_217283C5C(*(v2 + 592), *(v2 + 600));

  return sub_2171F0790(v2 + 592, v1, v0);
}

uint64_t OUTLINED_FUNCTION_297(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = v1 + 8;
  v3 = *(v1 + 8);
  return result;
}

__n128 OUTLINED_FUNCTION_302(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 16);
  *a12 = *v12;
  *(a12 + 16) = v13;
  *(a12 + 32) = *(v12 + 32);
  result = *(v12 + 41);
  *(a12 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_304()
{
  v3 = *(v1 + 552);
  v4 = *(v1 + 544);
  v5 = *(v1 + 528);
  v6 = v0[1];
  *(v1 + 400) = *v0;
  *(v1 + 416) = v6;
  *(v1 + 432) = v0[2];
  *(v1 + 441) = *(v0 + 41);

  return sub_217751DE8();
}

__n128 OUTLINED_FUNCTION_305(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17[24] = a15;
  *&v17[16] = a14;
  *&v17[8] = a13;
  *v17 = a12;
  *v15 = a10;
  v15[1] = a11;
  v15[2] = *v17;
  result = *&v17[9];
  *(v15 + 41) = *&v17[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_306()
{
  result = v0 + 32;
  v2 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_307(uint64_t result)
{
  *(v3 + 624) = result;
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 32) = v6;
  *(result + 40) = v5;
  *(result + 48) = v1;
  *(result + 56) = v7;
  return result;
}

uint64_t OUTLINED_FUNCTION_308()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

__n128 OUTLINED_FUNCTION_312()
{
  v2 = *v0;
  v3 = v0[1];
  return v0[2];
}

void OUTLINED_FUNCTION_316()
{
  v3 = v1 + 16 * v0;
  v4 = *(v3 + 40);
  *(v2 - 128) = *(v3 + 32);
  *(v2 - 120) = v4;
  v5 = *(v4 + 16);
}

void OUTLINED_FUNCTION_317()
{
  v3 = v0 + 16 * v1;
  v4 = *(v3 + 40);
  *(v2 - 128) = *(v3 + 32);
  *(v2 - 120) = v4;
  v5 = *(v4 + 16);
}

void OUTLINED_FUNCTION_318()
{
  *(v2 - 216) = v0;
  v3 = *(v1 + 24);
  v4 = *(v1 + 16) + 1;
}

__n128 OUTLINED_FUNCTION_320@<Q0>(_OWORD *a1@<X8>, __int128 a2, __int128 a3, __n128 a4)
{
  *a1 = a2;
  a1[1] = a3;
  result = a4;
  a1[2] = a4;
  return result;
}

double OUTLINED_FUNCTION_322()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  return result;
}

void *OUTLINED_FUNCTION_323(void *result)
{
  result[2] = v5;
  result[3] = v1;
  result[4] = v2;
  result[5] = v4;
  result[6] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_326()
{
  v2 = v0[68];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];

  return swift_task_alloc();
}

__n128 OUTLINED_FUNCTION_328()
{
  v2 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v2;
  result = *(v1 + 32);
  *(v0 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_332()
{
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[43];

  return sub_217441D1C(v3, v4, v5, v1 + 128);
}

void OUTLINED_FUNCTION_333(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = *(a19 + 32);
  v21 = *(a19 + 40);

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_334()
{

  return sub_2177513F8();
}

double OUTLINED_FUNCTION_335()
{
  v2 = *(v1 + 296);
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_336()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 520);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v4 + 8);

  return PropertyProviderBackedItem.staticPropertyProvider.getter(v3, v5);
}

uint64_t OUTLINED_FUNCTION_337()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_338()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_343(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_346()
{
  v2 = *(v1 + 832);
  sub_2171F3F0C(v0, v1 + 648);
  v3 = *(v1 + 680);
  __swift_project_boxed_opaque_existential_1((v1 + 648), *(v1 + 672));
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v1 + 369) = *(v2 + 56);
  result = v3 + 24;
  v8 = *(v3 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_348()
{

  return sub_217751308();
}

uint64_t OUTLINED_FUNCTION_353()
{
  result = v0[38];
  v2 = v0[32];
  v3 = *(v0[33] + 8);
  return result;
}

void OUTLINED_FUNCTION_358()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[125];
}

uint64_t OUTLINED_FUNCTION_359@<X0>(char a1@<W8>)
{
  *(v1 + 369) = a1;
  result = v2 + 24;
  v4 = *(v2 + 24);
  return result;
}

void OUTLINED_FUNCTION_363()
{
  v1 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
}

uint64_t OUTLINED_FUNCTION_367()
{
  v4 = *(v3 - 120);
  v5 = v0 + 16 * v1;
  *(v5 + 32) = *(v3 - 128);
  *(v5 + 40) = v4;
  return v2 + 104;
}

void OUTLINED_FUNCTION_371()
{
  *(v1 + 16) = v4;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_372(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  v19 = __swift_project_boxed_opaque_existential_1(a18, *(v18 + 816));
  v20 = *(*v19 + 16);
  v21 = *(*v19 + 24);
  v22 = *(*v19 + 32);

  return sub_217751DE8();
}

void *OUTLINED_FUNCTION_378()
{
  v1 = *(v0 + 496);
  v2 = v1[4];
  return __swift_project_boxed_opaque_existential_1(v1, v1[3]);
}

void OUTLINED_FUNCTION_381(unint64_t a1@<X8>)
{

  sub_2172B1A50(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_382()
{
  *(v0 + 584) = *(v0 + 664);
  v2 = *(v0 + 648);
  *(v0 + 552) = *(v0 + 632);
  *(v0 + 568) = v2;

  return __swift_destroy_boxed_opaque_existential_1((v0 + 592));
}

void *OUTLINED_FUNCTION_386()
{
  result = __swift_project_boxed_opaque_existential_1((v1 + 592), v2);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 56);
  return result;
}

void OUTLINED_FUNCTION_389()
{

  sub_2172768E8();
}

void OUTLINED_FUNCTION_390()
{
  v2 = *(v0 + 16) + 1;

  sub_2172768E8();
}

uint64_t OUTLINED_FUNCTION_394()
{
  v1 = v0[68];
  __swift_project_boxed_opaque_existential_1(v0 + 64, v0[67]);
  v2 = *(v1 + 24);
}

void OUTLINED_FUNCTION_395()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
}

uint64_t OUTLINED_FUNCTION_397()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[43];
  v4 = *(v0[44] + 8);
  return v0[45];
}

uint64_t OUTLINED_FUNCTION_398(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = v1 + 8;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_402()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return v0;
}

uint64_t OUTLINED_FUNCTION_403()
{
}

void OUTLINED_FUNCTION_405()
{

  JUMPOUT(0x21CEA23B0);
}

double OUTLINED_FUNCTION_407(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v11 - 16) = v10;
  *(v11 - 8) = 1;
  result = 0.0;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 72) = v12;
  *(v11 + 80) = a1;
  v14 = *(a10 + 16);
  return result;
}

double OUTLINED_FUNCTION_408()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_409()
{
  v3 = *(v1 - 216);
  v4 = *(v3 + 48);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
}

void OUTLINED_FUNCTION_410()
{

  sub_2172CA228(v3, v4, v1 + 32, v2, (v0 + 16));
}

uint64_t OUTLINED_FUNCTION_412(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = *(v17 + 488);

  return sub_217504048(v18, a17 == 0, v20);
}

uint64_t OUTLINED_FUNCTION_418()
{
  v3 = v0[56];
  v2 = v0[57];
  v5 = v0[54];
  v4 = v0[55];
  v7 = v0[52];
  v6 = v0[53];
  v9 = v0[50];
  v8 = v0[51];
  v11 = v0[48];
  v10 = v0[49];
}

void *OUTLINED_FUNCTION_425(void *a1, uint64_t a2)
{
  result = __swift_project_boxed_opaque_existential_1(a1, a2);
  v3 = *(*result + 16);
  v4 = *(*result + 24);
  v5 = *(*result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_426()
{
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  *(v2 + 48) = *(v0 + 6);
  *(v2 + 16) = v5;
  *(v2 + 32) = v6;
  *v2 = v4;

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t OUTLINED_FUNCTION_428()
{
  v2 = *(v0 + 336);

  return sub_2177522F8();
}

uint64_t OUTLINED_FUNCTION_434()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  v3 = *(v0 + 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_435()
{

  return sub_217751ED8();
}

uint64_t OUTLINED_FUNCTION_436()
{

  return sub_217751ED8();
}

uint64_t OUTLINED_FUNCTION_437()
{

  return sub_217751ED8();
}

uint64_t OUTLINED_FUNCTION_438()
{

  return sub_217751ED8();
}

uint64_t OUTLINED_FUNCTION_439()
{

  return sub_217751ED8();
}

uint64_t OUTLINED_FUNCTION_440()
{

  return sub_2177513F8();
}

uint64_t OUTLINED_FUNCTION_441()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_442()
{
  v4 = *(v2 + 2776);
  v5 = *(v2 + 2752);

  return sub_2171F0688(v2 + 456, v2 + 712, v1, v0);
}

__n128 OUTLINED_FUNCTION_445(__n128 a1, __n128 a2)
{
  *v2 = a1;
  v2[1] = a2;
  result = v3[2];
  v2[2] = result;
  v2[3].n128_u64[0] = v3[3].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_452()
{
  v2 = v0[51];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[31];
  v6 = v0[32];
  v7 = v0[33];

  return sub_217751348();
}

uint64_t OUTLINED_FUNCTION_454()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 112);
  v4 = *(v0 - 104);
  v5 = *(v0 - 96);

  return sub_2172C62BC(v4, v5);
}

uint64_t OUTLINED_FUNCTION_455()
{

  return type metadata accessor for AnyMusicProperty();
}

uint64_t OUTLINED_FUNCTION_456()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_457()
{
  v2 = v0[28];
  v0[15] = v2;
  v3 = v0[26];
  v4 = v0[23];

  return v2;
}

uint64_t OUTLINED_FUNCTION_458()
{

  return sub_2177521E8();
}

uint64_t OUTLINED_FUNCTION_461()
{
  __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_462()
{
  result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x18);
  return result;
}

uint64_t OUTLINED_FUNCTION_463()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_466()
{
  v1 = v0[55];
  v4 = v0[54];
  v3 = v0[46];
  v2 = v0[47];
}

void OUTLINED_FUNCTION_472()
{
  v1 = *(v0 + 232);
  v2 = *v1;
  v3 = v1[7];
}

uint64_t OUTLINED_FUNCTION_474()
{
  v2 = v0[46];
  result = v0[47];
  v3 = v0[44];
  v4 = v0[45];
  v5 = v0[43];
  return result;
}

__n128 OUTLINED_FUNCTION_475()
{
  v6 = *(*(v0 + 984) + 56);
  result = *(v0 + 704);
  v4 = *(v0 + 720);
  v2 = *(v0 + 736);
  v3 = *(v0 + 752);
  v5 = *(v0 + 744);
  return result;
}

uint64_t OUTLINED_FUNCTION_476()
{
}

double OUTLINED_FUNCTION_477(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v16 + 16) = v15;
  v20 = a11[1];
  v19 = a11[2];
  v21 = (v16 + (v17 << 6));
  v22 = *a11;
  *(v21 + 73) = *(a11 + 41);
  v21[3] = v20;
  v21[4] = v19;
  v21[2] = v22;
  *(a15 + 48) = 0;
  result = 0.0;
  *(a15 + 16) = 0u;
  *(a15 + 32) = 0u;
  *a15 = 0u;
  *(v18 + 568) = -2;
  return result;
}

uint64_t OUTLINED_FUNCTION_480()
{
  v3 = *(v0 + 672);
  v5 = *v1;
  v6 = v1[1];
  *v7 = v1[2];
  *&v7[9] = *(v1 + 41);

  return sub_217204DD0(v3);
}

void OUTLINED_FUNCTION_484()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x21CEA4360);
}

void OUTLINED_FUNCTION_485()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x21CEA4360);
}

uint64_t OUTLINED_FUNCTION_490()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 88);
  return result;
}

void *OUTLINED_FUNCTION_491(void *a1, uint64_t a2)
{
  result = __swift_project_boxed_opaque_existential_1(a1, a2);
  v4 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_492()
{
  v5 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_493()
{
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[115];
  v5 = v0[113];
}

uint64_t OUTLINED_FUNCTION_494()
{
  v4 = *(v1 - 1);
  v3 = *v1;
  v5 = *(v0 + 24);

  return sub_217751DE8();
}

void *OUTLINED_FUNCTION_495(uint64_t a1)
{
  v1[345] = a1;

  return memcpy(v1 + 165, v1 + 105, 0x78uLL);
}

void *OUTLINED_FUNCTION_496(uint64_t a1)
{
  *(v2 + 2760) = a1;

  return memcpy((v2 + 1320), v1, 0x78uLL);
}

double OUTLINED_FUNCTION_498()
{
  *(v0 + 416) = 0;
  result = 0.0;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_502(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __swift_destroy_boxed_opaque_existential_1((v11 + 144));

  return sub_21725EE54(a11 + 128, v12);
}

void OUTLINED_FUNCTION_507()
{
  v1 = *(v0 - 176);
  *(v0 - 216) = v1;
  v2 = *(v1 + 16);
}

void OUTLINED_FUNCTION_508()
{
  v3 = v0 + 16 * v1;
  v4 = *(v2 - 120);
  *(v3 + 32) = *(v2 - 128);
  *(v3 + 40) = v4;
}

__n128 OUTLINED_FUNCTION_512@<Q0>(__int128 *a1@<X8>)
{
  v2 = a1[1];
  result = a1[2];
  v3 = *(a1 + 6);
  v4 = *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_513()
{
  v1 = *(v0 + 2808);
  result = v0 + 8;
  v3 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_514(unint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  v4[3].n128_u64[0] = a1;
  v4[1] = a3;
  v4[2] = a4;
  *v4 = a2;
}

uint64_t OUTLINED_FUNCTION_518()
{
  result = v0[25];
  v2 = v0[23];
  v3 = *(v0[24] + 8);
  return result;
}

void OUTLINED_FUNCTION_528()
{
  v3 = v1[534];
  v1[518] = v0;
  v1[519] = v2;
}

__n128 OUTLINED_FUNCTION_531()
{
  result = *(v0 + 128);
  v2 = *(v0 + 144);
  v3 = *(v0 + 160);
  v4 = *(v0 + 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_534()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_535()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  v3 = *(v0 + 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_538@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[1];
  v6 = v1 + *v1;
  *(v2 + 2736) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_541()
{
  result = v0[1];
  v2 = v0 + *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_557()
{
  *(v0 + 304) = 0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 312) = -1;
  return v0 + 256;
}

uint64_t OUTLINED_FUNCTION_558()
{
  v1 = *(v0 + 2792);
  result = v0 + 8;
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_563()
{
  v1 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 57) = *(v0 + 185);
  *(v0 + 552) = *(v0 + 584);
  v2 = *(*(v0 + 536) + 80);
  *(v0 + 560) = v2;
  return v2;
}

__n128 OUTLINED_FUNCTION_564()
{
  v3 = *(v2 + 560);
  v4 = *(v2 + 528);
  v5 = *(v1 + 16);
  *(v0 + 256) = *v1;
  *(v0 + 272) = v5;
  *(v0 + 288) = *(v1 + 32);
  result = *(v1 + 41);
  *(v0 + 297) = result;
  return result;
}

unint64_t OUTLINED_FUNCTION_565(__n128 a1)
{
  v2[4] = a1;
  v3 = v1[32].n128_u64[1];
  v1[1] = a1;
  v1[2] = a1;
  v1[3].n128_u64[0] = 0;
  v1[3].n128_u8[8] = -1;
  v1[5] = a1;
  v1[6] = a1;
  v1[7].n128_u64[0] = 0;
  v1[7].n128_u8[8] = -1;
  v4 = *(v3 + 64);
  v1[33].n128_u64[0] = v4;
  return v4;
}

uint64_t OUTLINED_FUNCTION_567()
{
  *(v0 + 200) = *(v0 + 488);
  *(v0 + 208) = 1;

  return sub_217751DE8();
}

void *OUTLINED_FUNCTION_568()
{
  v2 = (*(v0 + 2736) + 32);

  return memcpy((v0 + 1976), v2, 0x59uLL);
}

void *OUTLINED_FUNCTION_569()
{
  sub_2171F3F0C(v1, (v0 + 40));
  v2 = v0[44];
  result = __swift_project_boxed_opaque_existential_1(v0 + 40, v0[43]);
  v4 = *(v2 + 40);
  return result;
}

void OUTLINED_FUNCTION_572(unint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *v4 = a4;
  v4[1] = a3;
  v4[2] = a2;
  v4[3].n128_u64[0] = a1;
}

__n128 OUTLINED_FUNCTION_573()
{
  v1 = *(v0 + 6);
  v3 = v0[1];
  result = v0[2];
  v4 = *v0;
  return result;
}

__n128 OUTLINED_FUNCTION_574()
{
  v1 = *(v0 + 6);
  v3 = v0[1];
  result = v0[2];
  v4 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_575()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 1048), *(v0 + 1072)) + 2;

  return sub_21729C5E8(v1, v0 + 1088);
}

uint64_t OUTLINED_FUNCTION_580()
{
  *(v0 + 432) = 0;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 440) = -1;
  return v0 + 384;
}

uint64_t OUTLINED_FUNCTION_586()
{
  v1 = v0[114];
  __swift_project_boxed_opaque_existential_1(v0 + 99, v0[102]);

  return sub_217442084();
}

uint64_t OUTLINED_FUNCTION_587()
{
  v1 = *(v0 + 2752);
  result = v0 + 8;
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_591()
{
  v1 = *(v0 + 536);
  result = v0 + 8;
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_592()
{
  v1 = *(v0 + 512);
  result = v0 + 8;
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_598()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  return *(v0 + 176);
}

uint64_t OUTLINED_FUNCTION_601(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 2752);
  return v2 + 584;
}

uint64_t OUTLINED_FUNCTION_602(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 2752);
  return v2 + 328;
}

uint64_t OUTLINED_FUNCTION_603(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 536);
  return v2 + 208;
}

double OUTLINED_FUNCTION_608()
{
  *(v1 + 80) = v0;
  *(v1 + 88) = v4;
  result = 0.0;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = v3;
  *(v1 + 176) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_609()
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_612()
{

  return sub_217752C78();
}

uint64_t OUTLINED_FUNCTION_613(uint64_t a1, uint64_t a2)
{
  v2[68] = a1;
  v2[69] = a2;
  v2[70] = v3;
}

uint64_t OUTLINED_FUNCTION_614(uint64_t a1, uint64_t a2)
{
  v2[64] = a1;
  v2[65] = a2;
  v2[66] = v3;
}

void OUTLINED_FUNCTION_615(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_616()
{
  v2 = v0[57];
  v3 = v0[46];
  v5 = v0[56];
}

void OUTLINED_FUNCTION_617(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_618()
{
  v4 = v0[51];
  v5 = v0[50];
  v2 = v0[46];
}

uint64_t OUTLINED_FUNCTION_619()
{

  return ResourceType.supportsFilteredByEquivalencies.getter();
}

void OUTLINED_FUNCTION_620()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_621()
{
  v2 = *(v0 + 48);

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_622()
{

  sub_217434F08();
}

uint64_t OUTLINED_FUNCTION_623()
{
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[31];
  v5 = v0[30] + 128;

  return sub_2172CA838(v5, (v0 + 21));
}

uint64_t OUTLINED_FUNCTION_624()
{

  return sub_2172CB1C4(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_626()
{

  return type metadata accessor for AnyMusicProperty();
}

__n128 OUTLINED_FUNCTION_627(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __n128 *a16, _OWORD *a17, uint64_t a18, __n128 a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23, _OWORD *a24)
{
  *(v25 + 480) = v27;
  *a24 = a21;
  *a17 = a20;
  result = a19;
  *a16 = a19;
  *(v25 + 936) = v24;
  *(v25 + 944) = v26;
  return result;
}

uint64_t OUTLINED_FUNCTION_628()
{
  v3 = *(v0 + 280);
  v4 = *(v0 + 272);
}

void OUTLINED_FUNCTION_629(__n128 a1)
{
  v1[44] = a1;
  v1[45].n128_u64[0] = v2;
  v1[45].n128_u64[1] = v5;
  v1[46].n128_u64[0] = v4;
  v1[46].n128_u64[1] = v6;
  v1[47].n128_u64[0] = v7;
  v8 = *(v3 + 64);
  v9 = *(v3 + 72);
  v10 = *(v3 + 80);
  v11 = *(v3 + 88);
}

uint64_t OUTLINED_FUNCTION_631()
{
  v2 = __swift_project_boxed_opaque_existential_1((v1 + 3760), v0) + 2;

  return sub_21729C5E8(v2, v1 + 3720);
}

uint64_t OUTLINED_FUNCTION_632()
{
  v2 = __swift_project_boxed_opaque_existential_1((v1 + 3560), v0) + 2;

  return sub_21729C5E8(v2, v1 + 3600);
}

uint64_t OUTLINED_FUNCTION_644()
{
  v1 = v0[81];
  __swift_destroy_boxed_opaque_existential_1(v0 + 43);
  __swift_destroy_boxed_opaque_existential_1(v0 + 33);
}

uint64_t OUTLINED_FUNCTION_645()
{
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[42];
  v7 = v0[39];
}

uint64_t OUTLINED_FUNCTION_646()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_648()
{

  return sub_2171F0688(v2 + 1784, v2 + 2360, v0, v1);
}

uint64_t OUTLINED_FUNCTION_649()
{

  return sub_2171F0688(v2 + 1784, v2 + 2264, v0, v1);
}

uint64_t OUTLINED_FUNCTION_650()
{

  return sub_2177521E8();
}

void OUTLINED_FUNCTION_651()
{
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = v0[18];
}

uint64_t OUTLINED_FUNCTION_652()
{
}

BOOL OUTLINED_FUNCTION_653()
{

  return sub_2173DD9E8();
}

uint64_t OUTLINED_FUNCTION_654()
{
}

__n128 OUTLINED_FUNCTION_658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  v45[16] = a44;
  *&v45[8] = a43;
  *v45 = a42;
  return *&v45[1];
}

__n128 OUTLINED_FUNCTION_659(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28, uint64_t a29, __int128 a30, __n128 a31, __int128 a32)
{
  *(v34 + 112) = a30;
  *(v34 + 128) = a32;
  result = a31;
  *(v34 + 144) = a27;
  *(v34 + 160) = a31;
  *(v34 + 176) = v32;
  *(v34 + 184) = v33;
  return result;
}

void OUTLINED_FUNCTION_661()
{
  *(v0 + 480) = 0;
  v2 = *(v0 + 384);
  v1 = *(v0 + 376) + 32;
}

uint64_t OUTLINED_FUNCTION_662()
{
  *(v1 + 2888) = v2;
  *(v1 + 2896) = 0;
  return v0;
}

uint64_t OUTLINED_FUNCTION_665(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *(v1 + 1048);
  v4 = v1;
  v5 = *(v1 + 1040);
  v6 = *(v4 + 1000);
  v7 = *(v4 + 984);
  return result;
}

uint64_t OUTLINED_FUNCTION_667()
{

  return sub_2171F0688(v2 + 696, v0, v3, v1);
}

uint64_t OUTLINED_FUNCTION_668()
{

  return sub_2171F0688(v0, v2 + 696, v3, v1);
}

uint64_t OUTLINED_FUNCTION_669()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_670()
{
  v3 = *(v0 + 896);
  v4 = *(v1 - 184);
  v5 = *(v1 - 216);
}

void OUTLINED_FUNCTION_671()
{

  sub_2172C9A08();
}

void OUTLINED_FUNCTION_672()
{

  sub_2172C98F0();
}

uint64_t OUTLINED_FUNCTION_673()
{
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[113];
}

void *OUTLINED_FUNCTION_674()
{
  v2 = (*(v0 + 2736) + 32);

  return memcpy((v0 + 1784), v2, 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_675()
{
}

void *OUTLINED_FUNCTION_676(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char __src)
{

  return memcpy((v31 + 16), &__src, 0x161uLL);
}

__n128 OUTLINED_FUNCTION_678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v27 = *(a27 + 16);
  *a9 = *a27;
  *(a9 + 16) = v27;
  *(a9 + 32) = *(a27 + 32);
  result = *(a27 + 41);
  *(a9 + 41) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_681()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_682(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = *(v18 + 672);

  return sub_217504048(v19, a18 == 0, v21);
}

__n128 OUTLINED_FUNCTION_685(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 + 128);
  *a16 = *(v16 + 112);
  *(a16 + 16) = v17;
  *(a16 + 32) = *(v16 + 144);
  result = *(v16 + 153);
  *(a16 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_687()
{
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[130];
  v6 = v0[133];
}

uint64_t OUTLINED_FUNCTION_691()
{
  v4 = *(v2 + 4320);

  return sub_2171F0790(v2 + 2960, v1, v0);
}

uint64_t OUTLINED_FUNCTION_692()
{
  v4 = *(v2 + 4296);

  return sub_2171F0790(v2 + 2960, v1, v0);
}

uint64_t OUTLINED_FUNCTION_693()
{

  return sub_2171F0688(v2 + 2960, v0, v1, v3);
}

uint64_t OUTLINED_FUNCTION_694()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_696()
{
  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 121) = *(v0 + 249);
  result = *(v0 + 536);
  v3 = *(v0 + 528);
  return result;
}

uint64_t OUTLINED_FUNCTION_697()
{
  v4 = v1[69];
  v5 = v1[68];
  v6 = v1[66];
  v7 = v2[1];
  v0[24] = *v2;
  v0[25] = v7;
  v0[26] = v2[2];
  *(v0 + 425) = *(v2 + 41);

  return sub_217751DE8();
}

double OUTLINED_FUNCTION_698()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_700(uint64_t a1)
{
  sub_2172202A4(a1);

  return sub_2172202A4(v1);
}

uint64_t OUTLINED_FUNCTION_714(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

__n128 OUTLINED_FUNCTION_752()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return *(v0 + 41);
}

void OUTLINED_FUNCTION_754()
{
  v1[91] = v0;
  v3 = v1[90];
  v1[77] = v2;
}

uint64_t OUTLINED_FUNCTION_755()
{
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 472), v1) + 2;

  return sub_21729C5E8(v2, v0 + 512);
}

void OUTLINED_FUNCTION_757(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = (a19 + 16 * v22);
  v25 = v24[1];
  *(v23 + 16) = *v24;
  *(v23 + 24) = v25;
  v26 = *(a22 + 16);
}

void OUTLINED_FUNCTION_759(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void OUTLINED_FUNCTION_764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = 0;
  *(v12 + 216) = v11;
  *(v12 + 224) = v10;
}

double OUTLINED_FUNCTION_765(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = 0.0;
  *a9 = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0;
  *(v9 + 880) = -1;
  return result;
}

uint64_t OUTLINED_FUNCTION_770()
{

  return type metadata accessor for AnyMusicProperty();
}

uint64_t OUTLINED_FUNCTION_771()
{

  return type metadata accessor for AnyMusicProperty();
}

uint64_t OUTLINED_FUNCTION_772()
{

  return type metadata accessor for AnyMusicProperty();
}

uint64_t OUTLINED_FUNCTION_773(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a9 + 16);

  return sub_217752C08();
}

uint64_t OUTLINED_FUNCTION_774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *(a13 + 16);

  return sub_217752C08();
}

uint64_t OUTLINED_FUNCTION_775(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(a14 + 8 * v14 + 32);
}

uint64_t OUTLINED_FUNCTION_776()
{

  return sub_217752C78();
}

uint64_t OUTLINED_FUNCTION_789(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{

  return sub_21729C0E8(a20, a21, (v21 - 80));
}

void OUTLINED_FUNCTION_790()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_792()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
}

uint64_t OUTLINED_FUNCTION_800()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v8 = *(v0 + 32);
  v4 = *(v0 + 80);
  v9 = *(v0 + 48);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_808()
{
  *(v0 + 640) = *(v0 + 760);
  v2 = *(v0 + 744);
  *(v0 + 608) = *(v0 + 728);
  *(v0 + 624) = v2;

  return __swift_destroy_boxed_opaque_existential_1((v0 + 648));
}

uint64_t OUTLINED_FUNCTION_809()
{
}

void *OUTLINED_FUNCTION_810@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + 1976), (a1 + 32), 0x59uLL);
}

void OUTLINED_FUNCTION_813(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v21 - 320);
  v24 = *(v21 - 312);
  v25 = *(v21 - 300);

  sub_217486228(a1, a2, a3, a4, a5, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t OUTLINED_FUNCTION_818()
{
  v2 = *(v0 + 4192);
  __swift_project_boxed_opaque_existential_1((v0 + v1), *(v0 + 4184));
  v3 = *(v2 + 24);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_821()
{
  v2 = *(v0 + 560);
  v3 = *(v0 + 72);

  return sub_217751DE8();
}

uint64_t *OUTLINED_FUNCTION_822()
{
  v4 = *(v2 + 16);
  v1[36] = v0;
  v1[37] = v2;

  return __swift_allocate_boxed_opaque_existential_0(v1 + 33);
}

uint64_t *OUTLINED_FUNCTION_823()
{
  v4 = *(v1 + 16);
  v2[36] = v0;
  v2[37] = v1;

  return __swift_allocate_boxed_opaque_existential_0(v2 + 33);
}

uint64_t OUTLINED_FUNCTION_824()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_828()
{
  v2 = *(*(v0 - 88) + 16);

  return sub_217752C08();
}

uint64_t OUTLINED_FUNCTION_829()
{
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[113];

  return sub_21733AB9C(v2);
}

uint64_t OUTLINED_FUNCTION_830()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_831()
{
  v3 = *v0;
  v4 = v0[1];
  *(v1 + 456) = v3;
  *(v1 + 464) = v4;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_832(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *(a16 + 8 * v16);
}

uint64_t OUTLINED_FUNCTION_834()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_837(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __src)
{

  return memcpy((v11 + 1456), &__src, 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_842()
{
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1480);

  return sub_217751DE8();
}

__n128 OUTLINED_FUNCTION_853(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  v48[24] = a46;
  *&v48[16] = a45;
  *&v48[8] = a44;
  *v48 = a43;
  *v46 = a2;
  *(v46 + 16) = a1;
  *(v46 + 32) = *v48;
  result = *&v48[9];
  *(v46 + 41) = *&v48[9];
  return result;
}

__n128 OUTLINED_FUNCTION_854()
{
  *v3 = v0[2];
  *&v3[9] = *(v0 + 41);
  v2 = *v0;
  return v0[1];
}

__n128 OUTLINED_FUNCTION_855()
{
  *v3 = v0[2];
  *&v3[9] = *(v0 + 41);
  v2 = *v0;
  return v0[1];
}

__n128 OUTLINED_FUNCTION_856()
{
  v2 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v2;
  *(v0 + 32) = *(v1 + 32);
  result = *(v1 + 41);
  *(v0 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_857()
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 152);
  v5 = *(v1 + 120);
  *(v0 + 41) = *(v1 + 161);
  v0[1] = v3;
  v0[2] = v4;
  *v0 = v5;
}

void OUTLINED_FUNCTION_861(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_862(uint64_t a1, uint64_t a2)
{
  v2[126] = a1;
  v2[127] = a2;
  return v2[124];
}

double OUTLINED_FUNCTION_866()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_867()
{
  v2 = v0[91];
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[86];

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_868(uint64_t a1, uint64_t a2)
{
  v3[87] = a1;
  v3[88] = a2;
  v3[82] = v4;
  v6 = *(v2 + 56);
  v3[89] = v6;
  v7 = *(v6 + 16);
}

uint64_t OUTLINED_FUNCTION_874(uint64_t a1, uint64_t a2)
{
  v2[60] = a1;
  v2[61] = a2;
  v2[62] = v3;
}

uint64_t OUTLINED_FUNCTION_875()
{

  return sub_2172CA838(v1 + 128, v0 + 112);
}

void OUTLINED_FUNCTION_876()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_877()
{
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[46];
  v5 = v0[47];
}

void OUTLINED_FUNCTION_878()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_879()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return v0;
}

double OUTLINED_FUNCTION_880()
{
  *(v0 + 480) = 0;
  result = 0.0;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;
  *(v0 + 432) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_881()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_882()
{
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 440);
  v5 = *(v0 + 448);
  v6 = *(v0 + 107);
}

uint64_t OUTLINED_FUNCTION_883(uint64_t a1, uint64_t a2)
{
  v2[61] = a1;
  v2[62] = a2;
  v2[63] = v3;
}

uint64_t OUTLINED_FUNCTION_884()
{
  v2 = v0[51];
  v3 = v0[47];
  v4 = v0[50];

  return sub_2172CB2E8(v3, v4);
}

double OUTLINED_FUNCTION_894()
{
  v1 = *(v0 + 408);
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  return result;
}

void OUTLINED_FUNCTION_898()
{

  JUMPOUT(0x21CEA4360);
}

uint64_t OUTLINED_FUNCTION_899()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_900()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_906(uint64_t a1)
{
  *(v2 + 272) = a1;

  sub_2177091D0(v1, (v2 + 272));
}

uint64_t OUTLINED_FUNCTION_907()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_908(void *a1, uint64_t a2)
{

  return sub_21770B480(a1, a2, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_909()
{
  *(v0 + 208) = *(v0 + 672);
  *(v0 + 216) = 1;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_910()
{
  v3 = *v0;
  v4 = v0[1];
  *(v1 + 640) = v3;
  *(v1 + 648) = v4;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_911()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_919()
{
  result = *(v0 + 344);
  v2 = *(v0 + 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_923()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_924@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
}

void OUTLINED_FUNCTION_925(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 208) = a1;
  *(v3 - 200) = a2;
  *(v3 - 192) = a3;

  sub_217492B20();
}

void *OUTLINED_FUNCTION_926()
{

  return memcpy((v0 + 840), (v0 + 960), 0x78uLL);
}

void *OUTLINED_FUNCTION_927()
{

  return memcpy((v0 + 456), (v0 + 584), 0x80uLL);
}

void *OUTLINED_FUNCTION_928()
{

  return memcpy((v0 + 200), (v0 + 328), 0x80uLL);
}

void *OUTLINED_FUNCTION_929()
{

  return memcpy((v1 + 1200), v0, 0x78uLL);
}

void *OUTLINED_FUNCTION_930()
{

  return memcpy((v0 + 1200), (v0 + 840), 0x78uLL);
}

void *OUTLINED_FUNCTION_931()
{

  return memcpy((v1 + 1320), v0, 0x78uLL);
}

void *OUTLINED_FUNCTION_932()
{

  return memcpy((v0 + 1320), (v0 + 840), 0x78uLL);
}

void *OUTLINED_FUNCTION_933()
{

  return memcpy((v1 + 1784), (v0 + 32), 0x59uLL);
}

void OUTLINED_FUNCTION_934()
{
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[15];
}

void *OUTLINED_FUNCTION_935()
{

  return memcpy(v0, (v1 + 16), 0x80uLL);
}

void *OUTLINED_FUNCTION_936(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __src)
{

  return memcpy((v11 + 1816), &__src, 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_937()
{
  v2 = *(v0 + 24);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_939(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
}

uint64_t OUTLINED_FUNCTION_941()
{
}

uint64_t OUTLINED_FUNCTION_942()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_943(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_944()
{

  return sub_2177515E8();
}

void OUTLINED_FUNCTION_945()
{

  sub_21744D3F0(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_959()
{
  v3 = v0[57];
  v2 = v0[58];
  v5 = v0[55];
  v4 = v0[56];
  v7 = v0[53];
  v6 = v0[54];
  v9 = v0[51];
  v8 = v0[52];
  v10 = v0[49];
  v11 = v0[50];
  v13 = v0[48];
}

void *OUTLINED_FUNCTION_962(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __src)
{

  return memcpy((v11 + 2176), &__src, 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_963()
{
  v2 = *(v0 + 24);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_966()
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_968(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;

  return sub_217751DE8();
}

void *OUTLINED_FUNCTION_974(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __src)
{

  return memcpy((v11 + 376), &__src, 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_975()
{
  v2 = *(v0 - 2);
  v3 = *(v0 - 1);
  v4 = *v0;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_976(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[120] = a2;
  v4[121] = a3;
  v4[122] = v3;
}

uint64_t OUTLINED_FUNCTION_977@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 824) = a1;
  *(v2 + 792) = v1;
}

void *OUTLINED_FUNCTION_978(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __src)
{

  return memcpy((v11 + 16), &__src, 0x161uLL);
}

void *OUTLINED_FUNCTION_979(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __src)
{

  return memcpy((v11 + 736), &__src, 0x161uLL);
}

void *OUTLINED_FUNCTION_980(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __src)
{

  return memcpy((v11 + 1096), &__src, 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_982(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_2171F0688(v11, a11, a3, a4);
}

uint64_t OUTLINED_FUNCTION_983()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_989(uint64_t result)
{
  *(result + 8) = sub_21747DD3C;
  v5 = v2[100];
  v6 = v2[96];
  v7 = v2[95];
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_999()
{
  sub_2171F3F0C((v0 + 264), *(v0 + 512));
}

uint64_t OUTLINED_FUNCTION_1000()
{
  sub_2171F3F0C((v0 + 264), *(v0 + 512));
}

void *OUTLINED_FUNCTION_1004(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __dst)
{

  return memcpy(&__dst, (v11 + 2176), 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_1005()
{
  v2 = *(v0 + 776);
  v3 = *(v0 + 784);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1006()
{
  v2 = *(v0 + 1832);
  v3 = *(v0 + 1840);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1007()
{
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1120);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1008()
{

  return sub_217751DE8();
}

__n128 OUTLINED_FUNCTION_1009(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v21[24] = a19;
  *&v21[16] = a18;
  *&v21[8] = a17;
  *v21 = a16;
  *v19 = a1;
  *(v19 + 16) = a2;
  *(v19 + 32) = *v21;
  result = *&v21[9];
  *(v19 + 41) = *&v21[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_1010()
{
  v0[69] = v1;
  v2 = *(v0[67] + 80);
  v0[70] = v2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_1020(uint64_t result)
{
  *(result + 8) = sub_217482654;
  v2 = *(v1 + 368);
  v3 = *(v1 + 352);
  return result;
}

void OUTLINED_FUNCTION_1026()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_1027()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_1028()
{

  return sub_21729C644(v0 + 4160);
}

uint64_t OUTLINED_FUNCTION_1030()
{

  return sub_217752BF8();
}

uint64_t OUTLINED_FUNCTION_1033()
{
  v3 = *(v0 + 8 * v1 + 32);
}

void OUTLINED_FUNCTION_1041()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_1044()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_1045()
{

  return sub_217751DE8();
}

id OUTLINED_FUNCTION_1046(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{

  return [a12 a2];
}

uint64_t OUTLINED_FUNCTION_1048()
{

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_1055()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
}

void OUTLINED_FUNCTION_1059(__n128 a1, __n128 a2, __n128 a3)
{
  v3[1] = a2;
  v3[2] = a3;
  *v3 = a1;
}

uint64_t OUTLINED_FUNCTION_1062()
{
  result = *(v0 - 1);
  v2 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1078()
{
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[39];
  v4 = v0[40];

  return sub_217752538();
}

uint64_t OUTLINED_FUNCTION_1079()
{
}

uint64_t OUTLINED_FUNCTION_1080()
{
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return __swift_mutable_project_boxed_opaque_existential_1(v0, v4);
}

uint64_t OUTLINED_FUNCTION_1081()
{
  v3 = *(v0 + 8 * v1 + 32);
}

uint64_t OUTLINED_FUNCTION_1082()
{

  return sub_217543868(v0);
}

uint64_t OUTLINED_FUNCTION_1083()
{
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
}

uint64_t OUTLINED_FUNCTION_1084()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_1085()
{

  return sub_21729C5E8(v0 + 32, v0 + 224);
}

uint64_t OUTLINED_FUNCTION_1086()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1087()
{
  v2 = *(*(v0 + 304) + 64);

  return sub_217204DD0(v2);
}

uint64_t OUTLINED_FUNCTION_1088()
{
  v2 = *(v0 + 336);
}

__n128 OUTLINED_FUNCTION_1094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a21, __int128 a22, uint64_t a23)
{
  *v23 = v28;
  *(v23 + 8) = 0;
  result = a21;
  *(v23 + 16) = a21;
  *(v23 + 32) = a22;
  *(v23 + 48) = a23;
  *(v23 + 56) = a14;
  *(v23 + 64) = a13;
  *(v23 + 72) = v27;
  *(v23 + 80) = v24;
  *(v23 + 88) = v25;
  *(v23 + 96) = v26;
  return result;
}

void *OUTLINED_FUNCTION_1097()
{
  v3[2] = v0;
  v3[3] = v2;

  return memcpy(v3 + 4, (v1 + 184), 0x49uLL);
}

void *OUTLINED_FUNCTION_1098()
{
  v3[2] = v0;
  v3[3] = v2;

  return memcpy(v3 + 4, (v1 + 184), 0x49uLL);
}

id OUTLINED_FUNCTION_1099(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return [v11 results];
}

uint64_t OUTLINED_FUNCTION_1103(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *(a17 + 8 * v17);
}

uint64_t OUTLINED_FUNCTION_1106()
{
  v2 = *v0;
  v3 = *(*v0 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  sub_217283C5C(v1, 0);

  return sub_217751DE8();
}

__n128 OUTLINED_FUNCTION_1108()
{
  v2 = *v0;
  v3 = v0[1];
  return v0[2];
}

__n128 OUTLINED_FUNCTION_1110()
{
  v2 = v0[1];
  result = v0[2];
  v3 = *(v0 + 6);
  v4 = *v0;
  return result;
}

void OUTLINED_FUNCTION_1112(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 32) = v7;
  *(a1 + 40) = a6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v6;
}

uint64_t OUTLINED_FUNCTION_1113()
{
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[125];
  v5 = v0[123];
}

uint64_t OUTLINED_FUNCTION_1115(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v15 = __swift_project_boxed_opaque_existential_1(a14, *(v14 + 896));
  v16 = *(*v15 + 16);
  v17 = *(*v15 + 24);
  v18 = *(*v15 + 32);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1117()
{
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[123];

  return sub_21733AB9C(v2);
}

uint64_t OUTLINED_FUNCTION_1119()
{
  v5 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1122()
{
  v3 = *(v0 + 8 * v1 + 32);
}

uint64_t OUTLINED_FUNCTION_1123()
{
  v4 = *(v3 - 120);
  v5 = v0 + 16 * v2;
  *(v5 + 32) = *(v3 - 128);
  *(v5 + 40) = v4;
  return v1 + 112;
}

void *OUTLINED_FUNCTION_1125(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char __src)
{

  return memcpy((v12 + 16), &__src, 0x161uLL);
}

__n128 OUTLINED_FUNCTION_1126@<Q0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 a6, __int128 a7, __n128 a8)
{
  *a1 = a6;
  a1[1] = a7;
  result = a8;
  a1[2] = a8;
  return result;
}

void OUTLINED_FUNCTION_1129()
{
  v3 = v0[534];
  v0[518] = v1;
  v0[519] = v2;
}

void OUTLINED_FUNCTION_1130(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
  *(a1 + 56) = a5;
}

uint64_t OUTLINED_FUNCTION_1133()
{
  result = *(v0 + 536);
  v2 = *(v0 + 528);
  return result;
}

uint64_t OUTLINED_FUNCTION_1136()
{
  result = *(v0 + 536);
  v2 = *(v0 + 528);
  return result;
}

uint64_t OUTLINED_FUNCTION_1144()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_1150(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1151(unint64_t *a1)
{

  return sub_217498F2C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_1157()
{
  v2 = *(v0 + 208);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_1166(uint64_t result)
{
  *(result + 8) = v1;
  *(v3 + 16) = v2;
  return result;
}

void OUTLINED_FUNCTION_1168()
{

  MusicAPI.Endpoint.applying(_:)();
}

__n128 OUTLINED_FUNCTION_1170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, __n128 a10, unsigned __int8 a11, unint64_t a12)
{
  v12[4].n128_u64[1] = a9;
  result = a10;
  v12[5] = a10;
  v12[6].n128_u8[0] = a11;
  v12[6].n128_u64[1] = a12;
  return result;
}

void *OUTLINED_FUNCTION_1177(void *a1)
{

  return memcpy(a1, (v1 + 840), 0x78uLL);
}

void *OUTLINED_FUNCTION_1178(void *a1)
{

  return memcpy(a1, v1, 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_1179()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_1182()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_1183()
{

  return sub_2172CA838(v1 + 128, v0 + 2648);
}

uint64_t OUTLINED_FUNCTION_1184()
{

  return sub_21754383C(v0);
}

uint64_t OUTLINED_FUNCTION_1185()
{
  v2 = *(v0 + 177);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1186()
{
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1187()
{
}

uint64_t OUTLINED_FUNCTION_1190(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2171F0688(v4 + 1560, v4 + 1440, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1191(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2171F0688(v4 + 1320, v4 + 2072, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1192(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2171F0688(v5 + 16, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1193()
{
  v2 = *v0;
  v3 = v0[1];
}

unint64_t OUTLINED_FUNCTION_1195()
{
  v3 = *(v0 + 520);

  return sub_2177334DC(v1, v3);
}

void OUTLINED_FUNCTION_1196()
{
  v2 = *(v0 + 488);

  JUMPOUT(0x21CEA2E30);
}

uint64_t OUTLINED_FUNCTION_1197()
{
  v2 = *(v0 - 88);

  return sub_217204DD0(v2);
}

uint64_t OUTLINED_FUNCTION_1198()
{
  *(v1 + 2552) = v0;

  return sub_217751DE8();
}

__n128 OUTLINED_FUNCTION_1207()
{
  v2 = *(v0 + 16);
  *(v1 + 3728) = *v0;
  *(v1 + 3744) = v2;
  result = *(v0 + 32);
  *(v1 + 3760) = result;
  *(v1 + 3776) = *(v0 + 48);
  return result;
}

void *OUTLINED_FUNCTION_1220(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char __src)
{

  return memcpy(a1, &__src, 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_1221()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_1223(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = *(v2 + 24);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1225(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2171F0688(v4 + 2960, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1227(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v13 + 16) = v11;
  v17 = v13 + 32 * v10;
  *(v17 + 32) = v14;
  *(v17 + 40) = a10;
  *(v17 + 48) = a9;
  *(v17 + 56) = v15;

  return __swift_destroy_boxed_opaque_existential_1((v12 + 320));
}

uint64_t OUTLINED_FUNCTION_1228(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 + 16);

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_1230()
{
  v2 = *(v0 + 352);
  v3 = *(v0 + 256);
}

uint64_t OUTLINED_FUNCTION_1231()
{
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
}

BOOL OUTLINED_FUNCTION_1232()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_1233()
{
}

BOOL OUTLINED_FUNCTION_1234()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_1235()
{
}

uint64_t OUTLINED_FUNCTION_1236()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1237()
{
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);

  return sub_2172CB2E8(v3, v2);
}

void *OUTLINED_FUNCTION_1238(void *a1)
{

  return memcpy(a1, (v1 + 624), 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_1239@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_1240()
{
}

uint64_t OUTLINED_FUNCTION_1241()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_1243()
{
  v2 = v0[128];
  v3 = v0[127];
  v4 = v0[123];
}

uint64_t OUTLINED_FUNCTION_1244@<X0>(char a1@<W8>)
{
  *(v2 + 952) = v1;
  *(v2 + 960) = v3;
  *(v2 + 968) = a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_1245()
{

  sub_2172C9A08();
}

uint64_t OUTLINED_FUNCTION_1246()
{
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
}

uint64_t OUTLINED_FUNCTION_1247()
{
}

void *OUTLINED_FUNCTION_1249(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;

  return memcpy(v2 + 23, v1, 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_1252()
{
  v2 = *(v0 + 352);
}

uint64_t OUTLINED_FUNCTION_1254()
{
  v2 = *v0;
  v3 = v0[1];
}

void OUTLINED_FUNCTION_1255()
{

  sub_21744D578(v0 - 128);
}

uint64_t OUTLINED_FUNCTION_1256()
{
  v2 = *(v0 - 192);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_1257()
{
}

uint64_t OUTLINED_FUNCTION_1258(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2171F0688(v4 + 840, v4 + 1080, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1259(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2171F0688(v4, v5 + 1080, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1260()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_1261()
{
  v2 = *(v0 + 16);

  os_unfair_lock_unlock(v2);
}

__n128 OUTLINED_FUNCTION_1264()
{
  result = *(v0 + 1120);
  v2 = *(v0 + 1136);
  *(v0 + 1160) = result;
  *(v0 + 1176) = v2;
  *(v0 + 1192) = *(v0 + 1152);
  return result;
}

uint64_t OUTLINED_FUNCTION_1265()
{

  return sub_2177522F8();
}

uint64_t OUTLINED_FUNCTION_1266()
{
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
}

uint64_t OUTLINED_FUNCTION_1267()
{
  v2 = v0[39];
  v4 = v0[38];
  v5 = v0[37];
  v6 = v0[36];
  v7 = v0[35];
  v8 = v0[34];
}

uint64_t OUTLINED_FUNCTION_1268()
{

  return sub_2177522F8();
}

uint64_t OUTLINED_FUNCTION_1269(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(a12 + 8 * v12);
}

uint64_t OUTLINED_FUNCTION_1271()
{
  v2 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_1272()
{
  *(v0 + 656) = *(v0 + 776);
  v2 = *(v0 + 760);
  *(v0 + 624) = *(v0 + 744);
  *(v0 + 640) = v2;

  return __swift_destroy_boxed_opaque_existential_1((v0 + 664));
}

void OUTLINED_FUNCTION_1273()
{
  v3[3] = v2;
  v3[4] = v0;
  v3[2] = v1;
}

uint64_t OUTLINED_FUNCTION_1276()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1282(uint64_t result)
{
  *(result + 8) = v1;
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1288()
{

  return sub_217752D08();
}

__n128 OUTLINED_FUNCTION_1290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19[16] = a17;
  *&v19[8] = a16;
  *v19 = a15;
  result = *&v19[1];
  *(v17 + 41) = *&v19[1];
  return result;
}

double OUTLINED_FUNCTION_1291()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  *(v1 + 3024) = -1;
  return result;
}

void *OUTLINED_FUNCTION_1293()
{
  v3 = *(v0 + 392);

  return memcpy(v3, v1, 0x68uLL);
}

void *OUTLINED_FUNCTION_1294(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__src)
{
  v13 = *(v11 + 392);

  return memcpy(v13, __src, 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_1296()
{
  v2 = *(v0 + 120);
}

uint64_t OUTLINED_FUNCTION_1298()
{

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_1303()
{
  v2 = *(*(v0 + 56) + 16);

  os_unfair_lock_assert_owner(v2);
}

uint64_t OUTLINED_FUNCTION_1306()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_1309()
{
  v3 = *(v1 + 504);

  return sub_2172C3638(v0);
}

uint64_t OUTLINED_FUNCTION_1310()
{
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
}

uint64_t OUTLINED_FUNCTION_1311()
{
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
}

uint64_t OUTLINED_FUNCTION_1312()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_1313()
{
  v2 = *(v0 + 57);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1314()
{
}

uint64_t OUTLINED_FUNCTION_1315()
{
}

uint64_t OUTLINED_FUNCTION_1316()
{
  *(v1 + 984) = v0;
}

uint64_t OUTLINED_FUNCTION_1317()
{
  v2 = *(v0 + 944);
  v3 = *(v0 + 936);
}

uint64_t OUTLINED_FUNCTION_1318()
{
  *(v0 + 944) = v1;
  v3 = *(v0 + 920);
}

uint64_t OUTLINED_FUNCTION_1319(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2171F0688(v4, v5 + 288, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1320()
{

  return sub_2172CA838(v0 + 128, v1 + 2648);
}

uint64_t OUTLINED_FUNCTION_1321()
{
}

uint64_t OUTLINED_FUNCTION_1323@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8 * v1);
}

uint64_t OUTLINED_FUNCTION_1324(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_21749A584(v4 + 3464, v4 + 2960, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1325()
{
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1326()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1327()
{

  return sub_21729C644(v0 + 4160);
}

uint64_t OUTLINED_FUNCTION_1328()
{
}

uint64_t OUTLINED_FUNCTION_1343()
{
  v1 = v0[124];
  __swift_project_boxed_opaque_existential_1(v0 + 109, v0[112]);

  return sub_217442084();
}

void OUTLINED_FUNCTION_1344(__n128 a1, __n128 a2, __n128 a3)
{
  *(v5 + 808) = v3;
  v4[1] = a2;
  v4[2] = a1;
  *v4 = a3;
}

void OUTLINED_FUNCTION_1346(__n128 a1)
{
  *v1 = a1;
  v1[1] = a1;
  v1[2] = a1;
  v1[3].n128_u64[0] = 0;
}

uint64_t OUTLINED_FUNCTION_1347()
{

  return sub_2172CA838(v1 + 128, v0 + 2664);
}

void OUTLINED_FUNCTION_1349()
{

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_1350(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void OUTLINED_FUNCTION_1351(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_1356()
{
  v1 = *(v0 + 161);
  v3 = *(v0 + 176);
  return *(v0 + 184);
}

uint64_t OUTLINED_FUNCTION_1357()
{

  return sub_217753058();
}

void OUTLINED_FUNCTION_1358()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_1362()
{
}

uint64_t OUTLINED_FUNCTION_1363(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_217204DD0(a14);
}

uint64_t OUTLINED_FUNCTION_1364()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_1365()
{
  v2 = *(v0 + 328);
  v3 = *(v0 + 280);
}

void OUTLINED_FUNCTION_1366()
{
  v3 = *(v0 + 336);
  v4 = *(v0 + 288);
}

void OUTLINED_FUNCTION_1367()
{
  v3 = v0[42];
  v5 = v0[36];
  v4 = v0[37];
}

uint64_t OUTLINED_FUNCTION_1368()
{

  return sub_21749A32C(v0, v0 + 88);
}

uint64_t *OUTLINED_FUNCTION_1369@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 168) = v3;
  *(v2 + 176) = a1;

  return __swift_allocate_boxed_opaque_existential_0(v1);
}

id OUTLINED_FUNCTION_1370(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_1371()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_1372()
{
  v2 = *v0;
}

uint64_t OUTLINED_FUNCTION_1375()
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_1376()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_1377()
{
}

void OUTLINED_FUNCTION_1378()
{

  JUMPOUT(0x21CEA2E30);
}

id OUTLINED_FUNCTION_1379()
{
  v3 = *(v0 + 184);

  return v1;
}

id OUTLINED_FUNCTION_1380()
{

  return [v0 (v1 + 1672)];
}

uint64_t OUTLINED_FUNCTION_1382()
{

  return swift_dynamicCastClass();
}

uint64_t OUTLINED_FUNCTION_1384()
{

  return swift_task_alloc();
}

__n128 OUTLINED_FUNCTION_1386()
{
  result = *(v0 + 41);
  *(v1 + 41) = result;
  return result;
}

void OUTLINED_FUNCTION_1387()
{
  *(v0 + 16) = v4;
  v7 = v0 + 32 * v2;
  *(v7 + 32) = v6;
  *(v7 + 40) = v1;
  *(v7 + 48) = v3;
  *(v7 + 56) = v5;
}

uint64_t OUTLINED_FUNCTION_1388@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 400) = a1;
  *(v2 + 408) = v1;
  return 0x79747265706F7250;
}

uint64_t OUTLINED_FUNCTION_1402()
{

  return sub_21749A32C(v0 + 264, v0 + 424);
}

uint64_t OUTLINED_FUNCTION_1403@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 504) = a1;
  v3 = *(v1 + 80);

  return sub_217204DD0(v3);
}

uint64_t OUTLINED_FUNCTION_1404()
{

  return sub_2171F3F0C((v0 + 464), v0 + 424);
}

uint64_t OUTLINED_FUNCTION_1405()
{
  v2 = *(v0 + 728);
  v3 = *(v0 + 712);
}

uint64_t OUTLINED_FUNCTION_1406()
{
  v2 = *v0;
  v3 = v0[1];

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1407()
{

  return sub_217753058();
}

void OUTLINED_FUNCTION_1408()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_1409()
{
  v2 = *(v0 + 336);

  return sub_217752378();
}

uint64_t OUTLINED_FUNCTION_1415()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_1416@<X0>(uint64_t a1@<X8>, uint64_t a2, char a3)
{
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v3;
  *(a1 + 56) = a3;

  return __swift_destroy_boxed_opaque_existential_1((v4 + 240));
}

uint64_t OUTLINED_FUNCTION_1417()
{
  v3 = *(v0 + 976);
  v4 = *(v1 - 184);
  v5 = *(v1 - 216);
}

uint64_t OUTLINED_FUNCTION_1418()
{
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1040);
}

uint64_t OUTLINED_FUNCTION_1419()
{
  v3 = *(v0 - 2);
  v2 = *(v0 - 1);
  v4 = *v0;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[130] = a2;
  v4[131] = a3;
  v4[132] = v3;
}

uint64_t OUTLINED_FUNCTION_1421@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 904) = a1;
  *(v2 + 872) = v1;
}

uint64_t OUTLINED_FUNCTION_1422()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1423()
{
  v2 = *(v0 + 1832);
  v3 = *(v0 + 1840);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1424()
{
}

uint64_t OUTLINED_FUNCTION_1425()
{
  v2 = *(v0 - 96);

  return sub_217204DD0(v2);
}

void OUTLINED_FUNCTION_1426()
{
  v2 = *(v0 + 672);

  JUMPOUT(0x21CEA2E30);
}

unint64_t OUTLINED_FUNCTION_1427()
{
  v3 = *(v0 + 704);

  return sub_2177334DC(v1, v3);
}

uint64_t OUTLINED_FUNCTION_1428()
{

  return sub_2171F3F0C(v1, v0 + 240);
}

uint64_t OUTLINED_FUNCTION_1430()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_1431(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_2171F0688(v10, a10, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1435()
{

  return sub_217269F50(v0 + 2176);
}

void OUTLINED_FUNCTION_1442()
{
  *(v1 + 16) = v4;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_1450(uint64_t result)
{
  *(v2 + 1000) = result;
  *(v2 + 976) = v1;
  return result;
}

void OUTLINED_FUNCTION_1452()
{
  v1 = v0[181];
  v2 = v0[180];
  v3 = v0[179];
  v4 = v0[178];
}

__n128 OUTLINED_FUNCTION_1456@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, arg9_2174A2674 a9)
{
  result = *&a9.arr[1];
  *(a1 + 41) = *&a9.arr[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_1461(uint64_t result)
{
  *(result + 8) = v1;
  v4 = *(v2 + 440);
  v3 = *(v2 + 448);
  return result;
}

double OUTLINED_FUNCTION_1468(__n128 a1, __n128 a2, __n128 a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return 0.0;
}

void OUTLINED_FUNCTION_1476(uint64_t a1@<X8>)
{
  v3 = v1[50];
  v2 = v1[51];
  v1[33] = a1;
}

void *OUTLINED_FUNCTION_1480@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[2] = a2;
  result[3] = v2;
  result[4] = v3;
  result[5] = a2;
  return result;
}

void OUTLINED_FUNCTION_1482(uint64_t a1@<X8>)
{
  v3 = v1[50];
  v2 = v1[51];
  v1[33] = a1;
}

uint64_t OUTLINED_FUNCTION_1490()
{
  v1 = v0[44];
  v2 = *(v0[45] + 8);
  return v0[46];
}

uint64_t OUTLINED_FUNCTION_1498()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_1499(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v5 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v5;

  return sub_217751428();
}

uint64_t OUTLINED_FUNCTION_1500()
{
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[42];
  v7 = v0[39];
}

uint64_t OUTLINED_FUNCTION_1501(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_1502(uint64_t a1)
{
  *(v1 + 3952) = a1;

  return sub_21729C79C(v1 + 3544, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_1503(uint64_t a1)
{
  *(v1 + 3856) = a1;

  return sub_217275858(v1 + 3464, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_1504()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1505()
{
  if (*(v0 - 144) < 0)
  {
    v2 = *(v0 - 144);
  }

  return sub_217752D38();
}

uint64_t OUTLINED_FUNCTION_1506(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v7 = *(v5 + 56) + 56 * a1;

  return sub_217284130(v7, va);
}

uint64_t OUTLINED_FUNCTION_1507()
{

  return sub_2177522F8();
}

uint64_t OUTLINED_FUNCTION_1509@<X0>(uint64_t a1@<X8>)
{
  v1[57] = a1;
  v1[58] = a1;
  v3 = v1[52];

  return sub_217204DD0(v3);
}

void OUTLINED_FUNCTION_1510()
{
  v2 = *(v0 + 424);

  JUMPOUT(0x21CEA2E30);
}

uint64_t OUTLINED_FUNCTION_1511@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8 * v1);
}

uint64_t OUTLINED_FUNCTION_1512()
{
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
}

uint64_t OUTLINED_FUNCTION_1513()
{
  *(v1 + 472) = v0;
  v3 = *(v1 + 432);

  return sub_217204DD0(v3);
}

uint64_t OUTLINED_FUNCTION_1514()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_1515()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1516()
{
  v2 = *(v0 + 840);
  v3 = *(v0 + 824);
}

uint64_t OUTLINED_FUNCTION_1517()
{

  return sub_217752C78();
}

double OUTLINED_FUNCTION_1518()
{

  return sub_2172CED00();
}

uint64_t OUTLINED_FUNCTION_1519()
{
  *(v1 + 2736) = v0;

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1520()
{
  v2 = *(v0 + 408);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_1521(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{

  return sub_217488734(1, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1522(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_21749A584(v4 + 344, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1523(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_21749A584(v4 + 344, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1524(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2171F0688(v5, v4 + 264, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1525(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2171F0688(v5, v4 + 264, a3, a4);
}

uint64_t OUTLINED_FUNCTION_1527()
{
}

id OUTLINED_FUNCTION_1529(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_1530(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

unint64_t Album.LegacyModelAlbumPropertyKey.rawValue.getter()
{
  result = 0xD00000000000001BLL;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000002DLL;
      break;
    case 2:
    case 4:
    case 0x18:
      result = 0xD000000000000022;
      break;
    case 3:
    case 6:
    case 0xA:
      result = 0xD000000000000021;
      break;
    case 5:
    case 0x12:
      result = 0xD000000000000028;
      break;
    case 7:
      result = 0xD000000000000023;
      break;
    case 8:
    case 0xE:
      result = 0xD000000000000026;
      break;
    case 9:
    case 0x14:
      result = 0xD000000000000030;
      break;
    case 0xB:
    case 0xC:
    case 0x1A:
    case 0x1D:
      result = 0xD00000000000001ELL;
      break;
    case 0xD:
      result = 0xD000000000000020;
      break;
    case 0xF:
    case 0x10:
      result = 0xD00000000000001CLL;
      break;
    case 0x11:
    case 0x17:
      result = 0xD000000000000029;
      break;
    case 0x13:
    case 0x15:
    case 0x1F:
      result = 0xD00000000000002ALL;
      break;
    case 0x16:
      result = 0xD000000000000024;
      break;
    case 0x19:
      result = 0xD000000000000019;
      break;
    case 0x1B:
      result = 0xD00000000000001ALL;
      break;
    case 0x1C:
      result = 0xD000000000000018;
      break;
    case 0x1E:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Album.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v240 = a3;
  v236 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  OUTLINED_FUNCTION_6_1();
  v235 = v11 - v12;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v13, v14);
  v234 = &v224 - v15;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v16, v17);
  v233 = &v224 - v18;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v19, v20);
  v239 = &v224 - v21;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v22, v23);
  v232 = &v224 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28300, &qword_21776C428);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v224 - v28;
  v30 = type metadata accessor for AlbumPropertyProvider();
  v31 = OUTLINED_FUNCTION_43(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  OUTLINED_FUNCTION_6_1();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v224 - v40;
  memcpy(v251, a1, 0x161uLL);
  v241 = a2;
  if (([a2 respondsToSelector_] & 1) != 0 && (v42 = objc_msgSend(v241, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v43 = v42;
    v44 = sub_217751D98();
  }

  else
  {
    v44 = sub_217751DC8();
  }

  v45 = sub_21729F92C(v44);

  memcpy(v247, a1, 0x161uLL);
  if (qword_280BE8A88 != -1)
  {
    swift_once();
  }

  v245[0] = xmmword_280BE8A90;
  LOBYTE(v245[1]) = byte_280BE8AA0;
  v46 = qword_280BE8AE8;
  sub_217751DE8();
  if (v46 != -1)
  {
    swift_once();
  }

  v244[0] = xmmword_280BE8AF0;
  LOBYTE(v244[1]) = byte_280BE8B00;
  sub_217751DE8();
  v252.value.rawValue._countAndFlagsBits = v245;
  v252.value.rawValue._object = v244;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(v246, v252, v253);

  object = v246[0].id.rawValue._object;
  countAndFlagsBits = v246[0].type.rawValue._countAndFlagsBits;
  v47 = v246[0].type.rawValue._object;
  isLibraryType = v246[0].type.isLibraryType;
  v231 = v246[0].href.value._countAndFlagsBits;
  *&v242 = v246[0].href.value._object;
  sub_2171F5110(v240, v246, &qword_27CB27590, &qword_21776ADF0);
  v238 = a4;
  if (!v246[0].type.rawValue._object)
  {
    sub_2171F0738(v246, &qword_27CB27590, &qword_21776ADF0);
    memset(v247, 0, 40);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v247, 0, 40);
    goto LABEL_16;
  }

  if (!*(&v247[1] + 1))
  {
LABEL_16:
    sub_2171F0738(v247, &qword_27CB24B68, &qword_217759430);
    goto LABEL_17;
  }

  sub_2171F3F0C(v247, v248);
  v48 = v249;
  v49 = v250;
  __swift_project_boxed_opaque_existential_1(v248, v249);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  v50 = swift_dynamicCast();
  v51 = v242;
  if (v50)
  {
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
    sub_2174A5F48(v29, v37);
    sub_2174A5E88(v37, v41);
    memcpy(v247, v251, 0x161uLL);
    v52 = v30[68];
    memcpy(v244, (v37 + v52), 0x161uLL);
    memcpy(v243, (v37 + v52), sizeof(v243));
    sub_217269EF4(v244, v246);
    MusicIdentifierSet.union(_:)();
    memcpy(v245, v243, 0x161uLL);
    sub_217269F50(v245);
    sub_2174A5EEC(v37);
    v53 = v30[68];
    memcpy(v247, &v41[v53], 0x161uLL);
    sub_217269F50(v247);
    memcpy(&v41[v53], v246, 0x161uLL);
    v54 = &v41[v30[69]];
    v55 = *(v54 + 1);
    sub_217751DE8();

    *v54 = countAndFlagsBits;
    *(v54 + 1) = v47;
    v54[16] = isLibraryType;
    v56 = &v41[v30[70]];
    v57 = *(v56 + 8);

    *v56 = v231;
    *(v56 + 8) = v51;
    __swift_destroy_boxed_opaque_existential_1(v248);
    v58 = v233;
    goto LABEL_22;
  }

  __swift_storeEnumTagSinglePayload(v29, 1, 1, v30);
  sub_2171F0738(v29, &qword_27CB28300, &qword_21776C428);
  __swift_destroy_boxed_opaque_existential_1(v248);
LABEL_17:
  sub_217269EF4(v251, v247);
  sub_217751DE8();
  sub_217751DE8();
  v228 = OUTLINED_FUNCTION_10_27();
  v227 = OUTLINED_FUNCTION_10_27();
  v226 = OUTLINED_FUNCTION_10_27();
  v225 = OUTLINED_FUNCTION_10_27();
  sub_2172A497C(v247);
  memcpy(v41, v247, 0x221uLL);
  *(v41 + 552) = 0u;
  v59 = v30[6];
  v60 = sub_2177516D8();
  v56 = 1;
  __swift_storeEnumTagSinglePayload(&v41[v59], 1, 1, v60);
  *&v41[v30[7]] = 0;
  v61 = OUTLINED_FUNCTION_6_6(v30[8]);
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v60);
  OUTLINED_FUNCTION_5_42(v30[9]);
  OUTLINED_FUNCTION_5_42(v30[10]);
  v41[v30[11]] = 2;
  OUTLINED_FUNCTION_19_19(v30[12]);
  v64 = v30[13];
  v65 = sub_2177517D8();
  __swift_storeEnumTagSinglePayload(&v41[v64], 1, 1, v65);
  OUTLINED_FUNCTION_5_42(v30[14]);
  *&v41[v30[15]] = 0;
  v66 = &v41[v30[16]];
  v224 = xmmword_2177586D0;
  *v66 = xmmword_2177586D0;
  *(v66 + 1) = 0u;
  *(v66 + 2) = 0u;
  *(v66 + 3) = 0u;
  *&v41[v30[17]] = 0;
  v67 = OUTLINED_FUNCTION_6_6(v30[18]);
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v65);
  v41[v30[19]] = 3;
  *&v41[v30[20]] = 0;
  v41[v30[21]] = 2;
  v41[v30[22]] = 2;
  v41[v30[23]] = 2;
  v41[v30[24]] = 2;
  v41[v30[25]] = 2;
  v41[v30[26]] = 2;
  v41[v30[27]] = 2;
  v41[v30[28]] = 2;
  v41[v30[29]] = 2;
  v41[v30[30]] = 2;
  v41[v30[31]] = 5;
  v41[v30[32]] = 7;
  OUTLINED_FUNCTION_5_42(v30[33]);
  v70 = OUTLINED_FUNCTION_6_6(v30[34]);
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v65);
  v73 = OUTLINED_FUNCTION_6_6(v30[35]);
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v65);
  memcpy(&v41[v30[36]], v247, 0x221uLL);
  *&v41[v30[37]] = 0;
  v76 = &v41[v30[38]];
  *(v76 + 14) = 0;
  *(v76 + 5) = 0u;
  *(v76 + 6) = 0u;
  *(v76 + 3) = 0u;
  *(v76 + 4) = 0u;
  *(v76 + 1) = 0u;
  *(v76 + 2) = 0u;
  *v76 = 0u;
  OUTLINED_FUNCTION_19_19(v30[39]);
  v77 = OUTLINED_FUNCTION_6_6(v30[40]);
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v65);
  OUTLINED_FUNCTION_5_42(v30[41]);
  v41[v30[42]] = 2;
  v41[v30[43]] = 2;
  OUTLINED_FUNCTION_19_19(v30[44]);
  OUTLINED_FUNCTION_19_19(v30[45]);
  OUTLINED_FUNCTION_5_42(v30[46]);
  OUTLINED_FUNCTION_19_19(v30[47]);
  v80 = OUTLINED_FUNCTION_6_6(v30[48]);
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v60);
  OUTLINED_FUNCTION_19_19(v30[49]);
  v83 = &v41[v30[50]];
  *(v83 + 12) = 0;
  *(v83 + 4) = 0u;
  *(v83 + 5) = 0u;
  *(v83 + 2) = 0u;
  *(v83 + 3) = 0u;
  *v83 = 0u;
  *(v83 + 1) = 0u;
  OUTLINED_FUNCTION_0_58(v30[51], 0);
  OUTLINED_FUNCTION_0_58(v30[52], v84);
  OUTLINED_FUNCTION_0_58(v30[53], v85);
  OUTLINED_FUNCTION_0_58(v30[54], v86);
  OUTLINED_FUNCTION_0_58(v30[55], v87);
  OUTLINED_FUNCTION_0_58(v30[56], v88);
  OUTLINED_FUNCTION_0_58(v30[57], v89);
  OUTLINED_FUNCTION_0_58(v30[58], v90);
  OUTLINED_FUNCTION_0_58(v30[59], v91);
  OUTLINED_FUNCTION_0_58(v30[60], v92);
  *&v41[v30[61]] = 0;
  v93 = &v41[v30[62]];
  *v93 = v224;
  *(v93 + 2) = 0;
  *(v93 + 3) = 0;
  OUTLINED_FUNCTION_19_19(v30[63]);
  *&v41[v30[64]] = 0;
  v94 = &v41[v30[65]];
  v94[6] = v95;
  v94[7] = v95;
  v94[4] = v95;
  v94[5] = v95;
  v94[2] = v95;
  v94[3] = v95;
  *v94 = v95;
  v94[1] = v95;
  OUTLINED_FUNCTION_0_58(v30[66], v95);
  if (qword_280BE88A0 != -1)
  {
    swift_once();
  }

  v96 = qword_280C025A8;
  v58 = v233;
  if (qword_280C025A8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v56 = sub_217752D28();
    v97 = v242;

    object = v96;
    v96 = v56;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v97 = v242;
  }

  *&v41[v30[67]] = v96;
  v98 = &v41[v30[70]];
  memcpy(&v41[v30[68]], v251, 0x161uLL);
  v99 = &v41[v30[69]];
  *v99 = countAndFlagsBits;
  *(v99 + 1) = v47;
  v99[16] = isLibraryType;
  *v98 = v231;
  v98[1] = v97;
  v100 = v227;
  *&v41[v30[71]] = v228;
  *&v41[v30[72]] = v100;
  v101 = v225;
  *&v41[v30[73]] = v226;
  *&v41[v30[74]] = v101;
LABEL_22:
  v102 = v232;
  if (!*(v41 + 70))
  {
    v103 = sub_2174AAF3C(29, 11, v45);
    if (v104)
    {
      *(v41 + 69) = v103;
      *(v41 + 70) = v104;
    }
  }

  sub_2174AFBB4(v241, v243);
  if (*&v243[24])
  {
    sub_2171F3F0C(v243, v244);
    sub_2171FF30C(v244, v247);
    v246[0].id.rawValue._countAndFlagsBits = 1;
    v246[0].id.rawValue._object = 0;
    v246[0].type.rawValue._object = 0;
    v246[0].type.rawValue._countAndFlagsBits = 0;
    Artwork.init(_:alternateText:existingColorAnalysis:)(v247, 0, 0, v246, v245);
    memcpy(v246, v245, 0x221uLL);
    nullsub_1(v246, v105);
    memcpy(v247, v41, 0x221uLL);
    sub_2171F0738(v247, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v41, v246, 0x221uLL);
    __swift_destroy_boxed_opaque_existential_1(v244);
  }

  else
  {
    sub_2171F0738(v243, &qword_27CB28308, &qword_21776C430);
  }

  v106 = v30[7];
  if (!*&v41[v106])
  {
    v107 = sub_2172A3C10(27, v45);
    if ((v108 & 1) == 0)
    {
      v109 = [objc_opt_self() audioTraitsForRawValue_];
      v41[v30[21]] = v109 & 1;
      sub_217215924(0, &qword_280BE74C8, off_278228CF8);
      *&v41[v106] = sub_217659CB4(v109);
    }
  }

  v110 = sub_2172A3C10(1, v45);
  if ((v111 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v110, v30[9]);
  }

  v112 = sub_2172A3C10(2, v45);
  if ((v113 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v112, v30[10]);
  }

  v114 = &v41[v30[12]];
  if (!v114[1])
  {
    v115 = sub_2172A3D88(3, v45);
    if (v116)
    {
      *v114 = v115;
      v114[1] = v116;
    }
  }

  sub_2172A3D5C(v45, v102);
  *&v242 = sub_2177517D8();
  if (__swift_getEnumTagSinglePayload(v102, 1, v242) != 1)
  {
    v117 = v239;
    sub_2171F5110(v102, v239, &qword_27CB241C0, &qword_217759480);
    v56 = v30[13];
    sub_2171F0738(&v41[v56], &qword_27CB241C0, &qword_217759480);
    sub_217260E5C(v117, &v41[v56]);
  }

  sub_2171F0738(v102, &qword_27CB241C0, &qword_217759480);
  v118 = sub_2172A3C10(5, v45);
  if ((v119 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v118, v30[14]);
  }

  sub_2172A3CBC(8, v45);
  OUTLINED_FUNCTION_7_1();
  if (!v121)
  {
    v41[v30[11]] = v120 & 1;
  }

  sub_2172A3D5C(v45, v58);
  OUTLINED_FUNCTION_26_24(v58);
  if (!v121)
  {
    OUTLINED_FUNCTION_22_24();
    v122 = v30[18];
    sub_2171F0738(&v41[v122], &qword_27CB241C0, &qword_217759480);
    sub_217260E5C(v56, &v41[v122]);
  }

  sub_2171F0738(v58, &qword_27CB241C0, &qword_217759480);
  if (qword_280BE8040 != -1)
  {
    OUTLINED_FUNCTION_14_3();
  }

  v123 = qword_280BE8048;
  v124 = unk_280BE8050;
  v125 = byte_280BE8058;
  v126 = qword_280BE8060;
  v127 = unk_280BE8068;
  v128 = byte_280BE8070;
  *(&v247[1] + 1) = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  *&v247[2] = sub_2171FEF88();
  v129 = swift_allocObject();
  *&v247[0] = v129;
  *(v129 + 16) = v123;
  *(v129 + 24) = v124;
  *(v129 + 32) = v125;
  *(v129 + 40) = v126;
  *(v129 + 48) = v127;
  *(v129 + 56) = v128;
  LOBYTE(v123) = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v247);
  v130 = v234;
  if (v123)
  {
    sub_2172A3CBC(11, v45);
    OUTLINED_FUNCTION_7_1();
    if (!v121)
    {
      v132 = v131;
      sub_2172A3CBC(12, v45);
      OUTLINED_FUNCTION_7_1();
      if (!v121)
      {
        if (v132)
        {
          if (v133)
          {
            v135 = 0;
          }

          else
          {
            v135 = 2;
          }
        }

        else
        {
          v135 = v133 & 1;
        }

        goto LABEL_64;
      }
    }

    sub_2172A3CBC(12, v45);
    OUTLINED_FUNCTION_7_1();
    if (!v121 && (v134 & 1) != 0)
    {
      v135 = 1;
LABEL_64:
      v41[v30[19]] = v135;
      goto LABEL_65;
    }

    sub_2172A3CBC(11, v45);
    OUTLINED_FUNCTION_7_1();
    if (!v121 && (v136 & 1) != 0)
    {
      v135 = 2;
      goto LABEL_64;
    }
  }

LABEL_65:
  v137 = v30[20];
  if (!*&v41[v137])
  {
    v138 = sub_2174AADF4(30, 0, v45);
    if (v139)
    {
      v140 = v138;
      v141 = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_2177586E0;
      *(v142 + 32) = v140;
      *(v142 + 40) = v141;
      *&v41[v137] = v142;
    }
  }

  v143 = v30[22];
  if (v41[v143] == 2)
  {
    sub_2172A3CBC(9, v45);
    OUTLINED_FUNCTION_7_1();
    if (!v121)
    {
      v41[v143] = v144;
    }
  }

  v145 = v30[23];
  if (v41[v145] == 2)
  {
    sub_2172A3CBC(10, v45);
    OUTLINED_FUNCTION_7_1();
    if (!v121)
    {
      v41[v145] = v146;
    }
  }

  sub_2172A3CBC(13, v45);
  OUTLINED_FUNCTION_7_1();
  if (!v121)
  {
    v41[v30[25]] = v147;
  }

  sub_2172A3CBC(14, v45);
  OUTLINED_FUNCTION_7_1();
  if (!v121)
  {
    v41[v30[26]] = v148;
  }

  sub_2172A3CBC(15, v45);
  OUTLINED_FUNCTION_7_1();
  if (!v121)
  {
    v41[v30[27]] = v149;
  }

  v150 = v30[28];
  if (v41[v150] == 2)
  {
    sub_2172A3CBC(16, v45);
    OUTLINED_FUNCTION_7_1();
    if (!v121)
    {
      v41[v150] = v151;
    }
  }

  sub_2172A3CBC(17, v45);
  OUTLINED_FUNCTION_7_1();
  if (!v121)
  {
    v41[v30[30]] = v152;
  }

  v153 = sub_2172A3C10(18, v45);
  if ((v154 & 1) == 0)
  {
    v155 = [objc_opt_self() keepLocalEnabledStateForRawValue_];
    if (v155 < 5)
    {
      v41[v30[31]] = v155;
    }
  }

  swift_getKeyPath();
  sub_2174AE514();

  v156 = sub_2172A3C10(20, v45);
  if ((v157 & 1) == 0)
  {
    v158 = [objc_opt_self() keepLocalManagedStatusReasonsForRawValue_];
    v159 = &v41[v30[33]];
    *v159 = v158 & 0x7F;
    v159[8] = 0;
  }

  sub_2172A3D5C(v45, v130);
  OUTLINED_FUNCTION_26_24(v130);
  if (!v121)
  {
    OUTLINED_FUNCTION_22_24();
    v160 = v30[34];
    sub_2171F0738(&v41[v160], &qword_27CB241C0, &qword_217759480);
    sub_217260E5C(0x278228000, &v41[v160]);
  }

  sub_2171F0738(v130, &qword_27CB241C0, &qword_217759480);
  v161 = v235;
  sub_2172A3D5C(v45, v235);
  OUTLINED_FUNCTION_26_24(v161);
  if (!v121)
  {
    v162 = v239;
    sub_2171F5110(v161, v239, &qword_27CB241C0, &qword_217759480);
    v163 = v30[35];
    sub_2171F0738(&v41[v163], &qword_27CB241C0, &qword_217759480);
    sub_217260E5C(v162, &v41[v163]);
  }

  sub_2171F0738(v161, &qword_27CB241C0, &qword_217759480);
  swift_getKeyPath();
  sub_2174AE5A0();

  sub_2174AACAC(31, 10, v45);
  OUTLINED_FUNCTION_7_1();
  if (!v121)
  {
    v41[v30[42]] = v164;
  }

  sub_2174AACAC(31, 11, v45);
  OUTLINED_FUNCTION_7_1();
  if (!v121)
  {
    v41[v30[43]] = v165;
  }

  v166 = sub_2174AAC6C(31, 28, v45);
  if (v167)
  {
    v168 = v166;
    v169 = v167;
    v170 = &v41[v30[44]];
    v171 = *(v170 + 1);

    *v170 = v168;
    *(v170 + 1) = v169;
  }

  v172 = &v41[v30[45]];
  if (!v172[1])
  {
    v173 = sub_2172A3D88(25, v45);
    if (v174)
    {
      *v172 = v173;
      v172[1] = v174;
    }
  }

  v175 = &v41[v30[46]];
  if (v175[8])
  {
    v176 = sub_2172A3C10(26, v45);
    if ((v177 & 1) == 0)
    {
      *v175 = v176;
      v175[8] = 0;
    }
  }

  v178 = sub_2172A3C10(28, v45);
  if ((v179 & 1) == 0 && v178)
  {
    OUTLINED_FUNCTION_16_2(v178, v30[41]);
  }

  swift_getKeyPath();
  sub_2174AEE00();

  sub_217269F50(v251);
  KeyPath = swift_getKeyPath();
  memcpy(v246, &v41[v30[38]], 0x78uLL);
  sub_2171F5110(v246, v247, &qword_27CB244D0, &unk_21775D620);
  sub_2174A4668(KeyPath, v246);

  sub_2171F0738(v246, &qword_27CB244D0, &unk_21775D620);
  v181 = swift_getKeyPath();
  sub_2174A4708(v181, v45, 31);

  if (qword_280BE9430 != -1)
  {
    v182 = OUTLINED_FUNCTION_7_4();
  }

  *&v247[0] = qword_280BE9438;
  MEMORY[0x28223BE20](v182, v183);
  *(&v224 - 2) = v247;
  v184 = v238;
  v185 = sub_2173DDC78(sub_2174A5E68, (&v224 - 2), v238);
  if (v185)
  {
    v185 = sub_2174AFB3C(v45, 29);
    if (v185)
    {
      v187 = v185;
      if (qword_280BE2A18 != -1)
      {
        swift_once();
      }

      v189 = qword_280BE2A30;
      v188 = unk_280BE2A38;
      v242 = xmmword_280BE2A20;
      v190 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      v245[0] = v242;
      *&v245[1] = v189;
      *(&v245[1] + 1) = v188;
      *&v244[0] = &unk_28295B6C8;
      v243[0] = 4;
      sub_217751DE8();
      OUTLINED_FUNCTION_23_26();
      sub_2172B6904(v190, v191, v192, v193, v194);
      memset(v244, 0, 40);
      swift_unknownObjectRetain();
      v195 = OUTLINED_FUNCTION_25_28();
      Artist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v195, v196, v197, v198, v199);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24758, &qword_217758CE0);
      v200 = swift_allocObject();
      *(v200 + 16) = xmmword_2177586E0;
      sub_21725CF68(v245, v200 + 32);
      sub_2174AA180();
      v201 = v30[50];
      sub_2171F0738(&v41[v201], &qword_27CB25310, &unk_21775D3D0);
      memcpy(&v41[v201], v247, 0x68uLL);
      swift_unknownObjectRelease();
      v185 = sub_217284498(v245);
      v184 = v238;
    }
  }

  if (qword_280BE9460 != -1)
  {
    v185 = OUTLINED_FUNCTION_6_3();
  }

  *&v247[0] = qword_280BE9468;
  MEMORY[0x28223BE20](v185, v186);
  *(&v224 - 2) = v247;
  v202 = sub_2173DDC78(sub_2174A6244, (&v224 - 2), v184);

  if (v202)
  {
    v203 = sub_2174AFB3C(v45, 30);
    if (v203)
    {
      v204 = v203;
      if (qword_280BE2A80 != -1)
      {
        swift_once();
      }

      v206 = qword_280BE2A98;
      v205 = unk_280BE2AA0;
      v242 = xmmword_280BE2A88;
      v207 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      v245[0] = v242;
      *&v245[1] = v206;
      *(&v245[1] + 1) = v205;
      *&v244[0] = &unk_28295B708;
      v243[0] = 4;
      sub_217751DE8();
      OUTLINED_FUNCTION_23_26();
      sub_2172B6904(v207, v208, v209, v210, v211);
      memset(v244, 0, 40);
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_25_28();
      Genre.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v212, v213, v214);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24620, &qword_217758B60);
      v215 = swift_allocObject();
      *(v215 + 16) = xmmword_2177586E0;
      sub_217284130(v245, v215 + 32);
      sub_2174AA468();
      v216 = v30[52];
      sub_2171F0738(&v41[v216], &qword_27CB25320, &unk_21776E020);
      memcpy(&v41[v216], v247, 0x68uLL);
      swift_unknownObjectRelease();
      sub_21728418C(v245);
    }
  }

  if (*(v45 + 16) && (v217 = sub_2176329E8(), (v218 & 1) != 0))
  {
    sub_21721E0AC(*(v45 + 56) + 32 * v217, v247);
    sub_21721E0AC(v247, v245);
    type metadata accessor for Album.TracksPopularityProvider();
    v219 = swift_allocObject();
    sub_2172124CC(v245, (v219 + 16));
    *(v219 + 48) = v241;
    v220 = v30[61];
    v221 = *&v41[v220];
    swift_unknownObjectRetain();

    *&v41[v220] = v219;
    __swift_destroy_boxed_opaque_existential_1(v247);
  }

  else
  {
  }

  *(&v247[1] + 1) = v30;
  *&v247[2] = &protocol witness table for AlbumPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v247);
  sub_2174A5E88(v41, boxed_opaque_existential_0);
  Album.init(propertyProvider:)(v247, v236);
  swift_unknownObjectRelease();
  sub_2171F0738(v240, &qword_27CB27590, &qword_21776ADF0);
  return sub_2174A5EEC(v41);
}