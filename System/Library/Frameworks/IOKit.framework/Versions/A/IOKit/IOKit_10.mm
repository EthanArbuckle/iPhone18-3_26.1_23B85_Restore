uint64_t io_catalog_get_data(unsigned int a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v9 = 0;
  v12 = 0;
  v11 = 0;
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a2;
  *&v6.msgh_bits = 0x2400001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB1600000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) <= 0xE && ((1 << (v2 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  else if (v2)
  {
    mig_dealloc_reply_port(v6.msgh_local_port);
  }

  else
  {
    v3 = 4294966995;
    mach_msg_destroy(&v6);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t io_catalog_get_gen_count(unsigned int a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  *&v5.msgh_bits = 0x1800001513;
  *&v5.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v5.msgh_voucher_port = 0xB1700000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v5.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v5);
    }
  }

  else
  {
    mig_put_reply_port(v5.msgh_local_port);
  }

  return v2;
}

uint64_t io_catalog_module_loaded(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB1800000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t io_catalog_reset(unsigned int a1, int a2)
{
  v9 = 0;
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a2;
  *&v6.msgh_bits = 0x2400001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB1900000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_service_request_probe(unsigned int a1, int a2)
{
  v9 = 0;
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a2;
  *&v6.msgh_bits = 0x2400001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB1A00000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_registry_entry_get_name_in_plane(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB1B00000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t io_service_match_property_table(unsigned int a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 512);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 512);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB1C00000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t io_connect_get_notification_semaphore(unsigned int a1, int a2)
{
  v10 = 0;
  v9 = 0;
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a2;
  *&v6.msgh_bits = 0x2400001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB2400000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_registry_entry_get_location_in_plane(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB2600000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t io_registry_entry_get_property_recursively(unsigned int a1, const char *a2, const char *a3, int a4, void *a5, _DWORD *a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  memset(v28, 0, sizeof(v28));
  *reply_port = 0u;
  *(&v28[0] + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v11 = mig_strncpy_zerofill(&v28[1] + 8, a2, 128);
  }

  else
  {
    v11 = mig_strncpy(&v28[1] + 8, a2, 128);
  }

  LODWORD(v28[1]) = 0;
  DWORD1(v28[1]) = v11;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  v13 = v12 + 52;
  v14 = reply_port + v12;
  v15 = v14 - 128;
  v16 = v14 + 48;
  if (MEMORY[0x1EEE9AC40])
  {
    v17 = mig_strncpy_zerofill(v16, a3, 128);
  }

  else
  {
    v17 = mig_strncpy(v16, a3, 128);
  }

  *(v15 + 42) = 0;
  *(v15 + 43) = v17;
  v18 = (v17 + 3) & 0xFFFFFFFC;
  v19 = v13 + v18;
  *&v15[v18 + 176] = a4;
  v20 = mig_get_reply_port();
  reply_port[0] = 5395;
  reply_port[1] = v19;
  *&reply_port[2] = __PAIR64__(v20, a1);
  *&v28[0] = 0xB2700000000;
  v21 = mach_msg2_internal();
  v22 = v21;
  if ((v21 - 268435458) > 0xE || ((1 << (v21 - 2)) & 0x4003) == 0)
  {
    if (!v21)
    {
      if (DWORD1(v28[0]) == 71)
      {
        v22 = 4294966988;
      }

      else if (DWORD1(v28[0]) == 2955)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v22 = 4294966996;
          if (DWORD2(v28[0]) == 1 && reply_port[1] == 56 && !reply_port[2] && BYTE7(v28[1]) == 1)
          {
            v24 = DWORD2(v28[1]);
            if (DWORD2(v28[1]) == DWORD1(v29))
            {
              v22 = 0;
              *a5 = *(v28 + 12);
              *a6 = v24;
              goto LABEL_32;
            }
          }
        }

        else if (reply_port[1] == 36)
        {
          v22 = 4294966996;
          if (LODWORD(v28[1]))
          {
            if (reply_port[2])
            {
              v22 = 4294966996;
            }

            else
            {
              v22 = LODWORD(v28[1]);
            }
          }
        }

        else
        {
          v22 = 4294966996;
        }
      }

      else
      {
        v22 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      goto LABEL_32;
    }

    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    mig_put_reply_port(reply_port[3]);
  }

LABEL_32:
  v25 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t io_service_get_state(unsigned int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB2800000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t io_service_get_matching_services_ool(unsigned int a1, uint64_t a2, int a3)
{
  v7 = 1;
  v8 = a2;
  v9 = 0x1000000;
  v10 = a3;
  v11 = *MEMORY[0x1E69E99E0];
  v12 = a3;
  v13 = 0;
  *&v6.msgh_bits = 0x3880001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB2900000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) <= 0xE && ((1 << (v3 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  else if (v3)
  {
    mig_dealloc_reply_port(v6.msgh_local_port);
  }

  else
  {
    v4 = 4294966995;
    mach_msg_destroy(&v6);
  }

  return v4;
}

uint64_t io_service_match_property_table_ool(unsigned int a1, uint64_t a2, int a3)
{
  v7 = 1;
  v8 = a2;
  v9 = 0x1000000;
  v10 = a3;
  v11 = *MEMORY[0x1E69E99E0];
  v12 = a3;
  *&v6.msgh_bits = 0x3880001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB2A00000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) <= 0xE && ((1 << (v3 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  else if (v3)
  {
    mig_dealloc_reply_port(v6.msgh_local_port);
  }

  else
  {
    v4 = 4294966995;
    mach_msg_destroy(&v6);
  }

  return v4;
}

uint64_t io_object_get_superclass(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB2C00000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t io_object_get_bundle_identifier(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB2D00000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t io_service_add_notification(unsigned int a1, const char *a2, const char *a3, int a4, const void *a5, unsigned int a6, _DWORD *a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  memset(v29, 0, 464);
  memset(&reply_port, 0, sizeof(reply_port));
  v26 = 1;
  v27 = a4;
  DWORD1(v28) = 1310720;
  *(&v28 + 1) = *MEMORY[0x1E69E99E0];
  v12 = &reply_port - 128;
  if (MEMORY[0x1EEE9AC40])
  {
    v13 = mig_strncpy_zerofill(v29 + 8, a2, 128);
    LODWORD(v29[0]) = 0;
    DWORD1(v29[0]) = v13;
    v14 = (v13 + 3) & 0xFFFFFFFC;
    v15 = &v12[v14];
    v16 = mig_strncpy_zerofill(v15 + 192, a3, 512);
  }

  else
  {
    v17 = mig_strncpy(v29 + 8, a2, 128);
    LODWORD(v29[0]) = 0;
    DWORD1(v29[0]) = v17;
    v14 = (v17 + 3) & 0xFFFFFFFC;
    v15 = &v12[v14];
    v16 = mig_strncpy(v15 + 192, a3, 512);
  }

  *(v15 + 46) = 0;
  *(v15 + 47) = v16;
  if (a6 <= 8)
  {
    v19 = (v16 + 3) & 0xFFFFFFFC;
    v20 = &v15[v19];
    memcpy(v20 + 196, a5, 8 * a6);
    *(v20 + 48) = a6;
    v21 = mig_get_reply_port();
    reply_port.msgh_bits = -2147478253;
    reply_port.msgh_size = v14 + 8 * a6 + v19 + 68;
    *&reply_port.msgh_remote_port = __PAIR64__(v21, a1);
    *&reply_port.msgh_voucher_port = 0xB3400000000;
    v22 = mach_msg2_internal();
    v18 = v22;
    if ((v22 - 268435458) <= 0xE && ((1 << (v22 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v22)
      {
        if (reply_port.msgh_id == 71)
        {
          v18 = 4294966988;
        }

        else if (reply_port.msgh_id == 2968)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            v18 = 4294966996;
            if (v26 == 1 && reply_port.msgh_size == 40 && !reply_port.msgh_remote_port && WORD3(v28) << 16 == 1114112)
            {
              v18 = 0;
              *a7 = v27;
              goto LABEL_28;
            }
          }

          else if (reply_port.msgh_size == 36)
          {
            v18 = 4294966996;
            if (v28)
            {
              if (reply_port.msgh_remote_port)
              {
                v18 = 4294966996;
              }

              else
              {
                v18 = v28;
              }
            }
          }

          else
          {
            v18 = 4294966996;
          }
        }

        else
        {
          v18 = 4294966995;
        }

        mach_msg_destroy(&reply_port);
        goto LABEL_28;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }
  }

  else
  {
    v18 = 4294966989;
  }

LABEL_28:
  v23 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t io_service_add_notification_ool(unsigned int a1, const char *a2, uint64_t a3, int a4, int a5, const void *a6, unsigned int a7, _DWORD *a8, _DWORD *a9)
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  memset(&reply_port, 0, sizeof(reply_port));
  v25 = 2;
  v26 = a3;
  v27 = 0x1000000;
  v28 = a4;
  v29 = a5;
  DWORD1(v30) = 1310720;
  *(&v30 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v14 = mig_strncpy_zerofill(v31 + 8, a2, 128);
  }

  else
  {
    v14 = mig_strncpy(v31 + 8, a2, 128);
  }

  LODWORD(v31[0]) = 0;
  DWORD1(v31[0]) = v14;
  v15 = (v14 + 3) & 0xFFFFFFFC;
  v16 = &reply_port + v15;
  *(v31 + v15 + 8) = a4;
  if (a7 <= 8)
  {
    v18 = v16 - 128;
    memcpy(v16 + 80, a6, 8 * a7);
    *(v18 + 51) = a7;
    v19 = mig_get_reply_port();
    reply_port.msgh_bits = -2147478253;
    reply_port.msgh_size = v15 + 8 * a7 + 80;
    *&reply_port.msgh_remote_port = __PAIR64__(v19, a1);
    *&reply_port.msgh_voucher_port = 0xB3600000000;
    v20 = mach_msg2_internal();
    v17 = v20;
    if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v20)
      {
        if (reply_port.msgh_id == 71)
        {
          v17 = 4294966988;
        }

        else if (reply_port.msgh_id == 2970)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            v17 = 4294966996;
            if (v25 == 1 && reply_port.msgh_size == 52 && !reply_port.msgh_remote_port && HIWORD(v27) << 16 == 1114112)
            {
              v17 = 0;
              v21 = v26;
              *a8 = v30;
              *a9 = v21;
              goto LABEL_28;
            }
          }

          else if (reply_port.msgh_size == 36)
          {
            v17 = 4294966996;
            if (HIDWORD(v26))
            {
              if (reply_port.msgh_remote_port)
              {
                v17 = 4294966996;
              }

              else
              {
                v17 = HIDWORD(v26);
              }
            }
          }

          else
          {
            v17 = 4294966996;
          }
        }

        else
        {
          v17 = 4294966995;
        }

        mach_msg_destroy(&reply_port);
        goto LABEL_28;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }
  }

  else
  {
    v17 = 4294966989;
  }

LABEL_28:
  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t io_service_get_matching_service(unsigned int a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 512);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 512);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB3900000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t io_service_get_matching_service_ool(unsigned int a1, uint64_t a2, int a3)
{
  v7 = 1;
  v8 = a2;
  v9 = 0x1000000;
  v10 = a3;
  v11 = *MEMORY[0x1E69E99E0];
  v12 = a3;
  v13 = 0;
  *&v6.msgh_bits = 0x3880001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3A00000000;
  v3 = mach_msg2_internal();
  v4 = v3;
  if ((v3 - 268435458) <= 0xE && ((1 << (v3 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  else if (v3)
  {
    mig_dealloc_reply_port(v6.msgh_local_port);
  }

  else
  {
    v4 = 4294966995;
    mach_msg_destroy(&v6);
  }

  return v4;
}

uint64_t io_service_get_authorization_id(unsigned int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v9 = 0;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3B00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t io_service_set_authorization_id(unsigned int a1, uint64_t a2)
{
  v9 = 0;
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a2;
  *&v6.msgh_bits = 0x2800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3C00000000;
  v2 = mach_msg2_internal();
  v3 = v2;
  if ((v2 - 268435458) > 0xE || ((1 << (v2 - 2)) & 0x4003) == 0)
  {
    if (v2)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v3 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  return v3;
}

uint64_t io_registry_entry_get_properties_bin(unsigned int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  *&v6.msgh_bits = 0x1800001513;
  *&v6.msgh_remote_port = __PAIR64__(mig_get_reply_port(), a1);
  *&v6.msgh_voucher_port = 0xB3E00000000;
  v1 = mach_msg2_internal();
  v2 = v1;
  if ((v1 - 268435458) > 0xE || ((1 << (v1 - 2)) & 0x4003) == 0)
  {
    if (v1)
    {
      mig_dealloc_reply_port(v6.msgh_local_port);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(&v6);
    }
  }

  else
  {
    mig_put_reply_port(v6.msgh_local_port);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t io_registry_entry_get_property_bin(unsigned int a1, const char *a2, const char *a3, int a4, void *a5, _DWORD *a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  memset(v28, 0, sizeof(v28));
  *reply_port = 0u;
  *(&v28[0] + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v11 = mig_strncpy_zerofill(&v28[1] + 8, a2, 128);
  }

  else
  {
    v11 = mig_strncpy(&v28[1] + 8, a2, 128);
  }

  LODWORD(v28[1]) = 0;
  DWORD1(v28[1]) = v11;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  v13 = v12 + 52;
  v14 = reply_port + v12;
  v15 = v14 - 128;
  v16 = v14 + 48;
  if (MEMORY[0x1EEE9AC40])
  {
    v17 = mig_strncpy_zerofill(v16, a3, 128);
  }

  else
  {
    v17 = mig_strncpy(v16, a3, 128);
  }

  *(v15 + 42) = 0;
  *(v15 + 43) = v17;
  v18 = (v17 + 3) & 0xFFFFFFFC;
  v19 = v13 + v18;
  *&v15[v18 + 176] = a4;
  v20 = mig_get_reply_port();
  reply_port[0] = 5395;
  reply_port[1] = v19;
  *&reply_port[2] = __PAIR64__(v20, a1);
  *&v28[0] = 0xB3F00000000;
  v21 = mach_msg2_internal();
  v22 = v21;
  if ((v21 - 268435458) > 0xE || ((1 << (v21 - 2)) & 0x4003) == 0)
  {
    if (!v21)
    {
      if (DWORD1(v28[0]) == 71)
      {
        v22 = 4294966988;
      }

      else if (DWORD1(v28[0]) == 2979)
      {
        if ((reply_port[0] & 0x80000000) != 0)
        {
          v22 = 4294966996;
          if (DWORD2(v28[0]) == 1 && reply_port[1] == 56 && !reply_port[2] && BYTE7(v28[1]) == 1)
          {
            v24 = DWORD2(v28[1]);
            if (DWORD2(v28[1]) == DWORD1(v29))
            {
              v22 = 0;
              *a5 = *(v28 + 12);
              *a6 = v24;
              goto LABEL_32;
            }
          }
        }

        else if (reply_port[1] == 36)
        {
          v22 = 4294966996;
          if (LODWORD(v28[1]))
          {
            if (reply_port[2])
            {
              v22 = 4294966996;
            }

            else
            {
              v22 = LODWORD(v28[1]);
            }
          }
        }

        else
        {
          v22 = 4294966996;
        }
      }

      else
      {
        v22 = 4294966995;
      }

      mach_msg_destroy(reply_port);
      goto LABEL_32;
    }

    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    mig_put_reply_port(reply_port[3]);
  }

LABEL_32:
  v25 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t io_service_match_property_table_bin()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v40 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (v1 <= 0x1000)
  {
    v3 = v1;
    v4 = v0;
    __memcpy_chk();
    LODWORD(v10) = v3;
    reply_port[0] = 5395;
    reply_port[1] = ((v3 + 3) & 0x3FFC) + 36;
    *&reply_port[2] = __PAIR64__(mig_get_reply_port(), v4);
    *&v9 = 0xB4200000000;
    v5 = mach_msg2_internal();
    v2 = v5;
    if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port[3]);
    }

    else if (v5)
    {
      mig_dealloc_reply_port(reply_port[3]);
    }

    else
    {
      v2 = 4294966995;
      mach_msg_destroy(reply_port);
    }
  }

  else
  {
    v2 = 4294966989;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t io_registry_entry_get_path_ool(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 480);
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, v1, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, v1, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), v2);
  *&v9 = 0xB4500000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t io_registry_entry_from_path_ool()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *&v23[8] = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v20 = 1;
  v21 = v9;
  v22 = 0x1000000;
  *v23 = v6;
  *&v23[4] = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v10 = mig_strncpy_zerofill(&v23[20], v1, 4096);
  }

  else
  {
    v10 = mig_strncpy(&v23[20], v1, 4096);
  }

  *&v23[12] = 0;
  *&v23[16] = v10;
  v11 = (v10 + 3) & 0xFFFFFFFC;
  v12 = v11 + 64;
  *&v23[v11 + 20] = v7;
  v13 = mig_get_reply_port();
  reply_port.msgh_bits = -2147478253;
  reply_port.msgh_size = v12;
  *&reply_port.msgh_remote_port = __PAIR64__(v13, v8);
  *&reply_port.msgh_voucher_port = 0xB4600000000;
  v14 = mach_msg2_internal();
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (reply_port.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (reply_port.msgh_id == 2986)
      {
        if ((reply_port.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v20 == 1 && reply_port.msgh_size == 52 && !reply_port.msgh_remote_port && HIWORD(v22) << 16 == 1114112)
          {
            v15 = 0;
            v16 = v21;
            *v5 = *&v23[8];
            *v3 = v16;
            goto LABEL_26;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v21))
          {
            if (reply_port.msgh_remote_port)
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

      mach_msg_destroy(&reply_port);
      goto LABEL_26;
    }

    mig_dealloc_reply_port(reply_port.msgh_local_port);
  }

LABEL_26:
  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t io_device_tree_entry_exists_with_name(unsigned int a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *reply_port = 0u;
  v9 = 0u;
  *(&v9 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v10 + 8, a2, 128);
  }

  else
  {
    v3 = mig_strncpy(v10 + 8, a2, 128);
  }

  LODWORD(v10[0]) = 0;
  DWORD1(v10[0]) = v3;
  reply_port[0] = 5395;
  reply_port[1] = ((v3 + 3) & 0xFFFFFFFC) + 40;
  *&reply_port[2] = __PAIR64__(mig_get_reply_port(), a1);
  *&v9 = 0xB4700000000;
  v4 = mach_msg2_internal();
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port[3]);
  }

  else if (v4)
  {
    mig_dealloc_reply_port(reply_port[3]);
  }

  else
  {
    v5 = 4294966995;
    mach_msg_destroy(reply_port);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t DisplayID::checksum(DisplayID *this, unint64_t a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = 1;
    do
    {
      v4 = *this;
      this = (this + 1);
      v2 += v4;
      v5 = v3++;
    }

    while (v5 < a2);
  }

  return v2;
}

const char *IOAVCommandString(int a1)
{
  if ((a1 - 1) > 0x11)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9C40[a1 - 1];
  }
}

const char *IOAVEventLogEventTypeString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9CD0[a1];
  }
}

const char *IOAVAudioFormatString(unsigned int a1)
{
  if (a1 > 0x14)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9D20[a1];
  }
}

uint64_t IOAVAudioSampleSizeEnum(int a1)
{
  if (a1 == 20)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 24)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 16)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t IOAVAudioSampleSizeScalar(int a1)
{
  if ((a1 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return (4 * (a1 - 1) + 16);
  }
}

uint64_t IOAVAudioSampleRateEnum(int a1)
{
  if (a1 > 255999)
  {
    if (a1 <= 705599)
    {
      if (a1 > 383999)
      {
        if (a1 == 384000)
        {
          return 12;
        }

        if (a1 == 512000)
        {
          return 13;
        }
      }

      else
      {
        if (a1 == 256000)
        {
          return 10;
        }

        if (a1 == 352800)
        {
          return 11;
        }
      }
    }

    else if (a1 < 1024000)
    {
      if (a1 == 705600)
      {
        return 14;
      }

      if (a1 == 768000)
      {
        return 15;
      }
    }

    else
    {
      switch(a1)
      {
        case 1024000:
          return 16;
        case 1411200:
          return 17;
        case 1536000:
          return 18;
      }
    }
  }

  else if (a1 <= 88199)
  {
    if (a1 > 47999)
    {
      if (a1 == 48000)
      {
        return 3;
      }

      if (a1 == 64000)
      {
        return 4;
      }
    }

    else
    {
      if (a1 == 32000)
      {
        return 1;
      }

      if (a1 == 44100)
      {
        return 2;
      }
    }
  }

  else if (a1 <= 127999)
  {
    if (a1 == 88200)
    {
      return 5;
    }

    if (a1 == 96000)
    {
      return 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 128000:
        return 7;
      case 176400:
        return 8;
      case 192000:
        return 9;
    }
  }

  return 0;
}

uint64_t IOAVAudioSampleRateScalar(unsigned int a1)
{
  if (a1 > 0x12)
  {
    return 0;
  }

  else
  {
    return IOAVAudioSampleRateScalar::s_scalar_rates[a1];
  }
}

uint64_t IOAVAudioLinkSampleRateForFormat(int a1, unsigned int a2)
{
  if ((a1 - 16) >= 5)
  {
    if ((a1 - 13) <= 2)
    {
      return 4 * a2;
    }

    else
    {
      return a2;
    }
  }

  else
  {
    v2 = IOAVAudioSampleRateEnum(a2) - 2;
    if (v2 > 7)
    {
      return 0;
    }

    else
    {
      return dword_19724D6EC[v2];
    }
  }
}

uint64_t IOAVHDMIAudioClockRegenerationDataForLink(_DWORD *a1, uint64_t a2)
{
  v3 = IOAVAudioSampleRateEnum(*(a2 + 12));
  v4 = a1[27];
  if (!v4)
  {
    v5 = a1[18];
    v6 = (a1[19] * a1[11] * a1[24]) >> 16;
    if (v5)
    {
      LODWORD(v6) = v6 / (v5 + 1);
    }

    v4 = v6 >> (a1[10] & 1);
  }

  v7 = 0;
  v8 = &IOAVHDMIAudioClockRegenerationDataForLink::s_acr_table + 16 * v3;
  while (a1[2] != IOAVHDMIAudioClockRegenerationDataForLink::s_depth_table[v7])
  {
    ++v7;
    v8 += 4320;
    if (v7 == 4)
    {
      return 0;
    }
  }

  if ((v7 & 0xFFFFFFFC) != 0)
  {
    return 0;
  }

  for (i = 0; i != 14; ++i)
  {
    if (v4 == IOAVHDMIAudioClockRegenerationDataForLink::s_pixel_clock_table[i])
    {
      break;
    }
  }

  v11 = &v8[288 * i];
  result = *(v11 - 2);
  v12 = *(v11 - 1);
  return result;
}

uint64_t IOAVVideoTimingGetPixelClock(int *a1, unsigned int *a2)
{
  result = a1[17];
  if (!result)
  {
    v4 = *a1;
    v5 = a1[8];
    v6 = (a1[9] * a1[1] * a1[14]) >> 16;
    if (v5)
    {
      LODWORD(v6) = v6 / (v5 + 1);
    }

    result = v6 >> (v4 & 1);
  }

  if (a2)
  {
    *a2 = result / 0xC8;
  }

  return result;
}

const char *IOAVAudioSpeakerString(unsigned int a1)
{
  if (a1 > 0x11)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9DC8[a1];
  }
}

__n128 IOAVAudioGetChannelLayoutData(unsigned int a1, __n128 *a2)
{
  if (a1 <= 0x31)
  {
    v2 = (&IOAVAudioGetChannelLayoutData::sChannelMap + 40 * a1);
    *a2 = *v2;
    result = v2[1];
    a2[1] = result;
    a2[2].n128_u64[0] = v2[2].n128_u64[0];
  }

  return result;
}

uint64_t IOAVAudioGetChannelAllocationDefault(int a1)
{
  if ((a1 - 9) >= 0xFFFFFFF9)
  {
    return dword_197243214[a1 - 2];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t IOAVAudioGetChannelAllocation(void *__s2)
{
  v2 = 0;
  for (i = &IOAVAudioGetChannelLayoutData::sChannelMap; ; i = (i + 40))
  {
    v4 = i[1];
    v6[0] = *i;
    v6[1] = v4;
    v7 = *(i + 4);
    if (!memcmp(v6, __s2, 0x28uLL))
    {
      break;
    }

    if (++v2 == 50)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t IOAVAudioLinkGetHDMIAudioPacketType(int *a1)
{
  v1 = *a1;
  v2 = *a1 > 0x14 || ((1 << *a1) & 0x1FF5FC) == 0;
  if (!v2 && (a1[2] * a1[3] * a1[1]) > 0x5DC000)
  {
    return 1;
  }

  if (v1 == 9)
  {
    return 3;
  }

  return 4 * (v1 == 11);
}

uint64_t IOAVAudioLinkGetMaxStreamChannelCount(int *a1)
{
  v1 = *a1;
  if ((*a1 - 13) < 8)
  {
    return 8;
  }

  if (v1 == 1)
  {
    return a1[1];
  }

  if (v1 == 2)
  {
    return 6;
  }

  return 0;
}

uint64_t IOAVAudioLinkGetMaxStreamSampleRate(_DWORD *a1)
{
  v1 = a1[3];
  if ((*a1 - 13) >= 8)
  {
    return v1;
  }

  else
  {
    return v1 >> 2;
  }
}

const char *IOAVVideoAspectRatioString(int a1)
{
  if ((a1 - 1) > 0x10)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9E58[a1 - 1];
  }
}

const char *IOAVVideoLinkModeString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9EE0[a1];
  }
}

uint64_t IOAVVideoColorBitDepth(int a1)
{
  if ((a1 - 6) > 0xA)
  {
    return 1;
  }

  else
  {
    return dword_19724D70C[a1 - 6];
  }
}

uint64_t IOAVVideoColorBitDepthScalar(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_19724D738[a1];
  }
}

BOOL IOAVVideoColorBitDepthIsSupported(unsigned int a1, int a2)
{
  v2 = a1 < 6;
  if (a2 != 1)
  {
    v2 = 0;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return a1 < 5;
  }
}

const char *IOAVVideoAxisString(int a1)
{
  v1 = "Unknown";
  if (a1 == 1)
  {
    v1 = "Vertical";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Horizontal";
  }
}

const char *IOAVVideoPixelEncodingString(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9F00[a1];
  }
}

const char *IOAVVideoColorDynamicRangeString(int a1)
{
  v1 = "Unknown";
  if (a1 == 1)
  {
    v1 = "Limited";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Full";
  }
}

const char *IOAVVideoColorEOTFString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9F78[a1];
  }
}

const char *IOAVVideoColorimetryString(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74A9F98[a1];
  }
}

BOOL IOAVVideoColorimetryIsValid(unsigned int a1, int a2, int a3)
{
  if (a1 <= 9 && ((1 << a1) & 0x2C0) != 0 && a3 < 2)
  {
    return 0;
  }

  if (a2 <= 5)
  {
    if ((a2 - 1) < 3)
    {
      return a1 < 8;
    }

    v5 = 0x4102u >> a1;
    if (a1 >= 0xF)
    {
      LOBYTE(v5) = 0;
    }

    v4 = a1 - 9 < 8;
    if (a2)
    {
      v4 = 0;
    }

    if ((a2 - 4) < 2)
    {
      return v5;
    }
  }

  else
  {
    if ((a2 - 8) < 4)
    {
      return a1 == 7;
    }

    if ((a2 - 6) < 2)
    {
      return a1 < 8;
    }

    v4 = a1 == 9;
    if (a2 != 12)
    {
      return 0;
    }
  }

  return v4;
}

const char *IOAVLocationString(int a1)
{
  v1 = "Unknown";
  if (a1 == 1)
  {
    v1 = "Embedded";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "External";
  }
}

const char *IOAVLinkTypeString(int a1)
{
  v1 = "Unknown";
  if (!a1)
  {
    v1 = "Audio";
  }

  if (a1 == 1)
  {
    return "Video";
  }

  else
  {
    return v1;
  }
}

const char *IOAVLinkSourceString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AA020[a1];
  }
}

const char *IOAVInfoFrameTypeString(int a1)
{
  if ((a1 ^ 0x80u) > 7)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AA048[a1 ^ 0x80u];
  }
}

const char *IOAVElementTypeString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AA088[a1];
  }
}

const char *IOAVVideoTimingStandardString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AA0B0[a1];
  }
}

