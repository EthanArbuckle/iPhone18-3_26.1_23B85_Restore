void ixl::ixl_pf_qmgr::init(ixl::ixl_pf_qmgr *this, int a2)
{
  if (a2)
  {
    *this = a2;
    operator new[]();
  }

  ixl::ixl_pf_qmgr::init();
}

uint64_t ixl::ixl_pf_qmgr::alloc_contiguous(unsigned __int16 *a1, int a2, uint64_t a3)
{
  if (!a2 || !a3)
  {
    ixl::ixl_pf_qmgr::alloc_contiguous();
  }

  v3 = 3758097115;
  if (*a1)
  {
    v4 = 0;
    v5 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
    v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
    v7 = (v6 | HIWORD(v6)) + 1;
    v8 = *(a1 + 1);
    v9 = *a1;
    do
    {
      v10 = *v8;
      v8 += 5;
      if (!v10)
      {
        ++v4;
      }

      --v9;
    }

    while (v9);
    if (v4 >= v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = *(a1 + 1);
      do
      {
        v16 = *v15;
        v15 += 5;
        v17 = v16 == 0;
        if (v16)
        {
          v13 = 0;
        }

        else
        {
          if (!v14)
          {
            v12 = v11;
          }

          if (++v13 == v7)
          {
            if ((v12 & 0x80000000) == 0)
            {
              if (v7)
              {
                v19 = 0;
                v20 = v12 + v7;
                if (v20 <= (v12 + 1))
                {
                  v20 = v12 + 1;
                }

                v21 = v20 + ~v12;
                v22 = vdupq_n_s64(v21);
                v23 = (*(a1 + 1) + 5 * v12 + 40);
                do
                {
                  v24 = vdupq_n_s64(v19);
                  v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_10001C840)));
                  if (vuzp1_s8(vuzp1_s16(v25, *v22.i8), *v22.i8).u8[0])
                  {
                    *(v23 - 40) = 1;
                  }

                  if (vuzp1_s8(vuzp1_s16(v25, *&v22), *&v22).i8[1])
                  {
                    *(v23 - 35) = 1;
                  }

                  if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_10001C830)))), *&v22).i8[2])
                  {
                    *(v23 - 30) = 1;
                    *(v23 - 25) = 1;
                  }

                  v26 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_10001C820)));
                  if (vuzp1_s8(*&v22, vuzp1_s16(v26, *&v22)).i32[1])
                  {
                    *(v23 - 20) = 1;
                  }

                  if (vuzp1_s8(*&v22, vuzp1_s16(v26, *&v22)).i8[5])
                  {
                    *(v23 - 15) = 1;
                  }

                  if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_10001C810))))).i8[6])
                  {
                    *(v23 - 10) = 1;
                    *(v23 - 5) = 1;
                  }

                  v27 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_10001C800)));
                  if (vuzp1_s8(vuzp1_s16(v27, *v22.i8), *v22.i8).u8[0])
                  {
                    *v23 = 1;
                  }

                  if (vuzp1_s8(vuzp1_s16(v27, *&v22), *&v22).i8[1])
                  {
                    v23[5] = 1;
                  }

                  if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_10001C7F0)))), *&v22).i8[2])
                  {
                    v23[10] = 1;
                    v23[15] = 1;
                  }

                  v28 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_10001C7E0)));
                  if (vuzp1_s8(*&v22, vuzp1_s16(v28, *&v22)).i32[1])
                  {
                    v23[20] = 1;
                  }

                  if (vuzp1_s8(*&v22, vuzp1_s16(v28, *&v22)).i8[5])
                  {
                    v23[25] = 1;
                  }

                  if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_10001C7D0))))).i8[6])
                  {
                    v23[30] = 1;
                    v23[35] = 1;
                  }

                  v19 += 16;
                  v23 += 80;
                }

                while (((v21 + 16) & 0x1FFFFFFF0) != v19);
              }

              v3 = 0;
              *(a3 + 8) = 0u;
              *(a3 + 40) = 0;
              *(a3 + 24) = 0u;
              *a3 = a1;
              *(a3 + 12) = v12;
              *(a3 + 44) = v7;
              *(a3 + 46) = a2;
            }

            return v3;
          }
        }

        ++v11;
        v14 = v17;
      }

      while (*a1 != v11);
    }
  }

  return v3;
}

uint64_t ixl::ixl_pf_qmgr::get_num_free(uint64_t this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  v2 = this;
  LODWORD(this) = 0;
  v3 = *(v2 + 8);
  do
  {
    v4 = *v3;
    v3 += 5;
    if (v4)
    {
      this = this;
    }

    else
    {
      this = (this + 1);
    }

    --v1;
  }

  while (v1);
  return this;
}

uint64_t ixl::ixl_pf_qmgr::find_free_contiguous_block(uint64_t this, int a2)
{
  v2 = *this;
  if (*this)
  {
    v3 = this;
    v4 = 0;
    LODWORD(this) = 0;
    v5 = 0;
    v6 = 0;
    v7 = *(v3 + 8);
    do
    {
      v8 = *v7;
      v7 += 5;
      v9 = v8 == 0;
      if (v8)
      {
        v5 = 0;
      }

      else
      {
        if (v6)
        {
          this = this;
        }

        else
        {
          this = v4;
        }

        if (++v5 == a2)
        {
          return this;
        }
      }

      ++v4;
      v6 = v9;
    }

    while (v2 != v4);
  }

  return 0xFFFFFFFFLL;
}

uint64_t ixl::ixl_pf_qmgr::alloc_scattered(unsigned __int16 *a1, int a2, uint64_t a3)
{
  if (!a3 || (a2 - 17) <= 0xFFFFFFEF)
  {
    ixl::ixl_pf_qmgr::alloc_scattered();
  }

  v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
  v5 = (v4 | HIWORD(v4)) + 1;
  v6 = *a1;
  if (*a1)
  {
    v7 = 0;
    v8 = *(a1 + 1);
    do
    {
      v9 = *v8;
      v8 += 5;
      if (!v9)
      {
        ++v7;
      }

      --v6;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (v7 < v5)
  {
    return 3758097115;
  }

  *(a3 + 8) = 0u;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0u;
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 46) = a2;
  *(a3 + 44) = v5;
  v11 = *a1;
  if (!*a1)
  {
LABEL_18:
    ixl::ixl_pf_qmgr::alloc_scattered();
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *(a1 + 1);
  while (*(v15 + v12))
  {
LABEL_17:
    ++v13;
    v12 += 5;
    if (v13 >= v11)
    {
      goto LABEL_18;
    }
  }

  *(a3 + 12 + 2 * v14++) = v13;
  v15 = *(a1 + 1);
  *(v15 + v12) = 1;
  if (v14 != v5)
  {
    v11 = *a1;
    goto LABEL_17;
  }

  return 0;
}

uint64_t ixl::ixl_pf_qmgr::release(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    ixl::ixl_pf_qmgr::release();
  }

  if (*(a2 + 8) == 1)
  {
    if (*(a2 + 44))
    {
      v2 = 0;
      do
      {
        v3 = *(a1 + 8) + 5 * *(a2 + 12 + 2 * v2);
        *(v3 + 4) = 0;
        *v3 = 0;
        ++v2;
      }

      while (v2 < *(a2 + 44));
    }
  }

  else if (*(a2 + 44))
  {
    v4 = *(a2 + 12);
    v5 = v4;
    do
    {
      v6 = *(a1 + 8) + 5 * v5;
      *(v6 + 4) = 0;
      *v6 = 0;
      ++v5;
    }

    while (*(a2 + 44) + v4 > v5);
  }

  *a2 = 0;
  return 0;
}

uint64_t ixl::ixl_pf_qmgr::get_first_free(ixl::ixl_pf_qmgr *this, unsigned int a2)
{
  v2 = *this;
  if (v2 <= a2)
  {
    ixl::ixl_pf_qmgr::get_first_free();
  }

  v3 = *(this + 1);
  result = a2;
  v5 = (v3 + 5 * a2);
  while (1)
  {
    v6 = *v5;
    v5 += 5;
    if (!v6)
    {
      break;
    }

    if (v2 == ++result)
    {
      return 3758097115;
    }
  }

  return result;
}

uint64_t ixl::ixl_pf_qmgr::mark_queue_enabled(uint64_t result, unsigned int a2, int a3)
{
  if (!result)
  {
    ixl::ixl_pf_qmgr::mark_queue_enabled();
  }

  if (*(result + 44) <= a2)
  {
    ixl::ixl_pf_qmgr::mark_queue_enabled();
  }

  v3 = (result + 12);
  if (*(result + 8))
  {
    v4 = v3[a2];
  }

  else
  {
    v4 = *v3 + a2;
  }

  if (a3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *(*(*result + 8) + 5 * v4 + v5) = 1;
  return result;
}

uint64_t ixl::ixl_pf_qmgr::mark_queue_disabled(uint64_t result, unsigned int a2, int a3)
{
  if (!result)
  {
    ixl::ixl_pf_qmgr::mark_queue_disabled();
  }

  if (*(result + 44) <= a2)
  {
    ixl::ixl_pf_qmgr::mark_queue_enabled();
  }

  v3 = (result + 12);
  if (*(result + 8))
  {
    v4 = v3[a2];
  }

  else
  {
    v4 = *v3 + a2;
  }

  v5 = *(*result + 8) + 5 * v4;
  v6 = 1;
  if (!a3)
  {
    v6 = 2;
  }

  *(v5 + v6) = 0;
  return result;
}

uint64_t ixl::ixl_pf_qmgr::mark_queue_configured(uint64_t result, unsigned int a2, int a3)
{
  if (!result)
  {
    ixl::ixl_pf_qmgr::mark_queue_configured();
  }

  if (*(result + 44) <= a2)
  {
    ixl::ixl_pf_qmgr::mark_queue_enabled();
  }

  v3 = (result + 12);
  if (*(result + 8))
  {
    v4 = v3[a2];
  }

  else
  {
    v4 = *v3 + a2;
  }

  v5 = *(*result + 8) + 5 * v4;
  v6 = 3;
  if (!a3)
  {
    v6 = 4;
  }

  *(v5 + v6) = 1;
  return result;
}

BOOL ixl::ixl_pf_qmgr::is_queue_enabled(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    ixl::ixl_pf_qmgr::is_queue_enabled();
  }

  if (*(a1 + 44) <= a2)
  {
    ixl::ixl_pf_qmgr::mark_queue_enabled();
  }

  v3 = (a1 + 12);
  if (*(a1 + 8))
  {
    v4 = v3[a2];
  }

  else
  {
    v4 = *v3 + a2;
  }

  v5 = *(*a1 + 8) + 5 * v4;
  v6 = 1;
  if (!a3)
  {
    v6 = 2;
  }

  return *(v5 + v6) != 0;
}

BOOL ixl::ixl_pf_qmgr::is_queue_configured(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    ixl::ixl_pf_qmgr::is_queue_configured();
  }

  if (*(a1 + 44) <= a2)
  {
    ixl::ixl_pf_qmgr::mark_queue_enabled();
  }

  v3 = (a1 + 12);
  if (*(a1 + 8))
  {
    v4 = v3[a2];
  }

  else
  {
    v4 = *v3 + a2;
  }

  v5 = *(*a1 + 8) + 5 * v4;
  v6 = 3;
  if (!a3)
  {
    v6 = 4;
  }

  return *(v5 + v6) != 0;
}

