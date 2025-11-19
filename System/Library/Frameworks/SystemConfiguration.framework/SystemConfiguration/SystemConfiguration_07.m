uint64_t confignotify(mach_port_t a1, uint64_t a2, int a3, int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 1;
  v15 = a2;
  v16 = 16777472;
  v17 = a3;
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13.msgh_bits = 2147489043;
  v13.msgh_remote_port = a1;
  v13.msgh_local_port = special_reply_port;
  *&v13.msgh_voucher_port = 0x4E2F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v13);
    msgh_local_port = v13.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&v13, 3162115, 0x38u, 0x30u, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (v13.msgh_id == 71)
      {
        v9 = 4294966988;
      }

      else if (v13.msgh_id == 20115)
      {
        if ((v13.msgh_bits & 0x80000000) == 0)
        {
          if (v13.msgh_size == 40)
          {
            if (!v13.msgh_remote_port)
            {
              v9 = HIDWORD(v15);
              if (!HIDWORD(v15))
              {
                *a4 = v16;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (v13.msgh_size == 36)
          {
            if (v13.msgh_remote_port)
            {
              v10 = 1;
            }

            else
            {
              v10 = HIDWORD(v15) == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = HIDWORD(v15);
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v13);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t notifyadd(mach_port_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 1;
  v16 = a2;
  v17 = 16777472;
  v18 = a3;
  v19 = *MEMORY[0x1E69E99E0];
  v20 = a3;
  v21 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x4E3200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 20118)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v10 = HIDWORD(v16);
              if (!HIDWORD(v16))
              {
                *a5 = v17;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v16) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = HIDWORD(v16);
            }

            goto LABEL_23;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t notifyremove(mach_port_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 1;
  v16 = a2;
  v17 = 16777472;
  v18 = a3;
  v19 = *MEMORY[0x1E69E99E0];
  v20 = a3;
  v21 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x4E3300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (msg.msgh_id == 71)
      {
        v10 = 4294966988;
      }

      else if (msg.msgh_id == 20119)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v10 = HIDWORD(v16);
              if (!HIDWORD(v16))
              {
                *a5 = v17;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v11 = 1;
            }

            else
            {
              v11 = HIDWORD(v16) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = HIDWORD(v16);
            }

            goto LABEL_23;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t notifycancel(mach_port_t a1, mach_port_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *&msg[1].msgh_remote_port = 0u;
  *&msg[0].msgh_id = 0u;
  msg[0].msgh_size = 0;
  special_reply_port = mig_get_special_reply_port();
  msg[0].msgh_remote_port = a1;
  msg[0].msgh_local_port = special_reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x4E3800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x30u, msgh_local_port, 0, 0);
  msgh_remote_port = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (msg[0].msgh_id == 71)
      {
        msgh_remote_port = 4294966988;
      }

      else if (msg[0].msgh_id == 20124)
      {
        if ((msg[0].msgh_bits & 0x80000000) == 0)
        {
          if (msg[0].msgh_size == 40)
          {
            if (!msg[0].msgh_remote_port)
            {
              msgh_remote_port = msg[1].msgh_remote_port;
              if (!msg[1].msgh_remote_port)
              {
                *a2 = msg[1].msgh_local_port;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg[0].msgh_size == 36)
          {
            if (msg[0].msgh_remote_port)
            {
              v8 = 1;
            }

            else
            {
              v8 = msg[1].msgh_remote_port == 0;
            }

            if (v8)
            {
              msgh_remote_port = 4294966996;
            }

            else
            {
              msgh_remote_port = msg[1].msgh_remote_port;
            }

            goto LABEL_23;
          }
        }

        msgh_remote_port = 4294966996;
      }

      else
      {
        msgh_remote_port = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v9 = *MEMORY[0x1E69E9840];
  return msgh_remote_port;
}

uint64_t notifyviafd(int a1, int a2, int a3, int *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  *&msg[24] = 1;
  *&msg[28] = a2;
  v14 = 1114112;
  v15 = *MEMORY[0x1E69E99E0];
  v16 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x4E3A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x34u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 20126)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 40)
          {
            if (!*&msg[8])
            {
              v9 = *&msg[32];
              if (!*&msg[32])
              {
                *a4 = v14;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&msg[32] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t snapshot(mach_port_t a1, mach_port_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *&msg[1].msgh_remote_port = 0u;
  *&msg[0].msgh_id = 0u;
  msg[0].msgh_size = 0;
  special_reply_port = mig_get_special_reply_port();
  msg[0].msgh_remote_port = a1;
  msg[0].msgh_local_port = special_reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x4E3D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x30u, msgh_local_port, 0, 0);
  msgh_remote_port = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (msg[0].msgh_id == 71)
      {
        msgh_remote_port = 4294966988;
      }

      else if (msg[0].msgh_id == 20129)
      {
        if ((msg[0].msgh_bits & 0x80000000) == 0)
        {
          if (msg[0].msgh_size == 40)
          {
            if (!msg[0].msgh_remote_port)
            {
              msgh_remote_port = msg[1].msgh_remote_port;
              if (!msg[1].msgh_remote_port)
              {
                *a2 = msg[1].msgh_local_port;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (msg[0].msgh_size == 36)
          {
            if (msg[0].msgh_remote_port)
            {
              v8 = 1;
            }

            else
            {
              v8 = msg[1].msgh_remote_port == 0;
            }

            if (v8)
            {
              msgh_remote_port = 4294966996;
            }

            else
            {
              msgh_remote_port = msg[1].msgh_remote_port;
            }

            goto LABEL_23;
          }
        }

        msgh_remote_port = 4294966996;
      }

      else
      {
        msgh_remote_port = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v9 = *MEMORY[0x1E69E9840];
  return msgh_remote_port;
}

uint64_t helperinit(int a1, _DWORD *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  *&msg[20] = 0u;
  v14 = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x55F000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(msg, 3, 0x18u, 0x3Cu, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 22100)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v9 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 52 && !*&msg[8] && WORD1(v14) << 16 == 1114112)
          {
            v9 = 0;
            v10 = HIDWORD(v14);
            *a2 = *&msg[28];
            *a3 = v10;
            goto LABEL_26;
          }
        }

        else if (*&msg[4] == 36)
        {
          v9 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg[32];
            }
          }
        }

        else
        {
          v9 = 4294966996;
        }
      }

      else
      {
        v9 = 4294966995;
      }

      mach_msg_destroy(msg);
      goto LABEL_26;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

LABEL_26:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t pppcontroller_attach(mach_port_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, _DWORD *a7, _DWORD *a8)
{
  v31 = *MEMORY[0x1E69E9840];
  msg.msgh_id = 0;
  *&msg.msgh_size = 0u;
  v19 = 4;
  v20 = a2;
  v21 = 16777472;
  v22 = a3;
  v23 = a4;
  v24 = 1245184;
  v25 = a5;
  v26 = 1114112;
  v27 = a6;
  v28 = 1245184;
  v29 = *MEMORY[0x1E69E99E0];
  v30 = a3;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x465000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v13 = mach_msg(&msg, 3, 0x5Cu, 0x3Cu, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v13)
    {
      if (msg.msgh_id == 71)
      {
        v14 = 4294966988;
      }

      else if (msg.msgh_id == 18100)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v14 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 52 && !msg.msgh_remote_port && HIWORD(v21) << 16 == 1114112)
          {
            v14 = 0;
            v15 = HIDWORD(v23);
            *a7 = v20;
            *a8 = v15;
            goto LABEL_26;
          }
        }

        else if (msg.msgh_size == 36)
        {
          v14 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v14 = 4294966996;
            }

            else
            {
              v14 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v14 = 4294966996;
        }
      }

      else
      {
        v14 = 4294966995;
      }

      mach_msg_destroy(&msg);
      goto LABEL_26;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

LABEL_26:
  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t pppcontroller_getstatus(int a1, _DWORD *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(msg, 3, 0x18u, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(*&msg[12]);
      goto LABEL_25;
    }

    if (*&msg[20] == 71)
    {
      v9 = 4294966988;
    }

    else if (*&msg[20] == 18101)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 44)
        {
          if (!*&msg[8])
          {
            v9 = *&msg[32];
            if (!*&msg[32])
            {
              v13 = DWORD1(v15);
              *a2 = v15;
              *a3 = v13;
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v10 = 1;
          }

          else
          {
            v10 = *&msg[32] == 0;
          }

          if (v10)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = *&msg[32];
          }

          goto LABEL_24;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(msg);
    goto LABEL_25;
  }

  mig_put_reply_port(*&msg[12]);
LABEL_25:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t pppcontroller_copyextendedstatus(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18102)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v16) == 1)
          {
            v12 = DWORD1(v16);
            if (DWORD1(v16) == v17)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v17);
              goto LABEL_27;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      goto LABEL_27;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

LABEL_27:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t pppcontroller_copystatistics(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18103)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v16) == 1)
          {
            v12 = DWORD1(v16);
            if (DWORD1(v16) == v17)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v17);
              goto LABEL_27;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      goto LABEL_27;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

LABEL_27:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t pppcontroller_copyuseroptions(int a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v16 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x465400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = reply_port;
  }

  v10 = mach_msg(msg, 3, 0x18u, 0x44u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 18104)
      {
        if ((*msg & 0x80000000) != 0)
        {
          v11 = 4294966996;
          if (*&msg[24] == 1 && *&msg[4] == 60 && !*&msg[8] && BYTE3(v16) == 1)
          {
            v12 = DWORD1(v16);
            if (DWORD1(v16) == v17)
            {
              v11 = 0;
              *a2 = *&msg[28];
              *a3 = v12;
              *a4 = DWORD1(v17);
              goto LABEL_27;
            }
          }
        }

        else if (*&msg[4] == 36)
        {
          v11 = 4294966996;
          if (*&msg[32])
          {
            if (*&msg[8])
            {
              v11 = 4294966996;
            }

            else
            {
              v11 = *&msg[32];
            }
          }
        }

        else
        {
          v11 = 4294966996;
        }
      }

      else
      {
        v11 = 4294966995;
      }

      mach_msg_destroy(msg);
      goto LABEL_27;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

LABEL_27:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t pppcontroller_start(mach_port_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 1;
  v16 = a2;
  v17 = 16777472;
  v18 = a3;
  v19 = *MEMORY[0x1E69E99E0];
  v20 = a3;
  v21 = a4;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x465500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v9 = mach_msg(&msg, 3, 0x3Cu, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      goto LABEL_25;
    }

    if (msg.msgh_id == 71)
    {
      v10 = 4294966988;
    }

    else if (msg.msgh_id == 18105)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v10 = HIDWORD(v16);
            if (!HIDWORD(v16))
            {
              *a5 = v17;
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = HIDWORD(v16) == 0;
          }

          if (v11)
          {
            v10 = 4294966996;
          }

          else
          {
            v10 = HIDWORD(v16);
          }

          goto LABEL_24;
        }
      }

      v10 = 4294966996;
    }

    else
    {
      v10 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    goto LABEL_25;
  }

  mig_put_reply_port(msg.msgh_local_port);
LABEL_25:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t pppcontroller_stop(int a1, int a2, _DWORD *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 28);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x465600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v6 = *&msg_4[8];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(&msg, 3, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(*&msg_4[8]);
      goto LABEL_25;
    }

    if (*&msg_4[16] == 71)
    {
      v8 = 4294966988;
    }

    else if (*&msg_4[16] == 18106)
    {
      if ((msg & 0x80000000) == 0)
      {
        if (*msg_4 == 40)
        {
          if (!*&msg_4[4])
          {
            v8 = *&msg_4[28];
            if (!*&msg_4[28])
            {
              *a3 = *&msg_4[32];
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (*msg_4 == 36)
        {
          if (*&msg_4[4])
          {
            v9 = 1;
          }

          else
          {
            v9 = *&msg_4[28] == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = *&msg_4[28];
          }

          goto LABEL_24;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    goto LABEL_25;
  }

  mig_put_reply_port(*&msg_4[8]);
LABEL_25:
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t pppcontroller_suspend(mach_port_t a1, mach_port_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *&msg[1].msgh_remote_port = 0u;
  *&msg[0].msgh_id = 0u;
  msg[0].msgh_size = 0;
  reply_port = mig_get_reply_port();
  msg[0].msgh_remote_port = a1;
  msg[0].msgh_local_port = reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x465700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v6 = mach_msg(msg, 3, 0x18u, 0x30u, msgh_local_port, 0, 0);
  msgh_remote_port = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(msg[0].msgh_local_port);
      goto LABEL_25;
    }

    if (msg[0].msgh_id == 71)
    {
      msgh_remote_port = 4294966988;
    }

    else if (msg[0].msgh_id == 18107)
    {
      if ((msg[0].msgh_bits & 0x80000000) == 0)
      {
        if (msg[0].msgh_size == 40)
        {
          if (!msg[0].msgh_remote_port)
          {
            msgh_remote_port = msg[1].msgh_remote_port;
            if (!msg[1].msgh_remote_port)
            {
              *a2 = msg[1].msgh_local_port;
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (msg[0].msgh_size == 36)
        {
          if (msg[0].msgh_remote_port)
          {
            v8 = 1;
          }

          else
          {
            v8 = msg[1].msgh_remote_port == 0;
          }

          if (v8)
          {
            msgh_remote_port = 4294966996;
          }

          else
          {
            msgh_remote_port = msg[1].msgh_remote_port;
          }

          goto LABEL_24;
        }
      }

      msgh_remote_port = 4294966996;
    }

    else
    {
      msgh_remote_port = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(msg);
    goto LABEL_25;
  }

  mig_put_reply_port(msg[0].msgh_local_port);
LABEL_25:
  v9 = *MEMORY[0x1E69E9840];
  return msgh_remote_port;
}

uint64_t pppcontroller_resume(mach_port_t a1, mach_port_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *&msg[1].msgh_remote_port = 0u;
  *&msg[0].msgh_id = 0u;
  msg[0].msgh_size = 0;
  reply_port = mig_get_reply_port();
  msg[0].msgh_remote_port = a1;
  msg[0].msgh_local_port = reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x465800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v6 = mach_msg(msg, 3, 0x18u, 0x30u, msgh_local_port, 0, 0);
  msgh_remote_port = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (v6)
    {
      mig_dealloc_reply_port(msg[0].msgh_local_port);
      goto LABEL_25;
    }

    if (msg[0].msgh_id == 71)
    {
      msgh_remote_port = 4294966988;
    }

    else if (msg[0].msgh_id == 18108)
    {
      if ((msg[0].msgh_bits & 0x80000000) == 0)
      {
        if (msg[0].msgh_size == 40)
        {
          if (!msg[0].msgh_remote_port)
          {
            msgh_remote_port = msg[1].msgh_remote_port;
            if (!msg[1].msgh_remote_port)
            {
              *a2 = msg[1].msgh_local_port;
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (msg[0].msgh_size == 36)
        {
          if (msg[0].msgh_remote_port)
          {
            v8 = 1;
          }

          else
          {
            v8 = msg[1].msgh_remote_port == 0;
          }

          if (v8)
          {
            msgh_remote_port = 4294966996;
          }

          else
          {
            msgh_remote_port = msg[1].msgh_remote_port;
          }

          goto LABEL_24;
        }
      }

      msgh_remote_port = 4294966996;
    }

    else
    {
      msgh_remote_port = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(msg);
    goto LABEL_25;
  }

  mig_put_reply_port(msg[0].msgh_local_port);
LABEL_25:
  v9 = *MEMORY[0x1E69E9840];
  return msgh_remote_port;
}

uint64_t pppcontroller_notification(int a1, int a2, _DWORD *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 28);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x465900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v6 = *&msg_4[8];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(&msg, 3, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (v7)
    {
      mig_dealloc_reply_port(*&msg_4[8]);
      goto LABEL_25;
    }

    if (*&msg_4[16] == 71)
    {
      v8 = 4294966988;
    }

    else if (*&msg_4[16] == 18109)
    {
      if ((msg & 0x80000000) == 0)
      {
        if (*msg_4 == 40)
        {
          if (!*&msg_4[4])
          {
            v8 = *&msg_4[28];
            if (!*&msg_4[28])
            {
              *a3 = *&msg_4[32];
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (*msg_4 == 36)
        {
          if (*&msg_4[4])
          {
            v9 = 1;
          }

          else
          {
            v9 = *&msg_4[28] == 0;
          }

          if (v9)
          {
            v8 = 4294966996;
          }

          else
          {
            v8 = *&msg_4[28];
          }

          goto LABEL_24;
        }
      }

      v8 = 4294966996;
    }

    else
    {
      v8 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    goto LABEL_25;
  }

  mig_put_reply_port(*&msg_4[8]);
LABEL_25:
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t pppcontroller_attach_proxy(int a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7, int a8, int a9, _DWORD *a10, _DWORD *a11)
{
  v35 = *MEMORY[0x1E69E9840];
  *&reply_port[16] = 0x400000000;
  *reply_port = 0u;
  v21 = a2;
  v22 = 16777472;
  v23 = a3;
  v24 = a4;
  v25 = 1245184;
  v26 = a5;
  v27 = 1114112;
  v28 = a6;
  v29 = 1245184;
  v30 = *MEMORY[0x1E69E99E0];
  v31 = a3;
  v32 = a7;
  v33 = a8;
  v34 = a9;
  v12 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v12;
  v19 = -2147478253;
  *&reply_port[12] = 0x465D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v19);
    v13 = *&reply_port[8];
  }

  else
  {
    v13 = v12;
  }

  v14 = mach_msg(&v19, 3, 0x68u, 0x3Cu, v13, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
  }

  else
  {
    if (!v14)
    {
      if (*&reply_port[16] == 71)
      {
        v15 = 4294966988;
      }

      else if (*&reply_port[16] == 18113)
      {
        if (v19 < 0)
        {
          v15 = 4294966996;
          if (*&reply_port[20] == 1 && *reply_port == 52 && !*&reply_port[4] && HIWORD(v22) << 16 == 1114112)
          {
            v15 = 0;
            v16 = HIDWORD(v24);
            *a10 = v21;
            *a11 = v16;
            goto LABEL_26;
          }
        }

        else if (*reply_port == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v21))
          {
            if (*&reply_port[4])
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v21);
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

      mach_msg_destroy(&v19);
      goto LABEL_26;
    }

    mig_dealloc_reply_port(*&reply_port[8]);
  }

LABEL_26:
  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

void SCNetworkCategoryGetTypeID_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  dispatch_once(&__SCNetworkCategoryInitialize_initialized, &__block_literal_global);
}

void __SC_log_enabled_cold_2()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&_SC_isAppleInternal_once, &__block_literal_global_63);
}

void _SC_dlopen_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&_SC_dlopen_once, &__block_literal_global_1);
}

void _SC_hw_model_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&_SC_hw_model_once, &__block_literal_global_9);
}

void _SC_crash_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&_SC_isAppleInternal_once_0, &__block_literal_global_55);
}

void childrenReaped_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  dispatch_once(&initializeLock_initialized, &__block_literal_global_2);
}

void _SCDPluginSpawnCommand_cold_2(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  strerror(a1);
  OUTLINED_FUNCTION_0_0(&dword_1AD2AD000, MEMORY[0x1E69E9C10], v1, "posix_spawn() failed: %s\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void _SCDPluginExecCommand2_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_0(&dword_1AD2AD000, MEMORY[0x1E69E9C10], v1, "setenv() failed: %s\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void _SCDPluginExecCommand2_cold_3(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  strerror(a1);
  OUTLINED_FUNCTION_0_0(&dword_1AD2AD000, MEMORY[0x1E69E9C10], v1, "fork() failed: %s\n", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void log_open_error_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&log_open_error_once, &__block_literal_global_51);
}

void __SCPreferencesUpdateLockedState_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&__SCPreferencesUpdateLockedState_once, &__block_literal_global_4);
}

void __log_open_error_block_invoke_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&_SC_isAppleInternal_once_1, &__block_literal_global_55_0);
}

void SCPreferencesLock_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  dispatch_once(&avoid_SCNetworkConfiguration_deadlock_once, &__block_literal_global_5);
  v0 = *MEMORY[0x1E69E9840];
}

void SCNetworkInterfaceProviderCreate_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  dispatch_once(&__SCNetworkInterfaceProviderRegisterClass_once, &__block_literal_global_6);
  v0 = *MEMORY[0x1E69E9840];
}

void report_missing_entitlement_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  dispatch_once(&_SC_isAppleInternal_once_2, &__block_literal_global_7);
}

