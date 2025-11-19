void sub_2394E8790(uint64_t a1, _WORD **a2)
{
  if (*(a1 + 3) == 1 && *(a1 + 2) == 4 && (*(a1 + 233) & 1) != 0)
  {
    v8 = 0;
    v6 = *a2;
    v7 = &unk_284BBE408;
    *a2 = 0;
    v3 = sub_2394E3B7C(&v7, &v6);
    if (v6)
    {
      sub_2393D96C8(v6);
    }

    v6 = 0;
    if (v3)
    {
      v4 = a1;
      v5 = 22;
    }

    else
    {
      if (v8 == *(a1 + 200))
      {
        *a1 = 7;
        *(a1 + 233) = *(a1 + 8) == 32;
        return;
      }

      v4 = a1;
      v5 = 23;
    }

    sub_2394E6F88(v4, v5);
  }

  else
  {

    sub_2394E6F88(a1, 24);
  }
}

void sub_2394E8894(uint64_t a1, _WORD **a2)
{
  if (*(a1 + 3) == 1 && *(a1 + 2) == 5 && (*(a1 + 233) & 1) != 0)
  {
    v8 = 0;
    v6 = *a2;
    v7 = &unk_284BBE408;
    *a2 = 0;
    v3 = sub_2394E3B7C(&v7, &v6);
    if (v6)
    {
      sub_2393D96C8(v6);
    }

    v6 = 0;
    if (v3)
    {
      v4 = a1;
      v5 = 22;
    }

    else
    {
      if (v8 == *(a1 + 200))
      {
        *a1 = 8;
        *(a1 + 233) = 0;
        *(a1 + 2) = 7;
        sub_2394E3C30(&v7, 20);
        return;
      }

      v4 = a1;
      v5 = 23;
    }

    sub_2394E6F88(v4, v5);
  }

  else
  {

    sub_2394E6F88(a1, 24);
  }
}

void sub_2394E89A0(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 0x30) == 0 || (v2 = (*(a1 + 4) & *a2), (*(a1 + 4) & *a2) == 0))
  {
    sub_2394E6F88(a1, 80);
    return;
  }

  if ((v2 & 0xFFFFFFBF) == 0)
  {
    v3 = 64;
LABEL_11:
    *(a1 + 8) = v3;
    return;
  }

  if ((v2 & 0xFFFFFFDF) == 0)
  {
    v3 = 32;
    goto LABEL_11;
  }

  if ((v2 & 0xFFFFFFEF) == 0)
  {
    v3 = 16;
    goto LABEL_11;
  }
}

uint64_t sub_2394E89F8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((v2 & 0xFFFFFFBF) != 0)
  {
    if ((v2 & 0xFFFFFFDF) != 0)
    {
      if ((v2 & 0xFFFFFFEF) != 0)
      {
        sub_2394E6F88(a1, 22);
        v3 = 0x34E00000000;
LABEL_11:
        v5 = 172;
        return v3 | v5;
      }

      v4 = 16;
    }

    else
    {
      v4 = 32;
    }
  }

  else
  {
    v4 = 64;
  }

  if ((*(a1 + 4) & v4) == 0)
  {
    sub_2394E6F88(a1, 80);
    v3 = 0x35900000000;
    goto LABEL_11;
  }

  v5 = 0;
  v3 = 0;
  *(a1 + 8) = v4;
  return v3 | v5;
}

const char *sub_2394E8A98(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "Unknown";
  }

  else
  {
    return off_278A83438[a1];
  }
}

__n128 sub_2394E8ABC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 3;
  *(a2 + 8) = 0;
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v3;
  *(a2 + 48) = *(a1 + 32);
  return result;
}

uint64_t sub_2394E8ADC(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15[0] = a1;
  v15[1] = a2;
  if (a2 < 0x18)
  {
    v6 = 0x2B00000000;
    v7 = 30;
    goto LABEL_15;
  }

  if (*a1 != 980968546 || *(a1 + 4) != 12079)
  {
    v6 = 0x2C00000000;
    v7 = 223;
    goto LABEL_15;
  }

  if (sub_2393D6044(a1 + 6, 0x10uLL, v16, 8) != 8)
  {
    v6 = 0x3100000000;
LABEL_14:
    v7 = 71;
    goto LABEL_15;
  }

  v10 = bswap64(v16[0]);
  *a3 = v10;
  if (v10 - 1 > 0xFFFFFFEFFFFFFFFELL)
  {
    v6 = 0x3400000000;
    goto LABEL_14;
  }

  if (*(a1 + 22) == 47)
  {
    v11 = sub_2394E8C30(v15, 0x17uLL);
    v6 = 0;
    v7 = 0;
    *a4 = v11;
    a4[1] = v12;
  }

  else
  {
    v6 = 0x3500000000;
    v7 = 224;
  }

LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
  return v7 | v6;
}

uint64_t sub_2394E8C30(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 < a2)
  {
    sub_23952F9F8();
  }

  sub_238DB9BD8(&v4, *a1 + a2, v2 - a2);
  return v4;
}

uint64_t sub_2394E8C70(unint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v18[0] = bswap64(a1);
    v7 = sub_2393D5E58(v18, 8, v17, 0x10uLL, 1u);
    v8 = v7;
    if (v7)
    {
      v9 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      v11 = *a4;
      v12 = *(a4 + 8);
      bzero(*a4, v12);
      v14 = v11;
      v15 = v12 - 1;
      v16 = 0;
      if (!v11)
      {
        v15 = 0;
      }

      sub_2393D5CDC(&v14, "bdx://", 6uLL);
      sub_2393D5CDC(&v14, v17, 0x10uLL);
      sub_2393D5C64(&v14, "/");
      sub_2393D5CDC(&v14, a2, a3);
      if (v15 >= v16)
      {
        sub_2393F6D60(a4, v16);
        v9 = 0;
        v8 = 0;
      }

      else
      {
        v9 = 0x5100000000;
        v8 = 25;
      }
    }

    result = v8 | v9;
  }

  else
  {
    result = 0x3E0000001ELL;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394E8DC4(int a1)
{
  if (a1 == 166)
  {
    v1 = 81;
  }

  else
  {
    v1 = 95;
  }

  if (a1 == 108)
  {
    v2 = 80;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 47)
  {
    v3 = 22;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 3)
  {
    return 24;
  }

  else
  {
    return v3;
  }
}

void *sub_2394E8DFC(void *a1)
{
  *a1 = &unk_284BBE6F8;
  a1[1] = &unk_284BBE758;
  sub_2394E8E70(a1);
  v2 = a1[7];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[7] = 0;
  return a1;
}

uint64_t sub_2394E8E70(uint64_t a1)
{
  sub_2394E77D8(a1 + 16);
  v2 = sub_2393D9044(0xCu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Stop polling for messages", v4, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0xCu, 2);
  }

  result = *(a1 + 264);
  if (result)
  {
    result = (*(*result + 72))(result, sub_2394E8F54, a1);
    *(a1 + 264) = 0;
  }

  return result;
}

void sub_2394E8F54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2394E92DC(a2);
  }
}

unint64_t sub_2394E8F64(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _WORD **a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 256))
  {
    *(a1 + 256) = a2;
  }

  v7 = sub_2393D9044(0xCu);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *a3;
    v9 = HIWORD(*(a3 + 1));
    v10 = *(a3 + 1);
    *buf = 136315906;
    v20 = "OnMessageReceived";
    v21 = 1024;
    v22 = v8;
    v23 = 1024;
    v24 = v10;
    v25 = 1024;
    v26 = v9;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "%s: message 0x%x protocol (%u, %u)", buf, 0x1Eu);
  }

  if (sub_2393D5398(3u))
  {
    v17 = *(a3 + 1);
    v16 = *a3;
    sub_2393D5320(0xCu, 3);
  }

  v18 = *a4;
  *a4 = 0;
  v11 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  v12 = sub_2394E783C(a1 + 16, a3, &v18, v11);
  if (v18)
  {
    sub_2393D96C8(v18);
  }

  v18 = 0;
  if (v12)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_2393C9138();
      *buf = 136315138;
      v20 = v13;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "failed to handle message: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0xCu, 1);
    }
  }

  *(*(a1 + 256) + 8) |= 0x40u;
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_2394E91A0(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0xCu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a2 + 112);
    *buf = 136315650;
    v10 = "OnResponseTimeout";
    if (sub_2394703E0(a2))
    {
      v6 = 105;
    }

    else
    {
      v6 = 114;
    }

    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%s, ec: %u%c", buf, 0x18u);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a2 + 112);
    sub_2394703E0(a2);
    sub_2393D5320(0xCu, 1);
  }

  *(a1 + 256) = 0;
  sub_2394E77D8(a1 + 16);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2394E92DC(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  v8 = 95;
  v2 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  sub_2394E64BC((a1 + 16), &v6, v2);
  (*(*a1 + 72))(a1, &v6);
  v3 = *(a1 + 264);
  if (v3)
  {
    (*(*v3 + 40))(v3, *(a1 + 272), sub_2394E8F54, a1);
  }

  else
  {
    v4 = sub_2393D9044(0xCu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "PollForOutput";
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "%s mSystemLayer is null", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0xCu, 1);
    }
  }

  if (v7)
  {
    sub_2393D96C8(v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2394E9478(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 264);
  if (v1)
  {
    v2 = *(*v1 + 40);
    v3 = *MEMORY[0x277D85DE8];

    return v2();
  }

  else
  {
    v5 = sub_2393D9044(0xCu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = "ScheduleImmediatePoll";
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "%s mSystemLayer is null", buf, 0xCu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      result = sub_2393D5320(0xCu, 1);
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  return result;
}

unint64_t sub_2394E95B8(uint64_t a1, uint64_t a2, char a3, char a4, __int16 a5, int a6, int a7)
{
  if (a2)
  {
    *(a1 + 272) = a7;
    *(a1 + 264) = a2;
    v8 = sub_2394E6B90(a1 + 16, a3, a4, a5, a6);
    if (v8)
    {
      v9 = v8 & 0xFFFFFFFF00000000;
    }

    else
    {
      v10 = sub_2393D9044(0xCu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Start polling for messages", v12, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0xCu, 2);
      }

      (*(**(a1 + 264) + 40))(*(a1 + 264), *(a1 + 272), sub_2394E8F54, a1);
      LODWORD(v8) = 0;
      v9 = 0;
    }
  }

  else
  {
    v9 = 0x6C00000000;
    LODWORD(v8) = 47;
  }

  return v9 | v8;
}

unint64_t sub_2394E96E4(uint64_t a1, uint64_t a2, char a3, char *a4, int a5, int a6)
{
  if (a2)
  {
    *(a1 + 272) = a6;
    *(a1 + 264) = a2;
    v7 = sub_2394E6898(a1 + 16, a3, a4, a5);
    if (v7)
    {
      v8 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      (*(**(a1 + 264) + 40))(*(a1 + 264), *(a1 + 272), sub_2394E8F54, a1);
      LODWORD(v7) = 0;
      v8 = 0;
    }
  }

  else
  {
    v8 = 0x7B00000000;
    LODWORD(v7) = 47;
  }

  return v8 | v7;
}

uint64_t sub_2394E97A0(uint64_t result, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    goto LABEL_39;
  }

  v55 = result;
  v3 = (*(*result + 24))(result);
  v4 = sub_2393AB8BC(a2);
  v5 = 0;
  v6 = v4 + 98;
  while (1)
  {
    v7 = v3 + v5;
    if (*(v3 + v5 + 98))
    {
      v8 = (v7 + 8);
      if (*(v7 + 8))
      {
        if (sub_2393CF944((v7 + 16), &xmmword_27DF7BD44))
        {
          sub_23948CC1C(buf, v7 + 16, *v8);
          sub_23948CC1C(&v56, (v4 + 2), v4[1]);
          if (!strcmp((v3 + v5 + 98), v6) && *(v7 + 96) == *(v4 + 48))
          {
            if (*&v60[4] > 5uLL || v57 >= 6)
            {
              sub_239538258();
            }

            if (*&v60[4] == v57)
            {
              break;
            }
          }
        }
      }
    }

LABEL_26:
    v5 += 424;
    if (v5 == 4240)
    {
      v16 = v6;
      v17 = 4240;
      do
      {
        if (!*(v3 + 98) || !*(v3 + 8) || !sub_2393CF944((v3 + 16), &xmmword_27DF7BD44))
        {
          *v3 = *v4;
          v19 = *(v4 + 1);
          *(v3 + 24) = *(v4 + 3);
          *(v3 + 8) = v19;
          v20 = *(v4 + 5);
          v21 = *(v4 + 7);
          v22 = *(v4 + 9);
          *(v3 + 88) = *(v4 + 11);
          *(v3 + 72) = v22;
          *(v3 + 56) = v21;
          *(v3 + 40) = v20;
          v23 = *(v4 + 13);
          v24 = *(v4 + 15);
          v25 = *(v4 + 17);
          *(v3 + 147) = *(v4 + 147);
          *(v3 + 136) = v25;
          *(v3 + 120) = v24;
          *(v3 + 104) = v23;
          v26 = (v3 + 168);
          v27 = v4 + 21;
          v28 = *(v4 + 21);
          v29 = *(v4 + 23);
          v30 = *(v4 + 25);
          *(v3 + 216) = *(v4 + 27);
          *(v3 + 200) = v30;
          *(v3 + 184) = v29;
          *(v3 + 168) = v28;
          v31 = *(v4 + 29);
          v32 = *(v4 + 31);
          v33 = *(v4 + 35);
          *(v3 + 264) = *(v4 + 33);
          *(v3 + 280) = v33;
          *(v3 + 248) = v32;
          *(v3 + 232) = v31;
          goto LABEL_37;
        }

        v3 += 424;
        v17 -= 424;
      }

      while (v17);
      v18 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v60 = v16;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Failed to add discovered node with hostname %s- Insufficient space", buf, 0xCu);
      }

      result = sub_2393D5398(1u);
      if (result)
      {
        result = sub_2393D5320(0x22u, 1);
      }

      goto LABEL_39;
    }
  }

  v54 = v6;
  if (!*&v60[4])
  {
    v10 = 0;
    goto LABEL_25;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = v57;
    if (!v57)
    {
      goto LABEL_22;
    }

    v12 = 0;
    while (((1 << v12) & *&v10) != 0)
    {
LABEL_18:
      if (++v12 >= v11)
      {
        goto LABEL_22;
      }
    }

    v13 = sub_2394E9D38(buf, v9);
    v14 = sub_2394E9D38(&v56, v12);
    if (!sub_2393CF8F8(v13, v14))
    {
      v11 = v57;
      goto LABEL_18;
    }

    if (v12 >= 5)
    {
      abort();
    }

    *&v10 |= 1 << v12;
LABEL_22:
    ++v9;
  }

  while (v9 < *&v60[4]);
LABEL_25:
  v58 = v10;
  v15 = sub_2394E9D60(&v58, 0, 5uLL);
  v6 = v54;
  if (v15 != v57)
  {
    goto LABEL_26;
  }

  *v7 = *v4;
  v41 = *(v4 + 3);
  *v8 = *(v4 + 1);
  *(v7 + 24) = v41;
  v42 = *(v4 + 5);
  v43 = *(v4 + 7);
  v44 = *(v4 + 11);
  *(v7 + 72) = *(v4 + 9);
  *(v7 + 88) = v44;
  *(v7 + 40) = v42;
  *(v7 + 56) = v43;
  v45 = *(v4 + 13);
  v46 = *(v4 + 15);
  v47 = *(v4 + 17);
  *(v7 + 147) = *(v4 + 147);
  *(v7 + 120) = v46;
  *(v7 + 136) = v47;
  *(v7 + 104) = v45;
  v26 = (v7 + 168);
  v27 = v4 + 21;
  v48 = *(v4 + 21);
  v49 = *(v4 + 23);
  v50 = *(v4 + 25);
  *(v7 + 216) = *(v4 + 27);
  *(v7 + 200) = v50;
  *(v7 + 184) = v49;
  *(v7 + 168) = v48;
  v51 = *(v4 + 29);
  v52 = *(v4 + 31);
  v53 = *(v4 + 35);
  *(v7 + 264) = *(v4 + 33);
  *(v7 + 280) = v53;
  *(v7 + 248) = v52;
  *(v7 + 232) = v51;
LABEL_37:
  v34 = v27[8];
  v35 = v27[9];
  v36 = v27[11];
  v26[10] = v27[10];
  v26[11] = v36;
  v26[8] = v34;
  v26[9] = v35;
  v37 = v27[12];
  v38 = v27[13];
  v39 = v27[14];
  *(v26 + 235) = *(v27 + 235);
  v26[13] = v38;
  v26[14] = v39;
  v26[12] = v37;
  result = *(v55 + 8);
  if (result)
  {
    result = (*(*result + 16))(result, v4);
  }

LABEL_39:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394E9BEC(uint64_t a1)
{
  v1 = (*(*a1 + 24))(a1);
  for (i = 0; i != 4240; i += 424)
  {
    v3 = v1 + i;
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 144) = 0;
    *(v3 + 148) = 0;
    *(v3 + 152) = 0;
    *(v3 + 156) = 0;
    *(v3 + 160) = 0;
    *(v3 + 162) = 0;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
    *(v3 + 127) = 0u;
    sub_2394BD44C(v1 + i);
    *(v3 + 168) = 0u;
    v4 = (v1 + i + 168);
    *(v4 + 235) = 0u;
    v4[13] = 0u;
    v4[14] = 0u;
    v4[11] = 0u;
    v4[12] = 0u;
    v4[9] = 0u;
    v4[10] = 0u;
    v4[7] = 0u;
    v4[8] = 0u;
    v4[5] = 0u;
    v4[6] = 0u;
    v4[3] = 0u;
    v4[4] = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
  }

  return 0;
}

uint64_t sub_2394E9CB4(uint64_t a1, unsigned int a2)
{
  v3 = (*(*a1 + 24))(a1);
  if (a2 > 9)
  {
    return 0;
  }

  v4 = v3 + 424 * a2;
  if (!*(v4 + 98) || !*(v4 + 8))
  {
    return 0;
  }

  if (sub_2393CF944((v4 + 16), &xmmword_27DF7BD44))
  {
    return v4;
  }

  return 0;
}

uint64_t sub_2394E9D38(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_239538398();
  }

  return *a1 + 16 * a2;
}

uint64_t sub_2394E9D60(int8x8_t *a1, unsigned int a2, unint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    if (64 - a2 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = 64 - a2;
    }

    v5 = *a1++;
    v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v4)) & (-1 << a2) & v5));
    v6.i16[0] = vaddlv_u8(v6);
    v3 = v6.u32[0];
    a3 -= v4;
  }

  if (a3 >= 0x40)
  {
    do
    {
      v7 = *a1++;
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v3 += v8.u32[0];
      a3 -= 64;
    }

    while (a3 > 0x3F);
  }

  if (a3)
  {
    v9 = vcnt_s8((*a1 & (0xFFFFFFFFFFFFFFFFLL >> -a3)));
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v9.u32[0];
  }

  return v3;
}

uint64_t sub_2394E9E04(uint64_t a1)
{
  *&v8[311] = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBE810;
  v2 = (a1 + 712);
  *(a1 + 744) = 0;
  bzero((a1 + 8), 0x2BAuLL);
  v3 = 0;
  *(a1 + 728) = 0;
  *v2 = 0u;
  *(a1 + 736) = &unk_284BBE888;
  *(a1 + 752) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 760) = &unk_284BBBF18;
  *(a1 + 784) = 0;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0;
  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1208) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1224) = 0;
  do
  {
    v4 = a1 + v3;
    *(v4 + 1376) = 0;
    *(v4 + 1384) = 0;
    *(v4 + 1392) = 0;
    *(v4 + 1400) = 0;
    v3 += 32;
  }

  while (v3 != 320);
  *(a1 + 1864) = 0;
  *(a1 + 1840) = 0u;
  *(a1 + 1856) = 0;
  *(a1 + 1872) = 0xFFFF0000FFFFLL;
  *(a1 + 1880) = -1;
  *(a1 + 1882) = 0u;
  *(a1 + 1898) = 514;
  *(a1 + 1900) = 0;
  *(a1 + 1904) = 0;
  *(a1 + 1908) = 257;
  *(a1 + 1912) = 0;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 0;
  *(a1 + 1932) = 0;
  *(a1 + 1940) = 0;
  *(a1 + 1944) = 0;
  *(a1 + 2872) = 0;
  *(a1 + 3774) = 0;
  *(a1 + 1968) = 0;
  *(a1 + 1952) = 0u;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  bzero(v7, 0x2B8uLL);
  (*(*a1 + 16))(a1, v7);
  if (v7[384] == 1)
  {
    sub_2393F9144(v8, 16);
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_2394EA004(uint64_t a1)
{
  *a1 = &unk_284BBE810;
  v2 = *(a1 + 1992);
  if (v2)
  {
    j__free(v2);
    *(a1 + 1992) = 0;
  }

  v3 = *(a1 + 1976);
  if (v3)
  {
    j__free(v3);
    *(a1 + 1976) = 0;
  }

  v4 = *(a1 + 1840);
  if (v4)
  {
    j__free(v4);
    *(a1 + 1840) = 0;
  }

  *(a1 + 736) = &unk_284BBE888;
  sub_239495880(a1 + 760);
  if (*(a1 + 392) == 1)
  {
    sub_2393F9144(a1 + 393, 16);
  }

  return a1;
}

void *sub_2394EA0B4(void *a1)
{
  *a1 = &unk_284BBE888;
  sub_239495880(a1 + 3);
  return a1;
}

void sub_2394EA0FC(uint64_t a1)
{
  sub_2394EA004(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394EA13C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2393D9044(9u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Checking ICD registration parameters", v7, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  if ((*(a2 + 632) & 1) == 0)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Missing ICD symmetric key!", v7, 2u);
    }

    v5 = 0x3600000000;
    if (!sub_2393D5398(1u))
    {
      goto LABEL_31;
    }

LABEL_30:
    sub_2393D5320(9u, 1);
LABEL_31:
    v4 = 47;
    return v5 | v4;
  }

  v7[0] = *(a2 + 632);
  v8 = *(a2 + 640);
  if (*(sub_238DE36B8(v7) + 1) != 16)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Invalid ICD symmetric key length!", v7, 2u);
    }

    v5 = 0x3B00000000;
    if (!sub_2393D5398(1u))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if ((*(a2 + 600) & 1) == 0)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Missing ICD check-in node id!", v7, 2u);
    }

    v5 = 0x4000000000;
    if (!sub_2393D5398(1u))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if ((*(a2 + 616) & 1) == 0)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Missing ICD monitored subject!", v7, 2u);
    }

    v5 = 0x4500000000;
    if (!sub_2393D5398(1u))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if ((*(a2 + 656) & 1) == 0)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Missing ICD Client Type!", v7, 2u);
    }

    v5 = 0x4A00000000;
    if (!sub_2393D5398(1u))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v4 = 0;
  v5 = 0;
  return v5 | v4;
}