uint64_t ixl::ixl_pf_qmgr::clear_queue_flags(uint64_t result)
{
  if (!result)
  {
    ixl::ixl_pf_qmgr::clear_queue_flags();
  }

  v1 = *(result + 44);
  if (*(result + 44))
  {
    v2 = 0;
    v3 = *(result + 8);
    v4 = (result + 12);
    v5 = *(*result + 8);
    do
    {
      if (v3)
      {
        v6 = v4[v2];
      }

      else
      {
        v6 = *v4 + v2;
      }

      ++v2;
      *(v5 + 5 * v6 + 1) = 0;
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::drain(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  v3 = *(a2 + 128);
  v4 = *(a2 + 132);
  if (v3 != v4)
  {
    v6 = v2 - 1;
    do
    {
      v7 = *(*(a2 + 264) + 8 * v3);
      if (v7)
      {
        v10.ivars = (v7 - 8);
        v9 = 0;
        IOUserNetworkPacket::GetPacketBufferPool(&v10, &v9);
        result = (v9->DeallocatePacket)(v9, &v10);
        v3 = *(a2 + 128);
        v4 = *(a2 + 132);
      }

      v3 = (v3 + 1) & v6;
      *(a2 + 128) = v3;
    }

    while (v3 != v4);
  }

  return result;
}

void DriverKit_AppleEthernetIXL_IVars::update_link_status(DriverKit_AppleEthernetIXL_IVars *this)
{
  v2 = this + 0x8000;
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetIXL_IVars::update_link_status();
  }

  if (v2[2680] == 1)
  {
    v3 = *(v2 + 206);
    if (v3 > 0x31)
    {
      v5 = 1048608;
    }

    else
    {
      v4 = qword_10001C878[v3];
      v5 = dword_10001CA08[v3];
    }

    if ((v2[833] & 0x40) != 0)
    {
      v7 = 0x400000;
    }

    else
    {
      v7 = (v2[833] & 0x20) << 17;
    }

    if ((pcindkll & 4) != 0)
    {
      DriverKit_AppleEthernetIXL_IVars::update_link_status();
    }

    (*(**this + 128))(*this, 3, v7 | v5);
    v6 = 100;
  }

  else
  {
    if ((pcindkll & 4) != 0)
    {
      DriverKit_AppleEthernetIXL_IVars::update_link_status();
    }

    (*(**this + 128))(*this, 1, 34);
    v6 = 4294967294;
  }

  (*(**this + 136))(*this, v6);
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetIXL_IVars::update_link_status();
  }
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::getSupportedMediaArray(DriverKit_AppleEthernetIXL_NetIf_IVars *this, unsigned int *a2, unsigned int *a3)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::getSupportedMediaArray();
  }

  *a2 = 0x2000000022;
  v6 = *(*(this + 2) + 72);
  if ((v6 & 0x20000) != 0)
  {
    *(a2 + 1) = 0x10002600200026;
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  if ((v6 & 0x40000) != 0)
  {
    a2[v7] = 1048624;
    v7 |= 1u;
    if ((v6 & 0x8000000) == 0)
    {
LABEL_8:
      if ((v6 & 0x10000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_45;
    }
  }

  else if ((v6 & 0x8000000) == 0)
  {
    goto LABEL_8;
  }

  a2[v7++] = 1048619;
  if ((v6 & 0x10000000) == 0)
  {
LABEL_9:
    if ((v6 & 0x4000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  a2[v7++] = 1048622;
  if ((v6 & 0x4000000000) == 0)
  {
LABEL_10:
    if ((v6 & 0x8000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_46:
  a2[v7++] = 1048630;
  if ((v6 & 0x8000000000) != 0)
  {
LABEL_11:
    a2[v7++] = 1048631;
  }

LABEL_12:
  if ((v6 & 0x400060) != 0)
  {
    a2[v7++] = 1114145;
  }

  if ((v6 & 0x100000) != 0)
  {
    a2[v7++] = 1048626;
    if ((v6 & 0x200000) == 0)
    {
LABEL_16:
      if ((v6 & 0x80000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 0x200000) == 0)
  {
    goto LABEL_16;
  }

  a2[v7++] = 1048626;
  if ((v6 & 0x80000) != 0)
  {
LABEL_17:
    a2[v7++] = 1048629;
  }

LABEL_18:
  if ((v6 & 0x1002510) != 0)
  {
    a2[v7++] = 1114149;
  }

  if ((v6 & 0x2000000) != 0)
  {
    a2[v7++] = 1114150;
    if ((v6 & 0x4000000) == 0)
    {
LABEL_22:
      if ((v6 & 2) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 0x4000000) == 0)
  {
    goto LABEL_22;
  }

  a2[v7++] = 1114156;
  if ((v6 & 2) != 0)
  {
LABEL_23:
    a2[v7++] = 1048633;
  }

LABEL_24:
  if ((v6 & 0x800800) != 0)
  {
    a2[v7++] = 1048636;
  }

  if ((v6 & 0x1000) != 0)
  {
    a2[v7++] = 1114171;
    if ((v6 & 0x80) == 0)
    {
LABEL_28:
      if ((v6 & 4) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_56;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_28;
  }

  a2[v7++] = 1114154;
  if ((v6 & 4) == 0)
  {
LABEL_29:
    if ((v6 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_57;
  }

LABEL_56:
  a2[v7++] = 1048634;
  if ((v6 & 8) == 0)
  {
LABEL_30:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_57:
  a2[v7++] = 1048635;
  if ((v6 & 0x40000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_59;
  }

LABEL_58:
  a2[v7++] = 1048638;
  if ((v6 & 0x10) == 0)
  {
LABEL_32:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_60;
  }

LABEL_59:
  a2[v7++] = 1114157;
  if ((v6 & 0x200) == 0)
  {
LABEL_33:
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_61;
  }

LABEL_60:
  a2[v7++] = 1114155;
  if ((v6 & 0x100000000) == 0)
  {
LABEL_34:
    if ((v6 & 0x200000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_62;
  }

LABEL_61:
  a2[v7++] = 1114166;
  if ((v6 & 0x200000000) == 0)
  {
LABEL_35:
    if ((v6 & 0x400000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_63;
  }

LABEL_62:
  a2[v7++] = 1114165;
  if ((v6 & 0x400000000) == 0)
  {
LABEL_36:
    if ((v6 & 0x800000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_64;
  }

LABEL_63:
  a2[v7++] = 1114167;
  if ((v6 & 0x800000000) == 0)
  {
LABEL_37:
    if ((v6 & 0x1000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_65;
  }

LABEL_64:
  a2[v7++] = 1114170;
  if ((v6 & 0x1000000000) == 0)
  {
LABEL_38:
    if ((v6 & 0x2000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_65:
  a2[v7++] = 1114173;
  if ((v6 & 0x2000000000) != 0)
  {
LABEL_39:
    a2[v7++] = 1114172;
  }

LABEL_40:
  *a3 = v7;
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::getSupportedMediaArray();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::selMed(DriverKit_AppleEthernetIXL_NetIf_IVars *this)
{
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::selMed();
  }

  return 1;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::handleChosenMedia(DriverKit_AppleEthernetIXL_NetIf_IVars *this)
{
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::handleChosenMedia();
  }

  DriverKit_AppleEthernetIXL_NetIf_IVars::selMed(this);
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::handleChosenMedia();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::promisc_set(DriverKit_AppleEthernetIXL_NetIf_IVars *this, unsigned int a2)
{
  v2 = a2;
  v4 = 3758097098;
  if (!i40e_aq_set_vsi_unicast_promiscuous(*(this + 2), *(this + 21), (a2 >> 8) & 1, 0, 1))
  {
    if (i40e_aq_set_vsi_multicast_promiscuous(*(this + 2), *(this + 21), (v2 & 0x300) != 0, 0))
    {
      return 3758097098;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void DriverKit_AppleEthernetIXL_IVars::setLink(DriverKit_AppleEthernetIXL_IVars *this, int a2)
{
  v4 = this + 0x8000;
  phy_capabilities = i40e_aq_get_phy_capabilities(this + 33576, 0, 1, &v35, 0);
  if (phy_capabilities)
  {
    v6 = phy_capabilities;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v7 = *(v4 + 429);
    *buf = 136316162;
    v26 = pcindkid;
    v27 = 2080;
    v28 = "setLink";
    v29 = 1024;
    v30 = 339;
    v31 = 1024;
    v32 = v6;
    v33 = 1024;
    v34 = v7;
    v8 = "ixl:(%s): %s(%d): Error getting phy capabilities %d, aq error: %d\n";
    goto LABEL_22;
  }

  v9 = v35;
  v10 = v41;
  v11 = i40e_aq_get_phy_capabilities(this + 33576, 0, 0, &v35, 0);
  if (v11)
  {
    v12 = v11;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v13 = *(v4 + 429);
    *buf = 136316162;
    v26 = pcindkid;
    v27 = 2080;
    v28 = "setLink";
    v29 = 1024;
    v30 = 349;
    v31 = 1024;
    v32 = v12;
    v33 = 1024;
    v34 = v13;
    v8 = "ixl:(%s): %s(%d): Error getting phy capabilities %d, aq error: %d\n";
    goto LABEL_22;
  }

  WORD2(v24) = v36;
  v14 = v37;
  WORD3(v24) = v38;
  DWORD2(v24) = v39;
  WORD6(v24) = v40;
  HIWORD(v24) = v42 & 0x1F;
  LODWORD(v24) = 0;
  v15 = v37 & 0xFC;
  v16 = *(v4 + 672);
  if (v16 == 1)
  {
    v17 = v15 | 2;
  }

  else if (v16 == 2)
  {
    v17 = v15 | 1;
  }

  else
  {
    if (v16 != 3)
    {
      *(v4 + 672) = 3;
    }

    v17 = v14 | 3;
  }

  BYTE5(v24) = v17;
  if (a2)
  {
    LODWORD(v24) = v9;
    BYTE13(v24) = v10;
  }

  v18 = i40e_aq_set_phy_config(this + 33576, &v24, 0);
  if (v18)
  {
    v19 = v18;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v20 = *(v4 + 429);
    *buf = 136316162;
    v26 = pcindkid;
    v27 = 2080;
    v28 = "setLink";
    v29 = 1024;
    v30 = 388;
    v31 = 1024;
    v32 = v19;
    v33 = 1024;
    v34 = v20;
    v8 = "ixl:(%s): %s(%d): Error setting new phy config %d, aq error: %d\n";
    goto LABEL_22;
  }

  restarted = i40e_aq_set_link_restart_an(this + 33576, a2, 0);
  if (restarted)
  {
    v22 = restarted;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v4 + 429);
      *buf = 136316162;
      v26 = pcindkid;
      v27 = 2080;
      v28 = "setLink";
      v29 = 1024;
      v30 = 394;
      v31 = 1024;
      v32 = v22;
      v33 = 1024;
      v34 = v23;
      v8 = "ixl:(%s): %s(%d): Error set link config %d, aq error: %d\n";
LABEL_22:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, buf, 0x28u);
    }
  }
}

uint64_t DriverKit_AppleEthernetIXL_IVars::getLinkStatus(DriverKit_AppleEthernetIXL_IVars *this)
{
  v2 = this + 0x8000;
  v3 = *(this + 17234);
  if (v3 == 4)
  {
    if (*(this + 17235) >= 0x21u)
    {
LABEL_8:
      v2[872] = 1;
      i40e_get_link_status(this + 33576, this + 35448);
      v4 = 0;
      if (*(v2 + 672) == -1)
      {
        *(v2 + 672) = *(v2 + 244);
      }

      return v4;
    }
  }

  else if (v3 > 3)
  {
    goto LABEL_8;
  }

  IODelay(0x124F8uLL);
  if (!i40e_aq_set_link_restart_an(this + 33576, 1, 0))
  {
    goto LABEL_8;
  }

  v4 = 3758097098;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v2 + 429);
    v7 = 136315906;
    v8 = pcindkid;
    v9 = 2080;
    v10 = "getLinkStatus";
    v11 = 1024;
    v12 = 404;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): link restart failed, aq_err=%d\n", &v7, 0x22u);
  }

  return v4;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::txComplete(DriverKit_AppleEthernetIXL_NetIf_IVars *this, unsigned int a2)
{
  v2 = this + 296 * a2;
  v3 = *(v2 + 44);
  if (v3 == *(v2 + 45))
  {
    return 0;
  }

  v4 = *(*(v2 + 6) + 4096);
  if (v3 == v4)
  {
    return 0;
  }

  do
  {
    v6 = *(*(v2 + 39) + 8 * v3);
    if (v6)
    {
      v7 = *(v2 + 40);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 0x40000000;
      v8[2] = ___ZN6pcindkL15enqueueTxPacketEP25IODataQueueDispatchSourceP24IOUserNetworkPacketState_block_invoke;
      v8[3] = &__block_descriptor_tmp;
      v8[4] = v6;
      sendDataAvailable = 0;
      if (IODataQueueDispatchSource::EnqueueWithCoalesce(v7, 0x68u, &sendDataAvailable, v8))
      {
        DriverKit_AppleEthernetIXL_NetIf_IVars::txComplete();
      }
    }

    v3 = (v3 + 1);
  }

  while (v3 != v4);
  *(v2 + 44) = v4;
  return 1;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::txSubmit(IOPCIDevice ***this, unsigned int a2)
{
  v2 = &this[37 * a2];
  v3 = *(v2 + 45);
  v4 = *(v2 + 44) + ~v3;
  if (!((*(v2 + 176) + ~v3) >> 1))
  {
    return 0;
  }

  memset(v44, 0, 512);
  v7 = ((*v2[41])[1].ivars)(v2[41], v44);
  v8 = v7;
  if (v7)
  {
    v9 = (v7 - 1);
    v10 = v44;
    v11 = v7;
    do
    {
      v12 = *(*v10 + 48);
      v13 = *(v12 + 24);
      v14 = *(v12 + 72);
      v15 = *(v12 + 76);
      if (v9)
      {
        v16 = 5;
      }

      else
      {
        v16 = 7;
      }

      v17 = *(v12 + 82);
      if (v17)
      {
        v18 = *(v12 + 16) + v15;
        v19 = *(v18 + 12);
        if (v19 == 129)
        {
          v20 = -18;
        }

        else
        {
          v20 = -14;
        }

        if (v19 == 129)
        {
          v21 = 18;
        }

        else
        {
          v21 = 14;
        }

        if ((v17 & 0x100018) != 0)
        {
          v22 = v18 + v21;
          v23 = 4 * (*v22 & 0xF);
          if ((v17 & 0x100008) != 0)
          {
            v24 = v22 + v23;
            v25 = (*(v22 + v23 + 12) >> 2) & 0x3C;
            if ((v17 & 0x100000) != 0)
            {
              v16 |= 0x160uLL;
              *(v22 + 10) = 0;
              *(v22 + 2) = 0;
              v31 = *(v22 + 12) + *(v22 + 16) + 1536;
              LODWORD(v31) = ((WORD1(v31) + v31 + HIDWORD(v31)) >> 16) + (WORD1(v31) + v31 + WORD2(v31));
              *(v24 + 16) = v31 + WORD1(v31);
              v32 = &v2[6][2 * v3];
              v33 = ((v20 + v14 - (v23 + v25)) << 30) | (*(v12 + 94) << 50) | 0x11;
              *v32 = 0;
              v32[1] = v33;
              v2[39][v3] = 0;
              v3 = (v3 + 1);
            }

            else
            {
              v16 |= 0x140uLL;
              v26 = (bswap32(v20 + v14 - v23) >> 16) + *(v22 + 12) + *(v22 + 16) + 1536;
              *(v24 + 16) = ((WORD1(v26) + v26 + HIDWORD(v26)) >> 16) + WORD1(v26) + v26 + WORD2(v26) + ((((WORD1(v26) + v26 + HIDWORD(v26)) >> 16) + (WORD1(v26) + v26 + WORD2(v26))) >> 16);
            }
          }

          else if ((v17 & 0x10) != 0)
          {
            v16 |= 0x340uLL;
            v35 = (bswap32(v20 + v14 - v23) >> 16) + *(v22 + 12) + *(v22 + 16) + 4352;
            *(v22 + v23 + 6) = ((WORD1(v35) + v35 + HIDWORD(v35)) >> 16) + WORD1(v35) + v35 + WORD2(v35) + ((((WORD1(v35) + v35 + HIDWORD(v35)) >> 16) + (WORD1(v35) + v35 + WORD2(v35))) >> 16);
            v25 = 8;
          }

          else
          {
            v25 = 0;
            v16 |= 0x40uLL;
          }

          v34 = (32 * v23);
        }

        else if ((v17 & 0x200060) != 0)
        {
          v28 = (v18 + v21);
          if ((v17 & 0x200020) != 0)
          {
            v25 = (v28[6].u8[4] >> 2) & 0x3C;
            if ((v17 & 0x200000) != 0)
            {
              v16 |= 0x160uLL;
              v36 = vaddvq_s32(vaddq_s32(vaddl_u16(v28[1], v28[3]), vaddl_high_u16(*v28[1].i8, *v28[3].i8)));
              v37 = ((v36 + 1536) >> 16) + (v36 + 1536);
              v28[7].i16[0] = v37 + HIWORD(v37);
              v38 = &v2[6][2 * v3];
              v39 = ((v14 + v20 - v25 - 40) << 30) | (*(v12 + 94) << 50) | 0x11;
              *v38 = 0;
              v38[1] = v39;
              v2[39][v3] = 0;
              v3 = (v3 + 1);
            }

            else
            {
              v16 |= 0x120uLL;
              v29 = bswap32(v14 + v20 - 40);
              v30 = v29 + vaddvq_s32(vaddq_s32(vaddl_u16(v28[1], v28[3]), vaddl_high_u16(*v28[1].i8, *v28[3].i8))) - 0xFFFF * HIWORD(v29) + 1536;
              v28[7].i16[0] = HIWORD(v30) + v30 + ((HIWORD(v30) + v30) >> 16);
            }
          }

          else if ((v17 & 0x40) != 0)
          {
            v16 |= 0x320uLL;
            v40 = bswap32(v14 + v20 - 40);
            v41 = v40 + 4352 + vaddvq_s32(vaddq_s32(vaddl_u16(v28[1], v28[3]), vaddl_high_u16(*v28[1].i8, *v28[3].i8))) - 0xFFFF * HIWORD(v40);
            v28[5].i16[3] = HIWORD(v41) + v41 + ((HIWORD(v41) + v41) >> 16);
            v25 = 8;
          }

          else
          {
            v25 = 0;
            v16 |= 0x20uLL;
          }

          v34 = 1280;
        }

        else
        {
          v25 = 0;
          v34 = 0;
        }

        v27 = (v34 | (v25 << 12) & 0x3C000 | (v21 >> 1)) << 16;
      }

      else
      {
        v27 = 0;
      }

      v42 = &v2[6][2 * v3];
      v2[39][v3] = (v12 + 8);
      *v42 = (v13 + v15);
      v42[1] = (v27 | (v14 << 34) | (16 * v16));
      v3 = (v3 + 1);
      --v9;
      v10 = (v10 + 8);
      --v11;
    }

    while (v11);
    *(v2 + 45) = v3;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*this[2], 0, 4 * a2 + 1081344, v3);
  }

  return v8;
}

void DriverKit_AppleEthernetIXL_IVars::i2cBusClear(IOPCIDevice **this)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, (4 * *(this + 8543) + 557484), &readData);
  __dmb(1u);
  v4 = readData;
  DriverKit_AppleEthernetIXL_IVars::i2cStart(this);
  DriverKit_AppleEthernetIXL_IVars::i2cSetData(this, &v4, 1);
  v2 = 9;
  do
  {
    DriverKit_AppleEthernetIXL_IVars::i2cRaiseClk(this, &v4);
    IODelay(4uLL);
    DriverKit_AppleEthernetIXL_IVars::i2cLowerClk(this, &v4);
    IODelay(5uLL);
    --v2;
  }

  while (v2);
  DriverKit_AppleEthernetIXL_IVars::i2cStart(this);
  DriverKit_AppleEthernetIXL_IVars::i2cStop(this);
}

void DriverKit_AppleEthernetIXL_IVars::i2cStart(IOPCIDevice **this)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, (4 * *(this + 8543) + 557484), &readData);
  __dmb(1u);
  v3 = readData;
  DriverKit_AppleEthernetIXL_IVars::i2cSetData(this, &v3, 1);
  DriverKit_AppleEthernetIXL_IVars::i2cRaiseClk(this, &v3);
  IODelay(5uLL);
  DriverKit_AppleEthernetIXL_IVars::i2cSetData(this, &v3, 0);
  IODelay(4uLL);
  DriverKit_AppleEthernetIXL_IVars::i2cLowerClk(this, &v3);
  IODelay(5uLL);
}

uint64_t DriverKit_AppleEthernetIXL_IVars::i2cSetData(IOPCIDevice **this, unsigned int *a2, int a3)
{
  v5 = this + 4096;
  if (a3)
  {
    v6 = 1024;
  }

  else
  {
    v6 = 0;
  }

  *a2 = *a2 & 0xFFFFF3FF | v6;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, (4 * *(this + 8543) + 557484), *a2);
  v9 = 0;
  IOPCIDevice::MemoryRead32(v5[101], 0, 0xB612CuLL, &v9);
  __dmb(1u);
  IODelay(3uLL);
  v9 = 0;
  IOPCIDevice::MemoryRead32(v5[101], 0, (4 * *(v5 + 351) + 557484), &v9);
  result = 0;
  __dmb(1u);
  v8 = v9;
  *a2 = v9;
  if (a3 != (v8 & 0x1000) >> 12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = pcindkid;
      v11 = 2080;
      v12 = "i2cSetData";
      v13 = 1024;
      v14 = 239;
      v15 = 1024;
      v16 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): Error - I2C data was not set to %X.", &v9, 0x22u);
    }

    return 4294967293;
  }

  return result;
}

void DriverKit_AppleEthernetIXL_IVars::i2cRaiseClk(DriverKit_AppleEthernetIXL_IVars *this, unsigned int *a2)
{
  v3 = (this + 0x8000);
  v4 = 499;
  do
  {
    v5 = v4;
    *a2 = *a2 & 0xFFFFDDFF | 0x200;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(v3[101], 0, (4 * *(v3 + 351) + 557484), *a2);
    readData = 0;
    IOPCIDevice::MemoryRead32(v3[101], 0, 0xB612CuLL, &readData);
    __dmb(1u);
    IODelay(1uLL);
    v6 = 0;
    IOPCIDevice::MemoryRead32(v3[101], 0, (4 * *(v3 + 351) + 557484), &v6);
    __dmb(1u);
    if ((v6 & 0x4000) != 0)
    {
      break;
    }

    v4 = v5 - 1;
  }

  while (v5);
}

void DriverKit_AppleEthernetIXL_IVars::i2cLowerClk(IOPCIDevice **this, unsigned int *a2)
{
  v2 = this + 4096;
  *a2 &= 0xFFFFDDFF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, (4 * *(this + 8543) + 557484), *a2);
  readData = 0;
  IOPCIDevice::MemoryRead32(v2[101], 0, 0xB612CuLL, &readData);
  __dmb(1u);
  IODelay(1uLL);
}

void DriverKit_AppleEthernetIXL_IVars::i2cStop(IOPCIDevice **this)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, (4 * *(this + 8543) + 557484), &readData);
  __dmb(1u);
  v3 = readData;
  DriverKit_AppleEthernetIXL_IVars::i2cSetData(this, &v3, 0);
  DriverKit_AppleEthernetIXL_IVars::i2cRaiseClk(this, &v3);
  IODelay(4uLL);
  DriverKit_AppleEthernetIXL_IVars::i2cSetData(this, &v3, 1);
  IODelay(5uLL);
}

uint64_t DriverKit_AppleEthernetIXL_IVars::i2cGetAck(IOPCIDevice **this)
{
  v2 = this + 4096;
  v7 = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, (4 * *(this + 8543) + 557484), &v7);
  __dmb(1u);
  v13 = v7;
  DriverKit_AppleEthernetIXL_IVars::i2cRaiseClk(this, &v13);
  IODelay(4uLL);
  v7 = 0;
  IOPCIDevice::MemoryRead32(v2[101], 0, (4 * *(v2 + 351) + 557484), &v7);
  __dmb(1u);
  v3 = v7;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(v2[101], 0, (4 * *(v2 + 351) + 557484), v3 | 0x800);
  v7 = 0;
  IOPCIDevice::MemoryRead32(v2[101], 0, 0xB612CuLL, &v7);
  __dmb(1u);
  v4 = 10;
  do
  {
    v7 = 0;
    IOPCIDevice::MemoryRead32(v2[101], 0, (4 * *(v2 + 351) + 557484), &v7);
    __dmb(1u);
    v5 = v7;
    IODelay(1uLL);
    if ((v5 & 0x1000) == 0)
    {
      v13 = v5;
      DriverKit_AppleEthernetIXL_IVars::i2cLowerClk(this, &v13);
      IODelay(5uLL);
      return 0;
    }

    --v4;
  }

  while (v4);
  v13 = v5;
  DriverKit_AppleEthernetIXL_IVars::i2cLowerClk(this, &v13);
  IODelay(5uLL);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = pcindkid;
    v9 = 2080;
    v10 = "i2cGetAck";
    v11 = 1024;
    v12 = 120;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): I2C ack was not received.", &v7, 0x1Cu);
  }

  return 4294967293;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::i2cClockOutBit(IOPCIDevice **this, int a2)
{
  v5 = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, (4 * *(this + 8543) + 557484), &v5);
  __dmb(1u);
  v13 = v5;
  if (DriverKit_AppleEthernetIXL_IVars::i2cSetData(this, &v13, a2))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = pcindkid;
      v7 = 2080;
      v8 = "i2cClockOutBit";
      v9 = 1024;
      v10 = 143;
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): I2C data was not set to %#x", &v5, 0x22u);
    }

    return 4294967293;
  }

  else
  {
    DriverKit_AppleEthernetIXL_IVars::i2cRaiseClk(this, &v13);
    IODelay(4uLL);
    DriverKit_AppleEthernetIXL_IVars::i2cLowerClk(this, &v13);
    IODelay(5uLL);
    return 0;
  }
}

uint64_t DriverKit_AppleEthernetIXL_IVars::i2cClockOutByte(IOPCIDevice **this, unsigned int a2)
{
  v4 = this + 4096;
  v5 = 7;
  do
  {
    v6 = DriverKit_AppleEthernetIXL_IVars::i2cClockOutBit(this, (a2 >> v5) & 1);
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 0;
    }

    --v5;
  }

  while (!v7);
  v8 = v6;
  readData = 0;
  IOPCIDevice::MemoryRead32(v4[101], 0, (4 * *(v4 + 351) + 557484), &readData);
  __dmb(1u);
  v9 = readData & 0xFFFFF3FF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(v4[101], 0, (4 * *(v4 + 351) + 557484), v9 | 0x400);
  v11 = 0;
  IOPCIDevice::MemoryRead32(v4[101], 0, 0xB612CuLL, &v11);
  __dmb(1u);
  return v8;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::i2cReadByte_reg(IOPCIDevice **this, int a2, unsigned int a3, unsigned __int8 *a4)
{
  v6 = this + 4096;
  *a4 = 0;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, (4 * *(this + 8543) + 557536), (a2 << 16) & 0xF8FFFFFF | (((a3 >> 1) & 7) << 24) | 0x8000000);
  v7 = DriverKit_AppleEthernetIXL_IVars::i2cWaitForCompletion(this, *(v6 + 1404));
  v9 = 0;
  IOPCIDevice::MemoryRead32(v6[101], 0, (4 * *(v6 + 351) + 557536), &v9);
  __dmb(1u);
  *a4 = v9;
  if (v7 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = pcindkid;
    v11 = 2080;
    v12 = "i2cReadByte_reg";
    v13 = 1024;
    v14 = 426;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): I2C byte read error", &v9, 0x1Cu);
  }

  return v7;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::i2cWaitForCompletion(IOPCIDevice **this, unsigned int a2)
{
  v3 = 4 * a2 + 557536;
  v4 = 101;
  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(this[4197], 0, v3, &readData);
    __dmb(1u);
    if ((readData & 0x20000000) != 0)
    {
      break;
    }

    IODelay(0xAuLL);
    if (!--v4)
    {
      return 0;
    }
  }

  if (v4 == 1)
  {
    return 4294967259;
  }

  else
  {
    return 0;
  }
}

uint64_t DriverKit_AppleEthernetIXL_IVars::i2cWriteByte_reg(IOPCIDevice **this, int a2, unsigned int a3, int a4)
{
  v8 = this + 4096;
  v19 = 0;
  DriverKit_AppleEthernetIXL_IVars::i2cReadByte_reg(this, (a2 + 1), a3, &v19);
  v9 = a4 | (v19 << 8);
  v13 = 0;
  IOPCIDevice::MemoryRead32(v8[101], 0, (4 * *(v8 + 351) + 557536), &v13);
  __dmb(1u);
  v10 = v13 & 0xF0000000 | (((a3 >> 1) & 7) << 24) | (a2 << 16);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(v8[101], 0, (4 * *(v8 + 351) + 557536), v10 | v9);
  v11 = DriverKit_AppleEthernetIXL_IVars::i2cWaitForCompletion(this, *(v8 + 1404));
  if (v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = pcindkid;
    v15 = 2080;
    v16 = "i2cWriteByte_reg";
    v17 = 1024;
    v18 = 458;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): I2C byte write error", &v13, 0x1Cu);
  }

  return v11;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::i2cReadByte_aq(DriverKit_AppleEthernetIXL_IVars *this, int a2, char a3, unsigned __int8 *a4)
{
  v21 = 0;
  phy_register_ext = i40e_aq_get_phy_register_ext(this + 33576, 2, a3, 0, 0, 0, a2, &v21, 0);
  if (phy_register_ext)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = pcindkid;
      v8 = i40e_stat_str(this + 33576, phy_register_ext);
      v9 = i40e_aq_str(this + 33576, *(this + 8621));
      *buf = 136316162;
      v12 = v7;
      v13 = 2080;
      v14 = "i2cReadByte_aq";
      v15 = 1024;
      v16 = 489;
      v17 = 2080;
      v18 = v8;
      v19 = 2080;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): I2C byte read status %s, error %s", buf, 0x30u);
    }
  }

  else
  {
    *a4 = v21;
  }

  return phy_register_ext;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::i2cWriteByte_aq(DriverKit_AppleEthernetIXL_IVars *this, int a2, char a3, int a4)
{
  v5 = i40e_aq_set_phy_register_ext(this + 33576, 2, a3, 0, 0, 0, a2, a4, 0);
  if (v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = pcindkid;
    v7 = i40e_stat_str(this + 33576, v5);
    v8 = i40e_aq_str(this + 33576, *(this + 8621));
    *buf = 136316162;
    v11 = v6;
    v12 = 2080;
    v13 = "i2cWriteByte_aq";
    v14 = 1024;
    v15 = 507;
    v16 = 2080;
    v17 = v7;
    v18 = 2080;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): I2C byte write status %s, error %s", buf, 0x30u);
  }

  return v5;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::i2cReadByte(DriverKit_AppleEthernetIXL_IVars *this, unsigned int a2, char a3, unsigned __int8 *a4)
{
  v6 = *(this + 8866);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
LABEL_13:

      return DriverKit_AppleEthernetIXL_IVars::i2cReadByte_reg(this, a2, a3, a4);
    }

    if (v6 != 3)
    {
LABEL_9:
      v14 = v4;
      v15 = v5;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = pcindkid;
        v10 = 2080;
        v11 = "i2cReadByte";
        v12 = 1024;
        v13 = 532;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): Error setting I2C access functions", &v8, 0x1Cu);
      }

      return 0;
    }
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {

        return DriverKit_AppleEthernetIXL_IVars::i2cReadByte_bb(this, a2, a3, a4);
      }

      goto LABEL_9;
    }

    if ((*(this + 35264) & 4) == 0)
    {
      goto LABEL_13;
    }
  }

  return DriverKit_AppleEthernetIXL_IVars::i2cReadByte_aq(this, a2, a3, a4);
}

uint64_t DriverKit_AppleEthernetIXL_IVars::i2cReadByte_bb(IOPCIDevice **this, unsigned int a2, unsigned int a3, unsigned __int8 *a4)
{
  v7 = this + 4096;
  *a4 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, (4 * *(this + 8543) + 557484), &readData);
  __dmb(1u);
  v8 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(v7[101], 0, (4 * *(v7 + 351) + 557484), v8 | 0x100);
  readData = 0;
  IOPCIDevice::MemoryRead32(v7[101], 0, 0xB612CuLL, &readData);
  v9 = 0;
  __dmb(1u);
  while (1)
  {
    DriverKit_AppleEthernetIXL_IVars::i2cStart(this);
    v10 = DriverKit_AppleEthernetIXL_IVars::i2cClockOutByte(this, a3);
    if (v10)
    {
      v11 = v10;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      readData = 136315650;
      v23 = pcindkid;
      v24 = 2080;
      v25 = "i2cReadByte_bb";
      v26 = 1024;
      v27 = 285;
      v12 = "ixl:(%s): %s(%d): dev_addr clock out error";
LABEL_14:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v12, &readData, 0x1Cu);
      goto LABEL_15;
    }

    Ack = DriverKit_AppleEthernetIXL_IVars::i2cGetAck(this);
    if (Ack)
    {
      v11 = Ack;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      readData = 136315650;
      v23 = pcindkid;
      v24 = 2080;
      v25 = "i2cReadByte_bb";
      v26 = 1024;
      v27 = 291;
      v12 = "ixl:(%s): %s(%d): dev_addr i2c ack error";
      goto LABEL_14;
    }

    v14 = DriverKit_AppleEthernetIXL_IVars::i2cClockOutByte(this, a2);
    if (v14)
    {
      v11 = v14;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      readData = 136315650;
      v23 = pcindkid;
      v24 = 2080;
      v25 = "i2cReadByte_bb";
      v26 = 1024;
      v27 = 297;
      v12 = "ixl:(%s): %s(%d): byte_offset clock out error";
      goto LABEL_14;
    }

    v15 = DriverKit_AppleEthernetIXL_IVars::i2cGetAck(this);
    if (v15)
    {
      v11 = v15;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      readData = 136315650;
      v23 = pcindkid;
      v24 = 2080;
      v25 = "i2cReadByte_bb";
      v26 = 1024;
      v27 = 303;
      v12 = "ixl:(%s): %s(%d): byte_offset i2c ack error";
      goto LABEL_14;
    }

    DriverKit_AppleEthernetIXL_IVars::i2cStart(this);
    v17 = DriverKit_AppleEthernetIXL_IVars::i2cClockOutByte(this, a3 | 1);
    if (v17 || (v17 = DriverKit_AppleEthernetIXL_IVars::i2cGetAck(this), v17))
    {
      v11 = v17;
    }

    else
    {
      for (i = 7; i != -1; --i)
      {
        LOBYTE(readData) = 0;
        DriverKit_AppleEthernetIXL_IVars::i2cClockInBit(this, &readData);
        *a4 |= readData << i;
      }

      v11 = DriverKit_AppleEthernetIXL_IVars::i2cClockOutBit(this, 1);
      if (!v11)
      {
        DriverKit_AppleEthernetIXL_IVars::i2cStop(this);
        goto LABEL_27;
      }
    }

LABEL_15:
    DriverKit_AppleEthernetIXL_IVars::i2cBusClear(this);
    IODelay(0x186A0uLL);
    v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v9 == 9)
    {
      break;
    }

    ++v9;
    if (v16)
    {
      readData = 136315650;
      v23 = pcindkid;
      v24 = 2080;
      v25 = "i2cReadByte_bb";
      v26 = 1024;
      v27 = 329;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): I2C byte read error - Retrying", &readData, 0x1Cu);
    }
  }

  if (v16)
  {
    readData = 136315650;
    v23 = pcindkid;
    v24 = 2080;
    v25 = "i2cReadByte_bb";
    v26 = 1024;
    v27 = 331;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): I2C byte read error", &readData, 0x1Cu);
  }

LABEL_27:
  readData = 0;
  IOPCIDevice::MemoryRead32(v7[101], 0, (4 * *(v7 + 351) + 557484), &readData);
  __dmb(1u);
  v19 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(v7[101], 0, (4 * *(v7 + 351) + 557484), v19 & 0xFFFFFEFF);
  readData = 0;
  IOPCIDevice::MemoryRead32(v7[101], 0, 0xB612CuLL, &readData);
  __dmb(1u);
  return v11;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::i2cWriteByte(DriverKit_AppleEthernetIXL_IVars *this, unsigned int a2, char a3, unsigned int a4)
{
  v6 = *(this + 8866);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
LABEL_13:

      return DriverKit_AppleEthernetIXL_IVars::i2cWriteByte_reg(this, a2, a3, a4);
    }

    if (v6 != 3)
    {
LABEL_9:
      v14 = v4;
      v15 = v5;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315650;
        v9 = pcindkid;
        v10 = 2080;
        v11 = "i2cWriteByte";
        v12 = 1024;
        v13 = 557;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): Error setting I2C access functions", &v8, 0x1Cu);
      }

      return 0;
    }
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {

        return DriverKit_AppleEthernetIXL_IVars::i2cWriteByte_bb(this, a2, a3, a4);
      }

      goto LABEL_9;
    }

    if ((*(this + 35264) & 4) == 0)
    {
      goto LABEL_13;
    }
  }

  return DriverKit_AppleEthernetIXL_IVars::i2cWriteByte_aq(this, a2, a3, a4);
}

uint64_t DriverKit_AppleEthernetIXL_IVars::i2cWriteByte_bb(IOPCIDevice **this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = this + 4096;
  v14 = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, (4 * *(this + 8543) + 557484), &v14);
  __dmb(1u);
  v9 = v14;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(v8[101], 0, (4 * *(v8 + 351) + 557484), v9 | 0x100);
  v14 = 0;
  IOPCIDevice::MemoryRead32(v8[101], 0, 0xB612CuLL, &v14);
  __dmb(1u);
  DriverKit_AppleEthernetIXL_IVars::i2cStart(this);
  v10 = DriverKit_AppleEthernetIXL_IVars::i2cClockOutByte(this, a3);
  if (v10 || (v10 = DriverKit_AppleEthernetIXL_IVars::i2cGetAck(this), v10) || (v10 = DriverKit_AppleEthernetIXL_IVars::i2cClockOutByte(this, a2), v10) || (v10 = DriverKit_AppleEthernetIXL_IVars::i2cGetAck(this), v10) || (v10 = DriverKit_AppleEthernetIXL_IVars::i2cClockOutByte(this, a4), v10))
  {
    Ack = v10;
  }

  else
  {
    Ack = DriverKit_AppleEthernetIXL_IVars::i2cGetAck(this);
    if (!Ack)
    {
      DriverKit_AppleEthernetIXL_IVars::i2cStop(this);
      goto LABEL_9;
    }
  }

  DriverKit_AppleEthernetIXL_IVars::i2cBusClear(this);
  IODelay(0x186A0uLL);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = pcindkid;
    v16 = 2080;
    v17 = "i2cWriteByte_bb";
    v18 = 1024;
    v19 = 392;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): I2C byte write error", &v14, 0x1Cu);
  }

LABEL_9:
  v14 = 0;
  IOPCIDevice::MemoryRead32(v8[101], 0, (4 * *(v8 + 351) + 557484), &v14);
  __dmb(1u);
  v12 = v14;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(v8[101], 0, (4 * *(v8 + 351) + 557484), v12 & 0xFFFFFEFF);
  v14 = 0;
  IOPCIDevice::MemoryRead32(v8[101], 0, 0xB612CuLL, &v14);
  __dmb(1u);
  return Ack;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::i2cClockInBit(IOPCIDevice **this, BOOL *a2)
{
  v4 = this + 4096;
  readData = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, (4 * *(this + 8543) + 557484), &readData);
  __dmb(1u);
  DriverKit_AppleEthernetIXL_IVars::i2cRaiseClk(this, &readData);
  IODelay(4uLL);
  v7 = 0;
  IOPCIDevice::MemoryRead32(v4[101], 0, (4 * *(v4 + 351) + 557484), &v7);
  __dmb(1u);
  v5 = v7;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(v4[101], 0, (4 * *(v4 + 351) + 557484), v5 | 0x800);
  v7 = 0;
  IOPCIDevice::MemoryRead32(v4[101], 0, 0xB612CuLL, &v7);
  __dmb(1u);
  v7 = 0;
  IOPCIDevice::MemoryRead32(v4[101], 0, (4 * *(v4 + 351) + 557484), &v7);
  __dmb(1u);
  readData = v7;
  *a2 = (v7 & 0x1000) != 0;
  DriverKit_AppleEthernetIXL_IVars::i2cLowerClk(this, &readData);
  IODelay(5uLL);
  return 0;
}

void DriverKit_AppleEthernetIXL::free(IOService *this)
{
  v2 = this[1].OSObject::OSMetaClassBase::__vftable;
  if (v2)
  {
    IOFree(v2, 0x8A90uLL);
    this[1].OSObject::OSMetaClassBase::__vftable = 0;
  }

  IOService::free(this);
}

uint64_t DriverKit_AppleEthernetIXL::Start_Impl(DriverKit_AppleEthernetIXL *this, IOService *anObject)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL::Start_Impl();
  }

  v4 = 3758097084;
  v5 = OSMetaClassBase::safeMetaCast(anObject, gIOPCIDeviceMetaClass);
  if (!v5)
  {
    return 3758097084;
  }

  v6 = v5;
  *(*(this + 6) + 35320) = this;
  IXL_dev = this;
  *(*(this + 6) + 35328) = v5;
  result = DriverKit_AppleEthernetIXL_IVars::probe(*(this + 6), v5);
  if (!result)
  {
    if (IOService::Start(this, anObject, &IOService::_Dispatch))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    if (OSObject::CopyDispatchQueue(this, "Default", (*(this + 6) + 35336), 0))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    if (IODispatchQueue::Create("interrupt", 0, 0, (*(this + 6) + 35344)))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    if (OSObject::SetDispatchQueue(this, "interrupt", *(*(this + 6) + 35344), 0))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    action = 0;
    interruptType = 0;
    IOPCIDevice::ConfigureInterrupts(v6, 0x20000u, 2u, 2u, 0, 0);
    if (IOInterruptDispatchSource::GetInterruptType(v6, 0, &interruptType))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    v8 = interruptType & 0x30000;
    if (IOInterruptDispatchSource::Create(v6, (interruptType & 0x30000) == 0, *(*(this + 6) + 35344), (*(this + 6) + 35352)))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    if (DriverKit_AppleEthernetIXL::CreateActionOtherInterrupt(this, 8uLL, &action))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    if (IOInterruptDispatchSource::SetHandler(*(*(this + 6) + 35352), action, 0))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    if (IODispatchSource::SetEnable(*(*(this + 6) + 35352), 1, 0))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if (IOInterruptDispatchSource::Create(v6, v9, *(*(this + 6) + 35344), (*(this + 6) + 35360)))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    if (DriverKit_AppleEthernetIXL::CreateActionQueueInterrupt(this, 8uLL, &action))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    if (IOInterruptDispatchSource::SetHandler(*(*(this + 6) + 35360), action, 0))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    if (IODispatchSource::SetEnable(*(*(this + 6) + 35360), 1, 0))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    if (IOPCIDevice::Open(v6, this, 0))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    readData = 0;
    IOPCIDevice::ConfigurationRead8(v6, 4uLL, &readData);
    IOPCIDevice::ConfigurationWrite8(v6, 4uLL, readData | 2);
    anObjecta = 0;
    if (IOService::Create(this, this, "NetIf", &anObjecta, 0))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    v10 = OSMetaClassBase::safeMetaCast(anObjecta, gDriverKit_AppleEthernetIXL_NetIfMetaClass);
    v11 = *(this + 6);
    v10[1].OSObjectInterface::__vftable = v11;
    *v11 = v10;
    if (OSObject::SetDispatchQueue(v10, "Default", *(*(this + 6) + 35336), 0))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    if (OSObject::SetDispatchQueue(v10, "interrupt", *(*(this + 6) + 35344), 0))
    {
      DriverKit_AppleEthernetIXL::Start_Impl();
    }

    if (DriverKit_AppleEthernetIXL_IVars::start(*(this + 6)))
    {
      IOService::Stop(this, v6, 0);
    }

    else
    {
      if (IOService::JoinPMTree(this, 0))
      {
        DriverKit_AppleEthernetIXL::Start_Impl();
      }

      if (IOService::JoinPMTree(anObjecta, 0))
      {
        DriverKit_AppleEthernetIXL::Start_Impl();
      }

      return 0;
    }

    return v4;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetIXL::Stop_Impl(DriverKit_AppleEthernetIXL *this, IOService *a2)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXL::Stop_Impl();
  }

  *(*(this + 6) + 35376) = 3;
  IOService::Terminate(**(this + 6), 0, 0);
  atomic_store(3u, &cancelCount);
  IODispatchSource::Cancel(*(*(this + 6) + 35352), &__block_literal_global, 0);
  IODispatchSource::Cancel(*(*(this + 6) + 35360), &__block_literal_global, 0);
  return 0;
}