void SCNetworkConnectionGetTypeID_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&__SCNetworkConnectionInitialize_initialized, &__block_literal_global_8);
}

void SCNetworkConnectionCopyStatistics_cold_2()
{
  v1 = *MEMORY[0x1E69E9840];
  dispatch_once(&__SCNetworkConnectionQueue_once, &__block_literal_global_113);
  v0 = *MEMORY[0x1E69E9840];
}

void __SCNetworkConnectionCopyExtendedStatus_block_invoke_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&__SCNetworkConnectionQueue_once, &__block_literal_global_113);
}

void SCUserPreferencesGetTypeID_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&__SCUserPreferencesInitialize_initialized, &__block_literal_global_9);
}

void __SCNetworkInterfaceCreatePrivate_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&__SCNetworkInterfaceInitialize_initialized, &__block_literal_global_11);
}

void processNetworkInterface_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  dispatch_once(&_SC_isAppleInternal_once_3, &__block_literal_global_621);
  v0 = *MEMORY[0x1E69E9840];
}

void _SCNetworkInterfaceCopyAllWithPreferences_cold_2()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&__wait_for_IOKit_to_quiesce_iokit_quiet, &__block_literal_global_655);
}

void SCNetworkInterfaceTypeSetTemporaryOverrideCost_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&_SC_isAppleInternal_once_3, &__block_literal_global_621);
}

