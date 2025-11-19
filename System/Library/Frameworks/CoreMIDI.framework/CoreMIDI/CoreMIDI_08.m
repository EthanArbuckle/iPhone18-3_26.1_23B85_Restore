void sub_23725778C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIObjectSetDictionaryProperty(MIGClient *this, int a2, CFStringRef theString, const __CFDictionary *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  LODWORD(v21[0]) = 0;
  v21[1] = 0;
  v6 = IPCBufferWriter::write(v21, theString, 0, 0);
  if (!v6)
  {
    LODWORD(v18) = 0;
    v19 = 0;
    v7 = IPCBufferWriter::write(&v18, a4, 0, 0);
    v6 = v7;
    if (v7)
    {
LABEL_26:
      IPCBufferWriter::~IPCBufferWriter(&v18);
      goto LABEL_27;
    }

    v8 = MIDIProcess::defaultInstance(v7);
    v9 = *((**v8)(v8) + 468);
    v10 = v22;
    v11 = v20;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
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
    *&v27[8] = 0u;
    memset(&msg, 0, sizeof(msg));
    v24 = 1;
    v25 = v19;
    v26 = 16777472;
    *v27 = v20;
    *&v27[4] = *MEMORY[0x277D85EF8];
    *&v27[12] = a2;
    if (v22 > 0x200)
    {
      v6 = 4294966989;
      goto LABEL_26;
    }

    __memcpy_chk();
    *&v27[16] = v10;
    v12 = (v10 + 3) & 0x7FC;
    *(&msg + v12 + 60) = v11;
    reply_port = mig_get_reply_port();
    msg.msgh_remote_port = v9;
    msg.msgh_local_port = reply_port;
    msg.msgh_bits = -2147478253;
    *&msg.msgh_voucher_port = 0x1F5400000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&msg);
      msgh_local_port = msg.msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v15 = mach_msg(&msg, 275, v12 + 64, 0x2Cu, msgh_local_port, 0x493E0u, 0);
    v6 = v15;
    if ((v15 - 268435458) <= 0xE && ((1 << (v15 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg.msgh_local_port);
    }

    else
    {
      if (!v15)
      {
        if (msg.msgh_id == 71)
        {
          v16 = 4294966988;
        }

        else if (msg.msgh_id == 8120)
        {
          v16 = 4294966996;
          if ((msg.msgh_bits & 0x80000000) == 0 && msg.msgh_size == 36 && !msg.msgh_remote_port)
          {
            v16 = HIDWORD(v25);
            if (!HIDWORD(v25))
            {
              v6 = 0;
              goto LABEL_26;
            }
          }
        }

        else
        {
          v16 = 4294966995;
        }

LABEL_25:
        mach_msg_destroy(&msg);
        v6 = v16;
        goto LABEL_26;
      }

      mig_dealloc_reply_port(msg.msgh_local_port);
    }

    v16 = 268435460;
    if (v6 != 268435460)
    {
      goto LABEL_26;
    }

    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], msg.msgh_local_port);
    }

    goto LABEL_25;
  }

LABEL_27:
  IPCBufferWriter::~IPCBufferWriter(v21);
  return v6;
}

void sub_237257A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  IPCBufferWriter::~IPCBufferWriter(&a9);
  IPCBufferWriter::~IPCBufferWriter(&a12);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIObjectGetDictionaryProperty(MIGClient *this, mach_port_t a2, CFStringRef theString, const UInt8 **a4)
{
  v50 = *MEMORY[0x277D85DE8];
  LODWORD(v18[0]) = 0;
  v18[1] = 0;
  v6 = IPCBufferWriter::write(v18, theString, 0, 0);
  v7 = v6;
  if (!v6)
  {
    v8 = MIDIProcess::defaultInstance(v6);
    v9 = *((**v8)(v8) + 468);
    v10 = v19;
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
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    memset(msg, 0, sizeof(msg));
    *&msg[1].msgh_bits = *MEMORY[0x277D85EF8];
    msg[1].msgh_remote_port = a2;
    if (v19 > 0x200)
    {
      msgh_remote_port = 4294966989;
LABEL_34:
      v7 = msgh_remote_port;
      goto LABEL_35;
    }

    __memcpy_chk();
    msg[1].msgh_local_port = v10;
    reply_port = mig_get_reply_port();
    *&msg[0].msgh_remote_port = __PAIR64__(reply_port, v9);
    msg[0].msgh_bits = 5395;
    *&msg[0].msgh_voucher_port = 0x1F5300000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(msg);
      msgh_local_port = msg[0].msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v14 = mach_msg(msg, 275, ((v10 + 3) & 0x7FC) + 40, 0x40u, msgh_local_port, 0x493E0u, 0);
    v7 = v14;
    if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg[0].msgh_local_port);
    }

    else
    {
      if (!v14)
      {
        if (msg[0].msgh_id == 71)
        {
          msgh_remote_port = 4294966988;
        }

        else if (msg[0].msgh_id == 8119)
        {
          if ((msg[0].msgh_bits & 0x80000000) == 0)
          {
            if (msg[0].msgh_size == 36)
            {
              msgh_remote_port = 4294966996;
              if (msg[1].msgh_remote_port)
              {
                if (msg[0].msgh_remote_port)
                {
                  msgh_remote_port = 4294966996;
                }

                else
                {
                  msgh_remote_port = msg[1].msgh_remote_port;
                }
              }
            }

            else
            {
              msgh_remote_port = 4294966996;
            }

            goto LABEL_33;
          }

          msgh_remote_port = 4294966996;
          if (msg[1].msgh_bits == 1 && *&msg[0].msgh_size == 56 && HIBYTE(msg[1].msgh_local_port) == 1)
          {
            msgh_voucher_port = msg[1].msgh_voucher_port;
            if (msg[1].msgh_voucher_port == DWORD1(v21))
            {
              v16 = *&msg[1].msgh_size;
LABEL_24:
              *&msg[0].msgh_bits = v16;
              *&msg[0].msgh_remote_port = msgh_voucher_port | 0x100000000;
              *&msg[0].msgh_voucher_port = 0;
              *a4 = IPCBufferReader::ReadCFPropertyList(msg, 1);
              IPCBufferReader::~IPCBufferReader(msg);
              v7 = 0;
              goto LABEL_35;
            }
          }
        }

        else
        {
          msgh_remote_port = 4294966995;
        }

LABEL_33:
        mach_msg_destroy(msg);
        goto LABEL_34;
      }

      mig_dealloc_reply_port(msg[0].msgh_local_port);
    }

    msgh_remote_port = 268435460;
    if (v7 == 268435460)
    {
      if ((msg[0].msgh_bits & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x277D85F48], msg[0].msgh_local_port);
      }

      goto LABEL_33;
    }

    if (!v7)
    {
      goto LABEL_24;
    }
  }

LABEL_35:
  IPCBufferWriter::~IPCBufferWriter(v18);
  return v7;
}

void sub_237257DC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  IPCBufferReader::~IPCBufferReader(va1);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIObjectSetDataProperty(MIGClient *this, int a2, CFStringRef theString, const __CFData *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  LODWORD(v21[0]) = 0;
  v21[1] = 0;
  v6 = IPCBufferWriter::write(v21, theString, 0, 0);
  if (!v6)
  {
    LODWORD(v18) = 0;
    v19 = 0;
    v7 = IPCBufferWriter::write(&v18, a4, 0, 0);
    v6 = v7;
    if (v7)
    {
LABEL_26:
      IPCBufferWriter::~IPCBufferWriter(&v18);
      goto LABEL_27;
    }

    v8 = MIDIProcess::defaultInstance(v7);
    v9 = *((**v8)(v8) + 468);
    v10 = v22;
    v11 = v20;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
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
    *&v27[8] = 0u;
    memset(&msg, 0, sizeof(msg));
    v24 = 1;
    v25 = v19;
    v26 = 16777472;
    *v27 = v20;
    *&v27[4] = *MEMORY[0x277D85EF8];
    *&v27[12] = a2;
    if (v22 > 0x200)
    {
      v6 = 4294966989;
      goto LABEL_26;
    }

    __memcpy_chk();
    *&v27[16] = v10;
    v12 = (v10 + 3) & 0x7FC;
    *(&msg + v12 + 60) = v11;
    reply_port = mig_get_reply_port();
    msg.msgh_remote_port = v9;
    msg.msgh_local_port = reply_port;
    msg.msgh_bits = -2147478253;
    *&msg.msgh_voucher_port = 0x1F5200000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&msg);
      msgh_local_port = msg.msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v15 = mach_msg(&msg, 275, v12 + 64, 0x2Cu, msgh_local_port, 0x493E0u, 0);
    v6 = v15;
    if ((v15 - 268435458) <= 0xE && ((1 << (v15 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg.msgh_local_port);
    }

    else
    {
      if (!v15)
      {
        if (msg.msgh_id == 71)
        {
          v16 = 4294966988;
        }

        else if (msg.msgh_id == 8118)
        {
          v16 = 4294966996;
          if ((msg.msgh_bits & 0x80000000) == 0 && msg.msgh_size == 36 && !msg.msgh_remote_port)
          {
            v16 = HIDWORD(v25);
            if (!HIDWORD(v25))
            {
              v6 = 0;
              goto LABEL_26;
            }
          }
        }

        else
        {
          v16 = 4294966995;
        }

LABEL_25:
        mach_msg_destroy(&msg);
        v6 = v16;
        goto LABEL_26;
      }

      mig_dealloc_reply_port(msg.msgh_local_port);
    }

    v16 = 268435460;
    if (v6 != 268435460)
    {
      goto LABEL_26;
    }

    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], msg.msgh_local_port);
    }

    goto LABEL_25;
  }

LABEL_27:
  IPCBufferWriter::~IPCBufferWriter(v21);
  return v6;
}

void sub_2372580CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  IPCBufferWriter::~IPCBufferWriter(&a9);
  IPCBufferWriter::~IPCBufferWriter(&a12);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIObjectGetDataProperty(MIGClient *this, mach_port_t a2, CFStringRef theString, const __CFData **a4)
{
  v48 = *MEMORY[0x277D85DE8];
  LODWORD(v16[0]) = 0;
  v16[1] = 0;
  v6 = IPCBufferWriter::write(v16, theString, 0, 0);
  v7 = v6;
  if (!v6)
  {
    v8 = MIDIProcess::defaultInstance(v6);
    v9 = *((**v8)(v8) + 468);
    v10 = v17;
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
    v23 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    memset(msg, 0, sizeof(msg));
    *&msg[1].msgh_bits = *MEMORY[0x277D85EF8];
    msg[1].msgh_remote_port = a2;
    if (v17 > 0x200)
    {
      msgh_remote_port = 4294966989;
LABEL_32:
      v7 = msgh_remote_port;
      goto LABEL_33;
    }

    __memcpy_chk();
    msg[1].msgh_local_port = v10;
    reply_port = mig_get_reply_port();
    *&msg[0].msgh_remote_port = __PAIR64__(reply_port, v9);
    msg[0].msgh_bits = 5395;
    *&msg[0].msgh_voucher_port = 0x1F5100000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(msg);
      msgh_local_port = msg[0].msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v14 = mach_msg(msg, 275, ((v10 + 3) & 0x7FC) + 40, 0x40u, msgh_local_port, 0x493E0u, 0);
    v7 = v14;
    if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg[0].msgh_local_port);
    }

    else
    {
      if (!v14)
      {
        if (msg[0].msgh_id == 71)
        {
          msgh_remote_port = 4294966988;
        }

        else if (msg[0].msgh_id == 8117)
        {
          if ((msg[0].msgh_bits & 0x80000000) == 0)
          {
            if (msg[0].msgh_size == 36)
            {
              msgh_remote_port = 4294966996;
              if (msg[1].msgh_remote_port)
              {
                if (msg[0].msgh_remote_port)
                {
                  msgh_remote_port = 4294966996;
                }

                else
                {
                  msgh_remote_port = msg[1].msgh_remote_port;
                }
              }
            }

            else
            {
              msgh_remote_port = 4294966996;
            }

            goto LABEL_31;
          }

          msgh_remote_port = 4294966996;
          if (msg[1].msgh_bits == 1 && *&msg[0].msgh_size == 56 && HIBYTE(msg[1].msgh_local_port) == 1 && msg[1].msgh_voucher_port == DWORD1(v19))
          {
            *&msg[0].msgh_bits = *&msg[1].msgh_size;
            *&msg[0].msgh_remote_port = msg[1].msgh_voucher_port | 0x100000000;
            *&msg[0].msgh_voucher_port = 0;
            *a4 = CFDataCreate(0, *&msg[1].msgh_size, msg[1].msgh_voucher_port);
            IPCBufferReader::~IPCBufferReader(msg);
            v7 = 0;
            goto LABEL_33;
          }
        }

        else
        {
          msgh_remote_port = 4294966995;
        }

LABEL_31:
        mach_msg_destroy(msg);
        goto LABEL_32;
      }

      mig_dealloc_reply_port(msg[0].msgh_local_port);
    }

    msgh_remote_port = 268435460;
    if (v7 == 268435460)
    {
      if ((msg[0].msgh_bits & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x277D85F48], msg[0].msgh_local_port);
      }

      goto LABEL_31;
    }
  }

LABEL_33:
  IPCBufferWriter::~IPCBufferWriter(v16);
  return v7;
}

void sub_2372583FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  IPCBufferReader::~IPCBufferReader(va1);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIObjectSetStringProperty(MIGClient *this, int a2, CFStringRef theString, const __CFString *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  LODWORD(v21[0]) = 0;
  v21[1] = 0;
  v6 = IPCBufferWriter::write(v21, theString, 0, 0);
  if (!v6)
  {
    LODWORD(v18) = 0;
    v19 = 0;
    v7 = IPCBufferWriter::write(&v18, a4, 0, 0);
    v6 = v7;
    if (v7)
    {
LABEL_26:
      IPCBufferWriter::~IPCBufferWriter(&v18);
      goto LABEL_27;
    }

    v8 = MIDIProcess::defaultInstance(v7);
    v9 = *((**v8)(v8) + 468);
    v10 = v22;
    v11 = v20;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
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
    *&v27[8] = 0u;
    memset(&msg, 0, sizeof(msg));
    v24 = 1;
    v25 = v19;
    v26 = 16777472;
    *v27 = v20;
    *&v27[4] = *MEMORY[0x277D85EF8];
    *&v27[12] = a2;
    if (v22 > 0x200)
    {
      v6 = 4294966989;
      goto LABEL_26;
    }

    __memcpy_chk();
    *&v27[16] = v10;
    v12 = (v10 + 3) & 0x7FC;
    *(&msg + v12 + 60) = v11;
    reply_port = mig_get_reply_port();
    msg.msgh_remote_port = v9;
    msg.msgh_local_port = reply_port;
    msg.msgh_bits = -2147478253;
    *&msg.msgh_voucher_port = 0x1F5000000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&msg);
      msgh_local_port = msg.msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v15 = mach_msg(&msg, 275, v12 + 64, 0x2Cu, msgh_local_port, 0x493E0u, 0);
    v6 = v15;
    if ((v15 - 268435458) <= 0xE && ((1 << (v15 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg.msgh_local_port);
    }

    else
    {
      if (!v15)
      {
        if (msg.msgh_id == 71)
        {
          v16 = 4294966988;
        }

        else if (msg.msgh_id == 8116)
        {
          v16 = 4294966996;
          if ((msg.msgh_bits & 0x80000000) == 0 && msg.msgh_size == 36 && !msg.msgh_remote_port)
          {
            v16 = HIDWORD(v25);
            if (!HIDWORD(v25))
            {
              v6 = 0;
              goto LABEL_26;
            }
          }
        }

        else
        {
          v16 = 4294966995;
        }

LABEL_25:
        mach_msg_destroy(&msg);
        v6 = v16;
        goto LABEL_26;
      }

      mig_dealloc_reply_port(msg.msgh_local_port);
    }

    v16 = 268435460;
    if (v6 != 268435460)
    {
      goto LABEL_26;
    }

    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], msg.msgh_local_port);
    }

    goto LABEL_25;
  }

LABEL_27:
  IPCBufferWriter::~IPCBufferWriter(v21);
  return v6;
}

void sub_237258708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  IPCBufferWriter::~IPCBufferWriter(&a9);
  IPCBufferWriter::~IPCBufferWriter(&a12);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIObjectGetStringProperty(MIGClient *this, mach_port_t a2, CFStringRef theString, const __CFString **a4)
{
  v48 = *MEMORY[0x277D85DE8];
  LODWORD(v16[0]) = 0;
  v16[1] = 0;
  v6 = IPCBufferWriter::write(v16, theString, 0, 0);
  v7 = v6;
  if (!v6)
  {
    v8 = MIDIProcess::defaultInstance(v6);
    v9 = *((**v8)(v8) + 468);
    v10 = v17;
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
    v23 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    memset(msg, 0, sizeof(msg));
    *&msg[1].msgh_bits = *MEMORY[0x277D85EF8];
    msg[1].msgh_remote_port = a2;
    if (v17 > 0x200)
    {
      msgh_remote_port = 4294966989;
LABEL_32:
      v7 = msgh_remote_port;
      goto LABEL_33;
    }

    __memcpy_chk();
    msg[1].msgh_local_port = v10;
    reply_port = mig_get_reply_port();
    *&msg[0].msgh_remote_port = __PAIR64__(reply_port, v9);
    msg[0].msgh_bits = 5395;
    *&msg[0].msgh_voucher_port = 0x1F4F00000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(msg);
      msgh_local_port = msg[0].msgh_local_port;
    }

    else
    {
      msgh_local_port = reply_port;
    }

    v14 = mach_msg(msg, 275, ((v10 + 3) & 0x7FC) + 40, 0x40u, msgh_local_port, 0x493E0u, 0);
    v7 = v14;
    if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(msg[0].msgh_local_port);
    }

    else
    {
      if (!v14)
      {
        if (msg[0].msgh_id == 71)
        {
          msgh_remote_port = 4294966988;
        }

        else if (msg[0].msgh_id == 8115)
        {
          if ((msg[0].msgh_bits & 0x80000000) == 0)
          {
            if (msg[0].msgh_size == 36)
            {
              msgh_remote_port = 4294966996;
              if (msg[1].msgh_remote_port)
              {
                if (msg[0].msgh_remote_port)
                {
                  msgh_remote_port = 4294966996;
                }

                else
                {
                  msgh_remote_port = msg[1].msgh_remote_port;
                }
              }
            }

            else
            {
              msgh_remote_port = 4294966996;
            }

            goto LABEL_31;
          }

          msgh_remote_port = 4294966996;
          if (msg[1].msgh_bits == 1 && *&msg[0].msgh_size == 56 && HIBYTE(msg[1].msgh_local_port) == 1 && msg[1].msgh_voucher_port == DWORD1(v19))
          {
            *&msg[0].msgh_bits = *&msg[1].msgh_size;
            *&msg[0].msgh_remote_port = msg[1].msgh_voucher_port | 0x100000000;
            *&msg[0].msgh_voucher_port = 0;
            *a4 = CFStringCreateWithBytes(0, *&msg[1].msgh_size, msg[1].msgh_voucher_port, 0x100u, 1u);
            IPCBufferReader::~IPCBufferReader(msg);
            v7 = 0;
            goto LABEL_33;
          }
        }

        else
        {
          msgh_remote_port = 4294966995;
        }

LABEL_31:
        mach_msg_destroy(msg);
        goto LABEL_32;
      }

      mig_dealloc_reply_port(msg[0].msgh_local_port);
    }

    msgh_remote_port = 268435460;
    if (v7 == 268435460)
    {
      if ((msg[0].msgh_bits & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x277D85F48], msg[0].msgh_local_port);
      }

      goto LABEL_31;
    }
  }