uint64_t DriverKit_AppleEthernetIXL::SetPowerState_Impl(DriverKit_AppleEthernetIXL *this, uint32_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315906;
    v9 = pcindkid;
    v10 = 2080;
    v11 = "SetPowerState_Impl";
    v12 = 1024;
    v13 = 122;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): powerState=%x\n", &v8, 0x22u);
  }

  v4 = *(this + 6);
  if (a2)
  {
    v5 = *(v4 + 35376);
    if (v5 != 1)
    {
      *(v4 + 35376) = 1;
      v6 = v5 == 0;
      LOBYTE(v8) = 0;
      IOPCIDevice::ConfigurationRead8(*(*(this + 6) + 35328), 4uLL, &v8);
      IOPCIDevice::ConfigurationWrite8(*(*(this + 6) + 35328), 4uLL, v8 | 4);
      if (DriverKit_AppleEthernetIXL_IVars::load(*(this + 6), v6))
      {
        DriverKit_AppleEthernetIXL::SetPowerState_Impl();
      }
    }
  }

  else
  {
    *(v4 + 35376) = 2;
    DriverKit_AppleEthernetIXL_IVars::unload(*(this + 6));
    LOBYTE(v8) = 0;
    IOPCIDevice::ConfigurationRead8(*(*(this + 6) + 35328), 4uLL, &v8);
    IOPCIDevice::ConfigurationWrite8(*(*(this + 6) + 35328), 4uLL, v8 & 0xFB);
  }

  return IOService::SetPowerState(this, a2, &IOService::_Dispatch);
}

uint64_t DriverKit_AppleEthernetIXL_NetIf::Stop_Impl(IOService *this, IOService *a2)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXL_NetIf::Stop_Impl();
  }

  DriverKit_AppleEthernetIXL::Start_Impl(IOService *)::$_0::__invoke();
  return IOService::Stop(this, a2, &IOUserNetworkEthernet::_Dispatch);
}

uint64_t DriverKit_AppleEthernetIXL_NetIf::SetInterfaceEnable_Impl(DriverKit_AppleEthernetIXL_NetIf *this, char a2)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXL_NetIf::SetInterfaceEnable_Impl();
  }

  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x2000000000;
  v11 = -1;
  if (*(*(*(this + 8) + 24) + 35376) == 1)
  {
    v4 = *(*(*(this + 8) + 24) + 35344);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1107296256;
    block[2] = ___ZN32DriverKit_AppleEthernetIXL_NetIf23SetInterfaceEnable_ImplEb_block_invoke;
    block[4] = &v9;
    block[5] = this;
    v8 = a2;
    block[3] = &__block_descriptor_tmp_28;
    IODispatchQueue::DispatchSync(v4, block);
  }

  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXL_NetIf::SetInterfaceEnable_Impl(v10);
  }

  v5 = *(v10[0] + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t ___ZN32DriverKit_AppleEthernetIXL_NetIf23SetInterfaceEnable_ImplEb_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(result + 48) == 1)
  {
    result = DriverKit_AppleEthernetIXL_NetIf_IVars::enable(*(v2 + 64));
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  if (*(*(*(v1 + 32) + 8) + 24))
  {
    result = DriverKit_AppleEthernetIXL_NetIf_IVars::disable(*(v2 + 64));
  }

  if ((*(v1 + 48) & 1) == 0)
  {
    *(*(*(v1 + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf::SetAllMulticastModeEnable_Impl(DriverKit_AppleEthernetIXL_NetIf_IVars **this, int a2)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXL_NetIf::SetAllMulticastModeEnable_Impl();
  }

  return DriverKit_AppleEthernetIXL_NetIf_IVars::setAllMulticastModeEnable(this[8], a2);
}

uint64_t DriverKit_AppleEthernetIXL_NetIf::SelectMediaType_Impl(DriverKit_AppleEthernetIXL_NetIf *this)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXL_NetIf::SelectMediaType_Impl();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf::SetWakeOnMagicPacketEnable_Impl(DriverKit_AppleEthernetIXL_NetIf *this)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXL_NetIf::SetWakeOnMagicPacketEnable_Impl();
  }

  return 0;
}

void DriverKit_AppleEthernetIXL::Start_Impl(IOService *)::$_0::__invoke()
{
  if (atomic_fetch_add_explicit(&cancelCount, 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    v10 = v0;
    v11 = v1;
    v2 = 0;
    v3 = IXL_dev;
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = *(*(v3 + 48) + 8 * v2 + 35352);
      if (v6)
      {
        (*(*v6 + 16))(v6);
        v3 = IXL_dev;
        *(*(IXL_dev + 48) + 8 * v2 + 35352) = 0;
      }

      v4 = 0;
      v2 = 1;
    }

    while ((v5 & 1) != 0);
    v7 = *(v3 + 48);
    if (*v7)
    {
      ((*v7)->release)(*v7);
      v8 = IXL_dev;
      **(IXL_dev + 48) = 0;
      v7 = *(v8 + 48);
    }

    readData = 0;
    IOPCIDevice::ConfigurationRead8(v7[4416], 4uLL, &readData);
    IOPCIDevice::ConfigurationWrite8(*(*(IXL_dev + 48) + 35328), 4uLL, readData & 0xFB);
    IOPCIDevice::Close(*(*(IXL_dev + 48) + 35328), IXL_dev, 0);
    IOService::Stop(IXL_dev, *(*(IXL_dev + 48) + 35328), &IOService::_Dispatch);
  }
}

uint64_t i40e_add_sd_table_entry(IOService **a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v5 = *(a2 + 56);
  if (v5)
  {
    if (*(a2 + 48) <= a3)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): %s\n", "i40e_add_sd_table_entry", 37, "i40e_add_sd_table_entry: bad sd_index\n");
      }

      return 4294967251;
    }

    else
    {
      v8 = v5 + 80 * a3;
      if (*(v8 + 4))
      {
LABEL_20:
        dma_mem = 0;
        if (*v8 == 2)
        {
          ++*(v8 + 60);
        }

        return dma_mem;
      }

      if (a4 == 1)
      {
        v10 = 5;
      }

      else
      {
        v10 = 7;
      }

      if (a4 == 1)
      {
        v11 = 4096;
      }

      else
      {
        v11 = a5;
      }

      dma_mem = i40e_allocate_dma_mem(a1, v16, v10, v11);
      if (!dma_mem)
      {
        if (a4 == 1)
        {
          i40e_allocate_virt_mem();
        }

        v13 = v16[0];
        v14 = v16[1];
        *(v8 + 48) = v17;
        *(v8 + 16) = v13;
        *(v8 + 32) = v14;
        *(v8 + 56) = a3;
        *(*(a2 + 56) + 80 * a3) = a4;
        ++*(a2 + 52);
        goto LABEL_20;
      }
    }
  }

  else
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_add_sd_table_entry", 31, "i40e_add_sd_table_entry: bad sd_entry\n");
    }

    return 4294967277;
  }

  return dma_mem;
}

uint64_t i40e_add_pd_table_entry(IOService **a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v4 = a3 >> 9;
  if (a3 >> 9 >= *(a2 + 48))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_add_pd_table_entry", 125, "i40e_add_pd_table_entry: bad pd_index\n");
    }

    return 4294967250;
  }

  else
  {
    v5 = *(a2 + 56) + 80 * v4;
    if (*v5 == 1)
    {
      v7 = a3 & 0x1FF;
      v8 = *(v5 + 48) + (v7 << 6);
      if (*(v8 + 61))
      {
LABEL_6:
        result = 0;
        ++*(v8 + 52);
        return result;
      }

      v9 = a4;
      v10 = 1;
      if (a4)
      {
LABEL_5:
        *(v8 + 60) = v10;
        v11 = *v9;
        v12 = *(v9 + 1);
        *(v8 + 40) = *(v9 + 4);
        *(v8 + 24) = v12;
        *(v8 + 8) = v11;
        *(v8 + 48) = a3;
        *v8 = 1;
        *(*(v5 + 8) + 8 * v7) = *(v9 + 1) | 1;
        *(v8 + 56) = v4;
        *(v8 + 61) = 1;
        ++*(v5 + 72);
        goto LABEL_6;
      }

      v9 = v14;
      result = i40e_allocate_dma_mem(a1, v14, 6, 0x1000uLL);
      if (!result)
      {
        v10 = 0;
        goto LABEL_5;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t i40e_remove_pd_bp(IOPCIDevice **a1, uint64_t a2, unsigned int a3)
{
  v3 = a3 >> 9;
  if (a3 >> 9 >= *(a2 + 48))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_remove_pd_bp", 206, "i40e_remove_pd_bp: bad idx\n");
    }

    return 4294967250;
  }

  else
  {
    v4 = *(a2 + 56) + 80 * v3;
    if (*v4 == 1)
    {
      v5 = a3 & 0x1FF;
      v6 = *(v4 + 48) + (v5 << 6);
      v7 = *(v6 + 52) - 1;
      *(v6 + 52) = v7;
      if (v7)
      {
        return 0;
      }

      *(v6 + 61) = 0;
      --*(v4 + 72);
      *(*(v4 + 8) + 8 * v5) = 0;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0xC0300uLL, v3 | (a3 << 16));
      if ((*(v6 + 60) & 1) != 0 || (result = i40e_free_dma_mem(a1, v6 + 8), !result))
      {
        if (!*(v4 + 72))
        {
          i40e_free_virt_mem(a1, (v4 + 56));
        }

        return 0;
      }
    }

    else
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): %s\n", "i40e_remove_pd_bp", 212, "i40e_remove_pd_bp: wrong sd_entry type\n");
      }

      return 4294967249;
    }
  }

  return result;
}

uint64_t i40e_prep_remove_sd_bp(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 56) + 80 * a2;
  v3 = *(v2 + 60) - 1;
  *(v2 + 60) = v3;
  if (v3)
  {
    return 4294967233;
  }

  result = 0;
  --*(a1 + 52);
  *(v2 + 4) = 0;
  return result;
}

uint64_t i40e_remove_sd_bp_new(IOPCIDevice **a1, uint64_t a2, unsigned int a3, int a4)
{
  if (!a4)
  {
    return 4294967232;
  }

  v6 = *(a2 + 56);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xC0200uLL, 0);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xC0100uLL, 0x802u);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xC0000uLL, a3 | 0x80000000);

  return i40e_free_dma_mem(a1, v6 + 80 * a3 + 16);
}

uint64_t i40e_prep_remove_pd_page(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 56) + 80 * a2;
  if (*(v2 + 72))
  {
    return 4294967233;
  }

  result = 0;
  *(v2 + 4) = 0;
  --*(a1 + 52);
  return result;
}

uint64_t i40e_remove_pd_page_new(IOPCIDevice **a1, uint64_t a2, unsigned int a3, int a4)
{
  if (!a4)
  {
    return 4294967232;
  }

  v6 = *(a2 + 56);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xC0200uLL, 0);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xC0100uLL, 0x800u);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xC0000uLL, a3 | 0x80000000);

  return i40e_free_dma_mem(a1, v6 + 80 * a3 + 8);
}

uint64_t DriverKit_AppleEthernetIXL_IVars::probe(DriverKit_AppleEthernetIXL_IVars *this, IOPCIDevice *a2)
{
  v10 = 1;
  IOParseBootArgNumber("ixl", &v10, 4);
  if (v10)
  {
    properties = 0;
    if (IOService::CopyProperties(a2, &properties, 0))
    {
      DriverKit_AppleEthernetIXL_IVars::probe();
    }

    Object = OSDictionary::getObject(properties, "device-id");
    v4 = OSMetaClassBase::safeMetaCast(Object, gOSDataMetaClass);
    v5 = *OSData::getBytesNoCopy(v4);
    v6 = &off_1000243B0;
    v7 = 21;
    do
    {
      if (*(v6 - 2) == v5)
      {
        operator new[]();
      }

      v6 += 2;
      --v7;
    }

    while (v7);
    if (properties)
    {
      (properties->release)(properties);
    }
  }

  return 3758097084;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::start(DriverKit_AppleEthernetIXL_IVars *this)
{
  v2 = this + 33576;
  *(this + 2) = this + 33576;
  *(this + 3) = this;
  i40e_clear_hw(this + 4197);
  i40e_set_mac_type(v2);
  v3 = DriverKit_AppleEthernetIXL_IVars::reset_hw(this);
  if (!v3)
  {
    inited = i40e_init_shared_code(v2);
    if (inited)
    {
      v6 = inited;
      v3 = 3758097084;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = pcindkid;
        v9 = 2080;
        v10 = "start";
        v11 = 1024;
        v12 = 110;
        v13 = 2080;
        v14 = i40e_stat_str(v2, v6);
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): Unable to initialize shared code, %s.\n", &v7, 0x26u);
      }
    }

    else
    {
      v3 = 0;
      *(this + 34460) = 0x1000100001000100;
      *(this + 8864) = 3;
    }
  }

  return v3;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::reset_hw(IOPCIDevice **this)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_IVars::reset_hw();
  }

  FWmode = DriverKit_AppleEthernetIXL_IVars::getFWmode(this);
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_IVars::reset_hw();
  }

  if (FWmode == 1)
  {
    goto LABEL_13;
  }

  v3 = i40e_pf_reset(this + 4197);
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  v5 = DriverKit_AppleEthernetIXL_IVars::getFWmode(this);
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_IVars::reset_hw();
  }

  if (v5 == 1)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  if (v5 == 2)
  {
    v6 = 3758097084;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v10 = 136315650;
    v11 = pcindkid;
    v12 = 2080;
    v13 = "reset_hw";
    v14 = 1024;
    v15 = 463;
    v7 = "ixl:(%s): %s(%d): Entering recovery mode due to repeated FW resets. This may take several minutes. Refer to the Intel(R) Ethernet Adapters and Devices User Guide.\n";
    v8 = 28;
  }

  else
  {
    v6 = 3758097084;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v10 = 136315906;
    v11 = pcindkid;
    v12 = 2080;
    v13 = "reset_hw";
    v14 = 1024;
    v15 = 465;
    v16 = 2080;
    v17 = i40e_stat_str((this + 4197), v4);
    v7 = "ixl:(%s): %s(%d): PF reset failure %s\n";
    v8 = 38;
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, &v10, v8);
LABEL_14:
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_IVars::reset_hw();
  }

  return v6;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::load(IOPCIDevice **this, int a2)
{
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if ((a2 & 1) == 0)
  {
    v4 = DriverKit_AppleEthernetIXL_IVars::reset_hw(this);
    if (v4)
    {
      return v4;
    }
  }

  v4 = 3758097084;
  inited = i40e_init_adminq((this + 4197));
  v6 = inited;
  if (inited != -65 && inited != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v25 = pcindkid;
      v26 = 2080;
      v27 = "load";
      v28 = 1024;
      v29 = 138;
      v30 = 2080;
      *v31 = i40e_stat_str((this + 4197), v6);
      v17 = "ixl:(%s): %s(%d): Unable to initialize Admin Queue, %s\n";
      v18 = 38;
      goto LABEL_18;
    }

    return v4;
  }

  if (!a2)
  {
    goto LABEL_34;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(this + 17234);
    v9 = *(this + 17235);
    v10 = *(this + 8618);
    v11 = *(this + 17238);
    v12 = *(this + 17239);
    v13 = *(this + 16864) >> 12;
    v14 = *(this + 16864);
    v15 = *(this + 8433);
    v16 = *(this + 8434);
    *buf = 136318466;
    v25 = pcindkid;
    v26 = 2080;
    v27 = "load";
    v28 = 1024;
    v29 = 150;
    v30 = 1024;
    *v31 = v8;
    *&v31[4] = 1024;
    *&v31[6] = v9;
    v32 = 1024;
    v33 = v10;
    v34 = 1024;
    v35 = v11;
    v36 = 1024;
    v37 = v12;
    v38 = 1024;
    v39 = v13;
    v40 = 1024;
    v41 = v14;
    v42 = 1024;
    v43 = v15;
    v44 = 1024;
    v45 = HIBYTE(v16);
    v46 = 1024;
    v47 = HIWORD(v16);
    v48 = 1024;
    v49 = v16;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): fw %d.%d.%05d api %d.%d nvm %x.%02x etid %08x oem %d.%d.%d\n", buf, 0x5Eu);
  }

  if (v6 != -65)
  {
    if (*(this + 17238) != 1)
    {
      goto LABEL_34;
    }

    v20 = *(this + 17239);
    if (*(this + 8414) == 1)
    {
      v21 = 14;
    }

    else
    {
      v21 = 12;
    }

    if (v21 >= v20)
    {
      if (v20 <= 3)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v25 = pcindkid;
          v26 = 2080;
          v27 = "load";
          v28 = 1024;
          v29 = 162;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): The driver for the device detected an older version of the NVM image than expected.\n", buf, 0x1Cu);
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v25 = pcindkid;
          v26 = 2080;
          v27 = "load";
          v28 = 1024;
          v29 = 163;
          v22 = "ixl:(%s): %s(%d): Please update the NVM image.\n";
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v25 = pcindkid;
        v26 = 2080;
        v27 = "load";
        v28 = 1024;
        v29 = 159;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): The driver for the device detected a newer version of the NVM image than expected.\n", buf, 0x1Cu);
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v25 = pcindkid;
        v26 = 2080;
        v27 = "load";
        v28 = 1024;
        v29 = 160;
        v22 = "ixl:(%s): %s(%d): Please install the most recent version of the network driver.\n";
LABEL_33:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v22, buf, 0x1Cu);
      }
    }

LABEL_34:
    i40e_clear_pxe_mode(this + 4197);
    DriverKit_AppleEthernetIXL_IVars::getHWcapabilities(this);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v25 = pcindkid;
    v26 = 2080;
    v27 = "load";
    v28 = 1024;
    v29 = 153;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): The driver for the device stopped because the NVM image is newer than expected.\n", buf, 0x1Cu);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v25 = pcindkid;
    v26 = 2080;
    v27 = "load";
    v28 = 1024;
    v29 = 154;
    v17 = "ixl:(%s): %s(%d): You must install the most recent version of the network driver.\n";
    v18 = 28;
LABEL_18:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v17, buf, v18);
  }

  return v4;
}

void DriverKit_AppleEthernetIXL_IVars::setup_hmc(DriverKit_AppleEthernetIXL_IVars *this)
{
  v1 = *(this + 8537);
  v2 = *(this + 8536);
  i40e_init_lan_hmc(this + 33576);
}

void DriverKit_AppleEthernetIXL_IVars::configure_intr0_msix(IOPCIDevice **this)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, 0x38800uLL, 0);
  readData = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, 0x38780uLL, &readData);
  __dmb(1u);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, 0x38800uLL, 0x74390000u);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, 0x38500uLL, 0x7FFu);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, 0x38000uLL, 0x3Eu);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, 0x38480uLL, 0x86000000);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, 0x38400uLL, 0);
}

uint64_t DriverKit_AppleEthernetIXL_IVars::switch_config(DriverKit_AppleEthernetIXL_IVars *this)
{
  memset(v33, 0, 512);
  v32 = 0;
  switch_config = i40e_aq_get_switch_config(this + 33576, v33, 0x200u, &v32, 0);
  v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (switch_config)
  {
    v4 = 3758097098;
    if (v3)
    {
      v5 = *(this + 8621);
      *buf = 136316162;
      v15 = pcindkid;
      v16 = 2080;
      v17 = "switch_config";
      v18 = 1024;
      v19 = 481;
      v20 = 1024;
      v21 = switch_config;
      v22 = 1024;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): aq_get_switch_config() failed, error %d, aq_error %d\n", buf, 0x28u);
    }
  }

  else
  {
    if (v3)
    {
      *buf = 136316162;
      v15 = pcindkid;
      v16 = 2080;
      v17 = "switch_config";
      v18 = 1024;
      v19 = 487;
      v20 = 1024;
      v21 = LOWORD(v33[0]);
      v22 = 1024;
      v23 = WORD1(v33[0]);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): Switch config: header reported: %d in structure, %d total\n", buf, 0x28u);
    }

    v6 = LOWORD(v33[0]);
    if (LOWORD(v33[0]))
    {
      v7 = 0;
      v8 = &v33[1] + 3;
      do
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(v8 - 6);
          v10 = *(v8 - 2);
          v11 = *(v8 - 1);
          v12 = *v8;
          *buf = 136317186;
          v15 = pcindkid;
          v16 = 2080;
          v17 = "switch_config";
          v18 = 1024;
          v19 = 493;
          v20 = 1024;
          v21 = v7;
          v22 = 1024;
          v23 = v9;
          v24 = 1024;
          v25 = v10;
          v26 = 1024;
          v27 = v11;
          v28 = 1024;
          v29 = v12;
          v30 = 1024;
          v31 = v32;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): -> %d: type=%d seid=%d uplink=%d downlink=%d next=%d\n", buf, 0x40u);
          v6 = LOWORD(v33[0]);
        }

        ++v7;
        v8 += 8;
      }

      while (v7 < v6);
    }

    v4 = 0;
    *(this + 23) = WORD3(v33[1]);
    *(this + 42) = *(&v33[1] + 2);
  }

  return v4;
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::init_filters(DriverKit_AppleEthernetIXL_NetIf_IVars *this)
{
  *(this + 81) = 0;
  *(this + 329) = 0;
  i40e_aq_set_vsi_broadcast(*(this + 2), *(this + 21), 1, 0);
  DriverKit_AppleEthernetIXL_NetIf_IVars::del_default_hw_filters(this);
  DriverKit_AppleEthernetIXL_NetIf_IVars::add_filter(this, (*(this + 2) + 84), -1);
  v2 = *(this + 2);
  v3 = *(this + 21);

  i40e_add_filter_to_drop_tx_flow_control_frames(v2, v3);
}

uint64_t *DriverKit_AppleEthernetIXL_IVars::unload(uint64_t **this)
{
  DriverKit_AppleEthernetIXL_IVars::shutdown_hmc(this);
  DriverKit_AppleEthernetIXL_IVars::disable_intr0(this);
  v2 = i40e_shutdown_adminq((this + 4197));
  if (v2 && (pcindkll & 1) != 0)
  {
    DriverKit_AppleEthernetIXL_IVars::unload((this + 4197), v2);
  }

  ixl::ixl_pf_qmgr::release((this + 4423), (this + 4425));
  result = this[81];
  if (result)
  {
    v4 = *result;
    operator delete();
  }

  this[81] = 0;
  return result;
}

void DriverKit_AppleEthernetIXL_IVars::shutdown_hmc(DriverKit_AppleEthernetIXL_IVars *this)
{
  if (*(this + 4325))
  {
    v2 = i40e_shutdown_lan_hmc(this + 33576);
    if (v2)
    {
      v3 = v2;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315906;
        v5 = pcindkid;
        v6 = 2080;
        v7 = "shutdown_hmc";
        v8 = 1024;
        v9 = 438;
        v10 = 2080;
        v11 = i40e_stat_str(this + 33576, v3);
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): Shutdown LAN HMC failed with code %s\n", &v4, 0x26u);
      }
    }
  }
}

void DriverKit_AppleEthernetIXL_IVars::disable_intr0(IOPCIDevice **this)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, 0x38480uLL, 0x18u);
  readData = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, 0xB612CuLL, &readData);
  __dmb(1u);
}

uint64_t *DriverKit_AppleEthernetIXL_NetIf_IVars::free_filters(uint64_t **a1)
{
  result = *a1;
  if (result)
  {
    v3 = *result;
    operator delete();
  }

  *a1 = 0;
  return result;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::getFWmode(IOPCIDevice **this)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, 0x83048uLL, &readData);
  __dmb(1u);
  v1 = readData & 0xFF0000;
  result = 1;
  if ((readData & 0xFF0000) - 3145728 > 0x30000 && v1 != 720896 && v1 != 786432)
  {
    return 2 * (v1 - 2097153 < 0xA0000);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::up(DriverKit_AppleEthernetIXL_NetIf_IVars *this)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::up();
  }

  if ((i40e_check_asq_alive(*(this + 2)) & 1) == 0)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::up();
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  LOWORD(v52) = *(this + 21);
  v2 = *(this + 3);
  if (*(v2 + 35468))
  {
    WORD1(v52) = *(v2 + 35468);
  }

  v3 = *(this + 2);
  BYTE12(v52) = *(v3 + 642);
  vsi_params = i40e_aq_get_vsi_params(v3, &v52);
  if (vsi_params)
  {
    v5 = vsi_params;
    v6 = 3758097084;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(this + 2) + 908);
      *buf = 136316162;
      *&buf[4] = pcindkid;
      *&buf[12] = 2080;
      *&buf[14] = "up";
      *&buf[22] = 1024;
      *&buf[24] = 530;
      *&buf[28] = 1024;
      *&buf[30] = v5;
      *&buf[34] = 1024;
      *&buf[36] = v7;
      v8 = "ixl:(%s): %s(%d): i40e_aq_get_vsi_params() failed, error %d aq_error %d\n";
LABEL_20:
      v21 = 40;
