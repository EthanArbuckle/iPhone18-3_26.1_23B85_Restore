uint64_t sub_23AB90234()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23AB9026C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 35, 7);
}

uint64_t sub_23AB902A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t sub_23AB90350(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
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

uint64_t sub_23AB905B0(mach_port_t a1, unsigned int a2, __int128 *a3)
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

uint64_t sub_23AB90744(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
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

uint64_t sub_23AB90938(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
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

uint64_t sub_23AB90AB8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(&off_284DD4450 + (*(off_284DD46C0 + (*(off_284DD47F8 + (117 * ((qword_27DFC8A88 - dword_27DFC8AF8) ^ 0xA1)) - 8) ^ 0x35u)) ^ (117 * ((qword_27DFC8A88 - dword_27DFC8AF8) ^ 0xA1))) - 27);
  v2 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 + *v1) ^ 0xA1)) ^ byte_23AC787A0[byte_23AC74DA0[(117 * ((qword_27DFC8A88 + *v1) ^ 0xA1))] ^ 0xEB]) - 16);
  v3 = *v1 - &v5 + *(v2 - 4);
  *v1 = 1793648501 * v3 - 0x14D2DEFCE5B8486BLL;
  *(v2 - 4) = 1793648501 * (v3 ^ 0x985AED203B07ABA1);
  v7 = a1;
  v6 = 1082434553 * ((((&v6 | 0xCD1126F6) ^ 0xFFFFFFFE) - (~&v6 | 0x32EED909)) ^ 0xA9A92F83) + 586;
  LOBYTE(v2) = 117 * (*v1 ^ 0xA1 ^ *(v2 - 4));
  return (*(*(&off_284DD4450 + ((117 * ((qword_27DFC8A88 + dword_27DFC8AF8) ^ 0xA1)) ^ byte_23AC789A0[byte_23AC750A0[(117 * ((qword_27DFC8A88 + dword_27DFC8AF8) ^ 0xA1))] ^ 0x35]) - 171) + 8 * (*(off_284DD4610 + (*(off_284DD49B8 + v2 - 4) ^ 0xEBu) - 12) ^ v2) + 16228))(&v6);
}

uint64_t sub_23AB90E24(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 - dword_27DFC88D8) ^ 0xA1)) ^ byte_23AC7BE20[byte_23AC788A0[(117 * ((qword_27DFC8A88 - dword_27DFC88D8) ^ 0xA1))] ^ 0x63]) - 48);
  v2 = *(v1 - 4);
  v3 = *(&off_284DD4450 + (*(off_284DD4908 + (*(off_284DD4600 + (117 * ((qword_27DFC8A88 - v2) ^ 0xA1)) - 8) ^ 0xB2u) - 8) ^ (117 * ((qword_27DFC8A88 - v2) ^ 0xA1))) - 21);
  v4 = (*(v3 - 4) ^ v2) - &v6;
  *(v1 - 4) = 1793648501 * v4 + 0x67A512DFC4F8545FLL;
  *(v3 - 4) = 1793648501 * (v4 ^ 0x985AED203B07ABA1);
  v8 = (843532609 * ((((&v7 | 0xD33FC7EA) ^ 0xFFFFFFFE) - (~&v7 | 0x2CC03815)) ^ 0x7DA01AAD)) ^ 0x207;
  v7 = a1;
  LOBYTE(v3) = 117 * ((*(v3 - 4) + *(v1 - 4)) ^ 0xA1);
  return (*(*(&off_284DD4450 + ((117 * (dword_27DFC88D8 ^ 0xA1 ^ qword_27DFC8A88)) ^ byte_23AC787A0[byte_23AC74DA0[(117 * (dword_27DFC88D8 ^ 0xA1 ^ qword_27DFC8A88))] ^ 0xEB]) + 1) + 8 * (*(off_284DD44B8 + (*(off_284DD47D0 + v3 - 8) ^ 0x65u) - 12) ^ v3) + 15148))(&v7);
}

uint64_t sub_23AB91174(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 + dword_27DFC88E0) ^ 0xA1)) ^ byte_23AC787A0[byte_23AC74DA0[(117 * ((qword_27DFC8A88 + dword_27DFC88E0) ^ 0xA1))] ^ 5]) - 174);
  v2 = 117 * ((qword_27DFC8A88 - *v1) ^ 0xA1);
  v3 = *(&off_284DD4450 + (*(off_284DD4908 + (*(off_284DD4600 + v2 - 8) ^ 0x19u) - 8) ^ v2) - 18);
  v4 = *v1 - &v6 + *(v3 - 4);
  *v1 = 1793648501 * v4 + 0x67A512DFC4F8545FLL;
  *(v3 - 4) = 1793648501 * (v4 ^ 0x985AED203B07ABA1);
  v8 = a1;
  v7[1] = (1564307779 * (v7 ^ 0x970DCC13)) ^ 0x1F0;
  LOBYTE(v3) = 117 * (*v1 ^ 0xA1 ^ *(v3 - 4));
  (*(*(&off_284DD4450 + ((117 * ((qword_27DFC8A88 + dword_27DFC88E0) ^ 0xA1)) ^ byte_23AC787A0[byte_23AC74DA0[(117 * ((qword_27DFC8A88 + dword_27DFC88E0) ^ 0xA1))] ^ 0xE1]) - 3) + 8 * (*(off_284DD4610 + (*(off_284DD49B8 + v3 - 4) ^ 0x63u) - 12) ^ v3) + 15820))(v7);
  return v7[0];
}

uint64_t sub_23AB914C4(uint64_t a1)
{
  v1 = 843532609 * ((((2 * a1) | 0xAA5A5A2A) - a1 - 1429024021) ^ 0x44D0FAD);
  v2 = *(a1 + 20) + v1;
  v3 = 359894701 * (*a1 ^ v1);
  v5 = v3 - 1013897656;
  v4 = v3 - 1013897656 < 0;
  v6 = 1013897656 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  v7 = *(*(a1 + 8) + 4);
  v8 = v7 - 1173454827;
  v4 = v7 - 1173454827 < 0;
  v9 = 1173454827 - v7;
  if (!v4)
  {
    v9 = v8;
  }

  return (*(*(&off_284DD4450 + (v2 ^ 0x14B)) + 8 * (((2 * ((v6 >> 5) < v9)) | (4 * ((v6 >> 5) < v9))) ^ v2) - 4))();
}

uint64_t sub_23AB915E8(void *a1)
{
  if (a1[5])
  {
    v3 = (a1[7] | a1[2]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((v4 * (v1 + ((v1 - 443396312) & 0x1A6DAFFD) - 2840)) ^ v1)))();
}

uint64_t sub_23AB91644()
{
  result = (*(v2 + 8 * (v0 + 610)))(*v3, *v1, *(v1 + 8) + ((v0 - 501) ^ 0xED40EB01));
  *v1 = v5;
  *(v1 + 8) = v4;
  *(v1 + 12) = v4;
  return result;
}

uint64_t sub_23AB916E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, unsigned int a18, unsigned int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, uint64_t a28)
{
  v30 = a27 - 784114051 > a19;
  if (a19 < a18 != a27 - 784114051 < (a16 & 0xE394D1F6) - 784114489)
  {
    v30 = a27 - 784114051 < (a16 & 0xE394D1F6) - 784114489;
  }

  return (*(v28 + 8 * (!v30 | (16 * !v30) | (v29 + 366))))(18, a28, a3, a24);
}

uint64_t sub_23AB916EC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v26 = 28 * (a1 ^ 0x1DD);
  *(v25 - 128) = a8;
  *(v25 - 120) = a7;
  *(v25 - 104) = &a22;
  *(v25 - 144) = &a12;
  *(v25 - 136) = &a12;
  *(v25 - 112) = (a1 + 368) ^ (((((v25 - 144) | 0x2E4B6341) + (~(v25 - 144) | 0xD1B49CBE)) ^ 0xFF494E3F) * v22);
  v27 = (*(v23 + 8 * (a1 ^ 0x9D6u)))(v25 - 144);
  return (*(v23 + 8 * ((31 * (v24 + a6 + 1019 < ((v26 - 640) ^ 0x7FFFFB63u))) ^ (v26 - 813))))(v27);
}

uint64_t sub_23AB91814@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, char a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v13 = v9 - 1;
  v14 = (((v8 + a3) & a2) - 258) & v13;
  *(a1 + v13) = *(v12 + v13) ^ *(a6 + v14) ^ *(v14 + v7 + 2) ^ *(v6 + v14) ^ (v14 * v10) ^ a4;
  return (*(v11 + 8 * (((v13 != 0) * a5) ^ v8)))();
}

uint64_t sub_23AB918B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, int a16, unsigned int a17)
{
  if (a17 < 0x7D1FBFB9 != (a14 + 2099232761) < 0x7D1FBFB9)
  {
    v19 = (a14 + 2099232761) < 0x7D1FBFB9;
  }

  else
  {
    v19 = a14 + 2099232761 > a17;
  }

  return (*(v17 + 8 * ((!v19 * a16) ^ (a3 + v18 - 111))))();
}

uint64_t sub_23AB9198C@<X0>(int a1@<W2>, uint64_t a2@<X4>, unint64_t a3@<X7>, int a4@<W8>)
{
  v13 = ((v4 + 223 * ((a1 - 1693111120) & 0x64EAD3FE ^ 0x2E7u) - 1561) ^ *(a2 + 4 * a4)) + (v6 ^ HIDWORD(a3));
  v14 = v13 - (v9 & (2 * v13)) + v10;
  *(a2 + 4 * v7) = v14 ^ v11;
  *(a2 + 4 * a4) = HIDWORD(v14) ^ v12;
  return (*(v8 + 8 * (a1 ^ (124 * (v5 + 1 == a4)))))();
}

uint64_t sub_23AB91A4C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = a2 + v13 - 1;
  v17 = 1388665877 * ((((v15 - 120) | 0x6229396B) + (~(v15 - 120) | 0x9DD6C694)) ^ 0xEF845B86);
  *(v15 - 112) = (v13 + 1161) ^ v17;
  *(v15 - 108) = (a13 - 922022760) ^ v17;
  *(v15 - 120) = v15 - 220;
  v18 = (*(v14 + 8 * (v13 + 2140)))(v15 - 120);
  v19 = *(v15 - 152) & (v16 + 1567518739);
  *(v15 - 220 + v19) = 9;
  return (*(v14 + 8 * ((914 * (v19 > ((v13 + 432836318) & 0xE63375BB ^ 0x4AC))) | v13)))(v18, 2727448620);
}

uint64_t sub_23AB91B54@<X0>(uint64_t a1@<X2>, int a2@<W4>, int a3@<W8>)
{
  v8 = (v5 + 4 * v4);
  v9 = v4 + ((a3 + 566) | 0xEu) - 1309;
  *v8 = v8[397] ^ v7 ^ *(a1 + 4 * (*(v5 + 4 * v9) & 1)) ^ ((*(v5 + 4 * v9) & 0x7FFFFFFE | v3 & 0x80000000) >> 1);
  return (*(v6 + 8 * (((v9 == 227) * a2) ^ a3)))();
}

void sub_23AB91BB4(uint64_t a1)
{
  v1 = *(a1 + 4) - 742307843 * ((2 * (a1 & 0x782C26B9) - a1 + 131324230) ^ 0x19F15413);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_23AB91CE0(uint64_t a1)
{
  v1 = ((*(a1 + 4) ^ (1388665877 * ((1450162120 - (a1 | 0x566FB7C8) + (a1 | 0xA9904837)) ^ 0x243D2ADB))) - 942) | 0x502;
  v2 = *(*(a1 + 8) + 4) + v1;
  v4 = v2 - 1173456194;
  v3 = v2 - 1173456194 < 0;
  v5 = 1173456194 - v2;
  if (v3)
  {
    v4 = v5;
  }

  return (*(*(&off_284DD4450 + v1 - 1327) + 8 * (((v4 < 1) * (((v1 - 475919773) & 0x1C5DF7FF) - 1968)) ^ v1) - 4))();
}

uint64_t sub_23AB91E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 128) = v17 - 1785193651 * ((((v19 - 136) | 0x2D91D36C) - (v19 - 136) + ((v19 - 136) & 0xD26E2C90)) ^ 0x3D81A089) + 700;
  *(v19 - 120) = v15;
  *(v19 - 136) = &a15;
  v20 = (*(v16 + 8 * (v17 ^ 0x902)))(v19 - 136);
  return (*(v16 + 8 * (((v18 == ((v17 + 585) ^ 0x39F)) * (((2 * v17) ^ 0x134) + 779)) ^ v17)))(v20);
}

uint64_t sub_23AB91EEC(__n128 a1)
{
  v6 = v3 + 2;
  v6[-1] = a1;
  *v6 = a1;
  return (*(v5 + 8 * (((v2 == 8) * v4) ^ (v1 + 1076))))();
}

uint64_t sub_23AB91EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38)
{
  v45 = (v43 - 228);
  v46 = vdupq_n_s32(0x1DA4DE3Bu);
  v47 = vdupq_n_s32(0x9DA4DE21);
  v48.n128_u64[0] = 0x8989898989898989;
  v48.n128_u64[1] = 0x8989898989898989;
  v49.n128_u64[0] = 0x1212121212121212;
  v49.n128_u64[1] = 0x1212121212121212;
  v114 = *(v39 + 8 * v38);
  v50 = *(v43 - 152);
  v51 = *(v43 - 148);
  v52 = *(v43 - 144);
  v53 = *(v43 - 132);
  if (v53 == 2)
  {
    v116 = vld4q_s8(v45);
    v78 = veorq_s8(v116.val[0], v48);
    v79 = vmovl_high_u8(v78);
    v80 = vmovl_u8(*v78.i8);
    v81 = veorq_s8(v116.val[1], v48);
    _Q21 = vmovl_high_u8(v81);
    _Q20 = vmovl_u8(*v81.i8);
    v84 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v85 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v86 = veorq_s8(v116.val[2], v48);
    v87 = vmovl_u8(*v86.i8);
    v88 = vmovl_high_u8(v86);
    v116.val[0] = veorq_s8(v116.val[3], v48);
    v116.val[1] = vmovl_u8(*v116.val[0].i8);
    v116.val[2] = vmovl_u16(*v116.val[1].i8);
    v116.val[1] = vmovl_high_u16(v116.val[1]);
    v116.val[0] = vmovl_high_u8(v116.val[0]);
    v116.val[3] = vmovl_u16(*v116.val[0].i8);
    v116.val[0] = vmovl_high_u16(v116.val[0]);
    v89 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v88, 8uLL)), vshlq_n_s32(vmovl_high_u16(v79), 0x18uLL)), v116.val[0]);
    v90 = vorrq_s8(vorrq_s8(vorrq_s8(v85, vshll_n_u16(*v88.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v79.i8), 0x18uLL)), v116.val[3]);
    v91 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v87, 8uLL)), vshlq_n_s32(vmovl_high_u16(v80), 0x18uLL)), v116.val[1]);
    v92 = vorrq_s8(vorrq_s8(vorrq_s8(v84, vshll_n_u16(*v87.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v80.i8), 0x18uLL)), v116.val[2]);
    v116.val[0] = veorq_s8(vandq_s8(v89, v46), (*v116.val & __PAIR128__(0xFFFFFF1AFFFFFF1ALL, 0xFFFFFF1AFFFFFF1ALL)));
    v116.val[3] = veorq_s8(vandq_s8(v90, v46), (*&v116.val[3] & __PAIR128__(0xFFFFFF1AFFFFFF1ALL, 0xFFFFFF1AFFFFFF1ALL)));
    v116.val[1] = veorq_s8(vandq_s8(v91, v46), (*&v116.val[1] & __PAIR128__(0xFFFFFF1AFFFFFF1ALL, 0xFFFFFF1AFFFFFF1ALL)));
    v116.val[2] = veorq_s8(vandq_s8(v92, v46), (*&v116.val[2] & __PAIR128__(0xFFFFFF1AFFFFFF1ALL, 0xFFFFFF1AFFFFFF1ALL)));
    v116.val[0] = vaddq_s32(vsubq_s32(v89, vaddq_s32(v116.val[0], v116.val[0])), v47);
    v116.val[3] = vaddq_s32(vsubq_s32(v90, vaddq_s32(v116.val[3], v116.val[3])), v47);
    v116.val[1] = vaddq_s32(vsubq_s32(v91, vaddq_s32(v116.val[1], v116.val[1])), v47);
    v116.val[2] = vaddq_s32(vsubq_s32(v92, vaddq_s32(v116.val[2], v116.val[2])), v47);
    LODWORD(a35) = v116.val[2].i32[0];
    *(&a35 + 4) = vextq_s8(v116.val[2], v116.val[1], 4uLL);
    *(&a36 + 4) = vextq_s8(v116.val[1], v116.val[3], 4uLL);
    *(&a37 + 4) = vextq_s8(v116.val[3], v116.val[0], 4uLL);
    *(&a38 + 4) = vextq_s8(v116.val[0], v116.val[0], 4uLL).u64[0];
    HIDWORD(a38) = v116.val[0].i32[3];
    v93 = &a35 + v40 + 1465943369;
    *v93 = __ROR4__(*(v93 - 3) ^ v42 ^ *(v93 - 8) ^ *(v93 - 16) ^ *(&a35 + ((a3 + v44 - 1171) ^ (v40 + 284)) + 1465943369), 31) ^ 0x5BF5F4B2;
    return (*(v39 + 8 * ((29 * (v41 == 1465943306)) ^ (a3 + v44 - 1190))))(v51, v50);
  }

  else if (v53 == 1)
  {
    v115 = vld4q_s8(v45);
    v54 = veorq_s8(v115.val[0], v48);
    v55 = vmovl_u8(*v54.i8);
    v56 = vmovl_u16(*v55.i8);
    v57 = vmovl_high_u8(v54);
    v58 = vmovl_u16(*v57.i8);
    v59 = veorq_s8(v115.val[1], v48);
    v60 = vmovl_high_u8(v59);
    v61 = vmovl_u8(*v59.i8);
    v62 = vorrq_s8(vshll_high_n_u16(v60, 8uLL), vmovl_high_u16(v57));
    v63 = vorrq_s8(vshll_n_u16(*v60.i8, 8uLL), v58);
    v64 = vorrq_s8(vshll_high_n_u16(v61, 8uLL), vmovl_high_u16(v55));
    v65 = vorrq_s8(vshll_n_u16(*v61.i8, 8uLL), v56);
    v66 = veorq_s8(v115.val[2], v48);
    _Q21 = vmovl_u8(*v66.i8);
    _Q20 = vmovl_high_u8(v66);
    __asm
    {
      SHLL2           V22.4S, V20.8H, #0x10
      SHLL2           V23.4S, V21.8H, #0x10
    }

    v115.val[0] = veorq_s8(v115.val[3], v48);
    v115.val[1] = vmovl_high_u8(v115.val[0]);
    v115.val[0] = vmovl_u8(*v115.val[0].i8);
    v115.val[2] = vorrq_s8(vorrq_s8(v62, _Q22), vshlq_n_s32(vmovl_high_u16(v115.val[1]), 0x18uLL));
    v115.val[1] = vorrq_s8(vorrq_s8(v63, vshll_n_s16(*_Q20.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v115.val[1].i8), 0x18uLL));
    v115.val[3] = vorrq_s8(vorrq_s8(v64, _Q23), vshlq_n_s32(vmovl_high_u16(v115.val[0]), 0x18uLL));
    v115.val[0] = vorrq_s8(vorrq_s8(v65, vshll_n_s16(*_Q21.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v115.val[0].i8), 0x18uLL));
    v75 = vdupq_n_s32(0x3B49BC42u);
    v76 = vdupq_n_s32(0x9DA4DE22);
    v115.val[2] = vaddq_s32(vaddq_s32(v115.val[2], v76), vmvnq_s8(vandq_s8(vaddq_s32(v115.val[2], v115.val[2]), v75)));
    v115.val[1] = vaddq_s32(vaddq_s32(v115.val[1], v76), vmvnq_s8(vandq_s8(vaddq_s32(v115.val[1], v115.val[1]), v75)));
    v115.val[3] = vaddq_s32(vaddq_s32(v115.val[3], v76), vmvnq_s8(vandq_s8(vaddq_s32(v115.val[3], v115.val[3]), v75)));
    v115.val[0] = vaddq_s32(vaddq_s32(v115.val[0], v76), vmvnq_s8(vandq_s8(vaddq_s32(v115.val[0], v115.val[0]), v75)));
    LODWORD(a35) = v115.val[0].i32[0];
    *(&a35 + 4) = vextq_s8(v115.val[0], v115.val[3], 4uLL);
    *(&a36 + 4) = vextq_s8(v115.val[3], v115.val[1], 4uLL);
    *(&a37 + 4) = vextq_s8(v115.val[1], v115.val[2], 4uLL);
    *(&a38 + 4) = vextq_s8(v115.val[2], v115.val[2], 4uLL).u64[0];
    HIDWORD(a38) = v115.val[2].i32[3];
    return (*(v39 + 8 * ((a3 + v44 + 310) | 8)))(v46, v47);
  }

  else
  {
    v94 = (((*(v43 - 156) ^ 0xD345B5A0) + 750406240) ^ ((*(v43 - 156) ^ 0x2552942E) - 626168878) ^ ((*(v43 - 156) ^ 0x153FB4C7) - 356496583)) + (((*(v43 - 156) ^ 0xE1F37250) + 504139184) ^ ((*(v43 - 156) ^ 0xEF2B8A25) + 282359259) ^ ((*(v43 - 156) ^ 0xEDF06D3C) + 303010500)) - 30513585;
    v95 = (v94 ^ 0x81989512) & (2 * (v94 & 0xC822C443)) ^ v94 & 0xC822C443;
    v96 = ((2 * (v94 ^ 0x1D89592)) ^ 0x93F4A3A2) & (v94 ^ 0x1D89592) ^ (2 * (v94 ^ 0x1D89592)) & 0xC9FA51D0;
    v97 = v96 ^ 0x480A5051;
    v98 = (v96 ^ 0x1900100) & (4 * v95) ^ v95;
    v99 = ((4 * v97) ^ 0x27E94744) & v97 ^ (4 * v97) & 0xC9FA51D0;
    v100 = (v99 ^ 0x1E84140) & (16 * v98) ^ v98;
    v101 = ((16 * (v99 ^ 0xC8121091)) ^ 0x9FA51D10) & (v99 ^ 0xC8121091) ^ (16 * (v99 ^ 0xC8121091)) & 0xC9FA51D0;
    v102 = v100 ^ 0xC9FA51D1 ^ (v101 ^ 0x89A01100) & (v100 << 8);
    v103 = v94 ^ (2 * ((v102 << 16) & 0x49FA0000 ^ v102 ^ ((v102 << 16) ^ 0x51D10000) & (((v101 ^ 0x405A40C1) << 8) & 0x49FA0000 ^ 0x1AA0000 ^ (((v101 ^ 0x405A40C1) << 8) ^ 0x7A510000) & (v101 ^ 0x405A40C1)))) ^ 0x3B5EF2A8;
    v104 = (((v50 ^ 0xE396349C) + 476695396) ^ ((v50 ^ 0x26893F95) - 646528917) ^ ((v50 ^ 0x26379E40) - 641179200)) + (((*(v43 - 152) ^ 0x5F862F6) - 100164342) ^ ((*(v43 - 152) ^ 0xAF5A9915) + 1353017067) ^ ((*(v43 - 152) ^ 0x498A6EAA) - 1233809066)) - 648314340;
    *(v43 - 156) = v103;
    *(v43 - 152) = v104 ^ ((v104 ^ 0x1CCA8F31) - 264296635) ^ ((v104 ^ 0x2BFD7005) - 955721615) ^ ((v104 ^ 0xDB427745) + 934797105) ^ ((v104 ^ 0xFF7FDFFB) + 327841679) ^ 0xF022C2C3;
    v105 = (((v51 ^ 0x99EB9F65) + 1712611483) ^ ((v51 ^ 0x938C59CB) + 1819518517) ^ ((v51 ^ 0xE94F53E7) + 380677145)) + (((*(v43 - 148) ^ 0x8F329621) + 1892510175) ^ ((*(v43 - 148) ^ 0xDE0BBF5E) + 569655458) ^ ((*(v43 - 148) ^ 0xB211BC36) + 1307460554)) + 459699988;
    v106 = v105 & 0xAAEAB37E ^ 0x9C260184 ^ (v105 ^ 0x22C8B27E) & (2 * (v105 & 0xAAEAB37E));
    v107 = (2 * (v105 ^ 0x36CCB2FA)) & 0x9C260184 ^ 0x84220084 ^ ((2 * (v105 ^ 0x36CCB2FA)) ^ 0x384C0308) & (v105 ^ 0x36CCB2FA);
    v108 = (4 * v106) & 0x9C260180 ^ v106 ^ ((4 * v106) ^ 0x70980610) & v107;
    v109 = (4 * v107) & 0x9C260184 ^ 0x8C260184 ^ ((4 * v107) ^ 0x70980610) & v107;
    v110 = v108 ^ (16 * v108) & 0x9C260180 ^ ((16 * v108) ^ 0xC2601840) & v109 ^ 0x90200000;
    v111 = (16 * v109) & 0x9C260180 ^ 0x1C060184 ^ ((16 * v109) ^ 0xC2601840) & v109;
    v112 = (v110 << 8) & 0x9C260100 ^ v110 ^ ((v110 << 8) ^ 0x26018400) & v111;
    v113 = (((v52 ^ 0x16D555C3) - 383079875) ^ ((v52 ^ 0x33DD0A5C) - 870124124) ^ ((v52 ^ 0xC620CAD6) + 970929450)) + (((*(v43 - 144) ^ 0x13E87BB4) - 334003124) ^ ((*(v43 - 144) ^ 0x58735295) - 1483952789) ^ ((*(v43 - 144) ^ 0xA8B3BC68) + 1464615832)) - 835363602;
    *(v43 - 148) = v105 ^ (2 * ((v112 << 16) & 0x1C260000 ^ v112 ^ ((v112 << 16) ^ 0x1840000) & ((v111 << 8) & 0x9C260000 ^ 0x18260000 ^ ((v111 << 8) ^ 0x26010000) & v111))) ^ 0x7986253F;
    *(v43 - 144) = v113 ^ ((v113 ^ 0x235A5FF2) - 616459694) ^ ((v113 ^ 0x47169BF9) - 1089644965) ^ ((v113 ^ 0x1C550988) - 464600020) ^ ((v113 ^ 0x7FFDFFDF) - 2014956931) ^ 0xE4CCA715;
    return v114(v46, v47, v48, v49);
  }
}

uint64_t sub_23AB91F90(_DWORD *a1)
{
  v2 = *a1 ^ (2066391179 * ((-38269333 - (a1 | 0xFDB80E6B) + (a1 | 0x247F194)) ^ 0xAD60738C));
  result = (*(*(&off_284DD4450 + (v2 + 1776823321)) + 8 * (v2 + 1776825428) - 4))(*(&off_284DD4450 + (v2 ^ 0x9617D405)) - 4, sub_23ABB73E0);
  v4 = **(&off_284DD4450 + (v2 ^ 0x9617D455));
  if (result)
  {
    v4 = 1650164895;
  }

  a1[1] = v4;
  return result;
}

uint64_t sub_23AB92078@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 448) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x12) - 119;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((111 * v4) ^ 0x53Du)))(0);
}

uint64_t sub_23AB920EC(_DWORD *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = 1082434553 * ((a1 - 984585850 - 2 * (a1 & 0xC5506986)) ^ 0x5E179F0C);
  v3 = a1[10] - v2;
  v4 = a1[9] + v2;
  v9 = (1564307779 * (&v9 ^ 0x970DCC13)) ^ (v3 + 1084731835);
  v5 = *(&off_284DD4450 + (v3 ^ 0x76625EEC)) - 4;
  result = (*&v5[8 * (v3 - 1986156157)])(&v9);
  if (v4 > 143725019)
  {
    if (v4 == 428937691)
    {
      v7 = 3;
    }

    else
    {
      if (v4 != 143725020)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

LABEL_10:
    v8 = *&v5[8 * ((31 * ((*&v5[8 * (v3 - 1986156127)])(*(*(&off_284DD4450 + (v3 - 1986158176)) + 6 * v7 + 3) + ((v3 + 553373682) & 0x68A1D7DF ^ 0x8161DCFD), 0x100004077774924) == 0)) ^ (v3 - 1986156247))];
    __asm { BRAA            X8, X17 }
  }

  if (v4 == 143725016)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v4 == 143725019)
  {
    v7 = 2;
    goto LABEL_10;
  }

LABEL_11:
  a1[11] = 1650165149;
  return result;
}

uint64_t sub_23AB9232C()
{
  if (((((~(v5 - 1307) + v2) ^ (v6 - (v5 - 1307))) - 1) & ((v5 - 1307) - v2)) <= (v5 - 1125) - 186)
  {
    v7 = v3;
  }

  else
  {
    v7 = v3 + 1;
  }

  *v1 ^= 0x9C6224F9 ^ (v7 - 5);
  return (*(v4 + 8 * (((v0 - 1 == ((v5 - 258) | 0x102) - 1310) * (131 * ((v5 - 1125) ^ 0xB3) - 1212)) ^ (v5 - 1125))))();
}

uint64_t sub_23AB924BC@<X0>(int a1@<W8>)
{
  v8 = ((((2 * v1) | 0x8C36BF64) - v1 + 971284558) ^ 0x1539AF3E) * v6;
  *(v7 - 200) = 0;
  *(v7 - 208) = v8 + v3 + 349;
  *(v7 - 192) = a1 + v8;
  *(v7 - 184) = &STACK[0x418];
  *(v7 - 176) = &STACK[0x364];
  (*(v5 + 8 * (v3 ^ 0xB3B)))(v7 - 208);
  v9 = *(v7 - 204);
  STACK[0x3F8] = v2;
  return (*(v5 + 8 * (((v9 == v4 + ((v3 + 734821520) & 0xD43387B1) - 1936) * ((v3 + 464) ^ 0xC4)) ^ v3)))(137, 1, 3420974607, 262, 13, 4049821789, 1989569247, 1650165240);
}

uint64_t sub_23AB92710()
{
  v4 = (*(v3 + 8 * (v0 ^ 0xD40)))();
  LODWORD(STACK[0x320]) = v1;
  return (*(v3 + 8 * (((v0 + 205) * v2) ^ (v0 - 298))))(v4);
}

uint64_t sub_23AB92C34(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

uint64_t sub_23AB92C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (&STACK[0x540] + STACK[0x278] - 208);
  STACK[0x4C0] = v12;
  *v14 = 0x7676767676767676;
  v14[1] = 0x898989898F89899BLL;
  v15 = 1388665877 * ((2 * ((v10 ^ 0x40DC7611) & 0x40E52A28) - (v10 ^ 0x40DC7611) - 1088760363) ^ 0x726BC128);
  *(v13 - 208) = v15 + v9 + 68671065;
  *(v13 - 204) = v15 ^ 0xDF7498FC;
  (*(v11 + 8 * (v9 ^ 0xBE0)))(v13 - 208);
  LODWORD(STACK[0x2B8]) = 2124293861;
  v16 = (*(v11 + 8 * (v9 + 1281)))(336, 0x100004077774924);
  STACK[0x318] = v16;
  return (*(v11 + 8 * ((214 * ((((((v9 - 352766982) & 0x1506CCFF) + 192) ^ (v16 == 0)) & 1) == 0)) ^ v9)))(v16, v17, v18, v19, v20, v21, v22, v23, a9);
}

void sub_23AB92DD8(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4) + 1361651671 * ((a1 + 1990412117 - 2 * (a1 & 0x76A34755)) ^ 0xA581B7D9);
  v4 = *(a1 + 8);
  v3 = (143681137 * (((&v3 | 0xE46FD3F7) - &v3 + (&v3 & 0x1B902C08)) ^ 0x30C8CFAD)) ^ (v1 - 660);
  v2 = *(&off_284DD4450 + (v1 ^ 0x6BA)) - 4;
  (*&v2[8 * v1 + 3840])(&v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23AB93160@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xC99u));

  return v3(v1);
}

uint64_t sub_23AB93198()
{
  v6 = (v3 + v0);
  *v6 = v5;
  v6[1] = v5;
  return (*(v4 + 8 * ((97 * ((v2 ^ 0x6B4u) - 722 != ((v2 ^ 0x66666666) & v1))) ^ v2 ^ 0x61)))();
}

void sub_23AB93208(uint64_t a1)
{
  v1 = 1785193651 * ((2 * (a1 & 0x637DEBB9) - a1 + 478286918) ^ 0xC9267A3);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_23AB93318@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (49 * (v3 ^ 0x4A9) + 972)) ^ (v3 - 764))))();
}

uint64_t sub_23AB93638@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v7.i64[0] = 0x1212121212121212;
  v7.i64[1] = 0x1212121212121212;
  v8.i64[0] = 0x8989898989898989;
  v8.i64[1] = 0x8989898989898989;
  v9 = vaddq_s8(vsubq_s8(v3[1], vandq_s8(vaddq_s8(v3[1], v3[1]), v7)), v8);
  *(a2 + v6 - 220) = vaddq_s8(vsubq_s8(*v3, vandq_s8(vaddq_s8(*v3, *v3), v7)), v8);
  *(a2 + v6 - 220 + 16) = v9;
  return (*(v5 + 8 * ((((v4 & 0x60) != 32) * ((v2 - 124281229) & 0x64D6D1F3 ^ 0xAD)) ^ (a1 + v2 + 967))))();
}

void sub_23AB936C8(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8) - 1388665877 * ((a1 & 0xF983F256 | ~(a1 | 0xF983F256)) ^ 0x8BD16F45);
  v2 = *a1;
  v4 = (143681137 * ((&v4 & 0x97B91E2C | ~(&v4 | 0x97B91E2C)) ^ 0xBCE1FD89)) ^ (v1 + 938);
  v5 = v2;
  v3 = *(&off_284DD4450 + (v1 ^ 0x7C)) - 4;
  (*&v3[8 * (v1 ^ 0x826)])(&v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23AB93864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = **(a13 + 80) - (*(*(&off_284DD4450 + ((v13 - 1164) ^ (v16 - 12))) - 8) ^ 0x89);
  v18 = *(v15 + 8 * ((481 * ((v17 ^ 0xFFF5F775) + ((2 * v17) & 0xFFEBEEEA) - 92303632 != v14)) ^ (v13 - 1164) ^ (v16 - 1217)));
  return v18(v18, a2, a3, a4);
}

uint64_t sub_23AB93948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, _DWORD *a16)
{
  v20 = 1388665877 * ((2 * ((v19 - 128) & 0x4B42278) - (v19 - 128) + 2068569478) ^ 0xF6E6BF6A);
  v21 = (*a16 ^ 0x2FFE4AB7) * *(*a11 + 16);
  *(v19 - 104) = v20 + 1173454827;
  *(v19 - 120) = a12;
  *(v19 - 112) = &a15;
  *(v19 - 128) = ((v21 ^ 0xFBEF3FAB) + 1291440127 + ((v16 - 136414180) & (2 * v21))) ^ v20;
  *(v19 - 124) = v20 + v16 + 368;
  v22 = (*(v17 + 8 * (v16 + 1305)))(v19 - 128);
  return (*(v17 + 8 * ((189 * (v18 == 1)) ^ v16)))(v22);
}

uint64_t sub_23AB93A60(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17)
{
  v19 = v18 + 1626078819 > a17;
  if (a17 < 0x60EBFE23 != (v18 + 1626078819) < 0x60EBFE23)
  {
    v19 = (v18 + 1626078819) < 0x60EBFE23;
  }

  return (*(v17 + 8 * ((52 * (((a3 + a2 - 110) ^ v19) & 1)) ^ (a3 + a2 + 1947))))();
}

uint64_t sub_23AB93B5C@<X0>(int a1@<W8>)
{
  v5 = ((v1 & 0x3F) + v4 - 228 + 9);
  *(v5 - 1) = 0x8989898989898989;
  *v5 = 0x8989898989898989;
  return (*(v3 + 8 * ((((((v2 - 4) ^ 0x4DE) & a1) != 16) * (v2 - 1238)) ^ (v2 - 4))))();
}

uint64_t sub_23AB93BB4()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 - dword_27DFC8A98) ^ 0xA1)) ^ byte_23AC74FA0[byte_23AC80E70[(117 * ((qword_27DFC8A88 - dword_27DFC8A98) ^ 0xA1))] ^ 0xE4]) - 38);
  v1 = *(v0 - 4);
  v2 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 - v1) ^ 0xA1)) ^ byte_23AC787A0[byte_23AC74DA0[(117 * ((qword_27DFC8A88 - v1) ^ 0xA1))] ^ 5]) - 192);
  v3 = 1793648501 * (((*(v2 - 4) ^ v1) - &v5) ^ 0x985AED203B07ABA1);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  v7 = (1564307779 * (((v6 | 0x4755EC44) - v6 + (v6 & 0xB8AA13B8)) ^ 0xD0582057)) ^ 0x1F0;
  LOBYTE(v3) = 117 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xA1);
  v8 = *(&off_284DD4450 + (*(off_284DD4610 + (*(off_284DD49B8 + v3 - 4) ^ 0xE1u) - 12) ^ v3) + 90) - 4;
  LOBYTE(v0) = 117 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xA1);
  return (*(*(&off_284DD4450 + ((117 * ((qword_27DFC8A88 + dword_27DFC8A98) ^ 0xA1)) ^ byte_23AC7BE20[byte_23AC788A0[(117 * ((qword_27DFC8A88 + dword_27DFC8A98) ^ 0xA1))] ^ 0xCE]) - 174) + 8 * (*(off_284DD44B8 + (*(off_284DD47D0 + v0 - 8) ^ 0xE8u) - 12) ^ v0) + 16516))(v6);
}

void sub_23AB93EA8(_DWORD *a1)
{
  v1 = 50899313 * ((-2 - ((a1 | 0xF0C6571) + (~a1 | 0xF0F39A8E))) ^ 0x38925ED8);
  v2 = a1[2] + v1;
  v3 = a1[7] ^ v1;
  v4 = *(*a1 + 4);
  v6 = v4 - 1173454827;
  v5 = v4 - 1173454827 < 0;
  v7 = 1173454827 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  __asm { BRAA            X13, X17 }
}

void sub_23AB93FB4(uint64_t a1)
{
  v1 = *(a1 + 40) - 1564307779 * ((2 * (a1 & 0x6232EE25) - a1 - 1647504934) ^ 0xAC0DDC9);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_23AB940FC@<X0>(int a1@<W8>)
{
  v4 = ((v1 & 0xBA0E8015) << (a1 ^ 0xFE)) & (v1 ^ 0xBAECDA90) ^ v1 & 0xBA0E8015;
  v5 = ((2 * (((a1 ^ 0x7E1) - 823011950) ^ v1)) ^ 0xE9FEB54A) & (((a1 ^ 0x7E1) - 823011950) ^ v1) ^ (2 * (((a1 ^ 0x7E1) - 823011950) ^ v1)) & 0x74FF5AA4;
  v6 = v5 ^ 0x14014AA5;
  v7 = (v5 ^ 0x647F4A00) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xD3FD6A94) & v6 ^ (4 * v6) & 0x74FF5AA4;
  v9 = v7 ^ 0x74FF5AA5 ^ (v8 ^ 0x50FD4A80) & (16 * v7);
  v10 = (16 * (v8 ^ 0x24021021)) & 0x74FF5AA0 ^ 0x300A50A5 ^ ((16 * (v8 ^ 0x24021021)) ^ 0x4FF5AA50) & (v8 ^ 0x24021021);
  v11 = (v9 << 8) & 0x74FF5A00 ^ v9 ^ ((v9 << 8) ^ 0xFF5AA500) & v10;
  return (*(v2 + 8 * ((1744 * ((v3 ^ (4 * v1) ^ (8 * ((v11 << 16) & 0x14FF0000 ^ v11 ^ ((v11 << 16) ^ 0x1AA50000) & ((v10 << 8) & 0x14FF0000 ^ 0xA50000 ^ ((v10 << 8) ^ 0x1F5A0000) & v10)))) == 1748555132)) ^ a1)))();
}

uint64_t sub_23AB94294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = (*(v59 + 8 * (v57 ^ 0xD40u)))(a57);
  STACK[0x450] = STACK[0x278] - 1824;
  LODWORD(STACK[0x320]) = v58;
  return (*(v59 + 8 * (((((v57 - 638) | 0x51) - 730) * (STACK[0x358] == 0)) ^ (v57 - 568))))(v60);
}

uint64_t sub_23AB943E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = (v18 - 653) ^ (210068311 * ((((v19 - 136) | 0x4F741E39) + (~(v19 - 136) | 0xB08BE1C6)) ^ 0xBDFFB1D0));
  *(v19 - 136) = a14;
  *(v19 - 128) = &a15;
  (*(v16 + 8 * (v18 + 431)))(v19 - 136);
  v20 = 1785193651 * ((-597389340 - ((v19 - 136) | 0xDC648FE4) + ((v19 - 136) | 0x239B701B)) ^ 0x338B03FE);
  *(v19 - 136) = (v18 - 609) ^ v20;
  *(v19 - 120) = 1015101193 - v20;
  *(v19 - 128) = v15;
  (*(v16 + 8 * (v18 + 517)))(v19 - 136);
  *(v19 - 112) = v18 - 1564307779 * ((2 * ((v19 - 136) & 0x7D293358) - (v19 - 136) + 47631520) ^ 0x95DB00B3) - 778;
  *(v19 - 120) = a14;
  *(v19 - 136) = v15;
  v21 = (*(v16 + 8 * (v18 ^ 0xE77)))(v19 - 136);
  return (*(v16 + 8 * ((123 * (((v18 + 26) ^ (*(v19 - 128) + v17 < ((v18 - 1203909790) & 0x47C22F77 ^ 0x8EB0D57D))) & 1)) ^ v18)))(v21);
}

uint64_t sub_23AB94584@<X0>(char a1@<W3>, int a2@<W5>, uint64_t a3@<X8>)
{
  v6 = STACK[0x4D0];
  v7 = *(a3 + 72);
  v8 = a2 + 8616717;
  *(v6 + v8) = (HIBYTE(v7) ^ 0xE3) - (a1 & (2 * (HIBYTE(v7) ^ 0xE3))) - 119;
  *(v6 + v8 + 1) = (BYTE2(v7) ^ 0x28) - 2 * ((BYTE2(v7) ^ 0x28) & 0xB ^ BYTE2(v7) & 2) - 119;
  *(v6 + v8 + 2) = (BYTE1(v7) ^ v4) - 2 * ((BYTE1(v7) ^ v4) & 0xB ^ BYTE1(v7) & 2) - 119;
  *(v6 + v8 + 3) = v7 ^ 0xC0;
  return (*(v5 + 8 * (((*(a3 + 92) <= 4u) | (32 * (*(a3 + 92) <= 4u))) ^ v3)))();
}

uint64_t sub_23AB946E0()
{
  v7 = (v2 - 32);
  v8 = (v3 - 32);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v4 + 8 * (((v1 == 32) * ((v0 ^ (v6 + 1641)) - 740)) ^ (v5 + v0 + 525))))();
}

uint64_t sub_23AB946F0(uint64_t a1, uint64_t a2)
{
  v3 = LODWORD(STACK[0x2B4]) - 1027;
  v4 = STACK[0x4A8];
  STACK[0x340] = *(v2 + 8 * (LODWORD(STACK[0x2B4]) - 1240));
  v5 = STACK[0x250];
  STACK[0x508] = v4;
  LODWORD(STACK[0x514]) = 1866308703;
  STACK[0x480] = v5;
  return (*(v2 + 8 * ((((*(v4 + 68) & (((v3 - 769538335) & 0x2DDE3F1Bu) - 1753)) - 44 > 0xFFFFFFBF) * (((v3 + 812149876) & 0xCF9797F3) - 1360)) ^ v3)))(a1, a2, 4034, 1518);
}

uint64_t sub_23AB94710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, int a45)
{
  STACK[0x470] = *(v47 + 8 * v45);
  STACK[0x518] = v46;
  STACK[0x520] = v46;
  v50 = STACK[0x450];
  v51 = &STACK[0x540] + STACK[0x450];
  STACK[0x528] = v51;
  STACK[0x450] = v50 + 320;
  v52 = *(v46 + 72);
  LODWORD(STACK[0x424]) = v52;
  v53 = *(v46 + 76);
  LODWORD(STACK[0x3D0]) = v53;
  v54 = *(v46 + 80);
  LODWORD(STACK[0x2CC]) = v54;
  LODWORD(STACK[0x3C4]) = *(v46 + 84);
  v55 = *(v46 + 96);
  if (v55 == 2)
  {
    LODWORD(STACK[0x440]) = *(v46 + 88);
    LODWORD(STACK[0x324]) = 219426514;
    return (*(v47 + 8 * ((112 * ((a45 & 0xAF82333B) != 0x1FB)) ^ a45 & 0xAF82333B)))(3707646207, 1542845618, 262, 493, 3811087689, 4294965523, 2460112644);
  }

  else if (v55 == 1)
  {
    v56 = LODWORD(STACK[0x2B4]) - 92;
    v57 = *(v46 + ((LODWORD(STACK[0x2B4]) + 290) | 0x180u) - 1984) ^ 0x89 | ((*(v46 + 1) ^ 0x89) << 8) | ((*(v46 + 2) ^ 0x89) << 16) | ((*(v46 + 3) ^ 0x89) << 24);
    *&v51[4 * ((((v48 - 219426514) ^ 0xD142ED2u) >> 2) ^ 0x3450BB4)] = v49 + v57 - ((2 * v57) & 0x3B49BC42);
    return (*(v47 + 8 * (v56 ^ 0x10)))();
  }

  else
  {
    v59 = (((v52 ^ 0x9E5EFFEC) + 1637941268) ^ ((v52 ^ 0x5B4F7A6) - 95745958) ^ ((v52 ^ 0x78C29D03) - 2026020099)) + (((*(v46 + 72) ^ 0xEE87693D) + 293115587) ^ ((*(v46 + 72) ^ 0x71AB6180) - 1907057024) ^ ((*(v46 + 72) ^ 0x7C049DF4) - 2080677364)) + 981631715;
    v60 = (((v53 ^ 0x22E88E1E) - 585666078) ^ ((v53 ^ 0x2AD08DBC) - 718310844) ^ ((v53 ^ 0xEB1096EB) + 351234325)) + (((*(v46 + 76) ^ 0x9AE3C808) + 1696348152) ^ ((*(v46 + 76) ^ 0xAA1288ED) + 1441625875) ^ ((*(v46 + 76) ^ 0xD3D9D5AC) + 740698708)) + 348906909;
    *(v46 + 72) = v59 ^ ((v59 ^ 0xD172088F) + 1522315042) ^ ((v59 ^ 0xCD5D1DA) - 2028243339) ^ ((v59 ^ 0xC67BEEFB) + 1303726422) ^ ((v59 ^ 0x6FED6FFF) - 467417006) ^ 0x9719CD18;
    *(v46 + 76) = v60 ^ ((v60 ^ 0xCFDA8AD9) + 2120207918) ^ ((v60 ^ 0x9FB436A2) + 774992471) ^ ((v60 ^ 0x71FBF8C7) - 1065436108) ^ ((v60 ^ 0x6FEFFFB7) - 563430588) ^ 0xAD522E42;
    v61 = (((v54 ^ 0x3D497F23) - 1028226851) ^ ((v54 ^ 0xD579E460) + 713431968) ^ ((v54 ^ 0xB180E0A) - 186125834)) + (((*(v46 + 80) ^ 0x6DB29D8A) - 1840422282) ^ ((*(v46 + 80) ^ 0xC61C4BE6) + 971224090) ^ ((*(v46 + 80) ^ 0x48864325) - 1216758565)) - 566691267;
    v62 = (v61 ^ 0xE252B444) & (2 * (v61 & 0xE8183055)) ^ v61 & 0xE8183055;
    v63 = ((2 * (v61 ^ 0x6242F4E6)) ^ 0x14B58966) & (v61 ^ 0x6242F4E6) ^ (2 * (v61 ^ 0x6242F4E6)) & 0x8A5AC4B2;
    v64 = v63 ^ 0x8A4A4491;
    v65 = (v63 ^ 0x8020) & (4 * v62) ^ v62;
    v66 = ((4 * v64) ^ 0x296B12CC) & v64 ^ (4 * v64) & 0x8A5AC4B0;
    v67 = (v66 ^ 0x84A0080) & (16 * v65) ^ v65;
    v68 = ((16 * (v66 ^ 0x8210C433)) ^ 0xA5AC4B30) & (v66 ^ 0x8210C433) ^ (16 * (v66 ^ 0x8210C433)) & 0x8A5AC4B0;
    v69 = v67 ^ 0x8A5AC4B3 ^ (v68 ^ 0x80084000) & (v67 << 8);
    *(v46 + 80) = v61 ^ (2 * ((v69 << 16) & 0xA5A0000 ^ v69 ^ ((v69 << 16) ^ 0x44B30000) & (((v68 ^ 0xA528483) << 8) & 0xA5A0000 ^ 0x1A0000 ^ (((v68 ^ 0xA528483) << 8) ^ 0x5AC40000) & (v68 ^ 0xA528483)))) ^ 0x1FA12C7A;
    v70 = (((LODWORD(STACK[0x3C4]) ^ 0xAB12A375) + 1424841867) ^ ((LODWORD(STACK[0x3C4]) ^ 0xEC68BD26) + 328680154) ^ ((LODWORD(STACK[0x3C4]) ^ 0xA4528B1A) + 1538094310)) + 703893245 + (((*(STACK[0x518] + 84) ^ 0x60F1DACF) - 1626462927) ^ ((*(STACK[0x518] + 84) ^ 0xA443D5) - 10765269) ^ ((*(STACK[0x518] + 84) ^ 0x837D0C53) + 2088956845));
    *(STACK[0x518] + 84) = v70 ^ ((v70 ^ 0xEFC07A0D) + 1939661210) ^ ((v70 ^ 0xF09AD0B7) + 1824934692) ^ ((v70 ^ 0x4322312A) - 545346881) ^ ((v70 ^ 0x3FDBFFFB) - 1551408016) ^ 0x808BF122;
    STACK[0x450] -= 320;
    return (STACK[0x470])(a1, a2, 262);
  }
}

uint64_t sub_23AB949C4@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v3 - 990;
  v6 = (*(v4 + 8 * (v3 + 695)))(**(v2 + 8 * ((v3 - 990) ^ 0x1AD)), va, ((((a1 - 1070745785) & 0xFFFFF000 ^ 0xCD3FBA48 ^ ((v3 - 1432) | 0x408)) + 683707331) ^ (((a1 - 1070745785) & 0xFFFFF000 ^ 0x89573D24) + 1822951592) ^ (((((v3 - 714960418) & 0x2A9D6DFD) + 1147698672) ^ (a1 - 1070745785) & 0xFFFFF000) - 1583892761)) + 436259452, 1) != 0;
  return (*(v4 + 8 * ((122 * v6) ^ v5)))();
}

uint64_t sub_23AB94AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *(*(a14 + 96) + 504) = v16 + 1;
  *(*(a14 + 96) + 496) = a16 - 1;
  v19 = 1785193651 * (((v18 - 160) & 0xB6946BFA | ~((v18 - 160) | 0xB6946BFA)) ^ 0x597BE7E0);
  *(v18 - 144) = v19 ^ 0xE3C8E420;
  *(v18 - 156) = 17098380 - v19;
  STACK[0x2F8] = &STACK[0x28C];
  v20 = (*(v17 + 17064))(v18 - 160);
  return (*(v17 + 8 * ((113 * (a16 - 2124293590 + (STACK[0x2D0] & 0x3F) < 0xFFFFFFC0)) ^ 0x91u)))(v20);
}

uint64_t sub_23AB94C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = 1785193651 * ((((2 * v15) | 0x12F38744) - v15 - 158974882) ^ 0x1969B047);
  *(v20 - 128) = v16;
  *(v20 - 120) = (v14 ^ 0x3DBF374A) - v21 + ((v14 << (v19 + 20)) & 0x7B7E6E94) - 20840514;
  *(v20 - 136) = (v19 - 19) ^ v21;
  (*(v17 + 8 * (v19 + 1107)))(v20 - 136);
  *(v20 - 120) = a14;
  *(v20 - 136) = v18;
  *(v20 - 112) = v19 - 714 - 1564307779 * ((-3731084 - (v15 | 0xFFC71174) + (v15 | 0x38EE8B)) ^ 0x97352298) + 526;
  v22 = (*(v17 + 8 * ((v19 - 714) ^ 0x96F)))(v20 - 136);
  return (*(v17 + 8 * ((28 * (*(v20 - 128) - 2087451935 + ((v19 - 989715455) & 0x3AFDDA97u) - 369 - 277 < 0xFDAEF7CA)) | (v19 - 714))))(v22);
}

uint64_t sub_23AB94D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + v3 + 4) = **(a2 + 8);
  v4 = *(a2 + 4) - 189077349;
  v5 = v4 < 0x73590E30;
  v6 = v4 > 0x73590E31;
  if (v5)
  {
    v6 = v5;
  }

  return (*(a3 + 8 * ((123 * v6) ^ 0x58D)))();
}

uint64_t sub_23AB94E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, int a18)
{
  v25 = v20 + 1;
  v26 = &a18 + 6 * (v25 + a6);
  v26[2] = v22;
  v26[3] = v23;
  *(v26 + 2) = a13;
  v26[6] = a15;
  a18 = v25;
  return (*(v21 + 8 * ((818 * (v19 + a4 < ((((v18 - 218) | 0x606) - v24 - 426) ^ 0xA58CB688))) ^ v18)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_23AB94EA4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4) ^ (1785193651 * ((a1 + 1904275869 - 2 * (a1 & 0x7180F19D)) ^ 0x61908278));
  v2 = *(*(a1 + 8) + 4);
  if (v2 - 1173454827 < 0)
  {
    v3 = 1173454827 - v2;
  }

  else
  {
    v3 = v2 - 1173454827;
  }

  v7 = *(a1 + 8);
  v6 = v1 - 1361651671 * ((((2 * v5) | 0x3B7DE94) - v5 - 31190858) ^ 0xD2F91FC6) + 1080;
  v4 = *(&off_284DD4450 + (v1 ^ 0x272)) - 4;
  (*&v4[8 * (v1 ^ 0xA31)])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23AB94FD8(uint64_t a1, unint64_t a2)
{
  v9 = (v5 + ((v6 + 127) ^ 0xAD) - 6) & 0xF;
  v10 = -v8 - v5 + 1;
  v12 = a2 > 0xF && (v10 + v4 + v9) > 0xF && (v10 + v2 + v9) > 0xF;
  v13 = v10 + v3 + v9;
  v15 = v12 && v13 > 0xF;
  return (*(v7 + 8 * ((118 * v15) ^ v6)))();
}

uint64_t sub_23AB95080@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = (v7 - 1);
  *(a3 + v10) = *(a4 + v10) ^ *(v5 + (v10 & 0xF)) ^ *((v10 & 0xF) + v6 + 5) ^ ((v8 + 69) * (v10 & 0xF)) ^ *((v10 & 0xF) + a5 + 1) ^ a1;
  return (*(v9 + 8 * (((v10 != 0) * (((v8 - 26) | a2) + 182)) ^ (v8 + 540))))();
}

uint64_t sub_23AB950EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v9 + v8;
  if (v12 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = -v12;
  }

  if (a2 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = -a2;
  }

  return (*(v11 + 8 * (((((v10 - 1703837194) & 0x658E7BEC) + 208) * (v13 > v14)) ^ v10)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_23AB95188(double a1, double a2, double a3, double a4, double a5, int8x16_t a6)
{
  v10 = v7 - 145;
  v11 = &v9[56].i32[3];
  v12 = vld1q_dup_f32(v11);
  v13.i64[0] = 0x8000000080000000;
  v13.i64[1] = 0x8000000080000000;
  v14.i64[0] = 0x100000001;
  v14.i64[1] = 0x100000001;
  a6.i64[0] = v9[57].i64[0];
  a6.i32[2] = v9[57].i32[2];
  v15 = vextq_s8(v12, a6, 0xCuLL);
  v16 = a6;
  v16.i32[3] = v9[57].i32[3];
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v16, vnegq_f32(v14)), vandq_s8(v15, v13)), 1uLL), *v9);
  v15.i32[0] = *(v6 + 4 * (v9[57].i32[0] & 1));
  v15.i32[1] = *(v6 + 4 * (v9[57].i32[1] & 1));
  v15.i32[2] = *(v6 + 4 * (v9[57].i32[2] & 1));
  v15.i32[3] = *(v6 + 4 * (v16.i8[12] & 1));
  *(v9 + 4 * ((v10 - 573) ^ 0xDLL)) = veorq_s8(vaddq_s32(vsubq_s32(v17, vandq_s8(vaddq_s32(v17, v17), vdupq_n_s32(0xFDF40BE0))), vdupq_n_s32(0x7EFA05F0u)), v15);
  return (*(v8 + 8 * v10))();
}

uint64_t sub_23AB95734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4[396] ^ ((*v4 & (v3 + 2147483449) | v4[623] & 0x80000000) >> 1);
  v4[623] = (v7 + v6 - ((2 * v7) & 0xCFC042C0)) ^ *(a3 + 4 * (*v4 & ((v3 ^ 0x5DBu) - 1309)));
  return (*(v5 + 8 * ((15 * (LODWORD(STACK[0x4CC]) > 0x26F)) ^ v3)))();
}

uint64_t sub_23AB95814@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v6 = v4;
  v7 = v4;
  v8 = (v3 - 756) ^ ((&v6 ^ 0x101073E5) * v2);
  return (*(v1 + 8 * (v3 + 1119)))(&v6);
}

uint64_t sub_23AB95908@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v10.val[0].i64[0] = (v6 - v3 - 1) & 0xF;
  v10.val[0].i64[1] = (v6 - v3 + 14) & 0xF;
  v10.val[1].i64[0] = (v6 - v3 + 13) & 0xF;
  v10.val[1].i64[1] = (v6 - v3 + 12) & 0xF;
  v10.val[2].i64[0] = (v6 - v3 + 11) & 0xF;
  v10.val[2].i64[1] = (v6 - v3 + 10) & 0xF;
  v10.val[3].i64[0] = (v6 - v3 + (a1 ^ 0xC7) + 48) & 0xF;
  v10.val[3].i64[1] = (v6 - v3) & 0xF ^ 8;
  *(v7 + -8 - v3 + v6) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a2 + -8 - v3 + v6), *(v4 + v10.val[0].i64[0] - 7)), veor_s8(*(v10.val[0].i64[0] + v5 - 2), *(v10.val[0].i64[0] + v2 - 5)))), 0x8989898989898989), vmul_s8(*&vqtbl4q_s8(v10, xmmword_23AC80FE0), 0x5959595959595959)));
  return (*(v8 + 8 * ((199 * (((a1 ^ 0x96) & v6) - 8 != v3)) ^ a1 ^ 0xC7)))(xmmword_23AC80FE0);
}

void sub_23AB95A4C(uint64_t a1)
{
  v1 = *(a1 + 16) - 2066391179 * (((a1 | 0xC3204B52) - a1 + (a1 & 0x3CDFB4AD)) ^ 0x6C07C94A);
  v2 = *(&off_284DD4450 + (v1 ^ 0x34E)) - 4;
  v3 = *&v2[8 * ((((*&v2[8 * (v1 ^ 0xB03)])(32, 0x101004023FF3BD5) != 0) * (((v1 - 814) | 0x142) ^ 0x19D)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23AB95B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, char *a16, unsigned int a17)
{
  a16 = &a13;
  a17 = v19 + ((((2 * &a15) | 0xAC9FB24E) - &a15 + 699410137) ^ 0x79685B3F) * v20 - 173;
  v21 = (*(v18 + 8 * (v19 + 1146)))(&a15);
  return (*(v18 + 8 * ((1006 * (a15 == ((2 * ((v19 + 1574747100) & 0x5050F633 ^ 0x5050B4C1)) ^ (v17 - 572)))) ^ v19)))(v21);
}

uint64_t sub_23AB95BFC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

void sub_23AB95C60(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 32) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && *(a1 + 16) != 0x3AE8D8D253E1E974;
  v1 = *(a1 + 40) + 1785193651 * ((2 * (a1 & 0xB8FC15ED) - a1 + 1191438866) ^ 0x571399F7);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_23AB95D54@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1388665877 * ((&v6 & 0x745EF103 | ~(&v6 | 0x745EF103)) ^ 0x60C6C10) + 1275;
  v7 = a1;
  result = (*(v3 + 8 * (v2 + 1607)))(&v6);
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_23AB95EA8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10, _BYTE *a11, uint64_t a12, uint64_t a13, _BYTE *a14, _BYTE *a15, uint64_t a16, _BYTE *a17, uint64_t a18, _BYTE *a19, uint64_t a20, uint64_t a21, uint64_t a22, _BYTE *a23, _BYTE *a24, _BYTE *a25, _BYTE *a26, _BYTE *a27, _BYTE *a28, _BYTE *a29, _BYTE *a30, _BYTE *a31, uint64_t a32, _BYTE *a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned int a43)
{
  *a11 = a2;
  *a14 = BYTE3(a2);
  a11[1] = BYTE6(v43);
  a10[1] = (a2 >> (((a35 + 98) | 6) ^ 0x27u)) ^ 0x30;
  a25[20] = v45;
  *a15 = BYTE5(v43);
  a25[64] = BYTE2(a2);
  a25[50] = BYTE3(v44);
  *a29 = BYTE1(a2);
  *a17 = v44;
  a25[26] = BYTE6(v44);
  *a28 = BYTE4(v44);
  a10[2] = BYTE1(v46);
  a25[45] = BYTE5(v44);
  *a33 = HIBYTE(v44);
  a25[11] = BYTE2(v46);
  *a30 = BYTE1(v45);
  *a10 = HIBYTE(v43);
  *a19 = BYTE2(v45);
  a25[52] = BYTE4(v45);
  *a23 = BYTE3(v45);
  v51 = *(a9 + 526 + (((v48 >> 33) & 0x80 | (v45 >> 41) & 0x7F) ^ 0x1D));
  a25[9] = BYTE6(v45);
  *a24 = (((v51 >> 4) | (16 * v51)) ^ 0xB ^ (((v51 >> 4) | (16 * v51)) >> 1) & 0x55) + 95;
  v52 = *(a12 + (((v45 >> 51) & 0xE0 | (v48 >> 59)) ^ 0xF3));
  a25[39] = v49 ^ 0x53;
  *a27 = (v52 ^ 0xBC) + 74;
  v53 = *(a12 + (((v49 >> 3) & 0xE0 | (v49 >> 11)) ^ 0xEF));
  v54 = (v47 >> 38) ^ 0xB0;
  a25[49] = BYTE5(v49) ^ 0xBB;
  a25[63] = BYTE3(v49) ^ 0xC1;
  a25[13] = BYTE6(v49) ^ 0x15;
  *a26 = BYTE2(v49) ^ 0x1D;
  *a31 = (v53 ^ 0xBC) + 74;
  a25[36] = BYTE4(v49) ^ 0xF2;
  a25[60] = BYTE1(v47) ^ 0x54;
  a25[27] = BYTE2(v47) ^ 0x11;
  a25[40] = (v49 ^ 0x4F15BBF2C11DE053) >> (v46 & 0x38) >> (v46 & 0x38 ^ 0x38u);
  a25[53] = BYTE3(v47) ^ 5;
  a25[59] = v47 ^ 0x4C;
  a25[22] = BYTE4(v47) ^ 0x2D;
  v55 = *(a22 + ((v54 & 0xFC | (v47 >> 46) & 3) ^ 0x97));
  a25[37] = -35 * ((((v54 & 0xFC | (v47 >> 46) & 3) ^ 0x86) - ((2 * v54) & 0xD0) + (v55 ^ 0xB2) + ((2 * v55) & 0x64) + 79) ^ 0x85);
  v56 = *(a9 + 526 + (((v47 >> 41) & 0x80 | (v47 >> 49) & 0x7F) ^ 0x56));
  a25[29] = HIBYTE(v47) ^ 0x30;
  a25[57] = (((v56 >> 4) | (16 * v56)) ^ 0xB) + ((((v56 >> 4) | (16 * v56)) >> 1) & 0x55) - 2 * ((((v56 >> 4) | (16 * v56)) >> 1) & 0x55 & (((v56 >> 4) | (16 * v56)) ^ 0xB)) + 95;
  **a32 = a13 + 1;
  v58 = *a32;
  v59 = ((*(*a32 + 17) << 32) | (*(*a32 + 16) << 40) | (*(*a32 + 30) << 48)) ^ __ROR8__(((*(*a32 + 21) << 51) | (*(*a32 + 35) << 43) | (*(*a32 + 6) << 35) | __ROR8__(*(*a32 + 54), 5)) ^ 0xE096EFB4A8A96AC5, 35) ^ (*(*a32 + 42) << 56);
  v60 = *(*a32 + 15) | (*(*a32 + 32) << 8) | (*(*a32 + 7) << 16) | (*(*a32 + 34) << 24) | (*(*a32 + 61) << 40);
  v61 = v59 ^ 0xA0E385D800DADEBALL;
  v62 = *(&off_284DD4450 + a35 - 1320);
  v63 = (*(v62 - 2 + (((((69 * v58[55]) - ((69 * v58[55]) ^ 0xE8)) ^ 0xFFFFFFF0) + (69 * v58[55])) ^ 0xD5)) - 18) ^ 0x57;
  v64 = (v63 >> 2) | (v63 << 6);
  v65 = ((*(*a32 + 51) << 56) | (*(*a32 + 56) << 48)) ^ 0x54664E15543AC295 ^ (((0xFFFFFFFF00000000 * v64) ^ (v60 - (v60 & 0xFFFFFF00FFFFFFFFLL | (v64 << 32))) ^ ((v64 << 32) - ((v64 << 33) & 0x10200000000) - 0x7311377E15B5C37ALL) ^ 0x8CEEC881EA4A3C86) + v60);
  v69 = ((v58[4] >> 4) | (16 * v58[4])) ^ 0x5CLL;
  LOBYTE(v60) = (*(v62 - 2 + ((69 * *(*a32 + 31)) ^ 0x3DLL)) - 18) ^ 0x57;
  v66 = ((v60 >> 2) | (v60 << 6)) << 32;
  v67 = *(*a32 + 8) << 24;
  v68 = *(*a32 + 33) << 16;
  v70 = ((((v68 & 0x450000 ^ 0xD9C851B8AAF72FCCLL ^ ((((((*(v62 + 529 + v69) >> 5) | (8 * *(v62 + 529 + v69))) << 8) ^ 0xC7ADB58FE5317D50) & (*(*a32 + 19) ^ 0xCFAFBDAFFFBDFF73) | *(*a32 + 19) & 0xAF) ^ 0xDE1A8DCD498B6AF8) & (v68 ^ 0xFFBFBDFFFFFFFFFFLL)) & ~v67 | v67 & 0xFFFFFFFFF9FFFFFFLL) ^ 0x3EC7267BC0D5239DLL) & ~v66 | v66 & 0x7E00000000) ^ ((v58[38] << 40) | (v58[43] << 48));
  return sub_23AB96698((a35 - 1438) | 0x606u, 0x2E0000000000, 87, v65, ((v70 & 0x4AF54021979D7FCDLL ^ (v58[46] << 56) & 0x4A00000000000000 ^ 0xB54BBFDE79628536) & (v70 & 0xB50ABFDE68628032 ^ ((v58[46] << 56) & 0xB58CEFB5A63DF893 | 0x4873104A59C2076CLL)) | (v70 & 0x4AF54021979D7FCDLL ^ (v58[46] << 56) & 0x4A00000000000000) & 0x2844021861D7881) ^ 0xFEFB5FCB9FDADFDDLL, v61, a43, *(v50 - 160), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_23AB966E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  v26 = (v21 - 246031244) & 0xEAA23F7;
  v27 = 1785193651 * ((v25 - 297738650 - 2 * ((v25 - 128) & 0xEE40DEE6)) ^ 0xFE50AD03);
  *(v25 - 112) = (v22 ^ 0x3D97F74B) - v27 + ((v22 << (((v21 + 116) & 0xF7) + 30)) & 0x7B2FEE96) - 18268227;
  *(v25 - 120) = &a19;
  *(v25 - 128) = (v21 + 99) ^ v27;
  (*(v20 + 8 * (v21 ^ 0xB37)))(v25 - 128);
  *(v25 - 104) = v26 - (((v23 | (v25 - 128)) - ((v25 - 128) & v23)) ^ 0x8F92C8F5) * v24 - 178;
  *(v25 - 112) = v19;
  *(v25 - 128) = &a17;
  v28 = (*(v20 + 8 * (v26 + 1129)))(v25 - 128);
  return (*(v20 + 8 * (((*(v25 - 120) - 2087451935 >= ((35 * (v26 ^ 0x3FE)) ^ 0xC641C989)) * (((v26 ^ 0x3FE) + 385) ^ 0x66D)) ^ v26)))(v28);
}

uint64_t sub_23AB968A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v44 = *(v16 + 8 * (v15 - 29));
  v23 = STACK[0x2C8];
  v24 = STACK[0x2CC];
  v25 = LOBYTE(STACK[0x2D8]);
  if (v25 == 2)
  {
    v27 = (a6 + 80) | 0x200;
    v28 = &STACK[0x278] + v19 + 602771622;
    v29 = ((*v28 ^ v22) << 24) | ((v28[1] ^ v22) << 16) | ((*(&STACK[0x278] + ((v27 + 21) ^ (v19 - 387)) + 602771622) ^ v22) << 8);
    *v18 = (v29 | v28[3] ^ v22) + v17 - 2 * ((v29 | v28[3] ^ v22) & 0x1DA4DE3B ^ (v28[3] ^ v22) & 0x1A);
    v30 = *(v16 + 8 * ((253 * ((v19 + 602771626) > 0x3F)) ^ v27));
    return v30(602771626, v30, v21 + 16, 2378682584, 1378386136, 4294966821, a7, 1916391640, a9, a10, a11, a12, a13, a14, a15);
  }

  else if (v25 == 1)
  {
    v26 = *(&STACK[0x278] + v19 + 602771622) ^ v22 | ((*(&STACK[0x278] + v19 + v20 + 602771342) ^ v22) << 8) | ((*(&STACK[0x278] + v19 + 602771624) ^ v22) << 16) | ((*(&STACK[0x278] + v19 + 602771625) ^ v22) << 24);
    *v18 = v17 + v26 + (~(2 * v26) | 0xC4B643BD) + 1;
    return (*(v16 + 8 * ((1216 * ((v19 + 602771626) < 0x40)) | (a6 + 243))))(864309536, 2116932972, 4294966930, 127915372, 59003170, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  }

  else
  {
    v31 = (((LODWORD(STACK[0x2C0]) ^ 0xC6D41C4B) + 959177653) ^ ((LODWORD(STACK[0x2C0]) ^ 0xC133A784) + 1053579388) ^ ((LODWORD(STACK[0x2C0]) ^ 0xE4CF2E86) + 456184186)) + (((LODWORD(STACK[0x2C0]) ^ 0x15E0FA74) - 367065716) ^ ((LODWORD(STACK[0x2C0]) ^ 0x130CCD6A) - 319606122) ^ ((LODWORD(STACK[0x2C0]) ^ 0xE5C4A257) + 440098217)) + 939106693;
    v32 = (((LODWORD(STACK[0x2C4]) ^ 0x7C68437D) - 2087207805) ^ ((LODWORD(STACK[0x2C4]) ^ 0xE1F6EFC4) + 503910460) ^ ((LODWORD(STACK[0x2C4]) ^ 0x7EB639F0) - 2125871600)) + (((LODWORD(STACK[0x2C4]) ^ 0x3DE491BA) - 1038389690) ^ ((LODWORD(STACK[0x2C4]) ^ 0x31CDB6D7) - 835565271) ^ ((LODWORD(STACK[0x2C4]) ^ 0xEF01B224) + 285101532)) + 12631952;
    LODWORD(STACK[0x2C0]) = v31 ^ ((v31 ^ 0xBC4879A4) + 840954025) ^ ((v31 ^ 0x21F00EA0) - 1347975251) ^ ((v31 ^ 0xD3CFFE9A) + 1570273175) ^ ((v31 ^ 0x3FDFFF6D) - 1316456862) ^ 0x9280E3BA;
    LODWORD(STACK[0x2C4]) = v32 ^ ((v32 ^ 0x987D43CB) + 1575823563) ^ ((v32 ^ 0xD44A53A5) + 299514021) ^ ((v32 ^ 0x89AF7F4F) + 1279202383) ^ ((v32 ^ 0xFFF7FBDF) + 979865823) ^ 0xD94701B7;
    v33 = (((v23 ^ 0x1F9D4950) - 530401616) ^ ((v23 ^ 0x4F0E937A) - 1326355322) ^ ((v23 ^ 0xB3BB4F63) + 1279570077)) + (((LODWORD(STACK[0x2C8]) ^ 0x60912B22) - 1620126498) ^ ((LODWORD(STACK[0x2C8]) ^ 0xC9711D1A) + 915333862) ^ ((LODWORD(STACK[0x2C8]) ^ 0x4AC8A371) - 1254663025)) + 293109986;
    v34 = (((v24 ^ 0x85E94B33) + 2048308429) ^ ((v24 ^ 0xEBFD399) - 247452569) ^ ((v24 ^ 0x687E0DE3) - 1753091555)) + (((LODWORD(STACK[0x2CC]) ^ 0x9A22745A) + 1709018022) ^ ((LODWORD(STACK[0x2CC]) ^ 0xE1F51F3) - 236933619) ^ ((LODWORD(STACK[0x2CC]) ^ 0x7715B0E0) - 1997910240)) + 232621709;
    v35 = (v34 ^ 0xB1731210) & (2 * (v34 & 0xB873A405)) ^ v34 & 0xB873A405;
    v36 = ((2 * (v34 ^ 0xD1B3521A)) ^ 0xD381EC3E) & (v34 ^ 0xD1B3521A) ^ (2 * (v34 ^ 0xD1B3521A)) & 0x69C0F61E;
    v37 = v36 ^ 0x28401201;
    v38 = (v36 ^ 0x4180A01C) & (4 * v35) ^ v35;
    v39 = ((4 * v37) ^ 0xA703D87C) & v37 ^ (4 * v37) & 0x69C0F61C;
    v40 = (v39 ^ 0x2100D010) & (16 * v38) ^ v38;
    v41 = ((16 * (v39 ^ 0x48C02603)) ^ 0x9C0F61F0) & (v39 ^ 0x48C02603) ^ (16 * (v39 ^ 0x48C02603)) & 0x69C0F610;
    v42 = v40 ^ 0x69C0F61F ^ (v41 ^ 0x8006000) & (v40 << 8);
    LODWORD(STACK[0x2C8]) = v33 ^ ((v33 ^ 0x14B47502) - 1603478354) ^ ((v33 ^ 0x5565E937) - 507690855) ^ ((v33 ^ 0xF50111BA) + 1104787478) ^ ((v33 ^ 0xFFF7DBDF) + 1261400689) ^ 0xA80FC319;
    LODWORD(STACK[0x2CC]) = v34 ^ (2 * ((v42 << 16) & 0x69C00000 ^ v42 ^ ((v42 << 16) ^ 0x761F0000) & (((v41 ^ 0x61C0960F) << 8) & 0x69C00000 ^ 0x29000000 ^ (((v41 ^ 0x61C0960F) << 8) ^ 0x40F60000) & (v41 ^ 0x61C0960F)))) ^ 0x48DADD72;
    return v44(a1, &STACK[0x278]);
  }
}

uint64_t sub_23AB96974@<X0>(int a1@<W8>)
{
  result = (*(v3 + 8 * ((a1 + 907) ^ 0xE9D)))(v2);
  *(v1 + 16) = 502015531;
  return result;
}

uint64_t sub_23AB96B10@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v7 = *(*a2 + (v4 - 192923012)) ^ 0x89;
  v8 = ((*(*a2 + v4 - 192923357 + ((v6 - 1083) ^ 0x2E7)) ^ 0x89) << 24) | ((*(*a2 + (v4 - 192923014)) ^ 0x89) << 16) | ((*(*a2 + (v4 - 192923013)) ^ 0x89) << 8) | v7;
  return (*(v3 + 8 * ((4038 * (((v8 + v2 - 2 * (v8 & 0x1DA4DE3B ^ v7 & 0x1A)) & 0xFFFFFF ^ 0xA4DE21) - (*a1 ^ v5) != -469096601)) ^ v6)))();
}

uint64_t sub_23AB96BD4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v8 = 53 * ((a4 - 207) ^ 0x115);
  v9 = v5 + v6 + a2 + v8;
  v10 = v9 + 903939777 + v7 + (((v8 - 1234) | 0x40) ^ 0x4E25D3CB);
  v11 = (v9 > 0xFD5B0197) ^ (v10 < 0x2A4FE68);
  v12 = (((v8 - 1163) | 0x209) ^ 0x2A4FD81) + v9 > v10;
  if (v11)
  {
    v12 = v9 > 0xFD5B0197;
  }

  return (*(v4 + 8 * (((8 * v12) | (v12 << 7)) ^ v8)))();
}

uint64_t sub_23AB96C54(uint64_t a1, uint64_t a2, int a3)
{
  v8 = v5 < v6;
  if (v8 == (v4 + 1) > 0xFFFFFFFFD867205FLL)
  {
    v8 = ((409 * (a3 ^ 0x657u)) ^ v3) + v4 < v5;
  }

  return (*(v7 + 8 * ((v8 * (a3 - 1556)) ^ a3)))();
}

uint64_t sub_23AB96CB8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v48 = STACK[0x2E8];
  v49 = 1271307191 * LODWORD(STACK[0x368]) + 486579885;
  v50 = ((2 * ((v47 - 208) & 0x75F8ACA0) - (v47 - 208) + 168252254) ^ 0xC2669708) * v43;
  *(v47 - 208) = STACK[0x220];
  *(v47 - 160) = v44;
  *(v47 - 152) = a43;
  *(v47 - 200) = v49 ^ v50;
  *(v47 - 196) = ((2 * ((v47 + 48) & 0xA0) - (v47 + 48) + 94) ^ 8) * v43 - 68;
  *(v47 - 176) = (((((v45 + 815648933) & 0xCF622F33) + 2138306218) ^ a1) + 2 * a1 - 157287299) ^ v50;
  *(v47 - 172) = v45 - v50 - 913;
  *(v47 - 184) = v48;
  *(v47 - 168) = &STACK[0x3A8];
  v51 = (*(v46 + 8 * (v45 ^ 0xD3E)))(v47 - 208);
  v52 = *(v47 - 192);
  LODWORD(STACK[0x43C]) = v52;
  return (*(v46 + 8 * ((v52 == -1650139615) ^ v45)))(v51);
}

uint64_t sub_23AB96E04@<X0>(int a1@<W8>)
{
  v6 = *(v9 + 8);
  if ((v4 + a1 - 1) >= 0x7FFFFFFF)
  {
    v7 = -1948057642 - v2;
  }

  else
  {
    v7 = v2;
  }

  v10[1] = v7;
  *(v5 - 128) = v10;
  *(v5 - 120) = v6;
  *(v5 - 112) = (v1 + 219) ^ (210068311 * ((v5 - 128) ^ 0xF28BAFE8));
  return (*(v3 + 8 * (v1 ^ 0x539)))(v5 - 128);
}

uint64_t sub_23AB96EB8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, char a25, uint64_t a26, int a27, char a28, __int16 a29, char a30, int a31, int a32, char a33)
{
  v38 = 1082434553 * ((v37 + 1200005470 - 2 * ((v37 - 160) & 0x4786A1FE)) ^ 0xDCC15774);
  STACK[0x310] = &a28;
  STACK[0x2F0] = &a30;
  STACK[0x300] = &a33;
  *(v37 - 136) = v38 + v33 + 296;
  *(v37 - 148) = a4 + v38 + (((v33 + 980) | 0x140) ^ 0xFD7F897D);
  STACK[0x318] = &a25;
  STACK[0x320] = v35;
  HIDWORD(a10) = a4;
  v39 = (*(v34 + 8 * (v33 ^ 0x8CD)))(v37 - 160);
  return (*(v34 + 8 * ((1941 * (*(v37 - 152) == v36 + ((v33 - 49) | 0x12A) - 426)) ^ v33)))(v39, 102485690, 1270624488, HIDWORD(a10), 1144344271, 4142313495, 3150621782, 2249969338, a9, a10);
}

uint64_t sub_23AB974F0@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 ^ 0x4EB;
  **(a1 + 8) = v3 + ((2 * v6) ^ 0xACA) + (**(a1 + 8) ^ 0xD001B548) + 1 - (v5 & (2 * ((**(a1 + 8) ^ 0xD001B548) + 1))) - 1668;
  return (*(v4 + 8 * ((118 * (v1 == 1)) ^ v6)))();
}

uint64_t sub_23AB975C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  *(v37 - 144) = v34 - 1564307779 * ((((v37 - 144) | 0x12269339) - ((v37 - 144) & 0x12269339)) ^ 0x852B5F2A) - 451;
  *(v37 - 136) = v35;
  *(v37 - 128) = v36;
  (*(v33 + 8 * (v34 + 1348)))(v37 - 144);
  v38 = a23;
  *(v37 - 104) = &a33;
  *(v37 - 112) = (v34 - 51) ^ (1037613739 * (((v37 - 144) & 0x9143B375 | ~((v37 - 144) | 0x9143B375)) ^ 0xBFBE61F5));
  *(v37 - 144) = &a33;
  *(v37 - 136) = v38;
  *(v37 - 128) = &a22;
  *(v37 - 120) = v35;
  (*(v33 + 8 * (v34 + 1291)))(v37 - 144);
  *(v37 - 104) = a16;
  *(v37 - 112) = (v34 - 51) ^ (1037613739 * (((v37 - 144) & 0xEDD10B01 | ~((v37 - 144) | 0xEDD10B01)) ^ 0xC32CD981));
  *(v37 - 128) = &a22;
  *(v37 - 120) = v35;
  *(v37 - 144) = &a33;
  *(v37 - 136) = &a33;
  (*(v33 + 8 * (v34 + 1291)))(v37 - 144);
  v39 = 2 * (v37 - 144);
  *(v37 - 128) = v34 + 50899313 * (((v39 | 0x888781A4) - (v37 - 144) + 1002192686) ^ 0xC220484) - 562359683;
  *(v37 - 144) = &a33;
  *(v37 - 136) = a21;
  (*(v33 + 8 * (v34 + 1267)))(v37 - 144);
  *(v37 - 144) = v34 - 1564307779 * (((v39 | 0xFAC35DD6) - (v37 - 144) - 2103553771) ^ 0xEA6C62F8) - 451;
  *(v37 - 136) = &a29;
  *(v37 - 128) = &a33;
  (*(v33 + 8 * (v34 ^ 0xBBC)))(v37 - 144);
  *(v37 - 128) = (v34 + 111) ^ (210068311 * ((2 * ((v37 - 144) & 0x108F6268) - (v37 - 144) + 1869651348) ^ 0x9DFB327C));
  *(v37 - 144) = &a33;
  *(v37 - 136) = &a29;
  v40 = (*(v33 + 8 * (v34 ^ 0x4D5)))(v37 - 144);
  return (*(v33 + 8 * ((((v34 - 760743762) & 0x2D5805FE ^ 0x1F0) * (a20 != 0)) ^ (v34 - 219))))(v40);
}

void sub_23AB97670()
{
  v5 = STACK[0x300] + 128;
  STACK[0x4A8] = v5;
  v6 = 1785193651 * ((2 * (v2 & 0x270FB688) - v2 - 655341200) ^ 0xC8E03A95);
  *(v4 - 192) = (v1 - 473373733) ^ v6;
  *(v4 - 204) = 17098380 - v6;
  *(v4 - 200) = v5;
  v7 = v0;
  (*(v3 + 8 * (v1 | 0x810)))(v4 - 208);
  STACK[0x340] = *(v3 + 8 * v1);
  STACK[0x278] = v7;
  JUMPOUT(0x23ABCAFFCLL);
}

uint64_t sub_23AB977D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, unsigned int a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  STACK[0x278] = v58;
  *(a58 + 1560) = *STACK[0x388];
  *(a58 + 1552) = *(STACK[0x2F8] - 0x1F40B6A90E91AEDALL);
  v60 = STACK[0x250];
  v61 = STACK[0x458];
  *(*STACK[0x458] + 488) = *(STACK[0x250] + 8);
  *(*v61 + 480) = *v60;
  v62 = STACK[0x250];
  *(STACK[0x250] + 103) = (&STACK[0x370] ^ 0xBA) * (&STACK[0x370] + 17);
  *(v62 + 102) = (&STACK[0x370] ^ 0xBB) * (&STACK[0x370] + 18);
  return (*(v59 + 8 * ((1976 * (((3 * a49) ^ 0x443) != 104)) ^ a50)))();
}

uint64_t sub_23AB978B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v8 = vdupq_n_s32(0x2FFE4AB7u);
  *&STACK[0x268] = v8;
  *&STACK[0x278] = v8;
  return (*(v7 + 8 * ((1001 * (((a7 + 851591378) & 0xCD3DBCE5) - 188 == (a5 & 0xFFFFFFF8))) ^ (a7 - 295))))();
}

uint64_t sub_23AB979E0()
{
  v7 = v6 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v2 - v3 + v8 + 1;
  v10 = v2 + v8 + 1;
  v11 = v8 - v3 + (v4 + 259) + v1 - 556;
  v12 = v8 + v1 + 4;
  v13 = v8 - v3 + v0 + 6;
  v14 = v0 + ((v4 - 1165373806) & 0x457632F8 ^ 0x2BELL) + v8;
  v16 = v10 > v6 && v9 < v7;
  if (v12 > v6 && v11 < v7)
  {
    v16 = 1;
  }

  v19 = v13 < v7 && v14 > v6 || v16;
  return (*(v5 + 8 * (((8 * v19) | (16 * v19)) ^ v4)))(v14);
}

uint64_t sub_23AB97AD8(_DWORD *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1 - 143681137 * (a1 ^ 0xD4A71C5A);
  v3 = *(*(&off_284DD4450 + (v1 + 875954108)) - 4);
  v4 = (843532609 * ((&v3 + 148966729 - 2 * (&v3 & 0x8E10D49)) ^ 0x59812FF1)) ^ (v1 + 875954607);
  return (*(*(&off_284DD4450 + (v1 ^ 0xCBCA0070)) + 8 * (v1 + 875956194) - 4))(&v3);
}

uint64_t sub_23AB97BF8()
{
  v7 = ((v6 + 3809 - v2) & ((v6 + 3809) ^ ~(v2 ^ (v6 - 341))) | v2 & ~(v6 + 3809)) >= 0;
  v8 = STACK[0x238];
  v9 = (v6 - 286) | 0x122;
  *v3 = 0;
  v10 = ((v1 ^ (v1 >> 11) ^ v7) << 7) & 0x9D2C5680 ^ v1 ^ (v1 >> 11) ^ v7;
  v11 = (v9 ^ 0xEFC60522) & (v10 << 15) ^ v10 ^ (((v9 ^ 0xEFC60522) & (v10 << 15) ^ v10) >> 18);
  v12 = (v8 + (v0 - 1));
  v13 = -404660857 * ((*(*STACK[0x278] + (*STACK[0x270] & 0x3147F918)) ^ v12) & 0x7FFFFFFF);
  v14 = -404660857 * (v13 ^ HIWORD(v13));
  v15 = v14 >> ((v9 ^ 0x2Au) + 16);
  v16 = *(*(v4 + 8 * (v9 - 1228)) + v15 - 8);
  v17 = *(*(v4 + 8 * (v9 ^ 0x54A)) + v15 - 2);
  v18 = *(*(v4 + 8 * (v9 ^ 0x53C)) + v15 - 8);
  LOBYTE(v15) = -123 * v15;
  *v12 = v15 ^ v16 ^ v11 ^ v17 ^ v18 ^ v14;
  return (*(v5 + 8 * (v9 | (16 * (v0 == ((v16 ^ v11 ^ v17 ^ v18 ^ v14) != v15))))))();
}

void sub_23AB97C34(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 4) - 1173454827;
  if (v2 < 0)
  {
    v2 = 1173454827 - *(*(a1 + 16) + 4);
  }

  v1 = *(a1 + 32) - 1082434553 * ((a1 & 0xAE6522A8 | ~(a1 | 0xAE6522A8)) ^ 0xCADD2BDD);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_23AB97D48@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v7 = (a1 + v2 + v4);
  *v7 = v6;
  v7[1] = v6;
  return (*(v5 + 8 * ((1185 * (v2 + ((a2 - 358) | 0x203u) - 659 == v3)) ^ a2)))();
}

uint64_t sub_23AB97D88@<X0>(uint64_t a1@<X8>)
{
  v4 = (&STACK[0x28C] + a1);
  *v4 = 0x8989898989898989;
  v4[1] = 0x8989898989898989;
  return (*(v3 + 8 * ((1078 * (((4 * v1) ^ 0xA38u) - 116 == (v2 & 0x30))) ^ v1)))();
}

uint64_t sub_23AB97E1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = v4 < v6;
  if (v11 == v5 + 1 > (a4 + 2))
  {
    v11 = ((4 * v8) ^ 0x38 ^ v10) + v5 < v4;
  }

  return (*(v9 + 8 * ((v11 * v7) ^ v8)))();
}

uint64_t sub_23AB97E8C()
{
  v3 = 1361651671 * (((v2 - 208) & 0x1C657466 | ~((v2 - 208) | 0x1C657466)) ^ 0x30B87B15);
  *(v2 - 208) = v3 + v0 + 803;
  *(v2 - 176) = &STACK[0x348];
  *(v2 - 184) = &STACK[0x410];
  *(v2 - 200) = 0;
  *(v2 - 192) = v3 - 1843349552;
  v4 = (*(v1 + 8 * (v0 ^ 0x9FD)))(v2 - 208);
  return (*(v1 + 8 * (((*(v2 - 204) == -1650139615) * ((((v0 - 435795370) & 0x19F9B76F) + 31) ^ (v0 + 1346804311) & 0xAFB9676E)) ^ v0)))(v4);
}

uint64_t sub_23AB97F90@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 + a1);
  *v6 = v5;
  v6[1] = v5;
  return (*(v4 + 8 * ((1565 * (((v2 + 1592298707) & 0xA117775F ^ 0x64CLL) == (v1 & 0xFFFFFFFFFFFFFFF0))) ^ v2)))();
}

uint64_t sub_23AB980A0()
{
  v5 = (v2 + v4 - 220);
  *v5 = 0x8989898989898989;
  v5[1] = 0x8989898989898989;
  return (*(v3 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF0) == 16) * (v1 - 722)) ^ v1)))();
}

uint64_t sub_23AB9860C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v23 - 104) = v21 - ((((v23 - 128) | 0xC1D0FDDC) - (v23 - 128) + ((v23 - 128) & 0x3E2F0220)) ^ 0x56DD31CF) * v22 + 403;
  *(v23 - 128) = &a17;
  *(v23 - 112) = &a19;
  v24 = (*(v20 + 8 * (v21 ^ 0x9D2)))(v23 - 128);
  return (*(v20 + 8 * ((675 * (*(v23 - 120) > ((v21 - 2049366455) & 0x7A26D93Fu) + 592 + v19)) ^ v21)))(v24);
}

uint64_t sub_23AB986B8()
{
  v9 = (v6 + v4 + v0);
  *v9 = v8;
  v9[1] = v8;
  return (*(v7 + 8 * (((v4 + v2 - 722 != v3) * v5) ^ v1)))();
}

uint64_t sub_23AB986E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  (*(v70 + 8 * (v69 + 1871)))(*a69, v71, 2048);
  v72 = *(v70 + 8 * ((2028 * ((*(v70 + 8 * (v69 ^ 0x94E)))(*a69, &STACK[0x4B0], (LODWORD(STACK[0x378]) - 2124293525), 1) == ((5 * (v69 ^ 0x18) - 738) ^ (v69 + 801012000) & 0xD04187FD))) ^ v69));
  return v72();
}

uint64_t sub_23AB987E0@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 314511594;
  v10 = a2 - 1;
  v11 = *(v5 + v9);
  if (v11 == 137)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 9)
  {
    v12 = -1650139615;
    v13 = *(v2 + 16);
    v14 = *(v2 + 24) ^ v3;
    *result = v5;
    *(result + 8) = v6;
    *(result + 12) = v10;
    if (v14 == 17)
    {
      v15 = -561164329;
    }

    else
    {
      v15 = -561164330;
    }

    *(result + 16) = 192923015;
    *(result + 20) = v15;
    *(result + 24) = -1650139615;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 + 935)))();
    v12 = 1650165240;
  }

  *(v2 + 8) = v12;
  return result;
}

void sub_23AB988F8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16) ^ (1082434553 * ((-2 - ((a1 | 0x44839E58) + (~a1 | 0xBB7C61A7))) ^ 0x203B972D));
  if (*(*(a1 + 8) + 4) - 1173454827 >= 0)
  {
    v2 = *(*(a1 + 8) + 4) - 1173454827;
  }

  else
  {
    v2 = 1173454827 - *(*(a1 + 8) + 4);
  }

  if (*(*a1 + 4) - 1173454827 >= 0)
  {
    v3 = *(*a1 + 4) - 1173454827;
  }

  else
  {
    v3 = 1173454827 - *(*a1 + 4);
  }

  v7 = *(a1 + 8);
  v6[1] = v1 - 1361651671 * (((v6 | 0x3E36A72F) - (v6 & 0x3E36A72F)) ^ 0xED1457A3) + 14;
  v4 = *(&off_284DD4450 + (v1 ^ 0x6AC)) - 4;
  (*&v4[8 * (v1 ^ 0xEEF)])(v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_23AB98AB0@<X0>(int a1@<W8>)
{
  v7 = a1 + (v1 ^ v2) - 1311;
  *(v4 + v7) = *(v5 + v7);
  return (*(v6 + 8 * (((v7 == 0) * ((v1 ^ v2) - 1252 + (((v1 ^ v2) - 1278) | v3) - 109)) ^ ((v1 ^ v2) + 443))))();
}

uint64_t sub_23AB98AF8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  HIDWORD(v16) = a1 ^ 0x3289549;
  LODWORD(v16) = a1 ^ 0xE0000000;
  v17 = (v16 >> 27) + (a8 ^ v15 ^ v10 ^ v8) + (((a6 ^ 0x85C07391) + 2050985071) ^ ((a6 ^ 0x2C094A48) - 738806344) ^ ((a6 ^ 0x4AE1AC90) - 1256303760)) - 35337485 + (((*(v11 + 4 * (a3 + v13)) ^ 0x37BB435) - 58438709) ^ ((*(v11 + 4 * (a3 + v13)) ^ 0x61DFEA6B) - 1642064491) ^ ((*(v11 + 4 * (a3 + v13)) ^ 0xFF00807F) + 16744321));
  v18 = (v17 ^ 0xE5900456) & (2 * (v17 & 0xF1C29418)) ^ v17 & 0xF1C29418;
  v19 = ((2 * (v17 ^ 0xC6902C76)) ^ 0x6EA570DC) & (v17 ^ 0xC6902C76) ^ (2 * (v17 ^ 0xC6902C76)) & 0x3752B86E;
  v20 = v19 ^ 0x11528822;
  v21 = (v19 ^ 0x6003040) & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0xDD4AE1B8) & v20 ^ (4 * v20) & 0x3752B86C;
  v23 = (v22 ^ 0x1542A020) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x22101846)) ^ 0x752B86E0) & (v22 ^ 0x22101846) ^ (16 * (v22 ^ 0x22101846)) & 0x3752B860;
  v25 = v23 ^ 0x3752B86E ^ (v24 ^ 0x35028000) & (v23 << 8);
  return (*(v12 + 8 * ((a3 + 1 != v14 + 40) | v9)))(v17 ^ (2 * ((v25 << 16) & 0x37520000 ^ v25 ^ ((v25 << 16) ^ 0x386E0000) & (((v24 ^ 0x250380E) << 8) & 0x37520000 ^ 0x25420000 ^ (((v24 ^ 0x250380E) << 8) ^ 0x52B80000) & (v24 ^ 0x250380E)))) ^ 0x1CCB718Du);
}

uint64_t sub_23AB98D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53, unsigned __int8 a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v78 = (*(v74 + 8 * (v72 + 1232)))(*STACK[0x230], a2, a55 ^ 0x2BEA29A1u, (v72 + *(STACK[0x230] + 52) - 1106333799), &STACK[0x530], v76, a72, &STACK[0x1820]);
  if (v78 == 268435459)
  {
    return (*(v74 + 8 * (((((a69 < 3) ^ a54) & 1) * ((v75 - 862) ^ 0x1A4)) ^ (v75 - 494))))(v78, v79);
  }

  if (v78)
  {
    v80 = 1082434553 * ((~(v73 | 0xFBAFBA45) + (v73 & 0xFBAFBA45)) ^ 0x9F17B330);
    *(v77 - 200) = &STACK[0x43C];
    *(v77 - 208) = (v78 - 1650139615 - ((v78 << (5 * a53 - 108)) & 0x3B49BC42)) ^ v80;
    *(v77 - 204) = (v75 - 913) ^ v80;
    v81 = (*(v74 + 8 * a52))(v77 - 208);
    return (*(v74 + 8 * (((LODWORD(STACK[0x43C]) == ((5 * a53 + 1718656269) & 0x998F63BD ^ 0x9DA4DC19)) * (262 * ((5 * a53) ^ 0x168) + 724)) ^ (5 * a53))))(v81);
  }

  else
  {
    (*(v74 + 8 * (v75 ^ 0xD73)))(*a71, v76, a72);
    v82 = *(STACK[0x230] + 52);
    v83 = STACK[0x2E8];
    v84 = LODWORD(STACK[0x368]) ^ 0xDE7D5AEF;
    v85 = (2 * LODWORD(STACK[0x368])) & 0xBCFAB5DE;
    v86 = 50899313 * ((v77 - 540132140 - 2 * ((v77 - 208) & 0xDFCE3DA4)) ^ 0x17AFF9F2);
    *(v77 - 192) = (v82 ^ ((v82 ^ 0xB6B50D82) + 146521772) ^ ((v82 ^ 0xD282AEC5) + 1821122029) ^ ((v82 ^ 0x4A79102A) - 193486076) ^ ((v82 ^ 0x6FBFFFBB) - 776909677) ^ 0x20D03401) - v86;
    *(v77 - 188) = v75 - v86 - 1272;
    *(v77 - 208) = v83;
    *(v77 - 200) = &STACK[0x1820];
    *(v77 - 184) = STACK[0x218];
    *(v77 - 176) = v84 - v86 + v85 + 1877211100;
    *(v77 - 168) = ((v75 + 2147482337) & a55 ^ 0xCACB5176) - v86;
    v87 = (*(v74 + 8 * (v75 ^ 0xD96)))(v77 - 208);
    v88 = *(v77 - 172);
    LODWORD(STACK[0x43C]) = v88;
    return (*(v74 + 8 * ((836 * (v88 == -1650139615)) ^ (v75 + 19))))(v87);
  }
}

uint64_t sub_23AB98DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = v59 + 1647;
  STACK[0x308] = v60;
  STACK[0x2E0] = STACK[0x268];
  STACK[0x3A0] = *(v61 + 8 * v59);
  v63 = v59 + 1646;
  STACK[0x450] = a59 + 112;
  STACK[0x338] = a57;
  if (a57)
  {
    v64 = a47 == 0;
  }

  else
  {
    v64 = 1;
  }

  v65 = v64;
  return (*(v61 + 8 * ((201 * (((v63 ^ (v62 - 1523) ^ v65) & 1) == 0)) ^ v62)))(137);
}

uint64_t sub_23AB98EA4@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 1;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * (((v6 == 0) * v5) ^ v3)))();
}

uint64_t sub_23AB98ED0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v5 = a2 + 353807297 < v2 - 1512501386;
  if (a2 > 0xEAE9543E != v2 - 1512501386 < ((v3 - 696) ^ 0x1516AFA1u))
  {
    v5 = v2 - 1512501386 < ((v3 - 696) ^ 0x1516AFA1u);
  }

  return (*(v4 + 8 * ((v5 * (((v3 - 1560318394) & 0x5D008FBF) - 1186)) ^ v3)))(a1, 521);
}

uint64_t sub_23AB98F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned int a39, unsigned int a40, unsigned int a41, unsigned int a42, unsigned int a43, int a44, char a45, uint64_t a46, int a47, char a48)
{
  if (a45 == 2)
  {
    v59 = a43;
    v60 = &a30 + v53 + 594893452;
    v61 = ((*v60 ^ v52) << 24) | ((v60[1] ^ v52) << 16) | ((v60[2] ^ v52) << 8);
    *v50 = (v61 | v60[3] ^ v52) + v49 - 2 * ((v61 | v60[3] ^ v52) & 0x1DA4DE3B ^ (v60[3] ^ v52) & 0x1A);
    v62 = *(v51 + 8 * ((232 * ((v53 + 594893456) < 0x40)) ^ (v55 + 332)));
    return v62(v62, v59, v54 + 16, 0, 0, 2876854799, a7, a8, a9, a10, a11, a12, a13, &a48, a15, a16);
  }

  else
  {
    v56 = *(v51 + 8 * (v48 + 14));
    if (a45 == 1)
    {
      v57 = (v55 + 430);
      v58 = *(&a30 + v53 + 594893452) ^ v52 | ((*(&a30 + v53 + 594893453) ^ v52) << 8) | ((*(&a30 + v53 + v57 + 594892996) ^ v52) << 16) | ((*(&a30 + v53 + 594893455) ^ v52) << 24);
      *v50 = v49 + v58 + (~(2 * v58) | 0xC4B643BD) + 1;
      return (*(v51 + 8 * ((2016 * ((v53 + 594893456) < 0x40)) ^ v57)))(v57, 0x100000, 4294705152, 594893452, 271060992, a6, a7, a8, a9, a10, a11, a12, a13, &a48, a15, a16, a17, a18, a19);
    }

    else
    {
      v63 = (((a39 ^ 0xC86665F) - 210134623) ^ ((a39 ^ 0x1EAB6D43) - 514551107) ^ ((a39 ^ 0xF1059E55) + 251290027)) + (((a39 ^ 0x20F41222) - 552866338) ^ ((a39 ^ 0x5A76EA95) - 1517742741) ^ ((a39 ^ 0x99AA6DFE) + 1716883970)) - 927509892;
      v64 = (((a40 ^ 0x6F7025D9) - 1869620697) ^ ((a40 ^ 0x49282544) - 1227367748) ^ ((a40 ^ 0xC57095D4) + 982477356)) + (((a40 ^ 0x201FECE7) - 538963175) ^ ((a40 ^ 0x26283E4C) - 640171596) ^ ((a40 ^ 0xE51F47E2) + 450934814)) - 204979263;
      a39 = v63 ^ ((v63 ^ 0xCCF4E32F) + 829242171) ^ ((v63 ^ 0x9D436D85) + 1624946065) ^ ((v63 ^ 0xFCF656BF) + 24088235) ^ ((v63 ^ 0xAF27FFFF) + 1388193771) ^ 0xE14EB2A3;
      a40 = v64 ^ ((v64 ^ 0x417F2CAC) - 1812477315) ^ ((v64 ^ 0x689584F) - 738083168) ^ ((v64 ^ 0x947EDA33) + 1190542564) ^ ((v64 ^ 0xFEFFB7FF) + 746017072) ^ 0xCE5F8C66;
      v65 = (((a41 ^ 0x837EB405) + 2088848379) ^ ((a41 ^ 0x3F568A8F) - 1062636175) ^ ((a41 ^ 0x5F00ABC3) - 1593879491)) + (((a41 ^ 0x62142C60) - 1645489248) ^ ((a41 ^ 0x3914CFAC) - 957665196) ^ ((a41 ^ 0xB8287685) + 1205307771)) + 506044902;
      v66 = (((a42 ^ 0x740C9CD0) - 1946983632) ^ ((a42 ^ 0xE51303C5) + 451738683) ^ ((a42 ^ 0x72370A5C) - 1916209756)) + (((a42 ^ 0x8499686C) + 2070321044) ^ ((a42 ^ 0x9D93BDD3) + 1651261997) ^ ((a42 ^ 0xFA2240F6) + 98418442)) + 250400855;
      a41 = v65 ^ ((v65 ^ 0xE2BD34A4) + 1251654672) ^ ((v65 ^ 0x41BC0611) - 375681349) ^ ((v65 ^ 0xB253A1F) - 1560104267) ^ ((v65 ^ 0xFFFC7FFE) + 1474033494) ^ 0xB4F0E21D;
      a42 = v66 ^ ((v66 ^ 0x66F644A2) - 778953063) ^ ((v66 ^ 0xE2802BEF) + 1441034710) ^ ((v66 ^ 0x33923177) - 2064225458) ^ ((v66 ^ 0xFF7FFBFF) + 1209770438) ^ 0xABB3308C;
      return v56(3654795700, 2777224555, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, &a48, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v56, a28, a29, a30, a31, a32);
    }
  }
}

uint64_t sub_23AB98F68()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_23AB98F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v54 = v48 - v47 - 782;
  v55 = (*(v49 + 8 * (v48 ^ 0xD00)))(&a47, 0);
  (*(v49 + 8 * (v48 ^ 0xD27)))(v55);
  v56 = (*(v49 + 8 * (v48 + 733)))();
  v57 = *v51;
  v58 = 1664525 * (((((v57 >> 30) | 0x389493F4) ^ v57 ^ 0x7A573BB4) - 2052537268) ^ ((((v57 >> 30) | 0x389493F4) ^ v57 ^ 0x6A1EFC48) - 1780415560) ^ ((((v57 >> 30) | 0x389493F4) ^ v57 ^ 0x28DD5408) - 685593608)) + 55541206;
  v51[1] = ((v56 + 1189449826 - ((2 * v56) & 0x8DCB20C4)) ^ 0x46E59062) + ((v51[1] - ((2 * v51[1]) & 0x977B4850) + 1270719528) ^ v58 ^ ((v58 ^ 0x3E183AF1) - 1139079299) ^ ((v58 ^ 0x3DE274EC) - 1075754654) ^ ((v58 ^ 0x83F953D1) + 33189469) ^ ((v58 ^ 0xFDFFDFBE) + 2147279412) ^ 0x3641665A);
  *(v53 - 148) = a39 + 1;
  *(v53 - 144) = v52 - a39 + v54;
  *(v53 - 112) = ((v54 + 162212247) ^ 0x5C) - a39;
  *(v53 - 128) = (v54 + 162212247) ^ a39;
  *(v50 + 24) = 2 - a39;
  *(v53 - 108) = ((v54 + 162212247) ^ 0x65) - a39;
  *(v50 + 40) = a35;
  v59 = (*(a40 + 8 * (v54 + 2125916785)))(v53 - 152);
  return (*(a40 + 8 * *(v53 - 152)))(v59);
}

uint64_t sub_23AB9922C()
{
  v4 = v2 & 0xAE19DBBF;
  v6 = -2 - v0 >= (v1 - 1) && v1 - 1 <= (367 * (v4 ^ 0x315)) + 4294966561u;
  return (*(v3 + 8 * ((v6 * (((v4 + 522) | 0x80) ^ 0x599)) ^ v4)))();
}

void sub_23AB99304(int a1@<W8>)
{
  if (v2 < 0)
  {
    v2 = -v2;
  }

  **(v1 + 8) = v2 - ((v3 + 1610387742) & (2 * v2)) + 805194423;
  *(v1 + 4) = a1 + 1;
}

uint64_t sub_23AB99340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v20 = 1785193651 * ((~((v19 - 136) ^ 0xE44E6F0C | 0x827DE0F5) + (((v19 - 136) ^ 0xE44E6F0C) & 0x827DE0F5)) ^ 0x89DC03E3);
  *(v19 - 128) = &a15;
  *(v19 - 136) = (v15 + 168) ^ v20;
  *(v19 - 120) = ((v15 + 556) ^ v18 ^ 0x3C9B3264) - v20 + ((2 * v18) & 0x79366E74) - 1703986;
  (*(v16 + 8 * (v15 + 1294)))(v19 - 136);
  *(v19 - 136) = v17;
  *(v19 - 120) = a14;
  *(v19 - 112) = v15 + 556 - 1564307779 * (((((v19 - 136) | 0xE61E4A28) ^ 0xFFFFFFFE) - (~(v19 - 136) | 0x19E1B5D7)) ^ 0x8EEC79C4) - 557;
  v21 = (*(v16 + 8 * (v15 + 1306)))(v19 - 136);
  return (*(v16 + 8 * (((*(v19 - 128) + ((v15 + 556) ^ 0x839407BF) < 0xAD4CAA02) * (v15 - 767)) ^ (v15 + 556))))(v21);
}

void sub_23AB994A4(uint64_t a1)
{
  v1 = 2066391179 * ((-2 - ((a1 | 0xB71183C0) + (~a1 | 0x48EE7C3F))) ^ 0xE7C9FE27);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23AB9955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17)
{
  v21 = (((&a16 | 0xF6149833) - &a16 + (&a16 & 0x9EB67C8)) ^ 0x6D536EB9) * v17;
  a17 = v19 - v21 + 1303;
  a16 = 69 - v21;
  v22 = (*(v18 + 8 * (v19 + 1935)))(&a16);
  return (*(v18 + 8 * (((**(v20 + 8 * (v19 ^ 0xBC)) == 0) * (((v19 ^ 0x349) - 711) ^ 0x5A2)) ^ v19 ^ 0x349)))(v22);
}

uint64_t sub_23AB99940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = (2066391179 * ((((&a15 | 0x4900536C) ^ 0xFFFFFFFE) - (~&a15 | 0xB6FFAC93)) ^ 0x19D82E8B)) ^ 0x9617D40F;
  v17 = (*(v16 + 17416))(&a15);
  return (*(v16 + 8 * ((50 * (a16 == -1650139615)) ^ 0x413u)))(v17);
}

uint64_t sub_23AB99A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v4 + 8 * (((v6 == 0) * (((v5 + v3 + 1024) | 0x28) ^ 0x5CD)) ^ (v5 + v3 + 325))))();
}

uint64_t sub_23AB99A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x278] = v3;
  v6 = (LODWORD(STACK[0x2B4]) - 758) | 0x13;
  v7 = STACK[0x324];
  v8 = (v7 ^ 0xF2EBC40C) & (2 * (v7 & 0xF2EBD12E)) ^ v7 & 0xF2EBD12E;
  v9 = (LODWORD(STACK[0x324]) ^ 0xF7E8C65C) << (((LOBYTE(STACK[0x2B4]) + 10) | 0x13) ^ 0x3A);
  v10 = (v9 ^ 0xA062EE4) & (LODWORD(STACK[0x324]) ^ 0xF7E8C65C) ^ v9 & 0x5031772;
  v11 = v10 ^ 0x5011112;
  v12 = (v10 ^ 0x21460) & (4 * v8) ^ v8;
  v13 = ((4 * v11) ^ 0x140C5DC8) & v11 ^ (4 * v11) & 0x5031770;
  v14 = (v13 ^ 0x4001550) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x1030232)) ^ 0x50317720) & (v13 ^ 0x1030232) ^ (16 * (v13 ^ 0x1030232)) & 0x5031770;
  v16 = v14 ^ 0x5031772 ^ (v15 ^ 0x11700) & (v14 << 8);
  *(STACK[0x528] + 4 * (((LODWORD(STACK[0x324]) ^ (2 * ((v16 << 16) & 0x5030000 ^ v16 ^ ((v16 << 16) ^ 0x17720000) & (((v15 ^ 0x5020052) << 8) & 0x5030000 ^ (((v15 ^ 0x5020052) << 8) ^ 0x3170000) & (v15 ^ 0x5020052) ^ 0x4000000u)))) >> 2) ^ 0x3CBA7FF2)) = v4;
  LODWORD(STACK[0x324]) = v7 + 4;
  return (*(v5 + 8 * ((112 * (v7 - 219426510 < ((v6 + 192) ^ 0x2BBu))) ^ v6)))(3707646207, 1542845618, a3, 493, 3811087689, 4294965523);
}

uint64_t sub_23AB99C2C()
{
  STACK[0x450] = STACK[0x278] - 1824;
  LODWORD(STACK[0x320]) = v2;
  return (*(v1 + 8 * ((94 * (((*(STACK[0x230] + 360) > 1u) ^ (v0 - 6)) & 1)) ^ v0)))();
}

uint64_t sub_23AB9A224()
{
  LODWORD(STACK[0x4CC]) = v0;
  v4 = (*(v3 + 8 * (v1 ^ 0x8C4)))(v2 + 4, 0);
  v5 = v2[4] - 1503040569 - ((2 * v2[4]) & 0x4CD2D78E);
  v2[1] = v2[6] - 1503040569 - ((2 * v2[6]) & 0x4CD2D78E);
  v2[2] = v5;
  v6 = (*(v3 + 8 * (v1 ^ 0x8E3)))(v4);
  v2[3] = v6 - 1503040569 - ((v6 << (v1 + 72)) & 0x4CD2D78E);
  v7 = (*(v3 + 8 * (v1 ^ 0x8E3)))();
  *v2 = v7 - 1503040569 - ((2 * v7) & 0x4CD2D78E);
  return sub_23AB9A2F0();
}

uint64_t sub_23AB9A2F0()
{
  v7 = *(v1 + 4 * (v2 - 1));
  v8 = (1664525 * (v7 ^ (v7 >> 30))) ^ *(v1 + 4 * v2);
  *(v1 + 4 * v2) = v5 + (((*(v0 + 4 * v5) ^ 0x10CCAAA5) - 281848485) ^ ((*(v0 + 4 * v5) ^ 0x2A6FC33D) - 711967549) ^ ((*(v0 + 4 * v5) ^ 0x9CCA025F) + 1664482721)) - 1054714477 + (((v8 ^ 0x3BF156E4) - 558481192) ^ ((v8 ^ 0x4CA60A56) - 1444864922) ^ ((v8 ^ 0x77575CB2) - 1844426110));
  *(v6 - 192) = STACK[0x280];
  v9 = STACK[0x2A8];
  *(v6 - 196) = STACK[0x2A8];
  *(v6 - 176) = v2 + 1 + v9;
  *(v6 - 208) = v4 - v9 + 1990260780;
  *(v6 - 200) = v4 - v9 + 1990260756;
  *(v6 - 184) = v4 - v9 + 1990260745;
  *(v6 - 180) = -2030745982 - v9 + v4;
  v10 = (*(v3 + 8 * (v4 + 787)))(v6 - 208);
  return (*(v3 + 8 * *(v6 - 204)))(v10);
}

uint64_t sub_23AB9A444(uint64_t a1)
{
  v1 = 1037613739 * ((2 * (a1 & 0x14A692BA) - a1 - 346460859) ^ 0x3A5B403A);
  v2 = *a1 + v1;
  v3 = *(a1 + 16) ^ v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 1173454827;
  v5 = v4 - 1173454827 < 0;
  v7 = 1173454827 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_284DD4450 + (v2 ^ 0x39F)) + 8 * ((((v3 - 1979543498) >= (4 * v7)) * (v2 - 941)) ^ v2) - 4))();
}

uint64_t sub_23AB9A500@<X0>(int a1@<W8>)
{
  v6 = (v1 - 1826) | 0x780;
  v7 = *(v3 + 8);
  v8 = *(v7 + 4 * v5 - 4) ^ 0x2FFE4AB7;
  *(v7 + 4 * (v5 + a1)) = ((v8 >> (32 - (v2 ^ 0x1D))) & ((626 * (v6 ^ 0x7D2)) ^ 0x5863560A) | ~(v8 >> (32 - (v2 ^ 0x1D))) & 0xA79CAD11) ^ 0x8862E7A6;
  return (*(v4 + 8 * ((4080 * (v5 > 1)) ^ v6)))(2288183206);
}

uint64_t sub_23AB9A5BC@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v1 - 16);
  *(v4 + v1 - 32) = *(a1 + v1 - 32);
  *(v4 + v1 - 16) = v5;
  return (*(v3 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (v2 ^ 0x26D)) ^ (v2 - 417))))();
}

uint64_t sub_23AB9A8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, unint64_t a29, uint64_t a30, _DWORD *a31)
{
  v35 = (-((v32 - 5120) ^ (v32 - 5120)) | (v32 - 5120)) >> 63;
  *a31 = v32 + 1;
  v36 = (((v31 >> (a22 ^ 0xA1)) ^ v31) << 7) & 0x9D2C5680 ^ (v31 >> (a22 ^ 0xA1)) ^ v31;
  *(*a27 + a29) ^= v34 & ((v35 - 1 + v36) << 15) ^ v36 ^ ((v34 & ((v35 - 1 + v36) << 15) ^ v36) >> 18);
  return (*(v33 + 8 * (((a29 > 0x1FB) | (16 * (a29 > 0x1FB))) ^ 0x20F)))();
}

uint64_t sub_23AB9A994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = 341 * (v5 ^ 0xF8);
  v9 = v7 == 1004 || (*STACK[0x240] ^ 0x89) - (*STACK[0x238] ^ 0x89) + a5 - ((2 * ((*STACK[0x240] ^ 0x89) - (*STACK[0x238] ^ 0x89))) & 0xE6610710) != a5;
  return (*(v6 + 8 * ((2047 * v9) ^ v7)))();
}

uint64_t sub_23AB9AA24()
{
  STACK[0x250] = v1;
  LODWORD(STACK[0x1818]) = v4;
  LODWORD(STACK[0x181C]) = 2129170879;
  LODWORD(STACK[0x4CC]) = **(v2 + 8 * (v0 ^ 0x592)) - 2092545551;
  v6 = *(v2 + 8 * (v0 - 1165));
  STACK[0x248] = v6;
  v7 = *v6;
  v8 = STACK[0x210];
  *(v5 - 192) = STACK[0x210];
  LODWORD(v6) = v8 ^ (v0 - 97331354);
  *(v5 - 184) = v8;
  *(v5 - 208) = v6 ^ 0xFD;
  *(v5 - 204) = v6 ^ 0x81;
  *(v5 - 168) = v8 + v0 + 55968628;
  *(v5 - 176) = v0 - 97331354 + v8;
  STACK[0x240] = v7;
  *(v5 - 200) = v7 - v8;
  v9 = (*(v3 + 8 * (v0 + 833)))(v5 - 208);
  return (*(v3 + 8 * *(v5 - 172)))(v9);
}

uint64_t sub_23AB9AB0C@<X0>(unsigned int a1@<W1>, unint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, int a5@<W5>, uint64_t a6@<X6>, unsigned int a7@<W8>)
{
  v14 = (a3 + 4 * a6);
  v15 = (*v14 ^ a7) + (v10 ^ HIDWORD(a2)) + a1 * (*(v12 + 4 * a6) ^ (a7 + v13 + 432 - 610));
  *(v14 - 1) = (v8 + v15 - (v9 & (2 * v15)) + 178) ^ a4;
  return (*(v11 + 8 * (((a6 + 1 == v7) * a5) ^ v13)))();
}

uint64_t sub_23AB9ABAC(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16) - 50899313 * ((2 * (a1 & 0x4A2B7B33) - a1 + 903120076) ^ 0xFDB5409A);
  v3 = *a1;
  v2 = *(a1 + 8);
  v6 = (2066391179 * ((((2 * &v5) | 0xD124756A) - &v5 + 393069899) ^ 0x47B5B8AD)) ^ (v1 + 562360107);
  v7 = v2;
  v5 = v3;
  return (*(*(&off_284DD4450 + (v1 & 0x8829)) + 8 * v1 + 0x10C2796F4))(&v5);
}

void pggRSNuJfiTW0g(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_23AB9ADE4(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v13 = v10;
  v14 = v10 + 1;
  *(v11 + (v4 + 1)) = *(v8 + v13);
  v15 = v14 + a3 < v6;
  if (v6 < v7 != v14 > a4)
  {
    v15 = v6 < v7;
  }

  return (*(v12 + 8 * ((!v15 * v9) ^ v5)))();
}

uint64_t sub_23AB9ADF0(unint64_t a1)
{
  STACK[0x488] = a1;
  LODWORD(STACK[0x390]) = v2;
  v4 = STACK[0x318];
  STACK[0x478] = 335;
  *(v4 + 335) = (&STACK[0x478] ^ 0xBA) * (&STACK[0x478] + 17);
  return (*(v3 + 8 * ((((STACK[0x478] == 0) << 7) | ((STACK[0x478] == 0) << 10)) ^ (((v1 + 2136812982) & 0x80A2D5BF) + 1699771030) & 0x9AAF88FB)))();
}

uint64_t sub_23AB9B0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v65 = (v61 - 1248) | 0x385;
  LODWORD(STACK[0x380]) = -1480824708;
  v66 = &STACK[0x540] + a61;
  STACK[0x450] = a61 + 1712;
  *v66 = 0x6370646600;
  v66[8] = 1;
  STACK[0x200] = &STACK[0x540] + a61 + 1712;
  STACK[0x268] = STACK[0x2E0];
  STACK[0x238] = &STACK[0x540] + a61 + 9;
  v67 = *(v64 + 8 * v65);
  STACK[0x278] = *(v63 + 8 * (v65 - 817)) - 4;
  STACK[0x270] = *(v63 + 8 * (v65 - 828));
  return v67(a1, a2, &STACK[0x540] + a61 + 9, a4, 13, 4049821789, 1989569247, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v62, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a58 + 2304, a41, a42, a43, a44, a45, a58 + 2176, &STACK[0x540] + a61 + 128, &STACK[0x540] + a61, a49, a50, a51);
}

uint64_t sub_23AB9B148@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, uint64_t a16, int a17, int a18, uint64_t a19, int a20, int a21, unint64_t a22)
{
  v32 = v22 - 83;
  v29 = (v22 - 71) & 0x6F;
  *a15 = a1;
  LODWORD(STACK[0x23C]) = a21;
  STACK[0x240] = a22;
  LODWORD(STACK[0x248]) = a18 - v27 + 1569415598;
  STACK[0x250] = v26 + (v27 + 1266733994);
  v30 = (*(v28 + v24 * v23 + 8))(a7);
  return (*(v25 + 8 * ((1058 * (v30 - 1650139615 - ((v30 << (v29 ^ 0x2C)) & 0x3B49BC42) == -1650139615)) ^ v32)))(v30, 102485690, 1270624488, HIDWORD(a3), 1144344271, 4142313495, 3150621782, 2249969338, a2, a3, a4, a5, a6);
}

uint64_t sub_23AB9B334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v28 - 144) = &a19;
  *(v28 - 136) = &a19;
  *(v28 - 112) = (v26 - 406) ^ (1037613739 * ((v28 - 144) ^ 0xD1022D7F));
  *(v28 - 128) = a15;
  *(v28 - 120) = a14;
  *(v28 - 104) = &a25;
  v29 = (*(v25 + 8 * (v26 ^ 0xCE8u)))(v28 - 144);
  return (*(v25 + 8 * ((31 * (v27 + a13 + 1019 < ((v26 - 6) ^ 0x7FFFFB63u))) ^ (v26 - 179))))(v29);
}

uint64_t sub_23AB9B3DC()
{
  v4 = 31 * ((v3 | 0xA0) ^ 0xA4);
  v5 = v2 > -597898119;
  if (v5 == v0 + 1571926939 < (v4 ^ 0x23A3331D))
  {
    v5 = v0 + 1571926939 < v2 - 1549585685 + v4;
  }

  return (*(v1 + 8 * ((2010 * v5) ^ v4)))();
}

uint64_t sub_23AB9B4B4@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X6>, int a4@<W8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q1>, int8x16_t a7@<Q4>, int8x16_t a8@<Q5>, int8x16_t a9@<Q6>, int32x4_t a10@<Q7>)
{
  v15 = v10 + 4;
  v16 = (a4 - a1 + 1222);
  a6.i32[0] = v11->i32[1];
  a6.i32[1] = *(v14 + 4 * (v15 + (v16 ^ a3)));
  a6.i32[2] = v11->i32[3];
  v17 = vextq_s8(a5, a6, 0xCuLL);
  v18 = a6;
  v18.i32[3] = v11[1].i32[0];
  v19 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v18, a8), vandq_s8(v17, a7)), 1uLL), *(v11 - 908));
  v17.i32[0] = *(v13 + 4 * (v11->i32[1] & 1));
  v17.i32[1] = *(v13 + 4 * (*(v14 + 4 * (v15 + (v16 ^ a3))) & 1));
  v17.i32[2] = *(v13 + 4 * (v11->i32[3] & 1));
  v17.i32[3] = *(v13 + 4 * (v18.i8[12] & 1));
  *v11 = veorq_s8(vaddq_s32(vsubq_s32(v19, vandq_s8(vaddq_s32(v19, v19), a9)), a10), v17);
  return (*(v12 + 8 * ((31 * (v15 == 392)) ^ (a2 + a4 + 789))))();
}

uint64_t sub_23AB9B4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v36 - 128) = (v32 + 1615) ^ (((((v36 - 144) | 0x2142C0BD) - (v36 - 144) + ((v36 - 144) & 0xDEBD3F40)) ^ 0x7022E205) * v34);
  *(v36 - 120) = &a18;
  *(v36 - 112) = a13;
  *(v36 - 144) = &a18;
  *(v36 - 136) = a14;
  (*(v33 + 8 * (v32 + 1602)))(v36 - 144);
  *(v36 - 128) = a14;
  *(v36 - 120) = a13;
  *(v36 - 112) = (v32 + 368) ^ (1037613739 * ((2 * ((v36 - 144) & 0xDB9BEA0) - (v36 - 144) - 230276773) ^ 0x23446C24));
  *(v36 - 104) = &a32;
  *(v36 - 144) = &a18;
  *(v36 - 136) = &a18;
  v37 = (*(v33 + 8 * (v32 + 1710)))(v36 - 144);
  return (*(v33 + 8 * ((31 * (((v32 + 47650304) & 0xFD28EF7F ^ 0xFFFFF8E2) + v35 - 1070260807 < ((((v32 + 47650304) & 0xFD28EF7F) - 640) ^ 0x7FFFFB63))) ^ (((v32 + 47650304) & 0xFD28EF7F) - 813))))(v37);
}

uint64_t sub_23AB9B960@<X0>(int a1@<W0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = (v10 + 25) | a1;
  v13 = (v9 + v12 - 1311);
  *(a5 + v13) = *(a6 + v13) ^ *(v7 + (v13 & 0xF)) ^ *((v13 & 0xF) + v8 + 5) ^ *((v13 & 0xF) + a7 + 1) ^ ((v13 & 0xF) * a3) ^ a2;
  return (*(v11 + 8 * (((v13 != ((v12 - 1305) ^ a4)) * ((v12 - 1292) ^ 4)) ^ (v12 + 142))))();
}

uint64_t sub_23AB9BA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unsigned int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v21 = *(v18 + 8 * v13);
  v22 = *v15;
  v23 = v14 + a6;
  *(*v15 + v23) = (HIBYTE(a9) ^ 0x23) - (v17 & (2 * (HIBYTE(a9) ^ 0x23))) - 119;
  *(v22 + v23 + 1) = (v20 ^ BYTE2(a9)) - (v17 & (a9 >> 15)) - 119;
  *(v22 + v23 + 2) = (BYTE1(a9) ^ v19) - 2 * ((BYTE1(a9) ^ v19) & v16 ^ BYTE1(a9) & 2) - 119;
  *(v22 + v23 + 3) = a9 ^ 0xAA;
  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13);
}

uint64_t sub_23AB9BF90(uint64_t a1)
{
  v7 = *(v5 - 228 + v1 + 72);
  v8 = ((2 * v1) & 0x7FDA3F80) + (v1 ^ 0x3FED1FC3) + v2;
  *(a1 + v8) = ((((v6 + v3 + 88) & 0xF6) - 13) ^ HIBYTE(v7)) - ((2 * ((((v6 + v3 + 88) & 0xF6) - 13) ^ HIBYTE(v7))) & 0x12) - 119;
  *(a1 + v8 + 1) = (BYTE2(v7) ^ 0x28) - 2 * ((BYTE2(v7) ^ 0x28) & 0xB ^ BYTE2(v7) & 2) - 119;
  *(a1 + v8 + 2) = (BYTE1(v7) ^ 0x95) - 2 * ((BYTE1(v7) ^ 0x95) & 0xB ^ BYTE1(v7) & 2) - 119;
  *(a1 + v8 + 3) = v7 ^ 0xC0;
  return (*(v4 + 8 * ((124 * (v1 + 4 >= *(v5 - 136))) ^ v3)))();
}

uint64_t sub_23AB9C070@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t, uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = 1388665877 * ((318356181 - ((v20 - 168) | 0x12F9BAD5) + ((v20 - 168) | 0xED06452A)) ^ 0x60AB27C6);
  *(v20 - 168) = v18;
  *(v20 - 160) = (a1 + 1134) ^ v21;
  *(v20 - 156) = v21 ^ 0x26966E4A;
  (*(v19 + 8 * (a1 + 2113)))(v20 - 168);
  return a14(18, a18);
}

uint64_t sub_23AB9C108(uint64_t a1, __n128 a2)
{
  v4[-1] = a2;
  *v4 = a2;
  return (*(v5 + 8 * (((a1 == 0) * v3) ^ v2)))(a1 - 8);
}

uint64_t sub_23AB9C184(uint64_t a1, uint64_t a2, int a3)
{
  if (v3 <= 0x18 && ((1 << v3) & 0x1250001) != 0)
  {
    return (*(v7 + 8 * ((217 * ((((15 * ((a3 + 13) ^ 0x4BBC30E8)) ^ 0x1B2) & *(v8 + v5 * v6 + 40)) == 0)) ^ (v4 + 1270626288))))();
  }

  else
  {
    return (*(v7 + 8 * ((((*(v8 + v5 * v6 + 40) & 8) == 0) * (((v4 + 1270624378) | 0x1A2) - 422)) | (v4 + 1270624796))))(4294925278);
  }
}

void sub_23AB9C2D4(uint64_t a1)
{
  v1 = 143681137 * ((-2 - ((a1 | 0x56A2DD43) + (~a1 | 0xA95D22BC))) ^ 0x7DFA3EE6);
  v2 = *(*(a1 + 8) + 12) + 1289424864;
  v3 = (*a1 ^ v1) + 533186577;
  v4 = (v3 < 0x5F9A20C9) ^ (v2 < 0x5F9A20C9);
  v5 = v2 < v3;
  if (v4)
  {
    v6 = v3 < 0x5F9A20C9;
  }

  else
  {
    v6 = v5;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_23AB9C3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 1173454827;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v5 = *(a1 + 96) + 528;
  v6 = 210068311 * ((v11 & 0x3246AFF1 | ~(v11 | 0x3246AFF1)) ^ 0x3F32FFE6);
  v11[0] = *(a2 + 8) + (*(a2 + 4) - v4);
  v11[1] = v5;
  v14 = v3 - v6 + 433;
  v12 = v4 - v6 + (v3 ^ 0x8BE64B56);
  (*(a3 + 8 * (v3 ^ 0xC5E)))(v11);
  v9 = v13;
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v4);
  return (v9 - 1438290795);
}

uint64_t sub_23AB9C518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v10 = STACK[0x2C0];
  v11 = STACK[0x2F0];
  STACK[0x238] = STACK[0x200];
  v17 = (v9 ^ 0x4F3) + 242;
  v18 = *v10;
  v19 = *v11;
  STACK[0x468] = *(v8 + 8 * (v9 ^ 0x51C));
  STACK[0x430] = &STACK[0x540] + v7;
  v12 = v17 ^ 0x32C;
  STACK[0x450] = v7 + 432;
  LODWORD(STACK[0x270]) = v18;
  LODWORD(STACK[0x36C]) = v18;
  STACK[0x3E0] = v19;
  LODWORD(STACK[0x444]) = 956803561;
  LODWORD(STACK[0x394]) = 2124293525;
  STACK[0x328] = 0;
  LODWORD(STACK[0x2DC]) = -1266733994;
  LODWORD(STACK[0x268]) = (v17 ^ 0x32C) - 1442200193;
  LODWORD(STACK[0x3EC]) = 245145507;
  *(&STACK[0x540] + v7) = a7;
  LODWORD(STACK[0x278]) = 1585524672;
  LODWORD(STACK[0x240]) = -2117954403;
  LODWORD(STACK[0x248]) = -1681005844;
  v13 = (v17 ^ 0x2C4) * a5;
  v15 = *(&STACK[0x540] + v7) == a7 && LODWORD(STACK[0x3EC]) == 245145506;
  return (*(v8 + 8 * ((v15 * ((v13 + 1417) ^ (10 * (v12 ^ 0x170)))) ^ v12)))();
}

uint64_t sub_23AB9C658(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v15 = (v14 + 4 * v9);
  v16 = v9 + 1;
  v17 = *(v14 + 4 * v16);
  v18 = v15[397] ^ ((v17 & 0x7FFFFFFE | ((v8 + a1) & a7 ^ a4) & v10) >> 1);
  *v15 = (v18 + v12 - (a6 & (2 * v18))) ^ *(v13 + 4 * (v17 & 1));
  return (*(v11 + 8 * (((v16 == 227) * a8) ^ v8)))();
}

uint64_t sub_23AB9C700(uint64_t a1)
{
  v3 = (*(v1 + 16944))();
  if (v3 == 16)
  {
    v4 = -42029;
  }

  else
  {
    v4 = -42030;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  (*(v1 + 17136))(a1);
  return v5;
}

uint64_t sub_23AB9C75C()
{
  v5 = (v2 + v4 - 220 + 8);
  *(v5 - 1) = 0x8989898989898989;
  *v5 = 0x8989898989898989;
  return (*(v3 + 8 * ((((v0 & 0x30) == 16) * (((v1 + 1443108583) & 0xA9FBE8DF) + 851)) ^ v1)))();
}

uint64_t sub_23AB9C880@<X0>(unsigned int *a1@<X4>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24)
{
  *a24 = 2092545552;
  v27 = *a1;
  v28 = 2066391179 * ((~((v26 - 152) | 0x8B5DBA8449A9648ALL) + ((v26 - 152) & 0x8B5DBA8449A9648ALL)) ^ 0x998225DC1971196DLL);
  *(v25 + 24) = v28 ^ 0x13FF;
  v29 = a2 + 1296916573 - v28;
  *(v26 - 152) = v29 - 45;
  *(v26 - 144) = ((a2 + 1296916573) ^ 3) - v28;
  *(v26 - 140) = v28;
  *(v26 - 128) = v29;
  *(v26 - 124) = 95169967 - v28 + a2;
  *(v25 + 40) = v27 + v28;
  v30 = (*(v24 + 8 * (a2 & 0x1A040A35)))(v26 - 152);
  return (*(v24 + 8 * *(v26 - 148)))(v30);
}

uint64_t sub_23AB9C9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = 1785193651 * ((2 * (v69 & 0x57E1AC40) - v69 + 673076156) ^ 0x380E2059);
  *(v71 - 208) = a57 - v72 - 866334207;
  *(v71 - 168) = v67 - v72 + 1378;
  *(v71 - 184) = (((v67 ^ 0x473) - 1484795713) ^ v68) - v72 + ((((2 * v67) ^ 0x7E) + 1325377814) & (2 * v68)) + 1606155876;
  *(v71 - 176) = &STACK[0x3F0];
  *(v71 - 200) = a67;
  *(v71 - 192) = a55;
  v73 = (*(v70 + 8 * (v67 ^ 0x9E8)))(v71 - 208);
  v74 = *(v71 - 204);
  LODWORD(STACK[0x43C]) = v74;
  return (*(v70 + 8 * ((1182 * (v74 == -1650139615)) ^ v67)))(v73);
}

uint64_t sub_23AB9CC38()
{
  v4 = v0 | 8;
  v5 = ((v0 | 8) + 1043317222) & 0xC1D03FDF;
  v6 = ((v0 | 8) + 849816038) & 0xCD58D7DF;
  v7 = 1361651671 * (((v1 | 0xB70A6243) + (~v1 | 0x48F59DBC)) ^ 0x642892CE);
  *(v3 - 200) = 0;
  *(v3 - 192) = v7 - 1843349550;
  *(v3 - 208) = v7 + (v0 | 8) + 803;
  *(v3 - 176) = &STACK[0x348];
  *(v3 - 184) = &STACK[0x410];
  v8 = (*(v2 + 8 * ((v0 | 8) ^ 0x9FD)))(v3 - 208);
  return (*(v2 + 8 * (((*(v3 - 204) == (v5 ^ 0x9DA4DD6F)) * (v6 - 811)) ^ v4)))(v8);
}

uint64_t sub_23AB9CE18()
{
  v4 = (v2 - 1046) | 0x91;
  v5 = v0[1];
  v6 = v0[v4 + 321 - 333] ^ v3 ^ ((v5 & 0x7FFFFFFE | *v0 & 0x80000000) >> 1) ^ *(&STACK[0x1818] + (v5 & 1));
  v7 = v0[398] ^ v3 ^ ((v0[2] & 0x7FFFFFFE | v5 & 0x80000000) >> 1) ^ *(&STACK[0x1818] + (v0[2] & 1));
  *v0 = v6;
  v0[1] = v7;
  return (*(v1 + 8 * v4))();
}

uint64_t sub_23AB9CE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x2B4];
  STACK[0x450] -= 1616;
  LODWORD(STACK[0x320]) = a8 - 226;
  return (*(v8 + 8 * (((((v9 - 638) | 0x51) - 730) * (STACK[0x358] == 0)) ^ (v9 - 568))))();
}

uint64_t sub_23AB9CE34(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24, int a25, uint64_t a26, int a27)
{
  v30 = 143681137 * ((((&a24 | 0x1B28E528) ^ 0xFFFFFFFE) - (~&a24 | 0xE4D71AD7)) ^ 0x3070068D);
  a26 = v28;
  a27 = v27 - v30 + 330;
  a24 = ((((a2 & 0xFFFFFFF0) + 16) ^ 0xFFD658FC) + 1073479612 + ((((a2 & 0xFFFFFFF0) + 16) << (v27 + 28)) & 0xFFACB1E0)) ^ v30;
  a25 = ((2 * (a2 - a12 + 192923015)) & 0x2DCBF94E) - v30 + ((v27 - 1763312702) ^ (a2 - a12 + 192923015)) + 2145050624;
  v33 = v27;
  v31 = (*(v29 + 8 * (v27 + 1860)))(&a24);
  return (*(v29 + 8 * ((1362 * (*(v28 + 24) == -1650139615)) ^ v33)))(v31);
}

uint64_t sub_23AB9CF54@<X0>(char a1@<W8>)
{
  v6 = v2 + 2;
  v7 = (v3 - 2);
  *v7 = (a1 ^ v6 ^ 0xF9) * (v6 + 17);
  *(v7 - 1) = (v6 ^ 0xBB) * (v6 + 18);
  return (*(v5 + 8 * (((32 * (v4 == 2)) | ((v4 == 2) << 9)) ^ v1)))();
}

uint64_t sub_23AB9CF90()
{
  v2 = LODWORD(STACK[0x2B4]) - 1250;
  LODWORD(STACK[0x4F8]) = v0;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_23AB9CFB0(uint64_t a1, uint64_t a2)
{
  v3 = LODWORD(STACK[0x2B4]) - 1027;
  v4 = STACK[0x4A8];
  STACK[0x340] = *(v2 + 8 * (LODWORD(STACK[0x2B4]) - 1214));
  v5 = STACK[0x240];
  STACK[0x508] = v4;
  LODWORD(STACK[0x514]) = 1866308703;
  STACK[0x480] = v5;
  return (*(v2 + 8 * ((((*(v4 + 68) & (((v3 - 769538335) & 0x2DDE3F1Bu) - 1753)) - 44 > 0xFFFFFFBF) * (((v3 + 812149876) & 0xCF9797F3) - 1360)) ^ v3)))(a1, a2, 4034, 1518);
}

uint64_t sub_23AB9D02C@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 - 2);
  v6 = (v4 - 228 + a1);
  *v6 = 0x8989898989898989;
  v6[1] = 0x8989898989898989;
  LODWORD(v6) = (v5 ^ 0x50ALL) != ((v5 - 1322) & v1);
  return (*(v3 + 8 * (((2 * v6) | (4 * v6)) ^ v5)))();
}

uint64_t sub_23AB9D0F0()
{
  *(v2 - 200) = &STACK[0x34C];
  *(v2 - 184) = &STACK[0x464];
  *(v2 - 192) = v0 - 843532609 * ((((v2 - 208) | 0x5869C235) - ((v2 - 208) | 0xA7963DCA) - 1483326006) ^ 0x909E08D) - 841;
  *(v2 - 188) = 42 - 65 * ((((v2 + 48) | 0x35) - ((v2 + 48) | 0xCA) - 54) ^ 0x8D);
  v3 = (*(v1 + 8 * (v0 + 1046)))(v2 - 208);
  v4 = *(v2 - 208);
  LODWORD(STACK[0x43C]) = v4;
  return (*(v1 + 8 * (((v4 == -1650139615) * (((v0 - 935536018) & 0x37C325FF) - 561)) ^ v0)))(v3);
}

uint64_t sub_23AB9D29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  STACK[0x270] = a58 + 2353;
  STACK[0x268] = v60 + 49;
  STACK[0x250] = a58 + 2333;
  STACK[0x248] = v60 + 29;
  STACK[0x240] = a58 + 2313;
  STACK[0x238] = v60 + 9;
  return (*(v59 + 8 * (v58 - 1296)))(a1, a2, 262, a4, a5, a6, 2460112644);
}

uint64_t sub_23AB9D320()
{
  v4 = STACK[0x3E0];
  v5 = 1082434553 * ((-2 - (((v3 - 208) ^ 0x20088830 | 0xCE95038F) + ((v3 - 208) ^ 0x44940180 | 0x316AFC70))) ^ 0x2480C5);
  *(v3 - 184) = v5 + v1 - 44;
  *(v3 - 168) = &STACK[0x2DC];
  *(v3 - 160) = v4;
  *(v3 - 176) = &STACK[0x394];
  *(v3 - 208) = &STACK[0x328];
  *(v3 - 192) = &STACK[0x444];
  *(v3 - 196) = v5 + v0 + (v1 ^ 0x71B) - 41973862;
  (*(v2 + 8 * (v1 ^ 0xA79)))(v3 - 208);
  return (*(v2 + 8 * (((*(v3 - 200) == -1650139615) * ((v1 + 360707318) & 0x2A800B36 ^ 0x276)) ^ v1)))(48);
}

uint64_t sub_23AB9D4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  v34 = a13 < 0x9F6ABC4D;
  if (v34 == v31 > v32 + 1620394556)
  {
    v34 = v31 - 1620394931 < a13;
  }

  return (*(v33 + 8 * ((14 * !v34) ^ v32)))(a1, 355, &a31);
}

uint64_t sub_23AB9D5E8@<X0>(int a1@<W8>)
{
  v8 = *(v6 + 8 * (a1 - 103));
  v9 = *(v6 + 8 * (a1 ^ 0xC9));
  v10 = *v8;
  v11 = *(v9 - 4);
  v20[0] = *v11 - 66;
  v20[1] = v11[1] - 66;
  v20[2] = v11[2] - 66;
  v20[3] = v11[3] - 66;
  v20[4] = v11[4] - 66;
  v20[5] = v11[5] - 66;
  v20[6] = v11[6] - 66;
  v20[7] = v11[7] - 66;
  v20[8] = v11[8] - 66;
  v20[9] = v11[9] - 66;
  v20[10] = v11[10] - 66;
  v20[11] = v11[11] - 66;
  v20[12] = v11[12] - 66;
  v20[13] = v11[13] - 66;
  v20[14] = v11[14] - 66;
  v20[15] = v11[15] - 66;
  v20[16] = v11[16] - 66;
  v20[17] = v11[17] - 66;
  v20[18] = v11[18] - 66;
  v20[19] = v11[19] - 66;
  v12 = *(v9 - 4);
  v20[20] = v12[20] - 66;
  v20[21] = v12[21] - 66;
  v20[22] = v12[22] - 66;
  v20[23] = v12[23] - 66;
  v20[24] = v12[24] - 66;
  v20[25] = v12[25] - 66;
  v20[26] = v12[26] - 66;
  v20[27] = v12[27] - 66;
  v20[28] = v12[28] - 66;
  v20[29] = v12[29] - 66;
  result = (*(v4 + 8 * (a1 + 1941)))(v10, v20, v2);
  if (result == 1102)
  {
    v14 = *v8;
    v15 = **(v6 + 8 * (v5 - 229));
    v19[0] = *v15 ^ 0x7C;
    v19[1] = v5 ^ 0x8B ^ v15[1];
    v19[2] = v15[2] ^ 0x7C;
    v19[3] = v15[3] ^ 0x7C;
    v19[4] = v15[4] ^ 0x7C;
    v19[5] = v15[5] ^ 0x7C;
    v19[6] = v15[6] ^ 0x7C;
    v19[7] = v15[7] ^ 0x7C;
    v19[8] = v15[8] ^ 0x7C;
    v19[9] = v15[9] ^ 0x7C;
    v19[10] = v15[10] ^ 0x7C;
    v19[11] = v15[11] ^ 0x7C;
    v19[12] = v15[12] ^ 0x7C;
    v19[13] = v15[13] ^ 0x7C;
    v19[14] = v15[14] ^ 0x7C;
    v19[15] = v15[15] ^ 0x7C;
    v19[16] = v15[16] ^ 0x7C;
    v19[17] = v15[17] ^ 0x7C;
    v19[18] = v15[18] ^ 0x7C;
    v19[19] = v15[19] ^ 0x7C;
    v16 = *(v4 + 8 * ((112 * ((*(v4 + 8 * (v5 + 1941)))(v14, v19, v2) != 0)) ^ (v5 + 711)));
    __asm { BRAA            X8, X17 }
  }

  if (result)
  {
    v18 = 1650165017;
  }

  else
  {
    *(v7 + 348) |= (v5 + 727) ^ 0x3C4;
    *(v7 + 48) = 1682673288;
    result = (*(v4 + 8 * (v5 + 1957)))(*v2, v7 + 336, v7 + 340, v7 + 344, v3);
    v17 = *(v1 + 8);
    **(v1 + 24) = *v2;
    *v17 = ((v5 - 65) | 0x41) + *v3 - ((2 * *v3) & 0xC757DF76) + 1672212164;
    v18 = -1650139615;
  }

  *v1 = v18;
  return result;
}

uint64_t sub_23AB9D93C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = (v16 ^ 0xFFFFFFFFFFFFFD22 ^ (v17 - 138)) + v15;
  *(a1 - 7 + v21) = vadd_s8(vsub_s8(*(a15 - 7 + v21), vand_s8(vadd_s8(*(a15 - 7 + v21), *(a15 - 7 + v21)), v19)), v20);
  return (*(v18 + 8 * ((1743 * ((v15 & 0xFFFFFFF8) - 8 == v16)) ^ v17)))();
}

uint64_t sub_23AB9D9E8()
{
  v5 = v0;
  v6 = LODWORD(STACK[0x4CC])++;
  *v1 = v6 + 2092545552;
  v7 = *STACK[0x248];
  v8 = 2066391179 * (((v2 | 0x64FA3A6C56BDFE0ALL) - (v2 & 0x64FA3A6C56BDFE0ALL)) ^ 0x89DA5ACBF99A7C12);
  *(v4 - 192) = v8 ^ 0x13FF;
  *(v4 - 176) = v8 + v7;
  *(v4 - 184) = v5 - v8 + 314504245;
  *(v4 - 180) = -2030745982 - v8 + v5;
  *(v4 - 208) = v5 - v8 + 314504218;
  *(v4 - 200) = v5 - v8 + 314504165;
  *(v4 - 196) = v8;
  v9 = (*(v3 + 8 * (v5 ^ 0xD2F)))(v4 - 208);
  return (*(v3 + 8 * *(v4 - 204)))(v9);
}

void sub_23AB9DEDC()
{
  *(v3 - 208) = 143681137 * ((~(v1 | 0x49EEEEC7) + (v1 & 0x49EEEEC7)) ^ 0x62B60D62) - 875955286 + v0 + 11;
  (*(v2 + 8 * (v0 ^ 0xCC3)))(v3 - 208);
  v4 = 843532609 * (((v1 | 0x7BD3558F) - v1 + (v1 & 0x842CAA70)) ^ 0x2AB37737);
  *(v3 - 200) = &STACK[0x34C];
  *(v3 - 192) = v0 - v4 - 940;
  *(v3 - 188) = 43 - v4;
  *(v3 - 184) = &STACK[0x464];
  (*(v2 + 8 * (v0 ^ 0xCF5)))(v3 - 208);
  LODWORD(STACK[0x43C]) = *(v3 - 208);
  JUMPOUT(0x23AB9DFFCLL);
}

uint64_t sub_23AB9E014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  if (a10)
  {
    v14 = 0;
  }

  else
  {
    v14 = v10 != ((v13 - 443086758) ^ (v11 - 1343));
  }

  return (*(v12 + 8 * ((v14 * ((v13 - 443087453) ^ (v13 - 443087381) ^ 0x4F)) ^ (v13 - 443086758))))();
}

uint64_t sub_23AB9E0EC@<X0>(int a1@<W8>, uint64_t a2)
{
  v6 = (a2 + (v2 & 0x3F));
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * (((((((v3 - 1293270761) & 0x4D15BFEB) - 858) & a1) == 16) ^ (((v3 + 23) & 0xEB) - 1)) & 1 ^ (v3 - 1293270761) & 0x4D15BFEBu)))();
}

uint64_t sub_23AB9E168(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6)
{
  v12 = v11 + 4 * v9;
  a6.i32[0] = *(v11 + 4 * ((v6 + 603) + v9) - 3820);
  a6.i32[1] = *(v12 + 8);
  a6.i32[2] = *(v12 + 12);
  v13 = vextq_s8(a1, a6, 0xCuLL);
  v14 = a6;
  v14.i32[3] = *(v11 + 4 * (v9 + 4));
  v15 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v14, a3), vandq_s8(v13, a2)), 1uLL), *(v12 + 1588));
  v13.i32[0] = *(v7 + 4 * (*(v11 + 4 * ((v6 + 603) + v9) - 3820) & 1));
  v13.i32[1] = *(v7 + 4 * (*(v12 + 8) & 1));
  v13.i32[2] = *(v7 + 4 * (*(v12 + 12) & 1));
  v13.i32[3] = *(v7 + 4 * (v14.i8[12] & 1));
  *v12 = veorq_s8(vaddq_s32(vsubq_s32(v15, vandq_s8(vaddq_s32(v15, v15), a4)), a5), v13);
  return (*(v10 + 8 * (((v9 == 220) * v8) ^ v6)))();
}

uint64_t sub_23AB9E258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v21 - 128) = (v18 + 1035) ^ (843532609 * ((((v21 - 144) | 0xBC533DA5) + (~(v21 - 144) | 0x43ACC25A)) ^ 0xED331F1C));
  *(v21 - 144) = &a18;
  *(v21 - 136) = a14;
  *(v21 - 120) = &a18;
  *(v21 - 112) = a13;
  (*(v19 + 8 * (v18 ^ 0x43E)))(v21 - 144);
  *(v21 - 120) = &a18;
  *(v21 - 112) = a13;
  *(v21 - 144) = &a18;
  *(v21 - 136) = a14;
  *(v21 - 128) = (v18 + 1035) ^ (843532609 * ((((v21 - 144) | 0xD4473FBF) - ((v21 - 144) & 0xD4473FBF)) ^ 0x85271D07));
  (*(v19 + 8 * (v18 ^ 0x43E)))(v21 - 144);
  v22 = 843532609 * ((2031878769 - ((v21 - 144) | 0x791C0271) + ((v21 - 144) | 0x86E3FD8E)) ^ 0xD783DF36);
  *(v21 - 136) = a15;
  *(v21 - 144) = (((v18 - 1711695153) & 0x660665F2 ^ 0xE917F792) + 1441727781 * v20) ^ v22;
  *(v21 - 124) = v18 - v22 - 637;
  v23 = (*(v19 + 8 * (v18 ^ 0xB8E)))(v21 - 144);
  return (*(v19 + 8 * ((2037 * (*(v21 - 128) != -1494163771)) ^ v18)))(v23);
}

uint64_t sub_23AB9E3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21)
{
  v23 = STACK[0x3C8];
  STACK[0x4E0] -= 32;
  *(v23 + 335) = *(a14 + 335) ^ 0xE1 ^ *(*(v21 + 8 * ((a21 ^ 0x3A) - 487)) + 7) ^ *(*(v21 + 8 * (a21 ^ 0x29F)) + 5) ^ *(*(v21 + 8 * ((a21 ^ 0x3A) - 483)) + 14) ^ 0x89;
  return (*(v22 + 8 * a21))();
}

uint64_t sub_23AB9E4DC(uint64_t a1, uint64_t a2)
{
  v3 = LODWORD(STACK[0x2B4]) - 1027;
  v4 = STACK[0x4A8];
  STACK[0x340] = *(v2 + 8 * (LODWORD(STACK[0x2B4]) - 1227));
  v5 = STACK[0x270];
  STACK[0x508] = v4;
  LODWORD(STACK[0x514]) = 1866308703;
  STACK[0x480] = v5;
  return (*(v2 + 8 * ((((*(v4 + 68) & (((v3 - 769538335) & 0x2DDE3F1Bu) - 1753)) - 44 > 0xFFFFFFBF) * (((v3 + 812149876) & 0xCF9797F3) - 1360)) ^ v3)))(a1, a2, 4034, 1518);
}

uint64_t sub_23AB9E4FC@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xAC4u));

  return v3(v1);
}

uint64_t sub_23AB9E560()
{
  v5 = (((v1 - 152) | 0xA78FA5C0564FCCE3) - (v1 - 152) + ((v1 - 152) & 0x58705A3FA9B03318)) ^ 0x7422D6F9856D3C6FLL;
  v2 = *off_284DD48D8;
  *(v1 - 112) = 1361651671 * v5 + 55969938;
  *(v1 - 128) = v2 ^ (1361651671 * v5);
  *(v1 - 136) = 1361651671 * v5;
  *(v1 - 120) = 1361651671 * v5 + 227828448;
  *(v1 - 144) = -1361651671 * v5;
  *(v1 - 152) = (1361651671 * v5) ^ 0xD9462E4;
  *(v1 - 148) = (1361651671 * v5) ^ 0xD9462D0;
  v3 = (*(v0 + 17144))(v1 - 152);
  return (*(v0 + 8 * *(v1 - 116)))(v3);
}

uint64_t sub_23AB9E888(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v11 = *(v7 + 48 * v5 + 36);
  v13 = v11 == a3 || v11 + a4 >= v6 + (v4 ^ 0x685u) - 1285;
  return (*(v8 + 8 * ((v13 * ((v4 - v9 + 301) ^ (v10 + 18))) | v4)))();
}

uint64_t sub_23AB9E8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = (v69 - 1826264950) & 0x6CDA95FE;
  (*(v72 + 8 * ((v69 - 356) ^ 0xD5C)))(*a69, STACK[0x2E8], LODWORD(STACK[0x368]));
  v75 = LODWORD(STACK[0x43C]);
  v76 = (((v70 | 0x98AA1E073BFEC522) - v70 + (v70 & 0x6755E1F8C4013AD8)) ^ 0x4B076D3EE8DC35AELL) * v71;
  *(v73 - 192) = v76;
  *(v73 - 176) = v74 - 1838114871 + v76;
  *(v73 - 168) = v76 + v74 + 55968628;
  *(v73 - 208) = v76 ^ (v74 - 1838114871) ^ 0x7C;
  *(v73 - 204) = (v74 - 1838114850) ^ v76;
  *(v73 - 184) = v76 ^ 0x625B85FB;
  *(v73 - 200) = v75 - v76;
  v77 = (*(v72 + 8 * (v74 ^ 0xD41)))(v73 - 208);
  return (*(v72 + 8 * *(v73 - 172)))(v77);
}

uint64_t sub_23AB9EBF4()
{
  v3 = ((4 * v1) ^ 0xFFFFFFFFFFFFE13FLL) + v0;
  v5 = v3 > 0xF || ((v0 - 1) & 0xFu) < (v3 & 0xF);
  return (*(v2 + 8 * ((13 * v5) | v1)))();
}

uint64_t sub_23AB9ED50(uint64_t a1, unsigned int a2)
{
  if ((a2 + 974028821) < 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3 + 136 - a2 - 1948058459;
  }

  return (*(v2 + 8 * ((1618 * ((v4 + ((v3 + 538) ^ 0xBA0E84D7)) >= 0)) ^ (v3 + 136))))(a1, v4 - 1);
}

uint64_t sub_23AB9EE98(uint64_t a1, uint64_t a2)
{
  v9 = v7 + v2 + v5 - 106 + *(a2 + 9) - 107;
  v11 = (v8 & (2 * v9)) + (v9 ^ v6) == v6 && v3 + 6 < v7 + ((v5 + 1074004330) | 0x268C008u) + 95;
  return (*(v4 + 8 * ((1844 * v11) ^ v5)))();
}

uint64_t sub_23AB9EF08(uint64_t a1)
{
  v3 = STACK[0x2E8];
  v4 = (LODWORD(STACK[0x368]) ^ 0x67CFEB7FFFF9FBFBLL) - 0x67CFEB7FFFF9FBFBLL + (((v1 - 2067942819) & 0x7B424D7B ^ 0x1FFF3F2C7) & (2 * LODWORD(STACK[0x368])));
  STACK[0x3B8] = v4;
  return (*(v2 + 8 * (((v4 == 0) * (((v1 - 598249566) & 0x23A88FDD) - 1236)) ^ (v1 + 728))))(a1, v3);
}

uint64_t sub_23AB9EFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v21 = 1785193651 * ((((v20 - 136) | 0xAAF90390) - (v20 - 136) + ((v20 - 136) & 0x5506FC68)) ^ 0xBAE97075);
  *(v20 - 120) = ((v15 + 669) ^ v19 ^ 0x3DB979D1) - v21 + ((2 * v19) & 0x7B72FFD4) - 20465890;
  *(v20 - 136) = (v15 + 60) ^ v21;
  *(v20 - 128) = &a15;
  (*(v17 + 8 * (v15 + 1186)))(v20 - 136);
  *(v20 - 112) = v15 + 669 - 1564307779 * ((v20 - 136) ^ 0x970DCC13) - 778;
  *(v20 - 136) = v16;
  *(v20 - 120) = a14;
  v22 = (*(v17 + 8 * (v15 + 1198)))(v20 - 136);
  return (*(v17 + 8 * ((((*(v20 - 128) + v18) >= 0x8EB0D468) * ((31 * ((v15 + 669) ^ 0x630)) ^ 0x12E)) ^ (v15 + 669))))(v22);
}

uint64_t sub_23AB9F0D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = **(a9 + 80) - (*(*(&off_284DD4450 + a4 - 443088554) - 2) ^ 0x89);
  v13 = *(v10 + 8 * ((481 * ((v12 ^ 0xFFF5F775) + ((2 * v12) & 0xFFEBEEEA) - 92303632 != v9)) ^ a4 ^ (v11 - 1217)));
  return v13(v13, a1, a2, a3);
}

uint64_t sub_23AB9F108@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, char *a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v32 = 718 * (v26 ^ 0x676);
  v33 = ((2 * ((v31 - 144) & 0x3D50FB38) - (v31 - 144) - 1028717374) ^ 0x3024AB2A) * v28;
  *(v31 - 120) = v26 - v33 - 98;
  *(v31 - 128) = v27 - v33 + (v32 ^ 0x978A8B1C);
  *(v31 - 144) = a1;
  *(v31 - 136) = &a18;
  (*(v29 + 8 * (v26 ^ 0xE4B)))(v31 - 144);
  a15 = &a20;
  a16 = &a24;
  *(v31 - 128) = a14;
  *(v31 - 136) = (v32 - 962) ^ (1564307779 * ((561099404 - ((v31 - 144) | 0x2171B28C) + ((v31 - 144) | 0xDE8E4D73)) ^ 0x49838160));
  *(v31 - 144) = &a15;
  (*(v29 + 8 * (v32 ^ 0xDD2)))(v31 - 144);
  *(v31 - 112) = v32 - 713 + 1082434553 * ((-2139850151 - ((v31 - 144) | 0x80747A59) + ((v31 - 144) | 0x7F8B85A6)) ^ 0xE4CC732C);
  *(v31 - 144) = &a15;
  *(v31 - 136) = &a22;
  *(v31 - 128) = &a18;
  *(v31 - 120) = a14;
  (*(v29 + 8 * (v32 ^ 0xDDE)))(v31 - 144);
  v34 = a16;
  *(v31 - 112) = (v32 - 656) ^ (1037613739 * ((1683094000 - ((v31 - 144) | 0x6451F9F0) + ((v31 - 144) | 0x9BAE060F)) ^ 0x4AAC2B70));
  *(v31 - 104) = &a22;
  *(v31 - 144) = &a22;
  *(v31 - 136) = v34;
  *(v31 - 128) = &a15;
  *(v31 - 120) = a14;
  (*(v29 + 8 * (v32 ^ 0xDD6)))(v31 - 144);
  *(v31 - 104) = a14;
  *(v31 - 112) = (v32 + 384) ^ (1037613739 * ((v31 + 608613887 - 2 * ((v31 - 144) & 0x2446B68F)) ^ 0xF5449BF0));
  *(v31 - 144) = &a15;
  *(v31 - 136) = &a22;
  *(v31 - 128) = &a22;
  *(v31 - 120) = a6;
  (*(v29 + 8 * (v32 ^ 0xDE5)))(v31 - 144);
  *(v31 - 136) = (v32 - 962) ^ (1564307779 * ((v31 + 638728811 - 2 * ((v31 - 144) & 0x26123AFB)) ^ 0xB11FF6E8));
  *(v31 - 128) = v30;
  *(v31 - 144) = &a15;
  (*(v29 + 8 * (v32 + 690)))(v31 - 144);
  *(v31 - 128) = &a18;
  *(v31 - 120) = v30;
  *(v31 - 112) = v32 - 713 + 1082434553 * (((v31 - 144) & 0x48897B10 | ~((v31 - 144) | 0x48897B10)) ^ 0x2C317265);
  *(v31 - 144) = &a15;
  *(v31 - 136) = &a26;
  (*(v29 + 8 * (v32 ^ 0xDDE)))(v31 - 144);
  v35 = a16;
  *(v31 - 112) = (v32 - 656) ^ (1037613739 * (((v31 - 144) & 0xCB7B2683 | ~((v31 - 144) | 0xCB7B2683)) ^ 0xE586F403));
  *(v31 - 128) = &a15;
  *(v31 - 120) = v30;
  *(v31 - 104) = &a26;
  *(v31 - 144) = &a26;
  *(v31 - 136) = v35;
  (*(v29 + 8 * (v32 ^ 0xDD6)))(v31 - 144);
  *(v31 - 104) = v30;
  *(v31 - 128) = &a26;
  *(v31 - 120) = a8;
  *(v31 - 144) = &a15;
  *(v31 - 136) = &a26;
  *(v31 - 112) = (v32 + 384) ^ (1037613739 * ((2 * ((v31 - 144) & 0x8302920) - (v31 - 144) - 137373989) ^ 0x26CDFBA4));
  (*(v29 + 8 * (v32 + 733)))(v31 - 144);
  *(v31 - 144) = &a22;
  *(v31 - 128) = &a26;
  *(v31 - 136) = v32 - 1785193651 * ((1507020024 - ((v31 - 144) | 0x59D34CF8) + ((v31 - 144) | 0xA62CB307)) ^ 0xB63CC0E2) - 395;
  (*(v29 + 8 * (v32 ^ 0xDCB)))(v31 - 144);
  *(v31 - 140) = v32 - 1361651671 * (((v31 - 144) & 0xC9A76914 | ~((v31 - 144) | 0xC9A76914)) ^ 0xE57A6667) + 246;
  *(v31 - 136) = &a26;
  v36 = (*(v29 + 8 * (v32 + 719)))(v31 - 144);
  return (*(v29 + 8 * (((*(v31 - 144) < 0x5D4CD6B7u) * ((v32 - 1154) ^ 0x225 ^ ((v32 - 1154) | 0x225) ^ 0x21)) ^ v32)))(v36);
}

uint64_t sub_23AB9F1CC@<X0>(int a1@<W8>)
{
  v10 = v7 + v3 * v4 - 560;
  *(*v8 + (v2 + v10)) = *(*v8 + (v7 + v5));
  return (*(v9 + 8 * (((v10 == a1) * v6) ^ v1)))();
}

uint64_t sub_23AB9F208@<X0>(int a1@<W8>)
{
  v2 = (a1 + 354) | 0x36;
  v3 = (*(v1 + 8 * (v2 ^ 0xED3)))(1576, 0x105004009637391);
  STACK[0x350] = v3;
  return (*(v1 + 8 * (((v3 != 0) * ((v2 ^ 0x3A8) - 1216)) ^ v2)))();
}

uint64_t sub_23AB9F254(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _DWORD *a30)
{
  *a30 = 2092545552;
  v35 = *a5;
  v36 = 1082434553 * ((v34 - 152) ^ 0xB05CCE779B47F68ALL);
  *(v34 - 112) = ((v30 + 225578680) | 0x12) - v36;
  *(v34 - 108) = v30 + 225578680 - v36 + 47;
  *(v34 - 148) = v36 | 1;
  *(v34 - 144) = v33 - v36 + v30;
  *(v34 - 128) = (v30 + 225578680) ^ v36;
  *(v32 + 24) = v35 - v36;
  *(v32 + 40) = v36 ^ 0x13FF;
  v37 = (*(v31 + 8 * (v30 ^ (a3 - 2142))))(v34 - 152);
  return (*(v31 + 8 * *(v34 - 152)))(v37);
}

uint64_t sub_23AB9F378@<X0>(uint64_t a1@<X8>)
{
  v5 = 29 * (v3 ^ 0x21B);
  v6 = (v5 + 593);
  v7 = v2 + v1;
  v8.i64[0] = 0x1212121212121212;
  v8.i64[1] = 0x1212121212121212;
  v9.i64[0] = 0x8989898989898989;
  v9.i64[1] = 0x8989898989898989;
  v10 = *(v1 + a1 - 32);
  *(v7 + 1436) = vaddq_s8(vsubq_s8(*(v1 + a1 - 16), vandq_s8(vaddq_s8(*(v1 + a1 - 16), *(v1 + a1 - 16)), v8)), v9);
  *(v7 + 1420) = vaddq_s8(vsubq_s8(v10, vandq_s8(vaddq_s8(v10, v10), v8)), v9);
  v11 = v6 - ((v5 - 583) & v1) != 1112;
  return (*(v4 + 8 * ((v11 | (8 * v11)) ^ v5)))(1112 - v6);
}

uint64_t sub_23AB9F520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>, int8x16_t a10@<Q7>)
{
  v19 = a1 - 16;
  v20 = (v19 - 1) & 0xF;
  v21 = v16;
  v22.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v22.i64[1] = a8;
  v23 = vrev64q_s8(veorq_s8(veorq_s8(veorq_s8(*(a5 + v19), *(v13 + v20 - 15)), *(v20 + v12 - 13)), *(v14 + a3 + v20 - 15)));
  v24 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v23, v23, 8uLL), a10), vmulq_s8(v22, a9)));
  *(v17 + v19) = vextq_s8(v24, v24, 8uLL);
  return (*(v18 + 8 * (((a2 == 16) * a4) ^ v15)))();
}

uint64_t sub_23AB9F564@<X0>(uint64_t a1@<X1>, unsigned int a2@<W8>)
{
  v4 = (((a2 + 300) | 0x91) ^ 0xFFFFFFFFFFFFF96ALL) + v2;
  STACK[0x3B8] = v4;
  *(a1 + v4) = (&STACK[0x3B8] ^ 0xBA) * (&STACK[0x3B8] + 17);
  return (*(v3 + 8 * ((682 * (v4 == 0)) ^ a2)))();
}

uint64_t sub_23AB9F9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, char *a19, char *a20, uint64_t a21)
{
  a18 = v24 + ((2 * (&a17 & 0x5250F870) - &a17 - 1381038193) ^ 0xB38D8ADA) * v23 + 1583;
  a20 = &a14;
  a21 = a16;
  a19 = &a11;
  v25 = (*(v22 + 8 * (v24 ^ 0x9B7)))(&a17);
  return (*(v22 + 8 * ((1175 * (a17 == v21 + ((v24 - 230) | 0x4E8) - 1512)) ^ v24)))(v25);
}

uint64_t sub_23AB9FAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W8>)
{
  LODWORD(STACK[0x424]) = a4;
  LODWORD(STACK[0x2CC]) = v5;
  LODWORD(STACK[0x3D0]) = v6;
  LODWORD(STACK[0x3C4]) = v4;
  LODWORD(STACK[0x324]) = v7 + 64;
  v8 = STACK[0x518];
  v9 = (((a4 ^ 0x9E5EFFEC) + 1637941268) ^ ((a4 ^ 0x5B4F7A6) - 95745958) ^ ((a4 ^ 0x78C29D03) - 2026020099)) + (((v8[18] ^ 0xEE87693D) + 293115587) ^ ((v8[18] ^ 0x71AB6180) - 1907057024) ^ ((v8[18] ^ 0x7C049DF4) - 2080677364)) + 981631715;
  v10 = (((v6 ^ 0x22E88E1E) - 585666078) ^ ((v6 ^ 0x2AD08DBC) - 718310844) ^ ((v6 ^ 0xEB1096EB) + 351234325)) + (((v8[19] ^ 0x9AE3C808) + 1696348152) ^ ((v8[19] ^ 0xAA1288ED) + 1441625875) ^ ((v8[19] ^ 0xD3D9D5AC) + 740698708)) + 348906909;
  v8[18] = v9 ^ ((v9 ^ 0xD172088F) + 1522315042) ^ ((v9 ^ 0xCD5D1DA) - 2028243339) ^ ((v9 ^ 0xC67BEEFB) + 1303726422) ^ ((v9 ^ 0x6FED6FFF) - 467417006) ^ 0x9719CD18;
  v8[19] = v10 ^ ((v10 ^ 0xCFDA8AD9) + 2120207918) ^ ((v10 ^ 0x9FB436A2) + 774992471) ^ ((v10 ^ 0x71FBF8C7) - 1065436108) ^ ((v10 ^ 0x6FEFFFB7) - 563430588) ^ 0xAD522E42;
  v11 = (((v5 ^ 0x3D497F23) - 1028226851) ^ ((v5 ^ 0xD579E460) + 713431968) ^ ((v5 ^ 0xB180E0A) - 186125834)) + (((v8[20] ^ 0x6DB29D8A) - 1840422282) ^ ((v8[20] ^ 0xC61C4BE6) + 971224090) ^ ((v8[20] ^ 0x48864325) - 1216758565)) - 566691267;
  v12 = (v11 ^ 0xE252B444) & (2 * (v11 & 0xE8183055)) ^ v11 & 0xE8183055;
  v13 = ((2 * (v11 ^ 0x6242F4E6)) ^ 0x14B58966) & (v11 ^ 0x6242F4E6) ^ (2 * (v11 ^ 0x6242F4E6)) & 0x8A5AC4B2;
  v14 = v13 ^ 0x8A4A4491;
  v15 = (v13 ^ 0x8020) & (4 * v12) ^ v12;
  v16 = ((4 * v14) ^ 0x296B12CC) & v14 ^ (4 * v14) & 0x8A5AC4B0;
  v17 = (v16 ^ 0x84A0080) & (16 * v15) ^ v15;
  v18 = ((16 * (v16 ^ 0x8210C433)) ^ 0xA5AC4B30) & (v16 ^ 0x8210C433) ^ (16 * (v16 ^ 0x8210C433)) & 0x8A5AC4B0;
  v19 = v17 ^ 0x8A5AC4B3 ^ (v18 ^ 0x80084000) & (v17 << 8);
  v8[20] = v11 ^ (2 * ((v19 << 16) & 0xA5A0000 ^ v19 ^ ((v19 << 16) ^ 0x44B30000) & (((v18 ^ 0xA528483) << 8) & 0xA5A0000 ^ 0x1A0000 ^ (((v18 ^ 0xA528483) << 8) ^ 0x5AC40000) & (v18 ^ 0xA528483)))) ^ 0x1FA12C7A;
  v20 = (((LODWORD(STACK[0x3C4]) ^ 0xAB12A375) + 1424841867) ^ ((LODWORD(STACK[0x3C4]) ^ 0xEC68BD26) + 328680154) ^ ((LODWORD(STACK[0x3C4]) ^ 0xA4528B1A) + 1538094310)) + 703893245 + (((*(STACK[0x518] + 84) ^ 0x60F1DACF) - 1626462927) ^ ((*(STACK[0x518] + 84) ^ 0xA443D5) - 10765269) ^ ((*(STACK[0x518] + 84) ^ 0x837D0C53) + 2088956845));
  *(STACK[0x518] + 84) = v20 ^ ((v20 ^ 0xEFC07A0D) + 1939661210) ^ ((v20 ^ 0xF09AD0B7) + 1824934692) ^ ((v20 ^ 0x4322312A) - 545346881) ^ ((v20 ^ 0x3FDBFFFB) - 1551408016) ^ 0x808BF122;
  STACK[0x450] -= 320;
  return (STACK[0x470])(a1, a2, 262, a3, 13);
}

uint64_t sub_23AB9FD18()
{
  v3 = *(v2 + 8 * (v0 + 1388));

  return v3(v1);
}

uint64_t sub_23AB9FE2C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, int a7)
{
  v10 = (((a7 ^ 0xF2C0507B) + 222277509) ^ ((a7 ^ 0x27C85D6D) - 667442541) ^ ((a7 ^ (a4 + 717332814) & 0x553E5F39 ^ 0xFAF64490) + 84523103)) + v9;
  v11 = (((a5 ^ 0x1017A7FF) - 269985791) ^ ((a5 ^ 0xF4C9EB97) + 188093545) ^ ((a5 ^ 0xCB2006DF) + 887093537)) + v9;
  v12 = (v11 < v8) ^ (v10 < v8);
  v13 = v10 < v11;
  if (v12)
  {
    v13 = v11 < v8;
  }

  return (*(v7 + 8 * ((26 * v13) ^ a4)))();
}

void sub_23AB9FF5C(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = 50899313 * (((a1 | 0x7280E4D9) - (a1 & 0x7280E4D9)) ^ 0xBAE1208F);
  v2 = *(a1 + 36) + v1;
  v3 = *(a1 + 32) ^ v1;
  v4 = *a1;
  v5 = *(a1 + 48);
  v6 = *(a1 + 24);
  v7 = -971492857 * (*(a1 + 8) ^ v1);
  v8 = 210068311 * (((&v10 | 0xEEEFB94B) - &v10 + (&v10 & 0x111046B0)) ^ 0x1C6416A3);
  v10 = v2 + v8 + 1421512058;
  v12 = v6;
  v13 = v6;
  v14 = v8 - 2090350285 + v7;
  v15 = (v3 ^ ((v3 ^ 0xE7B413DF) + 1851266169) ^ ((v3 ^ 0x777FEFB2) - 23861226) ^ ((v3 ^ 0x9922FBEA) + 282000462) ^ ((v3 ^ 0x7FFAFFDF) - 166266759) ^ 0x54D876FD) - v8;
  v11 = v5;
  v16 = v4;
  v9 = *(&off_284DD4450 + (v2 ^ 0x1EF)) - 4;
  (*&v9[8 * (v2 ^ 0x995)])(&v10);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23ABA0228(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = v6 - a3;
  if (a2 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = a2;
  }

  return (*(v7 + 8 * (((v9 + 1 >= ((a6 - 498) ^ 0x5EEu)) * ((a6 + 1441675331) & 0xAA11C7EB ^ 0x794)) ^ a6)))();
}

void sub_23ABA0284(uint64_t a1)
{
  v1 = *(a1 + 8) + 1785193651 * (a1 ^ 0x101073E5);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_23ABA0320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(&STACK[0x28C] + v6 + 72);
  v13 = ((2 * v6) & 0xE3FDFFD8) + (v6 ^ 0xF1FEFFEE) + v7;
  *(a6 + v13) = (v8 - v10) ^ 0x28 ^ v12;
  *(a6 + v13 + 1) = (BYTE1(v12) ^ 0x95) - 2 * ((BYTE1(v12) ^ 0x95) & 0xB ^ BYTE1(v12) & 2) - 119;
  *(a6 + v13 + 2) = (BYTE2(v12) ^ 0x28) - 2 * ((BYTE2(v12) ^ 0x28) & 0xB ^ BYTE2(v12) & 2) - 119;
  *(a6 + v13 + 3) = (HIBYTE(v12) ^ 0xE3) - 2 * ((HIBYTE(v12) ^ 0xE3) & 0xD ^ HIBYTE(v12) & 4) - 119;
  return (*(v11 + 8 * (((v6 + 4 < LODWORD(STACK[0x2E8])) * v9) ^ v8)))();
}

uint64_t sub_23ABA0860@<X0>(int a1@<W8>)
{
  v9 = v2 + 1;
  v10 = v1 < v3;
  *(*(v7 + 8) + 4 * v9) = *(*(v7 + 8) + 4 * (v9 + a1));
  if (v10 == v9 + v6 < v3)
  {
    v10 = v9 + v6 < v1;
  }

  return (*(v8 + 8 * ((v10 * v4) ^ v5)))();
}

uint64_t sub_23ABA0868@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, unint64_t a52)
{
  STACK[0x450] = a52;
  STACK[0x428] = a1;
  return (*(v53 + 8 * (((STACK[0x418] == 0) * (((((v52 - 718) | 0x710) - 628) ^ 2) + ((((v52 - 718) | 0x710) - 628) | 2) - 2610)) | (v52 - 718) | 0x710)))();
}

void sub_23ABA0878(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16) ^ (1785193651 * (a1 ^ 0x101073E5));
  v2 = *a1;
  if (*(*a1 + 4) - 1173454827 >= 0)
  {
    v3 = *(*a1 + 4) - 1173454827;
  }

  else
  {
    v3 = 1173454827 - *(*a1 + 4);
  }

  if (*(*(a1 + 24) + 4) - 1173454827 >= 0)
  {
    v4 = *(*(a1 + 24) + 4) - 1173454827;
  }

  else
  {
    v4 = 1173454827 - *(*(a1 + 24) + 4);
  }

  v7[1] = v1 - 1361651671 * (((v7 | 0xF03225EF) - (v7 & 0xF03225EF)) ^ 0x2310D563) + 1397;
  v8 = v2;
  v5 = *(&off_284DD4450 + v1 - 245) - 4;
  (*&v5[8 * v1 + 14960])(v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X14, X17 }
}

uint64_t sub_23ABA09D8()
{
  *v4 = (__PAIR64__(v4[623], ((((v0 - 2125914639) ^ v3) & v3) >> (__clz((v0 - 2125914639) ^ v3 | 1) ^ 0x1F)) & 1) - 1) >> 32;
  v8 = v7 - 160;
  *(v8 + 24) = v1 | 3;
  *(v7 - 124) = -2030744672 - v1;
  *(v7 - 152) = (v5 ^ 0x70) - v1;
  *(v7 - 144) = v5 - v1 + 2;
  *(v7 - 140) = v1;
  *(v8 + 40) = (v6 + 1) + v1;
  *(v7 - 128) = v5 - v1;
  v9 = (*(v2 + 16776))(v7 - 152);
  return (*(v2 + 8 * *(v7 - 148)))(v9);
}

void sub_23ABA0ADC()
{
  v4 = STACK[0x4A8];
  v5 = 1785193651 * ((((v1 | 0x6A8F50EC) ^ 0xFFFFFFFE) - (~v1 | 0x9570AF13)) ^ 0x8560DCF6);
  *(v3 - 204) = 17098380 - v5;
  *(v3 - 192) = (v0 - 473373719) ^ v5;
  *(v3 - 200) = v4;
  (*(v2 + 8 * (v0 + 2078)))(v3 - 208);
  STACK[0x340] = *(v2 + 8 * v0);
  JUMPOUT(0x23ABA0B7CLL);
}

uint64_t sub_23ABA0B88@<X0>(int a1@<W8>)
{
  v6 = v2 + 13 * (v1 ^ 0x504) - 560;
  *(*v3 + (v5 - 574661166 + v6)) = *(*v3 + (v2 - 192923016));
  return (*(v4 + 8 * ((164 * (v6 == a1)) ^ v1)))();
}

void sub_23ABA0BE4(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (843532609 * ((2 * (a1 & 0x2AEF5EB5) - a1 - 720330422) ^ 0x847083F2));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_23ABA0E20(uint64_t a1, int a2, int a3)
{
  v6 = (a2 + v5) > 0xB0B711BF;
  if ((v3 - 752141325) < 0x4F48EE40 == v6)
  {
    v6 = ((a3 - 323) ^ 0x4F48EBFEu) + a2 + v5 > v3 - 752141325;
  }

  return (*(v4 + 8 * ((!v6 * ((a3 - 1320) ^ 0x1D7)) ^ a3)))();
}

void sub_23ABA0EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29)
{
  LODWORD(STACK[0x37C]) = v29 - 223;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23ABA1EE8@<X0>(uint64_t a1@<X8>)
{
  v5 = v2;
  v6 = v2;
  v7 = (v3 - 96) ^ (1785193651 * ((&v5 & 0x342FFFBC | ~(&v5 | 0x342FFFBC)) ^ 0xDBC073A6));
  v8 = a1;
  return (*(v1 + 8 * (v3 + 1779)))(&v5);
}

uint64_t sub_23ABA1F4C(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = v7;
  HIDWORD(v15) = a1 ^ 0x3289549;
  LODWORD(v15) = a1 ^ 0xE0000000;
  v16 = (a7 ^ 0x1CD76AB6) & (v7 ^ 0xC5DE0D21) ^ a7 & 0x26F69868;
  v17 = (v15 >> 27) + (((a2 ^ 0xB77AFE2C) + 1216676308) ^ ((a2 ^ 0x5EC8C1CE) - 1590215118) ^ ((a2 ^ 0xA9AAAAB) - 177908395)) + (v16 & 0x1A30A62E ^ 0xE5DF59F1 ^ (v16 ^ 0xFB29F7DF) & (v8 & 0x5D4620FC ^ 0xA4CF5999 ^ (a7 ^ 0xBE6EB5B5) & ((a4 - 213) ^ (v13 - 148) ^ v8))) + 1252871909 + (((*(v9 + 4 * (a5 + v11)) ^ 0xE9028EDE) + 385708322) ^ ((*(v9 + 4 * (a5 + v11)) ^ 0xBC2DA1A7) + 1137860185) ^ ((*(v9 + 4 * (a5 + v11)) ^ 0xC88BF158) + 930352808));
  return (*(v10 + 8 * ((50 * (a5 + 1 == v12 + 20)) ^ a4)))(v17 ^ ((v17 ^ 0xC896CC0F) + 1479823891) ^ ((v17 ^ 0xE8A86311) + 2013986061) ^ ((v17 ^ 0xB29C3182) + 574533536) ^ ((v17 ^ 0xFDFFFF7E) + 1834836324) ^ 0x8C75F4AB, v14);
}

void sub_23ABA2254(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * (((a1 | 0x6AABF6BC) - (a1 & 0x6AABF6BC)) ^ 0xBBA9DBC3));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_23ABA23B8(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return v2 ^ 0x9DA4DE21;
}

uint64_t sub_23ABA2BFC(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  HIDWORD(v16) = (v8 - 2078786429) & 0x7BE7C3EF ^ a1 ^ 0x3289726;
  LODWORD(v16) = a1 ^ 0xE0000000;
  v17 = (v9 ^ 0x3A46CBF0) & (a7 ^ 0x1CD76AB6) ^ a7 & 0x2691A146;
  v18 = (v9 ^ 0x5B3226B0) & (a7 ^ v15) ^ a7 & 0xB81AB3F9;
  v19 = (a4 ^ v15) + (v16 >> 27) + (*(v11 + 4 * (a5 + v13)) ^ v10) - 1820342776 + (v18 & 0xD726D600 ^ 0xA8D9B9FF ^ (v17 & 0xAF25B6DF ^ 0x83FDBF26 ^ (v17 ^ 0xFB6EDFF9) & (v7 ^ 0x4C0D2396)) & (v18 ^ 0x5FF76EB6));
  v20 = (v19 ^ 0xF39BF680) & (2 * (v19 & 0xFB9BF6D4)) ^ v19 & 0xFB9BF6D4;
  v21 = ((2 * (v19 ^ 0xC7997E08)) ^ 0x780511B8) & (v19 ^ 0xC7997E08) ^ (2 * (v19 ^ 0xC7997E08)) & 0x3C0288DC;
  v22 = v21 ^ 0x4028844;
  v23 = (v21 ^ 0x38000090) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0xF00A2370) & v22 ^ (4 * v22) & 0x3C0288DC;
  v25 = (v24 ^ 0x30020040) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0xC00888C)) ^ 0xC0288DC0) & (v24 ^ 0xC00888C) ^ (16 * (v24 ^ 0xC00888C)) & 0x3C0288D0;
  v27 = v25 ^ 0x3C0288DC ^ (v26 ^ 0x8800) & (v25 << 8);
  return (*(v12 + 8 * ((915 * (a5 + 1 == v14 + 60)) ^ v8)))(v19 ^ (2 * ((v27 << 16) & 0x3C020000 ^ v27 ^ ((v27 << 16) ^ 0x8DC0000) & (((v26 ^ 0x3C02001C) << 8) & 0x3C020000 ^ 0x3C020000 ^ (((v26 ^ 0x3C02001C) << 8) ^ 0x2880000) & (v26 ^ 0x3C02001C)))) ^ 0x70B67225);
}

uint64_t sub_23ABA2ED8@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v7 = v3 - 1;
  STACK[0x4D8] = v7;
  *(a1 + v7) = ((10 * (v2 ^ v5) - 100) ^ a2) * (a2 + 17);
  return (*(v6 + 8 * (((STACK[0x4D8] != 0) * v4) ^ v2)))();
}

void sub_23ABA2F6C()
{
  v4 = 1785193651 * (v1 ^ 0x101073E5);
  *(v3 - 200) = STACK[0x4A8];
  *(v3 - 204) = 17098380 - v4;
  *(v3 - 192) = (v0 - 473373682) ^ v4;
  (*(v2 + 8 * (v0 + 2115)))(v3 - 208);
  JUMPOUT(0x23ABA0B60);
}

uint64_t sub_23ABA2FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  (*(v31 + 17192))(a26 + a27, 0x100004077774924);
  v34 = (*(v31 + 8 * (v32 - 2125913124)))();
  *v33 = v34;
  v35 = 1812433253 * (((((v34 >> 30) | 0xF45FE1CC) ^ v34 ^ 0xDA177C26) + 635995098) ^ ((((v34 >> 30) | 0xF45FE1CC) ^ v34 ^ 0xEB8744DA) + 343456550) ^ ((((v34 >> 30) | 0xF45FE1CC) ^ v34 ^ 0xC5CFD930) + 976234192));
  v33[1] = v35 - 163692163;
  return (*(v31 + 1744))(v35, *(v31 + 1744), 1812433253, 4131275132, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v30, a29, a30);
}

uint64_t sub_23ABA30F8@<X0>(uint64_t a1@<X0>, int a2@<W3>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t))
{
  v15 = (((*(v13 - 148) ^ 0x90EBB9E) - 151960478) ^ ((*(v13 - 148) ^ 0x5529C9A8) - 1428801960) ^ ((*(v13 - 148) ^ 0xBF0FE77F) + 1089476737)) + (((a3 ^ 0x84B5959) - 139155801) ^ ((a3 ^ 0xB238F8D8) + 1304889128) ^ ((a3 ^ 0x595B34C8) - 1499149512)) + 183432435;
  v16 = (v15 ^ 0xB340219E) & (2 * (v15 & 0xBB62359F)) ^ v15 & 0xBB62359F;
  v17 = ((2 * (v15 ^ 0x93C462A6)) ^ 0x514CAE72) & (v15 ^ 0x93C462A6) ^ (2 * (v15 ^ 0x93C462A6)) & 0x28A65738;
  v18 = v17 ^ 0x28A25109;
  v19 = (v17 ^ 0x630) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0xA2995CE4) & v18 ^ (4 * v18) & 0x28A65738;
  v21 = (v20 ^ 0x20805429) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x8260319)) ^ 0x8A657390) & (v20 ^ 0x8260319) ^ (16 * (v20 ^ 0x8260319)) & 0x28A65730;
  v23 = v21 ^ 0x28A65739 ^ (v22 ^ 0x8245300) & (v21 << 8);
  v24 = v15 ^ (2 * ((v23 << 16) & 0x28A60000 ^ v23 ^ ((v23 << 16) ^ 0x57390000) & (((v22 ^ 0x20820429) << 8) & 0x28A60000 ^ 0x8A00000 ^ (((v22 ^ 0x20820429) << 8) ^ 0x26570000) & (v22 ^ 0x20820429))));
  v25 = (((*(v13 - 144) ^ 0xA764FA73) + 1486554509) ^ ((*(v13 - 144) ^ 0x9D3A8FF3) + 1657106445) ^ ((*(v13 - 144) ^ 0xD976E0C9) + 646520631)) + (((v12 ^ 0x7859AA7A) - 2019142266) ^ ((v12 ^ 0x1381C761) - 327272289) ^ ((v12 ^ 0x88F0F852) + 1997473710)) - 150437698;
  v26 = (v25 ^ 0xEF2885C3) & (2 * (v25 & 0xCF48A9D4)) ^ v25 & 0xCF48A9D4;
  v27 = ((2 * (v25 ^ 0x63B8D643)) ^ 0x59E0FF2E) & (v25 ^ 0x63B8D643) ^ (2 * (v25 ^ 0x63B8D643)) & 0xACF07F96;
  v28 = v27 ^ 0xA4100091;
  v29 = (v27 ^ 0x8606F00) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0xB3C1FE5C) & v28 ^ (4 * v28) & 0xACF07F94;
  v31 = (v30 ^ 0xA0C07E00) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0xC300183)) ^ 0xCF07F970) & (v30 ^ 0xC300183) ^ (16 * (v30 ^ 0xC300183)) & 0xACF07F90;
  v33 = v31 ^ 0xACF07F97 ^ (v32 ^ 0x8C007900) & (v31 << 8);
  *(v13 - 148) = v24 ^ 0x9460EA4;
  *(v13 - 144) = v25 ^ (2 * ((v33 << 16) & 0x2CF00000 ^ v33 ^ ((v33 << 16) ^ 0x7F970000) & (((v32 ^ 0x20F00687) << 8) & 0x2CF00000 ^ 0xC800000 ^ (((v32 ^ 0x20F00687) << 8) ^ 0x707F0000) & (v32 ^ 0x20F00687)))) ^ 0x2CA0C3B3;
  v34 = (((a2 ^ 0x51BD421B) - 1371357723) ^ ((a2 ^ 0x248335D8) - 612578776) ^ ((a2 ^ 0x9616E28A) + 1776885110)) + (((*(v13 - 140) ^ 0xB8461B42) + 1203365054) ^ ((*(v13 - 140) ^ 0x48E9330C) - 1223242508) ^ ((*(v13 - 140) ^ 0x1387BD07) - 327662855)) + 202824030;
  v35 = (v34 ^ 0x31BB5435) & (2 * (v34 & 0xBA3A5134)) ^ v34 & 0xBA3A5134;
  v36 = ((2 * (v34 ^ 0x25CFD67D)) ^ 0x3FEB0E92) & (v34 ^ 0x25CFD67D) ^ (2 * (v34 ^ 0x25CFD67D)) & 0x9FF58748;
  v37 = v36 ^ 0x80148149;
  v38 = (v36 ^ 0x19E10400) & (4 * v35) ^ v35;
  v39 = ((4 * v37) ^ 0x7FD61D24) & v37 ^ (4 * v37) & 0x9FF58748;
  v40 = (v39 ^ 0x1FD40500) & (16 * v38) ^ v38;
  v41 = ((16 * (v39 ^ 0x80218249)) ^ 0xFF587490) & (v39 ^ 0x80218249) ^ (16 * (v39 ^ 0x80218249)) & 0x9FF58740;
  v42 = v40 ^ 0x9FF58749 ^ (v41 ^ 0x9F500400) & (v40 << 8);
  v43 = (((v14 ^ 0x2DA29B8F) - 765631375) ^ ((v14 ^ 0xFA290E04) + 97972732) ^ ((v14 ^ 0x34A300C2) - 883097794)) + (((*(v13 - 136) ^ 0x4346420D) - 1128677901) ^ ((*(v13 - 136) ^ 0xA98FA059) + 1450205095) ^ ((*(v13 - 136) ^ 0x9E1771D) - 165771037)) - 320397013;
  *(v13 - 140) = v34 ^ (2 * ((v42 << 16) & 0x1FF50000 ^ v42 ^ ((v42 << 16) ^ 0x7490000) & (((v41 ^ 0xA58349) << 8) & 0x1FF50000 ^ 0xA700000 ^ (((v41 ^ 0xA58349) << 8) ^ 0x75870000) & (v41 ^ 0xA58349)))) ^ 0x687BCAEF;
  *(v13 - 136) = v43 ^ ((v43 ^ 0xAB7CE3) - 641632890) ^ ((v43 ^ 0xE7486BC0) + 1042440871) ^ ((v43 ^ 0x2E891C45) - 136112860) ^ ((v43 ^ 0xEFFFFDFF) + 915797146) ^ 0xC5BD63D0;
  return a12(a1, 2727448620, 1567518739);
}

void sub_23ABA311C()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x23ABA3130);
}

uint64_t sub_23ABA31F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = v3 - 1;
  *(v8 + v9) = *(a2 + v9) - (v5 & (2 * *(a2 + v9))) - 119;
  return (*(v7 + 8 * (((v9 == (v2 ^ v6 ^ a1)) * v4) ^ v2)))();
}

uint64_t sub_23ABA32BC@<X0>(uint64_t a1@<X8>)
{
  v4 = 1388665877 * ((-676802503 - (&v6 | 0xD7A8D039) + (&v6 | 0x28572FC6)) ^ 0xA5FA4D2A);
  v7 = v4 + v3 - 1120;
  v8 = (v2 ^ ((v2 ^ 0x7AC14635) - 1057427956) ^ ((v2 ^ 0xCBADCF5D) + 1905551204) ^ ((v2 ^ 0xCFFF7FFF) + 1975965634) ^ 0x364EF7FF ^ (((7 * (v3 ^ 0x5B9)) ^ 0x816C0E32) + (v2 ^ 0x3B55A156))) - v4;
  v6 = v1;
  return (*(a1 + 8 * (v3 + 905)))(&v6);
}

uint64_t sub_23ABA3488(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

uint64_t sub_23ABA378C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, unsigned int a36)
{
  v39 = *(&a24 + a2 + 72);
  v40 = ((2 * a2) & 0x7FFEEBD8) + (a2 ^ 0x3FFF75EF) + v36;
  *(a1 + v40) = (HIBYTE(v39) ^ 0xE3) - ((((v37 + 93) | 8) - 10) & (2 * (HIBYTE(v39) ^ 0xE3))) - 119;
  *(a1 + v40 + 1) = (BYTE2(v39) ^ 0x28) - 2 * ((BYTE2(v39) ^ 0x28) & 0xB ^ BYTE2(v39) & 2) - 119;
  *(a1 + v40 + 2) = (BYTE1(v39) ^ 0x95) - 2 * ((BYTE1(v39) ^ 0x95) & 0xB ^ BYTE1(v39) & 2) - 119;
  *(a1 + v40 + 3) = v39 ^ 0xC0;
  return (*(v38 + 8 * ((15 * (a2 + 4 >= a36)) ^ v37)))();
}

void sub_23ABA3864(uint64_t a1)
{
  v1 = 1361651671 * ((a1 - 2 * (a1 & 0x40C2D223) + 1086509603) ^ 0x93E022AF);
  if (*(a1 + 32))
  {
    v2 = *a1 - v1 == 314511593;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23ABA3930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v52 = (*(v49 + 8 * (v46 + 754)))(LODWORD(STACK[0x4BC]), a2, a46);
  v53 = STACK[0x278];
  if (v52)
  {
    if (v52 == 268435459)
    {
      LODWORD(STACK[0x320]) = 1650165017;
      return (*(v49 + 8 * (((((v50 - 638) | 0x51) - 730) * (STACK[0x358] == 0)) ^ (v50 - 568))))();
    }

    else
    {
      v63 = 1082434553 * (((v48 | 0x94E4FE8B) + (~v48 | 0x6B1B0174)) ^ 0xFA30800);
      *(v51 - 200) = &STACK[0x320];
      *(v51 - 208) = (v52 - 1650139615 - ((2 * v52) & 0x3B49BC42)) ^ v63;
      *(v51 - 204) = (v50 - 913) ^ v63;
      v64 = (*(v49 + 8 * (v50 ^ 0xD60)))(v51 - 208);
      return (*(v49 + 8 * (((((v50 - 638) | 0x51) - 730) * (STACK[0x358] == 0)) ^ (v50 - 568))))(v64);
    }
  }

  else
  {
    STACK[0x300] = &STACK[0x540] + v47;
    LODWORD(STACK[0x3E8]) = 1928980172;
    STACK[0x450] = v53 - 192;
    STACK[0x488] = 0;
    LODWORD(STACK[0x390]) = 2124293525;
    *(v51 - 208) = (v50 - 1224078495) ^ (1564307779 * ((v48 - 163589896 - 2 * (v48 & 0xF63FD0F8)) ^ 0x61321CEB));
    (*(v49 + 8 * (v50 + 809)))(v51 - 208);
    v55 = (*(v49 + 8 * (v50 ^ 0xD7B)))(336, 0x100004077774924);
    return (*(v49 + 8 * (((v55 == 0) * (25 * (v50 ^ 0x509) - 516)) ^ (v50 + 384))))(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10);
  }
}

void sub_23ABA3B74(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  **(a1 + 8) = v3;
  *(a2 + 16) = v2;
  JUMPOUT(0x23ABA3C28);
}

uint64_t sub_23ABA3C2C(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_23ABA3C84@<X0>(uint64_t a1@<X8>)
{
  v9 = v3 ^ 0x7C9;
  v10 = (*(*(v7 + 8) + 4 * v1) ^ 0xD001B548) + v2;
  *(*(a1 + 8) + 4 * v1) = v10 + v4 - ((v10 << (((v9 - 99) & 0x75) - 84)) & v6);
  return (*(v5 + 8 * (v9 | ((v8 > (v1 + 1)) << 8))))();
}

uint64_t sub_23ABA3F80(uint64_t result)
{
  v1 = 1082434553 * ((((2 * result) | 0x57219296AD62E92CLL) - result - 0x2B90C94B56B17496) ^ 0x9BCC073CCDF6821CLL);
  v2 = *(result + 24) ^ v1;
  v3 = *(result + 44) + v1;
  v4 = *(result + 16) + v1;
  v5 = *(result + 32) ^ v1;
  v6 = *(result + 40) + v1;
  v7 = *(result + 4) - v1;
  v8 = v4 == v5;
  v9 = v4 > v5;
  v10 = v8;
  if (v7)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = v2;
  }

  else
  {
    v12 = v6;
  }

  *result = v12 ^ v3;
  return result;
}

uint64_t sub_23ABA4020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, uint64_t a40)
{
  v40 = (a39 + 1717638646) & 0x999EEDF6;
  v41 = v40 - 899;
  v42 = v40 - 1048;
  v43 = *(a40 + 8 * (((v42 == 308) * a4) ^ v40));
  return v43(v43, v42, v41, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

void sub_23ABA4060(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  a5 = (v8 + 1287) ^ (1082434553 * ((((2 * &a3) | 0xE9DE43EA) - &a3 + 185654795) ^ 0x6FA8D77F));
  a3 = a1;
  a4 = v7;
  a6 = v7;
  (*(v6 + 8 * (v8 + 1756)))(&a3);
  JUMPOUT(0x23ABA40C0);
}

uint64_t sub_23ABA40E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 120) = v15 - 1785193651 * ((2 * ((v17 - 128) & 0x10FB59A0) - (v17 - 128) - 284907937) ^ 0xFF14D5BA) + 125;
  *(v17 - 128) = &a13;
  *(v17 - 112) = v14;
  v18 = (*(v13 + 8 * (v15 ^ 0xBC3)))(v17 - 128);
  return (*(v13 + 8 * ((15 * (v16 == ((((v15 - 819) | 0x412) - 14) ^ (v15 + 208)))) ^ v15)))(v18);
}

uint64_t sub_23ABA4190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, int a52, uint64_t a53, uint64_t a54, _BYTE *a55)
{
  STACK[0x410] = 0;
  LODWORD(STACK[0x348]) = 2124293525;
  STACK[0x418] = 0;
  LODWORD(STACK[0x364]) = 2124293525;
  return (*(v55 + 8 * ((((*(*(&off_284DD4450 + a52 - 239) - 4) ^ *a55) == ((a52 ^ 0x49) + 29)) * (((a52 ^ 0x49) + 72) ^ 0x16F)) ^ a52 ^ 0x49)))();
}

void sub_23ABA42A0(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (1564307779 * ((((2 * a1) | 0xB1B019AC) - a1 - 1490554070) ^ 0xCFD5C0C5));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_23ABA4340@<X0>(int a1@<W8>)
{
  v8 = (v2 - 2);
  v9 = v1 + 2;
  *v8 = (v3 + v9) * (v9 ^ v5);
  *(v8 - 1) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v7 + 8 * (((v4 == 2) * v6) ^ a1)))();
}

uint64_t sub_23ABA4350(int8x16_t a1, int8x16_t a2)
{
  v9 = v3 + 2;
  v10 = v5 + 2;
  v11 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a1)), a2);
  v10[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a1)), a2);
  *v10 = v11;
  return (*(v8 + 8 * (((v4 == 32) * v6) | (v7 + v2 + 940))))();
}

uint64_t sub_23ABA4364(uint64_t a1)
{
  v1 = (*a1 ^ (143681137 * ((-2 - ((a1 | 0xF610E2FB) + (~a1 | 0x9EF1D04))) ^ 0xDD48015E))) - 544;
  v2 = (v1 ^ 0xBA0E81CB) + *(*(a1 + 8) + 4);
  if (v2 < 0)
  {
    v2 = -v2;
  }

  return (*(*(&off_284DD4450 + v1 - 438) + 8 * ((v2 > (v1 ^ 0x220) - 1022) ^ v1) - 4))();
}

uint64_t sub_23ABA4414(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v9 = (v6 + (a4 + 1049) + v7 - 863);
  v10 = *(v6 + v5 - 15);
  *v9 = *(v6 + v5 - 31);
  v9[1] = v10;
  return (*(v4 + 8 * ((466 * ((v6 & 0xFFFFFFE0) == 32)) ^ (a3 + v8))))(a1, a2, 466, (v6 & 0xFFFFFFE0) - 64, v6 + v5 - 47, v6 + (a4 + 1049) + v7 - 895);
}

uint64_t sub_23ABA4468(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 60;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

uint64_t sub_23ABA452C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v19 - 120) = a14;
  *(v19 - 136) = v15;
  *(v19 - 112) = v18 - (((v14 | 0x69D4A795) + (~v14 | 0x962B586A)) ^ 0xFED96B87) * v16 - 188;
  v20 = (*(v17 + 8 * (v18 ^ 0xBA1)))(v19 - 136);
  return (*(v17 + 8 * (((*(v19 - 128) > 0x7C6BFD1Fu) * ((97 * (v18 ^ 0x3EE)) ^ 0x634)) ^ v18)))(v20);
}

void sub_23ABA45CC(uint64_t a1)
{
  v1 = *(a1 + 4) + 1082434553 * ((a1 - 2 * (a1 & 0xDD028C04) - 587035644) ^ 0x46457A8E);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_23ABA4678(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = 210068311 * ((a1 - 576580603 - 2 * (a1 & 0xDDA21405)) ^ 0x2F29BBED);
  v3 = *a1 - v2;
  v4 = *(a1 + 40);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 8);
  v8 = *(a1 + 32) - v2 + 1531647304;
  v9 = 1564307779 * ((&v11 & 0x7E2FEF54 | ~(&v11 | 0x7E2FEF54)) ^ 0x16DDDCB8);
  v16 = v3 + v9 - 1421511817;
  v17 = v4;
  v14 = v8 ^ v9;
  v15 = v5;
  v11 = v7;
  v13 = v6;
  result = (*(*(&off_284DD4450 + (v3 ^ 0x54BA8F69)) + 8 * (v3 ^ 0x54BA872B) - 4))(&v11);
  *(a1 + 48) = v12;
  return result;
}

uint64_t sub_23ABA47C8(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = 1037613739 * ((-2 - ((a1 | 0xE31BA7A3) + (~a1 | 0x1CE4585C))) ^ 0xCDE67523);
  v3 = *(a1 + 28) - v2;
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = *(a1 + 40);
  v7 = (((*(a1 + 24) - v2) ^ 0xDBE4DE38) + 605757896) ^ (((*(a1 + 24) - v2) ^ 0xB03F8E91) + 1338012015) ^ (((*(a1 + 24) - v2) ^ 0x3C7FD982) - 1015011714);
  v8 = (2 * (&v10 & 0x5C9337A8) - &v10 + 594331732) ^ 0xF26EE52B;
  v12 = *(a1 + 48);
  v13 = v5;
  v16 = v6;
  v14 = (1037613739 * v8) ^ (v3 + 2013068154);
  v10 = 1037613739 * v8 - 1233324471 + v7;
  v11 = v4;
  result = (*(*(&off_284DD4450 + (v3 ^ 0x88030AFC)) + 8 * (v3 ^ 0x880302E1) - 4))(&v10);
  *(a1 + 8) = v15;
  return result;
}

uint64_t sub_23ABA49EC(uint64_t result)
{
  v1 = 1361651671 * ((~result & 0x3CAA15D7204AE15FLL | result & 0xC355EA28DFB51EA0) ^ 0xEF0766EEF36811D3);
  v2 = *(result + 8) + v1;
  v3 = *(result + 32) - v1;
  v4 = *(result + 4) ^ v1;
  v5 = *result ^ v1;
  v6 = *(result + 24) ^ v1;
  v7 = *(result + 16) ^ v1;
  v8 = v2 == v6;
  v9 = v2 > v6;
  v10 = v8;
  if (v7)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  *(result + 36) = v4 ^ v12;
  return result;
}

void sub_23ABA4ACC(uint64_t a1)
{
  v1 = *a1 - 1082434553 * ((1344194919 - (a1 | 0x501EC967) + (a1 | 0xAFE13698)) ^ 0x34A6C012);
  v2 = *(a1 + 8);
  v3 = *(&off_284DD4450 + (v1 ^ 0x262)) - 4;
  (*&v3[8 * v1 + 12488])(*(&off_284DD4450 + v1 - 571) - 8, sub_23AB93BB4);
  __asm { BRAA            X9, X17 }
}

void sub_23ABA4D54()
{
  v0 = MEMORY[0x28223BE20]();
  if (*(v0 + 8))
  {
    v2 = *(v0 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(v0 + 16) ^ (1082434553 * ((2 * (v0 & 0x339532EB) - v0 - 865415916) ^ 0x572D3B9E));
  __asm { BRAA            X8, X17 }
}

void sub_23ABA4E70(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = *(v9 + 8);
  v13 = (*(v12 + 4 * (v11 - 1)) ^ v5) >> v6;
  *(v12 + 4 * v8) = a4 + v5 + v13 - (v7 & (2 * v13)) - 1450;
  if (*(*(v9 + 8) + 4 * v8) == v5)
  {
    v14 = 1610350571;
  }

  else
  {
    v14 = 1610350572;
  }

  v15 = v14 + v4;
  if ((*(v9 + 4) + v10) >= 0x7FFFFFFF)
  {
    v15 = -1948057642 - v15;
  }

  *(v9 + 4) = v15;
}

uint64_t sub_23ABA4F14()
{
  *(v6 - 128) = v0 - 1785193651 * (((v1 | 0x96B1BC91) - v1 + (v1 & 0x694E4368)) ^ 0x86A1CF74) + 395;
  *(v6 - 136) = v2;
  *(v6 - 120) = v4;
  v7 = (*(v3 + 8 * (v0 + 1489)))(v6 - 136);
  return (*(v3 + 8 * (((((v0 + 359) ^ 0xFFFFFEDF) + v0 + 359) * (v5 == 1)) ^ v0)))(v7);
}

void sub_23ABA4FF0(uint64_t a1@<X8>, uint64_t a2, char a3, unsigned int a4)
{
  v9 = v4 + 301;
  *(v8 - 108) = v4 + 1205 - 1361651671 * ((-895713317 - ((v8 - 112) | 0xCA9C7FDB) + ((v8 - 112) | 0x35638024)) ^ 0xE64170A8);
  *(v8 - 104) = a1;
  v10 = v4 + 1678;
  (*(v6 + 8 * (v4 + 1678)))(v8 - 112);
  v11 = *(v8 - 112);
  *(v8 - 104) = v5;
  *(v8 - 108) = v9 + 904 - 1361651671 * ((((v8 - 112) | 0x8CC5251B) - (v8 - 112) + ((v8 - 112) & 0x733ADAE0)) ^ 0x5FE7D597);
  (*(v6 + 8 * v10))(v8 - 112);
  v12 = (-1565316791 * (*(v8 - 112) + v11) + *(v8 - 112) * v11 + 650016465) * v7;
  a4 = v9 + (v12 ^ 0x7DFF7FFB) + ((2 * v12) & 0xFBFEFFF6) - 940442394;
  *(v8 - 112) = &a3;
  *(v8 - 104) = v5;
  *(v8 - 96) = (v9 + 164) ^ (210068311 * ((v8 - 112) ^ 0xF28BAFE8));
  (*(v6 + 8 * (v9 ^ 0x4E0)))(v8 - 112);
  JUMPOUT(0x23ABA5140);
}

uint64_t sub_23ABA51B0(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = 4626;
  a1.n128_u8[2] = 18;
  a1.n128_u8[3] = 18;
  a1.n128_u8[4] = 18;
  a1.n128_u8[5] = 18;
  a1.n128_u8[6] = 18;
  a1.n128_u8[7] = 18;
  a2.n128_u16[0] = -30327;
  a2.n128_u8[2] = -119;
  a2.n128_u8[3] = -119;
  a2.n128_u8[4] = -119;
  a2.n128_u8[5] = -119;
  a2.n128_u8[6] = -119;
  a2.n128_u8[7] = -119;
  return sub_23ABA51D8(a1, a2);
}

uint64_t sub_23ABA5284(int8x16_t a1, int8x16_t a2)
{
  v8 = v4 - 16;
  *(v5 + v8) = vaddq_s8(vsubq_s8(*(v6 + v8), vandq_s8(vaddq_s8(*(v6 + v8), *(v6 + v8)), a1)), a2);
  return (*(v7 + 8 * (((v8 == 0) * (v2 + 1359)) ^ v3)))();
}

uint64_t sub_23ABA528C(int8x16_t a1, double a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = (v10 + v9);
  v14 = vaddq_s8(vsubq_s8(v13[1], vandq_s8(vaddq_s8(v13[1], v13[1]), a4)), a1);
  *v12 = vaddq_s8(vsubq_s8(*v13, vandq_s8(vaddq_s8(*v13, *v13), a4)), a1);
  v12[1] = v14;
  return (*(v11 + 8 * (((v8 == 373) * a8) ^ v8)))();
}

uint64_t sub_23ABA52F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v31 = v27 ^ 0x12B;
  LOBYTE(STACK[0x27C]) = a27;
  v32 = 1388665877 * ((((v30 - 160) | 0x4CC71161) - (v30 - 160) + ((v30 - 160) & 0xB338EE98)) ^ 0xC16A738D);
  *(v30 - 152) = (v31 + 1124) ^ v32;
  *(v30 - 148) = v32 ^ 0x26966E4A;
  *(v30 - 160) = a2;
  v33 = (*(v28 + 8 * (v31 + 2103)))(v30 - 160);
  return v29(v33, &STACK[0x278], 944);
}

uint64_t sub_23ABA5388@<X0>(int a1@<W8>)
{
  v4 = 1082434553 * ((2 * ((v3 - 160) & 0x4B4C2D35FADE1990) - (v3 - 160) - 0x4B4C2D35FADE1993) ^ 0x4EF1CBD9E6610E7);
  *(v3 - 160) = ((a1 - 2080768607) ^ 0x7E) - 1082434553 * ((2 * ((v3 - 160) & 0xFADE1990) - (v3 - 160) + 86107757) ^ 0x9E6610E7);
  *(v3 - 156) = (1082434553 * ((2 * ((v3 - 160) & 0xFADE1990) - (v3 - 160) + 86107757) ^ 0x9E6610E7)) ^ (a1 - 2080768607) ^ 0x5F;
  *(v3 - 152) = (a1 + 1212455530) ^ (1082434553 * ((2 * ((v3 - 160) & 0xFADE1990) - (v3 - 160) + 86107757) ^ 0x9E6610E7));
  *(v3 - 136) = a1 - 2080768607 - 1082434553 * ((2 * ((v3 - 160) & 0xFADE1990) - (v3 - 160) + 86107757) ^ 0x9E6610E7);
  *(v3 - 132) = 1082434553 * ((2 * ((v3 - 160) & 0xFADE1990) - (v3 - 160) + 86107757) ^ 0x9E6610E7);
  *(v3 - 144) = 1071556583 - v4;
  *(v3 - 128) = v1 - v4;
  v5 = (*(v2 + 8 * (a1 + 2147)))(v3 - 160);
  return (*(v2 + 8 * *(v3 - 120)))(v5);
}

uint64_t sub_23ABA5464@<X0>(int a1@<W0>, _DWORD *a2@<X7>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = HIDWORD(v10) + v8 * (*(*(v11 + 8) + 4) ^ a3) + (a2[1] ^ a3) + HIDWORD(v14) + v13 * (*(*(a7 + 8) + 4) ^ a3);
  *a2 = v15 + a3 - ((v15 << (v9 + 54)) & a1);
  return (*(v12 + 8 * (((8 * (v7 == 2)) | (16 * (v7 == 2))) ^ v9)))();
}

uint64_t sub_23ABA54E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13 = (*(v11 + 4 * v12) ^ v6) + v7 + a3 * (*(*(v8 + 8) + 4 * a2) ^ v6);
  *(v11 + 4 * v12) = v13 + v6 - (v5 & (2 * v13));
  return (*(v4 + 8 * (v10 ^ ((a4 != a2) * v9))))();
}

uint64_t sub_23ABA55F0(uint64_t a1, signed int a2, signed int a3)
{
  if (a2 <= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  return (*(v4 + 8 * ((25 * (v5 > ((v3 - 968) | 0x5E9u) + 2147481619)) ^ v3)))();
}

uint64_t sub_23ABA5634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = ((((v20 - 144) | 0x645F6973) - (v20 - 144) + ((v20 - 144) & 0x9BA09688)) ^ 0x353F4BCB) * v16;
  *(v20 - 136) = a15;
  *(v20 - 144) = (1441727781 * v18 - 384306796 + v19 - 880) ^ v21;
  *(v20 - 124) = v19 - v21 - 937;
  v22 = (*(v15 + 8 * (v19 + 866)))(v20 - 144);
  return (*(v15 + 8 * (v19 ^ (2 * (*(v20 - 128) == v17 + v19 - 880 - 412)))))(v22);
}

uint64_t sub_23ABA5B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v21 - 112) = v15 - (v16 ^ 0x970DCC13) * v17 + 171;
  *(v21 - 136) = v20;
  *(v21 - 120) = &a15;
  v22 = (*(v18 + 8 * (v15 ^ 0xACA)))(v21 - 136);
  return (*(v18 + 8 * ((56 * (*(v21 - 128) + v19 < 67 * (v15 ^ 0x289u) - 242210369)) | v15)))(v22);
}

uint64_t sub_23ABA5C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v23 - 144) = &a18;
  *(v23 - 136) = a14;
  *(v23 - 128) = (v21 + 847) ^ (((((2 * (v23 - 144)) | 0x2C44145A) - (v23 - 144) - 371329581) ^ 0x47422895) * v19);
  *(v23 - 120) = &a18;
  *(v23 - 112) = v22;
  (*(v18 + 8 * (v21 | 0x342)))(v23 - 144);
  v24 = (((((v23 - 144) | 0x9E148234) ^ 0xFFFFFFFE) - (~(v23 - 144) | 0x61EB7DCB)) ^ 0x308B5F73) * v19;
  *(v23 - 144) = (1441727781 * (v20 + 130 * (v21 ^ 0x492) - 1821) - 1795818118) ^ v24;
  *(v23 - 124) = v21 - v24 - 825;
  *(v23 - 136) = a15;
  v25 = (*(v18 + 8 * (v21 ^ 0xCF2)))(v23 - 144);
  return (*(v18 + 8 * (((*(v23 - 128) == -1494163771) * (425 * (v21 ^ 0x49F) - 1213)) ^ v21)))(v25);
}

uint64_t sub_23ABA5E70@<X0>(unsigned int a1@<W8>)
{
  v8 = v5 + 819;
  v9 = *(v6 + 8);
  v10 = ((2 * (*(v9 + (((a1 << 32) + 0x100000000) >> 30)) ^ v1)) << ~(v4 ^ 0x1E)) | ((v9[(a1 << 32) >> (((v8 + 29) | 0x28) ^ 0x8Au)] ^ v1) >> (v4 ^ 0x1E));
  *v9 = v10 + v1 - (v2 & (2 * v10));
  return (*(v7 + 8 * ((1057 * (v3 == 1)) ^ v8)))();
}

void sub_23ABA5F04(char a1@<W8>)
{
  v4 = v6[3] ^ 0x89;
  v5 = ((*v6 ^ 0x89) << 24) | ((v6[1] ^ ((a1 ^ 0x25) + 109)) << 16) | ((v6[2] ^ 0x89) << 8) | v4;
  **(v1 + 8) = v5 + v2 - 2 * (v5 & 0x1DA4DE3B ^ v4 & 0x1A);
  *(v1 + 16) = *(v3 + 24);
}

uint64_t sub_23ABA5F7C(int a1)
{
  v6 = (v3 - 32);
  v7 = (v4 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v2 == 32) * a1) ^ (v1 + 842))))();
}

uint64_t sub_23ABA5FE0(uint64_t a1, int a2)
{
  v5 = ((v4 - 1054) ^ 0x43481DD6) + a2;
  v6 = v3 + 1128800127;
  v7 = v6 < 154771306;
  v8 = v5 < v6;
  if (v7 != v5 < 154771306)
  {
    v8 = v7;
  }

  return (*(v2 + 8 * ((473 * v8) ^ v4)))();
}

uint64_t sub_23ABA6048@<X0>(int a1@<W5>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  v59 = (v58 + 4 * a2);
  v60 = a2 + 1;
  v61 = *(v58 + 4 * v60);
  v62 = v59[397] ^ ((v61 & (v54 + 2147482690) | v55 & 0x80000000) >> 1);
  *v59 = (v62 + v56 - (a1 & (2 * v62))) ^ *(&a54 + (v61 & 1));
  return (*(v57 + 8 * ((1252 * (v60 == 227)) ^ v54)))();
}

uint64_t sub_23ABA6580(double a1, double a2, int8x16_t a3, int8x16_t a4, uint64_t a5, uint64_t a6, int a7, int8x16_t *a8)
{
  v12 = (v11 + v8);
  v13 = vaddq_s8(vsubq_s8(v12[1], vandq_s8(vaddq_s8(v12[1], v12[1]), a4)), a3);
  *a8 = vaddq_s8(vsubq_s8(*v12, vandq_s8(vaddq_s8(*v12, *v12), a4)), a3);
  a8[1] = v13;
  return (*(v10 + 8 * (a7 + v9 - 90)))();
}

uint64_t sub_23ABA6620@<X0>(uint64_t a1@<X8>)
{
  v11 = (*(*(v8 + 8) + 4 * v2) ^ v7) + v1;
  *(*(a1 + 8) + 4 * v2) = (v3 + 394 + v11 - (v4 & (2 * v11)) + v5) ^ v6;
  return (*(v10 + 8 * (((4 * (v9 > v2 + 1)) | (8 * (v9 > v2 + 1))) ^ (v3 + 1050))))();
}

uint64_t sub_23ABA6794@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v6 = (a1 + a2);
  *v6 = v5;
  v6[1] = v5;
  LODWORD(v6) = ((v3 + 1607967357) & 0xA0285DFF) - 237 == (v2 & 0xFFFFFFFFFFFFFFF0);
  return (*(v4 + 8 * ((8 * v6) | (32 * v6) | v3)))();
}

uint64_t sub_23ABA67F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int32x4_t a15, int8x16_t a16, int8x16_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v37 = v31 + v32;
  if (((a25 - v31) | (v31 - a25)) <= ((v31 + v32) ^ (v33 - 624)))
  {
    v38 = 0x80000000;
  }

  else
  {
    v38 = -2147483647;
  }

  *v36 = v38 + ~v31;
  (*(v34 + 8 * (v31 ^ 0x85E)))(a31);
  v39 = vld1q_dup_f32(v36);
  v40.i64[0] = 0x8000000080000000;
  v40.i64[1] = 0x8000000080000000;
  v41.i64[0] = *(v36 + 4);
  v41.i32[2] = *(v36 + 12);
  v42 = vextq_s8(v39, v41, 0xCuLL);
  v43 = v41;
  v43.i32[3] = *(v36 + 16);
  v44 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v43, a17), vandq_s8(v42, v40)), 1uLL), *(v36 + 4 * ((v37 - 2085434866) & 0xFB041CF7) - 3496));
  v42.i32[0] = *(v35 + 4 * (*(v36 + 4) & 1));
  v42.i32[1] = *(v35 + 4 * (*(v36 + 8) & 1));
  v42.i32[2] = *(v35 + 4 * (*(v36 + 12) & 1));
  v42.i32[3] = *(v35 + 4 * (v43.i8[12] & 1));
  *v36 = veorq_s8(vaddq_s32(vsubq_s32(v44, vandq_s8(vaddq_s32(v44, v44), a16)), a15), v42);
  return (*(v34 + 8 * (v37 + 2125915866)))(3556768002, 2169052657, 2125915262, 21569009, a28, 974695398, 2907250679, 573);
}

void sub_23ABA6978(int a1)
{
  v2 = (((v1 ^ 0x9D773652) + 1653131694) ^ ((v1 ^ 0x9FEF3B05) + 1611711739) ^ ((v1 ^ 0xE1B0981E) + 508520418)) - 543173446 + (((LODWORD(STACK[0x2D0]) ^ 0xC07B02A8) + 1065680216) ^ ((LODWORD(STACK[0x2D0]) ^ 0x52631F74) - 1382227828) ^ ((a1 ^ 0xDE) - 1899006139 + (LODWORD(STACK[0x2D0]) ^ 0x71308895)));
  v3 = (v2 ^ 0xE4B04193) & (2 * (v2 & 0xE6B155D8)) ^ v2 & 0xE6B155D8;
  v4 = ((2 * (v2 ^ 0xE9926933)) ^ 0x1E4679D6) & (v2 ^ 0xE9926933) ^ (2 * (v2 ^ 0xE9926933)) & 0xF233CEA;
  v5 = v4 ^ 0x1210429;
  v6 = (v4 ^ 0xE0238C0) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x3C8CF3AC) & v5 ^ (4 * v5) & 0xF233CE8;
  v8 = (v7 ^ 0xC0030A0) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x3230C43)) ^ 0xF233CEB0) & (v7 ^ 0x3230C43) ^ (16 * (v7 ^ 0x3230C43)) & 0xF233CE0;
  v10 = v8 ^ 0xF233CEB ^ (v9 ^ 0x2230C00) & (v8 << 8);
  LODWORD(STACK[0x2D0]) = v2 ^ (2 * ((v10 << 16) & 0xF230000 ^ v10 ^ ((v10 << 16) ^ 0x3CEB0000) & (((v9 ^ 0xD00304B) << 8) & 0xF230000 ^ 0xC030000 ^ (((v9 ^ 0xD00304B) << 8) ^ 0x233C0000) & (v9 ^ 0xD00304B)))) ^ 0x399B947;
  JUMPOUT(0x23ABA6B90);
}

void sub_23ABA71C8()
{
  v4 = *(v1 + 16);
  **(v1 + 8) = v0;
  *v4 = v3;
  *v1 = *(v2 + 24);
}

uint64_t sub_23ABA7264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v24 - 104) = v22 - ((((2 * (v24 - 128)) | 0xC372AD0C) - (v24 - 128) - 1639536262) ^ 0xF6B49A95) * v23 - 70;
  *(v24 - 128) = &a19;
  *(v24 - 112) = v19;
  v25 = (*(v21 + 8 * (v22 + 1237)))(v24 - 128);
  return (*(v21 + 8 * (((*(v24 - 120) > (v20 + 888)) * (5 * (v22 ^ 0x3B0) + 292)) ^ v22)))(v25);
}

uint64_t sub_23ABA74EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, int a17, char a18, uint64_t *a19, int a20, unsigned int a21, char *a22, int a23, int *a24, int *a25, uint64_t a26)
{
  a16 = -1266733994;
  v30 = 1082434553 * ((2 * (&a19 & 0x8B99100) - &a19 + 2001104634) ^ 0xEC019870);
  a21 = a17 + v30 + ((701 * (v27 ^ 0x27D)) ^ 0xFD7F89C2);
  a22 = &a18;
  a19 = &a14;
  a26 = a14;
  a23 = v30 + v27 - 166;
  a24 = &a17;
  a25 = &a16;
  v31 = (*(v29 + 8 * (v27 + 1533)))(&a19);
  return (*(v29 + 8 * ((390 * (a20 == v26 - 1650139856)) ^ v27)))(v31, v28);
}

uint64_t sub_23ABA7698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v19 = v16 - 1309219680 < a16 + 861454090;
  if ((a16 + 861454090) < 0xB1F6E4A0 != v16 > 0x4E091B5F)
  {
    v19 = (a16 + 861454090) < 0xB1F6E4A0;
  }

  return (*(v17 + 8 * (((2 * ((((v18 + 64) ^ v19) & 1) == 0)) & 0xEF | (16 * (((v18 + 64) ^ ~v19) & 1))) ^ v18)))();
}

uint64_t sub_23ABA7790@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = v17 - 1;
  *(a1 + v21) = *(a15 + v21) - (v19 & (2 * *(a15 + v21))) - 119;
  return (*(v20 + 8 * (((v21 != (v16 & 0x4AE04CD6 ^ 0x4D6)) * v18) ^ v15)))();
}

uint64_t sub_23ABA77DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unsigned int a32, uint64_t a33, uint64_t a34, void *a35, int *a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v46 = 4 * (v39 + v41 + (v44 ^ 0x57BBCEFu) + 1);
  v47 = -404660857 * ((*(*a35 + (*a36 & 0xFFFFFFFFA3CD8060)) ^ (a38 + v46)) & 0x7FFFFFFF);
  v48 = v47 ^ HIWORD(v47);
  v49 = 4 * ((-404660857 * v48) >> 24);
  *(a39 + v46) ^= *(a38 + v46) ^ (((v43 + 2125914642 - v39) & ((v43 + 2125914642) ^ (-2 - v45)) | v39 & ~(v43 + 2125914642)) >> 31) ^ *(*(&off_284DD4450 + v43 + 2125914735) + v49 - 4) ^ *(*(&off_284DD4450 + a32) + v49 - 4) ^ *(*(&off_284DD4450 + (v43 ^ (v43 - 104))) + v49 - 12) ^ (1569128448 * v48) ^ (-404660857 * v48) ^ (851697649 * ((-404660857 * v48) >> 24));
  return (*(v40 + 8 * ((249 * (v42 == 1)) ^ 0x74u)))();
}

uint64_t sub_23ABA7930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v20 = 13 * (v15 ^ (v19 + 15));
  v21 = v18 + v15 + 324;
  v22 = v15 - v19 + 1117 + a15 - 568013596;
  v23 = v17 + (v20 ^ 0x1405D929);
  v24 = (v22 < a8) ^ (v23 < a8);
  v25 = v22 < v23;
  if (v24)
  {
    v25 = v23 < a8;
  }

  return (*(v16 + 8 * (v21 | (4 * v25))))();
}

uint64_t sub_23ABA7940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v19 = a16 + v18;
  if (a16 + v18 < 0)
  {
    v19 = -v19;
  }

  return (*(v17 + 8 * ((234 * ((v18 + (v19 ^ 0xFFF1FFEF) + 1174372348 + (((v16 ^ 0x397) - 1835421) & (2 * v19)) - 1) > (v16 ^ 0x397) - 380)) ^ v16 ^ 0x397)))(805194423);
}

void sub_23ABA79B8(unsigned int *a1, uint64_t a2, int a3)
{
  *(a1 + v5 + 4) = v8;
  v10 = v7 + v4;
  v11 = (((((a3 + 1614703779) & 0x5D54D1EA) + 35946542) | 0x40484144) ^ (v3 + 1)) + v10;
  *a1 = v11;
  v12 = a1 + 1;
  *(v12 + (v9 + v4)) = v6;
  *(v12 + v4) = 47;
  *(v12 + v10) = 61;
  *(v12 + v11) = 0;
  JUMPOUT(0x23ABC27E4);
}

uint64_t sub_23ABA79E0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v5 = *(&STACK[0x278] + a2 + 72);
  v6 = ((2 * a2) & 0xFFAFFF48) + (a2 ^ 0xFFD7FFA7) + v2;
  *(a1 + v6) = (((v3 + 66) | 4) - 102) ^ v5;
  *(a1 + v6 + 1) = (BYTE1(v5) ^ 0x95) - 2 * ((BYTE1(v5) ^ 0x95) & 0xB ^ BYTE1(v5) & 2) - 119;
  *(a1 + v6 + 2) = (BYTE2(v5) ^ 0x28) - 2 * ((BYTE2(v5) ^ 0x28) & 0xB ^ BYTE2(v5) & 2) - 119;
  *(a1 + v6 + 3) = (HIBYTE(v5) ^ 0xE3) - 2 * ((HIBYTE(v5) ^ 0xE3) & 0xD ^ HIBYTE(v5) & 4) - 119;
  return (*(v4 + 8 * ((662 * (a2 + 4 < LODWORD(STACK[0x2D4]))) ^ v3)))();
}

uint64_t sub_23ABA7BA8@<X0>(int a1@<W0>, int a2@<W3>, uint64_t a3@<X7>, unsigned int a4@<W8>)
{
  v12 = HIDWORD(v8) + HIDWORD(v11) + (*(a3 + 4 * v4) ^ a4);
  *(a3 + 4 * a2) = v12 + a4 - (a1 & (2 * v12));
  *(a3 + 4 * v4) = (v12 >> (((v6 + 15) | 4u) - 6)) + a4 - 2 * (v12 >> (((v6 + 15) | 4u) - 6));
  return (*(v9 + 8 * (v6 ^ ((v7 + 1 == v5) * v10))))();
}

uint64_t sub_23ABA7F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int32x4_t a17, int32x4_t a18)
{
  v21 = (v18 - 21);
  a17 = vdupq_n_s32(0x2FFE4AB7u);
  a18 = a17;
  v22 = 34 * ((v18 + 545) ^ 0x7CCu) - 1318;
  v23 = *(v20 + 8 * ((926 * (v22 == (v19 & 0xFFFFFFF8))) ^ v21));
  return v23(a1, v22, v21, &a17, 926, v23, a7, a8, a9, a10, a11, a12);
}

void sub_23ABA7FF0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  a5 = (v6 - 99) ^ (210068311 * (&a3 ^ 0xF28BAFE8));
  a3 = a1;
  (*(v5 + 8 * (v6 + 985)))(&a3);
  *(v7 + 4) = -1948057642 - *(v7 + 4);
  JUMPOUT(0x23AB95850);
}

uint64_t sub_23ABA8048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = v4 + 32;
  v10 = (v9 ^ v6 ^ (v3 + 1501)) + v2;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v5 == v9) * v7) ^ v3)))();
}

uint64_t sub_23ABA8050(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v32 = (v31 - 220);
  v33.i64[0] = 0x8989898989898989;
  v33.i64[1] = 0x8989898989898989;
  v34 = vdupq_n_s32(0x1DA4DE3Bu);
  v35 = vdupq_n_s32(0x9DA4DE21);
  a18 = 1125;
  a21 = 1;
  a22 = v30 - 16;
  a20 = v27 - 1146;
  a17 = *(v28 + 8 * (a3 + v26 - 62));
  v36 = (&a26 + a6);
  a23 = a6 + 320;
  v37 = *(v31 - 124);
  if (v37 == 2)
  {
    v79 = vld4q_s8(v32);
    v62 = veorq_s8(v79.val[0], v33);
    v63 = vmovl_high_u8(v62);
    v64 = vmovl_u8(*v62.i8);
    v65 = veorq_s8(v79.val[1], v33);
    _Q21 = vmovl_high_u8(v65);
    _Q20 = vmovl_u8(*v65.i8);
    v68 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v69 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v70 = veorq_s8(v79.val[2], v33);
    v71 = vmovl_u8(*v70.i8);
    v72 = vmovl_high_u8(v70);
    v79.val[0] = veorq_s8(v79.val[3], v33);
    v79.val[1] = vmovl_u8(*v79.val[0].i8);
    v79.val[2] = vmovl_u16(*v79.val[1].i8);
    v79.val[1] = vmovl_high_u16(v79.val[1]);
    v79.val[0] = vmovl_high_u8(v79.val[0]);
    v79.val[3] = vmovl_u16(*v79.val[0].i8);
    v79.val[0] = vmovl_high_u16(v79.val[0]);
    v73 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v72, 8uLL)), vshlq_n_s32(vmovl_high_u16(v63), 0x18uLL)), v79.val[0]);
    v74 = vorrq_s8(vorrq_s8(vorrq_s8(v69, vshll_n_u16(*v72.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v63.i8), 0x18uLL)), v79.val[3]);
    v75 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v71, 8uLL)), vshlq_n_s32(vmovl_high_u16(v64), 0x18uLL)), v79.val[1]);
    v76 = vorrq_s8(vorrq_s8(vorrq_s8(v68, vshll_n_u16(*v71.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v64.i8), 0x18uLL)), v79.val[2]);
    v79.val[0] = veorq_s8(vandq_s8(v73, v34), (*v79.val & __PAIR128__(0xFFFFFF1AFFFFFF1ALL, 0xFFFFFF1AFFFFFF1ALL)));
    v79.val[3] = veorq_s8(vandq_s8(v74, v34), (*&v79.val[3] & __PAIR128__(0xFFFFFF1AFFFFFF1ALL, 0xFFFFFF1AFFFFFF1ALL)));
    v79.val[1] = veorq_s8(vandq_s8(v75, v34), (*&v79.val[1] & __PAIR128__(0xFFFFFF1AFFFFFF1ALL, 0xFFFFFF1AFFFFFF1ALL)));
    v79.val[2] = veorq_s8(vandq_s8(v76, v34), (*&v79.val[2] & __PAIR128__(0xFFFFFF1AFFFFFF1ALL, 0xFFFFFF1AFFFFFF1ALL)));
    *v36 = vaddq_s32(vsubq_s32(v76, vaddq_s32(v79.val[2], v79.val[2])), v35);
    v36[1] = vaddq_s32(vsubq_s32(v75, vaddq_s32(v79.val[1], v79.val[1])), v35);
    v36[2] = vaddq_s32(vsubq_s32(v74, vaddq_s32(v79.val[3], v79.val[3])), v35);
    v36[3] = vaddq_s32(vsubq_s32(v73, vaddq_s32(v79.val[0], v79.val[0])), v35);
    v77 = &v36[160832318].i32[v29];
    *v77 = __ROR4__(*(v77 - 3) ^ v27 ^ *(v77 - 8) ^ *(v77 - 14) ^ *(v77 - 16), 31) ^ 0x5BF5F4B2;
    return (*(v28 + 8 * ((1771 * (a21 + 643329272 == v30 + 64)) ^ 0x28Eu)))(35);
  }

  else
  {
    if (v37 != 1)
    {
      JUMPOUT(0x23ABB644CLL);
    }

    v78 = vld4q_s8(v32);
    v38 = veorq_s8(v78.val[0], v33);
    v39 = vmovl_u8(*v38.i8);
    v40 = vmovl_u16(*v39.i8);
    v41 = vmovl_high_u8(v38);
    v42 = vmovl_u16(*v41.i8);
    v43 = veorq_s8(v78.val[1], v33);
    v44 = vmovl_high_u8(v43);
    v45 = vmovl_u8(*v43.i8);
    v46 = vorrq_s8(vshll_high_n_u16(v44, 8uLL), vmovl_high_u16(v41));
    v47 = vorrq_s8(vshll_n_u16(*v44.i8, 8uLL), v42);
    v48 = vorrq_s8(vshll_high_n_u16(v45, 8uLL), vmovl_high_u16(v39));
    v49 = vorrq_s8(vshll_n_u16(*v45.i8, 8uLL), v40);
    v50 = veorq_s8(v78.val[2], v33);
    _Q21 = vmovl_u8(*v50.i8);
    _Q20 = vmovl_high_u8(v50);
    __asm
    {
      SHLL2           V22.4S, V20.8H, #0x10
      SHLL2           V23.4S, V21.8H, #0x10
    }

    v78.val[0] = veorq_s8(v78.val[3], v33);
    v78.val[1] = vmovl_high_u8(v78.val[0]);
    v78.val[0] = vmovl_u8(*v78.val[0].i8);
    v78.val[2] = vorrq_s8(vorrq_s8(v46, _Q22), vshlq_n_s32(vmovl_high_u16(v78.val[1]), 0x18uLL));
    v78.val[1] = vorrq_s8(vorrq_s8(v47, vshll_n_s16(*_Q20.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v78.val[1].i8), 0x18uLL));
    v78.val[3] = vorrq_s8(vorrq_s8(v48, _Q23), vshlq_n_s32(vmovl_high_u16(v78.val[0]), 0x18uLL));
    v78.val[0] = vorrq_s8(vorrq_s8(v49, vshll_n_s16(*_Q21.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v78.val[0].i8), 0x18uLL));
    v59 = vdupq_n_s32(0x3B49BC42u);
    v60 = vdupq_n_s32(0x9DA4DE22);
    *v36 = vaddq_s32(vaddq_s32(v78.val[0], v60), vmvnq_s8(vandq_s8(vaddq_s32(v78.val[0], v78.val[0]), v59)));
    v36[1] = vaddq_s32(vaddq_s32(v78.val[3], v60), vmvnq_s8(vandq_s8(vaddq_s32(v78.val[3], v78.val[3]), v59)));
    v36[2] = vaddq_s32(vaddq_s32(v78.val[1], v60), vmvnq_s8(vandq_s8(vaddq_s32(v78.val[1], v78.val[1]), v59)));
    v36[3] = vaddq_s32(vaddq_s32(v78.val[2], v60), vmvnq_s8(vandq_s8(vaddq_s32(v78.val[2], v78.val[2]), v59)));
    return (*(v28 + 8 * ((31 * (a22 + 1 != v30)) ^ (3 * (a2 ^ (a2 + 221))))))(35);
  }
}

uint64_t sub_23ABA805C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, unsigned int a36)
{
  v39 = *(&a24 + a2 + 72);
  v40 = ((((2 * v37) ^ 0x36C) + 1844699043) ^ a2) + ((2 * a2) & 0xDBE7BF78) + v36;
  *(a1 + v40) = v39 ^ 0xC0;
  *(a1 + v40 + 1) = (BYTE1(v39) ^ 0x95) - 2 * ((BYTE1(v39) ^ 0x95) & 0xB ^ BYTE1(v39) & 2) - 119;
  *(a1 + v40 + 2) = (BYTE2(v39) ^ 0x28) - 2 * ((BYTE2(v39) ^ 0x28) & 0xB ^ BYTE2(v39) & 2) - 119;
  *(a1 + v40 + 3) = (HIBYTE(v39) ^ 0xE3) - 2 * ((HIBYTE(v39) ^ 0xE3) & 0xD ^ HIBYTE(v39) & 4) - 119;
  return (*(v38 + 8 * ((1411 * (a2 + 4 < a36)) ^ v37)))();
}

uint64_t sub_23ABA8140(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_23ABA81C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v17 = (*(v15 + 4 * v16) ^ v10) + v11;
  *(v15 + 4 * v16) = v10 + v14 - 350 + v17 - (v9 & (2 * v17)) - 593;
  v18 = v17 >= ((((v14 + 765) ^ a8) * v13) ^ (v12 + 1536));
  return (*(v8 + 8 * ((v18 | (2 * v18)) ^ (v14 + 765))))();
}

uint64_t sub_23ABA81D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (v5 + 4 * (a3 + v6));
  *v9 = (329 * (v3 ^ 0x289) + 1542844960) ^ __ROR4__(*(v9 - 3) ^ v8 ^ *(v9 - 8) ^ *(v9 - 14) ^ *(v9 - 16), 31);
  return (*(v4 + 8 * ((25 * (a3 + 1 == v7 + 80)) ^ v3)))();
}

uint64_t sub_23ABA824C(uint64_t a1)
{
  v7 = *(v3 + 8 * ((v6 ^ 0x14B) + 1694));
  v9 = v7(a1, 0);
  if (v9 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v10 = v9;
  result = a1;
  if (v10 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 1646)))(result);
    goto LABEL_8;
  }

  if (v10)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *v1 = v5;
  return result;
}

uint64_t sub_23ABA847C@<X0>(uint64_t a1@<X0>, int a2@<W4>, uint64_t a3@<X8>, int8x16_t a4@<Q3>, int8x16_t a5@<Q4>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v24 = v21 + 32;
  v25 = (v24 ^ a1 ^ (v20 + 221)) + v19;
  v26 = *(a19 + v25 - 15);
  v27 = *(a19 + v25 - 31);
  v28 = a3 + v25;
  *(v28 - 15) = vaddq_s8(vsubq_s8(v26, vandq_s8(vaddq_s8(v26, v26), a4)), a5);
  *(v28 - 31) = vaddq_s8(vsubq_s8(v27, vandq_s8(vaddq_s8(v27, v27), a4)), a5);
  return (*(v23 + 8 * (((v22 == v24) * a2) ^ v20)))();
}

uint64_t sub_23ABA84CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 1173454827;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v4 = *(a1 + 96) + 800;
  v5 = 210068311 * (((v7 | 0x22A39247) - (v7 & 0x22A39247)) ^ 0xD0283DAF);
  v7[0] = *(a2 + 8) + (*(a2 + 4) - v3);
  v7[1] = v4;
  v10 = 1554 - v5;
  v8 = v3 - v5 - 1947840713;
  (*(a3 + 16888))(v7);
  return (v9 - 1438290795);
}

uint64_t sub_23ABA852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, uint64_t a39, uint64_t a40)
{
  *v44 = v44[623] + v43 - 2125914639 + (((v41 | ~(v43 - 2125914639)) & (v43 - 2125914639 - v41) | v41 & ~(v43 - 2125914639)) >> 31) - 622;
  *(v42 + 24) = (v40 + 1) - a37;
  *(v42 + 40) = a37 ^ 3;
  *(v46 - 128) = a38 ^ a37;
  *(v46 - 112) = (a38 ^ 0xF) - a37;
  *(v46 - 148) = a37 + 1;
  *(v46 - 144) = v45 - a37 - 2125914639;
  *(v46 - 108) = a38 - a37 - 123;
  v47 = (*(a40 + 17168))(v46 - 152);
  return (*(a40 + 8 * *(v46 - 152)))(v47);
}

uint64_t sub_23ABA85B8@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unsigned int a4@<W8>)
{
  v10 = v8 < v6;
  v11 = *(a3 + v4);
  v12 = v4 + 1;
  *(a2 + a4) = v11 - (a1 & (2 * v11)) - 119;
  if (v10 == v12 > v7 + 42)
  {
    v10 = v12 + v6 < v8;
  }

  return (*(v9 + 8 * ((14 * !v10) ^ v5)))();
}

uint64_t sub_23ABA86C8@<X0>(uint64_t a1@<X8>)
{
  v7 = (v3 + 561) ^ (210068311 * ((&v5 - 1477743949 - 2 * (&v5 & 0xA7EB6AB3)) ^ 0x5560C55B));
  v5 = a1;
  v6 = v2;
  return (*(v1 + 8 * (v3 + 1645)))(&v5);
}

uint64_t sub_23ABA8ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  *(v16 - 120) = (v15 + 468) ^ (210068311 * ((((v16 - 136) | 0x83B3D44E) - (v16 - 136) + ((v16 - 136) & 0x7C4C2BB0)) ^ 0x71387BA6));
  *(v16 - 136) = v14;
  *(v16 - 128) = v12;
  v17 = (*(v13 + 8 * (v15 ^ 0x630)))(v16 - 136);
  return (*(v13 + 8 * ((1550 * (a12 < 1)) ^ (v15 + 535))))(v17);
}

uint64_t sub_23ABA8BDC()
{
  v4 = v2 - 54685925 > (v0 + 891226402);
  if ((v0 + 891226402) < 0xB13CBB6F != (v2 - 54685925) < 0xB13CBB6F)
  {
    v4 = (v2 - 54685925) < 0xB13CBB6F;
  }

  return (*(v1 + 8 * (v3 ^ (4037 * v4))))();
}

uint64_t sub_23ABA8C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(uint64_t, unint64_t *))
{
  v23 = (((v38 ^ 0xC6D41C4B) + 959177653) ^ ((v38 ^ 0xC133A784) + 1053579388) ^ ((v38 ^ 0xE4CF2E86) + 456184186)) + (((LODWORD(STACK[0x2C0]) ^ 0x15E0FA74) - 367065716) ^ ((LODWORD(STACK[0x2C0]) ^ 0x130CCD6A) - 319606122) ^ ((LODWORD(STACK[0x2C0]) ^ 0xE5C4A257) + 440098217)) + 939106693;
  v24 = (((v39 ^ 0x7C68437D) - 2087207805) ^ ((v39 ^ 0xE1F6EFC4) + 503910460) ^ ((v39 ^ 0x7EB639F0) - 2125871600)) + (((LODWORD(STACK[0x2C4]) ^ 0x3DE491BA) - 1038389690) ^ ((LODWORD(STACK[0x2C4]) ^ 0x31CDB6D7) - 835565271) ^ ((LODWORD(STACK[0x2C4]) ^ 0xEF01B224) + 285101532)) + 12631952;
  LODWORD(STACK[0x2C0]) = v23 ^ ((v23 ^ 0xBC4879A4) + 840954025) ^ ((v23 ^ 0x21F00EA0) - 1347975251) ^ ((v23 ^ 0xD3CFFE9A) + 1570273175) ^ ((v23 ^ 0x3FDFFF6D) - 1316456862) ^ 0x9280E3BA;
  LODWORD(STACK[0x2C4]) = v24 ^ ((v24 ^ 0x987D43CB) + 1575823563) ^ ((v24 ^ 0xD44A53A5) + 299514021) ^ ((v24 ^ 0x89AF7F4F) + 1279202383) ^ ((v24 ^ 0xFFF7FBDF) + 979865823) ^ 0xD94701B7;
  v25 = (((v37 ^ 0x1F9D4950) - 530401616) ^ ((v37 ^ 0x4F0E937A) - 1326355322) ^ ((v37 ^ 0xB3BB4F63) + 1279570077)) + (((LODWORD(STACK[0x2C8]) ^ 0x60912B22) - 1620126498) ^ ((LODWORD(STACK[0x2C8]) ^ 0xC9711D1A) + 915333862) ^ ((LODWORD(STACK[0x2C8]) ^ 0x4AC8A371) - 1254663025)) + 293109986;
  v26 = (((v36 ^ 0x85E94B33) + 2048308429) ^ ((v36 ^ 0xEBFD399) - 247452569) ^ ((v36 ^ 0x687E0DE3) - 1753091555)) + (((LODWORD(STACK[0x2CC]) ^ 0x9A22745A) + 1709018022) ^ ((LODWORD(STACK[0x2CC]) ^ 0xE1F51F3) - 236933619) ^ ((LODWORD(STACK[0x2CC]) ^ 0x7715B0E0) - 1997910240)) + 232621709;
  v27 = (v26 ^ 0xB1731210) & (2 * (v26 & 0xB873A405)) ^ v26 & 0xB873A405;
  v28 = ((2 * (v26 ^ 0xD1B3521A)) ^ 0xD381EC3E) & (v26 ^ 0xD1B3521A) ^ (2 * (v26 ^ 0xD1B3521A)) & 0x69C0F61E;
  v29 = v28 ^ 0x28401201;
  v30 = (v28 ^ 0x4180A01C) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0xA703D87C) & v29 ^ (4 * v29) & 0x69C0F61C;
  v32 = (v31 ^ 0x2100D010) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x48C02603)) ^ 0x9C0F61F0) & (v31 ^ 0x48C02603) ^ (16 * (v31 ^ 0x48C02603)) & 0x69C0F610;
  v34 = v32 ^ 0x69C0F61F ^ (v33 ^ 0x8006000) & (v32 << 8);
  LODWORD(STACK[0x2C8]) = v25 ^ ((v25 ^ 0x14B47502) - 1603478354) ^ ((v25 ^ 0x5565E937) - 507690855) ^ ((v25 ^ 0xF50111BA) + 1104787478) ^ ((v25 ^ 0xFFF7DBDF) + 1261400689) ^ 0xA80FC319;
  LODWORD(STACK[0x2CC]) = v26 ^ (2 * ((v34 << 16) & 0x69C00000 ^ v34 ^ ((v34 << 16) ^ 0x761F0000) & (((v33 ^ 0x61C0960F) << 8) & 0x69C00000 ^ 0x29000000 ^ (((v33 ^ 0x61C0960F) << 8) ^ 0x40F60000) & (v33 ^ 0x61C0960F)))) ^ 0x48DADD72;
  return a23(a1, &STACK[0x278]);
}

void sub_23ABA93D0()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xBACu)))(3);
  v3 = *(&off_284DD4450 + v0 - 873);
  *(v3 - 4) = v2;
  v4 = v3;
  (*(v1 + 8 * (v0 ^ 0xB46u)))();
  v5 = (*(v1 + 8 * (v0 + 1188)))(66);
  v6 = *(&off_284DD4450 + (v0 ^ 0x346u));
  *v6 = v5;
  (*(v1 + 8 * (v0 + 1214)))();
  v7 = (*(v1 + 8 * (v0 + 1188)))(2);
  v8 = *(&off_284DD4450 + (v0 ^ 0x375u));
  *v8 = v7;
  *v7 = 7196;
  **v6 = 0;
  **(&off_284DD4450 + v0 - 961) = 0;
  v9 = *v8;
  v10 = *v6;
  v11 = *(v4 - 4);
  v10[64] = 1;
  **(&off_284DD4450 + (v0 ^ 0x3CCu)) = 51;
  v10[9] = -15;
  v9[1] = 79;
  **(&off_284DD4450 + (v0 ^ 0x341u)) = 80;
  **(&off_284DD4450 + v0 - 864) = -77;
  *v9 = -22;
  v10[11] = 73;
  *v11 = 68;
  v10[20] = -44;
  **(&off_284DD4450 + v0 - 901) = -121;
  v10[36] = -11;
  v10[45] = -113;
  v10[49] = 25;
  *(v11 + 1) = 6695;
  **(&off_284DD4450 + v0 - 865) = -122;
  **(&off_284DD4450 + v0 - 824) = 88;
  v10[26] = -34;
  v10[60] = -5;
  **(&off_284DD4450 + (v0 ^ 0x3A2u)) = 96;
  **(&off_284DD4450 + (v0 ^ 0x3B7u)) = 80;
  **(&off_284DD4450 + v0 - 977) = 17;
  **(&off_284DD4450 + (v0 & 0x54084B)) = 119;
  v10[52] = 47;
  v10[50] = 102;
  v10[59] = -59;
  v10[22] = -36;
  v10[29] = 59;
  v10[27] = 34;
  v10[40] = -80;
  v10[13] = 23;
  **(&off_284DD4450 + (v0 ^ 0x3EDu)) = 99;
  v10[53] = 3;
  **(&off_284DD4450 + v0 - 874) = -109;
  v10[39] = 54;
  v10[57] = 73;
  **(&off_284DD4450 + v0 - 942) = 83;
  v10[37] = -52;
  v10[63] = -72;
  v12 = *v6;
  *(v12 + 65) = -85;
  *(v12 + 30) = 36;
  *(v12 + 5) = -14;
  *(v12 + 54) = 32;
  *(v12 + 58) = 113;
  *(v12 + 8) = 16909;
  *(v12 + 28) = -39;
  *(v12 + 47) = -4065;
  *(v12 + 21) = 15;
  *(v12 + 41) = -29527;
  *(v12 + 38) = -121;
  *(v12 + 31) = 8824;
  *(v12 + 10) = -98;
  *(v12 + 25) = 69;
  *(v12 + 7) = 27031;
  *(v12 + 23) = -86;
  *(v12 + 14) = -90;
  *(v12 + 62) = -105;
  *(v12 + 35) = 52;
  *(v12 + 33) = 15089;
  *(v12 + 55) = -30385;
  *(v12 + 46) = -17;
  *(v12 + 4) = -92;
  *(v12 + 15) = 72;
  *(v12 + 51) = -15;
  *(v12 + 12) = -15;
  *(v12 + 61) = 73;
  *(v12 + 9) = -9761;
  *(v12 + 43) = 19744;
  *(v12 + 6) = 45;
  *(v12 + 24) = -72;
  JUMPOUT(0x23ABA9CC0);
}

uint64_t sub_23ABA9F08()
{
  v3 = *(v0 + 16) - 2050754897;
  v4 = *(v0 + 12) + 2122623821;
  v5 = (v3 < 0x9143BC36) ^ (v4 < 0x9143BC36);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0x9143BC36;
  }

  return (*(v2 + 8 * ((1628 * v6) ^ v1)))();
}

uint64_t sub_23ABAA0A4@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 - 110;
  v4 = v2 - 228766055;
  v5 = *(a1 + 16) - 1733118038;
  v6 = *(a1 + 12) - 1854706966 + ((v4 + 228765989) | 0x42);
  v7 = (v5 < 0xA4327D29) ^ (v6 < 0xA4327D29);
  v8 = v5 > v6;
  if (v7)
  {
    v8 = v5 < 0xA4327D29;
  }

  return (*(v1 + 8 * ((!v8 * ((v4 & 0xDA2B7FC) - 2024)) | v3)))();
}

void sub_23ABAA174(int a1@<W8>)
{
  v2 = *(v1 + 4);
  if (v2 + 974028821 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = -a1;
  }

  *(v1 + 4) = v3 + v2;
  JUMPOUT(0x23ABAA1C8);
}

uint64_t sub_23ABAA214@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 1;
  *(a1 + v5) = *(v1 + v5) - ((*(v1 + v5) << (((v2 + 102) ^ 0xF0) & 0xF3)) & 0x12) - 119;
  return (*(v4 + 8 * ((100 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_23ABAA2A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 1424) = v3;
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

uint64_t sub_23ABAA30C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 468) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x12) - 119;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((104 * ((v4 ^ 0xB1) & 1)) ^ 0x6B0u)))(0);
}

uint64_t sub_23ABAA48C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  v19 = 1388665877 * ((2 * ((v18 - 160) & 0x759A9DF8) - (v18 - 160) + 174416388) ^ 0x87C800E8);
  STACK[0x2F0] = &STACK[0x28C];
  *(v18 - 152) = (v16 + 1090) ^ v19;
  *(v18 - 148) = (a16 + (v16 ^ (a3 - 72)) + 1547442120) ^ v19;
  v20 = (*(v17 + 8 * (v16 ^ 0x815)))(v18 - 160);
  v21 = STACK[0x2D0];
  *(&STACK[0x28C] + (v21 & 0x3F)) = 9;
  return (*(v17 + 8 * ((((v21 & 0x3Fu) > 0x37) * (((v16 + 2004074359) & 0x888C4365) + 165)) ^ v16)))(v20);
}

uint64_t sub_23ABAA83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, int a14, int a15, int a16, char *a17, uint64_t a18, char *a19)
{
  v23 = 50899313 * (((&a15 | 0xD3A1EED0) - (&a15 & 0xD3A1EED0)) ^ 0x1BC02A86);
  a18 = v20;
  a19 = &a13;
  a15 = v23 ^ 0x1CF0F1F1;
  a16 = (v22 - 861) ^ v23;
  a17 = &a11;
  v24 = (*(v21 + 8 * (v22 ^ 0xC26)))(&a15);
  return (*(v21 + 8 * (((*(v20 + 24) == v19) * ((v22 ^ 0x74E) - 338)) ^ v22)))(v24);
}

uint64_t sub_23ABAAA40@<X0>(uint64_t a1@<X8>)
{
  v10 = ((139 * (v7 ^ 0x6EDu)) ^ 0x561) & v5;
  *(v9 + v5) = *(v3 + v10) ^ *(a1 + v5) ^ *(v1 + v10) ^ *(v2 + v10) ^ (117 * v10);
  return (*(v8 + 8 * ((487 * (((v5 + 1) ^ v6) != v4)) ^ v7)))();
}

uint64_t sub_23ABAAAB0@<X0>(uint64_t a1@<X8>)
{
  v4 = 1388665877 * ((((2 * &v6) | 0xF276DA6C) - &v6 + 113545930) ^ 0x74960FDA);
  v6 = v1;
  v7 = v4 + v3 - 989;
  v8 = -1341532346 - (v4 + v2) - (((((v3 - 791) | 0x2C0) ^ 0x79026DCA) - 2 * v2) & 0xE711407C);
  return (*(a1 + 8 * (v3 + 1036)))(&v6);
}

uint64_t sub_23ABAAD20(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, unsigned int a20)
{
  v23 = v22 + 861440391 > a20;
  if (a20 < a19 != v22 + 861440391 < (a3 ^ (a3 + 2)) + 861439549 + 388 * (a3 ^ (a3 + 2)))
  {
    v23 = v22 + 861440391 < (a3 ^ (a3 + 2)) + 861439549 + 388 * (a3 ^ (a3 + 2));
  }

  return (*(v21 + 8 * ((89 * v23) ^ (v20 + a3 + 280))))();
}

uint64_t sub_23ABAAE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  LODWORD(v74) = 861440327;
  v71.i64[0] = 0x8989898989898989;
  v71.i64[1] = 0x8989898989898989;
  v72 = (a3 - 450679023) & 0xCF20A606;
  v73 = v72 ^ 0x5EA;
  v75 = *(v33 + 8 * (v32 + v30 - 46));
  v35 = STACK[0x2DC];
  v36 = STACK[0x2E0];
  v37 = LOBYTE(STACK[0x2EC]);
  if (v37 == 2)
  {
    v77 = vld4q_s8(&STACK[0x28C]);
    v48 = veorq_s8(v77.val[1], v71);
    _Q21 = vmovl_high_u8(v48);
    _Q20 = vmovl_u8(*v48.i8);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    HIDWORD(v74) = HIDWORD(a15) - 1262853199;
    HIDWORD(a21) = v72 ^ 0x637;
    LODWORD(a22) = v34 - 1092;
    return sub_23ABB2DA0(a1, a2, a3, &STACK[0x28C], 2080306563, v72, v73, 3485283306, a9, a10, a11, a12, a13, a14, a15, a16, a17, a2 + a13, v74, v75, a21, a22, v31 - 16, a24, a25, a26, a27, a28, a29, a30);
  }

  else if (v37 == 1)
  {
    v76 = vld4q_s8(&STACK[0x28C]);
    v38 = veorq_s8(v76.val[2], v71);
    _Q21 = vmovl_u8(*v38.i8);
    _Q20 = vmovl_high_u8(v38);
    __asm
    {
      SHLL2           V22.4S, V20.8H, #0x10
      SHLL2           V23.4S, V21.8H, #0x10
    }

    return (*(v33 + 8 * (v72 ^ 0xD)))(1907487528);
  }

  else
  {
    v51 = (((LODWORD(STACK[0x2D4]) ^ 0xC6722825) + 965597147) ^ ((LODWORD(STACK[0x2D4]) ^ 0x2EF75364) - 787960676) ^ ((LODWORD(STACK[0x2D4]) ^ 0xBADEE08) - 195948040)) + (((LODWORD(STACK[0x2D4]) ^ 0x6972E055) - 1769136213) ^ ((LODWORD(STACK[0x2D4]) ^ 0x829CFD22) + 2103640798) ^ ((LODWORD(STACK[0x2D4]) ^ 0x8C6883E) - 147228734)) - 521800843;
    v52 = (((LODWORD(STACK[0x2D8]) ^ 0xDC16E774) + 602478732) ^ ((LODWORD(STACK[0x2D8]) ^ 0xBEEAA009) + 1091919863) ^ ((LODWORD(STACK[0x2D8]) ^ 0x81D4D234) + 2116758988)) + (((LODWORD(STACK[0x2D8]) ^ 0xEB41EF77) + 348000393) ^ ((LODWORD(STACK[0x2D8]) ^ 0x73FE9FB5) - 1946066869) ^ ((LODWORD(STACK[0x2D8]) ^ 0x7B97E58B) - 2073552267)) + 745216202;
    v53 = (v52 ^ 0xD9E791CC) & (2 * (v52 & 0x99E611C8)) ^ v52 & 0x99E611C8;
    v54 = ((2 * (v52 ^ 0xE96791DC)) ^ 0xE1030028) & (v52 ^ 0xE96791DC) ^ (2 * (v52 ^ 0xE96791DC)) & 0x70818014;
    v55 = v54 ^ 0x10808014;
    v56 = v53 ^ 0x70818014 ^ (v54 ^ 0x60000000) & (4 * v53);
    v57 = (4 * v55) & 0x70818014 ^ 0x30818004 ^ ((4 * v55) ^ 0xC2060050) & v55;
    v58 = (16 * v56) & 0x70818010 ^ v56 ^ ((16 * v56) ^ 0x8180140) & v57;
    v59 = (16 * v57) & 0x70818010 ^ 0x70818014 ^ ((16 * v57) ^ 0x8180140) & v57;
    v60 = (v58 << 8) & 0x70818000 ^ v58 ^ ((v58 << 8) ^ 0x81801400) & v59;
    LODWORD(STACK[0x2D4]) = v51 ^ ((v51 ^ 0xB7A1AC6A) + 1389009783) ^ ((v51 ^ 0x274D7E5C) - 1037678271) ^ ((v51 ^ 0x75C7E522) - 1867722177) ^ ((v51 ^ 0xFFBFFFF7) + 450152684) ^ 0xF9BC5DAA;
    LODWORD(STACK[0x2D8]) = v52 ^ (2 * ((v60 << 16) & 0x70810000 ^ v60 ^ ((v60 << 16) ^ 0x140000) & ((v59 << 8) & 0x70810000 ^ 0x70010000 ^ ((v59 << 8) ^ 0x1800000) & v59))) ^ 0x9ACD84A9;
    v61 = (((v35 ^ 0x8E8D7BCB) + 1903330357) ^ ((v35 ^ 0x2CF9075D) - 754517853) ^ ((v35 ^ 0x415CE9DF) - 1096608223)) + (((LODWORD(STACK[0x2DC]) ^ 0x85D430B9) + 2049691463) ^ ((LODWORD(STACK[0x2DC]) ^ 0x17308E21) - 389058081) ^ ((LODWORD(STACK[0x2DC]) ^ 0x71CC2BD1) - 1909205969)) - 217350941;
    v62 = (v61 ^ 0xD275A9AF) & (2 * (v61 & 0xD345ADAF)) ^ v61 & 0xD345ADAF;
    v63 = ((2 * (v61 ^ 0xD4FFA0B5)) ^ 0xF741A34) & (v61 ^ 0xD4FFA0B5) ^ (2 * (v61 ^ 0xD4FFA0B5)) & 0x7BA0D1A;
    v64 = v63 ^ 0x8A050A;
    v65 = (v63 ^ 0x7300810) & (4 * v62) ^ v62;
    v66 = ((4 * v64) ^ 0x1EE83468) & v64 ^ (4 * v64) & 0x7BA0D18;
    v67 = (v66 ^ 0x6A80400) & (16 * v65) ^ v65;
    v68 = ((16 * (v66 ^ 0x1120912)) ^ 0x7BA0D1A0) & (v66 ^ 0x1120912) ^ (16 * (v66 ^ 0x1120912)) & 0x7BA0D10;
    v69 = v67 ^ 0x7BA0D1A ^ (v68 ^ 0x3A00100) & (v67 << 8);
    v70 = (((v36 ^ 0x638513FF) - 1669665791) ^ ((v36 ^ 0xE0323D8D) + 533578355) ^ ((v36 ^ 0x609FBB3B) - 1621080891)) + (((LODWORD(STACK[0x2E0]) ^ 0xF9BA30D4) + 105238316) ^ ((LODWORD(STACK[0x2E0]) ^ 0x70C86EA7) - 1892183719) ^ ((LODWORD(STACK[0x2E0]) ^ 0x6A5ACB3A) - 1784335162)) - 641442140;
    LODWORD(STACK[0x2DC]) = v61 ^ (2 * ((v69 << 16) & 0x7BA0000 ^ v69 ^ ((v69 << 16) ^ 0xD1A0000) & (((v68 ^ 0x41A0C1A) << 8) & 0x7BA0000 ^ 0x5B20000 ^ (((v68 ^ 0x41A0C1A) << 8) ^ 0x3A0D0000) & (v68 ^ 0x41A0C1A)))) ^ 0x352D22D2;
    LODWORD(STACK[0x2E0]) = v70 ^ ((v70 ^ 0x44C5ED25) - 1471600951) ^ ((v70 ^ 0x1D08EAE5) - 242999031) ^ ((v70 ^ 0xFD41CC2C) + 298649538) ^ ((v70 ^ 0xB7FFFFFE) + 1534276628) ^ 0xF05BA15B;
    return v75(1887535124, 135790912, a3, &STACK[0x28C], 2080306563, v72, v73, 3485283306, a9, a10, a11, a12, a13, a14, a15);
  }
}

uint64_t sub_23ABAC20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, int a17, char a18, __int16 a19, char a20, char *a21, int a22, unsigned int a23, char *a24, int a25, char *a26, int *a27, uint64_t a28)
{
  a17 = -1266733994;
  v30 = *(a2 + 4);
  v31 = 1082434553 * ((-1194703936 - (&a21 | 0xB8CA43C0) + (&a21 | 0x4735BC3F)) ^ 0xDC724AB5);
  a28 = *(a2 + 8);
  a25 = v31 + v28 - 929;
  a21 = &a14;
  a26 = &a18;
  a27 = &a17;
  a23 = v31 + v30 - 41972552;
  a24 = &a20;
  v33 = (*(v29 + 8 * (v28 ^ 0xD06)))(&a21);
  return (*(v29 + 8 * (((a22 == -1650139615) * (((v28 - 1241) | 0x50) ^ (v28 + 901015941) & 0xCA4B937F ^ 0x23B)) ^ v28)))(v33, a2);
}

uint64_t sub_23ABAC708(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(v13 + 8 * (v15 - 1700));
  v7 = *v10;
  v8 = a6 + 994313415;
  *(*v10 + v8) = (((a1 + 4) >> 24) ^ 0x23) - (v12 & (2 * (((a1 + 4) >> 24) ^ 0x23))) - 119;
  *(v7 + v8 + 1) = (v16 ^ ((a1 + 4) >> 16)) - (v12 & ((a1 + 4) >> 15)) - 119;
  *(v7 + (a6 + 994313417)) = (((a1 + 4) >> 8) ^ v14) - 2 * ((((a1 + 4) >> 8) ^ v14) & v11 ^ ((a1 + 4) >> 8) & 2) - 119;
  *(v7 + v8 + 3) = (a1 + 4) ^ 0xAA;
  return v6();
}

uint64_t sub_23ABAC8D0()
{
  LODWORD(STACK[0x3EC]) = v0;
  STACK[0x450] -= 432;
  return (STACK[0x468])(48);
}

void sub_23ABAC900(uint64_t a1, uint64_t a2, char a3)
{
  v4 = LOBYTE(STACK[0x2EC]);
  if (v4 == 1)
  {
    v8 = STACK[0x2D0];
    v9 = STACK[0x2CC];
    LOBYTE(STACK[0x2C4]) = (8 * (LOBYTE(STACK[0x2D0]) - ((2 * LOBYTE(STACK[0x2D0])) & 0xF7)) - 40) ^ 0x51;
    LOBYTE(STACK[0x2C5]) = (v8 >> 5) ^ 0x89;
    LOBYTE(STACK[0x2C6]) = (v8 >> 13) ^ 0x89;
    LOBYTE(STACK[0x2C7]) = (v8 >> 21) ^ 0x89;
    LOBYTE(STACK[0x2C8]) = ((__PAIR64__(v9, v8) >> 29) - ((2 * (__PAIR64__(v9, v8) >> 29)) & 0x36) + 27) ^ 0x92;
    LOBYTE(STACK[0x2C9]) = (v9 >> 5) ^ 0x89;
    LOBYTE(STACK[0x2CA]) = (v9 >> 13) ^ 0x89;
    v7 = (v9 >> 21) ^ 0xFFFFFF89;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_6;
    }

    v7 = STACK[0x2CC];
    v5 = STACK[0x2D0];
    v6 = (LODWORD(STACK[0x2CC]) >> 12) & 0x12;
    LOBYTE(STACK[0x2C4]) = (LODWORD(STACK[0x2CC]) >> 21) - ((LODWORD(STACK[0x2CC]) >> 21 << ((v3 + a3 + 55) ^ 0xAC)) & 0x12) - 119;
    LOBYTE(STACK[0x2C5]) = (v7 >> 13) - v6 - 119;
    LOBYTE(STACK[0x2C6]) = (v7 >> 5) - ((v7 >> 4) & 0x12) - 119;
    LOBYTE(STACK[0x2C7]) = (__PAIR64__(v7, v5) >> 29) - ((2 * (__PAIR64__(v7, v5) >> 29)) & 0x12) - 119;
    LOBYTE(STACK[0x2C8]) = (v5 >> 21) - ((v5 >> 20) & 0x12) - 119;
    LOBYTE(STACK[0x2C9]) = (v5 >> 13) - ((v5 >> 12) & 0x12) - 119;
    LOBYTE(STACK[0x2CA]) = (v5 >> 5) - ((v5 >> 4) & 0x12) - 119;
    LOBYTE(v7) = (8 * (v5 - ((2 * v5) & 4)) + 16) ^ 0x99;
  }

  LOBYTE(STACK[0x2CB]) = v7;
LABEL_6:
  JUMPOUT(0x23ABB2710);
}

void sub_23ABACAC0()
{
  v3 = STACK[0x268] + 4 * v1;
  v4 = *v3;
  LODWORD(v3) = -404660857 * ((*(*STACK[0x278] + (*STACK[0x270] & 0x6353F5DC)) ^ v3) & 0x7FFFFFFF);
  LODWORD(v3) = v3 ^ WORD1(v3);
  v5 = -404660857 * v3;
  v6 = 4 * ((-404660857 * v3) >> 24);
  *(v0 + 4 * v1) ^= v4 ^ 0xE3F43F8 ^ (((v2 - 1307) ^ 0xFFFFFFFD) + 239027192 - (((((v2 - 1307) ^ v1) & v1) >> (__clz((v2 - 1307) ^ v1 | 1) ^ 0x1F)) & 1) + 2) ^ *(*(&off_284DD4450 + SLODWORD(STACK[0x264])) + v6 - 8) ^ *(*(&off_284DD4450 + SLODWORD(STACK[0x260])) + ((v2 - 1166) | 0x29) + HIBYTE(v5) - 184) ^ *(*(&off_284DD4450 + SLODWORD(STACK[0x25C])) + v6 - 12) ^ (1569128448 * v3) ^ v5 ^ (506009743 * HIBYTE(v5));
  JUMPOUT(0x23ABACBD8);
}

uint64_t sub_23ABAD3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v20 = 1388665877 * ((((v19 - 160) | 0x167B2C1A) - (v19 - 160) + ((v19 - 160) & 0xE984D3E0)) ^ 0x9BD64EF6);
  *(v19 - 152) = (v18 + 1147) ^ v20;
  *(v19 - 148) = v20 ^ a17;
  *(v19 - 160) = a2;
  v21 = (*(v17 + 8 * (v18 ^ 0x852)))(v19 - 160);
  v22 = STACK[0x2BC];
  *(&STACK[0x278] + (v22 & 0x3F)) = 9;
  return (*(v17 + 8 * ((((v22 & 0x3Fu) > 0x37) * (((v18 + 1014) | 0x200) + ((v18 + 1234766511) & 0xB666F567) - 724)) ^ v18)))(v21);
}

_DWORD *sub_23ABAD690()
{
  v4 = 1037613739 * ((((2 * ((v3 - 144) ^ 0xC5070A06)) | 0xB37F3AEA) - ((v3 - 144) ^ 0xC5070A06) + 641753739) ^ 0xCDBABA0C);
  *(v3 - 120) = v6;
  *(v3 - 136) = v2;
  *(v3 - 144) = v1 - v4 + 459;
  *(v3 - 128) = (v8 + 50562911 + ((v1 + 34) | 0x11)) ^ v4;
  (*(v0 + 8 * (v1 + 1602)))(v3 - 144);
  *v7 = v8;
  result = v9;
  *v9 = -1650139615;
  return result;
}

void sub_23ABAD7BC(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  a5 = (v6 + 627) ^ (1082434553 * ((&a3 + 1201101219 - 2 * (&a3 & 0x479759A3)) ^ 0xDCD0AF29));
  a3 = a1;
  a4 = v7;
  (*(v5 + 8 * (v6 + 1096)))(&a3);
  JUMPOUT(0x23AB95850);
}

uint64_t sub_23ABADCCC@<X0>(int a1@<W8>)
{
  v8 = v1 + 2;
  v9 = (v2 - 2);
  *v9 = (v4 ^ v5 ^ v8) * (v8 + 17);
  *(v9 - 1) = (v8 ^ 0xBB) * (v8 + 18);
  return (*(v7 + 8 * (((v3 == 2) * v6) ^ a1)))();
}

uint64_t sub_23ABADCDC()
{
  v7 = (v3 + v6 - 16);
  v13.val[1].i64[0] = (v3 + 13) & 0xF;
  v13.val[1].i64[1] = (v3 + 12) & 0xF;
  v13.val[2].i64[0] = (v3 + 11) & 0xF;
  v13.val[2].i64[1] = (v3 + 10) & 0xF;
  v13.val[3].i64[0] = (v3 + 9) & 0xF;
  v8 = *(v5 - 192);
  v13.val[3].i64[1] = v3 & 0xF ^ 8;
  v14.val[0].i64[0] = (v3 + 7) & 0xF;
  v14.val[0].i64[1] = (v3 + 6) & 0xF;
  v14.val[1].i64[0] = (v3 + 5) & 0xF;
  v14.val[1].i64[1] = (v3 + 4) & 0xF;
  v14.val[2].i64[0] = (v3 + 3) & 0xF;
  v14.val[2].i64[1] = (v3 + 2) & 0xF;
  v14.val[3].i64[0] = (v3 + 1) & 0xF;
  v14.val[3].i64[1] = v3 & 0xF;
  v9.i64[0] = 0x6161616161616161;
  v9.i64[1] = 0x6161616161616161;
  v10.i64[0] = 0x8989898989898989;
  v10.i64[1] = 0x8989898989898989;
  v13.val[0].i64[0] = (v3 - 1) & 0xF;
  v13.val[0].i64[1] = (v3 + 14) & 0xF;
  v11.i64[0] = vqtbl4q_s8(v13, xmmword_23AC80FD0).u64[0];
  v11.i64[1] = vqtbl4q_s8(v14, xmmword_23AC80FD0).u64[0];
  v14.val[0] = vrev64q_s8(veorq_s8(veorq_s8(veorq_s8(*v7, *(v2 + v13.val[0].i64[0] - 15)), *(v13.val[0].i64[0] + v1 - 12)), *(v0 + v13.val[0].i64[0] + (v4 ^ 0x1CALL) - 15)));
  v14.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v14.val[0], v14.val[0], 8uLL), v10), vmulq_s8(v11, v9)));
  *v7 = vextq_s8(v14.val[0], v14.val[0], 8uLL);
  return (*(v8 + 8 * (((4 * ((v3 & 0x10) == 16)) | (16 * ((v3 & 0x10) == 16))) ^ v4)))(v3 + v6 - 32);
}

uint64_t sub_23ABADE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x278] += 16;
  v70 = (a59 - 1054709335) & 0x3EDD945F;
  v71 = a7 + 16;
  LODWORD(STACK[0x248]) = a46 ^ 0x83998337;
  LODWORD(STACK[0x240]) = a47 ^ 0x38B4A66C;
  LODWORD(STACK[0x200]) = a54 ^ 0x62139F92;
  LODWORD(STACK[0x238]) = __ROR4__(__ROR4__(((a45 << ((a59 - 87) & 0x5F ^ v68)) + ((a68 << 24) | (a57 << 8)) + a48) ^ 0xBA5FD200, 22) ^ 0xA2EBB8AD, 10) ^ 0x3CD573F6;
  STACK[0x268] = a1 + 16;
  LODWORD(STACK[0x270]) = v71;
  HIDWORD(a20) = v70 + 485;
  v72 = v71 + ((v70 + 485) ^ 0x22A);
  LODWORD(STACK[0x250]) = v72;
  LODWORD(a59) = (v70 + 767501048) & 0xD240DEFE;
  v73 = *(a24 + (*(a22 + v72) ^ (((v70 - 8) & 0xFE) - 107)));
  v74 = (v73 ^ (v73 >> 5) ^ (v73 >> 3)) << 8;
  LOBYTE(v73) = *(a25 + (*(STACK[0x278] + 4) ^ 0x3FLL));
  v75 = *(a24 + (*(STACK[0x278] + 7) ^ 0xC3));
  v76 = (2 * v73) & 0xC4 ^ 0x84;
  v77 = (v73 ^ 0x29) - 98;
  v78 = *(a25 + (*(STACK[0x278] - 4) ^ 0x87));
  v194 = v76 + v77;
  v79 = *(a25 + (*STACK[0x278] ^ 0xEELL));
  v80 = v75 ^ (v75 >> 5) ^ (v75 >> 3);
  v81 = *(a28 + (*(STACK[0x278] + 6) ^ 0xFLL));
  LOBYTE(v81) = ((((19 * v81 - 20) ^ 0xFFFFFFB5) + ((38 * v81 + 88) & 0x6A)) << (v77 & 2) << (v77 & 2 ^ 2)) ^ (19 * v81 - 16 * ((19 * v81 - 20) >> 3) - 28);
  v82 = *(a23 + (*(STACK[0x278] + 1) ^ 0xAALL));
  v83 = v82 ^ (v82 >> 3) ^ (v82 >> 2);
  v84 = *(a28 + (*(STACK[0x278] - 6) ^ 0xDLL));
  v85 = (HIDWORD(a26) + 76 * v84) ^ (a27 + 19 * v84);
  v86 = ((((v85 >> 4) ^ 0xFFFFFFFFFFFFFFC7) & ((v78 << 12) ^ 0x7BDF381567A114DLL) | (v85 >> 4) & 2) ^ 0x70000874A8015C32) & ((v85 << 28) ^ 0x7624D8744E6B5D7BLL) ^ ((v85 >> 4) ^ 0xFFFFFFFFFFFFFFC7) & ((v78 << 12) ^ 0x7BDF381567A114DLL) & 0x11100011004A004;
  LODWORD(a61) = (v86 >> 12) ^ 0x8759BABB;
  v87 = (v86 << 20) ^ 0x5CF00000 | a61;
  LODWORD(v78) = *(a23 + ((*(STACK[0x278] - 3) - ((2 * *(STACK[0x278] - 3)) & 0x1A4u) + 210) ^ 0x71));
  v88 = *(a23 + (*(STACK[0x278] + 5) ^ 0x9FLL));
  v89 = v78 ^ 0x9B ^ ((v78 >> 3) ^ (v78 >> 2) | 0x80);
  LODWORD(v78) = *(a24 + (*(STACK[0x278] - 5) ^ 0x3FLL));
  v90 = v88 ^ (v88 >> 3) ^ (v88 >> 2);
  LOBYTE(v88) = *(a28 + (*(STACK[0x278] + 2) ^ 0x9DLL));
  v91 = v87 ^ ((v78 ^ (v78 >> 5) ^ (v78 >> 3)) << 8);
  v92 = *(a25 + (*(STACK[0x278] + 8) ^ 0x4BLL));
  LODWORD(v78) = v70;
  LOBYTE(v70) = *(a28 + (*(STACK[0x278] - 2) ^ 0xF7));
  v93 = ((v90 << 24) ^ 0x63B5D081) & ((((v81 << 16) ^ 0x4DE512A0) & ((v80 << 8) ^ 0x6DFF53B0) | (v80 << 8) & 0xED00) ^ 0xB2D90F0B) ^ (((v81 << 16) ^ 0x4DE512A0) & ((v80 << 8) ^ 0x6DFF53B0) & 0x4C4A2F20 | (v80 << 8) & 0x2D00);
  v94 = ((a27 + 19 * v70) ^ (BYTE4(a26) + 76 * v70)) << 16;
  v95 = *(a23 + (*(STACK[0x278] - 7) ^ 0xD6));
  v96 = (((v95 ^ 0x77) >> 2) | ((v95 ^ 0x77) << 6)) ^ 0x68 ^ (((16 * (v95 ^ (v95 >> 1))) & 0xFC0 ^ 0xFFFFFFA3) & (((v95 ^ (v95 >> 1)) >> 4) ^ 0xFFFFFFEC) | ((v95 ^ (v95 >> 1)) >> 4) & 0xC);
  LODWORD(a54) = (((v96 & 0xC0) << 18) | (v96 << 26)) ^ v91;
  v97 = *(&off_284DD4450 + (v78 ^ 0x1E));
  v98 = v81 ^ 0xACu;
  v99 = v78;
  v100 = *(&off_284DD4450 + v78 + 106) - 8;
  v101 = (((v94 ^ 0xFFC3FFFF) & ((v89 << 24) ^ 0x2DCDD957) | v94 & 0x320000) ^ 0xEA0EFCA8) & (((v79 ^ 0xF7BFFF14) & (v74 ^ 0xF7BFA015) | v79 & 0xEA) ^ 0x840436A);
  LODWORD(a57) = *(a24 + (*(STACK[0x278] + 3) ^ 8)) ^ (*(a24 + (*(STACK[0x278] + 3) ^ 8)) >> 3) ^ ((*(a24 + (*(STACK[0x278] + 3) ^ 8)) >> 5) | 0xE0);
  LODWORD(v78) = (v93 ^ 0xAFC1D523) & (v92 ^ 0xFFFFFF22) ^ v92 & 0x7D;
  v102 = *(&off_284DD4450 + (v99 ^ 0x65)) - 8;
  v103 = *(&off_284DD4450 + (v99 + 70)) - 4;
  v104 = HIBYTE(v93);
  v105 = *&v103[4 * (a57 ^ 0x66)] ^ (*&v100[4 * v98] - 1409877230) ^ (*&v102[4 * (v79 ^ 0x4F)] - (v101 ^ 0x21C17698)) ^ (*(v97 + 4 * (BYTE3(a54) ^ 0x1A)) + (BYTE3(a54) ^ 0xA095C5B1) - 210035670);
  LODWORD(a48) = v194;
  v106 = *&v103[4 * (v80 ^ 0x98)] ^ (*&v100[4 * (BYTE2(v87) ^ 0x7C)] - 1409877230) ^ (*(v97 + 4 * (HIBYTE(v101) ^ 5)) + (HIBYTE(v101) ^ 0xA095C5AE) - 210035670) ^ (*&v102[4 * (v194 ^ 0xAE)] - (v194 ^ 0x21C17607));
  LODWORD(a46) = v78;
  LODWORD(v78) = *&v103[4 * (BYTE1(v91) ^ 0x82)] ^ ((v83 ^ 0xA095C592) - 210035670 + *(v97 + 4 * (v83 ^ 0x39u))) ^ (*&v102[4 * (v92 ^ 0xCA)] - (v78 ^ 0x21C17661)) ^ (*&v100[4 * (BYTE2(v101) ^ 0xE2) + 500 + 4 * ((v101 >> 15) & 0xF8 ^ 0xFFFFFF3F)] - 1409877230);
  LODWORD(a45) = ((a27 + 19 * v88) ^ (BYTE4(a26) + 76 * v88));
  LODWORD(a47) = v101 | v74 & 0xDA00;
  v107 = (*&v100[4 * (a45 ^ 0xE3)] - 1409877230) ^ *&v103[4 * (BYTE1(a47) ^ 0x8D)] ^ ((v104 ^ 0x5F6A3ADC) - 210035671 - 2 * (v104 ^ 0x5F6A3ADC) + *(v97 + 4 * (v104 ^ 0x88))) ^ (*&v102[4 * ((v86 >> 12) ^ 0xDLL)] - ((v86 >> 12) ^ 0x21C176A4));
  LODWORD(v92) = *&v100[4 * (BYTE2(v107) ^ 0xC5)];
  v108 = *&v103[4 * (BYTE1(v78) ^ 0xF9)] ^ (*&v102[4 * (v106 ^ 0x68)] - (v106 ^ 0x21C176C1)) ^ ((HIBYTE(v105) ^ 0xA095C535) - 210035670 + *(v97 + 4 * (HIBYTE(v105) ^ 0x9E))) ^ ((__ROR4__(__ROR4__(v92, 7) ^ 0xF6D3A115, 25) ^ 0xC22671E9) + ((2 * v92) & 0x57EDF624));
  v109 = (*&v100[4 * (BYTE2(v105) ^ 0x96)] - 1409877230) ^ ((HIBYTE(v106) ^ 0xA095C503) - 210035670 + *(v97 + 4 * (HIBYTE(v106) ^ 0xA8))) ^ *&v103[4 * ((((*&v100[4 * (a45 ^ 0xE3)] - 1262) ^ *&v103[4 * (BYTE1(a47) ^ 0x8D)] ^ ((v104 ^ 0x3ADC) + 7209 - 2 * (v104 ^ 0x3ADC) + *(v97 + 4 * (v104 ^ 0x88))) ^ (*&v102[4 * ((v86 >> 12) ^ 0xDLL)] - ((v86 >> 12) ^ 0x76A4))) >> 8) ^ 0x6E)] ^ (*&v102[4 * (v78 ^ 0xFA)] - (v78 ^ 0x21C17653));
  LODWORD(v86) = (*&v100[4 * (((BYTE2(v106) ^ 5) - (BYTE2(v106) ^ 0x79)) ^ 0xFFFFFFF8) + 4 * (BYTE2(v106) ^ 5)] - 1409877230) ^ ((BYTE3(v78) ^ 0xA095C50D) - 210035670 + *(v97 + 4 * (BYTE3(v78) ^ 0xA6))) ^ *&v103[4 * (BYTE1(v105) ^ 0xE0)] ^ (*&v102[4 * (v107 ^ 0x40)] - (v107 ^ 0x21C176E9));
  v110 = (*&v100[4 * (BYTE2(v78) ^ 0xA3)] - 1409877230) ^ ((HIBYTE(v107) ^ 0xA095C5DF) - 210035670 + *(v97 + 4 * (HIBYTE(v107) ^ 0x74))) ^ *&v103[4 * (BYTE1(v106) ^ 0x9A)];
  v111 = v109 ^ 0xF7D9A230;
  LODWORD(v92) = v110 ^ (*&v102[4 * (v105 ^ 0x9A)] - (v105 ^ 0x21C17633));
  v112 = *&v103[4 * (BYTE1(v86) ^ 0xBB)];
  v113 = (*&v100[4 * (BYTE2(v92) ^ 0x2C)] - 1409877230) ^ v112 & 0xFFFFFFBF ^ (v112 & 0x40 | 0x94F5230B) ^ ((((v108 ^ 0xC29E1175) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v108 ^ 0xC29E1175) >> 24) ^ 0x8A))) ^ (*&v102[4 * (v109 ^ 0xE0)] - (v109 ^ 0x21C17649));
  v114 = (*&v100[4 * (BYTE2(v108) ^ 0xE2)] - 1409877230) ^ ((((v109 ^ 0xF7D9A230) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v109 ^ 0xF7D9A230) >> 24) ^ 0x8A))) ^ *&v103[4 * (BYTE1(v92) ^ 0x4F)] ^ (*&v102[4 * (v86 ^ 0x80)] - (v86 ^ 0x21C17629));
  v115 = (*&v100[4 * (BYTE2(v111) - ((v111 >> 15) & 0xF8)) + 496] - 1409877230) ^ ((((v86 ^ 0xCFECEC50) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v86 ^ 0xCFECEC50) >> 24) ^ 0x8A))) ^ *&v103[4 * (BYTE1(v108) ^ 0x46)] ^ (*&v102[4 * (v92 ^ 0xA8)] - (v92 ^ 0x21C17601));
  LODWORD(v86) = (*&v100[4 * (((v86 ^ 0xCFECEC50) >> 16) ^ 0x7C)] - 1409877230) ^ ((((v92 ^ 0x13501878) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v92 ^ 0x13501878) >> 24) ^ 0x8A))) ^ *&v103[4 * BYTE1(v111)] ^ (*&v102[4 * (v108 ^ 0xA5)] - (v108 ^ 0x21C1760C));
  v116 = v114 ^ 0xF40D6B87;
  v117 = (*&v100[4 * ((v86 ^ 0x1DF67BEA) >> 16)] - 1409877230) ^ *&v103[4 * ((v115 ^ 0xC1A2) >> 8)] ^ (*&v102[4 * (v114 ^ 0x57)] - (v114 ^ 0x21C176FE)) ^ ((((v113 ^ 0xFB60CFE9) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v113 ^ 0xFB60CFE9) >> 24) ^ 0x8A)));
  v118 = ((v115 ^ 0xF97FC1A2) >> 24) ^ 0x5F6A3ADE;
  v119 = (v86 ^ 0x1DF67BEA) >> 24;
  v120 = (*&v100[4 * BYTE2(v116)] - 1409877230) ^ *&v103[4 * ((v113 ^ 0xCFE9) >> 8)] ^ (*&v102[4 * (v86 ^ 0x3A)] - (v86 ^ 0x21C17693)) ^ (-210035671 - v118 + *(v97 + 4 * (((v115 ^ 0xF97FC1A2) >> 24) ^ 0x8A)));
  LODWORD(v122) = __ROR4__(((HIBYTE(v116) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (HIBYTE(v116) ^ 0x8A))) ^ 0x94F5230B ^ *&v103[4 * (BYTE1(v86) ^ 0x2C)] ^ (*&v102[4 * (v115 ^ 0x72)] - (v115 ^ 0x21C176DB)) ^ (*&v100[4 * ((((v113 ^ 0xFB60CFE9) >> 16) - (((v113 ^ 0xFB60CFE9) >> 16) ^ 0x7C)) ^ 0xFFFFFFF8) + 4 * ((v113 ^ 0xFB60CFE9) >> 16)] - 1409877230), 24) ^ 0xF7A7AFD3;
  HIDWORD(v122) = v122;
  v121 = v122 >> 8;
  v123 = v117 ^ 0xFBC8137;
  v124 = (*&v100[4 * ((v115 ^ 0xF97FC1A2) >> 16)] - 1409877230) ^ (-210035671 - ((1600797406 - (v119 & 2)) ^ v119 & 0xFFFFFFFD) + *(v97 + 4 * (v119 ^ 0x8A))) ^ (*&v102[4 * (v113 ^ 0x39)] - (v113 ^ 0x21C17690)) ^ *&v103[4 * ((BYTE1(v116) - 1853103297 - ((v116 >> 7) & 0x7E)) ^ 0x918BE368)];
  v125 = v124 ^ 0x25BF358A;
  v126 = (*&v100[4 * (((v124 ^ 0x25BF358A) >> 16) ^ 0x7C)] - 1409877230) ^ ((HIBYTE(v123) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (HIBYTE(v123) ^ 0x8A))) ^ *&v103[4 * (BYTE1(v120) ^ 0x25)] ^ (*&v102[4 * (BYTE1(v122) ^ 0xD3)] - (BYTE1(v122) ^ 0x21C1767A));
  v127 = ((v117 ^ 0xFBC8137) >> 16) & 0xC0;
  if (((v117 ^ 0xFBC8137) & 0x3F0000) != 0)
  {
    v127 = (v117 ^ 0xFBC8137) >> 16;
  }

  v128 = (*&v100[4 * (v127 ^ 0x7C)] - 1409877230) ^ *&v103[4 * BYTE1(v125)] ^ (*&v102[4 * (v120 ^ 0x37)] - (v120 ^ 0x21C1769E)) ^ ((((v121 ^ 0x1DD0DB03u) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v121 ^ 0x1DD0DB03u) >> 24) ^ 0x8A)));
  v129 = (*&v100[4 * (BYTE2(v121) ^ 0xAC)] - 1409877230) ^ ((((v120 ^ 0xCC4472E7) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v120 ^ 0xCC4472E7) >> 24) ^ 0x8A))) ^ *&v103[4 * BYTE1(v123)] ^ (*&v102[4 * (v124 ^ 0x5A)] - (v124 ^ 0x21C176F3));
  v130 = (*&v100[4 * (BYTE2(v120) ^ 0x38)] - 1409877230) ^ ((HIBYTE(v125) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (HIBYTE(v125) ^ 0x8A))) ^ (*&v102[4 * (v117 ^ 0xE7)] - (v117 ^ 0x21C1764E)) ^ *&v103[4 * (BYTE1(v121) ^ 0x8C)];
  v131 = BYTE1(v128) ^ 6;
  v132 = (*&v100[4 * ((v130 ^ 0x28B1C8AF) >> 16)] - 1409877230) ^ *&v103[4 * ((v129 ^ 0xF582) >> 8)] ^ ((((v126 ^ 0x3AB33250) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v126 ^ 0x3AB33250) >> 24) ^ 0x8A))) ^ (*&v102[4 * (v128 ^ 0x82)] - (v128 ^ 0x21C1762B));
  v133 = (*&v100[4 * (BYTE2(v126) ^ 0xCF)] - 1409877230) ^ *&v103[4 * ((v130 ^ 0xC8AF) >> 8)] ^ (*&v102[4 * (v129 ^ 0x52)] - (v129 ^ 0x21C176FB)) ^ ((((v128 ^ 0x94240652) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v128 ^ 0x94240652) >> 24) ^ 0x8A)));
  v134 = (*&v100[4 * ((v128 ^ 0x94240652) >> 16)] - 1409877230) ^ ((((v129 ^ 0x57A0F582) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v129 ^ 0x57A0F582) >> 24) ^ 0x8A))) ^ *&v103[4 * ((v126 ^ 0x3250) >> 8)] ^ (*&v102[4 * (v130 ^ 0x7F)] - (v130 ^ 0x21C176D6));
  v135 = (*&v100[4 * (BYTE2(v129) ^ 0xDC)] - 1409877230) ^ ((((v130 ^ 0x28B1C8AF) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v130 ^ 0x28B1C8AF) >> 24) ^ 0x8A))) ^ *&v103[4 * (v131 ^ 0x57)] ^ (*&v102[4 * (v126 ^ 0x80)] - (v126 ^ 0x21C17629));
  v136 = (*&v100[4 * ((v135 ^ 0xBE27B2EF) >> 16)] - 1409877230) ^ *&v103[4 * ((v134 ^ 0x7C12) >> 8)] ^ ((((v132 ^ 0xDBAE4527) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v132 ^ 0xDBAE4527) >> 24) ^ 0x8A))) ^ (*&v102[4 * (v133 ^ 0x10)] - (v133 ^ 0x21C176B9));
  v137 = (*&v100[4 * (BYTE2(v132) ^ 0xD2)] - 1409877230) ^ *&v103[4 * (BYTE1(v135) ^ 0xE5)] ^ ((((v133 ^ 0x6FA1BBC0) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v133 ^ 0x6FA1BBC0) >> 24) ^ 0x8A))) ^ (*&v102[4 * (v134 ^ 0xC2)] - (v134 ^ 0x21C1766B));
  v138 = (v135 ^ 0xBE27B2EF) >> 24;
  v139 = (*&v100[4 * ((v133 ^ 0x6FA1BBC0) >> 16)] - 1409877230) ^ *&v103[4 * ((v132 ^ 0x4527) >> 8)] ^ ((((v134 ^ 0x2B27C12) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v134 ^ 0x2B27C12) >> 24) ^ 0x8A))) ^ (*&v102[4 * (v135 ^ 0x3F)] - (v135 ^ 0x21C17696));
  v140 = (*&v100[4 * ((v134 ^ 0x2B27C12) >> 16)] - 1409877230) ^ *&v103[4 * ((v133 ^ 0xBBC0) >> 8)] ^ ((v138 ^ 0xA095C521) - 210035670 + *(v97 + 4 * (v138 ^ 0x8A))) ^ (*&v102[4 * (v132 ^ 0xF7)] - (v132 ^ 0x21C1765E));
  v141 = (*&v100[4 * ((v140 ^ 0x7DDF413F) >> 16)] - 1409877230) ^ *&v103[4 * (BYTE1(v139) ^ 0x1F)] ^ ((((v136 ^ 0x179F0454) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v136 ^ 0x179F0454) >> 24) ^ 0x8A))) ^ (*&v102[4 * (v137 ^ 0xF5)] - (v137 ^ 0x21C1765C));
  v142 = (*&v100[4 * ((v136 ^ 0x179F0454) >> 16)] - 1409877230) ^ *&v103[4 * ((v140 ^ 0x413F) >> 8)] ^ ((((v137 ^ 0x75457125) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v137 ^ 0x75457125) >> 24) ^ 0x8A))) ^ (*&v102[4 * (v139 ^ 0xC0)] - (v139 ^ 0x21C17669));
  v143 = *&v103[4 * (BYTE1(v136) ^ 0x53)];
  v144 = v143 ^ -v143 ^ (-1795874037 - (__ROR4__(__ROR4__(v143, 28) ^ 0xA44BDAEB, 4) ^ 0x2EB19EA5));
  v145 = BYTE2(v139) ^ 0x59;
  v146 = (*&v100[4 * (BYTE2(v137) ^ 0x39)] - 1409877230) ^ (*&v102[4 * (v140 ^ 0xEF)] - (v140 ^ 0x21C17646)) ^ ((((v139 ^ 0xAC254810) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v139 ^ 0xAC254810) >> 24) ^ 0x8A))) ^ (((2 * v144) & 0x29EA4616) + (v144 ^ 0x94F5230B));
  v147 = v141 ^ 0x8EBD9B97;
  v148 = (*&v100[4 * v145] - 1409877230) ^ *&v103[4 * (BYTE1(v137) ^ 0x26)] ^ ((((v140 ^ 0x7DDF413F) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v140 ^ 0x7DDF413F) >> 24) ^ 0x8A))) ^ (*&v102[4 * (v136 ^ 0x84)] - (v136 ^ 0x21C1762D));
  v149 = v142 ^ 0xA3ECFAB3;
  v150 = *&v102[4 * (v142 ^ 0x63)] - (v142 ^ 0x21C176CA);
  v151 = (*&v100[4 * ((v148 ^ 0x10CC86ED) >> 16)] - 1409877230) ^ ((HIBYTE(v147) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (HIBYTE(v147) ^ 0x8A))) ^ 0x94F5230B ^ *&v103[4 * (BYTE1(v146) ^ 0xC2)];
  v152 = (v151 ^ -v151 ^ (v150 - (v151 ^ v150))) + v150;
  v153 = v146 ^ 0x8CA395FC;
  if (((v146 ^ 0x8CA395FC) & 0x10) != 0)
  {
    v154 = -16;
  }

  else
  {
    v154 = 16;
  }

  v155 = (*&v100[4 * (BYTE2(v141) ^ 0xC1)] - 1409877230) ^ *&v103[4 * ((v148 ^ 0x86ED) >> 8)] ^ ((HIBYTE(v149) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (HIBYTE(v149) ^ 0x8A))) ^ (*&v102[4 * ((v154 + v153) ^ 0xC0)] - ((v154 + v153) ^ 0x21C17669));
  v156 = ((HIBYTE(v153) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (HIBYTE(v153) ^ 0x8A))) ^ (*&v100[4 * BYTE2(v149)] - 1409877230) ^ *&v103[4 * BYTE1(v147)] ^ (*&v102[4 * (v148 ^ 0x3D)] - (v148 ^ 0x21C17694));
  v157 = LODWORD(STACK[0x270]);
  v158 = (*&v100[4 * (BYTE2(v146) ^ 0xDF)] - 1409877230) ^ ((((v148 ^ 0x10CC86ED) >> 24) ^ 0xA095C521) - 210035670 + *(v97 + 4 * (((v148 ^ 0x10CC86ED) >> 24) ^ 0x8A))) ^ *&v103[4 * (BYTE1(v142) ^ 0xAD)] ^ (*&v102[4 * (v141 ^ 0x47)] - (v141 ^ 0x21C176EE));
  v159 = *(&off_284DD4450 + (v99 ^ 1)) - 12;
  v160 = *(&off_284DD4450 + (v99 + 21));
  v161 = *(v160 + 4 * ((v158 ^ 0x66EB169A) >> 16)) ^ 0x4D522762;
  v162 = *(&off_284DD4450 + (v99 ^ 0x4B)) - 8;
  v163 = *(&off_284DD4450 + (v99 + 98)) - 8;
  v164 = ((v155 ^ 0xA4) - 1352815326) ^ *&v162[4 * (BYTE1(v156) ^ 0x57)] ^ *&v159[4 * (HIBYTE(v152) ^ 0xBE)] ^ *&v163[4 * (v155 ^ 0x91)] ^ (((v161 >> (v118 & 3) >> (v118 & 3 ^ 3)) ^ v161) >> 2);
  v165 = *(v160 + 4 * (BYTE2(v152) ^ 0xBFu)) ^ 0x4D522762;
  v166 = *&v159[4 * (HIBYTE(v155) ^ 0x43)] ^ ((v156 ^ 0xC4) - 1352815326) ^ *&v162[4 * (BYTE1(v158) ^ 0x7C)] ^ v165 ^ *&v163[4 * (v156 ^ 0xF1)] ^ (v165 >> 2) ^ (v165 >> 5);
  v167 = *&v159[4 * ((v158 ^ 0x66EB169A) >> 24)];
  v168 = *(v160 + 4 * (BYTE2(v155) ^ 0x20u));
  v169 = *&v159[4 * (HIBYTE(v156) ^ 0xD5)] ^ ((v158 ^ 0x9A) - 1352815326) ^ *&v163[4 * (v158 ^ 0xAF)] ^ *&v162[4 * ((v152 ^ 0x84FF) >> 8)];
  v170 = v161 ^ LODWORD(STACK[0x200]) ^ (v164 - ((2 * v164) & 0x56D3934A) + 728353189);
  v171 = *(v160 + 4 * ((v156 ^ 0x6CCB3DC4) >> 16)) ^ 0x4D522762;
  LODWORD(v160) = v169 ^ ((v168 ^ 0x4D522762u) >> 2) ^ ((v168 ^ 0x4D522762u) >> 5);
  v172 = v167 ^ (~v152 - 1352815326) ^ v171 ^ *&v162[4 * (BYTE1(v155) ^ 0x2D)] ^ (v171 >> 2) ^ (v171 >> 5) ^ *&v163[4 * (v152 ^ 0xCA)];
  v173 = (v166 - ((2 * v166) & 0x976E63DC) + 1270297070) ^ LODWORD(STACK[0x240]);
  v174 = v168 ^ 0x4D522762 ^ LODWORD(STACK[0x238]) ^ (v160 - ((2 * v160) & 0xB3E5948) + 94317732);
  HIDWORD(v176) = ((v172 ^ 0x23A4540) + 6816535 - 2 * ((v172 ^ 0x23A4540) & 0x680337 ^ v172 & 0x20)) ^ LODWORD(STACK[0x248]);
  LODWORD(v176) = ((v172 ^ 0x23A4540) - ((2 * (v172 ^ 0x23A4540)) & 0x7CD0062E) - 1100479721) ^ LODWORD(STACK[0x248]);
  v175 = v176 >> 24;
  v177 = *(&off_284DD4450 + (v99 + 92)) - 8;
  v178 = STACK[0x268];
  v178[1] = (-97 * v177[BYTE3(v174) ^ 0x4CLL]) ^ ((-97 * v177[BYTE3(v174) ^ 0x4CLL]) >> 5) ^ ((-97 * v177[BYTE3(v174) ^ 0x4CLL]) >> 1) ^ 0xD4;
  *(v178 - 3) = (-97 * v177[HIBYTE(v173) ^ 0x61]) ^ ((-97 * v177[HIBYTE(v173) ^ 0x61]) >> 5) ^ ((-97 * v177[HIBYTE(v173) ^ 0x61]) >> 1) ^ 0xD8;
  v179 = *(&off_284DD4450 + (v99 + 50));
  v178[3] = ((((((v174 ^ 0xD2C1) >> 8) ^ 0xDA) + 99) ^ ((v174 ^ 0xD2C1) >> 8) ^ 0xDA) + *(v179 + (((v174 ^ 0xD2C1) >> 8) ^ 0x6CLL))) ^ 0xB3;
  v180 = *(&off_284DD4450 + (v99 + 43)) - 4;
  v181 = v180[((((v174 ^ 0xA619D2C1) >> 16) ^ -((v174 ^ 0xA619D2C1) >> 16) ^ (510 - ((v174 ^ 0xA619D2C1) >> 16) - ((2 * ((v174 ^ 0xA619D2C1) >> 16)) ^ 0x1FEu))) + 255) ^ 0x5CLL] ^ 0xFFFFFFD9;
  v182 = ((((v174 ^ 0xA619D2C1) >> 16) ^ -((v174 ^ 0xA619D2C1) >> 16) ^ (-2 - ((v174 ^ 0xA619D2C1) >> 16) - ((2 * ((v174 ^ 0xA619D2C1) >> 16)) ^ 0xFE))) - 1) ^ 0xDE;
  v183 = v182 & 8 ^ v181;
  v184 = (v182 & 8 & v181) == 0;
  v185 = v181 - (v182 & 8);
  if (v184)
  {
    v185 = v183;
  }

  v178[2] = v185 ^ v182 & 0xF7;
  HIDWORD(v187) = v175 ^ 0x8829CA87;
  LODWORD(v187) = v175 ^ 0x8829CA87;
  v186 = v187 >> 8;
  *(a21 + LODWORD(STACK[0x250])) = (*(v179 + (BYTE1(v173) ^ 0x94)) + (((BYTE1(v173) ^ 0x22) + 99) ^ BYTE1(v173) ^ 0x22)) ^ 0xA8;
  *(v178 - 2) = BYTE2(v173) ^ 0x9E ^ v180[BYTE2(v173) ^ 0xD5];
  v188 = *(&off_284DD4450 + (v99 + 94)) - 4;
  v189 = v188[v170 ^ 0xE7] - 24;
  *(v178 - 4) = v189 ^ 0x5D ^ (v189 >> 1) & 0x1E;
  v178[5] = (-97 * v177[HIBYTE(v186) ^ 0x60]) ^ ((-97 * v177[HIBYTE(v186) ^ 0x60]) >> 5) ^ ((-97 * v177[HIBYTE(v186) ^ 0x60]) >> 1) ^ 0xFE;
  v190 = v188[((180 - (v174 ^ 0x56) + (v174 ^ 0xE2) - 2 * ((180 - (v174 ^ 0x56)) & (v174 ^ 0xE2))) ^ -(v174 ^ 0xE2)) + 180] - 24;
  v178[4] = v190 ^ 0x62 ^ (v190 >> 1) & 0x1E;
  v178[7] = (*(v179 + (((v187 >> 8) >> 8) ^ 0x4FLL)) + (((((v187 >> 8) >> 8) ^ 0xF9) + 99) ^ ((v187 >> 8) >> 8) ^ 0xF9)) ^ 0xBE;
  *(v178 - 5) = (*(v179 + (BYTE1(v170) ^ 0x1FLL)) + (((BYTE1(v170) ^ 0xA9) + 99) ^ BYTE1(v170) ^ 0xA9)) ^ 0x84;
  v191 = v188[v173 ^ 0xDDLL];
  *v178 = (((v191 + ((v191 - 24) ^ 0xAE) - 23) ^ 0xFE) + v191 - 24) ^ ((v191 - 24) >> 1) & 0x1E;
  *(v178 - 7) = (-97 * v177[HIBYTE(v170) ^ 0x67]) ^ ((-97 * v177[HIBYTE(v170) ^ 0x67]) >> 5) ^ ((-97 * v177[HIBYTE(v170) ^ 0x67]) >> 1) ^ 0xE1;
  v178[6] = BYTE2(v186) ^ 0x8E ^ v180[BYTE2(v186) ^ 0x55];
  *(v178 - 6) = BYTE2(v170) ^ 0xD3 ^ v180[BYTE2(v170) ^ 0x7DLL];
  v192 = v188[BYTE1(v187) ^ 0xF7] - 24;
  v178[8] = v192 ^ ((v192 & (v192 ^ 2) & 0x3E) >> 1) ^ 0xCB;
  return (*(v69 + 8 * ((35 * (v157 > 0x13F)) ^ v99)))(v178, v174, v99, 247, v183, 4294967199, v157, 2942151970, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_23ABADF2C(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 8))
  {
    v2 = 61;
  }

  else
  {
    v2 = 60;
  }

  *(a1 + 88) = v2;
  return 0;
}

uint64_t sub_23ABAE020(uint64_t a1, int a2)
{
  v4 = a2 - 1106;
  v5 = (((v4 ^ 0x174) & v3) << ((a2 - 82) ^ 0x1E)) & (v3 ^ 0x4D3DB342) ^ (v4 ^ 0x174) & v3;
  v6 = ((2 * (v3 ^ 0x40)) ^ 0x56) & (v3 ^ 0x40) ^ (2 * (v3 ^ 0x40)) & 0x2A;
  v7 = (v3 ^ (2 * ((16 * (v5 ^ 0x2B ^ v6 & (4 * v5))) & 0x20 ^ v5 ^ 0x2B ^ v6 & (4 * v5) ^ ((16 * (v5 ^ 0x2B ^ v6 & (4 * v5))) ^ 0x30) & (((4 * (v6 ^ 0x29)) ^ 0xA0) & (v6 ^ 0x29) ^ (4 * (v6 ^ 0x29)) & 0x20)))) & 0x7F;
  v9 = v7 != 125 && (v7 ^ 0x7Du) < 5;
  return (*(v2 + 8 * ((1978 * v9) ^ v4)))();
}

uint64_t sub_23ABAE114()
{
  v5 = *(*(v1 + 8) + v0) - *(v4 + v0);
  v6 = ((v3 - 1241) ^ 0xBFDEFFD9 ^ v5) + 2147461096 + ((2 * v5) & 0x7FBDFFFE);
  v8 = v0 == 15 || v6 != 1071556583;
  return (*(v2 + 8 * ((430 * v8) ^ v3)))();
}

uint64_t sub_23ABAE248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v18 - 144) = &a13;
  *(v18 - 136) = &a13;
  *(v18 - 112) = (v17 - 190) ^ (1037613739 * ((-1768217864 - ((v18 - 144) | 0x969B22F8) + ((v18 - 144) | 0x6964DD07)) ^ 0xB866F078));
  *(v18 - 104) = &a11;
  *(v18 - 128) = v14;
  *(v18 - 120) = v15;
  v19 = (*(v16 + 8 * (v17 ^ 0xB80)))(v18 - 144);
  return (*(v16 + 8 * ((46 * (v13 - 1070260808 < (((v17 - 440) | 0x488) ^ 0x7FFFF965u))) ^ (v17 + 636))))(v19);
}

uint64_t sub_23ABAE3E4@<X0>(unint64_t a1@<X2>, uint64_t a2@<X3>, unsigned int a3@<W8>)
{
  v14 = (*(a2 + 4 * v3) ^ a3) + (v6 ^ HIDWORD(a1));
  v15 = v14 - ((((v13 - 1088834147) & 0x40E64DF2) + ((v13 - 592) | 0xC5u) + v8) & (2 * v14)) + v9;
  *(a2 + 4 * v5) = v15 ^ v10;
  *(a2 + 4 * v3) = HIDWORD(v15) ^ v11;
  return (*(v7 + 8 * (v13 ^ ((v4 + 1 != v3) * v12))))();
}

uint64_t sub_23ABAE464@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W5>, int a4@<W8>)
{
  v11 = (a3 + 584821265) & 0xDD2456DB;
  v12 = *(*(v4 + 8) + 4 * a2);
  *(*(a1 + 16) + (((v11 ^ v9) + 1384) ^ (a4 + 1146)) + v5) = (v12 ^ v8) + (((v11 ^ v9) * v10) ^ 0x6D) - ((2 * (v12 ^ v8)) & 0x12);
  return (*(v6 + 8 * (v11 ^ (47 * (v5 - 1 == v7)))))();
}

uint64_t sub_23ABAE4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = v8 - v10;
  if (v9 > v8 - v10)
  {
    v12 = v9;
  }

  return (*(v11 + 8 * ((15 * (v12 + ((a8 - 1831214449) & 0x6D261B3C) + 38 * (a8 ^ 0x569u) - 2337 > 0x23)) | a8)))();
}

uint64_t sub_23ABAE57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, unsigned int a17)
{
  a17 = (v19 - 256) ^ (843532609 * (&a15 ^ 0x516022B8));
  a16 = a14;
  v20 = (*(v18 + 8 * (v19 + 1662)))(&a15);
  return (*(v18 + 8 * ((1368 * (a15 == v17 + ((v19 - 478) | 0x5E0) - 1512)) ^ v19)))(v20);
}

uint64_t sub_23ABAE5F8@<X0>(int a1@<W8>, uint64_t a2, char a3, int a4, char a5, __int16 a6, __int16 a7, char a8, char a9, char *a10, uint64_t a11, char *a12, char *a13, char a14, unsigned int a15, unsigned int a16, int a17)
{
  v20 = v17 ^ 0x70F;
  v21 = *(v18 + 8);
  v22 = 1082434553 * (((&a10 | 0x5D4A599A) - (&a10 & 0x5D4A599A)) ^ 0xC60DAF10);
  a14 = 0x80 - -7 * (((&a10 | 0x9A) - (&a10 & 0x9A)) ^ 0x10);
  a10 = &a3;
  a11 = v21;
  a12 = &a9;
  a13 = &a5;
  a15 = (((a1 ^ 0xB00557EC) + 1341827092) ^ ((a1 ^ 0x9EF7BA5E) + 1627932066) ^ ((a1 ^ 0xBDD25A63) + 1110287773)) - v22 + ((v20 - 807) ^ 0x4D6) - 1699625733;
  a16 = v22 + 1986157344 + v20;
  v23 = (*(v19 + 8 * (v20 + 1231)))(&a10);
  return (*(v19 + 8 * ((1163 * (a17 == -1650139615)) ^ v20)))(v23);
}

uint64_t sub_23ABAE7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v44 = *(v40 + 4 * (v41 - 1));
  *(v40 + 4 * v41) = ((1566083941 * (v44 ^ (v44 >> 30))) ^ *(v40 + 4 * v41)) - v41;
  v45 = 1082434553 * ((0x9E2CAC397710DEF3 - ((v43 - 152) | 0x9E2CAC397710DEF3) + a36) ^ 0xD18F9DB113A8D786);
  *(v43 - 108) = v37 + 1004462268 - v45 + 38;
  *(v43 - 128) = (v37 + 1004462268) ^ v45;
  *(v43 - 112) = ((v37 + 1004462268) & 0xFF67FE8D) - v45;
  *(v39 + 40) = v45 ^ 0x26F;
  *(v39 + 24) = v41 + 1 - v45;
  *(v43 - 148) = v45 + 1;
  *(v43 - 144) = v42 - v45 + v37;
  v46 = (*(v38 + 8 * (v37 ^ (v36 - 2142))))(v43 - 152);
  return (*(v38 + 8 * *(v43 - 152)))(v46);
}

uint64_t sub_23ABAE8DC()
{
  *(v3 - 112) = (v1 + 517) ^ (210068311 * ((481646543 - ((v3 - 128) | 0x1CB557CF) + ((v3 - 128) | 0xE34AA830)) ^ 0x11C107D8));
  *(v3 - 128) = v2;
  *(v3 - 120) = v5;
  return (*(v0 + 8 * (v1 ^ 0x643)))(v3 - 128);
}

uint64_t sub_23ABAE988(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int8x16_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int8x16_t a37)
{
  *(&STACK[0x540] + v38) = veorq_s8(*a16, a37);
  STACK[0x4E0] += 32;
  STACK[0x4E8] = a1;
  STACK[0x4F0] = a1;
  return (*(v39 + 8 * (((82 * (v37 ^ 0x116) + 1449) * ((&STACK[0x540] + v38) == a1)) ^ v37)))(a1, 40, a3, a4, a5, 13);
}

void sub_23ABAEAF0(int a1@<W8>)
{
  if (a1 == 776345614)
  {
    v2 = -1650139615;
  }

  else
  {
    v2 = 1650165241;
  }

  *(v1 + 36) = v2;
}

uint64_t sub_23ABAEB50@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v4 = (a1 ^ 0x296) + *(a2 + 4) - 1882376407;
  v5 = (v2 - 1882376208 < 1438562267) ^ (v4 < 1438562267);
  v6 = v2 - 1882376208 > v4;
  if (v5)
  {
    v6 = v2 - 1882376208 < 1438562267;
  }

  return (*(v3 + 8 * ((v6 * ((6 * (a1 ^ 0x296)) ^ 0x1AB)) ^ a1)))();
}

uint64_t sub_23ABAEBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v31 - 112) = (v30 - 1040) ^ (((-1171764821 - ((v31 - 144) | 0xBA2849AB) + ((v31 - 144) | 0x45D7B654)) ^ 0x94D59B2B) * v27);
  *(v31 - 128) = a15;
  *(v31 - 120) = a14;
  *(v31 - 144) = &a19;
  *(v31 - 136) = &a19;
  *(v31 - 104) = &a27;
  v32 = (*(v29 + 8 * (v30 + 302)))(v31 - 144);
  return (*(v29 + 8 * ((31 * (v28 + a13 + 1019 < ((v30 - 640) ^ 0x7FFFFB63u))) ^ (v30 - 813))))(v32);
}

uint64_t sub_23ABAECB0()
{
  STACK[0x398] = 0;
  v4 = 1361651671 * ((2 * (v1 & 0x5F453638) - v1 + 549112258) ^ 0xF398394E);
  *(v3 - 192) = v4 - 1843349545;
  *(v3 - 208) = v4 + v0 - 479;
  *(v3 - 176) = &STACK[0x378];
  *(v3 - 184) = &STACK[0x398];
  *(v3 - 200) = 0;
  v5 = (*(v2 + 8 * (v0 ^ 0xEFF)))(v3 - 208);
  return (*(v2 + 8 * (((*(v3 - 204) != ((v0 - 1652) | 0x508) - 1650140925) * (v0 - 1623)) ^ v0)))(v5);
}

uint64_t sub_23ABAF2E4@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v1 + v5) = *(a1 + v5) + ((v3 - 43) & 0x77) - ((2 * *(a1 + v5)) & 0x12) + 99;
  return (*(v4 + 8 * ((1286 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_23ABAF338()
{
  v6 = v0 + v2 + (((v4 ^ 0x30082DF3) - 805842419) ^ ((v4 ^ 0x6D953B90) - 1838496656) ^ ((v4 ^ (((v5 - 263) | 0x114) + 1305) ^ 0xC039CE2D) + 1069955006)) + 621004899;
  v7 = v3 + 499416313;
  v8 = (v7 < 0x30838DE2) ^ (v6 < 0x30838DE2);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < 0x30838DE2;
  }

  return (*(v1 + 8 * ((v9 | (4 * v9)) ^ v5)))();
}

uint64_t sub_23ABAF450@<X0>(char a1@<W1>, uint64_t a2@<X3>, unsigned int a3@<W8>)
{
  v7 = *(v6 - 220 + a3 + 72);
  v8 = ((a3 << (v4 ^ (a1 - 38) ^ (a1 + 1))) & 0xF3D7BFE8) + (a3 ^ 0xF9EBDFF7) + v3;
  *(a2 + v8) = v7 ^ 0xC0;
  *(a2 + v8 + 1) = (BYTE1(v7) ^ 0x95) - 2 * ((BYTE1(v7) ^ 0x95) & 0xB ^ BYTE1(v7) & 2) - 119;
  *(a2 + v8 + 2) = (BYTE2(v7) ^ 0x28) - 2 * ((BYTE2(v7) ^ 0x28) & 0xB ^ BYTE2(v7) & 2) - 119;
  *(a2 + v8 + 3) = (HIBYTE(v7) ^ 0xE3) - 2 * ((HIBYTE(v7) ^ 0xE3) & 0xD ^ HIBYTE(v7) & 4) - 119;
  return (*(v5 + 8 * (v4 | (4 * (a3 + 4 < *(v6 - 128))))))();
}

uint64_t sub_23ABAF558@<X0>(int a1@<W2>, char a2@<W3>, int a3@<W5>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  v60 = v59[396] ^ ((*v59 & 0x7FFFFFFE | v59[623] & 0x80000000) >> 1);
  v59[623] = (v60 + v57 - ((v60 << (a2 + ((a4 + 51) | 0xD0) - 110)) & a3)) ^ *(&a57 + (((a4 - 1845919995) & 0xEF4F9DFD ^ (a1 - 1)) & *v59));
  return (*(v58 + 8 * ((27 * (a40 > 0x26F)) ^ a4)))();
}

uint64_t sub_23ABAF958(uint64_t a1, uint64_t a2, int a3, int a4, int8x16_t a5, int8x8_t a6)
{
  v13 = a1 - 8;
  v15.val[0].i64[0] = (v9 + v13 - 1) & 0xF;
  v15.val[0].i64[1] = (v9 + v13 + 14) & 0xF;
  v15.val[1].i64[0] = (v9 + v13 + (v10 ^ 4)) & 0xF;
  v15.val[1].i64[1] = (v9 + v13 + 12) & 0xF;
  v15.val[2].i64[0] = (v9 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v9 + v13 + 10) & 0xF;
  v15.val[3].i64[0] = (v9 + v13 + 9) & 0xF;
  v15.val[3].i64[1] = (v9 + v13) & 0xF ^ 8;
  *(a2 + v13) = veor_s8(veor_s8(veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(a2 + v13)), veor_s8(*(v7 + v15.val[0].i64[0] - 7), *(v15.val[0].i64[0] + v6 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a5), a6)));
  return (*(v12 + 8 * (((v11 == v13) * a4) ^ a3)))();
}

uint64_t sub_23ABAFA14@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  a7 = v10 + (&a4 ^ 0xF28BAFE8) * v8 - 19;
  a4 = a3;
  a5 = a1;
  v11 = (*(v9 + 8 * (v10 + 569)))(&a4);
  return (*(v9 + 8 * (((a6 == v7) * ((v10 - 1128) ^ v10 ^ 0x7E8 ^ 0x18)) ^ v10)))(v11);
}

uint64_t sub_23ABAFAFC@<X0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>)
{
  a2.i32[0] = *(a1 + v3);
  v6 = vmovl_u8(a2).u64[0];
  v7 = v3 - 4;
  *(a1 + v7) = vuzp1_s8(v6, v6).u32[0];
  return (*(v5 + 8 * (((v7 == (v4 & 3)) * ((v2 + 1225309728) & 0xB6F73E7D ^ 0x7E4)) ^ v2)))();
}

uint64_t sub_23ABAFF48@<X0>(void *a1@<X0>, int a2@<W8>)
{
  if (a1[7])
  {
    v3 = (a1[8] | *a1) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((v4 * (((a2 - 1762231712) & 0x690987ED) - 834)) ^ a2)))();
}

uint64_t sub_23ABB0198(uint64_t a1, int a2)
{
  v7 = (((a2 - 1550) | 0x304) ^ (v2 - 772)) - v4;
  if (v3 > v7)
  {
    v7 = v3;
  }

  return (*(v6 + 8 * ((52 * (v7 <= v5 + ((a2 - 1046) | 0x10Cu) + 214)) ^ a2)))();
}

uint64_t sub_23ABB01F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v23 = v22 - 144;
  *(v22 - 120) = &a18;
  *(v22 - 112) = a13;
  *(v22 - 144) = &a18;
  *(v22 - 136) = a14;
  *(v22 - 128) = ((v18 | 0x13C) + 1710) ^ (((~((v22 - 144) | 0x3952A632) + ((v22 - 144) & 0x3952A632)) ^ 0x97CD7B75) * v20);
  (*(v19 + 8 * ((v18 | 0x13C) ^ 0x6E3)))(v22 - 144);
  *(v22 - 128) = ((v18 | 0x13C) + 1710) ^ (843532609 * ((((v22 - 144) | 0xC577A6C1) + (~(v22 - 144) | 0x3A88593E)) ^ 0x94178478));
  *(v22 - 144) = &a18;
  *(v22 - 136) = a14;
  *(v22 - 120) = &a18;
  *(v22 - 112) = a13;
  (*(v19 + 8 * ((v18 | 0x13C) + 1697)))(v22 - 144);
  *(v22 - 120) = &a18;
  *(v22 - 112) = a13;
  *(v22 - 128) = ((v18 | 0x13C) + 1710) ^ (843532609 * ((((v22 - 144) | 0x3A733E17) - (v22 - 144) + ((v22 - 144) & 0xC58CC1E8)) ^ 0x6B131CAF));
  *(v22 - 144) = &a18;
  *(v22 - 136) = a14;
  (*(v19 + 8 * ((v18 | 0x13C) ^ 0x6E3)))(v22 - 144);
  v24 = 1441727781 * v21;
  v25 = (v18 | 0x13C) + 38;
  v26 = 843532609 * ((((v23 ^ 0xF910B6C7) & 0x9713F42F) + (v23 ^ 0x6EF4938) - ((v23 ^ 0x6EF4938) & 0x9713F42F)) ^ 0xC09C9FAF);
  *(v22 - 144) = (1441727781 * v21 - 384306384) ^ v26;
  *(v22 - 124) = v25 - v26;
  *(v22 - 136) = a15;
  v27 = (v18 | 0x13C) + 1841;
  (*(v19 + 8 * v27))(v22 - 144);
  v28 = *(v22 - 128) == (v18 | 0x13C) - 1494163955 + ((v18 | 0x13C) ^ 0x31) - 401;
  v29 = 843532609 * ((((v23 | 0xFF6CAC5A) ^ 0xFFFFFFFE) - (~v23 | 0x9353A5)) ^ 0x51F3711D);
  *(v22 - 144) = (v24 - 1826034165) ^ v29;
  *(v22 - 124) = v25 - v29;
  *(v22 - 136) = a15;
  v30 = (*(v19 + 8 * v27))(v22 - 144);
  return (*(v19 + 8 * ((117 * v28) ^ (v18 | 0x13C))))(v30);
}

uint64_t sub_23ABB06A8(uint64_t result)
{
  v1 = 2066391179 * (((result | 0xC2CCA557772E533) - (result | 0xF3D335AA888D1ACCLL) - 0xC2CCA557772E534) ^ 0xE10CAAF2D855672BLL);
  v2 = *(result + 32) - v1;
  v3 = *(result + 16) ^ v1;
  v4 = v3 < v2;
  v5 = v3 < v2;
  v6 = v4;
  if ((*(result + 12) - v1))
  {
    v5 = v6;
  }

  v7 = !v5;
  v8 = 8;
  if (!v7)
  {
    v8 = 24;
  }

  *(result + 4) = (*(result + v8) + v1) ^ (*result + v1);
  return result;
}

uint64_t sub_23ABB0750()
{
  v3 = (*(v2 + 8 * (v0 + 832)))();
  STACK[0x450] -= 16;
  return (*(v2 + 8 * ((1777 * (v1 == ((13 * (v0 ^ 0x50E)) ^ 0x9DA4DEF1))) ^ (v0 - 1102))))(v3);
}

void sub_23ABB07BC(uint64_t a1)
{
  v1 = 1361651671 * ((a1 - 355485318 - 2 * (a1 & 0xEACFB97A)) ^ 0x39ED49F6);
  v2 = *(a1 + 4) - v1;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_23ABB08D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = ((~((v20 - 144) | 0xB0C6C422) + ((v20 - 144) & 0xB0C6C422)) ^ 0x1E591965) * v16;
  *(v20 - 136) = a15;
  *(v20 - 124) = v19 - v21 - 1716;
  *(v20 - 144) = (1441727781 * (v18 + ((v19 - 1909832312) & 0x71D5B76C) - 1295) - 1795818118) ^ v21;
  v22 = (*(v15 + 8 * (v19 + 87)))(v20 - 144);
  return (*(v15 + 8 * (v19 | (8 * (*(v20 - 128) == v17 + ((v19 - 1463) | 0x180) - 992)))))(v22);
}

uint64_t sub_23ABB09C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  *(v27 - 104) = &a23;
  *(v27 - 144) = &a19;
  *(v27 - 136) = &a19;
  *(v27 - 112) = (v26 - 1040) ^ (((((v27 - 144) | 0x572F00C9) - (v27 - 144) + ((v27 - 144) & 0xA8D0FF30)) ^ 0x862D2DB6) * v23);
  *(v27 - 128) = a15;
  *(v27 - 120) = a14;
  v28 = (*(v25 + 8 * (v26 + 302)))(v27 - 144);
  return (*(v25 + 8 * ((31 * (v24 + a13 + 1019 < ((v26 - 640) ^ 0x7FFFFB63u))) ^ (v26 - 813))))(v28);
}

void sub_23ABB0A8C(uint64_t a1)
{
  v2 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 + dword_27DFC8890) ^ 0xA1)) ^ byte_23AC78AA0[byte_23AC751A0[(117 * ((qword_27DFC8A88 + dword_27DFC8890) ^ 0xA1))] ^ 0x65]) - 101);
  v3 = *(v2 - 4);
  v4 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 - v3) ^ 0xA1)) ^ byte_23AC787A0[byte_23AC74DA0[(117 * ((qword_27DFC8A88 - v3) ^ 0xA1))] ^ 5]) - 192);
  v5 = &v9[*(v4 - 4) - v3];
  v6 = 1793648501 * v5 - 0x67A512DFC4F8545FLL;
  v7 = 1793648501 * (v5 ^ 0x985AED203B07ABA1);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = 1793648501 * ((v7 + *(v2 - 4)) ^ 0x3B07ABA1);
  v8 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 - dword_27DFC8890) ^ 0xA1)) ^ byte_23AC787A0[byte_23AC74DA0[(117 * ((qword_27DFC8A88 - dword_27DFC8890) ^ 0xA1))] ^ 5]) - 175) - 4;
  (*&v8[8 * (*(off_284DD44B8 + (*(off_284DD47D0 + v4 - 8) ^ 0xE4u) - 12) ^ v4) + 16840])(*(&off_284DD4450 + (*(off_284DD4638 + (*(off_284DD45A0 + v4) ^ 0x13u) - 12) ^ v4) - 114) - 8, sub_23AB93BB4);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_23ABB0DF4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43)
{
  v48 = v46 + 16;
  v49 = a1 ^ 0x425E7458;
  v50 = *(v47 - 136) ^ 0x164;
  v51 = (v50 - 680832892) ^ v43;
  v52 = v45 ^ 0xADD39701;
  *(v47 - 116) = v48;
  *(v47 - 144) = 0;
  *(v47 - 140) = v50 + 364;
  v53 = (v50 + 364) ^ 0x210;
  v54 = (*(v47 - 152) + v48);
  v55 = v54[9] ^ 0xD2;
  v56 = *(a11 + (v54[13] ^ 0x90)) ^ 0xF8;
  *(v47 - 136) = v53;
  v57 = (v56 << (v53 - 91)) + (((*(a9 + (v54[12] ^ 0x80)) - 4) ^ 0x31) << 24) + ((*(a10 + (v54[14] ^ 5)) ^ (v54[14] - ((2 * v54[14]) & 0x70) + 56) ^ 0x99) << 8) + (*(a12 + (v54[15] ^ 8)) ^ 0x59);
  v58 = *(a12 + (v54[11] ^ 9)) ^ 0x5E | ((*(a11 + v55) ^ 0x6E) << 16) | ((*(a10 + (v54[10] ^ 0xA9)) ^ (v54[10] - ((2 * v54[10]) & 0x70) + 56) ^ 0xC2) << 8) | (((*(a9 + (v54[8] ^ 2)) - 4) ^ 0xE2) << 24);
  v59 = *(v47 - 176) ^ v52 ^ 0x69FAC220 ^ (((*(a10 + (v54[6] ^ 8)) ^ (v54[6] - ((2 * v54[6]) & 0x70) + 56) ^ 0x19) << 8) | (((*(a9 + (v54[4] ^ 0xC5)) - 4) ^ 0xFFFFFFFB) << 24) | *(a12 + (v54[7] ^ 0xFDLL)) ^ 0x59 | ((*(a11 + (v54[5] ^ 0xF5)) ^ 0x4C) << 16));
  LODWORD(v55) = *(v47 - 168) ^ v49 ^ 0x4D036472 ^ (*(a12 + (v54[3] ^ 0x75)) ^ 0xF4 | (((*(a9 + (*v54 ^ 0xB0)) - 4) ^ 0x16) << 24) | ((*(a11 + (v54[1] ^ 0x93)) ^ 0x86) << 16) | ((*(a10 + (v54[2] ^ 0x1CLL)) ^ (v54[2] - ((2 * v54[2]) & 0x70) + 56) ^ 0x5D) << 8));
  v60 = *(v47 - 172) ^ v44 ^ 0x41A20ECF ^ 0xCB5E9785 ^ v57;
  v61 = *(v47 - 164) ^ v51 ^ 0xA1BE6EAC ^ v58;
  v62 = *(&off_284DD4450 + v50 - 1193) - 8;
  v63 = *&v62[4 * ((*(v47 - 176) ^ v52 ^ 0xC220 ^ (((*(a10 + (v54[6] ^ 8)) ^ (v54[6] - ((2 * v54[6]) & 0x70) + 56) ^ 0x19) << 8) | *(a12 + (v54[7] ^ 0xFDLL)) ^ 0x59)) >> 8)];
  v64 = *(&off_284DD4450 + v50 - 1167) - 12;
  v65 = *&v64[4 * BYTE2(v61)];
  *(v47 - 120) = v50;
  v66 = *(&off_284DD4450 + v50 - 1274);
  v67 = *(v66 + 4 * HIBYTE(v60)) ^ v63;
  v68 = *&v64[4 * BYTE2(v55)];
  v69 = *(v66 + 4 * HIBYTE(v59)) ^ v65;
  *(v47 - 128) = 1483120735;
  v70 = (v67 ^ 0xF9ABD7C8) + 1483120729 - 2 * ((v67 ^ 0xF9ABD7C8) & 0x5866A05F ^ v67 & 6);
  v71 = *(&off_284DD4450 + v50 - 1226) - 12;
  v72 = *&v71[4 * v61] - 190468687;
  v73 = *&v62[4 * BYTE1(v55)] ^ *(v66 + 4 * HIBYTE(v61));
  v74 = (*&v71[4 * v60] + 1292652042 - ((2 * *&v71[4 * v60] - 380937374) & 0xB0CD40B2)) ^ *&v64[4 * BYTE2(v59)];
  v75 = (v74 + 1068419681 - ((2 * v74) & 0x7F5D94C2)) ^ *(v66 + 4 * BYTE3(v55));
  *(v47 - 124) = 1483120731;
  LODWORD(v55) = v69 ^ (*&v71[4 * v55] - 190468687);
  v76 = *&v62[4 * BYTE1(v61)] ^ *(v47 - 180) ^ (v75 - 972743255 - ((2 * v75) & 0x8C0A3B52));
  v77 = *&v64[4 * BYTE2(v60)] ^ *(v47 - 188) ^ (*&v71[4 * v59] - 190468687) ^ ((v73 ^ 0xF9ABD7C8) + 1483120729 - 2 * ((v73 ^ 0xF9ABD7C8) & 0x5866A05B ^ v73 & 2));
  v78 = *&v62[4 * BYTE1(v60)] ^ *(v47 - 184) ^ ((v55 ^ 0x67C86A38) - 972743255 - 2 * ((v55 ^ 0x67C86A38) & 0x46051DAB ^ v55 & 2));
  v79 = v78 ^ 0xBF80DD5E;
  v80 = (v76 ^ 0xD7674CCB) >> 24;
  v81 = a43 ^ v68 ^ v72 ^ 0xB2658204 ^ v70;
  v82 = *(v66 + 4 * HIBYTE(v81)) ^ 0x67C86A38 ^ *&v64[4 * ((v76 ^ 0xD7674CCB) >> 16)];
  v83 = *&v71[4 * (v78 ^ 0x48)];
  v84 = *&v62[4 * ((v77 ^ 0xDD4) >> 8)] ^ (*&v71[4 * v81] - 1163211942 - ((2 * *&v71[4 * v81] - 380937374) & 0x8C0A3B52));
  v85 = (v83 + 877950994 - ((2 * v83 + 1766546274) & 0x7F5D94C2)) ^ *(v66 + 4 * ((v77 ^ 0x16B10DD4) >> 24));
  v86 = (v85 - 972743255 - ((2 * v85) & 0x8C0A3B52)) ^ *&v62[4 * ((v76 ^ 0x4CCB) >> 8)];
  v87 = *&v71[4 * (v76 ^ 0xDD)];
  v88 = (v87 - 1163211942 - ((2 * v87 - 380937374) & 0x8C0A3B52)) ^ *&v62[4 * BYTE1(v81)];
  v89 = *(v66 + 4 * v80) ^ (v84 + 1068419681 - ((2 * v84) & 0x7F5D94C2));
  v90 = *&v64[4 * ((v77 ^ 0x16B10DD4) >> 16)];
  LODWORD(v55) = (v88 + 1068419681 - ((2 * v88) & 0x7F5D94C2)) ^ *(v66 + 4 * HIBYTE(v79));
  v91 = *&v64[4 * BYTE2(v81)] ^ a41 ^ (v86 + 1483120729 - ((2 * v86) & 0xB0CD40B2));
  v92 = __ROR4__(__ROR4__(*&v64[4 * BYTE2(v79)] ^ 0xB9AB301 ^ (v89 + 1483120729 - ((2 * v89) & 0xB0CD40B2)), 5) ^ 0x50D2ECF9, 27);
  v93 = a39 ^ v92 ^ 0x6EDAF696;
  v94 = (v82 - 972743255 - ((2 * v82) & 0x8C0A3B52)) ^ a40 ^ *&v62[4 * BYTE1(v79)] ^ (*&v71[4 * (v77 ^ 0xC2)] - 190468687);
  v95 = a42 ^ v90 ^ 0x2201ECBC ^ (v55 + 1483120729 - ((2 * v55) & 0xB0CD40B2));
  v96 = *&v71[4 * (v91 ^ 0x37)];
  v97 = (v96 + 1292652042 - ((2 * v96 - 380937374) & 0xB0CD40B2)) ^ *&v64[4 * (((a39 ^ v92) >> 16) ^ 0x45)];
  v98 = *&v62[4 * BYTE1(v93)] ^ *(v66 + 4 * ((v91 ^ 0xD62C0A37) >> 24)) ^ 0xF9ABD7C8;
  v99 = (v97 - 972743255 - ((2 * v97) & 0x8C0A3B52)) ^ *&v62[4 * BYTE1(v95)];
  v100 = *&v64[4 * BYTE2(v95)] ^ *&v62[4 * ((v91 ^ 0xA37) >> 8)] ^ 0x9E63BDF0;
  v101 = *(v66 + 4 * ((v94 ^ 0xFC47C039) >> 24));
  v102 = HIBYTE(v93);
  v103 = *(v66 + 4 * HIBYTE(v95)) ^ *&v64[4 * (BYTE2(v91) ^ 0xB3)] ^ 0x67C86A38 ^ (*&v71[4 * ((a39 ^ v92) ^ 0x96)] - 190468687);
  v104 = *(v66 + 4 * v102);
  v105 = *&v62[4 * (BYTE1(v94) ^ 0x87)];
  v106 = *&v71[4 * (v94 ^ 0x39)] - 190468687;
  v107 = (v98 + 1483120729 - ((2 * v98) & 0xB0CD40B2)) ^ a34 ^ *&v64[4 * ((v94 ^ 0xFC47C039) >> 16)] ^ (*&v71[4 * v95] - 190468687);
  LODWORD(v55) = a36 ^ v101 ^ 0x61C6B6CD ^ (v99 + 1068419681 - ((2 * v99) & 0x7F5D94C2));
  v108 = (v100 + 1068419681 - ((2 * v100) & 0x7F5D94C2)) ^ a38 ^ v104 ^ v106;
  v109 = v105 ^ a37 ^ (v103 - 972743255 - ((2 * v103) & 0x8C0A3B52));
  v110 = (v109 ^ 0x7D650C28) >> 24;
  v111 = *&v71[4 * (v109 ^ 0x28)];
  v112 = *&v71[4 * (v108 ^ 0xDD)];
  v113 = (v111 + 877950994 - ((2 * v111 + 1766546274) & 0x7F5D94C2)) ^ *(v66 + 4 * ((v107 ^ 0x7F82DAAB) >> 24));
  v114 = (v113 - 972743255 - ((2 * v113) & 0x8C0A3B52)) ^ *&v62[4 * (((v108 ^ 0x35DF) >> 8) ^ 0x79)];
  v115 = (v112 - 1163211942 - ((2 * v112 - 380937374) & 0x8C0A3B52)) ^ *&v62[4 * ((a36 ^ v101 ^ 0xB6CD ^ (v99 - 13727 - ((2 * v99) & 0x94C2))) >> 8)];
  v116 = *&v64[4 * BYTE2(v55)];
  v117 = *&v62[4 * (BYTE1(v109) ^ 0x4B)] ^ 0x9E63BDF0 ^ *&v64[4 * (BYTE2(v108) ^ 0x67)];
  v118 = *(v66 + 4 * (HIBYTE(v108) ^ 0xBD)) ^ *&v64[4 * ((v109 ^ 0x7D650C28) >> 16)];
  v119 = *&v64[4 * ((v107 ^ 0x7F82DAAB) >> 16)] ^ (v115 + 1483120729 - ((2 * v115) & 0xB0CD40B2));
  v120 = *(v66 + 4 * BYTE3(v55));
  LODWORD(v55) = v118 ^ (*&v71[4 * ((a36 ^ v101) ^ 0xCD ^ (v99 + 97 - ((2 * v99) & 0xC2)))] - 190468687);
  v121 = *(v66 + 4 * v110) ^ a33 ^ (v119 + 1068419681 - ((2 * v119) & 0x7F5D94C2));
  v122 = v116 ^ a32 ^ (v114 + 1483120729 - ((2 * v114) & 0xB0CD40B2));
  v123 = v121 ^ 0x66654B3E;
  v124 = (v117 + 1068419681 - ((2 * v117) & 0x7F5D94C2)) ^ a31 ^ v120 ^ (*&v71[4 * (v107 ^ 0xBD)] - 190468687);
  LOBYTE(v120) = v124 ^ 0x1F;
  v125 = a35 ^ *&v62[4 * ((v107 ^ 0xDAAB) >> 8)] ^ 0xE82DABD ^ ((v55 ^ 0x67C86A38) - 972743255 - 2 * ((v55 ^ 0x67C86A38) & 0x46051DAD ^ v55 & 4));
  BYTE2(v107) = BYTE2(v122) ^ 0x80;
  v126 = *&v71[4 * ((a35 ^ v62[4 * ((v107 ^ 0xDAAB) >> 8)]) ^ 0xBD ^ ((v55 ^ 0x38) - 87 - 2 * ((v55 ^ 0x38) & 0xAD ^ v55 & 4)))];
  v127 = (v126 - 1163211942 - ((2 * v126 - 380937374) & 0x8C0A3B52)) ^ *&v62[4 * ((v124 ^ 0xE61F) >> 8)];
  v128 = (v121 ^ 0x66654B3Eu) >> 24;
  v129 = *&v71[4 * (v121 ^ 0x28)];
  v130 = (v127 + 1068419681 - ((2 * v127) & 0x7F5D94C2)) ^ *(v66 + 4 * v128);
  v131 = (v129 - 1163211942 - ((2 * v129 - 380937374) & 0x8C0A3B52)) ^ *&v62[4 * ((a35 ^ *&v62[4 * ((v107 ^ 0xDAAB) >> 8)] ^ 0xDABD ^ ((v55 ^ 0x6A38) + 7593 - 2 * ((v55 ^ 0x6A38) & 0x1DAD ^ v55 & 4))) >> 8)];
  v132 = (v131 + 1483120729 - ((2 * v131) & 0xB0CD40B2)) ^ *&v64[4 * (BYTE2(v124) ^ 0x91)];
  v133 = *(v66 + 4 * ((v124 ^ 0x880EE61F) >> 24)) ^ 0x32D68E0D ^ *&v62[4 * BYTE1(v123)];
  v134 = *&v64[4 * BYTE2(v125)] ^ 0x98814A9D;
  v135 = (*&v71[4 * v120] + 1292652042 - ((2 * *&v71[4 * v120] - 380937374) & 0xB0CD40B2)) ^ *&v64[4 * BYTE2(v123)];
  LODWORD(v55) = (v135 + 1068419681 - ((2 * v135) & 0x7F5D94C2)) ^ *(v66 + 4 * HIBYTE(v125));
  v136 = v55 - 972743255 - ((2 * v55) & 0x8C0A3B52);
  v137 = (*&v71[4 * (v122 ^ 0x48)] - 190468687) ^ a27 ^ (v134 + v133 - 2 * (v134 & v133));
  LODWORD(v55) = *(v66 + 4 * ((v122 ^ 0xA480DD5E) >> 24)) ^ a28 ^ (v132 + 1068419681 - ((2 * v132) & 0x7F5D94C2));
  v138 = *&v62[4 * ((v122 ^ 0xDD5E) >> 8)] ^ a30 ^ v136;
  v139 = a29 ^ *&v64[4 * BYTE2(v107)] ^ 0x84654B28 ^ (v130 + 1483120729 - ((2 * v130) & 0xB0CD40B2));
  v140 = *&v71[4 * (v137 ^ 0x7E)];
  v141 = HIBYTE(v138) ^ 0x5F;
  v142 = *&v71[4 * (v138 ^ 0xDD)];
  v143 = *(v66 + 4 * (HIBYTE(v137) ^ 0x30)) ^ 0x67C86A38 ^ *&v64[4 * (BYTE2(v138) ^ 0x67)] ^ (*&v71[4 * (v55 ^ 0x6E)] - 190468687);
  v144 = (v142 + 877950994 - ((2 * v142 + 1766546274) & 0x7F5D94C2)) ^ *(v66 + 4 * HIBYTE(v139));
  v145 = (v144 + 1483120729 - ((2 * v144) & 0xB0CD40B2)) ^ *&v64[4 * (((v55 ^ 0xD0C9FB6E) >> 16) ^ 0x9F)];
  v146 = *&v64[4 * BYTE2(v139)] ^ (v140 + 1292652042 - ((2 * v140 - 380937374) & 0xB0CD40B2));
  v147 = *(v66 + 4 * ((v55 ^ 0xD0C9FB6E) >> 24)) ^ *&v64[4 * (BYTE2(v137) ^ 0xEE)] ^ 0x67C86A38 ^ (*&v71[4 * v139] - 190468687);
  v148 = *&v62[4 * (BYTE1(v138) ^ 0x4C)];
  v149 = *&v62[4 * (BYTE1(v137) ^ 0xC3)];
  LODWORD(v55) = *&v62[4 * (BYTE1(v55) ^ 0xBC)];
  v150 = (v146 + 1068419681 - ((2 * v146) & 0x7F5D94C2)) ^ *(v66 + 4 * v141);
  v151 = *&v62[4 * BYTE1(v139)];
  *(v47 - 132) = -972743254;
  v152 = v148 ^ a24 ^ (v147 - 972743255 - ((2 * v147) & 0x8C0A3B52));
  v153 = (v143 - 972743254 + ~((2 * v143) & 0x8C0A3B52)) ^ a23 ^ v151;
  v154 = v55 ^ a26 ^ (v150 - 972743255 - ((2 * v150) & 0x8C0A3B52));
  LODWORD(v55) = a25 ^ v149 ^ 0x9A674CDD ^ (v145 - 972743255 - ((2 * v145) & 0x8C0A3B52));
  v155 = *&v71[4 * ((a25 ^ v149) ^ 0xDD ^ (v145 - 87 - ((2 * v145) & 0x52)))];
  v156 = (v155 - 1163211942 - ((2 * v155 - 380937374) & 0x8C0A3B52)) ^ *&v62[4 * ((v154 ^ 0xDAAB) >> 8)];
  v157 = (v156 + 1483120729 - ((2 * v156) & 0xB0CD40B2)) ^ *&v64[4 * ((v153 ^ 0xBFC6B6DB) >> 16)];
  v158 = *&v62[4 * ((a25 ^ v149 ^ 0x4CDD ^ (v145 + 7593 - ((2 * v145) & 0x3B52))) >> 8)] ^ *(v66 + 4 * ((v153 ^ 0xBFC6B6DB) >> 24)) ^ (*&v71[4 * (v152 ^ 0xE)] - 190468687);
  v159 = *&v62[4 * (BYTE1(v152) ^ 0x2A)] ^ 0xF9ABD7C8 ^ *(v66 + 4 * ((v154 ^ 0x2982DAABu) >> 24));
  v160 = *(v66 + 4 * BYTE3(v55)) ^ *&v62[4 * ((v153 ^ 0xB6DB) >> 8)];
  v161 = *(v47 - 128);
  v162 = (v158 ^ 0xF9ABD7C8) + 1483120729 - 2 * ((v158 ^ 0xF9ABD7C8) & v161 ^ v158 & 6);
  v163 = v159 + 1483120729 - ((2 * v159) & 0xB0CD40B2);
  v164 = *(v66 + 4 * (HIBYTE(v152) ^ 0xA6));
  v165 = *&v64[4 * (BYTE2(v152) ^ 0xB3)];
  v166 = *&v71[4 * (v154 ^ 0xBD)] - 190468687;
  v167 = *&v64[4 * ((v154 ^ 0x2982DAABu) >> 16)] ^ a19 ^ v162;
  v168 = a22 ^ *&v64[4 * BYTE2(v55)] ^ (*&v71[4 * (v153 ^ 0xCD)] - 190468687) ^ v163 ^ 0x2674CDD;
  v169 = a20 ^ v164 ^ 0xAF54BB9B ^ (v157 + 1068419681 - ((2 * v157) & 0x7F5D94C2));
  LODWORD(v55) = a21 ^ v165 ^ v166 ^ 0x2BE67D3F ^ ((v160 ^ 0xF9ABD7C8) + 1483120729 - 2 * ((v160 ^ 0xF9ABD7C8) & v161 ^ v160 & 6));
  v170 = *&v71[4 * ((a20 ^ v164) ^ 0x9B ^ (v157 + 97 - ((2 * v157) & 0xC2)))];
  v171 = (v170 + 1292652042 - ((2 * v170 - 380937374) & 0xB0CD40B2)) ^ *&v64[4 * BYTE2(v168)];
  v172 = (v171 - 972743255 - ((2 * v171) & 0x8C0A3B52)) ^ *&v62[4 * ((a21 ^ v165 ^ v166 ^ 0x7D3F ^ ((v160 ^ 0xD7C8) - 24487 - 2 * ((v160 ^ 0xD7C8) & v161 ^ v160 & 6))) >> 8)];
  v173 = *&v62[4 * ((v167 ^ 0x778A) >> 8)] ^ *(v66 + 4 * BYTE3(v55)) ^ 0xF9ABD7C8;
  v174 = *&v71[4 * (v167 ^ 0x8A)];
  v175 = *&v62[4 * BYTE1(v168)] ^ (*&v71[4 * ((a21 ^ v165 ^ v166) ^ 0x3F ^ ((v160 ^ 0xC8) + 89 - 2 * ((v160 ^ 0xC8) & v161 ^ v160 & 6)) ^ 0x16)] - 190468687) ^ *(v66 + 4 * HIBYTE(v169));
  v176 = *(v66 + 4 * HIBYTE(v168)) ^ (v174 + 877950994 - ((2 * v174 + 1766546274) & 0x7F5D94C2));
  LODWORD(v55) = (v176 + 1483120729 - ((2 * v176) & 0xB0CD40B2)) ^ *&v64[4 * BYTE2(v55)];
  v177 = *&v64[4 * BYTE2(v169)] ^ a17 ^ (*&v71[4 * v168] - 190468687) ^ (v173 + 1483120729 - ((2 * v173) & 0xB0CD40B2));
  v178 = *(v66 + 4 * ((v167 ^ 0x44E9778Au) >> 24)) ^ a16 ^ (v172 + 1068419681 - ((2 * v172) & 0x7F5D94C2));
  LODWORD(v55) = a18 ^ *&v62[4 * BYTE1(v169)] ^ 0x26E67D29 ^ (v55 - 972743255 - ((2 * v55) & 0x8C0A3B52));
  LOBYTE(v172) = v178 ^ 0x58;
  v179 = a20 ^ a17 ^ *&v64[4 * (BYTE2(v167) ^ 0x76)] ^ 0xA254BB9B ^ ((v175 ^ 0xF9ABD7C8) + 1483120729 - 2 * ((v175 ^ 0xF9ABD7C8) & *(v47 - 124) ^ v175 & 2));
  v180 = *&v71[4 * (v177 ^ 0x49)];
  v181 = (*&v71[4 * v55] - 1163211942 - ((2 * *&v71[4 * v55] - 380937374) & 0x8C0A3B52)) ^ *&v62[4 * ((v178 ^ 0x2758) >> 8)];
  v182 = *(v66 + 4 * BYTE3(v55));
  v183 = *(v66 + 4 * ((v178 ^ 0x4BE2758u) >> 24));
  v184 = (v180 + 1292652042 - ((2 * v180 - 380937374) & 0xB0CD40B2)) ^ *&v64[4 * (BYTE2(v178) ^ 0x21)];
  v185 = (v184 + 1068419681 - ((2 * v184) & 0x7F5D94C2)) ^ *(v66 + 4 * HIBYTE(v179));
  v186 = (v181 + 1483120729 - ((2 * v181) & 0xB0CD40B2)) ^ *&v64[4 * BYTE2(v179)];
  LODWORD(v66) = *(v66 + 4 * (HIBYTE(v177) ^ 0xEF));
  v187 = (*&v71[4 * v172] + 877950994 - ((2 * *&v71[4 * v172] + 1766546274) & 0x7F5D94C2)) ^ v182;
  v188 = (v187 + *(v47 - 132) + ~((2 * v187) & 0x8C0A3B52)) ^ *&v62[4 * BYTE1(v179)];
  v189 = *&v62[4 * (BYTE1(v177) ^ 0xEB)] ^ (*&v71[4 * v179] - 190468687) ^ v183;
  v190 = (v189 ^ 0xF9ABD7C8) + 1483120729 - 2 * ((v189 ^ 0xF9ABD7C8) & v161 ^ v189 & 6);
  v191 = *&v64[4 * (BYTE2(v177) ^ 3)];
  v192 = *&v64[4 * BYTE2(v55)] ^ a13 ^ v190;
  v193 = *&v62[4 * BYTE1(v55)] ^ a14 ^ (v185 - 972743255 - ((2 * v185) & 0x8C0A3B52));
  LODWORD(v55) = v191 ^ a15 ^ (v188 + 1483120729 - ((2 * v188) & 0xB0CD40B2));
  v194 = a15 ^ a17 ^ v66 ^ (v186 + 1068419681 - ((2 * v186) & 0x7F5D94C2));
  v195 = v194 ^ 0xBD9E3C06;
  v196 = v55 ^ 0xB0693C07;
  v197 = (a15 ^ a17 ^ v66 ^ (v186 + 97 - ((2 * v186) & 0xC2))) ^ 7;
  v198 = *(v47 - 120);
  v199 = *(&off_284DD4450 + (v198 ^ 0x572)) - 4;
  v200 = HIBYTE(v194) ^ 0xD2;
  v201 = *(&off_284DD4450 + (v198 ^ 0x50F));
  v202 = *(v201 + 4 * (BYTE3(v55) ^ 0xDF));
  LODWORD(v55) = 1909043885 * *(v201 + 4 * v200) - ((-476879526 * *(v201 + 4 * v200) - 2142351550) & 0xB741430E);
  v203 = 1909043885 * v202 - 1071175775;
  v204 = *(&off_284DD4450 + v198 - 1198) - 12;
  v205 = *&v204[4 * ((v193 ^ 0xFAB5) >> 8)];
  HIDWORD(v206) = v205 ^ 0xAF204CE;
  LODWORD(v206) = v205 ^ 0x70000000;
  v207 = (v206 >> 28) ^ (*&v199[4 * (v192 ^ 0x16)] - 1105932265) ^ v203;
  LODWORD(v64) = *&v204[4 * ((v192 ^ 0xF016) >> 8)];
  v208 = *&v199[4 * v197] - ((2 * *&v199[4 * v197] + 2083102766) & 0xB741430E);
  HIDWORD(v206) = v64 ^ 0xAF204CE;
  LODWORD(v206) = v64 ^ 0x70000000;
  LODWORD(v64) = v206 >> 28;
  v209 = *&v204[4 * BYTE1(v195)];
  HIDWORD(v206) = v209 ^ 0xAF204CE;
  LODWORD(v206) = v209 ^ 0x70000000;
  v210 = *(&off_284DD4450 + (v198 ^ 0x566));
  v211 = *(v210 + 4 * ((v193 ^ 0x422CFAB5) >> 16));
  v212 = *(v210 + 4 * ((v192 ^ 0xF6BCF016) >> 16));
  v213 = (v206 >> 28) ^ (*&v199[4 * (v193 ^ 0xB5)] - 1105932265);
  v214 = v207 + 1537253767 - ((2 * v207) & 0xB741430E);
  LODWORD(v199) = *&v199[4 * v196];
  v215 = *(v210 + 4 * (BYTE2(v196) ^ 0xF7u));
  v216 = *&v204[4 * BYTE1(v196)];
  v217 = *(v201 + 4 * (HIBYTE(v193) ^ 0x2D));
  LODWORD(v201) = *(v201 + 4 * (HIBYTE(v192) ^ 0x99));
  HIDWORD(v206) = v216 ^ 0xAF204CE;
  LODWORD(v206) = v216 ^ 0x70000000;
  v218 = a5 ^ *(v210 + 4 * BYTE2(v195)) ^ v214;
  v219 = v211 ^ a7 ^ v64 ^ (v199 - 1105932265);
  v220 = a6 ^ v212 ^ (1909043885 * v217 - 1071175775);
  v221 = v55 + 466077992;
  v222 = (v208 + 431321502) ^ v220 ^ (v206 >> 28);
  LODWORD(v199) = a6 ^ a13 ^ v215 ^ (v213 + 1537253767 - ((2 * v213) & 0xB741430E)) ^ (1909043885 * v201 - 1071175775);
  v223 = *(&off_284DD4450 + (v198 ^ 0x55C)) - 4;
  v54[10] = v223[BYTE1(v222) ^ 0x79] ^ 0x50;
  v224 = *(&off_284DD4450 + (v198 & 0xE6024AC5)) - 4;
  LODWORD(v64) = v219 ^ v221;
  v54[13] = v224[BYTE2(v199) ^ 0xF0] ^ 0x84;
  v225 = *(&off_284DD4450 + (v198 ^ 0x533)) - 8;
  v54[15] = (v225[(a6 ^ a13 ^ v215 ^ (v213 - 121 - ((2 * v213) & 0xE)) ^ (-83 * v201 - 95)) ^ 0x45] - 49) ^ 0x8F;
  v54[6] = v223[BYTE1(v64) ^ 0x1BLL] ^ 0xAC;
  v54[1] = v224[BYTE2(v218) ^ 0x3ELL] ^ 0xE2;
  v226 = *(&off_284DD4450 + v198 - 1246);
  v54[12] = *(v226 + ((v199 >> 24) ^ 0x41)) ^ 0xA1;
  v54[8] = *(v226 + (HIBYTE(v222) ^ 0xB6)) ^ 0x67;
  v227 = *(v47 - 116);
  v54[3] = (v225[v218 ^ 0xDFLL] - 49) ^ 0x17;
  v54[14] = v223[BYTE1(v199) ^ 0x5ELL] ^ 0xED;
  v54[11] = (v225[v222 ^ 0x54] - 49) ^ 0x67;
  v54[2] = v223[BYTE1(v218) ^ 0x13] ^ 0xA0;
  v54[7] = (v225[v64 ^ 0xDELL] - 49) ^ 0x84;
  v54[5] = v224[BYTE2(v64) ^ 0x7ALL] ^ 0x25;
  *v54 = *(v226 + (HIBYTE(v218) ^ 0xB5)) ^ 0x87;
  v54[9] = v224[BYTE2(v222) ^ 0x6FLL] ^ 0x57;
  v54[4] = *(v226 + ((v64 >> 24) ^ 0x49)) ^ 0xF3;
  v228 = v227 - 1839866902 < a8;
  if (a8 < 0x9255DBDA != (v227 - 1839866902) < 0x9255DBDA)
  {
    v228 = a8 < 0x9255DBDA;
  }

  return (*(*(v47 - 160) + 8 * (((8 * v228) | (v228 << 6)) ^ v198)))();
}

void sub_23ABB0E40(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (50899313 * ((2 * (a1 & 0xFBF94968) - a1 + 67548823) ^ 0xCC6772C1));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_23ABB10B8()
{
  v7 = v5 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 + ((v4 + 232) ^ 0x64FLL) - v3;
  v10 = v2 + v9;
  v11 = v2 + v8 + 1;
  v12 = v1 + v9;
  v13 = v1 + v8 + 1;
  v14 = v8 + v0 + 2;
  v16 = v11 > v5 && v10 < v7;
  v18 = v13 > v5 && v12 < v7 || v16;
  if (v14 <= v5 || v14 - v3 >= v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 8 * ((v20 * ((v4 - 1044385865) & 0x3E400FF7 ^ 0x51A)) ^ v4)))();
}

uint64_t sub_23ABB11D4()
{
  v7 = (v4 - 198) | 0x105;
  v8 = 50899313 * (((v6 - 144) & 0xEB128DF | ~((v6 - 144) | 0xEB128DF)) ^ 0x392F1376);
  *(v6 - 116) = (((v7 - 1604578364) & 0x5FA3EDE7 ^ 0xC91DD509) + v1) ^ v8;
  *(v6 - 128) = v3;
  *(v6 - 136) = v7 - v8 + 592;
  *(v6 - 144) = v5;
  (*(v2 + 8 * (v7 + 1377)))(v6 - 144);
  result = v11;
  *v10 = v9;
  *(v11 + 12) = -1650139615;
  return result;
}

uint64_t sub_23ABB12E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (v4 + v2 >= ((v5 - 1574) | 0x600u) + 2147482093)
  {
    v6 = -1948057642 - v3;
  }

  else
  {
    v6 = v3;
  }

  *(a2 + 4) = v6;
  *(result + 20) = 1438290795;
  return result;
}

void sub_23ABB1370(_DWORD *a1)
{
  v1 = *a1 + 1388665877 * ((a1 & 0x46A0C1C4 | ~(a1 | 0x46A0C1C4)) ^ 0x34F25CD7);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_23ABB13F4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * (((((((v3 + 1150078016) & 0xBB73365D) - 817) ^ 0xBA0E830E) + v4 == 0) * (((v3 + 1150078016) & 0xBB73365D ^ 0x5E2) - 900)) ^ (v3 + 1150078016) & 0xBB73365D)))();
}

void sub_23ABB144C(char a1, uint64_t a2)
{
  v7 = (v2 - 1424);
  v8 = (a2 + v6);
  *v8 = v3;
  v8[1] = v4;
  *(a2 + (v7 ^ 0x24) + v6) = v5;
  v8[3] = a1;
  JUMPOUT(0x23ABB1474);
}

void sub_23ABB1580()
{
  *v1 = (v0 + 1310) ^ 0x8000051E | (((STACK[0x240] - v0) | (v0 - STACK[0x240])) >> 31);
  (*(v2 + 8 * (v0 + 2142)))(STACK[0x268]);
  JUMPOUT(0x23ABB15DCLL);
}

uint64_t sub_23ABB1694(uint64_t a1, int a2)
{
  v5 = a2 ^ 0x24D;
  v6 = ((a2 ^ 0x24D) - 1464) | 0x148;
  if ((v3 - 1424542756) < 0xB696F95B != (v4 ^ 0x625B21DEu) > (((a2 ^ 0x24D) + 1306725822) & 0xB21CEDDE) + 1231619406)
  {
    v7 = (v3 - 1424542756) < 0xB696F95B;
  }

  else
  {
    v7 = v3 - 1424542756 > (v4 ^ 0x625B21DEu) - 1231619749;
  }

  return (*(v2 + 8 * ((!v7 * (v6 - 225)) ^ v5)))();
}

uint64_t sub_23ABB1730()
{
  v4 = STACK[0x2B4];
  v5 = STACK[0x2A4];
  v6 = STACK[0x298];
  v7 = (LODWORD(STACK[0x2A4]) ^ 0x4F) - STACK[0x298];
  *(v3 - 168) = LODWORD(STACK[0x2A4]) - STACK[0x298] - 21;
  *(v3 - 164) = v7;
  *(v3 - 204) = v6 | 1;
  *(v3 - 200) = v4 - v6 - 542397836;
  *(v3 - 184) = v5 ^ v6;
  *(v3 - 176) = ((((((v4 - 687) ^ v0) & v0) >> (__clz((v4 - 687) ^ v0 | 1) ^ 0x1F)) & 1) + 3) ^ v6;
  *(v3 - 192) = (v2 + 1) - v6;
  v8 = (*(v1 + 8 * SLODWORD(STACK[0x294])))(v3 - 208);
  return (*(v1 + 8 * *(v3 - 208)))(v8);
}

uint64_t sub_23ABB1E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  v42 = STACK[0x4A8];
  STACK[0x448] = *(v41 + 8 * (LODWORD(STACK[0x2B4]) - 1305));
  STACK[0x3B0] = v42;
  STACK[0x4D0] = a17;
  v43 = *(v42 + 68);
  *(v42 + (v43 & 0x3F)) = 9;
  return (*(v41 + 8 * ((1305 * ((v43 & 0x3Fu) > ((25 * (a41 & 0x3DBD2E1E ^ 0x3D)) ^ 0x5F4u))) ^ a41 & 0x3DBD2E1E)))(a1, a2, a3, a4, 13, a6, a7, 1650165240);
}

uint64_t sub_23ABB1E34@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = ((a1 - 795151673) & 0x2F650FEE ^ 0xFFFFFFFFFFFFFA91) + v5;
  *(v7 + v8) = *(v4 + (v8 & 0xF)) ^ *(a2 + v8) ^ *(v2 + (v8 & 0xF)) ^ *(v3 + (v8 & 0xF)) ^ (117 * (v8 & 0xF));
  return (*(v6 + 8 * ((179 * (v8 == 0)) ^ (a1 + 346))))();
}

uint64_t sub_23ABB1F08@<X0>(unsigned int a1@<W1>, char a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, int a5@<W6>, unint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v16 = (a3 + 4 * v13);
  v17 = (*v16 ^ v8) + (v10 ^ HIDWORD(a6)) + a1 * (*(v15 + 4 * v13) ^ v8);
  *(v16 - 1) = (v17 + v9 - ((v17 << ((v11 & a2) - 48)) & v7)) ^ a4;
  return (*(v12 + 8 * (((v13 + 1 == a7) * a5) ^ v14)))();
}

uint64_t sub_23ABB1FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, _DWORD *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v67 = (v64 + 2125914640);
  *a31 = v62 + 1;
  v68 = v67 ^ 0x5DB;
  v69 = (((v67 + ((~(v67 | 0x13FE) + v62) ^ (~(v67 | 0x13FE) + v62)) - 2) & ((v67 | 0x13FE) - v62)) >> 63) ^ v61 ^ ((v67 + v61 - (v64 + 2125914640)) >> 11);
  LODWORD(v67) = v66 & (((v69 << ((v64 + 16) ^ 6)) & 0x9D2C5680 ^ v69) << 15) ^ (v69 << ((v64 + 16) ^ 6)) & 0x9D2C5680 ^ v69 ^ ((v66 & (((v69 << ((v64 + 16) ^ 6)) & 0x9D2C5680 ^ v69) << 15) ^ (v69 << ((v64 + 16) ^ 6)) & 0x9D2C5680 ^ v69) >> 18);
  v70 = &a61 + (a29 - 1);
  v71 = ((*(*v65 + (*a36 & 0xFFFFFFFFD2ED3D44)) ^ v70) & 0x7FFFFFFF) * (v68 - 404662355);
  v72 = -404660857 * (v71 ^ HIWORD(v71));
  v73 = *(*(&off_284DD4450 + (v68 ^ 0x5C7)) + (v72 >> 24) + 3);
  v74 = *(*(&off_284DD4450 + v68 - 1315) + (v72 >> 24));
  v75 = (v67 - ((v67 << (v68 + 39)) & 0x10) - 120) ^ *(*(&off_284DD4450 + (v68 ^ 0x5F6)) + (v72 >> 24)) ^ v73 ^ v74 ^ v72 ^ (97 * (v72 >> 24));
  LODWORD(v72) = ((v67 - ((v67 << (v68 + 39)) & 0x10) - 120) ^ *(*(&off_284DD4450 + (v68 ^ 0x5F6)) + (v72 >> 24)) ^ v73 ^ v74 ^ v72 ^ (97 * BYTE3(v72)));
  *v70 = v75 ^ 0x88;
  return (*(v63 + 8 * ((7 * (a29 == (v72 != 136))) ^ v68)))();
}

uint64_t sub_23ABB238C(uint64_t a1, int a2, int a3)
{
  v9 = *(v7 + v4 * v5 + 36);
  v11 = v9 != v8 && (v9 + a2) < 0x80000003;
  return (*(v6 + 8 * ((v11 * ((v3 + 1341960015) & 0xFBBF7FEE ^ (a3 + 1245) ^ ((v3 - 426) | 0x142))) ^ v3)))();
}

uint64_t sub_23ABB23EC@<X0>(int a1@<W1>, int a2@<W3>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v27 = (a18 + 24 * v22);
  *v27 = v26;
  v27[1] = a2;
  *&v23[6 * v22 + 4] = v25;
  v27[4] = a20;
  *v23 = v21 + 1;
  return (*(v24 + 8 * ((422 * (((2 * ((a3 + 296998734) & 0xEE4C29D2 ^ 0x107)) ^ (a1 + 86)) + v20 < 0x80000003)) ^ a3)))();
}

uint64_t sub_23ABB24BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 112) = &a13;
  *(v17 - 128) = v16;
  *(v17 - 104) = v14 - ((v17 - 128) ^ 0x970DCC13) * v15 + 80;
  v18 = (*(v13 + 8 * (v14 ^ 0xAAD)))(v17 - 128);
  return (*(v13 + 8 * ((497 * (((v14 - 632) | 0x80u) - 2087452168 + *(v17 - 120) > 0x9B8A3626)) ^ v14)))(v18);
}

uint64_t sub_23ABB2594(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = (a11 + (v13 + v11));
  v18 = *v17;
  v19 = v17[1];
  v20 = (a8 + v13);
  *v20 = vaddq_s8(vsubq_s8(v18, vandq_s8(vaddq_s8(v18, v18), a5)), a6);
  v20[1] = vaddq_s8(vsubq_s8(v19, vandq_s8(vaddq_s8(v19, v19), a5)), a6);
  return (*(v16 + 8 * (((v13 + 32 == ((v12 - 189) ^ v14)) * v15) ^ v12)))();
}

void sub_23ABB263C(uint64_t a1)
{
  v1 = *(a1 + 20) - 210068311 * (a1 ^ 0xF28BAFE8);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_23ABB2DA0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16)
{
  v21 = (v18 + 4 * (v16 + v20));
  *v21 = __ROR4__(a1 ^ 0x750 ^ a15 ^ *(v21 - 3) ^ *(v21 - 8) ^ *(v21 - 14) ^ *(v21 - 16), 31) ^ 0x5BF5F4B2;
  return (*(v19 + 8 * ((1872 * (v16 + 1 == v17 + 64)) ^ a1)))(a16);
}

void sub_23ABB2E20(int a1@<W8>)
{
  v2 = (((a1 ^ 0x92C92395) + 1832311915) ^ ((a1 ^ 0x62943901) - 1653881089) ^ ((a1 ^ 0x13758FDD) - 326471645)) - 802056556 + (((LODWORD(STACK[0x2E4]) ^ 0x74DEB28E) - 1960751758) ^ ((LODWORD(STACK[0x2E4]) ^ 0xBF9771DF) + 1080593953) ^ (((v1 + 1874784332) & 0xDBFD38FD ^ 0x9C229900) + (LODWORD(STACK[0x2E4]) ^ 0x28615618)));
  v3 = (v2 ^ 0xE45F13FD) & (2 * (v2 & 0xF61F93FE)) ^ v2 & 0xF61F93FE;
  v4 = ((2 * (v2 ^ 0x68401159)) ^ 0x3CBF054E) & (v2 ^ 0x68401159) ^ (2 * (v2 ^ 0x68401159)) & 0x9E5F82A6;
  v5 = v4 ^ 0x824082A1;
  v6 = (v4 ^ 0x181E0000) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x797E0A9C) & v5 ^ (4 * v5) & 0x9E5F82A4;
  v8 = (v7 ^ 0x185E0280) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x86018023)) ^ 0xE5F82A70) & (v7 ^ 0x86018023) ^ (16 * (v7 ^ 0x86018023)) & 0x9E5F82A0;
  v10 = v8 ^ 0x9E5F82A7 ^ (v9 ^ 0x84580200) & (v8 << 8);
  LODWORD(STACK[0x2E4]) = v2 ^ (2 * ((v10 << 16) & 0x1E5F0000 ^ v10 ^ ((v10 << 16) ^ 0x2A70000) & (((v9 ^ 0x1A078087) << 8) & 0x1E5F0000 ^ 0x5D0000 ^ (((v9 ^ 0x1A078087) << 8) ^ 0x5F820000) & (v9 ^ 0x1A078087)))) ^ 0x2D8603F9;
  JUMPOUT(0x23ABB3058);
}

void sub_23ABB3784(uint64_t a1)
{
  v1 = 50899313 * ((-2 - ((a1 | 0x47364CC9) + (~a1 | 0xB8C9B336))) ^ 0x70A87760);
  if (*(a1 + 48) | *(a1 + 24))
  {
    v2 = *(a1 + 8) + v1 == 1863461696;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_23ABB395C()
{
  v4 = v2 < 0xCD1CBD14;
  if (v4 == v1 + 1 > (v0 + 438) - 3441213648u)
  {
    v4 = (((v0 - 5) | 5u) ^ 0xCD1CBF10uLL) + v1 < v2;
  }

  return (*(v3 + 8 * ((54 * v4) ^ (v0 + 855))))();
}

void sub_23ABB3A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x450] = a68;
  LODWORD(STACK[0x43C]) = v68;
  JUMPOUT(0x23ABB3AC0);
}

uint64_t sub_23ABB3B6C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned int a36, uint64_t a37, int a38, uint64_t a39, uint64_t a40)
{
  v45 = a2 + 1960;
  v46 = __ROR8__((((v44 >> (a2 + 15)) ^ 0xF594A18A19133B5FLL) & ((v44 << 27) ^ 0xEBF245FC7FFFFFFLL) | ((a2 + 337) ^ 0xA6B5E75E0000000) & (v44 << 27)) ^ 0xCC494E46276EC98ALL, 27);
  v47 = v46 ^ v40;
  v48 = v46 ^ v43 ^ 0xB5C30BE13D590DEFLL;
  v49 = v41 ^ a37 ^ v42;
  v50 = (v48 & 0x5545C9A5CEA439C9 ^ (v47 ^ 0xC83A5B82E871D127) & (v46 ^ v43 ^ 0xBDA99553029141BELL) ^ 0xFFBF775FF17FF7BELL) - (v47 ^ 0x95150C95191DA4BFLL ^ v48);
  v51 = (v47 ^ 0x4CCA51EDD6AA61F3) & (v41 ^ a37 ^ 0x1BA063563A1E5002);
  v52 = v49 & 0xDF385E5AD1311AE9 ^ (v49 ^ 0x793A02B4C48C9DE6) & (v41 ^ a37 ^ 0x3B67C2F314D0B514) ^ 0x6EE33BBDA25DD317 ^ v47;
  v53 = v46 & 0xDE8EF1FA7784B455 ^ v49 ^ (v46 ^ 0xE83B16DF85C2BE7FLL) & (v43 ^ 0x74E38D890F28B46BLL);
  v54 = v52 ^ v41 ^ a37;
  v55 = v48 ^ (v41 ^ a37) & 0xD1B5C3CAF07F891DLL ^ v51;
  v56 = v49 & 0x74D20ADCA9B3D995 ^ 0x4C0084829334011 ^ (v49 ^ 0x86C5FD4B3B736219) & (v43 ^ 0x214089502EE02654);
  v57 = v55 ^ v52;
  v58 = v55 ^ v52 ^ 0x2F343AE34CB9CEFCLL;
  v59 = v54 & 1;
  if ((v54 & 1u & v56) + 0x288DE32F778DE2BELL - 2 * (v54 & 1u & v56) != 0x288DE32F778DE2BELL)
  {
    v59 = -v59;
  }

  v60 = (v59 + v56) ^ v54 & 0xFFFFFFFFFFFFFFFELL;
  v61 = v53 ^ v43 ^ v50;
  v62 = (v60 ^ 0x21A88B08383CB9E3 ^ (8 * (v60 ^ 0x21A88B08383CB9E3)) ^ 0x4B446530B3848D3ALL) & ((v60 >> 61) ^ 0xFFFFFFFFFFFFFFF9) ^ (((v60 ^ 0x21A88B08383CB9E3) << 25) & 0x8415E6D884000000 | (v60 >> 61) ^ (v60 >> 39)) ^ ((v60 ^ 0x21A88B08383CB9E3 ^ (8 * (v60 ^ 0x21A88B08383CB9E3))) & 0x68AF4C4BD1A35362 ^ 0x336D5D6DEB6FFCA4 ^ (v60 ^ 0x21A88B08383CB9E3 ^ (8 * (v60 ^ 0x21A88B08383CB9E3)) ^ 0x4887444A91A21022) & ((v60 >> 61) ^ 0x68AF4C4BD1A35364)) & (((v60 ^ 0x21A88B08383CB9E3) << 25) ^ 0xD58DE61C9FFFFFFFLL);
  v63 = v62 ^ 0x7E29B8297773DE06;
  v64 = v53 ^ 0xF02A6E6B7D3AFAFLL ^ (v53 >> 1) ^ (((v53 ^ 0xF02A6E6B7D3AFAFLL) << 63) | 0x7FFFFFFFFFFFFFFFLL) & ((v53 >> 6) ^ 0xD9C74C0638E92139) ^ ((v62 ^ 0x7E29B8297773DE06) + ((v53 << 58) ^ 0xC000000000000000) - 2 * ((v62 ^ 0x7E29B8297773DE06) & ((v53 << 58) ^ 0xC000000000000000)));
  v65 = v55 ^ 0x4311B4BF6CF39A98 ^ (v55 >> 7);
  v66 = (v61 >> 17) ^ (v61 >> 10) ^ v61 ^ 0x5872BC11A804995CLL ^ ((v61 ^ 0x5872BC11A804995CLL) << 47) ^ ((v61 ^ 0x5872BC11A804995CLL) << 54);
  *(&v67 + 1) = v55 ^ 0x4311B4BF6CF39A98;
  *&v67 = v55;
  v68 = ((v55 ^ 0x4311B4BF6CF39A98) << 57) ^ ((v55 ^ 0x4311B4BF6CF39A98) << 23) ^ __ROR8__((v67 >> 44) & 0xE0000000000FFFFFLL ^ (((v65 >> 2) << 63) | 0x184484408080B010) ^ ((v65 >> 3) ^ 0x783487B6B9C5ADCALL) & ((v65 << 61) ^ 0x3FFFFFFFFFFFFFFFLL) ^ 0x53114E369253F04FLL, 61);
  *(&v67 + 1) = v58;
  *&v67 = v57;
  v69 = v58 ^ __ROR8__(v58, 19) ^ (v67 >> 28) ^ v68;
  v70 = v68 ^ v66 ^ 0x9F29268708475ED1;
  v71 = v70 ^ 0xE5E37EC0F94C0217;
  v72 = (v70 ^ 0x453628D2A37A8F28) & (v69 ^ 0x8D462894286C6198);
  v73 = ~(2 * (v69 ^ 0x8D462894286C6198)) + (v69 ^ 0x8D462894286C6198);
  v74 = v62 & 0xA1796C8763C80C82 ^ v69 ^ 0x8D462894286C6198 ^ (v64 ^ 0x453343A1FE7062FFLL) & (v62 ^ 0x81D647D6888C21F9);
  v75 = v69 & 0x5F2AA9EDA5C972C0;
  v76 = (v70 ^ 0xE5E37EC0F94C0217) & (v66 ^ 0xAAD0FB2D4B611C5CLL) ^ v70 & 0x72492ED73D208F13 ^ v64;
  v77 = v63 & v73 & 0x100000000;
  v78 = ((v74 & 0xE0096EE0D8B2C64DLL ^ 0xA54372FAE6708F80) & (v74 & 0x1FF6911F274D39B2 ^ 0xEEBF7EF8FFFEDF4DLL) | v74 & 0x1AB48105010D3032) ^ 0x9564CF28191B47E8;
  if ((v77 & v70) != 0)
  {
    v79 = -v77;
  }

  else
  {
    v79 = v63 & v73 & 0x100000000;
  }

  v80 = (v79 + v71) ^ v63 & v73 & 0xFFFFFFFEFFFFFFFFLL;
  v81 = v78 ^ v80;
  v82 = v75 ^ v66 ^ 0x9F29268708475ED1 ^ v72 ^ v76;
  *(&v85 + 1) = v64 & 0x151090F1C3BEFB04 ^ v63 ^ (v64 ^ 0x1BB5D0D962479182) & (v66 ^ 0x3276BAF44A0097B4) ^ v78 ^ 0xE101D711725D77AELL;
  *&v85 = v64 & 0x151090F1C3BEFB04 ^ v63 ^ (v64 ^ 0x1BB5D0D962479182) & (v66 ^ 0x3276BAF44A0097B4) ^ v78;
  v84 = v85 >> 39;
  *&v85 = __ROR8__(*(&v85 + 1), 61);
  v86 = (v84 ^ v85 ^ 0x3B5A25016680C1D1) - ((2 * (v84 ^ v85 ^ 0x3B5A25016680C1D1)) & 0x2EC2FF8051DB0020);
  *&v85 = __ROR8__(v82 ^ 0xDFCBB67F14625948, 10);
  v87 = (v86 + 0x17617FC028ED8010) ^ *(&v85 + 1);
  v88 = ((v85 ^ ((v82 ^ 0xDFCBB67F14625948) << 47) ^ 0x7C3808D813308EDLL) - ((2 * (v85 ^ ((v82 ^ 0xDFCBB67F14625948) << 47) ^ 0x7C3808D813308EDLL)) & 0xA35E002E00633016) + 0x51AF00170031980BLL) ^ (v82 >> 17) ^ 0x51AF19F3C00C742BLL;
  v89 = (v88 - ((2 * v88) & 0xD8046C0998476EE2) - 0x13FDC9FB33DC488FLL) ^ v82 ^ 0xDFCBB67F14625948;
  v91 = v78 ^ v80 ^ 0x1C4BF6A2FEC6AD8BLL;
  v93 = -32768;
  if ((v81 & 0x8000) != 0)
  {
    v93 = 0x8000;
  }

  v92 = (((v80 ^ 0x6CDCC1813D9AD886) << 57) ^ 0xE6A1F409AF390C0ELL) & ((v80 >> 41) ^ 0xFFA1FDEBFFB601D0) | (v80 >> 41) & 0x46F3F1;
  v90 = (v80 ^ 0x9A383CF881807545) << ((v76 >> 1) & 4) << ((v76 >> 1) & 0x13 ^ 2) << ((v76 >> 1) & 0x17 ^ 0x15);
  v94 = ((v90 ^ (v80 >> 7) ^ v92 ^ 0x619584705E7E1CF4) - ((2 * (v90 ^ (v80 >> 7) ^ v92 ^ 0x619584705E7E1CF4)) & 0xEDC9FAF378355B86) - 0x91B028643E5523DLL) ^ v80 ^ 0x6CDCC1813D9AD886;
  v95 = __ROR8__(v76, 6);
  v83 = (v76 & 0x136535004C040800 ^ 0x74BBCB3EF0CAD7D9) & (v76 & 0x649ACA3EB0CAD7D9 ^ 0x7365353EDC0EDA08) | v76 & 0x880000C103312026 ^ (v76 << 63);
  v96 = ((v83 ^ v95 ^ 0xC97F5B40477F9FEDLL ^ v87) - ((2 * (v83 ^ v95 ^ 0xC97F5B40477F9FEDLL ^ v87)) & 0xB6C218CBF77628FALL) - 0x249EF39A0444EB83) ^ (v76 >> 1);
  v97 = v91 ^ (v81 >> 19) ^ v94 ^ ((v93 + v91) >> 28) ^ (((v93 + v91) ^ 0x4CD92F9EAB44CDFELL) << 36) ^ (((v93 + v91) ^ 0x4CD92F9EAB44CDFELL) << 45);
  v98 = v97 ^ 0x3DFB1C697ED45FD8;
  v99 = (v89 ^ v94) - ((2 * (v89 ^ v94)) & 0x4BCF7563A6B4D67ELL);
  v100 = v96 ^ 0xAF7B228703EDBD57 ^ v94 & ~v89;
  v101 = (v96 ^ 0xAF7B228703EDBD57) & ~v87 ^ v97 ^ 0x3DFB1C697ED45FD8;
  v102 = (v97 ^ 0xC204E396812BA027) & v87 ^ v89 ^ v94;
  v103 = v87 - 2 * ((v97 ^ 0x3DFB1C697ED45FD8) & v87) + v101;
  v104 = (v65 >> 3) & 1;
  v105 = v102 ^ 0x6E04C15915AB860ALL ^ v101;
  v106 = v105 >> 19;
  *(&v107 + 1) = (v105 >> 19) & v105 & 0x1A36E0206AEDLL ^ (v105 >> 28) ^ (((v105 >> 19) | v105) & 0xD8807A36E0206AEDLL | (v105 >> 19) & 0x5C91FDF9512 ^ v105 & 0x277F85C91FDF9512);
  *&v107 = (v105 << 36) ^ (v105 << 45) ^ *(&v107 + 1);
  v108 = v103 ^ (v96 ^ 0x5084DD78FC1242A8) & v89;
  v109 = v98 & ((v99 - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0) ^ v89 ^ v100 ^ 0x7370AC685030CB36;
  v110 = (v108 >> 39) ^ (v108 >> 61) ^ (8 * (v108 ^ 0x3278F838FE43D2BCLL)) ^ (33554433 * (v108 ^ 0x3278F838FE43D2BCLL) - (((v108 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v108 ^ 0x3278F838FE43D2BCLL))));
  v111 = v110 ^ 0x64F1F1;
  v112 = v102 ^ 0x26974B18501E2B14 ^ ((v102 ^ 0x26974B18501E2B14) >> 41) ^ ((v102 ^ 0x26974B18501E2B14) >> 7) ^ ((v102 ^ 0x26974B18501E2B14) << 23) ^ ((v102 ^ 0x26974B18501E2B14) << 57);
  v113 = v100 ^ 0x7955EAEC4D48B80CLL ^ (v100 << 63) ^ __ROR8__(v100 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v100 ^ 0x7955EAEC4D48B80CLL) >> v104 >> (v104 ^ 1u));
  v114 = v110 ^ 0x64F1F1 ^ v113;
  v115 = (v109 >> 17) ^ __ROR8__(v109, 10) ^ __ROR8__(__ROR8__(v109, 14) & 0xFFFC000000000007 ^ __ROR8__(v109, 61), 3);
  *&v107 = __ROR8__(__ROR8__(v112, 7) ^ __ROR8__(__ROR8__(v107 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v116 = v112 & ~v115 ^ v114;
  v117 = v107 ^ 0xBBDB0FB7A00B9120 ^ (v110 ^ 0xFFFFFFFFFF9B0E0ELL) & v113;
  v118 = v110 ^ (((v114 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v114 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v115 ^ 0x425764BB58132BD4 ^ v117;
  v119 = (v107 ^ 0x4424F0485FF46EDFLL) & v111 ^ v115 ^ v112;
  v120 = v117 ^ 0x97F6A7E5F6E8F58ALL ^ v119;
  v121 = (v119 ^ -v119 ^ (0x70C7A8D3F3643DFDLL - (v119 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v122 = v115 ^ 0x44C9D571A5C4A51CLL ^ v116 ^ (v107 ^ 0xBBDB0FB7A00B9120) & ~(v115 ^ v112);
  v123 = v116 ^ 0xD3DA1E3360BF843ALL ^ ((v116 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v116 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v125 = __ROR8__(__ROR8__(v118, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v118 ^ (8 * v118) ^ ((v118 >> 61) | (v118 << 25)), 23) ^ 0x735302FC48340548, 41);
  v126 = (v121 >> 7) ^ (v121 >> 41) ^ (v121 << 23) ^ (v121 << 57);
  v127 = v126 ^ v121;
  v128 = v120 ^ (v120 >> 28) ^ (v120 >> 19) ^ (v120 << 36) ^ (v120 << 45) ^ v126 ^ v121;
  v129 = v123 & 0xFFFFFFF7FFFFFFFFLL ^ (v116 << 63) ^ (v123 & 0x800000000 | ((v116 ^ 0xD3DA1E3360BF843ALL) << (v106 & 0x12) << (v106 & 0x12 ^ 0x3A))) ^ v125;
  if (v126 == v121)
  {
    v130 = 0;
  }

  else
  {
    v130 = v122 << 47;
  }

  v131 = v125 ^ 0x7E241A02A439A981;
  v124 = (v122 ^ (v122 >> 10) | (v122 << 54)) ^ (v122 << 54) & v122;
  v132 = (v130 ^ v124 | (v122 << 47)) ^ (v124 & (v122 << 47) & 0xFFFF800000000000 | (v122 >> 17));
  v133 = v129 ^ 0x7E241A02A439A981;
  v134 = v132 & (v129 ^ 0x81DBE5FD5BC6567ELL);
  v135 = v132 ^ v127 ^ v131 & ~v128;
  v136 = v128 ^ (~(2 * v131) + v131) & (v129 ^ 0x7E241A02A439A981);
  v137 = v135 ^ v136;
  v138 = v135 ^ v136 ^ 0x93C23431B76D41FLL;
  *(&v139 + 1) = v138;
  *&v139 = v135 ^ v136;
  v140 = v131 ^ 0x6005BE354A5BB0B2 ^ v136;
  v141 = v127 & ~v132 ^ v133;
  v142 = v128 & ~(v132 ^ v127) ^ v132 ^ v141;
  v143 = (v139 >> 62) ^ (4 * (v138 >> 28)) ^ 0x406FF36C296024B3;
  v144 = ((v140 ^ v134) << (v127 & 3) << (v127 & 3 ^ 3)) ^ v140 ^ v134 ^ (((v140 ^ v134) >> 39) ^ ((v140 ^ v134) >> 61) | ((v140 ^ v134) << 25));
  *(&v139 + 1) = v138;
  *&v139 = v137;
  v145 = ((v139 >> 19) ^ __ROR8__(v143, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v146 = v141 ^ 0x6DC4FB0BD4FFFF44 ^ ((v141 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ (((v141 ^ 0x6DC4FB0BD4FFFF44) >> 1) ^ ((v141 ^ 0x6DC4FB0BD4FFFF44) >> 6) | (v141 << 63));
  v147 = v135 ^ 0x2DB5B6AF87F64351 ^ ((v135 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v135 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v135 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v135 ^ 0x2DB5B6AF87F64351) >> 41);
  v148 = __ROR8__(v142 ^ 0xF374A001D380BDC2, 17) ^ ((v142 ^ 0xF374A001D380BDC2) >> 10) ^ (((v142 ^ 0xF374A001D380BDC2) << 54) | (v142 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v142 ^ 0xF374A001D380BDC2) << 54) & (v142 ^ 0xF374A001D380BDC2) | v142 & 0x20);
  v149 = v147 ^ (v138 << 36) ^ (((2 * v145) & 0xFFFFFFFF18D20D4ALL) + (v145 ^ 0xFFFFFFFF8C6906A5));
  *(&v139 + 1) = (v144 & ~v149 ^ v148 ^ v147 ^ -(v144 & ~v149 ^ v148 ^ v147) ^ ((v149 ^ v146 & ~v144) - (v144 & ~v149 ^ v148 ^ v147 ^ v149 ^ v146 & ~v144))) + (v149 ^ v146 & ~v144);
  *&v139 = *(&v139 + 1) ^ 0x69309AC4CAE2F93;
  return (*(a40 + 8 * (v45 ^ (103 * (a36 <= 2 * (a38 & 1) + (a38 ^ 1u))))))(v147 & ~v148 ^ v144 ^ v146 ^ v148 ^ v149 & (~(2 * (v148 ^ v147)) + (v148 ^ v147)) ^ 0x4F15BBF2C11DE053, *(&v139 + 1) ^ 0x69309AC4CAE2F93 ^ __ROR8__(*(&v139 + 1) ^ 0x69309AC4CAE2F93, 19) ^ (v139 >> 28), 103, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_23ABB4C20(int a1)
{
  v5 = *(v3 + v2 * a1 + 36);
  v6 = v1 + 1340378239 + v5;
  v8 = v6 > -561958981 && v6 < SLODWORD(STACK[0x278]) && v5 != 245145506;
  return (*(v4 + 8 * ((56 * (((v1 + 127) ^ v8) & 1)) ^ (v1 - 507))))();
}

uint64_t sub_23ABB4CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t a27, unint64_t a28)
{
  v32 = *(a18 + 24);
  a27 = 0x8989898989898989;
  a28 = 0x8989898989898989;
  v33 = 1037613739 * ((((v31 - 160) | 0x3E4DC5C7) + (~(v31 - 160) | 0xC1B23A38)) ^ 0xEF4FE8B9);
  *(v31 - 144) = v32;
  *(v31 - 136) = v31 - 180;
  *(v31 - 120) = &STACK[0x268];
  *(v31 - 160) = v33 + 1591242030;
  *(v31 - 128) = (v28 + 1519) ^ v33;
  *(v31 - 152) = &a27;
  v34 = (*(v29 + 8 * (v28 ^ 0x86A)))(v31 - 160);
  return (*(v29 + 8 * (((*(v31 - 124) == v30 + ((v28 - 59) ^ 0x4DB) - 1279) * (((v28 - 59) | 2) ^ 0x486)) | v28)))(v34);
}

uint64_t sub_23ABB4ECC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *(v7 - 228 + v4) = *(v6 + a3) - ((2 * *(v6 + a3)) & 0x12) - 119;
  v9 = (v3 ^ (v8 + 407) ^ (a1 + 33)) + a3 == a2;
  return (*(v5 + 8 * ((v9 | (8 * v9)) ^ v3)))();
}

uint64_t sub_23ABB5088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, uint64_t a19, char a20)
{
  a18 = v20 + 974933176;
  *(v23 - 112) = (v22 - 53) ^ (210068311 * ((v23 - 128) ^ 0xF28BAFE8));
  *(v23 - 128) = a16;
  *(v23 - 120) = &a20;
  (*(v21 + 8 * (v22 ^ 0x409)))(v23 - 128);
  *(v23 - 104) = v22 - 1564307779 * ((v23 - 128) ^ 0x970DCC13) - 178;
  *(v23 - 128) = &a17;
  *(v23 - 112) = a16;
  v24 = (*(v21 + 8 * (v22 ^ 0xBAF)))(v23 - 128);
  return (*(v21 + 8 * ((2035 * (*(v23 - 120) - 2087451935 >= (((23 * (v22 ^ 0x3F1) + 40) | 0x231) ^ 0xC641C989))) ^ v22)))(v24);
}

uint64_t sub_23ABB51D4(uint64_t result)
{
  v1 = 1082434553 * (((result | 0xD461C38FA6120B3) - result + (result & 0xF2B9E3C7059EDF4CLL)) ^ 0xBD1AD24F6126D639);
  v2 = (result + 24);
  v3 = *(result + 32);
  v4 = v3 + v1;
  v5 = *(result + 16);
  v6 = v5 != v3;
  v7 = v5 + v1 >= v4;
  if ((*(result + 28) - v1))
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (!v8)
  {
    v2 = result;
  }

  *(result + 40) = *(result + 4) ^ v1 ^ (*v2 + v1);
  return result;
}

uint64_t sub_23ABB52D4(_DWORD *a1)
{
  v1 = 1388665877 * ((((2 * a1) | 0xA7F38A7E) - a1 - 1408877887) ^ 0xDE54A7D3);
  v2 = a1[2] ^ v1;
  v3 = a1[3] ^ v1;
  v4 = v3 + *(*a1 + 68) - 647392838;
  *(*a1 + 68) = v4;
  v3 -= 996685792;
  v5 = v3 < 0xEB2E3666;
  v6 = v4 - 349292954 < v3;
  if (v5 != v4 > 0x14D1C999)
  {
    v6 = v5;
  }

  return (*(*(&off_284DD4450 + v2 - 1122) + 8 * (v6 | (4 * v6) | v2) - 4))();
}

uint64_t sub_23ABB5768(uint64_t a1, uint64_t a2, int a3)
{
  v16 = (v13 + 4 * a2);
  v17 = HIDWORD(v11) + v5 * (*(v7 + 4 * a2) ^ v4) + (((*v16 ^ v4) + HIDWORD(v6) + v15 * (*(v12 + 4 * a2) ^ v4)) & ((v14 - 32) ^ v8));
  *(v16 - 1) = v17 + v4 - (a3 & (2 * v17));
  return (*(v9 + 8 * (((a2 + 1 == v10) * v3) ^ v14)))();
}

uint64_t sub_23ABB58DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  LODWORD(STACK[0x380]) = 2133104676;
  LODWORD(STACK[0x408]) = 128;
  v52 = 50899313 * ((v49 & 0xFD7D1705 | ~(v49 | 0xFD7D1705)) ^ 0xCAE32CAC);
  *(v51 - 160) = 0;
  *(v51 - 152) = &STACK[0x408];
  *(v51 - 144) = a46;
  *(v51 - 208) = 0;
  *(v51 - 184) = a48;
  *(v51 - 176) = a48 + 928;
  *(v51 - 168) = a48 + 656;
  *(v51 - 200) = 1863461824 - v52;
  *(v51 - 192) = v48 - v52 + 833;
  v53 = (*(v50 + 8 * (v48 + 1767)))(v51 - 208);
  return (*(v50 + 8 * (((*(v51 - 196) == ((v48 + 1146193242) & 0xBBAE7FF5) - 1650141391) * (((v48 + 1146193242) ^ 0x445183E4) - 103)) ^ v48)))(v53);
}

uint64_t sub_23ABB5A4C()
{
  v4 = 140 * (v0 ^ 0x40A);
  v5 = 1564307779 * ((v3 + 1216268104 - 2 * ((v3 - 144) & 0x487EC7D8)) ^ 0xDF730BCB);
  *(v3 - 136) = v5 ^ 0x7B6E1A3E;
  *(v3 - 132) = v0 - v5 + 938;
  *(v3 - 144) = v10;
  (*(v1 + 8 * (v0 ^ 0xC3B)))(v3 - 144);
  *(v3 - 112) = (v0 - 251) ^ (1037613739 * ((-2 - (((v3 - 144) ^ 0x2718230A | 0xD8038CF5) + ((v3 - 144) ^ 0x48020C24 | 0x27FC730A))) ^ 0x41E7FDAE));
  *(v3 - 104) = v10;
  *(v3 - 144) = v9;
  *(v3 - 136) = v9;
  *(v3 - 128) = v8;
  *(v3 - 120) = v2;
  (*(v1 + 8 * (v0 + 1091)))(v3 - 144);
  *(v3 - 144) = v9;
  *(v3 - 136) = v7;
  *(v3 - 128) = (v4 - 878) ^ (210068311 * ((v3 - 1606578266 - 2 * ((v3 - 144) & 0xA03D9036)) ^ 0x52B63FDE));
  return (*(v1 + 8 * (v4 + 206)))(v3 - 144);
}

uint64_t sub_23ABB6B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = &a15;
  *(v19 - 136) = v17;
  *(v19 - 112) = v18 - ((((2 * (v19 - 136)) | 0xC2FB996C) - (v19 - 136) - 1635634358) ^ 0xF67000A5) * v15 - 360;
  v20 = (*(v16 + 8 * (v18 + 947)))(v19 - 136);
  return (*(v16 + 8 * (((*(v19 - 128) > 0x7C6BFD1Eu) * (v18 - 1173)) | v18)))(v20);
}

void sub_23ABB6CC0(_DWORD *a1)
{
  v1 = *a1 + 1564307779 * ((2 * (a1 & 0x780DCAC5) - a1 + 133313850) ^ 0x90FFF929);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_23ABB6E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 31) = (((v11 ^ 0x78) - 126) ^ &a9) * (&a9 + 17);
  *(v9 + 30) = (&a9 ^ 0xBB) * (&a9 + 18);
  return (*(v10 + 8 * v11))();
}

uint64_t sub_23ABB6F08@<X0>(int a1@<W8>)
{
  if ((a1 - 956803557) <= 0x18 && ((1 << (a1 + 27)) & 0x1250001) != 0)
  {
    return (*(v2 + 8 * ((((*(v1 + 48 * v5 + 40) & 1) == 0) * (((v4 - 832) ^ 0x258CB68C) - 1456)) | (v3 + 629979176))))();
  }

  else
  {
    return (*(v2 + 8 * ((((*(v1 + 48 * v5 + 40) & 8) == 0) * (v3 + v4 - 1175)) ^ (v3 + v4 - 618))))(4294925278);
  }
}

uint64_t sub_23ABB70D4@<X0>(int a1@<W8>)
{
  *(v4 - v1 + v2 + v6) = ((v1 + v3) ^ v5) * (v1 + v3 + 17);
  *(v4 - v1 + 90) = ((v1 + v3) ^ 0xBB) * (v1 + v3 + 18);
  return (*(v8 + 8 * (((v1 == 90) * v7) ^ a1)))(0);
}

uint64_t sub_23ABB71D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, char a39)
{
  v42 = 1388665877 * ((2 * ((v41 - 168) & 0x302D3168) - (v41 - 168) - 808268144) ^ 0x427FAC7C);
  *(v41 - 168) = a3;
  *(v41 - 160) = (v40 + 1120) ^ v42;
  *(v41 - 156) = v42 ^ a12;
  v43 = (*(v39 + 8 * (v40 + 2099)))(v41 - 168);
  v44 = a39 & 0x3F;
  *(&a30 + v44) = 9;
  return (*(v39 + 8 * (((v44 > 0x37) * ((2 * v40) ^ 0x425)) ^ v40)))(v43);
}

uint64_t sub_23ABB72A8()
{
  v3 = LODWORD(STACK[0x2B4]) - 711;
  v4 = (((v0 ^ 0xF1493883) + 246859645) ^ ((v0 ^ 0x69380D2D) - 1765281069) ^ ((v0 ^ 0x5D5EB8F) - 97905551)) + (((LODWORD(STACK[0x4FC]) ^ 0xAECC64D) - 183289421) ^ ((LODWORD(STACK[0x4FC]) ^ 0x11B1FDAF) - 296877487) ^ ((LODWORD(STACK[0x4FC]) ^ 0x86F9E5C3) + (v3 ^ 0x7906186A))) + 994688066;
  *(STACK[0x230] + 52) = ((v4 % 0x2710) ^ 0xD7F9EEF7) + 1777819103 + ((2 * (v4 % 0x2710)) & 0x5DEE);
  v5 = STACK[0x504];
  STACK[0x450] -= 1616;
  LODWORD(STACK[0x320]) = v5;
  return (*(v1 + 8 * ((1969 * (v5 == v2)) ^ v3)))();
}

void sub_23ABB73E0()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = *(&off_284DD4450 + (*(off_284DD44B8 + (*(off_284DD47D0 + (117 * ((qword_27DFC8A88 - dword_27DFC8B00) ^ 0xA1)) - 8) ^ 0xE8u) - 12) ^ (117 * ((qword_27DFC8A88 - dword_27DFC8B00) ^ 0xA1))) + 16);
  v1 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 - *v0) ^ 0xA1)) ^ *(off_284DD44B8 + (*(off_284DD47D0 + (117 * ((qword_27DFC8A88 - *v0) ^ 0xA1)) - 8) ^ 0xC5u) - 12)) - 104);
  v2 = *(v1 - 4) - *v0 - &v10;
  v3 = (1793648501 * v2) ^ 0x985AED203B07ABA1;
  v4 = 1793648501 * (v2 ^ 0x985AED203B07ABA1);
  *v0 = v3;
  *(v1 - 4) = v4;
  LOBYTE(v4) = 117 * ((v4 + *v0) ^ 0xA1);
  v5 = off_284DD4688 - 4;
  v6 = off_284DD48A0 - 12;
  **(&off_284DD4450 + (*(off_284DD48A0 + (*(off_284DD4688 + v4 - 4) ^ 0x63u) - 12) ^ v4) - 38) = -1650139615;
  v7 = *(&off_284DD4450 + ((117 * (dword_27DFC8B00 ^ 0xA1 ^ qword_27DFC8A88)) ^ byte_23AC7BE20[byte_23AC788A0[(117 * (dword_27DFC8B00 ^ 0xA1 ^ qword_27DFC8A88))] ^ 0xCE]) - 174) - 4;
  v8 = (*&v7[8 * ((117 * (*v0 ^ 0xA1 ^ *(v1 - 4))) ^ v6[v5[(117 * (*v0 ^ 0xA1 ^ *(v1 - 4)))] ^ 0x4E]) + 16872])(512, 0x100004077774924);
  v9 = 117 * ((*(v1 - 4) - *v0) ^ 0xA1);
  **(&off_284DD4450 + (*(off_284DD4610 + (*(off_284DD49B8 + v9 - 4) ^ 5u) - 12) ^ v9) - 130) = v8;
  __asm { BRAA            X8, X17 }
}

void sub_23ABB7688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = ((v70 ^ 0x15E) - 952) | 0x426;
  (*(v69 + 8 * ((v70 ^ 0x15E) + 1069)))(*a69, v71);
  *(v72 - 208) = 143681137 * ((2 * ((v72 - 208) & 0x704BE2A0) - (v72 - 208) + 263462236) ^ 0xDB130106) - 875955286 + v73;
  (*(v69 + 8 * (v73 + 946)))(v72 - 208);
  JUMPOUT(0x23ABB7720);
}

uint64_t sub_23ABB776C@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(uint64_t, uint64_t), uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v29 = 7 * (a2 ^ 0x53Du);
  v30 = &a24 + v27;
  *v30 = v24;
  v30[1] = v25;
  *(&a24 + (v29 ^ 0x1E) + v27) = v26;
  v30[3] = v28;
  return sub_23AB9C070(v29, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a1);
}

uint64_t sub_23ABB77A4()
{
  v4 = (&STACK[0x28C] + v2 + 8);
  *(v4 - 1) = 0x8989898989898989;
  *v4 = 0x8989898989898989;
  return (*(v3 + 8 * ((((v0 & 0xFFFFFFFFFFFFFFF0) == 16) * (v1 ^ 0x759)) ^ v1)))();
}

uint64_t sub_23ABB77F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  HIDWORD(a26) = a3;
  LODWORD(a25) = v70;
  switch(v71)
  {
    case 32:
      LODWORD(a24) = 19;
      break;
    case 20:
      LODWORD(a24) = 15;
      break;
    case 16:
      LODWORD(a24) = 18;
      break;
    default:
      LODWORD(a23) = 0;
      LODWORD(a24) = 0;
      LODWORD(a22) = 1;
      goto LABEL_9;
  }

  LODWORD(a22) = 0;
  LODWORD(a23) = 1;
LABEL_9:
  v75 = STACK[0x2B4];
  v76 = LODWORD(STACK[0x2B4]) - 807;
  v77 = LODWORD(STACK[0x2B4]) - 544;
  v78 = 50899313 * (((v74 - 208) & 0x42E704A9 | ~((v74 - 208) | 0x42E704A9)) ^ 0x75793F00);
  *(v74 - 208) = a28;
  *(v74 - 168) = a70;
  *(v74 - 160) = 0;
  *(v74 - 200) = (v73 ^ 0x6F53FB7E) - v78 + ((2 * v73) & 0xDEA7F6FC) + (v76 ^ 0xFFBE2E35);
  *(v74 - 192) = v75 - v78 - 61;
  *(v74 - 184) = STACK[0x200];
  *(v74 - 176) = a57;
  *(v74 - 152) = &STACK[0x3AC];
  *(v74 - 144) = 0;
  v79 = (*(v72 + 8 * (v75 + 873)))(v74 - 208);
  return (*(v72 + 8 * ((*(v74 - 196) != -1650139615) ^ v77)))(v79, a2, HIDWORD(a26), 1431029909, 4080042888, 1136, 818999841, 1650165240, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a2);
}

uint64_t sub_23ABBA6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{
  v39 = ((a36 - 1173652954) ^ 0xEEF7A431) & (2 * ((a36 - 1173652954) & 0xCF0786A4)) ^ (a36 - 1173652954) & 0xCF0786A4;
  v40 = ((*(v38 - 176) + 1342069135) ^ (2 * ((a36 - 1173652954) ^ 0x68F8A839))) & ((a36 - 1173652954) ^ 0x68F8A839) ^ (2 * ((a36 - 1173652954) ^ 0x68F8A839)) & 0xA7FF2E9C;
  v41 = v40 ^ 0xA0012285;
  v42 = (v40 ^ 0x43E0C10) & (4 * v39) ^ v39;
  v43 = ((4 * v41) ^ 0x9FFCBA74) & v41 ^ (4 * v41) & 0xA7FF2E9C;
  v44 = (v43 ^ 0x87FC2A00) & (16 * v42) ^ v42;
  v45 = ((16 * (v43 ^ 0x20030489)) ^ 0x7FF2E9D0) & (v43 ^ 0x20030489) ^ (16 * (v43 ^ 0x20030489)) & 0xA7FF2E90;
  v46 = v44 ^ 0xA7FF2E9D ^ (v45 ^ 0x27F22800) & (v44 << 8);
  *(v38 - 176) = v36 - 451;
  v48 = ((a36 - 1173652954) ^ (2 * ((v46 << 16) & 0x27FF0000 ^ v46 ^ ((v46 << 16) ^ 0x2E9D0000) & (((v45 ^ 0x800D060D) << 8) & 0x27FF0000 ^ 0xD10000 ^ (((v45 ^ 0x800D060D) << 8) ^ 0x7F2E0000) & (v45 ^ 0x800D060D))))) != 0xCDC3DB9E && (((a36 + 38) ^ (2 * v46)) & 0xF) == ((v36 - 1499103623) & 0x595A7DBE) - 408;
  v49 = *(v37 + 8 * (v48 | (8 * v48) | (v36 - 1086)));
  *(v38 - 180) = -42899;
  return v49();
}

uint64_t sub_23ABBA85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = &a15;
  *(v19 - 136) = v16;
  *(v19 - 112) = v18 - ((2 * ((v19 - 136) & 0x10ED51A8) - (v19 - 136) + 1863495248) ^ 0xF81F6243) * v15 + 476;
  v20 = (*(v17 + 8 * (v18 + 1783)))(v19 - 136);
  return (*(v17 + 8 * (((*(v19 - 128) > 0x7C6BFD1Eu) * (463 * (v18 ^ 0x157) - 717)) ^ v18)))(v20);
}

uint64_t sub_23ABBA900@<X0>(int a1@<W8>)
{
  *(*(v3 + 8) + 4 * (a1 - 1)) = v1;
  v5 = a1 <= ((v2 - 1118) | 0x50) - 213;
  return (*(v4 + 8 * ((v5 | (16 * v5)) ^ v2)))();
}

uint64_t sub_23ABBA938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(v13 + 8 * (v15 - 1694));
  v7 = *v10;
  v8 = v17 + 4 + a6;
  *(*v10 + v8) = (HIBYTE(a5) ^ 0x23) - (v12 & (2 * (HIBYTE(a5) ^ 0x23))) - 119;
  *(v7 + v8 + 1) = (v16 ^ BYTE2(a5)) - (v12 & (a5 >> 15)) - 119;
  *(v7 + v8 + 2) = (BYTE1(a5) ^ v14) - 2 * ((BYTE1(a5) ^ v14) & v11 ^ BYTE1(a5) & 2) - 119;
  *(v7 + v8 + 3) = a5 ^ 0xAA;
  return v6();
}

uint64_t sub_23ABBA948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v32 = *v29;
  v33 = *(v29 + 48);
  *(v30 - 176) = (v27 + 22995601) & 0xFEA11BAB;
  *(v30 - 112) = veorq_s8(*v32, xmmword_23AC80F70);
  if (v31)
  {
    v34 = v33 == 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = !v34;
  v36 = *(v28 + 8 * ((30 * v35) ^ v27));
  *(v30 - 180) = -42900;
  return v36(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_23ABBA9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 136) = &a15;
  *(v19 - 120) = a14;
  *(v19 - 112) = v18 - ((((2 * (v19 - 136)) | 0xAB638008) - (v19 - 136) - 1437712388) ^ 0xC2BC0C17) * v15 - 109;
  v20 = (*(v16 + 8 * (v18 + 1198)))(v19 - 136);
  return (*(v16 + 8 * ((1407 * (v17 + *(v19 - 128) - 1 < ((v18 + 2041250721) & 0x8654FEFB) - 851085547)) ^ v18)))(v20);
}

uint64_t sub_23ABBAAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(a12 + 16) = -v20;
  v21 = 1564307779 * ((((v19 - 136) ^ 0x43019602) - 741734015 - 2 * (((v19 - 136) ^ 0x43019602) & 0xD3CA0981)) ^ 0x7C65390);
  *(v19 - 136) = v17;
  *(v19 - 128) = v21 ^ 0x7B6E1A3E;
  *(v19 - 124) = v18 - v21 + 595;
  (*(v16 + 8 * (v18 + 734)))(v19 - 136);
  v22 = 1785193651 * ((((v19 - 136) | 0xBFF7092A) - ((v19 - 136) & 0xBFF7092A)) ^ 0xAFE77ACF);
  *(v19 - 120) = ((v15 << 6) & 0xF9BE7E00) - v22 + ((v15 << (v18 - 89)) ^ 0x7CDF3F08) - 1079905433 + 107 * (v18 ^ 0x555);
  *(v19 - 128) = v17;
  *(v19 - 136) = (v18 - 388) ^ v22;
  (*(v16 + 8 * (v18 + 738)))(v19 - 136);
  *(v19 - 136) = a14;
  *(v19 - 128) = &a15;
  *(v19 - 120) = (v18 - 432) ^ (210068311 * ((v19 - 393364048 - 2 * ((v19 - 136) & 0xE88DBE38)) ^ 0x1A0611D0));
  (*(v16 + 8 * (v18 ^ 0x2B4)))(v19 - 136);
  *(v19 - 120) = a14;
  *(v19 - 136) = v17;
  *(v19 - 112) = v18 - 1564307779 * ((v19 - 136) ^ 0x970DCC13) - 557;
  v23 = (*(v16 + 8 * (v18 ^ 0xD12)))(v19 - 136);
  return (*(v16 + 8 * ((51 * ((*(v19 - 128) - 2087451935) < 0xAD4CAA02)) ^ v18)))(v23);
}

uint64_t sub_23ABBAD94@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v7 = a2 + v3 - v2;
  v8 = *(v7 - 31);
  v9 = v6 + v3 - v2;
  v10.i64[0] = 0x1212121212121212;
  v10.i64[1] = 0x1212121212121212;
  v11.i64[0] = 0x8989898989898989;
  v11.i64[1] = 0x8989898989898989;
  *(v9 - 15) = vaddq_s8(vsubq_s8(*(v7 - 15), vandq_s8(vaddq_s8(*(v7 - 15), *(v7 - 15)), v10)), v11);
  *(v9 - 31) = vaddq_s8(vsubq_s8(v8, vandq_s8(vaddq_s8(v8, v8), v10)), v11);
  return (*(v5 + 8 * (((((v4 + 735) ^ 0x53ELL) + v2 == 320) * a1) ^ v4)))();
}

uint64_t sub_23ABBB050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v17 = 1785193651 * ((((v16 - 128) | 0xCE78F0A8) - ((v16 - 128) & 0xCE78F0A8)) ^ 0xDE68834D);
  *(v16 - 112) = ((v14 + 2126116400) ^ v15) - v17 + ((2 * v15) & 0xFD73EE32) - 1111015441;
  *(v16 - 120) = &a13;
  *(v16 - 128) = (v14 + 753) ^ v17;
  v18 = (*(v13 + 8 * (v14 ^ 0x8A9)))(v16 - 128);
  return sub_23ABBB0F0(v18);
}

uint64_t sub_23ABBB0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v20 - 112) = v16;
  *(v20 - 128) = &a15;
  *(v20 - 104) = v15 - ((2 * ((v20 - 128) & 0x5BD45360) - (v20 - 128) + 606842013) ^ 0xB326608E) * v18 - 899;
  v21 = (*(v17 + 8 * (v15 + 408)))(v20 - 128);
  v22 = *(v20 - 120) > ((((v15 - 2066823113) & 0x7B3133F5) + v19) ^ v15 ^ 0x71Du);
  return (*(v17 + 8 * (((4 * v22) | (8 * v22)) ^ v15)))(v21);
}

uint64_t sub_23ABBB224@<X0>(uint64_t a1@<X8>)
{
  v8 = v4 - 1;
  *(a1 + v8) = *(v3 + v8) - (v5 & (2 * *(v3 + v8))) - 119;
  return (*(v1 + 8 * (((((v8 == 0) ^ v6) & 1) * v7) ^ v2)))(0);
}

uint64_t sub_23ABBB280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, int a18, unsigned int a19, int a20, int a21)
{
  v24 = (v23 - 454) | 0x220;
  v25 = (v24 ^ (a4 - 1305) ^ a19) + a20;
  v26 = a16 < a8;
  if (v26 == v25 > ((v24 - 1700) | 0x60u) - 1695740766)
  {
    LOBYTE(v26) = v25 + a8 < a16;
  }

  return (*(v22 + 8 * ((120 * (((((v23 + 58) | 0x20) + 28) ^ v26) & 1)) ^ ((v23 - 454) | 0x220))))(a1, a21 + (v21 ^ a4), v25, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_23ABBB4B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v9 = *a1;
  v10 = a1[4];
  v11 = a1[2];
  *a4 = v6;
  *v11 = v5;
  *v10 = v8;
  *v9 = v4 + v7;
  return sub_23ABA5278(a1, a2, a3, -1650139615);
}

uint64_t sub_23ABBB4E0@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X4>, char a5@<W7>, unsigned int a6@<W8>)
{
  v12 = v10 < v8;
  v13 = *(a4 + v6);
  v14 = v6 + 1;
  *(a2 + a6) = v13 + ((5 * (v7 ^ a1)) ^ a5 & (2 * v13) ^ 0xF0) - 118;
  if (v12 == v14 > v9)
  {
    v12 = v14 + v8 < v10;
  }

  return (*(v11 + 8 * ((v12 * a3) ^ v7)))();
}

uint64_t sub_23ABBB5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, int a16)
{
  a16 = v16 + 1057858685;
  *(v20 - 112) = (v17 - 774) ^ (210068311 * ((((2 * (v20 - 128)) | 0x4F2F53A8) - (v20 - 128) + 1483232812) ^ 0x551C063C));
  *(v20 - 128) = v18;
  *(v20 - 120) = &a13;
  (*(v19 + 8 * (v17 + 310)))(v20 - 128);
  *(v20 - 128) = &a15;
  *(v20 - 112) = v18;
  *(v20 - 104) = v17 - 1564307779 * (((((v20 - 128) | 0x8F41254E) ^ 0xFFFFFFFE) - (~(v20 - 128) | 0x70BEDAB1)) ^ 0xE7B316A2) - 899;
  v21 = (*(v19 + 8 * (v17 + 408)))(v20 - 128);
  return (*(v19 + 8 * (((*(v20 - 120) > 0x7C6BFD1Eu) * ((v17 - 451048133) & 0x1AE26EF1 ^ (v17 - 967))) ^ v17)))(v21);
}

uint64_t sub_23ABBB6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 136) = &a15;
  *(v19 - 120) = v16;
  *(v19 - 128) = v17 - 1785193651 * ((v19 - 136) ^ 0x101073E5) - 136;
  v20 = (*(v15 + 8 * (v17 + 958)))(v19 - 136);
  return (*(v15 + 8 * (((v18 == (((v17 ^ 0x49B) + 816) ^ 0x333)) * ((409 * (v17 ^ 0x49B)) ^ 0x9F)) ^ v17)))(v20);
}

uint64_t sub_23ABBB8B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>)
{
  v18 = a1 - 16;
  v19 = a3 & (v18 + 15);
  v20 = v15;
  v21.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v21.i64[1] = a8;
  v22 = vrev64q_s8(vmulq_s8(v21, a9));
  *(v17 + v18) = veorq_s8(veorq_s8(veorq_s8(*(v13 + v19 - 15), *(a5 + v18)), veorq_s8(*(v11 + v19 - 15), *(v12 + v19 - 15))), vextq_s8(v22, v22, 8uLL));
  return (*(v16 + 8 * (((a2 == 16) * a4) ^ v14)))();
}

uint64_t sub_23ABBB9F8(int a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int8x16_t a37, int8x16_t a38, int8x16_t a39, int8x16_t a40)
{
  v46 = v43 + 2;
  v47 = (v45 + (v42 + 32));
  v48 = veorq_s8(v46[-1], *v47);
  v49 = veorq_s8(*v46, v47[1]);
  return (*(v44 + 8 * (((v40 == 32) * ((20 * (v41 ^ 0x98)) ^ a1)) ^ v41)))(vorrq_s8(vqtbl1q_s8(v48, a40), a2), vorrq_s8(vqtbl1q_s8(v48, a39), a3), vorrq_s8(vqtbl1q_s8(v48, a38), a4), vorrq_s8(vqtbl1q_s8(v48, a37), a5), vorrq_s8(vqtbl1q_s8(v49, a40), a6), vorrq_s8(vqtbl1q_s8(v49, a38), a7), vorrq_s8(vqtbl1q_s8(v49, a39), a8), vorrq_s8(vqtbl1q_s8(v49, a37), a9));
}

uint64_t sub_23ABBBAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = v13 + 899470907 < a13 - 669944691;
  if ((a13 - 669944691) < 0x359CD63B != v13 > 0xCA6329C4)
  {
    v16 = (a13 - 669944691) < 0x359CD63B;
  }

  return (*(v14 + 8 * ((27 * ((((41 * (v15 ^ 0x8B)) ^ v16) & 1) == 0)) ^ v15)))();
}

uint64_t sub_23ABBBC44(_DWORD *a1)
{
  v1 = 1082434553 * (a1 ^ 0x9B47F68A);
  v2 = a1[1] ^ v1;
  return (*(*(&off_284DD4450 + (v2 ^ 0x1A5)) + 8 * (((((v2 - 72) ^ ((((*a1 ^ v1 ^ 0xB198607C) + 1315413892) ^ ((*a1 ^ v1 ^ 0x3C3AF20A) - 1010496010) ^ ((*a1 ^ v1 ^ 0x10064C57) - 268848215)) + 497344033 < 0x80000064)) & 1) * ((v2 + 90) ^ 0x18D)) ^ v2) - 4))();
}

uint64_t sub_23ABBBD24()
{
  v7 = v3 - 1;
  *(v6 + v7) ^= *(v2 + (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 5) ^ 0x89;
  return (*(v5 + 8 * ((1457 * (v7 == 0)) ^ (v4 - 63))))();
}

uint64_t sub_23ABBBEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v19 - 136) = v16;
  *(v19 - 128) = a13;
  *(v19 - 112) = v16;
  *(v19 - 104) = a15;
  *(v19 - 120) = (v18 + 1750) ^ (843532609 * ((1554139262 - ((v19 - 136) | 0x5CA2487E) + ((v19 - 136) | 0xA35DB781)) ^ 0xF23D9539));
  v20 = (*(v17 + 8 * (v18 + 1737)))(v19 - 136);
  return (*(v17 + 8 * (((((v15 >> 2) & a12) == 0) * ((v18 ^ 0xC3) - 372)) ^ (v18 + 159))))(v20);
}

uint64_t sub_23ABBBFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v5 - 1;
  *(a1 + v10) = *(a4 + v10) - (v6 & (2 * *(a4 + v10))) - 119;
  return (*(v9 + 8 * (((v10 != ((v4 + 507) ^ v7)) * v8) ^ (v4 - 183))))();
}

uint64_t sub_23ABBC084()
{
  *(STACK[0x230] + 360) = v1;
  v9 = (*(v5 + 8 * (v0 + 857)))(v7, 2, &STACK[0x314], v6, (v3 - 2124293525), v2, &STACK[0x358], &STACK[0x40C]);
  if (v9 == 268435459)
  {
    LODWORD(STACK[0x320]) = 1650165017;
    return (*(v5 + 8 * (((((LODWORD(STACK[0x2B4]) - 638) | 0x51) - 730) * (STACK[0x358] == 0)) ^ (LODWORD(STACK[0x2B4]) - 568))))(v9, STACK[0x358], v10, v11);
  }

  else
  {
    v12 = STACK[0x2B4];
    if (!v9)
    {
      JUMPOUT(0x23ABBC130);
    }

    v14 = 1082434553 * (((v4 | 0xB8C98CE3) + (~v4 | 0x4736731C)) ^ 0x238E7A68);
    *(v8 - 200) = &STACK[0x320];
    *(v8 - 208) = (v9 - 1650139615 - ((2 * v9) & 0x3B49BC42)) ^ v14;
    *(v8 - 204) = (v12 - 913) ^ v14;
    v15 = (*(v5 + 8 * (v12 + 864)))(v8 - 208);
    return (*(v5 + 8 * (((((v12 - 638) | 0x51) - 730) * (STACK[0x358] == 0)) ^ (v12 - 568))))(v15);
  }
}

uint64_t sub_23ABBC3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v24 - 104) = &a21;
  *(v24 - 128) = a15;
  *(v24 - 120) = a14;
  *(v24 - 112) = (v21 - 212) ^ (1037613739 * ((1502910674 - ((v24 - 144) | 0x599498D2) + ((v24 - 144) | 0xA66B672D)) ^ 0x77694A52));
  *(v24 - 144) = &a19;
  *(v24 - 136) = &a19;
  v25 = (*(v22 + 8 * ((v21 + 194) ^ 0xCE8)))(v24 - 144);
  return (*(v22 + 8 * ((31 * (v23 + a13 + 1019 < ((((v21 - 1146827908) & 0x445B37BF) - 640) ^ 0x7FFFFB63u))) ^ (((v21 - 1146827908) & 0x445B37BF) - 813))))(v25);
}

uint64_t sub_23ABBC4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v20 = 191 * (v18 ^ 0x471);
  v21 = 1785193651 * ((((2 * (v19 - 128)) | 0x82BA5D0A) - (v19 - 128) + 1050857851) ^ 0xD14D5D60);
  *(v19 - 120) = &a13;
  *(v19 - 112) = (v16 ^ 0xBFB9776A) - v21 + ((v20 + 2138238294) & (2 * v16)) + 2093465502;
  *(v19 - 128) = (v18 - 153) ^ v21;
  (*(v15 + 8 * (v18 + 973)))(v19 - 128);
  *(v19 - 128) = &a15;
  *(v19 - 112) = a12;
  *(v19 - 104) = v20 - ((((v19 - 128) | 0x26D6EE91) + (~(v19 - 128) | 0xD929116E)) ^ 0xB1DB2283) * v17 + 435;
  v22 = (*(v15 + 8 * (v20 + 1742)))(v19 - 128);
  return (*(v15 + 8 * ((178 * (*(v19 - 120) + ((44 * (v20 ^ 0x16F)) ^ 0x8394000D) >= ((v20 - 86118881) & 0x52213F6u) - 582939950)) ^ v20)))(v22);
}

void sub_23ABBC64C(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40) ^ (1037613739 * ((2 * (a1 & 0x484F22ED) - a1 - 1213145838) ^ 0x66B2F06D));
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v8[0] = 0x45F17FEB00000082;
  v8[1] = &v11;
  v9[0] = 0x45F17FEB00000082;
  v9[1] = &v10;
  v6 = v3[1];
  v17 = v2;
  v14 = v3;
  v15 = v5;
  v16 = (1037613739 * (((&v12 | 0x35886424) - (&v12 & 0x35886424)) ^ 0xE48A495B)) ^ (v1 - 826);
  v12 = v8;
  v13 = v6;
  v7 = *(&off_284DD4450 + (v1 ^ 0x66E)) - 4;
  (*&v7[8 * (v1 ^ 0xE0C)])(&v12);
  v12 = *v3;
  v13 = v9;
  LODWORD(v14) = (210068311 * ((&v12 - 83774786 - 2 * (&v12 & 0xFB01B2BE)) ^ 0x98A1D56)) ^ (v1 - 664);
  (*&v7[8 * (v1 ^ 0x1AC)])(&v12);
  v13 = v4;
  HIDWORD(v12) = (1388665877 * (((&v12 | 0x73668202) - (&v12 & 0x73668202)) ^ 0xFECBE0EE)) ^ (v1 - 579);
  (*&v7[8 * v1 + 4152])(&v12);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23ABBC874@<X0>(int a1@<W8>)
{
  v7 = STACK[0x2DC];
  v8 = STACK[0x3E0];
  v9 = STACK[0x36C];
  v10 = &v6[6 * v3];
  v10[2] = v4;
  v10[3] = v9;
  *(v10 + 2) = v8;
  v10[6] = v7;
  *v6 = v1 + 1;
  LODWORD(STACK[0x3EC]) = v2;
  v12 = v2 + 1931867382 > ((((a1 - 1646880285) & 0x6229677F) + 29527842) ^ (a1 + 1423150401) & 0xAB2C6FDB) || v2 + 1931867382 < SLODWORD(STACK[0x240]);
  return (*(v5 + 8 * ((1038 * v12) ^ a1)))();
}

void sub_23ABBC960(uint64_t a1)
{
  if (*(*(a1 + 8) + 4) - 1173454827 >= 0)
  {
    v2 = *(*(a1 + 8) + 4) - 1173454827;
  }

  else
  {
    v2 = 1173454827 - *(*(a1 + 8) + 4);
  }

  v1 = *(a1 + 4) - 1388665877 * (((a1 | 0x5780294E) - (a1 | 0xA87FD6B1) - 1468016975) ^ 0xDA2D4BA2);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_23ABBCB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = v13 - 477792403 < HIDWORD(a12) - 2047208001;
  if ((HIDWORD(a12) - 2047208001) < 0xE385776D != v13 > ((v12 - 976) ^ 0x1C7A8893u))
  {
    v15 = (HIDWORD(a12) - 2047208001) < 0xE385776D;
  }

  return (*(v14 + 8 * ((v15 | (2 * v15)) ^ v12)))(477792402, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_23ABBCBEC(_OWORD *a1)
{
  v6 = *v3;
  *(a1 - 1) = *(v3 - 1);
  *a1 = v6;
  return (*(v5 + 8 * (((v4 == 0) * v2) ^ v1)))(a1 + 2);
}

void sub_23ABBCC58(uint64_t a1)
{
  v1 = (*(a1 + 8) ^ (1564307779 * ((a1 & 0xC1B32C8E | ~(a1 | 0xC1B32C8E)) ^ 0xA9411F62))) + 169;
  __asm { BRAA            X14, X17 }
}

void sub_23ABBCE00(int a1@<W8>)
{
  LODWORD(STACK[0x3C4]) = v4;
  LODWORD(STACK[0x324]) = v6 + 80;
  v7 = STACK[0x518];
  v8 = ((*(STACK[0x518] + 88) ^ 0xA214DE65) + 1575690651) ^ ((*(STACK[0x518] + 88) ^ 0xD65A5560) + 698722976) ^ ((*(STACK[0x518] + 88) ^ (2 * (v2 ^ 0x1E3)) ^ 0x97661B52) + 1754915252);
  LODWORD(STACK[0x440]) = v1;
  v9 = (((v1 ^ 0x5C96C8BD) - 1553385661) ^ ((v1 ^ 0x261A5C8E) - 639261838) ^ ((v1 ^ 0x99A4017A) + 1717304966)) - 50403124 + v8;
  *(v7 + 88) = v9 ^ ((v9 ^ 0xD622BB4B) + 527497871) ^ ((v9 ^ 0x5EE75B76) - 1749738828) ^ ((v9 ^ 0x18721F8) - 925540290) ^ ((v9 ^ 0xBFEF7FFF) + 1992113723) ^ 0xD5852B73;
  LODWORD(STACK[0x424]) = a1;
  LODWORD(STACK[0x3D0]) = v5;
  LODWORD(STACK[0x2CC]) = v3;
  JUMPOUT(0x23ABBCF7CLL);
}

uint64_t sub_23ABBD5BC@<X0>(int a1@<W8>, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  *a3 = a1;
  v58 = (*(v54 + 48 * v57 + 8))(a4);
  return (*(v55 + 8 * ((267 * ((v56 ^ 0x5E8) - 1650139615 + v58 - ((2 * v58) & 0x3B49BC42) == -1650139290)) ^ v56)))(v58, v59, 1705809049, 441674598, v60, 3804768687, 2644827681, 2460220823, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

void sub_23ABBD6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *v40 = (((v38 + 4261345) | 0x81081810) ^ 0x1491DF1 | (((a28 - v38) | (v38 - a28)) >= 0)) ^ (v38 + 1);
  (*(v39 + 8 * (v38 ^ 0x85E)))(a38);
  vld1q_dup_f32(v40);
  JUMPOUT(0x23ABBD7A0);
}

uint64_t sub_23ABBD954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v17 = 1388665877 * ((~((v15 - 128) | 0x3121877B) + ((v15 - 128) & 0x3121877B)) ^ 0x43731A68);
  *(v15 - 120) = (v14 + 1080) ^ v17;
  *(v15 - 116) = (a13 - 922022760) ^ v17;
  *(v15 - 128) = v15 - 228;
  v18 = (*(v13 + 8 * (v14 ^ 0x80F)))(v15 - 128);
  v19 = *(v15 - 160);
  *(v15 - 228 + (v19 & 0x3F)) = 9;
  return (*(v13 + 8 * ((((v19 & 0x3Fu) > 0x37) * ((3 * ((v14 - 270430) & 0xDFDF7DFB ^ (v16 - 161))) ^ 0x1D)) | v14)))(v18);
}

uint64_t sub_23ABBDA8C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *v10 = v6 - 1;
  v11 = v6 - 1989570497;
  v12 = &v10[6 * v6 - 0x2C78695F0 + 6 * ((v7 + 14) | 0x243u)];
  v13 = *v12;
  LODWORD(STACK[0x36C]) = v12[1];
  v14 = &v10[6 * (v11 + 1249) + 2];
  STACK[0x3E0] = *(v14 + 8);
  LODWORD(STACK[0x2DC]) = *(v14 + 16);
  v15 = *(v8 + (a6 + ((v7 - 285) | 0x200) + v13 - 517) * a1 + 36);
  LODWORD(STACK[0x3EC]) = v15;
  return (*(v9 + 8 * ((125 * (v15 != 245145506)) ^ v7)))();
}

uint64_t sub_23ABBDBB4()
{
  v6 = v0 - 1218915845;
  v7 = 1388665877 * ((((2 * v3) | 0x9FC51986) - v3 - 1340247235) ^ 0xC24FEE2F);
  *(v5 - 200) = (v2 - 148) ^ v7;
  *(v5 - 196) = v6 ^ v7;
  *(v5 - 208) = v1;
  v8 = (*(v4 + 8 * (v2 ^ 0xD43)))(v5 - 208);
  return (STACK[0x340])(v8);
}

uint64_t sub_23ABBDC3C()
{
  v6 = ((v0 & 0x11C3BDE8 | ~(v0 | 0x11C3BDE8)) ^ 0x3D1EB29B) * v4;
  *(v5 - 192) = v6 - 1843349550;
  *(v5 - 200) = 0;
  *(v5 - 208) = v6 + v1 + 803;
  *(v5 - 184) = &STACK[0x410];
  *(v5 - 176) = &STACK[0x348];
  v7 = (*(v3 + 8 * (v1 + 1773)))(v5 - 208);
  return (*(v3 + 8 * (((*(v5 - 204) == v2 + ((v1 - 1476517306) & 0x5801DF7F) - 846) * ((v1 + 454) ^ 0x36D)) | v1)))(v7);
}

uint64_t sub_23ABBDD58(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6)
{
  v13 = v9 + 2;
  v14 = v11 + 2;
  v6 = vaddq_s8(vsubq_s8(*v13, vandq_s8(vaddq_s8(*v13, *v13), a5)), a6);
  v14[-1] = vaddq_s8(vsubq_s8(v13[-1], vandq_s8(vaddq_s8(v13[-1], v13[-1]), a5)), a6);
  *v14 = v6;
  return (*(v12 + 8 * (((v10 == 32) * ((v8 + 2019) ^ 0x703)) ^ (v8 + 69))))();
}

uint64_t sub_23ABBDD68@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  *(v6 + v8) = *(a2 + v8) ^ *(v3 + (v8 & 0xF)) ^ *((v8 & 0xF) + v4 + 5) ^ ((v8 & 0xF) * (((a1 + 52) | 1) ^ 0xDA)) ^ *((v8 & 0xF) + v2 + 2) ^ 0x89;
  return (*(v7 + 8 * ((500 * (v8 == 0)) ^ (a1 + 135))))();
}

uint64_t sub_23ABBDDF0()
{
  v3 = LODWORD(STACK[0x2B4]) - 1269;
  LODWORD(STACK[0x4FC]) = v1;
  return (*(v2 + 8 * v3))();
}

uint64_t sub_23ABBE534()
{
  v4 = v0 - 175;
  *(*(v2 + 96) + 1428) = 32;
  v5 = 1785193651 * ((v3 - 1697740114 - 2 * ((v3 - 128) & 0x9ACE8B2E)) ^ 0x8ADEF8CB);
  *(v3 - 120) = v3 - 228;
  v6 = v0 - 4;
  *(v3 - 124) = 3 - v5 - (((3 * ((v0 - 175) ^ 0xD9)) ^ 2) & 6) + 17098382;
  *(v3 - 112) = (v0 - 473374131) ^ v5;
  v7 = (*(v1 + 8 * (v0 + 1666)))(v3 - 128);
  return (*(v1 + 8 * ((31 * ((v6 ^ (*v2 - 1569415662 + (*(v3 - 160) & 0x3Fu) < 0xFFFFFFC0)) & 1)) ^ v4)))(v7);
}

uint64_t sub_23ABBE54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v22 - 112) = &a17;
  *(v22 - 120) = v20 - 1785193651 * ((v22 - 1143812510 - 2 * ((v22 - 128) & 0xBBD2CEE2)) ^ 0xABC2BD07) + 746;
  *(v22 - 128) = &a19;
  v23 = (*(v19 + 8 * (v20 + 1840)))(v22 - 128);
  return (*(v19 + 8 * (((((v20 + 558) | 0x22) + (v20 ^ 0xFFFFFC65)) * (v21 != 1)) ^ v20)))(v23);
}

void sub_23ABBE7CC(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(&off_284DD4450 + (*(off_284DD4638 + (*(off_284DD45A0 + (117 * ((qword_27DFC8A88 + dword_27DFC88C8) ^ 0xA1))) ^ 0xE4u) - 12) ^ (117 * ((qword_27DFC8A88 + dword_27DFC88C8) ^ 0xA1))) + 51);
  v4 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 + *v3) ^ 0xA1)) ^ byte_23AC787A0[byte_23AC74DA0[(117 * ((qword_27DFC8A88 + *v3) ^ 0xA1))] ^ 5]) - 192);
  v5 = (*(v4 - 4) - *v3) ^ &v7;
  *v3 = 1793648501 * v5 + 0x67A512DFC4F8545FLL;
  *(v4 - 4) = 1793648501 * (v5 ^ 0x985AED203B07ABA1);
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v5) = 1785193651 * ((2 * (v9 & 0x25AC7FA8) - v9 + 1515421779) ^ 0x4A43F3B6);
  v12 = v5 ^ 0xE3C8E420;
  v10 = 17098380 - v5;
  v11 = v8;
  LODWORD(v4) = 1793648501 * (*v3 ^ 0x3B07ABA1 ^ *(v4 - 4));
  v6 = *(&off_284DD4450 + ((117 * (dword_27DFC88C8 ^ 0xA1 ^ qword_27DFC8A88)) ^ byte_23AC78AA0[byte_23AC751A0[(117 * (dword_27DFC88C8 ^ 0xA1 ^ qword_27DFC8A88))] ^ 0xC5]) - 87) - 4;
  (*&v6[8 * (*(off_284DD4908 + (*(off_284DD4600 + v4 - 8) ^ 0x95u) - 8) ^ v4) + 15384])(v9);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_23ABBEC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22, unsigned int a23, uint64_t a24)
{
  v24 = ((a6 - 1399078451) ^ 0x955B84D8) + a20;
  v25 = v24 < 0x39C044EB;
  v26 = v24 > a23;
  if (a23 < 0x39C044EB != v25)
  {
    v26 = v25;
  }

  return (*(v28 + 8 * ((v26 * (((a6 - 1399078451) & 0x53643FCF) - 254)) ^ (a6 + 1054))))(a1, a2, a3, a4, a24);
}

uint64_t sub_23ABBED40()
{
  v5 = *(v8 + 24);
  v6 = 1564307779 * ((926107983 - ((v4 - 144) | 0x3733494F) + ((v4 - 144) | 0xC8CCB6B0)) ^ 0x5FC17AA3);
  *(v4 - 136) = v6 ^ 0x7B6E1A3E;
  *(v4 - 132) = v0 - v6 + 363;
  *(v4 - 144) = v9;
  (*(v3 + 8 * (v0 + 502)))(v4 - 144);
  *(v4 - 112) = (v0 - 826) ^ (1037613739 * ((v4 - 144) ^ 0xD1022D7F));
  *(v4 - 144) = v10;
  *(v4 - 136) = v10;
  *(v4 - 104) = v9;
  *(v4 - 128) = v1;
  *(v4 - 120) = v2;
  (*(v3 + 8 * (v0 ^ 0xE0C)))(v4 - 144);
  *(v4 - 128) = (v0 - 664) ^ (210068311 * ((((v4 - 144) | 0x586CB078) - ((v4 - 144) & 0x586CB078)) ^ 0xAAE71F90));
  *(v4 - 144) = v10;
  *(v4 - 136) = v5;
  return (*(v3 + 8 * (v0 ^ 0x1AC)))(v4 - 144);
}

uint64_t sub_23ABBEF00@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v5 = *(v3 + v4);
  v6 = v4 - 1;
  *(a2 + v6) = v5;
  return (*(v2 + 8 * ((668 * (v6 == (((a1 - 1491) | 0xA5u) ^ 0xA7))) ^ a1)))();
}

uint64_t sub_23ABBF354@<X0>(int a1@<W3>, unsigned int a2@<W5>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  v21 = 59 * (a3 ^ 0x4CD);
  v22 = a20 + 1114081424 < (a1 + 2018021201);
  if (a20 + 1114081424 < a2 + 1231 != a1 + 2018021201 < ((((v21 - 1341) | 0xA1) + 1088) ^ a2))
  {
    v22 = a1 + 2018021201 < ((((v21 - 1341) | 0xA1) + 1088) ^ a2);
  }

  return (*(v20 + 8 * ((2 * v22) | (16 * v22) | v21)))();
}

uint64_t sub_23ABBF888@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W8>)
{
  v9 = a1 ^ (a5 - 2125915579) ^ 0xFF68A9F5ADB4DA5;
  v10 = (v9 - ((2 * v9) & 0xE5C236EEA63142DCLL) + 0x72E11B775318A16ELL) ^ a2;
  v11 = v10 ^ 0xB4C8DC3D8C43128FLL;
  if ((v9 & 0x82EE1687ACCADB62) != 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10 ^ 0xB4C8DC3D8C43128FLL;
  }

  v13 = v12 & (a2 ^ 0x39D638B520A44C1ELL);
  v14 = a3 ^ (a4 | (v144 << 32));
  v15 = v6 ^ v14 ^ 0x6FB46BE1E11394EELL;
  v16 = (v9 - 0x1888421263706FECLL - 2 * (v9 & 0x6777BDED9C8F9035 ^ a1 & 0x21)) ^ v7;
  v17 = v13 ^ v15 ^ 0x70D008BA8EF355B9;
  if (v16 == 0x68040451F630332FLL)
  {
    v17 = v15 ^ 0xF2FF745710CAA46;
  }

  v18 = (v13 ^ v15 ^ 0x74F13D0AECC56F7FLL) + 2 * (v13 & (v15 ^ 0x74F13D0AECC56F7FLL)) - 2 * ((v17 ^ 0x7BDECA4F9DC9C539) & v13);
  v19 = v15 & 0xDE5B618133CDD5FFLL ^ (v15 ^ 0x74F13D0AECC56F7FLL) & (v14 ^ 0x752472B9CF1F7524) ^ 0xF1D6D64ED6E5637BLL ^ v16;
  v20 = v15 & 0xF7FADAB808E549DBLL ^ v14 ^ 0x6FB46BE1E11394EELL ^ (v15 ^ 0x8B0EC2F5133A9080) & (a2 ^ 0x31D31DF2D7BEFA3ALL) ^ v19;
  *(&v21 + 1) = v20 ^ 0xBE943CBEDD8FBFEFLL;
  *&v21 = v20;
  v22 = v20 ^ 0xBE943CBEDD8FBFEFLL ^ __ROR8__(v20 ^ 0xBE943CBEDD8FBFEFLL, 61) ^ (v21 >> 39);
  v23 = __ROR8__(__ROR8__(v22 ^ 0xB2684B2AE604A2C1 ^ (v18 >> 6) ^ (v18 >> 1) ^ v18 ^ 0x3AC89EFE38981381 ^ ((v18 ^ 0x3AC89EFE38981381) << 58) ^ ((v18 ^ 0x3AC89EFE38981381) << 63) ^ 0x2F2A0913854CD0FLL, 31) ^ 0xE33BFF0AD0C16ABCLL, 33);
  v24 = a2 ^ 0x9A11234528C11380 ^ ((v16 ^ 0x85A3026A2A3FF499) & (v10 ^ 0x4B3723C273BCED70) | v11 & 0xEDA7063BDC0FC7B6);
  v25 = (-v18 ^ (v24 - (v18 ^ v24)) ^ 0x3FA169883513C80ELL ^ (v18 - ((2 * v18) & 0x7F42D3106A27901CLL) + 0x3FA169883513C80ELL)) + v24;
  v26 = v25 ^ __ROR8__(v25, 17) ^ (v25 << 54) ^ (v25 >> 10);
  v27 = v14 & 0x1AFE3DE267615048 ^ v11 ^ (v16 ^ 0x8D05C64C6EAE9C98) & (v14 ^ 0x5480ECC7032D5F24) ^ 0xC436C55F16FD6C4ELL;
  *&v21 = __ROR8__(__ROR8__(v27, 48) ^ 0xB41C01B5E27435EBLL, 16);
  v28 = v21 ^ 0xAFA34CBC15B1253 ^ ((v21 ^ 0xAFA34CBC15B1253) << 23) ^ (((v21 >> 41) ^ (v21 >> 7) ^ 0x71A0E4C3526B20F9) & (((v21 ^ 0xAFA34CBC15B1253) << 57) ^ 0x43FFFFFFFFFFFFFFLL) | ((v21 ^ 0xAFA34CBC15B1253) << 57) & 0x8FFFFFFFFFFFFFFFLL);
  v29 = (v26 & 0x3E938993E2CBE47 | (v28 ^ 0x76B9E4954819EC25) & ~v26) ^ v23;
  v30 = v28 ^ 0xBA02F86EF5211015;
  v31 = v26 ^ 0x880A5315CE1DD070 ^ v28 ^ 0xBA02F86EF5211015;
  v32 = v27 ^ v19;
  *(&v21 + 1) = v32 ^ 0x135524C1BC572023;
  *&v21 = v32;
  v33 = v32 ^ 0x135524C1BC572023 ^ __ROR8__(v32 ^ 0x135524C1BC572023, 28) ^ (v21 >> 19) ^ v30;
  *(&v21 + 1) = v31 & 0x468075A45DF03212 ^ v26 ^ 0x880A5315CE1DD070 ^ v29 ^ (v31 ^ 0xB8A78888B2F66DF8) & (v33 ^ 0x422959B3A599975DLL) ^ 0x5732744DD6519041;
  *&v21 = v31 & 0x468075A45DF03212 ^ v26 ^ 0x880A5315CE1DD070 ^ v29 ^ (v31 ^ 0xB8A78888B2F66DF8) & (v33 ^ 0x422959B3A599975DLL);
  v34 = v21 >> 17;
  *&v21 = __ROR8__(*(&v21 + 1), 10);
  v35 = ((v34 ^ v21 ^ 0x416D625D7584AF39) - ((2 * (v34 ^ v21 ^ 0x416D625D7584AF39)) & 0x6E992EB611774482) + 0x374C975B08BBA241) ^ *(&v21 + 1);
  v36 = v33 & 0xD69CE7B71D140A62 ^ (v33 ^ 0xFB56D3E807965AB0) & (v22 ^ 0xCDF14FB612EC81ELL) ^ 0x666E413D56ED34FFLL ^ v31;
  v37 = (v36 & 0xF2F0F93CF1701AFDLL ^ 0xE02EAC8B37530239) & (v36 & 0xD0F06C30E8FE502 ^ 0xF2FCFB7DF9FB5BFDLL) | v36 & 0xD010240088CE502;
  v38 = __ROR8__(v37 ^ 0xA5FE19BBE7F20F55, 7);
  *&v21 = __ROR8__(v37 ^ 0xA5FE19BBE7F20F55, 41);
  v39 = ((v38 ^ v21 ^ 0xB27D781B3805C795) - ((2 * (v38 ^ v21 ^ 0xB27D781B3805C795)) & 0x5990F14093A3A9E2) + 0x2CC878A049D1D4F1) ^ v37 ^ 0xA5FE19BBE7F20F55;
  v40 = v22 & 0x2AF20CAA51D64D02 ^ v33 ^ 0xD211335F69B23BBELL ^ (v23 ^ 0xC360212BB2B5E193) & (v22 ^ 0x25BC0CB383C53D83);
  v41 = v37 ^ v40 ^ ((v37 ^ v40 ^ 0x67BC90F8F62A9762) >> 19) ^ ((v37 ^ v40 ^ 0x67BC90F8F62A9762) >> 28) ^ ((v37 ^ v40 ^ 0x199C9EABD838134FLL) << 36) ^ ((v37 ^ v40 ^ 0x199C9EABD838134FLL) << 45) ^ 0xDC878D0E6951599ELL;
  *(&v21 + 1) = v40 ^ v22 ^ 0xB2684B2AE604A2C1;
  *&v21 = v40 ^ v22;
  v42 = (v23 ^ 0x166DD27E1C9C536ELL) & (v26 ^ 0xF30F9260299E05D6) ^ v23 & 0xF30F9260299E05D6 ^ __ROR8__((v21 >> 54) ^ 0x363159B338A9565FLL, 10);
  v43 = *(v8 + (v42 >> 61) + 80);
  v44 = (v43 ^ ((v43 ^ 0x3C) - ((2 * (v43 ^ 0x3C) + 2) & 0xFB) - 2) ^ ((v43 ^ (57 - (v43 ^ 0xFA)) ^ 0x2B ^ ((v43 ^ 0x3C) - ((2 * (v43 ^ 0x3C) + 2) & 0x2E) + 24)) + 1) ^ 0x3E) - 62;
  v45 = v44 ^ (v42 >> 39) ^ v42 ^ 0xCB3C7F5226D9F263 ^ (8 * (v42 ^ 0xCB3C7F5226D9F263)) ^ ((v42 ^ 0xCB3C7F5226D9F263) << 25);
  v46 = (v39 - ((2 * v39) & 0xAD3D6593C30B705ALL) - 0x29614D361E7A47D3) ^ v41;
  v47 = v35 ^ 0x147D2CDEEA4;
  v48 = v35 ^ 0x147D2CDEEA4 ^ v39;
  v49 = (~(2 * v46) + v46) & (v45 ^ 0xE647A94201FE6B41) ^ v48;
  v50 = ((v49 ^ 0x26974B18501E2B14) >> 7) ^ ((v49 ^ 0x26974B18501E2B14) >> 41) ^ ((v49 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v49 ^ 0x26974B18501E2B14) - (((v49 ^ 0x26974B18501E2B14) << 58) & (2 * (v49 ^ 0x26974B18501E2B14))));
  v51 = (v29 >> 1) ^ 0x429F3143BA086976;
  v52 = v29 ^ (v29 << 58);
  v53 = v52 ^ 0x353E62877410D2ECLL;
  if ((v51 & 0x100000000000 & v52) != 0)
  {
    v54 = -(v51 & 0x100000000000);
  }

  else
  {
    v54 = v51 & 0x100000000000;
  }

  v55 = ((v29 << 63) | 0x55B6B470CC1A625) ^ (v29 >> 6) ^ v51 & 0xFFFFEFFFFFFFFFFFLL ^ (v54 + v53);
  v56 = ((v35 ^ 0xFFFFFEB82D32115BLL) & v39) - ((2 * ((v35 ^ 0xFFFFFEB82D32115BLL) & v39)) & 0xEDB14B62F693C996) + 0x76D8A5B17B49E4CBLL;
  v57 = (v47 - ((2 * v47) & 0xAD3D6593C30B705ALL) - 0x29614D361E7A47D3) ^ v41;
  if (!v44)
  {
    v57 = v46;
  }

  v58 = v35 ^ v57 & ~v48 ^ 0xE4A03311E95B4F76;
  v59 = v45 ^ v55;
  v60 = v56 ^ v45 ^ v55;
  v61 = v58 ^ v60;
  v62 = v58 ^ v60 ^ __ROR8__(v58 ^ v60, 10) ^ ((v58 ^ v60) >> 17);
  v63 = v62 + (v61 << 47) - 2 * (v62 & (v61 << 47));
  v64 = (v60 ^ 0xEE8574D226EED2E8) << 58;
  v65 = v45 & 0xD1A5711801D9A4ELL ^ 0x91856118001900ELL ^ (v45 ^ 0x19B856BDFE0194BELL) & (v55 ^ 0xA55C5DC910C7F20);
  v66 = (v46 ^ -v46 ^ (v65 - (v65 ^ v46))) + v65;
  v67 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v45 ^ (((v59 ^ 0x1EF7C470EF1071D0) & v47) - ((2 * ((v59 ^ 0x1EF7C470EF1071D0) & v47)) & 0x59359DF451D947E2) - 0x53653105D7135C0FLL) ^ v66 ^ 0x78A59F80D7511A0CLL, 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v68 = v67 ^ 0x93DD7BE3C3310A2CLL ^ ((v67 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v67 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v67 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v67 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v69 = (((((2 * (0x34CDB152F4A04500 - v64)) & 0x9000000000000200) + ((0x34CDB152F4A04500 - v64) ^ 0xCB324EAD0B5FBB00)) ^ v64 ^ ((v60 ^ 0xEE8574D226EED2E8) - ((v64 & 0xF800000000000000 ^ (v60 ^ 0xEE8574D226EED2E8) & 0xF9BFE541A2368FBELL | (v60 ^ 0xEE8574D226EED2E8) & 0x6401ABE5DC97041) ^ v64 & 0x400000000000000))) + (v60 ^ 0xEE8574D226EED2E8)) ^ (v60 << 63) ^ __ROR8__(((v60 ^ 0xEE8574D226EED2E8) >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v68, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v70 = v69 & 0xA8F512753D8F931ELL ^ ((v60 ^ 0xEE8574D226EED2E8) >> 1) & 0x28F512753D8F931ELL | (v69 ^ ((v60 ^ 0xEE8574D226EED2E8) >> 1)) & 0x570AED8AC2706CE1;
  v71 = v70 ^ v50 & ~v63;
  *(&v72 + 1) = v71;
  *&v72 = v71 ^ 0xD3DA1E3360BF843ALL;
  v73 = ((v72 >> 1) ^ v71 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v71 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v72 >> 1) ^ v71 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v71 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000;
  *(&v72 + 1) = v71;
  *&v72 = v71 ^ 0xD3DA1E3360BF843ALL;
  v74 = v49 ^ 0x6E04C15915AB860ALL ^ v66 ^ __ROR8__(v49 ^ 0x6E04C15915AB860ALL ^ v66, 19) ^ ((v49 ^ 0x6E04C15915AB860ALL ^ v66) << 36) ^ ((v49 ^ 0x6E04C15915AB860ALL ^ v66) >> 28) ^ v50;
  v75 = ((v70 ^ v68) + (v70 | ~v68) + 1) ^ v74;
  v76 = v68 ^ v63 & ~v70 ^ 0x425764BB5877DA25 ^ v75;
  v77 = v76 ^ (v76 >> 61) ^ (v76 >> 39) ^ (8 * v76) ^ (v76 << 25);
  v78 = v63 ^ v50;
  v79 = v68 & ~v74 ^ v78;
  v80 = v79 ^ 0xFD;
  v81 = v79 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v79 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v79 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v79 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v82 = v79 ^ 0x97F6A7E5F6E8F58ALL ^ v75 ^ __ROR8__(v79 ^ 0x97F6A7E5F6E8F58ALL ^ v75, 19) ^ ((v79 ^ 0x97F6A7E5F6E8F58ALL ^ v75) << 36) ^ ((v79 ^ 0x97F6A7E5F6E8F58ALL ^ v75) >> 28);
  *&v72 = __ROR8__((v72 >> 9) & 0xE07FFFFFFFFFFFFFLL ^ __ROR8__(v77 ^ v73, 3) ^ 0x55413C453664FDCDLL, 61);
  v83 = ((v82 | v81) ^ v81 & v82) & 0x2D23D578E308995FLL | (v82 ^ v81) & 0xD2DC2A871CF766A0;
  v84 = v74 & ~v78;
  v85 = (v72 ^ 0xAA09E229B327EE6ALL) & ~v77 ^ v83;
  v86 = v63 ^ 0x44C9D571A5C4A51CLL ^ v84 ^ v71 ^ ((v63 ^ 0x44C9D571A5C4A51CLL ^ v84 ^ v71) >> 10) ^ ((v63 ^ 0x44C9D571A5C4A51CLL ^ v84 ^ v71) << 47) ^ ((v63 ^ 0x44C9D571A5C4A51CLL ^ v84 ^ v71) << 54) ^ ((v63 ^ 0x44C9D571A5C4A51CLL ^ v84 ^ v71) >> 17);
  v87 = ((v85 ^ v77) + ((v72 ^ 0x55F61DD64CD81195) & v86) - 2 * ((v85 ^ v77) & (v72 ^ 0x55F61DD64CD81195) & v86)) ^ 0x6005BE354A5BB0B2;
  v88 = v87 >> (v26 & 0x3D) >> (v26 & 0x3D ^ 0x3D);
  v89 = (8 * v87) ^ (v87 >> 39) ^ ((v87 ^ (v87 << 25)) & 0xF21553F3FD140018 ^ v88 & 0x18 | (v87 ^ (v87 << 25)) & 0xDEAAC0C02EBFFE7 ^ v88 & 0xE7);
  v90 = v77 & ~v83 ^ v86 ^ v81;
  v91 = v90 ^ 0x2DB5B6AF87F64351 ^ ((v90 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v90 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v90 ^ 0x2DB5B6AF87F64351) >> 41) | ((v90 ^ 0x2DB5B6AF87F64351) << 57));
  v92 = v90 ^ 0x93C23431B76D41FLL ^ v85;
  v93 = v92 << 36;
  v94 = (v92 ^ (v92 >> 28)) + (v92 >> 19) - 2 * ((v92 ^ (v92 >> 28)) & (v92 >> 19));
  v95 = v94 ^ (v92 << 45);
  v96 = v95 ^ v93;
  v97 = v83 & ~(v86 ^ v81);
  v98 = v95 ^ v93 ^ v91;
  v99 = v72 ^ 0xAA09E229B327EE6ALL ^ v81 & ~v86;
  v100 = v86 ^ 0xF374A001D380BDC2 ^ v97 ^ v99 ^ ((v86 ^ 0xF374A001D380BDC2 ^ v97 ^ v99) >> 10) ^ ((v86 ^ 0xF374A001D380BDC2 ^ v97 ^ v99) << 47) ^ ((v86 ^ 0xF374A001D380BDC2 ^ v97 ^ v99) << 54) ^ ((v86 ^ 0xF374A001D380BDC2 ^ v97 ^ v99) >> 17);
  v101 = v100 ^ v91;
  v102 = v89 & ~v98 ^ v100 ^ v91;
  v103 = v99 ^ 0x6DC4FB0BD4FFFF44;
  *(&v72 + 1) = v99;
  *&v72 = v99 ^ 0x6DC4FB0BD4FFFF44;
  v104 = (v72 >> 1) ^ v99 ^ 0x6DC4FB0BD4FFFF44 ^ ((v99 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v89;
  v105 = v103 >> 6;
  if (v93 == v95)
  {
    v106 = v105;
  }

  else
  {
    v106 = ~(v105 ^ v104);
  }

  v107 = v104 + v105 - 2 * (v106 & v104);
  v108 = v107 ^ (((~v100 | 0xFFFFFFFFEFFFFFFFLL) - (v100 & 0x4000000000)) ^ v100 & 0xFFFFFFBFEFFFFFFFLL) & v101;
  v109 = v96 ^ v100;
  if (v101 == -1)
  {
    v109 = 0;
  }

  v110 = v108 - ((2 * v108) & 0x5A47EBDAAC1EB792);
  v111 = v110 + 0x2D23F5ED560F5BC9;
  v112 = v110 - 0x5BDA183C59819C5ELL;
  if (v111 >= 0x88FE0E29AF90F827)
  {
    v113 = v112;
  }

  else
  {
    v113 = v111;
  }

  if (v111 >= 0x88FE0E29AF90F827)
  {
    v114 = 0x88FE0E29AF90F827;
  }

  else
  {
    v114 = 0;
  }

  v115 = v113 == 0;
  v116 = __ROR8__(((v98 << (v94 & 0x2B) << (v94 & 0x2B ^ 0x2B)) + (v98 >> 21)) ^ __ROR8__(v107 & ~v89, 21) ^ 0x6D12C2B6EED373A6, 43);
  v117 = v100 & ~v107 ^ v89 ^ v116;
  v118 = v102 ^ 0x5035F38BF1002A3ALL ^ v116;
  v119 = v118 ^ (v118 >> 19);
  v120 = v119 & 0xD99EEE0927173347 ^ (v118 << 45) & 0xD99EE00000000000 | v119 & 0x266111F6D8E8CCB8 ^ (v118 << 45) & 0x2661000000000000;
  v121 = (((v118 << 45) ^ (0xFFFFE00000000000 * v118) ^ (v120 + v119 - 2 * v120)) + v119) ^ (v118 >> 28);
  v122 = v121 & 0x78E134634F73AA70 ^ (v118 << 36) & 0x78E1346000000000 | v121 & 0x871ECB9CB08C558FLL ^ (v118 << 36) & 0x871ECB9000000000;
  v123 = v122 - 0x1888421263706FECLL - 2 * (v122 & 0x6777BDED9C8F901ELL ^ v121 & 0xA);
  v5[65] = v123 ^ 0x14;
  v124 = v117 ^ 0xE013161F571CC4C5 ^ ((v117 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v117 ^ 0xE013161F571CC4C5));
  v125 = v124 ^ (((v117 ^ 0xE013161F571CC4C5) >> 61) | (v117 << 25));
  v126 = *(v141 + ((69 * ((v123 ^ 0xE777BDED9C8F9014) >> (v121 & 8) >> (v121 & 8 ^ 8))) ^ 0x3DLL)) - 18;
  v127 = (((v126 ^ 0x57) + v126 - 2 * (v126 ^ 0x57)) ^ 0xFE) + v126;
  v5[54] = ((v124 ^ (((v117 ^ 0xE013161F571CC4C5) >> 61) | (v117 << 25))) >> 24) ^ 0x8A;
  v5[28] = BYTE2(v123) ^ 0x8F;
  v5[41] = (v127 >> 2) | (v127 << 6);
  v5[35] = BYTE1(v124);
  v5[21] = BYTE2(v124);
  v5[58] = (v123 ^ 0xE777BDED9C8F9014) >> (v80 & 0x20) >> (v80 & 0x20 ^ 0x20u);
  v5[17] = BYTE4(v125) ^ 0x89;
  v5[5] = BYTE3(v123) ^ 0x9C;
  if (v115)
  {
    v128 = v114;
  }

  else
  {
    v128 = v111;
  }

  v5[47] = BYTE5(v123) ^ 0xBD;
  v5[14] = HIBYTE(v123) ^ 0xE7;
  v5[48] = BYTE6(v123) ^ 0x77;
  *(&v129 + 1) = v128;
  *&v129 = v111;
  v5[16] = (v125 ^ 0x3EAE39898A000000) >> (v117 & 0x28) >> (v117 & 0x28 ^ 0x28);
  v5[6] = v124 ^ ((v117 ^ 0xE013161F571CC4C5) >> 61);
  v130 = *(v8 + (BYTE6(v125) ^ 0xF9));
  v131 = (v129 >> 1) ^ v111 ^ (v128 << 58) ^ (v128 >> 6);
  v5[10] = BYTE1(v131);
  v5[18] = BYTE4(v131);
  v5[25] = BYTE2(v131);
  v132 = v100 ^ v109 & v98 ^ 0x29E1AB0124FF49E7 ^ v108;
  *&v129 = __ROR8__(v132, 10);
  v5[42] = HIBYTE(v125) ^ 0x3E;
  v5[12] = BYTE5(v131);
  v5[23] = BYTE6(v131);
  v133 = (v132 ^ v129 ^ (v132 << 47)) + (v132 >> 17) - 2 * ((v132 ^ v129 ^ (v132 << 47)) & (v132 >> 17));
  v5[24] = BYTE3(v131);
  v5[30] = (v130 ^ 0xFA) - 119;
  v5[44] = v131;
  v5[62] = HIBYTE(v131);
  v5[19] = (v132 ^ v129) + (v132 >> 17) - 2 * ((v132 ^ v129) & (v132 >> 17));
  v134 = *(v143 + ((((v132 ^ v129) + (v132 >> 17) - 2 * ((v132 ^ v129) & (v132 >> 17))) >> 8) ^ 0x27) + 279);
  v5[8] = ((v132 ^ v129) + (v132 >> 17) - 2 * ((v132 ^ v129) & (v132 >> 17))) >> 24;
  v5[33] = ((v132 ^ v129) + (v132 >> 17) - 2 * ((v132 ^ v129) & (v132 >> 17))) >> 16;
  v5[4] = (v134 ^ BYTE1(v133) ^ 0x2D ^ ((BYTE1(v133) ^ 0x2D) + 72) ^ 0x41) + 15;
  v135 = *(v142 + (((v133 >> 28) & 0xF0 | (v133 >> 36) & 0xF) ^ 0x5C));
  v5[46] = HIBYTE(v133);
  result = v102 ^ 0x4734313A1F2B2857;
  v137 = v102 ^ __ROR8__(v102 ^ 0x4734313A1F2B2857, 41) ^ ((v102 ^ 0x4734313A1F2B2857) >> 7);
  v5[43] = BYTE6(v133);
  v5[38] = BYTE5(v133);
  v5[31] = ((v135 >> 5) | (8 * v135)) ^ 0xC1;
  v138 = *(v8 + ((((((4 * v137) | (v137 >> 6)) ^ 0xA) >> 2) | ((((4 * v137) | (v137 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  v5[55] = BYTE4(v137) ^ 0x3A;
  v5[34] = BYTE3(v137) ^ 0x1F;
  v5[32] = BYTE1(v137) ^ 0x28;
  v139 = v137 ^ ((v102 ^ 0x4734313A1F2B2857) << 57);
  v5[15] = (v138 ^ 0xFA) - 119;
  v5[7] = (v139 ^ 0x4734313A1F2B2857uLL) >> (v31 & 0x10 ^ 0x10) >> (v31 & 0x10);
  v5[61] = BYTE5(v137) ^ 0x31;
  v5[56] = (*(v8 + (BYTE6(v137) ^ 0x63)) ^ 0xFA) - 119;
  v5[51] = HIBYTE(v139) ^ 0x47;
  *v140 = v144 + 1;
  return result;
}

uint64_t sub_23ABC0F0C()
{
  if (v2 >= 0x80000003)
  {
    v5 = 1650165247;
  }

  else
  {
    v5 = v4;
  }

  return (*(v3 + 8 * ((1972 * (v5 == v4 + ((v1 - 289) ^ 0x11B) - 426)) ^ (v1 - 289))))();
}

uint64_t sub_23ABC0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  *v6 = 0;
  return (*(v7 + 8 * (((v8 == 0) * (((v5 + 840225920) & 0xCDEB2CF3) - 1222)) ^ v5)))(a1, a2, a3, a4, a5);
}

uint64_t sub_23ABC1018(int a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  HIDWORD(v16) = a1 ^ 0x3289549;
  LODWORD(v16) = a1 ^ 0xE0000000;
  v17 = (a3 ^ v15) + (v16 >> 27) + (*(v11 + 4 * (a8 + v13)) ^ v10) + (((v8 ^ v9) + v15 - (((v8 ^ v9) << (a2 - 110)) & 0xC6512A92)) ^ a6) + 403099862;
  return (*(v12 + 8 * ((1827 * (a8 + 1 == v14 + 80)) ^ a2)))(v17 ^ ((v17 ^ 0xA232F0CF) + 275316785) ^ ((v17 ^ 0x43AAE0C0) - 235859904) ^ ((v17 ^ 0xD341E0F0) + 1629098000) ^ ((v17 ^ 0x7F7DFFFF) - 853143807) ^ 0xAE8C9A49);
}

uint64_t sub_23ABC114C()
{
  v5 = *(v1 + 4 * (v2 - 1));
  *(v1 + 4 * v2) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v1 + 4 * v2)) - v2;
  v6 = STACK[0x288];
  v7 = -2030745982 - STACK[0x288] + v0;
  v8 = v0 + 1485662088 - STACK[0x288];
  *(v4 - 192) = STACK[0x288] ^ 0x26F;
  *(v4 - 184) = v8;
  *(v4 - 180) = v7;
  *(v4 - 200) = v8 + 2;
  *(v4 - 196) = v6;
  *(v4 - 208) = ((v0 + 1485662088) ^ 0x75) - v6;
  *(v4 - 176) = v2 + 1 + v6;
  v9 = (*(v3 + 8 * (v0 + 787)))(v4 - 208);
  return (*(v3 + 8 * *(v4 - 204)))(v9);
}

uint64_t sub_23ABC1258@<X0>(_DWORD *a1@<X8>, uint8x8_t a2@<D2>)
{
  a2.i32[0] = *v2;
  v5 = vmovl_u8(a2).u64[0];
  *a1 = vuzp1_s8(vadd_s16(vsub_s16(v5, vand_s8(vadd_s16(v5, v5), 0x12001200120012)), 0x89008900890089), 0x12001200120012).u32[0];
  return (*(v4 + 8 * ((1257 * (((v3 - 242) | 0x50) == 241)) ^ v3)))();
}

uint64_t sub_23ABC12D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, char *a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v35 = v26 ^ 0x43E;
  v36 = 210068311 * (((v34 - 144) & 0xDE4619EA | ~((v34 - 144) | 0xDE4619EA)) ^ 0xD33249FD);
  *(v34 - 144) = v31;
  *(v34 - 136) = &a17;
  *(v34 - 128) = v27 - v36 - 1687009642 + (v26 ^ 0x43E);
  *(v34 - 120) = v26 - v36 - 182;
  (*(v29 + 8 * (v26 ^ 0xEF7)))(v34 - 144);
  a14 = &a24;
  a15 = &a19;
  *(v34 - 136) = (v35 - 284) ^ ((((((v34 - 144) | 0x390AB010) ^ 0xFFFFFFFE) - (~(v34 - 144) | 0xC6F54FEF)) ^ 0x51F883FC) * v28);
  *(v34 - 128) = v30;
  *(v34 - 144) = &a14;
  (*(v29 + 8 * (v35 ^ 0xAB8)))(v34 - 144);
  *(v34 - 104) = (v35 + 848) ^ (1037613739 * ((2 * (((v34 - 144) ^ 0x348A1410) & 0x1DDE5228) - ((v34 - 144) ^ 0x348A1410) - 501109294) ^ 0x7A994BD));
  *(v34 - 112) = v33;
  *(v34 - 128) = v30;
  *(v34 - 120) = &a26;
  *(v34 - 144) = &a17;
  *(v34 - 136) = &a14;
  v37 = (*(v29 + 8 * (v35 + 1453)))(v34 - 144);
  return (*(v29 + 8 * (((v32 != 0) * (((v35 - 742) | 0x325) - 336)) ^ v35)))(v37);
}

uint64_t sub_23ABC13A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v18 - 128) = (v16 + 337) ^ (843532609 * ((v18 - 144) ^ 0x516022B8));
  *(v18 - 120) = &a13;
  *(v18 - 112) = v15;
  *(v18 - 144) = &a13;
  *(v18 - 136) = v14;
  (*(v17 + 8 * (v16 | 0x144)))(v18 - 144);
  v19 = 843532609 * ((v18 + 1876584447 - 2 * ((v18 - 144) & 0x6FDA688F)) ^ 0x3EBA4A37);
  *(v18 - 124) = v16 - v19 - 1335;
  *(v18 - 136) = a10;
  *(v18 - 144) = (((v16 - 84) ^ 0x58C) + 1441727781 * (v13 - 1) - 1795819088) ^ v19;
  v20 = (*(v17 + 8 * (v16 ^ 0xEF4)))(v18 - 144);
  return (*(v17 + 8 * ((55 * (*(v18 - 128) != -1494163771)) ^ v16)))(v20);
}

uint64_t sub_23ABC151C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = v2 + v6 + (*(*(v10 + 8) + 4 * v3) ^ v7);
  *(*(a2 + 8) + 4 * v3) = v12 + v7 - (v9 & (2 * v12));
  return (*(v8 + 8 * (((v3 + 1 == v11) * (((v4 + 810) | v5) ^ a1)) ^ v4)))();
}

void sub_23ABC16AC(uint64_t a1, int a2)
{
  *(v3 + 1424) = 0;
  memset((v3 + 1432), 137, 104);
  v5 = STACK[0x250];
  v6 = STACK[0x250];
  *(v6 + 96) = v3;
  STACK[0x458] = v6 + 96;
  *(v3 + 476) = a2;
  STACK[0x468] = *(v4 + 8 * v2);
  STACK[0x238] = v5;
  JUMPOUT(0x23ABC1734);
}

void sub_23ABC1848()
{
  v0 = MEMORY[0x28223BE20]();
  v1 = *(v0 + 32) ^ (1037613739 * ((((2 * v0) | 0xC4E1D8C) - v0 - 103222982) ^ 0xD72523B9));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_23ABC1AC4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 1572));

  return v3(v1);
}

uint64_t sub_23ABC1C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51)
{
  v52 = STACK[0x3B0];
  v53 = *(STACK[0x3B0] + 96);
  if (v53 == 2)
  {
    return (*(v51 + 8 * ((2029 * (*(v52 + 92) == ((LODWORD(STACK[0x2B4]) - 1045) | 0xC2) - 459)) ^ (LODWORD(STACK[0x2B4]) - 312))))(a1, a2, a3, 18, 1237, 4286350579, 4277733856);
  }

  if (v53 == 1)
  {
    return (*(v51 + 8 * (((*(v52 + 92) == 0) * (a51 - 165)) ^ (LODWORD(STACK[0x2B4]) + 574))))(a1, 2076434430, a3, 4152868856, a5, 4294967189);
  }

  v54 = LODWORD(STACK[0x2B4]) - 322;
  STACK[0x2D0] = 91;
  *(v52 + 91) = (&STACK[0x2D0] ^ 0xBA) * (&STACK[0x2D0] + 17);
  return (*(v51 + 8 * ((1947 * (STACK[0x2D0] == 0)) ^ v54)))(a1, 2076434430, a3, 4152868856, a5, 4294967189);
}

uint64_t sub_23ABC1E14()
{
  ++*(v1 + 52);
  LODWORD(STACK[0x384]) = *(v1 + 360);
  STACK[0x450] = 20 * (v0 ^ 0x287u) + STACK[0x450] - 3132;
  LODWORD(STACK[0x43C]) = v3;
  return (*(v2 + 8 * (((STACK[0x3F0] == 0) * (73 * (v0 ^ 0x2A1) + 1504)) ^ v0)))();
}

uint64_t sub_23ABC1FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, _DWORD *a39)
{
  v41 = v39 - 2125915262;
  v42 = (*(v40 + 8 * (v39 ^ 0x809)))(a39 + 4, 0);
  v43 = a39[4] - 302249490 - ((2 * a39[4]) & 0xDBF813DC);
  a39[1] = a39[6] - 302249490 - ((2 * a39[6]) & 0xDBF813DC);
  a39[2] = v43;
  v44 = v39 ^ 0x82E;
  v45 = (*(v40 + 8 * v44))(v42);
  a39[3] = v45 - 302249490 - ((v41 + 1521416166) & (2 * v45));
  v46 = (*(v40 + 8 * v44))();
  *a39 = v46 - 302249490 - ((2 * v46) & 0xDBF813DC);
  LODWORD(a34) = a38 & 5;
  LODWORD(a33) = a38 - 2046953622;
  LODWORD(a32) = 32;
  return sub_23ABC2150(v46, v47, v48, v49, 2125915262, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_23ABC2150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v45 = *(v42 + 4 * (v40 - 1));
  v46 = (1664525 * (v45 ^ (v45 >> 30))) ^ *(v42 + 4 * v40);
  *(v42 + 4 * v40) = v43 + (((*(a39 + 4 * v43) ^ 0xD572C9F) - 223816863) ^ ((*(a39 + 4 * v43) ^ 0x4FF39F42) - 1341366082) ^ ((*(a39 + 4 * v43) ^ 0xAF58BA33) + 1353139661)) + 252990791 + (((v46 ^ 0x18B8F738) - 966835297) ^ ((v46 ^ 0x2AB99AC3) - 195154330) ^ ((v46 ^ 0x32016DFB) - 320415394));
  v47 = 1082434553 * ((0x7C3C43627EC2272 - ((v44 - 152) | 0x7C3C43627EC2272) + a37) ^ 0x4860F5BE43542B07);
  v48 = v44 - 160;
  *(v48 + 40) = v47 ^ 0x26F;
  *(v48 + 24) = v40 + 1 - v47;
  *(v44 - 108) = ((v41 - 1691702509) ^ 0x59) - v47;
  *(v44 - 148) = v47 + 1;
  *(v44 - 144) = 1583518113 - v47 + v41;
  *(v44 - 112) = v41 - 1691702509 - v47 + 32;
  *(v44 - 128) = (v41 - 1691702509) ^ v47;
  v49 = (*(v39 + 8 * (a5 + v41 + 1523)))(v44 - 152);
  return (*(v39 + 8 * *(v44 - 152)))(v49);
}

uint64_t sub_23ABC23FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  v21 = a18 < 0x9163FA90;
  if (v21 == v18 > 0x6E9C056F)
  {
    v21 = v18 - 1855718768 < a18;
  }

  return (*(v20 + 8 * ((v21 * (3 * (v19 ^ 0x562) + 6)) ^ v19)))(1380, a2, 21);
}

uint64_t sub_23ABC2464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v78 = *(STACK[0x230] + 52);
  v79 = 1785193651 * ((~(v74 | 0xEED718E3) + (v74 & 0xEED718E3)) ^ 0x13894F9);
  *(v77 - 184) = a63 + v79;
  *(v77 - 168) = (v78 ^ ((v78 ^ 0x27488EC3) - 1723449877) ^ ((v78 ^ 0x69C373B3) - 674381669) ^ ((v78 ^ 0xFEFFEB7F) + 1089558615) ^ (((83 * (v73 ^ 0x166) - 242919608) ^ v78) + ((v73 + 1573314098) & 0xA239257E ^ 0x4F8BECEF)) ^ 0xBA93F54D) + v79;
  *(v77 - 200) = v73 - v79 - 337;
  *(v77 - 196) = v79 + (a73 ^ 0xEF2FFCDF) + ((2 * a73) & 0xDE5FF9BE) + 1039514548;
  *(v77 - 208) = STACK[0x218];
  *(v77 - 192) = v76;
  *(v77 - 176) = &STACK[0x530];
  v80 = (*(v75 + 8 * (v73 ^ 0x9FE)))(v77 - 208);
  v81 = *(v77 - 164);
  LODWORD(STACK[0x43C]) = v81;
  return (*(v75 + 8 * ((1466 * (v81 == -1650139615)) ^ v73)))(v80);
}

uint64_t sub_23ABC2618(uint64_t a1, uint64_t a2)
{
  v2 = &v7[qword_27DFC8A88 - qword_27DFC8898];
  qword_27DFC8898 = (1793648501 * v2) ^ 0x985AED203B07ABA1;
  qword_27DFC8A88 = 1793648501 * (v2 ^ 0x985AED203B07ABA1);
  v3 = *(a2 + 4);
  v4 = *(&off_284DD4450 + ((117 * ((117 * v2) ^ qword_27DFC8A88)) ^ byte_23AC74EA0[byte_23AC80D70[(117 * ((117 * v2) ^ qword_27DFC8A88))] ^ 0x95]) - 170) - 4;
  if (v3 == 2124293528)
  {
    __asm { BRAA            X1, X17 }
  }

  if (v3 == 2124293535)
  {
    v5 = **(a2 + 8) - 9;
    __asm { BRAA            X2, X17 }
  }

  return 4294925278;
}

uint64_t sub_23ABC2954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = (v69 - 75222002) & 0x47BCBEF;
  v72 = (*(v70 + 8 * (v69 + 1404)))(*a69, a2, LODWORD(STACK[0x40C]));
  return (*(v70 + 8 * ((23 * ((((((v71 + 512072815) & 0xE17A65BF) - 634) ^ (LODWORD(STACK[0x320]) == -1650139615)) & 1) == 0)) ^ v71)))(v72);
}

uint64_t sub_23ABC29EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W8>)
{
  v6 = a2 + v4 - v3;
  v7 = *(v6 - 31);
  v8 = a1 + v4 - v3;
  v9.i64[0] = 0x1212121212121212;
  v9.i64[1] = 0x1212121212121212;
  v10.i64[0] = 0x8989898989898989;
  v10.i64[1] = 0x8989898989898989;
  *(v8 - 15) = vaddq_s8(vsubq_s8(*(v6 - 15), vandq_s8(vaddq_s8(*(v6 - 15), *(v6 - 15)), v9)), v10);
  *(v8 - 31) = vaddq_s8(vsubq_s8(v7, vandq_s8(vaddq_s8(v7, v7), v9)), v10);
  return (*(v5 + 8 * ((121 * (v3 + (a3 + 608) == 1913)) ^ a3)))();
}

uint64_t sub_23ABC2AD4(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

void sub_23ABC2AEC(uint64_t a1)
{
  v3 = *(*(a1 + 16) + 4) == 1173454827 || *(*a1 + 4) == 1173454827;
  v1 = *(a1 + 8) ^ (2066391179 * (a1 ^ 0xAF278218));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_23ABC2CD4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x314]) = 2;
  STACK[0x358] = 0;
  LODWORD(STACK[0x40C]) = 0;
  LODWORD(STACK[0x4BC]) = 0;
  return (*(v2 + 8 * ((100 * ((((a1 + 381) ^ ((a1 - 657) | 0x40A) ^ 0x3E) & v1) != 0)) ^ a1)))();
}

uint64_t sub_23ABC2D2C(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

void sub_23ABC2DA0(uint64_t a1, unint64_t a2)
{
  v7 = v2 ^ 0x32F;
  v8 = &STACK[0x1830] + v3;
  v9 = *v4;
  *(v8 + 17) = *(v4 + 1);
  *(v8 + 25) = *(v4 + 9);
  *(v8 + 29) = *(v4 + 13);
  v8[31] = *(v4 + 15);
  v11 = *v4;
  v10 = v4[1];
  *v8 = v11;
  *(v8 + 1) = v10;
  v8[16] = v9;
  v12 = (v8 + 16);
  v13 = *(v6 + 8 * (v7 - 549));
  LOBYTE(v8) = *(v13 + (v8[21] ^ 0x56));
  v14 = *(v6 + 8 * (v7 ^ 0x253)) - 8;
  LODWORD(v11) = *(v14 + (v7 ^ 0x79 ^ v12[15] ^ 0x33u));
  v15 = *(v14 + (v12[7] ^ 0xB3));
  LODWORD(v8) = (v15 ^ 0x1FFFFFFC) & ((((19 * v8 - 20) ^ (76 * v8 - 124)) << 16) ^ 0x1FCDD52D);
  v16 = v15 & 0xD2;
  v17 = *(v14 + (v12[11] ^ 0x19));
  v18 = *(v6 + 8 * (v7 ^ 0x20B)) - 8;
  v19 = *(v18 + (v12[2] ^ 0xA4));
  LODWORD(v8) = v8 | v16;
  v20 = *(v6 + 8 * (v7 - 543));
  v21 = *(v20 + (v12[12] ^ a2));
  v22 = (v19 ^ (v19 >> 5) ^ (v19 >> 3)) << 8;
  v23 = *(v20 + (*v12 ^ 0xBBLL));
  v24 = *(v13 + (v12[13] ^ 0xCFLL));
  v25 = (((v23 ^ (v23 >> 3) ^ (v23 >> 2) ^ 0x3F) << 24) ^ 0x94133290) & (v22 ^ 0xFF5718F5) | v22 & 0xCD00;
  LOBYTE(v23) = (19 * v24 - 20) ^ (76 * v24 - 124);
  v26 = *(v20 + (v12[8] ^ 4));
  v27 = v23 << 16;
  LODWORD(v11) = (v27 ^ 0xFF489DFF) & (((((v21 ^ (v21 >> 3) ^ (v21 >> 2) ^ 0xA4) << 24) ^ 0x62BB8D8D) & (v11 ^ 0xFFFB9D0C) | v11 & 0x72) ^ 0xBE7210E2);
  v28 = (((v26 ^ (v26 >> 3) ^ (v26 >> 2) ^ 0x5A) << 24) ^ 0x77946D36) & (v17 ^ 0xFF9CEFF7) | v17 & 0xC9;
  v29 = (v25 ^ 0x1F68081A) & (*(v14 + (v12[3] ^ 0xF1)) ^ 0xFF7FFFC4) | *(v14 + (v12[3] ^ 0xF1)) & 0x75;
  v30 = *(v18 + (v12[6] ^ 0xAELL));
  v31 = (((v30 ^ (v30 >> 5) ^ (v30 >> 3)) << 8) ^ 0x5FBF7920) & (v8 ^ 0x40892A07) | v8 & 0x4000DF;
  LOBYTE(v8) = *(v13 + (v12[1] ^ 0x72));
  v32 = *(v18 + (v12[10] ^ 0x41)) ^ (*(v18 + (v12[10] ^ 0x41)) >> 5) ^ (*(v18 + (v12[10] ^ 0x41)) >> 3);
  v33 = (*(v18 + (v12[14] ^ 0xC9)) ^ 0x5D ^ (*(v18 + (v12[14] ^ 0xC9)) >> 3) ^ (((*(v18 + (v12[14] ^ 0xC9)) ^ 0x5Du) >> 5) | 0xF0)) << 8;
  v34 = *(v20 + (v12[4] ^ 0x51));
  LODWORD(v11) = (v33 ^ 0xFFFF88FF) & ((v27 & 0x360000 | v11) ^ 0xC81C834D);
  v35 = (v34 ^ (v34 >> 3) ^ (v34 >> 2) ^ 0xD3) << 24;
  LOBYTE(v12) = *(v13 + (v12[9] ^ v5));
  LODWORD(v12) = ((-121 * (-48 - 4 * v12) + 104 * v12 - 44) ^ (19 * v12 - 20)) << 16;
  LODWORD(STACK[0x200]) = v29 & 0x187E1C28 ^ 0xD4123E64 ^ ((((19 * v8 - 20) ^ (76 * v8 - 124)) << 16) ^ 0xE788E3D7) & (v29 ^ 0xEC84851C);
  LODWORD(STACK[0x240]) = v35 & 0x9B000000 ^ 0xBD25C2F7 ^ (v35 ^ 0x9FFFFFF) & (v31 ^ 0x3B6D9DD4);
  LODWORD(STACK[0x248]) = v33 & 0xFFFFE1FF ^ 0xECAD3CC7 ^ v11;
  LODWORD(STACK[0x238]) = v12 & 0x7A0000 ^ 0x2F7A0E84 ^ (v12 ^ 0xFF1CFFFF) & ((v32 << 8) & 0x5B00 ^ 0x76199F6C ^ ((v32 << 8) ^ 0xFF9C20FF) & (v28 ^ 0x3608C9AB));
  v36 = STACK[0x4F0];
  STACK[0x278] = STACK[0x4E8] + 7;
  STACK[0x268] = v36 + 7;
  JUMPOUT(0x23ABC3240);
}

uint64_t sub_23ABC4CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, int a17, char a18, __int16 a19, char a20, char *a21, int a22, unsigned int a23, char *a24, int a25, char *a26, int *a27, uint64_t a28)
{
  a17 = -1266733994;
  v30 = *(a2 + 4);
  v31 = *(a2 + 8);
  v32 = 1082434553 * (((&a21 | 0xC1A4B8DD) + (~&a21 | 0x3E5B4722)) ^ 0x5AE34E56);
  a25 = v32 + v29 - 66;
  a21 = &a14;
  a23 = v32 + v30 - 41972552;
  a24 = &a20;
  a26 = &a18;
  a27 = &a17;
  a28 = v31;
  v34 = (*(v28 + 8 * (v29 + 1633)))(&a21);
  return (*(v28 + 8 * ((45 * (a22 != ((v29 + 27) ^ 0x9DA4DC17))) ^ v29)))(v34, a2);
}

uint64_t sub_23ABC4E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v3 + a2 - 16);
  *(a1 + a2 - 32) = *(v3 + a2 - 32);
  *(a1 + a2 - 16) = v5;
  return (*(v4 + 8 * ((((a2 & 0xFFFFFFE0) == 32) * ((481 * ((v2 - 551) ^ 0x51A)) ^ 0xF8)) ^ (v2 - 867))))();
}

uint64_t sub_23ABC50B4()
{
  v0.n128_u64[0] = 0x1212121212121212;
  v0.n128_u64[1] = 0x1212121212121212;
  v1.n128_u64[0] = 0x8989898989898989;
  v1.n128_u64[1] = 0x8989898989898989;
  return sub_23ABC50DC(v0, v1);
}

uint64_t sub_23ABC50DC@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v11 = (v6 + v3 + v4);
  v12 = vaddq_s8(vsubq_s8(*(v10 + v3 + 16), vandq_s8(vaddq_s8(*(v10 + v3 + 16), *(v10 + v3 + 16)), a2)), a3);
  *v11 = vaddq_s8(vsubq_s8(*(v10 + v3), vandq_s8(vaddq_s8(*(v10 + v3), *(v10 + v3)), a2)), a3);
  v11[1] = v12;
  return (*(v9 + 8 * (((v7 + v3 == a1) * v8) ^ v5)))();
}

uint64_t sub_23ABC5290(uint64_t a1, uint64_t a2)
{
  v3 = LODWORD(STACK[0x2B4]) - 1027;
  v4 = STACK[0x4A8];
  STACK[0x340] = *(v2 + 8 * (LODWORD(STACK[0x2B4]) - 1219));
  v5 = STACK[0x238];
  STACK[0x508] = v4;
  LODWORD(STACK[0x514]) = 1866308703;
  STACK[0x480] = v5;
  return (*(v2 + 8 * ((((*(v4 + 68) & (((v3 - 769538335) & 0x2DDE3F1Bu) - 1753)) - 44 > 0xFFFFFFBF) * (((v3 + 812149876) & 0xCF9797F3) - 1360)) ^ v3)))(a1, a2, 4034, 1518);
}

uint64_t sub_23ABC530C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, int a14, int a15, int a16, char *a17, uint64_t a18, char *a19)
{
  v23 = 50899313 * ((((&a15 | 0x246595EC) ^ 0xFFFFFFFE) - (~&a15 | 0xDB9A6A13)) ^ 0x13FBAE45);
  a18 = v19;
  a19 = &a13;
  a15 = v23 ^ 0x1C559921;
  a16 = (v22 - 1395) ^ v23;
  a17 = &a11;
  v24 = (*(v20 + 8 * (v22 + 460)))(&a15);
  return (*(v20 + 8 * ((289 * (*(v19 + 24) == (((v22 - 1737) | 0x101) ^ (v21 + 255)))) ^ v22)))(v24);
}

uint64_t sub_23ABC53BC()
{
  v2 = STACK[0x488];
  v3 = (LODWORD(STACK[0x390]) - 2124293525);
  STACK[0x4D8] = v3;
  return (*(v0 + 8 * ((207 * (v3 != (v1 ^ 0x458) - 326)) ^ (v1 - 984))))(v2);
}

void sub_23ABC54EC(int a1@<W8>)
{
  if (a1 == 718195376)
  {
    v2 = -1650139615;
  }

  else
  {
    v2 = 1650165241;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_23ABC554C()
{
  result = (*(v1 + 8 * (v3 + 1086)))(*v4);
  *v2 = 0;
  *v0 = 0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 56) = 1682673288;
  return result;
}

void sub_23ABC5CD0()
{
  v3 = (((v0 ^ 0xBBD16C63) + 1143903133) ^ ((v0 ^ 0xDCB8F64C) + 591858100) ^ ((v1 ^ 0x7BBEF43D) + (v0 ^ 0x84410F66))) - 112904444 + (((*(v2 - 140) ^ 0x945BCEC6) + 1805922618) ^ ((*(v2 - 140) ^ 0x75B04AF5) - 1974487797) ^ ((*(v2 - 140) ^ 0x2C3117A) - 46338426));
  v4 = (v3 ^ 0xA883EB0F) & (2 * (v3 & 0xCD0BF38E)) ^ v3 & 0xCD0BF38E;
  v5 = ((2 * (v3 ^ 0xB087A903)) ^ 0xFB18B51A) & (v3 ^ 0xB087A903) ^ (2 * (v3 ^ 0xB087A903)) & 0x7D8C5A8C;
  v6 = v5 ^ 0x4844A85;
  v7 = (v5 ^ 0x78081008) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xF6316A34) & v6 ^ (4 * v6) & 0x7D8C5A8C;
  v9 = (v8 ^ 0x74004A00) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x98C1089)) ^ 0xD8C5A8D0) & (v8 ^ 0x98C1089) ^ (16 * (v8 ^ 0x98C1089)) & 0x7D8C5A80;
  v11 = v9 ^ 0x7D8C5A8D ^ (v10 ^ 0x58840800) & (v9 << 8);
  *(v2 - 140) = v3 ^ (2 * ((v11 << 16) & 0x7D8C0000 ^ v11 ^ ((v11 << 16) ^ 0x5A8D0000) & (((v10 ^ 0x2508520D) << 8) & 0x7D8C0000 ^ 0x71840000 ^ (((v10 ^ 0x2508520D) << 8) ^ 0xC5A0000) & (v10 ^ 0x2508520D)))) ^ 0x6423D3DD;
  JUMPOUT(0x23ABC5EE4);
}

uint64_t sub_23ABC6834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v18 = (LODWORD(STACK[0x2B4]) - 1308) | 4;
  v19 = STACK[0x4A8];
  STACK[0x448] = *(v17 + 8 * (LODWORD(STACK[0x2B4]) - 1280));
  STACK[0x3B0] = v19;
  STACK[0x4D0] = a17;
  v20 = *(v19 + 68);
  *(v19 + (v20 & 0x3F)) = 9;
  return (*(v17 + 8 * ((1305 * ((v20 & 0x3Fu) > ((25 * (v18 ^ 0x3D)) ^ 0x5F4u))) ^ v18)))(a1, a2, a3, a4, 13, a6, a7, 1650165240);
}

uint64_t sub_23ABC6848@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, int a3@<W3>, unint64_t a4@<X8>)
{
  v6 = a1 < a2;
  if (v6 == (v4 + 1) > 0xFFFFFFFF34186079)
  {
    v6 = ((399 * (a3 ^ 0x5C3u)) ^ a4) + v4 < a1;
  }

  return (*(v5 + 8 * ((v6 * ((3 * (a3 ^ 0x507)) ^ 0x274)) ^ a3)))();
}

uint64_t sub_23ABC68B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v19 = 1361651671 * ((v18 - 128) ^ 0xD322F08C);
  *(v18 - 128) = (((v17 << 6) & 0x9BDEEFC0) - 136912946 + ((v17 << (a11 + 57)) ^ 0x4DEF77F3)) ^ v19;
  *(v18 - 124) = v19 + a11 + 1423;
  *(v18 - 120) = &a16;
  v20 = (*(v16 + 8 * (a11 + 1706)))(v18 - 128);
  return (*(v16 + 8 * ((1928 * ((a11 ^ 0x320u) - 1173454827 + *(a9 + 4) - 749 < 0x7FFFFFFF)) ^ a11)))(v20);
}

uint64_t sub_23ABC69A8@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v30 = a1[5];
  v36 = a1[3];
  v31 = *a1;
  v32 = (*a1)[1];
  *(v29 - 112) = (v28 - 227) ^ (((v29 - 1820497649 - 2 * ((v29 - 144) & 0x937D699F)) ^ 0x427F44E0) * v26);
  *(v29 - 144) = &a24;
  *(v29 - 136) = v32;
  *(v29 - 128) = v31;
  *(v29 - 120) = v30;
  *(v29 - 104) = a2;
  (*(v27 + 8 * (v28 + 1115)))(v29 - 144);
  *(v29 - 128) = (v28 + 1020) ^ (843532609 * ((((v29 - 144) ^ 0x1200000 | 0xFC57A29F) + ((v29 - 144) ^ 0xF853821F | 0x3A85D60)) ^ 0xA813A0A6));
  *(v29 - 120) = &a20;
  *(v29 - 112) = v30;
  *(v29 - 144) = &a24;
  *(v29 - 136) = v31;
  (*(v27 + 8 * (v28 + 1007)))(v29 - 144);
  *(v29 - 112) = (v28 - 227) ^ (1037613739 * ((-1271337861 - ((v29 - 144) | 0xB438EC7B) + ((v29 - 144) | 0x4BC71384)) ^ 0x9AC53EFB));
  *(v29 - 128) = v31;
  *(v29 - 120) = v30;
  *(v29 - 104) = &a20;
  *(v29 - 144) = &a26;
  *(v29 - 136) = &a24;
  (*(v27 + 8 * (v28 ^ 0xBA5)))(v29 - 144);
  *(v29 - 112) = (v28 - 227) ^ (1037613739 * ((((v29 - 144) ^ 0xA09561A4) + 550412739 - 2 * (((v29 - 144) ^ 0xA09561A4) & 0x20CEA1C3)) ^ 0x5159ED18));
  *(v29 - 128) = v31;
  *(v29 - 120) = v30;
  *(v29 - 104) = &a20;
  *(v29 - 144) = &a14;
  *(v29 - 136) = &a26;
  (*(v27 + 8 * (v28 ^ 0xBA5)))(v29 - 144);
  *(v29 - 144) = &a18;
  *(v29 - 136) = &a14;
  *(v29 - 128) = v31;
  *(v29 - 104) = &a20;
  *(v29 - 112) = (v28 - 227) ^ (1037613739 * ((((v29 - 144) | 0x1F87444D) + (~(v29 - 144) | 0xE078BBB2)) ^ 0xCE856933));
  *(v29 - 120) = v30;
  (*(v27 + 8 * (v28 + 1115)))(v29 - 144);
  *(v29 - 128) = v31;
  *(v29 - 120) = v30;
  *(v29 - 104) = &a20;
  *(v29 - 144) = &a10;
  *(v29 - 136) = &a18;
  *(v29 - 112) = (v28 - 227) ^ (1037613739 * ((v29 - 1491471041 - 2 * ((v29 - 144) & 0xA719F5CF)) ^ 0x761BD8B0));
  (*(v27 + 8 * (v28 + 1115)))(v29 - 144);
  *(v29 - 104) = &a20;
  *(v29 - 144) = &a22;
  *(v29 - 136) = &a10;
  *(v29 - 128) = v31;
  *(v29 - 120) = v30;
  *(v29 - 112) = (v28 - 227) ^ (1037613739 * (((v29 - 144) & 0x3C1505C5 | ~((v29 - 144) | 0x3C1505C5)) ^ 0x12E8D745));
  (*(v27 + 8 * (v28 + 1115)))(v29 - 144);
  *(v29 - 144) = &a16;
  *(v29 - 136) = &a22;
  *(v29 - 104) = &a20;
  *(v29 - 112) = (v28 - 227) ^ (1037613739 * ((v29 - 144) ^ 0xD1022D7F));
  *(v29 - 128) = v31;
  *(v29 - 120) = v30;
  (*(v27 + 8 * (v28 + 1115)))(v29 - 144);
  *(v29 - 104) = &a20;
  *(v29 - 128) = v31;
  *(v29 - 120) = v30;
  *(v29 - 144) = &a20;
  *(v29 - 136) = &a16;
  *(v29 - 112) = (v28 - 227) ^ (1037613739 * ((2 * ((v29 - 144) & 0x38F8A640) - (v29 - 144) + 1191664061) ^ 0x960574C2));
  (*(v27 + 8 * (v28 + 1115)))(v29 - 144);
  v33 = *v31;
  *(v29 - 128) = (v28 - 65) ^ (210068311 * ((v29 - 144) ^ 0xF28BAFE8));
  *(v29 - 144) = v33;
  *(v29 - 136) = &a12;
  (*(v27 + 8 * (v28 ^ 0x405)))(v29 - 144);
  *(v29 - 136) = v36;
  *(v29 - 140) = (v28 + 20) ^ (1388665877 * ((v29 - 144) ^ 0x8DAD62EC));
  v34 = (*(v27 + 8 * (v28 ^ 0xBA2)))(v29 - 144);
  return (*(v27 + 8 * ((31 * (*(v29 - 144) + ((v28 - 1999559832) & 0x772EDCAF ^ 0xC03519BE) < ((v28 + 216318384) & 0xF31B3EFC) + 2147482467)) ^ v28)))(v34);
}

uint64_t sub_23ABC6EA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * ((v3 + 2057653324) & 0x855AB78F ^ 0xEA)) ^ (v3 + 254))))();
}

uint64_t sub_23ABC7304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  STACK[0x278] = v52;
  STACK[0x450] = v52 - 112;
  return v51(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_23ABC7438@<X0>(int a1@<W4>, uint64_t a2@<X8>)
{
  v6 = v2 - 1;
  *(v5 + v6) = *(a2 + v6);
  return (*(v4 + 8 * (((v6 == 0) * a1) ^ (v3 - 947))))();
}

uint64_t sub_23ABC74AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v18 - 104) = v15 - ((2 * ((v18 - 128) & 0x74C51E58) - (v18 - 128) + 188408224) ^ 0x9C372DB3) * v16 + 584;
  *(v18 - 112) = v13;
  *(v18 - 128) = &a13;
  v19 = (*(v14 + 8 * (v15 ^ 0x8A5)))(v18 - 128);
  return (*(v14 + 8 * (v15 ^ (2 * (*(v18 - 120) > ((v15 + 1483) ^ (v17 + 469)))))))(v19);
}

uint64_t sub_23ABC768C(uint64_t a1, uint64_t a2)
{
  v3 = LODWORD(STACK[0x2B4]) - 1027;
  v4 = STACK[0x4A8];
  STACK[0x340] = *(v2 + 8 * (LODWORD(STACK[0x2B4]) - 1217));
  v5 = STACK[0x248];
  STACK[0x508] = v4;
  LODWORD(STACK[0x514]) = 1866308703;
  STACK[0x480] = v5;
  return (*(v2 + 8 * ((((*(v4 + 68) & (((v3 - 769538335) & 0x2DDE3F1Bu) - 1753)) - 44 > 0xFFFFFFBF) * (((v3 + 812149876) & 0xCF9797F3) - 1360)) ^ v3)))(a1, a2, 4034, 1518);
}

uint64_t sub_23ABC76AC(uint64_t result)
{
  v2 = *(v1 + 8);
  *result = 0;
  *(result + 8) = 0x12BF10E912BF10E9;
  *(result + 16) = 0xDE8D4FD40B7FC587;
  *(result + 24) = -1650139615;
  *v2 = result;
  *v1 = -1650139615;
  return result;
}

uint64_t sub_23ABC76E8@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 ^ 0x3C2;
  v8 = 97 * (v7 ^ 0x5B7);
  *(*(a1 + 8) + 4 * ((v8 ^ (v2 + 1065)) + v5)) = (v7 + v4) ^ v6;
  *(a1 + 4) = v5 + 1;
  v9 = v5 + 1 + v2;
  if (v9 < 0)
  {
    v9 = -v9;
  }

  return (*(v1 + 8 * ((105 * (((((v8 ^ 0xE7F1FBD4 ^ v9) + ((2 * v9) & 0xCFE3FFFE) + 403570688) >= 0) ^ (-13 * (v8 ^ 0x28))) & 1)) ^ v8 ^ 0x69B)))();
}

uint64_t sub_23ABC77B8@<X0>(int a1@<W0>, int a2@<W8>)
{
  v8 = STACK[0x430];
  *(v8 + 392) = v2;
  *(v8 + 396) = STACK[0x394];
  *(v8 + 400) = STACK[0x328];
  *(v8 + 408) = 1569415598 - v4 + LODWORD(STACK[0x2DC]);
  *(v8 + 416) = v6 + (v4 + 1266733994);
  v9 = (*(v5 + a2 * a1 + 8))(STACK[0x238], v8 + 392);
  return (*(v7 + 8 * (((v9 - 1650139615 - ((2 * v9) & 0x3B49BC42) == -1650139615) * ((v3 - 709) ^ 0x715)) ^ v3)))(48);
}

uint64_t sub_23ABC7878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v16 - 112) = (v15 + 560) ^ (210068311 * (((v16 - 128) & 0xC02BF4FC | ~((v16 - 128) | 0xC02BF4FC)) ^ 0xCD5FA4EB));
  *(v16 - 128) = a12;
  *(v16 - 120) = &a13;
  (*(v13 + 8 * (v15 + 1644)))(v16 - 128);
  *(v16 - 104) = v15 - 1564307779 * (((((v16 - 128) | 0x5CB35A10) ^ 0xFFFFFFFE) - (~(v16 - 128) | 0xA34CA5EF)) ^ 0x344169FC) + 435;
  *(v16 - 128) = v14;
  *(v16 - 112) = a12;
  v17 = (*(v13 + 8 * (v15 + 1742)))(v16 - 128);
  return (*(v13 + 8 * ((178 * (*(v16 - 120) + ((v15 + 2003692094) & 0x889217D7 ^ 0x83940175) >= ((v15 + 1230401150) & 0xB6A992EF ^ 0xDD410C8A))) ^ v15)))(v17);
}

uint64_t sub_23ABC7B10(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v9 = *(v6 + 48 * v8 + 36);
  v11 = v9 + a4 < (v5 + v4 - 597) && v9 != a3 + ((v4 + 75) | 0x45) - 741;
  return (*(v7 + 8 * ((1755 * v11) ^ v4)))();
}

void sub_23ABC7B60(int a1@<W8>)
{
  *v6 = *v2;
  *(v5 - 0x3AE8D8D253E1E974) = v1;
  *v2 = 0;
  *(v2 + 8) = 0x12BF10E912BF10E9;
  v3 = *(v2 + 24);
  v4 = *(v2 + 20) | (a1 - 228);
  *(v2 + 16) = 192923015;
  *(v2 + 20) = v4;
  *(v7 + 4) = v3;
}

uint64_t sub_23ABC7BF0()
{
  v2 = &STACK[0x540] + v0;
  *v2 = 1569415598;
  *(v2 + 1) = 0;
  *(v2 + 4) = 786031369;
  *(v2 + 6) = 2124293525;
  *(v2 + 4) = 0;
  *(v2 + 10) = 2124293525;
  STACK[0x2C0] = &STACK[0x540] + v0 + 40;
  *(v2 + 6) = 0;
  STACK[0x2F0] = &STACK[0x540] + v0 + 48;
  *(v2 + 14) = 2124293525;
  STACK[0x498] = &STACK[0x540] + v0 + 56;
  *(v2 + 8) = 0;
  STACK[0x4A0] = &STACK[0x540] + v0 + 64;
  STACK[0x2F8] = &STACK[0x540] + v0 + 0x1F40B6A90E91AF22;
  *(v2 + 18) = 2124293525;
  *(v2 + 10) = 0;
  STACK[0x388] = &STACK[0x540] + v0 + 80;
  STACK[0x250] = &STACK[0x540] + v0;
  v2[88] = 60;
  *v1 = 1569415598;
  memset(v1 + 1, 137, 20);
  v1[7] = 0;
  STACK[0x200] = (v1 + 7);
  v1[6] = 2124293525;
  v1[58] = 0;
  memset(v1 + 109, 137, 40);
  memset(v1 + 282, 137, 40);
  return sub_23ABC7D18(48);
}

uint64_t sub_23ABC7D18@<X0>(uint64_t a1@<X8>)
{
  v7 = (v3 + a1);
  *v7 = 0u;
  v7[1] = 0u;
  return (*(v6 + 8 * ((((v2 ^ v5) + a1 != 256) * v4) ^ v1)))();
}

uint64_t sub_23ABC7F34()
{
  v4 = v0 ^ 0x500;
  v5 = (*(v1 + 8 * (v0 ^ 0x9C2)))(*v3);
  return (*(v1 + 8 * (((2 * (((*v2 == 0) ^ v4) & 1)) & 0xF7 | (8 * (((*v2 == 0) ^ v4) & 1))) ^ v4)))(v5);
}

uint64_t sub_23ABC83F8(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, uint64_t a20, unsigned int a21, uint64_t a22, uint64_t a23, unsigned int a24)
{
  v26.n128_u64[0] = 0x1212121212121212;
  v26.n128_u64[1] = 0x1212121212121212;
  v27.n128_u64[0] = 0x8989898989898989;
  v27.n128_u64[1] = 0x8989898989898989;
  return (*(v25 + 8 * (((((v24 - 180) ^ 0x6FE) + ((v24 - 1005043990) & 0x3BE7C6FF) - 2884) * (a15 < 0xFFFFFFFE)) ^ (v24 - 180))))(598920227, a24, a19, a7, a21, 3300653885, 2490375427, 1695740536, a1, a2, a3, v26, v27);
}

void sub_23ABC85A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v19 - 128) = &a17;
  *(v19 - 120) = a12;
  *(v19 - 112) = (v18 - 73) ^ (210068311 * (((v19 - 128) & 0xA071C278 | ~((v19 - 128) | 0xA071C278)) ^ 0xAD05926F));
  (*(v17 + 8 * (v18 ^ 0x41D)))(v19 - 128);
  JUMPOUT(0x23ABC860CLL);
}

uint64_t sub_23ABC8718(uint64_t a1, uint64_t a2)
{
  v7 = *(&STACK[0x28C] + v2 + 72);
  v8 = ((((v4 + 2076111750) & 0x4BBC34EB) + 1882426631) ^ v2) + ((2 * v2) & 0x77DF7BD8) + v3;
  *(a2 + v8) = (HIBYTE(v7) ^ 0xE3) - ((2 * (HIBYTE(v7) ^ 0xE3)) & 0x12) - 119;
  *(a2 + v8 + 1) = (BYTE2(v7) ^ 0x28) - 2 * ((BYTE2(v7) ^ 0x28) & 0xB ^ BYTE2(v7) & 2) - 119;
  *(a2 + v8 + 2) = (BYTE1(v7) ^ 0x95) - 2 * ((BYTE1(v7) ^ 0x95) & 0xB ^ BYTE1(v7) & 2) - 119;
  *(a2 + v8 + 3) = v7 ^ 0xC0;
  return (*(v6 + 8 * (((v2 + 4 < LODWORD(STACK[0x2E8])) * v5) ^ v4)))();
}

uint64_t sub_23ABC882C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  (*(v27 + 8 * (v26 + 1526)))(a14 - 0x4A1F7A17DDF7DEEFLL, 0x100004077774924);
  v30 = (*(v27 + 8 * (v28 ^ (v28 - 2118))))();
  *v29 = v30;
  return sub_23ABC88E4(v30, 3813204163, 401307705, 4233627722, 521201803, 1005660779, 4052, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_23ABC8A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = 5 * (v12 ^ 0x6FC);
  v16 = (v15 - 1254133884) & 0x4AC08F7B;
  v18 = ((((a12 - 1447502973) ^ 0x28BF115) - 169523636) ^ (a12 - 1447502973) ^ (((a12 - 1447502973) ^ 0x5FCB3FFF) - 1465546590) ^ ((v15 ^ 0x8B6E9004) + ((a12 - 1447502973) ^ 0x7C002020)) ^ ((*(v13 - 140) ^ 0xDEBF174D) + ((a12 - 1447502973) ^ 0x29D1A66B))) == 0x89148A1 || ((((((a12 - 125) ^ 0x15) + 76) ^ (a12 - 125) ^ (30 - a12) ^ ((v15 ^ 4) + ((a12 - 125) ^ 0x20))) ^ ((*(v13 - 140) ^ 0x4D) + ((a12 - 125) ^ 0x6B))) & 0xF) != (v16 ^ 0x67A);
  v19 = *(v14 + 8 * ((212 * v18) ^ v15));
  *(v13 - 144) = -42899;
  *(v13 - 140) = v16;
  return v19();
}

uint64_t sub_23ABC8B18@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W5>, uint64_t a4@<X6>, int a5@<W8>)
{
  v11 = (*(v9 + 4 * a5) ^ v5) + HIDWORD(v6) + (v8 >> ((v10 + 45) ^ 0x6Du));
  *(v9 + 4 * a3) = v11 + v5 - (a2 & (2 * v11));
  *(v9 + 4 * a5) = HIDWORD(v11) + v5 - 2 * HIDWORD(v11);
  return (*(v7 + 8 * (v10 ^ (281 * (a1 + 1 == a4)))))();
}

uint64_t sub_23ABC8B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  if (a45)
  {
    v64 = a47 == 0;
  }

  else
  {
    v64 = 1;
  }

  v65 = v64;
  STACK[0x240] = a45 + 1128;
  STACK[0x238] = a47 + 1148;
  STACK[0x200] = a47 + 1168;
  LODWORD(STACK[0x268]) = 1418567364;
  LODWORD(STACK[0x248]) = v65;
  STACK[0x250] = a47;
  STACK[0x270] = a47 + 1432;
  return (*(v62 + 8 * (((((5 * ((v63 - 498) ^ 0x22A) - 220) | 0x20) ^ a6) * v65) | (5 * ((v63 - 498) ^ 0x22A) - 446))))(a1, a45, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a47 + 1448, a55, a56, a45 + 800, a58, a59, a60, a61, a62);
}

void sub_23ABC8C54(uint64_t a1)
{
  v1 = 1082434553 * (((a1 | 0x1AAF5C21) - a1 + (a1 & 0xE550A3DE)) ^ 0x81E8AAAB);
  v2 = **(a1 + 40) - 272887315;
  v3 = *(a1 + 12) - v1 + 673025013;
  v4 = v2 < 0xA43B3E42;
  v5 = v2 > v3;
  if (v3 < 0xA43B3E42 != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

uint64_t sub_23ABC8D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v23 - 104) = &a17;
  *(v23 - 112) = (v20 + 647) ^ (((v23 - 144) ^ 0xD1022D7F) * v19);
  *(v23 - 128) = a15;
  *(v23 - 120) = a14;
  *(v23 - 144) = &a19;
  *(v23 - 136) = &a19;
  v24 = (*(v21 + 8 * ((v20 + 279) ^ 0x9D6)))(v23 - 144);
  return (*(v21 + 8 * ((31 * (v22 + a13 + 1019 < ((((v20 + 1423) | 0x108) - 640) ^ 0x7FFFFB63u))) ^ (((v20 + 1423) | 0x108) - 813))))(v24);
}

uint64_t sub_23ABC8FF8()
{
  v2 = STACK[0x2BC];
  LODWORD(STACK[0x37C]) = LODWORD(STACK[0x2BC]) + 64;
  v3 = LODWORD(STACK[0x514]) + 841776683;
  v4 = v2 - 1586881866 > v3;
  if (v3 < 0xA16A1A76 != v2 - 1586881866 < (((11 * ((v0 - 42) ^ 0x4F6) + 10) | 0x108) ^ 0xA16A1B5E))
  {
    v4 = v2 - 1586881866 < (((11 * ((v0 - 42) ^ 0x4F6) + 10) | 0x108) ^ 0xA16A1B5E);
  }

  return (*(v1 + 8 * ((434 * !v4) ^ (v0 - 42))))();
}

uint64_t sub_23ABC9088@<X0>(int a1@<W0>, uint64_t a2@<X7>, unsigned int a3@<W8>)
{
  v13 = (a2 + 4 * v4);
  v14 = HIDWORD(v6) + (*v13 ^ a3) + HIDWORD(v12) + v5 * (*(*(v7 + 8) + 4 * v4) ^ a3);
  *(v13 - 1) = v14 + a3 - ((v14 << ((((v9 ^ 0xD7) + 20) & v10) - 18)) & a1);
  return (*(v8 + 8 * (((v4 + 1 == v3) * v11) ^ ((v9 ^ 0x2D7) - 1172))))();
}

uint64_t sub_23ABC9180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v34 - 104) = &a30;
  *(v34 - 128) = a14;
  *(v34 - 120) = a13;
  *(v34 - 112) = (v30 + 368) ^ (1037613739 * ((1892514659 - ((v34 - 144) | 0x70CD7B63) + ((v34 - 144) | 0x8F32849C)) ^ 0x5E30A9E3));
  *(v34 - 144) = &a18;
  *(v34 - 136) = &a18;
  v35 = (*(v31 + 8 * (v30 + 1710)))(v34 - 144);
  return (*(v31 + 8 * ((31 * (v33 + v32 + 1019 < (((v30 ^ 0x680) - 640) ^ 0x7FFFFB63u))) ^ ((v30 ^ 0x680) - 813))))(v35);
}

void sub_23ABC92D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21)
{
  v26 = (((v25 - 144) & 0x5AD5C0C5 | ~((v25 - 144) | 0x5AD5C0C5)) ^ 0x6D4BFB6C) * v24;
  *(v25 - 144) = v23;
  *(v25 - 116) = (((v22 - 288) ^ 0xC53614C3) + a19) ^ v26;
  *(v25 - 128) = a21;
  *(v25 - 136) = v22 - 339 - v26 + 921;
  (*(v21 + 8 * (v22 + 1367)))(v25 - 144);
  JUMPOUT(0x23ABAD728);
}

void sub_23ABC935C(uint64_t a1)
{
  v2 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 + dword_27DFC88D0) ^ 0xA1)) ^ byte_23AC74FA0[byte_23AC80E70[(117 * ((qword_27DFC8A88 + dword_27DFC88D0) ^ 0xA1))] ^ 0x13]) - 122);
  v3 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 + *v2) ^ 0xA1)) ^ byte_23AC787A0[byte_23AC74DA0[(117 * ((qword_27DFC8A88 + *v2) ^ 0xA1))] ^ 0xE1]) - 20);
  v4 = &v8[*v2 + *(v3 - 4)];
  v5 = 1793648501 * v4 - 0x14D2DEFCE5B8486BLL;
  v6 = 1793648501 * (v4 ^ 0x985AED203B07ABA1);
  *v2 = v5;
  *(v3 - 4) = v6;
  LODWORD(v3) = *v2;
  v7 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 - dword_27DFC88D0) ^ 0xA1)) ^ byte_23AC78AA0[byte_23AC751A0[(117 * ((qword_27DFC8A88 - dword_27DFC88D0) ^ 0xA1))] ^ 0xE4]) - 2) - 4;
  (*&v7[8 * (*(off_284DD4638 + (*(off_284DD45A0 + (117 * (v3 ^ 0xA1 ^ v6))) ^ 0xE4u) - 12) ^ (117 * (v3 ^ 0xA1 ^ v6))) + 16176])(*(&off_284DD4450 + (*(off_284DD4908 + (*(off_284DD4600 + (117 * ((v6 + v3) ^ 0xA1)) - 8) ^ 0xB2u) - 8) ^ (117 * ((v6 + v3) ^ 0xA1))) - 29) - 8, sub_23AB93BB4);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_23ABC9558(unint64_t a1)
{
  STACK[0x450] = v2 - 176;
  STACK[0x3C8] = a1;
  return (*(v3 + 8 * ((((89 * (v1 ^ 0x457)) ^ 0xF5E) * (v4 > a1)) ^ v1)))();
}

uint64_t sub_23ABC95F4()
{
  v4 = (*(v2 + 8 * (v0 ^ 0xBD0)))();
  LODWORD(STACK[0x500]) = v1;
  return (*(v2 + 8 * (((v1 == ((v0 + 400) ^ 0x9DA4DB3F)) * (((v0 - 636) | 0x40C) ^ v3)) ^ v0)))(v4);
}

void sub_23ABC98E0(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 20) + 50899313 * ((((2 * a1) | 0x241C4116) - a1 - 302915723) ^ 0xDA6FE4DD);
  v2 = 1785193651 * (((v5 | 0xA6E5F997) - v5 + (v5 & 0x591A0668)) ^ 0xB6F58A72);
  v7 = v4;
  v8 = v2 ^ (v1 - 473373702);
  v6 = 17098380 - v2;
  v3 = *(&off_284DD4450 + (v1 ^ 0xE)) - 4;
  (*&v3[8 * v1 + 16760])(v5);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_23ABC9FE4(int a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v11 = v9 > a2;
  if (v11 == v7 + a5 < ((4 * v10) ^ a6))
  {
    v11 = v7 + a5 < a1;
  }

  return (*(v8 + 8 * ((v11 * a7) ^ v10)))();
}

uint64_t sub_23ABCA0AC(__n128 a1)
{
  v2.n128_u64[0] = (v1 + 13) & 0xF;
  v2.n128_u64[1] = (v1 + 12) & 0xF;
  v3.n128_u64[0] = (v1 + 11) & 0xF;
  v3.n128_u64[1] = (v1 + 10) & 0xF;
  v4.n128_u64[0] = (v1 + 9) & 0xF;
  v4.n128_u64[1] = v1 & 0xF ^ 8;
  v7.val[0].i64[0] = (v1 + 7) & 0xF;
  v7.val[0].i64[1] = (v1 + 6) & 0xF;
  v7.val[1].i64[0] = (v1 + 5) & 0xF;
  v7.val[1].i64[1] = (v1 + 4) & 0xF;
  v7.val[2].i64[0] = (v1 + 3) & 0xF;
  v7.val[2].i64[1] = (v1 + 2) & 0xF;
  v7.val[3].i64[0] = (v1 + 1) & 0xF;
  v7.val[3].i64[1] = v1 & 0xF;
  v5.n128_u64[0] = 0x7373737373737373;
  v5.n128_u64[1] = 0x7373737373737373;
  return sub_23ABCA178((v1 + 14) & 0xF, a1, v2, v3, v4, xmmword_23AC80FD0, vqtbl4q_s8(v7, xmmword_23AC80FD0), v5);
}

uint64_t sub_23ABCA178(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5, int8x16_t a6, double a7, int8x16_t a8, uint64_t a9, unint64_t a10, int a11)
{
  v20 = ~v17 + v14;
  v21 = v20 & 0xF;
  v23.i64[0] = vqtbl4q_s8(*(&a3 - 1), a6).u64[0];
  *&v23.i64[1] = a7;
  v24 = vrev64q_s8(vmulq_s8(v23, a8));
  *(v18 + v20) = veorq_s8(veorq_s8(veorq_s8(*(v13 + v21 - 15), *(v18 + v20)), veorq_s8(*(v12 + v21 - 15), *(v21 + v11 - 14))), vextq_s8(v24, v24, 8uLL));
  return (*(v19 + 8 * (((((v16 + 1457) ^ a10) + v17 == v15) * a11) ^ v16)))();
}

void sub_23ABCA1F8(uint64_t a1@<X8>)
{
  if ((v1 + v3 - 1) >= 0x7FFFFFFF)
  {
    v5 = -v4;
  }

  else
  {
    v5 = v2;
  }

  *(a1 + 4) = v5;
  JUMPOUT(0x23ABCA218);
}

uint64_t sub_23ABCA22C@<X0>(int a1@<W0>, int a2@<W8>)
{
  v5 = *(v3 + a2 * a1 + 36);
  LODWORD(STACK[0x3EC]) = v5;
  v6 = v2 - 1926151872 + v5;
  v8 = v6 > 466477799 || v6 < SLODWORD(STACK[0x248]);
  return (*(v4 + 8 * ((408 * v8) ^ v2)))();
}

uint64_t sub_23ABCA284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v26 = ((v25 + 1770538712 - 2 * ((v25 - 144) & 0x69884768)) ^ 0xFE858B7B) * v22;
  *(v25 - 144) = &a21;
  *(v25 - 136) = v26 ^ 0x7B6F1A3E;
  *(v25 - 132) = v24 - v26 + 720;
  v27 = (*(v23 + 8 * (v24 ^ 0xCDD)))(v25 - 144);
  return (*(v23 + 8 * (((((v24 + 515514894) & 0xE145DFD8) + ((v24 + 487) ^ 0xFFFFFF8C)) * (v21 == 0)) ^ (v24 + 629))))(v27);
}

uint64_t sub_23ABCA3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, int a13, int a14, char *a15, char a16, uint64_t a17)
{
  v24 = *(v17 + 12) - v22;
  v25 = 1361651671 * (((~&a12 | 0x2DAA3398) + (&a12 | 0xD255CC67)) ^ 0x1773CEA);
  a15 = &a10;
  a17 = v21;
  a16 = ((((v24 ^ 0x44) - 68) ^ ((v24 ^ 0x9F) + 97) ^ (v20 + 63 + (v24 ^ 0x66) - 108)) - 50) ^ v25;
  a12 = v25 + 2055532590 + v23;
  a13 = v20 - v25 + 752;
  v26 = (*(v19 + 8 * (v20 ^ 0x9DB)))(&a12);
  return (*(v19 + 8 * ((870 * (a14 == v18)) ^ v20)))(v26);
}

uint64_t sub_23ABCA4DC@<X0>(uint64_t a1@<X0>, int a2@<W3>, int a3@<W6>, int a4@<W7>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(uint64_t, uint64_t, uint64_t))
{
  v50 = (((a12 ^ 0xC050DC81) + 1068442495) ^ ((a12 ^ 0x2DA0C9B9) - 765512121) ^ ((a12 ^ 0xED88071) - 249069681)) - 568074341 + (((v46 ^ 0x1ECF9A43) - 516921923) ^ ((v46 ^ 0x47ED0BBB) - 1206717371) ^ ((v46 ^ 0x189B949D ^ (v47 - 1143893406) & 0xE6BFFA7E) + 1173748559));
  v51 = (v50 ^ 0xE3A840E7) & (2 * (v50 & 0xE82D4AF7)) ^ v50 & 0xE82D4AF7;
  v52 = ((2 * (v50 ^ 0xB3AAC58D)) ^ 0xB70F1EF4) & (v50 ^ 0xB3AAC58D) ^ (2 * (v50 ^ 0xB3AAC58D)) & 0x5B878F7A;
  v53 = v52 ^ 0x4880810A;
  v54 = (v52 ^ 0x1070E70) & (4 * v51) ^ v51;
  v55 = ((4 * v53) ^ 0x6E1E3DE8) & v53 ^ (4 * v53) & 0x5B878F78;
  v56 = (v55 ^ 0x4A060D60) & (16 * v54) ^ v54;
  v57 = ((16 * (v55 ^ 0x11818212)) ^ 0xB878F7A0) & (v55 ^ 0x11818212) ^ (16 * (v55 ^ 0x11818212)) & 0x5B878F70;
  v58 = v56 ^ 0x5B878F7A ^ (v57 ^ 0x18008700) & (v56 << 8);
  *(v49 - 132) = v50 ^ (2 * ((v58 << 16) & 0x5B870000 ^ v58 ^ ((v58 << 16) ^ 0xF7A0000) & (((v57 ^ 0x4387085A) << 8) & 0x5B870000 ^ 0x58000000 ^ (((v57 ^ 0x4387085A) << 8) ^ 0x78F0000) & (v57 ^ 0x4387085A)))) ^ 0xAA0EC14A;
  v15 = (((a4 ^ 0x90EBB9E) - 151960478) ^ ((a4 ^ 0x5529C9A8) - 1428801960) ^ ((a4 ^ 0xBF0FE77F) + 1089476737)) + (((a5 ^ 0x84B5959) - 139155801) ^ ((a5 ^ 0xB238F8D8) + 1304889128) ^ ((a5 ^ 0x595B34C8) - 1499149512)) + 183432435;
  v16 = (v15 ^ 0xB340219E) & (2 * (v15 & 0xBB62359F)) ^ v15 & 0xBB62359F;
  v17 = ((2 * (v15 ^ 0x93C462A6)) ^ 0x514CAE72) & (v15 ^ 0x93C462A6) ^ (2 * (v15 ^ 0x93C462A6)) & 0x28A65738;
  v18 = v17 ^ 0x28A25109;
  v19 = (v17 ^ 0x630) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0xA2995CE4) & v18 ^ (4 * v18) & 0x28A65738;
  v21 = (v20 ^ 0x20805429) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x8260319)) ^ 0x8A657390) & (v20 ^ 0x8260319) ^ (16 * (v20 ^ 0x8260319)) & 0x28A65730;
  v23 = v21 ^ 0x28A65739 ^ (v22 ^ 0x8245300) & (v21 << 8);
  v24 = v15 ^ (2 * ((v23 << 16) & 0x28A60000 ^ v23 ^ ((v23 << 16) ^ 0x57390000) & (((v22 ^ 0x20820429) << 8) & 0x28A60000 ^ 0x8A00000 ^ (((v22 ^ 0x20820429) << 8) ^ 0x26570000) & (v22 ^ 0x20820429))));
  v25 = (((v45 ^ 0xA764FA73) + 1486554509) ^ ((v45 ^ 0x9D3A8FF3) + 1657106445) ^ ((v45 ^ 0xD976E0C9) + 646520631)) + (((v48 ^ 0x7859AA7A) - 2019142266) ^ ((v48 ^ 0x1381C761) - 327272289) ^ ((v48 ^ 0x88F0F852) + 1997473710)) - 150437698;
  v26 = (v25 ^ 0xEF2885C3) & (2 * (v25 & 0xCF48A9D4)) ^ v25 & 0xCF48A9D4;
  v27 = ((2 * (v25 ^ 0x63B8D643)) ^ 0x59E0FF2E) & (v25 ^ 0x63B8D643) ^ (2 * (v25 ^ 0x63B8D643)) & 0xACF07F96;
  v28 = v27 ^ 0xA4100091;
  v29 = (v27 ^ 0x8606F00) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0xB3C1FE5C) & v28 ^ (4 * v28) & 0xACF07F94;
  v31 = (v30 ^ 0xA0C07E00) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0xC300183)) ^ 0xCF07F970) & (v30 ^ 0xC300183) ^ (16 * (v30 ^ 0xC300183)) & 0xACF07F90;
  v33 = v31 ^ 0xACF07F97 ^ (v32 ^ 0x8C007900) & (v31 << 8);
  *(v49 - 148) = v24 ^ 0x9460EA4;
  *(v49 - 144) = v25 ^ (2 * ((v33 << 16) & 0x2CF00000 ^ v33 ^ ((v33 << 16) ^ 0x7F970000) & (((v32 ^ 0x20F00687) << 8) & 0x2CF00000 ^ 0xC800000 ^ (((v32 ^ 0x20F00687) << 8) ^ 0x707F0000) & (v32 ^ 0x20F00687)))) ^ 0x2CA0C3B3;
  v34 = (((a2 ^ 0x51BD421B) - 1371357723) ^ ((a2 ^ 0x248335D8) - 612578776) ^ ((a2 ^ 0x9616E28A) + 1776885110)) + (((*(v49 - 140) ^ 0xB8461B42) + 1203365054) ^ ((*(v49 - 140) ^ 0x48E9330C) - 1223242508) ^ ((*(v49 - 140) ^ 0x1387BD07) - 327662855)) + 202824030;
  v35 = (v34 ^ 0x31BB5435) & (2 * (v34 & 0xBA3A5134)) ^ v34 & 0xBA3A5134;
  v36 = ((2 * (v34 ^ 0x25CFD67D)) ^ 0x3FEB0E92) & (v34 ^ 0x25CFD67D) ^ (2 * (v34 ^ 0x25CFD67D)) & 0x9FF58748;
  v37 = v36 ^ 0x80148149;
  v38 = (v36 ^ 0x19E10400) & (4 * v35) ^ v35;
  v39 = ((4 * v37) ^ 0x7FD61D24) & v37 ^ (4 * v37) & 0x9FF58748;
  v40 = (v39 ^ 0x1FD40500) & (16 * v38) ^ v38;
  v41 = ((16 * (v39 ^ 0x80218249)) ^ 0xFF587490) & (v39 ^ 0x80218249) ^ (16 * (v39 ^ 0x80218249)) & 0x9FF58740;
  v42 = v40 ^ 0x9FF58749 ^ (v41 ^ 0x9F500400) & (v40 << 8);
  v43 = (((a3 ^ 0x2DA29B8F) - 765631375) ^ ((a3 ^ 0xFA290E04) + 97972732) ^ ((a3 ^ 0x34A300C2) - 883097794)) + (((*(v49 - 136) ^ 0x4346420D) - 1128677901) ^ ((*(v49 - 136) ^ 0xA98FA059) + 1450205095) ^ ((*(v49 - 136) ^ 0x9E1771D) - 165771037)) - 320397013;
  *(v49 - 140) = v34 ^ (2 * ((v42 << 16) & 0x1FF50000 ^ v42 ^ ((v42 << 16) ^ 0x7490000) & (((v41 ^ 0xA58349) << 8) & 0x1FF50000 ^ 0xA700000 ^ (((v41 ^ 0xA58349) << 8) ^ 0x75870000) & (v41 ^ 0xA58349)))) ^ 0x687BCAEF;
  *(v49 - 136) = v43 ^ ((v43 ^ 0xAB7CE3) - 641632890) ^ ((v43 ^ 0xE7486BC0) + 1042440871) ^ ((v43 ^ 0x2E891C45) - 136112860) ^ ((v43 ^ 0xEFFFFDFF) + 915797146) ^ 0xC5BD63D0;
  return a15(a1, 2727448620, 1567518739);
}

uint64_t sub_23ABCA72C@<X0>(uint64_t a1@<X8>)
{
  v11 = (*(*(v10 + 8) + 4 * v3) ^ v6) + v1 + (*(*(v8 + 8) + 4 * v3) ^ v6);
  *(*(a1 + 8) + 4 * v3) = v11 + v6 - (((v4 ^ v5) + v7) & (2 * v11));
  return (*(v9 + 8 * ((60 * (v3 + 1 != v2)) ^ v4)))();
}

uint64_t sub_23ABCA82C@<X0>(int a1@<W2>, int a2@<W8>)
{
  *v2 = STACK[0x4BC];
  v2[85] = STACK[0x380];
  v2[86] = STACK[0x334];
  v2[87] = STACK[0x494];
  v2[88] = STACK[0x404];
  return (*(v3 + 8 * ((((((a2 ^ 0x252) * a1 - 638) | 0x51) - 730) * (STACK[0x358] == 0)) ^ ((a2 ^ 0x252) * a1 - 568))))();
}

uint64_t sub_23ABCAB8C@<X0>(int a1@<W8>)
{
  v6 = ((v1 - 630) ^ 0x45F17EA8) - v4;
  if (v5 > v6)
  {
    v6 = v5;
  }

  *(*(v2 + 8) + 4 * (a1 - 1 + v6)) = *(*(v2 + 8) + 4 * v6 - 4);
  return (*(v3 + 8 * (((v6 < 2) * (((v1 - 630) ^ 0x3ED) - 575)) ^ (v1 - 630) ^ 0x3ED)))();
}

uint64_t sub_23ABCAC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _BYTE *a16)
{
  v19 = (STACK[0x318] + 31);
  v20 = 598920228 - ((0x10u >> ((v16 - 31) & 0xBB ^ 0xB8)) & 0x7659846);
  a16[12] = (v17 ^ HIBYTE(v20)) - ((2 * (v17 ^ HIBYTE(v20))) & 0x12) - 119;
  a16[13] = (BYTE2(v20) ^ 0xB2) - ((v20 >> 15) & 0x12) - 119;
  a16[14] = (BYTE1(v20) ^ 0xCC) - 2 * ((BYTE1(v20) ^ 0xCC) & 0xB ^ BYTE1(v20) & 2) - 119;
  a16[15] = v20 ^ 0xAA;
  *(v19 - 15) ^= *a16 ^ 0x89;
  *(v19 - 14) ^= a16[1] ^ 0x89;
  *(v19 - 13) ^= a16[2] ^ 0x89;
  *(v19 - 12) ^= a16[3] ^ 0x89;
  *(v19 - 11) ^= a16[4] ^ 0x89;
  *(v19 - 10) ^= a16[5] ^ 0x89;
  *(v19 - 9) ^= a16[6] ^ 0x89;
  *(v19 - 8) ^= a16[7] ^ 0x89;
  *(v19 - 7) ^= a16[8] ^ 0x89;
  *(v19 - 6) ^= a16[9] ^ 0x89;
  *(v19 - 5) ^= a16[10] ^ 0x89;
  *(v19 - 4) ^= a16[11] ^ 0x89;
  *(v19 - 3) ^= a16[12] ^ 0x89;
  *(v19 - 2) ^= a16[13] ^ 0x89;
  *(v19 - 1) ^= a16[14] ^ 0x89;
  *v19 ^= a16[15] ^ 0x89;
  return (*(v18 + 8 * (v16 - 40)))(2170673771, 1609215455, 147, 237, 124098630, 178, 4294967244);
}

uint64_t sub_23ABCAECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = (v7 - 692) | 0x3A4;
  v12 = LODWORD(STACK[0x2DC]) - v8;
  v14 = v9 == a7 || v12 != (v11 ^ 0x296) + (v11 ^ 0x6AA) + 903938177;
  return (*(v10 + 8 * ((15 * v14) ^ v11)))();
}

uint64_t sub_23ABCB1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t a5, int8x8_t a6)
{
  v12 = a2 - 8;
  v14.val[0].i64[0] = (v9 + v12 - 1) & 0xF;
  v14.val[0].i64[1] = (v9 + v12 + 14) & 0xF;
  v14.val[1].i64[0] = (v9 + v12 + 13) & 0xF;
  v14.val[1].i64[1] = (v9 + v12 + (v10 ^ 3)) & 0xF;
  v14.val[2].i64[0] = (v9 + v12 + 11) & 0xF;
  v14.val[2].i64[1] = (v9 + v12 + 10) & 0xF;
  v14.val[3].i64[0] = (v9 + v12 + 9) & 0xF;
  v14.val[3].i64[1] = (v9 + v12) & 0xF ^ 8;
  *(a3 - 8 + v9) = veor_s8(veor_s8(veor_s8(*(v8 + v14.val[0].i64[0] - 7), *(a4 - 8 + v9)), veor_s8(*(v6 + v14.val[0].i64[0] - 7), *(v7 + v14.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v14, a5), a6)));
  return (*(v11 + 8 * (((8 * (a1 == v12)) | (16 * (a1 == v12))) ^ v10)))();
}

void sub_23ABCB200(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v14 = 2066391179 * ((1849354536 - ((v13 - 144) | 0x6E3AE928) + ((v13 - 144) | 0x91C516D7)) ^ 0x3EE294CF);
  *(v13 - 136) = v10;
  *(v13 - 128) = v11 + v14 - 1288751406 + 379 * (a1 ^ 0x6CA);
  *(v13 - 140) = a1 - v14 - 294;
  *(v13 - 120) = &a10;
  (*(v12 + 8 * (a1 + 381)))(v13 - 144);
  JUMPOUT(0x23ABCB298);
}

void sub_23ABCB3B8(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v9 = (((&a3 | 0xFE734015) - &a3 + (&a3 & 0x18CBFE8)) ^ 0xEE6333F0) * v5;
  a5 = v6;
  a3 = (v7 ^ ((v7 ^ 0x1170974D) - 770809925) ^ ((v7 ^ 0x4F7F53CA) - 1946051778) ^ ((v7 ^ 0x7E7FFFFF) - 1123993847) ^ 0x76FA9F15 ^ ((v7 ^ v8 ^ 0x1CF10841) - 544226168)) - v9;
  a4 = (v8 - 471) ^ v9;
  (*(a1 + 8 * (v8 + 1043)))(&a3);
  JUMPOUT(0x23ABCB490);
}

void sub_23ABCB4B8(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = 843532609 * (((a1 | 0xF9D81385) - a1 + (a1 & 0x627EC7A)) ^ 0xA8B8313D);
  v2 = *(a1 + 16) + v1;
  v3 = (*(a1 + 20) + v1);
  v4 = *(&off_284DD4450 + (v2 ^ 0xDF)) - 4;
  (*&v4[8 * (v2 ^ 0x894)])(*(&off_284DD4450 + v2 - 144) - 12, sub_23ABCDBC4);
  v6 = *(*(&off_284DD4450 + (v2 & 0x4D138214)) - 4);
  v5 = v2 + 1082434553 * ((&v5 + 935562467 - 2 * (&v5 & 0x37C38CE3)) ^ 0xAC847A69) + 339;
  (*&v4[8 * (v2 ^ 0x8E3)])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_23ABCB620@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v9 = v3 < v5;
  *(v8 - 220 + a2) = *(v6 + v4) - ((2 * *(v6 + v4)) & 0x12) - 119;
  if (v9 == v4 + (v2 ^ 0x3D0) > a1)
  {
    v9 = v5 + v4 + 1 < v3;
  }

  return (*(v7 + 8 * ((v9 | (2 * v9)) ^ v2)))();
}

uint64_t sub_23ABCB694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v51 = (*(v50 + 8 * ((v49 - 531) ^ 0xB6E)))(1576, 0x105004009637391);
  STACK[0x3D8] = v51;
  return (*(v50 + 8 * (((v51 == 0) * (((v49 - 1302278143) & 0x4D9F2FFE) - 1284)) ^ (v49 - 531))))(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

void sub_23ABCB734()
{
  *(v5 - 208) = v0 + 143681137 * ((2 * ((v5 - 208) & 0x32E31738) - (v5 - 208) + 1293740229) ^ 0x99BBF49F) + 1768847965;
  (*(v4 + 8 * (v2 + v0 + 2143)))(v5 - 208);
  if (((v1 - v0) | (v0 - v1)) >= 0)
  {
    v6 = 42;
  }

  else
  {
    v6 = 43;
  }

  *(v5 - 200) = &STACK[0x34C];
  *(v5 - 192) = v2 - 843532609 * (((~(v5 - 208) | 0x8E78373A) + ((v5 - 208) | 0x7187C8C5)) ^ 0x20E7EA7C) + v0 + 246;
  *(v5 - 188) = v0 - 65 * (((~(v5 + 48) | 0x3A) + ((v5 + 48) | 0xC5)) ^ 0x7C) + ((v2 + v0 + 29) ^ 0x18) + v6;
  *(v5 - 184) = &STACK[0x464];
  (*(v4 + 8 * (v0 ^ (v3 + 1973))))(v5 - 208);
  JUMPOUT(0x23ABA1E1CLL);
}

uint64_t sub_23ABCB844@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, unsigned int a7@<W6>, char a8@<W7>, unsigned int a9@<W8>, uint64_t a10, int a11, int a12, uint64_t a13)
{
  v26 = v25 + 1058;
  *(v18 + v17) = *(a13 + v17) ^ a8;
  v27 = v17 + v25 + 1058 - 1314;
  v13 = (((a12 ^ v23) + (v26 ^ v19) * v20 + a1) ^ (((v26 + v21) & v22) + a3 + (a12 ^ a2)) ^ ((a12 ^ a4) + a5)) + a6;
  v14 = v13 < a9;
  v15 = v27 + a9 < v13;
  if (v27 > a7 != v14)
  {
    v15 = v14;
  }

  return (*(v24 + 8 * ((!v15 | (4 * !v15)) ^ v26)))();
}

uint64_t sub_23ABCB990@<X0>(uint64_t a1@<X3>, int a2@<W8>, int8x16_t a3@<Q1>, int8x16_t a4@<Q3>)
{
  v10 = (v9 + (v5 + v4));
  v11 = *v10;
  v12 = v10[1];
  v13 = (a1 + v5);
  *v13 = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a4)), a3);
  v13[1] = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a4)), a3);
  return (*(v8 + 8 * (((v5 != 32) * v6) ^ (v7 + a2 + 595))))();
}

uint64_t sub_23ABCBAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = 52 * (v67 ^ 0x504);
  STACK[0x268] = (*(v66 + 8 * (v67 ^ 0xD7B)))(a64 + a65, 0x100004077774924);
  v69 = (*(v66 + 8 * (v67 + 828)))();
  *v65 = v69;
  v65[1] = (v69 ^ (v69 >> 30)) * ((v68 ^ 0x5F1) + 1812433068) + 1;
  return (*(v66 + 8 * (v68 ^ 0xDA)))(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_23ABCBF00@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v7 = (v4 + 378) | 0x20;
  v8 = (v7 ^ 0x2AD) + a1;
  *(*(a2 + 8) + 4 * (v2 + a1 + 1)) = v6 ^ v5;
  *(a2 + 4) = v8;
  if (v2 + v8 + 1 >= 0)
  {
    v9 = v2 + v8 + 1;
  }

  else
  {
    v9 = ~(v2 + v8);
  }

  return (*(v3 + 8 * (((((v9 ^ 0xEDF5FFEF) + 1476100092 + ((((v7 - 616) | 0x2A) ^ 0xDBEBFFB0) & (2 * v9)) + v2) >> 31) * (((((v7 - 616) | 0x2A) + 1144110993) & 0xBBCE409F ^ 0xFFFFFA26) + ((4 * ((v7 - 616) | 0x2A)) ^ 0x780))) ^ ((v7 - 616) | 0x2A))))();
}

uint64_t sub_23ABCC048@<X0>(char a1@<W1>, uint64_t a2@<X3>, unsigned int a3@<W8>)
{
  v7 = *(v6 - 220 + a3 + 72);
  v8 = ((a3 << ((a1 + v4 - 42) ^ (a1 + 1))) & 0xFEAE99C8) + (a3 ^ 0xFF574CE7) + v3;
  *(a2 + v8) = (HIBYTE(v7) ^ 0xE3) - ((2 * (HIBYTE(v7) ^ 0xE3)) & 0x12) - 119;
  *(a2 + v8 + 1) = (BYTE2(v7) ^ 0x28) - 2 * ((BYTE2(v7) ^ 0x28) & 0xB ^ BYTE2(v7) & 2) - 119;
  *(a2 + v8 + 2) = (BYTE1(v7) ^ 0x95) - 2 * ((BYTE1(v7) ^ 0x95) & 0xB ^ BYTE1(v7) & 2) - 119;
  *(a2 + v8 + 3) = v7 ^ 0xC0;
  return (*(v5 + 8 * ((870 * (a3 + 4 < *(v6 - 128))) ^ v4)))();
}

uint64_t sub_23ABCC368@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v12 = (v11 + 4 * v6);
  v13 = HIDWORD(v8) + (*v12 ^ v3) + HIDWORD(v5) + v4 * (*(a1 + 4 * v6) ^ v3);
  *(v12 - 1) = v3 + v9 + 1549 + v13 - (a2 & (2 * v13)) - 1568;
  return (*(v7 + 8 * (((v6 + 1 == a3) * v10) ^ v9)))();
}

uint64_t sub_23ABCC3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v24 = 50899313 * (((v20 ^ 0xDD52B841) & 0x1692BE1F | ~(v20 ^ 0xDD52B841 | 0x1692BE1F)) ^ 0xFC5E3DF7);
  *(v23 - 204) = (v19 + 623) ^ v24;
  *(v23 - 184) = v24 + 1928980172;
  *(v23 - 168) = &STACK[0x3E8];
  *(v23 - 176) = a15;
  *(v23 - 160) = a19;
  *(v23 - 152) = 0;
  *(v23 - 200) = 0;
  *(v23 - 192) = v22;
  v25 = (*(v21 + 8 * (v19 + 1943)))(v23 - 208);
  v26 = *(v23 - 208);
  LODWORD(STACK[0x504]) = v26;
  return (*(v21 + 8 * (((v26 == -1650139615) * (((v19 + 1092) | 0xA) ^ 0x22F)) ^ v19)))(v25);
}

uint64_t sub_23ABCCC40@<X0>(uint64_t a1@<X8>)
{
  v11 = (*(*(v9 + 8) + 4 * v2) ^ v6) + v1;
  *(*(a1 + 8) + 4 * v2) = v11 + v6 - ((v7 + 1890) & (2 * v11));
  return (*(v8 + 8 * (((v2 + (v3 ^ v4) - 1334 == v10) * v5) ^ v3)))();
}

uint64_t sub_23ABCCC94(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = 742307843 * (((a1 ^ 0x9A61B16E) & 0xF56D9B5A | ~(a1 ^ 0x9A61B16E | 0xF56D9B5A)) ^ 0x8ED1589E);
  v3 = *(a1 + 20) + v2;
  v4 = *(a1 + 24);
  v5 = *(a1 + 8);
  v6 = (((*(a1 + 16) - v2) ^ 0x45DA93DE) - 1171952606) ^ (((*(a1 + 16) - v2) ^ 0x98A5D25) - 160062757) ^ (((*(a1 + 16) - v2) ^ 0xB99F0747) + 1180760249);
  v7 = *a1 + 1197042450 + v2;
  v8 = 1082434553 * ((-1470436824 - (&v10 | 0xA85AEA28) + (&v10 | 0x57A515D7)) ^ 0xCCE2E35D);
  v14 = v5;
  v15 = v3 ^ ((v3 ^ 0xE914A1CB) + 232444226) ^ ((v3 ^ 0x20297323) - 991493206) ^ ((v3 ^ 0xADFB32E0) + 1228227179) ^ ((v3 ^ 0x7FF76F7D) - 1690755080) ^ v8 ^ 0x30DBA6D4;
  v11 = v4;
  v12 = v8 ^ (v7 + 1270);
  v13 = v6 - v8 + 891552947;
  result = (*(*(&off_284DD4450 + v7) + 8 * v7 + 17268))(&v10);
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_23ABCCF00@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 < 0xCD1CBD14;
  v5 = a1 + 1;
  if (v4 == v5 > (v2 - 69) - 3441213059u)
  {
    v4 = v5 + 3441212692u < v1;
  }

  return (*(v3 + 8 * ((v4 * ((v2 - 129) ^ 0x154)) ^ v2)))();
}

void sub_23ABCCFEC(uint64_t a1)
{
  v1 = *(a1 + 32) ^ (1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9));
  __asm { BRAA            X2, X17 }
}

uint64_t sub_23ABCD144@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = (a2 + 1426208519) & 0xAAFDC3DF;
  **(a1 + 24) = v5 + v6 + (v7 ^ 0x15E);
  return (*(v4 + 8 * ((1974 * (*(a3 + 24) == v3)) ^ v7)))();
}

uint64_t sub_23ABCD6CC(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_23ABCD89C@<X0>(int a1@<W1>, int a2@<W3>, char a3@<W4>, char a4@<W5>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unsigned int a48)
{
  v51 = *(a5 + 4 * (v48 >> (a48 + 95)) + 72);
  v52 = (a2 & (2 * v48)) + (v48 ^ a1) - 2076434430;
  *(v49 + v52) = v51 ^ 0xC0;
  *(v49 + v52 + 1) = (BYTE1(v51) ^ a4) - 2 * ((BYTE1(v51) ^ a4) & 0xB ^ BYTE1(v51) & 2) - 119;
  *(v49 + v52 + 2) = (BYTE2(v51) ^ 0x28) - 2 * ((BYTE2(v51) ^ 0x28) & 0xB ^ BYTE2(v51) & 2) - 119;
  *(v49 + v52 + 3) = (HIBYTE(v51) ^ 0xE3) - 2 * ((HIBYTE(v51) ^ 0xE3) & a3 ^ HIBYTE(v51) & 4) - 119;
  return (*(v50 + 8 * ((73 * (v48 + 4 >= *(a5 + 92))) ^ a48)))();
}

_DWORD *sub_23ABCD9A8@<X0>(_DWORD *result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *result = 1650165012;
  return result;
}

uint64_t sub_23ABCDA38()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) ^ v1) & 1 ^ v0)))();
}

uint64_t sub_23ABCDBC4()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 - dword_27DFC8A90) ^ 0xA1)) ^ byte_23AC787A0[byte_23AC74DA0[(117 * ((qword_27DFC8A88 - dword_27DFC8A90) ^ 0xA1))] ^ 5]) - 178);
  v1 = *(v0 - 4);
  v2 = *(&off_284DD4450 + ((117 * ((qword_27DFC8A88 - v1) ^ 0xA1)) ^ byte_23AC787A0[byte_23AC74DA0[(117 * ((qword_27DFC8A88 - v1) ^ 0xA1))] ^ 0xE1]) - 20);
  v3 = (*(v2 - 4) + v1) ^ &v11;
  v4 = 1793648501 * v3 - 0x67A512DFC4F8545FLL;
  v5 = 1793648501 * (v3 ^ 0x985AED203B07ABA1);
  *(v0 - 4) = v4;
  *(v2 - 4) = v5;
  LOBYTE(v5) = 117 * ((v5 + *(v0 - 4)) ^ 0xA1);
  v14 = *(&off_284DD4450 + (*(off_284DD4610 + (*(off_284DD49B8 + v5 - 4) ^ 0xE1u) - 12) ^ v5) - 23) - 4;
  v13 = (1564307779 * ((v12 - 272648724 - 2 * (v12 & 0xEFBFB5EC)) ^ 0x78B279FF)) ^ 0x1F0;
  LOBYTE(v5) = 117 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xA1);
  v6 = *(&off_284DD4450 + ((117 * (dword_27DFC8A90 ^ 0xA1 ^ qword_27DFC8A88)) ^ byte_23AC789A0[byte_23AC750A0[(117 * (dword_27DFC8A90 ^ 0xA1 ^ qword_27DFC8A88))] ^ 0x35]) - 171) - 4;
  (*&v6[8 * (*(off_284DD4908 + (*(off_284DD4600 + v5 - 8) ^ 0x19u) - 8) ^ v5) + 17200])(v12);
  v13 = (1564307779 * (((v12 | 0xA6DD59BE) - (v12 & 0xA6DD59BE)) ^ 0x31D095AD)) ^ 0x1F0;
  v7 = 117 * (*(v0 - 4) ^ 0xA1 ^ *(v2 - 4));
  v14 = *(&off_284DD4450 + (*(off_284DD48A0 + (*(off_284DD4688 + v7 - 4) ^ 0xCEu) - 12) ^ v7) - 50) - 4;
  v8 = 117 * ((*(v2 - 4) - *(v0 - 4)) ^ 0xA1);
  (*&v6[8 * (*(off_284DD46C0 + (*(off_284DD47F8 + v8 - 8) ^ 0x35u)) ^ v8) + 15840])(v12);
  v9 = 1082434553 * (v12 ^ 0x9B47F68A);
  v13 = 1550 - v9;
  v12[0] = 68 - v9;
  LOBYTE(v9) = 117 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xA1);
  return (*&v6[8 * (*(off_284DD44B8 + (*(off_284DD47D0 + v9 - 8) ^ 0xC5u) - 12) ^ v9) + 16440])(v12);
}

uint64_t sub_23ABCDFA0(uint64_t a1, unint64_t a2)
{
  v9 = (v5 - 1) & 0xF;
  v10 = -v7 - v5;
  v12 = a2 >= 0x10 && v10 + v3 + v9 + 1 >= (((v6 - 1069) | 0x408u) - 406) - 1192 && (v10 + v4 + v9 + 6) >= 0x10;
  v13 = v10 + v2 + v9 + 3;
  v15 = !v12 || v13 < 0x10;
  return (*(v8 + 8 * (((2 * v15) | (8 * v15)) ^ v6)))();
}

void sub_23ABCE01C(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (843532609 * (((a1 | 0x6D65322F) - (a1 & 0x6D65322F)) ^ 0x3C051097));
  v2 = *(&off_284DD4450 + v1 - 479) - 4;
  v3 = *a1;
  (*&v2[8 * v1 + 13024])(*(&off_284DD4450 + (v1 ^ 0x208)) - 8, sub_23AB93BB4);
  __asm { BRAA            X10, X17 }
}

void sub_23ABCE198(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8) + 1785193651 * (((a1 ^ 0x47AF6218 | 0xA59C07CB) - (a1 ^ 0x47AF6218 | 0x5A63F834) + 1516501044) ^ 0xF2231636);
  v2 = 1785193651 * (((v5 | 0x6F99A228) - v5 + (v5 & 0x90665DD0)) ^ 0x7F89D1CD);
  v8 = v2 ^ (v1 - 473373692);
  v6 = 17098380 - v2;
  v7 = v4;
  v3 = *(&off_284DD4450 + v1 + 12) - 4;
  (*&v3[8 * (v1 ^ 0x849)])(v5);
  __asm { BRAA            X13, X17 }
}

void sub_23ABCE40C(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v8 = 1785193651 * (((&a3 | 0x906B8A4C) - &a3 + (&a3 & 0x6F9475B0)) ^ 0x807BF9A9);
  a5 = v5;
  a3 = -1874722850 - (v8 + v6) - ((-1953714302 - (v6 << (((v7 + 43) & 0x7B) - 90))) & 0x94F7503A);
  a4 = (v7 - 602) ^ v8;
  (*(a1 + 8 * (v7 + 912)))(&a3);
  JUMPOUT(0x23ABCE4B8);
}

uint64_t sub_23ABCE4E0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v5 = *(&STACK[0x278] + a2 + 72);
  v6 = (((19 * (v3 ^ 0x5C3)) ^ 0x77F879FE) & (2 * a2)) + (a2 ^ 0xBBFC3CEF) + v2;
  *(a1 + v6) = (HIBYTE(v5) ^ 0xE3) - ((2 * (HIBYTE(v5) ^ 0xE3)) & 0x12) - 119;
  *(a1 + v6 + 1) = (BYTE2(v5) ^ 0x28) - 2 * ((BYTE2(v5) ^ 0x28) & 0xB ^ BYTE2(v5) & 2) - 119;
  *(a1 + v6 + 2) = (BYTE1(v5) ^ 0x95) - 2 * ((BYTE1(v5) ^ 0x95) & 0xB ^ BYTE1(v5) & 2) - 119;
  *(a1 + v6 + 3) = v5 ^ 0xC0;
  return (*(v4 + 8 * (((a2 + 4 >= LODWORD(STACK[0x2D4])) | (32 * (a2 + 4 >= LODWORD(STACK[0x2D4])))) ^ v3)))();
}

void sub_23ABCE8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  a18[31] = 0x45F17FEB00000040;
  a18[32] = a18 + 33;
  STACK[0x248] = (a18 + 65);
  a18[65] = 0x45F17FEB00000040;
  a18[66] = a18 + 67;
  STACK[0x268] = (a18 + 99);
  a18[99] = 0x45F17FEB00000040;
  a18[100] = a18 + 101;
  STACK[0x270] = (a18 + 133);
  a18[133] = 0x45F17FEB00000040;
  a18[134] = a18 + 135;
  STACK[0x278] = (a18 + 167);
  a18[167] = 0x45F17FEB00000040;
  a18[168] = a18 + 169;
  v22 = STACK[0x488] + 4;
  v23 = v19 + 1010;
  v24 = v21 - 208;
  v25 = 2 * (v21 - 208);
  LODWORD(STACK[0x250]) = v25;
  v26 = 2066391179 * (((v25 | 0x1CBF2746) - (v21 - 208) + 1906338909) ^ 0x217811BB);
  *(v21 - 204) = v19 + 1010 - v26;
  *(v21 - 200) = v22;
  *(v21 - 192) = v26 - 1075428567 + (((v18 ^ 0x5100146C) - 1358959724) ^ ((v18 ^ 0x91FE30F3) + 1845612301) ^ ((v18 ^ 0x5D5AFABE) + v19 - 1566243950));
  *(v21 - 184) = a15;
  v27 = v19 ^ 0x9F5;
  (*(v20 + 8 * (v19 ^ 0x9F5)))(v21 - 208);
  v28 = v18 ^ 0x9DA4DE21;
  v29 = v22 + v28;
  v30 = 2066391179 * (((v24 | 0xB88DC790) - (v24 & 0xB88DC790)) ^ 0x17AA4588);
  *(v21 - 204) = v19 + 1010 - v30;
  *(v21 - 200) = v29;
  *(v21 - 192) = v30 - 1075428567 + (((v18 ^ 0xB0799B49) + 1334207671) ^ ((v18 ^ 0xEB6052FD) + 346008835) ^ ((v18 ^ 0xC6BD1795) + 960686187));
  *(v21 - 184) = STACK[0x248];
  v31 = v19 + 1685;
  (*(v20 + 8 * v31))(v21 - 208);
  v32 = v29 + v28;
  v33 = 2066391179 * ((v21 + 1998752059 - 2 * ((v21 - 208) & 0x77228A0B)) ^ 0xD8050813);
  *(v21 - 192) = v33 - 1075428567 + (((v18 ^ 0x792C4D4A) - 2032946506) ^ ((v18 ^ 0x322B65A8) - 841704872) ^ ((v18 ^ 0xD6A3F6C3) + 693897533));
  *(v21 - 204) = v23 - v33;
  *(v21 - 184) = STACK[0x268];
  *(v21 - 200) = v32;
  (*(v20 + 8 * v31))(v21 - 208);
  v34 = 2066391179 * (((LODWORD(STACK[0x250]) | 0x3F106E4) - (v21 - 208) - 33063794) ^ 0xAEDF016A);
  *(v21 - 200) = v32 + v28;
  *(v21 - 204) = v23 - v34;
  *(v21 - 184) = STACK[0x270];
  *(v21 - 192) = v34 - 1075428567 + (((v18 ^ 0xBAEFF518) + 1158679272) ^ ((v18 ^ 0x3D7686AF) - 1031177903) ^ ((v18 ^ 0x1A3DAD96) - 440249750));
  (*(v20 + 8 * v27))(v21 - 208);
  v35 = 2066391179 * ((v24 & 0xD272835E | ~(v24 | 0xD272835E)) ^ 0x82AAFEB9);
  *(v21 - 204) = v23 - v35;
  *(v21 - 184) = STACK[0x278];
  *(v21 - 200) = v32 + v28 + v28;
  *(v21 - 192) = v35 - 1075428567 + (((v18 ^ 0xB90ECD49) + 1190212279) ^ ((v18 ^ 0x4CD0C352) - 1288749906) ^ ((v18 ^ 0x687AD03A) - 1752879162));
  (*(v20 + 8 * v27))(v21 - 208);
  JUMPOUT(0x23ABC53CCLL);
}

uint64_t sub_23ABCEE74@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v2 + v7) - (v4 & (2 * *(v2 + v7))) - 119;
  return (*(v1 + 8 * (((v7 == 0) * v5) ^ v6)))(0);
}

uint64_t sub_23ABCEEBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>, int8x16_t a4@<Q4>, int8x16_t a5@<Q5>)
{
  v10 = (a1 + v7 + a3);
  v11 = vaddq_s8(vsubq_s8(*(a2 + v7 + 16), vandq_s8(vaddq_s8(*(a2 + v7 + 16), *(a2 + v7 + 16)), a4)), a5);
  *v10 = vaddq_s8(vsubq_s8(*(a2 + v7), vandq_s8(vaddq_s8(*(a2 + v7), *(a2 + v7)), a4)), a5);
  v10[1] = v11;
  return (*(v9 + 8 * ((570 * ((v6 ^ 0x4B5) + v7 == v5)) ^ v8)))();
}

uint64_t sub_23ABCF4F4(uint64_t a1, int a2, uint64_t a3)
{
  *(v7 + (a1 ^ a3 ^ v4) + v3) = *(v6 + (a1 ^ a3 ^ v4) + v3);
  v10 = v8 == a1;
  v11 = a1 + 8;
  v12 = !v10;
  return (*(v9 + 8 * ((v12 * a2) ^ v5)))(v11);
}

uint64_t sub_23ABCF558(uint64_t a1, uint64_t a2, int a3, int a4, int8x16_t a5, int8x8_t a6, int8x8_t a7)
{
  v15 = a1 - 8;
  v16.val[0].i64[0] = (v11 + v15 - 1) & 0xF;
  v16.val[0].i64[1] = (v11 + v15 + 14) & 0xF;
  v16.val[1].i64[0] = (v11 + v15 + 13) & 0xF;
  v16.val[1].i64[1] = (v11 + v15 + 12) & 0xF;
  v16.val[2].i64[0] = (v11 + v15 + (v12 ^ 0xE)) & 0xF;
  v16.val[2].i64[1] = (v11 + v15 + 10) & 0xF;
  v16.val[3].i64[0] = (v11 + v15 + 9) & 0xF;
  v16.val[3].i64[1] = (v11 + v15) & 0xF ^ 8;
  *(a2 + v15) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a2 + v15), *(v10 + v16.val[0].i64[0] - 7)), veor_s8(*(v16.val[0].i64[0] + v9 - 4), *(v16.val[0].i64[0] + v8 - 2)))), a7), vmul_s8(*&vqtbl4q_s8(v16, a5), a6)));
  return (*(v14 + 8 * (((v13 != v15) * a4) ^ a3)))();
}

uint64_t sub_23ABCF564(uint64_t a1, uint64_t a2)
{
  v8 = *(v7 - 228 + v2 + 72);
  v9 = (((v4 - 2139830) & 0xDFFBFFFF ^ 0x182EA218) & (2 * v2)) + (v2 ^ 0xE3FAFFF7) + v3;
  *(a2 + v9) = v8 ^ 0xC0;
  *(a2 + v9 + 1) = (BYTE1(v8) ^ 0x95) - 2 * ((BYTE1(v8) ^ 0x95) & 0xB ^ BYTE1(v8) & 2) - 119;
  *(a2 + v9 + 2) = (BYTE2(v8) ^ 0x28) - 2 * ((BYTE2(v8) ^ 0x28) & 0xB ^ BYTE2(v8) & 2) - 119;
  *(a2 + v9 + 3) = (HIBYTE(v8) ^ 0xE3) - 2 * ((HIBYTE(v8) ^ 0xE3) & 0xD ^ HIBYTE(v8) & 4) - 119;
  return (*(v6 + 8 * (((v2 + 4 >= *(v7 - 136)) * v5) ^ v4)))();
}

uint64_t sub_23ABCF844()
{
  STACK[0x370] = v0;
  v1 = STACK[0x3A0];
  STACK[0x450] = STACK[0x278] - 112;
  return v1(137);
}

uint64_t sub_23ABCF8BC@<X0>(uint64_t a1@<X8>)
{
  v6 = (v2 ^ 0xFFFFFFFFFFFFFE06 ^ ((v3 ^ 0x35u) - 548)) + v1;
  *(v5 - 7 + v6) = *(a1 - 7 + v6);
  return (*(v4 + 8 * ((53 * ((v1 & 0xFFFFFFF8) - 8 != v2)) ^ v3 ^ 0x35)))(v2 + 8);
}

uint64_t sub_23ABCF910@<X0>(_OWORD *a1@<X8>)
{
  v6 = (v4 + v1 + 16);
  v7 = a1[1];
  *(v6 - 1) = *a1;
  *v6 = v7;
  return (*(v5 + 8 * ((((v2 & 0x60) == 32) * (v3 + 1155)) ^ v3)))(v4 + v1 + 48);
}

uint64_t sub_23ABCF958(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x36C]) = STACK[0x394];
  STACK[0x3E0] = STACK[0x328];
  LODWORD(STACK[0x2DC]) = -1266733994;
  return (*(v6 + 8 * (((((v5 + 832) | a4) ^ (v5 + 464435995) & 0xE45145FF ^ 0x437) * (v7 == -1650139615)) | (v5 + 301))))();
}

uint64_t sub_23ABCFA10(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 != 0) * v2) ^ v1)))();
}

uint64_t sub_23ABCFA6C@<X0>(unsigned int a1@<W8>)
{
  v10 = a1 < v5;
  *(v9 - 228 + v2) = *(v8 + v3) - ((2 * *(v8 + v3)) & 0x12) - 119;
  if (v10 == v3 + 1 > v4)
  {
    v10 = v5 + v3 + ((2 * v7) ^ 0x140) - 81 < a1;
  }

  return (*(v6 + 8 * ((!v10 * v1) ^ v7)))();
}

uint64_t sub_23ABCFCAC@<X0>(uint64_t a1@<X8>)
{
  v7 = v2 - 1;
  *(v3 + v7) = v6 + *(a1 + v7) - (v5 & (2 * *(a1 + v7)));
  return (*(v1 + 8 * (((v7 != 0) | (4 * (v7 != 0))) ^ v4)))(0);
}

uint64_t sub_23ABCFD14(unsigned int a1, int a2, uint64_t a3, int a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v15 = HIDWORD(v11) + a1 * (*(a5 + 4 * a3) ^ v8) + (*(v13 + 4 * a4) ^ v8);
  *(v13 + 4 * a4) = v8 + v15 - ((v15 << ((a6 | a8) + 83)) & v10);
  return (*(v12 + 8 * (((a3 + 1 != v9) * v14) ^ a2)))();
}

uint64_t sub_23ABCFD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, _DWORD **a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v64 = *a27;
  if (((((v61 - 1744884329) | 0x1481DB0u) ^ 0x81491DF2) & *a27) != 0 || (v65 = *(&off_284DD4450 + (v61 ^ 0xE801D23C)), v67 = *(v65 - 4), v66 = (v65 - 4), v67))
  {
    JUMPOUT(0x23ABC0CE4);
  }

  *v66 = v64;
  **(&off_284DD4450 + v61 + 402533857) = 255;
  *v64 |= ~v64[*v64 & 0x3ELL] << 16;
  v64[4] |= ~v64[v64[4] & 0x3ELL] << 16;
  v68 = v61 + 402534201;
  v64[8] |= ((v61 + 402534201) ^ 0xFE1C ^ v64[v64[8] & 0x3ELL]) << 16;
  v64[12] |= ~v64[v64[12] & 0x3ELL] << 16;
  v64[16] |= ~v64[v64[16] & 0x3ELL] << 16;
  v64[20] |= ~v64[v64[20] & 0x3ELL] << 16;
  v64[24] |= ~v64[v64[24] & 0x3ELL] << 16;
  v64[28] |= ~v64[v64[28] & 0x3ELL] << 16;
  v64[32] |= ~v64[v64[32] & 0x3ELL] << 16;
  v64[36] |= ~v64[v64[36] & 0x3ELL] << 16;
  v64[40] |= ~v64[v64[40] & 0x3ELL] << 16;
  v64[44] |= ~v64[v64[44] & 0x3ELL] << 16;
  v64[48] |= ~v64[v64[48] & 0x3ELL] << 16;
  v64[52] |= ~v64[v64[52] & 0x3ELL] << 16;
  v64[56] |= ~v64[v64[56] & 0x3ELL] << 16;
  v64[60] |= ~v64[v64[60] & 0x3ELL] << 16;
  v69 = (*(v62 + 8 * (v61 + 402535912)))(&a61, 0, 1024);
  *v63 = &a61;
  return (*(v62 + 8 * (((v68 ^ 0x439) - 496) ^ v68)))(v69);
}

uint64_t sub_23ABD0144@<X0>(int a1@<W0>, int a2@<W8>)
{
  v5 = v2 + 1;
  if (v3)
  {
    v6 = v5 == 200;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v4 + 8 * ((((v7 ^ (a2 + 79)) & 1) * a1) ^ a2)))();
}

void sub_23ABD017C(int a1@<W8>)
{
  v7 = STACK[0x3F0];
  v8 = (73 * (a1 ^ 0x665) - 1678640495) ^ LODWORD(STACK[0x3D4]);
  v9 = (2 * LODWORD(STACK[0x3D4])) & 0x37E3F7FC;
  v10 = 210068311 * (((v3 ^ 0x812FEF1D) + 1929282230 - 2 * ((v3 ^ 0x812FEF1D) & 0x72FE82B6)) ^ 0x15AC243);
  *(v6 - 208) = v10 + a1 + 1421510881;
  *(v6 - 168) = STACK[0x220];
  *(v6 - 192) = v7;
  *(v6 - 184) = v5;
  *(v6 - 176) = v10 + v8 + v9 + 2142236144;
  *(v6 - 172) = v1 - v10 - 2 * (v1 & 1) + 583765669;
  *(v6 - 200) = v2;
  (*(v4 + 8 * (a1 + 498)))(v6 - 208);
  LODWORD(STACK[0x43C]) = *(v6 - 160);
  JUMPOUT(0x23ABD0268);
}

uint64_t sub_23ABD02B4@<X0>(unsigned __int8 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v33 = v30 ^ 0x96;
  *(v31 - 116) = v30 ^ 0x96;
  v34 = a1[5] ^ 0xE2;
  *(v31 - 152) = v29;
  v35 = *(&off_284DD4450 + v30 - 363) - 8;
  v36 = v35[v34];
  v37 = v30;
  v38 = *(&off_284DD4450 + (v30 ^ 0x1C4u)) - 4;
  v39 = v38[a1[15] ^ 0x92];
  v40 = ((v35[a1[13] ^ 0xB9] << 16) ^ 0x10DC4CCD) & (v33 ^ 0x7AFF5E5C ^ v39) | v39 & 0x32;
  v41 = v38[((a1[7] & 0xC0 | 0x78337B4BA8955B05) & (a1[7] & 0x3F ^ 0x78337B4BE8DD5BCDLL) | a1[7] & 0x3A) ^ 0x78337B4BA8955BB6];
  v42 = *(&off_284DD4450 + v37 - 314) - 12;
  v43 = (v41 ^ 0xFFFFFFC7) & ((v36 << 16) ^ 0xE490D47F) | v41 & 0x80;
  v44 = ((((-87 * v42[a1[4] ^ 0x57] - 89) ^ 0xAC) << 24) ^ 0xF6B44633) & (v43 ^ 0x1BC72A40);
  v45 = v43 & 0x444B90CC;
  v46 = -87 * v42[a1[12] ^ 0x68] - 89;
  v47 = *(&off_284DD4450 + (v37 ^ 0x187u));
  LOBYTE(v33) = *(v47 + (a1[14] ^ 0xD6)) + 54;
  v48 = ((*(v47 + (a1[6] ^ 0x87)) + 54) ^ 0x30) << 8;
  v49 = (v48 | 0x6AA1B07B) ^ (v45 ^ 0xF1D6684 ^ v44) & ~v48;
  v50 = (((-87 * v42[a1[8] ^ 0xB9] - 89) ^ 0xBC) << 24) | ((v35[a1[9] ^ 0x3BLL] ^ 0xD9) << 16) | v38[a1[11] ^ 0x62] ^ 0xB;
  LODWORD(v38) = v38[a1[3] ^ 0x29] ^ 0x48 | ((v35[a1[1] ^ 8] ^ 0x28) << 16) | (((-87 * v42[*a1 ^ 0xE1] - 89) ^ 0xDA) << 24);
  LOBYTE(v35) = *(v47 + (a1[2] ^ 0x8FLL)) + 54;
  v51 = *(v47 + (a1[10] ^ 0xB7)) + 54;
  LODWORD(v47) = (((v46 << 24) ^ 0x53A3CAB0) & ~((v33 ^ 0x27) << 8) & 0xD024C80 | ((v33 ^ 0x27) << 8) & 0x400) ^ 0xCDE63C42 ^ ((((v46 << 24) ^ 0x53A3CAB0) & ~((v33 ^ 0x27) << 8) | ((v33 ^ 0x27) << 8) & 0x3500) ^ 0x905C314F) & (v40 ^ 0xE2BFFFB3);
  v52 = (v38 & 0xFFFF00FF | ((v35 ^ 0xD8) << 8)) ^ 0x1B;
  v53 = *(&off_284DD4450 + v37 - 334) - 4;
  v54 = v50 & 0xFFFF00FF | ((v51 ^ 0xE7) << 8);
  v55 = *(&off_284DD4450 + (v37 ^ 0x139u)) - 8;
  LODWORD(v35) = *&v53[4 * (BYTE2(v47) ^ 0xBA)] ^ *&v55[4 * (v33 ^ 0x7E)] ^ 0xD9116776;
  v56 = v35 - ((2 * v35) & 0x199172E8);
  *(v31 - 140) = v37;
  v57 = *(&off_284DD4450 + v37 - 377) - 8;
  v58 = *&v57[4 * (v46 ^ 0x88)];
  v59 = *(&off_284DD4450 + v37 - 255);
  LODWORD(v39) = *(v59 + 4 * (v39 ^ 0xD6));
  *(v31 - 216) = v52;
  LODWORD(v38) = v39 ^ v52 ^ (((v56 + 214481268) ^ v58) - ((2 * ((v56 + 214481268) ^ v58)) & 0xE31F83A6) + 1905246675);
  *(v31 - 204) = v49;
  v504 = v38;
  *(v31 - 208) = v54;
  v60 = v38 ^ v49 ^ v54;
  v507 = v38 ^ v49;
  LODWORD(v39) = v60 ^ v47;
  v61 = v60;
  v491 = v60;
  v498 = (v60 ^ v47);
  v62 = *(v59 + 4 * (v498 ^ 0x35u)) ^ 0x6543AC47;
  LODWORD(v39) = v39 ^ 0xF83672DE;
  *(v31 - 160) = BYTE1(v39);
  v63 = v62 ^ *&v55[4 * (BYTE1(v39) ^ 0x9E)];
  *(v31 - 144) = BYTE3(v39);
  v64 = (v63 - ((2 * v63) & 0x199172E8) + 214481268) ^ *&v57[4 * (BYTE3(v39) ^ 0x86)];
  v513 = BYTE2(v39);
  v501 = v38 ^ v49 ^ 0xA25B684D;
  v574 = v38 ^ *&v53[4 * (BYTE2(v39) ^ 0xBA)] ^ (v64 - ((2 * v64) & 0x9BBA15C4) - 841151774) ^ v501;
  v65 = v38 ^ *&v53[4 * (BYTE2(v39) ^ 0xBA)] ^ (v64 - ((2 * v64) & 0x9BBA15C4) - 841151774);
  *(v31 - 212) = v47;
  v66 = v574 ^ 0x4E ^ v47;
  v67 = v574 ^ 0xF73EC34E ^ v47 ^ 0x7E4FB786;
  *(v31 - 240) = HIBYTE(v67);
  v569 = BYTE2(v67);
  LODWORD(v47) = *&v53[4 * (BYTE2(v67) ^ 0xBA)] ^ *&v57[4 * (HIBYTE(v67) ^ 0x86)];
  v566 = BYTE1(v67);
  v68 = ((v47 ^ 0xC115B396) - 2 * ((v47 ^ 0xC115B396) & 0x14CC6D9C ^ v47 & 8) + 348941716) ^ *&v55[4 * (BYTE1(v67) ^ 0x9E)];
  *(v31 - 156) = v66;
  v69 = v65 ^ *(v59 + 4 * (v66 ^ 0x6Du)) ^ (v68 - ((2 * v68) & 0xE31F83A6) + 1905246675);
  *(v31 - 124) = v69;
  v70 = v61 ^ 0xF83672DE;
  v69 ^= 0xFEB4AEEu;
  v71 = v69 ^ v61 ^ 0xF83672DE;
  v72 = v69;
  *(v31 - 172) = v71;
  v73 = v71 ^ v67;
  *(v31 - 220) = BYTE2(v73);
  v74 = *&v53[4 * (BYTE2(v73) ^ 0xBA)];
  *(v31 - 168) = BYTE1(v73);
  v75 = *&v55[4 * (BYTE1(v73) ^ 0x9E)] ^ v74;
  *(v31 - 176) = HIBYTE(v73);
  v76 = ((v75 ^ 0xD9116776) - 2 * ((v75 ^ 0xD9116776) & 0xCC8B97C ^ v75 & 8) + 214481268) ^ *&v57[4 * (HIBYTE(v73) ^ 0x86)];
  *(v31 - 164) = v73;
  v77 = v72 ^ *(v59 + 4 * (v73 ^ 0xEBu));
  v78 = v72;
  *(v31 - 256) = v72;
  LODWORD(v38) = v77 ^ (v76 - ((2 * v76) & 0xE31F83A6) + 1905246675);
  v547 = v574 ^ 0xF73EC34E ^ v70;
  *(v31 - 128) = v38 ^ v547;
  v79 = v38 ^ v547 ^ 0x598844C8;
  v516 = v38 ^ v547 ^ 0xC8;
  v538 = v516 ^ v73;
  v540 = (v79 ^ v73 ^ 0xCD2CB9A0) >> 24;
  v80 = *(v59 + 4 * ((v79 ^ v73) ^ 0x83u)) ^ *&v57[4 * (v540 ^ 0x86)] ^ 0x7D4778A7;
  v81 = v79 ^ v73 ^ 0xCD5DCD68;
  v524 = BYTE2(v81);
  v82 = (v80 - ((2 * v80) & 0x9BBA15C4) - 841151774) ^ *&v53[4 * (BYTE2(v81) ^ 0xBA)];
  v83 = (v82 - ((2 * v82) & 0x2998DB28) + 348941716) ^ *&v55[4 * (BYTE1(v81) ^ 0x9E)];
  v84 = v78 ^ v574 ^ 0xF73EC34E;
  *(v31 - 248) = v84;
  *(v31 - 132) = v84 ^ 0x7E4FB786;
  v591 = v83 ^ v84 ^ 0x7E4FB786;
  v85 = v591 ^ 0xF39A3E26 ^ v73;
  v510 = v38;
  v593 = BYTE2(v85);
  v588 = v85;
  v86 = *&v53[4 * (BYTE2(v85) ^ 0xBA)] ^ *&v57[4 * ((v85 >> (v38 & 0x18) >> (v38 & 0x18 ^ 0x18)) ^ 0x86)];
  v585 = BYTE1(v85);
  v87 = ((v86 ^ 0xC115B396) - 2 * ((v86 ^ 0xC115B396) & 0x14CC6D95 ^ v86 & 1) + 348941716) ^ *&v55[4 * (BYTE1(v85) ^ 0x9E)];
  v580 = v83 ^ v38;
  v576 = v591 ^ 0xF39A3E26 ^ v79;
  v481 = v83 ^ v38 ^ *(v59 + 4 * (v591 ^ 0x26 ^ v79 ^ v81 ^ 0x83u)) ^ (v87 - ((2 * v87) & 0xE31F83A6) + 1905246675);
  LODWORD(v38) = v481 ^ 0x53DB0D92 ^ v591 ^ 0xF39A3E26;
  *(v31 - 232) = v481 ^ 0x53DB0D92;
  LODWORD(v39) = v38 ^ 0xF73EC34E;
  v486 = v38;
  v88 = v38 ^ 0xF73EC34E ^ v81 ^ 0xBF7FF0FA;
  v89 = v38 ^ 0x4E ^ v81;
  *(v31 - 180) = v89;
  v494 = BYTE2(v88);
  v90 = *&v53[4 * (BYTE2(v88) ^ 0xBA)] ^ *(v59 + 4 * (v89 ^ 0x11u)) ^ 0xBC52CB31;
  v479 = HIBYTE(v88);
  LODWORD(v38) = (v90 - ((2 * v90) & 0x199172E8) + 214481268) ^ *&v57[4 * (HIBYTE(v88) ^ 0x86)];
  v484 = BYTE1(v88);
  v91 = (v38 - ((2 * v38) & 0x2998DB28) + 348941716) ^ *&v55[4 * (BYTE1(v88) ^ 0x9E)] ^ v481 ^ 0x53DB0D92;
  *(v31 - 136) = v91;
  v476 = v39 ^ v576 ^ 0xCD5DCD68;
  v549 = v91 ^ 0x85DB0D92 ^ v481 ^ 0x53DB0D92 ^ v591 ^ 0xF39A3E26;
  v562 = BYTE2(v91) ^ 0xDB;
  v552 = v549 ^ 0x484133B4 ^ v476;
  LODWORD(v39) = v552 ^ 0xBDE5CEDC ^ v88;
  v563 = (v39 ^ 0x29A3E26) >> 24;
  v572 = ((v39 ^ 0x3E26) >> 8);
  v92 = *&v57[4 * (v563 ^ 0x86)] ^ *&v55[4 * (v572 ^ 0x9E)];
  v556 = ((v39 ^ 0x29A3E26) >> 16);
  v93 = ((v92 ^ 0x1804D4E0) - ((2 * (v92 ^ 0x1804D4E0)) & 0x9BBA15C4) - 841151774) ^ *&v53[4 * (v556 ^ 0xBA)];
  v544 = v39;
  v527 = v93 - ((2 * v93) & 0xE31F83A6) + 1905246675;
  v530 = v91 ^ 0x85DB0D92 ^ *(v59 + 4 * (v39 ^ 0xCDu));
  v533 = v530 ^ v527 ^ v549 ^ 0x484133B4;
  v522 = v533 ^ 0x19868409 ^ v552 ^ 0xBDE5CEDC;
  HIDWORD(v474) = v533 ^ 0x19868409;
  v94 = v522 ^ 0xC130088F ^ v39 ^ 0x29A3E26;
  v518 = (v94 ^ 0x7B68C86u) >> 24;
  v95 = *&v57[4 * (v518 ^ 0x86)];
  *(v31 - 120) = 0;
  *(v31 - 200) = v32;
  v450 = ((v94 ^ 0x8C86) >> 8);
  v96 = *&v55[4 * (v450 ^ 0x9E)] ^ v95;
  v97 = ((v94 ^ 0x7B68C86u) >> 16);
  LODWORD(v474) = v94 ^ 0x7B68C86;
  LODWORD(v38) = ((v96 ^ 0x1804D4E0) - 2 * ((v96 ^ 0x1804D4E0) & 0x4DDD0AF6 ^ v96 & 0x14) - 841151774) ^ *&v53[4 * (v97 ^ 0xBA)];
  v452 = v522 ^ 0x8F ^ v39 ^ 0x26;
  BYTE2(v81) = BYTE2(v530) ^ BYTE2(v527);
  v456 = v530 ^ v527;
  v442 = v530 ^ v527 ^ *(v59 + 4 * (v452 ^ 0x6Du)) ^ (v38 - ((2 * v38) & 0xE31F83A6) + 1905246675);
  HIDWORD(v475) = v442 ^ 0x7B68C86;
  v98 = v442 ^ 0x7B68C86 ^ v533 ^ 0x19868409;
  v99 = v98 ^ v522 ^ 0xC130088F;
  LODWORD(v475) = v99 ^ 0xC104CD8D;
  v100 = v99 ^ 0xC104CD8D ^ v94 ^ 0x7B68C86 ^ 0xA91877A2;
  v470 = v99 ^ 0x8D ^ v94 ^ 0x86;
  LODWORD(v38) = *&v57[4 * (HIBYTE(v100) ^ 0x86)] ^ *(v59 + 4 * (v470 ^ 0x49u));
  LODWORD(v57) = *&v55[4 * (BYTE1(v100) ^ 0x9E)];
  v101 = (v38 ^ 0x7D4778A7) - 2 * ((v38 ^ 0x7D4778A7) & 0x14CC6D9C ^ v38 & 8) + 348941716;
  v489 = ((v101 ^ v57) - ((2 * (v101 ^ v57)) & 0x9BBA15C4) - 841151774) ^ *&v53[4 * (BYTE2(v100) ^ 0xBA)];
  v102 = BYTE2(v70);
  v103 = *(v31 - 140);
  v104 = *(&off_284DD4450 + (v103 ^ 0x1E2u)) - 12;
  LODWORD(v57) = (v102 ^ 0xFD84E2EE) - 405971760 + *&v104[4 * (v102 ^ 0x7E)];
  BYTE1(v501) = BYTE1(v504) ^ 0x6F;
  v105 = *(&off_284DD4450 + v103 - 288) - 4;
  LODWORD(v39) = ((BYTE2(v501) ^ 0xFD84E273) - 405971760 + *&v104[4 * (BYTE2(v501) ^ 0xE3)]) ^ (-1974868763 * *&v105[4 * (HIBYTE(v507) ^ 0xE7)] + 432939589);
  v106 = *(&off_284DD4450 + v103 - 262) - 4;
  LODWORD(v57) = (v57 - ((2 * v57) & 0x77AA03FC) + 1003815422) ^ *&v106[4 * (v491 ^ 0x33)];
  v107 = (-1974868763 * *&v105[4 * (HIBYTE(v504) ^ 0xCB)] + 432939589) ^ ((((v504 ^ 0x6AB66F6C) >> 16) ^ 0xFD84E2EB) - 405971760 + *&v104[4 * (((v504 ^ 0x6AB66F6C) >> 16) ^ 0x7B)]);
  v108 = *(&off_284DD4450 + v103 - 264) - 4;
  v109 = (v39 - ((2 * v39) & 0xEE4F534E) - 148395609) ^ *&v108[4 * (BYTE1(v507) ^ 0x4B)];
  v110 = (v107 - ((2 * v107) & 0x77AA03FC) + 1003815422) ^ *&v106[4 * (v504 ^ 0x1C)];
  v505 = v109 - ((2 * v109) & 0x77AA03FC);
  v111 = (v513 ^ 0xFD84E215) - 405971760 + *&v104[4 * (v513 ^ 0x85)];
  v514 = *&v108[4 * (BYTE1(v491) ^ 0xE4)] ^ (-1974868763 * *&v105[4 * (HIBYTE(v491) ^ 0x54)] + 432939589) ^ (v57 - ((2 * v57) & 0xEE4F534E) - 148395609);
  v112 = (-1974868763 * *&v105[4 * (*(v31 - 144) ^ 0xBE)] + 432939589) ^ *&v106[4 * (v498 ^ 0xEF)] ^ (v111 - ((2 * v111) & 0x77AA03FC) + 1003815422);
  v499 = v110 - ((2 * v110) & 0xEE4F534E);
  HIDWORD(v473) = v112 - ((2 * v112) & 0xEE4F534E);
  v113 = (((v481 ^ 0xB89A99EC) >> 16) ^ 0xFD84E2A4) - 405971760 + *&v104[4 * (((v481 ^ 0xB89A99EC) >> 16) ^ 0x34)];
  v114 = v479 ^ 0xB6;
  v472 = BYTE1(v476) ^ 0x50;
  LODWORD(v57) = *&v105[4 * (HIBYTE(v476) ^ 0xD2)];
  *(v31 - 144) = 1003815423;
  v115 = ((BYTE2(v476) ^ 0xFD84E240) - 405971760 + *&v104[4 * (BYTE2(v476) ^ 0xD0)]) ^ *&v106[4 * (v476 ^ 0x5F)] ^ (432939589 - 197537311 * v57 - 1777331452 * v57 - 2 * ((432939589 - 197537311 * v57 - 1777331452 * v57) & 0x3BD501FF ^ (432939589 - 197537311 * v57) & 1) + 1003815422);
  v480 = v507 ^ 0x25;
  v116 = (-1974868763 * *&v105[4 * v114] - ((345229770 * *&v105[4 * v114] + 865879178) & 0xEE4F534E) + 284543980) ^ *&v108[4 * (v484 ^ 0x25)];
  v492 = v116 - ((2 * v116) & 0x77AA03FC);
  v117 = *&v108[4 * (BYTE1(v481) ^ 0x99)] ^ (v113 - ((2 * v113) & 0xEE4F534E) - 148395609);
  v118 = (((v486 ^ 0xE14101D4) >> 16) ^ 0xFD84E2EA) - 405971760 + *&v104[4 * (((v486 ^ 0xE14101D4) >> 16) ^ 0x7A)];
  v485 = v117 - ((2 * v117) & 0x77AA03FC);
  v462 = HIBYTE(v481) ^ 0x48;
  v482 = v115 - ((2 * v115) & 0xEE4F534E);
  v477 = BYTE1(v486) ^ 0x2D;
  v119 = (v118 - ((2 * v118) & 0x77AA03FC) + 1003815422) ^ *&v106[4 * (v486 ^ 0xA4)] ^ (-1974868763 * *&v105[4 * (HIBYTE(v486) ^ 0x40)] + 432939589);
  v487 = v119 - ((2 * v119) & 0xEE4F534E);
  v508 = (v494 ^ 0xFD84E217) - 405971760 + *&v104[4 * (v494 ^ 0x87)];
  v467 = BYTE1(v510) ^ 0x36;
  v495 = v510 ^ *(v31 - 132);
  v120 = *&v105[4 * (HIBYTE(v495) ^ 0x39)];
  v121 = (((v510 ^ 0xFC9A360D) >> 16) ^ 0xFD84E279) - 405971760 + *&v104[4 * (((v510 ^ 0xFC9A360D) >> 16) ^ 0xE9)];
  v122 = (-1974868763 * v120 - ((345229770 * v120 + 865879178) & 0xEE4F534E) + 284543980) ^ *&v108[4 * ((v495 ^ 0xDA26) >> 8)];
  v123 = (v524 ^ 0xFD84E284) - 405971760 + *&v104[4 * (v524 ^ 0x14)];
  v124 = (v121 - ((2 * v121) & 0x77AA03FC) + 1003815422) ^ *&v106[4 * (v510 ^ 0x7D)] ^ (-1974868763 * *&v105[4 * (HIBYTE(v510) ^ 0x5D)] + 432939589);
  v461 = *(v31 - 128) ^ 0xAF58D76C;
  v125 = (BYTE2(v461) ^ 0xFD84E2EB) - 405971760 + *&v104[4 * (BYTE2(v461) ^ 0x7B)];
  v525 = v122 - ((2 * v122) & 0x77AA03FC);
  v126 = (v125 - ((2 * v125) & 0x77AA03FC) + 1003815422) ^ *&v106[4 * (v516 ^ 0xD4)];
  HIDWORD(v465) = v126 - ((2 * v126) & 0xEE4F534E);
  v517 = (((v495 ^ 0xEA49DA26) >> 16) ^ 0xFD84E2EB) - 405971760 + *&v104[4 * (((v495 ^ 0xEA49DA26) >> 16) ^ 0x7B)];
  v127 = (v123 - ((2 * v123) & 0xEE4F534E) - 148395609) ^ *&v108[4 * (BYTE1(v81) ^ 0xE5)] ^ (-1974868763 * *&v105[4 * (v540 ^ 0xF0)] + 432939589);
  v464 = v124 - ((2 * v124) & 0xEE4F534E);
  v511 = v538 ^ 0xC3;
  v541 = v127 - ((2 * v127) & 0x77AA03FC);
  LODWORD(v465) = v65 ^ 0xD1;
  v128 = (v569 ^ 0xFD84E219) - 405971760 + *&v104[4 * (v569 ^ 0x89)];
  v129 = (v128 - ((2 * v128) & 0xEE4F534E) - 148395609) ^ *&v108[4 * (v566 ^ 0x93)];
  v535 = v129 - ((2 * v129) & 0x77AA03FC);
  v130 = *&v105[4 * (HIBYTE(v547) ^ 0xDE)];
  v131 = (((v574 ^ 0x47E1030D) >> 16) ^ 0xFD84E2EB) - 405971760 + *&v104[4 * (((v574 ^ 0x47E1030D) >> 16) ^ 0x7B)];
  v132 = (v131 - ((2 * v131) & 0xEE4F534E) - 148395609) ^ *&v108[4 * ((v574 ^ 0x30D) >> 8)];
  v455 = BYTE1(v65) ^ 0x9D;
  v133 = ((BYTE2(v547) ^ 0xFD84E243) - 405971760 + *&v104[4 * (BYTE2(v547) ^ 0xD3)]) ^ *&v108[4 * (BYTE1(v547) ^ 0xDB)] ^ (-1974868763 * v130 - ((345229770 * v130 + 865879178) & 0xEE4F534E) + 284543980);
  v570 = (((v65 ^ 0x37B09DC8) >> 16) ^ 0xFD84E2EB) - 405971760 + *&v104[4 * (((v65 ^ 0x37B09DC8) >> 16) ^ 0x7B)];
  v459 = v132 - ((2 * v132) & 0x77AA03FC);
  v458 = v547 ^ 0x6A;
  v554 = v133 - ((2 * v133) & 0x77AA03FC);
  v134 = (-1974868763 * *&v105[4 * (v518 ^ 0xAC)] + 432939589) ^ ((v97 ^ 0xFD84E2A8) - 405971760 + *&v104[4 * (v97 ^ 0x38)]);
  v135 = (v134 - ((2 * v134) & 0xEE4F534E) - 148395609) ^ *&v108[4 * (v450 ^ 0xD9)];
  v136 = (BYTE2(v522) ^ 0xFD84E256) - 405971760 + *&v104[4 * (BYTE2(v522) ^ 0xC6)];
  v137 = v136 - ((2 * v136) & 0x77AA03FC);
  v138 = *&v105[4 * ((v530 ^ ~v527) >> 24)];
  v139 = (-1974868763 * v138 - ((345229770 * v138 + 865879178) & 0xEE4F534E) + 284543980) ^ *&v108[4 * ((v530 ^ v527 ^ 0xA6D4) >> 8)];
  v519 = v452 ^ 0xF9;
  v140 = (v137 + 1003815422) ^ *&v106[4 * (v533 ^ 9 ^ v552 ^ 0xDC ^ 0x67)] ^ (-1974868763 * *&v105[4 * (HIBYTE(v522) ^ 0x3E)] + 432939589);
  v531 = v135 - ((2 * v135) & 0x77AA03FC);
  v528 = v139 - ((2 * v139) & 0x77AA03FC);
  v447 = BYTE1(v533) ^ 0x9E;
  v141 = *&v105[4 * (HIBYTE(v533) ^ 0xCD)];
  v142 = *&v106[4 * (v533 ^ 0xC9)] ^ (-1974868763 * v141 - ((345229770 * v141 + 865879178) & 0x77AA03FC) + 1436755011);
  v453 = v142 - ((2 * v142) & 0xEE4F534E);
  v567 = (BYTE2(v81) ^ 0xFD84E202) - 405971760 + *&v104[4 * (BYTE2(v81) ^ 0x92)];
  v443 = BYTE1(v522) ^ 0x4F;
  v448 = v140 - ((2 * v140) & 0xEE4F534E);
  v548 = (BYTE2(v533) ^ 0xFD84E2FB) - 405971760 + *&v104[4 * (BYTE2(v533) ^ 0x6B)];
  v143 = (BYTE2(v549) ^ 0xFD84E271) - 405971760 + *&v104[4 * (BYTE2(v549) ^ 0xE1)];
  v144 = (v143 - ((2 * v143) & 0xEE4F534E) - 148395609) ^ *&v108[4 * (BYTE1(v549) ^ 0x28)];
  v451 = v549 ^ 0xAE;
  v145 = *&v105[4 * (HIBYTE(v552) ^ 0x22)];
  BYTE2(v140) = BYTE2(v552) ^ 0x86;
  v146 = (-1974868763 * v145 - ((345229770 * v145 + 865879178) & 0xEE4F534E) + 284543980) ^ *&v108[4 * ((v552 ^ 0x4AFA) >> 8)];
  v445 = v552 ^ 0xE4;
  v553 = v144 - ((2 * v144) & 0x77AA03FC);
  v534 = v146 - ((2 * v146) & 0x77AA03FC);
  v539 = (BYTE2(v140) ^ 0xFD84E2A5) - 405971760 + *&v104[4 * (BYTE2(v140) ^ 0x35)];
  v439 = v563 ^ 0x67;
  v543 = (v556 ^ 0xFD84E291) - 405971760 + *&v104[4 * (v556 ^ 1)];
  LODWORD(v38) = *(v31 - 136);
  v147 = *&v105[4 * ((v38 >> 24) ^ 0x82)];
  v148 = (-1974868763 * v147 - ((345229770 * v147 + 865879178) & 0xEE4F534E) + 284543980) ^ *&v108[4 * (BYTE1(v38) ^ 5)] ^ ((v562 ^ 0xFD84E2FE) - 405971760 + *&v104[4 * (v562 ^ 0x6E)]);
  v564 = v148 - ((2 * v148) & 0x77AA03FC);
  v149 = (((v98 ^ 0x23AAC875) >> 16) ^ 0xFD84E2B7) - 405971760 + *&v104[4 * (((v98 ^ 0x23AAC875) >> 16) ^ 0x27)];
  v557 = v572 ^ 0x72;
  v150 = (v149 - ((2 * v149) & 0xEE4F534E) - 148395609) ^ *&v108[4 * ((v98 ^ 0xC875) >> 8)];
  v433 = BYTE1(v99) ^ 0x4E;
  v151 = *&v105[4 * (HIBYTE(v99) ^ 0x27)];
  v152 = (-1974868763 * v151 - ((345229770 * v151 + 865879178) & 0x77AA03FC) + 1436755011) ^ *&v106[4 * ((v98 ^ v522 ^ 0x8F) ^ 0x5A)];
  v560 = v98 ^ 5;
  v573 = v150 - ((2 * v150) & 0x77AA03FC);
  v438 = BYTE1(v442) ^ 0x82;
  v153 = (((v442 ^ 0xC1698200) >> 16) ^ 0xFD84E2EB) - 405971760 + *&v104[4 * (((v442 ^ 0xC1698200) >> 16) ^ 0x7B)];
  v431 = HIBYTE(v98) ^ 0x82;
  v154 = *&v105[4 * (HIBYTE(v100) ^ 0x21)];
  v155 = (-1974868763 * *&v105[4 * (HIBYTE(v442) ^ 0x60)] + 432939589) ^ *&v106[4 * (v442 ^ 0x72)] ^ (v153 - ((2 * v153) & 0x77AA03FC) + 1003815422);
  v156 = (432939589 - 197537311 * v154 - 1777331452 * v154 - 2 * ((432939589 - 197537311 * v154 - 1777331452 * v154) & *(v31 - 144) ^ (432939589 - 197537311 * v154) & 1) + 1003815422) ^ *&v106[4 * (v470 ^ 0x12)] ^ ((BYTE2(v100) ^ 0xFD84E2A2) - 405971760 + *&v104[4 * (BYTE2(v100) ^ 0x32)]);
  v157 = HIBYTE(v574) ^ 0xE6;
  v440 = v574 ^ 0x7D;
  v468 = BYTE1(v100) ^ 0x7D;
  v436 = v155 - ((2 * v155) & 0xEE4F534E);
  v434 = v156 - ((2 * v156) & 0xEE4F534E);
  HIDWORD(v432) = v152 - ((2 * v152) & 0xEE4F534E);
  v575 = (((v99 ^ 0x68D34E2A) >> 16) ^ 0xFD84E2EB) - 405971760 + *&v104[4 * (((v99 ^ 0x68D34E2A) >> 16) ^ 0x7B)];
  v158 = *(v31 - 240) ^ 0x32;
  v159 = (BYTE2(v580) ^ 0xFD84E2A2) - 405971760 + *&v104[4 * (BYTE2(v580) ^ 0x32)];
  v160 = (BYTE2(v576) ^ 0xFD84E24B) - 405971760 + *&v104[4 * (BYTE2(v576) ^ 0xDB)];
  HIDWORD(v429) = v585 ^ 0x6E;
  v161 = (v160 - ((2 * v160) & 0x77AA03FC) + 1003815422) ^ *&v106[4 * (v576 ^ 0x15)];
  LODWORD(v57) = (BYTE2(v591) ^ 0xFD84E22B) - 405971760 + *&v104[4 * (BYTE2(v591) ^ 0xBB)];
  v162 = (v159 - ((2 * v159) & 0x77AA03FC) + 1003815422) ^ *&v106[4 * (v580 ^ 0x54)] ^ (-1974868763 * *&v105[4 * (HIBYTE(v580) ^ 0xEA)] + 432939589);
  LODWORD(v428) = BYTE1(v580) ^ 0x83;
  LODWORD(v429) = v162 - ((2 * v162) & 0xEE4F534E);
  HIDWORD(a3) = BYTE1(v576) ^ 0xCC;
  HIDWORD(v428) = v161 - ((2 * v161) & 0xEE4F534E);
  v586 = v588 ^ 0x81;
  LODWORD(v430) = v591 ^ 0xB;
  v163 = (v57 - ((2 * v57) & 0xEE4F534E) - 148395609) ^ *&v108[4 * (BYTE1(v591) ^ 0x56)] ^ (-1974868763 * *&v105[4 * (HIBYTE(v591) ^ 0x6D)] + 432939589);
  *(v31 - 240) = v163 - ((2 * v163) & 0x77AA03FC);
  v523 = (v593 ^ 0xFD84E2DC) - 405971760 + *&v104[4 * (v593 ^ 0x4C)];
  v164 = (*(v31 - 220) ^ 0xFD84E246) - 405971760 + *&v104[4 * (*(v31 - 220) ^ 0xD6)];
  v165 = v164 - ((2 * v164) & 0xEE4F534E);
  v166 = BYTE2(*(v31 - 256));
  v167 = *(v31 - 124);
  v168 = (-1974868763 * *&v105[4 * (HIBYTE(v167) ^ 0x41)] + 432939589) ^ ((v166 ^ 0xFD84E273) - 405971760 + *&v104[4 * (v166 ^ 0xE3)]);
  LODWORD(v38) = *(v31 - 248);
  v169 = (v168 - ((2 * v168) & 0xEE4F534E) - 148395609) ^ *&v108[4 * (BYTE1(v167) ^ 0x6F)];
  v170 = BYTE2(*(v31 - 132));
  v171 = *&v105[4 * v462];
  v172 = *&v105[4 * (HIBYTE(*(v31 - 128)) ^ 0xE)];
  v173 = (v170 ^ 0xFD84E2B8) - 405971760 + *&v104[4 * (v170 ^ 0x28)];
  v174 = *&v105[4 * (HIBYTE(v65) ^ 0x96)];
  v175 = *&v105[4 * v157];
  v176 = *&v105[4 * v158];
  v177 = (v173 - ((2 * v173) & 0x77AA03FC) + 1003815422) ^ *&v106[4 * (v38 ^ 0xCE)];
  v178 = *&v105[4 * v439];
  v179 = *&v105[4 * (HIBYTE(v549) ^ 0xD7)];
  *(v31 - 128) = v177 - ((2 * v177) & 0xEE4F534E);
  v180 = *&v105[4 * v431];
  LODWORD(v57) = *&v105[4 * (HIBYTE(v576) ^ 0x5B)];
  v181 = *(v31 - 172) ^ 0xBC;
  v182 = *&v105[4 * (HIBYTE(v588) ^ 0x17)];
  v183 = *(v31 - 172);
  v184 = *&v105[4 * (HIBYTE(v183) ^ 0x18)];
  v185 = *&v105[4 * (*(v31 - 176) ^ 7)];
  BYTE1(v42) = BYTE1(v38);
  LODWORD(v38) = *&v105[4 * ((v38 >> 24) ^ 0x2E)];
  v583 = -1974868763 * v171 + 432939589;
  *(v31 - 220) = -1974868763 * v172 + 432939589;
  v578 = -1974868763 * v174 + 432939589;
  *(v31 - 176) = -1974868763 * v175 + 432939589;
  v186 = -1974868763 * v176 + 432939589;
  v589 = -1974868763 * v179 + 432939589;
  v550 = -1974868763 * v180 + 432939589;
  LODWORD(v469) = -1974868763 * v178 + 432939589;
  HIDWORD(v469) = -1974868763 * v57 + 432939589;
  LODWORD(v471) = -1974868763 * v182 + 432939589;
  LODWORD(v473) = -1974868763 * v38 + 432939589;
  LODWORD(v38) = (432939589 - 197537311 * v184 - 1777331452 * v184 - 2 * ((432939589 - 197537311 * v184 - 1777331452 * v184) & *(v31 - 144) ^ (432939589 - 197537311 * v184) & 1) + 1003815422) ^ *&v106[4 * v181];
  v187 = *&v108[4 * (*(v31 - 168) ^ 0xB0)] ^ (-1974868763 * v185 + 432939589);
  HIDWORD(v444) = *&v108[4 * BYTE1(v501)];
  HIDWORD(v441) = *&v108[4 * (*(v31 - 160) ^ 0xD0)];
  *(v31 - 160) = *&v108[4 * v472];
  *(v31 - 168) = *&v108[4 * v477];
  *(v31 - 144) = *&v108[4 * BYTE1(v461)];
  v581 = *&v108[4 * v467];
  v577 = *&v108[4 * v455];
  LODWORD(v466) = *&v108[4 * v443];
  HIDWORD(v460) = *&v108[4 * v447];
  LODWORD(v463) = *&v108[4 * v557];
  v558 = *&v108[4 * v438];
  HIDWORD(v446) = *&v108[4 * v468];
  v188 = *&v108[4 * v433];
  HIDWORD(v471) = *&v108[4 * HIDWORD(v429)];
  LODWORD(v478) = *&v108[4 * v428];
  HIDWORD(v454) = *&v108[4 * HIDWORD(a3)];
  v502 = *&v108[4 * (BYTE1(v42) ^ 0x74)];
  HIDWORD(v466) = *&v108[4 * (BYTE1(v183) ^ 0xF4)];
  LODWORD(v57) = *&v104[4 * (BYTE2(v183) ^ 0xF4)];
  LODWORD(v437) = v499 - 148395609;
  HIDWORD(v430) = *&v106[4 * v480];
  LODWORD(v432) = HIDWORD(v473) - 148395609;
  LODWORD(v483) = v482 - 148395609;
  HIDWORD(v478) = v487 - 148395609;
  *(v31 - 172) = HIDWORD(v465) - 148395609;
  v189 = v464 - 148395609;
  LODWORD(v454) = v453 - 148395609;
  HIDWORD(v463) = v448 - 148395609;
  LODWORD(v444) = v436 - 148395609;
  LODWORD(v449) = v434 - 148395609;
  v500 = *(v31 - 128) - 148395609;
  v488 = v38 - ((2 * v38) & 0xEE4F534E) - 148395609;
  v190 = *&v106[4 * (*(v31 - 180) ^ 0xBF)];
  v191 = *&v106[4 * (*(v31 - 232) ^ 0xE)];
  v496 = *&v106[4 * (v495 ^ 0x3D)];
  v512 = *&v106[4 * v511];
  LODWORD(v55) = *&v106[4 * v465];
  LODWORD(v38) = *&v106[4 * (*(v31 - 156) ^ 0xC9)];
  *(v31 - 180) = *&v106[4 * v440];
  *(v31 - 156) = *&v106[4 * v458];
  LODWORD(v441) = *&v106[4 * v519];
  v192 = *&v106[4 * (v456 ^ 0x1C)];
  LODWORD(v457) = *&v106[4 * (v544 ^ 0x97)];
  LODWORD(v465) = (BYTE2(v183) ^ 0xFD84E264) - 405971760 + v57;
  v193 = *&v106[4 * v451];
  HIDWORD(v449) = *&v106[4 * v445];
  LODWORD(v446) = *&v106[4 * (*(v31 - 136) ^ 0x33)];
  v545 = *&v106[4 * v560];
  v520 = *&v106[4 * v586];
  HIDWORD(v437) = *&v106[4 * v430];
  HIDWORD(v457) = *&v106[4 * (*(v31 - 124) ^ 0x45)];
  *(v31 - 164) = *&v106[4 * (*(v31 - 164) ^ 0xF2)];
  v194 = v505 + 1003815422;
  v195 = v492 + 1003815422;
  v196 = v485 + 1003815422;
  v506 = v525 + 1003815422;
  HIDWORD(v435) = v541 + 1003815422;
  LODWORD(v105) = v535 + 1003815422;
  HIDWORD(v483) = v459 + 1003815422;
  v493 = v554 + 1003815422;
  v197 = v528 + 1003815422;
  v536 = v564 + 1003815422;
  v529 = *(v31 - 240) + 1003815422;
  LODWORD(v435) = v169 - ((2 * v169) & 0x77AA03FC) + 1003815422;
  LODWORD(v460) = ((v165 - 148395609) ^ v187) - ((2 * ((v165 - 148395609) ^ v187)) & 0x77AA03FC) + 1003815422;
  LODWORD(v104) = (HIDWORD(v432) - 148395609) ^ v188 ^ v575 ^ 0xC38F08C7;
  v198 = v38 ^ v186 ^ 0xADE18B96 ^ v105;
  v199 = *(v31 - 140);
  v200 = *(&off_284DD4450 + (v199 ^ 0x13Eu)) - 8;
  v201 = *(&off_284DD4450 + (v199 ^ 0x1A8u)) - 8;
  v202 = *(&off_284DD4450 + (v199 ^ 0x1EBu)) - 8;
  LODWORD(v105) = (((v200[*(v31 - 111) ^ 0xD5] + 45) ^ 0xED) << 16) | ((v202[*(v31 - 112) ^ 1] ^ 0x42) << 24);
  v203 = ((v201[*(v31 - 102) ^ 0x49] ^ 0x47) << 8) & 0xFF00FFFF | (((v200[*(v31 - 103) ^ 0xB3] + 45) ^ 0x59) << 16);
  LODWORD(v38) = (((v200[*(v31 - 99) ^ 0xDLL] + 45) ^ 0xA9) << 16) | ((v202[*(v31 - 100) ^ 0xCALL] ^ 0xD0) << 24);
  v204 = *(v31 - 107) ^ 0x45;
  v205 = ((v201[*(v31 - 106) ^ 0xD5] ^ 0x64) << 8) | ((v202[*(v31 - 108) ^ 0xC2] ^ 0x88888888) << 24);
  *(v31 - 240) = v201;
  *(v31 - 232) = v200;
  v206 = v205 & 0xFF00FFFF | (((v200[v204] + 45) ^ 0x16) << 16);
  v207 = *(&off_284DD4450 + v199 - 312) - 8;
  LODWORD(v38) = v38 & 0xFFFFFF00 | ((v201[*(v31 - 98) ^ 0xC6] ^ 0x1A) << 8) | (53 * v207[*(v31 - 97) ^ 0xCBLL] - 115) ^ 0x79;
  LODWORD(v200) = v105 & 0xFFFFFF00 | ((v201[*(v31 - 110) ^ 0xE7] ^ 0xFE) << 8) | (53 * v207[*(v31 - 109) ^ 0x8ALL] - 115) ^ 0xC9;
  v208 = v206 & 0xFFFFFF00 | (53 * v207[*(v31 - 105) ^ 0xB9] - 115) ^ 0x3C;
  v209 = *(v31 - 104) ^ 0x8ALL;
  v210 = *(v31 - 101) ^ 6;
  *(v31 - 256) = v207;
  v211 = v203 & 0xFFFFFF00 | (53 * v207[v210] - 115) ^ 0x87;
  *(v31 - 248) = v202;
  v212 = v211 | ((v202[v209] ^ 0xAF) << 24);
  *(v31 - 136) = v200 ^ 0x37373737;
  *(v31 - 132) = v38 ^ 0x37373737;
  *(v31 - 128) = v208 ^ 0x37373737;
  *(v31 - 140) = v212 ^ 0x37373737;
  v592 = v197 ^ v192 ^ v567;
  v590 = (v553 + 1003815422) ^ v193 ^ v589;
  v587 = v195 ^ v190 ^ v508;
  v584 = v196 ^ v191 ^ v583;
  v582 = v581 ^ v189;
  v213 = *(v31 - 200);
  v579 = v577 ^ v55 ^ v570 ^ v578;
  v214 = v514 - ((2 * v514) & 0x4DE5FFDE);
  *(v31 - 124) = (((*(v31 - 152) ^ 0x202B3948) + 390270200) ^ ((*(v31 - 152) ^ 0x3707B5E3) + 7307357) ^ ((*(v31 - 152) ^ 0xDAEF5735) - 309894517)) - 845024879;
  LODWORD(v202) = v489 ^ HIDWORD(v474) ^ 0xB9EF8AB;
  v571 = v474 ^ v202 ^ 0xB7778D02;
  v568 = v489 ^ HIDWORD(v474) ^ 0xB530938F;
  v565 = v475 ^ v202 ^ 0xB2CF6573;
  v561 = HIDWORD(v475) ^ v489 ^ 0xD960783;
  v559 = v558 ^ v444;
  v555 = v545 ^ (v573 + 1003815422) ^ v550;
  HIDWORD(v551) = HIDWORD(v446) ^ v449;
  LODWORD(v551) = v441 ^ (v531 + 1003815422);
  HIDWORD(v546) = HIDWORD(v460) ^ v454 ^ v548;
  LODWORD(v546) = HIDWORD(v463) ^ v466;
  HIDWORD(v542) = v457 ^ v463 ^ v469 ^ v543;
  LODWORD(v542) = HIDWORD(v449) ^ v539 ^ (v534 + 1003815422);
  HIDWORD(v537) = v446 ^ v536;
  LODWORD(v537) = *(v31 - 160) ^ v483;
  HIDWORD(v532) = *(v31 - 168) ^ HIDWORD(v478);
  LODWORD(v532) = HIDWORD(v454) ^ (HIDWORD(v428) - 148395609) ^ HIDWORD(v469);
  HIDWORD(v526) = HIDWORD(v437) ^ v529;
  LODWORD(v526) = HIDWORD(v471) ^ v520 ^ v471 ^ v523;
  LODWORD(v202) = *(v31 - 120);
  HIDWORD(v521) = v478 ^ (v429 - 148395609);
  LODWORD(v521) = v512 ^ HIDWORD(v435);
  HIDWORD(v515) = v496 ^ v506 ^ v517;
  LODWORD(v515) = *(v31 - 144) ^ *(v31 - 220) ^ *(v31 - 172);
  HIDWORD(v509) = HIDWORD(v457) ^ v435;
  LODWORD(v509) = HIDWORD(v466) ^ v465 ^ v488;
  HIDWORD(v503) = *(v31 - 164) ^ v460;
  LODWORD(v503) = v502 ^ v500 ^ v473;
  HIDWORD(v497) = *(v31 - 180) ^ HIDWORD(v483) ^ *(v31 - 176);
  LODWORD(v497) = *(v31 - 156) ^ v493;
  *(v31 - 220) = v198;
  LODWORD(v201) = *(v31 - 116);
  LODWORD(v490) = v214 + 653459439;
  HIDWORD(v490) = 46032142 - v198 - v104;
  HIDWORD(a29) = HIDWORD(v490) ^ v104;
  *(v31 - 120) = v202;
  *(v31 - 116) = v201;
  *(v31 - 180) = 0;
  *(v31 - 144) = *(v31 - 124) < 0xC84DDFB3;
  LODWORD(v201) = (v201 + 378) | 0x101;
  v215 = v202;
  v216 = (v213 + v202);
  v218 = *(v31 - 240);
  v217 = *(v31 - 232);
  LODWORD(v38) = ((*(v217 + (v216[5] ^ 0x87)) + 45) ^ 0x74) << 16;
  v220 = *(v31 - 256);
  v219 = *(v31 - 248);
  LODWORD(v202) = *(v219 + (v216[4] ^ 2));
  *(v31 - 176) = v201;
  v221 = (v201 - 925) + v215;
  *(v31 - 152) = v221;
  LODWORD(v215) = v38 | ((v202 ^ 0x98) << 24);
  LODWORD(v38) = *(v218 + (*(v213 + v221) ^ 8)) ^ 0x7C;
  v222 = v216[7] ^ 0xBFLL;
  v223 = v215 & 0xFFFFFF00 | ((*(v218 + (v216[6] ^ 0xE2)) ^ 0x38) << 8) | (53 * *(v220 + v222) - 115) ^ 0xFA;
  v224 = ((53 * *(v220 + (v216[15] ^ 0x3CLL)) - 115) ^ 0x68 | (v38 << 8)) & 0xFF00FFFF | ((*(v219 + (v216[12] ^ 0xBDLL)) ^ 0xB0) << 24) | (((*(v217 + (v216[13] ^ 0xCALL)) + 45) ^ 0xFD) << 16);
  v225 = (53 * *(v220 + (v216[3] ^ 0x19)) - 115) ^ 0x38 | ((*(v219 + (*v216 ^ 0x50)) ^ 0xAD) << 24) | (((*(v217 + (v216[1] ^ 0x1ELL)) + 45) ^ 0x68) << 16) | (*(v218 + (v216[2] ^ 6)) << 8);
  v226 = ((*(v219 + v216[8]) ^ 0x93) << 24) | (((*(v217 + (v216[9] ^ 0xB0)) + 45) ^ 0x86) << 16) | ((*(v218 + (v216[10] ^ 0x42)) ^ 0xFD) << 8) | (53 * *(v220 + (v216[11] ^ 0x60)) - 115) ^ 0xDA;
  if ((((53 * *(v220 + v222) - 115) ^ 0xFA) & 2) != 0)
  {
    v227 = -2;
  }

  else
  {
    v227 = 2;
  }

  *(v31 - 168) = v223;
  *(v31 - 164) = v224;
  v228 = BYTE1(v571) ^ BYTE1(v224);
  v229 = v568 ^ (v227 + v223);
  *(v31 - 160) = v226;
  *(v31 - 172) = v225;
  v230 = *(&off_284DD4450 + *(v31 - 116) - 157) - 12;
  v231 = *&v230[4 * ((v565 ^ v226) >> 8)];
  HIDWORD(v233) = v231 ^ 0x10D;
  LODWORD(v233) = v231 ^ 0xB39C000;
  v232 = v233 >> 14;
  v234 = *(&off_284DD4450 + (*(v31 - 116) ^ 0x164)) - 8;
  v235 = *&v230[4 * ((v561 ^ v225) >> 8)];
  HIDWORD(v233) = v235 ^ 0x10D;
  LODWORD(v233) = v235 ^ 0xB39C000;
  v236 = *(&off_284DD4450 + (*(v31 - 116) ^ 0x155));
  v237 = (-21582785 * *(v236 + 4 * (v565 ^ v226)) + 881215734) ^ (*&v234[4 * HIBYTE(v229)] - 203110278);
  v238 = (-21582785 * *(v236 + 4 * (v568 ^ (v227 + v223))) + 881215734) ^ v232;
  v239 = *(&off_284DD4450 + *(v31 - 116) - 303) - 8;
  v240 = *&v239[4 * ((v561 ^ v225) >> 16)];
  v241 = (*&v234[4 * ((v565 ^ v226) >> 24)] - 203110278) ^ (v233 >> 14);
  v242 = *&v239[4 * BYTE2(v229)];
  v243 = *&v230[4 * BYTE1(v229)];
  HIDWORD(v233) = v243 ^ 0x10D;
  LODWORD(v233) = v243 ^ 0xB39C000;
  v244 = (v241 + 653459439 - ((2 * v241) & 0x4DE5FFDE)) ^ v242 ^ (-21582785 * *(v236 + 4 * (v571 ^ v224)) + 881215734);
  v245 = *&v239[4 * ((v571 ^ v224) >> 16)];
  v246 = (*&v234[4 * ((v571 ^ v224) >> 24)] - 203110278) ^ (v233 >> 14);
  v247 = *&v230[4 * v228];
  v248 = v238 + 653459439 - ((2 * v238) & 0x4DE5FFDE);
  HIDWORD(v233) = v247 ^ 0x10D;
  LODWORD(v233) = v247 ^ 0xB39C000;
  v249 = v246 ^ (-21582785 * *(v236 + 4 * (v561 ^ v225)) + 881215734);
  v250 = *&v234[4 * ((v561 ^ v225) >> 24)] - 203110278;
  v251 = HIDWORD(a29) ^ (v244 + HIDWORD(v490) - 2 * (v244 & HIDWORD(v490)));
  v252 = v559 ^ v245 ^ v250 ^ 0x8E1E9161 ^ v248;
  v253 = v555 ^ v240 ^ (v233 >> 14) ^ (v237 + 653459439 - ((2 * v237) & 0x4DE5FFDE)) ^ 0x7A8BED94;
  v254 = HIDWORD(v551) ^ *&v239[4 * ((v565 ^ v226) >> 16)] ^ 0x342D1067 ^ (v249 + 653459439 - ((2 * v249) & 0x4DE5FFDE));
  v255 = *&v230[4 * ((v251 ^ 0xAB13) >> 8)];
  HIDWORD(v233) = v255 ^ 0x10D;
  LODWORD(v233) = v255 ^ 0xB39C000;
  v256 = *&v234[4 * HIBYTE(v253)];
  v257 = (v233 >> 14) ^ (*&v234[4 * HIBYTE(v252)] - 203110278);
  v258 = v257 + 653459439 - ((2 * v257) & 0x4DE5FFDE);
  v259 = v256 + 450349161 - ((2 * v256 + 1741263092) & 0x4DE5FFDE);
  v260 = *&v230[4 * BYTE1(v254)];
  HIDWORD(v233) = v260 ^ 0x10D;
  LODWORD(v233) = v260 ^ 0xB39C000;
  v261 = v233 >> 14;
  v262 = *&v234[4 * ((v251 ^ 0xC04AB13u) >> 24)];
  v263 = v262 + 450349161 - ((2 * v262 + 1741263092) & 0x4DE5FFDE);
  v264 = (-21582785 * *(v236 + 4 * v252) + 881215734) ^ (*&v234[4 * HIBYTE(v254)] - 203110278);
  v265 = *&v230[4 * BYTE1(v252)];
  HIDWORD(v233) = v265 ^ 0x10D;
  LODWORD(v233) = v265 ^ 0xB39C000;
  v266 = v233 >> 14;
  v267 = *&v230[4 * BYTE1(v253)];
  HIDWORD(v233) = v267 ^ 0x10D;
  LODWORD(v233) = v267 ^ 0xB39C000;
  v268 = -21582785 * *(v236 + 4 * (v251 ^ 0x33u)) + 881215734;
  v269 = *&v239[4 * ((v251 ^ 0xC04AB13u) >> 16)];
  v270 = v592 ^ *&v239[4 * BYTE2(v254)] ^ (-21582785 * *(v236 + 4 * v253) + 881215734) ^ v258;
  v271 = v551 ^ v269 ^ (v233 >> 14) ^ 0xD9D684A ^ (v264 + 653459439 - ((2 * v264) & 0x4DE5FFDE));
  v272 = HIDWORD(v546) ^ *&v239[4 * BYTE2(v252)] ^ v259 ^ v261 ^ 0x87DD46DC ^ v268;
  v273 = v546 ^ *&v239[4 * BYTE2(v253)] ^ (-21582785 * *(v236 + 4 * v254) + 881215734) ^ v266 ^ 0x96521C3F ^ v263;
  v274 = *&v230[4 * ((v270 ^ 0xB36B) >> 8)];
  HIDWORD(v233) = v274 ^ 0x10D;
  LODWORD(v233) = v274 ^ 0xB39C000;
  v275 = v233 >> 14;
  v276 = *&v230[4 * BYTE1(v271)];
  v277 = -21582785 * *(v236 + 4 * v272) + 881215734;
  HIDWORD(v233) = v276 ^ 0x10D;
  LODWORD(v233) = v276 ^ 0xB39C000;
  v278 = v233 >> 14;
  v279 = *&v230[4 * BYTE1(v272)];
  HIDWORD(v233) = v279 ^ 0x10D;
  LODWORD(v233) = v279 ^ 0xB39C000;
  v280 = (-21582785 * *(v236 + 4 * v271) + 881215734) ^ v275;
  v281 = (*&v234[4 * HIBYTE(v272)] - 203110278) ^ v278 ^ (-21582785 * *(v236 + 4 * v273) + 881215734);
  v282 = v280 + 653459439 - ((2 * v280) & 0x4DE5FFDE);
  v283 = (*&v234[4 * HIBYTE(v271)] - 203110278) ^ (v233 >> 14);
  v284 = *&v230[4 * BYTE1(v273)];
  HIDWORD(v233) = v284 ^ 0x10D;
  LODWORD(v233) = v284 ^ 0xB39C000;
  v285 = v283 ^ (-21582785 * *(v236 + 4 * (v270 ^ 0x6Bu)) + 881215734);
  v286 = *&v234[4 * (HIBYTE(v270) ^ 0xEE)] - 203110278;
  v287 = v590 ^ *&v239[4 * ((v270 ^ 0x2F7BB36B) >> 16)] ^ (v281 + 653459439 - ((2 * v281) & 0x4DE5FFDE));
  v288 = HIDWORD(v542) ^ *&v239[4 * BYTE2(v273)] ^ 0xC6BB6D04 ^ (v285 + 653459439 - ((2 * v285) & 0x4DE5FFDE));
  v289 = v542 ^ *&v239[4 * BYTE2(v272)] ^ (*&v234[4 * HIBYTE(v273)] - 203110278) ^ 0xD8A932B2 ^ v282;
  BYTE2(v273) = BYTE2(v287) ^ 0x6F;
  v290 = HIDWORD(v537) ^ *&v239[4 * BYTE2(v271)] ^ v286 ^ 0xDBC82169 ^ (((v233 >> 14) ^ v277) + 653459439 - ((2 * ((v233 >> 14) ^ v277)) & 0x4DE5FFDE));
  v291 = *&v230[4 * ((v287 ^ 0x9E59) >> 8)];
  v292 = *&v230[4 * BYTE1(v290)];
  HIDWORD(v233) = v291 ^ 0x10D;
  LODWORD(v233) = v291 ^ 0xB39C000;
  v293 = v233 >> 14;
  HIDWORD(v233) = v292 ^ 0x10D;
  LODWORD(v233) = v292 ^ 0xB39C000;
  v294 = *&v230[4 * BYTE1(v288)];
  v295 = (*&v234[4 * ((v287 ^ 0xD16F9E59) >> 24)] - 203110278) ^ (-21582785 * *(v236 + 4 * v289) + 881215734) ^ (v294 >> 14);
  v296 = *&v239[4 * BYTE2(v289)];
  v297 = (*&v234[4 * HIBYTE(v288)] - 203110278) ^ v293 ^ (-21582785 * *(v236 + 4 * v290) + 881215734);
  v298 = (v233 >> 14) ^ (*&v234[4 * HIBYTE(v289)] - 203110278) ^ (-21582785 * *(v236 + 4 * v288) + 881215734);
  v299 = *(v236 + 4 * (v287 ^ 0x79u));
  v300 = *&v230[4 * BYTE1(v289)];
  HIDWORD(v233) = v300 ^ 0x10D;
  LODWORD(v233) = v300 ^ 0xB39C000;
  v301 = v587 ^ v296 ^ (v297 + 653459439 - ((2 * v297) & 0x4DE5FFDE));
  v302 = v301 ^ 0xE0349DAE;
  v303 = v537 ^ *&v239[4 * BYTE2(v273)] ^ 0xF4361671 ^ (v298 + 653459439 - ((2 * v298) & 0x4DE5FFDE));
  v304 = v584 ^ *&v239[4 * BYTE2(v288)] ^ (*&v234[4 * HIBYTE(v290)] - 203110278) ^ (v233 >> 14) ^ (-21582785 * v299 + 1534675173 - ((2104318078 * v299 + 1762431468) & 0x4DE5FFDE));
  v305 = HIDWORD(v532) ^ *&v239[4 * BYTE2(v290)] ^ 0x7E1E5010 ^ ((v295 ^ (v294 << 18) ^ 0x4342CE7) + 653459439 - 2 * ((v295 ^ (v294 << 18) ^ 0x4342CE7) & 0x26F2FFFF ^ v295 & 0x10));
  v306 = (v301 ^ 0xE0349DAE) >> 24;
  v307 = (-21582785 * *(v236 + 4 * (v301 ^ 0x8Eu)) + 881215734) ^ (*&v234[4 * HIBYTE(v303)] - 203110278);
  v308 = *&v234[4 * v306];
  v309 = *&v239[4 * BYTE2(v305)];
  v310 = *&v230[4 * BYTE1(v302)];
  HIDWORD(v233) = v310 ^ 0x10D;
  LODWORD(v233) = v310 ^ 0xB39C000;
  v311 = v233 >> 14;
  v312 = *&v230[4 * BYTE1(v305)];
  HIDWORD(v233) = v312 ^ 0x10D;
  LODWORD(v233) = v312 ^ 0xB39C000;
  v313 = v233 >> 14;
  v314 = *&v239[4 * BYTE2(v303)];
  v315 = v311 ^ (-21582785 * *(v236 + 4 * v303) + 881215734) ^ (*&v234[4 * HIBYTE(v305)] - 203110278);
  v316 = *&v230[4 * ((v304 ^ 0x500A) >> 8)];
  HIDWORD(v233) = v316 ^ 0x10D;
  LODWORD(v233) = v316 ^ 0xB39C000;
  v317 = v233 >> 14;
  v318 = *&v230[4 * BYTE1(v303)];
  HIDWORD(v233) = v318 ^ 0x10D;
  LODWORD(v233) = v318 ^ 0xB39C000;
  v319 = (-21582785 * *(v236 + 4 * v305) + 881215734) ^ (*&v234[4 * ((v304 ^ 0x6754500Au) >> 24)] - 203110278) ^ (v233 >> 14);
  v320 = *&v239[4 * BYTE2(v302)];
  v321 = -21582785 * *(v236 + 4 * (v304 ^ 0x2Au)) + 881215734;
  v322 = v532 ^ v309 ^ (v307 + 653459439 - ((2 * v307) & 0x4DE5FFDE)) ^ v317 ^ 0x541774FA;
  v323 = HIDWORD(v526) ^ *&v239[4 * ((v304 ^ 0x6754500Au) >> 16)] ^ 0x9A279982 ^ (v315 + 653459439 - ((2 * v315) & 0x4DE5FFDE));
  v324 = v526 ^ v314 ^ (v308 + 450349161 - ((2 * v308 + 1741263092) & 0x4DE5FFDE)) ^ v321 ^ 0x9B07A5BB ^ v313;
  v325 = HIDWORD(v521) ^ v320 ^ 0x8EB61C45 ^ (v319 + 653459439 - ((2 * v319) & 0x4DE5FFDE));
  v326 = *&v230[4 * BYTE1(v323)];
  HIDWORD(v233) = v326 ^ 0x10D;
  LODWORD(v233) = v326 ^ 0xB39C000;
  v327 = v233 >> 14;
  v328 = *&v239[4 * BYTE2(v322)];
  v329 = *&v230[4 * ((WORD2(v521) ^ v320 ^ 0x1C45 ^ (v319 - 17 - ((2 * v319) & 0xFFDE))) >> 8)];
  HIDWORD(v233) = v329 ^ 0x10D;
  LODWORD(v233) = v329 ^ 0xB39C000;
  v330 = *(v236 + 4 * (v322 - ((2 * v322) & 0x40) + 32));
  v331 = v327 + 653459439 - ((2 * v327) & 0x4DE5FFDE);
  v332 = (v233 >> 14) ^ (*&v234[4 * HIBYTE(v322)] - 203110278);
  v333 = -21582785 * v330 + 1534675173 - ((2104318078 * v330 + 1762431468) & 0x4DE5FFDE);
  v334 = *&v230[4 * BYTE1(v322)];
  HIDWORD(v233) = v334 ^ 0x10D;
  LODWORD(v233) = v334 ^ 0xB39C000;
  v335 = v233 >> 14;
  v336 = *&v230[4 * BYTE1(v324)];
  HIDWORD(v233) = v336 ^ 0x10D;
  LODWORD(v233) = v336 ^ 0xB39C000;
  v337 = *&v234[4 * HIBYTE(v323)] - 203110278;
  v338 = *&v239[4 * BYTE2(v323)];
  v339 = v582 ^ *&v239[4 * BYTE2(v324)] ^ v335 ^ (*&v234[4 * HIBYTE(v325)] - 203110278) ^ (-21582785 * *(v236 + 4 * v323) + 1534675173 - ((2104318078 * *(v236 + 4 * v323) + 1762431468) & 0x4DE5FFDE));
  v340 = v521 ^ v328 ^ (*&v234[4 * HIBYTE(v324)] - 203110278) ^ v331 ^ (-21582785 * *(v236 + 4 * v325) + 881215734) ^ 0x7C892C4A;
  v341 = HIDWORD(v515) ^ *&v239[4 * BYTE2(v325)] ^ v337 ^ (v233 >> 14) ^ v333 ^ 0x190B7FE4;
  v342 = v515 ^ v338 ^ (-21582785 * *(v236 + 4 * v324) + 881215734) ^ 0xCFA132BA ^ (v332 + 653459439 - ((2 * v332) & 0x4DE5FFDE));
  v343 = v339 ^ 0x402CF460;
  v344 = (v339 ^ 0x402CF460u) >> 24;
  v345 = *&v239[4 * BYTE2(v342)];
  v346 = HIBYTE(v342);
  v347 = *&v230[4 * BYTE1(v340)];
  HIDWORD(v233) = v347 ^ 0x10D;
  LODWORD(v233) = v347 ^ 0xB39C000;
  v348 = v233 >> 14;
  v349 = *&v230[4 * BYTE1(v342)];
  HIDWORD(v233) = v349 ^ 0x10D;
  LODWORD(v233) = v349 ^ 0xB39C000;
  v350 = *(v236 + 4 * (v339 ^ 0x40u));
  v351 = (-21582785 * *(v236 + 4 * v341) + 881215734) ^ (*&v234[4 * v344] - 203110278) ^ (v233 >> 14);
  v352 = *&v230[4 * BYTE1(v341)];
  HIDWORD(v233) = v352 ^ 0x10D;
  LODWORD(v233) = v352 ^ 0xB39C000;
  v353 = v233 >> 14;
  v354 = (*&v234[4 * HIBYTE(v341)] - 203110278) ^ v348 ^ (-21582785 * *(v236 + 4 * v342) + 881215734);
  v355 = *&v239[4 * BYTE2(v343)];
  v356 = (-21582785 * *(v236 + 4 * v340) + 881215734) ^ (*&v234[4 * v346] - 203110278);
  v357 = *&v234[4 * HIBYTE(v340)] - 203110278;
  v358 = *&v230[4 * BYTE1(v343)];
  HIDWORD(v233) = v358 ^ 0x10D;
  LODWORD(v233) = v358 ^ 0xB39C000;
  v359 = HIDWORD(v509) ^ *&v239[4 * BYTE2(v340)] ^ 0x2655A6B2 ^ (v351 + 653459439 - ((2 * v351) & 0x4DE5FFDE));
  v360 = v509 ^ *&v239[4 * BYTE2(v341)] ^ (v233 >> 14) ^ 0x354150DE ^ (v356 + 653459439 - ((2 * v356) & 0x4DE5FFDE));
  v361 = HIDWORD(v503) ^ v345 ^ v353 ^ v357 ^ (-21582785 * v350 + 1534675173 - ((2104318078 * v350 + 1762431468) & 0x4DE5FFDE)) ^ 0x6005D395;
  v362 = v503 ^ v355 ^ 0xD6EF510D ^ (v354 + 653459439 - ((2 * v354) & 0x4DE5FFDE));
  v363 = *&v239[4 * BYTE2(v359)];
  v364 = *&v230[4 * BYTE1(v361)];
  HIDWORD(v233) = v364 ^ 0x10D;
  LODWORD(v233) = v364 ^ 0xB39C000;
  v365 = (v233 >> 14) + 653459439 - ((2 * (v233 >> 14)) & 0x4DE5FFDE);
  v366 = *&v234[4 * HIBYTE(v359)];
  v367 = (-21582785 * *(v236 + 4 * v359) + 881215734) ^ (*&v234[4 * HIBYTE(v361)] - 203110278);
  v368 = -21582785 * *(v236 + 4 * v361) + 1534675173 - ((2104318078 * *(v236 + 4 * v361) + 1762431468) & 0x4DE5FFDE);
  v369 = *&v230[4 * BYTE1(v360)];
  HIDWORD(v233) = v369 ^ 0x10D;
  LODWORD(v233) = v369 ^ 0xB39C000;
  v370 = v233 >> 14;
  v371 = *&v230[4 * BYTE1(v359)];
  HIDWORD(v233) = v371 ^ 0x10D;
  LODWORD(v233) = v371 ^ 0xB39C000;
  v372 = v233 >> 14;
  v373 = *&v230[4 * BYTE1(v362)];
  HIDWORD(v233) = v373 ^ 0x10D;
  LODWORD(v233) = v373 ^ 0xB39C000;
  v374 = *&v239[4 * BYTE2(v360)] ^ *(v31 - 220) ^ (v233 >> 14) ^ (v367 + 653459439 - ((2 * v367) & 0x4DE5FFDE));
  v375 = v579 ^ *&v239[4 * BYTE2(v361)] ^ v370 ^ (v366 + 450349161 - ((2 * v366 + 1741263092) & 0x4DE5FFDE)) ^ (-21582785 * *(v236 + 4 * v362) + 881215734);
  v376 = HIDWORD(v497) ^ v363 ^ (*&v234[4 * HIBYTE(v362)] - 203110278) ^ v365 ^ (-21582785 * *(v236 + 4 * v360) + 881215734) ^ 0xDE12593A;
  v377 = v497 ^ (*&v234[4 * HIBYTE(v360)] - 203110278) ^ *&v239[4 * BYTE2(v362)] ^ v368 ^ v372 ^ 0x8D19C5A6;
  v378 = *&v230[4 * BYTE1(v377)];
  HIDWORD(v233) = v378 ^ 0x10D;
  LODWORD(v233) = v378 ^ 0xB39C000;
  v379 = -21582785 * *(v236 + 4 * (v374 ^ 0x30u)) + 881215734;
  v380 = *&v239[4 * ((v374 ^ 0x911C5930) >> 16)];
  v381 = *&v230[4 * ((v374 ^ 0x5930) >> 8)];
  v382 = (v233 >> 14) + 653459439 - ((2 * (v233 >> 14)) & 0x4DE5FFDE);
  HIDWORD(v233) = v381 ^ 0x10D;
  LODWORD(v233) = v381 ^ 0xB39C000;
  v383 = (v233 >> 14) + 653459439 - ((2 * (v233 >> 14)) & 0x4DE5FFDE);
  v384 = (*&v234[4 * (HIBYTE(v374) ^ 0x50)] - 203110278) ^ (-21582785 * *(v236 + 4 * (v375 ^ 0x3Fu)) + 881215734);
  v385 = *&v230[4 * ((v375 ^ 0x813F) >> 8)];
  HIDWORD(v233) = v385 ^ 0x10D;
  LODWORD(v233) = v385 ^ 0xB39C000;
  v386 = v233 >> 14;
  LODWORD(v230) = *&v230[4 * BYTE1(v376)];
  HIDWORD(v233) = v230 ^ 0x10D;
  LODWORD(v233) = v230 ^ 0xB39C000;
  v387 = v194 ^ HIDWORD(v430) ^ *&v239[4 * ((v375 ^ 0xF52A813F) >> 16)] ^ (*&v234[4 * HIBYTE(v376)] - 203110278) ^ (-21582785 * *(v236 + 4 * v377) + 881215734) ^ v383;
  v388 = (*&v234[4 * HIBYTE(v377)] - 203110278) ^ v490 ^ v386 ^ *&v239[4 * BYTE2(v376)] ^ v379;
  v389 = v437 ^ HIDWORD(v444) ^ v380 ^ v382 ^ (-21582785 * *(v236 + 4 * v376) + 881215734) ^ (*&v234[4 * (HIBYTE(v375) ^ 0x34)] - 203110278);
  v390 = (HIDWORD(v473) - 148395609) ^ HIDWORD(v441) ^ *&v239[4 * BYTE2(v377)] ^ (v233 >> 14) ^ (v384 + 653459439 - ((2 * v384) & 0x4DE5FFDE));
  v391 = v390 ^ 0x644667A6;
  LODWORD(v239) = v389 ^ 0x7EC2C88;
  LODWORD(v236) = v387 ^ 0x9A25D878;
  v392 = v388 ^ 0xAD089B63;
  v393 = *(&off_284DD4450 + (*(v31 - 116) ^ 0x121)) - 4;
  v394 = *&v393[4 * ((v390 ^ 0x644667A6u) >> 24)];
  HIDWORD(v233) = v394 ^ 0x64;
  LODWORD(v233) = v394 ^ 0x54415980;
  v395 = *(&off_284DD4450 + *(v31 - 116) - 210) - 4;
  *(v31 - 156) = *&v395[4 * ((v389 ^ 0x7EC2C88u) >> 16)];
  v396 = *(&off_284DD4450 + (*(v31 - 116) ^ 0x178)) - 8;
  v397 = (v239 - 1549581673 - ((2 * v239) & 0x12E)) ^ *&v396[4 * (v389 ^ 0xDB)] ^ (v233 >> 7);
  v398 = *&v395[4 * ((v390 ^ 0x644667A6u) >> 16)];
  v399 = ((2 * v398) & 0xBB708860 ^ 0x76BF7FBF) + 1151274396 + (((v398 ^ 0xB5AC8D38) + 1246982856) ^ ((v398 ^ 0x60F27BD4) - 1626504148) ^ ((v398 ^ 0x33B83F87) - 867712903));
  v400 = (v387 ^ 0x78) - 1549581673 - ((2 * (v387 ^ 0x9A25D878)) & 0x12E);
  v401 = v397 - 421082773 - ((2 * v397) & 0xCDCD92D6);
  v402 = *&v395[4 * ((v388 ^ 0xAD089B63) >> 16)];
  v403 = *&v395[4 * ((v387 ^ 0x9A25D878) >> 16)];
  v404 = *(&off_284DD4450 + (*(v31 - 116) ^ 0x185)) - 12;
  v405 = ((v390 ^ 0xA6) - 1549581673 - 2 * ((v390 ^ 0x644667A6) & 0x9F ^ v390 & 8)) ^ (BYTE1(v239) + 1128961033 - ((v239 >> 7) & 0x12)) ^ *&v404[4 * (BYTE1(v239) ^ 0xF5)] ^ *&v396[4 * (v390 ^ 0xF5)];
  v406 = *&v393[4 * ((v387 ^ 0x9A25D878) >> 24)];
  v407 = v405 - 421082773 - ((2 * v405) & 0xCDCD92D6);
  HIDWORD(v233) = v406 ^ 0x64;
  LODWORD(v233) = v406 ^ 0x54415980;
  v408 = v233 >> 7;
  v409 = ((v388 ^ 0x9B63) >> 8);
  v410 = v409 + 1128961033 - (((v388 ^ 0xAD089B63) >> 7) & 0x12);
  v411 = *&v393[4 * (HIBYTE(v388) ^ 0xBD)];
  HIDWORD(v233) = v411 ^ 0x64;
  LODWORD(v233) = v411 ^ 0x54415980;
  v412 = v233 >> 7;
  v413 = *&v396[4 * (v387 ^ 0x2B)];
  v414 = *&v396[4 * (v388 ^ 0x30)];
  v415 = *&v404[4 * (v409 ^ 0xF5)];
  LODWORD(v396) = *&v404[4 * (BYTE1(v391) ^ 0xF5)];
  LODWORD(v404) = *&v404[4 * (BYTE1(v236) ^ 0xF5)];
  v416 = BYTE1(v236) + 1128961033 - ((v236 >> 7) & 0x12);
  LODWORD(v239) = *&v393[4 * (v239 >> 24)];
  HIDWORD(v233) = v239 ^ 0x64;
  LODWORD(v233) = v239 ^ 0x54415980;
  LODWORD(v239) = *(v31 - 140) ^ *(v31 - 208) ^ v403 ^ v412 ^ v407;
  LODWORD(v236) = *(v31 - 136) ^ *(v31 - 216) ^ v410 ^ v400 ^ v413 ^ v415 ^ (v233 >> 7) ^ v399;
  v417 = *(v31 - 132) ^ *(v31 - 212) ^ v416 ^ v402 ^ v404 ^ v401;
  LODWORD(v395) = *(v31 - 128) ^ *(v31 - 204) ^ (v392 - 1549581673 - ((2 * v392) & 0x12E)) ^ *(v31 - 156) ^ (BYTE1(v391) + 1128961033 - ((v391 >> 7) & 0x12)) ^ v414 ^ v396;
  v418 = *(v31 - 200);
  v419 = *(&off_284DD4450 + *(v31 - 116) - 124) - 12;
  LOBYTE(v412) = v419[(*(v31 - 136) ^ *(v31 - 216) ^ v410 ^ v400 ^ v413 ^ v415 ^ (v233 >> 7) ^ v399) ^ 0xDFLL];
  v420 = v395 ^ (v408 - 421082773 - ((2 * v408) & 0xCDCD92D6));
  v216[3] = v412 ^ 0x68;
  v421 = *(&off_284DD4450 + *(v31 - 116) - 298) - 4;
  v216[4] = (v421[BYTE3(v420) ^ 0x2CLL] + 124) ^ 0x78;
  *v216 = (v421[BYTE3(v236) ^ 0x57] + 124) ^ 0xC8;
  v422 = *(&off_284DD4450 + *(v31 - 116) - 172) - 8;
  v216[13] = (v422[BYTE2(v417) ^ 0x5CLL] - 120) ^ 0xC7;
  v216[11] = v419[v239 ^ 0x46] ^ 0x2C;
  v423 = *(&off_284DD4450 + *(v31 - 116) - 209) - 4;
  *(v418 + *(v31 - 152)) = ((BYTE1(v417) ^ 0xEE) - ((2 * (BYTE1(v417) ^ 0xEE)) & 0x5C) - 82) ^ 0x75 ^ v423[BYTE1(v417)];
  v216[2] = ((BYTE1(v236) ^ 3) - ((2 * (BYTE1(v236) ^ 3)) & 0x5C) - 82) ^ 0x8B ^ v423[BYTE1(v236) ^ 0xE6];
  v216[10] = ((BYTE1(v239) ^ 0xAB) - ((2 * (BYTE1(v239) ^ 0xAB)) & 0x5C) - 82) ^ 0x6D ^ v423[BYTE1(v239) ^ 0x84];
  v216[15] = v419[v417 ^ 0x11] ^ 0x9B;
  v216[5] = (v422[BYTE2(v420) ^ 0x44] - 120) ^ 0xE2;
  v216[8] = (v421[(v239 >> 24) ^ 0x26] + 124) ^ 0xA2;
  v216[7] = v419[(v395 ^ (v408 + 107 - ((2 * v408) & 0xD6))) ^ 0x3DLL] ^ 0x91;
  v216[12] = (v421[HIBYTE(v417) ^ 0x44] + 124) ^ 0x23;
  v216[1] = (v422[BYTE2(v236) ^ 0xA3] - 120) ^ 0x17;
  v425 = *(v31 - 124);
  v424 = *(v31 - 120);
  v216[6] = (BYTE1(v420) + (~(v420 >> 7) | 0xA3) - 81) ^ 0xD0 ^ v423[BYTE1(v420) ^ 0x58];
  v216[9] = (v422[BYTE2(v239) ^ 0xF8] - 120) ^ 0x90;
  v426 = v424 - 934420541 < v425;
  if (*(v31 - 144) != (v424 - 934420541) < 0xC84DDFB3)
  {
    v426 = *(v31 - 144);
  }

  HIDWORD(v465) = HIDWORD(v428) - 148395609;
  HIDWORD(v473) = v429 - 148395609;
  return (*(*(v31 - 192) + 8 * (((32 * v426) | (v426 << 7)) ^ *(v31 - 116))))(v415, v420, v414, v216, v422, 3452801750, 18, v419, a2, a3, v428, v429, v430, v432, v435, v437, v441, v444, v446, v449, v454, v457, v460, v463, v465, v466, v469, v471, v473, v474, v475, v478, v483, a27, a28, a29, v490, v497, v503, v509, v515, v521, v526, v532, v537, v542, v546, v551);
}