LABEL_33:
  IPCBufferWriter::~IPCBufferWriter(v16);
  return v7;
}

void sub_237258A40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  IPCBufferReader::~IPCBufferReader(va1);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIObjectSetIntegerProperty(MIGClient *this, int a2, CFStringRef theString, int a4)
{
  v50 = *MEMORY[0x277D85DE8];
  LODWORD(v17[0]) = 0;
  v17[1] = 0;
  v6 = IPCBufferWriter::write(v17, theString, 0, 0);
  v7 = v6;
  if (!v6)
  {
    v8 = MIDIProcess::defaultInstance(v6);
    v9 = *((**v8)(v8) + 468);
    v10 = v18;
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
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    memset(msg, 0, sizeof(msg));
    *&msg[24] = *MEMORY[0x277D85EF8];
    LODWORD(v20) = a2;
    if (v18 > 0x200)
    {
      v7 = 4294966989;
      goto LABEL_24;
    }

    __memcpy_chk();
    DWORD1(v20) = v10;
    v11 = (v10 + 3) & 0x7FC;
    *&msg[v11 + 40] = a4;
    reply_port = mig_get_reply_port();
    *&msg[8] = __PAIR64__(reply_port, v9);
    *msg = 5395;
    *&msg[16] = 0x1F4E00000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(msg);
      v13 = *&msg[12];
    }

    else
    {
      v13 = reply_port;
    }

    v14 = mach_msg(msg, 275, v11 + 44, 0x2Cu, v13, 0x493E0u, 0);
    v7 = v14;
    if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(*&msg[12]);
    }

    else
    {
      if (!v14)
      {
        if (*&msg[20] == 71)
        {
          v15 = 4294966988;
        }

        else if (*&msg[20] == 8114)
        {
          v15 = 4294966996;
          if ((*msg & 0x80000000) == 0 && *&msg[4] == 36)
          {
            v15 = v20;
            if (!v20)
            {
              v7 = 0;
              goto LABEL_24;
            }
          }
        }

        else
        {
          v15 = 4294966995;
        }

LABEL_23:
        mach_msg_destroy(msg);
        v7 = v15;
        goto LABEL_24;
      }

      mig_dealloc_reply_port(*&msg[12]);
    }

    v15 = 268435460;
    if (v7 != 268435460)
    {
      goto LABEL_24;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_23;
  }

LABEL_24:
  IPCBufferWriter::~IPCBufferWriter(v17);
  return v7;
}

void sub_237258D08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIObjectGetIntegerProperty(MIGClient *this, int a2, CFStringRef theString, int *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  LODWORD(v17[0]) = 0;
  v17[1] = 0;
  v6 = IPCBufferWriter::write(v17, theString, 0, 0);
  v7 = v6;
  if (v6)
  {
    goto LABEL_32;
  }

  v8 = MIDIProcess::defaultInstance(v6);
  v9 = *((**v8)(v8) + 468);
  v10 = v18;
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
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  memset(msg, 0, sizeof(msg));
  *&msg[24] = *MEMORY[0x277D85EF8];
  LODWORD(v20) = a2;
  if (v18 > 0x200)
  {
    v7 = 4294966989;
    goto LABEL_32;
  }

  __memcpy_chk();
  DWORD1(v20) = v10;
  v11 = (v10 + 3) & 0x7FC;
  reply_port = mig_get_reply_port();
  *&msg[8] = __PAIR64__(reply_port, v9);
  *msg = 5395;
  *&msg[16] = 0x1F4D00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v13 = *&msg[12];
  }

  else
  {
    v13 = reply_port;
  }

  v14 = mach_msg(msg, 275, v11 + 40, 0x30u, v13, 0x493E0u, 0);
  v7 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_23;
  }

  if (!v14)
  {
    if (*&msg[20] == 71)
    {
      v7 = 4294966988;
    }

    else if (*&msg[20] == 8113)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 40)
        {
          if (!*&msg[8])
          {
            v7 = v20;
            if (!v20)
            {
              *a4 = DWORD1(v20);
              goto LABEL_32;
            }

            goto LABEL_31;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v15 = 1;
          }

          else
          {
            v15 = v20 == 0;
          }

          if (v15)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = v20;
          }

          goto LABEL_31;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_31:
    mach_msg_destroy(msg);
    goto LABEL_32;
  }

  mig_dealloc_reply_port(*&msg[12]);
LABEL_23:
  if (v7 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    mach_msg_destroy(msg);
    v7 = 268435460;
  }

LABEL_32:
  IPCBufferWriter::~IPCBufferWriter(v17);
  return v7;
}

void sub_237258FF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIEndpointDispose(MIGClient *this, int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);
  *&msg[20] = 0u;
  v12 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  reply_port = mig_get_reply_port();
  *&msg[8] = v4;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F4C00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(msg, 275, 0x24u, 0x2Cu, v6, 0x493E0u, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v7)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 8112)
      {
        v9 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v9 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v9 = 268435460;
  if (v8 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v8;
}

uint64_t MIGClient::MIDISourceCreateWithProtocol(MIGClient *this, int a2, CFStringRef theString, MIDIProtocolID a4, unsigned int *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  LODWORD(v19[0]) = 0;
  v19[1] = 0;
  v8 = IPCBufferWriter::write(v19, theString, 0, 0);
  v9 = v8;
  if (v8)
  {
    goto LABEL_32;
  }

  v10 = MIDIProcess::defaultInstance(v8);
  v11 = *((**v10)(v10) + 468);
  v12 = v20;
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
  v27 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  memset(msg, 0, sizeof(msg));
  *&msg[24] = *MEMORY[0x277D85EF8];
  LODWORD(v22) = a2;
  if (v20 > 0x200)
  {
    v9 = 4294966989;
    goto LABEL_32;
  }

  __memcpy_chk();
  DWORD1(v22) = v12;
  v13 = (v12 + 3) & 0x7FC;
  *&msg[v13 + 40] = a4;
  reply_port = mig_get_reply_port();
  *&msg[8] = __PAIR64__(reply_port, v11);
  *msg = 5395;
  *&msg[16] = 0x1F4B00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v15 = *&msg[12];
  }

  else
  {
    v15 = reply_port;
  }

  v16 = mach_msg(msg, 275, v13 + 44, 0x30u, v15, 0x493E0u, 0);
  v9 = v16;
  if ((v16 - 268435458) <= 0xE && ((1 << (v16 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_23;
  }

  if (!v16)
  {
    if (*&msg[20] == 71)
    {
      v9 = 4294966988;
    }

    else if (*&msg[20] == 8111)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 40)
        {
          if (!*&msg[8])
          {
            v9 = v22;
            if (!v22)
            {
              *a5 = DWORD1(v22);
              goto LABEL_32;
            }

            goto LABEL_31;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v17 = 1;
          }

          else
          {
            v17 = v22 == 0;
          }

          if (v17)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = v22;
          }

          goto LABEL_31;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_31:
    mach_msg_destroy(msg);
    goto LABEL_32;
  }

  mig_dealloc_reply_port(*&msg[12]);
LABEL_23:
  if (v9 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    mach_msg_destroy(msg);
    v9 = 268435460;
  }

LABEL_32:
  IPCBufferWriter::~IPCBufferWriter(v19);
  return v9;
}

void sub_23725949C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIPortDisconnectSource(MIGClient *this, int a2, int a3)
{
  v5 = MIDIProcess::defaultInstance(this);
  v6 = *((**v5)(v5) + 468);
  *&msg[20] = 0u;
  v14 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  LODWORD(v14) = a3;
  reply_port = mig_get_reply_port();
  *&msg[8] = v6;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F4800000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v8 = *&msg[12];
  }

  else
  {
    v8 = reply_port;
  }

  v9 = mach_msg(msg, 275, 0x28u, 0x2Cu, v8, 0x493E0u, 0);
  v10 = v9;
  if ((v9 - 268435458) <= 0xE && ((1 << (v9 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v9)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 8108)
      {
        v11 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v11 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v11 = 268435460;
  if (v10 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v10;
}

uint64_t MIGClient::MIDIPortConnectSource(MIGClient *this, unsigned int a2, int a3, void *a4)
{
  v7 = MIDIProcess::defaultInstance(this);
  v8 = *((**v7)(v7) + 468);
  v16 = *MEMORY[0x277D85EF8];
  v17 = a2;
  v18 = a3;
  v19 = a4;
  reply_port = mig_get_reply_port();
  *&v15.msgh_bits = 5395;
  v15.msgh_remote_port = v8;
  v15.msgh_local_port = reply_port;
  *&v15.msgh_voucher_port = 0x1F4700000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v15);
    msgh_local_port = v15.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v11 = mach_msg(&v15, 275, 0x30u, 0x2Cu, msgh_local_port, 0x493E0u, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(v15.msgh_local_port);
  }

  else
  {
    if (!v11)
    {
      if (v15.msgh_id == 71)
      {
        v13 = 4294966988;
      }

      else if (v15.msgh_id == 8107)
      {
        v13 = 4294966996;
        if ((v15.msgh_bits & 0x80000000) == 0 && *&v15.msgh_size == 36)
        {
          v13 = v17;
          if (!v17)
          {
            return 0;
          }
        }
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_20:
      mach_msg_destroy(&v15);
      return v13;
    }

    mig_dealloc_reply_port(v15.msgh_local_port);
  }

  v13 = 268435460;
  if (v12 == 268435460)
  {
    if ((v15.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], v15.msgh_local_port);
    }

    goto LABEL_20;
  }

  return v12;
}

uint64_t MIGClient::MIDIPortDispose(MIGClient *this, int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);
  *&msg[20] = 0u;
  v12 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  reply_port = mig_get_reply_port();
  *&msg[8] = v4;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F4600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(msg, 275, 0x24u, 0x2Cu, v6, 0x493E0u, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v7)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 8106)
      {
        v9 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v9 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v9 = 268435460;
  if (v8 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v8;
}

uint64_t MIGClient::MIDIOutputPortCreate(MIGClient *this, int a2, CFStringRef theString, unsigned int *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  LODWORD(v17[0]) = 0;
  v17[1] = 0;
  v6 = IPCBufferWriter::write(v17, theString, 0, 0);
  v7 = v6;
  if (v6)
  {
    goto LABEL_32;
  }

  v8 = MIDIProcess::defaultInstance(v6);
  v9 = *((**v8)(v8) + 468);
  v10 = v18;
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
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  memset(msg, 0, sizeof(msg));
  *&msg[24] = *MEMORY[0x277D85EF8];
  LODWORD(v20) = a2;
  if (v18 > 0x200)
  {
    v7 = 4294966989;
    goto LABEL_32;
  }

  __memcpy_chk();
  DWORD1(v20) = v10;
  v11 = (v10 + 3) & 0x7FC;
  reply_port = mig_get_reply_port();
  *&msg[8] = __PAIR64__(reply_port, v9);
  *msg = 5395;
  *&msg[16] = 0x1F4500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v13 = *&msg[12];
  }

  else
  {
    v13 = reply_port;
  }

  v14 = mach_msg(msg, 275, v11 + 40, 0x30u, v13, 0x493E0u, 0);
  v7 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_23;
  }

  if (!v14)
  {
    if (*&msg[20] == 71)
    {
      v7 = 4294966988;
    }

    else if (*&msg[20] == 8105)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 40)
        {
          if (!*&msg[8])
          {
            v7 = v20;
            if (!v20)
            {
              *a4 = DWORD1(v20);
              goto LABEL_32;
            }

            goto LABEL_31;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v15 = 1;
          }

          else
          {
            v15 = v20 == 0;
          }

          if (v15)
          {
            v7 = 4294966996;
          }

          else
          {
            v7 = v20;
          }

          goto LABEL_31;
        }
      }

      v7 = 4294966996;
    }

    else
    {
      v7 = 4294966995;
    }

LABEL_31:
    mach_msg_destroy(msg);
    goto LABEL_32;
  }

  mig_dealloc_reply_port(*&msg[12]);
LABEL_23:
  if (v7 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    mach_msg_destroy(msg);
    v7 = 268435460;
  }

LABEL_32:
  IPCBufferWriter::~IPCBufferWriter(v17);
  return v7;
}

void sub_237259CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

uint64_t MIGClient::MIDIClientDispose(MIGClient *this, int a2)
{
  v3 = MIDIProcess::defaultInstance(this);
  v4 = *((**v3)(v3) + 468);
  *&msg[20] = 0u;
  v12 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  reply_port = mig_get_reply_port();
  *&msg[8] = v4;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F4300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = reply_port;
  }

  v7 = mach_msg(msg, 275, 0x24u, 0x2Cu, v6, 0x493E0u, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v7)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 8103)
      {
        v9 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v9 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v9 = 268435460;
  if (v8 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v8;
}

uint64_t MIGClient::MIDIClientCreateWithBlock(MIGClient *this, const __CFString *a2, unsigned int *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  LODWORD(v15[0]) = 0;
  v15[1] = 0;
  v4 = IPCBufferWriter::write(v15, a2, 0, 0);
  v5 = v4;
  if (v4)
  {
    goto LABEL_32;
  }

  v6 = MIDIProcess::defaultInstance(v4);
  v7 = *((**v6)(v6) + 468);
  v8 = v16;
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
  v23 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  memset(msg, 0, sizeof(msg));
  *&msg[24] = *MEMORY[0x277D85EF8];
  if (v16 > 0x200)
  {
    v5 = 4294966989;
    goto LABEL_32;
  }

  __memcpy_chk();
  LODWORD(v18) = v8;
  v9 = (v8 + 3) & 0x7FC;
  reply_port = mig_get_reply_port();
  *&msg[8] = __PAIR64__(reply_port, v7);
  *msg = 5395;
  *&msg[16] = 0x1F4200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v11 = *&msg[12];
  }

  else
  {
    v11 = reply_port;
  }

  v12 = mach_msg(msg, 275, v9 + 36, 0x30u, v11, 0x493E0u, 0);
  v5 = v12;
  if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_23;
  }

  if (!v12)
  {
    if (*&msg[20] == 71)
    {
      v5 = 4294966988;
    }

    else if (*&msg[20] == 8102)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 40)
        {
          if (!*&msg[8])
          {
            v5 = v18;
            if (!v18)
            {
              *a3 = DWORD1(v18);
              goto LABEL_32;
            }

            goto LABEL_31;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v13 = 1;
          }

          else
          {
            v13 = v18 == 0;
          }

          if (v13)
          {
            v5 = 4294966996;
          }

          else
          {
            v5 = v18;
          }

          goto LABEL_31;
        }
      }

      v5 = 4294966996;
    }

    else
    {
      v5 = 4294966995;
    }

LABEL_31:
    mach_msg_destroy(msg);
    goto LABEL_32;
  }

  mig_dealloc_reply_port(*&msg[12]);
LABEL_23:
  if (v5 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    mach_msg_destroy(msg);
    v5 = 268435460;
  }

LABEL_32:
  IPCBufferWriter::~IPCBufferWriter(v15);
  return v5;
}

void sub_23725A14C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferWriter::~IPCBufferWriter(va);
  _Unwind_Resume(a1);
}

void (***ClientInterface::global(ClientInterface *this))(XPCClient *__hidden this)
{
  {
    ClientInterface::defaultInterface(int)::cachedVersion = CoreMIDIServerImplVersion();
  }

  if (ClientInterface::defaultInterface(int)::cachedVersion == 1)
  {
    return &ClientInterface::defaultInterface(int)::migClient;
  }

  else
  {
    return &ClientInterface::defaultInterface(int)::xpcClient;
  }
}

void sub_23725A578(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[26] = v5;
    operator delete(v5);
  }

  CADeprecated::CAMutex::~CAMutex((v1 + 14));
  CADeprecated::XMachPortDeathListener::~XMachPortDeathListener(v2);
  CADeprecated::XBasicMIGServer::~XBasicMIGServer(v1);
  MEMORY[0x2383C8250](v1, 0x10F1C402391C2BDLL);
  MIDIServer::~MIDIServer(&MIDIServer::defaultInstance(int)::migServer);
  _Unwind_Resume(a1);
}