LABEL_21:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v8, buf, v21);
    }
  }

  else
  {
    if (pcindkll)
    {
      DriverKit_AppleEthernetIXL_NetIf_IVars::up(&v52, (&v52 | 0xC));
    }

    LOWORD(v53) = 64;
    HIWORD(v54) = 0;
    v9 = *(v2 + 35444);
    v10 = __clz(v9) ^ 0x1F;
    if (*(v2 + 35444))
    {
      v11 = v10;
    }

    else
    {
      v11 = -1;
    }

    v12 = *(v2 + 35412);
    HIWORD(v56) = v12 & 0x1FF | ((v11 & 7) << 9);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      *&buf[4] = pcindkid;
      *&buf[12] = 2080;
      *&buf[14] = "up";
      *&buf[22] = 1024;
      *&buf[24] = 559;
      *&buf[28] = 1024;
      *&buf[30] = v12;
      *&buf[34] = 1024;
      *&buf[36] = v9;
      *&buf[40] = 1024;
      *&buf[42] = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): pf->qtag.first_qidx=%d, pf->qtag.num_allocated=%d, tc_queues=%d\n", buf, 0x2Eu);
      v13 = v53 | 4;
    }

    else
    {
      v13 = 68;
    }

    LOWORD(v53) = v13;
    BYTE12(v53) = 27;
    *(this + 20) = WORD2(v52);
    v14 = v58;
    *(this + 724) = v57;
    *(this + 740) = v14;
    v15 = v60;
    *(this + 756) = v59;
    *(this + 772) = v15;
    v16 = v54;
    *(this + 660) = v53;
    *(this + 676) = v16;
    v17 = v56;
    *(this + 692) = v55;
    *(this + 708) = v17;
    WORD5(v52) = 2;
    updated = i40e_aq_update_vsi_params(*(this + 2), &v52, 0);
    if (!updated)
    {
      v23 = 1;
      if (*(this + 640))
      {
        v24 = 0;
        v25 = (this + 56);
        v26 = 1064960;
        while (1)
        {
          memset(buf, 0, sizeof(buf));
          buf[2] = 1;
          v27 = *v25;
          *&buf[8] = *v25 >> 7;
          *&buf[24] = 256;
          *&buf[44] = *(this + 378);
          buf[23] = 1;
          *&buf[32] = v27 + 4096;
          if (i40e_clear_lan_tx_queue_context(*(this + 2), v24))
          {
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_34;
            }

            v43 = 136315650;
            v44 = pcindkid;
            v45 = 2080;
            v46 = "up";
            v47 = 1024;
            v48 = 614;
            v29 = "ixl:(%s): %s(%d): Unable to clear TX context\n";
            goto LABEL_33;
          }

          if (i40e_set_lan_tx_queue_context(*(this + 2), v24, buf))
          {
            break;
          }

          v25 += 37;
          v28 = (4 * (*(*(this + 2) + 642) & 0xF)) | 2;
          __dmb(2u);
          IOPCIDevice::MemoryWrite32(**(this + 2), 0, v26, v28);
          v43 = 0;
          IOPCIDevice::MemoryRead32(**(this + 2), 0, 0xB612CuLL, &v43);
          __dmb(1u);
          __dmb(2u);
          IOPCIDevice::MemoryWrite32(**(this + 2), 0, v26 + 0x4000, 0);
          ++v24;
          v26 += 4;
          if (v24 >= *(this + 640))
          {
            v23 = 1;
            goto LABEL_35;
          }
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        v43 = 136315650;
        v44 = pcindkid;
        v45 = 2080;
        v46 = "up";
        v47 = 1024;
        v48 = 619;
        v29 = "ixl:(%s): %s(%d): Unable to set TX context\n";
LABEL_33:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v29, &v43, 0x1Cu);
LABEL_34:
        v23 = 0;
      }

LABEL_35:
      if (*(this + 641))
      {
        v30 = 0;
        v31 = (this + 352);
        v32 = 1212416;
        while (1)
        {
          memset(buf, 0, sizeof(buf));
          v33 = *(this + 2);
          if (((*(v33 + 604) << 11) & 0xF800) != 0)
          {
            v34 = 2048;
          }

          else
          {
            v34 = 0;
          }

          *&buf[32] = v34;
          *&buf[8] = *v31 >> 7;
          *&buf[36] = 257;
          buf[39] = 0;
          *&buf[40] = 1;
          *&buf[16] = 1049088;
          *&buf[24] = 65537;
          buf[42] = 1;
          if (i40e_clear_lan_rx_queue_context(v33, v30))
          {
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_52;
            }

            v43 = 136315906;
            v44 = pcindkid;
            v45 = 2080;
            v46 = "up";
            v47 = 1024;
            v48 = 660;
            v49 = 1024;
            v50 = v30;
            v35 = "ixl:(%s): %s(%d): Unable to clear RX context %d\n";
            goto LABEL_51;
          }

          if (i40e_set_lan_rx_queue_context(*(this + 2), v30, buf))
          {
            break;
          }

          v31 += 37;
          __dmb(2u);
          IOPCIDevice::MemoryWrite32(**(this + 2), 0, v32, 0);
          ++v30;
          v32 += 4;
          if (v30 >= *(this + 641))
          {
            goto LABEL_45;
          }
        }

        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_52;
        }

        v43 = 136315906;
        v44 = pcindkid;
        v45 = 2080;
        v46 = "up";
        v47 = 1024;
        v48 = 665;
        v49 = 1024;
        v50 = v30;
        v35 = "ixl:(%s): %s(%d): Unable to set RX context %d\n";
LABEL_51:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v35, &v43, 0x22u);
      }

      else if (v23)
      {
LABEL_45:
        DriverKit_AppleEthernetIXL_IVars::setLink(v2, 1);
        if (*(v2 + 35360))
        {
          DriverKit_AppleEthernetIXL_IVars::configure_queue_intr_msix(v2);
          DriverKit_AppleEthernetIXL_IVars::configure_tx_itr(v2);
        }

        else
        {
          DriverKit_AppleEthernetIXL_IVars::configure_legacy(v2);
        }

        if (*(this + 640))
        {
          v36 = 0;
          do
          {
            DriverKit_AppleEthernetIXL_IVars::enableTxRing(v2, v2 + 35400, v36++);
          }

          while (v36 < *(this + 640));
        }

        if (*(this + 641))
        {
          v37 = 0;
          do
          {
            DriverKit_AppleEthernetIXL_IVars::enableRxRing(v2, v2 + 35400, v37++);
          }

          while (v37 < *(this + 641));
        }

        v38 = i40e_aq_set_default_vsi(*(this + 2), *(this + 21), 0);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v39 = *(this + 21);
          *buf = 136316162;
          *&buf[4] = pcindkid;
          *&buf[12] = 2080;
          *&buf[14] = "up";
          *&buf[22] = 1024;
          *&buf[24] = 691;
          *&buf[28] = 1024;
          *&buf[30] = v38;
          *&buf[34] = 1024;
          *&buf[36] = v39;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): i40e_aq_set_default_vsi returned %d, for vsi seid %d\n", buf, 0x28u);
        }

        DriverKit_AppleEthernetIXL_NetIf_IVars::reconfigure_filters(this);
        if (*(this + 641))
        {
          v40 = 0;
          v41 = 215040;
          do
          {
            v42 = *(this + 2);
            __dmb(2u);
            IOPCIDevice::MemoryWrite32(*v42, 0, v41, 0x1Bu);
            ++v40;
            v41 += 4;
          }

          while (v40 < *(this + 641));
        }

        if ((pcindkll & 1) == 0)
        {
          return 0;
        }

        DriverKit_AppleEthernetIXL_NetIf_IVars::up(buf);
        return *buf;
      }

LABEL_52:
      v6 = 3758097084;
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return v6;
      }

      *buf = 136315650;
      *&buf[4] = pcindkid;
      *&buf[12] = 2080;
      *&buf[14] = "up";
      *&buf[22] = 1024;
      *&buf[24] = 672;
      v8 = "ixl:(%s): %s(%d): initialize vsi failed!!\n";
      v21 = 28;
      goto LABEL_21;
    }

    v19 = updated;
    v6 = 3758097084;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(this + 2) + 908);
      *buf = 136316162;
      *&buf[4] = pcindkid;
      *&buf[12] = 2080;
      *&buf[14] = "up";
      *&buf[22] = 1024;
      *&buf[24] = 584;
      *&buf[28] = 1024;
      *&buf[30] = v19;
      *&buf[34] = 1024;
      *&buf[36] = v20;
      v8 = "ixl:(%s): %s(%d): i40e_aq_update_vsi_params() failed, error %d, aq_error %d\n";
      goto LABEL_20;
    }
  }

  return v6;
}

void DriverKit_AppleEthernetIXL_IVars::configure_queue_intr_msix(IOPCIDevice **this)
{
  if (*(this + 641) | *(this + 640))
  {
    v2 = 0;
    v3 = 1;
    v4 = 215040;
    v5 = 245760;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(this[4197], 0, v4, 0);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(this[4197], 0, v4 + 2048, v2);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(this[4197], 0, v5 - 0x2000, v3 | 0x48000000);
      ++v2;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(this[4197], 0, v5, v2 | 0x47FF0800);
      if (*(this + 641) <= *(this + 640))
      {
        v6 = *(this + 640);
      }

      else
      {
        v6 = *(this + 641);
      }

      v3 += 65537;
      v4 += 4;
      v5 += 4;
    }

    while (v2 < v6);
  }
}

void DriverKit_AppleEthernetIXL_IVars::configure_legacy(IOPCIDevice **this)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, 0x38800uLL, 0x74390000u);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, 0x38400uLL, 0xCu);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, 0x38500uLL, 0);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, 0x3A000uLL, 0x48000000u);
  __dmb(2u);
  v2 = this[4197];

  IOPCIDevice::MemoryWrite32(v2, 0, 0x3C000uLL, 0x47FF0800u);
}

uint64_t DriverKit_AppleEthernetIXL_IVars::enableTxRing(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 44) <= a3)
  {
    ixl::ixl_pf_qmgr::mark_queue_enabled();
  }

  v4 = (a2 + 12);
  if (*(a2 + 8))
  {
    v5 = v4[a3];
  }

  else
  {
    v5 = *v4 + a3;
  }

  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_IVars::enableTxRing();
  }

  v6 = v5;
  i40e_pre_tx_queue_cfg(a1 + 33576, v5, 1);
  v12 = 0;
  v7 = (4 * v5) | 0x100000u;
  IOPCIDevice::MemoryRead32(*(a1 + 33576), 0, v7, &v12);
  __dmb(1u);
  v8 = v12;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 33576), 0, v7, v8 | 5);
  v9 = 10;
  do
  {
    v12 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 33576), 0, v7, &v12);
    __dmb(1u);
    if ((v12 & 4) != 0)
    {
      return 0;
    }

    IODelay(0xAuLL);
    --v9;
  }

  while (v9);
  v10 = 3758097110;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315906;
    v13 = pcindkid;
    v14 = 2080;
    v15 = "enableTxRing";
    v16 = 1024;
    v17 = 739;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): TX queue %d still disabled!\n", &v12, 0x22u);
  }

  return v10;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::enableRxRing(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 44) <= a3)
  {
    ixl::ixl_pf_qmgr::mark_queue_enabled();
  }

  v4 = (a2 + 12);
  if (*(a2 + 8))
  {
    v5 = v4[a3];
  }

  else
  {
    v5 = *v4 + a3;
  }

  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_IVars::enableRxRing();
  }

  v12 = 0;
  v6 = v5;
  v7 = 4 * v5 + 1179648;
  IOPCIDevice::MemoryRead32(*(a1 + 33576), 0, v7, &v12);
  __dmb(1u);
  v8 = v12;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 33576), 0, v7, v8 | 5);
  v9 = 10;
  do
  {
    v12 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 33576), 0, v7, &v12);
    __dmb(1u);
    if ((v12 & 4) != 0)
    {
      return 0;
    }

    IODelay(0xAuLL);
    --v9;
  }

  while (v9);
  v10 = 3758097110;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315906;
    v13 = pcindkid;
    v14 = 2080;
    v15 = "enableRxRing";
    v16 = 1024;
    v17 = 762;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): RX queue %d still disabled!\n", &v12, 0x22u);
  }

  return v10;
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::reconfigure_filters(DriverKit_AppleEthernetIXL_NetIf_IVars *this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v6 = pcindkid;
    v7 = 2080;
    v8 = "reconfigure_filters";
    v9 = 1024;
    v10 = 1449;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): <==\n", buf, 0x1Cu);
  }

  v2 = *(this + 81);
  v4 = v2;
  if (v2)
  {
    *(v2 + 8) = &v4;
    *(this + 81) = 0;
  }

  v3 = *(this + 329);
  *(this + 329) = 0;
  DriverKit_AppleEthernetIXL_NetIf_IVars::add_hw_filters(this, &v4, v3);
  DriverKit_AppleEthernetIXL_NetIf_IVars::add_filter(this, (*(this + 2) + 84), -1);
  DriverKit_AppleEthernetIXL_NetIf_IVars::add_vlan_filters(this, (*(this + 2) + 84));
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v6 = pcindkid;
    v7 = 2080;
    v8 = "reconfigure_filters";
    v9 = 1024;
    v10 = 1473;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): ==>\n", buf, 0x1Cu);
  }
}

uint64_t DriverKit_AppleEthernetIXL_IVars::disableTxRing(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 44) <= a3)
  {
    ixl::ixl_pf_qmgr::mark_queue_enabled();
  }

  v4 = (a2 + 12);
  if (*(a2 + 8))
  {
    v5 = v4[a3];
  }

  else
  {
    v5 = *v4 + a3;
  }

  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_IVars::disableTxRing();
  }

  v6 = v5;
  i40e_pre_tx_queue_cfg(a1 + 33576, v5, 0);
  IODelay(0x1F4uLL);
  v12 = 0;
  v7 = (4 * v5) | 0x100000u;
  IOPCIDevice::MemoryRead32(*(a1 + 33576), 0, v7, &v12);
  __dmb(1u);
  v8 = v12;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 33576), 0, v7, v8 & 0xFFFFFFFE);
  v9 = 10;
  do
  {
    v12 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 33576), 0, v7, &v12);
    __dmb(1u);
    if ((v12 & 4) == 0)
    {
      return 0;
    }

    IODelay(0x2710uLL);
    --v9;
  }

  while (v9);
  v10 = 3758097110;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315906;
    v13 = pcindkid;
    v14 = 2080;
    v15 = "disableTxRing";
    v16 = 1024;
    v17 = 788;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): TX queue %d still enabled!\n", &v12, 0x22u);
  }

  return v10;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::disableRxRing(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 44) <= a3)
  {
    ixl::ixl_pf_qmgr::mark_queue_enabled();
  }

  v4 = (a2 + 12);
  if (*(a2 + 8))
  {
    v5 = v4[a3];
  }

  else
  {
    v5 = *v4 + a3;
  }

  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_IVars::disableRxRing();
  }

  v12 = 0;
  v6 = v5;
  v7 = 4 * v5 + 1179648;
  IOPCIDevice::MemoryRead32(*(a1 + 33576), 0, v7, &v12);
  __dmb(1u);
  v8 = v12;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 33576), 0, v7, v8 & 0xFFFFFFFE);
  v9 = 10;
  do
  {
    v12 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 33576), 0, v7, &v12);
    __dmb(1u);
    if ((v12 & 4) == 0)
    {
      return 0;
    }

    IODelay(0x2710uLL);
    --v9;
  }

  while (v9);
  v10 = 3758097110;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315906;
    v13 = pcindkid;
    v14 = 2080;
    v15 = "disableRxRing";
    v16 = 1024;
    v17 = 811;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): RX queue %d still enabled!\n", &v12, 0x22u);
  }

  return v10;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::disableRings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 640))
  {
    v6 = 0;
    do
    {
      DriverKit_AppleEthernetIXL_IVars::disableTxRing(a1, a3, v6++);
    }

    while (v6 < *(a2 + 640));
  }

  if (*(a2 + 641))
  {
    v7 = 0;
    do
    {
      DriverKit_AppleEthernetIXL_IVars::disableRxRing(a1, a3, v7++);
    }

    while (v7 < *(a2 + 641));
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetIXL_IVars::process_adminq(DriverKit_AppleEthernetIXL_IVars *this, unsigned __int16 *a2)
{
  v4 = this + 0x8000;
  bzero(v18, 0x1000uLL);
  v5 = 0;
  v21 = 4096;
  v22 = v18;
  do
  {
    v6 = i40e_clean_arq_element(this + 33576, v19, a2);
    if (v6)
    {
      break;
    }

    v7 = v20;
    if ((pcindkll & 0x100000) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v11 = pcindkid;
      v12 = 2080;
      v13 = "process_adminq";
      v14 = 1024;
      v15 = 843;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): Admin Queue event: %#06x\n", buf, 0x22u);
    }

    if (v7 == 1543)
    {
      v4[872] = 1;
      i40e_get_link_status(this + 33576, this + 35448);
      if ((v4[832] & 0x40) != 0 && (v4[832] & 1) == 0 && (v4[833] & 0x80000000) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v11 = pcindkid;
        v12 = 2080;
        v13 = "process_adminq";
        v14 = 1024;
        v15 = 866;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): Link failed because an unqualified module was detected!\n", buf, 0x1Cu);
      }

      DriverKit_AppleEthernetIXL_IVars::update_link_status(this);
    }

    if (!*a2)
    {
      break;
    }
  }

  while (v5++ < 2);
  return v6;
}

void DriverKit_AppleEthernetIXL_IVars::handle_tx_mdd_event(IOPCIDevice **this)
{
  v1 = this + 4096;
  v11 = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, 0xE6480uLL, &v11);
  __dmb(1u);
  v2 = v11;
  if ((v11 & 0x80000000) == 0)
  {
    return;
  }

  v3 = v11 & 0xFFF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(v1[101], 0, 0xE6480uLL, 0xFFFFFFFF);
  v11 = 0;
  IOPCIDevice::MemoryRead32(v1[101], 0, 0xE6400uLL, &v11);
  __dmb(1u);
  v4 = v11;
  if (v11)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(v1[101], 0, 0xE6400uLL, 0xFFFFu);
    v5 = *(v1 + 1450);
  }

  else
  {
    v5 = 255;
  }

  v6 = (v2 >> 21) & 0xF;
  v7 = (v2 >> 25) & 0x1F;
  v11 = 0;
  IOPCIDevice::MemoryRead32(v1[101], 0, 0xE6000uLL, &v11);
  __dmb(1u);
  if (v11)
  {
    v8 = (v2 >> 12) & 0x1FF;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(v1[101], 0, 0xE6000uLL, 0xFFFFu);
    if (v4)
    {
      if ((pcindkll & 0x100000) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v11 = 136317186;
      v12 = pcindkid;
      v13 = 2080;
      v14 = "handle_tx_mdd_event";
      v15 = 1024;
      v16 = 941;
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v3;
      v21 = 1024;
      v22 = v6;
      v23 = 1024;
      v24 = v5;
      v25 = 1024;
      v26 = v8;
      v27 = 1024;
      v28 = 0;
      v9 = "ixl:(%s): %s(%d): Malicious Driver Detection event %d on TX queue %d, pf number %d (PF-%d), vf number %d (VF-%d)\n";
      v10 = 64;
    }

    else
    {
      if ((pcindkll & 0x100000) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v11 = 136316930;
      v12 = pcindkid;
      v13 = 2080;
      v14 = "handle_tx_mdd_event";
      v15 = 1024;
      v16 = 945;
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v3;
      v21 = 1024;
      v22 = v6;
      v23 = 1024;
      v24 = v8;
      v25 = 1024;
      v26 = 0;
      v9 = "ixl:(%s): %s(%d): Malicious Driver Detection event %d on TX queue %d, pf number %d, vf number %d (VF-%d)\n";
      v10 = 58;
    }

LABEL_20:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, &v11, v10);
    return;
  }

  if ((v4 & 1) == 0)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      DriverKit_AppleEthernetIXL_IVars::handle_tx_mdd_event();
    }

    return;
  }

  if ((pcindkll & 0x100000) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136316674;
    v12 = pcindkid;
    v13 = 2080;
    v14 = "handle_tx_mdd_event";
    v15 = 1024;
    v16 = 948;
    v17 = 1024;
    v18 = (v2 >> 25) & 0x1F;
    v19 = 1024;
    v20 = v2 & 0xFFF;
    v21 = 1024;
    v22 = (v2 >> 21) & 0xF;
    v23 = 1024;
    v24 = v5;
    v9 = "ixl:(%s): %s(%d): Malicious Driver Detection event %d on TX queue %d, pf number %d (PF-%d)\n";
    v10 = 52;
    goto LABEL_20;
  }
}

void DriverKit_AppleEthernetIXL_IVars::handle_rx_mdd_event(IOPCIDevice **this)
{
  v1 = this + 4096;
  v7 = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, 0x12A510uLL, &v7);
  __dmb(1u);
  v2 = v7;
  if ((v7 & 0x80000000) == 0)
  {
    return;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(v1[101], 0, 0x12A510uLL, 0xFFFFFFFF);
  v7 = 0;
  IOPCIDevice::MemoryRead32(v1[101], 0, 0x12A400uLL, &v7);
  __dmb(1u);
  v3 = v7;
  if (v7)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(v1[101], 0, 0x12A400uLL, 0xFFFFu);
    v4 = *(v1 + 1450);
  }

  else
  {
    v4 = 255;
  }

  v7 = 0;
  IOPCIDevice::MemoryRead32(v1[101], 0, 0x12A000uLL, &v7);
  __dmb(1u);
  if (v7)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(v1[101], 0, 0x12A000uLL, 0xFFFFu);
    if (v3)
    {
      if ((pcindkll & 0x100000) == 0 || !os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v7 = 136316930;
      v8 = pcindkid;
      v9 = 2080;
      v10 = "handle_rx_mdd_event";
      v11 = 1024;
      v12 = 1000;
      v13 = 1024;
      v14 = BYTE1(v2);
      v15 = 1024;
      v16 = (v2 >> 17) & 0x3FFF;
      v17 = 1024;
      v18 = v2;
      v19 = 1024;
      v20 = v4;
      v21 = 1024;
      v22 = 0;
      v5 = "ixl:(%s): %s(%d): Malicious Driver Detection event %d on RX queue %d, pf number %d (PF-%d), (VF-%d)\n";
      v6 = 58;
LABEL_19:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v5, &v7, v6);
      return;
    }

    if ((pcindkll & 0x100000) != 0)
    {
      DriverKit_AppleEthernetIXL_IVars::handle_rx_mdd_event();
    }
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        DriverKit_AppleEthernetIXL_IVars::handle_rx_mdd_event();
      }

      return;
    }

    if ((pcindkll & 0x100000) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316674;
      v8 = pcindkid;
      v9 = 2080;
      v10 = "handle_rx_mdd_event";
      v11 = 1024;
      v12 = 1006;
      v13 = 1024;
      v14 = BYTE1(v2);
      v15 = 1024;
      v16 = (v2 >> 17) & 0x3FFF;
      v17 = 1024;
      v18 = v2;
      v19 = 1024;
      v20 = v4;
      v5 = "ixl:(%s): %s(%d): Malicious Driver Detection event %d on RX queue %d, pf number %d (PF-%d)\n";
      v6 = 52;
      goto LABEL_19;
    }
  }
}

void DriverKit_AppleEthernetIXL_IVars::handle_mdd_event(IOPCIDevice **this)
{
  DriverKit_AppleEthernetIXL_IVars::handle_tx_mdd_event(this);

  DriverKit_AppleEthernetIXL_IVars::handle_rx_mdd_event(this);
}

void DriverKit_AppleEthernetIXL_IVars::configure_tx_itr(IOPCIDevice **this)
{
  if (*(this + 640))
  {
    v2 = 0;
    v3 = 198656;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(this[4197], 0, v3, 0x3Eu);
      ++v2;
      v3 += 4;
    }

    while (v2 < *(this + 640));
  }
}

void DriverKit_AppleEthernetIXL_IVars::configure_rx_itr(IOPCIDevice **this)
{
  if (*(this + 641))
  {
    v2 = 0;
    v3 = 196608;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(this[4197], 0, v3, 0x7Au);
      ++v2;
      v3 += 4;
    }

    while (v2 < *(this + 641));
  }
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::down(DriverKit_AppleEthernetIXL_NetIf_IVars *this)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::down();
  }

  v2 = *(this + 3);
  if (*(this + 641))
  {
    v3 = 0;
    v4 = 215040;
    do
    {
      v5 = *(this + 2);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*v5, 0, v4, 0x18u);
      ++v3;
      v4 += 4;
    }

    while (v3 < *(this + 641));
  }

  DriverKit_AppleEthernetIXL_IVars::disableRings(v2, this, v2 + 35400);
  *(v2 + 35448) = 0;
  DriverKit_AppleEthernetIXL_IVars::update_link_status(v2);
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::down();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::setPromiscuousModeEnable(DriverKit_AppleEthernetIXL_NetIf_IVars *this, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return DriverKit_AppleEthernetIXL_NetIf_IVars::promisc_set(this, v2);
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::setAllMulticastModeEnable(DriverKit_AppleEthernetIXL_NetIf_IVars *this, int a2)
{
  if (a2)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  return DriverKit_AppleEthernetIXL_NetIf_IVars::promisc_set(this, v2);
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::setMcastAddresses(DriverKit_AppleEthernetIXL_NetIf_IVars *this, unsigned __int8 *a2)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::setMcastAddresses();
  }

  if (*(this + 2) == 2)
  {
    if (*(this + 4195))
    {
      operator delete[]();
    }

    operator new[]();
  }

  if (pcindkll)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::setMcastAddresses();
  }

  return 0;
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::del_multi(DriverKit_AppleEthernetIXL_NetIf_IVars *this, int a2)
{
  v7 = 0;
  v2 = *(this + 81);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = v2;
      v2 = *v2;
      if ((v4[3] & 2) != 0 && a2)
      {
        v5 = v4[1];
        if (v2)
        {
          v2[1] = v5;
        }

        *v5 = v2;
        v6 = v7;
        *v4 = v7;
        if (v6)
        {
          v6[1] = v4;
        }

        v7 = v4;
        v4[1] = &v7;
        ++v3;
      }
    }

    while (v2);
    if (v3 >= 1)
    {
      DriverKit_AppleEthernetIXL_NetIf_IVars::del_hw_filters(this, &v7, v3);
    }
  }
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::add_multi(uint64_t **this)
{
  v1 = (this + 4096);
  v6 = 0;
  v2 = *(this + 8392);
  if (v2)
  {
    v4 = 0;
    for (i = 0; i < v2; ++i)
    {
      if (DriverKit_AppleEthernetIXL_NetIf_IVars::find_filter(this + 81, *(v1 + 99) + v4, 0xFFFFu))
      {
        operator new();
      }

      v4 += 6;
    }
  }
}