const char *IOAVVideoScanInformationString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AA0D8[a1];
  }
}

const char *IOAVStandardTypeString(int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return IOAVStandardTypeString::sStrings[a1];
  }
}

const char *IOAVVideoTimingTypeString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Unknown";
  }

  else
  {
    return IOAVVideoTimingTypeString::sStrings[a1];
  }
}

const char *IOAVTransportString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Other";
  }

  else
  {
    return IOAVTransportString::sStrings[a1];
  }
}

const char *IOAVProtectionStatusString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return IOAVProtectionStatusString::sStrings[a1];
  }
}

const char *IOAVEncryptionStatusString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return IOAVEncryptionStatusString::sStrings[a1];
  }
}

const char *IOAVContentProtectionTypeString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return IOAVContentProtectionTypeString::sStrings[a1 & 3];
  }
}

const char *IOAVContentProtectionProtocolString(unint64_t a1)
{
  v1 = "Unknown";
  if (HIDWORD(a1) == 2)
  {
    v1 = "HDCP2";
  }

  if (HIDWORD(a1) == 1)
  {
    v1 = "HDCP1";
  }

  v2 = "Unknown";
  if (a1 == 2)
  {
    v2 = "DPCP";
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "None";
  }
}

uint64_t IOAVGetVideoTimingData(int a1, int a2, int a3, int a4, uint64_t a5)
{
  if (IOAVGetCEAVideoTimingData(a1, a2, a3, a4, a5) || (__IOAVGetStandardVideoTimingData(1, a1, a2, a3, a4, a5, 1) & 1) != 0 || (__IOAVGetStandardVideoTimingData(3, a1, a2, a3, a4, a5, 1) & 1) != 0)
  {
    return 1;
  }

  return __IOAVGetStandardVideoTimingData(2, a1, a2, a3, a4, a5, 1);
}