unint64_t sub_2394EA3D0(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v2 = a1 + 8;
  if (a1 + 8 == a2)
  {
    goto LABEL_160;
  }

  v5 = (a1 + 264);
  sub_2394EB1E4(a1 + 8, a2);
  sub_2394EB684(v2);
  if (*(a2 + 248) == 1)
  {
    buf[0] = 1;
    *&buf[8] = *(a2 + 256);
    v6 = sub_238DE36B8(buf);
    v7 = *(v6 + 1);
    if (v7 >= 0xFF)
    {
      v8 = sub_2393D9044(9u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Thread operational data set is too large", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9u, 1);
      }

      v9 = 47;
      LODWORD(v10) = 98;
      goto LABEL_161;
    }

    memmove((a1 + 912), *v6, v7);
    v11 = sub_2393D9044(9u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "Setting thread operational dataset from parameters", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    sub_238DB6950(buf, a1 + 912, v7);
    *(a1 + 256) = 1;
    *v5 = *buf;
    *(a1 + 602) = 1;
  }

  if (*(a2 + 176) == 1)
  {
    buf[0] = 1;
    *&buf[8] = *(a2 + 184);
    v80 = *(a2 + 200);
    v12 = sub_2394EB70C(buf);
    v13 = *(v12 + 1);
    if (v13 > 0x20 || (v14 = *(v12 + 3), v14 >= 0x41))
    {
      v31 = sub_2393D9044(9u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_ERROR, "Wifi credentials are too large", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9u, 1);
      }

      v9 = 47;
      LODWORD(v10) = 112;
      goto LABEL_161;
    }

    v15 = *(v12 + 2);
    memmove((a1 + 816), *v12, v13);
    memmove((a1 + 848), v15, v14);
    v16 = sub_2393D9044(9u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "Setting wifi credentials from parameters", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    sub_238DB6950(buf, a1 + 816, v13);
    sub_238DB6950(__dst, a1 + 848, v14);
    v17 = *buf;
    v18 = *__dst;
    *(a1 + 184) = 1;
    *(a1 + 192) = v17;
    *(a1 + 208) = v18;
    *(a1 + 600) = 1;
  }

  if (*(a2 + 216) == 1)
  {
    buf[0] = 1;
    *&buf[8] = *(a2 + 224);
    v19 = sub_238DE36B8(buf);
    v20 = *v19;
    v21 = *(v19 + 1);
    *buf = a1 + 1166;
    *&buf[8] = 2;
    if (v21 > 2)
    {
      v70 = sub_2393D9044(9u);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *__dst = 67109120;
        *&__dst[4] = v21;
        _os_log_impl(&dword_238DAE000, v70, OS_LOG_TYPE_ERROR, "Country code is too large: %u", __dst, 8u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9u, 1);
      }

      v9 = 47;
      LODWORD(v10) = 132;
      goto LABEL_161;
    }

    memmove((a1 + 1166), v20, v21);
    sub_2393F6D60(buf, v21);
    sub_238DB9BD8(__dst, *buf, *&buf[8]);
    *(a1 + 224) = 1;
    *(a1 + 232) = *__dst;
  }

  v22 = *(a2 + 152);
  v23 = sub_2393D9044(9u);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22 == 1)
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "Setting attestation nonce from parameters", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    buf[0] = *(a2 + 152);
    if (buf[0] == 1)
    {
      *&buf[8] = *(a2 + 160);
    }

    if (*(sub_238DE36B8(buf) + 1) != 32)
    {
      v9 = 47;
      LODWORD(v10) = 140;
      goto LABEL_161;
    }

    buf[0] = *(a2 + 152);
    if (buf[0] == 1)
    {
      *&buf[8] = *(a2 + 160);
    }

    v25 = *sub_238DE36B8(buf);
    __dst[0] = *(a2 + 152);
    if (__dst[0] == 1)
    {
      *&__dst[8] = *(a2 + 160);
    }

    v26 = sub_238DE36B8(__dst);
    memmove((a1 + 2008), v25, *(v26 + 1));
  }

  else
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "Setting attestation nonce to random value", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    sub_2393F888C((a1 + 2008), 0x20uLL);
  }

  sub_238DB6950(buf, a1 + 2008, 32);
  *(a1 + 160) = 1;
  *(a1 + 168) = *buf;
  v27 = *(a2 + 128);
  v28 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v27 == 1)
  {
    if (v28)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "Setting CSR nonce from parameters", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    buf[0] = *(a2 + 128);
    if (buf[0] == 1)
    {
      *&buf[8] = *(a2 + 136);
    }

    if (*(sub_238DE36B8(buf) + 1) != 32)
    {
      v9 = 47;
      LODWORD(v10) = 153;
      goto LABEL_161;
    }

    buf[0] = *(a2 + 128);
    if (buf[0] == 1)
    {
      *&buf[8] = *(a2 + 136);
    }

    v29 = *sub_238DE36B8(buf);
    __dst[0] = *(a2 + 128);
    if (__dst[0] == 1)
    {
      *&__dst[8] = *(a2 + 136);
    }

    v30 = sub_238DE36B8(__dst);
    memmove((a1 + 2040), v29, *(v30 + 1));
  }

  else
  {
    if (v28)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "Setting CSR nonce to random value", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    sub_2393F888C((a1 + 2040), 0x20uLL);
  }

  v32 = sub_238DB6950(buf, a1 + 2040, 32);
  *(a1 + 136) = 1;
  *(a1 + 144) = *buf;
  if (*(a2 + 40) == 1)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "Setting DST offsets from parameters", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    buf[0] = *(a2 + 40);
    if (buf[0] == 1)
    {
      *&buf[8] = *(a2 + 48);
    }

    v33 = sub_2394EB70C(buf);
    v34 = *(v33 + 1);
    if (v34 >= 0xA)
    {
      v35 = 10;
    }

    else
    {
      v35 = *(v33 + 1);
    }

    if (v34)
    {
      v36 = 0;
      v37 = (a1 + 1376);
      do
      {
        buf[0] = *(a2 + 40);
        if (buf[0] == 1)
        {
          *&buf[8] = *(a2 + 48);
        }

        v38 = sub_2394EB70C(buf);
        v39 = sub_2394EB72C(v38, v36);
        v40 = v39[1];
        *v37 = *v39;
        v37[1] = v40;
        v37 += 2;
        ++v36;
      }

      while (v35 != v36);
    }

    v32 = sub_2394DB5F0(buf, a1 + 1376, v35);
    *(a1 + 48) = 1;
    *(a1 + 56) = *buf;
  }

  if (*(a2 + 16) == 1)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "Setting Time Zone from parameters", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    buf[0] = *(a2 + 16);
    if (buf[0] == 1)
    {
      *&buf[8] = *(a2 + 24);
    }

    v41 = sub_2394EB70C(buf);
    v42 = *(v41 + 1);
    if (v42 >= 2)
    {
      v43 = 2;
    }

    else
    {
      v43 = *(v41 + 1);
    }

    if (v42)
    {
      v44 = 0;
      v45 = a1 + 1248;
      v46 = (a1 + 1192);
      do
      {
        buf[0] = *(a2 + 16);
        if (buf[0] == 1)
        {
          *&buf[8] = *(a2 + 24);
        }

        v47 = sub_2394EB70C(buf);
        v48 = sub_2394EB754(v47, v44);
        *(v46 - 24) = *v48;
        v49 = *(v48 + 16);
        *(v46 - 8) = v49;
        if (v49 == 1)
        {
          *v46 = *(v48 + 24);
        }

        buf[0] = *(a2 + 16);
        if (buf[0] == 1)
        {
          *&buf[8] = *(a2 + 24);
        }

        v50 = sub_2394EB70C(buf);
        if (*(sub_2394EB754(v50, v44) + 16) != 1)
        {
          goto LABEL_109;
        }

        __dst[0] = *(a2 + 16);
        if (__dst[0] == 1)
        {
          *&__dst[8] = *(a2 + 24);
        }

        v51 = sub_2394EB70C(__dst);
        v52 = sub_2394EB754(v51, v44);
        if (*(sub_239289A18((v52 + 16)) + 1) <= 0x40uLL)
        {
          sub_23948CC1C(__dst, v45, 64);
          buf[0] = *(a2 + 16);
          if (buf[0] == 1)
          {
            *&buf[8] = *(a2 + 24);
          }

          v53 = sub_2394EB70C(buf);
          v54 = sub_2394EB754(v53, v44);
          v55 = sub_239289A18((v54 + 16));
          v56 = *(v55 + 1);
          v57 = *&__dst[8];
          if (*&__dst[8] >= v56)
          {
            memmove(*__dst, *v55, v56);
            sub_2393F6D60(__dst, v56);
            v57 = *&__dst[8];
          }

          sub_238DB9BD8(buf, *__dst, v57);
          *(v46 - 8) = 1;
          *v46 = *buf;
        }

        else
        {
LABEL_109:
          *(v46 - 8) = 0;
        }

        ++v44;
        v45 += 2;
        v46 = (v46 + 40);
      }

      while (v43 != v44);
    }

    v32 = sub_2394DB5F0(buf, a1 + 1168, v43);
    *(a1 + 24) = 1;
    *(a1 + 32) = *buf;
  }

  if (*(a2 + 64) != 1)
  {
    goto LABEL_133;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "Setting Default NTP from parameters", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  buf[0] = *(a2 + 64);
  if (buf[0] == 1)
  {
    *&buf[8] = *(a2 + 72);
    *&v80 = *(a2 + 88);
  }

  v32 = sub_238DE36B8(buf);
  if (v32[16] != 1)
  {
LABEL_133:
    if (*(a2 + 668) && *(a2 + 632) == 1)
    {
      v61 = sub_2394EA13C(v32, a2);
      v9 = v61;
      v10 = HIDWORD(v61);
      if (v61)
      {
        goto LABEL_161;
      }

      buf[0] = *(a2 + 632);
      if (buf[0] == 1)
      {
        *&buf[8] = *(a2 + 640);
      }

      v62 = *sub_238DE36B8(buf);
      __dst[0] = *(a2 + 632);
      if (__dst[0] == 1)
      {
        *&__dst[8] = *(a2 + 640);
      }

      v63 = sub_238DE36B8(__dst);
      memmove((a1 + 1824), v62, *(v63 + 1));
      *(a1 + 640) = 1;
      *(a1 + 648) = a1 + 1824;
      *(a1 + 656) = 16;
      buf[0] = *(a2 + 600);
      if (buf[0] == 1)
      {
        *&buf[8] = *(a2 + 608);
      }

      v64 = *sub_238DE36B8(buf);
      *(a1 + 608) = 1;
      *(a1 + 616) = v64;
      buf[0] = *(a2 + 616);
      if (buf[0] == 1)
      {
        *&buf[8] = *(a2 + 624);
      }

      v65 = *sub_238DE36B8(buf);
      *(a1 + 624) = 1;
      *(a1 + 632) = v65;
      buf[0] = *(a2 + 656);
      if (buf[0] == 1)
      {
        buf[1] = *(a2 + 657);
      }

      v66 = *sub_23949B670(buf);
      *(a1 + 664) = 1;
      *(a1 + 665) = v66;
    }

    else
    {
      v9 = 47;
      LODWORD(v10) = 98;
    }

    v67 = *(a2 + 680);
    v68 = (a1 + 1840);
    if (v67)
    {
      v69 = *(a2 + 672);
      if (*(a1 + 1848) == v67)
      {
        memmove(*v68, *(a2 + 672), 12 * v67);
      }

      else
      {
        v74 = *(a1 + 1840);
        *(a1 + 1840) = 0u;
        v75 = *sub_2394EB780(a1 + 1840, v67);
        if (v75)
        {
          memcpy(*v68, v69, 12 * v67);
        }

        else
        {
          v9 = 11;
          LODWORD(v10) = 239;
        }

        if (v74)
        {
          j__free(v74);
        }

        if (!v75)
        {
          goto LABEL_161;
        }
      }

      sub_238DB9BD8(buf, *(a1 + 1840), *(a1 + 1848));
      sub_238DB9BD8(buf, *buf, *&buf[8]);
      LODWORD(v10) = 0;
      v9 = 0;
      v5[26] = *buf;
LABEL_161:
      v72 = *MEMORY[0x277D85DE8];
      return v9 | (v10 << 32);
    }

    *(a1 + 1848) = 0;
    v71 = *(a1 + 1840);
    if (v71)
    {
      j__free(v71);
      LODWORD(v10) = 0;
      v9 = 0;
      *v68 = 0;
      goto LABEL_161;
    }

LABEL_160:
    LODWORD(v10) = 0;
    v9 = 0;
    goto LABEL_161;
  }

  __dst[0] = *(a2 + 64);
  if (__dst[0] == 1)
  {
    *&__dst[8] = *(a2 + 72);
    v82 = *(a2 + 88);
  }

  v32 = sub_238DE36B8(__dst);
  if (v32[16])
  {
    if (*(v32 + 1) > 0x80uLL)
    {
      goto LABEL_133;
    }

    sub_23948CC1C(__dst, a1 + 1696, 128);
    buf[0] = *(a2 + 64);
    if (buf[0] == 1)
    {
      *&buf[8] = *(a2 + 72);
      *&v80 = *(a2 + 88);
    }

    v58 = sub_238DE36B8(buf);
    if (v58[16])
    {
      v59 = *(v58 + 1);
      if (*&__dst[8] >= v59)
      {
        memmove(*__dst, *v58, v59);
        sub_2393F6D60(__dst, v59);
      }

      buf[0] = *(a2 + 64);
      if (buf[0] == 1)
      {
        *&buf[8] = *(a2 + 72);
        *&v80 = *(a2 + 88);
      }

      v60 = sub_238DE36B8(buf);
      if (v60[16])
      {
        v32 = sub_238DB9BD8(&v78, a1 + 1696, *(v60 + 1));
        *(a1 + 72) = 1;
        *(a1 + 80) = v78;
        *(a1 + 96) = 1;
        goto LABEL_133;
      }
    }
  }

  v76 = sub_2394EDF14();
  return sub_2394EB1E4(v76, v77);
}

uint64_t sub_2394EB1E4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  *a1 = v4;
  if (v4 == 1)
  {
    *(a1 + 2) = *(a2 + 1);
  }

  v5 = a2[4];
  *(a1 + 4) = v5;
  if (v5 == 1)
  {
    *(a1 + 6) = *(a2 + 3);
  }

  v6 = a2[8];
  *(a1 + 8) = v6;
  if (v6 == 1)
  {
    *(a1 + 9) = a2[9];
  }

  v7 = a2[16];
  *(a1 + 16) = v7;
  if (v7 == 1)
  {
    *(a1 + 24) = *(a2 + 24);
  }

  v8 = a2[40];
  *(a1 + 40) = v8;
  if (v8 == 1)
  {
    *(a1 + 48) = *(a2 + 3);
  }

  v9 = a2[64];
  *(a1 + 64) = v9;
  if (v9 == 1)
  {
    v10 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v10;
  }

  v11 = a2[96];
  *(a1 + 96) = v11;
  if (v11 == 1)
  {
    v12 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 104) = v12;
  }

  v13 = a2[128];
  *(a1 + 128) = v13;
  if (v13 == 1)
  {
    *(a1 + 136) = *(a2 + 136);
  }

  v14 = a2[152];
  *(a1 + 152) = v14;
  if (v14 == 1)
  {
    *(a1 + 160) = *(a2 + 10);
  }

  v15 = a2[176];
  *(a1 + 176) = v15;
  if (v15 == 1)
  {
    v16 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v16;
  }

  v17 = a2[216];
  *(a1 + 216) = v17;
  if (v17 == 1)
  {
    *(a1 + 224) = *(a2 + 14);
  }

  v18 = a2[240];
  *(a1 + 240) = v18;
  if (v18 == 1)
  {
    *(a1 + 242) = *(a2 + 242);
  }

  v19 = a2[248];
  *(a1 + 248) = v19;
  if (v19 == 1)
  {
    *(a1 + 256) = *(a2 + 16);
  }

  v20 = a2[272];
  *(a1 + 272) = v20;
  if (v20 == 1)
  {
    v21 = *(a2 + 296);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 296) = v21;
  }

  v22 = a2[312];
  *(a1 + 312) = v22;
  if (v22 == 1)
  {
    *(a1 + 320) = *(a2 + 20);
  }

  v23 = a2[336];
  *(a1 + 336) = v23;
  if (v23 == 1)
  {
    *(a1 + 344) = *(a2 + 344);
  }

  v24 = a2[360];
  *(a1 + 360) = v24;
  if (v24 == 1)
  {
    *(a1 + 368) = *(a2 + 23);
  }

  if (*(a1 + 384) == 1)
  {
    sub_2393F9144(a1 + 385, 16);
  }

  v25 = a2[384];
  *(a1 + 384) = v25;
  if (v25 == 1)
  {
    *(a1 + 385) = *(a2 + 385);
  }

  v26 = a2[408];
  *(a1 + 408) = v26;
  if (v26 == 1)
  {
    *(a1 + 416) = *(a2 + 52);
  }

  v27 = a2[424];
  *(a1 + 424) = v27;
  if (v27 == 1)
  {
    *(a1 + 432) = *(a2 + 27);
  }

  v28 = a2[448];
  *(a1 + 448) = v28;
  if (v28 == 1)
  {
    *(a1 + 456) = *(a2 + 456);
  }

  v29 = a2[472];
  *(a1 + 472) = v29;
  if (v29 == 1)
  {
    *(a1 + 480) = *(a2 + 30);
  }

  v30 = a2[496];
  *(a1 + 496) = v30;
  if (v30 == 1)
  {
    *(a1 + 504) = *(a2 + 504);
  }

  v31 = a2[520];
  *(a1 + 520) = v31;
  if (v31 == 1)
  {
    *(a1 + 528) = *(a2 + 66);
  }

  v32 = a2[536];
  *(a1 + 536) = v32;
  if (v32 == 1)
  {
    *(a1 + 538) = *(a2 + 269);
  }

  v33 = a2[540];
  *(a1 + 540) = v33;
  if (v33 == 1)
  {
    *(a1 + 542) = *(a2 + 271);
  }

  v34 = a2[544];
  *(a1 + 544) = v34;
  if (v34 == 1)
  {
    *(a1 + 545) = a2[545];
  }

  v35 = a2[546];
  *(a1 + 546) = v35;
  if (v35 == 1)
  {
    *(a1 + 547) = a2[547];
  }

  v36 = a2[548];
  *(a1 + 548) = v36;
  if (v36 == 1)
  {
    *(a1 + 549) = a2[549];
  }

  *(a1 + 552) = *(a2 + 552);
  v37 = a2[568];
  *(a1 + 568) = v37;
  if (v37 == 1)
  {
    *(a1 + 569) = a2[569];
  }

  v38 = a2[570];
  *(a1 + 570) = v38;
  if (v38 == 1)
  {
    *(a1 + 572) = *(a2 + 286);
  }

  v39 = a2[574];
  *(a1 + 574) = v39;
  if (v39 == 1)
  {
    *(a1 + 575) = a2[575];
  }

  v40 = a2[576];
  *(a1 + 576) = v40;
  if (v40 == 1)
  {
    *(a1 + 577) = a2[577];
  }

  *(a1 + 584) = *(a2 + 73);
  v41 = a2[592];
  *(a1 + 592) = v41;
  if (v41 == 1)
  {
    *(a1 + 593) = a2[593];
  }

  v42 = a2[594];
  *(a1 + 594) = v42;
  if (v42 == 1)
  {
    *(a1 + 595) = a2[595];
  }

  v43 = a2[596];
  *(a1 + 596) = v43;
  if (v43 == 1)
  {
    *(a1 + 597) = a2[597];
  }

  v44 = a2[600];
  *(a1 + 600) = v44;
  if (v44 == 1)
  {
    *(a1 + 608) = *(a2 + 76);
  }

  v45 = a2[616];
  *(a1 + 616) = v45;
  if (v45 == 1)
  {
    *(a1 + 624) = *(a2 + 78);
  }

  v46 = a2[632];
  *(a1 + 632) = v46;
  if (v46 == 1)
  {
    *(a1 + 640) = *(a2 + 40);
  }

  v47 = a2[656];
  *(a1 + 656) = v47;
  if (v47 == 1)
  {
    *(a1 + 657) = a2[657];
  }

  v48 = a2[660];
  *(a1 + 660) = v48;
  if (v48 == 1)
  {
    *(a1 + 664) = *(a2 + 166);
  }

  v49 = *(a2 + 668);
  *(a1 + 684) = *(a2 + 171);
  *(a1 + 668) = v49;
  v50 = a2[688];
  *(a1 + 688) = v50;
  if (v50 == 1)
  {
    *(a1 + 689) = a2[689];
  }

  return a1;
}

double sub_2394EB684(uint64_t a1)
{
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  *(a1 + 216) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  *(a1 + 312) = 0;
  *(a1 + 336) = 0;
  *(a1 + 360) = 0;
  if (*(a1 + 384) == 1)
  {
    sub_2393F9144(a1 + 385, 16);
  }

  *(a1 + 384) = 0;
  *(a1 + 424) = 0;
  *(a1 + 448) = 0;
  *(a1 + 472) = 0;
  *(a1 + 496) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 632) = 0;
  result = 0.0;
  *(a1 + 672) = 0u;
  return result;
}

_BYTE *sub_2394EB70C(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952F0D8();
  }

  return a1 + 8;
}

uint64_t sub_2394EB72C(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_239531EC4();
  }

  return *a1 + 32 * a2;
}

uint64_t sub_2394EB754(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    sub_239531EC4();
  }

  return *a1 + 40 * a2;
}

uint64_t sub_2394EB780(uint64_t a1, uint64_t a2)
{
  v4 = 12 * a2;
  sub_2393C56C0(a1, 12 * a2);
  v5 = *a1;
  if (a2 && v5)
  {
    memset(v5, 255, v4);
    v5 = *a1;
  }

  if (v5)
  {
    *(a1 + 8) = a2;
  }

  return a1;
}

uint64_t sub_2394EB7EC(uint64_t a1, unsigned int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = sub_2394EB9C0(a1, a2, a3);
  v6 = *a3;
  v7 = sub_2393D9044(9u);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = sub_2394F2C88(a2);
      v10 = *a3;
      v11 = a3[1];
      *buf = 136315650;
      v17 = v9;
      v18 = 2080;
      v19 = sub_2393C9138();
      v20 = 2080;
      v21 = sub_2394F2C88(v5);
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Going from commissioning step '%s' with lastErr = '%s' -> '%s'", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2394F2C88(a2);
      v12 = *a3;
      v13 = a3[1];
      sub_2393C9138();
      sub_2394F2C88(v5);
LABEL_10:
      sub_2393D5320(9u, 2);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 136315394;
      v17 = sub_2394F2C88(a2);
      v18 = 2080;
      v19 = sub_2394F2C88(v5);
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Commissioning stage next step: '%s' -> '%s'", buf, 0x16u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2394F2C88(a2);
      sub_2394F2C88(v5);
      goto LABEL_10;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_2394EB9C0(uint64_t a1, char a2, void *a3)
{
  v3 = 40;
  if ((*(a1 + 705) & 1) != 0 || *a3)
  {
    return v3;
  }

  while (2)
  {
    v3 = 2;
    switch(a2)
    {
      case 1:
        return v3;
      case 2:
        if (!*(a1 + 1888))
        {
          return 3;
        }

        result = sub_2394EB7EC();
        break;
      case 3:
        return 4;
      case 4:
        return 39;
      case 5:
        a2 = 6;
        if (*(a1 + 1905) == 1)
        {
          a2 = 6;
          v3 = 6;
          if (*(a1 + 24))
          {
            return v3;
          }
        }

        continue;
      case 6:
        a2 = 7;
        if (*(a1 + 1968) == 1)
        {
          a2 = 7;
          v3 = 7;
          if (*(a1 + 48))
          {
            return v3;
          }
        }

        continue;
      case 7:
        a2 = 8;
        if (*(a1 + 1906) == 1)
        {
          a2 = 8;
          v3 = 8;
          if (*(a1 + 72))
          {
            return v3;
          }
        }

        continue;
      case 8:
        return 9;
      case 9:
        return 10;
      case 10:
        return 11;
      case 11:
        return 12;
      case 12:
        return 13;
      case 13:
      case 14:
        return 15;
      case 15:
        return 16;
      case 16:
        return 17;
      case 17:
        return 18;
      case 18:
        return 19;
      case 19:
        a2 = 20;
        if (*(a1 + 1907) == 1)
        {
          a2 = 20;
          v3 = 20;
          if (*(a1 + 104))
          {
            return v3;
          }
        }

        continue;
      case 20:
        a2 = 22;
        if (*(a1 + 1969) != 1)
        {
          continue;
        }

        if (*(a1 + 608) == 1)
        {
          v3 = 21;
          if (*(a1 + 624) == 1)
          {
            if (*(a1 + 640))
            {
              return 22;
            }

            else
            {
              return 21;
            }
          }
        }

        else
        {
          return 21;
        }

        return v3;
      case 21:
        return 22;
      case 22:
        if (*(a1 + 1856) != 1)
        {
          goto LABEL_62;
        }

        if (sub_2394EC1A4(a1))
        {
          return 34;
        }

        else
        {
          v11 = sub_2393D9044(9u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v12) = 0;
            _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "No NetworkScan enabled or WiFi/Thread endpoint not specified, skipping ScanNetworks", &v12, 2u);
          }

          if (sub_2393D5398(2u))
          {
            sub_2393D5320(9u, 2);
          }

          return sub_2394EBE74(a1, 0, a3);
        }

      case 23:
        return 25;
      case 24:
        return 26;
      case 25:
        return 27;
      case 26:
        return 28;
      case 27:
        LOBYTE(v12) = *(a1 + 604);
        if (v12 & 1) != 0 && (BYTE1(v12) = *(a1 + 605), (*sub_238DE36D8(&v12)))
        {
          sub_2394EC240(a1);
          return 40;
        }

        else
        {
          sub_2394EC240(a1);
          return 29;
        }

      case 28:
LABEL_62:
        sub_2394EC240(a1);
        LOBYTE(v12) = *(a1 + 604);
        v3 = 29;
        if (v12 != 1)
        {
          return v3;
        }

        BYTE1(v12) = *(a1 + 605);
        v9 = (*sub_238DE36D8(&v12) & 1) == 0;
        v10 = 40;
        goto LABEL_64;
      case 29:
        (*(**(a1 + 720) + 48))(&v12);
        if (v12)
        {
          (*(*v13 + 32))(v13);
          (*(**(a1 + 720) + 48))(&v12);
          v7 = sub_238DE36B8(&v12);
          v8 = *(sub_239495304(*v7) + 112);
          if (v12 == 1)
          {
            (*(*v13 + 32))(v13);
          }

          v3 = 30;
          if (v8 == 5)
          {
            v9 = *(a1 + 1900) == 0;
            v10 = 41;
LABEL_64:
            if (!v9)
            {
              return v10;
            }
          }
        }

        else
        {
          return 30;
        }

        return v3;
      case 30:
        return 33;
      case 31:
        return 32;
      case 32:
      case 41:
        return 40;
      case 33:
        return 31;
      case 34:
        return 35;
      case 35:
      case 37:
      case 38:

        return sub_2394EBE74(a1, 0, a3);
      case 36:
        if (*(a1 + 1872))
        {
          return 38;
        }

        else
        {
          return 37;
        }

      case 39:
        if (*(a1 + 1904))
        {
          return 5;
        }

        else
        {
          return 9;
        }

      default:
        return 0;
    }

    return result;
  }
}