void DriverKit_AppleEthernetIXL_IVars::config_rss(DriverKit_AppleEthernetIXL_IVars *this)
{
  v2 = this + 0x8000;
  if (*(this + 8414) == 3)
  {
    v39 = 0;
    v38[0] = xmmword_10001CB28;
    v38[1] = unk_10001CB38;
    v38[2] = xmmword_10001CB48;
    v3 = i40e_aq_set_rss_key(this + 33576, *(this + 20), v38);
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v5 = pcindkid;
        v6 = i40e_stat_str(this + 33576, v4);
        v7 = i40e_aq_str(this + 33576, *(v2 + 429));
        *buf = 136316162;
        v41 = v5;
        v42 = 2080;
        v43 = "config_rss";
        v44 = 1024;
        v45 = 1280;
        v46 = 2080;
        v47 = v6;
        v48 = 2080;
        v49 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): i40e_aq_set_rss_key status %s, error %s\n", buf, 0x30u);
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 2377728;
    do
    {
      i40e_write_rx_ctl(this + 33576, v9, *(&xmmword_10001CB28 + v8));
      v9 = (v9 + 128);
      v8 += 4;
    }

    while (v8 != 52);
  }

  if (*(v2 + 222) == 3)
  {
    v10 = 0x80007F9FE0000000;
  }

  else
  {
    v10 = 0x80007A1E80000000;
  }

  rx_ctl = i40e_read_rx_ctl(this + 33576, 0x245900uLL);
  v12 = rx_ctl | (i40e_read_rx_ctl(this + 33576, 0x245980uLL) << 32) | v10;
  i40e_write_rx_ctl(this + 33576, 0x245900uLL, v12);
  i40e_write_rx_ctl(this + 33576, 0x245980uLL, HIDWORD(v12));
  v13 = *(v2 + 322);
  if (v13)
  {
    v14 = 0;
    v15 = *(this + 641);
    v16 = ~(-1 << *(v2 + 323));
    v17 = xmmword_10001C7D0;
    v18 = xmmword_10001C7E0;
    v19 = xmmword_10001C7F0;
    v20 = xmmword_10001C800;
    v21 = xmmword_10001C810;
    v22 = xmmword_10001C820;
    v23 = xmmword_10001C830;
    v24 = xmmword_10001C840;
    v25 = vdupq_n_s64(v13 - 1);
    v26 = vdupq_n_s64(0x10uLL);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, v24));
      if (vuzp1_s8(vuzp1_s16(v27, *v17.i8), *v17.i8).u8[0])
      {
        LOBYTE(v38[v14 / 0x10]) = (v14 % v15) & v16;
      }

      if (vuzp1_s8(vuzp1_s16(v27, *&v17), *&v17).i8[1])
      {
        BYTE1(v38[v14 / 0x10]) = ((v14 + 1) % v15) & v16;
      }

      if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v25, *&v23))), *&v17).i8[2])
      {
        BYTE2(v38[v14 / 0x10]) = ((v14 + 2) % v15) & v16;
        BYTE3(v38[v14 / 0x10]) = ((v14 + 3) % v15) & v16;
      }

      v28 = vmovn_s64(vcgeq_u64(v25, v22));
      if (vuzp1_s8(*&v17, vuzp1_s16(v28, *&v17)).i32[1])
      {
        BYTE4(v38[v14 / 0x10]) = ((v14 + 4) % v15) & v16;
      }

      if (vuzp1_s8(*&v17, vuzp1_s16(v28, *&v17)).i8[5])
      {
        BYTE5(v38[v14 / 0x10]) = ((v14 + 5) % v15) & v16;
      }

      if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v25, *&v21)))).i8[6])
      {
        BYTE6(v38[v14 / 0x10]) = ((v14 + 6) % v15) & v16;
        BYTE7(v38[v14 / 0x10]) = ((v14 + 7) % v15) & v16;
      }

      v29 = vmovn_s64(vcgeq_u64(v25, v20));
      if (vuzp1_s8(vuzp1_s16(v29, *v17.i8), *v17.i8).u8[0])
      {
        BYTE8(v38[v14 / 0x10]) = ((v14 + 8) % v15) & v16;
      }

      if (vuzp1_s8(vuzp1_s16(v29, *&v17), *&v17).i8[1])
      {
        BYTE9(v38[v14 / 0x10]) = ((v14 + 9) % v15) & v16;
      }

      if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v25, *&v19))), *&v17).i8[2])
      {
        BYTE10(v38[v14 / 0x10]) = ((v14 + 10) % v15) & v16;
        BYTE11(v38[v14 / 0x10]) = ((v14 + 11) % v15) & v16;
      }

      v30 = vmovn_s64(vcgeq_u64(v25, v18));
      if (vuzp1_s8(*&v17, vuzp1_s16(v30, *&v17)).i32[1])
      {
        BYTE12(v38[v14 / 0x10]) = ((v14 + 12) % v15) & v16;
      }

      if (vuzp1_s8(*&v17, vuzp1_s16(v30, *&v17)).i8[5])
      {
        BYTE13(v38[v14 / 0x10]) = ((v14 + 13) % v15) & v16;
      }

      if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v25, *&v17)))).i8[6])
      {
        BYTE14(v38[v14 / 0x10]) = ((v14 + 14) % v15) & v16;
        HIBYTE(v38[v14 / 0x10]) = ((v14 + 15) % v15) & v16;
      }

      v22 = vaddq_s64(v22, v26);
      v14 += 16;
      v23 = vaddq_s64(v23, v26);
      v24 = vaddq_s64(v24, v26);
      v21 = vaddq_s64(v21, v26);
      v20 = vaddq_s64(v20, v26);
      v19 = vaddq_s64(v19, v26);
      v18 = vaddq_s64(v18, v26);
      v17 = vaddq_s64(v17, v26);
    }

    while (((v13 + 15) & 0x1FFFFFFF0) != v14);
    if (*(v2 + 222) != 3)
    {
      if (v13 >= 4)
      {
        v31 = 0;
        v32 = 2359296;
        do
        {
          __dmb(2u);
          IOPCIDevice::MemoryWrite32(*(v2 + 101), 0, v32, *(v38 + v31++));
          v32 += 128;
        }

        while (v31 < *(v2 + 322) >> 2);
      }

      goto LABEL_46;
    }
  }

  else if (*(v2 + 222) != 3)
  {
LABEL_46:
    *buf = 0;
    IOPCIDevice::MemoryRead32(*(this + 4197), 0, 0xB612CuLL, buf);
    __dmb(1u);
    return;
  }

  v33 = i40e_aq_set_rss_lut(this + 33576, *(this + 20), 1, v38, 0x200u);
  if (v33)
  {
    v34 = v33;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v35 = pcindkid;
      v36 = i40e_stat_str(this + 33576, v34);
      v37 = i40e_aq_str(this + 33576, *(v2 + 429));
      *buf = 136316162;
      v41 = v35;
      v42 = 2080;
      v43 = "config_rss";
      v44 = 1024;
      v45 = 1345;
      v46 = 2080;
      v47 = v36;
      v48 = 2080;
      v49 = v37;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): i40e_aq_set_rss_lut status %s, error %s\n", buf, 0x30u);
    }
  }
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::del_default_hw_filters(DriverKit_AppleEthernetIXL_NetIf_IVars *this)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v9 = pcindkid;
    v10 = 2080;
    v11 = "del_default_hw_filters";
    v12 = 1024;
    v13 = 1378;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): <==\n", buf, 0x1Cu);
  }

  v2 = *(this + 2);
  v7 = 0;
  v4 = *(v2 + 90);
  v5 = *(v2 + 94);
  v6 = 0;
  LOBYTE(v7) = 1;
  i40e_aq_remove_macvlan(v2, *(this + 21), &v4, 1, 0);
  v3 = *(this + 2);
  v7 = 0;
  v4 = *(v3 + 90);
  v5 = *(v3 + 94);
  v6 = 0;
  LOBYTE(v7) = 9;
  i40e_aq_remove_macvlan(v3, *(this + 21), &v4, 1, 0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v9 = pcindkid;
    v10 = 2080;
    v11 = "del_default_hw_filters";
    v12 = 1024;
    v13 = 1391;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): ==>\n", buf, 0x1Cu);
  }
}

uint64_t *DriverKit_AppleEthernetIXL_NetIf_IVars::add_filter(uint64_t **this, const unsigned __int8 *a2, int a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[4];
    v11 = a2[5];
    buf[0] = 136317442;
    *&buf[1] = pcindkid;
    v14 = 2080;
    v15 = "add_filter";
    v16 = 1024;
    v17 = 1487;
    v18 = 1024;
    v19 = v6;
    v20 = 1024;
    v21 = v7;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v9;
    v26 = 1024;
    v27 = v10;
    v28 = 1024;
    v29 = v11;
    v30 = 1024;
    v31 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): %02x:%02x:%02x:%02x:%02x:%02x, vlan %4d\n", buf, 0x46u);
  }

  result = DriverKit_AppleEthernetIXL_NetIf_IVars::find_filter(this + 81, a2, a3);
  if (!result)
  {
    operator new();
  }

  return result;
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::add_hw_filters(uint64_t a1, uint64_t *a2, int a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v59 = pcindkid;
    v60 = 2080;
    v61 = "add_hw_filters";
    v62 = 1024;
    v63 = 1669;
    v64 = 1024;
    v65 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): cnt: %d\n", buf, 0x22u);
  }

  if (a3 >= 1)
  {
    v6 = 0;
    v40 = a3;
    v7 = a3;
    v8 = &v59 + 2;
    v41 = a2;
    while (1)
    {
      a2 = *a2;
      if (!a2)
      {
        break;
      }

      v9 = *(a2 + 4);
      *(v8 - 2) = *(a2 + 10);
      *(v8 - 2) = v9;
      v10 = *(a2 + 11);
      if (v10 == 0xFFFF)
      {
        LOWORD(v10) = 0;
        v11 = 5;
      }

      else
      {
        v11 = 1;
      }

      *(v8 - 1) = v10;
      *v8 = v11;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a2 + 16);
        v13 = *(a2 + 17);
        v14 = *(a2 + 18);
        v15 = *(a2 + 19);
        v16 = *(a2 + 20);
        v17 = *(a2 + 21);
        *v42 = 136317186;
        v43 = pcindkid;
        v44 = 2080;
        v45 = "add_hw_filters";
        v46 = 1024;
        v47 = 1686;
        v48 = 1024;
        *v49 = v12;
        *&v49[4] = 1024;
        *&v49[6] = v13;
        LOWORD(v50) = 1024;
        *(&v50 + 2) = v14;
        HIWORD(v50) = 1024;
        v51 = v15;
        v52 = 1024;
        v53 = v16;
        v54 = 1024;
        v55 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): %02x:%02x:%02x:%02x:%02x:%02x\n", v42, 0x40u);
      }

      ++v6;
      v8 += 8;
      if (v7 == v6)
      {
        goto LABEL_14;
      }
    }

    if (v7 == v6)
    {
LABEL_14:
      v18 = i40e_aq_add_macvlan(*(a1 + 16), *(a1 + 42), buf, v40, 0);
      if (v18)
      {
        v19 = v18;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v20 = pcindkid;
          v21 = i40e_stat_str(*(a1 + 16), v19);
          v22 = i40e_aq_str(*(a1 + 16), *(*(a1 + 16) + 908));
          *v42 = 136316162;
          v43 = v20;
          v44 = 2080;
          v45 = "add_hw_filters";
          v46 = 1024;
          v47 = 1705;
          v48 = 2080;
          *v49 = v21;
          *&v49[8] = 2080;
          v50 = v22;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): i40e_aq_add_macvlan status %s, error %s\n", v42, 0x30u);
        }

        v23 = *v41;
        if (*v41)
        {
          v24 = (a1 + 648);
          v25 = &v60;
          do
          {
            v27 = *v23;
            v26 = v23[1];
            if (*v23)
            {
              v27[1] = v26;
            }

            *v26 = v27;
            if (*v25 == 255)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v29 = *(v23 + 16);
                v30 = *(v23 + 17);
                v31 = *(v23 + 18);
                v32 = *(v23 + 19);
                v33 = *(v23 + 20);
                v34 = *(v23 + 21);
                v35 = *(v23 + 11);
                *v42 = 136317442;
                v43 = pcindkid;
                v44 = 2080;
                v45 = "add_hw_filters";
                v46 = 1024;
                v47 = 1713;
                v48 = 1024;
                *v49 = v29;
                *&v49[4] = 1024;
                *&v49[6] = v30;
                LOWORD(v50) = 1024;
                *(&v50 + 2) = v31;
                HIWORD(v50) = 1024;
                v51 = v32;
                v52 = 1024;
                v53 = v33;
                v54 = 1024;
                v55 = v34;
                v56 = 1024;
                v57 = v35;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): filter %02x:%02x:%02x:%02x:%02x:%02x VTAG: %d not added\n", v42, 0x46u);
              }

              operator delete();
            }

            v28 = *v24;
            *v23 = *v24;
            if (v28)
            {
              *(v28 + 8) = v23;
            }

            *(a1 + 648) = v23;
            v23[1] = v24;
            ++*(a1 + 658);
            v25 += 8;
            v23 = v27;
          }

          while (v27);
        }

        return;
      }

      v36 = *(a1 + 648);
      v37 = *v41;
      if (v36)
      {
        if (v37)
        {
          do
          {
            v38 = v36;
            v36 = *v36;
          }

          while (v36);
          *v38 = v37;
          goto LABEL_40;
        }
      }

      else
      {
        v38 = (a1 + 648);
        *(a1 + 648) = v37;
        if (v37)
        {
LABEL_40:
          v37[1] = v38;
          *v41 = 0;
        }
      }

      *(a1 + 658) += v40;
      return;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v42 = 136316162;
      v43 = pcindkid;
      v44 = 2080;
      v45 = "add_hw_filters";
      v46 = 1024;
      v47 = 1692;
      v48 = 1024;
      *v49 = v7;
      *&v49[4] = 1024;
      *&v49[6] = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): ERROR: list of filters to short expected: %d, found: %d\n", v42, 0x28u);
    }

    if (*v41)
    {
      v39 = **v41;
      operator delete();
    }

    *v41 = 0;
  }
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::add_vlan_filters(uint64_t **this, const unsigned __int8 *a2)
{
  if (*(this + 16776) - 257 > 0xFFFFFEFF)
  {
    v15 = 0;
    if (!DriverKit_AppleEthernetIXL_NetIf_IVars::find_filter(this + 81, a2, 0))
    {
      operator new();
    }

    v4 = 0;
    v5 = 99;
    while (1)
    {
      v6 = this[v5];
      if (v6)
      {
        break;
      }

      v4 -= 64;
      ++v5;
      if (v4 == -4096)
      {
        goto LABEL_33;
      }
    }

    if (-v4 > 0xFFF)
    {
LABEL_33:
      DriverKit_AppleEthernetIXL_NetIf_IVars::add_hw_filters(this, &v15, 0);
      return;
    }

    v7 = __clz(__rbit64(v6)) - v4;
    while (1)
    {
      if (!DriverKit_AppleEthernetIXL_NetIf_IVars::find_filter(this + 81, a2, v7))
      {
        operator new();
      }

      if (v7 == 4095)
      {
        goto LABEL_33;
      }

      v8 = (v7 + 1) & 0x3FFFFFFFC0;
      v9 = &this[((v7 + 1) >> 6) + 99];
      if (((v7 + 1) & 0x3F) == 0)
      {
        break;
      }

      v10 = *v9 & ~(0xFFFFFFFFFFFFFFFFLL >> -((v7 + 1) & 0x3F));
      if (!v10)
      {
        if (v7 > 0xFBE)
        {
          goto LABEL_33;
        }

        v11 = 4032 - v8;
        LODWORD(v8) = v8 + 64;
        ++v9;
        goto LABEL_22;
      }

      v7 = v8 | __clz(__rbit64(v10));
LABEL_32:
      if (v7 >= 0x1000)
      {
        goto LABEL_33;
      }
    }

    v11 = 4096 - v8;
LABEL_22:
    v12 = 0;
    do
    {
      if (*v9)
      {
        v7 = (__clz(__rbit64(*v9)) + v8 - v12);
        goto LABEL_32;
      }

      ++v9;
      v12 -= 64;
    }

    while ((v11 + v12) > 0x3F);
    v13 = v8 - v12;
    if (v12 + v11)
    {
      v14 = *v9 & (0xFFFFFFFFFFFFFFFFLL >> -(v11 + v12));
      if (v14)
      {
        v13 = __clz(__rbit64(v14)) + v8 - v12;
      }

      else
      {
        v13 = v8 + v11;
      }
    }

    v7 = v13;
    goto LABEL_32;
  }

  DriverKit_AppleEthernetIXL_NetIf_IVars::add_filter(this, a2, -1);
}

uint64_t *DriverKit_AppleEthernetIXL_NetIf_IVars::find_filter(uint64_t **a1, uint64_t a2, unsigned __int16 a3)
{
  for (result = *a1; result; result = *result)
  {
    v4 = *(result + 4) == *a2 && *(result + 10) == *(a2 + 4);
    if (v4 && *(result + 11) == a3)
    {
      break;
    }
  }

  return result;
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::del_hw_filters(uint64_t a1, uint64_t **a2, unsigned int a3)
{
  v5 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v54 = pcindkid;
    v55 = 2080;
    v56 = "del_hw_filters";
    v57 = 1024;
    v58 = 1734;
    v59 = 1024;
    v60 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): cnt: %d\n", buf, 0x22u);
  }

  v36 = a3;
  v6 = *a2;
  if (*a2)
  {
    v7 = *v6;
    v8 = *(v6 + 4);
    LOWORD(v54) = *(v6 + 10);
    *buf = v8;
    BYTE4(v54) = 1;
    v9 = *(v6 + 11);
    if (v9 == 0xFFFF)
    {
      v10 = 9;
    }

    else
    {
      v10 = 1;
    }

    BYTE4(v54) = v10;
    if (v9 == 0xFFFF)
    {
      LOWORD(v9) = 0;
    }

    WORD1(v54) = v9;
    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    v12 = v7;
    if (v11)
    {
      v13 = *(v6 + 16);
      v14 = *(v6 + 17);
      v15 = *(v6 + 18);
      v16 = *(v6 + 19);
      v17 = *(v6 + 20);
      v18 = *(v6 + 21);
      *v37 = 136317186;
      v38 = pcindkid;
      v39 = 2080;
      v40 = "del_hw_filters";
      v41 = 1024;
      v42 = 1749;
      v43 = 1024;
      *v44 = v13;
      *&v44[4] = 1024;
      *&v44[6] = v14;
      LOWORD(v45) = 1024;
      *(&v45 + 2) = v15;
      HIWORD(v45) = 1024;
      v46 = v16;
      v47 = 1024;
      v48 = v17;
      v49 = 1024;
      v50 = v18;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): %02x:%02x:%02x:%02x:%02x:%02x\n", v37, 0x40u);
      v12 = *v6;
    }

    v19 = v6[1];
    if (v12)
    {
      *(v12 + 8) = v19;
    }

    *v19 = v12;
    operator delete();
  }

  if (v5)
  {
    v20 = a3;
  }

  else
  {
    v20 = a3;
    if (!*a2)
    {
      v21 = i40e_aq_remove_macvlan(*(a1 + 16), *(a1 + 42), buf, a3, 0);
      if (v21)
      {
        v22 = v21;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v23 = pcindkid;
          v24 = i40e_stat_str(*(a1 + 16), v22);
          v25 = i40e_aq_str(*(a1 + 16), *(*(a1 + 16) + 908));
          *v37 = 136316162;
          v38 = v23;
          v39 = 2080;
          v40 = "del_hw_filters";
          v41 = 1024;
          v42 = 1765;
          v43 = 2080;
          *v44 = v24;
          *&v44[8] = 2080;
          v45 = v25;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): i40e_aq_remove_macvlan status %s, error %s\n", v37, 0x30u);
        }

        if (v36 >= 1)
        {
          v26 = &v54 + 1;
          do
          {
            if (*(v26 + 6) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(v26 - 6);
              v28 = *(v26 - 5);
              v29 = *(v26 - 4);
              v30 = *(v26 - 3);
              v31 = *(v26 - 2);
              v32 = *(v26 - 1);
              v33 = *v26;
              *v37 = 136317442;
              v38 = pcindkid;
              v39 = 2080;
              v40 = "del_hw_filters";
              v41 = 1024;
              v42 = 1769;
              v43 = 1024;
              *v44 = v27;
              *&v44[4] = 1024;
              *&v44[6] = v28;
              LOWORD(v45) = 1024;
              *(&v45 + 2) = v29;
              HIWORD(v45) = 1024;
              v46 = v30;
              v47 = 1024;
              v48 = v31;
              v49 = 1024;
              v50 = v32;
              v51 = 1024;
              v52 = v33;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): Filter does not exist %02x:%02x:%02x:%02x:%02x:%02x VTAG: %d\n", v37, 0x46u);
            }

            v26 += 8;
            --v5;
          }

          while (v5);
        }
      }

      *(a1 + 658) -= v36;
      return;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 136316162;
    v38 = pcindkid;
    v39 = 2080;
    v40 = "del_hw_filters";
    v41 = 1024;
    v42 = 1758;
    v43 = 1024;
    *v44 = v20;
    *&v44[4] = 1024;
    *&v44[6] = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): ERROR: wrong size of list of filters, expected: %d, found: %d\n", v37, 0x28u);
  }

  if (*a2)
  {
    v34 = **a2;
    operator delete();
  }

  *a2 = 0;
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::del_filter(uint64_t **this, const unsigned __int8 *a2, int a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[4];
    v11 = a2[5];
    *v21 = 136317442;
    *&v21[4] = pcindkid;
    v22 = 2080;
    v23 = "del_filter";
    v24 = 1024;
    v25 = 1588;
    v26 = 1024;
    v27 = v6;
    v28 = 1024;
    v29 = v7;
    v30 = 1024;
    v31 = v8;
    v32 = 1024;
    v33 = v9;
    v34 = 1024;
    v35 = v10;
    v36 = 1024;
    v37 = v11;
    v38 = 1024;
    v39 = a3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): %02x:%02x:%02x:%02x:%02x:%02x, vlan %4d\n", v21, 0x46u);
  }

  filter = DriverKit_AppleEthernetIXL_NetIf_IVars::find_filter(this + 81, a2, a3);
  if (filter)
  {
    v13 = filter;
    v14 = *filter;
    v15 = filter[1];
    if (*filter)
    {
      *(v14 + 8) = v15;
    }

    *v15 = v14;
    *filter = 0;
    filter[1] = v21;
    *v21 = filter;
    if (*(filter + 11) == -1 && (filter[3] & 1) != 0)
    {
      --*(this + 328);
    }

    if (a3 == -1 || *(this + 16776))
    {
      DriverKit_AppleEthernetIXL_NetIf_IVars::del_hw_filters(this, v21, 1u);
    }

    else
    {
      v16 = DriverKit_AppleEthernetIXL_NetIf_IVars::find_filter(this + 81, a2, 0);
      if (v16)
      {
        v17 = *v16;
        v18 = v16[1];
        if (*v16)
        {
          *(v17 + 8) = v18;
        }

        *v18 = v17;
        v19 = *v13;
        *v16 = *v13;
        if (v19)
        {
          *(v19 + 8) = v16;
        }

        *v13 = v16;
        v16[1] = v13;
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      DriverKit_AppleEthernetIXL_NetIf_IVars::del_hw_filters(this, v21, v20);
      DriverKit_AppleEthernetIXL_NetIf_IVars::add_filter(this, a2, -1);
    }
  }
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::del_all_vlan_filters(DriverKit_AppleEthernetIXL_NetIf_IVars *this, const unsigned __int8 *a2)
{
  v36 = 0;
  v4 = *(this + 81);
  if (v4)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v6 = v4;
        v4 = *v4;
        if ((v6[3] & 2) == 0 && *(v6 + 4) == *a2 && *(v6 + 10) == *(a2 + 2))
        {
          break;
        }

        if (!v4)
        {
          goto LABEL_17;
        }
      }

      v8 = v6[1];
      if (v4)
      {
        v4[1] = v8;
      }

      *v8 = v4;
      v9 = v36;
      *v6 = v36;
      if (v9)
      {
        v9[1] = v6;
      }

      v36 = v6;
      v6[1] = &v36;
      ++v5;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

LABEL_17:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    v13 = a2[3];
    v14 = a2[4];
    v15 = a2[5];
    v16 = 136317442;
    v17 = pcindkid;
    v18 = 2080;
    v19 = "del_all_vlan_filters";
    v20 = 1024;
    v21 = 1638;
    v22 = 1024;
    v23 = v10;
    v24 = 1024;
    v25 = v11;
    v26 = 1024;
    v27 = v12;
    v28 = 1024;
    v29 = v13;
    v30 = 1024;
    v31 = v14;
    v32 = 1024;
    v33 = v15;
    v34 = 1024;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): %02x:%02x:%02x:%02x:%02x:%02x, to_del_cnt: %d\n", &v16, 0x46u);
  }

  if (v5 >= 1)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::del_hw_filters(this, &v36, v5);
  }
}

uint64_t i40e_free_virt_mem(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator delete[]();
  }

  *a2 = 0;
  return 0;
}

uint64_t i40e_allocate_dma_mem(IOService **a1, uint64_t a2, int a3, uint64_t capacity)
{
  v6 = *a1;
  segmentsCount = 1;
  flags = 0;
  if (IOBufferMemoryDescriptor::Create(3uLL, capacity, IOVMPageSize, (a2 + 24)))
  {
    goto LABEL_5;
  }

  if (IOBufferMemoryDescriptor::GetAddressRange(*(a2 + 24), &range))
  {
    i40e_allocate_dma_mem();
  }

  *a2 = range.address;
  specification.options = 0;
  memset(specification._resv, 0, sizeof(specification._resv));
  specification.maxAddressBits = 64;
  if (IODMACommand::Create(v6, 0, &specification, (a2 + 16)) || (result = IODMACommand::PrepareForDMA(*(a2 + 16), 0, *(a2 + 24), 0, 0, &flags, &segmentsCount, &range, 0), result))
  {
LABEL_5:
    v8 = *(a2 + 16);
    if (v8)
    {
      IODMACommand::CompleteDMA(v8, 0, 0);
      v9 = *(a2 + 16);
      if (v9)
      {
        (*(*v9 + 16))(v9);
        *(a2 + 16) = 0;
      }
    }

    v10 = *(a2 + 24);
    if (v10)
    {
      (*(*v10 + 16))(v10);
      *(a2 + 24) = 0;
    }

    result = 4294967278;
  }

  else
  {
    *(a2 + 8) = range.address;
  }

  *(a2 + 32) = capacity;
  return result;
}

uint64_t i40e_free_dma_mem(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    IODMACommand::CompleteDMA(v3, 0, 0);
    v4 = *(a2 + 16);
    if (v4)
    {
      (*(*v4 + 16))(v4);
      *(a2 + 16) = 0;
    }
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(a2 + 24) = 0;
  }

  return 0;
}

void i40e_init_lan_hmc(uint64_t a1)
{
  *(a1 + 1016) = 1213027143;
  *(a1 + 1020) = *(a1 + 642);
  i40e_allocate_virt_mem();
}

uint64_t i40e_create_lan_hmc_object(IOService **a1, uint64_t a2)
{
  if (!a2)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_create_lan_hmc_object", 294, "i40e_create_lan_hmc_object: bad info ptr\n");
    }

    return 4294967277;
  }

  v3 = *a2;
  if (!*a2)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_create_lan_hmc_object", 299, "i40e_create_lan_hmc_object: bad hmc_info ptr\n");
    }

    return 4294967277;
  }

  if (*v3 != 1213027143)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_create_lan_hmc_object", 304, "i40e_create_lan_hmc_object: bad signature\n");
    }

    return 4294967277;
  }

  v4 = *(a2 + 12);
  v5 = *(v3 + 8) + 24 * *(a2 + 8);
  v6 = *(v5 + 12);
  if (v4 < v6)
  {
    v7 = *(a2 + 16);
    if (v7 + v4 > v6)
    {
      v8 = 4294967246;
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): i40e_create_lan_hmc_object: returns error %d\n\n", "i40e_create_lan_hmc_object", 318, -50);
      }

      return v8;
    }

    v10 = *v5;
    v11 = *(v5 + 16);
    v12 = v10 + v11 * v4;
    v13 = v12 >> 21;
    v14 = v12 + v11 * v7 - 1;
    v15 = (v14 >> 21) + 1;
    v16 = *(v3 + 48);
    if (v16 <= (v12 >> 21) || v15 > v16)
    {
      return 4294967251;
    }

    if (*(a2 + 24))
    {
      v18 = *(a2 + 24);
    }

    else
    {
      v18 = 0x200000;
    }

    if (v15 <= v13)
    {
      return 0;
    }

    v41 = 0;
    v40 = v12 >> 12;
    v39 = (v14 >> 12) + 1;
    v20 = (v12 >> 21);
    v38 = (v14 >> 21) + 1;
    while (1)
    {
      v21 = i40e_add_sd_table_entry(a1, *a2, v20, *(a2 + 20), v18);
      if (v21)
      {
        v8 = v21;
        if (v20 > v13)
        {
          do
          {
            v33 = *a2;
            v34 = v20 - 1;
            v35 = *(*(*a2 + 56) + 80 * (v20 - 1));
            if (v35 == 2)
            {
              i40e_remove_sd_bp(a1, v33, v20 - 1);
            }

            else if (v35 == 1)
            {
              if (v40 <= v34 << 9)
              {
                v36 = v34 << 9;
              }

              else
              {
                v36 = v40;
              }

              if (v39 >= v20 << 9)
              {
                v37 = v20 << 9;
              }

              else
              {
                v37 = v39;
              }

              if (v36 < v37)
              {
                do
                {
                  i40e_remove_pd_bp(a1, *a2, v36++);
                }

                while (v36 < v37);
                v33 = *a2;
              }

              i40e_remove_pd_page(a1, v33, v34);
            }

            else
            {
              v8 = 4294967249;
            }

            v20 = v34;
          }

          while (v34 > v13);
        }

        return v8;
      }

      v22 = *(*a2 + 56) + 80 * v20;
      if (*v22 != 1)
      {
        v8 = 0;
        goto LABEL_50;
      }

      v23 = v18;
      v24 = v13;
      if (v40 <= v20 << 9)
      {
        v25 = v20 << 9;
      }

      else
      {
        v25 = v40;
      }

      if (v39 >= (v20 << 9) + 512)
      {
        v26 = (v20 << 9) + 512;
      }

      else
      {
        v26 = v39;
      }

      v27 = v25;
      if (v25 >= v26)
      {
LABEL_42:
        if ((v41 & 1) == 0)
        {
          v41 = 0;
          v8 = 0;
          v13 = v24;
          v18 = v23;
          v15 = v38;
          goto LABEL_50;
        }

        v8 = 0;
      }

      else
      {
        while (1)
        {
          v28 = i40e_add_pd_table_entry(a1, *a2, v27, 0);
          if (v28)
          {
            break;
          }

          if (++v27 >= v26)
          {
            goto LABEL_42;
          }
        }

        v8 = v28;
      }

      v18 = v23;
      while (v27 > v25)
      {
        i40e_remove_pd_bp(a1, *a2, --v27);
      }

      v41 = 1;
      v13 = v24;
      v15 = v38;
LABEL_50:
      if ((*(v22 + 4) & 1) == 0)
      {
        *(v22 + 4) = 1;
        if (*v22 == 2)
        {
          v32 = *(v22 + 24);
          v31 = *(v22 + 28);
          __dmb(2u);
          IOPCIDevice::MemoryWrite32(*a1, 0, 0xC0200uLL, v31);
          __dmb(2u);
          IOPCIDevice::MemoryWrite32(*a1, 0, 0xC0100uLL, v32 | 0x803);
          __dmb(2u);
        }

        else
        {
          if (*v22 != 1)
          {
            return 4294967249;
          }

          v30 = *(v22 + 16);
          v29 = *(v22 + 20);
          __dmb(2u);
          IOPCIDevice::MemoryWrite32(*a1, 0, 0xC0200uLL, v29);
          __dmb(2u);
          IOPCIDevice::MemoryWrite32(*a1, 0, 0xC0100uLL, v30 | 0x801);
          __dmb(2u);
        }

        IOPCIDevice::MemoryWrite32(*a1, 0, 0xC0000uLL, v20 | 0x80000000);
      }

      if (++v20 == v15)
      {
        return v8;
      }
    }
  }

  v8 = 4294967247;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): i40e_create_lan_hmc_object: returns error %d\n\n", "i40e_create_lan_hmc_object", 311, -49);
  }

  return v8;
}