void MIDIServerMIG::~MIDIServerMIG(MIDIServerMIG *this)
{
  MIDIServer::~MIDIServer(this);

  JUMPOUT(0x2383C8250);
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::~guarded_lookup_hash_table(uint64_t a1)
{
  if (atomic_load((a1 + 16)))
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v3 = atomic_load((a1 + 8));
    if (v3)
    {
      v4 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::~table_impl(v3);
      MEMORY[0x2383C8250](v4, 0x1060C402CF69088);
    }

    std::mutex::~mutex((a1 + 48));
    v5 = *(a1 + 24);
    if (v5)
    {
      for (i = *(a1 + 32); i != v5; std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>,void,0>(i))
      {
        --i;
      }

      *(a1 + 32) = v5;
      operator delete(*(a1 + 24));
    }

    return a1;
  }

  return result;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::~table_impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (a1 + 16);
    do
    {
      if (*v3 + 1 >= 2)
      {
        caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::element_t::release(*v3);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return a1;
}

uint64_t std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>,void,0>(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::~table_impl(result);

    JUMPOUT(0x2383C8250);
  }

  return result;
}

unsigned int *caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::element_t::release(unsigned int *result)
{
  if ((atomic_fetch_add(result, 0xFFFF0000) & 0xFFFF0000) == 0x10000)
  {
    if (atomic_load(result))
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    JUMPOUT(0x2383C8250);
  }

  return result;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::lookup<(caulk::concurrent::guarded_lookup_hash_table_options)0,void>(uint64_t a1, unsigned int a2)
{
  v2 = (a1 + 16);
  atomic_fetch_add((a1 + 16), 1u);
  result = atomic_load((a1 + 8));
  if (result)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(result, a2);
    if (v4)
    {
      result = *(v4 + 8);
    }

    else
    {
      result = 0;
    }
  }

  atomic_fetch_add(v2, 0xFFFFFFFF);
  return result;
}

unint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::rehash(unint64_t *a1, unsigned int a2)
{
  v4 = atomic_load(a1 + 1);
  v5 = operator new(8 * (a2 - 1) + 24);
  v6 = v5;
  *v5 = a1;
  *(v5 + 2) = a2;
  *(v5 + 2) = 0;
  v7 = v5 + 16;
  if (a2)
  {
    v8 = a2 + 1;
    v9 = (v5 + 16);
    do
    {
      atomic_store(0, v9++);
      --v8;
    }

    while (v8 > 1);
  }

  if (v4)
  {
    v10 = *(v4 + 8);
    if (v10)
    {
      v11 = (v4 + 16);
      do
      {
        v12 = *v11;
        if (*v11 + 1 >= 2)
        {
          SlotForKey = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(v6, *(v12 + 4));
          if ((SlotForKey & 1) == 0)
          {
            atomic_fetch_add(v12, 0x10000u);
            atomic_store(v12, &v7[8 * HIDWORD(SlotForKey)]);
          }
        }

        ++v11;
        --v10;
      }

      while (v10);
    }

    atomic_store(v6, a1 + 1);
    v15 = a1[4];
    v14 = a1[5];
    if (v15 >= v14)
    {
      v17 = a1[3];
      v18 = v15 - v17;
      v19 = (v15 - v17) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
      }

      v21 = v14 - v17;
      if (v21 >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (!(v22 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v23 = (v15 - v17) >> 3;
      v24 = (8 * v19);
      v25 = (8 * v19 - 8 * v23);
      *v24 = v4;
      v16 = v24 + 1;
      memcpy(v25, v17, v18);
      a1[3] = v25;
      a1[4] = v16;
      a1[5] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v15 = v4;
      v16 = v15 + 1;
    }

    a1[4] = v16;
  }

  else
  {
    atomic_store(v5, a1 + 1);
  }

  return v6;
}

void sub_23725AAB8(_Unwind_Exception *a1)
{
  v4 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::~guarded_lookup_hash_table(v2);
  MEMORY[0x2383C8250](v4, v1);
  _Unwind_Resume(a1);
}

void BaseOpaqueObject::BaseOpaqueObject(BaseOpaqueObject *this)
{
  *this = &unk_284A46928;
  if (atomic_load_explicit(&OpaqueObjectMgrInstance(void)::onceflag, memory_order_acquire) != -1)
  {
    v14 = &v12;
    v13 = &v14;
    std::__call_once(&OpaqueObjectMgrInstance(void)::onceflag, &v13, std::__call_once_proxy[abi:ne200100]<std::tuple<OpaqueObjectMgrInstance(void)::$_0 &&>>);
  }

  v2 = OpaqueObjectMgr::sInstance;
  do
  {
    add = atomic_fetch_add((v2 + 112), 1u);
    if ((add & 0x80000000) != 0)
    {
      v4 = (add & 0x7FFFFFFF) + 4096;
      atomic_compare_exchange_strong((v2 + 112), &add, v4);
      add = v4;
    }

    v5 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::lookup<(caulk::concurrent::guarded_lookup_hash_table_options)0,void>(v2, add);
  }

  while ((v6 & 1) != 0 && v5);
  std::mutex::lock((v2 + 48));
  v7 = atomic_load((v2 + 8));
  v8 = *v2 + 1;
  *v2 = v8;
  if (v7)
  {
    v9 = 16 * v8;
    v10 = *(v7 + 8);
    if (v9 / v10 < 0xB)
    {
      goto LABEL_13;
    }

    v11 = 2 * v10;
  }

  else
  {
    v11 = 8;
  }

  v7 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::rehash(v2, v11);
LABEL_13:
  if ((caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(v7, add) & 1) == 0)
  {
    operator new();
  }

  --*v2;
  std::mutex::unlock((v2 + 48));
  *(this + 2) = add;
}

void BaseOpaqueObject::~BaseOpaqueObject(BaseOpaqueObject *this)
{
  *this = &unk_284A46928;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = OpaqueObjectMgr::sInstance;
    std::mutex::lock((OpaqueObjectMgr::sInstance + 48));
    v4 = atomic_load((v3 + 8));
    if (v4)
    {
      SlotForKey = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl::findSlotForKey(v4, v2);
      if (SlotForKey)
      {
        v7 = v6;
        atomic_store(0xFFFFFFFFFFFFFFFFLL, (v4 + 8 * HIDWORD(SlotForKey) + 16));
        if (v6)
        {
          v8 = atomic_load((v3 + 16));
          if (v8 >= 1)
          {
            do
            {
              __ns.__rep_ = 50000;
              std::this_thread::sleep_for (&__ns);
              v9 = atomic_load((v3 + 16));
            }

            while (v9 > 0);
          }

          if (atomic_load(v7))
          {
            std::mutex::unlock((v3 + 48));
            while (atomic_load(v7))
            {
              __ns.__rep_ = 500000;
              std::this_thread::sleep_for (&__ns);
            }

            std::mutex::lock((v3 + 48));
            v4 = atomic_load((v3 + 8));
          }

          caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::element_t::release(v7);
          v13 = *v3 - 1;
          *v3 = v13;
          if (v4)
          {
            v14 = 16 * v13;
            v15 = *(v4 + 8);
            if (v14 / v15 <= 2 && v15 >= 9)
            {
              caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::rehash(v3, v15 >> 1);
            }
          }
        }
      }
    }

    v17 = atomic_load((v3 + 16));
    if (v17 <= 0)
    {
      v19 = *(v3 + 24);
      for (i = *(v3 + 32); i != v19; std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::table_impl>>,void,0>(i))
      {
        --i;
      }

      *(v3 + 32) = v19;
    }

    std::mutex::unlock((v3 + 48));
    *(this + 2) = 0;
  }
}

uint64_t BaseOpaqueObject::ResolveOpaqueRef(uint64_t a1, unsigned int a2)
{
  result = OpaqueObjectMgr::sInstance;
  if (OpaqueObjectMgr::sInstance)
  {
    v4 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,BaseOpaqueObject *,(caulk::concurrent::guarded_lookup_hash_table_options)0,OpaqueObjectIdentityHash>::lookup<(caulk::concurrent::guarded_lookup_hash_table_options)0,void>(OpaqueObjectMgr::sInstance, a2);
    result = 0;
    if (v5)
    {
      if (v4)
      {
        if ((*(*v4 + 24))(v4, a1))
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_23725B6B8(_Unwind_Exception *a1)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void sub_23725BC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void sub_23725C834(_Unwind_Exception *a1)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void MIDICI::Profile::serialize(MIDICI::Profile *this@<X0>, CFDictionaryRef *a2@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v18 = *(this + 2);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int>(v27, "object", &v18);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,std::string const&>(&v28, "name", this + 64);
  applesauce::CF::TypeRef::TypeRef(v29, "id");
  v4 = *(this + 12) - *(this + 11);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v20, v4);
  v5 = *(this + 11);
  v6 = *(this + 12);
  if (v5 != v6)
  {
    v7 = v21;
    do
    {
      v8 = *v5;
      if (v7 >= v22)
      {
        v9 = (v7 - v20) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
        }

        v10 = (v22 - v20) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v22 - v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        v26 = &v20;
        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(v11);
        }

        valuePtr[0] = 0;
        valuePtr[1] = (8 * v9);
        v24 = 8 * v9;
        v25 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned char,void,0>((8 * v9), v8);
        v24 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v20, valuePtr);
        v7 = v21;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(valuePtr);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned char,void,0>(v7++, *v5);
      }

      v21 = v7;
      ++v5;
    }

    while (v5 != v6);
  }

  v12 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v20);
  valuePtr[0] = &v20;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](valuePtr);
  v29[1] = v12;
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned char const&>(&v30, "profile_type", this + 112);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned char const&>(&v31, "group_offset", this + 113);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned char const&>(&v32, "total_channel_count", this + 114);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned char const&>(&v33, "midi_channel", this + 115);
  applesauce::CF::TypeRef::TypeRef(v34, "enabled");
  v13 = MEMORY[0x277CBED28];
  if (!*(this + 116))
  {
    v13 = MEMORY[0x277CBED10];
  }

  v34[1] = *v13;
  applesauce::CF::TypeRef::TypeRef(&v35, "enabled_channel_count");
  LOWORD(valuePtr[0]) = *(this + 59);
  if (!CFNumberCreate(0, kCFNumberShortType, valuePtr))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int const&>(&v37, "owner", this + 30);
  LODWORD(valuePtr[0]) = 3;
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,UMPCIObjectType>(&v38, "type", valuePtr);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned long long const&>(&v39, "timestamp", this + 7);
  applesauce::CF::TypeRefPair::TypeRefPair<char const* const&,unsigned int const&>(v40, "owner_client_ref", this + 13);
  v19[0] = v27;
  v19[1] = 13;
  v14 = 0;
  *a2 = applesauce::CF::details::make_CFDictionaryRef(v19);
  do
  {
    v15 = *&v40[v14 + 8];
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = *&v40[v14];
    if (v16)
    {
      CFRelease(v16);
    }

    v14 -= 16;
  }

  while (v14 != -208);
}

void sub_23725D1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, const void *a38)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a38);
  applesauce::CF::TypeRef::~TypeRef(v38);
  while (v38 != &a21)
  {
    v38 -= 2;
    applesauce::CF::TypeRefPair::~TypeRefPair(v38);
  }

  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned char,void,0>(CFNumberRef *a1, char a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  return result;
}

void MIDICI::Profile::deserialize(MIDICI::Profile *this@<X0>, const __CFDictionary **a2@<X1>, void *a3@<X8>)
{
  v5 = a3;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = a3 + 1;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](exception, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<std::string,std::string const&>(&__str, *a2, __p);
  if (LOBYTE(__str.length) == 1)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v5, __p);
  }

  else
  {
    LOBYTE(__str.isa) = 0;
    LOBYTE(__str.length) = 0;
  }

  if (v55 < 0)
  {
    operator delete(__p[0]);
  }

  if (LOBYTE(__str.length) == 1)
  {
    std::string::operator=((this + 64), &__str);
    if ((__str.length & 1) != 0 && SHIBYTE(__str.data) < 0)
    {
      operator delete(__str.isa);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "id");
  if (!*a2)
  {
    v42 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v42, "Could not construct");
  }

  applesauce::CF::details::find_at_key_or_optional<std::vector<unsigned long long>,std::string const&>(&__str, *a2, __p);
  length_low = LOBYTE(__str.length);
  if (LOBYTE(__str.length) == 1)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v5, __p);
  }

  else
  {
    LOBYTE(__str.isa) = 0;
    LOBYTE(__str.length) = 0;
  }

  if (v55 < 0)
  {
    operator delete(__p[0]);
    if (!length_low)
    {
      goto LABEL_38;
    }
  }

  else if (!length_low)
  {
    goto LABEL_38;
  }

  v7 = *(this + 11);
  *(this + 12) = v7;
  info = __str.info;
  isa = __str.isa;
  if (__str.isa == __str.info)
  {
    goto LABEL_36;
  }

  v52 = a2;
  v53 = v5;
  do
  {
    v10 = *isa;
    v11 = *(this + 13);
    if (v7 >= v11)
    {
      v12 = *(this + 11);
      v13 = (v7 - v12);
      v14 = v7 - v12 + 1;
      if (v14 < 0)
      {
        std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
      }

      v15 = v11 - v12;
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        operator new();
      }

      v17 = v7 - v12;
      *v13 = v10;
      v7 = v13 + 1;
      memcpy(0, v12, v17);
      *(this + 11) = 0;
      *(this + 12) = v13 + 1;
      *(this + 13) = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v7++ = v10;
    }

    *(this + 12) = v7;
    isa += 8;
  }

  while (isa != info);
  v5 = v53;
  a2 = v52;
  if (__str.length)
  {
    isa = __str.isa;
LABEL_36:
    if (isa)
    {
      operator delete(isa);
    }
  }

LABEL_38:
  std::string::basic_string[abi:ne200100]<0>(&__str, "profile_type");
  if (!*a2)
  {
    v43 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v43, "Could not construct");
  }

  v18 = applesauce::CF::details::find_at_key_or_optional<unsigned char,std::string const&>(*a2, &__str);
  if (v18 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v5, &__str.isa);
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v18 >= 0x100u)
  {
    *(this + 112) = v19;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "group_offset");
  if (!*a2)
  {
    v44 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v44, "Could not construct");
  }

  v20 = applesauce::CF::details::find_at_key_or_optional<unsigned char,std::string const&>(*a2, &__str);
  if (v20 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v5, &__str.isa);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v20 >= 0x100u)
  {
    *(this + 113) = v21;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "total_channel_count");
  if (!*a2)
  {
    v45 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v45, "Could not construct");
  }

  v22 = applesauce::CF::details::find_at_key_or_optional<unsigned char,std::string const&>(*a2, &__str);
  if (v22 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v5, &__str.isa);
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v22 >= 0x100u)
  {
    *(this + 114) = v23;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "midi_channel");
  if (!*a2)
  {
    v46 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v46, "Could not construct");
  }

  v24 = applesauce::CF::details::find_at_key_or_optional<unsigned char,std::string const&>(*a2, &__str);
  if (v24 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v5, &__str.isa);
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v24 >= 0x100u)
  {
    *(this + 115) = v25;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "enabled");
  if (!*a2)
  {
    v47 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v47, "Could not construct");
  }

  v26 = applesauce::CF::details::find_at_key_or_optional<BOOL,std::string const&>(*a2, &__str);
  if (v26 >= 0x100u)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v5, &__str.isa);
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v26 >= 0x100u)
  {
    *(this + 116) = v27;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "enabled_channel_count");
  if (!*a2)
  {
    v48 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v48, "Could not construct");
  }

  v28 = applesauce::CF::details::find_at_key_or_optional<unsigned short,std::string const&>(*a2, &__str);
  if (v28 >= 0x10000)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v5, &__str.isa);
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v28 >= 0x10000)
  {
    *(this + 59) = v29 | v28 & 0xFF00;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "owner");
  if (!*a2)
  {
    v49 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v49, "Could not construct");
  }

  v30 = applesauce::CF::details::find_at_key_or_optional<unsigned short,std::string const&>(*a2, &__str);
  if (v30 >= 0x10000)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v5, &__str.isa);
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (SHIBYTE(__str.data) < 0)
  {
    operator delete(__str.isa);
  }

  if (v30 >= 0x10000)
  {
    *(this + 30) = v31 | v30 & 0xFF00;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, "timestamp");
  if (!*a2)
  {
    v50 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v50, "Could not construct");
  }

  v32 = applesauce::CF::details::find_at_key_or_optional<unsigned long long,std::string const&>(*a2, &__str);
  v34 = v33;
  if (v33)
  {
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v5, &__str.isa);
    v35 = v32;
  }

  else
  {
    v35 = 0;
  }

  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if ((v34 & 1) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  operator delete(__str.isa);
  if (v34)
  {
LABEL_100:
    *(this + 7) = v35 | v32 & 0xFFFFFFFFFFFFFF00;
  }

LABEL_101:
  std::string::basic_string[abi:ne200100]<0>(&__str, "owner_client_ref");
  if (!*a2)
  {
    v51 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383C7ED0](v51, "Could not construct");
  }

  v36 = applesauce::CF::details::at_key<std::string const&>(*a2, &__str);
  if (v36)
  {
    v37 = applesauce::CF::convert_as<unsigned int,0>(v36);
    v38 = v37;
    if ((v37 & 0x100000000) != 0)
    {
      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v5, &__str.isa);
      v39 = 0;
      v40 = v38;
      goto LABEL_109;
    }
  }

  else
  {
    v38 = 0;
  }

  v40 = 0;
  v39 = 1;
LABEL_109:
  if ((SHIBYTE(__str.data) & 0x80000000) == 0)
  {
    if (v39)
    {
      return;
    }

    goto LABEL_111;
  }

  operator delete(__str.isa);
  if ((v39 & 1) == 0)
  {
LABEL_111:
    *(this + 13) = v40 | v38 & 0xFFFFFF00;
  }
}

void sub_23725DC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char **a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  __cxa_free_exception(v24);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::string>::destroy(*a11);
  _Unwind_Resume(a1);
}

void MIDICI::Profile::~Profile(MIDICI::Profile *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject(this + 24);
  BaseOpaqueObject::~BaseOpaqueObject(this);

  JUMPOUT(0x2383C8250);
}

{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject(this + 24);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void MIDICI::Profile::Profile(uint64_t a1, unsigned __int8 *a2, __int128 *a3)
{
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, a3);
  MIDIObject::MIDIObject(a1);
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *a1 = &unk_284A49058;
  if (v6 == 1)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 64), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      *(a1 + 64) = __p;
    }
  }

  else
  {
    CIProfileBytesToName(a1 + 64, a2, 5uLL);
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  operator new();
}

void sub_23725DFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  MIDIObject::~MIDIObject(v15);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIDIIORingBufferBase::Init(MIDIIORingBufferBase *this, unsigned int a2, std::string::value_type *__s)
{
  if (!MIDIIORingBufferBase::sLog)
  {
    operator new();
  }

  std::string::__assign_external((this + 8), __s);
  *(this + 9) = a2 != 0;
  if (a2)
  {
    v6 = shm_open(__s, 514, 511);
  }

  else
  {
    v6 = shm_open(__s, 2, 511);
  }

  if (v6 != -1)
  {
    v7 = v6;
    if (a2)
    {
      ftruncate(v6, 0x4000);
    }

    *(this + 11) = mmap(0, 0x4000uLL, 3, 1, v7, 0);
    close(v7);
    *(this + 40) = 1;
    v8 = *(this + 11);
    *(this + 8) = 16352;
    if (v8 + 1 > 1)
    {
      if (!a2)
      {
        return;
      }

      bzero(v8, 0x4000uLL);
      goto LABEL_15;
    }

    *(this + 11) = this + 44;
  }

  if (a2)
  {
LABEL_15:
    atomic_store(a2, (*(this + 11) + 8));
    atomic_store(0, (*(this + 11) + 12));
  }
}

BOOL MIDIIORingBufferReader::readPacketList(MIDIRingBuffer *this, void *a2, uint64_t a3)
{
  while (1)
  {
    v6 = atomic_load((*(this + 11) + 12));
    v7 = *(this + 11);
    if (v6)
    {
      break;
    }

    if (!atomic_exchange((v7 + 20), 0))
    {
      return 0;
    }
  }

  if (atomic_load((v7 + 12)))
  {
    v10 = 0;
    v11 = 1;
    while (1)
    {
      v12 = MIDIRingBuffer::Peek(this, __dst, 20);
      if (v12 < 0)
      {
        break;
      }

      if (v11)
      {
        *a2 = __dst[0];
        *a3 = v17;
        v10 = a3 + 8;
      }

      else
      {
        if (*a3 != v17 || __dst[0] != *a2)
        {
          return *(a3 + 4) != 0;
        }

        v10 += 4 * *(v10 + 8) + 12;
      }

      v13 = v18;
      if (a3 + 1024 - (v10 + 12) < v18)
      {
        return *(a3 + 4) != 0;
      }

      if (*(this + 8) <= v12)
      {
        break;
      }

      atomic_store(v12, (*(this + 11) + 4));
      v14 = MIDIRingBuffer::Peek(this, (v10 + 12), v13);
      if (v14 < 0 || *(this + 8) <= v14)
      {
        break;
      }

      v11 = 0;
      atomic_store(v14, (*(this + 11) + 4));
      ++*(a3 + 4);
      *(v10 + 8) = v13 >> 2;
      *v10 = __dst[1];
      atomic_fetch_add((*(this + 11) + 12), 0xFFFFFFFF);
      if (!atomic_load((*(this + 11) + 12)))
      {
        return *(a3 + 4) != 0;
      }
    }

    std::terminate();
  }

  return *(a3 + 4) != 0;
}

void MIDIIORingBufferWriter::writePacket2(uint64_t a1, char *__src, char *a3)
{
  if (*(__src + 9) >= 0x3E9u)
  {
    std::terminate();
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    if (v6 == 1 || mach_absolute_time() < *(a1 + 144))
    {
      return;
    }

    *(a1 + 136) = 0;
  }

  v7 = *(a1 + 88);
  v8 = atomic_load(v7);
  LODWORD(v7) = atomic_load(v7 + 1);
  v9 = v8 - v7;
  if (v9 < 0)
  {
    v9 += *(a1 + 32);
  }

  if (*(__src + 9) + 20 >= *(a1 + 32) - v9 || (v10 = atomic_load((*(a1 + 88) + 16))) != 0)
  {
    deque_vec<unsigned char>::append<unsigned char const*>(a1 + 104, __src, __src + 20);
    deque_vec<unsigned char>::append<unsigned char const*>(a1 + 104, a3, &a3[*(__src + 9)]);
    atomic_store(1u, (*(a1 + 88) + 16));
  }

  else
  {

    MIDIIORingBufferWriter::writePacket3(a1, __src, a3);
  }
}

uint64_t MIDIIORingBufferWriter::writePacket3(MIDIRingBuffer *a1, uint64_t a2, char *a3)
{
  if ((MIDIRingBuffer::Write(a1, a2, 20) & 0x80000000) != 0 || (result = MIDIRingBuffer::Write(a1, a3, *(a2 + 18)), (result & 0x80000000) != 0))
  {
    std::terminate();
  }

  atomic_fetch_add((*(a1 + 11) + 12), 1u);
  return result;
}