BOOL IOAVGetCEAVideoTimingData(int a1, int a2, int a3, int a4, uint64_t a5)
{
  v6 = IOAVGetCEAVideoShortID(a1, a2, a3, a4);
  if (v6 <= 0xCF && (v7 = &IOAVGetVideoTimingTable::sCEATimingData[5 * v6], *a5 = *v7, *(a5 + 16) = v7[1], *(a5 + 32) = v7[2], *(a5 + 48) = v7[3], *(a5 + 64) = v7[4], *(a5 + 4)) && *(a5 + 36))
  {
    return *(a5 + 56) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t IOAVGetVideoTimingTable(unsigned int a1, _DWORD *a2)
{
  if (a1 > 4)
  {
    v2 = 0;
    result = 0;
  }

  else
  {
    v2 = dword_19724D750[a1];
    result = *(&off_1E74AA0F8 + a1);
  }

  *a2 = v2;
  return result;
}

BOOL IOAVVideoTimingIsVideoOptimized(uint64_t a1)
{
  v1 = (*(a1 + 56) + 0x8000) % 392823;
  v3 = v1 - 0x8000;
  v2 = v1 - 0x8000 < 0;
  v4 = 0x8000 - v1;
  if (!v2)
  {
    v4 = v3;
  }

  return v4 < 0x28F;
}

uint64_t IOAVVideoTimingVideoOptimizedDelta(uint64_t a1)
{
  v1 = *(a1 + 56) + 0x8000;
  v2 = 0x8000 - v1 % 392823;
  if (v1 % 392823 - 0x8000 >= 0)
  {
    v2 = v1 % 392823 - 0x8000;
  }

  v3 = v1 % 393216;
  v5 = v3 - 0x8000;
  v4 = v3 - 0x8000 < 0;
  v6 = 0x8000 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  if (v2 >= v6)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

uint64_t IOAVGetVideoTimingDataByID(int a1, unsigned int a2, __int128 *a3)
{
  if (a1 == 1)
  {
    v5 = &IOAVGetVideoTimingTable::sDMTTimingData;
    v6 = 89;
  }

  else
  {
    if (a1 != 4)
    {
      return 0;
    }

    v5 = IOAVGetVideoTimingTable::sCEATimingData;
    v6 = 208;
  }

  if (v6 <= a2)
  {
    return 0;
  }

  bzero(v9, 0x50uLL);
  v7 = &v5[5 * a2];
  result = memcmp(v9, v7, 0x50uLL);
  if (result)
  {
    a3[1] = v7[1];
    a3[2] = v7[2];
    a3[3] = v7[3];
    a3[4] = v7[4];
    *a3 = *v7;
    return 1;
  }

  return result;
}

uint64_t __IOAVGetStandardVideoTimingData(int a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v13 = 0;
      v14 = 57;
      v15 = 1;
      v16 = &IOAVGetVideoTimingTable::sNonstandardDetailedTimingData;
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v13 = 0;
      v14 = 89;
      v15 = 1;
      v16 = &IOAVGetVideoTimingTable::sDMTTimingData;
      goto LABEL_13;
    }

LABEL_12:
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v13 = 1;
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v13 = 0;
    v14 = 50;
    v15 = 1;
    v16 = &IOAVGetVideoTimingTable::sGTFTimingData;
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    v13 = 0;
    v14 = 114;
    v15 = 1;
    v16 = &IOAVGetVideoTimingTable::sCVTTimingData;
    goto LABEL_13;
  }

  if (a1 != 4)
  {
    goto LABEL_12;
  }

  v13 = 0;
  v14 = 208;
  v15 = 1;
  v16 = IOAVGetVideoTimingTable::sCEATimingData;
LABEL_13:
  result = 0;
  if (a7 && a4 && a3 && a2 && (v13 & 1) == 0)
  {
    if (v15)
    {
      v18 = (a4 + 0x8000) & 0xFFFF0000;
      if (v14 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v14;
      }

      while (((*v16 ^ a5) & 1) != 0 || *(v16 + 2) != a2 || *(v16 + 10) != a3 || *(v16 + 14) != v18 || a7 != -1 && IOAVVideoTimingGetBlankingStyle(v16) != a7)
      {
        v16 += 5;
        if (!--v19)
        {
          return 0;
        }
      }

      v20 = v16[1];
      v21 = v16[2];
      v22 = v16[4];
      *(a6 + 48) = v16[3];
      v23 = *v16;
      *(a6 + 64) = v22;
      *(a6 + 16) = v20;
      *(a6 + 32) = v21;
      *a6 = v23;
      *(a6 + 56) = a4;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOAVVideoTimingGetBlankingStyle(uint64_t a1)
{
  v1 = *(a1 + 28);
  v2 = *(a1 + 60);
  if ((v1 != 0) == (v2 != 0))
  {
    return 1;
  }

  v3 = *(a1 + 44);
  if (!v1)
  {
    v5 = v3 & 0xFFF8;
    return v2 && v5 == 0;
  }

  if (v2)
  {
    return 0;
  }

  if (v3 < 3)
  {
    return 1;
  }

  if (v3 != 3 && v3 < 8)
  {
    return 2;
  }

  if (v3 != 8)
  {
    return 0;
  }

  return 3;
}

BOOL IOAVGetCEAVideoTimingDataWithShortID(unsigned int a1, int a2, uint64_t a3)
{
  if (a1 > 0xCF)
  {
    return 0;
  }

  v3 = &IOAVGetVideoTimingTable::sCEATimingData[5 * a1];
  *a3 = *v3;
  *(a3 + 16) = v3[1];
  *(a3 + 32) = v3[2];
  *(a3 + 48) = v3[3];
  *(a3 + 64) = v3[4];
  if (!*(a3 + 4) || !*(a3 + 36))
  {
    return 0;
  }

  v4 = *(a3 + 56);
  result = v4 != 0;
  if (v4 && a2)
  {
    v6 = v4 + 0x8000;
    v7 = 0x8000 - v6 % 392823;
    if (v6 % 392823 - 0x8000 >= 0)
    {
      v7 = v6 % 392823 - 0x8000;
    }

    if (v7 <= 0x28E)
    {
      *(a3 + 56) = v6 & 0xFFFF0000;
      *(a3 + 68) = ((1001 * *(a3 + 68) + 500) * 0x4189374BC6A7F0uLL) >> 64;
    }

    return 1;
  }

  return result;
}

uint64_t IOAVGetCEAVideoShortID(int a1, int a2, int a3, int a4)
{
  v4 = 0;
  v13 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  DWORD1(v13) = a1;
  DWORD1(v15) = a2;
  *&v16[4] = a3;
  v12 = a4;
  v5 = 17;
  v14 = 0u;
  v6 = ((a1 << 16) << 16) / (a2 << 16);
  v7 = IOAVVideoActiveFormatAspectRatio::arRef;
  do
  {
    v8 = *v7;
    v7 += 2;
    v9 = v8 - v6;
    if (v8 - v6 < 0)
    {
      v9 = -v9;
    }

    v10 = IOAVVideoActiveFormatAspectRatio::arRef[2 * v5] - v6;
    if (v10 < 0)
    {
      v10 = v6 - IOAVVideoActiveFormatAspectRatio::arRef[2 * v5];
    }

    if (v9 < v10)
    {
      v5 = v4;
    }

    ++v4;
  }

  while (v4 != 18);
  *&v16[20] = IOAVVideoActiveFormatAspectRatio::arRef[2 * v5 + 1];
  return __IOAVGetCEAVideoShortIDWithData(&v12, 1);
}

uint64_t __IOAVGetCEAVideoShortIDWithData(_DWORD *__s2, int a2)
{
  v4 = 0;
  v5 = IOAVGetVideoTimingTable::sCEATimingData;
  do
  {
    v6 = v5[3];
    v10 = v5[2];
    v11 = v6;
    v7 = v5[1];
    v9[0] = *v5;
    v9[1] = v7;
    v12 = v5[4];
    if (DWORD1(v9[0]) && DWORD1(v10) && DWORD2(v11))
    {
      if (a2)
      {
        if (((LODWORD(v9[0]) ^ *__s2) & 1) == 0 && __s2[18] == DWORD2(v12) && __s2[2] == DWORD2(v9[0]) && __s2[10] == DWORD2(v10) && ((DWORD2(v11) + 0x8000) ^ (__s2[14] + 0x8000)) < 0x10000)
        {
          return v4;
        }
      }

      else if (!memcmp(v9, __s2, 0x50uLL))
      {
        return v4;
      }
    }

    ++v4;
    v5 += 5;
  }

  while (v4 != 208);
  return 0;
}

uint64_t IOAVVideoActiveFormatAspectRatio(int a1)
{
  v1 = 0;
  v2 = 17;
  v3 = IOAVVideoActiveFormatAspectRatio::arRef;
  do
  {
    v4 = *v3;
    v3 += 2;
    v5 = v4 - a1;
    if (v4 - a1 < 0)
    {
      v5 = -v5;
    }

    v6 = IOAVVideoActiveFormatAspectRatio::arRef[2 * v2] - a1;
    if (v6 < 0)
    {
      v6 = a1 - IOAVVideoActiveFormatAspectRatio::arRef[2 * v2];
    }

    if (v5 < v6)
    {
      v2 = v1;
    }

    ++v1;
  }

  while (v1 != 18);
  return IOAVVideoActiveFormatAspectRatio::arRef[2 * v2 + 1];
}

BOOL IOAVTransportSupportsRGBOnly(int a1)
{
  if (a1)
  {
    v1 = a1 == 3;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t IOAVVideoTimingGetITSource(uint64_t a1)
{
  v1 = &dword_19724D418;
  v2 = 49;
  while (*(a1 + 40) != *(v1 - 1) || *(a1 + 8) != *(v1 - 2))
  {
    v1 += 3;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

uint64_t IOAVInfoFrameGetChecksum(__int32 *a1, uint8x8_t a2)
{
  a2.i32[0] = *a1;
  v3 = vmovl_u8(a2).u64[0];
  return (vaddv_s16(v3) + DisplayID::checksum((a1 + 1), v3.u16[2]));
}

uint64_t IOAVGetSPDInfoFrame@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 11) = 0;
  *(a2 + 3) = 0;
  *(a2 + 24) = 0;
  *(a2 + 19) = 0;
  *a2 = 387;
  *(a2 + 2) = 25;
  *(a2 + 4) = *a1;
  *(a2 + 12) = *(a1 + 8);
  *(a2 + 28) = *(a1 + 24);
  result = DisplayID::checksum((a2 + 4), 0x19uLL);
  *(a2 + 3) = 99 - result;
  return result;
}

uint64_t IOAVVideoTimingGetActivePixelClock(_DWORD *a1)
{
  v1 = a1[8];
  v2 = (a1[10] * a1[2] * a1[14]) >> 16;
  if (v1)
  {
    LODWORD(v2) = v2 / (v1 + 1);
  }

  return v2 >> (*a1 & 1);
}

uint64_t IOAVVideoColorBitsPerPixel(uint64_t a1, unsigned int a2, const char *a3, const char *a4)
{
  v4 = *(a1 + 4);
  if (v4 <= 0xE)
  {
    if (((1 << v4) & 0x67F0) != 0)
    {
      return 24;
    }

    if (((1 << v4) & 0x1808) != 0)
    {
      return (3 * *a1);
    }

    if (v4 == 2)
    {
      return (2 * *a1);
    }
  }

  if (!v4)
  {
    return (3 * *a1);
  }

  if (v4 != 1)
  {
    __IOAVAbort(a1, a2, a3, a4);
  }

  return (3 * *a1) >> 1;
}

uint64_t IOAVVideoColorMinimumBitsPerPixelDSC(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 > 0xC)
  {
    return 0xFFFFLL;
  }

  else
  {
    return word_19724D764[v1];
  }
}

uint64_t IOAVDSCModeForPixelEncoding(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_19724D780[a1];
  }
}

uint64_t IOAVDSCCapabilitiesGetMaxSlicesPerLine(uint64_t a1)
{
  if (*(a1 + 10))
  {
    return IOAVDSCSlicesPerLineScalar(__clz(*(a1 + 10)) ^ 0x1F);
  }

  else
  {
    return 0;
  }
}

uint64_t IOAVDSCSlicesPerLineScalar(unsigned int a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return byte_19724D7B4[a1];
  }
}

uint64_t IOAVDSCCapabilitiesGetPeakPixelRateForMode(uint64_t a1, int a2)
{
  if ((a2 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return *(a1 + qword_19724D7C0[a2 - 1]);
  }
}

BOOL IOAVVideoLinkIsDolbyVision(uint64_t a1)
{
  v1 = *(a1 + 12);
  v2 = v1 & 0xFFFFFFFE;
  v3 = v1 - 8;
  return v2 == 4 || v3 < 5;
}

unint64_t IOAVHDMICharacterRate(uint64_t a1, unsigned int a2, const char *a3, const char *a4)
{
  v4 = *(a1 + 108);
  if (!v4)
  {
    v5 = *(a1 + 72);
    v6 = (*(a1 + 76) * *(a1 + 44) * *(a1 + 96)) >> 16;
    if (v5)
    {
      LODWORD(v6) = v6 / (v5 + 1);
    }

    v4 = v6 >> (*(a1 + 40) & 1);
  }

  v7 = *(a1 + 24);
  v9[0] = *(a1 + 8);
  v9[1] = v7;
  return IOAVVideoColorBitsPerPixel(v9, a2, a3, a4) * v4 / 0x18;
}

uint64_t IOAVHDMIClockRate(uint64_t a1, unsigned int a2, const char *a3, const char *a4)
{
  v5 = IOAVHDMICharacterRate(a1, a2, a3, a4);
  if (v5 <= 0x1443FD00)
  {
    v6 = 1;
  }

  else
  {
    v6 = 4;
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  return v5 / v6;
}

unint64_t IOAVVideoLinkBandwidth(uint64_t a1, unsigned int a2, const char *a3, const char *a4)
{
  v4 = *(a1 + 108);
  if (!v4)
  {
    v5 = *(a1 + 72);
    v6 = (*(a1 + 76) * *(a1 + 44) * *(a1 + 96)) >> 16;
    if (v5)
    {
      LODWORD(v6) = v6 / (v5 + 1);
    }

    v4 = v6 >> (*(a1 + 40) & 1);
  }

  v7 = *(a1 + 24);
  v9[0] = *(a1 + 8);
  v9[1] = v7;
  return IOAVVideoColorBitsPerPixel(v9, a2, a3, a4) * v4;
}

uint64_t IOAVHDMIFRLBitRateScalar(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return qword_19724D7E0[a1];
  }
}

const char *IOAVHDMIFRLRateString(unsigned int a1)
{
  if (a1 > 6)
  {
    return "? Gbps (Unknown FRL rate)";
  }

  else
  {
    return off_1E74AA120[a1];
  }
}

const char *IODPCommandString(int a1)
{
  if (a1 == 32)
  {
    return "TrainLink";
  }

  if (a1 == 33)
  {
    return "RetrainLink";
  }

  return IOAVCommandString(a1);
}

const char *IODPEventLogEventTypeString(unsigned int a1)
{
  if (a1 == 32)
  {
    return "Link Training Command";
  }

  else
  {
    return IOAVEventLogEventTypeString(a1);
  }
}

const char *IODPTrainingPatternName(unsigned int a1)
{
  if (a1 > 7)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AA170[a1];
  }
}

const char *IODPQualityPatternName(unsigned int a1)
{
  if (a1 > 7)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AA1B0[a1];
  }
}

uint64_t IODPTrainingPatternLength(int a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_19724D830[a1 - 1];
  }
}

uint64_t IODPLinkSymbolRate(unsigned int a1)
{
  v1 = 27000000 * a1;
  if (a1 == 29)
  {
    v1 = 799200000;
  }

  if (a1 == 21)
  {
    return 568800000;
  }

  else
  {
    return v1;
  }
}

unint64_t IODPLinkSymbolClockForLinkBitRate(unint64_t a1)
{
  if (a1 == 10000000000 || a1 == 20000000000 || a1 == 13500000000)
  {
    return a1 >> 5;
  }

  else
  {
    return a1 / 0xA;
  }
}

uint64_t IODPLinkRateScalar(int a1)
{
  if (a1 <= 128)
  {
    if (a1 == 21)
    {
      return 5688000000;
    }

    if (a1 == 29)
    {
      return 7992000000;
    }
  }

  else
  {
    switch(a1)
    {
      case 129:
        return 10000000000;
      case 132:
        return 13500000000;
      case 130:
        return 20000000000;
    }
  }

  return 270000000 * a1;
}

uint64_t IODPLinkRateEnum(uint64_t a1)
{
  if (a1 <= 0x2540BE3FFLL)
  {
    if (a1 == 5688000000)
    {
      LOBYTE(v1) = 21;
      return v1;
    }

    if (a1 == 7992000000)
    {
      LOBYTE(v1) = 29;
      return v1;
    }

    return ((((a1 / 0xAuLL + 13500000) * 0x13E254E465D72C1BuLL) >> 64) >> 21);
  }

  if (a1 == 10000000000)
  {
    LOBYTE(v1) = -127;
    return v1;
  }

  if (a1 == 13500000000)
  {
    LOBYTE(v1) = -124;
    return v1;
  }

  if (a1 != 20000000000)
  {
    return ((((a1 / 0xAuLL + 13500000) * 0x13E254E465D72C1BuLL) >> 64) >> 21);
  }

  LOBYTE(v1) = -126;
  return v1;
}

BOOL IODPDriveSettingsEqual(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    if (*(a1 + 4) == *(a2 + 4))
    {
      v3 = 0;
      v4 = (a2 + 16);
      v5 = (a1 + 16);
      v6 = 1;
      do
      {
        if (*(v5 - 2) != *(v4 - 2))
        {
          break;
        }

        v3 = v6 >= a3;
        if (a3 == v6)
        {
          break;
        }

        v8 = *v4;
        v4 += 3;
        v7 = v8;
        v9 = *v5;
        v5 += 3;
        ++v6;
      }

      while (v9 == v7);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v3;
}

uint64_t IODPDriveSettingsAreValid(unint64_t a1, int a2)
{
  if (SHIDWORD(a1) <= 3 && a2 <= 3)
  {
    v3 = IODPDriveSettingsAreValid::sValidAdjustments[4 * HIDWORD(a1) + a2];
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unint64_t IODPConstrainedDriveSettings(unint64_t a1, uint64_t a2)
{
  v2 = HIDWORD(a1);
  if (SHIDWORD(a1) >= 3)
  {
    LODWORD(v2) = 3;
  }

  if (a2 >= 3)
  {
    a2 = 3;
  }

  else
  {
    a2 = a2;
  }

  result = (a1 | (v2 << 32)) + 0x100000000;
  v4 = 4 * v2;
  do
  {
    result -= 0x100000000;
    if (!v4)
    {
      break;
    }

    v5 = IODPDriveSettingsAreValid::sValidAdjustments[a2 + v4];
    v4 -= 4;
  }

  while ((v5 & 1) == 0);
  return result;
}

uint64_t IODPConstrainDriveSettings(uint64_t result, unsigned int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = a2;
    do
    {
      v4 = result + 12 * v2;
      LODWORD(v5) = *(v4 + 8);
      v6 = HIDWORD(*v4);
      if (v6 >= 3)
      {
        LODWORD(v6) = 3;
      }

      if (v5 >= 3)
      {
        v5 = 3;
      }

      else
      {
        v5 = v5;
      }

      v7 = (*v4 | (v6 << 32)) + 0x100000000;
      v8 = 4 * v6;
      do
      {
        v7 -= 0x100000000;
        if (!v8)
        {
          break;
        }

        v9 = IODPDriveSettingsAreValid::sValidAdjustments[v5 + v8];
        v8 -= 4;
      }

      while ((v9 & 1) == 0);
      *v4 = v7;
      *(v4 + 8) = v5;
      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t IODPUnifiedDriveSettings(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = 0;
    v4 = (a1 + 4);
    do
    {
      v5 = *v4;
      v4 = (v4 + 12);
      v3 = vmax_s32(v5, v3);
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  if (v3.i32[0] >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v3.u32[0];
  }

  if (v3.i32[1] >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v3.u32[1];
  }

  result = (v6 << 32) + 0x100000000;
  v9 = 4 * v6;
  do
  {
    result -= 0x100000000;
    if (!v9)
    {
      break;
    }

    v10 = IODPDriveSettingsAreValid::sValidAdjustments[v7 + v9];
    v9 -= 4;
  }

  while ((v10 & 1) == 0);
  return result;
}

unint64_t IODPStreamClockHz(unsigned int a1, unsigned int a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = 568800000;
  v4 = 27000000 * a1;
  if (a1 == 29)
  {
    v4 = 799200000;
  }

  if (a1 != 21)
  {
    v3 = v4;
  }

  return v3 * a2 / a3;
}

unint64_t IODPCalculateM(unint64_t result, uint64_t a2, unsigned int a3)
{
  if (result)
  {
    return 10 * a2 * a3 / result;
  }

  return result;
}

unint64_t IODPLinkBandwidth(unsigned int a1, unint64_t a2)
{
  if (a2 == 10000000000 || a2 == 20000000000 || a2 == 13500000000)
  {
    return 1568768 * a2 * a1 / 0x18C063;
  }

  else
  {
    return 8 * a1 * (a2 / 0xA);
  }
}

unint64_t IODPVideoBandwidth(uint64_t a1)
{
  PixelClock = IOAVVideoTimingGetPixelClock((a1 + 40), 0);
  if (*(a1 + 1))
  {
    v6 = *(a1 + 124);
  }

  else
  {
    v7 = *(a1 + 24);
    v9[0] = *(a1 + 8);
    v9[1] = v7;
    v6 = 16 * IOAVVideoColorBitsPerPixel(v9, v2, v3, v4);
  }

  return (v6 * PixelClock + 15) >> 4;
}

uint64_t IODPVideoLinkMainStreamAttributeData@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, int a5@<W4>, BOOL *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = 0;
  v15 = *(a1 + 8);
  *a6 = 0;
  v16 = *(a1 + 12);
  if (v16 <= 6)
  {
    if (v16 <= 3)
    {
      if (v16)
      {
        if (v16 != 2)
        {
          if (v16 != 3)
          {
            goto LABEL_42;
          }

          goto LABEL_28;
        }

LABEL_12:
        v17 = *(a1 + 20);
        if (v17 > 1)
        {
          if (v17 == 2)
          {
            *a6 = *(a1 + 16) != 0;
            v14 = 4;
            goto LABEL_42;
          }

          if (v17 == 3)
          {
            *a6 = *(a1 + 16) != 0;
            v14 = 5;
            goto LABEL_42;
          }
        }

        else
        {
          if (!v17)
          {
            *a6 = *(a1 + 16) != 1;
            v14 = 6;
            goto LABEL_42;
          }

          if (v17 == 1)
          {
            *a6 = *(a1 + 16) != 1;
            v14 = 7;
            goto LABEL_42;
          }
        }

        goto LABEL_41;
      }

LABEL_19:
      v18 = *(a1 + 20);
      if (v18 > 12)
      {
        if ((v18 - 14) < 2)
        {
          *a6 = *(a1 + 16) != 0;
          v14 = 14;
          goto LABEL_42;
        }

        if (v18 == 13)
        {
          *a6 = *(a1 + 16) != 0;
          v14 = 3;
          goto LABEL_42;
        }

        if (v18 != 16)
        {
LABEL_41:
          v14 = 0;
          *a6 = 1;
          goto LABEL_42;
        }
      }

      else if (v18 != 10)
      {
        if (v18 == 11)
        {
          *a6 = *(a1 + 16) != 0;
          v14 = 13;
          goto LABEL_42;
        }

        if (v18 == 12)
        {
          *a6 = *(a1 + 16) != 0;
          v14 = 12;
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v14 = 2 * (*(a1 + 16) == 1);
      goto LABEL_42;
    }

    if (v16 != 5)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  if (v16 > 9)
  {
    if (v16 != 10)
    {
      if (v16 == 11)
      {
LABEL_28:
        v19 = *(a1 + 20);
        if (v19 > 1)
        {
          if (v19 == 2)
          {
            *a6 = *(a1 + 16) != 0;
            v14 = 8;
            goto LABEL_42;
          }

          if (v19 == 3)
          {
            *a6 = *(a1 + 16) != 0;
            v14 = 9;
            goto LABEL_42;
          }
        }

        else
        {
          if (!v19)
          {
            *a6 = *(a1 + 16) != 1;
            v14 = 10;
            goto LABEL_42;
          }

          if (v19 == 1)
          {
            *a6 = *(a1 + 16) != 1;
            v14 = 11;
            goto LABEL_42;
          }
        }

        goto LABEL_41;
      }

      if (v16 != 12)
      {
        goto LABEL_42;
      }

      goto LABEL_19;
    }

LABEL_24:
    v14 = 0;
    v15 = 8;
    goto LABEL_42;
  }

  if ((v16 - 8) < 2)
  {
    goto LABEL_12;
  }

  if (v16 == 7)
  {
    goto LABEL_24;
  }

LABEL_42:
  result = IOAVVideoColorBitDepth(v15);
  v21 = *(a1 + 40);
  if (v21)
  {
    v22 = (*(a1 + 76) & 1) == 0;
    if (!a5)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v22 = 0;
    if (!a5)
    {
      goto LABEL_48;
    }
  }

  if (*a6)
  {
    v22 |= 0x40u;
  }

LABEL_48:
  v23 = *(a1 + 80);
  v24 = *(a1 + 84);
  v25 = *(a1 + 44) | (*(a1 + 76) >> (v21 & 1) << 16) | (*(a1 + 56) << 32) | (*(a1 + 88) << 48);
  *a7 = *a7 & 0xFF000000FF000000 | a2 & 0xFFFFFF | ((a3 & 0xFFFFFF) << 32);
  *(a7 + 8) = v25;
  *(a7 + 16) = (*(a1 + 68) == 0) | (2 * (*(a1 + 52) & 0x7FFFu)) | ((*(a1 + 100) == 0) << 16) | (v24 << 17) | (*(a1 + 48) << 32) | (v23 << 48);
  *(a7 + 24) = (v14 >> 1) & 6 | a4 & 0xE7 | (8 * ((v14 & 2) != 0)) & 0xEF | (16 * (v14 & 1)) | (32 * result) | (v22 << 8);
  return result;
}

__n128 IODPInfoFrameSDP@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2 | 0x80;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 1) = v3;
  *(a3 + 3) = 4 * a1;
  *(a3 + 32) = 0;
  if (a1 >= 19)
  {
    v4 = 29;
  }

  else
  {
    v4 = 27;
  }

  *(a3 + 2) = v4;
  if (a1 == 19)
  {
    *(a3 + 4) = *(a2 + 1);
    v5 = 6;
  }

  else
  {
    v5 = 4;
  }

  v6 = a3 + v5;
  *v6 = *(a2 + 4);
  result = *(a2 + 16);
  *(v6 + 12) = result;
  return result;
}

_DWORD *IODPVideoLinkVideoStreamConfigurationSDP@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 20) = 0u;
  *(a2 + 4) = 0u;
  v3 = result[3];
  v2 = result[4];
  *a2 = 319096576;
  v4 = result[2];
  v5 = 0;
  v6 = -127;
  v7 = 1;
  switch(v3)
  {
    case 0:
    case 12:
      v11 = result[5];
      if (v11 <= 11)
      {
        switch(v11)
        {
          case 9:
            v9 = 6;
            goto LABEL_60;
          case 10:
            goto LABEL_61;
          case 11:
            v9 = 2;
            goto LABEL_60;
        }

        goto LABEL_50;
      }

      if ((v11 - 14) < 2)
      {
        v9 = 4;
        goto LABEL_60;
      }

      if (v11 != 13)
      {
        if (v11 == 12)
        {
          v9 = 1;
          goto LABEL_60;
        }

LABEL_50:
        v9 = 5;
        goto LABEL_60;
      }

      v9 = 3;
LABEL_60:
      *(a2 + 20) = v9;
LABEL_61:
      v6 = 0x80;
      if (v4 <= 9u)
      {
        if (v4 == 8)
        {
          v6 = -127;
          v7 = 1;
        }

        else
        {
          if (v4 != 9)
          {
            goto LABEL_74;
          }

          v6 = -123;
          v7 = 5;
        }
      }

      else
      {
        switch(v4)
        {
          case 0x10u:
            v6 = -124;
            v7 = 4;
            break;
          case 0xCu:
            v6 = -125;
            v7 = 3;
            break;
          case 0xAu:
            v6 = -126;
            v7 = 2;
            break;
          default:
            goto LABEL_74;
        }
      }

      v5 = v2;
LABEL_73:
      *(a2 + 21) = v7;
      v2 = v5;
LABEL_74:
      if (v2 == 1)
      {
        *(a2 + 21) = v6;
      }

      return result;
    case 1:
      *(a2 + 20) = 48;
      v12 = result[5];
      if (v12 <= 3)
      {
        switch(v12)
        {
          case 1:
            v9 = 49;
            break;
          case 2:
            v9 = 50;
            break;
          case 3:
            v9 = 51;
            break;
          default:
            goto LABEL_61;
        }
      }

      else if (v12 > 5)
      {
        if (v12 == 6)
        {
          v9 = 54;
        }

        else
        {
          if (v12 != 7)
          {
            goto LABEL_61;
          }

          v9 = 55;
        }
      }

      else if (v12 == 4)
      {
        v9 = 52;
      }

      else
      {
        v9 = 53;
      }

      goto LABEL_60;
    case 2:
    case 4:
    case 6:
    case 8:
    case 9:
    case 13:
    case 14:
      *(a2 + 20) = 32;
      v8 = result[5];
      if (v8 <= 3)
      {
        switch(v8)
        {
          case 1:
            v9 = 33;
            break;
          case 2:
            v9 = 34;
            break;
          case 3:
            v9 = 35;
            break;
          default:
            goto LABEL_61;
        }
      }

      else if (v8 > 5)
      {
        if (v8 == 6)
        {
          v9 = 38;
        }

        else
        {
          if (v8 != 7)
          {
            goto LABEL_61;
          }

          v9 = 39;
        }
      }

      else if (v8 == 4)
      {
        v9 = 36;
      }

      else
      {
        v9 = 37;
      }

      goto LABEL_60;
    case 3:
    case 11:
      *(a2 + 20) = 16;
      v10 = result[5];
      if (v10 <= 3)
      {
        switch(v10)
        {
          case 1:
            v9 = 17;
            break;
          case 2:
            v9 = 18;
            break;
          case 3:
            v9 = 19;
            break;
          default:
            goto LABEL_61;
        }
      }

      else if (v10 > 5)
      {
        if (v10 == 6)
        {
          v9 = 22;
        }

        else
        {
          if (v10 != 7)
          {
            goto LABEL_61;
          }

          v9 = 23;
        }
      }

      else if (v10 == 4)
      {
        v9 = 20;
      }

      else
      {
        v9 = 21;
      }

      goto LABEL_60;
    case 5:
    case 7:
    case 10:
      goto LABEL_73;
    default:
      goto LABEL_61;
  }
}

uint64_t IODPCompareLinkTrainingData(uint64_t a1, uint64_t a2)
{
  v2 = 10000000000;
  v3 = 5688000000;
  v4 = *(a1 + 12);
  if (v4 <= 0x80)
  {
    v5 = 5688000000;
    if (v4 == 21)
    {
      goto LABEL_11;
    }

    if (v4 == 29)
    {
      v5 = 7992000000;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 10000000000;
    switch(v4)
    {
      case 0x81u:
        goto LABEL_11;
      case 0x84u:
        v5 = 13500000000;
        goto LABEL_11;
      case 0x82u:
        v5 = 20000000000;
        goto LABEL_11;
    }
  }

  v5 = 270000000 * *(a1 + 12);
LABEL_11:
  v6 = *(a2 + 12);
  if (v6 > 0x80)
  {
    switch(v6)
    {
      case 0x81u:
        goto LABEL_22;
      case 0x84u:
        v2 = 13500000000;
        goto LABEL_22;
      case 0x82u:
        v2 = 20000000000;
        goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v6 != 21)
  {
    if (v6 != 29)
    {
LABEL_20:
      v3 = 270000000 * *(a2 + 12);
      goto LABEL_21;
    }

    v3 = 7992000000;
  }

LABEL_21:
  v2 = v3;
LABEL_22:
  v7 = v5 * *(a1 + 8);
  v8 = v2 * *(a2 + 8);
  v9 = v7 > v8;
  if (v7 >= v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (v9)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

const char *IODPDeviceTypeString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Sink";
  }

  else
  {
    return IODPDeviceTypeString::sStrings[a1];
  }
}

uint64_t IOCircularDataQueueEnqueue(uint64_t a1, const void *a2, size_t a3)
{
  v3 = 3758097090;
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = *(a1 + 16);
      if (a3)
      {
        if (a2)
        {
          v7 = *(a1 + 16);
          if (*v5 != *(a1 + 24))
          {
            return 3758097105;
          }

          if (*(a1 + 48) >= a3)
          {
            v8 = *(a1 + 36);
            if (!v8)
            {
              return 3758097095;
            }

            v9 = *(a1 + 32);
            v10 = *(a1 + 44);
            _X4 = v5[2];
            v12 = v5[3];
            __dmb(9u);
            if (v12 < 0)
            {
              return 3758097109;
            }

            v13 = _X4 + 1;
            if (_X4 == -2)
            {
              return 3758097128;
            }

            if (((v12 * v8) & 0x8000000000000000) == 0)
            {
              v14 = (v5 + v12 * v8 + 32);
              if (v14 < (v5 + v9))
              {
                _X7 = v12;
                __asm { CASPAL          X6, X7, X4, X5, [X9] }

                if (_X6 == _X4)
                {
                  v21 = (v12 + 1) % v10;
                  v22 = v12 & 0x3FFFFFFF00000000 | a3;
                  __dmb(0xBu);
                  *v14 = v13;
                  *(v5 + v12 * v8 + 40) = v22 | 0x8000000000000000;
                  *(v5 + v12 * v8 + 48) = *(a1 + 24);
                  memcpy(v5 + v12 * v8 + 64, a2, a3);
                  __dmb(0xBu);
                  *v14 = v13;
                  v14[1] = v22;
                  __dmb(0xBu);
                  *(v7 + 16) = v13;
                  *(v7 + 24) = v12 & 0x7FFFFFFF00000000 | v21;
                  if (**(a1 + 16) == *(a1 + 24))
                  {
                    return 0;
                  }

                  else
                  {
                    return 3758097105;
                  }
                }

                return 3758097109;
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

uint64_t IOCircularDataQueueIsCurrentDataValid()
{
  result = OUTLINED_FUNCTION_2_1();
  if (!v1)
  {
    return result;
  }

  v3 = *(v1 + 16);
  if (!v3)
  {
    return result;
  }

  v4 = *(v1 + 16);
  if (*v3 != *(v1 + 24))
  {
    return (v2 + 15);
  }

  if (*(v1 + 4) < *(v1 + 44))
  {
    v5 = v3[3];
    __dmb(9u);
    if ((v5 & 0x4000000000000000) != 0)
    {
      return (v2 + 19);
    }

    v6 = HIDWORD(v5) & 0x3FFFFFFF;
    if (v6 != *v1)
    {
      return (v2 + 41);
    }

    v7 = *(v1 + 36);
    v8 = *(v1 + 4);
    if (((v8 * v7) & 0x8000000000000000) == 0)
    {
      v9 = (v3 + v8 * v7 + 32);
      if (v9 < (v3 + *(v1 + 32)))
      {
        if (v9[2] == *(v1 + 24))
        {
          v12 = v9;
          v10 = *v9;
          v11 = v12[1];
          __dmb(9u);
          result = (v2 + 38);
          if ((v11 & 0x8000000000000000) == 0 && (HIDWORD(v11) & 0x3FFFFFFF) == v6)
          {
            if (*(v1 + 8) == v10)
            {
              v13 = v2 + 15;
              if (**(v1 + 16) == *(v1 + 24))
              {
                return 0;
              }

              else
              {
                return v13;
              }
            }

            else
            {
              return (v2 + 38);
            }
          }

          return result;
        }

        return (v2 + 15);
      }
    }
  }

  return result;
}

uint64_t IOCircularDataQueueSetCursorLatest(uint64_t a1)
{
  v1 = 3758097090;
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = *(a1 + 16);
      if (*v2 != *(a1 + 24))
      {
        return 3758097105;
      }

      v4 = *(a1 + 32);
      v5 = *(a1 + 36);
      v6 = v2[2];
      v7 = v2[3];
      __dmb(9u);
      if ((v7 & 0x4000000000000000) != 0)
      {
        return 3758097109;
      }

      if (v6 == -1)
      {
        return 3758097127;
      }

      v8 = v7;
      if (!v7)
      {
        v8 = *(a1 + 44);
      }

      v9 = v8 - 1;
      v1 = 3758097131;
      if (((v5 * v9) & 0x8000000000000000) == 0)
      {
        v10 = (v2 + v5 * v9 + 32);
        if (v10 < (v2 + v4))
        {
          if (v10[2] == *(a1 + 24))
          {
            v11 = HIDWORD(v7) & 0x3FFFFFFF;
            v13 = *v10;
            v12 = v10[1];
            __dmb(9u);
            if ((HIDWORD(v12) & 0x3FFFFFFF) != v11)
            {
              return 3758097131;
            }

            v1 = 0;
            *a1 = v11;
            *(a1 + 4) = v9;
            *(a1 + 8) = v13;
            return v1;
          }

          return 3758097105;
        }
      }
    }
  }

  return v1;
}

uint64_t _getLatestInQueueMemInternal(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = OUTLINED_FUNCTION_2_1();
  v8 = *(a1 + 16);
  if (!v8)
  {
    return result;
  }

  v9 = v7;
  v10 = *(a1 + 16);
  if (!v7)
  {
    return result;
  }

  v11 = v6;
  if (!v6)
  {
    return result;
  }

  v12 = *(a1 + 16);
  if (*v8 != *(a1 + 24))
  {
    return (result + 15);
  }

  v13 = *(a1 + 36);
  v28 = *v7;
  v29 = v8 + 4;
  v14 = v8 + *(a1 + 32);
  v15 = -5;
  while (1)
  {
    *v9 = 0;
    v17 = *(v12 + 16);
    v16 = *(v12 + 24);
    __dmb(9u);
    if ((v16 & 0x4000000000000000) != 0)
    {
      return OUTLINED_FUNCTION_2_1() + 19;
    }

    if (v17 == -1)
    {
      return OUTLINED_FUNCTION_2_1() + 37;
    }

    v18 = v16;
    if (!v16)
    {
      v18 = *(a1 + 44);
    }

    v19 = v18 - 1;
    if (((v13 * v19) & 0x8000000000000000) != 0)
    {
      return OUTLINED_FUNCTION_2_1();
    }

    v20 = v29 + v13 * v19;
    if (v20 >= v14)
    {
      return OUTLINED_FUNCTION_2_1();
    }

    if (*(v20 + 2) != *(a1 + 24))
    {
      goto LABEL_32;
    }

    v21 = *v20;
    v22 = *(v20 + 1);
    __dmb(9u);
    if (v17 != v21)
    {
      goto LABEL_24;
    }

    if (v22 < 0)
    {
      goto LABEL_24;
    }

    v23 = HIDWORD(v16) & 0x3FFFFFFF;
    if ((HIDWORD(v22) & 0x3FFFFFFF) != v23)
    {
      goto LABEL_24;
    }

    *a1 = v23;
    *(a1 + 4) = v19;
    *(a1 + 8) = v21;
    if (*(a1 + 36) < v22)
    {
      return OUTLINED_FUNCTION_2_1() + 38;
    }

    *v9 = v22;
    if ((a4 & 1) == 0)
    {
      break;
    }

    if (v22 > v28)
    {
      return OUTLINED_FUNCTION_2_1() + 38;
    }

    memcpy(*v11, v20 + 32, v22);
    v24 = *v20;
    v25 = *(v20 + 1);
    __dmb(9u);
    if (v22 == v25 && v21 == v24)
    {
      goto LABEL_28;
    }

    *v9 = 0;
LABEL_24:
    if (__CFADD__(v15++, 1))
    {
      return OUTLINED_FUNCTION_2_1() + 20;
    }
  }

  *v11 = v20 + 32;
LABEL_28:
  if (**(a1 + 16) == *(a1 + 24))
  {
    return 0;
  }

LABEL_32:
  LODWORD(result) = OUTLINED_FUNCTION_2_1();
  return (result + 15);
}

uint64_t _getNextInQueueMemInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1);
  result = (v2 - 38);
  if (v5)
  {
    v7 = v4;
    if (v4)
    {
      if (v3)
      {
        v8 = *v4;
        *v4 = 0;
        if (*v5 != *(v1 + 24))
        {
          return (v2 - 23);
        }

        if (*(v1 + 4) >= *(v1 + 44))
        {
          return (v2 + 3);
        }

        v9 = *(v1 + 32);
        v10 = *(v1 + 36);
        v11 = v5[2];
        v12 = v5[3];
        __dmb(9u);
        if ((v12 & 0x4000000000000000) != 0)
        {
          return (v2 - 19);
        }

        v13 = HIDWORD(v12) & 0x3FFFFFFF;
        v14 = (v2 + 3);
        if (*v1 != v13)
        {
          return v14;
        }

        v15 = *(v1 + 8);
        if (v11 < v15)
        {
          return v14;
        }

        v14 = (v2 - 1);
        if (v11 == -1 || v15 == v11 || (v12 & 0x8000000000000000) != 0 && v15 + 1 == v11)
        {
          return v14;
        }

        v16 = (*(v1 + 4) + 1) % *(v1 + 44);
        if (((v10 * v16) & 0x8000000000000000) == 0)
        {
          v17 = (v5 + v10 * v16 + 32);
          if (v17 < (v5 + v9))
          {
            if (*(v5 + v10 * v16 + 48) != *(v1 + 24))
            {
              return (v2 - 23);
            }

            v18 = *v17;
            v19 = *(v5 + v10 * v16 + 40);
            __dmb(9u);
            if ((HIDWORD(v19) & 0x3FFFFFFF) == v13)
            {
              if (v19 < 0)
              {
                return OUTLINED_FUNCTION_3();
              }

              if (*(v1 + 8) + 1 != v18)
              {
                return OUTLINED_FUNCTION_3();
              }

              OUTLINED_FUNCTION_4();
              if (!v23)
              {
                return OUTLINED_FUNCTION_3();
              }

              *v7 = v19;
              if (v21)
              {
                if (v19 > v22)
                {
                  return OUTLINED_FUNCTION_3();
                }

                memcpy(*v20, v17 + 4, v19);
                OUTLINED_FUNCTION_0_1();
                v25 = v25 && v18 == v24;
                if (!v25)
                {
                  *v7 = 0;
                  return v2;
                }
              }

              else
              {
                *v20 = v17 + 4;
              }

              if (**(v1 + 16) == *(v1 + 24))
              {
                return 0;
              }

              return (v2 - 23);
            }

            return (v2 + 3);
          }
        }
      }
    }
  }

  return result;
}

uint64_t _getPrevInQueueMemInternal(uint64_t a1)
{
  OUTLINED_FUNCTION_1(a1);
  result = (v2 - 38);
  if (v5)
  {
    v7 = v4;
    if (v4)
    {
      if (v3)
      {
        v8 = *v4;
        *v4 = 0;
        if (*v5 != *(v1 + 24))
        {
          return (v2 - 23);
        }

        if (*(v1 + 4) >= *(v1 + 44))
        {
          return (v2 + 3);
        }

        v9 = *(v1 + 32);
        v10 = *(v1 + 36);
        v12 = v5[2];
        v11 = v5[3];
        __dmb(9u);
        if ((v11 & 0x4000000000000000) != 0)
        {
          return (v2 - 19);
        }

        v13 = HIDWORD(v11) & 0x3FFFFFFF;
        if (*v1 != v13 || v12 < *(v1 + 8))
        {
          return (v2 + 3);
        }

        if (v12 == -1)
        {
          return (v2 - 1);
        }

        v14 = *(v1 + 4);
        if (!v14)
        {
          v14 = *(v1 + 44);
        }

        v15 = v14 - 1;
        if (((v10 * v15) & 0x8000000000000000) == 0)
        {
          v16 = (v5 + v10 * v15 + 32);
          if (v16 < (v5 + v9))
          {
            v17 = *v16;
            v18 = *(v5 + v10 * v15 + 40);
            __dmb(9u);
            if (v18 < 0)
            {
              return OUTLINED_FUNCTION_3();
            }

            v19 = v17 <= *(v1 + 8) && (HIDWORD(v18) & 0x3FFFFFFF) == v13;
            if (!v19)
            {
              return OUTLINED_FUNCTION_3();
            }

            if (*(v5 + v10 * v15 + 48) == *(v1 + 24))
            {
              OUTLINED_FUNCTION_4();
              if (!v23)
              {
                return OUTLINED_FUNCTION_3();
              }

              *v7 = v18;
              if (v21)
              {
                if (v18 > v22)
                {
                  return OUTLINED_FUNCTION_3();
                }

                memcpy(*v20, v16 + 4, v18);
                OUTLINED_FUNCTION_0_1();
                if (!v19 || v17 != v24)
                {
                  *v7 = 0;
                  return v2;
                }
              }

              else
              {
                *v20 = v16 + 4;
              }

              if (**(v1 + 16) == *(v1 + 24))
              {
                return 0;
              }
            }

            return (v2 - 23);
          }
        }
      }
    }
  }

  return result;
}

uint64_t _getCurrentInQueueMemInternal(uint64_t a1, void *a2, uint64_t *a3, char a4)
{
  v5 = *(a1 + 16);
  result = 3758097090;
  if (!v5 || !a3 || !a2)
  {
    return result;
  }

  v8 = *a3;
  *a3 = 0;
  if (*v5 != *(a1 + 24))
  {
    return 3758097105;
  }

  if (*(a1 + 4) >= *(a1 + 44))
  {
    return 3758097131;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 36);
  v12 = v5[2];
  v11 = v5[3];
  __dmb(9u);
  if ((v11 & 0x4000000000000000) != 0)
  {
    return 3758097109;
  }

  v13 = HIDWORD(v11) & 0x3FFFFFFF;
  if (*a1 != v13 || v12 < *(a1 + 8))
  {
    return 3758097131;
  }

  if (v12 == -1)
  {
    return 3758097127;
  }

  v14 = *(a1 + 4);
  if (((v14 * v10) & 0x8000000000000000) != 0)
  {
    return result;
  }

  v15 = (v5 + v14 * v10 + 32);
  if (v15 >= (v5 + v9))
  {
    return result;
  }

  if (*(v5 + v14 * v10 + 48) != *(a1 + 24))
  {
    return 3758097105;
  }

  v16 = *v15;
  v17 = *(v5 + v14 * v10 + 40);
  __dmb(9u);
  if ((HIDWORD(v17) & 0x3FFFFFFF) != v13)
  {
    return 3758097131;
  }

  if (v17 < 0 || *(a1 + 8) != v16 || *(a1 + 36) < v17)
  {
    return OUTLINED_FUNCTION_3();
  }

  *a3 = v17;
  if (a4)
  {
    result = OUTLINED_FUNCTION_3();
    if (v19 > v20)
    {
      return result;
    }

    memcpy(*v18, v15 + 4, v19);
    OUTLINED_FUNCTION_0_1();
    v22 = v22 && v16 == v21;
    if (!v22)
    {
      *a3 = 0;
      return 3758097109;
    }
  }

  else
  {
    *a2 = v5 + v14 * v10 + 64;
  }

  if (**(a1 + 16) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return 3758097105;
  }
}

io_service_t *IODPHDMIControllerPortCreateWithService(uint64_t a1, io_registry_entry_t a2)
{
  if (!a2 || !IOAVObjectConformsTo(a2, "IODPHDMIControllerPort"))
  {
    return 0;
  }

  if (!__kIODPHDMIControllerPortTypeID)
  {
    pthread_once(&__portTypeInit, __IODPHDMIControllerPortRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    *(Instance + 16) = a2;
    IOObjectRetain(a2);
    v5 = IOServiceOpen(v4[4], *MEMORY[0x1E69E9A60], 0x44504844u, v4 + 5);
    if (v5)
    {
      printf("failed to open io_service_t err=0x%x", v5);
    }

    else if (!getPortProperty(v4[4], v4 + 6, v4 + 7, 0))
    {
      return v4;
    }

    CFRelease(v4);
    return 0;
  }

  return v4;
}

uint64_t IODPHDMIControllerGetPCONStatus(uint64_t a1, BOOL *a2)
{
  output[1] = *MEMORY[0x1E69E9840];
  output[0] = 0;
  outputCnt = 1;
  result = IOConnectCallMethod(*(a1 + 20), 2u, 0, 0, 0, 0, output, &outputCnt, 0, 0);
  if (result)
  {
    v4 = 0;
  }

  else
  {
    v4 = outputCnt == 1;
  }

  if (v4)
  {
    *a2 = output[0] != 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void IOCreatePlugInInterfaceForService_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_197195000, v0, v1, "invalid io_service_t for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void IOCreatePlugInInterfaceForService_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_197195000, v0, v1, "io_service_t has invalid IOCFPlugInTypes for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void IOCreatePlugInInterfaceForService_cold_6()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_197195000, v0, v1, "IOServiceMatchPropertyTable failed for url %@ for %@");
  v2 = *MEMORY[0x1E69E9840];
}

void IOCreatePlugInInterfaceForService_cold_9()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_197195000, v0, v1, "io_service_t has no plugin for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void IOCreatePlugInInterfaceForService_cold_11()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_197195000, v0, v1, "io_service_t has no IOCFPlugInTypes for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void IOCreatePlugInInterfaceForService_cold_15()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_197195000, v0, v1, "onePlugin invalid for pluginType %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void IOCreatePlugInInterfaceForService_cold_17()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_197195000, v0, v1, "bundle invalid for pluginType %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void IOCreatePlugInInterfaceForService_cold_19()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_197195000, v0, v1, "plist invalid for pluginType %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void IOCreatePlugInInterfaceForService_cold_21()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_197195000, v0, v1, "No plist for plugin url %@ for %@");
  v2 = *MEMORY[0x1E69E9840];
}

void IOCreatePlugInInterfaceForService_cold_23()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_197195000, v0, v1, "CFPlugInFindFactoriesForPlugInTypeInPlugIn failed for plugin url %@ for %@");
  v2 = *MEMORY[0x1E69E9840];
}

__CFDictionary *IOHIDServiceConnectionCacheCopyDebugInfo(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && CFDictionaryGetCount(v2))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 40));
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v4 = MutableCopy;
  if (MutableCopy)
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      CFDictionarySetValue(MutableCopy, @"ReportInterval", v5);
    }

    if (!CFDictionaryGetCount(v4))
    {
      CFRelease(v4);
      return 0;
    }
  }

  return v4;
}

CFTypeRef IOHIDSessionFilterCreate(const __CFAllocator *a1, CFBundleRef bundle, const __CFUUID *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  Identifier = CFBundleGetIdentifier(bundle);
  CStringPtr = CFStringGetCStringPtr(Identifier, 0x8000100u);
  v7 = _IOHIDLog();
  if (os_signpost_enabled(v7))
  {
    *buf = 136315138;
    v27 = CStringPtr;
    OUTLINED_FUNCTION_1_1(&dword_197195000, v8, v9, v10, "CreateSessionFilter", "%s", buf);
  }

  Private = __IOHIDSessionFilterCreatePrivate(a1);
  if (!Private)
  {
    v15 = 0;
    goto LABEL_23;
  }

  v12 = *MEMORY[0x1E695E4A8];
  v13 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x1E695E4A8], 0x7Fu, 0x1Au, 0x3Au, 0xE6u, 0x3Eu, 0x3Du, 0x47u, 0xAu, 0xBDu, 0x15u, 0xA2u, 0xDDu, 0x7Eu, 0x1Bu, 0xB7u, 0x19u);
  v14 = CFPlugInInstanceCreate(a1, a3, v13);
  v15 = v14;
  if (!v14)
  {
LABEL_23:
    v22 = 0;
    goto LABEL_15;
  }

  v16 = *(*v14 + 8);
  v17 = CFUUIDGetConstantUUIDWithBytes(v12, 0x19u, 0xD7u, 0x74u, 0x41u, 0xBBu, 0xC4u, 0x45u, 0x11u, 0x91u, 0x49u, 0x60u, 0x57u, 0x2Au, 0xBu, 1u, 0x5Cu);
  v18 = CFUUIDGetUUIDBytes(v17);
  if (v16(v15, *&v18.byte0, *&v18.byte8, Private + 24))
  {
    *(Private + 24) = 0;
  }

  v19 = *(*v15 + 8);
  v20 = CFUUIDGetConstantUUIDWithBytes(v12, 0x3Du, 0xC3u, 0x5Au, 0xA6u, 0xD3u, 0x5Cu, 0x44u, 0x5Bu, 0x9Au, 0x59u, 0xCAu, 3u, 0xDAu, 0x40u, 0x8Bu, 0x97u);
  v21 = CFUUIDGetUUIDBytes(v20);
  if (v19(v15, *&v21.byte0, *&v21.byte8, Private + 16))
  {
    *(Private + 16) = 0;
  }

  else if (*(Private + 16))
  {
    goto LABEL_12;
  }

  if (!*(Private + 24))
  {
    goto LABEL_23;
  }

LABEL_12:
  *(Private + 40) = Identifier;
  if (Identifier)
  {
    CFRetain(Identifier);
  }

  *(Private + 48) = 1;
  v22 = CFRetain(Private);
LABEL_15:
  v23 = _IOHIDLog();
  if (os_signpost_enabled(v23))
  {
    *buf = 136315138;
    v27 = CStringPtr;
    _os_signpost_emit_with_name_impl(&dword_197195000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateSessionFilter", "%s", buf, 0xCu);
  }

  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  if (Private)
  {
    CFRelease(Private);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t __IOHIDSessionFilterCreatePrivate(const __CFAllocator *a1)
{
  if (!__kIOHIDSessionFilterTypeID)
  {
    pthread_once(&__systemFilterClientTypeInit, __IOHIDSessionFilterRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 128) = 0;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = CFUUIDCreate(a1);
  }

  return v3;
}

uint64_t IOHIDSessionFilterCreateWithClass(const __CFAllocator *a1, objc_class *a2, uint64_t a3, char a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = _IOHIDLog();
  if (os_signpost_enabled(v8))
  {
    v38 = 136315138;
    Name = class_getName(a2);
    OUTLINED_FUNCTION_1_1(&dword_197195000, v9, v10, v11, "CreateSessionFilterClass", "%s", &v38);
  }

  sel_getUid("alloc");
  v12 = OUTLINED_FUNCTION_0_3();
  v14 = [v12 v13];
  if (!v14)
  {
    goto LABEL_30;
  }

  if (![v14 getUid("initWithSession:a3")])
  {
    v35 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v38) = 0;
      _os_log_error_impl(&dword_197195000, v35, OS_LOG_TYPE_ERROR, "IOHIDSessionFilterCreateWithClass Failed to initialize filter", &v38, 2u);
    }

    v14 = 0;
    goto LABEL_30;
  }

  if (!objc_getProtocol("HIDSessionFilter"))
  {
    v36 = _IOHIDLogCategory(0);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
LABEL_30:
      v18 = 0;
      goto LABEL_31;
    }

    LOWORD(v38) = 0;
    v37 = "IOHIDSessionFilterCreateWithClass Failed to find HIDSessionFilter protocol";
LABEL_33:
    _os_log_error_impl(&dword_197195000, v36, OS_LOG_TYPE_ERROR, v37, &v38, 2u);
    goto LABEL_30;
  }

  v15 = OUTLINED_FUNCTION_0_3();
  if (!class_conformsToProtocol(v15, v16))
  {
    v36 = _IOHIDLogCategory(0);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    LOWORD(v38) = 0;
    v37 = "IOHIDSessionFilterCreateWithClass class does not conform to SessionFilter protocol";
    goto LABEL_33;
  }

  Private = __IOHIDSessionFilterCreatePrivate(a1);
  v18 = Private;
  if (!Private)
  {
LABEL_31:
    v29 = 1;
    goto LABEL_17;
  }

  *(Private + 56) = v14;
  *(Private + 64) = sel_getUid("propertyForKey:");
  *(v18 + 72) = sel_getUid("setProperty:forKey:");
  *(v18 + 80) = sel_getUid("filterEvent:forService:");
  *(v18 + 88) = sel_getUid("activate");
  v19 = CFGetAllocator(v18);
  ClassName = object_getClassName(*(v18 + 56));
  *(v18 + 40) = CFStringCreateWithCString(v19, ClassName, 0);
  sel_getUid("cancel");
  v21 = OUTLINED_FUNCTION_0_3();
  if (class_respondsToSelector(v21, v22))
  {
    *(v18 + 96) = sel_getUid("cancel");
  }

  sel_getUid("serviceNotification:added:");
  v23 = OUTLINED_FUNCTION_0_3();
  if (class_respondsToSelector(v23, v24))
  {
    *(v18 + 104) = sel_getUid("serviceNotification:added:");
  }

  sel_getUid("setDispatchQueue:");
  v25 = OUTLINED_FUNCTION_0_3();
  if (class_respondsToSelector(v25, v26))
  {
    *(v18 + 112) = sel_getUid("setDispatchQueue:");
  }

  sel_getUid("filterEvent:toConnection:fromService:");
  v27 = OUTLINED_FUNCTION_0_3();
  if (class_respondsToSelector(v27, v28))
  {
    *(v18 + 120) = sel_getUid("filterEvent:toConnection:fromService:");
  }

  v29 = 0;
  *(v18 + 48) = a4;
LABEL_17:
  v30 = _IOHIDLog();
  if (os_signpost_enabled(v30))
  {
    v31 = class_getName(a2);
    v38 = 136315138;
    Name = v31;
    _os_signpost_emit_with_name_impl(&dword_197195000, v30, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CreateSessionFilterClass", "%s", &v38, 0xCu);
  }

  v32 = v29 ^ 1;
  if (!v14)
  {
    v32 = 1;
  }

  if ((v32 & 1) == 0)
  {
    CFRelease(v14);
  }

  v33 = *MEMORY[0x1E69E9840];
  return v18;
}

void IOHIDSessionFilterUnscheduleFromDispatchQueue(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 128);
  if (v2 == a2)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = *(*v4 + 112);
      if (v5)
      {
        v5();
        v2 = *(a1 + 128);
      }
    }

    if (v2)
    {
      dispatch_release(v2);
      *(a1 + 128) = 0;
    }
  }
}

