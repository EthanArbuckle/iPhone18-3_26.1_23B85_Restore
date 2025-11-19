uint64_t sub_23E91E994(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
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

uint64_t sub_23E91EBF4(mach_port_t a1, unsigned int a2, __int128 *a3)
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

uint64_t sub_23E91ED88(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
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

uint64_t sub_23E91EF7C(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
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

uint64_t sub_23E91F0FC(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(&off_28512D4A0 + ((-57 * (dword_27E37D4A0 ^ 0x68 ^ qword_27E37D680)) ^ byte_23EAA14B0[byte_23EA93DB0[(-57 * (dword_27E37D4A0 ^ 0x68 ^ qword_27E37D680))] ^ 0x10]) + 49);
  v2 = *(v1 - 4);
  v3 = *(&off_28512D4A0 + (*(off_28512E230 + (*(off_28512E0A0 + (-57 * (v2 ^ qword_27E37D680 ^ 0x68)) - 4) ^ 0x39u) - 8) ^ (-57 * (v2 ^ qword_27E37D680 ^ 0x68))) + 32);
  v4 = *(v3 - 4) - v2 - &v6;
  *(v1 - 4) = 1773100999 * v4 + 0x4D21136F0F232C98;
  *(v3 - 4) = 1773100999 * (v4 ^ 0xB2DEEC90F0DCD368);
  v7 = a1;
  v8 = 2008441969 * (&v7 ^ 0xBB11EDA6) + 279;
  LOBYTE(v3) = -57 * ((*(v3 - 4) - *(v1 - 4)) ^ 0x68);
  return (*(*(&off_28512D4A0 + ((-57 * (dword_27E37D4A0 ^ 0x68 ^ qword_27E37D680)) ^ byte_23EA861F0[byte_23EA7A950[(-57 * (dword_27E37D4A0 ^ 0x68 ^ qword_27E37D680))] ^ 0xF7]) + 4) + (*(off_28512D5E8 + (*(off_28512E030 + v3) ^ 0x30u)) ^ v3) + 4170))(&v7);
}

uint64_t sub_23E91F2D0(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(&off_28512D4A0 + ((-57 * ((qword_27E37D680 + dword_27E37D4A8) ^ 0x68)) ^ byte_23EA861F0[byte_23EA7A950[(-57 * ((qword_27E37D680 + dword_27E37D4A8) ^ 0x68))] ^ 0x72]) - 145);
  v2 = -57 * ((qword_27E37D680 - *v1) ^ 0x68);
  v3 = *(&off_28512D4A0 + (*(off_28512E200 + (*(off_28512D920 + v2 - 8) ^ 0xD8u) - 8) ^ v2) - 12);
  v4 = 1773100999 * ((*(v3 - 4) - *v1 - &v6) ^ 0xB2DEEC90F0DCD368);
  *v1 = v4;
  *(v3 - 4) = v4;
  v8 = (1875091903 * ((&v7 - 1850607137 - 2 * (&v7 & 0x91B1F9DF)) ^ 0xABBF2F03)) ^ 0xC57;
  v7 = a1;
  LOBYTE(v3) = -57 * ((*(v3 - 4) - *v1) ^ 0x68);
  (*(*(&off_28512D4A0 + ((-57 * ((qword_27E37D680 + dword_27E37D4A8) ^ 0x68)) ^ byte_23EA93AB0[byte_23EA860F0[(-57 * ((qword_27E37D680 + dword_27E37D4A8) ^ 0x68))] ^ 0xD2]) - 7) + (*(off_28512E230 + (*(off_28512E0A0 + v3 - 4) ^ 0x2Fu) - 8) ^ v3) + 4112))(&v7);
  return v9;
}

uint64_t VLxCLgDpiF(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(&off_28512D4A0 + ((-57 * ((qword_27E37D680 + dword_27E37D3A0) ^ 0x68)) ^ byte_23EA861F0[byte_23EA7A950[(-57 * ((qword_27E37D680 + dword_27E37D3A0) ^ 0x68))] ^ 0x15]) + 375);
  v2 = *(v1 - 4);
  v3 = *(&off_28512D4A0 + (*(off_28512D5E8 + (*(off_28512E030 + (-57 * (v2 ^ qword_27E37D680 ^ 0x68))) ^ 0x41u)) ^ (-57 * (v2 ^ qword_27E37D680 ^ 0x68))) + 21);
  v4 = v2 - &v7 + *(v3 - 4);
  *(v1 - 4) = 1773100999 * v4 - 0x4D21136F0F232C98;
  *(v3 - 4) = 1773100999 * (v4 ^ 0xB2DEEC90F0DCD368);
  v5 = 1710126949 * ((((2 * v8) | 0x6D22AA50) - v8 - 915494184) ^ 0x3076A782);
  v8[0] = 1386 - v5;
  v8[1] = 1173981257 * a1 - v5 + 1829732179;
  LOBYTE(v3) = -57 * ((*(v3 - 4) - *(v1 - 4)) ^ 0x68);
  (*(*(&off_28512D4A0 + ((-57 * (dword_27E37D3A0 ^ 0x68 ^ qword_27E37D680)) ^ byte_23EAA14B0[byte_23EA93DB0[(-57 * (dword_27E37D3A0 ^ 0x68 ^ qword_27E37D680))] ^ 0x30]) + 182) + (*(off_28512E230 + (*(off_28512E0A0 + v3 - 4) ^ 0x15u) - 8) ^ v3) + 4153))(v8);
  return v8[2] ^ 0x996E72F8;
}

uint64_t sub_23E91F7D4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(&off_28512D4A0 + ((-57 * ((qword_27E37D680 - dword_27E37D3B8) ^ 0x68)) ^ byte_23EAA13B0[byte_23EA93CB0[(-57 * ((qword_27E37D680 - dword_27E37D3B8) ^ 0x68))] ^ 0x4E]) - 157);
  v2 = *(v1 - 4);
  v3 = *(&off_28512D4A0 + (*(off_28512DC18 + (*(off_28512D4A0 + (-57 * (v2 ^ qword_27E37D680 ^ 0x68)) - 8) ^ 0x4Eu)) ^ (-57 * (v2 ^ qword_27E37D680 ^ 0x68))) - 57);
  v4 = &v6[*(v3 - 4) ^ v2];
  *(v1 - 4) = 1773100999 * (v4 + 0x4D21136F0F232C98);
  *(v3 - 4) = 1773100999 * (v4 ^ 0xB2DEEC90F0DCD368);
  v8 = a1;
  v7 = 639 - 1358806181 * ((((2 * &v7) | 0xED0C0300) - &v7 + 158989952) ^ 0x4BE5876D);
  LOBYTE(v3) = -57 * ((*(v3 - 4) + *(v1 - 4)) ^ 0x68);
  return (*(*(&off_28512D4A0 + ((-57 * (dword_27E37D3B8 ^ 0x68 ^ qword_27E37D680)) ^ byte_23EA861F0[byte_23EA7A950[(-57 * (dword_27E37D3B8 ^ 0x68 ^ qword_27E37D680))] ^ 0xF7]) + 4) + (*(off_28512D508 + ((*off_28512E130)[v3] ^ 0xD2u) - 4) ^ v3) + 3909))(&v7);
}

uint64_t XtCqEf5X(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(&off_28512D4A0 + ((-57 * ((qword_27E37D680 - dword_27E37D3B0) ^ 0x68)) ^ byte_23EAA13B0[byte_23EA93CB0[(-57 * ((qword_27E37D680 - dword_27E37D3B0) ^ 0x68))] ^ 0xC]) + 263);
  v5 = *(&off_28512D4A0 + (*(off_28512D5E8 + (*(off_28512E030 + (-57 * (*v4 ^ qword_27E37D680 ^ 0x68))) ^ 0x41u)) ^ (-57 * (*v4 ^ qword_27E37D680 ^ 0x68))) + 21);
  v6 = &v8[*v4 + *(v5 - 4)];
  *v4 = 1773100999 * v6 - 0x110D1848A5CC1228;
  *(v5 - 4) = 1773100999 * (v6 ^ 0xB2DEEC90F0DCD368);
  v14 = a1;
  v11 = a3;
  v12 = a4;
  v10 = (31943069 * (((&v9 | 0xF578C897) + (~&v9 | 0xA873768)) ^ 0x3236C19F)) ^ 0xF7C;
  v9 = a2;
  LOBYTE(v5) = -57 * ((*(v5 - 4) + *v4) ^ 0x68);
  (*(*(&off_28512D4A0 + ((-57 * ((qword_27E37D680 + dword_27E37D3B0) ^ 0x68)) ^ byte_23EAA14B0[byte_23EA93DB0[(-57 * ((qword_27E37D680 + dword_27E37D3B0) ^ 0x68))] ^ 0x22]) + 204) + (*(off_28512E230 + (*(off_28512E0A0 + v5 - 4) ^ 0x2Fu) - 8) ^ v5) + 4220))(&v9);
  return v13 ^ 0x996E72F8;
}

uint64_t sub_23E91FFC8@<X0>(uint64_t a1@<X1>, int a2@<W3>, int a3@<W5>, int a4@<W6>, int a5@<W8>)
{
  v10 = (v9 + 4 * v5);
  v11 = v5 + 1;
  v12 = *(v9 + 4 * v11);
  v13 = v10[397] ^ ((v12 & 0x7FFFFFFE | v6 & 0x80000000) >> 1);
  *v10 = (v13 + v8 - ((a5 ^ (a2 + 2118) ^ a3) & (2 * v13))) ^ *(v7 + 4 * (v12 & 1));
  return (*(a1 + 8 * (((v11 == 227) * a4) ^ a5)))();
}

uint64_t sub_23E920030@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(v3 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((3646 * (v5 == 0)) ^ (v2 - 1464))))();
}

uint64_t sub_23E920218@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5) - ((2 * *(v3 + v5)) & 0xA4) - 46;
  return (*(v4 + 8 * (((v5 != 0) * ((31 * (v2 ^ 0xA36)) ^ 0x4AB)) ^ v2)))();
}

void sub_23E920264(uint64_t a1)
{
  v1 = 1358806181 * ((-2 - ((a1 | 0x302253E8) + (~a1 | 0xCFDDAC17))) ^ 0x72BE2AFA);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_23E920308()
{
  v4 = (v0 + 1457660266) & 0xA91DDBFA;
  v5 = (*(v2 + 8 * (v0 ^ 0x1D0Eu)))(*v3);
  return (*(v2 + 8 * (((*v1 != (((v4 - 1568) | 0x240) ^ 0x6EA)) * ((v4 ^ 0xC20) - 1744)) ^ v4)))(v5);
}

uint64_t sub_23E920378()
{
  v4 = (v0 + 2278) | 0x2F;
  (*(v1 + 8 * (v0 + 3041)))(*v7, *(v2 + 8), v9);
  *(v3 - 192) = (v4 - 2140799549) ^ (956911519 * ((-609876677 - ((v3 - 192) | 0xDBA6053B) + ((v3 - 192) | 0x2459FAC4)) ^ 0x5B0FF67A));
  (*(v1 + 8 * (v4 ^ 0x1D0B)))(v3 - 192);
  result = v6;
  *(v6 + 28) = v8;
  return result;
}

uint64_t sub_23E92039C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26)
{
  v28 = *(a4 + 96);
  v29 = 1358806181 * ((((v27 - 136) | 0x3B654D20) - ((v27 - 136) & 0x3B654D20)) ^ 0x8606CBCD);
  *(v27 - 128) = a4;
  *(v27 - 136) = a2 - v29 + 915945593;
  *(v27 - 116) = v28 - v29 - ((2 * v28) & 0x5E5D22D4) + 791581034;
  v30 = (*(v26 + 8 * a13))(v27 - 136);
  return (*(v26 + 8 * ((((*(a4 + 68) & 0x3Fu) + 64 > 0x3F) * (((a26 - 9) | 0xA9) ^ 0x33B)) ^ (a26 + 2008))))(v30);
}

uint64_t sub_23E9204A0(uint64_t result)
{
  if ((v2 + v4 - 1) >= 0x7FFFFFFF)
  {
    v6 = -v5;
  }

  else
  {
    v6 = v3;
  }

  *(v1 + 4) = v6;
  *(result + 12) = -1515948581;
  return result;
}

uint64_t sub_23E920518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>)
{
  v18 = a1 - 16;
  v19 = a3 & (v18 + 15);
  v20 = v15;
  v21.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v21.i64[1] = a8;
  v22 = vrev64q_s8(vmulq_s8(v21, a9));
  *(v16 + v18) = veorq_s8(veorq_s8(veorq_s8(*(v11 + v19 - 15), *(a5 + v18)), veorq_s8(*(v19 + v13 - 11), *(v12 + v19 - 15))), vextq_s8(v22, v22, 8uLL));
  return (*(v17 + 8 * (((a2 == 16) * a4) ^ v14)))();
}

uint64_t sub_23E920570(uint64_t a1)
{
  v1 = 1710126949 * (a1 ^ 0x6E7F2AA);
  v2 = *(a1 + 24) + v1;
  v3 = *(a1 + 4) - v1;
  v4 = *(*(a1 + 16) + 4);
  v6 = v4 - 1948623840;
  v5 = v4 - 1948623840 < 0;
  v7 = 1948623840 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_28512D4A0 + v2 - 2373) + ((((v3 - 754134316) >= (4 * v7)) * (v2 ^ 0xA2C)) ^ v2)))();
}

uint64_t sub_23E9206CC()
{
  v7 = v6 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 + 1 - v3;
  v10 = v0 + v9;
  v11 = v0 + v8 + 1;
  v12 = v1 + v9;
  v13 = v1 + v8 + 1;
  v14 = v8 + v2 + 6;
  v16 = v11 > v6 && v10 < v7;
  v18 = v13 > v6 && v12 < v7 || v16;
  if (v14 <= v6 || v14 - v3 >= v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  return (*(v5 + 8 * ((((v4 + 3227) ^ 0xF41) * (v20 ^ 1)) ^ v4)))();
}

uint64_t sub_23E9207C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  v24 = (v18 - 2332) | 0x203;
  v25 = ((((v23 - 120) | 0x8793EAA6) - (v23 - 120) + ((v23 - 120) & 0x786C1558)) ^ 0x86255799) * v21;
  *(v23 - 112) = v25 + v24 + (v19 ^ 0xC772FDEF) + ((2 * v19) & 0x8EE5FBDE) + 1052759059;
  *(v23 - 108) = v18 - v25 + 240;
  *(v23 - 120) = &a18;
  (*(v20 + 8 * (v18 + 820)))(v23 - 120);
  *(v23 - 108) = (v24 + 1227) ^ (((v23 - 120) ^ 0x1B6BD3F) * v21);
  *(v23 - 120) = &a16;
  *(v23 - 104) = a15;
  v26 = (*(v20 + 8 * (v24 ^ 0x9DD)))(v23 - 120);
  return (*(v20 + 8 * (((*(v23 - 112) == v22) * (((v24 + 137) ^ 0xD8E) - 2801)) ^ v24)))(v26);
}

uint64_t sub_23E920904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int *a28, void *a29)
{
  v36 = 4 * (v29 ^ v31 ^ v33);
  v37 = 1153278077 * ((*(*a29 + (*a28 & 0xFFFFFFFFDB20119CLL)) ^ (a27 + v36)) & 0x7FFFFFFF);
  v38 = v37 ^ HIWORD(v37);
  v39 = (v30 - 3162 + (((((v30 - 3162) ^ v31) & v31) >> (__clz((v30 - 3162) ^ v31 | 1) ^ (v30 - 62))) | 0xFFFFFFFE) + 1153278077 * v38 - 1) >> 24;
  *(v35 + v36) ^= *(a27 + v36) ^ *(*(&off_28512D4A0 + a23) + v39 - 1) ^ *(*(&off_28512D4A0 + a22) + v39 - 3) ^ *(*(&off_28512D4A0 + v30 - 2820) + v39 + 2) ^ (-1602420736 * v38) ^ (1153278077 * v38) ^ (1814088407 * v39);
  return (*(v34 + 8 * ((((633 * ((v30 - 1540729982) & 0x5BD5AC7D ^ 0xC58)) ^ 0xCB0) * (v32 == 1)) ^ (v30 + 172))))();
}

void OowSGu()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *(&off_28512D4A0 + ((-57 * (dword_27E37D390 ^ 0x68 ^ qword_27E37D680)) ^ byte_23EA93AB0[byte_23EA860F0[(-57 * (dword_27E37D390 ^ 0x68 ^ qword_27E37D680))] ^ 0xD2]) + 52);
  v1 = -57 * ((qword_27E37D680 - *v0) ^ 0x68);
  v2 = *(&off_28512D4A0 + (*(off_28512E280 + (*(off_28512DA50 + v1 - 8) ^ 0xEFu) - 4) ^ v1) - 1);
  v3 = *v0 ^ &v5 ^ *(v2 - 4);
  *v0 = 1773100999 * v3 - 0x110D1848A5CC1228;
  *(v2 - 4) = 1773100999 * (v3 ^ 0xB2DEEC90F0DCD368);
  v6[0] = (31943069 * (((v6 | 0x6B2568BC) - (v6 & 0x6B2568BC)) ^ 0xAC6B61B5)) ^ 0x63319FAD;
  LOBYTE(v2) = -57 * ((*(v2 - 4) + *v0) ^ 0x68);
  v4 = *(&off_28512D4A0 + ((-57 * ((qword_27E37D680 - dword_27E37D390) ^ 0x68)) ^ byte_23EA93AB0[byte_23EA860F0[(-57 * ((qword_27E37D680 - dword_27E37D390) ^ 0x68))] ^ 0xD2]) - 7);
  (*(v4 + 8 * ((*(off_28512E200 + (*(off_28512D920 + v2 - 8) ^ 0xD8u) - 8) ^ v2) + 3969)))(v6);
  __asm { BRAA            X9, X17 }
}

void sub_23E920CF8(uint64_t a1)
{
  v1 = 1046730637 * ((a1 & 0x5774B263 | ~(a1 | 0x5774B263)) ^ 0xF288F070);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_23E920DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v54 = v52 ^ 0x241u;
  v55 = ((&STACK[0x3E0] ^ 0xFFEBDFD4FBD5CBF6) + ((2 * &STACK[0x3E0]) & 0xFFD7BFA9F7AB97E8) + 0x14202B042A2A3DLL + v54) % 0x25;
  LODWORD(a31) = (a5 + 54063719) & 0xFCC704FF;
  LODWORD(a30) = (a31 + 1557485961) & 0xA32AABFC;
  LODWORD(a47) = a5 + 1461460587;
  LODWORD(a45) = a5 ^ 0xCCE;
  LODWORD(a43) = a5 - 1989401973;
  HIDWORD(v57) = a5 + 2111255314;
  LODWORD(v57) = a5 + 1112782020;
  LODWORD(a28) = -1681 - a5;
  return (*(v53 + 8 * (((((v54 + 930) ^ 0xD4F) == 32) * (((v54 + 63) | 0x180) - 1961)) ^ v54)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v57, a30, a31, (v55 ^ 0xFFFBABCBFF6D7FBELL) + 0x4543400928052, (2 * v55) & 0x7C, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_23E9210A4(uint64_t a1)
{
  v7 = a1 - 1;
  *(v5 + v7) ^= *(v1 + (v7 & 0xF)) ^ *(v3 + (v7 & 0xF)) ^ (-67 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 1);
  return (*(v6 + 8 * ((294 * (v7 == 0)) ^ (v4 - 3302))))();
}

uint64_t sub_23E921138@<X0>(uint64_t a1@<X8>)
{
  v4 = v3 & 0x4821EC7F;
  v5 = 33731311 * ((&v7 + 1740502611 - 2 * (&v7 & 0x67BDF653)) ^ 0x660B4B6C);
  v7 = v1;
  v8 = (v2 ^ ((v2 ^ 0x7AC8A3F6) - 807872384) ^ ((v2 ^ 0x7C4EFC1D) - 916551787) ^ ((v2 ^ 0xDFFFF77E) + 1794084088) ^ 0x32EC8BC3 ^ (((((v4 + 299594562) & 0xEE24877F) - 1818876506) ^ v2) + 646338411)) + v5;
  v9 = v4 - v5 - 2707;
  return (*(a1 + 8 * (v4 + 964)))(&v7);
}

void sub_23E9212C4(uint64_t a1)
{
  v1 = 956911519 * (((a1 ^ 0x1774EBB4) & 0xEDB980E7 | ~(a1 ^ 0x1774EBB4 | 0xEDB980E7)) ^ 0x7A649812);
  v2 = *a1 + v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24) + v1;
  v5 = (8 * (((v4 ^ 0x9F8368A4) + 346962718) ^ v4 ^ ((v4 ^ 0x1017F44C) + 456828918) ^ ((v4 ^ 0xCBDCF41) + 126917881) ^ ((v4 ^ 0x17FBFFEF) + 483830871))) ^ 0xA6956230;
  v6 = (v4 ^ 0xC32C03B0) & (2 * (v4 & 0xEB2D53BA)) ^ v4 & 0xEB2D53BA;
  v7 = ((2 * (v4 ^ 0x913C83F0)) ^ 0xF423A094) & (v4 ^ 0x913C83F0) ^ (2 * (v4 ^ 0x913C83F0)) & 0x7A11D04A;
  v8 = *(v3 + 16);
  v9 = ((4 * (v7 ^ 0xA10504A)) ^ 0xE8474128) & (v7 ^ 0xA10504A) ^ (4 * (v7 ^ 0xA10504A)) & 0x7A11D048;
  v10 = ((16 * (v9 ^ 0x12109042)) ^ 0xA11D04A0) & (v9 ^ 0x12109042) ^ (16 * (v9 ^ 0x12109042)) & 0x7A11D040;
  v11 = (v9 ^ 0x68014000) & (16 * ((v7 ^ 0x72018000) & (4 * v6) ^ v6)) ^ (v7 ^ 0x72018000) & (4 * v6) ^ v6 ^ 0x7A11D04A ^ (v10 ^ 0x20110000) & (((v9 ^ 0x68014000) & (16 * ((v7 ^ 0x72018000) & (4 * v6) ^ v6)) ^ (v7 ^ 0x72018000) & (4 * v6) ^ v6) << 8);
  v12 = *(v3 + 20) + __CFADD__(v5, v8) + (((v4 ^ (2 * ((v11 << 16) ^ v11 ^ ((v11 << 16) ^ 0xDFFFFFFF) & (((v10 ^ 0x5A00D04A) & 0x11D00000 | (v10 ^ 0xA5FF2FB5) & ((v10 ^ 0x5A00D04A) << 8)) ^ 0x60000000)))) >> 29) ^ 5);
  *(v3 + 16) = v5 + v8;
  *(v3 + 20) = v12;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23E9215D0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, int a61)
{
  STACK[0x17C8] = 0x79CF26C1B56A03CELL;
  STACK[0x17C0] = 0x92710317D9F750B2;
  v63 = a1 + 1077;
  LODWORD(STACK[0x330]) = a61;
  v64 = 1317436891 * ((v62 - 192) ^ 0xF521D675);
  STACK[0x18E0] = &STACK[0x3E8];
  *(v62 - 192) = v64 + a1 + 3402 - 2932;
  *(v62 - 152) = -1317436891 * ((v62 - 192) ^ 0xF521D675) + 525804219 * a61 + 1083540432;
  *(v62 - 128) = (2030010229 * a14 + 1113878042) ^ v64;
  STACK[0x18C8] = &STACK[0x50DD93A2CC7F0D29];
  STACK[0x18D0] = &STACK[0x17C0];
  STACK[0x18F0] = a18;
  STACK[0x18F8] = &STACK[0x17E0];
  v65 = (*(v61 + 8 * ((a1 + 3402) ^ 0x29F)))(v62 - 192);
  v66 = *(v62 - 168);
  LODWORD(STACK[0x270]) = v66;
  return (*(v61 + 8 * ((872 * (v66 == -1720814856)) ^ v63)))(v65);
}

uint64_t sub_23E92164C(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = 1317436891 * (a1 ^ 0xF521D675);
  v3 = *(a1 + 32) ^ v2;
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = 255409663 * (*(a1 + 4) - v2) - 121145443;
  v9 = 1317436891 * ((v11 + 1000998617 - 2 * (v11 & 0x3BAA06D9)) ^ 0xCE8BD0AC);
  v12 = v3 + 501369649 + v9;
  v15 = v8 ^ v9;
  v14 = v4;
  v16 = v6;
  v11[0] = v7;
  v11[1] = v5;
  result = (*(*(&off_28512D4A0 + (v3 ^ 0xE21DC182)) + (v3 ^ 0xE21DD1FD)))(v11);
  *(a1 + 8) = v13;
  return result;
}

uint64_t sub_23E921778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 120) = v19 + 33731311 * ((((v20 - 136) | 0x41553669) - ((v20 - 136) & 0x41553669)) ^ 0x40E38B56) + 985;
  *(v20 - 136) = &a17;
  *(v20 - 128) = a16;
  (*(v17 + 8 * (v19 ^ 0x9BD)))(v20 - 136);
  v21 = 33731311 * ((((2 * ((v20 - 136) ^ 0xB39236D8)) | 0x6CAFA030) - ((v20 - 136) ^ 0xB39236D8) + 1235759080) ^ 0x4735BFF);
  *(v20 - 136) = v18;
  *(v20 - 128) = v21 + 103995398;
  *(v20 - 124) = v19 - v21 + 1994;
  (*(v17 + 8 * (v19 ^ 0x1612)))(v20 - 136);
  *(v20 - 120) = a16;
  *(v20 - 124) = (v19 + 1164) ^ (33731311 * ((((2 * (v20 - 136)) | 0xABB360B4) - (v20 - 136) - 1440329818) ^ 0x546F0D65));
  *(v20 - 136) = v18;
  v22 = (*(v17 + 8 * (v19 + 2460)))(v20 - 136);
  return (*(v17 + 8 * ((30 * (*(v20 - 128) != v19 + 239867432 + (v19 ^ 0x4F4) - 2580)) ^ v19)))(v22);
}

void **sub_23E9219B4(void **result)
{
  v1 = *result;
  *v1 = 0xFBDC740BB9F3DCDCLL;
  v1[1] = 0x5190721660F77F86;
  v1[2] = 0;
  return result;
}

uint64_t sub_23E921A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4 + 698;
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 1948623840;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v6 = *(a1 + 96) + 800;
  v7 = *(a2 + 8) + (*(a2 + 4) - v3);
  v8 = 31943069 * ((&v10 & 0xBC12CC49 | ~(&v10 | 0xBC12CC49)) ^ 0x84A33ABF);
  v12 = v8 + 3154;
  v11 = v7;
  v10 = v3 - v8 - 1339562294;
  v13 = v6;
  (*(a3 + 33224))(&v10);
  return (v5 - 1518898796 + v14);
}

void sub_23E921B40(uint64_t a1)
{
  v2 = *(&off_28512D4A0 + ((-57 * ((qword_27E37D680 - dword_27E37D420) ^ 0x68)) ^ byte_23EA861F0[byte_23EA7A950[(-57 * ((qword_27E37D680 - dword_27E37D420) ^ 0x68))] ^ 0x56]) + 365);
  v3 = -57 * ((qword_27E37D680 - *v2) ^ 0x68);
  v4 = *(&off_28512D4A0 + (*(off_28512E200 + (*(off_28512D920 + v3 - 8) ^ 0xD8u) - 8) ^ v3) - 12);
  v5 = &v9[*(v4 - 4) - *v2];
  v6 = 1773100999 * v5 - 0x110D1848A5CC1228;
  v7 = 1773100999 * (v5 ^ 0xB2DEEC90F0DCD368);
  *v2 = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *v2;
  v8 = *(&off_28512D4A0 + ((-57 * ((qword_27E37D680 - dword_27E37D420) ^ 0x68)) ^ byte_23EAA13B0[byte_23EA93CB0[(-57 * ((qword_27E37D680 - dword_27E37D420) ^ 0x68))] ^ 0xC]) + 171);
  (*(v8 + 8 * ((*(off_28512E230 + (*(off_28512E0A0 + (-57 * (v4 ^ 0x68 ^ v7)) - 4) ^ 0x72u) - 8) ^ (-57 * (v4 ^ 0x68 ^ v7))) + 3976)))(*(&off_28512D4A0 + ((-57 * ((v7 + v4) ^ 0x68)) ^ *(off_28512E230 + (*(off_28512E0A0 + (-57 * ((v7 + v4) ^ 0x68)) - 4) ^ 0x39u) - 8)) + 33), sub_23E96955C);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_23E921D28@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, uint64_t a13, unsigned int *a14)
{
  *a12 = 1;
  v17 = *a14;
  v18 = v16 - 152;
  v19 = 956911519 * ((v15 - ((v16 - 152) | v15) + a10) ^ 0x1124828CC86799D4);
  *(v16 - 112) = 1 - v19;
  *(v18 + 8) = v19 + 5119;
  *(v16 - 136) = (a1 + 1008153792) ^ v19;
  *(v16 - 132) = a1 + 1008153792 - v19 + 92;
  *(v16 - 148) = ((a1 + 1008153792) ^ 0xB2) + v19;
  *(v16 - 128) = 476319917 - v19 + a1;
  *(v18 + 32) = v17 - v19;
  v20 = (*(v14 + 8 * (a1 ^ 0x1C7D)))(v16 - 152);
  return (*(v14 + 8 * *(v16 - 152)))(v20);
}

uint64_t sub_23E921DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unsigned int a59)
{
  (*(v61 + 8 * (v59 ^ 0x2F0)))();
  LODWORD(STACK[0x208]) = v60;
  return (*(v61 + 8 * ((49 * ((v62 ^ ((v59 ^ 0xE7) + 1)) & 1)) ^ (v59 - 3110))))(a59);
}

uint64_t sub_23E921E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, int *a16, int *a17, _DWORD *a18, int a19)
{
  v24 = 1317436891 * (((~&a16 & 0x55BDA68) - (~&a16 | 0x55BDA69)) ^ 0xF07A0C1C);
  a17 = v23;
  LODWORD(a16) = 887042772 - v24;
  HIDWORD(a16) = v24 + v20 - 1731;
  (*(v21 + 8 * (v20 ^ 0x591)))(&a16);
  v25 = 2048652491 * (((&a16 | 0xB50CB5ED) + (~&a16 | 0x4AF34A12)) ^ 0xC809F3DA);
  a19 = v25 + v20 - 2465;
  LODWORD(a18) = v25 + 1799958687;
  HIDWORD(a18) = v25 + 1375795241;
  a16 = v23;
  a17 = &a12;
  (*(v21 + 8 * (v20 + 1408)))(&a16);
  v26 = v19[1];
  *v19 += a12;
  v19[1] = v26 + a13;
  v27 = v19[3];
  v19[2] += a14;
  v19[3] = v27 + a15;
  a18 = v19;
  LODWORD(a17) = (v20 - 119669372) ^ (956911519 * ((((2 * &a16) | 0xAA62D5FE) - &a16 + 718181633) ^ 0xAA676641));
  a16 = v23;
  v28 = (*(v21 + 8 * (v20 ^ 0x1A63)))(&a16);
  return (*(v21 + 8 * ((21 * (v22 - 349351110 < ((v20 - 546622311) & 0x2094C7F7u) - 1845)) ^ v20)))(v28);
}

uint64_t sub_23E922144(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  *a4 = 0;
  *a5 = 0;
  a13 = (31943069 * ((2 * ((&a13 ^ 0xF6FB255A) & 0x48AB4D92) - (&a13 ^ 0xF6FB255A) - 1219186071) ^ 0x86E19E3A)) ^ 0x63319FAD;
  v16 = (*(v14 + 32872))(&a13);
  return (*(v14 + 8 * ((1429 * (a14 == v15)) ^ 0x1EDu)))(v16);
}

void sub_23E922210(uint64_t a1)
{
  v1 = *(a1 + 4) - 2048652491 * ((2 * (a1 & 0x2EFD718D) - a1 + 1359122034) ^ 0x2C07C844);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_23E9222FC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[4];
  v7 = v1[5];
  v8 = vrev32q_s8(v1[1]);
  v9 = vrev32q_s8(*v1);
  v10 = vrev32q_s8(v1[3]);
  v1[2] = vrev32q_s8(v1[2]);
  v1[3] = v10;
  *v1 = v9;
  v1[1] = v8;
  v1[6] = vrev32q_s8(v4);
  v1[7] = vrev32q_s8(v5);
  v1[4] = vrev32q_s8(v6);
  v1[5] = vrev32q_s8(v7);
  return (*(a1 + 8 * ((((v2 & 0x1FFFFFFE0) == 32) * (v3 - 205)) ^ (v3 + 1608))))();
}

void sub_23E92241C(uint64_t a1)
{
  v1 = *(a1 + 8) - 2073269857 * (a1 ^ 0x814DB918);
  __asm { BRAA            X10, X17 }
}

void sub_23E9224BC(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16) - 1875091903 * ((-2 - ((a1 | 0xCB223EB6) + (~a1 | 0x34DDC149))) ^ 0xED31795);
  v2 = *(a1 + 8);
  v5 = v1 - 1875091903 * (((&v4 ^ 0xE1C823C5) & 0x99551CA1 | ~(&v4 ^ 0xE1C823C5 | 0x99551CA1)) ^ 0xBD6C1647) + 1323;
  v4 = v2;
  v3 = *(&off_28512D4A0 + v1 - 1830);
  (*(v3 + 8 * (v1 ^ 0x7DC)))(&v4);
  __asm { BRAA            X8, X17 }
}

void sub_23E9225D4(uint64_t a1)
{
  v1 = 914963389 * ((-2 - ((a1 ^ 0x101F3800 | 0x2A60C6E3) + (a1 ^ 0x204042A0 | 0xD59F391C))) ^ 0x2E4C5C38);
  v2 = *(a1 + 16) - v1;
  v3 = *(a1 + 32) + v1;
  v5 = (v3 & 0x30000000) == 0x20000000 || (v3 & 0x3F000000) == 167772160;
  __asm { BRAA            X11, X17 }
}

uint64_t sub_23E922738@<X0>(int a1@<W8>)
{
  v5 = a1 ^ 0xF81;
  v6 = LODWORD(STACK[0x3E0])++;
  *v2 = v6 + 1;
  v7 = *v1;
  v8 = 1046730637 * ((~((v4 - 192) | 0x9BABF912D8A15E9ELL) + ((v4 - 192) & 0x9BABF912D8A15E9ELL)) ^ 0x177390F17D5D1C8DLL);
  *(v4 - 176) = -1046730637 * ((~((v4 - 192) | 0xD8A15E9E) + ((v4 - 192) & 0xD8A15E9E)) ^ 0x7D5D1C8D);
  *(v4 - 192) = ((v5 + 79342274) ^ 0x70) + v8;
  *(v4 - 156) = (v5 + 1454886731) ^ v8;
  *(v4 - 152) = v5 + 79342274 - v8;
  STACK[0x18C8] = v8 ^ 0x13FF;
  STACK[0x18D8] = v7 ^ v8;
  *(v4 - 172) = v8 + v5 + 79342274 - 8;
  v9 = (*(v3 + 8 * (v5 ^ 0x1D55)))(v4 - 192);
  return (*(v3 + 8 * *(v4 - 160)))(v9);
}

uint64_t sub_23E922AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t (*a19)(uint64_t))
{
  v22 = 956911519 * ((355980049 - ((v21 - 136) | 0x1537D311) + ((v21 - 136) | 0xEAC82CEE)) ^ 0x959E2050);
  *(v21 - 120) = v22 + (a5 ^ 0x7FEFFF6E) + ((2 * a5) & 0xFFDFFEDC) - 67408396;
  *(v21 - 128) = a4;
  *(v21 - 136) = v22 + v19 + 2486;
  v23 = (*(v20 + 8 * (v19 ^ 0x1049)))(v21 - 136);
  return a19(v23);
}

uint64_t sub_23E922C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int8 a26, unsigned __int8 a27, unsigned __int8 a28, unsigned __int8 a29, unsigned __int8 a30, unsigned __int8 a31, unsigned __int8 a32, unsigned __int8 a33, unsigned __int8 a34, unsigned __int8 a35, unsigned __int8 a36, unsigned __int8 a37)
{
  v40 = 678 * (v38 ^ 0xB88);
  v41 = *(&off_28512D4A0 + (v38 ^ 0xB14)) - 4;
  v42 = v41[a33 ^ 0x99] + (v40 ^ 0x6C);
  v43 = *(&off_28512D4A0 + (v38 ^ 0xA49));
  v44 = (16 * v42) & 0x50 ^ v42;
  v45 = *(&off_28512D4A0 + v38 - 2857) - 8;
  v46 = v45[a26 ^ 0x82];
  v47 = *(v43 + (a36 ^ 0xBALL)) << 8;
  v48 = *(&off_28512D4A0 + v38 - 2613) - 4;
  v49 = (((v45[a30 ^ 0x5FLL] ^ 1) << 24) ^ 0x9A2DFBCA) & ((16 * v42) & 0x50 ^ v42 ^ 0xFF2DFBEA) | v44 & 0x35;
  v50 = v41[a25 ^ 0xBLL] + 82;
  v51 = ((16 * v50) & 0x50 ^ ~v50 | 0xFFFFFF01) & ((v45[a22 ^ 0x9BLL] << 24) ^ 0x1C7053DA) | ((16 * v50) & 0x50 ^ v50) & 0x25;
  v52 = *(v43 + (a24 ^ 5)) << 8;
  v53 = (v48[a23 ^ 0xC5] ^ ((a23 ^ 0x55) - (a23 ^ 0x64))) << 16;
  v267 = v48;
  v268 = v45;
  LODWORD(v45) = v45[a34 ^ 0x69];
  v54 = ((v53 & 0xFF9FFFFF | (v51 ^ 0x8F10011C) & ~v53) ^ 0xEF6CA053) & (v52 ^ 0xFFFFABFF);
  v55 = ((((v48[a35 ^ 0xC6] ^ ((a35 ^ 0x56) - (a35 ^ 0x67))) << 16) ^ 0xD52A2464) & (v47 ^ 0xD5FFD06D) | v47 & 0xDB00) ^ 0xD6E75A69;
  LOBYTE(v51) = v48[a27 ^ 0xB5];
  LOBYTE(v53) = (a27 ^ 0x25) - (a27 ^ 0x14);
  v56 = v53 + v51;
  LOBYTE(v53) = v51 & v53;
  v57 = v45 ^ 0xFFFFFF84;
  v58 = v56 - 2 * v53;
  if ((((v45 ^ 0x84) - 1) & v45 & 0x80u) == 0)
  {
    v59 = v58 ^ 0x88;
  }

  else
  {
    v59 = -120;
  }

  v60 = ((v59 | v58) ^ v58 & 0x88) << 16;
  v61 = (((v46 ^ 0x26) << 24) ^ 0x8E652288) & ~v60 | v60 & 0x9A0000;
  v62 = a37 - (a37 ^ 0x40);
  v63 = (v62 ^ 0x80) & a37;
  v64 = v62 ^ 0xD10CE253 ^ (a37 + 787684820 + (~(2 * a37) | 0xFFFFFE59));
  v65 = v41[a29 ^ 0xD4] + 82;
  v66 = v41[(v64 + 2 * v63) ^ 0xBFLL] + 82;
  v67 = (((16 * v65) & 0x50 ^ v65) & 0x8B | (v61 ^ 0x60CF93FC) & ((16 * v65) & 0x50 ^ v65 ^ 0xFFFFF7FF)) ^ 0xB4F0C6B5;
  v68 = *(v43 + (a28 ^ 0xCBLL)) << 8;
  v69 = *(v43 + (a32 ^ 0xE8)) << 8;
  v70 = (((16 * v66) & 0x50 ^ v66) & 0xC4 | ((16 * v66) & 0x50 ^ ~v66 | 0xFFFFFF00) & (((v57 << 24) & 0xFC000000 | v55 & ~(v57 << 24)) ^ 0x968FC436)) ^ 0x7381B410;
  v71 = v68 & 0x88888888 ^ 0xFF75A830 ^ v67 & (v68 ^ 0xFFFF44FF);
  v271 = (((v37 ^ 0x3A608A64) - 396010284) ^ ((v37 ^ 0xD6AF38A7) + 78310929) ^ ((v37 ^ 0x799F876C) - 1415949860)) - 806914315;
  v72 = (v49 & 0xE1000046 ^ 0xDE957EFB ^ (((v69 ^ 0xFFFF80FF) & (((v48[a31 ^ 0x4ELL] ^ ((a31 ^ 0xDE) - (a31 ^ 0xEF))) << 16) ^ 0x98D78BEC) | v69 & 0x7400) ^ 0x8666B555) & (v49 ^ 0x31D20433)) - ((2 * v44) & 0x68) + 52;
  v270 = v40 ^ 0xD3B;
  v73 = v39;
  v74 = (((((v39[v270] ^ 0xC0) - (v39[v270] ^ 0xF1)) ^ v48[v39[v270] ^ 0x50]) << 16) ^ 0xD8482F72) & ((*(v43 + (v39[6] ^ 0xEBLL)) << (v40 - 54)) ^ 0xDCFFFAF7);
  v75 = (*(v43 + (v39[6] ^ 0xEBLL)) << (v40 - 54)) & 0xD000;
  v76 = *(v43 + (v39[2] ^ 0x7ELL)) << 8;
  v77 = v41[v39[11] ^ 0x7BLL] + 82;
  v78 = *(v43 + (v39[14] ^ 0x24)) << 8;
  v79 = (~v77 | 0xFFFFFF00) & ((*(v43 + ((v73[10] - ((2 * v73[10]) & 0x1A8u) + 212) ^ 0x2CLL)) << 8) ^ 0xB8C70427) | ((16 * v77) & 0x70 ^ v77) & 0xD8;
  v80 = (v268[v39[8] ^ 0x16] ^ 0xA8) << 24;
  v81 = (v267[v73[9] ^ 7] ^ ((v73[9] ^ 0x97) - (v73[9] ^ 0xA6))) << 16;
  v82 = (v81 ^ 0xFFBFFFFF) & (v80 & 0xAAAAAAAA ^ 0xC05D2CDE ^ (v79 ^ 0xEDE07581) & (v80 ^ 0x57FFFFFF));
  v83 = ((v268[v39[12] ^ 0xF0] << 24) ^ 0xF4946EB4) & (v78 ^ 0xFFB54BB7);
  v84 = v41[v39[7] ^ 0xD3] + 82;
  v85 = (v268[*v73 ^ 0x22] ^ 0x1D) << 24;
  v86 = (((v267[v73[13] ^ 0xDDLL] ^ ((v73[13] ^ 0x4D) - (v73[13] ^ 0x7C))) << 16) ^ 0x3B269DB4) & ((v83 | v78 & 0x9100) ^ 0x646B7242) | v83 & 0xC4006200;
  v87 = (v85 ^ 0x4DFFFF51) & (((((((v73[1] ^ 0x3E) - (v73[1] ^ 0xF)) ^ v267[v73[1] ^ 0xAELL]) << 16) ^ 0x7C740C68) & (v76 ^ 0x7CFF6C79) | v76 & 0xFFFFF3FF) ^ 0x45C6ED39);
  v88 = v85 & 0xC6000000;
  v89 = v41[v73[3] ^ 0x9ELL] + 82;
  v90 = (16 * v89) & 0x50;
  v91 = (v88 ^ 0xFFB1561C ^ v87) & (v90 ^ ~v89 | 0xFFFFFF00);
  v92 = (v90 ^ v89) & 0xB2;
  LOBYTE(v90) = v41[v73[15] ^ 0xC6] + 82;
  v93 = (((16 * v84) & 0x50 | 5) ^ v84) & 0xD8 ^ v71 ^ (((16 * v84) & 0x50 | 5) ^ v84 ^ 0xFFFFFFBA) & (v74 & 0x80C22500 ^ 0x7942379B ^ ((v268[v73[4] ^ 0x17] << 24) ^ 0x3C3DDABC) & ((v74 | v75) ^ 0x2725258E));
  v94 = v92 ^ v54 ^ (v52 & 0xD00 | 0x9C987265) ^ v91;
  v95 = v81 & 0x850000 ^ v72 ^ v82;
  v96 = *(&off_28512D4A0 + (v40 ^ 0xCB5)) - 8;
  v97 = *(&off_28512D4A0 + (v40 ^ 0xC80)) - 8;
  v98 = *&v97[4 * (BYTE2(v93) ^ 0xB0)];
  v99 = *(&off_28512D4A0 + v40 - 3016) - 8;
  v100 = v86 ^ v70;
  v101 = *(&off_28512D4A0 + (v40 ^ 0xD66)) - 4;
  v102 = *&v101[4 * ((v90 ^ (16 * v90) & 0x55) ^ 0x2A ^ v100)];
  v103 = *&v97[4 * (BYTE2(v95) ^ 0xAE)];
  v104 = *&v96[4 * (HIBYTE(v94) ^ 0x62)] ^ BYTE1(v95) ^ v98 ^ (4 * v98) ^ *&v99[4 * (BYTE1(v95) ^ 0xE2)] ^ v102;
  v105 = (4 * v103) & 0x800;
  if ((v105 & v103) != 0)
  {
    v105 = -v105;
  }

  v106 = *&v99[4 * (BYTE1(v100) ^ 0x2F)] ^ *&v96[4 * (HIBYTE(v93) ^ 0x17)] ^ *&v101[4 * (v94 ^ 0xFD)] ^ (4 * v103) & 0xFFFFF7FF ^ (v105 + (v103 ^ 0xF417320D));
  v269 = v106 ^ BYTE1(v100);
  v107 = *&v97[4 * (BYTE2(v100) ^ 0x89)];
  v108 = BYTE1(v94);
  v109 = *&v99[4 * (BYTE1(v94) ^ 0xAE)];
  v110 = *&v97[4 * (BYTE2(v94) ^ 0xAC)];
  v111 = v107 ^ v108 ^ (4 * v107) ^ v109 ^ *&v101[4 * (v93 ^ 0x79)] ^ *&v96[4 * (HIBYTE(v95) ^ 0x64)];
  v112 = v110 ^ BYTE1(v93) ^ (4 * v110) ^ *&v96[4 * (HIBYTE(v100) ^ 0xB)] ^ *&v99[4 * (BYTE1(v93) ^ 0x7F)] ^ *&v101[4 * (v95 ^ 0x68)];
  v113 = v112 ^ 0x4ED33C59;
  v114 = *&v97[4 * (BYTE2(v106) ^ 0xD0)];
  v115 = v114 ^ (4 * v114) ^ *&v96[4 * (HIBYTE(v104) ^ 0x41)] ^ ((v111 ^ 0x28A2) >> 8) ^ *&v99[4 * (((v111 ^ 0x28A2) >> 8) ^ 0x59)] ^ *&v101[4 * (v112 ^ 0xC8)];
  v116 = *&v97[4 * (BYTE2(v111) ^ 0x2B)];
  v117 = *&v101[4 * (v104 ^ 0x5F)] ^ __ROR4__((v113 << 12) & 0xFF00000 ^ __ROR4__(v116 ^ (4 * v116) ^ *&v99[4 * (BYTE1(v113) ^ 0x59)] ^ 0xCDCE32E ^ *&v96[4 * ((v269 ^ 0x1178E56Bu) >> 24)], 12) ^ 0x4656AA14, 20);
  v118 = *&v96[4 * (HIBYTE(v111) ^ 0xE8)] ^ BYTE1(v104) ^ *&v97[4 * BYTE2(v113)] ^ (4 * *&v97[4 * BYTE2(v113)]) ^ *&v99[4 * (BYTE1(v104) ^ 0xE3)] ^ *&v101[4 * (v269 ^ 0xFA)];
  v119 = *&v97[4 * (BYTE2(v104) ^ 0xFB)];
  v120 = *&v96[4 * HIBYTE(v113)] ^ v119 ^ (4 * v119) ^ 0x70D47E88;
  v121 = (v120 & 0xEFCDE7D8 ^ 0x647A1FCA) & (v120 & 0x10321827 ^ 0xFFDDF7F9) | v120 & 0x10000025;
  v122 = v115 ^ 0x8A68B647;
  v123 = v118 ^ 0x29;
  v124 = ((v269 ^ 0xE56B) >> 8) ^ *&v101[4 * (v111 ^ 0xA2)] ^ *&v99[4 * (((v269 ^ 0xE56B) >> 8) ^ 0x59)] ^ 0x60228E5A ^ v121;
  v125 = *&v97[4 * (BYTE2(v117) ^ 0x2B)];
  v126 = *&v96[4 * (HIBYTE(v115) ^ 0x5E)];
  v127 = HIBYTE(v124);
  v128 = *&v97[4 * ((v118 ^ 0x87844929) >> 16)];
  v129 = v125 ^ (4 * v125) ^ v126 ^ *&v99[4 * (((v118 ^ 0x4929) >> 8) ^ 0x59)] ^ ((v118 ^ 0x4929) >> 8) ^ *&v101[4 * v124] & 0xFFFDFFFF ^ (*&v101[4 * v124] & 0x20000 | 0x33C0E803);
  v130 = (4 * v128) ^ 0x5C41E39C ^ *&v99[4 * (BYTE1(v124) ^ 0x59)] ^ *&v96[4 * ((v117 ^ 0xB483547B) >> 24)];
  v131 = v128 ^ 0x2E6F2CE0 ^ (v130 + 386955495 - ((2 * v130) & 0x2E20F1CE));
  v132 = v131 & 0xAC117E92 ^ (BYTE1(v124) ^ 0xCF8DEA2D) & 0x8C016A92 | v131 & 0x53EE816D ^ (BYTE1(v124) ^ 0xCF8DEA2D) & 0x438C806D;
  v133 = *&v96[4 * (HIBYTE(v118) ^ 0x53)];
  v134 = *&v97[4 * BYTE2(v124)];
  v135 = *&v97[4 * BYTE2(v122)];
  v136 = v132 ^ *&v101[4 * v122];
  v137 = BYTE1(v122) ^ 0x5C41E39C ^ v133 ^ (4 * v134) ^ *&v99[4 * (BYTE1(v122) ^ 0x59)] ^ *&v101[4 * (v117 ^ 0xEA)];
  v138 = (v137 + 386955495 - ((2 * v137) & 0x2E20F1CE)) ^ v134;
  v139 = *&v96[4 * v127];
  v140 = *&v101[4 * v123];
  v141 = ((v129 ^ 0x3A75F7E) & 0x80276106 | v129 ^ 0x83803E78) & ((v129 ^ 0x3A75F7E) & 0x7FD89EF9 | v129 ^ 0x7C7FC187);
  LOWORD(v126) = v136 ^ 0x8B9C;
  v142 = ((v117 ^ 0x547B) >> 8) ^ 0x5C41E39C ^ (4 * v135) ^ v139 ^ (((v140 - (v140 ^ 0x33C0E803)) ^ 0xFFFFFFFE) + v140) ^ *&v99[4 * (((v117 ^ 0x547B) >> 8) ^ 0x59)];
  v143 = (v142 + 386955495 - ((2 * v142) & 0x2E20F1CE)) ^ v135;
  v144 = *&v97[4 * (BYTE2(v136) ^ 0xD3)];
  v145 = HIBYTE(v143);
  v146 = *&v97[4 * ((v138 ^ 0x2E4C9634u) >> 16)];
  v147 = *&v96[4 * (HIBYTE(v141) ^ 0xD4)] ^ 0x5C41E39C ^ *&v99[4 * (((v138 ^ 0x9634) >> 8) ^ 0x59)] ^ (4 * v144) ^ *&v101[4 * (v143 ^ 0xDB)] ^ ((v138 ^ 0x9634) >> 8);
  v148 = (v147 + 386955495 - ((2 * v147) & 0x2E20F1CE)) ^ v144;
  v149 = BYTE1(v143);
  v150 = *&v99[4 * (BYTE1(v143) ^ 0x52)];
  v151 = (4 * v146) ^ 0x5C41E39C ^ *&v96[4 * (HIBYTE(v136) ^ 0xF5)];
  v152 = *&v97[4 * (BYTE2(v143) ^ 0xDB)];
  v153 = v150 ^ v146 ^ *&v101[4 * (((v129 ^ 0x7E) & 6 | v129 ^ 0x78) & ((v129 ^ 0x7E) & 0xF9 | v129 ^ 0x87) ^ 0x91)] ^ (v151 + 386955495 - ((2 * v151) & 0x2E20F1CE));
  v154 = v153 ^ v149;
  v155 = *&v96[4 * v145];
  v156 = *&v101[4 * v126] ^ *&v96[4 * ((v138 ^ 0x2E4C9634u) >> 24)] ^ *&v99[4 * (BYTE1(v141) ^ 0x59)] ^ ((v152 ^ 0xF417320D ^ -(v152 ^ 0xF417320D) ^ (((4 * v152) ^ 0x43F20738) - (v152 ^ 0xE3074AEA ^ (((4 * v152) ^ 0x43F20738) + 386955495 - ((2 * ((4 * v152) ^ 0x43F20738)) & 0x2E20F1C8))))) + ((4 * v152) ^ 0x43F20738));
  LOBYTE(v129) = v101[4 * v126] ^ v96[4 * ((v138 ^ 0x2E4C9634u) >> 24)] ^ v99[4 * (BYTE1(v141) ^ 0x59)] ^ ((v152 ^ 0xD ^ -(v152 ^ 0xD) ^ (((4 * v152) ^ 0x38) - (v152 ^ 0xEA ^ (((4 * v152) ^ 0x38) - 25 - ((2 * ((4 * v152) ^ 0x38)) & 0xC8))))) + ((4 * v152) ^ 0x38)) ^ BYTE1(v141);
  v157 = *&v97[4 * (BYTE2(v141) ^ 0xA8)];
  v158 = v157 ^ 0xFCB4AE4E ^ (((4 * v157) ^ 0x5C41E39C) + 386955495 - ((2 * ((4 * v157) ^ 0x5C41E39C)) & 0x2E20F1C8));
  v159 = *&v99[4 * (BYTE1(v126) ^ 0x59)] ^ BYTE1(v126) ^ *&v101[4 * (v138 ^ 0xA5)] ^ v158 & (v155 ^ 0xD2DB82AE) ^ (v158 | v155 ^ 0xD2DB82AE);
  v160 = *&v97[4 * (BYTE2(v153) ^ 0x56)];
  v161 = (4 * v160) ^ 0x5C41E3E7 ^ *&v96[4 * (HIBYTE(v148) ^ 6)] ^ *&v101[4 * (v159 ^ 0xFA)] ^ *&v99[4 * (BYTE1(v156) ^ 0x22)] ^ BYTE1(v156);
  v162 = (v161 + 386955495 - ((2 * v161) & 0x2E20F1CE)) ^ v160;
  v163 = *&v97[4 * (BYTE2(v156) ^ 6)];
  v164 = (4 * v163) ^ 0x5C41E39C ^ *&v99[4 * (((v159 ^ 0x13FA) >> 8) ^ 0x59)] ^ *&v101[4 * (v148 ^ 0x2A)] ^ *&v96[4 * (((v154 ^ 0xE4FE4AFD) >> (v129 & 0x18) >> (v129 & 0x18 ^ 0x18)) ^ 0xD4)] ^ ((v159 ^ 0x13FA) >> 8);
  v165 = (v164 + 386955495 - ((2 * v164) & 0x2E20F1CE)) ^ v163;
  v166 = *&v97[4 * (((v159 ^ 0xD7C613FA) >> 16) - (((v159 ^ 0xD7C613FA) >> 15) & 0x150)) + 672];
  v167 = (4 * v166) ^ 0x5C41E39C ^ *&v96[4 * (HIBYTE(v156) ^ 0xC0)];
  v168 = *&v96[4 * (HIBYTE(v159) ^ 3)];
  v169 = *&v97[4 * (BYTE2(v148) ^ 0xCF)];
  v170 = v166 ^ ((v148 ^ 0xEBB) >> 8) ^ *&v101[4 * (v154 ^ 0x6C)] ^ *&v99[4 * (((v148 ^ 0xEBB) >> 8) ^ 0x59)] ^ (v167 + 386955495 - ((2 * v167) & 0x2E20F1CE));
  v171 = v162 ^ 0xE0C4BC9A;
  v172 = v165 ^ 0xF23AFF70;
  v173 = v168 ^ ((v154 ^ 0x4AFD) >> 8) ^ *&v99[4 * (((v154 ^ 0x4AFD) >> 8) ^ 0x59)] ^ *&v101[4 * (v129 ^ 0x90)] ^ ((v169 ^ 0xF417320D ^ -(v169 ^ 0xF417320D) ^ (((4 * v169) ^ 0x43F20738) - (v169 ^ 0xE3074AEA ^ (((4 * v169) ^ 0x43F20738) + 386955495 - ((2 * ((4 * v169) ^ 0x43F20738)) & 0x2E20F1C8))))) + ((4 * v169) ^ 0x43F20738));
  v174 = *&v97[4 * ((v165 ^ 0xF23AFF70) >> 16)];
  v175 = v173 ^ 0xCB3DBB6B;
  v176 = *&v96[4 * (HIBYTE(v162) ^ 0x34)] ^ 0x5C41E3BF ^ (4 * v174) ^ *&v99[4 * (BYTE1(v170) ^ 0x7A)] ^ *&v101[4 * (v173 ^ 0xFA)] ^ BYTE1(v170);
  v177 = (v176 + 386955495 - ((2 * v176) & 0x2E20F1CE)) ^ v174;
  v178 = *&v97[4 * (BYTE2(v170) ^ 0x20)];
  v179 = *&v96[4 * (HIBYTE(v165) ^ 0x26)] ^ 0x5C41E39C ^ (4 * v178) ^ *&v99[4 * (BYTE1(v175) ^ 0x59)] ^ *&v101[4 * (v162 ^ 0xB)] ^ BYTE1(v175);
  v180 = (v179 + 386955495 - ((2 * v179) & 0x2E20F1CE)) ^ v178;
  v181 = *&v97[4 * BYTE2(v175)] ^ 0xF417320D;
  v182 = *&v96[4 * (HIBYTE(v170) ^ 0x38)] ^ BYTE1(v171) ^ v181 ^ *&v99[4 * (BYTE1(v171) ^ 0x59)] ^ *&v101[4 * v172] ^ (4 * (v181 + 619426755 - ((2 * v181) & 0x9D76786)));
  LOBYTE(v171) = v96[4 * (HIBYTE(v170) ^ 0x38)] ^ BYTE1(v171) ^ v181 ^ v99[4 * (BYTE1(v171) ^ 0x59)] ^ v101[4 * v172] ^ (4 * (v181 - 61 - ((2 * v181) & 0x86))) ^ 0xBB;
  v184 = __ROR4__(__ROR4__(*&v96[4 * HIBYTE(v175)] ^ *&v97[4 * BYTE2(v171)] ^ 0x2E6F2CE0 ^ (((4 * *&v97[4 * BYTE2(v171)]) ^ 0x5C41E39C) + 386955495 - ((2 * ((4 * *&v97[4 * BYTE2(v171)]) ^ 0x5C41E39C)) & 0x2E20F1C8)), 5) ^ 0xF2406A37, 27);
  v183 = *&v99[4 * (BYTE1(v172) ^ 0x59)] ^ (BYTE1(v172) - 812783059 - ((v172 >> 7) & 0x5A)) ^ *&v101[4 * (v170 ^ 0xB2)] ^ v184;
  v185 = *&v97[4 * (BYTE2(v180) ^ 0xB7)];
  v186 = *&v96[4 * ((v177 ^ 0xC78DA1A6) >> 24)] ^ 0x5C41E39C ^ (4 * v185) ^ *&v99[4 * (((v182 ^ 0xD3BB) >> 8) ^ 0x59)] ^ *&v101[4 * ((v99[4 * (BYTE1(v172) ^ 0x59)] ^ (BYTE1(v172) + 45 - ((v172 >> 7) & 0x5A)) ^ v101[4 * (v170 ^ 0xB2)] ^ v184) ^ 0x6E)] ^ ((v182 ^ 0xD3BB) >> 8);
  v187 = (v186 + 386955495 - ((2 * v186) & 0x2E20F1CE)) ^ v185;
  v188 = *&v97[4 * ((v182 ^ 0xF18BD3BB) >> 16)];
  HIDWORD(v189) = v188 ^ 0x90FC81CE;
  LODWORD(v189) = v188 ^ 0x90FC81CE;
  v190 = *&v99[4 * (((v183 ^ 0xE16E) >> 8) ^ 0x59)] ^ *&v96[4 * (HIBYTE(v180) ^ 0xC3)] ^ *&v101[4 * (v177 ^ 0x37)] ^ __ROR4__((v189 >> 18) & 0xFFFFCFFF ^ __ROR4__(v188 ^ 0xF417320D, 20) ^ 0x66B841C5, 12) ^ ((v183 ^ 0xE16E) >> 8);
  v191 = *&v97[4 * (BYTE2(v183) ^ 0xF1)] ^ 0xF417320D;
  v192 = *&v96[4 * (HIBYTE(v182) ^ 0x25)] ^ ((v177 ^ 0xA1A6) >> 8) ^ *&v99[4 * (((v177 ^ 0xA1A6) >> 8) ^ 0x59)] ^ v191 ^ *&v101[4 * (v180 ^ 0x5B)] ^ (4 * (v191 + 619426755 - ((2 * v191) & 0x9D76786)));
  v193 = *&v96[4 * (HIBYTE(v183) ^ 0x65)];
  v194 = *&v97[4 * (BYTE2(v177) ^ 0x25)];
  v195 = v194 ^ BYTE1(v180) ^ *&v99[4 * (BYTE1(v180) ^ 0xE)] ^ *&v101[4 * v171] ^ ((v193 ^ 0x5C41E39C ^ (4 * v194)) + 386955495 - ((2 * (v193 ^ 0x5C41E39C ^ (4 * v194))) & 0x2E20F1CE));
  v196 = (((v190 ^ 0x1000307) - (v190 ^ 0xE58CBDFA)) ^ 0xFFFFFFFE) + (v190 ^ 0x1000307);
  v197 = *&v97[4 * (BYTE2(v196) ^ 0xA8)];
  v198 = (4 * v197) ^ 0x5C41E33E ^ *&v96[4 * (HIBYTE(v187) ^ 0x30)] ^ *&v99[4 * (BYTE1(v192) ^ 0xFB)] ^ *&v101[4 * (v195 ^ 0x5E)] ^ BYTE1(v192);
  v199 = (v198 + 386955495 - ((2 * v198) & 0x2E20F1CE)) ^ v197;
  v200 = *&v97[4 * (BYTE2(v192) ^ 0xE5)];
  v201 = *&v96[4 * (HIBYTE(v196) ^ 0xD4)] ^ *&v99[4 * (BYTE1(v195) ^ 0x3D)] ^ ((v200 ^ 0x90FC81CE) << (v269 & 2 ^ 2) << (v269 & 2)) ^ *&v101[4 * (v187 ^ 0xE6)] ^ BYTE1(v195) ^ 0x64;
  v202 = (v201 + 386955495 - ((2 * v201) & 0x2E20F1CE)) ^ v200;
  v203 = *&v97[4 * (BYTE2(v195) ^ 0xE7)];
  v204 = ((v187 ^ 0xE4712677) >> (v195 & 8 ^ 8) >> (v195 & 8));
  v205 = *&v96[4 * (HIBYTE(v192) ^ 0xD6)] ^ 0x5C41E39C ^ (4 * v203) ^ v204 ^ *&v99[4 * (v204 ^ 0x59)] ^ *&v101[4 * (v196 ^ 0x91)];
  v206 = (v205 + 386955495 - ((2 * v205) & 0x2E20F1CE)) ^ v203;
  v207 = *&v97[4 * (BYTE2(v187) ^ 0xD9)];
  v208 = v202 ^ 0xA7624155;
  v209 = BYTE1(v196) ^ 0x5C41E39C ^ *&v96[4 * (HIBYTE(v195) ^ 0xC4)] ^ (4 * v207) ^ *&v101[4 * (v192 ^ 6)] ^ *&v99[4 * (BYTE1(v196) ^ 0x59)];
  v210 = (v209 + 386955495 - ((2 * v209) & 0x2E20F1CE)) ^ v207;
  v211 = v210 ^ 0x82CFCDB0;
  v212 = 78 * ((110127367 * ((v199 ^ 0x4B17D4DDu) >> 25)) >> 32);
  HIDWORD(v189) = -1762037865 * ((v199 ^ 0x4B17D4DDu) >> 24);
  LODWORD(v189) = HIDWORD(v189);
  if ((v189 >> 1) >= 0x3483484)
  {
    v212 = (v199 ^ 0x4B17D4DDu) >> 24;
  }

  v213 = *&v97[4 * BYTE2(v208)];
  v214 = *&v96[4 * (v212 ^ 0xD4)];
  v215 = v214 & 0x10;
  if ((v214 & 0x10 & v213) != 0)
  {
    v215 = -v215;
  }

  v216 = v214 & 0xFFFFFFEF ^ (4 * v213) ^ *&v99[4 * (BYTE1(v206) ^ 0xF9)] ^ *&v101[4 * (v210 ^ 0x21)] ^ (v215 + (v213 ^ 0xF417320D));
  v217 = *&v97[4 * (BYTE2(v206) ^ 0x28)];
  v218 = *&v97[4 * (BYTE2(v210) ^ 0x67)];
  v219 = *&v96[4 * (HIBYTE(v202) ^ 0x73)] ^ 0x5C41E39C ^ (4 * v217) ^ *&v99[4 * (BYTE1(v211) ^ 0x59)] ^ *&v101[4 * (v199 ^ 0xDD)] ^ BYTE1(v211);
  v220 = (v219 + 386955495 - ((2 * v219) & 0x2E20F1CE)) ^ v217;
  v221 = (4 * v218) ^ 0x5C41E39C ^ *&v96[4 * (HIBYTE(v206) ^ 0x64)];
  v222 = BYTE1(v206) ^ 0x5C41E33C ^ v216;
  v223 = *&v96[4 * HIBYTE(v211)];
  v224 = *&v97[4 * (BYTE2(v199) ^ 0xBF)];
  v225 = *&v101[4 * (v202 ^ 0xC4)] ^ __ROR4__(__ROR4__(BYTE1(v199) ^ 0xD4 ^ *&v99[4 * (BYTE1(v199) ^ 0x8D)] ^ __ROR4__(__ROR4__(v218 ^ 0xFCB4AE4E ^ (v221 + 386955495 - ((2 * v221) & 0x2E20F1CE)), 13) ^ 0x49A83E4B, 19) ^ 0x1A9F01B6, 2) ^ 0x909C4097, 30);
  v226 = *&v99[4 * (BYTE1(v208) ^ 0x59)];
  v227 = ((v223 ^ 0x5C41E39C ^ (4 * v224)) + 386955495 - ((2 * (v223 ^ 0x5C41E39C ^ (4 * v224))) & 0x2E20F1CE)) ^ v224 ^ 0x2E6F2CE0;
  v228 = v226 ^ -v226 ^ (v227 - (v227 ^ v226));
  LOBYTE(v226) = v225 ^ 0x49;
  v229 = ((v228 ^ v227) + 2 * (v228 & v227)) ^ *&v101[4 * (v206 ^ 0x34)];
  v230 = v229 ^ BYTE1(v208) ^ 0x7ADB5807;
  v231 = *(&off_28512D4A0 + (v40 ^ 0xDB2)) - 4;
  v232 = *&v231[4 * (HIBYTE(v216) ^ 0xC1)];
  v233 = *(&off_28512D4A0 + v40 - 2972) - 8;
  v234 = *&v233[4 * (BYTE2(v220) ^ 0xFB)];
  HIDWORD(v236) = v232 ^ 0x17B063;
  LODWORD(v236) = v232 ^ 0x1BC00000;
  v235 = v236 >> 21;
  HIDWORD(v236) = v234 ^ 0xF5A5;
  LODWORD(v236) = v234 ^ 0xE64C0000;
  v237 = *(&off_28512D4A0 + (v40 ^ 0xCF8)) - 12;
  v238 = (v236 >> 16) ^ (558521749 * *&v237[4 * (BYTE1(v225) ^ 0x74)]) ^ v235;
  v239 = *(&off_28512D4A0 + (v40 ^ 0xC83)) - 4;
  v240 = (v238 + 1598742439 - ((2 * v238) & 0xBE95BF4E)) ^ *&v239[4 * ((v229 ^ BYTE1(v208)) ^ 0xBD)];
  v241 = *&v233[4 * (BYTE2(v225) ^ 0xE8)];
  v242 = *&v231[4 * ((v220 ^ 0x301070F2u) >> 24)];
  HIDWORD(v236) = v242 ^ 0x17B063;
  LODWORD(v236) = v242 ^ 0x1BC00000;
  v243 = v236 >> 21;
  HIDWORD(v236) = v241 ^ 0xF5A5;
  LODWORD(v236) = v241 ^ 0xE64C0000;
  v244 = (v225 ^ 0xD5031D49) >> 24;
  v245 = v243 ^ (v236 >> 16) ^ (558521749 * *&v237[4 * BYTE1(v230)]);
  v246 = (v245 + 1598742439 - ((2 * v245) & 0xBE95BF4E)) ^ *&v239[4 * (v222 ^ 0xDE)];
  v247 = *&v231[4 * v244];
  v248 = *&v233[4 * BYTE2(v230)];
  HIDWORD(v236) = v247 ^ 0x17B063;
  LODWORD(v236) = v247 ^ 0x1BC00000;
  v249 = v236 >> 21;
  HIDWORD(v236) = v248 ^ 0xF5A5;
  LODWORD(v236) = v248 ^ 0xE64C0000;
  v250 = (v236 >> 16) ^ v249 ^ (558521749 * *&v237[4 * ~(v222 >> 8)]);
  v251 = (v250 + 1598742439 - ((2 * v250) & 0xBE95BF4E)) ^ *&v239[4 * (v220 ^ 0x48)];
  LODWORD(v231) = *&v231[4 * (HIBYTE(v229) ^ 0xF8)];
  HIDWORD(v236) = v231 ^ 0x17B063;
  LODWORD(v236) = v231 ^ 0x1BC00000;
  LODWORD(v231) = v236 >> 21;
  v252 = *&v237[4 * (((v220 ^ 0x70F2) >> 8) ^ 0x69)];
  LODWORD(v236) = __ROR4__(__ROR4__(*&v233[4 * (BYTE2(v222) ^ 0x85)], 12) ^ 0xA6E172D7, 4);
  v253 = (((558521749 * v252) ^ v231 ^ v236) + 1598742439 - ((2 * ((558521749 * v252) ^ v231 ^ v236)) & 0xBE95BF4E)) ^ *&v239[4 * (v225 ^ 0xF3)];
  LODWORD(v233) = (v246 ^ 0x4300A70C) >> (v226 & 8) >> ((8 - (v226 & 8)) & 0xF8);
  v254 = *(&off_28512D4A0 + (v40 ^ 0xC0A)) - 8;
  v73[4] = v254[((v246 ^ 0x4300A70C) >> 24) ^ 0x45] ^ (((v246 ^ 0x4300A70C) >> 24) - (((v246 ^ 0x4300A70C) >> 23) & 0x7C) - 66) ^ 0x34;
  v73[8] = v254[HIBYTE(v251) ^ 0xDELL] ^ (HIBYTE(v251) - ((v251 >> 23) & 0x7C) - 66) ^ 0xD8;
  v255 = *(&off_28512D4A0 + (v40 ^ 0xD60)) - 12;
  v73[15] = v255[v253 ^ 0x26] ^ (v253 + (~(2 * v253) | 0xD1) + 24) ^ 0x46;
  v256 = *(&off_28512D4A0 + (v40 & 0x8DE9251)) - 4;
  LODWORD(v231) = v256[v233 ^ 0x55];
  HIDWORD(v236) = v231 ^ 0xFFFFFFF9;
  LODWORD(v236) = (v231 ^ 0xE0) << 24;
  v73[6] = (v236 >> 28) ^ 0x36;
  v257 = *(&off_28512D4A0 + (v40 ^ 0xD2A)) - 8;
  v73[9] = BYTE2(v251) ^ 0xEC ^ ((BYTE2(v251) ^ 0xEC) + 96) ^ v257[BYTE2(v251) ^ 0x63] ^ 0xE0;
  LODWORD(v231) = v256[BYTE1(v253) ^ 0x7ALL];
  v258 = v240 ^ 0xFBA755F;
  HIDWORD(v236) = v231 ^ 0xFFFFFFF9;
  LODWORD(v236) = (v231 ^ 0xE0) << 24;
  v73[14] = (v236 >> 28) ^ 2;
  v73[12] = (BYTE3(v253) - ((v253 >> 23) & 0x7C) - 66) ^ 0x8C ^ v254[BYTE3(v253) ^ 0x9CLL];
  v73[7] = (v246 - ((2 * v246) & 0x2E) + 23) ^ 0x79 ^ v255[v246 ^ 5];
  v259 = ((BYTE2(v253) ^ 0xDA) + 96) ^ BYTE2(v253) ^ 0xDA;
  v260 = v257[BYTE2(v253) ^ 0x55];
  v261 = v259 & 0x20;
  if ((v260 & v259 & 0x20) != 0)
  {
    v261 = -v261;
  }

  v73[13] = v259 & 0xDF ^ (v261 + v260) ^ 0xBB;
  v262 = v256[BYTE1(v251) ^ 0x8ELL];
  HIDWORD(v263) = v262 ^ 0xFFFFFFF9;
  LODWORD(v263) = (v262 ^ 0xE0) << 24;
  v73[10] = (v263 >> 28) ^ 0xC8;
  v73[3] = (v258 - ((2 * v258) & 0xAA) + 85 + (~(2 * (v258 - ((2 * v258) & 0xAA) + 85)) | 0xD1) + 24) ^ 0xCD ^ v255[(v258 - ((2 * v258) & 0xAA) + 85) ^ 0xC9];
  *v73 = (HIBYTE(v258) - ((v258 >> 23) & 0x7C) - 66) ^ 0xE8 ^ v254[HIBYTE(v258) ^ 0xD7];
  v73[11] = (v251 - ((2 * v251) & 0x2E) + 23) ^ 0x8D ^ v255[v251 ^ 0x2ALL];
  v264 = v256[BYTE1(v240) ^ 0x31];
  HIDWORD(v263) = v264 ^ 0xFFFFFFF9;
  LODWORD(v263) = (v264 ^ 0xE0) << 24;
  v73[2] = (v263 >> 28) ^ 0x2B;
  v73[1] = BYTE2(v258) ^ 3 ^ ((BYTE2(v258) ^ 3) + 96) ^ v257[BYTE2(v258) ^ 0x8CLL] ^ 0x18;
  *(a18 + v270) = BYTE2(v246) ^ 0x57 ^ ((BYTE2(v246) ^ 0x57) + 96) ^ v257[BYTE2(v246) ^ 0xD8] ^ 0x44;
  v265 = v271 > 0x173D5A1E;
  if (v271 < 0x173D5A0E)
  {
    v265 = 1;
  }

  return (*(a17 + 8 * ((597 * v265) ^ v40)))(46, 52, 121, 216, v244, v253, v246, v40 ^ 0x921u, a9, a10, a11, a12, v267);
}

uint64_t sub_23E924B50@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v3 ^ 0x22E;
  v6 = (*(v4 + 8 * ((v3 ^ 0x22E) + 2679)))(**(v2 + 8 * (v3 ^ 0x55C)), va, ((((a1 - 448930932) & 0xFFFFF000 ^ 0x7E81C6B7) - 524345862) ^ (((a1 - 448930932) & 0xFFFFF000 ^ 0x4285C72B) - 591717274) ^ (((a1 - 448930932) & 0xFFFFF000 ^ 0x3C04019C) - 1573202856 + v3 + 574)) + 1640047793, 1) != 0;
  return (*(v4 + 8 * ((52 * v6) ^ v5)))();
}

uint64_t sub_23E924C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = (v19 - 1314) | 0x202;
  v23 = *(v21 - 92);
  v24 = *(&off_28512D4A0 + (v19 ^ 0x5F6));
  v25 = -66 - v23;
  v26 = *(v24 + (v23 ^ 0x7F));
  LODWORD(v23) = (*(v24 + (*(v21 - 100) ^ 0x10)) ^ ((*(v21 - 100) ^ 0x90) - 65) ^ (v22 - 111)) << 24;
  v27 = *(&off_28512D4A0 + (v19 ^ 0x436)) - 12;
  v28 = *(&off_28512D4A0 + v19 - 1006) - 4;
  v29 = v28[*(v21 - 94) ^ 0x18] - 89;
  v30 = ((((-104 * v29) ^ v29) << 8) ^ 0xFFFF7FFF) & ((((*(v21 - 95) ^ 0xEB) + v27[(((*(v21 - 95) ^ 0x55) - (*(v21 - 95) ^ 0x48)) ^ 0xFFFFFFFE) + (*(v21 - 95) ^ 0x55)] - 122) << 16) ^ 0x37A498A2) | (((-104 * v29) ^ v29) << 8) & 0x6700;
  v31 = *(&off_28512D4A0 + (v19 ^ 0x48F)) - 12;
  v32 = (*(v21 - 89) ^ 0x61) + v31[*(v21 - 89) ^ 0xEFLL] - 122;
  v33 = (~v32 | 0xFFFFFF03) & (((v25 ^ v26 ^ 0x10) << 24) ^ 0xF2C2316C) | v32 & 0x93;
  LOBYTE(v25) = v28[*(v21 - 90) ^ 0xEELL] - 89;
  v34 = *(v21 - 104);
  v35 = ((-104 * v25) ^ v25);
  v36 = ((*(v21 - 99) ^ 0xED) + v27[*(v21 - 99) ^ 0x4ELL] - 122) << 16;
  v37 = ((v35 << 8) ^ 0x13F5324D) & (v33 ^ 0xCA3FCEB3) | v33 & 0xEC0000B2;
  v38 = (((*(v24 + (v34 ^ 0xFA)) ^ ((v34 ^ 0x7A) - 65) ^ 0x16) << 24) ^ 0x34FF562E) & ((((*(v21 - 103) ^ 0x43) + v27[*(v21 - 103) ^ 0xE0] - 122) << 16) ^ 0xB511562E) | ((*(v24 + (v34 ^ 0xFA)) ^ ((v34 ^ 0x7A) - 65) ^ 0x16) << 24) & 0x4A000000;
  v216 = v27;
  v217 = v24;
  v39 = *(v24 + (*(v21 - 96) ^ 0x4BLL)) ^ ((*(v21 - 96) ^ 0xCB) - 65);
  v40 = ((v39 << 24) ^ 0x7BFFFFFF) & ((((*(v21 - 93) ^ 0xD3) + v31[*(v21 - 93) ^ 0x5DLL] - 122) & 0x2B | (v30 ^ 0x80AED076) & (((*(v21 - 93) ^ 0xD3) + v31[*(v21 - 93) ^ 0x5DLL] - 122) ^ 0xFFFFFFF6)) ^ 0xF06DE738);
  v41 = (v39 << 24) & 0xB8000000;
  v42 = (*(v21 - 97) ^ 0x51) + v31[*(v21 - 97) ^ 0xDFLL] - 122;
  LODWORD(v34) = v42 & 0x7FFFFFF | v23;
  LOBYTE(v39) = v28[*(v21 - 102) ^ 0xCCLL] - 89;
  LODWORD(v23) = (v23 & 0xF7FFFFFF ^ 0xB0967E57) & ~v36;
  v43 = ((v42 & 4 | 0xB9DF68CB) ^ 0xEBB6ADFB ^ (v42 & 0x32 | v23 & 0x97CB0000 | v36 & 0x490000)) & (~(v23 | v36 & 0x690000) | 0x9FCBFFFF);
  LOBYTE(v24) = v28[*(v21 - 98) ^ 0x4DLL] - 89;
  LODWORD(v23) = v42 & 0x40 | v34 & 0x8000089 | v23 & 0x20140000;
  v44 = (((-104 * v39) ^ v39) - ((2 * ((-104 * v39) ^ v39)) & 0x96) - 53) << 8;
  LODWORD(v34) = ((-104 * v24) ^ v24) << 8;
  LODWORD(v23) = ((v23 | v43) ^ 0xB692D23B) & (v34 ^ 0xFFFF7EFF);
  v45 = (v38 ^ 0x2A460811) & ~v44;
  v46 = v44 & 0xA100;
  v47 = *(v21 - 101);
  v48 = v41 ^ 0xB0BEF29 ^ v40;
  v215 = v31;
  v49 = ((v46 | v45) ^ 0x5ED7E96B) & (((v47 ^ 0x7C) + v31[v47 ^ 0xF2] - 122) ^ 0xFFFFFF7F);
  v50 = v37 & 0xCCF11781 ^ 0xA7C4C0F9 ^ ((((*(v21 - 91) ^ 0x60) + v27[*(v21 - 91) ^ 0xC3] - 122) << 16) ^ 0x33C1E87E) & (v37 ^ 0x40A2313);
  v51 = v34 & 0xE800 ^ 0x42AE098B ^ v23;
  HIDWORD(a12) = (((v18 ^ 0x86B65CA7) + 824732757) ^ ((v18 ^ 0xEC318F34) + 1538244552) ^ ((v18 ^ 0xA1C52BA7) + 375069525)) - 1282494935;
  v218 = v20;
  v219 = v22;
  v220 = ((v22 - 638653087) & 0x261115BE) + ((v22 - 29) ^ 0xFFFFFB36);
  v52 = (v20[v220] ^ 0x7D) + v27[v20[v220] ^ 0xDELL] - 122;
  v53 = v20;
  v54 = (((v52 - (v52 ^ 0x57)) ^ 0xFE) + v52) << 16;
  LOBYTE(v23) = v28[v20[6] ^ 5] - 89;
  v55 = ((((-104 * v23) ^ v23) << 8) ^ 0xE84A86DC) & (v54 ^ 0xEB6EFFFF) | v54 & 0xB50000;
  LODWORD(v34) = ((((v53[1] ^ 0x14) + v27[v53[1] ^ 0xB7] - 122) << 16) ^ 0xC3543ACC) & (((v53[3] ^ 0x6A) + v31[v53[3] ^ 0xE4] - 122) ^ 0xD7FF7EFF);
  LOBYTE(v40) = v28[v20[14] ^ 0xCFLL] - 89;
  LOBYTE(v23) = v28[v20[2] ^ 0x1CLL] - 89;
  LODWORD(v34) = ((((-104 * v23) ^ v23) << 8) ^ 0x7B8345B7) & ((v34 | ((v53[3] ^ 0x6A) + v31[v53[3] ^ 0xE4] - 122) & 0x33) ^ 0xB893C533) ^ v34 & 0x7C0A48;
  LODWORD(v23) = ((v53[13] ^ 0x6B) + v27[v53[13] ^ 0xC8] - 122) ^ 0xFF4C4654;
  LOWORD(v27) = (v53[11] ^ 0xA3) + v31[v53[11] ^ 0x2DLL] - 122;
  v56 = (~v27 | 0xFFFFFE00) & ((((v53[9] ^ 0x76) + v216[v53[9] ^ 0xD5] - 122) << 16) ^ 0x4920D23F) | v27 & 0xC0;
  LODWORD(v24) = (*(v217 + (v53[12] ^ 0xE5)) ^ ((v53[12] ^ 0x65) - 65)) << 24;
  LOBYTE(v27) = v28[v20[10] ^ 0x1ALL] - 89;
  v57 = (v24 ^ 0x18E00000) & ((v23 << 16) ^ 0x1FE00000) | v24 & 0xA6000000;
  v58 = ((((-104 * v27) ^ v27) << 8) | 0x7FFF00FF) & (v56 ^ 0x3EFB320D);
  v59 = ((v53[15] ^ 0x57) + v31[v53[15] ^ 0xD9] - 122) << 11;
  v60 = ((((-104 * v27) ^ v27) & 0x1F) << 8) ^ v48 ^ v58 & 0x542BA066 ^ (v58 ^ 0x88900089) & (((((v53[8] ^ 0xDA) - 65) ^ *(v217 + (v53[8] ^ 0x5ALL))) << 24) ^ 0xBFD44099);
  LODWORD(v27) = v34 & 0x3B8443C8 ^ ((v47 ^ 0x7C) + v31[v47 ^ 0xF2] - 122) & 0xAB ^ 0xC652139F ^ v49 ^ (((*(v217 + (*v53 ^ 0x2FLL)) ^ ((*v53 ^ 0xAF) - 65)) << 24) ^ 0x567BBC37) & (v34 ^ 0x84700740);
  v61 = (((v53[7] ^ 0x13) + v215[v53[7] ^ 0x9DLL] - 122) & 0x31 | 0x10245200) ^ v51 ^ (v55 & 0x89E5B04 ^ 0x26284B9A ^ (v55 ^ 0x17218400) & (((((v53[4] ^ 0xD1) - 65) ^ *(v217 + (v53[4] ^ 0x51))) << 24) ^ 0x261A450)) & (((v53[7] ^ 0x13) + v215[v53[7] ^ 0x9DLL] - 122) ^ 0xFFFFFFDE);
  v62 = v50 ^ __ROR4__((v59 & 0x3C800 | (((v57 >> 21) & 0x2E1 | ((v57 >> 21) ^ 0xFFFFFC03) & ((((((-104 * v40) ^ v40) << 19) ^ 0x2B67CD0F) & ~(v23 << 27) | (v23 << 27) & 0xD0000000) ^ 0x25783011)) ^ 0x8CEBC8E0) & ~v59) ^ 0xB15FBCEC, 11);
  v63 = HIBYTE(v62);
  v64 = *(&off_28512D4A0 + v22 - 166) - 8;
  v65 = *(&off_28512D4A0 + (v22 ^ 0x213)) - 8;
  HIDWORD(v66) = *&v64[4 * (BYTE2(v61) ^ 0xA0)];
  LODWORD(v66) = HIDWORD(v66);
  v67 = *(&off_28512D4A0 + v22 - 131) - 12;
  v68 = *(&off_28512D4A0 + v22 - 432);
  LODWORD(v34) = *&v65[4 * ((v27 >> 24) ^ 0x3E)] ^ (v66 >> 28) ^ *&v67[4 * (BYTE1(v60) ^ 0x48)] ^ ((v66 >> 28) >> 3) & 0x1D94E10B ^ *(v68 + 4 * (v62 ^ 0x93u)) ^ v62 ^ (((v27 >> 24) ^ 0x4B) + 827458724);
  HIDWORD(v66) = *&v64[4 * (BYTE2(v60) ^ 0x11)];
  LODWORD(v66) = HIDWORD(v66);
  v69 = ((HIBYTE(v61) ^ 0x16) + 827458724) ^ (v66 >> 28) ^ ((v66 >> 28) >> 3) & 0x1D94E10B ^ 0x2CA41642 ^ *&v65[4 * (HIBYTE(v61) ^ 0x63)];
  v70 = ((v69 & 0xA15624EC ^ 0xF7D8D3B9) & (v69 & 0x5EA9DB13 ^ 0xAB5E2DEE) | v69 & 0x8210802) ^ 0xDFEDF3BB;
  v71 = *&v67[4 * (BYTE1(v62) ^ 0x75)] ^ 0x6CB98CEC;
  v72 = (v70 + v71 - 2 * (v70 & v71)) ^ *(v68 + 4 * (v27 ^ 0x2Eu));
  v73 = v72 ^ v27;
  HIDWORD(v66) = *&v64[4 * (BYTE2(v62) ^ 0x80)];
  LODWORD(v66) = HIDWORD(v66);
  LODWORD(v24) = v66 >> 28;
  v74 = ((HIBYTE(v60) ^ 0xCC) + 827458724) ^ *&v65[4 * (HIBYTE(v60) ^ 0xB9)] ^ *&v67[4 * (BYTE1(v27) ^ 0x78)] ^ 0xC52E20C7 ^ (v24 >> 3) & 0x1D94E10B;
  LODWORD(v31) = v74 - ((2 * v74) & 0x4CA9A596) + 643093195;
  v75 = *(v68 + 4 * (v61 ^ 0x94u));
  v76 = v75 - ((2 * v75) & 0x4A4E1C50) - 1524167128;
  v77 = *&v64[4 * (BYTE2(v27) ^ 0x9D)];
  LODWORD(v23) = *&v65[4 * (v63 ^ 0x12)] ^ ((v63 ^ 0x67) + 1300441925 - ((2 * (v63 ^ 0x67) + 328) & 0x142));
  HIDWORD(v66) = v77 ^ 0x29D0CBF;
  LODWORD(v66) = v77 ^ 0xB0000000;
  LODWORD(v23) = *(v68 + 4 * (v60 ^ 0xACu)) ^ v60 ^ (v66 >> 28) ^ *&v67[4 * (BYTE1(v61) ^ 0xF4) + 632 + 4 * ((v61 >> 7) & 0x13A ^ 0xFFFFFED7)] ^ ((((v66 >> 28) >> 3) & 0x1D94E10B ^ v23) - 1125183635 - 2 * ((((v66 >> 28) >> 3) & 0x1D94E10B ^ v23) & 0x3CEF0F7D ^ v23 & 0x10));
  LODWORD(v66) = __ROR4__(v61 ^ v24 ^ v76 ^ 0xF914CD4E ^ v31, 15) ^ 0x49B0A2E;
  HIDWORD(v66) = v66;
  v78 = v66 >> 17;
  v79 = (v73 ^ 0x5D0A75B1u) >> 24;
  v80 = *&v64[4 * (BYTE2(v72) ^ 0x2F)];
  v81 = *&v65[4 * (((v34 ^ 0xD3608BDE) >> 24) ^ 0x75)] ^ (((v34 ^ 0xD3608BDE) >> 24) + 1300441925 - ((2 * ((v34 ^ 0xD3608BDE) >> 24) + 328) & 0x142));
  HIDWORD(v66) = v80 ^ 0x29D0CBF;
  LODWORD(v66) = v80 ^ 0xB0000000;
  v82 = *(v68 + 4 * (v23 ^ 0x99u)) ^ (v66 >> 28) ^ *&v67[4 * (((v78 ^ 0xD9B0) >> 8) ^ 0x9D)] ^ ((((v66 >> 28) >> 3) & 0x1D94E10B ^ v81) - 1125183635 - 2 * ((((v66 >> 28) >> 3) & 0x1D94E10B ^ v81) & 0x3CEF0F7D ^ v81 & 0x10));
  v83 = *&v64[4 * ((v78 ^ 0xAF9D9B0u) >> 16)];
  HIDWORD(v66) = v83 ^ 0x29D0CBF;
  LODWORD(v66) = v83 ^ 0xB0000000;
  LODWORD(v27) = v66 >> 28;
  v84 = (((v73 ^ 0x5D0A75B1u) >> 23) & 0x148) + (v79 ^ 0x315204A4);
  v85 = *&v65[4 * (v79 ^ 0x75)] ^ (v84 + 2094083745 - ((2 * v84) & 0x60A00D42));
  LOBYTE(v79) = v82 ^ v23 ^ 0x42;
  LODWORD(v27) = ((v27 ^ -v27 ^ (((v27 >> 3) & 0x1D94E10B) - ((v27 >> 3) & 0x1D94E10B ^ v27))) + ((v27 >> 3) & 0x1D94E10B)) ^ v85;
  LODWORD(v24) = *&v64[4 * (BYTE2(v23) ^ 0x89)];
  LODWORD(v27) = *&v67[4 * (BYTE1(v23) ^ 0x8F)] ^ v34 ^ 0xDE ^ *(v68 + 4 * (v34 ^ 5u)) ^ (v27 - 1125183635 - ((2 * v27) & 0x79DE1EDA));
  HIDWORD(v66) = v24 ^ 0x29D0CBF;
  LODWORD(v66) = v24 ^ 0xB0000000;
  v86 = (v66 >> 28) ^ ((v66 >> 28) >> 3) & 0x1D94E10B ^ (((v78 ^ 0xAF9D9B0u) >> 24) - 1373424827 - ((2 * ((v78 ^ 0xAF9D9B0u) >> 24) + 1654917448) & 0x60A00942)) ^ *&v65[4 * (((v78 ^ 0xAF9D9B0u) >> 24) ^ 0x75)];
  v87 = *&v67[4 * (BYTE1(v34) ^ 0x16)] ^ v73 ^ 0xB1 ^ *(v68 + 4 * (v73 ^ 0x6Au)) ^ (v86 - 1125183635 - ((2 * v86) & 0x79DE1EDA));
  v88 = *&v64[4 * (BYTE2(v34) ^ 0x45)];
  HIDWORD(v66) = v88 ^ 0x29D0CBF;
  LODWORD(v66) = v88 ^ 0xB0000000;
  LODWORD(v23) = (((v23 ^ 0xC6891242) >> 24) + 1300441925 - ((2 * ((v23 ^ 0xC6891242) >> 24) + 328) & 0x142)) ^ *&v65[4 * (((v23 ^ 0xC6891242) >> 24) ^ 0x75)];
  LODWORD(v23) = *&v67[4 * (BYTE1(v72) ^ 0xE8)] ^ v78 ^ 0xB0 ^ (v66 >> 28) ^ *(v68 + 4 * (v78 ^ 0x6Bu)) ^ ((((v66 >> 28) >> 3) & 0x1D94E10B ^ v23) - 1125183635 - 2 * ((((v66 >> 28) >> 3) & 0x1D94E10B ^ v23) & 0x3CEF0F7D ^ v23 & 0x10));
  BYTE1(v31) = BYTE1(v27) ^ 0xBF;
  v89 = (v23 ^ 0xDAAF31D0) >> 24;
  v90 = *&v64[4 * (BYTE2(v27) ^ 0x5A)];
  LODWORD(v24) = (HIBYTE(v82) + 1300441925 - ((2 * HIBYTE(v82) + 328) & 0x142)) ^ *&v65[4 * (HIBYTE(v82) ^ 0x75)];
  HIDWORD(v66) = v90 ^ 0x29D0CBF;
  LODWORD(v66) = v90 ^ 0xB0000000;
  LODWORD(v34) = *(v68 + 4 * (v23 ^ 0xBu)) ^ *&v67[4 * (((v87 ^ 0xE026) >> 8) ^ 0x9D)] ^ (v66 >> 28) ^ ((((v66 >> 28) >> 3) & 0x1D94E10B ^ v24) - 1125183635 - 2 * ((((v66 >> 28) >> 3) & 0x1D94E10B ^ v24) & 0x3CEF0F7D ^ v24 & 0x10));
  v91 = v34 ^ v23 ^ 0xD0;
  v92 = *&v64[4 * ((v87 ^ 0x51FFE026u) >> 16)];
  HIDWORD(v66) = v92 ^ 0x29D0CBF;
  LODWORD(v66) = v92 ^ 0xB0000000;
  LODWORD(v24) = (((v27 ^ 0xC07FBF01) >> 24) + 1300441925 - ((2 * ((v27 ^ 0xC07FBF01) >> 24) + 328) & 0x142)) ^ *&v65[4 * (((v27 ^ 0xC07FBF01) >> 24) ^ 0x75)];
  v93 = *&v67[4 * (BYTE1(v23) ^ 0xAC)] ^ v79 ^ *(v68 + 4 * (v79 ^ 0xDCu)) ^ (v66 >> 28) ^ ((v66 >> 28) >> 3) & 0x1D94E10B;
  LODWORD(v23) = *&v64[4 * (BYTE2(v23) ^ 0x8A)];
  v94 = v93 ^ (v24 - 1125183635 - ((2 * v24) & 0x79DE1EDA));
  HIDWORD(v66) = v23 ^ 0x29D0CBF;
  LODWORD(v66) = v23 ^ 0xB0000000;
  v95 = v66 >> 28;
  v96 = (((v87 ^ 0x51FFE026u) >> 24) + 1300441925 - ((2 * ((v87 ^ 0x51FFE026u) >> 24) + 328) & 0x142)) ^ *&v65[4 * (((v87 ^ 0x51FFE026u) >> 24) ^ 0x75)] ^ (v95 >> 3) & 0x1D94E10B;
  LODWORD(v27) = *&v67[4 * (BYTE1(v82) ^ 0x8A)] ^ v95 ^ v27 ^ 1 ^ (v96 - 1125183635 - ((2 * v96) & 0x79DE1EDA)) ^ *(v68 + 4 * (v27 ^ 0xDAu));
  v97 = *&v64[4 * (BYTE2(v82) ^ 0xDF)];
  HIDWORD(v66) = v97 ^ 0x29D0CBF;
  LODWORD(v66) = v97 ^ 0xB0000000;
  v98 = v66 >> 28;
  v99 = (v89 - 1373424827 - ((2 * v89 + 1654917448) & 0x60A00942)) ^ *&v65[4 * (v89 ^ 0x75)] ^ (v98 >> 3) & 0x1D94E10B;
  v100 = *&v67[4 * BYTE1(v31)] ^ v87 ^ 0x26 ^ v98 ^ *(v68 + 4 * (v87 ^ 0xFDu)) ^ (v99 - 1125183635 - ((2 * v99) & 0x79DE1EDA));
  BYTE2(v99) = BYTE2(v91) ^ 0xA1;
  v101 = *&v64[4 * (((v94 ^ 0xEA07EDB8) >> (v100 & 0x10 ^ 0x10) >> (v100 & 0x10)) ^ 0x25)];
  v102 = (v94 ^ 0xEA07EDB8) >> (((v91 ^ 0x67A10C7Du) >> 16) & 8) >> (((v91 ^ 0x67A10C7Du) >> 16) & 8 ^ 8);
  HIDWORD(v66) = v101 ^ 0x29D0CBF;
  LODWORD(v66) = v101 ^ 0xB0000000;
  v103 = v66 >> 28;
  v104 = *&v64[4 * (BYTE2(v27) ^ 0x21)];
  v105 = (((v91 ^ 0x67A10C7Du) >> 24) + 1300441925 - ((2 * ((v91 ^ 0x67A10C7Du) >> 24) + 328) & 0x142)) ^ *&v65[4 * (((v91 ^ 0x67A10C7Du) >> 24) ^ 0x75)] ^ (v103 >> 3) & 0x1D94E10B;
  v106 = v105 - 1125183635 - ((2 * v105) & 0x79DE1EDA);
  HIDWORD(v66) = v104 ^ 0x29D0CBF;
  LODWORD(v66) = v104 ^ 0xB0000000;
  LODWORD(v24) = v66 >> 28;
  v107 = *&v65[4 * (((v94 ^ 0xEA07EDB8) >> 24) ^ 0x75)] ^ (((v94 ^ 0xEA07EDB8) >> 24) + 827458724) ^ (((v24 >> 3) & 0x1D94E10B) + 2094083745 - ((2 * (v24 >> 3)) & 0x39204002));
  v108 = v91 ^ 0x83E159E5;
  v109 = *(v68 + 4 * (v91 ^ 0xA6u));
  v110 = v109 & v108;
  v111 = v109 + v108;
  LOBYTE(v108) = v100 ^ 0x49;
  v112 = v111 - 2 * v110;
  v113 = (v27 ^ 0xF604CE5A) >> 24;
  v114 = *&v67[4 * ((v100 ^ 0xA149) >> 8)] ^ v24 ^ (v107 - 1125183635 - ((2 * v107) & 0x79DE1EDA)) ^ v112;
  LODWORD(v24) = *&v65[4 * (v113 ^ 0x75)];
  v115 = v113 - 1373424827 - ((2 * v113 + 1654917448) & 0x60A00942);
  v116 = *&v64[4 * (BYTE2(v100) ^ 0x57)];
  HIDWORD(v66) = v116 ^ 0x29D0CBF;
  LODWORD(v66) = v116 ^ 0xB0000000;
  LODWORD(v23) = v94 ^ 0x83E15920;
  v117 = *(v68 + 4 * (v94 ^ 0x63u));
  v118 = v117 & v23;
  LODWORD(v23) = v117 + v23;
  v119 = (v100 ^ 0x6172A149u) >> 24;
  v120 = *(v68 + 4 * (v100 ^ 0x92u));
  v121 = (v66 >> 28) ^ (v23 - 2 * v118) ^ *&v67[4 * (BYTE1(v34) ^ 0x91)] ^ ((v24 ^ v115 ^ ((v66 >> 28) >> 3) & 0x1D94E10B) - 1125183635 - ((2 * (v24 ^ v115 ^ ((v66 >> 28) >> 3) & 0x1D94E10B)) & 0x79DE1EDA));
  v122 = *&v64[4 * (BYTE2(v99) ^ 0x25)];
  HIDWORD(v66) = v122 ^ 0x29D0CBF;
  LODWORD(v66) = v122 ^ 0xB0000000;
  LODWORD(v34) = v66 >> 28;
  v123 = (v119 + 1300441925 - ((2 * v119 + 328) & 0x142)) ^ *&v65[4 * (v119 ^ 0x75)];
  HIDWORD(v66) = v102;
  LODWORD(v66) = v102;
  BYTE1(v61) = BYTE1(v114) ^ 0x25;
  LODWORD(v31) = *&v67[4 * (BYTE1(v27) ^ 0x53)] ^ v120 ^ v103 ^ 0x3A94CF9E ^ v106;
  v124 = (v114 ^ 0x1EAB257Au) >> 24;
  LODWORD(v24) = *&v67[4 * (__ROR4__((v66 >> 7) & 0xFE000001 ^ 0x9969F61F, 25) ^ 0xB4FB0F51)] ^ v27 ^ 0x5A ^ *(v68 + 4 * (v27 ^ 0x81u)) ^ v34 ^ (((v34 >> 3) & 0x1D94E10B ^ v123) - 1125183635 - 2 * (((v34 >> 3) & 0x1D94E10B ^ v123) & 0x3CEF0F7D ^ v123 & 0x10));
  LODWORD(v66) = __ROR4__(*&v64[4 * ((v114 ^ 0x1EAB257Au) >> 16)], 28);
  LODWORD(v27) = ((v31 >> 24) - 1373424826 + ((2 * (((v31 >> 24) + 164) & 0xA3 ^ ((v31 >> 24) | 0x7FFFFFFD))) ^ 0x60A00805)) ^ *&v65[4 * ((v31 >> 24) ^ 0x75)] ^ ((v66 ^ 0x29D0CBFB) >> 3) & 0x1D94E10B;
  v125 = *&v64[4 * ((v121 ^ 0xA57628E3) >> 16)];
  LODWORD(v34) = v66 ^ 0x29D0CBFB ^ *&v67[4 * ((v121 ^ 0x28E3) >> 8)] ^ *(v68 + 4 * (v24 ^ 0x2Au));
  HIDWORD(v66) = v125 ^ 0x29D0CBF;
  LODWORD(v66) = v125 ^ 0xB0000000;
  v126 = v66 >> 28;
  v127 = *&v65[4 * (v124 ^ 0x75)];
  LODWORD(v34) = v34 ^ (v27 - 1125183635 - ((2 * v27) & 0x79DE1EDA));
  LODWORD(v27) = v124 + 1300441925 - ((2 * v124 + 328) & 0x142);
  v128 = (v31 ^ v108);
  HIDWORD(v66) = v27 ^ v127 ^ v126 ^ *&v67[4 * (BYTE1(v24) ^ 0x8E)] ^ (v126 >> 3) & 0x1D94E10B ^ 0x6CB98CEC;
  LODWORD(v66) = v27 ^ v127 ^ v126 ^ *&v67[4 * (BYTE1(v24) ^ 0x8E)];
  LODWORD(v27) = *&v64[4 * ((v24 ^ 0xA3C13F1) >> 16)];
  LODWORD(v23) = *(v68 + 4 * (v128 ^ 0xDBu)) ^ __ROR4__((v66 >> 31) ^ 0x4E44DEE2, 1);
  v129 = (((v121 ^ 0xA57628E3) >> 24) + 1300441925 - ((2 * ((v121 ^ 0xA57628E3) >> 24) + 328) & 0x142)) ^ *&v65[4 * (((v121 ^ 0xA57628E3) >> 24) ^ 0x75)];
  HIDWORD(v66) = v27 ^ 0x29D0CBF;
  LODWORD(v66) = v27 ^ 0xB0000000;
  v130 = v34 ^ v24 ^ 0xF1;
  LOBYTE(v27) = v23 ^ v128;
  v131 = *&v67[4 * (BYTE1(v31) ^ 0x9D)] ^ v114 ^ 0x7A ^ *(v68 + 4 * (v114 ^ 0xA1u)) ^ (v66 >> 28) ^ ((((v66 >> 28) >> 3) & 0x1D94E10B ^ v129) - 1125183635 - 2 * ((((v66 >> 28) >> 3) & 0x1D94E10B ^ v129) & 0x3CEF0F7D ^ v129 & 0x10));
  LODWORD(v66) = __ROR4__(((*&v64[4 * BYTE2(v31)] >= 0) | (2 * *&v64[4 * BYTE2(v31)])) ^ 0x3CF881C2, 29);
  LODWORD(v31) = v23 ^ v128 ^ 0xB8A2FDE1;
  v132 = *&v65[4 * (((v24 ^ 0xA3C13F1) >> 24) ^ 0x75)] ^ v121 ^ 0xE3 ^ (((v24 ^ 0xA3C13F1) >> 24) + 1300441925 - ((2 * ((v24 ^ 0xA3C13F1) >> 24) + 328) & 0x142)) ^ *&v67[4 * BYTE1(v61)] ^ *(v68 + 4 * (v121 ^ 0x38u)) ^ v66 ^ 0xCE14C5E2 ^ ((v66 ^ 0xCE14C5E2) >> 3) & 0x1D94E10B;
  v133 = *&v64[4 * (BYTE2(v23) ^ 0x87)];
  HIDWORD(v66) = v133 ^ 0x29D0CBF;
  LODWORD(v66) = v133 ^ 0xB0000000;
  v134 = v66 >> 28;
  v135 = (((v130 ^ 0x9F60AE30) >> 24) - 1373424826 + ((2 * ((((v130 ^ 0x9F60AE30) >> 24) + 164) & 0xA3 ^ (((v130 ^ 0x9F60AE30) >> 24) | 0x7FFFFFFD))) ^ 0x60A00805)) ^ *&v65[4 * (((v130 ^ 0x9F60AE30) >> 24) ^ 0x75)];
  v136 = (v135 ^ (v134 >> 3) & 0x1D94E10B) - 1125183635 - 2 * ((v135 ^ (v134 >> 3) & 0x1D94E10B) & 0x3CEF0F7D ^ v135 & 0x10);
  v137 = *&v64[4 * (BYTE2(v131) ^ 0x98)];
  LODWORD(v23) = ((v31 >> 24) + 1300441925 - ((2 * (v31 >> 24) + 328) & 0x142)) ^ *&v65[4 * ((v31 >> 24) ^ 0x75)];
  HIDWORD(v66) = v137 ^ 0x29D0CBF;
  LODWORD(v66) = v137 ^ 0xB0000000;
  v138 = v66 >> 28;
  LOBYTE(v137) = v132 ^ 0xEC;
  HIDWORD(v66) = v130 ^ 0x9F60AE30;
  LODWORD(v66) = v130;
  v139 = *(v68 + 4 * ((v34 ^ v24 ^ 0xF1) ^ 0xEBu)) ^ __ROR4__((v66 >> 7) & 0xFE000001 ^ 0x4EA02BFB, 25) ^ *&v67[4 * (((v132 ^ 0x8CEC) >> 8) ^ 0x6D)] ^ v138 ^ ((v23 ^ (v138 >> 3) & 0x1D94E10B) - 1125183635 - 2 * ((v23 ^ (v138 >> 3) & 0x1D94E10B) & 0x3CEF0F7D ^ v23 & 0x10));
  LODWORD(v23) = *&v64[4 * (((v132 ^ 0x6CB98CECu) >> 16) ^ 0xE)];
  HIDWORD(v66) = v23 ^ 0x29D0CBF;
  LODWORD(v66) = v23 ^ 0xB0000000;
  LODWORD(v23) = v66 >> 28;
  v140 = v132 ^ 0xDF927CF6;
  LODWORD(v23) = (((v131 ^ 0x24BDA3A9u) >> 24) + 1300441925 - ((2 * ((v131 ^ 0x24BDA3A9u) >> 24) + 328) & 0x142)) ^ *&v65[4 * (((v131 ^ 0x24BDA3A9u) >> 24) ^ 0x75)] ^ (((v23 >> 3) & 0x1D94E10B ^ -((v23 >> 3) & 0x1D94E10B) ^ (v23 - ((v23 >> 3) & 0x1D94E10B ^ v23))) + v23);
  v141 = *&v67[4 * (BYTE1(v34) ^ 0x33)] ^ v31 ^ *(v68 + 4 * (v27 ^ 0x3Au)) ^ (v23 - 1125183635 - ((2 * v23) & 0x79DE1EDA));
  LODWORD(v23) = *&v64[4 * (BYTE2(v34) ^ 0x45)];
  HIDWORD(v66) = v23 ^ 0x29D0CBF;
  LODWORD(v66) = v23 ^ 0xB0000000;
  LODWORD(v23) = (HIBYTE(v140) + 1300441925 - ((2 * HIBYTE(v140) + 328) & 0x142)) ^ *&v65[4 * (HIBYTE(v140) ^ 0x75)] ^ (v66 >> 28) ^ ((v66 >> 28) >> 3) & 0x1D94E10B;
  v142 = *&v67[4 * (BYTE1(v131) ^ 0x3E)] ^ *(v68 + 4 * (v137 ^ 0xC1u)) ^ v134 ^ v140 ^ 0x53B7DA19 ^ v136;
  LODWORD(v27) = v142 - ((2 * v142) & 0x6C07A7AA) + 906220501;
  LODWORD(v23) = *&v67[4 * BYTE1(v31)] ^ 0xD0568381 ^ (v23 - 1125183635 - ((2 * v23) & 0x79DE1EDA));
  v143 = v131 ^ 0x83E15931 ^ *(v68 + 4 * (v131 ^ 0x72u));
  LODWORD(v24) = v23 + v143 - 2 * (v23 & v143);
  LODWORD(v23) = v24 ^ 0x73E94C35;
  v144 = *&v64[4 * (((v139 ^ 0x37AE26B9u) >> 16) ^ 0x25)];
  HIDWORD(v66) = v144 ^ 0x29D0CBF;
  LODWORD(v66) = v144 ^ 0xB0000000;
  v145 = v66 >> 28;
  LODWORD(v34) = (v145 >> 3) & 0x1D94E10B ^ *&v65[4 * ((v27 >> 24) ^ 0x75)] ^ ((v27 >> 24) + 1300441925 - ((2 * (v27 >> 24) + 328) & 0x142));
  LODWORD(v31) = v24 ^ 0x83E159AD;
  LODWORD(v24) = *(v68 + 4 * (v24 ^ 0xEEu));
  v146 = (v139 ^ 0x37AE26B9u) >> 24;
  LODWORD(v24) = (v24 ^ -v24 ^ (v31 - (v31 ^ v24))) + v31;
  LODWORD(v31) = v145 ^ *&v67[4 * (BYTE1(v141) ^ 0xBB)];
  v147 = *&v65[4 * (v146 ^ 0x75)];
  LODWORD(v34) = v31 ^ v24 ^ (v34 - 1125183635 - ((2 * v34) & 0x79DE1EDA));
  LODWORD(v24) = v146 + 1300441925 - ((2 * v146 + 328) & 0x142);
  LODWORD(v31) = *&v64[4 * (BYTE2(v141) ^ 0xFA)];
  HIDWORD(v66) = v31 ^ 0x29D0CBF;
  LODWORD(v66) = v31 ^ 0xB0000000;
  LODWORD(v31) = v66 >> 28;
  v148 = BYTE1(v23);
  LODWORD(v24) = ((v31 >> 3) & 0x1D94E10B ^ v24 ^ v147) - 1125183635 - 2 * (((v31 >> 3) & 0x1D94E10B ^ v24 ^ v147) & 0x3CEF0F7D ^ (v24 ^ v147) & 0x10);
  v149 = BYTE3(v23);
  v150 = *&v67[4 * (BYTE1(v23) ^ 0x9D)] ^ v27 ^ *(v68 + 4 * (v27 ^ 0xDBu)) ^ v31 ^ v24;
  LODWORD(v23) = *&v64[4 * BYTE2(v23)];
  v151 = ((((v141 ^ 0xEDF2674u) >> 24) - 1373424827 - ((2 * ((v141 ^ 0xEDF2674u) >> 24) + 1654917448) & 0x60A00942)) ^ *&v65[4 * (((v141 ^ 0xEDF2674u) >> 24) ^ 0x75)]) - v148;
  HIDWORD(v66) = v23 ^ 0x29D0CBF;
  LODWORD(v66) = v23 ^ 0xB0000000;
  LODWORD(v23) = v66 >> 28;
  v152 = ((v151 ^ v148) + 2 * (v151 & v148)) ^ (v23 >> 3) & 0x1D94E10B;
  LODWORD(v24) = *&v67[4 * (BYTE1(v27) ^ 0x9D)];
  LODWORD(v27) = *&v64[4 * (BYTE2(v27) ^ 0x25)];
  LODWORD(v31) = v24 ^ v139 ^ 0xB9 ^ *(v68 + 4 * (v139 ^ 0x62u)) ^ v23 ^ (v152 - 1125183635 - ((2 * v152) & 0x79DE1EDA));
  HIDWORD(v66) = v27 ^ 0x29D0CBF;
  LODWORD(v66) = v27 ^ 0xB0000000;
  LODWORD(v23) = v66 >> 28;
  v153 = (v23 >> 3) & 0x1D94E10B ^ *&v65[4 * (v149 ^ 0x75)] ^ (v149 + 1300441925 - ((2 * v149 + 328) & 0x142));
  BYTE2(v149) = BYTE2(v34) ^ 0xF8;
  LODWORD(v23) = *&v67[4 * ((v139 ^ 0x26B9) >> 8)] ^ v141 ^ 0x74 ^ *(v68 + 4 * (v141 ^ 0xAFu)) ^ v23 ^ (v153 - 1125183635 - ((2 * v153) & 0x79DE1EDA));
  v154 = v23 ^ 0xE9DFE2F3;
  LODWORD(v27) = *&v64[4 * ((v150 ^ 0xC77B52AB) >> 16)];
  HIDWORD(v66) = v27 ^ 0x29D0CBF;
  LODWORD(v66) = v27 ^ 0xB0000000;
  LODWORD(v27) = v66 >> 28;
  v155 = (v27 >> 3) & 0x1D94E10B ^ *&v65[4 * (((v34 ^ 0x6EF88EEE) >> 24) ^ 0x75)] ^ (((v34 ^ 0x6EF88EEE) >> 24) - 1373424827 - ((2 * ((v34 ^ 0x6EF88EEE) >> 24) + 1654917448) & 0x60A00942));
  LODWORD(v27) = *(v68 + 4 * (v23 ^ 0x28u)) ^ *&v67[4 * ((v31 ^ 0xB71C) >> 8)] ^ v23 ^ 0xF3 ^ v27 ^ (v155 - 1125183635 - ((2 * v155) & 0x79DE1EDA));
  LODWORD(v23) = *&v64[4 * ((v31 ^ 0x847DB71C) >> 16)];
  HIDWORD(v66) = v23 ^ 0x29D0CBF;
  LODWORD(v66) = v23 ^ 0xB0000000;
  LODWORD(v23) = v66 >> 28;
  v156 = *&v65[4 * (((v150 ^ 0xC77B52AB) >> 24) ^ 0x75)] ^ (((v150 ^ 0xC77B52AB) >> 24) + 827458724) ^ (((v23 >> 3) & 0x1D94E10B) + 2094083745 - ((2 * (v23 >> 3)) & 0x39204002));
  v157 = *&v64[4 * BYTE2(v154)];
  HIDWORD(v66) = v157 ^ 0x29D0CBF;
  LODWORD(v66) = v157 ^ 0xB0000000;
  v158 = v23 ^ *&v67[4 * BYTE1(v154)] ^ v34 ^ 0xEE ^ *(v68 + 4 * (v34 ^ 0x35u)) ^ (v156 - 1125183635 - ((2 * v156) & 0x79DE1EDA));
  LODWORD(v23) = (v66 >> 28) ^ *&v65[4 * (((v31 ^ 0x847DB71C) >> 24) ^ 0x75)] ^ (((v31 ^ 0x847DB71C) >> 24) + 1300441925 - ((2 * ((v31 ^ 0x847DB71C) >> 24) + 328) & 0x142)) ^ ((v66 >> 28) >> 3) & 0x1D94E10B;
  LODWORD(v34) = *&v67[4 * ((v34 ^ 0x8EEE) >> 8)] ^ v150 ^ 0xAB ^ *(v68 + 4 * (v150 ^ 0x70u)) ^ (v23 - 1125183635 - ((2 * v23) & 0x79DE1EDA));
  LODWORD(v24) = *&v64[4 * BYTE2(v149)];
  HIDWORD(v66) = v24 ^ 0x29D0CBF;
  LODWORD(v66) = v24 ^ 0xB0000000;
  v159 = (HIBYTE(v154) + 1300441925 - ((2 * HIBYTE(v154) + 328) & 0x142)) ^ *&v65[4 * (HIBYTE(v154) ^ 0x75)] ^ (v66 >> 28) ^ ((v66 >> 28) >> 3) & 0x1D94E10B;
  v160 = v27 ^ 0xEBA4422E;
  v161 = v158 ^ 0x6106D346;
  LODWORD(v24) = *(v68 + 4 * (v31 ^ 0xC7u)) ^ *&v67[4 * (BYTE1(v150) ^ 0x52)] ^ (v159 - 1125183634 + ~((2 * v159) & 0x79DE1EDA));
  v162 = v34 ^ 0xA8A23A99;
  v163 = *&v64[4 * (BYTE2(v158) ^ 0x23)];
  HIDWORD(v66) = v163 ^ 0x29D0CBF;
  LODWORD(v66) = v163 ^ 0xB0000000;
  v164 = v66 >> 28;
  v165 = v24 ^ v31 ^ 0x1C;
  v166 = v165 ^ 0xC8186A9;
  LODWORD(v31) = (v164 >> 3) & 0x1D94E10B ^ *&v65[4 * (HIBYTE(v160) ^ 0x75)] ^ (HIBYTE(v160) + 1300441925 - ((2 * HIBYTE(v160) + 328) & 0x142));
  v167 = *(v68 + 4 * (v165 ^ 0x72u)) ^ *&v67[4 * (BYTE1(v34) ^ 0xA7)] ^ v164 ^ v165 ^ 0xA9 ^ (v31 - 1125183635 - ((2 * v31) & 0x79DE1EDA));
  v168 = *&v64[4 * BYTE2(v162)];
  HIDWORD(v66) = v168 ^ 0x29D0CBF;
  LODWORD(v66) = v168 ^ 0xB0000000;
  v169 = v66 >> 28;
  LODWORD(v31) = (HIBYTE(v161) + 1300441925 - ((2 * HIBYTE(v161) + 328) & 0x142)) ^ *&v65[4 * (HIBYTE(v161) - ((2 * HIBYTE(v161)) & 0xEA)) + 468] ^ (v169 >> 3) & 0x1D94E10B;
  v170 = *&v67[4 * (BYTE1(v24) ^ 0x1B)] ^ 0xD0568381 ^ v169 ^ (v31 - 1125183634 + ~((2 * v31) & 0x79DE1EDA));
  v171 = v170 & 0x10000000;
  v172 = *(v68 + 4 * (v27 ^ 0xF5u));
  if ((v170 & 0x10000000 & v172) != 0)
  {
    v171 = -v171;
  }

  v173 = (v171 + (v160 ^ 0x83E15998 ^ v172)) ^ v170 & 0xEFFFFFFF;
  v174 = *&v64[4 * BYTE2(v166)];
  HIDWORD(v175) = v174 ^ 0x29D0CBF;
  LODWORD(v175) = v174 ^ 0xB0000000;
  v176 = (v175 >> 28) ^ *&v65[4 * (HIBYTE(v162) ^ 0x75)] ^ (((v162 >> 23) & 0x148) + (HIBYTE(v162) ^ 0x315204A4) + 2094083745 - ((2 * (((v162 >> 23) & 0x148) + (HIBYTE(v162) ^ 0x315204A4))) & 0x60A00D42)) ^ ((v175 >> 28) >> 3) & 0x1D94E10B;
  v177 = *&v67[4 * BYTE1(v160)] ^ v158 ^ 0x46 ^ *(v68 + 4 * (v158 ^ 0x9Du)) ^ (v176 - 1125183635 - ((2 * v176) & 0x79DE1EDA));
  v178 = *&v64[4 * BYTE2(v160)];
  HIDWORD(v175) = v178 ^ 0x29D0CBF;
  LODWORD(v175) = v178 ^ 0xB0000000;
  v179 = v175 >> 28;
  v180 = (HIBYTE(v166) + 1300441925 - ((2 * HIBYTE(v166) + 328) & 0x142)) ^ (v179 >> 3) & 0x1D94E10B ^ *&v65[4 * (HIBYTE(v166) ^ 0x75)];
  v181 = *&v67[4 * (BYTE1(v161) ^ 0x9D)];
  v182 = v180 - 1125183635 - ((2 * v180) & 0x79DE1EDA);
  if ((v162 & 8) != 0)
  {
    v183 = -8;
  }

  else
  {
    v183 = 8;
  }

  v184 = v181 ^ v162 ^ v179 ^ *(v68 + 4 * ((v183 + v162) ^ 0xD3u)) ^ v182;
  v185 = ((v173 ^ 0x998D16FF) >> 16);
  v186 = v185 ^ -v185 ^ (-1153208844 - (v185 ^ 0xBB436DF4));
  v187 = *(&off_28512D4A0 + (v219 - 259)) - 4;
  v188 = *(&off_28512D4A0 + (v219 ^ 0x2E6)) - 8;
  v189 = *&v188[4 * (v185 ^ 0x3A)];
  v190 = *(&off_28512D4A0 + (v219 ^ 0x203));
  v191 = *(v190 + 4 * ((v177 ^ 0x35F2) >> 8)) ^ 0xCA8BD533;
  v192 = *&v187[4 * (HIBYTE(v167) ^ 0xCA)] ^ v191 ^ (2 * v191) & 0x37EDE44E;
  v193 = *(&off_28512D4A0 + (v219 - 55)) - 8;
  v194 = *&v193[4 * (v184 ^ 0xD6)] - 652965725;
  v195 = v189 ^ v192 ^ v194 ^ (v194 >> 1) ^ (v194 >> 5) ^ (v186 - ((2 * v186 + 914807784) & 0x2F4B71E6) - 756472089);
  v196 = v184 ^ 0x42197198;
  v197 = *(v190 + 4 * (BYTE1(v184) ^ 0x70u)) ^ 0xCA8BD533;
  v198 = *&v193[4 * (v167 ^ 0x63)] - 652965725;
  v199 = *&v187[4 * ((v177 ^ 0x36435F2u) >> 24)];
  v200 = *&v188[4 * (((v177 ^ 0x36435F2u) >> 16) ^ 0x3A)] ^ (((v177 ^ 0x36435F2u) >> 16) + 396736755 - (((v177 ^ 0x36435F2u) >> 15) & 0x1E6)) ^ v197 ^ *&v187[4 * (HIBYTE(v173) ^ 0xB5)] ^ v198 ^ (v198 >> 1) ^ (v198 >> 5) ^ (2 * v197) & 0x37EDE44E;
  v201 = *(v190 + 4 * (BYTE1(v167) ^ 0xDCu)) ^ 0xCA8BD533;
  v202 = *&v193[4 * ~v173] - 652965725;
  v203 = (BYTE2(v196) + 396736755 - ((v196 >> 15) & 0x1E6)) ^ *&v188[4 * (BYTE2(v196) ^ 0x3A)] ^ v201 ^ v202 ^ (v202 >> 1) ^ (v202 >> 5) ^ (2 * v201) & 0x37EDE44E ^ ((v199 ^ -v199 ^ (1929262035 - (v199 ^ 0x72FE33D3))) + 1929262035);
  LODWORD(v193) = *&v193[4 * (v177 ^ 0xBC)] - 652965725;
  LODWORD(v193) = *&v188[4 * (BYTE2(v167) ^ 0xDF)] ^ (BYTE2(v167) + 396736755 - ((v167 >> 15) & 0x1E6)) ^ *&v187[4 * HIBYTE(v196)] ^ v193 ^ (v193 >> 1) ^ (v193 >> 5);
  v205 = __ROR4__(__ROR4__(*(v190 + 4 * (BYTE1(v173) ^ 0x16u)) ^ 0x5707060D ^ (2 * *(v190 + 4 * (BYTE1(v173) ^ 0x16u))) & 0x37EDE44E, 24) ^ 0x89737888, 8);
  v204 = v193 ^ v205;
  LODWORD(v193) = v193 ^ ~v205;
  v206 = *(&off_28512D4A0 + (v219 ^ 0x3DC)) - 8;
  v207 = v206[BYTE1(v204) ^ 0x81];
  HIDWORD(v208) = v207 ^ 0x29;
  LODWORD(v208) = (v207 ^ 0x80) << 24;
  v53[14] = (v208 >> 30) ^ (-88 * (v208 >> 30)) ^ 0xFC;
  v209 = *(&off_28512D4A0 + (v219 ^ 0x295)) - 8;
  LODWORD(v187) = v209[BYTE2(v195) ^ 0xE1];
  HIDWORD(v208) = v187 ^ 0xFFFFFFF9;
  LODWORD(v208) = ~v187 << 24;
  v53[1] = (v208 >> 29) ^ 0xF2;
  v210 = *(&off_28512D4A0 + (v219 ^ 0x2E5)) - 12;
  v53[12] = v210[(v193 >> 24) ^ 0xA2] ^ (BYTE3(v193) - ((v193 >> 23) & 0x8A) - 59) ^ 0x86;
  v211 = *(&off_28512D4A0 + (v219 ^ 0x263));
  LOBYTE(v193) = *(v211 + (v204 ^ 0xB8)) ^ 0x97;
  v212 = (v193 >> 4) ^ (v193 >> 1);
  v53[15] = (v212 + v193 - 2 * (v212 & v193)) ^ 0xAD;
  v53[4] = (HIBYTE(v200) - ((v200 >> 23) & 0x8A) - 59) ^ 0x9C ^ v210[HIBYTE(v200) ^ 0xF1];
  v53[8] = (BYTE3(v203) - ((v203 >> 23) & 0x8A) - 59) ^ 0x45 ^ v210[BYTE3(v203) ^ 6];
  LODWORD(v193) = v209[BYTE2(v204) ^ 0xC5];
  HIDWORD(v208) = v193 ^ 0xFFFFFFF9;
  LODWORD(v208) = ~v193 << 24;
  v53[13] = (v208 >> 29) ^ 0x55;
  LODWORD(v193) = v206[BYTE1(v200) ^ 0x24];
  HIDWORD(v208) = v193 ^ 0x29;
  LODWORD(v208) = (v193 ^ 0x80) << 24;
  v53[6] = (v208 >> 30) ^ 0x21 ^ (-88 * (v208 >> 30));
  v53[11] = *(v211 + (v203 ^ 0x24)) ^ ((*(v211 + (v203 ^ 0x24)) ^ 0x97) >> 4) ^ ((*(v211 + (v203 ^ 0x24)) ^ 0x97) >> 1) ^ 0x70;
  LODWORD(v193) = v206[BYTE1(v195) ^ 0x57];
  HIDWORD(v208) = v193 ^ 0x29;
  LODWORD(v208) = (v193 ^ 0x80) << 24;
  v53[2] = (v208 >> 30) ^ (-88 * (v208 >> 30)) ^ 0xF8;
  LODWORD(v193) = v209[BYTE2(v203) ^ 0x49];
  HIDWORD(v208) = v193 ^ 0xFFFFFFF9;
  LODWORD(v208) = ~v193 << 24;
  v53[9] = (v208 >> 29) ^ 0x90;
  v53[3] = *(v211 + (v195 ^ 0x47)) ^ ((*(v211 + (v195 ^ 0x47)) ^ 0x97) >> 4) ^ ((*(v211 + (v195 ^ 0x47)) ^ 0x97) >> 1) ^ 0xFC;
  LODWORD(v193) = v206[BYTE1(v203) ^ 0x33];
  HIDWORD(v208) = v193 ^ 0x29;
  LODWORD(v208) = (v193 ^ 0x80) << 24;
  v53[10] = (v208 >> 30) ^ 0x5A ^ (-88 * (v208 >> 30));
  *v53 = (HIBYTE(v195) - ((v195 >> 23) & 0x8A) - 59) ^ 0x5F ^ v210[HIBYTE(v195) ^ 0xFELL];
  LOBYTE(v193) = *(v211 + (v200 ^ 0x20));
  LOBYTE(v206) = ((v193 ^ 0x97) >> 4) ^ ((v193 ^ 0x97) >> 1);
  v53[7] = v193 ^ 0xD3 ^ (v206 - 2 * (v206 & 7) - 121);
  LODWORD(v193) = v209[BYTE2(v200) ^ 0xD5];
  HIDWORD(v208) = v193 ^ 0xFFFFFFF9;
  LODWORD(v208) = ~v193 << 24;
  v218[v220] = (v208 >> 29) ^ 0x9E;
  v213 = HIDWORD(a12) > 0x306B7701;
  if (HIDWORD(a12) < 0x306B76F1)
  {
    v213 = 1;
  }

  return (*(a18 + 8 * (((2 * v213) | (v213 << 8)) ^ v219)))(v204, v209, 138, v211, v203, 0, v219, 33, a9, a10, a11, a12, v215, v28);
}

uint64_t sub_23E927514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, _BYTE *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  *a31 = (127 - v36) ^ 0x7F;
  v42 = 2048652491 * ((((2 * v39) | 0xCBF7F802) - v39 + 436470783) ^ 0x98FEBA37);
  v43 = (v41 - 176);
  v43[1] = v38;
  v43[3] = a31;
  *(v41 - 160) = v37 - v42 - 231;
  *(v41 - 176) = 339409620 - v42;
  (*(v40 + 8 * (v37 ^ 0xA7B)))(v41 - 176);
  *v43 = v38;
  *(v41 - 160) = a36 + 16 * v36;
  *(v41 - 168) = v37 + 1358806181 * ((~(v39 | 0xEC266510) + (v39 & 0xEC266510)) ^ 0xAEBA1C02) - 1028;
  v44 = (*(v40 + 8 * (v37 ^ 0xA29)))(v41 - 176);
  return (*(v40 + 8 * ((26 * (v36 + 1 != ((v37 + 594023825) & 0xDC97EFF7) + ((v37 - 186631733) & 0xB1FC57D) - 4193)) ^ v37)))(v44);
}

void sub_23E927664()
{
  if (v0 == 2107124209)
  {
    v2 = -1720814856;
  }

  else
  {
    v2 = 1720789280;
  }

  *(v1 + 8) = v2;
}

void sub_23E927724(uint64_t a1)
{
  v1 = *(a1 + 16) + 31943069 * (((a1 ^ 0x2DFDC9DF) - 1462996284 - 2 * ((a1 ^ 0x2DFDC9DF) & 0xA8CC72C4)) ^ 0x427FB212);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_23E927828@<X0>(int a1@<W1>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = (v11 + 4 * v10);
  v21 = (((*v20 ^ a2) + HIDWORD(v16)) & (((v14 - 574) | v19) + v12)) + HIDWORD(v18) + v17 * (*(*(a9 + 8) + 4 * v10) ^ a2);
  *(v20 - 1) = v21 + a2 - (a1 & (2 * v21));
  return (*(v15 + 8 * (((v10 + 1 == v9) * v13) ^ (v14 + 1951))))();
}

void sub_23E92789C(uint64_t a1@<X2>, uint64_t a2@<X3>, unsigned int a3@<W6>, char a4@<W7>, unsigned int a5@<W8>)
{
  v14 = (v9 + 4 * a2);
  v15 = (*v14 ^ a5) + (v8 ^ HIDWORD(v10)) + a3 * (*(a1 + 4 * a2) ^ a5);
  *(v14 - 1) = (v7 + v15 - ((v15 << ((v13 ^ a4) - 2)) & v6) + 253) ^ v11;
  __asm { BRAA            X4, X17 }
}

uint64_t sub_23E927CD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X7>, unsigned __int8 *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _BYTE *a25, _BYTE *a26, uint64_t a27, uint64_t a28)
{
  v41 = a1 - 1;
  v42 = (v29 - 128);
  v43 = (v30 - 16);
  v44 = *v43 ^ *(*(v42 - 15) + v34);
  *a5 = v44;
  v45 = v43[4] ^ *(*(v42 - 11) + v38);
  *(v39 - 12) = v45;
  v46 = v43[8] ^ *(*(v42 - 7) + v35);
  *(v39 - 8) = v46;
  v47 = v43[12] ^ *(*(v42 - 3) + v28);
  *(v39 - 4) = v47;
  v48 = v43[a3] ^ *(*(v42 - 2) + BYTE1(v35));
  *(v39 - 3) = v48;
  v49 = v43[9] ^ *(*(v42 - 6) + BYTE1(v38));
  *(v39 - 7) = v49;
  v50 = v43[5] ^ *(*(v42 - 10) + BYTE1(v34));
  *(v39 - 11) = v50;
  LOBYTE(v34) = v43[1] ^ *(*(v42 - 14) + BYTE1(v28));
  *(v39 - 15) = v34;
  LOBYTE(v38) = v43[2] ^ *(*(v42 - 13) + BYTE2(v35));
  *(v39 - 14) = v38;
  v51 = v43[10] ^ *(*(v42 - 5) + BYTE2(v34));
  *(v39 - 6) = v51;
  v52 = v43[6] ^ *(*(v42 - 9) + BYTE2(v28));
  *(v39 - 10) = v52;
  v53 = v43[14] ^ *(*(v42 - 1) + BYTE2(v38));
  *(v39 - 2) = v53;
  v54 = v43[3] ^ *(*(v42 - 12) + v40);
  *(v39 - 13) = v54;
  v55 = v43[7] ^ *(*(v42 - 8) + a4);
  *(v39 - 9) = v55;
  v56 = v43[11] ^ *(*(v42 - 4) + v37);
  *(v39 - 5) = v56;
  v57 = v43[15] ^ *(*v42 + v31);
  *(v39 - 1) = v57;
  v58 = (a27 + ((v41 % v33) << 7));
  v59 = *(v58[148] + 4 * v34) ^ *(v58[147] + 4 * v44) ^ *(v58[149] + 4 * v38) ^ *(v58[150] + 4 * v54);
  *(v39 - 13) = HIBYTE(v59);
  *(v39 - 14) = BYTE2(v59);
  *(v39 - 15) = BYTE1(v59);
  *a5 = v59;
  v60 = &v58[4 * a24 + 147];
  v61 = *(v60[1] + 4 * v50) ^ *(*v60 + 4 * v45) ^ *(v60[2] + 4 * v52) ^ *(v60[3] + 4 * v55);
  *(v39 - 9) = HIBYTE(v61);
  *(v39 - 10) = BYTE2(v61);
  *(v39 - 11) = BYTE1(v61);
  *v36 = v61;
  v62 = &v58[4 * a23 + 147];
  v63 = *(v62[1] + 4 * v49) ^ *(*v62 + 4 * v46) ^ *(v62[2] + 4 * v51) ^ *(v62[3] + 4 * v56);
  *(v39 - 5) = HIBYTE(v63);
  *(v39 - 6) = BYTE2(v63);
  *(v39 - 7) = BYTE1(v63);
  *a26 = v63;
  v64 = &v58[4 * a2 + 147];
  v65 = *(v64[1] + 4 * v48) ^ *(*v64 + 4 * v47) ^ *(v64[2] + 4 * v53) ^ *(v64[3] + 4 * v57);
  *(v39 - 1) = HIBYTE(v65);
  *(v39 - 2) = BYTE2(v65);
  *(v39 - 3) = BYTE1(v65);
  *a25 = v65;
  return (*(a28 + 8 * ((989 * (v41 == 0)) ^ v32)))();
}

uint64_t sub_23E927D18@<X0>(int a1@<W8>)
{
  v4 = v2 + (v1 ^ 0x8FB) - 923;
  v5 = !__CFADD__(a1, v4);
  v6 = v4 <= (v1 ^ 0xFFFFF49EuLL) && v5;
  return (*(v3 + 8 * ((182 * v6) ^ v1)))();
}

uint64_t sub_23E927D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16)
{
  v23 = 165 * (v16 ^ 0x3E);
  v24 = *a16 - (*(*(a14 + 96) + 1128) ^ v19);
  v25 = (v24 ^ v22) + (v17 & (2 * v24)) + v18 != v21;
  return (*(v20 + 8 * (((8 * v25) | (16 * v25)) ^ v23)))();
}

uint64_t sub_23E927D9C(uint64_t a1, unsigned int a2)
{
  v10 = *(v6 + 8 * (v8 - 2858));
  v11 = *v3;
  v12 = v2 + 4 + v5;
  *(*v3 + v12) = (HIBYTE(a2) ^ 1) - (v4 & (a2 >> 23)) - 46;
  *(v11 + v12 + 1) = (BYTE2(a2) ^ 0x31) - (v4 & (2 * (BYTE2(a2) ^ 0x31))) - 46;
  *(v11 + v12 + 2) = (v9 ^ BYTE1(a2)) + (v7 | ~(2 * (v9 ^ BYTE1(a2)))) - 45;
  *(v11 + v12 + 3) = a2 ^ 0xAA;
  return v10();
}

uint64_t sub_23E927E44@<X0>(int a1@<W8>)
{
  v5 = ((&v7 & 0x9C4D4A8C | ~(&v7 | 0x9C4D4A8C)) ^ 0x6204084C) * v4;
  v7 = v3;
  v8 = v5 - v2 - ((((a1 - 1314) | 0x604) - 268037794) & (207990794 - 2 * v2)) + 2117461946;
  v9 = a1 - v5 - 2882;
  return (*(v1 + 8 * (a1 + 789)))(&v7);
}

uint64_t sub_23E927ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  *(v43 - 136) = (v42 + 1564) ^ (1317436891 * ((((2 * (v43 - 136)) | 0x8BE8C59A) - (v43 - 136) - 1173643981) ^ 0xB0D5B4B8));
  *(v43 - 120) = v41 + 12;
  *(v43 - 112) = a32;
  *(v43 - 128) = &a40;
  (*(v40 + 8 * (v42 + 4058)))(v43 - 136);
  return (*(v40 + 8 * (((*(v43 - 132) == v42 - 1720814971) * (v42 + 3809)) ^ v42)))();
}

uint64_t sub_23E928014@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, unsigned int a4, uint64_t a5, int a6, unsigned int a7)
{
  v11 = ((((2 * &a3) | 0xBDA0D858) - &a3 - 1590717484) ^ 0xE3B3EAC1) * a1;
  a5 = v7;
  a3 = &a2;
  a4 = v11 - 2000156833;
  a6 = (v10 + 816) ^ v11;
  a7 = 1914221410 - v11;
  v12 = (*(v8 + 8 * (v10 | 0xB31)))(&a3);
  return (*(v8 + 8 * (((*(v7 + 24) == v9 + 2421) * (((v10 - 891005263) & 0x351BA7F5 ^ 0xAF5) + ((v10 - 966) | 0x2E0))) ^ v10)))(v12);
}

uint64_t sub_23E9285E8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v14 = (v7 ^ 0x22C473FE) + v8 + a4 * (*(*(v9 + 8) + a2) ^ (v7 + ((v12 + a3) ^ (a3 + 668)) - 630));
  *(v13 + 4 * v11) = v14 + ((v12 + a3) & v10 ^ (v7 + 2725)) - (v6 & (2 * v14));
  return (*(v5 + 8 * (v12 ^ ((4 * (a5 == 0)) | (16 * (a5 == 0))))))();
}

uint64_t sub_23E9286EC()
{
  v7 = (((v0 | 0x737103C5) - v0 + (v0 & 0x8C8EFC38)) ^ 0x929DDAA2) * v2;
  v3[35] = &STACK[0x2D0];
  *(v6 - 160) = -1965935125 - v7;
  *(v6 - 176) = v7 + v1 + 78;
  v3[32] = 0;
  v3[33] = &STACK[0x454];
  v8 = (*(v4 + 8 * (v1 ^ 0x10E1)))(v6 - 192);
  return (*(v4 + 8 * (v1 | (8 * (((((v1 + 3) & 0x7D) + 1) ^ (*(v6 - 156) == v5 + ((v1 - 227) | 0x64) - 116)) & 1)))))(v8);
}

uint64_t sub_23E9287C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int *a21)
{
  v27 = 481 * (v21 ^ 0x9B3);
  *v22 = 1;
  v28 = 1046730637 * ((0xF5A811EB855CA0ACLL - (v23 | 0xF5A811EB855CA0ACLL) + a18) ^ 0x7970780820A0E2BFLL);
  *(v25 + 32) = *a21 ^ v28;
  v29 = v28 + v27 - 415034888;
  *(v26 - 116) = (v27 + 1454888727) ^ v28;
  *(v26 - 112) = v27 - 415034888 - v28;
  *(v26 - 136) = -1046730637 * ((-2057527124 - (v23 | 0x855CA0AC) + a18) ^ 0x20A0E2BF);
  *(v26 - 132) = v29 + 15;
  *(v26 - 152) = v29 - 126;
  *(v25 + 16) = v28 ^ 0x13FF;
  v30 = (*(v24 + 8 * (v27 + 2711)))(v26 - 152);
  return (*(v24 + 8 * *(v26 - 120)))(v30);
}

uint64_t sub_23E928838(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, unsigned int a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x32C]) = v68;
  LODWORD(STACK[0x274]) = a4;
  LODWORD(STACK[0x35C]) = v69;
  LODWORD(STACK[0x404]) = v70;
  v76 = v75[87];
  while (1)
  {
    v87 = (((v68 ^ 0x85A5AA86) + 2052740474) ^ ((v68 ^ 0x285AD177) - 677040503) ^ ((v68 ^ 0xF828B8D6) + 131548970)) + (((*(v76 + 72) ^ 0xEEE347BF) + 287094849) ^ ((*(v76 + 72) ^ 0x19FD9C94) - 436051092) ^ ((*(v76 + 72) ^ 0xA2C9180C) + 1563879412)) - 450588035;
    v88 = (v87 ^ 0xE66AF391) & (2 * (v87 & 0xC68AF3D1)) ^ v87 & 0xC68AF3D1;
    v89 = ((2 * (v87 ^ 0x6B6B7591)) ^ 0x5BC30C80) & (v87 ^ 0x6B6B7591) ^ (2 * (v87 ^ 0x6B6B7591)) & 0xADE18640;
    v90 = v89 ^ 0xA4208240;
    v91 = (v89 ^ 0x8410400) & (4 * v88) ^ v88;
    v92 = ((4 * v90) ^ 0xB7861900) & v90 ^ (4 * v90) & 0xADE18640;
    v93 = v91 ^ 0xADE18640 ^ (v92 ^ 0xA5800000) & (16 * v91);
    v94 = (16 * (v92 ^ 0x8618640)) & 0xADE18640 ^ 0x21E18240 ^ ((16 * (v92 ^ 0x8618640)) ^ 0xDE186400) & (v92 ^ 0x8618640);
    v95 = (v93 << 8) & 0xADE18600 ^ v93 ^ ((v93 << 8) ^ 0xE1864000) & v94;
    v96 = v87 ^ (2 * ((v95 << 16) & 0x2DE10000 ^ v95 ^ ((v95 << 16) ^ 0x6400000) & ((v94 << 8) & 0x2DE10000 ^ 0xC610000 ^ ((v94 << 8) ^ 0xE1860000) & v94))) ^ 0x831E3C76;
    v97 = (((v69 ^ 0xFC65502F) + 60469201) ^ ((v69 ^ 0x806A24EA) + 2140527382) ^ ((v69 ^ 0x29D8B7E2) - 702068706)) + (((*(v76 + 76) ^ 0xD660B8F1) + 698304271) ^ ((*(v76 + 76) ^ 0xA87A3F10) + 1468383472) ^ ((*(v76 + 76) ^ 0x2BCD44C6) - 734872774)) + 531441601;
    *(v76 + 72) = v96;
    *(v76 + 76) = v97 ^ ((v97 ^ 0x7453B59) - 1958255146) ^ ((v97 ^ 0x875F1E4C) + 190660801) ^ ((v97 ^ 0x8E587799) + 39463190) ^ ((v97 ^ 0x7DBFF3FF) - 239227532) ^ 0x262A6254;
    v98 = v75[87];
    v99 = (((LODWORD(STACK[0x274]) ^ 0x245EEB57) - 610200407) ^ ((LODWORD(STACK[0x274]) ^ 0x177B53F1) - 393958385) ^ ((LODWORD(STACK[0x274]) ^ 0x66F27B81) - 1727167361)) - 437031945 + (((*(v98 + 80) ^ 0xD9BC2307) + 641981689) ^ ((*(v98 + 80) ^ 0xF2CA580E) + 221620210) ^ ((*(v98 + 80) ^ 0x7EA1B82E) - 2124527662));
    v100 = (v99 ^ 0xD1BED857) & (2 * (v99 & 0xC5BC1A57)) ^ v99 & 0xC5BC1A57;
    v101 = ((2 * (v99 ^ 0xDAD6E8D7)) ^ 0x3ED5E500) & (v99 ^ 0xDAD6E8D7) ^ (2 * (v99 ^ 0xDAD6E8D7)) & 0x1F6AF280;
    v102 = v101 ^ 0x12A1280;
    v103 = (v101 ^ 0x1E40E000) & (4 * v100) ^ v100;
    v104 = ((4 * v102) ^ 0x7DABCA00) & v102 ^ (4 * v102) & 0x1F6AF280;
    v105 = (v104 ^ 0x1D2AC200) & (16 * v103) ^ v103;
    v106 = ((16 * (v104 ^ 0x2403080)) ^ 0xF6AF2800) & (v104 ^ 0x2403080) ^ (16 * (v104 ^ 0x2403080)) & 0x1F6AF280;
    v107 = v105 ^ 0x1F6AF280 ^ (v106 ^ 0x162A2000) & (v105 << 8);
    v108 = v99 ^ (2 * ((v107 << 16) & 0x1F6A0000 ^ v107 ^ ((v107 << 16) ^ 0x72800000) & (((v106 ^ 0x940D280) << 8) & 0x1F6A0000 ^ 0x15080000 ^ (((v106 ^ 0x940D280) << 8) ^ 0x6AF20000) & (v106 ^ 0x940D280))));
    v109 = (((LODWORD(STACK[0x404]) ^ 0xF36BCED9) + 211038503) ^ ((LODWORD(STACK[0x404]) ^ 0x835E974E) + 2090952882) ^ ((LODWORD(STACK[0x404]) ^ 0x25E29AB0) - 635607728)) - 1107690641 + (((*(v98 + 84) ^ 0x59283D89) - 1495809417) ^ ((*(v98 + 84) ^ 0x76E4A83A) - 1994696762) ^ ((*(v98 + 84) ^ 0x7A1B5694) - 2048611988));
    *(v98 + 80) = v108 ^ 0x8ABE3C70;
    *(v98 + 84) = v109 ^ ((v109 ^ 0xF3AEA358) + 505096583) ^ ((v109 ^ 0x2F59B5EE) - 1024704719) ^ ((v109 ^ 0xB1428469) + 1559695032) ^ ((v109 ^ 0x7FFFE7FE) - 1840616159) ^ 0x479DB606;
    v75[36] -= 320;
    v110 = STACK[0x40C];
    if (SLODWORD(STACK[0x40C]) <= 2039618199)
    {
      break;
    }

    if (v110 == 2062850159)
    {
      v111 = a61 - 1863;
      v112 = a68;
      return (*(v73 + 8 * ((105 * (v111 + ((v111 - 209) ^ 0xFFFFFD49) + v112 + 506 <= LODWORD(STACK[0x4DC]))) ^ v111)))(a1, 54, 846067211, 420);
    }

    if (v110 == 2039618200)
    {
      return (*(v73 + 8 * ((a61 + 468) ^ (4 * (((((a61 + 468) ^ 0x971) + 2454) ^ 0xFC0uLL) > 0x38)))))(a1, 54, 846067211, 420);
    }

LABEL_14:
    v76 = v75[49];
    v113 = v75[78];
    v75[87] = v76;
    v75[88] = v113;
    v77 = v75[36];
    v78 = (&STACK[0x510] + v77);
    v75[89] = &STACK[0x510] + v77;
    v75[36] = v77 + 320;
    v68 = *(v76 + 72);
    LODWORD(STACK[0x32C]) = v68;
    v79 = *(v76 + 76);
    LODWORD(STACK[0x35C]) = v79;
    v80 = *(v76 + 80);
    LODWORD(STACK[0x274]) = v80;
    v81 = *(v76 + 84);
    LODWORD(STACK[0x404]) = v81;
    v82 = *(v76 + 96);
    if (v82 == 2)
    {
      LODWORD(STACK[0x368]) = *(v76 + 88);
      return (*(v73 + 8 * ((233 * (v74 + 456557532 < a54 - 2559 + (a54 ^ 0x669u) - 3122)) ^ a54)))(a1, 54, v81, v80, a61, 2854763736, 3838407775, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
    }

    if (v82 == 1)
    {
      v83 = *(v113 + (v74 + 456557532)) ^ v72;
      v84 = ((*(v113 + (v74 + 456557534)) ^ v72) << 16) | ((*(v113 + (v74 + 456557535)) ^ v72) << 24) | v83 | (((7 * ((a61 - 87) ^ 0x59) + 11) ^ *(v113 + (v74 + 456557533))) << 8);
      *v78 = v84 + v71 - 2 * (v84 & 0x196E72F9 ^ v83 & 1);
      v85 = *(v73 + 8 * ((53 * ((v74 + 456557536) > 0x3F)) ^ (a61 - 2647)));
      return v85(v85, 168558592, v81, v80, 2147221504, 986447872, 3838407775, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
    }

    v69 = v79;
  }

  if (v110 != -808205358)
  {
    if (v110 == 615706421)
    {
      v111 = a61 - 1863;
      v112 = STACK[0x21C];
      return (*(v73 + 8 * ((105 * (v111 + ((v111 - 209) ^ 0xFFFFFD49) + v112 + 506 <= LODWORD(STACK[0x4DC]))) ^ v111)))(a1, 54, 846067211, 420);
    }

    goto LABEL_14;
  }

  v114 = v75[41];
  v115 = *(v114 + 96);
  if (v115 == 2)
  {
    return (*(v73 + 8 * (((*(v114 + 92) != 0) * a37) ^ (a61 - 2355))))(a1, 54, 846067211, 420);
  }

  if (v115 == 1)
  {
    return (*(v73 + 8 * ((14 * (*(v114 + 92) == a36)) ^ (a61 + 292))))(a1, 54, 846067211, 420);
  }

  v75[5] = 91;
  *(v114 + 91) = ((((a61 + 11) & 0x9F) - 96) ^ &STACK[0x250]) * (&STACK[0x250] + 17);
  return (*(v73 + 8 * ((420 * (v75[5] == 0)) ^ (a61 - 758))))(a1, 54, 846067211);
}

void sub_23E9288EC(_DWORD *a1)
{
  v1 = *a1 ^ (1710126949 * ((a1 & 0x63FF3764 | ~(a1 | 0x63FF3764)) ^ 0x9AE73A31));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_23E928A40@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, unsigned int a4, uint64_t a5, int a6, int a7)
{
  v12 = (((&a3 | 0x9AEB0358) - (&a3 & 0x9AEB0358)) ^ 0x278885B5) * a1;
  a6 = (v11 + 816) ^ v12;
  a7 = v9 - v12 + 218640219;
  a4 = v12 - 1463285921;
  a3 = &a2;
  a5 = v7;
  v13 = (*(v8 + 8 * (v11 | 0xB31)))(&a3);
  return (*(v8 + 8 * (((*(v7 + 24) == 269 * (v11 ^ 0x4C3) + v10) * (4 * (v11 ^ 0x433) - 618)) ^ v11)))(v13);
}

uint64_t sub_23E928B04(uint64_t a1, uint64_t a2, int a3)
{
  v10 = -v7;
  v12.val[0].i64[0] = (v6 + v10 - 1) & 0xF;
  v12.val[0].i64[1] = (v6 + v10 + 14) & 0xF;
  v12.val[1].i64[0] = (v6 + v10 + 13) & 0xF;
  v12.val[1].i64[1] = (v6 + v10 + (((a3 + 97) | 4) ^ 8)) & 0xF;
  v12.val[2].i64[0] = (v6 + v10 + 11) & 0xF;
  v12.val[2].i64[1] = (v6 + v10 + 10) & 0xF;
  v12.val[3].i64[0] = (v6 + v10 + 9) & 0xF;
  v12.val[3].i64[1] = (v6 + v10) & 0xF ^ 8;
  *(v6 + v9 - 8 + v10) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v6 + v9 - 8 + v10), *(v5 + v12.val[0].i64[0] - 7)), veor_s8(*(v12.val[0].i64[0] + v3 - 4), *(v12.val[0].i64[0] + v4 - 5)))), 0xD2D2D2D2D2D2D2D2), vmul_s8(*&vqtbl4q_s8(v12, xmmword_23EAA16E0), 0x2F2F2F2F2F2F2F2FLL)));
  return (*(v8 + 8 * ((37 * (8 - (v6 & 0x18) != v10)) ^ (a3 - 1887))))(xmmword_23EAA16E0);
}

uint64_t sub_23E928C48@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + 855252350;
  *(v2 - 7 + (v4 & 0xCD05D79E ^ 0x3C3) - 320) = vadd_s8(vsub_s8(*(a1 + (v4 & 0xCD05D79E ^ 0x3C3) - 320 - 7), vand_s8(vadd_s8(*(a1 + (v4 & 0xCD05D79E ^ 0x3C3) - 320 - 7), *(a1 + (v4 & 0xCD05D79E ^ 0x3C3) - 320 - 7)), 0xA4A4A4A4A4A4A4A4)), 0xD2D2D2D2D2D2D2D2);
  return (*(v3 + 8 * (v1 - 2438)))();
}

void U4HBs()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *(&off_28512D4A0 + ((-57 * ((qword_27E37D680 - dword_27E37D690) ^ 0x68)) ^ byte_23EA862F0[byte_23EA7AA50[(-57 * ((qword_27E37D680 - dword_27E37D690) ^ 0x68))] ^ 0xEF]) + 300);
  v1 = -57 * ((qword_27E37D680 - *v0) ^ 0x68);
  v2 = *(&off_28512D4A0 + (*(off_28512E230 + (*(off_28512E0A0 + v1 - 4) ^ 0xF7u) - 8) ^ v1) - 90);
  v3 = 1773100999 * ((*(v2 - 4) - *v0 - &v5) ^ 0xB2DEEC90F0DCD368);
  *v0 = v3;
  *(v2 - 4) = v3;
  v6[0] = (31943069 * ((((v6 | 0xD66934AC) ^ 0xFFFFFFFE) - (~v6 | 0x2996CB53)) ^ 0xEED8C25A)) ^ 0x63319FAD;
  LOBYTE(v2) = -57 * ((*(v2 - 4) + *v0) ^ 0x68);
  v4 = *(&off_28512D4A0 + ((-57 * ((qword_27E37D680 + dword_27E37D690) ^ 0x68)) ^ byte_23EA861F0[byte_23EA7A950[(-57 * ((qword_27E37D680 + dword_27E37D690) ^ 0x68))] ^ 0x15]) + 193);
  (*(v4 + 8 * ((*(off_28512E280 + (*(off_28512DA50 + v2 - 8) ^ 0xB8u) - 4) ^ v2) + 3913)))(v6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_23E928EEC@<X0>(uint64_t a1@<X8>)
{
  v5 = ((181 * (v2 ^ 0x121u)) ^ 0xC20) - v1;
  v6 = *(a1 + v5 - 15);
  v7 = *(a1 + v5 - 31);
  v8 = v3 + v5;
  v9.i64[0] = 0xA4A4A4A4A4A4A4A4;
  v9.i64[1] = 0xA4A4A4A4A4A4A4A4;
  v10.i64[0] = 0xD2D2D2D2D2D2D2D2;
  v10.i64[1] = 0xD2D2D2D2D2D2D2D2;
  *(v8 - 15) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v9)), v10);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v9)), v10);
  return (*(v4 + 8 * ((3167 * (v1 == 288)) ^ v2)))();
}

uint64_t sub_23E928FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v21 = ((((v20 - 128) | 0x610A516D) + (~(v20 - 128) | 0x9EF5AE92)) ^ 0x60BCEC53) * v17;
  *(v20 - 128) = &a13;
  *(v20 - 120) = v21 + (v18 ^ 0x7AA ^ v16 ^ 0x3E7BD864) + ((2 * v16) & 0x7CF7BD9A) - 944309960;
  *(v20 - 116) = v18 - v21 + 3337;
  (*(v15 + 8 * (v18 + 3917)))(v20 - 128);
  *(v20 - 128) = &a15;
  *(v20 - 116) = ((v18 ^ 0x7AA) + 1061) ^ ((((((v20 - 128) | 0x20CAD936) ^ 0xFFFFFFFE) - (~(v20 - 128) | 0xDF3526C9)) ^ 0xDE839BF6) * v17);
  *(v20 - 112) = a12;
  v22 = (*(v15 + 8 * (v18 ^ 0xEDD)))(v20 - 128);
  return (*(v15 + 8 * (((((v18 ^ 0xC49 ^ (*(v20 - 120) == v19 + 253)) & 1) == 0) * (((v18 ^ 0x7AA) - 538) ^ 0x495)) ^ v18 ^ 0x7AA)))(v22);
}

uint64_t sub_23E92910C(uint64_t a1, int a2)
{
  v9 = v6 - 1;
  *(v7 + v9) = *(v5 + (v9 & 0xF)) ^ *(v2 + v9) ^ *((v9 & 0xF) + v3 + 2) ^ ((v9 & 0xF) * (a2 - 8)) ^ *(v4 + (v9 & 0xF));
  return (*(v8 + 8 * ((a2 + 2410) ^ (8 * (v9 != 0)))))();
}

void sub_23E9291F0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && *(a1 + 32) != 0;
  v1 = *(a1 + 16) ^ (2048652491 * ((a1 - 2 * (a1 & 0x8D7C1B23) - 1921246429) ^ 0xF0795D15));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_23E9292F8(uint64_t a1, uint64_t a2)
{
  v8 = (a2 + v2);
  *v8 = v7;
  v8[1] = v7;
  return (*(v6 + 8 * (((1011 * (v3 ^ 0xCAu) - 2006 == (v4 & 0x30)) * v5) ^ v3)))();
}

uint64_t sub_23E929404(uint64_t a1, uint64_t a2, int a3)
{
  v10 = -v7;
  v12.val[0].i64[0] = (v6 + v10 - 1) & 0xF;
  v12.val[0].i64[1] = (v6 + v10 + 14) & 0xF;
  v12.val[1].i64[0] = (v6 + v10 + 13) & 0xF;
  v12.val[1].i64[1] = (v6 + v10 + 12) & 0xF;
  v12.val[2].i64[0] = (v6 + v10 + 11) & 0xF;
  v12.val[2].i64[1] = (v6 + v10 + 10) & 0xF;
  v12.val[3].i64[0] = (v6 + v10 + ((a3 - 33) ^ 4)) & 0xF;
  v12.val[3].i64[1] = (v6 + v10) & 0xF ^ 8;
  *(v6 + v9 - 8 + v10) = veor_s8(veor_s8(veor_s8(*(v3 + v12.val[0].i64[0] - 7), *(v6 + v9 - 8 + v10)), veor_s8(*(v12.val[0].i64[0] + v5 - 4), *(v12.val[0].i64[0] + v4 - 5))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v12, xmmword_23EAA16E0), 0xEFEFEFEFEFEFEFEFLL)));
  return (*(v8 + 8 * ((83 * (8 - (v6 & 0x18) != v10)) ^ (a3 + 752))))(v6 & 7, xmmword_23EAA16E0);
}

uint64_t sub_23E929550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3 - (**(a2 + 8) == 0);
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 1948623840;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v5 = *(a1 + 96) + 528;
  v6 = *(a2 + 8) + (*(a2 + 4) - v4);
  v7 = 31943069 * ((2 * (&v12 & 0x3E98E7F0) - &v12 + 1097275403) ^ 0x86291102);
  v14 = v7 + 3154;
  v13 = v6;
  v12 = v4 - v7 - 1339562294;
  v15 = v5;
  (*(a3 + 33224))(&v12);
  v10 = v16;
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v4);
  return (v10 - 1882222108);
}

uint64_t sub_23E92968C@<X0>(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  return (*(v3 + 8 * ((123 * ((((v2 ^ 0x440) + 1627486950) & 0x9EFE7F77) - 534 == (v1 & 0xFFFFFFE0))) ^ ((v2 ^ 0x440) + 1370))))();
}

uint64_t sub_23E929764(uint64_t a1, uint64_t a2, int a3)
{
  v7 = v5 < v4;
  v8 = v3 + 1;
  if (v7 == v8 > 0xFFFFFFFF8FCABF93)
  {
    v7 = v8 + v4 < v5;
  }

  return (*(v6 + 8 * (((((a3 + 1327103861) & 0xB0E5FDED) + 1690) * v7) ^ a3)))();
}

uint64_t sub_23E929840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, int a59, int a60, uint64_t a61, int a62)
{
  *v66 = v66[623] + (((v63 | ~(a62 - 2816)) & (a62 - 2816 - v63) | v63 & ~(a62 - 2816)) >= 0);
  *(v62 + 280) = (v64 + 1) ^ v65;
  *(v62 + 264) = v65 ^ 3;
  *(v68 - 156) = (a62 + 1454886731) ^ v65;
  *(v68 - 152) = a60 - v65;
  *(v68 - 192) = (a58 ^ (a62 - 3439)) + v65;
  *(v68 - 176) = -v65;
  *(v68 - 172) = v65 + a60 + 53;
  v69 = (*(v67 + 8 * (a62 + 715)))(v68 - 192);
  return (*(v67 + 8 * *(v68 - 160)))(v69);
}

uint64_t sub_23E9298C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char *a48, uint64_t a49, uint64_t a50, char *a51)
{
  *(v53 - 168) = 1358806181 * ((((v53 - 176) | 0xFFD5385A) - (v53 - 176) + ((v53 - 176) & 0x2AC7A0)) ^ 0x42B6BEB7) - 1631618325 + v51;
  *(v53 - 176) = a48;
  (*(v52 + 8 * (v51 ^ 0x1C9D)))(v53 - 176);
  v54 = 2048652491 * ((v53 + 410776575 - 2 * ((v53 - 176) & 0x187BF4AF)) ^ 0x657EB299);
  *(v53 - 152) = *(&off_28512D4A0 + (v51 ^ 0xD61)) - 12;
  *(v53 - 168) = a48;
  *(v53 - 176) = 339409668 - v54;
  *(v53 - 160) = v51 - 1950 - v54;
  (*(v52 + 8 * (v51 | 0x334)))(v53 - 176);
  v55 = 2048652491 * ((2 * ((v53 - 176) & 0x19332C90) - (v53 - 176) - 422784147) ^ 0x9BC9955B);
  *(v53 - 152) = a46;
  *(v53 - 168) = a48;
  *(v53 - 160) = v51 - 1950 - v55;
  *(v53 - 176) = 339409653 - v55;
  v56 = (*(v52 + 8 * (v51 + 820)))(v53 - 176);
  *a51 = *a48;
  *(a51 + 1) = *(a48 + 1);
  *(a51 + 2) = *(a48 + 2);
  *(a51 + 3) = *(a48 + 3);
  *(a51 + 4) = *(a48 + 4);
  *(a51 + 5) = *(a48 + 5);
  return (*(v52 + 8 * (((v51 ^ 0xD6) * (a51 - a48 < (v51 ^ 0xCA3uLL))) ^ v51 ^ 0xF86)))(v56);
}

void sub_23E929ABC(uint64_t a1)
{
  v1 = *(a1 + 12) ^ (956911519 * (((a1 | 0x1250F17) - a1 + (a1 & 0xFEDAF0E8)) ^ 0x7E7303A9));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23E929C50@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unsigned int a40)
{
  v44 = *(&a28 + a1 + 72);
  v45 = ((2 * a1) & 0xFECFEEA0) + ((v41 - 2309) ^ a1 ^ 0x7F67F72A) + v40;
  *(v42 + v45) = (HIBYTE(v44) ^ 0x55) - ((2 * (HIBYTE(v44) ^ 0x55)) & 0xA4) - 46;
  *(v42 + v45 + 1) = (BYTE2(v44) ^ 0xD7) - ((2 * (BYTE2(v44) ^ 0xD7)) & 0xA4) - 46;
  *(v42 + v45 + 2) = (BYTE1(v44) ^ 0xC3) + (~(2 * (BYTE1(v44) ^ 0xC3)) | 0x5B) - 45;
  *(v42 + v45 + 3) = v44 ^ 0xF5;
  return (*(v43 + 8 * (((32 * (a1 + 4 < a40)) | ((a1 + 4 < a40) << 7)) ^ v41)))();
}

uint64_t sub_23E929D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, char a13)
{
  v17 = ((((v13 + 8) | 0xA0) + 77) ^ *(v15 + 5)) + 2 * *(v15 + 5);
  a11 = 2008441969 * (&a11 ^ 0xBB11EDA6) - 740057515 + v13;
  a13 = 113 * (&a11 ^ 0xA6) + v17 + 0x80;
  v18 = (*(v14 + 8 * (v13 ^ 0x145B)))(&a11);
  return (*(v14 + 8 * (v13 ^ (32 * (a12 == v16)))))(v18);
}

uint64_t sub_23E92A07C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t (*a18)(uint64_t))
{
  v24 = (a3 + v21);
  *v24 = v18;
  v24[1] = v19;
  *(a3 + (a13 ^ 0x7B) + v21) = v20;
  v24[3] = a2;
  v25 = 956911519 * ((392358963 - ((v23 - 168) | 0x1762EC33) + ((v23 - 168) | 0xE89D13CC)) ^ 0x97CB1F72);
  *(v23 - 160) = a3;
  *(v23 - 168) = v25 + a13 + 2438;
  *(v23 - 152) = v25 + 2079026534;
  v26 = (*(v22 + 8 * (a13 + 3975)))(v23 - 168);
  return a18(v26);
}

uint64_t sub_23E92A160@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 + (v2 - 2214);
  *(a1 + v5 - 997) = *(v3 + v5 - 997) - ((2 * *(v3 + v5 - 997)) & 0xA4) - 46;
  return (*(v4 + 8 * (((2 * (v5 == 997)) | (16 * (v5 == 997))) ^ v2)))();
}

uint64_t sub_23E92A1A0@<X0>(uint64_t a1@<X7>, _BYTE *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t (*a19)(void))
{
  *a2 = *(STACK[0xA78] + *a2);
  *(v23 - 12) = *(STACK[0xAB8] + v22);
  *(v23 - 8) = *(STACK[0xAF8] + v20);
  *(v23 - 4) = *(STACK[0xB38] + v19);
  *(v23 - 3) = *(STACK[0xB48] + BYTE1(v20));
  *(v23 - 7) = *(STACK[0xB08] + BYTE1(v22));
  *(v23 - 11) = *(STACK[0xAC8] + *(v23 - 15));
  *(v23 - 15) = *(STACK[0xA88] + BYTE1(v19));
  v25 = *(v23 - 14);
  *(v23 - 14) = *(STACK[0xA98] + BYTE2(v20));
  *(v23 - 6) = *(STACK[0xB18] + v25);
  *(v23 - 10) = *(STACK[0xAD8] + BYTE2(v19));
  *(v23 - 2) = *(STACK[0xB58] + BYTE2(v22));
  v26 = *(v23 - 13);
  *(v23 - 13) = *(STACK[0xAA8] + v24);
  *(v23 - 9) = *(STACK[0xAE8] + a1);
  *(v23 - 5) = *(STACK[0xB28] + v21);
  *(v23 - 1) = *(STACK[0xB68] + v26);
  return a19();
}

uint64_t sub_23E92A2A4(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v10 = (v7 + 4 * v6);
  v11 = v6 + 1;
  *v10 = *(v9 + 4 * (*(v7 + 4 * v11) & 1)) ^ v10[397] ^ ((*(v7 + 4 * v11) & 0x7FFFFFFE | v5 & 0x80000000) >> 1);
  LODWORD(v10) = v11 != (v4 ^ a3 ^ a4);
  return (*(v8 + 8 * (((2 * v10) | (16 * v10)) ^ v4)))();
}

uint64_t sub_23E92AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = (a13 + v15);
  *(v18 - 1) = v17;
  *v18 = v17;
  return (*(v16 + 8 * ((((((v14 - 1880203269) & 0x70119FF3 ^ 0xFFFFFFFFFFFFF442) & v13) != 16) * (((((v14 - 1880203269) & 0x70119FF3) - 744) | 0x10) - 2153)) ^ (v14 - 1880203269) & 0x70119FF3)))();
}

uint64_t sub_23E92AB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (v4 + 4 * (a3 + v7));
  *v9 = v5 ^ __ROR4__(*(v9 - 8) ^ *(v9 - 14) ^ *(v9 - 16) ^ *(v4 + 4 * (a3 + v7 + ((v3 - 2970) | 0x861u)) - 8608), 31);
  return (*(v6 + 8 * ((63 * (a3 + 1 != v8 + 80)) ^ v3)))(285898711);
}

uint64_t sub_23E92AB8C()
{
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[398];
  v7 = *(v3 + 4 * (v5 & 1));
  *v1 = v1[397] ^ ((v4 & 0x7FFFFFFE | *v1 & 0x80000000) >> 1) ^ *(v3 + 4 * (v4 & 1));
  v1[1] = v6 ^ ((v5 & (v0 + 2147482203) | v4 & 0x80000000) >> 1) ^ v7;
  return (*(v2 + 8 * ((v0 + 1718) | 2)))();
}

void sub_23E92AC1C()
{
  v4 = *(v0 + 16) - v2;
  v5 = ((v4 ^ 0xAA2C8A2320A98C9ALL) + 0x52E0D7CE4BBC3993) ^ v4 ^ ((v4 ^ 0x96ED4CFB3E19E4B9) + 0x6E211116550C51B2) ^ ((v4 ^ 0x749FFEBFE77FFF3FLL) - 0x73AC5CAD7395B5C8) ^ ((v3 ^ 0xF2Bu ^ v4 ^ 0x4F6D9A756D25D657) - 0x485E3867F9CF971CLL);
  *v6 = (HIBYTE(v5) ^ 7) - ((2 * (HIBYTE(v5) ^ 7)) & 0xA4) - 46;
  v6[1] = (BYTE6(v5) ^ 0x33) - ((2 * (BYTE6(v5) ^ 0x33)) & 0xA4) - 46;
  v6[2] = (BYTE5(v5) ^ 0xA2) + (~(2 * (BYTE5(v5) ^ 0xA2)) | 0x5B) - 45;
  v6[3] = (BYTE4(v5) ^ 0x12) - 2 * ((BYTE4(v5) ^ 0x12) & 0x57 ^ BYTE4(v5) & 5) - 46;
  v6[4] = (BYTE3(v5) ^ 0x94) - ((2 * (BYTE3(v5) ^ 0x94)) & 0xA4) - 46;
  v6[5] = (BYTE2(v5) ^ 0xEA) - ((2 * (BYTE2(v5) ^ 0xEA)) & 0xA4) - 46;
  v6[6] = (BYTE1(v5) ^ 0x4A) - 2 * ((BYTE1(v5) ^ 0x4A) & 0x57 ^ BYTE1(v5) & 5) - 46;
  v6[7] = v5 ^ 0x25;
  *(v0 + 4) = *(v1 + 24);
}

uint64_t sub_23E92AE0C(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = 2048652491 * (((a1 | 0x9E93922A) - (a1 & 0x9E93922A)) ^ 0xE396D41C);
  v2 = *(a1 + 8) - v1;
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = ((*(a1 + 24) ^ v1 ^ 0xC57E2F67) + 981586073) ^ ((*(a1 + 24) ^ v1 ^ 0x7F116453) - 2131846227) ^ ((*(a1 + 24) ^ v1 ^ 0xB8A514D1) + 1197140783);
  v6 = 2048652491 * (&v8 ^ 0x7D054636);
  v10 = v2 + 1117227373 - v6 + 1031;
  v11 = v4;
  v9 = v3;
  v8 = v5 - v6 + 386226857;
  return (*(*(&off_28512D4A0 + v2 + 1117227373) + (v2 ^ 0xBD6878C6)))(&v8);
}

void sub_23E92AF60(uint64_t a1)
{
  v1 = 2048652491 * ((2 * (a1 & 0xD59A2C3) - a1 - 223978180) ^ 0x8FA31B0A);
  v2 = *(a1 + 16) + v1;
  v3 = *(a1 + 8);
  v4 = *a1 + v1;
  v5 = (8 * (((v4 ^ 0x463FC1A7) + 234538141) ^ v4 ^ ((v4 ^ 0x1874C94) + 172116400) ^ ((v4 ^ 0x1CFD8C00) + 389581116) ^ ((v4 ^ 0xF7FFBF7) + 79363789))) ^ 0xA1D7D620;
  v6 = (v4 ^ 0xEBB1E5BE) & (2 * (v4 & 0xEBC5053C)) ^ v4 & 0xEBC5053C;
  v7 = ((2 * (v4 ^ 0x7F33E5C6)) ^ 0x29EDC1F4) & (v4 ^ 0x7F33E5C6) ^ (2 * (v4 ^ 0x7F33E5C6)) & 0x94F6E0FA;
  v8 = *(v3 + 16);
  v9 = *(v3 + 20);
  v10 = ((4 * (v7 ^ 0x9412200A)) ^ 0x53DB83E8) & (v7 ^ 0x9412200A) ^ (4 * (v7 ^ 0x9412200A)) & 0x94F6E0F8;
  v11 = ((16 * (v10 ^ 0x84246012)) ^ 0x4F6E0FA0) & (v10 ^ 0x84246012) ^ (16 * (v10 ^ 0x84246012)) & 0x94F6E0F0;
  v12 = (v10 ^ 0x10D280E0) & (16 * ((v7 ^ 0x2600F8) & (4 * v6) ^ v6)) ^ (v7 ^ 0x2600F8) & (4 * v6) ^ v6 ^ 0x94F6E0FA ^ v11 & (((v10 ^ 0x10D280E0) & (16 * ((v7 ^ 0x2600F8) & (4 * v6) ^ v6)) ^ (v7 ^ 0x2600F8) & (4 * v6) ^ v6) << 8);
  *(v3 + 16) = v5 + v8;
  *(v3 + 20) = v9 + __CFADD__(v5, v8) + (((v4 ^ (2 * ((v12 << 16) & 0x10000000 ^ v12 ^ ((((v11 ^ 0x9090E05A) << 8) ^ 0x76E00000) & (v11 ^ 0x9090E05A) ^ ((v11 ^ 0x9090E05A) << 8) & 0x14F60000) & ((v12 << 16) ^ 0x60000000)))) >> 29) ^ 6);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_23E92B1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  *(*(a13 + 96) + 504) = v37 + 1;
  *(*(a13 + 96) + 496) = a15 - 1;
  v40 = 1358806181 * ((((2 * (v39 - 168)) | 0x6B7A4754) - (v39 - 168) + 1245895766) ^ 0x8DEA547);
  *(v39 - 160) = &a28;
  *(v39 - 148) = 791581032 - v40;
  *(v39 - 168) = 915945666 - v40;
  v41 = (*(v38 + 33216))(v39 - 168);
  return (*(v38 + 8 * ((583 * (a15 - 1688921484 + (a37 & 0x3Fu) < 0xFFFFFFC0)) ^ 0xD82u)))(v41);
}

uint64_t sub_23E92B330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, int a23, int a24)
{
  v25 = (a24 ^ 0xAC8) + a6;
  v26 = (a23 ^ 0x133458B7) & (*(v24 - 116) ^ 0xFFFFFFE1);
  v27 = *(v24 - 116) & 0xEF;
  *(v24 - 132) = a21 ^ 0xFA4BD192;
  v208 = v27 ^ 0xBDF4CCE0 ^ v26;
  *(v24 - 128) = a20 ^ 0x60E7DB7C;
  *(v24 - 124) = v25;
  v28 = (a18 + v25);
  v29 = *(a16 + (*v28 ^ 0x13));
  v30 = ((v29 * (((((a24 ^ 0x946) + 1146) | 0x2C0) - 722) ^ 0xFFFFFFE3)) >> 4) & 9 ^ (v29 * (((((a24 ^ 0x946) + 1146) | 0x2C0) - 722) ^ 0xFFFFFFE3));
  v31 = -27 * *(a16 + (v28[4] ^ 0x84));
  v32 = v31 ^ 0x14 ^ (v31 >> 4) & 9;
  v33 = -27 * *(a16 + (v28[12] ^ 0x22));
  v34 = v33 ^ 0x6E ^ (v33 >> 4) & 9;
  v35 = (*(a13 + (v28[15] ^ 0x99)) ^ v28[15]);
  v205 = *(a13 + (v28[15] ^ 0x99)) ^ v28[15];
  v36 = *(a13 + (v28[11] ^ 0xA0)) ^ v28[11];
  LOBYTE(v33) = (v28[7] - ((2 * v28[7]) & 0x24) - 110) ^ *(a13 + (v28[7] ^ 0xA7));
  v37 = (v33 ^ 0xFFE56588) & ((v32 << 24) ^ 0xE6E565BB);
  v38 = a14;
  v39 = ((*(a15 + (v28[10] ^ 0xAFLL)) << 8) ^ 0x730BF097) & (v36 ^ 0x7B1FFF45) | v36 & 0x68;
  v40 = ((*(a14 + (v28[1] ^ 0xD7)) >> 1) & 0xC ^ *(a14 + (v28[1] ^ 0xD7))) << 16;
  v41 = (v40 ^ 0xFFF8FFFF) & (((v30 ^ 0x49) << 24) ^ 0xF50DFE8E) | v40 & 0xF20000;
  v42 = *(a15 + (v28[2] ^ 0x93));
  v43 = *(a15 + (v28[14] ^ 0xBELL)) << 8;
  v44 = v28[13] ^ 0x8DLL;
  *(v24 - 116) = (v28[3] - ((2 * v28[3]) & 0x24) - 110) ^ *(a13 + (v28[3] ^ 0x8BLL));
  v45 = (v41 ^ 0x820121) & ((v42 << 8) ^ 0xABA46A5) ^ v41 & 0xF5454802;
  v46 = ((*(v38 + v44) >> 1) & 0xC ^ *(v38 + v44)) << 16;
  v47 = ((v46 & 0x930000 | (v46 ^ 0xFF28FFCB) & (((*&v43 | 0xFFFF00FF) & ((v34 << 24) ^ 0xCD75275C) | v43 & 0xD800) ^ 0xE719F597)) ^ 0x5DAA1921) & (v35 ^ 0xFFFFFF60) ^ v205 & 0x15;
  v48 = (((*(v38 + (v28[9] ^ 0x57)) >> 1) & 0xC | 1) ^ *(v38 + (v28[9] ^ 0x57))) << 16;
  v49 = (v48 ^ 0x7FC0FFFF) & (v39 ^ 0x16ED1855) ^ v48 & 0x190000;
  v50 = *(a15 + (v28[6] ^ 0x5ALL)) << 8;
  v51 = (((v50 ^ 0xFFFFDFFF) & ((((*(v38 + (v28[5] ^ 0x1BLL)) >> 1) & 0xC ^ *(v38 + (v28[5] ^ 0x1BLL))) << 16) ^ 0x5A436044) | v50 & 0xFFFF9FFF) ^ 0x1F6719B8) & ((v37 | v33 & 0x44) ^ 0x761A9A44) ^ v37 & 0xBA600403;
  v52 = -27 * *(a16 + (v28[8] ^ 0x3FLL));
  v53 = (v52 >> 4) & 9 ^ v52;
  v203 = HIBYTE(v51);
  v202 = ((v53 << 24) ^ 0x638AC795) & (v49 ^ 0x9A112E17) ^ v49 & 0x6F75386A;
  v54 = *(&off_28512D4A0 + (a24 ^ 0xBCC)) - 4;
  v55 = *&v54[4 * (v30 ^ 0x29)];
  LODWORD(v44) = ((v47 ^ 0xDABC6606) >> 16);
  v56 = *(&off_28512D4A0 + (a24 ^ 0xB12)) - 12;
  v57 = *&v56[4 * (v44 ^ 0x97)];
  v58 = *(&off_28512D4A0 + (a24 ^ 0xBC9)) - 12;
  v207 = a24 ^ 0x946;
  v59 = v33 ^ 2u;
  v60 = *(&off_28512D4A0 + (a24 ^ 0xBD9)) - 4;
  v61 = v44 ^ v55 ^ *&v60[4 * v59] ^ (*&v58[4 * (((v202 ^ 0x27EB) >> 8) ^ 0x6B)] + (((v202 ^ 0x27EB) >> 8) ^ 0x629CF974) - 95219733 - 2 * (((v202 ^ 0x27EB) >> 8) ^ 0x629CF974)) ^ (v57 - 1363168388 - ((2 * v57) & 0x5D7F66F8));
  v62 = (BYTE1(v47) ^ 0x9D6306ED) - 95219732 + *&v58[4 * (BYTE1(v47) ^ 0xD)];
  v63 = *&v54[4 * (v53 ^ 0x9E)];
  v64 = *&v54[4 * (HIBYTE(v51) ^ 0xAC)] ^ ((BYTE2(v45) ^ 0x12 ^ -(BYTE2(v45) ^ 0x12) ^ (1497710381 - (BYTE2(v45) ^ 0x59453F3F))) + 1497710381) ^ *&v56[4 * (BYTE2(v45) ^ 0x85)] ^ *&v60[4 * ((v49 ^ 0x17) & 0x95 ^ v49 & 0x6A ^ 0xEB)] ^ (v62 - 1363168388 - ((2 * v62) & 0x5D7F66F8));
  LODWORD(v44) = *&v56[4 * (BYTE2(v51) ^ 0xB8)];
  LODWORD(v44) = v63 ^ BYTE2(v51) ^ (*&v58[4 * (BYTE1(v45) ^ 0x1F)] - BYTE1(v45) - 1749674261) ^ (v44 - 1363168388 - ((2 * v44) & 0x5D7F66F8));
  v65 = *&v60[4 * (v47 ^ 6)];
  v66 = (v44 ^ 0xB609D893 ^ -(v44 ^ 0xB609D893) ^ ((v65 ^ 0x4E3865C5) - (v65 ^ 0xF831BD56 ^ v44))) + (v65 ^ 0x4E3865C5);
  v67 = *&v56[4 * (((v202 ^ 0x814527EB) >> 16) ^ 0x97)] ^ ((v202 ^ 0x814527EB) >> 16);
  v68 = *&v60[4 * (*(v24 - 116) ^ 0x3A)];
  BYTE2(v49) = BYTE2(v66) ^ 0x28;
  v69 = v68 ^ __ROR4__(__ROR4__(*&v54[4 * ((v47 ^ 0xDABC6606) >> 24)] ^ ((BYTE1(v51) ^ 0x9D6306DE) - 95219732 + *&v58[4 * (BYTE1(v51) ^ 0x3E)]) ^ 0xB609D8BC ^ (v67 - 1363168388 - ((2 * v67) & 0x5D7F66F8)), 14) ^ 0xF109B27B, 18) ^ 0x22873271;
  v70 = *&v54[4 * (((v61 ^ 0xEE2FD270) >> (v68 & 0x18) >> (v68 & 0x18 ^ 0x18)) ^ 0x19)];
  v71 = BYTE2(v69) ^ *&v56[4 * (BYTE2(v69) ^ 0x97)];
  v72 = *&v60[4 * (v64 ^ 0x50)] ^ v70 ^ (*&v58[4 * (((v66 ^ 0x7A37) >> 8) ^ 0x6B)] + (((v66 ^ 0x7A37) >> 8) ^ 0x9D63068B) - 95219732) ^ (v71 - 1363168388 - ((2 * v71) & 0x5D7F66F8));
  v73 = *&v56[4 * (((v61 ^ 0xEE2FD270) >> 16) ^ 0x97)] ^ ((v61 ^ 0xEE2FD270) >> 16);
  LODWORD(v38) = *&v60[4 * (v66 ^ 0xF5)] ^ *&v54[4 * (HIBYTE(v64) ^ 0x31)];
  v64 ^= 0x28BAC392u;
  v74 = v38 ^ (*&v58[4 * (BYTE1(v69) ^ 0x6B)] + (BYTE1(v69) ^ 0x9D63068B) - 95219732) ^ (v73 - 1363168388 - ((2 * v73) & 0x5D7F66F8));
  LODWORD(v59) = *&v56[4 * (BYTE2(v64) ^ 0x97)] ^ BYTE2(v64);
  LODWORD(v44) = ((((v61 ^ 0xD270) >> 8) ^ 0x9D63068B) - 95219732 + *&v58[4 * (((v61 ^ 0xD270) >> 8) ^ 0x6B)]) ^ *&v54[4 * (HIBYTE(v66) ^ 0x3F)] ^ *&v60[4 * v69] ^ (v59 - 1363168388 - ((2 * v59) & 0x5D7F66F8));
  v75 = (HIBYTE(v69) ^ 0xEF4CE791) + HIBYTE(v69);
  v76 = BYTE2(v49);
  v77 = *&v56[4 * (v76 ^ 0x97)] ^ *&v54[4 * (HIBYTE(v69) ^ 0x19)] ^ ((BYTE1(v64) ^ 0x9D63068B) - 95219732 + *&v58[4 * (BYTE1(v64) ^ 0x6B)]) ^ *&v60[4 * (v61 ^ 0xB2)] ^ (v75 - ((v69 >> 23) & 0xDC) - 1363168387 + ((2 * ((v75 - ((v69 >> 23) & 0xDC)) & 0x337D ^ (v75 | 0x7FFFFFFE))) ^ 0x5C190003));
  LODWORD(v59) = v77 ^ v76;
  v78 = *&v54[4 * (HIBYTE(v72) ^ 6)];
  HIDWORD(v79) = v78 ^ 0x37C;
  LODWORD(v79) = v78 ^ 0xAEBFB000;
  v80 = ((v59 ^ 0x848DB82D) >> 16);
  v81 = *&v60[4 * (v74 ^ 0xB2)] ^ *&v56[4 * (v80 ^ 0x97)] ^ ((BYTE1(v44) ^ 0x9D63063E) - 95219732 + *&v58[4 * (BYTE1(v44) ^ 0xDE)]) ^ __ROR4__((v79 >> 10) ^ 0x5CD7403B, 22) ^ ((v80 ^ -v80 ^ (1497710381 - (v80 ^ 0x59453F2D))) + 1497710381);
  v82 = *&v56[4 * (((v72 ^ 0x1FE88325) >> 16) ^ 0x97)] ^ ((v72 ^ 0x1FE88325) >> 16);
  LODWORD(v38) = v74 ^ 0xD218A070;
  v83 = *&v60[4 * (v44 ^ 0x8C)] ^ *&v54[4 * (HIBYTE(v74) ^ 0xCB)] ^ (*&v58[4 * (((v59 ^ 0xB82D) >> 8) ^ 0x6B)] + (((v59 ^ 0xB82D) >> 8) ^ 0x9D63068B) - 95219732) ^ (v82 - 1363168388 - ((2 * v82) & 0x5D7F66F8));
  v84 = (WORD1(v44) & 0x10 | 0x59453F2D) ^ WORD1(v44) & 0xEF ^ *&v56[4 * (BYTE2(v44) ^ 0xB9)];
  v85 = (BYTE2(v38) - 1363168388 - ((v38 >> 15) & 0xF8)) ^ *&v54[4 * (BYTE3(v44) ^ 0xFB)] ^ *&v56[4 * (BYTE2(v38) ^ 0x97)] ^ ((((v72 ^ 0x8325) >> 8) ^ 0x9D63068B) - 95219732 + *&v58[4 * (((v72 ^ 0x8325) >> 8) ^ 0x6B)]) ^ *&v60[4 * (v59 ^ 0xEF)] ^ 0x7DFE9B81;
  v86 = *&v54[4 * (HIBYTE(v77) ^ 0x9D)] ^ *&v60[4 * (v72 ^ 0xE7)] ^ ((BYTE1(v38) ^ 0x9D63068B) - 95219732 + *&v58[4 * (BYTE1(v38) ^ 0x6B)]) ^ 0x84625B8C ^ (v84 - 1363168388 - ((2 * v84) & 0x5D7F66F8));
  v87 = BYTE2(v86) ^ *&v56[4 * (BYTE2(v86) ^ 0x97)];
  LODWORD(v59) = v87 - 1363168388 - ((2 * v87) & 0x5D7F66F8);
  v88 = *&v58[4 * (BYTE1(v86) ^ 0x6B)] + (BYTE1(v86) ^ 0x9D63068B);
  v89 = *&v54[4 * (HIBYTE(v83) ^ 0x99)] ^ (((v81 ^ 0x3087A04E) >> 16) + 1497710381 - (((v81 ^ 0x3087A04E) >> 15) & 0x5A)) ^ *&v60[4 * (v85 ^ 0xC2)] ^ *&v56[4 * (((v81 ^ 0x3087A04E) >> 16) ^ 0x97)] ^ (v88 - ((2 * v88 + 1957044184) & 0x5D7F66F8) - 1458388120);
  v90 = HIBYTE(v85) - 280172655 - ((v85 >> 23) & 0x122);
  v91 = ((v83 ^ 0x8038ADEA) >> 16) ^ HIBYTE(v85) ^ 0x59453F2D ^ (v90 - 1363168388 - ((2 * v90) & 0x5C1966F8)) ^ *&v54[4 * (HIBYTE(v85) ^ 0x19)] ^ *&v56[4 * (((v83 ^ 0x8038ADEA) >> 16) ^ 0x97)] ^ ((((v81 ^ 0xA04E) >> 8) ^ 0x9D63068B) - 95219732 + *&v58[4 * (((v81 ^ 0xA04E) >> 8) ^ 0x6B)]);
  LODWORD(v44) = (v91 ^ -v91 ^ (*&v60[4 * v86] - (v91 ^ *&v60[4 * v86]))) + *&v60[4 * v86];
  v92 = *&v56[4 * (BYTE2(v85) ^ 0x97)] ^ BYTE2(v85);
  v93 = *&v54[4 * HIBYTE(v86)];
  v94 = *&v54[4 * (HIBYTE(v81) ^ 0x29)] ^ ((BYTE1(v85) ^ 0x9D63068B) - 95219732 + *&v58[4 * (BYTE1(v85) ^ 0x6B)]) ^ *&v60[4 * (v83 ^ 0x28)] ^ 0x38F459F5 ^ v59;
  v95 = ((((v83 ^ 0xADEA) >> 8) ^ 0x9D63068B) - 95219732 + *&v58[4 * (((v83 ^ 0xADEA) >> 8) ^ 0x6B)]) ^ v93 ^ *&v60[4 * (v81 ^ 0x8C)] ^ (v92 - 1363168388 - ((2 * v92) & 0x5D7F66F8));
  v96 = v44 ^ 0x60760AA;
  v97 = ((v95 ^ 0xF4117173) >> 16) ^ *&v56[4 * (((v95 ^ 0xF4117173) >> 16) ^ 0x97)];
  LODWORD(v79) = (v94 >> 15) & 0x1FE ^ __ROR4__(*&v56[4 * (BYTE2(v94) ^ 0x97)], 31) ^ 0x707166C7;
  HIDWORD(v79) = v79;
  v98 = *&v60[4 * (v44 ^ 0xAA)] ^ *&v54[4 * (HIBYTE(v89) ^ 0xB9)] ^ ((((v95 ^ 0x7173) >> 8) ^ 0x9D63068B) - 95219732 + *&v58[4 * (((v95 ^ 0x7173) >> 8) ^ 0x6B)]) ^ ((v79 >> 1) - 1363168388 - ((2 * (v79 >> 1)) & 0x5D7F66F8));
  v99 = *&v56[4 * (BYTE2(v89) ^ 0xE0)] ^ BYTE2(v89);
  v100 = v99 - 1363168388 - ((2 * v99) & 0x5D7F66F8);
  v101 = (BYTE1(v94) ^ 0x9D63068B) - 95219732 + *&v58[4 * (BYTE1(v94) ^ 0x6B)];
  v102 = (BYTE1(v89) ^ 0x9D6306E5) - 95219732 + *&v58[4 * (BYTE1(v89) ^ 5)];
  v103 = *&v54[4 * (((v95 ^ 0xF4117173) >> (v203 & 0x18 ^ 0x10) >> (v203 & 0x18 ^ 8)) ^ 0x19)] ^ BYTE2(v96) ^ *&v56[4 * (BYTE2(v96) ^ 0x97)] ^ (v102 - 1363168388 - ((2 * v102) & 0x5D7F66F8));
  v104 = *&v54[4 * HIBYTE(v94)] ^ *&v60[4 * (v89 ^ 0xAA)];
  v105 = *&v60[4 * v94];
  v106 = v105 ^ 0xF831BD79;
  v107 = v105 ^ 0x4E3865C5;
  v108 = v107 - (v106 ^ v103);
  v103 ^= 0xB609D8BC;
  v109 = v108 ^ v103;
  v110 = v104 ^ (v97 - 1363168388 - ((2 * v97) & 0x5D7F66F8)) ^ 0xD1B45B5B ^ (*&v58[4 * (BYTE1(v96) ^ 0x6B)] + (BYTE1(v96) ^ 0x629CF974) - 95219733 - 2 * (BYTE1(v96) ^ 0x629CF974));
  v111 = -v103;
  v112 = (v109 & 0x800000) - v103;
  v204 = *(v24 - 120) < 0xB2D5C3B2;
  v113 = (v109 & 0x800000 & v111) == 0;
  v114 = v111 - (v109 & 0x800000);
  v115 = *&v54[4 * (BYTE3(v44) ^ 0x1F)];
  v116 = *&v60[4 * (v95 ^ 0xB1)];
  if (!v113)
  {
    v112 = v114;
  }

  v117 = v115 ^ v101 ^ v116 ^ 0x1DF4679B ^ v100;
  v118 = ((v112 ^ v109 & 0xFF7FFFFF) + v107) ^ 0xE8E6FAA3;
  v119 = HIBYTE(v110) ^ 0xEF4CE791;
  v120 = v119 & 0x4A4400EB ^ HIBYTE(v110) & 0xEB;
  v121 = v120 | v119 & 0xA508E714 ^ HIBYTE(v110) & 0x14;
  v122 = *&v56[4 * (BYTE2(v118) ^ 0x97)] ^ *&v54[4 * (HIBYTE(v110) ^ 0x19)] ^ *&v60[4 * (v98 ^ 0x6C)] ^ ((BYTE1(v117) ^ 0x9D63068B) - 95219732 + *&v58[4 * (BYTE1(v117) ^ 0x6B)]) ^ (v121 - 1363168388 - 2 * (v121 & 0x2E0CA37D ^ v120 & 1));
  v123 = *&v54[4 * (HIBYTE(v98) ^ 0x34)];
  HIDWORD(v124) = v123 ^ 0x2EBFB37C;
  LODWORD(v124) = v123 ^ 0x80000000;
  v125 = BYTE2(v110);
  BYTE1(v119) = BYTE1(v98) ^ 0x35;
  v126 = *&v60[4 * v117] ^ *&v56[4 * (BYTE2(v110) ^ 0x97)] ^ __ROR4__((v124 >> 30) ^ 0x9F9C5E62, 2) ^ (*&v58[4 * (BYTE1(v118) ^ 0x6B)] + (BYTE1(v118) ^ 0x9D63068B) - 95219732);
  v127 = *&v56[4 * (((v98 ^ 0x2D3635AE) >> 16) ^ 0x97)] ^ ((v98 ^ 0x2D3635AE) >> 16);
  v128 = ((BYTE1(v110) ^ 0x9D63068B) - 95219732 + *&v58[4 * (BYTE1(v110) ^ 0x6B)]) ^ *&v54[4 * HIBYTE(v117)] ^ *&v60[4 * v118] ^ (v127 - 1363168387 + ~((2 * v127) & 0x5D7F66F8));
  v129 = *&v56[4 * (BYTE2(v117) ^ 0x97)] ^ BYTE2(v117);
  v130 = ((BYTE1(v119) ^ 0x9D63068B) - 95219732 + *&v58[4 * (BYTE1(v119) ^ 0x6B)]) ^ *&v60[4 * v110] ^ (v129 - 1363168388 - ((2 * v129) & 0x5D7F66F8)) ^ *&v54[4 * HIBYTE(v118)];
  v131 = ((v130 ^ 0x40EBAE4B) >> 16) ^ *&v56[4 * (((v130 ^ 0x40EBAE4B) >> 16) ^ 0x97)];
  LOWORD(v117) = BYTE2(v118) ^ v122;
  v132 = v125 ^ 0xAE9544B1 ^ v126;
  v133 = *&v60[4 * v132] ^ *&v54[4 * (HIBYTE(v122) ^ 0x81)] ^ ((((v128 ^ 0x6F5C) >> 8) ^ 0x9D63068B) - 95219732 + *&v58[4 * (((v128 ^ 0x6F5C) >> 8) ^ 0x6B)]) ^ (v131 - 1363168388 - ((2 * v131) & 0x5D7F66F8));
  v134 = ((BYTE2(v118) ^ v122 ^ 0x9823426F) >> 16);
  v135 = *&v56[4 * (v134 ^ 0x97)] ^ v134;
  v136 = *&v60[4 * (v128 ^ 0x9E)] ^ *&v54[4 * (HIBYTE(v126) ^ 0xB7)] ^ ((((v130 ^ 0xAE4B) >> 8) ^ 0x9D63068B) - 95219732 + *&v58[4 * (((v130 ^ 0xAE4B) >> 8) ^ 0x6B)]) ^ (v135 - 1363168388 - ((2 * v135) & 0x5D7F66F8));
  v137 = *&v56[4 * (BYTE2(v132) ^ 0x97)] ^ BYTE2(v132);
  v138 = *&v56[4 * (((v128 ^ 0xDC326F5C) >> 16) ^ 0x97)] ^ ((v128 ^ 0xDC326F5C) >> 16);
  v139 = *&v54[4 * (HIBYTE(v128) ^ 0xC5)];
  v140 = ((BYTE1(v132) ^ 0x9D63068B) - 95219732 + *&v58[4 * (BYTE1(v132) ^ 0x6B)]) ^ *&v54[4 * (HIBYTE(v130) ^ 0x59)] ^ *&v60[4 * (v117 ^ 0xAD)] ^ (v138 - 1363168388 - ((2 * v138) & 0x5D7F66F8));
  v141 = v139 ^ *&v60[4 * (v130 ^ 0x4B)] ^ ((((v117 ^ 0x426F) >> 8) ^ 0x9D63068B) - 95219732 + *&v58[4 * (((v117 ^ 0x426F) >> 8) ^ 0x6B)]) ^ 0xD899B078 ^ (v137 - 1363168388 - ((2 * v137) & 0x5D7F66F8));
  v142 = v141 - ((2 * v141) & 0x802204E0) + 1074856560;
  v143 = ((v140 ^ 0xD1114F6A) >> 16);
  v144 = *&v56[4 * (v143 ^ 0x97)];
  BYTE1(v117) = BYTE1(v136) ^ 0x78;
  v145 = *&v60[4 * (v136 ^ 0x68)] ^ *&v54[4 * (HIBYTE(v133) ^ 0x30)] ^ (v144 - 1363168388 - ((2 * v144) & 0x5D7F66F8)) ^ (*&v58[4 * (BYTE1(v142) ^ 0x6B)] + (BYTE1(v142) ^ 0x9D63068B) - 95219732);
  v146 = ((v133 ^ 0x2987F9F6) >> (v205 & 0x10 ^ 0x10) >> (v205 & 0x10));
  v147 = *&v56[4 * (v146 ^ 0x97)] ^ v146;
  v148 = *&v60[4 * ((v141 - ((2 * v141) & 0xE0) + 112) ^ 0xC2)] ^ *&v54[4 * (HIBYTE(v136) ^ 0x2A)] ^ ((((v140 ^ 0x4F6A) >> 8) ^ 0x9D63068B) - 95219732 + *&v58[4 * (((v140 ^ 0x4F6A) >> 8) ^ 0x6B)]) ^ (v147 - 1363168388 - ((2 * v147) & 0x5D7F66F8));
  v149 = *&v56[4 * (((v136 ^ 0x33D57868) >> 16) ^ 0x97)] ^ ((v136 ^ 0x33D57868) >> 16);
  v150 = v149 - 1363168388 - ((2 * v149) & 0x5D7F66F8);
  v151 = *&v60[4 * (v140 ^ 0xA8)] ^ ((((v133 ^ 0xF9F6) >> 8) ^ 0x629CF974) - 95219733 - 2 * (((v133 ^ 0xF9F6) >> 8) ^ 0x629CF974) + *&v58[4 * (((v133 ^ 0xF9F6) >> 8) ^ 0x6B)]) ^ *&v54[4 * (HIBYTE(v142) ^ 0x19)];
  v152 = *&v56[4 * (BYTE2(v142) ^ 0x97)] ^ BYTE2(v142);
  v153 = v133 ^ 0x34;
  v154 = v143 ^ 0xDFCE44A5 ^ v145;
  v155 = ((BYTE1(v117) ^ 0x9D63068B) - 95219732 + *&v58[4 * (BYTE1(v117) ^ 0x6B)]) ^ *&v54[4 * (HIBYTE(v140) ^ 0xC8)] ^ *&v60[4 * v153] ^ (v152 - 1363168388 - ((2 * v152) & 0x5D7F66F8));
  v156 = v151 ^ v150 ^ 0xE695441D;
  v157 = ((v155 ^ 0x451731F) >> 16) ^ *&v56[4 * (((v155 ^ 0x451731F) >> 16) ^ 0x97)];
  v158 = *&v60[4 * (v148 ^ 0x21)];
  v159 = v158 & 0xFFFFFDFF ^ *&v54[4 * (HIBYTE(v145) ^ 0xC6)] ^ (*&v58[4 * (BYTE1(v156) ^ 0x6B)] + (BYTE1(v156) ^ 0x9D63068B) - 95219732) ^ (v158 & 0x200 | 0x4E3865C5) ^ (v157 - 1363168388 - ((2 * v157) & 0x5D7F66F8));
  v160 = *&v56[4 * (BYTE2(v154) ^ 0x97)];
  v161 = (v160 ^ -v160 ^ ((BYTE2(v154) ^ 0x59453F2D) - (BYTE2(v154) ^ 0x59453F2D ^ v160))) + (BYTE2(v154) ^ 0x59453F2D);
  HIDWORD(v124) = (v148 ^ 0x579A0FE3) >> 16;
  LODWORD(v124) = HIDWORD(v124);
  v206 = *&v60[4 * ((v151 ^ v150) ^ 0xDF)] ^ *&v54[4 * (HIBYTE(v148) ^ 0x4E)] ^ ((((v155 ^ 0x731F) >> 8) ^ 0x9D63068B) - 95219732 + *&v58[4 * (((v155 ^ 0x731F) >> 8) ^ 0x6B)]) ^ (v161 - 1363168388 - ((2 * v161) & 0x5D7F66F8));
  v162 = *&v56[4 * (((v148 ^ 0x579A0FE3) >> 16) ^ 0x97)] ^ __ROR4__((v124 >> 7) & 0xFE000001 ^ 0x242482FB, 25);
  v163 = ((BYTE1(v154) ^ 0x9D63068B) - 95219732 + *&v58[4 * (BYTE1(v154) ^ 0x6B)]) ^ *&v54[4 * ((v151 ^ ~v150) >> 24)] ^ *&v60[4 * (v155 ^ 0x1F)] ^ (v162 - 1363168388 - ((2 * v162) & 0x5D7F66F8));
  v164 = *&v56[4 * (BYTE2(v156) ^ 0x97)] ^ BYTE2(v156);
  v165 = ((((v148 ^ 0xFE3) >> 8) ^ 0x9D63068B) - 95219732 + *&v58[4 * (((v148 ^ 0xFE3) >> 8) ^ 0x6B)]) ^ *&v60[4 * (v143 ^ 0xA5 ^ v145 ^ 0xC2)] ^ *&v54[4 * (HIBYTE(v155) ^ 0x1D)] ^ (v164 - 1363168388 - ((2 * v164) & 0x5D7F66F8));
  v166 = *(&off_28512D4A0 + v207 - 722) - 12;
  v167 = *&v166[4 * (HIBYTE(v159) ^ 0xBC)] ^ 0x3350964F;
  v168 = *(&off_28512D4A0 + v207 - 689) - 4;
  HIDWORD(v124) = *&v168[4 * ((v165 ^ 0xD5600A72) >> 16)] ^ 0xA111ABF;
  LODWORD(v124) = *&v168[4 * ((v165 ^ 0xD5600A72) >> 16)];
  v169 = v124 >> 29;
  v170 = *(&off_28512D4A0 + (a24 ^ 0xA2D)) - 4;
  v171 = *(&off_28512D4A0 + v207 - 868);
  v172 = (((-469065704 * v169) ^ (16 * v167 * v167)) - 817345619 - ((2 * ((-469065704 * v169) ^ (16 * v167 * v167))) & 0x9E909750)) ^ *&v170[4 * (BYTE1(v163) ^ 0x19)];
  v173 = (v172 + 656507235 - ((2 * v172) & 0x4E4302C6)) ^ *(v171 + 4 * (v206 ^ 0xD9u));
  HIDWORD(v124) = *&v168[4 * (BYTE2(v159) ^ 0xF7)] ^ 0xA111ABF;
  LODWORD(v124) = *&v168[4 * (BYTE2(v159) ^ 0xF7)];
  v174 = v124 >> 29;
  v175 = *&v166[4 * ((v206 ^ 0xEDB549D9) >> 24)] ^ 0x3350964F;
  v176 = (((-469065704 * v174) ^ (16 * v175 * v175)) - 817345619 - ((2 * ((-469065704 * v174) ^ (16 * v175 * v175))) & 0x9E909750)) ^ *&v170[4 * (((v165 ^ 0xA72) >> 8) ^ 0x12)];
  v177 = (v176 + 656507235 - ((2 * v176) & 0x4E4302C6)) ^ *(v171 + 4 * (v163 ^ 0xDEu));
  HIDWORD(v124) = *&v168[4 * ((v206 ^ 0xEDB549D9) >> 16)] ^ 0xA111ABF;
  LODWORD(v124) = *&v168[4 * ((v206 ^ 0xEDB549D9) >> 16)];
  v178 = *&v166[4 * (HIBYTE(v163) ^ 0x9F)] ^ 0x3350964F;
  v179 = (v124 >> 29) ^ *&v170[4 * (BYTE1(v159) ^ 0x15)] ^ (-469065704 * (v124 >> 29)) ^ (16 * v178 * v178 - 817345619 - ((32 * v178 * v178) & 0x9E909740));
  v180 = (v179 + 656507235 - ((2 * v179) & 0x4E4302C6)) ^ *(v171 + 4 * (v165 ^ 0x72u));
  v181 = *&v166[4 * (HIBYTE(v165) ^ 0xDE)] ^ 0x3350964F;
  v182 = *&v168[4 * (BYTE2(v163) ^ 0xEA)];
  HIDWORD(v124) = v182 ^ 0xA111ABF;
  LODWORD(v124) = v182;
  v183 = v124 >> 29;
  v184 = (-469065704 * v183) ^ (16 * v181 * v181);
  v185 = v167 ^ v208 ^ v169 ^ (v173 - ((2 * v173) & 0xE35DF83C) - 240190434);
  v186 = (2 * v184) & 0x9E909750;
  v187 = v184 - 817345619;
  v188 = *(v24 - 124);
  v189 = (v187 - v186) ^ *&v170[4 * (BYTE1(v206) ^ 0x5B)];
  v190 = (v189 + 656507235 - ((2 * v189) & 0x4E4302C6)) ^ *(v171 + 4 * (v159 ^ 0x48u));
  v191 = v181 ^ a22 ^ 0x954CE709 ^ v183 ^ (v190 - ((2 * v190) & 0xF096A3DA) + 2018202093);
  v192 = v175 ^ *(v24 - 132) ^ v174;
  v193 = v178 ^ *(v24 - 128) ^ (v180 - ((2 * v180) & 0xDA465B7A) + 1831022013);
  v194 = *(&off_28512D4A0 + v207 - 622) - 4;
  v28[3] = (v194[v185 ^ 0xC3] + 92) ^ 0x7B;
  v195 = *(&off_28512D4A0 + v207 - 796);
  v196 = v192 ^ (v177 - ((2 * v177) & 0x49CD7EDAu) - 1528381587);
  v28[9] = *(v195 + (BYTE2(v193) ^ 0x53)) ^ 0xDF;
  v197 = *(&off_28512D4A0 + (a24 ^ 0xA24)) - 12;
  v28[6] = -73 - v197[BYTE1(v196) ^ 0x4FLL];
  v198 = *(&off_28512D4A0 + (a24 ^ 0xA68)) - 4;
  v28[12] = (v198[HIBYTE(v191) ^ 0xDDLL] - 78) ^ 0xDE;
  v28[11] = (v194[v193 ^ 0x23] + 92) ^ 0x1F;
  v28[1] = *(v195 + (BYTE2(v185) ^ 0xFCLL)) ^ 0xAE;
  v28[2] = (v197[BYTE1(v185) ^ 4] + 72) ^ 0xA1;
  v28[13] = *(v195 + (BYTE2(v191) ^ 0xDFLL)) ^ 0xEC;
  v28[7] = (v194[v196 ^ 0xA1] + 92) ^ 0xA3;
  v28[10] = (v197[BYTE1(v193) ^ 0xEDLL] + 72) ^ 0x19;
  v28[14] = (v197[BYTE1(v191) ^ 0xF7] + 72) ^ 0x72;
  v199 = *(v195 + (BYTE2(v196) ^ 0x7FLL)) ^ 0xD6u;
  v28[5] = *(v195 + (BYTE2(v196) ^ 0x7FLL)) ^ 0xD6;
  *v28 = (v198[HIBYTE(v185) ^ 0x3CLL] - 78) ^ 0x39;
  v28[15] = (v194[v191 ^ 1] + 92) ^ 0x37;
  v28[4] = (v198[BYTE3(v196) ^ 0xEALL] - 78) ^ 0xD7;
  v28[8] = (v198[HIBYTE(v193) ^ 0x19] - 78) ^ 0xCF;
  v200 = (v188 - 1294613566) < *(v24 - 120);
  if (v204 != (v188 - 1294613566) < 0xB2D5C3B2)
  {
    v200 = v204;
  }

  return (*(a17 + 8 * ((1767 * v200) ^ v207)))(v199, v198, v196, &off_28512D4A0, v195, v188, v197, 234, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_23E92B418(unint64_t a1, char a2, int a3)
{
  v9 = v3 + 2;
  v10 = v6 - 2;
  *(v10 + 2536) = ((v4 + v9) ^ a2) * (v4 + v9 + 17);
  *(v10 + ((v7 + 2054) | a1)) = ((v4 + v9) ^ 0xBB) * (v4 + v9 + 18);
  return (*(v8 + 8 * (((v5 == v9) * a3) ^ v7)))();
}

uint64_t sub_23E92B424(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = v7 + 2;
  v12 = v9 + 2;
  v13 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a1)), a2);
  v12[-1] = vaddq_s8(vsubq_s8(v11[-1], vandq_s8(vaddq_s8(v11[-1], v11[-1]), a1)), a2);
  *v12 = v13;
  return (*(v10 + 8 * (((v8 == 32) * (3 * (v6 ^ 0x256175F4) - 3519)) ^ (a6 + v6 - 21))))();
}

uint64_t sub_23E92B434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v18 = v15 + 311104708 < a15 - 1377816712;
  if ((a15 - 1377816712) < 0x128B14C4 != v15 > 0xED74EB3B)
  {
    v18 = (a15 - 1377816712) < 0x128B14C4;
  }

  return (*(v16 + 8 * ((v18 * (((v17 - 2478) | 0x40) - 66)) ^ v17)))();
}

uint64_t sub_23E92B49C@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(a1 + v2);
  v5 = vmovl_u8(a2).u64[0];
  *(a1 - 4 + v2) = vuzp1_s8(v5, v5).u32[0];
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFFC) == 4) * ((v3 ^ 0x9A5) + 1514)) ^ v3 ^ 0xA18)))((v2 & 0xFFFFFFFC) - 8);
}

uint64_t sub_23E92B538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = v9 - 1;
  *(a2 + a9) = (&a9 ^ 0xBA) * (&a9 + 17);
  v12 = *(v11 + 8 * (((4 * (v9 == 1)) | (16 * (v9 == 1))) ^ (v10 - 1872)));
  return v12(v12);
}

void sub_23E92B980(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4) + 956911519 * (a1 ^ 0x7F560CBE);
  v2 = 1358806181 * ((2 * (&v5 & 0x600D8350) - &v5 + 535985320) ^ 0xA291FA45);
  v6 = v4;
  v7 = 791581032 - v2;
  v5 = v1 - v2 + 915945575;
  v3 = *(&off_28512D4A0 + v1 + 131);
  (*(v3 + 8 * (v1 + 4061)))(&v5);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_23E92BBB0(uint64_t a1, unint64_t a2)
{
  v9 = (((v2 - 389704202) & 0x173A5DF9) - 297) & (v6 + 15);
  v13 = (1 - v7 + v3 - v6 + v9) > 0xF && (1 - v7 + v4 - v6 + v9) > 0xF && a2 >= (((v2 - 3236) | 0x80Bu) ^ 0x8BFuLL) && (-v6 - v7 + v5 + v9 + 3) > 0xF;
  return (*(v8 + 8 * ((23 * v13) | v2)))();
}

uint64_t sub_23E92BD48(uint64_t a1, uint64_t a2, int a3)
{
  v12.val[0].i64[0] = (v7 - a1 - 1) & 0xF;
  v12.val[0].i64[1] = (v7 - a1 + 14) & 0xF;
  v12.val[1].i64[0] = (v7 - a1 + 13) & 0xF;
  v12.val[1].i64[1] = (v7 - a1 + 12) & 0xF;
  v12.val[2].i64[0] = (v7 - a1 + 11) & 0xF;
  v12.val[2].i64[1] = (v7 - a1 + 10) & 0xF;
  v12.val[3].i64[0] = (v7 - a1 + (a3 ^ 0xF9)) & 0xF;
  v12.val[3].i64[1] = (v7 - a1) & 0xF ^ 8;
  *(v10 + -8 - a1 + v7) = veor_s8(veor_s8(veor_s8(*(v5 + v12.val[0].i64[0] - 7), *(v3 + -8 - a1 + v7)), veor_s8(*(v12.val[0].i64[0] + v4 - 6), *(v12.val[0].i64[0] + v6 - 4))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v12, xmmword_23EAA16E0), 0x7575757575757575)));
  return (*(v9 + 8 * ((261 * (8 - (v8 & 0x18) == -a1)) ^ a3)))(xmmword_23EAA16E0);
}

uint64_t sub_23E92BE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, _DWORD *a23, void *a24)
{
  v30 = 43 * ((v26 + 207) ^ 0x665);
  *v27 = 0;
  v31 = (v24 >> ((43 * ((v26 - 49) ^ 0x65)) ^ 0xD6)) ^ v24;
  v32 = (((v31 << 7) & 0x9D2C5680 ^ v31) << 15) & 0xEFC60000 ^ (v31 << 7) & 0x9D2C5680 ^ v31 ^ (((((v31 << 7) & 0x9D2C5680 ^ v31) << 15) & 0xEFC60000 ^ (v31 << 7) & 0x9D2C5680 ^ v31) >> 18);
  v33 = (v25 + (a22 - 1));
  v34 = 1153278077 * ((*(*a24 + (*a23 & ((v30 + 454) ^ (v30 + 661) ^ 0x7E0769C1u))) ^ v33) & 0x7FFFFFFF);
  v35 = 1153278077 * (v34 ^ HIWORD(v34));
  LODWORD(v35) = *(*(v29 + 8 * (v30 - 582)) + (v35 >> 24) - 6) ^ *(*(v29 + 8 * (v30 - 755)) + (v35 >> 24) - 8) ^ *(*(v29 + 8 * (v30 - 501)) + (v35 >> 24) - 8) ^ v35 ^ (65 * (v35 >> 24));
  *v33 = v35 ^ v32;
  LODWORD(v35) = a22 == (v35 != v32);
  return (*(v28 + 8 * (((4 * v35) | (32 * v35)) ^ v30)))(1662);
}

uint64_t sub_23E92BE7C@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v2 + a1 + 16);
  v9 = v3 + a1;
  *(v9 + 24) = *(v2 + a1);
  *(v9 + 40) = v8;
  return (*(v5 + 8 * (((a1 != 32) * ((v1 + v7) & v6 ^ v4)) ^ v1)))();
}

uint64_t sub_23E92BF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  v48 = (v45 + 1073816192) | 0x28E29864;
  *v47 = (((a26 - v45) | (v45 - a26)) >> (v46 + ((v45 + 0x80) | 0x64) - 80)) | 0x80000000;
  (*(a2 + 8 * (v45 + 3999)))(a38);
  v49 = (v48 - 472176401) & 0xB3411EEF;
  v50 = vld1q_dup_f32(v47);
  v51.i64[0] = 0x8000000080000000;
  v51.i64[1] = 0x8000000080000000;
  v52.i64[0] = 0x100000001;
  v52.i64[1] = 0x100000001;
  v53.i64[0] = *(v47 + 4);
  v53.i32[2] = *(v47 + 12);
  v54 = vextq_s8(v50, v53, 0xCuLL);
  v55 = v53;
  v55.i32[3] = *(v47 + 16);
  v56 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v55, vnegq_f32(v52)), vandq_s8(v54, v51)), 1uLL), *(v47 + 1588));
  v54.i32[0] = *(&a45 + (*(v47 + 4) & ((v49 + 1541506361) & 0xA41E7EBF ^ 0x6BD)));
  v54.i32[1] = *(&a45 + (*(v47 + 8) & 1));
  v54.i32[2] = *(&a45 + (*(v47 + 12) & 1));
  v54.i32[3] = *(&a45 + (v55.i8[12] & 1));
  *v47 = veorq_s8(vaddq_s32(vsubq_s32(v56, vandq_s8(vaddq_s32(v56, v56), vdupq_n_s32(0x9138D5E2))), vdupq_n_s32(0x489C6AF1u)), v54);
  return (*(a40 + 8 * v49))();
}

uint64_t sub_23E92C0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + v3 + 4) = *(*(a2 + 8) + v10);
  v11 = *(a2 + 4) + v7;
  v12 = v4 + v10 + 1 < v11;
  if (v10 + ((v5 + 1155) ^ v6) > v8 != v11 < v4)
  {
    v12 = v11 < v4;
  }

  return (*(a3 + 8 * ((v12 * v9) ^ v5)))();
}

uint64_t sub_23E92C184@<X0>(int a1@<W8>)
{
  v7 = v5 + v4;
  v8 = (v4 - 1) & 0xF;
  v9 = v8 - v4 + 1;
  v10 = v3 + v9;
  v11 = ((a1 - 633) ^ (a1 + 665535041) & 0xD854BFF3 ^ 0x5B7) + v8;
  v12 = v3 + v11;
  v13 = v2 + v9;
  v14 = v2 + v11;
  v15 = v8 + v1 + 3;
  v17 = v10 < v5 + v4 && v12 > v5;
  v19 = v13 < v7 && v14 > v5 || v17;
  if (v15 <= v5 || v15 - v4 >= v7)
  {
    v21 = v19;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 8 * ((152 * (v21 ^ 1)) ^ a1)))();
}

uint64_t sub_23E92C228()
{
  v4 = *(v2 + 2);
  *v1 = 3;
  return (*(v3 + 8 * (((v4 == 70) * (((v0 - 283) | 0x101) + 2662)) ^ v0)))();
}

uint64_t sub_23E92C2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  (*(a4 + 32944))(a23 + a25, 0x100004077774924);
  v42 = (*(a40 + 32736))();
  *v41 = v42;
  v43 = 1812433253 * (v42 ^ (v42 >> 30)) + 1;
  v41[1] = v43;
  return (*(a40 + 28752))(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v40, a27, a28, a29, a30);
}

uint64_t sub_23E92C3BC@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + a1;
  v6.i64[0] = 0xD2D2D2D2D2D2D2D2;
  v6.i64[1] = 0xD2D2D2D2D2D2D2D2;
  v7 = veorq_s8(*(v1 + a1 + 16), v6);
  *(v5 + 24) = veorq_s8(*(v1 + a1), v6);
  *(v5 + 40) = v7;
  return (*(v4 + 8 * ((2025 * (a1 + 32 == ((v3 + 1953) | 4u) - 2596)) ^ v3)))();
}

uint64_t sub_23E92C6A4@<X0>(uint64_t a1@<X8>)
{
  v6 = (v1 - 1943) | 0x850;
  v7 = (((v1 + 105) | 0x50) - 88) | 0x10;
  *(v5 - 112) = a1;
  *(v5 - 104) = v6 - 118 + 1875091903 * ((((v5 - 120) | 0x144B7E19) + (~(v5 - 120) | 0xEBB481E6)) ^ 0x2E45A8C4);
  (*(v3 + 8 * (v6 + 2038)))(v5 - 120);
  v8 = *(v5 - 120);
  *(v5 - 112) = v2;
  *(v5 - 104) = v6 - 118 + 1875091903 * (((((v5 - 120) | 0x597E87EC) ^ 0xFFFFFFFE) - (~(v5 - 120) | 0xA6817813)) ^ 0x9C8FAECF);
  (*(v3 + 8 * (v6 + 2038)))(v5 - 120);
  v9 = (-255661508 * (*(v5 - 120) + v8) + *(v5 - 120) * v8 + 1497480720) * v4;
  v11[1] = (v9 ^ 0x7E3DA3E4) - 169345028 + ((v9 << (v7 - 49)) & 0xFC7B47C8);
  *(v5 - 104) = v6 + 33731311 * ((-957264536 - ((v5 - 120) | 0xC6F14D68) + ((v5 - 120) | 0x390EB297)) ^ 0x38B80FA8) + 417;
  *(v5 - 120) = v2;
  *(v5 - 112) = v11;
  return (*(v3 + 8 * (v6 | 0x785)))(v5 - 120);
}

uint64_t sub_23E92C6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, unint64_t a32, int a33)
{
  v37 = v33 - 3164;
  *(v36 - 136) = -a32;
  *(v36 - 152) = (v37 ^ 0x2706F3CB) + a32;
  v38 = v36 - 152;
  *(v38 + 8) = a32 | 3;
  *(v36 - 112) = (v37 ^ 0x2706F354) - a32;
  *(v38 + 24) = (v35 + 1) ^ a32;
  *(v36 - 132) = (v37 | 0x2706F356) + a32;
  *(v36 - 116) = a33 ^ a32;
  v39 = (*(v34 + 8 * a31))(v36 - 152);
  return (*(v34 + 8 * *(v36 - 120)))(v39);
}

uint64_t sub_23E92C77C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v13 = vdupq_n_s32(0x22C473FEu);
  v14 = (&a10 + 4 * a1);
  *v14 = v13;
  v14[1] = v13;
  return (*(v12 + 8 * ((3068 * (((v11 - 668625335) & 0x27DA6BDF ^ 0xBCFLL) == (v10 & 0xFFFFFFFFFFFFFFF8))) ^ (v11 - 2059))))();
}

uint64_t sub_23E92C834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = (v21 + 555328714) & 0xDEE65BAF;
  v25 = v23 - 144;
  *(v23 - 144) = &STACK[0xB88];
  *(v23 - 136) = v21 + 1358806181 * (((v23 - 144) & 0x34BC2A33 | ~((v23 - 144) | 0x34BC2A33)) ^ 0x76205321) - 1631617479;
  (*(v22 + 8 * (v21 + 1769)))(v23 - 144);
  v26 = v21 - 1104;
  v27 = 2048652491 * ((2 * (v25 & 0x1714B3F8) - v25 + 1760250885) ^ 0x15EE0A33);
  v28 = *(&off_28512D4A0 + (v21 ^ 0x8D7));
  *(v23 - 136) = &STACK[0xB88];
  *(v23 - 120) = v28 - 12;
  *(v23 - 144) = 339409668 - v27;
  *(v23 - 128) = v21 - 1104 - v27;
  v29 = v21 ^ 0x682;
  (*(v22 + 8 * v29))(v23 - 144);
  v30 = 2048652491 * (((v25 | 0x805F52B6) - v25 + (v25 & 0x7FA0AD48)) ^ 0xFD5A1480);
  *(v23 - 136) = &STACK[0xB88];
  *(v23 - 120) = a21;
  *(v23 - 128) = v26 - v30;
  *(v23 - 144) = 339409653 - v30;
  v31 = (*(v22 + 8 * v29))(v23 - 144);
  LODWORD(STACK[0xBE0]) = STACK[0xB88];
  LODWORD(STACK[0xBE4]) = STACK[0xB8C];
  LODWORD(STACK[0xBE8]) = STACK[0xB90];
  STACK[0xBEC] = STACK[0xB94];
  LODWORD(STACK[0xBF4]) = STACK[0xB9C];
  v32 = *&STACK[0xBB0];
  *&STACK[0xBF8] = *&STACK[0xBA0];
  *&STACK[0xC08] = v32;
  return (*(v22 + 8 * ((((v24 - 14) | 8) - 116) ^ 0x933 | (v24 - 14) | 8)))(v31);
}

uint64_t sub_23E92CB3C(int a1)
{
  v7 = v4 - 1;
  *(v5 + v7) ^= *(v3 + (v7 & 0xF)) ^ *(v1 + (v7 & 0xF)) ^ (87 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 3);
  return (*(v6 + 8 * ((1785 * (v7 == 0)) ^ (a1 - 3474))))();
}

uint64_t sub_23E92CC10(uint64_t result)
{
  v1 = *(result + 8);
  v2 = (v1[3] << 24) | (v1[2] << 16) | (v1[1] << 8);
  *result = (v2 | *v1) - 2 * ((v2 | *v1) & 0x4E26DEAC ^ *v1 & 8) + 1311170212;
  return result;
}

void sub_23E92CC5C(_DWORD *a1)
{
  v1 = *a1 - 1710126949 * (((a1 | 0x7B46F16D) - (a1 & 0x7B46F16D)) ^ 0x7DA103C7);
  __asm { BRAA            X2, X17 }
}

void sub_23E92CDAC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  **(a1 + 24) = v3;
  *(a2 + 16) = v2;
  JUMPOUT(0x23E996C44);
}

uint64_t sub_23E92CDC0()
{
  v4 = v1 < 272863175;
  v5 = ((v0 + 1048195574) & 0xC185CFFC ^ 0x76BFD151) + v2;
  v6 = v4 ^ (v5 < 272863175);
  v7 = v5 < v1;
  if (!v6)
  {
    v4 = v7;
  }

  return (*(v3 + 8 * (((16 * v4) | (v4 << 9)) ^ v0)))();
}

uint64_t sub_23E92CE80()
{
  v3 = *(v0 + 576);
  STACK[0x3D8] = 335;
  *(v3 + 335) = (&STACK[0x3D8] ^ 0xBA) * (&STACK[0x3D8] + 17);
  return (*(v2 + 8 * ((2796 * (STACK[0x3D8] == ((((v1 - 3427) | 0x540) + 2059009585) & 0x8545FEFF ^ 0x27DLL))) ^ ((v1 - 3427) | 0x540))))();
}

uint64_t sub_23E92CEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v40 = (*(v38 + 8 * (v37 + 560)))(a36);
  *(v39 + 288) = a37 - 1712;
  LODWORD(STACK[0x208]) = 1720789292;
  return (*(v38 + 8 * ((((STACK[0x278] == 0) ^ (v37 + 9) ^ 0x69) & 1 | (8 * (((STACK[0x278] == 0) ^ (v37 + 9) ^ 0x69) & 1))) ^ (v37 - 94))))(v40);
}

uint64_t sub_23E92CF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v28 = &a24 + v26 + 8;
  *(v28 - 1) = 0xD2D2D2D2D2D2D2D2;
  *v28 = 0xD2D2D2D2D2D2D2D2;
  return (*(v27 + 8 * ((((v25 & 0xFFFFFFFFFFFFFFF0) == 16) * (((v24 - 599159920) & 0x23B67BFE) + 313)) ^ v24)))();
}

uint64_t sub_23E92D298(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int32x4_t a21, int8x16_t a22, int8x16_t a23)
{
  v25 = vld1q_dup_f32(v24);
  v26.i64[0] = 0x8000000080000000;
  v26.i64[1] = 0x8000000080000000;
  a2.i64[0] = *(v24 + 4);
  a2.i32[2] = *(v24 + 12);
  v27 = vextq_s8(v25, a2, 0xCuLL);
  v28 = a2;
  v28.i32[3] = *(v24 + 16);
  v29 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v28, a23), vandq_s8(v27, v26)), 1uLL), *(v24 + 1588));
  v27.i32[0] = *(v23 + 4 * (*(v24 + 4) & 1));
  v27.i32[1] = *(v23 + 4 * (*(v24 + 8) & 1));
  v27.i32[2] = *(v23 + 4 * (*(v24 + 12) & 1));
  v27.i32[3] = *(v23 + 4 * (v28.i8[12] & 1));
  *v24 = veorq_s8(vaddq_s32(vsubq_s32(v29, vandq_s8(vaddq_s32(v29, v29), a22)), a21), v27);
  return (*(a4 + 14304))(2540);
}

void sub_23E92D350(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16) ^ (2073269857 * (a1 ^ 0x814DB918));
  if (*(*(a1 + 8) + 4) - 1948623840 >= 0)
  {
    v2 = *(*(a1 + 8) + 4) - 1948623840;
  }

  else
  {
    v2 = 1948623840 - *(*(a1 + 8) + 4);
  }

  if (*(*(a1 + 24) + 4) - 1948623840 >= 0)
  {
    v3 = *(*(a1 + 24) + 4) - 1948623840;
  }

  else
  {
    v3 = 1948623840 - *(*(a1 + 24) + 4);
  }

  v7 = *(a1 + 8);
  v8 = v1 + 1875091903 * (((&v6 | 0x54A57505) + (~&v6 | 0xAB5A8AFA)) ^ 0x6EABA3D8) - 642;
  v4 = *(&off_28512D4A0 + (v1 ^ 0xA58));
  (*(v4 + 8 * (v1 ^ 0x1AF6)))(&v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X14, X17 }
}

uint64_t sub_23E92D4A0@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 - 780) - v1 - 1368;
  v6 = *(v3 + v5 - 15);
  v7 = *(v3 + v5 - 31);
  v8 = a1 + v5;
  v9.i64[0] = 0xA4A4A4A4A4A4A4A4;
  v9.i64[1] = 0xA4A4A4A4A4A4A4A4;
  v10.i64[0] = 0xD2D2D2D2D2D2D2D2;
  v10.i64[1] = 0xD2D2D2D2D2D2D2D2;
  *(v8 - 15) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v9)), v10);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v9)), v10);
  return (*(v4 + 8 * ((522 * (v1 == 96)) ^ v2)))();
}

uint64_t sub_23E92D510(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  v17 = v16 + v14 - 296;
  v18 = a14 + 1928028603 < (a2 + 782820518);
  if ((a14 + 1928028603) < 0x9353C9F1 != (a2 + 782820518) < 0x9353C9F1)
  {
    v18 = (a2 + 782820518) < 0x9353C9F1;
  }

  return (*(v15 + 8 * (((((v17 - 6) ^ v18) & 1) * (((v17 - 69) | 0x45) ^ 0x22F)) ^ (v17 + 1759))))();
}

uint64_t sub_23E92D58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unsigned int a40, char a41)
{
  v45 = v43 - 16;
  *(v44 - 136) = v42 + a40;
  *(v44 - 120) = a32;
  *(v44 - 112) = &a41;
  *(v44 - 124) = v45 - 31943069 * ((((v44 - 136) | 0x458AC2F9) - ((v44 - 136) & 0x458AC2F9)) ^ 0x82C4CBF0) + 348;
  *(v44 - 104) = &STACK[0x22C];
  (*(v41 + 8 * (v45 ^ 0xFC1)))(v44 - 136);
  return (*(v41 + 8 * (((*(v44 - 128) == -1720814856) * ((v45 + 1) ^ 0x26D ^ (v45 - 1630644333) & 0x6131ABFD)) ^ v45)))();
}

uint64_t sub_23E92D6A8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, int8x16_t a4@<Q5>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v14 = (a1 + a2);
  v15 = vaddq_s8(vsubq_s8(v13[1], vandq_s8(vaddq_s8(v13[1], v13[1]), a3)), a4);
  *v14 = vaddq_s8(vsubq_s8(*v13, vandq_s8(vaddq_s8(*v13, *v13), a3)), a4);
  v14[1] = v15;
  return (*(v12 + 8 * ((23 * (((a11 - 2062) ^ 0x265) == (v11 & 0x60))) ^ (a11 - 2062))))();
}

void sub_23E92D720(int a1@<W8>, uint64_t a2, unsigned __int8 *a3)
{
  v4 = (((-51 * (a1 ^ 0xD9) + 56) ^ *a3) << 56) | ((a3[1] ^ 0xD2u) << 48) | ((a3[2] ^ 0xD2u) << 40) | ((a3[3] ^ 0xD2u) << 32) | ((a3[4] ^ 0xD2) << 24) | ((a3[5] ^ 0xD2) << 16) | ((a3[6] ^ 0xD2) << 8) | a3[7] ^ 0xD2;
  **(v3 + 16) = v4 - ((2 * v4) & 0xD122F39FB742645ELL) - 0x176E8630245ECDD1;
  JUMPOUT(0x23E92C7F8);
}

uint64_t sub_23E92D7D8()
{
  v7 = v6 + v4;
  v8 = (v4 + (v0 ^ 0x4C) + 88 - 31) & 0xF;
  v9 = v1 - v4 + v8 + 1;
  v10 = v1 + v8 + 1;
  v11 = v8 + v3 + ((4 * (v0 ^ 0xB4Cu)) ^ 0xB5CLL) - v4;
  v12 = v8 + v3 + 4;
  v13 = v8 + v2 + 3;
  v15 = v12 > v6 && v11 < v7;
  v17 = v10 > v6 && v9 < v7 || v15;
  if (v13 <= v6 || v13 - v4 >= v7)
  {
    v19 = v17;
  }

  else
  {
    v19 = 1;
  }

  return (*(v5 + 8 * ((93 * (v19 ^ 1)) ^ v0)))(v4);
}

uint64_t sub_23E92D908@<X0>(unsigned __int8 a1@<W1>, unsigned __int8 a2@<W2>, unsigned __int8 a3@<W3>, unint64_t a4@<X5>, uint64_t a5@<X6>, unsigned __int8 a6@<W7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _BYTE *a26, _BYTE *a27, _BYTE *a28, unsigned int a29, uint64_t a30, uint64_t a31, uint64_t a32, unsigned int a33)
{
  v48 = (v43 - 128);
  v83 = a5 - 1;
  v49 = *(v48 - 14);
  v50 = (a32 + ((a5 - 1) << (a33 - 114)));
  v51 = *v50 ^ *(*(v48 - 15) + (a2 ^ a4));
  *v42 = v51 ^ a4;
  v52 = *(v48 - 10);
  v53 = v50[4] ^ *(*(v48 - 11) + (v40 ^ a4));
  *(a7 - 12) = v53 ^ a4;
  v54 = *(v48 - 6);
  v55 = v50[8] ^ *(*(v48 - 7) + (a3 ^ a4));
  *(a7 - 8) = v55 ^ a4;
  v56 = a6 ^ a4;
  v57 = *(v48 - 2);
  LOBYTE(v56) = v50[12] ^ *(*(v48 - 3) + v56);
  *(a7 - 4) = v56 ^ a4;
  LOBYTE(v57) = v50[13] ^ *(v57 + (a1 ^ a4));
  *(a7 - 3) = v57 ^ a4;
  v58 = v50[9] ^ *(v54 + (v44 ^ a4));
  *(a7 - 7) = v58 ^ a4;
  v59 = v50[5] ^ *(v52 + (v34 ^ a4));
  *(a7 - 11) = v59 ^ a4;
  v60 = v50[1] ^ *(v49 + (v38 ^ a4));
  *(a7 - 15) = v60 ^ a4;
  v61 = *(v48 - 12);
  LOBYTE(v49) = v50[2] ^ *(*(v48 - 13) + (v36 ^ a4));
  *(a7 - 14) = v49 ^ a4;
  v62 = *(v48 - 4);
  v63 = v50[10] ^ *(*(v48 - 5) + (v33 ^ a4));
  *(a7 - 6) = v63 ^ a4;
  v64 = *(v48 - 8);
  v65 = v50[6] ^ *(*(v48 - 9) + (v37 ^ a4));
  *(a7 - 10) = v65 ^ a4;
  v66 = v47 ^ a4;
  v67 = *v48;
  v68 = v50[14] ^ *(*(v48 - 1) + v66);
  *(a7 - 2) = v68 ^ a4;
  LOBYTE(v66) = v50[3] ^ *(v61 + (v39 ^ a4));
  *(a7 - 13) = v66 ^ a4;
  v69 = v50[7] ^ *(v64 + (v35 ^ a4));
  *(a7 - 9) = v69 ^ a4;
  v70 = v50[11] ^ *(v62 + (v45 ^ a4));
  *(a7 - 5) = v70 ^ a4;
  LOBYTE(v61) = v50[15] ^ *(v67 + (v41 ^ a4));
  *(a7 - 1) = v61 ^ a4;
  v71 = (a31 + ((v83 % a29) << 7));
  v72 = v71 + 147;
  LODWORD(v71) = *(v71[148] + 4 * v60) ^ *(v71[147] + 4 * v51) ^ *(v71[149] + 4 * v49) ^ *(v71[150] + 4 * v66);
  *(a7 - 13) = BYTE3(v71) ^ 0xD2;
  *(a7 - 14) = BYTE2(v71) ^ 0xD2;
  *(a7 - 15) = BYTE1(v71) ^ 0xD2;
  v73 = v71 ^ 0xFFFFFFD2;
  *v42 = v71 ^ 0xD2;
  v74 = &v72[4 * a25];
  LODWORD(v49) = *(*v74 + 4 * v53);
  LODWORD(v62) = *(v74[1] + 4 * v59);
  v75 = v74[2];
  LODWORD(v74) = *(v74[3] + 4 * v69);
  LODWORD(v74) = v49 ^ 0xB4C2E66C ^ v62 ^ *(v75 + 4 * v65) ^ (v74 - 1262295444 - ((2 * v74) & 0x6985CCD8));
  *(a7 - 9) = BYTE3(v74) - ((v74 >> 23) & 0xA4) - 46;
  *(a7 - 10) = BYTE2(v74) - ((v74 >> 15) & 0xA4) - 46;
  *(a7 - 11) = BYTE1(v74) - ((v74 >> 7) & 0xA4) - 46;
  *a28 = v74 - (v46 & (2 * v74)) - 46;
  v76 = &v72[4 * a24];
  LODWORD(v76) = *(v76[1] + 4 * v58) ^ *(*v76 + 4 * v55) ^ *(v76[2] + 4 * v63) ^ *(v76[3] + 4 * v70);
  *(a7 - 5) = BYTE3(v76) - ((v76 >> 23) & 0xA4) - 46;
  *(a7 - 6) = BYTE2(v76) - ((v76 >> 15) & 0xA4) - 46;
  v77 = (v76 >> 8) - ((v76 >> 7) & 0x1FFFFA4) - 46;
  *(a7 - 7) = BYTE1(v76) - ((v76 >> 7) & 0xA4) - 46;
  v78 = v76 - (v46 & (2 * v76)) - 46;
  *a27 = v76 - (v46 & (2 * v76)) - 46;
  v79 = &v72[4 * a23];
  v80 = v79[1];
  LODWORD(v56) = *(v80 + 4 * v57) ^ *(*v79 + 4 * v56);
  LODWORD(v79) = *(v79[2] + 4 * v68) ^ *(v79[3] + 4 * v61);
  v81 = v56 ^ v79;
  *(a7 - 1) = ((v56 ^ v79) >> 24) ^ 0xD2;
  *(a7 - 2) = BYTE2(v81) ^ 0xD2;
  *(a7 - 3) = BYTE1(v81) ^ 0xD2;
  *a26 = (v56 ^ v79) - (v46 & (2 * (v56 ^ v79))) - 46;
  return (*(a30 + 8 * ((240 * (v83 != 0)) ^ a33)))(v81, v77, v73, v78, v80, a4, v83, v81 - (v46 & (2 * v81)) - 46, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void sub_23E92D918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (((a20 - v27) | (v27 - a20)) > (((v27 + 31371187) & 0xFE2155EF) - 1444))
  {
    v30 = 0x80000000;
  }

  else
  {
    v30 = 0x7FFFFFFF;
  }

  *v28 = v30;
  (*(v29 + 8 * (v27 ^ 0xF9F)))(a27);
  JUMPOUT(0x23E92D980);
}

void sub_23E92DBD0(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (1046730637 * ((-2 - ((a1 | 0x3AFF1BF0) + (~a1 | 0xC500E40F))) ^ 0x9F0359E3));
  __asm { BRAA            X9, X17 }
}

void sub_23E92DC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = *(v9 + 8);
  **(v9 + 16) = v8;
  *v11 = a8;
  *(v9 + 24) = *(v10 + 24);
}

uint64_t sub_23E92DCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  v18 = ((a8 + v16 + 377) ^ 0xE8EFDEF6) + v15;
  v19 = v18 < 0xE8EFD349;
  v20 = v18 > a15;
  if (a15 < 0xE8EFD349 != v19)
  {
    v20 = v19;
  }

  return (*(v17 + 8 * ((v20 | (4 * v20)) ^ (a8 + v16 + 733))))(47, 164, a3, 95, a5, 2029);
}

void sub_23E92DD5C(uint64_t a1)
{
  v1 = 1358806181 * (((a1 | 0x80EFBF72) - (a1 & 0x80EFBF72)) ^ 0x3D8C399F);
  v2 = **a1 + 1610291970;
  v3 = *(a1 + 48) - v1 + 400238096;
  v4 = v2 < 0x80638337;
  v5 = v2 > v3;
  if (v3 < 0x80638337 != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

uint64_t sub_23E92E0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v34 = *(v30 + 4 * (v32 - 1));
  *(v30 + 4 * v32) = ((1566083941 * (v34 ^ (v34 >> 30))) ^ *(v30 + 4 * v32)) - v32;
  v35 = v33 - 152;
  *(v35 + 32) = v32 + 1 - a29;
  *(v35 + 8) = a29 + 623;
  *(v33 - 148) = a29 + v29 + 903603202 + 139;
  *(v33 - 136) = (v29 + 903603202) ^ a29;
  *(v33 - 132) = ((v29 + 903603202) ^ 0x67) - a29;
  *(v33 - 128) = 476319917 - a29 + v29;
  *(v33 - 112) = 1 - a29;
  v36 = (*(v31 + 8 * (v29 ^ 0x1C7D)))(v33 - 152);
  return (*(v31 + 8 * *(v33 - 152)))(v36);
}

void sub_23E92E2C8(uint64_t a1)
{
  v1 = *(a1 + 28) + 1875091903 * ((a1 & 0xE4AA1501 | ~(a1 | 0xE4AA1501)) ^ 0x215B3C22);
  __asm { BRAA            X1, X17 }
}

uint64_t sub_23E92E3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  v52 = *(v50 + 8 * (v48 - 3909));
  v53 = &a48 + a23;
  v92 = a23 + 320;
  v54 = *(a5 + 76);
  v55 = *(a5 + 80);
  v56 = *(a5 + 84);
  v57 = *(a5 + 96);
  if (v57 == 2)
  {
    return sub_23E990FD0(a1, v54, a3, 150);
  }

  if (v57 == 1)
  {
    v58 = (a5 + v51 + 285898711);
    v59 = *v58 ^ 0xD2;
    LODWORD(v58) = ((a22 ^ 0x5B ^ v58[2]) << 16) | ((v58[3] ^ 0xD2) << 24) | v59 | ((v58[1] ^ 0xD2) << 8);
    *v53 = v58 + v49 - 2 * (v58 & 0x196E72F9 ^ v59 & 1);
    return (*(v50 + 8 * ((204 * ((v51 + 285898715) < 0x40)) ^ (a22 - 1822))))(285898711, v54);
  }

  else
  {
    v60 = (((*(a5 + 72) ^ 0xA3E27F6E) + 1545437330) ^ ((*(a5 + 72) ^ 0x3F06F585) - 1057420677) ^ ((*(a5 + 72) ^ 0xC93349CC) + 919385652)) + (((*(a5 + 72) ^ 0x1155D94C) - 290838860) ^ ((*(a5 + 72) ^ 0x306ECAC9) - 812567241) ^ ((*(a5 + 72) ^ 0x74ECD0A2) - 1961676962)) + 407987524;
    v61 = (v60 ^ 0xC25CB9C0) & (2 * (v60 & 0x935E210A)) ^ v60 & 0x935E210A;
    v62 = ((2 * (v60 ^ 0xE248F9D0)) ^ 0xE22DB1B4) & (v60 ^ 0xE248F9D0) ^ (2 * (v60 ^ 0xE248F9D0)) & 0x7116D8DA;
    v63 = v62 ^ 0x1112484A;
    v64 = (v62 ^ 0x40008010) & (4 * v61) ^ v61;
    v65 = ((4 * v63) ^ 0xC45B6368) & v63 ^ (4 * v63) & 0x7116D8D8;
    v66 = (v65 ^ 0x40124040) & (16 * v64) ^ v64;
    v67 = ((16 * (v65 ^ 0x31049892)) ^ 0x116D8DA0) & (v65 ^ 0x31049892) ^ (16 * (v65 ^ 0x31049892)) & 0x7116D8D0;
    v68 = v66 ^ 0x7116D8DA ^ (v67 ^ 0x11048800) & (v66 << 8);
    v69 = (((v54 ^ 0x53C0B177) - 1405137271) ^ ((v54 ^ 0xD2B10193) + 760151661) ^ ((v54 ^ 0xD4A673C3) + 727288893)) + (((*(a5 + 76) ^ 0xF29681CA) + 225017398) ^ ((*(a5 + 76) ^ 0x942B6CC6) + 1809093434) ^ ((*(a5 + 76) ^ 0x336A2E2B) - 862596651)) - 1073867403;
    *(a5 + 72) = v60 ^ (2 * ((v68 << 16) & 0x71160000 ^ v68 ^ ((v68 << 16) ^ 0x58DA0000) & (((v67 ^ 0x6012505A) << 8) & 0x71160000 ^ 0x61060000 ^ (((v67 ^ 0x6012505A) << 8) ^ 0x16D80000) & (v67 ^ 0x6012505A)))) ^ 0x84805399;
    *(a5 + 76) = v69 ^ ((v69 ^ 0x59AED537) - 1306548752) ^ ((v69 ^ 0x2CBC531A) - 955440189) ^ ((v69 ^ 0x8FA3FEE5) + 1678937662) ^ ((v69 ^ 0xEEFFF7EF) + 89032504) ^ 0x41994C00;
    v70 = (((v55 ^ 0x5DFB81EB) - 1576763883) ^ ((v55 ^ 0xA93FD303) + 1455435005) ^ ((v55 ^ 0xA11391CF) + 1592553009)) + (((*(a5 + 80) ^ 0xD3CA2B9E) + 741725282) ^ ((*(a5 + 80) ^ 0xFE33BFCC) + 30162996) ^ ((*(a5 + 80) ^ 0x782E5775) - 2016302965)) - 681169022;
    v71 = (v70 & 0xD44956CC | ((((v70 & 0xD44956CC) >> 28) & 1) << 29)) ^ (v70 ^ 0xE62006A8) & (2 * (v70 & 0xD44956CC));
    v72 = ((2 * (v70 ^ 0xE62006A8)) ^ 0x64D2A0C8) & (v70 ^ 0xE62006A8) ^ (2 * (v70 ^ 0xE62006A8)) & 0x32695064;
    v73 = v72 ^ 0x12295024;
    v74 = (v72 ^ 0x20400044) & (4 * v71) ^ v71;
    v75 = ((4 * v73) ^ 0xC9A54190) & v73 ^ (4 * v73) & 0x32695064;
    v76 = (v75 ^ 0x214000) & (16 * v74) ^ v74;
    v77 = ((16 * (v75 ^ 0x32481064)) ^ 0x26950640) & (v75 ^ 0x32481064) ^ (16 * (v75 ^ 0x32481064)) & 0x32695060;
    v78 = v76 ^ 0x32695064 ^ (v77 ^ 0x22010000) & (v76 << 8);
    v79 = (v78 << 16) & 0x32690000 ^ v78 ^ ((v78 << 16) ^ 0x50640000) & (((v77 ^ 0x10685024) << 8) & 0x32690000 ^ 0x12290000 ^ (((v77 ^ 0x10685024) << 8) ^ 0x69500000) & (v77 ^ 0x10685024));
    v80 = (((v56 ^ 0x41E241B0) - 1105346992) ^ ((v56 ^ 0xE3F9FE89) + 470155639) ^ ((v56 ^ 0xF7CC7C1E) + 137593826)) + (((*(a5 + 84) ^ 0xC031B41A) + 1070484454) ^ ((*(a5 + 84) ^ 0x7AC6C6DD) - 2059847389) ^ ((*(a5 + 84) ^ 0xEF20B1E0) + 283069984)) - 660210197;
    v81 = (v80 ^ 0x9B4D404A) & (2 * (v80 & 0xD3098863)) ^ v80 & 0xD3098863;
    v82 = ((2 * (v80 ^ 0x3F4C408C)) ^ 0xD88B91DE) & (v80 ^ 0x3F4C408C) ^ (2 * (v80 ^ 0x3F4C408C)) & 0xEC45C8EE;
    v83 = v82 ^ 0x24444821;
    v84 = (v82 ^ 0xC800008C) & (4 * v81) ^ v81;
    v85 = ((4 * v83) ^ 0xB11723BC) & v83 ^ (4 * v83) & 0xEC45C8EC;
    v86 = (v85 ^ 0xA00500A0) & (16 * v84) ^ v84;
    v87 = ((16 * (v85 ^ 0x4C40C843)) ^ 0xC45C8EF0) & (v85 ^ 0x4C40C843) ^ (16 * (v85 ^ 0x4C40C843)) & 0xEC45C8E0;
    v88 = v86 ^ 0xEC45C8EF ^ (v87 ^ 0xC4448800) & (v86 << 8);
    v89 = (v88 << 16) ^ 0x48EF0000;
    *(a5 + 80) = v70 ^ (2 * v79) ^ 0xC58C3523;
    *(a5 + 84) = v80 ^ (2 * ((v88 << 16) & 0x6C450000 ^ v88 ^ v89 & (((v87 ^ 0x2801400F) << 8) & 0x6C450000 ^ 0x28050000 ^ (((v87 ^ 0x2801400F) << 8) ^ 0x45C80000) & (v87 ^ 0x2801400F)))) ^ 0xCEDFDA9A;
    return v52(v89, 1816461312, 1897267200, 150, a5, a22 ^ 0x7E2u, a7, v92 - 320, a9, a10, a11, a12, a13, a2);
  }
}

uint64_t sub_23E92E46C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, char *a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  v26 = 3 * (a1 ^ 0x53B);
  v27 = 31943069 * ((v25 - 144) ^ 0xC74E0909);
  *(v25 - 144) = v19 - v27 + (v26 ^ 0x13A02767);
  *(v25 - 128) = v27 + a1 + 1671;
  *(v25 - 120) = &a10;
  *(v25 - 136) = v22;
  (*(v20 + 8 * (a1 ^ 0x15F2)))(v25 - 144);
  a7 = &a12;
  a8 = &a19;
  *(v25 - 128) = v26 + 914963389 * ((((2 * (v25 - 144)) | 0xE60372C2) - (v25 - 144) + 217990815) ^ 0x12ED6006) + 653;
  *(v25 - 144) = v21;
  *(v25 - 136) = &a7;
  (*(v20 + 8 * (v26 ^ 0x12BE)))(v25 - 144);
  *(v25 - 144) = v21;
  *(v25 - 112) = &a10;
  *(v25 - 104) = &a7;
  *(v25 - 128) = &a17;
  *(v25 - 120) = v24;
  *(v25 - 136) = v26 - 1875091903 * ((((v25 - 144) | 0xACAD94E9) - ((v25 - 144) & 0xACAD94E9)) ^ 0x96A34235) + 676;
  v28 = (*(v20 + 8 * (v26 ^ 0x124C)))(v25 - 144);
  return (*(v20 + 8 * ((60 * (((v23 == 0) ^ (v26 + 47)) & 1)) ^ v26)))(v28);
}

uint64_t sub_23E92E63C@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v7 = *(v2 + v5 + 16);
  v8 = (a2 + v3);
  *v8 = *(v2 + v5);
  v8[1] = v7;
  return (*(v6 + 8 * ((((v4 & 0xFFFFFFFFFFFFFFE0) == 32) * ((a1 - 1244141592) & 0x4A2817A8 ^ 0x9B3)) ^ (a1 + 506))))();
}

void sub_23E92E7A0()
{
  if (v0 == 1237071437)
  {
    v2 = -1720814856;
  }

  else
  {
    v2 = 1720789280;
  }

  *(v1 + 32) = v2;
}

uint64_t sub_23E92E834@<X0>(unint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = a1 < v3;
  v6 = a3 + 1;
  if (v5 == v6 > ((264 * (a2 ^ 0x67Cu)) ^ 0xFFFFFFFF11D9AACDLL) + (a2 - 1094))
  {
    v5 = v6 + v3 < a1;
  }

  return (*(v4 + 8 * (a2 | (4 * v5))))();
}

uint64_t sub_23E92E894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int32x4_t a22, int32x4_t a23)
{
  a22 = vdupq_n_s32(0x22C473FEu);
  a23 = a22;
  return (*(v23 + 8 * ((483 * ((((a4 & 0xFFFFFFF8) == 8) ^ (a7 + 105)) & 1)) ^ (a7 - 3431))))(a1, a2, a3, a4, (a7 - 1869537943), (a7 - 3431), &a22, 483, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_23E92E8FC(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18.n128_u64[0] = 0xD2D2D2D2D2D2D2D2;
  v18.n128_u64[1] = 0xD2D2D2D2D2D2D2D2;
  return (*(v17 + 8 * (((a13 - ((a16 + 1) << 6) < ((3 * (v16 ^ 0xCAu)) ^ 0x91uLL)) * ((59 * (v16 ^ 0xF2)) ^ 0x8E0)) ^ v16)))(a1, a2, v18);
}

uint64_t sub_23E92E918@<X0>(uint64_t a1@<X8>)
{
  v6 = v2;
  v7 = v1;
  v8 = v2;
  v5 = v3 - 2048652491 * ((&v5 & 0x939F8FD9 | ~(&v5 | 0x939F8FD9)) ^ 0x11653610) + 1476;
  return (*(a1 + 8 * (v3 ^ 0x10E3)))(&v5);
}

uint64_t sub_23E92E97C@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + (v3 << ((v4 - 41) & 0xDE ^ 0x9Eu)));
  v7 = vld4_s8(v5);
  v8.val[0] = v7.val[3];
  v8.val[1] = v7.val[2];
  v8.val[2] = v7.val[1];
  v8.val[3] = v7.val[0];
  vst4_s8(v5, v8);
  return (*(a1 + 8 * ((13 * ((v2 & 0x1FFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_23E92E9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  HIDWORD(a11) = HIDWORD(a17) + 59345033;
  HIDWORD(a13) = 128;
  return (*(v62 + 8 * ((35 * ((((v63 - 1004) | 0xE) ^ 0x6F) < 128)) ^ (v63 + 1580))))(a1, a2, 164, a4, a5, 210, a7, a8, a9, a10, a11, &STACK[0x6B0], a13, a22 + 112, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v62, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_23E92EBD0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v4) = *(v5 + v4) ^ 0xD2;
  v7 = v2 + v4;
  v8 = ((v1 - 237874567) & 0xE2DABFF ^ 0xBFE) + v4;
  v10 = v7 + 1 >= v3 || v8 > 0xCC72275;
  return (*(v6 + 8 * ((77 * v10) ^ v1)))();
}

uint64_t sub_23E92ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, _BYTE *a53, uint64_t a54, int8x16_t a55, uint64_t a56, uint64_t a57, unint64_t a58, uint64_t a59)
{
  v64 = STACK[0x318];
  if (SLODWORD(STACK[0x318]) <= 660559494)
  {
    if (v64 == -1353735908)
    {
      v67 = a5 - 1863;
      *(a42 + 56) = veorq_s8(*(a56 + 228), a55);
      v73 = 1358806181 * ((~((v63 - 192) | 0x7927F1E3) + ((v63 - 192) & 0x7927F1E3)) ^ 0x3BBB88F1);
      v69 = a58;
      STACK[0x18C8] = a58;
      *(v63 - 192) = v59 - v73 + a5;
      *(v63 - 172) = 791581032 - v73;
      (*(v61 + 8 * (a5 + 713)))(v63 - 192, a2, 1517);
      v62[24] = a58;
      v70 = a59;
      v62[79] = a59;
      LODWORD(STACK[0x344]) = 17;
      v71 = 961970502;
      goto LABEL_10;
    }

    if (v64 == -1087359418)
    {
      v67 = a5 - 1863;
      *(a42 + 35) = *(a56 + 243);
      *(a42 + 34) = *(a56 + 242);
      *(a42 + 33) = *(a56 + 241);
      *(a42 + 32) = *(a56 + 240);
      *(a42 + 31) = *(a56 + 239);
      *(a42 + 30) = *(a56 + 238);
      *(a42 + 29) = *(a56 + 237);
      *(a42 + 28) = *(a56 + 236);
      *(a42 + 27) = *(a56 + 235);
      *(a42 + 26) = *(a56 + 234);
      *(a42 + 25) = *(a56 + 233);
      *(a42 + 24) = *(a56 + 232);
      *(a42 + 23) = *(a56 + 231);
      *(a42 + 22) = *(a56 + 230);
      *(a42 + 21) = *(a56 + 229);
      *(a42 + 20) = *a53;
      v72 = 1358806181 * ((((2 * (v63 - 192)) | 0xC10DC928) - (v63 - 192) + 528030572) ^ 0x5DE56279);
      v69 = a58;
      STACK[0x18C8] = a58;
      *(v63 - 172) = 791581032 - v72;
      *(v63 - 192) = v59 - v72 + a5;
      (*(v61 + 8 * (a5 + 713)))(v63 - 192, a2, 1517);
      v62[24] = a58;
      v70 = a59;
      v62[79] = a59;
      LODWORD(STACK[0x344]) = 17;
      v71 = 1775642355;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v64 == 926935985)
  {
    *(a42 + 36) = veorq_s8(*(a56 + 228), a55);
    return (*(v61 + 8 * (a5 - 3342)))(a1, a2, 1517, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
  }

  if (v64 == 1193312475)
  {
    v67 = a5 - 1863;
    *(a42 + 4) = veorq_s8(*(a56 + 228), a55);
    v68 = 1358806181 * ((1122976744 - ((v63 - 192) | 0x42EF43E8) + ((v63 - 192) | 0xBD10BC17)) ^ 0x733AFA);
    v69 = a58;
    STACK[0x18C8] = a58;
    *(v63 - 192) = v59 - v68 + a5;
    *(v63 - 172) = 791581032 - v68;
    (*(v61 + 8 * (a5 + 713)))(v63 - 192, a2, 1517);
    v62[24] = a58;
    v70 = a59;
    v62[79] = a59;
    LODWORD(STACK[0x344]) = 17;
    v71 = 1627030943;
LABEL_10:
    LODWORD(STACK[0x284]) = v71;
    v66 = (*(v69 + 68) & 0x3F) + 17;
    v62[85] = v69;
    LODWORD(STACK[0x4DC]) = 17;
    v62[16] = v70;
    return (*(v61 + 8 * ((2626 * (v66 > (v67 ^ 0x348u) - 1313)) ^ v67)))();
  }

  if (v64 != 660559495)
  {
LABEL_12:
    v74 = v62[51];
    v62[41] = v62[17];
    v62[42] = v74;
    return (*(v61 + 8 * ((((a43 & 0x77 ^ (v74 == 0)) & 1) * (a43 & 0x8EB9AC77 ^ 0xC8B)) ^ a43 & 0x8EB9AC77)))();
  }

  v75 = (a5 - 2639);
  *(a42 + 87) = *(a56 + 243);
  *(a42 + 86) = *(a56 + 242);
  *(a42 + 85) = *(a56 + 241);
  *(a42 + 84) = *(a56 + 240);
  *(a42 + 83) = *(a56 + 239);
  *(a42 + 82) = *(a56 + 238);
  *(a42 + 81) = *(a56 + 237);
  *(a42 + 80) = *(a56 + 236);
  *(a42 + 79) = *(a56 + 235);
  *(a42 + 78) = *(a56 + 234);
  *(a42 + 77) = *(a56 + 233);
  *(a42 + 76) = *(a56 + 232);
  *(a42 + 75) = *(a56 + 231);
  *(a42 + 74) = *(a56 + 230);
  *(a42 + 73) = *(a56 + 229);
  *(a42 + 72) = *a53;
  v76 = STACK[0x4CC];
  v62[36] += v75 ^ 0xFFFFFFFFFFFFFA80;
  LODWORD(STACK[0x208]) = v76;
  return (*(v61 + 8 * ((1108 * (v76 == v60)) | v75)))(a1, a2, 1517);
}

uint64_t sub_23E92ECDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  v62 = *(v24 + 8 * (v22 - 29));
  v32 = STACK[0x2D0];
  v33 = STACK[0x2D4];
  v34 = LOBYTE(STACK[0x2E0]);
  if (v34 == 2)
  {
    v38 = LODWORD(STACK[0x2D8]);
    v39 = &STACK[0x280] + v27 + 1043556554;
    v40 = ((*v39 ^ v28) << 24) | ((v39[1] ^ v28) << 16) | ((v39[2] ^ (((v30 - 126) ^ 0x2C) - 31)) << 8);
    *(v23 + 4 * (v26 ^ 0xF8CDA32)) = (v40 | v39[3] ^ v28) + v25 - 2 * ((v40 | v39[3] ^ v28) & 0x196E72F9 ^ (v39[3] ^ v28) & 1);
    return (*(v24 + 8 * ((44 * ((v27 + 1043556558) > 0x3F)) ^ (v30 + 642))))(v38);
  }

  else if (v34 == 1)
  {
    v35 = &STACK[0x280] + v27 + 1043556554;
    v36 = *v35 ^ v28;
    LODWORD(v35) = ((v35[2] ^ v28) << 16) | ((v35[3] ^ v28) << 24) | v36 | (((v29 - 52) & 0xFE ^ v35[1]) << 8);
    *(v23 + 4 * (v26 ^ 0xF8CDA32)) = v35 + v25 - 2 * (v35 & 0x196E72F9 ^ v36 & 1);
    return (*(v24 + 8 * ((2527 * ((v27 + 1043556558) < 0x40)) ^ (v30 + 1707))))(0, 0, 0, a22, 1043556554, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v31 = STACK[0x2C8];
    v41 = (((v31 ^ 0x82A825DF) + 2102909473) ^ ((v31 ^ 0xF376F1E6) + 210308634) ^ ((v31 ^ 0x2409171E) - 604575518)) + (((v31 ^ 0x604EF674) - 1615787636) ^ ((v31 ^ 0xE7CEEEFE) + 405868802) ^ ((v31 ^ 0xD257DBAD) + 765994067)) + 688859341;
    v42 = (v41 ^ 0xE82B1D89) & (2 * (v41 & 0x82A05D81)) ^ v41 & 0x82A05D81;
    v43 = ((2 * (v41 ^ 0xED6B8C8B)) ^ 0xDF97A214) & (v41 ^ 0xED6B8C8B) ^ (2 * (v41 ^ 0xED6B8C8B)) & 0x6FCBD10A;
    v44 = v43 ^ 0x2048510A;
    v45 = (v43 ^ 0xFFF8000) & (4 * v42) ^ v42;
    v46 = ((4 * v44) ^ 0xBF2F4428) & v44 ^ (4 * v44) & 0x6FCBD108;
    v47 = v45 ^ 0x6FCBD10A ^ (v46 ^ 0x2F0B4000) & (16 * v45);
    v48 = (16 * (v46 ^ 0x40C09102)) & 0x6FCBD100 ^ 0x342C10A ^ ((16 * (v46 ^ 0x40C09102)) ^ 0xFCBD10A0) & (v46 ^ 0x40C09102);
    v49 = (v47 << 8) & 0x6FCBD100 ^ v47 ^ ((v47 << 8) ^ 0xCBD10A00) & v48;
    v50 = v41 ^ (2 * ((v49 << 16) & 0x6FCB0000 ^ v49 ^ ((v49 << 16) ^ 0x510A0000) & ((v48 << 8) & 0x6FCB0000 ^ 0x240A0000 ^ ((v48 << 8) ^ 0xCBD10000) & v48)));
    v51 = (((LODWORD(STACK[0x2CC]) ^ 0xBE6F4782) + 1100003454) ^ ((LODWORD(STACK[0x2CC]) ^ 0x913B9C11) + 1858364399) ^ ((LODWORD(STACK[0x2CC]) ^ 0x7A8318B4) - 2055411892)) + (((LODWORD(STACK[0x2CC]) ^ 0xF330D2B1) + 214904143) ^ ((LODWORD(STACK[0x2CC]) ^ 0xB4421734) + 1270737100) ^ ((LODWORD(STACK[0x2CC]) ^ 0x12A506A2) - 312805026)) - 1020299088;
    v52 = (v51 ^ 0xC6BA8D5D) & (2 * (v51 & 0xE8800D9E)) ^ v51 & 0xE8800D9E;
    v53 = ((2 * (v51 ^ 0x96BA8E61)) ^ 0xFC7507FE) & (v51 ^ 0x96BA8E61) ^ (2 * (v51 ^ 0x96BA8E61)) & 0x7E3A83FE;
    v54 = v53 ^ 0x20A8001;
    v55 = (v53 ^ 0x640002F8) & (4 * v52) ^ v52;
    v56 = ((4 * v54) ^ 0xF8EA0FFC) & v54 ^ (4 * v54) & 0x7E3A83FC;
    v57 = (v56 ^ 0x782A03E0) & (16 * v55) ^ v55;
    v58 = ((16 * (v56 ^ 0x6108003)) ^ 0xE3A83FF0) & (v56 ^ 0x6108003) ^ (16 * (v56 ^ 0x6108003)) & 0x7E3A83F0;
    v59 = v57 ^ 0x7E3A83FF ^ (v58 ^ 0x62280300) & (v57 << 8);
    LODWORD(STACK[0x2C8]) = v50 ^ 0x1D763CB2;
    LODWORD(STACK[0x2CC]) = v51 ^ (2 * ((v59 << 16) & 0x7E3A0000 ^ v59 ^ ((v59 << 16) ^ 0x3FF0000) & (((v58 ^ 0x1C12800F) << 8) & 0x7E3A0000 ^ 0x44380000 ^ (((v58 ^ 0x1C12800F) << 8) ^ 0x3A830000) & (v58 ^ 0x1C12800F)))) ^ 0x4556C947;
    v60 = (((v32 ^ 0xBF8F6E2) - 200865506) ^ ((v32 ^ 0x5A1794B9) - 1511494841) ^ ((v32 ^ 0x438A17C) - 70820220)) + (((LODWORD(STACK[0x2D0]) ^ 0xF0D134FA) + 254724870) ^ ((LODWORD(STACK[0x2D0]) ^ 0x18E66975) - 417753461) ^ ((LODWORD(STACK[0x2D0]) ^ 0xBDE09EA8) + 1109352792)) - 87101789;
    v61 = (((v33 ^ 0xD0BF93DA) + 792751142) ^ ((v33 ^ 0xF4985B33) + 191341773) ^ ((v33 ^ 0x71F00BCE) - 1911557070)) + (((LODWORD(STACK[0x2D4]) ^ 0x15692737) - 359212855) ^ ((LODWORD(STACK[0x2D4]) ^ 0x12D0162) - 19726690) ^ ((LODWORD(STACK[0x2D4]) ^ 0x4193E572) - 1100211570)) - 509474461;
    LODWORD(STACK[0x2D0]) = v60 ^ ((v60 ^ 0x2FC76CFC) - 1624769705) ^ ((v60 ^ 0x3575BDDB) - 2053821838) ^ ((v60 ^ 0xAA4216B5) + 446857504) ^ ((v60 ^ 0xFFEFAFC7) + 1326397550) ^ 0x1AC8AB72;
    LODWORD(STACK[0x2D4]) = v61 ^ ((v61 ^ 0xD2258492) + 405338233) ^ ((v61 ^ 0x8DBB14F9) + 1203136532) ^ ((v61 ^ 0x1D9BEC82) - 677998487) ^ ((v61 ^ 0x77F7FFFC) - 1107655913) ^ 0x60254032;
    return v62(2117764080, &STACK[0x280], a3, a22, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_23E92ED14@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  *(&a12 + a3) = a1;
  v14 = a3 + 227 * (v12 ^ 0x998u) - 1361 == a2;
  return (*(v13 + 8 * (v14 | (4 * v14) | (v12 - 1524))))();
}

uint64_t sub_23E92EDCC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v23 = (a2 - 1918715880) & 0x725D47B2;
  v24 = (v22 + a18 - 16);
  v29.val[1].i64[0] = (v22 + 13) & 0xF;
  v29.val[1].i64[1] = (v22 + 12) & 0xF;
  v29.val[2].i64[0] = (v22 + 11) & 0xF;
  v29.val[2].i64[1] = (v22 + 10) & 0xF;
  v29.val[3].i64[0] = (v22 + 9) & 0xF;
  v29.val[3].i64[1] = v22 & 0xF ^ 8;
  v30.val[0].i64[0] = (v22 + 7) & 0xF;
  v30.val[0].i64[1] = (v22 + 6) & 0xF;
  v30.val[1].i64[0] = (v22 + 5) & 0xF;
  v30.val[1].i64[1] = (v22 + 4) & 0xF;
  v30.val[2].i64[0] = (v22 + 3) & 0xF;
  v30.val[2].i64[1] = (v22 + 2) & 0xF;
  v30.val[3].i64[0] = (v22 + 1) & 0xF;
  v30.val[3].i64[1] = v22 & 0xF;
  v25.i64[0] = 0x505050505050505;
  v25.i64[1] = 0x505050505050505;
  v26.i64[0] = 0xD2D2D2D2D2D2D2D2;
  v26.i64[1] = 0xD2D2D2D2D2D2D2D2;
  v29.val[0].i64[0] = (((v23 - 628) | 0xE82u) ^ 0xE91) & v18;
  v29.val[0].i64[1] = (v22 + 14) & 0xF;
  v27.i64[0] = vqtbl4q_s8(v29, xmmword_23EAA16C0).u64[0];
  v27.i64[1] = vqtbl4q_s8(v30, xmmword_23EAA16C0).u64[0];
  v30.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*v24, *(v21 + v29.val[0].i64[0] - 15)), veorq_s8(*(v20 + v29.val[0].i64[0] - 15), *(v29.val[0].i64[0] + v19 - 13))));
  v30.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v30.val[0], v30.val[0], 8uLL), v26), vmulq_s8(v27, v25)));
  *v24 = vextq_s8(v30.val[0], v30.val[0], 8uLL);
  return (*(a17 + 8 * ((3251 * ((v22 & 0x10) == 16)) ^ v23)))(v29.val[0].i64[1]);
}

uint64_t sub_23E92EFC4@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  v8 = (v2 - 1) & 0xF;
  v9 = -v6 - v2;
  v10 = a1 >= 0x10 && (v9 + v4 + v8 + 1) >= 0x10;
  v11 = v9 + 3;
  v12 = v10 && v11 + v3 + v8 >= ((a2 - 497) ^ 0x9F3u) - 3696;
  v13 = v11 + v5 + v8;
  v15 = !v12 || v13 < 0x10;
  return (*(v7 + 8 * ((14 * v15) ^ a2)))();
}

uint64_t sub_23E92F038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, void *a15, _BYTE *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, __int16 a55, unsigned __int8 a56, unsigned __int8 a57)
{
  *v60 = *v57 ^ *v59;
  v57[17] = v57[1] ^ v58[17];
  v57[18] = v57[2] ^ v58[18];
  v57[19] = v57[3] ^ v58[19];
  v57[20] = v57[4] ^ v58[20];
  v57[21] = v57[5] ^ v58[21];
  v57[22] = v57[6] ^ v58[22];
  v57[23] = v57[7] ^ v58[23];
  v57[24] = v57[8] ^ v58[24];
  v57[25] = v57[9] ^ v58[25];
  v57[26] = v57[10] ^ v58[26];
  v57[27] = v57[11] ^ v58[27];
  v57[28] = v57[12] ^ v58[28];
  v57[29] = v57[13] ^ v58[29];
  v57[30] = v57[14] ^ v58[30];
  v57[31] = v57[15] ^ v58[31];
  v61 = v60[4];
  v62 = v60[8];
  v63 = v60[12];
  v99 = 2u % a57;
  v64 = v60[1];
  v65 = v60[5];
  v66 = v60[9];
  v67 = v60[13];
  v98 = 3u % a57;
  v68 = v60[2];
  v69 = v60[10];
  v70 = v60[6];
  v71 = v60[14];
  v72 = v60[15];
  v73 = v60[11];
  v74 = v60[7];
  v75 = v60[3];
  v76 = *(*(a15 - 5) + *v60);
  *v60 = v76;
  v77 = *(*(a15 - 1) + v61);
  v60[4] = v77;
  v78 = *(a15[3] + v62);
  v60[8] = v78;
  v79 = *(a15[7] + v63);
  v60[12] = v79;
  v80 = *(*a15 + v65);
  v60[1] = v80;
  v81 = *(a15[4] + v66);
  v60[5] = v81;
  v82 = *(a15[8] + v67);
  v60[9] = v82;
  v83 = *(*(a15 - 4) + v64);
  v60[13] = v83;
  v84 = *(a15[5] + v69);
  v60[2] = v84;
  v85 = *(*(a15 - 3) + v68);
  v60[10] = v85;
  v86 = *(a15[9] + v71);
  v60[6] = v86;
  v87 = *(a15[1] + v70);
  v60[14] = v87;
  v88 = *(a15[6] + v73);
  v60[15] = v88;
  v89 = *(a15[2] + v74);
  v60[11] = v89;
  v90 = *(*(a15 - 2) + v75);
  v60[7] = v90;
  v91 = *(a15[10] + v72);
  v60[3] = v91;
  v92 = (a30 + ((0u % a56) << 7));
  v93 = v92 + 147;
  LODWORD(v84) = *(v92[148] + 4 * v80) ^ *(v92[147] + 4 * v76) ^ *(v92[149] + 4 * v84) ^ *(v92[150] + 4 * v91);
  v60[3] = BYTE3(v84);
  LODWORD(v73) = v84 >> ((((((a14 & 0xFA) - 11) & 0xBD) + 79) | 0x20) ^ 0x3C);
  v60[2] = v73;
  *v60 = v84;
  v94 = &v92[4 * (a57 != 1) + 147];
  LODWORD(v70) = *(v94[1] + 4 * v81) ^ *(*v94 + 4 * v77) ^ *(v94[2] + 4 * v86) ^ *(v94[3] + 4 * v90);
  v60[7] = BYTE3(v70);
  v60[6] = BYTE2(v70);
  *(v60 + 2) = v70;
  LODWORD(v86) = *(v93[4 * v99 + 1] + 4 * v82) ^ *(v93[4 * v99] + 4 * v78) ^ *(v93[4 * v99 + 2] + 4 * v85) ^ *(v93[4 * v99 + 3] + 4 * v89);
  v60[11] = BYTE3(v86);
  v60[10] = BYTE2(v86);
  *(v60 + 4) = v86;
  v95 = *(v93[4 * v98 + 1] + 4 * v83) ^ *(v93[4 * v98] + 4 * v79) ^ *(v93[4 * v98 + 2] + 4 * v87) ^ *(v93[4 * v98 + 3] + 4 * v88);
  *(v60 + 3) = v95;
  *v60 = *(a16 - 15) ^ v84;
  v96 = (*(a16 - 14) ^ BYTE1(v84));
  v60[1] = *(a16 - 14) ^ BYTE1(v84);
  v60[2] = *(a16 - 13) ^ v73;
  v60[3] = *(a16 - 12) ^ BYTE3(v84);
  *(v60 + 2) = *(a16 - 11) ^ v70;
  v60[6] = *(a16 - 9) ^ BYTE2(v70);
  v60[7] = *(a16 - 8) ^ BYTE3(v70);
  *(v60 + 4) = *(a16 - 7) ^ v86;
  v60[10] = *(a16 - 5) ^ BYTE2(v86);
  v60[11] = *(a16 - 4) ^ BYTE3(v86);
  *(v60 + 6) = *(a16 - 3) ^ v95;
  v60[14] = *(a16 - 1) ^ BYTE2(v95);
  v60[15] = *a16 ^ HIBYTE(v95);
  return (*(a31 + 8 * (((a14 & 0x3CC6FA) + 162803701) & 0x4BDABD)))(v96);
}

void sub_23E92F1B0(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (1358806181 * ((2 * (a1 & 0x3EAE4724) - a1 + 1095874779) ^ 0xFC323E36));
  v2 = *(&off_28512D4A0 + (v1 ^ 0xDCB));
  v3 = *(v2 + 8 * ((((*(v2 + 8 * (v1 ^ 0x1D03)))(32, 0x101004023FF3BD5) != 0) * (v1 - 3231)) ^ v1));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23E92F2B8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + 127 - v1;
  v6 = *(v5 - 31);
  v7 = a1 + 127 - v1;
  v8.i64[0] = 0xA4A4A4A4A4A4A4A4;
  v8.i64[1] = 0xA4A4A4A4A4A4A4A4;
  v9.i64[0] = 0xD2D2D2D2D2D2D2D2;
  v9.i64[1] = 0xD2D2D2D2D2D2D2D2;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v3 + 8 * (((v1 == 96) * ((v4 + 437627275) & 0xE5EA4FBB ^ 0x176)) ^ v4)))();
}

uint64_t sub_23E92F340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v29 = (v23 - 2542);
  *v24 = (((((((a23 - 1478) ^ v29) + v26) ^ (v28 - v29)) - 1) & (v29 - v26)) >= 0) + v24[623];
  return (*(v27 + 8 * (((v25 + (v29 ^ 0x26F) == 1) * (((a23 - 1477) ^ 0xC5D) - 3153)) ^ a23)))();
}

void zxcm2Qme0x(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(&off_28512D4A0 + ((-57 * (dword_27E37D498 ^ 0x68 ^ qword_27E37D680)) ^ byte_23EA861F0[byte_23EA7A950[(-57 * (dword_27E37D498 ^ 0x68 ^ qword_27E37D680))] ^ 0x72]) - 95);
  v5 = *(v4 - 4);
  v6 = *(&off_28512D4A0 + (*(off_28512E230 + (*(off_28512E0A0 + (-57 * (v5 ^ qword_27E37D680 ^ 0x68)) - 4) ^ 0x72u) - 8) ^ (-57 * (v5 ^ qword_27E37D680 ^ 0x68))) - 46);
  v7 = &v11[1] + (*(v6 - 4) ^ v5);
  *(v4 - 4) = (1773100999 * v7) ^ 0xB2DEEC90F0DCD368;
  *(v6 - 4) = 1773100999 * (v7 ^ 0xB2DEEC90F0DCD368);
  v11[0] = 0;
  v13 = v11;
  v14 = 31943069 * ((2 * (v12 & 0x8657270) - v12 - 140866161) ^ 0x30D48486) + 1903876051;
  LOBYTE(v7) = -57 * ((*(v6 - 4) + *(v4 - 4)) ^ 0x68);
  v8 = *(&off_28512D4A0 + ((-57 * ((qword_27E37D680 - dword_27E37D498) ^ 0x68)) ^ byte_23EA861F0[byte_23EA7A950[(-57 * ((qword_27E37D680 - dword_27E37D498) ^ 0x68))] ^ 0x15]) + 193);
  (*(v8 + 8 * ((*(off_28512E200 + (*(off_28512D920 + v7 - 8) ^ 0xD8u) - 8) ^ v7) + 3947)))(v12);
  v10 = 0;
  v14 = 31943069 * (v12 ^ 0xC74E0909) + 1903876051;
  v13 = &v10;
  v9 = -57 * ((*(v6 - 4) - *(v4 - 4)) ^ 0x68);
  (*(v8 + 8 * ((*(off_28512E280 + (*(off_28512DA50 + v9 - 8) ^ 0xB8u) - 4) ^ v9) + 3891)))(v12);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23E92FD4C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, unsigned int a7@<W8>)
{
  v12 = (a4 ^ (2 * v8)) + v7 - 61;
  *(a2 + a7) = *(a6 + v7) - (a3 & (2 * *(a6 + v7))) - 46;
  v13 = v10 + v7 + 1 < a1;
  if (a1 < v10 != v12 > v9)
  {
    v13 = a1 < v10;
  }

  return (*(v11 + 8 * ((v13 * a5) ^ v8)))();
}

void sub_23E92FE04(uint64_t a1)
{
  v1 = 2008441969 * ((2 * (a1 & 0x46F9675C) - a1 + 956733603) ^ 0x82177505);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_23E92FF10@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unsigned __int8 a46, char a47, char a48, char a49, char a50, char a51, char a52, unsigned __int8 a53, __int16 a54, unsigned __int8 a55, unsigned __int8 a56, char a57, unsigned __int8 a58, char a59, char a60, char a61, unsigned __int8 a62, __int16 a63)
{
  HIDWORD(v227) = a1 ^ 0xD5E;
  v88 = BYTE1(a41);
  v89 = v87 - 117;
  v90 = *(v87 - 117 + (a83 - 21 * ((((135 * a83) >> 8) + (((a83 - ((135 * a83) >> 8)) & 0xFE) >> 1)) >> 4)));
  *(v87 - 140) = ((((BYTE6(a36) & 0x5C ^ 0x7C) & ~((BYTE1(a41) / 3u) & ((a1 ^ 0x5E) + 96)) | (BYTE1(a41) / 3u) & (a1 + 102)) ^ 0x7C) & *(v87 - 117 + ((((v90 >> 4) | (16 * v90)) - ((2 * ((v90 >> 4) | (16 * v90))) & 0x132E) - 1178728041) ^ 0xB9BE0997) % 0x15)) + 20;
  *(v87 - 118) = -72;
  v91 = v87 - 152;
  v226 = *(v87 - 152 + (a81 - 35 * ((235 * a81) >> 13)));
  LOBYTE(v90) = a82 - 21 * ((((135 * a82) >> 8) + (((a82 - ((135 * a82) >> 8)) & 0xFE) >> 1)) >> 4);
  BYTE2(a28) = -109;
  HIBYTE(a27) = 98;
  v92 = a72 % 0x14u;
  v93 = *(v87 - 152 + (BYTE1(a37) - 35 * ((235 * BYTE1(a37)) >> 13)));
  *(v87 - 140) = (205 * ((((*(v87 - 109) / 3u) & 0x6C ^ 0x77) & (~*(v87 - 130) | 0x6C) | *(v87 - 130) & 0x80) ^ 0x77)) >> 10;
  v94 = ((((*(v87 - 126) & *(v87 - 101)) ^ 0xFFFFFF83) & (*(v87 - 101) | 0xA2) ^ *(v87 - 101) & 0x5C) >> 1) ^ 0x6F;
  v95 = 99 - *(v87 - 152 + (BYTE6(a32) - 35 * ((235 * BYTE6(a32)) >> 13)));
  v224 = BYTE5(a30);
  v96 = v95 & 0x39 ^ 0x20;
  v97 = v95 ^ (2 * ((v95 ^ 0x78) & (2 * ((v95 ^ 0x78) & (2 * ((v95 ^ 0x78) & (2 * ((v95 ^ 0x78) & (2 * (v95 & (2 * (v95 & (2 * v95) & 0x72 ^ v96)) ^ v96)) ^ v96)) ^ v96)) ^ v96)) ^ v96));
  v230 = *(v87 - 152 + (BYTE5(a30) - 35 * ((235 * BYTE5(a30)) >> 13))) + v94 * v94 * v94 - 90;
  v98 = v97 ^ 0x39;
  v99 = *(v87 - 147);
  LOBYTE(v94) = (((((v97 ^ 0xC1) & ~*(v87 - 109) | *(v87 - 109) & 7) ^ 0xF8) & *(v87 - 134) ^ 0x99) & ~((v97 ^ 0x39) & *(v87 - 109)) ^ 0xF6) & ~v99 | v99 & 0x6F;
  v100 = BYTE6(a27) & v99 ^ 0x77;
  v101 = v100 & 0x19 & (v94 ^ 1);
  v102 = v94 & 8 | v100 & 0x11;
  v103 = (*(v87 - 117 + v90) >> 1) & 0x10;
  BYTE5(a26) = (v103 | 0x40) ^ 0x53;
  v104 = &a26 + 2;
  v105 = *(&a26 + v92 + 2);
  v106 = v101 ^ v102;
  BYTE5(a28) = *(v87 - 117 + (a36 - 21 * ((((135 * a36) >> 8) + (((a36 - ((135 * a36) >> 8)) & 0xFE) >> 1)) >> 4)));
  v228 = (v230 ^ 0x757FDFDB) + ((2 * v230) & 0x1B6) - 1971314651;
  v107 = *(&a26 + v228 % 0x14 + 2) >> 1;
  v108 = *(v87 - 152 + (a72 - 35 * ((235 * a72) >> 13)));
  BYTE5(a28) += ((v106 ^ 0xBC) & (~v107 | 0x99) | v107 & 0x42) ^ 0x43;
  BYTE1(a28) ^= v108 * v108 * v108;
  v109 = *(&a26 + ((v97 ^ 0x39) - 20 * ((205 * v98) >> 12)) + 2);
  v110 = (((v109 - 93) & (HIBYTE(a41) ^ 0xCB) ^ (92 - v109) & 0xCB ^ 0x34) & BYTE4(a26) ^ 0x72) & ~((92 - v109) & ~HIBYTE(a41)) ^ ((92 - v109) & ~HIBYTE(a41) | 0x72);
  v111 = *(v87 - 151) + v110 * v110 * v110;
  BYTE2(a29) = 2 * ((205 * v88) >> 10) * ((205 * v88) >> 10);
  HIBYTE(a32) -= *(v87 - 117 + (BYTE2(a33) - 21 * ((((135 * BYTE2(a33)) >> 8) + (((BYTE2(a33) - ((135 * BYTE2(a33)) >> 8)) & 0xFE) >> 1)) >> 4))) & 0xF6;
  v232 = ((((v105 & 0xFFFFFFB3 | 0x44) << ((BYTE6(a27) + 2) & 7)) ^ ((v105 & 0xB3 | 0x44u) >> ((6 - BYTE6(a27)) & 7))) & ((v103 | 0x40) ^ 0x53) ^ 0xFFFFFFDE) & ~(v93 & (v103 | 0xFFFFFFEC)) | v93 & 0x20;
  LOBYTE(v103) = *(v87 - 124) & (BYTE6(a27) | 0x50) | BYTE6(a27) & 0x50;
  LOBYTE(a29) = a29 - v103 * v103;
  *(v87 - 148) ^= a80 / 3u;
  *(v87 - 151) = v111;
  v112 = *(v87 - 99);
  v113 = (*(v87 - 117 + (BYTE2(a40) - 21 * ((((135 * BYTE2(a40)) >> 8) + (((BYTE2(a40) - ((135 * BYTE2(a40)) >> 8)) & 0xFE) >> 1)) >> 4))) & v112);
  BYTE5(a28) ^= (43691 * ((v113 & 0xED | (v112 & 0xFFFFFFFB ^ 0xE9) & ~v113) ^ 0x12) * *(v87 - 152 + (HIBYTE(a33) - 35 * ((235 * HIBYTE(a33)) >> 13)))) >> 17;
  LOBYTE(v103) = *(v87 - 152 + (BYTE2(a30) - 35 * ((235 * BYTE2(a30)) >> 13))) ^ BYTE2(a29);
  *(v87 - 140) += (a73 & ~v103 | 0x53) ^ ((((v103 ^ 0x25) & ~a73 | a73 & 0x25) ^ 0xDA) & *(v87 - 102) ^ 0x53) & (v103 | ~a73);
  LOBYTE(v112) = BYTE1(a34) % 0x14u;
  LOBYTE(v105) = *(&a26 + v228 % 0x14 + 2);
  LODWORD(v223) = BYTE3(a26);
  v114 = *(v87 - 104);
  v115 = 2 * *(v87 - 117 + (BYTE2(a37) - 21 * ((((135 * BYTE2(a37)) >> 8) + (((BYTE2(a37) - ((135 * BYTE2(a37)) >> 8)) & 0xFE) >> 1)) >> 4)));
  v116 = (v115 & 0x54 ^ v115 & ~(((((v105 & BYTE3(a26)) ^ 0xFFFFFFDC) & (BYTE3(a26) & 0x86 ^ 0xFFFFFFF9) | v114 & 0xC4) ^ 0xFFFFFFF7) & ~v114 | v114 & 0xFFFFFFF7) & 0x5C ^ 0xFFFFFFF0) & (v114 & 0x5C ^ 0xFFFFFFFD) ^ v114 & 0xC;
  v117 = ((v116 ^ 0x77) + 37) ^ ((v116 ^ 0xFFFFFF84) - 40) ^ ((v116 ^ 0x5F) + 13);
  v118 = (*(v87 - 117 + (BYTE5(a38) - 21 * ((((135 * BYTE5(a38)) >> 8) + (((BYTE5(a38) - ((135 * BYTE5(a38)) >> 8)) & 0xFE) >> 1)) >> 4))) + a69) >> 1;
  v119 = ((v97 ^ 0x39) - 35 * ((235 * v98) >> 13));
  HIDWORD(v223) = ((v118 | ((39324 * a55) >> 16)) & *(v87 - 151) | v118 & ((39324 * a55) >> 16)) + *(v87 - 109);
  LOBYTE(v115) = (HIBYTE(a32) >> (-*(v87 - 130) & 7)) ^ (HIBYTE(a32) << (*(v87 - 130) & 7));
  LODWORD(v222) = *(v87 - 152 + (a76 - 35 * ((235 * a76) >> 13)));
  *(v87 - 136) += (v105 | *(v87 - 152 + v119) & 0x9F | 8) + ((((((v115 ^ 0xA7) & ~(a27 & 0xA5 | BYTE6(a27) & 0x5A) | BYTE6(a27) & 0x58) ^ 0xA7) & *(v87 - 100) ^ 0x77) & ~(v115 & (a27 & 0xA5 | BYTE6(a27) & 0x5A)) | v115 & (a27 & 0xA5 | BYTE6(a27) & 0x5A) & 0x88) ^ 0x88) + 1;
  LOBYTE(v107) = 0x80 - BYTE4(v223) - 2 * ((0x80 - BYTE4(v223)) & 0x3F) + 63;
  LODWORD(v221) = *(&a26 + v112 + 2);
  LOBYTE(a28) = a28 ^ *(v87 - 152 + (((0x80 - BYTE4(v223)) - 2 * ((-128 - WORD2(v223)) & 0x3F) + 14655) ^ 0x393Fu) % 0x23);
  LOBYTE(v115) = a79 % 0x14u;
  LOBYTE(v118) = a66 % 0x14u;
  v120 = a84 % 0x14u;
  v121 = *(v87 - 117 + (BYTE3(a34) - 21 * ((((135 * BYTE3(a34)) >> 8) + (((BYTE3(a34) - ((135 * BYTE3(a34)) >> 8)) & 0xFE) >> 1)) >> 4))) + 92;
  HIDWORD(v220) = *(v87 - 152 + (BYTE6(a42) - 35 * ((235 * BYTE6(a42)) >> 13)));
  *(v87 - 144) = v97 ^ (0x8Cu >> ((v121 * v121) & 7)) ^ (140 << (-(v121 * v121) & 7)) ^ 0x39;
  LODWORD(v220) = *(&a26 + v118 + 2);
  LODWORD(v219) = *(&a26 + v115 + 2);
  HIDWORD(v219) = *(&a26 + v120 + 2);
  HIDWORD(v221) = *(&a26 + BYTE1(a39) % 0x14u + 2);
  HIBYTE(a27) += *(&a26 + HIBYTE(a33) % 0x14u + 2);
  BYTE4(a27) = (137 * (((*(v87 - 152 + v119) | a29) & (0x80 - BYTE4(v223))) | (*(v87 - 152 + v119) & a29))) >> 11;
  HIDWORD(v215) = a76;
  LODWORD(v216) = a76;
  a76 = BYTE6(a27);
  v122 = *(v87 - 125);
  v123 = (*(v87 - 117 + (a29 - 21 * ((((135 * a29) >> 8) + (((a29 - ((135 * a29) >> 8)) & 0xFE) >> 1)) >> 4))) & v122);
  v124 = BYTE6(a27) & ~v122;
  v217 = v117;
  v125 = *(v87 - 152 + (v117 - 35 * ((235 * v117) >> 13)));
  v126 = (((v124 ^ 0xBA) & ~v123 ^ 8) & ~v125 & 0x2A ^ ((v125 & 8 | 0x1A19C783) + 30)) & ~((((v124 ^ 0xBA) & ~v123 | v123 & 0x45) ^ 0xBA) & v125) ^ ((((v124 ^ 0xBA) & ~v123 | v123 & 0x45) ^ 0xBA) & v125 | 0x1A19C783);
  v127 = *(v87 - 117 + ((v97 ^ 0x39) - 21 * ((((135 * (v97 ^ 0x39)) >> 8) + ((((v97 ^ 0x39) - ((135 * (v97 ^ 0x39)) >> 8)) & 0xFE) >> 1)) >> 4)));
  *(v87 - 139) ^= v127;
  LOBYTE(v125) = *(v87 - 152 + (a71 - 35 * ((235 * a71) >> 13)));
  LOBYTE(v125) = ((((v125 - 38) | 0xF3) ^ (37 - v125) & (v107 ^ 0xCC)) & *(v87 - 133) ^ 0x4F) & ~((v125 - 38) & (v107 ^ 0x3F)) ^ ((v125 - 38) & (v107 ^ 0x3F) | 0x4F);
  v213 = v125 * v125 + 92;
  v128 = v126 * v126;
  v129 = 92 - v126 * v126;
  LODWORD(v227) = v126 * v126;
  v130 = (((92 - v126 * v126) ^ 0xA5DEDF31) + 1544084895) ^ (((92 - v126 * v126) ^ 0x8B355A4F) + 1927502049) ^ (((92 - v126 * v126) ^ 0x2EEB857E) - 683833390);
  v131 = v129 + (*(v87 - 130) & v98);
  HIDWORD(v216) = v131 & (~v127 | 0xFFFFFF79);
  v132 = BYTE4(v216) & 0xC6 ^ (v127 & 0x79 ^ 0x40) & ~v131;
  LODWORD(v214) = BYTE4(v216) & 0xC6 ^ (v127 & 0x79 ^ 0xE0B2D840) & ~v131;
  v133 = (v232 ^ 0xFFFFFFDE) - *(v87 - 109);
  v134 = v97 ^ 0xFFFFFFC3;
  v135 = ((*(v87 - 142) & (v134 & 0xA3 ^ 0x23) | 0x60A4A954) ^ *(v87 - 142) & 0xDD) & (v134 & 0x5C ^ 0xF9BFFFA7) ^ v134 & 8;
  v136 = *(v87 - 152 + v228 % 0x23);
  v233 = v85;
  v137 = ((171 * v127) >> 9) - v136 - (((((v135 ^ 3) & ~a58 | a58 & 0xA0) ^ 0x5F) & *(v87 - 135) ^ 0x78129655) & ((v135 ^ 0x5C) & a58 ^ 0x7C9296FF) ^ ((v135 ^ 0x5C) & a58 | 0x78129655));
  v138 = *(v87 - 133);
  v139 = v138 & (v127 | 0xFC) | v127 & 0xFC;
  v140 = (v137 | a58) & v138 | v137 & a58;
  v141 = (((((v140 | v139) & *(v87 - 97) | v140 & v139) & ~*(v87 - 99) ^ 0xE6) & ~(*(v87 - 99) & v136) | *(v87 - 99) & v136 & 0x19) ^ 0xFFFFFFE6) + v230;
  LODWORD(v215) = *(v87 - 152 + (HIBYTE(a39) - 35 * ((235 * HIBYTE(a39)) >> 13)));
  *(v87 - 119) ^= a32;
  HIDWORD(v222) = v141;
  *(v87 - 122) = (v141 / 3u - (v97 & 7 ^ 0x51 ^ (*(v87 - 104) & (v97 & 0xA8 ^ 0x7F) ^ 0x50) & (v97 & 0x57 ^ 0xEE))) ^ *(&a26 + a44 % 0x14u + 2);
  BYTE4(a31) = *(v87 - 152 + (a40 - 35 * ((235 * a40) >> 13))) & 0x1B | 0x44;
  v142 = ((v133 - 109) ^ 0x7F67E5FE) + ((2 * (v133 - 109)) & 0x1FC) - 2137515518;
  LOBYTE(v139) = v132 ^ (((v97 ^ 0xFFFFFFC3) >> 1) & 0x65 | 0x90);
  LOBYTE(v112) = *(v87 - 118);
  LOBYTE(v140) = *(v87 - 117 + v142 % 0x15) & v112;
  v143 = (((*(v87 - 152 + ((v139 ^ 0x87) - 35 * ((235 * (v139 ^ 0x87u)) >> 13))) & ~v112) ^ 0x66) & ~v140 | v140 & 0x99) ^ 0x66;
  LOBYTE(v97) = *(v87 - 134) + ((v143 * v143 * v143) >> 1);
  *(v87 - 147) -= *(v87 - 117 + (BYTE2(a40) - 21 * ((((135 * BYTE2(a40)) >> 8) + (((BYTE2(a40) - ((135 * BYTE2(a40)) >> 8)) & 0xFE) >> 1)) >> 4)));
  LOBYTE(v140) = a74 - 35 * ((235 * a74) >> 13);
  *(v87 - 134) = v97;
  LOBYTE(v140) = *(v87 - 152 + v140) & BYTE1(a27);
  v231 = (v130 + 103415120) % 0x23;
  LOBYTE(v112) = *(v87 - 152 + v231) & v129;
  *(v87 - 134) = (((((((HIBYTE(a33) & ~BYTE1(a27) ^ 0x4A) & ~v140 | v140 & 0xB5) ^ 0x4A) & (v128 - 93) ^ 0x28) & ~v112 | v112 & 0xD7) ^ 0x28) * ((HIBYTE(a30) & (v139 ^ 0x78) & 0x37 | (*(&a26 + BYTE1(a36) % 0x14u + 2) & (v139 ^ 0x87) ^ 0xC8) & ~(HIBYTE(a30) & (v139 ^ 0x78))) ^ 0xC8)) ^ v97;
  LOBYTE(v112) = *(v87 - 152 + (BYTE2(a32) - 35 * ((235 * BYTE2(a32)) >> 13)));
  LOBYTE(v139) = (*(v87 - 141) & 0x47 ^ 0x76 ^ (a28 & 2 ^ 0xBA ^ (*(&a26 + BYTE3(a40) % 0x14u + 2) & ~a28 ^ 0xFD) & (~a28 | 0x69)) & ~*(v87 - 141)) & ~(BYTE5(a29) & *(v87 - 141)) ^ BYTE5(a29) & *(v87 - 141) & 0xCE;
  v144 = (BYTE1(a30) << (-v112 & 7)) ^ (BYTE1(a30) >> (v112 & 7));
  LOBYTE(v144) = (*(v87 - 152 + v119) << (v144 & 7)) ^ (*(v87 - 152 + v119) >> (-v144 & 7));
  HIDWORD(v207) = *(v87 - 130);
  *(v87 - 130) += ((((v144 & 0xFA | (v139 ^ 0x34) & ~v144) ^ 5) & *(v87 - 119) ^ 0x51) & ~(v144 & (v139 ^ 0x31)) | v144 & (v139 ^ 0x31) & 0xAE) ^ 0x51;
  LOBYTE(v139) = *(&a26 + BYTE5(a33) % 0x14u + 2) ^ 0xD9;
  HIDWORD(a8) = v134;
  LODWORD(v210) = v134 ^ 0xFA;
  LOBYTE(v143) = (*(v87 - 146) & ((v129 & 0xDE | 0x21) ^ (v128 - 93) & (v134 ^ 0xDB)) ^ 0xAC) & ~(v129 & (v134 ^ 0xFA)) ^ v129 & (v134 ^ 0xFA) & 0x53;
  LOBYTE(v139) = *(v87 - 117 + (v139 - 21 * ((((135 * v139) >> 8) + (((v139 - ((135 * v139) >> 8)) & 0xFE) >> 1)) >> 4)));
  HIDWORD(v206) = BYTE1(a28);
  BYTE1(a28) -= (((((v143 ^ 0x20) & ~v139 | v139 & 0x73) ^ 0x8C) & v213 ^ 0x61) & ~((v143 ^ 0xAC) & v139) | (v143 ^ 0xAC) & v139 & 0x9E) ^ 0x61;
  LOWORD(v119) = (v141 - ((2 * v141) & 0xFA) - 22403) ^ 0xA87D;
  HIDWORD(v218) = v141 - ((2 * v141) & 0xFA) + 281389181;
  LOBYTE(v139) = *(v87 - 152 + (HIBYTE(a35) - 35 * ((235 * HIBYTE(a35)) >> 13)));
  LOBYTE(v139) = (v139 | *(&a26 + v119 % 0x14u + 2)) & BYTE3(a26) | v139 & *(&a26 + v119 % 0x14u + 2);
  LOBYTE(v144) = (v141 - ((2 * v141) & 0xFA) + 125) & 0x2D;
  LOBYTE(v139) = (((171 * v98) >> 9) - (BYTE4(a31) | v141)) ^ v213 ^ 0xD5 ^ ((*(v87 - 121) & ~(v144 ^ (v139 ^ 0x80) & (v144 | 0x80)) ^ 0xD5) & ~(v139 & (v144 ^ 0x7F)) | v139 & (v144 ^ 0x7F) & 0xAA);
  LOBYTE(v144) = *(v87 - 136);
  LOBYTE(v139) = *(&a26 + v139 % 0x14u + 2) & v144;
  v145 = ((((*(v87 - 117 + (BYTE5(a33) - 21 * ((((135 * BYTE5(a33)) >> 8) + (((BYTE5(a33) - ((135 * BYTE5(a33)) >> 8)) & 0xFE) >> 1)) >> 4))) & ~*(v87 - 107)) ^ 0xB7) & ~(HIBYTE(a32) & *(v87 - 107)) | HIBYTE(a32) & *(v87 - 107) & 0x48) ^ 0xB7) + ((((*(v87 - 152 + (a46 - 35 * ((235 * a46) >> 13))) & ~v144) ^ 0xCC) & ~v139 | v139 & 0x33) ^ 0xCC);
  v146 = *(&a26 + a58 % 0x14u + 2) | *(v87 - 117 + (a80 - 21 * ((((135 * a80) >> 8) + (((a80 - ((135 * a80) >> 8)) & 0xFE) >> 1)) >> 4)));
  v147 = *(&a26 + BYTE2(a29) % 0x14u + 2);
  v148 = ((v147 | ((13108 * v145) >> 16)) & BYTE2(a28) | v147 & ((13108 * v145) >> 16)) + ((v146 >> (-v104[a35 % 0x14u] & 7)) ^ (v146 << (v104[a35 % 0x14u] & 7)));
  v149 = v217 + ((((v148 - ((2 * v148) & 0xFFFFFF8F) + 71) ^ 0xFFFFFFC7) + 57) ^ (((v148 - ((2 * v148) & 0xFFFFFF8F) + 71) ^ 0xFFFFFFB6) + 74) ^ (((v148 - ((2 * v148) & 0xFFFFFF8F) + 71) ^ 0x36) - 54));
  v150 = *(&a26 + BYTE1(a41) % 0x14u + 2);
  v208 = v119 % 0x23u;
  v151 = ((v150 * v150 * v150 * v150 - ((2 * v150 * v150 * v150 * v150) & 0x20) + 16) ^ 0xFFFFFFB1) & ~*(v87 - 152 + v208) | *(v87 - 152 + v208) & 0x5E;
  LOWORD(v150) = *(v87 - 152 + v142 % 0x23);
  LODWORD(v218) = v151 ^ 0x32;
  v152 = (((v151 ^ 0x3D3B108) - 64205114) ^ ((v151 ^ 0x6BB56548) - 1807050106) ^ ((v151 ^ 0x6866D4E1) - 1751569619)) + 147;
  v153 = *(&a26 + a85 % 0x14u + 2);
  v154 = *(v87 - 152 + v152 % 0x23);
  v155 = ((v154 | v153) & BYTE1(a27) | v154 & v153) & BYTE4(a27);
  v156 = *(v87 - 117 + (BYTE5(a44) - 21 * ((((135 * BYTE5(a44)) >> 8) + (((BYTE5(a44) - ((135 * BYTE5(a44)) >> 8)) & 0xFE) >> 1)) >> 4)));
  v157 = (((((v156 << (v154 & 7)) ^ 0xFFFFFFB6 ^ (v156 >> (-v154 & 7))) & ~BYTE4(a27) & 0x47 | BYTE4(a27) & 6) ^ 0x41) & ((v155 - ((2 * v155) & 0x60) - 16) ^ 3) ^ (((v156 << (v154 & 7)) ^ 0xB6 ^ (v156 >> (-v154 & 7))) & ~BYTE4(a27) & 4 | BYTE4(a27) & 4 | 0xFFFFFFF8)) & (~(2 * *(v87 - 117 + (v150 - 21 * ((((135 * v150) >> 8) + (((v150 - ((135 * v150) >> 8)) & 0xFE) >> 1)) >> 4)))) | 0x47);
  LOBYTE(v148) = a53 % 0x14u;
  v211 = (v119 - 21 * ((((34329 * v119) >> 16) + (((v119 - ((34329 * v119) >> 16)) & 0xFFFE) >> 1)) >> 4));
  LOBYTE(v156) = (*(&a26 + HIBYTE(a31) % 0x14u + 2) & 0x91 | *(v87 - 117 + v211) & 0x6E) & ~BYTE2(a26);
  LOBYTE(v156) = v156 & 0x24 ^ (HIBYTE(a31) & BYTE2(a26) ^ 0xDB) & 0x65 ^ (v156 ^ 0x9A) & (HIBYTE(a31) & BYTE2(a26) ^ 0xDB);
  LODWORD(v207) = (v130 + 103415120) % 0x14;
  LOBYTE(v97) = *(v87 - 117 + (a76 - 21 * ((((135 * a76) >> 8) + (((a76 - ((135 * a76) >> 8)) & 0xFE) >> 1)) >> 4)));
  LODWORD(v206) = *(v87 - 152 + (BYTE4(a30) - 35 * ((235 * BYTE4(a30)) >> 13)));
  *(v87 - 150) += v156 & 0x4D ^ 0x49 ^ (((v97 & 0x20 ^ 0xF6 ^ (v97 | 6) & (*(v87 - 111) ^ 0xD9)) & ~(*(v87 - 111) & (2 * *(&a26 + v207 + 2))) | *(v87 - 111) & (2 * *(&a26 + v207 + 2)) & 0xE) ^ 0xBD) & (v156 ^ 0xDB);
  *(v87 - 138) -= (((*(v87 - 152 + (BYTE2(a41) - 35 * ((235 * BYTE2(a41)) >> 13))) ^ v157) & 0xDD ^ 0x9D) & *(v87 - 152 + v231) ^ 0xB) & (HIBYTE(a40) & 0x22 ^ 0xDF) ^ (HIBYTE(a40) & 0x20 | 0xB);
  HIDWORD(a3) = *(&a26 + v148 + 2);
  v158 = *(v87 - 109);
  BYTE3(a28) += v158;
  HIDWORD(v212) = v137;
  v209 = v137 % 0x14u;
  LOBYTE(v154) = *(v87 - 115);
  LOBYTE(v97) = (2 * *(&a26 + BYTE5(a33) % 0x14u + 2)) & ~v154;
  LOBYTE(v156) = ((v104[v209] | a30) & *(v87 - 103) | v104[v209] & a30) & v154 ^ 0xDE;
  v159 = *(&a26 + v207 + 2);
  HIBYTE(a27) = ((((v97 ^ 0x92) & v156 ^ v97 & 0x20 ^ v156 & 0x6C) & 0xFE) >> 1) ^ 0x6F;
  *(v87 - 119) -= HIBYTE(a42) & ((v158 >> 2) & 0x18 | 1);
  *(v87 - 124) -= (((BYTE2(a27) ^ 0x7F) & (((BYTE4(a42) | 0xFFFFFFDF) & *(v87 - 110) | BYTE4(a42) & 0xDF) >> 1) ^ 0xFD) & ~(BYTE2(a27) & v129) | BYTE2(a27) & v129 & 2) ^ 0xFD;
  v160 = v149 - 80;
  v161 = ((v149 - 80) | (((v149 - 80) < 0x69u) << 8)) - 105;
  LOBYTE(v158) = (*(v89 + v161 % 0x15) | v137) & *(v87 - 129) | *(v89 + v161 % 0x15) & v137;
  LODWORD(v212) = (v130 + 103415120) % 0x15;
  LOBYTE(v149) = *(v87 - 117 + v212);
  LOBYTE(v149) = (((((47 - v149) & (a75 ^ 0xC4) ^ 0x1B ^ ((v149 - 48) & 0xC4 | 0x20)) & *(v87 - 101) ^ 3) & ~((v149 - 48) & ~a75) | (v149 - 48) & ~a75 & 0xFC) ^ 3) & (v158 * v158 * v158);
  *(v87 - 130) += a74;
  LOBYTE(v158) = *(v87 - 152 + v161 % 0x23);
  LOBYTE(v97) = *(v87 - 117 + (a70 - 21 * ((((135 * a70) >> 8) + (((a70 - ((135 * a70) >> 8)) & 0xFE) >> 1)) >> 4)));
  BYTE1(a28) = v149;
  LOBYTE(v133) = v133 - 109 + 99 * *(&a26 + BYTE3(a30) % 0x14u + 2) * ((v97 | v158) & 0x51 | v97 & v158) * (*(v87 - 117 + (a32 - 21 * ((((135 * a32) >> 8) + (((a32 - ((135 * a32) >> 8)) & 0xFE) >> 1)) >> 4))) & 0xFE);
  v162 = *(v87 - 117 + (a80 - 21 * ((((135 * a80) >> 8) + (((a80 - ((135 * a80) >> 8)) & 0xFE) >> 1)) >> 4)));
  HIDWORD(v210) = *(v87 - 144) - a75 + v162 * v162 * v162;
  HIDWORD(v214) = *(v233 + 16) - a23;
  a60 ^= v226 * v226 * BYTE4(v215);
  LOBYTE(a33) = a33 + *(v87 - 117 + v228 % 0x15) / 5u;
  LOBYTE(v162) = *(v87 - 117 + (v216 - 21 * ((((135 * v216) >> 8) + (((v216 - ((135 * v216) >> 8)) & 0xFE) >> 1)) >> 4)));
  BYTE5(a30) = (3 * (-3 * *(v87 - 117 + (BYTE4(a44) - 21 * ((((135 * BYTE4(a44)) >> 8) + (((BYTE4(a44) - ((135 * BYTE4(a44)) >> 8)) & 0xFE) >> 1)) >> 4))) + ((BYTE6(a37) >> (v162 & 7)) ^ (BYTE6(a37) << (-v162 & 7))))) ^ v224;
  a48 += (0x5Cu >> (BYTE3(a29) & 7)) ^ (92 << (-BYTE3(a29) & 7));
  BYTE2(a33) += 125;
  v163 = (HIDWORD(v207) | a46) & HIDWORD(v206) | (BYTE4(v207) & a46);
  v164 = (v163 | v221) & v223 | v163 & v221;
  v165 = v164 >> ((((2 * v222) & ~BYTE2(a26) | BYTE2(a26) & 4) ^ 4) & 6 ^ 4);
  v166 = v164 << (((((2 * v222) & (BYTE2(a26) ^ 0xFE) ^ 4) & ~(BYTE2(a26) & 4) ^ 3) + 1) & 6);
  BYTE2(a44) = (v166 + (~(2 * v166) | 0x35) - 26) ^ v165 ^ 0xE5;
  v167 = *(v87 - 117 + (v219 - 21 * ((((135 * v219) >> 8) + (((v219 - ((135 * v219) >> 8)) & 0xFE) >> 1)) >> 4)));
  LOBYTE(v167) = (v167 << ((2 * BYTE4(v220)) & 6)) ^ (v167 >> ((-2 * BYTE4(v220)) & 6));
  v168 = (205 * (HIDWORD(v219) & 0xFFFFFF83 | v220 & 0x7C)) >> 10;
  BYTE1(a31) += ((((v168 & 0x66 | (v167 ^ 0xD9) & ~v168) ^ 0xD9) & *(v87 - 116) ^ 0x6B) & ~(v168 & v167) | v168 & v167 & 0x14) ^ 0x6B;
  BYTE3(a35) = ~((205 * (a27 | HIDWORD(v221))) >> 10);
  BYTE5(a34) ^= ((v134 & 0xAE ^ 0x67 ^ (v214 ^ 0x31) & (v134 ^ 0xFA)) & (BYTE4(v216) & ~v134 | 0xFB) ^ 0xCD) + v215;
  BYTE1(a44) ^= 0xDDu;
  LODWORD(v229) = v129;
  LOBYTE(a42) = v129 ^ a42 ^ 0x85;
  LOBYTE(v150) = (((BYTE4(a3) ^ 0xF2 ^ v157) & ~BYTE4(a26) & 0x1B | BYTE4(a26) & 9) ^ 0x12 ^ (((BYTE4(a3) ^ 0xF2 ^ v157) & ~BYTE4(a26) | BYTE4(a26) & 0x4D) ^ 0xB2) & ((((v206 * v206) & BYTE4(a26)) - ((2 * ((v206 * v206) & BYTE4(a26))) & 0xCA) + 101) ^ 0x81)) - BYTE4(v223);
  v169 = v159 - ((2 * v159) & 0x166) + 1038747571;
  v170 = *(v87 - 117 + (HIBYTE(a30) - 21 * ((((135 * HIBYTE(a30)) >> 8) + (((HIBYTE(a30) - ((135 * HIBYTE(a30)) >> 8)) & 0xFE) >> 1)) >> 4)));
  LODWORD(a23) = v157;
  v171 = (((v170 - ((2 * v170) & 0x112) + 838985865) ^ 0x76) & (v169 ^ 0xBC) ^ ((v170 - ((2 * v170) & 0x112) + 838985865) | 0xF)) & (v157 ^ 0xBF);
  v172 = ((v170 - ((2 * v170) & 0x112) + 838985865) ^ 0x3001E889) & (v169 ^ 0x203310) ^ (v170 - ((2 * v170) & 0x112) - 6007) & 0x64A3;
  v173 = (v171 ^ 0x7A54FD8A) & (v172 ^ 0x7E5D9D7E) ^ v172 & 0x85AB0275;
  BYTE5(a31) ^= (2 * ((((v173 & ~(a35 / 3u) | (a35 / 3u) & 0x74) ^ 0xB) & *(v87 - 142) ^ 0x48) & ~((v173 ^ 0xB) & (a35 / 3u)) | (v173 ^ 0xB) & (a35 / 3u) & 0x37)) ^ 0x90;
  v174 = 3 * *(v87 - 117 + (HIBYTE(a28) - 21 * ((((135 * HIBYTE(a28)) >> 8) + (((HIBYTE(a28) - ((135 * HIBYTE(a28)) >> 8)) & 0xFE) >> 1)) >> 4))) + 18;
  v175 = v174 & 0x54 ^ 0xFFFFFFF7;
  v176 = v174 ^ v134 ^ (2 * ((v174 ^ 0x6E) & (2 * ((v174 ^ 0x6E) & (2 * ((v174 ^ 0x6E) & (2 * ((v174 ^ 0x6E) & (2 * ((v174 ^ 0x6E) & (2 * ((v174 ^ 0x6E) & 0x3A ^ v175)) ^ v175)) ^ v175)) ^ v175)) ^ v175)) ^ v175));
  HIDWORD(v225) = ((v176 ^ 0xFFFFFFEA) - 30) ^ ((v176 ^ 0x59) + 83) ^ ((v176 ^ 0x1D) + 23);
  LOBYTE(v176) = *(v91 + v208) & 0xF5 | *(v91 + v231) & 0xA;
  LOBYTE(v134) = ((v176 ^ 0x21) - 75) ^ ((v176 ^ 0xCF) + 91) ^ ((v176 ^ 0xEE) + 124);
  LOBYTE(v176) = *(&a26 + v152 % 0x14 + 2) | 0x51;
  *(v87 - 134) -= (((v176 * v176 * v176) & ~v149 ^ 0x9B) & ~(v149 & (v133 / 0xFu)) | v149 & (v133 / 0xFu) & 4) ^ 0x9B;
  LOWORD(v149) = *(&a26 + v161 % 0x14 + 2);
  v177 = *(v87 - 117 + (v149 - 21 * ((((135 * v149) >> 8) + (((v149 - ((135 * v149) >> 8)) & 0xFE) >> 1)) >> 4)));
  v178 = v160 - *(&a26 + a65 % 0x14u + 2) + ((v177 / 3u) ^ 0xFFFFFFBF) + (((171 * v177) >> 8) & 0x7E);
  LOBYTE(v176) = BYTE4(a26) - ((2 * BYTE4(a26)) & 0x32) + 25;
  LOBYTE(v161) = *(v87 - 117 + (BYTE3(a37) - 21 * ((((135 * BYTE3(a37)) >> 8) + (((BYTE3(a37) - ((135 * BYTE3(a37)) >> 8)) & 0xFE) >> 1)) >> 4)));
  LOBYTE(v150) = ((v161 | a68) & (v150 - 50) | v161 & a68) & 0xFA;
  LOBYTE(v161) = ((v157 ^ 0xF9) & 0x4B ^ 0x23 ^ (v150 ^ 0xB5) & (v157 ^ 0x40)) & (v176 ^ 0x19);
  LOBYTE(v150) = (v150 ^ 0xF6) & (v157 ^ 0xBF) ^ (v157 ^ 0xF9) & 0xF7;
  BYTE2(a28) -= (v176 & 0xD5 ^ 0x5A ^ v161) & (v150 ^ 0xB9) ^ v150 & 0xB4 ^ 0x4F;
  v179 = *(v87 - 117 + (a62 - 21 * ((((135 * a62) >> 8) + (((a62 - ((135 * a62) >> 8)) & 0xFE) >> 1)) >> 4)));
  v180 = (v179 | HIBYTE(a41)) & 0x8D | (v179 & HIBYTE(a41));
  LOBYTE(v161) = *(v87 - 117 + (a67 - 21 * ((((135 * a67) >> 8) + (((a67 - ((135 * a67) >> 8)) & 0xFE) >> 1)) >> 4)));
  LOBYTE(v150) = (v161 | *(&a26 + BYTE3(a32) % 0x14u + 2)) & 6 | *(&a26 + BYTE3(a32) % 0x14u + 2) & v161 & 7;
  v181 = (v180 >> (-v150 & 7)) ^ (v180 << v150);
  v182 = *(v87 - 152 + (v134 + 106 - 35 * ((235 * (v134 + 106)) >> 13)));
  BYTE5(a26) -= *(v87 - 117 + (v181 - 21 * ((((34329 * v181) >> 16) + (((v181 - ((34329 * v181) >> 16)) & 0xFFFE) >> 1)) >> 4)));
  BYTE3(a29) = (BYTE6(a27) >> ((*(&a26 + BYTE3(a36) % 0x14u + 2) / 5u) & 7)) ^ (BYTE6(a27) << (-(*(&a26 + BYTE3(a36) % 0x14u + 2) / 5u) & 7)) ^ 0x45 ^ (~v182 / 5u - ((2 * (~v182 / 5u)) & 0x8A) + 69);
  a78 += BYTE1(a29);
  v183 = *(v87 - 109) | *(v87 - 152 + v208);
  a66 += (52429 * v183 * v183) >> 18;
  v184 = *(&a26 + v207 + 2);
  v185 = (0x8Bu >> (v133 & 7)) ^ (139 << (-v133 & 7));
  v186 = v184 & 0xE | (v185 ^ 0xF1) & ~v184;
  v187 = v184 & v185;
  v188 = (*(v89 + v211) * *(v89 + v211) * *(v89 + v211)) & BYTE3(a26);
  v189 = *(&a26 + v209 + 2) & ~BYTE3(a26);
  v190 = ((v188 - ((2 * v188) & 0xFFFFFF9F) + 851449807) ^ 0x82D50403) & ~v189 | v189 & 0x33333333;
  v191 = (v190 ^ 0xBCA2C33) & (v187 & 5 ^ 0x90868A6E ^ ((v186 ^ 0xFFFFFFF1) & *(v87 - 105) ^ 0xB48B4FA) & (v187 ^ 0xDF69BDFF)) ^ v190 & 0x6431C16B;
  LOWORD(v187) = (BYTE5(a41) & 0xE3 | 0x10) - ((2 * (BYTE5(a41) & 0xE3 | 0x10)) & 0x162) + 14005;
  *(v87 - 140) += (21846 * ((v187 & 0x393 ^ 0x30C0 ^ (v191 ^ 0x47) & (v187 & 0x3D3 ^ 0x2BD)) & (v187 & 0x30 | 0x77CF) ^ v187 & 0x20 ^ 0x3279)) >> 16;
  LOBYTE(v186) = (v134 + 106) / 3u;
  LOBYTE(v187) = (BYTE4(v218) & 0xF0 ^ 6 ^ ((BYTE1(a33) & *(v87 - 144) & 0x5E | (~*(v87 - 144) & v137 ^ 0xA1) & ~(BYTE1(a33) & *(v87 - 144))) ^ 0x51) & (BYTE4(v218) ^ 0x7D)) & ~(v186 & (BYTE4(v218) ^ 2));
  LOBYTE(v157) = (v141 - ((2 * v141) & 0xFA) + 125) & 9 & v186;
  LOBYTE(v186) = (a68 >> 1) & 0x20 | 0x56;
  LOBYTE(v157) = ((~(v157 ^ v187) & ~v186 | (a68 >> 1) & 0x20) ^ 0xDF) & *(v87 - 99);
  a51 -= ((v157 ^ 0x80) & 0xE9 | (v187 ^ 0x60) & v186 & (v157 ^ 0x7F)) ^ 0x96;
  *(v87 - 123) = *(v87 - 109);
  LODWORD(v225) = v178 + 113;
  LOBYTE(v133) = v133 - 35 * ((235 * v133) >> 13);
  LOBYTE(v175) = BYTE4(a41) - 35 * ((235 * BYTE4(a41)) >> 13);
  LOBYTE(v160) = BYTE5(a30) - 35 * ((235 * BYTE5(a30)) >> 13);
  LOBYTE(v129) = BYTE5(a37) - 35 * ((235 * BYTE5(a37)) >> 13);
  v192 = (((v178 + 113) | (((v178 + 113) < 0x99u) << 8)) - 153) % 0x15u;
  v193 = (BYTE1(a34) * BYTE1(a34)) ^ *(v87 - 152 + (a56 - 35 * ((235 * a56) >> 13)));
  v194 = (*(v87 - 117 + v192) & 0xA0 | *(&a26 + BYTE3(a44) % 0x14u + 2) & 0x5Eu) >> 1;
  BYTE1(a28) += (((((v193 ^ 0x26) & ~v194 | v194 & 0x59) ^ 0x26) & BYTE3(a28) ^ 0xDB) & ~(v193 & v194) | v193 & v194 & 0x24) ^ 0xDB;
  v195 = v141 - *(&a26 + v209 + 2);
  BYTE5(a40) = *(v87 - 117 + v212);
  v196 = *(v87 - 152 + (HIBYTE(a30) - 35 * ((235 * HIBYTE(a30)) >> 13)));
  v197 = (*(v91 + v133) >> ((v196 * v196 * v196) & 7)) ^ (*(v91 + v133) << (-(v196 * v196 * v196) & 7));
  LOBYTE(v189) = BYTE1(a27) - v197 * v197;
  *(v87 - 144) = BYTE4(v210);
  BYTE2(a28) = (2 * *(v87 - 152 + v175)) & 0x84;
  HIDWORD(v229) = v137;
  v198 = v218 ^ (*(v87 - 117 + (v137 - 21 * ((((135 * WORD2(v212)) >> 8) + (((v137 - ((135 * WORD2(v212)) >> 8)) & 0xFE) >> 1)) >> 4))) >> 1);
  v199 = ((v198 ^ 1) - 56) ^ ((v198 ^ 0xFFFFFFCA) + 13) ^ ((v198 ^ 0x58) - 97);
  LOBYTE(v171) = *(v87 - 133);
  LOBYTE(v192) = *(v89 + (*(v89 + v192) - 21 * ((((135 * *(v89 + v192)) >> 8) + (((*(v89 + v192) - ((135 * *(v89 + v192)) >> 8)) & 0xFE) >> 1)) >> 4))) & v171;
  LOBYTE(v192) = ((v171 ^ 0xFE) & (2 * *(v87 - 117 + (BYTE6(a38) - 21 * ((((135 * BYTE6(a38)) >> 8) + (((BYTE6(a38) - ((135 * BYTE6(a38)) >> 8)) & 0xFE) >> 1)) >> 4)))) ^ 0x15) & ~v192 | v192 & 0xEA;
  BYTE1(a27) = v189;
  BYTE1(a27) = v189 - *(&a26 + a77 % 0x14u + 2) + (v192 ^ 0x15);
  LOBYTE(a27) = *(&a26 + BYTE5(a43) % 0x14u + 2);
  LOBYTE(v178) = *(v87 - 115);
  LOBYTE(v171) = BYTE4(a43) & v178;
  LOBYTE(v159) = (*(v87 - 117 + (a76 - 21 * ((((135 * a76) >> 8) + (((a76 - ((135 * a76) >> 8)) & 0xFE) >> 1)) >> 4))) & ~v178 ^ 0x79) & ~(BYTE4(a43) & v178);
  v200 = (v195 ^ 0x6C) + ((2 * v195) & 0xFFFFFFD8) - 108;
  v201 = ((v195 ^ 0x6C) + ((2 * v195) & 0xD8) - 108) % 0x14u;
  LOBYTE(v195) = *(&a26 + v201 + 2) * *(&a26 + v201 + 2);
  BYTE6(a27) = (((((((v159 | v171 & 0x86) ^ 0xED) & ~v195 | v195 & 0x6B) ^ 0x94) & *(v87 - 99) ^ 0xAB) & ~(((v159 | v171 & 0x86) ^ 0x79) & v195) | ((v159 | v171 & 0x86) ^ 0x79) & v195 & 0x54) ^ 0xAB) & ((*(v91 + v129) + *(v91 + v160)) ^ *(&a26 + (v134 + 106) % 0x14u + 2));
  LOBYTE(v141) = *(v87 - 117 + (v199 - 86 - 21 * ((((135 * (v199 - 86)) >> 8) + (((v199 - 86 - ((135 * (v199 - 86)) >> 8)) & 0xFE) >> 1)) >> 4)));
  v202 = *(&a26 + v201 + 2) * BYTE3(a29);
  v203 = (BYTE4(v225) - 67) & 0x1B ^ 0x47;
  LOBYTE(v161) = (BYTE4(v225) - 67) ^ 0x1C;
  LODWORD(v201) = ((BYTE4(v225) - 67) ^ (2 * (v161 & (2 * (v161 & (2 * (v161 & (2 * (v161 & (2 * (v161 & (2 * (((2 * (BYTE4(v225) - 67)) & 0x3A ^ 6) & v161 ^ v203)) ^ v203)) ^ v203)) ^ v203)) ^ v203)) ^ v203))) ^ 0x1B;
  *(v87 - 127) ^= 2 * v202 - (((v201 >> (-v141 & 5) >> (-v141 & 2)) ^ (v201 << (v141 & 6) << (v141 & 1))) & (-54 - v227));
  v204 = *(v86 + 8 * ((63 * ((((HIDWORD(v214) ^ 0xB5D7B69C) + 1244154212) ^ ((HIDWORD(v214) ^ 0xC18C75A4) + 1047759452) ^ ((HIDWORD(v214) ^ 0x1F12F3B7) - 521335735)) != -1799958671)) ^ a1));
  return v204(v200, v199 - 86, v204, a1 ^ 0xD5Eu, v191, 234, 5, HIDWORD(v214), a2, a3, v206, v207, v208, v209, a8, v210, v211, v212, v214, v215, v216, v218, v219, v220, v221, v222, v223, v225, v227, a23, v229, v233, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_23E932DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t (*a26)(uint64_t, uint64_t, char *, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, unsigned int a44, unsigned int a45, unsigned int a46, unsigned int a47)
{
  v51 = (((v48 ^ 0xDADF2C2D) + 622908371) ^ ((v48 ^ 0x416A301E) - 1097478174) ^ ((v48 ^ 0xCE62DF14) + 832381164)) + (((a44 ^ 0xAD2EDD7D) + 1389437571) ^ ((a44 ^ 0xD08956BE) + 796305730) ^ ((a44 ^ 0x287048E4) - 678447332)) - 445927304;
  v52 = (((v50 ^ 0x54BB61AC) - 1421566380) ^ ((v50 ^ 0x8664D698) + 2040211816) ^ ((v50 ^ 0x87087413) + 2029489133)) + (((a45 ^ 0x75588031) - 1968734257) ^ ((a45 ^ 0x9E6E6535) + 1636932299) ^ ((a45 ^ 0xBEE12623) + 1092540893)) - 646571315;
  v53 = (v52 ^ 0x903943BD) & (2 * (v52 & 0xD2396B81)) ^ v52 & 0xD2396B81;
  v54 = ((2 * (v52 ^ 0x147994BF)) ^ 0x8C81FE7C) & (v52 ^ 0x147994BF) ^ (2 * (v52 ^ 0x147994BF)) & 0xC640FF3E;
  v55 = v54 ^ 0x42400102;
  v56 = (v54 ^ 0x8000FFFF) & (4 * v53) ^ v53;
  v57 = ((4 * v55) ^ 0x1903FCF8) & v55 ^ (4 * v55) & 0xC640FF3C;
  v58 = (v57 ^ 0xFC30) & (16 * v56) ^ v56;
  v59 = ((16 * (v57 ^ 0xC6400306)) ^ 0x640FF3E0) & (v57 ^ 0xC6400306) ^ (16 * (v57 ^ 0xC6400306)) & 0xC640FF30;
  v60 = v58 ^ 0xC640FF3E ^ (v59 ^ 0x4400F300) & (v58 << 8);
  a44 = v51 ^ ((v51 ^ 0xF327BF2D) + 895773433) ^ ((v51 ^ 0xDF5409DF) + 420994059) ^ ((v51 ^ 0xE8606327) + 774092531) ^ ((v51 ^ 0xFDAFFFFF) + 1005333035) ^ 0x6C6BE90D;
  a45 = v52 ^ (2 * ((v60 << 16) & 0x46400000 ^ v60 ^ ((v60 << 16) ^ 0x7F3E0000) & (((v59 ^ 0x82400C1E) << 8) & 0xC6400000 ^ (((v59 ^ 0x82400C1E) << 8) ^ 0x40FF0000) & (v59 ^ 0x82400C1E) ^ 0x6000000))) ^ 0x876F56DA;
  v61 = (((v49 ^ 0x76D1DA3) - 124591523) ^ ((v49 ^ 0xFAFC0C54) + 84145068) ^ ((v49 ^ 0xA846D2D0) + 1471753520)) + (((a46 ^ 0xD2EEA735) + 756111563) ^ ((a46 ^ 0xE941534B) + 381594805) ^ ((a46 ^ 0x6E783759) - 1853372249)) + 219741053;
  v62 = (((v47 ^ 0xB9008E44) + 1191145916) ^ ((v47 ^ 0xC65C4F6B) + 967028885) ^ ((v47 ^ 0x2A8B0208) - 713753096)) + (((a47 ^ 0x2DB9B32D) - 767144749) ^ ((a47 ^ 0xC44FE196) + 1001397866) ^ ((a47 ^ 0xBC21919C) + 1138650724)) + 507808974;
  a46 = v61 ^ ((v61 ^ 0xF047D16B) + 1859214268) ^ ((v61 ^ 0x62F46B46) - 60628585) ^ ((v61 ^ 0x4E2130FD) - 793265618) ^ ((v61 ^ 0xBDFBFFFF) + 594375984) ^ 0x34BEB608;
  a47 = v62 ^ ((v62 ^ 0xAC5EEEDA) + 557062054) ^ ((v62 ^ 0x130A749A) - 1637839386) ^ ((v62 ^ 0x327E621D) - 1089168541) ^ ((v62 ^ 0xFFBFFEDD) + 1926563747) ^ 0x2742C5A7;
  return a26(3326148414, 3326083072, &a34 + 4, a4, a28, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_23E932E04@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  v6 = (v5 - 128);
  v7 = *(result + 24);
  if (a2 == 100)
  {
LABEL_4:
    v8 = &v7[56 * *v7 + 24];
    v9 = v5 - 128;
    v10 = 33731311 * ((v5 - 128 - 2 * ((v5 - 128) & 0x3A97B22E) + 983020078) ^ 0x3B210F11);
    *(v5 - 112) = v21;
    *(v5 - 104) = v8;
    *v6 = (v2 + 1628) ^ v10;
    *(v5 - 124) = v10 + 511664400;
    *(v5 - 120) = -19729 * ((v5 - 128 - 2 * ((v5 - 128) & 0xB22E) - 19922) ^ 0xF11) + 7422;
    (*(v4 + 8 * (v2 ^ 0x190A)))(v5 - 128);
    v11 = 1317436891 * (((v9 | 0x8BE2AEA4) - v9 + (v9 & 0x741D5158)) ^ 0x7EC378D1);
    *(v5 - 120) = v11 ^ 0x6D1A3EDE;
    *(v5 - 112) = &v17;
    *v6 = v21;
    *(v5 - 104) = v2 + 546 + v11;
    (*(v4 + 8 * (v2 ^ 0x193D)))(v5 - 128);
    v12 = 1317436891 * ((v9 & 0x6808D58D | ~(v9 | 0x6808D58D)) ^ 0x62D6FC07);
    *(v5 - 112) = &v18;
    *(v5 - 120) = v12 ^ 0x6D1A3EDE;
    *v6 = v21;
    *(v5 - 104) = v2 + 546 + v12;
    (*(v4 + 8 * (v2 ^ 0x193D)))(v5 - 128);
    *v6 = v2 - 2048652491 * ((v5 - 829513006 - 2 * ((v5 - 128) & 0xCE8EA352)) ^ 0xB38BE564) - 2247;
    *(v5 - 120) = v21;
    *(v5 - 112) = v3;
    return (*(v4 + 8 * (v2 + 1832)))(v5 - 128);
  }

  if (a2 != 3)
  {
    if (a2 != 2)
    {
      return result;
    }

    goto LABEL_4;
  }

  v13 = v5 - 128;
  *v6 = v20;
  *(v5 - 120) = (v2 - 1451034454) ^ (1358806181 * ((v5 - 128) ^ 0xBD6386ED));
  (*(v4 + 8 * (v2 ^ 0x1969)))(v5 - 128);
  v14 = 2048652491 * ((-781251375 - (v13 | 0xD16F0CD1) + (v13 | 0x2E90F32E)) ^ 0x5395B518);
  *(v5 - 104) = v14 ^ 0x2CA5FE4;
  *v6 = &v17;
  *(v5 - 120) = v2 - 1117229500 + v14;
  *(v5 - 112) = v20;
  (*(v4 + 8 * (v2 ^ 0x1910)))(v5 - 128);
  v15 = 2048652491 * (((v13 | 0x1E266F49) - v13 + (v13 & 0xE1D990B0)) ^ 0x6323297F);
  *v6 = &v18;
  *(v5 - 112) = v20;
  *(v5 - 104) = v15 ^ 0x2CA5FE4;
  *(v5 - 120) = v2 - 1117229500 + v15;
  (*(v4 + 8 * (v2 ^ 0x1910)))(v5 - 128);
  v16 = &v7[56 * *v7];
  v19[19] = v16[43] ^ 0xD2;
  v19[18] = v16[42] ^ 0xD2;
  v19[17] = v16[41] ^ 0xD2;
  v19[16] = v16[40] ^ 0xD2;
  v19[15] = v16[39] ^ 0xD2;
  v19[14] = v16[38] ^ 0xD2;
  v19[13] = v16[37] ^ 0xD2;
  v19[12] = v16[36] ^ 0xD2;
  v19[11] = v16[35] ^ 0xD2;
  v19[10] = v16[34] ^ 0xD2;
  v19[9] = v16[33] ^ 0xD2;
  v19[8] = v16[32] ^ 0xD2;
  v19[7] = v16[31] ^ 0xD2;
  v19[6] = v16[30] ^ 0xD2;
  v19[5] = v16[29] ^ 0xD2;
  v19[4] = v16[28] ^ 0xD2;
  v19[3] = v16[27] ^ 0xD2;
  v19[2] = v16[26] ^ 0xD2;
  v19[1] = v16[25] ^ 0xD2;
  v19[0] = v16[24] ^ 0xD2;
  *(v5 - 120) = v20;
  *(v5 - 112) = v19;
  *(v5 - 104) = v3;
  *v6 = (v2 + 1023) ^ (33731311 * (((v5 - 128) & 0x816C352A | ~((v5 - 128) | 0x816C352A)) ^ 0x7F2577EA));
  return (*(v4 + 8 * (v2 ^ 0x19A2)))(v5 - 128);
}

uint64_t sub_23E9332BC@<X0>(uint64_t a1@<X8>)
{
  v5 = ((v3 + 1094) ^ 0xFFFFFFFFFFFFFA78) + v2;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((3680 * (v5 == 0)) ^ (v3 + 48))))();
}

uint64_t sub_23E9333A4@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W7>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int *a23, void *a24)
{
  v31 = (v26 + (a2 - 1));
  v32 = ((*(*a24 + (*a23 & v27)) ^ v31) & ((211 * (v25 ^ a3)) ^ a1)) * (((v25 ^ a3) + 286) ^ 0x44BDA150);
  v33 = 1153278077 * (v32 ^ HIWORD(v32));
  LOBYTE(v33) = *(*(v28 + 8 * (v25 ^ 0x83D)) + (v33 >> 24) - 8) ^ *(*(v28 + 8 * (v25 & v30)) + (v33 >> 24) - 8) ^ *(*(v28 + 8 * (v25 ^ 0x91E)) + (v33 >> 24) - 6) ^ v33 ^ (109 * BYTE3(v33));
  *v31 = v33 ^ (a4 >> v24);
  return (*(v29 + 8 * ((848 * (a2 == (v33 != (a4 >> v24)))) ^ v25)))();
}

uint64_t sub_23E9334E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, int a17)
{
  v20 = (((&a14 | 0xFF02FE0A) - (&a14 & 0xFF02FE0A)) ^ 0x426178E7) * v17;
  a14 = a11;
  a16 = (a10 ^ 0x2F74B7FF) + ((2 * a10) & 0x5EE96FFE) - 102769824 + v20;
  a17 = v20 ^ 0x835;
  v21 = (*(v18 + 33032))(&a14);
  return (*(v18 + 8 * ((63 * (((a15 == v19) ^ 0x3D) & 1)) ^ 0x802)))(v21);
}

uint64_t sub_23E9335B4()
{
  v8 = v7 - 1316 + (**(v6 + 8) ^ v2) - (**(v5 + 8) ^ v2) - 1378;
  **(v0 + 8) = v8 + v2 - (v4 & (2 * v8));
  return (*(v3 + 8 * ((1042 * (v1 == 1)) ^ (v7 - 514))))();
}

uint64_t sub_23E933980@<X0>(char a1@<W1>, char a2@<W8>)
{
  v7 = a2 + 2;
  v8 = (v2 - 2);
  *v8 = (v7 ^ a1) * (v7 + 17);
  *(v8 - 1) = (v7 + ((v4 - 111) ^ 0xF7)) * (v7 ^ 0xBB);
  return (*(v6 + 8 * (((v3 != 0) * v5) ^ v4)))();
}

uint64_t sub_23E933CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33)
{
  v39 = v33;
  v40 = (v36 + 417265639) & 0xE7210E6C;
  v41 = ((v40 - 512190851) ^ v34) & (2 * (v34 & a8)) ^ v34 & a8;
  v42 = ((2 * (v34 ^ 0x6279BC81)) ^ 0x7F244E6) & (v34 ^ 0x6279BC81) ^ (2 * (v34 ^ 0x6279BC81)) & 0x83F92272;
  v43 = v42 ^ 0x80092211;
  v44 = (v42 ^ 0x2090041) & (4 * v41) ^ v41;
  v45 = ((4 * v43) ^ 0xFE489CC) & v43 ^ (4 * v43) & 0x83F92270;
  v46 = (v45 ^ 0x3E00053) & (16 * v44) ^ v44;
  v47 = ((16 * (v45 ^ 0x80192233)) ^ 0x3F922730) & (v45 ^ 0x80192233) ^ (16 * (v45 ^ 0x80192233)) & 0x83F92270;
  v48 = v46 ^ 0x83F92273 ^ (v47 ^ 0x3902243) & (v46 << 8);
  v49 = v34 ^ (2 * ((v48 << 16) & 0x3F90000 ^ v48 ^ ((v48 << 16) ^ 0x22730000) & (((v47 ^ 0x80690043) << 8) & 0x3F90000 ^ 0x2D90000 ^ (((v47 ^ 0x80690043) << 8) ^ 0x79220000) & (v47 ^ 0x80690043)))) ^ 0xCDBE4B7E;
  v50 = (((((v38 - 128) | 0xC99A22F0) ^ 0xFFFFFFFE) - (~(v38 - 128) | 0x3665DD0F)) ^ 0x8B065BE2) * a7;
  *(v38 - 108) = v49 - v50;
  *(v38 - 128) = v35 - v50 + v36;
  *(v38 - 120) = &a24;
  v51 = (*(v37 + 8 * (v36 + 4136)))(v38 - 128);
  return (*(v37 + 8 * ((14 * ((a33 & ((v40 + 1336) ^ 0xBA3)) + v39 <= ((v40 - 516) ^ 0x45F))) ^ v40)))(v51);
}

uint64_t sub_23E933E80()
{
  v7 = v2 - 2;
  v8 = v0 + 2;
  v9 = (v4 + v7);
  *v9 = (v1 + v8) * (v8 ^ v3);
  *(v9 - 1) = (v8 ^ 0xBB) * (v8 + 18);
  return (*(v5 + 8 * (((v7 == 1) << 6) | ((v7 == 1) << 7) | v6)))();
}

uint64_t sub_23E9342EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int *a25)
{
  (*(v28 + 8 * (v25 ^ 0x1494)))(*a25, v26, 2048);
  v29 = (*(v28 + 8 * (v25 + 3035)))(*a25, &STACK[0x2A0], v27 + LODWORD(STACK[0x484]) + 19 * (v25 ^ 0x41A) - 3439, 1) == 0;
  return (*(v28 + 8 * ((22 * v29) ^ v25)))();
}

uint64_t sub_23E934390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *(a1 + 16);
  *(v7 - 112) = veorq_s8(**(a1 + 8), xmmword_23EAA1690);
  if (v5)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  v11 = *(v6 + 8 * ((57 * v10) ^ a5));
  *(v7 - 152) = -42900;
  return v11(a1, a2);
}

uint64_t sub_23E934484(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  v38 = v35 + a2 - 120;
  v39 = 956911519 * ((1654347944 - ((v37 - 120) | 0x629B58A8) + ((v37 - 120) | 0x9D64A757)) ^ 0xE232ABE9);
  *(v37 - 104) = v39 + a12 + 1311361230;
  *(v37 - 112) = &a26;
  *(v37 - 120) = v39 + a2 + 2439;
  v40 = (*(v36 + 8 * (a2 ^ 0x1078)))(v37 - 120);
  v41 = a35 & (v38 - 2073640687);
  *(&a26 + v41) = 82;
  return (*(v36 + 8 * ((2209 * (v41 > 0x37)) ^ a2)))(v40);
}

void sub_23E934968(uint64_t a1@<X8>)
{
  *(v1 + 392) = a1;
  *(v1 + 624) = a1;
  LODWORD(STACK[0x40C]) = 2039618200;
  JUMPOUT(0x23E99E5D4);
}

uint64_t sub_23E934980(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37)
{
  v40 = &a37 + v37 - 16;
  v41 = (v39 + v37 - 16);
  v42 = *v41;
  *(v40 - 1) = *(v41 - 1);
  *v40 = v42;
  return (*(v38 + 8 * ((((v37 & 0x7FFFFFE0) != 32) * ((17 * (a1 ^ 0xF36)) ^ 0xC9C)) | (a1 - 3461))))();
}

uint64_t sub_23E934A58@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x20C]) = 2;
  *(v2 + 80) = 0;
  LODWORD(STACK[0x314]) = 0;
  LODWORD(STACK[0x334]) = 0;
  return (*(v3 + 8 * (((((a1 + 1728723559) & 0x98F5CD7F) - 3382) * ((v1 >> 1) & 1)) ^ a1)))();
}

uint64_t sub_23E934AA0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v26 = v25 == a1;
  (*(v24 + 8 * (v23 | 0x690)))();
  return (*(v24 + 8 * (((v23 + ((v23 - 1903958864) & 0x717C16FF) - 3472) * v26) ^ v23)))(a23, a18);
}

void sub_23E934B00()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = *(&off_28512D4A0 + ((-57 * ((qword_27E37D680 - dword_27E37D418) ^ 0x68)) ^ byte_23EA93AB0[byte_23EA860F0[(-57 * ((qword_27E37D680 - dword_27E37D418) ^ 0x68))] ^ 0xD2]) - 70);
  v1 = *(v0 - 4);
  v2 = off_28512E030;
  v3 = off_28512D5E8;
  v4 = *(&off_28512D4A0 + (*(off_28512D5E8 + (*(off_28512E030 + (-57 * ((qword_27E37D680 - v1) ^ 0x68))) ^ 0x10u)) ^ (-57 * ((qword_27E37D680 - v1) ^ 0x68))) + 10);
  v5 = (*(v4 - 4) ^ v1) - &v10;
  v6 = 1773100999 * v5 - 0x110D1848A5CC1228;
  v7 = 1773100999 * (v5 ^ 0xB2DEEC90F0DCD368);
  *(v0 - 4) = v6;
  *(v4 - 4) = v7;
  LOBYTE(v7) = -57 * (*(v0 - 4) ^ 0x68 ^ v7);
  **(&off_28512D4A0 + (v7 ^ v3[v2[v7] ^ 0x10]) + 351) = -1720814856;
  LOBYTE(v7) = -57 * ((*(v4 - 4) - *(v0 - 4)) ^ 0x68);
  v8 = *(&off_28512D4A0 + ((-57 * ((qword_27E37D680 - dword_27E37D418) ^ 0x68)) ^ byte_23EA861F0[byte_23EA7A950[(-57 * ((qword_27E37D680 - dword_27E37D418) ^ 0x68))] ^ 0x56]) + 137);
  v9 = (*(v8 + 8 * ((*(off_28512E230 + (*(off_28512E0A0 + v7 - 4) ^ 0x39u) - 8) ^ v7) + 4022)))(512, 0x100004077774924);
  **(&off_28512D4A0 + (*(off_28512D508 + ((*off_28512E130)[(-57 * ((*(v4 - 4) + *(v0 - 4)) ^ 0x68))] ^ 0xD2u) - 4) ^ (-57 * ((*(v4 - 4) + *(v0 - 4)) ^ 0x68))) - 79) = v9;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23E934D60@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + v1 + 394 - 653;
  *(v3 + v5) = *(a1 + v5) - ((2 * *(a1 + v5)) & 0xA4) - 46;
  return (*(v4 + 8 * ((3142 * (v5 == 0)) ^ v1)))();
}

uint64_t sub_23E934E24(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(v5 + 48 * v7 + 36);
  v10 = v8 != a3 && (((v4 - 2308) | 0xE43) ^ (a4 + 287)) + v8 < ((v4 + 18884068) | 0x24414101u) + 1520340730;
  return (*(v6 + 8 * ((1138 * v10) ^ v4)))();
}

uint64_t sub_23E934E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v16 = (v13 - 2859) | 0xB20;
  *(v12 + v15 - 1) = ((((v16 + 77) & 0x47) - 77) ^ &a12) * (&a12 + 17);
  *(v12 + v15 - 2) = (&a12 ^ 0xBB) * (&a12 + 18);
  return (*(v14 + 8 * ((15 * ((v12 & 0xFFFFFFFE) != 2)) ^ v16)))();
}

uint64_t sub_23E934F1C(uint64_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v14 = v9 + 8;
  *(a1 + (v14 ^ a5 ^ v12) + v8) = vadd_s8(vsub_s8(*(v10 + (v14 ^ a5 ^ v12) + v8), vand_s8(vadd_s8(*(v10 + (v14 ^ a5 ^ v12) + v8), *(v10 + (v14 ^ a5 ^ v12) + v8)), a2)), a3);
  return (*(v13 + 8 * (((a8 == v14) * a6) ^ v11)))();
}

uint64_t sub_23E934F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  *(a1 + v8) = *(v6 + v8) ^ *(v3 + (v8 & 0xF)) ^ *((v8 & 0xF) + v2 + 3) ^ (127 * (v8 & 0xF)) ^ *((v8 & 0xF) + a2 + 4) ^ 0xD2;
  return (*(v7 + 8 * ((885 * (v8 == (v4 ^ 0x439))) ^ v4)))();
}

uint64_t sub_23E934FF0()
{
  v0.n128_u64[0] = 0xA4A4A4A4A4A4A4A4;
  v0.n128_u64[1] = 0xA4A4A4A4A4A4A4A4;
  v1.n128_u64[0] = 0xD2D2D2D2D2D2D2D2;
  v1.n128_u64[1] = 0xD2D2D2D2D2D2D2D2;
  return sub_23E93501C(v0, v1);
}

uint64_t sub_23E93501C@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v11 = ~v8 + v4;
  v12 = *(v3 + v11 - 15);
  v13 = *(v3 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a2)), a3);
  *(v14 - 31) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a2)), a3);
  return (*(v10 + 8 * (((v8 + v6 - 1301 == v5) * v9) ^ v7)))();
}

uint64_t sub_23E9350B8(uint64_t a1)
{
  v6 = v2 + v1;
  if (v6 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -v6;
  }

  if (v3 >= 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = -v3;
  }

  return (*(v5 + 8 * (((v4 + 1899) * (v7 > v8)) ^ v4)))(a1, (v4 + 2048));
}

uint64_t sub_23E935114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = *(v13 + 16);
  v21 = ((&a11 & 0xC60438D8 | ~(&a11 | 0xC60438D8)) ^ 0x46ADCB99) * v16;
  a12 = v19;
  LODWORD(a11) = v18 - 679 + v21;
  HIDWORD(a11) = v17 - v21 + 10;
  (*(v14 + 8 * (v18 + 949)))(&a11);
  v22 = 914963389 * ((1904479570 - (&a11 | 0x71840D52) + (&a11 | 0x8E7BF2AD)) ^ 0x6F972BCA);
  v23 = (*(v15 + 16) - ((2 * *(v15 + 16)) & 0x84F54776) - 1032150085) ^ v22;
  LODWORD(a12) = (v18 - 1219619505) ^ v22;
  HIDWORD(a12) = v23;
  a11 = v15 + 80;
  (*(v14 + 8 * (v18 + 1067)))(&a11);
  v24 = 914963389 * ((&a11 - 718752509 - 2 * (&a11 & 0xD528B503)) ^ 0x34C46C64);
  v25 = (*(v15 + 20) - ((2 * *(v15 + 20)) & 0x84F54776) - 1032150085) ^ v24;
  LODWORD(a12) = (v18 - 1219619505) ^ v24;
  HIDWORD(a12) = v25;
  a11 = v15 + 84;
  (*(v14 + 8 * (v18 ^ 0x1C2B)))(&a11);
  a12 = v15;
  a13 = v19;
  LODWORD(a11) = 2008441969 * (((&a11 | 0x263CFBAD) + (~&a11 | 0xD9C30452)) ^ 0x9D2D160A) + 1624351059 + v18 + 394;
  (*(v14 + 8 * (v18 + 975)))(&a11);
  v26 = 956911519 * ((&a11 - 832980550 - 2 * (&a11 & 0xCE59B9BA)) ^ 0xB10FB504);
  a12 = v15;
  LODWORD(a11) = v18 - 679 + v26;
  HIDWORD(a11) = 536440882 - v26;
  v27 = (*(v14 + 8 * (v18 + 949)))(&a11);
  *v20 = *v15;
  v20[1] = *(v15 + 1);
  v20[2] = *(v15 + 2);
  v20[3] = *(v15 + 3);
  v20[4] = *(v15 + 4);
  v20[5] = *(v15 + 5);
  v20[6] = *(v15 + 6);
  v20[7] = *(v15 + 7);
  v20[8] = *(v15 + 8);
  v20[9] = *(v15 + 9);
  v20[10] = *(v15 + 10);
  v20[11] = *(v15 + 11);
  v20[12] = *(v15 + 12);
  v20[13] = *(v15 + 13);
  v20[14] = *(v15 + 14);
  v20[15] = *(v15 + 15);
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  return (*(v14 + 8 * v18))(v27);
}

uint64_t sub_23E935400()
{
  v5 = (v1 + v4 + 41);
  *(v5 - 1) = 0u;
  *v5 = 0u;
  return (*(v3 + 8 * ((((v0 & 0xFFFFFFE0) == 32) * ((v2 ^ 0xB07) - 2667)) ^ (v2 + 3167))))();
}

uint64_t sub_23E935538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, int8x8_t a7@<D1>)
{
  v13 = a1 - 8;
  v15.val[0].i64[0] = (v10 + v13 - 1) & 0xF;
  v15.val[0].i64[1] = (v10 + v13 + v11 - 75) & 0xF;
  v15.val[1].i64[0] = (v10 + v13 + 13) & 0xF;
  v15.val[1].i64[1] = (v10 + v13 + 12) & 0xF;
  v15.val[2].i64[0] = (v10 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v10 + v13 + 10) & 0xF;
  v15.val[3].i64[0] = (v10 + v13 + 9) & 0xF;
  v15.val[3].i64[1] = (v10 + v13) & 0xF ^ 8;
  *(a2 + v13) = veor_s8(veor_s8(veor_s8(*(v9 + v15.val[0].i64[0] - 7), *(a2 + v13)), veor_s8(*(v7 + v15.val[0].i64[0] - 7), *(v15.val[0].i64[0] + v8 - 4))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a6), a7)));
  return (*(v12 + 8 * (((a5 == v13) * a4) ^ a3)))();
}

uint64_t sub_23E935540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a19 = (1358806181 * (((&a17 | 0x1C6E9B71) - &a17 + (&a17 & 0xE3916488)) ^ 0xA10D1D9C)) ^ 0xD15;
  a18 = &a11;
  v22 = (*(v21 + 33064))(&a17);
  return (*(v21 + 8 * ((103 * (a17 == v20)) ^ v19)))(v22);
}

uint64_t sub_23E9355C8@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  *v2 = v2[3];
  v2[3] = v4;
  v5 = v2[1];
  v2[1] = v2[2];
  v2[2] = v5;
  return (*(a1 + 8 * (v3 ^ (4 * (((v3 - 1999) ^ 0xFFFFFA93) + v1 == 1752281253)))))();
}

uint64_t sub_23E93561C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v65 = (a62 ^ 0xF2E17FA1) & (2 * ((a5 ^ 0x703 ^ a51) & a62)) ^ (a5 ^ 0x703 ^ a51) & a62;
  v66 = ((2 * (a62 ^ 0x3A6397E1)) ^ 0xBD55D78A) & (a62 ^ 0x3A6397E1) ^ (2 * (a62 ^ 0x3A6397E1)) & 0xDEAAEBC4;
  v67 = v66 ^ 0x42AA2845;
  v68 = (v66 ^ 0xD480C9C5) & (4 * v65) ^ v65;
  v69 = ((4 * v67) ^ 0x7AABAF14) & v67 ^ (4 * v67) & 0xDEAAEBC4;
  v70 = (v69 ^ 0x5AAAAB00) & (16 * v68) ^ v68;
  v71 = ((16 * (v69 ^ 0x840040C1)) ^ 0xEAAEBC50) & (v69 ^ 0x840040C1) ^ (16 * (v69 ^ 0x840040C1)) & a45;
  v72 = v70 ^ 0xDEAAEBC5 ^ (v71 ^ 0xCAAAA800) & (v70 << 8);
  *(STACK[0x4F0] + 4 * (((a62 ^ (2 * ((v72 << 16) & 0x5EAA0000 ^ v72 ^ ((v72 << 16) ^ 0x6BC50000) & (((v71 ^ 0x14004385) << 8) & 0x5EAA0000 ^ 0x54000000 ^ (((v71 ^ 0x14004385) << 8) ^ 0x2AEB0000) & (v71 ^ 0x14004385))))) >> 2) ^ 0x33272AEB)) = v64;
  return (*(v62 + 8 * ((233 * (a62 + 4 + v63 < (a5 ^ 0x703) - 2559 + (a5 ^ 0x16A) - 3122)) ^ a5 ^ 0x703)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

uint64_t sub_23E935784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25)
{
  v26 = a5 + 16;
  *(v25 - 124) = a24 ^ 0xABAC2E58;
  v252 = a23 ^ 0xB70307;
  *(v25 - 120) = v26;
  v251 = *(v25 - 116) < 0x95850769;
  v27 = (a17 + v26);
  v28 = *(a15 + (v27[1] ^ 0xC1));
  v29 = v28 ^ (v28 >> 5) ^ (v28 >> 3);
  v30 = *(a13 + (v27[12] ^ (a25 - 3)));
  v31 = v30 & 0xFC;
  v32 = v30 >> 2;
  v33 = ((v30 >> 2) & 2 | 0x19) ^ v30 & (((a25 ^ 0x4FE) - 1565554517) & 0x5D50737C ^ 0x73);
  v34 = *(a13 + (*v27 ^ 9));
  v35 = (v32 & 0x18 | 0x26) ^ (v31 ^ 0x4E) & 0x34 ^ v33 & 9 ^ (v33 ^ 0xD2) & (v31 ^ 0x4E);
  v36 = (v34 >> 2) & 0x1A ^ v34;
  v37 = ((v36 << 24) ^ 0x48FF0905) & ((v29 << 16) ^ 0x5AE80905) | (v36 << 24) & 0xA5000000;
  LOBYTE(v32) = v27[14] ^ 0xC9 ^ *(a12 + (v27[14] ^ 0xC6));
  v38 = (v32 - ((2 * v32) & 0xCC) - 26) << 8;
  v39 = ((v35 << 24) ^ 0x132B8D12) & ~v38 | v38 & 0x7200;
  v40 = *(a15 + (v27[13] ^ 0xAFLL));
  v41 = (v40 ^ (v40 >> 5) ^ (v40 >> 3)) << 16;
  v42 = *(a14 + (v27[15] ^ 0xF2)) - 35;
  v43 = *(a13 + (v27[4] ^ 0x4FLL));
  v44 = (((v43 >> 2) & 0x1A ^ v43) << 24) ^ 0x30000000;
  v45 = v44 - 53383557 - (v44 >> 26 << 27);
  v46 = *(a15 + (v27[5] ^ 0x6CLL));
  v47 = (((*(a12 + (v27[2] ^ 0xB5)) ^ v27[2]) << 8) ^ 0xD8E01594) & (v37 ^ 0xA170F6B1) | v37 & 0x271F0000;
  v48 = (*(a14 + (((-v27[3] ^ 0xD6244B29 ^ (114 - (v27[3] ^ 0x72)) ^ (v27[3] - 702264535 - ((2 * v27[3]) & 0x52))) + 114) ^ 0xA9)) - 35) & 0x54 | ~(*(a14 + (((-v27[3] ^ 0xD6244B29 ^ (114 - (v27[3] ^ 0x72)) ^ (v27[3] - 702264535 - ((2 * v27[3]) & 0x52))) + 114) ^ 0xA9)) - 35) & ((v37 ^ 0xB1) & 0x94 ^ 0x3F);
  LOBYTE(v37) = *(a14 + (v27[11] ^ 0xADLL)) - 35;
  v49 = (~v37 | 0xFFFFFF03) & (((*(a12 + (v27[10] ^ 0x66)) ^ v27[10]) << 8) ^ 0xB3ED9E6C);
  v50 = *(a15 + (v27[9] ^ 0x67));
  v51 = *(a13 + (v27[8] ^ 0xB8));
  v52 = v49 & 0x1040240 ^ 0xCC51FD47 ^ (((v50 ^ (v50 >> 5) ^ (v50 >> 3)) << 16) ^ 0xCECAFDBF) & ((v49 | v37 & 0x93) ^ 0x7C128ED3);
  v53 = *(a14 + (v27[7] ^ 0xE8)) - 35;
  v54 = ((~v53 | 0xDBFF4100) & (((v46 ^ (v46 >> 5) ^ (v46 >> 3)) << 16) ^ 0xDBC1419E) | v53 & 0x61) ^ ((v45 ^ 0xFCD16E7B) + ((v27[6] ^ 0x31 ^ *(a12 + (v27[6] ^ 0xD2))) << 8));
  v248 = (v41 & 0xE90000 ^ 0x34462926 ^ (v39 ^ 0x683DD465) & (v41 ^ 0xFFE5FFFF)) & (~v42 | 0xFFFFFF00) | v42 & 0xAE;
  v55 = *(&off_28512D4A0 + (a25 ^ 0x2FB)) - 12;
  v56 = *(&off_28512D4A0 + (a25 ^ 0x4FE) - 1621) - 12;
  v250 = a25 ^ 0x4FE;
  v57 = *(&off_28512D4A0 + (a25 ^ 0x3BA));
  v58 = *&v56[4 * ((*(a12 + (v27[10] ^ 0x66)) ^ v27[10]) ^ 0x7E)] ^ 0x1101632D;
  v59 = *(&off_28512D4A0 + (a25 ^ 0x3F3)) - 4;
  v60 = HIBYTE(v45) ^ 0x4E;
  v61 = *&v55[4 * (v36 ^ 0x35)] ^ (((v248 ^ 0x9A18CA28) >> 16) + 1827495499) ^ v54 ^ v58 ^ *(v57 + 4 * (v54 ^ 0x6Du)) ^ *&v59[4 * (((v248 ^ 0x9A18CA28) >> 16) ^ 0x39)] ^ (16 * v58);
  v62 = v61 ^ ((v248 ^ 0x9A18CA28) >> 16);
  v63 = *&v56[4 * ((v248 ^ 0xCA28) >> 8)] ^ 0xE7D35A4B;
  v64 = ((BYTE2(v47) ^ 0x4A) + 1827495499) ^ BYTE2(v47) ^ 0x4A ^ v52 ^ *&v55[4 * v60] ^ *(v57 + 4 * (v37 ^ 0xB8u)) ^ *&v59[4 * (BYTE2(v47) ^ 0x73)] ^ v63 ^ (16 * v63);
  v65 = BYTE2(v54) ^ 0x34;
  v66 = *&v56[4 * ((*(a12 + (v27[2] ^ 0xB5)) ^ v27[2]) ^ 0xEA)] ^ 0x102986D3;
  v67 = (v65 + 1827495499) ^ *&v55[4 * ((v51 >> 2) & 0x1A ^ v51 ^ 0x84)] ^ v248 ^ 0x28 ^ *&v59[4 * (BYTE2(v54) ^ 0xD)] ^ *(v57 + 4 * (v42 ^ 0x94u)) ^ v66 ^ (16 * v66);
  v68 = v67 ^ v65;
  v69 = *&v59[4 * (BYTE2(v52) ^ 0x63)];
  v70 = ((BYTE2(v52) ^ 0x5A) + 1827495499) ^ BYTE2(v52) ^ 0x5A;
  v71 = *&v56[4 * (BYTE1(v54) ^ 0x5F)] ^ 0x3AB4AE46;
  v72 = *&v55[4 * ((v248 ^ 0x9A18CA28) >> 24)] ^ v48 ^ *(v57 + 4 * ((*(a14 + (((-v27[3] ^ 0xD6244B29 ^ (114 - (v27[3] ^ 0x72)) ^ (v27[3] - 702264535 - ((2 * v27[3]) & 0x52))) + 114) ^ 0xA9)) - 35) ^ 0xB7u)) ^ v71 ^ (16 * v71) ^ ((-v70 ^ 0x1A6D1179 ^ (v70 + 443355513 - ((2 * v70) & 0x10DA22F2)) ^ (v69 - (v69 ^ v70))) + v69);
  v73 = *&v56[4 * (BYTE1(v67) ^ 0x17)] ^ 0x4E128D6B;
  v74 = *&v59[4 * (BYTE2(v72) ^ 0x2F)] ^ *&v55[4 * (HIBYTE(v61) ^ 0x8A)] ^ v73 ^ (16 * v73) ^ BYTE2(v72) ^ 0x16 ^ ((BYTE2(v72) ^ 0x16) + 1827495499);
  v75 = *(v57 + 4 * (v64 ^ 6u)) ^ v64;
  v76 = (-(v74 ^ 0x374F5C0) ^ 0x7D36FB0A ^ ((v75 ^ 0x28526C74) - (v75 ^ 0x2B2699B4 ^ v74)) ^ ((v74 ^ 0x374F5C0) + 2100755210 - ((2 * (v74 ^ 0x374F5C0)) & 0xFA6DF614))) + (v75 ^ 0x28526C74);
  v77 = *&v56[4 * (BYTE1(v72) ^ 0x21)] ^ 0x18781429;
  v78 = (((v61 >> 15) & 0x96 ^ 4) + (BYTE2(v61) ^ 0x6CED5E49)) ^ BYTE2(v61) ^ v68 ^ *&v55[4 * (HIBYTE(v64) ^ 0x1A)] ^ *&v59[4 * (BYTE2(v61) ^ 0x3B)] ^ *(v57 + 4 * ((v68 ^ 0x78) + ((2 * v68) & 0x1DA ^ 0xFFFFFF2F) + 238)) ^ v77 ^ (16 * v77);
  v79 = ((BYTE2(v64) ^ 0xCE) + 1827495499) ^ BYTE2(v64) ^ 0xCE ^ v72;
  v80 = v78 ^ 0xAA63;
  v81 = *(v57 + 4 * (v72 ^ 0x4Au));
  v82 = *&v55[4 * (HIBYTE(v72) ^ 0xF7)];
  v83 = *&v56[4 * (BYTE1(v61) ^ 0x34)] ^ 0xF7E496A0;
  v84 = v79 ^ *&v55[4 * (HIBYTE(v67) ^ 0xF9)] ^ *&v59[4 * (BYTE2(v64) ^ 0xF7)] ^ v81 ^ v83 ^ (16 * v83);
  v85 = BYTE2(v67) ^ 0x44;
  v86 = *&v59[4 * (BYTE2(v67) ^ 0x7D)] ^ (v85 + 1827495499) ^ (((v82 - (v82 ^ 0x25E352BB)) ^ 0xFFFFFFFE) + v82);
  v87 = *&v56[4 * (BYTE1(v64) ^ 0x84)] ^ 0xF7E496A0;
  v88 = v86 & 0x2000000;
  if ((v86 & 0x2000000 & v87) != 0)
  {
    v88 = -v88;
  }

  v89 = v88 + v87;
  v90 = v76 ^ 0x37BBECF3;
  v91 = v85 ^ v62 ^ *(v57 + 4 * (v62 ^ 0x96u)) ^ (16 * v87) ^ v86 & 0xFDFFFFFF ^ v89;
  v92 = v78 ^ 0x81087E72;
  v93 = BYTE2(v84) ^ 0xBC;
  v94 = v91 ^ 0x349FFDC1;
  v95 = (v84 ^ 0xEDBC4D2B) >> 24;
  v96 = *&v56[4 * (BYTE1(v84) ^ 0xBE)] ^ 0xF7E496A0;
  v97 = *&v55[4 * ((v76 ^ 0x37BBECF3) >> 24)] ^ v92 ^ *&v59[4 * (BYTE2(v94) ^ 0x39)] ^ *(v57 + 4 * (v80 ^ 0xFCu)) ^ v96 ^ (16 * v96) ^ (BYTE2(v94) + 1827495499);
  v98 = v95 - 131;
  if (v95 < 0x83)
  {
    v98 = (v84 ^ 0xEDBC4D2B) >> 24;
  }

  if (v95 <= 0x82)
  {
    v99 = 0;
  }

  else
  {
    v99 = 131;
  }

  v100 = v98 + v99;
  v101 = *&v56[4 * BYTE1(v94)] ^ 0xF7E496A0;
  v102 = *&v55[4 * HIBYTE(v92)] ^ v84 ^ 0x2B ^ BYTE2(v90) ^ (BYTE2(v90) + 1827495499) ^ *(v57 + 4 * (v84 ^ 0xC6u)) ^ v101 ^ *&v59[4 * (BYTE2(v90) ^ 0x39)] ^ (16 * v101);
  v103 = HIBYTE(v94);
  v104 = v97 ^ BYTE2(v94);
  v105 = *&v56[4 * BYTE1(v90)] ^ 0xF7E496A0;
  v106 = (BYTE2(v92) + 1827495499) ^ BYTE2(v92) ^ *&v59[4 * (BYTE2(v92) ^ 0x39)] ^ v91 ^ 0xC1 ^ *&v55[4 * (v100 ^ 0x1A)] ^ *(v57 + 4 * (v91 ^ 0x2Cu)) ^ v105 ^ (16 * v105);
  v107 = *&v56[4 * (HIBYTE(v80) ^ 0x27)] ^ 0xF7E496A0;
  v108 = v93 ^ (v93 + 1827495499) ^ v76 ^ 0xF3 ^ *&v59[4 * (v93 ^ 0x39)] ^ *(v57 + 4 * (v76 ^ 0x1Eu)) ^ v107 ^ (*&v55[4 * v103] + 635654843 - ((2 * *&v55[4 * v103]) & 0x4BC6A576)) ^ (16 * v107);
  v109 = v102 ^ 0x3137CD2C;
  v110 = ((v108 ^ 0x454288DC) >> 16);
  v111 = *&v55[4 * (HIBYTE(v97) ^ 0xD4)] ^ v102 ^ 0x2C ^ *&v59[4 * (v110 ^ 0x39)] ^ *(v57 + 4 * (v102 ^ 0xC1u));
  v112 = *&v56[4 * (((v106 ^ 0x5277) >> 8) ^ 0xF3)] ^ 0xF7E496A0;
  v113 = v111 ^ v112 ^ (16 * v112) ^ (v110 + 1827495499);
  v114 = *&v56[4 * (BYTE1(v108) ^ 0x7B)] ^ 0xF7E496A0;
  v115 = v106 ^ 0x77 ^ ((v104 ^ 0xCE4BF1A2) >> 16) ^ (((v104 ^ 0xCE4BF1A2) >> 16) + 1827495499) ^ *&v55[4 * HIBYTE(v109)] ^ *(v57 + 4 * (v106 ^ 0x9Au)) ^ v114 ^ *&v59[4 * (((v104 ^ 0xCE4BF1A2) >> 16) ^ 0x39)] ^ (16 * v114);
  v116 = v113 ^ v110;
  v117 = *&v56[4 * (BYTE1(v97) ^ 2)] ^ 0xF7E496A0;
  v118 = *&v55[4 * (HIBYTE(v108) ^ 0x5F)];
  v119 = (BYTE2(v109) + 1827495499) ^ BYTE2(v109) ^ v108 ^ 0xDC ^ *&v55[4 * ((v106 ^ 0xFC815277) >> 24)] ^ *&v59[4 * (BYTE2(v109) ^ 0x39)] ^ *(v57 + 4 * (v108 ^ 0x31u)) ^ v117 ^ (16 * v117);
  v120 = *&v56[4 * BYTE1(v109)] ^ 0xF7E496A0;
  v121 = ((v106 ^ 0xFC815277) >> 16) ^ 0x25E352BB ^ (((v106 ^ 0xFC815277) >> 16) + 1827495499) ^ v118 ^ *&v59[4 * (((v106 ^ 0xFC815277) >> 16) ^ 0x39)];
  v122 = *(v57 + 4 * (v104 ^ 0x4Fu)) ^ v104 ^ 0xA2 ^ ((v120 ^ (16 * v120)) + v121 - 2 * ((v120 ^ (16 * v120)) & v121));
  v123 = ((v122 ^ 0x3FA21141u) >> 16);
  v124 = *&v56[4 * (BYTE1(v119) ^ 0x54)] ^ 0xF7E496A0;
  v125 = *&v55[4 * ((v116 ^ 0x2A357E4Eu) >> 24)] ^ v115 ^ 0x64 ^ *&v59[4 * (v123 ^ 0x39)] ^ *(v57 + 4 * (v115 ^ 0x89u)) ^ v124 ^ (16 * v124) ^ (v123 + 1827495499);
  v126 = *&v56[4 * (BYTE1(v122) ^ 0xE2)] ^ 0xF7E496A0;
  v127 = *&v55[4 * (HIBYTE(v115) ^ 0x79)] ^ (((v116 ^ 0x2A357E4Eu) >> 16) + 1827495499) ^ *(v57 + 4 * (v119 ^ 0x5Cu)) ^ v126 ^ *&v59[4 * (((v116 ^ 0x2A357E4Eu) >> 16) ^ 0x39)] ^ (16 * v126);
  v128 = ((v115 ^ 0x631D0464) >> 16);
  v129 = (v128 + 1827495499) ^ v128 ^ v122 ^ 0x41 ^ *&v55[4 * (HIBYTE(v119) ^ 0x51)];
  v119 ^= 0x4BD7A7B1u;
  v130 = (v122 ^ 0x3FA21141u) >> 24;
  v131 = v129 ^ *(v57 + 4 * (v122 ^ 0xACu));
  v132 = v127 ^ (v119 ^ ((v116 ^ 0x2A357E4Eu) >> 16));
  v133 = BYTE2(v119);
  v134 = *&v56[4 * (BYTE1(v113) ^ 0x8D)] ^ 0xF7E496A0;
  v135 = v131 ^ *&v59[4 * (v128 ^ 0x39)] ^ v134 ^ (16 * v134);
  v136 = *&v56[4 * (BYTE1(v115) ^ 0xF7)] ^ 0xF7E496A0;
  BYTE2(v128) = BYTE2(v132) ^ 0x49;
  v137 = (v133 + 1827495499) ^ *&v55[4 * v130] ^ ((((v116 ^ 0x4E) - (v116 ^ 0x28526CD1)) ^ 0xFFFFFFFE) + (v116 ^ 0x4E)) ^ *&v59[4 * (v133 ^ 0x39)] ^ *(v57 + 4 * ((v116 ^ 0x2A357E4E) & 0xEF ^ (v116 & 0x10 | 0xEDu))) ^ v136;
  v138 = v137 ^ (16 * v136);
  LOBYTE(v130) = v138 ^ v133;
  v139 = v138 ^ v133 ^ 0xE5A5433E;
  v140 = *&v56[4 * (BYTE1(v135) ^ 0x9B)] ^ 0xF7E496A0;
  v141 = *&v55[4 * (HIBYTE(v125) ^ 0xF5)] ^ v132 ^ 0xC0 ^ *(v57 + 4 * (v132 ^ 0x2Du)) ^ *&v59[4 * (BYTE2(v139) ^ 0x39)] ^ v140 ^ (16 * v140) ^ (BYTE2(v139) + 1827495499);
  v142 = v125 ^ v123;
  BYTE2(v132) = BYTE2(v135) ^ 0xAB;
  v143 = *&v56[4 * (BYTE1(v138) ^ 0xB0)] ^ 0xF7E496A0;
  v144 = v135 ^ 0x3F ^ (((v142 ^ 0xEF832893) >> 16) + 1827495499) ^ *&v55[4 * (HIBYTE(v127) ^ 0xCF)] ^ *(v57 + 4 * (v135 ^ 0xD2u)) ^ v143 ^ *&v59[4 * (((v142 ^ 0xEF832893) >> 16) ^ 0x39)] ^ (16 * v143);
  v145 = *&v55[4 * ((v135 ^ 0xB4AB683F) >> 24)];
  v146 = *&v56[4 * (BYTE1(v125) ^ 0xDB)] ^ 0xF7E496A0;
  v147 = *(v57 + 4 * (v130 ^ 0xD3u));
  v148 = BYTE2(v128) ^ 0x25E352BB ^ (BYTE2(v128) + 1827495499) ^ v145 ^ *&v59[4 * (BYTE2(v128) ^ 0x39)] ^ v146 ^ (16 * v146);
  v149 = v148 + v147 - 2 * (v148 & v147);
  v150 = v141 ^ BYTE2(v139);
  v151 = v144 ^ ((v142 ^ 0xEF832893) >> 16);
  v152 = v149 ^ v139;
  v153 = (BYTE2(v132) + 1827495499) ^ BYTE2(v132) ^ *&v55[4 * ((v137 ^ ~(16 * v136)) >> 24)] ^ *&v59[4 * (BYTE2(v132) ^ 0x39)];
  v154 = *&v56[4 * (BYTE1(v127) ^ 0x42)] ^ 0xF7E496A0;
  v155 = v154 ^ (16 * v154);
  v156 = v153 ^ 0x25E352BB;
  v157 = v155 & 0x40;
  v158 = v155 & 0xFFFFFFBF;
  if ((v157 & v153) != 0)
  {
    v159 = -v157;
  }

  else
  {
    v159 = v157;
  }

  v160 = *(v57 + 4 * (v142 ^ 0x7Eu)) ^ v142 ^ 0x93 ^ v158 ^ (v159 + v156);
  v161 = ((v160 ^ 0xC0DEDECF) >> 16);
  v162 = *&v56[4 * (BYTE1(v149) ^ 0xB3)] ^ 0xF7E496A0;
  v163 = *&v55[4 * (HIBYTE(v141) ^ 0xD3)] ^ v151 ^ 0xB9 ^ *&v59[4 * (v161 ^ 0x39)] ^ *(v57 + 4 * (v151 ^ 0x54u)) ^ v162 ^ (16 * v162) ^ (v161 + 1827495499);
  v164 = *&v56[4 * (BYTE1(v160) ^ 0x2D)] ^ 0xF7E496A0;
  v165 = (((v150 ^ 0xC920E8CE) >> 16) + 1827495499) ^ ((v150 ^ 0xC920E8CE) >> 16) ^ *&v55[4 * ((v151 ^ 0xA6AB52B9) >> 24)] ^ v152 ^ 0xAE ^ *&v59[4 * (((v150 ^ 0xC920E8CE) >> 16) ^ 0x39)] ^ *(v57 + 4 * (v152 ^ 0x43u)) ^ v164 ^ (16 * v164);
  v166 = v163 ^ v161;
  v167 = *&v56[4 * (BYTE1(v144) ^ 0xA1)] ^ 0xF7E496A0;
  v168 = *&v56[4 * (BYTE1(v150) ^ 0xE8)] ^ 0xF7E496A0;
  v169 = *&v55[4 * (HIBYTE(v160) ^ 0xDA)] ^ v150 ^ 0xCE ^ *(v57 + 4 * (v150 ^ 0x23u)) ^ v167 ^ __ROR4__((((((v152 ^ 0xC26040AE) >> 16) + 89675) ^ ((v152 ^ 0xC26040AE) >> 16)) << 14) ^ __ROR4__(*&v59[4 * (((v152 ^ 0xC26040AE) >> 16) ^ 0x39)], 18) ^ 0x2634BAF5, 14) ^ (16 * v167);
  v170 = ((v151 ^ 0xA6AB52B9) >> 16) ^ (((v151 ^ 0xA6AB52B9) >> 16) + 1827495499) ^ *&v59[4 * (((v151 ^ 0xA6AB52B9) >> 16) ^ 0x39)] ^ v160 ^ 0xCF ^ *&v55[4 * ((v152 ^ 0xC26040AE) >> 24)] ^ *(v57 + 4 * (v160 ^ 0x22u)) ^ v168 ^ (16 * v168) ^ 0x71E11317;
  v171 = v165 ^ 0xE9EA829D;
  LODWORD(v173) = __ROR4__(v170, 15) ^ 0x30A36D51;
  HIDWORD(v173) = v173;
  v172 = v173 >> 17;
  v174 = v169 ^ 0x3E73E59;
  v175 = *&v56[4 * (BYTE1(v172) ^ 0xF3)] ^ 0xF7E496A0;
  v176 = *&v59[4 * (BYTE2(v174) ^ 0x39)] ^ *&v55[4 * ((v166 ^ 0x8D6969FE) >> 24)] ^ v175 ^ (16 * v175) ^ (BYTE2(v174) + 1827495499);
  v177 = *(v57 + 4 * (v165 ^ 0x70u));
  v178 = v165 ^ 0x28526C02 ^ v177;
  if ((v176 & 0x100 & v177) != 0)
  {
    v179 = -(v176 & 0x100);
  }

  else
  {
    v179 = v176 & 0x100;
  }

  v180 = v176 & 0xFFFFFEFF ^ BYTE2(v174) ^ (v179 + v178);
  v181 = *&v56[4 * BYTE1(v174)] ^ 0xF7E496A0;
  v182 = ((BYTE2(v166) ^ 0x69) + 1827495499) ^ BYTE2(v166) ^ 0x69 ^ *&v55[4 * HIBYTE(v171)] ^ v172 ^ *&v59[4 * (BYTE2(v166) ^ 0x50)] ^ *(v57 + 4 * (v172 ^ 0xEDu)) ^ v181 ^ (16 * v181);
  v183 = *&v56[4 * (BYTE1(v163) ^ 0x9A)] ^ 0xF7E496A0;
  v184 = (BYTE2(v171) + 1827495499) ^ BYTE2(v171) ^ v169 ^ 0x59 ^ *&v59[4 * (BYTE2(v171) ^ 0x39)] ^ *(v57 + 4 * (v169 ^ 0xB4u)) ^ *&v55[4 * (HIBYTE(v172) ^ 0x1A)] ^ v183 ^ (16 * v183);
  v185 = *&v56[4 * (BYTE1(v165) ^ 0x71)] ^ 0xF7E496A0;
  v186 = BYTE2(v172) ^ v166 ^ 0xFE ^ (BYTE2(v172) + 1827495499) ^ *&v55[4 * HIBYTE(v174)] ^ *&v59[4 * (BYTE2(v172) ^ 0x39)] ^ *(v57 + 4 * (v166 ^ 0x13u)) ^ v185 ^ (16 * v185);
  v187 = v186 ^ 0xDFF7E627;
  v188 = *&v56[4 * ((v184 ^ 0x3131) >> 8)] ^ 0xF7E496A0;
  v189 = v182 ^ 0x89 ^ *&v59[4 * (((v186 ^ 0xDFF7E627) >> 16) ^ 0x39)] ^ *(v57 + 4 * (v182 ^ 0x64u)) ^ v188 ^ *&v55[4 * ((v180 ^ 0xEF3BC579) >> 24)] ^ (16 * v188) ^ (((v186 ^ 0xDFF7E627) >> 16) + 1827495499);
  v190 = ((v182 ^ 0xE2E22089) >> 16);
  v191 = (v190 + 1827495499) ^ v190;
  v192 = *&v56[4 * ((v180 ^ 0xC579) >> 8)] ^ 0xF7E496A0;
  v193 = (2 * v192) << (v191 & 3) << (v191 & 3 ^ 3);
  v194 = v186 ^ 0x27 ^ v191 ^ *&v55[4 * (HIBYTE(v184) ^ 0xA8)] ^ *&v59[4 * (v190 ^ 0x39)];
  v195 = *&v55[4 * (HIBYTE(v182) ^ 0xF8)];
  v196 = v194 ^ *(v57 + 4 * (v186 ^ 0xCAu)) ^ v192;
  v197 = ((v180 ^ 0xEF3BC579) >> 16);
  v198 = *&v59[4 * (v197 ^ 0x39)];
  v199 = v196 ^ v193;
  v200 = *&v55[4 * (HIBYTE(v186) ^ 0xC5)];
  v201 = ((v184 ^ 0xB2C23131) >> 16);
  v202 = *&v59[4 * (v201 ^ 0x39)];
  v203 = *&v56[4 * BYTE1(v187)];
  v204 = *&v56[4 * (BYTE1(v182) ^ 0xD3)];
  v249 = v189 ^ HIWORD(v187);
  LODWORD(v206) = __ROR4__(v184 ^ 0x31 ^ v195 ^ v197 ^ (v197 + 1827495499) ^ *(v57 + 4 * (v184 ^ 0xDCu)) ^ v203 ^ 0xF7E496A0 ^ v198 ^ (16 * (v203 ^ 0xF7E496A0)) ^ 0xDB13E24, 7) ^ 0x2164BFA9;
  HIDWORD(v206) = v206;
  v205 = v206 >> 25;
  v207 = v201 ^ ((((v184 ^ 0xB2C23131) >> 15) & 0x96) + (v201 ^ 0x6CED5E4B)) ^ v200 ^ v180 ^ 0x79 ^ v202 ^ v204 ^ 0xF7E496A0 ^ *(v57 + 4 * (v180 ^ 0x94u)) ^ (16 * (v204 ^ 0xF7E496A0));
  v208 = v207 ^ 0xC6D8D17E;
  v209 = *(&off_28512D4A0 + v250 - 1389);
  v210 = *(v209 + 4 * (HIBYTE(v189) ^ 0x91));
  HIDWORD(v206) = v210 ^ 0x1A29FA6;
  LODWORD(v206) = v210 ^ 0xE0000000;
  v211 = *(&off_28512D4A0 + (a25 ^ 0x2FE)) - 12;
  v212 = *(&off_28512D4A0 + (a25 ^ 0x2E1)) - 12;
  v213 = *(&off_28512D4A0 + (a25 ^ 0x2F1));
  v214 = *&v212[4 * (BYTE1(v199) ^ 0x73)] - 1417528348;
  v215 = -1552959227 * *(v213 + 4 * (v205 ^ 0xB3u));
  v216 = *&v211[4 * ((v207 ^ 0xC6D8D17E) >> 16)] ^ 0x698E0EE4 ^ v214 ^ (v214 >> 4) & 0x39786A0 ^ ((v206 >> 27) + 1060685160 - ((2 * (v206 >> 27)) & 0x7E718AD0));
  v217 = *(v209 + 4 * (HIBYTE(v205) ^ 0xDF));
  v218 = v216 + ((v215 >> 1) & 0x6F7DBC73 ^ v215) - 2 * (v216 & ((v215 >> 1) & 0x6F7DBC73 ^ v215));
  HIDWORD(v206) = v217 ^ 0x1A29FA6;
  LODWORD(v206) = v217 ^ 0xE0000000;
  v219 = *&v212[4 * (BYTE1(v207) ^ 0x46)] - 1417528348;
  v220 = -1552959227 * *(v213 + 4 * (v199 ^ 0xD0u));
  v221 = ((v206 >> 27) + 1060685160 - ((2 * (v206 >> 27)) & 0x7E718AD0)) ^ *&v211[4 * (BYTE2(v189) ^ 0x44)] ^ (v219 >> 4) & 0x39786A0 ^ (v220 >> 1) & 0x6F7DBC73;
  v222 = *(v209 + 4 * (HIBYTE(v199) ^ 0xF));
  HIDWORD(v206) = v222 ^ 0x1A29FA6;
  LODWORD(v206) = v222 ^ 0xE0000000;
  v223 = *&v212[4 * (BYTE1(v189) ^ 0x1A)] - 1417528348;
  v224 = ((v206 >> 27) + 1060685160 - ((2 * (v206 >> 27)) & 0x7E718AD0)) ^ *&v211[4 * (BYTE2(v205) ^ 0x88)] ^ 0x698E0EE4;
  v225 = (v224 ^ -v224 ^ (((v223 >> 4) & 0x39786A0 ^ v223) - (v224 ^ (v223 >> 4) & 0x39786A0 ^ v223))) + ((v223 >> 4) & 0x39786A0 ^ v223);
  v226 = -1552959227 * *(v213 + 4 * v208);
  LODWORD(v209) = *(v209 + 4 * (((46 * (v208 / 0x2E000000)) + (HIBYTE(v208) - 46 * ((179 * (v208 >> 25)) >> 12))) ^ 0xF4u));
  HIDWORD(v206) = v209 ^ 0x1A29FA6;
  LODWORD(v206) = v209 ^ 0xE0000000;
  LODWORD(v209) = *&v212[4 * (BYTE1(v205) ^ 1)] - 1417528348;
  v227 = (v218 - ((2 * v218) & 0x8AFF9364) - 981481038) ^ v252;
  LODWORD(v213) = -1552959227 * *(v213 + 4 * (v249 ^ 0x9Fu));
  v228 = ((v206 >> 27) + 1060685160 - ((2 * (v206 >> 27)) & 0x7E718AD0)) ^ *&v211[4 * (((BYTE2(v199) ^ 0xFA) - (BYTE2(v199) ^ 0xCD)) ^ 0xFFFFFFFE) + 4 * (BYTE2(v199) ^ 0xFA)] ^ (v209 >> 4) & 0x39786A0 ^ (v213 >> 1) & 0x6F7DBC73;
  v229 = v226 ^ (a22 << 24) & 0xFC000000 ^ 0x7FC2B166 ^ a20 & ((a22 << 24) ^ 0xDAFFFFFF) ^ ((v225 ^ (v226 >> 1) & 0x6F7DBC73) - ((2 * (v225 ^ (v226 >> 1) & 0x6F7DBC73)) & 0xD34B7F4) + 110779386);
  LODWORD(v212) = ((a25 ^ 0x4FE) - 261255910) ^ a21 ^ 0x698E0EE4 ^ v219 ^ v220 ^ (v221 - ((2 * v221) & 0x75103320) - 1165485680);
  v230 = v228 - ((2 * v228) & 0xC4363F42) - 501538911;
  LODWORD(v211) = v209 ^ *(v25 - 124) ^ v213;
  LODWORD(v209) = v212 - ((2 * v212) & 0xC2766458);
  v231 = ((v211 ^ (v228 - ((2 * v228) & 0x3F42) + 8097)) >> 8) ^ 0x40;
  v232 = *(&off_28512D4A0 + v250 - 1686) - 12;
  v27[14] = (v232[v231] + 46) ^ 0x86;
  v27[10] = (v232[BYTE1(v229) ^ 0x9ALL] + 46) ^ 0x24;
  v233 = *(&off_28512D4A0 + v250 - 1631) - 12;
  LODWORD(v231) = v233[(v211 ^ v230) ^ 0xC2];
  v27[15] = v231 ^ 0xCA ^ (((v231 >> 1) & 0x24 ^ 0x24) + ((2 * (((v231 >> 1) & 0x24 ^ 0x24 | 0x7B) ^ (v231 >> 1) & 0x24)) ^ 0x41) + 124);
  v234 = *(&off_28512D4A0 + (a25 ^ 0x22E)) - 12;
  *v27 = v234[HIBYTE(v227) ^ 0x5ALL] ^ 0xCF;
  v235 = *(&off_28512D4A0 + v250 - 1586) - 4;
  v27[1] = v235[BYTE2(v227) ^ 0x65] ^ 0xF3;
  v236 = v233[((v218 - ((2 * v218) & 0x64) - 78) ^ v252) ^ 0xBFLL];
  LODWORD(v209) = v209 + 1631269420;
  v27[3] = v236 ^ 0xB4 ^ (((v236 >> 1) & 0x24 ^ 0x24) + ((2 * (((v236 >> 1) & 0x24 ^ 0x24 | 0x7B) ^ (v236 >> 1) & 0x24)) ^ 0x41) + 124);
  v27[8] = v234[HIBYTE(v229) ^ 0x31] ^ 0x92;
  v237 = v233[v209 ^ 0x2ELL];
  v27[7] = v237 ^ 0xB ^ ((~(v233[v209 ^ 0x2ELL] >> 1) & 0x24) + (~(2 * ~(v237 >> 1)) | 0xBF) + 124);
  HIDWORD(v206) = v235[((v211 ^ v230) >> 16) ^ 0x34];
  LODWORD(v206) = (HIDWORD(v206) ^ 0xC8) << 24;
  v27[13] = ((((v206 >> 26) ^ 0x4F) >> 6) | (4 * ((v206 >> 26) ^ 0x4F))) ^ 0x9B;
  LODWORD(v233) = v233[v229 ^ 0x9CLL];
  v238 = (v233 >> 1) & 0x24;
  v239 = v238 ^ 0x24;
  v240 = v239 | 0x7B;
  v241 = v239 + ((2 * (v240 ^ v238)) ^ 0x41) + 124;
  v27[11] = v233 ^ 0xBE ^ v241;
  v242 = v234[BYTE3(v209) ^ 1] ^ 0xCCCCCCCC;
  v27[4] = v234[BYTE3(v209) ^ 1] ^ 0xCC;
  v27[2] = (v232[BYTE1(v227) ^ 0x2DLL] + 46) ^ 0xAB;
  v27[9] = v235[BYTE2(v229) ^ 0xBALL] ^ 0xF0;
  v27[12] = v234[(v211 ^ ~v230) >> 24] ^ 0x73;
  v27[6] = (v232[BYTE1(v209) ^ 0x34] + 46) ^ 0xD0;
  v243 = BYTE2(v209);
  v244 = *(v25 - 120);
  v245 = *(v25 - 116);
  v27[5] = v235[v243 ^ 0xBD] ^ 0x99;
  v246 = v244 - 1786443911 < v245;
  if (v251 != (v244 - 1786443911) < 0x95850769)
  {
    v246 = v251;
  }

  return (*(a16 + 8 * ((3140 * v246) ^ v250)))(v234, v27, v242, v241, v244, v239, v240, 52, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_23E935804(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v29.val[1].i64[0] = (v23 + 13) & 0xF;
  v29.val[1].i64[1] = (v23 + 12) & 0xF;
  v29.val[2].i64[0] = (v23 + 11) & 0xF;
  v29.val[2].i64[1] = (v23 + 10) & 0xF;
  v29.val[3].i64[0] = (v23 + 9) & 0xF;
  v29.val[3].i64[1] = v24 & 0xF ^ 0xELL;
  v30.val[0].i64[0] = (v23 + 7) & 0xF;
  v30.val[0].i64[1] = (v23 + 6) & 0xF;
  v30.val[1].i64[0] = (v23 + 5) & 0xF;
  v30.val[1].i64[1] = (v23 + 4) & 0xF;
  v30.val[2].i64[0] = (v23 + 3) & 0xF;
  v30.val[2].i64[1] = (v23 + 2) & 0xF;
  v30.val[3].i64[0] = (v23 + 1) & 0xF;
  v30.val[3].i64[1] = v23 & 0xF;
  v26 = vqtbl4q_s8(v30, xmmword_23EAA16C0).u64[0];
  v27.i64[0] = 0x9B9B9B9B9B9B9B9BLL;
  v27.i64[1] = 0x9B9B9B9B9B9B9B9BLL;
  v29.val[0].i64[0] = (v18 - 1) & 0xF;
  v29.val[0].i64[1] = (v23 + 14) & 0xF;
  v30.val[3].i64[0] = vqtbl4q_s8(v29, xmmword_23EAA16C0).u64[0];
  v30.val[3].i64[1] = v26;
  v30.val[0] = vrev64q_s8(vmulq_s8(v30.val[3], v27));
  *(a18 + v18) = veorq_s8(veorq_s8(veorq_s8(*(v22 + v29.val[0].i64[0] - 15), *(v19 + v18)), veorq_s8(*(v29.val[0].i64[0] + v21 - 13), *(v29.val[0].i64[0] + v20 - 9))), vextq_s8(v30.val[0], v30.val[0], 8uLL));
  return (*(v25 + 8 * ((((v23 & 0x10) == 16) * (a3 - 2248)) ^ (a3 - 1930))))();
}

uint64_t sub_23E935A74@<X0>(uint64_t a1@<X8>)
{
  v6 = ((v5 - 54) ^ v3 ^ 0xFFFFFFFF6CCD3AA7) + v4;
  *(a1 + v6) = *(v2 + v6) - ((2 * *(v2 + v6)) & 0xA4) - 46;
  return (*(v1 + 8 * ((86 * (v6 != 0)) ^ (v5 - 54))))(0);
}

void sub_23E935C54()
{
  v3[8] = v2[8];
  *v1 += v4 ^ 0x68E;
  v3[9] = v2[9];
  ++*v1;
  v3[10] = v2[10];
  ++*v1;
  v3[11] = v2[11];
  ++*v1;
  *(v0 + 4) = -1720814856;
}

uint64_t sub_23E935D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57)
{
  v60 = 31943069 * ((~((v59 - 192) | 0x6AD99C22) + ((v59 - 192) & 0x6AD99C22)) ^ 0x52686AD4);
  STACK[0x18E0] = a17;
  STACK[0x18C8] = 0;
  STACK[0x18D0] = 0;
  STACK[0x1900] = &STACK[0x2F0];
  STACK[0x18C0] = a18;
  *(v59 - 136) = v60 + 38794032;
  *(v59 - 152) = (v57 + 858) ^ v60;
  STACK[0x18F0] = a57;
  v61 = (*(v58 + 8 * (v57 + 3407)))(v59 - 192);
  v62 = *(v59 - 168);
  LODWORD(STACK[0x4CC]) = v62;
  return (*(v58 + 8 * (((v62 == -1720814856) * (((v57 ^ 0x24C) + 3258) ^ 0x16E ^ (19 * (v57 ^ 0x24C)))) ^ v57)))(v61);
}

uint64_t sub_23E935E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, char a13)
{
  a13 = ((*(v15 + 6) ^ 0xFE) + ((2 * *(v15 + 6)) & 0xFC) + 118) ^ (101 * (((~&a11 | 0xA4) + (&a11 | 0x5B)) ^ 0xF0));
  a12 = 1710126949 * (((~&a11 | 0x36599AA4) + (&a11 | 0xC9A6655B)) ^ 0xCF4197F0) - 656013530 + v13;
  v17 = (*(v14 + 8 * (v13 ^ 0x146B)))(&a11);
  return (*(v14 + 8 * (((a11 == v16) * ((v13 - 1017648664) & 0x3CA81ABF ^ 0xB41)) ^ v13)))(v17);
}

uint64_t sub_23E935FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  v46 = v37;
  v41 = v37 ^ (v39 + 96);
  v42 = 956911519 * ((~((v40 - 168) | 0x84CC41DB) + ((v40 - 168) & 0x84CC41DB)) ^ 0x465B29A);
  *(v40 - 168) = v42 + v37 + 2463;
  *(v40 - 160) = &a28;
  *(v40 - 152) = v42 + a15 + 390105110;
  v43 = (*(v38 + 8 * (v37 + 4000)))(v40 - 168);
  v44 = a37 & 0x3F;
  *(&a28 + v44) = 82;
  return (*(v38 + 8 * (((v44 > 0x37) * (v41 ^ 0x25617583)) ^ v46)))(v43);
}

uint64_t sub_23E9360B0@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + 4 * v2);
  v7 = vld4_s8(v5);
  v8.val[0] = v7.val[3];
  v8.val[1] = v7.val[2];
  v8.val[2] = v7.val[1];
  v8.val[3] = v7.val[0];
  vst4_s8(v5, v8);
  return (*(a1 + 8 * ((v2 + ((v4 - 2709) | 0x280u) - 921 == (v3 & 0x1FFFFFFF8)) | v4)))();
}

uint64_t sub_23E936104(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = (v7 - 32);
  v11 = (v8 - 32);
  v12 = *v11;
  *(v10 - 1) = *(v11 - 1);
  *v10 = v12;
  return (*(v9 + 8 * (((v5 == 32) * v6) ^ (a4 + v4 + 1915))))();
}

uint64_t sub_23E936114@<X0>(uint64_t a1@<X0>, char a2@<W8>, uint64_t a3, uint64_t a4, char a5, unsigned int a6, char a7, int a8, uint64_t a9)
{
  v13 = v9 - 1;
  v14 = (v9 - 914) | 0x204;
  v15 = (v9 + 577825699) & 0xDD8F1BDF;
  a5 = (101 * (((&a4 | 0x44) - (&a4 | 0xBB) - 69) ^ 0xEE)) ^ 0x64;
  a6 = v9 - 1 - 1710126949 * (((&a4 | 0x6AC40944) - (&a4 | 0x953BF6BB) - 1791232325) ^ 0x6C23FBEE) + 229;
  a4 = v12;
  a7 = ((a2 ^ 9) + ((2 * a2) & 0xFC ^ 0xEC) - 56) ^ (101 * (((&a4 | 0x44) - (&a4 | 0xBB) - 69) ^ 0xEE));
  a9 = v11 + 12;
  (*(v10 + 8 * ((v9 - 1) ^ 0x145D)))(&a4);
  return (*(v10 + 8 * (((a8 != -1720814856) * (v15 + v14 - 3622)) ^ v13)))(a1);
}

uint64_t sub_23E936294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, _DWORD *a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v65 = (a53 + 4 * v60);
  v66 = *v65;
  LODWORD(v65) = 1153278077 * ((*(*a55 + (*a54 & 0x75060348)) ^ v65) & 0x7FFFFFFF);
  LODWORD(v65) = v65 ^ (v65 >> 16);
  v67 = 1153278077 * v65;
  v68 = v65 * ((a43 & 0x7693DA47) - 1602423362);
  v69 = 4 * HIBYTE(v67);
  v70 = *(*(&off_28512D4A0 + v61 - 3074) + v69 - 8);
  v71 = *(&off_28512D4A0 + v61 - 3136) + v69;
  if (v62 - (v61 - 3436) < ~(v61 - 3436))
  {
    v72 = 7;
  }

  else
  {
    v72 = 8;
  }

  *(a60 + 4 * v60) ^= v66 ^ v70 ^ *(v71 - 2) ^ *(*(&off_28512D4A0 + v61 - 3191) + (HIBYTE(v67) + v72 - ((v61 - 3436) & 0x5EBD9095))) ^ v68 ^ v67 ^ (925302043 * (HIBYTE(v67) + v72 - ((v61 - 3436) & 0x5EBD9095)) + 2112820291);
  return (*(v63 + 8 * (((((v64 == 1) ^ ((a43 & 0x47) + 45)) & 1) * ((((a43 & 0x7693DA47) + 1054102845) & 0xC12BADEF) - 3409)) ^ a43 & 0x7693DA47)))();
}

uint64_t sub_23E9369B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v8[1];
  v10 = (a5 + v5);
  *v10 = *v8;
  v10[1] = v9;
  return (*(v7 + 8 * ((62 * (((7 * ((10 * (v6 ^ 0x574)) ^ 0x42Au)) ^ 0xD9ALL) != ((10 * (v6 ^ 0x574) - 1404) & a2))) ^ (10 * (v6 ^ 0x574)))))();
}

uint64_t sub_23E936A6C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, uint64_t a31, int a32, int a33, int a34)
{
  v39 = a3 ^ a31;
  v40 = ((2 * v35) & 0x22A082336C3A9698 ^ 0xDF5F7FDDFFEFED7FLL) + 0x30441E0AB7E5F91DLL + ((((((a2 - 685) | 5u) + 0x4EB3A36DA596B270) ^ v35) - 0x4EB3A36DA596B4C5) ^ ((v35 ^ 0x9B606D833AADC7DELL) + 0x649F927CC5523822) ^ ((v35 ^ 0x4B20121F9EF3DECBLL) + ((a2 - 853) | 0x812u) - 0x4B20121F9EF3E885));
  v41 = v40 ^ v36;
  v42 = v40 ^ v34;
  v43 = (v40 ^ v36) & 0xE9ABEFFBC0AC76E4 ^ v40 ^ v34 ^ (v40 ^ v36 ^ 0x754484F8A3175691) & (v39 ^ 0x8061E5158B01ED48);
  v44 = (v41 ^ 0x4AFD63EC23E74899) & (v42 ^ 0xBD89DEC200674A4);
  v45 = (v37 ^ v39) & 0x8A11757318DC76FBLL ^ v41 ^ (v37 ^ v39 ^ 0xB506B0CB53F5648) & (v39 ^ 0x1C248062AC8E12A8) ^ 0xADB1C3A8FD0906A7;
  v46 = v42 & 0xAE573E42B12BC068 ^ (v42 ^ 0xF4276213DFF98B5BLL) & (v34 ^ 0xA58FA3AE912DB4CCLL) ^ v37 ^ v39;
  v47 = v43 ^ v45 ^ 0x917AD68046BA7654;
  v48 = v34 & 0x78C3D25B56100A26 ^ v39 ^ (v34 ^ 0xF4276213DFF98B5BLL) & (v37 ^ v39 ^ 0x8C6C46A81CD0A391) ^ v45;
  v49 = v42 & 0xC04618EB7F0FE1F7 ^ v34 ^ v44 ^ v46;
  v50 = __ROR8__(v43 ^ v45 ^ ((v43 ^ v45) >> 19) ^ 0x37B7788BA61835D8, 23);
  v51 = ((v47 & 0x7FFFF) << 6) ^ __ROR8__(((v43 ^ v45 ^ 0xB70580B3DDC075ACLL) >> (~v43 & 0x18) >> (v43 & 4) >> (v43 & 0x1C ^ 4)) ^ 0x9CD6E1E1E3CB61DALL, 39) ^ 0xAB5E7DCC81604E38;
  v52 = ((v50 << 23) ^ (v47 << 36) ^ 0xC0640683147FFFFFLL) & ((v50 >> 41) ^ 0xF37407CBDDCE01F9) | ((v50 << 23) ^ (v47 << 36)) & 0xC8BF83422000000;
  v53 = v48 ^ 0xF8B9D0158BE9502DLL ^ (v48 >> 39) ^ ((v48 >> 61) & 6 | 0x44036820041020) ^ (((v48 ^ 0xF8B9D0158BE9502DLL) << 25) ^ (8 * (v48 ^ 0xF8B9D0158BE9502DLL)) ^ 0x2E41F630CFAE4BE1) & ((v48 >> 61) | 0xFFFFFFFFFFFFFFF8);
  *(&v54 + 1) = v43 ^ 0xD0F558F527969D58;
  *&v54 = v43;
  v55 = v43 ^ 0xD0F558F527969D58 ^ __ROR8__(v43 ^ 0xD0F558F527969D58, 41) ^ (v54 >> 7);
  v56 = (v49 >> 17) ^ (v49 >> 10) ^ v49 ^ 0x69E631FB9D69551ALL ^ ((v49 ^ 0x69E631FB9D69551ALL) << 47) ^ ((v49 ^ 0x69E631FB9D69551ALL) << 54);
  v57 = v56 ^ 0xC2309D4353D4B49BLL;
  v58 = v52 ^ v55 ^ __ROR8__(__ROR8__(__ROR8__(v51, 25) ^ 0x1BC7CA6D4477A41DLL, 19) ^ 0x7BF092C24B378EC1, 45);
  v59 = v56 ^ 0xC2309D4353D4B49BLL ^ v55;
  v60 = ((v46 ^ 0xFF8875AA118B06D1) << 58) ^ (v46 >> 1) ^ ((-(v46 ^ 0x3D98886CD947E743 ^ ((v46 ^ 0xFF8875AA118B06D1) << 63)) ^ 0x5F210A712EE2FE15 ^ (((v46 >> 6) ^ 0xF66221B3651F9DLL) - (v46 ^ 0x3D98886CD947E743 ^ ((v46 ^ 0xFF8875AA118B06D1) << 63) ^ (v46 >> 6) ^ 0xF66221B3651F9DLL)) ^ ((v46 ^ 0x3D98886CD947E743 ^ ((v46 ^ 0xFF8875AA118B06D1) << 63)) + 0x5F210A712EE2FE15 - ((2 * (v46 ^ 0x3D98886CD947E743)) & 0xBE4214E25DC5FC2ALL))) + ((v46 >> 6) ^ 0xF66221B3651F9DLL));
  v61 = v60 ^ v53 ^ 0x4E4783EFC2B6ACE6;
  v62 = (v58 ^ 0xB32DB77D4E3FE589) & (v53 ^ 0x292BC6575278D018) ^ v53 & 0xBEC44717380B4DC7;
  v63 = v53 & 0x401434A6933F5F16 ^ (v60 ^ 0x16D87090FF9CACB7) & (v53 ^ 0xD6D439A8AD872FE7) ^ 0xACEFD242A38E197ELL ^ v58;
  v64 = (v56 ^ 0x3795C1660A7617E5) & (v55 ^ 0x3E04C7CDC89C2AEFLL) ^ v56 & 0xDA3F71E6E05EBB68;
  v65 = (v61 ^ 0xCE5FFE71039270A0) & (v56 ^ 0x1D26F36DD3F743FBLL);
  v66 = v61 & 0xD54CCDF4267EABE1;
  if ((v62 & 0x1000000000000000 & v59) != 0)
  {
    v67 = -(v62 & 0x1000000000000000);
  }

  else
  {
    v67 = v62 & 0x1000000000000000;
  }

  v68 = v64 ^ v61;
  v69 = (v58 ^ 0xB418F96B6EC3803CLL) & (v59 ^ 0x119EEA0E716032F9);
  v70 = (((v67 + (v59 ^ 0xEE6115F18E9FCD06)) ^ v62) & 0xAA7BB9C13B5E63BDLL ^ 0xF8D7215AD1A3CB17) & ((v67 + (v59 ^ 0xEE6115F18E9FCD06)) & 0x5584463EC4A19C42 ^ v62 & 0x4584463EC4A19C42 ^ 0xFAFFBBCDFBFFFBBFLL) | ((v67 + (v59 ^ 0xEE6115F18E9FCD06)) & 0x5584463EC4A19C42 ^ v62 & 0x4584463EC4A19C42) & 0x500462404001440;
  v71 = v66 ^ v53 ^ 0x4E4783EFC2B6ACE6 ^ v65 ^ v63;
  v72 = v59 & 0x460EF6FEE708D78DLL ^ v57 ^ v68 ^ 0x8F4E9746138AF0FDLL ^ v69;
  *(&v73 + 1) = v70 ^ v63 ^ 0xE55501112B98995DLL;
  *&v73 = *(&v73 + 1) ^ (*(&v73 + 1) << 45);
  v74 = v72 ^ 0x84DA6695E6156833;
  v75 = __ROR8__((v73 >> 1) ^ __ROR8__(v70 ^ v63, 20) & 0x80000FFFFFFFFFFFLL, 63);
  v76 = (v71 >> 39) ^ (v71 >> 61) ^ __ROR8__((((v71 >> 34) & 0x7FFFFFF ^ 0xFFFFFFFFC9480201) & ((v71 << 30) ^ 0x66BAD8D509EA2A71) | (v71 >> 34) & 0x615D58E) ^ __ROR8__(v71 ^ (v71 << 25) ^ 0x270B97AD8D88E54FLL, 37) ^ 0x89A0B930172DC194, 27);
  v77 = v68 ^ 0xA7C84AB31AA1FF31;
  v78 = ((((v72 ^ 0x84DA6695E6156833) << 54) ^ 0xE03FFFFFFFFFFFFFLL) & ((v72 >> 17) ^ 0x20DC7EEE6A0A103FLL) | ((v72 ^ 0x84DA6695E6156833) << 54) & 0xDF00000000000000) ^ ((v72 ^ 0x84DA6695E6156833) << 47) ^ 0x7EFBACFE73FAEAEDLL;
  v79 = (v78 - ((2 * v78) & 0x30A6DB02577D109CLL) - 0x67AC927ED44177B2) ^ (v72 >> 10) ^ 0x987A658DD3C3E172;
  v80 = (v79 - ((2 * v79) & 0x41F4AAE82763349ELL) + 0x20FA557413B19A4FLL) ^ v74;
  v81 = ((((v70 ^ 0x87686045775F2C44) << 57) ^ ((v70 ^ 0x87686045775F2C44) << 23) ^ (v70 >> 41) ^ (v70 >> 7) ^ 0xDD8E64DE45A52051) - 2 * ((((v70 ^ 0x87686045775F2C44) << 57) ^ ((v70 ^ 0x87686045775F2C44) << 23) ^ (v70 >> 41) ^ (v70 >> 7) ^ 0xDD8E64DE45A52051) & 0x4D873BE23774D21ELL ^ ((v70 >> 41) ^ (v70 >> 7)) & 8) - 0x3278C41DC88B2DEALL) ^ v70 ^ 0x87686045775F2C44;
  v82 = v75 & 0x94CAA2FA00E3EF02 ^ __ROR8__(*(&v73 + 1), 28) ^ __ROR8__(__ROR8__(v75 & 0x6B355D05FF1C10FDLL ^ 0xED8F22DB85F48F56, 11) ^ 0x1D4302AD8A798CDDLL, 53) ^ (v81 - ((2 * v81) & 0x6BEDCE8ABC228980) + 0x35F6E7455E1144C0);
  v83 = ((v68 >> 1) ^ (v68 >> 6) | ((v68 ^ 0x8F4E9746138AF0FDLL) << 63)) ^ ((v68 ^ 0xA7C84AB31AA1FF31) << 58) ^ 0xF74BDB6677E7BF72;
  v84 = (v83 - ((2 * v83) & 0xD670FB889F8B4668) - 0x14C7823BB03A5CCCLL) ^ v77;
  v85 = v76 ^ 0x86D1F8D1C587E5E9 ^ v84;
  v86 = v82 ^ 0xC4F04740F654D4B1;
  v87 = (v82 ^ 0x3B0FB8BF09AB2B4ELL) & (v76 ^ 0x86D1F8D1C587E5E9) ^ v81 ^ v80;
  v88 = v86 ^ (v76 ^ 0x792E072E3A781A16) & v84;
  v89 = v88 ^ 0x6E04C15915AB860ALL ^ v87;
  v90 = v76 ^ v80 & ~v85 ^ 0xB4A900E93BC43755 ^ v88;
  v91 = v81 & ~v80 ^ v85;
  v92 = v80 ^ v91 ^ 0x7370AC685030CB36 ^ v86 & ~(v81 ^ v80);
  v93 = __ROR8__(v89, 55) & 0xFFFFFFFFF00001FFLL ^ __ROR8__(v89, 36);
  v94 = v91 ^ 0x7955EAEC4D48B80CLL;
  if ((v93 & 0x400000000000000) != 0)
  {
    v95 = 0xFC00000000000000;
  }

  else
  {
    v95 = 0x400000000000000;
  }

  v96 = __ROR8__((v95 + v93) ^ 0x38CE2E23F2EEF3D2, 28);
  v97 = v90 ^ (8 * v90) ^ (v90 >> 39) ^ (v90 << 25) ^ (v90 >> 61);
  v98 = (v94 >> 6) & 0xFFFFBFFFFFFFFFFFLL;
  v99 = (v94 >> 6) & 0x400000000000;
  v100 = (v94 ^ (v94 << 58) ^ (v94 >> 1) ^ v97) + (v91 << 63);
  v101 = 0xEF3B8C329934EB68 - v99;
  v102 = v87 ^ 0x26974B18501E2B14 ^ ((v87 ^ 0x26974B18501E2B14) >> 7) ^ ((v87 ^ 0x26974B18501E2B14) << 23) ^ ((v87 ^ 0x26974B18501E2B14) >> 41) ^ ((v87 ^ 0x26974B18501E2B14) << 57);
  v103 = v102 ^ (v89 >> 28) ^ (((v89 << 36) ^ v96 ^ 0x2EEF3D23CCE2E23FLL ^ -((v89 << 36) ^ v96 ^ 0x2EEF3D23CCE2E23FLL) ^ ((v89 << 45) - ((v89 << 36) ^ v96 ^ 0x2EEF3D23CCE2E23FLL ^ (v89 << 45)))) + (v89 << 45));
  v104 = (v100 + 0x10C473CD66CB1498) & (0xEF3B8C329934EB68 - v99);
  if (a32)
  {
    v105 = ~(v99 ^ v100);
  }

  else
  {
    v105 = (v94 >> 6) & 0x400000000000;
  }

  v106 = v92 ^ (v92 << 47) ^ ((v92 >> 10) ^ (v92 >> 17) | (v92 << 54));
  v107 = v100 + v99;
  v108 = v106 ^ v102;
  v109 = ((v100 + 0x10C473CD66CB1498) ^ v101) + 2 * v104;
  if ((v105 & v100) != 0)
  {
    v110 = v109;
  }

  else
  {
    v110 = v107;
  }

  v111 = v110 ^ v98;
  v112 = v103 & ~v108;
  v113 = __ROR8__(v103 ^ v111 & ~v97, 18);
  v114 = v97 & ~v103 ^ v108;
  v115 = __ROR8__(v113 ^ 0x425A8FCA01D18F30, 46);
  v116 = v97 ^ 0x425764BB5877DA25;
  v117 = v111 ^ v102 & ~v106;
  v118 = v115 & 1 ^ v116;
  v119 = v116 - (v115 & 1);
  v120 = (v115 ^ 0x3F2807463CC1096ALL) & 0xFFFFFFFFFFFFFFFELL;
  v121 = v114 ^ 0x97F6A7E5F6E8F58ALL ^ v115 ^ 0x3F2807463CC1096ALL;
  v122 = v112 ^ v106;
  v123 = v106 & ~v111;
  if ((v115 & 1 & v116) != 0)
  {
    v124 = v119;
  }

  else
  {
    v124 = v118;
  }

  v125 = v120 ^ v123 ^ v124;
  v126 = (v122 + 0x44C9D571A5C4A51CLL - ((2 * v122) & 0x8993AAE34B894A38)) ^ v117;
  v127 = v125 ^ (v125 >> 39) ^ (8 * v125) ^ ((v125 >> 61) | (v125 << 25));
  v128 = ((v114 ^ 0x70C7A8D3F3643DFDuLL) >> 41) & (v114 ^ 0x70C7A8D3F3643DFDLL) ^ ((v114 ^ 0x70C7A8D3F3643DFDuLL) >> 7) ^ (v114 ^ 0x70C7A8D3F3643DFDLL ^ ((v114 ^ 0x70C7A8D3F3643DFDLL) << 57) ^ ((v114 ^ 0x70C7A8D3F3643DFDLL) << 23) | ((v114 ^ 0x70C7A8D3F3643DFDuLL) >> 41));
  v129 = v117 ^ 0xD3DA1E3360BF843ALL ^ ((v117 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v117 ^ 0xD3DA1E3360BF843ALL) << 58) ^ (((v117 ^ 0xD3DA1E3360BF843ALL) >> 6) | (v117 << 63));
  v130 = v127 ^ v129;
  v131 = (v126 << 54) ^ (v126 << 47) ^ ((v126 ^ (v126 >> 10) ^ -(v126 ^ (v126 >> 10)) ^ ((v126 >> 17) - (v126 ^ (v126 >> 10) ^ (v126 >> 17)))) + (v126 >> 17));
  v132 = v121 ^ (v121 << 45) ^ (v121 << 36) ^ (v121 >> 19) ^ (v121 >> 28) ^ v128;
  v133 = v131 & ~(v127 ^ v129);
  v134 = v132 & ~(v131 ^ v128);
  v135 = v127 & ~v132;
  v136 = (v129 & ~v127) + v132 - 2 * (v129 & ~v127 & v132);
  v137 = v128 & ~v131 ^ v130;
  v138 = (((v131 ^ v128) & 0x8000000000000000) + v135) ^ (v131 ^ v128) & 0x7FFFFFFFFFFFFFFFLL;
  v139 = v136 ^ 0x93C23431B76D41FLL ^ v138;
  v140 = v127 ^ 0x6005BE354A5BB0B2 ^ v133 ^ v136;
  v141 = v131 ^ 0xF374A001D380BDC2 ^ v137 ^ v134;
  v143 = v139 ^ __ROR8__(v139, 28);
  v144 = 0x40000000000;
  if ((v138 & 0x40000000000) != 0)
  {
    v144 = 0xFFFFFC0000000000;
  }

  v145 = v140 ^ (v140 >> 39) ^ (8 * v140) ^ ((v140 >> 61) | (v140 << 25));
  v146 = (v144 + v138) ^ 0x2DB5B2AF87F64351 ^ (((v144 + v138) ^ 0x2DB5B2AF87F64351) << 23) ^ (((v144 + v138) ^ 0x2DB5B2AF87F64351) >> 7) ^ ((((v144 + v138) ^ 0x2DB5B2AF87F64351) >> 41) | (((v144 + v138) ^ 0x2DB5B2AF87F64351) << 57));
  v147 = v146 ^ v143 ^ (v139 >> 19) ^ (v139 << 45);
  v142 = v137 ^ 0x6DC4FB0BD4FFFF44;
  v148 = ((v142 << 58) ^ (v142 >> 1) ^ (v142 >> 6) ^ ((v142 ^ (v137 << 63) ^ -(v142 ^ (v137 << 63)) ^ (v145 - (v145 ^ v142 ^ (v137 << 63)))) + v145)) & ~v145 ^ v147 ^ v145 & ~v147 ^ v146 ^ v141 ^ (v141 << 47) ^ (v141 >> 10) ^ ((v141 >> 17) | (v141 << 54)) ^ 0x69309AC4CAE2F93;
  return (*(v38 + 8 * (a2 ^ (483 * (a34 + 1 == a30)))))(a1, (v148 >> 28) ^ (v148 >> 19) ^ __ROR8__(__ROR8__(v148, 6) & 0xFC000000003FFFFFLL ^ __ROR8__(v148, 42), 22) ^ (v148 << 45));
}

void sub_23E937BF0(uint64_t a1)
{
  v1 = *(a1 + 40) - 33731311 * ((((2 * a1) | 0xFD335396) - a1 - 2123999691) ^ 0x7F2F14F4);
  __asm { BRAA            X2, X17 }
}

uint64_t sub_23E937D24@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, int a23, int a24, int a25, char *a26, char *a27, char *a28, char *a29, char *a30, char *a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, _BYTE *a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, _BYTE *a58)
{
  v64 = 956911519 * ((((2 * (v63 - 192)) | 0xBB601A0E) - (v63 - 192) - 1571818759) ^ 0x22E601B9);
  *(v63 - 192) = v64 + v59 - 880;
  *(v63 - 176) = v64 + (v58 ^ 0xFBFBFF7B) + ((2 * v58) & 0xF7F7FEF6) + 2146397671;
  STACK[0x18C8] = a1;
  v65 = (*(v61 + 8 * (v59 ^ 0x1D6F)))(v63 - 192);
  v66 = STACK[0x284];
  v67 = *(&off_28512D4A0 + v59 - 3347) - 4;
  if (SLODWORD(STACK[0x284]) > 516136265)
  {
    v68 = a57;
    if (v66 <= 1478419530)
    {
      if (v66 <= 813359089)
      {
        if (v66 == 516136266)
        {
          v62[17] = a55;
          v62[51] = a49;
          v69 = 1193312475;
          goto LABEL_36;
        }

        if (v66 == 664747678)
        {
          v62[17] = a55;
          v62[51] = a49;
          v69 = -1087359418;
          goto LABEL_36;
        }

        goto LABEL_47;
      }

      if (v66 != 813359090)
      {
        if (v66 == 961970502)
        {
          v70 = a57 - 1863;
          v74 = v62[13];
          v75 = v62[4];
          *a34 = *v74 ^ *v75 ^ v60;
          a53[249] = v74[1] ^ v75[1] ^ v60;
          a53[250] = v74[2] ^ v75[2] ^ v60;
          a53[251] = (a57 - 71) ^ v74[3] ^ v75[3] ^ 0xFA;
          a53[252] = v74[4] ^ v75[4] ^ v60;
          a53[253] = v74[5] ^ v75[5] ^ v60;
          a53[254] = v74[6] ^ v75[6] ^ v60;
          a53[255] = v74[7] ^ v75[7] ^ v60;
          a53[256] = v74[8] ^ v75[8] ^ v60;
          a53[257] = v74[9] ^ v75[9] ^ v60;
          a53[258] = v74[10] ^ v75[10] ^ v60;
          a53[259] = v74[11] ^ v75[11] ^ v60;
          a53[260] = v74[12] ^ v75[12] ^ v60;
          a53[261] = v74[13] ^ v75[13] ^ v60;
          a53[262] = v74[14] ^ v75[14] ^ v60;
          a53[263] = v74[15] ^ v75[15] ^ v60;
          a53[264] = v74[16] ^ v75[16] ^ v60;
          a53[265] = v74[17] ^ v75[17] ^ v60;
          a53[266] = v74[18] ^ v75[18] ^ v60;
          a53[267] = v74[19] ^ v75[19] ^ v60;
          v71 = a55;
          v62[24] = a55;
          v62[79] = a34;
          v72 = 20;
          LODWORD(STACK[0x344]) = 20;
          LODWORD(STACK[0x284]) = 2072865179;
          v67 = a34;
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      v62[17] = a55;
      v62[51] = a49;
      LODWORD(STACK[0x318]) = 926935985;
      goto LABEL_44;
    }

    if (v66 > 1775642354)
    {
      switch(v66)
      {
        case 1775642355:
          v70 = a57 ^ 0xB47;
          v71 = a55;
          v62[24] = a55;
          v67 = a30;
          v62[79] = a30;
          v72 = 20;
          LODWORD(STACK[0x344]) = 20;
          v73 = -1408430264;
          break;
        case 1924253767:
          v76 = v62[34];
          *a34 = *v76 ^ *a58 ^ v60;
          a53[249] = v76[1] ^ a58[1] ^ v60;
          a53[250] = v76[2] ^ a58[2] ^ v60;
          a53[251] = v76[3] ^ a58[3] ^ v60;
          a53[252] = v76[4] ^ a58[4] ^ v60;
          v70 = a20;
          a53[253] = v76[5] ^ (a20 - 86) ^ a58[5];
          a53[254] = v76[6] ^ a58[6] ^ v60;
          a53[255] = v76[7] ^ a58[7] ^ v60;
          a53[256] = v76[8] ^ a58[8] ^ v60;
          a53[257] = v76[9] ^ a58[9] ^ v60;
          a53[258] = v76[10] ^ a58[10] ^ v60;
          a53[259] = v76[11] ^ a58[11] ^ v60;
          a53[260] = v76[12] ^ a58[12] ^ v60;
          a53[261] = v76[13] ^ a58[13] ^ v60;
          a53[262] = v76[14] ^ a58[14] ^ v60;
          a53[263] = v76[15] ^ a58[15] ^ v60;
          a53[264] = v76[16] ^ a58[16] ^ v60;
          a53[265] = v76[17] ^ a58[17] ^ v60;
          a53[266] = v76[18] ^ a58[18] ^ v60;
          a53[267] = v76[19] ^ a58[19] ^ v60;
          v71 = a55;
          v62[24] = a55;
          v62[79] = a34;
          v72 = 20;
          LODWORD(STACK[0x344]) = 20;
          LODWORD(STACK[0x284]) = -1259818852;
          v67 = a34;
          goto LABEL_48;
        case 2072865179:
          v70 = a57 - 1863;
          v71 = a55;
          v62[24] = a55;
          v62[79] = v67;
          v72 = 14;
          LODWORD(STACK[0x344]) = 14;
          v73 = -1111207440;
          break;
        default:
          goto LABEL_47;
      }

      goto LABEL_46;
    }

    if (v66 == 1478419531)
    {
      v70 = a57 ^ 0xB47;
      v67 = a26;
      v71 = a55;
      v62[24] = a55;
      v62[79] = a26;
      v72 = 20;
      LODWORD(STACK[0x344]) = 20;
      v73 = -1705653088;
      goto LABEL_46;
    }

    if (v66 == 1627030943)
    {
      v70 = a57 ^ 0xB47;
      v67 = a28;
      v62[4] = a28;
      v71 = a55;
      v62[24] = a55;
      v62[79] = a28;
      v72 = 20;
      LODWORD(STACK[0x344]) = 20;
      v73 = -1557041676;
      goto LABEL_46;
    }
  }

  else
  {
    v68 = a57;
    if (v66 > -1111207441)
    {
      if (v66 > -446147000)
      {
        switch(v66)
        {
          case -446146999:
            v70 = a22 & 0xA57BB6BB;
            v71 = a55;
            v62[24] = a55;
            v62[79] = v67;
            v72 = 14;
            LODWORD(STACK[0x344]) = 14;
            v73 = 664747678;
            break;
          case -297535587:
            v70 = a57 ^ 0xB47;
            v71 = a55;
            v62[24] = a55;
            v62[79] = v67;
            v72 = 14;
            LODWORD(STACK[0x344]) = 14;
            v73 = 813359090;
            break;
          case -148924175:
            v62[17] = a55;
            v62[51] = a49;
            v69 = -1353735908;
LABEL_36:
            LODWORD(STACK[0x318]) = v69;
            goto LABEL_44;
          default:
            goto LABEL_47;
        }

LABEL_46:
        LODWORD(STACK[0x284]) = v73;
        goto LABEL_48;
      }

      if (v66 != -1111207440)
      {
        if (v66 == -594758411)
        {
          v70 = a24 & 0x1B27BFAE;
          v71 = a55;
          v62[24] = a55;
          v62[79] = v67;
          v72 = 14;
          LODWORD(STACK[0x344]) = 14;
          v73 = 516136266;
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      v62[17] = a55;
      v62[51] = a49;
      LODWORD(STACK[0x318]) = 660559495;
LABEL_44:
      JUMPOUT(0x23E938654);
    }

    if (v66 > -1408430265)
    {
      if (v66 == -1408430264)
      {
        v70 = (a57 - 1903) | 0x28;
        v71 = a55;
        v62[24] = a55;
        v67 = a31;
        v62[79] = a31;
        v72 = 20;
        LODWORD(STACK[0x344]) = 20;
        v73 = -297535587;
        goto LABEL_46;
      }

      if (v66 == -1259818852)
      {
        v70 = 788 * (a57 ^ 0xD6D);
        v71 = a55;
        v62[24] = a55;
        v62[79] = v67;
        v72 = 14;
        LODWORD(STACK[0x344]) = 14;
        v73 = -148924175;
        goto LABEL_46;
      }
    }

    else
    {
      if (v66 == -1705653088)
      {
        v67 = a27;
        v62[34] = a27;
        v70 = (a57 - 2407) | 0x220;
        v71 = a55;
        v62[24] = a55;
        v62[79] = a27;
        v72 = 20;
        LODWORD(STACK[0x344]) = 20;
        v73 = -594758411;
        goto LABEL_46;
      }

      if (v66 == -1557041676)
      {
        v67 = a29;
        v62[13] = a29;
        v71 = a55;
        v62[24] = a55;
        v62[79] = a29;
        v72 = 20;
        LODWORD(STACK[0x344]) = 20;
        v70 = a25;
        v73 = -446146999;
        goto LABEL_46;
      }
    }
  }

LABEL_47:
  v70 = v68 - 1863;
  v71 = v62[24];
  v67 = v62[79];
  v72 = STACK[0x344];
LABEL_48:
  v77 = (*(v71 + 68) & 0x3Fu) + v72 > (v70 ^ 0x348u) - 1313;
  v62[85] = v71;
  LODWORD(STACK[0x4DC]) = v72;
  v62[16] = v67;
  v78 = v77;
  return (*(v61 + 8 * ((2626 * v78) ^ v70)))(v65, 54, 22, 1575);
}

uint64_t sub_23E938F30(uint64_t a1, unsigned int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  v14 = (v10 + (v11 << 7) + 1176);
  v15 = *(v10 + 9) * v12 % a2;
  *v14 = v7 + ((((v15 + a4 - (a5 & (2 * v15))) << 10) - 20480) ^ a3);
  *v8 += 1024;
  v16 = *(v10 + 9) * (((a7 - 67) ^ 0xAF) + v12) % a2;
  v14[1] = v7 + ((((v16 + a4 - (a5 & (2 * v16))) << 10) - 20480) ^ a3);
  *v8 += 1024;
  v17 = *(v10 + 9) * (v12 + 2) % a2;
  v14[2] = v7 + ((((v17 + a4 - (a5 & (2 * v17))) << 10) - 20480) ^ a3);
  *v8 += 1024;
  v18 = *(v10 + 9) * (v12 + 3) % a2;
  v14[3] = v7 + ((((v18 + a4 - (a5 & (2 * v18))) << 10) - 20480) ^ a3);
  *v8 += 1024;
  return (*(v9 + 8 * ((4055 * (v13 == 1)) ^ a7)))();
}

uint64_t sub_23E939068@<X0>(unsigned int a1@<W8>)
{
  v5 = ~v2 + v1;
  if (HIDWORD(v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = ((((v3 - 417) ^ 0xF9C) - 1022) ^ a1) >= v5;
  }

  v7 = !v6;
  return (*(v4 + 8 * (v3 | (4 * v7))))();
}

void sub_23E93912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v20 = 1358806181 * ((-1145282207 - ((v19 - 136) | 0xBBBC6161) + ((v19 - 136) | 0x44439E9E)) ^ 0xF9201873);
  *(v19 - 116) = *(a4 + 96) - v20 - ((2 * *(a4 + 96)) & 0x5E5D22D4) + 791581034;
  *(v19 - 128) = a4;
  *(v19 - 136) = v18 - v20 + 915945564;
  (*(v17 + 8 * a17))(v19 - 136);
  JUMPOUT(0x23E9391F8);
}

uint64_t sub_23E939308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, uint64_t a18, char a19)
{
  a17 = v20 + 137 + v19 + 1750157387;
  *(v22 - 104) = v20 + 33731311 * ((v22 - 19272643 - 2 * ((v22 - 120) & 0xFED9ECB5)) ^ 0xFF6F518A) + 1048;
  *(v22 - 120) = &a19;
  *(v22 - 112) = a15;
  (*(v21 + 8 * (v20 ^ 0x9FC)))(v22 - 120);
  *(v22 - 104) = a15;
  *(v22 - 108) = (v20 + 1227) ^ (33731311 * ((((v22 - 120) | 0x9973E582) - ((v22 - 120) & 0x9973E582)) ^ 0x98C558BD));
  *(v22 - 120) = &a16;
  v23 = (*(v21 + 8 * (v20 ^ 0x9DD)))(v22 - 120);
  v24 = *(v22 - 112) == v20 + 239865609;
  return (*(v21 + 8 * ((v24 | (16 * v24)) ^ v20)))(v23);
}

uint64_t sub_23E9394B8@<X0>(int a1@<W8>)
{
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((((v5 ^ (a1 + 77)) & 1) * ((258 * (a1 ^ 0x5FF)) ^ 0xAE8)) ^ a1)))();
}

uint64_t sub_23E939508@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + a2) = v5;
  v6 = ((v2 - 1532) ^ v3) + a2 == 56;
  return (*(v4 + 8 * ((v6 | (8 * v6)) ^ v2)))();
}

uint64_t sub_23E939534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 *a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 *a22, int a23)
{
  v27 = 2008441969 * (&a17 ^ 0xBB11EDA6);
  LOBYTE(a22) = (113 * (&a17 ^ 0xA6)) ^ 0x30;
  a17 = a13;
  a20 = a8;
  a21 = a7 + 36;
  HIDWORD(a22) = (v26 ^ 0x6EF771DF) + ((2 * v26) & 0xDDEEE3BE) - v27 - 540356864;
  LODWORD(a18) = v25 - v27 + 966;
  a19 = a7;
  (*(v24 + 8 * (v25 ^ 0x14E1)))(&a17);
  v28 = &a13[56 * *a13];
  v29 = 914963389 * ((((2 * &a17) | 0x9CAE3AF4) - &a17 - 1314332026) ^ 0xAFBBC41D);
  LODWORD(a17) = (v25 + 997) ^ v29;
  a22 = v28 + 8;
  LODWORD(a21) = ((2 * v26) & 0x7FF3ECA0) - v29 + ((13 * (v25 ^ 0x4A4) - 1074139028) ^ v26 & 0xFFFFFFF0) + 1976565688;
  a19 = a8;
  a20 = a11;
  a18 = a8;
  v30 = (*(v24 + 8 * (v25 + 2958)))(&a17);
  return (*(v24 + 8 * ((388 * (a23 == v23)) ^ v25)))(v30);
}

uint64_t sub_23E9396B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = (HIDWORD(a12) ^ 0x240B45F3) & (2 * (HIDWORD(a12) & v18)) ^ HIDWORD(a12) & v18;
  v22 = ((2 * (HIDWORD(a12) ^ 0x262845D1)) ^ 0x26F7A44B ^ a8) & (HIDWORD(a12) ^ 0x262845D1) ^ (2 * (HIDWORD(a12) ^ 0x262845D1)) & 0x937BD02A;
  v23 = v22 ^ 0x9108502A;
  v24 = (v22 ^ 0x2528000) & (4 * v21) ^ v21;
  v25 = ((4 * v23) ^ 0x4DEF40A8) & v23 ^ (4 * v23) & 0x937BD028;
  v26 = v24 ^ 0x937BD02A ^ (v25 ^ 0x16B4020) & (16 * v24);
  v27 = (16 * (v25 ^ 0x92109002)) & 0x937BD020 ^ 0x8042D00A ^ ((16 * (v25 ^ 0x92109002)) ^ 0x37BD02A0) & (v25 ^ 0x92109002);
  v28 = (v26 << 8) & 0x937BD000 ^ v26 ^ ((v26 << 8) ^ 0x7BD02A00) & v27;
  v29 = HIDWORD(a12) ^ (2 * ((v28 << 16) & 0x137B0000 ^ v28 ^ ((v28 << 16) ^ 0x502A0000) & ((v27 << 8) & 0x937B0000 ^ 0x2B0000 ^ ((v27 << 8) ^ 0x7BD00000) & v27)));
  v31 = v29 == -1789905489 || ((((v19 + 1695828257) & 0x9AEBBFFD) - 2942) & v29) != v19 - 607;
  return (*(v20 + 8 * ((207 * v31) ^ v19)))(a1, a2, a3, a4, a5, a6, a7, (v19 + 433), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23E939864(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t (*a42)(void), uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  *a4 = *(a53[291] + v55);
  a4[4] = *(a53[299] + v57);
  a4[8] = *(a53[307] + a2);
  a4[12] = *(a53[315] + v58);
  a4[1] = *(a53[301] + a1);
  a4[5] = *(a53[309] + v56);
  a4[9] = *(a53[317] + v63);
  a4[13] = *(a53[293] + v61);
  a4[2] = *(a53[311] + a5);
  a4[10] = *(a53[295] + v60);
  a4[6] = *(a53[319] + a3);
  a4[14] = *(a53[303] + v64);
  a4[15] = *(a53[313] + v54);
  a4[11] = *(a53[305] + v62);
  a4[7] = *(a53[297] + v59);
  a4[3] = *(a53[321] + v53);
  return a42();
}

uint64_t sub_23E93A04C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v10 = v5 + 32;
  v11 = (v10 ^ v8 ^ ((v4 + 2863) | v7)) + v3;
  v12 = *(a3 + v11 - 15);
  v13 = *(a3 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v6 == v10) * a2) ^ v4)))();
}

uint64_t sub_23E93A054@<X0>(char a1@<W4>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (a7 + a2);
  v11 = v8[1];
  *(v10 - 1) = *v8;
  *v10 = v11;
  return (*(v9 + 8 * ((((a1 & 0x60) == 32) * (v7 - 810)) ^ v7)))();
}

void sub_23E93A09C(_DWORD *a1)
{
  v1 = *a1 ^ (33731311 * ((-2 - ((a1 ^ 0x6001C89C | 0x1DFA3521) + (a1 ^ 0x15AA2021 | 0xE205CADE))) ^ 0x8BE2AA7D));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_23E93A1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v91 = v58;
  HIDWORD(a20) = a3;
  v89 = v64;
  v90 = v63;
  if (a3 != 1591916620)
  {
    if (a3 == 1591916621)
    {
      v66 = *(v58 + 12);
      v67 = v58 + 16;
      if (v66 == 2)
      {
        v75 = 1046730637 * ((((v65 - 136) | 0x1DEE597A) - ((v65 - 136) & 0x1DEE597A)) ^ 0x47EDE496);
        *(v65 - 120) = *(v60 + 8 * (v59 ^ 0x262)) - 8;
        *(v65 - 112) = v67;
        *(v65 - 136) = &a58;
        *(v65 - 104) = v59 - v75 - 825;
        *(v65 - 100) = v75 ^ 0x5B7180F7;
        (*(v61 + 8 * (v59 ^ 0x13F5)))(v65 - 136);
        a3 = HIDWORD(a20);
        v72 = *(v65 - 128);
      }

      else
      {
        if (v66 != 1)
        {
          if (*(v58 + 12))
          {
            v76 = 31943069 * ((((2 * (v65 - 136)) | 0x464CB80C) - (v65 - 136) + 1557767162) ^ 0x6468550F);
            v77 = *(v60 + 8 * (v59 & 0x7B74347D));
            *(v65 - 128) = v67;
            *(v65 - 120) = &a58;
            *(v65 - 112) = v59 - v76 + 1067;
            *(v65 - 108) = v76 ^ 0x7D0A321B;
            *(v65 - 136) = v77;
            (*(v61 + 8 * (v59 + 3110)))(v65 - 136);
          }

          else
          {
            v68 = 1875091903 * ((v65 - 136) ^ 0x3A0ED6DC);
            v69 = *(v60 + 8 * (v59 - 735)) - 8;
            *(v65 - 136) = v67;
            *(v65 - 128) = v69;
            *(v65 - 120) = &a58;
            *(v65 - 112) = 810682755 - v68;
            *(v65 - 108) = v59 - v68 + 2787;
            (*(v61 + 8 * (v59 + 3136)))(v65 - 136);
          }

          v72 = *(v65 - 104);
          v71 = v59;
          a3 = HIDWORD(a20);
          return (*(v61 + 8 * (((v72 == -1720814856) * (((v71 - 244) | 0x818) + 561)) ^ (v71 - 501))))(2574152440, a2, a3);
        }

        v73 = 2073269857 * ((((2 * (v65 - 136)) | 0x79A406F8) - (v65 - 136) + 1127087236) ^ 0x3D9FBA64);
        v74 = *(v60 + 8 * (v59 - 915)) - 12;
        *(v65 - 112) = v59 - v73 + 895;
        *(v65 - 128) = v74;
        *(v65 - 120) = &a58;
        *(v65 - 104) = v67;
        *(v65 - 136) = v73 ^ 0x5B0B1438;
        (*(v61 + 8 * (v59 + 3101)))(v65 - 136);
        a3 = HIDWORD(a20);
        v72 = *(v65 - 108);
      }

      v71 = v59;
    }

    else
    {
      v71 = v59;
      v72 = 1720789357;
    }

    return (*(v61 + 8 * (((v72 == -1720814856) * (((v71 - 244) | 0x818) + 561)) ^ (v71 - 501))))(2574152440, a2, a3);
  }

  v70 = *(v58 + 12);
  if (v70 == 2)
  {
    v88 = *(v60 + 8 * (v59 - 732)) - 4;
  }

  else if (v70 == 1)
  {
    v88 = *(v60 + 8 * (v59 - 696)) - 12;
  }

  else if (*(v58 + 12))
  {
    v88 = *(v60 + 8 * (v59 ^ 0x247)) - 4;
  }

  else
  {
    v88 = *(v60 + 8 * (v59 ^ 0x2D8));
  }

  v78 = v59;
  (*(v61 + 8 * (v78 ^ 0x13FE)))(*(v60 + 8 * (v78 ^ 0x2F2)) - 4);
  (*(v61 + 8 * (v78 ^ 0x13FE)))(*(v60 + 8 * (v78 ^ 0x27D)) - 8, &STACK[0xCC8], 16);
  a40 = 0;
  a41 = 0;
  v79 = ((((v65 - 136) | 0x1BF3F711) - ((v65 - 136) & 0x1BF3F711)) ^ 0xA0E21AB7) * v62;
  *(v65 - 136) = &STACK[0x220];
  *(v65 - 128) = 1910355922 - v79;
  *(v65 - 124) = v79 + v59 - 113;
  v80 = *(v60 + 8 * (v59 ^ 0x235)) - 8;
  *(v65 - 104) = &a40;
  *(v65 - 120) = v80;
  (*(v61 + 8 * (v59 + 3128)))(v65 - 136);
  HIDWORD(a17) = v59;
  return (*(v61 + 8 * ((928 * (*(v65 - 112) == (((v59 - 944) | 0x20) ^ 0x996E729C))) ^ (v59 - 897))))(2574152440, v81, 1591916620, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14, v88, a16, a17, v89, v90, a20, a21, v91, a23, a24, a25, a26, a27, a28, a29, a30, a31, &STACK[0x220]);
}

uint64_t sub_23E93A690()
{
  v5 = ((((2 * ((v4 - 144) ^ 0x6824EA6A)) | 0xFC8D2258) - ((v4 - 144) ^ 0x6824EA6A) + 28929748) ^ 0x908589EC) * v0;
  *(v4 - 120) = v2 - 1023 - v5 + 1999;
  *(v4 - 140) = v5 + v9 + 715338793 + ((v2 - 1023) ^ 0x407);
  *(v4 - 136) = v7;
  *(v4 - 128) = v3;
  (*(v1 + 8 * (v2 + 2511)))(v4 - 144);
  *v8 = v9;
  result = v10;
  *(v10 + 24) = -1720814856;
  return result;
}

uint64_t sub_23E93A788@<X0>(unsigned int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a2 + v3 + a3) = vadd_s8(vsub_s8(*(v7 + v3), vand_s8(vadd_s8(*(v7 + v3), *(v7 + v3)), v8)), v9);
  v10 = v3 + (v4 ^ a1) - 899 == (v5 & 0x78);
  return (*(v6 + 8 * (((8 * v10) | (16 * v10)) ^ v4)))();
}

uint64_t sub_23E93AA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v42 = v40 + 981;
  v58 = (v40 + 2066) | 0x80;
  v43 = (*(a1 + 8 * (v40 + 3869)))(19);
  v44 = *(&off_28512D4A0 + (v42 ^ 0x45B));
  *v44 = v43;
  v45 = v44;
  v57 = v44;
  (*(a40 + 8 * (v42 + 2922)))();
  v46 = (*(a40 + 8 * (v42 ^ 0x14B8)))(23);
  v47 = *(&off_28512D4A0 + (v42 ^ 0x535));
  *(v47 - 4) = v46;
  v48 = (v47 - 4);
  v56 = (v47 - 4);
  (*(a40 + 8 * (v42 + 2922)))();
  *(v46 + 8) = 0;
  **(&off_28512D4A0 + (v42 ^ 0x59E)) = 0;
  v49 = *v45;
  v50 = *(&off_28512D4A0 + v42 - 1112);
  v51 = *v48;
  *(v50 + 5) = 102;
  v49[10] = 96;
  v49[17] = -15;
  *(v51 + 2) = 68;
  **(&off_28512D4A0 + v42 - 1048) = 51;
  v49[12] = -72;
  *(v51 + 15) = -122;
  **(&off_28512D4A0 + (v42 ^ 0x54B)) = -77;
  v49[1] = -22;
  **(&off_28512D4A0 + (v42 ^ 0x56D)) = 26;
  **(&off_28512D4A0 + v42 - 1259) = -113;
  *(v51 + 3) = 79;
  v49[14] = 83;
  **(&off_28512D4A0 + (v42 ^ 0x473)) = -34;
  v49[3] = -80;
  *(v50 + 1) = 88;
  *(v51 + 13) = 39;
  **(&off_28512D4A0 + (v42 ^ 0x403)) = v41;
  v49[8] = 1;
  **(&off_28512D4A0 + v42 - 1234) = 73;
  **(&off_28512D4A0 + (v42 ^ 0x5BB)) = -44;
  *(v51 + 17) = 47;
  *(v51 + 1) = -11;
  *(v50 + 3) = 3;
  *(v50 - 7) = 17;
  *(v50 + 10) = 99;
  *(v50 + 12) = v41;
  **(&off_28512D4A0 + (v42 ^ 0x51A)) = 54;
  *v49 = 59;
  *(v51 + 16) = 23;
  **(&off_28512D4A0 + (v42 ^ 0x561)) = 34;
  **(&off_28512D4A0 + (v42 ^ 0x40A)) = 25;
  **(&off_28512D4A0 + (v42 ^ 0x4DE)) = -5;
  *(v51 + 4) = 18823;
  v49[4] = -59;
  v49[2] = 119;
  **(&off_28512D4A0 + (v42 ^ 0x566)) = -109;
  *(v51 + 14) = -52;
  *(v50 + 19) = -36;
  v52 = *v57;
  v53 = *v56;
  *(v50 + 8) = -39;
  v53[20] = -16;
  *(v50 + 17) = 15;
  v53[6] = 66;
  *v50 = -87;
  v53[12] = -90;
  v53[18] = 113;
  v53[22] = 32;
  *(v50 - 1) = -39;
  *(v50 + 20) = 34;
  *(v50 - 4) = -15;
  *v53 = 45;
  v52[9] = -72;
  v52[11] = -121;
  v52[7] = -86;
  *(v50 + 16) = -105;
  *(v50 + 2) = -98;
  *(v50 + 11) = -119;
  v52[16] = 13;
  v52[6] = -92;
  v53[19] = 31;
  v53[21] = -85;
  v52[15] = -33;
  v52[18] = -116;
  *(v50 - 8) = 72;
  v54 = v50 - 8;
  *(v50 + 4) = 73;
  *(v54 + 2) = -17;
  *(v50 + 15) = -15;
  v53[7] = 77;
  v52[5] = 36;
  *(v50 + 6) = 120;
  *(v50 + 9) = 69;
  *(v54 + 3) = 32;
  v52[13] = 52;
  *(v50 + 13) = 15089;
  *(v54 + 5) = 20375;
  *(v50 + 7) = -14;
  *(v50 + 18) = 105;
  return (*(a40 + 40 * (v58 ^ 0xBEB)))(2847041533);
}

uint64_t sub_23E93B540(uint64_t a1)
{
  v7 = 2 * (v5 ^ 0x7AB);
  v8 = *(v1 + 56);
  v12 = 1317436891 * ((((2 * &v12) | 0x67F51A48) - &v12 - 872058148) ^ 0xC6DB5B51) + v7 + 91;
  v13 = (32219 * ((((2 * &v12) | 0x1A48) - &v12 + 29404) ^ 0x5B51)) ^ 0x1F06;
  v14 = v11;
  result = (*(v4 + 8 * (v7 + 2799)))(&v12);
  v3[130] = v11[3] % 0xAu;
  *a1 = 1498173510;
  *(a1 + 4) = (3 * (v7 ^ 0xFB) + 92) ^ v2;
  *(a1 + 5) = 257;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0x4000000;
  *(a1 + 12) = 2;
  *(a1 + 14) = v3[130] & 3;
  *(a1 + 15) = -69;
  v3[1] = 2;
  v3[131] = 0;
  *v8 = a1;
  v10 = *v1;
  **(v1 + 16) = 16;
  *v10 = 1;
  *(v1 + 64) = -1720814856;
  return result;
}

uint64_t sub_23E93B65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *a1 = 1498173510;
  *(a1 + 4) = v28;
  *(a1 + 5) = 513;
  *(a1 + 7) = 0;
  *(a1 + 8) = -2113929216;
  *(a1 + 12) = 2;
  *(a1 + 13) = *(v27 + 14);
  v32 = 914963389 * (((~(v31 - 144) | 0x8BEB2A84) + ((v31 - 144) | 0x7414D57B)) ^ 0x95F80C1D);
  *(v31 - 140) = v32 ^ 0x4289;
  *(v31 - 136) = v30 - v32 + 266;
  *(v31 - 128) = a1 + 14;
  v33 = (*(v29 + 8 * (v30 + 1202)))(v31 - 144);
  *(a1 + 14) = 256;
  return (*(v29 + 8 * ((49 * (a1 - a27 - 118 < ((v30 - 462597111) & 0x1B92AAB3 ^ 0xA30uLL))) ^ v30)))(v33);
}

uint64_t sub_23E93B79C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v2) = *(v5 + v2);
  v7 = v2 + 1;
  v9 = v7 < 0x601FF7F && v7 + v3 < v4;
  return (*(v6 + 8 * ((v9 * (v1 + 728)) ^ v1)))();
}

uint64_t sub_23E93B880()
{
  v5 = *(v2 + 6);
  *v0 = v2;
  *(v4 - 168) = (v1 - 379704497) ^ (1710126949 * ((((v4 - 176) ^ 0x7C55C59A | 0x46F132FA) - (((v4 - 176) ^ 0x7C55C59A) & 0x46F132FA)) ^ 0x3C4305CA));
  *(v4 - 164) = v5 - 101 * ((((v4 + 80) ^ 0x9A | 0xFA) - (((v4 + 80) ^ 0x9A) & 0xFA)) ^ 0xCA) - ((((v1 - 36) & 0x7F) + 103) & (2 * v5)) - 13;
  v6 = (*(v3 + 8 * (v1 + 2834)))(v4 - 176);
  return (*(v3 + 8 * (((*(v4 - 160) == 1722265560) * (((v1 - 755) | 0x81) ^ 0x2B6)) ^ v1)))(v6);
}

uint64_t sub_23E93B974@<X0>(int a1@<W8>, __n128 a2@<Q0>)
{
  v4[-1] = a2;
  *v4 = a2;
  return (*(v7 + 8 * (((v2 & ~(a1 ^ (v5 == 0))) * v3) ^ v6)))();
}

uint64_t sub_23E93BA00(int8x16_t a1, double a2, double a3, uint8x8_t a4, uint8x8_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int32 a17)
{
  v20 = v17 - 32;
  v21 = vorr_s8(*a1.i8, *&vextq_s8(a1, a1, 8uLL));
  v22 = *&v21 | HIDWORD(*&v21) | ((*&v21 | HIDWORD(*&v21)) >> 16);
  a4.i32[0] = a17;
  a5.i32[0] = *(v19 + 16);
  v23 = vmovl_u8(a5).u64[0];
  return (*(v18 + 8 * ((224 * (((v20 - 50) | 0x11) != 601)) ^ v20)))(*&vorr_s8(veor_s8(vadd_s16(vsub_s16(v23, vand_s8(vadd_s16(v23, v23), 0xA400A400A400A4)), 0xD200D200D200D2), *&vmovl_u8(a4)), (v22 | (v22 >> 8))));
}

uint64_t sub_23E93BA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v25 = v17[2];
  v21 = *v17;
  v22 = v17[5];
  LODWORD(a16) = v20 + 1985 - ((2 * (&a14 & 0x7EC70348) - &a14 + 20511924) ^ 0xC676F5BD) * v19;
  a15 = a11;
  a17 = v22;
  (*(v18 + 8 * (v20 ^ 0xB90)))(&a14);
  a15 = a11;
  LODWORD(a16) = v20 + 1985 - (&a14 ^ 0xC74E0909) * v19;
  a17 = v21;
  (*(v18 + 8 * (v20 | 0xB90)))(&a14);
  a16 = v25;
  HIDWORD(a15) = v20 - (((&a14 | 0xC0496D6C) - (&a14 & 0xC0496D6C)) ^ 0x7076465) * v19 - 81;
  a14 = a11;
  v23 = (*(v18 + 8 * (v20 + 3102)))(&a14);
  return (*(v18 + 8 * ((3184 * (a15 == ((746 * (v20 ^ 0x46C)) ^ 0x996E772C))) ^ v20)))(v23);
}

uint64_t sub_23E93BBD4()
{
  v5 = (v3 - 1192) | 0x22;
  v11 = v9;
  v12 = &v10;
  v13 = (v3 + 324) ^ (1046730637 * (((&v11 ^ 0x72A2096D | 0xC7696E) - (&v11 ^ 0x72A2096D) + ((&v11 ^ 0x72A2096D) & 0xFF389691)) ^ 0x2866DDEF));
  (*(v1 + 8 * (v3 ^ 0x19BE)))(&v11);
  v12 = v9;
  LODWORD(v11) = v3 + 1317436891 * (((&v11 | 0x87780F6B) - &v11 + (&v11 & 0x7887F090)) ^ 0x7259D91E) + 1258;
  (*(v1 + 8 * (v3 ^ 0x19FC)))(&v11);
  if (HIDWORD(v11) == v2 + v5 - 1386)
  {
    v6 = v10;
  }

  else
  {
    v6 = HIDWORD(v11);
  }

  v12 = v9;
  HIDWORD(v11) = v3 + (((&v11 | 0xEF09B08E) - &v11 + (&v11 & 0x10F64F70)) ^ 0x920CF6B8) * v4 - 283;
  (*(v1 + 8 * (v3 ^ 0x659)))(&v11);
  HIDWORD(v11) = v5 + ((2 * (&v11 & 0x2EE921E0) - &v11 - 787030499) ^ 0xAC13982B) * v4 + 875;
  v12 = v8;
  result = (*(v1 + 8 * (v5 ^ 0xAC3)))(&v11);
  *(v0 + 8) = v6;
  return result;
}

uint64_t sub_23E93BDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = a2 - 1;
  *(v9 + v11) = *(v8 + (v11 & 0xF)) ^ *(v5 + v11) ^ *((v11 & 0xF) + v7 + 2) ^ (-101 * (v11 & 0xF)) ^ *((v11 & 0xF) + v6 + 6);
  return (*(v10 + 8 * ((461 * ((((a5 - 3585) ^ (v11 == 0)) & 1) == 0)) ^ (a5 - 3165))))();
}

uint64_t sub_23E93BE74@<X0>(char a1@<W1>, int a2@<W7>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20)
{
  v23.i64[0] = 0xA4A4A4A4A4A4A4A4;
  v23.i64[1] = 0xA4A4A4A4A4A4A4A4;
  v24.i64[0] = 0xD2D2D2D2D2D2D2D2;
  v24.i64[1] = 0xD2D2D2D2D2D2D2D2;
  v25 = vaddq_s8(vsubq_s8(v22[1], vandq_s8(vaddq_s8(v22[1], v22[1]), v23)), v24);
  v26 = (&a20 + a3);
  *v26 = vaddq_s8(vsubq_s8(*v22, vandq_s8(vaddq_s8(*v22, *v22), v23)), v24);
  v26[1] = v25;
  return (*(v21 + 8 * ((675 * ((a1 & 0x60) - (v20 + a2) == -3046)) ^ (v20 + a2 - 947))))();
}

uint64_t sub_23E93BEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v22 - 136) = v20;
  *(v22 - 124) = (v17 + 1542) ^ (((((2 * v21) | 0xA20A712C) - v21 - 1359296662) ^ 0x50B385A9) * v19);
  *(v22 - 120) = a16;
  v23 = (*(v18 + 8 * (v17 ^ 0xB16)))(v22 - 136);
  return (*(v18 + 8 * (((*(v22 - 128) > (v16 + 1)) * ((v17 ^ 0xD31) - 2094)) ^ v17)))(v23);
}

uint64_t sub_23E93C014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 136) = a14;
  *(v20 - 120) = &a17;
  *(v20 - 128) = (v19 - 189) ^ (1875091903 * ((v20 - 136) ^ 0x3A0ED6DC));
  v21 = (*(v18 + 8 * (v19 ^ 0x1538)))(v20 - 136);
  return (*(v18 + 8 * (((v17 == ((7 * (v19 ^ 0x43F)) ^ 0x9BD)) * ((v19 + 1118) ^ 0x98D)) ^ v19)))(v21);
}

uint64_t sub_23E93C1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, int a26, unsigned int a27)
{
  v28 = a24 + 644534693 > a27;
  if (a27 < 0x266AD165 != (a24 + 644534693) < 0x266AD165)
  {
    v28 = (a24 + 644534693) < 0x266AD165;
  }

  return (*(v27 + 8 * ((v28 * (a5 + 1908 + a26 - 2586)) ^ (a5 + 481))))();
}

uint64_t sub_23E93C230@<X0>(int a1@<W0>, int8x16_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 + 8;
  v8 = (v7 + (((v3 + 1143) | v5) ^ v6));
  v9 = v8[2];
  v10 = v8[3];
  v11 = *v8;
  v12 = v8[1];
  v13 = vrev32q_s8(v7[1]);
  v14 = vrev32q_s8(*v7);
  v15 = vrev32q_s8(v7[3]);
  v7[2] = vrev32q_s8(v7[2]);
  v7[3] = v15;
  *v7 = v14;
  v7[1] = v13;
  v8[2] = vrev32q_s8(v9);
  v8[3] = vrev32q_s8(v10);
  *v8 = vrev32q_s8(v11);
  v8[1] = vrev32q_s8(v12);
  return (*(a3 + 8 * (((v4 == 32) * a1) ^ (v3 + 1761))))();
}

uint64_t sub_23E93C23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a2 - 1;
  *(v4 + 520) = v5;
  *(a1 + v5) = (&STACK[0x430] ^ 0xBA) * (&STACK[0x430] + 17);
  return (*(v3 + 8 * ((250 * (*(v4 + 520) != 0)) ^ (v2 - 2335))))();
}

uint64_t sub_23E93C308(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v5 = veorq_s8(*v7, xmmword_23EAA1640);
  v9[80] += 32;
  v9[82] = a1;
  v9[81] = a1;
  return (*(v8 + 8 * (((11 * (v6 ^ 0x1DB) - 3479) * (v5 == a1)) | v6)))(a1, a2, a3, a4, a5);
}

uint64_t sub_23E93C7D4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, _DWORD *a53)
{
  v57 = (v53 + 7058707) & 0xFF944DFF;
  LODWORD(STACK[0x3E0]) = a1;
  v58 = (*(v55 + 8 * (v53 ^ 0x1A31)))(a53 + 4, 0);
  v59 = a53[4] + 752928159 - ((2 * a53[4]) & 0x59C18B3E);
  a53[1] = a53[6] + 752928159 - ((2 * a53[6]) & 0x59C18B3E);
  a53[2] = v59;
  v60 = v53 | 0x5A0;
  v61 = (*(v55 + 8 * v60))(v58);
  a53[3] = v61 + 752928159 - ((v61 << (v57 ^ 0x6E)) & 0x59C18B3E);
  v62 = (*(v55 + 8 * v60))();
  *a53 = v62 + 752928159 - ((2 * v62) & 0x59C18B3E);
  v63 = 1664525 * (*v54 ^ (*v54 >> 30)) - 1142565570;
  v64 = v63 ^ v54[1] ^ ((v63 ^ 0xBC3A296E) - 132119632) ^ ((v63 ^ 0xC925DEC3) - 1925188605) ^ ((v63 ^ 0xB105DD7C) - 182454338) ^ ((v63 ^ 0x7FFFFFEF) + 1004918063);
  v54[1] = (((*a53 ^ 0xB5F13FF) - 190780415) ^ ((*a53 ^ 0xBCE971B6) + 1125551690) ^ ((*a53 ^ 0x9B56A7D6) + 1688819754)) - 1480927150 + (((v64 ^ 0x1F9D1F1) + 1060759940) ^ ((v64 ^ 0x47E51415) + 2032479336) ^ ((v64 ^ 0xFDF910DA) - 1019664215));
  v65 = 956911519 * ((v56 + 0x3792B387B9DDEBC4 - 2 * ((v56 - 192) & 0x3792B387B9DDEC84)) ^ 0x4D725409C68BE03ALL);
  STACK[0x18C8] = v65 + 623;
  *(v56 - 172) = v57 + 659871240 - 956911519 * ((v56 - 1176638524 - 2 * ((v56 - 192) & 0xB9DDEC84)) ^ 0xC68BE03A) - 94;
  *(v56 - 168) = 476319643 - 956911519 * ((v56 - 1176638524 - 2 * ((v56 - 192) & 0xB9DDEC84)) ^ 0xC68BE03A) + v57;
  *(v56 - 152) = 1 - 956911519 * ((v56 - 1176638524 - 2 * ((v56 - 192) & 0xB9DDEC84)) ^ 0xC68BE03A);
  STACK[0x18E0] = 2 - v65;
  *(v56 - 176) = (v57 + 659871240) ^ (956911519 * ((v56 - 1176638524 - 2 * ((v56 - 192) & 0xB9DDEC84)) ^ 0xC68BE03A));
  *(v56 - 188) = 956911519 * ((v56 - 1176638524 - 2 * ((v56 - 192) & 0xB9DDEC84)) ^ 0xC68BE03A) + v57 + 659871240 + 97;
  v66 = (*(v55 + 8 * (v57 + 689)))(v56 - 192);
  return (*(v55 + 8 * *(v56 - 192)))(v66);
}

uint64_t sub_23E93CB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58)
{
  v61 = (((a58 - 408164616) ^ 0xFC981541) + 492227010) ^ (a58 - 408164616) ^ (((a58 - 408164616) ^ 0xDB311CD4) + 989839445) ^ ((((v58 ^ 0x7DE) - 966269230) ^ (a58 - 408164616)) + 665398550) ^ (((*(v59 - 156) - 11597) ^ (a58 - 408164616)) + 506529792);
  v62 = ((v58 ^ 0x7DE) - 91185620) & 0x56F5FDC;
  *(v59 - 156) = v62;
  v64 = v61 == 506536831 || (((((v58 ^ 0x7DE) - 2755) | 0xA02) ^ 0xA0D) & v61) != (v62 ^ 0x8C3);
  v65 = *(v60 + 8 * (v58 ^ 0x7DE ^ (8 * v64)));
  *(v59 - 160) = -42899;
  return v65();
}

void sub_23E93CCC4(unsigned int *a1)
{
  v7 = v5 + v2;
  v8 = v1 + v7 + v6 + 1272882705;
  *a1 = v8;
  v9 = a1 + 1;
  *(v9 + v3) = v4;
  *(v9 + v2) = 47;
  *(v9 + v7) = 61;
  *(v9 + v8) = 0;
  JUMPOUT(0x23E9671CCLL);
}

uint64_t sub_23E93CD6C(uint64_t a1, char a2, char a3)
{
  v8 = (v6 - 2);
  v9 = v4 + 2;
  v8[1] = (v9 + a3) * (v9 ^ a2);
  *v8 = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v7 + 8 * (((4 * (v5 != 2)) | (32 * (v5 != 2))) ^ v3)))();
}

uint64_t sub_23E93CE14@<X0>(int a1@<W8>)
{
  v9 = v2 + 1;
  v10 = v1 < v3;
  *(*(v7 + 8) + 4 * v9) = *(*(v7 + 8) + 4 * (v9 + a1));
  if (v10 == v9 + v5 < v3)
  {
    v10 = v9 + v5 < v1;
  }

  return (*(v8 + 8 * ((v10 * v6) ^ v4)))();
}

uint64_t sub_23E93D2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v21 - 136) = v19;
  *(v21 - 128) = a13;
  *(v21 - 112) = v18 + 1875091903 * ((~((v21 - 136) | 0x6BBBE50A) + ((v21 - 136) & 0x6BBBE50A)) ^ 0xAE4ACC29) - 735;
  *(v21 - 104) = v19;
  *(v21 - 120) = a17;
  v22 = (*(v17 + 8 * (v18 ^ 0x150A)))(v21 - 136);
  v23 = ((v20 >> 1 >> (46 * (v18 ^ 0x74) - 93)) & a12) != 0;
  return (*(v17 + 8 * ((v23 | (2 * v23)) ^ (v18 - 564))))(v22);
}

uint64_t sub_23E93D3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v23 = bswap32(*(v21 + 32));
  v24 = &v19[56 * *v19 + 8];
  v25 = ((157 * (v22 ^ 0x386)) ^ 0xFFFFFA75) & v23 ^ 0x5FFBA750;
  v26 = 2 * v23;
  v27 = 1710126949 * ((&a13 + 1721364534 - 2 * (&a13 & 0x6699F036)) ^ 0x607E029C);
  a17 = (v26 & 0xBFF74EA0) - v27 - 486712064 + v25;
  a14 = v21 + 56;
  a15 = v21 + 16;
  a13 = v27 + v22 + 1384;
  a18 = v24;
  a19 = v21 + 56;
  (*(v20 + 8 * (v22 + 3313)))(&a13);
  return (*(v20 + 8 * (((a16 == -1720814856) * ((v22 + 2662) ^ 0x78C)) ^ v22)))(a1);
}

uint64_t sub_23E93D4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, char a13, int a14, int a15, char a16, __int16 a17, char a18, int a19, char a20, __int16 a21, char a22, _BYTE *a23, char *a24, char *a25, uint64_t a26, _BYTE *a27)
{
  a27 = a12;
  a24 = &a22;
  a25 = &a18;
  LODWORD(a23) = v27 - 1520 + 1875091903 * ((&a23 - 765313080 - 2 * (&a23 & 0xD2623FC8)) ^ 0xE86CE914);
  (*(v28 + 8 * (v27 ^ 0x1D2A)))(&a23);
  a24 = &a16;
  a25 = &a13;
  a27 = a12;
  LODWORD(a23) = v27 - 1520 + 1875091903 * (((&a23 | 0x77673125) + (~&a23 | 0x8898CEDA)) ^ 0x4D69E7F8);
  (*(v28 + 8 * (v27 ^ 0x1D2A)))(&a23);
  LODWORD(a25) = (v27 - 562) ^ (1046730637 * (&a23 ^ 0x5A03BDEC));
  a23 = a12;
  a24 = &a20;
  (*(v28 + 8 * (v27 + 744)))(&a23);
  a24 = a12;
  LODWORD(a23) = v27 + 1317436891 * ((2 * ((&a23 ^ 0xC78CB738) & 0x900EDD0) - (&a23 ^ 0xC78CB738) - 151055828) ^ 0xC4527361) + 372;
  v29 = (*(v28 + 8 * (v27 + 678)))(&a23);
  return (*(v28 + 8 * (((HIDWORD(a23) == (((v27 - 1109) | 0xC) ^ 0x996E7BE5)) * (v27 - 2862)) ^ v27)))(v29);
}

uint64_t sub_23E93D6C0@<X0>(int a1@<W8>)
{
  v5 = a1 ^ (v2 + 319);
  *v3 = v5;
  return (*(v4 + 8 * ((441 * (v5 != ((v5 << (((v1 + 66) | 0x4C) - 93)) & 0x6A588AC))) ^ v1)))();
}

uint64_t sub_23E93D710@<X0>(char a1@<W8>)
{
  v5 = v1 - 1;
  *(v3 + v5) = (a1 ^ 0xBA) * (a1 + 17);
  return (*(v4 + 8 * ((998 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_23E93D784()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_23E93D7AC(uint64_t a1, int a2)
{
  if ((v3 - 1903092516) < 0xB2875966 != (v4 ^ 0x66918D07u) > 0x4D78A699)
  {
    v5 = (v3 - 1903092516) < 0xB2875966;
  }

  else
  {
    v5 = v3 - 1903092516 > (v4 ^ 0x66918D07u) - 1299752602;
  }

  return (*(v2 + 8 * ((83 * ((v5 ^ (a2 - 95)) & 1)) | a2)))();
}

uint64_t sub_23E93DBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v7 - 1;
  *(v6 + v10) = *(a6 + v10);
  return (*(v9 + 8 * ((494 * (v10 != ((v8 - 3135) ^ 0x1B6))) ^ (v8 - 263))))();
}

void sub_23E93DBF4()
{
  *v5 = *v1;
  *v4 = v0;
  *v1 = 0;
  *(v1 + 8) = 0x6DB0EAC76DB0EAC7;
  v2 = *(v1 + 24);
  v3 = *(v1 + 20) & 0xFFFFFFFE;
  *(v1 + 16) = 603339922;
  *(v1 + 20) = v3;
  *(v6 + 4) = v2;
}

uint64_t sub_23E93DC74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, int8x8_t a7@<D1>, int8x8_t a8@<D2>)
{
  v15 = a2 - 8;
  v16 = (v8 + v15 + v12 + 75) & 0xF;
  v18.val[0].i64[0] = v16;
  v18.val[0].i64[1] = (v8 + v15 + 14) & 0xF;
  v18.val[1].i64[0] = (v8 + v15 + 13) & 0xF;
  v18.val[1].i64[1] = (v8 + v15 + 12) & 0xF;
  v18.val[2].i64[0] = (v8 + v15 + 11) & 0xF;
  v18.val[2].i64[1] = (v8 + v15 + 10) & 0xF;
  v18.val[3].i64[0] = (v8 + v15 + 9) & 0xF;
  v18.val[3].i64[1] = (v8 + v15) & 0xF ^ 8;
  *(a3 - 8 + a5) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a4 - 8 + a5), *(v10 + v16 - 7)), veor_s8(*(v11 + v16 - 7), *(v9 + v16 - 7)))), a8), vmul_s8(*&vqtbl4q_s8(v18, a6), a7)));
  return (*(v14 + 8 * (((32 * (a1 == v15)) | ((a1 == v15) << 10)) ^ v13)))();
}

uint64_t sub_23E93DDCC()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((8 * (((v2 == 0) ^ v1) & 1)) & 0xBF | ((((v2 == 0) ^ v1) & 1) << 6)) ^ v0)))();
}

uint64_t sub_23E93DEEC()
{
  result = (*(v2 + 8 * (v0 + 1834)))(*v3, *v1, *(v1 + 8) + ((v0 - 1144) ^ 0x924F11A0));
  *v1 = v5;
  *(v1 + 8) = v4;
  *(v1 + 12) = v4;
  return result;
}

void h5eRUOOOhxuaBmELCqQZZEcx()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = *(&off_28512D4A0 + (*(off_28512D5E8 + (*(off_28512E030 + (-57 * (dword_27E37D480 ^ 0x68 ^ qword_27E37D680))) ^ 0x22u)) ^ (-57 * (dword_27E37D480 ^ 0x68 ^ qword_27E37D680))) + 398);
  v1 = *(&off_28512D4A0 + ((-57 * ((qword_27E37D680 + *v0) ^ 0x68)) ^ *(off_28512D5E8 + (*(off_28512E030 + (-57 * ((qword_27E37D680 + *v0) ^ 0x68))) ^ 0x10u))) + 10);
  v2 = *(v1 - 4) - *v0 - &v4;
  *v0 = 1773100999 * (v2 + 0x4D21136F0F232C98);
  *(v1 - 4) = 1773100999 * (v2 ^ 0xB2DEEC90F0DCD368);
  v5[0] = (31943069 * ((v5 - 959032255 - 2 * (v5 & 0xC6D65441)) ^ 0x1985D48)) ^ 0x63319FAD;
  LOBYTE(v1) = -57 * ((*(v1 - 4) + *v0) ^ 0x68);
  v3 = *(&off_28512D4A0 + ((-57 * ((qword_27E37D680 + dword_27E37D480) ^ 0x68)) ^ byte_23EA861F0[byte_23EA7A950[(-57 * ((qword_27E37D680 + dword_27E37D480) ^ 0x68))] ^ 0x2F]) + 215);
  (*(v3 + 8 * ((*(off_28512E280 + (*(off_28512DA50 + v1 - 8) ^ 0xEFu) - 4) ^ v1) + 3980)))(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23E93E148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 136) = &a17;
  *(v21 - 124) = (v20 + 1099) ^ (((((v21 - 136) | 0x78F77D3F) - (v21 - 136) + ((v21 - 136) & 0x870882C0)) ^ 0x7941C000) * v19);
  *(v21 - 120) = a16;
  v22 = (*(v18 + 8 * (v20 + 2395)))(v21 - 136);
  return (*(v18 + 8 * ((3948 * (*(v21 - 128) > (v20 ^ 0xC1 ^ (v17 - 445)))) ^ v20)))(v22);
}

uint64_t sub_23E93E238()
{
  v11 = v1 + 1;
  if (v11 == 19)
  {
    v13 = 0;
  }

  else
  {
    v12 = (*(v2 + v11) ^ v5) - (((v0 + 38) | v6) ^ v7 ^ *(v3 + v11));
    v13 = v12 + v4 - (v8 & (2 * v12)) == v4;
  }

  v14 = !v13;
  return (*(v9 + 8 * ((v14 * v10) ^ v0)))();
}

uint64_t sub_23E93E240@<X0>(unsigned int a1@<W8>)
{
  v11 = (v6 + a1);
  v12 = veorq_s8(*v1, *v11);
  v13 = veorq_s8(v1[1], v11[1]);
  return (*(v5 + 8 * ((31 * (((((v3 ^ 0x1F) - 2925) | 0x100u) ^ 0x313) != (((v3 ^ 0x1F) - 3520) & v4))) ^ v3 ^ 0x1Fu)))(vorrq_s8(vqtbl1q_s8(v12, v7), v2), vorrq_s8(vqtbl1q_s8(v12, v8), 0), vorrq_s8(vqtbl1q_s8(v12, v9), 0), vorrq_s8(vqtbl1q_s8(v12, v10), 0), vorrq_s8(vqtbl1q_s8(v13, v7), 0), vorrq_s8(vqtbl1q_s8(v13, v9), 0), vorrq_s8(vqtbl1q_s8(v13, v8), 0), vorrq_s8(vqtbl1q_s8(v13, v10), 0));
}

uint64_t sub_23E93E308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  return (*(v11 + 8 * ((45 * v13) ^ 0xC5F)))();
}

uint64_t sub_23E93E340(int a1, int a2, int a3, uint64_t a4, char a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = *(a4 + v18 + 72);
  v23 = (a3 & (2 * v18)) + (v18 ^ a2) + a1;
  *(a18 + v23) = v22 ^ a8;
  *(a18 + v23 + 1) = ((v19 - 2) ^ BYTE1(v22) ^ a5) + (~(2 * ((v19 - 2) ^ BYTE1(v22))) | 0x5B) - 45;
  *(a18 + v23 + 2) = (BYTE2(v22) ^ 0xD7) - ((2 * (BYTE2(v22) ^ 0xD7)) & 0xA4) - 46;
  *(a18 + v23 + 3) = (HIBYTE(v22) ^ a6) - 2 * ((HIBYTE(v22) ^ a6) & a7 ^ HIBYTE(v22) & 8) - 46;
  return (*(v21 + 8 * ((31 * (v18 + 4 < v20)) ^ v19)))(2168520738);
}

uint64_t sub_23E93E400(__n128 a1)
{
  v3[-1] = a1;
  *v3 = a1;
  return (*(v5 + 8 * (((v4 == 0) * v2) ^ v1)))();
}

void sub_23E93E560(uint64_t a1)
{
  v1 = 31943069 * ((-2 - ((a1 | 0xBD38F4CA) + (~a1 | 0x42C70B35))) ^ 0x8589023C);
  v2 = *(a1 + 16) - v1;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_23E93E690(int a1, uint64_t a2)
{
  v7 = (a2 + v4);
  *v7 = v6;
  v7[1] = v6;
  return (*(v5 + 8 * ((((v2 ^ 0xABCu) - 3666 == (v3 & 0xFFFFFFFFFFFFFFF0)) * a1) ^ v2)))();
}

uint64_t sub_23E93E6D0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  *(v6 + v8) = *(v2 + (v8 & 0xF)) ^ *(a2 + v8) ^ *((v8 & 0xF) + v4 + 4) ^ (-61 * (v8 & 0xF)) ^ *(v3 + (v8 & 0xF));
  return (*(v7 + 8 * (((v8 == 0) * (((a1 + 905822864) & 0xCA023DFF) - 1408)) ^ (a1 - 796))))();
}

uint64_t sub_23E93E77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = *(v19 + 16);
  v23 = *(v19 + 32);
  *(v20 - 216) = v17 ^ 0x1D6;
  v24 = veorq_s8(*v23, xmmword_23EAA15C0);
  *(v20 - 128) = veorq_s8(*v22, xmmword_23EAA15B0);
  *(v20 - 112) = v24;
  *(v20 - 232) = v21;
  v25 = *(v18 + 8 * (v17 ^ (46 * (v21 != 0))));
  *(v20 - 224) = -42900;
  return v25(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_23E93E81C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  *(v7 + v8) = *(v4 + (v8 & 0xF)) ^ *(a2 + v8) ^ *(v2 + (v8 & 0xF)) ^ ((v8 & 0xF) * (a1 + 96)) ^ *((v8 & 0xF) + v3 + 1);
  return (*(v6 + 8 * ((3957 * (v8 == 0)) ^ (a1 - 1291))))();
}

void cp2g1b9ro()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *(&off_28512D4A0 + (*(off_28512D5E8 + (*(off_28512E030 + (-57 * (dword_27E37D478 ^ 0x68 ^ qword_27E37D680))) ^ 0x10u)) ^ (-57 * (dword_27E37D478 ^ 0x68 ^ qword_27E37D680))) + 184);
  v1 = -57 * ((qword_27E37D680 + *v0) ^ 0x68);
  v2 = *(&off_28512D4A0 + (*(off_28512E280 + (*(off_28512DA50 + v1 - 8) ^ 0xB8u) - 4) ^ v1) - 68);
  v3 = *(v2 - 4) - *v0 - &v5;
  *v0 = 1773100999 * v3 - 0x110D1848A5CC1228;
  *(v2 - 4) = 1773100999 * (v3 ^ 0xB2DEEC90F0DCD368);
  v6[0] = (31943069 * ((2 * (v6 & 0x4FBD8888) - v6 - 1337821322) ^ 0x770C7E7F)) ^ 0x63319FAD;
  LOBYTE(v2) = -57 * (*v0 ^ 0x68 ^ *(v2 - 4));
  v4 = *(&off_28512D4A0 + ((-57 * (dword_27E37D478 ^ 0x68 ^ qword_27E37D680)) ^ byte_23EA861F0[byte_23EA7A950[(-57 * (dword_27E37D478 ^ 0x68 ^ qword_27E37D680))] ^ 0x15]) + 193);
  (*(v4 + 8 * ((*(off_28512E230 + (*(off_28512E0A0 + v2 - 4) ^ 0xF7u) - 8) ^ v2) + 3891)))(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23E93EC2C@<X0>(int a1@<W8>)
{
  v4 = 1710126949 * ((((v3 - 168) | 0x98300E3E56832D64) - ((v3 - 168) & 0x98300E3E56832D64)) ^ 0xF00CE1E5064DFCELL);
  *(v3 - 160) = ((a1 + 1818066644) & 0x7DDDFFF1) - v4;
  *(v3 - 156) = (a1 + 1745253353) ^ v4;
  v5 = (v3 - 168);
  *v5 = v4 ^ 0x23CA5E5C;
  v5[4] = v1 - v4;
  *(v3 - 128) = a1 + 1818066644 - v4 + 183;
  *(v3 - 148) = v4;
  *(v3 - 144) = a1 + 1818066644 + v4;
  v6 = (*(v2 + 8 * (a1 ^ 0x10C5)))(v3 - 168);
  return (*(v2 + 8 * *(v3 - 152)))(v6);
}

void sub_23E93ED00(uint64_t a1)
{
  v1 = 956911519 * (((a1 | 0x81089698) - a1 + (a1 & 0x7EF76967)) ^ 0xFE5E9A26);
  v2 = *(a1 + 20) - v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) - v1;
  v5 = (8 * (((v4 ^ 0xAE5AC9C) + 78608082) ^ v4 ^ ((v4 ^ 0x118A95F6) + 532697020) ^ ((v4 ^ 0x11A5E336) + 535771516) ^ ((v4 ^ 0x1B7FFFEE) + 355804580))) ^ 0x8DA92D90;
  v6 = (v4 ^ 0xAF02D80F) & (2 * (v4 & 0xCE4ADA4E)) ^ v4 & 0xCE4ADA4E;
  v7 = ((2 * (v4 ^ 0xB7965C83)) ^ 0xF3B90D9A) & (v4 ^ 0xB7965C83) ^ (2 * (v4 ^ 0xB7965C83)) & 0x79DC86CC;
  v8 = v7 ^ 0x8448245;
  v9 = (v7 ^ 0x71180008) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xE7721B34) & v8 ^ (4 * v8) & 0x79DC86CC;
  v11 = *(v3 + 16);
  v12 = ((16 * (v10 ^ 0x188C84C9)) ^ 0x9DC86CD0) & (v10 ^ 0x188C84C9) ^ (16 * (v10 ^ 0x188C84C9)) & 0x79DC86C0;
  v13 = (v10 ^ 0x61500200) & (16 * v9) ^ v9 ^ 0x79DC86CD ^ (v12 ^ 0x19C80400) & (((v10 ^ 0x61500200) & (16 * v9) ^ v9) << 8);
  v14 = *(v3 + 20) + __CFADD__(v5, v11) + (((v4 ^ (2 * ((v13 << 16) ^ v13 ^ (((v12 ^ 0x6014820D) & 0x5C860000 | (v12 ^ 0x9FEB0000) & ((v12 ^ 0x6014820D) << 8)) ^ 0x20000000) & (v13 << 16)))) >> 29) ^ 1);
  *(v3 + 16) = v5 + v11;
  *(v3 + 20) = v14;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_23E93EF78(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x270]) = a3 + 159;
  LODWORD(STACK[0x264]) = v4;
  LODWORD(STACK[0x2E4]) = 268435459;
  return (*(v5 + 8 * ((2059 * (LODWORD(STACK[0x270]) == ((v3 - 891952498) & 0x352A1957) - 1720817245)) ^ (v3 - 3251))))();
}

uint64_t sub_23E93EFBC()
{
  v7 = (12 * ((v2 - 1874087476) & 0x2FB447FB ^ 0x750) + 1073739784) | v1;
  v8 = *v3;
  v9 = *(v3 + 4) + v0;
  *(*v3 + v9) = (HIBYTE(v7) ^ 0xA8) - ((v7 >> 23) & 0xA4) - 46;
  *(v8 + v9 + 1) = (BYTE2(v7) ^ 0x97) - ((2 * (BYTE2(v7) ^ 0x97)) & 0xA4) - 46;
  *(v8 + v9 + 2) = (BYTE1(v7) ^ 0xC7) + (~(2 * (BYTE1(v7) ^ 0xC7)) | 0x5B) - 45;
  *(v8 + v9 + 3) = v7 ^ 5;
  v10 = *v3;
  v11 = (v5 ^ 0x2DD60888) & (2 * (v5 & v6)) ^ v5 & v6;
  v12 = ((2 * (v5 ^ 0x275C19C8)) ^ 0x5576AAC4) & (v5 ^ 0x275C19C8) ^ (2 * (v5 ^ 0x275C19C8)) & 0xAABB5562;
  v13 = v12 ^ 0xAA895522;
  v14 = (v12 ^ 0x80320040) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0xAAED5588) & v13 ^ (4 * v13) & 0xAABB5560;
  v16 = v15 ^ 0x120062;
  v17 = (v15 ^ 0xAAA95500) & (16 * v14) ^ v14;
  v18 = 16 * (v15 ^ 0x120062);
  result = v18 ^ 0xABB55620;
  v20 = result & v16 ^ v18 & 0xAABB5560;
  v21 = v17 ^ 0xAABB5562 ^ (v20 ^ 0xAAB15400) & (v17 << 8);
  v22 = v5 ^ (2 * ((v21 << 16) & 0x2ABB0000 ^ v21 ^ ((v21 << 16) ^ 0x55620000) & (((v20 ^ 0xA0142) << 8) & 0x2ABB0000 ^ 0xAA0000 ^ (((v20 ^ 0xA0142) << 8) ^ 0x3B550000) & (v20 ^ 0xA0142))));
  v23 = ((2 * (v0 + *(v3 + 4) + 4)) & 0x77FF76EE) + ((v0 + *(v3 + 4) + 4) ^ 0x3BFFBB77) - 1006615415;
  *(*v3 + v23) = (HIBYTE(v22) ^ 0xD8) - ((2 * (HIBYTE(v22) ^ 0xD8)) & 0xA4) - 46;
  *(v10 + v23 + 1) = (BYTE2(v22) ^ 0xD5) - ((2 * (BYTE2(v22) ^ 0xD5)) & 0xA4) - 46;
  *(v10 + v23 + 2) = (BYTE1(v22) ^ 0xE6) + (~(2 * (BYTE1(v22) ^ 0xE6)) | 0x5B) - 45;
  *(v10 + v23 + 3) = v22 ^ 0xBC;
  *(v3 + 4) = v4;
  return result;
}

uint64_t sub_23E93F26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, int a23, int a24)
{
  v27 = 11 * (a24 ^ 0x315);
  v28 = v24 + 16;
  *(v26 - 132) = a22 ^ 0xD342D4DE;
  *(v26 - 124) = a21 ^ 0x6EE0E7AB;
  *(v26 - 128) = (v27 + 337637882) ^ a23;
  *(v26 - 120) = v28;
  v29 = (v25 + v28);
  v283 = v28 | ((v27 - 649) | 0x9E9) ^ 0x9E0;
  v30 = *(a13 + (*(v25 + v283) ^ 0xC2)) ^ 0x4A;
  v31 = *(a15 + (v29[11] ^ 0xE6)) + 119;
  v32 = (((v30 ^ (v30 << 6) ^ (8 * v30)) << 16) ^ 0x7BA77AC7) & (v31 ^ 0x7BFF7FDF) | v31 & 0x38;
  v33 = 8 * (v31 & 0x1F);
  v34 = *(a15 + (v29[7] ^ 0x18));
  v35 = ((~(((2 * v34) & 0xFFEF) + (v34 ^ 0x77)) | 0xFFFFF003) & (((((v29[4] ^ (((22 * (a24 ^ 0x315)) ^ 0x63C) + 126)) + *(a16 + (v29[4] ^ 0x70)) + 119) ^ 0x90) << 24) ^ 0xC5723054) | (((2 * v34) & 0xFFFFFFEF) + (v34 ^ 0x77)) & 0xAB) ^ (8 * ((((2 * v34) & 0xFFFFFFEF) + (v34 ^ 0x77)) & 0x1F));
  v36 = *(a15 + (v29[3] ^ 0x41)) + 119;
  v37 = v36 ^ (8 * v36);
  v38 = (v36 ^ ~(8 * v36) | 0xFFFFFE00) & (((((*v29 ^ 0x65) + *(a16 + (*v29 ^ 0xB9))) << 24) + 1996488704) ^ 0xEADE9A99) | v37 & 0x66;
  v39 = (*(a14 + (v29[14] ^ 0xEBLL)) + (v29[14] ^ 0xD7) - 68) << 8;
  v40 = *(a13 + (v29[13] ^ 0xD4)) ^ 0xD2;
  v41 = (((v40 ^ (8 * v40) ^ ((v40 << 6) | 0x1E)) << 16) ^ 0xD51314CD) & (v39 ^ 0xDFFF9BFF) | v39 & 0xEB00;
  v42 = *(a15 + ((v29[15] - ((2 * v29[15]) & 0xFFE7u) + 243) ^ 0xA0)) + 119;
  v43 = (v41 & 0x44917B00 ^ 0x9168F073 ^ (v41 ^ 0x2A4E0010) & (((((v29[12] ^ 0x9A) + *(a16 + (v29[12] ^ 0x46))) << 24) + 1996488704) ^ 0xC36E845D)) & (v42 ^ ~(8 * v42) | 0xFFFFFF00) | (v42 ^ (8 * v42)) & 0xD1;
  LOBYTE(v41) = *(a13 + (v29[5] ^ 0xA8));
  LOBYTE(v41) = (((v41 ^ 0xB2) >> 5) | (8 * (v41 ^ 0xB2))) ^ (((v41 ^ 0xDD) << 6) | ((((v41 ^ 0xDD) << 6) ^ (8 * (v41 ^ 0xDD))) >> 5)) ^ 0x1F;
  v44 = (((v41 >> 3) | (32 * v41)) ^ 0xE3) << 16;
  v45 = (((*(a14 + (v29[6] ^ 0x47)) + (v29[6] ^ 0x7B) - 68) << 8) ^ 0x92E91CBD) & ~v44 | v44 & 0x160000;
  v46 = (v45 ^ 0x6D168442) & (v35 ^ 0xC40106B8) ^ v45 & 0x108CC901;
  v47 = ((*(a14 + (v29[10] ^ 0x2CLL)) + (v29[10] ^ 0x10) - 68) ^ 0x73) << 8;
  v48 = (v29[8] ^ 0xFFFFFFC8) + *(a16 + (v29[8] ^ 0x14)) + 119;
  v49 = ((v47 & 0xB500 | (v33 ^ 0xE4CF30B0 ^ v32) & ~v47) ^ 0x9FF04A77) + ((v48 ^ 0x9B) << 24);
  LOBYTE(v32) = *(a13 + (v29[1] ^ 0xA9));
  v50 = (((*(a14 + (v29[2] ^ 0xELL)) + (v29[2] ^ 0x32) - 68) ^ 0xD9) << 8) | (((v32 ^ ((v32 ^ 0xDD) << 6) ^ (8 * (v32 ^ 0xDD))) ^ 0xA3) << 16);
  v51 = ((v38 ^ 0x4C30E090) & ~v50 | v50 & 0x118500) ^ 0x3F60D708;
  v52 = v46 ^ 0x7E6587EC;
  v53 = v49 ^ 0x4F76F19F;
  v54 = v43 ^ 0xFA2E6F29;
  v55 = *(&off_28512D4A0 + (v27 ^ 0x246));
  v56 = *(v55 + 4 * HIBYTE(v51));
  v57 = *(&off_28512D4A0 + (v27 ^ 0x3A2)) - 4;
  HIDWORD(v58) = v56 ^ 0x93B30;
  LODWORD(v58) = v56 ^ 0xCBF00000;
  v59 = *(&off_28512D4A0 + (v27 ^ 0x232)) - 8;
  v60 = (v58 >> 20) ^ *&v57[4 * (BYTE2(v54) ^ 0x61)] ^ (BYTE2(v54) - 1410497511 + ((2 * ((BYTE2(v54) + 336) & 0x2CA ^ (HIWORD(v54) | 0x7FFFFFFD))) ^ 0x20230805));
  v281 = v27;
  v61 = v60 + 1384216602 - ((2 * v60) & 0xA502F034);
  v62 = *(&off_28512D4A0 + v27 - 504) - 4;
  v63 = *(v55 + 4 * ((v46 ^ 0x7E6587EC) >> 24));
  v64 = *&v62[4 * (v35 ^ 0x9F)] ^ v61;
  v65 = BYTE2(v51);
  v66 = v64 ^ *&v59[4 * BYTE1(v53)];
  HIDWORD(v58) = v63 ^ 0x93B30;
  LODWORD(v58) = v63 ^ 0xCBF00000;
  v67 = (BYTE2(v51) ^ 0x54FA9CB3) + ((v51 >> 15) & 0x166);
  v68 = (v58 >> 20) ^ *&v57[4 * (BYTE2(v51) ^ 0x61)] ^ (v67 - ((2 * v67 + 4410) & 0x1D90) + 919594853);
  v69 = *&v59[4 * ((v43 ^ 0x6F29) >> 8)];
  v282 = *(v26 - 116) < 0x4A0045BFu;
  v70 = v68 & 0x4000;
  if ((v68 & 0x4000 & v69) != 0)
  {
    v70 = -v70;
  }

  v71 = ((v70 + v69) ^ v68 & 0xFFFFBFFF) + 1384216602 - ((2 * ((v70 + v69) ^ v68 & 0xFFFFBFFF)) & 0xA502F034);
  v72 = *(v55 + 4 * (v48 ^ 0x1Du));
  HIDWORD(v73) = v72 ^ 0x93B30;
  LODWORD(v73) = v72 ^ 0xCBF00000;
  v74 = BYTE2(v52);
  v75 = (v73 >> 20) ^ *&v59[4 * BYTE1(v51)] ^ *&v57[4 * (BYTE2(v52) ^ 0x61)] ^ (BYTE2(v52) - 1410497511 + ((2 * ((BYTE2(v52) + 336) & 0x2CE ^ (HIWORD(v52) | 0x7FFFFFF9))) ^ 0x2023080D));
  v76 = *(v55 + 4 * HIBYTE(v54));
  v77 = (v75 + 1384216602 - ((2 * v75) & 0xA502F034)) ^ *&v62[4 * (v43 ^ 0x29)];
  HIDWORD(v73) = v76 ^ 0x93B30;
  LODWORD(v73) = v76 ^ 0xCBF00000;
  v78 = BYTE2(v53);
  v79 = ((v53 >> 15) & 0xA0) + (BYTE2(v53) ^ 0x98139550);
  v80 = *&v62[4 * v53] ^ v65 ^ 0x8527EA8E ^ v71;
  v81 = v66 ^ ((v43 ^ 0xFA2E6F29) >> 16);
  v82 = v79 ^ v78 ^ *&v59[4 * BYTE1(v52)] ^ ((v73 >> 20) + 333049544 - ((2 * (v73 >> 20)) & 0x27B3DD90)) ^ *&v57[4 * (v78 ^ 0x61)];
  v83 = (v82 + 1384216602 - ((2 * v82) & 0xA502F034)) ^ *&v62[4 * (v37 ^ 0xCB)];
  v84 = *(v55 + 4 * (HIBYTE(v66) ^ 0x5B));
  v85 = ((v83 ^ 0xA176B7FB) >> 16);
  HIDWORD(v73) = v84 ^ 0x93B30;
  LODWORD(v73) = v84 ^ 0xCBF00000;
  v86 = v85 - 1949664232 - ((2 * v85 + 672) & 0x590);
  v87 = *&v57[4 * (v85 ^ 0x61)] ^ (v73 >> 20) ^ 0xD84AE106 ^ *&v59[4 * (BYTE1(v77) ^ 0x91)] ^ v85;
  v88 = *(v55 + 4 * HIBYTE(v80));
  v89 = *&v62[4 * v80] ^ 0x864AD056;
  HIDWORD(v73) = v88 ^ 0x93B30;
  LODWORD(v73) = v88 ^ 0xCBF00000;
  v90 = (v87 ^ v86) + v89 - 2 * ((v87 ^ v86) & v89);
  v91 = ((v81 ^ 0x92CB2995) >> 16);
  v92 = *&v57[4 * (v91 ^ 0x61)] ^ (v91 - 1410497512 - ((2 * v91 + 807873184) & 0x20230D90)) ^ *&v59[4 * ((v83 ^ 0xB7FB) >> 8)] ^ (v73 >> 20);
  v93 = v74 ^ 0x1EEFA1FE ^ v77;
  v94 = (v92 + 1384216602 - ((2 * v92) & 0xA502F034)) ^ *&v62[4 * (v74 ^ 0xFE ^ v77)];
  v95 = *(v55 + 4 * (HIBYTE(v77) ^ 0xD7));
  HIDWORD(v73) = v95 ^ 0x93B30;
  LODWORD(v73) = v95 ^ 0xCBF00000;
  v96 = v73 >> 20;
  v97 = ((((v80 >> 13) & 0x7F8) - 1063474556) ^ (v80 >> 13) & 0x7F8) >> 3;
  HIDWORD(v73) = v81 ^ 0x92CB2995;
  LODWORD(v73) = v81 ^ 0x92CB2995;
  v98 = v96 ^ *&v59[4 * (__ROR4__((v73 >> 12) & 0xF000000F ^ 0xCB4AE343, 28) ^ 0xB4AE340C)] ^ *&v57[4 * (BYTE2(v80) ^ 0x61)] ^ (v97 + 333049544 - ((2 * v97) & 0x20230D90));
  v99 = (v98 + 1384216602 - ((2 * v98) & 0xA502F034)) ^ *&v62[4 * (v83 ^ 0xFB)];
  v100 = *(v55 + 4 * (HIBYTE(v83) ^ 0x68));
  HIDWORD(v73) = v100 ^ 0x93B30;
  LODWORD(v73) = v100 ^ 0xCBF00000;
  v101 = *&v57[4 * (BYTE2(v93) ^ 0x61)] ^ (BYTE2(v93) - 1949664232 - ((2 * BYTE2(v93) + 672) & 0x590)) ^ *&v59[4 * BYTE1(v80)] ^ (v73 >> 20);
  v102 = *(v55 + 4 * ((v90 ^ 0xF828F451) >> 24));
  HIDWORD(v73) = v102 ^ 0x93B30;
  LODWORD(v73) = v102 ^ 0xCBF00000;
  v103 = *&v62[4 * (v81 ^ 0x5F)] ^ BYTE2(v93) ^ (v101 + 1384216602 - ((2 * v101) & 0xA502F034)) ^ 0x2E89BA60;
  v104 = BYTE2(v103);
  v105 = (v73 >> 20) ^ *&v57[4 * (BYTE2(v103) ^ 0x61)] ^ *&v59[4 * (BYTE1(v99) ^ 0xD7)] ^ (BYTE2(v103) - 1410497511 + ((2 * ((BYTE2(v103) + 336) & 0x2CB ^ (HIWORD(v103) | 0x7FFFFFFC))) ^ 0x20230807));
  v106 = v94 ^ v91;
  v107 = *(v55 + 4 * (HIBYTE(v94) ^ 0x4F));
  HIDWORD(v73) = v107 ^ 0x93B30;
  LODWORD(v73) = v107 ^ 0xCBF00000;
  v108 = (v105 + 1384216602 - ((2 * v105) & 0xA502F034)) ^ *&v62[4 * (v106 ^ 0xB4)];
  v109 = ((v90 ^ 0xF828F451) >> 16);
  v110 = (v73 >> 20) ^ *&v57[4 * (v109 ^ 0x61)] ^ *&v59[4 * (BYTE1(v103) ^ 0x30)] ^ (v109 - 1410497511 + ((2 * ((v109 + 336) & 0x2CB ^ (((v90 ^ 0xF828F451) >> 16) | 0x7FFFFFFC))) ^ 0x20230807));
  BYTE2(v93) = BYTE2(v99) ^ 0xD8;
  v111 = *(v55 + 4 * (HIBYTE(v99) ^ 0x43));
  v112 = (v110 + 1384216602 - ((2 * v110) & 0xA502F034)) ^ *&v62[4 * (v99 ^ 0x15)];
  HIDWORD(v73) = v111 ^ 0x93B30;
  LODWORD(v73) = v111 ^ 0xCBF00000;
  v106 ^= 0x86FC5F7E;
  v113 = BYTE2(v106);
  v114 = (v73 >> 20) ^ (BYTE2(v106) - 1743547056);
  v115 = *&v59[4 * (BYTE1(v90) ^ 0xC4)] ^ *&v57[4 * (BYTE2(v106) ^ 0x61)] ^ (v114 + 333049544 - ((2 * v114) & 0x27B3DD90));
  v116 = *(v55 + 4 * HIBYTE(v103));
  v117 = (v115 + 1384216602 - ((2 * v115) & 0xA502F034)) ^ *&v62[4 * v103];
  v118 = BYTE2(v93);
  HIDWORD(v73) = v116 ^ 0x93B30;
  LODWORD(v73) = v116 ^ 0xCBF00000;
  v119 = (v73 >> 20) ^ *&v57[4 * (v118 ^ 0x61)] ^ *&v59[4 * BYTE1(v106)] ^ (v118 - 1949664232 - ((2 * v118 + 672) & 0x590));
  v120 = v90 ^ 0x9B;
  v121 = v104 ^ 0x4A738834 ^ v108;
  v122 = *(v55 + 4 * (HIBYTE(v108) ^ 0x83));
  LODWORD(v73) = __ROR4__((v122 << 12) ^ 0x7AE653FD, 24) ^ 0x5553FDE9;
  HIDWORD(v73) = v73;
  v123 = (v119 + 1384216602 - ((2 * v119) & 0xA502F034)) ^ *&v62[4 * v120];
  v124 = (v73 >> 8) | (v122 >> 20);
  v125 = v118 ^ 0xB541F110 ^ v123;
  v126 = v113 ^ 0xD43414C4 ^ v117;
  v127 = *&v57[4 * (BYTE2(v125) ^ 0x61)] ^ *&v59[4 * (BYTE1(v126) ^ 0x30)] ^ v124 ^ (BYTE2(v125) - 1410497511 + ((2 * ((BYTE2(v125) + 336) & 0x2CE ^ (HIWORD(v125) | 0x7FFFFFF9))) ^ 0x2023080D)) ^ 0xCBF;
  v128 = v112 ^ v109;
  v129 = (v127 + 1384216602 - ((2 * v127) & 0xA502F034)) ^ *&v62[4 * (v112 ^ v109)];
  v130 = *(v55 + 4 * (HIBYTE(v112) ^ 0x2A));
  HIDWORD(v73) = v130 ^ 0x93B30;
  LODWORD(v73) = v130 ^ 0xCBF00000;
  v131 = (v73 >> 20) ^ *&v57[4 * (((HIWORD(v121) & 0x84 | 0x20) ^ HIWORD(v121) & 0x20 | HIWORD(v121) & 0x5B) ^ 0x41)] ^ *&v59[4 * BYTE1(v125)] ^ (BYTE2(v121) - 1949664232 - ((2 * BYTE2(v121) + 672) & 0x590));
  v132 = (v131 + 1384216602 - ((2 * v131) & 0xA502F034)) ^ *&v62[4 * v126];
  v133 = *(v55 + 4 * (HIBYTE(v117) ^ 0x1D));
  HIDWORD(v73) = v133 ^ 0x93B30;
  LODWORD(v73) = v133 ^ 0xCBF00000;
  BYTE1(v117) = BYTE1(v128) ^ 0x7E;
  v134 = ((v128 ^ 0xE3457ECA) >> 16);
  v135 = (v73 >> 20) ^ *&v57[4 * (v134 ^ 0x61)] ^ *&v59[4 * (BYTE1(v121) ^ -BYTE1(v121) ^ (48 - (BYTE1(v121) ^ 0x30))) + 192] ^ (v134 - 1410497511 + ((2 * ((v134 + 336) & 0x2CA ^ (((v128 ^ 0xE3457ECA) >> 16) | 0x7FFFFFFD))) ^ 0x20230805));
  v136 = *(v55 + 4 * (HIBYTE(v123) ^ 0x7C));
  HIDWORD(v73) = v136 ^ 0x93B30;
  LODWORD(v73) = v136 ^ 0xCBF00000;
  v137 = (v135 + 1384216602 - ((2 * v135) & 0xA502F034)) ^ *&v62[4 * (v118 ^ 0x10 ^ v123)];
  v138 = BYTE2(v126);
  v139 = *&v57[4 * (BYTE2(v126) ^ 0x61)] ^ (BYTE2(v126) - 1410497511 + ((2 * ((BYTE2(v126) + 336) & 0x2CC ^ (HIWORD(v126) | 0x7FFFFFFB))) ^ 0x20230809)) ^ (v73 >> 20) ^ *&v59[4 * BYTE1(v117)];
  v140 = (v139 + 1384216602 - ((2 * v139) & 0xA502F034)) ^ *&v62[4 * (v121 ^ 0xCA)];
  v141 = v129 ^ BYTE2(v125);
  v142 = *(v55 + 4 * ((v141 ^ 0xF8E7DF62) >> 24));
  v143 = (v132 & 0x800000 | 0x296CBB57) ^ v132 & 0xFF7FFFFF;
  HIDWORD(v73) = v142 ^ 0x93B30;
  LODWORD(v73) = v142 ^ 0xCBF00000;
  v144 = v138 ^ 0x396579B1 ^ v140;
  v145 = ((BYTE2(v144) - 1743547056) & 0x881080FC ^ HIWORD(v144) & 0xFC | (BYTE2(v144) - 1743547056) & 0x10031703 ^ HIWORD(v144) & 3) ^ (v73 >> 20);
  v146 = v134 ^ 0xA661F6A1 ^ v137;
  v147 = *&v59[4 * BYTE1(v146)] ^ *&v57[4 * (BYTE2(v144) ^ 0x61)] ^ (v145 + 333049544 - ((2 * v145) & 0x27B3DD90));
  v148 = BYTE2(v121) ^ 0xD84AD1CC ^ v143;
  v149 = *&v62[4 * (BYTE2(v121) ^ 0xCC ^ v143)];
  v150 = v147 & 0x10;
  v151 = (v150 & ~v149) == 0;
  v152 = v149 ^ 0x864AD056;
  if (!v151)
  {
    v150 = -v150;
  }

  v153 = (v150 + v152) ^ v147 & 0xFFFFFFEF;
  v154 = *(v55 + 4 * (HIBYTE(v143) ^ 0x11));
  HIDWORD(v155) = v154 ^ 0x93B30;
  LODWORD(v155) = v154 ^ 0xCBF00000;
  v156 = (v155 >> 20) ^ *&v57[4 * (BYTE2(v141) ^ 0x86)] ^ *&v59[4 * BYTE1(v144)] ^ ((BYTE2(v141) ^ 0xE7) - 1949664232 - ((2 * (BYTE2(v141) ^ 0xE7) + 672) & 0x590));
  v157 = BYTE2(v141) ^ 0xE7 ^ *&v62[4 * v146] ^ (v156 + 1384216602 - ((2 * v156) & 0xA502F034));
  v158 = *(v55 + 4 * HIBYTE(v146));
  HIDWORD(v155) = v158 ^ 0x93B30;
  LODWORD(v155) = v158 ^ 0xCBF00000;
  v159 = (v155 >> 20) ^ *&v57[4 * (BYTE2(v148) ^ 0x61)] ^ *&v59[4 * (BYTE1(v129) ^ 0xEF)] ^ (BYTE2(v148) - 1949664232 - ((2 * BYTE2(v148) + 672) & 0x590));
  v160 = *&v62[4 * v144] ^ BYTE2(v148) ^ (v159 + 1384216602 - ((2 * v159) & 0xA502F034));
  v161 = *(v55 + 4 * (HIBYTE(v140) ^ 0xF0));
  HIDWORD(v155) = v161 ^ 0x93B30;
  LODWORD(v155) = v161 ^ 0xCBF00000;
  v162 = BYTE2(v153) ^ 0x82;
  v163 = *&v57[4 * BYTE2(v137)] ^ ((BYTE2(v137) ^ 0x61) - 1949664232 - ((2 * (BYTE2(v137) ^ 0x61) + 672) & 0x590)) ^ *&v59[4 * BYTE1(v148)] ^ (v155 >> 20);
  v164 = v163 + 1384216602 - ((2 * v163) & 0xA502F034);
  if (((v153 ^ 0xBA8229AA) & 8) != 0)
  {
    v165 = (v153 ^ 0xAA) - 8;
  }

  else
  {
    v165 = v153 ^ 0xA2;
  }

  v166 = *(v55 + 4 * (HIBYTE(v153) ^ 0x73));
  v167 = BYTE2(v137) ^ *&v62[4 * (v141 ^ 0xA8)] ^ 0xC7142314 ^ v164;
  HIDWORD(v169) = v166 ^ 0x93B30;
  LODWORD(v169) = v166 ^ 0xCBF00000;
  v168 = v169 >> 20;
  v170 = BYTE2(v167);
  v171 = v157 ^ 0x51D1299C;
  v172 = *(v55 + 4 * ((v157 ^ 0x51D1299C) >> 24));
  HIDWORD(v169) = v172 ^ 0x93B30;
  LODWORD(v169) = v172 ^ 0xCBF00000;
  v173 = v168 ^ *&v57[4 * (BYTE2(v167) ^ 0x61)] ^ *&v59[4 * ((v160 ^ 0x3095) >> 8)] ^ (BYTE2(v167) - 1410497511 + ((2 * ((BYTE2(v167) + 336) & 0x2CE ^ (HIWORD(v167) | 0x7FFFFFF9))) ^ 0x2023080D));
  v174 = (v173 + 1384216602 - ((2 * v173) & 0xA502F034)) ^ *&v62[4 * (v157 ^ 0x56)];
  v175 = v162;
  v176 = (v169 >> 20) ^ *&v59[4 * BYTE1(v167)] ^ (v162 - 1949664232 - ((2 * v162 + 672) & 0x590));
  v177 = *(v55 + 4 * ((v160 ^ 0xF573095) >> 24));
  HIDWORD(v169) = v177 ^ 0x93B30;
  LODWORD(v169) = v177 ^ 0xCBF00000;
  v178 = v176 ^ *&v57[4 * (v175 ^ 0x61)];
  v179 = v178 + 1384216602 - ((2 * v178) & 0xA502F034);
  v180 = (BYTE2(v171) - 1743547056) ^ BYTE2(v171) ^ *&v57[4 * (BYTE2(v171) ^ 0x61)] ^ *&v59[4 * (BYTE1(v153) ^ 0x19)] ^ ((v169 >> 20) + 333049544 - ((2 * (v169 >> 20)) & 0x27B3DD90));
  v181 = (v180 + 1384216602 - ((2 * v180) & 0xA502F034)) ^ *&v62[4 * v167];
  v182 = (v160 ^ 0xF573095) >> 16;
  v183 = ((v160 ^ 0xF573095) >> 16);
  v184 = (v183 - 1743547056) & 0x9803106D ^ v182 & 0x6D;
  v185 = (v184 | (v183 - 1743547056) & 0x108792) ^ v182 & 0x92;
  v186 = *(v55 + 4 * HIBYTE(v167));
  HIDWORD(v169) = v186 ^ 0x93B30;
  LODWORD(v169) = v186 ^ 0xCBF00000;
  v187 = (v169 >> 20) ^ *&v59[4 * BYTE1(v171)] ^ *&v57[4 * (v183 ^ 0x61)] ^ (v185 + 333049544 - 2 * (v185 & 0x101186C9 ^ v184 & 1));
  v188 = *&v62[4 * (v160 ^ 0x5F)] ^ v175 ^ 0x6788341F ^ v179;
  v189 = v181 ^ 0x69685A6;
  v190 = (v187 + 1384216602 - ((2 * v187) & 0xA502F034)) ^ *&v62[4 * (v165 ^ 0xC2)];
  v191 = v190 ^ 0x59538F4F;
  v192 = ((v190 ^ 0x59538F4F) >> 16);
  v193 = v174 ^ v170;
  v194 = *(v55 + 4 * (HIBYTE(v174) ^ 0x6A));
  HIDWORD(v169) = v194 ^ 0x93B30;
  LODWORD(v169) = v194 ^ 0xCBF00000;
  v195 = (v169 >> 20) ^ *&v57[4 * (v192 ^ 0x61)] ^ (v192 - 1949664232 - ((2 * v192 + 672) & 0x590));
  v196 = *&v62[4 * v188] ^ v192 ^ *&v59[4 * (BYTE1(v181) ^ 0xB5)] ^ (v195 + 1384216602 - ((2 * v195) & 0xA502F034));
  v197 = ((v193 ^ 0xA35DEDCD) >> 16);
  v198 = (v197 ^ 0x98139550) + (((v193 ^ 0xA35DEDCD) >> 15) & 0xA0);
  v199 = *(v55 + 4 * HIBYTE(v188));
  HIDWORD(v169) = v199 ^ 0x93B30;
  LODWORD(v169) = v199 ^ 0xCBF00000;
  v200 = (v169 >> 20) ^ *&v59[4 * (BYTE1(v190) ^ 0xBF)] ^ *&v57[4 * (v197 ^ 0x61)] ^ (v198 + 333049544 + ((2 * (v198 & 0x2CE ^ (((v193 ^ 0xA35DEDCD) >> 16) | 0x7FFFFFF9))) ^ 0x2023080D) + 1);
  v201 = (v200 + 1384216602 - ((2 * v200) & 0xA502F034)) ^ *&v62[4 * (((v181 ^ 0x69685A6) & 0x77 | v181 & 0x88) ^ 0x4A)];
  v202 = *(v55 + 4 * (HIBYTE(v181) ^ 0xCF));
  HIDWORD(v169) = v202 ^ 0x93B30;
  LODWORD(v169) = v202 ^ 0xCBF00000;
  v203 = *&v57[4 * (BYTE2(v188) ^ 0x61)] ^ (BYTE2(v188) - 1743547056) ^ *&v59[4 * ((v193 ^ 0xEDCD) >> 8)] ^ ((v169 >> 20) + 333049544 - ((2 * (v169 >> 20)) & 0x27B3DD90));
  v204 = *(v55 + 4 * HIBYTE(v191));
  HIDWORD(v169) = v204 ^ 0x93B30;
  LODWORD(v169) = v204 ^ 0xCBF00000;
  v205 = (v203 + 1384216602 - ((2 * v203) & 0xA502F034)) ^ *&v62[4 * v191];
  v206 = (BYTE2(v189) - 1743547056) & 0x801962A ^ HIWORD(v189) & 0x2A | (BYTE2(v189) - 1743547056) & 0x901201D5 ^ HIWORD(v189) & 0xD5;
  v207 = (v206 + 333049544 - ((2 * v206) & 0x20230D90)) ^ *&v57[4 * (BYTE2(v189) ^ 0x61)];
  v208 = (((v169 >> 20) ^ -(v169 >> 20) ^ (v207 - (v207 ^ (v169 >> 20)))) + v207) ^ *&v59[4 * BYTE1(v188)];
  v209 = (v208 + 1384216602 - ((2 * v208) & 0xA502F034)) ^ *&v62[4 * (v193 ^ 7)];
  v210 = *(v55 + 4 * ((v196 ^ 0x2733EA3C) >> 24));
  HIDWORD(v169) = v210 ^ 0x93B30;
  LODWORD(v169) = v210 ^ 0xCBF00000;
  BYTE2(v193) = BYTE2(v209) ^ 0xD5;
  v211 = (v169 >> 20) ^ *&v57[4 * (((v209 ^ 0x7D5968C) >> 16) ^ 0x61)] ^ *&v59[4 * (BYTE1(v205) ^ 0x2D)] ^ (((v209 ^ 0x7D5968C) >> 16) - 1949664232 - ((2 * ((v209 ^ 0x7D5968C) >> 16) + 672) & 0x590));
  v212 = v197 ^ 0x55C5757D ^ v201;
  v213 = *&v62[4 * (v197 ^ 0x7D ^ v201)];
  v214 = *(v55 + 4 * (HIBYTE(v201) ^ 0x9C));
  v215 = (v211 + 1384216602 - ((2 * v211) & 0xA502F034)) ^ v213;
  HIDWORD(v169) = v214 ^ 0x93B30;
  LODWORD(v169) = v214 ^ 0xCBF00000;
  v216 = ((v196 ^ 0x2733EA3C) >> 16);
  v217 = (v169 >> 20) ^ *&v57[4 * (v216 ^ 0x61)] ^ *&v59[4 * (BYTE1(v209) ^ 0xA6)] ^ (v216 - 1949664232 - ((2 * v216 + 672) & 0x590));
  v218 = BYTE2(v212);
  v219 = (v217 + 1384216602 - ((2 * v217) & 0xA502F034)) ^ *&v62[4 * ((v205 ^ BYTE2(v188)) ^ 0x16)];
  v220 = *(v55 + 4 * (HIBYTE(v205) ^ 0x39));
  HIDWORD(v169) = v220 ^ 0x93B30;
  LODWORD(v169) = v220 ^ 0xCBF00000;
  v221 = (v169 >> 20) ^ *&v57[4 * (BYTE2(v212) ^ 0x61)] ^ *&v59[4 * ((v196 ^ 0xEA3C) >> 8)] ^ (BYTE2(v212) - 1949664232 - ((2 * BYTE2(v212) + 672) & 0x590));
  v222 = (v221 + 1384216602 - ((2 * v221) & 0xA502F034)) ^ *&v62[4 * (v209 ^ 0x46)];
  v223 = *(v55 + 4 * ((v209 ^ 0x7D5968C) >> 24));
  HIDWORD(v169) = v223 ^ 0x93B30;
  LODWORD(v169) = v223 ^ 0xCBF00000;
  v224 = *&v57[4 * (BYTE2(v205) ^ 0x6F)] ^ ((BYTE2(v205) ^ 0xE) - 1410497511 + ((2 * (((BYTE2(v205) ^ 0xE) + 336) & 0x2CE ^ (BYTE2(v205) ^ 0xE | 0x7FFFFFF9))) ^ 0x2023080D)) ^ *&v59[4 * BYTE1(v212)] ^ (v169 >> 20);
  v225 = (v224 + 1384216602 - ((2 * v224) & 0xA502F034)) ^ *&v62[4 * (v196 ^ 0xF6)];
  v226 = BYTE2(v225) ^ 0xCB;
  v227 = *(v55 + 4 * (HIBYTE(v215) ^ 0xEB));
  HIDWORD(v169) = v227 ^ 0x93B30;
  LODWORD(v169) = v227 ^ 0xCBF00000;
  v228 = v218 ^ 0x34DBC40E ^ v222;
  v229 = v216 ^ 0xE3E633EE ^ v219;
  v230 = (v169 >> 20) ^ *&v57[4 * (BYTE2(v225) ^ 0xAA)] ^ *&v59[4 * (BYTE1(v222) ^ 0xF4)] ^ (v226 - 1410497512 - ((2 * v226 + 807873184) & 0x20230D90));
  v231 = v226 ^ *&v62[4 * v229] ^ (v230 + 1384216602 - ((2 * v230) & 0xA502F034));
  v232 = *(v55 + 4 * (HIBYTE(v219) ^ 0x2A));
  HIDWORD(v169) = v232 ^ 0x93B30;
  LODWORD(v169) = v232 ^ 0xCBF00000;
  v233 = (v169 >> 20) ^ *&v57[4 * (BYTE2(v215) ^ 0xEB)] ^ *&v59[4 * (BYTE1(v225) ^ 0x27)] ^ ((BYTE2(v215) ^ 0x8A) - 1410497511 + ((2 * (((BYTE2(v215) ^ 0x8A) + 336) & 0x2CE ^ (HIWORD(v215) ^ 0x228A | 0x7FFFFFF9))) ^ 0x2023080D));
  LOBYTE(v226) = v215 ^ BYTE2(v193);
  v234 = *(v55 + 4 * HIBYTE(v228));
  v235 = BYTE2(v215) ^ 0x8A ^ *&v62[4 * v228] ^ (v233 + 1384216602 - ((2 * v233) & 0xA502F034));
  HIDWORD(v169) = v234 ^ 0x93B30;
  LODWORD(v169) = v234 ^ 0xCBF00000;
  v236 = *&v62[4 * ((v225 ^ BYTE2(v205)) ^ 0x3B)];
  v237 = *&v57[4 * (BYTE2(v229) ^ 0x61)] ^ (BYTE2(v229) - 1743547056) ^ *&v59[4 * (BYTE1(v215) ^ 0x12)] ^ ((v169 >> 20) + 333049544 - ((2 * (v169 >> 20)) & 0x27B3DD90));
  v238 = *(v55 + 4 * (HIBYTE(v225) ^ 0xAF));
  v239 = BYTE2(v228);
  HIDWORD(v169) = v238 ^ 0x93B30;
  LODWORD(v169) = v238 ^ 0xCBF00000;
  v240 = *&v62[4 * (v226 ^ 0x2C)];
  v241 = (v231 ^ 0x19282D40) >> 24;
  v242 = v235 ^ 0x4C4AADA1;
  v243 = v240 & 4 ^ 0xD4CBA84C ^ *&v57[4 * (BYTE2(v228) ^ 0x61)] ^ (BYTE2(v228) - 1410497511 + ((2 * ((BYTE2(v228) + 336) & 0x2CC ^ (HIWORD(v228) | 0x7FFFFFFB))) ^ 0x20230809)) ^ *&v59[4 * BYTE1(v229)] ^ v240 & 0xFFFFFFFB ^ (v169 >> 20);
  v244 = BYTE2(v229) ^ v236 ^ 0x931B4B3F ^ (v237 + 1384216602 - ((2 * v237) & 0xA502F034));
  v245 = v239 ^ 0x907C8AB2 ^ v243;
  v246 = *(&off_28512D4A0 + (v281 ^ 0x2B8)) - 12;
  v247 = *(&off_28512D4A0 + (v281 - 253)) - 8;
  v248 = *(&off_28512D4A0 + (v281 ^ 0x313)) - 4;
  v249 = (v235 ^ 0x4C4AADA1) >> 24;
  v250 = *&v248[4 * BYTE1(v244)] + 1378471340;
  v251 = *(&off_28512D4A0 + (v281 ^ 0x202)) - 8;
  v252 = *&v246[4 * (v241 ^ 0x39)] ^ *&v247[4 * BYTE2(v245)] ^ 0x76CECFCF ^ ((16 * v250) | 0x2A6600E0);
  v253 = (v252 + 1074336735 - ((2 * v252) & 0x801227BE)) ^ *&v251[4 * (v235 ^ 0x1D)];
  v254 = *&v248[4 * (BYTE1(v243) ^ 0x8F)] + 1378471340;
  v255 = *&v246[4 * (v249 ^ 0x39)] ^ *&v247[4 * ((v231 ^ 0x19282D40) >> 16)] ^ 0x76CECFCF ^ ((16 * v254) | 0x2A6600E0);
  v256 = (v255 + 1074336735 - ((2 * v255) & 0x801227BE)) ^ *&v251[4 * v244];
  v257 = HIBYTE(v244);
  v258 = HIBYTE(v245);
  v259 = *&v248[4 * ((v231 ^ 0x2D40) >> 8)] + 1378471340;
  v260 = *&v246[4 * (v257 ^ 0x39)] ^ *&v247[4 * BYTE2(v242)] ^ 0x76CECFCF ^ v259 ^ ((16 * v259) | 0x2A6600E0);
  v261 = *&v248[4 * BYTE1(v242)];
  LODWORD(v248) = (v260 + 1074336735 - ((2 * v260) & 0x801227BE)) ^ *&v251[4 * v245];
  v262 = v250 ^ a20 ^ 0x9EC810A3 ^ (v253 - ((2 * v253) & 0xEB1C313A) - 175236963);
  v263 = *&v246[4 * (HIBYTE(v245) ^ 0x39)] ^ 0x76CECFCF ^ *&v247[4 * BYTE2(v244)] ^ (v261 + 1378471340) ^ ((16 * (v261 + 1378471340)) | 0x2A6600E0);
  v264 = v254 ^ *(v26 - 132) ^ (v256 - ((2 * v256) & 0x3CB93B16) + 509386123);
  v265 = (v263 + 1074336735 - ((2 * v263) & 0x801227BE)) ^ *&v251[4 * (v231 ^ 0xFC)];
  v266 = (v265 - ((2 * v265) & 0xDCF8A4F2) + 1853641337) ^ *(v26 - 128);
  v267 = (v248 - ((2 * v248) & 0xF9DDBB0) - 2016481832) ^ *(v26 - 124);
  v268 = *(&off_28512D4A0 + (v281 - 607));
  LOBYTE(v261) = (5 * *(v268 + (v241 ^ 0x1A ^ v262))) ^ 0xE8;
  LOBYTE(v263) = 80 * *(v268 + (v241 ^ 0x1A ^ v262));
  v29[3] = v261 & 0xB5 ^ v263 & 0xBF | v261 & 0x4A ^ v263 & 0x40;
  v269 = *(&off_28512D4A0 + (v281 ^ 0x2E3));
  v29[10] = -2 * (*(v269 + (BYTE1(v267) ^ 0xE7)) & 1) - 97 * *(v269 + (BYTE1(v267) ^ 0xE7)) + 1;
  v270 = *(&off_28512D4A0 + (v281 - 266)) - 4;
  v271 = v270[HIBYTE(v266) ^ 0x5ELL];
  HIDWORD(v169) = v271 ^ 2;
  LODWORD(v169) = (v271 ^ 0x55555555) << 24;
  v29[12] = (v169 >> 28) ^ 0xE8;
  v272 = v270[HIBYTE(v262) ^ 0xFCLL];
  HIDWORD(v169) = v272 ^ 2;
  LODWORD(v169) = (v272 ^ 0x55555555) << 24;
  *v29 = ((v169 >> 28) & 4 | 0x7A) ^ (v169 >> 28) & 0xFB;
  v273 = *(&off_28512D4A0 + (v281 ^ 0x351));
  v274 = *(v26 - 120);
  v275 = *(v273 + (BYTE2(v262) ^ 0xCFLL));
  v276 = 116 * (v275 ^ 0xFFFFFFF5) - ((-24 * (v275 ^ 0xFFFFFFF5)) & 0xFFFFFFBF) + 94;
  v29[1] = v275 ^ 0x36 ^ (116 * (v275 ^ 0xF5) - ((-24 * (v275 ^ 0xF5)) & 0xBF) + 94);
  v29[2] = (-97 * *(v269 + (BYTE1(v262) ^ 0xC4))) ^ 0x43;
  v29[7] = (5 * *(v268 + (v249 ^ 0x9B ^ v264))) ^ (80 * *(v268 + (v249 ^ 0x9B ^ v264))) ^ 0x16;
  v29[13] = *(v273 + (BYTE2(v266) ^ 0xB4)) ^ (116 * (*(v273 + (BYTE2(v266) ^ 0xB4)) ^ 0x35)) ^ 0xFD;
  v29[11] = (5 * *(v268 + (v257 ^ 0xE5 ^ v267))) ^ (80 * *(v268 + (v257 ^ 0xE5 ^ v267))) ^ 0xFC;
  *(a18 + v283) = *(v273 + (BYTE2(v267) ^ 0x56)) ^ (116 * (*(v273 + (BYTE2(v267) ^ 0x56)) ^ 0x35)) ^ 0xEE;
  v29[6] = (-97 * *(v269 + (BYTE1(v264) ^ 0xD8))) ^ 0xBF;
  v29[5] = *(v273 + (BYTE2(v264) ^ 2)) ^ 0xB6 ^ (116 * (*(v273 + (BYTE2(v264) ^ 2)) ^ 0x35));
  v277 = v270[BYTE3(v267) ^ 0x5DLL];
  HIDWORD(v169) = v277 ^ 2;
  LODWORD(v169) = (v277 ^ 0x55555555) << 24;
  v29[8] = (v169 >> 28) ^ 0x24;
  LOBYTE(v277) = 5 * *(v268 + (v258 ^ v266 ^ 0xE0));
  LOBYTE(v258) = 80 * *(v268 + (v258 ^ v266 ^ 0xE0));
  v29[15] = (v258 ^ -v258 ^ ((v277 ^ 0xE7) - (v277 ^ 0xE7 ^ v258))) + (v277 ^ 0xE7);
  v278 = v270[HIBYTE(v264) ^ 0x5FLL];
  v29[4] = (((v278 >> 4) ^ 5) - 2 * (((v278 >> 4) ^ 5) & 7) - 89) ^ (16 * v278) ^ 0x20;
  v29[14] = (-97 * *(v269 + (BYTE1(v266) ^ 0x33))) ^ 0x42;
  v279 = (v274 + 1241531855) < *(v26 - 116);
  if (v282 != (v274 + 1241531855) < 0x4A0045BF)
  {
    v279 = v282;
  }

  return (*(a17 + 8 * ((3818 * v279) ^ v281)))(a18, 57, v257, v269, v281, v268, v267, v276, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_23E93F32C(double a1, double a2, __n128 a3)
{
  v6[-1] = a3;
  *v6 = a3;
  return (*(v7 + 8 * (((v5 == 0) * v4) | v3)))();
}

uint64_t sub_23E93F3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, unsigned int a22)
{
  v25 = a22 < a21;
  if (v25 == v22 > 0x13E05392)
  {
    v25 = v22 + ((v23 + 1291760018) & 0xB30146AC ^ 0xEC1FAC41) < a22;
  }

  return (*(v24 + 8 * ((30 * v25) ^ v23)))();
}

uint64_t sub_23E93F41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = vrev64q_s8(**(a1 + 8));
  v15 = vextq_s8(v14, v14, 8uLL);
  v16.i64[0] = 0x6666666666666666;
  v16.i64[1] = 0x6666666666666666;
  v17 = vandq_s8(vaddq_s8(v15, v15), v16);
  v16.i64[0] = 0x3333333333333333;
  v16.i64[1] = 0x3333333333333333;
  v18 = vaddq_s8(v17, veorq_s8(v15, v16));
  v17.i64[0] = 0xFDFDFDFDFDFDFDFDLL;
  v17.i64[1] = 0xFDFDFDFDFDFDFDFDLL;
  v16.i64[0] = 0xC6C6C6C6C6C6C6C6;
  v16.i64[1] = 0xC6C6C6C6C6C6C6C6;
  v19 = vrev64q_s8(veorq_s8(vmlaq_s8(v16, v18, v17), xmmword_23EAA16B0));
  *(v13 - 104) = vextq_s8(v19, v19, 8uLL);
  return (*(v12 + 8 * (v10 ^ (71 * (v11 != 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a1);
}

uint64_t sub_23E93F540()
{
  v5 = *(v0 + 16) - 1895917965;
  v6 = *(v0 + 12) + 1162078270;
  v7 = (v5 < 0xB2F4D305) ^ (v6 < 0xB2F4D305);
  v8 = v5 < v6;
  if (v7)
  {
    v8 = v6 < 0xB2F4D305;
  }

  return (*(v1 + 8 * ((v8 * (v3 * v4 - 3715)) ^ v2)))();
}

uint64_t sub_23E93F608@<X0>(int a1@<W1>, uint64_t a2@<X3>, int a3@<W5>, int a4@<W6>, int a5@<W7>, int a6@<W8>)
{
  v10 = (v8 + 4 * v7);
  v11 = v7 + 1;
  *v10 = v10[397] ^ (a1 + ((a6 + a3) & a4) - 3165) ^ *(a2 + 4 * (*(v8 + 4 * v11) & 1)) ^ ((*(v8 + 4 * v11) & 0x7FFFFFFE | v6 & 0x80000000) >> 1);
  return (*(v9 + 8 * (((v11 == 227) * a5) ^ a6)))();
}

uint64_t sub_23E93F6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>)
{
  v19 = a3 + v13;
  v20 = (v12 + v19 - 1) & 0xF;
  v22.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v22.i64[1] = a8;
  v23 = vrev64q_s8(vmulq_s8(v22, a9));
  *(a2 + v19) = veorq_s8(veorq_s8(veorq_s8(*(v15 + v20 - 15), *(a5 + v19)), veorq_s8(*(v14 + v20 + 2 - 15), *(v16 + v20 + 2 - 15))), vextq_s8(v23, v23, 8uLL));
  return (*(v18 + 8 * (((a1 == v19) * a4) ^ v17)))();
}

uint64_t sub_23E93F6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v24 - 128) = a12 * v18 + 103995398;
  *(v24 - 124) = (v20 ^ 0xCA4) - a12 * v18 + 1043;
  *(v24 - 136) = v21;
  (*(v19 + 8 * (v20 ^ 0x150D)))(v24 - 136);
  *(v24 - 120) = (v20 ^ 0xCA4) + a11 * v18 + 34;
  *(v24 - 136) = &a18;
  *(v24 - 128) = a17;
  (*(v19 + 8 * ((v20 ^ 0xCA4) + 1542)))(v24 - 136);
  *(v24 - 120) = a17;
  *(v24 - 124) = ((v20 ^ 0xCA4) + 213) ^ ((((v23 | 0xB4856627) - (v23 & 0xB4856627)) ^ 0xB533DB18) * v18);
  *(v24 - 136) = v21;
  v25 = (*(v19 + 8 * ((v20 ^ 0xCA4) + 1509)))(v24 - 136);
  return (*(v19 + 8 * (((*(v24 - 128) == v22) * ((v20 ^ 0x203) - 869)) ^ v20 ^ 0xCA4)))(v25);
}

void sub_23E93F7F4(uint64_t a1)
{
  v1 = 914963389 * (((a1 ^ 0x8E8777BD | 0xF937576B) - ((a1 ^ 0x8E8777BD) & 0xF937576B)) ^ 0x965CF9B1);
  v2 = *(a1 + 8) + v1;
  v3 = (*(a1 + 4) ^ v1);
  if (*(a1 + 16))
  {
    v4 = v3 == 16905;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23E93F8D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  v23 = v22 - 358399742 > a20;
  if (a20 < 0xEAA340C2 != (v22 - 358399742) < 0xEAA340C2)
  {
    v23 = (v22 - 358399742) < 0xEAA340C2;
  }

  return (*(v20 + 8 * ((((a3 + v21 + 106) ^ v23) & 1 | (4 * (((a3 + v21 + 106) ^ v23) & 1))) ^ (a3 + v21 + 1821))))();
}

uint64_t sub_23E93F93C@<X0>(int a1@<W8>)
{
  v5 = *(v2 - 88);
  *(v2 - 1) = *(v2 - 104);
  *v2 = v5;
  return (*(v4 + 8 * (((v3 != 0) * v1) | a1)))();
}

uint64_t sub_23E93FA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int32x4_t a39, int32x4_t a40, int32x4_t a41, int32x4_t a42)
{
  if (BYTE4(a38) == 1)
  {
    v47 = 1171;
    BYTE4(a33) = (-8 * a35 - 8) ^ 0x2A;
    BYTE5(a33) = (a35 >> 5) ^ 0xD2;
    BYTE6(a33) = (a35 >> 13) ^ 0xD2;
    HIBYTE(a33) = (a35 >> 21) ^ 0xD2;
    LOBYTE(a34) = ((__PAIR64__(HIDWORD(a34), a35) >> 29) - ((2 * (__PAIR64__(HIDWORD(a34), a35) >> 29)) & 0x7A) + 61) ^ 0xEF;
    BYTE1(a34) = (HIDWORD(a34) >> 5) ^ 0xD2;
    BYTE2(a34) = (HIDWORD(a34) >> 13) ^ 0xD2;
    v48 = (HIDWORD(a34) >> 21) ^ 0xFFFFFFD2;
  }

  else
  {
    v46 = 627142921;
    if (BYTE4(a38) != 2)
    {
      goto LABEL_6;
    }

    v47 = (v45 - 2069404278) & 0x55F72DFF;
    BYTE4(a33) = (HIDWORD(a34) >> 21) - ((HIDWORD(a34) >> 21 << (v45 - 8)) & 0xA4) - 46;
    BYTE5(a33) = (HIDWORD(a34) >> 13) - ((HIDWORD(a34) >> 12) & 0xA4) - 46;
    BYTE6(a33) = (~(HIDWORD(a34) >> 4) | 0x5B) + (HIDWORD(a34) >> 5) - 45;
    HIBYTE(a33) = (__PAIR64__(HIDWORD(a34), a35) >> 29) - ((2 * (__PAIR64__(HIDWORD(a34), a35) >> 29)) & 0xA4) - 46;
    LOBYTE(a34) = (a35 >> 21) - ((a35 >> 20) & 0xA4) - 46;
    BYTE1(a34) = (a35 >> 13) - ((a35 >> 12) & 0xA4) - 46;
    BYTE2(a34) = (a35 >> 5) - ((a35 >> 4) & 0xA4) - 46;
    LOBYTE(v48) = (8 * (a35 - 2 * (a35 & 1)) + 8) ^ 0xDA;
  }

  v46 = v45 + v47 - 1171;
  BYTE3(a34) = v48;
LABEL_6:
  HIDWORD(a19) = HIDWORD(a14) - 2047321226;
  v126 = a11 + a12;
  v49.n128_u64[0] = 0xD2D2D2D2D2D2D2D2;
  v49.n128_u64[1] = 0xD2D2D2D2D2D2D2D2;
  v50 = vdupq_n_s32(0x196E72F9u);
  v128 = v43 - 16;
  v51 = vdupq_n_s32(0x996E72F8);
  v52.n128_u64[0] = 0xA4A4A4A4A4A4A4A4;
  v52.n128_u64[1] = 0xA4A4A4A4A4A4A4A4;
  v127 = *(v44 + 8 * (a4 + v46 - 460));
  if (BYTE4(a38) == 2)
  {
    v129 = vld4q_s8(&a26 + 4);
    HIDWORD(a17) = HIDWORD(a37);
    v82 = veorq_s8(v129.val[0], v49);
    v83 = vmovl_high_u8(v82);
    v84 = vmovl_u8(*v82.i8);
    v85 = veorq_s8(v129.val[1], v49);
    _Q21 = vmovl_high_u8(v85);
    _Q20 = vmovl_u8(*v85.i8);
    v88 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v89 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v90 = veorq_s8(v129.val[2], v49);
    v91 = vmovl_u8(*v90.i8);
    v92 = vmovl_high_u8(v90);
    v129.val[0] = veorq_s8(v129.val[3], v49);
    v129.val[1] = vmovl_u8(*v129.val[0].i8);
    v129.val[2] = vmovl_u16(*v129.val[1].i8);
    v129.val[1] = vmovl_high_u16(v129.val[1]);
    v129.val[0] = vmovl_high_u8(v129.val[0]);
    v129.val[3] = vmovl_u16(*v129.val[0].i8);
    v129.val[0] = vmovl_high_u16(v129.val[0]);
    v93 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v92, 8uLL)), vshlq_n_s32(vmovl_high_u16(v83), 0x18uLL)), v129.val[0]);
    v94 = vorrq_s8(vorrq_s8(vorrq_s8(v89, vshll_n_u16(*v92.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v83.i8), 0x18uLL)), v129.val[3]);
    v95 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v91, 8uLL)), vshlq_n_s32(vmovl_high_u16(v84), 0x18uLL)), v129.val[1]);
    v96 = vorrq_s8(vorrq_s8(vorrq_s8(v88, vshll_n_u16(*v91.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v84.i8), 0x18uLL)), v129.val[2]);
    v129.val[0] = veorq_s8(vandq_s8(v93, v50), (*v129.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    v129.val[3] = veorq_s8(vandq_s8(v94, v50), (*&v129.val[3] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    v129.val[1] = veorq_s8(vandq_s8(v95, v50), (*&v129.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    v129.val[2] = veorq_s8(vandq_s8(v96, v50), (*&v129.val[2] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    a39 = vaddq_s32(vsubq_s32(v96, vaddq_s32(v129.val[2], v129.val[2])), v51);
    a40 = vaddq_s32(vsubq_s32(v95, vaddq_s32(v129.val[1], v129.val[1])), v51);
    a41 = vaddq_s32(vsubq_s32(v94, vaddq_s32(v129.val[3], v129.val[3])), v51);
    a42 = vaddq_s32(vsubq_s32(v93, vaddq_s32(v129.val[0], v129.val[0])), v51);
    return sub_23E9988C0(HIDWORD(a37), 150, a3, a4, a5, 164, a7, 808, a9, a10, a11, a12, a13, a14, a15, a16, a17, v126, a19, v127, v128, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }

  else if (BYTE4(a38) == 1)
  {
    v130 = vld4q_s8(&a26 + 4);
    v53 = v45 ^ 0x2561788Fu;
    v54 = veorq_s8(v130.val[0], v49);
    v55 = vmovl_high_u8(v54);
    v56 = vmovl_high_u16(v55);
    v57 = vmovl_u16(*v55.i8);
    v58 = vmovl_u8(*v54.i8);
    v59 = vmovl_high_u16(v58);
    v60 = vmovl_u16(*v58.i8);
    v61 = veorq_s8(v130.val[1], v49);
    v62 = vmovl_u8(*v61.i8);
    v63 = vmovl_high_u8(v61);
    v64 = veorq_s8(v130.val[2], v49);
    _Q25 = vmovl_u8(*v64.i8);
    _Q24 = vmovl_high_u8(v64);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v130.val[0] = veorq_s8(v130.val[3], v49);
    v130.val[1] = vmovl_u8(*v130.val[0].i8);
    v130.val[2] = vmovl_u16(*v130.val[1].i8);
    v130.val[0] = vmovl_high_u8(v130.val[0]);
    v130.val[3] = vmovl_u16(*v130.val[0].i8);
    v130.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v130.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v63, 8uLL), v56));
    v130.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v130.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v63.i8, 8uLL), v57));
    v130.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v130.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v62, 8uLL), v59));
    v130.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v130.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v62.i8, 8uLL), v60));
    v73 = veorq_s8(vandq_s8(v130.val[0], v50), (*&v56 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    v74 = veorq_s8(vandq_s8(v130.val[3], v50), (*&v57 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    v75 = veorq_s8(vandq_s8(v130.val[1], v50), (*&v59 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    v76 = veorq_s8(vandq_s8(v130.val[2], v50), (*&v60 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    a39 = vaddq_s32(vsubq_s32(v130.val[2], vaddq_s32(v76, v76)), v51);
    a40 = vaddq_s32(vsubq_s32(v130.val[1], vaddq_s32(v75, v75)), v51);
    a41 = vaddq_s32(vsubq_s32(v130.val[3], vaddq_s32(v74, v74)), v51);
    a42 = vaddq_s32(vsubq_s32(v130.val[0], vaddq_s32(v73, v73)), v51);
    v77 = *(&off_28512D4A0 + v53 - 1990) - 8;
    v78 = v77[v128 + v42];
    v79 = ((v78 + 389850731) ^ 0xDCB61C5E) & (2 * ((v78 + 389850731) & 0x11F)) ^ (v78 + 389850731) & 0x11F;
    v80 = ((2 * ((v78 + 389850731) ^ 0xDCB61E78)) ^ 0x488A88CE) & ((v78 + 389850731) ^ 0xDCB61E78) ^ (2 * ((v78 + 389850731) ^ 0xDCB61E78)) & 0x366;
    return (*(v44 + 8 * v53))(v43 - 15, 150, v53, (v53 - 1379) | 0x800u, v77, (v80 ^ 0x44444444) & (4 * v79) ^ v79, (4 * v80) & 0x34754760 ^ 0x10550503, 808, a9, a10, a11, a12, a13, a14, a15, a16, a17, v126, a19, v127, v43 - 16, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }

  else
  {
    v97 = (((HIDWORD(a35) ^ 0xB2FDF133) + 1291980493) ^ ((HIDWORD(a35) ^ 0xC35EE680) + 1017190784) ^ ((HIDWORD(a35) ^ 0x2474D494) - 611636372)) + (((HIDWORD(a35) ^ 0x70E93EB7) - 1894334135) ^ ((HIDWORD(a35) ^ 0xFB27C745) + 81279163) ^ ((HIDWORD(a35) ^ 0xDE193AD5) + 568771883)) - 1005635024;
    v98 = (((a36 ^ 0x52CAC029) - 1389019177) ^ ((a36 ^ 0x1064470F) - 275007247) ^ ((a36 ^ 0x17794401) - 393823233)) + (((a36 ^ 0xBF2B585A) + 1087678374) ^ ((a36 ^ 0xD62BF384) + 701762684) ^ ((a36 ^ 0x3CD768F9) - 1020750073)) - 605520214;
    v99 = (v98 ^ 0x8F96C702) & (2 * (v98 & 0xCFC707A4)) ^ v98 & 0xCFC707A4;
    v100 = ((2 * (v98 ^ 0xA16C04A)) ^ 0x8BA38FDC) & (v98 ^ 0xA16C04A) ^ (2 * (v98 ^ 0xA16C04A)) & 0xC5D1C7EE;
    v101 = v100 ^ 0x44504022;
    v102 = (v100 ^ 0x1000780) & (4 * v99) ^ v99;
    v103 = ((4 * v101) ^ 0x17471FB8) & v101 ^ (4 * v101) & 0xC5D1C7EC;
    v104 = (v103 ^ 0x54107A0) & (16 * v102) ^ v102;
    v105 = ((16 * (v103 ^ 0xC090C046)) ^ 0x5D1C7EE0) & (v103 ^ 0xC090C046) ^ (16 * (v103 ^ 0xC090C046)) & 0xC5D1C7E0;
    v106 = v104 ^ 0xC5D1C7EE ^ (v105 ^ 0x45104600) & (v104 << 8);
    HIDWORD(a35) = v97 ^ ((v97 ^ 0x33C7956) - 459524788) ^ ((v97 ^ 0x7165F58B) - 1765426793) ^ ((v97 ^ 0x55E984C1) - 1303787299) ^ ((v97 ^ 0x3FEFBBFE) - 665847836) ^ 0x4D8870C5;
    LODWORD(a36) = v98 ^ (2 * ((v106 << 16) & 0x45D10000 ^ v106 ^ ((v106 << 16) ^ 0x47EE0000) & (((v105 ^ 0x80C1810E) << 8) & 0x45D10000 ^ 0x4100000 ^ (((v105 ^ 0x80C1810E) << 8) ^ 0x51C70000) & (v105 ^ 0x80C1810E)))) ^ 0x9A334B5F;
    v107 = (((HIDWORD(a36) ^ 0x580A3F13) - 1477066515) ^ ((HIDWORD(a36) ^ 0x20FBD4CE) - 553374926) ^ ((HIDWORD(a36) ^ 0x2D2628FA) - 757475578)) + (((HIDWORD(a36) ^ 0x5E29BAC1) - 1579793089) ^ ((HIDWORD(a36) ^ 0xDADE5B09) + 622961911) ^ ((HIDWORD(a36) ^ 0xD12022EF) + 786423057)) + 218331361;
    v108 = (v107 ^ 0x1E892D6C) & (2 * (v107 & 0x9EAC0D6D)) ^ v107 & 0x9EAC0D6D;
    v109 = ((2 * (v107 ^ 0x37D92DEC)) ^ 0x52EA4102) & (v107 ^ 0x37D92DEC) ^ (2 * (v107 ^ 0x37D92DEC)) & 0xA9752080;
    v110 = v109 ^ 0xA9152081;
    v111 = (v109 ^ 0x600000) & (4 * v108) ^ v108;
    v112 = ((4 * v110) ^ 0xA5D48204) & v110 ^ (4 * v110) & 0xA9752080;
    v113 = v111 ^ 0xA9752081 ^ (v112 ^ 0xA1540000) & (16 * v111);
    v114 = (16 * (v112 ^ 0x8212081)) & 0xA9752080 ^ 0x28252081 ^ ((16 * (v112 ^ 0x8212081)) ^ 0x97520810) & (v112 ^ 0x8212081);
    v115 = (v113 << 8) & 0xA9752000 ^ v113 ^ ((v113 << 8) ^ 0x75208100) & v114;
    v116 = v107 ^ (2 * ((v115 << 16) & 0x29750000 ^ v115 ^ ((v115 << 16) ^ 0x20810000) & ((v114 << 8) & 0xA9750000 ^ 0x8550000 ^ ((v114 << 8) ^ 0x75200000) & v114))) ^ 0x9BD38F48;
    v117 = (((a37 ^ 0x3B66C217) - 996590103) ^ ((a37 ^ 0xBC9BF4ED) + 1130629907) ^ ((a37 ^ 0xD22AF5DD) + 768936483)) + (((a37 ^ 0x81B224EC) + 2119031572) ^ ((a37 ^ 0xA8BAB53F) + 1464158913) ^ ((a37 ^ 0x7CDF52F4) - 2095010548)) - 1219655716;
    v118 = (v117 ^ 0xE549FD62) & (2 * (v117 & 0xF461FE72)) ^ v117 & 0xF461FE72;
    v119 = ((2 * (v117 ^ 0xCD08D1A2)) ^ 0x72D25FA0) & (v117 ^ 0xCD08D1A2) ^ (2 * (v117 ^ 0xCD08D1A2)) & 0x39692FD0;
    v120 = v119 ^ 0x9292050;
    v121 = (v119 ^ 0x30000B80) & (4 * v118) ^ v118;
    v122 = ((4 * v120) ^ 0xE5A4BF40) & v120 ^ (4 * v120) & 0x39692FD0;
    v123 = v121 ^ 0x39692FD0 ^ (v122 ^ 0x21202F40) & (16 * v121);
    v124 = (16 * (v122 ^ 0x18490090)) & 0x39692FD0 ^ 0x296902D0 ^ ((16 * (v122 ^ 0x18490090)) ^ 0x9692FD00) & (v122 ^ 0x18490090);
    v125 = (v123 << 8) & 0x39692F00 ^ v123 ^ ((v123 << 8) ^ 0x692FD000) & v124;
    HIDWORD(a36) = v116;
    LODWORD(a37) = v117 ^ (2 * ((v125 << 16) & 0x39690000 ^ v125 ^ ((v125 << 16) ^ 0x2FD00000) & ((v124 << 8) & 0x39690000 ^ 0x10400000 ^ ((v124 << 8) ^ 0x692F0000) & v124))) ^ 0xD3B662F5;
    return v127(&a26 + 4, 150, v49, v50, v51, v52);
  }
}

uint64_t sub_23E93FBA8()
{
  v5 = *(*(v1 + 32) + v0) - *(v4 + v0);
  v6 = (v5 ^ 0x7BCFFFDE) + ((v2 - 275) ^ 0xA7FA5E25) + ((2 * v5) & 0xF79FFFBC);
  v8 = v0 == 15 || v6 != 600464988;
  return (*(v3 + 8 * ((2625 * v8) ^ v2)))();
}

uint64_t sub_23E93FC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + (v3 ^ 0x489u) - 542;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((2942 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_23E93FC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, char a55, uint64_t a56)
{
  v61 = *(a56 + 12);
  *(v60 - 164) = v57 - 1875091903 * ((((v60 - 176) | 0x70BEF911) - (v60 - 176) + ((v60 - 176) & 0x8F4106E8)) ^ 0x4AB02FCD) + 1289039566;
  *(v60 - 176) = -65 * ((((v60 + 80) | 0x11) - (v60 + 80) + ((v60 + 80) & 0xE8)) ^ 0xCD) + v56 + v57 + 71 + (v61 ^ 0xEF) + ((41 * (v57 ^ 0x67) + 35) & (2 * v61)) - 1;
  *(v60 - 168) = a55 - ((2 * a55) & 0xC3) - -65 * ((((v60 + 80) | 0x11) - (v60 + 80) + ((v60 + 80) & 0xE8)) ^ 0xCD) - 31;
  v62 = (*(v58 + 8 * (v57 ^ 0x1142)))(v60 - 176);
  return (*(v58 + 8 * ((2951 * (*(v60 - 172) == v59)) ^ v57)))(v62);
}

uint64_t sub_23E93FD64(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v7 = (v6 ^ (91 - a4) ^ ((v6 ^ 0x755EC881) + 54) ^ ((v6 ^ 0x65) + 82) ^ (((8 * (a5 ^ 0xA3D) - 3944) ^ v6) + 101)) & (((a5 ^ 0xA3D) + 1385) ^ 0x71F);
  v9 = v7 != 75 && (v7 ^ 0x4Bu) < 5;
  return (*(v5 + 8 * ((1390 * v9) ^ a5)))();
}

uint64_t sub_23E93FE40@<X0>(_BYTE *a1@<X8>)
{
  v4 = v2 + 512;
  *a1 = 0;
  v5 = ((v4 - 1891) | 0x40Cu) - 1086 == v1;
  return (*(v3 + 8 * (((16 * v5) | (v5 << 6)) ^ v4)))();
}

uint64_t sub_23E93FE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = a12 - 1212197486 > a15;
  if (a15 < 0xB7BF5552 != a12 - 1212197486 < ((((v22 + 1477) ^ 0x9BC) - 1212202024) ^ ((v22 + 1477) | 6u)))
  {
    v23 = a12 - 1212197486 < ((((v22 + 1477) ^ 0x9BC) - 1212202024) ^ ((v22 + 1477) | 6u));
  }

  return (*(v21 + 8 * ((v23 | (2 * v23)) ^ (v22 + 3509))))(a1, a2, 164, a4, a5, a21);
}

uint64_t sub_23E93FEA4@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, int a9)
{
  v17 = &a8[6 * v11];
  v17[2] = v15;
  v17[3] = a1;
  *(v17 + 2) = a7;
  v17[6] = a9;
  *a8 = v9 + 1;
  return (*(v13 + 8 * ((((a3 - v16) ^ (v14 - 3786) ^ (877 * (a3 ^ 0x255))) * (v10 + a2 < v12)) ^ a3)))();
}

uint64_t sub_23E93FF60@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7) - (v5 & (2 * *(v3 + v7))) - 46;
  return (*(v1 + 8 * (((v7 != 0) * v6) ^ v2)))(0);
}

uint64_t sub_23E93FF94(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int8x16_t a5, int8x8_t a6)
{
  v13 = a2 - 8;
  v15.val[0].i64[0] = (v9 + v13 - 1) & 0xF;
  v15.val[0].i64[1] = (v9 + v13 + 14) & 0xF;
  v15.val[1].i64[0] = (v9 + v13 + 13) & 0xF;
  v15.val[1].i64[1] = (v9 + v13 + 12) & 0xF;
  v15.val[2].i64[0] = (v9 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v9 + v13 + v10 + 68) & 0xF;
  v15.val[3].i64[0] = (v9 + v13 + 9) & 0xF;
  v15.val[3].i64[1] = (v9 + v13) & 0xF ^ 8;
  *(a3 + v13) = veor_s8(veor_s8(veor_s8(*(v6 + v15.val[0].i64[0] - 7), *(a3 + v13)), veor_s8(*(v7 + v15.val[0].i64[0] - 7), *(v15.val[0].i64[0] + v8 - 2))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a5), a6)));
  return (*(v12 + 8 * (((a1 == v13) * a4) ^ v11)))();
}

uint64_t sub_23E93FF9C@<X0>(uint64_t a1@<X8>)
{
  v5 = *v2;
  *v2 = v2[3];
  v2[3] = v5;
  v6 = v2[1];
  v2[1] = v2[2];
  v2[2] = v6;
  return (*(a1 + 8 * (v1 | (16 * (v3 - 1 != v4)))))();
}

void sub_23E9400E8(uint64_t a1)
{
  v1 = 1317436891 * ((~a1 & 0xDF505AAE | a1 & 0x20AFA551) ^ 0x2A718CDB);
  v2 = *a1 - v1;
  v3 = (*(a1 + 4) ^ v1);
  if (*(a1 + 8))
  {
    v4 = v3 == 7938;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23E9401BC()
{
  v3 = (*(v2 + 8 * (v0 + 3362)))();
  LODWORD(STACK[0x4C8]) = v1;
  return (*(v2 + 8 * ((2818 * (v1 == (((v0 - 573) | 0xD2F) ^ 0x996E7F97))) ^ v0)))(v3);
}

uint64_t sub_23E940208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v25 = (v17 - 1059281925) & 0x3F235BF5;
  v29.val[1].i64[0] = (v22 + 13) & 0xF;
  v29.val[1].i64[1] = (v22 + 12) & 0xF;
  v29.val[2].i64[0] = (v22 + 11) & 0xF;
  v29.val[2].i64[1] = (v22 + 10) & 0xF;
  v29.val[3].i64[0] = (v22 + 9) & 0xF;
  v29.val[3].i64[1] = v23 & 0xF ^ 0xCLL;
  v30.val[0].i64[0] = (v22 + ((v17 - 5) & 0xF5) + 51) & 0xF;
  v30.val[0].i64[1] = (v22 + 6) & 0xF;
  v30.val[1].i64[0] = (v22 + 5) & 0xF;
  v30.val[1].i64[1] = (v22 + 4) & 0xF;
  v30.val[2].i64[0] = (v22 + 3) & 0xF;
  v30.val[2].i64[1] = (v22 + 2) & 0xF;
  v30.val[3].i64[0] = (v22 + 1) & 0xF;
  v30.val[3].i64[1] = v22 & 0xF;
  v26 = vqtbl4q_s8(v30, xmmword_23EAA16C0).u64[0];
  v27.i64[0] = 0x7575757575757575;
  v27.i64[1] = 0x7575757575757575;
  v29.val[0].i64[0] = ((v25 + 1791) - 1988) & (v22 - 1);
  v29.val[0].i64[1] = (v22 + 14) & 0xF;
  v30.val[3].i64[0] = vqtbl4q_s8(v29, xmmword_23EAA16C0).u64[0];
  v30.val[3].i64[1] = v26;
  v30.val[0] = vrev64q_s8(vmulq_s8(v30.val[3], v27));
  *(v24 + v22 - 16) = veorq_s8(veorq_s8(veorq_s8(*(v20 + v29.val[0].i64[0] - 15), *(v18 + v22 - 16)), veorq_s8(*(v29.val[0].i64[0] + v19 - 14), *(v29.val[0].i64[0] + v21 - 12))), vextq_s8(v30.val[0], v30.val[0], 8uLL));
  return (*(a17 + 8 * ((55 * ((v23 & 0x10) != 16)) ^ v25)))();
}

uint64_t sub_23E940498@<X0>(uint64_t a1@<X8>)
{
  v6[1] = v3 + 2048652491 * (((v6 | 0x28DC6D70) - v6 + (v6 & 0xD7239288)) ^ 0x55D92B46) + 407;
  v7 = a1;
  result = (*(v2 + 8 * (v3 ^ 0x897u)))(v6);
  *(v1 + 28) = v4;
  return result;
}

uint64_t sub_23E940588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29)
{
  *(v33 - 136) = v32;
  *(v33 - 128) = v31;
  *(v33 - 144) = (v30 - 1443) ^ (1710126949 * ((((v33 - 144) ^ 0x62524424) & 0x7AE7CA55 | ~((v33 - 144) ^ 0x62524424 | 0x7AE7CA55)) ^ 0xE1AD8324));
  (*(v29 + 8 * (v30 ^ 0x162E)))(v33 - 144);
  *(v33 - 144) = a27;
  *(v33 - 136) = &a24;
  *(v33 - 104) = v31;
  *(v33 - 128) = &a24;
  *(v33 - 120) = &a26;
  *(v33 - 112) = (v30 + 2049) ^ (1875091903 * ((((v33 - 144) | 0x640CD5CB) - (v33 - 144) + ((v33 - 144) & 0x9BF32A30)) ^ 0x5E020317));
  (*(v29 + 8 * (v30 ^ 0x9A9)))(v33 - 144);
  *(v33 - 104) = v31;
  *(v33 - 112) = (v30 + 2049) ^ (1875091903 * ((2 * ((v33 - 144) & 0x29CD130) - (v33 - 144) + 2103652045) ^ 0x476DF811));
  *(v33 - 144) = &a24;
  *(v33 - 136) = a16;
  *(v33 - 128) = &a24;
  *(v33 - 120) = &a26;
  (*(v29 + 8 * (v30 + 2471)))(v33 - 144);
  *(v33 - 128) = v30 - 1875091903 * ((((v33 - 144) | 0xE9BD0937) + (~(v33 - 144) | 0x1642F6C8)) ^ 0xD3B3DFEA) + 1631358468;
  *(v33 - 144) = &a24;
  *(v33 - 136) = a17;
  (*(v29 + 8 * (v30 ^ 0x161A)))(v33 - 144);
  *(v33 - 144) = (v30 - 1443) ^ (1710126949 * ((v33 - 144) ^ 0x6E7F2AA));
  *(v33 - 136) = &a24;
  *(v33 - 128) = &a29;
  (*(v29 + 8 * (v30 + 2602)))(v33 - 144);
  *(v33 - 128) = v30 + 33731311 * ((v33 - 144) ^ 0x1B6BD3F) + 968;
  *(v33 - 144) = &a29;
  *(v33 - 136) = &a24;
  v34 = (*(v29 + 8 * (v30 + 2476)))(v33 - 144);
  return (*(v29 + 8 * (((((v30 - 1615) | 0x250) ^ (v30 - 1073)) * (a21 == 0)) ^ (v30 - 918))))(v34);
}

uint64_t sub_23E9405F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = 0xD2D2D2D2D2D2D2D2;
  v8.i64[1] = 0xD2D2D2D2D2D2D2D2;
  v9 = a6 + a2 - 1;
  v10 = veorq_s8(*(a1 + a2 - 1 - 31), v8);
  *(v9 - 15) = veorq_s8(*(a1 + a2 - 1 - 15), v8);
  *(v9 - 31) = v10;
  return (*(v7 + 8 * ((47 * (((v6 + 696) ^ 0x33ELL) == (a2 & 0xFFFFFFE0))) ^ (v6 + 926))))();
}

uint64_t sub_23E9406A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = ((v4 ^ 0x97Bu) - 2355) & *(a4 + 68);
  *(a4 + v6) = 82;
  return (*(v5 + 8 * (((v6 > 0x37) * ((v4 + 64) ^ 0x7CF)) ^ v4)))();
}

uint64_t sub_23E9406E8@<X0>(char a1@<W2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, _DWORD *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unsigned int a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  v69 = (v62 ^ 0xF8) * a1;
  *a44 = a2;
  *(v66 + 396) = a62;
  *(v66 + 400) = STACK[0x268];
  *(v66 + 408) = 767665300 - v64 + a61;
  *(v66 + 416) = a52 + (v64 - 543713334);
  v70 = v62;
  v71 = (*(v63 + v67 * v68 + 8))(a45);
  return (*(v65 + 8 * ((29 * (v71 - 1720814856 - ((v71 << (v69 - 110)) & 0x32DCE5F0) == -1720814856)) ^ v70)))(428063961, 1720789281, 181, 4101449050, a55, &off_28512D4A0, 3866900540, 1893117031, 0);
}

uint64_t sub_23E9408A4@<X0>(int a1@<W8>)
{
  v8 = *(v6 + 8 * (a1 - 2706));
  v9 = *(v6 + 8 * (a1 - 2708));
  v10 = *v8;
  v11 = *v9;
  v20[0] = **v9 ^ 0x3F;
  v20[1] = v11[1] ^ 0x3F;
  v20[2] = v11[2] ^ 0x3F;
  v20[3] = v11[3] ^ 0x3F;
  v20[4] = v11[4] ^ 0x3F;
  v20[5] = v11[5] ^ 0x3F;
  v20[6] = v11[6] ^ 0x3F;
  v20[7] = v11[7] ^ 0x3F;
  v20[8] = v11[8] ^ 0x3F;
  v20[9] = v11[9] ^ 0x3F;
  v20[10] = v11[10] ^ 0x3F;
  v20[11] = v11[11] ^ 0x3F;
  v20[12] = v11[12] ^ 0x3F;
  v20[13] = v11[13] ^ 0x3F;
  v20[14] = v11[14] ^ 0x3F;
  v20[15] = v11[15] ^ 0x3F;
  v20[16] = v11[16] ^ 0x3F;
  v20[17] = v11[17] ^ 0x3F;
  v20[18] = v11[18] ^ 0x3F;
  v20[19] = v11[19] ^ 0x3F;
  v12 = *v9;
  v20[20] = v12[20] ^ 0x3F;
  v20[21] = v12[21] ^ 0x3F;
  v20[22] = v12[22] ^ 0x3F;
  v20[23] = v12[23] ^ 0x3F;
  v20[24] = v12[24] ^ 0x3F;
  v20[25] = v12[25] ^ 0x3F;
  v20[26] = v12[26] ^ 0x3F;
  v20[27] = v12[27] ^ 0x3F;
  v20[28] = v12[28] ^ 0x3F;
  v20[29] = v12[29] ^ 0x3F;
  result = (*(v4 + 8 * (a1 + 1342)))(v10, v20, v2);
  if (result == 1102)
  {
    v15 = *v8;
    v16 = **(v6 + 8 * (v5 - 2475));
    v21[0] = *v16 - 61;
    v21[1] = v16[1] - 61;
    v21[2] = v16[2] - 61;
    v21[3] = v16[3] - 61;
    v21[4] = v16[4] - 61;
    v21[5] = v16[5] + ((11 * (v5 ^ 0xD3)) ^ 0x4C);
    v21[6] = v16[6] - 61;
    v21[7] = v16[7] - 61;
    v21[8] = v16[8] - 61;
    v21[9] = v16[9] - 61;
    v21[10] = v16[10] - 61;
    v21[11] = v16[11] - 61;
    v21[12] = v16[12] - 61;
    v21[13] = v16[13] - 61;
    v21[14] = v16[14] - 61;
    v21[15] = v16[15] - 61;
    v21[16] = v16[16] - 61;
    v21[17] = v16[17] - 61;
    v21[18] = v16[18] - 61;
    v21[19] = v16[19] - 61;
    v17 = *(v4 + 8 * ((1924 * ((*(v4 + 8 * (v5 ^ 0x1AC2)))(v15, v21, v2) == 0)) ^ (v5 + 177)));
    __asm { BRAA            X8, X17 }
  }

  if (result)
  {
    v19 = 1720789440;
  }

  else
  {
    v14 = 11 * (v5 ^ 0xBD3);
    *(v7 + 384) |= v14 - 2945;
    *(v7 + 84) = 1527689105;
    result = (*(v4 + 8 * (v5 ^ 0x1A82)))(*v2, v7 + 372, v7 + 376, v7 + 380, v3);
    v18 = *v1;
    **(v1 + 16) = *v2;
    *v18 = *v3 - (((v14 - 807088017) & 0x301B2EDF ^ 0xC04976F6) & (2 * *v3)) + 1613020692;
    v19 = -1720814856;
  }

  *(v1 + 8) = v19;
  return result;
}

uint64_t sub_23E940CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v22 - 104) = a15;
  *(v22 - 120) = &a18;
  *(v22 - 108) = (v18 - 590) ^ (((((v22 - 120) | 0x4E2E2ACB) + (~(v22 - 120) | 0xB1D1D534)) ^ 0x4F9897F5) * v20);
  v23 = (*(v19 + 8 * (v18 | 0x2C2)))(v22 - 120);
  return (*(v19 + 8 * ((37 * (*(v22 - 112) > (((v18 - 2843) | 0x402) ^ (v21 - 510)))) ^ v18)))(v23);
}

void sub_23E940D4C()
{
  v0 = MEMORY[0x28223BE20]();
  if (*(v0 + 16))
  {
    v2 = *(v0 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(v0 + 32) - 956911519 * ((~v0 & 0xCAF6B098 | v0 & 0x35094F67) ^ 0xB5A0BC26);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23E940E78@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v7 = *(result + 24);
  v8 = *(result + 56);
  v9 = *(result + 40);
  *a2 = v5;
  *v9 = v3;
  *v8 = v4;
  *v7 = v2 + v6;
  *(result + 32) = -1720814856;
  return result;
}

uint64_t sub_23E940F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8)
{
  v11 = v10 - 1040585829 < (a7 + 2109173382);
  if (v10 - 1040585829 < a8 != a7 + 2109173382 < a8)
  {
    v11 = a7 + 2109173382 < a8;
  }

  return (*(v9 + 8 * ((v11 * ((v8 + 22377428) & 0xFEAA7EFB ^ ((v8 ^ 0x955) - 1022))) ^ v8)))();
}

uint64_t sub_23E941008(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, int *a16, int *a17, uint64_t a18, int a19)
{
  v24 = *(v19 + 8);
  v25 = 1317436891 * ((-2 - ((&a16 ^ 0x801080E0 | 0x52A4790B) + (&a16 ^ 0x4024780A | 0xAD5B86F4))) ^ 0xCAEAD160);
  LODWORD(a16) = a1 - v25 + 10;
  HIDWORD(a16) = v23 + 543 + v25;
  a17 = v22;
  (*(v20 + 8 * (v23 ^ 0xE77)))(&a16);
  v26 = *(v21 + 16);
  v27 = 1317436891 * (((&a16 ^ 0xC2DDC216 | 0x4900CF6A) - ((&a16 ^ 0xC2DDC216) & 0x4900CF6A)) ^ 0x7EFCDB09);
  a16 = (v21 + 80);
  LODWORD(a17) = v23 - 21 - v27 + v26 - 446130269 - ((2 * v26) & 0xCAD13220);
  HIDWORD(a17) = (v23 + 960667395) ^ v27;
  (*(v20 + 8 * (v23 ^ 0xE7F)))(&a16);
  v28 = *(v21 + 20);
  v29 = 2 * &a16;
  v30 = 1317436891 * (((v29 | 0x3F9D1ADA) - &a16 + 1613853331) ^ 0x6AEF5B18);
  a16 = (v21 + 84);
  LODWORD(a17) = -446130269 - v30 + v28 - ((2 * v28) & 0xCAD13220) + 365;
  HIDWORD(a17) = (v23 + 960667395) ^ v30;
  (*(v20 + 8 * (v23 + 3707)))(&a16);
  v31 = 2048652491 * (((v29 | 0x9C1C8A12) - &a16 - 1309558025) ^ 0x330B033F);
  a19 = v31 + v23 - 191;
  LODWORD(a18) = v31 + 1799958687;
  HIDWORD(a18) = v31 + 1375795241;
  a16 = v22;
  a17 = &a12;
  (*(v20 + 8 * (v23 + 3682)))(&a16);
  v32 = *(v21 + 4);
  *v21 += a12;
  *(v21 + 4) = v32 + a13;
  v33 = *(v21 + 12);
  *(v21 + 8) += a14;
  *(v21 + 12) = v33 + a15;
  a18 = v21;
  LODWORD(a17) = (v23 - 119667098) ^ (956911519 * ((1976756430 - (&a16 | 0x75D2E8CE) + (&a16 | 0x8A2D1731)) ^ 0xF57B1B8F));
  a16 = v22;
  (*(v20 + 8 * (v23 ^ 0x1185)))(&a16);
  v34 = 1317436891 * (((&a16 | 0x4DC9046E) - &a16 + (&a16 & 0xB236FB90)) ^ 0xB8E8D21B);
  a17 = v21;
  LODWORD(a16) = 887042760 - v34;
  HIDWORD(a16) = v23 + 543 + v34;
  (*(v20 + 8 * (v23 + 3699)))(&a16);
  *v24 = *v21 - ((2 * *v21) & 0xA4) - 46;
  v24[1] = *(v21 + 1) - ((2 * *(v21 + 1)) & 0xA4) - 46;
  v24[2] = *(v21 + 2) - ((2 * *(v21 + 2)) & 0xA4) - 46;
  v24[3] = *(v21 + 3) - ((2 * *(v21 + 3)) & 0xA4) - 46;
  v24[4] = *(v21 + 4) - ((2 * *(v21 + 4)) & 0xA4) - 46;
  v24[5] = *(v21 + 5) - ((2 * *(v21 + 5)) & 0xA4) - 46;
  v24[6] = *(v21 + 6) - ((2 * *(v21 + 6)) & 0xA4) - 46;
  v24[7] = *(v21 + 7) - ((2 * *(v21 + 7)) & 0xA4) - 46;
  v24[8] = *(v21 + 8) - ((2 * *(v21 + 8)) & 0xA4) - 46;
  v24[9] = *(v21 + 9) - ((2 * *(v21 + 9)) & 0xA4) - 46;
  v24[10] = *(v21 + 10) - ((2 * *(v21 + 10)) & 0xA4) - 46;
  v24[11] = *(v21 + 11) - ((2 * *(v21 + 11)) & 0xA4) - 46;
  v24[12] = *(v21 + 12) - ((2 * *(v21 + 12)) & 0xA4) - 46;
  v24[13] = *(v21 + 13) - ((2 * *(v21 + 13)) & 0xA4) - 46;
  v24[14] = *(v21 + 14) - ((2 * *(v21 + 14)) & 0xA4) - 46;
  v24[15] = *(v21 + 15) - ((2 * *(v21 + 15)) & 0xA4) - 46;
  v35 = 1317436891 * ((((&a16 | 0xD8EBFA68) ^ 0xFFFFFFFE) - (~&a16 | 0x27140597)) ^ 0xD235D3E2);
  a17 = v21;
  LODWORD(a16) = 887042760 - v35;
  HIDWORD(a16) = v23 + 543 + v35;
  (*(v20 + 8 * (v23 ^ 0xE77)))(&a16);
  LODWORD(a17) = (v23 - 119667098) ^ (956911519 * ((2 * (&a16 & 0x6D29BCE8) - &a16 - 1831451886) ^ 0xED804FAC));
  a16 = v22;
  a18 = v21;
  (*(v20 + 8 * (v23 + 3717)))(&a16);
  v36 = 1317436891 * (((&a16 | 0x8EF6C66E) - (&a16 & 0x8EF6C66E)) ^ 0x7BD7101B);
  LODWORD(a16) = 887042760 - v36;
  HIDWORD(a16) = v23 + 543 + v36;
  a17 = v21;
  v37 = (*(v20 + 8 * (v23 ^ 0xE77)))(&a16);
  v24[4] = *v21 - ((2 * *v21) & 0xA4) - 46;
  v24[5] = *(v21 + 1) - ((2 * *(v21 + 1)) & 0xA4) - 46;
  v24[6] = *(v21 + 2) - ((2 * *(v21 + 2)) & 0xA4) - 46;
  v24[7] = *(v21 + 3) - ((2 * *(v21 + 3)) & 0xA4) - 46;
  v24[8] = *(v21 + 4) - ((2 * *(v21 + 4)) & 0xA4) - 46;
  v24[9] = *(v21 + 5) - ((2 * *(v21 + 5)) & 0xA4) - 46;
  v24[10] = *(v21 + 6) - ((2 * *(v21 + 6)) & 0xA4) - 46;
  v24[11] = *(v21 + 7) - ((2 * *(v21 + 7)) & 0xA4) - 46;
  v24[12] = *(v21 + 8) - ((2 * *(v21 + 8)) & 0xA4) - 46;
  v24[13] = *(v21 + 9) - ((2 * *(v21 + 9)) & 0xA4) - 46;
  v24[14] = *(v21 + 10) - ((2 * *(v21 + 10)) & 0xA4) - 46;
  v24[15] = *(v21 + 11) - ((2 * *(v21 + 11)) & 0xA4) - 46;
  v24[16] = *(v21 + 12) - ((2 * *(v21 + 12)) & 0xA4) - 46;
  v24[17] = *(v21 + 13) - ((2 * *(v21 + 13)) & 0xA4) - 46;
  v24[18] = *(v21 + 14) - ((2 * *(v21 + 14)) & 0xA4) - 46;
  v24[19] = *(v21 + 15) - ((2 * *(v21 + 15)) & 0xA4) - 46;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(v21 + 24) = 0u;
  *(v21 + 40) = 0u;
  return (*(v20 + 8 * ((239 * (((v23 - 20) & 1) == 0)) ^ (v23 - 21))))(v37);
}

uint64_t sub_23E941738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16)
{
  v22 = 956911519 * ((-1136022498 - (&a13 | 0xBC49AC1E) + (&a13 | 0x43B653E1)) ^ 0x3CE05F5F);
  a13 = v22 + v17 + 1967;
  a14 = 536440894 - v22;
  a15 = v19;
  (*(v18 + 8 * (v17 + 3595)))(&a13);
  a13 = v17 + 2008441969 * ((2 * ((&a13 ^ 0x2D3EFA73) & 0x17CF3DAA) - (&a13 ^ 0x2D3EFA73) - 399457711) ^ 0x7E1FD584) + 1624354099;
  a15 = v16;
  a16 = v19;
  (*(v18 + 8 * (v17 + 3621)))(&a13);
  return (*(v18 + 8 * ((((v21 - v20 - 339409668) < 0xFFFFFFC0) * ((((57 * (v17 ^ 0x1E3)) ^ 0x344) - 124) ^ 0x9C5)) ^ (57 * (v17 ^ 0x1E3)))))((v21 - v20), v23, v24, v25, v26, v27, v28);
}

uint64_t sub_23E941CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, char *a17, int a18)
{
  a17 = &a14;
  a18 = (v18 + 2369) ^ (1358806181 * ((&a16 + 2020090874 - 2 * (&a16 & 0x786823FA)) ^ 0xC50BA517));
  v21 = (*(v20 + 8 * (v18 + 3153)))(&a16);
  return (*(v20 + 8 * ((3422 * (a16 == (((v18 ^ (v19 + 1050)) - v19) ^ 0x996E7496))) ^ v18)))(v21);
}

uint64_t sub_23E941DFC(double a1, __n128 a2, __n128 a3, __n128 a4, int8x16_t a5, double a6, int8x16_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v19 = a9 - 16;
  v20 = (v19 - 1) & 0xF;
  v21 = v16;
  v22.i64[0] = vqtbl4q_s8(*(&a2 - 1), a5).u64[0];
  *&v22.i64[1] = a6;
  v23 = vrev64q_s8(vmulq_s8(v22, a7));
  *(v17 + v19) = veorq_s8(veorq_s8(veorq_s8(*(v14 + v20 - 15), *(v11 + v19)), veorq_s8(*(v20 + v12 - 13), *(v13 + v20 - 15))), vextq_s8(v23, v23, 8uLL));
  return (*(v18 + 8 * (((a10 != 16) * a11) ^ v15)))();
}

uint64_t sub_23E941E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 23 * (v3 ^ 0x283);
  *(a3 + v4) = v6;
  v8 = v4 + (v7 - 546) != 184;
  return (*(v5 + 8 * ((v8 | (4 * v8)) ^ v7)))();
}

uint64_t sub_23E941EAC@<X0>(int a1@<W8>)
{
  v9.val[0].i64[0] = (v4 - v5 - 1) & 0xF;
  v9.val[0].i64[1] = (v4 - v5 + 14) & 0xF;
  v9.val[1].i64[0] = (v4 - v5 + 13) & 0xF;
  v9.val[1].i64[1] = (v4 - v5 + 12) & 0xF;
  v9.val[2].i64[0] = (v4 - v5 + ((a1 - 118) & 0xF3) + 26) & 0xF;
  v9.val[2].i64[1] = (v4 - v5 + 10) & 0xF;
  v9.val[3].i64[0] = (v4 - v5 + 9) & 0xF;
  v9.val[3].i64[1] = (v4 - v5) & 0xF ^ 8;
  *(v4 + v6 - 8 - v5) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v4 + v6 - 8 - v5), *(v3 + v9.val[0].i64[0] - 7)), veor_s8(*(v2 + v9.val[0].i64[0] - 7), *(v9.val[0].i64[0] + v1 - 5)))), 0xD2D2D2D2D2D2D2D2), vmul_s8(*&vqtbl4q_s8(v9, xmmword_23EAA16E0), 0x505050505050505)));
  return (*(v7 + 8 * ((3388 * (8 - (v4 & 0x18) == -v5)) ^ (a1 - 73))))(xmmword_23EAA16E0);
}

uint64_t sub_23E94204C(uint64_t a1, uint64_t a2, int a3)
{
  v9 = (v8 - 20) ^ a3;
  v10 = 4 * a2 - 0x1D0968F84;
  v11 = (((*(*(v3 + 8) + v10) ^ (v8 - 1645865903)) + 1645863117) ^ ((*(*(v3 + 8) + v10) ^ 0xF6DE47B6) + 153204810) ^ (((v9 + 1398673139) & 0xACA1E7F1 ^ 0x49FC2A6B ^ *(*(v3 + 8) + v10)) - 1241262971)) + v6;
  v12 = (((*(*(v4 + 8) + v10) ^ 0x40073F3) - 67138547) ^ ((*(*(v4 + 8) + v10) ^ 0xF77D25B7) + 142793289) ^ ((*(*(v4 + 8) + v10) ^ 0xD1B925BA) + 776395334)) + v6;
  v13 = v11 < v7;
  v14 = v11 > v12;
  v15 = v13 ^ (v12 < v7);
  v16 = v14;
  if (v15)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  return (*(v5 + 8 * ((75 * v17) ^ v9)))();
}

uint64_t sub_23E942180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  *(v21 - 112) = (v19 + 2880) ^ (1875091903 * ((((v21 - 144) | 0x10A75D13) + (~(v21 - 144) | 0xEF58A2EC)) ^ 0x2AA98BCE));
  *(v21 - 144) = &a18;
  *(v21 - 136) = &a16;
  *(v21 - 104) = a10;
  *(v21 - 128) = &a18;
  *(v21 - 120) = a12;
  v22 = (*(v20 + 8 * (v19 + 3302)))(v21 - 144);
  return (*(v20 + 8 * ((206 * (((929 * ((v19 + 2908) ^ 0xE73)) ^ 0xE511BA12) + v18 > 0x7FFFFFFE)) ^ (v19 + 1129))))(v22);
}

uint64_t sub_23E9421E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, uint64_t a31, uint64_t a32, int a33, char a34)
{
  *(v36 - 144) = (v34 + 953) ^ (1317436891 * ((~((v36 - 144) | 0x19CECDF1) + ((v36 - 144) & 0x19CECDF1)) ^ 0x1310E47B));
  STACK[0xD58] = &a34;
  STACK[0xD60] = v35 + 12;
  STACK[0xD68] = a30;
  v37 = (*(a4 + 8 * (v34 + 3447)))(v36 - 144);
  return (*(a31 + 8 * (((*(v36 - 140) == -1720814856) * ((v34 + 2646) ^ 0x4A1)) ^ v34)))(v37);
}

uint64_t sub_23E942418@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v4) = *(v5 + v4) ^ 0xD2;
  v8 = v1 + v4 + 1 >= v3 || v2 + v4 - 464 > 0x5638BFB6;
  return (*(v6 + 8 * ((v8 | (2 * v8)) ^ v2)))();
}

uint64_t sub_23E942600()
{
  v7 = v3 - 1;
  *(v5 + v7) ^= *(v1 + (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 3) ^ (5 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 1) ^ 0xD2;
  return (*(v6 + 8 * ((37 * (v7 != 0)) ^ (v4 + 1505))))();
}

uint64_t sub_23E9426A8(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return v2 ^ 0x996E72F8;
}

uint64_t sub_23E94270C()
{
  v7 = v4 - 1;
  *(v5 + v7) ^= *(v2 + (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 3) ^ (91 * (v7 & 0xF)) ^ *(v1 + (v7 & 0xF)) ^ 0xD2;
  return (*(v6 + 8 * ((87 * (v7 != 0)) ^ (v3 - 2393))))();
}

void sub_23E9427E4()
{
  v3 = *(*(&off_28512D4A0 + (v0 ^ 0x3C0)) + (*(v2 - 99) ^ 0x7DLL) - 8);
  v4 = *(&off_28512D4A0 + (v0 ^ 0x26A));
  v5 = (v3 ^ (v3 >> 3) ^ ((v3 >> 5) | 0xC0)) << 16;
  v6 = *(*(&off_28512D4A0 + (v0 ^ 0x29E)) + (*(v2 - 100) ^ 0x59));
  v7 = ((((((v6 >> 2) & 0x1A ^ v6) << 24) ^ 0xB6A70076) & (v5 ^ 0xFF9C51FF) | v5 & 0x580000) ^ 0xC50A04F4) & ((*(v4 + (*(v2 - 97) ^ 0x48)) - 35) ^ 0xFFFF5DE3) | (*(v4 + (*(v2 - 97) ^ 0x48)) - 35) & 0x7D;
  *(v2 - 124) = v7 & 0xC5AF0CB0 ^ 0x59EECA95 ^ (((*(*(&off_28512D4A0 + (v0 ^ 0x250)) + (*(v2 - 98) ^ 0x14) - 8) ^ *(v2 - 98)) << 8) ^ 0x3A50744F) & (v7 ^ 0x3BE0FB7D);
  *(v2 - 116) = (((v1 ^ 0x11DFA8F5) + 1281905571) ^ ((v1 ^ 0x8E342EF5) - 746334813) ^ ((v1 ^ 0x90BE58E) + 1421614810)) - 902992241;
  JUMPOUT(0x23E942C88);
}

void sub_23E944890(int a1@<W8>)
{
  v3 = a1 - 833;
  v4 = *(&off_28512D4A0 + a1 - 1548) - 8;
  v5 = (((*(v2 - 108) ^ 0xA9) + v4[*(v2 - 108) ^ 0x75] + 119) ^ (((a1 + 2139065482) & 0x80806F8F) + 81)) << 24;
  v6 = *(&off_28512D4A0 + a1 - 1174) - 12;
  v7 = v6[*(v2 - 101) ^ 0x4ALL] + 119;
  v8 = *(&off_28512D4A0 + v3 - 614) - 4;
  v9 = v7 ^ (8 * v7);
  v10 = (*(v2 - 98) ^ 0xD8) + v8[*(v2 - 98) ^ 0xE4] - 68;
  v11 = ((*(v2 - 98) ^ 0xD8) + v8[*(v2 - 98) ^ 0xE4] - 68) << 8;
  v12 = (((((*(v2 - 100) ^ 0x35) + v4[*(v2 - 100) ^ 0xE9] + 119) ^ 0x59) << 24) ^ 0xB06DA800) & (v11 ^ 0xFFEDF800) | v11 & 0x5000;
  v13 = (v8[*(v2 - 102) ^ 0xC5] + (*(v2 - 102) ^ 0xF9) - 68);
  v14 = ((v13 << 8) & 0xA100 ^ 0xFFFC7FFF) & (v9 & 0x52 ^ 0xCB94A96E) & 0xFFFFEFFF | (((v13 >> 4) & 1) << 12);
  v15 = ((v13 << 8) | 0x61618191) & (v9 & 0xAD ^ 0x6161CF99) | v9 & 0x2C;
  v16 = (v14 ^ 0x8003D6AE) & (v15 ^ 0xAEFE386F) | v15 & 0x2D;
  v17 = (v16 ^ 0xB408101E) & (((((*(v2 - 104) ^ 0xFE) + v4[*(v2 - 104) ^ 0x22]) << 24) + 1996488704) ^ 0x3198395F);
  v18 = (((v8[*(v2 - 106) ^ 0xD3] + (*(v2 - 106) ^ 0xEF) - 68) << 8) ^ 0xA760489A) & (v5 ^ 0x7471FFBE);
  v19 = *(&off_28512D4A0 + v3 - 687) - 8;
  LOBYTE(v3) = v6[*(v2 - 97) ^ 0x3DLL] + 119;
  v20 = (((v3 ^ (8 * v3)) << 21) & 0x9200000 | ((((v12 >> 11) ^ 0x70A6442B) & ((v10 << 29) ^ 0x32BFFFFF) & 0x7FFFFFFF | ((v10 >> 2) << 31)) ^ 0x8665CB8A) & ~((v3 ^ (8 * v3)) << 21)) ^ 0x9EFDFAE4;
  v21 = v19[*(v2 - 107) ^ 0xFDLL] ^ 0xBB;
  v22 = (((v21 ^ (v21 << 6) ^ (8 * v21)) << 16) ^ 0x5ABA0E76) & ((v18 | v5 & 0x58000000) ^ 0x889F99E5) | v18 & 0xA500F108;
  v23 = v19[*(v2 - 99) ^ 0xFALL] ^ 0x77;
  LOBYTE(v12) = v6[*(v2 - 105) ^ 0x42];
  LOBYTE(v12) = ((-119 - v12) ^ (8 * (v12 + 119) - ((8 * (v12 + 119)) ^ (v12 + 119))) ^ (v12 - ((2 * (v12 + 119)) & 0xC) - 3) ^ 0x86) + 8 * (v12 + 119);
  v24 = (v19[*(v2 - 103) ^ 0x82] ^ 0x84 ^ (v19[*(v2 - 103) ^ 0x82] << 6) ^ (8 * (v19[*(v2 - 103) ^ 0x82] ^ 0x84))) << 16;
  *(v2 - 128) = (((v23 ^ (v23 << 6) ^ (8 * v23)) << 16) | 0x4300C848) ^ __ROR4__(v20, 21) ^ 0xBFC190C;
  *(v2 - 124) = v24 & 0x1F0000 ^ 0xEE3BB951 ^ (v24 ^ 0xFFAAFFFF) & (v16 & 0x7E67C6A0 ^ 0xA27F2B76 ^ v17);
  *(v2 - 132) = (v12 & 0x3B | (~v12 | 0xFFFFFF00) & (v22 ^ 0x633D26BA)) ^ 0x82A7053D;
  *(v2 - 116) = (((v1 ^ 0x96D2D049) - 171915183) ^ ((v1 ^ 0x92ACFEB1) - 239147351) ^ ((v1 ^ 0xC4B280AF) - 1482647369)) - 1507750032;
  JUMPOUT(0x23E944E30);
}

uint64_t sub_23E947208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 136) = a15;
  *(v20 - 128) = (v19 + 488) ^ (1875091903 * ((2 * ((v20 - 136) & 0x404EDCE8) - (v20 - 136) + 1068573461) ^ 0x5BFF5C9));
  *(v20 - 120) = &a17;
  v21 = (*(v17 + 8 * (v19 + 3501)))(v20 - 136);
  return (*(v17 + 8 * ((3145 * (v18 == (((v19 ^ 0x435) - 1) ^ (v19 + 973)))) | v19)))(v21);
}

uint64_t sub_23E9472B0@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v11.val[0].i64[0] = (v6 - a1 - 1) & 0xF;
  v11.val[0].i64[1] = (v6 - a1 + 14) & 0xF;
  v11.val[1].i64[0] = (v6 - a1 + 13) & 0xF;
  v11.val[1].i64[1] = (v6 - a1 + 12) & 0xF;
  v11.val[2].i64[0] = (v6 - a1 + 11) & 0xF;
  v11.val[2].i64[1] = (v6 - a1 + ((a2 - 35) ^ 8)) & 0xF;
  v11.val[3].i64[0] = (v6 - a1 + 9) & 0xF;
  v11.val[3].i64[1] = (v6 - a1) & 0xF ^ 8;
  *(v7 + -8 - a1 + v6) = veor_s8(veor_s8(veor_s8(*(v4 + v11.val[0].i64[0] - 7), *(v2 + -8 - a1 + v6)), veor_s8(*(v11.val[0].i64[0] + v5 - 4), *(v11.val[0].i64[0] + v3 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v11, xmmword_23EAA16E0), 0x1D1D1D1D1D1D1D1DLL)));
  return (*(v8 + 8 * ((27 * ((((a2 - 7) - 662) & v9) - 8 != a1)) ^ (a2 - 7))))(xmmword_23EAA16E0);
}

uint64_t sub_23E947540()
{
  v12.val[1].i64[0] = (v3 + 13) & 0xF;
  v12.val[1].i64[1] = (v3 + 12) & 0xF;
  v12.val[2].i64[0] = (v3 + 11) & 0xF;
  v12.val[2].i64[1] = (v3 + 10) & 0xF;
  v12.val[3].i64[0] = (v3 + 9) & 0xF;
  v12.val[3].i64[1] = v3 & 0xF ^ 8;
  v13.val[0].i64[0] = (v3 + 7) & 0xF;
  v13.val[0].i64[1] = (v3 + 6) & 0xF;
  v13.val[1].i64[0] = (v3 + 5) & 0xF;
  v13.val[1].i64[1] = (v3 + 4) & 0xF;
  v13.val[2].i64[0] = (v3 + 3) & 0xF;
  v13.val[2].i64[1] = (v3 + 2) & 0xF;
  v13.val[3].i64[0] = (v3 + 1) & 0xF;
  v13.val[3].i64[1] = v3 & 0xF;
  v7 = vqtbl4q_s8(v13, xmmword_23EAA16C0).u64[0];
  v8.i64[0] = 0x5B5B5B5B5B5B5B5BLL;
  v8.i64[1] = 0x5B5B5B5B5B5B5B5BLL;
  v9.i64[0] = 0xD2D2D2D2D2D2D2D2;
  v9.i64[1] = 0xD2D2D2D2D2D2D2D2;
  v10 = v3 - 1;
  v12.val[0].i64[0] = (v3 - 1) & 0xF;
  v12.val[0].i64[1] = (v3 + 14) & 0xF;
  v13.val[3].i64[0] = vqtbl4q_s8(v12, xmmword_23EAA16C0).u64[0];
  v13.val[3].i64[1] = v7;
  v13.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*(v5 - 15 + v10), *(v2 + (v10 & 0xF) - 15)), veorq_s8(*(v12.val[0].i64[0] + v0 - 12), *(v1 + v12.val[0].i64[0] - 15))));
  v13.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v13.val[0], v13.val[0], 8uLL), v9), vmulq_s8(v13.val[3], v8)));
  *(v5 - 15 + v10) = vextq_s8(v13.val[0], v13.val[0], 8uLL);
  return (*(v6 + 8 * (v4 ^ (2 * ((v4 ^ 0x1C8) == (v3 & 0x10))))))(v12.val[0].i64[1]);
}

uint64_t sub_23E947790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v22 = ((v21 - 136) ^ 0x1B6BD3F) * v20;
  *(v21 - 136) = &a17;
  *(v21 - 128) = v22 + (v19 ^ 0x1FD) + (v17 ^ 0x2E3AFB97) + ((2 * v17) & 0x5C75F72E) - 671624147;
  *(v21 - 124) = v19 - v22 + 1104;
  (*(v18 + 8 * (v19 ^ 0x19EC)))(v21 - 136);
  *(v21 - 124) = ((v19 ^ 0x1FD) + 653) ^ (33731311 * ((((v21 - 136) | 0xA5957961) + (~(v21 - 136) | 0x5A6A869E)) ^ 0xA423C45F));
  *(v21 - 120) = a16;
  *(v21 - 136) = a14;
  v23 = (*(v18 + 8 * ((v19 ^ 0x1FD) + 1949)))(v21 - 136);
  return (*(v18 + 8 * ((((((v19 ^ 0xFD) + 28) ^ (*(v21 - 128) == 239867148)) & 1) * ((((v19 ^ 0x1FD) - 969) | 0xB07) - 3942)) ^ v19 ^ 0x1FD)))(v23);
}

uint64_t sub_23E9478D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 + 2 * (v5 ^ (v2 + 3751)) - 3479;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * ((335 * (v7 == 0)) ^ (v3 + v5 + 3138))))();
}

uint64_t sub_23E947918@<X0>(uint64_t a1@<X3>, unsigned int a2@<W8>)
{
  v7 = *(v5 + v3 + 16);
  v8 = (a1 + a2);
  *v8 = *(v5 + v3);
  v8[1] = v7;
  return (*(v6 + 8 * ((((v2 & 0xFFFFFFFFFFFFFFE0) == 32) * ((91 * (v4 ^ 0x3C9)) ^ 0x63F)) ^ v4)))();
}

uint64_t sub_23E947B24(uint64_t a1)
{
  v6 = a1 + 0x3382BED0464C6924;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  v12 = (v5 - 171) ^ (2048652491 * (((&v10 | 0x8C042500) - (&v10 & 0x8C042500)) ^ 0xF1016336));
  v11 = a1 + 24;
  v13 = v2;
  (*(v4 + 8 * (v5 + 3087)))(&v10);
  v7 = v10;
  if (v10 == ((v5 - 1941608252) ^ 0x152B1FA1))
  {
    v8 = v6 ^ 0x3382BED0464C6924;
  }

  else
  {
    v8 = 0;
  }

  *v1 = v8;
  return v7 ^ v3;
}

uint64_t sub_23E947CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v25 = 1710126949 * (((&a17 | 0xF10DD0E5) + (~&a17 | 0xEF22F1A)) ^ 0xF7EA224E);
  a19 = a11;
  a20 = &a14;
  a17 = v25 + v22 + 744420146;
  a21 = v25 + 377111865;
  a22 = -830601781 - v25;
  v26 = (*(v24 + 8 * (v22 ^ 0x1119u)))(&a17);
  return (*(v24 + 8 * (((a18 == v23) * (((v22 ^ 0x14) - 98) ^ 0x2E9)) ^ v22)))(v26);
}

uint64_t sub_23E947E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _BYTE *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, uint64_t a57, _DWORD *a58, void *a59)
{
  v61 = v60 - 176;
  *(v61 + 24) = a41;
  *(v61 + 8) = a44 + 132;
  *(v60 - 172) = (-97 * ((2 * ((v60 + 80) & 0x90) - (v60 + 80) + 109) ^ 0xD3)) ^ 0xB3;
  *(v60 - 176) = 956911519 * ((2 * ((v60 - 176) & 0x540EF790) - (v60 - 176) - 1410267027) ^ 0xD4A704D3) + v59 - 1131;
  *(v60 - 160) = (-97 * ((2 * ((v60 + 80) & 0x90) - (v60 + 80) + 109) ^ 0xD3)) ^ (a56 - (a15 & 0x58) - 84);
  v62 = (*(a42 + 8 * (v59 + 645)))(v60 - 176);
  *a59 = a45;
  *a58 = a35;
  *a29 = 1;
  *(a41 + 1) = 4;
  v63 = bswap32(*(a57 + 8));
  return (*(a42 + 8 * ((((v63 ^ 0x7FF7CA7F39AEE77BLL) - 0x7FF7CA7F39AEE76FLL + ((2 * v63) & 0x735DCEF6) == 0) * (((v59 + 1778858598) & 0x95F8BF1F) - 1819)) ^ v59)))(v62);
}

uint64_t sub_23E947FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int8 a26, unsigned __int8 a27, unsigned __int8 a28, unsigned __int8 a29, unsigned __int8 a30, unsigned __int8 a31, unsigned __int8 a32, unsigned __int8 a33, unsigned __int8 a34, unsigned __int8 a35, unsigned __int8 a36, unsigned __int8 a37)
{
  v40 = (v38 + 252) | 0x542;
  v41 = *(&off_28512D4A0 + (v38 ^ 0x7B0)) - 4;
  v42 = *(&off_28512D4A0 + v38 - 1393) - 8;
  v43 = v42[a37 ^ 0x9ALL];
  v44 = *(&off_28512D4A0 + v38 - 1399);
  v45 = ((v41[a35 ^ 0x34] << (((v38 - 4) | 0x42) - 62)) ^ 0x6761CAB3) & ~v43 | v43 & 0x4C;
  v46 = v42[a33 ^ 0x2DLL];
  v47 = (*(v44 + (a28 ^ 0x99)) + 43) << 8;
  v48 = *(&off_28512D4A0 + (v38 ^ 0x6C3)) - 4;
  v49 = (v48[a22 ^ 0x8ELL] ^ 0x86) << 24;
  v50 = v42[a25 ^ 0xE2];
  v51 = (((v49 ^ 0x1FFFFFF0) & (((*(v44 + (a24 ^ 0xE5)) + 43) << 8) ^ 0x616DF0D0) | v49 & 0x9E000000) ^ 0xC7A6B0C1) & (v50 ^ 0xFFFFFF39);
  v52 = v50 & 0xEEEEEEEE;
  v53 = (((*(v44 + (a36 ^ 0xB0)) + 43) << 8) ^ 0x946FFC70) & (v45 ^ 0xFAC535CA) ^ v45 & 0x6390408F;
  v54 = (v48[a30 ^ 0xA3] ^ 0xF5) << 24;
  v55 = v41[a27 ^ 0x11] << 16;
  v249 = v48;
  v252 = v41;
  v56 = v41[a23 ^ 0x89] << 16;
  v57 = (v56 ^ 0xFF47FFFF) & ((v52 | v51) ^ 0xB7688D03);
  HIDWORD(v58) = ~(a29 >> 7);
  LODWORD(v58) = (a29 << 25) ^ 0xEFFFFFFF;
  v250 = v44;
  v59 = (*(v44 + (a32 ^ 0xC9)) + 43) << 8;
  v60 = (v55 & 0x60660460 | 0x9E11738E) ^ (v55 ^ 0xFF5DFF80) & ((((v48[a26 ^ 0x8ALL] << 24) ^ 0x6E5F5F30) & (v47 ^ 0xFF7FCB34) | v47 & 0xA000) ^ 0xD0C631B0);
  v61 = v59 & 0x6F00 ^ 0xB60CD146 ^ (v59 ^ 0xFFFF98FF) & (v54 & 0xC7FFFFFF ^ 0xBFA2BC7F ^ (v54 ^ 0xFFFFFFF) & ((((v41[a31 ^ 0x1ELL] << 16) ^ 0x38266094) & (v46 ^ 0xBAFF68BE) | v46 & 0x6B) ^ 0x544C8F));
  v62 = v56 & 0x5C0000 ^ 0xE64DF409;
  v251 = v42;
  v63 = v42[(v58 >> 25) ^ 0x8FLL];
  v64 = v60 & ~v63;
  v65 = v63 & 0xFFFFFFF1;
  v66 = v62 ^ v57;
  v67 = (v65 | v64) ^ 0xBC1C5A81;
  v68 = v53 & 0x8471B9CC ^ 0xCC05D9D4 ^ ((v48[a34 ^ 0x2ELL] << 24) ^ 0xC48E4633) & (v53 ^ 0x871A548);
  v255 = (((v37 ^ 0x11930533) + 88277238) ^ ((v37 ^ 0x64987408) + 1883795919) ^ ((v37 ^ 0x6FE2F0A4) + 2066937187)) + 160362709;
  v253 = v39;
  v69 = v39;
  v254 = (15 * (v40 ^ 0xD84)) ^ 0xBD9;
  v70 = v42[v39[v254] ^ 0xALL];
  v71 = v41[(16 * v40) ^ 0xBB ^ v39[13]] << 16;
  v72 = (((v70 ^ 0xFF545690) & ((v48[v39[12] ^ 0x1FLL] << 24) ^ 0x185456D7) | v70 & 0x28) ^ 0x19F03513) & (v71 ^ 0xFFE37FFF);
  v73 = v41[v39[5] ^ 0x89];
  v74 = v71 & 0x5B0000;
  v75 = v41[(v69[1] ^ 0x77) - ((2 * (v69[1] ^ 0x77)) & 0x66666666) + 51];
  v76 = (*(v44 + (v39[6] ^ 0x7BLL)) + 43) ^ 0xF1;
  if ((v76 & 0x20) != 0)
  {
    v77 = -32;
  }

  else
  {
    v77 = 32;
  }

  v78 = (v77 + v76) << 8;
  v79 = v42[v39[7] ^ 0x32];
  v80 = (v79 ^ 0xFFFF000F) & ((v73 << 16) ^ 0x3DB10054) | v79 & 0xAB;
  v81 = (-44 - *(v44 + (v39[10] ^ 0x3BLL))) << 8;
  v82 = v42[v39[3] ^ 0x57];
  v83 = ((v75 << 16) ^ 0x6655C938) & ~v82 | v82 & 0xFFFFFFC7;
  v84 = (*(v44 + (v39[2] ^ 0x7ALL)) + 43) << 8;
  v85 = (v83 ^ 0x8A2D6596) & ~v84 | v84 & 0x5300;
  v86 = ((v48[v39[4] ^ 0x78] << 24) ^ 0x7224258B) & (v78 | 0xFF24218B);
  v87 = (v78 ^ 0xFDFF20FF) & (v80 ^ 0xF83CE22B) | v78 & 0x1900;
  v88 = v72 & 0x548462BD ^ v68 ^ (((*(v44 + (v39[14] ^ 0x3ELL)) + 43) << 8) ^ 0xAB7B0342) & ((v74 | v72) ^ 0xB3489C96);
  v89 = v85 & 0x7530D73E ^ v66 ^ ((v48[*v39 ^ 0x41] << 24) ^ 0xE8CF28C1) & (v85 ^ 0x13B85163);
  v90 = v251[v39[11] ^ 0x47] ^ v61 ^ __ROR4__(__ROR4__(((((v48[v39[8] ^ 0x4FLL] ^ 0xA3) << 24) ^ 0x6E6D69B8) & ~v81 | v81 & 0x9600) ^ 0x2B013B86, 10) ^ 0x9F624DC2, 22);
  v91 = v87 & 0x61BA2A26 ^ v67 ^ (v86 ^ 0xEE61F052) & (v87 ^ 0x3AF01D25);
  v92 = v88 ^ 0x31CFA98F;
  v93 = *(&off_28512D4A0 + (v40 ^ 0xDAA)) - 12;
  v94 = *(&off_28512D4A0 + (v40 ^ 0xDC8)) - 12;
  v95 = *(&off_28512D4A0 + (v40 ^ 0xCAA));
  v96 = (v88 ^ 0x31CFA98F) >> 24;
  v97 = *(&off_28512D4A0 + v40 - 2927);
  HIDWORD(v98) = *(v95 + 4 * (v88 ^ 0xEu));
  LODWORD(v98) = HIDWORD(v98);
  v99 = ((v90 ^ 0xA416A579 ^ (v252[v39[9] ^ 0xELL] << 16)) >> 16);
  v100 = *&v93[4 * (HIBYTE(v89) ^ 0xBA)] ^ ((v90 ^ 0xA579) >> 8) ^ *&v94[4 * (BYTE2(v91) ^ 0x9B)] ^ BYTE2(v91) ^ *(v97 + 4 * (((v90 ^ 0xA579) >> 8) ^ 0x22u)) ^ (v98 >> 28) ^ ((v98 >> 28) >> 2) & 0x258976D1;
  HIDWORD(v98) = *(v95 + 4 * (v89 ^ 0x1Du));
  LODWORD(v98) = HIDWORD(v98);
  v101 = *&v94[4 * (v99 ^ 0x5C)] ^ v99 ^ BYTE1(v92) ^ *&v93[4 * (HIBYTE(v91) ^ 0x47)] ^ (v98 >> 28) ^ *(v97 + 4 * (BYTE1(v92) ^ 0x22u)) ^ ((v98 >> 28) >> 2) & 0x258976D1;
  HIDWORD(v98) = *(v95 + 4 * (v91 ^ 0x52u));
  LODWORD(v98) = HIDWORD(v98);
  v102 = BYTE2(v92) ^ BYTE1(v89) ^ *&v93[4 * ((v90 ^ 0xA416A579) >> 24)] ^ *(v97 + 4 * (BYTE1(v89) ^ 0x56u)) ^ (v98 >> 28) ^ *&v94[4 * (BYTE2(v92) ^ 0x5C)] ^ ((v98 >> 28) >> 2) & 0x258976D1;
  HIDWORD(v98) = *(v95 + 4 * (v90 ^ 0xF8u));
  LODWORD(v98) = HIDWORD(v98);
  v103 = (v102 & 0x20000000 | 0xDFCAF2E5) ^ v102 & 0xDFFFFFFF;
  v104 = *&v93[4 * v96] ^ (BYTE1(v91) ^ BYTE2(v89)) ^ *&v94[4 * (BYTE2(v89) ^ 0xB8)] ^ *(v97 + 4 * (BYTE1(v91) ^ 0xBEu)) ^ (v98 >> 28) ^ ((v98 >> 28) >> 2) & 0x258976D1;
  BYTE1(v80) = BYTE1(v101) ^ 0x36;
  v105 = ((v101 ^ 0x3D4A3663) >> 16);
  HIDWORD(v98) = *(v95 + 4 * (v104 ^ 0xF7u));
  LODWORD(v98) = HIDWORD(v98);
  v106 = v105 ^ *&v94[4 * (v105 ^ 0x5C)] ^ *&v93[4 * (HIBYTE(v100) ^ 0xCE)] ^ *(v97 + 4 * (((v102 ^ 0xF2E5) >> 8) ^ 0x46u)) ^ (v98 >> 28) ^ ((v98 >> 28) >> 2) & 0x258976D1;
  LOBYTE(v105) = v105 ^ v94[4 * (v105 ^ 0x5C)] ^ v93[4 * (HIBYTE(v100) ^ 0xCE)] ^ *(v97 + 4 * (((v102 ^ 0xF2E5) >> 8) ^ 0x46u)) ^ (v98 >> 28) ^ ((v98 >> 28) >> 2) & 0xD1 ^ ((v102 ^ 0xF2E5) >> 8);
  HIDWORD(v98) = *(v95 + 4 * (v100 ^ 0xD1u));
  LODWORD(v98) = HIDWORD(v98);
  v107 = *(v97 + 4 * (BYTE1(v104) ^ 0x43u)) ^ *&v93[4 * (HIBYTE(v101) ^ 0x86)] ^ BYTE1(v104) ^ BYTE2(v103) ^ *&v94[4 * (BYTE2(v103) ^ 0x91)] ^ (v98 >> 28) ^ ((v98 >> 28) >> 2) & 0x258976D1;
  HIDWORD(v98) = *(v95 + 4 * (v101 ^ 0x63u));
  LODWORD(v98) = HIDWORD(v98);
  v108 = *&v94[4 * (BYTE2(v104) ^ 0x9F)] ^ (BYTE2(v104) ^ BYTE1(v100)) ^ *(v97 + 4 * (BYTE1(v100) ^ 0x65u)) ^ *&v93[4 * (HIBYTE(v103) ^ 0x31)] ^ (v98 >> 28) ^ ((v98 >> 28) >> 2) & 0x258976D1;
  HIDWORD(v98) = *&v93[4 * (HIBYTE(v104) ^ 0x70)] ^ 0x30BB9980 ^ *&v94[4 * (BYTE2(v100) ^ 0xD2)];
  LODWORD(v98) = HIDWORD(v98);
  v109 = v98 >> 29;
  HIDWORD(v98) = v109;
  LODWORD(v98) = v109 ^ (v100 >> 13) & 0x7F8;
  v110 = v98 >> 3;
  HIDWORD(v98) = *(v95 + 4 * (v103 ^ 0x4Bu));
  LODWORD(v98) = HIDWORD(v98);
  v111 = v108 ^ 0x109DB332;
  v112 = v107 ^ 0x819B0471;
  v113 = (v107 ^ 0x819B0471) >> 8;
  v114 = ((v108 ^ 0xB332) >> 8);
  v115 = BYTE1(v80) ^ *(v97 + 4 * (BYTE1(v80) ^ 0x22u)) ^ (v98 >> 28) ^ ((v98 >> 28) >> 2) & 0x258976D1 ^ v110 ^ 0x2FE46A07;
  HIDWORD(v98) = *(v95 + 4 * ((BYTE1(v80) ^ *(v97 + 4 * (BYTE1(v80) ^ 0x22u)) ^ (v98 >> 28) ^ ((v98 >> 28) >> 2) & 0xD1 ^ v110) ^ 7u));
  LODWORD(v98) = HIDWORD(v98);
  v116 = *&v94[4 * (BYTE2(v112) ^ 0x5C)] ^ *&v93[4 * (HIBYTE(v106) ^ 0xC3)] ^ *(v97 + 4 * (BYTE1(v111) - ((v111 >> 7) & 0x44) + 34)) ^ BYTE2(v112) ^ (v98 >> 28) ^ ((v98 >> 28) >> 2) & 0x258976D1;
  HIDWORD(v98) = *(v95 + 4 * (v105 ^ 0x6Bu));
  LODWORD(v98) = HIDWORD(v98);
  v117 = *&v93[4 * (HIBYTE(v108) ^ 0xAB)];
  v118 = *&v93[4 * (HIBYTE(v107) ^ 0x3A)] ^ BYTE2(v111) ^ *(v97 + 4 * (BYTE1(v115) ^ 0x22u)) ^ *&v94[4 * (-BYTE2(v111) ^ 0x2FBACD1F ^ (92 - (BYTE2(v111) ^ 0x5C)) ^ (BYTE2(v111) + 800771359 - ((v111 >> 15) & 0x3E))) + 368] ^ BYTE1(v115) ^ (v98 >> 28) ^ ((v98 >> 28) >> 2) & 0x258976D1;
  v119 = v107 ^ 0x71;
  v120 = v119 >= 0xDC;
  if (v119 >= 0xDC)
  {
    v119 -= 220;
  }

  v121 = v112 + 36;
  if (!v120)
  {
    v121 = v112;
  }

  if (v119)
  {
    v122 = 0;
  }

  else
  {
    v122 = v121;
  }

  HIDWORD(v123) = *(v95 + 4 * ((v112 - v122) ^ 0x81u));
  LODWORD(v123) = HIDWORD(v123);
  v124 = BYTE2(v106);
  v125 = *&v94[4 * (BYTE2(v106) ^ 0x8C)];
  v126 = (BYTE1(v106) ^ BYTE2(v115)) ^ v117 ^ *(v97 + 4 * (BYTE1(v106) ^ 0x31u)) ^ *&v94[4 * (BYTE2(v115) ^ 0x5C)] ^ (v123 >> 28) ^ ((v123 >> 28) >> 2) & 0x258976D1;
  LODWORD(v123) = __ROR4__(v124 ^ v125 ^ 0xFABCD7A2 ^ *&v93[4 * (-HIBYTE(v115) ^ 0x64F6825A ^ (187 - (HIBYTE(v115) ^ 0xBB)) ^ (HIBYTE(v115) + 1693876826 - ((v115 >> 23) & 0xB4))) + 748], 2) ^ 0xFC72CB0D;
  HIDWORD(v123) = v123;
  v127 = v123 >> 30;
  v128 = *(v97 + 4 * (BYTE1(v112) ^ 0x22u)) ^ BYTE1(v112);
  v129 = *(v95 + 4 * v111);
  v130 = (-(v127 ^ 0xAF1CAE0) ^ 0x8A6E38F0 ^ ((v128 ^ 0xAB4B551B) - (v128 ^ 0xA1BA9FFB ^ v127)) ^ ((v127 ^ 0xAF1CAE0) - 1972487952 - 2 * ((v127 ^ 0xAF1CAE0) & 0xA6E38FD ^ v127 & 0xD))) + (v128 ^ 0xAB4B551B);
  v131 = ((v129 << (v113 & 4) << (v113 & 4 ^ 4)) ^ 0x90F22816 ^ ((v129 >> 28) - 1863178218 - ((v129 >> 27) & 0xC))) + 2 * ((v129 << (v113 & 4) << (v113 & 4 ^ 4)) & (v129 >> 28));
  v132 = v114 ^ 0xF6423D88 ^ v116;
  v133 = v118 ^ 0x8D81865;
  v134 = v131 ^ (v131 >> 2) & 0x258976D1 ^ 0xADD73CE5 ^ v130;
  v135 = HIBYTE(v134);
  v136 = *&v93[4 * (HIBYTE(v116) ^ 0x4D)];
  v137 = *(v97 + 4 * (BYTE1(v126) ^ 0xA8u));
  if ((v137 & 0x10000) != 0)
  {
    v138 = -65536;
  }

  else
  {
    v138 = 0x10000;
  }

  HIDWORD(v139) = *(v95 + 4 * v134);
  LODWORD(v139) = HIDWORD(v139);
  v140 = *&v94[4 * (BYTE2(v133) ^ 0x5C)] ^ v136 ^ BYTE2(v133) ^ BYTE1(v126) ^ (v139 >> 28) ^ (v138 + v137) ^ ((v139 >> 28) >> 2) & 0x258976D1;
  v141 = BYTE1(v134);
  v142 = *(v97 + 4 * (BYTE1(v134) ^ 0x22u));
  HIDWORD(v139) = *(v95 + 4 * v132);
  LODWORD(v139) = HIDWORD(v139);
  v143 = *&v93[4 * HIBYTE(v133)] ^ BYTE2(v126) ^ (v139 >> 28) ^ *&v94[4 * (BYTE2(v126) ^ 0x18)] ^ ((v139 >> 28) >> 2) & 0x258976D1 ^ (v142 - ((2 * v142) & 0x4A2E16A2) - 1525216431);
  v144 = *&v93[4 * (HIBYTE(v126) ^ 0xDC)];
  v145 = BYTE2(v134) ^ *&v94[4 * (BYTE2(v134) ^ 0x5C)];
  HIDWORD(v139) = *(v95 + 4 * (v133 ^ 0x81u));
  LODWORD(v139) = HIDWORD(v139);
  v146 = v139 >> 28;
  v147 = *&v93[4 * v135];
  v148 = *(v97 + 4 * (BYTE1(v133) ^ 0x22u)) ^ BYTE1(v133);
  HIDWORD(v139) = *(v95 + 4 * (v126 ^ 0x71u));
  LODWORD(v139) = HIDWORD(v139);
  v149 = v140 ^ 0x42A2C950;
  v150 = v143 ^ v141 ^ 0x2B6DFB9A;
  v151 = v147 ^ BYTE2(v132) ^ *&v94[4 * (BYTE2(v132) ^ 0x5C)] ^ (v139 >> 28) ^ (v148 - 1500447859 - ((2 * v148) & 0x4D21F71A)) ^ ((v139 >> 28) >> 2) & 0x258976D1;
  v152 = BYTE1(v132) ^ *(v97 + 4 * (BYTE1(v132) ^ 0x22u)) ^ v146 ^ (v146 >> 2) & 0x258976D1 ^ v144 ^ 0x30AFA050 ^ (v145 - 1500447859 - ((2 * v145) & 0x4D21F71A));
  v153 = *&v94[4 * (BYTE2(v150) ^ 0x5C)];
  LODWORD(v139) = __ROR4__(__ROR4__(*(v95 + 4 * (v151 ^ 0x3Bu)), 5) ^ 0x14F57D93, 23);
  v154 = *(v97 + 4 * (BYTE1(v152) ^ 0x22u)) ^ *&v93[4 * ((v140 ^ 0x42A2C950u) >> 24)] ^ BYTE2(v150) ^ v139 ^ 0xEAFB2629 ^ ((v139 ^ 0xEAFB2629) >> 2) & 0x258976D1 ^ (v153 - 1500447859 - ((2 * v153) & 0x4D21F71A));
  v155 = v154 ^ BYTE1(v152);
  v156 = BYTE2(v152) ^ *&v94[4 * (BYTE2(v152) ^ 0x5C)];
  HIDWORD(v139) = *(v95 + 4 * (v140 ^ 0xD1u));
  LODWORD(v139) = HIDWORD(v139);
  v157 = *(v97 + 4 * (((v151 ^ 0xD9BA) >> 8) ^ 0x22u)) ^ *&v93[4 * (HIBYTE(v143) ^ 0x90)] ^ (v139 >> 28) ^ ((v151 ^ 0xD9BA) >> 8) ^ ((v139 >> 28) >> 2) & 0x258976D1 ^ (v156 - 1500447859 - ((2 * v156) & 0x4D21F71A));
  v158 = ((v151 ^ 0xF3B4D9BA) >> 16) ^ *&v94[4 * (((v151 ^ 0xF3B4D9BA) >> 16) ^ 0x5C)];
  HIDWORD(v139) = *(v95 + 4 * v150);
  LODWORD(v139) = HIDWORD(v139);
  v159 = *&v93[4 * HIBYTE(v152)] ^ BYTE1(v149) ^ *(v97 + 4 * (BYTE1(v149) ^ 0x22u)) ^ (v158 - 1500447859 - ((2 * v158) & 0x4D21F71A)) ^ (v139 >> 28) ^ ((v139 >> 28) >> 2) & 0x258976D1;
  v160 = *&v94[4 * (BYTE2(v149) ^ 0x5C)] ^ BYTE2(v149);
  v161 = v155 ^ 0xF3D7B682;
  HIDWORD(v139) = *(v95 + 4 * v152);
  LODWORD(v139) = HIDWORD(v139);
  v162 = *&v93[4 * (HIBYTE(v151) ^ 0x48)] ^ BYTE1(v150) ^ *(v97 + 4 * (BYTE1(v150) ^ 0x22u)) ^ (v139 >> 28) ^ ((v139 >> 28) >> 2) & 0x258976D1 ^ (v160 - 1500447859 - ((2 * v160) & 0x4D21F71A));
  v163 = *&v93[4 * (HIBYTE(v154) ^ 0x48)];
  v164 = v162 ^ 0xC1B71E56;
  v165 = ((v157 ^ 0xB9AC673D) >> 16) ^ *&v94[4 * (((v157 ^ 0xB9AC673D) >> 16) ^ 0x5C)];
  HIDWORD(v139) = *(v95 + 4 * (v162 ^ 0xD7u));
  LODWORD(v139) = HIDWORD(v139);
  v166 = v139 >> 28;
  v167 = v165 - 1500447859 - ((2 * v165) & 0x4D21F71A);
  v168 = *&v94[4 * (((v159 ^ 0x50921DD0) >> 16) ^ 0x5C)] ^ ((v159 ^ 0x50921DD0) >> 16);
  HIDWORD(v139) = *(v95 + 4 * (v155 ^ 3u));
  LODWORD(v139) = HIDWORD(v139);
  v169 = v139 >> 28;
  v170 = (v169 >> 2) & 0x258976D1;
  v171 = v170 & v169;
  v172 = v170 + v169;
  v173 = ((v162 ^ 0x1E56) >> 8);
  v174 = *(v97 + 4 * (v173 ^ 0x22u)) ^ *&v93[4 * (HIBYTE(v157) ^ 2)] ^ (v168 - 1500447859 - ((2 * v168) & 0x4D21F71A)) ^ (v172 - 2 * v171);
  v175 = *&v94[4 * (BYTE2(v164) ^ 0x5C)] ^ BYTE2(v164);
  v176 = v175 - 1500447859 - ((2 * v175) & 0x4D21F71A);
  if ((v157 & 0x1000) != 0)
  {
    v177 = -16;
  }

  else
  {
    v177 = 16;
  }

  v178 = v177 + ((v157 ^ 0x673D) >> 8);
  v179 = v174 ^ v173;
  HIDWORD(v180) = *(v95 + 4 * (v157 ^ 0xBCu));
  LODWORD(v180) = HIDWORD(v180);
  v181 = *&v93[4 * (HIBYTE(v159) ^ 0xEB)] ^ BYTE1(v161) ^ *(v97 + 4 * (BYTE1(v161) ^ 0x22u)) ^ (v180 >> 28) ^ ((v180 >> 28) >> 2) & 0x258976D1 ^ v176;
  v182 = BYTE2(v161) ^ v178 ^ *&v93[4 * (HIBYTE(v162) ^ 0x7A)] ^ *&v94[4 * (BYTE2(v161) ^ 0x5C)] ^ *(v97 + 4 * (v178 ^ 0x32u)) ^ 0xAACD64AE;
  LODWORD(v180) = __ROR4__(__ROR4__(*(v95 + 4 * (v159 ^ 0x51u)), 27) ^ 0xD3CB8D87, 1);
  v183 = ((v180 ^ 0xE9E5C6C3) + v182 - 2 * ((v180 ^ 0xE9E5C6C3) & v182)) ^ ((v180 ^ 0xE9E5C6C3) >> 2) & 0x258976D1;
  LODWORD(v180) = __ROR4__(v163 ^ ((v159 ^ 0x1DD0) >> 8) ^ *(v97 + 4 * (((v159 ^ 0x1DD0) >> 8) ^ 0x22u)) ^ v166 ^ (v166 >> 2) & 0x258976D1 ^ v167 ^ 0x720C5CB, 2) ^ 0x91015215;
  HIDWORD(v180) = v180;
  v184 = v180 >> 30;
  v185 = v181 ^ 0xAA1BF770;
  v186 = v174 ^ v173 ^ 0x9818309C;
  v187 = *&v94[4 * (BYTE2(v186) ^ 0x5C)];
  HIDWORD(v180) = *(v95 + 4 * (v183 ^ 0xA8u));
  LODWORD(v180) = HIDWORD(v180);
  v188 = *(v97 + 4 * (BYTE1(v185) ^ 0x22u)) ^ BYTE2(v186) ^ BYTE1(v185) ^ *&v93[4 * (HIBYTE(v184) ^ 0xBB)] ^ (v187 - 1500447859 - ((2 * v187) & 0x4D21F71A));
  v189 = v188 & 0x80;
  v190 = ((v180 >> 28) >> 2) & 0x258976D1 ^ (v180 >> 28);
  if ((v188 & 0x80 & v190) != 0)
  {
    v189 = -v189;
  }

  v191 = v189 + v190;
  v192 = *&v94[4 * (BYTE2(v185) ^ 0x5C)] ^ BYTE2(v185);
  HIDWORD(v193) = *(v95 + 4 * (v184 ^ 0x81u));
  LODWORD(v193) = HIDWORD(v193);
  v194 = *(v97 + 4 * (BYTE1(v183) ^ 0x8Eu)) ^ *&v93[4 * (HIBYTE(v174) ^ 0x23)] ^ (v192 - 1500447859 - ((2 * v192) & 0x4D21F71A)) ^ BYTE1(v183) ^ (v193 >> 28) ^ ((v193 >> 28) >> 2) & 0x258976D1;
  v195 = *&v94[4 * (BYTE2(v183) ^ 0x60 ^ -(BYTE2(v183) ^ 0x60) ^ (92 - (BYTE2(v183) ^ 0x3C))) + 368];
  HIDWORD(v193) = *(v95 + 4 * (v179 ^ 0x1Du));
  LODWORD(v193) = HIDWORD(v193);
  v196 = *&v93[4 * (HIBYTE(v181) ^ 0x11)] ^ BYTE1(v184) ^ *(v97 + 4 * (BYTE1(v184) ^ 0x22u)) ^ (v193 >> 28) ^ ((v193 >> 28) >> 2) & 0x258976D1 ^ (v195 - 1500447859 - ((2 * v195) & 0x4D21F71A));
  v197 = *&v94[4 * (BYTE2(v184) ^ 0x5C)] ^ BYTE2(v184);
  v198 = v197 - 1500447859 - ((2 * v197) & 0x4D21F71A);
  v199 = v188 & 0xFFFFFF7F ^ 0x238AD6C5 ^ v191;
  HIDWORD(v193) = *(v95 + 4 * (v181 ^ 0xF1u));
  LODWORD(v193) = HIDWORD(v193);
  v200 = *&v93[4 * (HIBYTE(v183) ^ 0xBE)] ^ BYTE1(v186) ^ *(v97 + 4 * (BYTE1(v186) ^ 0x22u)) ^ (v193 >> 28) ^ ((v193 >> 28) >> 2) & 0x258976D1 ^ v198;
  v201 = v194 ^ 0x62033C48;
  v202 = v196 ^ BYTE2(v183) ^ 0xAA8911C8;
  v203 = BYTE2(v202);
  if ((BYTE2(v202) - 54) | BYTE2(v202))
  {
    LOBYTE(v164) = v200 ^ 0x8E;
  }

  HIDWORD(v205) = *(v95 + 4 * (v164 ^ 0x81u));
  LODWORD(v205) = HIDWORD(v205);
  v204 = *&v94[4 * (BYTE2(v201) ^ 0x5C)] ^ BYTE2(v201);
  v206 = *(v97 + 4 * (BYTE1(v202) ^ 0x22u)) ^ *&v93[4 * HIBYTE(v199)] ^ BYTE1(v202) ^ (v204 - 1500447859 - ((2 * v204) & 0x4D21F71A)) ^ (v205 >> 28) ^ ((v205 >> 28) >> 2) & 0x258976D1;
  v207 = *&v94[4 * (BYTE2(v202) ^ 0x5C)];
  v208 = *(v97 + 4 * (BYTE1(v199) ^ 0x22u));
  v209 = *&v94[4 * (BYTE2(v200) ^ 0x79)];
  v210 = v207 - 1500447859 - ((2 * v207) & 0x4D21F71A);
  HIDWORD(v205) = *(v95 + 4 * (v194 ^ 0xC9u));
  LODWORD(v205) = HIDWORD(v205);
  v211 = (v208 + (BYTE1(v199) ^ 0xAB4B551B) - 2 * (v208 & (BYTE1(v199) ^ 0xAB4B551B))) ^ *&v93[4 * (HIBYTE(v196) ^ 0x11)] ^ (v209 - 1500447859 - ((2 * v209) & 0x4D21F71A)) ^ ((((v205 >> 28) >> 2) & 0x258976D1) + (v205 >> 28) - 2 * (((v205 >> 28) >> 2) & 0x258976D1 & (v205 >> 28)));
  v212 = BYTE2(v199) ^ 0x2D2222E1 ^ *&v94[4 * (BYTE2(v199) ^ 0x5C)];
  v213 = *&v93[4 * (HIBYTE(v200) ^ 0x7A)] ^ 0x2CA41344;
  HIDWORD(v205) = *(v95 + 4 * v199);
  LODWORD(v205) = HIDWORD(v205);
  v214 = v205 >> 28;
  HIDWORD(v205) = *(v95 + 4 * ((v196 ^ BYTE2(v183)) ^ 0x49u));
  LODWORD(v205) = HIDWORD(v205);
  v215 = *(v97 + 4 * (BYTE1(v201) ^ 0x22u)) ^ BYTE1(v201) ^ (v205 >> 28) ^ ((v205 >> 28) >> 2) & 0x258976D1 ^ (v213 + v212 - 2 * (v213 & v212));
  v216 = v211 ^ BYTE2(v200) ^ 0x57054729;
  v217 = *&v93[4 * (HIBYTE(v194) ^ 0xD9)] ^ v203 ^ *(v97 + 4 * (BYTE1(v200) ^ 0xDAu)) ^ BYTE1(v200) ^ 0xF8 ^ v214 ^ v210 ^ (v214 >> 2) & 0x258976D1 ^ 0x8F56D902;
  v218 = *&v94[4 * (BYTE2(v217) ^ 0x5C)] ^ BYTE2(v217);
  v219 = BYTE1(v216);
  HIDWORD(v205) = *(v95 + 4 * (v215 ^ 0xCu));
  LODWORD(v205) = HIDWORD(v205);
  v220 = v205 >> 28;
  v221 = *(v97 + 4 * (BYTE1(v216) ^ 0x22u)) ^ v220 ^ *&v93[4 * (HIBYTE(v206) ^ 0x8F)];
  v222 = BYTE2(v216);
  v223 = v221 ^ (v218 - 1500447859 - ((2 * v218) & 0x4D21F71A)) ^ (v220 >> 2) & 0x258976D1;
  v224 = *&v94[4 * (v222 ^ 0x5C)];
  v225 = v224 - 1500447859 - ((2 * v224) & 0x4D21F71A);
  HIDWORD(v205) = *(v95 + 4 * (v206 ^ 0xDAu));
  LODWORD(v205) = HIDWORD(v205);
  v226 = v223 ^ v219;
  v227 = *(v97 + 4 * (((v215 ^ 0xFA8D) >> 8) ^ 0x22u)) ^ *&v93[4 * HIBYTE(v217)] ^ v222 ^ ((v215 ^ 0xFA8D) >> 8) ^ v225 ^ (v205 >> 28) ^ ((v205 >> 28) >> 2) & 0x258976D1;
  v228 = *&v94[4 * (((v215 ^ 0xF8ECFA8D) >> 16) ^ 0x5C)] ^ ((v215 ^ 0xF8ECFA8D) >> 16);
  v229 = *&v94[4 * (BYTE2(v206) ^ 0x98)];
  HIDWORD(v205) = *(v95 + 4 * v217);
  LODWORD(v205) = HIDWORD(v205);
  v230 = *&v93[4 * (HIBYTE(v211) ^ 0xEC)] ^ ((v206 ^ 0x3F5B) >> 8) ^ *(v97 + 4 * (((v206 ^ 0x3F5B) >> 8) ^ 0x22u)) ^ (v228 - 1500447859 - ((2 * v228) & 0x4D21F71A)) ^ (v205 >> 28) ^ ((v205 >> 28) >> 2) & 0x258976D1;
  HIDWORD(v205) = *(v95 + 4 * ((v211 ^ BYTE2(v200)) ^ 0xA8u));
  LODWORD(v205) = HIDWORD(v205);
  v231 = *&v93[4 * (HIBYTE(v215) ^ 0x43)] ^ *(v97 + 4 * (BYTE1(v217) ^ 0x22u)) ^ (BYTE1(v217) ^ ((v206 ^ 0x34C43F5B) >> 16)) ^ (v205 >> 28) ^ ((v205 >> 28) >> 2) & 0x258976D1 ^ (v229 - 1500447859 - ((2 * v229) & 0x4D21F71A));
  v232 = *(&off_28512D4A0 + v40 - 3358);
  v233 = *(&off_28512D4A0 + v40 - 3201) - 12;
  v234 = *(&off_28512D4A0 + (v40 & 0x6254A11F)) - 4;
  v235 = *(&off_28512D4A0 + v40 - 3238) - 12;
  v236 = *&v233[4 * (BYTE2(v227) ^ 0x69)] ^ (*(v232 + 4 * ((v223 ^ v219 ^ 0xAF4DB357) >> 24)) - 180389234) ^ (*&v234[4 * ((v230 ^ 0x3EC3) >> 8)] + 421197948) ^ *&v235[4 * (v231 ^ 0xFB)];
  v237 = (*(v232 + 4 * (HIBYTE(v227) ^ 0xF9)) - 180389234) ^ (v223 ^ v219) ^ 0x57 ^ *&v233[4 * ((v230 ^ 0xB0B63EC3) >> 16)] ^ (*&v234[4 * (BYTE1(v231) ^ 0xD4)] + 421197948) ^ *&v235[4 * ((v223 ^ v219) ^ 0xF6)];
  v238 = v230 ^ 0xC3;
  v239 = ((v226 ^ 0xAF4DB357) >> 16);
  if (v238 == ((v230 ^ 0xC3) - 55))
  {
    v239 = *(v232 + 4 * (HIBYTE(v231) ^ 0x5A)) - 180389234;
  }

  v240 = (*(v232 + 4 * (BYTE3(v230) ^ 0x67)) - 180389234) ^ v227 ^ 0xE8 ^ *&v233[4 * (BYTE2(v231) ^ 0xDD)] ^ (*&v234[4 * (BYTE1(v223) ^ 0xF5)] + 421197948) ^ *&v235[4 * (v227 ^ 0x49)];
  v241 = *&v233[4 * (v239 ^ 0xE3)] ^ v238 ^ (*(v232 + 4 * (HIBYTE(v231) ^ 0x5A)) - 180389234) ^ (*&v234[4 * (BYTE1(v227) ^ 0xF6)] + 421197948) ^ *&v235[4 * (v230 ^ 0x62)];
  HIDWORD(v242) = v236 ^ v231 ^ 0x2004B4B8;
  LODWORD(v242) = HIDWORD(v242);
  HIDWORD(v242) = (v242 >> 5) & 0xF8000007 ^ 0xABFA5B4C;
  LODWORD(v242) = HIDWORD(v242);
  v243 = *(&off_28512D4A0 + (v40 ^ 0xC2C)) - 4;
  v69[3] = (v242 >> 27) ^ v243[(v242 >> 27) ^ 0x7F4B6931] ^ 0x81;
  v69[7] = v237 ^ 0x8A ^ v243[v237 ^ 0x72];
  v244 = *(&off_28512D4A0 + (v40 ^ 0xC75)) - 12;
  v69[1] = ((v236 ^ v231 ^ 0x2004B4B8u) >> 16) ^ v244[((v236 ^ v231 ^ 0x2004B4B8u) >> 16) ^ 0xC6] ^ 0x7E;
  v253[v254] = v241 ^ 0x6D ^ v243[v241 ^ 0x55];
  v69[13] = BYTE2(v241) ^ 0x94 ^ v244[BYTE2(v241) ^ 0x87];
  v245 = *(&off_28512D4A0 + v40 - 2940) - 12;
  v69[14] = v245[BYTE1(v241) ^ 0x2ALL] ^ 0x12;
  v69[10] = v245[BYTE1(v240) ^ 0xF4] ^ 0x13;
  v69[6] = v245[BYTE1(v237) ^ 8] ^ 0xEF;
  v246 = *(&off_28512D4A0 + v40 - 3038) - 4;
  v69[12] = (((v241 >> 23) & 0xEC ^ 0x8C) + (HIBYTE(v241) ^ 0x38)) ^ 0x19 ^ v246[HIBYTE(v241) ^ 0x86];
  v69[9] = BYTE2(v240) ^ 0x2D ^ v244[BYTE2(v240) ^ 0xD3];
  *v69 = ((((v236 ^ v231 ^ 0x2004B4B8u) >> 24) ^ 0x60) - 10) ^ 0x4A ^ v246[((v236 ^ v231 ^ 0x2004B4B8u) >> 24) ^ 0x28];
  v69[8] = ((HIBYTE(v240) ^ 0x96) - 10) ^ 0xD3 ^ v246[HIBYTE(v240) ^ 0xDELL];
  v69[4] = ((((v237 ^ 0xE1FEF2CD) >> 24) ^ 0x23) - 10) ^ v246[((v237 ^ 0xE1FEF2CD) >> 24) ^ 0x6BLL] ^ 0x30;
  v69[5] = ((v237 ^ 0xE1FEF2CD) >> 16) ^ 0xD8 ^ v244[((v237 ^ 0xE1FEF2CD) >> 16) ^ 0x16];
  v69[2] = v245[BYTE1(v236) ^ 0x91] ^ 0x60;
  v69[11] = v240 ^ v243[v240 ^ 0xDCLL] ^ 0x55;
  v247 = v255 > 0x17C8753F;
  if (v255 < 0x17C8752F)
  {
    v247 = 1;
  }

  return (*(a17 + 8 * ((27 * v247) ^ v40)))(211, 421197948, 34, 92, v245, 245, v231, v230, a9, a10, a11, v249, v250);
}

uint64_t sub_23E949CFC()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 != 0) * v1) ^ v0)))();
}

uint64_t sub_23E949D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, int a19, int a20, int a21, int *a22, int *a23, int *a24, int a25)
{
  v29 = 1875091903 * ((~(&a22 | 0xC42A9084) + (&a22 & 0xC42A9084)) ^ 0x1DBB9A7);
  a23 = v27;
  LODWORD(a24) = 1752281269 - v29;
  LODWORD(a22) = v28 - v29 + 992;
  (*(v26 + 8 * (v28 + 3731)))(&a22);
  a24 = v27;
  LODWORD(a23) = a11 + v28 + 2760;
  a22 = v25;
  (*(v26 + 8 * (v28 + 3750)))(&a22);
  v30 = 2048652491 * ((~(&a22 | 0x44C4FCFA) + (&a22 & 0x44C4FCFA)) ^ 0xC63E4533);
  a22 = v27;
  a23 = &a18;
  HIDWORD(a24) = v30 + 1375795241;
  a25 = v30 + v28 - 201;
  LODWORD(a24) = v30 + 1799958687;
  (*(v26 + 8 * (v28 ^ 0xE68)))(&a22);
  v31 = v25[1];
  *v25 += a18;
  v25[1] = v31 + a19;
  v32 = v25[3];
  v25[2] += a20;
  v25[3] = v32 + a21;
  return (*(v26 + 8 * ((a17 - 833955619 + ((v28 + 2533) ^ 0xB80u) < 0xFFFFFFC0) | v28)))((a17 - 64));
}

uint64_t sub_23E949F04@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, const char *a3@<X6>, int a4@<W8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q1>, int32x4_t a7@<Q2>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v103 = *(v32 + 8 * (a2 + a4 - 1547));
  v38 = *(v36 - 156);
  v37 = *(v36 - 152);
  v39 = *(v36 - 148);
  v40 = *(v36 - 144);
  v41 = *(v36 - 132);
  if (v41 == 2)
  {
    v55 = a2 + a1 - 268;
    LODWORD(a15) = *(v36 - 140);
    v104 = vld4q_s8(a3);
    v56 = veorq_s8(v104.val[1], a5);
    _Q21 = vmovl_high_u8(v56);
    _Q20 = vmovl_u8(*v56.i8);
    v59 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    v60 = vmovl_u8(*&veorq_s8(v104.val[2], a5)).u64[0];
    v104.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v104.val[3], a5)));
    v61 = vorrq_s8(vorrq_s8(vorrq_s8(v59, vshll_n_u16(v60, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v104.val[0], a5))), 0x18uLL)), v104.val[2]);
    v104.val[2] = veorq_s8(vandq_s8(v61, a6), (*&v104.val[2] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    *v31 = vaddq_s32(vsubq_s32(v61, vaddq_s32(v104.val[2], v104.val[2])), a7).u32[0];
    v62 = (1224 * (v55 ^ 0x520u)) ^ a12;
    v31[v33 + 332494378] = v35 ^ __ROR4__(v31[v33 + 332494370] ^ v31[v33 + 332494375] ^ v31[v33 + 332494362] ^ v31[v62 + 332494378], 31);
    v63 = *(v32 + 8 * ((3250 * (v34 == 332494315)) ^ v55));
    return v63(v62, v38, 332494379, a18, v63, v39, v37, v37, a8, a9, a10, a11, a12, a13, a14, a15, a16, v103, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
  }

  else if (v41 == 1)
  {
    v105 = vld4q_s8(a3);
    v42 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v105.val[0], a5)));
    v43 = veorq_s8(v105.val[2], a5);
    _Q25 = vmovl_u8(*v43.i8);
    _Q24 = vmovl_high_u8(v43);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v105.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v105.val[3], a5))), 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v105.val[1], a5)), 8uLL), v42));
    v52 = veorq_s8(vandq_s8(v105.val[2], a6), (*&v42 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    *v31 = vaddq_s32(vsubq_s32(v105.val[2], vaddq_s32(v52, v52)), a7).u32[0];
    v53 = *(&off_28512D4A0 + a2 + a1 - 1134) - 8;
    return (*(v32 + 8 * ((11 * (a18 + 1 == v34)) ^ (a2 + a1 + 583))))(v53, (a2 + a1 + 631765192) & 0xDA5807ED, 332494378, a18 + 1, 1641678900, v39, ((v53[a18 + v33] + 722096560) ^ 0x87F3E9BA) & (2 * ((v53[a18 + v33] + 722096560) & 0x1DA)) ^ (v53[a18 + v33] + 722096560) & 0x1DA, v37, a8, a9, a10, a11, a12, a13, a14, a15, a16, v103, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
  }

  else
  {
    v64 = (((v38 ^ 0x6EC4B877) - 1858386039) ^ ((v38 ^ 0xAB1C2AAA) + 1424217430) ^ ((v38 ^ 0x900F51FA) + 1878044166)) + (((v38 ^ 0x7AF0FF5F) - 2062614367) ^ ((v38 ^ 0xC660D765) + 966731931) ^ ((v38 ^ 0xE947EB1D) + 381162723)) - 278938749;
    v65 = (v64 ^ 0x396FCAE3) & (2 * (v64 & 0xBC4FCACB)) ^ v64 & 0xBC4FCACB;
    v66 = ((2 * (v64 ^ 0x79E6CA75)) ^ 0x8B52017C) & (v64 ^ 0x79E6CA75) ^ (2 * (v64 ^ 0x79E6CA75)) & 0xC5A900BE;
    v67 = v66 ^ 0x44A90082;
    v68 = (v66 ^ 0x8100003C) & (4 * v65) ^ v65;
    v69 = ((4 * v67) ^ 0x16A402F8) & v67 ^ (4 * v67) & 0xC5A900BC;
    v70 = v68 ^ 0xC5A900BE ^ (v69 ^ 0x4A000B0) & (16 * v68);
    v71 = (16 * (v69 ^ 0xC1090006)) & 0xC5A900B0 ^ 0x8529001E ^ ((16 * (v69 ^ 0xC1090006)) ^ 0x5A900BE0) & (v69 ^ 0xC1090006);
    v72 = (v70 << 8) & 0xC5A90000 ^ v70 ^ ((v70 << 8) ^ 0xA900BE00) & v71;
    v73 = v64 ^ (2 * ((v72 << 16) & 0x45A90000 ^ v72 ^ ((v72 << 16) ^ 0xBE0000) & ((v71 << 8) & 0xC5A90000 ^ 0x44A90000 ^ ((v71 << 8) ^ 0x29000000) & v71)));
    v74 = (((v37 ^ 0x65C35AA4) - 1707301540) ^ ((v37 ^ 0x78051932) - 2013600050) ^ ((v37 ^ 0x481180B1) - 1209106609)) + (((v37 ^ 0xFB815B4C) + 75408564) ^ ((v37 ^ 0xE27D581A) + 495101926) ^ ((v37 ^ 0x4C2BC071) - 1277935729)) - 991438762;
    v75 = (v74 ^ 0xE6870DF8) & (2 * (v74 & 0xE6C7ADF8)) ^ v74 & 0xE6C7ADF8;
    v76 = ((2 * (v74 ^ 0xA60507C8)) ^ 0x81855460) & (v74 ^ 0xA60507C8) ^ (2 * (v74 ^ 0xA60507C8)) & 0x40C2AA30;
    v77 = v76 ^ 0x4042AA10;
    v78 = (v76 ^ 0x40400030) & (4 * v75) ^ v75;
    v79 = ((4 * v77) ^ 0x30AA8C0) & v77 ^ (4 * v77) & 0x40C2AA30;
    v80 = (v79 ^ 0x2A810) & (16 * v78) ^ v78;
    v81 = ((16 * (v79 ^ 0x40C00230)) ^ 0xC2AA300) & (v79 ^ 0x40C00230) ^ (16 * (v79 ^ 0x40C00230)) & 0x40C2AA30;
    v82 = v80 ^ 0x40C2AA30 ^ (v81 ^ 0x2A230) & (v80 << 8);
    *(v36 - 156) = v73 ^ 0x619A0890;
    *(v36 - 152) = v74 ^ (2 * ((v82 << 16) & 0x40C20000 ^ v82 ^ ((v82 << 16) ^ 0x2A300000) & (((v81 ^ 0x40C00830) << 8) & 0x40C20000 ^ (((v81 ^ 0x40C00830) << 8) ^ 0x42AA0000) & (v81 ^ 0x40C00830) ^ 0x400000))) ^ 0x32953ABF;
    v83 = (((v39 ^ 0x7BA0A8DB) - 2074126555) ^ ((v39 ^ 0xCF8C2D4F) + 812896945) ^ ((v39 ^ 0xE1FB46B3) + 503626061)) + (((*(v36 - 148) ^ 0xF6EF04AB) + 152107861) ^ ((*(v36 - 148) ^ 0x6E84D5D9) - 1854199257) ^ ((*(v36 - 148) ^ 0xCDBC1255) + 843312555)) - 389198066;
    v84 = (v83 ^ 0xD2C2B701) & (2 * (v83 & 0xC2E23740)) ^ v83 & 0xC2E23740;
    v85 = ((2 * (v83 ^ 0xD6069901)) ^ 0x29C95C82) & (v83 ^ 0xD6069901) ^ (2 * (v83 ^ 0xD6069901)) & 0x14E4AE40;
    v86 = v85 ^ 0x1424A241;
    v87 = (v85 ^ 0x800C00) & (4 * v84) ^ v84;
    v88 = ((4 * v86) ^ 0x5392B904) & v86 ^ (4 * v86) & 0x14E4AE40;
    v89 = v87 ^ 0x14E4AE41 ^ (v88 ^ 0x1080A800) & (16 * v87);
    v90 = (16 * (v88 ^ 0x4640641)) & 0x14E4AE40 ^ 0x10A40A41 ^ ((16 * (v88 ^ 0x4640641)) ^ 0x4E4AE410) & (v88 ^ 0x4640641);
    v91 = (v89 << 8) & 0x14E4AE00 ^ v89 ^ ((v89 << 8) ^ 0xE4AE4100) & v90;
    v92 = (v91 << 16) ^ 0x2E410000;
    v93 = v83 ^ (2 * ((v91 << 16) & 0x14E40000 ^ v91 ^ v92 & ((v90 << 8) & 0x14E40000 ^ 0x10400000 ^ ((v90 << 8) ^ 0x64AE0000) & v90))) ^ 0xBF34A8E5;
    v94 = (((v40 ^ 0xF5C39E7) - 257702375) ^ ((v40 ^ 0x7E10D38F) - 2115031951) ^ ((v40 ^ 0x249B294F) - 614148431)) + (((*(v36 - 144) ^ 0xB03F99B5) + 1338009163) ^ ((*(v36 - 144) ^ 0x940490F9) + 1811640071) ^ ((*(v36 - 144) ^ 0x71ECCA6B) - 1911343723)) - 914703230;
    v95 = (v94 ^ 0xE922C9C8) & (2 * (v94 & 0xE234C9CC)) ^ v94 & 0xE234C9CC;
    v96 = ((2 * (v94 ^ 0xED62D8C8)) ^ 0x1EAC2208) & (v94 ^ 0xED62D8C8) ^ (2 * (v94 ^ 0xED62D8C8)) & 0xF561104;
    v97 = v96 ^ 0x1521104;
    v98 = (v96 ^ 0x8040000) & (4 * v95) ^ v95;
    v99 = ((4 * v97) ^ 0x3D584410) & v97 ^ (4 * v97) & 0xF561104;
    v100 = v98 ^ 0xF561104 ^ (v99 ^ 0xD500000) & (16 * v98);
    v101 = (16 * (v99 ^ 0x2061104)) & 0xF561100 ^ 0xA160104 ^ ((16 * (v99 ^ 0x2061104)) ^ 0xF5611040) & (v99 ^ 0x2061104);
    v102 = (v100 << 8) & 0xF561100 ^ v100 ^ ((v100 << 8) ^ 0x56110400) & v101;
    *(v36 - 148) = v93;
    *(v36 - 144) = v94 ^ (2 * ((v102 << 16) & 0xF560000 ^ v102 ^ ((v102 << 16) ^ 0x11040000) & ((v101 << 8) & 0xF560000 ^ 0x9460000 ^ ((v101 << 8) ^ 0x56110000) & v101))) ^ 0xA76728E3;
    return v103(v92, 1086455808, a1, a2, 172592, v39, a3, v37, a8, a9);
  }
}

uint64_t sub_23E94AE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, char a37)
{
  v40 = (&a37 + v37);
  v41.i64[0] = 0x3636363636363636;
  v41.i64[1] = 0x3636363636363636;
  v42 = veorq_s8(*(&a37 + v37 + 16), v41);
  *v40 = veorq_s8(*(&a37 + v37), v41);
  v40[1] = v42;
  v43 = a5 + v37;
  v41.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v41.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  v44 = veorq_s8(*(a5 + v37 + 116), v41);
  *(v43 + 100) = veorq_s8(*(a5 + v37 + 100), v41);
  *(v43 + 116) = v44;
  return (*(v39 + 8 * ((620 * (v37 + 32 == (v38 ^ 0xF8Du) + 60)) ^ (v38 - 1732))))();
}

uint64_t sub_23E94B2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26, int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  *(v43 - 112) = **(&off_28512D4A0 + (v41 ^ 0x68E3BA88)) + a26;
  *(v43 - 144) = a27 ^ a26;
  *(v43 - 140) = a15;
  *(v43 - 120) = a25;
  *(v43 - 116) = a27 - a26 - 47;
  *(v43 - 136) = (v41 + v42) ^ a26;
  *(v43 - 128) = a26;
  v44 = (*(v40 + 8 * (v41 ^ 0x68E3AAEA)))(v43 - 144);
  return (*(a40 + 8 * *(v43 - 132)))(v44);
}

uint64_t sub_23E94B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v53 = *(v49 + 8);
  v54 = *(v49 + 24);
  *(v51 - 156) = (v48 - 1083473185) & 0x409478CF;
  *(v51 - 112) = veorq_s8(*v53, xmmword_23EAA1660);
  *(v51 - 168) = v50;
  if (v50)
  {
    v55 = v54 == 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = v55;
  v57 = *(v52 + 8 * ((58 * v56) ^ v48));
  *(v51 - 160) = -42900;
  return v57(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_23E94B338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = ((((v18 - 144) | 0x5E742D1) - ((v18 - 144) & 0x5E742D1)) ^ 0x300B07B) * v17;
  *(v18 - 136) = (v14 + 124) ^ v19;
  *(v18 - 132) = ((2 * (v15 - 451825424)) & 0xDEE7BA1C) - v19 + 2143089658 + ((v15 - 451825424) ^ 0xEF73DE1A ^ ((v14 - 2496) | 0x214));
  *(v18 - 144) = a13;
  v20 = (*(v13 + 8 * (v14 ^ 0x1AC4)))(v18 - 144);
  return (*(v13 + 8 * ((475 * (*(v18 - 128) == (((v14 - 179) | 0xE2) ^ (v16 - 2449)))) ^ v14)))(v20);
}

uint64_t sub_23E94B44C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(void))
{
  v19 = (((v15[18] ^ 0xC520646E) + 987732882) ^ ((v15[18] ^ 0xCDD1B9C0) + 841893440) ^ ((v15[18] ^ 0x5D261E89) - 1562779273)) + (((v17 ^ 0xC588D742) + 980887742) ^ ((v17 ^ 0x9C2F2CB2) + 1674629966) ^ ((v17 ^ 0xC7038D7) - 208681175)) - 205984778;
  v20 = (v19 ^ 0x37F41A5D) & (2 * (v19 & 0xB7F69A58)) ^ v19 & 0xB7F69A58;
  v21 = ((2 * (v19 ^ 0x32782E5D)) ^ 0xB1D680A) & (v19 ^ 0x32782E5D) ^ (2 * (v19 ^ 0x32782E5D)) & 0x858EB404;
  v22 = v21 ^ 0x84829405;
  v23 = (v21 ^ 0x10C2000) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0x163AD014) & v22 ^ (4 * v22) & 0x858EB404;
  v25 = (v24 ^ 0x40A9000) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x81842401)) ^ 0x58EB4050) & (v24 ^ 0x81842401) ^ (16 * (v24 ^ 0x81842401)) & 0x858EB400;
  v27 = v25 ^ 0x858EB405 ^ (v26 ^ 0x8A0000) & (v25 << 8);
  v28 = v19 ^ (2 * ((v27 << 16) & 0x58E0000 ^ v27 ^ ((v27 << 16) ^ 0x34050000) & (((v26 ^ 0x8504B405) << 8) & 0x58E0000 ^ 0x10A0000 ^ (((v26 ^ 0x8504B405) << 8) ^ 0xEB40000) & (v26 ^ 0x8504B405))));
  v29 = (((v15[19] ^ 0xD100DFC4) + 788471868) ^ ((v15[19] ^ 0x2F4D8CA) - 49600714) ^ ((v15[19] ^ 0x8623C429) + 2044476375)) + (((v18 ^ 0x2C09F7A7) - 738850727) ^ ((v18 ^ 0x6ABEA77D) - 1790879613) ^ ((v18 ^ 0x136093FD) - 325096445)) - 1284333860;
  v15[18] = v28 ^ 0xE1343175;
  v15[19] = v29 ^ ((v29 ^ 0xE9F3FABC) + 298786254) ^ ((v29 ^ 0xCD7E49D7) + 893562535) ^ ((v29 ^ 0x8CB5541A) + 1955181420) ^ ((v29 ^ 0xAFFBFFFF) + 1472665743) ^ 0x5214DBA9;
  v30 = (((a2 ^ 0xA4A00B09) + 1533015287) ^ ((a2 ^ 0x320D737F) - 839742335) ^ ((a2 ^ 0xC37ABB51) + 1015366831)) + (((v15[20] ^ 0xC86D15B1) + 932375119) ^ ((v15[20] ^ 0xEE5FD030) + 295710672) ^ ((v15[20] ^ 0x73E506A6) - 1944389286)) + 498822568;
  v31 = (((v16 ^ 0x7A20641D) - 2048943133) ^ ((v16 ^ 0xFEB150BA) + 21933894) ^ ((v16 ^ 0xD146F780) + 783878272)) + (((v15[21] ^ 0xCBA024A5) + 878697307) ^ ((v15[21] ^ 0x649181F8) - 1687257592) ^ ((v15[21] ^ 0xFAE6667A) + 85563782)) - 1119182922;
  v32 = (v31 ^ 0xCE42C659) & (2 * (v31 & 0xEE64E698)) ^ v31 & 0xEE64E698;
  v33 = ((2 * (v31 ^ 0x8A8BCB59)) ^ 0xC9DE5B82) & (v31 ^ 0x8A8BCB59) ^ (2 * (v31 ^ 0x8A8BCB59)) & 0x64EF2DC0;
  v34 = v33 ^ 0x24212441;
  v35 = (v33 ^ 0x40860880) & (4 * v32) ^ v32;
  v36 = ((4 * v34) ^ 0x93BCB704) & v34 ^ (4 * v34) & 0x64EF2DC0;
  v37 = (v36 ^ 0xAC2500) & (16 * v35) ^ v35;
  v38 = ((16 * (v36 ^ 0x644308C1)) ^ 0x4EF2DC10) & (v36 ^ 0x644308C1) ^ (16 * (v36 ^ 0x644308C1)) & 0x64EF2DC0;
  v39 = v37 ^ 0x64EF2DC1 ^ (v38 ^ 0x44E20C00) & (v37 << 8);
  v15[20] = v30 ^ ((v30 ^ 0x19E090E4) - 1810593726) ^ ((v30 ^ 0x32311544) - 1077604894) ^ ((v30 ^ 0xA62C9975) + 735609297) ^ ((v30 ^ 0xFFF6FB8F) + 1912791851) ^ 0x27DC247D;
  v15[21] = v31 ^ (2 * ((v39 << 16) & 0x64EF0000 ^ v39 ^ ((v39 << 16) ^ 0x2DC10000) & (((v38 ^ 0x200D21C1) << 8) & 0x64EF0000 ^ 0xC20000 ^ (((v38 ^ 0x200D21C1) << 8) ^ 0x6F2D0000) & (v38 ^ 0x200D21C1)))) ^ 0x3BEF7E3D;
  return a15();
}

uint64_t sub_23E94B460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, _BYTE *a49, uint64_t a50, uint64_t a51)
{
  *a49 = (v54 + v52 - 126 + (~(2 * v54) | 0xB1) - 93) ^ 0xA7;
  v58 = 2048652491 * (((v53 | 0x7F9A6E79) + (~v53 | 0x80659186)) ^ 0x29F284E);
  *(v51 + 8) = v55;
  *(v57 - 160) = v52 - v58 - 1950;
  *(v57 - 176) = 339409620 - v58;
  *(v51 + 24) = a49;
  (*(v56 + 8 * (v52 + 820)))(v57 - 176);
  *(v57 - 160) = a50 + 16 * v54;
  *(v57 - 176) = a51;
  *(v57 - 168) = v52 + 1358806181 * ((-1058772269 - (v53 | 0xC0E46AD3) + (v53 | 0x3F1B952C)) ^ 0x827813C1) - 2747;
  v59 = (*(v56 + 8 * (v52 ^ 0x366)))(v57 - 176);
  return (*(v56 + 8 * (v52 ^ ((2 * (v54 == 8)) | (4 * (v54 == 8))))))(v59);
}

uint64_t sub_23E94B594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, _BYTE *a49, _BYTE *a50, _BYTE *a51, int a52, uint64_t a53)
{
  v68 = a6 + 1;
  v69 = (a8 + 128);
  v70 = v53 + 16;
  v71 = *(*(v69 - 6) + v57);
  *a4 = v71;
  v72 = *(*(v69 - 2) + v59);
  a4[4] = v72;
  v73 = *(v69[2] + a2);
  a4[8] = v73;
  v74 = *(v69[6] + v60);
  a4[12] = v74;
  v75 = *(*(v69 - 1) + a1);
  a4[1] = v75;
  v76 = *(v69[3] + v58);
  a4[5] = v76;
  v77 = *(v69[7] + v65);
  a4[9] = v77;
  v78 = *(*(v69 - 5) + v63);
  a4[13] = v78;
  v79 = *(v69[4] + a5);
  a4[2] = v79;
  v80 = *(*(v69 - 4) + v62);
  a4[10] = v80;
  v81 = *(v69[8] + a3);
  a4[6] = v81;
  v82 = *(*v69 + v67);
  a4[14] = v82;
  v83 = *(v69[5] + v55);
  a4[15] = v83;
  v84 = *(v69[1] + v64);
  a4[11] = v84;
  v85 = *(*(v69 - 3) + v61);
  a4[7] = v85;
  v86 = *(v69[9] + v54);
  a4[3] = v86;
  v87 = (a53 + ((v68 % a7) << 7));
  v88 = *(v87[147] + 4 * v71);
  v89 = v87 + 147;
  v90 = *(v87[148] + 4 * v75) ^ v88 ^ *(v87[149] + 4 * v79) ^ *(v87[150] + 4 * v86);
  a4[3] = HIBYTE(v90);
  a4[2] = BYTE2(v90);
  a4[1] = v90 >> v56;
  *a4 = v90;
  v91 = *(v89[4 * a48 + 1] + 4 * v76) ^ *(v89[4 * a48] + 4 * v72) ^ *(v89[4 * a48 + 2] + 4 * v81) ^ *(v89[4 * a48 + 3] + 4 * v85);
  a4[7] = HIBYTE(v91);
  a4[6] = BYTE2(v91);
  a4[5] = BYTE1(v91);
  *a51 = v91;
  LODWORD(v80) = *(v89[4 * a47 + 1] + 4 * v77) ^ *(v89[4 * a47] + 4 * v73) ^ *(v89[4 * a47 + 2] + 4 * v80) ^ *(v89[4 * a47 + 3] + 4 * v84);
  a4[11] = BYTE3(v80);
  a4[10] = BYTE2(v80);
  a4[9] = BYTE1(v80);
  *a50 = v80;
  LODWORD(v82) = *(v89[4 * a46 + 1] + 4 * v78) ^ *(v89[4 * a46] + 4 * v74) ^ *(v89[4 * a46 + 2] + 4 * v82) ^ *(v89[4 * a46 + 3] + 4 * v83);
  a4[15] = BYTE3(v82);
  a4[14] = BYTE2(v82);
  a4[13] = BYTE1(v82);
  *a49 = v82;
  *a4 = *(v70 - 7) ^ v90;
  a4[1] = *(v70 - 6) ^ (v90 >> v56);
  a4[2] = *(v70 - 5) ^ BYTE2(v90);
  a4[3] = *(v70 - 4) ^ HIBYTE(v90);
  a4[4] = *(v70 - 3) ^ v91;
  v92 = (*(v70 - 2) ^ BYTE1(v91));
  a4[5] = *(v70 - 2) ^ BYTE1(v91);
  a4[6] = *(v70 - 1) ^ BYTE2(v91);
  a4[7] = *v70 ^ HIBYTE(v91);
  LOBYTE(v83) = *(v70 + 1) ^ v80;
  a4[8] = v83;
  a4[9] = *(v70 + 2) ^ BYTE1(v80);
  a4[10] = *(v70 + 3) ^ BYTE2(v80);
  a4[11] = *(v70 + 4) ^ BYTE3(v80);
  *(a4 + 6) = *(v70 + 5) ^ v82;
  v93 = (*(v70 + 7) ^ BYTE2(v82));
  a4[14] = *(v70 + 7) ^ BYTE2(v82);
  a4[15] = *(v70 + 8) ^ BYTE3(v82);
  return (*(v66 + 8 * ((37 * (v68 == 8)) | a52)))(v92, v83, v93);
}

uint64_t sub_23E94B5E8(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

void sub_23E94B6C0(int a1@<W8>, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v8 = 956911519 * ((667995493 - (&a3 | 0x27D0CD65) + (&a3 | 0xD82F329A)) ^ 0xA7793E24);
  a3 = v7;
  a4 = v6 ^ ((v6 ^ 0x8842585D) + 1905229736) ^ ((v6 ^ 0xB849440B) + 1099195378) ^ ((v6 ^ 0x29C63BFE) - 804578299) ^ v8 ^ ((v6 ^ 0x1FFFFFAD) + 4 * (a1 ^ 0xEA9) - 432879028) ^ 0x2BBBA55C;
  a5 = (a1 - 874) ^ v8;
  (*(v5 + 8 * (a1 ^ 0x1D43)))(&a3);
  JUMPOUT(0x23E94B7B8);
}

uint64_t sub_23E94BA60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 + (v3 + 1296) - 2322;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((3108 * (v5 == 0)) ^ (v3 + 925))))();
}

uint64_t sub_23E94BB54@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (v6 - 1341);
  **a1 = v5 + v4 + v7 - 275;
  return (*(v3 + 8 * ((3495 * (*(a2 + 24) == v2)) ^ v7)))();
}

uint64_t sub_23E94BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15.i64[0] = 0xFAFAFAFAFAFAFAFALL;
  v15.i64[1] = 0xFAFAFAFAFAFAFAFALL;
  *(v13 - 112) = veorq_s8(vaddq_s8(**(v11 + 16), v15), xmmword_23EAA1670);
  return (*(v14 + 8 * (v10 | (4 * (v12 != 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v11);
}

uint64_t sub_23E94BF1C@<X0>(void *a1@<X8>)
{
  v5 = v2[1];
  *a1 = *v2;
  a1[1] = v5;
  return (*(v3 + 8 * ((1239 * (((v1 - 569) ^ 0x2BCLL) == (v4 & 0x70))) ^ (v1 + 1319))))();
}

uint64_t sub_23E94BFA4@<X0>(int a1@<W4>, unint64_t a2@<X8>)
{
  v8 = (v2 - 1) & 0xF;
  v9 = -v6 - v2;
  v10 = v9 + v3 + v8 + ((a1 + 876) | 0x6DAu) - 3833;
  v14 = a2 > 0xF;
  v11 = v9 + 1;
  v12 = v9 + 1 + v4 + v8;
  v13 = v11 + v5 + v8;
  v14 = v14 && v13 > 0xF;
  v17 = v14 && v12 >= ((a1 + 2809) ^ 0xFBDuLL) && v10 > 0xF;
  return (*(v7 + 8 * ((15 * v17) ^ a1)))();
}

uint64_t sub_23E94C024@<X0>(unsigned int a1@<W0>, int a2@<W8>)
{
  v9 = a1 < v7;
  *(v4 + v5) = *(v3 + v6) + ((a2 + 77) ^ 0xBD) - ((2 * *(v3 + v6)) & 0xA4);
  v10 = v6 + 1;
  if (v9 == v10 > v8 + 2927)
  {
    v9 = v10 + v7 < a1;
  }

  return (*(v2 + 8 * ((15 * v9) ^ a2)))();
}

uint64_t sub_23E94C158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *v22 = 0x9908B0DF00000000;
  v24 = **(v21 + 8 * (v19 ^ 0x5CF));
  *(v23 - 128) = a19 + v19 + 1358307196 + 154;
  *(v23 - 144) = (v19 + 1324647622) ^ a19;
  *(v23 - 152) = (v19 + 1358307196) ^ a19;
  *(v23 - 148) = -a19;
  v22[3] = v24 + a19;
  v22[5] = a19;
  *(v23 - 124) = v19 + 1358307196 - a19 + 164;
  v25 = (*(v20 + 8 * (v19 + 2667)))(v23 - 152);
  return (*(v20 + 8 * *(v23 - 140)))(v25);
}

uint64_t sub_23E94C390@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = (v5 ^ (a2 + 3347) ^ 0xFFFFFFFFFFFFFCABLL) + v4;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * ((1148 * (v7 == 0)) ^ (v3 + v5 + 2581))))();
}

uint64_t sub_23E94C3D0@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v2 + v7) - (v4 & (2 * *(v2 + v7))) - 46;
  return (*(v1 + 8 * (((v7 == 0) * v5) ^ v6)))(0);
}

uint64_t sub_23E94C404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = 1710126949 * (((&a14 | 0x6A579CF7) - (&a14 & 0x6A579CF7)) ^ 0x6CB06E5D);
  a14 = v22 + v21 + 744418518;
  a18 = v22 + 377111865;
  a19 = -358772267 - v22;
  a16 = a10;
  a17 = &a11;
  v23 = (*(v20 + 8 * (v21 + 2221)))(&a14);
  return (*(v20 + 8 * ((4036 * (a15 == v19 + ((v21 - 902) | 0x2E0) - 1760)) ^ v21)))(v23);
}

uint64_t sub_23E94C564@<X0>(int a1@<W2>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned int a31)
{
  v35 = *(&a19 + a2 + 72);
  v36 = (((v32 - a1) ^ 0xE7E49096) & (2 * a2)) + (a2 ^ 0x4E3ED7DF) + v31;
  *(v33 + v36) = v35 ^ 0xF5;
  *(v33 + v36 + 1) = (BYTE1(v35) ^ 0xC3) + (~(2 * (BYTE1(v35) ^ 0xC3)) | 0x5B) - 45;
  *(v33 + v36 + 2) = (BYTE2(v35) ^ 0xD7) - ((2 * (BYTE2(v35) ^ 0xD7)) & 0xA4) - 46;
  *(v33 + v36 + 3) = (HIBYTE(v35) ^ 0x55) - 2 * ((HIBYTE(v35) ^ 0x55) & 0x5A ^ HIBYTE(v35) & 8) - 46;
  return (*(v34 + 8 * ((3334 * (a2 + 4 < a31)) ^ v32)))();
}

uint64_t sub_23E94C678@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void))
{
  *a2 = *(STACK[0xA78] + v30);
  a2[4] = *(STACK[0xAB8] + a4);
  a2[8] = *(STACK[0xAF8] + v31);
  a2[12] = *(STACK[0xB38] + v25);
  a2[1] = *(STACK[0xAC8] + v28);
  a2[5] = *(STACK[0xB08] + v23);
  a2[9] = *(STACK[0xB48] + v32);
  a2[13] = *(STACK[0xA88] + a1);
  a2[2] = *(STACK[0xB18] + v29);
  a2[10] = *(STACK[0xA98] + v22);
  a2[6] = *(STACK[0xB58] + v24);
  a2[14] = *(STACK[0xAD8] + v33);
  a2[15] = *(STACK[0xB28] + v27);
  a2[11] = *(STACK[0xAE8] + v26);
  a2[7] = *(STACK[0xAA8] + v21);
  a2[3] = *(STACK[0xB68] + a3);
  return a21();
}

uint64_t sub_23E94C748()
{
  v4 = v3 ^ 0x166;
  v12 = (v3 + 942) ^ (1046730637 * (((&v10 | 0x29EF4975) + (~&v10 | 0xD610B68A)) ^ 0x73ECF498));
  v10 = v8;
  v11 = &v9;
  (*(v1 + 8 * (v3 + 2248)))(&v10);
  v11 = v8;
  LODWORD(v10) = v3 + 1317436891 * (((&v10 | 0x34B1EE65) - (&v10 & 0x34B1EE65)) ^ 0xC1903810) + 1876;
  (*(v1 + 8 * (v3 ^ 0x178A)))(&v10);
  if (HIDWORD(v10) == v0 + (v3 ^ 0x166) - 1760)
  {
    v5 = v9;
  }

  else
  {
    v5 = HIDWORD(v10);
  }

  v11 = v8;
  HIDWORD(v10) = v3 + ((-523257543 - (&v10 | 0xE0CFB939) + (&v10 | 0x1F3046C6)) ^ 0x623500F0) * v2 + 335;
  (*(v1 + 8 * (v3 ^ 0x82F)))(&v10);
  HIDWORD(v10) = v4 + ((2 * ((&v10 ^ 0x3DDB25DE) & 0x21DF1D2E) - (&v10 ^ 0x3DDB25DE) + 1579213520) ^ 0x1EFE8138) * v2 + 501;
  v11 = v7;
  (*(v1 + 8 * (v4 + 2249)))(&v10);
  return v5 ^ v0;
}

uint64_t sub_23E94CB30@<X0>(char a1@<W8>)
{
  v5 = v1 - 1;
  *(v3 + v5) = (a1 + (v2 ^ 0xAC) - 58) * (a1 ^ 0xBA);
  return (*(v4 + 8 * ((13 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_23E94CB80@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int32x4_t a12, int32x4_t a13, int32x4_t a14, int32x4_t a15)
{
  LODWORD(v88) = v17;
  HIDWORD(v88) = a3 + a5 - 1652533597;
  v18 = vdupq_n_s32(0x196E72F9u);
  v19 = vdupq_n_s32(0x996E72F8);
  v20.i64[0] = 0xD2D2D2D2D2D2D2D2;
  v20.i64[1] = 0xD2D2D2D2D2D2D2D2;
  HIDWORD(a5) = v17 ^ 0x84C;
  v21 = *(v15 + 8 * a3);
  v22 = *(v16 + 72);
  v23 = *(v16 + 76);
  v24 = *(v16 + 80);
  v25 = *(v16 + 84);
  v26 = *(v16 + 96);
  if (v26 == 2)
  {
    v90 = vld4q_s8(v16);
    v72 = veorq_s8(v90.val[0], v20);
    v73 = vmovl_high_u8(v72);
    v74 = vmovl_u8(*v72.i8);
    v75 = veorq_s8(v90.val[1], v20);
    _Q22 = vmovl_high_u8(v75);
    _Q21 = vmovl_u8(*v75.i8);
    v78 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v79 = vshll_n_s16(*_Q22.i8, 0x10uLL);
    __asm { SHLL2           V22.4S, V22.8H, #0x10 }

    v80 = veorq_s8(v90.val[2], v20);
    v81 = vmovl_u8(*v80.i8);
    v82 = vmovl_high_u8(v80);
    v90.val[0] = veorq_s8(v90.val[3], v20);
    v90.val[1] = vmovl_u8(*v90.val[0].i8);
    v90.val[2] = vmovl_u16(*v90.val[1].i8);
    v90.val[1] = vmovl_high_u16(v90.val[1]);
    v90.val[0] = vmovl_high_u8(v90.val[0]);
    v90.val[3] = vmovl_u16(*v90.val[0].i8);
    v90.val[0] = vmovl_high_u16(v90.val[0]);
    v83 = vorrq_s8(vorrq_s8(vorrq_s8(_Q22, vshll_high_n_u16(v82, 8uLL)), vshlq_n_s32(vmovl_high_u16(v73), 0x18uLL)), v90.val[0]);
    v84 = vorrq_s8(vorrq_s8(vorrq_s8(v79, vshll_n_u16(*v82.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v73.i8), 0x18uLL)), v90.val[3]);
    v85 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v81, 8uLL)), vshlq_n_s32(vmovl_high_u16(v74), 0x18uLL)), v90.val[1]);
    v86 = vorrq_s8(vorrq_s8(vorrq_s8(v78, vshll_n_u16(*v81.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v74.i8), 0x18uLL)), v90.val[2]);
    v90.val[0] = veorq_s8(vandq_s8(v83, v18), (*v90.val & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    v90.val[3] = veorq_s8(vandq_s8(v84, v18), (*&v90.val[3] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    v90.val[1] = veorq_s8(vandq_s8(v85, v18), (*&v90.val[1] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    v90.val[2] = veorq_s8(vandq_s8(v86, v18), (*&v90.val[2] & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    a12 = vaddq_s32(vsubq_s32(v86, vaddq_s32(v90.val[2], v90.val[2])), v19);
    a13 = vaddq_s32(vsubq_s32(v85, vaddq_s32(v90.val[1], v90.val[1])), v19);
    a14 = vaddq_s32(vsubq_s32(v84, vaddq_s32(v90.val[3], v90.val[3])), v19);
    a15 = vaddq_s32(vsubq_s32(v83, vaddq_s32(v90.val[0], v90.val[0])), v19);
    return sub_23E94D2B4(570928999, v24, a1, 570928999);
  }

  else
  {
    if (v26 != 1)
    {
      JUMPOUT(0x23E94D340);
    }

    v89 = vld4q_s8(v16);
    v27 = veorq_s8(v89.val[0], v20);
    v28 = vmovl_high_u8(v27);
    v29 = vmovl_high_u16(v28);
    v30 = vmovl_u16(*v28.i8);
    v31 = vmovl_u8(*v27.i8);
    v32 = vmovl_high_u16(v31);
    v33 = vmovl_u16(*v31.i8);
    v34 = veorq_s8(v89.val[1], v20);
    v35 = vmovl_u8(*v34.i8);
    v36 = vmovl_high_u8(v34);
    v37 = veorq_s8(v89.val[2], v20);
    _Q26 = vmovl_u8(*v37.i8);
    _Q25 = vmovl_high_u8(v37);
    __asm
    {
      SHLL2           V27.4S, V25.8H, #0x10
      SHLL2           V28.4S, V26.8H, #0x10
    }

    v89.val[0] = veorq_s8(v89.val[3], v20);
    v89.val[1] = vmovl_u8(*v89.val[0].i8);
    v89.val[2] = vmovl_u16(*v89.val[1].i8);
    v89.val[0] = vmovl_high_u8(v89.val[0]);
    v89.val[3] = vmovl_u16(*v89.val[0].i8);
    v89.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v89.val[0]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v36, 8uLL), v29));
    v89.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v89.val[3], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v36.i8, 8uLL), v30));
    v89.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v89.val[1]), 0x18uLL), _Q28), vorrq_s8(vshll_high_n_u16(v35, 8uLL), v32));
    v89.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v89.val[2], 0x18uLL), vshll_n_s16(*_Q26.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v35.i8, 8uLL), v33));
    v46 = veorq_s8(vandq_s8(v89.val[0], v18), (*&v29 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    v47 = veorq_s8(vandq_s8(v89.val[3], v18), (*&v30 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    v48 = veorq_s8(vandq_s8(v89.val[1], v18), (*&v32 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    v49 = veorq_s8(vandq_s8(v89.val[2], v18), (*&v33 & __PAIR128__(0xFFFFFF01FFFFFF01, 0xFFFFFF01FFFFFF01)));
    a12 = vaddq_s32(vsubq_s32(v89.val[2], vaddq_s32(v49, v49)), v19);
    a13 = vaddq_s32(vsubq_s32(v89.val[1], vaddq_s32(v48, v48)), v19);
    a14 = vaddq_s32(vsubq_s32(v89.val[3], vaddq_s32(v47, v47)), v19);
    a15 = vaddq_s32(vsubq_s32(v89.val[0], vaddq_s32(v46, v46)), v19);
    v50 = 21 * ((3 * HIDWORD(a5)) ^ 0x969u) - 1907052417;
    v51 = (v23 & 0xDB837B78 ^ 0x8A003858 ^ (v23 ^ 0xAA283CD8) & (v25 ^ v50) | v24 & 0x67A4D3CD ^ 0x4584C305 ^ (v23 ^ 0x327310EA) & (v24 ^ 0x55D7C327)) + (v22 ^ 0x55D7C327) + **(&off_28512D4A0 + ((3 * HIDWORD(a5)) ^ 0x849)) + (a12.i32[(*(*(&off_28512D4A0 + 3 * HIDWORD(a5) - 2049) - 8) - 55)] ^ 0x996E72F8);
    v52 = (v51 ^ 0xF675A5BD) & (2 * (v51 & 0xE67129BC)) ^ v51 & 0xE67129BC;
    v53 = ((2 * (v51 ^ 0x7655E5D5)) ^ 0x204998D2) & (v51 ^ 0x7655E5D5) ^ (2 * (v51 ^ 0x7655E5D5)) & 0x9024CC68;
    v54 = v53 ^ 0x90244429;
    v55 = (v53 ^ 0x208848) & (4 * v52) ^ v52;
    v56 = ((4 * v54) ^ 0x409331A4) & v54 ^ (4 * v54) & 0x9024CC68;
    v57 = v56 & (16 * v55) ^ v55;
    v58 = ((16 * (v56 ^ 0x9024CC49)) ^ 0x24CC690) & (v56 ^ 0x9024CC49) ^ (16 * (v56 ^ 0x9024CC49)) & 0x9024CC60;
    v59 = v57 ^ 0x9024CC69 ^ (v58 ^ 0x4C400) & (v57 << 8);
    v60 = (v59 << 16) & 0x10240000 ^ v59 ^ ((v59 << 16) ^ 0x4C690000) & (((v58 ^ 0x90200869) << 8) & 0x10240000 ^ 0x10200000 ^ (((v58 ^ 0x90200869) << 8) ^ 0x24CC0000) & (v58 ^ 0x90200869));
    v61 = *(*(&off_28512D4A0 + ((3 * HIDWORD(a5)) ^ 0x8C9)) - 8);
    v62 = (((v23 ^ 0xDF57A222) + 547904990) ^ ((v23 ^ 0x69D7D84D) - 1775753293) ^ ((v23 ^ 0xE357B948) + 480790200)) + 2129999125 + (((v51 ^ (2 * v60) ^ 0xC678B16E) << (((v61 - 65) ^ (v61 + 10) ^ (((v61 - 65) ^ 1) + 12) ^ (((v61 - 65) ^ 0xF3) + 26) ^ (((v61 - 65) ^ 7) + 14)) & 0x1F ^ 0x15)) | ((v51 ^ (2 * v60) ^ 0xC678B16E) >> (-106 - v61)));
    v63 = (v62 ^ 0x86D8AF93) & (2 * (v62 & 0xD6E28E12)) ^ v62 & 0xD6E28E12;
    v64 = ((2 * (v62 ^ 0xAAD8AFB7)) ^ 0xF874434A) & (v62 ^ 0xAAD8AFB7) ^ (2 * (v62 ^ 0xAAD8AFB7)) & 0x7C3A21A4;
    v65 = v64 ^ 0x40A20A5;
    v66 = (v64 ^ 0x78100000) & (4 * v63) ^ v63;
    v67 = ((4 * v65) ^ 0xF0E88694) & v65 ^ (4 * v65) & 0x7C3A21A4;
    v68 = (v67 ^ 0x70280080) & (16 * v66) ^ v66;
    v69 = ((16 * (v67 ^ 0xC122121)) ^ 0xC3A21A50) & (v67 ^ 0xC122121) ^ (16 * (v67 ^ 0xC122121)) & 0x7C3A21A0;
    v70 = v68 ^ 0x7C3A21A5 ^ (v69 ^ 0x40220000) & (v68 << 8);
    HIDWORD(a11) = v17 ^ 0xF51;
    return (*(v15 + 24 * HIDWORD(a5)))(570928999, v24, ((v70 << 16) ^ 0x21A50000) & (((v69 ^ 0x3C1821A5) << 8) & 0x7C3A0000 ^ 0x441A0000 ^ (((v69 ^ 0x3C1821A5) << 8) ^ 0x3A210000) & (v69 ^ 0x3C1821A5)), v50, 2574152440, 2418330728, 150, (v70 << 16) & 0x7C3A0000, a4, a5, a2, a7, a8, v88, v21, a11);
  }
}

uint64_t sub_23E94D988()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_23E94D9B0()
{
  v10.val[0].i64[0] = (v5 - v6 - 1) & 0xF;
  v10.val[0].i64[1] = (v5 - v6 + 14) & 0xF;
  v10.val[1].i64[0] = (v5 - v6 + 13) & 0xF;
  v10.val[1].i64[1] = (v5 - v6 + 12) & 0xF;
  v10.val[2].i64[0] = (v5 - v6 + 11) & 0xF;
  v10.val[2].i64[1] = (v5 - v6 + (v0 ^ 0xAE) + 112) & 0xF;
  v10.val[3].i64[0] = (v5 - v6 + 9) & 0xF;
  v10.val[3].i64[1] = (v5 - v6) & 0xF ^ 8;
  *(v7 + -8 - v6 + v5) = veor_s8(veor_s8(veor_s8(*(v2 + v10.val[0].i64[0] - 7), *(v1 + -8 - v6 + v5)), veor_s8(*(v10.val[0].i64[0] + v3 - 1), *(v10.val[0].i64[0] + v4 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v10, xmmword_23EAA16E0), 0x707070707070707)));
  return (*(v8 + 8 * (v0 ^ (2 * (8 - (v5 & 0x18) == -v6)))))(xmmword_23EAA16E0);
}

uint64_t sub_23E94DAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, char a49)
{
  if (a49 == 2)
  {
    v58 = &a36 + v51 + 1319579761;
    v59 = ((*v58 ^ 0xD2) << 24) | ((((a28 + 3) | 0xD8) ^ 0x2A ^ v58[1]) << 16) | ((v58[2] ^ 0xD2) << 8);
    *v53 = (v59 | v58[3] ^ 0xD2) + a6 - 2 * ((v59 | v58[3] ^ 0xD2) & 0x196E72F9 ^ (v58[3] ^ 0xD2) & 1);
    v60 = *(v49 + 8 * ((3339 * ((v51 + 1319579765) < 0x40)) ^ a28));
    return v60(v60, v52 + 16, 67633152, 4294901760, 2525903840, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    if (a49 != 1)
    {
      JUMPOUT(0x23E9B9398);
    }

    v55 = &a36 + v51 + 1319579761;
    v56 = (v54 - 40) ^ *v55;
    LODWORD(v55) = ((v55[2] ^ v50) << 16) | ((v55[3] ^ v50) << 24) | v56 | ((v55[1] ^ v50) << 8);
    *v53 = v55 + a6 - 2 * (v55 & 0x196E72F9 ^ v56 & 1);
    return (*(v49 + 8 * ((2604 * ((v51 + 1319579765) < 0x40)) ^ (a5 + 720))))(0x200000, 4294901760, 2430800856, 2430800848, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

unint64_t sub_23E94DAB8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6 ^ (a5 | (v127 << 32));
  v8 = a3 ^ 0x5B90C48A8FA892C1;
  v9 = ((a1 + 940) ^ 0x100000000000055CLL) & (a3 ^ 0x5B90C48A8FA892C1);
  if ((v9 & ~v5) != 0)
  {
    v9 = -v9;
  }

  v10 = (-v8 ^ (v8 - 2 * (v8 & 0x32D3B9CDE60502D6 ^ a3 & 0x10) + 0x32D3B9CDE60502C6) ^ 0x32D3B9CDE60502C6 ^ ((v5 ^ 0x3FFB2240FC196D65) - ((v9 + (v5 ^ 0x3FFB2240FC196D65)) ^ v8 & 0xEFFFFFFFFFFFFFFFLL))) + (v5 ^ 0x3FFB2240FC196D65);
  v11 = __ROR8__(__ROR8__(v7 & 0x3F2D038CFDCBD801 ^ v8 ^ a2 ^ 0xEE19F82FFDE4FDF2 ^ (v10 ^ 0xA8D6F822F40414D1) & (v7 ^ 0x7DAAF34624691A34), 22) ^ 0xCE918D1290DEC97CLL, 42);
  v12 = v7 ^ 0xFAD7F014BFDBAAE4;
  v13 = __ROR8__(v7 ^ 0xFAD7F014BFDBAAE4, 54);
  v14 = __ROR8__(v13 ^ 0x76145E652D2CD4CDLL, 10);
  v15 = a4 ^ v12;
  v16 = (v14 ^ 0x4BDF79BAFD06041ALL) & (a4 ^ v12 ^ 0xAC8F36BF45EA953ELL) ^ v14 & 0xC0CDADE01B28D112 ^ v10;
  v17 = (v11 ^ 0x51BC0BD359C5F270 ^ ((v11 ^ 0xAE43F42CA63A0D8FLL) + 1) ^ ((v16 ^ 0x27F19206DCF062CBLL) - (v11 ^ 0x51BC0BD359C5F270 ^ v16 ^ 0x27F19206DCF062CBLL))) + (v16 ^ 0x27F19206DCF062CBLL);
  v18 = v11 ^ 0x409ABAF12FC56258 ^ (v11 >> 7) ^ __ROR8__(v11 ^ 0x409ABAF12FC56258, 41) ^ ((v11 ^ 0x409ABAF12FC56258) << 57);
  v19 = v17 ^ v18 ^ 0xB90BBDD5C93D6AEALL ^ (v17 << 36) ^ (v17 >> 19) ^ (v17 >> 28) ^ (v17 << 45);
  v20 = (a4 ^ v12) & 0x555C919D32AE03FCLL ^ v12 ^ (a4 ^ v12 ^ 0x93BD64A0A13DBBD3) & (a2 ^ 0x937556D7EDF5B01DLL) ^ v16;
  v21 = v20 ^ 0x3416D65FDCA64C88 ^ (8 * (v20 ^ 0x3416D65FDCA64C88)) ^ (((v20 >> 61) ^ ((v20 ^ 0x3416D65FDCA64C88) >> 39) ^ 0x7BBCD36DB67D0152) & (((v20 ^ 0x3416D65FDCA64C88) << 25) ^ 0x7BFDFBEFFFFFFFFFLL) | ((v20 ^ 0x3416D65FDCA64C88) << 25) & 0x84432C9248000000);
  v22 = a3 & 0xCB0BA53B251E5D16 ^ v8 & (a2 ^ 0xF2DD9D8E05BA1108) ^ v15;
  v23 = (v8 ^ a2) & 0x3696311920AA19A1 ^ a2 ^ v22 ^ (v10 ^ 0x5E923548D69A2A8ELL) & (v8 ^ a2 ^ 0x39D638B520A44C1ELL);
  v24 = v23 ^ 0xC2689265DE97ED71 ^ (v23 >> 10) ^ ((((v23 ^ 0xC2689265DE97ED71) << 54) ^ ((v23 ^ 0xC2689265DE97ED71) << 47) ^ 0x688778895F34C3E6) & ((v23 >> 17) ^ 0xFFFFCCDE5AA1B425) | (v23 >> 17) & 0x776A0CB3C19);
  v25 = v24 ^ 0x2CA69D091BA47DE1 ^ v18 ^ 0xB90BBDD5C93D6AEALL;
  v26 = v19 & 0x548E501169ED2339 ^ v25 ^ (v19 ^ 0x3FB5F90F35CDDE61) & (v21 ^ 0x2F32837CDF90226ALL);
  v27 = ((((v26 ^ 0x9D60762FDAF0F468) << 57) ^ 0xCC943076F57A669BLL) & ((v26 >> 41) ^ 0xFFBF3FF7FD5EB6B8) | (v26 >> 41) & 0x59964) ^ 0x54943076F57A7EDFLL;
  v28 = (v27 - ((2 * v27) & 0x98000000000F3496) - 0x33CC78CEF07865B5) ^ (v26 >> 7);
  v29 = ((v28 ^ (v26 << 23) ^ 0x7ECA5D1F9465768ALL) - 2 * ((v28 ^ (v26 << 23) ^ 0x7ECA5D1F9465768ALL) & 0x5DD0F94B2B8694EDLL ^ v28 & 0x21) - 0x222F06B4D4796B34) ^ v26 ^ 0x9D60762FDAF0F468;
  v30 = v22 ^ 0x728541C498FB04F2 ^ ((v22 ^ 0x728541C498FB04F2) << 58) ^ ((v22 >> 1) ^ (v22 >> 6) ^ 0xE294D34AA7BCD858) & ((v22 << 63) | 0x7FFFFFFFFFFFFFFFLL);
  v31 = v21 ^ v30;
  v32 = v21 ^ v30 ^ 0xFB63F247ACADF6E9;
  v33 = v24 & 0xD4797AEDA864AE80 ^ v32 ^ (v24 ^ 0xDD1F879B7F52B440) & (v18 ^ 0xAD38C1C8AB6BE5F4);
  v34 = v25 & 0x1DA71A08E1A150B1 ^ v24 ^ 0x2CA69D091BA47DE1 ^ v33 ^ (v19 ^ 0xDDED1CF82B93712FLL) & (v25 ^ 0x31F31C62AEC4E83FLL);
  v35 = v33 ^ 0x9335ACB5488E7FE7 ^ (v33 >> 1) ^ ((v33 ^ 0x9335ACB5488E7FE7) << 58);
  v36 = v34 ^ 0x4020EF8F405A9384;
  v37 = v34 ^ 0x4020EF8F405A0000;
  if (v35 == 0xB83D8C2040A8F033)
  {
    v37 = -131072;
  }

  v38 = ((((v37 & v36) >> 17) + v36) ^ 0x528BC4C1572348F0) - 2 * (((v37 & v36) >> 17) & v36) + ((2 * (((v37 & v36) >> 17) + v36)) & 0xA5178982AE4691E0) - 0x528BC4C1572348F0;
  *&v39 = __ROR8__(v38 - (v38 ^ (v36 << 47)), 25);
  *(&v39 + 1) = v39 ^ (v36 << 22) ^ 0x21AB2DB5E3;
  *&v39 = v39 ^ 0x682DC10000000000;
  v40 = (((0xFFFF800000000000 * v36) ^ 0x43565B6BC6D05B82 ^ (v39 >> 39)) + v38) ^ __ROR8__(v36, 10);
  v41 = ((v35 ^ 0xB83D8C2040A8F033) + (~v33 << 63) - 2 * ((v35 ^ 0xB83D8C2040A8F033) & 0x33F9D47AF7677BFFLL ^ v35 & 8) - 0x4C062B8508988409) ^ (v33 >> 6) ^ 0xB331EB796F586822;
  v42 = v21 & 0xF136EFAA3F62E8FFLL ^ (v21 ^ 0x84432C924982FEACLL) & (v30 ^ 0xF8BA7B70AB698E18) ^ 0xCC82206E5BFE349ELL ^ v19;
  v43 = v21 ^ v32 & 0x87C3F68F38B4C9EELL ^ (v24 ^ 0xA5238EEBB8198251) & (v31 ^ 0x8DCFB848DD89984BLL) ^ 0xA6B15A28F9C21A8BLL ^ v42;
  v44 = ((v43 >> 61) | (v43 << 25)) ^ (8 * v43) ^ ((-(v43 >> 39) ^ (v43 - ((v43 >> 39) ^ v43)) ^ ((v43 >> 39) - ((v43 >> 38) & 0x3FFA868) + 0x3B5C00A08FFFD434) ^ 0x3B5C00A08FFFD434) + v43);
  v45 = v44 ^ (v41 - ((2 * v41) & 0x3B8F36102955541ELL) + 0x1DC79B0814AAAA0FLL);
  v46 = v29 & ~v40 ^ v45;
  *(&v39 + 1) = v46 ^ 0x1DC79B0814AAAA0FLL;
  *&v39 = v46 ^ 0x649271E459E21203;
  v47 = (v39 >> 1) ^ ((v46 ^ 0x649271E459E21203) >> 6) ^ (0x400000000000001 * (v46 ^ 0x649271E459E21203) - (((v46 ^ 0x649271E459E21203) << 59) & (2 * (v46 ^ 0x649271E459E21203))));
  v48 = v26 ^ v42 ^ 0x3F6D15E8D2674D43 ^ ((v26 ^ v42 ^ 0x5C04851417AC0954) >> 19) ^ ((v26 ^ v42 ^ 0x3F6D15E8D2674D43) << 36) ^ ((v26 ^ v42 ^ 0x5C04851417AC0954) >> 28) ^ ((v26 ^ v42 ^ 0x3F6D15E8D2674D43) << 45) ^ (v29 - ((2 * v29) & 0x4C972D830380392CLL) + 0x264B96C181C01C96);
  v49 = v48 ^ 0xCA98F409F75F5A2;
  v50 = v48 ^ 0xCA98F409F75F5A2 ^ v41 & ~v44;
  v51 = v44 ^ ((v40 & (v45 ^ 0xE23864F7EB5555F0)) - ((2 * (v40 & (v45 ^ 0xE23864F7EB5555F0))) & 0x3B8F36102955541ELL) + 0x1DC79B0814AAAA0FLL) ^ 0x2FBF6330EAE978B3 ^ v50;
  v52 = v51 ^ (8 * v51) ^ (v51 >> 39) ^ ((v51 >> 61) | (v51 << 25));
  v53 = v40 ^ v29;
  v54 = v48 & 0x34390D59504D1449 ^ v40 ^ v29 ^ (v48 ^ 0xF35670BF608A0A5DLL) & (v44 ^ 0x34390D59504D1449);
  v55 = v50 ^ 0x5E14C14055A38643 ^ v54;
  v56 = v54 ^ 0x16874B0110162B5DLL ^ ((v54 ^ 0x16874B0110162B5DLL) >> 7) ^ ((v54 ^ 0x16874B0110162B5DLL) >> 41) ^ ((v54 ^ 0x16874B0110162B5DLL) << 23) ^ ((v54 ^ 0x16874B0110162B5DLL) << 57);
  v57 = v55 ^ __ROR8__(v55, 28) ^ __ROR8__(v55, 19) ^ v56;
  v58 = v57 ^ v47 & ~v52;
  *&v39 = __ROR8__(v46 ^ 0x1DC79B0814AAAA0FLL ^ v40, 48);
  v59 = v49 & ~v53 ^ 0x1A0F3047ADD2FB74 ^ (((v39 ^ 0x9C2FFDE23042697FLL) >> (v53 & 0x10) >> (v53 & 0x10 ^ 0x10)) + ((v39 ^ 0x9C2FFDE23042697FLL) << 48));
  v60 = v59 ^ (v59 << 47) ^ (v59 >> (v20 & 0xA ^ 0xA) >> (v20 & 0xA)) ^ ((v59 >> 17) | (v59 << 54));
  v61 = v60 ^ v56;
  v62 = v60 ^ v56 ^ v52 & ~v57;
  v63 = v62 ^ v58 ^ 0x97F6A7E5F6E8F58ALL;
  v64 = v63 << 45;
  v65 = (v63 >> 19) & 0x100000;
  if ((v65 & (v62 ^ v58)) != 0)
  {
    v66 = -v65;
  }

  else
  {
    v66 = (v63 >> 19) & 0x100000;
  }

  v67 = v66 + v63;
  v68 = v67 ^ (v63 >> 28) | v64;
  v69 = v67 & v64;
  v70 = v62 ^ 0x70C7A8D3F3643DFDLL ^ ((v62 ^ 0x70C7A8D3F3643DFDLL) >> 7) ^ ((v62 ^ 0x70C7A8D3F3643DFDLL) << 23) ^ ((v62 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v62 ^ 0x70C7A8D3F3643DFDLL) << 57);
  v71 = (v63 >> 19) & 0xFFFFFFFFFFEFFFFFLL ^ (v63 << 36) ^ v69 ^ v70 ^ v68;
  v72 = v52 ^ v47;
  v73 = v56 & ~v60 ^ v72;
  v74 = v52 ^ 0x425764BB5877DA25 ^ v60 & ~v72 ^ v58;
  v75 = (8 * v74) ^ (v74 << 25) ^ ((v74 ^ (v74 >> 61)) + (v74 >> 39) - 2 * ((v74 ^ (v74 >> 61)) & (v74 >> 39)));
  v76 = v73 ^ 0xD3DA1E3360BF843ALL ^ ((v73 ^ 0xD3DA1E3360BF843ALL) << 58) ^ ((v73 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ v75;
  v77 = (v76 & 0x2DABDA63573F3192 ^ ((v73 ^ 0xD3DA1E3360BF843ALL) >> 6) & 0x1ABDA63573F3192 | v76 & 0xD254259CA8C0CE6DLL ^ ((v73 ^ 0xD3DA1E3360BF843ALL) >> 6) & 0x254259CA8C0CE6DLL) ^ (v73 << 63);
  v78 = v77 & ~v75 ^ v71;
  v79 = v60 ^ 0x44C9D571A5C4A51CLL ^ v57 & ~v61 ^ v73;
  v80 = v79 ^ (v79 << 47) ^ (v79 >> 10) ^ (v79 << 54) ^ (v79 >> 17);
  v81 = v75 ^ 0x6005BE354A5BB0B2 ^ v78 ^ (__ROR8__((v77 << (v13 & 6 ^ 6) << (v13 & 6)) ^ (v77 >> 58) ^ 0xB9851F273ADF94D0, 6) ^ 0xBD19EB83631481ACLL) & v80;
  v82 = v81 ^ (8 * v81) ^ (v81 << 25) ^ (v81 >> 39) ^ (*(v125 + ((59 * (v81 >> 61)) ^ 0x79)) + ((59 * (v81 >> 61)) ^ 0x1E) + 106);
  v83 = v80 ^ v70;
  v84 = v75 & ~v71 ^ v80 ^ v70;
  v85 = v84 ^ 0x2DB5B6AF87F64351 ^ ((v84 ^ 0x2DB5B6AF87F64351) >> 7);
  v86 = (v84 ^ 0x2DB5B6AF87F64351) >> 41;
  v87 = v86 & 0x4000;
  if ((v85 & v86 & 0x4000) != 0)
  {
    v87 = -v87;
  }

  v88 = (v86 & 0x7FBFFF | ((v84 ^ 0x2DB5B6AF87F64351) << 57)) ^ ((v84 ^ 0x2DB5B6AF87F64351) << 23) ^ (v87 + v85);
  v89 = v78 ^ v84 ^ 0x93C23431B76D41FLL ^ ((v78 ^ v84) >> 19) ^ ((v78 ^ v84 ^ 0x93C23431B76D41FLL) >> 28) ^ ((v78 ^ v84 ^ 0x93C23431B76D41FLL) << 36) ^ ((v78 ^ v84 ^ 0x93C23431B76D41FLL) << 45);
  v90 = v89 & 0x1000000;
  v91 = (v89 & 0x1000000 & v88) == 0;
  v92 = v89 ^ 0x1278468636ELL;
  if (v91)
  {
    v93 = v90;
  }

  else
  {
    v93 = -v90;
  }

  v94 = v92 ^ v90 ^ (v93 + v88);
  v95 = v82 ^ 0x4D;
  v96 = (v92 ^ -v92 ^ (v88 - v94)) + v88;
  v97 = v77 ^ v70 & ~v80;
  if ((v76 & v80 & 0x2000000000000000) != 0)
  {
    v98 = -2 * (v80 & 0x2000000000000000);
  }

  else
  {
    v98 = 0;
  }

  v99 = v80 & 0xDFFFFFFFFFFFFFFFLL ^ 0xF374A001D380BDC2 ^ v71 & ~v83 ^ ((v98 | v80 & 0x2000000000000000) + v97);
  v100 = ((((v99 >> 10) | v99) ^ (v99 << 54)) + (v99 << 47) - 2 * ((((v99 >> 10) | v99) ^ (v99 << 54)) & (v99 << 47))) ^ (((v99 >> 10) & v99) + (v99 >> 17) - 2 * ((v99 >> 10) & v99 & (v99 >> 17)));
  v101 = (v82 ^ 0x4D) & ~v96 ^ v100 ^ v88;
  *(&v102 + 1) = v97;
  *&v102 = v97 ^ 0x6DC4FB0BD4FFFF44;
  v103 = (v102 >> 1) ^ v97 ^ 0x6DC4FB0BD4FFFF44 ^ ((v97 ^ 0x6DC4FB0BD4FFFF44) >> 6) ^ ((v97 ^ 0x6DC4FB0BD4FFFF44) << 58);
  v104 = v95 ^ v103 ^ v88 & ~v100;
  v105 = (v100 & 0x400 | 0x29E1AB0124FF49E7) ^ v100 & 0xFFFFFFFFFFFFFBFFLL ^ v96 & ~(v100 ^ v88) ^ v104;
  result = (((v105 >> 17) | (v105 << 54)) ^ v105) + (v105 << 47) - 2 * ((((v105 >> 17) | (v105 << 54)) ^ v105) & (v105 << 47));
  v107 = (v82 ^ 0xFFFFFFFFFFFFFFB2) & v103 ^ v96;
  v108 = v100 & ~(v95 ^ v103) ^ v95 ^ v107;
  *&v102 = __ROR8__(v108 ^ 0xB6CECC7123D1669DLL, 61);
  v109 = (v108 ^ 0xB6CECC7123D1669DLL ^ v102 ^ -(v108 ^ 0xB6CECC7123D1669DLL ^ v102) ^ (((v108 ^ 0xB6CECC7123D1669DLL) << 25) - (v108 ^ 0xB6CECC7123D1669DLL ^ v102 ^ ((v108 ^ 0xB6CECC7123D1669DLL) << 25)))) + ((v108 ^ 0xB6CECC7123D1669DLL) << 25);
  v110 = v104 ^ ((v104 ^ 0x2D23F5ED560F5BC9uLL) >> 6) ^ ((v104 ^ 0x2D23F5ED560F5BC9uLL) >> 1);
  v111 = v110 ^ ((v104 ^ 0x2D23F5ED560F5BC9) << 58) ^ ((v104 ^ 0x2D23F5ED560F5BC9) << 63);
  v112 = v101 ^ v107 ^ ((v101 ^ v107 ^ 0x6E829E585CD8862) << 36) ^ ((v101 ^ v107 ^ 0x6E829E585CD8862) >> 19) ^ (((v101 ^ v107 ^ 0x6E829E585CD8862) >> 28) | ((v101 ^ v107 ^ 0x6E829E585CD8862) << 45));
  v124[21] = v101 ^ v107 ^ ((v101 ^ v107 ^ 0x6E829E585CD8862) >> 19) ^ ((v101 ^ v107 ^ 0x6E829E585CD8862) >> 28) ^ 0x62;
  v113 = ((v101 ^ v107 ^ ((v101 ^ v107 ^ 0x6E829E585CD8862) >> 19) ^ ((v101 ^ v107 ^ 0x6E829E585CD8862) >> 28)) >> 7) ^ 0x10;
  v114 = v113 & 0xFE | ((v101 ^ v107 ^ ((v101 ^ v107 ^ 0x6E829E585CD8862) >> 19) ^ ((v101 ^ v107 ^ 0x6E829E585CD8862) >> 28)) >> 15) & 1;
  v115 = v114 & 0x25;
  LOBYTE(v114) = *(v122 + (v114 ^ 0xC));
  v124[19] = BYTE5(v112) ^ 0x29;
  v124[18] = BYTE4(v112) ^ 0xE5;
  LODWORD(v108) = v109 ^ (v108 >> 39);
  v120[7] = BYTE2(v112) ^ 0xCD;
  v120[15] = BYTE3(v112) ^ 0x85;
  v124[20] = BYTE6(v112) ^ 0xE8;
  v126[13] = BYTE1(v108) ^ 0x9D;
  *v124 = v108 ^ 0x98;
  v124[12] = HIBYTE(v112) ^ 6;
  v120[8] = ((((v115 | v113 & 0xDA) ^ 0xD3) + v114) ^ 0xAB) - 17;
  v116 = *(v125 + ((59 * (BYTE2(v108) ^ 0x6D)) ^ 0x79)) + ((59 * (BYTE2(v108) ^ 0x6D)) ^ 0x1E);
  v124[22] = BYTE3(v108) ^ 1;
  v120[25] = (v116 + 106) ^ 0x4D;
  v124[7] = v110 ^ 0xC9;
  v126[18] = HIBYTE(v109);
  v126[5] = BYTE6(v109);
  v124[6] = BYTE4(v109);
  v126[16] = BYTE5(v109);
  LOBYTE(v104) = *(v123 + 3 + (BYTE1(v110) ^ 0x14));
  v126[15] = BYTE4(v110) ^ 0xED;
  v126[9] = BYTE3(v110) ^ 0x56;
  v120[10] = (v104 ^ 0x8D) - 90;
  v117 = result ^ (v105 >> 10);
  v120[17] = BYTE2(v110) ^ 0xF;
  v120[23] = BYTE5(v110) ^ 0xF5;
  LOBYTE(v112) = *(v125 + ((59 * (BYTE6(v111) ^ 0x23)) ^ 0x79));
  v120[4] = BYTE2(v117);
  v120[26] = BYTE3(v117);
  v120[16] = v117;
  v126[6] = BYTE1(v117);
  v120[24] = HIBYTE(v111) ^ 0x2D;
  v126[7] = (v112 + ((59 * (BYTE6(v111) ^ 0x23)) ^ 0x1E) + 106) ^ 0x4D;
  LOBYTE(v111) = *(v125 + ((59 * BYTE4(v117)) ^ 0x79));
  v120[3] = BYTE6(v117);
  v126[11] = BYTE5(v117);
  v120[14] = (((59 * BYTE4(v117)) ^ 0x89) - 2 * (((59 * BYTE4(v117)) & 0x17 ^ 1) & ((59 * BYTE4(v117)) | 7)) + v111 + 1) ^ 0x4D;
  v118 = *(v123 + 3 + (HIBYTE(result) ^ 0x4F));
  v119 = v101 ^ 0x4734313A1F2B2857 ^ ((v101 ^ 0x4734313A1F2B2857uLL) >> 7) ^ ((((v101 ^ 0x4734313A1F2B2857) << 23) ^ ((v101 ^ 0x4734313A1F2B2857) << 57)) & 0xFFFFFFFFFF800000 | ((v101 ^ 0x4734313A1F2B2857uLL) >> 41));
  v120[19] = BYTE6(v119);
  v120[12] = BYTE5(v119);
  v120[5] = (v101 ^ 0x1F2B2857 ^ ((v101 ^ 0x4734313A1F2B2857uLL) >> 7) ^ (((v101 ^ 0x1F2B2857) << 23) | ((v101 ^ 0x4734313A1F2B2857uLL) >> 41))) >> 16;
  v120[21] = HIBYTE(v119);
  v120[22] = (v101 ^ 0x1F2B2857 ^ ((v101 ^ 0x4734313A1F2B2857uLL) >> 7) ^ (((v101 ^ 0x1F2B2857) << 23) | ((v101 ^ 0x4734313A1F2B2857uLL) >> 41))) >> 24;
  v120[28] = (v101 ^ 0x2857 ^ ((v101 ^ 0x4734313A1F2B2857uLL) >> 7) ^ ((v101 ^ 0x4734313A1F2B2857uLL) >> 41)) >> 8;
  *v120 = v101 ^ 0x57 ^ ((v101 ^ 0x4734313A1F2B2857uLL) >> 7) ^ ((v101 ^ 0x4734313A1F2B2857uLL) >> 41);
  v120[6] = BYTE4(v119);
  v120[2] = (v118 ^ 0x8D) - 90;
  *v121 = v127 + 1;
  return result;
}

uint64_t sub_23E94ED7C(uint64_t a1)
{
  v8 = (v1 - 1487624962) & 0x58AB5BFD;
  v9 = (v8 + 1595884442) & 0xA0E0BEEF;
  *v3 = a1;
  *v2 = v13 ^ (v6 + 45) ^ v8;
  v15 = v9 + ((((2 * v14) | 0x14E29664) - v14 + 1972286670) ^ 0xF7740D04) * v7 + 1134;
  v16 = v11;
  (*(v5 + 8 * (v9 ^ 0xBCE)))(v14);
  v15 = v9 - 634 + (((v14 | 0xF25ADA0) - v14 + (v14 & 0xF0DA5258)) ^ 0x7220EB96) * v7 + 1768;
  v16 = v12;
  (*(v5 + 8 * (v9 + 2882)))(v14);
  return v4 ^ 0x996E72F8;
}

uint64_t sub_23E94EEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t a5, int8x8_t a6)
{
  v12 = a2 - 8;
  v14.val[0].i64[0] = (v9 + v12 - 1) & 0xF;
  v14.val[0].i64[1] = (v9 + v12 + 14) & 0xF;
  v14.val[1].i64[0] = (v9 + v12 + ~v10) & 0xF;
  v14.val[1].i64[1] = (v9 + v12 + 12) & 0xF;
  v14.val[2].i64[0] = (v9 + v12 + 11) & 0xF;
  v14.val[2].i64[1] = (v9 + v12 + 10) & 0xF;
  v14.val[3].i64[0] = (v9 + v12 + 9) & 0xF;
  v14.val[3].i64[1] = (v9 + v12) & 0xF ^ 8;
  *(a3 - 8 + v9) = veor_s8(veor_s8(veor_s8(*(v8 + v14.val[0].i64[0] - 7), *(a4 - 8 + v9)), veor_s8(*(v6 + v14.val[0].i64[0] - 7), *(v14.val[0].i64[0] + v7 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v14, a5), a6)));
  return (*(v11 + 8 * ((62 * (a1 + v12 != 0)) ^ v10)))();
}

uint64_t sub_23E94F2DC()
{
  v7 = v14[5];
  v8 = v14[6] + 94;
  v9 = ~(2 * v14[4]) + v14[4];
  v10 = ((v1 + 68) & 0x7F) + (v8 & 3) + 113;
  v11 = v8 ^ (2 * ((v8 ^ 0x22) & (2 * ((v8 ^ 0x22) & (2 * ((v8 ^ 0x22) & (2 * ((v8 ^ 0x22) & (2 * ((v8 ^ 0x22) & (2 * ((v8 ^ 0x22) & (2 * v8) & 0x46 ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ 0xF9;
  v12 = 2008441969 * (((~(v6 - 176) | 0x2373EFA6) + ((v6 - 176) | 0xDC8C1059)) ^ 0x679DFDFE);
  *(v6 - 164) = v12 ^ v3 ^ 0xC748C15E;
  *(v6 - 160) = v11 - 113 * (((~(v6 + 80) | 0xA6) + ((v6 + 80) | 0x59)) ^ 0xFE);
  *(v6 - 167) = v9 ^ (113 * (((~(v6 + 80) | 0xA6) + ((v6 + 80) | 0x59)) ^ 0xFE));
  *(v6 - 144) = v1 - v12 - 163;
  *v0 = v16;
  *(v6 - 168) = 113 * (((~(v6 + 80) | 0xA6) + ((v6 + 80) | 0x59)) ^ 0xFE) + 61 * v7 + 78;
  v0[3] = v15;
  (*(v4 + 8 * (v1 ^ 0x551)))(v6 - 176);
  *v2 = -1;
  return v3 ^ v5;
}

uint64_t sub_23E94F4B0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, _BYTE *a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _BYTE *a17, _BYTE *a18, _BYTE *a19, uint64_t a20, unsigned int a21, int a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  v49 = v43 + 1;
  v50 = (v34 + 16);
  v51 = (v35 + 128);
  v52 = *(*(v51 - 6) + a6);
  *a4 = v52;
  v53 = *(*(v51 - 2) + v38);
  a4[4] = v53;
  v54 = *(v51[2] + v46);
  a4[8] = v54;
  v55 = *(v51[6] + v40);
  a4[12] = v55;
  v56 = *(*(v51 - 1) + a3);
  a4[1] = v56;
  v57 = *(v51[3] + v39);
  a4[5] = v57;
  v58 = *(v51[7] + v41);
  a4[9] = v58;
  v59 = *(*(v51 - 5) + v37);
  a4[13] = v59;
  v60 = *(v51[4] + v42);
  a4[2] = v60;
  v61 = *(*(v51 - 4) + v45);
  a4[10] = v61;
  v62 = *(v51[8] + v48);
  a4[6] = v62;
  v63 = *(*v51 + a1);
  a4[14] = v63;
  v64 = *(v51[5] + a2);
  a4[15] = v64;
  v65 = *(v51[1] + v36);
  a4[11] = v65;
  v66 = *(*(v51 - 3) + v47);
  a4[7] = v66;
  v67 = *(v51[9] + a5);
  a4[3] = v67;
  v68 = &a34 + 128 * (v49 % a21);
  LODWORD(v52) = *(*(v68 + 147) + 4 * v52);
  LODWORD(v56) = *(*(v68 + 148) + 4 * v56);
  LODWORD(v60) = *(*(v68 + 149) + 4 * v60);
  LODWORD(v67) = *(*(v68 + 150) + 4 * v67);
  v68 += 1176;
  LODWORD(v67) = v56 ^ v52 ^ v60 ^ v67;
  *a4 = v67;
  LODWORD(v56) = *(*&v68[32 * a20 + 8] + 4 * v57) ^ *(*&v68[32 * a20] + 4 * v53) ^ *(*&v68[32 * a20 + 16] + 4 * v62) ^ *(*&v68[32 * a20 + 24] + 4 * v66);
  a4[7] = BYTE3(v56);
  LODWORD(v60) = v56 >> (a23 - 76);
  a4[6] = v60;
  a4[5] = BYTE1(v56);
  *a19 = v56;
  LODWORD(v57) = *(*&v68[32 * a16 + 8] + 4 * v58) ^ *(*&v68[32 * a16] + 4 * v54) ^ *(*&v68[32 * a16 + 16] + 4 * v61) ^ *(*&v68[32 * a16 + 24] + 4 * v65);
  a4[11] = BYTE3(v57);
  a4[10] = BYTE2(v57);
  a4[9] = BYTE1(v57);
  *a18 = v57;
  LODWORD(v52) = *(*&v68[32 * a15 + 8] + 4 * v59) ^ *(*&v68[32 * a15] + 4 * v55) ^ *(*&v68[32 * a15 + 16] + 4 * v63) ^ *(*&v68[32 * a15 + 24] + 4 * v64);
  a4[15] = BYTE3(v52);
  a4[14] = BYTE2(v52);
  a4[13] = BYTE1(v52);
  *a17 = v52;
  *a4 = *(v50 - 15) ^ v67;
  a4[2] = *(v50 - 13) ^ BYTE2(v67);
  a4[3] = *(v50 - 12) ^ BYTE3(v67);
  *(a4 + 2) = *(v50 - 11) ^ v56;
  a4[6] = *(v50 - 9) ^ v60;
  a4[7] = *(v50 - 8) ^ BYTE3(v56);
  *(a4 + 4) = *(v50 - 7) ^ v57;
  a4[10] = *(v50 - 5) ^ BYTE2(v57);
  a4[11] = *(v50 - 4) ^ BYTE3(v57);
  *(a4 + 6) = *(v50 - 3) ^ v52;
  a4[14] = *(v50 - 1) ^ BYTE2(v52);
  a4[15] = *v50 ^ BYTE3(v52);
  return (*(v44 + 8 * ((436 * (v49 == 8)) ^ a23)))();
}

void sub_23E94F554()
{
  if (v0 == 1218689936)
  {
    v2 = -1720814856;
  }

  else
  {
    v2 = 1720789280;
  }

  *(v1 + 48) = v2;
}

uint64_t sub_23E94F5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v46 = v45 + v41 + 1;
  v47 = (a22 + 24 * v46);
  *v47 = v43;
  v47[1] = a7;
  *(&a40 + 3 * v46 + 2) = v42;
  v47[4] = HIDWORD(a23);
  a40 = ((v40 - 220) ^ v40 ^ 0x365) + v41;
  return (*(v44 + 8 * (v40 ^ (1858 * ((a9 + a4) < 0x80000003)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_23E94F67C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18)
{
  v21 = &a18 + a1;
  *v21 = 0xD2D2D2D2D2D2D2D2;
  *(v21 + 1) = 0xD2D2D2D2D2D2D2D2;
  return (*(v20 + 8 * ((480 * (((v19 - 1876) ^ 0x18ALL) == (v18 & 0xFFFFFFFFFFFFFFF0))) ^ v19)))();
}

uint64_t sub_23E94F700(uint64_t a1, uint64_t a2, int a3, int a4, int8x16_t a5, int8x8_t a6)
{
  v13 = v11 - 8;
  v15.val[0].i64[0] = (v9 + v13 - 1) & 0xF;
  v15.val[0].i64[1] = (v9 + v13 + 14) & 0xF;
  v15.val[1].i64[0] = (v9 + v13 + 13) & 0xF;
  v15.val[1].i64[1] = (v9 + v13 + 12) & 0xF;
  v15.val[2].i64[0] = (v9 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v9 + v13 + 10) & 0xF;
  v15.val[3].i64[0] = (v9 + v13 + (v10 ^ 4)) & 0xF;
  v15.val[3].i64[1] = (v9 + v13) & 0xF ^ 8;
  *(a2 + v13) = veor_s8(veor_s8(veor_s8(*(v7 + v15.val[0].i64[0] - 7), *(a2 + v13)), veor_s8(*(v15.val[0].i64[0] + v8 - 6), *(v15.val[0].i64[0] + v6 - 2))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a5), a6)));
  return (*(v12 + 8 * (((a1 == v13) * a4) ^ a3)))();
}

uint64_t sub_23E94F708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W5>, uint64_t a4@<X7>, int a5@<W8>)
{
  v12 = ((v7 + 843) ^ HIDWORD(v11) ^ (107 * (v10 ^ 0x8CFu))) + (*(a4 + 4 * a1) ^ v5);
  v13 = v12 - ((v12 << ((47 * (v10 ^ 0xDD)) ^ 0x62u)) & 0x27ACA038) + 0x527AD7E413D6501CLL;
  *(a4 + 4 * a2) = v13 ^ a3;
  *(a4 + 4 * a1) = HIDWORD(v13) ^ v8;
  return (*(v9 + 8 * (v10 | (4 * (v6 + 1 == a5)))))();
}

uint64_t sub_23E94F7DC@<X0>(int a1@<W8>)
{
  v4 = a1 + 1691;
  v5 = 1358806181 * (((&v7 | 0x65C06C66) - &v7 + (&v7 & 0x9A3F9398)) ^ 0xD8A3EA8B);
  v7 = 0;
  v10 = (v4 - 1077) ^ v5;
  v11 = 1914221398 - v5;
  v8 = v5 - 1474350957;
  v9 = v2;
  result = (*(v3 + 8 * (v4 + 972)))(&v7);
  *v1 = *(v2 + 24);
  return result;
}

uint64_t sub_23E94F864(int8x16_t a1, int8x16_t a2)
{
  v8 = (v4 - 32);
  v9 = (v6 - 32);
  v10 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a1)), a2);
  *v8 = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a1)), a2);
  v8[1] = v10;
  return (*(v7 + 8 * (((v5 == 32) * (v2 + 856)) ^ v3)))();
}

uint64_t sub_23E94F874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10)
{
  v12 = *(a1 + 68) & (118 * (a9 ^ 0x84u) - 1235);
  *(v10 + v12) = 82;
  return (*(v11 + 8 * ((3173 * (v12 > (a9 ^ 0x84u) + 44)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10);
}

uint64_t sub_23E94F9D0(int a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = v9 > a1;
  if (v11 == v7 + a3 < a4)
  {
    v11 = v7 + a3 < v10;
  }

  return (*(v8 + 8 * ((v11 * (a7 - 2184)) ^ a7)))();
}

uint64_t sub_23E94FA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17, _DWORD *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 136) = 1358806181 * ((((v32 - 144) | 0x61E8EBEB) + (~(v32 - 144) | 0x9E171414)) ^ 0xDC8B6D07) - 1631618576 + v31;
  STACK[0xD50] = a18;
  (*(a4 + 8 * (v31 ^ 0x1D60)))(v32 - 144);
  v33 = 2048652491 * (((v32 - 144) & 0x12BC33D3 | ~((v32 - 144) | 0x12BC33D3)) ^ 0x90468A1A);
  STACK[0xD68] = *(&off_28512D4A0 + (v31 & 0x978E7068)) - 4;
  STACK[0xD58] = a18;
  *(v32 - 128) = v31 - 2201 - v33;
  *(v32 - 144) = 339409668 - v33;
  (*(a31 + 8 * (v31 ^ 0x2C9)))(v32 - 144);
  v34 = 2048652491 * ((v32 - 955424504 - 2 * ((v32 - 144) & 0xC70D6198)) ^ 0xBA0827AE);
  STACK[0xD58] = a18;
  *(v32 - 144) = 339409624 - v34;
  *(v32 - 128) = v31 - 2201 - v34;
  STACK[0xD68] = a13;
  v35 = (*(a31 + 8 * (v31 + 569)))(v32 - 144);
  *a17 = *a18;
  LODWORD(STACK[0xC74]) = STACK[0xC1C];
  LODWORD(STACK[0xC78]) = STACK[0xC20];
  STACK[0xC7C] = STACK[0xC24];
  LODWORD(STACK[0xC84]) = STACK[0xC2C];
  v36 = *&STACK[0xC40];
  *&STACK[0xC88] = *&STACK[0xC30];
  *&STACK[0xC98] = v36;
  return (*(a31 + 8 * (v31 - 481)))(v35);
}

uint64_t sub_23E94FDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29)
{
  LODWORD(v37) = v31 ^ 0x15B5;
  HIDWORD(v37) = v31 ^ 0xE9E;
  HIDWORD(v36) = v31 ^ 0xA5F;
  HIDWORD(v35) = (1179 * (v31 ^ 0x5A0)) ^ 0xDCF;
  LODWORD(v36) = 1179 * (v31 ^ 0x5A0);
  LODWORD(v35) = -3677 - v31;
  return (*(v32 + 8 * (((((((v31 ^ 0x67E) + 1431663509) & 0xAAAA8EFF) - 661) ^ 0x67E) + 1920) ^ ((v31 ^ 0x67E) + 1431663509) & 0xAAAA8EFF)))(1662, ((((v31 ^ 0x67E) + 29589) & 0x8EFF ^ 0xE68C) + v29), 1831, 1702, 2114415041, a6, a7, a8, a9, a10, v35, v36, v37, &a29 % 0x25, v30, a16, a17, (v33 - 152) | 0xA57EE147AA35F53);
}

uint64_t sub_23E9504B8@<X0>(int a1@<W8>)
{
  v8 = (v2 - 2);
  v9 = v1 + 2;
  *v8 = (v9 + v5) * (v9 ^ v4);
  *(v8 - 1) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v7 + 8 * (((v3 != 2) * v6) ^ a1)))();
}

uint64_t sub_23E9504C8()
{
  v7 = v3 - 1;
  *(v6 + v7) ^= *(v2 + (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 3) ^ (47 * (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 2) ^ 0xD2;
  return (*(v5 + 8 * ((163 * (v7 != 0)) ^ (v4 - 280))))();
}

uint64_t sub_23E95052C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, char a10)
{
  a9 = 1046730637 * ((((2 * &a9) | 0x1C6B1FB4) - &a9 - 238391258) ^ 0x54363236) + a1 - 1209;
  a10 = -115 * ((((2 * &a9) | 0xB4) - &a9 + 38) ^ 0x36) + 73;
  v11 = (*(v10 + 8 * (a1 + 1137)))(&a9);
  return sub_23E950590(v11);
}

uint64_t sub_23E950610@<X0>(unsigned __int8 a1@<W2>, unint64_t a2@<X3>, unsigned __int8 a3@<W6>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t (*a35)(void), uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, _BYTE *a47, void *a48)
{
  v51 = *(a48[291] + (*a47 ^ a2));
  *a47 = v51 - ((2 * v51) & 0xA4) - 46;
  v52 = *(a48[299] + (*(a4 - 12) ^ a2));
  *(a4 - 12) = v52 - ((2 * v52) & 0xA4) - 46;
  v53 = *(a48[307] + (v49 ^ a2));
  *(a4 - 8) = v53 + (~(2 * v53) | 0x5B) - 45;
  v54 = *(a48[315] + (a1 ^ a2));
  *(a4 - 4) = v54 - ((2 * v54) & 0xA4) - 46;
  v55 = *(a48[317] + (v50 ^ a2));
  *(a4 - 3) = v55 + (~(2 * v55) | 0x5B) - 45;
  v56 = *(a48[309] + (*(a4 - 11) ^ a2));
  *(a4 - 7) = v56 - ((2 * v56) & 0xA4) - 46;
  v57 = *(a48[301] + (*(a4 - 15) ^ a2));
  *(a4 - 11) = v57 - ((2 * v57) & 0xA4) - 46;
  v58 = *(a48[293] + HIBYTE(v48));
  *(a4 - 15) = v58 + (~(2 * v58) | 0x5B) - 45;
  v59 = *(a4 - 14);
  v60 = *(a48[295] + (a3 ^ a2));
  *(a4 - 14) = v60 - ((2 * v60) & 0xA4) - 46;
  LOBYTE(v59) = *(a48[311] + (v59 ^ a2));
  *(a4 - 6) = v59 - ((2 * v59) & 0xA4) - 46;
  v61 = *(a4 - 10);
  v62 = *(a48[303] + (*(a4 - 2) ^ a2));
  *(a4 - 10) = v62 - ((2 * v62) & 0xA4) - 46;
  LOBYTE(v61) = *(a48[319] + (v61 ^ a2));
  *(a4 - 2) = v61 - ((2 * v61) & 0xA4) - 46;
  v63 = *(a4 - 13);
  v64 = *(a48[297] + (*(a4 - 9) ^ a2));
  *(a4 - 13) = v64 - ((2 * v64) & 0xA4) - 46;
  v65 = *(a48[305] + (*(a4 - 5) ^ a2));
  *(a4 - 9) = v65 + (~(2 * v65) | 0x5B) - 45;
  v66 = *(a48[313] + (*(a4 - 1) ^ a2));
  *(a4 - 5) = v66 - ((2 * v66) & 0xA4) - 46;
  LOBYTE(v63) = *(a48[321] + (v63 ^ a2));
  *(a4 - 1) = v63 - ((2 * v63) & 0xA4) - 46;
  return a35();
}

uint64_t sub_23E950824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W8>, int8x16_t a6@<Q0>, int8x8_t a7@<D1>)
{
  v13 = a2 - 8;
  v15.val[0].i64[0] = (v10 + v13 - 1) & 0xF;
  v15.val[0].i64[1] = (v10 + v13 + 14) & 0xF;
  v15.val[1].i64[0] = (v10 + v13 + 13) & 0xF;
  v15.val[1].i64[1] = (v10 + v13 + (a5 ^ 4)) & 0xF;
  v15.val[2].i64[0] = (v10 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v10 + v13 + 10) & 0xF;
  v15.val[3].i64[0] = (v10 + v13 + 9) & 0xF;
  v15.val[3].i64[1] = (v10 + v13) & 0xF ^ 8;
  *(a3 - 8 + v10) = veor_s8(veor_s8(veor_s8(*(v9 + v15.val[0].i64[0] - 7), *(a4 - 8 + v10)), veor_s8(*(v15.val[0].i64[0] + v7 - 5), *(v8 + v15.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a6), a7)));
  return (*(v12 + 8 * (v11 | (4 * (a1 == v13)))))();
}

uint64_t sub_23E950BE0(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_23E950C7C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v6 = (v3 - 1702763475) & 0x657E1BCF;
  v7 = (((v6 - 2042) - 594) ^ v2) + a2;
  *(v4 - 7 + v7) = veor_s8(*(a1 - 7 + v7), 0xD2D2D2D2D2D2D2D2);
  v8 = v2 + 8;
  v9 = ((v6 ^ 0xFFFFF5B3) & a2) - 8 != v2;
  return (*(v5 + 8 * ((v9 | (4 * v9)) ^ v6)))(v8);
}

uint64_t sub_23E950D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, unint64_t a30)
{
  *v33 = v32 + 1;
  v34 = (((v31 >> 11) ^ v31) << 7) & 0x9D2C5681 ^ (v31 >> 11) ^ v31;
  *(*a28 + a30) ^= (v34 << 15) & 0xEFC60000 ^ v34 ^ (((v34 << 15) & 0xEFC60000 ^ v34) >> 18);
  return (*(v30 + 8 * ((41 * (a30 > 0x1FB)) ^ 0x519)))();
}

uint64_t sub_23E950EB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 468) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0xA4) - 46;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((1250 * v4) ^ 0xB9Bu)))(0);
}

uint64_t sub_23E951010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, unint64_t a16, uint64_t a17)
{
  v23 = v21 + 645;
  v24 = 2073269857 * ((2 * (v19 & 0x7310F6C2FE3D4BD8) - v19 + 0xCEF093D01C2B427) ^ 0xC79F66F2808F0D3FLL);
  a15 = a10;
  a16 = (v18 ^ 0x573BEA5BBEEE6BFFLL) + ((2 * v18) & 0xAE77D4B77DDCD7FELL) - 0x500848492A042108 + v24;
  a13 = v24 + v23 + 1877;
  (*(v20 + 8 * (v23 + 3065)))(&a13);
  v25 = 1317436891 * ((((2 * (v19 ^ 0xD76A78C8)) | 0xBC5DAB0A) - (v19 ^ 0xD76A78C8) + 567356027) ^ 0xFC657B38);
  a16 = v22;
  a17 = a10;
  LODWORD(a15) = ((v17 ^ 0xEF7AE3FB) + 1972740096 + ((v17 << (((v23 - 6) | 0x8C) + 20)) & 0xDEF5C7F6)) ^ v25;
  a13 = v23 - v25 - 131;
  v26 = (*(v20 + 8 * (v23 ^ 0x147C)))(&a13);
  return (*(v20 + 8 * ((2744 * (a14 == -1720814856)) ^ v23)))(v26);
}

uint64_t sub_23E9511F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v23 - 120) = &a17;
  *(v23 - 124) = (v19 + 155) ^ (((~(v22 | 0x189931D5) + (v22 & 0x189931D5)) ^ 0xE6D07315) * v17);
  *(v23 - 136) = v20;
  v24 = (*(v18 + 8 * (v19 ^ 0x5ED)))(v23 - 136);
  return (*(v18 + 8 * ((106 * (*(v23 - 128) != v21)) ^ v19)))(v24);
}

uint64_t sub_23E95129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, unsigned int a27)
{
  v66 = *(v29 + 8 * v27);
  v36 = *(a5 + 80);
  v35 = *(a5 + 84);
  v37 = *(a5 + 96);
  if (v37 == 2)
  {
    v41 = (v28 + v31 + 597554225);
    v42 = ((*v41 ^ v33) << 24) | ((v41[1] ^ v33) << 16) | ((*(v28 + ((a27 + 69) ^ (v31 + 127)) + 597554225) ^ v33) << 8);
    *v32 = (v42 | v41[3] ^ v33) + v30 - 2 * ((v42 | v41[3] ^ v33) & 0x196E72F9 ^ (v41[3] ^ v33) & 1);
    v43 = *(v29 + 8 * ((197 * ((v31 + 597554229) > 0x3F)) ^ a27));
    return v43(597554229, v43, v34 + 16, 0, 2147418112, 33554433, a27, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else if (v37 == 1)
  {
    v38 = (v28 + v31 + 597554225);
    v39 = *v38 ^ v33;
    LODWORD(v38) = ((v38[2] ^ v33) << 16) | ((v38[3] ^ v33) << 24) | v39 & 0xFFFF00FF | ((a26 ^ v38[1]) << 8);
    *v32 = v38 + v30 - 2 * (v38 & 0x196E72F9 ^ v39 & 1);
    v40 = *(v29 + 8 * ((1947 * ((v31 + 597554229) < 0x40)) ^ (a8 - 31)));
    return v40(v40, 889585664, 2147418112, 927334400, 597554225, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v44 = (((*(a5 + 72) ^ 0x812736E0) + 2128136480) ^ ((*(a5 + 72) ^ 0x28D30C95) - 684919957) ^ ((*(a5 + 72) ^ 0xFC23F952) + 64751278)) + (((*(a5 + 72) ^ 0xCADDFD56) + 891421354) ^ ((*(a5 + 72) ^ 0x2B795B00) - 729373440) ^ ((*(a5 + 72) ^ 0xB4736571) + 1267505807)) + 688225610;
    v45 = (2 * (v44 & 0x82AA0904)) & (v44 ^ 0x84EB783B) ^ 0x641713F ^ ((2 * (v44 & 0x82AA0904)) & 0x4401008 | v44 & 0x82AA0904);
    v46 = ((2 * (v44 ^ 0x84EB783B)) ^ 0xC82E27E) & (v44 ^ 0x84EB783B) ^ (2 * (v44 ^ 0x84EB783B)) & 0x641713E;
    v47 = v46 & 0x9226A5E ^ v45 ^ ((4 * v45) ^ 0x1027AEA2) & (v46 ^ 0x400603F);
    v48 = ((4 * v46) ^ 0x1923EAA6) & (v46 ^ 0x400603F) ^ v46 & 0x9226A5E;
    v49 = v47 ^ v48 & 0x9226A5E ^ ((16 * v47) ^ 0x6D33784E) & (v48 ^ 0x601F);
    v50 = ((16 * v48) ^ 0x9246BBE) & (v48 ^ 0x601F) ^ v48 & 0x9226A5E;
    v51 = v50 & 0x9226A5E;
    v52 = v50 ^ 0x603Fu;
    v53 = v49 ^ v51 ^ ((v49 << 8) ^ 0x4853555E) & v52;
    v54 = (((*(a5 + 76) ^ 0xDA51ACA0) + 632181600) ^ ((*(a5 + 76) ^ 0xC8FB10DB) + 923070245) ^ ((*(a5 + 76) ^ 0x477D7F5C) - 1199406940)) + (((*(a5 + 76) ^ 0x11B9FF66) - 297402214) ^ ((*(a5 + 76) ^ 0x47B1F6D0) - 1202845392) ^ ((*(a5 + 76) ^ 0x3DFCA91) - 64998033)) - 710857101;
    *(a5 + 72) = v44 ^ (2 * (v53 ^ (((v50 << 8) ^ 0x942745E) & v52 ^ v51) & 0x9226A5E ^ ((v53 << 16) ^ 0x18036A5E) & (((v50 << 8) ^ 0x942745E) & v52 ^ v51 ^ 0x6410000) ^ ((v53 << 16) ^ 0x18036A5E) & 0x641601E)) ^ 0xDBFF285D;
    *(a5 + 76) = v54 ^ ((v54 ^ 0x9C003045) + 1242458016) ^ ((v54 ^ 0x86BA31BC) + 1353999975) ^ ((v54 ^ 0x48145603) - 1642462758) ^ ((v54 ^ 0x7B5FFFDF) - 1387157498) ^ 0x7C266B02;
    v55 = (((v36 ^ 0xB2867111) + 1299812079) ^ ((v36 ^ 0x3585CFBE) - 897961918) ^ ((v36 ^ 0xD2D47D88) + 757826168)) + (((*(a5 + 80) ^ 0x13B883D) - 20678717) ^ ((*(a5 + 80) ^ 0x4EFF506A) - 1325355114) ^ ((*(a5 + 80) ^ 0x1A131B70) - 437459824)) + 487366272;
    v56 = (v55 ^ 0xECA2E7AF) & (2 * (v55 & 0x8EA2E7CE)) ^ v55 & 0x8EA2E7CE;
    v57 = ((2 * (v55 ^ 0xF0E6A1B3)) ^ 0xFC888CFA) & (v55 ^ 0xF0E6A1B3) ^ (2 * (v55 ^ 0xF0E6A1B3)) & 0x7E44467C;
    v58 = v57 ^ 0x2444205;
    v59 = (v57 ^ 0x7C000478) & (4 * v56) ^ v56;
    v60 = ((4 * v58) ^ 0xF91119F4) & v58 ^ (4 * v58) & 0x7E44467C;
    v61 = (v60 ^ 0x78000060) & (16 * v59) ^ v59;
    v62 = ((16 * (v60 ^ 0x6444609)) ^ 0xE44467D0) & (v60 ^ 0x6444609) ^ (16 * (v60 ^ 0x6444609)) & 0x7E444670;
    v63 = v61 ^ 0x7E44467D ^ (v62 ^ 0x64444600) & (v61 << 8);
    v64 = (((v35 ^ 0x832E4E7D) + 2094117251) ^ ((v35 ^ 0x51EBF371) - 1374417777) ^ ((v35 ^ 0x87127E2B) + 2028831189)) + (((*(a5 + 84) ^ 0x6EE4F690) - 1860499088) ^ ((*(a5 + 84) ^ 0x950BCCB6) + 1794388810) ^ ((*(a5 + 84) ^ 0xAE38F901) + 1371997951)) - 402093280;
    *(a5 + 80) = v55 ^ (2 * ((v63 << 16) & 0x7E440000 ^ v63 ^ ((v63 << 16) ^ 0x467D0000) & (((v62 ^ 0x1A00002D) << 8) & 0x7E440000 ^ 0x3A000000 ^ (((v62 ^ 0x1A00002D) << 8) ^ 0x44460000) & (v62 ^ 0x1A00002D)))) ^ 0xAB75A813;
    *(a5 + 84) = v64 ^ ((v64 ^ 0xB498E957) + 2000556667) ^ ((v64 ^ 0x3A05BC4B) - 106739865) ^ ((v64 ^ 0xCD1BAE73) + 247289183) ^ ((v64 ^ 0x7FDFFFBD) - 1132919663) ^ 0x698EC7F5;
    return v66(2118403708, v51, v52, a4, a5, a6, a22, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }
}

uint64_t sub_23E9512A8(int8x8_t a1)
{
  v7 = v3 + 2;
  v8 = v4 + 2;
  v9 = veor_s8(*v8, a1);
  v7[-1] = veor_s8(v8[-1], a1);
  *v7 = v9;
  return (*(v6 + 8 * (((v2 == 16) * v5) ^ (v1 + 1129))))();
}