void deque_vec<unsigned char>::append<unsigned char const*>(uint64_t a1, char *__src, char *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (&v7[a3] - &__src[*a1] > *(a1 + 16) - *a1)
    {
      v9 = &v8[v6];
      v10 = v7 - v9;
      if (v7 != v9)
      {
        memmove(*a1, v9, v10);
      }

      v7 = &v8[v10];
      *(a1 + 8) = &v8[v10];
      *(a1 + 24) = 0;
    }
  }

  else
  {
    v7 = *(a1 + 8);
  }

  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, v7, __src, a3, a3 - __src);
}

BOOL MIDIIORingBufferWriter::emptySecondaryQueue(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 25);
  do
  {
    v2 = *&this[26]._os_unfair_lock_opaque;
    v3 = *&this[28]._os_unfair_lock_opaque;
    v4 = *&this[32]._os_unfair_lock_opaque;
    while (v4 + v2 != v3)
    {
      if ((v3 - (v4 + v2)) <= 0x13 || (v5 = (v2 + v4), v13 = *(v5 + 4), v12 = *v5, HIWORD(v13) >= 0x3E9u))
      {
        std::terminate();
      }

      v6 = *&this[22]._os_unfair_lock_opaque;
      v7 = atomic_load(v6);
      LODWORD(v6) = atomic_load(v6 + 1);
      v8 = v7 - v6;
      if (v8 < 0)
      {
        v8 += this[8]._os_unfair_lock_opaque;
      }

      v9 = HIWORD(v13);
      if ((this[8]._os_unfair_lock_opaque - v8) <= HIWORD(v13) + 20)
      {
        goto LABEL_13;
      }

      MIDIIORingBufferWriter::writePacket3(this, &v12, (*&this[26]._os_unfair_lock_opaque + *&this[32]._os_unfair_lock_opaque + 20));
      v4 = v9 + *&this[32]._os_unfair_lock_opaque + 20;
      *&this[32]._os_unfair_lock_opaque = v4;
      v2 = *&this[26]._os_unfair_lock_opaque;
      v3 = *&this[28]._os_unfair_lock_opaque;
      if (v4 + v2 == v3)
      {
        v4 = 0;
        *&this[28]._os_unfair_lock_opaque = v2;
        *&this[32]._os_unfair_lock_opaque = 0;
        v3 = v2;
      }
    }

    atomic_store(0, (*&this[22]._os_unfair_lock_opaque + 16));
    if (this[34]._os_unfair_lock_opaque == 1)
    {
      this[34]._os_unfair_lock_opaque = 2;
      *&this[36]._os_unfair_lock_opaque = (mach_absolute_time() + 120000000.0);
    }

LABEL_13:
    ;
  }

  while (atomic_exchange((*&this[22]._os_unfair_lock_opaque + 24), 0));
  v10 = atomic_fetch_or((*&this[22]._os_unfair_lock_opaque + 20), 1u) == 0;
  os_unfair_lock_unlock(this + 25);
  return v10;
}

void BackgroundAppManager::Update(BackgroundAppManager *this)
{
  v24 = *MEMORY[0x277D85DE8];
  gBackgroundAppManager();
  v2 = gBackgroundAppManager(void)::bgappm;
  if (os_log_type_enabled(gBackgroundAppManager(void)::bgappm, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v21 = "BackgroundAppManager.mm";
    v22 = 1024;
    v23 = 32;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] BackgroundManager::Update()", buf, 0x12u);
  }

  v3 = *(this + 1);
  v4 = [MEMORY[0x277D46FB0] descriptor];
  [v4 setValues:1];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = *(*this + 40);
  for (i = *(*this + 48); v6 != i; v6 += 8)
  {
    v8 = [MEMORY[0x277D46F50] identifierWithPid:*(*v6 + 8)];
    [v5 addObject:v8];
  }

  v9 = [MEMORY[0x277D46FA0] predicateMatchingIdentifiers:v5];
  v10 = v3 == 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN20BackgroundAppManager6UpdateEv_block_invoke;
  aBlock[3] = &unk_278A28C20;
  v19 = this;
  v11 = v9;
  v17 = v11;
  v12 = v4;
  v18 = v12;
  v13 = _Block_copy(aBlock);
  if (v10)
  {
    v14 = [MEMORY[0x277D46F80] monitorWithConfiguration:v13];
    v15 = *(this + 1);
    *(this + 1) = v14;
  }

  else
  {
    [*(this + 1) updateConfiguration:v13];
  }
}

void gBackgroundAppManager(void)
{
  {
    caulk::log_category::log_category(&gBackgroundAppManager(void)::bgappm, "com.apple.coremidi", "bgappm");
  }
}

void ___ZN20BackgroundAppManager6UpdateEv_block_invoke(void *a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[6];
  v7[0] = a1[4];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 setPredicates:v5];

  [v3 setStateDescriptor:a1[5]];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZN20BackgroundAppManager6UpdateEv_block_invoke_2;
  v6[3] = &__block_descriptor_40_e74_v32__0__RBSProcessMonitor_8__RBSProcessHandle_16__RBSProcessStateUpdate_24l;
  v6[4] = v4;
  [v3 setUpdateHandler:v6];
}

void ___ZN20BackgroundAppManager6UpdateEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *(a1 + 32);
  v7 = [v5 state];
  v8 = [v7 process];
  v9 = [v8 pid];

  v10 = [v5 state];
  v11 = [v10 taskState];

  gBackgroundAppManager();
  v12 = gBackgroundAppManager(void)::bgappm;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v5 state];
    v14 = [v13 taskState];
    v15 = "NO";
    *v25 = 136316162;
    *&v25[4] = "BackgroundAppManager.mm";
    v27 = 52;
    v26 = 1024;
    if (v11 == 3)
    {
      v15 = "YES";
    }

    v28 = 1024;
    v29 = v9;
    v30 = 1024;
    v31 = v14;
    v32 = 2080;
    v33 = v15;
    _os_log_impl(&dword_2371C2000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d BackgroundAppManager:mProcessMonitor updateHandler called for pid %d, taskState = %d (isSuspended = %s)", v25, 0x28u);
  }

  v16 = *v6;
  v20 = MIDIServer::defaultInstance(v17, v18) + 16;
  v19 = *v20;
  *v25 = v20;
  v21 = (*(v19 + 16))(v20);
  v25[8] = v21;
  for (i = *(v16 + 5); i != *(v16 + 6); ++i)
  {
    v23 = *i;
    if (*(*i + 2) == v9)
    {
      v24 = v11 == 3;
      if (*(v23 + 13) != v24)
      {
        *(v23 + 13) = v24;
        if (v11 != 3 && (*(v23 + 320) & 1) == 0)
        {
          ClientProcess::DeliverNotifications(v23);
        }
      }

      ClientTable::CheckActiveProcesses(v16);
      break;
    }
  }

  if (v21)
  {
    (*(*v20 + 24))(v20);
  }
}

void sub_23725ED48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CADeprecated::CAMutex::Locker::~Locker(&a9);

  _Unwind_Resume(a1);
}

BOOL MNSGlobalState::AddOrRemoveContact(MNSGlobalState *this, objc_object *a2, char a3)
{
  v4 = ContactOrConnectionSet::AddOrRemoveItem(this + 13, a2, a3);
  if (v4)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:@"entries"];
    MIDIObjectSetDictionaryProperty(*(this + 23), @"apple.midirtp.addressbook", v5);
  }

  return v4 != 0;
}

id ContactOrConnectionSet::AddOrRemoveItem(id *this, objc_object *a2, char a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v20 = a2;
  v21 = [(objc_object *)v20 host];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = this[1];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v7 = *v25;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = [*(*(&v24 + 1) + 8 * v8) host];
      v10 = [v9 hasSameAddressAs:v21];

      if (v10)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    if ((a3 & 1) == 0)
    {
      [this[1] removeObject:v20];
      goto LABEL_16;
    }

    if (*this)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_13:

    if ((a3 & 1) == 0)
    {
LABEL_14:
      v23 = 0;
      goto LABEL_24;
    }
  }

  [this[1] addObject:v20];
LABEL_16:
  v23 = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = this[1];
  v11 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [*(*(&v28 + 1) + 8 * i) host];
        v15 = MEMORY[0x277CBEAC0];
        v16 = [v14 name];
        v17 = [v14 addressAsText];
        v18 = [v15 dictionaryWithObjectsAndKeys:{v16, @"name", v17, @"address", 0}];
        [v23 addObject:v18];
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

LABEL_24:

  return v23;
}

void ContactOrConnectionSet::ContactOrConnectionSet(ContactOrConnectionSet *this, char a2)
{
  *this = a2;
  *(this + 1) = 0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = *(this + 1);
  *(this + 1) = v3;
}

void ContactOrConnectionSet::UpdateFromDriver(id *this, NSArray *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v19 = [this[1] mutableCopy];
  [this[1] removeAllObjects];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v17;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v20 = *v27;
    do
    {
      v21 = v3;
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * i);
        v6 = [v5 objectForKey:@"name"];
        v7 = [v5 objectForKey:@"address"];
        v8 = [MIDINetworkHost fromAddressAsText:v7 withName:v6];

        if (*this == 1 && (!v6 || ![v6 length]))
        {
          v9 = [v8 displayName];

          v6 = v9;
          [v8 setName:v9];
        }

        if (v8)
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v10 = v19;
          v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v11)
          {
            v12 = *v23;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v23 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v14 = *(*(&v22 + 1) + 8 * j);
                v15 = [v14 host];
                if ([v15 hasSameAddressAs:v8])
                {
                  [this[1] addObject:v14];
                  [v10 removeObject:v14];
                  [v15 setName:v6];

                  goto LABEL_24;
                }
              }

              v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          if (*this == 1)
          {
            v16 = [MIDINetworkConnection connectionWithHost:v8];
          }

          else
          {
            v16 = v8;
          }

          v10 = v16;
          [this[1] addObject:v16];
LABEL_24:
        }
      }

      v3 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v3);
  }
}

void sub_237261688(_Unwind_Exception *a1)
{
  CADeprecated::CAMutex::~CAMutex(v2);
  MEMORY[0x2383C8250](v2, v1);
  _Unwind_Resume(a1);
}

void MNSGlobalState::LoadContacts(MNSGlobalState *this)
{
  outDict = 0;
  DictionaryProperty = MIDIObjectGetDictionaryProperty(*(this + 23), @"apple.midirtp.addressbook", &outDict);
  v3 = outDict;
  if (DictionaryProperty)
  {
    v4 = 1;
  }

  else
  {
    v4 = outDict == 0;
  }

  if (!v4)
  {
    v5 = [(__CFDictionary *)outDict objectForKey:@"entries"];
    ContactOrConnectionSet::UpdateFromDriver(this + 13, v5);
  }
}

void MNSGlobalState::CoreMIDINotifyCallback(MNSGlobalState *this, const MIDINotification *a2, void *a3)
{
  if (*this == 4)
  {
    v4 = *(this + 3);
    if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = globals;
      v6 = (*(*globals + 16))(globals, a2, a3);
      v7 = *(globals + 96);
      if (v7)
      {
        [v7 sessionChanged];
        if ((v6 & 1) == 0)
        {
          return;
        }
      }

      else if (!v6)
      {
        return;
      }

      goto LABEL_17;
    }

    v8 = *(this + 2);
    v5 = globals;
    v9 = (*(*globals + 16))(globals, a2, a3);
    v10 = v9;
    if (*(globals + 92) != v8)
    {
      if (!v9)
      {
        return;
      }

      goto LABEL_17;
    }

    v11 = *(this + 2);
    if ([v11 isEqualToString:@"apple.midirtp.addressbook"])
    {
      MNSGlobalState::LoadContacts(globals);
    }

    v12 = *(globals + 96);
    if (v12)
    {
      [v12 contactsChanged];
    }

    if (v10)
    {
LABEL_17:
      (*(*v5 + 24))(v5);
    }
  }
}

void MNSGlobalState::AppResumed(MNSGlobalState *this, id *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
{
  v6 = globals;
  if (globals)
  {
    v8 = (*(*globals + 16))(globals, a2, a3, a4, a5, a6);
    MNSGlobalState::LoadContacts(a2);
    v9 = a2[12];
    if (v9)
    {
      [v9 sessionChanged];
      [a2[12] contactsChanged];
    }

    if (v8)
    {
      (*(*v6 + 24))(v6);
    }
  }
}

void ClientNotification::serialize(UInt8 *bytes, CFMutableDataRef theData)
{
  CFDataAppendBytes(theData, bytes, *(bytes + 1));
  v4 = *bytes;
  if (*bytes > 4099)
  {
    if (v4 == 4100 || v4 == 4101)
    {
      v6 = cf_serialize<__CFData const*>(*(bytes + 3));
      *bytesa = [v6 length];
      CFDataAppendBytes(theData, bytesa, 4);
      v8 = [v6 bytes];
      CFDataAppendBytes(theData, v8, *bytesa);
      goto LABEL_10;
    }
  }

  else
  {
    if ((v4 - 4096) < 3)
    {
      v5 = *(bytes + 2);
      *bytesa = 0;
      v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:0 error:bytesa];
      *bytesa = [v6 length];
      CFDataAppendBytes(theData, bytesa, 4);
      v7 = [v6 bytes];
      CFDataAppendBytes(theData, v7, *bytesa);
LABEL_10:

      return;
    }

    if (v4 == 4)
    {
      *bytesa = 2 * CFStringGetLength(*(bytes + 2));
      operator new[]();
    }
  }
}

id cf_serialize<__CFData const*>(uint64_t a1)
{
  v3 = 0;
  v1 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a1 requiringSecureCoding:0 error:&v3];

  return v1;
}

uint64_t cf_deserialize<__CFData const*,true>(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
  v3 = [MEMORY[0x277CCAAC8] unarchiveObjectWithData:v2];

  return v3;
}

void MIDIServerXPC_Client::dispatch_message(MIDIServerXPC_Client *this@<X0>, xpc_object_t *a2@<X1>, swix::message *a3@<X8>)
{
  v33[4] = *MEMORY[0x277D85DE8];
  swix::message::message(a3);
  if (*a2 == 190206329)
  {
    v5 = xpc_null_create();
    swix::xpcobj_coder<swix::data>::decode(v33, a2[1], "data");
    v6 = v33[0];
    v7 = xpc_null_create();
    xpc_release(v5);
    xpc_release(v7);
    v8 = *(this + 2);
    v9 = atomic_load((v8 + 12));
    if ((v9 & 1) != 0 || !(*(*v8 + 48))(v8))
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v6);
      length = xpc_data_get_length(v6);
      applesauce::CF::make_DataRef(&cf, bytes_ptr, length);
      v30 = v8;
      v12 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v31 = v12;
      v13 = *(v8 + 448);
      if (!v13 || v13 == CFRunLoopGetCurrent())
      {
        MIDIProcessXPC::DispatchNotify(void const*,unsigned long)::$_0::operator()(&v30);
        if (v12)
        {
          CFRelease(v12);
        }
      }

      else
      {
        os_unfair_lock_lock((v8 + 472));
        v31 = 0;
        v33[0] = &unk_284A48980;
        v33[1] = v8;
        v33[2] = v12;
        v33[3] = v33;
        v14 = *(v8 + 488);
        v15 = *(v8 + 496);
        if (v14 >= v15)
        {
          v17 = *(v8 + 480);
          v18 = (v14 - v17) >> 5;
          if ((v18 + 1) >> 59)
          {
            std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
          }

          v19 = v15 - v17;
          v20 = v19 >> 4;
          if (v19 >> 4 <= (v18 + 1))
          {
            v20 = v18 + 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFE0)
          {
            v21 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            if (!(v21 >> 59))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v22 = 32 * v18;
          std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](32 * v18, v33);
          v16 = 32 * v18 + 32;
          v23 = *(v8 + 480);
          v24 = *(v8 + 488);
          v25 = v22 + v23 - v24;
          if (v24 != v23)
          {
            v26 = *(v8 + 480);
            v27 = v25;
            do
            {
              v28 = std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v27, v26);
              v26 += 32;
              v27 = v28 + 32;
            }

            while (v26 != v24);
            do
            {
              std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v23);
              v23 += 32;
            }

            while (v23 != v24);
          }

          v29 = *(v8 + 480);
          *(v8 + 480) = v25;
          *(v8 + 488) = v16;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          v16 = std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v14, v33) + 32;
        }

        *(v8 + 488) = v16;
        std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v33);
        os_unfair_lock_unlock((v8 + 472));
        CFRunLoopSourceSignal(*(v8 + 456));
        CFRunLoopWakeUp(*(v8 + 448));
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    xpc_release(v6);
  }
}

void sub_237261FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

swix::message *swix::message::message(swix::message *this)
{
  *this = 0;
  *(this + 1) = xpc_null_create();
  *(this + 2) = 0;
  return this;
}

void swix::xpcobj_coder<swix::data>::decode(xpc_object_t *a1, xpc_object_t xdict, char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  if (value)
  {
    v5 = value;
    xpc_retain(value);
    *a1 = v5;
  }

  else
  {
    v5 = xpc_null_create();
    *a1 = v5;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (MEMORY[0x2383C9190](v5) == MEMORY[0x277D86458])
  {
    xpc_retain(v5);
    goto LABEL_7;
  }

LABEL_5:
  *a1 = xpc_null_create();
LABEL_7:
  xpc_release(v5);
}

void MIDIServerXPC_Client::~MIDIServerXPC_Client(MIDIServerXPC_Client *this)
{
  v2 = *(this + 1);
  *this = &unk_284A459B0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2383C8250);
}