void IOHIDSessionFilterGetPropertyForClient_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_197195000, a2, OS_LOG_TYPE_ERROR, "%@ is not serializable", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void IOHIDCopyHIDParameterFromEventSystem_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = -536870184;
  _os_log_error_impl(&dword_197195000, log, OS_LOG_TYPE_ERROR, "Fail to get parameter with status 0x%x", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void IOHIDSetHIDParameterToEventSystem_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_197195000, a2, OS_LOG_TYPE_ERROR, "Fail to set parameter with status 0x%x", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

IOHIDAccessType IOHIDCheckAccess(IOHIDRequestType requestType)
{
  if (qword_1ED446AB0 != -1)
  {
    dispatch_once(&qword_1ED446AB0, &__block_literal_global_20);
  }

  result = kIOHIDAccessTypeUnknown;
  if (qword_1ED446AA8 && _MergedGlobals_1)
  {
    if (requestType)
    {
      if (requestType != kIOHIDRequestTypeListenEvent)
      {
        return result;
      }

      v3 = @"kTCCServiceListenEvent";
    }

    else
    {
      v3 = @"kTCCServicePostEvent";
    }

    v4 = (_MergedGlobals_1)(v3, 0);
    if (v4 == 1)
    {
      v5 = kIOHIDAccessTypeDenied;
    }

    else
    {
      v5 = kIOHIDAccessTypeUnknown;
    }

    if (v4)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL IOHIDRequestAccess(IOHIDRequestType requestType)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (qword_1ED446AB0 != -1)
  {
    dispatch_once(&qword_1ED446AB0, &__block_literal_global_20);
  }

  if (qword_1ED446AA8 && off_1ED446AA0)
  {
    if (requestType)
    {
      if (requestType != kIOHIDRequestTypeListenEvent)
      {
        goto LABEL_11;
      }

      v2 = @"kTCCServiceListenEvent";
    }

    else
    {
      v2 = @"kTCCServicePostEvent";
    }

    v3 = dispatch_semaphore_create(0);
    v8[3] = v3;
    if (v3)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 0x40000000;
      v6[2] = __IOHIDRequestAccess_block_invoke;
      v6[3] = &unk_1E74A79D8;
      v6[4] = &v11;
      v6[5] = &v7;
      off_1ED446AA0(v2, 0, v6);
      dispatch_semaphore_wait(v8[3], 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v8[3]);
    }
  }

LABEL_11:
  v4 = *(v12 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void IOHIDSetCursorEnable_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOHIDSetCursorBounds_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOHIDSetOnScreenCursorBounds_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void _IOHIDSetFixedMouseLocation_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_197195000, v0, OS_LOG_TYPE_DEBUG, "Set fixed mouse location failed:0x%x", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void IOHIDSetStateForSelector_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOHIDSetStateForSelector_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOHIDSetModifierLockState_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ____loadTCCFramework_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ____loadTCCFramework_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ____loadTCCFramework_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ____loadTCCFramework_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __IOPSCopyExternalPowerAdapterDetails_block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_197195000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Event handler is called %@\n", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __IOPSGaugingMitigationGetState_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __IOPSSetBatteryDateOfFirstUse_block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_197195000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Event handler is called %@\n", v1, 0xCu);
  v0 = *MEMORY[0x1E69E9840];
}

void __IOPMUnregisterNotification_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void processUserActivityMsg_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void processUserActivityMsg_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void IOPMLogWakeProgress_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_197195000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Wake progress from %d. data: 0x%x\n", v2, 0xEu);
  v1 = *MEMORY[0x1E69E9840];
}