uint64_t sub_2394EBE74(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (sub_2394EC11C(a1))
  {
    if (*(a1 + 1872))
    {
      v5 = 24;
    }

    else
    {
      v5 = 23;
    }

    if (*(a1 + 1872))
    {
      v6 = 23;
    }

    else
    {
      v6 = 24;
    }

    if (*(a1 + 704) == 1)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }
  }

  else if (*(a1 + 184) != 1 || *(a1 + 1872) == -1)
  {
    if (*(a1 + 256) != 1 || *(a1 + 1876) == -1)
    {
      v8 = sub_2393D9044(9u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Required network information not provided in commissioning parameters", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9u, 1);
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 184))
        {
          v9 = "yes";
        }

        else
        {
          v9 = "no";
        }

        if (*(a1 + 256))
        {
          v10 = "yes";
        }

        else
        {
          v10 = "no";
        }

        *buf = 136315394;
        v16 = v9;
        v17 = 2080;
        v18 = v10;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Parameters supplied: wifi (%s) thread (%s)", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        *(a1 + 184);
        *(a1 + 256);
        sub_2393D5320(9u, 1);
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 1872) == -1)
        {
          v11 = "no";
        }

        else
        {
          v11 = "yes";
        }

        if (*(a1 + 1876) == -1)
        {
          v12 = "no";
        }

        else
        {
          v12 = "yes";
        }

        *buf = 136315394;
        v16 = v11;
        v17 = 2080;
        v18 = v12;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Device supports: wifi (%s) thread(%s)", buf, 0x16u);
      }

      if (sub_2393D5398(1u))
      {
        *(a1 + 1872);
        *(a1 + 1876);
        sub_2393D5320(9u, 1);
      }

      *a3 = 0x1300000002FLL;
      a3[1] = "src/controller/AutoCommissioner.cpp";
      v7 = 40;
    }

    else
    {
      v7 = 24;
    }
  }

  else
  {
    v7 = 23;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL sub_2394EC11C(uint64_t a1)
{
  v3[0] = *(a1 + 556);
  if (v3[0] == 1 && (v3[1] = *(a1 + 557), (*sub_238DE36D8(v3) & 1) != 0) && *(a1 + 184) == 1 && *(a1 + 1872) != -1 && *(a1 + 256) == 1)
  {
    return *(a1 + 1876) != -1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2394EC1A4(uint64_t a1)
{
  v4[0] = *(a1 + 600);
  if (v4[0])
  {
    v4[1] = *(a1 + 601);
    if ((*sub_238DE36D8(v4) & 1) != 0 && *(a1 + 1872) != -1)
    {
      return 1;
    }
  }

  v3[0] = *(a1 + 602);
  if (v3[0] == 1 && (v3[1] = *(a1 + 603), (*sub_238DE36D8(v3) & 1) != 0))
  {
    return *(a1 + 1876) != -1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2394EC240(_BOOL8 result)
{
  if (*(result + 12) == 1)
  {
    v14 = v1;
    v15 = v2;
    v3 = result;
    v4 = *(result + 720);
    if (v4)
    {
      v5 = *(result + 712);
      v6 = *(v5 + 4368);
      v10[0] = 1;
      v11 = *(result + 14);
      v7 = *sub_238E0A934(v10);
      sub_2394EC31C(v3, *(v3 + 720), 3, v8);
      v12[0] = v8[0];
      if (v8[0] == 1)
      {
        v13 = v9;
      }

      return sub_239500688(v5, v4, v6, v7, v12, sub_2394EC510, sub_2394EC5DC, 1);
    }
  }

  return result;
}

void *sub_2394EC31C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3 > 26)
  {
    switch(a3)
    {
      case 34:
        v9 = a1[1875];
        if (v9 <= a1[1879])
        {
          v9 = a1[1879];
        }

        goto LABEL_16;
      case 28:
        v9 = a1[1878];
LABEL_16:
        v10 = 1000 * v9;
        goto LABEL_17;
      case 27:
        v7 = sub_2393D9044(9u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = a1[1874];
          LODWORD(buf) = 67109120;
          HIDWORD(buf) = v8;
          _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Setting wifi connection time min = %u", &buf, 8u);
        }

        if (sub_2393D5398(2u))
        {
          v17 = a1[1874];
          sub_2393D5320(9u, 2);
        }

        v9 = a1[1874];
        goto LABEL_16;
    }

LABEL_12:
    v10 = 2000;
    goto LABEL_17;
  }

  v10 = 7000;
  if (a3 != 15 && a3 != 19)
  {
    goto LABEL_12;
  }

LABEL_17:
  result = (*(*a2 + 48))(&buf, a2);
  if (buf == 1)
  {
    v12 = sub_238EA9094(&buf);
    result = sub_239495550(*v12, v10, 1);
    v13 = buf;
    if (result <= 0x7530)
    {
      v14 = 30000;
    }

    else
    {
      v14 = result;
    }

    *a4 = 1;
    *(a4 + 4) = v14;
    if (v13)
    {
      result = (*(*v19 + 32))(v19);
    }
  }

  else
  {
    if (v10 <= 0x7530)
    {
      v15 = 30000;
    }

    else
    {
      v15 = v10;
    }

    *a4 = 1;
    *(a4 + 4) = v15;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394EC510(uint64_t a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(9u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    *buf = 67109120;
    v9 = v4;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "ExtendFailsafe received ArmFailSafe response errorCode=%u", buf, 8u);
  }

  result = sub_2393D5398(2u);
  if (result)
  {
    v7 = *a2;
    result = sub_2393D5320(9u, 2);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394EC5DC()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(9u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v4 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "ExtendFailsafe received failure response: %s", buf, 0xCu);
  }

  result = sub_2393D5398(2u);
  if (result)
  {
    sub_2393C9138();
    result = sub_2393D5320(9u, 2);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394EC6CC(uint64_t a1, unsigned __int8 *a2)
{
  result = 0;
  v4 = *a2;
  if (v4 <= 0x1A)
  {
    if (v4 != 23)
    {
      if (v4 != 24)
      {
        return result;
      }

      return *(a1 + 1876);
    }

    return *(a1 + 1872);
  }

  if (v4 == 28)
  {
    return *(a1 + 1876);
  }

  if (v4 == 27)
  {
    return *(a1 + 1872);
  }

  return result;
}

uint64_t sub_2394EC714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      (*(*a3 + 48))(buf, a3);
      if (buf[0] == 1)
      {
        (*(*v22 + 32))(v22);
        goto LABEL_11;
      }

      if (*(a2 + 4368) == 29)
      {
LABEL_11:
        *(a1 + 705) = 0;
        *(a1 + 712) = a2;
        *(a1 + 720) = a3;
        (*(*a3 + 48))(buf, a3);
        if (buf[0])
        {
          (*(*v22 + 32))(v22);
          (*(**(a1 + 720) + 48))(buf);
          v8 = sub_238DE36B8(buf);
          v9 = *(sub_239495304(*v8) + 112);
          if (buf[0] == 1)
          {
            (*(*v22 + 32))(v22);
          }
        }

        else
        {
          v9 = 1;
        }

        v13 = v9 == 2 || v9 == 5;
        *(a1 + 1856) = v13;
        *buf = 0;
        v22 = 0;
        v14 = sub_2394EB7EC(a1, *(a2 + 4368), buf);
        v15 = *(a1 + 712);
        v16 = *(a1 + 720);
        if (v14 > 26)
        {
          if (v14 == 28)
          {
LABEL_34:
            v18 = *(a1 + 1876);
            goto LABEL_35;
          }

          if (v14 != 27)
          {
LABEL_35:
            sub_2394EC31C(a1, *(a1 + 720), v14, v20);
            sub_239508128();
            v7 = 0;
            v11 = 0;
            return v11 | v7;
          }
        }

        else if (v14 != 23)
        {
          if (v14 != 24)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v17 = *(a1 + 1872);
        goto LABEL_35;
      }
    }

    v10 = sub_2393D9044(9u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Device proxy secure session error", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v7 = 0x26500000000;
  }

  else
  {
    v6 = sub_2393D9044(9u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Invalid DeviceCommissioner", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v7 = 0x25800000000;
  }

  v11 = 47;
  return v11 | v7;
}

unint64_t sub_2394ECA4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, __int128 *a8, uint64_t a9)
{
  v15 = a1 + 2472;
  v25 = a1 + 2472;
  v26 = 400;
  v16 = sub_2394A1510(a6, a7, &v25);
  v17 = v16;
  if (!v16)
  {
    sub_238DB6950(&v24, v25, v26);
    *(a1 + 320) = 1;
    *(a1 + 328) = v24;
    *&v24 = a1 + 2072;
    *(&v24 + 1) = 400;
    v19 = sub_2394A1510(a2, a3, &v24);
    if (v19)
    {
LABEL_4:
      v18 = v19 & 0xFFFFFFFF00000000;
LABEL_10:
      v17 = v19;
      return v17 | v18;
    }

    sub_238DB6950(&v23, v24, *(&v24 + 1));
    *(a1 + 344) = 1;
    *(a1 + 352) = v23;
    v20 = *(a1 + 712);
    sub_2394EC31C(a1, *(a1 + 720), 18, &v23);
    sub_239508128();
    if (a5)
    {
      *&v23 = v15;
      *(&v23 + 1) = 400;
      v19 = sub_2394A1510(a4, a5, &v23);
      if (v19)
      {
        goto LABEL_4;
      }

      sub_238DB6950(&v22, v23, *(&v23 + 1));
      *(a1 + 368) = 1;
      *(a1 + 376) = v22;
    }

    else
    {
      *(a1 + 368) = 1;
      *(a1 + 376) = 0;
      *(a1 + 384) = 0;
    }

    sub_2394ECBE8(a1 + 8, a8);
    v18 = 0;
    LODWORD(v19) = 0;
    *(a1 + 416) = 1;
    *(a1 + 424) = a9;
    goto LABEL_10;
  }

  v18 = v16 & 0xFFFFFFFF00000000;
  return v17 | v18;
}

uint64_t sub_2394ECBE8(uint64_t a1, __int128 *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*(a1 + 384) == 1)
  {
    sub_2393F9144(a1 + 385, 16);
  }

  *(a1 + 384) = 1;
  *(a1 + 385) = v5;
  sub_2393F9144(&v5, 16);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

double sub_2394ECC80(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (sub_2394EC11C(a1) && *(a1 + 704) == 1)
  {
    *(a1 + 704) = 0;
  }

  *(a1 + 2000) = 0;
  v2 = *(a1 + 1992);
  if (v2)
  {
    j__free(v2);
    *(a1 + 1992) = 0;
  }

  *(a1 + 1984) = 0;
  v3 = *(a1 + 1976);
  if (v3)
  {
    j__free(v3);
    *(a1 + 1976) = 0;
  }

  *(a1 + 720) = 0;
  v7 = 0u;
  v6 = &unk_284BBBF18;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  *(a1 + 744) = 0u;
  sub_239495B38(a1 + 760, &v6);
  *(a1 + 800) = v9;
  *(a1 + 808) = v10;
  sub_239495880(&v6);
  *(a1 + 1864) = 0;
  *(a1 + 1872) = 0xFFFF0000FFFFLL;
  *(a1 + 1880) = -1;
  *(a1 + 1882) = 0u;
  *(a1 + 1898) = 514;
  *(a1 + 1900) = 0;
  *(a1 + 1908) = 257;
  *(a1 + 1912) = 0;
  *(a1 + 1920) = 1;
  *(a1 + 1937) = 0;
  *(a1 + 1921) = 0u;
  *(a1 + 1944) = 0;
  result = 0.0;
  *(a1 + 1952) = 0u;
  *(a1 + 1968) = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394ECE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v76 = *MEMORY[0x277D85DE8];
  *&v73 = a2;
  *(&v73 + 1) = a3;
  v67 = 0;
  v69 = 0;
  v71 = 0;
  v65 = 0;
  v64 = v73;
  v7 = sub_2393D9044(9u);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_2394F2C88(*(a4 + 112));
      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Error on commissioning step '%s': '%s'", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2394F2C88(*(a4 + 112));
      sub_2393C9138();
      sub_2393D5320(9u, 1);
    }

    v10 = *(a4 + 112);
    v65 = 1;
    v66 = v10;
    v11 = *a4;
    if (*a4 == 8)
    {
      v22 = *sub_2394ED958(a4);
      v71 = 1;
      v72 = v22;
      if (sub_2394EC1A4(a1))
      {
        if (!v73)
        {
          v64 = v73;
        }

        v73 = 0uLL;
        v23 = 34;
LABEL_49:
        *(a4 + 112) = v23;
        goto LABEL_74;
      }
    }

    else if (v11 == 7)
    {
      v21 = *sub_2394ED934(a4);
      v69 = 1;
      v70 = v21;
    }

    else if (v11 == 6)
    {
      v12 = *sub_2394ED910(a4);
      v67 = 1;
      v68 = v12;
      if (*sub_2394ED910(a4) == 306 || *sub_2394ED910(a4) == 305)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed device attestation. Device vendor and/or product ID do not match the IDs expected. Verify DAC certificate chain and certification declaration to ensure spec rules followed.", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }
      }

      if (*(a4 + 112) == 12)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed verifying attestation information. Now checking DAC chain revoked status.", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v73 = 0uLL;
        goto LABEL_74;
      }
    }

    if (!sub_2394EC11C(a1) || (*(a1 + 704) & 1) != 0 || *sub_2393ECAEC(&v65) < 0x17u || *sub_2393ECAEC(&v65) > 0x21u)
    {
      goto LABEL_74;
    }

    *(a1 + 704) = 1;
    v73 = 0uLL;
    v23 = 36;
    goto LABEL_49;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_2394F2C88(*(a4 + 112));
    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Successfully finished commissioning step '%s'", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2394F2C88(*(a4 + 112));
    sub_2393D5320(9u, 2);
  }

  v14 = *(a4 + 112);
  if (v14 <= 0xE)
  {
    if (*(a4 + 112) <= 8u)
    {
      if (v14 == 2)
      {
        v36 = sub_2394ED97C(a4);
        v38 = *(v36 + 1);
        v37 = *(v36 + 2);
        *(a1 + 1864) = *v36;
        *(a1 + 1880) = v38;
        *(a1 + 1896) = v37;
        v40 = *(v36 + 4);
        v39 = *(v36 + 5);
        v41 = *(v36 + 3);
        *(a1 + 1960) = v36[12];
        *(a1 + 1928) = v40;
        *(a1 + 1944) = v39;
        *(a1 + 1912) = v41;
        if ((*(a1 + 8) & 1) == 0)
        {
          v42 = *(a1 + 1896);
          if (v42)
          {
            *(a1 + 8) = 1;
            *(a1 + 10) = v42;
          }
        }

        v43 = *(a1 + 1884);
        *(a1 + 544) = 1;
        *(a1 + 546) = v43;
        v44 = *(a1 + 1886);
        *(a1 + 548) = 1;
        *(a1 + 550) = v44;
        LOBYTE(v44) = *(a1 + 1898);
        *(a1 + 552) = 1;
        *(a1 + 553) = v44;
        LOBYTE(v44) = *(a1 + 1899);
        *(a1 + 554) = 1;
        *(a1 + 555) = v44;
        *(a1 + 1968) = 0;
        LOBYTE(v44) = *(a1 + 1920);
        *(a1 + 556) = 1;
        *(a1 + 557) = v44;
        if (*(a1 + 677) == 1)
        {
          v45 = *(a1 + 1912);
          if (v45)
          {
            *(a1 + 528) = 1;
            *(a1 + 536) = v45;
          }
        }

        *(a1 + 1969) = 0;
        if (*(a1 + 676))
        {
          if (*(a1 + 1928) == 1 && *(a1 + 1929) == 1)
          {
            *(a1 + 1969) = 1;
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "AutoCommissioner: ICD supports the check-in protocol.", buf, 2u);
            }

            if (sub_2393D5398(3u))
            {
              sub_2393D5320(9u, 3);
            }
          }

          else if (*(a1 + 668) == 1)
          {
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "AutoCommissioner: Clear ICD StayActiveDurationMsec", buf, 2u);
            }

            if (sub_2393D5398(3u))
            {
              sub_2393D5320(9u, 3);
            }

            *(a1 + 668) = 0;
          }
        }
      }

      else if (v14 == 6)
      {
        *(a1 + 1968) = *sub_2394ED9A0(a4);
      }

      goto LABEL_74;
    }

    switch(v14)
    {
      case 9u:
        *v75 = *sub_23949EAFC(a4);
        sub_2394ED9C4(a1 + 1992, v75);
        sub_238DB9BD8(buf, *(a1 + 1992), *(a1 + 2000));
        sub_238DB6950(buf, *buf, *&buf[8]);
        *(a1 + 480) = 1;
        *(a1 + 488) = *buf;
        goto LABEL_74;
      case 0xAu:
        *v75 = *sub_23949EAFC(a4);
        sub_2394ED9C4(a1 + 1976, v75);
        sub_238DB9BD8(buf, *(a1 + 1976), *(a1 + 1984));
        sub_238DB6950(buf, *buf, *&buf[8]);
        *(a1 + 504) = 1;
        *(a1 + 512) = *buf;
        goto LABEL_74;
      case 0xBu:
        v15 = sub_23949EB1C(a4);
        v16 = sub_23949EB1C(a4);
        v17 = v15[1];
        if (v17 >= 0x385)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = v17;
            *&buf[8] = 1024;
            *&buf[10] = 900;
            _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "AutoCommissioner attestationElements buffer size %u larger than cache size %u", buf, 0xEu);
          }

          if (sub_2393D5398(1u))
          {
            v61 = v15[1];
            sub_2393D5320(9u, 1);
          }

          v18 = 0x37000000000;
LABEL_101:
          LODWORD(v35) = 4;
          goto LABEL_88;
        }

        v54 = v16;
        memcpy((a1 + 2874), *v15, v15[1]);
        *(a1 + 2872) = v15[1];
        sub_238DB6950(buf, a1 + 2874, v15[1]);
        *(a1 + 432) = 1;
        v55 = (a1 + 440);
        *(a1 + 440) = *buf;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v56 = v15[1];
          buf[0] = 1;
          *&buf[8] = *v55;
          v57 = *(sub_238DE36B8(buf) + 1);
          *v75 = 67109376;
          *&v75[4] = v56;
          *&v75[8] = 1024;
          *&v75[10] = v57;
          _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "AutoCommissioner setting attestationElements buffer size %u/%u", v75, 0xEu);
        }

        if (sub_2393D5398(3u))
        {
          v58 = *(v15 + 2);
          buf[0] = *(a1 + 432);
          if (buf[0] == 1)
          {
            *&buf[8] = *v55;
          }

          v63 = *(sub_238DE36B8(buf) + 1);
          sub_2393D5320(9u, 3);
        }

        v59 = v54[3];
        if (v59 >= 0x41)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *&buf[4] = v59;
            *&buf[8] = 1024;
            *&buf[10] = 64;
            _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "AutoCommissioner attestationSignature buffer size %u larger than cache size %u", buf, 0xEu);
          }

          if (sub_2393D5398(1u))
          {
            v62 = v54[3];
            sub_2393D5320(9u, 1);
          }

          v18 = 0x37F00000000;
          goto LABEL_101;
        }

        memcpy((a1 + 3776), v54[2], v54[3]);
        *(a1 + 3774) = v54[3];
        sub_238DB6950(buf, a1 + 3776, v54[3]);
        *(a1 + 456) = 1;
        *(a1 + 464) = *buf;
        v60 = *(a1 + 728);
        if (!v60)
        {
          goto LABEL_74;
        }

        *buf = a1 + 2040;
        *&buf[8] = 32;
        v35 = (*(*v60 + 40))(v60, buf);
        if (!v35)
        {
          sub_238DB6950(v75, a1 + 2040, 32);
          *(a1 + 136) = 1;
          *(a1 + 144) = *v75;
          goto LABEL_74;
        }

LABEL_86:
        v18 = v35 & 0xFFFFFFFF00000000;
        goto LABEL_88;
    }

    goto LABEL_74;
  }

  if (*(a4 + 112) <= 0x1Du)
  {
    if (v14 == 15)
    {
      *buf = *sub_2394EDA44(a4);
      v46 = *(sub_2394EDA44(a4) + 1);
      *(a1 + 280) = 1;
      *(a1 + 288) = *buf;
      *(a1 + 304) = v46;
      goto LABEL_74;
    }

    if (v14 == 17)
    {
      v24 = sub_2394EDA68(a4);
      v25 = *v24;
      v26 = v24[1];
      v27 = sub_2394EDA68(a4);
      v28 = v27[2];
      v29 = v27[3];
      v30 = sub_2394EDA68(a4);
      v31 = v30[4];
      v32 = v30[5];
      v33 = sub_2394EDA68(a4)[6];
      v34 = sub_2394EDA68(a4);
      v35 = sub_2394ECA4C(a1, v25, v26, v28, v29, v31, v32, v33, v34[7]);
      goto LABEL_86;
    }

LABEL_74:
    v47 = sub_2394EB7EC(a1, *(a4 + 112), &v73);
    if (!v47)
    {
      v18 = 0x3B000000000;
      LODWORD(v35) = 3;
      goto LABEL_88;
    }

    if (!v64)
    {
      v64 = v73;
    }

    *(a1 + 560) = v64;
    v48 = v65;
    *(a1 + 576) = v65;
    if (v48 == 1)
    {
      *(a1 + 577) = v66;
    }

    v49 = v67;
    *(a1 + 578) = v67;
    if (v49 == 1)
    {
      *(a1 + 580) = v68;
    }

    v50 = v69;
    *(a1 + 582) = v69;
    if (v50 == 1)
    {
      *(a1 + 583) = v70;
    }

    v51 = v71;
    *(a1 + 584) = v71;
    if (v51 == 1)
    {
      *(a1 + 585) = v72;
    }

    v35 = sub_2394EDAB0(a1, v47);
    goto LABEL_86;
  }

  if (v14 - 30 < 2)
  {
    v19 = sub_2394EDA8C(a4);
    *(a1 + 744) = v19[1];
    *(a1 + 752) = v19[2];
    sub_239495AE0(a1 + 760, (v19 + 3));
    v20 = *(v19 + 72);
    *(a1 + 800) = v19[8];
    *(a1 + 808) = v20;
    goto LABEL_74;
  }

  if (v14 != 40)
  {
    goto LABEL_74;
  }

  (*(*a1 + 56))(a1);
  v18 = 0;
  LODWORD(v35) = 0;
LABEL_88:
  v52 = *MEMORY[0x277D85DE8];
  return v35 | v18;
}