{
  v2 = *(this + 1);
  *this = &unk_284A459B0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

void MIDIServerXPC_Server::dispatch_message(MIDIServerXPC_Server **this@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  v142 = *MEMORY[0x277D85DE8];
  v6 = swix::message::message(a3);
  switch(*a2)
  {
    case 0xB565175:
      Server = MIDIServerXPC_Server::queryServer(v6);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      xpc_dictionary_set_int64(a3[1], ".error", 0);
      xpc_dictionary_set_int64(a3[1], "process", Server);
      return;
    case 0xB565176:
      v69 = xpc_null_create();
      value = v69;
      LOBYTE(xstring[0]) = 0;
      swix::xpcobj_coder<applesauce::xpc::object>::decode(&v140, a2[1]);
      v70 = v140;
      value = v140;
      xpc_release(v69);
      v140 = 0;
      v71 = xpc_dictionary_get_BOOL(a2[1], "isIntel");
      LOBYTE(xstring[0]) = v71;
      MIDIServerXPC_Server::registerProcess(this, &value, v71);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      xpc_dictionary_set_int64(a3[1], ".error", 0);
      xpc_release(v70);
      return;
    case 0xB565177:
      value = xpc_null_create();
      swix::xpcobj_coder<swix::string>::decode(&v127, a2[1], "name");
      swix::string::operator=(&value, &v127);
      xpc_release(v127);
      v53 = MIDIServerXPC_Server::createClient(this[1], &value);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if ((v53 & 0x100000000) != 0)
      {
        v54 = 0;
      }

      else
      {
        v54 = v53;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v54);
      if (!v54)
      {
        xpc_dictionary_set_uint64(a3[1], "client", v53);
      }

      goto LABEL_221;
    case 0xB565178:
      v89 = swix::decode_message::decode<unsigned int>(a2[1], "client");
      v90 = MIDIServerXPC_Server::disposeClient(v89);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v90 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v90;
      }

      goto LABEL_225;
    case 0xB56517A:
      swix::decode_message::decode_message(v136, a2);
      v93 = this[1];
      if (v93)
      {
        v137 = &unk_284A45A00;
        v138 = *(v93 + 1);
        v94 = *(v93 + 2);
        v139 = v94;
        if (v94)
        {
          atomic_fetch_add_explicit((v94 + 8), 1uLL, memory_order_relaxed);
        }

        _ZNSt3__18functionIFvN4swix6resultIJEEEEEC1IZN20MIDIServerXPC_Server16dispatch_messageERKNS1_14decode_messageEE3__0vEET_(v141);
      }

      std::terminate();
      return;
    case 0xB56517B:
      LODWORD(v127) = 0;
      object = xpc_null_create();
      LODWORD(v129) = 0;
      LODWORD(v127) = swix::decode_message::decode<unsigned int>(a2[1], "client");
      swix::xpcobj_coder<swix::string>::decode(&value, a2[1], "name");
      swix::string::operator=(&object, &value);
      xpc_release(value);
      v61 = swix::decode_message::decode<int>(a2[1], "proto");
      LODWORD(v129) = v61;
      Source = MIDIServerXPC_Server::createSource(v127, object, v61);
      swix::encode_message::encode_message(&value, a2);
      swix::encode_message::operator=(a3, &value);
      xpc_release(xstring[0]);
      if ((Source & 0x100000000) != 0)
      {
        v63 = 0;
      }

      else
      {
        v63 = Source;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v63);
      if (!v63)
      {
        xpc_dictionary_set_uint64(a3[1], "sourceRef", Source);
      }

      goto LABEL_178;
    case 0xB56517C:
      LODWORD(v127) = 0;
      object = xpc_null_create();
      LODWORD(v129) = 0;
      LODWORD(v127) = swix::decode_message::decode<unsigned int>(a2[1], "client");
      swix::xpcobj_coder<swix::string>::decode(&value, a2[1], "name");
      swix::string::operator=(&object, &value);
      xpc_release(value);
      v72 = swix::decode_message::decode<int>(a2[1], "proto");
      LODWORD(v129) = v72;
      Destination = MIDIServerXPC_Server::createDestination(v127, object, v72);
      swix::encode_message::encode_message(&value, a2);
      swix::encode_message::operator=(a3, &value);
      xpc_release(xstring[0]);
      if ((Destination & 0x100000000) != 0)
      {
        v74 = 0;
      }

      else
      {
        v74 = Destination;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v74);
      if (!v74)
      {
        xpc_dictionary_set_uint64(a3[1], "destination", Destination);
      }

      goto LABEL_178;
    case 0xB56517D:
      v75 = swix::decode_message::decode<unsigned int>(a2[1], "endpointRef");
      v76 = MIDIServerXPC_Server::disposeEndpoint(v75);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v76 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v76;
      }

      goto LABEL_225;
    case 0xB56517E:
      LODWORD(v127) = 0;
      object = xpc_null_create();
      LODWORD(v129) = 0;
      LODWORD(v127) = swix::decode_message::decode<unsigned int>(a2[1], "client");
      swix::xpcobj_coder<swix::string>::decode(&value, a2[1], "name");
      swix::string::operator=(&object, &value);
      xpc_release(value);
      v100 = swix::decode_message::decode<int>(a2[1], "proto");
      LODWORD(v129) = v100;
      InputPort = MIDIServerXPC_Server::createInputPort(v127, object, v100);
      swix::encode_message::encode_message(&value, a2);
      swix::encode_message::operator=(a3, &value);
      xpc_release(xstring[0]);
      if ((InputPort & 0x100000000) != 0)
      {
        v102 = 0;
      }

      else
      {
        v102 = InputPort;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v102);
      if (!v102)
      {
        xpc_dictionary_set_uint64(a3[1], "portRef", InputPort);
      }

      goto LABEL_178;
    case 0xB56517F:
      LODWORD(value) = 0;
      xstring[0] = xpc_null_create();
      LODWORD(value) = swix::decode_message::decode<unsigned int>(a2[1], "client");
      swix::xpcobj_coder<swix::string>::decode(&v127, a2[1], "name");
      swix::string::operator=(xstring, &v127);
      xpc_release(v127);
      OutputPort = MIDIServerXPC_Server::createOutputPort(value, xstring[0], v97);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if ((OutputPort & 0x100000000) != 0)
      {
        v99 = 0;
      }

      else
      {
        v99 = OutputPort;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v99);
      if (!v99)
      {
        xpc_dictionary_set_uint64(a3[1], "portRef", OutputPort);
      }

      goto LABEL_206;
    case 0xB565180:
      v35 = swix::decode_message::decode<unsigned int>(a2[1], "portRef");
      v36 = MIDIServerXPC_Server::disposePort(v35);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v36 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v36;
      }

      goto LABEL_225;
    case 0xB565181:
      v64 = swix::decode_message::decode<unsigned int>(a2[1], "port");
      v65 = swix::decode_message::decode<unsigned int>(a2[1], "source");
      v66 = swix::coder<IPCPtr>::decode(a2[1]);
      v67 = MIDIServerXPC_Server::portConnectSource(v64, v65, v66);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v67 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v67;
      }

      goto LABEL_225;
    case 0xB565182:
      v46 = swix::decode_message::decode<unsigned int>(a2[1], "port");
      v47 = swix::decode_message::decode<unsigned int>(a2[1], "source");
      v48 = MIDIServerXPC_Server::portDisconnectSource(v46, v47);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v48 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v48;
      }

      goto LABEL_225;
    case 0xB565183:
      LODWORD(v127) = 0;
      object = xpc_null_create();
      LODWORD(v129) = 0;
      LODWORD(v127) = swix::decode_message::decode<unsigned int>(a2[1], "object");
      swix::xpcobj_coder<swix::string>::decode(&value, a2[1], "propertyID");
      swix::string::operator=(&object, &value);
      xpc_release(value);
      v27 = swix::decode_message::decode<int>(a2[1], "value");
      LODWORD(v129) = v27;
      v28 = MIDIServerXPC_Server::objectSetIntegerProperty(v127, object, v27);
      swix::encode_message::encode_message(&value, a2);
      swix::encode_message::operator=(a3, &value);
      xpc_release(xstring[0]);
      if ((v28 & 0x100000000) != 0)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v29);
      xpc_release(object);
      return;
    case 0xB565184:
      LODWORD(value) = 0;
      xstring[0] = xpc_null_create();
      LODWORD(value) = swix::decode_message::decode<unsigned int>(a2[1], "object");
      swix::xpcobj_coder<swix::string>::decode(&v127, a2[1], "propertyID");
      swix::string::operator=(xstring, &v127);
      xpc_release(v127);
      IntegerProperty = MIDIServerXPC_Server::objectGetIntegerProperty(value, xstring[0], v79);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if ((IntegerProperty & 0x100000000) != 0)
      {
        v81 = 0;
      }

      else
      {
        v81 = IntegerProperty;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v81);
      if (!v81)
      {
        xpc_dictionary_set_int64(a3[1], "value", IntegerProperty);
      }

      goto LABEL_206;
    case 0xB565185:
      LODWORD(v127) = 0;
      object = xpc_null_create();
      v129 = xpc_null_create();
      LODWORD(v127) = swix::decode_message::decode<unsigned int>(a2[1], "object");
      swix::xpcobj_coder<swix::string>::decode(&value, a2[1], "propertyID");
      swix::string::operator=(&object, &value);
      xpc_release(value);
      swix::xpcobj_coder<swix::string>::decode(&value, a2[1], "value");
      swix::string::operator=(&v129, &value);
      xpc_release(value);
      v83 = MIDIServerXPC_Server::objectSetStringProperty(v127, object, &v129, v82);
      swix::encode_message::encode_message(&value, a2);
      swix::encode_message::operator=(a3, &value);
      xpc_release(xstring[0]);
      if ((v83 & 0x100000000) != 0)
      {
        v84 = 0;
      }

      else
      {
        v84 = v83;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v84);
      std::tuple<unsigned int,swix::string,swix::string>::~tuple(&v127);
      return;
    case 0xB565186:
      LODWORD(value) = 0;
      xstring[0] = xpc_null_create();
      LODWORD(value) = swix::decode_message::decode<unsigned int>(a2[1], "object");
      swix::xpcobj_coder<swix::string>::decode(&v127, a2[1], "propertyID");
      swix::string::operator=(xstring, &v127);
      xpc_release(v127);
      MIDIServerXPC_Server::objectGetStringProperty(&v132, value, xstring[0]);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if (v133)
      {
        v106 = 0;
      }

      else
      {
        v106 = v132;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v106);
      if (!v106)
      {
        xpc_dictionary_set_value(a3[1], "value", v132);
      }

      if (v133 == 1)
      {
        xpc_release(v132);
      }

      goto LABEL_206;
    case 0xB565187:
      std::tuple<unsigned int,swix::string,swix::data>::tuple[abi:ne200100]<std::__is_implicitly_default_constructible,std::is_default_constructible,0>(&v127);
      LODWORD(v127) = swix::decode_message::decode<unsigned int>(a2[1], "object");
      swix::xpcobj_coder<swix::string>::decode(&value, a2[1], "propertyID");
      swix::string::operator=(&object, &value);
      xpc_release(value);
      swix::xpcobj_coder<swix::data>::decode(&value, a2[1], "value");
      swix::data::operator=(&v129, &value);
      xpc_release(value);
      v104 = MIDIServerXPC_Server::objectSetDataProperty(v127, object, &v129, v103);
      swix::encode_message::encode_message(&value, a2);
      swix::encode_message::operator=(a3, &value);
      xpc_release(xstring[0]);
      v51 = a3[1];
      if ((v104 & 0x100000000) != 0)
      {
        v52 = 0;
      }

      else
      {
        v52 = v104;
      }

      goto LABEL_182;
    case 0xB565188:
      LODWORD(value) = 0;
      xstring[0] = xpc_null_create();
      LODWORD(value) = swix::decode_message::decode<unsigned int>(a2[1], "object");
      swix::xpcobj_coder<swix::string>::decode(&v127, a2[1], "propertyID");
      swix::string::operator=(xstring, &v127);
      xpc_release(v127);
      MIDIServerXPC_Server::objectGetDataProperty(&v132, value, xstring[0]);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if (v133)
      {
        v22 = 0;
      }

      else
      {
        v22 = v132;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v22);
      if (!v22)
      {
        xpc_dictionary_set_value(a3[1], "value", v132);
      }

      if (v133 == 1)
      {
        xpc_release(v132);
      }

      goto LABEL_206;
    case 0xB565189:
      std::tuple<unsigned int,swix::string,swix::data>::tuple[abi:ne200100]<std::__is_implicitly_default_constructible,std::is_default_constructible,0>(&v127);
      LODWORD(v127) = swix::decode_message::decode<unsigned int>(a2[1], "object");
      swix::xpcobj_coder<swix::string>::decode(&value, a2[1], "propertyID");
      swix::string::operator=(&object, &value);
      xpc_release(value);
      swix::xpcobj_coder<swix::data>::decode(&value, a2[1], "value");
      swix::data::operator=(&v129, &value);
      xpc_release(value);
      v50 = MIDIServerXPC_Server::objectSetDictionaryProperty(v127, object, &v129, v49);
      swix::encode_message::encode_message(&value, a2);
      swix::encode_message::operator=(a3, &value);
      xpc_release(xstring[0]);
      v51 = a3[1];
      if ((v50 & 0x100000000) != 0)
      {
        v52 = 0;
      }

      else
      {
        v52 = v50;
      }

LABEL_182:
      xpc_dictionary_set_int64(v51, ".error", v52);
      std::tuple<unsigned int,swix::string,swix::data>::~tuple(&v127);
      return;
    case 0xB56518A:
      LODWORD(value) = 0;
      xstring[0] = xpc_null_create();
      LODWORD(value) = swix::decode_message::decode<unsigned int>(a2[1], "object");
      swix::xpcobj_coder<swix::string>::decode(&v127, a2[1], "propertyID");
      swix::string::operator=(xstring, &v127);
      xpc_release(v127);
      MIDIServerXPC_Server::objectGetDictionaryProperty(&v132, value, xstring[0]);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if (v133)
      {
        v112 = 0;
      }

      else
      {
        v112 = v132;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v112);
      if (!v112)
      {
        xpc_dictionary_set_value(a3[1], "value", v132);
      }

      if (v133 == 1)
      {
        xpc_release(v132);
      }

      goto LABEL_206;
    case 0xB56518B:
      LODWORD(value) = 0;
      xstring[0] = xpc_null_create();
      LODWORD(value) = swix::decode_message::decode<unsigned int>(a2[1], "object");
      swix::xpcobj_coder<swix::string>::decode(&v127, a2[1], "propertyID");
      swix::string::operator=(xstring, &v127);
      xpc_release(v127);
      v24 = MIDIServerXPC_Server::objectRemoveProperty(value, xstring[0], v23);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v25 = a3[1];
      if ((v24 & 0x100000000) != 0)
      {
        v26 = 0;
      }

      else
      {
        v26 = v24;
      }

      goto LABEL_156;
    case 0xB56518C:
      DiscoveryMUID = MIDIServerXPC_Server::capabilityGetDiscoveryMUID(v6);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      xpc_dictionary_set_int64(a3[1], ".error", 0);
      xpc_dictionary_set_uint64(a3[1], "muid", DiscoveryMUID);
      return;
    case 0xB56518D:
      v33 = swix::decode_message::decode<unsigned int>(a2[1], "muid");
      v34 = MIDIServerXPC_Server::capabilityMUIDCollides(v33);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      xpc_dictionary_set_int64(a3[1], ".error", 0);
      xpc_dictionary_set_BOOL(a3[1], "collides", v34 & 1);
      return;
    case 0xB56518E:
      MIDIServerXPC_Server::createSetup(v6);
    case 0xB56518F:
      value = xpc_null_create();
      swix::xpcobj_coder<swix::data>::decode(&v127, a2[1], "data");
      swix::data::operator=(&value, &v127);
      xpc_release(v127);
      v31 = MIDIServerXPC_Server::createSetupFromData(&value, v30);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if ((v31 & 0x100000000) != 0)
      {
        v32 = 0;
      }

      else
      {
        v32 = v31;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v32);
      if (!v32)
      {
        xpc_dictionary_set_uint64(a3[1], "setup", v31);
      }

      goto LABEL_221;
    case 0xB565190:
      v115 = swix::decode_message::decode<unsigned int>(a2[1], "setup");
      v116 = MIDIServerXPC_Server::installSetup(v115);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v116 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v116;
      }

      goto LABEL_225;
    case 0xB565191:
      CurrentSetup = MIDIServerXPC_Server::getCurrentSetup(v6);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if ((CurrentSetup & 0x100000000) != 0)
      {
        v114 = 0;
      }

      else
      {
        v114 = CurrentSetup;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v114);
      if (!v114)
      {
        xpc_dictionary_set_uint64(a3[1], "setup", CurrentSetup);
      }

      return;
    case 0xB565192:
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,swix::string,swix::string,swix::string>::__tuple_impl[abi:ne200100](&v127);
      swix::xpcobj_coder<swix::string>::decode(&value, a2[1], "name");
      swix::string::operator=(&v127, &value);
      xpc_release(value);
      swix::xpcobj_coder<swix::string>::decode(&value, a2[1], "manufacturer");
      swix::string::operator=(&object, &value);
      xpc_release(value);
      swix::xpcobj_coder<swix::string>::decode(&value, a2[1], "model");
      swix::string::operator=(&v129, &value);
      xpc_release(value);
      v41 = MIDIServerXPC_Server::createExternalDevice(v127, &object, &v129, v40);
      swix::encode_message::encode_message(&value, a2);
      swix::encode_message::operator=(a3, &value);
      xpc_release(xstring[0]);
      if ((v41 & 0x100000000) != 0)
      {
        v42 = 0;
      }

      else
      {
        v42 = v41;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v42);
      if (!v42)
      {
        xpc_dictionary_set_uint64(a3[1], "device", v41);
      }

      std::tuple<swix::string,swix::string,swix::string>::~tuple(&v127);
      return;
    case 0xB565193:
      LODWORD(v127) = 0;
      object = xpc_null_create();
      LODWORD(v129) = 0;
      BYTE4(v129) = 0;
      *v130 = 0;
      uint64 = 0;
      LODWORD(v127) = swix::decode_message::decode<unsigned int>(a2[1], "device");
      swix::xpcobj_coder<swix::string>::decode(&value, a2[1], "name");
      swix::string::operator=(&object, &value);
      xpc_release(value);
      LODWORD(v129) = swix::decode_message::decode<int>(a2[1], "proto");
      BYTE4(v129) = xpc_dictionary_get_BOOL(a2[1], "embedded");
      *v130 = xpc_dictionary_get_uint64(a2[1], "numSourceEndpoints");
      uint64 = xpc_dictionary_get_uint64(a2[1], "numDestinationEndpoints");
      v55 = MIDIServerXPC_Server::deviceAddEntity(v127, object, v129, BYTE4(v129), *v130, uint64);
      swix::encode_message::encode_message(&value, a2);
      swix::encode_message::operator=(a3, &value);
      xpc_release(xstring[0]);
      if ((v55 & 0x100000000) != 0)
      {
        v56 = 0;
      }

      else
      {
        v56 = v55;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v56);
      if (!v56)
      {
        xpc_dictionary_set_uint64(a3[1], "entity", v55);
      }