void __SCNetworkProtocolCreatePrivate_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&__SCNetworkProtocolInitialize_initialized, &__block_literal_global_12);
}

void __SCNetworkServiceCreatePrivate_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&__SCNetworkServiceInitialize_initialized, &__block_literal_global_13);
}

void SCNetworkSetAddService_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&__SCNetworkSetInitialize_initialized, &__block_literal_global_55_1);
}

void copy_default_set_name_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&copy_default_set_name_once_49, &__block_literal_global_52);
}

void copy_default_set_name_cold_2()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&copy_default_set_name_once, &__block_literal_global_14);
}

void __SCHelperServerPort_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  dispatch_once(&__SCHelperServerPort_once, &__block_literal_global_15);
  v0 = *MEMORY[0x1E69E9840];
}

void _SCHelperExec_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  dispatch_once(&_SCHelperExecCopyBacktrace_once, &__block_literal_global_10);
}

void CNSetSupportedSSIDs_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x1E69E9840];

  dispatch_once(&__loadCaptiveNetwork_once, &__block_literal_global_16);
}

void __SCNSManagerCreateCommon_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  dispatch_once(&__SCNetworkSettingsInitialize_initialized, &__block_literal_global_17);
}

void _scprefs_observer_watch_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  dispatch_once(&_scprefs_observer_watch_initialized, &__block_literal_global_18);
}

void _SCControlPrefsCreateCommon_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  dispatch_once(&__SCControlPrefsInitialize_initialized, &__block_literal_global_19);
}

void SCNetworkCategoryManagerGetTypeID_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  dispatch_once(&__SCNetworkCategoryManagerInitialize_initialized, &__block_literal_global_8);
}

void __SCNetworkCategoryManagerCopyActiveValueNoSession_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  dispatch_once(&__SCNetworkCategoryManagerCopyActiveValueNoSession_initialized, &__block_literal_global_20);
}

void IPMonitorControlCreate_cold_1()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  dispatch_once(&__IPMonitorControlRegisterClass_once, &__block_literal_global_21);
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, void);
  return MEMORY[0x1EEDB6B60](calendar, v3, at);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}