uint64_t i40e_remove_pd_page(IOPCIDevice **a1, uint64_t a2, unsigned int a3)
{
  if (i40e_prep_remove_pd_page(a2, a3))
  {
    return 0;
  }

  return i40e_remove_pd_page_new(a1, a2, a3, 1);
}

uint64_t i40e_remove_sd_bp(IOPCIDevice **a1, uint64_t a2, unsigned int a3)
{
  if (i40e_prep_remove_sd_bp(a2, a3))
  {
    return 0;
  }

  return i40e_remove_sd_bp_new(a1, a2, a3, 1);
}

uint64_t i40e_configure_lan_hmc(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 1020);
  v12[0] = a1 + 1016;
  v12[1] = 0;
  v14 = *(*(a1 + 1024) + 16);
  if (a2 >= 2)
  {
    if (a2 != 2)
    {
      v6 = 4294967249;
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): i40e_configure_lan_hmc: Unknown SD type: %d\n\n", "i40e_configure_lan_hmc", 480, -47);
      }

      return v6;
    }
  }

  else
  {
    v13 = 0x200000001;
    lan_hmc_object = i40e_create_lan_hmc_object(a1, v12);
    v6 = lan_hmc_object;
    if (a2 || !lan_hmc_object)
    {
      if (!lan_hmc_object)
      {
        goto LABEL_8;
      }

      return v6;
    }
  }

  v13 = 0x100000001;
  v6 = i40e_create_lan_hmc_object(a1, v12);
  if (!v6)
  {
LABEL_8:
    v7 = *(a1 + 1024);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, (4 * v3 + 811520), (*(v7 + 24) >> 9) & 0x7FFF);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, (4 * v3 + 811776), *(v7 + 36));
    v8 = *(a1 + 1024);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, (4 * v3 + 812032), (*(v8 + 48) >> 9) & 0x7FFF);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, (4 * v3 + 812288), *(v8 + 60));
    v9 = *(a1 + 1024);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, (4 * v3 + 812544), (*(v9 + 72) >> 9) & 0x7FFF);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, (4 * v3 + 812800), *(v9 + 84));
    v10 = *(a1 + 1024);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, (4 * v3 + 813056), (*(v10 + 96) >> 9) & 0x7FFF);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, (4 * v3 + 813312), *(v10 + 108));
    return 0;
  }

  return v6;
}

uint64_t i40e_delete_lan_hmc_object(IOPCIDevice **a1, unsigned int *a2)
{
  if (!a2)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_delete_lan_hmc_object", 535, "i40e_delete_hmc_object: bad info ptr\n");
    }

    return 4294967277;
  }

  v3 = *a2;
  if (!*a2)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_delete_lan_hmc_object", 540, "i40e_delete_hmc_object: bad info->hmc_info ptr\n");
    }

    return 4294967277;
  }

  if (*v3 != 1213027143)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_delete_lan_hmc_object", 545, "i40e_delete_hmc_object: bad hmc_info->signature\n");
    }

    return 4294967277;
  }

  if (!*(v3 + 56))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_delete_lan_hmc_object", 551, "i40e_delete_hmc_object: bad sd_entry\n");
    }

    return 4294967277;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_delete_lan_hmc_object", 557, "i40e_delete_hmc_object: bad hmc_info->hmc_obj\n");
    }

    return 4294967277;
  }

  v5 = a2[3];
  v6 = (v4 + 24 * a2[2]);
  v7 = *(v6 + 3);
  if (v5 >= v7)
  {
    v9 = 4294967247;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): i40e_delete_hmc_object: returns error %d\n\n", "i40e_delete_lan_hmc_object", 563, -49);
    }
  }

  else
  {
    v8 = a2[4];
    if (v8 + v5 <= v7)
    {
      v12 = *v6;
      v13 = v6[2];
      v14 = v12 + v13 * v5;
      v15 = v13 * v8;
      v16 = v14 >> 12;
      v17 = ((v15 + v14 - 1) >> 12) + 1;
      if (v17 <= (v14 >> 12))
      {
LABEL_30:
        v22 = v14 >> 21;
        v23 = ((v15 + v14 - 1) >> 21) + 1;
        v24 = *(v3 + 48);
        if (v24 <= (v14 >> 21) || v23 > v24)
        {
          return 4294967251;
        }

        else
        {
          if (v23 > v22)
          {
            for (i = 80 * (v14 >> 21); ; i += 80)
            {
              v27 = *a2;
              v28 = *(*a2 + 56);
              if (*(v28 + i + 4) == 1)
              {
                v29 = *(v28 + i);
                if (v29 == 1)
                {
                  v19 = i40e_remove_pd_page(a1, v27, v22);
                  if (v19)
                  {
                    return v19;
                  }
                }

                else if (v29 == 2)
                {
                  v19 = i40e_remove_sd_bp(a1, v27, v22);
                  if (v19)
                  {
                    return v19;
                  }
                }
              }

              v9 = 0;
              LODWORD(v22) = v22 + 1;
              if (v23 == v22)
              {
                return v9;
              }
            }
          }

          return 0;
        }
      }

      else
      {
        while (1)
        {
          v18 = *(*a2 + 56) + 80 * (v16 >> 9);
          if (*v18 == 1 && *(*(v18 + 48) + ((v16 & 0x1FF) << 6) + 61) == 1)
          {
            v19 = i40e_remove_pd_bp(a1, *a2, v16);
            if (v19)
            {
              return v19;
            }
          }

          LODWORD(v16) = v16 + 1;
          if (v17 == v16)
          {
            v3 = *a2;
            v20 = (*(*a2 + 8) + 24 * a2[2]);
            v21 = v20[2];
            v14 = *v20 + v21 * a2[3];
            v15 = v21 * a2[4];
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
      v9 = 4294967246;
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): i40e_delete_hmc_object: returns error %d\n\n", "i40e_delete_lan_hmc_object", 571, -50);
      }
    }
  }

  return v9;
}

uint64_t i40e_shutdown_lan_hmc(uint64_t a1)
{
  v4[0] = a1 + 1016;
  v4[1] = 0;
  v5 = 1;
  v2 = i40e_delete_lan_hmc_object(a1, v4);
  i40e_free_virt_mem(a1, (a1 + 1048));
  *(a1 + 1064) = 0;
  *(a1 + 1072) = 0;
  i40e_free_virt_mem(a1, (a1 + 1032));
  *(a1 + 1024) = 0;
  return v2;
}

uint64_t i40e_get_lan_tx_queue_context(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  object_va = i40e_hmc_get_object_va(a1, &v6, 1u, a2);
  if ((object_va & 0x80000000) == 0)
  {
    i40e_get_hmc_context(v6, &i40e_hmc_txq_ce_info, a3);
  }

  return object_va;
}

uint64_t i40e_hmc_get_object_va(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a1 + 1024);
  if (!v4)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_hmc_get_object_va", 1216, "i40e_hmc_get_object_va: bad hmc_info->hmc_obj ptr\n");
    }

    return 4294967277;
  }

  if (!a2)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_hmc_get_object_va", 1221, "i40e_hmc_get_object_va: bad object_base ptr\n");
    }

    return 4294967277;
  }

  if (*(a1 + 1016) != 1213027143)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_hmc_get_object_va", 1226, "i40e_hmc_get_object_va: bad hmc_info->signature\n");
    }

    return 4294967277;
  }

  v5 = v4 + 24 * a3;
  if (*(v5 + 12) <= a4)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): i40e_hmc_get_object_va: returns error %d\n\n", "i40e_hmc_get_object_va", 1231, 0);
    }

    return 4294967247;
  }

  else
  {
    v6 = *v5 + *(v5 + 16) * a4;
    v7 = *(a1 + 1072) + 80 * (v6 >> 21);
    result = 0;
    if (*v7 == 1)
    {
      v9 = (v6 >> 12) & 0x1FF;
      v10 = v6 & 0xFFF;
      v11 = *(*(v7 + 48) + (v9 << 6) + 8);
    }

    else
    {
      v10 = v6 & 0x1FFFFF;
      v11 = *(v7 + 16);
    }

    *a2 = v11 + v10;
  }

  return result;
}

uint64_t i40e_get_hmc_context(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 4);
  if (*(a2 + 4))
  {
    v4 = (a2 + 6);
    do
    {
      v5 = *(v4 - 2);
      if (v5 > 3)
      {
        if (v5 == 4)
        {
          if (v3 < 0x20)
          {
            v7 = ~(-1 << v3);
          }

          else
          {
            v7 = -1;
          }

          *(a3 + *(v4 - 3)) = (*(result + (*v4 >> 3)) & ~(v7 << (*v4 & 7))) >> (*v4 & 7);
        }

        else if (v5 == 8)
        {
          if (v3 < 0x40)
          {
            v6 = ~(-1 << v3);
          }

          else
          {
            v6 = -1;
          }

          *(a3 + *(v4 - 3)) = (*(result + (*v4 >> 3)) & ~(v6 << (*v4 & 7))) >> (*v4 & 7);
        }
      }

      else if (v5 == 1)
      {
        *(a3 + *(v4 - 3)) = (*(result + (*v4 >> 3)) & ~(~(-1 << v3) << (*v4 & 7))) >> (*v4 & 7);
      }

      else if (v5 == 2)
      {
        *(a3 + *(v4 - 3)) = (*(result + (*v4 >> 3)) & ~(~(-1 << v3) << (*v4 & 7))) >> (*v4 & 7);
      }

      v3 = v4[3];
      v4 += 4;
    }

    while (v3);
  }

  return result;
}

uint64_t i40e_clear_lan_tx_queue_context(uint64_t a1, unsigned int a2)
{
  v5 = 0;
  object_va = i40e_hmc_get_object_va(a1, &v5, 1u, a2);
  if ((object_va & 0x80000000) == 0)
  {
    bzero(v5, *(*(a1 + 1024) + 40));
  }

  return object_va;
}

uint64_t i40e_set_lan_tx_queue_context(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  object_va = i40e_hmc_get_object_va(a1, &v6, 1u, a2);
  if ((object_va & 0x80000000) == 0)
  {
    i40e_set_hmc_context(v6, &i40e_hmc_txq_ce_info, a3);
  }

  return object_va;
}

uint64_t i40e_set_hmc_context(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 4);
  if (*(a2 + 4))
  {
    v4 = (a2 + 6);
    do
    {
      v5 = *(v4 - 2);
      if (v5 > 3)
      {
        if (v5 == 4)
        {
          if (v3 < 0x20)
          {
            v9 = ~(-1 << v3);
          }

          else
          {
            v9 = -1;
          }

          *(result + (*v4 >> 3)) = *(result + (*v4 >> 3)) & ~(v9 << (*v4 & 7)) | ((*(a3 + *(v4 - 3)) & v9) << (*v4 & 7));
        }

        else if (v5 == 8)
        {
          if (v3 < 0x40)
          {
            v7 = ~(-1 << v3);
          }

          else
          {
            v7 = -1;
          }

          *(result + (*v4 >> 3)) = *(result + (*v4 >> 3)) & ~(v7 << (*v4 & 7)) | ((*(a3 + *(v4 - 3)) & v7) << (*v4 & 7));
        }
      }

      else if (v5 == 1)
      {
        v8 = *v4;
        *(result + (v8 >> 3)) = *(result + (v8 >> 3)) & ~(~(-1 << v3) << (v8 & 7)) | ((*(a3 + *(v4 - 3)) & ~(-1 << v3)) << (v8 & 7));
      }

      else if (v5 == 2)
      {
        v6 = *v4;
        *(result + (v6 >> 3)) = *(result + (v6 >> 3)) & ~(~(-1 << v3) << (v6 & 7)) | ((*(a3 + *(v4 - 3)) & ~(-1 << v3)) << (v6 & 7));
      }

      v3 = v4[3];
      v4 += 4;
    }

    while (v3);
  }

  return result;
}

uint64_t i40e_get_lan_rx_queue_context(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  object_va = i40e_hmc_get_object_va(a1, &v6, 2u, a2);
  if ((object_va & 0x80000000) == 0)
  {
    i40e_get_hmc_context(v6, &i40e_hmc_rxq_ce_info, a3);
  }

  return object_va;
}

uint64_t i40e_clear_lan_rx_queue_context(uint64_t a1, unsigned int a2)
{
  v5 = 0;
  object_va = i40e_hmc_get_object_va(a1, &v5, 2u, a2);
  if ((object_va & 0x80000000) == 0)
  {
    bzero(v5, *(*(a1 + 1024) + 64));
  }

  return object_va;
}

uint64_t i40e_set_lan_rx_queue_context(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = 0;
  object_va = i40e_hmc_get_object_va(a1, &v6, 2u, a2);
  if ((object_va & 0x80000000) == 0)
  {
    i40e_set_hmc_context(v6, &i40e_hmc_rxq_ce_info, a3);
  }

  return object_va;
}

uint64_t i40e_get_dcbx_status(IOPCIDevice **a1, _WORD *a2)
{
  if (!a2)
  {
    return 4294967291;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x83020uLL, &readData);
  result = 0;
  __dmb(1u);
  *a2 = readData & 7;
  return result;
}

uint64_t i40e_lldp_to_dcb_config(uint64_t a1, uint64_t a2)
{
  v2 = 4294967291;
  if (a1 && a2)
  {
    v5 = *(a1 + 14);
    v3 = a1 + 14;
    v4 = v5;
    v6 = __rev16(v5);
    if (v6 >= 0x200)
    {
      LOWORD(v7) = v6 & 0x1FF;
      v8 = (v6 & 0x1FF) + 2;
      do
      {
        if ((v6 >> 9) >= 0x7Fu)
        {
          v9 = *(v3 + 2);
          v10 = bswap32(v9 & 0xFFFFFF) >> 8;
          if (v10 == 6945)
          {
            v17 = HIBYTE(v9) == 2;
            v18 = bswap32(v4 & 0xFFFFFF01) >> 16;
            v19 = v17 && v18 >= 0x13;
            if (v19)
            {
              v20 = 0;
              v21 = (v3 + 18);
              do
              {
                v22 = *v21;
                v23 = bswap32(v22);
                v24 = v23 >> 25;
                if (v23 >> 25 == 4)
                {
                  v32 = bswap32(v22 & 0xFFFFFF01) >> 16;
                  LODWORD(v33) = (10923 * v32) >> 16;
                  *(a2 + 4) = v33;
                  if (v32 >= 6)
                  {
                    if (v32 >= 0xC6)
                    {
                      LODWORD(v33) = 32;
                      *(a2 + 4) = 32;
                    }

                    v34 = 0;
                    v35 = 0;
                    v36 = v21 + 6;
                    if (v33 <= 1)
                    {
                      v33 = 1;
                    }

                    else
                    {
                      v33 = v33;
                    }

                    do
                    {
                      v37 = 0;
                      v38 = &v36[v34];
                      do
                      {
                        if ((v36[v34 + 5] >> v37))
                        {
                          break;
                        }

                        ++v37;
                      }

                      while (v37 != 8);
                      v39 = a2 + 70 + 4 * v35;
                      *v39 = v37;
                      v40 = v38[1] & 3;
                      if ((v38[1] & 3) != 0)
                      {
                        if (v40 == 1)
                        {
                          LOBYTE(v40) = 2;
                        }
                      }

                      else
                      {
                        LOBYTE(v40) = 1;
                      }

                      *(v39 + 1) = v40;
                      *(v39 + 2) = bswap32(*v38) >> 16;
                      v34 += 6;
                      ++v35;
                    }

                    while (v35 != v33);
                  }
                }

                else if (v24 == 3)
                {
                  if ((v21[4] & 0x40) != 0)
                  {
                    *(a2 + 66) = 1;
                  }

                  *(a2 + 69) = v21[6];
                  *(a2 + 68) = v21[7];
                }

                else
                {
                  if (v24 != 2)
                  {
                    break;
                  }

                  if ((v21[4] & 0x40) != 0)
                  {
                    *(a2 + 12) = 1;
                  }

                  v25 = 0;
                  v26 = v21 + 6;
                  *(a2 + 13) = 0;
                  v27 = (a2 + 16);
                  do
                  {
                    *(v27 - 1) = v26[v25] >> 4;
                    *v27 = v26[v25] & 0xF;
                    v27 += 2;
                    ++v25;
                  }

                  while (v25 != 4);
                  v28 = v21 + 10;
                  v29 = (a2 + 31);
                  v30 = 8;
                  do
                  {
                    v31 = *v28++;
                    *(v29 - 8) = v31;
                    *v29 = 2 * (*(v29 - 16) != 15);
                    ++v29;
                    --v30;
                  }

                  while (v30);
                  *(a2 + 14) = v21[18];
                }

                v21 += (HIWORD(v23) & 0x1FF) + 2;
                v19 = v20++ >= 2;
              }

              while (!v19);
            }
          }

          else if (v10 == 32962)
          {
            v11 = HIBYTE(v9);
            if (v11 > 10)
            {
              if (v11 == 11)
              {
                *(a2 + 66) = *(v3 + 6) >> 7;
                *(a2 + 67) = (*(v3 + 6) & 0x40) != 0;
                *(a2 + 68) = *(v3 + 6) & 0xF;
                *(a2 + 69) = *(v3 + 7);
              }

              else if (v11 == 12)
              {
                v41 = 0;
                v42 = ((bswap32(v4 & 0xFFFFFF01) >> 16) - 5);
                v43 = v3 + 7;
                v44 = (a2 + 72);
                v45 = 1;
                do
                {
                  if (v45 >= v42)
                  {
                    break;
                  }

                  *(v44 - 2) = *v43 >> 5;
                  *(v44 - 1) = *v43 & 7;
                  *v44 = bswap32(*(v43 + 1)) >> 16;
                  v44 += 2;
                  v45 += 3;
                  ++v41;
                  v43 += 3;
                }

                while (v41 != 32);
                *(a2 + 4) = v41;
              }
            }

            else if (v11 == 9)
            {
              v46 = 0;
              *(a2 + 12) = *(v3 + 6) >> 7;
              *(a2 + 13) = (*(v3 + 6) & 0x40) != 0;
              *(a2 + 14) = *(v3 + 6) & 7;
              v47 = v3 + 7;
              v48 = (a2 + 16);
              do
              {
                *(v48 - 1) = (*(v47 + v46) >> 4) & 7;
                *v48 = *(v47 + v46) & 7;
                v48 += 2;
                ++v46;
              }

              while (v46 != 4);
              for (i = 0; i != 8; ++i)
              {
                *(a2 + 23 + i) = *(v3 + 11 + i);
              }

              for (j = 0; j != 8; ++j)
              {
                *(a2 + 31 + j) = *(v3 + 19 + j);
              }
            }

            else if (v11 == 10)
            {
              v12 = 0;
              v13 = v3 + 7;
              v14 = (a2 + 43);
              do
              {
                *(v14 - 1) = (*(v13 + v12) >> 4) & 7;
                *v14 = *(v13 + v12) & 7;
                v14 += 2;
                ++v12;
              }

              while (v12 != 4);
              for (k = 0; k != 8; ++k)
              {
                *(a2 + 50 + k) = *(v3 + 11 + k);
              }

              for (m = 0; m != 8; ++m)
              {
                *(a2 + 58 + m) = *(v3 + 19 + m);
              }
            }
          }
        }

        v2 = 0;
        v51 = v3 + v7;
        v52 = *(v51 + 2);
        v3 = v51 + 2;
        v4 = v52;
        v6 = __rev16(v52);
        if (v6 < 0x200)
        {
          break;
        }

        v7 = (bswap32(v4) >> 16) & 0x1FF;
        v8 += v7 + 2;
      }

      while (v8 < 0x5DDuLL);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t i40e_get_dcb_config(uint64_t a1)
{
  v2 = (a1 + 1099);
  if (*(a1 + 80) != 1)
  {
    goto LABEL_28;
  }

  v3 = *(a1 + 892);
  if (v3 != 4)
  {
    if (v3 > 3)
    {
      goto LABEL_28;
    }

LABEL_25:

    i40e_get_ieee_dcb_config(a1);
  }

  v4 = *(a1 + 894);
  if (v4 < 0x21)
  {
    goto LABEL_25;
  }

  if (v4 == 33)
  {
    result = i40e_aq_get_cee_dcb_config(a1, &v31, 0x18u, 0);
    if (!result)
    {
      *(a1 + 1084) = 1;
      v7 = v34;
      *(a1 + 1092) = v34;
      v8 = HIWORD(v33);
      v9 = v32[0];
      *(a1 + 1098) = v32[0];
      v6.i32[0] = *&v32[1];
      v10 = vmovl_u8(v6).u64[0];
      v11 = vtrn1_s8((*&v10 & 0xFF0FFF0FFF0FFF0FLL), vshr_n_u16(v10, 4uLL));
      *v2 = v11;
      v2[1] = *&v32[6];
      v12 = v9 - 1;
      v13 = vceq_s8(v11, 0xF0F0F0F0F0F0F0FLL).u16[0];
      if (v13)
      {
        v2->i8[0] = v12;
      }

      if ((v13 & 0x100) != 0)
      {
        *(a1 + 1100) = v12;
      }

      v14 = vceq_s8(v11, 0xF0F0F0F0F0F0F0FLL);
      if (v14.i8[2])
      {
        *(a1 + 1101) = v12;
      }

      if (v14.i8[3])
      {
        *(a1 + 1102) = v12;
      }

      v15 = vceq_s8(v11, 0xF0F0F0F0F0F0F0FLL);
      if (v15.i8[4])
      {
        *(a1 + 1103) = v12;
      }

      if (v15.i8[5])
      {
        *(a1 + 1104) = v12;
      }

      v16 = vceq_s8(v11, 0xF0F0F0F0F0F0F0FLL);
      if (v16.i8[6])
      {
        *(a1 + 1105) = v12;
      }

      if (v16.i8[7])
      {
        *(a1 + 1106) = v12;
      }

      v2[2] = vbic_s8(0x202020202020202, vceq_s8(v11, 0xF0F0F0F0F0F0F0FLL));
      *(a1 + 1153) = v32[14];
      *(a1 + 1152) = 8;
      result = 0;
      if ((v7 & 0x400) == 0)
      {
        *(a1 + 1088) = 3;
        *(a1 + 1154) = v8 & 7;
        *(a1 + 1156) = -30458;
        *(a1 + 1158) = (v8 >> 3) & 7;
        *(a1 + 1159) = 2;
        *(a1 + 1160) = 3260;
        *(a1 + 1155) = 1;
        *(a1 + 1162) = BYTE1(v8) & 7;
        *(a1 + 1163) = 1;
        *(a1 + 1164) = -30444;
      }
    }

    goto LABEL_53;
  }

LABEL_28:
  result = i40e_aq_get_cee_dcb_config(a1, &v31, 0x20u, 0);
  if (!result)
  {
    *(a1 + 1084) = 1;
    v18 = v33;
    *(a1 + 1092) = v33;
    v19 = *&v32[13];
    v20 = v31;
    *(a1 + 1098) = v31;
    v17.i32[0] = *v32;
    v21 = vmovl_u8(v17).u64[0];
    v22 = vtrn1_s8((*&v21 & 0xFF0FFF0FFF0FFF0FLL), vshr_n_u16(v21, 4uLL));
    *v2 = v22;
    v2[1] = *&v32[4];
    v23 = v20 - 1;
    v24 = vceq_s8(v22, 0xF0F0F0F0F0F0F0FLL).u16[0];
    if (v24)
    {
      v2->i8[0] = v23;
    }

    if ((v24 & 0x100) != 0)
    {
      *(a1 + 1100) = v23;
    }

    v25 = vceq_s8(v22, 0xF0F0F0F0F0F0F0FLL);
    if (v25.i8[2])
    {
      *(a1 + 1101) = v23;
    }

    if (v25.i8[3])
    {
      *(a1 + 1102) = v23;
    }

    v26 = vceq_s8(v22, 0xF0F0F0F0F0F0F0FLL);
    if (v26.i8[4])
    {
      *(a1 + 1103) = v23;
    }

    if (v26.i8[5])
    {
      *(a1 + 1104) = v23;
    }

    v27 = vceq_s8(v22, 0xF0F0F0F0F0F0F0FLL);
    if (v27.i8[6])
    {
      *(a1 + 1105) = v23;
    }

    if (v27.i8[7])
    {
      *(a1 + 1106) = v23;
    }

    v2[2] = vbic_s8(0x202020202020202, vceq_s8(v22, 0xF0F0F0F0F0F0F0FLL));
    *(a1 + 1153) = v32[12];
    *(a1 + 1152) = 8;
    if ((v18 & 0x700) == 0x300)
    {
      *(a1 + 1154) = v19 & 7;
      v28 = 1;
      *(a1 + 1155) = 1;
      *(a1 + 1156) = -30458;
    }

    else
    {
      v28 = 0;
    }

    if ((v18 & 0x3800) == 0x1800)
    {
      v29 = a1 + 4 * v28;
      *(v29 + 1154) = (v19 >> 3) & 7;
      *(v29 + 1155) = 2;
      *(v29 + 1156) = 3260;
      ++v28;
    }

    if ((v18 & 0x70000) == 0x30000)
    {
      v30 = a1 + 4 * v28;
      *(v30 + 1154) = BYTE1(v19) & 7;
      *(v30 + 1155) = 1;
      *(v30 + 1156) = -30444;
      ++v28;
    }

    result = 0;
    *(a1 + 1088) = v28;
  }

LABEL_53:
  if (*(a1 + 908) == 2)
  {
    i40e_get_ieee_dcb_config(a1);
  }

  if (!result)
  {
    i40e_aq_get_dcb_config();
  }

  return result;
}

uint64_t i40e_init_dcb(uint64_t a1, int a2)
{
  if (*(a1 + 444) != 1)
  {
    return 4294967232;
  }

  v13 = v2;
  v14 = v3;
  if ((*(a1 + 1688) & 0x20) != 0)
  {
    v7 = *(a1 + 80);
    if (v7 == 1)
    {
      v8 = 43;
    }

    else
    {
      if (v7 != 3)
      {
        return 4294967232;
      }

      v8 = 49;
    }

    if (i40e_read_nvm_module_data(a1, 0x48u, v8, 1, 1, v11))
    {
      return 4294967233;
    }
  }

  else if (i40e_read_lldp_cfg(a1, v10))
  {
    return 4294967233;
  }

  if (((v11[0] >> (4 * *(a1 + 185))) & 0xF) == 0)
  {
    *(a1 + 1080) = 7;
    return 4294967233;
  }

  v12 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x83020uLL, &v12);
  __dmb(1u);
  v9 = v12 & 7;
  *(a1 + 1080) = v9;
  if (v9 - 1 >= 2)
  {
    if (v9 != 7)
    {
      if (!a2)
      {
        return 0;
      }

      return i40e_aq_cfg_lldp_mib_change_event(a1, 1, 0);
    }

    return 4294967233;
  }

  result = i40e_get_dcb_config(a1);
  if (!result && (a2 & 1) != 0)
  {
    return i40e_aq_cfg_lldp_mib_change_event(a1, 1, 0);
  }

  return result;
}

uint64_t i40e_read_lldp_cfg(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 4294967291;
  }

  v4 = i40e_acquire_nvm(a1, 1);
  if (!v4)
  {
    v9 = 0;
    v5 = i40e_aq_read_nvm(a1, 0, 0, 4u, &v9, 1, 0);
    i40e_release_nvm(a1);
    if (v5)
    {
      return v5;
    }

    if ((v9 & 0x1000) != 0)
    {
      v7 = 72;
      v8 = 49;
    }

    else
    {
      v7 = 15;
      v8 = 6;
    }

    return _i40e_read_lldp_cfg(a1, a2, v7, v8);
  }

  return v4;
}

uint64_t i40e_get_fw_lldp_status(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    i40e_allocate_virt_mem();
  }

  return 4294967291;
}