LABEL_178:
      xpc_release(object);
      return;
    case 0xB565194:
      v86 = swix::decode_message::decode<unsigned int>(a2[1], "device");
      v87 = swix::decode_message::decode<unsigned int>(a2[1], "entity");
      v88 = MIDIServerXPC_Server::deviceRemoveEntity(v86, v87);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v88 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v88;
      }

      goto LABEL_225;
    case 0xB565195:
      v57 = swix::decode_message::decode<unsigned int>(a2[1], "entity");
      v58 = xpc_dictionary_get_uint64(a2[1], "numSourceEndpoints");
      v59 = xpc_dictionary_get_uint64(a2[1], "numDestinationEndpoints");
      v60 = MIDIServerXPC_Server::entityAddOrRemoveEndpoints(v57, v58, v59);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v60 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v60;
      }

      goto LABEL_225;
    case 0xB565196:
      v120 = swix::decode_message::decode<unsigned int>(a2[1], "device");
      v121 = xpc_dictionary_get_BOOL(a2[1], "external");
      v122 = MIDIServerXPC_Server::setupAddDevice(v120, v121);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v122 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v122;
      }

      goto LABEL_225;
    case 0xB565197:
      v37 = swix::decode_message::decode<unsigned int>(a2[1], "device");
      v38 = xpc_dictionary_get_BOOL(a2[1], "external");
      v39 = MIDIServerXPC_Server::setupRemoveDevice(v37, v38);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v39 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v39;
      }

      goto LABEL_225;
    case 0xB565198:
      v105 = MIDIServerXPC_Server::midiRestart(v6);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v105 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v105;
      }

      goto LABEL_225;
    case 0xB565199:
      v117 = swix::decode_message::decode<unsigned int>(a2[1], "object");
      v118 = xpc_dictionary_get_BOOL(a2[1], "deep");
      MIDIServerXPC_Server::objectGetProperties(&value, v117, v118);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if (LOBYTE(xstring[0]))
      {
        v119 = 0;
      }

      else
      {
        v119 = value;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v119);
      if (!v119)
      {
        xpc_dictionary_set_value(a3[1], "properties", value);
      }

      if (LOBYTE(xstring[0]) == 1)
      {
        goto LABEL_221;
      }

      return;
    case 0xB56519A:
      v18 = swix::decode_message::decode<unsigned int>(a2[1], "destination");
      v19 = MIDIServerXPC_Server::flushOutput(v18);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v19 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v19;
      }

      goto LABEL_225;
    case 0xB56519B:
      value = xpc_null_create();
      xstring[0] = xpc_null_create();
      swix::xpcobj_coder<swix::string>::decode(&v127, a2[1], "persistentOwnerID");
      swix::string::operator=(&value, &v127);
      xpc_release(v127);
      swix::xpcobj_coder<swix::data>::decode(&v127, a2[1], "connectionParams");
      swix::data::operator=(xstring, &v127);
      xpc_release(v127);
      v95 = MIDIServerXPC_Server::createThruConnection(this[1], &value, xstring);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if ((v95 & 0x100000000) != 0)
      {
        v96 = 0;
      }

      else
      {
        v96 = v95;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v96);
      if (!v96)
      {
        xpc_dictionary_set_uint64(a3[1], "conn", v95);
      }

      std::tuple<swix::string,swix::data>::~tuple(&value);
      return;
    case 0xB56519C:
      v16 = swix::decode_message::decode<unsigned int>(a2[1], "conn");
      v17 = MIDIServerXPC_Server::disposeThruConnection(v16);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v17 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v17;
      }

      goto LABEL_225;
    case 0xB56519D:
      v14 = swix::decode_message::decode<unsigned int>(a2[1], "conn");
      MIDIServerXPC_Server::thruConnectionGetParams(&value, v14);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if (LOBYTE(xstring[0]))
      {
        v15 = 0;
      }

      else
      {
        v15 = value;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v15);
      if (!v15)
      {
        xpc_dictionary_set_value(a3[1], "params", value);
      }

      if (LOBYTE(xstring[0]) == 1)
      {
        goto LABEL_221;
      }

      return;
    case 0xB56519E:
      LODWORD(value) = 0;
      xstring[0] = xpc_null_create();
      LODWORD(value) = swix::decode_message::decode<unsigned int>(a2[1], "conn");
      swix::xpcobj_coder<swix::data>::decode(&v127, a2[1], "connectionParams");
      swix::data::operator=(xstring, &v127);
      xpc_release(v127);
      v44 = MIDIServerXPC_Server::thruConnectionSetParams(value, xstring, v43);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v25 = a3[1];
      if ((v44 & 0x100000000) != 0)
      {
        v26 = 0;
      }

      else
      {
        v26 = v44;
      }

      goto LABEL_156;
    case 0xB56519F:
      v132 = xpc_null_create();
      swix::xpcobj_coder<swix::string>::decode(&v127, a2[1], "persistentOwnerID");
      swix::string::operator=(&v132, &v127);
      xpc_release(v127);
      MIDIServerXPC_Server::thruConnectionFind(&value, v132);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if (LOBYTE(xstring[0]))
      {
        v68 = 0;
      }

      else
      {
        v68 = value;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v68);
      if (!v68)
      {
        xpc_dictionary_set_value(a3[1], "connectionList", value);
      }

      if (LOBYTE(xstring[0]) == 1)
      {
        xpc_release(value);
      }

      goto LABEL_17;
    case 0xB5651A0:
      v107 = swix::decode_message::decode<int>(a2[1], "uniqueID");
      v108 = MIDIServerXPC_Server::objectFindByUniqueID(v107);
      v110 = v109;
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if (v110)
      {
        v111 = 0;
      }

      else
      {
        v111 = v108;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v111);
      if (!v111)
      {
        xpc_dictionary_set_uint64(a3[1], "object", v108);
        xpc_dictionary_set_int64(a3[1], "objectType", v108 >> 32);
      }

      return;
    case 0xB5651A1:
      v8 = xpc_dictionary_get_BOOL(a2[1], "isBigEndian");
      MIDIServerXPC_Server::getObjectTree(&value, v8);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if (LOBYTE(xstring[0]))
      {
        v9 = 0;
      }

      else
      {
        v9 = value;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v9);
      if (!v9)
      {
        xpc_dictionary_set_value(a3[1], "data", value);
      }

      if (LOBYTE(xstring[0]) == 1)
      {
        goto LABEL_221;
      }

      return;
    case 0xB5651A2:
      LODWORD(value) = 0;
      xstring[0] = xpc_null_create();
      LODWORD(value) = swix::decode_message::decode<int>(a2[1], "objectType");
      swix::xpcobj_coder<swix::data>::decode(&v127, a2[1], "description");
      swix::data::operator=(xstring, &v127);
      xpc_release(v127);
      v20 = MIDIServerXPC_Server::umpciObjectCreate(this[1], value, xstring);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if ((v20 & 0x100000000) != 0)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v21);
      if (!v21)
      {
        xpc_dictionary_set_uint64(a3[1], "umpcioo", v20);
      }

LABEL_206:
      xpc_release(xstring[0]);
      return;
    case 0xB5651A3:
      v77 = swix::decode_message::decode<unsigned int>(a2[1], "umpcioo");
      v78 = MIDIServerXPC_Server::umpciObjectDispose(v77);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v78 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v78;
      }

      goto LABEL_225;
    case 0xB5651A4:
      LODWORD(value) = 0;
      xstring[0] = xpc_null_create();
      LODWORD(value) = swix::decode_message::decode<unsigned int>(a2[1], "umpcioo");
      swix::xpcobj_coder<swix::data>::decode(&v127, a2[1], "description");
      swix::data::operator=(xstring, &v127);
      xpc_release(v127);
      v92 = MIDIServerXPC_Server::umpciObjectSetDescription(value, xstring, v91);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v25 = a3[1];
      if ((v92 & 0x100000000) != 0)
      {
        v26 = 0;
      }

      else
      {
        v26 = v92;
      }

LABEL_156:
      xpc_dictionary_set_int64(v25, ".error", v26);
      xpc_release(xstring[0]);
      return;
    case 0xB5651A5:
      v123 = swix::decode_message::decode<unsigned int>(a2[1], "umpcioo");
      v124 = xpc_dictionary_get_BOOL(a2[1], "enableState");
      v125 = MIDIServerXPC_Server::umpciObjectSetEnableState(v123, v124);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if ((v125 & 0x100000000) != 0)
      {
        v126 = 0;
      }

      else
      {
        v126 = v125;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v126);
      return;
    case 0xB5651A6:
      MIDIServerXPC_Server::umpciGlobalState(&value);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if (LOBYTE(xstring[0]))
      {
        v85 = 0;
      }

      else
      {
        v85 = value;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v85);
      if (!v85)
      {
        xpc_dictionary_set_value(a3[1], "value", value);
      }

      if (LOBYTE(xstring[0]) == 1)
      {
LABEL_221:
        xpc_release(value);
      }

      return;
    case 0xB5651A7:
      v11 = MIDIServerXPC_Server::umpciDiscover(v6);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      v12 = a3[1];
      if ((v11 & 0x100000000) != 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v11;
      }

LABEL_225:
      xpc_dictionary_set_int64(v12, ".error", v13);
      break;
    case 0xB5651A8:
      v132 = xpc_null_create();
      swix::xpcobj_coder<swix::data>::decode(&v127, a2[1], "data");
      swix::data::operator=(&v132, &v127);
      xpc_release(v127);
      MIDIServerXPC_Server::umpciServerSideMIDICITransaction(&value, &v132);
      swix::encode_message::encode_message(&v127, a2);
      swix::encode_message::operator=(a3, &v127);
      xpc_release(object);
      if (LOBYTE(xstring[0]))
      {
        v10 = 0;
      }

      else
      {
        v10 = value;
      }

      xpc_dictionary_set_int64(a3[1], ".error", v10);
      if (!v10)
      {
        xpc_dictionary_set_value(a3[1], "value", value);
      }

      if (LOBYTE(xstring[0]) == 1)
      {
        xpc_release(value);
      }

LABEL_17:
      xpc_release(v132);
      break;
    default:
      return;
  }
}

void sub_237264104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15, char a16, xpc_object_t a17, xpc_object_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *swix::encode_message::operator=(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a2[1];
  a2[1] = xpc_null_create();
  v5 = a1[1];
  a1[1] = v4;
  xpc_release(v5);
  a1[2] = a2[2];
  return a1;
}

xpc_object_t swix::xpcobj_coder<applesauce::xpc::object>::decode(void *a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "ioPort");
  *a1 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a1 = result;
  return result;
}

void swix::xpcobj_coder<swix::string>::decode(xpc_object_t *a1, xpc_object_t xdict, char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  if (value)
  {
    v5 = value;
    xpc_retain(value);
    *a1 = v5;
  }

  else
  {
    v5 = xpc_null_create();
    *a1 = v5;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (MEMORY[0x2383C9190](v5) == MEMORY[0x277D864C0])
  {
    xpc_retain(v5);
    goto LABEL_7;
  }

LABEL_5:
  *a1 = xpc_null_create();
LABEL_7:
  xpc_release(v5);
}

void **swix::string::operator=(void **a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = *a1;
  *a1 = v3;
  xpc_release(v4);
  return a1;
}

uint64_t swix::decode_message::decode<unsigned int>(void *a1, const char *a2)
{
  result = xpc_dictionary_get_uint64(a1, a2);
  if (HIDWORD(result))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_284A463D8;
  }

  return result;
}

swix::decode_message *swix::decode_message::decode_message(swix::decode_message *this, const swix::decode_message *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  *(this + 1) = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    *(this + 1) = xpc_null_create();
  }

  v5 = *(a2 + 3);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = v5;
  return this;
}

uint64_t MIDIServerXPC_Server::dispatch_message(swix::decode_message const&)::$_0::~$_0(uint64_t a1)
{
  *(a1 + 32) = &unk_284A45A00;
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

int64_t swix::decode_message::decode<int>(void *a1, const char *a2)
{
  result = xpc_dictionary_get_int64(a1, a2);
  if (result != result)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_284A463D8;
  }

  return result;
}

uint64_t swix::coder<IPCPtr>::decode(void *a1)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, "connRefCon", &length);
  result = 0;
  if (length == 8 && data != 0)
  {
    return *data;
  }

  return result;
}

uint64_t std::tuple<unsigned int,swix::string,swix::string>::~tuple(uint64_t a1)
{
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

uint64_t std::tuple<unsigned int,swix::string,swix::data>::tuple[abi:ne200100]<std::__is_implicitly_default_constructible,std::is_default_constructible,0>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 8) = xpc_null_create();
  *(a1 + 16) = 0;
  *(a1 + 16) = xpc_null_create();
  return a1;
}

void **swix::data::operator=(void **a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = *a1;
  *a1 = v3;
  xpc_release(v4);
  return a1;
}

uint64_t std::tuple<unsigned int,swix::string,swix::data>::~tuple(uint64_t a1)
{
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

xpc_object_t *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,swix::string,swix::string,swix::string>::__tuple_impl[abi:ne200100](xpc_object_t *a1)
{
  *a1 = 0;
  *a1 = xpc_null_create();
  a1[1] = 0;
  a1[1] = xpc_null_create();
  a1[2] = 0;
  a1[2] = xpc_null_create();
  return a1;
}

xpc_object_t *std::tuple<swix::string,swix::string,swix::string>::~tuple(xpc_object_t *a1)
{
  xpc_release(a1[2]);
  a1[2] = 0;
  xpc_release(a1[1]);
  a1[1] = 0;
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

xpc_object_t *std::tuple<swix::string,swix::data>::~tuple(xpc_object_t *a1)
{
  xpc_release(a1[1]);
  a1[1] = 0;
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void _ZNSt3__110__function6__funcIZN20MIDIServerXPC_Server16dispatch_messageERKN4swix14decode_messageEE3__0NS_9allocatorIS7_EEFvNS3_6resultIJEEEEEclEOSB_(uint64_t a1, int *a2)
{
  if ((a2[1] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v5 = *a2;
    *exception = &unk_284A45930;
    exception[2] = v5;
  }

  swix::encode_message::encode_message(v6, (a1 + 8));
  swix::connection::send((a1 + 40), v6);
  xpc_release(object);
}

void _ZNSt3__110__function6__funcIZN20MIDIServerXPC_Server16dispatch_messageERKN4swix14decode_messageEE3__0NS_9allocatorIS7_EEFvNS3_6resultIJEEEEE18destroy_deallocateEv(uint64_t a1)
{
  *(a1 + 40) = &unk_284A45A00;
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  xpc_release(*(a1 + 16));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN20MIDIServerXPC_Server16dispatch_messageERKN4swix14decode_messageEE3__0NS_9allocatorIS7_EEFvNS3_6resultIJEEEEE7destroyEv(uint64_t a1)
{
  *(a1 + 40) = &unk_284A45A00;
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
}

xpc_object_t _ZNKSt3__110__function6__funcIZN20MIDIServerXPC_Server16dispatch_messageERKN4swix14decode_messageEE3__0NS_9allocatorIS7_EEFvNS3_6resultIJEEEEE7__cloneEPNS0_6__baseISC_EE(void *a1, void *a2)
{
  *a2 = &unk_284A45780;
  a2[1] = a1[1];
  v4 = a1[2];
  a2[2] = v4;
  if (v4)
  {
    result = xpc_retain(v4);
  }

  else
  {
    result = xpc_null_create();
    a2[2] = result;
  }

  v6 = a1[4];
  a2[3] = a1[3];
  a2[4] = v6;
  v8 = a1[6];
  v7 = a1[7];
  a2[5] = &unk_284A45A00;
  a2[6] = v8;
  a2[7] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN20MIDIServerXPC_Server16dispatch_messageERKN4swix14decode_messageEE3__0NS_9allocatorIS7_EEFvNS3_6resultIJEEEEED0Ev(uint64_t a1)
{
  *a1 = &unk_284A45780;
  *(a1 + 40) = &unk_284A45A00;
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;

  JUMPOUT(0x2383C8250);
}

uint64_t _ZNSt3__110__function6__funcIZN20MIDIServerXPC_Server16dispatch_messageERKN4swix14decode_messageEE3__0NS_9allocatorIS7_EEFvNS3_6resultIJEEEEED1Ev(uint64_t a1)
{
  *a1 = &unk_284A45780;
  *(a1 + 40) = &unk_284A45A00;
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  return a1;
}

void MIDIServerXPC_Server::~MIDIServerXPC_Server(MIDIServerXPC_Server *this)
{
  v2 = *(this + 1);
  *this = &unk_284A459B0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x2383C8250);
}

{
  v2 = *(this + 1);
  *this = &unk_284A459B0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t std::optional<swix::connection_config>::optional[abi:ne200100](uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = *(a2 + 6);
    v6 = xpc_null_create();
    *(a1 + 56) = *(a2 + 7);
    *(a2 + 6) = v6;
    *(a2 + 7) = 0;
    v7 = *(a2 + 8);
    *(a1 + 72) = *(a2 + 36);
    *(a1 + 64) = v7;
    *(a1 + 80) = 0;
    *(a1 + 120) = 0;
    if (*(a2 + 120) == 1)
    {
      *(a1 + 80) = *(a2 + 10);
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a1 + 88, a2 + 88);
      *(a1 + 120) = 1;
    }

    *(a1 + 128) = 1;
  }

  return a1;
}

void sub_23726565C(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    _ZNKSt3__18functionIFvN4swix6resultIJEEEEEclES3_(*(v2 + 56), v4[4]);
  }

  else
  {
    _ZNKSt3__18functionIFvN4swix6resultIJEEEEEclES3_(*(v2 + 56), 4294966994);
  }

  __cxa_end_catch();
}

uint64_t _ZNSt3__110__function12__value_funcIFvN4swix6resultIJEEEEEC2B8ne200100ERKS6_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t swix::result<swix::data>::result(uint64_t a1, xpc_object_t object)
{
  *a1 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  *(a1 + 8) = 1;
  return a1;
}

unint64_t MIDIServerXPC_Client::setupAddDevice(MIDIServerXPC_Client *this, unsigned int a2, BOOL a3)
{
  swix::encode_message::encode_message(&v11, 190206358);
  xpc_dictionary_set_uint64(xdict, "device", a2);
  xpc_dictionary_set_BOOL(xdict, "external", a3);
  v6 = *(this + 1);
  if (!v6)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v9, v6, &v11);
  v7 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  xpc_release(xdict);
  return ((v7 == 0) << 32) | v7;
}

void sub_237265884(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x237265854);
}

unint64_t MIDIServerXPC_Client::setupRemoveDevice(MIDIServerXPC_Client *this, unsigned int a2, BOOL a3)
{
  swix::encode_message::encode_message(&v11, 190206359);
  xpc_dictionary_set_uint64(xdict, "device", a2);
  xpc_dictionary_set_BOOL(xdict, "external", a3);
  v6 = *(this + 1);
  if (!v6)
  {
    std::terminate();
  }

  swix::connection::send_and_await_reply(v9, v6, &v11);
  v7 = swix::decode_message::decode<int>(object, ".error");
  xpc_release(object);
  xpc_release(xdict);
  return ((v7 == 0) << 32) | v7;
}

void sub_2372659A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x237265970);
}

uint64_t _XNotify(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v6 = -304;
LABEL_9:
    *(a2 + 32) = v6;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v6 = -300;
    goto LABEL_9;
  }

  v4 = *(result + 28);
  if (gInMIDIServer)
  {
    v5 = 0;
  }

  else
  {
    v5 = MIDIProcess::defaultInstance(result);
  }

  v7 = (**v5)(v5);
  if (!v7)
  {
    std::terminate();
  }

  v8 = v7;
  result = MIDIProcess::Notify(v7, v4, v3);
  v9 = result;
  if (!result)
  {
    v10 = *(v8 + 117);
    msg.msgh_size = 0;
    msg.msgh_bits = 19;
    msg.msgh_remote_port = v10;
    msg.msgh_local_port = 0;
    *&msg.msgh_voucher_port = 0x1F4100000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&msg);
    }

    v11 = mach_msg(&msg, 17, 0x18u, 0, 0, 0x493E0u, 0);
    v12 = MEMORY[0x277D85F48];
    if (v11 == 268435460)
    {
      if ((msg.msgh_bits & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x277D85F48], msg.msgh_local_port);
      }

      mach_msg_destroy(&msg);
    }

    result = MEMORY[0x2383C8F80](*v12, v4, v3);
  }

  *(a2 + 32) = v9;
  return result;
}

uint64_t (*MIDIClientCallbacks_server_routine(uint64_t a1))(uint64_t result, uint64_t a2)
{
  if (*(a1 + 20) == 8000)
  {
    return _XNotify;
  }

  else
  {
    return 0;
  }
}

