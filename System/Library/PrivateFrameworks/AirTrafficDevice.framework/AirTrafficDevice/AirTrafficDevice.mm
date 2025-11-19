uint64_t sub_22381A9C0(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v52 = *MEMORY[0x277D85DE8];
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = *MEMORY[0x277D85EF8];
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = v35;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_22381AC20(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = *MEMORY[0x277D85EF8];
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_22381ADB4(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = *MEMORY[0x277D85EF8];
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_22381AFA8(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t VLxCLgDpiF(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = qword_2836EB200[(*(off_2836EB658 + (*(off_2836EB6D8 + (-33 * ((qword_27D09D558 - dword_27D09D7E8) ^ 0x74))) ^ 0xD0u) - 4) ^ (-33 * ((qword_27D09D558 - dword_27D09D7E8) ^ 0x74))) + 6];
  v2 = *(v1 - 4);
  v3 = qword_2836EB200[(*(off_2836EB7F0 + (*(off_2836EB850 + (-33 * ((qword_27D09D558 - v2) ^ 0x74)) - 4) ^ 0xFCu)) ^ (-33 * ((qword_27D09D558 - v2) ^ 0x74))) - 166];
  v4 = (*v3 + v2) ^ &v7;
  *(v1 - 4) = 1321670111 * v4 - 0x4F9B326891F571F4;
  *v3 = 1321670111 * (v4 ^ 0x448BD34F94FDFB74);
  v5 = 675097751 * (((v8 | 0x7719C57A) - v8 + (v8 & 0x88E63A84)) ^ 0x3459E0EC);
  v8[0] = v5 ^ 0x113;
  v8[1] = (a1 ^ 0x457FDB26) + ((2 * a1) & 0x8AFFB64C) + v5 - 5242880;
  LOBYTE(v3) = -33 * (*(v1 - 4) ^ 0x74 ^ *v3);
  (*(qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D7E8) ^ 0x74)) ^ byte_2238FD9F0[byte_2238FA860[(-33 * ((qword_27D09D558 + dword_27D09D7E8) ^ 0x74))] ^ 0xDB]) - 39] + 8 * ((*(off_2836EB808 + (*(off_2836EB438 + v3 - 8) ^ 0xFBu)) ^ v3) + 4120)))(v8);
  return (v8[2] - 1423875590);
}

uint64_t XtCqEf5X(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D850) ^ 0x74)) ^ byte_2238FA560[byte_223907C60[(-33 * ((qword_27D09D558 - dword_27D09D850) ^ 0x74))] ^ 0x37]) - 23];
  v5 = qword_2836EB200[(*(off_2836EB658 + (*(off_2836EB6D8 + (-33 * ((qword_27D09D558 - *v4) ^ 0x74))) ^ 0xD0u) - 4) ^ (-33 * ((qword_27D09D558 - *v4) ^ 0x74))) - 180];
  v6 = *v4 ^ &v8 ^ *v5;
  *v4 = 1321670111 * (v6 - 0x448BD34F94FDFB74);
  *v5 = 1321670111 * (v6 ^ 0x448BD34F94FDFB74);
  v9[0] = a3;
  v9[1] = a2;
  v12 = a4;
  v10 = (1361651671 * (v9 ^ 0x4B6BCC7E)) ^ 0xE50;
  v9[2] = a1;
  LOBYTE(v5) = -33 * (*v4 ^ 0x74 ^ *v5);
  (*(qword_2836EB200[((-33 * (dword_27D09D850 ^ 0x74 ^ qword_27D09D558)) ^ byte_223907B60[byte_223902660[(-33 * (dword_27D09D850 ^ 0x74 ^ qword_27D09D558))] ^ 0xF0]) + 73] + 8 * ((*(off_2836EB808 + (*(off_2836EB438 + v5 - 8) ^ 0xFBu)) ^ v5) + 4212)))(v9);
  return (v11 - 1423875590);
}

uint64_t sub_22381B688(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D8B0) ^ 0x74)) ^ byte_2238FA960[byte_223907D60[(-33 * ((qword_27D09D558 + dword_27D09D8B0) ^ 0x74))] ^ 0x61]) - 154];
  v2 = *(v1 - 4);
  v3 = qword_2836EB200[(*(off_2836EB888 + (*(off_2836EB588 + (-33 * (v2 ^ qword_27D09D558 ^ 0x74)) - 4) ^ 0xDBu) - 12) ^ (-33 * (v2 ^ qword_27D09D558 ^ 0x74))) - 73];
  v4 = *v3 - v2 - &v6;
  *(v1 - 4) = 1321670111 * v4 - 0x448BD34F94FDFB74;
  *v3 = 1321670111 * (v4 ^ 0x448BD34F94FDFB74);
  v7 = a1;
  v8 = 2336 - 1785193651 * ((((2 * (&v7 ^ 0x8FF66AAE)) | 0x15658966) - (&v7 ^ 0x8FF66AAE) + 1967995725) ^ 0xF3650A31);
  LOBYTE(v3) = -33 * ((*v3 - *(v1 - 4)) ^ 0x74);
  (*(qword_2836EB200[((-33 * (dword_27D09D8B0 ^ 0x74 ^ qword_27D09D558)) ^ byte_2238FA560[byte_223907C60[(-33 * (dword_27D09D8B0 ^ 0x74 ^ qword_27D09D558))] ^ 0x6D]) - 104] + 8 * ((*(off_2836EB7F0 + (*(off_2836EB850 + v3 - 4) ^ 0x37u)) ^ v3) + 3973)))(&v7);
  return v9;
}

uint64_t sub_22381B8A0(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = qword_2836EB200[((-33 * (dword_27D09D578 ^ 0x74 ^ qword_27D09D558)) ^ byte_2238FD7F0[byte_2238FA660[(-33 * (dword_27D09D578 ^ 0x74 ^ qword_27D09D558))] ^ 0x18]) + 73];
  v2 = *(v1 - 4);
  v3 = qword_2836EB200[(*(off_2836EB888 + (*(off_2836EB588 + (-33 * ((qword_27D09D558 + v2) ^ 0x74)) - 4) ^ 0xBBu) - 12) ^ (-33 * ((qword_27D09D558 + v2) ^ 0x74))) - 59];
  v4 = v2 ^ &v6 ^ *v3;
  *(v1 - 4) = 1321670111 * (v4 - 0x448BD34F94FDFB74);
  *v3 = 1321670111 * (v4 ^ 0x448BD34F94FDFB74);
  v7 = a1;
  v8 = 882 - 210068311 * ((&v7 - 303765675 - 2 * (&v7 & 0xEDE4E755)) ^ 0xBA8B7D82);
  LOBYTE(v3) = -33 * ((*v3 + *(v1 - 4)) ^ 0x74);
  return (*(qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D578) ^ 0x74)) ^ byte_2238FA960[byte_223907D60[(-33 * ((qword_27D09D558 - dword_27D09D578) ^ 0x74))] ^ 0x61]) - 90] + 8 * ((*(off_2836EB7F0 + (*(off_2836EB850 + v3 - 4) ^ 0xFCu)) ^ v3) + 3966)))(&v7);
}

uint64_t sub_22381BBFC(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D7B0) ^ 0x74)) ^ byte_223907B60[byte_223902660[(-33 * ((qword_27D09D558 - dword_27D09D7B0) ^ 0x74))] ^ 0xF0]) + 232];
  v2 = *(v1 - 4);
  v3 = qword_2836EB200[(*(off_2836EB7F0 + (*(off_2836EB850 + (-33 * (v2 ^ qword_27D09D558 ^ 0x74)) - 4) ^ 0x6Du)) ^ (-33 * (v2 ^ qword_27D09D558 ^ 0x74))) - 138];
  v4 = &v6[*v3 - v2];
  *(v1 - 4) = 1321670111 * v4 - 0x448BD34F94FDFB74;
  *v3 = 1321670111 * (v4 ^ 0x448BD34F94FDFB74);
  v7 = 1564307779 * (((&v7 | 0x27077177) - &v7 + (&v7 & 0xD8F88E88)) ^ 0xB00ABD64) + 437;
  v8 = a1;
  LOBYTE(v3) = -33 * ((*v3 + *(v1 - 4)) ^ 0x74);
  return (*(qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D7B0) ^ 0x74)) ^ byte_2238FD9F0[byte_2238FA860[(-33 * ((qword_27D09D558 - dword_27D09D7B0) ^ 0x74))] ^ 0xBB]) - 25] + 8 * ((*(off_2836EB658 + (*(off_2836EB6D8 + v3) ^ 0xD0u) - 4) ^ v3) + 3987)))(&v7);
}

uint64_t Hz73b(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D838) ^ 0x74)) ^ byte_2238FD8F0[byte_2238FA760[(-33 * ((qword_27D09D558 - dword_27D09D838) ^ 0x74))] ^ 0xC9]) - 95];
  v2 = *(v1 - 4);
  v3 = off_2836EB850 - 4;
  v4 = off_2836EB7F0;
  v5 = qword_2836EB200[(*(off_2836EB7F0 + (*(off_2836EB850 + (-33 * (v2 ^ qword_27D09D558 ^ 0x74)) - 4) ^ 0x6Du)) ^ (-33 * (v2 ^ qword_27D09D558 ^ 0x74))) - 138];
  v6 = (*v5 - v2) ^ &v8;
  *(v1 - 4) = 1321670111 * v6 - 0x448BD34F94FDFB74;
  *v5 = 1321670111 * (v6 ^ 0x448BD34F94FDFB74);
  v10 = a1;
  v9[0] = 1504884919 * (((v9 | 0x37B93314) - (v9 & 0x37B93314)) ^ 0xCC7A840F) + 652;
  LOBYTE(v5) = -33 * ((*v5 - *(v1 - 4)) ^ 0x74);
  (*(qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D838) ^ 0x74)) ^ byte_2238FD9F0[byte_2238FA860[(-33 * ((qword_27D09D558 - dword_27D09D838) ^ 0x74))] ^ 0x4F]) + 45] + 8 * ((v5 ^ v4[v3[v5] ^ 0x37]) + 4080)))(v9);
  return (v9[1] - 1423875590);
}

void sub_22381C158(uint64_t a1)
{
  v1 = *(a1 + 16) - 1037613739 * ((-2 - ((a1 | 0x8BAD1AB) + (~a1 | 0xF7452E54))) ^ 0x2647032B);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_22381C218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  *(v15 - 136) = v14 - 435584651 * ((1720369528 - ((v15 - 136) | 0x668AC178) + ((v15 - 136) | 0x99753E87)) ^ 0xF44724D1) + 200;
  *(v15 - 128) = v11;
  *(v15 - 120) = v13;
  v16 = (*(v12 + 8 * (v14 ^ 0x190C)))(v15 - 136);
  return (*(v12 + 8 * (((a11 < 1) * ((v14 ^ 0xCDB) + 1896)) ^ (v14 - 672))))(v16);
}

uint64_t sub_22381C3A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = (v9 + 4 * v6);
  v11 = v7 & 0x80000000;
  v12 = v6 + 1;
  v13 = *(v9 + 4 * v12);
  v14 = ((v13 & 0x7FFFFFFE | v11) >> ((v5 - 85) ^ 0xC3)) ^ v10[397];
  *v10 = (v14 + a4 - (a5 & (2 * v14))) ^ *(&STACK[0x528] + (v13 & 1));
  return (*(v8 + 8 * ((2206 * (v12 == 227)) ^ v5)))();
}

uint64_t sub_22381C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, uint64_t a20)
{
  a19 = v20 + 5 - 143681137 * ((((2 * &a19) | 0x879B0C46) - &a19 + 1009940957) ^ 0x25652A33);
  a20 = a16;
  (*(v21 + 8 * (v20 + 3335)))(&a19);
  a20 = a13;
  a19 = v20 + 5 - 143681137 * ((((&a19 | 0x5ED940E8) ^ 0xFFFFFFFE) - (~&a19 | 0xA126BF17)) ^ 0x478E1307);
  v22 = (*(v21 + 8 * ((v20 - 480) ^ 0x1129)))(&a19);
  return (*(v21 + 8 * ((((a15 ^ 0x57DEBFE6) - 50340320 + ((v20 - 1346536245) & (2 * a15)) == 1423875590) * ((v20 - 480) ^ 0x8DF)) ^ (v20 - 480))))(v22);
}

uint64_t sub_22381C484()
{
  v6 = (v2 - 32);
  v7 = (v3 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v1 == 32) * v4) ^ v0)))();
}

void sub_22381C4EC(_DWORD *a1)
{
  v1 = *a1 ^ (50899313 * ((a1 + 1029127688 - 2 * (a1 & 0x3D573E08)) ^ 0x179C1472));
  v2 = qword_2836EB200[v1 - 3782];
  v3 = *(v2 + 8 * ((((*(v2 + 8 * (v1 ^ 0x1F21)))(32, 0x101004023FF3BD5) == 0) * (v1 - 3769)) ^ v1));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22381C598(uint64_t result)
{
  v2 = *(v1 + 8);
  *result = 0;
  *(result + 8) = 0x6224E6DA6224E6DALL;
  *(result + 16) = 0x45823AB70B470895;
  *(result + 24) = 1423875590;
  *v2 = result;
  *(v1 + 16) = 1423875590;
  return result;
}

void sub_22381C5E4(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (843532609 * ((a1 + 1971512249 - 2 * (a1 & 0x7582E3B9)) ^ 0x29CFB73C));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_22381C6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v40 = 1785193651 * ((v39 + 1624186414 - 2 * ((v39 - 160) & 0x60CF1ECE)) ^ 0x96EEBAE2);
  *(v39 - 160) = &a28;
  *(v39 - 152) = v40 + v37 + 346;
  *(v39 - 148) = a16 - v40 - 240363145;
  v41 = (*(v38 + 8 * (v37 ^ 0x1003)))(v39 - 160);
  v42 = (((v37 + 1734659992) & 0xDEBFB5FE) + 89019163 + (a37 & 0x3F ^ 0x2C695C86)) ^ ((a37 & 0x3F ^ (v37 + 1755522312)) + 263758042) ^ ((a37 & 0x3F ^ 0x44CA79DD) + 600964192);
  *(&a28 + v42 - 1729856899) = -48;
  return (*(v38 + 8 * ((2808 * (v42 - 1729856955 < 0xFFFFFFC8)) ^ v37)))(v41);
}

uint64_t sub_22381C85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v18 = v16 + 301;
  v19 = a5 + a6 + 503 * ((v18 - 1928789772) & 0x72F6FDE3 ^ 0xDC6) - 3518;
  v20 = (v19 ^ 0x126B85D9) & (2 * (v19 & 0xA06BC99C)) ^ v19 & 0xA06BC99C;
  v21 = ((2 * (v19 ^ 0x52FC94D1)) ^ 0xE52EBA9A) & (v19 ^ 0x52FC94D1) ^ (2 * (v19 ^ 0x52FC94D1)) & 0xF2975D4C;
  v22 = v21 ^ 0x12914545;
  v23 = (v21 ^ 0x80060800) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0xCA5D7534) & v22 ^ (4 * v22) & 0xF2975D4C;
  v25 = (v24 ^ 0xC2155500) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x30820849)) ^ 0x2975D4D0) & (v24 ^ 0x30820849) ^ (16 * (v24 ^ 0x30820849)) & 0xF2975D40;
  v27 = v25 ^ 0xF2975D4D ^ (v26 ^ 0x20155400) & (v25 << 8);
  return (*(v17 + 8 * ((482 * (((v19 ^ (2 * ((v27 << 16) & 0x72970000 ^ v27 ^ ((v27 << 16) ^ 0x5D4D0000) & (((v26 ^ 0xD282090D) << 8) & 0x72970000 ^ 0x60820000 ^ (((v26 ^ 0xD282090D) << 8) ^ 0x175D0000) & (v26 ^ 0xD282090D))))) & 0xFFFFFFFC ^ 0xE54F7304) - a16 != -801774387)) ^ v18)))();
}

void gLg1CWr7p()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D788) ^ 0x74)) ^ byte_2238FD7F0[byte_2238FA660[(-33 * ((qword_27D09D558 + dword_27D09D788) ^ 0x74))] ^ 0xFB]) + 124];
  v1 = off_2836EB6D8;
  v2 = off_2836EB658 - 4;
  v3 = qword_2836EB200[(*(off_2836EB658 + (*(off_2836EB6D8 + (-33 * ((qword_27D09D558 - *v0) ^ 0x74))) ^ 0x61u) - 4) ^ (-33 * ((qword_27D09D558 - *v0) ^ 0x74))) - 124];
  v4 = *v0 ^ &v6 ^ *v3;
  *v0 = (1321670111 * v4) ^ 0x448BD34F94FDFB74;
  *v3 = 1321670111 * (v4 ^ 0x448BD34F94FDFB74);
  v7[1] = (1037613739 * ((2 * (v7 & 0x32CAFF30) - v7 + 1295319244) ^ 0x9C372DB3)) ^ 0x86F54BA0;
  LOBYTE(v3) = -33 * (*v0 ^ 0x74 ^ *v3);
  v5 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D788) ^ 0x74)) ^ byte_2238FD9F0[byte_2238FA860[(-33 * ((qword_27D09D558 + dword_27D09D788) ^ 0x74))] ^ 0xBB]) - 25];
  (*(v5 + 8 * ((v3 ^ v2[v1[v3] ^ 0xD0]) + 3881)))(v7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22381CC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t a15, unsigned int a16, unsigned int a17, uint64_t a18)
{
  v24 = 742307843 * ((&a14 + 1189847579 - 2 * (&a14 & 0x46EBA21B)) ^ 0x58C92F4E);
  a15 = v19;
  a14 = (v23 + 446) ^ v24;
  a18 = a11;
  a16 = ((v20 ^ 0x7FEEEFFF) - 939794585 + ((((v23 - 536896342) & 0xF6DF7DDB) + 687784486) & (2 * v20))) ^ v24;
  (*(v21 + 8 * (v23 + 3272)))(&a14);
  v25 = &a14 | 0x50F5070B;
  a14 = (v23 + 1553) ^ (1564307779 * ((1358235403 - v25 + (&a14 | 0xAF0AF8F4)) ^ 0x380734E7));
  a17 = -1564307779 * ((1358235403 - v25 + (&a14 | 0xAF0AF8F4)) ^ 0x380734E7) + 1264667083 * v18 + 1046635743;
  a15 = a11;
  v26 = (*(v21 + 8 * (v23 ^ 0x1344)))(&a14);
  return (*(v21 + 8 * ((3018 * (a16 == v22)) ^ v23)))(v26);
}

uint64_t sub_22381CE94()
{
  v7 = (v2 - 32);
  v8 = (v3 - 32);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v5 + 8 * ((((v1 == 32) ^ (v4 + 1)) & 1 | (2 * (((v1 == 32) ^ (v4 + 1)) & 1))) ^ (v6 + v0 + 2359))))();
}

uint64_t sub_22381CEA4()
{
  v6 = 277 * (v0 ^ 0x2D5);
  v7 = ((&v11 & 0x5CA9F952 | ~(&v11 | 0x5CA9F952)) ^ 0xF4399C7A) * v4;
  v11 = &v10;
  v12 = (((2 * v2) & 0xEDBDBFCE) + (v2 ^ 0xF6DEDFE7) + (v6 ^ 0x5DFFB7A2)) ^ v7;
  v13 = v0 - v7 + 240;
  (*(v3 + 8 * (v0 ^ 0x1299)))(&v11);
  (*(v3 + 8 * (v6 ^ 0x19CA)))(v9);
  v11 = *v5;
  v12 = v6 - ((&v11 & 0x294269C4 | ~(&v11 | 0x294269C4)) ^ 0x81D20CEC) * v4 - 1611;
  result = (*(v3 + 8 * (v6 + 1680)))(&v11);
  *(v1 + 4) = v10;
  return result;
}

uint64_t sub_22381CF9C@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54)
{
  v55 = STACK[0x450];
  STACK[0x2B8] = *(v54 + 8 * (a54 - 1021));
  STACK[0x4C0] = v55;
  LODWORD(STACK[0x4CC]) = 1944806001;
  STACK[0x228] = a1;
  v56 = (*(v55 + 68) & 0x3Fu) - 50 < (a54 ^ 0x280u) - 1816;
  return (*(v54 + 8 * (((2 * v56) | (16 * v56)) ^ a54 ^ 0x2DD)))();
}

uint64_t sub_22381CFC8()
{
  v5 = v2 - 544;
  v6 = *(v3 + 8) + ((v5 - 760) ^ 0xFFFFFE6F);
  return (*(v4 + 8 * ((629 * (((v6 << (v5 ^ 0x8D)) & v1) + (v6 ^ v0) == v0)) ^ v5)))();
}

uint64_t sub_22381D05C@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a3 + v7) ^ 0x50;
  return (*(v6 + 8 * ((14 * (v7 == ((v5 - a2 - 713) ^ 0x23BLL))) ^ (v3 + v5 + 1588))))();
}

uint64_t sub_22381D0A8()
{
  v6 = (v2 - 32);
  v7 = (v3 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v1 == 32) * (((v0 + 797) | v4) - 3471)) | v0)))();
}

uint64_t sub_22381D128@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, uint64_t a57)
{
  v62 = 675097751 * ((422742029 - ((v60 - 192) | 0x1932880D) + ((v60 - 192) | 0xE6CD77F2)) ^ 0xA58D5264);
  *(v60 - 128) = a3 + 800;
  *(v60 - 184) = a3 + 528;
  *(v60 - 176) = &STACK[0x530] + a1;
  *(v60 - 168) = 0;
  *(v60 - 160) = &STACK[0x42C];
  *(v60 - 152) = v57 + 1168;
  *(v60 - 144) = 0;
  *(v60 - 136) = (v59 ^ 0xBB753FC7) - v62 + ((2 * v59) & 0x76EA7F8E) + 2147214269;
  *(v60 - 188) = a2 - v62 + 661;
  v63 = (*(v61 + 8 * (a2 + 3060)))(v60 - 192);
  return (*(a57 + 8 * (((*(v60 - 192) == 1423875590) * (a56 + 2873)) ^ v58)))(v63, 4143030582, 2547266248, 109);
}

uint64_t sub_22381D2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v46 = (v45 - 256 + a32);
  v47 = v41 ^ (v42 - 261);
  v48 = (*(v43 + 8 * (v41 + 3862)))(v46 + 4, 0);
  v49 = v46[4] + 1167295984 - ((2 * v46[4]) & 0x8B270BE0);
  v46[1] = v46[6] + (v47 ^ 0x73C9167E) - ((2 * v46[6]) & 0x8B270BE0);
  v46[2] = v49;
  v50 = (*(v43 + 8 * (v41 ^ 0xEF9)))(v48);
  v46[3] = v50 + 1167295984 - ((2 * v50) & 0x8B270BE0);
  v51 = (*(v43 + 8 * (v41 + 3831)))();
  *v46 = v51 + 1167295984 - ((2 * v51) & 0x8B270BE0);
  v44[1] = (*v46 ^ 0x459385F0) + ((1664525 * (*v44 ^ (*v44 >> 30))) ^ v44[1]);
  v52 = 675097751 * ((v45 + 0x4859853D0532D183 - 2 * ((v45 - 152) & 0x4859853D0532D21BLL)) ^ 0xC9B12F964672F78DLL);
  v53 = v47 + 477216422 - v52;
  *(v45 - 128) = v53 + 137;
  *(v45 - 124) = (v47 + 477216422) ^ v52;
  v54 = v45 - 160;
  *(v54 + 24) = v52 ^ 2;
  *(v45 - 152) = v53 + 160;
  *(v45 - 148) = 788016905 - v52 + v47;
  *(v45 - 112) = v52 ^ 1;
  *(v54 + 40) = v52 + 623;
  v55 = (*(a40 + 8 * (v40 + v47 + 3472)))(v45 - 152);
  return (*(a40 + 8 * *(v45 - 144)))(v55);
}

uint64_t sub_22381D4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10, int a11, char a12, __int16 a13, char a14, int a15, int a16, char a17, uint64_t a18, _BYTE *a19, char *a20, char *a21, _BYTE *a22, char *a23)
{
  a22 = a10;
  a23 = &a17;
  LODWORD(a21) = v23 + 1037613739 * ((1477905839 - (&a19 | 0x58170DAF) + (&a19 | 0xA7E8F250)) ^ 0x76EADF2F) + 1101;
  a20 = &a14;
  (*(v24 + 8 * (v23 + 2158)))(&a19);
  LODWORD(a22) = (v23 + 941) ^ (843532609 * (((&a19 | 0x85B2FAC2) - &a19 + (&a19 & 0x7A4D0538)) ^ 0xD9FFAE47));
  a21 = &a12;
  a19 = a10;
  (*(v24 + 8 * (v23 ^ 0x84D)))(&a19);
  a20 = a10;
  LODWORD(a19) = (v23 + 635) ^ (1504884919 * ((&a19 - 402405695 - 2 * (&a19 & 0xE803C6C1)) ^ 0x13C071DA));
  v26 = (*(v24 + 8 * (v23 | 0x856)))(&a19);
  return (*(v24 + 8 * (((HIDWORD(a19) == ((v23 - 165) ^ (v25 - 1292))) * ((v23 ^ 0x42B) + 1608)) ^ v23)))(v26);
}

uint64_t sub_22381D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, unsigned int a23, uint64_t a24)
{
  v26 = a20 + 1678212853 > a23;
  if (a23 < 0x64077EB5 != (a20 + 1678212853) < 0x64077EB5)
  {
    v26 = (a20 + 1678212853) < 0x64077EB5;
  }

  return (*(v24 + 8 * ((v26 * (((v25 + 1078) ^ 0xFFFFF38B) + v25 + 2125)) | (v25 + 2878))))(a1, a2, 43, a4, a5, a6, a7, a24);
}

uint64_t sub_22381D7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, int a21, unsigned int a22, char *a23)
{
  v24 = 675097751 * ((&a18 & 0x19FBC572 | ~(&a18 | 0x19FBC572)) ^ 0xA5441F1B);
  a23 = &a15;
  a19 = (a12 + 1421511801) ^ v24;
  a20 = v24 ^ 0x1538D826;
  a22 = v24 ^ 0xBEB0E746;
  a18 = a14;
  v25 = (*(v23 + 8 * (a12 + 3412)))(&a18);
  v26 = a21 != (((a12 + 324) | 0x122) ^ 0x54DE9C17) + ((a12 - 198173691) & 0xBCFE5FF);
  return (*(v23 + 8 * ((v26 | (2 * v26)) ^ a12)))(v25);
}

uint64_t sub_22381D988@<X0>(int a1@<W8>, int a2, char a3, __int16 a4, char a5, int a6, unsigned int a7, uint64_t a8, char *a9, char *a10, int a11, int a12)
{
  v14 = a1 ^ 0x9F9;
  v15 = 1504884919 * (((&a7 | 0xC1B89845) + (~&a7 | 0x3E4767BA)) ^ 0x3A7B2F5F);
  a12 = ((a1 ^ 0x9F9) - 68) ^ v15;
  a10 = &a3;
  a8 = v12;
  a9 = &a5;
  a7 = v15 + 1165979789;
  v16 = (*(v13 + 8 * (a1 ^ 0x1B74)))(&a7);
  return (*(v13 + 8 * (((*(v12 + 24) == v14 + 1423874895) * (((2 * v14) ^ 0xE84) - 2)) ^ v14)))(v16);
}

uint64_t sub_22381DAC4(uint64_t a1, unsigned int a2)
{
  v7 = v4 < v5;
  if (v7 == v3 + (v2 ^ a2) > 0xED246489)
  {
    v7 = v5 + v3 + 1 < v4;
  }

  return (*(v6 + 8 * ((14 * v7) ^ v2)))();
}

uint64_t sub_22381DC20@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x1458u));

  return v3(v1);
}

uint64_t sub_22381DC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, uint64_t a40)
{
  *v44 = (v41 + 911905678) & 0x1CFCA881 ^ v44[623] ^ (((((~(v41 + 911905678) + v42) ^ (v43 - (v41 + 911905678))) - 1) & ((v41 + 911905678) - v42)) >> 63);
  v47 = 675097751 * ((0x8B88B6C748EDCA16 - (v45 | 0x8B88B6C748EDCA16) + a38) ^ 0xF59FE393F452107FLL);
  v48 = v46 - 160;
  *(v48 + 40) = v47 + 3;
  *(v46 - 152) = a39 - v47 - 16;
  *(v46 - 148) = 1699922583 - v47;
  *(v48 + 24) = (v40 + 1) ^ v47;
  *(v46 - 128) = a39 - v47 - 118;
  *(v46 - 124) = a39 ^ v47;
  *(v46 - 112) = v47 ^ 1;
  v49 = (*(a40 + 32760))(v46 - 152);
  return (*(a40 + 8 * *(v46 - 144)))(v49);
}

uint64_t sub_22381DD34(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *(v4 - 15 + v7);
  v10 = (v5 + 1152 + v7);
  *(v10 - 1) = *(v4 - 15 + v7 - 16);
  *v10 = v9;
  return (*(v3 + 8 * ((((v7 & 0xFFFFFFE0) == 32) * ((a3 ^ (v6 + 1252)) - 825)) ^ (v8 + a3 + 1586))))(a1, a2);
}

uint64_t sub_22381DDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a2 - 1;
  STACK[0x328] = v7;
  *(a1 + v7) = ((v2 + 1) ^ v4) * (v2 + 18);
  return (*(v6 + 8 * (((STACK[0x328] == 0) * v5) ^ v3)))();
}

void sub_22381DE50(int a1@<W8>)
{
  v4 = v2 ^ 5;
  if (v3 < 0)
  {
    v3 = -v3;
  }

  **(v1 + 8) = v3 - ((v4 + 704632319) & (2 * v3)) - 1795167161;
  *(v1 + 4) = a1 + 1;
}

uint64_t sub_22381DF3C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, char a5, _BYTE *a6, char a7, uint64_t a8, int a9, char a10, uint64_t a11, _BYTE *a12, char *a13, char *a14, _BYTE *a15, char *a16)
{
  v18 = (a1 - 106) | 0x402;
  LODWORD(a14) = a1 + 1037613739 * (((~&a12 & 0x6351A882) - (~&a12 | 0x6351A883)) ^ 0xB25385FC) + 2692;
  a13 = &a7;
  a15 = a6;
  a16 = &a10;
  (*(v16 + 8 * (a1 ^ 0x1165)))(&a12);
  LODWORD(a15) = (v18 + 1612) ^ (843532609 * ((&a12 & 0x6ACCF146 | ~(&a12 | 0x6ACCF146)) ^ 0xC97E5A3C));
  a14 = &a5;
  a12 = a6;
  (*(v16 + 8 * (v18 ^ 0xAEE)))(&a12);
  LODWORD(a12) = (v18 + 1306) ^ (1504884919 * ((-2020768514 - (&a12 | 0x878D84FE) + (&a12 | 0x78727B01)) ^ 0x83B1CC1A));
  a13 = a6;
  v19 = (*(v16 + 8 * (v18 ^ 0xAF5)))(&a12);
  return (*(v16 + 8 * ((584 * (HIDWORD(a12) == ((1202 * (v18 ^ 0x500)) ^ (v17 - 1700)))) | v18)))(v19);
}

uint64_t sub_22381DFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16, char *a17)
{
  v21 = 675097751 * (&a12 ^ 0x43402596);
  a16 = v21 ^ 0xBEB0E746;
  a17 = &a11;
  a12 = a9;
  a13 = (v18 + 1421511054) ^ v21;
  a14 = v21 ^ 0x117910E7;
  v22 = (*(v17 + 8 * (v18 ^ 0x15AFu)))(&a12);
  return (*(v17 + 8 * (((a15 == (v18 ^ 0xDC5 ^ (v20 - 1942))) * (v19 ^ 0xEB9209B9)) ^ v18)))(v22);
}

uint64_t sub_22381E06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, char *a16, int a17)
{
  a16 = &a11;
  a15 = (50899313 * (((&a15 | 0x71A0669C) - (&a15 & 0x71A0669C)) ^ 0x5B6B4CE6)) ^ 0xF11;
  v18 = (*(v17 + 32872))(&a15);
  return (*(v17 + 8 * ((2643 * (a17 == 1423875590)) ^ 0x65Au)))(v18);
}

uint64_t sub_22381E0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25)
{
  *(v30 - 128) = v28;
  *(v30 - 144) = v27;
  *(v30 - 136) = v29 - 1037613739 * ((v30 + 927034770 - 2 * ((v30 - 144) & 0x37416E22)) ^ 0xE643435D) + 3134;
  (*(v25 + 8 * (v29 + 3778)))(v30 - 144);
  v31 = a25;
  *(v30 - 144) = (v29 + 3232) ^ (((((v30 - 144) | 0x75C36ED7) + (~(v30 - 144) | 0x8A3C9128)) ^ 0xE2CEA2C5) * v26);
  *(v30 - 128) = &a20;
  *(v30 - 120) = &a20;
  *(v30 - 112) = &a24;
  *(v30 - 104) = v28;
  *(v30 - 136) = v31;
  (*(v25 + 8 * (v29 + 3726)))(v30 - 144);
  *(v30 - 112) = &a24;
  *(v30 - 104) = v28;
  *(v30 - 144) = (v29 + 3232) ^ (1564307779 * ((v30 - 306271754 - 2 * ((v30 - 144) & 0xEDBEAA86)) ^ 0x7AB36695));
  *(v30 - 128) = &a20;
  *(v30 - 120) = a12;
  *(v30 - 136) = &a20;
  (*(v25 + 8 * (v29 ^ 0x11B6)))(v30 - 144);
  *(v30 - 128) = &a20;
  *(v30 - 136) = (v29 - 1197042823) ^ (1504884919 * ((1081051257 - ((v30 - 144) | 0x406F8879) + ((v30 - 144) | 0xBF907786)) ^ 0x4453C09D));
  *(v30 - 144) = a13;
  (*(v25 + 8 * (v29 + 3817)))(v30 - 144);
  *(v30 - 144) = &a20;
  *(v30 - 128) = &a22;
  *(v30 - 136) = v29 - 1037613739 * (((v30 - 144) & 0x1C797790 | ~((v30 - 144) | 0x1C797790)) ^ 0x3284A510) + 3134;
  (*(v25 + 8 * (v29 + 3778)))(v30 - 144);
  *(v30 - 136) = &a22;
  *(v30 - 128) = &a20;
  *(v30 - 144) = v29 - 435584651 * ((((v30 - 144) | 0x36226A3C) - (v30 - 144) + ((v30 - 144) & 0xC9DD95C0)) ^ 0x5B10706A) + 2116;
  v32 = (*(v25 + 8 * (v29 + 3704)))(v30 - 144);
  return (*(v25 + 8 * ((((((v29 + 395) | 0x50) ^ 0xFFFFFFF7) + ((v29 - 317) | 0x318)) * (a17 == 0)) ^ (v29 + 444))))(v32);
}

uint64_t sub_22381E1E4@<X0>(int a1@<W8>)
{
  *v3 = v7;
  v5 = (a1 - 3408) | 0x202;
  v11 = v8;
  v10 = a1 - ((&v10 + 1184130226 - 2 * (&v10 & 0x469464B2)) ^ 0xA03CC8A2) * v4 - 2890;
  (*(v2 + 8 * (a1 ^ 0x1E58)))(&v10);
  v10 = v5 - (((&v10 | 0x2FD6AF0C) - (&v10 & 0x2FD6AF0C)) ^ 0xC97E031C) * v4 + 4;
  v11 = v9;
  result = (*(v2 + 8 * (v5 + 3334)))(&v10);
  *(v1 + 28) = 1423875590;
  return result;
}

uint64_t sub_22381E40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, unint64_t a18, unsigned int a19, int a20, unint64_t a21)
{
  a18 = a13;
  LODWORD(a17) = (1564307779 * ((v27 - 329481485 - 2 * (v27 & 0xEC5C82F3)) ^ 0x7B514EE0)) ^ 0x963;
  a20 = -1564307779 * ((v27 - 329481485 - 2 * (v27 & 0xEC5C82F3)) ^ 0x7B514EE0) + 1264667083 * v25 + 1046635743;
  (*(v26 + 32944))(&a17);
  v28 = 1785193651 * ((-2 - ((~v27 | 0x7CA9F0759E25F283) + (v27 | 0x83560F8A61DA0D7CLL))) ^ 0x23314D4D680456AFLL);
  a20 = 2380 - v28;
  a17 = a13;
  a18 = (v24 - ((2 * v24) & 0xFF9F84A28809669CLL) - 0x303DAEBBFB4CB2) ^ v28;
  (*(v26 + 33104))(&a17);
  LODWORD(a17) = (1564307779 * ((v27 & 0xE490E077 | ~(v27 | 0xE490E077)) ^ 0x8C62D39B)) ^ 0x963;
  a20 = -1564307779 * ((v27 & 0xE490E077 | ~(v27 | 0xE490E077)) ^ 0x8C62D39B) + 1264667083 * v23 + 1046635743;
  a18 = a13;
  (*(v26 + 32944))(&a17);
  v29 = 742307843 * ((((2 * v27) | 0x1F8AD3F8) - v27 + 1882887684) ^ 0x91E7E4A9);
  a19 = v29 ^ ((v22 ^ 0x4FEBDFF6) - 134287504 + ((2 * v22) & 0x9FD7BFEC));
  a21 = a13;
  LODWORD(a17) = v29 ^ 0x510;
  a18 = v21;
  v30 = (*(v26 + 32976))(&a17);
  return (*(v26 + 8 * ((3296 * (HIDWORD(a17) == 1423875590)) ^ 0x2CBu)))(v30);
}

uint64_t sub_22381E6E8()
{
  v6 = *(v2 + 4 * (v4 - 1));
  *(v2 + 4 * v4) = ((1566083941 * (v6 ^ (v6 >> 30))) ^ *(v2 + 4 * v4)) - v4;
  *(v5 - 128) = ((v1 + 447293404) ^ 0x68) - v0;
  *(v5 - 124) = (v1 + 447293404) ^ v0;
  *(v5 - 152) = ((v1 + 447293404) ^ 0x5A) - v0;
  *(v5 - 148) = v1 - v0 + 1699921850;
  v7 = v5 - 160;
  *(v7 + 24) = (v4 + 1) ^ v0;
  *(v7 + 40) = v0 + 623;
  *(v5 - 112) = v0 ^ 1;
  v8 = (*(v3 + 8 * (v1 ^ 0xD22)))(v5 - 152);
  return (*(v3 + 8 * *(v5 - 144)))(v8);
}

uint64_t sub_22381E7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, int a15, int a16, char a17, _BYTE *a18, _BYTE *a19, char *a20, char *a21, _BYTE *a22, char *a23)
{
  LODWORD(a21) = v23 + 1037613739 * ((-1531842141 - (&a19 | 0xA4B1F1A3) + (&a19 | 0x5B4E0E5C)) ^ 0x8A4C2323) + 1174;
  a20 = &a14;
  a22 = a18;
  a23 = &a12;
  (*(v24 + 8 * (v23 + 2231)))(&a19);
  LODWORD(a22) = (v23 + 1014) ^ (843532609 * (((&a19 ^ 0x9B95166) + 604308448 - 2 * ((&a19 ^ 0x9B95166) & 0x240503E0)) ^ 0x71F10603));
  a19 = a18;
  a21 = &a17;
  (*(v24 + 8 * (v23 + 2196)))(&a19);
  a20 = a18;
  LODWORD(a19) = (v23 + 708) ^ (1504884919 * ((2 * (&a19 & 0xB3965F8) - &a19 - 188311039) ^ 0xF052D1A));
  v26 = (*(v24 + 8 * (v23 + 2207)))(&a19);
  return (*(v24 + 8 * (((HIDWORD(a19) == v25 + 2 * (v23 ^ 0x39A) - 2436) * (((v23 ^ 0x39A) - 85) ^ 0xB59)) ^ v23)))(v26);
}

uint64_t sub_22381E97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, _BYTE *a12, int a13, char a14, __int16 a15, char a16, __int16 a17, char a18, _BYTE *a19, char *a20, char *a21, _BYTE *a22, char *a23)
{
  v27 = (v23 + 1347046975) & 0xDEC;
  LODWORD(a22) = (v23 + 1422) ^ (((((&a19 | 0x72912ABA) ^ 0xFFFFFFFE) - (~&a19 | 0x8D6ED545)) ^ 0xD12381C0) * v24);
  a21 = &a14;
  a19 = a12;
  (*(v25 + 8 * (v23 ^ 0xA2Cu)))(&a19);
  a20 = &a10;
  LODWORD(a21) = v27 + 1037613739 * (((&a19 | 0x9DE3EB03) - &a19 + (&a19 & 0x621C14F8)) ^ 0x4CE1C67C) + 2562;
  a22 = a12;
  a23 = &a18;
  (*(v25 + 8 * (v27 ^ 0x11E3)))(&a19);
  a21 = &a16;
  a19 = a12;
  LODWORD(a22) = (v27 + 2402) ^ (((&a19 + 1328819105 - 2 * (&a19 & 0x4F342BA1)) ^ 0x13797F24) * v24);
  (*(v25 + 8 * (v27 + 3584)))(&a19);
  a20 = a12;
  LODWORD(a19) = (v27 + 2096) ^ (1504884919 * ((&a19 + 295537291 - 2 * (&a19 & 0x119D8A8B)) ^ 0xEA5E3D90));
  v28 = (*(v25 + 8 * (v27 + 3595)))(&a19);
  return (*(v25 + 8 * (((HIDWORD(a19) == v26) * (((v27 + 577) | 0x280) ^ 0xFA)) ^ v27)))(v28);
}

uint64_t sub_22381E9FC()
{
  v6 = (v3 ^ 0xEDE) - ((((&v6 | 0x2C6D2A7A) ^ 0xFFFFFFFE) - (~&v6 | 0xD392D585)) ^ 0x353A7995) * v1 - 2376;
  v7 = v5;
  (*(v0 + 8 * (v3 ^ 0x1298)))(&v6);
  return (v2 - 1423875590);
}

uint64_t sub_22381EA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = &a14;
  HIDWORD(a16) = -1564307779 * (((v24 | 0x55661B5E) - v24 + (v24 & 0xAA99E4A0)) ^ 0xC26BD74D) + ((((v23 + 1124110001) | 0x28604184) - 1801506865) ^ 0x4B614860) * v21 + 1046635743;
  a15 = a13;
  LODWORD(a14) = (v23 + 1980) ^ (1564307779 * (((v24 | 0x55661B5E) - v24 + (v24 & 0xAA99E4A0)) ^ 0xC26BD74D));
  (*(v22 + 8 * (v23 + 3695)))(&a14);
  v25 = 1564307779 * (((&a14 | 0x4EFDD3FD) - (&a14 & 0x4EFDD3FD)) ^ 0xD9F01FEE);
  LODWORD(a14) = (v23 + 1980) ^ v25;
  a15 = a13;
  HIDWORD(a16) = 1264667083 * HIDWORD(v20) - v25 + 1046635743;
  (*(v22 + 8 * (v23 + 3695)))(&a14);
  v26 = &a14 | 0xE6172C72;
  a15 = a13;
  LODWORD(a14) = (v23 + 1980) ^ (1564307779 * ((-434688910 - v26 + (&a14 | 0x19E8D38D)) ^ 0x8EE51F9E));
  HIDWORD(a16) = -1564307779 * ((-434688910 - v26 + (&a14 | 0x19E8D38D)) ^ 0x8EE51F9E) + 1264667083 * v20 + 1046635743;
  (*(v22 + 8 * (v23 + 3695)))(&a14);
  a16 = a13;
  a14 = v19;
  LODWORD(a17) = (v23 + 1214) ^ (435584651 * (((&a14 | 0xF9CBF3A9) + (~&a14 | 0x6340C56)) ^ 0x94F9E9FE));
  (*(v22 + 8 * (v23 ^ 0xE74)))(&a14);
  a15 = a13;
  HIDWORD(a16) = -1564307779 * ((&a14 - 1186277487 - 2 * (&a14 & 0xB94AD791)) ^ 0x2E471B82) + 1264667083 * a11 + 1046635743;
  LODWORD(a14) = (v23 + 1980) ^ (1564307779 * ((&a14 - 1186277487 - 2 * (&a14 & 0xB94AD791)) ^ 0x2E471B82));
  (*(v22 + 8 * (v23 + 3695)))(&a14);
  v27 = 742307843 * (((&a14 | 0x50C46DDE) - &a14 + (&a14 & 0xAF3B9220)) ^ 0x4EE6E08B);
  a15 = v17;
  LODWORD(a14) = (v23 + 873) ^ v27;
  a17 = a13;
  LODWORD(a16) = v27 ^ ((v18 ^ 0xC7EEDF6E) + 2147217400 + ((2 * v18) & 0x8FDDBEDC));
  v28 = (*(v22 + 8 * (v23 ^ 0x11BD)))(&a14);
  return (*(v22 + 8 * (((4 * (HIDWORD(a14) != 1423875590)) | (8 * (HIDWORD(a14) != 1423875590))) ^ v23)))(v28);
}

uint64_t sub_22381ED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, __n128 a8)
{
  v13 = (v11 + 4 * a7);
  *v13 = a8;
  v13[1] = a8;
  v14 = v8 == a7;
  v15 = (a7 + 8);
  v16 = v14;
  return (*(v12 + 8 * ((v16 * v9) ^ v10)))(a1, a2, a3, a4, a5, a6, v15);
}

uint64_t sub_22381EE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = 143681137 * ((~(v17 | 0x212DA2B4) + (v17 & 0x212DA2B4)) ^ 0x387AF15B);
  *(v20 - 128) = v18;
  *(v20 - 136) = v14 - v21 + 2943;
  *(v20 - 120) = ((v14 - 1212164841) ^ v19) - v21 + ((2 * v19) & 0x6F7FAF7E) + 2144845418;
  (*(v16 + 8 * (v14 + 3471)))(v20 - 136);
  *(v20 - 112) = (v14 + 3246) ^ (1361651671 * ((v17 + 612952897 - 2 * (v17 & 0x2488EB41)) ^ 0x6FE3273F));
  *(v20 - 128) = v15;
  *(v20 - 120) = a14;
  v22 = (*(v16 + 8 * (v14 + 3357)))(v20 - 136);
  return (*(v16 + 8 * ((71 * (*(v20 - 136) > ((v14 + 1381) ^ 0x3B9D8DF2u))) ^ (v14 + 607))))(v22);
}

uint64_t sub_22381EF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = *(a26 + 52);
  v67 = STACK[0x284];
  v68 = 143681137 * ((~((v64 - 192) | 0x91997D60) + ((v64 - 192) & 0x91997D60)) ^ 0x88CE2E8F);
  *(v64 - 152) = (a20 ^ 0x1CF59F11) - v68;
  *(v64 - 164) = v68 ^ v66 ^ ((v66 ^ 0xFD183D8C) + 162655447) ^ ((v66 ^ 0x5F25791E) - 1416845243) ^ ((v66 ^ 0x7FEFBFFE) - 1958318427) ^ ((v66 ^ 0xD684D4C0 ^ (5 * (v63 ^ 0x3F1))) + (v63 ^ 0x222D0750)) ^ 0xC01FA0AD;
  *(v64 - 192) = a41;
  *(v64 - 184) = v62;
  *(v64 - 172) = (v63 - 963) ^ v68;
  *(v64 - 168) = ((v67 ^ 0xF7B72B7E) + 1048182448 + ((2 * v67) & 0xEF6E56FC)) ^ v68;
  *(v64 - 160) = &STACK[0x17F0];
  v69 = (*(v65 + 8 * (v63 ^ 0x13C7)))(v64 - 192);
  v70 = *(v64 - 176);
  LODWORD(STACK[0x250]) = v70;
  return (*(a62 + 8 * ((v70 != 1423875590) | v63)))(v69);
}

uint64_t sub_22381F1E8@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, int a4, uint64_t a5, int a6, uint64_t *a7)
{
  v11 = (&a3 ^ 0x4B6BCC7E) * a1;
  a7 = &a2;
  a6 = v11 ^ 0x53F3A9F5;
  a5 = v7;
  a3 = v11 + 380192519;
  a4 = (v9 + 66) ^ v11;
  v12 = (*(v8 + 8 * (v9 ^ 0x1152)))(&a3);
  return (*(v8 + 8 * (((*(v7 + 24) == v10) * (v9 - 100)) ^ v9)))(v12);
}

uint64_t sub_22381F2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, uint64_t *a13, int a14)
{
  a12 = (v16 + 1740) ^ (50899313 * (((&a12 | 0x86D14944) - &a12 + (&a12 & 0x792EB6B8)) ^ 0xAC1A633E));
  a13 = &a9;
  v17 = (*(v14 + 8 * (v16 + 1992)))(&a12);
  return (*(v14 + 8 * (((a14 == v15 + v16 - 2117) * ((v16 ^ 0x38E) - 1675)) ^ v16)))(v17);
}

uint64_t sub_22381F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, unsigned int a20, unsigned int a21, uint64_t a22)
{
  v28 = &a17;
  a21 = -1564307779 * ((2061265304 - (v28 | 0x7ADC6998) + (v28 | 0x85239667)) ^ 0x122E5A74) + 1264667083 * v25 + 1046635743;
  a17 = (v22 + 925) ^ (1564307779 * ((2061265304 - (v28 | 0x7ADC6998) + (v28 | 0x85239667)) ^ 0x122E5A74));
  a19 = a15;
  (*(v26 + 8 * (v22 ^ 0x15D0)))(&a17);
  v29 = 742307843 * ((2 * (&a17 & 0x19DFEEE8) - &a17 - 434106091) ^ 0xF8029C40);
  a19 = v23;
  a20 = v29 ^ ((v24 ^ 0xF7FEFFF7) + 1340854127 + ((2 * v24) & 0xEFFDFFEE));
  a22 = a15;
  a17 = (v22 - 182) ^ v29;
  v30 = (*(v26 + 8 * (v22 ^ 0x15DC)))(&a17);
  v31 = a18 == ((v22 + 989) ^ (v27 - 1633));
  return (*(v26 + 8 * (((4 * v31) | (8 * v31)) ^ v22)))(v30);
}

void QgPp5PNq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22381F5B8@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W8>)
{
  v9 = (v6 - 32);
  v10 = (v7 - 32);
  v11 = *v10;
  *(v9 - 1) = *(v10 - 1);
  *v9 = v11;
  return (*(v8 + 8 * (((v5 == 32) * (((v4 ^ (v3 + 292)) * a1) ^ a2)) ^ (a3 + v4 + 1842))))();
}

uint64_t sub_22381F5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *(a1 + v4 + 4) = *(*(a2 + 8) + a3);
  v11 = *(a2 + 4) + v8;
  v12 = v5 + a3 + 1 < v11;
  if (((v6 + 309) | v7) + a3 - 3410 > v9 != v11 < v5)
  {
    v12 = v11 < v5;
  }

  return (*(a4 + 8 * ((v12 * v10) | v6)))();
}

uint64_t sub_22381F684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, int a21, unsigned int a22, char *a23)
{
  v27 = 675097751 * (&a18 ^ 0x43402596);
  a19 = (v23 + 1421510828) ^ v27;
  a20 = v27 ^ 0xC7872690;
  a18 = a13;
  a23 = &a15;
  a22 = v27 ^ 0xBEB0E746;
  v28 = (*(v26 + 8 * (v23 + 2439)))(&a18);
  return (*(v26 + 8 * (((a21 == v24) * (((v25 + v23 - 2035965213) & 0x14E0B339) + 1764)) ^ v23)))(v28);
}

uint64_t sub_22381F738@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = v2;
  *(result + 32) = 1423833403;
  return result;
}

uint64_t sub_22381F83C(int *a1)
{
  v2 = a1[1] ^ (1037613739 * ((1893040290 - (a1 | 0x70D580A2) + (a1 | 0x8F2A7F5D)) ^ 0x5E285222));
  v3 = v2 + 2030744676;
  result = (*(qword_2836EB200[v2 ^ 0x86F54BEB] + 8 * (v2 + 2030748651)))(qword_2836EB200[v2 + 2030744805], sub_223843460);
  v5 = *qword_2836EB200[v3];
  if (result)
  {
    v5 = 1423833284;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_22381F94C@<X0>(int a1@<W8>)
{
  v5 = (a1 + 685) | 0x110;
  *v8 = v1;
  v6 = (v5 - 1557265719) & 0x5CD1FF7F;
  v12 = v9;
  v11 = v5 - (&v11 ^ 0xE6A8AC10) * v4 - 559;
  (*(v2 + 8 * (v5 + 2771)))(&v11);
  v11 = v6 - (((&v11 | 0xB7A120F4) - &v11 + (&v11 & 0x485EDF08)) ^ 0x51098CE4) * v4 - 1144;
  v12 = v10;
  (*(v2 + 8 * (v6 ^ 0x1776)))(&v11);
  return (v3 - 1423875590);
}

void sub_22381F954(uint64_t a1)
{
  v1 = *(a1 + 28) ^ (1564307779 * ((((2 * a1) | 0xCF99E5FC) - a1 + 405998850) ^ 0x70C13EED));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22381FA14@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q1>, int32x4_t a10@<Q2>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v67 = *(v27 + 8 * (a6 + a7 + 23));
  v32 = *(v31 - 144);
  v33 = *(v31 - 140);
  v34 = *(v31 - 136);
  v35 = (*(v31 - 124) - ((2 * *(v31 - 124)) & 0xA8) - 36);
  if (v35 == 222)
  {
    v69 = vld4q_s8(a2);
    v47 = veorq_s8(v69.val[1], a8);
    _Q22 = vmovl_high_u8(v47);
    _Q21 = vmovl_u8(*v47.i8);
    v50 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm
    {
      SHLL2           V21.4S, V21.8H, #0x10
      SHLL2           V22.4S, V22.8H, #0x10
    }

    v51 = vorrq_s8(vorrq_s8(vorrq_s8(v50, vshll_n_u16(*&vmovl_u8(*&veorq_s8(v69.val[2], a8)), 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v69.val[0], a8))), 0x18uLL)), vmovl_u16(*&vmovl_u8(*&veorq_s8(v69.val[3], a8))));
    *v26 = vaddq_s32(vsubq_s32(v51, vandq_s8(vaddq_s32(v51, v51), a9)), a10).u32[0];
    v52 = &v26[v29 + 1119804584];
    v53 = *(v52 - 16);
    *v52 = __ROR4__(v26[a19 + 1119804584] ^ v28 ^ *(v52 - 8) ^ *(v52 - 14) ^ v53, 31) ^ 0x48718E52;
    return (*(v27 + 8 * ((927 * (v30 == 1119804521)) ^ HIDWORD(a20))))(a1, v53, a3, v33, a4, a5, v32, 1745042281, a11, a12, a13, a14, a15, a16, v67, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }

  else if (v35 == 221)
  {
    v68 = vld4q_s8(a2);
    v36 = veorq_s8(v68.val[2], a8);
    _Q22 = vmovl_u8(*v36.i8);
    _Q21 = vmovl_high_u8(v36);
    __asm
    {
      SHLL2           V23.4S, V21.8H, #0x10
      SHLL2           V24.4S, V22.8H, #0x10
    }

    v45 = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v68.val[1], a8)), 8uLL), vmovl_u16(*&vmovl_u8(*&veorq_s8(v68.val[0], a8)))), vshll_n_s16(*_Q22.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v68.val[3], a8))), 0x18uLL));
    *v26 = vaddq_s32(vsubq_s32(v45, vandq_s8(vaddq_s32(v45, v45), a9)), a10).u32[0];
    return (*(v27 + 8 * (((a21 + 1 != v30) | (4 * (a21 + 1 != v30))) ^ a4 ^ 0xAC63C28)))(4114209040);
  }

  else
  {
    v54 = (((*(v31 - 148) ^ 0xB1757854) + 1317701548) ^ ((*(v31 - 148) ^ 0xEBFE2358) + 335666344) ^ ((*(v31 - 148) ^ 0x85776DD2) + 2055770670)) + (((*(v31 - 148) ^ 0xCAD9A89B) + 891705189) ^ ((*(v31 - 148) ^ 0xE1904936) + 510637770) ^ ((*(v31 - 148) ^ 0xF4B5D773) + 189409421)) - 235895615;
    v55 = (((v32 ^ 0x8AC1F81A) + 1966999526) ^ ((v32 ^ 0xC120861C) + 1054833124) ^ ((v32 ^ 0x941D48D8) + 1810020136)) + (((*(v31 - 144) ^ 0xBC32DA1F) + 1137518049) ^ ((*(v31 - 144) ^ 0x76106BC) - 123799228) ^ ((*(v31 - 144) ^ 0x64AFEA7D) - 1689250429)) + 588326787;
    v56 = (v55 ^ 0xD8E64534) & (2 * (v55 & 0x9CE74639)) ^ v55 & 0x9CE74639;
    v57 = ((2 * (v55 ^ 0xD02EC544)) ^ 0x999306FA) & (v55 ^ 0xD02EC544) ^ (2 * (v55 ^ 0xD02EC544)) & 0x4CC9837C;
    v58 = v57 ^ 0x44488105;
    v59 = (v57 ^ 0x810068) & (4 * v56) ^ v56;
    v60 = ((4 * v58) ^ 0x33260DF4) & v58 ^ (4 * v58) & 0x4CC9837C;
    v61 = (v60 ^ 0x170) & (16 * v59) ^ v59;
    v62 = ((16 * (v60 ^ 0x4CC98209)) ^ 0xCC9837D0) & (v60 ^ 0x4CC98209) ^ (16 * (v60 ^ 0x4CC98209)) & 0x4CC98370;
    v63 = v61 ^ 0x4CC9837D ^ (v62 ^ 0x4C880300) & (v61 << 8);
    v64 = (v63 << 16) ^ 0x37D0000u;
    *(v31 - 148) = v54 ^ ((v54 ^ 0xFBEB3DD3) + 904713514) ^ ((v54 ^ 0x44D28B88) - 1965726861) ^ ((v54 ^ 0xF03E5C21) + 1043969244) ^ ((v54 ^ 0x7EFFFD7F) - 1325918842) ^ 0xEE0421DB;
    *(v31 - 144) = v55 ^ (2 * ((v63 << 16) & 0x4CC90000 ^ v63 ^ v64 & (((v62 ^ 0x41802D) << 8) & 0x4CC90000 ^ 0x4480000 ^ (((v62 ^ 0x41802D) << 8) ^ 0x49830000) & (v62 ^ 0x41802D)))) ^ 0xDA1A761D;
    v65 = (((v33 ^ 0xA02D43D9) + 1607646247) ^ ((v33 ^ 0xA74B1EE6) + 1488249114) ^ ((v33 ^ 0xD89A6BE1) + 660968479)) + (((*(v31 - 140) ^ 0xD7E8B325) + 672615643) ^ ((*(v31 - 140) ^ 0xF4663909) + 194627319) ^ ((*(v31 - 140) ^ 0xFC72BCF2) + 59589390)) - 312971650;
    v66 = (((v34 ^ 0xAF5BBDE4) + 1352942108) ^ ((v34 ^ 0x5B8DFD4D) - 1536032077) ^ ((v34 ^ 0x2B2A7677) - 724203127)) + (((*(v31 - 136) ^ 0x5683DAFE) - 1451481854) ^ ((*(v31 - 136) ^ 0x58BC9CC1) - 1488755905) ^ ((*(v31 - 136) ^ 0xD1C370E1) + 775720735)) - 584819765;
    *(v31 - 140) = v65 ^ ((v65 ^ 0xABB5D9ED) + 2032805585) ^ ((v65 ^ 0xB338A53) - 643009169) ^ ((v65 ^ 0x7699AD83) - 1543089473) ^ ((v65 ^ 0xFB7FFEFF) + 702546371) ^ 0xF29C361C;
    *(v31 - 136) = v66 ^ ((v66 ^ 0xB7559F3D) + 1434554062) ^ ((v66 ^ 0xE292706A) + 4612507) ^ ((v66 ^ 0x3F13FFB7) - 574099896) ^ ((v66 ^ 0x77FFFEEF) - 1792282848) ^ 0xC2D7D8D1;
    return v67(a1, v64, a3, v33, a4, a5, 1288241152);
  }
}

uint64_t sub_223820838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, int a23, unsigned int a24, char *a25)
{
  v27 = 675097751 * ((((2 * &a20) | 0x9BCAD0CE) - &a20 - 1306880103) ^ 0xEA54DF1);
  a21 = (v25 + 1421511688) ^ v27;
  a22 = v27 ^ 0xBDCFF2FB;
  a25 = &a17;
  a24 = v27 ^ 0xBEB0E745;
  a20 = a19;
  v28 = (*(v26 + 8 * (v25 ^ 0x1325)))(&a20);
  return (*(v26 + 8 * (((a23 == ((v25 - 1051876798) & 0x6C5 ^ 0x54DE9A47)) * (((v25 + 313) | 0x304) ^ 0xA93)) ^ v25)))(v28);
}

uint64_t sub_2238209D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49)
{
  v50 = STACK[0x398];
  v51 = *(STACK[0x398] + 96);
  if (v51 == 2)
  {
    v53 = *(v50 + 92) != a49 - 1557;
    return (*(v49 + 8 * ((2 * v53) | (4 * v53) | (a6 + 1440))))(a1, a2, a3, a4, 168855);
  }

  else if (v51 == 1)
  {
    return (*(v49 + 8 * (((*(v50 + 92) == 0) * ((a6 - 953) ^ 0xFC)) ^ (a6 + 2648))))(337773605, 1223, a3, a4, 3957194627);
  }

  else
  {
    STACK[0x3F0] = 91;
    *(v50 + 91) = (&STACK[0x3F0] ^ 0xBA) * (&STACK[0x3F0] + 17);
    return (*(v49 + 8 * (((4 * (STACK[0x3F0] != 0)) | (8 * (STACK[0x3F0] != 0))) ^ (a6 - 610))))(337773605, 1223, a3, a4, 3957194627);
  }
}

uint64_t sub_223820D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  LODWORD(STACK[0x254]) = 99709465;
  LODWORD(STACK[0x474]) = 128;
  v65 = STACK[0x240] + 528;
  v66 = STACK[0x240] + 800;
  v67 = STACK[0x310];
  v68 = 675097751 * ((~((v63 - 192) | 0xA2A14CF2) + ((v63 - 192) & 0xA2A14CF2)) ^ 0x1E1E969B);
  *(v63 - 152) = STACK[0x2A0];
  *(v63 - 144) = v67;
  *(v63 - 128) = v66;
  *(v63 - 168) = 0;
  *(v63 - 160) = &STACK[0x474];
  *(v63 - 136) = 997270532 - v68;
  *(v63 - 188) = v62 - v68 + 1110;
  *(v63 - 184) = v65;
  *(v63 - 176) = 0;
  v69 = (*(v64 + 8 * (v62 + 3509)))(v63 - 192);
  return (*(a62 + 8 * (((*(v63 - 192) == (((v62 + 377) | 0x48) ^ 0x54DE9A5E)) * ((v62 + 377) ^ 0xFE5)) ^ v62)))(v69);
}

uint64_t sub_223820E18()
{
  v8 = v5;
  v7 = v2 - (((&v7 | 0x23B427D4) - &v7 + (&v7 & 0xDC4BD828)) ^ 0xC51C8BC4) * v1 - 1384;
  (*(v0 + 8 * (v2 ^ 0x1866)))(&v7);
  v8 = v6;
  v7 = v2 - 350 - ((&v7 & 0xA6F354C2 | ~(&v7 | 0xA6F354C2)) ^ 0xBFA4072D) * v1 - 1034;
  (*(v0 + 8 * (v2 + 1946)))(&v7);
  return (v4 ^ 0xD4FEBEDE) + 2145378088 + ((v2 ^ 0xA9FD75D2) & (2 * v4)) - 1423875590;
}

uint64_t sub_223820F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, char *a21)
{
  v24 = &a17;
  a18 = a14;
  LODWORD(a17) = (1564307779 * ((2 * (v24 & 0x37A24140) - v24 - 933380423) ^ 0x5F5072AA)) ^ 0x963;
  a20 = -1564307779 * ((2 * (v24 & 0x37A24140) - v24 - 933380423) ^ 0x5F5072AA) + 1264667083 * v21 + 1046635743;
  (*(v22 + 32944))(&a17);
  v25 = 675097751 * ((&a17 & 0x5224D796 | ~(&a17 | 0x5224D796)) ^ 0xEE9B0DFF);
  a17 = a14;
  a21 = &a12;
  a20 = v25 ^ 0xBEB0E746;
  LODWORD(a18) = v25 ^ 0x54BA8F41;
  HIDWORD(a18) = v25 ^ 0x4EF684BC;
  v26 = (*(v22 + 32992))(&a17);
  return (*(v22 + 8 * ((2324 * (a19 == v23)) ^ 0xD1u)))(v26);
}

uint64_t sub_223821094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, int a17)
{
  v20 = 1564307779 * (&a14 ^ 0x970DCC13);
  a15 = a12;
  a17 = 1264667083 * v17 - v20 + 1046635743;
  a14 = v20 ^ 0x963;
  v21 = (*(v18 + 32944))(&a14);
  return (*(v18 + 8 * ((782 * (a16 == ((v19 - 1014) ^ 0x416))) ^ 0x89Fu)))(v21);
}

uint64_t sub_223821140()
{
  v9 = (*(*(v7 + 8) + 4 * v1) ^ 0x6B0013B8) + v2;
  *(*(v0 + 8) + 4 * v1) = v9 + v4 - (v6 & (2 * v9));
  return (*(v5 + 8 * ((15 * (v8 > (((((v3 + 1314341933) & 0xB1A8BBCD) + 952182070) & 0xC73EDAF5 ^ 0x8F0) + v1))) ^ (v3 + 1314341933) & 0xB1A8BBCD)))(2288);
}

uint64_t sub_2238211D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (50899313 * ((1080649395 - (&a14 | 0x406966B3) + (&a14 | 0xBF96994C)) ^ 0x955DB336)) ^ 0xF11;
  a15 = &a10;
  v19 = (*(v17 + 32872))(&a14);
  return (*(v17 + 8 * ((100 * (a16 == v16)) ^ v18)))(v19);
}

uint64_t sub_223821320@<X0>(int a1@<W8>, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11)
{
  *a3 = a11;
  if (a4)
  {
    v12 = a10 == ((((a1 - 3829) | 0x434) + 407) ^ 0x68B);
  }

  else
  {
    v12 = 1;
  }

  v14 = v12 || a5 == 0;
  return (*(v11 + 8 * ((v14 | (2 * v14)) ^ a1)))();
}

uint64_t sub_223821578(uint64_t result)
{
  v4 = *(v1 + 16);
  *result = v3;
  *(result + 8) = v2;
  *(result + 12) = v2;
  *(result + 16) = 0x45823AB60B470895;
  *(result + 24) = 1423875590;
  *v4 = result;
  *v1 = 1423875590;
  return result;
}

uint64_t sub_223821634(int a1)
{
  v6 = ((v5 ^ 0x770) - 158) | 0x888;
  v7 = (((&v10 | 0xCE6B1973) - (&v10 & 0xCE6B1973)) ^ 0x990483A4) * v3;
  v10 = &v9;
  v11 = ((a1 ^ 0xD4DEDFF6) + 2147466768 + ((a1 << ((((v5 ^ 0x70) + 98) | 0x88) + 68)) & 0xA9BDBFEC)) ^ v7;
  v12 = (v5 ^ 0x770) - v7 + 505;
  (*(v2 + 8 * (v5 ^ 0x16E6)))(&v10);
  v10 = *v4;
  v11 = v6 - ((&v10 & 0x294269C4 | ~(&v10 | 0x294269C4)) ^ 0x81D20CEC) * v3 - 1611;
  result = (*(v2 + 8 * (v6 + 1680)))(&v10);
  *(v1 + 4) = v9;
  return result;
}

void sub_2238216DC(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 20) ^ (143681137 * ((~a1 & 0x5E88A740 | a1 & 0xA17758BF) ^ 0xB8200B50));
  v2 = 843532609 * (((~&v6 & 0x52694C4A) - (~&v6 | 0x52694C4B)) ^ 0xE2418CE);
  v7 = 1180578074 - v2;
  v8 = v1 + v2 - 875954089;
  v6 = &v4;
  v3 = qword_2836EB200[v1 | 0x4A];
  (*(v3 + 8 * (v1 ^ 0x1012)))(&v6);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_2238218FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = (a7 + v9 - 16);
  v13 = (v8 + v9 - 16);
  v14 = *v13;
  *(v12 - 1) = *(v13 - 1);
  *v12 = v14;
  return (*(v11 + 8 * (((v9 & 0xFFFFFFE0) != 32) | (2 * ((v9 & 0xFFFFFFE0) != 32)) | (v10 + a8))))();
}

uint64_t sub_2238219EC()
{
  v9 = v3 + 259;
  v10 = v8 - 136;
  v11 = -1564307779 * ((((v8 - 136) ^ 0xE6F74AF6 | 0x32053E8C) - ((v8 - 136) ^ 0xE6F74AF6) + (((v8 - 136) ^ 0xE6F74AF6) & 0xCDFAC172)) ^ 0x43FFB869) + 1264667083 * v7;
  v12 = (v8 - 136);
  *(v8 - 128) = *v6;
  *(v8 - 116) = v11 - 1357784542;
  *(v8 - 136) = (v9 - 43) ^ (1564307779 * ((((v8 - 136) ^ 0xE6F74AF6 | 0x32053E8C) - ((v8 - 136) ^ 0xE6F74AF6) + (((v8 - 136) ^ 0xE6F74AF6) & 0xCDFAC172)) ^ 0x43FFB869));
  (*(v4 + 8 * (v9 ^ 0x1998)))(v8 - 136);
  v13 = *v6;
  v14 = 1785193651 * (((~v10 | 0x574A48B4BB2B704ALL) + (v10 | 0xA8B5B74B44D48FB5)) ^ 0xF72D0A73B2F52B98);
  *(v8 - 116) = v9 - 66 - v14;
  *v12 = v13;
  *(v8 - 128) = v14 ^ (v2 - ((2 * v2) & 0xFF9F84A28809669CLL) - 0x303DAEBBFB4CB2);
  (*(v4 + 8 * (v9 + 1692)))(v8 - 136);
  *(v8 - 128) = *v6;
  *(v8 - 136) = (v9 - 43) ^ (1564307779 * ((((2 * (v8 - 136)) | 0xA576FA3A) - (v8 - 136) + 759464675) ^ 0x45B6B10E));
  *(v8 - 116) = -1564307779 * ((((2 * (v8 - 136)) | 0xA576FA3A) - (v8 - 136) + 759464675) ^ 0x45B6B10E) + 1264667083 * v1 + ((v9 - 138) | 0x59) + 1046633346;
  (*(v4 + 8 * (v9 + 1672)))(v8 - 136);
  v15 = 1785193651 * ((-2 - ((~v10 | 0x9955165E42B47C83) + (v10 | 0x66AAE9A1BD4B837CLL))) ^ 0xC6CDAB66B495D8AFLL);
  *v12 = *v6;
  *(v8 - 128) = v15 ^ (v0 - ((2 * v0) & 0xFF9F84A28809669CLL) - 0x303DAEBBFB4CB2);
  *(v8 - 116) = v9 - 66 - v15;
  (*(v4 + 8 * (v9 ^ 0x19A4)))(v8 - 136);
  v16 = 1564307779 * ((1466799163 - (v10 ^ 0x30FE179 | 0x576D943B) + (v10 ^ 0x30FE179 | 0xA8926BC4)) ^ 0x3C9046AE);
  *(v8 - 128) = *v6;
  *(v8 - 136) = (v9 - 43) ^ v16;
  *(v8 - 116) = 1046635743 - v16;
  v17 = (*(v4 + 8 * (v9 + 1672)))(v8 - 136);
  return (*(v4 + 8 * ((1125 * (*(v8 - 120) == v5)) ^ v9)))(v17);
}

uint64_t sub_223821D28()
{
  v9 = v2 - (((&v9 | 0xF414AB6B) + (~&v9 | 0xBEB5494)) ^ 0x12BC077A) * v3 + v4;
  v10 = v7;
  (*(v1 + 8 * (v4 ^ v0)))(&v9);
  v10 = v8;
  v9 = v2 - ((-283478485 - (&v9 | 0xEF1A762B) + (&v9 | 0x10E589D4)) ^ 0xF64D25C4) * v3 + v4;
  (*(v1 + 8 * (v4 & 0x80009A0C)))(&v9);
  return (v5 - 1423875590);
}

uint64_t sub_223821EA8@<X0>(int a1@<W0>, uint64_t a2@<X7>, int a3@<W8>)
{
  v9 = (v3 ^ v7) * a1;
  v10 = a3 + v9 - 1113;
  *(v4 + v10) = *(a2 + v10);
  return (*(v8 + 8 * (((((v10 == 0) ^ (v9 ^ v5)) & 1) * ((v9 ^ v6) - 17)) ^ (v9 + 2097))))();
}

uint64_t sub_223821EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, char *a16, int a17)
{
  a15 = (50899313 * ((2 * (&a15 & 0x1583DDC0) - &a15 + 1786520126) ^ 0x40B70844)) ^ 0xF11;
  a16 = &a10;
  v18 = (*(v17 + 32872))(&a15);
  return (*(v17 + 8 * ((973 * (a17 == 1423875590)) ^ 0x5D7u)))(v18);
}

uint64_t sub_2238220E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (1037613739 * ((-1295048272 - (&a12 | 0xB2CF21B0) + (&a12 | 0x4D30DE4F)) ^ 0x9C32F330)) ^ 0x86F54BA0;
  v14 = (*(v13 + 32816))(&a12);
  return (*(v13 + 8 * ((291 * (a12 == 1423875590)) ^ 0x23D)))(v14);
}

uint64_t sub_22382218C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v64 = (*(a4 + 8 * (v62 + 2820)))();
  LODWORD(STACK[0x4B8]) = v63;
  return (*(a62 + 8 * (((((v62 - 1282) | 0x440) ^ ((v62 - 202) | 8) ^ 0xDE3) * (v63 == 1423875590)) ^ v62)))(v64);
}

uint64_t sub_22382227C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{
  *v13 = 0;
  v14 = v11 + a1;
  a11 = (v11 + 1138685256) ^ (1037613739 * ((2 * (&a10 & 0x53CAE4F8) - &a10 - 1405805824) ^ 0x7D37367F));
  v15 = (*(v12 + 8 * (v11 + a1 + 648)))(&a10);
  return (*(v12 + 8 * ((137 * (a10 == v14 + 1423872136)) ^ v14)))(v15);
}

uint64_t sub_22382230C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *v5 = a1;
  *a4 = v11;
  v7 = (v4 ^ 0x26) - 179;
  v12 = (v4 ^ 0x26) - 143681137 * (((&v12 | 0x2451E728) - (&v12 & 0x2451E728)) ^ 0xC2F94B38) - 1450;
  v13 = v9;
  (*(v6 + 8 * (v4 ^ 0x189E)))(&v12);
  v13 = v10;
  v12 = v7 - 143681137 * ((2 * (&v12 & 0xC3B2840) - &v12 - 205203524) ^ 0x156C7BAC) - 1271;
  (*(v6 + 8 * (v7 + 2059)))(&v12);
  return 0;
}

uint64_t sub_2238224B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char *a17, int a18)
{
  a16 = (50899313 * ((&a16 - 1035035448 - 2 * (&a16 & 0xC24E9CC8)) ^ 0xE885B6B2)) ^ 0xF11;
  a17 = &a11;
  v20 = (*(v19 + 32872))(&a16);
  return (*(v19 + 8 * ((2175 * (a18 == v18)) ^ 0x439u)))(v20);
}

uint64_t sub_22382255C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * (((v4 - 378279791) & 0xDAA45BFF) - 2659)) ^ (v2 + v4 + 1604))))();
}

uint64_t sub_22382263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, unsigned int a60, uint64_t a61, uint64_t a62)
{
  (*(v65 + 8 * (v62 ^ 0x1446)))();
  LODWORD(STACK[0x298]) = v63;
  return (*(a62 + 8 * ((15 * ((v64 ^ (v62 - 1)) & 1)) ^ (v62 - 738))))(a60);
}

uint64_t sub_2238226B0()
{
  v2 = (v1 ^ 0xB7FFCB77) + 2020376512 + ((2 * v1) & 0x2EE);
  v3 = (v2 ^ 0x4A5) & (2 * (v2 & 0x4C9)) ^ v2 & 0x4C9;
  v4 = ((2 * (v2 ^ 0x70495EB4)) ^ 0x7FB5D4FA) & (v2 ^ 0x70495EB4) ^ (2 * (v2 ^ 0x70495EB4)) & 0xBFDAEA7C;
  v5 = (v4 ^ 0xBE90C869) & (4 * v3) ^ v3;
  v6 = ((4 * (v4 ^ 0x804A2A05)) ^ 0xFF6BA9F4) & (v4 ^ 0x804A2A05) ^ (4 * (v4 ^ 0x804A2A05)) & 0xBFDAEA7C;
  v7 = (v6 ^ 0xBF4AA879) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x904209)) ^ 0xFDAEA7D0) & (v6 ^ 0x904209) ^ (16 * (v6 ^ 0x904209)) & 0xBFDAEA70;
  return (*(v0 + 8 * ((429 * ((v2 ^ (2 * ((((v8 ^ 0x250482D) << 8) & 0x3FDAE800 ^ 0x1ACA827D ^ (((v8 ^ 0x250482D) << 8) ^ 0xDAEA7D00) & (v8 ^ 0x250482D)) & (((v8 ^ 0xBD8AA22D) & (v7 << 8) ^ v7) << 16) ^ (v8 ^ 0xBD8AA22D) & (v7 << 8) ^ v7))) == -812403511)) ^ 0xAEFu)))();
}

uint64_t sub_223822864@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1361651671 * ((353659347 - (&v5 ^ 0xC4B7E629 | 0x151469D3) + (&v5 ^ 0xC4B7E629 | 0xEAEB962C)) ^ 0x6537BC7B) - 501;
  v5 = v1;
  v7 = v2;
  v8 = v2;
  return (*(a1 + 8 * (v3 ^ 0x1746)))(&v5);
}

uint64_t sub_223822980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, char *a22, int a23)
{
  a21 = (v23 + 3014) ^ (50899313 * ((&a21 & 0xFA12779 | ~(&a21 | 0xFA12779)) ^ 0xDA95F2FC));
  a22 = &a16;
  v25 = (*(v24 + 8 * (v23 ^ 0x1346)))(&a21);
  return (*(v24 + 8 * (((a23 == ((v23 + 1542960662) & 0xE7FF7F9F) + 283600133) * ((v23 + 208) ^ 0xE28)) ^ v23)))(v25);
}

uint64_t sub_223822A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = (a7 - 914) | 8;
  if (LOBYTE(STACK[0x26B]))
  {
    v66 = 6;
  }

  else
  {
    v66 = 8;
  }

  if (((v65 - 142) & a16) != 0)
  {
    v67 = STACK[0x2D4];
  }

  else
  {
    v67 = v66;
  }

  LODWORD(STACK[0x350]) = v67;
  v68 = 1037613739 * ((((v63 - 192) | 0xEC8909DB) - (v63 - 192) + ((v63 - 192) & 0x1376F620)) ^ 0x3D8B24A4);
  *(v63 - 168) = a23;
  *(v63 - 152) = (a21 + 1829785634) ^ v68;
  *(v63 - 192) = &STACK[0x2F8];
  *(v63 - 176) = &STACK[0x4F0];
  *(v63 - 144) = &STACK[0x500];
  *(v63 - 136) = &STACK[0x284];
  *(v63 - 160) = v68 + v65 + 2567;
  *(v63 - 156) = v68 + v67 - (((4 * (v65 ^ 0x1D8)) ^ 0x24F03D9A) & (2 * v67)) + 309861601;
  v69 = (*(v64 + 8 * (v65 ^ 0x10F2)))(v63 - 192);
  v70 = *(v63 - 184);
  LODWORD(STACK[0x250]) = v70;
  return (*(a63 + 8 * (((v70 == 1423875590) * ((139 * (v65 ^ 0xC6)) ^ 0xC7B)) ^ v65)))(v69);
}

uint64_t sub_223822BDC(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

uint64_t sub_223822C80(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *(v8 - 220 + v3 + 72);
  v10 = ((2 * v3) & 0xFFBAFFD0) + ((v5 - a3 - 183021634) ^ v3) + v4;
  *(a1 + v10) = (HIBYTE(v9) ^ 0xDF) - ((2 * (HIBYTE(v9) ^ 0xDF)) & 0xA0) + 80;
  *(a1 + v10 + 1) = (BYTE2(v9) ^ 0xFC) - ((2 * (BYTE2(v9) ^ 0xFC)) & 0xA0) + 80;
  *(a1 + v10 + 2) = (BYTE1(v9) ^ 0x36) - 2 * ((BYTE1(v9) ^ 0x36) & 0x58 ^ BYTE1(v9) & 8) + 80;
  *(a1 + v10 + 3) = v9 ^ 0x8E;
  return (*(v7 + 8 * (((v3 + 4 < *(v8 - 128)) * v6) ^ v5)))();
}

void sub_223822D4C(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *a1 + 1564307779 * ((-1427679021 - (a1 | 0xAAE758D3) + (a1 | 0x5518A72C)) ^ 0xC2156B3F);
  v2 = *(a1 + 8);
  v4[0] = v1 + 843532609 * ((2 * (v4 & 0x61A5B998) - v4 + 509232736) ^ 0x421712E5) - 1380;
  v5 = v2;
  v3 = qword_2836EB200[v1 ^ 0x95C];
  (*(v3 + 8 * (v1 + 1828)))(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_223822EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, unsigned int a17, int a18, uint64_t a19)
{
  a18 = 2380 - 1785193651 * ((((2 * v23) | 0x96628548) - v23 + 885964124) ^ 0x3D10E688);
  a15 = a14;
  a16 = (v21 - 0x303DAEBBFB4CB2 - ((2 * v21) & 0xFF9F84A28809669CLL)) ^ (1785193651 * ((((2 * v23) | 0xEFE13A9396628548) - v23 - 0x77F09D49CB3142A4) ^ 0x286820713D10E688));
  (*(v22 + 33104))(&a15);
  v24 = 742307843 * (((v23 ^ 0x58916BA) + 1467042875 - 2 * ((v23 ^ 0x58916BA) & 0x57714C3B)) ^ 0x4CDAD7D4);
  a17 = v24 ^ ((v20 ^ 0x4FFFCF67) - 135593985 + ((2 * v20) & 0x9FFF9ECE));
  LODWORD(a15) = v24 ^ 0x510;
  a16 = v19;
  a19 = a14;
  v25 = (*(v22 + 32976))(&a15);
  return (*(v22 + 8 * ((3232 * (HIDWORD(a15) == 1423875590)) ^ 0x38Au)))(v25);
}

void TsbHVdUOnzCHizuzrAdwYFpb()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D580) ^ 0x74)) ^ byte_2238FA960[byte_223907D60[(-33 * ((qword_27D09D558 + dword_27D09D580) ^ 0x74))] ^ 0x61]) + 46];
  v1 = *(v0 - 4);
  v2 = qword_2836EB200[((-33 * ((qword_27D09D558 - v1) ^ 0x74)) ^ byte_223907B60[byte_223902660[(-33 * ((qword_27D09D558 - v1) ^ 0x74))] ^ 0xF0]) + 39];
  v3 = 1321670111 * (v1 ^ &v5 ^ 0x448BD34F94FDFB74 ^ *v2);
  *(v0 - 4) = v3;
  *v2 = v3;
  v6[1] = (1037613739 * ((2 * (v6 & 0x5B882460) - v6 - 1535648871) ^ 0x7575F6E6)) ^ 0x86F54BA0;
  LOBYTE(v2) = -33 * ((*v2 - *(v0 - 4)) ^ 0x74);
  v4 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D580) ^ 0x74)) ^ byte_2238FD9F0[byte_2238FA860[(-33 * ((qword_27D09D558 + dword_27D09D580) ^ 0x74))] ^ 0xFE]) + 3];
  (*(v4 + 8 * ((*(off_2836EB888 + (*(off_2836EB588 + v2 - 4) ^ 0xBBu) - 12) ^ v2) + 4002)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2238232FC(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5)
{
  *a5 = a1;
  *a4 = v10;
  v8 = v5 + 2154;
  v14 = v11;
  v13 = v5 - 436 - ((2 * (&v13 & 0x6BB714C8) - &v13 - 1807160521) ^ 0x72E04727) * v6 - 90;
  (*(v7 + 8 * ((v5 - 436) ^ 0x1368)))(&v13);
  v13 = v8 - ((&v13 - 1169883534 - 2 * (&v13 & 0xBA44FE72)) ^ 0x5CEC5262) * v6 - 2680;
  v14 = v12;
  (*(v7 + 8 * (v8 + 650)))(&v13);
  return 0;
}

uint64_t sub_223823414()
{
  v8 = v6;
  v7 = v0 - (((&v7 | 0xDDC402FF) - &v7 + (&v7 & 0x223BFD00)) ^ 0x3B6CAEEF) * v2 - 1950;
  (*(v1 + 8 * (v0 + 1380)))(&v7);
  v8 = v5;
  v7 = (v0 ^ 0xA5E) - ((((2 * &v7) | 0x4F3F5980) - &v7 - 664775872) ^ 0xC13700D0) * v2 + 524;
  (*(v1 + 8 * (v0 ^ 0x1AAC)))(&v7);
  return (v3 - 1423875590);
}

uint64_t sub_223823510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v45 = 4 * (v44 - v41);
  v46 = -307157381 * ((*(*a32 + (*a34 & 0xFFFFFFFFACE93F88)) ^ (a38 + v45)) & 0x7FFFFFFF);
  v47 = v46 ^ HIWORD(v46);
  v48 = v47 * ((v42 ^ 0x365A9B4F) - 307159622);
  *(a39 + v45) ^= *(a38 + v45) ^ (((v44 | ~(v40 - 620)) & (v40 - 620 - v44) | v44 & ~(v40 - 620)) >> 31) ^ *(qword_2836EB200[v42 ^ (v42 + 22)] + 4 * HIBYTE(v48) - 12) ^ *(qword_2836EB200[v40 - 610] + 4 * (HIBYTE(v48) + 1)) ^ *(qword_2836EB200[v42 ^ 0x365A93E6] + 4 * (HIBYTE(v48) + 5) - 4) ^ (645595136 * v47) ^ v48 ^ (-2050678187 * HIBYTE(v48));
  return (*(a40 + 8 * (((((((v42 ^ 0x365A9B4F) - 27267331) & 0x37FA9BCF) + 857) ^ (((v42 ^ 0x365A9B4F) + 843184201) | 0x4189284)) * (v43 == 1)) ^ v42 ^ 0x365A9B4Fu)))();
}

uint64_t sub_223823674()
{
  v8 = v5;
  v7 = v3 - ((&v7 - 32878169 - 2 * (&v7 & 0xFE0A51A7)) ^ 0x18A2FDB7) * v1 - 1433;
  (*(v0 + 8 * (v3 ^ 0x1897u)))(&v7);
  v7 = v3 - 1161 - ((2 * (&v7 & 0x33965B70) - &v7 - 865491830) ^ 0x2AC1089A) * v1 - 272;
  v8 = v6;
  (*(v0 + 8 * ((v3 - 1161) ^ 0x141E)))(&v7);
  return (v2 - 1423875590);
}

uint64_t sub_223823770(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

void uhO2GULXwfgKwPcp4YR2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v7 = !v4 && *a3 == 0 && a2 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_223823810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, _BYTE *a14, uint64_t a15, int a16, char a17, __int16 a18, char a19, int a20, char a21, uint64_t a22, char *a23, char *a24, char *a25, _BYTE *a26, char *a27)
{
  LODWORD(a25) = v28 + ((&a23 & 0x2B53E334 | ~(&a23 | 0x2B53E334)) ^ 0x5AE31B4) * v31 + 554;
  a26 = a14;
  a27 = &a17;
  a24 = &a19;
  (*(v29 + 8 * (v28 ^ 0x19CB)))(&a23);
  a25 = a14;
  a23 = &a21;
  LODWORD(a24) = (v28 - 106) ^ (((2 * (&a23 & 0x642008C0) - &a23 - 1679820999) ^ 0x7D775B29) * v27);
  (*(v29 + 8 * (v28 + 1623)))(&a23);
  a23 = a14;
  a25 = &a13;
  LODWORD(a26) = (v28 + 394) ^ (843532609 * ((2003853019 - (&a23 | 0x77705EDB) + (&a23 | 0x888FA124)) ^ 0xD4C2F5A1));
  (*(v29 + 8 * (v28 ^ 0x628)))(&a23);
  a24 = a14;
  LODWORD(a23) = (v28 + 88) ^ (1504884919 * ((&a23 & 0x8170962A | ~(&a23 | 0x8170962A)) ^ 0x854CDECE));
  v32 = (*(v29 + 8 * (v28 | 0x633)))(&a23);
  return (*(v29 + 8 * (((HIDWORD(a23) != ((v28 + 824) ^ (v30 - 2828))) * ((v28 - 1481) ^ 0x3EC)) ^ v28)))(v32);
}

uint64_t sub_223823BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = v13 - 1945 + v12 + 815966840 < a12 - 998556027;
  if ((a12 - 998556027) < 0x30A2AA7E != v12 > 0xCF5D5581)
  {
    v15 = (a12 - 998556027) < 0x30A2AA7E;
  }

  return (*(v14 + 8 * ((63 * !v15) ^ v13)))();
}

uint64_t sub_223823C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30)
{
  v33 = v30[1];
  v34 = v30[398] ^ ((v30[(223 * (a30 ^ 0x2D4u)) ^ 0x7D5] & 0x7FFFFFFE | v33 & 0x80000000) >> 1) ^ *(v32 + 4 * (v30[(223 * (a30 ^ 0x2D4u)) ^ 0x7D5] & 1));
  *v30 = v30[397] ^ ((v33 & 0x7FFFFFFE | *v30 & 0x80000000) >> 1) ^ *(v32 + 4 * (v33 & 1));
  v30[1] = v34;
  return (*(v31 + 8 * (a30 - 442)))();
}

uint64_t sub_223823C5C()
{
  v4 = 1564307779 * ((v3 - 144) ^ 0x970DCC13);
  *(v3 - 144) = v9;
  *(v3 - 136) = v4 + v1 + 1694;
  *(v3 - 120) = (v7 + 1209341921 + ((v1 + 1660392959) & 0x9D086EFF)) ^ v4;
  *(v3 - 128) = v2;
  (*(v0 + 8 * (v1 + 3280)))(v3 - 144);
  *v6 = v7;
  result = v8;
  *(v8 + 8) = 1423875590;
  return result;
}

uint64_t sub_223823E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v10 = v6 - 2409;
  if (v7)
  {
    v11 = a5;
  }

  else
  {
    v11 = a6 + 5;
  }

  LODWORD(STACK[0x280]) = v8;
  return (*(v9 + 8 * (((v11 == a5) * (2 * ((v10 - 636) ^ 0x2EB) + 388)) ^ (v10 - 636))))();
}

uint64_t sub_223823E5C(_DWORD *a1)
{
  v1 = 1785193651 * (((a1 ^ 0x78389F31 | 0x2F9E7F6F) - ((a1 ^ 0x78389F31) & 0x2F9E7F6F)) ^ 0xA1874472);
  v2 = a1[2] - v1;
  v3 = a1[3] + v1;
  v4 = v3 + *(*a1 + 68) - 561411242;
  *(*a1 + 68) = v4;
  v3 -= 1274261966;
  v5 = v3 < 0xD582C2DC;
  v6 = v4 - 712850724 < v3;
  if (v5 != v4 > 0x2A7D3D23)
  {
    v6 = v5;
  }

  return (*(qword_2836EB200[v2 ^ 0x1E6] + 8 * ((1851 * v6) ^ v2)))();
}

void sub_223823F34(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24) ^ (1361651671 * ((a1 - 661917999 - 2 * (a1 & 0xD88BEED1)) ^ 0x93E022AF));
  v2 = *(a1 + 32);
  v5 = 0;
  v8 = v1 - 1224080849 - 1785193651 * ((2 * (v6 & 0x2BA2F760) - v6 - 732100455) ^ 0x227CACB5);
  v7 = &v5;
  v3 = qword_2836EB200[v1 - 3589];
  (*(v3 + 8 * (v1 + 448)))(v6);
  v4 = 0;
  v8 = v1 - 1224080849 - 1785193651 * ((2 * (v6 & 0x208C5F0) - v6 + 2113354250) ^ 0x8BD69E26);
  v7 = &v4;
  (*(v3 + 8 * (v1 + 448)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_223824124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  v25 = (v22 + v23) | 0x303;
  v26 = v22 + v23 + 771;
  a22 = (v22 + 1123947167) ^ (1037613739 * (&a21 ^ 0xD1022D7F));
  v27 = (*(v24 + 8 * (v22 ^ (v22 - 4090))))(&a21);
  return (*(v24 + 8 * ((1854 * (a21 == (v25 ^ 0x54DE9D4D))) ^ v26)))(v27);
}

uint64_t sub_2238241B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20, uint64_t a21)
{
  a19 = (v21 + 1502) ^ ((&a19 ^ 0xFBC3B71B) * v23);
  a21 = a18;
  v24 = (*(v22 + 8 * (v21 ^ 0xBC9)))(&a19);
  return (*(v22 + 8 * (((a20 == 1423875590) * (829 * (v21 ^ 0x43C) + ((v21 + 1306987391) & 0xB218F4FE) + 506)) ^ v21)))(v24);
}

void sub_22382424C(uint64_t a1)
{
  v1 = 1361651671 * ((-2 - ((a1 | 0x4B1A21BC) + (~a1 | 0xB4E5DE43))) ^ 0xFF8E123D);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_223824360@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 ^ 0xCCC;
  v4 = *(a1 + 16) - 839094671;
  v5 = *(a1 + 12) + 1998491684;
  v6 = v4 < 0xD94376FE;
  v7 = v4 > v5;
  if (v6 != v5 < 0xD94376FE)
  {
    v7 = v6;
  }

  return (*(v1 + 8 * ((124 * !v7) ^ v3)))();
}

void PhUojZmspd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    v11 = a11 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  __asm { BRAA            X9, X17 }
}

_DWORD *sub_223824528()
{
  v5 = 1785193651 * ((v4 - 1336743876 - 2 * ((v4 - 144) & 0xB052E8CC)) ^ 0x46734CE0);
  *(v4 - 136) = v7;
  *(v4 - 120) = v2;
  *(v4 - 144) = (v3 - 932) ^ v5;
  *(v4 - 140) = (v1 - 555477305 + (v3 ^ 0xA6C)) ^ v5;
  (*(v0 + 8 * (v3 + 942)))(v4 - 144);
  result = v10;
  *v9 = v8;
  *v10 = 1423875590;
  return result;
}

uint64_t sub_223824758@<X0>(char a1@<W0>, int8x16_t *a2@<X4>, uint64_t a3@<X8>, int8x16_t a4@<Q4>, int8x16_t a5@<Q5>, uint64_t a6)
{
  v8 = (a6 + a3);
  v9 = vaddq_s8(vsubq_s8(a2[1], vandq_s8(vaddq_s8(a2[1], a2[1]), a4)), a5);
  v8[-1] = vaddq_s8(vsubq_s8(*a2, vandq_s8(vaddq_s8(*a2, *a2), a4)), a5);
  *v8 = v9;
  return (*(v7 + 8 * ((((a1 & 0x60) == 32) * (v6 + 2915)) ^ (v6 + 1849))))();
}

uint64_t sub_2238247B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, int a19, unsigned int a20, char *a21)
{
  v24 = 675097751 * (((&a16 | 0xEEAF9305) + (~&a16 | 0x11506CFA)) ^ 0xADEFB692);
  a16 = a15;
  a20 = v24 ^ 0xBEB0E746;
  a21 = &a14;
  a17 = (v23 + 1421511604) ^ v24;
  a18 = v24 ^ 0x95E7342E;
  v25 = (*(v21 + 8 * (v23 ^ 0x1391)))(&a16);
  return (*(v21 + 8 * ((124 * ((((v23 ^ 0xB3) - 1) ^ (a19 == v22)) & 1)) ^ v23)))(v25);
}

uint64_t sub_2238249A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v69 = (2 * v65) ^ 0x134;
  *a32 = 64;
  *(v62 + 252) = 528399629;
  *(v62 + 256) = v62 + 264;
  v83 = v62 + 520;
  *(v62 + 520) = 0x1F7EBD0D00000040;
  *(v62 + 528) = v62 + 536;
  *(v62 + 792) = 0x1F7EBD0D00000040;
  *(v62 + 800) = v62 + 808;
  v84 = v62 + 792;
  v85 = v62 + 1064;
  *(v62 + 1064) = 0x1F7EBD0D00000040;
  *(v62 + 1072) = v62 + 1080;
  v86 = v62 + 1336;
  *(v62 + 1336) = 0x1F7EBD0D00000040;
  *(v62 + 1344) = v62 + 1352;
  v70 = STACK[0x348] + 4;
  v71 = 1037613739 * ((v67 + 196367223 - 2 * ((v67 - 192) & 0xBB45437)) ^ 0xDAB67948);
  v87 = v65 + 3199;
  *(v67 - 176) = (v65 + 3199) ^ v71;
  *(v67 - 172) = v71 + 1020027124 + (((v66 ^ 0xAD410AB3) + 1388246349) ^ ((v66 ^ 0x334E3F53) - 860766035) ^ (((2 * v65) ^ 0x96792C9D) + (v66 ^ 0x6986D60F)));
  *(v67 - 168) = a32;
  *(v67 - 184) = v70;
  (*(v68 + 8 * (v65 + 3465)))(v67 - 192);
  v82 = v66 ^ v64;
  v72 = v70 + v82;
  v73 = 1037613739 * ((578569313 - ((v67 - 192) | 0x227C4461) + ((v67 - 192) | 0xDD83BB9E)) ^ 0xC8196E1);
  *(v67 - 168) = v83;
  *(v67 - 176) = (v65 + 3199) ^ v73;
  *(v67 - 172) = v73 + 1020027124 + (((v66 ^ 0x6D838D6F) - 1837337967) ^ ((v66 ^ 0xB10BD350) + 1324625072) ^ ((v66 ^ 0x2B01BDD0) - 721534416));
  *(v67 - 184) = v72;
  (*(a62 + 8 * (v65 + 3465)))(v67 - 192);
  v74 = v72 + v82;
  v75 = 1037613739 * ((((v67 - 192) | 0x661AE3C0) - (v67 - 192) + ((v67 - 192) & 0x99E51C38)) ^ 0xB718CEBF);
  *(v67 - 168) = v84;
  *(v67 - 184) = v74;
  *(v67 - 176) = (v65 + 3199) ^ v75;
  *(v67 - 172) = v75 + 1020027124 + (((v66 ^ 0x37C2D106) - 935514374) ^ ((v66 ^ 0x926A2470) + 1838537616) ^ ((v66 ^ 0x52211699) - 1377900185));
  v76 = v65 ^ 0x1289;
  (*(a62 + 8 * v76))(v67 - 192);
  v77 = v74 + v82;
  v78 = 1037613739 * ((2 * ((v67 - 192) & 0x61F90328) - (v67 - 192) + 503774418) ^ 0xCF04D1AD);
  *(v67 - 176) = v87 ^ v78;
  *(v67 - 172) = v78 + 1020027124 + (((v66 ^ 0xA2807F89) + 1568637047) ^ ((v66 ^ 0xA633CFBB) + 1506553925) ^ ((v66 ^ 0xF33A53DD) + 214281251));
  *(v67 - 184) = v77;
  *(v67 - 168) = v85;
  (*(a62 + 8 * v76))(v67 - 192);
  v79 = 1037613739 * ((2 * ((v67 - 192) & 0x3609DA50) - (v67 - 192) + 1240868269) ^ 0x98F408D2);
  *(v67 - 168) = v86;
  *(v67 - 184) = v77 + v82;
  *(v67 - 176) = v87 ^ v79;
  *(v67 - 172) = v79 + 1020027124 + (((v66 ^ 0xB1794F3D) + 1317449923) ^ ((v66 ^ 0x9CE1EA92) + 1662915950) ^ ((v66 ^ 0xDA114640) + 636402112));
  (*(a62 + 8 * v76))(v67 - 192);
  v80 = STACK[0x348];
  STACK[0x328] = (v63 - 801774386);
  return (*(a62 + 8 * ((52 * (v63 != 801774386)) ^ (v69 - 511))))(v80);
}

uint64_t sub_223824F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, unint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, int a16, unsigned int a17, char *a18)
{
  a15 = a12;
  LODWORD(a14) = (1564307779 * (((v22 | 0x25730C3) - (v22 & 0x25730C3)) ^ 0x955AFCD0)) ^ 0x963;
  a17 = -1564307779 * (((v22 | 0x25730C3) - (v22 & 0x25730C3)) ^ 0x955AFCD0) + 1264667083 * v19 + 1046635743;
  (*(v20 + 32944))(&a14);
  a17 = 2380 - 1785193651 * ((((2 * v22) | 0xAA122118) - v22 + 720826228) ^ 0x2328B4A0);
  a14 = a12;
  a15 = (v18 - ((2 * v18) & 0xFF9F84A28809669CLL) - 0x303DAEBBFB4CB2) ^ (1785193651 * ((((2 * v22) | 0x779A522BAA122118) - v22 - 0x3BCD2915D509108CLL) ^ 0x6455942D2328B4A0));
  (*(v20 + 33104))(&a14);
  v23 = 675097751 * (((v22 | 0x6CC9A4E5) + (~v22 | 0x93365B1A)) ^ 0x2F898172);
  a14 = a12;
  a18 = &a11;
  a17 = v23 ^ 0xBEB0E745;
  LODWORD(a15) = v23 ^ 0x54BA8F41;
  HIDWORD(a15) = v23 ^ 0x18C5292F;
  v24 = (*(v20 + 32992))(&a14);
  return (*(v20 + 8 * ((1948 * (a16 == v21)) ^ 0x2B8u)))(v24);
}

uint64_t sub_22382523C()
{
  *(v3 + 8) = &v7;
  *(v4 - 136) = (v1 + 1212455128) ^ (1785193651 * ((404708363 - ((v4 - 136) | 0x181F5C0B) + ((v4 - 136) | 0xE7E0A3F4)) ^ 0x11C107D8));
  (*(v2 + 8 * ((v1 + 1645419244) ^ v0)))(v4 - 136);
  return (v6 ^ 0x7DFEDF9F) - 689979801 + ((v1 - 67256954) & (2 * v6)) - 1423875590;
}

uint64_t sub_223825338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v11 = v9 + 1955097590 < (a6 - 1098932895);
  if (v9 + 1955097590 < (v8 ^ 0x240u) - 1246 + a8 != a6 - 1098932895 < (a8 + 2298))
  {
    v11 = a6 - 1098932895 < (a8 + 2298);
  }

  return (*(v10 + 8 * ((83 * v11) ^ v8)))();
}

uint64_t sub_223825400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, unsigned int a13, char *a14, int a15)
{
  a13 = (50899313 * (((&a13 | 0x6DC847F6) - (&a13 & 0x6DC847F6)) ^ 0x47036D8C)) ^ 0xF11;
  a14 = &a10;
  v17 = (*(v15 + 32872))(&a13);
  return (*(v15 + 8 * ((592 * (a15 == ((v16 - 224) ^ 0x320))) ^ 0x85Eu)))(v17);
}

uint64_t sub_22382588C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = v17 - 3290;
  v22 = (v18 ^ v16) < 65 * (v20 ^ 0x1A2u) - 3437 || a16 - a1 < ((4 * v20) ^ 0x67CuLL);
  return (*(v19 + 8 * ((53 * v22) ^ v20)))();
}

uint64_t sub_2238258EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  *a12 = a14;
  if (a9)
  {
    v21 = a19 == (((v19 ^ 0x88E) + 507841215) & 0xE1BAE7E1) - 161;
  }

  else
  {
    v21 = 1;
  }

  v23 = v21 || a10 == 0;
  return (*(v20 + 8 * ((v23 * (((v19 ^ 0x88E) - 453834579) & 0x1B0CEFDA ^ 0x60A)) | v19 ^ 0x88E)))();
}

uint64_t sub_2238259C0@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = 2 * (v3 ^ 0x3E1);
  v6 = (v5 + 330 + a1 + ((v5 - 2583) ^ 0x837494F7)) & 0xFFFFF000;
  v7 = (*(v4 + 8 * (v5 + 951)))(**(v2 + 8 * (v5 - 3008)), va, (((v6 ^ 0x205418FE) - 954488146) ^ ((v6 ^ 0x5E0ABAF0) - 1186658140) ^ ((v6 ^ 0x7E5EA20E) - 1726934946)) + 414207404, 1) != 0;
  return (*(v4 + 8 * ((218 * v7) ^ v5)))();
}

void sub_223825A8C()
{
  v9 = *(v6 + 8);
  v10 = (*(v9 + 4 * (v8 - 1)) ^ v1) >> v2;
  *(v9 + 4 * v4) = v10 + v1 - (v3 & (2 * v10));
  if (*(*(v6 + 8) + 4 * v4) == v1)
  {
    v11 = -536953555;
  }

  else
  {
    v11 = -536953554;
  }

  v12 = v11 + v0;
  if ((v5 + v7 + *(v6 + 4) - 1571) >= 0x7FFFFFFF)
  {
    v12 = 1056799258 - v12;
  }

  *(v6 + 4) = v12;
}

uint64_t sub_223825B30@<X0>(int a1@<W8>)
{
  v11 = v3 - 1;
  v13 = ((*v2 - (*v1 ^ v8)) ^ v4) + (v9 & (2 * (*v2 - (*v1 ^ v8)))) + v5 != v6 || v11 == 0;
  return (*(v10 + 8 * ((v13 * v7) ^ a1)))();
}

uint64_t sub_223825BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, _BYTE *a15, char *a16, char *a17, _BYTE *a18, uint64_t a19)
{
  LODWORD(a17) = (v20 | 0x88) + 1037613739 * (((&a15 | 0x9575CC2) - &a15 + (&a15 & 0xF6A8A338)) ^ 0xD85571BD) + 2835;
  a18 = a9;
  a19 = v19;
  a16 = &a14;
  (*(v21 + 8 * ((v20 | 0x88) ^ 0x10D4)))(&a15);
  LODWORD(a18) = ((v20 | 0x88) + 2675) ^ (843532609 * ((374023074 - (&a15 | 0x164B23A2) + (&a15 | 0xE9B4DC5D)) ^ 0xB5F988D8));
  a15 = a9;
  a17 = &a12;
  (*(v21 + 8 * ((v20 | 0x88) ^ 0xF37)))(&a15);
  LODWORD(a15) = ((v20 | 0x88) + 2369) ^ (1504884919 * ((2 * (&a15 & 0x44526DD8) - &a15 - 1146252768) ^ 0x406E253B));
  a16 = a9;
  v22 = (*(v21 + 8 * ((v20 | 0x88) + 3868)))(&a15);
  return (*(v21 + 8 * ((2107 * (HIDWORD(a15) == (((v20 | 0x88) + 47652356) & 0xFD28EB7F) + 1423872935)) ^ (v20 | 0x88))))(v22);
}

uint64_t sub_223825E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  a15 = (1037613739 * ((-74648657 - (&a14 | 0xFB8CF3AF) + (&a14 | 0x4730C50)) ^ 0xD571212F)) ^ 0x86F54BA0;
  v16 = (*(v15 + 32816))(&a14);
  return (*(v15 + 8 * ((19 * (a14 != 1423875590)) ^ 0x2E2u)))(v16);
}

uint64_t sub_223825ED8(uint64_t a1, int a2)
{
  v5 = (v4 ^ 0x17FA4191) + v3;
  v6 = v5 < -1216804303;
  v7 = a2 + 402279716 < v5;
  if (a2 + 402279716 < -1216804303 != v6)
  {
    v7 = v6;
  }

  return (*(v2 + 8 * ((!v7 * (v4 - 3141)) ^ v4)))();
}

uint64_t sub_223825F48@<X0>(uint64_t a1@<X0>, int a2@<W4>, int a3@<W5>, uint64_t a4@<X8>)
{
  v7 = (v4 ^ (a3 + 1297) ^ 0xFFFFFFFFFFFFF6D3) + v5;
  *(a1 + v7) = *(a4 + v7);
  return (*(v6 + 8 * ((127 * (v7 != 0)) ^ (a2 + v4 - 166))))();
}

void sub_223825F88()
{
  v5 = (v0 + 1542442510);
  v6 = *v11;
  if (((v5 + v3 + (v0 - 1840619550)) & *v11) == 0)
  {
    v7 = *(v2 + 8 * (v0 ^ 0xA410339B));
    v9 = *(v7 - 4);
    v8 = (v7 - 4);
    if (!v9)
    {
      *v8 = v6;
      **(v2 + 8 * (v5 ^ 0x134)) = 255;
      *v6 |= ~v6[*v6 & 0x3ELL] << 16;
      v6[4] |= ~v6[v6[4] & (v5 ^ (v1 - 346) ^ (v1 + 34))] << (((v5 + 80) | 0x84) ^ (v1 + 16));
      v6[8] |= ~v6[v6[8] & 0x3ELL] << 16;
      v6[12] |= ~v6[v6[12] & 0x3ELL] << 16;
      v6[16] |= ~v6[v6[16] & 0x3ELL] << 16;
      v6[20] |= ~v6[v6[20] & 0x3ELL] << 16;
      v6[24] |= ~v6[v6[24] & 0x3ELL] << 16;
      v6[28] |= ~v6[v6[28] & 0x3ELL] << 16;
      v6[32] |= ~v6[v6[32] & 0x3ELL] << 16;
      v6[36] |= ~v6[v6[36] & 0x3ELL] << 16;
      v6[40] |= ~v6[v6[40] & 0x3ELL] << 16;
      v6[44] |= ~v6[v6[44] & 0x3ELL] << 16;
      v6[48] |= ~v6[v6[48] & 0x3ELL] << 16;
      v6[52] |= ~v6[v6[52] & 0x3ELL] << 16;
      v6[56] |= ~v6[v6[56] & 0x3ELL] << 16;
      v6[60] |= ~v6[v6[60] & 0x3ELL] << 16;
      *(v4 - 152) = *(v2 + 8 * (v5 ^ 0x1F3)) - 4;
      *(v4 - 144) = v5 + 1894 - 1785193651 * ((((v4 - 152) | 0x8FF2CBDD) + (~(v4 - 152) | 0x700D3422)) ^ 0x79D36FF0);
      (*(v12 + 8 * (v5 + 3668)))(v4 - 152);
      *(v4 - 152) = *(v2 + 8 * (v5 ^ 0x135)) - 4;
      *(v4 - 144) = v5 + 1894 - 1785193651 * ((((v4 - 152) | 0x4BD6C736) - (v4 - 152) + ((v4 - 152) & 0xB42938C8)) ^ 0xBDF7631A);
      (*(v12 + 8 * (v5 + 3668)))(v4 - 152);
      __asm { BRAA            X8, X17 }
    }
  }

  *v10 = 1423833541;
}

uint64_t sub_223826370@<X0>(void *a1@<X0>, int a2@<W8>)
{
  if (a1[4])
  {
    v3 = (a1[6] | a1[2]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return (*(v2 + 8 * ((v4 * (71 * (((a2 + 1043) | 3) ^ 0xB28) + 197 * (((a2 + 1043) | 3) ^ 0xB0A) - 4785)) ^ ((a2 + 1043) | 3))))();
}

uint64_t sub_223826850(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_2238268D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, unsigned int a17, char *a18, int a19)
{
  a18 = &a15;
  a17 = (50899313 * ((-2079813797 - (&a17 | 0x84088F5B) + (&a17 | 0x7BF770A4)) ^ 0x513C5ADE)) ^ 0xF11;
  v20 = (*(v19 + 32872))(&a17);
  return (*(v19 + 8 * ((233 * (((a19 == 1423875590) ^ 0x5B) & 1)) ^ 0x25Au)))(v20);
}

uint64_t sub_223826990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61)
{
  v63 = v62[1];
  v64 = v62[2];
  v65 = v62[398];
  v66 = *(v61 + 4 * (v64 & 1));
  *v62 = v62[397] ^ ((v63 & 0x7FFFFFFE | *v62 & 0x80000000) >> 1) ^ *(v61 + 4 * (v63 & 1));
  v62[1] = v65 ^ ((v64 & 0x7FFFFFFE | v63 & ((a61 + 1543165826) & 0xA4052F7F ^ 0x80000B5A)) >> 1) ^ v66;
  return (*(a3 + 8 * (a61 + 1082)))();
}

uint64_t sub_22382699C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v59 = (((v57 ^ 0xF4D6E639) + 187242951) ^ ((v57 ^ 0x4C7AE275) - 1283121781) ^ ((v57 ^ 0x4F25E7A3) - 1327884195)) + v56 + (((LODWORD(STACK[0x4B4]) ^ 0x3E6E0A87) - 1047399047) ^ ((LODWORD(STACK[0x4B4]) ^ 0x4F86791) - 83388305) ^ (((a6 - 853570911) ^ LODWORD(STACK[0x4B4])) + 853569799));
  *(a26 + 52) = ((v59 % 0x2710) ^ 0x2FF7EFAF) - 614580490 + ((2 * (v59 % 0x2710)) & 0x5F5E);
  v60 = STACK[0x4BC];
  LODWORD(STACK[0x298]) = STACK[0x4BC];
  return (*(v58 + 8 * ((2332 * (v60 == 1423875590)) ^ (a6 - 564))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_223826B44@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x188E));

  return v3(v1);
}

uint64_t sub_223826C34@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 1;
  *(a1 + v6) = *(v2 + v6) - (((v5 ^ (v3 - 75)) - 59) & (2 * *(v2 + v6))) + 80;
  return (*(v1 + 8 * ((54 * (v6 == 0)) ^ v5)))(0);
}

uint64_t sub_223826CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v8 = (v6 - 806508625) & 0x30125DE7;
  *a6 = v12 >> ((v6 - 81) & 0xE7 ^ 0x61);
  v13 = v8 - 143681137 * ((2 * (&v13 & 0x53B51E58) - &v13 + 743104931) ^ 0xCAE24DB3) - 1630;
  v14 = v10;
  (*(v7 + 8 * (v8 ^ 0x196C)))(&v13);
  v14 = v11;
  v13 = v8 + 1367 - 143681137 * ((((2 * &v13) | 0x8AAC3490) - &v13 - 1163270728) ^ 0xA3FEB658) - 2997;
  (*(v7 + 8 * (v8 + 1700)))(&v13);
  return 0;
}

uint64_t sub_223826E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, unsigned int a36, int a37, unsigned int a38, int a39, int a40, int a41, char a42)
{
  v51 = *(v44 + 8 * (v42 + 57));
  v52 = (a42 - ((2 * a42) & 0xE3) - 12);
  if (v52 == 246)
  {
    v54 = ((*(&a26 + v46 + 447027720) ^ a4) << 24) | ((*(&a26 + v46 + 447027721) ^ a4) << 16) | ((*(&a26 + v46 + 447027722) ^ a4) << 8) | *(&a26 + v46 + 447027723) ^ a4;
    *v45 = v54 + v49 - (v43 & (2 * v54));
    return (*(v44 + 8 * ((1232 * (v48 == 447027716)) ^ (v50 + 2579))))(v48 + 16);
  }

  else if (v52 == 243)
  {
    v53 = *(&a26 + v46 + 447027720) ^ a4 | (((v47 - 28) ^ *(&a26 + v46 + 447027721)) << 8) | ((*(&a26 + v46 + 447027722) ^ a4) << 16) | ((*(&a26 + v46 + 447027723) ^ a4) << 24);
    *v45 = v53 + v49 - (v43 & (2 * v53));
    return (*(v44 + 8 * ((2180 * (v48 == 447027716)) ^ (v50 + 1693))))();
  }

  else
  {
    v55 = (((a36 ^ 0xE48E70BD) + 460427075) ^ ((a36 ^ 0x8D7E3C3) - 148366275) ^ ((a36 ^ 0x33A5A5A0) - 866493856)) + (((a36 ^ 0xDD98F356) + 577178794) ^ ((a36 ^ 0x8EF2C8B4) + 1896691532) ^ ((a36 ^ 0x8C960D3C) + 1936323268)) + 299180023;
    v56 = (v55 ^ 0x8F9B6990) & (2 * (v55 & 0xAE234DC5)) ^ v55 & 0xAE234DC5;
    v57 = ((2 * (v55 ^ 0xCBD9F090)) ^ 0xCBF57AAA) & (v55 ^ 0xCBD9F090) ^ (2 * (v55 ^ 0xCBD9F090)) & 0x65FABD54;
    v58 = v57 ^ 0x240A8555;
    v59 = (v57 ^ 0x41903800) & (4 * v56) ^ v56;
    v60 = ((4 * v58) ^ 0x97EAF554) & v58 ^ (4 * v58) & 0x65FABD54;
    v61 = (v60 ^ 0x5EAB550) & (16 * v59) ^ v59;
    v62 = ((16 * (v60 ^ 0x60100801)) ^ 0x5FABD550) & (v60 ^ 0x60100801) ^ (16 * (v60 ^ 0x60100801)) & 0x65FABD50;
    v63 = v61 ^ 0x65FABD55 ^ (v62 ^ 0x45AA9500) & (v61 << 8);
    v64 = v55 ^ (2 * ((v63 << 16) & 0x65FA0000 ^ v63 ^ ((v63 << 16) ^ 0x3D550000) & (((v62 ^ 0x20502805) << 8) & 0x65FA0000 ^ 0x5420000 ^ (((v62 ^ 0x20502805) << 8) ^ 0x7ABD0000) & (v62 ^ 0x20502805))));
    v65 = (((a37 ^ 0x362D4BA2) - 908938146) ^ ((a37 ^ 0x5E1D3ED6) - 1578974934) ^ ((a37 ^ 0xB7CC43AA) + 1211350102)) + (((a37 ^ 0x359A7F0C) - 899317516) ^ ((a37 ^ 0x3F7E7AAC) - 1065253548) ^ ((a37 ^ 0xD518337E) + 719834242)) + 206254920;
    v66 = (v65 ^ 0xB3ADBA77) & (2 * (v65 & 0xB3AD3A74)) ^ v65 & 0xB3AD3A74;
    v67 = ((2 * (v65 ^ 0xB7F5CEFF)) ^ 0x8B1E916) & (v65 ^ 0xB7F5CEFF) ^ (2 * (v65 ^ 0xB7F5CEFF)) & 0x458F48A;
    v68 = v67 ^ 0x4481489;
    v69 = (v67 ^ 0x10E000) & (4 * v66) ^ v66;
    v70 = ((4 * v68) ^ 0x1163D22C) & v68 ^ (4 * v68) & 0x458F488;
    v71 = (v70 ^ 0x40D000) & (16 * v69) ^ v69;
    v72 = ((16 * (v70 ^ 0x4182483)) ^ 0x458F48B0) & (v70 ^ 0x4182483) ^ (16 * (v70 ^ 0x4182483)) & 0x458F480;
    v73 = v71 ^ 0x458F48B ^ (v72 ^ 0x4084000) & (v71 << 8);
    a36 = v64 ^ 0xF08A01B1;
    a37 = v65 ^ (2 * ((v73 << 16) & 0x4580000 ^ v73 ^ ((v73 << 16) ^ 0x748B0000) & (((v72 ^ 0x50B40B) << 8) & 0x4580000 ^ 0x4080000 ^ (((v72 ^ 0x50B40B) << 8) ^ 0x58F40000) & (v72 ^ 0x50B40B)))) ^ 0x6CF0E5BC;
    v74 = (((a38 ^ 0x976DE991) + 1754404463) ^ ((a38 ^ 0xF1696B2) - 253138610) ^ ((a38 ^ 0x478749FD) - 1200048637)) + (((a38 ^ 0xB34B66E6) + 1286904090) ^ ((a38 ^ 0x7F8EDB3F) - 2140068671) ^ ((a38 ^ 0x13398B07) - 322538247)) - 839214406;
    v75 = (((a39 ^ 0x286ED3C1) - 678351809) ^ ((a39 ^ 0xA16D1F33) + 1586684109) ^ ((a39 ^ 0x56FFFA2C) - 1459616300)) + (((a39 ^ 0xAB28CB55) + 1423389867) ^ ((a39 ^ 0xF7DFED6C) + 136319636) ^ ((a39 ^ 0x830B10E7) + 2096426777)) - 1065455176;
    v76 = (v75 ^ 0xFE71FD34) & (2 * (v75 & 0xFF79FC04)) ^ v75 & 0xFF79FC04;
    v77 = ((2 * (v75 ^ 0x42B2053C)) ^ 0x7B97F270) & (v75 ^ 0x42B2053C) ^ (2 * (v75 ^ 0x42B2053C)) & 0xBDCBF938;
    v78 = v77 ^ 0x84480908;
    v79 = (v77 ^ 0x3983F030) & (4 * v76) ^ v76;
    v80 = ((4 * v78) ^ 0xF72FE4E0) & v78 ^ (4 * v78) & 0xBDCBF938;
    v81 = (v80 ^ 0xB50BE020) & (16 * v79) ^ v79;
    v82 = ((16 * (v80 ^ 0x8C01918)) ^ 0xDCBF9380) & (v80 ^ 0x8C01918) ^ (16 * (v80 ^ 0x8C01918)) & 0xBDCBF930;
    v83 = v81 ^ 0xBDCBF938 ^ (v82 ^ 0x9C8B9100) & (v81 << 8);
    a38 = v74 ^ ((v74 ^ 0x5830DDBE) - 1446179136) ^ ((v74 ^ 0xE48EFB81) + 359868545) ^ ((v74 ^ 0x4D4BF53E) - 1128913344) ^ ((v74 ^ 0xFFF7FFFF) + 235547903) ^ 0xD1FE1A20;
    a39 = v75 ^ (2 * ((v83 << 16) & 0x3DCB0000 ^ v83 ^ ((v83 << 16) ^ 0x79380000) & (((v82 ^ 0x21406838) << 8) & 0x3DCB0000 ^ 0x34020000 ^ (((v82 ^ 0x21406838) << 8) ^ 0x4BF90000) & (v82 ^ 0x21406838)))) ^ 0x290238AA;
    return v51(72876032, &a26 + 4, 1710882816, a4, 3623878656, 3537654976, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
  }
}

uint64_t sub_223826FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, int a20, unsigned int a21, char *a22)
{
  v25 = 675097751 * (((&a17 | 0xB6A98F3) + (~&a17 | 0xF495670C)) ^ 0x482ABD64);
  a18 = (v24 + 1421510519) ^ v25;
  a19 = v25 ^ 0xA7D0ED0E;
  a21 = v25 ^ 0xBEB0E746;
  a22 = &a13;
  a17 = a15;
  v26 = (*(v23 + 8 * (v24 ^ 0x17D6)))(&a17);
  return (*(v23 + 8 * ((2124 * (a20 == (((v24 - 1186) | 0x43) ^ (v22 + 1841)))) ^ v24)))(v26);
}

uint64_t sub_223827068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16, unsigned int a17, char *a18)
{
  v20 = 675097751 * ((674987302 - (&a13 | 0x283B7D26) + (&a13 | 0xD7C482D9)) ^ 0x9484A74F);
  a18 = &a10;
  a14 = (v19 + 1421511415) ^ v20;
  a15 = v20 ^ 0x768440A0;
  a13 = a12;
  a17 = v20 ^ 0xBEB0E746;
  v21 = (*(v18 + 8 * (v19 ^ 0x1456u)))(&a13);
  return (*(v18 + 8 * (((a16 == ((v19 + 1761898741) & 0xEC5) + 1423874561) * (((v19 - 505) | 0x504) ^ 0xE4F)) ^ v19)))(v21);
}

uint64_t sub_2238272B0@<X0>(int a1@<W8>)
{
  v4 = (((v1 ^ 0x4A9) + 926) ^ 0x2BDF565A) + a1;
  v6 = v4 > -225017866 && v4 < v2;
  return (*(v3 + 8 * ((3276 * v6) ^ v1)))();
}

uint64_t sub_223827344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, int a17)
{
  v20 = 1564307779 * ((((2 * &a14) | 0x17A28410) - &a14 - 198263304) ^ 0x9CDC8E1B);
  a15 = a12;
  a17 = 1264667083 * v17 - v20 + 1046635743;
  a14 = v20 ^ 0x963;
  v21 = (*(v18 + 32944))(&a14);
  return (*(v18 + 8 * ((2573 * (a16 == v19)) ^ 0x13Au)))(v21);
}

uint64_t sub_223827420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8)
{
  *a8 = v15 >> (((v8 ^ 0xF3) - 42) ^ 0xD2);
  v17 = v14;
  v16 = (v8 ^ 0x4F3) - 42 - ((&v16 & 0x46E2465B | ~(&v16 | 0x46E2465B)) ^ 0x5FB515B4) * v9 + 560;
  v11 = ((v8 ^ 0x4F3) - 49156773) & 0x2EE17FE;
  (*(v10 + 8 * ((v8 ^ 0x4F3) + 3848)))(&v16);
  v16 = v11 - (&v16 ^ 0xE6A8AC10) * v9 - 852;
  v17 = v13;
  (*(v10 + 8 * (v11 ^ 0x1652u)))(&v16);
  return 0;
}

void sub_223827914(uint64_t a1)
{
  v1 = *(a1 + 8) + 1785193651 * ((-170978615 - (a1 | 0xF5CF12C9) + (a1 | 0xA30ED36)) ^ 0xFC11491A);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_223827A48(uint64_t result)
{
  v1 = 742307843 * (((result | 0x219209D98EDD5F97) - result + (result & 0xDE6DF6267122A068)) ^ 0x920ED4B290FFD2C2);
  v2 = *(result + 32);
  v3 = *(result + 16);
  v4 = v3 - v1 >= v2 - v1;
  v5 = v3 != v2;
  if ((*result ^ v1))
  {
    v5 = v4;
  }

  v6 = !v5;
  v7 = 4;
  if (!v6)
  {
    v7 = 12;
  }

  *(result + 8) = (*(result + v7) + v1) ^ (*(result + 40) + v1);
  return result;
}

void sub_223827B3C(uint64_t a1)
{
  v1 = *a1 - 1564307779 * (((a1 | 0x67BE492F) - (a1 & 0x67BE492F)) ^ 0xF0B3853C);
  v2 = *(a1 + 8);
  v3 = qword_2836EB200[v1 - 362];
  (*(v3 + 8 * (v1 ^ 0xE3E)))(qword_2836EB200[v1 - 375] - 12, sub_22388468C);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_223827BF8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v3 = a1;
  *v11 = v2;
  v8 = (v4 + a2 - v5 - 1854 + 3529) | 0x587;
  v9 = (v8 - 390) | 0x2C6;
  v16 = v14;
  v15 = v8 - ((2 * (&v15 & 0x32D51640) - &v15 - 852825672) ^ 0x2B8245A8) * v7 - 641;
  (*(v6 + 8 * (v8 ^ 0x158F)))(&v15);
  v16 = v12;
  v15 = v9 - (((&v15 | 0xF035AFD2) - (&v15 & 0xF035AFD2)) ^ 0x169D03C2) * v7 - 961;
  (*(v6 + 8 * (v9 ^ 0x16CF)))(&v15);
  return (v13 ^ 0x54DEFE4E) - 24648 + ((v8 ^ 0xA9BDF91A) & (2 * v13)) - 1423875590;
}

uint64_t sub_223827D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v13 = (*(v11 + 8 * (v12 ^ 0x17F1)))(a1, 1281988702);
  *a11 = v13;
  return (*(v11 + 8 * (((v13 != 0) * (((v12 + 1297) ^ 0x7EC) + v12 - 820)) ^ v12)))();
}

void sub_223827D8C(uint64_t a1)
{
  v1 = (*(a1 + 16) - 50899313 * ((2 * (a1 & 0x1953A744) - a1 - 424912709) ^ 0xCC6772C1) - 2001) | 0x81;
  __asm { BRAA            X1, X17 }
}

uint64_t sub_223827FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, int a13, unsigned int a14, uint64_t a15, char *a16, char *a17, int a18, int a19)
{
  v22 = 1504884919 * (&a14 ^ 0xFBC3B71B);
  a14 = v22 + 1158499961;
  a19 = (v21 + 85) ^ v22;
  a15 = v19;
  a16 = &a12;
  a17 = &a10;
  v23 = (*(v20 + 8 * (v21 ^ 0x1224)))(&a14);
  return (*(v20 + 8 * (((*(v19 + 24) == 1423875590) * ((((v21 + 1293) | 0x8C4) - 3304) ^ 0x33C)) ^ v21)))(v23);
}

uint64_t sub_223828050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v3 - 965) | 0x400u) - v2 - 777;
  v6 = *(a2 + v5 - 15);
  v7 = *(a2 + v5 - 31);
  v8 = a1 + v5;
  v9.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v9.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v10.i64[0] = 0x5050505050505050;
  v10.i64[1] = 0x5050505050505050;
  *(v8 - 15) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v9)), v10);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v9)), v10);
  return (*(v4 + 8 * ((882 * (v2 == 288)) ^ v3)))();
}

uint64_t sub_22382813C()
{
  if (v1 >= v2)
  {
    v4 = 1423833572;
  }

  else
  {
    v4 = 1423875590;
  }

  return (*(v3 + 8 * (((v4 == 1423875590) * (((v0 + 1180442843) & 0xB9A3D1DF) + 3713)) ^ (v0 + 1180442843) & 0xB9A3D1DF)))();
}

uint64_t sub_2238281A8()
{
  v7 = -1564307779 * (&v26 ^ 0x970DCC13) + 1264667083 * v2;
  v8 = v4 + v24;
  v29 = v7 + 1046635743;
  v27 = v25;
  LODWORD(v26) = (v4 + v24) ^ (1564307779 * (&v26 ^ 0x970DCC13));
  v9 = v4 ^ v5;
  (*(v3 + 8 * v9))(&v26);
  v10 = 1564307779 * ((&v26 & 0xFF5F2F12 | ~(&v26 | 0xFF5F2F12)) ^ 0x97AD1CFE);
  v29 = 1264667083 * v1 - v10 + 1046635743;
  LODWORD(v26) = v8 ^ v10;
  v27 = v25;
  (*(v3 + 8 * v9))(&v26);
  v11 = *v0;
  if (*v0 == 3)
  {
    v19 = 1564307779 * (&v26 ^ 0x970DCC13);
    v29 = 545669696 - v19;
    LODWORD(v26) = (v24 - 1462825540) ^ v19;
    v27 = v25;
    v18 = v3;
LABEL_7:
    (*(v3 + 32944))(&v26);
    v20 = 1785193651 * ((&v26 - 2 * (&v26 & 0xFD5FC23EF5880E4BLL) - 0x2A03DC10A77F1B5) ^ 0xA2C77F0603A9AA67);
    v21 = (*(v0 + 1) - 0x303DAEBBFB4CB2 - ((2 * *(v0 + 1)) & 0xFF9F84A28809669CLL)) ^ v20;
    v26 = v25;
    v27 = v21;
    v29 = 2380 - v20;
    (*(v18 + 33104))(&v26);
    __asm { BRAA            X8, X17 }
  }

  if (v11 == 2)
  {
    v15 = 1564307779 * (((&v26 | 0x47E4CFB1) + (~&v26 | 0xB81B304E)) ^ 0xD0E903A3);
    LODWORD(v26) = (v24 - 1462825540) ^ v15;
    v29 = -718997387 - v15;
    v27 = v25;
    (*(v3 + 32944))(&v26);
    v16 = v0[1];
    v17 = 1564307779 * ((((&v26 | 0x6266E7BC) ^ 0xFFFFFFFE) - (~&v26 | 0x9D991843)) ^ 0xA94D450);
    v27 = v25;
    v29 = 1046635743 - v17 + 1264667083 * v16;
    LODWORD(v26) = (v24 - 1462825540) ^ v17;
    v18 = v3;
    goto LABEL_7;
  }

  v23 = v3;
  if (v11 == 1)
  {
    v12 = 1564307779 * ((((&v26 | 0x75E9F1F6) ^ 0xFFFFFFFE) - (~&v26 | 0x8A160E09)) ^ 0x1D1BC21A);
    v29 = -1983664470 - v12;
    v27 = v25;
    LODWORD(v26) = (v24 - 1462825540) ^ v12;
    (*(v23 + 32944))(&v26);
    v13 = v0[4];
    v14 = 1564307779 * ((((&v26 | 0xEA5B832) ^ 0xFFFFFFFE) - (~&v26 | 0xF15A47CD)) ^ 0x66578BDE);
    LODWORD(v26) = (v24 - 1462825540) ^ v14;
    v27 = v25;
    v29 = 1046635743 - v14 + 1264667083 * v13;
    (*(v23 + 32944))(&v26);
    __asm { BRAA            X8, X17 }
  }

  LODWORD(v26) = v24 - 143681137 * ((((2 * &v26) | 0xD00027F0) - &v26 + 402648072) ^ 0xEA8BFE8) - 1462827169;
  v27 = v25;
  (*(v23 + 32832))(&v26);
  return (v6 - 1423875563);
}

uint64_t sub_223828930(double a1, double a2, double a3, int8x16_t a4, int8x16_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v14 = (v13 + (v9 + v11));
  v15 = *v14;
  v16 = v14[1];
  v17 = (a7 + v9);
  *v17 = vaddq_s8(vaddq_s8(v15, a5), vmvnq_s8(vandq_s8(vaddq_s8(v15, v15), a4)));
  v17[1] = vaddq_s8(vaddq_s8(v16, a5), vmvnq_s8(vandq_s8(vaddq_s8(v16, v16), a4)));
  return (*(v12 + 8 * (((v9 == 32) * a9) ^ (a8 + v10 - 522))))();
}

uint64_t sub_223828AA0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X5>, int a3@<W6>, uint64_t a4@<X8>)
{
  v10 = v5 - 1;
  *(a4 + v10) = *(a2 + v10) ^ (15 * (v10 & 0xF)) ^ *(*(v9 + 8 * (a3 - 1800)) + (v10 & 0xF)) ^ *((v10 & 0xF) + *(v9 + 8 * (a3 - 1951)) + 3) ^ *(*(v9 + 8 * v6) + (v10 & 0xF) - 6) ^ v7;
  return (*(a1 + 8 * (((v4 == -1) * v8) ^ a3)))();
}

uint64_t sub_223828AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  v25 = 143681137 * ((((v24 - 128) | 0x33C8E90C) - (v24 - 128) + ((v24 - 128) & 0xCC3716F0)) ^ 0xD560451C);
  *(v24 - 120) = &a19;
  *(v24 - 128) = v23 - v25 + 1715;
  *(v24 - 112) = (v19 ^ 0x7FBFD729) - v25 + (((v23 + 529) ^ 0xFF7FA7D7) & (2 * v19)) - 1210597632;
  (*(v20 + 8 * (v23 ^ 0x1743)))(v24 - 128);
  *(v24 - 104) = (v23 + 2018) ^ (((v24 - 128) ^ 0x4B6BCC7E) * v21);
  *(v24 - 120) = &a17;
  *(v24 - 112) = a16;
  v26 = (*(v20 + 8 * ((v23 + 529) | 0x640)))(v24 - 128);
  v27 = *(v24 - 128) <= 3 * ((v23 + 464) ^ 0x887u) + v22;
  return (*(v20 + 8 * (((4 * v27) | (32 * v27)) ^ (v23 + 529))))(v26);
}

uint64_t sub_223828BD8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5)
{
  v8 = ((v5 ^ 0x23C) - 442623171) & 0x1A61E6FE;
  *a5 = a1;
  *a4 = v11;
  v14 = v12;
  v13 = v8 - ((2 * (&v13 & 0x76D89758) - &v13 + 153577633) ^ 0xEF8FC4B1) * v7 - 884;
  (*(v6 + 8 * (v8 + 2446)))(&v13);
  v13 = v8 - 1095 - (((&v13 | 0x91AFBB76) - (&v13 & 0x91AFBB76)) ^ 0x77071766) * v7 + 211;
  v14 = v10;
  (*(v6 + 8 * (v8 + 2446)))(&v13);
  return 0;
}

uint64_t sub_223828D6C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 - 2981;
  v4 = (a2 - 2432) | 0x2A5;
  v5 = (*(v2 + 8 * ((a2 - 2981) ^ 0x11D3)))(a1, 3767223957) == 0;
  return (*(v2 + 8 * ((v5 * (v4 - 1694)) ^ v3)))();
}

void MpmZulZW()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * (dword_27D09D828 ^ 0x74 ^ qword_27D09D558)) ^ byte_2238FD9F0[byte_2238FA860[(-33 * (dword_27D09D828 ^ 0x74 ^ qword_27D09D558))] ^ 0x4F]) - 28];
  v1 = qword_2836EB200[(*(off_2836EB658 + (*(off_2836EB6D8 + (-33 * ((qword_27D09D558 + *v0) ^ 0x74))) ^ 0xD0u) - 4) ^ (-33 * ((qword_27D09D558 + *v0) ^ 0x74))) - 180];
  v2 = *v1 - *v0 - &v4;
  *v0 = 1321670111 * v2 - 0x448BD34F94FDFB74;
  *v1 = 1321670111 * (v2 ^ 0x448BD34F94FDFB74);
  v5[1] = (1037613739 * (v5 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  LOBYTE(v1) = -33 * (*v0 ^ 0x74 ^ *v1);
  v3 = qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D828) ^ 0x74)) ^ byte_2238FD7F0[byte_2238FA660[(-33 * ((qword_27D09D558 - dword_27D09D828) ^ 0x74))] ^ 0xFB]) + 59];
  (*(v3 + 8 * ((*(off_2836EB808 + (*(off_2836EB438 + v1 - 8) ^ 0xFBu)) ^ v1) + 4086)))(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_223829010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, unsigned int a23, uint64_t a24)
{
  v30 = v25 + 32 * v26;
  v31 = *(v30 + 8);
  v32 = (((&a21 | 0x442B6237) - &a21 + (&a21 & 0xBBD49DC8)) ^ 0x5A09EF62) * v29;
  a23 = ((*v30 ^ 0x77EFEFF6) - 805642384 + ((*v30 << (((v28 - 11) | 0x34) + 13)) & 0xEFDFDFEC)) ^ v32;
  a22 = v31;
  a24 = a16;
  a21 = (v28 - 1979) ^ v32;
  (*(v27 + 8 * (v28 + 847)))(&a21);
  v33 = *(v30 + 24);
  v34 = (*(v30 + 16) ^ 0x7FFECF7E) - 940834840 + ((2 * *(v30 + 16)) & 0xFFFD9EFC);
  v35 = (((&a21 | 0xB4BF6EB9) - (&a21 & 0xB4BF6EB9)) ^ 0xAA9DE3EC) * v29;
  a21 = (v28 - 1979) ^ v35;
  a22 = v33;
  a23 = v34 ^ v35;
  a24 = a16;
  v36 = (*(v27 + 8 * (v28 ^ 0x1CD1)))(&a21);
  return (*(v27 + 8 * ((7 * (v24 <= (v26 + 1))) ^ v28)))(v36);
}

uint64_t sub_22382925C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, int a20, unsigned int a21, char *a22)
{
  v24 = 675097751 * ((1163541341 - (&a17 | 0x455A3B5D) + (&a17 | 0xBAA5C4A2)) ^ 0xF9E5E134);
  a21 = v24 ^ 0xBEB0E746;
  a17 = a12;
  a18 = (v22 + 1421511611) ^ v24;
  a19 = v24 ^ 0xC2B097A7;
  a22 = &a13;
  v25 = (*(v23 + 8 * (v22 + 3222)))(&a17);
  return (*(v23 + 8 * (((a20 == 1423875590) * (((v22 - 1767507944) & 0x695A0DF7) - 766)) ^ v22)))(v25);
}

uint64_t sub_223829338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, unsigned int a23, uint64_t a24)
{
  v28 = 742307843 * ((&a20 & 0xBC34187F | ~(&a20 | 0xBC34187F)) ^ 0x5DE96AD5);
  a23 = v28 ^ ((v25 ^ 0xC7EFEFE6) + 2147147648 + ((2 * v25) & 0x8FDFDFCC));
  a22 = v24;
  a24 = a19;
  a20 = (v26 + 471) ^ v28;
  v29 = (*(v27 + 8 * (v26 ^ 0x1323)))(&a20);
  return (*(v27 + 8 * (((a21 == 1423875590) * ((v26 + 386200646) & 0xFF6 ^ 0x7AC)) ^ v26)))(v29);
}

uint64_t sub_223829414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = STACK[0x448];
  v71 = 435584651 * ((909877102 - ((v68 - 192) | 0x363B9F6E) + ((v68 - 192) | 0xC9C46091)) ^ 0xA4F67AC7);
  *(v68 - 160) = (v66 - 344889476 + ((v67 - 165) | 0x880)) ^ v71;
  *(v68 - 152) = &STACK[0x41C];
  *(v68 - 144) = &STACK[0x3B8];
  *(v68 - 180) = v71 + v67 + 1783;
  *(v68 - 192) = &a66;
  *(v68 - 176) = v70;
  *(v68 - 168) = &STACK[0x26C];
  v72 = (*(v69 + 8 * (v67 + 3867)))(v68 - 192);
  return (*(a62 + 8 * ((3607 * (*(v68 - 184) == 1423875590)) ^ v67)))(v72, 0);
}

uint64_t sub_22382950C@<X0>(int a1@<W0>, unsigned int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W8>)
{
  v10 = a4 + 1;
  *(v8 + v4) = *(STACK[0x228] + a4);
  v11 = a4 + 1 + a1 + (v7 ^ a3) + 15 < v5;
  if (v5 < v6 != v10 > a2)
  {
    v11 = v5 < v6;
  }

  return (*(v9 + 8 * ((v11 * a3) ^ v7 ^ a3)))();
}

void YHrWZQ6wU()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D778) ^ 0x74)) ^ byte_2238FA560[byte_223907C60[(-33 * ((qword_27D09D558 + dword_27D09D778) ^ 0x74))] ^ 0xFC]) - 49];
  v1 = *(v0 - 4);
  v2 = qword_2836EB200[(*(off_2836EB7F0 + (*(off_2836EB850 + (-33 * ((qword_27D09D558 - v1) ^ 0x74)) - 4) ^ 0x37u)) ^ (-33 * ((qword_27D09D558 - v1) ^ 0x74))) - 96];
  v3 = &v5[v1 + *v2];
  *(v0 - 4) = 1321670111 * (v3 - 0x448BD34F94FDFB74);
  *v2 = 1321670111 * (v3 ^ 0x448BD34F94FDFB74);
  v6[1] = (1037613739 * (((v6 | 0x5300E28D) + (~v6 | 0xACFF1D72)) ^ 0x8202CFF3)) ^ 0x86F54BA0;
  LOBYTE(v2) = -33 * (*(v0 - 4) ^ 0x74 ^ *v2);
  v4 = qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D778) ^ 0x74)) ^ byte_2238FA560[byte_223907C60[(-33 * ((qword_27D09D558 - dword_27D09D778) ^ 0x74))] ^ 0x6D]) - 104];
  (*(v4 + 8 * ((*(off_2836EB658 + (*(off_2836EB6D8 + v2) ^ 0x61u) - 4) ^ v2) + 3937)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22382977C(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4)
{
  v11 = v5 + v7;
  v12 = vaddq_s8(vaddq_s8(*(a4 + v11 + 17), a2), vmvnq_s8(vandq_s8(vaddq_s8(*(a4 + v11 + 17), *(a4 + v11 + 17)), a1)));
  v13 = (v8 + v11);
  *v13 = vaddq_s8(vaddq_s8(*(a4 + v11 + 1), a2), vmvnq_s8(vandq_s8(vaddq_s8(*(a4 + v11 + 1), *(a4 + v11 + 1)), a1)));
  v13[1] = v12;
  return (*(v10 + 8 * (((v6 == v11) * v9) ^ (v4 + 500))))();
}

void sub_223829784()
{
  STACK[0x508] = 0xFB4DA44337E8814CLL;
  STACK[0x500] = 0x10F381955B75D230;
  JUMPOUT(0x223822A8CLL);
}

uint64_t sub_2238297C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v3 ^ 0xD36)) ^ v3)))();
}

uint64_t sub_2238297F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, int a18, int a19)
{
  v24 = &a16;
  a17 = a14;
  a16 = (v23 + 2226) ^ (1564307779 * ((v24 + 366124178 - 2 * (v24 & 0x15D29C92)) ^ 0x82DF5081));
  a19 = -1564307779 * ((v24 + 366124178 - 2 * (v24 & 0x15D29C92)) ^ 0x82DF5081) + 1264667083 * v21 + 1046635743;
  (*(v22 + 8 * (v23 + 3941)))(&a16);
  a16 = (v23 + 2226) ^ (1564307779 * (((&a16 | 0x27D5ACFF) + (~&a16 | 0xD82A5300)) ^ 0xB0D860ED));
  a19 = -1564307779 * (((&a16 | 0x27D5ACFF) + (~&a16 | 0xD82A5300)) ^ 0xB0D860ED) + 1264667083 * (v20 >> (((v23 + 62) & 0xBF) + 113)) + 1046635743;
  a17 = a14;
  (*(v22 + 8 * (v23 ^ 0x10A7)))(&a16);
  v25 = 1564307779 * (((&a16 | 0x9704DCA9) - (&a16 & 0x9704DCA9)) ^ 0x910BA);
  a17 = a14;
  a19 = 1264667083 * v20 - v25 + 1046635743;
  a16 = (v23 + 2226) ^ v25;
  (*(v22 + 8 * (v23 ^ 0x10A7)))(&a16);
  v26 = 1564307779 * ((2 * (&a16 & 0xE0E5BE8) - &a16 + 1911661584) ^ 0xE6FC6803);
  a16 = (v23 + 2226) ^ v26;
  a17 = a14;
  a19 = 1264667083 * HIDWORD(v19) - v26 + 1046635743;
  (*(v22 + 8 * (v23 + 3941)))(&a16);
  a17 = a14;
  a16 = (v23 + 2226) ^ (1564307779 * ((&a16 & 0x3038A64 | ~(&a16 | 0x3038A64)) ^ 0x6BF1B988));
  a19 = -1564307779 * ((&a16 & 0x3038A64 | ~(&a16 | 0x3038A64)) ^ 0x6BF1B988) + 1264667083 * v19 + 1046635743;
  v27 = (*(v22 + 8 * (v23 ^ 0x10A7)))(&a16);
  return (*(v22 + 8 * ((3118 * (a18 == 1423875590)) ^ v23)))(v27);
}

uint64_t sub_223829AB8(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_223829AD8@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  *&v6 = 0x5050505050505050;
  *(&v6 + 1) = 0x5050505050505050;
  v7 = (v5 - 220 + a2);
  *v7 = v6;
  v7[1] = v6;
  return (*(v4 + 8 * ((2159 * (((v3 + 855048099) & 0xC242DBFD ^ 0xBECLL) == (v2 & 0xFFFFFFFFFFFFFFE0))) ^ (a1 + v3 - 1620))))();
}

uint64_t sub_223829B40(int a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  HIDWORD(v16) = a1 ^ 0x7FC36DE;
  LODWORD(v16) = a1 ^ v9;
  v17 = (a4 ^ 0xE935C274) & (v8 ^ v15) ^ v8 & 0xC9360B55;
  v18 = (v16 >> 27) + (a6 ^ v12) + (*(v6 + 4 * (a3 + v11)) ^ v14) + (~v17 & 0xB66544F6 ^ (v17 ^ 0xFFFDF6FE) & (v7 ^ (((a2 + 1247) | 0x100) + 1771661606)) | v8 & 0xA4C3C0EC ^ 0x84C000CC ^ (a4 ^ 0x7B3FF632) & (v8 ^ v12)) - 1813594597;
  v19 = (v18 ^ 0xFBA4FCB9) & (2 * (v18 & 0xFB34FEC1)) ^ v18 & 0xFB34FEC1;
  v20 = ((2 * (v18 ^ 0x3DC5113B)) ^ 0x8DE3DFF4) & (v18 ^ 0x3DC5113B) ^ (2 * (v18 ^ 0x3DC5113B)) & 0xC6F1EFFA;
  v21 = v20 ^ 0x4210200A;
  v22 = (v20 ^ 0x84E1CF00) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0x1BC7BFE8) & v21 ^ (4 * v21) & 0xC6F1EFF8;
  v24 = (v23 ^ 0x2C1AFE0) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0xC4304012)) ^ 0x6F1EFFA0) & (v23 ^ 0xC4304012) ^ (16 * (v23 ^ 0xC4304012)) & 0xC6F1EFF0;
  v26 = v24 ^ 0xC6F1EFFA ^ (v25 ^ 0x4610EF00) & (v24 << 8);
  return (*(v10 + 8 * ((3424 * (a3 + 1 == v13 + 44)) ^ a2)))(v18 ^ (2 * ((v26 << 16) & 0x46F10000 ^ v26 ^ ((v26 << 16) ^ 0x6FFA0000) & (((v25 ^ 0x80E1005A) << 8) & 0x46F10000 ^ 0x6100000 ^ (((v25 ^ 0x80E1005A) << 8) ^ 0x71EF0000) & (v25 ^ 0x80E1005A)))) ^ 0x24CB17EB);
}

uint64_t sub_223829D94@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49)
{
  v55 = STACK[0x26C];
  v56 = STACK[0x448];
  v57 = STACK[0x3D4];
  v58 = &v53[6 * v51];
  v58[2] = v52;
  v58[3] = v57;
  *(v58 + 2) = v56;
  v58[6] = v55;
  *v53 = a1 + 1;
  LODWORD(STACK[0x280]) = v50;
  v60 = v50 + 1002712333 > ((4 * v49) ^ 0x27B59D8) || v50 + 1002712333 < a49;
  return (*(v54 + 8 * ((2813 * v60) ^ v49)))();
}

uint64_t sub_223829E04@<X0>(int a1@<W8>, uint64_t a2, int a3, int a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  v13 = 229 * (a1 ^ 0x910);
  v14 = (a1 - 23) | 5;
  v15 = a1 + 180;
  *(v12 - 104) = a1 + 1564307779 * ((~(v11 | 0xE5BD938B) + (v11 & 0xE5BD938B)) ^ 0x8D4FA067) + 1100;
  *(v12 - 136) = v9;
  *(v12 - 128) = a5;
  *(v12 - 120) = v9;
  *(v12 - 112) = a9;
  v16 = (*(v10 + 8 * (a1 ^ 0x191D)))(v12 - 136);
  v17 = ((a7 >> (v14 ^ 6)) & a4) == v13 - 2061;
  return (*(v10 + 8 * ((v17 | (2 * v17)) ^ v15)))(v16);
}

uint64_t sub_223829F28()
{
  v6 = *(v2 + 48 * v5 + 36);
  v8 = v6 + 1157818376 >= v1 || v6 == ((v4 + ((v0 - 1368358337) & 0x518F7A7E) - 2680) ^ 0x1E9C687);
  return (*(v3 + 8 * ((1011 * v8) ^ v0)))();
}

uint64_t sub_223829FE0()
{
  if (v1)
  {
    v4 = (v2 ^ 0xBFDFFE97) + 1467584000 + ((2 * v2) & 0x7FBFFD2E) == 391744663;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || v0 == 0;
  return (*(v3 + 8 * ((38 * v6) ^ 0x64Fu)))();
}

uint64_t sub_22382A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, int a36, char a37, __int16 a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  v47 = v43 ^ 0x54F;
  if ((a10 & 0x20) != 0)
  {
    v48 = 6;
  }

  else
  {
    v48 = 8;
  }

  if (((v47 + 23) & a10) != 0)
  {
    v49 = a9;
  }

  else
  {
    v49 = v48;
  }

  v50 = *(v45 + 20) - a15;
  v51 = 1037613739 * ((v46 - 160) ^ 0xD1022D7F);
  *(v46 - 136) = **(v45 + 8);
  *(v46 - 128) = v51 + v47 + 2732;
  *(v46 - 124) = v51 + v49 + 173 * (v43 ^ 0x562) - ((2 * v49) & 2) + 309860909;
  *(v46 - 112) = &a39;
  *(v46 - 104) = &a37;
  *(v46 - 144) = &a43;
  *(v46 - 160) = &a34;
  *(v46 - 120) = (v50 + 793294855) ^ v51;
  v52 = (*(v44 + 8 * (v43 ^ 0x155A)))(v46 - 160);
  return (*(v44 + 8 * ((274 * (*(v46 - 152) == (((v47 + 7) | 0x284) ^ 0x54DE9CB2))) | v47)))(v52);
}

uint64_t sub_22382A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v13 = 11 * (a5 ^ (a5 - 115));
  v14 = v10 == (v13 ^ (v11 - 609));
  if (a10 != (((v13 - 1239) | 0x641) ^ 0x7D1))
  {
    v14 = 1;
  }

  return (*(v12 + 8 * ((31 * v14) ^ v13)))();
}

uint64_t sub_22382A3D4(uint64_t a1)
{
  v4 = v1 + 550;
  v5 = (v1 - 42) ^ 0x5A7;
  v6 = (*(v3 + 8 * ((v1 + 550) ^ 0x1316)))(a1, 3222665066);
  *v2 = v6;
  return (*(v3 + 8 * (((v6 == 0) * (v5 - 1291)) ^ v4)))();
}

uint64_t sub_22382A460()
{
  *v3 = 0;
  *v8 = 0;
  v5 = ((2 * v0) & 0xEFFFBFAE) + (v0 ^ 0xF7FFDFD7) + ((v1 - 747) ^ 0x5CDEBA42);
  v6 = 115 * ((v1 - 747) ^ 0x460);
  v12 = v10;
  v11 = v1 - 747 - (((&v11 | 0x5D21EB32) - &v11 + (&v11 & 0xA2DE14C8)) ^ 0xBB894722) * v2 - 359;
  (*(v4 + 8 * ((v1 - 747) ^ 0x1465)))(&v11);
  v11 = v6 - (&v11 ^ 0xE6A8AC10) * v2 - 721;
  v12 = v9;
  (*(v4 + 8 * (v6 ^ 0x15DF)))(&v11);
  return v5 - 1423875590;
}

uint64_t sub_22382A5CC(uint64_t a1)
{
  v1 = 1564307779 * (((a1 | 0x689DD73) - (a1 & 0x689DD73)) ^ 0x91841160);
  v2 = *(a1 + 8) - v1;
  v3 = *(a1 + 24) ^ v1;
  v4 = *(*(a1 + 16) + 4);
  v6 = v4 - 528399629;
  v5 = v4 - 528399629 < 0;
  v7 = 528399629 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(qword_2836EB200[v2 ^ 0xA5D] + 8 * ((((v3 - 1591149727) >= (4 * v7)) * ((v2 + 144) ^ 0xA85)) ^ v2)))();
}

uint64_t sub_22382A688(uint64_t a1)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFC90 ^ ((v4 + 73) | 4u)) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((1969 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_22382A724@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13, uint64_t a14, int a15, unint64_t a16, int a17, int a18)
{
  *a13 = a1;
  LODWORD(STACK[0x27C]) = a18;
  STACK[0x280] = a16;
  LODWORD(STACK[0x288]) = a15 - v18 + 1814522873;
  STACK[0x290] = v23 + (v18 - 2042711197);
  v25 = (*(v21 + 48 * v24 + 8))(a7);
  return (*(v20 + 8 * ((1949 * ((v25 ^ 0xFEDEDF57) + 1442823855 + ((v22 ^ 0xFDBDB45F) & (2 * v25)) == 1423875590)) ^ v19)))();
}

uint64_t sub_22382A804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  a16 = (1037613739 * ((&a15 & 0x1A249949 | ~(&a15 | 0x1A249949)) ^ 0x34D94BC9)) ^ 0x86F54BA0;
  v18 = (*(v17 + 32816))(&a15);
  return (*(v17 + 8 * ((2915 * (a15 == 1423875590)) ^ v16)))(v18);
}

uint64_t sub_22382A8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17)
{
  a17 = (1037613739 * ((-1371807361 - (&a16 | 0xAE3BE17F) + (&a16 | 0x51C41E80)) ^ 0x80C633FF)) ^ 0x86F54BA0;
  v18 = (*(v17 + 32816))(&a16);
  return (*(v17 + 8 * ((33 * (((a16 == 1423875590) ^ 0x6B) & 1)) ^ 0x94A)))(v18);
}

void sub_22382A994(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = 675097751 * ((-2 - ((~a1 | 0xDD669912) + (a1 | 0x229966ED))) ^ 0x9E26BC84);
  v2 = *(a1 + 36) - v1;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = 843532609 * ((((2 * &v9) | 0x89BCCD24) - &v9 + 992057710) ^ 0x98933217);
  v6 = (*(a1 + 8) ^ v1) - v5;
  v7 = -297532703 * (*(a1 + 52) + v1);
  v9 = *(a1 + 24);
  v13 = v3;
  v15 = v4;
  v16 = v9;
  v12 = v6 + 996569169;
  v10 = (v7 + 165392144) ^ v5;
  v11 = v2 - v5 - 542397139;
  v8 = qword_2836EB200[v2 ^ 0x22E];
  (*(v8 + 8 * (v2 ^ 0x120D)))(&v9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22382AB24(uint64_t a1, int a2, int8x16_t a3)
{
  v11 = v7 + 32;
  v12 = (v11 ^ a1 ^ v6) + v5;
  v13 = *(v4 + v12 - 15);
  v14 = *(v4 + v12 - 31);
  v15 = v3 + v12;
  *(v15 - 15) = veorq_s8(v13, a3);
  *(v15 - 31) = veorq_s8(v14, a3);
  return (*(v10 + 8 * (((v8 == v11) * a2) ^ v9)))();
}

uint64_t sub_22382AB70@<X0>(_DWORD *a1@<X4>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  *a1 = 0;
  v17 = 229 * (a2 ^ (v15 + 3));
  v18 = a8 + a2 - 1716;
  a15 = (a2 - 567919132) ^ (1037613739 * ((137860727 - (&a14 | 0x8379677) + (&a14 | 0xF7C86988)) ^ 0x26CA44F7));
  v19 = (*(v16 + 8 * (a2 ^ 0xA8CF1DBA)))(&a14);
  return (*(v16 + 8 * ((1626 * (a14 == v17 + 1423874903)) ^ v18)))(v19);
}

uint64_t sub_22382AC3C@<X0>(unsigned int a1@<W8>)
{
  v4 = (v2 - 1484239174) & 0x5877AEFB;
  v5 = a1 - 1752961597 < v1 + 597199712;
  if (a1 > 0x687C123C != v1 + 597199712 < 139 * (v4 ^ 0x433u) - 1752962709)
  {
    v5 = v1 + 597199712 < 139 * (v4 ^ 0x433u) - 1752962709;
  }

  return (*(v3 + 8 * ((!v5 * (((v4 - 555) | 0x90F) - 2733)) ^ v4)))(2542004587, 1752961596, 3926);
}

uint64_t sub_22382AC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23, unsigned int a24, uint64_t a25)
{
  v30 = ((&a21 + 1948816709 - 2 * (&a21 & 0x74289545)) ^ 0x6A0A1810) * v25;
  a24 = ((a10 ^ 0x6FEBDF6E) - 671158280 + ((v28 ^ 0xDFD7BDE4) & (2 * a10))) ^ v30;
  a23 = a14;
  a25 = a20;
  a21 = v27 ^ v30;
  v31 = (*(v29 + 8 * v26))(&a21);
  return (*(v29 + 8 * (((4 * (a22 == 1423875590)) | ((a22 == 1423875590) << 10)) ^ v28)))(v31);
}

uint64_t sub_22382AD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 1426 * (v4 ^ 0xB4A);
  v7 = (v3 ^ 0xFFFFFFFFFFFFFC8FLL ^ (440 * (v6 ^ 0xB26u))) + v2;
  *(a1 - 7 + v7) = *(a2 - 7 + v7);
  return (*(v5 + 8 * ((108 * (((v6 - 2860) & v2) - 8 != v3)) ^ v6)))();
}

uint64_t sub_22382AF5C(int a1, unint64_t a2)
{
  v10 = a2 >= 0x10;
  v8 = (v5 - 1) & 0xF;
  v9 = -v6 - v5;
  v10 = v10 && v9 + 1 + v3 + v8 >= ((613 * (a1 ^ 0x71Fu)) ^ 0x984uLL);
  v11 = v10 && v9 + 1 + v2 + v8 >= ((a1 - 1819) | 0xADEu) - 2766;
  v12 = v9 + v4 + v8 + 5;
  v14 = !v11 || v12 < 0x10;
  return (*(v7 + 8 * ((117 * v14) ^ a1)))();
}

uint64_t sub_22382AFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, unint64_t a58, uint64_t a59, uint64_t a60, int a61)
{
  v62 = STACK[0x450];
  STACK[0x3E0] = *(v61 + 8 * (a61 - 1087));
  STACK[0x398] = v62;
  STACK[0x440] = a58;
  v63 = ((*(v62 + 68) & ((((a61 - 55) | 0x24E) - 535) ^ 0x467) ^ 0xD44F96C4) + 1572829549) ^ ((*(v62 + 68) & ((((a61 - 55) | 0x24E) - 535) ^ 0x467) ^ 0x1D7D3135) - 1802641762) ^ ((*(v62 + 68) & ((((a61 - 55) | 0x24E) - 535) ^ 0x467) ^ 0xC932A7F1) + 1086474330);
  *(v62 + v63 + 1980698711) = -48;
  v64.n128_u64[0] = 0x5050505050505050;
  v64.n128_u64[1] = 0x5050505050505050;
  return (*(v61 + 8 * ((358 * (v63 + 1980698655 < 0xFFFFFFC8)) | (a61 - 1104))))(a1, 9, a42, a41, v64);
}

uint64_t sub_22382AFF8()
{
  v3 = (v0 - 1881) | 0x122;
  v8 = v3 - ((&v8 - 1094401766 - 2 * (&v8 & 0xBEC4C11A)) ^ 0x586C6D0A) * v2 - 1249;
  v9 = v7;
  (*(v1 + 8 * (v3 + 2081)))(&v8);
  v8 = v3 - 779 - (((&v8 ^ 0x75457F16 | 0x50632AEA) - (&v8 ^ 0x75457F16) + ((&v8 ^ 0x75457F16) & 0xAF9CD514)) ^ 0xC38EF9EC) * v2 - 470;
  v9 = v6;
  (*(v1 + 8 * ((v3 - 779) ^ 0x14D4)))(&v8);
  return (v3 ^ 0xF4FF98F0) + (v5 ^ 0x5FDEFEEF) + ((2 * v5) & 0xBFBDFDDE) - 1423875590;
}

uint64_t sub_22382B038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = STACK[0x494];
  LODWORD(STACK[0x47C]) = LODWORD(STACK[0x494]) + 64;
  v8 = v7 + 1142463052 + ((a6 - 1111) | 0xA) + 1658 - 1605;
  v9 = LODWORD(STACK[0x4CC]) - 802342935;
  v10 = v8 < 0x44189A4C;
  v11 = v8 > v9;
  if (v9 < 0x44189A4C != v10)
  {
    v11 = v10;
  }

  return (*(v6 + 8 * ((56 * v11) ^ (a6 + 2691))))();
}

uint64_t sub_22382B0BC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unsigned int a33)
{
  v37 = *(&a21 + a2 + 72);
  v38 = ((a2 << ((v34 - 90) ^ 6)) & 0xFFDFFFD8) + (a2 ^ 0xFFEFFFED) + v33;
  *(a1 + v38) = (HIBYTE(v37) ^ 0xDF) - ((2 * (HIBYTE(v37) ^ 0xDF)) & 0xA0) + 80;
  *(a1 + v38 + 1) = (BYTE2(v37) ^ 0xFC) - ((2 * (BYTE2(v37) ^ 0xFC)) & 0xA0) + 80;
  *(a1 + v38 + 2) = (BYTE1(v37) ^ 0x36) - 2 * ((BYTE1(v37) ^ 0x36) & 0x58 ^ BYTE1(v37) & 8) + 80;
  *(a1 + v38 + 3) = v37 ^ 0x8E;
  return (*(v36 + 8 * (((a2 + 4 >= a33) * v35) ^ v34)))();
}

uint64_t sub_22382B2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, int a17, unsigned int a18, char *a19)
{
  v22 = 675097751 * (&a14 ^ 0x43402596);
  a18 = v22 ^ 0xBEB0E745;
  a19 = &a12;
  a14 = a11;
  a15 = (v21 + 1421510490) ^ v22;
  a16 = v22 ^ 0xD818BC0C;
  v23 = (*(v19 + 8 * (v21 + 2101)))(&a14);
  return (*(v19 + 8 * (((a17 == v20) * ((v21 + 1591) ^ 0x33C ^ (4 * (v21 ^ 0x6D0)))) ^ v21)))(v23);
}

uint64_t sub_22382B360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v23 - 104) = (v20 + 2018) ^ (((~((v23 - 128) | 0x703C91AE) + ((v23 - 128) & 0x703C91AE)) ^ 0xC4A8A22F) * v21);
  *(v23 - 120) = &a19;
  *(v23 - 112) = a16;
  v24 = (*(v19 + 8 * (v20 ^ 0x8B1)))(v23 - 128);
  return (*(v19 + 8 * (((*(v23 - 128) > (v22 + 1354)) * (v20 - 1895)) ^ v20)))(v24);
}

uint64_t sub_22382B3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, unsigned int a16)
{
  a16 = (v20 + 2646) ^ (843532609 * ((-855944796 - (&a13 | 0xCCFB51A4) + (&a13 | 0x3304AE5B)) ^ 0x6F49FADE));
  a13 = a11;
  a15 = &a10;
  (*(v16 + 8 * (v20 + 3828)))(&a13);
  LODWORD(a13) = (v20 + 2340) ^ (1504884919 * ((((2 * &a13) | 0x98648450) - &a13 + 869121496) ^ 0x37F1F533));
  a14 = a11;
  v21 = (*(v16 + 8 * (v20 ^ 0xF0F)))(&a13);
  return (*(v16 + 8 * (((HIDWORD(a13) == v18 + 248) * (v17 + (v20 ^ v19) + 860)) ^ v20)))(v21);
}

uint64_t sub_22382B598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  a16 = (1037613739 * ((2 * (&a15 & 0x4FD938F0) - &a15 + 807847692) ^ 0xE124EA73)) ^ 0x86F54BA0;
  v17 = (*(v16 + 32816))(&a15);
  return (*(v16 + 8 * ((1658 * (a15 == 1423875590)) ^ 0xB0Bu)))(v17);
}

uint64_t sub_22382B6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (1037613739 * (((&a12 ^ 0x19DEC460) & 0xBC5C35E0 | ~(&a12 ^ 0x19DEC460 | 0xBC5C35E0)) ^ 0x8B7F2300)) ^ 0x86F54BA0;
  v14 = (*(v13 + 32816))(&a12);
  return (*(v13 + 8 * ((1139 * (a12 == 1423875590)) ^ 0x291u)))(v14);
}

uint64_t sub_22382BC38@<X0>(int a1@<W4>, int a2@<W8>)
{
  if ((a2 + 314509055) <= 0x12 && ((1 << (a2 - 1)) & 0x40C05) != 0)
  {
    return (*(v3 + 8 * ((15 * ((*(v2 + 48 * v5 + 40) & 1) != 0)) ^ (a1 + 991222543))))();
  }

  else
  {
    return (*(v3 + 8 * ((a1 + v4 + 3073) ^ (16 * ((*(v2 + 48 * v5 + 40) & 8) != 0)))))(4294925278);
  }
}

uint64_t sub_22382BD18(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  v12 = a5 + 1;
  v13 = v9 > a7;
  if (v13 == v12 < v10)
  {
    v13 = v12 < a1;
  }

  return (*(v8 + 8 * ((!v13 * a8) ^ v11)))();
}

uint64_t sub_22382BE90@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFEE0 ^ (v3 - 610)) + v1;
  *(v4 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((1899 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_22382BEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 ^ 0x2Au) - 1797 - 1365) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((42 * ((v2 & 0xFFFFFFF8) - 8 != v3)) ^ v4 ^ 0x2A)))();
}

void sub_22382BFD8(unsigned int *a1, uint64_t a2, int a3)
{
  *(a1 + v5 + 4) = 85;
  *(a1 + (v4 + 2) + 4) = 73;
  v6 = ((((a3 - 885521450) | 0x140) + 1071643786) & 0xF4E7FE5F ^ (v3 + 1)) + v4 + 4;
  *a1 = v6;
  v7 = a1 + 1;
  *(v7 + (v4 + 3)) = 68;
  *(v7 + v4) = 47;
  *(v7 + (v4 + 4)) = 61;
  *(v7 + v6) = 0;
  JUMPOUT(0x223862AC8);
}

uint64_t sub_22382C078@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X3>, int a3@<W8>)
{
  v9 = v4 + 16;
  v10 = (v3 + 16);
  a1[12] = (v9 >> 28) | 0x50;
  a1[13] = (v9 >> 20) - (v7 & (v9 >> 19)) + 80;
  a1[14] = (v9 >> 12) - (v8 & (v9 >> 11)) + 80;
  a1[15] = (v5 + 1) ^ v6;
  *(v10 - 15) ^= *a1 ^ v6;
  *(v10 - 14) ^= a1[1] ^ v6;
  *(v10 - 13) ^= a1[2] ^ v6;
  *(v10 - 12) ^= a1[3] ^ v6;
  *(v10 - 11) ^= a1[4] ^ v6;
  *(v10 - 10) ^= a1[5] ^ v6;
  *(v10 - 9) ^= a1[6] ^ v6;
  *(v10 - 8) ^= a1[7] ^ v6;
  *(v10 - 7) ^= a1[8] ^ v6;
  *(v10 - 6) ^= a1[9] ^ v6;
  *(v10 - 5) ^= a1[10] ^ v6;
  *(v10 - 4) ^= a1[11] ^ v6;
  *(v10 - 3) ^= a1[12] ^ v6;
  *(v10 - 2) ^= a1[13] ^ v6;
  *(v10 - 1) ^= a1[14] ^ v6;
  *v10 ^= a1[15] ^ v6;
  return (*(a2 + 8 * ((a3 + 1866) | (8 * (v9 < 0x140)))))();
}

uint64_t sub_22382C088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, unsigned int a22)
{
  v25 = v22 ^ 0xD46;
  a21 = &a16;
  a19 = a17;
  a22 = (v25 + 388) ^ (843532609 * ((&a19 + 1939129724 - 2 * (&a19 & 0x7394C57C)) ^ 0x2FD991F9));
  (*(v24 + 8 * (v25 ^ 0x626)))(&a19);
  a20 = a17;
  LODWORD(a19) = (v25 + 82) ^ (1504884919 * ((2 * (&a19 & 0x1845EA20) - &a19 - 407235107) ^ 0x1C79A2C6));
  v26 = (*(v24 + 8 * (v25 + 1581)))(&a19);
  v27 = HIDWORD(a19) == ((97 * (v25 ^ 0x9CC)) ^ (v23 - 454));
  return (*(v24 + 8 * (((4 * v27) | (16 * v27)) ^ v25)))(v26);
}

uint64_t sub_22382C6C0(uint64_t a1, uint64_t a2)
{
  v7 = (a2 + v3);
  *v7 = v6;
  v7[1] = v6;
  return (*(v5 + 8 * (((v4 - 1622) | 0x654) ^ (2 * (((((v4 - 1622) | 0x654) + 804) | 0x15u) - 2437 != ((((v4 - 1622) | 0x654u) - 1644) & v2))))))();
}

uint64_t sub_22382C710(double a1, double a2, double a3, double a4, double a5, __n128 a6)
{
  v9[-1] = a6;
  *v9 = a6;
  return (*(v10 + 8 * (((v8 == 0) * v7) ^ v6)))();
}

uint64_t sub_22382C738@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 + 516;
  v4 = (a2 + 1546400617) & 0xA3D3CFBD;
  v5 = (*(v2 + 8 * ((a2 + 516) ^ 0x1CA2)))(a1, 2631218403) == 0;
  return (*(v2 + 8 * ((v5 * ((v3 ^ 0xFB2) - 4302 + v4)) ^ v3)))();
}

uint64_t sub_22382C814@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v45 = *(v44 + 8 * v41);
  v46 = (v35 + 4 + a1);
  *(v38 + v46) = *(v43 + (v46 & 0xC)) ^ HIBYTE(v36) ^ *((v46 & 0xC) + v42 + 5) ^ (((v35 + 4 + a1) & 0xC) * v37) ^ *(a35 + (v46 & 0xC) + 1) ^ 0x40;
  *(v38 + (v46 + 1)) = (((v46 + 1) & v39) * v37) ^ BYTE2(v36) ^ *(v43 + ((v46 + 1) & v39)) ^ *(((v46 + 1) & v39) + v42 + 5) ^ *(((v46 + 1) & v39) + a35 + 1) ^ 0x1C;
  *(v38 + (v46 + 2)) = (((v46 + 2) & 0xE) * v37) ^ BYTE1(v36) ^ *(v43 + ((v46 + 2) & 0xELL)) ^ *(((v46 + 2) & 0xELL) + v42 + 5) ^ *(a35 + ((v46 + 2) & 0xELL) + 1) ^ 0xC1;
  v47 = (v46 + 3);
  *(v38 + v47) = v36 ^ (v47 * v37) ^ *(v43 + v47) ^ *(v47 + v42 + 5) ^ *(v47 + a35 + 1) ^ v40;
  return v45();
}

uint64_t sub_22382C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a18 = (843532609 * ((((2 * (&a15 ^ 0x3A4E11B6)) | 0xFCD836EE) - (&a15 ^ 0x3A4E11B6) + 26469513) ^ 0x986F5E44)) ^ 0xB4E;
  a15 = a12;
  a17 = &a11;
  (*(v18 + 32608))(&a15);
  a16 = a12;
  LODWORD(a15) = (1504884919 * (((&a15 | 0xDE03B727) + (~&a15 | 0x21FC48D8)) ^ 0x25C0003D)) ^ 0xA1C;
  v20 = (*(v18 + 32696))(&a15);
  return (*(v18 + 8 * ((119 * ((((HIDWORD(a15) == v19) ^ 0x1611D3FE) & 1) == 0)) ^ 0x12Du)))(v20);
}

uint64_t sub_22382C9D8()
{
  v7 = v5 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v0 - v3 + v8 + 1;
  v10 = v0 + v8 + 1;
  v11 = v8 - v3 + 3 * (v4 ^ 0x43) + v1 - 809;
  v12 = v8 + v1 + 4;
  v13 = v8 - v3 + v2 + 6;
  v14 = v2 + (((v4 ^ 0x43) + 321) ^ 0x256) + v8;
  v16 = v10 > v5 && v9 < v7;
  if (v12 > v5 && v11 < v7)
  {
    v16 = 1;
  }

  v19 = v13 < v7 && v14 > v5 || v16;
  return (*(v6 + 8 * (((4 * (v19 ^ 1)) | (16 * (v19 ^ 1))) ^ v4)))();
}

uint64_t sub_22382CA7C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v3 = a1;
  *v8 = v2;
  v6 = a2 - 174;
  v12 = v9;
  v11 = a2 - 878 - (&v11 ^ 0xE6A8AC10) * v5 + 29;
  (*(v4 + 8 * (a2 + 2481)))(&v11);
  v12 = v10;
  v11 = v6 - (&v11 ^ 0xE6A8AC10) * v5 - 675;
  (*(v4 + 8 * (v6 ^ 0x15A1)))(&v11);
  return 0;
}

uint64_t sub_22382CA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3 - 127;
  v7 = v3 + 510;
  v8 = v5 - (**(a2 + 8) == (v6 + 22));
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 528399629;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v9 = *(a2 + 8) + (*(a2 + 4) - v8);
  v10 = 1361651671 * (((&v15 | 0x6DD723B1) + (~&v15 | 0x9228DC4E)) ^ 0x26BCEFCE);
  v18 = *(a1 + 96) + 528;
  v15 = v9;
  v17 = (v7 - 3208) ^ v10;
  v19 = v8 - v10 + ((v7 + v4) ^ 0xA9E12672);
  (*(a3 + 8 * (v7 ^ 0x1E35)))(&v15);
  v13 = v16;
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v8);
  return v13 ^ 0xB15AB03A;
}

uint64_t sub_22382CAFC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, int8x16_t a3@<Q3>, int8x16_t a4@<Q4>)
{
  v10 = v6 + 32;
  v11 = ((v5 - 3375) ^ v10) + v4;
  v12 = *(a1 + v11 - 15);
  v13 = *(a1 + v11 - 31);
  v14 = a2 + v11;
  *(v14 - 15) = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a3)), a4);
  *(v14 - 31) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a3)), a4);
  return (*(v9 + 8 * ((47 * (v8 != v10)) ^ v7)))();
}

uint64_t sub_22382CB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, int a20, unsigned int a21, char *a22)
{
  v25 = 675097751 * (((&a17 | 0x385939F4) - (&a17 & 0x385939F4)) ^ 0x7B191C62);
  a17 = a14;
  a21 = v25 ^ 0xBEB0E746;
  a18 = (v22 + 1421511649) ^ v25;
  a19 = v25 ^ 0x16B98482;
  a22 = &a13;
  v26 = (*(v23 + 8 * (v22 ^ 0x137C)))(&a17);
  return (*(v23 + 8 * (((a20 == v24) * (((v22 + 99859615) & 0xFA0C4D7E) + ((v22 + 1191) | 0x3A8) - 3016)) ^ v22)))(v26);
}

uint64_t sub_22382CC38()
{
  v5 = **(v3 + 8 * (v0 ^ 0x201));
  v6 = 1504884919 * ((~((v4 - 160) | v2) + ((v4 - 160) & v2)) ^ 0x9F4F506D06E67520);
  *(v4 - 152) = v6;
  *(v4 - 144) = (v0 - 1282281241) ^ v6;
  *(v4 - 140) = v0 - v6 - 2124586461;
  *(v4 - 160) = v0 - 1282281160 + v6;
  *(v4 - 128) = v0 - 1282281160 - v6 + 12;
  *(v4 - 124) = -1504884919 * ((~((v4 - 160) | v2) + ((v4 - 160) & v2)) ^ 0x6E67520);
  *(v4 - 136) = v5 + v6;
  v7 = (*(v1 + 8 * (v0 + 3468)))(v4 - 160);
  return (*(v1 + 8 * *(v4 - 156)))(v7);
}

uint64_t sub_22382CD80()
{
  v4 = ((v2 - 1917) ^ 0xB8E766DF) + v3 + 1240936811;
  v5 = v0 + 393028270;
  v6 = (v5 < 0x32A8ADFE) ^ (v4 < 0x32A8ADFE);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 0x32A8ADFE;
  }

  return (*(v1 + 8 * ((v7 * (((v2 + 1829377156) & 0x92F5DCED) - 101)) ^ v2)))();
}

uint64_t sub_22382CEF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7, int8x8_t a8)
{
  v14 = a2 - 8;
  v16.val[0].i64[0] = (v11 + v14 - 1) & 0xF;
  v16.val[0].i64[1] = (v11 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v11 + v14 + 13) & 0xF;
  v16.val[1].i64[1] = (v11 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v11 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (a3 + v14) & 0xF;
  v16.val[3].i64[0] = (v11 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v11 + v14) & 0xF ^ 8;
  *(a4 + v14) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a4 + v14), *(v8 + v16.val[0].i64[0] - 7)), veor_s8(*(v16.val[0].i64[0] + v9 - 4), *(v16.val[0].i64[0] + v10 - 2)))), a8), vmul_s8(*&vqtbl4q_s8(v16, a6), a7)));
  return (*(v13 + 8 * (((a1 == v14) * a5) ^ (v12 + 1164))))();
}

uint64_t sub_22382D1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, unsigned int a38, int a39, unsigned int a40, unsigned int a41, int a42, int a43, char a44)
{
  v64 = *(v46 + 8 * (v44 + 100));
  v65 = (a44 + (~(2 * a44) | 0xEF) - 119);
  if (v65 == 138)
  {
    return sub_22385DDEC(a22, HIDWORD(a21), a3, a4, a5, a6, 3623878656, 2599846768, a9, a10, a11, a12, a13);
  }

  if (v65 == 137)
  {
    v66 = *(&a28 + v48 + v49 + 679570289) ^ v45 | ((*(&a28 + v48 + 679571669) ^ v45) << 8) | ((*(&a28 + v48 + 679571670) ^ v45) << 16) | ((*(&a28 + v48 + 679571671) ^ v45) << 24);
    *v47 = v66 - 141958161 - ((2 * v66) & 0xEF13C7DE);
    return (*(v46 + 8 * ((2644 * ((v48 + 679571668) < 0x40)) ^ (v50 + 1429))))(1441792, 2146435072, 1094582272, 679571664, a5, a6, 3623878656, 4153009135, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v51 = (((a38 ^ 0xBA4281C1) + 1170046527) ^ ((a38 ^ 0x1BC698BD) - 466000061) ^ ((a38 ^ 0x7E782FA2) - 2121805730)) + (((a38 ^ 0xE9A6C85E) + 374945698) ^ ((a38 ^ 0xA0E598ED) + 1595565843) ^ ((a38 ^ 0x96BF666D) + 1765841299)) - 720854369;
    v52 = (((a39 ^ 0x6C990F24) - 1821970212) ^ ((a39 ^ 0xC0103B09) + 1072678135) ^ ((a39 ^ 0x737502F3) - 1937048307)) + (((a39 ^ 0x55B97DF1) - 1438219761) ^ ((a39 ^ 0xD6DCCB17) + 690173161) ^ ((a39 ^ 0x5C998038) - 1553563704)) + 438942500;
    v53 = (v52 ^ 0x35AEA215) & (2 * (v52 & 0xA5CEB298)) ^ v52 & 0xA5CEB298;
    v54 = ((2 * (v52 ^ 0x3EA68625)) ^ 0x36D0697A) & (v52 ^ 0x3EA68625) ^ (2 * (v52 ^ 0x3EA68625)) & 0x9B6834BC;
    v55 = v54 ^ 0x89281485;
    v56 = (v54 ^ 0x12400020) & (4 * v53) ^ v53;
    v57 = ((4 * v55) ^ 0x6DA0D2F4) & v55 ^ (4 * v55) & 0x9B6834BC;
    v58 = (v57 ^ 0x92010A0) & (16 * v56) ^ v56;
    v59 = ((16 * (v57 ^ 0x92482409)) ^ 0xB6834BD0) & (v57 ^ 0x92482409) ^ (16 * (v57 ^ 0x92482409)) & 0x9B6834B0;
    v60 = v58 ^ 0x9B6834BD ^ (v59 ^ 0x92000000) & (v58 << 8);
    a38 = v51 ^ ((v51 ^ 0xAB9A8CEF) + 1098205172) ^ ((v51 ^ 0xDD49B0EF) + 933657588) ^ ((v51 ^ 0x8C3CE75C) + 1725115457) ^ ((v51 ^ 0xEFFFEFBF) + 84944036) ^ 0xCAEC023D;
    a39 = v52 ^ (2 * ((v60 << 16) & 0x1B680000 ^ v60 ^ ((v60 << 16) ^ 0x34BD0000) & (((v59 ^ 0x968342D) << 8) & 0x1B680000 ^ 0x13480000 ^ (((v59 ^ 0x968342D) << 8) ^ 0x68340000) & (v59 ^ 0x968342D)))) ^ 0x6CB2ED3C;
    v61 = (((a40 ^ 0x4E695D59) - 1315528025) ^ ((a40 ^ 0x2A407A1B) - 708868635) ^ ((a40 ^ 0xBBD5119C) + 1143664228)) + (((a40 ^ 0x9B4D33A0) + 1689439328) ^ ((a40 ^ 0x7E28F222) - 2116612642) ^ ((a40 ^ 0x3A99F75C) - 983168860)) + 223165092;
    v62 = (((a41 ^ 0x4BBD0F7) - 79417591) ^ ((a41 ^ 0x870B76B8) + 2029291848) ^ ((a41 ^ 0x5C4C9091) - 1548521617)) + (((a41 ^ 0x6599F8D6) - 1704589526) ^ ((a41 ^ 0x262565CF) - 639985103) ^ ((a41 ^ 0x9C40ABC7) + 1673483321)) - 587633981;
    a40 = v61 ^ ((v61 ^ 0xB73BE8E8) + 93379584) ^ ((v61 ^ 0x50E8229E) - 498921078) ^ ((v61 ^ 0xD578D961) + 1741941367) ^ ((v61 ^ 0x7FFFDFFF) - 850072343) ^ 0x92A8FA36;
    a41 = v62 ^ ((v62 ^ 0x2DBFAC20) - 817844519) ^ ((v62 ^ 0xFB17DC77) + 434691728) ^ ((v62 ^ 0xB4566A8B) + 1453942900) ^ ((v62 ^ 0x7FFEE7DB) - 1660820188) ^ 0xC2FCCBD9;
    return v64(459800576, &a28 + 4, a3, a4, a5, a6, 3623878656, 2599846768, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v64, a25, a26, a27, a28, a29, a30);
  }
}

uint64_t sub_22382D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v61 = STACK[0x358];
  v62 = STACK[0x410];
  LODWORD(STACK[0x294]) = 1;
  STACK[0x2D8] = v61;
  LODWORD(STACK[0x374]) = 2107376323;
  STACK[0x2E8] = v61;
  if (v61)
  {
    v63 = v62 == 0;
  }

  else
  {
    v63 = 1;
  }

  v64 = !v63;
  return (*(v60 + 8 * ((116 * v64) ^ ((v59 - 1309) | 0x238))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_22382D6A0()
{
  v6 = v1 - 1;
  *(*(v4 + 8) + 4 * (v2 + v6)) = *(*(v4 + 8) + 4 * v6 - 4);
  return (*(v5 + 8 * (((v6 <= (v0 + 2824) - 3235) * v3) ^ v0)))();
}

uint64_t sub_22382D6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, unsigned int *a23, uint64_t a24, uint64_t a25, unsigned int *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, uint64_t a62)
{
  v69 = (*(v68 + 8 * (v66 ^ 0x1124)))(*a26, v64, v66 ^ a20 ^ 0xD7BC1010, a26[13] - 190197413, &STACK[0x17F0], v62, v63, &STACK[0x510]);
  v71 = v69;
  if (v69 == 268435459)
  {
    return (*(a62 + 8 * ((235 * (v65 < (a61 ^ 0x45Bu))) ^ (a61 + 1821))))(v69, v70);
  }

  if (v69)
  {
    v72 = 210068311 * ((1011219971 - ((v67 - 192) | 0x3C45FE03) + ((v67 - 192) | 0xC3BA01FC)) ^ 0x94D59B2B);
    *(v67 - 192) = &STACK[0x250];
    *(v67 - 184) = ((v69 ^ 0x7EDEFF2E) - 704667944 + ((2 * v69) & 0xFDBDFE5C)) ^ v72;
    *(v67 - 180) = a61 - v72 - 140;
    v73 = (*(a62 + 8 * (a61 ^ 0x141D)))(v67 - 192);
    LODWORD(STACK[0x390]) = v65;
    LODWORD(STACK[0x2AC]) = v71;
    return (*(a62 + 8 * (((LODWORD(STACK[0x250]) == 1423875590) * ((a61 + 238) ^ 0x603)) ^ (a61 - 1035))))(v73);
  }

  else
  {
    (*(a62 + 8 * (a61 + 3038)))(*a23, v62, v63);
    STACK[0x2F8] = 0;
    LODWORD(STACK[0x284]) = 0;
    v74 = a26[13];
    v75 = STACK[0x320];
    v76 = LODWORD(STACK[0x40C]) ^ 0xF17E5FF7;
    v77 = (2 * LODWORD(STACK[0x40C])) & 0xE2FCBFEE;
    v78 = 742307843 * ((((v67 - 192) | 0x492CD0C8) - ((v67 - 192) & 0x492CD0C8)) ^ 0x570E5D9D);
    *(v67 - 184) = &STACK[0x510];
    *(v67 - 152) = v75;
    *(v67 - 168) = a41;
    *(v67 - 192) = v76 - v78 + v77 + 1587408816;
    *(v67 - 188) = a61 - v78 - 1105;
    *(v67 - 176) = 1868678481 * (((a20 & 0x7FFFFFFF ^ 0x717B3154) - 1813990595) ^ ((a20 & 0x7FFFFFFF ^ 0xD09A4AC5) + 838977710) ^ ((a20 & 0x7FFFFFFF ^ 0x765D6A88) + ((a61 + 1741) | 0xD0) - 1798906644)) - v78 - 1053100968;
    *(v67 - 172) = v78 + 1868678481 * v74 + 867867189;
    v79 = (*(a62 + 8 * (a61 + 2918)))(v67 - 192);
    v80 = *(v67 - 160);
    LODWORD(STACK[0x250]) = v80;
    return (*(a62 + 8 * ((791 * (v80 == 1423875590)) ^ (a61 + 191))))(v79);
  }
}

uint64_t sub_22382D728@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v2 + 410118845) & 0xE78E0DAF ^ 0x5D5) - v1;
  v6 = *(v3 + v5 - 15);
  v7 = *(v3 + v5 - 31);
  v8 = a1 + v5;
  v9.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v9.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v10.i64[0] = 0x5050505050505050;
  v10.i64[1] = 0x5050505050505050;
  *(v8 - 15) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v9)), v10);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v9)), v10);
  return (*(v4 + 8 * ((243 * (v1 == 96)) ^ v2)))();
}

uint64_t sub_22382D7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if ((v16 & 0x40) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = 6;
  }

  if ((v16 & 2) == 0)
  {
    v20 = 1;
  }

  LODWORD(STACK[0x350]) = v20;
  LODWORD(STACK[0x390]) = 0;
  LODWORD(STACK[0x2AC]) = 0;
  return (*(v19 + 8 * (((LODWORD(STACK[0x250]) == a5) * ((v17 + 238) ^ 0x603)) ^ (v17 - 1035))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, v18, a16);
}

uint64_t sub_22382D7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LOBYTE(STACK[0x26B]) = (v16 & 0x20) == 0;
  if ((v16 & 0x20) != 0)
  {
    v19 = 5;
  }

  else
  {
    v19 = 2;
  }

  LODWORD(STACK[0x2D4]) = v19;
  if (v17 <= -836079813)
  {
    if (v17 <= -1564220515)
    {
      if (v17 <= -1934326577)
      {
        if ((v17 + 2141316917) >= 2 && v17 != -2048767299)
        {
          v20 = -1980931846;
          goto LABEL_37;
        }

LABEL_39:
        *&STACK[0x4F0] = xmmword_223907E70;
        return (*(v18 + 8 * (((((a7 - 1091) | 8) ^ 0x372) * ((v16 & 0x20) == 0)) ^ (a7 - 607))))(a1, a2, a3, a4, a5, a6);
      }

      if (v17 > -1846545414)
      {
        if (v17 == -1846545413)
        {
          goto LABEL_39;
        }

        v21 = -1589089184;
      }

      else
      {
        if (v17 == -1934326576)
        {
          goto LABEL_39;
        }

        v21 = -1904088339;
      }

      goto LABEL_46;
    }

    if (v17 <= -1389671799)
    {
      if (v17 == -1564220514 || v17 == -1506237098)
      {
        goto LABEL_39;
      }

      v20 = -1452352673;
      goto LABEL_37;
    }

    if (v17 <= -1001603810)
    {
      if (v17 == -1389671798)
      {
        goto LABEL_39;
      }

      v20 = -1022005127;
      goto LABEL_37;
    }

    if (v17 == -1001603809)
    {
      goto LABEL_39;
    }

    v21 = -973101348;
LABEL_46:
    if (v17 != v21)
    {
      return sub_22382D7B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    goto LABEL_47;
  }

  if (v17 > -137574488)
  {
    if (v17 > 361445545)
    {
      if (v17 > 948411086)
      {
        if (v17 == 1668265375)
        {
          goto LABEL_39;
        }

        v21 = 948411087;
        goto LABEL_46;
      }

      if (v17 == 361445546)
      {
        goto LABEL_39;
      }

      v20 = 717130868;
LABEL_37:
      if (v17 != v20)
      {
        return sub_22382D7B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
      }

      goto LABEL_39;
    }

    if (v17 == -137574487)
    {
      goto LABEL_39;
    }

    if (v17 != -23669286)
    {
      v20 = 126315512;
      goto LABEL_37;
    }
  }

  else
  {
    if (v17 > -387807991)
    {
      if (v17 > -296450389)
      {
        if (v17 == -296450388)
        {
          goto LABEL_39;
        }

        v20 = -294364483;
      }

      else
      {
        if (v17 == -387807990)
        {
          goto LABEL_39;
        }

        v20 = -301124181;
      }

      goto LABEL_37;
    }

    if (v17 == -836079812)
    {
      goto LABEL_39;
    }

    if (v17 != -508280602)
    {
      v20 = -417364361;
      goto LABEL_37;
    }
  }

LABEL_47:
  *&STACK[0x4F0] = xmmword_223907E80;
  return (*(v18 + 8 * (((((a7 - 1592981049) & 0x5EF2F1FD) - 23) * ((v16 >> 5) & 1)) | (a7 - 383))))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22382DAD4(uint64_t a1)
{
  v7 = (a1 + v1 - 16);
  v8 = (v2 + v1 - 16);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * ((((v1 & 0xFFFFFFE0) != 32) * (v5 ^ (v4 + 3146) ^ 0x218)) ^ (v3 + v5 + 1641))))();
}

uint64_t sub_22382DB24(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = 675097751 * (((a1 | 0xC62D19F9) - a1 + (a1 & 0x39D2E606)) ^ 0x856D3C6F);
  v2 = *(a1 + 52) + v1;
  v3 = *(a1 + 48) + v1;
  v4 = *(a1 + 24);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16) + v1;
  v8 = qword_2836EB200[v2 + 1776823356];
  if (v3 == 736647387 || v3 == 736647384)
  {
    __asm { BRAA            X22, X17 }
  }

  v10 = *(a1 + 40);
  v11 = 1037613739 * ((2 * ((&v14 ^ 0x374B7B17) & 0x4C399C1A) - (&v14 ^ 0x374B7B17) + 868639717) ^ 0xD58F358D);
  v18 = (v2 + 1776826063) ^ v11;
  v15 = v10;
  v16 = v5;
  v14 = v7 + 181758252 + v11;
  v17 = v4;
  v20 = v6;
  result = (*(v8 + 8 * (v2 + 1776827485)))(&v14);
  *(a1 + 32) = v19;
  return result;
}

uint64_t sub_22382DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a17 = &a12;
  a15 = a10;
  a18 = (v20 + 2612) ^ (843532609 * (((&a15 | 0xEEA2A3A0) - &a15 + (&a15 & 0x115D5C58)) ^ 0xB2EFF725));
  (*(v18 + 8 * (v20 + 3794)))(&a15);
  a16 = a10;
  LODWORD(a15) = (v20 + 2306) ^ (1504884919 * ((2 * (&a15 & 0x132A5088) - &a15 + 1825943411) ^ 0x97161868));
  v21 = (*(v18 + 8 * (v20 ^ 0xEED)))(&a15);
  return (*(v18 + 8 * ((1270 * (HIDWORD(a15) == ((v20 - 534396203) & 0x1FDA3F5F ^ (v19 + 93)))) ^ v20)))(v21);
}

uint64_t sub_22382DFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, uint64_t a48, int a49, uint64_t a50, unsigned int a51, uint64_t a52, uint64_t a53, uint64_t a54, _DWORD *a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v65 = 4 * (v60 ^ v61 ^ v63);
  v66 = -307157381 * ((*(*a56 + (*a55 & a51)) ^ (a59 + v65)) & 0x7FFFFFFF);
  v67 = v66 ^ HIWORD(v66);
  v68 = -307157381 * v67;
  v69 = 4 * ((-307157381 * v67) >> 24);
  *(a60 + v65) = *(a59 + v65) ^ (*(a60 + v65) - ((2 * *(a60 + v65)) & 0xE840A6DC) - 199208082) ^ (((v64 - 1109) & 0x55A631AD ^ 0xC500BEB3 ^ (((((v64 - 1109) ^ v61) & v61) >> (__clz((v64 - 1109) ^ v61 | 1) ^ 0x1F)) | 0xFFFFFFFE)) + 1153753828) ^ *(qword_2836EB200[v64 - 946] + v69) ^ *(qword_2836EB200[a49] + 4 * (HIBYTE(v68) + 6) - 4) ^ *(qword_2836EB200[a47] + v69 - 8) ^ (645595136 * v67) ^ v68 ^ (-857024511 * HIBYTE(v68)) ^ 0x8BE4775E;
  return (*(a3 + 8 * ((3486 * (v62 - 1 == ((2 * (v64 - 616)) ^ 0x7B8 ^ (139 * ((v64 - 616) ^ 0x1F8))))) ^ (v64 - 616))))();
}

void h5eRUOOOhxuaBmELCqQZZEcx()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D880) ^ 0x74)) ^ byte_223907B60[byte_223902660[(-33 * ((qword_27D09D558 - dword_27D09D880) ^ 0x74))] ^ 0xF0]) + 152];
  v1 = qword_2836EB200[((-33 * ((qword_27D09D558 - *v0) ^ 0x74)) ^ byte_223907B60[byte_223902660[(-33 * ((qword_27D09D558 - *v0) ^ 0x74))] ^ 0xF0]) + 39];
  v2 = *v1 - *v0 - &v4;
  *v0 = 1321670111 * (v2 - 0x448BD34F94FDFB74);
  *v1 = 1321670111 * (v2 ^ 0x448BD34F94FDFB74);
  v5[1] = (1037613739 * ((2 * (v5 & 0x3FF578B0) - v5 - 1073051830) ^ 0x1108AA35)) ^ 0x86F54BA0;
  LOBYTE(v1) = -33 * ((*v1 + *v0) ^ 0x74);
  v3 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D880) ^ 0x74)) ^ byte_2238FA560[byte_223907C60[(-33 * ((qword_27D09D558 + dword_27D09D880) ^ 0x74))] ^ 0xFC]) - 132];
  (*(v3 + 8 * ((*(off_2836EB888 + (*(off_2836EB588 + v1 - 4) ^ 0xBBu) - 12) ^ v1) + 4002)))(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22382E478@<X0>(int a1@<W8>)
{
  v6 = *(v4 + 48 * v1 + 36);
  v8 = v6 + 1157818376 >= (v2 + a1) || v6 == ((a1 + 2281) ^ (v3 + 1633) ^ 0x1E9C687);
  return (*(v5 + 8 * ((7 * v8) ^ (a1 + 2281))))();
}

uint64_t sub_22382E4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v4 + v3 + 1387) - 1396 + v2;
  v7 = *(a2 + v6 - 15);
  v8 = *(a2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((2108 * ((v2 & 0xFFFFFFE0) == 32)) ^ (v4 + v3 + 1255))))();
}

uint64_t sub_22382E534(uint64_t result)
{
  v1 = 1504884919 * (((result | 0x7E4CC78B0061B904) - (result | 0x81B33874FF9E46FBLL) - 0x7E4CC78B0061B905) ^ 0x521C9D31FBA20E1FLL);
  v2 = *(result + 24) - v1;
  v3 = *(result + 32) + v1;
  v4 = *(result + 36) + v1;
  v5 = *(result + 8) ^ v1;
  v6 = *result - v1;
  v7 = *(result + 16) ^ v1;
  v8 = v2 == v5;
  v9 = v2 > v5;
  v10 = v8;
  if ((v4 & 1) == 0)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v3;
  }

  *(result + 4) = v7 ^ v11;
  return result;
}

void XpqjnD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v8 = a6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v11 = v8 || a7 == 0 || a8 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_22382E658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, _DWORD *a21, uint64_t a22, uint64_t a23, int *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{
  v36 = ((((~a12 + v32) ^ (~a12 + v32)) - 1) & (a12 - v32)) >= 0;
  *a21 = 0;
  v37 = ((a31 ^ 0x1BA) - 1658039527) & ((v31 ^ (v31 >> 11)) << 7) ^ v31 ^ (v31 >> 11);
  v38 = ((a31 ^ 0x2DC) + 5117) ^ a12 ^ a31 ^ 0x2DC ^ v37 ^ (v37 << (15 - v36)) & 0xEFC60000 ^ ((((a31 ^ 0x2DC) + 5117) ^ a12 ^ a31 ^ 0x2DC ^ v37 ^ (v37 << (15 - v36)) & 0xEFC60000) >> 18);
  v39 = (v33 + (a20 - 1));
  v40 = -307157381 * ((*(*a25 + (*a24 & 0xFFFFFFFFDC9CC93CLL)) ^ v39) & ((a31 ^ 0x1BA) + 2147482776));
  v41 = -307157381 * (v40 ^ HIWORD(v40));
  v42 = v41 >> ((a31 ^ 0xBAu) - 79);
  LOBYTE(v41) = *(*(v35 + 8 * (a31 ^ 0x272)) + v42 + 1) ^ *(*(v35 + 8 * (a31 ^ 0x282)) + v42 - 8) ^ *(*(v35 + 8 * ((a31 ^ 0x1BA) - 707)) + v42 + 1 - 4) ^ v41 ^ (81 * v42);
  *v39 = v41 ^ v38;
  return (*(v34 + 8 * ((15 * (a20 == (v41 != v38))) ^ a31 ^ 0x1BA)))();
}

uint64_t sub_22382E998@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int8x16_t *a3@<X2>, int a4@<W3>, unsigned int a5@<W8>, int8x16_t a6@<Q0>, int8x16_t a7@<Q3>)
{
  v11 = (a2 + a5);
  v12 = vaddq_s8(vsubq_s8(v11[1], vandq_s8(vaddq_s8(v11[1], v11[1]), a7)), a6);
  *a3 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a7)), a6);
  a3[1] = v12;
  return (*(v9 + 8 * (((((v7 + 988737266) & v10 ^ a1) == 64) * a4) ^ (v8 + v7 + 1837))))();
}

uint64_t sub_22382EA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, int a26, int a27, int a28, int a29, uint64_t a30, int a31, int a32)
{
  *v36 = (v35 - v32 >= ~v32) ^ v36[623];
  *(v38 - 144) = (v37 + 1) ^ v34;
  *(v38 - 128) = (v32 ^ 0x26E ^ a28 ^ 3u) + v34;
  *(v38 - 120) = v34 ^ 1;
  *(v38 - 136) = a27;
  *(v38 - 132) = a29 ^ v34;
  *(v38 - 160) = a26;
  *(v38 - 156) = 1699921891 - v34 + a32;
  v39 = (*(v33 + 8 * a25))(v38 - 160);
  return (*(v33 + 8 * *(v38 - 152)))(v39);
}

uint64_t sub_22382EAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int a3, int a4)
{
  v7 = (a1 + v4 - 16);
  v8 = (a2 + v4 - 16);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * ((((v4 & 0xFFFFFFE0) != 32) * ((v5 + 115263030) & 0xB52A0FCA ^ 0xF1F)) ^ (a4 + v5 + 3291))))();
}

uint64_t sub_22382EB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a18 = (v18 + 2430) ^ (843532609 * ((&a15 + 1970333929 - 2 * (&a15 & 0x7570E8E9)) ^ 0x293DBC6C));
  a17 = &a12;
  a15 = a13;
  (*(v20 + 8 * (v18 + 3612)))(&a15);
  a16 = a13;
  LODWORD(a15) = (v18 + 2124) ^ (1504884919 * ((((2 * &a15) | 0x6F78F0DE) - &a15 - 935098479) ^ 0xCC7FCF74));
  v21 = (*(v20 + 8 * (v18 | 0xE27)))(&a15);
  return (*(v20 + 8 * (((HIDWORD(a15) == v19) * (554 * (v18 ^ 0x1D3) + 1626)) ^ v18)))(v21);
}

uint64_t sub_22382EC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int32x4_t a13)
{
  v16 = v13 - 137;
  v17 = (v13 + 4);
  a13 = vdupq_n_s32(0x94FFEC47);
  return (*(v14 + 8 * ((51 * (v17 - 2082 == (v15 & 0x7FFFFFF8))) ^ v16)))(4 * v17 - 8328, 51, v17 - 2082 - (v15 & 0x7FFFFFF8) + v17 - 2082, &a13.i8[4 * v17 - 8328]);
}

uint64_t sub_22382ECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, unsigned int a22, uint64_t a23)
{
  v24 = 742307843 * (&a20 ^ 0x1E228D55);
  v25 = *(v23 + 8);
  v26 = *(v25 + 8);
  LODWORD(v25) = (*v25 ^ 0xEFFEEF7E) + 1475076072 + ((2 * *v25) & 0xDFFDDEFC);
  a21 = v26;
  a22 = v25 ^ v24;
  a20 = (a14 - 1462826647) ^ v24;
  a23 = a17;
  (*(a11 + 32976))(&a20);
  v27 = *(v23 + 8);
  v28 = *(v27 + 24);
  v29 = 742307843 * (((&a20 | 0xAA184298) - (&a20 & 0xAA184298)) ^ 0xB43ACFCD);
  a22 = (((a14 - 1462827943) | 0xA1) + (*(v27 + 16) ^ 0x47EBEF76) + ((2 * *(v27 + 16)) & 0x8FD7DEEC) - 73905) ^ v29;
  a20 = (a14 - 1462826647) ^ v29;
  a21 = v28;
  a23 = a17;
  v30 = (*(a11 + 32976))(&a20);
  return (*(a11 + 8 * ((992 * (*(v23 + 16) <= 1u)) ^ (a14 - 1462826430))))(v30);
}

void sub_22382EF3C()
{
  v4 = (((v3 + 927906576) & 0xC8B149E7) - 1500214656) * (*(v0 + 20) + v2) - 1217873025;
  v5 = ((v4 ^ 0xF39F1D3) - 2092551151) ^ v4 ^ ((v4 ^ 0x1828006E) - 1806187090) ^ ((v4 ^ 0x1B0E35FC) - 1754140608) ^ ((v4 ^ 0x7F9FFE7D) - 203408449);
  *v6 = (HIBYTE(v5) ^ 0x73) - 2 * ((HIBYTE(v5) ^ 0x73) & 0x58 ^ HIBYTE(v5) & 8) + 80;
  v6[1] = BYTE2(v5) - ((v5 >> 15) & 0xA0) - 48;
  v6[2] = (BYTE1(v5) ^ 0x3A) - ((2 * (BYTE1(v5) ^ 0x3A)) & 0xA0) + 80;
  v6[3] = v5 ^ 0x6C;
  *(v0 + 16) = *(v1 + 24);
}

uint64_t sub_22382F088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x3C4]) = 801774386;
  v5 = 4 * (v4 ^ 0x566);
  v6 = STACK[0x288];
  v7 = v5 ^ 0x1E2u;
  STACK[0x368] = v7 - 971;
  *(v6 + v7 - 971) = (&STACK[0x368] ^ 0xBA) * (&STACK[0x368] + 17);
  return (*(a4 + 8 * ((2436 * (STACK[0x368] == 0)) ^ v5)))();
}

uint64_t sub_22382F0A0@<X0>(int a1@<W8>)
{
  v4 = ((v3 ^ 0x636) + 796932901) & 0xD07FCFBF;
  v5 = (a1 ^ 0xFEFFFF77) + 1440652943 + ((v4 ^ 0xFDFFF548) & (2 * a1));
  v6 = (v4 + 1924893006) & 0x8D446BEF;
  *v1 = v9;
  v11 = v6 - 143681137 * ((1784300441 - (&v11 | 0x6A5A4399) + (&v11 | 0x95A5BC66)) ^ 0x730D1076) + 545;
  v12 = v8;
  (*(v2 + 8 * (v6 + 3875)))(&v11);
  v12 = v10;
  v11 = (v6 ^ 0x5DF) - 143681137 * ((&v11 - 546281341 - 2 * (&v11 & 0xDF706883)) ^ 0x39D8C493) - 564;
  (*(v2 + 8 * ((v6 ^ 0x5DF) + 2766)))(&v11);
  return v5 - 1423875590;
}

uint64_t sub_22382F2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60)
{
  v62 = *(v60 + 1428);
  STACK[0x2C8] = v60 + 1432;
  if (v62 <= 0x20 && ((1 << v62) & 0x100110000) != 0)
  {
    return (*(v61 + 8 * (((*(a9 + 476) == 1) * a60) ^ (a7 - 850))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
  }

  else
  {
    return (STACK[0x3A0])(2911);
  }
}

uint64_t sub_22382F600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = &a15;
  *(v19 - 128) = (v17 + 97) ^ (1504884919 * ((476507013 - ((v19 - 136) | 0x1C66EB85) + ((v19 - 136) | 0xE399147A)) ^ 0x185AA361));
  *(v19 - 136) = v15;
  v20 = (*(v16 + 8 * (v17 ^ 0x114D)))(v19 - 136);
  return (*(v16 + 8 * (((v18 == ((v17 + 1709) ^ 0x7F0)) * (v17 ^ 0xD2C)) ^ v17)))(v20);
}

uint64_t sub_22382F714@<X0>(_DWORD *a1@<X5>, int a2@<W8>)
{
  v5 = 2 * (v2 ^ 0x791);
  *a1 = a2;
  v10 = v8;
  v9 = v5 - ((((&v9 | 0x845F8BCA) ^ 0xFFFFFFFE) - (~&v9 | 0x7BA07435)) ^ 0x9D08D825) * v3 - 128;
  (*(v4 + 8 * (v5 ^ 0x138E)))(&v9);
  v9 = v5 + 1552 - ((&v9 & 0xBEA652 | ~(&v9 | 0xBEA652)) ^ 0x19E9F5BD) * v3 - 1680;
  v10 = v7;
  (*(v4 + 8 * ((v5 + 1552) ^ 0x199E)))(&v9);
  return 0;
}

uint64_t sub_22382F870()
{
  v3 = (v1 + 168591294) | 0x71031400;
  *v0 = v7;
  v0[1] = v10;
  v0[2] = v6;
  v0[3] = v9;
  v11 = -2064617984 - 143681137 * (((&v11 | 0xEB23C364) - &v11 + (&v11 & 0x14DC3C98)) ^ 0xD8B6F74) + v3;
  v12 = v5;
  (*(v2 + 8 * (v3 ^ 0x7B0F850E)))(&v11);
  v11 = v3 - 2064617984 - 143681137 * (((&v11 | 0xDAF46C6E) - &v11 + (&v11 & 0x250B9390)) ^ 0x3C5CC07E);
  v12 = v8;
  (*(v2 + 8 * (v3 - 2064614654)))(&v11);
  return 0;
}

uint64_t sub_22382FA18(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v16 = (v5 ^ 0x94FFEC47) + v7 + a4 * (*(*(v8 + 8) + 4 * a3) ^ v5);
  *(v14 + 4 * v15) = v16 + v5 - ((v13 ^ v9 ^ v6) & (2 * v16));
  return (*(v4 + 8 * (((((5 * (v13 ^ v10)) ^ v11) + a3 == a2) * v12) ^ v13)))();
}

uint64_t sub_22382FA98@<X0>(int a1@<W0>, unsigned int a2@<W8>)
{
  v10 = v2 < v3;
  *(v9 - 220 + a2) = *(v8 + v4) - ((2 * *(v8 + v4)) & 0xA0) + 80;
  if (v10 == v4 + 1 > v5)
  {
    v10 = ((v6 + 600025360) & 0xDC3C4F56 ^ (a1 + 1)) + v4 < v2;
  }

  return (*(v7 + 8 * ((63 * !v10) ^ v6)))();
}

uint64_t sub_22382FB80@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((1339 * (v5 == ((v3 - 434004860) & 0x19DE69AA) - 2344)) ^ (v3 + 2068))))();
}

uint64_t sub_22382FBCC()
{
  v3 = (v0 - 2102) | 0x690;
  v8 = v0 - 1854 - ((&v8 - 2098816293 - 2 * (&v8 & 0x82E69ADB)) ^ 0x644E36CB) * v2 + 425;
  v9 = v7;
  (*(v1 + 8 * ((v0 - 1854) ^ 0x1155)))(&v8);
  v9 = v5;
  v8 = v3 - ((&v8 - 2141826470 - 2 * (&v8 & 0x8056525A)) ^ 0x66FEFE4A) * v2 - 1007;
  (*(v1 + 8 * (v3 + 2323)))(&v8);
  return (v6 ^ 0xF7FEDE36) + ((v0 - 1854) ^ 0x5CDFBE8D) + ((2 * v6) & 0xEFFDBC6C) - 1423875590;
}

uint64_t sub_22382FC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 104) = (v18 + 3798) ^ (((((v19 - 128) | 0x6A1B6CA0) - (v19 - 128) + ((v19 - 128) & 0x95E49358)) ^ 0x2170A0DE) * v17);
  *(v19 - 120) = &a15;
  *(v19 - 112) = v15;
  v20 = (*(v16 + 8 * (v18 | 0xF45)))(v19 - 128);
  return (*(v16 + 8 * (((*(v19 - 128) < 0x3B9D8601u) * (((v18 + 8) | 0x20) - 128)) ^ v18)))(v20);
}

uint64_t sub_22382FF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = v7 + 8;
  *(a3 + (a5 ^ v11) + v6) = *(v8 + (a5 ^ v11) + v6);
  return (*(v10 + 8 * (((a4 == v11) * a6) ^ v9)))();
}

uint64_t sub_22382FF80(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a1 ^ 0xC09;
  v16 = *(v12 + 8 * (a1 ^ 0x95F)) - 8;
  v17 = ((a1 ^ 0xC09) - 1266206609) & 0x4B78CB89;
  v18 = *(v12 + 8 * ((a1 ^ 0xC09) - 1187)) - 4;
  v19 = *(v16 + (v11[3] ^ 0xDELL)) ^ v11[3];
  v20 = ((*(v18 + (((a1 ^ 9) + 111) & 0x89 ^ 0xF6u ^ v11[4])) + 105) ^ 0xEA) << 24;
  v21 = *(v12 + 8 * (v15 ^ 0x5B0)) - 12;
  v22 = *(v21 + (v11[14] ^ 0x82));
  v23 = *(v12 + 8 * (v15 - 1156)) - 12;
  v24 = *(v23 + (v11[5] ^ 0x6DLL)) << 16;
  v25 = ((((*(v21 + v11[6]) << 8) ^ 0x6BB6F302) & (v20 ^ 0xB7F7FF0A) | v20 & 0x94000000) ^ 0xBAB12A2A) & (v24 ^ 0xFF12FF6E);
  v26 = v24 & 0xF80000;
  LOBYTE(v24) = *(v16 + (v11[15] ^ 0xFDLL)) ^ v11[15];
  v27 = (*(v18 + (v11[8] ^ 0x70)) << 24) + 1761607680;
  v28 = *(v23 + (v11[13] ^ 0xC7));
  v29 = *(v16 + (v11[11] ^ 0xD3)) ^ v11[11];
  v30 = ((*(v23 + (v11[1] ^ 0x40)) << 16) ^ 0xA7C04BD4) & (v19 ^ 0xB7FF6FD4) ^ (v19 & 0x2B | 0x10472400);
  v31 = (*(v18 + (v11[12] ^ 0xBDLL)) + 105);
  v32 = ((*(v18 + (v11[12] ^ 0xBDLL)) + 105) << 24) ^ 0x84000000;
  LODWORD(v23) = *(v23 + (v11[9] ^ 0x7CLL)) << 16;
  LODWORD(v18) = *(v18 + (*v11 ^ 9));
  v205 = (v23 ^ 0xFF5BFFFF) & ((v29 & 0xB9 | (((v27 ^ 0x7FFFFFC) & ((*(v21 + (v11[10] ^ 0x48)) << 8) ^ 0xA76F79C) | v27 & 0xF5000000) ^ 0xFF752FDA) & (v29 ^ 0xFF7FFF32)) ^ 0xA4016D88) ^ v23 & 0xFFFDFFFF;
  v208 = (((v18 << 24) + 1761607680) ^ 0x72FFFFFF) & (v30 & 0x31380234 ^ 0xD2F8841D ^ ((*(v21 + (v11[2] ^ 0x87)) << 8) ^ 0x6C7A6CB) & (v30 ^ 0xE030903C)) ^ ((v18 << 24) + 1761607680) & 0x1A000000;
  v33 = (((v32 | 0xFFFFFF) & ((v28 << 16) ^ 0x1D76109D) | v32 & 0xE2000000) ^ 0x92301AC3) & (((v24 & 0xF8 ^ 0xFFFFFF87) & ((v22 << 8) ^ 0xD4EE53E8) | v24 & 0x17) ^ 0x2B118780) ^ ((v24 & 0xF8 ^ 0xFFFFFF87) & ((v22 << 8) ^ 0xD4EE53E8) & 0x506AF5A1 | v24 & 1);
  v199 = v33;
  v34 = (*(v16 + (v11[7] ^ 0x2FLL)) ^ v11[7] ^ 0xFFFFFF7B) & (v26 ^ 0x88BF1D7 ^ v25);
  *(v14 - 116) = v34;
  v35 = v34 ^ 0x5023BB53;
  v36 = v15;
  v37 = qword_2836EB200[v15 ^ 0x5EE];
  v38 = qword_2836EB200[v15 ^ 0x539] - 12;
  v39 = qword_2836EB200[v15 ^ 0x578] - 8;
  v40 = qword_2836EB200[v15 - 1092] - 12;
  v41 = v208 ^ __ROR4__(*(v37 + 4 * (v28 ^ 0x4A)), 27) ^ (-219980569 * *(v38 + 4 * (v31 ^ 0xAFu)) - 10413496) ^ (690312999 * *(v39 + 4 * (v24 ^ 0xFCu)) + 2087111000) ^ (-36060539 * *(v40 + 4 * (v22 ^ 0x93)) - 843064844) ^ 0xDC183278;
  *(v14 - 144) = v41 ^ v35;
  v42 = v205 ^ 0x28EDC48A ^ v41 ^ v35;
  v197 = v42 ^ v33;
  LODWORD(v22) = (690312999 * *(v39 + 4 * ((v42 ^ v33) ^ 0xCFu)) + 2087111000) ^ __ROR4__(*(v37 + 4 * (((v42 ^ v33 ^ 0x376F7390) >> 16) ^ 0x4Cu)), 27) ^ (-36060539 * *(v40 + 4 * (((v42 ^ v33 ^ 0x7390) >> 8) ^ 0xB0u)) - 843064844) ^ (-219980569 * *(v38 + 4 * (((v42 ^ v33) >> 24) ^ 0x50)) - 10413496) ^ 0xBA9AE314;
  v43 = v42 ^ v33 ^ 0x817231B6;
  v44 = v22 ^ v35;
  *(v14 - 148) = v42;
  v45 = v22 ^ v35 ^ v42;
  v196 = v22 ^ v35;
  *(v14 - 152) = v45;
  v46 = v45 ^ 0xAD8A6704;
  v47 = v45 ^ 0xAD8A6704 ^ v43;
  v48 = (-219980569 * *(v38 + 4 * (HIBYTE(v47) ^ 0xA3)) - 10413496) ^ (690312999 * *(v39 + 4 * (v47 ^ 0x4Bu)) + 2087111000) ^ __ROR4__(*(v37 + 4 * (BYTE2(v47) ^ 0x35u)), 27);
  *(v14 - 140) = v41;
  v49 = v22 ^ v41;
  *(v14 - 160) = v49;
  *(v14 - 156) = v47;
  v50 = v48 ^ (-36060539 * *(v40 + 4 * (BYTE1(v47) ^ 0x7Eu)) - 843064844) ^ v49 ^ 0x836C15A8;
  *(v14 - 168) = v50 ^ v44;
  LODWORD(v22) = v50 ^ v44 ^ 0x826EEA5F;
  v51 = v22 ^ v43;
  v52 = (-36060539 * *(v40 + 4 * (BYTE1(v51) ^ 0x10u)) - 843064844) ^ (690312999 * *(v39 + 4 * ((v22 ^ v43) ^ 0x91u)) + 2087111000) ^ __ROR4__(*(v37 + 4 * (BYTE2(v51) ^ 0x75u)), 27);
  v53 = -219980569 * *(v38 + 4 * (HIBYTE(v51) ^ 0x7B)) - 10413496;
  *(v14 - 164) = v50;
  HIDWORD(v193) = v52 ^ v50 ^ v53;
  v54 = HIDWORD(v193) ^ 0x94D04968 ^ v22;
  *(v14 - 176) = v54;
  *(v14 - 172) = v22 ^ v46;
  v55 = v54 ^ 0xF2BDE772 ^ v22 ^ v46;
  *(v14 - 180) = v55;
  v56 = v55 ^ 0xE0FC127;
  v216 = v55 ^ 0xE0FC127 ^ v51;
  v57 = (-36060539 * *(v40 + 4 * BYTE1(v216)) - 843064844) ^ __ROR4__(*(v37 + 4 * (BYTE2(v216) ^ 0xBu)), 27) ^ (690312999 * *(v39 + 4 * (v216 ^ 0x56u)) + 2087111000) ^ HIDWORD(v193) ^ 0x94D04968 ^ (-219980569 * *(v38 + 4 * (HIBYTE(v216) ^ 0x8D)) - 10413496) ^ 0x65C321E8;
  LODWORD(v193) = v57 ^ v54 ^ 0xF2BDE772;
  LODWORD(v22) = v193 ^ 0x8132C529 ^ v51;
  v214 = v22 ^ 0x696A7A08;
  v215 = v57;
  v58 = (-219980569 * *(v38 + 4 * (BYTE3(v22) ^ 0x87)) - 10413496) ^ (-36060539 * *(v40 + 4 * (BYTE1(v22) ^ 0xE0u)) - 843064844) ^ __ROR4__(*(v37 + 4 * (BYTE2(v22) ^ 0x84u)), 27) ^ v57 ^ (690312999 * *(v39 + 4 * (v193 ^ 0x29 ^ v51 ^ 0x30u)) + 2087111000) ^ 0xE38BE146;
  v59 = v58 ^ v193 ^ 0x8132C529;
  v212 = v193 ^ 0x8132C529 ^ v56;
  v211 = v59 ^ 0x4B6D3740 ^ v212;
  v60 = v211 ^ 0x457B258B ^ v22 ^ 0x696A7A08;
  v213 = v58;
  v61 = (-36060539 * *(v40 + 4 * (((v211 ^ 0x258B ^ v22 ^ 0x7A08) >> 8) ^ 0xE2u)) - 843064844) ^ (690312999 * *(v39 + 4 * (v211 ^ 0x8B ^ v22 ^ 8 ^ 0x3Au)) + 2087111000) ^ __ROR4__(*(v37 + 4 * (BYTE2(v60) ^ 0x66u)), 27) ^ v58 ^ (-219980569 * *(v38 + 4 * (HIBYTE(v60) ^ 0xCF)) - 10413496);
  v210 = v60;
  v62 = v60 ^ 0x1E8CD8D9;
  v63 = v61 ^ 0x7FD6447D ^ v59 ^ 0x4B6D3740;
  LODWORD(v22) = v63 ^ v211 ^ 0x457B258B;
  v209 = v22 ^ v60 ^ 0x1E8CD8D9;
  v64 = (-36060539 * *(v40 + 4 * (((v61 ^ 0x447D ^ v58 ^ v193 ^ 0xC529 ^ 0x3740 ^ v211 ^ 0x258B ^ v60 ^ 0xD8D9) >> 8) ^ 0xD0u)) - 843064844) ^ (690312999 * *(v39 + 4 * (v61 ^ 0x7D ^ (v58 ^ v193 ^ 0x29) ^ 0x40 ^ v211 ^ 0x8B ^ v60 ^ 0xD9 ^ 0x87u)) + 2087111000) ^ __ROR4__(*(v37 + 4 * (BYTE2(v209) ^ 0xB1u)), 27) ^ (-219980569 * *(v38 + 4 * (HIBYTE(v209) ^ 2)) - 10413496) ^ 0xA035ACB8;
  v65 = v64 ^ v61 ^ 0x7FD6447D;
  v66 = v64 ^ v59 ^ 0x4B6D3740;
  v67 = (690312999 * *(v39 + 4 * ((v64 ^ v59 ^ 0x40 ^ v62) ^ 0x4Eu)) + 2087111000) ^ (-219980569 * *(v38 + 4 * (((v66 ^ v62) >> 24) ^ 0x75)) - 10413496) ^ (-36060539 * *(v40 + 4 * (((v64 ^ v59 ^ 0x3740 ^ v62) >> 8) ^ 0x3Au)) - 843064844) ^ __ROR4__(*(v37 + 4 * (((v66 ^ v62) >> 16) ^ 0x3Au)), 27) ^ v65 ^ 0x8E9D0444;
  v207 = v66 ^ v62;
  v204 = v67 ^ v22 ^ 0x75E2D363;
  v68 = v204 ^ v66 ^ v62;
  v203 = v68 ^ 0xA65DCDF6;
  LODWORD(v37) = *(v37 + 4 * (((v68 ^ 0x46EF0B44) >> 16) ^ 0x6Bu));
  HIDWORD(v69) = v37 ^ 0x8BE43C;
  LODWORD(v69) = v37 ^ 0xD0000000;
  LODWORD(v37) = (v69 >> 27) ^ (690312999 * *(v39 + 4 * (v68 ^ 0x3Cu)) + 2087111000) ^ (-219980569 * *(v38 + 4 * (HIBYTE(v68) ^ 0x73)) - 10413496) ^ (-36060539 * *(v40 + 4 * (((v68 ^ 0xB44) >> 8) ^ 0x8Fu)) - 843064844);
  v70 = v37 - ((2 * v37) & 0x1A0F0EEA) + 218597237;
  v202 = v67 ^ v22 ^ 0xAE074503 ^ ((v66 ^ 0xA9D787D8 ^ v70) - ((2 * (v66 ^ 0xA9D787D8 ^ v70)) & 0xB218F180) + 1493989568);
  v71 = qword_2836EB200[v36 - 1196];
  v72 = qword_2836EB200[v36 ^ 0x544] - 4;
  v73 = qword_2836EB200[v36 ^ 0x50B];
  v74 = qword_2836EB200[v36 ^ 0x551];
  v75 = (*(v72 + (*(v14 - 97) ^ 0xC9)) ^ 6 | ((*(v71 + (*(v14 - 99) ^ 0x76)) ^ 0x33) << 16) | (((*(v74 + (*(v14 - 100) ^ 0x17)) + 27) ^ 0x52) << 24) | ((*(v14 - 98) ^ 0xBC ^ *(v73 + (*(v14 - 98) ^ 0xECLL))) << 8)) ^ 0xD2D2D211;
  v76 = (*(v72 + (*(v14 - 109) ^ 0x30)) ^ 0x77 | ((-28 - *(v74 + (*(v14 - 112) ^ 0xF4))) << 24) | ((*(v14 - 110) ^ 0x98 ^ *(v73 + (*(v14 - 110) ^ 0xDELL))) << 8) | ((*(v71 + (*(v14 - 111) ^ 0x39)) ^ 0xD9) << 16)) ^ 0xD2D2D2D2;
  LODWORD(v40) = (*(v72 + (*(v14 - 105) ^ 0xDLL)) ^ 0xEC | ((*(v14 - 106) ^ 0xA0 ^ *(v73 + (*(v14 - 106) ^ 0x17))) << 8) | ((*(v71 + (*(v14 - 107) ^ 0xEFLL)) ^ 0x83) << 16) | (((*(v74 + (*(v14 - 108) ^ 0x9CLL)) + 27) ^ 0x1C) << 24)) ^ 0xD2D2D2D2;
  LODWORD(v21) = (*(v72 + (*(v14 - 101) ^ 0xCCLL)) ^ 0x81 | ((*(v14 - 102) ^ 0x16 ^ *(v73 + (*(v14 - 102) ^ 0x4ELL))) << 8) | (((*(v74 + (*(v14 - 104) ^ 9)) + 27) ^ 0xDA) << 24) | ((*(v71 + (*(v14 - 103) ^ 0x1BLL)) ^ 0x8F) << 16)) ^ 0xD2D2D2D2;
  HIDWORD(v201) = (((v13 ^ 0xD59530C1) - 677943697) ^ ((v13 ^ 0x83D3E3F3) - 2116962979) ^ ((v13 ^ 0xDBE75146) - 639301654)) + 1135472356;
  LODWORD(v201) = *(v14 - 116) ^ 0xBC57A1A1;
  LODWORD(v200) = v199 ^ 0xB3C7A7C2;
  HIDWORD(v198) = v205 ^ 0x74EC2518;
  LODWORD(v198) = v197 ^ 0x885316EE;
  HIDWORD(v195) = v196 ^ 0x2201ECBC;
  LODWORD(v195) = v51 ^ 0x61C6B6CD;
  v194 = v193 ^ 0x9A5293D584654B28;
  HIDWORD(v192) = v59 ^ 0x9A674CDD;
  LODWORD(v192) = v61 ^ 0x1764442E;
  HIDWORD(v191) = v63 ^ 0x2BE67D3F;
  LODWORD(v191) = v22 ^ 0xAF54BB9B;
  HIDWORD(v190) = v22 ^ 0x6DAB7402;
  LODWORD(v190) = v65 ^ 0x26E67D29;
  v206 = v67;
  LODWORD(v189) = v70 ^ v67;
  *(v14 - 116) = 0;
  v77 = *(v14 - 128);
  LODWORD(v21) = (*(v72 + (v77[11] ^ 9)) ^ 1 | ((*(v71 + (v77[9] ^ (((v17 - 1) | 8) - 54))) ^ 0x16) << 16) | ((v77[10] ^ 0xC2 ^ *(v73 + (v77[10] ^ 0xA9))) << 8) | (((*(v74 + (v77[8] ^ 2)) + 27) ^ 0xE2) << 24)) ^ v21;
  LODWORD(v40) = (((v77[6] ^ 0x19 ^ *(v73 + (v77[6] ^ 8))) << 8) | (((*(v74 + (v77[4] ^ 0xC5)) + 27) ^ 0xFFFFFFFB) << 24) | *(v72 + (v77[7] ^ 0xFDLL)) ^ 6 | ((*(v71 + (v77[5] ^ 0xF5)) ^ 0x34) << 16)) ^ v40;
  LODWORD(v38) = (*(v72 + (v77[15] ^ 8)) ^ 6 | ((*(v71 + (v77[13] ^ 0x90)) ^ 0x80) << 16) | (((*(v74 + (v77[12] ^ 0x80)) + 27) ^ 0x31) << 24) | ((v77[14] ^ 0x99 ^ *(v73 + (v77[14] ^ 5))) << 8)) ^ v75;
  v78 = (*(v72 + (v77[3] ^ 0x75)) ^ 0xAB | (((*(v74 + (*v77 ^ 0xB0)) + 27) ^ 0x16) << 24) | ((*(v71 + (v77[1] ^ 0x93)) ^ 0xFE) << 16) | ((v77[2] ^ 0x5D ^ *(v73 + (v77[2] ^ 0x1CLL))) << 8)) ^ v76;
  v79 = v201 ^ (v40 - ((2 * v40) & 0x1A9F13FC) + 223316478);
  v80 = v208 ^ 0x23D24C8F ^ (v78 - 1949946336 + (~(2 * v78) | 0xE873A3C1));
  LODWORD(v38) = v200 ^ (v38 - ((2 * v38) & 0x17A1F04C) + 198244390);
  v81 = HIDWORD(v198) ^ (v21 - ((2 * v21) & 0xD197BBB8) + 1758191068);
  v82 = ((v201 ^ (v40 - ((2 * v40) & 0x13FC) - 30210)) >> 8);
  v83 = qword_2836EB200[v17 - 2090] - 12;
  v84 = *(v83 + 4 * v82);
  v85 = qword_2836EB200[v17 - 2157] - 4;
  v86 = qword_2836EB200[v17 - 2285];
  LODWORD(v71) = *(v86 + 4 * HIBYTE(v79)) ^ *(v85 + 4 * BYTE2(v81));
  v87 = *(v86 + 4 * BYTE3(v38)) ^ v84 ^ *(v85 + 4 * BYTE2(v80));
  v88 = qword_2836EB200[v17 ^ 0x97E] - 12;
  v89 = v87 ^ (*(v88 + 4 * v81) - 190468687);
  v90 = *(v85 + 4 * BYTE2(v79)) ^ *(v86 + 4 * HIBYTE(v80)) ^ (*(v88 + 4 * v38) - 190468687);
  v91 = *(v83 + 4 * BYTE1(v80)) ^ *(v85 + 4 * BYTE2(v38)) ^ *(v86 + 4 * HIBYTE(v81)) ^ (*(v88 + 4 * v79) - 190468687);
  LODWORD(v71) = v71 ^ (*(v88 + 4 * v80) - 190468687) ^ *(v83 + 4 * BYTE1(v38));
  v92 = v90 ^ *(v83 + 4 * BYTE1(v81));
  v93 = (v92 - ((2 * v92) & 0x50E76634) + 678671130) ^ *(v14 - 140);
  v94 = v89 - ((2 * v89) & 0x9117766) + 76069811;
  LODWORD(v38) = (v91 - ((2 * v91) & 0x9BEFCE70) + 1308092216) ^ *(v14 - 148);
  LODWORD(v71) = (v71 - ((2 * v71) & 0x4A7875C8) + 624704228) ^ *(v14 - 144);
  v95 = v71 ^ 0xBF80DD5E;
  v96 = (v93 ^ 0xD7674CCB) >> 24;
  v97 = v198 ^ v94;
  v98 = (v71 ^ 0xBF80DD5E) >> 24;
  v99 = *(v85 + 4 * ((v93 ^ 0xD7674CCB) >> 16)) ^ *(v86 + 4 * HIBYTE(v97));
  LODWORD(v71) = (*(v88 + 4 * (v71 ^ 0x48u)) - 190468687) ^ *(v86 + 4 * ((v38 ^ 0x16B10DD4) >> 24)) ^ *(v83 + 4 * ((v93 ^ 0x4CCB) >> 8)) ^ *(v85 + 4 * BYTE2(v97));
  v100 = (*(v88 + 4 * (v93 ^ 0xDDu)) - 190468687) ^ *(v83 + 4 * BYTE1(v97)) ^ *(v86 + 4 * v98) ^ *(v85 + 4 * ((v38 ^ 0x16B10DD4) >> 16));
  LODWORD(v38) = v99 ^ *(v83 + 4 * BYTE1(v95)) ^ (*(v88 + 4 * (((v91 - ((2 * v91) & 0x70) + 56) ^ *(v14 - 148)) ^ 0xC2u)) - 190468687);
  LODWORD(v71) = (v71 - ((2 * v71) & 0xD6BC1490) - 346158520) ^ *(v14 - 152);
  LODWORD(v69) = __ROR4__((*(v88 + 4 * v97) - 190468687) ^ *(v83 + 4 * (((v91 - ((2 * v91) & 0xCE70) - 6344) ^ *(v14 - 148) ^ 0xDD4) >> 8)) ^ *(v86 + 4 * v96) ^ *(v85 + 4 * BYTE2(v95)) ^ 0xB9AB301, 5) ^ 0x50D2ECF9;
  HIDWORD(v69) = v69;
  v101 = ((v69 >> 27) - ((2 * (v69 >> 27)) & 0x72BAF28) - 2087331948) ^ *(v14 - 160);
  LOWORD(v91) = v101 ^ 0xF696;
  LODWORD(v38) = (v38 - ((2 * v38) & 0x7152FC0) - 2088069152) ^ *(v14 - 156);
  v102 = HIDWORD(v195) ^ (v100 - ((2 * v100) & 0x4D53DAE0) - 1498813072);
  v103 = (v101 ^ 0x6EDAF696u) >> 24;
  v104 = (*(v88 + 4 * (v71 ^ 0x37u)) - 190468687) ^ *(v83 + 4 * BYTE1(v102));
  v105 = *(v83 + 4 * ((v71 ^ 0xA37) >> 8)) ^ *(v85 + 4 * BYTE2(v102));
  v106 = *(v86 + 4 * ((v71 ^ 0xD62C0A37) >> 24));
  LODWORD(v71) = *(v85 + 4 * (BYTE2(v71) ^ 0xB3u)) ^ *(v86 + 4 * HIBYTE(v102));
  v107 = v104 ^ *(v86 + 4 * ((v38 ^ 0xFC47C039) >> 24)) ^ *(v85 + 4 * (BYTE2(v101) ^ 0x45u));
  v108 = *(v88 + 4 * v91) - 190468687;
  v109 = v106 ^ *(v85 + 4 * ((v38 ^ 0xFC47C039) >> 16)) ^ (*(v88 + 4 * v102) - 190468687) ^ *(v83 + 4 * BYTE1(v91));
  v110 = v105 ^ (*(v88 + 4 * (v38 ^ 0x39u)) - 190468687) ^ *(v86 + 4 * v103);
  v111 = *(v83 + 4 * (BYTE1(v38) ^ 0x87u));
  v112 = (v109 - ((2 * v109) & 0x8B82BE5C) + 1170300718) ^ *(v14 - 172);
  v113 = v51 ^ 0x61C6B6CD ^ (v107 - ((2 * v107) & 0x8C97919C) - 968111922);
  v114 = (v110 - ((2 * v110) & 0x230A8B4C) + 293946790) ^ *(v14 - 164);
  LODWORD(v71) = ((v71 ^ v111 ^ v108) - ((2 * (v71 ^ v111 ^ v108)) & 0x6E5951AC) - 1221809962) ^ *(v14 - 168);
  v115 = (*(v88 + 4 * (v71 ^ 0x28u)) - 190468687) ^ *(v86 + 4 * ((v112 ^ 0x7F82DAAB) >> 24)) ^ *(v83 + 4 * (((v114 ^ 0x35DF) >> 8) ^ 0x79u)) ^ *(v85 + 4 * BYTE2(v113));
  v116 = *(v83 + 4 * BYTE1(v113)) ^ *(v85 + 4 * ((v112 ^ 0x7F82DAAB) >> 16)) ^ *(v86 + 4 * ((v71 ^ 0x7D650C28) >> 24)) ^ (*(v88 + 4 * (((v110 - ((2 * v110) & 0x4C) - 90) ^ *(v14 - 164)) ^ 0xDDu)) - 190468687);
  v117 = *(v86 + 4 * HIBYTE(v113));
  v118 = *(v86 + 4 * (HIBYTE(v114) ^ 0xBD)) ^ (*(v88 + 4 * v113) - 190468687) ^ *(v85 + 4 * (BYTE2(v71) ^ 0x65u));
  LODWORD(v71) = *(v85 + 4 * (((v114 ^ 0x13FC35DF) >> 16) ^ 0x9Bu)) ^ *(v83 + 4 * (BYTE1(v71) ^ 0x4Bu)) ^ v117 ^ (*(v88 + 4 * (v112 ^ 0xBDu)) - 190468687);
  v119 = (v116 - ((2 * v116) & 0xADD5F052) + 1458239529) ^ *(v14 - 176);
  v120 = v118 ^ *(v83 + 4 * ((v112 ^ 0xDAAB) >> 8));
  LODWORD(v38) = (v115 - ((2 * v115) & 0x7DE5CFC2) - 1091377183) ^ *(v14 - 180);
  LODWORD(v71) = (v71 - ((2 * v71) & 0x95A14B54) + 1255187882) ^ v216;
  LOBYTE(v116) = v71 ^ 0x6E;
  v121 = HIDWORD(v194) ^ (v120 - ((2 * v120) & 0x285316A8) - 1809216684);
  v122 = HIBYTE(v121);
  v123 = *(v86 + 4 * ((v71 ^ 0x1BBCCB6E) >> 24));
  v124 = (*(v88 + 4 * v121) - 190468687) ^ *(v83 + 4 * ((v71 ^ 0xCB6E) >> 8)) ^ *(v86 + 4 * ((v119 ^ 0x66654B3E) >> 24));
  v125 = *(v85 + 4 * (BYTE2(v119) ^ 0x65u));
  LODWORD(v71) = *(v83 + 4 * BYTE1(v121)) ^ *(v85 + 4 * (BYTE2(v71) ^ 0x23u)) ^ (*(v88 + 4 * (v119 ^ 0x28u)) - 190468687);
  v126 = v123 ^ *(v83 + 4 * ((v119 ^ 0x4B3E) >> 8)) ^ 0xCB7D59C5;
  v127 = *(v85 + 4 * BYTE2(v121)) ^ 0xC0E7EAC4;
  LODWORD(v71) = v71 ^ *(v86 + 4 * ((v38 ^ 0xA480DD5E) >> 24));
  v128 = (v127 + v126 - 2 * (v127 & v126)) ^ (*(v88 + 4 * (((v115 - ((2 * v115) & 0xC2) - 31) ^ *(v14 - 180)) ^ 0x48u)) - 190468687);
  v129 = (*(v88 + 4 * v116) - 190468687) ^ v125 ^ *(v86 + 4 * v122) ^ *(v83 + 4 * ((v38 ^ 0xDD5E) >> 8));
  LODWORD(v38) = v124 ^ *(v85 + 4 * ((v38 ^ 0xA480DD5E) >> 16));
  v130 = v38 - ((2 * v38) & 0x374B2BD2) + 463836649;
  v131 = (v128 - ((2 * v128) & 0x12C509AA) + 157451477) ^ v214;
  LODWORD(v38) = (v71 - ((2 * v71) & 0x71B56E82) + 953857857) ^ v212;
  LODWORD(v71) = (v129 - ((2 * v129) & 0xC12C5A4C) - 527028954) ^ v215;
  v132 = v194 ^ v130;
  v133 = BYTE3(v71) ^ 0x5F;
  v134 = *(v86 + 4 * (HIBYTE(v131) ^ 0x30));
  v135 = *(v85 + 4 * (BYTE2(v71) ^ 0x67u)) ^ (*(v88 + 4 * (v38 ^ 0x6Eu)) - 190468687);
  v136 = *(v88 + 4 * (v131 ^ 0x7Eu)) - 190468687;
  LODWORD(v71) = *(v85 + 4 * (BYTE2(v131) ^ 0xEEu)) ^ *(v86 + 4 * ((v38 ^ 0xD0C9FB6E) >> 24)) ^ (*(v88 + 4 * v132) - 190468687) ^ *(v83 + 4 * ((((v129 - ((2 * v129) & 0x5A4C) + 11558) ^ v215) >> 8) ^ 0x4Cu));
  v137 = (*(v88 + 4 * (((v129 - ((2 * v129) & 0x4C) + 38) ^ v215) ^ 0xDDu)) - 190468687) ^ *(v86 + 4 * HIBYTE(v132)) ^ *(v85 + 4 * (((v38 ^ 0xD0C9FB6E) >> 16) ^ 0x9Fu)) ^ *(v83 + 4 * (BYTE1(v131) ^ 0xC3u));
  LODWORD(v38) = *(v85 + 4 * BYTE2(v132)) ^ *(v86 + 4 * v133) ^ *(v83 + 4 * (BYTE1(v38) ^ 0xBCu)) ^ v136;
  v138 = v135 ^ *(v83 + 4 * BYTE1(v132)) ^ v134;
  LODWORD(v71) = (v71 - ((2 * v71) & 0x4087399C) + 541301966) ^ v211;
  v139 = (v138 - ((2 * v138) & 0x58B074CA) - 1403504027) ^ v210;
  LODWORD(v38) = (v38 - ((2 * v38) & 0x24C297F4) + 308366330) ^ v213;
  v140 = HIDWORD(v192) ^ (v137 - ((2 * v137) & 0xBAEA5A76) + 1567960379);
  v141 = *(v83 + 4 * ((v38 ^ 0xDAAB) >> 8)) ^ (*(v88 + 4 * v140) - 190468687) ^ *(v85 + 4 * ((v139 ^ 0xBFC6B6DB) >> 16)) ^ *(v86 + 4 * (BYTE3(v71) ^ 0xA6));
  v142 = *(v83 + 4 * (BYTE1(v71) ^ 0x2Au));
  v143 = *(v83 + 4 * BYTE1(v140)) ^ *(v86 + 4 * ((v139 ^ 0xBFC6B6DB) >> 24)) ^ (*(v88 + 4 * (v71 ^ 0xEu)) - 190468687);
  LODWORD(v71) = *(v86 + 4 * HIBYTE(v140)) ^ *(v83 + 4 * ((v139 ^ 0xB6DB) >> 8)) ^ *(v85 + 4 * (BYTE2(v71) ^ 0xB3u));
  v144 = v143 ^ *(v85 + 4 * ((v38 ^ 0x2982DAAB) >> 16));
  v145 = *(v86 + 4 * ((v38 ^ 0x2982DAAB) >> 24)) ^ v142 ^ *(v85 + 4 * BYTE2(v140)) ^ (*(v88 + 4 * (v139 ^ 0xCDu)) - 190468687);
  LODWORD(v71) = v71 ^ (*(v88 + 4 * (v38 ^ 0xBDu)) - 190468687);
  v146 = (v144 - ((2 * v144) & 0x347F933E) - 1707095649) ^ v209;
  v147 = v192 ^ (v145 - ((2 * v145) & 0x2C3D8926) + 371115155);
  LODWORD(v38) = v191 ^ (v141 - ((2 * v141) & 0x3C19756C) - 1643332938);
  v148 = HIBYTE(v147);
  LODWORD(v71) = HIDWORD(v191) ^ (v71 - ((2 * v71) & 0x766C080C) + 993395718);
  v149 = (*(v88 + 4 * v38) - 190468687) ^ *(v85 + 4 * BYTE2(v147)) ^ *(v83 + 4 * BYTE1(v71)) ^ *(v86 + 4 * ((v146 ^ 0x44E9778Au) >> 24));
  v150 = *(v86 + 4 * BYTE3(v71)) ^ *(v85 + 4 * BYTE2(v38)) ^ *(v83 + 4 * ((v146 ^ 0x778A) >> 8)) ^ (*(v88 + 4 * v147) - 190468687);
  v151 = *(v83 + 4 * BYTE1(v147)) ^ *(v86 + 4 * BYTE3(v38)) ^ *(v85 + 4 * (BYTE2(v146) ^ 0x76u)) ^ (*(v88 + 4 * (v71 ^ 0x16u)) - 190468687);
  v152 = HIDWORD(v190) ^ (v151 - ((2 * v151) & 0x7DE13CCC) - 1091527066);
  LODWORD(v71) = *(v86 + 4 * v148) ^ *(v85 + 4 * BYTE2(v71)) ^ *(v83 + 4 * BYTE1(v38)) ^ (*(v88 + 4 * (v146 ^ 0x8Au)) - 190468687);
  LODWORD(v38) = (v150 - 1445986131 - ((2 * v150) & 0x53A0015A)) ^ v66;
  v153 = (v149 - ((2 * v149) & 0x5BC6E708) - 1377602684) ^ v207;
  LODWORD(v71) = v190 ^ (v71 - ((2 * v71) & 0x25CC0956) - 1830419285);
  LOBYTE(v150) = v153 ^ 0x58;
  v154 = v66 ^ 0xEF03EB49 ^ (v152 - 1445986131 - ((2 * v152) & 0x53A0015A));
  v155 = *(v86 + 4 * BYTE3(v71));
  v156 = *(v88 + 4 * v71) - 190468687;
  v157 = *(v83 + 4 * (((v149 - ((2 * v149) & 0xE708) + 29572) ^ v207 ^ 0x2758) >> 8));
  v158 = *(v86 + 4 * ((v153 ^ 0x4BE2758u) >> 24));
  v159 = *(v85 + 4 * BYTE2(v154));
  v160 = *(v85 + 4 * (BYTE2(v153) ^ 0x21u)) ^ (*(v88 + 4 * (v38 ^ 0x49u)) - 190468687);
  v161 = *(v86 + 4 * HIBYTE(v154));
  v162 = *(v86 + 4 * (BYTE3(v38) ^ 0xEF));
  LODWORD(v86) = *(v88 + 4 * v150);
  v163 = *(v83 + 4 * (BYTE1(v38) ^ 0xEBu));
  LODWORD(v38) = *(v85 + 4 * (BYTE2(v38) ^ 3u));
  LODWORD(v85) = v158 ^ v203 ^ v163 ^ *(v85 + 4 * BYTE2(v71)) ^ (*(v88 + 4 * v154) - 190468687);
  LODWORD(v88) = ((v160 ^ *(v83 + 4 * BYTE1(v71)) ^ v161) + 1493989568 - ((2 * (v160 ^ *(v83 + 4 * BYTE1(v71)) ^ v161)) & 0xB218F180)) ^ v204;
  LODWORD(v86) = (((v86 - 190468687) ^ v155 ^ v38 ^ *(v83 + 4 * BYTE1(v154))) + 218597237 - ((2 * ((v86 - 190468687) ^ v155 ^ v38 ^ *(v83 + 4 * BYTE1(v154)))) & 0x1A0F0EEA)) ^ v206;
  v164 = v206 ^ v66 ^ v156 ^ v157 ^ v162 ^ v159;
  v165 = qword_2836EB200[v17 - 2083] - 12;
  LODWORD(v83) = *(v165 + 4 * ((v206 ^ v66 ^ v156 ^ v157 ^ v162 ^ v159) ^ 0xDFu));
  v166 = qword_2836EB200[v17 - 2080];
  LODWORD(v38) = *(v166 + 4 * ((v88 ^ 0x422CFAB5) >> 16));
  v167 = *(v165 + 4 * (v88 ^ 0xB5u));
  v168 = *(v165 + 4 * (v85 ^ 0x16u));
  v169 = *(v166 + 4 * ((v85 ^ 0xF6BCF016) >> 16));
  LODWORD(v165) = *(v165 + 4 * (v86 ^ 7u));
  v170 = *(v166 + 4 * ((v164 ^ 0x1949BBDE) >> 16));
  LODWORD(v166) = *(v166 + 4 * (((v86 ^ 0xB0693C07) >> 16) ^ 0xF7u));
  v171 = qword_2836EB200[v17 ^ 0x9A0] - 4;
  v172 = *(v171 + 4 * ((v88 ^ 0xFAB5) >> 8));
  v173 = *(v171 + 4 * ((v85 ^ 0xF016) >> 8));
  v174 = *(v171 + 4 * ((v164 ^ 0xBBDE) >> 8));
  v175 = *(v171 + 4 * ((v86 ^ 0x3C07) >> 8));
  v176 = qword_2836EB200[v17 - 2085];
  v177 = *(v176 + 4 * (HIBYTE(v164) ^ 0x76));
  LODWORD(v86) = *(v176 + 4 * (BYTE3(v86) ^ 0xDF));
  v178 = *(v176 + 4 * (BYTE3(v88) ^ 0x2D));
  LODWORD(v176) = *(v176 + 4 * (BYTE3(v85) ^ 0x99));
  LODWORD(v85) = v189 ^ (1909043885 * v86) ^ __ROR4__(v172, 28) ^ (v168 - 291191517) ^ v170;
  v179 = v38 ^ v66 ^ 0xA9D787D8 ^ v70 ^ (1909043885 * v177) ^ __ROR4__(v173, 28) ^ (v165 - 291191517);
  v180 = (1909043885 * v176);
  v181 = (v83 - 291191517) ^ v202 ^ v169 ^ (1909043885 * v178) ^ __ROR4__(v175, 28);
  v182 = v202 ^ v203 ^ (v167 - 291191517) ^ __ROR4__(v174, 28) ^ v166 ^ v180;
  v183 = qword_2836EB200[v17 - 2105] - 12;
  v77[10] = *(v183 + (BYTE1(v181) ^ 0x79)) ^ 0x7D;
  v184 = qword_2836EB200[v17 ^ 0x9A8];
  v77[13] = *(v184 + (BYTE2(v182) ^ 0xF0)) ^ 0x63;
  v185 = qword_2836EB200[v17 ^ 0x97C] - 8;
  v77[15] = (*(v185 + (v182 ^ 0x45)) - 30) ^ 0x8F;
  v77[6] = *(v183 + (BYTE1(v179) ^ 0x1BLL)) ^ 0x81;
  v77[1] = *(v184 + (BYTE2(v85) ^ 0x3ELL)) ^ 5;
  v186 = qword_2836EB200[v17 ^ 0x97B];
  v77[12] = *(v186 + (HIBYTE(v182) ^ 0x41)) ^ 0x1F;
  v77[8] = *(v186 + (BYTE3(v181) ^ 0xB6)) ^ 0xD9;
  v77[3] = (*(v185 + (v85 ^ 0xDFLL)) - 30) ^ 0x17;
  v77[14] = *(v183 + (BYTE1(v182) ^ 0x5ELL)) ^ 0xC0;
  v77[11] = (*(v185 + (v181 ^ 0x54)) - 30) ^ 0x67;
  v77[2] = *(v183 + (BYTE1(v85) ^ 0x13)) ^ 0x8D;
  v77[7] = (*(v185 + (v179 ^ 0xDELL)) - 30) ^ 0x84;
  v77[5] = *(v184 + (BYTE2(v179) ^ 0x7ALL)) ^ 0xC2;
  *v77 = *(v186 + (BYTE3(v85) ^ 0xB5)) ^ 0x39;
  v77[9] = *(v184 + (BYTE2(v181) ^ 0x6FLL)) ^ 0xB0;
  v77[4] = *(v186 + (BYTE3(v179) ^ 0x49)) ^ 0x4D;
  v187 = HIDWORD(v201) > 0xD351C3D0;
  if (HIDWORD(v201) < 0xD351C3C0)
  {
    v187 = 1;
  }

  HIDWORD(v189) = v66 ^ 0xEF03EB49;
  HIDWORD(v200) = v208 ^ 0x23D24C8F;
  return (*(*(v14 - 136) + 8 * ((2016 * v187) ^ v17)))(v179, 1909043885, 4104498609, v181, v180, 73, v184, v185, a9, a10, a11, v74, v73, v189, v190, v191, v192, v194, v195, v198, v200, v201, v72);
}

void sub_2238320DC(_DWORD *a1)
{
  v1 = *a1 + 143681137 * ((-2 - ((a1 | 0x64AD6D09) + (~a1 | 0x9B5292F6))) ^ 0x7DFA3EE6);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_2238321F8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((1546 * (v6 == (((v4 + a2) | 0x106u) ^ 0x16FLL))) ^ (v4 + a2 + 645))))();
}

uint64_t sub_223832608(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  HIDWORD(v16) = a1;
  LODWORD(v16) = a1;
  v17 = (v10 ^ v15) & (a6 ^ 0x668036E9) ^ v10 & 0xB97C0037;
  v18 = (v17 ^ (v9 + 54)) & (a4 & 0x288DBF60 ^ 0xAFD8675 ^ (v10 ^ 0xF77189BE) & (a4 ^ v13)) ^ v17 & 0xFD8E4FCA;
  v19 = ((((v16 >> 27) ^ 0xFD4E6707) + 1195145718) ^ (((v16 >> 27) ^ 0x43287984) - 111515785) ^ (((v16 >> 27) ^ (((v8 - 1749) | 2) + 1105248821)) - 74261589)) + (((v7 ^ 0xB3298498) + 1289124712) ^ ((v7 ^ 0xAC3D07AB) + 1405286485) ^ ((v7 ^ 0xC0E8B5ED) + 1058490899)) + (((*(v6 + 4 * (a3 + v12)) ^ 0xB572C911) + 1250768623) ^ ((*(v6 + 4 * (a3 + v12)) ^ 0x44CBCEF5) - 1154207477) ^ ((*(v6 + 4 * (a3 + v12)) ^ 0x630E40B) - 103867403)) + (((v18 ^ 0xB7C7E841) + 1553803195) ^ ((v18 ^ 0x1852998F) - 217557387) ^ ((v18 ^ 0x8DE4C1FB) + 1723731457)) + 1559894358;
  v20 = (v19 ^ 0x95EFB407) & (2 * (v19 & 0xC5EE3617)) ^ v19 & 0xC5EE3617;
  v21 = ((2 * (v19 ^ 0x16ABD82D)) ^ 0xA68BDC74) & (v19 ^ 0x16ABD82D) ^ (2 * (v19 ^ 0x16ABD82D)) & 0xD345EE3A;
  v22 = v21 ^ 0x5144220A;
  v23 = (v21 ^ 0x201C830) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0x4D17B8E8) & v22 ^ (4 * v22) & 0xD345EE38;
  v25 = (v24 ^ 0x4105A820) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x92404612)) ^ 0x345EE3A0) & (v24 ^ 0x92404612) ^ (16 * (v24 ^ 0x92404612)) & 0xD345EE30;
  v27 = v25 ^ 0xD345EE3A ^ (v26 ^ 0x1044E200) & (v25 << 8);
  return (*(v11 + 8 * ((791 * (a3 + 1 == v14 + 4)) ^ v8)))(v19 ^ (2 * ((v27 << 16) & 0x53450000 ^ v27 ^ ((v27 << 16) ^ 0x6E3A0000) & (((v26 ^ 0xC3010C1A) << 8) & 0x53450000 ^ 0x12010000 ^ (((v26 ^ 0xC3010C1A) << 8) ^ 0x45EE0000) & (v26 ^ 0xC3010C1A)))) ^ 0x3899DCBD);
}

uint64_t sub_223832AA8@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31)
{
  v34 = *(&a19 + a2 + 72);
  v35 = (a2 ^ 0x72DEB494 ^ ((v32 + 198976) | 0x8D1040C0)) + ((2 * a2) & 0xFF9BFCF8) + v31;
  *(a1 + v35) = (HIBYTE(v34) ^ 0xDF) - ((2 * (HIBYTE(v34) ^ 0xDF)) & 0xA0) + 80;
  *(a1 + v35 + 1) = (BYTE2(v34) ^ 0xFC) - ((2 * (BYTE2(v34) ^ 0xFC)) & 0xA0) + 80;
  *(a1 + v35 + 2) = (BYTE1(v34) ^ 0x36) - 2 * ((BYTE1(v34) ^ 0x36) & 0x58 ^ BYTE1(v34) & 8) + 80;
  *(a1 + v35 + 3) = v34 ^ 0x8E;
  return (*(v33 + 8 * ((2978 * (a2 + 4 < a31)) ^ v32)))();
}

uint64_t sub_223832C7C(uint64_t a1, uint64_t a2, int a3, float a4)
{
  v10 = v6 + 4;
  *(v8 + (v10 ^ a2 ^ v7) + v5) = a4;
  return (*(v9 + 8 * (((a1 == v10) * a3) ^ v4)))();
}

void aC4q7GWh()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D888) ^ 0x74)) ^ byte_2238FA560[byte_223907C60[(-33 * ((qword_27D09D558 + dword_27D09D888) ^ 0x74))] ^ 0xFC]) - 117];
  v1 = *(v0 - 4);
  v2 = off_2836EB588 - 4;
  v3 = off_2836EB888 - 12;
  v4 = qword_2836EB200[(*(off_2836EB888 + (*(off_2836EB588 + (-33 * ((qword_27D09D558 - v1) ^ 0x74)) - 4) ^ 0xFEu) - 12) ^ (-33 * ((qword_27D09D558 - v1) ^ 0x74))) - 31];
  v5 = v1 ^ &v7 ^ *v4;
  *(v0 - 4) = 1321670111 * v5 - 0x448BD34F94FDFB74;
  *v4 = 1321670111 * (v5 ^ 0x448BD34F94FDFB74);
  v8[1] = (1037613739 * ((v8 & 0xB930A9F5 | ~(v8 | 0xB930A9F5)) ^ 0x97CD7B75)) ^ 0x86F54BA0;
  LOBYTE(v4) = -33 * (*(v0 - 4) ^ 0x74 ^ *v4);
  v6 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D888) ^ 0x74)) ^ byte_2238FD8F0[byte_2238FA760[(-33 * ((qword_27D09D558 + dword_27D09D888) ^ 0x74))] ^ 0xC9]) - 76];
  (*(v6 + 8 * ((v4 ^ v3[v2[v4] ^ 0xDB]) + 3988)))(v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_223832EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a18 = (v18 + 2108) ^ (843532609 * ((-985015954 - (&a15 | 0xC549D96E) + (&a15 | 0x3AB62691)) ^ 0x66FB7214));
  a15 = a10;
  a17 = &a12;
  (*(v19 + 8 * (v18 + 3290)))(&a15);
  LODWORD(a15) = (v18 + 1802) ^ (1504884919 * (((&a15 | 0x456478C3) - (&a15 & 0x456478C3)) ^ 0xBEA7CFD8));
  a16 = a10;
  v21 = (*(v19 + 8 * (v18 + 3301)))(&a15);
  return (*(v19 + 8 * ((2444 * (HIDWORD(a15) == ((v18 + 1421) ^ (v20 - 1901)))) ^ v18)))(v21);
}

uint64_t sub_223832FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{
  v16 = 6 * (v15 ^ 0xE98);
  a11 = 4;
  v17 = (*(v13 + 8 * (v16 + 1405)))(*(v14 + 4), 23, 0, 0, &a13, &a11);
  if (v17)
  {
    v20 = 0;
  }

  else
  {
    v20 = a11 == ((v16 - 618466406) & 0x24DD07EF) - 1596;
  }

  v21 = !v20;
  return (*(v13 + 8 * ((v21 * (((v16 + 118752584) & 0xF8EBF641) - 1476)) ^ v16)))(v17, v18, v19);
}

uint64_t sub_223833050(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14)
{
  *a2 = 0;
  *a3 = 0;
  a14 = (1037613739 * ((2 * (&a13 & 0x558787C0) - &a13 + 712538168) ^ 0xFB7A5547)) ^ 0x86F54BA0;
  v15 = (*(v14 + 32816))(&a13);
  return (*(v14 + 8 * ((52 * (a13 != 1423875590)) ^ 0x504u)))(v15);
}

uint64_t sub_223833114@<X0>(uint64_t a1@<X1>, char a2@<W2>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, char *), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24)
{
  v30 = (a3 - 889);
  v31 = (a1 + v27);
  *v31 = v24;
  *(a1 + v30 + v27) = v25;
  v31[2] = v26;
  v31[3] = a2;
  LODWORD(v31) = 1785193651 * ((~((v29 - 168) | 0x60740B72) + ((v29 - 168) & 0x60740B72)) ^ 0x69AA50A1);
  *(v29 - 160) = v31 + v30 + 428;
  *(v29 - 156) = 561411246 - v31;
  *(v29 - 168) = a1;
  v32 = (*(v28 + 8 * (v30 + 4175)))(v29 - 168);
  return a13(v32, &a24);
}

uint64_t sub_223833134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, unsigned int a19)
{
  a16 = a11;
  a18 = &a10;
  a19 = (v19 + 2223) ^ (843532609 * (((&a16 | 0xB3B1EA32) - &a16 + (&a16 & 0x4C4E15C8)) ^ 0xEFFCBEB7));
  (*(v20 + 8 * (v19 + 3405)))(&a16);
  a19 = (v19 + 2223) ^ (843532609 * ((((2 * (&a16 ^ 0x6B0EAB89)) | 0xD91532B8) - (&a16 ^ 0x6B0EAB89) + 326461092) ^ 0xDBC96650));
  a16 = a11;
  a18 = &a13;
  (*(v20 + 8 * (v19 ^ 0xD73)))(&a16);
  LODWORD(a16) = (v19 + 1917) ^ (1504884919 * ((&a16 & 0xE683E2A6 | ~(&a16 | 0xE683E2A6)) ^ 0xE2BFAA42));
  a17 = a11;
  v21 = (*(v20 + 8 * (v19 ^ 0xD68)))(&a16);
  return (*(v20 + 8 * ((1680 * (HIDWORD(a16) == ((v19 - 834675360) ^ 0xC88120F4) + ((v19 - 834675360) & 0x4E1FBEFB))) ^ v19)))(v21);
}

_DWORD *sub_2238332F0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  if ((v3 + v2 + v6) >= 0x7FFFFFFF)
  {
    v7 = -v5;
  }

  else
  {
    v7 = v4;
  }

  *(a2 + 4) = v7;
  *result = 1408943074;
  return result;
}

uint64_t sub_22383332C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (50899313 * (((&a14 ^ 0x3D6A1E30) - 5204025 - 2 * ((&a14 ^ 0x3D6A1E30) & 0xFFB097C7)) ^ 0xE811A38D)) ^ 0xF11;
  a15 = &a10;
  v19 = (*(v16 + 32872))(&a14);
  return (*(v16 + 8 * ((973 * (a16 == v17)) ^ v18)))(v19);
}

void Hbz0lOyjnO0()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D840) ^ 0x74)) ^ byte_2238FD8F0[byte_2238FA760[(-33 * ((qword_27D09D558 + dword_27D09D840) ^ 0x74))] ^ 0x18]) + 133];
  v1 = qword_2836EB200[((-33 * ((qword_27D09D558 - *v0) ^ 0x74)) ^ byte_223907B60[byte_223902660[(-33 * ((qword_27D09D558 - *v0) ^ 0x74))] ^ 0xF0]) + 39];
  v2 = (*v1 ^ *v0) - &v4;
  *v0 = (1321670111 * v2) ^ 0x448BD34F94FDFB74;
  *v1 = 1321670111 * (v2 ^ 0x448BD34F94FDFB74);
  v5[1] = (1037613739 * ((v5 + 1306370632 - 2 * (v5 & 0x4DDDA248)) ^ 0x9CDF8F37)) ^ 0x86F54BA0;
  LOBYTE(v1) = -33 * ((*v1 - *v0) ^ 0x74);
  v3 = qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D840) ^ 0x74)) ^ byte_2238FD9F0[byte_2238FA860[(-33 * ((qword_27D09D558 - dword_27D09D840) ^ 0x74))] ^ 0xFE]) + 3];
  (*(v3 + 8 * ((*(off_2836EB7F0 + (*(off_2836EB850 + v1 - 4) ^ 0x6Du)) ^ v1) + 3923)))(v5);
  __asm { BRAA            X8, X17 }
}

void sub_2238335D4(uint64_t a1)
{
  v1 = *(a1 + 8) + 1037613739 * ((((2 * (a1 ^ 0x34E45020)) | 0x1E1886FC) - (a1 ^ 0x34E45020) - 252461950) ^ 0xEAEA3E21);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_223833680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, char *a15, int a16)
{
  a15 = &a12;
  a14 = (50899313 * ((&a14 + 952076878 - 2 * (&a14 & 0x38BF8A4E)) ^ 0x1274A034)) ^ 0xF11;
  v19 = (*(v16 + 32872))(&a14);
  return (*(v16 + 8 * (((4 * (a16 == v17)) | (32 * (a16 == v17))) ^ v18)))(v19);
}

void NY6eB6()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D7A8) ^ 0x74)) ^ byte_2238FA960[byte_223907D60[(-33 * ((qword_27D09D558 + dword_27D09D7A8) ^ 0x74))] ^ 0xD0]) - 209];
  v1 = -33 * ((qword_27D09D558 - *v0) ^ 0x74);
  v2 = qword_2836EB200[(*(off_2836EB888 + (*(off_2836EB588 + v1 - 4) ^ 0xDBu) - 12) ^ v1) - 73];
  v3 = *v0 - &v5 + *v2;
  *v0 = 1321670111 * v3 - 0x448BD34F94FDFB74;
  *v2 = 1321670111 * (v3 ^ 0x448BD34F94FDFB74);
  v6[1] = (1037613739 * ((2 * (v6 & 0x322C410) - v6 - 52610067) ^ 0x2DDF1692)) ^ 0x86F54BA0;
  LOBYTE(v2) = -33 * ((*v2 - *v0) ^ 0x74);
  v4 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D7A8) ^ 0x74)) ^ byte_2238FD9F0[byte_2238FA860[(-33 * ((qword_27D09D558 + dword_27D09D7A8) ^ 0x74))] ^ 0xBB]) - 25];
  (*(v4 + 8 * ((*(off_2836EB808 + (*(off_2836EB438 + v2 - 8) ^ 0xFBu)) ^ v2) + 4086)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_223833AB4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 ^ 0xC93;
  v4 = (17 * (a2 ^ 0xD33) - 57) | 0x46;
  v5 = (*(v2 + 8 * (a2 ^ 0x1D2A)))(a1, 1467198621) == 0;
  return (*(v2 + 8 * (((v4 - 692) * v5) | v3)))();
}

uint64_t sub_223833B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, unsigned int a15, unsigned int a16)
{
  v18 = a13 - 573183506 > a16;
  if (a16 < a15 != (a13 - 573183506) < 0xDDD5E9AE)
  {
    v18 = (a13 - 573183506) < 0xDDD5E9AE;
  }

  return (*(v16 + 8 * ((117 * !v18) ^ (a3 + a5 - 1423))))(a1, v17 - 220);
}

uint64_t sub_223833B8C@<X0>(int a1@<W8>, uint64_t a2, int a3, int a4, uint64_t a5, int a6, uint64_t *a7)
{
  v12 = ((&a3 - 1026533112 - 2 * (&a3 & 0xC2D05908)) ^ 0x89BB9576) * a1;
  a5 = v7;
  a6 = v12 ^ 0x73F3A9F5;
  a7 = &a2;
  a3 = v12 + v9 - 826379643 + ((v10 - 268) | 0x500);
  a4 = (v10 + 66) ^ v12;
  v13 = (*(v8 + 8 * (v10 ^ 0x1152)))(&a3);
  return (*(v8 + 8 * ((3141 * (*(v7 + 24) == v11)) ^ v10)))(v13);
}

uint64_t sub_223833C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (a1 + v4 - 16);
  v8 = (a2 + v4 - 16);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * ((((v4 & 0xFFFFFFE0) == 32) * ((v5 ^ v3) - 2917)) ^ (v2 + v5 + 149))))();
}

void sub_223833C90(uint64_t a1@<X8>)
{
  v4 = *(v2 + 32);
  **(v2 + 8) = a1;
  *v4 = v1;
  *v2 = *(v3 + 24);
}

uint64_t sub_223833CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = *(v15 + 8 * (v13 - 533));
  v21 = *v14;
  v22 = a1 - 4 + a8;
  *(*v14 + v22) = (v18 ^ 0x4A) - (v17 & (2 * (v18 ^ 0x4A))) + 80;
  *(v21 + v22 + 1) = 75 - 2 * (v16 & 0xFB);
  *(v21 + v22 + 2) = 105 - (v17 & 0x29);
  *(v21 + v22 + 3) = v19 ^ 0xC0;
  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_223833D10()
{
  v3 = v1 - 669;
  v4 = 139 * ((v1 - 669) ^ 0x433);
  v5 = (v1 - 1224) | 0x90F;
  v6 = (v0 + 597199712) > 0x9783EDC3;
  if (v0 + 597199712 < (v4 - 1752962709))
  {
    v6 = 1;
  }

  return (*(v2 + 8 * ((!v6 * (v5 - 2733)) ^ v3)))(2542004587, 1752961596, 3926);
}

uint64_t sub_223833D34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFECALL ^ (v4 - 1103)) + v2;
  *(a2 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v5 + 8 * ((3646 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_223833D88(int a1, int8x16_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8, int a9)
{
  v14 = a6 - 8;
  v16.val[0].i64[0] = (v12 + v14 - 1) & 0xF;
  v16.val[0].i64[1] = (v12 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v12 + v14 + 13) & 0xF;
  v16.val[1].i64[1] = (v12 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v12 + v14 + (a8 ^ 0xFD)) & 0xF;
  v16.val[2].i64[1] = (v12 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v12 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v12 + v14) & 0xF ^ 8;
  *(a7 + v14) = veor_s8(veor_s8(veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(a7 + v14)), veor_s8(*(v11 + v16.val[0].i64[0] - 7), *(v16.val[0].i64[0] + v10 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a2), a3)));
  return (*(v13 + 8 * (((a5 == v14) * a9) ^ a1)))();
}

uint64_t sub_223833D90@<X0>(int a1@<W8>)
{
  *v1 = v7;
  v5 = (v2 + a1 - 1364 + 407) | 0x102;
  v10 = v2 - 143681137 * ((((2 * (&v10 ^ 0x74FD7861)) | 0xA38FCC96) - (&v10 ^ 0x74FD7861) - 1372055115) ^ 0xC392323A) + a1 - 1364;
  v11 = v8;
  (*(v3 + 8 * ((a1 - 1364) & 0xB0C0710C)))(&v10);
  v10 = v5 - 143681137 * ((((&v10 | 0xFF9AD77C) ^ 0xFFFFFFFE) - (~&v10 | 0x652883)) ^ 0xE6CD8493) - 665;
  v11 = v9;
  (*(v3 + 8 * (v5 + 2665)))(&v10);
  return (v4 - 1423875590);
}

uint64_t sub_223833EC8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = (v2 + 1659861868) & 0x9D1087FE;
  *v9 = a1;
  *v8 = a2;
  v6 = (v5 + 1063654953) & 0xC099EDB3;
  v13 = v10;
  v12 = v5 - 143681137 * ((2 * (&v12 & 0x47377B88) - &v12 - 1194818447) ^ 0x5E602861) - 704;
  (*(v3 + 8 * (v5 ^ 0x15CE)))(&v12);
  v13 = v11;
  v12 = v6 - 143681137 * (&v12 ^ 0xE6A8AC10) - 1693;
  (*(v3 + 8 * (v6 + 1637)))(&v12);
  return (v4 - 1423875590);
}

uint64_t sub_22383408C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (1037613739 * (((&a12 | 0x8EC3AE6E) - (&a12 & 0x8EC3AE6E)) ^ 0x5FC18311)) ^ 0x86F54BA0;
  v15 = (*(v13 + 32816))(&a12);
  return (*(v13 + 8 * ((2409 * (a12 == 1423875590)) ^ v14)))(v15);
}

void sub_2238341B4(uint64_t a1)
{
  v1 = *(*(a1 + 96) + 476) != 1;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_223834220()
{
  v4 = (v0 - 1340107200) & 0x20679E;
  v8 = v0 - ((-270573325 - (&v8 | 0xEFDF60F3) + (&v8 | 0x10209F0C)) ^ 0xF688331C) * v2 - 695;
  v9 = v6;
  (*(v1 + 8 * (v0 ^ 0x15B5u)))(&v8);
  v8 = v4 - (((&v8 | 0xB644965F) - (&v8 & 0xB644965F)) ^ 0x50EC3A4F) * v2 - 150;
  v9 = v7;
  (*(v1 + 8 * (v4 + 3180)))(&v8);
  return (v3 - 1423875590);
}

void sub_223834374()
{
  (*(v2 + 8 * ((v0 + 1654) ^ 0x1D70)))(*v3, *v1, *(v1 + 8) + ((v0 + 1654) ^ 0x9DDB1460));
  *v1 = v5;
  *(v1 + 8) = v4;
  *(v1 + 12) = v4;
  JUMPOUT(0x2238343B0);
}

uint64_t sub_2238343CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, unsigned int a16, unsigned int a17, uint64_t a18)
{
  v23 = &a13;
  a13 = (v22 - 252) ^ (1564307779 * (((v23 | 0xF0F6E1E0) - (v23 & 0xF0F6E1E0)) ^ 0x67FB2DF3));
  a17 = -1564307779 * (((v23 | 0xF0F6E1E0) - (v23 & 0xF0F6E1E0)) ^ 0x67FB2DF3) + 1264667083 * v20 + 1046635743;
  a15 = a10;
  (*(v21 + 8 * (v22 + 1463)))(&a13);
  v24 = 742307843 * ((-212657025 - (&a13 | 0xF3531C7F) + (&a13 | 0xCACE380)) ^ 0x128E6ED5);
  a16 = (((v22 - 15) ^ 0x6FFBD5A7) + ((2 * v19) & 0xAFDDDEDE) + ((461 * (v22 ^ 0xA5D) - 672207915) ^ v19)) ^ v24;
  a13 = (v22 - 1359) ^ v24;
  a15 = v18;
  a18 = a10;
  v25 = (*(v21 + 8 * (v22 ^ 0x1A45)))(&a13);
  return (*(v21 + 8 * ((1073 * (a14 == 1423875590)) ^ v22)))(v25);
}

uint64_t sub_22383453C()
{
  v8 = (**(v6 + 8) ^ v2) - (**(v5 + 8) ^ v2);
  **(v0 + 8) = v8 + v2 - (v4 & (2 * v8));
  return (*(v3 + 8 * ((v1 != 1) ^ (8 * ((v7 + 1) ^ 0x58C)))))(208);
}

uint64_t sub_223834608@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = a2 - 658;
  v5 = 1214 * ((a2 - 658) ^ 0xB41);
  v6 = a2 - 1137;
  v7 = (*(v3 + 8 * ((a2 - 658) ^ 0x1B73)))(a1, 3638310758);
  *v2 = v7;
  return (*(v3 + 8 * (((v7 != 0) * (v5 ^ v6)) ^ v4)))();
}

uint64_t sub_223834668(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25, uint64_t a26)
{
  v27.n128_u64[0] = 0xA0A0A0A0A0A0A0A0;
  v27.n128_u64[1] = 0xA0A0A0A0A0A0A0A0;
  v28.n128_u64[0] = 0x5050505050505050;
  v28.n128_u64[1] = 0x5050505050505050;
  return (*(v26 + 8 * ((((a19 + 182) ^ a19 ^ 0x35A ^ 0xEE5) * (a15 < 0xFFFFFFFE)) ^ a19)))(2143905805, 1244663192, a25, a26, 1260765788, 4153009135, 2626053652, 2151061495, a1, a2, a3, v27, v28);
}

uint64_t sub_2238346EC@<X0>(uint64_t a1@<X8>, __n128 a2@<Q5>, uint64_t a3)
{
  v6 = (a3 + v4);
  v6[-1] = a2;
  *v6 = a2;
  return (*(v5 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFE0) == 32) * (v3 - 1339)) ^ v3)))();
}

uint64_t sub_223834728(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_223834790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = v16 + 2395;
  v21 = ((v17 - 1795699514) ^ 0x94F7CCC6) > 7 && a16 - a1 >= (((v19 - 3210) | 0xAAEu) ^ 0xA9EuLL);
  return (*(v18 + 8 * ((v21 * (((v19 - 372124897) & 0x1E6EFFF7) - 138469246)) ^ v19)))();
}

uint64_t sub_22383480C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (v31 != -267920832 && v31 != 1239098827 && v31 != -82561636)
  {
    return (*(v35 + 8 * ((v33 - 688) ^ (504 * ((v32 & 8) == 0)))))();
  }

  HIDWORD(a15) = v31;
  v37 = **(v36 + 8 * (v33 ^ 0x2AD));
  return (*(v35 + 8 * (v33 - 625)))(13, 250, (v33 - 604), *(v35 + 8 * (v33 - 625)), v37 ^ 0xFA, *(*(v36 + 8 * (v33 & 0x74C36CB4)) + 4), v37, 297, a9, a10, a11, a12, a13, v34, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_2238349FC()
{
  v4 = 121 * (v0 ^ 0xC2);
  v8 = v0 - (((&v8 | 0x96E71DA4) - &v8 + (&v8 & 0x6918E258)) ^ 0x704FB1B4) * v3 + 576;
  v9 = v7;
  (*(v1 + 8 * (v0 ^ 0x10CE)))(&v8);
  v8 = v4 - (&v8 ^ 0xE6A8AC10) * v3 + 290;
  v9 = v6;
  (*(v1 + 8 * (v4 ^ 0x11EC)))(&v8);
  return (v2 - 1423875590);
}

uint64_t sub_223834B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, int a18)
{
  v24 = 1785193651 * (((v22 | 0xA9994EDBD8620BD1) - (v22 | 0x5666B124279DF42ELL) + 0x5666B124279DF42ELL) ^ 0xF601F3E32E43AFFDLL);
  HIDWORD(a17) = v23 - v24 + 621;
  a15 = a12;
  a16 = v24 ^ (v20 - ((2 * v20) & 0xFF9F84A28809669CLL) - 0x303DAEBBFB4CB2);
  (*(v21 + 8 * (v23 + 2379)))(&a15);
  a17 = a12;
  a15 = v19;
  a18 = (v23 - 122) ^ (435584651 * (((v22 | 0x5FE1FF96) - (v22 & 0x5FE1FF96)) ^ 0x32D3E5C0));
  (*(v21 + 8 * (v23 ^ 0x90C)))(&a15);
  v25 = 1564307779 * (((v22 | 0x3492DA0D) - (v22 & 0x3492DA0D)) ^ 0xA39F161E);
  LODWORD(a15) = (v23 + 644) ^ v25;
  HIDWORD(a17) = v23 - 1228 - v25 + (v23 + 1264665324) * v18 + 1046635212;
  a16 = a12;
  v26 = (*(v21 + 8 * (v23 ^ 0x16C9)))(&a15);
  return (*(v21 + 8 * ((3664 * (a17 == 1423875590)) ^ v23)))(v26);
}

uint64_t sub_223834D20@<X0>(uint64_t a1@<X8>)
{
  v13.val[1].i64[0] = (v4 + 13) & 0xF;
  v13.val[1].i64[1] = (v4 + 12) & 0xF;
  v13.val[2].i64[0] = (v4 + 11) & 0xF;
  v13.val[2].i64[1] = (v4 + 10) & 0xF;
  v13.val[3].i64[0] = (v4 + 9) & 0xF;
  v13.val[3].i64[1] = v6 & 0xF ^ 7;
  v14.val[0].i64[0] = (v4 + 7) & 0xF;
  v14.val[0].i64[1] = (v4 + 6) & 0xF;
  v14.val[1].i64[0] = (v4 + 5) & 0xF;
  v14.val[1].i64[1] = (v4 + 4) & 0xF;
  v14.val[2].i64[0] = (v4 + 3) & 0xF;
  v14.val[2].i64[1] = (v4 + 2) & 0xF;
  v14.val[3].i64[0] = (v4 + 1) & 0xF;
  v14.val[3].i64[1] = v4 & 0xF;
  v10 = vqtbl4q_s8(v14, xmmword_223907EE0).u64[0];
  v11.i64[0] = 0x7575757575757575;
  v11.i64[1] = 0x7575757575757575;
  v13.val[0].i64[0] = ((v5 + 762221844) & 0xD2916B6F ^ 0x948) & (v7 + 15);
  v13.val[0].i64[1] = (v4 + 14) & 0xF;
  v14.val[3].i64[0] = vqtbl4q_s8(v13, xmmword_223907EE0).u64[0];
  v14.val[3].i64[1] = v10;
  v14.val[0] = vrev64q_s8(vmulq_s8(v14.val[3], v11));
  *(v8 + v7) = veorq_s8(veorq_s8(veorq_s8(*(v3 + v13.val[0].i64[0] - 15), *(a1 + v7)), veorq_s8(*(v1 + v13.val[0].i64[0] - 15), *(v2 + v13.val[0].i64[0] - 15))), vextq_s8(v14.val[0], v14.val[0], 8uLL));
  return (*(v9 + 8 * ((1202 * ((v6 & 0x10) == 16)) ^ v5)))(v13.val[0].i64[1]);
}

uint64_t sub_223834F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, unint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  STACK[0x4E8] = 0x9908B0DF00000000;
  LODWORD(STACK[0x2F4]) = **(v63 + 8 * (v62 - 944));
  *(v64 - 184) = **(v63 + 8 * (v62 ^ 0x4ED)) ^ a38;
  *(v64 - 192) = v62 - 1719666357 + a38;
  *(v64 - 168) = a38;
  *(v64 - 176) = a38 ^ (v62 - 1719666357) ^ 0x88;
  *(v64 - 172) = -2124586881 - a38 + v62;
  *(v64 - 160) = ((v62 - 1719666357) ^ 0xD5) - a38;
  *(v64 - 156) = -a38;
  v66 = (*(v65 + 8 * (v62 + 3048)))(v64 - 192);
  return (*(a62 + 8 * *(v64 - 188)))(v66);
}

void sub_223835074(int a1@<W8>)
{
  if (a1 == 827863599)
  {
    v2 = 1423875590;
  }

  else
  {
    v2 = 1423833566;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_223835178@<X0>(uint64_t a1@<X0>, int a2@<W4>, int a3@<W5>, uint64_t a4@<X8>)
{
  v7 = (v5 - a3) - 3622 + v4;
  v8 = *(a4 + v7 - 15);
  v9 = *(a4 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((39 * ((v4 & 0xFFFFFFE0) == 32)) ^ (a2 + v5 - 218))))();
}

uint64_t sub_2238351D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v43 = v38 + v39;
  if (((a25 - v38) | (v38 - a25)) > ((v38 + v39) ^ (v40 - 624)))
  {
    v44 = 0x7FFFFFFF;
  }

  else
  {
    v44 = 0x80000000;
  }

  *v42 = v44 + (v38 ^ 1);
  (*(v41 + 8 * (v38 ^ 0x101E)))(a38);
  v45 = vld1q_dup_f32(v42);
  v46.i64[0] = 0x8000000080000000;
  v46.i64[1] = 0x8000000080000000;
  v47.i64[0] = 0x100000001;
  v47.i64[1] = 0x100000001;
  v48.i64[0] = *(v42 + 4);
  v48.i32[2] = *(v42 + 12);
  v49 = vextq_s8(v45, v48, 0xCuLL);
  v50 = v48;
  v50.i32[3] = *(v42 + 16);
  v51 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v50, vnegq_f32(v47)), vandq_s8(v49, v46)), 1uLL), *(v42 + 1588));
  v49.i32[0] = *(&STACK[0x528] + (*(v42 + 4) & 1));
  v49.i32[1] = *(&STACK[0x528] + (*(v42 + 8) & 1));
  v49.i32[2] = *(&STACK[0x528] + (*(v42 + 12) & 1));
  v49.i32[3] = *(&STACK[0x528] + (v50.i8[12] & 1));
  *v42 = veorq_s8(vaddq_s32(vsubq_s32(v51, vandq_s8(vaddq_s32(v51, v51), vdupq_n_s32(0xEDC92146))), vdupq_n_s32(0xF6E490A3)), v49);
  return (*(v41 + 8 * ((363 * (v43 ^ 0x365A938B)) ^ 0x36)))();
}

uint64_t sub_2238354B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, unsigned int a15, char *a16, int a17)
{
  a15 = (v18 + 3418) ^ (50899313 * (((&a15 | 0xF162B4C7) + (~&a15 | 0xE9D4B38)) ^ 0xDBA99EBC));
  a16 = &a13;
  v19 = (*(v17 + 8 * (v18 ^ 0x11BA)))(&a15);
  return (*(v17 + 8 * ((2810 * (a17 == (((v18 ^ 0x10) + 1801506869) ^ 0x3FBE4FDA))) ^ v18)))(v19);
}

uint64_t sub_223835560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, char *a18, int a19)
{
  a18 = &a12;
  a17 = (50899313 * ((-203976578 - (&a17 | 0xF3D7907E) + (&a17 | 0xC286F81)) ^ 0x26E345FB)) ^ 0xF11;
  v20 = (*(v19 + 32872))(&a17);
  return (*(v19 + 8 * ((3226 * (a19 == 1423875590)) ^ 0x6C7u)))(v20);
}

uint64_t sub_2238355FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (50899313 * ((((&a14 | 0xA0625BD8) ^ 0xFFFFFFFE) - (~&a14 | 0x5F9DA427)) ^ 0x75568E5D)) ^ 0xF11;
  a15 = &a11;
  v18 = (*(v16 + 32872))(&a14);
  return (*(v16 + 8 * ((1590 * (a16 == ((v17 - 1748) ^ 0x934))) ^ 0xA40u)))(v18);
}

uint64_t sub_223835798@<X0>(int a1@<W4>, char a2@<W7>, uint64_t a3@<X8>)
{
  v9 = *(a3 + v3 + 72);
  v10 = ((2 * v3) & 0xFFFAD8D0) + (v3 ^ 0xFFFD6C69) + a1;
  *(v5 + v10) = (HIBYTE(v9) ^ 0xDF) - (((HIBYTE(v9) ^ 0xFFFFFFDF) << ((v6 & 0x58) - 87)) & 0xA0) + 80;
  *(v5 + v10 + 1) = (BYTE2(v9) ^ 0xFC) - ((2 * (BYTE2(v9) ^ 0xFC)) & 0xA0) + 80;
  *(v5 + v10 + 2) = (BYTE1(v9) ^ a2) - 2 * ((BYTE1(v9) ^ a2) & 0x58 ^ BYTE1(v9) & 8) + 80;
  *(v5 + v10 + 3) = v9 ^ v7;
  return (*(v8 + 8 * ((1899 * (v3 + 4 < *(a3 + 92))) ^ v4)))();
}

void sub_223835878(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  __asm { BRAA            X0, X17 }
}

uint64_t sub_223835AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int8x16_t a21, int32x4_t a22, int8x16_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v39 = v34 ^ v35;
  *v37 = (v34 ^ v35 ^ 0xB65A938E | (((a15 - v34) | (v34 - a15)) >= 0)) ^ (v34 + 1);
  (*(v36 + 8 * (v34 ^ 0x101E)))(a34);
  v40 = vld1q_dup_f32(v37);
  v41.i64[0] = 0x8000000080000000;
  v41.i64[1] = 0x8000000080000000;
  v42.i64[0] = *(v37 + 4);
  v42.i32[2] = *(v37 + 12);
  v43 = vextq_s8(v40, v42, 0xCuLL);
  v44 = v42;
  v44.i32[3] = *(v37 + 4 * ((v39 - 911905546) | 0xA40u) - 11008);
  v45 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v44, a21), vandq_s8(v43, v41)), 1uLL), *(v37 + 1588));
  v43.i32[0] = *(v38 + 4 * (*(v37 + 4) & 1));
  v43.i32[1] = *(v38 + 4 * (*(v37 + 8) & 1));
  v43.i32[2] = *(v38 + 4 * (*(v37 + 12) & 1));
  v43.i32[3] = *(v38 + 4 * (v44.i8[12] & 1));
  *v37 = veorq_s8(vaddq_s32(vaddq_s32(v45, a22), vmvnq_s8(vandq_s8(vaddq_s32(v45, v45), a23))), v43);
  return (*(v36 + 8 * (v39 - 911904833)))(-911906117, 911905678, 2366132684, 437298072, 2624, -11008);
}

uint64_t sub_223835CD8()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_223835D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = ((((v4 - 1623) | 0xC88u) - 3819) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((457 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_223835D58@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 | 0x24) - 435584651 * ((2 * (&v5 & 0x1ACB0D50) - &v5 + 1697968813) ^ 0x806E8FB) + 2108;
  v6 = v3;
  v7 = v1;
  result = (*(a1 + 8 * ((v2 | 0x24) ^ 0x11B0)))(&v5);
  *(v3 + 4) = 1056799258 - *(v3 + 4);
  return result;
}

uint64_t sub_223835E34()
{
  v6 = (((v3 + 655) - 2018) ^ v2) + v1;
  *(v4 - 7 + v6) = veor_s8(*(v0 - 7 + v6), 0x5050505050505050);
  return (*(v5 + 8 * ((176 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v3)))();
}

uint64_t sub_223835E8C(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned int a43)
{
  v48 = v46[396] ^ ((*v46 & 0x7FFFFFFE | v46[623] & 0x80000000) >> 1);
  v46[623] = (v48 + a3 - (a4 & (2 * v48))) ^ *(v47 + 4 * (*v46 & 1));
  return (*(v45 + 8 * ((1367 * (a43 > (v43 ^ v44 ^ (a2 - 429)))) ^ v43)))();
}

uint64_t sub_223835F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (a10 + v12);
  *(v15 - 1) = v14;
  *v15 = v14;
  return (*(v13 + 8 * ((((v10 & 0xFFFFFFFFFFFFFFF0) == 16) * ((((v11 | 0x12E) + 1145) | 0x15) ^ 0x86C)) ^ (v11 | 0x12E))))();
}

uint64_t sub_22383613C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v6 + v7);
  return (*(a4 + 8 * ((2 * ((((v5 + 363275814) ^ (v7 == 0)) & 1) == 0)) & 0xF7 | (8 * (((v5 + 38) ^ ~(v7 == 0)) & 1)) | (v5 - 948))))();
}

void sub_223836190(_DWORD *a1)
{
  v1 = *a1 ^ (742307843 * (((a1 | 0x209D4273) - (a1 | 0xDF62BD8C) - 547177076) ^ 0x3EBFCF26));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_223836250@<X0>(int a1@<W8>)
{
  v5 = v2 ^ 0x43B;
  v6 = *(v3 + 4);
  if (v6 + 1619084019 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = -a1;
  }

  *(v3 + 4) = v7 + v6;
  v8 = v1 + 759421281;
  v9 = v8 < (v5 ^ 0xECC3D123);
  **(v3 + 8) = *(*(v3 + 8) + 4 * a1);
  if (v8 >= (v5 ^ 0xECC3D123))
  {
    v9 = v8 > 1824774465;
  }

  return (*(v4 + 8 * ((1580 * v9) ^ v5)))();
}

uint64_t sub_2238362F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, int a14, int a15)
{
  v20 = 1785193651 * (v19 ^ 0x5F98BD38F621A42CLL);
  a15 = 2380 - v20;
  a12 = a11;
  a13 = v20 ^ (v16 - ((2 * v16) & 0xFF9F84A28809669CLL) - 0x303DAEBBFB4CB2);
  (*(v17 + 33104))(&a12);
  v21 = 1785193651 * (((v19 | 0xD88EF5160910414BLL) - (v19 & 0xD88EF5160910414BLL)) ^ 0x8716482EFF31E567);
  a15 = 2380 - v21;
  a12 = a11;
  a13 = (v15 - ((2 * v15) & 0xFF9F84A28809669CLL) - 0x303DAEBBFB4CB2) ^ v21;
  v22 = (*(v17 + 33104))(&a12);
  return (*(v17 + 8 * ((2805 * (a14 == v18)) ^ 0x623u)))(v22);
}

uint64_t sub_223836450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v67 = v64 - 906;
  v68 = v64 + 1867;
  v69 = (v64 - 80) | 0x50;
  *(v66 - 192) = &a64;
  *(v66 - 180) = (v64 - 925) ^ (1037613739 * ((((v66 - 192) | 0x3F7B645) - ((v66 - 192) | 0xFC0849BA) - 66565702) ^ 0xD2F59B3A));
  *(v66 - 168) = &STACK[0x234];
  LOBYTE(STACK[0x1890]) = -85 * ((((v66 + 64) | 0x45) - ((v66 + 64) | 0xBA) - 70) ^ 0x3A) + 113;
  v73 = v65;
  v70 = (*(v65 + 8 * ((v64 - 906) ^ 0x10E0)))(v66 - 192);
  v71 = *(v66 - 184);
  LODWORD(STACK[0x250]) = v71;
  return (*(v73 + 8 * ((2981 * (v71 == (v69 ^ (v68 + 1423871675)))) ^ v67)))(v70);
}

uint64_t sub_223836574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, unsigned int a13, char *a14, int a15)
{
  a13 = (v16 + 2935) ^ (50899313 * (((&a13 | 0x419A0315) - &a13 + (&a13 & 0xBE65FCE8)) ^ 0x6B51296F));
  a14 = &a10;
  v18 = (*(v15 + 8 * (v16 + 3187)))(&a13);
  return (*(v15 + 8 * ((2680 * (a15 == v17 + ((v16 + 386858053) & 0x10A7F) - 2655)) ^ v16)))(v18);
}

uint64_t sub_22383665C@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 1646585563;
  v10 = a2 - 1;
  v11 = *(v4 + v9);
  if (v11 == 80)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 208)
  {
    v12 = 1423875590;
    v13 = *v2;
    v14 = (*(v2 + 16) + v3);
    *result = v4;
    *(result + 8) = v5;
    *(result + 12) = v10;
    if (v14 == 99)
    {
      v15 = 1166162612;
    }

    else
    {
      v15 = 1166162613;
    }

    *(result + 16) = 189204629;
    *(result + 20) = v15;
    *(result + 24) = 1423875590;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 ^ 0x18D9)))();
    v12 = 1423833567;
  }

  *(v2 + 12) = v12;
  return result;
}

uint64_t sub_223836770()
{
  v6 = (v3 + v2 + 8);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF0) == 16) * ((((v1 ^ 0x994) + 711) | 0x26C) - 2549)) ^ v1 ^ 0x994)))();
}

uint64_t sub_223836828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _DWORD *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  STACK[0x220] = &STACK[0x530] + v62 + 2176;
  STACK[0x420] = &STACK[0x530] + v62 + 2304;
  LODWORD(STACK[0x298]) = a5;
  return (*(v63 + 8 * ((51 * (*a27 != ((a9 + 1119537205) & 0xBD4533FD ^ 0x179))) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_223836900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 136) = v18 - 435584651 * (((((v19 - 136) | 0x2CC3A1A4) ^ 0xFFFFFFFE) - (~(v19 - 136) | 0xD33C5E5B)) ^ 0xBE0E440D) + 1055;
  *(v19 - 128) = &a15;
  *(v19 - 120) = a14;
  (*(v16 + 8 * (v18 + 2643)))(v19 - 136);
  v20 = 143681137 * ((2 * ((v19 - 136) & 0xCAF7698) - (v19 - 136) + 1934657890) ^ 0x95F82572);
  *(v19 - 120) = 932681258 - v20;
  *(v19 - 136) = v18 - v20 + 2149;
  *(v19 - 128) = v15;
  (*(v16 + 8 * (v18 + 2677)))(v19 - 136);
  *(v19 - 112) = (v18 + 2452) ^ (1361651671 * ((2 * ((v19 - 136) & 0x61A58758) - (v19 - 136) + 509245606) ^ 0x5531B4D8));
  *(v19 - 128) = v15;
  *(v19 - 120) = a14;
  v21 = (*(v16 + 8 * (v18 + 2563)))(v19 - 136);
  return (*(v16 + 8 * ((14 * (*(v19 - 136) > v17 + (v18 ^ 0xDCFu) - 1737 - 324)) ^ v18)))(v21);
}

void TBGzuU3p5n1n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_223836C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = 50899313 * ((-1211276727 - ((v63 - 192) | 0xB7CD6249) + ((v63 - 192) | 0x48329DB6)) ^ 0x62F9B7CC);
  *(v63 - 192) = &STACK[0x29C];
  *(v63 - 168) = v65 + (v62 ^ 0x5F5) + 468;
  *(v63 - 176) = &STACK[0x3E8];
  *(v63 - 184) = v65 + 1753259524;
  *(v63 - 160) = 0;
  v66 = (*(v64 + 8 * ((v62 ^ 0x5F5) + 3804)))(v63 - 192);
  return (*(a62 + 8 * (((*(v63 - 152) == 1423875590) * (((((v62 ^ 0x5F5) - 292) | 0xC) ^ 0xFFFFFFF3) + (((v62 ^ 0x5F5) - 289) | 9))) ^ v62 ^ 0x5F5)))(v66);
}

uint64_t sub_223836EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  *(v20 - 128) = &a16;
  *(v20 - 120) = &a14;
  *(v20 - 112) = (v19 + 1486) ^ (((((v20 - 136) | 0x4CDE2D4B) - (v20 - 136) + ((v20 - 136) & 0xB321D2B0)) ^ 0x7B5E135) * v18);
  v21 = (*(v17 + 8 * (v19 + 1597)))(v20 - 136);
  return (*(v17 + 8 * (((((v19 + 11) ^ (*(v20 - 136) > v16)) & 1) * ((v19 - 74) ^ 0x927)) ^ v19)))(v21);
}

uint64_t sub_223836F4C()
{
  v2 = *(v1 + 33432);

  return v2(v0);
}

uint64_t sub_223836F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, int a14, int a15)
{
  a15 = v20 + 557 - 1785193651 * (((v19 ^ 0xC0E64EE8 | 0x2506F67) - (v19 ^ 0xC0E64EE8 | 0xFDAF9098) - 38825832) ^ 0x349785A3);
  a12 = a11;
  a13 = (v17 - (((v20 - 664) ^ 0xFF9F84A28809621BLL) & (2 * v17)) - 0x303DAEBBFB4CB2) ^ (1785193651 * (((v19 ^ 0xAA1E0BC6C0E64EE8 | 0xCE76DBDB02506F67) - (v19 ^ 0xAA1E0BC6C0E64EE8 | 0x31892424FDAF9098) + 0x31892424FDAF9098) ^ 0x3BF06D25349785A3));
  (*(v18 + 8 * (v20 ^ 0x1735)))(&a12);
  a12 = a11;
  a13 = (1785193651 * ((((2 * v19) | 0xCEDDE1367E74D01ALL) - v19 + 0x18910F64C0C597F3) ^ 0xB8F64DA3C91BCC21)) ^ (v16 - ((2 * v16) & 0xFF9F84A28809669CLL) - 0x303DAEBBFB4CB2);
  a15 = v20 + 557 - 1785193651 * ((((2 * v19) | 0x7E74D01A) - v19 - 1060792333) ^ 0xC91BCC21);
  (*(v18 + 8 * (v20 ^ 0x1735)))(&a12);
  v21 = 1785193651 * ((v19 - 2 * (v19 & 0x6BC77A8A2B9E6DE9) + 0x6BC77A8A2B9E6DE9) ^ 0x345FC7B2DDBFC9C5);
  a15 = v20 + 557 - v21;
  a12 = a11;
  a13 = v21 ^ (v15 - ((2 * v15) & 0xFF9F84A28809669CLL) - 0x303DAEBBFB4CB2);
  v22 = (*(v18 + 8 * (v20 ^ 0x1735)))(&a12);
  return (*(v18 + 8 * ((2596 * (a14 == 1423875590)) ^ v20)))(v22);
}

uint64_t sub_223837194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, char *a18, int a19)
{
  a17 = (50899313 * ((2 * (&a17 & 0x4F542A40) - &a17 + 816567742) ^ 0x1A60FFC4)) ^ 0xF11;
  a18 = &a11;
  v22 = (*(v20 + 32872))(&a17);
  return (*(v20 + 8 * ((41 * (a19 == v21)) | v19)))(v22);
}

uint64_t sub_2238372B0@<X0>(int a1@<W8>)
{
  v8 = *(v6 + 8 * (a1 ^ 2));
  v9 = *v8;
  v10 = *(v6 + 8 * (a1 - 71));
  v11 = *(v10 - 4);
  v22[0] = 107 * *v11 + 18;
  v22[1] = 107 * v11[1] + 18;
  v22[2] = 107 * v11[2] + 18;
  v22[3] = 107 * v11[3] + 18;
  v22[4] = 107 * v11[4] + 18;
  v22[5] = 107 * v11[5] + 18;
  v22[6] = 107 * v11[6] + 18;
  v22[7] = 107 * v11[7] + 18;
  v22[8] = 107 * v11[8] + 18;
  v22[9] = 107 * v11[9] + 18;
  v22[10] = 107 * v11[10] + 18;
  v22[11] = 107 * v11[11] + 18;
  v22[12] = 107 * v11[12] + 18;
  v22[13] = 107 * v11[13] + 18;
  v22[14] = 107 * v11[14] + 18;
  v22[15] = 107 * v11[15] + 18;
  v22[16] = 107 * v11[16] + 18;
  v12 = *(v10 - 4);
  v22[17] = 107 * v12[17] + 18;
  v22[18] = 107 * v12[18] + 18;
  v22[19] = 107 * v12[19] + 18;
  v22[20] = 107 * v12[20] + 18;
  v22[21] = 107 * v12[21] + 18;
  v22[22] = 107 * v12[22] + 18;
  v22[23] = 107 * v12[23] + 18;
  v22[24] = 107 * v12[24] + 18;
  v22[25] = 107 * v12[25] + 18;
  v22[26] = 107 * v12[26] + 18;
  v22[27] = 107 * v12[27] + 18;
  v22[28] = 107 * v12[28] + 18;
  v22[29] = 107 * v12[29] + 18;
  result = (*(v4 + 8 * (a1 + 4016)))(v9, v22, v2);
  if (result == 1102)
  {
    v14 = *v8;
    v15 = *(v6 + 8 * (v5 + 2));
    v16 = *v15;
    v21[0] = 87 * **v15 - 80;
    v21[1] = 87 * v16[1] - 80;
    v21[2] = 87 * v16[2] - 80;
    v21[3] = v16[3] * (((v5 - 59) | 0x20) ^ 0xF7) - 80;
    v21[4] = 87 * v16[4] - 80;
    v21[5] = 87 * v16[5] - 80;
    v21[6] = 87 * v16[6] - 80;
    v21[7] = 87 * v16[7] - 80;
    v21[8] = 87 * v16[8] - 80;
    v21[9] = 87 * v16[9] - 80;
    v21[10] = 87 * v16[10] - 80;
    v21[11] = 87 * v16[11] - 80;
    v21[12] = 87 * v16[12] - 80;
    v21[13] = 87 * v16[13] - 80;
    v21[14] = 87 * v16[14] - 80;
    v21[15] = 87 * v16[15] - 80;
    v21[16] = 87 * v16[16] - 80;
    v17 = *v15;
    v21[17] = 87 * v17[17] - 80;
    v21[18] = 87 * v17[18] - 80;
    v21[19] = 87 * v17[19] - 80;
    v18 = *(v4 + 8 * ((2131 * ((*(v4 + 8 * (v5 + 4016)))(v14, v21, v2) == 0)) ^ (v5 + 1509)));
    __asm { BRAA            X8, X17 }
  }

  if (result)
  {
    v20 = 1423833406;
  }

  else
  {
    *(v7 + 352) |= v5 - 177;
    *(v7 + 52) = 90175451;
    result = (*(v4 + 8 * (v5 + 3934)))(*v2, v7 + 340, v7 + 344, v7 + 348, v3);
    v19 = *v1;
    **(v1 + 24) = *v2;
    *v19 = ((v5 + 1509) ^ 0x61B) + *v3 - ((2 * *v3) & 0xBBD15F92) - 571953394;
    v20 = 1423875590;
  }

  *(v1 + 8) = v20;
  return result;
}

uint64_t sub_22383764C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((v2 + v4 - 1) >= 0x7FFFFFFF)
  {
    v6 = ((v5 + 932327263) & 0xC86DD1DF ^ 0x3EFD7BC5) - v3;
  }

  else
  {
    v6 = v3;
  }

  *(a2 + 4) = v6;
  *(result + 8) = -1319456710;
  return result;
}

uint64_t sub_223837A70(uint64_t a1, uint64_t a2, int a3, unsigned int a4, char a5, int a6, uint64_t a7, uint64_t a8)
{
  v24 = (a6 + v14);
  v25 = ((v17 ^ 0xC7D88DBABF5D6C0DLL) + 0x3827724540A293F3) ^ ((v17 ^ 0xE73BF2E3995ED917) + 0x18C40D1C66A126E9) ^ (((v24 + 0x20E37F58FAB8833DLL) ^ v17) - 0x20E37F5990D0574CLL);
  v26 = (v25 + v18) * (v25 + 0x7DF603E46DF9D188) + ((v25 + 0x7DF603E46DF9D188) * v20 + (v25 + v18) * v19) * v21 + v22;
  v27 = v26 - (((v26 * v23) >> 64) >> 31) * a7;
  v28 = v27 * a1 + (a3 ^ v12) * (a3 ^ v12) + a8;
  v29 = v28 - (((v28 * v15) >> 64) >> 31) * v16;
  *(v9 + a4) = (((v29 * v27) >> 15) - (a5 & (2 * ((v29 * v27) >> 15))) + 80) ^ *(v8 + a4);
  *(v9 + (a4 | 1)) = (((v29 * v27) >> 23) - (a5 & (2 * ((v29 * v27) >> 23))) + 80) ^ *(v8 + (a4 | 1));
  *(v9 + (a4 | 2)) = (((v29 * v27) >> 31) - (a5 & (2 * ((v29 * v27) >> 31))) + 80) ^ *(v8 + (a4 | 2));
  *(v9 + (a4 | 3)) = (((v29 * v27) >> 39) - (a5 & (2 * ((v29 * v27) >> 39))) + 80) ^ *(v8 + (a4 | 3));
  v30 = a4 + 4;
  v31 = v24 + 1776824345;
  LODWORD(v29) = v11 + a6 + 1411499579;
  v32 = v29 < v13;
  v33 = v30 + v13 < v29;
  if (v30 > 0x5F9F01EA != v32)
  {
    v33 = v32;
  }

  return (*(v10 + 8 * (((4 * !v33) | (16 * !v33)) ^ v31)))();
}

uint64_t sub_223837BF4@<X0>(int a1@<W8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>, int8x16_t a4@<Q2>, int8x16_t a5@<Q3>, int32x4_t a6@<Q4>, int8x16_t a7@<Q5>)
{
  v14 = v9 + 4;
  a7.i64[0] = *(v11 + 4);
  a7.i32[2] = *(v13 + 4 * (v14 + v7));
  v15 = vextq_s8(a2, a7, 0xCuLL);
  v16 = a7;
  v16.i32[3] = *(v11 + 16);
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v16, a4), vandq_s8(v15, a3)), 1uLL), *(v11 - 908));
  v15.i32[0] = *(v8 + 4 * (*(v11 + 4) & 1));
  v15.i32[1] = *(v8 + 4 * (*(v11 + 8) & 1));
  v15.i32[2] = *(v8 + 4 * (*(v13 + 4 * (v14 + v7)) & 1));
  v15.i32[3] = *(v8 + 4 * (v16.i8[12] & 1));
  *v11 = veorq_s8(vaddq_s32(vsubq_s32(v17, vandq_s8(vaddq_s32(v17, v17), a5)), a6), v15);
  return (*(v12 + 8 * (((v14 == -3137) * v10) ^ a1)))();
}

void sub_223837CD0()
{
  v0 = STACK[0x3E8];
  LODWORD(STACK[0x294]) = 1;
  STACK[0x2D8] = v0;
  LODWORD(STACK[0x374]) = 1656582556;
  JUMPOUT(0x22382D1F0);
}

void sub_223837D08(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16) - 143681137 * (a1 ^ 0xE6A8AC10);
  v2 = *(*(a1 + 8) + 4);
  if (v2 - 528399629 < 0)
  {
    v3 = 528399629 - v2;
  }

  else
  {
    v3 = v2 - 528399629;
  }

  v6 = *(a1 + 8);
  v5 = v1 - 1564307779 * ((-1788220977 - (&v5 | 0x9569E9CF) + (&v5 | 0x6A961630)) ^ 0xFD9BDA23) + 522;
  v4 = qword_2836EB200[v1 - 1730];
  (*(v4 + 8 * (v1 ^ 0x172B)))(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_223837E20@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20)
{
  v28 = v24 + v21 - 82;
  *(&a20 + v20) = *(v26 + v21) - ((2 * *(v26 + v21)) & 0xA0) + 80;
  v29 = v23 + v21 + 1 < a1;
  if (a1 < v23 != v28 > v22 + 83)
  {
    v29 = a1 < v23;
  }

  return (*(v25 + 8 * ((7 * !v29) | v27)))();
}

uint64_t sub_223837E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, char *a19, int a20)
{
  a18 = (50899313 * (((&a18 | 0xBD4B461C) - &a18 + (&a18 & 0x42B4B9E0)) ^ 0x97806C66)) ^ 0xF11;
  a19 = &a14;
  v22 = (*(v21 + 32872))(&a18);
  return (*(v21 + 8 * ((875 * (a20 == v20)) ^ 0xDE2u)))(v22);
}

uint64_t sub_223837FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v22 = v19 + 695;
  *(v21 - 128) = a13;
  *(v21 - 116) = -1564307779 * ((2 * (v20 & 0x1C1ED408) - v20 - 471782414) ^ 0x74ECE7E1) + 1264667083 * v17 + 1046635743;
  *(v21 - 136) = (v19 - 760) ^ (1564307779 * ((2 * (v20 & 0x1C1ED408) - v20 - 471782414) ^ 0x74ECE7E1));
  (*(v18 + 8 * (v19 + 955)))(v21 - 136);
  v23 = v16 - 0x303DAEBBFB5128 + (v19 - 2021) - (((11 * ((v19 + 695) ^ 0xF3Au)) ^ 0xFF9F84A288096724) & (2 * v16));
  v24 = v19 - 783;
  v25 = 1785193651 * (((v20 | 0x18316D8EF910CF44) - v20 + (v20 & 0xE7CE927106EF30B8)) ^ 0x47A9D0B60F316B68);
  *(v21 - 116) = v19 - 783 - v25;
  *(v21 - 136) = a13;
  *(v21 - 128) = v23 ^ v25;
  (*(v18 + 8 * ((v19 + 695) ^ 0x1F38u)))(v21 - 136);
  *(v21 - 128) = a13;
  v26 = v19 - 760;
  *(v21 - 136) = (v22 - 1455) ^ (1564307779 * ((2 * (v20 & 0x3D72EA60) - v20 - 1030941286) ^ 0x5580D989));
  *(v21 - 116) = -1564307779 * ((2 * (v20 & 0x3D72EA60) - v20 - 1030941286) ^ 0x5580D989) + 1264667083 * v15 + 1046635743;
  (*(v18 + 8 * (v22 ^ 0x1F04u)))(v21 - 136);
  v27 = 1785193651 * ((-2 - ((~v20 | 0xEDCDEFB7BDA3F079) + (v20 | 0x12321048425C0F86))) ^ 0xB255528F4B825455);
  *(v21 - 116) = v24 - v27;
  v28 = v27 ^ (v14 - 0x303DAEBBFB5128 - ((2 * v14) & 0xFF9F84A28809669CLL) + 1142);
  v29 = (v21 - 136);
  *v29 = a13;
  v29[1] = v28;
  (*(v18 + 8 * (v22 ^ 0x1F38u)))(v21 - 136);
  if (v13)
  {
    v30 = -1983664470;
  }

  else
  {
    v30 = 1046635743;
  }

  v31 = 1564307779 * (((~v20 & 0xEC236DD2) + v20 - (v20 & 0xEC236DD2)) ^ 0x7B2EA1C1);
  *(v21 - 136) = v26 ^ v31;
  *(v21 - 116) = v30 - v31;
  *(v21 - 128) = a13;
  v32 = (*(v18 + 8 * (v22 ^ 0x1F04u)))(v21 - 136);
  return (*(v18 + 8 * (v22 ^ ((2 * (v13 != 0)) | (4 * (v13 != 0))))))(v32);
}

uint64_t sub_223838358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v60 = *STACK[0x380];
  v61 = *STACK[0x248];
  STACK[0x338] = *(v59 + 8 * a9);
  v62 = ((((a9 ^ 0xDC4) + 326950732) & 0xEC8317DF) - 1174) | 0x42;
  STACK[0x438] = &STACK[0x530] + v58;
  LODWORD(STACK[0x3D4]) = v60;
  STACK[0x448] = v61;
  LODWORD(STACK[0x41C]) = 801774386;
  STACK[0x3B8] = 0;
  LODWORD(STACK[0x26C]) = 2042711197;
  LODWORD(STACK[0x280]) = a4 + 1;
  *(&STACK[0x530] + v58) = 1268567729;
  LODWORD(a57) = -2105845047;
  LODWORD(a58) = -1458373601;
  v64 = *(&STACK[0x530] + v58) != (((v62 ^ 0x3E9) + 298) ^ 0x4B9CCAE9) || LODWORD(STACK[0x280]) != a4;
  return (*(v59 + 8 * ((3821 * v64) ^ v62)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a52, a57, a58);
}

uint64_t sub_2238383AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12)
{
  a12 = 4;
  v15 = (*(v12 + 8 * (v14 + 226)))(*(v13 + 4), 22, 0, 0, &a10, &a12);
  if (v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = a12 == 4;
  }

  v19 = v18;
  return (*(v12 + 8 * ((v19 * (6 * (v14 ^ 0xE98) - 2689)) ^ v14)))(v15, v16, v17);
}

uint64_t sub_223838414()
{
  v4 = 64 - (v2 + v0 + 58);
  v5 = (((v1 - 3657) | 0x580) ^ ((v1 ^ 0x6F5) + 617292248)) - v0;
  if (HIDWORD(v4))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 >= v4;
  }

  v7 = !v6;
  return (*(v3 + 8 * ((27 * v7) ^ v1)))();
}

uint64_t sub_2238384F8()
{
  v8 = v5;
  v7 = v0 - (((&v7 | 0xAC68A35D) - (&v7 & 0xAC68A35D)) ^ 0x4AC00F4D) * v3 - 797;
  (*(v1 + 8 * (v0 + 2533)))(&v7);
  v7 = v0 - 914 - (((&v7 | 0xB84D49F7) - (&v7 & 0xB84D49F7)) ^ 0x5EE5E5E7) * v3 + 117;
  v8 = v6;
  (*(v1 + 8 * ((v0 - 914) ^ 0x1299)))(&v7);
  return (v2 - 1423875590);
}

void sub_2238385F0(uint64_t a1)
{
  v1 = *(a1 + 24) + 210068311 * (a1 ^ 0x576F9AD7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_223838694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, int a29, char a30, char a31)
{
  a31 = *(&a27 + v33);
  v35 = (((v32 - 1981) | 4u) ^ 0x344) + v31 == 4;
  return (*(v34 + 8 * ((4 * (((v32 - 6) ^ v35) & 1)) & 0xEF | (16 * (((v32 - 6) ^ v35) & 1)) | (v32 + 1130))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_2238386FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = 675097751 * ((2 * ((v64 - 192) & 0x63842390) - (v64 - 192) - 1669604242) ^ 0xDF3BF9F8);
  *(v64 - 144) = v66 + 381805767;
  *(v64 - 140) = v66 + v63 - 783;
  *(v64 - 176) = a32;
  *(v64 - 168) = 0;
  *(v64 - 192) = v62;
  *(v64 - 136) = &STACK[0x3C0];
  *(v64 - 160) = a33;
  *(v64 - 152) = 0;
  v67 = (*(v65 + 8 * (v63 ^ 0x142B)))(v64 - 192);
  v68 = *(v64 - 184);
  LODWORD(STACK[0x4BC]) = v68;
  return (*(a62 + 8 * ((3830 * (v68 == ((v63 - 1132) | 0x418) + 1423874478)) ^ v63)))(v67);
}

uint64_t sub_2238387D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, unsigned int a20, uint64_t a21)
{
  v26 = 742307843 * ((-1158080283 - (&a17 | 0xBAF918E5) + (&a17 | 0x4506E71A)) ^ 0x5B246A4F);
  a21 = a13;
  a20 = (((2 * v23) & 0x9FF7DFEE) + 2012143471 + ((5 * (v21 ^ 0x929) - 805574662) ^ v23)) ^ v26;
  a17 = (v21 - 928) ^ v26;
  a19 = v22;
  v27 = (*(v24 + 8 * (v21 ^ 0x18AA)))(&a17);
  return (*(v24 + 8 * ((1271 * (a18 == v25)) ^ v21)))(v27);
}

uint64_t sub_223838968@<X0>(int a1@<W8>)
{
  v6 = (v8 ^ 0x4B6BCC7E) * v1;
  v9 = v4;
  v10 = v6 ^ a1;
  v11 = 0;
  v8[0] = v6 + 380192507;
  v8[1] = (v2 - 269) ^ v6;
  result = (*(v5 + 8 * (v2 + 3555)))(v8);
  *(v3 + 8) = *(v4 + 24);
  return result;
}

uint64_t sub_2238389FC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7)
{
  a7 = (v10 + 2431) ^ ((((&a4 | 0x601E95DF) - &a4 + (&a4 & 0x9FE16A20)) ^ 0x3C53C15A) * v8);
  a6 = a1;
  a4 = a3;
  v11 = (*(v9 + 8 * (v10 + 3613)))(&a4);
  return (*(v9 + 8 * (((a5 == v7) * (((v10 - 459) | 0x261) + 376)) ^ v10)))(v11);
}

uint64_t sub_223838B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *(v37 - 200) = v38;
  v39 = v36 - 488;
  *(v37 - 116) = 0;
  v40 = qword_2836EB200[v36 - 419];
  v41 = v36;
  v42 = *(v40 + (v34[5] ^ 0xE2));
  v43 = v34[15] ^ 0x92;
  v44 = qword_2836EB200[v41 ^ 0x145] - 12;
  *(v37 - 160) = v35;
  v45 = *(v44 + v43);
  v46 = *(v40 + (v34[13] ^ 0xB9));
  v47 = v39 | 0x155;
  *(v37 - 120) = v39 | 0x155;
  v48 = *(v44 + ((((v34[7] + 51 - ((2 * v34[7]) & 0xE7)) & 0x3E ^ 0x287B281EBA424E6) & (v34[7] & 0xC0 | 0x287B281EBA4243ELL) & 0xFFFFFFFFFFFFFFFELL | (v34[7] + 51) & 1) ^ 0x287B281EBA424A6));
  v49 = qword_2836EB200[v41 ^ 0x1C5] - 8;
  v50 = (v48 ^ 0x71FF2B13) & ((v42 << 16) ^ 0x71E42B9B) | v48 & 0x64;
  v51 = ((-87 * *(v49 + (v34[4] ^ 0x57)) + 103) ^ 0x7B) << 24;
  v52 = (v51 | 0x34C1EDEF) ^ (v50 ^ 0x457CC610) & ~v51;
  v53 = -87 * *(v49 + (v34[12] ^ 0x68)) + 103;
  v54 = qword_2836EB200[v41 ^ 0x130] - 8;
  LOBYTE(v50) = *(v54 + (v34[14] ^ 0xD6)) + 123;
  v55 = ((v53 ^ 0x3C) << 24) | ((v50 ^ 0x27) << 8);
  v56 = v52 + (((*(v54 + (v34[6] ^ 0x87)) + 123) ^ 0x30) << 8);
  v57 = (v55 & 0x3300CD00 | (((v47 ^ (v46 << 16) ^ 0x7AB65243) & (v45 ^ 0xFEFFDBF9) | v45 & 0xE9) ^ 0xB67B61E4) & ~v55) ^ 0xFEBBF59D;
  v58 = ((*(v44 + (v34[3] ^ 0x29)) ^ 0x1C) & 0xFFFF00FF | ((*(v40 + (v34[1] ^ 8)) ^ 0xD9) << 16) | (((-87 * *(v49 + (*v34 ^ 0xE1)) + 103) ^ 0xDA) << 24) | (((*(v54 + (v34[2] ^ 0x8FLL)) + 123) ^ 0xD8) << 8)) ^ 0x1B;
  v59 = (((-87 * *(v49 + (v34[8] ^ 0xB9)) + 103) ^ 0xBC) << 24) | ((*(v40 + (v34[9] ^ 0x3BLL)) ^ 0x28) << 16) | (*(v44 + (v34[11] ^ 0x62)) ^ 0x5F) & 0xFFFF00FF | (((*(v54 + (v34[10] ^ 0xB7)) + 123) ^ 0xE7) << 8);
  v60 = qword_2836EB200[v41 ^ 0x1BE] - 4;
  v61 = qword_2836EB200[v41 - 407] - 8;
  v62 = *(v61 + 4 * (v50 ^ 0x7Eu)) ^ *(v60 + 4 * (BYTE2(v57) ^ 0xBAu));
  v63 = (v62 ^ 0x44DEE6A1) - 2 * ((v62 ^ 0x44DEE6A1) & 0x41C61273 ^ v62 & 0x10);
  *(v37 - 132) = v41;
  v64 = qword_2836EB200[v41 - 321] - 12;
  v65 = (v63 + 1103499875) ^ *(v64 + 4 * (v53 ^ 0x88u));
  v66 = v45 ^ 0x82;
  v67 = qword_2836EB200[v41 ^ 0x158];
  LODWORD(v66) = *(v67 + 4 * v66);
  *(v37 - 216) = v58;
  v68 = v66 ^ v58 ^ (v65 - ((2 * v65) & 0xD103E50) + 109584168);
  *(v37 - 208) = v59;
  *(v37 - 204) = v56;
  LODWORD(v40) = v68 ^ v56 ^ v59;
  *(v37 - 140) = v68 ^ v56;
  LODWORD(v54) = v40;
  v507 = v40;
  v521 = (v40 ^ v57);
  v69 = *(v67 + 4 * (v521 ^ 0x35u)) ^ 0x6496F25D;
  v70 = v40 ^ v57 ^ 0xF83672DE;
  *(v37 - 232) = BYTE1(v70);
  v71 = v69 ^ *(v61 + 4 * (BYTE1(v70) ^ 0x9Eu));
  v534 = HIBYTE(v70);
  v72 = (v71 - ((2 * v71) & 0x838C24C6) + 1103499875) ^ *(v64 + 4 * (HIBYTE(v70) ^ 0x86));
  v531 = BYTE2(v70);
  LODWORD(v66) = v68 ^ *(v60 + 4 * (BYTE2(v70) ^ 0xBAu)) ^ (v72 - ((2 * v72) & 0x4D8017A8) + 650120148);
  v512 = v68 ^ v56 ^ 0xA25B684D;
  *(v37 - 136) = v66 ^ v512;
  *(v37 - 152) = v66;
  v73 = v66 ^ v512 ^ 0xF73EC34E;
  *(v37 - 212) = v57;
  v74 = v73 ^ v57;
  v543 = (v74 ^ 0x7E4FB786u) >> 24;
  v491 = ((v74 ^ 0x7E4FB786u) >> 16);
  v75 = *(v60 + 4 * (v491 ^ 0xBAu)) ^ *(v64 + 4 * (v543 ^ 0x86));
  v478 = ((v74 ^ 0xB786) >> 8);
  v76 = ((v75 ^ 0x670619B7) - 2 * ((v75 ^ 0x670619B7) & 0x621EED7D ^ v75 & 8) + 1646194037) ^ *(v61 + 4 * (v478 ^ 0x9Eu));
  *(v37 - 168) = v74;
  LODWORD(v44) = v66 ^ *(v67 + 4 * (v74 ^ 0x6Du)) ^ (v76 - ((2 * v76) & 0xD103E50) + 109584168);
  *(v37 - 124) = v44;
  v552 = v44 ^ 0xFEB4AEE ^ v40 ^ 0xF83672DE;
  v77 = v552 ^ v74 ^ 0x7E4FB786;
  v547 = BYTE2(v77);
  v78 = *(v60 + 4 * (BYTE2(v77) ^ 0xBAu));
  *(v37 - 240) = BYTE1(v77);
  v79 = *(v61 + 4 * (BYTE1(v77) ^ 0x9Eu)) ^ v78;
  *(v37 - 248) = HIBYTE(v77);
  v80 = ((v79 ^ 0x44DEE6A1) - 2 * ((v79 ^ 0x44DEE6A1) & 0x41C6126B ^ v79 & 8) + 1103499875) ^ *(v64 + 4 * (HIBYTE(v77) ^ 0x86));
  *(v37 - 220) = (v552 ^ v74 ^ 0x86);
  v542 = BYTE2(v44) ^ 0xEB;
  v465 = v73 ^ v40 ^ 0xF83672DE;
  v81 = v44 ^ 0xFEB4AEE ^ *(v67 + 4 * ((v552 ^ v74 ^ 0x86) ^ 0xEBu)) ^ (v80 - ((2 * v80) & 0xD103E50) + 109584168);
  *(v37 - 148) = v81 ^ v465;
  v82 = v81 ^ v465 ^ 0x598844C8;
  v453 = v81 ^ v465 ^ 0xC8;
  v455 = v82 ^ v77;
  v463 = (v82 ^ v77 ^ 0xCD2CB9A0) >> 24;
  v83 = *(v67 + 4 * ((v82 ^ v77) ^ 0x83u)) ^ *(v64 + 4 * (v463 ^ 0x86)) ^ 0x474E0D4B;
  v84 = (v83 - ((2 * v83) & 0x4D8017A8) + 650120148) ^ *(v60 + 4 * (((v82 ^ v77 ^ 0xCD5DCD68) >> 16) ^ 0xBAu));
  v85 = (v84 - ((2 * v84) & 0xC43DDAEA) + 1646194037) ^ *(v61 + 4 * (((v82 ^ v77 ^ 0xCD68) >> 8) ^ 0x9Eu));
  v545 = v44 ^ 0xFEB4AEE ^ v73;
  *(v37 - 144) = v545 ^ 0x7E4FB786;
  v523 = v85 ^ v545 ^ 0x7E4FB786;
  v443 = v81;
  v537 = ((v523 ^ 0xF39A3E26 ^ v77) >> 16);
  v528 = v523 ^ 0xF39A3E26 ^ v77;
  v86 = *(v64 + 4 * ((v528 >> (v81 & 0x18) >> (v81 & 0x18 ^ 0x18)) ^ 0x86u)) ^ *(v60 + 4 * (v537 ^ 0xBAu)) ^ 0x670619B7;
  v516 = ((v523 ^ 0x3E26 ^ v77) >> 8);
  v87 = (v86 - ((2 * v86) & 0xC43DDAEA) + 1646194037) ^ *(v61 + 4 * (v516 ^ 0x9Eu));
  v509 = v85 ^ v81;
  v504 = v523 ^ 0xF39A3E26 ^ v82;
  v494 = v85 ^ v81 ^ *(v67 + 4 * (v523 ^ 0x26 ^ v82 ^ (v82 ^ v77) ^ 0x68 ^ 0x83u)) ^ (v87 - ((2 * v87) & 0xD103E50) + 109584168);
  v88 = v494 ^ 0x53DB0D92 ^ v523 ^ 0xF39A3E26;
  v550 = v494 ^ 0x92;
  v89 = v88 ^ 0xF73EC34E ^ v82 ^ v77 ^ 0xCD5DCD68 ^ 0xBF7FF0FA;
  LODWORD(v66) = v88 ^ 0x4E ^ v455 ^ 0x68;
  *(v37 - 256) = v66;
  v480 = BYTE2(v89);
  v90 = *(v60 + 4 * (BYTE2(v89) ^ 0xBAu)) ^ *(v67 + 4 * (v66 ^ 0x11)) ^ 0x204814FC;
  v91 = v90 - ((2 * v90) & 0x838C24C6) + 1103499875;
  v92 = HIBYTE(v89);
  v93 = v91 ^ *(v64 + 4 * (HIBYTE(v89) ^ 0x86));
  v496 = BYTE1(v89);
  LODWORD(v44) = v494 ^ 0x53DB0D92 ^ *(v61 + 4 * (BYTE1(v89) ^ 0x9Eu)) ^ (v93 - ((2 * v93) & 0xC43DDAEA) + 1646194037);
  *(v37 - 156) = v44;
  v94 = v88 ^ 0xF73EC34E ^ v504 ^ 0xCD5DCD68;
  v436 = v44 ^ 0x85DB0D92 ^ v88;
  v450 = BYTE2(v44) ^ 0xDB;
  v458 = v436 ^ 0x484133B4 ^ v94;
  v95 = v458 ^ 0xBDE5CEDC ^ v89;
  v451 = (v95 ^ 0x29A3E26) >> 24;
  v475 = ((v95 ^ 0x3E26) >> 8);
  v96 = *(v61 + 4 * (v475 ^ 0x9Eu)) ^ *(v64 + 4 * (v451 ^ 0x86));
  v446 = ((v95 ^ 0x29A3E26) >> 16);
  v97 = ((v96 ^ 0x23D8FF16) - 2 * ((v96 ^ 0x23D8FF16) & 0x26C00BDC ^ v96 & 8) + 650120148) ^ *(v60 + 4 * (v446 ^ 0xBAu));
  v429 = v95;
  v424 = v97 - ((2 * v97) & 0xD103E50) + 109584168;
  v425 = v44 ^ 0x85DB0D92 ^ *(v67 + 4 * (v95 ^ 0xCDu));
  v98 = v425 ^ v424 ^ v436 ^ 0x484133B4;
  v412 = v98;
  *(v37 - 128) = v425 ^ v424;
  v99 = v98 ^ 0x19868409 ^ v458 ^ 0xBDE5CEDC;
  *(v37 - 176) = v98 ^ 0x19868409;
  LODWORD(v40) = v99 ^ 0xC130088F ^ v95 ^ 0x29A3E26;
  v416 = (v40 ^ 0x7B68C86) >> 24;
  v419 = ((v40 ^ 0x8C86) >> 8);
  v100 = *(v64 + 4 * (v416 ^ 0x86)) ^ *(v61 + 4 * (v419 ^ 0x9Eu)) ^ 0x23D8FF16;
  v415 = ((v40 ^ 0x7B68C86) >> 16);
  *(v37 - 180) = v40 ^ 0x7B68C86;
  v101 = (v100 - ((2 * v100) & 0x4D8017A8) + 650120148) ^ *(v60 + 4 * (v415 ^ 0xBAu));
  v422 = v99 ^ 0x8F ^ v95 ^ 0x26;
  v447 = (v101 - ((2 * v101) & 0xD103E50) + 109584168) ^ *(v67 + 4 * (v422 ^ 0x6Du)) ^ v425 ^ v424;
  *(v37 - 164) = v447 ^ 0x7B68C86;
  v434 = v447 ^ 0x7B68C86 ^ v98 ^ 0x19868409;
  v439 = v434 ^ v99 ^ 0xC130088F;
  *(v37 - 172) = v439 ^ 0xC104CD8D;
  v102 = v40 ^ 0x7B68C86 ^ v439 ^ 0xC104CD8D ^ 0xA91877A2;
  v470 = v40 ^ 0x86 ^ v439 ^ 0x8D;
  v468 = HIBYTE(v102);
  LODWORD(v44) = *(v67 + 4 * (v470 ^ 0x49u)) ^ 0x474E0D4B ^ *(v64 + 4 * (HIBYTE(v102) ^ 0x86));
  v526 = BYTE1(v102);
  LODWORD(v44) = (v44 - ((2 * v44) & 0xC43DDAEA) + 1646194037) ^ *(v61 + 4 * (BYTE1(v102) ^ 0x9Eu));
  v460 = BYTE2(v102);
  v519 = (v44 - ((2 * v44) & 0x4D8017A8) + 650120148) ^ *(v60 + 4 * (BYTE2(v102) ^ 0xBAu));
  LODWORD(v44) = ((v54 ^ 0xF83672DE) >> 16);
  LODWORD(v61) = *(v37 - 132);
  v103 = qword_2836EB200[v61 - 367] - 12;
  LODWORD(v40) = (v44 ^ 0xFD84E2EE) - 999287701 + *(v103 + 4 * (v44 ^ 0x7E));
  BYTE1(v512) = BYTE1(v68) ^ 0x6F;
  v104 = qword_2836EB200[v61 - 251] - 4;
  LODWORD(v44) = *(v37 - 140);
  v105 = ((BYTE2(v512) ^ 0xFD84E273) - 999287701 + *(v103 + 4 * (BYTE2(v512) ^ 0xE3u))) ^ (-1974868763 * *(v104 + 4 * (BYTE3(v44) ^ 0xE7)) + 1985505912);
  v106 = qword_2836EB200[(v61 ^ 0x17D)] - 4;
  v107 = (v40 - ((2 * v40) & 0xC95FA080) + 1689243712) ^ *(v106 + 4 * (v507 ^ 0x33u));
  v108 = (-1974868763 * *(v104 + 4 * (HIBYTE(v68) ^ 0xCB)) + 1985505912) ^ ((((v68 ^ 0x6AB66F6C) >> 16) ^ 0xFD84E2EB) - 999287701 + *(v103 + 4 * (((v68 ^ 0x6AB66F6C) >> 16) ^ 0x7Bu)));
  v109 = qword_2836EB200[v61 - 352];
  v110 = (v105 - ((2 * v105) & 0x9ADCC862) + 1299080241) ^ *(v109 + 4 * (BYTE1(v44) ^ 0x4Bu));
  v111 = (v108 - ((2 * v108) & 0xC95FA080) + 1689243712) ^ *(v106 + 4 * (v68 ^ 0x1Cu));
  v112 = v107 - ((2 * v107) & 0x9ADCC862);
  v113 = (v531 ^ 0xFD84E215) - 999287701 + *(v103 + 4 * (v531 ^ 0x85u));
  v532 = *(v109 + 4 * (BYTE1(v507) ^ 0xE4u)) ^ (-1974868763 * *(v104 + 4 * (HIBYTE(v507) ^ 0x54)) + 1985505912) ^ (v112 + 1299080241);
  v114 = (-1974868763 * *(v104 + 4 * (v534 ^ 0xBE)) + 1985505912) ^ *(v106 + 4 * (v521 ^ 0xEFu)) ^ (v113 - ((2 * v113) & 0xC95FA080) + 1689243712);
  v501 = v111 - ((2 * v111) & 0x9ADCC862);
  v499 = v114 - ((2 * v114) & 0x9ADCC862);
  v115 = (((v494 ^ 0xB89A99EC) >> 16) ^ 0xFD84E2A4) - 999287701 + *(v103 + 4 * (((v494 ^ 0xB89A99EC) >> 16) ^ 0x34u));
  v490 = BYTE1(v94) ^ 0x50;
  LODWORD(v66) = *(v104 + 4 * (HIBYTE(v94) ^ 0xD2));
  LODWORD(v66) = ((((v94 ^ 0xBFAB50FA) >> 16) ^ 0xFD84E2EB) - 999287701 + *(v103 + 4 * (((v94 ^ 0xBFAB50FA) >> 16) ^ 0x7Bu))) ^ *(v106 + 4 * (v88 ^ 0x4E ^ v504 ^ 0x68 ^ 0x5Fu)) ^ (-1974868763 * v66 - ((345229770 * v66 - 323955472) & 0xC95FA080) - 620217672);
  v116 = (-1974868763 * *(v104 + 4 * (v92 ^ 0xB6)) - ((345229770 * *(v104 + 4 * (v92 ^ 0xB6)) - 323955472) & 0x9ADCC862) - 1010381143) ^ *(v109 + 4 * (v496 ^ 0x25u));
  v508 = v116 - ((2 * v116) & 0xC95FA080);
  v117 = *(v109 + 4 * ((v494 ^ 0x99EC) >> 8)) ^ (v115 - ((2 * v115) & 0x9ADCC862) + 1299080241);
  v118 = (((v88 ^ 0xE14101D4) >> 16) ^ 0xFD84E2EA) - 999287701 + *(v103 + 4 * (((v88 ^ 0xE14101D4) >> 16) ^ 0x7Au));
  v497 = v117 - ((2 * v117) & 0xC95FA080);
  v442 = HIBYTE(v494) ^ 0x48;
  v487 = v66 - ((2 * v66) & 0x9ADCC862);
  v473 = BYTE1(v88) ^ 0x2D;
  LODWORD(v66) = (v118 - ((2 * v118) & 0xC95FA080) + 1689243712) ^ *(v106 + 4 * (v88 ^ 0xA4u)) ^ (-1974868763 * *(v104 + 4 * (HIBYTE(v88) ^ 0x40)) + 1985505912);
  v495 = v66 + 1299080242 + (~(2 * v66) | 0x6523379D);
  v535 = (v480 ^ 0xFD84E217) - 999287701 + *(v103 + 4 * (v480 ^ 0x87u));
  v457 = BYTE1(v443) ^ 0x36;
  LODWORD(v66) = (((v443 ^ 0xFC9A360D) >> 16) ^ 0xFD84E279) - 999287701 + *(v103 + 4 * (((v443 ^ 0xFC9A360D) >> 16) ^ 0xE9u));
  v481 = v443 ^ *(v37 - 144);
  v119 = *(v104 + 4 * (HIBYTE(v481) ^ 0x39));
  v120 = (-1974868763 * v119 - ((345229770 * v119 - 323955472) & 0x9ADCC862) - 1010381143) ^ *(v109 + 4 * ((v481 ^ 0xDA26) >> 8));
  v121 = (BYTE2(v455) ^ 0xFD84E2D9) - 999287701 + *(v103 + 4 * (BYTE2(v455) ^ 0x49u));
  LODWORD(v66) = (v66 - ((2 * v66) & 0xC95FA080) + 1689243712) ^ *(v106 + 4 * (v443 ^ 0x7Du)) ^ (-1974868763 * *(v104 + 4 * (HIBYTE(v443) ^ 0x5D)) + 1985505912);
  v432 = *(v37 - 148) ^ 0xAF58D76C;
  v122 = (BYTE2(v432) ^ 0xFD84E2EB) - 999287701 + *(v103 + 4 * (BYTE2(v432) ^ 0x7Bu));
  v485 = v120 - ((2 * v120) & 0xC95FA080);
  v123 = (v122 - ((2 * v122) & 0xC95FA080) + 1689243712) ^ *(v106 + 4 * (v453 ^ 0xD4u));
  v438 = v123 - ((2 * v123) & 0x9ADCC862);
  v484 = (((v481 ^ 0xEA49DA26) >> 16) ^ 0xFD84E2EB) - 999287701 + *(v103 + 4 * (((v481 ^ 0xEA49DA26) >> 16) ^ 0x7Bu));
  v124 = (v121 - ((2 * v121) & 0x9ADCC862) + 1299080241) ^ *(v109 + 4 * (((v455 ^ 0xCD68) >> 8) ^ 0xE5u)) ^ (-1974868763 * *(v104 + 4 * (v463 ^ 0xF0)) + 1985505912);
  v431 = v66 - ((2 * v66) & 0x9ADCC862);
  v444 = v455 ^ 0xC3;
  v464 = v124 - ((2 * v124) & 0xC95FA080);
  v125 = (v491 ^ 0xFD84E219) - 999287701 + *(v103 + 4 * (v491 ^ 0x89u));
  LODWORD(v66) = (v125 - ((2 * v125) & 0x9ADCC862) + 1299080241) ^ *(v109 + 4 * (v478 ^ 0x93u));
  v126 = *(v104 + 4 * (HIBYTE(v465) ^ 0xDE));
  v454 = v66 - ((2 * v66) & 0xC95FA080);
  LODWORD(v66) = -1974868763 * v126 + 1985505912 - 2 * ((-1974868763 * v126 + 1985505912) & 0x4D6E6437 ^ (-1716710451 * v126) & 6);
  v127 = *(v37 - 136) ^ 0x47E1030D;
  v128 = (BYTE2(v127) ^ 0xFD84E2EB) - 999287701 + *(v103 + 4 * (BYTE2(v127) ^ 0x7Bu));
  v129 = (v128 - ((2 * v128) & 0x9ADCC862) + 1299080241) ^ *(v109 + 4 * BYTE1(v127));
  LODWORD(v66) = ((BYTE2(v465) ^ 0xFD84E243) - 999287701 + *(v103 + 4 * (BYTE2(v465) ^ 0xD3u))) ^ *(v109 + 4 * (BYTE1(v465) ^ 0xDBu)) ^ (v66 + 1299080241);
  v420 = *(v37 - 152) ^ 0x37B09DC8;
  v492 = (BYTE2(v420) ^ 0xFD84E2EB) - 999287701 + *(v103 + 4 * (BYTE2(v420) ^ 0x7Bu));
  LODWORD(v430) = v129 - ((2 * v129) & 0xC95FA080);
  v427 = v465 ^ 0x6A;
  v466 = v66 + 1689243712 + (~(2 * v66) | 0x36A05F7F);
  LODWORD(v66) = (-1974868763 * *(v104 + 4 * (v416 ^ 0xAC)) + 1985505912) ^ ((v415 ^ 0xFD84E2A8) - 999287701 + *(v103 + 4 * (v415 ^ 0x38u)));
  LODWORD(v66) = (v66 - ((2 * v66) & 0x9ADCC862) + 1299080241) ^ *(v109 + 4 * (v419 ^ 0xD9u));
  v130 = (BYTE2(v99) ^ 0xFD84E256) - 999287701 + *(v103 + 4 * (BYTE2(v99) ^ 0xC6u));
  v131 = *(v104 + 4 * ((v425 ^ ~v424) >> 24));
  v132 = v130 - ((2 * v130) & 0xC95FA080);
  v133 = -1974868763 * v131 - ((345229770 * v131 - 323955472) & 0x9ADCC862);
  v134 = *(v37 - 128) ^ 0xDDA7A6D4;
  v135 = (v133 - 1010381143) ^ *(v109 + 4 * BYTE1(v134));
  v136 = (v132 + 1689243712) ^ *(v106 + 4 * (v99 ^ 0x67u)) ^ (-1974868763 * *(v104 + 4 * (HIBYTE(v99) ^ 0x3E)) + 1985505912);
  LODWORD(v426) = v66 - ((2 * v66) & 0xC95FA080);
  HIDWORD(v423) = v135 - ((2 * v135) & 0xC95FA080);
  v410 = BYTE1(v412) ^ 0x9E;
  LODWORD(v66) = *(v104 + 4 * (HIBYTE(v412) ^ 0xCD));
  LODWORD(v66) = *(v106 + 4 * (v412 ^ 0xC9u)) ^ (-1974868763 * v66 - ((345229770 * v66 - 323955472) & 0xC95FA080) - 620217672);
  v417 = v66 - ((2 * v66) & 0x9ADCC862);
  LODWORD(v456) = (BYTE2(v134) ^ 0xFD84E2A5) - 999287701 + *(v103 + 4 * (BYTE2(v134) ^ 0x35u));
  v409 = BYTE1(v99) ^ 0x4F;
  LODWORD(v414) = v136 - ((2 * v136) & 0x9ADCC862);
  v479 = (BYTE2(v412) ^ 0xFD84E2FB) - 999287701 + *(v103 + 4 * (BYTE2(v412) ^ 0x6Bu));
  LODWORD(v66) = (BYTE2(v436) ^ 0xFD84E271) - 999287701 + *(v103 + 4 * (BYTE2(v436) ^ 0xE1u));
  LODWORD(v66) = (v66 - ((2 * v66) & 0x9ADCC862) + 1299080241) ^ *(v109 + 4 * (BYTE1(v436) ^ 0x28u));
  v137 = *(v104 + 4 * (HIBYTE(v458) ^ 0x22));
  HIDWORD(v414) = v436 ^ 0xAE;
  v138 = (-1974868763 * v137 - ((345229770 * v137 - 323955472) & 0x9ADCC862) - 1010381143) ^ *(v109 + 4 * ((v458 ^ 0x4AFA) >> 8));
  v413 = v458 ^ 0xE4;
  LODWORD(v428) = v66 - ((2 * v66) & 0xC95FA080);
  HIDWORD(v418) = v138 - ((2 * v138) & 0xC95FA080);
  v459 = (((v458 ^ 0xBF864AFA) >> 16) ^ 0xFD84E2A5) - 999287701 + *(v103 + 4 * (((v458 ^ 0xBF864AFA) >> 16) ^ 0x35u));
  v406 = v451 ^ 0x67;
  LODWORD(v452) = (v446 ^ 0xFD84E291) - 999287701 + *(v103 + 4 * (v446 ^ 1u));
  v404 = HIBYTE(v436) ^ 0xD7;
  LODWORD(v44) = *(v37 - 156);
  LODWORD(v66) = *(v104 + 4 * (BYTE3(v44) ^ 0x82));
  LODWORD(v66) = (-1974868763 * v66 - ((345229770 * v66 - 323955472) & 0x9ADCC862) - 1010381143) ^ *(v109 + 4 * (BYTE1(v44) ^ 5u)) ^ ((v450 ^ 0xFD84E2FE) - 999287701 + *(v103 + 4 * (v450 ^ 0x6Eu)));
  v449 = v66 - ((2 * v66) & 0xC95FA080);
  v139 = (((v434 ^ 0x23AAC875) >> 16) ^ 0xFD84E2B7) - 999287701 + *(v103 + 4 * (((v434 ^ 0x23AAC875) >> 16) ^ 0x27u));
  v407 = v475 ^ 0x72;
  LODWORD(v66) = (v139 - ((2 * v139) & 0x9ADCC862) + 1299080241) ^ *(v109 + 4 * ((v434 ^ 0xC875) >> 8));
  v398 = v439 ^ 0x68D34E2A;
  v140 = *(v104 + 4 * (HIBYTE(v439) ^ 0x27));
  v141 = (-1974868763 * v140 - ((345229770 * v140 - 323955472) & 0xC95FA080) - 620217672) ^ *(v106 + 4 * ((v434 ^ v99 ^ 0x8F) ^ 0x5Au));
  v440 = v434 ^ 5;
  HIDWORD(v445) = v66 - ((2 * v66) & 0xC95FA080);
  v403 = BYTE1(v447) ^ 0x82;
  LODWORD(v66) = (((v447 ^ 0xC1698200) >> 16) ^ 0xFD84E2EB) - 999287701 + *(v103 + 4 * (((v447 ^ 0xC1698200) >> 16) ^ 0x7Bu));
  v142 = HIBYTE(v434) ^ 0x82;
  LODWORD(v66) = (-1974868763 * *(v104 + 4 * (HIBYTE(v447) ^ 0x60)) + 1985505912) ^ *(v106 + 4 * (v447 ^ 0x72u)) ^ (v66 - ((2 * v66) & 0xC95FA080) + 1689243712);
  v143 = *(v104 + 4 * (v468 ^ 0x21));
  v144 = *(v106 + 4 * (v470 ^ 0x12u)) ^ ((v460 ^ 0xFD84E2A2) - 999287701 + *(v103 + 4 * (v460 ^ 0x32u))) ^ (-1974868763 * v143 - ((345229770 * v143 - 323955472) & 0xC95FA080) - 620217672);
  v401 = v66 - ((2 * v66) & 0x9ADCC862);
  LODWORD(v400) = v141 - ((2 * v141) & 0x9ADCC862);
  HIDWORD(v400) = v144 - ((2 * v144) & 0x9ADCC862);
  LODWORD(v437) = (BYTE2(v398) ^ 0xFD84E2EB) - 999287701 + *(v103 + 4 * (BYTE2(v398) ^ 0x7Bu));
  v145 = (BYTE2(v509) ^ 0xFD84E2A2) - 999287701 + *(v103 + 4 * (BYTE2(v509) ^ 0x32u));
  v146 = (BYTE2(v504) ^ 0xFD84E24B) - 999287701 + *(v103 + 4 * (BYTE2(v504) ^ 0xDBu));
  v435 = v516 ^ 0x6E;
  v147 = (v146 - ((2 * v146) & 0xC95FA080) + 1689243712) ^ *(v106 + 4 * (v504 ^ 0x15u));
  v148 = (((v523 ^ 0xF39A3E26) >> 16) ^ 0xFD84E2B1) - 999287701 + *(v103 + 4 * (((v523 ^ 0xF39A3E26) >> 16) ^ 0x21u));
  v149 = (v145 - ((2 * v145) & 0xC95FA080) + 1689243712) ^ *(v106 + 4 * (v509 ^ 0x54u)) ^ (-1974868763 * *(v104 + 4 * (HIBYTE(v509) ^ 0xEA)) + 1985505912);
  HIDWORD(v396) = v149 - ((2 * v149) & 0x9ADCC862);
  LODWORD(v396) = BYTE1(v504) ^ 0xCC;
  v476 = v147 + 1299080242 + (~(2 * v147) | 0x6523379D);
  HIDWORD(v397) = v528 ^ 0x81;
  LODWORD(v397) = v523 ^ 0xB;
  v150 = (v148 - ((2 * v148) & 0x9ADCC862) + 1299080241) ^ *(v109 + 4 * (BYTE1(v523) ^ 0x56u)) ^ (-1974868763 * *(v104 + 4 * (HIBYTE(v523) ^ 0x6D)) + 1985505912);
  HIDWORD(v399) = v150 - ((2 * v150) & 0xC95FA080);
  v471 = (v537 ^ 0xFD84E2DC) - 999287701 + *(v103 + 4 * (v537 ^ 0x4Cu));
  v151 = (v547 ^ 0xFD84E246) - 999287701 + *(v103 + 4 * (v547 ^ 0xD6u));
  v152 = v151 - ((2 * v151) & 0x9ADCC862);
  LODWORD(v44) = *(v37 - 124);
  v153 = (-1974868763 * *(v104 + 4 * (BYTE3(v44) ^ 0x41)) + 1985505912) ^ ((v542 ^ 0xFD84E273) - 999287701 + *(v103 + 4 * (v542 ^ 0xE3u)));
  v154 = (v153 - ((2 * v153) & 0x9ADCC862) + 1299080241) ^ *(v109 + 4 * (BYTE1(v44) ^ 0x6Fu));
  v155 = BYTE2(*(v37 - 144));
  LODWORD(v44) = (v155 ^ 0xFD84E2B8) - 999287701 + *(v103 + 4 * (v155 ^ 0x28u));
  LODWORD(v44) = (v44 - ((2 * v44) & 0xC95FA080) + 1689243712) ^ *(v106 + 4 * (v545 ^ 0xCEu));
  v156 = v44 - ((2 * v44) & 0x9ADCC862);
  v157 = *(v104 + 4 * (HIBYTE(v552) ^ 0x18));
  v158 = *(v104 + 4 * v442);
  v159 = *(v37 - 152);
  v160 = *(v104 + 4 * (HIBYTE(*(v37 - 148)) ^ 0xEu));
  v161 = *(v104 + 4 * (HIBYTE(v159) ^ 0x96));
  v162 = *(v37 - 136);
  v163 = *(v104 + 4 * (HIBYTE(v162) ^ 0xE6));
  LODWORD(v66) = *(v104 + 4 * (v543 ^ 0x32));
  LODWORD(v44) = *(v104 + 4 * v406);
  LODWORD(v40) = *(v104 + 4 * v404);
  LODWORD(v49) = *(v104 + 4 * v142);
  v164 = *(v104 + 4 * (HIBYTE(v504) ^ 0x5B));
  v165 = *(v104 + 4 * (HIBYTE(v528) ^ 0x17));
  v166 = *(v104 + 4 * (*(v37 - 248) ^ 7u));
  LODWORD(v104) = *(v104 + 4 * (HIBYTE(v545) ^ 0x2E));
  *(v37 - 148) = -1974868763 * v160 + 1985505912;
  v538 = -1974868763 * v161 + 1985505912;
  *(v37 - 144) = -1974868763 * v163 + 1985505912;
  v503 = -1974868763 * v44 + 1985505912;
  v548 = -1974868763 * v40 + 1985505912;
  v514 = -1974868763 * v49 + 1985505912;
  v461 = -1974868763 * v165 + 1985505912;
  v469 = -1974868763 * v104 + 1985505912;
  v529 = *(v109 + 4 * BYTE1(v512));
  LODWORD(v40) = (-1974868763 * v157 - ((345229770 * v157 - 323955472) & 0xC95FA080) - 620217672) ^ *(v106 + 4 * (v552 ^ 0xBCu));
  v524 = *(v109 + 4 * (*(v37 - 232) ^ 0xD0u));
  v488 = *(v109 + 4 * v490);
  LODWORD(v44) = *(v109 + 4 * (*(v37 - 240) ^ 0xB0u)) ^ (-1974868763 * v166 + 1985505912);
  LODWORD(v448) = *(v109 + 4 * v473);
  v474 = *(v109 + 4 * BYTE1(v432));
  v540 = *(v109 + 4 * v457);
  HIDWORD(v405) = *(v109 + 4 * BYTE1(v420));
  LODWORD(v421) = *(v109 + 4 * v410);
  v505 = *(v109 + 4 * v409);
  LODWORD(v423) = *(v109 + 4 * v407);
  v517 = *(v109 + 4 * v403);
  v513 = *(v109 + 4 * (v526 ^ 0x7Du));
  v167 = *(v109 + 4 * BYTE1(v398));
  HIDWORD(v441) = *(v109 + 4 * v435);
  HIDWORD(v433) = *(v109 + 4 * (BYTE1(v509) ^ 0x83u));
  LODWORD(v411) = *(v109 + 4 * v396);
  HIDWORD(v456) = *(v109 + 4 * (BYTE1(v545) ^ 0x74u));
  LODWORD(v433) = *(v109 + 4 * (BYTE1(v552) ^ 0xF4u));
  LODWORD(v408) = v499 + 1299080241;
  HIDWORD(v437) = v438 + 1299080241;
  LODWORD(v399) = v431 + 1299080241;
  v500 = v417 + 1299080241;
  HIDWORD(v408) = v401 + 1299080241;
  v510 = HIDWORD(v400) + 1299080241;
  HIDWORD(v430) = v156 + 1299080241;
  LODWORD(v418) = v40 - ((2 * v40) & 0x9ADCC862) + 1299080241;
  LODWORD(v49) = *(v103 + 4 * (BYTE2(v552) ^ 0xF4u));
  HIDWORD(v400) = *(v106 + 4 * (*(v37 - 140) ^ 0x25u));
  v168 = *(v106 + 4 * (*(v37 - 256) ^ 0xBFu));
  v169 = *(v106 + 4 * (v550 ^ 0xEu));
  v482 = *(v106 + 4 * (v481 ^ 0x3Du));
  LODWORD(v445) = *(v106 + 4 * v444);
  v170 = *(v106 + 4 * (v159 ^ 0xD1u));
  LODWORD(v103) = *(v106 + 4 * (*(v37 - 168) ^ 0xC9u));
  *(v37 - 168) = *(v106 + 4 * (v162 ^ 0x7Du));
  *(v37 - 152) = *(v106 + 4 * v427);
  HIDWORD(v421) = *(v106 + 4 * (v422 ^ 0xF9u));
  v171 = *(v106 + 4 * (*(v37 - 128) ^ 0x1Cu));
  LODWORD(v405) = *(v106 + 4 * (v429 ^ 0x97u));
  v172 = *(v106 + 4 * HIDWORD(v414));
  HIDWORD(v426) = *(v106 + 4 * v413);
  HIDWORD(v414) = *(v106 + 4 * (*(v37 - 156) ^ 0x33u));
  *(v37 - 156) = (BYTE2(v552) ^ 0xFD84E264) - 999287701 + v49;
  LODWORD(v402) = *(v106 + 4 * v440);
  HIDWORD(v428) = *(v106 + 4 * HIDWORD(v397));
  HIDWORD(v411) = *(v106 + 4 * v397);
  LODWORD(v441) = *(v106 + 4 * (*(v37 - 124) ^ 0x45u));
  *(v37 - 220) = *(v106 + 4 * (*(v37 - 220) ^ 0xF2u));
  HIDWORD(v402) = v485 + 1689243712;
  v173 = v454 + 1689243712;
  v174 = v449 + 1689243712;
  HIDWORD(v448) = v154 - ((2 * v154) & 0xC95FA080) + 1689243712;
  HIDWORD(v452) = ((v152 + 1299080241) ^ v44) - ((2 * ((v152 + 1299080241) ^ v44)) & 0xC95FA080) + 1689243712;
  v175 = (v400 + 1299080241) ^ v167 ^ v437 ^ 0xC38F08C7;
  v176 = v103 ^ (-1974868763 * v66 + 1985505912) ^ 0xADE18B96 ^ v173;
  LODWORD(v109) = *(v37 - 132);
  v177 = qword_2836EB200[v109 - 441] - 12;
  v178 = qword_2836EB200[(v109 ^ 0x12F)] - 4;
  v179 = (((*(v177 + (*(v37 - 111) ^ 0xD5)) - 37) ^ 0xED) << 16) | ((*(v178 + (*(v37 - 112) ^ 1)) ^ 0xD2) << 24);
  v180 = qword_2836EB200[v109 - 260] - 8;
  LODWORD(v103) = ((*(v180 + (*(v37 - 102) ^ 0x49)) ^ 0x80) << 8) & 0xFF00FFFF | (((*(v177 + (*(v37 - 103) ^ 0xB3)) - 37) ^ 0x59) << 16);
  v181 = (((*(v177 + (*(v37 - 99) ^ 0xDLL)) - 37) ^ 0xA9) << 16) | ((*(v178 + (*(v37 - 100) ^ 0xCALL)) ^ 0x40) << 24);
  v182 = *(v37 - 107) ^ 0x45;
  LODWORD(v106) = (*(v180 + (*(v37 - 106) ^ 0xD5)) ^ 0xA3) << 8;
  v183 = *(v178 + (*(v37 - 108) ^ 0xC2)) ^ 0x18;
  *(v37 - 232) = v177;
  LODWORD(v106) = v106 & 0xFF00FFFF | (v183 << 24) | (((*(v177 + v182) - 37) ^ 0x16) << 16);
  v184 = *(v37 - 110) ^ 0xE7;
  LODWORD(v182) = v181 | ((*(v180 + (*(v37 - 98) ^ 0xC6)) ^ 0xDD) << 8);
  *(v37 - 248) = v180;
  v185 = v179 | ((*(v180 + v184) ^ 0x39) << 8);
  v186 = qword_2836EB200[(v109 ^ 0x1A0)];
  LODWORD(v182) = v182 & 0xFFFFFF00 | (53 * *(v186 + (*(v37 - 97) ^ 0xCBLL)) - 27) ^ 0x79;
  LOBYTE(v167) = *(v186 + (*(v37 - 105) ^ 0xB9));
  v187 = v185 & 0xFFFFFF00 | (53 * *(v186 + (*(v37 - 109) ^ 0x8ALL)) - 27) ^ 0xC9;
  v188 = *(v37 - 104) ^ 0x8ALL;
  v189 = *(v37 - 101) ^ 6;
  *(v37 - 256) = v186;
  LOBYTE(v189) = (53 * *(v186 + v189) - 27) ^ 0x87;
  *(v37 - 240) = v178;
  LODWORD(v103) = v103 & 0xFFFFFF00 | v189 | ((*(v178 + v188) ^ 0x3F) << 24);
  *(v37 - 136) = v187 ^ 0x37373737;
  *(v37 - 132) = v182 ^ 0x37373737;
  *(v37 - 128) = (v106 & 0xFFFFFF00 | (53 * v167 - 27) ^ 0x3C) ^ 0x37373737;
  *(v37 - 140) = v103 ^ 0x37373737;
  v551 = (HIDWORD(v423) + 1689243712) ^ v171 ^ v456;
  v549 = (v428 + 1689243712) ^ v172 ^ v548;
  v546 = (v508 + 1689243712) ^ v168 ^ v535;
  v544 = (v497 + 1689243712) ^ v169 ^ (-1974868763 * v158 + 1985505912);
  v541 = v540 ^ v399;
  v539 = HIDWORD(v405) ^ v170 ^ v492 ^ v538;
  v536 = (v110 - ((2 * v110) & 0xC95FA080) + 1689243712) ^ HIDWORD(v400);
  LODWORD(v186) = v532 - ((2 * v532) & 0x77388DE8);
  v533 = (v501 + 1299080241) ^ v529;
  v530 = v408 ^ v524;
  *(v37 - 124) = (((*(v37 - 160) ^ 0xDD4FB786) - 1051143970) ^ ((*(v37 - 160) ^ 0x2D6C1920) + 830176892) ^ ((*(v37 - 160) ^ 0xDFD72D54) - 1010808304)) - 1653698677;
  LODWORD(v177) = v519 ^ *(v37 - 176);
  v527 = *(v37 - 180) ^ v177 ^ 0xB9EF8AB ^ 0xB7778D02;
  v525 = v177 ^ 0xB530938F;
  v522 = *(v37 - 172) ^ v177 ^ 0xB9EF8AB ^ 0xB2CF6573;
  v520 = *(v37 - 164) ^ v519 ^ 0xD960783;
  v518 = v517 ^ HIDWORD(v408);
  v515 = v402 ^ (HIDWORD(v445) + 1689243712) ^ v514;
  HIDWORD(v511) = v513 ^ v510;
  LODWORD(v511) = HIDWORD(v421) ^ (v426 + 1689243712);
  HIDWORD(v506) = v421 ^ v500 ^ v479;
  LODWORD(v506) = (v414 + 1299080241) ^ v505;
  HIDWORD(v502) = v405 ^ v423 ^ v503 ^ v452;
  LODWORD(v502) = HIDWORD(v426) ^ v459 ^ (HIDWORD(v418) + 1689243712);
  HIDWORD(v498) = HIDWORD(v414) ^ v174;
  LODWORD(v498) = (v487 + 1299080241) ^ v488;
  HIDWORD(v493) = v448 ^ v495;
  LODWORD(v493) = v411 ^ v476 ^ (-1974868763 * v164 + 1985505912);
  HIDWORD(v489) = HIDWORD(v411) ^ (HIDWORD(v399) + 1689243712);
  LODWORD(v489) = HIDWORD(v441) ^ HIDWORD(v428) ^ v461 ^ v471;
  LODWORD(v178) = *(v37 - 116);
  HIDWORD(v486) = HIDWORD(v433) ^ (HIDWORD(v396) + 1299080241);
  LODWORD(v486) = v445 ^ (v464 + 1689243712);
  HIDWORD(v483) = v482 ^ HIDWORD(v402) ^ v484;
  LODWORD(v483) = v474 ^ *(v37 - 148) ^ HIDWORD(v437);
  HIDWORD(v477) = v441 ^ HIDWORD(v448);
  LODWORD(v477) = v433 ^ *(v37 - 156) ^ v418;
  HIDWORD(v472) = *(v37 - 220) ^ HIDWORD(v452);
  LODWORD(v472) = HIDWORD(v456) ^ HIDWORD(v430) ^ v469;
  HIDWORD(v467) = *(v37 - 168) ^ (v430 + 1689243712) ^ *(v37 - 144);
  LODWORD(v467) = *(v37 - 152) ^ (v466 + 1);
  *(v37 - 220) = v176;
  v190 = *(v37 - 120);
  LODWORD(v462) = v186 - 1147386124;
  HIDWORD(v462) = 46032142 - v176 - v175;
  HIDWORD(a34) = HIDWORD(v462) ^ v175;
  *(v37 - 116) = v178;
  *(v37 - 180) = 0;
  LODWORD(v177) = *(v37 - 124) < 0xD1527435;
  *(v37 - 148) = v190 - 1781974404;
  *(v37 - 144) = v177;
  LODWORD(v109) = (v190 + 51) | 0x60;
  v191 = (*(v37 - 192) + v178);
  v192 = *(v37 - 240);
  v193 = *(v37 - 232);
  LOBYTE(v186) = *(v193 + (v191[5] ^ 0x87));
  v194 = v190;
  LOBYTE(v177) = v191[4];
  *(v37 - 160) = v109;
  v196 = *(v37 - 256);
  v195 = *(v37 - 248);
  v197 = v191[7] ^ 0xBFLL;
  v198 = (((v190 + 124) ^ 0xA5 ^ (v186 - 37)) << 16) | ((*(v192 + (v177 ^ (v109 + 26))) ^ 8) << 24) | ((*(v195 + (v191[6] ^ 0xE2)) ^ 0xFF) << 8) | (53 * *(v196 + v197) - 27) ^ 0xFA;
  v199 = ((53 * *(v196 + (v191[15] ^ 0x3CLL)) - 27) ^ 0x68 | ((*(v195 + (v191[14] ^ 8)) ^ 0xBB) << 8)) & 0xFF00FFFF | ((*(v192 + (v191[12] ^ 0xBDLL)) ^ 0x20) << 24) | (((*(v193 + (v191[13] ^ 0xCALL)) - 37) ^ 0xFD) << 16);
  v200 = (53 * *(v196 + (v191[3] ^ 0x19)) - 27) ^ 0x38 | ((*(v192 + (*v191 ^ 0x50)) ^ 0x3D) << 24) | (((*(v193 + (v191[1] ^ 0x1ELL)) - 37) ^ 0x68) << 16) | ((*(v195 + (v191[2] ^ 6)) ^ 0xC7) << 8);
  v201 = ((*(v192 + v191[8]) ^ 3) << 24) | (((*(v193 + (v191[9] ^ 0xB0)) - 37) ^ 0x86) << 16) | ((*(v195 + (v191[10] ^ 0x42)) ^ 0x3A) << 8) | (53 * *(v196 + (v191[11] ^ 0x60)) - 27) ^ 0xDA;
  if ((((53 * *(v196 + v197) - 27) ^ 0xFA) & 2) != 0)
  {
    v202 = -2;
  }

  else
  {
    v202 = 2;
  }

  *(v37 - 172) = v198;
  *(v37 - 168) = v199;
  v203 = v525 ^ (v202 + v198);
  *(v37 - 164) = v201;
  *(v37 - 176) = v200;
  v204 = qword_2836EB200[v194 ^ 0x170] - 8;
  v205 = *(v204 + 4 * ((v522 ^ v201) >> 8));
  HIDWORD(v207) = v205 ^ 0x2AC9;
  LODWORD(v207) = v205 ^ 0x819F0000;
  v206 = v207 >> 14;
  v208 = qword_2836EB200[v194 ^ 0x138] - 4;
  v209 = *(v208 + 4 * HIBYTE(v203));
  v210 = *(v204 + 4 * ((v520 ^ v200) >> 8));
  HIDWORD(v207) = v210 ^ 0x2AC9;
  LODWORD(v207) = v210 ^ 0x819F0000;
  *(v37 - 120) = v194;
  v211 = qword_2836EB200[v194 ^ 0x19A];
  v212 = (-757993034 - 21582785 * *(v211 + 4 * (v522 ^ v201))) ^ (v209 - 727163175);
  v213 = *(v208 + 4 * ((v522 ^ v201) >> 24));
  v214 = (-757993034 - 21582785 * *(v211 + 4 * v203)) ^ v206;
  v215 = qword_2836EB200[v194 ^ 0x1D7] - 8;
  v216 = *(v215 + 4 * BYTE2(v203));
  v217 = *(v204 + 4 * BYTE1(v203));
  v218 = ((v213 - 727163175) ^ (v207 >> 14)) - 1147386124 - ((2 * ((v213 - 727163175) ^ (v207 >> 14))) & 0x77388DE8);
  HIDWORD(v207) = v217 ^ 0x2AC9;
  LODWORD(v207) = v217 ^ 0x819F0000;
  v219 = v218 ^ v216 ^ (-757993034 - 21582785 * *(v211 + 4 * (v527 ^ v199)));
  v220 = (*(v208 + 4 * ((v527 ^ v199) >> 24)) - 727163175) ^ (v207 >> 14);
  v221 = *(v204 + 4 * ((v527 ^ v199) >> 8));
  HIDWORD(v207) = v221 ^ 0x2AC9;
  LODWORD(v207) = v221 ^ 0x819F0000;
  v222 = v220 ^ (-757993034 - 21582785 * *(v211 + 4 * (v520 ^ v200)));
  v223 = HIDWORD(a34) ^ (v219 + HIDWORD(v462) - 2 * (v219 & HIDWORD(v462)));
  v224 = v518 ^ *(v215 + 4 * ((v527 ^ v199) >> 16)) ^ (*(v208 + 4 * ((v520 ^ v200) >> 24)) - 727163175) ^ 0x8E1E9161 ^ (v214 - 1147386124 - ((2 * v214) & 0x77388DE8));
  v225 = v515 ^ *(v215 + 4 * ((v520 ^ v200) >> 16)) ^ (v207 >> 14) ^ (v212 - 1147386124 - ((2 * v212) & 0x77388DE8)) ^ 0x7A8BED94;
  v226 = HIDWORD(v511) ^ *(v215 + 4 * ((v522 ^ v201) >> 16)) ^ 0x342D1067 ^ (v222 - 1147386124 - ((2 * v222) & 0x77388DE8));
  v227 = *(v204 + 4 * ((v223 ^ 0xAB13) >> 8));
  HIDWORD(v207) = v227 ^ 0x2AC9;
  LODWORD(v207) = v227 ^ 0x819F0000;
  v228 = (v207 >> 14) ^ (*(v208 + 4 * HIBYTE(v224)) - 727163175);
  v229 = *(v208 + 4 * HIBYTE(v225));
  v230 = v228 - 1147386124 - ((2 * v228) & 0x77388DE8);
  v231 = (2 * v229 + 693157298) & 0x77388DE8;
  v232 = v229 - 1874549299;
  v233 = *(v204 + 4 * ((WORD2(v511) ^ *(v215 + 4 * ((v522 ^ v201) >> 16)) ^ 0x1067 ^ (v222 + 18164 - ((2 * v222) & 0x8DE8))) >> 8));
  HIDWORD(v207) = v233 ^ 0x2AC9;
  LODWORD(v207) = v233 ^ 0x819F0000;
  v234 = v207 >> 14;
  v235 = v232 - v231;
  v236 = *(v208 + 4 * ((v223 ^ 0xC04AB13u) >> 24));
  v237 = v236 - 1874549299 - ((2 * v236 + 693157298) & 0x77388DE8);
  v238 = (-757993034 - 21582785 * *(v211 + 4 * v224)) ^ (*(v208 + 4 * HIBYTE(v226)) - 727163175);
  v239 = *(v204 + 4 * BYTE1(v224));
  HIDWORD(v207) = v239 ^ 0x2AC9;
  LODWORD(v207) = v239 ^ 0x819F0000;
  v240 = v207 >> 14;
  v241 = *(v204 + 4 * BYTE1(v225));
  HIDWORD(v207) = v241 ^ 0x2AC9;
  LODWORD(v207) = v241 ^ 0x819F0000;
  v242 = *(v215 + 4 * BYTE2(v225));
  v243 = v551 ^ *(v215 + 4 * BYTE2(v226)) ^ (-757993034 - 21582785 * *(v211 + 4 * v225)) ^ v230;
  v244 = v511 ^ *(v215 + 4 * (BYTE2(v223) ^ 4u)) ^ (v207 >> 14) ^ 0xD9D684A ^ (v238 - 1147386124 - ((2 * v238) & 0x77388DE8));
  v245 = HIDWORD(v506) ^ *(v215 + 4 * BYTE2(v224)) ^ v235 ^ v234 ^ 0x87DD46DC ^ (-757993034 - 21582785 * *(v211 + 4 * (v223 ^ 0x33u)));
  v246 = v506 ^ v242 ^ (-757993034 - 21582785 * *(v211 + 4 * ((BYTE4(v511) ^ *(v215 + 4 * ((v522 ^ v201) >> 16))) ^ 0x67u ^ (v222 - 12 - ((2 * v222) & 0xE8))))) ^ v240 ^ 0x96521C3F ^ v237;
  v247 = *(v204 + 4 * ((v243 ^ 0xB36B) >> 8));
  HIDWORD(v207) = v247 ^ 0x2AC9;
  LODWORD(v207) = v247 ^ 0x819F0000;
  v248 = v207 >> 14;
  v249 = *(v204 + 4 * BYTE1(v244));
  HIDWORD(v207) = v249 ^ 0x2AC9;
  LODWORD(v207) = v249 ^ 0x819F0000;
  v250 = *(v204 + 4 * BYTE1(v245));
  v251 = -757993034 - 21582785 * *(v211 + 4 * v245);
  v252 = (*(v208 + 4 * HIBYTE(v245)) - 727163175) ^ (v207 >> 14);
  HIDWORD(v207) = v250 ^ 0x2AC9;
  LODWORD(v207) = v250 ^ 0x819F0000;
  v253 = (-757993034 - 21582785 * *(v211 + 4 * v244)) ^ v248;
  v254 = v252 ^ (-757993034 - 21582785 * *(v211 + 4 * v246));
  v255 = (*(v208 + 4 * HIBYTE(v244)) - 727163175) ^ (v207 >> 14);
  v256 = *(v204 + 4 * BYTE1(v246));
  HIDWORD(v207) = v256 ^ 0x2AC9;
  LODWORD(v207) = v256 ^ 0x819F0000;
  v257 = *(v215 + 4 * BYTE2(v244));
  v258 = v255 ^ (-757993034 - 21582785 * *(v211 + 4 * (v243 ^ 0x6Bu)));
  v259 = *(v208 + 4 * (HIBYTE(v243) ^ 0xEE)) - 727163175;
  v260 = v549 ^ *(v215 + 4 * ((v243 ^ 0x2F7BB36B) >> 16)) ^ (v254 - 1147386124 - ((2 * v254) & 0x77388DE8));
  v261 = HIDWORD(v502) ^ *(v215 + 4 * BYTE2(v246)) ^ 0x2388712C ^ (v258 - 1147386124 - ((2 * v258) & 0x77388DE8));
  v262 = v502 ^ *(v215 + 4 * BYTE2(v245)) ^ (*(v208 + 4 * HIBYTE(v246)) - 727163175) ^ 0xD8A932B2 ^ (v253 - 1147386124 - ((2 * v253) & 0x77388DE8));
  BYTE2(v244) = BYTE2(v260) ^ 0x6F;
  v263 = HIDWORD(v498) ^ v257 ^ v259 ^ 0xDBC82169 ^ (((v207 >> 14) ^ v251) - 1147386124 - ((2 * ((v207 >> 14) ^ v251)) & 0x77388DE8));
  v264 = *(v215 + 4 * BYTE2(v261));
  v265 = *(v204 + 4 * ((v260 ^ 0x9E59) >> 8));
  HIDWORD(v207) = v265 ^ 0x2AC9;
  LODWORD(v207) = v265 ^ 0x819F0000;
  v266 = v207 >> 14;
  v267 = *(v204 + 4 * BYTE1(v263));
  HIDWORD(v207) = v267 ^ 0x2AC9;
  LODWORD(v207) = v267 ^ 0x819F0000;
  v268 = *(v204 + 4 * ((WORD2(v502) ^ *(v215 + 4 * BYTE2(v246)) ^ 0x712C ^ (v258 + 18164 - ((2 * v258) & 0x8DE8))) >> 8));
  v269 = (*(v208 + 4 * ((v260 ^ 0xD16F9E59) >> 24)) - 727163175) ^ (-757993034 - 21582785 * *(v211 + 4 * ((v502 ^ *(v215 + 4 * BYTE2(v245)) ^ (*(v208 + 4 * HIBYTE(v246)) - 39)) ^ 0xB2u ^ (v253 - 12 - ((2 * v253) & 0xE8))))) ^ (v268 >> 14);
  v270 = (*(v208 + 4 * HIBYTE(v261)) - 727163175) ^ v266 ^ (-757993034 - 21582785 * *(v211 + 4 * v263));
  v271 = *(v215 + 4 * BYTE2(v262));
  v272 = (v207 >> 14) ^ (*(v208 + 4 * HIBYTE(v262)) - 727163175) ^ (-757993034 - 21582785 * *(v211 + 4 * v261));
  v273 = *(v211 + 4 * (v260 ^ 0x79u));
  v274 = *(v204 + 4 * BYTE1(v262));
  HIDWORD(v207) = v274 ^ 0x2AC9;
  LODWORD(v207) = v274 ^ 0x819F0000;
  v275 = v546 ^ v271 ^ (v270 - 1147386124 - ((2 * v270) & 0x77388DE8));
  v276 = v275 ^ 0xE0349DAE;
  v277 = v498 ^ *(v215 + 4 * BYTE2(v244)) ^ 0xF4361671 ^ (v272 - 1147386124 - ((2 * v272) & 0x77388DE8));
  v278 = v544 ^ v264 ^ (*(v208 + 4 * HIBYTE(v263)) - 727163175) ^ (v207 >> 14) ^ (-21582785 * v273 - 1905379158 - ((2104318078 * v273 + 631497580) & 0x77388DE8));
  v279 = HIDWORD(v493) ^ *(v215 + 4 * BYTE2(v263)) ^ 0x7E1E5010 ^ ((v269 ^ (v268 << 18) ^ 0xAB26067C) - 1147386124 - 2 * ((v269 ^ (v268 << 18) ^ 0xAB26067C) & 0x3B9C46F5 ^ v269 & 1));
  v280 = (v275 ^ 0xE0349DAE) >> 24;
  v281 = (-757993034 - 21582785 * *(v211 + 4 * (v275 ^ 0x8Eu))) ^ (*(v208 + 4 * HIBYTE(v277)) - 727163175);
  v282 = *(v208 + 4 * v280);
  v283 = v281 - 1147386124 - ((2 * v281) & 0x77388DE8);
  v284 = *(v204 + 4 * BYTE1(v276));
  HIDWORD(v207) = v284 ^ 0x2AC9;
  LODWORD(v207) = v284 ^ 0x819F0000;
  v285 = v207 >> 14;
  v286 = v282 - 1874549299 - ((2 * v282 + 693157298) & 0x77388DE8);
  v287 = *(v204 + 4 * BYTE1(v279));
  HIDWORD(v207) = v287 ^ 0x2AC9;
  LODWORD(v207) = v287 ^ 0x819F0000;
  v288 = v207 >> 14;
  v289 = *(v204 + 4 * ((v278 ^ 0x500A) >> 8));
  HIDWORD(v207) = v289 ^ 0x2AC9;
  LODWORD(v207) = v289 ^ 0x819F0000;
  v290 = v207 >> 14;
  v291 = *(v204 + 4 * BYTE1(v277));
  HIDWORD(v207) = v291 ^ 0x2AC9;
  LODWORD(v207) = v291 ^ 0x819F0000;
  v292 = v285 ^ (-757993034 - 21582785 * *(v211 + 4 * v277)) ^ (*(v208 + 4 * HIBYTE(v279)) - 727163175);
  v293 = (-757993034 - 21582785 * *(v211 + 4 * v279)) ^ (*(v208 + 4 * ((v278 ^ 0x6754500Au) >> 24)) - 727163175) ^ (v207 >> 14);
  v294 = -757993034 - 21582785 * *(v211 + 4 * (v278 ^ 0x2Au));
  v295 = v493 ^ *(v215 + 4 * BYTE2(v279)) ^ v283 ^ v290 ^ 0x541774FA;
  v296 = HIDWORD(v489) ^ *(v215 + 4 * ((v278 ^ 0x6754500Au) >> 16)) ^ 0x9A279982 ^ (v292 - 1147386124 - ((2 * v292) & 0x77388DE8));
  v297 = v489 ^ *(v215 + 4 * BYTE2(v277)) ^ v286 ^ v294 ^ 0x7E34B993 ^ v288;
  v298 = HIDWORD(v486) ^ *(v215 + 4 * BYTE2(v276)) ^ 0x8EB61C45 ^ (v293 - 1147386124 - ((2 * v293) & 0x77388DE8));
  v299 = *(v204 + 4 * BYTE1(v296));
  HIDWORD(v207) = v299 ^ 0x2AC9;
  LODWORD(v207) = v299 ^ 0x819F0000;
  v300 = (v207 >> 14) - 1147386124 - ((2 * (v207 >> 14)) & 0x77388DE8);
  v301 = *(v211 + 4 * (v295 - ((2 * v295) & 0x40) + 32));
  v302 = *(v204 + 4 * BYTE1(v298));
  HIDWORD(v207) = v302 ^ 0x2AC9;
  LODWORD(v207) = v302 ^ 0x819F0000;
  v303 = (v207 >> 14) ^ (*(v208 + 4 * HIBYTE(v295)) - 727163175);
  v304 = -757993034 - 1343227702 * v301 + 1321644917 * v301 - 1147386124 - 2 * ((-757993034 - 1343227702 * v301 + 1321644917 * v301) & 0x3B9C46F5 ^ (1321644917 * v301) & 1);
  v305 = *(v204 + 4 * BYTE1(v295));
  HIDWORD(v207) = v305 ^ 0x2AC9;
  LODWORD(v207) = v305 ^ 0x819F0000;
  v306 = v207 >> 14;
  v307 = *(v204 + 4 * BYTE1(v297));
  HIDWORD(v207) = v307 ^ 0x2AC9;
  LODWORD(v207) = v307 ^ 0x819F0000;
  v308 = v541 ^ *(v215 + 4 * BYTE2(v297)) ^ v306 ^ (*(v208 + 4 * HIBYTE(v298)) - 727163175) ^ (-21582785 * *(v211 + 4 * v296) - 1905379158 - ((2104318078 * *(v211 + 4 * v296) + 631497580) & 0x77388DE8));
  v309 = v486 ^ *(v215 + 4 * BYTE2(v295)) ^ (*(v208 + 4 * HIBYTE(v297)) - 727163175) ^ v300 ^ (-757993034 - 21582785 * *(v211 + 4 * v298)) ^ 0x7C892C4A;
  v310 = HIDWORD(v483) ^ *(v215 + 4 * BYTE2(v298)) ^ (*(v208 + 4 * HIBYTE(v296)) - 727163175) ^ (v207 >> 14) ^ 0x190B7FE4 ^ v304;
  v311 = v483 ^ *(v215 + 4 * BYTE2(v296)) ^ (-757993034 - 21582785 * *(v211 + 4 * v297)) ^ 0xCFA132BA ^ (v303 - 1147386124 - ((2 * v303) & 0x77388DE8));
  v312 = v308 ^ 0x402CF460;
  v313 = (v308 ^ 0x402CF460u) >> 24;
  v314 = *(v215 + 4 * BYTE2(v311));
  v315 = *(v204 + 4 * BYTE1(v309));
  HIDWORD(v207) = v315 ^ 0x2AC9;
  LODWORD(v207) = v315 ^ 0x819F0000;
  v316 = v207 >> 14;
  v317 = *(v204 + 4 * BYTE1(v311));
  v318 = HIBYTE(v311);
  HIDWORD(v207) = v317 ^ 0x2AC9;
  LODWORD(v207) = v317 ^ 0x819F0000;
  v319 = *(v211 + 4 * (v308 ^ 0x40u));
  v320 = (-757993034 - 21582785 * *(v211 + 4 * v310)) ^ (v207 >> 14) ^ (*(v208 + 4 * v313) - 727163175);
  v321 = (*(v208 + 4 * HIBYTE(v310)) - 727163175) ^ v316;
  v322 = *(v204 + 4 * BYTE1(v310));
  HIDWORD(v207) = v322 ^ 0x2AC9;
  LODWORD(v207) = v322 ^ 0x819F0000;
  v323 = v207 >> 14;
  v324 = v321 ^ (-757993034 - 21582785 * *(v211 + 4 * v311));
  v325 = *(v215 + 4 * BYTE2(v312));
  v326 = (-757993034 - 21582785 * *(v211 + 4 * v309)) ^ (*(v208 + 4 * v318) - 727163175);
  v327 = *(v204 + 4 * BYTE1(v312));
  HIDWORD(v207) = v327 ^ 0x2AC9;
  LODWORD(v207) = v327 ^ 0x819F0000;
  v328 = HIDWORD(v477) ^ *(v215 + 4 * BYTE2(v309)) ^ 0x2655A6B2 ^ (v320 - 1147386124 - ((2 * v320) & 0x77388DE8));
  v329 = v477 ^ *(v215 + 4 * BYTE2(v310)) ^ (v207 >> 14) ^ 0x354150DE ^ (v326 - 1147386124 - ((2 * v326) & 0x77388DE8));
  v330 = HIDWORD(v472) ^ v314 ^ v323 ^ (-21582785 * v319 - 1905379158 - ((2104318078 * v319 + 631497580) & 0x77388DE8)) ^ (*(v208 + 4 * HIBYTE(v309)) - 727163175) ^ 0x6005D395;
  v331 = v472 ^ v325 ^ 0xD6EF510D ^ (v324 - 1147386124 - ((2 * v324) & 0x77388DE8));
  v332 = *(v204 + 4 * BYTE1(v330));
  HIDWORD(v207) = v332 ^ 0x2AC9;
  LODWORD(v207) = v332 ^ 0x819F0000;
  v333 = (v207 >> 14) - 1147386124 - ((2 * (v207 >> 14)) & 0x77388DE8);
  v334 = *(v208 + 4 * HIBYTE(v328));
  v335 = (-757993034 - 21582785 * *(v211 + 4 * v328)) ^ (*(v208 + 4 * HIBYTE(v330)) - 727163175);
  v336 = v334 - 1874549299 - ((2 * v334 + 693157298) & 0x77388DE8);
  v337 = -21582785 * *(v211 + 4 * v330) - 1905379158 - ((2104318078 * *(v211 + 4 * v330) + 631497580) & 0x77388DE8);
  v338 = *(v204 + 4 * BYTE1(v329));
  HIDWORD(v207) = v338 ^ 0x2AC9;
  LODWORD(v207) = v338 ^ 0x819F0000;
  v339 = v207 >> 14;
  v340 = *(v204 + 4 * BYTE1(v328));
  HIDWORD(v207) = v340 ^ 0x2AC9;
  LODWORD(v207) = v340 ^ 0x819F0000;
  v341 = v207 >> 14;
  v342 = *(v204 + 4 * BYTE1(v331));
  HIDWORD(v207) = v342 ^ 0x2AC9;
  LODWORD(v207) = v342 ^ 0x819F0000;
  v343 = *(v215 + 4 * BYTE2(v328));
  v344 = *(v215 + 4 * BYTE2(v329)) ^ *(v37 - 220) ^ (v207 >> 14) ^ (v335 - 1147386124 - ((2 * v335) & 0x77388DE8));
  v345 = *(v208 + 4 * HIBYTE(v329)) - 727163175;
  BYTE2(v328) = BYTE2(v344) ^ 0x1C;
  v346 = v539 ^ *(v215 + 4 * BYTE2(v330)) ^ v339 ^ v336 ^ (-757993034 - 21582785 * *(v211 + 4 * v331));
  v347 = HIDWORD(v467) ^ v343 ^ (*(v208 + 4 * HIBYTE(v331)) - 727163175) ^ v333 ^ (-757993034 - 21582785 * *(v211 + 4 * v329)) ^ 0xDE12593A;
  v348 = v467 ^ v345 ^ *(v215 + 4 * BYTE2(v331)) ^ v337 ^ v341 ^ 0x8D19C5A6;
  v349 = *(v204 + 4 * BYTE1(v348));
  HIDWORD(v207) = v349 ^ 0x2AC9;
  LODWORD(v207) = v349 ^ 0x819F0000;
  v350 = *(v211 + 4 * (v344 ^ 0x30u));
  v351 = *(v211 + 4 * v347);
  v352 = *(v204 + 4 * ((v344 ^ 0x5930) >> 8));
  v353 = (v207 >> 14) - 1147386124 - ((2 * (v207 >> 14)) & 0x77388DE8);
  HIDWORD(v207) = v352 ^ 0x2AC9;
  LODWORD(v207) = v352 ^ 0x819F0000;
  v354 = (v207 >> 14) - 1147386124 - ((2 * (v207 >> 14)) & 0x77388DE8);
  v355 = *(v204 + 4 * ((v346 ^ 0x9D17) >> 8));
  v356 = (*(v208 + 4 * (HIBYTE(v344) ^ 0x50)) - 727163175) ^ (-757993034 - 21582785 * *(v211 + 4 * (v346 ^ 0x17u)));
  HIDWORD(v207) = v355 ^ 0x2AC9;
  LODWORD(v207) = v355 ^ 0x819F0000;
  v357 = v207 >> 14;
  v358 = *(v215 + 4 * ((v346 ^ 0x10199D17) >> 16));
  v359 = *(v208 + 4 * HIBYTE(v348)) - 727163175;
  v360 = *(v208 + 4 * HIBYTE(v347)) - 727163175;
  LODWORD(v208) = *(v208 + 4 * (HIBYTE(v346) ^ 0xD1));
  v361 = *(v204 + 4 * BYTE1(v347));
  HIDWORD(v207) = v361 ^ 0x2AC9;
  LODWORD(v207) = v361 ^ 0x819F0000;
  v362 = v536 ^ v358 ^ v360 ^ (-757993034 - 21582785 * *(v211 + 4 * v348)) ^ v354;
  v363 = v359 ^ v462 ^ v357 ^ *(v215 + 4 * BYTE2(v347)) ^ (-757993034 - 21582785 * v350);
  v364 = v533 ^ *(v215 + 4 * BYTE2(v328)) ^ v353 ^ (-757993034 - 21582785 * v351) ^ (v208 - 727163175);
  v365 = v530 ^ *(v215 + 4 * BYTE2(v348)) ^ (v207 >> 14) ^ (v356 - 1147386124 - ((2 * v356) & 0x77388DE8));
  v366 = v365 ^ 0x644667A6;
  v367 = *(v37 - 120);
  v368 = qword_2836EB200[v367 - 239];
  v369 = *(v368 + 4 * ((v365 ^ 0x644667A6u) >> 24));
  HIDWORD(v207) = v369 ^ 0x65;
  LODWORD(v207) = v369 ^ 0xD0D15680;
  v370 = qword_2836EB200[v367 ^ 0x193] - 12;
  v371 = qword_2836EB200[v367 & 0x475484A7] - 12;
  v372 = ((v364 ^ 0x88) + 1555676989 - 2 * ((v364 ^ 0x7EC2C88) & 0x3F ^ v364 & 2)) ^ *(v371 + 4 * (v364 ^ 0xDBu)) ^ (v207 >> 7);
  v373 = *(v370 + 4 * ((v365 ^ 0x644667A6u) >> 16));
  v374 = ((v364 ^ 0x2C88) >> 8);
  *(v37 - 156) = v372 + 867605127 - ((2 * v372) & 0x676D350E);
  *(v37 - 152) = ((2 * v373) & 0xBB708860 ^ 0xDC9FFFFF) - 1855005000 + (((v373 ^ 0xFBEE1C1E) + 68281314) ^ ((v373 ^ 0x1A57393F) - 441923903) ^ ((v373 ^ 0xD20FBFA6) + 770719834));
  v375 = v374 + 1864143953 - ((v364 >> 7) & 0xA2);
  v376 = *(v370 + 4 * ((v364 ^ 0x7EC2C88) >> 16));
  v377 = v374 ^ 0xF5;
  v378 = qword_2836EB200[v367 ^ 0x107] - 12;
  v379 = ((v365 ^ 0xA6) + 1555676989 - ((2 * (v365 ^ 0x644667A6)) & 0x7A)) ^ v375 ^ *(v378 + 4 * v377) ^ *(v371 + 4 * (v365 ^ 0xF5u));
  v380 = *(v368 + 4 * ((v362 ^ 0x9A25D878) >> 24));
  HIDWORD(v207) = v380 ^ 0x65;
  LODWORD(v207) = v380 ^ 0xD0D15680;
  v381 = ((v363 ^ 0x9B63) >> 8);
  v382 = v381 + 1864143953 - (((v363 ^ 0xAD089B63) >> 7) & 0xA2);
  v383 = (v207 >> 7) + 867605127 - ((2 * (v207 >> 7)) & 0x676D350E);
  v384 = *(v368 + 4 * (HIBYTE(v363) ^ 0xBD));
  HIDWORD(v207) = v384 ^ 0x65;
  LODWORD(v207) = v384 ^ 0xD0D15680;
  v385 = (v207 >> 7);
  v386 = *(v371 + 4 * (v362 ^ 0x2Bu));
  v387 = *(v371 + 4 * (v363 ^ 0x30u));
  v388 = (v363 ^ 0x63) + 1555676989 - ((2 * (v363 ^ 0xAD089B63)) & 0x7A);
  LODWORD(v208) = *(v368 + 4 * ((v364 ^ 0x7EC2C88) >> 24));
  HIDWORD(v207) = v208 ^ 0x65;
  LODWORD(v207) = v208 ^ 0xD0D15680;
  LODWORD(v211) = *(v37 - 140) ^ *(v37 - 208) ^ *(v370 + 4 * ((v362 ^ 0x9A25D878) >> 16)) ^ v385 ^ (v379 + 867605127 - ((2 * v379) & 0x676D350E));
  LODWORD(v208) = *(v37 - 136) ^ *(v37 - 216) ^ v382 ^ ((v362 ^ 0x78) + 1555676989 - ((2 * (v362 ^ 0x9A25D878)) & 0x7A)) ^ v386 ^ *(v378 + 4 * (v381 ^ 0xF5u)) ^ (v207 >> 7) ^ *(v37 - 152);
  v389 = *(v37 - 132) ^ *(v37 - 212) ^ (((v362 ^ 0xD878) >> 8) + 1864143953 - (((v362 ^ 0x9A25D878) >> 7) & 0xA2)) ^ *(v370 + 4 * ((v363 ^ 0xAD089B63) >> 16)) ^ *(v378 + 4 * (((v362 ^ 0xD878) >> 8) ^ 0xF5u)) ^ *(v37 - 156);
  LODWORD(v368) = *(v37 - 128) ^ *(v37 - 204) ^ v388 ^ v376 ^ (BYTE1(v366) + 1864143953 + (~(v366 >> 7) | 0xFFFFFF5D) + 1) ^ v387 ^ *(v378 + 4 * (BYTE1(v366) ^ 0xF5u)) ^ v383;
  v390 = qword_2836EB200[v367 - 146] - 4;
  v191[3] = *(v390 + ((*(v37 - 136) ^ *(v37 - 216) ^ v382 ^ ((v362 ^ 0x78) + 61 - ((2 * (v362 ^ 0x78)) & 0x7A)) ^ v386 ^ *(v378 + 4 * (v381 ^ 0xF5u)) ^ (v207 >> 7) ^ *(v37 - 152)) ^ 0xDFLL)) ^ 0x8E;
  v391 = qword_2836EB200[v367 - 297] - 8;
  v191[4] = (*(v391 + (BYTE3(v368) ^ 0x2CLL)) - 119) ^ 0x78;
  *v191 = (*(v391 + (BYTE3(v208) ^ 0x57)) - 119) ^ 0xC8;
  v392 = qword_2836EB200[v367 ^ 0x1BC];
  v191[13] = (*(v392 + (BYTE2(v389) ^ 0x5CLL)) - 116) ^ 0xC7;
  v191[11] = *(v390 + (v211 ^ 0x46)) ^ 0xCA;
  v393 = qword_2836EB200[v367 ^ 0x1C8] - 8;
  v191[14] = ((BYTE1(v389) ^ 0xEE) - ((2 * (BYTE1(v389) ^ 0xEE)) & 0xDA) + 109) ^ 0x75 ^ *(v393 + BYTE1(v389));
  v191[2] = ((BYTE1(v208) ^ 3) + (~(2 * (BYTE1(v208) ^ 3)) | 0x25) + 110) ^ 0x8B ^ *(v393 + (BYTE1(v208) ^ 0xE6));
  v191[10] = ((BYTE1(v211) ^ 0xAB) - ((2 * (BYTE1(v211) ^ 0xAB)) & 0xDA) + 109) ^ 0x6D ^ *(v393 + (BYTE1(v211) ^ 0x84));
  v191[15] = *(v390 + (v389 ^ 0x11)) ^ 0x7D;
  v191[5] = (*(v392 + (BYTE2(v368) ^ 0x44)) - 116) ^ 0xE2;
  v191[8] = (*(v391 + (BYTE3(v211) ^ 0x26)) - 119) ^ 0xA2;
  v191[7] = *(v390 + (v368 ^ 0x3DLL)) ^ 0x77;
  v191[12] = (*(v391 + (HIBYTE(v389) ^ 0x44)) - 119) ^ 0x23;
  v191[1] = (*(v392 + (BYTE2(v208) ^ 0xA3)) - 116) ^ 0x17;
  LOBYTE(v208) = (BYTE1(v368) - ((v368 >> 7) & 0xDA) + 109) ^ 0xD0 ^ *(v393 + (BYTE1(v368) ^ 0x58));
  LODWORD(v368) = *(v37 - 116);
  v191[6] = v208;
  v191[9] = (*(v392 + (BYTE2(v211) ^ 0xF8)) - 116) ^ 0x90;
  v394 = (v368 - 783125435) < *(v37 - 124);
  if (*(v37 - 144) != (v368 - 783125435) < 0xD1527435)
  {
    v394 = *(v37 - 144);
  }

  LODWORD(v414) = HIDWORD(v396) + 1299080241;
  HIDWORD(v445) = HIDWORD(v399) + 1689243712;
  return (*(*(v37 - 200) + 8 * ((197 * v394) ^ v367)))(109, 218, v387, 1864143953, v385, v376, v392, v382, a9, v396, v397, v399, v400, v402, v405, v408, v411, v414, v418, v421, v423, v426, v428, v430, v433, v437, v441, v445, v448, v452, v456, a32, a33, a34, v462, v467, v472, v477, v483, v486, v489, v493, v498, v502, v506, v511);
}

void sub_22383C7EC()
{
  v0 = STACK[0x3A8];
  LODWORD(STACK[0x294]) = 1;
  STACK[0x2D8] = v0;
  LODWORD(STACK[0x374]) = 1205788789;
  JUMPOUT(0x22382D1FCLL);
}

void sub_22383CA84(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12)
{
  v17 = 11 * (v12 ^ 0x601);
  *v14 = a1;
  *v13 = a2;
  a11 = v17 - (((&a11 | 0x1C44B8B9) - &a11 + (&a11 & 0xE3BB4740)) ^ 0xFAEC14A9) * v16 + 565;
  a12 = a6;
  (*(v15 + 8 * (v17 ^ 0x10D9)))(&a11);
  JUMPOUT(0x22383CAFCLL);
}

void sub_22383CBA0(uint64_t a1)
{
  v1 = 1785193651 * (a1 ^ 0xF621A42C);
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 12) + v1;
  v5 = (v3 + v1);
  if (v2)
  {
    v6 = v5 == 22378;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22383CC5C(uint64_t a1)
{
  v5 = *(v3 + 344);
  v6 = *(a1 + 4) + v1 + 202130683;
  if (v5 > 0xCD93926F != v6 < 0x326C6D90)
  {
    v7 = v5 > 0xCD93926F;
  }

  else
  {
    v7 = v5 + 845966736 > v6;
  }

  return (*(v2 + 8 * ((!v7 * ((4 * v4) ^ 0x24F8 ^ (v4 + 796498827) & 0xD0865FF7 ^ 0x9FC)) ^ v4)))();
}

uint64_t sub_22383CD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, unsigned int a20, unsigned int a21, uint64_t a22)
{
  v28 = &a17;
  a21 = -1564307779 * ((v28 - 182136797 - 2 * (v28 & 0xF524D023)) ^ 0x62291C30) + 1264667083 * v26 + 1046635743;
  a17 = (1564307779 * ((v28 - 182136797 - 2 * (v28 & 0xF524D023)) ^ 0x62291C30)) ^ 0x963;
  a19 = a12;
  (*(v24 + 32944))(&a17);
  v29 = 742307843 * (&a17 ^ 0x1E228D55);
  a17 = v29 ^ 0x510;
  a19 = v25;
  a20 = v29 ^ ((v22 ^ 0xDFFFEFE6) + 1743445888 + ((2 * v22) & 0xBFFFDFCC));
  a22 = a12;
  (*(v24 + 32976))(&a17);
  v30 = 742307843 * ((2 * (&a17 & 0x9791410) - &a17 + 1988553709) ^ 0x68A466B8);
  a20 = v30 ^ ((v23 ^ 0x57FAFFF7) - 269496465 + ((2 * v23) & 0xAFF5FFEE));
  a17 = v30 ^ 0x510;
  a19 = v27;
  a22 = a12;
  v31 = (*(v24 + 32976))(&a17);
  return (*(v24 + 8 * ((2308 * (a18 == 1423875590)) ^ 0x714u)))(v31);
}

uint64_t sub_22383CF98()
{
  v4 = 19 * ((v0 + 847) ^ 0x722);
  v9 = v6;
  v8 = v0 + 847 - ((2 * (&v8 & 0x228AB868) - &v8 - 579516525) ^ 0x3BDDEB83) * v1 - 1049;
  (*(v2 + 8 * ((v0 + 847) ^ 0x1717)))(&v8);
  v9 = v7;
  v8 = v4 - ((((2 * &v8) | 0xFE221D9E) - &v8 - 2131824335) ^ 0x99B9A2DF) * v1 - 385;
  (*(v2 + 8 * (v4 + 2945)))(&v8);
  return (v3 - 1423875590);
}

uint64_t sub_22383D110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = v8 - v10;
  if (v9 > v12)
  {
    v12 = v9;
  }

  return (*(v11 + 8 * ((28 * (v12 > ((((a8 ^ 0x323) - 662) | 0x80D) ^ 0x7FFFF1C3u))) ^ a8 ^ 0x323)))(a1, a2, a3, a4, 0);
}

uint64_t sub_22383D194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, int a14, int a15)
{
  v19 = 1564307779 * (&a12 ^ 0x970DCC13);
  a12 = ((v17 ^ 0x7AC) + 935) ^ v19;
  a15 = 1264667083 * v15 - v19 + 1046635743;
  a13 = a10;
  v20 = (*(v16 + 8 * ((v17 ^ 0x7ACu) + 2650)))(&a12);
  return (*(v16 + 8 * ((2366 * (a14 == (((v17 ^ 0x7AC) - 929) ^ (v18 - 489)))) ^ v17 ^ 0x7ACu)))(v20);
}

uint64_t sub_22383D25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, char *a16, int a17)
{
  a15 = (50899313 * ((-647181690 - (&a15 | 0xD96CCA86) + (&a15 | 0x26933579)) ^ 0xC581F03)) ^ 0xF11;
  a16 = &a10;
  v19 = (*(v17 + 32872))(&a15);
  return (*(v17 + 8 * ((3480 * (a17 == 1423875590)) ^ v18)))(v19);
}

uint64_t sub_22383D35C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v6 = a1;
  *v7 = v2;
  v4 = (a2 + 286) ^ 0xCD;
  v11 = v9;
  v10 = a2 + 286 - 143681137 * ((((2 * &v10) | 0x25966B22) - &v10 + 1832176239) ^ 0x74639981) + 77;
  (*(v3 + 8 * ((a2 + 286) ^ 0x12B1)))(&v10);
  v11 = v8;
  v10 = v4 - 143681137 * ((&v10 & 0x1DE9800C | ~(&v10 | 0x1DE9800C)) ^ 0x4BED3E3) + 146;
  (*(v3 + 8 * (v4 + 3476)))(&v10);
  return 0;
}

uint64_t sub_22383D368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = v8 - 1;
  *(a6 + v12) = *(v7 + v12);
  return (*(v11 + 8 * ((v10 + v9 + 2048) ^ (2 * (((v9 - v6 + 13) ^ (v12 == 0)) & 1)))))();
}

uint64_t sub_22383D3A0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (a6 + v7 - 16);
  v12 = (v6 + v7 - 16);
  v13 = *v12;
  *(v11 - 1) = *(v12 - 1);
  *v11 = v13;
  return (*(v10 + 8 * ((((v7 & 0xFFFFFFE0) == 32) * ((v8 ^ a1) - 28)) ^ (v9 + v8 + 2421))))();
}

uint64_t sub_22383D3E8@<X0>(int a1@<W8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(v1 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((v3 - 1745397481) & 0xB5726FD7 ^ 0x71C)) ^ (a1 + v3 + 841))))();
}

uint64_t sub_22383D434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (a1 + v3 - 16);
  v7 = (a2 + v3 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * ((58 * ((((v3 & 0xFFFFFFE0) == 32) ^ (v4 - 52)) & 1)) ^ (v2 + v4 + 1458))))();
}

uint64_t sub_22383D50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int32x4_t a39, int32x4_t a40, int32x4_t a41, int32x4_t a42)
{
  v130 = a2 + a13;
  v49.n128_u64[0] = 0x5050505050505050;
  v49.n128_u64[1] = 0x5050505050505050;
  v50 = vdupq_n_s32(0xEF13C7DE);
  v51 = vdupq_n_s32(0xF789E3EF);
  HIDWORD(a17) = 2098538;
  v52.n128_u64[0] = 0xA0A0A0A0A0A0A0A0;
  v52.n128_u64[1] = 0xA0A0A0A0A0A0A0A0;
  v53 = HIDWORD(a35);
  v54 = a37;
  v55 = (BYTE4(a38) - ((2 * BYTE4(a38)) & 0x5C) + 48);
  v131 = *(v46 + 8 * (v48 + v42 - 1278));
  if (v55 == 46)
  {
    v133 = vld4q_s8(&a26 + 4);
    v81 = veorq_s8(v133.val[0], v49);
    v82 = vmovl_high_u8(v81);
    v83 = vmovl_u8(*v81.i8);
    v84 = veorq_s8(v133.val[1], v49);
    _Q21 = vmovl_high_u8(v84);
    _Q20 = vmovl_u8(*v84.i8);
    v87 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v88 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v89 = veorq_s8(v133.val[2], v49);
    v90 = vmovl_u8(*v89.i8);
    v91 = vmovl_high_u8(v89);
    v133.val[0] = veorq_s8(v133.val[3], v49);
    v133.val[1] = vmovl_u8(*v133.val[0].i8);
    v133.val[2] = vmovl_u16(*v133.val[1].i8);
    v133.val[0] = vmovl_high_u8(v133.val[0]);
    v133.val[3] = vmovl_u16(*v133.val[0].i8);
    v133.val[0] = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v91, 8uLL)), vshlq_n_s32(vmovl_high_u16(v82), 0x18uLL)), vmovl_high_u16(v133.val[0]));
    v133.val[3] = vorrq_s8(vorrq_s8(vorrq_s8(v88, vshll_n_u16(*v91.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v82.i8), 0x18uLL)), v133.val[3]);
    v133.val[1] = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v90, 8uLL)), vshlq_n_s32(vmovl_high_u16(v83), 0x18uLL)), vmovl_high_u16(v133.val[1]));
    v133.val[2] = vorrq_s8(vorrq_s8(vorrq_s8(v87, vshll_n_u16(*v90.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v83.i8), 0x18uLL)), v133.val[2]);
    a39 = vaddq_s32(vsubq_s32(v133.val[2], vandq_s8(vaddq_s32(v133.val[2], v133.val[2]), v50)), v51);
    a40 = vaddq_s32(vsubq_s32(v133.val[1], vandq_s8(vaddq_s32(v133.val[1], v133.val[1]), v50)), v51);
    a41 = vaddq_s32(vsubq_s32(v133.val[3], vandq_s8(vaddq_s32(v133.val[3], v133.val[3]), v50)), v51);
    a42 = vaddq_s32(vsubq_s32(v133.val[0], vandq_s8(vaddq_s32(v133.val[0], v133.val[0]), v50)), v51);
    *(&a39 + v45 + 1566283166) = __ROR4__(*(&a39 + ((v45 + 364) ^ 0x1B1) + 1566283166) ^ v47 ^ *(&a35 + v45 + 1566283166) ^ *(&a32 + v45 + 1566283166) ^ *(&a31 + v45 + 1566283166), 31) ^ 0x48718E52;
    return (*(v46 + 8 * ((3873 * (v43 == 1566283103)) ^ 0x22A)))(433, v54, v53);
  }

  else if (v55 == 49)
  {
    v132 = vld4q_s8(&a26 + 4);
    v56 = veorq_s8(v132.val[0], v49);
    v57 = vmovl_u8(*v56.i8);
    v58 = vmovl_u16(*v57.i8);
    v59 = vmovl_high_u8(v56);
    v60 = vmovl_u16(*v59.i8);
    v61 = veorq_s8(v132.val[1], v49);
    v62 = vmovl_high_u8(v61);
    v63 = vmovl_u8(*v61.i8);
    v64 = vorrq_s8(vshll_high_n_u16(v62, 8uLL), vmovl_high_u16(v59));
    v65 = vorrq_s8(vshll_n_u16(*v62.i8, 8uLL), v60);
    v66 = vorrq_s8(vshll_high_n_u16(v63, 8uLL), vmovl_high_u16(v57));
    v67 = vorrq_s8(vshll_n_u16(*v63.i8, 8uLL), v58);
    v68 = veorq_s8(v132.val[2], v49);
    _Q21 = vmovl_u8(*v68.i8);
    _Q20 = vmovl_high_u8(v68);
    __asm
    {
      SHLL2           V22.4S, V20.8H, #0x10
      SHLL2           V23.4S, V21.8H, #0x10
    }

    v132.val[0] = veorq_s8(v132.val[3], v49);
    v132.val[1] = vmovl_high_u8(v132.val[0]);
    v132.val[0] = vmovl_u8(*v132.val[0].i8);
    v132.val[2] = vorrq_s8(vorrq_s8(v64, _Q22), vshlq_n_s32(vmovl_high_u16(v132.val[1]), 0x18uLL));
    v132.val[1] = vorrq_s8(vorrq_s8(v65, vshll_n_s16(*_Q20.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v132.val[1].i8), 0x18uLL));
    v132.val[3] = vorrq_s8(vorrq_s8(v66, _Q23), vshlq_n_s32(vmovl_high_u16(v132.val[0]), 0x18uLL));
    v132.val[0] = vorrq_s8(vorrq_s8(v67, vshll_n_s16(*_Q21.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v132.val[0].i8), 0x18uLL));
    a39 = vaddq_s32(vsubq_s32(v132.val[0], vandq_s8(vaddq_s32(v132.val[0], v132.val[0]), v50)), v51);
    a40 = vaddq_s32(vsubq_s32(v132.val[3], vandq_s8(vaddq_s32(v132.val[3], v132.val[3]), v50)), v51);
    a41 = vaddq_s32(vsubq_s32(v132.val[1], vandq_s8(vaddq_s32(v132.val[1], v132.val[1]), v50)), v51);
    a42 = vaddq_s32(vsubq_s32(v132.val[2], vandq_s8(vaddq_s32(v132.val[2], v132.val[2]), v50)), v51);
    v77 = *(off_2836EB410 + v43 + v45 - 28);
    v78 = (((v77 - 23056) ^ 0x73A0) & (2 * ((v77 - 23056) & 0x1CA)) | 0x83200060) ^ (v77 + 553952752) & 0x1CA;
    v79 = (2 * ((v77 + 553952752) ^ 0x6D1B73A0)) & 0x26A ^ 0x22A ^ ((2 * ((v77 + 553952752) ^ 0x6D1B73A0)) ^ 0x440054D4) & ((v77 + 553952752) ^ 0x6D1B73A0);
    HIDWORD(a19) = HIDWORD(a15) - 1813658528;
    return (*(v46 + 16496))(off_2836EB410 - 12, HIDWORD(a36), a37, qword_2836EB200[18], (((4 * v79) ^ 0x4C0081A8) & v79 ^ (4 * v79) & 0xB3E02A68 ^ 0x83802822) & (16 * (v78 ^ (4 * v78) & 0xB3E02A68 ^ ((4 * v78) ^ 0xC000180) & v79 ^ 0x30402A0A)), 2842, 2062, 102, a9, a10, a11, a12, a13, a14, a15, a16, a17, v130, a19, v131, v43 - 16, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }

  else
  {
    v92 = (((HIDWORD(a35) ^ 0x1E0E6658) - 504260184) ^ ((HIDWORD(a35) ^ 0xFDA0DCB1) + 39789391) ^ ((HIDWORD(a35) ^ 0x3C528C37) - 1012042807)) + (((HIDWORD(a35) ^ 0x9C5F80AE) + 1671462738) ^ ((HIDWORD(a35) ^ 0x2E8FA248) - 781165128) ^ ((HIDWORD(a35) ^ 0x6D2C1438) - 1831605304)) - 659964899;
    v93 = (v92 ^ 0xC70CA91F) & (2 * (v92 & 0xE74EB19F)) ^ v92 & 0xE74EB19F;
    v94 = ((2 * (v92 ^ 0x41818821)) ^ 0x4D9E737C) & (v92 ^ 0x41818821) ^ (2 * (v92 ^ 0x41818821)) & 0xA6CF39BE;
    v95 = v94 ^ 0xA2410882;
    v96 = (v94 ^ 0x40E003C) & (4 * v93) ^ v93;
    v97 = ((4 * v95) ^ 0x9B3CE6F8) & v95 ^ (4 * v95) & 0xA6CF39BC;
    v98 = (v97 ^ 0x820C20B6) & (16 * v96) ^ v96;
    v99 = ((16 * (v97 ^ 0x24C31906)) ^ 0x6CF39BE0) & (v97 ^ 0x24C31906) ^ (16 * (v97 ^ 0x24C31906)) & 0xA6CF39B0;
    v100 = v98 ^ 0xA6CF39BE ^ (v99 ^ 0x24C3191E) & (v98 << 8);
    v101 = v92 ^ (2 * ((v100 << 16) & 0x26CF0000 ^ v100 ^ ((v100 << 16) ^ 0x39BE0000) & (((v99 ^ 0x820C201E) << 8) & 0x26CF0000 ^ 0x20C60000 ^ (((v99 ^ 0x820C201E) << 8) ^ 0x4F390000) & (v99 ^ 0x820C201E))));
    v102 = (((a36 ^ 0x5417BAD5) - 1410841301) ^ ((a36 ^ 0xD19D0778) + 778238088) ^ ((a36 ^ 0x5A768B73) - 1517718387)) + (((a36 ^ 0x84EE18A0) + 2064770912) ^ ((a36 ^ 0x8E77B0C9) + 1904758583) ^ ((a36 ^ 0xD5659EB7) + 714760521)) + 123346116;
    v103 = (v102 ^ 0x3C1F5AF8) & (2 * (v102 & 0xB89E50F8)) ^ v102 & 0xB89E50F8;
    v104 = ((2 * (v102 ^ 0x5D077B68)) ^ 0xCB325720) & (v102 ^ 0x5D077B68) ^ (2 * (v102 ^ 0x5D077B68)) & 0xE5992B90;
    v105 = v104 ^ 0x24892890;
    v106 = (v104 ^ 0xC0100300) & (4 * v103) ^ v103;
    v107 = ((4 * v105) ^ 0x9664AE40) & v105 ^ (4 * v105) & 0xE5992B90;
    v108 = v106 ^ 0xE5992B90 ^ (v107 ^ 0x84002A00) & (16 * v106);
    v109 = (16 * (v107 ^ 0x61990190)) & 0xE5992B90 ^ 0xA4090290 ^ ((16 * (v107 ^ 0x61990190)) ^ 0x5992B900) & (v107 ^ 0x61990190);
    v110 = (v108 << 8) & 0xE5992B00 ^ v108 ^ ((v108 << 8) ^ 0x992B9000) & v109;
    HIDWORD(a35) = v101 ^ 0x3430F43D;
    LODWORD(a36) = v102 ^ (2 * ((v110 << 16) & 0x65990000 ^ v110 ^ ((v110 << 16) ^ 0x2B900000) & ((v109 << 8) & 0x65990000 ^ 0x64900000 ^ ((v109 << 8) ^ 0x992B0000) & v109))) ^ 0xED623106;
    v111 = (((HIDWORD(a36) ^ 0xE5B1AD4A) + 441340598) ^ ((HIDWORD(a36) ^ 0x10B27502) - 280130818) ^ ((HIDWORD(a36) ^ 0x2AFFEE96) - 721415830)) + (((HIDWORD(a36) ^ 0xF013C638) + 267139528) ^ ((HIDWORD(a36) ^ 0xD1C4AADC) + 775640356) ^ ((HIDWORD(a36) ^ 0xFE2B5A3A) + 30713286)) + 647327446;
    v112 = (v111 ^ 0x914AFEC7) & (2 * (v111 & 0x9962FEE6)) ^ v111 & 0x9962FEE6;
    v113 = ((2 * (v111 ^ 0xB10B4747)) ^ 0x50D37342) & (v111 ^ 0xB10B4747) ^ (2 * (v111 ^ 0xB10B4747)) & v44;
    v114 = v113 ^ 0x282888A1;
    v115 = (v113 ^ 0x13100) & (4 * v112) ^ v112;
    v116 = ((4 * v114) ^ 0xA1A6E684) & v114 ^ (4 * v114) & v44;
    v117 = (v116 ^ 0x2020A080) & (16 * v115) ^ v115;
    v118 = ((16 * (v116 ^ 0x8491921)) ^ 0x869B9A10) & (v116 ^ 0x8491921) ^ (16 * (v116 ^ 0x8491921)) & v44;
    v119 = v117 ^ (v44 + 1) ^ (v118 ^ 0x99800) & (v117 << 8);
    v120 = v111 ^ (2 * ((v119 << 16) & 0x28690000 ^ v119 ^ ((v119 << 16) ^ 0x39A10000) & (((v118 ^ 0x286021A1) << 8) & 0x28690000 ^ (((v118 ^ 0x286021A1) << 8) ^ 0x69B90000) & (v118 ^ 0x286021A1) ^ 0x400000)));
    v121 = (((a37 ^ 0xA446B76E) + 1538869394) ^ ((a37 ^ 0x6D31BA3F) - 1831975487) ^ ((a37 ^ 0x168B3B8F) - 378223503)) + (((a37 ^ 0xF81192D2) + 133066030) ^ ((a37 ^ 0xF450DBF5) + 196027403) ^ ((a37 ^ 0xD3BD7FF9) + 742555655)) - 123054310;
    v122 = v121 & 0xC74E16A2 ^ 0x1EEE46C6 ^ (v121 ^ 0xD72C5420) & (2 * (v121 & 0xC74E16A2));
    v123 = ((2 * (v121 ^ 0xD9A05064)) ^ 0x3DDC8D8C) & (v121 ^ 0xD9A05064) ^ (2 * (v121 ^ 0xD9A05064)) & 0x1EEE46C6;
    v124 = v123 & 0xD01DB428 ^ v122 ^ ((4 * v122) ^ 0xABA4AF30) & (v123 ^ 0x1CCC0486);
    v125 = ((4 * v123) ^ 0xA32DA638) & (v123 ^ 0x1CCC0486) ^ v123 & 0xD01DB428;
    v126 = v125 & 0xD01DB428 ^ v124 ^ ((16 * v124) ^ 0x3E399848) & (v125 ^ 0x100C0406);
    v127 = ((16 * v125) ^ 0xD0DDF428) & (v125 ^ 0x100C0406) ^ v125 & 0xD01DB428;
    v128 = v126 ^ v127 & 0xD01DB428 ^ ((v126 << 8) ^ 0x3E5B7228) & (v127 ^ 0x100C04C6);
    v129 = ((v127 << 8) ^ 0xDC19B428) & (v127 ^ 0x100C04C6) ^ v127 & 0xD01DB428;
    HIDWORD(a36) = v120 ^ 0x460FBB7A;
    LODWORD(a37) = v121 ^ (2 * (v128 ^ v129 & 0x501DB428 ^ ((v128 << 16) ^ 0x92DBB428) & (v129 ^ 0xEE20000) ^ ((v128 << 16) ^ 0x92DBB428) & 0x1EEE0400)) ^ 0x256EADF0;
    return v131(v49, v50, v51, v52);
  }
}

uint64_t sub_22383D57C(int a1)
{
  v7 = v4 - 1;
  *(v5 + v7) ^= *(v1 + (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v3 + 5) ^ 0x50;
  return (*(v6 + 8 * ((47 * (v7 == 0)) ^ (a1 + 1513))))();
}

uint64_t sub_22383D5E0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * (((a2 + v4 + 55) | 0x284) ^ 0xC7)) ^ (a2 + v4 + 853))))();
}

void NuRl2rYpg6zLtnsguhi3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D830) ^ 0x74)) ^ byte_2238FA560[byte_223907C60[(-33 * ((qword_27D09D558 + dword_27D09D830) ^ 0x74))] ^ 0x37]) - 107];
  v1 = off_2836EB6D8;
  v2 = off_2836EB658 - 4;
  v3 = qword_2836EB200[(*(off_2836EB658 + (*(off_2836EB6D8 + (-33 * (*v0 ^ qword_27D09D558 ^ 0x74))) ^ 0xD0u) - 4) ^ (-33 * (*v0 ^ qword_27D09D558 ^ 0x74))) - 180];
  v4 = &v6[*v0 + *v3];
  *v0 = 1321670111 * (v4 - 0x448BD34F94FDFB74);
  *v3 = 1321670111 * (v4 ^ 0x448BD34F94FDFB74);
  v7[1] = (1037613739 * (((v7 | 0x7EE557B0) - (v7 & 0x7EE557B0)) ^ 0xAFE77ACF)) ^ 0x86F54BA0;
  LOBYTE(v3) = -33 * (*v0 ^ 0x74 ^ *v3);
  v5 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D830) ^ 0x74)) ^ byte_2238FD9F0[byte_2238FA860[(-33 * ((qword_27D09D558 + dword_27D09D830) ^ 0x74))] ^ 0xBB]) - 25];
  (*(v5 + 8 * ((v3 ^ v2[v1[v3] ^ 0xD0]) + 3881)))(v7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22383DA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  LODWORD(STACK[0x38C]) = 0;
  v61 = v54 - 1079;
  LODWORD(STACK[0x254]) = 1329255505;
  STACK[0x3A8] = STACK[0x258];
  LODWORD(STACK[0x37C]) = (LODWORD(STACK[0x464]) ^ 0x6FFEDB3F) - 1077198861 + ((2 * LODWORD(STACK[0x464])) & 0xDFFDB67E);
  STACK[0x310] = v56;
  STACK[0x318] = v57;
  v62 = &STACK[0x530] + v55;
  STACK[0x2A0] = &STACK[0x530] + v55;
  STACK[0x240] = &STACK[0x530] + v55 + 128;
  *v62 = 0x6370646600;
  v62[8] = 1;
  v63 = 6 * (v54 ^ 0x482u);
  v64 = &STACK[0x530] + v55 + 1712;
  LODWORD(a32) = 21 * (a7 ^ 0x422);
  LODWORD(a31) = a7 ^ 0x1468;
  LODWORD(a54) = a7 + 1952778141;
  LODWORD(a49) = a7 ^ 0x479;
  LODWORD(a47) = a7 ^ 0x4C8;
  return (*(v59 + 8 * ((((v63 + 503302707) & 0xE20032F5) + 531) ^ 0x412 ^ v63)))(a1, 119, ~(16 * v64) & 0x10, 1186409911, a5, a6, a7, 503302707, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, *(v59 + 8 * v61), a22, a23, a24, a25, a26, a27, a28, &STACK[0x530] + v55 + 128, v55 + 1712, a31, a32, &STACK[0x2F4] % 0x25 + v63 - 1292, &STACK[0x530] + v55 + 9, a35, (50899313 * ((((2 * (v58 - 192)) | 0xE9E4C1D4A3382642) - (v58 - 192) + 0xB0D9F15AE63ECDFLL) ^ 0x47F9170C7B57395BLL)) ^ 0x13FF, 50899313 * ((((2 * (v58 - 192)) | 0xE9E4C1D4A3382642) - (v58 - 192) + 0xB0D9F15AE63ECDFLL) ^ 0x47F9170C7B57395BLL), 1504884919 * ((((v58 - 192) | 0x697449EA11BFCB86) - (v58 - 192) + ((v58 - 192) & 0x968BB615EE403478)) ^ 0x45241350EA7C7C9DLL), v64, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, (a7 + 610376532), a52, a53, a54, qword_2836EB200[(v63 ^ 0x592)], qword_2836EB200[v63 - 1253] - 4);
}

uint64_t sub_22383DA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x320];
  v6 = (LODWORD(STACK[0x40C]) ^ 0x55FFB36F18FEF5EFLL) + ((2 * LODWORD(STACK[0x40C])) & 0x31FDEBDE) + ((v4 + 397904035) & 0xE8487B5D ^ 0xAA004C90E7010140);
  STACK[0x3D8] = v6;
  return (*(a4 + 8 * ((218 * (((v4 - 57) ^ (v6 == 0)) & 1)) ^ v4)))(a1, v5);
}

uint64_t sub_22383DAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  *(*(a14 + 96) + 504) = v37 + 1;
  *(*(a14 + 96) + 496) = a16 - 1;
  v40 = 843532609 * (((v39 - 160) & 0x3C9F43F4 | ~((v39 - 160) | 0x3C9F43F4)) ^ 0x9F2DE88E);
  *(v39 - 148) = 1180578074 - v40;
  *(v39 - 144) = v40 - 875954088;
  *(v39 - 160) = &a28;
  v41 = (*(v38 + 32920))(v39 - 160);
  return (*(v38 + 8 * ((939 * (a16 - 801774451 + (a37 & 0x3Fu) >= 0xFFFFFFC0)) ^ 0x9EDu)))(v41);
}

uint64_t sub_22383DC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = ((a8 + 600) ^ (v8 - 2525)) - v10;
  if (v9 > v12)
  {
    v12 = v9;
  }

  return (*(v11 + 8 * ((((v12 + 1) < 0x24) * (a8 ^ 0xC0A)) ^ a8)))(a1, a2, a3, a4, 0);
}

void sub_22383DD08(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && *(a1 + 32) != 0;
  v1 = *(a1 + 8) + 1564307779 * ((~a1 & 0x3E4CD371 | a1 & 0xC1B32C8E) ^ 0xA9411F62);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_22383DE64(uint64_t a1)
{
  v6 = (v1 - 95343951) & 0x5AECFCF;
  *v3 = a1;
  *v2 = v11;
  v7 = ((v6 ^ 0x152) - 1741) | 0x201;
  v12 = (v6 ^ 0x152) - ((((&v12 | 0x8DE6A06) ^ 0xFFFFFFFE) - (~&v12 | 0xF72195F9)) ^ 0x118939E9) * v5 - 985;
  v13 = v9;
  (*(v4 + 8 * (v6 ^ 0x1785)))(&v12);
  v12 = v7 - (((&v12 | 0xB88559F5) - (&v12 & 0xB88559F5)) ^ 0x5E2DF5E5) * v5 + 243;
  v13 = v10;
  (*(v4 + 8 * (v7 ^ 0x121B)))(&v12);
  return 0;
}

uint64_t sub_22383E054(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_22383E0D8()
{
  if (v2)
  {
    v3 = v0 == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  return (*(v1 + 8 * ((69 * v4) ^ 0xD83u)))();
}

uint64_t sub_22383E440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v19 = a17 - 528399629;
  if (a17 - 528399629 < 0)
  {
    v19 = 528399629 - a17;
  }

  return (*(v17 + 8 * ((3175 * ((444 * (v18 ^ 0x569) + ((444 * (v18 ^ 0x569)) ^ v19 ^ 0x5F7EBA6B) + ((2 * v19) & 0xBEFD7EBE) - 1602143380) >= 0)) ^ (444 * (v18 ^ 0x569)))))();
}

uint64_t sub_22383E534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v19 = v16 + 1200738203 < a16 + 398963816;
  if ((a16 + 398963816) < 0x4791CF9B != v16 > v18 - 1200740652)
  {
    v19 = (a16 + 398963816) < 0x4791CF9B;
  }

  return (*(v17 + 8 * ((7 * !v19) | v18)))();
}

uint64_t sub_22383E618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, unsigned int a17, char *a18, int a19)
{
  a17 = (50899313 * (((&a17 | 0x63DB95F6) - &a17 + (&a17 & 0x9C246A08)) ^ 0x4910BF8C)) ^ 0xF11;
  a18 = &a14;
  v22 = (*(v19 + 32872))(&a17);
  return (*(v19 + 8 * ((29 * (a19 == v21)) ^ v20)))(v22);
}

uint64_t sub_22383E6A0()
{
  v4 = (v2 - 1792107237) & 0xD15F5A;
  v16 = (v2 - 380) ^ (843532609 * ((2 * (&v13 & 0x2701F598) - &v13 - 654439838) ^ 0x84B35EE7));
  v13 = v11;
  v15 = &v10;
  (*(v0 + 8 * (v2 + 802)))(&v13);
  v14 = v11;
  LODWORD(v13) = (v2 - 686) ^ (1504884919 * ((&v13 + 1631659689 - 2 * (&v13 & 0x614126A9)) ^ 0x9A8291B2));
  (*(v0 + 8 * (v2 + 813)))(&v13);
  if (HIDWORD(v13) == v1)
  {
    v5 = -671179073;
  }

  else
  {
    v5 = 2111741655;
  }

  if (HIDWORD(v13) == v1)
  {
    v6 = -1342358146;
  }

  else
  {
    v6 = -71483986;
  }

  if (HIDWORD(v13) == v1)
  {
    v7 = 2095054663;
  }

  else
  {
    v7 = -687866065;
  }

  v8 = (v5 ^ v10) + v7 + ((v10 << ((v2 + 27) & 0x5A ^ 0x41)) & v6);
  v14 = v11;
  LODWORD(v13) = v2 - (&v13 ^ 0xE6A8AC10) * v3 - 2500;
  (*(v0 + 8 * (v2 + 830)))(&v13);
  v14 = v12;
  LODWORD(v13) = v4 - ((((2 * &v13) | 0x914A8396) - &v13 + 928693813) ^ 0x2E0DEDDB) * v3 - 1594;
  (*(v0 + 8 * (v4 ^ 0x1948u)))(&v13);
  return (v8 - 1423875590);
}

uint64_t sub_22383E924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10, int a11, char a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, _BYTE *a18, char *a19, char *a20, _BYTE *a21, char *a22)
{
  LODWORD(a20) = v22 + 1037613739 * (&a18 ^ 0xD1022D7F) + 1121;
  a19 = &a17;
  a21 = a10;
  a22 = &a15;
  (*(v23 + 8 * (v22 + 2178)))(&a18);
  LODWORD(a21) = (v22 + 961) ^ (843532609 * ((((&a18 | 0x89A366E0) ^ 0xFFFFFFFE) - (~&a18 | 0x765C991F)) ^ 0x2A11CD9A));
  a20 = &a12;
  a18 = a10;
  (*(v23 + 8 * (v22 + 2143)))(&a18);
  a19 = a10;
  LODWORD(a18) = (v22 + 655) ^ (1504884919 * ((((&a18 | 0x61F62074) ^ 0xFFFFFFFE) - (~&a18 | 0x9E09DF8B)) ^ 0x65CA6890));
  v24 = (*(v23 + 8 * (v22 + 2154)))(&a18);
  return (*(v23 + 8 * (((HIDWORD(a18) == 1423875590) * ((v22 - 174) ^ 0xA5E)) ^ v22)))(v24);
}

uint64_t sub_22383ED30()
{
  v4 = -1980698714 - v0;
  if ((64 - v2) >> 32)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= 64 - v2;
  }

  v6 = v5;
  return (*(v3 + 8 * (((((v1 - 1047) | 0x121) ^ 0x77D) * v6) ^ v1)))();
}

uint64_t sub_22383ED84()
{
  v4 = (v0 ^ 0x706) - 1246;
  *(*(v2 + 96) + 1428) = 32;
  v5 = 843532609 * ((v3 - 964623791 - 2 * ((v3 - 120) & 0xC68102C9)) ^ 0x9ACC564C);
  v7 = (v0 ^ 6) + 73;
  *(v3 - 108) = 1180578075 - v5;
  *(v3 - 104) = v5 + v4 - 875954560;
  *(v3 - 120) = v3 - 220;
  (*(v1 + 8 * ((v0 ^ 0x706) + 2397)))(v3 - 120);
  return (*(v1 + 8 * (v4 ^ (2 * (((v4 + v7) ^ (*v2 - 1814522937 + (*(v3 - 152) & 0x3Fu) < 0xFFFFFFC0)) & 1)))))(8389507);
}

uint64_t sub_22383F5A0@<X0>(uint64_t a1@<X8>)
{
  v9 = v3 ^ 0xEB9;
  v10 = (v9 ^ 0xD83 ^ (v4 - 1517) ^ *(*(v7 + 8) + 4 * v2)) + v1;
  *(*(a1 + 8) + 4 * v2) = v10 + v4 - (v5 & (2 * v10));
  return (*(v6 + 8 * ((2094 * (v2 + 1 == v8)) ^ v9)))();
}

uint64_t sub_22383F60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, unint64_t a30, uint64_t a31, uint64_t a32, _DWORD *a33)
{
  *a33 = 0;
  v36 = (((v34 >> ((111 - v33) ^ 0x85)) ^ v34) << 7) & 0x9D2C5680 ^ (v34 >> ((111 - v33) ^ 0x85)) ^ v34;
  *(*a29 + a30) ^= (v36 << 15) & 0xEFC60000 ^ v36 ^ (((v36 << 15) & 0xEFC60000 ^ v36) >> 18);
  return (*(v35 + 8 * ((229 * (a30 < 0x1FC)) ^ 0xA45u)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22383F650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF79ALL ^ (v4 + 1923)) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((2471 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_22383F6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  a21 = (1037613739 * (&a20 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  v22 = (*(v21 + 32816))(&a20);
  return (*(v21 + 8 * ((2967 * (a20 == 1423875590)) ^ 0x776u)))(v22);
}

uint64_t sub_22383F8A8()
{
  v4 = (v0 + 134883831) | 0x45340D90;
  v9 = v3 + v4 - (&v9 ^ 0xE6A8AC10) * v1;
  v10 = v8;
  (*(v2 + 8 * (v3 + v4 + 3330)))(&v9);
  v10 = v7;
  v9 = v3 + v4 - (((&v9 | 0x4AD8BF97) - &v9 + (&v9 & 0xB5274068)) ^ 0xAC701387) * v1;
  (*(v2 + 8 * (v3 + v4 + 3330)))(&v9);
  return (v6 ^ 0xF6DE9F56) + 1577057968 + ((v4 - 1602289930) & (2 * v6)) - 1423875590;
}

uint64_t sub_22383F8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18)
{
  a18 = *(*(v18 + 8 * (v21 ^ 0x19A)) - 4);
  a17 = v21 + 1564307779 * ((((2 * &a17) | 0x39042CCA) - &a17 - 478287461) ^ 0x8B8FDA76) - 30;
  v22 = (*(v19 + 8 * (v21 + 3741)))(&a17);
  return (*(v19 + 8 * (((*v20 == 4) * ((v21 ^ 0x86E) - 506)) ^ v21)))(v22);
}

uint64_t sub_22383F990(int a1, uint64_t a2, uint64_t a3)
{
  v16.val[1].i64[0] = (v7 + 13) & 0xF;
  v16.val[1].i64[1] = (v7 + 12) & 0xF;
  v16.val[2].i64[0] = (v7 + 11) & 0xF;
  v16.val[2].i64[1] = (v7 + 10) & 0xF;
  v16.val[3].i64[0] = (v7 + 9) & 0xF;
  v16.val[3].i64[1] = v8 & 0xF ^ 0xDLL;
  v17.val[0].i64[0] = (v7 + 7) & 0xF;
  v17.val[0].i64[1] = (v7 + 6) & 0xF;
  v17.val[1].i64[0] = (v7 + 5) & 0xF;
  v17.val[1].i64[1] = (v7 + 4) & 0xF;
  v17.val[2].i64[0] = (v7 + 3) & 0xF;
  v17.val[2].i64[1] = (v7 + 2) & 0xF;
  v17.val[3].i64[0] = (v7 + 1) & 0xF;
  v17.val[3].i64[1] = v7 & 0xF;
  v11 = *(v10 - 136);
  v12 = vqtbl4q_s8(v17, xmmword_223907EE0).u64[0];
  v13.i64[0] = 0xCFCFCFCFCFCFCFCFLL;
  v13.i64[1] = 0xCFCFCFCFCFCFCFCFLL;
  v14.i64[0] = 0x5050505050505050;
  v14.i64[1] = 0x5050505050505050;
  v16.val[0].i64[0] = (a3 - 1) & 0xF;
  v16.val[0].i64[1] = (v7 + 14) & 0xF;
  v17.val[3].i64[0] = vqtbl4q_s8(v16, xmmword_223907EE0).u64[0];
  v17.val[3].i64[1] = v12;
  v17.val[0] = vrev64q_s8(veorq_s8(veorq_s8(veorq_s8(*(v3 + a3), *(v5 + v16.val[0].i64[0] - 15)), *(v4 + v16.val[0].i64[0] - 15)), *(v6 + ((a1 + 1815000583) & 0x93D14FD9 ^ 0xFDCLL) + v16.val[0].i64[0] - 15)));
  v17.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v17.val[0], v17.val[0], 8uLL), v14), vmulq_s8(v17.val[3], v13)));
  *(v9 + a3) = vextq_s8(v17.val[0], v17.val[0], 8uLL);
  return (*(v11 + 8 * ((14 * ((v7 & 0x10) == 16)) ^ a1)))();
}

uint64_t sub_22383FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unint64_t a59, unint64_t a60)
{
  STACK[0x238] = a60;
  STACK[0x2B0] = a59;
  return a21();
}

uint64_t sub_22383FB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  v42 = 1785193651 * ((((2 * (v41 - 168)) | 0xCDAD4E78) - (v41 - 168) - 1725343548) ^ 0x90F70310);
  *(v41 - 168) = a2;
  *(v41 - 160) = v42 + v40 + 334;
  *(v41 - 156) = a18 - v42;
  v43 = (*(v39 + 8 * (v40 + 4081)))(v41 - 168);
  v44 = ((a39 & 0x3F ^ 0xE8554993) + 1216758941) ^ ((a39 & 0x3F ^ 0x6AB80CC9) - 898956857) ^ ((v40 ^ 0x865) + 574504988 + (a39 & 0x3F ^ 0x82ED455A));
  *(&a30 + v44 + 1596781296) = -48;
  return (*(v39 + 8 * ((3955 * (v44 + 1596781240 < 0xFFFFFFC8)) ^ v40)))(v43);
}

void nXJ7Amk1zyK93(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_22383FD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  v19 = v18 ^ (v16 + 830);
  a16 = (v18 - 2030745381) ^ (1037613739 * ((((2 * &a15) | 0x9CE36A6) - &a15 - 82254675) ^ 0xD5E5362C));
  v20 = (*(v17 + 8 * (v18 + 3393)))(&a15);
  return (*(v17 + 8 * (((a15 == 1423875590) * (v19 - 927740909)) ^ v18)))(v20);
}

uint64_t sub_22383FEC8@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x1328u));

  return v3(v1);
}

uint64_t sub_22383FF00(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = (v9 - 667726323) & 0xE1A82FFE;
  v11 = 56 - v7 < ((a7 + v10 + 2698) | a4) - 1176798682;
  return (*(v8 + 8 * (((4 * (((33 * ((v9 + 13) & 0xFE ^ 0xE7)) ^ v11) & 1)) & 0xF7 | (8 * (((33 * ((v9 + 13) & 0xFE ^ 0xE7)) ^ v11) & 1))) ^ v10)))();
}

uint64_t sub_22383FF74(int a1, int8x16_t a2, int8x16_t a3)
{
  v9 = (v5 - 32);
  v10 = (v6 - 32);
  v11 = vaddq_s8(vsubq_s8(*v10, vandq_s8(vaddq_s8(*v10, *v10), a2)), a3);
  *v9 = vaddq_s8(vsubq_s8(v10[-1], vandq_s8(vaddq_s8(v10[-1], v10[-1]), a2)), a3);
  v9[1] = v11;
  return (*(v8 + 8 * (((v3 != v7 + 32) * a1) ^ v4)))();
}

uint64_t sub_22383FF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, char a15, _BYTE *a16, char a17, __int16 a18, char a19, _BYTE *a20, char *a21, char *a22, _BYTE *a23, char *a24)
{
  LODWORD(a22) = v24 + ((&a20 & 0xA798372C | ~(&a20 | 0xA798372C)) ^ 0x8965E5AC) * v27 + 1046;
  a21 = &a15;
  a23 = a16;
  a24 = &a13;
  (*(v25 + 8 * (v24 ^ 0x17D7)))(&a20);
  LODWORD(a23) = (v24 + 886) ^ (843532609 * ((&a20 & 0xFD9660E8 | ~(&a20 | 0xFD9660E8)) ^ 0x5E24CB92));
  a20 = a16;
  a22 = &a19;
  (*(v25 + 8 * (v24 + 2068)))(&a20);
  LODWORD(a23) = (v24 + 886) ^ (843532609 * ((2 * (&a20 & 0x77067CF0) - &a20 + 150569741) ^ 0x54B4D788));
  a22 = &a17;
  a20 = a16;
  (*(v25 + 8 * (v24 ^ 0x834)))(&a20);
  a21 = a16;
  LODWORD(a20) = (v24 + 580) ^ (1504884919 * (((&a20 ^ 0x314D1A2A | 0x5C21E344) - (&a20 ^ 0x314D1A2A) + ((&a20 ^ 0x314D1A2A) & 0xA3DE1CBA)) ^ 0x96AF4E75));
  v28 = (*(v25 + 8 * (v24 + 2079)))(&a20);
  return (*(v25 + 8 * (((HIDWORD(a20) == v26 + v24 - 1535 - 473) * (v24 + 1479)) ^ v24)))(v28);
}

uint64_t sub_223840148(__n128 a1, uint64_t a2, int a3, uint64_t a4, __n128 *a5)
{
  a5[-1] = a1;
  *a5 = a1;
  return (*(v6 + 8 * (((a4 == 0) * a3) ^ v5)))();
}

uint64_t sub_2238402C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = a6 & 0xFFFFFFF8;
  v17 = *(v15 + 8 * (((v16 == 8) * (v14 - 2010)) ^ (v14 + 425)));
  return v17(a1, a2, a3, a4, v16, a6, 8, v17, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_223840554(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = a3 - 1;
  *(v8 + v10) = *(v4 + v10) ^ *(v6 + (v10 & 0xF)) ^ *(v5 + (v10 & 0xF)) ^ (-49 * (v10 & 0xF)) ^ *((v10 & 0xF) + v7 + 4) ^ 0x50;
  v11 = v10 == ((a4 - 477) ^ 0x901);
  return (*(v9 + 8 * (((8 * v11) | (16 * v11)) ^ (a4 - 666))))();
}

uint64_t sub_223840660()
{
  if (v0)
  {
    v3 = ((2 * v1) & 0x7BBA5FFC) - 671351140 + (v1 ^ 0x3DDD2FFE) == 366554778;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((234 * v4) ^ 0xC77u)))();
}

void sub_223840728(uint64_t a1)
{
  v1 = *(a1 + 20) + 1785193651 * (((a1 | 0xB588AC7F) - a1 + (a1 & 0x4A775380)) ^ 0x43A90853);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_223840804(int a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v12 = *(v9 + 8);
  v13 = *(v12 + 4 * v11 - 4) ^ v6;
  *(v12 + 4 * (a5 - 1)) = ((v13 >> v8) & a4 | ((v7 + a1) ^ a6) & ~(v13 >> v8)) ^ (a1 + 1367);
  return (*(v10 + 8 * (a2 | (16 * (v11 > 1)))))();
}

uint64_t sub_22384080C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + ((v3 - 696052671) & 0x297CEBF7) - 2292;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((742 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_223840850@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X7>, int a3@<W8>)
{
  *v4 = a1;
  *a2 = a3;
  v7 = v3 + 989;
  v12 = v10;
  v11 = v3 - 674 - 143681137 * (((&v11 | 0x689083AE) - (&v11 & 0x689083AE)) ^ 0x8E382FBE) + 47;
  (*(v5 + 8 * (v3 + 2703)))(&v11);
  v12 = v9;
  v11 = v7 - 143681137 * ((&v11 - 944082548 - 2 * (&v11 & 0xC7BA718C)) ^ 0x2112DD9C) - 1616;
  (*(v5 + 8 * (v7 ^ 0x195E)))(&v11);
  return (v6 - 1423875590);
}

uint64_t sub_223840964@<X0>(int a1@<W3>, int a2@<W8>)
{
  v5 = *(v4 + 48 * v2 + 36);
  v7 = v5 != 35963660 && (v5 + a1) < 0x80000003;
  return (*(v3 + 8 * ((v7 * (((a2 + 1752) ^ 0xD98) + ((a2 + 1752) | 0x221) - 3908)) ^ a2)))();
}

void sub_2238409BC(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (143681137 * ((-751875376 - (a1 ^ 0x54F4C255 | 0xD32F4AD0) + (a1 ^ 0x54F4C255 | 0x2CD0B52F)) ^ 0x9E8CDB6A));
  __asm { BRAA            X10, X17 }
}

void sub_223840A90(uint64_t a1)
{
  v1 = *(a1 + 8) + 210068311 * ((a1 + 1653781142 - 2 * (a1 & 0x6292B296)) ^ 0x35FD2841);
  v2 = qword_2836EB200[v1 - 807];
  v3 = *a1;
  (*(v2 + 8 * (v1 ^ 0xCF9)))(qword_2836EB200[v1 ^ 0x34C] - 12, sub_22388468C);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_223840BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  a15 = (1037613739 * (&a14 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  v16 = (*(v15 + 32816))(&a14);
  return (*(v15 + 8 * ((92 * (a14 == 1423875590)) ^ 0x1B7u)))(v16);
}

uint64_t sub_223840CC0()
{
  v8 = v6;
  v7 = v0 - (((&v7 | 0xB6438F7D) - (&v7 & 0xB6438F7D)) ^ 0x50EB236D) * v2 - 1125;
  (*(v1 + 8 * (v0 ^ 0x1763)))(&v7);
  v8 = v5;
  v7 = v0 - 1326 - ((2 * (&v7 & 0x6A0D4290) - &v7 - 1779253908) ^ 0x735A117C) * v2 + 201;
  (*(v1 + 8 * (v0 + 2205)))(&v7);
  return (v3 - 1423875590);
}

uint64_t sub_223840DF0@<X0>(uint64_t a1@<X8>)
{
  v8 = v2 - 1;
  *(a1 + v8) = *(v6 + v8) - ((*(v6 + v8) << v3) & v4) + 80;
  return (*(v7 + 8 * (((v8 != 0) * v5) ^ v1)))();
}

uint64_t sub_223840E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, int a22, int a23, int a24, unsigned int a25, char *a26)
{
  v28 = 675097751 * ((2 * (&a21 & 0x4F8A1058) - &a21 + 813035424) ^ 0x7335CA36);
  a26 = &a19;
  a21 = a16;
  a25 = v28 ^ 0xBEB0E745;
  a22 = (v26 + 1421511245) ^ v28;
  a23 = v28 ^ 0x66360423;
  v29 = (*(v27 + 8 * (v26 + 2856)))(&a21);
  return (*(v27 + 8 * (((a24 == 1423875590) * ((v26 - 509855113) & 0x1E63C3DF ^ 0xD80)) ^ v26)))(v29);
}

void sub_223840EFC(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  a4 = v6 + 150 - 143681137 * ((-1220849213 - (&a4 | 0xB73B51C3) + (&a4 | 0x48C4AE3C)) ^ 0xAE6C022C) + 161;
  a5 = a1;
  (*(v5 + 8 * ((v6 + 150) ^ 0x126D)))(&a4);
  JUMPOUT(0x223840F68);
}

uint64_t sub_223840FA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 448) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0xA0) + 80;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((4 * ((v4 ^ 0x33) & 1)) & 0xF7 | (8 * ((v4 ^ 0x33) & 1)) | 0x533u)))(0);
}

uint64_t sub_223841000@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18)
{
  v21 = &a18 + v18 + 16;
  *&v22 = 0x5050505050505050;
  *(&v22 + 1) = 0x5050505050505050;
  *(v21 - 1) = v22;
  *v21 = v22;
  return (*(v20 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFE0) == 32) * ((2 * v19) ^ 0x1104)) ^ v19)))();
}

void sub_2238410D0(int a1@<W8>, uint64_t a2, unsigned int a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v8 = 1361651671 * ((((2 * &a3) | 0xA8082B98) - &a3 + 737929780) ^ 0x9F6FD9B2);
  a3 = v8 + 380192507;
  a4 = (a1 - 1287) ^ v8;
  a7 = 0;
  a6 = v8 ^ 0x73249E39;
  (*(v7 + 8 * (a1 ^ 0x162B)))(&a3);
  JUMPOUT(0x2238924C0);
}

uint64_t sub_223841238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  *(v32 - 112) = v30;
  *(v32 - 104) = v31;
  *(v32 - 144) = (v28 + 2706) ^ (((((2 * ((v32 - 144) ^ 0x83FCEA24)) | 0xF9FAE034) - ((v32 - 144) ^ 0x83FCEA24) - 2096984090) ^ 0x680C562D) * v29);
  *(v32 - 136) = &a24;
  *(v32 - 128) = &a24;
  *(v32 - 120) = &a26;
  v33 = (*(v27 + 8 * (v28 ^ 0x1380)))(v32 - 144);
  return (*(v27 + 8 * ((239 * (((12 * ((v28 + 1551) ^ 0x9C0)) ^ 0xA6741F67) + v26 < v28 + 2147482708)) ^ (v28 + 2234))))(v33);
}

uint64_t sub_2238413E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31)
{
  HIDWORD(v36) = 49 * (a1 ^ 0x2E8);
  LODWORD(v36) = a1 ^ 0x12ED;
  HIDWORD(a13) = a1 ^ 0xD23;
  HIDWORD(v37) = a1 ^ 0x276;
  LODWORD(v37) = a1 ^ 0x27F;
  HIDWORD(a11) = a1 - 5853;
  return (*(v34 + 8 * ((634 * (((((v32 - 37906416) & 0x24267EF) - 106) ^ (v32 - 2124139626) & 0x7E9BCBDF) == 32)) ^ (v32 + 553))))(a1, (v31 - 23802 + v32 + 553), 4257060327, 37906415, 2170827117, 2124139487, 634, -593704644, a9, a10, a11, (a1 + 4386), a13, v36, &a31 % 0x25, v33, a17, a18, a19, a20, v37);
}

uint64_t sub_223841650@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((215 * (v6 == ((v4 + 1878179598) & 0x87CC6BFB ^ 0xABBLL))) ^ (a2 + v4 + 307))))();
}

uint64_t sub_2238416A4@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X3>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unsigned int a37)
{
  v40 = *(&a25 + a4 + 72);
  v41 = ((2 * a4) & 0xFFFBFFD8) + (a4 ^ (a1 + 2062)) + a2;
  *(a3 + v41) = ((v40 >> (v37 ^ 0xB2)) ^ 0xDF) - ((2 * ((v40 >> (v37 ^ 0xB2)) ^ 0xDF)) & 0xA0) + 80;
  *(a3 + v41 + 1) = (BYTE2(v40) ^ 0xFC) - ((2 * (BYTE2(v40) ^ 0xFC)) & 0xA0) + 80;
  *(a3 + v41 + 2) = (BYTE1(v40) ^ 0x36) - 2 * ((BYTE1(v40) ^ 0x36) & 0x58 ^ BYTE1(v40) & 8) + 80;
  *(a3 + v41 + 3) = v40 ^ 0x8E;
  return (*(v39 + 8 * (((a4 + 4 < a37) * v38) ^ v37)))();
}

uint64_t sub_223841774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, void *a7)
{
  v9 = 4 * ((23 * (v7 ^ 0xED9)) ^ 0x7B2);
  *a7 = a1;
  *a6 = v13;
  v10 = (v9 - 937) | 0x200;
  v16 = v14;
  v15 = v9 - 143681137 * (((&v15 | 0xC73729CD) - (&v15 & 0xC73729CD)) ^ 0x219F85DD) - 494;
  (*(v8 + 8 * (v9 ^ 0x14FC)))(&v15);
  v16 = v12;
  v15 = v10 - 143681137 * ((&v15 + 28007011 - 2 * (&v15 & 0x1AB5A63)) ^ 0xE703F673) - 69;
  (*(v8 + 8 * (v10 ^ 0x1343)))(&v15);
  return 0;
}

uint64_t sub_223841B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, unsigned int a17, unsigned int a18, uint64_t a19)
{
  v25 = &a14;
  a14 = (v23 + 1485) ^ (1564307779 * (((v25 | 0xF2E67848) - (v25 & 0xF2E67848)) ^ 0x65EBB45B));
  a18 = -1564307779 * (((v25 | 0xF2E67848) - (v25 & 0xF2E67848)) ^ 0x65EBB45B) + 1264667083 * v21 + 1046635743;
  a16 = a12;
  (*(v22 + 8 * (v23 + 3200)))(&a14);
  v26 = 742307843 * (((&a14 | 0xF5BD9AEC) - &a14 + (&a14 & 0xA426510)) ^ 0xEB9F17B9);
  a14 = (v23 + 378) ^ v26;
  a16 = v19;
  a19 = a12;
  a17 = ((v20 ^ 0xE7EECFFF) + 1610350439 + (((435 * (v23 ^ 0x394)) ^ 0xCFDD9C98) & (2 * v20))) ^ v26;
  v27 = (*(v22 + 8 * (v23 ^ 0x138C)))(&a14);
  return (*(v22 + 8 * ((3577 * (a15 == v24)) ^ v23)))(v27);
}

uint64_t sub_223841CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, uint64_t a31, uint64_t a32, _DWORD *a33, int *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  *a33 = v47 + 1;
  v51 = ((v46 ^ (v46 >> 11)) << 7) & 0x9D2C5680 ^ v46 ^ (v46 >> 11);
  v52 = (v51 << 15) & 0xEFC60000 ^ v51 ^ (((v51 << 15) & 0xEFC60000 ^ v51) >> 18);
  v53 = &a46 + (a30 - 1);
  v54 = -307157381 * ((*(*v50 + (*a34 & 0xFFFFFFFFB21BD668)) ^ v53) & 0x7FFFFFFF);
  v55 = -307157381 * (v54 ^ HIWORD(v54));
  v56 = (v52 - 73 - ((2 * v52) & 0x62) + 122) ^ *(v48[152] + (v55 >> 24) - 12) ^ *((v55 >> 24) + v48[137] + 2) ^ *(v48[210] + (v55 >> 24) - 12) ^ v55 ^ (29 * BYTE3(v55));
  *v53 = v56 ^ 0x31;
  return (*(v49 + 8 * ((2503 * (a30 == (v56 != 49))) ^ 0x58B)))();
}

uint64_t sub_223841F30(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34)
{
  v37 = (a1 - 1473960309) & 0x57DACDFF;
  v39 = ((((((a34 + 103) ^ 0x90) - 98) ^ (a34 + 103) ^ (((a34 + 103) ^ 0xB2) - 64) ^ (((a34 + 103) ^ 0x2F) - 43 + a1 - 117)) ^ (((v34 + 46) ^ (a34 + 103)) - 13)) & 0xF) != 2 || ((((a34 + 323477351) ^ 0x2477D790) - 193156194) ^ (a34 + 323477351) ^ (((a34 + 323477351) ^ 0x84D6BCB2) + 1423818944) ^ (((a34 + 323477351) ^ 0xD0BB072F) + 11565525 + v37) ^ (((v34 + 1609493550) ^ (a34 + 323477351)) - 1880779789)) == ((v37 + 810315429) & 0xCFB393DD ^ 0x2FF48023);
  v40 = *(v36 + 8 * ((v39 * ((61 * (v37 ^ 0x146)) ^ 0x1F3)) ^ v37));
  *(v35 - 180) = -42899;
  return v40();
}

uint64_t sub_2238420A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, unsigned int a12, char *a13, int a14)
{
  a12 = (50899313 * ((&a12 & 0xA7D9CA5 | ~(&a12 | 0xA7D9CA5)) ^ 0xDF494920)) ^ 0xF11;
  a13 = &a10;
  v16 = (*(v14 + 32872))(&a12);
  return (*(v14 + 8 * ((1839 * (a14 == v15)) ^ 0x39Cu)))(v16);
}

uint64_t sub_2238421D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a15 = &a11;
  a14 = (50899313 * (&a14 ^ 0x2ACB2A7A)) ^ 0xF11;
  v18 = (*(v16 + 32872))(&a14);
  return (*(v16 + 8 * ((3563 * (a16 == ((v17 - 178) ^ 0x352))) ^ 0x4CAu)))(v18);
}

uint64_t sub_223842258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, _DWORD *a11, int a12, int a13)
{
  *a10 = a1;
  *a11 = a13;
  return (*(v14 + 8 * ((57 * (((a5 == 0) ^ (((v13 + 119) | 0x51) - 120)) & 1)) ^ ((v13 + 119) | 0x51))))();
}

uint64_t sub_2238422D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, char a17, _BYTE *a18, int a19, char a20, char *a21, _BYTE *a22, char *a23, char *a24, unsigned int a25)
{
  a24 = &a17;
  a25 = v25 - 1037613739 * (((&a21 | 0xF54B2F73) + (~&a21 | 0xAB4D08C)) ^ 0x2449020D) + 68671522;
  a21 = &a15;
  a22 = a18;
  (*(v27 + 8 * (v25 ^ 0xE47)))(&a21);
  a23 = &a20;
  a21 = a18;
  LODWORD(a24) = (v25 + 2483) ^ (843532609 * (((&a21 | 0x3FD9D7A4) - (&a21 & 0x3FD9D7A4)) ^ 0x63948321));
  (*(v27 + 8 * (v25 + 3665)))(&a21);
  LODWORD(a21) = (v25 + 2177) ^ (1504884919 * ((&a21 + 1947871930 - 2 * (&a21 & 0x741A2ABA)) ^ 0x8FD99DA1));
  a22 = a18;
  v28 = (*(v27 + 8 * (v25 + 3676)))(&a21);
  return (*(v27 + 8 * (((HIDWORD(a21) == v26) * ((v25 - 1378767580) & 0x522E53F9 ^ 0x1F4)) ^ v25)))(v28);
}

uint64_t sub_223842474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (50899313 * ((2 * ((&a14 ^ 0x5D9BE750) & 0xAA5B2A8) - (&a14 ^ 0x5D9BE750) - 178631344) ^ 0x820A807A)) ^ 0xF11;
  a15 = &a12;
  v18 = (*(v16 + 32872))(&a14);
  return (*(v16 + 8 * ((2547 * (a16 == 1423875590)) ^ v17)))(v18);
}

uint64_t sub_223842510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, int a19, unsigned int a20)
{
  v24 = &a17;
  a18 = a16;
  a17 = (1564307779 * ((2 * (v24 & 0x6C7E2A90) - v24 - 1820207761) ^ 0x48C197C)) ^ 0x963;
  a20 = -1564307779 * ((2 * (v24 & 0x6C7E2A90) - v24 - 1820207761) ^ 0x48C197C) + 1264667083 * v22 + 1046635743;
  (*(v23 + 32944))(&a17);
  v25 = 1564307779 * ((&a17 & 0x9765DB2C | ~(&a17 | 0x9765DB2C)) ^ 0xFF97E8C0);
  a20 = 1264667083 * HIDWORD(v21) + 1046635743 - v25;
  a17 = v25 ^ 0x963;
  a18 = a16;
  (*(v23 + 32944))(&a17);
  v26 = 1564307779 * (((&a17 ^ 0xA4006C6 | 0x71BFF939) + (&a17 ^ 0x50B1B801 | 0x8E4006C6)) ^ 0xCDFC72D5);
  a20 = 1264667083 * v21 - v26 + 1046635743;
  a18 = a16;
  a17 = v26 ^ 0x963;
  (*(v23 + 32944))(&a17);
  v27 = 2 * &a17;
  a17 = (1564307779 * (((v27 | 0xE10403D2) - &a17 - 1887568361) ^ 0xE78FCDFA)) ^ 0x963;
  a20 = -1564307779 * (((v27 | 0xE10403D2) - &a17 - 1887568361) ^ 0xE78FCDFA) + 1264667083 * v20 + 1046635743;
  a18 = a16;
  (*(v23 + 32944))(&a17);
  v28 = 1564307779 * (((v27 | 0xE91499DE) - &a17 - 1955220719) ^ 0xE38780FC);
  a17 = v28 ^ 0x963;
  a18 = a16;
  a20 = 1046635743 - v28;
  v29 = (*(v23 + 32944))(&a17);
  return (*(v23 + 8 * ((3655 * (a19 == 1423875590)) ^ 0x2E9u)))(v29);
}

uint64_t sub_2238427DC@<X0>(int a1@<W4>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, int a9, int a10, char a11, __int16 a12, char a13, __int16 a14, char a15)
{
  v18 = a2 + 584;
  v19 = a2 + 584 - a1;
  v20 = 435584651 * ((v17 - 152) ^ 0x6D321A56);
  *(v17 - 152) = &a15;
  *(v17 - 128) = &a13;
  *(v17 - 136) = a7;
  *(v17 - 140) = v20 + a2 + 584 + 1398;
  *(v17 - 112) = &a11;
  *(v17 - 104) = &a8;
  *(v17 - 120) = (v16 - 344887266) ^ v20;
  v21 = (*(v15 + 8 * (a2 + 4066)))(v17 - 152);
  return (*(v15 + 8 * (((*(v17 - 144) == v19 + 432655510) * (5 * (v18 ^ 0x9F) - 105)) ^ v18)))(v21);
}

void sub_2238428C4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 4) - 528399629;
  if (v2 < 0)
  {
    v2 = 528399629 - *(*(a1 + 32) + 4);
  }

  v1 = *a1 ^ (143681137 * ((a1 & 0x248E1D02 | ~(a1 | 0x248E1D02)) ^ 0x3DD94EED));
  __asm { BRAA            X12, X17 }
}

void sub_2238429E8(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v19 - 144) = (a1 + 2706) ^ (((((v19 - 144) | 0xBF09C891) - (v19 - 144) + ((v19 - 144) & 0x40F63768)) ^ 0x28040482) * v18);
  *(v19 - 136) = &a17;
  *(v19 - 128) = &a17;
  *(v19 - 112) = a4;
  *(v19 - 104) = a5;
  *(v19 - 120) = &a13;
  (*(v17 + 8 * (a1 ^ 0x1380u)))(v19 - 144);
  JUMPOUT(0x2238932D4);
}

uint64_t sub_223842A68()
{
  v7 = v0 - 143681137 * ((1852829614 - (&v7 | 0x6E6FEFAE) + (&v7 | 0x91901051)) ^ 0x7738BC41) + v2;
  v8 = v5;
  (*(v1 + 8 * (v2 ^ 0x6B60C1D4)))(&v7);
  v8 = v6;
  v7 = v0 + v2 - 143681137 * (&v7 ^ 0xE6A8AC10);
  (*(v1 + 8 * (v0 + v2 + 3330)))(&v7);
  return (v3 - 1423875590);
}

uint64_t sub_223842CC0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7);
  return (*(v6 + 8 * ((58 * (v7 == (v5 ^ a2) - 2655)) ^ (v2 + v5 + 2548))))();
}

uint64_t sub_223842D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, __int16 a14, char a15, uint64_t a16, char a17, __int16 a18, char a19, uint64_t a20, uint64_t a21, char *a22, unsigned int a23)
{
  a23 = (v24 + 2024) ^ (843532609 * (&a20 ^ 0x5C4D5485));
  a22 = &a13;
  a20 = a9;
  v25 = (v24 - 542) | 0xEA4;
  (*(v23 + 8 * v25))(&a20);
  v26 = 2 * &a20;
  a23 = (v24 + 2024) ^ (843532609 * (((v26 | 0x1B560B72) - &a20 + 1918171719) ^ 0xD1E6513C));
  a20 = a9;
  a22 = &a19;
  (*(v23 + 8 * v25))(&a20);
  a23 = (v24 + 2024) ^ (843532609 * (&a20 ^ 0x5C4D5485));
  a20 = a9;
  a22 = &a11;
  (*(v23 + 8 * ((v24 - 542) ^ 0xEA4)))(&a20);
  a23 = (v24 + 2024) ^ (843532609 * (((&a20 | 0x8D689B91) - &a20 + (&a20 & 0x72976468)) ^ 0xD125CF14));
  a20 = a9;
  a22 = &a17;
  (*(v23 + 8 * v25))(&a20);
  a20 = a9;
  a22 = &a15;
  a23 = (v24 + 2024) ^ (843532609 * ((928018938 - (&a20 | 0x375071FA) + (&a20 | 0xC8AF8E05)) ^ 0x94E2DA80));
  (*(v23 + 8 * (v24 + 3206)))(&a20);
  LODWORD(a20) = (v24 + 1718) ^ (1504884919 * (((v26 | 0xF4169E28) - &a20 - 2047561492) ^ 0x81C8F80F));
  a21 = a9;
  v27 = (*(v23 + 8 * ((v24 - 542) ^ 0xEBF)))(&a20);
  return (*(v23 + 8 * ((HIDWORD(a20) == ((v24 - 542) ^ 0x54DE9F4E)) | (4 * (HIDWORD(a20) == ((v24 - 542) ^ 0x54DE9F4E))) | (v24 - 542))))(v27);
}

uint64_t sub_223842F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a15 = a12;
  a17 = &a11;
  a18 = (v18 - 194) ^ (843532609 * ((&a15 + 1562163077 - 2 * (&a15 & 0x5D1CB785)) ^ 0x151E300));
  (*(v19 + 8 * (v18 ^ 0x3FC)))(&a15);
  a16 = a12;
  LODWORD(a15) = (v18 - 500) ^ (1504884919 * (((&a15 | 0x1333F74D) + (~&a15 | 0xECCC08B2)) ^ 0xE8F04057));
  v21 = (*(v19 + 8 * (v18 | 0x3E7)))(&a15);
  return (*(v19 + 8 * (((16 * (((v18 - 1) ^ (HIDWORD(a15) == (v18 ^ 0x50 ^ (v20 - 3008)))) & 1)) & 0xBF | ((((v18 - 1) ^ (HIDWORD(a15) == (v18 ^ 0x50 ^ (v20 - 3008)))) & 1) << 6)) ^ v18)))(v21);
}

uint64_t sub_223843048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = ((2 * ((v17 - 144) & 0x59316BC0) - (v17 - 144) + 651072571) ^ 0xB1C35828) * v15;
  *(v17 - 128) = v18 ^ (v16 - 4) ^ 0x2B55932C ^ (((v16 - 4) ^ 0x33A76D36) - 1781303318) ^ (((v16 - 4) ^ 0x7FFEFFED) - 645208781) ^ (((v14 + 543) ^ 0x8F35FC7A) + ((v16 - 4) ^ 0x2941EEB1)) ^ (((v16 - 4) ^ 0x3C939DB4 ^ (639 * (v14 ^ 0x5F4))) - 1696103530);
  *(v17 - 124) = v14 - v18 + 1490;
  *(v17 - 136) = a13;
  v19 = (*(v13 + 8 * (v14 + 2620)))(v17 - 144);
  return (*(v13 + 8 * ((14 * (*(v17 - 144) == 1619001405)) ^ v14)))(v19);
}

uint64_t sub_223843170@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  LODWORD(STACK[0x2F4]) = a1;
  v57 = (*(v55 + 8 * (v56 ^ 0x11ED)))(a53 + 16, 0);
  v58 = *(a53 + 16);
  *(a53 + 4) = *(a53 + 24);
  *(a53 + 8) = v58;
  *(a53 + 12) = (*(a55 + 8 * (v56 + 3598)))(v57);
  *a53 = (*(a55 + 8 * (v56 ^ 0xE0E)))();
  return sub_2238431EC();
}

uint64_t sub_2238431EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v68 = *(v63 + 4 * (v65 - 1));
  *(v63 + 4 * v65) = *(a60 + 4 * v62) + v62 + ((1664525 * (v68 ^ (v68 >> 30))) ^ *(v63 + 4 * v65));
  v69 = 675097751 * ((~(a58 | 0xDCB996876EE4A5DFLL) + (a58 & 0xDCB996876EE4A5DFLL)) ^ 0x58B92DC8F4333B2);
  v70 = v64 + 1721743469 - v69;
  *(v67 - 168) = v70 - 27;
  *(v67 - 164) = (v64 + 1721743469) ^ v69;
  *(v67 - 176) = (v65 + 1) ^ v69;
  *(v67 - 160) = v69 + 623;
  *(v67 - 192) = v70 + 1;
  *(v67 - 188) = v66 - v69 + v64;
  *(v67 - 152) = v69 ^ 1;
  v71 = (*(a3 + 8 * (v64 | 0xBA7)))(v67 - 192);
  return (*(a62 + 8 * *(v67 - 184)))(v71);
}

uint64_t sub_22384334C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, unsigned int a18, char *a19)
{
  v22 = 675097751 * (((&a14 | 0x7A21E151) - &a14 + (&a14 & 0x85DE1EA8)) ^ 0x3961C4C7);
  a19 = &a11;
  a18 = v22 ^ 0xBEB0E746;
  a14 = a10;
  a15 = (v21 + 1421509789) ^ v22;
  a16 = v22 ^ 0x10FDFC99;
  v23 = (*(v19 + 8 * (v21 + 1400)))(&a14);
  return (*(v19 + 8 * ((1772 * (a17 == ((v21 - 6570) & 0xFFF ^ (v20 + 246)))) ^ v21)))(v23);
}

void sub_223843460()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * (dword_27D09D7B8 ^ 0x74 ^ qword_27D09D558)) ^ byte_2238FA560[byte_223907C60[(-33 * (dword_27D09D7B8 ^ 0x74 ^ qword_27D09D558))] ^ 0x6D]) - 170];
  v1 = *(v0 - 4);
  v2 = qword_2836EB200[(*(off_2836EB658 + (*(off_2836EB6D8 + (-33 * (v1 ^ qword_27D09D558 ^ 0x74))) ^ 0x61u) - 4) ^ (-33 * (v1 ^ qword_27D09D558 ^ 0x74))) - 124];
  v3 = v1 ^ &v9 ^ *v2;
  v4 = 1321670111 * (v3 - 0x448BD34F94FDFB74);
  v5 = 1321670111 * (v3 ^ 0x448BD34F94FDFB74);
  *(v0 - 4) = v4;
  *v2 = v5;
  LOBYTE(v5) = -33 * ((v5 + *(v0 - 4)) ^ 0x74);
  *qword_2836EB200[(*(off_2836EB808 + (*(off_2836EB438 + v5 - 8) ^ 0x18u)) ^ v5) - 82] = 1423875590;
  LOBYTE(v5) = -33 * ((*v2 + *(v0 - 4)) ^ 0x74);
  v6 = qword_2836EB200[((-33 * (dword_27D09D7B8 ^ 0x74 ^ qword_27D09D558)) ^ byte_2238FA560[byte_223907C60[(-33 * (dword_27D09D7B8 ^ 0x74 ^ qword_27D09D558))] ^ 0x64]) + 31];
  v7 = (*(v6 + 8 * ((*(off_2836EB888 + (*(off_2836EB588 + v5 - 4) ^ 0xDBu) - 12) ^ v5) + 4030)))(512, 0x100004077774924);
  v8 = -33 * ((*v2 - *(v0 - 4)) ^ 0x74);
  *qword_2836EB200[(*(off_2836EB578 + (*(off_2836EB480 + v8 - 4) ^ 0xF0u) - 8) ^ v8) + 6] = v7;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2238436C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, int a14, int a15)
{
  v20 = *(v15 + 4) - v18;
  v21 = 1564307779 * ((&a12 & 0x8D8DD6BF | ~(&a12 | 0x8D8DD6BF)) ^ 0xE57FE553);
  a12 = (v19 + 1265) ^ v21;
  a15 = 1264667083 * v20 - v21 - 1869887555;
  a13 = a9;
  v22 = (*(v16 + 8 * (v19 ^ 0x1464)))(&a12);
  return (*(v16 + 8 * ((212 * (((25 * (v19 ^ 0x79)) ^ (a14 == ((v19 - 178863539) & 0xAA93DE6 ^ (v17 - 870)))) & 1)) ^ v19)))(v22);
}

uint64_t sub_223843878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, char a13, __int16 a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, unsigned int a20)
{
  a17 = a12;
  a19 = &a13;
  a20 = (v22 + 1878) ^ (843532609 * (&a17 ^ 0x5C4D5485));
  (*(v20 + 8 * (v22 + 3060)))(&a17);
  a17 = a12;
  a19 = &a15;
  a20 = (v22 + 1878) ^ (843532609 * ((((2 * &a17) | 0xFF026584) - &a17 - 2139173570) ^ 0x23CC6647));
  (*(v20 + 8 * (v22 ^ 0xC14u)))(&a17);
  a20 = (v22 + 1878) ^ (843532609 * (((&a17 | 0xC45C21C3) - &a17 + (&a17 & 0x3BA3DE38)) ^ 0x98117546));
  a17 = a12;
  a19 = &a11;
  (*(v20 + 8 * (v22 + 3060)))(&a17);
  LODWORD(a17) = (v22 + 1572) ^ (1504884919 * ((&a17 - 1925354951 - 2 * (&a17 & 0x8D3D6A39)) ^ 0x76FEDD22));
  a18 = a12;
  v23 = (*(v20 + 8 * (v22 ^ 0xC0Fu)))(&a17);
  return (*(v20 + 8 * (((HIDWORD(a17) != v21) * (((v22 - 10528005) & 0x7F0E7F5D) - 2131646050)) ^ v22)))(v23);
}

uint64_t sub_223843A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  v43 = (v38 + 4427);
  v44 = ((((~v43 + v37) ^ (~v43 + v37)) - 1) & (v43 - v37)) >> 63;
  v45 = (v38 - 692) | 0x860;
  *v42 = 0;
  v46 = (v38 - 691) ^ v36 ^ (v36 >> 11);
  v47 = (v46 ^ ((v38 - 691) ^ 0x94156000) & v43) << (((v38 + 76) | 0x60) ^ 0x67);
  v48 = ((v46 ^ v44 ^ v47 & 0x9D2C5680) << 15) & 0xEFC60000 ^ v46 ^ v44 ^ v47 & 0x9D2C5680 ^ ((((v46 ^ v44 ^ v47 & 0x9D2C5680) << 15) & 0xEFC60000 ^ v46 ^ v44 ^ v47 & 0x9D2C5680) >> 18);
  v49 = &a36 + (v41 - 1);
  v50 = ((*(*a23 + (*a22 & (((v45 + 679036509) & 0xD786B577) + 971865727))) ^ v49) & 0x7FFFFFFF) * (((v45 - 401967858) & 0x17F587F7) - 307158763);
  v51 = -307157381 * (v50 ^ HIWORD(v50));
  LOBYTE(v51) = *(*(v40 + 8 * (v45 - 1938)) + (v51 >> 24) - 7) ^ *(*(v40 + 8 * (v45 - 1909)) + (v51 >> 24) - 8) ^ *(*(v40 + 8 * (v45 - 2006)) + (v51 >> 24) - 5) ^ v51 ^ (87 * BYTE3(v51));
  *v49 = v51 ^ v48;
  return (*(v39 + 8 * ((324 * (v41 == (v51 != v48))) ^ v45)))();
}

uint64_t sub_223843AF8@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + ((v3 ^ 0xBE8) << 7) + 1383950519;
  v5 = *(a1 + 4) + 1383952567;
  v6 = v4 < -235131452;
  v7 = v4 > v5;
  if (v5 < 8 * (v3 ^ 0xAF8) - 235133500 != v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return (*(v2 + 8 * ((1816 * v8) ^ v3)))();
}

uint64_t sub_223843BC8@<X0>(uint64_t a1@<X8>)
{
  v5.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v5.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v6.i64[0] = 0x5050505050505050;
  v6.i64[1] = 0x5050505050505050;
  v7 = *(v3 + v1 - 1 - 31);
  v8 = a1 + v1 - 1;
  *(v8 - 15) = vaddq_s8(vsubq_s8(*(v3 + v1 - 1 - 15), vandq_s8(vaddq_s8(*(v3 + v1 - 1 - 15), *(v3 + v1 - 1 - 15)), v5)), v6);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v5)), v6);
  return (*(v4 + 8 * ((14 * (((v2 - 928) | 0x802u) - 2386 == (v1 & 0xFFFFFFE0))) ^ (v2 + 18))))();
}

uint64_t sub_223843C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, int a24, unsigned int a25)
{
  v28 = &a22;
  a25 = -1564307779 * (((v28 | 0xBD9702A7) + (~v28 | 0x4268FD58)) ^ 0x2A9ACEB5) + 1264667083 * a14 + 1046635743;
  a23 = a17;
  a22 = (v26 + 1352) ^ (1564307779 * (((v28 | 0xBD9702A7) + (~v28 | 0x4268FD58)) ^ 0x2A9ACEB5));
  (*(v27 + 8 * (v26 ^ 0x140D)))(&a22);
  a25 = -1564307779 * ((((2 * &a22) | 0x7576D960) - &a22 - 985361584) ^ 0xADB6A0A3) + (v26 + 1264666032) * a15 + 1046635743;
  a22 = (v26 + 1352) ^ (1564307779 * ((((2 * &a22) | 0x7576D960) - &a22 - 985361584) ^ 0xADB6A0A3));
  a23 = a17;
  (*(v27 + 8 * (v26 + 3067)))(&a22);
  v29 = 1564307779 * (&a22 ^ 0x970DCC13);
  a25 = 1264667083 * v25 + 1046635743 - v29 + ((v26 - 797716262) & 0x2F8C2FFE) - 1268;
  a23 = a17;
  a22 = (v26 + 1352) ^ v29;
  v30 = (*(v27 + 8 * (v26 + 3067)))(&a22);
  return (*(v27 + 8 * (v26 ^ (55 * (v25 == 0)))))(v30);
}

uint64_t sub_223843E98@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 1;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * (((v6 == 0) * v5) ^ v3)))();
}

uint64_t sub_223843FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  a18 = (1037613739 * ((2 * (&a17 & 0x342343E0) - &a17 - 874726371) ^ 0x1ADE9162)) ^ 0x86F54BA0;
  v19 = (*(v18 + 32816))(&a17);
  return (*(v18 + 8 * ((2631 * (a17 == 1423875590)) ^ 0x2B3u)))(v19);
}

uint64_t sub_2238440C0@<X0>(int a1@<W8>)
{
  *v1 = v7;
  v4 = (a1 - 129342828) & 0x7B597FA;
  v10 = v6;
  v9 = a1 - 2896 - 143681137 * (((&v9 | 0x1CF40EC9) + (~&v9 | 0xE30BF136)) ^ 0xFA5CA2D8) + 453;
  (*(v2 + 8 * ((a1 - 2896) ^ 0x1149)))(&v9);
  v10 = v8;
  v9 = v4 - 143681137 * ((&v9 - 1234880497 - 2 * (&v9 & 0xB665380F)) ^ 0x50CD941F) - 1050;
  (*(v2 + 8 * (v4 ^ 0x1728)))(&v9);
  return (v3 - 1423875590);
}

uint64_t sub_2238441F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  *(a29 + 1560) = *STACK[0x3B0];
  *(a29 + 1552) = *STACK[0x210];
  v50 = STACK[0x3C8];
  *(*STACK[0x3C8] + 488) = *(a49 + 8);
  *(*v50 + 480) = *a49;
  v51 = (a47 + a30);
  *v51 = (&STACK[0x458] ^ 0xBA) * (&STACK[0x458] + 17);
  *(v51 - 1) = (&STACK[0x458] + 4 * ((33 * a45) ^ 0x3A) + 6) * (&STACK[0x458] ^ 0xBB);
  return (*(v49 + 8 * ((33 * a45) ^ 4)))(3752835022, 186, 80, a4, a5, a6, a7, 3210702748);
}

uint64_t sub_223844304()
{
  v7 = (v2 ^ 0xE0A) - ((&v7 + 2098220794 - 2 * (&v7 & 0x7D104EFA)) ^ 0x9BB8E2EA) * v1 - 615;
  v8 = v5;
  (*(v0 + 8 * (v2 ^ 0x1B6F)))(&v7);
  v7 = (v2 ^ 0xE0A) - 930 - (((&v7 | 0x3D1E7F7) - (&v7 & 0x3D1E7F7)) ^ 0xE5794BE7) * v1 + 315;
  v8 = v4;
  (*(v0 + 8 * ((v2 ^ 0xE0A) + 2715)))(&v7);
  return (v6 ^ 0xDEFEBE5F) + 1977606055 + ((v2 ^ 0xBDFD77D9) & (2 * v6)) - 1423875590;
}

uint64_t sub_223844370@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 1;
  *(a1 + v6) = *(v3 + v6) - (v5 & (2 * *(v3 + v6))) + 80;
  return (*(v1 + 8 * ((4 * (((v6 == 0) ^ v2) & 1)) & 0xF7 | (8 * (((v6 == 0) ^ v2) & 1)) | v2)))(0);
}

uint64_t sub_22384447C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * ((v3 ^ 0x42E) - 209)) | v3)))();
}

uint64_t sub_223844568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, unsigned int a23, char *a24)
{
  v27 = 675097751 * ((2 * (&a19 & 0x6BD8A9A8) - &a19 - 1809361326) ^ 0xD76773C4);
  a23 = v27 ^ 0xBEB0E746;
  a19 = a14;
  a24 = &a13;
  a20 = (v24 + 1421511494) ^ v27;
  a21 = v27 ^ 0x6BA34F1A;
  v28 = (*(v25 + 8 * (v24 ^ 0x13E7)))(&a19);
  return (*(v25 + 8 * (((a22 == (((v24 - 823) | 0x900) ^ (v26 - 1604))) * ((v24 - 145641724) & 0xDF5 ^ 0x4D2)) ^ v24)))(v28);
}

uint64_t sub_22384464C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, int a15, unsigned int a16, uint64_t *a17)
{
  v20 = 675097751 * (((&a12 | 0x103EFE84) - &a12 + (&a12 & 0xEFC10178)) ^ 0x537EDB12);
  a16 = v20 ^ 0xBEB0E746;
  a17 = &a9;
  a13 = (v17 + 1421511044) ^ v20;
  a14 = v20 ^ 0xE02EE929;
  a12 = a10;
  v21 = (*(v18 + 8 * (v17 + 2655)))(&a12);
  return (*(v18 + 8 * (((a15 == v19) * ((((v17 - 27239) & 0xFFF) - 1978) ^ 0xA01)) ^ v17)))(v21);
}

uint64_t sub_223844718()
{
  v4 = (v0 - 516) | 0xDA0;
  v8 = v0 - ((((&v8 | 0x42E8408A) ^ 0xFFFFFFFE) - (~&v8 | 0xBD17BF75)) ^ 0x5BBF1365) * v2 + 192;
  v9 = v7;
  (*(v3 + 8 * (v0 + 3522)))(&v8);
  v9 = v6;
  v8 = v4 - ((-465931712 - (&v8 | 0xE43A7240) + (&v8 | 0x1BC58DBF)) ^ 0xFD6D21AF) * v2 - 2780;
  (*(v3 + 8 * (v4 ^ 0x1DEA)))(&v8);
  return (v1 - 1423875590);
}

uint64_t sub_22384485C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = ((v3 - 1112) | 0x850u) - 2129 + a3;
  v6 = *(v4 + v5 - 15);
  v7 = *(v4 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(a2 + 8 * ((25 * ((a3 & 0xFFFFFFE0) == 32)) ^ (v3 - 873))))();
}

uint64_t sub_2238448D8@<X0>(int a1@<W8>)
{
  v9 = ~v5 + v2;
  v10 = *(v1 + v9 - 15);
  v11 = *(v1 + v9 - 31);
  v12 = v7 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * ((a1 + v6 + 1042) ^ (2 * (v5 + 5 * (v6 ^ (v4 + 1457)) - 3683 == v3)))))();
}

uint64_t sub_223844930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t a15, int a16, unsigned int a17)
{
  v20 = &a14;
  a17 = -1564307779 * ((v20 & 0x21774606 | ~(v20 | 0x21774606)) ^ 0x498575EA) + 1264667083 * a10 + 1046635743;
  a15 = a12;
  a14 = (1564307779 * ((v20 & 0x21774606 | ~(v20 | 0x21774606)) ^ 0x498575EA)) ^ 0x963;
  v21 = (*(v17 + 32944))(&a14);
  return (*(v17 + 8 * ((1215 * (a16 == v18)) ^ v19)))(v21);
}

uint64_t sub_223844A34()
{
  v3 = 2 * ((v0 - 1843) ^ 0x3D7);
  v9 = v6;
  v8 = v0 - 1843 - ((((&v8 | 0x873D898A) ^ 0xFFFFFFFE) - (~&v8 | 0x78C27675)) ^ 0x9E6ADA65) * v2 + 78;
  (*(v1 + 8 * ((v0 - 1843) ^ 0x12B0)))(&v8);
  v8 = v3 - ((&v8 - 852824977 - 2 * (&v8 & 0xCD2AEC6F)) ^ 0x2B82407F) * v2 + 40;
  v9 = v7;
  (*(v1 + 8 * (v3 + 3370)))(&v8);
  return ((v0 - 1843) ^ v5 ^ 0x5DFEBC26) + ((2 * v5) & 0xBBFD7D3C) - 1576976030;
}

uint64_t sub_223844B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, unsigned int a17, char *a18, int a19)
{
  a18 = &a14;
  a17 = (v19 + 403) ^ (50899313 * ((&a17 & 0x249D2646 | ~(&a17 | 0x249D2646)) ^ 0xF1A9F3C3));
  v22 = (*(v20 + 8 * (v19 ^ 0x1D73)))(&a17);
  return (*(v20 + 8 * ((142 * (a19 == v21 + ((v19 - 2677) | 0x36) - 831)) ^ v19)))(v22);
}

void woqRTqq9PL5McfBs891()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D800) ^ 0x74)) ^ byte_2238FA560[byte_223907C60[(-33 * ((qword_27D09D558 - dword_27D09D800) ^ 0x74))] ^ 0x37]) - 99];
  v1 = *(v0 - 4);
  v2 = qword_2836EB200[((-33 * ((qword_27D09D558 - v1) ^ 0x74)) ^ byte_223907B60[byte_223902660[(-33 * ((qword_27D09D558 - v1) ^ 0x74))] ^ 0xF0]) + 39];
  v3 = &v5[*v2 ^ v1];
  *(v0 - 4) = 1321670111 * (v3 - 0x448BD34F94FDFB74);
  *v2 = 1321670111 * (v3 ^ 0x448BD34F94FDFB74);
  v6[1] = (1037613739 * (((v6 | 0xBCE61206) - v6 + (v6 & 0x4319EDF8)) ^ 0x6DE43F79)) ^ 0x86F54BA0;
  LOBYTE(v2) = -33 * (*(v0 - 4) ^ 0x74 ^ *v2);
  v4 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D800) ^ 0x74)) ^ byte_2238FA560[byte_223907C60[(-33 * ((qword_27D09D558 + dword_27D09D800) ^ 0x74))] ^ 0x6D]) - 104];
  (*(v4 + 8 * ((*(off_2836EB798 + (*(off_2836EB3D8 + v2 - 12) ^ 0x18u) - 4) ^ v2) + 4044)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_223845248@<X0>(int a1@<W8>)
{
  v4 = 742307843 * ((2 * (((v3 - 168) ^ 0xE465DFA8FD5C478) & 0x22E8BFEA43854CC0) - ((v3 - 168) ^ 0xE465DFA8FD5C478) - 0x22E8BFEA43854CC1) ^ 0x60CDC0842D8DFA12);
  v5 = a1 - 890913772 - v4;
  *(v3 - 152) = v4 + 54728573;
  *(v3 - 144) = v4 + a1 - 1255348555;
  *(v3 - 168) = v4;
  *(v3 - 164) = v5 + 19;
  *(v3 - 128) = ((a1 - 890913772) ^ 0x46) - v4;
  *(v3 - 156) = v5;
  *(v3 - 136) = v4 + v1;
  v6 = (*(v2 + 8 * (a1 + 4174)))(v3 - 168);
  return (*(v2 + 8 * *(v3 - 160)))(v6);
}

uint64_t sub_22384533C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, _BYTE *a15, uint64_t a16, char a17, int a18, char a19, __int16 a20, char a21, char *a22, char *a23, char *a24, _BYTE *a25, char *a26)
{
  LODWORD(a24) = v26 + 1037613739 * ((&a22 - 2010462359 - 2 * (&a22 & 0x882AC769)) ^ 0x5928EA16) + 2640;
  a25 = a15;
  a26 = &a21;
  a23 = &a17;
  (*(v29 + 8 * (v26 + 3697)))(&a22);
  a22 = &a14;
  a24 = a15;
  LODWORD(a23) = (v26 + 1980) ^ (((2 * (&a22 & 0x51842A10) - &a22 + 779867631) ^ 0xC8D379FF) * v27);
  (*(v29 + 8 * (v26 ^ 0x1185)))(&a22);
  LODWORD(a25) = (v26 + 2480) ^ (843532609 * ((((2 * (&a22 ^ 0xBBD25C7A)) | 0x2740A48) - (&a22 ^ 0xBBD25C7A) - 20579620) ^ 0xE6A50DDB));
  a22 = a15;
  a24 = &a19;
  (*(v29 + 8 * (v26 ^ 0xE72)))(&a22);
  a23 = a15;
  LODWORD(a22) = (v26 + 2174) ^ (1504884919 * ((&a22 - 515483785 - 2 * (&a22 & 0xE1465777)) ^ 0x1A85E06C));
  v30 = (*(v29 + 8 * (v26 + 3673)))(&a22);
  return (*(v29 + 8 * (((HIDWORD(a22) != v28 + v26 + 1264 - 1678) * ((v26 - 1112420321) & 0x424E2EE3 ^ 0x8C)) ^ v26)))(v30);
}

uint64_t sub_223845528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15)
{
  v18 = v16 - a7 - 2117;
  *v15 = a15;
  if (a12)
  {
    v19 = a14 == 31 * (v18 ^ 0x4A6) - 1333;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  return (*(v17 + 8 * ((v20 * (((v16 - a7 + 174) | 0x33) - 3466)) ^ v18)))();
}

uint64_t sub_223845590(uint64_t a1, int a2, uint64_t a3)
{
  v8 = *(v4 + a3 + 16);
  v9 = (v5 + a3);
  *v9 = *(v4 + a3);
  v9[1] = v8;
  return (*(v7 + 8 * (((v3 == a3) * a2) ^ v6)))();
}

uint64_t sub_22384561C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, void *a7)
{
  v10 = 19 * ((88 * (v7 ^ 0x3FB)) ^ 0x277);
  *a7 = a1;
  *a5 = v13;
  v15 = v10 - 143681137 * (((&v15 | 0x6FE1DF1) + (~&v15 | 0xF901E20E)) ^ 0xE056B1E0) + 185;
  v16 = v12;
  (*(v8 + 8 * (v10 + 3515)))(&v15);
  v15 = (v10 ^ 0x946) - 143681137 * (((&v15 | 0xDED904B4) - (&v15 & 0xDED904B4)) ^ 0x3871A8A4) - 2053;
  v16 = v14;
  (*(v8 + 8 * (v10 ^ 0x1245)))(&v15);
  return (v9 - 1423875590);
}

uint64_t sub_2238457A4()
{
  v4 = -60219811 - v0;
  if ((64 - v2) >> 32)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= 64 - v2;
  }

  v6 = v5;
  return (*(v3 + 8 * ((((((v1 - 2564) | 4) + 3305) ^ ((v1 - 1023) | 0x6E0)) * v6) | v1)))();
}

uint64_t sub_2238457FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 != 0) * (((v4 + 914943628) & 0x2487CD6E) - 3297)) | (v2 + v4 + 2303))))();
}

void Ehn34khqq1jgEJw()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * (dword_27D09D7F8 ^ 0x74 ^ qword_27D09D558)) ^ byte_2238FD8F0[byte_2238FA760[(-33 * (dword_27D09D7F8 ^ 0x74 ^ qword_27D09D558))] ^ 0x18]) - 18];
  v1 = -33 * ((qword_27D09D558 - *v0) ^ 0x74);
  v2 = qword_2836EB200[(*(off_2836EB798 + (*(off_2836EB3D8 + v1 - 12) ^ 0xC9u) - 4) ^ v1) - 110];
  v3 = &v5[*v2 ^ *v0];
  *v0 = 1321670111 * v3 + 0x448BD34F94FDFB74;
  *v2 = 1321670111 * (v3 ^ 0x448BD34F94FDFB74);
  v6[1] = (1037613739 * ((v6 - 891644607 - 2 * (v6 & 0xCADA9541)) ^ 0x1BD8B83E)) ^ 0x86F54BA0;
  LOBYTE(v2) = -33 * ((*v2 + *v0) ^ 0x74);
  v4 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D7F8) ^ 0x74)) ^ byte_223907B60[byte_223902660[(-33 * ((qword_27D09D558 + dword_27D09D7F8) ^ 0x74))] ^ 0xF0]) + 73];
  (*(v4 + 8 * ((*(off_2836EB7F0 + (*(off_2836EB850 + v2 - 4) ^ 0x64u)) ^ v2) + 4058)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_223845BA4@<X0>(int a1@<W8>)
{
  result = (*(v3 + 8 * (a1 + 2629)))(*v4);
  *v2 = 0;
  *v1 = 0;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  *(v1 + 56) = 90175451;
  return result;
}

uint64_t sub_223845BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, _BYTE *a16, int a17, char a18, __int16 a19, char a20, uint64_t a21, char *a22, _BYTE *a23, char *a24, char *a25, unsigned int a26)
{
  a25 = &a20;
  a26 = v26 - 1037613739 * ((-764605004 - (&a22 | 0xD26D0DB4) + (&a22 | 0x2D92F24B)) ^ 0xFC90DF34) + 68668898;
  a22 = &a18;
  a23 = a16;
  (*(v27 + 8 * (v26 ^ 0x407u)))(&a22);
  LODWORD(a25) = (v26 - 141) ^ (843532609 * (((&a22 | 0xB11936DF) - &a22 + (&a22 & 0x4EE6C920)) ^ 0xED54625A));
  a24 = &a15;
  a22 = a16;
  (*(v27 + 8 * (v26 + 1041)))(&a22);
  LODWORD(a22) = (v26 - 447) ^ (1504884919 * (((&a22 | 0x75CEF0D) - (&a22 & 0x75CEF0D)) ^ 0xFC9F5816));
  a23 = a16;
  v28 = (*(v27 + 8 * (v26 ^ 0x42Cu)))(&a22);
  return (*(v27 + 8 * (((HIDWORD(a22) == 1423875590) * (107 * (v26 ^ 0xBD8) - 314)) ^ v26)))(v28);
}

uint64_t sub_223845D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, unsigned int a19, unsigned int a20, uint64_t a21)
{
  v27 = (v26 + 423609750) ^ 0x193FC419;
  v28 = &a16;
  a18 = a11;
  a20 = -1564307779 * ((((2 * v28) | 0xB7E528C) - v28 - 96414022) ^ 0x92B2E555) + 1264667083 * v23 + v27 + 1046632197;
  a16 = (v27 - 1143) ^ (1564307779 * ((((2 * v28) | 0xB7E528C) - v28 - 96414022) ^ 0x92B2E555));
  (*(v24 + 8 * (v27 ^ 0x1DCCu)))(&a16);
  v29 = 742307843 * ((&a16 + 1180515434 - 2 * (&a16 & 0x465D3C6A)) ^ 0x587FB13F);
  a16 = (v27 - 2250) ^ v29;
  a19 = v29 ^ ((v22 ^ 0xF7FADFFF) + 1341124455 + ((2 * v22) & 0xEFF5BFFE));
  a18 = v21;
  a21 = a11;
  v30 = (*(v24 + 8 * (v27 + 576)))(&a16);
  return (*(v24 + 8 * ((698 * (a17 == v25)) ^ v27)))(v30);
}

uint64_t sub_2238460E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, char a21, char *a22, unsigned int a23, uint64_t a24, char *a25)
{
  a23 = v26 + 1037613739 * ((&a21 + 357112195 - 2 * (&a21 & 0x15491983)) ^ 0xC44B34FC) + 2272;
  a24 = a17;
  a25 = &a19;
  a22 = &a15;
  v28 = (*(v27 + 8 * (v26 + 3329)))(&a21);
  return (*(v27 + 8 * ((((v26 + 1343880429) & 0x202FF ^ 0xBF3) * (a12 < v25)) ^ v26)))(v28);
}

void lCUad()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D8A8) ^ 0x74)) ^ byte_2238FA960[byte_223907D60[(-33 * ((qword_27D09D558 + dword_27D09D8A8) ^ 0x74))] ^ 0xD0]) - 16];
  v1 = off_2836EB850 - 4;
  v2 = off_2836EB7F0;
  v3 = qword_2836EB200[(*(off_2836EB7F0 + (*(off_2836EB850 + (-33 * ((qword_27D09D558 + *v0) ^ 0x74)) - 4) ^ 0xFCu)) ^ (-33 * ((qword_27D09D558 + *v0) ^ 0x74))) - 166];
  v4 = &v6[*v3 - *v0];
  *v0 = 1321670111 * v4 + 0x448BD34F94FDFB74;
  *v3 = 1321670111 * (v4 ^ 0x448BD34F94FDFB74);
  v7[1] = (1037613739 * (((v7 | 0x779E856C) - (v7 & 0x779E856C)) ^ 0xA69CA813)) ^ 0x86F54BA0;
  LOBYTE(v3) = -33 * (*v0 ^ 0x74 ^ *v3);
  v5 = qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D8A8) ^ 0x74)) ^ byte_2238FD8F0[byte_2238FA760[(-33 * ((qword_27D09D558 - dword_27D09D8A8) ^ 0x74))] ^ 0xC9]) - 76];
  (*(v5 + 8 * ((v3 ^ v2[v1[v3] ^ 0x64]) + 4058)))(v7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22384644C(uint64_t a1)
{
  v6 = (*(v2 + 8 * (v4 + 2019)))(a1, **(v1 + 8 * (v4 - 1914)), 0, v3 + 4);
  v7 = (*(v2 + 8 * (v4 ^ 0x1843)))(a1);
  v8 = v6 == v4 + 1821 + v4 - 1368 - 4653;
  return (*(v2 + 8 * (v8 | (2 * v8) | v4)))(v7);
}

uint64_t sub_2238464C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16, char *a17)
{
  v22 = 675097751 * ((689940573 - (&a12 | 0x291FA85D) + (&a12 | 0xD6E057A2)) ^ 0x95A07234);
  a17 = &a11;
  a13 = (v21 + 1421511209) ^ v22;
  a14 = v22 ^ 0x12E799B8;
  a16 = v22 ^ 0xBEB0E746;
  a12 = a10;
  v23 = (*(v17 + 8 * (v21 ^ 0x1504)))(&a12);
  return (*(v17 + 8 * ((3224 * (a15 == v20 + ((v18 + v21 + v19 - 732) | 0x805) - 2095)) ^ v21)))(v23);
}

void sub_2238465A4(uint64_t a1)
{
  v2 = qword_2836EB200[((-33 * (dword_27D09D848 ^ 0x74 ^ qword_27D09D558)) ^ byte_2238FD8F0[byte_2238FA760[(-33 * (dword_27D09D848 ^ 0x74 ^ qword_27D09D558))] ^ 0x18]) + 166];
  v3 = off_2836EB438 - 8;
  v4 = off_2836EB808;
  v5 = qword_2836EB200[(*(off_2836EB808 + (*(off_2836EB438 + (-33 * ((qword_27D09D558 + *v2) ^ 0x74)) - 8) ^ 0xFBu)) ^ (-33 * ((qword_27D09D558 + *v2) ^ 0x74))) + 25];
  v6 = &v10[*v2 + *v5];
  v7 = 1321670111 * v6 - 0x448BD34F94FDFB74;
  v8 = 1321670111 * (v6 ^ 0x448BD34F94FDFB74);
  *v2 = v7;
  *v5 = v8;
  LODWORD(v5) = *v2;
  v9 = qword_2836EB200[((-33 * (dword_27D09D848 ^ 0x74 ^ qword_27D09D558)) ^ byte_2238FA960[byte_223907D60[(-33 * (dword_27D09D848 ^ 0x74 ^ qword_27D09D558))] ^ 0xD0]) - 146];
  (*(v9 + 8 * (((-33 * ((v8 - v5) ^ 0x74)) ^ v4[v3[(-33 * ((v8 - v5) ^ 0x74))] ^ 0xFD]) + 3786)))(qword_2836EB200[(*(off_2836EB798 + (*(off_2836EB3D8 + (-33 * ((v8 + v5) ^ 0x74)) - 12) ^ 0x18u) - 4) ^ (-33 * ((v8 + v5) ^ 0x74))) + 4] - 12, sub_22388468C);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_223846784@<X0>(int a1@<W0>, int a2@<W3>, int a3@<W8>)
{
  HIDWORD(v14) = a1 ^ 0x7FC36DE;
  LODWORD(v14) = a1 ^ v8;
  v15 = (v14 >> 27) + (a3 ^ v11) + ((v11 + (v7 ^ a2) + (v4 ^ 0x81B) - ((2 * (v7 ^ a2)) & 0xBFF86DBC) - 281) ^ v5) + (*(v3 + 4 * (v6 + v10)) ^ v13) + 288630501;
  return (*(v9 + 8 * ((51 * (v6 + 1 == v12 + 64)) ^ v4)))(v15 ^ ((v15 ^ 0x7CCEAE08) - 975162119) ^ ((v15 ^ 0x2701EFFC) - 1641057011) ^ ((v15 ^ 0xE1E1DB00) + 1489977841) ^ ((v15 ^ 0xFCFFFFFB) + 1171350796) ^ 0x992D53D1);
}

uint64_t sub_2238468A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  a20 = (v21 - 2030746590) ^ (1037613739 * ((2 * (&a19 & 0x3ACF14F0) - &a19 - 986649848) ^ 0x1432C677));
  v22 = (*(v20 + 8 * (v21 ^ 0x1778)))(&a19);
  return (*(v20 + 8 * ((a19 == (v21 ^ 0xBF719B23) - 1788018263) ^ v21)))(v22);
}

uint64_t sub_223846954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16, char *a17)
{
  v20 = 675097751 * (&a12 ^ 0x43402596);
  a13 = (v19 + 1421509239) ^ v20;
  a14 = v20 ^ 0x1EC35239;
  a16 = v20 ^ 0xBEB0E746;
  a12 = a11;
  a17 = &a10;
  v21 = (*(v17 + 8 * (v19 + 850)))(&a12);
  return (*(v17 + 8 * ((583 * (a15 == ((v19 - 248184687) & 0xCAFBE4 ^ (v18 - 1728)))) ^ v19)))(v21);
}

void sub_223846A08(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4) + 1785193651 * (a1 ^ 0xF621A42C);
  v2 = *(a1 + 8);
  v4[0] = v1 + 843532609 * (v4 ^ 0x5C4D5485) - 1200;
  v5 = v2;
  v3 = qword_2836EB200[v1 - 2072];
  (*(v3 + 8 * (v1 ^ 0x1858)))(v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_223846B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v40 = 1785193651 * ((v39 - 885888820 - 2 * ((v39 - 168) & 0xCB326974)) ^ 0x3D13CD58);
  *(v39 - 168) = a2;
  *(v39 - 160) = v40 + v37 + 366;
  *(v39 - 156) = a15 - v40;
  v41 = (*(v38 + 8 * (v37 + 4113)))(v39 - 168);
  v42 = (((v37 + 1062154136) & 0xC0B0D1E9 ^ a37 & 0x3F ^ 0x17DAFD4A) + 856806292) ^ ((a37 & 0x3F ^ 0x201C4901) + 81225242) ^ ((a37 & 0x3F ^ 0x37C6B58A) + 319658643);
  *(&a28 + v42 - 617295641) = -48;
  return (*(v38 + 8 * ((3982 * (v42 - 617295697 < 0xFFFFFFC8)) ^ v37)))(v41);
}

uint64_t sub_223846DE8()
{
  v6 = v0 & 0xA58E62DF ^ 0x496;
  (*(v5 + 8 * (v0 & 0xA58E62DF ^ 0x10F8)))(*v8, v11, v12);
  *(v4 - 192) = v3 + ((((v4 - 192) | 0x753A39B1) + (~(v4 - 192) | 0x8AC5C64E)) ^ 0x6B18B4E5) * v2 + v6;
  result = (*(v9 + 8 * (v6 + 3068)))(v4 - 192);
  *(v1 + 24) = v10;
  return result;
}

void sub_223846E18(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  a6 = v6;
  a5 = (v8 ^ 0xBB5) - 843532609 * (&a3 ^ 0x5C4D5485) + 813;
  a3 = v7;
  a4 = v7;
  (*(a1 + 8 * (v8 ^ 0x1CF4)))(&a3);
  JUMPOUT(0x2238228DCLL);
}

uint64_t sub_223846EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v64 = (*(v63 + 8 * (v62 ^ 0x1681)))(1576, 0x105004009637391);
  STACK[0x410] = v64;
  return (*(a62 + 8 * (((v64 == 0) * (((v62 - 1505) | 0x400) - 1121)) ^ v62)))();
}

void PIc2v4FsmbHb6FcVO9Fu()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[(*(off_2836EB658 + (*(off_2836EB6D8 + (-33 * ((qword_27D09D558 + dword_27D09D7F0) ^ 0x74))) ^ 3u) - 4) ^ (-33 * ((qword_27D09D558 + dword_27D09D7F0) ^ 0x74))) - 192];
  v1 = qword_2836EB200[((-33 * (*v0 ^ qword_27D09D558 ^ 0x74)) ^ byte_223907B60[byte_223902660[(-33 * (*v0 ^ qword_27D09D558 ^ 0x74))] ^ 0xF0]) + 39];
  v2 = &v4[*v0 + *v1];
  *v0 = 1321670111 * v2 + 0x448BD34F94FDFB74;
  *v1 = 1321670111 * (v2 ^ 0x448BD34F94FDFB74);
  v5[1] = (1037613739 * ((((v5 | 0xCE60E8F0) ^ 0xFFFFFFFE) - (~v5 | 0x319F170F)) ^ 0xE09D3A70)) ^ 0x86F54BA0;
  LOBYTE(v1) = -33 * ((*v1 - *v0) ^ 0x74);
  v3 = qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D7F0) ^ 0x74)) ^ byte_2238FD9F0[byte_2238FA860[(-33 * ((qword_27D09D558 - dword_27D09D7F0) ^ 0x74))] ^ 0xFE]) + 3];
  (*(v3 + 8 * ((*(off_2836EB798 + (*(off_2836EB3D8 + v1 - 12) ^ 0xC9u) - 4) ^ v1) + 3951)))(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2238471C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v19 = 2 * (v18 ^ 0xFD1);
  a17 = (v19 - 2030745442) ^ (1037613739 * ((&a16 + 2000140603 - 2 * (&a16 & 0x7737B93B)) ^ 0xA6359444));
  v20 = (*(v17 + 8 * (v19 ^ 0x1304)))(&a16);
  return (*(v17 + 8 * ((3017 * (a16 == (v19 ^ 0x54DE9D04))) ^ v19)))(v20);
}

uint64_t sub_223847264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, unsigned int a18)
{
  a18 = (v18 + 2534) ^ (843532609 * (((&a15 | 0x23757B84) - (&a15 & 0x23757B84)) ^ 0x7F382F01));
  a15 = a11;
  a17 = &a13;
  (*(v20 + 8 * (v18 + 3716)))(&a15);
  LODWORD(a15) = (v18 + 2228) ^ (1504884919 * (&a15 ^ 0xFBC3B71B));
  a16 = a11;
  v22 = (*(v20 + 8 * (v18 + 3727)))(&a15);
  v23 = HIDWORD(a15) == v21 + (v18 ^ v19) - 527;
  return (*(v20 + 8 * (((8 * v23) | (16 * v23)) ^ v18)))(v22);
}

uint64_t sub_22384756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51)
{
  v55 = (v51 - 1036694806) & 0x3DCAAFBE;
  v56 = (*(v52 + 8 * (v51 ^ 0x1816)))(&a51, 0);
  v57 = v51 ^ 0x7F5;
  (*(v52 + 8 * v57))(v56);
  *a30 = (*(v52 + 8 * v57))();
  v53[1] = *a30 + ((1664525 * (*v53 ^ (*v53 >> 30))) ^ v53[1]);
  v58 = 50899313 * ((0x7430144D45E80E4FLL - ((v54 - 160) | 0x7430144D45E80E4FLL) + ((v54 - 160) | 0x8BCFEBB2BA17F1B0)) ^ 0x38C49C5490DCDBCALL);
  *(v54 - 160) = v55 - 2095452634 - v58;
  *(v54 - 156) = ((v55 - 2095452634) ^ 0x7F) + v58;
  *(v54 - 152) = (v55 + 55969246) ^ v58;
  *(v54 - 148) = ((v55 - 2095452634) ^ 0x3B) + v58;
  *(v54 - 128) = v58;
  *(v54 - 136) = v58 ^ 0x26F;
  *(v54 - 120) = 2 - v58;
  v59 = (*(v52 + 8 * (v55 ^ 0x1280)))(v54 - 160);
  return (*(v52 + 8 * *(v54 - 144)))(v59);
}

uint64_t sub_223847CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, unsigned int a16)
{
  a13 = a12;
  a15 = &a11;
  a16 = (v16 + 728) ^ (843532609 * ((((2 * &a13) | 0xFA11C24A) - &a13 + 49749723) ^ 0xA145B5A0));
  (*(v17 + 8 * (v16 + 1910)))(&a13);
  a14 = a12;
  LODWORD(a13) = (v16 + 422) ^ (1504884919 * (((&a13 | 0x1238AA3F) - &a13 + (&a13 & 0xEDC755C0)) ^ 0xE9FB1D24));
  v18 = (*(v17 + 8 * (v16 ^ 0x781)))(&a13);
  return (*(v17 + 8 * ((1377 * (HIDWORD(a13) == (v16 ^ 0x54DE9670))) ^ v16)))(v18);
}

void sub_223847DFC(uint64_t a1)
{
  v2 = qword_2836EB200[((-33 * (dword_27D09D568 ^ 0x74 ^ qword_27D09D558)) ^ byte_2238FD7F0[byte_2238FA660[(-33 * (dword_27D09D568 ^ 0x74 ^ qword_27D09D558))] ^ 0xFD]) + 43];
  v3 = off_2836EB6D8;
  v4 = off_2836EB658 - 4;
  v5 = qword_2836EB200[(*(off_2836EB658 + (*(off_2836EB6D8 + (-33 * ((qword_27D09D558 + *v2) ^ 0x74))) ^ 3u) - 4) ^ (-33 * ((qword_27D09D558 + *v2) ^ 0x74))) - 194];
  v6 = 1321670111 * (((*v5 ^ *v2) - &v8) ^ 0x448BD34F94FDFB74);
  *v2 = v6;
  *v5 = v6;
  LODWORD(v2) = *v2;
  v7 = qword_2836EB200[((-33 * (dword_27D09D568 ^ 0x74 ^ qword_27D09D558)) ^ byte_2238FA560[byte_223907C60[(-33 * (dword_27D09D568 ^ 0x74 ^ qword_27D09D558))] ^ 0x37]) - 62];
  (*(v7 + 8 * ((*(off_2836EB808 + (*(off_2836EB438 + (-33 * ((v6 + v2) ^ 0x74)) - 8) ^ 0xFDu)) ^ (-33 * ((v6 + v2) ^ 0x74))) + 3786)))(qword_2836EB200[((-33 * (v2 ^ 0x74 ^ v6)) ^ v4[v3[(-33 * (v2 ^ 0x74 ^ v6))] ^ 3]) - 173] - 12, sub_22388468C);
  __asm { BRAA            X9, X17 }
}

void sub_2238483D4(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  a3 = v7 - 1419 - 435584651 * ((-173859705 - (&a3 | 0xF5A31C87) + (&a3 | 0xA5CE378)) ^ 0x676EF92E) + 708;
  a4 = v6;
  a5 = v5;
  (*(a1 + 8 * ((v7 - 1419) ^ 0x1708)))(&a3);
  JUMPOUT(0x2238228DCLL);
}

uint64_t sub_223848444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, int a16, int a17)
{
  *v17 = a14;
  if (a11)
  {
    v20 = a17 == ((((v18 ^ 0x165) - 3178) | 0x650) ^ 0x67A);
  }

  else
  {
    v20 = 1;
  }

  v22 = v20 || a9 == 0;
  return (*(v19 + 8 * ((v22 * ((((v18 ^ 0x165) - 1420) | 0x827) ^ 0xF1A)) ^ v18 ^ 0x165)))();
}

uint64_t sub_2238484B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, int a15, int a16)
{
  v20 = 1564307779 * (((&a13 | 0xB6BC792) - &a13 + (&a13 & 0xF4943868)) ^ 0x9C660B81);
  a13 = (v18 + 1603) ^ v20;
  a14 = a10;
  a16 = 1264667083 * v16 - v20 + ((9 * (v18 ^ 0x3CE)) ^ 0x3E626C81);
  v21 = (*(v17 + 8 * (v18 + 3318)))(&a13);
  return (*(v17 + 8 * ((221 * (a15 == v19)) ^ v18)))(v21);
}

uint64_t sub_2238485B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, unsigned int a19, unsigned int a20, uint64_t a21)
{
  v28 = &a17;
  a20 = -1564307779 * (((v28 | 0xF906CD13) - (v28 & 0xF906CD13)) ^ 0x6E0B0100) + 1264667083 * v24 + 1046635743;
  a17 = (v27 - 614) ^ (1564307779 * (((v28 | 0xF906CD13) - (v28 & 0xF906CD13)) ^ 0x6E0B0100));
  a18 = a12;
  v29 = v27 ^ v26;
  (*(v25 + 8 * v29))(&a17);
  v30 = 742307843 * (&a17 ^ 0x1E228D55);
  a21 = a12;
  a19 = v30 ^ ((v23 ^ 0xF7FACF66) + 1341128704 + ((2 * v23) & 0xEFF59ECC));
  a17 = (v27 - 1721) ^ v30;
  a18 = v22;
  (*(v25 + 8 * (v27 + 1105)))(&a17);
  v31 = 742307843 * ((&a17 & 0xB4A42107 | ~(&a17 | 0xB4A42107)) ^ 0x557953AD);
  a18 = 0;
  a21 = a12;
  a19 = v31 ^ 0x47EACF66;
  a17 = (v27 - 1721) ^ v31;
  (*(v25 + 8 * (v27 ^ 0x1BD3)))(&a17);
  a20 = -1564307779 * ((2 * (&a17 & 0x683BD718) - &a17 + 398731489) ^ 0x80C9E4F2) + (((v27 - 579915856) & 0x99637CEF) - 1308749470) * a11 + 1046635743;
  a18 = a12;
  a17 = (v27 - 614) ^ (1564307779 * ((2 * (&a17 & 0x683BD718) - &a17 + 398731489) ^ 0x80C9E4F2));
  v32 = (*(v25 + 8 * v29))(&a17);
  return (*(v25 + 8 * ((1998 * (a19 == v21)) ^ v27)))(v32);
}

uint64_t sub_22384889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13, uint64_t a14, unsigned int a15, unsigned int a16, uint64_t a17)
{
  a14 = a9;
  a16 = -1564307779 * (&a12 ^ 0x970DCC13) + ((v22 - 178598009) & 0xE152CEEF ^ 0xAA338123) * v19 + 1046635743;
  a12 = (v22 - 270) ^ (1564307779 * (&a12 ^ 0x970DCC13));
  (*(v20 + 8 * (v22 ^ 0x1A67)))(&a12);
  v23 = 742307843 * ((((2 * &a12) | 0x13622D2) - &a12 + 2137321111) ^ 0x9EB99C3C);
  a12 = (v22 - 1377) ^ v23;
  a15 = v23 ^ ((v18 ^ 0x6FEECF7E) - 671350808 + ((2 * v18) & 0xDFDD9EFC));
  a14 = v17;
  a17 = a9;
  v24 = (*(v20 + 8 * (v22 + 1449)))(&a12);
  return (*(v20 + 8 * ((1539 * (a13 == v21 + 2447)) ^ v22)))(v24);
}

void sub_2238489E8(_DWORD *a1)
{
  v1 = *a1 ^ (1564307779 * ((((2 * a1) | 0x8DBFB438) - a1 - 1189075484) ^ 0xD1D2160F));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_223848FF0(int8x16_t a1)
{
  v7 = (v2 - 32);
  v8 = (v3 - 32);
  v9 = veorq_s8(*v8, a1);
  v7[-1] = veorq_s8(v8[-1], a1);
  *v7 = v9;
  return (*(v6 + 8 * (((((v4 + 62) ^ (v1 == 32)) & 1) * v5) ^ (v4 + 746))))();
}

void sub_223849000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v32 - 112) = v30;
  *(v32 - 104) = v31;
  *(v32 - 144) = (v28 + 2706) ^ (((((v32 - 144) | 0xBA3E774F) + (~(v32 - 144) | 0x45C188B0)) ^ 0x2D33BB5D) * v29);
  *(v32 - 120) = &a28;
  *(v32 - 136) = &a24;
  *(v32 - 128) = &a24;
  JUMPOUT(0x223849070);
}

uint64_t sub_223849088@<X0>(int a1@<W1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _DWORD *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{
  *a25 = a37 + 1;
  v40 = *v37;
  v41 = a12 + a2 - 1778977833;
  v42 = v39 - 160;
  *(v42 + 32) = a11;
  *(v39 - 152) = a2 - 1778977833 - a12;
  *(v39 - 148) = v41 - 81;
  *(v42 + 48) = v40 - a12;
  *(v39 - 144) = (a2 - 855935740) ^ a12;
  *(v39 - 140) = v41 - 4;
  *(v39 - 120) = a12;
  v43 = (*(v38 + 8 * (a2 ^ (a1 - 4052))))(v39 - 152);
  return (*(v38 + 8 * *(v39 - 136)))(v43);
}

_DWORD **sub_223849128@<X0>(_DWORD **result@<X0>, int a2@<W8>)
{
  if (a2 - 1423825592 < (((v3 - 468) | 8) ^ 0x1CF2u))
  {
    v2 = a2;
  }

  **result = v2;
  return result;
}

uint64_t sub_223849250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  *(*(v49 + 8 * (v47 ^ 0x365A930F)) - 4) = 4;
  v51 = (*(v48 + 8 * (v47 - 911901492)))(&a46, 0, 1024);
  *(v50 - 160) = &a46;
  return (*(v48 + 8 * ((((((v46 + v47 + 532) | 0x34) + 1866603304) & 0x90BDE5AB) + 911904259) ^ 0x365A9842 ^ ((v46 + v47 + 532) | 0x34))))(v51);
}

uint64_t sub_2238492B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  *a5 = 0;
  *a6 = 0;
  a20 = (1037613739 * ((-1049237991 - (&a19 | 0xC175E619) + (&a19 | 0x3E8A19E6)) ^ 0xEF883499)) ^ 0x86F54BA0;
  v21 = (*(v20 + 32816))(&a19);
  return (*(v20 + 8 * ((249 * (a19 == 1423875590)) ^ 0x274u)))(v21);
}

uint64_t sub_22384936C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25)
{
  v28 = *(a17 + 24);
  memset((v27 - 204), 80, 16);
  v29 = 1037613739 * ((v27 - 168) ^ 0xD1022D7F);
  *(v27 - 152) = v28;
  *(v27 - 144) = v27 - 188;
  *(v27 - 160) = v27 - 204;
  *(v27 - 136) = (v25 + 2712) ^ v29;
  *(v27 - 128) = &a25;
  *(v27 - 168) = v29 + 1460969711;
  v30 = (*(v26 + 8 * (v25 ^ 0x102A)))(v27 - 168);
  return (*(v26 + 8 * (((*(v27 - 132) == 1116 * (v25 ^ 0x44) + 1423873358) * (((v25 ^ 0x44) + 5) ^ 0x8F9)) ^ v25)))(v30);
}

uint64_t sub_223849440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20)
{
  v25 = 2 * &a17;
  LODWORD(a17) = (v20 + 2038) ^ (1564307779 * (((v25 | 0xE3A5A8CC) - &a17 - 1909642342) ^ 0xE6DF1875));
  a18 = a13;
  HIDWORD(a19) = -1564307779 * (((v25 | 0xE3A5A8CC) - &a17 - 1909642342) ^ 0xE6DF1875) + 1264667083 * v22 + 1046635743;
  (*(v23 + 8 * (v20 + 3753)))(&a17);
  a20 = v20 - 210068311 * (((v25 | 0x2541F752) - &a17 - 312540073) ^ 0x45CF617E) - 155;
  a19 = a13;
  a17 = v21;
  v26 = (*(v23 + 8 * (v20 ^ 0x110F)))(&a17);
  return (*(v23 + 8 * (((a18 != v24) * (((v20 - 1088869806) & 0x40E6DDFC) - 2312)) ^ v20)))(v26);
}

uint64_t sub_2238495CC(uint64_t a1, unsigned int a2)
{
  v7 = v5 + 66304945 + 5 * (v3 ^ 0xC97);
  v8 = v7 < ((v6 + v3 + 3588) & v4 ^ 0x2A53EDB6u);
  v9 = a2 + 710141953 < v7;
  if (a2 > 0xD5AC17FE == v8)
  {
    v8 = v9;
  }

  return (*(v2 + 8 * ((v8 | (4 * v8)) ^ v3)))();
}

uint64_t sub_223849650@<X0>(int a1@<W3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54)
{
  v58 = *(v55 + v54 * v56 + 36);
  v60 = (v58 - 1763119204 > ((a2 + 14) ^ 0x5DA011FF) || v58 - 1763119204 < a54) && v58 != ((a2 - 441) ^ 0x67B ^ (a1 - 3214));
  return (*(v57 + 8 * ((a2 - 441) ^ (2 * v60))))();
}

uint64_t sub_2238496B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, char *a18, int a19)
{
  a17 = (50899313 * (((&a17 | 0xFAEC3775) - (&a17 & 0xFAEC3775)) ^ 0xD0271D0F)) ^ 0xF11;
  a18 = &a12;
  v20 = (*(v19 + 32872))(&a17);
  return (*(v19 + 8 * ((1278 * (a19 == 1423875590)) ^ 0x996)))(v20);
}

uint64_t sub_223849784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, int a18, unsigned int a19, char *a20)
{
  v22 = 675097751 * (&a15 ^ 0x43402596);
  a15 = a10;
  a19 = v22 ^ 0xBEB0E746;
  a16 = (v21 + 1421511698) ^ v22;
  a17 = v22 ^ 0xBF21633F;
  a20 = &a14;
  v23 = (*(v20 + 8 * (v21 ^ 0x1333)))(&a15);
  return (*(v20 + 8 * (((a18 == ((3 * (v21 ^ 0x3D1)) ^ 0x54DE9CFC)) * (((v21 ^ 0x3D1) + 2232) ^ 0xD76)) ^ v21)))(v23);
}

uint64_t sub_223849840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, int a14, int a15, char a16, uint64_t a17, _BYTE *a18, _BYTE *a19, char *a20, char *a21, _BYTE *a22, uint64_t a23)
{
  LODWORD(a22) = (v25 - 46) ^ (843532609 * ((((2 * &a19) | 0xAB6EBB08) - &a19 - 1438080388) ^ 0x9FA0901));
  a21 = &a11;
  a19 = a18;
  (*(v24 + 8 * (v25 + 1136)))(&a19);
  a20 = &a13;
  a22 = a18;
  a23 = v23;
  LODWORD(a21) = v25 + 1037613739 * (((&a19 | 0x46A156FD) - (&a19 & 0x46A156FD)) ^ 0x97A37B82) + 114;
  (*(v24 + 8 * (v25 + 1171)))(&a19);
  a19 = a18;
  a21 = &a16;
  LODWORD(a22) = (v25 - 46) ^ (843532609 * ((&a19 - 1765826762 - 2 * (&a19 & 0x96BF9F36)) ^ 0xCAF2CBB3));
  (*(v24 + 8 * (v25 ^ 0x490)))(&a19);
  LODWORD(a19) = (v25 - 352) ^ (1504884919 * ((2 * (&a19 & 0x5DB74D00) - &a19 + 575189755) ^ 0xD98B05E0));
  a20 = a18;
  v26 = (*(v24 + 8 * (v25 + 1147)))(&a19);
  return (*(v24 + 8 * (((HIDWORD(a19) == ((v25 - 2045752453) & 0xA9CE) + 1423875392) * ((2 * (v25 ^ 0x90D)) ^ 0x21F)) ^ v25)))(v26);
}

uint64_t sub_223849B20@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = *(v2 + v3 - 1 - 31);
  v7 = a1 + v3 - 1;
  *(v7 - 15) = *(v2 + v3 - 1 - 15);
  *(v7 - 31) = v6;
  return (*(v5 + 8 * ((61 * (((v4 + a2 + 399) | 0xC5Cu) - 3805 == (v3 & 0xFFFFFFE0))) ^ (v4 + a2))))();
}

uint64_t sub_223849B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, char *a20, int a21)
{
  a20 = &a14;
  a19 = (50899313 * ((1740578099 - (&a19 | 0x67BF1D33) + (&a19 | 0x9840E2CC)) ^ 0xB28BC8B6)) ^ 0xF11;
  v24 = (*(v22 + 32872))(&a19);
  return (*(v22 + 8 * ((1395 * (a21 == ((v23 - 25) ^ 0x3EB))) ^ v21)))(v24);
}

uint64_t sub_223849C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, unsigned int a15, char *a16, int a17)
{
  a16 = &a12;
  a15 = (50899313 * ((-1202847699 - (&a15 | 0xB84E002D) + (&a15 | 0x47B1FFD2)) ^ 0x6D7AD5A8)) ^ 0xF11;
  v18 = (*(v17 + 32872))(&a15);
  return (*(v17 + 8 * ((941 * (a17 != 1423875590)) ^ 0x1BEu)))(v18);
}

uint64_t sub_223849E04@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v60 = *(v56 + 4 * (v57 - 1));
  *(v56 + 4 * v57) = ((1566083941 * (v60 ^ (v60 >> 30))) ^ *(v56 + 4 * v57)) - v57;
  v61 = 675097751 * ((~((v59 - 192) | 0x3F10734A6099D64ALL) + ((v59 - 192) & 0x3F10734A6099D64ALL)) ^ 0x4107261EDC260C23);
  *(v59 - 176) = (v57 + 1) ^ v61;
  *(v59 - 160) = v61 + 623;
  *(v59 - 152) = v61 ^ 1;
  *(v59 - 168) = ((a2 - 1708473447) ^ 0x7D) - v61;
  *(v59 - 164) = (a2 - 1708473447) ^ v61;
  *(v59 - 192) = ((a2 - 1708473447) ^ 0x17) - v61;
  *(v59 - 188) = v58 - v61 + a2;
  v62 = (*(a1 + 8 * (a2 + 2983)))(v59 - 192);
  return (*(a56 + 8 * *(v59 - 184)))(v62);
}

uint64_t sub_223849F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, unsigned int a14, int a15, unsigned int a16, char *a17)
{
  v20 = 675097751 * (((&a12 | 0xF0E2DBAD) - &a12 + (&a12 & 0xF1D2450)) ^ 0xB3A2FE3B);
  a16 = v20 ^ 0xBEB0E746;
  a17 = &a11;
  a12 = a9;
  a13 = (v19 + 1421512164) ^ v20;
  a14 = v20 ^ 0xFCF84BCB;
  v21 = (*(v18 + 8 * (v19 + 3775)))(&a12);
  return (*(v18 + 8 * ((2909 * (a15 == (((v19 - 141) | 0x625) ^ (v17 + v19 + 1854 - 3502)))) ^ v19)))(v21);
}

uint64_t sub_22384A01C@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5) - ((2 * *(v1 + v5)) & 0xA0) + 80;
  return (*(v4 + 8 * (((v5 == 0) * (((v3 - 135) | 0x264) ^ 0x43E)) ^ v3)))();
}

uint64_t sub_22384A064()
{
  v6 = v0 ^ (v5 + 258);
  v7 = v4 + v0;
  v16 = (v4 + v0 + 1814) ^ (1504884919 * ((((2 * &v16) | 0xF19A055C) - &v16 - 2026701486) ^ 0x830EB5B5));
  v18 = v14;
  (*(v1 + 8 * (v0 ^ (v5 - 274))))(&v16);
  if (v17 == v2 + v6 - 3459)
  {
    v8 = 2111815191;
  }

  else
  {
    v8 = 1558118078;
  }

  if (v17 == v2 + v6 - 3459)
  {
    v9 = -71336914;
  }

  else
  {
    v9 = -1178731140;
  }

  if (v17 == v2 + v6 - 3459)
  {
    v10 = -687939601;
  }

  else
  {
    v10 = -134242488;
  }

  v11 = (v8 ^ v15) + v10 + (v9 & (2 * v15));
  v18 = v14;
  v16 = v7 - ((((&v16 | 0xA94E6002) ^ 0xFFFFFFFE) - (~&v16 | 0x56B19FFD)) ^ 0xB01933ED) * v3;
  (*(v1 + 8 * (v7 + 3330)))(&v16);
  v18 = v13;
  v16 = v6 - ((((2 * &v16) | 0xA148B4EC) - &v16 + 794535306) ^ 0x360CF666) * v3 - 2685;
  (*(v1 + 8 * (v6 + 645)))(&v16);
  return (v11 - 1423875590);
}

uint64_t sub_22384A284@<X0>(uint64_t a1@<X8>)
{
  v5.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v5.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v6.i64[0] = 0x5050505050505050;
  v6.i64[1] = 0x5050505050505050;
  v7 = (v3 ^ 0xFFFFFFFFFFFFF99ALL) + v2;
  v8 = *(v1 + v7 - 15);
  v9 = *(v1 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = vaddq_s8(vsubq_s8(v8, vandq_s8(vaddq_s8(v8, v8), v5)), v6);
  *(v10 - 31) = vaddq_s8(vsubq_s8(v9, vandq_s8(vaddq_s8(v9, v9), v5)), v6);
  return (*(v4 + 8 * ((232 * ((v2 & 0xE0) != 32)) ^ (v3 + 1816))))();
}

uint64_t sub_22384A30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, int a17, int a18)
{
  v24 = &a15;
  v25 = v23 + 2174;
  a16 = a14;
  a15 = (v23 + 2174) ^ (1564307779 * ((2 * (v24 & 0x112FCF30) - v24 - 288345910) ^ 0x79DDFCD9));
  a18 = -1564307779 * ((2 * (v24 & 0x112FCF30) - v24 - 288345910) ^ 0x79DDFCD9) + 1264667083 * v21 + 1046635743;
  (*(v22 + 8 * (v23 + 3889)))(&a15);
  v26 = 1564307779 * ((((&a15 | 0xD8486C2) ^ 0xFFFFFFFE) - (~&a15 | 0xF27B793D)) ^ 0x6576B52E);
  a15 = (v23 + 2174) ^ v26;
  a16 = a14;
  a18 = 1264667083 * v20 - v26 + 1046635743;
  (*(v22 + 8 * (v23 + 3889)))(&a15);
  if (v19)
  {
    v27 = 1046635743;
  }

  else
  {
    v27 = -1983664470;
  }

  v28 = 1564307779 * ((((2 * &a15) | 0x739F4BBC) - &a15 - 969909726) ^ 0xAEC269CD);
  a15 = v25 ^ v28;
  a18 = v27 - v28;
  a16 = a14;
  (*(v22 + 8 * (v23 ^ 0x10F3)))(&a15);
  v29 = *v18;
  v30 = 1564307779 * ((1071406926 - (&a15 | 0x3FDC5F4E) + (&a15 | 0xC023A0B1)) ^ 0x572E6CA2);
  a15 = v25 ^ v30;
  a18 = 1046635743 - v30 + ((v23 - 195) | 0x518) + 1264667083 * v29 - 1338;
  a16 = a14;
  v31 = (*(v22 + 8 * (v23 + 3889)))(&a15);
  return (*(v22 + 8 * ((3736 * (a17 == 1423875590)) ^ v23)))(v31);
}

uint64_t sub_22384A5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 128) = (v17 - 561) ^ (1504884919 * ((((v18 - 136) | 0x3644561D) - (v18 - 136) + ((v18 - 136) & 0xC9BBA9E0)) ^ 0xCD87E106));
  *(v18 - 136) = a13;
  *(v18 - 120) = &a15;
  v19 = (*(v15 + 8 * (v17 ^ 0x13DF)))(v18 - 136);
  return (*(v15 + 8 * (((((v17 + 1790716585) & 0x9543DBFD) - 2647) * (v16 != 1)) ^ v17)))(v19);
}

uint64_t sub_22384A698()
{
  v3 = (v0 + 1565223447) & 0x68F;
  v9 = v6;
  v8 = v3 - ((((2 * (&v8 ^ 0xC837B42B)) | 0x2230CE88) - (&v8 ^ 0xC837B42B) - 286811972) ^ 0x3F877F7F) * v2 + 247;
  (*(v1 + 8 * (v3 + 3577)))(&v8);
  v8 = (v3 ^ 0x39C) - ((&v8 & 0x39EAE97B | ~(&v8 | 0x39EAE97B)) ^ 0x20BDBA94) * v2 + 371;
  v9 = v5;
  (*(v1 + 8 * (v3 ^ 0x1207u)))(&v8);
  return ((2 * v7) & 0xEFBD7C0E) + (v7 ^ 0xF7DEBC08 ^ v3) + 136397305;
}

uint64_t sub_22384A6E0()
{
  v7 = (v2 - 1637343993) & 0x6197E6EF;
  *v6 = v6[623] ^ v1 ^ 0x26E ^ ((((((v1 ^ v7 ^ 0xFFFFFFFFFFFFF954) + v0) ^ (v4 - v1)) - 1) & (v1 - v0)) >> 63);
  return (*(v3 + 8 * ((85 * ((~(v7 - 1707) ^ v1 & 0x1825FC90) + v5 == 0)) ^ v7)))();
}

uint64_t sub_22384A7B8(uint64_t a1)
{
  v1 = 1564307779 * ((-2 - ((a1 | 0x5169949C) + (~a1 | 0xAE966B63))) ^ 0x399BA770);
  v2 = *(a1 + 20) + v1;
  v3 = v1 ^ *(a1 + 16) ^ 0x72DE760C;
  if (v3 < 0)
  {
    v3 = -v3;
  }

  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 528399629;
  v5 = v4 - 528399629 < 0;
  v7 = 528399629 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(qword_2836EB200[v2 - 2941] + 8 * ((1830 * ((v3 >> 5) < v7)) ^ v2)))();
}

uint64_t sub_22384A8E4@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2 | 0x280;
  v9 = ((v5 - 1795699514) ^ 0x94F7CCC6) < 8 || a5 - a1 < ((v7 - 268505014) & 0xFB9BDFEF) - 3952794287u;
  return (*(v6 + 8 * ((v9 * (v7 - 2697)) ^ v7)))();
}

uint64_t sub_22384A964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v19 - 112) = (v16 + 3246) ^ (1361651671 * ((((2 * v17) | 0x2C43CB1A) - v17 + 1776163443) ^ 0xDD4A29F3));
  *(v19 - 128) = v18;
  *(v19 - 120) = a14;
  v20 = (*(v14 + 8 * (v16 + 3357)))(v19 - 136);
  return (*(v14 + 8 * (((*(v19 - 136) > (v15 + 1)) * ((v16 + 607) ^ 0x9E2)) ^ v16)))(v20);
}

void TmMyt2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_22384AB1C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = 65 * ((v2 + 803) ^ 0x525);
  *v9 = a1;
  *v10 = a2;
  v7 = (v6 - 510) | 0x400;
  v13 = v6 - ((&v13 & 0xF7FDA31E | ~(&v13 | 0xF7FDA31E)) ^ 0xEEAAF0F1) * v3 + 59;
  v14 = v12;
  (*(v4 + 8 * (v6 ^ 0x12C3)))(&v13);
  v13 = v7 - (((&v13 | 0x9D61517B) + (~&v13 | 0x629EAE84)) ^ 0x7BC9FD6A) * v3 - 455;
  v14 = v11;
  (*(v4 + 8 * (v7 ^ 0x14C5)))(&v13);
  return (v5 - 1423875590);
}

uint64_t sub_22384AB5C(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, int a10)
{
  v21 = v10 + 2;
  v22 = (v15 + (v14 + 32));
  v23 = veorq_s8(v21[-1], *v22);
  v24 = veorq_s8(*v21, v22[1]);
  return (*(v16 + 8 * (((v12 != 32) * ((7 * v13) ^ a10)) ^ v11)))(vorrq_s8(vqtbl1q_s8(v23, v17), a1), vorrq_s8(vqtbl1q_s8(v23, v18), a2), vorrq_s8(vqtbl1q_s8(v23, v19), a3), vorrq_s8(vqtbl1q_s8(v23, v20), a4), vorrq_s8(vqtbl1q_s8(v24, v17), a5), vorrq_s8(vqtbl1q_s8(v24, v19), a6), vorrq_s8(vqtbl1q_s8(v24, v18), a7), vorrq_s8(vqtbl1q_s8(v24, v20), a8));
}

uint64_t sub_22384AB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, uint64_t a15)
{
  a14 = v17 + 565 - (((&a14 | 0xF1DD9462) - &a14 + (&a14 & 0xE226B98)) ^ 0x17753872) * v16 - 73;
  a15 = a10;
  v18 = (*(v15 + 8 * (v17 + 3822)))(&a14);
  return sub_223868D18(v18);
}

uint64_t sub_22384ABA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char *a23, char *a24, uint64_t a25, char a26)
{
  v34 = v26 + 932;
  v35 = 1361651671 * ((((2 * (v33 - 144)) | 0x7ACCFE1A) - (v33 - 144) + 1117356275) ^ 0xF60DB373);
  *(v33 - 128) = &a14;
  *(v33 - 132) = (v26 - 2654) ^ v35;
  *(v33 - 120) = v29 - v35 - 583241272 + v26 + 932;
  *(v33 - 144) = v32;
  (*(v28 + 8 * (v26 ^ 0x1C6F)))(v33 - 144);
  a23 = &a21;
  a24 = &a19;
  *(v33 - 128) = v34 + 50899313 * ((-726516796 - ((v33 - 144) | 0xD4B23BC4) + ((v33 - 144) | 0x2B4DC43B)) ^ 0x186EE41) - 1736;
  *(v33 - 144) = v30;
  *(v33 - 136) = &a23;
  (*(v28 + 8 * (v34 + 42)))(v33 - 144);
  *(v33 - 128) = v34 + 143681137 * ((432768114 - ((v33 - 144) | 0x19CB8472) + ((v33 - 144) | 0xE6347B8D)) ^ 0x9CD79D) - 240;
  *(v33 - 112) = &a23;
  *(v33 - 104) = v31;
  *(v33 - 144) = &a14;
  *(v33 - 136) = v30;
  *(v33 - 120) = &a26;
  v36 = (*(v28 + 8 * (v34 ^ 0x1F84)))(v33 - 144);
  return (*(v28 + 8 * (((((v27 == 0) ^ (35 * (v34 ^ 0xEA))) & 1) * ((33 * (v34 ^ 0xF80)) ^ 0xC83)) ^ v34)))(v36);
}

uint64_t sub_22384AD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16, char *a17)
{
  v20 = 675097751 * ((2 * (&a12 & 0x4E6FEA48) - &a12 + 831526323) ^ 0x72D03025);
  a17 = &a11;
  a16 = v20 ^ 0xBEB0E746;
  a12 = a9;
  a13 = (v19 + 1421510911) ^ v20;
  a14 = v20 ^ 0x564C07A5;
  v21 = (*(v17 + 8 * (v19 + 2522)))(&a12);
  return (*(v17 + 8 * ((3084 * (a15 == v18 + v19 - 916 + ((v19 - 1229) | 0x202) - 1573)) ^ v19)))(v21);
}

uint64_t sub_22384B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, unsigned int a17, unsigned int a18, char *a19, int a20)
{
  v22 = 1361651671 * (((&a17 | 0xBA556E37) - (&a17 & 0xBA556E37)) ^ 0xF13EA249);
  HIDWORD(a19) = 595106621 - v22;
  a20 = v22 ^ 0x5524F21B;
  a17 = v22 + 1463;
  a18 = 643836121 - v22;
  (*(v20 + 33040))(&a17);
  a17 = (50899313 * (&a17 ^ 0x2ACB2A7A)) ^ 0xF11;
  a19 = &a14;
  v23 = (*(v20 + 32872))(&a17);
  return (*(v20 + 8 * ((675 * (a20 == v21)) ^ 0x964u)))(v23);
}

uint64_t sub_22384B2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, unsigned int a18, char *a19)
{
  v22 = 675097751 * ((2 * (&a14 & 0x745FE0F8) - &a14 - 1952440573) ^ 0xC8E03A95);
  a18 = v22 ^ 0xBEB0E746;
  a15 = (v21 + 1421510355) ^ v22;
  a16 = v22 ^ 0x220DBD24;
  a14 = a12;
  a19 = &a11;
  v23 = (*(v19 + 8 * (v21 + 1966)))(&a14);
  return (*(v19 + 8 * ((277 * (a17 == ((v21 - 1945) ^ (v20 - 1091) ^ (v21 - 350)))) ^ v21)))(v23);
}

uint64_t sub_22384B398()
{
  v0.n128_u64[0] = 0x5050505050505050;
  v0.n128_u64[1] = 0x5050505050505050;
  return sub_22384B3B8(v0);
}

uint64_t sub_22384B3B8(__n128 a1)
{
  v9 = (v5 + v4 + v3);
  *v9 = a1;
  v9[1] = a1;
  return (*(v8 + 8 * (((v6 + v4 == v1) * v7) ^ (v2 + 251))))();
}

uint64_t sub_22384B4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  a18 = (1037613739 * (((&a17 | 0x1A34F90E) - (&a17 & 0x1A34F90E)) ^ 0xCB36D471)) ^ 0x86F54BA0;
  v19 = (*(v18 + 32816))(&a17);
  return (*(v18 + 8 * ((3518 * (a17 == 1423875590)) ^ 0x4CDu)))(v19);
}

uint64_t sub_22384B7D0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1 ^ 0x489;
  *v13 = a8;
  *(v14 - 112) = (a1 + 1565) ^ (((2 * ((v14 - 136) & 0x47FBAEF8) - (v14 - 136) + 939806981) ^ 0x64490580) * v12);
  v13[2] = v8;
  (*(v11 + 8 * (a1 + 2747)))(v14 - 136);
  *v13 = a8;
  v13[2] = &a5;
  *(v14 - 112) = (v15 + 2454) ^ (((((v14 - 136) | 0xD174A4E8) - (v14 - 136) + ((v14 - 136) & 0x2E8B5B10)) ^ 0x8D39F06D) * v12);
  (*(v11 + 8 * (v15 + 3636)))(v14 - 136);
  v16 = a8;
  *(v14 - 136) = (v15 + 2148) ^ (((1883109069 - ((v14 - 136) | 0x703DF6CD) + ((v14 - 136) | 0x8FC20932)) ^ 0x7401BE29) * v9);
  v13[1] = v16;
  v17 = (*(v11 + 8 * (v15 + 3647)))(v14 - 136);
  return (*(v11 + 8 * (((*(v14 - 132) == v10) * ((v15 ^ 0x62131D1C) - 1645419677)) | v15)))(v17);
}

uint64_t sub_22384B938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, unsigned int a17, unsigned int a18, uint64_t a19)
{
  v26 = &a14;
  a16 = a10;
  a14 = (1564307779 * ((v26 & 0x24555968 | ~(v26 | 0x24555968)) ^ 0x4CA76A84)) ^ 0x963;
  a18 = -1564307779 * ((v26 & 0x24555968 | ~(v26 | 0x24555968)) ^ 0x4CA76A84) + 1264667083 * v23 + 1046635743;
  (*(v25 + 32944))(&a14);
  v27 = 742307843 * ((&a14 + 754484165 - 2 * (&a14 & 0x2CF883C5)) ^ 0x32DA0E90);
  a16 = v21;
  a14 = v27 ^ 0x510;
  a19 = a10;
  a17 = (((2 * v22) & 0x8FDF9FCE) - 327809 + (v22 ^ 0x47EFCFE7)) ^ v27;
  (*(v25 + 32976))(&a14);
  v28 = 742307843 * ((&a14 + 493187504 - 2 * (&a14 & 0x1D6571B0)) ^ 0x347FCE5);
  a19 = a10;
  a17 = v28 ^ ((v20 ^ 0xE7EBCFF6) + 1610547056 + ((2 * v20) & 0xCFD79FEC));
  a16 = v19;
  a14 = v28 ^ 0x510;
  v29 = (*(v25 + 32976))(&a14);
  return (*(v25 + 8 * ((255 * (a15 == v24)) ^ 0x67Eu)))(v29);
}

uint64_t sub_22384BB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, int a16, int a17)
{
  v21 = 1785193651 * (((v20 | 0x2101EC6B12F4578CLL) - (v20 | 0xDEFE1394ED0BA873) - 0x2101EC6B12F4578DLL) ^ 0x7E995153E4D5F3A0);
  a14 = a12;
  a15 = v21 ^ (v17 - ((2 * v17) & 0xFF9F84A28809669CLL) - 0x303DAEBBFB4CB2);
  a17 = 2380 - v21;
  v22 = (*(v18 + 33104))(&a14);
  return (*(v18 + 8 * ((642 * (a16 == v19)) ^ 0x86E)))(v22);
}

uint64_t sub_22384BFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11, int a12, int a13, char a14, uint64_t a15, int a16)
{
  v23 = (((*(v16 + 32) + v21) ^ 0xA6) + 90) ^ (((*(v16 + 32) + v21) ^ 0xA2) + 94) ^ (((v19 + 98) ^ (*(v16 + 32) + v21)) + 57);
  v24 = 210068311 * (((&a11 | 0x34F5708C) - (&a11 & 0x34F5708C)) ^ 0x639AEA5B);
  a12 = (v22 + 437683435) ^ v24;
  a11 = &a10;
  a15 = v20;
  a16 = v19 - v24 + 1634;
  a14 = v23 - 87 * (((&a11 | 0x8C) - (&a11 & 0x8C)) ^ 0x5B) + 38;
  v25 = (*(v18 + 8 * (v19 ^ 0x120B)))(&a11);
  return (*(v18 + 8 * ((3929 * (a13 == v17)) ^ v19)))(v25);
}

uint64_t sub_22384C0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int *a20)
{
  v25 = (v20 - 917377113) & 0x36AE0AFF;
  *v21 = 1;
  v26 = *a20;
  v27 = 50899313 * ((v24 - 152) ^ 0xB30B77E62ACB2A7ALL);
  *(v24 - 120) = v27;
  *(v24 - 144) = (v25 + 55969205) ^ v27;
  *(v24 - 140) = ((v25 + 654379981) ^ 0xF) + v27;
  *(v23 + 48) = v26 - v27;
  *(v24 - 152) = v25 + 654379981 - v27;
  *(v24 - 148) = ((v25 + 654379981) ^ 0x7B) + v27;
  *(v23 + 32) = v27 ^ 0x13FF;
  v28 = (*(v22 + 8 * (v25 ^ 0x12E9)))(v24 - 152);
  return (*(v22 + 8 * *(v24 - 136)))(v28);
}

uint64_t sub_22384C298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v12 = (v8 - 32);
  v13 = (v9 - 32);
  v14 = *v13;
  *(v12 - 1) = *(v13 - 1);
  *v12 = v14;
  return (*(v11 + 8 * (((v7 != 32) * (v6 ^ (v5 + 2042) ^ v10)) ^ (a5 + v6 + 2126))))();
}

void sub_22384C2AC(uint64_t a1)
{
  v1 = ((*a1 ^ (1785193651 * ((659054361 - (a1 | 0x27485F19) + (a1 | 0xD8B7A0E6)) ^ 0x9604CA))) - 24195238) & 0x171276D;
  v2 = (v1 ^ 0xE08146BF) + *(*(a1 + 8) + 4);
  if (v2 >= 0)
  {
    v3 = (v1 ^ 0xE08146BF) + *(*(a1 + 8) + 4);
  }

  else
  {
    v3 = -v2;
  }

  __asm { BRAA            X2, X17 }
}

void NOAHabXy()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D588) ^ 0x74)) ^ byte_2238FA960[byte_223907D60[(-33 * ((qword_27D09D558 - dword_27D09D588) ^ 0x74))] ^ 0xD0]) - 71];
  v1 = *(v0 - 4);
  v2 = off_2836EB850 - 4;
  v3 = off_2836EB7F0;
  v4 = qword_2836EB200[(*(off_2836EB7F0 + (*(off_2836EB850 + (-33 * ((qword_27D09D558 - v1) ^ 0x74)) - 4) ^ 0x64u)) ^ (-33 * ((qword_27D09D558 - v1) ^ 0x74))) - 3];
  v5 = 1321670111 * (v1 ^ &v7 ^ 0x448BD34F94FDFB74 ^ *v4);
  *(v0 - 4) = v5;
  *v4 = v5;
  v8[1] = (1037613739 * ((v8 - 310311519 - 2 * (v8 & 0xED8105A1)) ^ 0x3C8328DE)) ^ 0x86F54BA0;
  LOBYTE(v4) = -33 * ((*v4 + *(v0 - 4)) ^ 0x74);
  v6 = qword_2836EB200[((-33 * (dword_27D09D588 ^ 0x74 ^ qword_27D09D558)) ^ byte_2238FD7F0[byte_2238FA660[(-33 * (dword_27D09D588 ^ 0x74 ^ qword_27D09D558))] ^ 0xFD]) - 118];
  (*(v6 + 8 * ((v4 ^ v3[v2[v4] ^ 0x64]) + 4058)))(v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22384C6FC()
{
  v5 = *(v8 + 24);
  v6 = 1037613739 * ((-2035687832 - ((v4 - 144) | 0x86A9DE68) + ((v4 - 144) | 0x79562197)) ^ 0xA8540CE8);
  *(v4 - 136) = v10;
  *(v4 - 144) = (v3 - 3175) ^ v6;
  *(v4 - 140) = v6 ^ 0x55E2A644;
  (*(v2 + 8 * (v3 ^ 0x1EC8)))(v4 - 144);
  *(v4 - 120) = v10;
  *(v4 - 112) = v0;
  *(v4 - 144) = (v3 - 180) ^ (1564307779 * ((v4 - 144) ^ 0x970DCC13));
  *(v4 - 104) = v1;
  *(v4 - 136) = v9;
  *(v4 - 128) = v9;
  (*(v2 + 8 * (v3 ^ 0x1EDA)))(v4 - 144);
  *(v4 - 144) = v3 - 435584651 * ((v4 + 1702053221 - 2 * ((v4 - 144) & 0x657345F5)) ^ 0x8415FA3) - 1296;
  *(v4 - 136) = v5;
  *(v4 - 128) = v9;
  return (*(v2 + 8 * (v3 ^ 0x1EE4)))(v4 - 144);
}

uint64_t sub_22384C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, int a18, int a19, int a20, unsigned int a21, char *a22)
{
  v25 = v22 + 108;
  v26 = 675097751 * ((((2 * &a17) | 0xCFEEBDFA) - &a17 - 1744264957) ^ 0x24B77B6B);
  a22 = &a15;
  a17 = a13;
  a21 = v26 ^ 0xBEB0E745;
  a18 = (v25 + 1421512040) ^ v26;
  a19 = v26 ^ 0x16B98482;
  v27 = (*(v23 + 8 * (v25 ^ 0x11C5)))(&a17);
  return (*(v23 + 8 * (((a20 == v24) * ((v25 + 2019) ^ (v25 + 1535) ^ 0x8B6)) ^ v25)))(v27);
}

void sub_22384C998(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4) + 742307843 * (a1 ^ 0x1E228D55);
  v2 = 843532609 * (((&v5 | 0x4C1DA76F) + (~&v5 | 0xB3E25890)) ^ 0x1050F3EB);
  v6 = 1180578074 - v2;
  v7 = v1 + v2 - 875954095;
  v5 = v4;
  v3 = qword_2836EB200[v1 ^ 0x4C];
  (*(v3 + 8 * (v1 ^ 0x1014)))(&v5);
  __asm { BRAA            X14, X17 }
}

void sub_22384CBB4(int a1@<W8>)
{
  if (v1 <= -698259495)
  {
    if (v1 > -1215610897)
    {
      if (v1 <= -1200883271)
      {
        if (v1 == -1215610896)
        {
          goto LABEL_45;
        }

        if (v1 == -1204663619)
        {
          goto LABEL_41;
        }

        v5 = -1203034709;
      }

      else if (v1 > -942633748)
      {
        if (v1 == -942633747)
        {
          goto LABEL_41;
        }

        v5 = -740477525;
      }

      else
      {
        if (v1 == -1200883270)
        {
          goto LABEL_41;
        }

        v5 = -1092748772;
      }
    }

    else if (v1 <= -1743450071)
    {
      if (v1 == -1837907447)
      {
        goto LABEL_41;
      }

      if (v1 == -1816077878)
      {
        goto LABEL_45;
      }

      v5 = -1792405649;
    }

    else if (v1 > -1465275701)
    {
      if (v1 == -1465275700)
      {
        goto LABEL_45;
      }

      v5 = -1323239071;
    }

    else
    {
      if (v1 == -1743450070)
      {
        goto LABEL_41;
      }

      v5 = -1577862977;
    }

    goto LABEL_40;
  }

  if (v1 <= -143191179)
  {
    if (v1 > -628360251)
    {
      if (v1 > -267920833)
      {
        if (v1 == -267920832)
        {
          goto LABEL_41;
        }

        v5 = -184771448;
      }

      else
      {
        if (v1 == -628360250)
        {
          goto LABEL_41;
        }

        v5 = -539877396;
      }

      goto LABEL_40;
    }

    if (v1 != -698259494 && v1 != -698259491)
    {
      v6 = -658598405;
      goto LABEL_44;
    }

LABEL_41:
    __asm { BRAA            X8, X17 }
  }

  if (v1 > 1135888315)
  {
    if (v1 <= 1857611224)
    {
      if (v1 == 1135888316)
      {
        goto LABEL_41;
      }

      v5 = 1371018478;
      goto LABEL_40;
    }

    if (v1 != 2088891234)
    {
      v6 = 1857611225;
LABEL_44:
      if (v1 != v6)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    goto LABEL_41;
  }

  if (v1 <= -11426744)
  {
    if (v1 != -143191178)
    {
      v5 = -82561636;
      goto LABEL_40;
    }

LABEL_45:
    __asm { BRAA            X9, X17 }
  }

  if (v1 == -11426743)
  {
    goto LABEL_41;
  }

  v5 = 894487177;
LABEL_40:
  if (v1 == v5)
  {
    goto LABEL_41;
  }

LABEL_46:
  *(v4 + 24) = a1;
}

uint64_t sub_22384CFB0()
{
  result = (*(v1 + 8 * (v4 + 1377)))(**(v2 + 8 * (v4 - 2587)), v6, v7);
  *(v0 + 8) = v3;
  return result;
}

uint64_t sub_22384D014()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_22384D674@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int a34)
{
  v38 = *(&a22 + a1 + 72);
  v39 = (((v35 - 2718) ^ 0xDFFECF69) & (2 * a1)) + (a1 ^ 0x6FFF67B7) + v34;
  *(v36 + v39) = v38 ^ 0x8E;
  *(v36 + v39 + 1) = (BYTE1(v38) ^ 0x36) - ((2 * (BYTE1(v38) ^ 0x36)) & 0xA0) + 80;
  *(v36 + v39 + 2) = (BYTE2(v38) ^ 0xFC) - ((2 * (BYTE2(v38) ^ 0xFC)) & 0xA0) + 80;
  *(v36 + v39 + 3) = (HIBYTE(v38) ^ 0xDF) - ((2 * (HIBYTE(v38) ^ 0xDF)) & 0xA0) + 80;
  return (*(v37 + 8 * ((53 * (a1 + 4 >= a34)) ^ v35)))();
}

uint64_t sub_22384D7E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = vdupq_n_s32(0x94FFEC47);
  *&STACK[0x268] = v6;
  *&STACK[0x278] = v6;
  return (*(v5 + 8 * ((((v4 & 0xFFFFFFF8) == 8) * (((a4 - 3173) | 0x670) ^ 0x7A6)) ^ (a4 - 2794))))(a1, 0);
}

uint64_t sub_22384D87C()
{
  v5 = v2 - 1;
  *(v0 + v5) = (((v3 - 13) & 0xCF) - 127) ^ *(v1 + v5);
  return (*(v4 + 8 * ((2458 * (v5 == 0)) ^ v3)))();
}

void sub_22384D90C(int a1@<W8>)
{
  v3 = *(v2 + 4);
  if (v3 + 1619082214 + 5 * (v1 ^ 0xA13) >= 0)
  {
    a1 = -a1;
  }

  *(v2 + 4) = a1 + v3;
}

uint64_t sub_22384D974@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9 = v4 + 32;
  v10 = (v6 ^ v9) + v2;
  v11 = *(a1 + v10 - 15);
  v12 = *(a1 + v10 - 31);
  v13 = a2 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v5 == v9) * v7) ^ (v3 + 90))))();
}

uint64_t sub_22384DAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a14 = (50899313 * (&a14 ^ 0x2ACB2A7A)) ^ 0xF11;
  a15 = &a10;
  v19 = (*(v16 + 32872))(&a14);
  return (*(v16 + 8 * ((3756 * (a16 == ((v17 - 2404) ^ 0xAA4))) ^ v18)))(v19);
}

uint64_t sub_22384DB6C()
{
  v4 = ((v1 - 2630) ^ 0xA0D3097E) - v0;
  if ((64 - v2) >> 32)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= 64 - v2;
  }

  v6 = !v5;
  return (*(v3 + 8 * ((v6 * (v1 ^ 0xEEB)) ^ v1)))();
}

uint64_t sub_22384DD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, char *a15, unsigned int a16)
{
  a16 = (v16 - 8) ^ (843532609 * (((&a13 | 0xA0A53E66) - (&a13 & 0xA0A53E66)) ^ 0xFCE86AE3));
  a13 = a9;
  a15 = &a12;
  (*(v17 + 8 * (v16 ^ 0x4BAu)))(&a13);
  a14 = a9;
  LODWORD(a13) = (v16 - 314) ^ (1504884919 * ((&a13 - 1413593067 - 2 * (&a13 & 0xABBE4815)) ^ 0x507DFF0E));
  v19 = (*(v17 + 8 * (v16 + 1185)))(&a13);
  return (*(v17 + 8 * (((HIDWORD(a13) == v18) * (13 * (v16 ^ 0xB27) - 1455)) ^ v16)))(v19);
}

uint64_t sub_22384DE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, unsigned int a18, unsigned int a19, uint64_t a20, int a21, int a22, int a23, int a24)
{
  v27 = (a22 ^ a6) + a23;
  v28 = a19 < a18;
  if (v28 == v27 > 0x89AFB3BB)
  {
    v28 = v27 + (v26 ^ a17) < a19;
  }

  return (*(v25 + 8 * ((!v28 * ((v26 ^ 0x228) + 22)) ^ v26 ^ 0xB6F)))(a1, a2, ((a6 + (v26 ^ 0xB6F) - 2370) ^ v24) + a24, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_22384E150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, unsigned int a15, char *a16, int a17)
{
  a15 = (50899313 * ((2 * (&a15 & 0x685E3138) - &a15 - 1751003450) ^ 0xBD6AE4BC)) ^ 0xF11;
  a16 = &a13;
  v19 = (*(v18 + 32872))(&a15);
  return (*(v18 + 8 * ((178 * (a17 == 1423875590)) ^ v17)))(v19);
}

uint64_t sub_22384E1F0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a9 = v15;
  a10 = a6;
  a11 = 0;
  a13 = (a1 + 3305) ^ (1564307779 * ((-652368950 - (&a9 | 0xD91DA3CA) + (&a9 | 0x26E25C35)) ^ 0xB1EF9026));
  (*(v14 + 8 * (v13 ^ (v16 - 696))))(&a9);
  return sub_22384A064();
}

uint64_t sub_22384E26C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, unsigned int a11, unsigned int a12)
{
  v17 = *a1 - v15 + *(v12 + 16) - 380192507 + 8;
  v18 = 742307843 * ((&a9 + 1042093568 - 2 * (&a9 & 0x3E1D1600)) ^ 0x203F9B55);
  a10 = v12;
  a9 = v16 - v18 + 1504;
  a11 = 17472491 - v18;
  a12 = v18 + ((v16 + 1484811353) & 0xA77F9E7E) + v17 + 1900304092;
  v19 = (*(v14 + 8 * (v16 ^ 0xEAD)))(&a9);
  return (*(v14 + 8 * ((1641 * (*(v12 + 24) == v13)) ^ v16)))(v19);
}

uint64_t sub_22384E390(uint64_t a1)
{
  v6 = ((v4 + 2133725331) & 0x8D8F6EE6) - 3687;
  v7 = *(v2 + v6 + v3 - 31);
  v8 = a1 + v6 + v3;
  *(v8 - 15) = *(v2 + v6 + v3 - 15);
  *(v8 - 31) = v7;
  return (*(v5 + 8 * ((v1 + v4 + 2647) ^ (8 * ((v3 & 0xFFFFFFE0) == 32)))))();
}

uint64_t sub_22384E4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, int a17, unsigned int a18, char *a19)
{
  v22 = 675097751 * (&a14 ^ 0x43402596);
  a19 = &a10;
  a14 = a12;
  a15 = (v21 + 1421511166) ^ v22;
  a16 = v22 ^ 0xB09007F4;
  a18 = v22 ^ 0xBEB0E745;
  v23 = (*(v19 + 8 * (v21 + 2777)))(&a14);
  return (*(v19 + 8 * (((a17 == v20) * ((v21 - 1256640068) & 0xB9F ^ (v21 - 706))) ^ v21)))(v23);
}

void sub_22384E58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  *(v27 - 144) = (v24 + 2706) ^ (((((v27 - 144) | 0xFAEB49BA) - (v27 - 144) + ((v27 - 144) & 0x514B640)) ^ 0x6DE685A9) * v25);
  *(v27 - 120) = &a14;
  *(v27 - 112) = v26;
  *(v27 - 104) = a12;
  *(v27 - 136) = &a24;
  *(v27 - 128) = &a24;
  JUMPOUT(0x2238932C8);
}

void sub_22384E5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v20 = 210068311 * (((v19 - 192) & 0xD099E6B4 | ~((v19 - 192) | 0xD099E6B4)) ^ 0x7809839C);
  *(v19 - 184) = (v18 + ((4 * a17) ^ 0x760) + 1694408676) ^ v20;
  *(v19 - 180) = a17 - v20 + 766;
  *(v19 - 192) = &STACK[0x250];
  (*(v17 + 8 * (a17 ^ 0x108B)))(v19 - 192);
  JUMPOUT(0x22385BCA8);
}

uint64_t sub_22384E67C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7) ^ 0x50;
  return (*(v6 + 8 * ((19 * (v7 == ((v5 - v2 - 2212) ^ 0x156))) | (a2 + v5 + 1732))))();
}

void sub_22384E6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  *v12 = a1;
  *a6 = a12;
  JUMPOUT(0x22382A49CLL);
}

uint64_t sub_22384E7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (1037613739 * ((1401159049 - (&a12 | 0x5383FD89) + (&a12 | 0xAC7C0276)) ^ 0x7D7E2F09)) ^ 0x86F54BA0;
  v14 = (*(v13 + 32816))(&a12);
  return (*(v13 + 8 * ((510 * (((a12 == 1423875590) ^ 0xFD) & 1)) ^ 0x6FDu)))(v14);
}

uint64_t sub_22384E874(uint64_t a1)
{
  v6 = ((((v4 - 1467326382) & 0x57759DDB) - 218) ^ v3) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * (v4 ^ (16 * ((v2 & 0xFFFFFFF8) - 8 == v3)))))();
}

uint64_t sub_22384E9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, char a44)
{
  v47 = *(v44 + 8 * (v45 - 3827));
  v48 = *(v47 - 4);
  a14 = *v48 * (v45 + 23) - 124;
  a15 = -63 * v48[1] - 124;
  a16 = v48[2] * (v45 + 23) - 124;
  a17 = -63 * v48[3] - 124;
  a18 = -63 * v48[4] - 124;
  a19 = -63 * v48[5] - 124;
  a20 = -63 * v48[6] - 124;
  a21 = -63 * v48[7] - 124;
  a22 = -63 * v48[8] - 124;
  a23 = -63 * v48[9] - 124;
  a24 = -63 * v48[10] - 124;
  a25 = -63 * v48[11] - 124;
  a26 = -63 * v48[12] - 124;
  a27 = -63 * v48[13] - 124;
  a28 = -63 * v48[14] - 124;
  a29 = -63 * v48[15] - 124;
  a30 = -63 * v48[16] - 124;
  v49 = *(v47 - 4);
  a31 = -63 * v49[17] - 124;
  a32 = -63 * v49[18] - 124;
  a33 = -63 * v49[19] - 124;
  a34 = -63 * v49[20] - 124;
  a35 = -63 * v49[21] - 124;
  a36 = -63 * v49[22] - 124;
  a37 = -63 * v49[23] - 124;
  a38 = -63 * v49[24] - 124;
  a39 = -63 * v49[25] - 124;
  a40 = -63 * v49[26] - 124;
  a41 = -63 * v49[27] - 124;
  a42 = -63 * v49[28] - 124;
  a43 = -63 * v49[29] - 124;
  a44 = -63 * v49[30] - 124;
  v50 = (*(v46 + 8 * (v45 ^ 0x75)))(&a14);
  return (*(v46 + 8 * ((110 * (v50 != 0)) ^ v45)))(v50, v51, v52, v53, v54, v55, v56, v57);
}

void sub_22384EC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17)
{
  a17 = a11;
  a16 = v17 - 143681137 * (((&a16 | 0xDD94171) - (&a16 & 0xDD94171)) ^ 0xEB71ED61) + v19;
  (*(v18 + 8 * (v19 ^ 0x99632861)))(&a16);
  JUMPOUT(0x22384EC70);
}

uint64_t sub_22384ED00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, int a23, unsigned int a24, char *a25)
{
  v27 = 675097751 * ((2 * (&a20 & 0x31A8A7C8) - &a20 + 1314347059) ^ 0xD177DA5);
  a25 = &a18;
  a20 = a16;
  a21 = (a12 + 1421511845) ^ v27;
  a22 = v27 ^ 0xC9E4075D;
  a24 = v27 ^ 0xBEB0E746;
  v28 = (*(v26 + 8 * (a12 + 3456)))(&a20);
  return (*(v26 + 8 * ((37 * (a23 != v25)) ^ a12)))(v28);
}

uint64_t sub_22384EDC8@<X0>(int a1@<W8>, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  HIDWORD(a2) = (v58 + 2197) ^ (v54 + 2165);
  *a3 = a1;
  v59 = (*(v55 + 48 * v57 + 8))(a4);
  return (*(v56 + 8 * ((140 * ((v59 ^ 0xF5FFFF56) + 1591647920 + ((HIDWORD(a2) - 1326764740) & (2 * v59)) == 1423875590)) ^ v58)))(v59, v60, v61, v62, 3303747800, 3788326124, 3533798501, 3493192910, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_22384EF70()
{
  v4 = 144 * (v0 ^ 0x48A);
  v5 = (*(v2 + 8 * (v0 + 2955)))(*v3);
  return (*(v2 + 8 * ((102 * (((*v1 == 0) ^ (v4 + 1)) & 1)) | v4)))(v5);
}

uint64_t sub_22384EFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v34 = (a21 + 24 * (a8 + v33));
  LODWORD(a22) = v34[4];
  return (*(v31 + 8 * ((2689 * (*(v32 + 48 * (*v34 + a6) + 36) == 35963660)) ^ v30)))(a1, a2, a3, a4, a5, v34[1], a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_22384F084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18)
{
  v21 = (v18 - 1872854813) & 0x176F;
  a17 = v21 - 295 - 143681137 * (((&a17 | 0xCEFDC724) - &a17 + (&a17 & 0x310238D8)) ^ 0x28556B34);
  a18 = a14;
  (*(v19 + 8 * (v21 + 3035)))(&a17);
  a17 = v21 - 295 - 143681137 * (((&a17 | 0x8723D047) - &a17 + (&a17 & 0x78DC2FB8)) ^ 0x618B7C57);
  a18 = a11;
  v22 = (*(v19 + 8 * (v21 + 3035)))(&a17);
  return (*(v19 + 8 * (((v21 + (a13 ^ 0xDEFFBF47) + ((2 * a13) & 0xBDFF7E8E) + 1977539218 == v20) * (((v21 + 19250260) | 0x181A0942) - 423607995)) ^ v21)))(v22);
}

uint64_t sub_22384F0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v46 = (a22 + 24 * v42);
  *v46 = v43;
  v46[1] = a6;
  *(&a40 + 3 * v42 + 2) = v45;
  v46[4] = a23;
  a40 = v40 + 1;
  return (*(v44 + 8 * (((v41 + a4 < ((3 * (a9 ^ 0x3DF)) ^ 0x80000900)) * (((a9 ^ 0x3DF) - 359) ^ 0x56E)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

void MaYVT0G(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = !v7 && a6 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_22384F1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x494]) = v64;
  v98 = *(v67 + 8 * v65);
  STACK[0x4D0] = v66;
  STACK[0x4D8] = v66;
  STACK[0x4E0] = &STACK[0x530] + a64;
  v68 = *(v66 + 72);
  LODWORD(STACK[0x3FC]) = v68;
  v69 = *(v66 + 76);
  LODWORD(STACK[0x204]) = v69;
  v70 = *(v66 + 80);
  LODWORD(STACK[0x378]) = v70;
  v71 = *(v66 + 84);
  LODWORD(STACK[0x21C]) = v71;
  v72 = (*(v66 + 96) - ((2 * *(v66 + 96)) & 0x38) + 36);
  if (v72 == 38)
  {
    LODWORD(STACK[0x344]) = *(v66 + 88);
    return sub_2238411DC();
  }

  else if (v72 == 37)
  {
    return sub_22384F24C(v71, v70, a3, a4, a5, a6);
  }

  else
  {
    v74 = v69;
    v75 = (((v68 ^ 0x21ADA675) - 565028469) ^ ((v68 ^ 0x8C1B6AB4) + 1944360268) ^ ((v68 ^ 0x724AFA1F) - 1917516319)) + (((*(v66 + 72) ^ 0xDE77F545) + 562563771) ^ ((*(v66 + 72) ^ 0x7B961855) - 2073434197) ^ ((*(v66 + 72) ^ 0x7A1DDBCE) - 2048777166)) - 950488778;
    v76 = (v75 ^ 0xFE9F3827) & (2 * (v75 & 0xF89FBC86)) ^ v75 & 0xF89FBC86;
    v77 = ((2 * (v75 ^ 0x4F8E392B)) ^ 0x6E230B5A) & (v75 ^ 0x4F8E392B) ^ (2 * (v75 ^ 0x4F8E392B)) & 0xB71185AC;
    v78 = v77 ^ 0x911084A5;
    v79 = (v77 ^ 0x26010008) & (4 * v76) ^ v76;
    v80 = ((4 * v78) ^ 0xDC4616B4) & v78 ^ (4 * v78) & 0xB71185AC;
    v81 = (v80 ^ 0x940004A0) & (16 * v79) ^ v79;
    v82 = ((16 * (v80 ^ 0x23118109)) ^ 0x71185AD0) & (v80 ^ 0x23118109) ^ (16 * (v80 ^ 0x23118109)) & 0xB71185A0;
    v83 = v81 ^ 0xB71185AD ^ (v82 ^ 0x31100000) & (v81 << 8);
    v84 = v75 ^ (2 * ((v83 << 16) & 0x37110000 ^ v83 ^ ((v83 << 16) ^ 0x5AD0000) & (((v82 ^ 0x8601852D) << 8) & 0x37110000 ^ 0x26100000 ^ (((v82 ^ 0x8601852D) << 8) ^ 0x11850000) & (v82 ^ 0x8601852D)))) ^ 0x43428102;
    v85 = (((v74 ^ 0x6E720612) - 1852966418) ^ ((v74 ^ 0x859AE2C8) + 2053446968) ^ ((v74 ^ 0x3414D204) - 873779716)) + (((*(v66 + 76) ^ 0x25ADCAE5) - 632146661) ^ ((*(v66 + 76) ^ 0xA76223FE) + 1486740482) ^ ((*(v66 + 76) ^ 0x5D33DFC5) - 1563680709)) - 292381716;
    *(v66 + 72) = v84;
    *(v66 + 76) = v85 ^ ((v85 ^ 0x5E506965) - 1892304725) ^ ((v85 ^ 0x39566E26) - 399261718) ^ ((v85 ^ 0xB263D2AF) + 1661338465) ^ ((v85 ^ 0xFBFFFBDC) + 714746388) ^ 0xF16618EE;
    v86 = STACK[0x4D0];
    v87 = (((LODWORD(STACK[0x378]) ^ 0xEB81DB33) + 343811277) ^ ((LODWORD(STACK[0x378]) ^ 0x626CBF9A) - 1651294106) ^ ((LODWORD(STACK[0x378]) ^ 0x56115277) - 1443975799)) + 1021229535 + (((*(STACK[0x4D0] + 80) ^ 0xA9B6EA2) - 177958562) ^ ((*(STACK[0x4D0] + 80) ^ 0x3543499) - 55850137) ^ ((*(STACK[0x4D0] + 80) ^ 0xD6336CE5) + 701272859));
    v88 = (v87 ^ 0xDA113B99) & (2 * (v87 & 0x8319B3DD)) ^ v87 & 0x8319B3DD;
    v89 = ((2 * (v87 ^ 0xDE225AA9)) ^ 0xBA77D2E8) & (v87 ^ 0xDE225AA9) ^ (2 * (v87 ^ 0xDE225AA9)) & 0x5D3BE974;
    v90 = v89 ^ 0x45082914;
    v91 = (v89 ^ 0x1823C060) & (4 * v88) ^ v88;
    v92 = ((4 * v90) ^ 0x74EFA5D0) & v90 ^ (4 * v90) & 0x5D3BE974;
    v93 = (v92 ^ 0x542BA150) & (16 * v91) ^ v91;
    v94 = ((16 * (v92 ^ 0x9104824)) ^ 0xD3BE9740) & (v92 ^ 0x9104824) ^ (16 * (v92 ^ 0x9104824)) & 0x5D3BE970;
    v95 = v93 ^ 0x5D3BE974 ^ (v94 ^ 0x513A8100) & (v93 << 8);
    v96 = v87 ^ (2 * ((v95 << 16) & 0x5D3B0000 ^ v95 ^ ((v95 << 16) ^ 0x69740000) & (((v94 ^ 0xC016834) << 8) & 0x5D3B0000 ^ 0x44120000 ^ (((v94 ^ 0xC016834) << 8) ^ 0x3BE90000) & (v94 ^ 0xC016834))));
    v97 = (((LODWORD(STACK[0x21C]) ^ 0xFAE273D3) + 85822509) ^ ((LODWORD(STACK[0x21C]) ^ 0xAF3FE602) + 1354766846) ^ ((LODWORD(STACK[0x21C]) ^ 0x8A21A30F) + 1977507057)) + 330988079 + (((*(STACK[0x4D0] + 84) ^ 0x4DD245DD) - 1305626077) ^ ((*(STACK[0x4D0] + 84) ^ 0x6616598C) - 1712740748) ^ ((*(STACK[0x4D0] + 84) ^ 0xF4382A8F) + 197645681));
    *(v86 + 80) = v96 ^ 0x74F257EB;
    *(v86 + 84) = v97 ^ ((v97 ^ 0x8066ECD) - 1539596990) ^ ((v97 ^ 0x38D840C1) - 1796885682) ^ ((v97 ^ 0x9CE3CDC0) + 819871309) ^ ((v97 ^ 0xFFFFEFBF) + 1405230132) ^ 0x8C3E3AAD;
    return v98(v71, v70, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
  }
}

uint64_t sub_22384F24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15 = *(v6 + (v8 + v11)) ^ v9 | ((*(v6 + (v8 + v11 + v12 - 1679)) ^ v9) << 8) | ((*(v6 + (v8 + v11 + 2)) ^ v9) << 16) | ((*(v6 + (v8 + v11 + 3)) ^ v9) << 24);
  *(v7 + 4 * (((((v8 ^ 0x49189BB8) - 1942346257) ^ v8 ^ ((v8 ^ 0x8C093B08) + 1227588959) ^ ((v8 ^ 0x903716E4) + 1427482803) ^ ((v8 ^ 0x6FFBF7FC) - 1428600404)) >> 2) ^ 0xEB7506A)) = v15 + v10 - (v13 & (2 * v15));
  return (*(v14 + 8 * ((3895 * ((v8 + 4 + v11) < 0x40)) ^ (a6 + 568))))();
}

uint64_t sub_22384F454@<X0>(uint64_t a1@<X8>)
{
  *(*(a1 + 8) + 4 * ((v7 ^ 0xAE8 ^ (v2 + 3279)) + v4)) = v5 ^ v3 ^ v6;
  *(a1 + 4) = v4 + 1;
  v8 = v2 + v4 + 1 + (v7 ^ 0xACA);
  v10 = v8 + 3225;
  v9 = v8 + 3225 < 0;
  v11 = -3225 - v8;
  if (!v9)
  {
    v11 = v10;
  }

  return (*(v1 + 8 * ((460 * (((v11 ^ 0x5FFFBF3F) + ((2 * v11) & 0xBFFF7E7E) - 1082196530 + ((((v7 ^ 0xACA) - 36) | 6) ^ (((v7 ^ 0xACA) + 1944) | 0x500) ^ 0xE0814F38)) >= 0)) ^ v7 ^ 0xACA)))();
}

uint64_t sub_22384F5D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X7>, uint64_t a3@<X8>, int8x16_t a4@<Q4>, int8x16_t a5@<Q5>)
{
  v10 = (a1 + v8 + a3);
  v11 = vaddq_s8(vsubq_s8(*(a2 + v8 + 16), vandq_s8(vaddq_s8(*(a2 + v8 + 16), *(a2 + v8 + 16)), a4)), a5);
  *v10 = vaddq_s8(vsubq_s8(*(a2 + v8), vandq_s8(vaddq_s8(*(a2 + v8), *(a2 + v8)), a4)), a5);
  v10[1] = v11;
  return (*(v9 + 8 * ((3864 * (v8 + v6 - 77 == v5)) ^ v7)))();
}

void sub_22384F694(uint64_t a1)
{
  v1 = 742307843 * ((2 * (a1 & 0x4FBE55C) - a1 - 83617117) ^ 0xE52697F6);
  v2 = *(*(a1 + 8) + 12) - 785191131;
  v3 = *(a1 + 20) - v1 - 1228117416;
  v4 = (v3 < 0x3357D5FF) ^ (v2 < 0x3357D5FF);
  v5 = v2 < v3;
  if (v4)
  {
    v6 = v3 < 0x3357D5FF;
  }

  else
  {
    v6 = v5;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_22384F794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  HIDWORD(a17) = v24;
  (*(v23 + 8 * (v22 ^ 0x1284)))(a12, 0x100004077774924);
  v26 = (*(v23 + 8 * (v22 | 0xD4A)))();
  *v25 = v26;
  v25[1] = 1812433253 * (v26 ^ (v26 >> 30)) + 1;
  return (*(v23 + 8 * ((v22 - 564) | 0x549)))(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, v21, a17, a18, a19, a20, a21);
}

uint64_t sub_22384F830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = ((v2 + v4 + 509) | 0x82u) - 643 + v3;
  v7 = *(a2 + v6 - 15);
  v8 = *(a2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((876 * ((v3 & 0xFFFFFFE0) == 32)) ^ (v2 + v4 + 3073))))();
}