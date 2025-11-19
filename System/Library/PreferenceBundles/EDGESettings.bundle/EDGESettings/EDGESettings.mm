__CFString *sMMSOverrideDictName(void *a1)
{
  if ([a1 slotID] == 1)
  {
    return @"MMS";
  }

  else
  {
    return @"MMS2";
  }
}

uint64_t AutoGsmaSettingsSpecifiers(uint64_t a1)
{
  v2 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:&stru_284EE8C10];
  [v2 setProperty:@"GSMA_SETTING_GROUP" forKey:*MEMORY[0x277D3FFB8]];
  [v2 setProperty:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"USE_CARRIER_SETTINGS_FOOTER_TEXT", &stru_284EE8C10, @"EDGE Settings", *MEMORY[0x277D3FF88]}];
  v3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"USE_CARRIER_SETTINGS_SWITCH_NAME" cell:&stru_284EE8C10 edit:{@"EDGE Settings", a1, sel_setDefaultSettings_specifier_, sel_getDefaultSettings_, 0, 6, 0}];
  [v3 setIdentifier:@"GSMA_SETTING"];
  return [MEMORY[0x277CBEB18] arrayWithObjects:{v2, v3, 0}];
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t startTcpdumpServer(const char *a1, const char *a2, const char *a3)
{
  sp = 0;
  if (bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.tcpdump.server", &sp))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  started = start_tcpdump(sp, a1, a2, a3, &v8);
  syslog(3, "Created tcpdump with pid %d.", v8);
  mach_port_deallocate(*MEMORY[0x277D85F48], sp);
  if (started)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v8;
  }
}

void stopTcpdumpServer(int a1)
{
  sp = 0;
  if (!bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.tcpdump.server", &sp))
  {
    stop_tcpdump(sp, a1);
    mach_port_deallocate(*MEMORY[0x277D85F48], sp);
    syslog(3, "Stopped tcpdump with pid %d.", a1);
  }
}

uint64_t dumpSetkey(const char *a1)
{
  sp = 0;
  result = bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.tcpdump.server", &sp);
  if (!result)
  {
    dump_setkey(sp, a1);
    return mach_port_deallocate(*MEMORY[0x277D85F48], sp);
  }

  return result;
}

void moveTcpdumps()
{
  sp = 0;
  if (!bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.tcpdump.server", &sp))
  {
    move_tcpdumps(sp);
    mach_port_deallocate(*MEMORY[0x277D85F48], sp);
    syslog(3, "Moved the files from staging to the dump directory");
  }
}

uint64_t start_tcpdump(mach_port_t a1, const char *a2, const char *a3, const char *a4, _DWORD *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  memset(v33, 0, 464);
  *reply_port = 0u;
  v31 = 0u;
  *(&v31 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v9 = mig_strncpy_zerofill(&v32 + 8, a2, 1024);
  }

  else
  {
    v9 = mig_strncpy(&v32 + 8, a2, 1024);
  }

  LODWORD(v32) = 0;
  DWORD1(v32) = v9;
  v10 = (v9 + 3) & 0xFFFFFFFC;
  v11 = &reply_port[-256] + v10;
  v12 = v33 + v10;
  if (MEMORY[0x28223BE50])
  {
    v13 = mig_strncpy_zerofill(v12, a3, 1024);
  }

  else
  {
    v13 = mig_strncpy(v12, a3, 1024);
  }

  v14 = v10 + 56;
  v15 = MEMORY[0x28223BE50];
  *(v11 + 267) = v13;
  *(v11 + 266) = 0;
  v16 = (v13 + 3) & 0xFFFFFFFC;
  v17 = &v11[v16];
  v18 = &v11[v16 - 1024];
  v19 = v17 + 1080;
  if (v15)
  {
    v20 = mig_strncpy_zerofill(v19, a4, 1024);
  }

  else
  {
    v20 = mig_strncpy(v19, a4, 1024);
  }

  v21 = v14 + v16;
  *(v18 + 2100) = v20;
  *(v18 + 2096) = 0;
  v22 = (v20 + 3) & 0xFFFFFFFC;
  v23 = mig_get_reply_port();
  reply_port[2] = a1;
  reply_port[3] = v23;
  reply_port[0] = 5395;
  *&v31 = 0xA82A00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(reply_port);
    v24 = reply_port[3];
  }

  else
  {
    v24 = v23;
  }

  v25 = mach_msg(reply_port, 19, v21 + v22, 0x30u, v24, 0, 0);
  v26 = v25;
  if ((v25 - 268435458) > 0xE || ((1 << (v25 - 2)) & 0x4003) == 0)
  {
    if (v25)
    {
      mig_dealloc_reply_port(reply_port[3]);
      goto LABEL_34;
    }

    if (DWORD1(v31) == 71)
    {
      v26 = 4294966988;
    }

    else if (DWORD1(v31) == 43150)
    {
      if ((reply_port[0] & 0x80000000) == 0)
      {
        if (reply_port[1] == 40)
        {
          if (!reply_port[2])
          {
            v26 = v32;
            if (!v32)
            {
              *a5 = DWORD1(v32);
              goto LABEL_34;
            }

            goto LABEL_33;
          }
        }

        else if (reply_port[1] == 36)
        {
          if (reply_port[2])
          {
            v27 = 1;
          }

          else
          {
            v27 = v32 == 0;
          }

          if (v27)
          {
            v26 = 4294966996;
          }

          else
          {
            v26 = v32;
          }

          goto LABEL_33;
        }
      }

      v26 = 4294966996;
    }

    else
    {
      v26 = 4294966995;
    }

LABEL_33:
    mach_msg_destroy(reply_port);
    goto LABEL_34;
  }

  mig_put_reply_port(reply_port[3]);
LABEL_34:
  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t stop_tcpdump(int a1, int a2)
{
  *&msg[20] = 0u;
  v9 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0xA82B00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = reply_port;
  }

  v5 = mach_msg(msg, 19, 0x24u, 0x2Cu, v4, 0, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    return v6;
  }

  if (v5)
  {
    mig_dealloc_reply_port(*&msg[12]);
    return v6;
  }

  if (*&msg[20] == 71)
  {
    v6 = 4294966988;
LABEL_18:
    mach_msg_destroy(msg);
    return v6;
  }

  if (*&msg[20] != 43151)
  {
    v6 = 4294966995;
    goto LABEL_18;
  }

  v6 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_18;
  }

  if (*&msg[8])
  {
    goto LABEL_18;
  }

  v6 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_18;
  }

  return v6;
}