void *sub_2394ED910(void *a1)
{
  if (*a1 != 6)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

void *sub_2394ED934(void *a1)
{
  if (*a1 != 7)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

void *sub_2394ED958(void *a1)
{
  if (*a1 != 8)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

void *sub_2394ED97C(void *a1)
{
  if (*a1 != 5)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

void *sub_2394ED9A0(void *a1)
{
  if (*a1 != 9)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

uint64_t sub_2394ED9C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    sub_2393C56C0(a1, *(a2 + 8));
    v5 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v3;
LABEL_7:
      memcpy(v5, *a2, v3);
      return a1;
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(a1 + 8) = 0;
    v6 = *a1;
    if (*a1)
    {
      j__free(v6);
      *a1 = 0;
    }
  }

  return a1;
}

void *sub_2394EDA44(void *a1)
{
  if (*a1 != 2)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

void *sub_2394EDA68(void *a1)
{
  if (*a1 != 3)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

void *sub_2394EDA8C(void *a1)
{
  if (*a1 != 4)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

uint64_t sub_2394EDAB0(uint64_t a1, int a2)
{
  if ((a2 & 0xFE) == 0x20 || a2 == 40 && *(a1 + 800))
  {
    v4 = a1 + 736;
    goto LABEL_6;
  }

  v4 = *(a1 + 720);
  if (v4)
  {
LABEL_6:
    if (a2 == 7)
    {
      v19[0] = *(a1 + 48);
      if (v19[0] == 1)
      {
        v20 = *(a1 + 56);
      }

      if (*(sub_2394EB70C(v19) + 1) > *(a1 + 1909))
      {
        v19[0] = *(a1 + 48);
        if (v19[0] == 1)
        {
          v20 = *(a1 + 56);
        }

        v8 = sub_2394EB70C(v19);
        v9 = sub_2394EDD7C(v8, 0, *(a1 + 1909));
        *(a1 + 48) = 1;
        *(a1 + 56) = v9;
        *(a1 + 64) = v10;
      }

      goto LABEL_20;
    }

    if (a2 == 6)
    {
      v19[0] = *(a1 + 24);
      if (v19[0] == 1)
      {
        v20 = *(a1 + 32);
      }

      if (*(sub_2394EB70C(v19) + 1) > *(a1 + 1908))
      {
        v19[0] = *(a1 + 24);
        if (v19[0] == 1)
        {
          v20 = *(a1 + 32);
        }

        v5 = sub_2394EB70C(v19);
        v6 = sub_2394EDD2C(v5, 0, *(a1 + 1908));
        *(a1 + 24) = 1;
        *(a1 + 32) = v6;
        *(a1 + 40) = v7;
      }

LABEL_20:
      v11 = *(a1 + 712);
LABEL_21:
      sub_2394EC31C(a1, v4, a2, v19);
      sub_239508128();
      v12 = 0;
      v13 = 0;
      return v13 | v12;
    }

    v15 = *(a1 + 712);
    if (a2 > 26)
    {
      if (a2 == 28)
      {
LABEL_35:
        v18 = *(a1 + 1876);
        goto LABEL_21;
      }

      if (a2 != 27)
      {
        goto LABEL_21;
      }
    }

    else if (a2 != 23)
    {
      if (a2 != 24)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }

    v16 = *(a1 + 1872);
    goto LABEL_21;
  }

  v17 = sub_2393D9044(9u);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *v19 = 0;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Invalid device for commissioning", v19, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(9u, 1);
  }

  v13 = 0x3CF00000000;
  v12 = 3;
  return v13 | v12;
}

uint64_t sub_2394EDD00(uint64_t a1, int a2)
{
  if ((a2 & 0xFE) == 0x20 || a2 == 40 && *(a1 + 800))
  {
    return a1 + 736;
  }

  else
  {
    return *(a1 + 720);
  }
}

uint64_t sub_2394EDD2C(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    sub_239531374();
  }

  if (v5 < a3)
  {
    sub_2395312DC();
  }

  sub_2394DB5F0(&v7, *a1 + 40 * a2, a3);
  return v7;
}

uint64_t sub_2394EDD7C(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    sub_239531374();
  }

  if (v5 < a3)
  {
    sub_2395312DC();
  }

  sub_2394DB5F0(&v7, *a1 + 32 * a2, a3);
  return v7;
}

void sub_2394EDDC8(void *a1)
{
  *a1 = &unk_284BBE888;
  sub_239495880(a1 + 3);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394EDE2C(uint64_t a1)
{
  if ((*(*a1 + 72))(a1))
  {
    (*(*a1 + 48))(&v5, a1);
    v2 = sub_238DE36B8(&v5);
    v3 = sub_239495304(*v2);
    sub_239493108(v3);
    if (v5 == 1)
    {
      (*(*v6 + 32))(v6);
    }
  }

  result = sub_239495804((a1 + 24));
  *(a1 + 16) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

unint64_t sub_2394EDF2C(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = sub_2393D9044(9u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Device Controller Factory already initialized...", v10, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v3 = 0;
    v4 = 0;
  }

  else
  {
    *a1 = *(a2 + 106);
    *(a1 + 16) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 72);
    *(a1 + 32) = *(a2 + 80);
    *(a1 + 40) = *(a2 + 16);
    *(a1 + 48) = *(a2 + 88);
    *(a1 + 56) = *(a2 + 104);
    v5 = *(a2 + 80);
    v10[4] = *(a2 + 64);
    v10[5] = v5;
    v10[6] = *(a2 + 96);
    v11 = *(a2 + 112);
    v6 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v6;
    v7 = *(a2 + 48);
    v10[2] = *(a2 + 32);
    v10[3] = v7;
    v8 = sub_2394EE03C(a1, v10);
    v4 = v8 & 0xFFFFFFFF00000000;
    v3 = v8;
  }

  return v4 | v3;
}

unint64_t sub_2394EE03C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    sub_2394EF368(*(a1 + 8));
    sub_2394EF8B8(v4 + 21, 0);
    j__free(v4);
    *(v3 + 8) = 0;
  }

  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  if (qword_27DF7BD08 != -1)
  {
    sub_2395312BC(a1);
  }

  if ((byte_27DF7BCA8 & 1) == 0)
  {
    a1 = sub_239479BC4(&byte_27DF7BCA8);
    byte_27DF7BCA8 = a1 == 0;
    if (a1)
    {
      v5 = HIDWORD(a1);
      v6 = a1;
      return v6 | (v5 << 32);
    }
  }

  v74 = sub_239476328(a1);
  v76 = sub_239477E68();
  v75 = sub_239477EA0();
  v7 = *(a2 + 106);
  v69 = v75;
  v70 = 2;
  v71 = v7;
  v72 = 0;
  v73 = 0;
  if (!*(a2 + 112))
  {
    v11 = sub_2393D9044(0x21u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v54) = 0;
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x21u, 1);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v54) = 0;
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x21u, 1);
    }

    if (!*(a2 + 112))
    {
      v6 = 47;
      v5 = 148;
      goto LABEL_36;
    }

    if (!v74)
    {
      v6 = 47;
      v5 = 149;
      goto LABEL_36;
    }
  }

  if (!v76)
  {
    v6 = 47;
    v5 = 150;
    goto LABEL_36;
  }

  if (!*(a2 + 64) && !*(a2 + 80))
  {
    v6 = 47;
    v5 = 154;
    goto LABEL_36;
  }

  if (!*(a2 + 40))
  {
    v6 = 47;
    v5 = 155;
    goto LABEL_36;
  }

  if ((byte_27DF7BCA0 & 1) == 0)
  {
    byte_27DF7BCA0 = 1;
    xmmword_27DF7BC40 = 0u;
    *algn_27DF7BC50 = 0u;
    xmmword_27DF7BC60 = 0u;
    unk_27DF7BC70 = 0u;
    xmmword_27DF7BC90 = 0u;
    xmmword_27DF7BC80 = 0u;
    sub_2393CC8A4(&xmmword_27DF7BC40 + 8);
    *&xmmword_27DF7BC40 = &unk_284BBB510;
    *&xmmword_27DF7BC80 = &unk_284BBB540;
    *(&xmmword_27DF7BC90 + 1) = &unk_284BBB580;
  }

  *(&v77 + 1) = sub_2393F8DE0(&xmmword_27DF7BC40);
  if (!*(&v77 + 1))
  {
    v6 = 47;
    v5 = 166;
    goto LABEL_36;
  }

  v8 = sub_2393D52C4(0x3A8uLL);
  v9 = v8;
  if (v8)
  {
    bzero(v8 + 1, 0x3A0uLL);
    *v9 = &unk_284BBE900;
    v9[3] = &unk_284BBE958;
    sub_2394EFC9C((v9 + 5));
  }

  *(&v79 + 1) = v9;
  LOBYTE(v55) = 2;
  v54 = v76;
  DWORD1(v55) = 0;
  *(&v55 + 1) = 0;
  *buf = v76;
  WORD1(v55) = *(a2 + 106);
  v67 = 0;
  v68 = 0;
  v66 = WORD1(v55);
  v65 = 1;
  v62 = *(&v77 + 1);
  v63 = 1;
  v10 = sub_2394EEB94(v9, &v54, buf, &v62, &v69);
  v6 = v10;
  if (v10)
  {
    v5 = HIDWORD(v10);
    goto LABEL_36;
  }

  v14 = sub_2393D52C4(0x118uLL);
  if (v14)
  {
    sub_239495F50(v14);
  }

  *(&v80 + 1) = *(a2 + 16);
  *&v81 = v14;
  v15 = sub_2393D52C4(0x10uLL);
  if (v15)
  {
    *v15 = &unk_284BB8C20;
    v15[1] = &unk_284BB8C78;
  }

  *(&v81 + 1) = v15;
  v16 = sub_2393D52C4(0x138uLL);
  if (v16)
  {
    v16 = sub_239471D5C();
  }

  *&v82 = v16;
  v17 = sub_2393D52C4(0x1740uLL);
  if (v17)
  {
    *v17 = &unk_284BBE148;
    v17[1] = &unk_284BBE1A0;
    v17[2] = &unk_284BBE1F0;
    v17[3] = 0;
    v18 = v17 + 52;
    v19 = 5920;
    do
    {
      *(v18 - 12) = 0;
      *(v18 - 20) = 0;
      *(v18 - 4) = 0;
      *(v18 - 1) = 5540;
      *v18 = 0;
      *(v18 + 1) = 0;
      *(v18 + 4) = 0;
      v18 += 40;
      v19 -= 40;
    }

    while (v19);
  }

  v20 = *(a2 + 24);
  *(&v82 + 1) = v17;
  *&v78 = v20;
  v21 = sub_2393D52C4(8uLL);
  if (v21)
  {
    *v21 = &unk_284BB7C68;
  }

  *&v86 = v21;
  v22 = sub_2393D52C4(0x50uLL);
  if (v22)
  {
    v22 = sub_2394D67EC(v22, v86);
  }

  v23 = *(a2 + 40);
  *(&v86 + 1) = v22;
  *(&v78 + 1) = v23;
  v24 = sub_2393D52C4(0x60uLL);
  if (v24)
  {
    *v24 = &unk_284BBE650;
    *(v24 + 4) = &unk_284BBE6A0;
    *(v24 + 72) = 0u;
    *(v24 + 40) = 0u;
    v24[88] = 0;
    *(v24 + 56) = 0u;
    *(v24 + 8) = v24 + 56;
    *(v24 + 9) = v24 + 56;
  }

  v25 = *(a2 + 64);
  *&v83 = v24;
  *&v77 = v25;
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v34 = sub_2394F164C();
    if (!v34)
    {
      v6 = 11;
      v5 = 226;
      goto LABEL_36;
    }

    v26 = v34;
    v54 = *(a2 + 8);
    v55 = *(a2 + 72);
    v35 = sub_2394AA264(v34, &v54);
    v36 = v35;
    if (v35)
    {
      v5 = HIDWORD(v35);
      sub_2394EF85C(v26);
      v6 = v36;
      goto LABEL_36;
    }

    *&v77 = v26;
  }

  v27 = *(a2 + 88);
  if (!v27)
  {
    v37 = sub_2393D52C4(0x10uLL);
    v29 = v37;
    if (v37)
    {
      *v37 = &off_284BB8B88;
      v37[1] = 0;
      v39 = *(a2 + 8);
      if (!v39)
      {
        off_284BB8B88(v37, v38);
        j__free(v29);
LABEL_80:
        v6 = 47;
        v5 = 41;
        goto LABEL_36;
      }
    }

    else
    {
      v39 = *(a2 + 8);
      if (!v39)
      {
        goto LABEL_80;
      }
    }

    v37[1] = v39;
    v40 = v80;
    *&v80 = v37;
    if (v40)
    {
      (**v40)(v40);
      j__free(v40);
      v27 = 0;
      v29 = v80;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_60;
  }

  v28 = v80;
  *&v80 = 0;
  if (v28)
  {
    (**v28)(v28);
    j__free(v28);
    v27 = *(a2 + 88);
  }

  v29 = v27;
LABEL_60:
  *&v79 = v27;
  v30 = sub_2393D52C4(0x20uLL);
  v31 = v30;
  if (v30)
  {
    *v30 = &unk_284BBED18;
    v30[1] = 0;
    v30[2] = 0;
    v30[3] = 0;
  }

  if (!v29)
  {
    v5 = 245;
    goto LABEL_74;
  }

  if (!v78)
  {
    v5 = 246;
LABEL_74:
    v33 = 47;
    v6 = 47;
    if (!v30)
    {
      goto LABEL_36;
    }

    goto LABEL_75;
  }

  v30[2] = v78;
  v30[3] = v29;
  *(&v85 + 1) = v30;
  v32 = sub_2394AAB28(v77, v30);
  v33 = v32;
  if (v32)
  {
    v5 = HIDWORD(v32);
LABEL_75:
    j__free(v31);
    v6 = v33;
    goto LABEL_36;
  }

  if (*(&v82 + 1))
  {
    v41 = *(&v82 + 1) + 16;
  }

  else
  {
    v41 = 0;
  }

  v42 = sub_239496184(v81, v74, *(&v79 + 1), v41, *(a2 + 8), v77, *(&v78 + 1));
  if (v42)
  {
    goto LABEL_94;
  }

  v42 = sub_239471D60(v82, v81);
  if (v42)
  {
    goto LABEL_94;
  }

  v42 = sub_2394E108C(*(&v82 + 1), v82);
  if (v42)
  {
    goto LABEL_94;
  }

  v42 = sub_2393F121C(*(&v81 + 1), v82);
  if (v42)
  {
    goto LABEL_94;
  }

  v42 = sub_2394E5D84(v83, v74, v82);
  if (v42)
  {
    goto LABEL_94;
  }

  v43 = sub_2394C7C20();
  sub_2394CC15C(v43, *(a2 + 112));
  v44 = sub_2394BA124();
  v42 = (*(*v44 + 16))(v44, v76);
  if (v42)
  {
    goto LABEL_94;
  }

  if (*(a2 + 104) == 1)
  {
    *(&v83 + 1) = sub_2394EEBFC();
    v42 = sub_2393DE11C(*(&v83 + 1), v82, v81, v77, v29, *(&v80 + 1), v78);
    if (v42)
    {
      goto LABEL_94;
    }

    v45 = sub_238DCAF30();
    *(v45 + 17) = sub_2394BF940(*(&v79 + 1) + 40);
    v46 = sub_238DCAF30();
    *(v46 + 18) = sub_2394BF940(*(&v79 + 1) + 72);
    v47 = sub_238DCAF30();
    sub_2394EEC20(v47, v77);
    *(sub_238DCAF30() + 32) = v73;
  }

  sub_2394EEC3C();
  *(&v84 + 1) = v48;
  sub_2394EEC98();
  *&v85 = v49;
  v54 = v81;
  *&v55 = v29;
  *(&v55 + 1) = *(&v80 + 1);
  v56 = v82;
  v57 = v77;
  v58 = v78;
  v59 = 0;
  v60 = v49;
  v61 = *(&v84 + 1);
  sub_2394EECF4();
  *&v84 = v50;
  v42 = sub_2394C4894(v50, v74, &v54);
  if (!v42)
  {
    v42 = sub_2394C7C60(v43, v82, v77, *(&v86 + 1), v84, 0, 0);
    if (v42)
    {
      v5 = HIDWORD(v42);
    }

    else
    {
      v51 = sub_2394EED68(&v74);
      *(v3 + 8) = v51;
      v52 = *(a2 + 104);
      v51[22] = v26;
      *(v51 + 189) = v52;
      v53 = sub_2393D9044(9u);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v53, OS_LOG_TYPE_INFO, "System State Initialized...", buf, 2u);
      }

      LODWORD(v42) = sub_2393D5398(3u);
      if (v42)
      {
        sub_2393D5320(9u, 3);
        v5 = 0;
        LODWORD(v42) = 0;
      }

      else
      {
        v5 = 0;
      }
    }

    goto LABEL_95;
  }

LABEL_94:
  v5 = HIDWORD(v42);
LABEL_95:
  v6 = v42;
LABEL_36:
  v12 = v80;
  *&v80 = 0;
  if (v12)
  {
    (**v12)(v12);
    j__free(v12);
  }

  return v6 | (v5 << 32);
}

unint64_t sub_2394EEA8C(unint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    if (*(v3 + 188) == 1)
    {
      v31 = v1;
      v32 = v2;
      v5 = *v3;
      v6 = v3[3];
      v21 = *a1;
      v7 = *(a1 + 16);
      v8 = *(a1 + 56);
      v9 = v3[15];
      v10 = v3[18];
      v11 = v3[9];
      v13 = *(a1 + 40);
      v12 = *(a1 + 48);
      v19 = *(v3 + 1);
      v20 = *(a1 + 24);
      v14 = sub_2394C7C20();
      v22[0] = v5;
      v22[1] = v7;
      v22[2] = v13;
      v22[3] = v9;
      v22[4] = 0;
      v22[5] = v10;
      v23 = v19;
      v24 = v11;
      v25 = v20;
      v26 = v12;
      v27 = v6;
      v28 = v8;
      v29 = v21;
      v30 = sub_2394C9128(v14);
      v15 = sub_2394EE03C(a1, v22);
      v16 = v15 & 0xFFFFFFFF00000000;
      v17 = v15;
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }
  }

  else
  {
    v16 = 0x5100000000;
    v17 = 3;
  }

  return v16 | v17;
}

unint64_t sub_2394EEB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  result = sub_2394F14B0(a1 + 24, a1, a2, a3, a4, a5);
  if (!result)
  {

    return sub_23949BF9C(a1, a1 + 24);
  }

  return result;
}

void *sub_2394EEBFC()
{
  result = sub_2393D52C4(0x318uLL);
  if (result)
  {
    return sub_2394F1848(result);
  }

  return result;
}

uint64_t sub_2394EEC20(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    sub_2395384D0();
  }

  *(result + 16) = a2;
  return result;
}

double sub_2394EEC3C()
{
  v0 = sub_2393D52C4(0x40uLL);
  if (v0)
  {
    *(v0 + 7) = 0;
    *v0 = &unk_284BBEDE8;
    result = 0.0;
    *(v0 + 40) = 0u;
    *(v0 + 8) = 0u;
    v0[56] = 0;
    *(v0 + 24) = 0u;
    *(v0 + 4) = v0 + 24;
    *(v0 + 5) = v0 + 24;
  }

  return result;
}

double sub_2394EEC98()
{
  v0 = sub_2393D52C4(0x40uLL);
  if (v0)
  {
    *(v0 + 7) = 0;
    *v0 = &unk_284BBEEB8;
    result = 0.0;
    *(v0 + 40) = 0u;
    *(v0 + 8) = 0u;
    v0[56] = 0;
    *(v0 + 24) = 0u;
    *(v0 + 4) = v0 + 24;
    *(v0 + 5) = v0 + 24;
  }

  return result;
}

double sub_2394EECF4()
{
  v0 = sub_2393D52C4(0x60uLL);
  if (v0)
  {
    v0[8] = 0;
    v0[9] = 0;
    *v0 = &unk_284BBD420;
    v0[1] = &unk_284BBD450;
    result = 0.0;
    *(v0 + 1) = 0u;
    *(v0 + 2) = 0u;
    *(v0 + 3) = 0u;
    *(v0 + 64) = 0;
    v0[10] = 0;
    v0[11] = 0;
  }

  return result;
}

void *sub_2394EED68(uint64_t a1)
{
  v2 = sub_2393D52C4(0xC0uLL);
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 48);
    v13[2] = *(a1 + 32);
    v13[3] = v4;
    v5 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v5;
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    *(a1 + 72) = 0;
    v14 = v6;
    v15 = v7;
    v8 = *(a1 + 160);
    v20 = *(a1 + 144);
    v21 = v8;
    v22 = *(a1 + 176);
    v9 = *(a1 + 96);
    v16 = *(a1 + 80);
    v17 = v9;
    v10 = *(a1 + 128);
    v18 = *(a1 + 112);
    v19 = v10;
    sub_2394F2540(v2, v13);
    v11 = v15;
    v15 = 0;
    if (v11)
    {
      (**v11)(v11);
      j__free(v11);
    }
  }

  return v3;
}

_BYTE *sub_2394EEE28(_BYTE *result, uint64_t a2, uint64_t a3)
{
  *(a2 + 16) = *a3;
  *(a2 + 24) = *(a3 + 8);
  *(a2 + 32) = *(a3 + 16);
  *(a2 + 40) = *(a3 + 24);
  *(a2 + 56) = *(a3 + 40);
  *(a2 + 72) = *(a3 + 56);
  *(a2 + 88) = *(a3 + 88);
  *(a2 + 90) = *(a3 + 90);
  *(a2 + 91) = *(a3 + 91);
  *a2 = *(result + 1);
  *(a2 + 94) = *(a3 + 72);
  *(a2 + 89) = *(a3 + 89);
  v4 = *(a3 + 92);
  v3 = (a3 + 92);
  if (v4 == 1)
  {
    result = sub_238DE36D8(v3);
    *(a2 + 92) = 1;
    *(a2 + 93) = *result;
  }

  return result;
}

uint64_t sub_2394EEED0(uint64_t result, uint64_t a2)
{
  if (*(result + 56) == 1 && *(a2 + 36) != 0)
  {
    v4 = sub_238DCAF30();

    return sub_239528058(v4);
  }

  return result;
}

unint64_t sub_2394EEF10(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 72))
  {
    v6 = sub_2394EEA8C(a1);
    v7 = v6;
    if (v6)
    {
      v8 = v6 & 0xFFFFFFFF00000000;
    }

    else
    {
      v18[0] = 0;
      v16 = 0u;
      v17 = 0u;
      memset(&v18[8], 0, 48);
      *&v18[56] = 0x10000;
      v19 = 0;
      sub_2394EEE28(a1, &v16, a2);
      v11[2] = *v18;
      v11[3] = *&v18[16];
      *v12 = *&v18[32];
      *&v12[12] = *&v18[44];
      v11[0] = v16;
      v11[1] = v17;
      v13 = v19;
      if (v19 == 1)
      {
        v14 = v20;
      }

      v15 = v21;
      v9 = (*(*a3 + 32))(a3, v11);
      v7 = v9;
      v8 = v9 & 0xFFFFFFFF00000000;
      if (!v9)
      {
        sub_2394EEED0(a1, a3);
      }
    }
  }

  else
  {
    v8 = 0x17D00000000;
    v7 = 47;
  }

  return v7 | v8;
}

unint64_t sub_2394EF050(_BYTE *a1, int8x16_t *a2, void *a3)
{
  if (a2[4].i16[4])
  {
    v6 = sub_2394EEA8C(a1);
    v7 = v6;
    if (v6)
    {
      v8 = v6 & 0xFFFFFFFF00000000;
    }

    else
    {
      v20[0] = 0;
      v18 = 0u;
      v19 = 0u;
      memset(&v20[8], 0, 48);
      *&v20[56] = 0x10000;
      v21 = 0;
      sub_2394EEE28(a1, &v18, a2);
      *&v24[0] = a2[5].i64[0];
      *(v24 + 8) = vextq_s8(a2[6], a2[6], 8uLL);
      v11[2] = *v20;
      v11[3] = *&v20[16];
      *v12 = *&v20[32];
      *&v12[12] = *&v20[44];
      v11[0] = v18;
      v11[1] = v19;
      v13 = v21;
      if (v21 == 1)
      {
        v14 = v22;
      }

      v15 = v23;
      v16 = v24[0];
      v17 = *&v24[1];
      v9 = sub_2394FAB20(a3, v11);
      v7 = v9;
      v8 = v9 & 0xFFFFFFFF00000000;
      if (!v9)
      {
        sub_2394EEED0(a1, a3);
      }
    }
  }

  else
  {
    v8 = 0x18F00000000;
    v7 = 47;
  }

  return v7 | v8;
}

unint64_t sub_2394EF198(uint64_t a1)
{
  if (*(a1 + 8))
  {
    if (qword_27DF7BD08 != -1)
    {
      sub_2395312BC(a1);
    }

    v1 = sub_239479C70(&byte_27DF7BCA8);
    v2 = v1 & 0xFFFFFFFF00000000;
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    if (!v1)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0x1A800000000;
    v3 = 3;
  }

  return v2 | v3;
}