uint64_t MIDIClient_SetupAddDevice(int a1, int a2, int a3)
{
  *&msg[20] = 0u;
  v11 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  LODWORD(v11) = a3;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F6200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = reply_port;
  }

  v6 = mach_msg(msg, 275, 0x28u, 0x2Cu, v5, 0x493E0u, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v6)
    {
      if (*&msg[20] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&msg[20] == 8134)
      {
        v8 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v8 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v8;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v8 = 268435460;
  if (v7 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v7;
}

uint64_t MIDIClient_SetupRemoveDevice(int a1, int a2, int a3)
{
  *&msg[20] = 0u;
  v11 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  LODWORD(v11) = a3;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F6300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = reply_port;
  }

  v6 = mach_msg(msg, 275, 0x28u, 0x2Cu, v5, 0x493E0u, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v6)
    {
      if (*&msg[20] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&msg[20] == 8135)
      {
        v8 = 4294966996;
        if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
        {
          v8 = *&msg[32];
          if (!*&msg[32])
          {
            return 0;
          }
        }
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_21:
      mach_msg_destroy(msg);
      return v8;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v8 = 268435460;
  if (v7 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_21;
  }

  return v7;
}

uint64_t MIDIClient_ThruConnectionCreate(mach_port_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, int *a6)
{
  v50 = *MEMORY[0x277D85DE8];
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
  v22 = 0u;
  v23 = 0u;
  *&v21[8] = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v18 = 1;
  v19 = a4;
  v20 = 16777472;
  *v21 = a5;
  *&v21[4] = *MEMORY[0x277D85EF8];
  if (a3 > 0x200)
  {
    return 4294966989;
  }

  __memcpy_chk();
  *&v21[12] = a3;
  v11 = (a3 + 3) & 0x7FC;
  *(&reply_port + v11 + 56) = a5;
  v12 = mig_get_reply_port();
  reply_port.msgh_remote_port = a1;
  reply_port.msgh_local_port = v12;
  reply_port.msgh_bits = -2147478253;
  *&reply_port.msgh_voucher_port = 0x1F6400000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&reply_port);
    msgh_local_port = reply_port.msgh_local_port;
  }

  else
  {
    msgh_local_port = v12;
  }

  v14 = mach_msg(&reply_port, 275, v11 + 60, 0x30u, msgh_local_port, 0x493E0u, 0);
  v6 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port.msgh_local_port);
    goto LABEL_22;
  }

  if (!v14)
  {
    if (reply_port.msgh_id == 71)
    {
      v6 = 4294966988;
    }

    else if (reply_port.msgh_id == 8136)
    {
      if ((reply_port.msgh_bits & 0x80000000) == 0)
      {
        if (reply_port.msgh_size == 40)
        {
          if (!reply_port.msgh_remote_port)
          {
            v6 = HIDWORD(v19);
            if (!HIDWORD(v19))
            {
              *a6 = v20;
              return v6;
            }

            goto LABEL_30;
          }
        }

        else if (reply_port.msgh_size == 36)
        {
          if (reply_port.msgh_remote_port)
          {
            v15 = 1;
          }

          else
          {
            v15 = HIDWORD(v19) == 0;
          }

          if (v15)
          {
            v6 = 4294966996;
          }

          else
          {
            v6 = HIDWORD(v19);
          }

          goto LABEL_30;
        }
      }

      v6 = 4294966996;
    }

    else
    {
      v6 = 4294966995;
    }

LABEL_30:
    mach_msg_destroy(&reply_port);
    return v6;
  }

  mig_dealloc_reply_port(reply_port.msgh_local_port);
LABEL_22:
  if (v6 == 268435460)
  {
    if ((reply_port.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], reply_port.msgh_local_port);
    }

    mach_msg_destroy(&reply_port);
    return 268435460;
  }

  return v6;
}

void _XUMPCIServerSideMIDICITransaction(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v7 = -304;
LABEL_9:
    *(a2 + 32) = v7;
    goto LABEL_10;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v7 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777472;
  v3 = *(a1 + 28);
  v4 = *(a1 + 40);
  v11 = v3;
  v12 = v4;
  v13 = 0;
  v14 = 0;
  v5 = IPCBufferReader::ReadCFPropertyList(&v11, 0);
  v10 = 0;
  v6 = _UMPCIServerSideMIDICITransaction(v5, &v10);
  if (v6)
  {
    IPCBufferReader::~IPCBufferReader(&v11);
  }

  else
  {
    MEMORY[0x2383C8F80](*MEMORY[0x277D85F48], v3, v4);
    LODWORD(v9[0]) = 1;
    v9[1] = 0;
    v8 = v10;
    v6 = IPCBufferWriter::write(v9, v10, (a2 + 28), (a2 + 52));
    CFRelease(v8);
    IPCBufferWriter::~IPCBufferWriter(v9);
    IPCBufferReader::~IPCBufferReader(&v11);
    if (!v6)
    {
      *(a2 + 40) = *(a2 + 52);
      *(a2 + 44) = *MEMORY[0x277D85EF8];
      *a2 |= 0x80000000;
      *(a2 + 4) = 56;
      *(a2 + 24) = 1;
      return;
    }
  }

  *(a2 + 32) = v6;
LABEL_10:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

void sub_2372662C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  IPCBufferWriter::~IPCBufferWriter(va);
  IPCBufferReader::~IPCBufferReader(va1);
  _Unwind_Resume(a1);
}

uint64_t _XUMPCIDiscover(MIDIServer *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 1) != 36)
  {
    result = 4294966992;
  }

  else
  {
    result = _UMPCIDiscover(a1);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

void _XUMPCIGlobalState(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
  }

  else
  {
    *(a2 + 36) = 16777472;
    cf = 0;
    v3 = _UMPCIGlobalState(&cf);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      LODWORD(v5[0]) = 1;
      v5[1] = 0;
      v4 = IPCBufferWriter::write(v5, cf, (a2 + 28), (a2 + 52));
      CFRelease(cf);
      IPCBufferWriter::~IPCBufferWriter(v5);
      if (!v4)
      {
        *(a2 + 40) = *(a2 + 52);
        *(a2 + 44) = *MEMORY[0x277D85EF8];
        *a2 |= 0x80000000;
        *(a2 + 4) = 56;
        *(a2 + 24) = 1;
        return;
      }
    }

    *(a2 + 32) = v4;
  }

  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