void _conveyMachPortToPowerd_cold_1(int *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x1E69E9840];
}

void __IOPMConnectionCreate_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void _connectionCreate_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void _connectionCreate_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __copyBatteryData_block_invoke_189_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 48);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

io_connect_t *IOAVControlInterfaceCreateWithService(uint64_t a1, io_registry_entry_t a2)
{
  if (!a2 || !IOAVObjectConformsTo(a2, "IOAVControlInterface"))
  {
    return 0;
  }

  if (!__kIOAVControlInterfaceTypeID)
  {
    pthread_once(&__interfaceTypeInit, __IOAVControlInterfaceRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 2) = 0;
    *(Instance + 3) = 0;
    v5 = Instance + 4;
    *(Instance + 4) = 0;
    Instance[4] = a2;
    IOObjectRetain(a2);
    if (IOServiceOpen(*v5, *MEMORY[0x1E69E9A60], 0, v4 + 5))
    {
      v7 = v4;
      v4 = 0;
LABEL_10:
      CFRelease(v7);
      return v4;
    }

    CFProperty = IORegistryEntryCreateCFProperty(*v5, @"Location", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      if (CFEqual(CFProperty, @"Embedded"))
      {
        v4[6] = 1;
      }

      goto LABEL_10;
    }
  }

  return v4;
}

CFArrayRef IOAVControlInterfaceCopyProperties(uint64_t a1)
{
  properties = 0;
  v1 = *MEMORY[0x1E695E480];
  if (IORegistryEntryCreateCFProperties(*(a1 + 16), &properties, *MEMORY[0x1E695E480], 0))
  {
    return 0;
  }

  v2 = IOAVPropertyListCreateWithCFProperties(v1, properties);
  CFRelease(properties);
  return v2;
}

__CFString *IOHIDDeviceCopyDescription(io_object_t *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(name, 0, sizeof(name));
  v2 = a1[2];
  if (v2)
  {
    if (IOObjectRetain(a1[2]))
    {
      v3 = 0;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v4, 0);
  if (Mutable)
  {
    IORegistryEntryGetName(v3, name);
    if (!name[0])
    {
      IOObjectGetClass(v3, name);
    }

    v20 = v3;
    v6 = CFGetAllocator(a1);
    v7 = CFGetAllocator(a1);
    v8 = CFStringCreateWithFormat(v6, 0, @"<IOHIDDevice %p [%p]  'ClassName=%s'", a1, v7, name);
    if (v8)
    {
      CFStringAppend(Mutable, v8);
      CFRelease(v8);
    }

    v9 = 0;
    while (1)
    {
      v10 = __debugKeys[v9];
      Property = IOHIDDeviceGetProperty(a1, v10);
      if (Property)
      {
        break;
      }

LABEL_20:
      if (++v9 == 12)
      {
        CFStringAppend(Mutable, @">");
        v3 = v20;
        goto LABEL_22;
      }
    }

    v12 = Property;
    v13 = CFGetTypeID(Property);
    if (v13 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
      v14 = CFGetAllocator(a1);
      v15 = CFStringCreateWithFormat(v14, 0, @" %@=%d", v10, valuePtr);
    }

    else
    {
      v16 = CFGetTypeID(v12);
      if (v16 != CFStringGetTypeID())
      {
        goto LABEL_18;
      }

      v17 = CFGetAllocator(a1);
      v15 = CFStringCreateWithFormat(v17, 0, @" %@=%@", v10, v12);
    }

    v8 = v15;
LABEL_18:
    if (v8)
    {
      CFStringAppend(Mutable, v8);
      CFRelease(v8);
    }

    goto LABEL_20;
  }

LABEL_22:
  if (v3)
  {
    IOObjectRelease(v3);
  }

  v18 = *MEMORY[0x1E69E9840];
  return Mutable;
}

BOOL __IOHIDDeviceCallbackBaseDataIsEqual(CFDataRef theData, const __CFData *a2)
{
  if (theData == a2)
  {
    return 1;
  }

  result = 0;
  if (theData)
  {
    if (a2)
    {
      BytePtr = CFDataGetBytePtr(theData);
      v6 = CFDataGetBytePtr(a2);
      result = 0;
      if (BytePtr)
      {
        if (v6)
        {
          return *BytePtr == *v6;
        }
      }
    }
  }

  return result;
}

void IOHIDDeviceSetDispatchQueue(IOHIDDeviceRef device, dispatch_queue_t queue)
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  __IOHIDDeviceSetupAsyncSupport(device);
  bzero(__str, 0x100uLL);
  label = dispatch_queue_get_label(queue);
  v5 = "";
  if (label)
  {
    v5 = label;
  }

  snprintf(__str, 0x100uLL, "%s.IOHIDDeviceRef:0x%llx", v5, *(device + 2));
  v6 = dispatch_queue_create_with_target_V2(__str, 0, queue);
  *(device + 26) = v6;
  if (v6)
  {
    CFRetain(device);
    v7 = *(device + 26);
    handler[5] = MEMORY[0x1E69E9820];
    handler[6] = 0x40000000;
    handler[7] = __IOHIDDeviceSetDispatchQueue_block_invoke;
    handler[8] = &__block_descriptor_tmp_26;
    handler[9] = device;
    v8 = dispatch_mach_create();
    *(device + 27) = v8;
    if (v8)
    {
      v9 = *(device + 30);
      if (v9)
      {
        IOHIDQueueSetDispatchQueue(v9, *(device + 26));
        CFRetain(device);
        v10 = *(device + 30);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 0x40000000;
        handler[2] = __IOHIDDeviceSetDispatchQueue_block_invoke_2;
        handler[3] = &__block_descriptor_tmp_27;
        handler[4] = device;
        IOHIDQueueSetCancelHandler(v10, handler);
      }
    }

    else
    {
      CFRelease(device);
    }
  }

  os_unfair_recursive_lock_unlock();
  v11 = *MEMORY[0x1E69E9840];
}

void __IOHIDDeviceRegisterInputReportCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[0] = a6;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a1;
  CFRetain(a1);
  os_unfair_recursive_lock_lock_with_options();
  if (!a1[38])
  {
    a1[38] = CFSetCreateMutable(0, 0, &__callbackBaseSetCallbacks);
  }

  os_unfair_recursive_lock_unlock();
  if (a1[38])
  {
    v11 = CFGetAllocator(a1);
    v12 = CFDataCreate(v11, v16, 32);
    if (v12)
    {
      v13 = v12;
      os_unfair_recursive_lock_lock_with_options();
      v14 = a1[38];
      if (a4 | a5)
      {
        CFSetAddValue(v14, v13);
        os_unfair_recursive_lock_unlock();
        v15 = a1[4];
        if (v15)
        {
          (*(*v15 + 120))(a1[3], a2, a3, __IOHIDDeviceInputReportWithTimeStampCallback, a1, 0);
        }

        else
        {
          (*(*a1[3] + 96))(a1[3], a2, a3, __IOHIDDeviceInputReportCallback, a1, 0);
        }
      }

      else
      {
        CFSetRemoveValue(v14, v13);
        os_unfair_recursive_lock_unlock();
      }

      CFRelease(v13);
    }
  }

  CFRelease(a1);
}

void _IOHIDDeviceReleasePrivate_cold_1(uint64_t *a1, _OWORD *a2, unsigned int *a3)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  atomic_load(a3);
  OUTLINED_FUNCTION_0_4();
  v5 = *a1;
  _os_crash_msg();
  __break(1u);
}