uint64_t i40e_dcb_config_to_lldp(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = 0;
  for (i = 3; ; ++i)
  {
    if (i > 4)
    {
      if (i == 5)
      {
        *a1 = 1790;
        *(a1 + 2) = 197296128;
        if (*(a3 + 66))
        {
          v21 = 0x80;
          *(a1 + 6) = 0x80;
        }

        else
        {
          v21 = *(a1 + 6);
        }

        if (*(a3 + 67))
        {
          v21 |= 0x40u;
          *(a1 + 6) = v21;
        }

        *(a1 + 6) = *(a3 + 68) & 0xF | v21;
        *(a1 + 7) = *(a3 + 69);
      }

      else if (i == 6 && *(a3 + 4))
      {
        v11 = 0;
        *(a1 + 2) = 214073344;
        v12 = (a1 + 9);
        v13 = (a3 + 72);
        while (*(a3 + 4) > v11)
        {
          *(v12 - 2) = *(v13 - 1) & 7 | (32 * *(v13 - 2));
          *(v12 - 1) = v13[1];
          v14 = *v13;
          v13 += 4;
          *v12 = v14;
          v12 += 3;
          if (++v11 == 32)
          {
            goto LABEL_33;
          }
        }

        LODWORD(v11) = v11;
LABEL_33:
        *a1 = __rev16((3 * v11 + 5) | 0xFE00);
      }
    }

    else if (i == 3)
    {
      v15 = 0;
      *a1 = 6654;
      *(a1 + 2) = 163741696;
      *(a1 + 6) = *(a3 + 14) & 7 | ((*(a3 + 12) != 0) << 7);
      v16 = (a3 + 16);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        v16 += 2;
        *(a1 + 7 + v15++) = v18 & 0xF | (16 * v17);
      }

      while (v15 != 4);
      for (j = 0; j != 8; ++j)
      {
        *(a1 + 11 + j) = *(a3 + 23 + j);
      }

      for (k = 0; k != 8; ++k)
      {
        *(a1 + 19 + k) = *(a3 + 31 + k);
      }
    }

    else if (i == 4)
    {
      v5 = 0;
      *a1 = 6654;
      *(a1 + 2) = 180518912;
      v6 = (a3 + 43);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v6 += 2;
        *(a1 + 7 + v5++) = v8 & 0xF | (16 * v7);
      }

      while (v5 != 4);
      for (m = 0; m != 8; ++m)
      {
        *(a1 + 11 + m) = *(a3 + 50 + m);
      }

      for (n = 0; n != 8; ++n)
      {
        *(a1 + 19 + n) = *(a3 + 58 + n);
      }
    }

    v22 = *a1 & 0xFF01;
    v23 = bswap32(v22) >> 16;
    v24 = v23 + 2;
    if (!v22)
    {
      v24 = 0;
    }

    v3 += v24;
    if (i > 5 || v3 > 0x5DCu)
    {
      break;
    }

    v25 = a1 + v23 + 2;
    if (v22)
    {
      a1 = v25;
    }
  }

  *a2 = v3;
  return 0;
}

uint64_t _i40e_read_lldp_cfg(uint64_t a1, void *a2, int a3, int a4)
{
  v8 = i40e_acquire_nvm(a1, 1);
  if (!v8)
  {
    v13 = 0;
    nvm = i40e_aq_read_nvm(a1, 0, 2 * a3, 2u, &v13, 1, 0);
    i40e_release_nvm(a1);
    if (nvm)
    {
      return nvm;
    }

    if ((v13 & 0x8000u) == 0)
    {
      v11 = 2 * v13;
    }

    else
    {
      v11 = (v13 & 0x7FFF) << 12;
    }

    v8 = i40e_acquire_nvm(a1, 1);
    if (!v8)
    {
      nvm = i40e_aq_read_nvm(a1, a3, 2 * a4, 2u, &v13, 1, 0);
      i40e_release_nvm(a1);
      if (nvm)
      {
        return nvm;
      }

      v12 = v13;
      v8 = i40e_acquire_nvm(a1, 1);
      if (!v8)
      {
        nvm = i40e_aq_read_nvm(a1, 0, v11 + 2 * (v12 + a4), 0xEu, a2, 1, 0);
        i40e_release_nvm(a1);
        return nvm;
      }
    }
  }

  return v8;
}

void DriverKit_AppleEthernetIXL_IVars::otherIntrHandler(IOPCIDevice **this)
{
  v8 = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, 0x38780uLL, &v8);
  __dmb(1u);
  v2 = v8;
  v8 = 0;
  IOPCIDevice::MemoryRead32(this[4197], 0, 0x38800uLL, &v8);
  __dmb(1u);
  v3 = v8;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136316162;
    v9 = pcindkid;
    v10 = 2080;
    v11 = "otherIntrHandler";
    v12 = 1024;
    v13 = 16;
    v14 = 1024;
    LODWORD(v15[0]) = v2;
    WORD2(v15[0]) = 1024;
    *(v15 + 6) = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): reg=%x, mask=%x\n", &v8, 0x28u);
    if ((v2 & 0x40000000) == 0)
    {
LABEL_3:
      if ((v2 & 0x80000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v2 & 0x40000000) == 0)
  {
    goto LABEL_3;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = pcindkid;
    v10 = 2080;
    v11 = "otherIntrHandler";
    v12 = 1024;
    v13 = 21;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): Admin queue interrupt\n", &v8, 0x1Cu);
  }

  LOWORD(v8) = 0;
  DriverKit_AppleEthernetIXL_IVars::process_adminq(this, &v8);
  if ((v2 & 0x80000) == 0)
  {
LABEL_4:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = pcindkid;
    v10 = 2080;
    v11 = "otherIntrHandler";
    v12 = 1024;
    v13 = 30;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): Malicious programming\n", &v8, 0x1Cu);
  }

  DriverKit_AppleEthernetIXL_IVars::handle_mdd_event(this);
  if ((v2 & 0x100000) != 0)
  {
LABEL_13:
    v8 = 0;
    IOPCIDevice::MemoryRead32(this[4197], 0, 0xB8188uLL, &v8);
    __dmb(1u);
    v4 = v8;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = off_1000244F8[(v4 >> 2) & 3];
      v8 = 136315906;
      v9 = pcindkid;
      v10 = 2080;
      v11 = "otherIntrHandler";
      v12 = 1024;
      v13 = 55;
      v14 = 2080;
      v15[0] = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): Reset Requested! (%s)\n", &v8, 0x26u);
    }
  }

LABEL_15:
  if ((v2 & 0x10000) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = pcindkid;
    v10 = 2080;
    v11 = "otherIntrHandler";
    v12 = 1024;
    v13 = 66;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): ECC Error detected!\n", &v8, 0x1Cu);
  }

  if ((v2 & 0x200000) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = pcindkid;
    v10 = 2080;
    v11 = "otherIntrHandler";
    v12 = 1024;
    v13 = 68;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): PCI Exception detected!\n", &v8, 0x1Cu);
  }

  if ((v2 & 0x10000000) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = pcindkid;
    v10 = 2080;
    v11 = "otherIntrHandler";
    v12 = 1024;
    v13 = 70;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): Critical Protocol Engine Error detected!\n", &v8, 0x1Cu);
  }

  if ((v2 & 0x4000000) != 0)
  {
    v8 = 0;
    IOPCIDevice::MemoryRead32(this[4197], 0, 0xC0400uLL, &v8);
    __dmb(1u);
    v6 = v8;
    if ((v8 & 0x80000000) != 0)
    {
      v8 = 0;
      IOPCIDevice::MemoryRead32(this[4197], 0, 0xC0500uLL, &v8);
      __dmb(1u);
      v7 = v8;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(this[4197], 0, 0xC0400uLL, 0);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136316162;
        v9 = pcindkid;
        v10 = 2080;
        v11 = "otherIntrHandler";
        v12 = 1024;
        v13 = 83;
        v14 = 1024;
        LODWORD(v15[0]) = v6;
        WORD2(v15[0]) = 1024;
        *(v15 + 6) = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): HMC Error detected! INFO 0x%08x DATA 0x%08x\n", &v8, 0x28u);
      }
    }
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[4197], 0, 0x38800uLL, v3);
  DriverKit_AppleEthernetIXL_IVars::enable_intr0(this);
}

void DriverKit_AppleEthernetIXL_IVars::queueIntrHandler(DriverKit_AppleEthernetIXL_IVars *this)
{
  if (*(this + 2) != 2)
  {
    return;
  }

  do
  {
    while (1)
    {
      __dmb(1u);
      v3 = DriverKit_AppleEthernetIXL_NetIf_IVars::rxSync(this, 0);
      if (!DriverKit_AppleEthernetIXL_NetIf_IVars::txComplete(this, 0))
      {
        break;
      }

      if (!v3)
      {
        goto LABEL_7;
      }

      v4 = 1;
LABEL_10:
      IODataQueueDispatchSource::SendDataAvailable(*(this + 77));
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    v5 = DriverKit_AppleEthernetIXL_NetIf_IVars::txSubmit(this, 0);
    v4 = v5 != 0;
    if (v3)
    {
      goto LABEL_10;
    }

    if (v5)
    {
LABEL_7:
      v4 = 1;
      if (!IODataQueueDispatchSource::IsDataAvailable(*(this + 40)))
      {
        continue;
      }

      goto LABEL_10;
    }

    v4 = 0;
LABEL_8:
    ;
  }

  while (v4);

  DriverKit_AppleEthernetIXL_IVars::enable_queue(this + 4197, 0);
}

uint64_t i40e_alloc_adminq_asq_ring(uint64_t a1)
{
  dma_mem = i40e_allocate_dma_mem(a1, a1 + 784, 4, 32 * *(a1 + 886));
  if (!dma_mem)
  {
    v3 = *(a1 + 886);
    i40e_allocate_virt_mem();
  }

  return dma_mem;
}

uint64_t i40e_free_adminq_asq(uint64_t a1)
{
  i40e_free_virt_mem(a1, (a1 + 824));

  return i40e_free_dma_mem(a1, a1 + 784);
}

uint64_t i40e_init_asq(uint64_t a1)
{
  if (*(a1 + 848))
  {
    return 4294967233;
  }

  if (!*(a1 + 886) || !*(a1 + 890))
  {
    return 4294967292;
  }

  *(a1 + 852) = 0;
  v1 = i40e_alloc_adminq_asq_ring(a1);
  if (!v1)
  {
    v3 = 5 * *(a1 + 886);
    i40e_allocate_virt_mem();
  }

  return v1;
}

uint64_t i40e_config_asq_regs(uint64_t a1)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 856), 0);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 860), 0);
  v2 = *(a1 + 80);
  if (v2 != 2 && v2 != 4)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 864), *(a1 + 886) | 0x80000000);
    v2 = *(a1 + 80);
  }

  if (v2 == 4 || v2 == 2)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 864), *(a1 + 886) | 0x80000000);
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 872), *(a1 + 792));
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 868), *(a1 + 796));
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(a1 + 872), &readData);
  __dmb(1u);
  if (readData == *(a1 + 792))
  {
    return 0;
  }

  else
  {
    return 4294967243;
  }
}

uint64_t i40e_free_asq_bufs(uint64_t a1)
{
  v2 = *(a1 + 886);
  if (*(a1 + 886))
  {
    v3 = 0;
    v4 = 8;
    do
    {
      v5 = (*(a1 + 840) + v4);
      v7 = *v5;
      v6 = (v5 - 1);
      if (v7)
      {
        i40e_free_dma_mem(a1, v6);
        v2 = *(a1 + 886);
      }

      ++v3;
      v4 += 40;
    }

    while (v3 < v2);
  }

  i40e_free_virt_mem(a1, (a1 + 824));
  i40e_free_dma_mem(a1, a1 + 784);

  return i40e_free_virt_mem(a1, (a1 + 768));
}

uint64_t i40e_init_arq(uint64_t a1)
{
  if (*(a1 + 736))
  {
    return 4294967233;
  }

  v3 = *(a1 + 884);
  if (!*(a1 + 884) || !*(a1 + 888))
  {
    return 4294967292;
  }

  *(a1 + 740) = 0;
  dma_mem = i40e_allocate_dma_mem(a1, a1 + 672, 3, 32 * v3);
  if (!dma_mem)
  {
    v4 = 5 * *(a1 + 884);
    i40e_allocate_virt_mem();
  }

  return dma_mem;
}

uint64_t i40e_config_arq_regs(uint64_t a1)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 744), 0);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 748), 0);
  v2 = *(a1 + 80);
  if (v2 != 2 && v2 != 4)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 752), *(a1 + 884) | 0x80000000);
    v2 = *(a1 + 80);
  }

  if (v2 == 4 || v2 == 2)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 752), *(a1 + 884) | 0x80000000);
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 760), *(a1 + 680));
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 756), *(a1 + 684));
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 748), *(a1 + 884) - 1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(a1 + 760), &readData);
  __dmb(1u);
  if (readData == *(a1 + 680))
  {
    return 0;
  }

  else
  {
    return 4294967243;
  }
}

uint64_t i40e_shutdown_asq(uint64_t a1)
{
  i40e_acquire_spinlock(a1 + 904);
  if (*(a1 + 848))
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 856), 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 860), 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 864), 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 872), 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 868), 0);
    *(a1 + 848) = 0;
    i40e_free_asq_bufs(a1);
    v2 = 0;
  }

  else
  {
    v2 = 4294967233;
  }

  i40e_release_spinlock(a1 + 904);
  return v2;
}

uint64_t i40e_shutdown_arq(uint64_t a1)
{
  i40e_acquire_spinlock(a1 + 905);
  if (*(a1 + 736))
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 744), 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 748), 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 752), 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 760), 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 756), 0);
    *(a1 + 736) = 0;
    if (*(a1 + 884))
    {
      v2 = 0;
      v3 = 0;
      do
      {
        i40e_free_dma_mem(a1, *(a1 + 728) + v2);
        ++v3;
        v2 += 40;
      }

      while (v3 < *(a1 + 884));
    }

    i40e_free_dma_mem(a1, a1 + 672);
    i40e_free_virt_mem(a1, (a1 + 656));
    v4 = 0;
  }

  else
  {
    v4 = 4294967233;
  }

  i40e_release_spinlock(a1 + 905);
  return v4;
}

uint64_t i40e_init_adminq(uint64_t a1)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  if (!*(a1 + 884) || !*(a1 + 886) || !*(a1 + 888) || !*(a1 + 890))
  {
    return 4294967292;
  }

  i40e_init_spinlock(a1 + 904);
  i40e_init_spinlock(a1 + 905);
  v2 = xmmword_10001CB70;
  v3 = xmmword_10001CB80;
  v4 = *(a1 + 80);
  v5 = 27648;
  v6 = 31744;
  if (v4 != 2 && v4 != 4)
  {
    v2 = xmmword_10001CB90;
    v3 = xmmword_10001CBA0;
    v5 = 524416;
    v6 = 0x80000;
  }

  *(a1 + 872) = v6;
  *(a1 + 856) = v2;
  *(a1 + 760) = v5;
  *(a1 + 744) = v3;
  *(a1 + 880) = 250000;
  inited = i40e_init_asq(a1);
  if (inited)
  {
    goto LABEL_11;
  }

  inited = i40e_init_arq(a1);
  if (inited)
  {
LABEL_10:
    i40e_shutdown_asq(a1);
LABEL_11:
    i40e_destroy_spinlock(a1 + 904);
    i40e_destroy_spinlock(a1 + 905);
    return inited;
  }

  v9 = *(a1 + 80);
  if (v9 != 2 && v9 != 4)
  {
    v10 = 10;
    while (1)
    {
      firmware_version = i40e_aq_get_firmware_version(a1, (a1 + 892), (a1 + 894), (a1 + 896), (a1 + 900), (a1 + 902), 0);
      if (firmware_version != -54)
      {
        break;
      }

      IODelay(0x186A0uLL);
      *(a1 + 852) = 0;
      i40e_config_asq_regs(a1);
      *(a1 + 740) = 0;
      i40e_config_arq_regs(a1);
      if (!--v10)
      {
        inited = 4294967242;
LABEL_23:
        i40e_shutdown_arq(a1);
        goto LABEL_10;
      }
    }

    inited = firmware_version;
    if (firmware_version)
    {
      goto LABEL_23;
    }

    i40e_set_hw_flags(a1);
    i40e_read_nvm_word(a1, 0x18u, (a1 + 152));
    i40e_read_nvm_word(a1, 0x2Du, &v13);
    i40e_read_nvm_word(a1, 0x2Eu, &v13 + 1);
    *(a1 + 156) = v13 | (HIWORD(v13) << 16);
    i40e_read_nvm_word(a1, 0x17u, &v12);
    i40e_read_nvm_word(a1, (v12 + 131), &v14 + 1);
    i40e_read_nvm_word(a1, (v12 + 132), &v14);
    *(a1 + 160) = v14 | (HIWORD(v14) << 16);
    if (*(a1 + 900) > 1u)
    {
      inited = 4294967231;
      goto LABEL_23;
    }

    i40e_aq_release_resource(a1, 1, 0, 0);
    inited = 0;
    *(a1 + 1008) = 0;
    *(a1 + 920) = 0;
  }

  return inited;
}

uint64_t i40e_set_hw_flags(uint64_t result)
{
  *(result + 1688) = 0;
  v1 = *(result + 80);
  if (v1 == 1)
  {
    v2 = *(result + 900);
    if (v2 > 1)
    {
      goto LABEL_6;
    }

    if (v2 != 1)
    {
      return result;
    }

    if (*(result + 902) >= 7u)
    {
LABEL_6:
      v3 = 22;
      goto LABEL_7;
    }

    v3 = 0;
    goto LABEL_13;
  }

  if (v1 == 3)
  {
    *(result + 1688) = 9;
    v2 = *(result + 900);
    if (v2 > 1)
    {
LABEL_4:
      v3 = 285;
LABEL_7:
      *(result + 1688) = v3;
      goto LABEL_9;
    }

    if (v2 != 1)
    {
      return result;
    }

    v6 = *(result + 902);
    if (v6 < 6)
    {
      v3 = 9;
    }

    else
    {
      v3 = 25;
      *(result + 1688) = 25;
      if (v6 >= 9)
      {
        v3 = 29;
        *(result + 1688) = 29;
        if (v6 != 9)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_13:
    v5 = *(result + 902);
    if (v5 >= 5)
    {
      *(result + 1688) = v3 | 8;
      if (v5 >= 8)
      {
        v4 = v3 | 0xA8;
        *(result + 1688) = v4;
        if (v5 != 8)
        {
          goto LABEL_11;
        }
      }
    }

    return result;
  }

  v3 = 0;
  v2 = *(result + 900);
LABEL_9:
  if (v2 >= 2)
  {
    v4 = v3 | 0xA8;
LABEL_11:
    *(result + 1688) = v4 | 0x40;
    return result;
  }

  if (v2 == 1)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t i40e_shutdown_adminq(uint64_t a1)
{
  if (i40e_check_asq_alive(a1))
  {
    i40e_aq_queue_shutdown(a1, 1);
  }

  i40e_shutdown_asq(a1);
  i40e_shutdown_arq(a1);
  i40e_destroy_spinlock(a1 + 904);
  i40e_destroy_spinlock(a1 + 905);
  if (*(a1 + 992))
  {
    i40e_free_virt_mem(a1, (a1 + 992));
  }

  return 0;
}

uint64_t i40e_clean_asq(uint64_t a1)
{
  v2 = *(a1 + 854);
  v3 = *(a1 + 784);
  v4 = *(a1 + 824);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(a1 + 856), &readData);
  __dmb(1u);
  if (readData != v2)
  {
    v5 = v4 + 32 * v2;
    v6 = (v3 + 32 * v2);
    v7 = v2;
    do
    {
      if ((pcindkll & 0x100000) != 0)
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, *(a1 + 856), &readData);
        __dmb(1u);
        IOLog("ixl:%s(%d): ntc %d head %d.\n\n", "i40e_clean_asq", 758, v7, readData);
      }

      v8 = *v5;
      if (*v5)
      {
        v9 = v6[1];
        v14[0] = *v6;
        v14[1] = v9;
        v8(a1, v14);
      }

      *v6 = 0u;
      v6[1] = 0u;
      *v5 = 0u;
      *(v5 + 16) = 0u;
      if (*(a1 + 848) == (v2 + 1))
      {
        LOWORD(v2) = 0;
      }

      else
      {
        LOWORD(v2) = v2 + 1;
      }

      v6 = (*(a1 + 784) + 32 * v2);
      v5 = *(a1 + 824) + 32 * v2;
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, *(a1 + 856), &readData);
      __dmb(1u);
      v7 = v2;
    }

    while (readData != v2);
  }

  *(a1 + 854) = v2;
  v10 = *(a1 + 852);
  if (v10 >= v2)
  {
    v11 = *(a1 + 848);
  }

  else
  {
    v11 = 0;
  }

  return (v2 + v11 + ~v10);
}

BOOL i40e_asq_done(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(a1 + 856), &readData);
  __dmb(1u);
  return readData == *(a1 + 852);
}

uint64_t i40e_asq_send_command(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, _OWORD *a5)
{
  i40e_acquire_spinlock(a1 + 904);
  *(a1 + 908) = 0;
  if (*(a1 + 848))
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, *(a1 + 856), &readData);
    __dmb(1u);
    if (readData >= *(a1 + 886))
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): AQTX: head overrun at %d\n\n");
      }

      goto LABEL_11;
    }

    v10 = *(a1 + 824) + 32 * *(a1 + 852);
    if (a5)
    {
      v11 = a5[1];
      *v10 = *a5;
      *(v10 + 16) = v11;
      v12 = *(v10 + 8);
      if (v12)
      {
        *(a2 + 8) = __ROR8__(v12, 32);
      }
    }

    else
    {
      *v10 = 0u;
      *(v10 + 16) = 0u;
    }

    *a2 = *(v10 + 16) | *a2 & ~*(v10 + 18);
    if (*(a1 + 890) < a4)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): AQTX: Invalid buffer size: %d.\n\n", "i40e_asq_send_command", 872, a4);
      }

      v13 = 4294967270;
      goto LABEL_17;
    }

    if (*(v10 + 21) != 1 || (*(v10 + 20) & 1) != 0)
    {
      if (i40e_clean_asq(a1))
      {
        v15 = *(a1 + 784) + 32 * *(a1 + 852);
        v16 = *(a2 + 16);
        *v15 = *a2;
        *(v15 + 16) = v16;
        if (a3)
        {
          v17 = *(a1 + 840) + 40 * *(a1 + 852);
          memcpy(*v17, a3, a4);
          *(v15 + 4) = a4;
          *(v15 + 24) = *(v17 + 12);
          *(v15 + 28) = *(v17 + 8);
        }

        else
        {
          v17 = 0;
        }

        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixl:%s(%d): AQTX: desc and buffer:\n\n", "i40e_asq_send_command", 925);
        }

        i40e_debug_aq(a1, 100663296, v15, a3, a4);
        v18 = *(a1 + 852);
        if (*(a1 + 848) == (v18 + 1))
        {
          v19 = 0;
        }

        else
        {
          v19 = v18 + 1;
        }

        *(a1 + 852) = v19;
        if ((*(v10 + 21) & 1) == 0)
        {
          __dmb(2u);
          IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 860), *(a1 + 852));
        }

        if ((*(v10 + 20) & 1) == 0 && (*(v10 + 21) & 1) == 0)
        {
          v20 = 0;
          do
          {
            readData = 0;
            IOPCIDevice::MemoryRead32(*a1, 0, *(a1 + 856), &readData);
            __dmb(1u);
            if (readData == *(a1 + 852))
            {
              break;
            }

            IODelay(0x32uLL);
            v20 += 50;
          }

          while (v20 < *(a1 + 880));
        }

        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, *(a1 + 856), &readData);
        v13 = 0;
        __dmb(1u);
        v21 = readData;
        v22 = *(a1 + 852);
        if (readData != v22)
        {
          goto LABEL_55;
        }

        v23 = *(v15 + 16);
        *a2 = *v15;
        *(a2 + 16) = v23;
        if (a3)
        {
          memcpy(a3, *v17, a4);
        }

        v24 = *(a2 + 6);
        if (*(a2 + 6))
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixl:%s(%d): AQTX: Command completed with error 0x%X.\n\n", "i40e_asq_send_command", 963, v24);
          }

          v25 = v24;
          if (v24 == 12)
          {
            v13 = 4294967233;
          }

          else
          {
            v13 = 4294967243;
          }

          if (v25)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v25 = 0;
        }

        v13 = 0;
LABEL_54:
        *(a1 + 908) = v25;
LABEL_55:
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixl:%s(%d): AQTX: desc and buffer writeback:\n\n", "i40e_asq_send_command", 979);
        }

        i40e_debug_aq(a1, 100663296, a2, a3, a4);
        v26 = *(v10 + 24);
        if (v26)
        {
          v27 = *(v15 + 16);
          *v26 = *v15;
          v26[1] = v27;
        }

        if (v21 != v22 && (*(v10 + 20) & 1) == 0 && (*(v10 + 21) & 1) == 0)
        {
          readData = 0;
          IOPCIDevice::MemoryRead32(*a1, 0, *(a1 + 864), &readData);
          __dmb(1u);
          if ((readData & 0x40000000) != 0)
          {
            if ((pcindkll & 0x100000) != 0)
            {
              IOLog("ixl:%s(%d): AQTX: AQ Critical error.\n\n", "i40e_asq_send_command", 992);
            }

            v13 = 4294967230;
          }

          else
          {
            if ((pcindkll & 0x100000) != 0)
            {
              IOLog("ixl:%s(%d): AQTX: Writeback timeout.\n\n", "i40e_asq_send_command", 996);
            }

            v13 = 4294967242;
          }
        }

        goto LABEL_17;
      }

      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): AQTX: Error queue is full.\n\n");
      }

