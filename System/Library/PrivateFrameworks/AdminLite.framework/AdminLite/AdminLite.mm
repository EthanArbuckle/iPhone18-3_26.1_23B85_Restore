uint64_t AdminLiteNVRAMSet(const char *a1, const char *a2, int a3)
{
  v3 = 1;
  if (a1 && a2)
  {
    sp = 0;
    v7 = bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.AdminLite", &sp);
    if (v7)
    {
      v3 = v7;
      v8 = *MEMORY[0x277D85DF8];
      v9 = bootstrap_strerror(v7);
      fprintf(v8, "bootstrap_look_up(): %s\n", v9);
    }

    else
    {
      v14 = 0;
      v10 = nvram_set(sp, a1, a2, a3, &v14);
      mach_port_deallocate(*MEMORY[0x277D85F48], sp);
      if (v10)
      {
        v11 = *MEMORY[0x277D85DF8];
        v12 = mach_error_string(v10);
        fprintf(v11, "nvram_set(): %08x %s\n", v10, v12);
        return v14;
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t nvram_set(mach_port_t a1, const char *a2, const char *a3, int a4, _DWORD *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  memset(v26, 0, 464);
  *reply_port = 0u;
  v24 = 0u;
  *(&v24 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v9 = mig_strncpy_zerofill(&v25 + 8, a2, 1024);
  }

  else
  {
    v9 = mig_strncpy(&v25 + 8, a2, 1024);
  }

  LODWORD(v25) = 0;
  DWORD1(v25) = v9;
  v10 = (v9 + 3) & 0xFFFFFFFC;
  v11 = &reply_port[-256] + v10;
  v12 = v26 + v10;
  if (MEMORY[0x28223BE50])
  {
    v13 = mig_strncpy_zerofill(v12, a3, 1024);
  }

  else
  {
    v13 = mig_strncpy(v12, a3, 1024);
  }

  v14 = v10 + 52;
  *(v11 + 267) = v13;
  *(v11 + 266) = 0;
  v15 = (v13 + 3) & 0xFFFFFFFC;
  *&v11[v15 + 1072] = a4;
  v16 = mig_get_reply_port();
  reply_port[2] = a1;
  reply_port[3] = v16;
  reply_port[0] = 5395;
  *&v24 = 0x303900000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(reply_port);
    v17 = reply_port[3];
  }

  else
  {
    v17 = v16;
  }

  v18 = mach_msg(reply_port, 3, v14 + v15, 0x30u, v17, 0, 0);
  v19 = v18;
  if ((v18 - 268435458) > 0xE || ((1 << (v18 - 2)) & 0x4003) == 0)
  {
    if (v18)
    {
      mig_dealloc_reply_port(reply_port[3]);
      goto LABEL_31;
    }

    if (DWORD1(v24) == 71)
    {
      v19 = 4294966988;
    }

    else if (DWORD1(v24) == 12445)
    {
      if ((reply_port[0] & 0x80000000) == 0)
      {
        if (reply_port[1] == 40)
        {
          if (!reply_port[2])
          {
            v19 = v25;
            if (!v25)
            {
              *a5 = DWORD1(v25);
              goto LABEL_31;
            }

            goto LABEL_30;
          }
        }

        else if (reply_port[1] == 36)
        {
          if (reply_port[2])
          {
            v20 = 1;
          }

          else
          {
            v20 = v25 == 0;
          }

          if (v20)
          {
            v19 = 4294966996;
          }

          else
          {
            v19 = v25;
          }

          goto LABEL_30;
        }
      }

      v19 = 4294966996;
    }

    else
    {
      v19 = 4294966995;
    }

LABEL_30:
    mach_msg_destroy(reply_port);
    goto LABEL_31;
  }

  mig_put_reply_port(reply_port[3]);
LABEL_31:
  v21 = *MEMORY[0x277D85DE8];
  return v19;
}