void IOHIDDeviceCreate_cold_2(int a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _IOHIDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109120;
    v6[1] = a1;
    _os_log_error_impl(&dword_197195000, v4, OS_LOG_TYPE_ERROR, "IOObjectRetain:0x%x", v6, 8u);
  }

  *a2 = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void IOHIDDeviceCreate_cold_3(uint64_t *a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _IOHIDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *a1;
    v7[0] = 67109376;
    v7[1] = a2;
    v8 = 2048;
    v9 = v6;
    _os_log_error_impl(&dword_197195000, v4, OS_LOG_TYPE_ERROR, "IOCreatePlugInInterfaceForService:0x%x for serviceID:%#llx", v7, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void IOHIDDeviceCreate_cold_4(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = _IOHIDLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_error_impl(&dword_197195000, v2, OS_LOG_TYPE_ERROR, "QueryInterface(kIOHIDDeviceDeviceInterfaceID):0x%x", v4, 8u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t IOHIDDeviceCreate_cold_5(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  if (*a2)
  {
    return (*(**a2 + 24))(*a1);
  }

  return result;
}

void IOHIDDeviceSetProperty_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    if (*MEMORY[0x1E695E4D0] == a2)
    {
      IOHIDQueueStop(v2);
    }

    else
    {
      IOHIDQueueStart(v2);
    }
  }
}

void __IOHIDDeviceSetupAsyncSupport_cold_2(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_3();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __IOHIDDeviceSetupAsyncSupport_cold_3(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0_4();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void IOHIDDeviceSetCancelHandler_cold_1(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_3();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

io_service_t *IODPPortCreateWithService(uint64_t a1, io_registry_entry_t a2)
{
  if (!a2 || !IOAVObjectConformsTo(a2, "IODPPort"))
  {
    return 0;
  }

  if (!__kIODPPortTypeID)
  {
    pthread_once(&__portTypeInit_0, __IODPPortRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 2) = 0;
    *(Instance + 3) = 0;
    *(Instance + 4) = 0;
    Instance[4] = a2;
    IOObjectRetain(a2);
    if (IOServiceOpen(v4[4], *MEMORY[0x1E69E9A60], 0x44505054u, v4 + 5) || getPortProperty(v4[4], v4 + 6, v4 + 7, v4 + 8))
    {
      CFRelease(v4);
      return 0;
    }
  }

  return v4;
}

uint64_t IODPPortGetVirtual(uint64_t a1, _DWORD *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = OUTLINED_FUNCTION_0_5(a1);
  result = OUTLINED_FUNCTION_1_4(v3, 1u, v4, v5, v6, v7, v8, v9, v12, v13);
  if (!result)
  {
    *a2 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IODPPortGetAVRoot(uint64_t a1, CFStringRef *a2, _DWORD *a3, _DWORD *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v6 = OUTLINED_FUNCTION_0_5(a1);
  v13 = OUTLINED_FUNCTION_1_4(v6, 2u, v7, v8, v9, v10, v11, v12, v19, v20);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 3758097086;
    v15 = IORegistryEntryIDMatching(0xFFFFFFFFFFFFFFFFLL);
    if (v15)
    {
      MatchingService = IOServiceGetMatchingService(0, v15);
      if (MatchingService)
      {
        v14 = 0;
        *a2 = IORegistryEntryCopyPath(MatchingService, "IODeviceTree");
        *a4 = -1;
      }

      else
      {
        v14 = 3758097088;
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

void _IOHIDObjectRetainCount_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_3();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _IOHIDObjectRetainCount_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_3();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

IOReturn IOHIDManagerOpen(IOHIDManagerRef manager, IOOptionBits options)
{
  if (*(manager + 144))
  {
    return 0;
  }

  *(manager + 144) = 1;
  *(manager + 37) = options;
  if (!*(manager + 4))
  {
    return 0;
  }

  *(manager + 30);
  *(manager + 22);
  v3 = *(manager + 25);
  *(manager + 24);
  return __ApplyToDevices(manager);
}

IOReturn IOHIDManagerClose(IOHIDManagerRef manager, IOOptionBits options)
{
  v4 = *(manager + 10);
  if (v4)
  {
    IOHIDManagerUnscheduleFromRunLoop(manager, v4, *(manager + 11));
  }

  if (*(manager + 144))
  {
    v5 = 0;
    *(manager + 144) = 0;
    *(manager + 37) = options;
    if (*(manager + 4))
    {
      v5 = __ApplyToDevices(manager);
    }
  }

  else
  {
    v5 = -536870195;
  }

  if ((*(manager + 38) & 5) == 1)
  {
    __IOHIDManagerSaveProperties();
  }

  return v5;
}

uint64_t __IOHIDManagerSaveProperties()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3_1();
  if (*(v0 + 156))
  {
    v2 = *(v0 + 56);
    if (v2)
    {
      __IOHIDPropertySaveToKeyWithSpecialKeys(v2, @"com.apple.iohidmanager", 0, v1);
      *(v0 + 156) = 0;
    }
  }

  if (*(v0 + 32))
  {
    v3 = CFGetAllocator(v0);
    Copy = CFSetCreateCopy(v3, *(v0 + 32));
    if (Copy)
    {
      v5 = Copy;
      CFSetApplyFunction(Copy, __IOHIDSaveDeviceSet, v1);
      CFRelease(v5);
    }
  }

  return os_unfair_recursive_lock_unlock();
}

Boolean IOHIDManagerSetProperty(IOHIDManagerRef manager, CFStringRef key, CFTypeRef value)
{
  v11[0] = key;
  v11[1] = value;
  OUTLINED_FUNCTION_3_1();
  Mutable = *(manager + 7);
  if (!Mutable)
  {
    v7 = CFGetAllocator(manager);
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(manager + 7) = Mutable;
    if (!Mutable)
    {
      os_unfair_recursive_lock_unlock();
      return 0;
    }
  }

  *(manager + 156) = 1;
  CFDictionarySetValue(Mutable, key, value);
  if (!*(manager + 4))
  {
    os_unfair_recursive_lock_unlock();
    return 1;
  }

  v8 = CFGetAllocator(manager);
  Copy = CFSetCreateCopy(v8, *(manager + 4));
  os_unfair_recursive_lock_unlock();
  if (!Copy)
  {
    return 0;
  }

  CFSetApplyFunction(Copy, __IOHIDApplyPropertyToDeviceSet, v11);
  CFRelease(Copy);
  return 1;
}

void __IOHIDManagerDeviceApplier()
{
  OUTLINED_FUNCTION_2_3();
  v3 = *v2;
  if ((*(*v2 + 152) & 8) != 0)
  {
    v4 = 0;
    goto LABEL_34;
  }

  if (v1[8])
  {
    v4 = IOHIDDeviceOpen(v0, *(v3 + 148));
    v5 = *(*v1 + 136);
    if (v5)
    {
      CFDictionarySetValue(v5, v0, v4);
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(v1 + 2);
  if ((v6 & 2) != 0)
  {
    v4 = IOHIDDeviceClose(v0, *(*v1 + 148));
    v6 = *(v1 + 2);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_8;
  }

  IOHIDDeviceSetInputValueMatchingMultiple(v0, *(*v1 + 240));
  v6 = *(v1 + 2);
  if ((v6 & 0x10) != 0)
  {
LABEL_9:
    IOHIDDeviceRegisterInputValueCallback(v0, *(*v1 + 176), *(*v1 + 168));
    v6 = *(v1 + 2);
  }

LABEL_10:
  if ((v6 & 0x1020) != 0)
  {
    v7 = *v1;
    os_unfair_recursive_lock_lock_with_options();
    Mutable = *(*v1 + 64);
    if (!Mutable)
    {
      v9 = CFGetAllocator(*v1);
      Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(*v1 + 64) = Mutable;
    }

    Value = CFDictionaryGetValue(Mutable, v0);
    if (!Value)
    {
      Property = IOHIDDeviceGetProperty(v0, @"MaxInputReportSize");
      valuePtr = 64;
      if (Property)
      {
        CFNumberGetValue(Property, kCFNumberCFIndexType, &valuePtr);
      }

      v12 = CFGetAllocator(*v1);
      v13 = CFDataCreateMutable(v12, valuePtr);
      Value = v13;
      if (v13)
      {
        CFDataSetLength(v13, valuePtr);
        CFDictionarySetValue(*(*v1 + 64), v0, Value);
        CFRelease(Value);
      }
    }

    v14 = *v1;
    os_unfair_recursive_lock_unlock();
    v15 = *(v1 + 2);
    MutableBytePtr = CFDataGetMutableBytePtr(Value);
    Length = CFDataGetLength(Value);
    v18 = *v1;
    v19 = *(*v1 + 184);
    if ((v15 & 0x20) != 0)
    {
      IOHIDDeviceRegisterInputReportCallback(v0, MutableBytePtr, Length, *(v18 + 24), v19);
    }

    else
    {
      IOHIDDeviceRegisterInputReportWithTimeStampCallback(v0, MutableBytePtr, Length, *(v18 + 25), v19);
    }
  }

  v20 = *(v1 + 2);
  if ((v20 & 0x40) != 0)
  {
    IOHIDDeviceScheduleWithRunLoop(v0, *(*v1 + 80), *(*v1 + 88));
    v20 = *(v1 + 2);
    if ((v20 & 0x80) == 0)
    {
LABEL_26:
      if ((v20 & 0x100) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    }
  }

  else if ((v20 & 0x80) == 0)
  {
    goto LABEL_26;
  }

  IOHIDDeviceUnscheduleFromRunLoop(v0, *(*v1 + 80), *(*v1 + 88));
  v20 = *(v1 + 2);
  if ((v20 & 0x100) == 0)
  {
LABEL_27:
    if ((v20 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_42;
  }

LABEL_41:
  IOHIDDeviceSetDispatchQueue(v0, *(v3 + 96));
  v20 = *(v1 + 2);
  if ((v20 & 0x200) == 0)
  {
LABEL_28:
    if ((v20 & 0x400) == 0)
    {
      goto LABEL_29;
    }

LABEL_43:
    IOHIDDeviceActivate(v0);
    if ((*(v1 + 2) & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_42:
  ++*(v3 + 112);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = ____IOHIDManagerDeviceApplier_block_invoke;
  v23[3] = &__block_descriptor_tmp_18_1;
  v23[4] = v3;
  IOHIDDeviceSetCancelHandler(v0, v23);
  v20 = *(v1 + 2);
  if ((v20 & 0x400) != 0)
  {
    goto LABEL_43;
  }

LABEL_29:
  if ((v20 & 0x800) != 0)
  {
LABEL_30:
    IOHIDDeviceCancel(v0);
  }

LABEL_31:
  if (!*(v1 + 3) && v4)
  {
    *(v1 + 3) = v4;
  }

LABEL_34:
  if ((v1[8] & 4) != 0)
  {
    v21 = *v1;
    v22 = *(*v1 + 136);
    if (v22)
    {
      v4 = CFDictionaryGetValue(v22, v0);
      v21 = *v1;
    }

    v21[27](v21[26], v4, v21, v0);
  }
}

uint64_t __IOHIDManagerInitialEnumCallback(uint64_t a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(a1 + 216);
  os_unfair_recursive_lock_unlock();
  if (v2)
  {
    os_unfair_recursive_lock_lock_with_options();
    v3 = *(a1 + 120);
    OUTLINED_FUNCTION_0_6();
    CFSetApplyFunction(v4, v5, v6);
    os_unfair_recursive_lock_unlock();
  }

  os_unfair_recursive_lock_lock_with_options();
  v7 = *(a1 + 128);
  if (v7)
  {
    CFRunLoopSourceInvalidate(v7);
    CFRelease(*(a1 + 128));
    *(a1 + 128) = 0;
  }

  v8 = *(a1 + 120);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 120) = 0;
  }

  v9 = *(a1 + 136);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 136) = 0;
  }

  return os_unfair_recursive_lock_unlock();
}

void IOHIDManagerUnscheduleFromRunLoop_cold_1(uint64_t a1, CFSetRef *a2, void *a3)
{
  os_unfair_recursive_lock_unlock();
  __ApplyToDevices(a2);
  os_unfair_recursive_lock_lock_with_options();
  v5 = a2[5];
  if (v5)
  {
    CFSetRemoveAllValues(v5);
  }

  v6 = a2[6];
  if (v6)
  {
    CFDictionaryRemoveAllValues(v6);
  }

  v7 = a2[16];
  if (v7)
  {
    CFRunLoopSourceInvalidate(v7);
    CFRelease(a2[16]);
    a2[16] = 0;
  }

  *a3 = 0;
  a3[1] = 0;
}

void __IOHIDManagerSetDeviceMatching_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_197195000, a2, OS_LOG_TYPE_ERROR, "IOServiceAddMatchingNotification:0x%x", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void IOHIDManagerSetDispatchQueue_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_3();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void IOHIDManagerSetCancelHandler_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_3();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

uint64_t IOHIDManagerActivate_cold_1()
{
  OUTLINED_FUNCTION_2_3();
  os_unfair_recursive_lock_lock_with_options();
  *(v0 + 216);
  os_unfair_recursive_lock_unlock();
  __ApplyToDevices(v0);
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(v0 + 72);
  if (v2)
  {
    IONotificationPortSetDispatchQueue(v2, *v1);
  }

  return os_unfair_recursive_lock_unlock();
}

void __IOHIDManagerExtRelease_cold_1(uint64_t *a1, _OWORD *a2, unsigned int *a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  atomic_load(a3);
  _os_log_send_and_compose_impl();
  v5 = *a1;
  _os_crash_msg();
  __break(1u);
}

void IOHIDQueueScheduleWithRunLoop_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_5(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_3();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void *__IOHIDQueueSetupAsyncSupport_cold_2(void *result, CFRunLoopSourceContext *a2, void **a3, BOOL *a4)
{
  if (result[5])
  {
    v8 = 1;
  }

  else
  {
    v7 = result;
    result = (*(*result[3] + 32))(result[3], a3);
    v8 = 0;
    if (!result)
    {
      result = *a3;
      if (*a3)
      {
        v7[5] = result;
        CFRunLoopSourceGetContext(result, a2);
        result = memcpy(v7 + 6, a2, 0x48uLL);
        v9 = v7[7];
        v7[15] = v9;
        v8 = v9 != 0;
      }
    }
  }

  *a4 = v8;
  return result;
}

uint64_t IOHIDQueueSetDispatchQueue_cold_1(NSObject *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x100uLL);
  label = dispatch_queue_get_label(a1);
  v7 = "";
  if (label)
  {
    v7 = label;
  }

  snprintf(__str, 0x100uLL, "%s.IOHIDQueueRef", v7);
  result = dispatch_queue_create_with_target_V2(__str, 0, a1);
  a2[18] = result;
  if (result)
  {
    _IOHIDObjectInternalRetain(a2);
    v9 = a2[18];
    *a3 = MEMORY[0x1E69E9820];
    a3[1] = 0x40000000;
    a3[2] = __IOHIDQueueSetDispatchQueue_block_invoke;
    a3[3] = &__block_descriptor_tmp_11;
    a3[4] = a2;
    result = dispatch_mach_create();
    a2[19] = result;
    if (!result)
    {
      result = _IOHIDObjectInternalRelease(a2);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void IOHIDQueueSetCancelHandler_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_5(a1, a2);
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_1_3();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

BOOL _IOHIDEventEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 24) == *(a2 + 24) && (v4 = *(a1 + 96), v5 = *v4, v6 = *(a2 + 96), v5 == *v6))
    {
      return memcmp(v4, v6, v5) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFString *__IOHIDEventEventCopyDebugDescWithIndentLevel(uint64_t a1)
{
  v3 = *(*(a1 + 96) + 4);
  if (v3 > 0x2B)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26();
  Name = IOHIDEventTypeGetName(v3);
  v5 = __descriptorCallbacks[v3];
  Latency = IOHIDEventGetLatency(v2, 0x3E8u);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    if (v1)
    {
      v8 = @"-----------------------------------------------------------------------\n";
    }

    else
    {
      v8 = @"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n";
    }

    v9 = OUTLINED_FUNCTION_4_0();
    _IOHIDStringAppendIndendationAndFormat(v9, v10, v8);
    if (!v1)
    {
      v32 = *(v2 + 16);
      v33 = (*(v2 + 32) & 0x80) != 0 ? *(v2 + 8) : IOHIDEventGetTimeStamp(v2);
      v65 = v33;
      v34 = OUTLINED_FUNCTION_4_0();
      _IOHIDStringAppendIndendationAndFormat(v34, v35, v36, "Timestamp:", v65);
      v37 = (*(v2 + 32) & 0x80) != 0 ? "Continuous" : "Absolute";
      v66 = v37;
      v38 = OUTLINED_FUNCTION_4_0();
      _IOHIDStringAppendIndendationAndFormat(v38, v39, v40, "Timestamp type:", v66);
      v41 = OUTLINED_FUNCTION_4_0();
      _IOHIDStringAppendIndendationAndFormat(v41, v42, v43, "Total Latency:", Latency);
      if (v32 >> 33)
      {
        _IOHIDStringAppendIndendationAndFormat(Mutable, 0, @"%c[1m", 27);
        v44 = OUTLINED_FUNCTION_4_0();
        _IOHIDStringAppendIndendationAndFormat(v44, v45, v46, "SenderID:", v32);
        _IOHIDStringAppendIndendationAndFormat(Mutable, 0, @"%c[0m", 27, v67);
      }

      else
      {
        v47 = OUTLINED_FUNCTION_4_0();
        _IOHIDStringAppendIndendationAndFormat(v47, v48, v49, "SenderID:", v32);
      }

      v68 = (*(*(v2 + 96) + 8) >> 4) & 1;
      v50 = OUTLINED_FUNCTION_4_0();
      _IOHIDStringAppendIndendationAndFormat(v50, v51, v52, "BuiltIn:", v68);
      if (*(v2 + 40))
      {
        if (*(v2 + 88))
        {
          v69 = *(v2 + 88);
          v53 = OUTLINED_FUNCTION_4_0();
          _IOHIDStringAppendIndendationAndFormat(v53, v54, v55, "AttributeDataLength:", v69);
          v56 = OUTLINED_FUNCTION_4_0();
          _IOHIDStringAppendIndendationAndFormat(v56, v57, v58, "AttributeData:");
          if (*(v2 + 88) >= 1)
          {
            v59 = 0;
            do
            {
              v62 = *(*(v2 + 40) + v59);
              v60 = OUTLINED_FUNCTION_4_0();
              _IOHIDStringAppendIndendationAndFormat(v60, v61, @"%02x ", v62);
              ++v59;
            }

            while (v59 < *(v2 + 88));
          }

          _IOHIDStringAppendIndendationAndFormat(Mutable, 0, @"\n");
        }
      }
    }

    if (*(*(v2 + 96) + 8))
    {
      v11 = "Absolute";
    }

    else
    {
      v11 = "Relative";
    }

    v63 = v11;
    v12 = OUTLINED_FUNCTION_4_0();
    _IOHIDStringAppendIndendationAndFormat(v12, v13, v14, "ValueType:", v63);
    v15 = OUTLINED_FUNCTION_4_0();
    _IOHIDStringAppendIndendationAndFormat(v15, v16, v17, "EventType:", Name);
    v64 = *(*(v2 + 96) + 8);
    v18 = OUTLINED_FUNCTION_4_0();
    _IOHIDStringAppendIndendationAndFormat(v18, v19, v20, "Flags:", v64);
    if (((0x10004400001uLL >> v3) & 1) == 0)
    {
      v21 = OUTLINED_FUNCTION_24();
      v5(v21);
    }

    if (*(v2 + 72))
    {
      v22 = OUTLINED_FUNCTION_4_0();
      _IOHIDStringAppendIndendationAndFormat(v22, v23, v24, "ChildEvents:");
      Count = CFArrayGetCount(*(v2 + 72));
      if (Count >= 1)
      {
        v26 = Count;
        for (i = 0; i != v26; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 72), i);
          if (ValueAtIndex)
          {
            v29 = __IOHIDEventEventCopyDebugDescWithIndentLevel(ValueAtIndex, v1 + 1);
            if (v29)
            {
              v30 = v29;
              CFStringAppend(Mutable, v29);
              CFRelease(v30);
            }
          }
        }
      }
    }

    _IOHIDStringAppendIndendationAndFormat(Mutable, v1, v8);
  }

  return Mutable;
}

uint64_t IOHIDEventCreateKeyboardEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_19();
  result = IOHIDEventCreate(v9, 3, v10, v8 | 1u);
  if (result)
  {
    v12 = *(result + 96);
    *(v12 + 16) = v6;
    *(v12 + 18) = v5;
    *(v12 + 20) = a5;
    *(v12 + 28) = 1;
  }

  return result;
}

uint64_t IOHIDEventCreateUnicodeEventWithQuality(uint64_t a1, uint64_t a2, const void *a3, size_t a4, int a5, int a6)
{
  v9 = a2;
  v10 = _IOHIDEventCreate(a1, a4 + 28, 30, a2, a6 | 1u);
  if (v10)
  {
    if (_MergedGlobals[0] && _MergedGlobals[0]() && off_1ED446908)
    {
      v9 = off_1ED446908(v9);
    }

    *(v10 + 8) = v9;
    v11 = *(v10 + 96);
    OUTLINED_FUNCTION_16();
    if (v15)
    {
      v13 = v14;
    }

    v12[4] = a5;
    v12[5] = v13;
    v12[6] = a4;
    memmove(v12 + 7, a3, a4);
  }

  return v10;
}

uint64_t IOHIDEventCreateButtonEvent()
{
  OUTLINED_FUNCTION_3_2();
  result = IOHIDEventCreate(v1, 2, v2, v3);
  if (result)
  {
    v5 = *(result + 96);
    *(v5 + 24) = 256;
    *(v5 + 28) = 0;
    *(v5 + 16) = v0;
    *(v5 + 20) = 0x10000;
  }

  return result;
}

void __IOHIDEventCreateButtonEvent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  OUTLINED_FUNCTION_5_0();
  v11 = IOHIDEventCreate(v9, 2, v10, v8 | 1u);
  if (v11)
  {
    v12 = *(v11 + 96);
    *(v12 + 24) = a4;
    *(v12 + 28) = a5;
    OUTLINED_FUNCTION_16();
    if (v16)
    {
      v14 = v15;
    }

    *(v13 + 16) = v5;
    *(v13 + 20) = v14;
    *(v13 + 25) = 1;
  }
}

void *IOHIDEventCreateRelativePointerEvent(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  OUTLINED_FUNCTION_2_5();
  v10 = v9;
  v12 = v11;
  v14 = IOHIDEventCreate(v11, 17, v9, v13);
  v15 = v14;
  if (v14)
  {
    v16 = v14[12];
    if (v16)
    {
      v17 = OUTLINED_FUNCTION_23();
      if (v17)
      {
        *(*(v17 + 12) + 16) = v6;
      }

      v18 = OUTLINED_FUNCTION_23();
      if (v18)
      {
        *(*(v18 + 12) + 24) = v5;
      }

      v19 = OUTLINED_FUNCTION_23();
      if (v19)
      {
        *(*(v19 + 12) + 32) = v4;
      }

      *(v16 + 40) = a3;
      if (a4 != a3)
      {
        v21 = a4 ^ a3;
        do
        {
          if (v21)
          {
            __IOHIDEventCreateButtonEvent(v12, v10, *(v16 + 40), 1, a3 & 1);
            if (v23)
            {
              v24 = v23;
              IOHIDEventAppendEvent();
              CFRelease(v24);
            }
          }

          a3 >>= 1;
          v22 = v21 >= 2;
          v21 >>= 1;
        }

        while (v22);
      }
    }

    else
    {
      CFRelease(v14);
      return 0;
    }
  }

  return v15;
}

const __CFArray *IOHIDEventCreateTranslationEvent()
{
  OUTLINED_FUNCTION_2_5();
  v6 = IOHIDEventCreate(v3, 4, v4, v5);
  v7 = v6;
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_22(v6);
    if (v8)
    {
      *(*(v8 + 12) + 16) = v2;
    }

    v9 = OUTLINED_FUNCTION_22(v7);
    if (v9)
    {
      *(*(v9 + 12) + 24) = v1;
    }

    v10 = OUTLINED_FUNCTION_22(v7);
    if (v10)
    {
      *(*(v10 + 12) + 32) = v0;
    }
  }

  return v7;
}

void __IOHIDEventCreateAxisEvent()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_18();
  v4 = IOHIDEventCreate(v0, v1, v2, v3);
  if (v4)
  {
    v5 = *(v4 + 96);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_13(v6);
    *(v7 + 24) = v8;
  }
}

uint64_t IOHIDEventCreateDeviceOrientationEventWithUsage()
{
  OUTLINED_FUNCTION_5_0();
  result = IOHIDEventCreate(v1, 10, v2, v3);
  if (result)
  {
    v5 = *(result + 96);
    *(v5 + 32) = 1;
    *(v5 + 16) = v0;
  }

  return result;
}

void IOHIDEventCreatePolarOrientationEvent()
{
  OUTLINED_FUNCTION_2_5();
  v3 = IOHIDEventCreate(v0, 10, v1, v2);
  if (v3)
  {
    v4 = *(v3 + 96);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_13(v5);
    *(v6 + 24) = v7;
    *(v6 + 32) = 0;
  }
}

void IOHIDEventCreateQuaternionOrientationEvent(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v7 = IOHIDEventCreate(a1, 10, a2, a3);
  if (v7)
  {
    v8 = *(v7 + 96);
    *(v8 + 16) = vcvtd_n_s64_f64(a4, 0x10uLL);
    *(v8 + 20) = vcvtd_n_s64_f64(a5, 0x10uLL);
    OUTLINED_FUNCTION_14();
    v9[6] = v10;
    v9[7] = v11;
    v9[8] = 3;
  }
}

uint64_t __IOHIDEventCreateMotionEvent(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_18();
  result = IOHIDEventCreate(v12, v13, v14, v15);
  if (result)
  {
    v17 = *(result + 96);
    v17[4] = vcvtd_n_s64_f64(v8, 0x10uLL);
    v17[5] = vcvtd_n_s64_f64(v7, 0x10uLL);
    v17[6] = vcvtd_n_s64_f64(v6, 0x10uLL);
    v17[7] = a4;
    v17[8] = a5;
    v17[9] = a6;
  }

  return result;
}

uint64_t IOHIDEventCreateAmbientLightSensorEvent()
{
  OUTLINED_FUNCTION_3_2();
  result = IOHIDEventCreate(v1, 12, v2, v3);
  if (result)
  {
    *(*(result + 96) + 16) = v0;
  }

  return result;
}

uint64_t IOHIDEventCreateProximtyLevelEvent()
{
  OUTLINED_FUNCTION_20();
  result = IOHIDEventCreate(v3, 14, v4, v2 | 1u);
  if (result)
  {
    v6 = *(result + 96);
    *(v6 + 16) = v1;
    *(v6 + 18) = 0;
    *(v6 + 20) = v0;
  }

  return result;
}

uint64_t IOHIDEventCreateTouchSensitiveButtonEvent(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  OUTLINED_FUNCTION_19();
  result = IOHIDEventCreate(v12, 42, v13, v14);
  if (result)
  {
    v16 = *(result + 96);
    *(v16 + 16) = v8;
    *(v16 + 18) = v7;
    *(v16 + 24) = a1;
    *(v16 + 32) = a2;
    *(v16 + 40) = a7 != 0;
    v17 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(v16 + 48) = v17;
    *(v16 + 64) = v17;
    *(v16 + 44) = 0;
  }

  return result;
}

uint64_t IOHIDEventCreateTouchSensitiveButtonEventWithRadius(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, int a5, int a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  result = IOHIDEventCreate(a1, 42, a2, a7);
  if (result)
  {
    v24 = *(result + 96);
    *(v24 + 48) = a8;
    *(v24 + 56) = a9;
    *(v24 + 24) = a10;
    *(v24 + 32) = a11;
    *(v24 + 64) = a12;
    *(v24 + 72) = a13;
    *(v24 + 44) = a5;
    *(v24 + 16) = a3;
    *(v24 + 18) = a4;
    *(v24 + 40) = a6 != 0;
  }

  return result;
}

uint64_t IOHIDEventCreateSwipeEvent()
{
  OUTLINED_FUNCTION_5_0();
  result = IOHIDEventCreate(v1, 16, v2, v3);
  if (result)
  {
    v5 = *(result + 96);
    *(v5 + 28) = v0;
    *(v5 + 16) = 0;
    *(v5 + 32) = 0;
  }

  return result;
}

void __IOHIDEventCreateSwipeEventOfTypeWithFlavor()
{
  OUTLINED_FUNCTION_2_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_18();
  v10 = IOHIDEventCreate(v6, v7, v8, v9);
  if (v10)
  {
    v11 = *(v10 + 96);
    *(v11 + 28) = v5;
    *(v11 + 32) = v3;
    *(v11 + 34) = v1;
    OUTLINED_FUNCTION_17();
    if (v15)
    {
      v13 = v14;
    }

    *(v12 + 36) = v13;
    OUTLINED_FUNCTION_14();
    *(v16 + 16) = v17;
    *(v16 + 20) = v18;
  }
}

uint64_t IOHIDEventCreateProgressEvent(double a1)
{
  OUTLINED_FUNCTION_3_2();
  result = IOHIDEventCreate(v3, 18, v4, v5);
  if (result)
  {
    v7 = *(result + 96);
    *(v7 + 16) = v1;
    *(v7 + 20) = a1;
  }

  return result;
}

void IOHIDEventCreateBiometricEvent()
{
  OUTLINED_FUNCTION_3_2();
  v4 = IOHIDEventCreate(v1, 29, v2, v3);
  if (v4)
  {
    v5 = *(v4 + 96);
    OUTLINED_FUNCTION_16();
    if (v9)
    {
      v7 = v8;
    }

    *(v6 + 16) = v0;
    *(v6 + 20) = v7;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
  }
}

uint64_t IOHIDEventCreateAtmosphericPressureEvent(uint64_t a1, uint64_t a2, int a3, int a4)
{
  result = IOHIDEventCreate(a1, 31, a2, a4 | 1u);
  if (result)
  {
    result = OUTLINED_FUNCTION_6(result);
    if (v9)
    {
      v6 = v8;
    }

    *(v7 + 16) = v6;
    *(v7 + 20) = a3;
  }

  return result;
}

uint64_t IOHIDEventCreateSymbolicHotKeyEvent()
{
  OUTLINED_FUNCTION_5_0();
  if (v4)
  {
    v5 = v3 | 0x10001u;
  }

  else
  {
    v5 = (v3 & 0xFFFEFFFE) + 1;
  }

  result = IOHIDEventCreate(v1, 24, v2, v5);
  if (result)
  {
    *(*(result + 96) + 16) = v0;
  }

  return result;
}

uint64_t IOHIDEventCreateLEDEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_19();
  result = IOHIDEventCreate(v9, 26, v10, v8 | 1u);
  if (result)
  {
    if (a5)
    {
      v12 = v6 == 0;
    }

    else
    {
      v12 = 0;
    }

    v13 = 1 << (v5 - 1);
    v14 = *(result + 96);
    if (!v12)
    {
      v13 = v6;
    }

    *(v14 + 16) = v13;
    *(v14 + 20) = v5;
    *(v14 + 24) = a5;
  }

  return result;
}

uint64_t IOHIDEventCreateForceEvent(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, double a6, double a7)
{
  result = IOHIDEventCreate(a1, 32, a2, a5);
  if (result)
  {
    v12 = *(result + 96);
    v12[4] = a3;
    v12[5] = vcvtd_n_s64_f64(a6, 0x10uLL);
    v12[6] = a4;
    v12[7] = vcvtd_n_s64_f64(a7, 0x10uLL);
  }

  return result;
}

uint64_t IOHIDEventCreateMotionActivtyEvent()
{
  OUTLINED_FUNCTION_5_0();
  result = IOHIDEventCreate(v1, 33, v2, v3);
  if (result)
  {
    result = OUTLINED_FUNCTION_6(result);
    if (v8)
    {
      v5 = v7;
    }

    *(v6 + 16) = v0;
    *(v6 + 20) = v5;
  }

  return result;
}

uint64_t IOHIDEventCreateMotionGestureEvent()
{
  OUTLINED_FUNCTION_5_0();
  result = IOHIDEventCreate(v1, 34, v2, v3);
  if (result)
  {
    result = OUTLINED_FUNCTION_6(result);
    if (v8)
    {
      v5 = v7;
    }

    *(v6 + 16) = v0;
    *(v6 + 20) = v5;
  }

  return result;
}

uint64_t IOHIDEventCreateGameControllerEvent(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14, int a15, int a16, int a17, int a18, int a19, unsigned int a20)
{
  result = IOHIDEventCreate(a1, 35, a2, a20);
  if (result)
  {
    v27 = *(result + 96);
    v27[4] = a3;
    v27[5] = a4;
    v27[6] = a5;
    v27[7] = a6;
    v27[8] = a7;
    v27[9] = a8;
    v27[10] = a9;
    v27[11] = a10;
    v27[12] = a11;
    v27[13] = a12;
    v27[14] = a13;
    v27[15] = a14;
    v27[16] = a15;
    v27[17] = a16;
    v27[18] = a17;
    v27[19] = a18;
    v27[20] = a19;
  }

  return result;
}

uint64_t IOHIDEventCreateGenericGestureEvent()
{
  OUTLINED_FUNCTION_5_0();
  result = IOHIDEventCreate(v1, 39, v2, v3);
  if (result)
  {
    *(*(result + 96) + 16) = v0;
  }

  return result;
}

uint64_t IOHIDEventCreateForceStageEvent(double a1, double a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_20();
  result = IOHIDEventCreate(v12, 41, v13, v14);
  if (result)
  {
    v16 = *(result + 96);
    *(v16 + 16) = v6;
    *(v16 + 20) = v5;
    *(v16 + 24) = a1;
    *(v16 + 32) = a2;
    *(v16 + 40) = a3;
    *(v16 + 48) = a4;
    *(v16 + 56) = a5;
  }

  return result;
}

uint64_t IOHIDEventCreateHeartRateEvent(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = IOHIDEventCreate(a1, 43, a2, a4);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_15();
    if (v6)
    {
      *(*(v6 + 12) + 16) = a3;
    }

    v7 = OUTLINED_FUNCTION_15();
    if (v7)
    {
      *(*(v7 + 12) + 24) = 0x3FF0000000000000;
    }

    v8 = OUTLINED_FUNCTION_15();
    if (v8)
    {
      *(*(v8 + 12) + 32) = 0;
    }

    v9 = OUTLINED_FUNCTION_15();
    if (v9)
    {
      *(*(v9 + 12) + 36) = 0;
    }
  }

  return v5;
}

uint64_t IOHIDEventRemoveEvent(uint64_t result, void *a2)
{
  if (a2)
  {
    if (*(result + 72))
    {
      v3 = a2[10];
      if (v3)
      {
        v4 = 0;
        v5 = a2[10];
        do
        {
          v6 = v5;
          if (v5 == result)
          {
            v4 = v5;
          }

          v5 = v5[10];
        }

        while (v5);
        if (v4)
        {
          v7 = *(v3 + 72);
          v9.length = CFArrayGetCount(v7);
          v9.location = 0;
          result = CFArrayGetFirstIndexOfValue(v7, v9, a2);
          if (result != -1)
          {
            a2[10] = 0;
            CFArrayRemoveValueAtIndex(*(v3 + 72), result);

            return __IOHIDEventFixTypeEventMask(v6);
          }
        }
      }
    }
  }

  return result;
}

__CFData *IOHIDEventCreateData(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_26();
  Length = __IOHIDEventGetLength(v4, 1);
  if (!Length)
  {
    return 0;
  }

  v6 = Length + *(v2 + 88);
  Mutable = CFDataCreateMutable(v3, v6 + 28);
  v8 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v6 + 28);
    MutableBytePtr = CFDataGetMutableBytePtr(v8);
    v11 = 0;
    __IOHIDEventReadBytesHelper(v2, MutableBytePtr, v6 + 28, &v11, 1);
  }

  return v8;
}

uint64_t IOHIDEventGetDataLength(uint64_t a1)
{
  result = __IOHIDEventGetLength(a1, 1);
  if (result)
  {
    result += *(a1 + 88) + 28;
  }

  return result;
}

void __IOHIDEventTypeDescriptorTranslation()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_22(v2);
  v4 = OUTLINED_FUNCTION_10();
  if (v3)
  {
    v4 = *(*(v3 + 96) + 16);
  }

  v17 = v4;
  v5 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v5, v6, v7, "X:", *&v17);
  v8 = OUTLINED_FUNCTION_22(v0);
  if (v8)
  {
    v1 = *(*(v8 + 12) + 24);
  }

  v9 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v9, v10, v11, "Y:", v1);
  v12 = OUTLINED_FUNCTION_22(v0);
  if (v12)
  {
    v13 = *(*(v12 + 12) + 32);
  }

  else
  {
    v13 = 0;
  }

  v18 = v13;
  v14 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v14, v15, v16, "Z:", v18);
}