LABEL_11:
      v13 = 4294967240;
      goto LABEL_17;
    }

    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): AQTX: Async flag not set along with postpone flag\n", "i40e_asq_send_command", 880);
    }

    v13 = 4294967291;
  }

  else
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): AQTX: Admin queue not initialized.\n\n", "i40e_asq_send_command", 828);
    }

    v13 = 4294967264;
  }

LABEL_17:
  i40e_release_spinlock(a1 + 904);
  return v13;
}

uint64_t i40e_fill_default_direct_cmd_desc(uint64_t result, __int16 a2)
{
  *(result + 12) = 0;
  *(result + 4) = 0;
  *(result + 28) = 0;
  *(result + 20) = 0;
  *(result + 2) = a2;
  *result = 0x2000;
  return result;
}

uint64_t i40e_clean_arq_element(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v6 = *(a1 + 742);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  i40e_acquire_spinlock(a1 + 905);
  if (*(a1 + 736))
  {
    v7 = *(a1 + 80);
    if (v7 == 2 || v7 == 4)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, *(a1 + 744), &readData);
      __dmb(1u);
      v10 = readData;
    }

    else
    {
      v22 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, *(a1 + 744), &v22);
      __dmb(1u);
      v10 = v22;
    }

    v11 = v10 & 0x3FF;
    if (v11 == v6)
    {
      v9 = 4294967239;
      if (!a3)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    v12 = *(a1 + 672) + 32 * v6;
    v13 = *(v12 + 6);
    *(a1 + 912) = v13;
    if ((*v12 & 4) != 0)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): AQRX: Event received with error 0x%X.\n\n", "i40e_clean_arq_element", 1082, v13);
      }

      v9 = 4294967243;
    }

    else
    {
      v9 = 0;
    }

    v14 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v14;
    if (*(v12 + 4) >= *(a2 + 34))
    {
      v15 = *(a2 + 34);
    }

    else
    {
      v15 = *(v12 + 4);
    }

    *(a2 + 32) = v15;
    v16 = *(a2 + 40);
    if (v16 && v15)
    {
      memcpy(v16, *(*(a1 + 728) + 40 * v6), v15);
    }

    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): AQRX: desc and buffer:\n\n", "i40e_clean_arq_element", 1094);
    }

    i40e_debug_aq(a1, 100663296, v12, *(a2 + 40), *(a1 + 888));
    v17 = *(a1 + 728) + 40 * v6;
    *(v12 + 24) = 0;
    *(v12 + 18) = 0;
    *(v12 + 10) = 0;
    *(v12 + 2) = 0;
    if (*(a1 + 888) <= 0x200u)
    {
      v18 = 4096;
    }

    else
    {
      v18 = 4608;
    }

    *v12 = v18;
    *(v12 + 4) = *(v17 + 32);
    *(v12 + 24) = *(v17 + 12);
    *(v12 + 28) = *(v17 + 8);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(a1 + 748), v6);
    if (*(a1 + 884) == (v6 + 1))
    {
      LOWORD(v6) = 0;
    }

    else
    {
      LOWORD(v6) = v6 + 1;
    }

    *(a1 + 742) = v6;
    *(a1 + 740) = v11;
    i40e_nvmupd_check_wait_event(a1, *(a2 + 2), a2);
    if (a3)
    {
LABEL_34:
      if (v11 >= v6)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(a1 + 736);
      }

      *a3 = v11 - v6 + v19;
    }
  }

  else
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): AQRX: Admin queue not initialized.\n\n", "i40e_clean_arq_element", 1054);
    }

    v9 = 4294967264;
  }

LABEL_38:
  i40e_release_spinlock(a1 + 905);
  return v9;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::rxSync(DriverKit_AppleEthernetIXL_NetIf_IVars *this, unsigned int a2)
{
  v2 = a2;
  v3 = this;
  v4 = this + 296 * a2;
  v5 = v4 + 344;
  v6 = *(v4 + 118);
  v7 = *(v4 + 119);
  if (v7 == v6)
  {
    goto LABEL_9;
  }

  v8 = *(v4 + 118);
  do
  {
    if (v8 == 511)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 + 1;
    }

    if ((*(*v5 + 16 * v8 + 8) & 1) == 0)
    {
      break;
    }

    v8 = v9;
  }

  while (v7 != v9);
  if (v8 == v6)
  {
LABEL_9:
    v10 = 0;
  }

  else
  {
    __dmb(1u);
    do
    {
      v11 = *(*(v5 + 33) + 8 * v6);
      v12 = *(*v5 + 16 * v6 + 8);
      *(v11 + 64) = (v12 >> 38) & 0x3FFF;
      *(v11 + 90) = 0;
      *(v11 + 88) = 0;
      if ((v12 & 8) != 0)
      {
        v13 = (~i40e_ptype_lookup[(v12 >> 30)] & 0x600) != 0 || (v12 & 0x8000) == 0;
        if ((v12 & 0xC00000) == 0 && v13)
        {
          *(v11 + 90) = 3840;
          *(v11 + 88) = -1;
        }
      }

      v15 = *(v5 + 34);
      *&callback = _NSConcreteStackBlock;
      *(&callback + 1) = 0x40000000;
      *&v26 = ___ZN6pcindkL15enqueueRxPacketEP25IODataQueueDispatchSourceP24IOUserNetworkPacketState_block_invoke;
      *(&v26 + 1) = &__block_descriptor_tmp_1;
      *&v27 = v11;
      sendDataAvailable = 0;
      if (IODataQueueDispatchSource::EnqueueWithCoalesce(v15, 0x68u, &sendDataAvailable, &callback))
      {
        DriverKit_AppleEthernetIXL_NetIf_IVars::txComplete();
      }

      if (v6 == 511)
      {
        v6 = 0;
      }

      else
      {
        ++v6;
      }
    }

    while (v8 != v6);
    *(v5 + 32) = v8;
    v10 = 1;
    LOWORD(v6) = v8;
    v2 = a2;
    v3 = this;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
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
  v27 = 0u;
  v28 = 0u;
  callback = 0u;
  v26 = 0u;
  if (((v6 + ~v7) & 0x1FF) != 0)
  {
    v16 = (*(**(v5 + 35) + 104))(*(v5 + 35), &callback, (v6 + ~v7) & 0x1FF);
    if (v16)
    {
      v17 = v16;
      p_callback = &callback;
      do
      {
        v19 = *p_callback++;
        v20 = (*v5 + 16 * v7);
        v21 = *(v19 + 48);
        *(*(v5 + 33) + 8 * v7) = v21 + 8;
        *v20 = *(v21 + 24);
        v20[1] = 0;
        v7 = (v7 + 1) & 0x1FF;
        --v17;
      }

      while (v17);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(**(v3 + 2), 0, 4 * v2 + 1212416, v7);
      *(v5 + 33) = v7;
    }
  }

  return v10;
}

uint64_t ___ZN6pcindkL15enqueueRxPacketEP25IODataQueueDispatchSourceP24IOUserNetworkPacketState_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  *(a2 + 40) = *(v2 + 40);
  *(a2 + 73) = *(v2 + 73);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 90) = *(v2 + 90);
  *(a2 + 88) = *(v2 + 88);
  return result;
}

uint64_t i40e_set_mac_type(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_set_mac_type", 18, "i40e_set_mac_type\n");
  }

  if (*(a1 + 178) != 32902)
  {
    v5 = 4294967285;
    goto LABEL_26;
  }

  v2 = *(a1 + 176);
  v3 = 1;
  if (v2 > 0x15FE)
  {
    if (*(a1 + 176) <= 0x37CDu)
    {
      switch(v2)
      {
        case 0x15FFu:
          goto LABEL_25;
        case 0x1889u:
LABEL_23:
          v3 = 2;
          goto LABEL_25;
        case 0x37CDu:
          v3 = 4;
          goto LABEL_25;
      }
    }

    else if (v2 - 14286 <= 5)
    {
      v3 = 3;
      goto LABEL_25;
    }

LABEL_24:
    v3 = 5;
    goto LABEL_25;
  }

  if (*(a1 + 176) <= 0x154Bu)
  {
    if (v2 - 4127 <= 0x30 && ((1 << (v2 - 31)) & 0x1800000000001) != 0 || v2 == 3320 || v2 == 3416)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v4 = v2 - 5452;
  if (v4 > 0x3F)
  {
    goto LABEL_24;
  }

  if (((1 << v4) & 0xFFB0014000000000) == 0)
  {
    if (((1 << v4) & 0x2000000001) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_25:
  v5 = 0;
  *(a1 + 80) = v3;
LABEL_26:
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): i40e_set_mac_type found mac: %d, returns: %d\n\n", "i40e_set_mac_type", 68, *(a1 + 80), v5);
  }

  return v5;
}

char *i40e_aq_str(uint64_t a1, unsigned int a2)
{
  if (a2 < 0x17)
  {
    return off_100024538[a2];
  }

  v2 = a1 + 1724;
  snprintf((a1 + 1724), 0x10uLL, "%d", a2);
  return v2;
}

char *i40e_stat_str(uint64_t a1, int a2)
{
  if ((a2 + 66) < 0x43)
  {
    return off_1000245F0[a2 + 66];
  }

  v2 = a1 + 1724;
  snprintf((a1 + 1724), 0x10uLL, "%d", a2);
  return v2;
}

uint64_t i40e_debug_aq(uint64_t result, int a2, unsigned __int16 *a3, uint64_t a4, unsigned int a5)
{
  if (a3)
  {
    v5 = *(result + 1720) & a2;
    if (v5)
    {
      v9 = a3[2];
      if ((pcindkll & 0x100000) != 0)
      {
        result = IOLog("ixl:%s(%d): AQ CMD: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\n\n", "i40e_debug_aq", 309, a3[1], *a3, a3[2], a3[3]);
        if ((pcindkll & 0x100000) != 0)
        {
          result = IOLog("ixl:%s(%d): \tcookie (h,l) 0x%08X 0x%08X\n\n", "i40e_debug_aq", 313, *(a3 + 2), *(a3 + 3));
          if ((pcindkll & 0x100000) != 0)
          {
            result = IOLog("ixl:%s(%d): \tparam (0,1)  0x%08X 0x%08X\n\n", "i40e_debug_aq", 317, *(a3 + 4), *(a3 + 5));
            if ((pcindkll & 0x100000) != 0)
            {
              result = IOLog("ixl:%s(%d): \taddr (h,l)   0x%08X 0x%08X\n\n", "i40e_debug_aq", 321, *(a3 + 6), *(a3 + 7));
            }
          }
        }
      }

      if ((v5 & 0x4000000) != 0 && a4 && a5 && v9)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          result = IOLog("ixl:%s(%d): AQ CMD Buffer:\n\n", "i40e_debug_aq", 325);
        }

        if (v9 >= a5)
        {
          v10 = a5;
        }

        else
        {
          v10 = v9;
        }

        if (v10 < 0x11)
        {
          v14 = 0;
          v15 = 0;
        }

        else
        {
          v11 = pcindkll;
          v12 = (a4 + 7);
          v13 = 15;
          do
          {
            if ((v11 & 0x100000) != 0)
            {
              result = IOLog("ixl:%s(%d): \t0x%04X  %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X\n\n", "i40e_debug_aq", 335, v13 - 15, *(v12 - 7), *(v12 - 6), *(v12 - 5), *(v12 - 4), *(v12 - 3), *(v12 - 2), *(v12 - 1), *v12, v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8]);
              v11 = pcindkll;
            }

            v13 += 16;
            v12 += 16;
          }

          while ((v10 - 16) > v13 - 15);
          v14 = v13 - 15;
          v15 = v13 - 15;
        }

        if (v10 > v14)
        {
          v16 = (a4 + v14);
          v17 = v10 + ~v14;
          v18 = v17;
          v19 = v17 + 1;
          v20 = 15 - v17;
          if (v18 <= 0xE)
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          bzero(&__dst[v19], v21);
          result = memcpy(__dst, v16, v19);
          if ((pcindkll & 0x100000) != 0)
          {
            return IOLog("ixl:%s(%d): \t0x%04X  %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X\n\n", "i40e_debug_aq", 350, v15, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15]);
          }
        }
      }
    }
  }

  return result;
}

uint64_t i40e_check_asq_alive(uint64_t a1)
{
  v1 = *(a1 + 864);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 80);
  if (v2 == 2 || v2 == 4)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, v1, &readData);
    __dmb(1u);
    v5 = readData;
  }

  else
  {
    v7 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, v1, &v7);
    __dmb(1u);
    v5 = v7;
  }

  return v5 >> 31;
}

uint64_t i40e_aq_queue_shutdown(uint64_t a1, int a2)
{
  i40e_fill_default_direct_cmd_desc(v5, 3);
  if (a2)
  {
    v5[4] = 1;
  }

  return i40e_asq_send_command(a1, v5, 0, 0, 0);
}

uint64_t i40e_aq_get_set_rss_lut(uint64_t a1, __int16 a2, int a3, void *a4, unsigned int a5, int a6)
{
  if (a6)
  {
    v11 = 2819;
  }

  else
  {
    v11 = 2821;
  }

  i40e_fill_default_direct_cmd_desc(v13, v11);
  v13[0] |= 0x1400u;
  v13[8] = a2 & 0x3FF | 0x8000;
  if (a3)
  {
    v14 |= 1u;
  }

  return i40e_asq_send_command(a1, v13, a4, a5, 0);
}

uint64_t i40e_aq_get_set_rss_key(uint64_t a1, __int16 a2, void *a3, int a4)
{
  if (a4)
  {
    v7 = 2818;
  }

  else
  {
    v7 = 2820;
  }

  i40e_fill_default_direct_cmd_desc(v9, v7);
  v9[0] |= 0x1400u;
  v9[8] = a2 & 0x3FF | 0x8000;
  return i40e_asq_send_command(a1, v9, a3, 0x34u, 0);
}

uint64_t i40e_validate_mac_addr(unsigned __int8 *a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_validate_mac_addr", 934, "i40e_validate_mac_addr");
  }

  if ((*a1 & 1) == 0 && (*a1 || a1[1] || a1[2] || a1[3] || a1[4] || a1[5]))
  {
    return 0;
  }

  else
  {
    return 4294967286;
  }
}

uint64_t i40e_init_shared_code(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_init_shared_code", 965, "i40e_init_shared_code");
  }

  i40e_set_mac_type(a1);
  if ((*(a1 + 80) | 2) != 3)
  {
    return 4294967285;
  }

  *(a1 + 64) = 1;
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x1C0480uLL, &readData);
  __dmb(1u);
  *(a1 + 185) = readData & 3;
  v6 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0xBE4A8uLL, &v6);
  __dmb(1u);
  v2 = v6;
  v5 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x9C000uLL, &v5);
  __dmb(1u);
  v3 = v5;
  if ((v2 & 0x10) == 0)
  {
    v3 = v5 & 7;
  }

  *(a1 + 642) = v3;
  *(a1 + 1702) = 1052160;
  *(a1 + 1706) = 0;
  *(a1 + 1714) = 0;
  return i40e_init_nvm(a1);
}

uint64_t i40e_aq_mac_address_write(uint64_t a1, __int16 a2, unsigned __int16 *a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v9, 264);
  v9[8] = a2;
  v9[9] = bswap32(*a3) >> 16;
  v10 = bswap32(*(a3 + 1));
  return i40e_asq_send_command(a1, v9, 0, 0, a4);
}

uint64_t i40e_get_mac_addr(uint64_t a1, uint64_t a2)
{
  i40e_fill_default_direct_cmd_desc(v7, 263);
  v7[0] |= 0x1000u;
  result = i40e_asq_send_command(a1, v7, &v5, 0x18u, 0);
  if ((v8 & 0x10) != 0)
  {
    *a2 = v5;
    *(a2 + 4) = v6;
  }

  return result;
}

uint64_t i40e_get_port_mac_addr(uint64_t a1, uint64_t a2)
{
  i40e_fill_default_direct_cmd_desc(v8, 263);
  v8[0] |= 0x1000u;
  result = i40e_asq_send_command(a1, v8, v5, 0x18u, 0);
  if (!result)
  {
    if ((v9 & 0x40) != 0)
    {
      result = 0;
      *a2 = v6;
      *(a2 + 4) = v7;
    }

    else
    {
      return 4294967286;
    }
  }

  return result;
}

void i40e_pre_tx_queue_cfg(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 576) + a2;
  if (v5 <= 0x7F)
  {
    v6 = 943360;
  }

  else
  {
    v6 = 4 * (v5 >> 7) + 943360;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, v6, &readData);
  __dmb(1u);
  v7 = readData & 0xFFFFF800;
  if (a3)
  {
    v8 = 0x80000000;
  }

  else
  {
    v8 = 0x40000000;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, v6, v8 & 0xFFFFFF80 | v5 & 0x7F | v7);
}

uint64_t i40e_read_pba_string(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v17 = 0;
  v16 = 0;
  nvm_word = i40e_read_nvm_word(a1, 0x15u, &v17 + 1);
  if (nvm_word || HIWORD(v17) != 64250)
  {
    if ((pcindkll & 0x100000) != 0)
    {
LABEL_7:
      IOLog("ixl:%s(%d): %s\n");
    }
  }

  else
  {
    v7 = i40e_read_nvm_word(a1, 0x16u, &v16);
    if (v7)
    {
      nvm_word = v7;
      if ((pcindkll & 0x100000) != 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = i40e_read_nvm_word(a1, v16, &v17);
      if (v9)
      {
        nvm_word = v9;
        if ((pcindkll & 0x100000) == 0)
        {
          return nvm_word;
        }

        goto LABEL_7;
      }

      v10 = v17 - 1;
      LOWORD(v17) = v10;
      if (a3 <= 2 * v10)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixl:%s(%d): %s\n", "i40e_read_pba_string", 1184, "Buffer to small for PBA data.\n");
        }

        return 4294967291;
      }

      else if (v10)
      {
        v11 = 0;
        v12 = a2 + 1;
        while (1)
        {
          v13 = v11 + 1;
          v14 = i40e_read_nvm_word(a1, (v16 + v11 + 1), &v17 + 1);
          if (v14)
          {
            break;
          }

          *(v12 - 1) = bswap32(HIWORD(v17)) >> 16;
          v12 += 2;
          ++v11;
          if (v13 >= v17)
          {
            v15 = 2 * v17;
            goto LABEL_22;
          }
        }

        nvm_word = v14;
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixl:%s(%d): Failed to read PBA Block word %d.\n\n");
        }
      }

      else
      {
        v15 = 0;
LABEL_22:
        nvm_word = 0;
        *(a2 + v15) = 0;
      }
    }
  }

  return nvm_word;
}

uint64_t i40e_pf_reset(IOPCIDevice **a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0xB8180uLL, &readData);
  __dmb(1u);
  v2 = readData & 0x3F;
  if (20 * v2 >= 0xA0)
  {
    v3 = 160;
  }

  else
  {
    v3 = 20 * v2;
  }

  if ((readData & 0x3F) != 0)
  {
    v4 = 0;
    while (1)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0xB8188uLL, &readData);
      __dmb(1u);
      v5 = readData & 3;
      if ((readData & 3) == 0)
      {
        break;
      }

      IODelay(0x186A0uLL);
      if (v3 == ++v4)
      {
        v4 = 1;
        break;
      }
    }

    v6 = v4 == 0;
    if (v5)
    {
      if ((pcindkll & 0x100000) != 0)
      {
LABEL_11:
        IOLog("ixl:%s(%d): %s\n");
      }

      return 4294967281;
    }
  }

  else
  {
    v6 = 1;
  }

  for (i = 0; i != 1000; ++i)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0xB6008uLL, &readData);
    __dmb(1u);
    v9 = readData & 0x18;
    if (v9 == 24)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): Core and Global modules ready %d\n\n", "i40e_pf_reset", 1328, i);
      }

      goto LABEL_23;
    }

    IODelay(0x2710uLL);
  }

  if (!v9)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_pf_reset", 1335, "wait for FW Reset complete timedout\n");
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): I40E_GLNVM_ULD = 0x%x\n\n");
      }
    }

    return 4294967281;
  }

LABEL_23:
  if (v6)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x92400uLL, &readData);
    __dmb(1u);
    v10 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x92400uLL, v10 | 1);
    v11 = 1000;
    while (1)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x92400uLL, &readData);
      __dmb(1u);
      if ((readData & 1) == 0)
      {
        break;
      }

      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0xB8188uLL, &readData);
      __dmb(1u);
      if ((readData & 3) != 0)
      {
        if (!v2)
        {
LABEL_32:
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixl:%s(%d): %s\n", "i40e_poll_globr", 1279, "Global reset failed.\n");
            if ((pcindkll & 0x100000) != 0)
            {
              IOLog("ixl:%s(%d): I40E_GLGEN_RSTAT = 0x%x\n\n");
            }
          }

          return 4294967281;
        }

        while (1)
        {
          readData = 0;
          IOPCIDevice::MemoryRead32(*a1, 0, 0xB8188uLL, &readData);
          __dmb(1u);
          if ((readData & 3) == 0)
          {
            goto LABEL_35;
          }

          IODelay(0x186A0uLL);
          if (!--v3)
          {
            goto LABEL_32;
          }
        }
      }

      IODelay(0x3E8uLL);
      if (!--v11)
      {
        if ((pcindkll & 0x100000) == 0)
        {
          return 4294967281;
        }

        goto LABEL_11;
      }
    }
  }

LABEL_35:
  result = i40e_check_asq_alive(a1);
  if (result)
  {
    i40e_aq_clear_pxe_mode(a1, 0);
    return 0;
  }

  return result;
}

uint64_t i40e_clear_pxe_mode(IOPCIDevice **a1)
{
  result = i40e_check_asq_alive(a1);
  if (result)
  {

    return i40e_aq_clear_pxe_mode(a1, 0);
  }

  return result;
}

void i40e_clear_hw(IOPCIDevice **a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0xBE494uLL, &readData);
  __dmb(1u);
  v2 = readData;
  v3 = (readData >> 2) & 0x7FF;
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x1C0400uLL, &readData);
  __dmb(1u);
  v4 = readData;
  v5 = readData & 0x7FF;
  v6 = (HIWORD(readData) & 0x7FF) - v5 + 1;
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x1C0500uLL, &readData);
  __dmb(1u);
  if ((readData & 0x80000000) != 0)
  {
    v7 = BYTE1(readData) - readData + 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = 174080;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x38800uLL, 0);
  v9 = v3 - 2;
  if (v9)
  {
    v10 = 215040;
    v11 = v9;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v10 & 0xFFFFFFFC, 0x18u);
      v10 += 4;
      --v11;
    }

    while (v11);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x38500uLL, 0x7FFu);
    v12 = 217088;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v12 & 0xFFFFFFFC, 0x7FFu);
      v12 += 4;
      --v9;
    }

    while (v9);
  }

  else
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x38500uLL, 0x7FFu);
  }

  v13 = (v2 >> 13) & 0x7FF;
  v14 = v6 & (v4 >> 31);
  if (v7)
  {
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v8 & 0xFFFFFFFC, 0x7FFu);
      v8 += 4;
      --v7;
    }

    while (v7);
  }

  v15 = (v13 - 2);
  if (v15)
  {
    v16 = 151552;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v16 & 0xFFFFFFFC, 0x7FFu);
      v16 += 4;
      --v15;
    }

    while (v15);
  }

  if (v14)
  {
    v17 = v14;
    do
    {
      if (v5 <= 0x7F)
      {
        v18 = 943360;
      }

      else
      {
        v18 = 4 * (v5 >> 7) + 943360;
      }

      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v18, &readData);
      __dmb(1u);
      v19 = v5 & 0x7F | readData & 0xFFFFF800;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v18, v19 | 0x40000000);
      ++v5;
      --v17;
    }

    while (v17);
    IODelay(0x190uLL);
    v20 = 1179648;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v20 - 933888, 0);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v20 - 0x20000, 0);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v20 - 942080, 0);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v20, 0);
      v20 += 4;
      --v14;
    }

    while (v14);
  }

  else
  {
    IODelay(0x190uLL);
  }

  IODelay(0x32uLL);
}

uint64_t i40e_aq_clear_pxe_mode(IOPCIDevice **a1, _OWORD *a2)
{
  i40e_fill_default_direct_cmd_desc(v6, 272);
  v6[16] = 2;
  v4 = i40e_asq_send_command(a1, v6, 0, 0, a2);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x12A500uLL, 1u);
  return v4;
}

uint64_t i40e_led_get(uint64_t a1)
{
  v2 = 22;
  while (1)
  {
    is_mine = i40e_led_is_mine(a1, v2);
    if (is_mine)
    {
      break;
    }

    if (++v2 == 30)
    {
      return 0;
    }
  }

  return (is_mine >> 12) & 0x1F;
}

uint64_t i40e_led_is_mine(uint64_t a1, int a2)
{
  v3 = *(a1 + 176);
  v4 = v3 == 4127 || v3 == 5631;
  if (!v4 && *(a1 + a2 + 488) != 1)
  {
    return 0;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 4 * a2 + 557312, &readData);
  __dmb(1u);
  if ((readData & 8) != 0)
  {
    return 0;
  }

  if ((readData & 3) == *(a1 + 185))
  {
    return readData;
  }

  return 0;
}

void i40e_led_set(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 > 0x1F)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): invalid mode passed in %X\n\n", "i40e_led_set", 1567, a2);
    }
  }

  else
  {
    v6 = 22;
    for (i = 557400; ; i += 4)
    {
      is_mine = i40e_led_is_mine(a1, v6);
      if (is_mine)
      {
        break;
      }

      if (++v6 == 30)
      {
        return;
      }
    }

    v9 = *(a1 + 176);
    if (v9 == 5631 || v9 == 4127)
    {
      v11 = is_mine & 0xFFFFFC7F | ((a2 < 0x10) << 7);
    }

    else
    {
      v11 = is_mine;
    }

    v12 = v11 & 0xFFFE07FF | (a2 << 12);
    if (a3)
    {
      v13 = 2048;
    }

    else
    {
      v13 = 0;
    }

    __dmb(2u);
    v14 = *a1;

    IOPCIDevice::MemoryWrite32(v14, 0, i, v12 | v13);
  }
}

uint64_t i40e_aq_get_phy_capabilities(uint64_t a1, int a2, int a3, unsigned __int8 *a4, _OWORD *a5)
{
  if (!a4)
  {
    return 4294967291;
  }

  v10 = 0;
  while (1)
  {
    i40e_fill_default_direct_cmd_desc(v14, 1536);
    v14[0] |= 0x1200u;
    if (a2)
    {
      v15 |= 1u;
    }

    if (a3)
    {
      v15 |= 2u;
    }

    result = i40e_asq_send_command(a1, v14, a4, 0x218u, a5);
    v12 = *(a1 + 908);
    if (v12 != 8)
    {
      break;
    }

    IODelay(0x3E8uLL);
    result = 4294967259;
    if (*(a1 + 908) == 8 && v10++ < 0x1F3)
    {
      continue;
    }

    return result;
  }

  if (v12 == 5)
  {
    return 4294967289;
  }

  if (!result && a3)
  {
    if (*(a1 + 80) == 1 && *(a1 + 900) == 1 && *(a1 + 902) >= 7u)
    {
      result = i40e_aq_get_link_info(a1, 1, 0, 0);
    }

    else
    {
      result = 0;
    }

    *(a1 + 72) = *a4 | (a4[13] << 32);
  }

  return result;
}