uint64_t _XUMPCIObjectSetEnableState(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 40)
  {
    result = 4294966992;
  }

  else
  {
    result = _UMPCIObjectSetEnableState(*(a1 + 32), *(a1 + 36));
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

void _XUMPCIObjectSetDescription(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 60)
  {
    if (*(a1 + 39) == 1 && (v3 = *(a1 + 40), v3 == *(a1 + 56)))
    {
      v4 = *(a1 + 52);
      v5 = *(a1 + 28);
      v8 = v5;
      v9 = v3;
      v10 = 0;
      v11 = 0;
      v6 = IPCBufferReader::ReadCFPropertyList(&v8, 0);
      v7 = _UMPCIObjectSetDescription(v4, v6);
      if (!v7)
      {
        MEMORY[0x2383C8F80](*MEMORY[0x277D85F48], v5, v3);
      }

      IPCBufferReader::~IPCBufferReader(&v8);
    }

    else
    {
      v7 = -300;
    }
  }

  else
  {
    v7 = -304;
  }

  *(a2 + 32) = v7;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

void sub_237266584(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

uint64_t _XUMPCIObjectDispose(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    result = 4294966992;
  }

  else
  {
    result = _UMPCIObjectDispose(a1[8]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XUMPCIObjectCreate(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 60)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 56)))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(result + 60) || *(result + 64) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v5 = *(result + 52);
  v6 = *(result + 28);
  v7 = *(result + 96);
  v8[0] = *(result + 80);
  v8[1] = v7;
  result = MIDIServer_UMPCIObjectCreate(v8, v5, v6, v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XCIMUIDCollides(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    result = 4294966992;
  }

  else
  {
    result = _MIDICapabilityMUIDCollides(a1[8]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

MIDIServer *_XCIGetDiscoveryMUID(MIDIServer *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 1) != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }

  else
  {
    result = _MIDICapabilityGetDiscoveryMUID(result);
    *(a2 + 32) = 0;
    *(a2 + 36) = result;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    *(a2 + 4) = 40;
  }

  return result;
}

void _XThruConnectionFind(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && (v3 = *(a1 + 4), (v3 - 549) >= 0xFFFFFDFF) && ((v4 = *(a1 + 32), v4 <= 0x200) ? (v5 = v3 - 36 >= v4) : (v5 = 0), (v6 = ((v4 + 3) & 0x7FC) + 36, v5) ? (v7 = v3 == v6) : (v7 = 0), v7))
  {
    *(a2 + 36) = 16777473;
    v8 = *(a1 + 32);
    v12 = a1 + 36;
    v13 = v8;
    v14 = 0;
    v15 = CFStringCreateWithBytes(0, (a1 + 36), v8, 0x100u, 1u);
    cf = 0;
    v9 = _MIDIThruConnectionFind(v15, &cf);
    if (v9)
    {
      IPCBufferReader::~IPCBufferReader(&v12);
    }

    else
    {
      LODWORD(v10[0]) = 1;
      v10[1] = 0;
      v9 = IPCBufferWriter::write(v10, cf, (a2 + 28), (a2 + 52));
      CFRelease(cf);
      IPCBufferWriter::~IPCBufferWriter(v10);
      IPCBufferReader::~IPCBufferReader(&v12);
      if (!v9)
      {
        *(a2 + 40) = *(a2 + 52);
        *(a2 + 44) = *MEMORY[0x277D85EF8];
        *a2 |= 0x80000000;
        *(a2 + 4) = 56;
        *(a2 + 24) = 1;
        return;
      }
    }

    *(a2 + 32) = v9;
  }

  else
  {
    *(a2 + 32) = -304;
  }

  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

void sub_2372668F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  IPCBufferWriter::~IPCBufferWriter(va);
  IPCBufferReader::~IPCBufferReader(va1);
  _Unwind_Resume(a1);
}

void _XThruConnectionSetParams(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 60)
  {
    if (*(a1 + 39) == 1 && (v3 = *(a1 + 40), v3 == *(a1 + 56)))
    {
      v4 = *(a1 + 52);
      v5 = *(a1 + 28);
      v7 = v5;
      v8 = v3;
      v9 = 0;
      v10 = CFDataCreate(0, v5, v3);
      v6 = _MIDIThruConnectionSetParams(v4, v10);
      if (!v6)
      {
        MEMORY[0x2383C8F80](*MEMORY[0x277D85F48], v5, v3);
      }

      IPCBufferReader::~IPCBufferReader(&v7);
    }

    else
    {
      v6 = -300;
    }
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

void sub_237266A04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

void _XThruConnectionGetParams(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
  }

  else
  {
    *(a2 + 36) = 16777473;
    v3 = a1[8];
    cf = 0;
    Params = _MIDIThruConnectionGetParams(v3, &cf);
    if (Params)
    {
      v5 = Params;
    }

    else
    {
      LODWORD(v6[0]) = 1;
      v6[1] = 0;
      v5 = IPCBufferWriter::write(v6, cf, (a2 + 28), (a2 + 52));
      CFRelease(cf);
      IPCBufferWriter::~IPCBufferWriter(v6);
      if (!v5)
      {
        *(a2 + 40) = *(a2 + 52);
        *(a2 + 44) = *MEMORY[0x277D85EF8];
        *a2 |= 0x80000000;
        *(a2 + 4) = 56;
        *(a2 + 24) = 1;
        return;
      }
    }

    *(a2 + 32) = v5;
  }

  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

uint64_t _XThruConnectionDispose(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    result = 4294966992;
  }

  else
  {
    result = _MIDIThruConnectionDispose(a1[8]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XThruConnectionCreate(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(result + 24) != 1)
  {
    goto LABEL_3;
  }

  v4 = *(result + 4);
  if ((v4 - 573) < 0xFFFFFDFF)
  {
    goto LABEL_3;
  }

  if (*(result + 39) != 1)
  {
    goto LABEL_16;
  }

  v5 = *(result + 52);
  if (v5 > 0x200)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
LABEL_4:
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return result;
  }

  v3 = -304;
  if (v4 - 60 < v5)
  {
    goto LABEL_3;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 != v6 + 60)
  {
    goto LABEL_3;
  }

  v7 = *(result + 40);
  if (v7 != *(result + v6 + 56))
  {
LABEL_16:
    v3 = -300;
    goto LABEL_3;
  }

  v8 = ((v4 + 3) & 0x7FC) + result;
  if (*v8 || *(v8 + 4) <= 0x1Fu)
  {
    *(a2 + 32) = -309;
    goto LABEL_4;
  }

  v9 = *(result + 28);
  v10 = *(v8 + 36);
  v11[0] = *(v8 + 20);
  v11[1] = v10;
  result = MIDIServer_ThruConnectionCreate(v11, (result + 56), v5, v9, v7, a2 + 36);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XSetupRemoveDevice(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 40)
  {
    result = 4294966992;
  }

  else if (a1[9])
  {
    result = _MIDISetupRemoveExternalDevice(a1[8]);
  }

  else
  {
    result = _MIDISetupRemoveDevice(a1[8]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XSetupAddDevice(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 40)
  {
    result = 4294966992;
  }

  else if (a1[9])
  {
    result = _MIDISetupAddExternalDevice(a1[8]);
  }

  else
  {
    result = _MIDISetupAddDevice(a1[8]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XEntityAddOrRemoveEndpoints(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 44)
  {
    result = 4294966992;
  }

  else
  {
    result = _MIDIEntityAddOrRemoveEndpoints(a1[8], a1[9], a1[10]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XDeviceRemoveEntity(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 40)
  {
    result = 4294966992;
  }

  else
  {
    result = _MIDIDeviceRemoveEntity(a1[8], a1[9]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

void _XDeviceAddEntity(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && (v3 = *(a1 + 4), (v3 - 569) >= 0xFFFFFDFF) && (v4 = *(a1 + 36), v4 <= 0x200) && ((v5 = (v4 + 3) & 0xFFFFFFFC, v3 - 56 >= v4) ? (v6 = v3 == v5 + 56) : (v6 = 0), v6))
  {
    v7 = *(a1 + 32);
    v8 = (a1 + v5);
    v9 = v8[10];
    v10 = v8[11];
    v11 = v8[12];
    v12 = v8[13];
    v13 = a1 + 40;
    v14 = v4;
    v15 = 0;
    v16 = CFStringCreateWithBytes(0, (a1 + 40), v4, 0x100u, 1u);
    LODWORD(v7) = _MIDIDeviceAddEntity(v7, v16, v9, v10, v11, v12, a2 + 36);
    IPCBufferReader::~IPCBufferReader(&v13);
    *(a2 + 32) = v7;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    if (!v7)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }
}

void sub_237266F54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

uint64_t _XExternalDeviceCreate(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = *(result + 4), v3 - 1581 >= 0xFFFFF9FF) && (v4 = *(result + 32), v4 <= 0x200) && ((v5 = (v4 + 3) & 0xFFFFFFFC, v3 - 44 >= v4) ? (v6 = v3 >= v5 + 44) : (v6 = 0), v6 && (v7 = result + v5, v8 = *(v7 + 36), v8 <= 0x200) && ((v9 = v3 - v5, v10 = (v8 + 3) & 0xFFFFFFFC, v9 - 44 >= v8) ? (v11 = v9 >= v10 + 44) : (v11 = 0), v11 && ((v12 = v7 - 512, v13 = v9 - v10, v14 = v7 - 512 + v10, v15 = *(v14 + 552), v15 <= 0x200) ? (v16 = v13 - 44 >= v15) : (v16 = 0), v16 ? (v17 = v13 == ((v15 + 3) & 0x7FC) + 44) : (v17 = 0), v17))))
  {
    result = MIDIServer_ExternalDeviceCreate((result + 36), v4, (v12 + 552), v8, (v14 + 556), v15, (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }

  return result;
}

_DWORD *_XSetupGetCurrent(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }

  else
  {
    result = _MIDISetupGetCurrent((a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t _XSetupInstall(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    result = 4294966992;
  }

  else
  {
    result = _MIDISetupInstall(a1[8]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

void _XSetupFromData(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v6 = -304;
LABEL_9:
    *(a2 + 32) = v6;
    goto LABEL_10;
  }

  if (*(a1 + 39) != 1 || (v3 = *(a1 + 40), v3 != *(a1 + 52)))
  {
    v6 = -300;
    goto LABEL_9;
  }

  v4 = *(a1 + 28);
  v7 = v4;
  v8 = v3;
  v9 = 0;
  v10 = CFDataCreate(0, v4, v3);
  v5 = _MIDISetupFromData(v10, a2 + 36);
  if (!v5)
  {
    MEMORY[0x2383C8F80](*MEMORY[0x277D85F48], v4, v3);
    IPCBufferReader::~IPCBufferReader(&v7);
    *(a2 + 32) = 0;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    *(a2 + 4) = 40;
    return;
  }

  IPCBufferReader::~IPCBufferReader(&v7);
  *(a2 + 32) = v5;
LABEL_10:
  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

void sub_23726725C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

_DWORD *_XSetupCreate(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && result[1] == 24)
  {
    _MIDISetupCreate((a2 + 36));
  }

  *(a2 + 32) = -304;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XRestart(MIDIServer *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 1) != 36)
  {
    result = 4294966992;
  }

  else
  {
    result = _MIDIRestart(a1);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t _XFlushOutput(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    result = 4294966992;
  }

  else
  {
    result = _MIDIFlushOutput(a1[8]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

_DWORD *_XObjectFindByUniqueID(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }

  else
  {
    result = _MIDIObjectFindByUniqueID(result[8], (a2 + 36), (a2 + 40));
    *(a2 + 32) = result;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    if (!result)
    {
      *(a2 + 4) = 44;
    }
  }

  return result;
}

void _XObjectRemoveProperty(uint64_t a1, uint64_t a2)
{
  v3 = -304;
  if ((*a1 & 0x80000000) == 0)
  {
    v4 = *(a1 + 4);
    if ((v4 - 553) >= 0xFFFFFDFF)
    {
      v5 = *(a1 + 36);
      v6 = v5 <= 0x200 && v4 - 40 >= v5;
      if (v6 && v4 == ((v5 + 3) & 0x7FC) + 40)
      {
        v7 = *(a1 + 32);
        v8 = a1 + 40;
        v9 = v5;
        v10 = 0;
        v11 = CFStringCreateWithBytes(0, (a1 + 40), v5, 0x100u, 1u);
        v3 = _MIDIObjectRemoveProperty(v7, v11);
        IPCBufferReader::~IPCBufferReader(&v8);
      }
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

void sub_2372674D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

void _XObjectGetProperties(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 40)
  {
    *(a2 + 32) = -304;
  }

  else
  {
    *(a2 + 36) = 16777473;
    v3 = *(a1 + 32);
    v4 = *(a1 + 36);
    cf = 0;
    Properties = _MIDIObjectGetProperties(v3, &cf, v4);
    if (Properties)
    {
      v6 = Properties;
    }

    else
    {
      LODWORD(v7[0]) = 1;
      v7[1] = 0;
      v6 = IPCBufferWriter::write(v7, cf, (a2 + 28), (a2 + 52));
      CFRelease(cf);
      IPCBufferWriter::~IPCBufferWriter(v7);
      if (!v6)
      {
        *(a2 + 40) = *(a2 + 52);
        *(a2 + 44) = *MEMORY[0x277D85EF8];
        *a2 |= 0x80000000;
        *(a2 + 4) = 56;
        *(a2 + 24) = 1;
        return;
      }
    }

    *(a2 + 32) = v6;
  }

  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

uint64_t _XObjectSetDictionaryProperty(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(result + 24) == 1)
  {
    v4 = *(result + 4);
    if ((v4 - 577) >= 0xFFFFFDFF)
    {
      if (*(result + 39) != 1)
      {
        goto LABEL_12;
      }

      v5 = *(result + 56);
      if (v5 > 0x200)
      {
LABEL_2:
        v3 = -304;
        goto LABEL_3;
      }

      v3 = -304;
      if (v4 - 64 >= v5)
      {
        v6 = (v5 + 3) & 0xFFFFFFFC;
        if (v4 == v6 + 64)
        {
          v7 = *(result + 40);
          if (v7 == *(result + v6 + 60))
          {
            result = MIDIServer_ObjectSetDictionaryProperty(*(result + 52), (result + 60), v5, *(result + 28), v7);
            v3 = result;
            goto LABEL_3;
          }

LABEL_12:
          v3 = -300;
        }
      }
    }
  }

LABEL_3:
  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

void _XObjectGetDictionaryProperty(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && (v3 = *(a1 + 4), (v3 - 553) >= 0xFFFFFDFF) && ((v4 = *(a1 + 36), v4 <= 0x200) ? (v5 = v3 - 40 >= v4) : (v5 = 0), (v6 = ((v4 + 3) & 0x7FC) + 40, v5) ? (v7 = v3 == v6) : (v7 = 0), v7))
  {
    *(a2 + 36) = 16777473;
    v9 = *(a1 + 32);
    v8 = *(a1 + 36);
    v13 = a1 + 40;
    v14 = v8;
    v15 = 0;
    v16 = CFStringCreateWithBytes(0, (a1 + 40), v8, 0x100u, 1u);
    cf = 0;
    DictionaryProperty = _MIDIObjectGetDictionaryProperty(v9, v16, &cf);
    if (DictionaryProperty)
    {
      IPCBufferReader::~IPCBufferReader(&v13);
    }

    else
    {
      LODWORD(v11[0]) = 1;
      v11[1] = 0;
      DictionaryProperty = IPCBufferWriter::write(v11, cf, (a2 + 28), (a2 + 52));
      CFRelease(cf);
      IPCBufferWriter::~IPCBufferWriter(v11);
      IPCBufferReader::~IPCBufferReader(&v13);
      if (!DictionaryProperty)
      {
        *(a2 + 40) = *(a2 + 52);
        *(a2 + 44) = *MEMORY[0x277D85EF8];
        *a2 |= 0x80000000;
        *(a2 + 4) = 56;
        *(a2 + 24) = 1;
        return;
      }
    }

    *(a2 + 32) = DictionaryProperty;
  }

  else
  {
    *(a2 + 32) = -304;
  }

  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

void sub_237267820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  IPCBufferWriter::~IPCBufferWriter(va);
  IPCBufferReader::~IPCBufferReader(va1);
  _Unwind_Resume(a1);
}

uint64_t _XObjectSetDataProperty(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(result + 24) == 1)
  {
    v4 = *(result + 4);
    if ((v4 - 577) >= 0xFFFFFDFF)
    {
      if (*(result + 39) != 1)
      {
        goto LABEL_12;
      }

      v5 = *(result + 56);
      if (v5 > 0x200)
      {
LABEL_2:
        v3 = -304;
        goto LABEL_3;
      }

      v3 = -304;
      if (v4 - 64 >= v5)
      {
        v6 = (v5 + 3) & 0xFFFFFFFC;
        if (v4 == v6 + 64)
        {
          v7 = *(result + 40);
          if (v7 == *(result + v6 + 60))
          {
            result = MIDIServer_ObjectSetDataProperty(*(result + 52), (result + 60), v5, *(result + 28), v7);
            v3 = result;
            goto LABEL_3;
          }

LABEL_12:
          v3 = -300;
        }
      }
    }
  }

LABEL_3:
  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

void _XObjectGetDataProperty(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && (v3 = *(a1 + 4), (v3 - 553) >= 0xFFFFFDFF) && ((v4 = *(a1 + 36), v4 <= 0x200) ? (v5 = v3 - 40 >= v4) : (v5 = 0), (v6 = ((v4 + 3) & 0x7FC) + 40, v5) ? (v7 = v3 == v6) : (v7 = 0), v7))
  {
    *(a2 + 36) = 16777473;
    v9 = *(a1 + 32);
    v8 = *(a1 + 36);
    v13 = a1 + 40;
    v14 = v8;
    v15 = 0;
    v16 = CFStringCreateWithBytes(0, (a1 + 40), v8, 0x100u, 1u);
    cf = 0;
    DataProperty = _MIDIObjectGetDataProperty(v9, v16, &cf);
    if (DataProperty)
    {
      IPCBufferReader::~IPCBufferReader(&v13);
    }

    else
    {
      LODWORD(v11[0]) = 1;
      v11[1] = 0;
      DataProperty = IPCBufferWriter::write(v11, cf, (a2 + 28), (a2 + 52));
      CFRelease(cf);
      IPCBufferWriter::~IPCBufferWriter(v11);
      IPCBufferReader::~IPCBufferReader(&v13);
      if (!DataProperty)
      {
        *(a2 + 40) = *(a2 + 52);
        *(a2 + 44) = *MEMORY[0x277D85EF8];
        *a2 |= 0x80000000;
        *(a2 + 4) = 56;
        *(a2 + 24) = 1;
        return;
      }
    }

    *(a2 + 32) = DataProperty;
  }

  else
  {
    *(a2 + 32) = -304;
  }

  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

void sub_237267A70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  IPCBufferWriter::~IPCBufferWriter(va);
  IPCBufferReader::~IPCBufferReader(va1);
  _Unwind_Resume(a1);
}

uint64_t _XObjectSetStringProperty(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(result + 24) == 1)
  {
    v4 = *(result + 4);
    if ((v4 - 577) >= 0xFFFFFDFF)
    {
      if (*(result + 39) != 1)
      {
        goto LABEL_12;
      }

      v5 = *(result + 56);
      if (v5 > 0x200)
      {
LABEL_2:
        v3 = -304;
        goto LABEL_3;
      }

      v3 = -304;
      if (v4 - 64 >= v5)
      {
        v6 = (v5 + 3) & 0xFFFFFFFC;
        if (v4 == v6 + 64)
        {
          v7 = *(result + 40);
          if (v7 == *(result + v6 + 60))
          {
            result = MIDIServer_ObjectSetStringProperty(*(result + 52), (result + 60), v5, *(result + 28), v7);
            v3 = result;
            goto LABEL_3;
          }

LABEL_12:
          v3 = -300;
        }
      }
    }
  }

LABEL_3:
  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

void _XObjectGetStringProperty(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && (v3 = *(a1 + 4), (v3 - 553) >= 0xFFFFFDFF) && ((v4 = *(a1 + 36), v4 <= 0x200) ? (v5 = v3 - 40 >= v4) : (v5 = 0), (v6 = ((v4 + 3) & 0x7FC) + 40, v5) ? (v7 = v3 == v6) : (v7 = 0), v7))
  {
    *(a2 + 36) = 16777473;
    v9 = *(a1 + 32);
    v8 = *(a1 + 36);
    v13 = a1 + 40;
    v14 = v8;
    v15 = 0;
    v16 = CFStringCreateWithBytes(0, (a1 + 40), v8, 0x100u, 1u);
    cf = 0;
    StringProperty = _MIDIObjectGetStringProperty(v9, v16, &cf);
    if (StringProperty)
    {
      IPCBufferReader::~IPCBufferReader(&v13);
    }

    else
    {
      LODWORD(v11[0]) = 1;
      v11[1] = 0;
      StringProperty = IPCBufferWriter::write(v11, cf, (a2 + 28), (a2 + 52));
      CFRelease(cf);
      IPCBufferWriter::~IPCBufferWriter(v11);
      IPCBufferReader::~IPCBufferReader(&v13);
      if (!StringProperty)
      {
        *(a2 + 40) = *(a2 + 52);
        *(a2 + 44) = *MEMORY[0x277D85EF8];
        *a2 |= 0x80000000;
        *(a2 + 4) = 56;
        *(a2 + 24) = 1;
        return;
      }
    }

    *(a2 + 32) = StringProperty;
  }

  else
  {
    *(a2 + 32) = -304;
  }

  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

void sub_237267CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  IPCBufferWriter::~IPCBufferWriter(va);
  IPCBufferReader::~IPCBufferReader(va1);
  _Unwind_Resume(a1);
}

void _XObjectSetIntegerProperty(uint64_t a1, uint64_t a2)
{
  v3 = -304;
  if ((*a1 & 0x80000000) == 0)
  {
    v4 = *(a1 + 4);
    if ((v4 - 557) >= 0xFFFFFDFF)
    {
      v5 = *(a1 + 36);
      if (v5 <= 0x200)
      {
        v6 = (v5 + 3) & 0xFFFFFFFC;
        if (v4 - 44 >= v5 && v4 == v6 + 44)
        {
          v8 = *(a1 + 32);
          v9 = *(a1 + v6 + 40);
          v10 = a1 + 40;
          v11 = v5;
          v12 = 0;
          v13 = CFStringCreateWithBytes(0, (a1 + 40), v5, 0x100u, 1u);
          v3 = _MIDIObjectSetIntegerProperty(v8, v13, v9);
          IPCBufferReader::~IPCBufferReader(&v10);
        }
      }
    }
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

void sub_237267DBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

void _XObjectGetIntegerProperty(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && (v3 = *(a1 + 4), (v3 - 553) >= 0xFFFFFDFF) && ((v4 = *(a1 + 36), v4 <= 0x200) ? (v5 = v3 - 40 >= v4) : (v5 = 0), v5 ? (v6 = v3 == ((v4 + 3) & 0x7FC) + 40) : (v6 = 0), v6))
  {
    v7 = *(a1 + 32);
    v8 = a1 + 40;
    v9 = v4;
    v10 = 0;
    v11 = CFStringCreateWithBytes(0, (a1 + 40), v4, 0x100u, 1u);
    LODWORD(v7) = _MIDIObjectGetIntegerProperty(v7, v11, (a2 + 36));
    IPCBufferReader::~IPCBufferReader(&v8);
    *(a2 + 32) = v7;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    if (!v7)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }
}

void sub_237267EB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

uint64_t _XEndpointDispose(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    result = 4294966992;
  }

  else
  {
    result = _MIDIEndpointDispose(a1[8]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

void _XSourceCreate(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && (v3 = *(a1 + 4), (v3 - 557) >= 0xFFFFFDFF) && (v4 = *(a1 + 36), v4 <= 0x200) && (v3 - 44 >= v4 ? (v5 = v3 == ((v4 + 3) & 0xFFFFFFFC) + 44) : (v5 = 0), v5))
  {
    v6 = *(a1 + 32);
    v7 = a1 + 40;
    v8 = v4;
    v9 = 0;
    v10 = CFStringCreateWithBytes(0, (a1 + 40), v4, 0x100u, 1u);
    LODWORD(v6) = _MIDISourceCreate(v6);
    IPCBufferReader::~IPCBufferReader(&v7);
    *(a2 + 32) = v6;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    if (!v6)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }
}

void sub_23726801C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

void _XDestinationCreate(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && (v3 = *(a1 + 4), (v3 - 557) >= 0xFFFFFDFF) && (v4 = *(a1 + 36), v4 <= 0x200) && (v3 - 44 >= v4 ? (v5 = v3 == ((v4 + 3) & 0xFFFFFFFC) + 44) : (v5 = 0), v5))
  {
    v6 = *(a1 + 32);
    v7 = a1 + 40;
    v8 = v4;
    v9 = 0;
    v10 = CFStringCreateWithBytes(0, (a1 + 40), v4, 0x100u, 1u);
    LODWORD(v6) = _MIDIDestinationCreate(v6);
    IPCBufferReader::~IPCBufferReader(&v7);
    *(a2 + 32) = v6;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    if (!v6)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }
}

void sub_237268134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

void _XGetObjectTree(MIDIServer *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 1) != 36)
  {
    *(a2 + 32) = -304;
  }

  else
  {
    *(a2 + 36) = 16777473;
    v3 = *(a1 + 8);
    v5 = MIDIServer::defaultInstance(a1) + 2;
    v4 = *v5;
    v19 = v5;
    v6 = (*(v4 + 16))(v5);
    v20 = v6;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    ObjectTreeCache::GetObjectTree(&v16);
    v7 = v16;
    v8 = CFDataCreateWithBytesNoCopy(0, v16, v17 - v16, *MEMORY[0x277CBED00]);
    LODWORD(v15[0]) = 1;
    v15[1] = 0;
    v9 = IPCBufferWriter::write(v15, v8, (a2 + 28), (a2 + 52));
    v10 = v9;
    if (v3)
    {
      if (!v9)
      {
        v11 = *(a2 + 52);
        if (v11 >= 4)
        {
          v12 = v11 >> 2;
          v13 = *(a2 + 28);
          v14 = v12 + 1;
          do
          {
            *v13 = bswap32(*v13);
            ++v13;
            --v14;
          }

          while (v14 > 1);
        }
      }
    }

    CFRelease(v8);
    IPCBufferWriter::~IPCBufferWriter(v15);
    if (v7)
    {
      operator delete(v7);
    }

    if (v6)
    {
      (*(*v5 + 24))(v5);
    }

    if (!v10)
    {
      *(a2 + 40) = *(a2 + 52);
      *(a2 + 44) = *MEMORY[0x277D85EF8];
      *a2 |= 0x80000000;
      *(a2 + 4) = 56;
      *(a2 + 24) = 1;
      return;
    }

    *(a2 + 32) = v10;
  }

  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

void sub_23726831C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  CADeprecated::CAMutex::Locker::~Locker(&a15);
  _Unwind_Resume(a1);
}

uint64_t _XPortDisconnectSource(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 40)
  {
    result = 4294966992;
  }

  else
  {
    result = _MIDIPortDisconnectSource(a1[8], a1[9]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

void _XPortConnectSource(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 48)
  {
    v7 = -304;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 36);
    v5 = *(a1 + 40);
    gMIDIServerLog();
    v6 = gMIDIServerLog(void)::mdsrvr;
    if (os_log_type_enabled(gMIDIServerLog(void)::mdsrvr, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316418;
      v12 = "MIDIMachServer.cpp";
      v13 = 1024;
      v14 = 324;
      v15 = 2080;
      v16 = "MIDIServer_PortConnectSource";
      v17 = 1024;
      *v18 = v3;
      *&v18[4] = 1024;
      *&v18[6] = v4;
      v19 = 2048;
      v20 = v5;
      _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d ->%s port 0x%x src 0x%x, connRefCon 0x%qx", buf, 0x32u);
    }

    v7 = _MIDIPortConnectSource(v3, v4, v5);
    gMIDIServerLog();
    v8 = gMIDIServerLog(void)::mdsrvr;
    if (os_log_type_enabled(gMIDIServerLog(void)::mdsrvr, OS_LOG_TYPE_DEBUG))
    {
      ErrorFormatter::ErrorFormatter(v10, v7);
      *buf = 136315906;
      v12 = "MIDIMachServer.cpp";
      v13 = 1024;
      v14 = 326;
      v15 = 2080;
      v16 = "MIDIServer_PortConnectSource";
      v17 = 2080;
      *v18 = v10;
      _os_log_impl(&dword_2371C2000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d <-%s%s", buf, 0x26u);
    }
  }

  v9 = MEMORY[0x277D85EF8];
  *(a2 + 32) = v7;
  *(a2 + 24) = *v9;
}

uint64_t _XPortDispose(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    result = 4294966992;
  }

  else
  {
    result = _MIDIPortDispose(a1[8]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

void _XOutputPortCreate(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 && (v3 = *(a1 + 4), (v3 - 553) >= 0xFFFFFDFF) && ((v4 = *(a1 + 36), v4 <= 0x200) ? (v5 = v3 - 40 >= v4) : (v5 = 0), v5 ? (v6 = v3 == ((v4 + 3) & 0x7FC) + 40) : (v6 = 0), v6))
  {
    v7 = *(a1 + 32);
    v8 = a1 + 40;
    v9 = v4;
    v10 = 0;
    v11 = CFStringCreateWithBytes(0, (a1 + 40), v4, 0x100u, 1u);
    LODWORD(v7) = _MIDIOutputPortCreate(v7);
    IPCBufferReader::~IPCBufferReader(&v8);
    *(a2 + 32) = v7;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    if (!v7)
    {
      *(a2 + 4) = 40;
    }
  }

  else
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }
}

void sub_2372686C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

void _XInputPortCreate(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || (v4 = *(a1 + 4), (v4 - 557) < 0xFFFFFDFF) || (v5 = *(a1 + 36), v5 > 0x200) || (v4 - 44 >= v5 ? (v6 = v4 == ((v5 + 3) & 0xFFFFFFFC) + 44) : (v6 = 0), !v6))
  {
    v7 = -304;
LABEL_9:
    *(a2 + 32) = v7;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return;
  }

  v8 = *(a1 + 32);
  if (!BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIClient>::sRTTI, *(a1 + 32)))
  {
    v7 = -50;
    goto LABEL_9;
  }

  v10 = a1 + 40;
  v11 = v5;
  v12 = 0;
  v13 = CFStringCreateWithBytes(0, (a1 + 40), v5, 0x100u, 1u);
  v9 = _MIDIInputPortCreate(v8);
  IPCBufferReader::~IPCBufferReader(&v10);
  *(a2 + 32) = v9;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!v9)
  {
    *(a2 + 4) = 40;
  }
}

void sub_237268804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

uint64_t _XClientDispose(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    result = 4294966992;
  }

  else
  {
    result = _MIDIClientDispose(a1[8]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

void _XClientCreate(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((*a1 & 0x80000000) != 0 || (v3 = *(a1 + 4), (v3 - 549) < 0xFFFFFDFF) || ((v4 = *(a1 + 32), v4 <= 0x200) ? (v5 = v3 - 36 >= v4) : (v5 = 0), v5 ? (v6 = v3 == ((v4 + 3) & 0x7FC) + 36) : (v6 = 0), !v6))
  {
    v7 = -304;
LABEL_11:
    *(a2 + 32) = v7;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return;
  }

  v8 = ((v3 + 3) & 0x7FC) + a1;
  if (*v8 || *(v8 + 4) <= 0x1Fu)
  {
    v7 = -309;
    goto LABEL_11;
  }

  v9 = *(v8 + 36);
  *v18.val = *(v8 + 20);
  *&v18.val[4] = v9;
  v11 = a1 + 36;
  v12 = v4;
  v13 = 0;
  v14 = CFStringCreateWithBytes(0, (a1 + 36), v4, 0x100u, 1u);
  euidp = 0;
  pidp = 0;
  atoken = v18;
  audit_token_to_au32(&atoken, 0, &euidp, 0, 0, 0, &pidp, 0, 0);
  v10 = _MIDIClientCreate(pidp, v14, (a2 + 36));
  IPCBufferReader::~IPCBufferReader(&v11);
  *(a2 + 32) = v10;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  if (!v10)
  {
    *(a2 + 4) = 40;
  }
}

void sub_2372689F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

void _XAcknowledgeNotifications(_DWORD *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    v5 = -304;
    goto LABEL_7;
  }

  v4 = a1[6];
  v3 = a1 + 6;
  if (v4 || v3[1] <= 0x1Fu)
  {
    v5 = -309;
LABEL_7:
    *(a2 + 32) = v5;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return;
  }

  v6 = *(v3 + 9);
  *v14.val = *(v3 + 5);
  *&v14.val[4] = v6;
  MIDIServer = getMIDIServer(v3);
  v8 = MIDIServer::defaultInstance(MIDIServer);
  *pidp = 0;
  atoken = v14;
  audit_token_to_au32(&atoken, 0, &pidp[1], 0, 0, 0, pidp, 0, 0);
  v9 = v8[29];
  v10 = v8[30];
  if (v9 != v10)
  {
    while (1)
    {
      v11 = *v9;
      if (*(*v9 + 8) == pidp[0])
      {
        break;
      }

      v9 += 8;
      if (v9 == v10)
      {
        goto LABEL_14;
      }
    }

    *(v11 + 320) = 0;
    if (*(v11 + 312))
    {
      ClientProcess::DeliverNotifications(v11);
    }
  }

LABEL_14:
  *(a2 + 32) = 0;
}

uint64_t _XRegisterProcess(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 2 && *(result + 4) == 68)
  {
    if (*(result + 38) << 16 == 1114112 && *(result + 50) << 16 == 1114112)
    {
      if (!*(result + 68) && *(result + 72) >= 0x20u)
      {
        v3 = *(result + 104);
        v4[0] = *(result + 88);
        v4[1] = v3;
        MIDIServer_RegisterProcess(v4);
      }

      v2 = -309;
    }

    else
    {
      v2 = -300;
    }
  }

  else
  {
    v2 = -304;
  }

  *(a2 + 32) = v2;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

uint64_t (*MIDIIPC_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 8050) >= 0xFFFFFFCE)
  {
    return MIDIServer_MIDIIPC_subsystem[5 * (v1 - 8000) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t MIDIIPC_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 8050) >= 0xFFFFFFCE && (v5 = MIDIServer_MIDIIPC_subsystem[5 * (v4 - 8000) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    *(a2 + 32) = -303;
  }

  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
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

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x2821F7520](this, a2);
}

{
  return MEMORY[0x2821F7538](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x2821F7548](this);
}

{
  MEMORY[0x2821F7550](this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}