uint64_t sub_2394EF218(uint64_t result)
{
  if (atomic_fetch_add((result + 184), 1u) == -1)
  {
    sub_239538600();
  }

  if (*(result + 188) == 1)
  {
    sub_239538568();
  }

  return result;
}

BOOL sub_2394EF25C(uint64_t a1)
{
  add = atomic_fetch_add((a1 + 184), 0xFFFFFFFF);
  if (!add)
  {
    sub_239538698();
  }

  if (add == 1)
  {
    sub_2394EF368(a1);
  }

  return add == 1;
}

unint64_t sub_2394EF2A0(unint64_t a1)
{
  v2 = sub_2394EEA8C(a1);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2394EF218(*(a1 + 8));
    LODWORD(v2) = 0;
    v3 = 0;
  }

  return v3 | v2;
}

double sub_2394EF314(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_2394EF368(*(a1 + 8));
    sub_2394EF8B8(v2 + 21, 0);
    j__free(v2);
    *(a1 + 8) = 0;
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t sub_2394EF368(uint64_t result)
{
  if (atomic_load((result + 184)))
  {
    sub_239538730();
  }

  v2 = result;
  if ((*(result + 188) & 1) == 0)
  {
    *(result + 188) = 1;
    v3 = sub_2393D9044(9u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v30 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "Shutting down the System State, this will teardown the CHIP Stack", v30, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(9u, 3);
    }

    if (*(v2 + 176) && *(v2 + 189) == 1)
    {
      v4 = sub_238DCAF30();
      sub_23952855C(v4);
    }

    v5 = *(v2 + 152);
    if (v5)
    {
      v6 = *(v2 + 72);
      if (!v6 || (sub_2394AAB8C(v6, *(v2 + 152)), (v5 = *(v2 + 152)) != 0))
      {
        (**v5)(v5);
        j__free(v5);
      }

      *(v2 + 152) = 0;
    }

    v7 = *(v2 + 80);
    if (v7)
    {
      sub_2394E5EA8(v7);
      v8 = *(v2 + 80);
      if (v8)
      {
        (**v8)(*(v2 + 80));
        j__free(v8);
      }

      *(v2 + 80) = 0;
    }

    v9 = *(v2 + 88);
    if (v9)
    {
      sub_2393DF53C(v9);
      v10 = *(v2 + 88);
      if (v10)
      {
        (*(*v10 + 40))(*(v2 + 88));
        j__free(v10);
      }

      *(v2 + 88) = 0;
    }

    if (*(v2 + 96))
    {
      sub_2394C4990();
      v11 = *(v2 + 96);
      if (v11)
      {
        (**v11)(*(v2 + 96));
        j__free(v11);
      }

      *(v2 + 96) = 0;
    }

    v12 = *(v2 + 40);
    if (v12)
    {
      sub_2394962A4(v12);
    }

    v13 = *(v2 + 104);
    if (v13)
    {
      (*(*v13 + 40))(*(v2 + 104));
      j__free(v13);
      *(v2 + 104) = 0;
    }

    v14 = *(v2 + 112);
    if (v14)
    {
      (*(*v14 + 16))(*(v2 + 112));
      j__free(v14);
      *(v2 + 112) = 0;
    }

    v15 = sub_2394BA124();
    (*(*v15 + 32))(v15);
    v16 = sub_2394C7C20();
    sub_2394C7D48(v16);
    v17 = *(v2 + 32);
    if (v17)
    {
      sub_23949C058(*(v2 + 32));
      sub_2394F13C0((v17 + 24));
      v18 = *(v2 + 32);
      if (v18)
      {
        (**v18)(*(v2 + 32));
        j__free(v18);
      }

      *(v2 + 32) = 0;
    }

    v19 = *(v2 + 56);
    if (v19)
    {
      sub_239471DEC(v19);
    }

    v20 = *(v2 + 40);
    if (v20)
    {
      sub_23949609C(v20);
    }

    *v2 = 0u;
    *(v2 + 16) = 0u;
    v21 = *(v2 + 64);
    if (v21)
    {
      (**v21)(*(v2 + 64));
      j__free(v21);
      *(v2 + 64) = 0;
    }

    v22 = *(v2 + 56);
    if (v22)
    {
      (**v22)(*(v2 + 56));
      j__free(v22);
      *(v2 + 56) = 0;
    }

    v23 = *(v2 + 48);
    if (v23)
    {
      (**v23)(*(v2 + 48));
      j__free(v23);
      *(v2 + 48) = 0;
    }

    v24 = *(v2 + 40);
    if (v24)
    {
      (**v24)(*(v2 + 40));
      j__free(v24);
      *(v2 + 40) = 0;
    }

    v25 = *(v2 + 136);
    if (v25)
    {
      (**v25)(*(v2 + 136));
      j__free(v25);
      *(v2 + 136) = 0;
    }

    v26 = *(v2 + 128);
    if (v26)
    {
      (**v26)(*(v2 + 128));
      j__free(v26);
      *(v2 + 128) = 0;
    }

    v27 = *(v2 + 176);
    if (v27)
    {
      sub_2394AAA3C(v27);
      v28 = *(v2 + 176);
      if (v28)
      {
        sub_238DCCC50(v28 + 2432);
        for (i = 2280; i != -152; i -= 152)
        {
          sub_238DCCC50(v28 + i);
        }

        j__free(v28);
      }

      *(v2 + 176) = 0;
      *(v2 + 72) = 0;
    }

    if (qword_27DF7BD08 != -1)
    {
      sub_239531934(v27);
    }

    result = sub_239479268();
    byte_27DF7BCA8 = 0;
  }

  return result;
}

void sub_2394EF85C(void *a1)
{
  if (a1)
  {
    sub_238DCCC50(a1 + 2432);
    for (i = 2280; i != -152; i -= 152)
    {
      sub_238DCCC50(a1 + i);
    }

    j__free(a1);
  }
}

void sub_2394EF8B8(void (****a1)(void), void (***a2)(void))
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);

    j__free(v2);
  }
}

void *sub_2394EF928(void *a1)
{
  *a1 = &unk_284BBE900;
  a1[3] = &unk_284BBE958;
  sub_2394C33DC((a1 + 114));
  sub_2394F0660(a1 + 22);
  a1[13] = &unk_284BBE9C0;
  a1[15] = &unk_284BBEA40;
  v2 = a1[21];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[21] = 0;
  sub_2394C2690(a1 + 13);
  sub_2394BF248(a1 + 9);
  sub_2394BF248(a1 + 5);
  return a1;
}

void sub_2394EFA00(void *a1)
{
  *a1 = &unk_284BBE900;
  a1[3] = &unk_284BBE958;
  sub_2394C33DC((a1 + 114));
  sub_2394F0660(a1 + 22);
  a1[13] = &unk_284BBE9C0;
  a1[15] = &unk_284BBEA40;
  v2 = a1[21];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[21] = 0;
  sub_2394C2690(a1 + 13);
  sub_2394BF248(a1 + 9);
  sub_2394BF248(a1 + 5);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394EFAF8(void *a1)
{
  *a1 = &unk_284BBE958;
  sub_2394C33DC((a1 + 111));
  sub_2394F0660(a1 + 19);
  a1[10] = &unk_284BBE9C0;
  a1[12] = &unk_284BBEA40;
  v2 = a1[18];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[18] = 0;
  sub_2394C2690(a1 + 10);
  sub_2394BF248(a1 + 6);
  sub_2394BF248(a1 + 2);
  return a1;
}

void sub_2394EFBB0(void *a1)
{
  *a1 = &unk_284BBE958;
  sub_2394C33DC((a1 + 111));
  sub_2394F0660(a1 + 19);
  a1[10] = &unk_284BBE9C0;
  a1[12] = &unk_284BBEA40;
  v2 = a1[18];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[18] = 0;
  sub_2394C2690(a1 + 10);
  sub_2394BF248(a1 + 6);
  sub_2394BF248(a1 + 2);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394EFC9C(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_284BBD0A0;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = &unk_284BBD0A0;
  *(a1 + 40) = 0;
  *(a1 + 96) = 0;
  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 1;
  *(a1 + 64) = &unk_284BBE9C0;
  *(a1 + 72) = 0;
  *(a1 + 80) = &unk_284BBEA40;
  *(a1 + 88) = 0;
  sub_2394EFFB8(a1 + 136);
  *(a1 + 880) = 0;
  *(a1 + 888) = 0;
  *(a1 + 872) = &unk_284BBEC28;
  return a1;
}

void *sub_2394EFD90(void *a1)
{
  *a1 = &unk_284BBE9C0;
  a1[2] = &unk_284BBEA40;
  v2 = a1[8];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[8] = 0;

  return sub_2394C2690(a1);
}

void sub_2394EFE10(void *a1)
{
  *a1 = &unk_284BBE9C0;
  a1[2] = &unk_284BBEA40;
  v2 = a1[8];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[8] = 0;
  sub_2394C2690(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394EFEA4(void *a1)
{
  v2 = a1 - 2;
  *(a1 - 2) = &unk_284BBE9C0;
  *a1 = &unk_284BBEA40;
  v3 = a1[6];
  if (v3)
  {
    sub_2393D96C8(v3);
  }

  a1[6] = 0;

  return sub_2394C2690(v2);
}

void sub_2394EFF24(void *a1)
{
  v2 = a1 - 2;
  *(a1 - 2) = &unk_284BBE9C0;
  *a1 = &unk_284BBEA40;
  v3 = a1[6];
  if (v3)
  {
    sub_2393D96C8(v3);
  }

  a1[6] = 0;
  sub_2394C2690(v2);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394EFFB8(uint64_t a1)
{
  v2 = 0;
  v12[4] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 28) = 10000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a1 + 64;
  *(a1 + 48) = 4;
  *(a1 + 56) = a1 + 512;
  *a1 = &unk_284BBEAA8;
  do
  {
    v3 = a1 + v2;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    *(v3 + 90) = 5540;
    *(v3 + 120) = 0;
    *(v3 + 100) = 0;
    *(v3 + 92) = 0;
    *(v3 + 108) = 0;
    *(v3 + 128) = 327705;
    v2 += 112;
    *(v3 + 168) = 0;
  }

  while (v2 != 448);
  *(a1 + 512) = &unk_284BBEB10;
  sub_2393D664C((a1 + 520), a1 + 576, a1 + 568, 4, 40);
  for (i = 64; i != 512; i += 112)
  {
    v7 = 0uLL;
    v8 = 0;
    v9 = 5540;
    v10 = 0;
    v11 = 0;
    v12[0] = &unk_284BBEBA8;
    v12[3] = v12;
    sub_2394C07E8(a1 + i, 0, &v7, v12);
    sub_2394C24D8(v12);
  }

  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2394F0148(void *a1)
{
  sub_2394F0660(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394F0180(void *a1)
{
  *a1 = &unk_284BBEB10;
  sub_2394F0428(a1 + 1);
  return a1;
}

void sub_2394F01C4(void *a1)
{
  *a1 = &unk_284BBEB10;
  sub_2394F0428(a1 + 1);

  JUMPOUT(0x23EE77B60);
}

__n128 sub_2394F0228(uint64_t a1, __n128 *a2, unint64_t *a3)
{
  v5 = (*(*a1 + 56))(a1);
  v6 = sub_2393D66C4(v5);
  if (v6)
  {
    result = *a2;
    v6[1].n128_u32[0] = a2[1].n128_u32[0];
    *v6 = result;
    v6[1].n128_u32[1] = a2[1].n128_u32[1];
    v6[1].n128_u64[1] = a2[1].n128_u64[1];
    v6[2].n128_u64[0] = *a3;
    *a3 = 0;
  }

  return result;
}

unint64_t sub_2394F02A4(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 56))(a1);

  return sub_2394F0510(v3, a2);
}

uint64_t sub_2394F02FC(uint64_t a1)
{
  v1 = (*(*a1 + 56))(a1);

  return sub_2393D681C(v1, v1, sub_2394F0564);
}

uint64_t sub_2394F0358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = (*(*a1 + 56))(a1);
  v7[0] = &v5;
  v7[1] = &v6;
  return sub_2393D681C(v3, v7, sub_2394F0580);
}

uint64_t sub_2394F03C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = (*(*a1 + 64))(a1);
  v7[0] = &v5;
  v7[1] = &v6;
  return sub_2393D681C(v3, v7, sub_2394F0590);
}

uint64_t *sub_2394F0428(uint64_t *result)
{
  if (*result)
  {
    sub_2395387C8(result);
  }

  return result;
}

uint64_t sub_2394F0444(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x1Bu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *a1;
    *buf = 134217984;
    v8 = v3;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "BitMapObjectPool: %lu allocated", buf, 0xCu);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
    v6 = *a1;
    result = sub_2393D5320(0x1Bu, 1);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394F0510(unint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(a2 + 32);
    if (v4)
    {
      sub_2393D96C8(v4);
    }

    *(a2 + 32) = 0;

    return sub_2393D676C(v3, a2);
  }

  return result;
}

uint64_t sub_2394F0614(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BBEC08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_2394F0660(void *a1)
{
  *a1 = &unk_284BBEAA8;
  v2 = (*(a1[64] + 56))(a1 + 64);
  sub_2393D681C(v2, v2, sub_2394F0564);
  a1[64] = &unk_284BBEB10;
  sub_2394F0428(a1 + 65);
  for (i = 0; i != -56; i -= 14)
  {
    sub_2394C24D8(&a1[i + 60]);
    v4 = a1[i + 55];
    if (v4)
    {
      sub_2393D96C8(v4);
    }

    a1[i + 55] = 0;
  }

  return sub_2394BFD08(a1);
}

void sub_2394F0750(uint64_t a1)
{
  sub_2394C33DC(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394F0788(uint64_t a1, uint64_t a2, _WORD **a3)
{
  v6 = a1 + 16;
  if ((*(*(a1 + 16) + 24))(a1 + 16))
  {
    v7 = *(*v6 + 16);

    return v7(v6, a2, a3);
  }

  else
  {

    return sub_2394F0850(a1, a2, a3);
  }
}

uint64_t sub_2394F0850(uint64_t a1, uint64_t a2, _WORD **a3)
{
  v6 = a1 + 48;
  if ((*(*(a1 + 48) + 24))(a1 + 48))
  {
    v7 = *(*v6 + 16);

    return v7(v6, a2, a3);
  }

  else
  {

    return sub_2394F0918(a1, a2, a3);
  }
}

uint64_t sub_2394F0918(uint64_t a1, uint64_t a2, _WORD **a3)
{
  v6 = a1 + 80;
  if ((*(*(a1 + 80) + 24))(a1 + 80))
  {
    v7 = *(*v6 + 16);

    return v7(v6, a2, a3);
  }

  else
  {

    return sub_2394F09E0(a1, a2, a3);
  }
}

uint64_t sub_2394F09E0(uint64_t a1, uint64_t a2, _WORD **a3)
{
  v6 = a1 + 152;
  if ((*(*(a1 + 152) + 24))(a1 + 152))
  {
    v7 = *(*v6 + 16);

    return v7(v6, a2, a3);
  }

  else
  {

    return sub_2394F0AA8(a1, a2, a3);
  }
}

uint64_t sub_2394F0AA8(uint64_t a1, uint64_t a2, _WORD **a3)
{
  v5 = a1 + 888;
  if ((*(*(a1 + 888) + 24))(a1 + 888))
  {
    v6 = *(*v5 + 16);

    return v6(v5, a2, a3);
  }

  else
  {
    v8 = *a3;
    *a3 = 0;
    if (v8)
    {
      sub_2393D96C8(v8);
    }

    return 0x10B0000000CLL;
  }
}

uint64_t sub_2394F0B70(void *a1, uint64_t a2)
{
  if ((*(a1[2] + 24))() & 1) != 0 || ((*(a1[6] + 24))(a1 + 6, a2))
  {
    return 1;
  }

  return sub_2394F0C14(a1, a2);
}

uint64_t sub_2394F0C14(void *a1, uint64_t a2)
{
  if ((*(a1[10] + 24))() & 1) != 0 || ((*(a1[19] + 24))(a1 + 19, a2))
  {
    return 1;
  }

  v5 = *(a1[111] + 24);

  return v5();
}

uint64_t sub_2394F0CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 16;
  if ((*(*(a1 + 16) + 24))(a1 + 16))
  {
    v9 = *(*v8 + 40);

    return v9(v8, a2, a3, a4);
  }

  else
  {

    return sub_2394F0DB8(a1, a2, a3, a4);
  }
}

uint64_t sub_2394F0DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 48;
  if ((*(*(a1 + 48) + 24))(a1 + 48))
  {
    v9 = *(*v8 + 40);

    return v9(v8, a2, a3, a4);
  }

  else
  {

    return sub_2394F0E98(a1, a2, a3, a4);
  }
}

uint64_t sub_2394F0E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 80;
  if ((*(*(a1 + 80) + 24))(a1 + 80))
  {
    v9 = *(*v8 + 40);

    return v9(v8, a2, a3, a4);
  }

  else
  {

    return sub_2394F0F78(a1, a2, a3, a4);
  }
}

uint64_t sub_2394F0F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 152;
  if (((*(*(a1 + 152) + 24))(a1 + 152) & 1) == 0)
  {
    v8 = a1 + 888;
    if (!(*(*(a1 + 888) + 24))(a1 + 888, a2))
    {
      return 0xAF0000000CLL;
    }
  }

  v9 = *(*v8 + 40);

  return v9(v8, a2, a3, a4);
}

uint64_t sub_2394F107C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 16;
  if ((*(*(a1 + 16) + 32))(a1 + 16))
  {
    v7 = *(*v6 + 48);

    return v7(v6, a2, a3);
  }

  else
  {

    return sub_2394F1144(a1, a2, a3);
  }
}

uint64_t sub_2394F1144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 48;
  if ((*(*(a1 + 48) + 32))(a1 + 48))
  {
    v7 = *(*v6 + 48);

    return v7(v6, a2, a3);
  }

  else
  {

    return sub_2394F120C(a1, a2, a3);
  }
}

uint64_t sub_2394F120C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 80;
  if ((*(*(a1 + 80) + 32))(a1 + 80))
  {
    v7 = *(*v6 + 48);

    return v7(v6, a2, a3);
  }

  else
  {

    return sub_2394F12D4(a1, a2, a3);
  }
}

uint64_t sub_2394F12D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 152;
  if (((*(*(a1 + 152) + 32))(a1 + 152) & 1) == 0)
  {
    v6 = a1 + 888;
    if (!(*(*(a1 + 888) + 32))(a1 + 888))
    {
      return 0x1290000000CLL;
    }
  }

  v7 = *(*v6 + 48);

  return v7(v6, a2, a3);
}

uint64_t sub_2394F13C0(void *a1)
{
  v1 = a1;
  (*(a1[2] + 56))();
  (*(v1[6] + 56))();
  (*(v1[10] + 56))();
  v2 = v1[19];
  v1 += 19;
  (*(v2 + 56))(v1);
  v3 = *(v1[92] + 56);

  return v3();
}

unint64_t sub_2394F14B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  result = sub_2394BF2F0(a1 + 16, a3);
  if (!result)
  {
    *(a1 + 24) = a2;
    return sub_2394F1524(a1, a2, a4, a5, a6);
  }

  return result;
}

unint64_t sub_2394F1524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  result = sub_2394BF2F0(a1 + 48, a3);
  if (!result)
  {
    *(a1 + 56) = a2;
    return sub_2394F1590(a1, a2, a4, a5);
  }

  return result;
}

unint64_t sub_2394F1590(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = sub_2394C28F0(a1 + 80, a3);
  if (!result)
  {
    *(a1 + 88) = a2;
    return sub_2394F15EC(a1, a2, a4);
  }

  return result;
}

unint64_t sub_2394F15EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2394C0048(a1 + 152, a3);
  if (!result)
  {
    *(a1 + 160) = a2;
    result = sub_2394C3460(a1 + 888);
    if (!result)
    {
      result = 0;
      *(a1 + 896) = a2;
    }
  }

  return result;
}

uint64_t sub_2394F164C()
{
  v0 = sub_2393D52C4(0xA58uLL);
  v1 = v0;
  if (v0)
  {
    bzero(v0, 0xA58uLL);
    sub_238DCCAEC(v1);
  }

  return v1;
}

uint64_t sub_2394F16A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 16);
  if (v5)
  {
    (*(*v5 + 208))(v5, a3);
  }

  return sub_2394F1718(a1, v3);
}

uint64_t sub_2394F1718(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  result = *(a1 + 24);
  if (result)
  {
    result = (*(*result + 40))(result);
    if (result)
    {
      v4 = sub_2393D9044(9u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        v7 = a2;
        v8 = 2080;
        v9 = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Warning, failed to delete session resumption state for fabric index 0x%x: %s", buf, 0x12u);
      }

      result = sub_2393D5398(1u);
      if (result)
      {
        sub_2393C9138();
        result = sub_2393D5320(9u, 1);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394F1848(uint64_t a1)
{
  *a1 = &unk_284BB8410;
  *(a1 + 8) = &unk_284BB8478;
  *(a1 + 16) = &unk_284BB84B0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 64) = &unk_284BBECE0;
  *(a1 + 72) = &unk_284BBEC90;
  *(a1 + 80) = &unk_284BBED70;
  *(a1 + 88) = 0;
  sub_2394F1A2C(a1 + 96);
  *(a1 + 64) = &unk_284BB8558;
  *(a1 + 72) = &unk_284BB8608;
  *(a1 + 80) = &unk_284BB8658;
  *(a1 + 96) = &unk_284BB8698;
  *(a1 + 248) = 0;
  sub_2393F7EB0((a1 + 256));
  *(a1 + 376) = &unk_284BB9138;
  *(a1 + 456) = 0;
  *(a1 + 496) = xmmword_2395D82B0;
  *(a1 + 528) = 0;
  *(a1 + 530) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 784) = 0;
  *(a1 + 768) = 0u;
  return a1;
}

uint64_t sub_2394F1A2C(uint64_t a1)
{
  *a1 = &unk_284BB8A80;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 16) = &unk_284BBEDB0;
  *(a1 + 56) = a1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = sub_239476060();
  *(a1 + 120) = v2;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  return a1;
}

void *sub_2394F1AD0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = a4;
  v9[1] = a5;
  v7 = a6;
  v8 = a3;
  return sub_2394F1CCC((a1 + 8), a2, &v8, v9, &v7);
}

uint64_t sub_2394F1B10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = a4;
  v5 = 0;
  v8[0] = v7;
  v8[1] = &v6;
  v8[2] = &v5;
  sub_2393D6A10((a1 + 24), v8, sub_2394F20C0);
  return v5;
}

uint64_t sub_2394F1B6C(uint64_t a1, char a2)
{
  v3 = a2;
  v4[0] = &v3;
  v4[1] = a1;
  return sub_2393D6A10((a1 + 24), v4, sub_2394F2110);
}

void *sub_2394F1BEC(void *a1)
{
  *a1 = &unk_284BBEDE8;
  sub_2393D6A10(a1 + 3, (a1 + 1), sub_2394F21A8);
  sub_2394786E4(a1 + 1);
  return a1;
}