uint64_t dump_setkey(mach_port_t a1, const char *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  memset(v13, 0, 480);
  *reply_port = 0u;
  v12 = 0u;
  *(&v12 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v13 + 8, a2, 1024);
  }

  else
  {
    v3 = mig_strncpy(v13 + 8, a2, 1024);
  }

  LODWORD(v13[0]) = 0;
  DWORD1(v13[0]) = v3;
  v4 = (v3 + 3) & 0xFFFFFFFC;
  v5 = mig_get_reply_port();
  reply_port[2] = a1;
  reply_port[3] = v5;
  reply_port[0] = 5395;
  *&v12 = 0xA82C00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(reply_port);
    v6 = reply_port[3];
  }

  else
  {
    v6 = v5;
  }

  v7 = mach_msg(reply_port, 19, v4 + 40, 0x2Cu, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
    goto LABEL_22;
  }

  if (v7)
  {
    mig_dealloc_reply_port(reply_port[3]);
    goto LABEL_22;
  }

  if (DWORD1(v12) == 71)
  {
    v8 = 4294966988;
LABEL_21:
    mach_msg_destroy(reply_port);
    goto LABEL_22;
  }

  if (DWORD1(v12) != 43152)
  {
    v8 = 4294966995;
    goto LABEL_21;
  }

  v8 = 4294966996;
  if ((reply_port[0] & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  if (reply_port[1] != 36)
  {
    goto LABEL_21;
  }

  if (reply_port[2])
  {
    goto LABEL_21;
  }

  v8 = LODWORD(v13[0]);
  if (LODWORD(v13[0]))
  {
    goto LABEL_21;
  }

LABEL_22:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t move_tcpdumps(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0xA82D00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 17, 0x18u, 0, 0, 0, 0);
}