void __IOHIDEventTypeDescriptorDigitizer()
{
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 12);
  EventWithOptions = IOHIDEventGetEventWithOptions(v2, 11, 4026531840);
  if (EventWithOptions)
  {
    v5 = (*(*(EventWithOptions + 12) + 8) & 2) == 0;
  }

  else
  {
    v5 = 1;
  }

  v91 = (v3[2] >> 19) & 1;
  v6 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v6, v7, v8, "DisplayIntegrated:", v91);
  v9 = "Stylus";
  switch(v3[11])
  {
    case 0:
      break;
    case 1:
      v9 = "Puck";
      break;
    case 2:
      if (!v5)
      {
        goto LABEL_8;
      }

      v9 = "Finger";
      break;
    case 3:
LABEL_8:
      v9 = "Hand";
      break;
    default:
      v9 = "Unknown";
      break;
  }

  v92 = v9;
  v10 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v10, v11, v12, "TransducerType:", v92);
  v93 = v3[10];
  v13 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v13, v14, @"%-20.20s %d\n", "TransducerIndex:", v93);
  v94 = v3[12];
  v15 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v15, v16, @"%-20.20s %d\n", "Identity:", v94);
  v95 = v3[13];
  v17 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v17, v18, @"%-20.20s %d\n", "EventMask:", v95);
  v19 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v19, v20, v21, "Events:");
  v24 = v3[13];
  if (v24)
  {
    OUTLINED_FUNCTION_12_0(v22, v23, @"Range ");
    v24 = v3[13];
    if ((v24 & 2) == 0)
    {
LABEL_12:
      if ((v24 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_54;
    }
  }

  else if ((v24 & 2) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_0(v22, v23, @"Touch ");
  v24 = v3[13];
  if ((v24 & 4) == 0)
  {
LABEL_13:
    if ((v24 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Position ");
  v24 = v3[13];
  if ((v24 & 8) == 0)
  {
LABEL_14:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Stop ");
  v24 = v3[13];
  if ((v24 & 0x10) == 0)
  {
LABEL_15:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Peak ");
  v24 = v3[13];
  if ((v24 & 0x20) == 0)
  {
LABEL_16:
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Identity ");
  v24 = v3[13];
  if ((v24 & 0x40) == 0)
  {
LABEL_17:
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Attribute ");
  v24 = v3[13];
  if ((v24 & 0x80) == 0)
  {
LABEL_18:
    if ((v24 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Cancel ");
  v24 = v3[13];
  if ((v24 & 0x100) == 0)
  {
LABEL_19:
    if ((v24 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Start ");
  v24 = v3[13];
  if ((v24 & 0x200) == 0)
  {
LABEL_20:
    if ((v24 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Resting ");
  v24 = v3[13];
  if ((v24 & 0x400) == 0)
  {
LABEL_21:
    if ((v24 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  OUTLINED_FUNCTION_12_0(v22, v23, @"FromEdgeFlat ");
  v24 = v3[13];
  if ((v24 & 0x800) == 0)
  {
LABEL_22:
    if ((v24 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  OUTLINED_FUNCTION_12_0(v22, v23, @"FromEdgeTip ");
  v24 = v3[13];
  if ((v24 & 0x1000) == 0)
  {
LABEL_23:
    if ((v24 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  OUTLINED_FUNCTION_12_0(v22, v23, @"FromCorner ");
  v24 = v3[13];
  if ((v24 & 0x2000) == 0)
  {
LABEL_24:
    if ((v24 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  OUTLINED_FUNCTION_12_0(v22, v23, @"SwipePending ");
  v24 = v3[13];
  if ((v24 & 0x4000) == 0)
  {
LABEL_25:
    if ((v24 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  OUTLINED_FUNCTION_12_0(v22, v23, @"ForcePending ");
  v24 = v3[13];
  if ((v24 & 0x8000) == 0)
  {
LABEL_26:
    if ((v24 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  OUTLINED_FUNCTION_12_0(v22, v23, @"ForceActive ");
  v24 = v3[13];
  if ((v24 & 0x20000) == 0)
  {
LABEL_27:
    if ((v24 & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  OUTLINED_FUNCTION_12_0(v22, v23, @"Tap ");
  v24 = v3[13];
  if ((v24 & 0x40000) == 0)
  {
LABEL_28:
    if ((v24 & 0x1000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  OUTLINED_FUNCTION_12_0(v22, v23, @"SwipeLocked ");
  v24 = v3[13];
  if ((v24 & 0x1000000) == 0)
  {
LABEL_29:
    if ((v24 & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  OUTLINED_FUNCTION_12_0(v22, v23, @"SwipeUp ");
  v24 = v3[13];
  if ((v24 & 0x2000000) == 0)
  {
LABEL_30:
    if ((v24 & 0x4000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  OUTLINED_FUNCTION_12_0(v22, v23, @"SwipeDown ");
  v24 = v3[13];
  if ((v24 & 0x4000000) == 0)
  {
LABEL_31:
    if ((v24 & 0x8000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  OUTLINED_FUNCTION_12_0(v22, v23, @"SwipeLeft ");
  v24 = v3[13];
  if ((v24 & 0x8000000) == 0)
  {
LABEL_32:
    if ((v24 & 0x10000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  OUTLINED_FUNCTION_12_0(v22, v23, @"SwipeRight ");
  v24 = v3[13];
  if ((v24 & 0x10000000) == 0)
  {
LABEL_33:
    if ((v24 & 0x20000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  OUTLINED_FUNCTION_12_0(v22, v23, @"EstimatedAltitude ");
  v24 = v3[13];
  if ((v24 & 0x20000000) == 0)
  {
LABEL_34:
    if ((v24 & 0x40000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_75:
  OUTLINED_FUNCTION_12_0(v22, v23, @"EstimatedAzimuth ");
  if ((v3[13] & 0x40000000) != 0)
  {
LABEL_35:
    OUTLINED_FUNCTION_12_0(v22, v23, @"EstimatedPressure ");
  }

LABEL_36:
  v25 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v25, v26, v27);
  v96 = v3[15];
  v28 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v28, v29, @"%-20.20s %d\n", "ButtonMask:", v96);
  v97 = HIWORD(v3[2]) & 1;
  v30 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v30, v31, @"%-20.20s %d\n", "Range:", v97);
  v98 = (v3[2] >> 17) & 1;
  v32 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v32, v33, @"%-20.20s %d\n", "Touch:", v98);
  OUTLINED_FUNCTION_8_0();
  v35 = OUTLINED_FUNCTION_10();
  if (v34)
  {
    v35 = *(*(v34 + 96) + 64);
  }

  v99 = v35;
  v36 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v36, v37, v38, "Pressure:", *&v99);
  v39 = OUTLINED_FUNCTION_8_0();
  if (v39)
  {
    v1 = *(*(v39 + 12) + 72);
  }

  v40 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v40, v41, v42, "AuxiliaryPressure:", v1);
  OUTLINED_FUNCTION_8_0();
  v44 = OUTLINED_FUNCTION_10();
  if (v43)
  {
    v44 = *(*(v43 + 96) + 80);
  }

  v100 = v44;
  v45 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v45, v46, v47, "Twist:", *&v100);
  v101 = v3[36];
  v48 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v48, v49, v50, "GenerationCount:", v101);
  v102 = v3[37];
  v51 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v51, v52, @"%-20.20s %08x\n", "WillUpdateMask:", v102);
  v103 = v3[38];
  v53 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v53, v54, @"%-20.20s %08x\n", "DidUpdateMask:", v103);
  v55 = OUTLINED_FUNCTION_8_0();
  if (v55)
  {
    v1 = *(*(v55 + 12) + 16);
  }

  v56 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v56, v57, v58, "X:", v1);
  OUTLINED_FUNCTION_8_0();
  v60 = OUTLINED_FUNCTION_10();
  if (v59)
  {
    v60 = *(*(v59 + 96) + 24);
  }

  v104 = v60;
  v61 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v61, v62, v63, "Y:", *&v104);
  v64 = OUTLINED_FUNCTION_8_0();
  if (v64)
  {
    v1 = *(*(v64 + 12) + 32);
  }

  v65 = 720913;
  v66 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v66, v67, v68, "Z:", v1);
  v69 = v3[22];
  if (v69)
  {
    if (v69 == 1)
    {
      v75 = 720911;
      v70 = 720912;
      v71 = 720916;
      v112 = 720914;
      v113 = 720917;
      v114 = "MinorRadius:";
      v72 = "MajorRadius:";
      v111 = "Density:";
      v73 = "Quality:";
      v74 = "Azimuth:";
      v76 = "Altitude:";
    }

    else
    {
      if (v69 != 2)
      {
        return;
      }

      v70 = 720914;
      v71 = 720917;
      v112 = 720916;
      v113 = 720922;
      v65 = 720915;
      v114 = "Accuracy:";
      v72 = "MinorRadius:";
      v111 = "MajorRadius:";
      v73 = "Irregularity:";
      v74 = "Density:";
      v75 = 720913;
      v76 = "Quality:";
    }

    v105 = IOHIDEventGetDoubleValueWithOptions(v0, v75, 4026531840).n64_u64[0];
    v77 = OUTLINED_FUNCTION_1_6();
    _IOHIDStringAppendIndendationAndFormat(v77, v78, @"%-20.20s %f\n", v76, v105);
    v106 = IOHIDEventGetDoubleValueWithOptions(v0, v70, 4026531840).n64_u64[0];
    v79 = OUTLINED_FUNCTION_1_6();
    _IOHIDStringAppendIndendationAndFormat(v79, v80, @"%-20.20s %f\n", v74, v106);
    v107 = IOHIDEventGetDoubleValueWithOptions(v0, v65, 4026531840).n64_u64[0];
    v81 = OUTLINED_FUNCTION_1_6();
    _IOHIDStringAppendIndendationAndFormat(v81, v82, @"%-20.20s %f\n", v73, v107);
    v108 = IOHIDEventGetDoubleValueWithOptions(v0, v112, 4026531840).n64_u64[0];
    v83 = OUTLINED_FUNCTION_1_6();
    _IOHIDStringAppendIndendationAndFormat(v83, v84, @"%-20.20s %f\n", v111, v108);
    v85 = v114;
    v86 = v113;
  }

  else
  {
    v71 = 720909;
    v86 = 720910;
    v85 = "TiltY:";
    v72 = "TiltX:";
  }

  v109 = IOHIDEventGetDoubleValueWithOptions(v0, v71, 4026531840).n64_u64[0];
  v87 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v87, v88, @"%-20.20s %f\n", v72, v109);
  v110 = IOHIDEventGetDoubleValueWithOptions(v0, v86, 4026531840).n64_u64[0];
  v89 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v89, v90, @"%-20.20s %f\n", v85, v110);
}

void __IOHIDEventTypeDescriptorPointer()
{
  OUTLINED_FUNCTION_9();
  _IOHIDStringAppendIndendationAndFormat(v3, v0, @"%-20.20s 0x%08x\n", "Button Mask:", *(*(v2 + 96) + 40));
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_10();
  if (v4)
  {
    v5 = *(*(v4 + 96) + 16);
  }

  v18 = v5;
  v6 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v6, v7, v8, "X:", *&v18);
  v9 = OUTLINED_FUNCTION_21();
  if (v9)
  {
    v1 = *(*(v9 + 12) + 24);
  }

  v10 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v10, v11, v12, "Y:", v1);
  v13 = OUTLINED_FUNCTION_21();
  if (v13)
  {
    v14 = *(*(v13 + 12) + 32);
  }

  else
  {
    v14 = 0;
  }

  v19 = v14;
  v15 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v15, v16, v17, "Z:", v19);
}

void __IOHIDEventTypeDescriptorMultiAxisPointer()
{
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 96);
  _IOHIDStringAppendIndendationAndFormat(v4, v0, @"%-20.20s 0x%08x\n", "Button Mask:", *(v3 + 28));
  OUTLINED_FUNCTION_7();
  v6 = OUTLINED_FUNCTION_10();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_0_7(*(*(v5 + 96) + 16));
    if (v8)
    {
      v6 = v7;
    }
  }

  v45 = v6;
  v9 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v9, v10, v11, "X:", *&v45);
  v12 = OUTLINED_FUNCTION_7();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_0_7(*(*(v12 + 12) + 20));
    if (v8)
    {
      v1 = v13;
    }

    else
    {
      v1 = v14;
    }
  }

  v15 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v15, v16, v17, "Y:", *&v1);
  OUTLINED_FUNCTION_7();
  v19 = OUTLINED_FUNCTION_10();
  if (v18)
  {
    v19 = OUTLINED_FUNCTION_0_7(*(*(v18 + 96) + 24));
    if (v8)
    {
      v19 = v20;
    }
  }

  v46 = v19;
  v21 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v21, v22, v23, "Z:", *&v46);
  v24 = OUTLINED_FUNCTION_7();
  if (v24)
  {
    v26 = OUTLINED_FUNCTION_0_7(*(*(v24 + 12) + 32));
    if (v8)
    {
      v1 = v25;
    }

    else
    {
      v1 = v26;
    }
  }

  v27 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v27, v28, v29, "Rx:", *&v1);
  OUTLINED_FUNCTION_7();
  v31 = OUTLINED_FUNCTION_10();
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_0_7(*(*(v30 + 96) + 36));
    if (v8)
    {
      v31 = v32;
    }
  }

  v47 = v31;
  v33 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v33, v34, v35, "Ry:", *&v47);
  v36 = OUTLINED_FUNCTION_7();
  if (v36)
  {
    v38 = OUTLINED_FUNCTION_0_7(*(*(v36 + 12) + 40));
    if (v8)
    {
      v1 = v37;
    }

    else
    {
      v1 = v38;
    }
  }

  v39 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v39, v40, v41, "Rz:", *&v1);
  v48 = HIWORD(*(v3 + 8)) & 1;
  v42 = OUTLINED_FUNCTION_1_6();
  _IOHIDStringAppendIndendationAndFormat(v42, v43, v44, "Repeat:", v48);
}

void IOHIDEventGetPolicy_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_197195000, a2, OS_LOG_TYPE_ERROR, "unexpected policy request %llu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

__CFDictionary *__IOAVClassMatching(uint64_t a1, __CFString *a2, unsigned int a3, int a4)
{
  valuePtr = a4;
  v8 = *MEMORY[0x1E695E480];
  v9 = OUTLINED_FUNCTION_0_9();
  Mutable = CFDictionaryCreateMutable(v9, v10, v11, v12);
  if (!Mutable)
  {
    return 0;
  }

  v14 = Mutable;
  if (a3 <= 1)
  {
    v15 = IOAVLocationString(a3);
    v16 = CFStringCreateWithCString(v8, v15, 0x8000100u);
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    CFDictionarySetValue(v14, @"Location", v16);
    CFRelease(v17);
  }

  if (a4 != -1)
  {
    v18 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    if (!v18)
    {
      goto LABEL_21;
    }

    v19 = v18;
    CFDictionarySetValue(v14, @"Unit", v18);
    CFRelease(v19);
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  v20 = CFStringFind(a2, @":", 0);
  if (v20.location == -1 || v20.location + v20.length >= CFStringGetLength(a2))
  {
    v21 = OUTLINED_FUNCTION_0_9();
    a2 = CFStringCreateWithFormat(v21, v22, v23, "IODeviceTree", a2);
    if (a2)
    {
      goto LABEL_13;
    }

LABEL_21:
    v40 = 0;
    goto LABEL_19;
  }

  CFRetain(a2);
LABEL_13:
  v24 = OUTLINED_FUNCTION_0_9();
  v28 = CFDictionaryCreateMutable(v24, v25, v26, v27);
  if (!v28)
  {
LABEL_22:
    v39 = v14;
    v14 = 0;
    goto LABEL_18;
  }

  v29 = v28;
  CFDictionarySetValue(v28, @"IOPathMatch", a2);
  CFRelease(a2);
  CFDictionarySetValue(v14, @"IOParentMatch", v29);
  CFRelease(v29);
LABEL_15:
  v30 = OUTLINED_FUNCTION_0_9();
  v34 = CFDictionaryCreateMutable(v30, v31, v32, v33);
  if (!v34)
  {
    goto LABEL_21;
  }

  a2 = v34;
  v35 = OUTLINED_FUNCTION_0_9();
  v38 = CFStringCreateWithFormat(v35, v36, v37, a1, "UserInterfaceSupported");
  if (!v38)
  {
    goto LABEL_22;
  }

  v39 = v38;
  CFDictionarySetValue(a2, v38, *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(v14, @"IOPropertyMatch", a2);
LABEL_18:
  v40 = v14;
  CFRelease(a2);
  v14 = v39;
LABEL_19:
  CFRelease(v14);
  return v40;
}

uint64_t __IOAVCopyFirstMatchingIOAVObjectOfType(uint64_t a1, uint64_t (*a2)(void, uint64_t), __CFString *a3, unsigned int a4, int a5)
{
  v6 = __IOAVClassMatching(a1, a3, a4, a5);
  MatchingService = IOServiceGetMatchingService(0, v6);
  if (!MatchingService)
  {
    return 0;
  }

  v8 = MatchingService;
  v9 = a2(*MEMORY[0x1E695E480], MatchingService);
  IOObjectRelease(v8);
  return v9;
}

uint64_t IOHIDEventSystemCreate(const __CFAllocator *a1)
{
  v112 = *MEMORY[0x1E69E9840];
  keys = 0;
  mach_absolute_time();
  OUTLINED_FUNCTION_0_10();
  _IOHIDDebugTrace(v2, v3, v4, v5, v6, v7);
  v8 = _IOHIDLog();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemCreate", &unk_19724ED59, buf, 2u);
  }

  v9 = IOHIDPreferencesCopyDomain(@"allocator", @"com.apple.iohid");
  if (v9)
  {
    v10 = v9;
    v11 = CFEqual(v9, @"default");
    v12 = *MEMORY[0x1E695E480];
    if (v11)
    {
      a1 = *MEMORY[0x1E695E480];
    }

    CFRelease(v10);
  }

  v13 = *MEMORY[0x1E69E99F8];
  *buf = 0;
  if (!bootstrap_look_up2())
  {
    v73 = MEMORY[0x1E69E9A60];
    mach_port_deallocate(*MEMORY[0x1E69E9A60], *buf);
    if (bootstrap_check_in(v13, "com.apple.iohideventsystem", buf))
    {
      v74 = _IOHIDLog();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v111) = 0;
        _os_log_impl(&dword_197195000, v74, OS_LOG_TYPE_DEFAULT, "__bootstrap_status:0x%x", buf, 8u);
      }

      v72 = 0;
      v15 = 0;
      goto LABEL_43;
    }

    mach_port_mod_refs(*v73, *buf, 1u, -1);
  }

  if (!_MergedGlobals_2)
  {
    pthread_once(&__systemTypeInit, __IOHIDEventSystemRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v15 = Instance;
  if (!Instance)
  {
    goto LABEL_42;
  }

  bzero((Instance + 16), 0x1B8uLL);
  *(v15 + 160) = 0;
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = hid_dispatch_queue_create("HID - IOService Enumeration", v16, qword_1ED446AC0, __IOHIDSystemEnumerationQueueWillExecute, __IOHIDSystemEnumerationQueueDidExecute, v15);
  *(v15 + 144) = v17;
  if (!v17)
  {
    goto LABEL_42;
  }

  v18 = OUTLINED_FUNCTION_2_6();
  Mutable = CFDictionaryCreateMutable(v18, v19, v20, v21);
  *(v15 + 16) = Mutable;
  if (!Mutable)
  {
    goto LABEL_42;
  }

  v23 = OUTLINED_FUNCTION_2_6();
  v27 = CFDictionaryCreateMutable(v23, v24, v25, v26);
  *(v15 + 24) = v27;
  if (!v27)
  {
    goto LABEL_42;
  }

  v28 = CFGetAllocator(v15);
  v29 = CFDictionaryCreateMutable(v28, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(v15 + 176) = v29;
  if (!v29)
  {
    goto LABEL_42;
  }

  *v105 = xmmword_1F0B910A0;
  v106 = *&off_1F0B910B0;
  *v107 = xmmword_1F0B910C0;
  v30 = OUTLINED_FUNCTION_2_6();
  v33 = CFSetCreateMutable(v30, v31, v32);
  *(v15 + 40) = v33;
  if (!v33)
  {
    goto LABEL_42;
  }

  v34 = OUTLINED_FUNCTION_2_6();
  v37 = CFSetCreateMutable(v34, v35, v36);
  *(v15 + 48) = v37;
  if (!v37)
  {
    goto LABEL_42;
  }

  v38 = OUTLINED_FUNCTION_2_6();
  v41 = CFSetCreateMutable(v38, v39, v40);
  *(v15 + 56) = v41;
  if (!v41)
  {
    goto LABEL_42;
  }

  v42 = OUTLINED_FUNCTION_2_6();
  v45 = CFSetCreateMutable(v42, v43, v44);
  *(v15 + 64) = v45;
  if (!v45)
  {
    goto LABEL_42;
  }

  v46 = OUTLINED_FUNCTION_2_6();
  v49 = CFSetCreateMutable(v46, v47, v48);
  *(v15 + 72) = v49;
  if (!v49)
  {
    goto LABEL_42;
  }

  v50 = OUTLINED_FUNCTION_2_6();
  v53 = CFArrayCreateMutable(v50, v51, v52);
  *(v15 + 80) = v53;
  if (!v53)
  {
    goto LABEL_42;
  }

  v54 = OUTLINED_FUNCTION_2_6();
  v57 = CFSetCreateMutable(v54, v55, v56);
  *(v15 + 424) = v57;
  if (!v57)
  {
    goto LABEL_42;
  }

  v58 = OUTLINED_FUNCTION_2_6();
  v61 = CFSetCreateMutable(v58, v59, v60);
  *(v15 + 432) = v61;
  if (!v61)
  {
    goto LABEL_42;
  }

  v62 = OUTLINED_FUNCTION_2_6();
  v63 = IOHIDSessionCreate(v62);
  *(v15 + 128) = v63;
  if (!v63)
  {
    v75 = _IOHIDLog();
    if (OUTLINED_FUNCTION_5_1(v75))
    {
      *buf = 0;
      v82 = "IOHIDSessionCreate";
LABEL_41:
      OUTLINED_FUNCTION_4_1(&dword_197195000, v76, v77, v82, v78, v79, v80, v81, v105[0], v105[1], v106, *(&v106 + 1), v107[0], v107[1], v108, keys, buf[0]);
    }

LABEL_42:
    v72 = 0;
LABEL_43:
    v66 = 0;
    v65 = 0;
    goto LABEL_44;
  }

  v64 = IOHIDEventServerCreate(a1, v15);
  *(v15 + 152) = v64;
  if (!v64)
  {
    v83 = _IOHIDLog();
    if (OUTLINED_FUNCTION_5_1(v83))
    {
      *buf = 0;
      v82 = "IOHIDEventServerCreate";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  __IOHIDEventSystem_debug = v15;
  v65 = IOServiceMatching("IOService");
  if (!v65)
  {
    v72 = 0;
    v66 = 0;
    goto LABEL_44;
  }

  keys = @"HIDServiceSupport";
  v66 = CFDictionaryCreate(a1, &keys, MEMORY[0x1E695E4D0], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v66)
  {
    goto LABEL_66;
  }

  CFDictionarySetValue(v65, @"IOPropertyMatch", v66);
  v67 = IONotificationPortCreate(0);
  if (!v67)
  {
LABEL_64:
    *(v15 + 96) = 0;
    v98 = _IOHIDLog();
    if (OUTLINED_FUNCTION_5_1(v98))
    {
      OUTLINED_FUNCTION_4_1(&dword_197195000, v99, v100, "__IOHIDEventSystemCreateNotification", v101, v102, v103, v104, v105[0], v105[1], v106, *(&v106 + 1), v107[0], v107[1], v108, keys, 0);
    }

LABEL_66:
    v72 = 0;
    goto LABEL_44;
  }

  v68 = v67;
  IONotificationPortSetDispatchQueue(v67, *(v15 + 144));
  CFRetain(v65);
  if (IOServiceAddMatchingNotification(v68, "IOServiceFirstMatch", v65, __IOHIDEventSystemServicePublished, v15, (v15 + 168)))
  {
    IONotificationPortDestroy(v68);
    goto LABEL_64;
  }

  __IOHIDEventSystemServicePublished(v15, *(v15 + 168));
  *(v15 + 96) = v68;
  v69 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v15 + 144));
  *(v15 + 440) = v69;
  if (v69)
  {
    dispatch_source_set_event_handler(v69, &__block_literal_global_10);
    v70 = *(v15 + 440);
    v71 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v70, v71, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(v15 + 440));
  }

  CFRetain(v15);
  v72 = v15;
LABEL_44:
  v84 = _IOHIDLog();
  if (os_signpost_enabled(v84))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v84, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemCreate", &unk_19724ED59, buf, 2u);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  OUTLINED_FUNCTION_0_10();
  _IOHIDDebugTrace(v85, v86, v87, v88, v89, v90);
  qword_1ED446AC8 = IOHIDAnalyticsEventCreate(@"com.apple.hid.analytics.event-system", 0);
  if (qword_1ED446AC8)
  {
    IOHIDAnalyticsEventAddField();
    IOHIDAnalyticsEventAddField();
    IOHIDAnalyticsEventActivate();
  }

  v91 = _IOHIDLog();
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    v92 = mach_absolute_time();
    v93 = OUTLINED_FUNCTION_6_0(v92);
    *buf = 134217984;
    v111 = v93;
    _os_log_impl(&dword_197195000, v91, OS_LOG_TYPE_DEFAULT, "IOHIDEventSystemCreate:%lldus", buf, 0xCu);
  }

  v94 = mach_absolute_time();
  OUTLINED_FUNCTION_6_0(v94);
  if (qword_1ED446AC8)
  {
    IOHIDAnalyticsEventSetIntegerValueForField();
  }

  if (!v72)
  {
    v95 = _IOHIDLog();
    if (os_log_type_enabled(v95, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_197195000, v95, OS_LOG_TYPE_FAULT, "IOHIDEventSystemCreate error", buf, 2u);
    }
  }

  v96 = *MEMORY[0x1E69E9840];
  return v72;
}

uint64_t IOHIDEventSystemOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v44 = *MEMORY[0x1E69E9840];
  mach_absolute_time();
  OUTLINED_FUNCTION_0_10();
  _IOHIDDebugTrace(v10, v11, v12, v13, v14, v15);
  v16 = _IOHIDLog();
  if (os_signpost_enabled(v16))
  {
    LOWORD(v42) = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemOpen", &unk_19724ED59, &v42, 2u);
  }

  v17 = *(a1 + 128);
  v18 = *(a1 + 152);
  *(a1 + 448) = a5 & 1;
  v19 = IOHIDSessionOpen(v17, a1, __IOHIDEventSystemEventCallback, 0);
  if (v19)
  {
    v20 = *(a1 + 136);
    if (v20 || (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), OUTLINED_FUNCTION_0_10(), v20 = hid_dispatch_queue_create(v21, v22, v23, v24, v25, v26), (*(a1 + 136) = v20) != 0))
    {
      IOHIDEventServerScheduleWithDispatchQueue(v18, v20);
    }

    else
    {
      v41 = _IOHIDLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v42) = 0;
        _os_log_error_impl(&dword_197195000, v41, OS_LOG_TYPE_ERROR, "Failed to create server dipatch queue", &v42, 2u);
      }
    }

    os_unfair_recursive_lock_lock_with_options();
    *(a1 + 104) = a3;
    *(a1 + 112) = a2;
    *(a1 + 120) = a4;
    os_unfair_recursive_lock_unlock();
  }

  v27 = _IOHIDLog();
  if (os_signpost_enabled(v27))
  {
    LOWORD(v42) = 0;
    _os_signpost_emit_with_name_impl(&dword_197195000, v27, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemOpen", &unk_19724ED59, &v42, 2u);
  }

  OUTLINED_FUNCTION_0_10();
  _IOHIDDebugTrace(v28, v29, v30, v31, v32, v33);
  v34 = _IOHIDLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = mach_absolute_time();
    v36 = OUTLINED_FUNCTION_6_0(v35);
    v42 = 134217984;
    v43 = v36;
    _os_log_impl(&dword_197195000, v34, OS_LOG_TYPE_DEFAULT, "IOHIDEventSystemOpen:%lldus", &v42, 0xCu);
  }

  v37 = mach_absolute_time();
  OUTLINED_FUNCTION_6_0(v37);
  if (qword_1ED446AC8)
  {
    IOHIDAnalyticsEventSetIntegerValueForField();
  }

  if (!v19)
  {
    v38 = _IOHIDLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v42) = 0;
      _os_log_fault_impl(&dword_197195000, v38, OS_LOG_TYPE_FAULT, "IOHIDEventSystemOpen error", &v42, 2u);
    }
  }

  v39 = *MEMORY[0x1E69E9840];
  return v19;
}

void _IOHIDEventSystemRegisterEventFilter(uint64_t a1, CFSetRef *a2)
{
  _IOHIDEventSystemUnregisterEventFilter(a1, a2);
  os_unfair_recursive_lock_lock_with_options();
  CFArrayAppendValue(*(a1 + 80), a2);
  v4 = *(a1 + 80);
  v8.length = CFArrayGetCount(v4);
  v8.location = 0;
  CFArraySortValues(v4, v8, _IOHIDEventSystemConnectionEventFilterCompare, 0);
  os_unfair_recursive_lock_unlock();
  v5 = _IOHIDEventSystemConnectionCopyServices(a2);
  if (v5)
  {
    v6 = v5;
    CFSetApplyFunction(v5, __IOHIDEventSystemFilterEventServiceRegister, a2);

    CFRelease(v6);
  }
}

__CFDictionary *_IOHIDEventSystemCopyRecord(CFTypeRef *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    valuePtr = 0;
    v4 = CFGetAllocator(a1);
    v5 = CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(Mutable, @"Type", v5);
      CFRelease(v6);
      v7 = CFGetAllocator(a1);
      v8 = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(Mutable, @"Services", v8);
        os_unfair_recursive_lock_lock_with_options();
        v10 = CFGetAllocator(a1[2]);
        Copy = CFDictionaryCreateCopy(v10, a1[2]);
        os_unfair_recursive_lock_unlock();
        if (Copy)
        {
          CFDictionaryApplyFunction(Copy, __CopyRecordForCientFunction, v9);
          CFRelease(Copy);
        }

        CFRelease(v9);
      }
    }
  }

  return Mutable;
}

const __CFNumber *_IOHIDEventSystemClientServiceConformsTo(uint64_t a1, IOHIDServiceClientRef service)
{
  result = IOHIDServiceClientGetRegistryID(service);
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return IOHIDEventSystemClientRegistryIDConformsTo(a1, valuePtr);
  }

  return result;
}

uint64_t IOHIDEventSystemClientRegistryIDConformsTo(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    v6 = _IOHIDCreateBinaryData(v3, v4);
    if (!v6)
    {
      v2 = 0;
      goto LABEL_13;
    }

    v7 = v6;
    os_unfair_recursive_lock_lock_with_options();
    v8 = *(v2 + 32);
    CFDataGetBytePtr(v7);
    Length = CFDataGetLength(v7);
    v17 = OUTLINED_FUNCTION_10_0(Length, v10, v11, v12, v13, v14, v15, v16, v29, 0);
    v18 = v17;
    if (v17 == 268435459)
    {
      if (*(v2 + 384) || *(v2 + 400))
      {
        os_unfair_recursive_lock_unlock();
        goto LABEL_8;
      }

      __IOHIDEventSystemClientTerminationCallback(v17, v2, 0);
      v19 = *(v2 + 32);
      CFDataGetBytePtr(v7);
      v20 = CFDataGetLength(v7);
      v18 = OUTLINED_FUNCTION_10_0(v20, v21, v22, v23, v24, v25, v26, v27, v30, SHIDWORD(v30));
    }

    os_unfair_recursive_lock_unlock();
    if (!v18)
    {
      v2 = HIDWORD(v30) != 0;
      goto LABEL_12;
    }

LABEL_8:
    v2 = 0;
LABEL_12:
    CFRelease(v7);
LABEL_13:
    CFRelease(v5);
  }

  return v2;
}

CFPropertyListRef _IOHIDEventSystemClientCopyPropertiesForService(uint64_t a1, IOHIDServiceClientRef service, const void *a3)
{
  v3 = 0;
  if (!a1 || !service || !a3)
  {
    return v3;
  }

  v6 = *MEMORY[0x1E695E480];
  RegistryID = IOHIDServiceClientGetRegistryID(service);
  v8 = _IOHIDCreateBinaryData(v6, RegistryID);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  CFDataGetBytePtr(v8);
  Length = CFDataGetLength(v9);
  v11 = _IOHIDCreateBinaryData(v6, a3);
  if (!v11)
  {
    CFRelease(v9);
    return 0;
  }

  v12 = v11;
  BytePtr = CFDataGetBytePtr(v11);
  v14 = CFDataGetLength(v12);
  os_unfair_recursive_lock_lock_with_options();
  v15 = OUTLINED_FUNCTION_13_0();
  v20 = io_hideventsystem_copy_properties_for_service(v15, v16, Length, BytePtr, v14, v17, v18, v19);
  v21 = v20;
  if (v20 == 268435459)
  {
    if (*(a1 + 384))
    {
      v21 = 268435459;
    }

    else
    {
      v21 = 268435459;
      if (!*(a1 + 400))
      {
        __IOHIDEventSystemClientTerminationCallback(v20, a1, 0);
        v22 = OUTLINED_FUNCTION_13_0();
        v21 = io_hideventsystem_copy_properties_for_service(v22, v23, Length, BytePtr, v14, v24, v25, v26);
      }
    }
  }

  os_unfair_recursive_lock_unlock();
  if (v21)
  {
    v3 = 0;
  }

  else
  {
    v3 = _IOHIDUnserializeAndVMDealloc(0, 0);
  }

  CFRelease(v9);
  CFRelease(v12);
  return v3;
}

CFIndex IOHIDEventSystemClientUnregisterResetCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  result = __IOHIDEventSystemClientFindCallback(a1, a2, a3, a4);
  if (result != -1)
  {
    CFArrayRemoveValueAtIndex(*(a1 + 136), result);

    return os_unfair_recursive_lock_unlock();
  }

  return result;
}

uint64_t _iohideventsystem_client_dispatch_event_filter(unsigned int a1, UInt8 *a2, unsigned int a3, UInt8 *a4, unsigned int a5, vm_offset_t *a6, _DWORD *a7, _DWORD *a8)
{
  v26 = a7;
  v27 = a6;
  *a6 = 0;
  *a7 = 0;
  v13 = IOMIGMachPortCacheCopy(a1);
  if (v13)
  {
    v14 = v13;
    v15 = CFGetTypeID(v13);
    v16 = __kIOHIDEventSystemClientTypeID;
    if (!__kIOHIDEventSystemClientTypeID)
    {
      OUTLINED_FUNCTION_0_11(&__systemTypeInit_0);
      v16 = __kIOHIDEventSystemClientTypeID;
    }

    if (v15 != v16)
    {
      goto LABEL_20;
    }

    v17 = _IOHIDUnserializeAndVMDealloc(a2, a3);
    if (v17)
    {
      os_unfair_recursive_lock_lock_with_options();
      Value = CFDictionaryGetValue(*(v14 + 96), v17);
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      Value = 0;
    }

    TypeID = CFDataGetTypeID();
    v20 = _IOHIDUnserializeAndVMDeallocWithTypeID(a4, a5, TypeID);
    if (!v20)
    {
LABEL_18:
      if (v17)
      {
        CFRelease(v17);
      }

LABEL_20:
      CFRelease(v14);
      return 0;
    }

    v21 = v20;
    v22 = IOHIDEventCreateWithDataInternal(*MEMORY[0x1E695E480], v20);
    v23 = v22;
    if (a8 && v22)
    {
      if (IOHIDEventNeedsUngroupForLegacy(v22) && (*(v14 + 449) & 1) == 0)
      {
        v24 = _IOHIDEventSystemClientUngroupAndDispatchEventFilter(v14, Value, v23, &v27, &v26);
      }

      else
      {
        v24 = _IOHIDEventSystemClientDispatchEventFilter(v14, Value, v23);
      }

      *a8 = v24;
    }

    else if (!v22)
    {
      goto LABEL_17;
    }

    CFRelease(v23);
LABEL_17:
    CFRelease(v21);
    goto LABEL_18;
  }

  return 0;
}

uint64_t _iohideventsystem_client_dispatch_client_records_changed(unsigned int a1)
{
  v3 = IOMIGMachPortCacheCopy(a1);
  if (v3)
  {
    v4 = v3;
    CFGetTypeID(v3);
    OUTLINED_FUNCTION_9_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_11(&__systemTypeInit_0);
      v5 = *(v2 + 3072);
    }

    if (v1 == v5)
    {
      os_unfair_recursive_lock_lock_with_options();
      v6 = v4[40];
      if (v6)
      {
        v6(v4[42], v4, v4[43]);
      }

      else
      {
        v7 = v4[41];
        if (v7)
        {
          (*(v7 + 16))(v7, v4[42], v4, v4[43]);
        }
      }

      os_unfair_recursive_lock_unlock();
    }

    CFRelease(v4);
  }

  return 0;
}

uint64_t _iohideventsystem_client_dispatch_service_records_changed(unsigned int a1)
{
  v3 = IOMIGMachPortCacheCopy(a1);
  if (v3)
  {
    v4 = v3;
    CFGetTypeID(v3);
    OUTLINED_FUNCTION_9_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_11(&__systemTypeInit_0);
      v5 = *(v2 + 3072);
    }

    if (v1 == v5)
    {
      os_unfair_recursive_lock_lock_with_options();
      v6 = v4[44];
      if (v6)
      {
        v6(v4[46], v4, v4[47]);
      }

      else
      {
        v7 = v4[45];
        if (v7)
        {
          (*(v7 + 16))(v7, v4[46], v4, v4[47]);
        }
      }

      os_unfair_recursive_lock_unlock();
    }

    CFRelease(v4);
  }

  return 0;
}

uint64_t IOHIDVirtualServiceClientRemove(__IOHIDServiceClient *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  EventSystemClient = _IOHIDVirtuaServiceClientGetEventSystemClient(a1);
  RegistryID = IOHIDServiceClientGetRegistryID(a1);
  CFNumberGetValue(RegistryID, kCFNumberSInt64Type, &valuePtr);
  os_unfair_recursive_lock_lock_with_options();
  if (CFDictionaryContainsKey(*(EventSystemClient + 104), valuePtr))
  {
    v4 = io_hideventsystem_remove_virtual_service(*(EventSystemClient + 32), valuePtr);
    if (v4)
    {
      v5 = v4;
      v6 = _IOHIDLogCategory(0xDu);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v11 = v5;
        _os_log_error_impl(&dword_197195000, v6, OS_LOG_TYPE_ERROR, "io_hideventsystem_remove_virtual_service:%x", buf, 8u);
      }
    }
  }

  _IOHIDVirtualServiceClientNotification(a1, 3, 0);
  CFDictionaryRemoveValue(*(EventSystemClient + 104), valuePtr);
  result = os_unfair_recursive_lock_unlock();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _iohideventsystem_client_refresh(unsigned int a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = IOMIGMachPortCacheCopy(a1);
  v24 = 0;
  v23 = 0;
  if (v3)
  {
    v4 = v3;
    CFGetTypeID(v3);
    OUTLINED_FUNCTION_9_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_11(&__systemTypeInit_0);
      v5 = *(v2 + 3072);
    }

    if (v1 == v5)
    {
      os_unfair_recursive_lock_lock_with_options();
      Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], *(v4 + 96));
      if (Copy)
      {
        v7 = Copy;
        v8 = io_hideventsystem_do_client_refresh(*(v4 + 32), &v24, &v23);
        v9 = _IOHIDLogCategory(0xDu);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v8;
          _os_log_impl(&dword_197195000, v9, OS_LOG_TYPE_INFO, "io_hideventsystem_do_client_refresh:0x%x", buf, 8u);
        }

        if (v8)
        {
          os_unfair_recursive_lock_unlock();
          v10 = v7;
LABEL_21:
          CFRelease(v10);
          goto LABEL_22;
        }

        v11 = v24;
        v12 = v23;
        TypeID = CFArrayGetTypeID();
        v14 = _IOHIDUnserializeAndVMDeallocWithTypeID(v11, v12, TypeID);
        CFDictionaryRemoveAllValues(*(v4 + 96));
        v15 = _IOHIDLogCategory(0xDu);
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            Count = CFArrayGetCount(v14);
            v18 = CFDictionaryGetCount(v7);
            *buf = 134218240;
            *&buf[4] = Count;
            *&buf[12] = 2048;
            *&buf[14] = v18;
            _os_log_impl(&dword_197195000, v15, OS_LOG_TYPE_DEFAULT, "HID Event System Client refreshed with %ld services, cached matching had %ld services", buf, 0x16u);
          }

          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ____IOHIDEventSystemClientCacheServices_block_invoke;
          v26 = &__block_descriptor_tmp_132;
          v27 = v4;
          _IOHIDCFArrayApplyBlock(v14, buf);
        }

        else if (v16)
        {
          *buf = 0;
          _os_log_impl(&dword_197195000, v15, OS_LOG_TYPE_DEFAULT, "HID Event System Client refreshed but no services returned", buf, 2u);
        }

        CFDictionaryApplyFunction(v7, __IOHIDEventSystemClientServiceReplaceCallback, *(v4 + 96));
        v19 = CFGetAllocator(v4);
        v20 = CFDictionaryCreateCopy(v19, *(v4 + 96));
        os_unfair_recursive_lock_unlock();
        __IOHIDEventSystemClientHandleServiceCacheRefresh(v4, v7, v20);
        CFRelease(v7);
        if (v14)
        {
          CFRelease(v14);
        }

        if (v20)
        {
          v10 = v20;
          goto LABEL_21;
        }
      }

      else
      {
        os_unfair_recursive_lock_unlock();
      }
    }
  }

LABEL_22:
  v21 = *MEMORY[0x1E69E9840];
  return 0;
}

void __IOHIDEventSystemClientInitReplyPort_cold_1()
{
  v0 = _IOHIDLogCategory(0xDu);
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void __IOHIDEventSystemClientInitReplyPort_cold_2()
{
  v0 = _IOHIDLogCategory(0xDu);
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void __IOHIDEventSystemClientInitReplyPort_cold_3()
{
  v0 = _IOHIDLogCategory(0xDu);
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void __IOHIDEventSystemClientTerminationCallback_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void IOHIDEventSystemClient_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __IOHIDEventSystemClientRefresh_cold_1(int *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  xpc_strerror();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

void __IOHIDEventSystemClientRefresh_cold_2(kern_return_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  bootstrap_strerror(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __IOHIDEventSystemClientRefresh_cold_3(kern_return_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_6_1(v3))
  {
    bootstrap_strerror(a1);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __IOHIDEventSystemClientRefresh_cold_4(mach_error_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_6_1(v3))
  {
    mach_error_string(a1);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __IOHIDEventSystemClientRefresh_cold_6(mach_error_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_6_1(v3))
  {
    mach_error_string(a1);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __IOHIDEventSystemClientRefresh_cold_7()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = _IOHIDLogCategory(0xDu);
  if (OUTLINED_FUNCTION_6_1(v0))
  {
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __IOHIDEventSystemClientStartQueue_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void _IOHIDEventSystemClientCopyMatchingEventForService_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _IOHIDEventSystemClientCopyMatchingEventForService_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _IOHIDEventSystemClientCopyMatchingEventForService_cold_3()
{
  v1 = OUTLINED_FUNCTION_16_0();
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_2_7();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void _IOHIDEventSystemClientCopyMatchingEventForService_cold_4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void _IOHIDEventSystemClientCopyMatchingEventForService_cold_5()
{
  v1 = OUTLINED_FUNCTION_16_0();
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_2_7();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void _IOHIDEventSystemClientCopyMatchingEventForService_cold_6()
{
  v1 = OUTLINED_FUNCTION_16_0();
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_2_7();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void IOHIDVirtualServiceClientCreateWithCallbacks_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOHIDVirtualServiceClientCreateWithCallbacks_cold_2()
{
  v1 = OUTLINED_FUNCTION_16_0();
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_2_7();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void IOHIDVirtualServiceClientDispatchEvent_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOHIDVirtualServiceClientDispatchEvent_cold_2()
{
  v1 = OUTLINED_FUNCTION_16_0();
  if (OUTLINED_FUNCTION_12(v1))
  {
    OUTLINED_FUNCTION_2_7();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *v0 = 0;
}

void _iohideventsystem_client_dispatch_virtual_service_copy_property_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t _iohideventsystem_client_dispatch_virtual_service_copy_property_cold_2(uint64_t a1, const void *a2, char a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v7 = OUTLINED_FUNCTION_11_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    v11 = a1;
    _os_log_error_impl(&dword_197195000, v7, OS_LOG_TYPE_ERROR, "HIDVS (id:%llx) client does not exist", &v10, 0xCu);
  }

  CFRelease(a2);
  v8 = *MEMORY[0x1E69E9840];
  return a3 & 1;
}

void _iohideventsystem_client_dispatch_virtual_service_copy_property_cold_3()
{
  v0 = *MEMORY[0x1E69E9840];
  v1 = OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_6_1(v1))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void _iohideventsystem_client_dispatch_virtual_service_set_property_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void _iohideventsystem_client_dispatch_virtual_service_set_property_cold_2(_DWORD *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *a1 = -536870212;
  v1 = _IOHIDLogCategory(0xDu);
  if (OUTLINED_FUNCTION_6_1(v1))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void _iohideventsystem_client_dispatch_virtual_service_set_property_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void _iohideventsystem_client_dispatch_virtual_service_set_property_cold_4(_DWORD *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_15_0(a1);
  if (OUTLINED_FUNCTION_6_1(v2))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t _iohideventsystem_client_dispatch_virtual_service_notification_cold_2(uint64_t a1, char a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v4 = OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_12(v4))
  {
    OUTLINED_FUNCTION_2_7();
    _os_log_error_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
  return a2 & 1;
}

void _iohideventsystem_output_event_to_virtual_service_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void _iohideventsystem_output_event_to_virtual_service_cold_2(_DWORD *a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_15_0(a1);
  if (OUTLINED_FUNCTION_6_1(v2))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void _iohideventsystem_copy_event_from_virtual_service_cold_2()
{
  v0 = *MEMORY[0x1E69E9840];
  v1 = OUTLINED_FUNCTION_11_0();
  if (OUTLINED_FUNCTION_6_1(v1))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_1_8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void IOHIDNotificationInvalidate_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_3();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}