void sub_2394F1C4C(void *a1)
{
  *a1 = &unk_284BBEDE8;
  sub_2393D6A10(a1 + 3, (a1 + 1), sub_2394F21A8);
  sub_2394786E4(a1 + 1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394F1CCC(unint64_t *a1, __int128 *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_2393D52C4(0x238uLL);
  v11 = v10;
  if (v10)
  {
    sub_2394F1D80(v10, a2, *a3, *a4, a4[1], *a5);
    v12 = sub_2393D52C4(0x18uLL);
    if (v12)
    {
      *v12 = v11;
      v12[1] = a1 + 2;
      v12[2] = 0;
      v13 = a1[4];
      v12[2] = v13;
      *(v13 + 8) = v12;
      a1[4] = v12;
      v14 = a1[1];
      v15 = *a1 + 1;
      *a1 = v15;
      if (v15 > v14)
      {
        a1[1] = v15;
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_2394F1D80(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = 0;
  v11 = a1 + 8;
  *a1 = &unk_284BBD970;
  *(a1 + 16) = 0u;
  v12 = (a1 + 16);
  *(a1 + 8) = &unk_284BBD9C8;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = xmmword_27DF7BD44;
  *(a1 + 128) = 1;
  *(a1 + 130) = 5540;
  *(a1 + 132) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_284BBBF18;
  *(a1 + 168) = 0;
  *(a1 + 184) = a1 + 184;
  *(a1 + 192) = a1 + 184;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 216) = &unk_284BBEE58;
  *(a1 + 224) = 0;
  do
  {
    v13 = a1 + v10;
    *(v13 + 248) = 0;
    *(v13 + 256) = 0;
    *(v13 + 264) = 1;
    *(v13 + 266) = 5540;
    *(v13 + 268) = 0;
    *(v13 + 272) = 0;
    *(v13 + 280) = sub_239476060();
    *(v13 + 288) = v14;
    *(v13 + 292) = 0;
    *(v13 + 294) = 0;
    v10 += 48;
  }

  while (v10 != 240);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0xAFC8000000C8;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0;
  *(a1 + 552) = a1 + 544;
  *(a1 + 544) = a1 + 544;
  *(a1 + 560) = 0;
  v15 = *a2;
  v16 = a2[2];
  v12[1] = a2[1];
  v12[2] = v16;
  *v12 = v15;
  v17 = *(a2 + 48);
  *(a1 + 64) = v17;
  if (v17 == 1)
  {
    v18 = *(a2 + 52);
    *(a1 + 76) = *(a2 + 15);
    *(a1 + 68) = v18;
  }

  v19 = 0;
  if (a6 && a3 && *a2 && *(a2 + 3) && *(a2 + 4) && *(a2 + 5))
  {
    *(a1 + 80) = a3;
    *(a1 + 96) = a4;
    *(a1 + 104) = a5;
    *(a1 + 208) = a6;
    v19 = 1;
    *(a1 + 240) = v11;
  }

  *(a1 + 528) = v19;
  return a1;
}

void sub_2394F1FC4(uint64_t a1)
{
  sub_238EA9350((a1 + 8));

  JUMPOUT(0x23EE77B60);
}

void sub_2394F2010(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    (*(*a2 + 40))(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

uint64_t sub_2394F20C0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96) != **a1 || *(*a1 + 8) != *(a2 + 104) || **(a1 + 8) != *(a2 + 529))
  {
    return 0;
  }

  **(a1 + 16) = a2;
  return 1;
}

uint64_t sub_2394F2110(unsigned __int8 **a1, uint64_t a2)
{
  if (*(a2 + 104) == **a1)
  {
    (*(*a1[1] + 8))(a1[1]);
  }

  return 0;
}

void *sub_2394F21D4(void *a1)
{
  *a1 = &unk_284BBEEB8;
  sub_2393D6A10(a1 + 3, (a1 + 1), sub_2394F2524);
  sub_2394786E4(a1 + 1);
  return a1;
}

void sub_2394F2234(void *a1)
{
  *a1 = &unk_284BBEEB8;
  sub_2393D6A10(a1 + 3, (a1 + 1), sub_2394F2524);
  sub_2394786E4(a1 + 1);

  JUMPOUT(0x23EE77B60);
}

char *sub_2394F22B4(unint64_t *a1)
{
  v2 = sub_2393D52C4(0x2C0uLL);
  v3 = v2;
  if (v2)
  {
    bzero(v2 + 32, 0x2A0uLL);
    *v3 = &unk_284BBECE0;
    *(v3 + 1) = &unk_284BBEC90;
    *(v3 + 2) = &unk_284BBED70;
    *(v3 + 3) = 0;
    sub_2394F1A2C((v3 + 32));
    *v3 = &unk_284BB8558;
    *(v3 + 1) = &unk_284BB8608;
    *(v3 + 2) = &unk_284BB8658;
    *(v3 + 4) = &unk_284BB8698;
    *(v3 + 23) = 0;
    sub_2393F7EB0(v3 + 24);
    *(v3 + 39) = &unk_284BB9138;
    *(v3 + 49) = 0;
    *(v3 + 27) = xmmword_2395D82B0;
    *(v3 + 232) = 0;
    v3[466] = 0;
    *(v3 + 59) = 0;
    *(v3 + 60) = 0;
    *(v3 + 67) = 0;
    *(v3 + 69) = 0;
    *(v3 + 68) = 0;
    v3[560] = 0;
    *(v3 + 71) = 0;
    *(v3 + 73) = 0;
    *(v3 + 72) = 0;
    *(v3 + 148) = 0;
    *(v3 + 664) = 0u;
    *(v3 + 680) = 0u;
    v4 = sub_2393D52C4(0x18uLL);
    if (v4)
    {
      *v4 = v3;
      v4[1] = a1 + 2;
      v4[2] = 0;
      v5 = a1[4];
      v4[2] = v5;
      *(v5 + 8) = v4;
      a1[4] = v4;
      v6 = a1[1];
      v7 = *a1 + 1;
      *a1 = v7;
      if (v7 > v6)
      {
        a1[1] = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_2394F2498(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
    v6 = sub_2393DF8F0(a2);
    j__free(v6);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v7 = v5[2];
      *(v5[1] + 16) = v7;
      *(v7 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

void *sub_2394F2540(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = 0;
  a1[4] = a2[8];
  a1[5] = a2[11];
  a1[6] = a2[12];
  a1[7] = a2[13];
  a1[8] = a2[14];
  a1[9] = a2[3];
  a1[10] = a2[15];
  a1[11] = a2[16];
  a1[12] = a2[17];
  a1[13] = a2[18];
  a1[14] = a2[19];
  a1[15] = a2[5];
  a1[16] = a2[21];
  a1[17] = a2[22];
  a1[18] = a2[6];
  a1[19] = a2[20];
  a1[20] = 0;
  v3 = a2[9];
  a2[9] = 0;
  a1[21] = v3;
  a1[22] = 0;
  *(a1 + 182) = 0;
  if (!v3)
  {
    v3 = a2[7];
  }

  a1[20] = v3;
  a1[3] = a2[4];
  if (!sub_2394F2630(a1))
  {
    sub_239538864();
  }

  return a1;
}

unint64_t sub_2394F26C8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(a1 + 2008) == 1)
  {
    if (a2)
    {
      v14 = *sub_238DE36B8((a1 + 2008));
      (*(*v14 + 24))(v14);
      v13[0] = 1;
      v5 = sub_238DE36B8(v13);
      v11[0] = *a3;
      if (v11[0] == 1)
      {
        v12 = *(a3 + 4);
      }

      v6 = sub_2394C5B48(a2, v5, v11);
      v7 = v6;
      v8 = v6 & 0xFFFFFFFF00000000;
      if (v13[0] == 1)
      {
        (*(*v14 + 32))(v14);
      }

      v9 = v7;
    }

    else
    {
      v8 = 0x2F00000000;
      v9 = 47;
    }
  }

  else
  {
    v8 = 0x2E00000000;
    v9 = 3;
  }

  return v9 | v8;
}

void sub_2394F27FC(uint64_t a1)
{
  if (*(a1 + 80) == 2)
  {
    if (*(a1 + 2008) == 1)
    {
      v3 = sub_238DE36B8((a1 + 2008));
      v4 = sub_239495304(*v3);
      sub_239493268(v4);
    }

    *(a1 + 80) = 0;

    sub_2393EB49C(a1 + 88);
  }
}

void sub_2394F2864(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_238EA903C(a1 + 1984, a2);
  sub_239495804((a1 + 1984));
  *(a1 + 80) = 0;

  sub_2393EB49C(a1 + 88);
}

uint64_t sub_2394F28AC(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v5 = *a2;
  *(a1 + 64) = *(a2 + 4);
  *(a1 + 48) = v5;
  *(a1 + 68) = *(a2 + 5);
  *(a1 + 72) = *(a2 + 3);
  v6 = *a3;
  *(a1 + 224) = *(a3 + 4);
  *(a1 + 216) = v6;
  if (*(a1 + 2008) == 1)
  {
    v14 = v3;
    v15 = v4;
    v13 = *sub_238DE36B8((a1 + 2008));
    (*(*v13 + 24))(v13);
    v12[0] = 1;
    v8 = sub_238DE36B8(v12);
    v9 = sub_239495304(*v8);
    if (v12[0] == 1)
    {
      (*(*v13 + 32))(v13);
    }

    v10 = *a2;
    *(v9 + 112) = *(a2 + 4);
    *(v9 + 96) = v10;
    *(v9 + 116) = *(a2 + 5);
    *(v9 + 120) = *(a2 + 3);
  }

  return 0;
}

uint64_t sub_2394F29C0(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 80) == 1)
  {
    if (*(sub_239495304(*a2) + 57) == 1)
    {
      v4 = sub_239495C6C((a1 + 1984), a2);
      if (v4)
      {
        v5 = 2;
      }

      else
      {
        v5 = 0;
      }

      v6 = 0x6E00000000;
      if (v4)
      {
        v6 = 0;
      }

      v7 = 172;
      if (v4)
      {
        v7 = 0;
      }

      *(a1 + 80) = v5;
    }

    else
    {
      v6 = 0x6900000000;
      v7 = 47;
    }
  }

  else
  {
    v6 = 0x6800000000;
    v7 = 3;
  }

  return v7 | v6;
}

uint64_t sub_2394F2A6C(uint64_t a1)
{
  *a1 = &unk_284BBEF10;
  *(a1 + 16) = &unk_284BBEF78;
  if (*(a1 + 2008) == 1)
  {
    v6 = *sub_238DE36B8((a1 + 2008));
    (*(*v6 + 24))(v6);
    v5[0] = 1;
    v2 = sub_238EA9094(v5);
    v3 = sub_239495304(*v2);
    sub_239493268(v3);
    if (v5[0])
    {
      (*(*v6 + 32))(v6);
    }
  }

  sub_239495784(a1 + 1984);
  sub_2393EB628((a1 + 88));
  return a1;
}

void sub_2394F2B7C(uint64_t a1)
{
  sub_2394F2A6C(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394F2BB4(uint64_t a1)
{
  sub_2394F2A6C(a1 - 16);

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2394F2BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = 0;
  v6 = sub_2394A0484(a2, a3, a4, a5, &v11, &v10);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v6) = 0;
    v7 = 0;
    v8 = v11;
    *(a1 + 24) = v10;
    *(a1 + 32) = v8;
  }

  return v7 | v6;
}

const char *sub_2394F2C88(unsigned int a1)
{
  if (a1 > 0x29)
  {
    return "???";
  }

  else
  {
    return off_278A83498[a1];
  }
}

const char *sub_2394F2CAC(unsigned int a1)
{
  if (a1 > 0x29)
  {
    return "core_commissioning_stage_unknown";
  }

  else
  {
    return off_278A835E8[a1];
  }
}

unint64_t sub_2394F2CD0(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = 16844773;
  v4 = sub_23949FA9C(&v19, (a1 + 1236));
  v5 = v4;
  if (!v4)
  {
    v25 = 0;
    v18 = 97;
    snprintf(__str, 0x25uLL, "%s%llx", "ExampleOpCredsCAKey", *(a1 + 1304));
    v7 = (*(*a2 + 16))(a2, __str, v24, &v18);
    if (v18 <= 0x61uLL)
    {
      v25 = v18;
    }

    if (v7)
    {
      v8 = sub_2393D9044(9u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = sub_2393C9138();
        *__str = 136315394;
        v21 = "ExampleOpCredsCAKey";
        v22 = 2080;
        v23 = v9;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Couldn't get %s from storage: %s", __str, 0x16u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393C9138();
        sub_2393D5320(9u, 2);
      }

      v10 = sub_2393F9168(a1 + 8);
      if (v10)
      {
        goto LABEL_15;
      }

      v10 = sub_2393F935C(a1 + 8, v24);
      if (v10)
      {
        goto LABEL_15;
      }

      snprintf(__str, 0x25uLL, "%s%llx", "ExampleOpCredsCAKey", *(a1 + 1304));
      v11 = (*(*a2 + 24))(a2, __str, v24, v25);
    }

    else
    {
      v11 = sub_2393F9498(a1 + 8, v24);
    }

    v10 = v11;
    if (!v11)
    {
      v18 = 97;
      snprintf(__str, 0x26uLL, "%s%llx", "ExampleOpCredsICAKey", *(a1 + 1304));
      v14 = (*(*a2 + 16))(a2, __str, v24, &v18);
      if (v18 <= 0x61uLL)
      {
        v25 = v18;
      }

      if (v14)
      {
        v15 = sub_2393D9044(9u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = sub_2393C9138();
          *__str = 136315394;
          v21 = "ExampleOpCredsICAKey";
          v22 = 2080;
          v23 = v16;
          _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "Couldn't get %s from storage: %s", __str, 0x16u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393C9138();
          sub_2393D5320(9u, 2);
        }

        v10 = sub_2393F9168(a1 + 616);
        if (v10)
        {
          goto LABEL_15;
        }

        v10 = sub_2393F935C(a1 + 616, v24);
        if (v10)
        {
          goto LABEL_15;
        }

        snprintf(__str, 0x26uLL, "%s%llx", "ExampleOpCredsICAKey", *(a1 + 1304));
        v17 = (*(*a2 + 24))(a2, __str, v24, v25);
      }

      else
      {
        v17 = sub_2393F9498(a1 + 616, v24);
      }

      v10 = v17;
      if (!v17)
      {
        v6 = 0;
        LODWORD(v10) = 0;
        *(a1 + 1256) = a2;
        *(a1 + 1224) = 1;
        goto LABEL_16;
      }
    }

LABEL_15:
    v6 = v10 & 0xFFFFFFFF00000000;
LABEL_16:
    sub_2393F9144(v24, 97);
    v5 = v10;
    goto LABEL_17;
  }

  v6 = v4 & 0xFFFFFFFF00000000;
LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return v5 | v6;
}

unint64_t sub_2394F3100(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v97 = *MEMORY[0x277D85DE8];
  sub_23949ECF0(&v66);
  v15 = a6[1];
  if (v15 >= 0xFFFF)
  {
    LOWORD(v15) = -1;
  }

  v65 = v15;
  snprintf(__str, 0x23uLL, "%s%llx", "ExampleCARootCert", *(a1 + 1304));
  v16 = (*(**(a1 + 1256) + 16))(*(a1 + 1256), __str, *a6, &v65);
  if ((*(a1 + 1264) & 1) != 0 || v16)
  {
    v19 = sub_23949EE3C(&v66, 788, *(a1 + 1228));
    if (!v19)
    {
      v27 = sub_2393D9044(9u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *__str = 0;
        _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_DEFAULT, "Generating RCAC", __str, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      v64[6] = v72;
      v64[7] = v73;
      v64[8] = v74;
      v64[9] = v75;
      v64[2] = v68;
      v64[3] = v69;
      v64[4] = v70;
      v64[5] = v71;
      v64[0] = v66;
      v64[1] = v67;
      v63[6] = v72;
      v63[7] = v73;
      v63[8] = v74;
      v63[9] = v75;
      v63[2] = v68;
      v63[3] = v69;
      v63[4] = v70;
      v63[5] = v71;
      v28 = *(a1 + 1236);
      v29 = *(a1 + 1240);
      v63[0] = v66;
      v63[1] = v67;
      v19 = sub_2394F3A6C(v28, v29, v64, v63, 0, *(a1 + 1264), a1 + 16, a1 + 8, a6);
      nullsub_56(v63, v30);
      nullsub_56(v64, v31);
      if (!v19)
      {
        if (a6[1] >> 16)
        {
          v19 = 0x10900000000;
LABEL_33:
          v24 = 172;
          goto LABEL_21;
        }

        v32 = sub_23949ECF0(__str);
        v72 = v93;
        v73 = v94;
        v74 = v95;
        v75 = v96;
        v68 = v89;
        v69 = v90;
        v70 = v91;
        v71 = v92;
        v66 = *__str;
        v67 = v88;
        v34 = nullsub_56(v32, v33);
        v35 = sub_238DB6950(v34, *a6, a6[1]);
        v19 = sub_2394A09DC(v35, &v66);
        if (!v19)
        {
          snprintf(__str, 0x23uLL, "%s%llx", "ExampleCARootCert", *(a1 + 1304));
          v19 = (*(**(a1 + 1256) + 24))(*(a1 + 1256), __str, *a6, *(a6 + 4));
          if (!v19)
          {
LABEL_8:
            sub_23949ECF0(__str);
            v20 = a7[1];
            if (v20 >= 0xFFFF)
            {
              LOWORD(v20) = -1;
            }

            v62 = v20;
            snprintf(buf, 0x2BuLL, "%s%llx", "ExampleCAIntermediateCert", *(a1 + 1304));
            v21 = (*(**(a1 + 1256) + 16))(*(a1 + 1256), buf, *a7, &v62);
            if ((*(a1 + 1264) & 1) != 0 || v21)
            {
              v19 = sub_23949EE3C(__str, 787, *(a1 + 1232));
              if (v19)
              {
                goto LABEL_35;
              }

              v36 = sub_2393D9044(9u);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_238DAE000, v36, OS_LOG_TYPE_DEFAULT, "Generating ICAC", buf, 2u);
              }

              if (sub_2393D5398(2u))
              {
                sub_2393D5320(9u, 2);
              }

              v37 = *(a1 + 1236);
              v38 = *(a1 + 1240);
              v61[6] = v72;
              v61[7] = v73;
              v61[8] = v74;
              v61[9] = v75;
              v61[2] = v68;
              v61[3] = v69;
              v61[4] = v70;
              v61[5] = v71;
              v61[0] = v66;
              v61[1] = v67;
              v60[6] = v93;
              v60[7] = v94;
              v60[8] = v95;
              v60[9] = v96;
              v60[2] = v89;
              v60[3] = v90;
              v60[4] = v91;
              v60[5] = v92;
              v60[0] = *__str;
              v60[1] = v88;
              v19 = sub_2394F3A6C(v37, v38, v61, v60, 1, *(a1 + 1264), a1 + 624, a1 + 8, a7);
              nullsub_56(v60, v39);
              nullsub_56(v61, v40);
              if (v19)
              {
                goto LABEL_35;
              }

              if (a7[1] >> 16)
              {
                v19 = 0x12D00000000;
                goto LABEL_48;
              }

              sub_23949ECF0(buf);
              v93 = v83;
              v94 = v84;
              v95 = v85;
              v96 = v86;
              v89 = v79;
              v90 = v80;
              v91 = v81;
              v92 = v82;
              *__str = *buf;
              v88 = v78;
              nullsub_56(buf, v41);
              sub_238DB6950(buf, *a7, a7[1]);
              v19 = sub_2394A09DC(buf, __str);
              if (!v19)
              {
                snprintf(buf, 0x2BuLL, "%s%llx", "ExampleCAIntermediateCert", *(a1 + 1304));
                v19 = (*(**(a1 + 1256) + 24))(*(a1 + 1256), buf, *a7, *(a7 + 4));
                if (!v19)
                {
                  goto LABEL_15;
                }
              }
            }

            else
            {
              *v76 = 0;
              sub_238DB8498(a7, v62);
              sub_238DB6950(buf, *a7, a7[1]);
              v19 = sub_2394A09DC(buf, __str);
              if (!v19)
              {
                v19 = sub_23949F054(__str, v76);
                if (!v19)
                {
                  if (*v76 == *(a1 + 1232))
                  {
LABEL_15:
                    sub_23949ECF0(buf);
                    v19 = sub_23949EE3C(buf, 789, a3);
                    if (!v19)
                    {
                      v19 = sub_23949EE3C(buf, 785, a2);
                      if (!v19)
                      {
                        v19 = sub_23949EEE8(buf, a4);
                        if (!v19)
                        {
                          v42 = sub_2393D9044(9u);
                          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                          {
                            *v76 = 0;
                            _os_log_impl(&dword_238DAE000, v42, OS_LOG_TYPE_DEFAULT, "Generating NOC", v76, 2u);
                          }

                          if (sub_2393D5398(2u))
                          {
                            sub_2393D5320(9u, 2);
                          }

                          if (*(a1 + 1265) == 1)
                          {
                            sub_238DB8498(a7, 0);
                            v43 = *(a1 + 1236);
                            v44 = *(a1 + 1240);
                            v59[6] = v72;
                            v59[7] = v73;
                            v59[8] = v74;
                            v59[9] = v75;
                            v59[2] = v68;
                            v59[3] = v69;
                            v59[4] = v70;
                            v59[5] = v71;
                            v59[0] = v66;
                            v59[1] = v67;
                            v58[6] = v83;
                            v58[7] = v84;
                            v58[8] = v85;
                            v58[9] = v86;
                            v58[2] = v79;
                            v58[3] = v80;
                            v58[4] = v81;
                            v58[5] = v82;
                            v58[0] = *buf;
                            v58[1] = v78;
                            v53 = a8;
                            v45 = v59;
                            v46 = v58;
                            v47 = sub_2394F3A6C(v43, v44, v59, v58, 2, *(a1 + 1264), a5, a1 + 8, v53);
                          }

                          else
                          {
                            v49 = *(a1 + 1236);
                            v50 = *(a1 + 1240);
                            v57[6] = v93;
                            v57[7] = v94;
                            v57[8] = v95;
                            v57[9] = v96;
                            v57[2] = v89;
                            v57[3] = v90;
                            v57[4] = v91;
                            v57[5] = v92;
                            v57[0] = *__str;
                            v57[1] = v88;
                            v56[6] = v83;
                            v56[7] = v84;
                            v56[8] = v85;
                            v56[9] = v86;
                            v56[2] = v79;
                            v56[3] = v80;
                            v56[4] = v81;
                            v56[5] = v82;
                            v56[0] = *buf;
                            v56[1] = v78;
                            v54 = a8;
                            v45 = v57;
                            v46 = v56;
                            v47 = sub_2394F3A6C(v49, v50, v57, v56, 2, *(a1 + 1264), a5, a1 + 616, v54);
                          }

                          v19 = v47;
                          nullsub_56(v46, v48);
                          nullsub_56(v45, v51);
                          if (v19)
                          {
                            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                            {
                              v52 = sub_2393C9138();
                              *v76 = 136315138;
                              *&v76[4] = v52;
                              _os_log_impl(&dword_238DAE000, v42, OS_LOG_TYPE_ERROR, "Failed to Generate NOC: %s", v76, 0xCu);
                            }

                            if (sub_2393D5398(1u))
                            {
                              sub_2393C9138();
                              sub_2393D5320(9u, 1);
                            }
                          }
                        }
                      }
                    }

                    nullsub_56(buf, v23);
                    goto LABEL_35;
                  }

                  v19 = 0x12300000000;
LABEL_48:
                  v24 = 172;
                  goto LABEL_36;
                }
              }
            }

LABEL_35:
            v24 = v19;
LABEL_36:
            nullsub_56(__str, v22);
            goto LABEL_21;
          }
        }
      }
    }
  }

  else
  {
    *buf = 0;
    sub_238DB8498(a6, v65);
    v17 = sub_238DB6950(__str, *a6, a6[1]);
    v19 = sub_2394A09DC(v17, &v66);
    if (!v19)
    {
      v19 = sub_23949F054(&v66, buf);
      if (!v19)
      {
        if (*buf == *(a1 + 1228))
        {
          goto LABEL_8;
        }

        v19 = 0xFF00000000;
        goto LABEL_33;
      }
    }
  }

  v24 = v19;
LABEL_21:
  nullsub_56(&v66, v18);
  v25 = *MEMORY[0x277D85DE8];
  return v19 & 0xFFFFFFFF00000000 | v24;
}

unint64_t sub_2394F3A6C(int a1, int a2, __int128 *a3, __int128 *a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v144 = *MEMORY[0x277D85DE8];
  v119 = 17;
  v118 = 7509;
  v17 = sub_2393D52C4(0x258uLL);
  if (v17)
  {
    v18 = v17;
    sub_238DB9BD8(&v116, v17, 600);
    v111 = a7;
    v110 = a5;
    if (a5 == 2)
    {
      __len[0] = 1;
      LODWORD(__len[1]) = a1;
      HIDWORD(__len[1]) = a2 + a1;
      v32 = a4[7];
      v127 = a4[6];
      v128 = v32;
      v33 = a4[9];
      v129 = a4[8];
      v130 = v33;
      v34 = a4[3];
      v123 = a4[2];
      v124 = v34;
      v35 = a4[5];
      v125 = a4[4];
      v126 = v35;
      v36 = a4[1];
      v121 = *a4;
      v122 = v36;
      v37 = a3[7];
      v137 = a3[6];
      v138 = v37;
      v38 = a3[9];
      v139 = a3[8];
      v140 = v38;
      v39 = a3[3];
      v133 = a3[2];
      v134 = v39;
      v40 = a3[5];
      v135 = a3[4];
      v136 = v40;
      v41 = a3[1];
      v131 = *a3;
      v132 = v41;
      v141 = 0;
      v29 = sub_2394AE594(__len, a7, a8, &v116);
    }

    else if (a5 == 1)
    {
      __len[0] = 1;
      LODWORD(__len[1]) = a1;
      HIDWORD(__len[1]) = a2 + a1;
      v19 = a4[7];
      v127 = a4[6];
      v128 = v19;
      v20 = a4[9];
      v129 = a4[8];
      v130 = v20;
      v21 = a4[3];
      v123 = a4[2];
      v124 = v21;
      v22 = a4[5];
      v125 = a4[4];
      v126 = v22;
      v23 = a4[1];
      v121 = *a4;
      v122 = v23;
      v24 = a3[7];
      v137 = a3[6];
      v138 = v24;
      v25 = a3[9];
      v139 = a3[8];
      v140 = v25;
      v26 = a3[3];
      v133 = a3[2];
      v134 = v26;
      v27 = a3[5];
      v135 = a3[4];
      v136 = v27;
      v28 = a3[1];
      v131 = *a3;
      v132 = v28;
      v141 = 0;
      v29 = sub_2394AE410(__len, a7, a8, &v116);
    }

    else
    {
      v42 = a4[7];
      v43 = a4[5];
      v127 = a4[6];
      v128 = v42;
      v44 = a4[7];
      v45 = a4[9];
      v129 = a4[8];
      v130 = v45;
      v46 = a4[3];
      v47 = a4[1];
      v123 = a4[2];
      v124 = v46;
      v48 = a4[3];
      v49 = a4[5];
      v125 = a4[4];
      v126 = v49;
      v50 = a4[1];
      v121 = *a4;
      v122 = v50;
      v137 = v127;
      v138 = v44;
      v51 = a4[9];
      v139 = v129;
      v140 = v51;
      v133 = v123;
      v134 = v48;
      v135 = v125;
      v136 = v43;
      __len[0] = 1;
      LODWORD(__len[1]) = a1;
      HIDWORD(__len[1]) = a2 + a1;
      v131 = v121;
      v132 = v47;
      v141 = 0;
      v29 = sub_2394AE338(__len, a8, &v116);
    }

    v52 = v29;
    nullsub_56(&v131, v30);
    nullsub_56(&v121, v53);
    if (v52)
    {
      v54 = v52;
LABEL_10:
      j__free(v18);
      v31 = v52 & 0xFFFFFFFF00000000 | v54;
      goto LABEL_11;
    }

    v57 = a8;
    v58 = a9;
    if (!a6)
    {
      goto LABEL_40;
    }

    v59 = sub_2393D52C4(0x258uLL);
    if (!v59)
    {
      v52 = 0x5B00000000;
      v54 = 11;
      goto LABEL_10;
    }

    v60 = v59;
    sub_238DB9BD8(&v115, v59, 600);
    sub_238DB6950(__len, v116, v117);
    v61 = sub_2394A1510(__len[0], __len[1], &v115);
    v52 = v61;
    if (v61)
    {
      v54 = v61;
LABEL_46:
      j__free(v60);
      goto LABEL_10;
    }

    v62 = sub_2393D52C4(0x320uLL);
    if (v62)
    {
      v63 = v62;
      sub_238DB9BD8(&v114, v62, 800);
      v64 = sub_2393D52C4(0xC8uLL);
      if (v64)
      {
        v65 = v64;
        *&v66 = 0x4141414141414141;
        *(&v66 + 1) = 0x4141414141414141;
        *(v64 + 24) = 0x4141414141414141;
        v64[10] = v66;
        v64[11] = v66;
        v64[8] = v66;
        v64[9] = v66;
        v64[6] = v66;
        v64[7] = v66;
        v64[4] = v66;
        v64[5] = v66;
        v64[2] = v66;
        v64[3] = v66;
        *v64 = v66;
        v64[1] = v66;
        if (383 - DWORD2(v115) >= (588 - v117))
        {
          v67 = 588 - v117;
        }

        else
        {
          v67 = 383 - DWORD2(v115);
        }

        if (588 - v117 >= 1 && 383 - DWORD2(v115) >= 1 && v67)
        {
          if (v67 >= 0xC8)
          {
            v68 = 200;
          }

          else
          {
            v68 = v67;
          }

          v108 = v64;
          v109 = v63;
          while (1)
          {
            sub_238DB9BD8(__len, v63, 800);
            v114 = *__len;
            sub_238DB9BD8(__len, v60, 600);
            v115 = *__len;
            *&v112 = &v118;
            *(&v112 + 1) = 3;
            sub_238DB6950(&v113, v65, v68);
            if (v110 == 2)
            {
              __len[0] = 1;
              LODWORD(__len[1]) = a1;
              HIDWORD(__len[1]) = a2 + a1;
              v79 = a4[7];
              v127 = a4[6];
              v128 = v79;
              v80 = a4[9];
              v129 = a4[8];
              v130 = v80;
              v81 = a4[3];
              v123 = a4[2];
              v124 = v81;
              v82 = a4[5];
              v125 = a4[4];
              v126 = v82;
              v83 = a4[1];
              v121 = *a4;
              v122 = v83;
              v84 = a3[7];
              v137 = a3[6];
              v138 = v84;
              v85 = a3[9];
              v139 = a3[8];
              v140 = v85;
              v86 = a3[3];
              v133 = a3[2];
              v134 = v86;
              v87 = a3[5];
              v135 = a3[4];
              v136 = v87;
              v88 = a3[1];
              v131 = *a3;
              v132 = v88;
              v141 = 1;
              v142 = v112;
              v143 = v113;
              v99 = sub_2394AE594(__len, v111, v57, &v114);
            }

            else if (v110 == 1)
            {
              __len[0] = 1;
              LODWORD(__len[1]) = a1;
              HIDWORD(__len[1]) = a2 + a1;
              v69 = a4[7];
              v127 = a4[6];
              v128 = v69;
              v70 = a4[9];
              v129 = a4[8];
              v130 = v70;
              v71 = a4[3];
              v123 = a4[2];
              v124 = v71;
              v72 = a4[5];
              v125 = a4[4];
              v126 = v72;
              v73 = a4[1];
              v121 = *a4;
              v122 = v73;
              v74 = a3[7];
              v137 = a3[6];
              v138 = v74;
              v75 = a3[9];
              v139 = a3[8];
              v140 = v75;
              v76 = a3[3];
              v133 = a3[2];
              v134 = v76;
              v77 = a3[5];
              v135 = a3[4];
              v136 = v77;
              v78 = a3[1];
              v131 = *a3;
              v132 = v78;
              v141 = 1;
              v142 = v112;
              v143 = v113;
              v99 = sub_2394AE410(__len, v111, v57, &v114);
            }

            else
            {
              v89 = a4[7];
              v90 = a4[5];
              v127 = a4[6];
              v128 = v89;
              v91 = a4[7];
              v92 = a4[9];
              v129 = a4[8];
              v130 = v92;
              v93 = a4[3];
              v94 = a4[1];
              v123 = a4[2];
              v124 = v93;
              v95 = a4[3];
              v96 = a4[5];
              v125 = a4[4];
              v126 = v96;
              v97 = a4[1];
              v121 = *a4;
              v122 = v97;
              v137 = v127;
              v138 = v91;
              v98 = a4[9];
              v139 = v129;
              v140 = v98;
              v133 = v123;
              v134 = v95;
              v135 = v125;
              v136 = v90;
              __len[0] = 1;
              LODWORD(__len[1]) = a1;
              HIDWORD(__len[1]) = a2 + a1;
              v131 = v121;
              v132 = v94;
              v141 = 1;
              v142 = v112;
              v143 = v113;
              v99 = sub_2394AE338(__len, v57, &v114);
            }

            v52 = v99;
            nullsub_56(&v131, v100);
            nullsub_56(&v121, v101);
            if (v52 || (sub_238DB6950(__len, v114, *(&v114 + 1)), v52 = sub_2394A1510(__len[0], __len[1], &v115), v52))
            {
              v54 = v52;
              goto LABEL_48;
            }

            v102 = v60;
            v103 = DWORD2(v114);
            if (*(&v114 + 1) <= 0x258uLL)
            {
              v104 = DWORD2(v115);
              if (*(&v115 + 1) <= 0x190uLL)
              {
                break;
              }
            }

            --v68;
            v60 = v102;
            v65 = v108;
            v63 = v109;
            if (!v68)
            {
              goto LABEL_39;
            }
          }

          v106 = sub_2393D9044(9u);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(__len[0]) = 67109376;
            HIDWORD(__len[0]) = v103;
            LOWORD(__len[1]) = 1024;
            *(&__len[1] + 2) = v104;
            _os_log_impl(&dword_238DAE000, v106, OS_LOG_TYPE_DEFAULT, "Generated maximized certificate with %u DER bytes, %u TLV bytes", __len, 0xEu);
          }

          if (sub_2393D5398(2u))
          {
            sub_2393D5320(9u, 2);
          }

          sub_238DB6950(__len, v114, *(&v114 + 1));
          v107 = __len[1];
          v60 = v102;
          if (*(a9 + 8) >= __len[1])
          {
            memmove(*a9, __len[0], __len[1]);
            sub_238DB8498(a9, v107);
            v54 = 0;
            v52 = 0;
          }

          else
          {
            v52 = 0x18300000000;
            v54 = 25;
          }

LABEL_48:
          j__free(v108);
          j__free(v109);
          goto LABEL_46;
        }

LABEL_39:
        j__free(v65);
        j__free(v63);
        j__free(v60);
        v58 = a9;
LABEL_40:
        sub_238DB6950(__len, v116, v117);
        v105 = __len[1];
        if (*(v58 + 8) >= __len[1])
        {
          memmove(*v58, __len[0], __len[1]);
          sub_238DB8498(v58, v105);
          v54 = 0;
          v52 = 0;
        }

        else
        {
          v52 = 0x18300000000;
          v54 = 25;
        }

        goto LABEL_10;
      }

      j__free(v63);
      v52 = 0x6400000000;
    }

    else
    {
      v52 = 0x6000000000;
    }

    v54 = 11;
    goto LABEL_46;
  }

  v31 = 0x3E0000000BLL;
LABEL_11:
  v55 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t sub_2394F4238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1224) == 1)
  {
    if (*(a1 + 1300) == 1)
    {
      v11 = *(a1 + 1272);
      *(a1 + 1300) = 0;
    }

    else
    {
      v11 = *(a1 + 1248);
      *(a1 + 1248) = v11 + 1;
    }

    v13 = sub_2393D9044(9u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Verifying Certificate Signing Request", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    sub_2393C5AAC(v43);
    sub_2393C5ADC(v43, *a2, *(a2 + 8));
    if (sub_2393C5C40(v43) == -1)
    {
      v14 = sub_2393C6B34(v43);
      v15 = v14;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    v14 = sub_2393C7078(v43, 21, 256);
    v15 = v14;
    if (v14 || (v42 = 0, v14 = sub_2393C6A2C(v43, &v42), v15 = v14, v14) || (v14 = sub_2393C7114(v43, 16, 1), v15 = v14, v14))
    {
LABEL_17:
      v20 = v14 & 0xFFFFFFFF00000000;
    }

    else
    {
      v16 = v44;
      v17 = sub_2393C5CB8(v43);
      sub_238DB6950(v41, v16, v17);
      sub_2393C6A98(v43, v42);
      *buf = &unk_284BB9138;
      v18 = sub_2393F9A14(v41[0], v41[1], buf);
      v19 = v18;
      if (v18)
      {
        v20 = v18 & 0xFFFFFFFF00000000;
      }

      else
      {
        v22 = sub_2393D52C4(0x258uLL);
        if (v22)
        {
          v23 = v22;
          sub_238DB9BD8(v40, v22, 600);
          v24 = sub_2393D52C4(0x258uLL);
          if (v24)
          {
            v25 = v24;
            sub_238DB9BD8(v39, v24, 600);
            v26 = sub_2393D52C4(0x258uLL);
            if (v26)
            {
              v27 = v26;
              sub_238DB9BD8(v38, v26, 600);
              v28 = sub_2394F3100(a1, v11, *(a1 + 1280), a1 + 1288, buf, v38, v39, v40);
              v19 = v28;
              if (v28)
              {
                v20 = v28 & 0xFFFFFFFF00000000;
              }

              else
              {
                v45 = *"temporary ipk 01";
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                {
                  *v37 = 0;
                  _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Providing certificate chain to the commissioner", v37, 2u);
                }

                if (sub_2393D5398(2u))
                {
                  sub_2393D5320(9u, 2);
                }

                v31 = a8 + 24;
                v29 = *(a8 + 24);
                v30 = *(v31 + 8);
                sub_238DB6950(v37, v40[0], v40[1]);
                sub_238DB6950(v36, v39[0], v39[1]);
                sub_238DB6950(v35, v38[0], v38[1]);
                v33[0] = 1;
                v34 = &v45;
                v32[0] = 0;
                v30(v29, 0, 0, v37, v36, v35, v33, v32);
                v20 = 0;
                v19 = 0;
              }

              j__free(v27);
            }

            else
            {
              v20 = 0x18300000000;
              v19 = 11;
            }

            j__free(v25);
          }

          else
          {
            v20 = 0x17F00000000;
            v19 = 11;
          }

          j__free(v23);
        }

        else
        {
          v20 = 0x17B00000000;
          v19 = 11;
        }
      }

      v15 = v19;
    }

    result = v15 | v20;
  }

  else
  {
    result = 0x1550000001CLL;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394F4614(char *a1)
{
  v2 = 10;
  while (1)
  {
    v3 = sub_2393F888C(a1, 8uLL);
    v4 = v3;
    if (v3)
    {
      v5 = v3 & 0xFFFFFFFF00000000;
      return v5 | v4;
    }

    if ((*a1 - 1) <= 0xFFFFFFEFFFFFFFFELL)
    {
      break;
    }

    if (!--v2)
    {
      v5 = 0x1B100000000;
      v4 = 172;
      return v5 | v4;
    }
  }

  v4 = 0;
  v5 = 0;
  return v5 | v4;
}

void *sub_2394F46A8(void *a1)
{
  *a1 = &unk_284BBEFF8;
  v2 = (a1 + 1);
  sub_2393F970C((a1 + 77));
  sub_2393F970C(v2);
  return a1;
}

void sub_2394F46FC(void *a1)
{
  *a1 = &unk_284BBEFF8;
  v1 = (a1 + 1);
  sub_2393F970C((a1 + 77));
  sub_2393F970C(v1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394F4770(uint64_t result, uint64_t a2)
{
  *(result + 1272) = a2;
  *(result + 1300) = 1;
  return result;
}

uint64_t sub_2394F4788(uint64_t a1, uint64_t a2, char *__s, int a4, int a5, _BYTE *a6)
{
  if (*(a1 + 32))
  {
    if (a2)
    {
      v32 = 0;
      v33 = 0uLL;
      v12 = strlen(__s);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_238EAEDBC();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v31 = v12;
      if (v12)
      {
        memcpy(&__dst, __s, v12);
      }

      *(&__dst + v13) = 0;
      v16 = sub_239490924(&__dst, &v32);
      v17 = v16;
      if (v31 < 0)
      {
        operator delete(__dst);
        if (v17)
        {
          goto LABEL_13;
        }
      }

      else if (v16)
      {
LABEL_13:
        v18 = HIDWORD(v17);
LABEL_31:
        v26 = &v32;
        sub_2394F7C48(&v26);
        v15 = v18 << 32;
        v14 = v17;
        return v14 | v15;
      }

      if (*a6 == 1 && v33 - v32 == 72)
      {
        v19 = *(a1 + 56);
        if (*(a1 + 64) - v19 == 72)
        {
          if (a5 == 2)
          {
            LODWORD(v26) = 2;
            v27 = "core_setup_code_pairer_pair_dev";
            LODWORD(v17) = 47;
            v28 = 47;
            v29 = 3;
            sub_23948BD20(&v26);
            v18 = 66;
            goto LABEL_31;
          }

          if (*(a1 + 40) == a2 && *(v19 + 16) == *(v32 + 16) && *(a1 + 48) == a4 && *(a1 + 49) == a5)
          {
            goto LABEL_26;
          }
        }
      }

      sub_2394F4BA8(a1);
      *(a1 + 48) = a4;
      *(a1 + 49) = a5;
      *(a1 + 40) = a2;
      sub_2394F7C9C((a1 + 56));
      v20 = v32;
      *(a1 + 56) = v32;
      v21 = v33;
      *(a1 + 64) = v33;
      v33 = 0uLL;
      v32 = 0;
      if (*a6 != 1)
      {
        goto LABEL_28;
      }

      if (v21 - v20 == 72)
      {
LABEL_26:
        v22 = sub_2393E088C(a6);
        sub_2394F4B08(a1, v22, 0);
        v18 = 0;
      }

      else
      {
LABEL_28:
        v23 = sub_2394F4C80(a1);
        LODWORD(v17) = v23;
        if (v23)
        {
          v18 = HIDWORD(v23);
          LODWORD(v26) = 2;
          v27 = "core_setup_code_pairer_pair_dev";
          v28 = v23;
          v29 = 3;
          sub_23948BD20(&v26);
          goto LABEL_31;
        }

        v24 = (*(**(a1 + 32) + 40))(*(a1 + 32), 30000, sub_2394F504C, a1);
        LODWORD(v17) = v24;
        v18 = HIDWORD(v24);
        if (v24)
        {
          goto LABEL_31;
        }

        LODWORD(v26) = 0;
        v27 = "core_setup_code_pairer_pair_dev";
        v29 = 0;
        sub_23948BD20(&v26);
      }

      LODWORD(v17) = 0;
      goto LABEL_31;
    }

    LODWORD(v32) = 2;
    *&v33 = "core_setup_code_pairer_pair_dev";
    v14 = 47;
    DWORD2(v33) = 47;
    BYTE12(v33) = 3;
    sub_23948BD20(&v32);
    v15 = 0x3100000000;
  }

  else
  {
    LODWORD(v32) = 2;
    *&v33 = "core_setup_code_pairer_pair_dev";
    v14 = 3;
    DWORD2(v33) = 3;
    BYTE12(v33) = 3;
    sub_23948BD20(&v32);
    v15 = 0x3000000000;
  }

  return v14 | v15;
}

uint64_t sub_2394F4B08(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a3;
  if (*(a1 + 49) == 1)
  {
    sub_2394F5A70(a1);
    LODWORD(i) = 0;
    sub_2394F6D64((a1 + 96), a2, &v7, &i);
  }

  else
  {
    for (i = 0; i < *(a2 + 8); ++i)
    {
      sub_2394F6E7C((a1 + 96), a2, &v7, &i);
    }
  }

  return sub_2394F5C54(a1);
}

uint64_t sub_2394F4BA8(uint64_t a1)
{
  sub_2394F713C(a1);
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  *(a1 + 136) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 112);
      v2 = (*(a1 + 104) + 8);
      *(a1 + 104) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 8;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 17;
  }

  *(a1 + 128) = v6;
LABEL_8:
  *(a1 + 144) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  sub_23948F6F8((a1 + 56));
  v7 = *(**(a1 + 32) + 72);

  return v7();
}

uint64_t sub_2394F4C80(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 49) != 2)
  {
    goto LABEL_33;
  }

  if (sub_2394F5174(a1, 2u))
  {
    v2 = sub_2394F51E8(a1);
    if (v2)
    {
      if (v2 == 108 || v2 == 45)
      {
        v3 = sub_2393D9044(9u);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Skipping commissionable node discovery over BLE since not supported by the controller!", buf, 2u);
        }

        if (sub_2393D5398(2u))
        {
          v4 = 2;
LABEL_14:
          sub_2393D5320(9u, v4);
        }
      }

      else
      {
        v5 = sub_2393D9044(9u);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v18 = sub_2393C9138();
          _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Failed to start commissionable node discovery over BLE: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          v4 = 1;
          goto LABEL_14;
        }
      }
    }
  }

  if (sub_2394F5174(a1, 8u))
  {
    v6 = sub_2393D9044(9u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Skipping commissionable node discovery over Wi-Fi PAF since not supported by the controller!", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }
  }

  if (sub_2394F5174(a1, 0x10u))
  {
    v7 = sub_2394F5484(a1);
    if (v7)
    {
      if (v7 == 108 || v7 == 45)
      {
        v8 = sub_2393D9044(9u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Skipping commissionable node discovery over NFC since not supported by the controller!", buf, 2u);
        }

        if (sub_2393D5398(2u))
        {
          v9 = 2;
LABEL_32:
          sub_2393D5320(9u, v9);
        }
      }

      else
      {
        v10 = sub_2393D9044(9u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = sub_2393C9138();
          *buf = 136315138;
          v18 = v11;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Failed to start commissionable node discovery over NFC: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          v9 = 1;
          goto LABEL_32;
        }
      }
    }
  }

LABEL_33:
  v12 = sub_2394F57E4(a1);
  if (v12)
  {
    v13 = sub_2393D9044(9u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = sub_2393C9138();
      *buf = 136315138;
      v18 = v14;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Failed to start commissionable node discovery over DNS-SD: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(9u, 1);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_2394F504C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2393D9044(9u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Discovery timed out", &v10, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(9u, 1);
  }

  result = sub_2394F713C(a2);
  if ((*(a2 + 392) & 1) == 0 && !*(a2 + 136))
  {
    v5 = *(a2 + 400);
    v6 = *(a2 + 408);
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = 50;
    }

    if (v5)
    {
      v8 = v5 & 0xFFFFFFFF00000000;
    }

    else
    {
      v8 = 0x36500000000;
    }

    v10 = 1;
    v11 = "core_setup_code_pairer_pair_dev";
    v12 = v7;
    v13 = 3;
    if (v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = "src/controller/SetUpCodePairer.cpp";
    }

    sub_23948BD20(&v10);
    return (*(**(a2 + 24) + 64))(*(a2 + 24), v8 | v7, v9);
  }

  return result;
}

uint64_t sub_2394F5174(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v2 == v3)
  {
    return 0;
  }

  for (i = v2 + 7; *i == 1 && (*sub_23948DF8C(i) & a2) == 0; i += 72)
  {
    v6 = i + 65;
    if (v6 == v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2394F51E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_2393D9044(9u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Starting commissionable node discovery over BLE", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    *(a1 + 88) = 1;
    v3 = *(a1 + 56);
    v4 = *(a1 + 64) - v3;
    if (v4 == 72)
    {
      v5 = sub_2393CCB68(*(a1 + 16), v3 + 10, a1, sub_2394F58D4, sub_2394F58DC);
    }

    else
    {
      *buf = 0;
      v21 = 0;
      v22 = 0;
      sub_2394F58E0(buf, 0x8E38E38E38E38E39 * (v4 >> 3));
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      if (v8 == v9)
      {
        v10 = v21;
      }

      else
      {
        v10 = v21;
        do
        {
          if (v10 >= v22)
          {
            v11 = (v10 - *buf) >> 2;
            if ((v11 + 1) >> 62)
            {
              sub_238EAEDBC();
            }

            v12 = (v22 - *buf) >> 1;
            if (v12 <= v11 + 1)
            {
              v12 = v11 + 1;
            }

            if (v22 - *buf >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v13 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v13 = v12;
            }

            if (v13)
            {
              sub_239489F80(buf, v13);
            }

            *(4 * v11) = *(v8 + 10);
            v10 = (4 * v11 + 4);
            v14 = (4 * v11 - (v21 - *buf));
            memcpy(v14, *buf, v21 - *buf);
            v15 = *buf;
            *buf = v14;
            v21 = v10;
            v22 = 0;
            if (v15)
            {
              operator delete(v15);
            }
          }

          else
          {
            *v10++ = *(v8 + 10);
          }

          v21 = v10;
          v8 += 72;
        }

        while (v8 != v9);
      }

      v16 = *(a1 + 16);
      sub_2394F7CDC(v18, *buf, (v10 - *buf) >> 2);
      sub_239489EBC(&v19, v18[0], v18[1]);
      v5 = sub_2393CCDEC(v16);
      if (*buf)
      {
        v21 = *buf;
        operator delete(*buf);
      }
    }

    v6 = HIDWORD(v5);
    v7 = v5;
    if (v5)
    {
      *(a1 + 88) = 0;
    }
  }

  else
  {
    v6 = 166;
    v7 = 108;
  }

  return v7 | (v6 << 32);
}

uint64_t sub_2394F5484(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64) - v2;
  v4 = sub_2393D9044(9u);
  v5 = v4;
  if (v3 == 72)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Starting commissionable node discovery over NFC", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    if (*(a1 + 24))
    {
      if (*(v2 + 12))
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Error, Long discriminator is required", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v12 = 0x14D00000000;
        v13 = 47;
      }

      else
      {
        v16 = sub_2392E10A8((v2 + 10));
        v6 = sub_23948A9E8();
        v7 = v6[2];
        if (v7)
        {
          (*(*v7 + 16))(v6[2], a1 + 8);
          v8 = (*(*v7 + 24))(v7, &v16);
          v9 = v8;
          v10 = HIDWORD(v8);
          if (v8)
          {
            if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
            {
              v11 = sub_2393C9138();
              *buf = 136315138;
              v18 = v11;
              _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Commissionable node discovery over NFC failed, err = %s", buf, 0xCu);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393C9138();
              sub_2393D5320(9u, 1);
            }
          }

          else
          {
            v9 = 0;
            *(a1 + 91) = 1;
          }
        }

        else
        {
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Commissionable node discovery over NFC since there is no valid NFC reader transport", buf, 2u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(9u, 1);
          }

          v9 = 108;
          v10 = 340;
        }

        v12 = v10 << 32;
        v13 = v9;
      }
    }

    else
    {
      v12 = 0x14A00000000;
      v13 = 3;
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "NFC commissioning does not support concatenated QR codes yet.", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v12 = 0x14400000000;
    v13 = 108;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13 | v12;
}

uint64_t sub_2394F57E4(uint64_t a1)
{
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Starting commissionable node discovery over DNS-SD", v8, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  v3 = *(a1 + 56);
  if (*(a1 + 64) - v3 == 72)
  {
    v4 = *(v3 + 12);
    if (v4 == 1)
    {
      v5 = *(v3 + 10);
    }

    else
    {
      v5 = sub_2392E10A8((v3 + 10));
      LOBYTE(v4) = 2;
    }
  }

  else
  {
    v5 = 0;
    LOBYTE(v4) = 0;
  }

  *(a1 + 89) = 1;
  v6 = *(a1 + 24);
  v8[0] = v4;
  v9 = v5;
  v10 = 0;
  result = sub_239503574(v6, v8);
  if (result)
  {
    *(a1 + 89) = 0;
  }

  return result;
}

void *sub_2394F58E0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_239489F80(result, a2);
    }

    sub_238EAEDBC();
  }

  return result;
}

unint64_t sub_2394F5994(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v10 = v1;
    v11 = v2;
    *(a1 + 88) = 0;
    if (*(a1 + 16))
    {
      v4 = sub_2393D9044(9u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Stopping commissionable node discovery over BLE", v9, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      v5 = sub_2393CCA60(*(a1 + 16));
      v6 = v5 & 0xFFFFFFFF00000000;
      v7 = v5;
    }

    else
    {
      v6 = 0xDB00000000;
      v7 = 108;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

uint64_t sub_2394F5A70(uint64_t a1)
{
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Stopping commissionable node discovery over DNS-SD", v4, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  *(a1 + 89) = 0;
  sub_2395035C4(*(a1 + 24));
  return 0;
}

uint64_t sub_2394F5B1C(uint64_t a1)
{
  *(a1 + 91) = 0;
  v1 = sub_23948A9E8()[2];
  v2 = sub_2393D9044(9u);
  v3 = v2;
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Stopping commissionable node discovery over NFC by removing delegate", v7, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    (*(*v1 + 16))(v1, 0);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Failed to stop commissionable node discovery over NFC since there is no valid NFC reader transport", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v4 = 0x17100000000;
    v5 = 108;
  }

  return v5 | v4;
}

uint64_t sub_2394F5C54(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 392) & 1) == 0)
  {
    v2 = *(a1 + 136);
    if (v2)
    {
      v3 = (a1 + 184);
      v40 = a1 + 296;
      v4 = (a1 + 312);
      v5 = (a1 + 336);
      v41 = (a1 + 380);
      do
      {
        v6 = *(a1 + 128);
        v7 = *(*(a1 + 104) + 8 * (v6 / 0x11)) + 240 * (v6 % 0x11);
        v8 = *(v7 + 16);
        v46 = *v7;
        v47 = v8;
        v48 = *(v7 + 20);
        v49 = *(v7 + 24);
        v9 = *(v7 + 124);
        v11 = *(v7 + 96);
        v10 = *(v7 + 112);
        v53 = *(v7 + 80);
        v54 = v11;
        *v55 = v10;
        *&v55[12] = v9;
        v13 = *(v7 + 48);
        v12 = *(v7 + 64);
        v50 = *(v7 + 32);
        v51 = v13;
        v52 = v12;
        v56 = 0;
        v56 = *(v7 + 140);
        if (v56 == 1)
        {
          v14 = *(v7 + 144);
          v58 = *(v7 + 152);
          v57 = v14;
        }

        v15 = *(v7 + 160);
        v60 = *(v7 + 176);
        v59 = v15;
        v16 = *(v7 + 184);
        v17 = *(v7 + 200);
        *&v62[9] = *(v7 + 209);
        *v62 = v17;
        v61 = v16;
        v63 = *(v7 + 228);
        *(a1 + 128) = v6 + 1;
        *(a1 + 136) = v2 - 1;
        sub_2394F7CFC(a1 + 96, 1);
        v18 = *(a1 + 56);
        if (BYTE6(v63) == 1)
        {
          v19 = WORD2(v63);
          v20 = *(a1 + 64);
          if (v18 == v20)
          {
LABEL_13:
            v22 = sub_2393D9044(9u);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v45 = v19;
              _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "SetUpCodePairer: Discovered discriminator %u does not match any of our setup payloads", buf, 8u);
            }

            if (!sub_2393D5398(1u))
            {
              goto LABEL_40;
            }

            goto LABEL_32;
          }

          while (1)
          {
            v21 = *(v18 + 12) ? HIBYTE(WORD2(v63)) : WORD2(v63);
            if (*(v18 + 10) == v21)
            {
              break;
            }

            v18 += 72;
            if (v18 == v20)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v23 = *(a1 + 64) - v18;
          if (v23 != 72)
          {
            v34 = sub_2393D9044(9u);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v45 = 954437177 * (v23 >> 3);
              _os_log_impl(&dword_238DAE000, v34, OS_LOG_TYPE_ERROR, "SetUpCodePairer: Unable to handle discovered parameters with no discriminator, because it has %u possible payloads", buf, 8u);
            }

            if (!sub_2393D5398(1u))
            {
              goto LABEL_40;
            }

            v39 = 0x8E38E38E38E38E39 * ((*(a1 + 64) - *(a1 + 56)) >> 3);
LABEL_32:
            sub_2393D5320(9u, 1);
            goto LABEL_40;
          }
        }

        LODWORD(v50) = *(v18 + 16);
        *v42 = v46;
        *&v42[16] = v47;
        *&v42[20] = v48;
        v43 = v49;
        sub_2393E97D4(v42, buf, 0x4CuLL);
        v24 = sub_2393D9044(9u);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v42 = 136315138;
          *&v42[4] = buf;
          _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_DEFAULT, "Attempting PASE connection to %s", v42, 0xCu);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(9u, 2);
        }

        sub_2394F61C8(a1);
        if (v47 == 1)
        {
          *(a1 + 144) = v47;
          *(a1 + 152) = v46;
          v25 = v48;
          *(a1 + 168) = v47;
          *(a1 + 172) = v25;
          *(a1 + 176) = v49;
          v26 = *v55;
          *(a1 + 248) = v54;
          *(a1 + 264) = v26;
          *(a1 + 276) = *&v55[12];
          v27 = v51;
          *v3 = v50;
          *(a1 + 200) = v27;
          v28 = v53;
          *(a1 + 216) = v52;
          *(a1 + 232) = v28;
          v29 = v56;
          *(a1 + 292) = v56;
          if (v29 == 1)
          {
            *v40 = v57;
            *(v40 + 8) = v58;
          }

          *v4 = v59;
          *(a1 + 328) = v60;
          v30 = *v62;
          *v5 = v61;
          *(a1 + 352) = v30;
          *(a1 + 361) = *&v62[9];
          *v41 = v63;
        }

        v31 = *(a1 + 24);
        v32 = *(a1 + 40);
        if (*(a1 + 48))
        {
          v33 = sub_2394FBC2C(v31, v32, &v46);
        }

        else
        {
          v33 = sub_2394FBA70(v31, v32, &v46);
        }

        if (!v33)
        {
          result = 1;
          goto LABEL_42;
        }

        v35 = sub_2393D9044(0);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = sub_2393C9138();
          *v42 = 136315650;
          *&v42[4] = v36;
          *&v42[12] = 2080;
          *&v42[14] = "src/controller/SetUpCodePairer.cpp";
          *&v42[22] = 1024;
          LODWORD(v43) = 460;
          _os_log_impl(&dword_238DAE000, v35, OS_LOG_TYPE_ERROR, "%s at %s:%d", v42, 0x1Cu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0, 1);
        }

        sub_2394F6210(a1);
LABEL_40:
        v2 = *(a1 + 136);
      }

      while (v2);
    }
  }

  result = 0;
LABEL_42:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394F61C8(uint64_t result)
{
  if (*(result + 392) == 1)
  {
    sub_239538A2C();
  }

  *(result + 392) = 1;
  v1 = *(result + 24);
  v2 = *(v1 + 4336);
  if (v2 == result)
  {
    sub_239538994();
  }

  *(result + 80) = v2;
  *(v1 + 4336) = result;
  return result;
}

uint64_t sub_2394F6210(uint64_t result)
{
  if ((*(result + 392) & 1) == 0)
  {
    sub_239538AC4();
  }

  *(result + 392) = 0;
  *(*(result + 24) + 4336) = *(result + 80);
  *(result + 80) = 0;
  return result;
}

uint64_t sub_2394F6240(int64x2_t *a1, uint64_t a2, int a3)
{
  v8 = a3;
  v7 = a2;
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Discovered device to be commissioned over BLE", v6, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  a1[5].i8[8] = 0;
  sub_2394F62EC(a1 + 6, &v7, &v8);
  return sub_2394F5C54(a1);
}

unint64_t sub_2394F62EC(int64x2_t *a1, uint64_t *a2, int *a3)
{
  v6 = a1[2].u64[0];
  if (!v6)
  {
    sub_2394F7D5C(a1);
    v6 = a1[2].u64[0];
  }

  v7 = a1->i64[1];
  v8 = (v7 + 8 * (v6 / 0x11));
  v9 = *v8 + 240 * (v6 % 0x11);
  if (a1[1].i64[0] == v7)
  {
    v9 = 0;
  }

  if (v9 == *v8)
  {
    v9 = *(v8 - 1) + 4080;
  }

  v10 = *a2;
  v11 = *a3;
  *(v9 - 200) = 0;
  *(v9 - 101) = 0;
  *(v9 - 208) = 0;
  *(v9 - 204) = 0;
  *(v9 - 80) = 0u;
  *(v9 - 64) = 0u;
  *(v9 - 48) = 0u;
  *(v9 - 32) = 0u;
  *(v9 - 16) = 0;
  *(v9 - 12) = 0;
  *(v9 - 8) = v11;
  *(v9 - 240) = 0;
  *(v9 - 232) = 0;
  *(v9 - 224) = 2;
  *(v9 - 222) = 5540;
  *(v9 - 220) = 0;
  *(v9 - 216) = 0;
  *(v9 - 72) = v10;
  v12 = vaddq_s64(a1[2], xmmword_2395D8800);
  a1[2] = v12;
  return *(a1->i64[1] + 8 * (v12.i64[0] / 0x11uLL)) + 240 * (v12.i64[0] % 0x11uLL);
}

uint64_t sub_2394F6400(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v10 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Commissionable node discovery over BLE failed: %s", buf, 0xCu);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
    sub_2393C9138();
    result = sub_2393D5320(9u, 1);
  }

  *(a1 + 88) = 0;
  if (a2)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_2393C9138();
      *buf = 136315650;
      v10 = v7;
      v11 = 2080;
      v12 = "src/controller/SetUpCodePairer.cpp";
      v13 = 1024;
      v14 = 517;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393C9138();
      result = sub_2393D5320(0, 1);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394F65B8(uint64_t a1, unsigned __int16 *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Discovered device to be commissioned over NFC, Identifier: %u", &buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    v9 = *a2;
    sub_2393D5320(9u, 2);
  }

  *(a1 + 91) = 0;
  v23 = 0u;
  v24 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  LODWORD(v12) = 0;
  BYTE4(v12) = 0;
  BYTE8(v24) = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *a2;
  buf = 0uLL;
  LOBYTE(v11) = 5;
  WORD1(v11) = 5540;
  DWORD1(v11) = 0;
  *(&v11 + 1) = v6;
  sub_2394F66F8(a1 + 96, &buf);
  result = sub_2394F5C54(a1);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394F66F8(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2 * (v5 - v6) + ((v5 - v6) >> 3) - 1;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_2394F825C(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x11)) + 240 * (v8 % 0x11);
  v10 = *a2;
  *(v9 + 16) = *(a2 + 4);
  *v9 = v10;
  *(v9 + 20) = *(a2 + 5);
  *(v9 + 24) = *(a2 + 3);
  v11 = a2[2];
  v12 = a2[4];
  *(v9 + 48) = a2[3];
  *(v9 + 64) = v12;
  *(v9 + 32) = v11;
  v13 = a2[5];
  v14 = a2[6];
  v15 = a2[7];
  *(v9 + 124) = *(a2 + 124);
  *(v9 + 96) = v14;
  *(v9 + 112) = v15;
  *(v9 + 80) = v13;
  *(v9 + 140) = 0;
  v16 = *(a2 + 140);
  *(v9 + 140) = v16;
  if (v16 == 1)
  {
    v17 = *(a2 + 18);
    *(v9 + 152) = *(a2 + 38);
    *(v9 + 144) = v17;
  }

  v18 = a2[10];
  *(v9 + 176) = *(a2 + 22);
  *(v9 + 160) = v18;
  v19 = *(a2 + 184);
  v20 = *(a2 + 200);
  *(v9 + 209) = *(a2 + 209);
  *(v9 + 200) = v20;
  *(v9 + 184) = v19;
  *(v9 + 228) = *(a2 + 57);
  *(v9 + 232) = *(a2 + 58);
  v21 = *(a1 + 32);
  v22 = *(a1 + 40) + 1;
  *(a1 + 40) = v22;
  v23 = v21 + v22;
  v24 = *(a1 + 8);
  v25 = (v24 + 8 * (v23 / 0x11));
  v26 = *v25 + 240 * (v23 % 0x11);
  if (*(a1 + 16) == v24)
  {
    v26 = 0;
  }

  if (v26 == *v25)
  {
    v26 = *(v25 - 1) + 4080;
  }

  return v26 - 240;
}

uint64_t sub_2394F688C(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v6 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Commissionable node discovery over NFC failed: %s", buf, 0xCu);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
    sub_2393C9138();
    result = sub_2393D5320(9u, 1);
  }

  *(a1 + 91) = 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394F6998(void *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    goto LABEL_2;
  }

  v5 = sub_2393AB8BC(a2);
  result = a1[3];
  if (!result)
  {
    goto LABEL_3;
  }

  result = (*(*result + 88))(result, v5);
  if (!result)
  {
    goto LABEL_3;
  }

  v7 = a1[7];
  v6 = a1[8];
  if (v7 == v6)
  {
LABEL_2:
    result = 0;
    goto LABEL_3;
  }

  while (1)
  {
    v8 = *(v7 + 2);
    if (!*(v7 + 2))
    {
      break;
    }

    v9 = v5[91];
    if (!v5[91] || v8 == v9)
    {
      break;
    }

    v19 = sub_2393D9044(9u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v30 = v9;
      v31 = 1024;
      v32 = v8;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_DEFAULT, "Discovered device vendor ID (%u) does not match our vendor ID (%u).", buf, 0xEu);
    }

    if (!sub_2393D5398(2u))
    {
      goto LABEL_36;
    }

    v24 = v5[91];
    v27 = *(v7 + 2);
LABEL_35:
    sub_2393D5320(9u, 2);
LABEL_36:
    v7 += 72;
    if (v7 == v6)
    {
      goto LABEL_2;
    }
  }

  v11 = *(v7 + 4);
  if (*(v7 + 4))
  {
    v12 = v5[92];
    if (v5[92] && v11 != v12)
    {
      v21 = sub_2393D9044(9u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v30 = v12;
        v31 = 1024;
        v32 = v11;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "Discovered device product ID (%u) does not match our product ID (%u).", buf, 0xEu);
      }

      if (!sub_2393D5398(2u))
      {
        goto LABEL_36;
      }

      v25 = v5[92];
      v28 = *(v7 + 4);
      goto LABEL_35;
    }
  }

  v14 = v5[90];
  v15 = *(v7 + 10);
  if (*(v7 + 12))
  {
    v16 = v14 >> 8;
  }

  else
  {
    v16 = v5[90];
  }

  v17 = sub_2393D9044(9u);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v15 != v16)
  {
    if (v18)
    {
      *buf = 67109120;
      v30 = v14;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Discovered device discriminator (%u) does not match our discriminator.", buf, 8u);
    }

    if (!sub_2393D5398(2u))
    {
      goto LABEL_36;
    }

    v23 = v5[90];
    goto LABEL_35;
  }

  if (v18)
  {
    *buf = 67109120;
    v30 = v14;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Discovered device with discriminator %u matches one of our setup payloads", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    v26 = v5[90];
    sub_2393D5320(9u, 2);
  }

  result = 1;
LABEL_3:
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394F6CAC(void *a1, void *a2)
{
  result = sub_2394F6998(a1, a2);
  if (result)
  {
    v5 = sub_2393D9044(9u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Discovered device to be commissioned over DNS-SD", v7, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    v6 = sub_2393AB8BC(a2);
    return sub_2394F4B08(a1, v6, *(v6 + 90) | 0x10000u);
  }

  return result;
}

uint64_t sub_2394F6D64(void *a1, const char *a2, int *a3, int *a4)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = 2 * (v9 - v8) + ((v9 - v8) >> 3) - 1;
  if (v9 == v8)
  {
    v10 = 0;
  }

  if (v10 == a1[5] + a1[4])
  {
    sub_2394F825C(a1);
    v8 = a1[1];
    v9 = a1[2];
  }

  if (v9 == v8)
  {
    v12 = 0;
  }

  else
  {
    v11 = a1[5] + a1[4];
    v12 = *(v8 + 8 * (v11 / 0x11)) + 240 * (v11 % 0x11);
  }

  sub_2394F7898(v12, a2, *a3, *a4);
  v13 = a1[4];
  v14 = a1[5] + 1;
  a1[5] = v14;
  v15 = v13 + v14;
  v16 = a1[1];
  v17 = (v16 + 8 * (v15 / 0x11));
  v18 = *v17 + 240 * (v15 % 0x11);
  if (a1[2] == v16)
  {
    v18 = 0;
  }

  if (v18 == *v17)
  {
    v18 = *(v17 - 1) + 4080;
  }

  return v18 - 240;
}

uint64_t sub_2394F6E7C(void *a1, const char *a2, int *a3, uint64_t *a4)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = 2 * (v9 - v8) + ((v9 - v8) >> 3) - 1;
  if (v9 == v8)
  {
    v10 = 0;
  }

  if (v10 == a1[5] + a1[4])
  {
    sub_2394F825C(a1);
    v8 = a1[1];
    v9 = a1[2];
  }

  if (v9 == v8)
  {
    v12 = 0;
  }

  else
  {
    v11 = a1[5] + a1[4];
    v12 = *(v8 + 8 * (v11 / 0x11)) + 240 * (v11 % 0x11);
  }

  sub_2394F7898(v12, a2, *a3, *a4);
  v13 = a1[4];
  v14 = a1[5] + 1;
  a1[5] = v14;
  v15 = v13 + v14;
  v16 = a1[1];
  v17 = (v16 + 8 * (v15 / 0x11));
  v18 = *v17 + 240 * (v15 % 0x11);
  if (a1[2] == v16)
  {
    v18 = 0;
  }

  if (v18 == *v17)
  {
    v18 = *(v17 - 1) + 4080;
  }

  return v18 - 240;
}

uint64_t sub_2394F6F94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  if (a2 && v2 != a2)
  {
    return 0;
  }

  if (*(a1 + 392) == 1)
  {
    sub_2394F6210(a1);
  }

  sub_2394F4BA8(a1);
  *(a1 + 40) = 0;
  return 1;
}

uint64_t sub_2394F7000(uint64_t a1)
{
  if (sub_2394F5C54(a1))
  {
    v2 = sub_2393D9044(9u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Trying connection to commissionee over different transport", buf, 2u);
    }

    if (!sub_2393D5398(2u))
    {
      return 1;
    }

    goto LABEL_14;
  }

  v3 = 0;
  do
  {
    v4 = *(a1 + 88 + v3);
    if (v4)
    {
      break;
    }
  }

  while (v3++ != 3);
  if (v4)
  {
    v6 = sub_2393D9044(9u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Waiting to discover commissionees that match our filters", v8, 2u);
    }

    if (!sub_2393D5398(2u))
    {
      return 1;
    }

LABEL_14:
    sub_2393D5320(9u, 2);
    return 1;
  }

  return 0;
}

uint64_t sub_2394F7118(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 88;
  do
  {
    result = *(v2 + v1);
    if (result)
    {
      break;
    }
  }

  while (v1++ != 3);
  return result;
}

uint64_t sub_2394F713C(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (sub_2394F5994(a1))
  {
    v2 = sub_2393D9044(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v10 = sub_2393C9138();
      v11 = 2080;
      v12 = "src/controller/SetUpCodePairer.cpp";
      v13 = 1024;
      v14 = 712;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }
  }

  if (sub_2394F5A70(a1))
  {
    v3 = sub_2393D9044(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = sub_2393C9138();
      *buf = 136315650;
      v10 = v4;
      v11 = 2080;
      v12 = "src/controller/SetUpCodePairer.cpp";
      v13 = 1024;
      v14 = 713;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }
  }

  *(a1 + 90) = 0;
  result = sub_2394F5B1C(a1);
  if (result)
  {
    v6 = sub_2393D9044(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_2393C9138();
      *buf = 136315650;
      v10 = v7;
      v11 = 2080;
      v12 = "src/controller/SetUpCodePairer.cpp";
      v13 = 1024;
      v14 = 715;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393C9138();
      result = sub_2393D5320(0, 1);
    }
  }

  *(a1 + 88) = 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394F7424(uint64_t a1, int a2)
{
  if (a2 != 1)
  {
    goto LABEL_16;
  }

  if (!*(a1 + 136))
  {
    v4 = 0;
    do
    {
      v5 = *(a1 + 88 + v4);
      if (v5)
      {
        break;
      }
    }

    while (v4++ != 3);
    if (v5)
    {
      v7 = sub_2393D9044(9u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Ignoring SecurePairingFailed status for now; we are waiting to see if we discover more devices", v9, 2u);
      }

      result = sub_2393D5398(2u);
      if (result)
      {
        return sub_2393D5320(9u, 2);
      }

      return result;
    }

LABEL_16:
    result = *(a1 + 80);
    if (result)
    {
      v8 = *(*result + 16);

      return v8();
    }

    return result;
  }

  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Ignoring SecurePairingFailed status for now; we have more discovered devices to try", buf, 2u);
  }

  result = sub_2393D5398(2u);
  if (result)
  {
    return sub_2393D5320(9u, 2);
  }

  return result;
}

uint64_t sub_2394F7580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 80);
  sub_2394F6210(a1);
  if (a2 == 50)
  {
    if (*(a1 + 144) == 1)
    {
      v9 = sub_239289A18((a1 + 144));
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = sub_2394BA124();
      *buf = *(v9 + 57);
      v13 = (*(*v12 + 80))(v12, v9 + 184, v10, v11, buf);
      if (v13)
      {
        if (v13 != 45)
        {
          v14 = sub_2393D9044(9u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = sub_2393C9138();
            *buf = 136315138;
            *v18 = v15;
            _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Error when verifying the validity of an address: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }
        }
      }
    }
  }

  else if (!a2)
  {
    v7 = sub_2393D9044(9u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "PASE session established with commissionee. Stopping discovery.", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    sub_2394F4BA8(a1);
    *(a1 + 40) = 0;
    *buf = 1;
    *&v18[4] = "core_setup_code_pairer_pair_dev";
    v19 = 0;
    v20 = 3;
    result = sub_23948BD20(buf);
    if (v6)
    {
      result = (*(*v6 + 24))(v6, a2 & 0xFFFFFFFF00000000, a3);
    }

    goto LABEL_20;
  }

  *(a1 + 144) = 0;
  result = sub_2394F7000(a1);
  if (result)
  {
    *(a1 + 400) = a2;
    *(a1 + 408) = a3;
  }

  else
  {
    *buf = 1;
    *&v18[4] = "core_setup_code_pairer_pair_dev";
    v19 = a2;
    v20 = 3;
    result = sub_23948BD20(buf);
    if (v6)
    {
      result = (*(*v6 + 24))(v6, a2, a3);
    }
  }

LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394F7838(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}