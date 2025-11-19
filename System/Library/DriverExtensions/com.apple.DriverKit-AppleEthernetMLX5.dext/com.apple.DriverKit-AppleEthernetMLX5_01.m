uint64_t AppleEthernetMLX5Cmd::invoke(AppleEthernetMLX5Cmd *this, AppleEthernetMLX5CmdMsg *a2, AppleEthernetMLX5CmdMsg *a3, unsigned __int8 *a4, int a5)
{
  if (a5)
  {
    if (*(this + 344))
    {
      AppleEthernetMLX5Cmd::invoke();
    }

    *(this + 344) = 1;
    v6 = *(this + 17);
    v7 = *(this + v6 + 11);
    *(this + 20) |= 1 << v6;
  }

  else
  {
    v8 = *(this + 20);
    v9 = *(this + 17);
    v10 = __clz(__rbit32(v8 & ~(1 << v9)));
    if ((v8 & ~(1 << v9)) != 0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 0;
    }

    v7 = *(this + v11 + 11);
    *(this + 20) = (1 << v11) | v8;
    v12 = *(this + 345);
    if (v9 == v12)
    {
      AppleEthernetMLX5Cmd::invoke();
    }

    *(this + 345) = v12 + 1;
  }

  *v7 = a2;
  *(v7 + 1) = a3;
  *(v7 + 5) = a4;
  v7[12] = 0;
  atomic_store(0, v7 + 52);
  v13 = *(v7 + 4);
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  v14 = *(this + 72);
  do
  {
    v15 = v14;
    v14 = 1;
  }

  while (!v15);
  *(this + 72) = v15 + 1;
  *(v13 + 60) = v15;
  *(v13 + 16) = *(*v7 + 8);
  *(v7 + 27) = bswap32(*(v13 + 16)) >> 16;
  v16 = *v7;
  v17 = *(*v7 + 24);
  if (v17)
  {
    *(v13 + 8) = bswap64(v17[1]);
  }

  *(v13 + 4) = bswap32(*v16);
  v18 = *(v7 + 1);
  v19 = *(v18 + 24);
  if (v19)
  {
    *(v13 + 48) = bswap64(v19[1]);
  }

  *(v13 + 56) = bswap32(*v18);
  *v13 = 7;
  *(v13 + 63) = 1;
  v20 = *(v7 + 4);
  v21 = *(this + 368);
  v22 = veorq_s8(veorq_s8(v20[3], v20[2]), veorq_s8(v20[1], *v20));
  *v22.i8 = veor_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
  v20[3].i8[13] = v22.i8[0] ^ v22.i8[4] ^ ((v22.i32[0] ^ v22.i32[1]) >> 16) ^ ~((v22.i32[0] ^ v22.i32[1] ^ ((v22.i64[0] ^ HIDWORD(v22.i64[0])) >> 16)) >> 8);
  for (i = v20[3].i8[12]; v17; v17 = v17[2])
  {
    v24 = *v17;
    *(*v17 + 573) = i;
    if ((v21 & 1) == 0)
    {
      v25 = 0;
      v26 = 0;
      do
      {
        v26 ^= *(v24 + 512 + v25++);
      }

      while (v25 != 62);
      v27 = 0;
      v28 = 0;
      *(v24 + 574) = ~v26;
      do
      {
        v28 ^= *(v24 + v27++);
      }

      while (v27 != 575);
      *(v24 + 575) = ~v28;
    }
  }

  for (; v19; v19 = v19[2])
  {
    v29 = *v19;
    *(*v19 + 573) = i;
    if ((v21 & 1) == 0)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v31 ^= *(v29 + 512 + v30++);
      }

      while (v30 != 62);
      v32 = 0;
      v33 = 0;
      *(v29 + 574) = ~v31;
      do
      {
        v33 ^= *(v29 + v32++);
      }

      while (v32 != 575);
      *(v29 + 575) = ~v33;
    }
  }

  if (gMLX5DebugFlags)
  {
    AppleEthernetMLX5CmdWorkEnt::dump(v7, 1);
    if (gMLX5DebugFlags)
    {
      IOLog("mlx5:%s:%d writing 0x%x to command doorbell\n", "invoke", 641, 1 << v7[4]);
    }
  }

  __dmb(0xEu);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(MLX5_pciDev, 0, 0x18uLL, bswap32(1 << v7[4]));
  if (!*(this + 19))
  {
    v34 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    IOTimerDispatchSource::WakeAtTime(*(*(this + 7) + 152), 0x88uLL, v34 + 2000000, 0, 0);
  }

  return AppleEthernetMLX5CmdWorkEnt::waitFor(v7);
}

uint64_t AppleEthernetMLX5Cmd::statusToErr(unsigned __int8 *a1)
{
  result = *a1;
  if (result > 8)
  {
    if (result > 47)
    {
      if (result > 79)
      {
        if (result == 80)
        {
          v3 = "bad input length";
          goto LABEL_37;
        }

        if (result == 81)
        {
          v3 = "bad output length";
          goto LABEL_37;
        }
      }

      else
      {
        if (result == 48)
        {
          v3 = "bad packet (discarded)";
          goto LABEL_37;
        }

        if (result == 64)
        {
          v3 = "bad size too many outstanding CQEs";
          goto LABEL_37;
        }
      }
    }

    else if (result > 14)
    {
      if (result == 15)
      {
        v3 = "no resources";
        goto LABEL_37;
      }

      if (result == 16)
      {
        v3 = "bad QP state";
        goto LABEL_37;
      }
    }

    else
    {
      if (result == 9)
      {
        v3 = "bad resource state";
        goto LABEL_37;
      }

      if (result == 10)
      {
        v3 = "bad index";
        goto LABEL_37;
      }
    }

    goto LABEL_36;
  }

  if (result > 3)
  {
    if (result <= 5)
    {
      if (result == 4)
      {
        v3 = "bad system state";
      }

      else
      {
        v3 = "bad resource";
      }

      goto LABEL_37;
    }

    if (result == 6)
    {
      v3 = "resource busy";
      goto LABEL_37;
    }

    if (result == 8)
    {
      v3 = "limits exceeded";
      goto LABEL_37;
    }

LABEL_36:
    v3 = "unknown status";
    goto LABEL_37;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      v3 = "bad operation";
    }

    else
    {
      v3 = "bad parameter";
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v3 = "internal error";
  }

LABEL_37:
  IOLog("mlx5: command failed, status %s(0x%x), syndrome 0x%x\n", v3, result, bswap32(*(a1 + 1)));
  result = *a1;
  if (*a1 > 8u)
  {
    if (*a1 > 0x2Fu)
    {
      if (*a1 <= 0x4Fu && (result == 48 || result == 64))
      {
        return 3758096385;
      }
    }

    else if (*a1 > 0xEu)
    {
      if (result == 15)
      {
        return 3758097086;
      }

      if (result == 16)
      {
        return 3758096385;
      }
    }

    else if (result == 9 || result == 10)
    {
      return 3758096385;
    }
  }

  else
  {
    if (*a1 <= 3u)
    {
      if (*a1 <= 1u)
      {
        if (!*a1)
        {
          return result;
        }

        return 3758097098;
      }

      return 3758096385;
    }

    if (*a1 > 5u)
    {
      if (result == 6)
      {
        return 3758097109;
      }

      if (result == 8)
      {
        return 3758097085;
      }
    }

    else if (result != 4)
    {
      return 3758096385;
    }
  }

  return 3758097098;
}

void AppleEthernetMLX5Cmd::~AppleEthernetMLX5Cmd(AppleEthernetMLX5Cmd *this)
{
  v1 = *(this + 17);
  if ((v1 & 0x80000000) == 0)
  {
    v2 = v1 + 1;
    v3 = (this + 8 * v1 + 88);
    do
    {
      if (*v3)
      {
        operator delete();
      }

      --v3;
    }

    while (v2-- > 1);
  }

  v5 = *(this + 44);
  if (v5 != (this + 352))
  {
    v6 = (v5 - 40);
    v7 = *v5;
    v8 = *(*(this + 44) + 8);
    *(v7 + 8) = v8;
    *v8 = v7;
    if ((gMLX5DebugFlags & 4) != 0)
    {
      IOLog("mlx5: releasing cached CmdMsgInp (%p)\n", v6);
    }

    AppleEthernetMLX5CmdMsg::~AppleEthernetMLX5CmdMsg(v6);
    operator delete();
  }

  AppleEthernetMLX5DMABuf::~AppleEthernetMLX5DMABuf(this);
}

{
  AppleEthernetMLX5Cmd::~AppleEthernetMLX5Cmd(this);

  operator delete();
}

uint64_t AppleEthernetMLX5Cmd::statusToErr(AppleEthernetMLX5Cmd *this, void *a2)
{
  v2 = *this;
  if (*this)
  {
    v3 = 3758097098;
    v4 = bswap32(*(this + 1));
    if (*this <= 8u)
    {
      if (*this <= 3u)
      {
        switch(v2)
        {
          case 1:
            v5 = "internal error";
            goto LABEL_39;
          case 2:
            v3 = 3758096385;
            v5 = "bad operation";
            goto LABEL_39;
          case 3:
            v3 = 3758096385;
            v5 = "bad parameter";
            goto LABEL_39;
        }
      }

      else
      {
        if (*this <= 5u)
        {
          if (v2 == 4)
          {
            v5 = "bad system state";
          }

          else
          {
            v3 = 3758096385;
            v5 = "bad resource";
          }

          goto LABEL_39;
        }

        if (v2 == 6)
        {
          v3 = 3758097109;
          v5 = "resource busy";
          goto LABEL_39;
        }

        if (v2 == 8)
        {
          v3 = 3758097085;
          v5 = "limits exceeded";
          goto LABEL_39;
        }
      }
    }

    else if (*this > 0x2Fu)
    {
      if (*this > 0x4Fu)
      {
        if (v2 == 80)
        {
          v5 = "bad input length";
          goto LABEL_39;
        }

        if (v2 == 81)
        {
          v5 = "bad output length";
          goto LABEL_39;
        }
      }

      else
      {
        if (v2 == 48)
        {
          v3 = 3758096385;
          v5 = "bad packet (discarded)";
          goto LABEL_39;
        }

        if (v2 == 64)
        {
          v3 = 3758096385;
          v5 = "bad size too many outstanding CQEs";
          goto LABEL_39;
        }
      }
    }

    else if (*this > 0xEu)
    {
      if (v2 == 15)
      {
        v3 = 3758097086;
        v5 = "no resources";
        goto LABEL_39;
      }

      if (v2 == 16)
      {
        v3 = 3758096385;
        v5 = "bad QP state";
        goto LABEL_39;
      }
    }

    else
    {
      if (v2 == 9)
      {
        v3 = 3758096385;
        v5 = "bad resource state";
        goto LABEL_39;
      }

      if (v2 == 10)
      {
        v3 = 3758096385;
        v5 = "bad index";
LABEL_39:
        IOLog("mlx5: command failed, status %s(0x%x), syndrome 0x%x\n", v5, *this, v4);
        return v3;
      }
    }

    v5 = "unknown status";
    goto LABEL_39;
  }

  return 0;
}

void OUTLINED_FUNCTION_1_0(IOPCIDevice *a1)
{
  v3 = *(v1 - 17) & 0xFB;

  IOPCIDevice::ConfigurationWrite8(a1, 4uLL, v3);
}

uint64_t radix_tree_lookup(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (~(-1 << (6 * v2)) < a2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = v2 - 1;
  v5 = *a1 != 0;
  if (v2 != 1 && v3 != 0)
  {
    v7 = 6 * (v2 - 1);
    v8 = v4 - 1;
    do
    {
      v3 = *(v3 + 8 * ((a2 >> (v7 & 0xFE)) & 0x3F));
      v5 = v3 != 0;
      if (!v8)
      {
        break;
      }

      v7 -= 6;
      --v8;
    }

    while (v3);
  }

  if (v5)
  {
    return *(v3 + 8 * (a2 & 0x3F));
  }

  else
  {
    return 0;
  }
}

uint64_t radix_tree_delete(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (~(-1 << (6 * v2)) < a2)
  {
    return 0;
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v5 = *a1;
  v6 = v2 - 1;
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = 6 * v6;
    do
    {
      *(v17 + v6) = v5;
      v5 = *&v5[2 * ((a2 >> v8) & 0x3F)];
      if (!--v6)
      {
        break;
      }

      v8 -= 6;
    }

    while (v5);
  }

  if (!v5)
  {
    return 0;
  }

  v9 = *&v5[2 * (a2 & 0x3F)];
  if (v9)
  {
    *&v5[2 * (a2 & 0x3F)] = 0;
    v10 = v5[128];
    v11 = __OFSUB__(v10--, 1);
    v5[128] = v10;
    if ((v10 < 0) ^ v11 | (v10 == 0))
    {
      v12 = 6 * v6 + 6;
      v13 = v17 + v6 + 1;
      while (1)
      {
        IOFree(v5, 0x208uLL);
        if (v5 == *a1)
        {
          break;
        }

        v14 = *v13++;
        v5 = v14;
        *&v14[2 * ((a2 >> v12) & 0x3F)] = 0;
        v15 = v14[128];
        v14[128] = v15 - 1;
        v12 += 6;
        if (v15 >= 2)
        {
          return v9;
        }
      }

      *a1 = 0;
      *(a1 + 8) = 0;
    }
  }

  return v9;
}

uint64_t radix_tree_insert(char **a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 3758096385;
  }

  v3 = a3;
  v6 = 3758097085;
  v7 = *a1;
  if (*a1)
  {
    v8 = *(a1 + 2);
  }

  else
  {
    v9 = IOMallocTyped();
    if (!v9)
    {
      return v6;
    }

    v7 = v9;
    bzero(v9, 0x208uLL);
    *a1 = v7;
    v8 = *(a1 + 2) + 1;
    *(a1 + 2) = v8;
  }

  if (~(-1 << (6 * v8)) >= a2)
  {
LABEL_13:
    memset(v20, 0, sizeof(v20));
    v11 = v8;
    v12 = 6 * v8;
    v13 = (v8 - 1) + 1;
    v14 = 6 * v8 - 6;
    while (1)
    {
      v15 = v7;
      if (v13 == 1)
      {
        break;
      }

      --v11;
      v7 = *&v7[8 * ((a2 >> v14) & 0x3F)];
      --v13;
      v12 -= 6;
      v14 -= 6;
      if (!v7)
      {
        v19 = v3;
        while (1)
        {
          v16 = IOMallocTyped();
          *(v20 + v7) = v16;
          if (!v16)
          {
            break;
          }

          bzero(v16, 0x208uLL);
          ++v7;
          if (!--v13)
          {
            v3 = v19;
            do
            {
              v17 = *(&v19 + v11);
              *&v15[8 * ((a2 >> v12) & 0x3F)] = v17;
              ++*(v15 + 128);
              v12 -= 6;
              v15 = v17;
              --v11;
            }

            while (v11);
            goto LABEL_23;
          }
        }

        for (; v7; --v7)
        {
          IOFree(*(&v19 + v7), 0x208uLL);
        }

        v6 = 536870211;
        if (!*(*a1 + 128))
        {
          IOFree(*a1, 0x208uLL);
          *a1 = 0;
          *(a1 + 2) = 0;
        }

        return v6;
      }
    }

    v17 = v7;
LABEL_23:
    if (*&v17[8 * (a2 & 0x3F)])
    {
      return 3758097090;
    }

    else
    {
      v6 = 0;
      *&v17[8 * (a2 & 0x3F)] = v3;
      ++*(v17 + 128);
    }
  }

  else
  {
    while (v8 != 11)
    {
      if (*(v7 + 128))
      {
        v10 = IOMallocTyped();
        if (!v10)
        {
          return v6;
        }

        v7 = v10;
        bzero(v10, 0x208uLL);
        *v7 = *a1;
        *(v7 + 128) = 1;
        *a1 = v7;
        v8 = *(a1 + 2);
      }

      *(a1 + 2) = ++v8;
      if (~(-1 << (6 * v8)) >= a2)
      {
        goto LABEL_13;
      }
    }

    return 3758097128;
  }

  return v6;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryVPortState(AppleEthernetMLX5Cmd **this, int a2, int a3, void *a4, int a5)
{
  v10[0] = 20487;
  v10[1] = a2 << 24;
  v6 = bswap32(a3 | 0x80000000);
  if (!a3)
  {
    v6 = 0;
  }

  v10[2] = v6;
  v10[3] = 0;
  v7 = AppleEthernetMLX5Cmd::exec(this[38], v10, 16, a4, a5);
  if (v7)
  {
    v8 = v7;
LABEL_6:
    IOLog("mlx5: failed to %s in %s:%d\n", "MLX5_CMD_OP_QUERY_VPORT_STATE", "queryVPortState", 13);
    return v8;
  }

  v8 = AppleEthernetMLX5Cmd::statusToErr(a4);
  if (v8)
  {
    goto LABEL_6;
  }

  return v8;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyVPortAdminState(AppleEthernetMLX5Cmd **this, int a2, int a3, int a4)
{
  v9[0] = 20743;
  v9[1] = a2 << 24;
  v4 = bswap32(a3 | 0x80000000);
  if (!a3)
  {
    v4 = 0;
  }

  v9[2] = v4;
  v9[3] = a4 << 28;
  v5 = AppleEthernetMLX5Cmd::exec(this[38], v9, 16, v8, 16);
  if (v5)
  {
    v6 = v5;
LABEL_6:
    IOLog("mlx5: failed to %s in %s:%d\n", "MLX5_CMD_OP_MODIFY_VPORT_STATE", "modifyVPortAdminState", 47);
    return v6;
  }

  v6 = AppleEthernetMLX5Cmd::statusToErr(v8);
  if (v6)
  {
    goto LABEL_6;
  }

  return v6;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryNicVPortContext(AppleEthernetMLX5Cmd **this, int a2, void *a3, int a4)
{
  v8 = 0;
  v7 = 21511;
  v5 = bswap32(a2 | 0x80000000);
  if (!a2)
  {
    v5 = 0;
  }

  HIDWORD(v8) = v5;
  v9 = 0;
  result = AppleEthernetMLX5Cmd::exec(this[38], &v7, 16, a3, a4);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(a3);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::vPortMaxQCounterAllocator(DriverKit_AppleEthernetMLX5_IVars *this, int a2)
{
  if (a2 == 1)
  {
    return 64;
  }

  IOLog("mlx5: Unknown Client: %d\n", a2);
  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::vPortAllocQCounter(DriverKit_AppleEthernetMLX5_IVars *this, int a2, unsigned __int16 *a3)
{
  v6 = this + 115296;
  v7 = *(this + a2 + 28824);
  if (a2 == 1)
  {
    v8 = 64;
  }

  else
  {
    IOLog("mlx5: Unknown Client: %d\n", a2);
    v8 = 0;
  }

  if (v7 > v8)
  {
    return 3758096385;
  }

  v13 = 0;
  v12 = 0;
  v11 = 28935;
  result = AppleEthernetMLX5Cmd::exec(*(this + 38), &v11, 16, v10, 16);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v10);
    if (!result)
    {
      *a3 = v10[11];
    }
  }

  ++*&v6[4 * a2];
  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::vPortDeallocQCounter(DriverKit_AppleEthernetMLX5_IVars *this, int a2, int a3)
{
  v3 = this + 115296;
  if (!*(this + a2 + 28824))
  {
    return 3758096385;
  }

  v7[1] = 0;
  v7[0] = 29191;
  v7[2] = a3 << 24;
  v7[3] = 0;
  result = AppleEthernetMLX5Cmd::exec(*(this + 38), v7, 16, v6, 16);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v6);
  }

  --*&v3[4 * a2];
  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::vPortQueryQCounter(AppleEthernetMLX5Cmd **this, int a2, char a3, void *a4, int a5)
{
  v9 = 0;
  v8 = 0;
  v7 = 29447;
  v10 = 0;
  v11 = (a3 & 1) << 7;
  v12 = a2 << 24;
  result = AppleEthernetMLX5Cmd::exec(this[38], &v7, 32, a4, a5);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(a4);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::vPortQueryOutOfRxBuffer(AppleEthernetMLX5Cmd **this, int a2, unsigned int *a3)
{
  result = DriverKit_AppleEthernetMLX5_IVars::vPortQueryQCounter(this, a2, 0, v5, 256);
  if (!result)
  {
    *a3 = bswap32(v5[12]);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryNicVPortMacAddress(AppleEthernetMLX5Cmd **this, int a2, unsigned __int8 *a3)
{
  result = DriverKit_AppleEthernetMLX5_IVars::queryNicVPortContext(this, a2, v5, 272);
  if (!result)
  {
    *(a3 + 2) = v6;
    *a3 = *&v5[262];
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortMacAddress(AppleEthernetMLX5Cmd **this, int a2, unsigned __int8 *a3)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v3 = bswap32(a2 | 0x80000000);
  if (!a2)
  {
    v3 = 0;
  }

  *(&v5[0] + 1) = v3 | 0x800000000000000;
  *(&v6 + 6) = *a3;
  WORD5(v6) = *(a3 + 2);
  return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, v5, 512);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(AppleEthernetMLX5Cmd **this, _WORD *a2, int a3)
{
  *a2 = 21767;
  result = AppleEthernetMLX5Cmd::exec(this[38], a2, a3, v4, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v4);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryNicVPortSystemImageGuid(AppleEthernetMLX5Cmd **this, unint64_t *a2)
{
  result = DriverKit_AppleEthernetMLX5_IVars::queryNicVPortContext(this, 0, v4, 272);
  if (!result)
  {
    *a2 = bswap64(v4[7]);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryNicVPortNodeGuid(AppleEthernetMLX5Cmd **this, unint64_t *a2)
{
  result = DriverKit_AppleEthernetMLX5_IVars::queryNicVPortContext(this, 0, v4, 272);
  if (!result)
  {
    *a2 = bswap64(v4[9]);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryNicVPortPortGuid(AppleEthernetMLX5Cmd **this, unint64_t *a2)
{
  result = DriverKit_AppleEthernetMLX5_IVars::queryNicVPortContext(this, 0, v4, 272);
  if (!result)
  {
    *a2 = bswap64(v4[8]);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::nicVPortEnableDisableRoce(AppleEthernetMLX5Cmd **this, int a2)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  HIDWORD(v4[0]) = 0x2000000;
  if (a2)
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  LODWORD(v5) = v2;
  return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, v4, 512);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::setNicVPortCurrentMac(AppleEthernetMLX5Cmd **this, unsigned __int16 a2, int a3, unsigned __int8 *a4)
{
  v36 = 0u;
  memset(v37, 0, 30);
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
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 21767;
  if (a3)
  {
    v4 = 0x80000000;
  }

  else
  {
    v4 = 0;
  }

  *(&v7 + 4) = bswap32(v4 & 0xFFFF0000 | a2) | 0x400000000000000;
  *&v37[6] = 0x1000000;
  *&v37[15] = *a4;
  v37[17] = *(a4 + 2);
  return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, &v6, 520);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortNodeGuid(DriverKit_AppleEthernetMLX5_IVars *this, int a2, unint64_t a3)
{
  if (!a2)
  {
    return 3758096385;
  }

  v5 = 3758097095;
  if ((*(this + 364) & 0x80) == 0)
  {
    return 3758097122;
  }

  if ((*(this + 37179) & 2) != 0)
  {
    v42 = v3;
    v43 = v4;
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
    v27 = 0u;
    v28 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = 0;
    v10 = 0u;
    v8 = bswap32(a2 | 0x80000000);
    v9 = 0x20000;
    v29 = bswap64(a3);
    return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, &v7, 512);
  }

  return v5;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortPortGuid(DriverKit_AppleEthernetMLX5_IVars *this, int a2, unint64_t a3)
{
  if (!a2)
  {
    return 3758096385;
  }

  v5 = 3758097095;
  if ((*(this + 364) & 0x80) == 0)
  {
    return 3758097122;
  }

  if (*(this + 37179))
  {
    v41 = v3;
    v42 = v4;
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
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = 0;
    v10 = 0u;
    v8 = bswap32(a2 | 0x80000000);
    v9 = 0x10000;
    v28 = bswap64(a3);
    return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, &v7, 512);
  }

  return v5;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::setNicVPortVlanList(DriverKit_AppleEthernetMLX5_IVars *this, int a2, unsigned __int16 *a3, int a4)
{
  v5 = 1 << BYTE1(*(this + 14445));
  if (v5 >= a4)
  {
    v10 = (8 * a4 + 512);
    v11 = (&v18 - ((v10 + 15) & 0x1FFFFFFF0));
    bzero(v11, v10);
    v12 = *(v11 + 4);
    v13 = bswap32(bswap32(v12) | a2 | 0x80000000);
    if (a2)
    {
      v12 = v13;
    }

    v14 = v11[3] | 0x4000000;
    v11[2] = v12;
    v11[3] = v14;
    v11[124] = bswap32(a4 & 0xFFF | 0x2000000) | v11[124] & 0xF0FFF8;
    if (a4 >= 1)
    {
      v15 = a4;
      v16 = v11 + 128;
      do
      {
        v17 = *a3++;
        *v16 = bswap32(v17 & 0xFFF) | *v16 & 0xF0FFFF;
        v16 += 2;
        --v15;
      }

      while (v15);
    }

    return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, (&v18 - ((v10 + 15) & 0x1FFFFFFF0)), 8 * a4 + 512);
  }

  else
  {
    IOLog("mlx5: Requested list size (%d) > (%d) max_list_size\n", a4, v5);
    return 3758097115;
  }
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::setNicVPortMcList(DriverKit_AppleEthernetMLX5_IVars *this, int a2, unint64_t *a3, int a4)
{
  v5 = 1 << *(this + 28891);
  if (v5 >= a4)
  {
    v10 = (8 * a4 + 512);
    v11 = &v17 - ((v10 + 15) & 0x1FFFFFFF0);
    bzero(v11, v10);
    v12 = *(v11 + 4);
    v13 = bswap32(bswap32(v12) & 0xFFFF0000 | a2 | 0x80000000);
    if (a2)
    {
      v12 = v13;
    }

    v14 = *(v11 + 3) | 0x4000000;
    *(v11 + 2) = v12;
    *(v11 + 3) = v14;
    *(v11 + 124) = bswap32(a4 & 0xFFF | 0x1000000) | *(v11 + 124) & 0xF0FFF8;
    if (a4 >= 1)
    {
      v15 = a4;
      v16 = v11 + 514;
      do
      {
        *v16 = *a3;
        *(v16 + 2) = *(a3++ + 2);
        v16 += 8;
        --v15;
      }

      while (v15);
    }

    return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, (&v17 - ((v10 + 15) & 0x1FFFFFFF0)), 8 * a4 + 512);
  }

  else
  {
    IOLog("mlx5: Requested list size (%d) > (%d) max_list_size\n", a4, v5);
    return 3758097115;
  }
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::setNicVPortPromisc(AppleEthernetMLX5Cmd **this, int a2, int a3, int a4, int a5)
{
  v5 = 0;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  v6 = bswap32(a2 | 0x80000000);
  if (!a2)
  {
    v6 = 0;
  }

  *(&v8[0] + 1) = v6 | 0x1000000000000000;
  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 |= 0x80u;
    LODWORD(v9) = v5;
    if (!a5)
    {
      return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, v8, 512);
    }

    goto LABEL_6;
  }

  v5 = 64;
  LODWORD(v9) = 64;
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (a5)
  {
LABEL_6:
    LODWORD(v9) = v5 | 0x20;
  }

  return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, v8, 512);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryNicVPortMacList(uint64_t a1, int a2, int a3, uint64_t a4, int *a5)
{
  v7 = a3;
  v10 = *a5;
  if (a3)
  {
    v11 = 16;
  }

  else
  {
    v11 = 24;
  }

  v12 = *(a1 + 57780) >> v11;
  v13 = 1 << v12;
  if (v10 > 1 << v12)
  {
    IOLog("mlx5: Requested list size (%d) > (%d) max_list_size\n", *a5, 1 << v12);
    v10 = v13;
  }

  v14 = (8 * v10 + 512);
  v15 = &v21 - ((v14 + 15) & 0x1FFFFFFF0);
  v21 = 21511;
  v16 = bswap32(a2 | 0x80000000);
  if (!a2)
  {
    v16 = 0;
  }

  v22 = v16;
  v23 = v7 & 7;
  result = AppleEthernetMLX5Cmd::exec(*(a1 + 304), &v21, 16, &v21 - ((v14 + 15) & 0x1FFFFFFF0), v14);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v15);
    if (!result)
    {
      v18 = (*(v15 + 64) & 0xFF0F0000) == 0;
      LODWORD(v19) = bswap32(*(v15 + 64) & 0xFF0F0000);
      *a5 = v19;
      if (!v18)
      {
        if (v19 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v19;
        }

        v20 = (v15 + 274);
        do
        {
          *a4 = *v20;
          *(a4 + 4) = *(v20 + 2);
          a4 += 6;
          v20 += 8;
          --v19;
        }

        while (v19);
      }

      return 0;
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortMacList(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2)
  {
    v6 = 16;
  }

  else
  {
    v6 = 24;
  }

  if (1 << (*(a1 + 436) >> v6) < a4)
  {
    return 3758097115;
  }

  v17 = v4;
  v18 = v5;
  v10 = a2;
  v12 = (8 * a4 + 512);
  v13 = &v16[-((v12 + 15) & 0x1FFFFFFF0)];
  bzero(v13, v12);
  *v13 = 21767;
  *(v13 + 3) |= 0x4000000u;
  *(v13 + 124) = bswap32(a4 & 0xFFF | ((v10 & 7) << 24)) | *(v13 + 124) & 0xF0FFF8;
  if (a4 >= 1)
  {
    v14 = a4;
    v15 = v13 + 514;
    do
    {
      *v15 = *a3;
      *(v15 + 2) = *(a3 + 4);
      a3 += 6;
      v15 += 8;
      --v14;
    }

    while (v14);
  }

  result = AppleEthernetMLX5Cmd::exec(*(a1 + 304), &v16[-((v12 + 15) & 0x1FFFFFFF0)], v12, v16, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v16);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryNicVPortVlans(DriverKit_AppleEthernetMLX5_IVars *this, int a2, unsigned __int16 *a3, int *a4)
{
  v8 = *a4;
  v9 = 1 << BYTE1(*(this + 109));
  if (*a4 > v9)
  {
    IOLog("mlx5: Requested list size (%d) > (%d) max list size\n", *a4, v9);
    v8 = v9;
  }

  v10 = (8 * v8 + 512);
  v11 = &v18 - ((v10 + 15) & 0x1FFFFFFF0);
  v18 = 21511;
  v12 = bswap32(a2 | 0x80000000);
  if (!a2)
  {
    v12 = 0;
  }

  v19 = v12;
  v20 = 2;
  result = AppleEthernetMLX5Cmd::exec(*(this + 38), &v18, 16, &v18 - ((v10 + 15) & 0x1FFFFFFF0), v10);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v11);
    if (!result)
    {
      v14 = (*(v11 + 64) & 0xFF0F0000) == 0;
      LODWORD(v15) = bswap32(*(v11 + 64) & 0xFF0F0000);
      *a4 = v15;
      if (!v14)
      {
        if (v15 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v15;
        }

        v16 = (v11 + 272);
        do
        {
          v17 = *v16;
          v16 += 2;
          *a3++ = bswap32(v17 & 0xFF0F0000);
          --v15;
        }

        while (v15);
      }

      return 0;
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortVlans(DriverKit_AppleEthernetMLX5_IVars *this, unsigned __int16 *a2, int a3)
{
  if (1 << BYTE1(*(this + 109)) < a3)
  {
    return 3758097115;
  }

  v15 = v3;
  v16 = v4;
  v9 = (8 * a3 + 512);
  v10 = &v14[-((v9 + 15) & 0x1FFFFFFF0)];
  bzero(v10, v9);
  *v10 = 21767;
  *(v10 + 3) |= 0x4000000u;
  *(v10 + 124) = bswap32(a3 & 0xFFF | 0x2000000) | *(v10 + 124) & 0xF0FFF8;
  if (a3 >= 1)
  {
    v11 = a3;
    v12 = (v10 + 512);
    do
    {
      v13 = *a2++;
      *v12 = bswap32(v13 & 0xFFF) | *v12 & 0xF0FFFF;
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  result = AppleEthernetMLX5Cmd::exec(*(this + 38), &v14[-((v9 + 15) & 0x1FFFFFFF0)], v9, v14, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v14);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryNicVPortRoceEn(AppleEthernetMLX5Cmd **this, unsigned __int8 *a2)
{
  result = DriverKit_AppleEthernetMLX5_IVars::queryNicVPortContext(this, 0, v4, 272);
  if (!result)
  {
    *a2 = v4[19] & 1;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::setNicVPortPermanentMac(AppleEthernetMLX5Cmd **this, unsigned __int16 a2, unsigned __int8 *a3)
{
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
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
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v4 = 21767;
  *(&v5 + 4) = bswap32(a2 | 0x80000000) | 0x800000000000000;
  *(&v35[4] + 2) = *a3;
  HIWORD(v35[5]) = *(a3 + 2);
  return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, &v4, 512);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::nicVPortEnableRoce(AppleEthernetMLX5Cmd **this)
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  memset(v2, 0, sizeof(v2));
  HIDWORD(v2[0]) = 0x2000000;
  LODWORD(v3) = 0x1000000;
  return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, v2, 512);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::nicVPortDisableRoce(AppleEthernetMLX5Cmd **this)
{
  memset(v2, 0, sizeof(v2));
  HIDWORD(v2[0]) = 0x2000000;
  return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, v2, 512);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryVPortCounter(DriverKit_AppleEthernetMLX5_IVars *this, int a2, __int16 a3, char a4, void *a5, int a6)
{
  v11 = 0;
  v10 = 0;
  v13 = 0;
  v12 = 0;
  v9 = 28679;
  v6 = *(this + 91);
  if (a2)
  {
    if ((v6 & 0x80) == 0)
    {
      return 3758097122;
    }

    v8 = bswap32((a3 + 1) | 0x80000000);
    HIDWORD(v10) = v8;
  }

  else
  {
    v8 = 0;
  }

  if (HIBYTE(v6) == 2)
  {
    HIDWORD(v10) = v8 | ((a4 & 0xF) << 8);
  }

  return AppleEthernetMLX5Cmd::exec(*(this + 38), &v9, 32, a5, a6);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyEswitchVPortContext(AppleEthernetMLX5Cmd **this, int a2, _DWORD *a3, int a4)
{
  v4 = *(a3 + 4);
  v5 = bswap32(bswap32(v4) | a2 | 0x80000000);
  if (a2)
  {
    v4 = v5;
  }

  a3[2] = v4;
  *a3 = 21255;
  v6 = AppleEthernetMLX5Cmd::exec(this[38], a3, a4, v9, 16);
  if (v6)
  {
    v7 = v6;
LABEL_6:
    IOLog("mlx5: failed to %s in %s:%d\n", "MLX5_CMD_OP_MODIFY_ESW_VPORT_CONTEXT", "modifyEswitchVPortContext", 740);
    return v7;
  }

  v7 = AppleEthernetMLX5Cmd::statusToErr(v9);
  if (v7)
  {
    goto LABEL_6;
  }

  return v7;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::setEswitchCVlanInfo(AppleEthernetMLX5Cmd **this, int a2, int a3, char a4, __int16 a5, char a6, char a7)
{
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  if (a3)
  {
    DWORD2(v9) = bswap32(((a7 & 7) << 12) & 0x7000 | ((a6 & 1) << 15) | a5 & 0xFFF);
  }

  HIDWORD(v8) = 167772160;
  LODWORD(v9) = a3 & 3 | (8 * (a4 & 1));
  return DriverKit_AppleEthernetMLX5_IVars::modifyEswitchVPortContext(this, a2, &v8, 272);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryVPortMtu(AppleEthernetMLX5Cmd **this, int *a2)
{
  result = DriverKit_AppleEthernetMLX5_IVars::queryNicVPortContext(this, 0, v4, 272);
  if (!result)
  {
    *a2 = __rev16(v4[27]);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::setVPortMtu(AppleEthernetMLX5Cmd **this, unsigned __int16 a2)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  HIDWORD(v3[0]) = 0x40000000;
  DWORD1(v4) = bswap32(a2);
  return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, v3, 512);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryVPortMinWqeHeader(AppleEthernetMLX5Cmd **this, int *a2)
{
  result = DriverKit_AppleEthernetMLX5_IVars::queryNicVPortContext(this, 0, v4, 272);
  if (!result)
  {
    *a2 = v4[16] & 7;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::setVPortMinWqeHeader(AppleEthernetMLX5Cmd **this, int a2, char a3)
{
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
  v8 = 0u;
  v9 = 0u;
  v4 = 0;
  v7 = 0u;
  LODWORD(v22) = a3 & 7;
  v5 = bswap32(a2 | 0x80000000);
  v6 = 0x80000000;
  return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, &v4, 512);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryMinWqeHeader(DriverKit_AppleEthernetMLX5_IVars *this, int *a2)
{
  if ((*(this + 91) & 0x30000) != 0x10000)
  {
    return 3758096385;
  }

  v7 = v2;
  v8 = v3;
  result = DriverKit_AppleEthernetMLX5_IVars::queryNicVPortContext(this, 0, v6, 272);
  if (!result)
  {
    *a2 = v6[16] & 7;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryNicVPortPromisc(AppleEthernetMLX5Cmd **this, int a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  result = DriverKit_AppleEthernetMLX5_IVars::queryNicVPortContext(this, a2, &v10, 272);
  if (!result)
  {
    v9 = v11;
    *a3 = (v11 >> 7) & 1;
    *a4 = (v9 >> 6) & 1;
    *a5 = (v9 >> 5) & 1;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortPromisc(AppleEthernetMLX5Cmd **this, int a2, char a3, char a4)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  HIDWORD(v5[0]) = 0x10000000;
  LODWORD(v6) = (((a3 & 1) << 30) | (a2 << 31) | ((a4 & 1u) << 29)) >> 24;
  return DriverKit_AppleEthernetMLX5_IVars::modifyNicVPortContext(this, v5, 512);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryVPortSystemImageGuid(DriverKit_AppleEthernetMLX5_IVars *this, unint64_t *a2)
{
  if ((*(this + 91) & 0x30000) != 0x10000)
  {
    return 3758096385;
  }

  v6[36] = v2;
  v6[37] = v3;
  result = DriverKit_AppleEthernetMLX5_IVars::queryNicVPortContext(this, 0, v6, 272);
  if (!result)
  {
    *a2 = bswap64(v6[7]);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryVPortNodeGuid(DriverKit_AppleEthernetMLX5_IVars *this, unint64_t *a2)
{
  if ((*(this + 91) & 0x30000) != 0x10000)
  {
    return 3758096385;
  }

  v6[36] = v2;
  v6[37] = v3;
  result = DriverKit_AppleEthernetMLX5_IVars::queryNicVPortContext(this, 0, v6, 272);
  if (!result)
  {
    *a2 = bswap64(v6[9]);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryVPortPortGuid(DriverKit_AppleEthernetMLX5_IVars *this, unint64_t *a2)
{
  if ((*(this + 91) & 0x30000) != 0x10000)
  {
    return 3758096385;
  }

  v6[36] = v2;
  v6[37] = v3;
  result = DriverKit_AppleEthernetMLX5_IVars::queryNicVPortContext(this, 0, v6, 272);
  if (!result)
  {
    *a2 = bswap64(v6[8]);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createMKey(uint64_t a1, int8x16_t *a2, int8x16_t *a3, int a4)
{
  add = atomic_fetch_add((a1 + 123584), 1u);
  a3[1].i32[1] |= add << 24;
  a3->i16[0] = 2;
  v16 = 0;
  v17 = 0;
  v8 = AppleEthernetMLX5Cmd::exec(*(a1 + 304), a3, a4, &v16, 16);
  if (v8)
  {
    v9 = v8;
    IOLog("mlx5: cmd exec failed %d\n", v8);
  }

  else if (v16)
  {
    return AppleEthernetMLX5Cmd::statusToErr(&v16);
  }

  else
  {
    *a2 = vrev64q_s8(a3[2]);
    v10 = v17;
    v11 = bswap32(v17 & 0xFFFFFF00);
    v12 = add | (v11 << 8);
    v13 = bswap32(a3[1].i32[3] & 0xFFFFFF00);
    a2[1].i32[0] = v12;
    a2[1].i32[1] = v13;
    if (gMLX5DebugFlags)
    {
      IOLog("mlx5:%s:%d out 0x%x, key 0x%x, mkey 0x%x\n", "createMKey", 25, bswap32(v10), add, v12);
      v11 = a2[1].i32[0] >> 8;
    }

    v14 = radix_tree_insert((a1 + 123544), v11, a2);
    v9 = v14;
    if (v14)
    {
      IOLog("mlx5: failed radix tree insert of mr 0x%x, %d\n", a2[1].i32[0], v14);
      DriverKit_AppleEthernetMLX5_IVars::destroyMKey(a1, a2);
    }
  }

  return v9;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::destroyMKey(uint64_t a1, uint64_t a2)
{
  if (radix_tree_delete(a1 + 123544, *(a2 + 16) >> 8))
  {
    v7 = 0;
    v6 = 514;
    HIDWORD(v7) = bswap32(*(a2 + 16)) << 8;
    v8 = 0;
    result = AppleEthernetMLX5Cmd::exec(*(a1 + 304), &v6, 16, v5, 16);
    if (!result)
    {
      return AppleEthernetMLX5Cmd::statusToErr(v5);
    }
  }

  else
  {
    IOLog("mlx5: failed radix tree delete of mr 0x%x\n", *(a2 + 16));
    return 3758096385;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryMKey(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  v12 = a3;
  bzero(a3, a4);
  v10 = 258;
  v11 = bswap32(*(a2 + 16)) << 8;
  result = AppleEthernetMLX5Cmd::exec(*(a1 + 304), &v10, 12, a3, a4);
  if (!result)
  {
    if (*a3)
    {
      return AppleEthernetMLX5Cmd::statusToErr(&v12, v9);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::dumpFillMKey(AppleEthernetMLX5Cmd **this, unsigned int *a2)
{
  memset(&v6[1], 0, 14);
  v4 = 0;
  v5 = 0;
  v6[0] = 770;
  result = AppleEthernetMLX5Cmd::exec(this[38], v6, 16, &v4, 16);
  if (!result)
  {
    if (v4)
    {
      return AppleEthernetMLX5Cmd::statusToErr(&v4);
    }

    else
    {
      result = 0;
      *a2 = bswap32(v5);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createPSV(AppleEthernetMLX5Cmd **this, int a2, int a3, unsigned int *a4)
{
  if (a3 > 4)
  {
    return 3758096385;
  }

  v12 = 0u;
  v13 = 0u;
  v14[0] = 6;
  v14[1] = bswap32(a2 | (a3 << 28));
  v7 = AppleEthernetMLX5Cmd::exec(this[38], v14, 16, &v12, 32);
  if (v7)
  {
    v4 = v7;
    IOLog("mlx5: cmd exec failed %d\n", v7);
  }

  else if (v12)
  {
    IOLog("mlx5: create_psv bad status %d\n", v12);
    return AppleEthernetMLX5Cmd::statusToErr(&v12);
  }

  else
  {
    if (a3)
    {
      v8 = a3;
      v9 = &v13;
      do
      {
        v10 = *v9++;
        *a4++ = bswap32(v10 & 0xFFFFFF00);
        --v8;
      }

      while (v8);
    }

    return 0;
  }

  return v4;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::destroyPSV(AppleEthernetMLX5Cmd **this, unsigned int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v6[1] = bswap32(a2);
  v6[0] = 262;
  v2 = AppleEthernetMLX5Cmd::exec(this[38], v6, 16, v5, 16);
  if (v2)
  {
    v3 = v2;
    IOLog("mlx5: destroy_psv cmd exec failed %d\n", v2);
  }

  else if (LOBYTE(v5[0]))
  {
    IOLog("mlx5: destroy_psv bad status %d\n", LOBYTE(v5[0]));
    return AppleEthernetMLX5Cmd::statusToErr(v5);
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::reportLinkStatus(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, int a2, int a3)
{
  v3 = *(*(this + 2) + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZN39DriverKit_AppleEthernetMLX5_NetIf_IVars16reportLinkStatusEjj_block_invoke;
  v5[3] = &__block_descriptor_tmp_4;
  v5[4] = this;
  v6 = a2;
  v7 = a3;
  IODispatchQueue::DispatchAsync(v3, v5);
  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::reportLinkQuality(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, int a2)
{
  v2 = *(*(this + 2) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZN39DriverKit_AppleEthernetMLX5_NetIf_IVars17reportLinkQualityEj_block_invoke;
  v4[3] = &__block_descriptor_tmp_1;
  v4[4] = this;
  v5 = a2;
  IODispatchQueue::DispatchAsync(v2, v4);
  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::updateCarrier(AppleEthernetMLX5Cmd ***this)
{
  v2 = this + 4608;
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d EthInterface::updateCarrier<==\n", "updateCarrier", 337);
  }

  VPortState = DriverKit_AppleEthernetMLX5_IVars::queryVPortState(this[2], 0, 0);
  v4 = v2[391];
  if (VPortState == 1)
  {
    v2[391] = v4 | 2;
    if (DriverKit_AppleEthernetMLX5_IVars::queryPortPTYS(this[2], v16, 64, 4))
    {
      v2[392] = 32;
      return IOLog("mlx5: %s: query port ptys failed: 0x%x\n");
    }

    else
    {
      v6 = *(this[2] + 28763);
      v7 = 32;
      if ((v6 & 0x200000) == 0)
      {
        v7 = 36;
      }

      v8 = *&v16[v7];
      v9 = __clz(bswap32(v8)) ^ 0x1F;
      if (v8)
      {
        v10 = v9;
      }

      else
      {
        v10 = -1;
      }

      if ((v6 & 0x200000) != 0)
      {
        v12 = (&ext_mode_table + 144 * v10);
        if (v12[4 * (v17 & 0xF)])
        {
          v11 = &v12[4 * (v17 & 0xF)];
        }

        else
        {
          v11 = v12;
        }
      }

      else
      {
        v11 = &mode_table[4 * v10];
      }

      v13 = *v11;
      if (!*v11)
      {
        IOLog("mlx5: Could not find operational media subtype\n");
      }

      v14 = *(v11 + 1);
      v15 = v13 | 0x100020;
      v2[392] = v13 | 0x100020;
      if (v2[389])
      {
        v15 = v13 | 0x500020;
        v2[392] = v13 | 0x500020;
      }

      if (gMLX5DebugFlags)
      {
        IOLog("mlx5:%s:%d updateCarrier: setting Link Mode to %x, baud rate %lld\n", "updateCarrier", 379, v15, v14);
        v15 = v2[392];
      }

      DriverKit_AppleEthernetMLX5_NetIf_IVars::reportLinkStatus(this, v2[391], v15);
      result = DriverKit_AppleEthernetMLX5_NetIf_IVars::reportLinkQuality(this, 100);
      if (gMLX5DebugFlags)
      {
        return IOLog("mlx5:%s:%d EthInterface::updateCarrier(up)==>\n");
      }
    }
  }

  else
  {
    v2[391] = v4 & 0xFFFFFFFD;
    v2[392] = 32;
    DriverKit_AppleEthernetMLX5_NetIf_IVars::reportLinkStatus(this, v4 & 0xFFFFFFFD, 32);
    result = DriverKit_AppleEthernetMLX5_NetIf_IVars::reportLinkQuality(this, -2);
    if (gMLX5DebugFlags)
    {
      return IOLog("mlx5:%s:%d EthInterface::updateCarrier(down)==>\n");
    }
  }

  return result;
}

void DriverKit_AppleEthernetMLX5_NetIf_IVars::createRQ(uint64_t a1)
{
  if (*(a1 + 38394) == 2)
  {
    v1 = *(a1 + 38442) << *(a1 + 38444);
  }

  *(a1 + 38393);
  operator new[]();
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::destroyRQ(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    operator delete[]();
  }

  *(a2 + 32) = 0;
  if (*(a2 + 24))
  {
    operator delete[]();
  }

  result = DriverKit_AppleEthernetMLX5_IVars::destroyWQ(*(a1 + 16), a2 + 264);
  *(a2 + 304) = 0;
  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::enableRQ(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = *(a2 + 264);
  v7 = (((*(v6 + 24) + 0x3FFFLL) >> 11) & 0xFFFFFFF8) + 272;
  v8 = (&v17 - ((v7 + 15) & 0x1FFFFFFF0));
  bzero(v8, v7);
  v9 = a3[13];
  *(v8 + 14) = a3[12];
  *(v8 + 15) = v9;
  *(v8 + 16) = a3[14];
  v10 = a3[9];
  *(v8 + 10) = a3[8];
  *(v8 + 11) = v10;
  v11 = a3[11];
  *(v8 + 12) = a3[10];
  *(v8 + 13) = v11;
  v12 = a3[5];
  *(v8 + 6) = a3[4];
  *(v8 + 7) = v12;
  v13 = a3[7];
  *(v8 + 8) = a3[6];
  *(v8 + 9) = v13;
  v14 = a3[1];
  *(v8 + 2) = *a3;
  *(v8 + 3) = v14;
  v15 = a3[3];
  *(v8 + 4) = a3[2];
  *(v8 + 5) = v15;
  *(v8 + 10) = bswap32(*(a2 + 128) & 0xFFFFFF | (*(v8 + 10) << 24));
  *(v8 + 8) = v8[4] & 0xFFFF0BFF | 0x400;
  *(v8 + 44) = *(a1 + 38440);
  *(v8 + 28) = v8[14] & 0xFFE0FFFF | 0x20000;
  v8[12] = bswap64(*(a2 + 288));
  AppleEthernetMLX5DMABuf::fillPageArray(v6, v8 + 34);
  return DriverKit_AppleEthernetMLX5_IVars::createRQ(*(a1 + 16), v8, v7, (a2 + 304));
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::modifyRQ(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  DWORD2(v5[0]) = bswap32(*(a2 + 304) & 0xFFFFFF | (a3 << 28));
  LODWORD(v6) = (a4 & 0xF) << 12;
  return DriverKit_AppleEthernetMLX5_IVars::modifyRQ(*(a1 + 16), v5, 272);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::disableRQ(uint64_t result, uint64_t a2)
{
  if (*(a2 + 304))
  {
    v3 = result;
    IOUserNetworkPacketQueue::SetEnable(*(a2 + 48), 0, 0);
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
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    DWORD2(v4[0]) = bswap32(*(a2 + 304) & 0xFFFFFF | 0x10000000);
    LODWORD(v5) = 12288;
    return DriverKit_AppleEthernetMLX5_IVars::modifyRQ(*(v3 + 16), v4, 272);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::closeRQ(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 304);
  if (v4)
  {
    DriverKit_AppleEthernetMLX5_IVars::destroyRQ(*(a1 + 16), v4);
    DriverKit_AppleEthernetMLX5_NetIf_IVars::drainRQ(a1, a2);
    IOUserNetworkPacketQueue::SetEnable(*(a2 + 56), 0, 0);
  }

  return DriverKit_AppleEthernetMLX5_NetIf_IVars::destroyRQ(a1, a2);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::createSQ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = DriverKit_AppleEthernetMLX5_IVars::allocMapUAR(*(a1 + 16), (a4 + 448));
  if (!result)
  {
    *(a4 + 128) = 0;
    *a4 = 0;
    result = DriverKit_AppleEthernetMLX5_IVars::createWQCyc(*(a1 + 16), a3 + 48, a4 + 424, a4 + 472);
    if (!result)
    {
      *(a4 + 432) += 4;
      v8 = *(a4 + 440) + 1;
      if (gMLX5DebugFlags)
      {
        IOLog("mlx5:%s:%d sq total # of entries is %d\n", "createSQ", 596, *(a4 + 440) + 1);
      }

      operator new[]();
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::destroySQ(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 384))
  {
    operator delete[]();
  }

  *(a2 + 384) = 0;
  DriverKit_AppleEthernetMLX5_IVars::destroyWQ(*(a1 + 16), a2 + 472);
  result = DriverKit_AppleEthernetMLX5_IVars::freeUnmapUAR(*(a1 + 16), (a2 + 448));
  *(a2 + 464) = 0;
  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::enableSQ(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  v8 = *(a2 + 472);
  v9 = (((*(v8 + 24) + 0x3FFFLL) >> 11) & 0xFFFFFFF8) + 272;
  v10 = (&v21 - ((v9 + 15) & 0x1FFFFFFF0));
  bzero(v10, v9);
  v11 = a3[13];
  *(v10 + 14) = a3[12];
  *(v10 + 15) = v11;
  *(v10 + 16) = a3[14];
  v12 = a3[9];
  *(v10 + 10) = a3[8];
  *(v10 + 11) = v12;
  v13 = a3[11];
  *(v10 + 12) = a3[10];
  *(v10 + 13) = v13;
  v14 = a3[5];
  *(v10 + 6) = a3[4];
  *(v10 + 7) = v14;
  v15 = a3[7];
  *(v10 + 8) = a3[6];
  *(v10 + 9) = v15;
  v16 = a3[3];
  *(v10 + 4) = a3[2];
  *(v10 + 5) = v16;
  v17 = a3[1];
  v18 = *(v10 + 20);
  v19 = a4 & 0xFFFFFF | (*(v10 + 19) << 24);
  *(v10 + 2) = *a3;
  *(v10 + 3) = v17;
  *(v10 + 10) = bswap32(*(a2 + 256) & 0xFFFFFF | (*(v10 + 10) << 24));
  *(v10 + 32) = 256;
  *(v10 + 8) = v10[4] & 0xFFFF0FEF | 0x10;
  *(v10 + 19) = bswap32(v19);
  *(v10 + 20) = v18 & 0xFFFFFF0F | 0x10;
  *(v10 + 23) = bswap32(*(a2 + 448) & 0xFFFFFF | (*(v10 + 23) << 24));
  *(v10 + 28) = v10[14] & 0xFFE0FFFF | 0x20000;
  v10[12] = bswap64(*(a2 + 496));
  AppleEthernetMLX5DMABuf::fillPageArray(v8, v10 + 34);
  return DriverKit_AppleEthernetMLX5_IVars::createSQ(*(a1 + 16), v10, v9, (a2 + 464));
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::modifySQ(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  DWORD2(v5[0]) = bswap32(*(a2 + 464) & 0xFFFFFF | (a3 << 28));
  LODWORD(v6) = (a4 & 0xF) << 12;
  return DriverKit_AppleEthernetMLX5_IVars::modifySQ(*(a1 + 16), v5, 272);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::disableSQ(uint64_t result, uint64_t a2)
{
  if (*(a2 + 464))
  {
    v3 = result;
    IOUserNetworkPacketQueue::SetEnable(*(a2 + 400), 0, 0);
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
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    DWORD2(v4[0]) = bswap32(*(a2 + 464) & 0xFFFFFF | 0x10000000);
    LODWORD(v5) = 12288;
    return DriverKit_AppleEthernetMLX5_IVars::modifySQ(*(v3 + 16), v4, 272);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::openSQ(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  result = DriverKit_AppleEthernetMLX5_NetIf_IVars::createSQ(a1, a2, a3, a4);
  if (!result)
  {
    result = DriverKit_AppleEthernetMLX5_NetIf_IVars::enableSQ(a1, a4, a3, *(a1 + 560));
  }

  v8 = *(a4 + 464);
  if (!v8)
  {
    DriverKit_AppleEthernetMLX5_NetIf_IVars::openSQ();
  }

  if (!result)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    memset(v9, 0, sizeof(v9));
    DWORD2(v9[0]) = bswap32(v8 & 0xFFFFFF);
    LODWORD(v10) = 4096;
    result = DriverKit_AppleEthernetMLX5_IVars::modifySQ(*(a1 + 16), v9, 272);
    if (!result)
    {
      IOUserNetworkPacketQueue::SetEnable(*(a4 + 408), 1, 0);
      IOUserNetworkPacketQueue::SetEnable(*(a4 + 400), 1, 0);
      return 0;
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::closeSQ(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 464))
  {
    DriverKit_AppleEthernetMLX5_NetIf_IVars::drainSQ(a1, a2);
    IOUserNetworkPacketQueue::SetEnable(*(a2 + 408), 0, 0);
    DriverKit_AppleEthernetMLX5_IVars::destroySQ(*(a1 + 16), *(a2 + 464));
  }

  return DriverKit_AppleEthernetMLX5_NetIf_IVars::destroySQ(a1, a2);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::createCQ(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  result = DriverKit_AppleEthernetMLX5_IVars::createCQWQ(*(a1 + 16), a2, a3 + 48, a3 + 80);
  if (!result)
  {
    v8 = *(a3 + 88);
    *(a3 + 8) = v8;
    v8[1] = 0;
    *(a3 + 16) = v8 + 1;
    *v8 = 0;
    *(a3 + 24) = a4;
    *(a3 + 32) = a1 + 32;
    v9 = *(a3 + 64);
    if (v9 != -1)
    {
      v10 = *(a3 + 73);
      v11 = *(a3 + 48) + 63;
      v12 = vdupq_n_s32(v9);
      v13 = ~v9 & 0xFFFFFFF0;
      v14 = xmmword_10001EA50;
      v15 = xmmword_10001EA60;
      v16 = xmmword_10001E950;
      v17 = xmmword_10001E960;
      v18 = 15;
      v19.i64[0] = 0x1000000010;
      v19.i64[1] = 0x1000000010;
      do
      {
        v20 = vmovn_s32(vcgeq_u32(v12, v17));
        if (vuzp1_s8(v20, *v12.i8).u8[0])
        {
          *(v11 + ((v18 - 15) << v10)) = -15;
        }

        if (vuzp1_s8(v20, *&v12).i8[1])
        {
          *(v11 + ((v18 - 14) << v10)) = -15;
          *(v11 + ((v18 - 13) << v10)) = -15;
          *(v11 + ((v18 - 12) << v10)) = -15;
        }

        v21 = vmovn_s32(vcgeq_u32(v12, v16));
        if (vuzp1_s8(*&v12, v21).i32[1])
        {
          *(v11 + ((v18 - 11) << v10)) = -15;
        }

        if (vuzp1_s8(*&v12, v21).i8[5])
        {
          *(v11 + ((v18 - 10) << v10)) = -15;
        }

        if (vuzp1_s8(*&v12, v21).i8[6])
        {
          *(v11 + ((v18 - 9) << v10)) = -15;
          *(v11 + ((v18 - 8) << v10)) = -15;
        }

        v22 = vmovn_s32(vcgeq_u32(v12, v15));
        if (vuzp1_s8(v22, *v12.i8).u8[0])
        {
          *(v11 + ((v18 - 7) << v10)) = -15;
        }

        if (vuzp1_s8(v22, *&v12).i8[1])
        {
          *(v11 + ((v18 - 6) << v10)) = -15;
          *(v11 + ((v18 - 5) << v10)) = -15;
          *(v11 + ((v18 - 4) << v10)) = -15;
        }

        v23 = vmovn_s32(vcgeq_u32(v12, v14));
        if (vuzp1_s8(*&v12, v23).i32[1])
        {
          *(v11 + ((v18 - 3) << v10)) = -15;
        }

        if (vuzp1_s8(*&v12, v23).i8[5])
        {
          *(v11 + ((v18 - 2) << v10)) = -15;
        }

        if (vuzp1_s8(*&v12, v23).i8[6])
        {
          *(v11 + ((v18 - 1) << v10)) = -15;
          *(v11 + (v18 << v10)) = -15;
        }

        v17 = vaddq_s32(v17, v19);
        v16 = vaddq_s32(v16, v19);
        v15 = vaddq_s32(v15, v19);
        v14 = vaddq_s32(v14, v19);
        v18 += 16;
      }

      while (v13 + v18 != 15);
    }

    return 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::enableCQ(uint64_t a1, unsigned int *a2, _OWORD *a3, int a4)
{
  v8 = *(a2 + 10);
  v9 = (((*(v8 + 24) + 0x3FFFLL) >> 11) & 0xFFFFFFF8) + 272;
  v10 = (&v18 - ((v9 + 15) & 0x1FFFFFFF0));
  bzero(v10, v9);
  v11 = a3[1];
  *(v10 + 1) = *a3;
  *(v10 + 2) = v11;
  v12 = a3[3];
  *(v10 + 3) = a3[2];
  *(v10 + 4) = v12;
  AppleEthernetMLX5DMABuf::fillPageArray(v8, v10 + 34);
  *(v10 + 39) = *(DriverKit_AppleEthernetMLX5_IVars::vectorToEQ(*(a1 + 16), a4) + 77);
  *(v10 + 7) = bswap32(**(a2 + 4) & 0xFFFFFF | (*(v10 + 7) << 24));
  *(v10 + 10) = v10[5] & 0xFFFFFFE0 | 2;
  v10[9] = bswap64(*(a2 + 13));
  CQ = DriverKit_AppleEthernetMLX5_IVars::createCQ(*(a1 + 16), a2, v10, v9);
  if (!*a2)
  {
    DriverKit_AppleEthernetMLX5_NetIf_IVars::enableCQ();
  }

  v14 = CQ;
  if (!CQ)
  {
    v15 = *(*(a2 + 4) + 8);
    v16 = a2[17] & 0xFFFFFF | ((a2[11] & 3) << 28);
    **(a2 + 2) = bswap32(v16);
    __dmb(0xEu);
    IOPCIDevice::MemoryWrite64(MLX5_pciDev, 0, v15 + 32, bswap64(*a2 | (v16 << 32)));
  }

  return v14;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::disableCQ(uint64_t result, unsigned int *a2)
{
  if (*a2)
  {
    result = DriverKit_AppleEthernetMLX5_IVars::destroyCQ(*(result + 16), a2);
  }

  *a2 = 0;
  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::openCQ(uint64_t a1, _DWORD *a2, unsigned int *a3, uint64_t a4, int a5)
{
  result = DriverKit_AppleEthernetMLX5_NetIf_IVars::createCQ(a1, a2, a3, a4);
  if (!result)
  {

    return DriverKit_AppleEthernetMLX5_NetIf_IVars::enableCQ(a1, a3, a2, a5);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::closeCQ(uint64_t a1, unsigned int *a2)
{
  if (*a2)
  {
    DriverKit_AppleEthernetMLX5_IVars::destroyCQ(*(a1 + 16), a2);
  }

  *a2 = 0;
  v4 = *(a1 + 16);

  return DriverKit_AppleEthernetMLX5_IVars::destroyWQ(v4, (a2 + 20));
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::openChannel(uint64_t a1, unsigned int *a2, uint64_t a3, int a4)
{
  a2[224] = bswap32(*(a1 + 536));
  result = DriverKit_AppleEthernetMLX5_NetIf_IVars::openCQ(a1, (a3 + 547), a2 + 160, DriverKit_AppleEthernetMLX5_NetIf_IVars::txCQComp, a4);
  if (!result)
  {
    result = DriverKit_AppleEthernetMLX5_NetIf_IVars::openCQ(a1, (a3 + 482), a2 + 32, DriverKit_AppleEthernetMLX5_NetIf_IVars::rxCQComp, a4);
    if (!result)
    {
      result = DriverKit_AppleEthernetMLX5_NetIf_IVars::openSQ(a1, a2, (a3 + 241), (a2 + 96));
      if (!result)
      {

        DriverKit_AppleEthernetMLX5_NetIf_IVars::openRQ(a1);
      }
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::disableChannel(uint64_t a1, uint64_t a2)
{
  DriverKit_AppleEthernetMLX5_NetIf_IVars::disableRQ(a1, a2);

  return DriverKit_AppleEthernetMLX5_NetIf_IVars::disableSQ(a1, a2 + 384);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::closeChannel(uint64_t a1, uint64_t a2)
{
  DriverKit_AppleEthernetMLX5_NetIf_IVars::closeRQ(a1, a2);
  DriverKit_AppleEthernetMLX5_NetIf_IVars::closeSQ(a1, a2 + 384);
  DriverKit_AppleEthernetMLX5_NetIf_IVars::closeCQ(a1, (a2 + 128));

  return DriverKit_AppleEthernetMLX5_NetIf_IVars::closeCQ(a1, (a2 + 640));
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::buildChannelParam(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 38394);
  if (v2 == 2)
  {
    v3 = (1536 - (__clz(*(result + 38442)) << 8)) & 0xF00;
    if (*(result + 38442))
    {
      v4 = v3;
    }

    else
    {
      v4 = 1536;
    }

    a2[21] = bswap32((v4 | bswap32(a2[21] & 0xF8F0FFFF)) & 0xFFFFFFF8 | (*(result + 38444) + 2) & 7);
  }

  a2[12] = bswap32(bswap32(a2[12] & 0xFFFFFF09) | (v2 << 28) | 0x2000000);
  v5 = *(result + 38393);
  v6 = v5 & 0x1F;
  a2[20] = a2[20] & 0xE0FFF0FF | (v6 << 24) | 0x500;
  a2[14] = bswap32(*(result + 512) & 0xFFFFFF | (a2[14] << 24));
  v7 = *(result + 38392);
  *(a2 + 321) = *(a2 + 321) & 0xE0FFF0FF | ((v7 & 0x1F) << 24) | 0x600;
  *(a2 + 297) = bswap32(*(result + 512) & 0xFFFFFF | (*(a2 + 297) << 24));
  if (*(result + 38411) == 1)
  {
    *(a2 + 482) = *(a2 + 482) & 0xFF8FFFFF | 0x500000;
  }

  if (v2 == 2)
  {
    v8 = __clz(*(result + 38442));
    if (*(result + 38442))
    {
      v9 = ~v8;
    }

    else
    {
      v9 = 31;
    }

    v6 = (v9 + v5) & 0x1F;
  }

  v10 = v7 & 0x1F;
  v11 = *(a2 + 494) & 0xFFFFFFE0 | v6;
  *(a2 + 494) = v11;
  *(a2 + 498) = bswap32((*(a2 + 498) << 24) & 0xF0000000 | ((*(result + 38400) & 0xFFF) << 16) | *(result + 38402));
  if (*(result + 38398))
  {
    v12 = *(a2 + 482) & 0xFF7FFEFF | (*(*(result + 16) + 380) << 11) & 0x800000;
  }

  else
  {
    v12 = *(a2 + 482) & 0xFF7FFEFF;
  }

  *(a2 + 482) = v12;
  *(a2 + 494) = bswap32(*(result + 32) & 0xFFFFFF | (v11 << 24));
  v13 = *(a2 + 559) & 0xFFFFFFE0 | v10;
  *(a2 + 559) = v13;
  *(a2 + 563) = bswap32((*(a2 + 563) << 24) & 0xF0000000 | ((*(result + 38404) & 0xFFF) << 16) | *(result + 38406));
  if (*(result + 38399))
  {
    v14 = *(a2 + 547) & 0xFF7FFEFF | (*(*(result + 16) + 380) << 11) & 0x800000;
  }

  else
  {
    v14 = *(a2 + 547) & 0xFF7FFEFF;
  }

  *(a2 + 547) = v14;
  *(a2 + 559) = bswap32(*(result + 32) & 0xFFFFFF | (v13 << 24));
  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::openChannels(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  bzero(v7, 0x264uLL);
  DriverKit_AppleEthernetMLX5_NetIf_IVars::buildChannelParam(this, v7);
  if (!*(this + 19198))
  {
    return 3758097085;
  }

  v2 = 0;
  v3 = 0;
  while (1)
  {
    v4 = DriverKit_AppleEthernetMLX5_IVars::vectorToEQ(*(this + 2), v3 + *(this + 2));
    v5 = *(this + 69) + v2;
    *(v5 + 904) = v4;
    result = DriverKit_AppleEthernetMLX5_NetIf_IVars::openChannel(this, v5, v7, v3 + *(this + 2));
    if (result)
    {
      break;
    }

    ++v3;
    v2 += 1024;
    if (v3 >= *(this + 19198))
    {
      return 0;
    }
  }

  return result;
}

void DriverKit_AppleEthernetMLX5_NetIf_IVars::closeChannels(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  if (*(this + 19198))
  {
    v2 = 0;
    v3 = 384;
    do
    {
      v4 = *(this + 69) + v3;
      DriverKit_AppleEthernetMLX5_NetIf_IVars::disableRQ(this, v4 - 384);
      DriverKit_AppleEthernetMLX5_NetIf_IVars::disableSQ(this, v4);
      ++v2;
      v3 += 1024;
    }

    while (v2 < *(this + 19198));
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(MLX5_pciDev, 0, 0, &readData);
  if (readData != -1)
  {
    IOSleep(0x64uLL);
  }

  if (*(this + 19198))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      DriverKit_AppleEthernetMLX5_NetIf_IVars::closeChannel(this, *(this + 69) + v5);
      ++v6;
      v5 += 1024;
    }

    while (v6 < *(this + 19198));
  }
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::openTIS(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  memset(v2, 0, sizeof(v2));
  DWORD1(v3) = bswap32(*(this + 129) & 0xFFFFFF);
  return DriverKit_AppleEthernetMLX5_IVars::createTIS(*(this + 2), v2, 192, this + 140);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::openRQT(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  v2 = *(this + 19208);
  v3 = 1 << v2;
  v4 = ((4 << v2) + 272);
  v5 = &v16 - ((v4 + 15) & 0x1FFFFFFF0);
  bzero(v5, v4);
  *(v5 + 52) = vorr_s8(vand_s8(*(v5 + 52), 0xFFFF0000FFFFLL), vdup_n_s32(bswap32((1 << v2))));
  if (v2 != 31)
  {
    v6 = bswap32(*(this + 108));
    if (v3 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v3;
    }

    v8 = (v7 + 3) & 0xFFFFFFFC;
    v9 = vdupq_n_s64(v7 - 1);
    v10 = xmmword_10001E9E0;
    v11 = xmmword_10001E9F0;
    v12 = (v5 + 284);
    v13 = vdupq_n_s64(4uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        *(v12 - 3) = v6;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        *(v12 - 2) = v6;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
      {
        *(v12 - 1) = v6;
        *v12 = v6;
      }

      v10 = vaddq_s64(v10, v13);
      v11 = vaddq_s64(v11, v13);
      v12 += 4;
      v8 -= 4;
    }

    while (v8);
  }

  return DriverKit_AppleEthernetMLX5_IVars::createRQT(*(this + 2), v5, (4 << v2) + 272, this + 141);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::activateRQT(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  v2 = this + 36864;
  v3 = *(this + 19208);
  v4 = 1 << v3;
  v5 = ((4 << v3) + 272);
  v6 = &v12 - ((v5 + 15) & 0x1FFFFFFF0);
  bzero(v6, v5);
  *(v6 + 29) = bswap32(1 << v3) >> 16;
  *(v6 + 5) |= 0x1000000u;
  if (v3 != 31)
  {
    v7 = 0;
    v8 = *(v2 + 766);
    v9 = *(this + 69);
    if (v4 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v4;
    }

    do
    {
      *&v6[4 * v7 + 272] = bswap32(*(v9 + ((v7 % v8) << 10) + 304));
      ++v7;
    }

    while (v10 != v7);
  }

  return DriverKit_AppleEthernetMLX5_IVars::modifyRQT(*(this + 2), *(this + 141), v6, (4 << v3) + 272);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::closeRQT(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  v4 = 0;
  v3 = 6153;
  HIDWORD(v4) = bswap32(*(this + 141) & 0xFFFFFF);
  v5 = 0;
  result = AppleEthernetMLX5Cmd::exec(*(*(this + 2) + 304), &v3, 16, v2, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v2);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::deactivateRQT(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  v2 = *(this + 19208);
  v3 = 1 << v2;
  v4 = ((4 << v2) + 272);
  v5 = (&v16 - ((v4 + 15) & 0x1FFFFFFF0));
  bzero(v5, v4);
  *(v5 + 29) = bswap32(1 << v2) >> 16;
  v5[5] |= 0x1000000u;
  if (v2 != 31)
  {
    v6 = bswap32(*(this + 108));
    if (v3 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v3;
    }

    v8 = (v7 + 3) & 0xFFFFFFFC;
    v9 = vdupq_n_s64(v7 - 1);
    v10 = xmmword_10001E9E0;
    v11 = xmmword_10001E9F0;
    v12 = v5 + 71;
    v13 = vdupq_n_s64(4uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        *(v12 - 3) = v6;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        *(v12 - 2) = v6;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
      {
        *(v12 - 1) = v6;
        *v12 = v6;
      }

      v10 = vaddq_s64(v10, v13);
      v11 = vaddq_s64(v11, v13);
      v12 += 4;
      v8 -= 4;
    }

    while (v8);
  }

  return DriverKit_AppleEthernetMLX5_IVars::modifyRQT(*(this + 2), *(this + 141), v5, (4 << v2) + 272);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::openDropRQ(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  memset(v4, 0, sizeof(v4));
  HIDWORD(v17[0]) = bswap32(*(this + 8) & 0xFFFFFF);
  result = DriverKit_AppleEthernetMLX5_NetIf_IVars::openCQ(this, v17, this + 64, DriverKit_AppleEthernetMLX5_NetIf_IVars::rxDropCQComp, *(this + 2));
  if (!result)
  {
    LODWORD(v6) = 1280;
    v3 = bswap32(*(this + 128) & 0xFFFFFF);
    LODWORD(v5[0]) = 2;
    DWORD2(v5[0]) = v3;
    result = DriverKit_AppleEthernetMLX5_IVars::createWQLL(*(this + 2), v5, this + 128, this + 392);
    if (!result)
    {
      DWORD2(v4[0]) = bswap32(*(this + 64) & 0xFFFFFF | (BYTE8(v4[0]) << 24));
      result = DriverKit_AppleEthernetMLX5_NetIf_IVars::enableRQ(this, this + 128, v4);
      if (!result)
      {
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
        *v19 = 0u;
        *&v19[8] = bswap32(*(this + 108) & 0xFFFFFF);
        LODWORD(v21) = 4096;
        return DriverKit_AppleEthernetMLX5_IVars::modifyRQ(*(this + 2), v19, 272);
      }
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::closeDropRQ(uint64_t this)
{
  if (*(this + 256))
  {
    v1 = this;
    v2 = *(this + 432);
    if (v2)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      v4 = 0u;
      memset(v3, 0, sizeof(v3));
      DWORD2(v3[0]) = bswap32(v2 & 0xFFFFFF | 0x10000000);
      LODWORD(v4) = 12288;
      DriverKit_AppleEthernetMLX5_IVars::modifyRQ(*(this + 16), v3, 272);
      DriverKit_AppleEthernetMLX5_IVars::destroyRQ(*(v1 + 16), *(v1 + 432));
    }

    DriverKit_AppleEthernetMLX5_IVars::destroyWQ(*(v1 + 16), v1 + 392);
    *(v1 + 432) = 0;
    return DriverKit_AppleEthernetMLX5_NetIf_IVars::closeCQ(v1, (v1 + 256));
  }

  return this;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::buildTIRCtxLRO(uint64_t this, unsigned __int8 *a2)
{
  if (*(this + 38410) == 1)
  {
    v2 = *(a2 + 4) & 0xFFF0FFFF | 0x30000;
    *(a2 + 4) = v2;
    v3 = ((*(this + 38412) - 256) >> 8) | bswap32(v2 & 0xFFFFFF);
    *(a2 + 4) = bswap32(v3);
    *(a2 + 4) = bswap32(v3 & 0xF00003FF | (bswap32(*(*(this + 16) + 4466)) >> 4));
  }

  return this;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::buildTIRCtx(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, unsigned __int8 *a2, int a3)
{
  *(a2 + 9) = bswap32(*(this + 129) & 0xFFFFFF | (*(a2 + 9) << 24));
  result = DriverKit_AppleEthernetMLX5_NetIf_IVars::buildTIRCtxLRO(this, a2);
  v7 = *(a2 + 1) & 0xFFFFFF0F;
  if (a3 == 10)
  {
    *(a2 + 1) = v7;
    *(a2 + 7) = bswap32(*(*(this + 69) + 304) & 0xFFFFFF | (*(a2 + 7) << 24));
    return result;
  }

  *(a2 + 1) = v7 | 0x10;
  v8 = *(a2 + 9) & 0xFFFFFF0F | 0x20;
  *(a2 + 8) = bswap32(*(this + 141) & 0xFFFFFF | (*(a2 + 8) << 24) | 0x80000000);
  *(a2 + 9) = v8;
  *(a2 + 40) = xmmword_10001EA70;
  *(a2 + 56) = xmmword_10001EA80;
  *(a2 + 9) = 0xFC1FDC2A063C25F3;
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 != 5)
      {
LABEL_17:
        v9 = *(a2 + 20) >> 6;
        v10 = 19;
LABEL_23:
        v11 = bswap32(v10 & 0xBFFFFFFF | ((v9 & 1) << 30));
        goto LABEL_24;
      }
    }

    else if (a3 != 7)
    {
      if (a3 == 8)
      {
        v9 = *(a2 + 20) >> 6;
        v10 = 3;
      }

      else
      {
        if (a3 != 9)
        {
          return result;
        }

        v9 = *(a2 + 20) >> 6;
        v10 = -2147483645;
      }

      goto LABEL_23;
    }

    v9 = *(a2 + 20) >> 6;
    v10 = -2147483629;
    goto LABEL_23;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      v11 = 251658368;
    }

    else
    {
      v11 = 251658240;
    }
  }

  else if (a3 == 2)
  {
    v11 = 251658304;
  }

  else
  {
    if (a3 != 3)
    {
      goto LABEL_17;
    }

    v11 = 251658432;
  }

LABEL_24:
  *(a2 + 20) = v11;
  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::openTIR(AppleEthernetMLX5Cmd ***this, int a2)
{
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  DriverKit_AppleEthernetMLX5_NetIf_IVars::buildTIRCtx(this, v6, a2);
  return DriverKit_AppleEthernetMLX5_IVars::createTIR(this[2], v5, 272, this + a2 + 142);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::openTIRs(AppleEthernetMLX5Cmd ***this)
{
  v2 = 0;
  v3 = (this + 71);
  for (i = (this + 71); ; ++i)
  {
    memset(v9, 0, sizeof(v9));
    memset(v8, 0, sizeof(v8));
    DriverKit_AppleEthernetMLX5_NetIf_IVars::buildTIRCtx(this, v9, v2);
    TIR = DriverKit_AppleEthernetMLX5_IVars::createTIR(this[2], v8, 272, i);
    if (TIR)
    {
      break;
    }

    if (++v2 == 11)
    {
      return TIR;
    }
  }

  if (v2)
  {
    for (j = 0; j != v2; ++j)
    {
      DriverKit_AppleEthernetMLX5_IVars::destroyTIR(this[2], *&v3[4 * j]);
    }
  }

  return TIR;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::closeTIRs(AppleEthernetMLX5Cmd ***this)
{
  v2 = 0;
  v3 = (this + 71);
  do
  {
    result = DriverKit_AppleEthernetMLX5_IVars::destroyTIR(this[2], *&v3[v2]);
    v2 += 4;
  }

  while (v2 != 44);
  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::setDevPortMTU(AppleEthernetMLX5Cmd ***this, int a2)
{
  result = DriverKit_AppleEthernetMLX5_IVars::setPortMTU(this[2], a2 + 22);
  if (!result)
  {
    v5 = 0;
    result = DriverKit_AppleEthernetMLX5_IVars::queryPortOperMTU(this[2], &v5);
    if (!result)
    {
      if (v5 - 22 < a2)
      {
        IOLog("mlx5: Port MTU %d is smaller than ifp mtu %d\n");
        return 3758096385;
      }

      if (v5 - 22 > a2)
      {
        IOLog("mlx5: Port MTU %d is bigger than ifp mtu %d\n");
        return 3758096385;
      }

      return 0;
    }
  }

  return result;
}

void DriverKit_AppleEthernetMLX5_NetIf_IVars::startInterface(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  v2 = this + 36864;
  *(this + 2) = this - 123648;
  *(this + 38428) = 0x50002000000001;
  *(this + 19196) = 2570;
  v3 = *(this - 30817);
  if ((v3 & 0x1000) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = 16;
  }

  *(this + 19200) = v4;
  *(this + 38398) = (v3 & 0x1000) != 0;
  *(this + 38402) = 1048608;
  *(this + 19203) = 32;
  if ((gMLX5DebugFlags & 0x400) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(this - 30844);
  }

  v6 = 65 - __clz(v5 - 1);
  if (v5 == 1)
  {
    v6 = 1;
  }

  if (v6 <= 8)
  {
    v7 = 7;
  }

  else
  {
    v7 = v6 - 1;
  }

  *(this + 19208) = v7;
  *(this + 19198) = v5;
  IOLog("mlx5::startInterface num_channels %u\n", v5);
  v8 = gMLX5DebugFlags;
  v2[1546] = (gMLX5DebugFlags & 0x100) == 0;
  *(v2 + 387) = 2048;
  v9 = *(this + 2);
  v2[1547] = *(v9 + 495) & 1;
  if ((v8 & 0x4000) != 0)
  {
    v2[1530] = 0;
  }

  else
  {
    v10 = *(v9 + 376) >> 5;
    v2[1530] = v10 & 2;
    if ((v10 & 2) != 0)
    {
      *(v2 + 387) = 0x10000;
      v2[1529] = 3;
      v2[1580] = 8;
      *(v2 + 789) = 1024;
      IOLog("mlx5: Striding on: log_stride_sz %d, num_strides %d\n", 8, 1024);
      v8 = gMLX5DebugFlags;
    }
  }

  if ((v8 & 0x200) != 0)
  {
    v11 = 0;
  }

  else if (*(v2 + 387) <= 0x800u)
  {
    v11 = 0;
  }

  else
  {
    v11 = 6291456;
  }

  *(v2 + 393) = (v11 & 0xEFFFFFFF | (((v8 >> 8) & 1) << 28)) ^ 0x30000007;
  v12 = *(v2 + 766);
  operator new[]();
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::getHardwareAssists(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
  if ((gMLX5DebugFlags & 0x200) != 0)
  {
    v1 = 0;
  }

  else if (*(this + 9603) <= 0x800u)
  {
    v1 = 0;
  }

  else
  {
    v1 = 6291456;
  }

  return (v1 & 0xEFFFFFFF | (((gMLX5DebugFlags >> 8) & 1) << 28)) ^ 0x30000007;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::getSupportedMediaArray(AppleEthernetMLX5Cmd ***this, unsigned int *a2, unsigned int *a3)
{
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d EthInterface::getSupportedMediaArray()<==\n", "getSupportedMediaArray", 1523);
  }

  PortPTYS = DriverKit_AppleEthernetMLX5_IVars::queryPortPTYS(this[2], v27, 64, 4);
  if (!PortPTYS)
  {
    if ((*(this[2] + 115054) & 0x20) != 0)
    {
      v15 = 0;
      v8 = 0;
      v16 = bswap32(v28);
      do
      {
        if ((v16 >> v15))
        {
          for (i = 0; i != 8; ++i)
          {
            v18 = *(&ext_mode_table + 36 * v15 + 4 * i);
            if (v18)
            {
              if (v15)
              {
                v19 = 0;
                v20 = &ext_mode_table;
                while (((v16 >> v19) & 1) == 0)
                {
LABEL_21:
                  ++v19;
                  v20 += 144;
                  if (v19 == v15)
                  {
                    goto LABEL_22;
                  }
                }

                v21 = 0;
                while (v18 != *&v20[v21])
                {
                  v21 += 16;
                  if (v21 == 128)
                  {
                    goto LABEL_21;
                  }
                }
              }

              else
              {
LABEL_22:
                v22 = v18 | 0x100020;
                v23 = v8 + 1;
                __src[v8] = v22;
                v8 += 2;
                __src[v23] = v22 | 0x400000;
              }
            }
          }
        }

        ++v15;
      }

      while (v15 != 32);
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = bswap32(v29);
      v10 = &mode_table;
      do
      {
        v12 = *v10;
        v10 += 4;
        v11 = v12;
        if (v12 && ((v9 >> v7) & 1) != 0)
        {
          v13 = v11 | 0x100020;
          v14 = v8 + 1;
          __src[v8] = v13;
          v8 += 2;
          __src[v14] = v13 | 0x400000;
        }

        ++v7;
      }

      while (v7 != 32);
    }

    __src[v8] = 32;
    if (*a3 >= v8 + 1)
    {
      v24 = v8 + 1;
    }

    else
    {
      v24 = *a3;
    }

    *a3 = v24;
    if (v24)
    {
      memcpy(a2, __src, 4 * v24);
    }

    if (gMLX5DebugFlags)
    {
      IOLog("mlx5:%s:%d EthInterface::getSupportedMediaArray()==> 0x%x\n", "getSupportedMediaArray", 1571, 0);
    }
  }

  return PortPTYS;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::getHardwareAddress(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, ether_addr *a2)
{
  v2 = *(this + 136);
  *&a2->octet[4] = *(this + 274);
  *a2->octet = v2;
  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::createMKey(DriverKit_AppleEthernetMLX5_NetIf_IVars *this)
{
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
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  HIDWORD(v6) = bswap32(*(this + 128) & 0xFFFFFF | 0x80000000);
  v1 = *(this + 2);
  v2 = bswap32(*(v1 + 340));
  if ((*(v1 + 412) & 0x2000) != 0)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = (v2 << 8) & 0x40000000;
  }

  DWORD2(v9) = v3;
  LODWORD(v6) = (v2 >> 13) & 0x400 | 0xC0000;
  DWORD1(v6) = 0xFFFFFF;
  return DriverKit_AppleEthernetMLX5_IVars::createMKey(v1, (this + 520), &v5, 272);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::stop(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, IOService *a2)
{
  if (gMLX5DebugFlags)
  {
    return IOLog("mlx5:%s:%d EthInterface::stop\n", "stop", 1386);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::setRunningState(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, uint64_t a2)
{
  MKey = a2;
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d EthInterface::setRunningState(%d)\n", "setRunningState", 1444, a2);
  }

  if (!MKey)
  {
    DriverKit_AppleEthernetMLX5_NetIf_IVars::closeRQT(this);
    goto LABEL_7;
  }

  v4 = DriverKit_AppleEthernetMLX5_IVars::vPortAllocQCounter(*(this + 2), 1, this + 19220);
  if (!v4)
  {
    MKey = DriverKit_AppleEthernetMLX5_IVars::allocMapUAR(*(this + 2), this + 8);
    if (MKey)
    {
      goto LABEL_12;
    }

    MKey = DriverKit_AppleEthernetMLX5_IVars::allocPD(*(this + 2), this + 128);
    if (MKey)
    {
LABEL_11:
      DriverKit_AppleEthernetMLX5_IVars::freeUnmapUAR(*(this + 2), this + 8);
LABEL_12:
      DriverKit_AppleEthernetMLX5_IVars::vPortDeallocQCounter(*(this + 2), 1, *(this + 19220));
      goto LABEL_13;
    }

    MKey = DriverKit_AppleEthernetMLX5_IVars::allocTransportDomain(*(this + 2), this + 129);
    if (MKey)
    {
LABEL_10:
      DriverKit_AppleEthernetMLX5_IVars::deallocPD(*(this + 2), *(this + 128));
      goto LABEL_11;
    }

    MKey = DriverKit_AppleEthernetMLX5_NetIf_IVars::createMKey(this);
    if (MKey)
    {
LABEL_9:
      DriverKit_AppleEthernetMLX5_IVars::deallocTransportDomain(*(this + 2), *(this + 129));
      goto LABEL_10;
    }

    v7 = DriverKit_AppleEthernetMLX5_NetIf_IVars::setDevPortMTU(this, 9000);
    if (v7 || (*(this + 38420) = 0x100000001, v7 = DriverKit_AppleEthernetMLX5_IVars::setPortPause(*(this + 2), 1u, 1, 1), v7) || (v7 = DriverKit_AppleEthernetMLX5_IVars::setPortStatus(*(this + 2), 1), v7))
    {
      MKey = v7;
      goto LABEL_8;
    }

    v8 = DriverKit_AppleEthernetMLX5_NetIf_IVars::openDropRQ(this);
    if (v8)
    {
      MKey = v8;
    }

    else
    {
      MKey = DriverKit_AppleEthernetMLX5_NetIf_IVars::openRQT(this);
      if (!MKey)
      {
        v5 = 1;
        goto LABEL_14;
      }
    }

LABEL_7:
    DriverKit_AppleEthernetMLX5_NetIf_IVars::closeDropRQ(this);
LABEL_8:
    DriverKit_AppleEthernetMLX5_IVars::destroyMKey(*(this + 2), this + 520);
    goto LABEL_9;
  }

  MKey = v4;
LABEL_13:
  v5 = 0;
LABEL_14:
  *(this + 6) = v5;
  return MKey;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::setInterfaceEnable(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  TIS = a2;
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d EthInterface::setInterfaceEnable(%d)\n", "setInterfaceEnable", 1485, a2);
  }

  if (!TIS)
  {
    DriverKit_AppleEthernetMLX5_NetIf_IVars::setRxMode(this, 0, a3, a4, a5, a6, a7, a8);
    *(this + 6) = 0;
    DriverKit_AppleEthernetMLX5_NetIf_IVars::delAllVlanRules(this);
    goto LABEL_10;
  }

  TIS = DriverKit_AppleEthernetMLX5_NetIf_IVars::setRunningState(this, 1);
  if (!TIS)
  {
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
    *v20 = 0u;
    v21 = 0u;
    DWORD1(v24) = bswap32(*(this + 129) & 0xFFFFFF);
    TIS = DriverKit_AppleEthernetMLX5_IVars::createTIS(*(this + 2), v20, 192, this + 140);
    if (TIS)
    {
LABEL_14:
      DriverKit_AppleEthernetMLX5_NetIf_IVars::setRunningState(this, 0);
      return TIS;
    }

    v10 = DriverKit_AppleEthernetMLX5_NetIf_IVars::openChannels(this);
    if (v10 || (v10 = DriverKit_AppleEthernetMLX5_NetIf_IVars::activateRQT(this), v10))
    {
      TIS = v10;
LABEL_13:
      DriverKit_AppleEthernetMLX5_NetIf_IVars::closeChannels(this);
      DriverKit_AppleEthernetMLX5_IVars::destroyTIS(*(this + 2), *(this + 140));
      goto LABEL_14;
    }

    TIS = DriverKit_AppleEthernetMLX5_NetIf_IVars::openTIRs(this);
    if (TIS)
    {
LABEL_12:
      DriverKit_AppleEthernetMLX5_NetIf_IVars::deactivateRQT(this);
      goto LABEL_13;
    }

    TIS = DriverKit_AppleEthernetMLX5_NetIf_IVars::createFlowSteering(this);
    if (!TIS)
    {
      DriverKit_AppleEthernetMLX5_NetIf_IVars::addAllVlanRules(this, v13, v14, v15, v16, v17, v18, v19);
    }

LABEL_10:
    DriverKit_AppleEthernetMLX5_NetIf_IVars::destroyFlowSteering(this);
    for (i = 0; i != 44; i += 4)
    {
      DriverKit_AppleEthernetMLX5_IVars::destroyTIR(*(this + 2), *(this + i + 568));
    }

    goto LABEL_12;
  }

  return TIS;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::handleChosenMedia(AppleEthernetMLX5Cmd ***this, unsigned int a2)
{
  v2 = a2;
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d EthInterface::handleChosenMedia(%x)<==\n", "handleChosenMedia", 1577, a2);
  }

  PortPTYS = DriverKit_AppleEthernetMLX5_IVars::queryPortPTYS(this[2], v26, 64, 4);
  if (!PortPTYS)
  {
    v6 = v2 & 0xF001F;
    v7 = this[2];
    v8 = *(v7 + 28763);
    if ((v8 & 0x200000) != 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = &v27;
      v12 = &qword_10001EC98;
      do
      {
        v13 = 8;
        v4 = v12;
        v14 = v12;
        do
        {
          v15 = *v14;
          v14 += 2;
          if (v15)
          {
            if (*(v4 - 2) == v6)
            {
              v16 = 1 << v9;
            }

            else
            {
              v16 = 0;
            }

            v10 |= v16;
          }

          v4 = v14;
          --v13;
        }

        while (v13);
        ++v9;
        v12 += 18;
      }

      while (v9 != 32);
    }

    else
    {
      v17 = 0;
      v10 = 0;
      v11 = &v27 + 1;
      v18 = &qword_10001EA98;
      v19 = &qword_10001EA98;
      do
      {
        v20 = *v19;
        v19 += 2;
        if (v20 && *(v18 - 2) == v6)
        {
          v10 |= 1 << v17;
        }

        ++v17;
        v18 = v19;
      }

      while (v17 != 32);
    }

    v21 = *v11;
    v22 = bswap32(v21);
    if (v6)
    {
      v22 &= v10;
      if (!v22)
      {
        IOLog("mlx5: Not supported link mode requested\n", v4);
LABEL_29:
        PortPTYS = 3758096385;
LABEL_30:
        if (gMLX5DebugFlags)
        {
          IOLog("mlx5:%s:%d EthInterface::handleChosenMedia==>0x%x\n", "handleChosenMedia", 1633, PortPTYS);
        }

        return PortPTYS;
      }
    }

    else
    {
      if (!v21)
      {
        IOLog("mlx5: Port media capability is zero\n", v4);
        goto LABEL_29;
      }

      v2 = 0x400000;
    }

    *(this + 9606) = 1;
    *(this + 9605) = (v2 >> 22) & 1;
    if (gMLX5DebugFlags)
    {
      v25 = v8;
      IOLog("mlx5:%s:%d Setting Link Mode to %x\n", "handleChosenMedia", 1624, v22);
      v8 = v25;
      v7 = this[2];
    }

    v23 = (v8 >> 21) & 1;
    DriverKit_AppleEthernetMLX5_IVars::setPortStatus(v7, 2);
    DriverKit_AppleEthernetMLX5_IVars::setPortProto(this[2], v22, 4, v23);
    DriverKit_AppleEthernetMLX5_IVars::setPortPause(this[2], 1u, *(this + 9606), *(this + 9605));
    DriverKit_AppleEthernetMLX5_IVars::setPortStatus(this[2], 1);
    PortPTYS = 0;
    goto LABEL_30;
  }

  return PortPTYS;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::setMcastAddresses(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, unsigned __int8 *a2)
{
  if (*(this + 6) == 2)
  {
    if (*(this + 4806))
    {
      operator delete[]();
    }

    operator new[]();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::setAllMulticastModeEnable(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  if (*(this + 6) == 2)
  {
    if (a2)
    {
      v8 = 512;
    }

    else
    {
      v8 = 0;
    }

    *(this + 19223) = *(this + 19223) & 0xFDFF | v8;
    DriverKit_AppleEthernetMLX5_NetIf_IVars::setRxMode(this, 1, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::setPromiscuousModeEnable(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, mlx5::FlowDestination *a8)
{
  if (*(this + 6) == 2)
  {
    if (a2)
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }

    *(this + 19223) = *(this + 19223) & 0xFEFF | v8;
    DriverKit_AppleEthernetMLX5_NetIf_IVars::setRxMode(this, 1, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf_IVars::setHardwareAssists(DriverKit_AppleEthernetMLX5_NetIf_IVars *this, int a2, int a3)
{
  result = 3758097109;
  v5 = a3 & a2;
  if ((a3 & a2 & 0x20000000) == 0)
  {
    return 3758097122;
  }

  if (((v5 >> 28) & 1) == *(this + 38410) || *(this + 6) != 2)
  {
    result = 0;
    *(this + 9609) = *(this + 9609) & ~a3 | v5;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::accessReg(AppleEthernetMLX5Cmd **this, void *a2, int a3, void *a4, int a5, unsigned int a6, unsigned int a7, int a8)
{
  v15 = a3;
  v16 = a3 + 16;
  v17 = &v21 - ((a3 + 16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(&v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  memcpy(v17 + 16, a2, v15);
  v18 = a5 + 16;
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v19, v18);
  *v17 = 1288;
  *(v17 + 3) = (a8 == 0) << 8;
  *(v17 + 3) = bswap32(a7);
  *(v17 + 5) = __rev16(a6);
  result = AppleEthernetMLX5Cmd::exec(this[38], v17, v16, v19, a5 + 16);
  if (!result)
  {
    if (!*v19 || (result = AppleEthernetMLX5Cmd::statusToErr(v19), !result))
    {
      memcpy(a4, v19 + 16, a5);
      return 0;
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryQCAMReg(AppleEthernetMLX5Cmd **this, unsigned int *a2, int a3, int a4)
{
  v10 = 0;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = bswap32(a4 | (a3 << 16));
  return DriverKit_AppleEthernetMLX5_IVars::accessReg(this, &v5, 72, a2, 72, 0x4019u, 0, 0);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryPCAMReg(AppleEthernetMLX5Cmd **this, unsigned int *a2, int a3, int a4)
{
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = bswap32(a4 | (a3 << 16));
  return DriverKit_AppleEthernetMLX5_IVars::accessReg(this, &v5, 80, a2, 80, 0x507Fu, 0, 0);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryMCAMReg(AppleEthernetMLX5Cmd **this, unsigned int *a2, int a3, int a4)
{
  v10 = 0;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = bswap32(a4 | (a3 << 16));
  return DriverKit_AppleEthernetMLX5_IVars::accessReg(this, &v5, 72, a2, 72, 0x907Fu, 0, 0);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryPortPTYS(AppleEthernetMLX5Cmd **this, unsigned __int8 *a2, int a3, char a4)
{
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  v6 = 0u;
  v5 = bswap32(a4 & 7 | 0x10000);
  return DriverKit_AppleEthernetMLX5_IVars::accessReg(this, &v5, 64, a2, a3, 0x5004u, 0, 0);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryPortProtoCap(AppleEthernetMLX5Cmd **this, unsigned int *a2, char a3)
{
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  v7 = 0u;
  v6 = bswap32(a3 & 7 | 0x10000);
  result = DriverKit_AppleEthernetMLX5_IVars::accessReg(this, &v6, 64, v5, 64, 0x5004u, 0, 0);
  if (!result)
  {
    *a2 = bswap32(v5[3]);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::setPortProto(AppleEthernetMLX5Cmd **this, unsigned int a2, char a3, int a4)
{
  memset(v11, 0, sizeof(v11));
  v10 = 0u;
  v9 = 0u;
  v8 = bswap32(a3 & 7 | 0x10000);
  v4 = bswap32(a2);
  v5 = 24;
  if (a4)
  {
    v5 = 20;
  }

  *(&v8 + v5) = v4;
  return DriverKit_AppleEthernetMLX5_IVars::accessReg(this, &v8, 64, &v7, 64, 0x5004u, 0, 1);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::setPortStatus(AppleEthernetMLX5Cmd **a1, char a2)
{
  v5 = 0;
  v4[0] = bswap32(((a2 & 0xF) << 8) | 0x10000);
  v4[1] = 128;
  return DriverKit_AppleEthernetMLX5_IVars::accessReg(a1, v4, 16, &v3, 16, 0x5006u, 0, 1);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::queryPortMTU(AppleEthernetMLX5Cmd **this, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v11 = 0;
  v10 = 0;
  v9 = 256;
  result = DriverKit_AppleEthernetMLX5_IVars::accessReg(this, &v9, 16, v8, 16, 0x5003u, 0, 0);
  if (!result)
  {
    if (a3)
    {
      *a3 = bswap32(v8[1]) >> 16;
    }

    if (a4)
    {
      *a4 = bswap32(v8[3]) >> 16;
    }

    if (a2)
    {
      *a2 = bswap32(v8[2]) >> 16;
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::setPortMTU(AppleEthernetMLX5Cmd **this, unsigned int a2)
{
  v4[1] = 0;
  v4[2] = bswap32(a2) >> 16;
  v4[3] = 0;
  v4[0] = 256;
  return DriverKit_AppleEthernetMLX5_IVars::accessReg(this, v4, 16, &v3, 16, 0x5003u, 0, 1);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::setPortPause(AppleEthernetMLX5Cmd **this, unsigned __int8 a2, char a3, char a4)
{
  v6[1] = 0;
  v9 = 0;
  v8 = 0;
  v6[0] = a2 << 8;
  v6[2] = (a4 & 1) << 7;
  v7 = (a3 & 1) << 7;
  return DriverKit_AppleEthernetMLX5_IVars::accessReg(this, v6, 32, &v5, 32, 0x5007u, 0, 1);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::updateRootFT(uint64_t a1, unsigned __int8 a2, int a3)
{
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  v6 = 0u;
  v5 = 12041;
  HIDWORD(v6) = a2;
  LODWORD(v7) = bswap32(a3 & 0xFFFFFF);
  result = AppleEthernetMLX5Cmd::exec(*(a1 + 304), &v5, 64, v4, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v4);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createFT(uint64_t a1, int a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, _DWORD *a6)
{
  memset(v13, 0, sizeof(v13));
  v12 = 0u;
  v11 = 0u;
  v10 = 12297;
  HIDWORD(v11) = a3;
  DWORD1(v12) = bswap32(a5 | (a4 << 16));
  if (a2)
  {
    DWORD1(v11) = bswap32(a2 | 0x80000000);
  }

  result = AppleEthernetMLX5Cmd::exec(*(a1 + 304), &v10, 64, v8, 16);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v8);
    if (!result)
    {
      *a6 = bswap32(v9 & 0xFFFFFF00);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::destroyFT(uint64_t a1, int a2, unsigned __int8 a3, int a4)
{
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  v7 = 0u;
  v6 = 12553;
  HIDWORD(v7) = a3;
  LODWORD(v8) = bswap32(a4 & 0xFFFFFF);
  if (a2)
  {
    DWORD1(v7) = bswap32(a2 | 0x80000000);
  }

  result = AppleEthernetMLX5Cmd::exec(*(a1 + 304), &v6, 64, v5, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v5);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createFG(uint64_t a1, _BYTE *a2, int a3, char a4, int a5, _DWORD *a6)
{
  *a2 = 13065;
  a2[16] = a4;
  *(a2 + 5) = bswap32(a5 & 0xFFFFFF | (*(a2 + 5) << 24));
  if (a3)
  {
    *(a2 + 2) = bswap32(bswap32(*(a2 + 2)) | a3 | 0x80000000);
  }

  result = AppleEthernetMLX5Cmd::exec(*(a1 + 304), a2, 1024, v8, 16);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v8);
    if (!result)
    {
      *a6 = bswap32(v9 & 0xFFFFFF00);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::destroyFG(uint64_t a1, int a2, unsigned __int8 a3, int a4, unsigned int a5)
{
  memset(v10, 0, sizeof(v10));
  v8 = 0u;
  v7 = 13321;
  HIDWORD(v8) = a3;
  v9 = _byteswap_uint64(__PAIR64__(a4 & 0xFFFFFF, a5));
  if (a2)
  {
    DWORD1(v8) = bswap32(a2 | 0x80000000);
  }

  result = AppleEthernetMLX5Cmd::exec(*(a1 + 304), &v7, 64, v6, 16);
  if (!result)
  {
    return AppleEthernetMLX5Cmd::statusToErr(v6);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::setFte(uint64_t a1, int a2, _BYTE *a3, const void *a4, __int8 a5, int a6, unsigned int a7, unsigned int a8, int a9, unsigned __int16 a10, int a11, void *a12)
{
  if (a10 != 4)
  {
    a11 = 0;
  }

  if (*a3)
  {
    if ((*(a1 + 29048) & 0x10) == 0)
    {
      return 3758097095;
    }

    v32 = a7;
    v33 = a8;
    v34 = a4;
    v35 = a1;
    v31 = a3;
    v18 = 0x1000000;
    v17 = 0x4000000;
  }

  else
  {
    v32 = a7;
    v33 = a8;
    v34 = a4;
    v35 = a1;
    v31 = a3;
    v17 = 0;
    v18 = 0;
  }

  v36 = &v30;
  v19 = (8 * a11 + 832);
  v20 = (&v30 - ((v19 + 15) & 0x1FFFFFFF0));
  bzero(v20, v19);
  v21.i32[0] = vdup_n_s32(0x3609u).u32[0];
  v21.i32[1] = v18;
  *v20 = vorr_s8(vand_s8(*v20, 0xFFFFFFFF0000), v21);
  v22 = v20[2].i32[1];
  v23 = v20[3].i32[0] & 0xFFFFFF | v17;
  v20[2].i8[0] = a5;
  v20[2].i32[1] = bswap32(a6 & 0xFFFFFF | (v22 << 24));
  v20[3].i32[0] = v23;
  v20[4].i32[0] = bswap32(v32);
  if (a2)
  {
    v20[1].i32[0] = bswap32(bswap32(v20[1].i32[0]) | a2 | 0x80000000);
  }

  v24 = bswap32(a9 & 0xFFFFFF | (v20[9].i32[0] << 24));
  v20[8].i32[1] = bswap32(v33);
  v20[9].i32[0] = v24;
  v20[9].i16[3] = __rev16(a10);
  v20[10].i32[0] = bswap32(a11 & 0xFFFFFF | (v20[10].i32[0] << 24));
  memcpy(&v20[16], v34, 0x200uLL);
  v25 = v35;
  if (a11)
  {
    v26 = *a12;
    if (*a12 != a12)
    {
      v27 = v20 + 104;
      do
      {
        v28 = *(v26 + 8);
        v29 = v26 + 5;
        if (v28 == 1)
        {
          v29 = (*v29 + 92);
        }

        v27->i32[0] = bswap32(*v29 & 0xFFFFFF | (v28 << 24));
        ++v27;
        v26 = *v26;
      }

      while (v26 != a12);
    }
  }

  result = AppleEthernetMLX5Cmd::exec(*(v25 + 304), &v30 - ((v19 + 15) & 0x1FFFFFFF0), 8 * a11 + 832, v37, 16);
  if (!result && (result = AppleEthernetMLX5Cmd::statusToErr(v37), !result) || result == -536870185)
  {
    result = 0;
    *v31 = 1;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::deleteFte(uint64_t a1, int a2, _BYTE *a3, unsigned __int8 a4, int a5, unsigned int a6)
{
  if (!*a3)
  {
    return 0;
  }

  memset(v12, 0, sizeof(v12));
  v11 = 0u;
  v10 = 0u;
  v9 = 14345;
  HIDWORD(v10) = a4;
  LODWORD(v11) = bswap32(a5 & 0xFFFFFF);
  HIDWORD(v11) = bswap32(a6);
  if (a2)
  {
    DWORD1(v10) = bswap32(a2 | 0x80000000);
  }

  result = AppleEthernetMLX5Cmd::exec(*(a1 + 304), &v9, 64, v8, 16);
  if (!result)
  {
    result = AppleEthernetMLX5Cmd::statusToErr(v8);
    if (!result)
    {
      *a3 = 0;
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5MetaClass::New(DriverKit_AppleEthernetMLX5MetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100024D38;
  a2->OSObjectInterface::__vftable = off_100024D80;
  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5::_Dispatch(IOService *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid <= 0x2CD3FE2A11D85D10)
  {
    if (msgid <= 0x6D890ABB87B5DF4)
    {
      switch(msgid)
      {
        case 0x98E715041C459FA5:
          v11 = *a2;
          return IOService::Stop_Invoke(&v11, this, DriverKit_AppleEthernetMLX5::Stop_Impl);
        case 0xAB6F76DDE6D693F2:
          v11 = *a2;
          return IOService::Start_Invoke(&v11, this, DriverKit_AppleEthernetMLX5::Start_Impl);
        case 0xD200FDE7D57ECCA6:
          v11 = *a2;
          return IOService::SetPowerState_Invoke(&v11, this, DriverKit_AppleEthernetMLX5::SetPowerState_Impl);
      }

      goto LABEL_80;
    }

    if (msgid > 0x1F424A63A38451B6)
    {
      if (msgid != 0x1F424A63A38451B7)
      {
        if (msgid != 0x2B77674110C243D4)
        {
          goto LABEL_80;
        }

        if (OSMetaClassBase::IsRemote(this))
        {
          goto LABEL_78;
        }

        v11 = *a2;
        v7 = gOSAction_DriverKit_AppleEthernetMLX5_AsyncInterruptMetaClass;
        v8 = DriverKit_AppleEthernetMLX5::AsyncInterrupt_Impl;
        return IOInterruptDispatchSource::InterruptOccurred_Invoke(&v11, this, v8, v7);
      }

      if (OSMetaClassBase::IsRemote(this))
      {
        goto LABEL_78;
      }

      result = 3758097087;
      if ((*a2)->msgh_body.msgh_descriptor_count == 1 && *&(*a2)[2].msgh.msgh_bits == 1 && *(a2 + 4) >= 0x48u && (!a2[1] || *(a2 + 5) >= 0x34u))
      {
        DriverKit_AppleEthernetMLX5::PlaceHolder05_Impl(this);
      }
    }

    else if (msgid == 0x6D890ABB87B5DF5)
    {
      if (OSMetaClassBase::IsRemote(this))
      {
        goto LABEL_78;
      }

      result = 3758097087;
      if ((*a2)->msgh_body.msgh_descriptor_count == 1 && *&(*a2)[2].msgh.msgh_bits == 1 && *(a2 + 4) >= 0x48u && (!a2[1] || *(a2 + 5) >= 0x34u))
      {
        DriverKit_AppleEthernetMLX5::PlaceHolder01_Impl(this);
      }
    }

    else
    {
      if (msgid != 0xCDA674E61EDDE2FLL)
      {
        goto LABEL_80;
      }

      if (OSMetaClassBase::IsRemote(this))
      {
        goto LABEL_78;
      }

      result = 3758097087;
      if ((*a2)->msgh_body.msgh_descriptor_count == 1 && *&(*a2)[2].msgh.msgh_bits == 1 && *(a2 + 4) >= 0x48u && (!a2[1] || *(a2 + 5) >= 0x34u))
      {
        DriverKit_AppleEthernetMLX5::PlaceHolder02_Impl(this);
      }
    }
  }

  else
  {
    if (msgid > 0x55AA12D566B1E00ALL)
    {
      if (msgid > 0x657FDFF0B2FB37D5)
      {
        if (msgid != 0x657FDFF0B2FB37D6)
        {
          if (msgid != 0x7A53E739921F2046)
          {
            goto LABEL_80;
          }

          if (OSMetaClassBase::IsRemote(this))
          {
            goto LABEL_78;
          }

          v11 = *a2;
          v7 = gOSAction_DriverKit_AppleEthernetMLX5_PagesInterruptMetaClass;
          v8 = DriverKit_AppleEthernetMLX5::PagesInterrupt_Impl;
          return IOInterruptDispatchSource::InterruptOccurred_Invoke(&v11, this, v8, v7);
        }

        if (OSMetaClassBase::IsRemote(this))
        {
          goto LABEL_78;
        }

        v11 = *a2;
        v9 = gOSAction_DriverKit_AppleEthernetMLX5_HealthTimerOccurredMetaClass;
        v10 = DriverKit_AppleEthernetMLX5::HealthTimerOccurred_Impl;
      }

      else
      {
        if (msgid != 0x55AA12D566B1E00BLL)
        {
          if (msgid != 0x60590390861633F7)
          {
            goto LABEL_80;
          }

          if (OSMetaClassBase::IsRemote(this))
          {
            goto LABEL_78;
          }

          v11 = *a2;
          v7 = gOSAction_DriverKit_AppleEthernetMLX5_QueueInterruptMetaClass;
          v8 = DriverKit_AppleEthernetMLX5::QueueInterrupt_Impl;
          return IOInterruptDispatchSource::InterruptOccurred_Invoke(&v11, this, v8, v7);
        }

        if (OSMetaClassBase::IsRemote(this))
        {
          goto LABEL_78;
        }

        v11 = *a2;
        v9 = gOSAction_DriverKit_AppleEthernetMLX5_CmdTimerOccurredMetaClass;
        v10 = DriverKit_AppleEthernetMLX5::CmdTimerOccurred_Impl;
      }

      return IOTimerDispatchSource::TimerOccurred_Invoke(&v11, this, v10, v9);
    }

    if (msgid <= 0x3C0C1B407EF68FEBLL)
    {
      if (msgid != 0x2CD3FE2A11D85D11)
      {
        if (msgid == 0x32DFB096DDE0AC48)
        {
          if (!OSMetaClassBase::IsRemote(this))
          {
            result = 3758097087;
            if ((*a2)->msgh_body.msgh_descriptor_count == 1 && *&(*a2)[2].msgh.msgh_bits == 1 && *(a2 + 4) >= 0x48u && (!a2[1] || *(a2 + 5) >= 0x34u))
            {
              DriverKit_AppleEthernetMLX5::PlaceHolder00_Impl(this);
            }

            return result;
          }

LABEL_78:
          v11 = *a2;
          return OSMetaClassBase::Dispatch(this, &v11);
        }

LABEL_80:
        v11 = *a2;
        return IOService::_Dispatch(this, &v11);
      }

      if (OSMetaClassBase::IsRemote(this))
      {
        goto LABEL_78;
      }

      v11 = *a2;
      v7 = gOSAction_DriverKit_AppleEthernetMLX5_CommandInterruptMetaClass;
      v8 = DriverKit_AppleEthernetMLX5::CommandInterrupt_Impl;
      return IOInterruptDispatchSource::InterruptOccurred_Invoke(&v11, this, v8, v7);
    }

    if (msgid == 0x3C0C1B407EF68FECLL)
    {
      if (OSMetaClassBase::IsRemote(this))
      {
        goto LABEL_78;
      }

      result = 3758097087;
      if ((*a2)->msgh_body.msgh_descriptor_count == 1 && *&(*a2)[2].msgh.msgh_bits == 1 && *(a2 + 4) >= 0x48u && (!a2[1] || *(a2 + 5) >= 0x34u))
      {
        DriverKit_AppleEthernetMLX5::PlaceHolder04_Impl(this);
      }
    }

    else
    {
      if (msgid != 0x530BA3258551F27FLL)
      {
        goto LABEL_80;
      }

      if (OSMetaClassBase::IsRemote(this))
      {
        goto LABEL_78;
      }

      result = 3758097087;
      if ((*a2)->msgh_body.msgh_descriptor_count == 1 && *&(*a2)[2].msgh.msgh_bits == 1 && *(a2 + 4) >= 0x48u && (!a2[1] || *(a2 + 5) >= 0x34u))
      {
        DriverKit_AppleEthernetMLX5::PlaceHolder03_Impl(this);
      }
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5::PlaceHolder00_Invoke(DriverKit_AppleEthernetMLX5 *this, IORPC *a2, OSMetaClassBase *a3, void (*a4)(OSMetaClassBase *))
{
  result = 3758097087;
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && (!*(this + 1) || *(this + 5) >= 0x34u))
  {
    (a3)(a2);
    return 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5::PlaceHolder01_Invoke(DriverKit_AppleEthernetMLX5 *this, IORPC *a2, OSMetaClassBase *a3, void (*a4)(OSMetaClassBase *))
{
  result = 3758097087;
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && (!*(this + 1) || *(this + 5) >= 0x34u))
  {
    (a3)(a2);
    return 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5::PlaceHolder02_Invoke(DriverKit_AppleEthernetMLX5 *this, IORPC *a2, OSMetaClassBase *a3, void (*a4)(OSMetaClassBase *))
{
  result = 3758097087;
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && (!*(this + 1) || *(this + 5) >= 0x34u))
  {
    (a3)(a2);
    return 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5::PlaceHolder03_Invoke(DriverKit_AppleEthernetMLX5 *this, IORPC *a2, OSMetaClassBase *a3, void (*a4)(OSMetaClassBase *))
{
  result = 3758097087;
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && (!*(this + 1) || *(this + 5) >= 0x34u))
  {
    (a3)(a2);
    return 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5::PlaceHolder04_Invoke(DriverKit_AppleEthernetMLX5 *this, IORPC *a2, OSMetaClassBase *a3, void (*a4)(OSMetaClassBase *))
{
  result = 3758097087;
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && (!*(this + 1) || *(this + 5) >= 0x34u))
  {
    (a3)(a2);
    return 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5::PlaceHolder05_Invoke(DriverKit_AppleEthernetMLX5 *this, IORPC *a2, OSMetaClassBase *a3, void (*a4)(OSMetaClassBase *))
{
  result = 3758097087;
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && (!*(this + 1) || *(this + 5) >= 0x34u))
  {
    (a3)(a2);
    return 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5MetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t DriverKit_AppleEthernetMLX5::CreateActionQueueInterrupt(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetMLX5_QueueInterrupt");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x60590390861633F7uLL, 0xCE0513291CFA1EE1, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t DriverKit_AppleEthernetMLX5::CreateActionCommandInterrupt(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetMLX5_CommandInterrupt");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x2CD3FE2A11D85D11uLL, 0xCE0513291CFA1EE1, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t DriverKit_AppleEthernetMLX5::CreateActionPagesInterrupt(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetMLX5_PagesInterrupt");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x7A53E739921F2046uLL, 0xCE0513291CFA1EE1, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t DriverKit_AppleEthernetMLX5::CreateActionAsyncInterrupt(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetMLX5_AsyncInterrupt");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x2B77674110C243D4uLL, 0xCE0513291CFA1EE1, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t DriverKit_AppleEthernetMLX5::CreateActionHealthTimerOccurred(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetMLX5_HealthTimerOccurred");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x657FDFF0B2FB37D6uLL, 0xF4AB1C3CBB5AE47uLL, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t DriverKit_AppleEthernetMLX5::CreateActionCmdTimerOccurred(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetMLX5_CmdTimerOccurred");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x55AA12D566B1E00BuLL, 0xF4AB1C3CBB5AE47uLL, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t DriverKit_AppleEthernetMLX5::PlaceHolder00(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  DWORD1(v4) = 72;
  v7 = xmmword_10001FE90;
  v8 = 1;
  v9 = this;
  *(&v5 + 4) = 0x14DA2B68CLL;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 72;
  if (a2)
  {
    return a2(this, &invoke);
  }

  else
  {
    return OSMetaClassBase::Invoke(this, &invoke);
  }
}

uint64_t DriverKit_AppleEthernetMLX5::PlaceHolder01(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  DWORD1(v4) = 72;
  v7 = xmmword_10001FEA0;
  v8 = 1;
  v9 = this;
  *(&v5 + 4) = 0x14DA2B68CLL;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 72;
  if (a2)
  {
    return a2(this, &invoke);
  }

  else
  {
    return OSMetaClassBase::Invoke(this, &invoke);
  }
}

uint64_t DriverKit_AppleEthernetMLX5::PlaceHolder02(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  DWORD1(v4) = 72;
  v7 = xmmword_10001FEB0;
  v8 = 1;
  v9 = this;
  *(&v5 + 4) = 0x14DA2B68CLL;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 72;
  if (a2)
  {
    return a2(this, &invoke);
  }

  else
  {
    return OSMetaClassBase::Invoke(this, &invoke);
  }
}

uint64_t DriverKit_AppleEthernetMLX5::PlaceHolder03(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  DWORD1(v4) = 72;
  v7 = xmmword_10001FEC0;
  v8 = 1;
  v9 = this;
  *(&v5 + 4) = 0x14DA2B68CLL;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 72;
  if (a2)
  {
    return a2(this, &invoke);
  }

  else
  {
    return OSMetaClassBase::Invoke(this, &invoke);
  }
}

uint64_t DriverKit_AppleEthernetMLX5::PlaceHolder04(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  DWORD1(v4) = 72;
  v7 = xmmword_10001FED0;
  v8 = 1;
  v9 = this;
  *(&v5 + 4) = 0x14DA2B68CLL;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 72;
  if (a2)
  {
    return a2(this, &invoke);
  }

  else
  {
    return OSMetaClassBase::Invoke(this, &invoke);
  }
}

uint64_t DriverKit_AppleEthernetMLX5::PlaceHolder05(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  DWORD1(v4) = 72;
  v7 = xmmword_10001FEE0;
  v8 = 1;
  v9 = this;
  *(&v5 + 4) = 0x14DA2B68CLL;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 72;
  if (a2)
  {
    return a2(this, &invoke);
  }

  else
  {
    return OSMetaClassBase::Invoke(this, &invoke);
  }
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_QueueInterruptMetaClass::New(OSAction_DriverKit_AppleEthernetMLX5_QueueInterruptMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100024DE0;
  a2->OSObjectInterface::__vftable = &off_100024E28;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_QueueInterrupt::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_QueueInterrupt::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_QueueInterruptMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_CommandInterruptMetaClass::New(OSAction_DriverKit_AppleEthernetMLX5_CommandInterruptMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100024E88;
  a2->OSObjectInterface::__vftable = &off_100024ED0;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_CommandInterrupt::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_CommandInterrupt::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_CommandInterruptMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_PagesInterruptMetaClass::New(OSAction_DriverKit_AppleEthernetMLX5_PagesInterruptMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100024F30;
  a2->OSObjectInterface::__vftable = &off_100024F78;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_PagesInterrupt::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_PagesInterrupt::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_PagesInterruptMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_AsyncInterruptMetaClass::New(OSAction_DriverKit_AppleEthernetMLX5_AsyncInterruptMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100024FD8;
  a2->OSObjectInterface::__vftable = &off_100025020;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_AsyncInterrupt::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_AsyncInterrupt::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_AsyncInterruptMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_HealthTimerOccurredMetaClass::New(OSAction_DriverKit_AppleEthernetMLX5_HealthTimerOccurredMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100025080;
  a2->OSObjectInterface::__vftable = &off_1000250C8;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_HealthTimerOccurred::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_HealthTimerOccurred::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_HealthTimerOccurredMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_CmdTimerOccurredMetaClass::New(OSAction_DriverKit_AppleEthernetMLX5_CmdTimerOccurredMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100025128;
  a2->OSObjectInterface::__vftable = &off_100025170;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_CmdTimerOccurred::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_CmdTimerOccurred::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetMLX5_CmdTimerOccurredMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIfMetaClass::New(DriverKit_AppleEthernetMLX5_NetIfMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100025270;
  a2->OSObjectInterface::__vftable = off_100025400;
  *&a2[1].refcount = &off_100025420;
  return 0;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::_Dispatch(IOUserNetworkEthernet *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid <= 0xED7CE2CA0DF8ED0DLL)
  {
    if (msgid > 0xD200FDE7D57ECCA5)
    {
      if (msgid <= 0xE072FCC26CF639ABLL)
      {
        if (msgid == 0xD200FDE7D57ECCA6)
        {
          v7 = *a2;
          return IOService::SetPowerState_Invoke(&v7, this, DriverKit_AppleEthernetMLX5_NetIf::SetPowerState_Impl);
        }

        if (msgid != 0xE042A87972611225)
        {
          goto LABEL_77;
        }

        if (!OSMetaClassBase::IsRemote(this))
        {
          v7 = *a2;
          return IOUserNetworkEthernet::SetAllMulticastModeEnable_Invoke(&v7, this, DriverKit_AppleEthernetMLX5_NetIf::SetAllMulticastModeEnable_Impl);
        }

        goto LABEL_75;
      }

      if (msgid == 0xE072FCC26CF639ACLL)
      {
        if (!OSMetaClassBase::IsRemote(this))
        {
          v7 = *a2;
          return IOUserNetworkEthernet::SetPromiscuousModeEnable_Invoke(&v7, this, DriverKit_AppleEthernetMLX5_NetIf::SetPromiscuousModeEnable_Impl);
        }

        goto LABEL_75;
      }

      if (msgid == 0xE77A9AA5DB9C706CLL)
      {
        v7 = *a2;
        return IOUserNetworkEthernet::GetHardwareAssists_Invoke(&v7, this, DriverKit_AppleEthernetMLX5_NetIf::GetHardwareAssists_Impl);
      }
    }

    else
    {
      if (msgid <= 0xB23EE0228705FB94)
      {
        if (msgid == 0x98E715041C459FA5)
        {
          v7 = *a2;
          return IOService::Stop_Invoke(&v7, this, DriverKit_AppleEthernetMLX5_NetIf::Stop_Impl);
        }

        if (msgid == 0xA49568F23EE8EFD5)
        {
          v7 = *a2;
          return IOUserNetworkEthernet::GetMaxTransferUnit_Invoke(&v7, this, DriverKit_AppleEthernetMLX5_NetIf::GetMaxTransferUnit_Impl);
        }

        goto LABEL_77;
      }

      if (msgid == 0xB23EE0228705FB95)
      {
        if (!OSMetaClassBase::IsRemote(this))
        {
          v7 = *a2;
          return IOUserNetworkEthernet::SetWakeOnMagicPacketEnable_Invoke(&v7, this, DriverKit_AppleEthernetMLX5_NetIf::SetWakeOnMagicPacketEnable_Impl);
        }

        goto LABEL_75;
      }

      if (msgid == 0xC3E63AC546EBD1FELL)
      {
        if (!OSMetaClassBase::IsRemote(this))
        {
          v7 = *a2;
          return IOUserNetworkEthernet::SelectMediaType_Invoke(&v7, this, DriverKit_AppleEthernetMLX5_NetIf::SelectMediaType_Impl);
        }

        goto LABEL_75;
      }
    }

LABEL_77:
    v7 = *a2;
    return IOUserNetworkEthernet::_Dispatch(this, &v7);
  }

  if (msgid > 0x25EABB876325AB1BLL)
  {
    if (msgid > 0x5F13F7ED9CAADD13)
    {
      if (msgid == 0x5F13F7ED9CAADD14)
      {
        if (OSMetaClassBase::IsRemote(this))
        {
          goto LABEL_75;
        }

        result = 3758097087;
        if ((*a2)->msgh_body.msgh_descriptor_count == 1 && *&(*a2)[2].msgh.msgh_bits == 1 && *(a2 + 4) >= 0x48u && (!a2[1] || *(a2 + 5) >= 0x34u))
        {
          DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder02_Impl(this);
        }
      }

      else
      {
        if (msgid != 0x7D20656023E8A8C6)
        {
          goto LABEL_77;
        }

        if (OSMetaClassBase::IsRemote(this))
        {
          goto LABEL_75;
        }

        result = 3758097087;
        if ((*a2)->msgh_body.msgh_descriptor_count == 1 && *&(*a2)[2].msgh.msgh_bits == 1 && *(a2 + 4) >= 0x48u && (!a2[1] || *(a2 + 5) >= 0x34u))
        {
          DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder01_Impl(this);
        }
      }
    }

    else if (msgid == 0x25EABB876325AB1CLL)
    {
      if (OSMetaClassBase::IsRemote(this))
      {
        goto LABEL_75;
      }

      result = 3758097087;
      if ((*a2)->msgh_body.msgh_descriptor_count == 1 && *&(*a2)[2].msgh.msgh_bits == 1 && *(a2 + 4) >= 0x48u && (!a2[1] || *(a2 + 5) >= 0x34u))
      {
        DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder00_Impl(this);
      }
    }

    else
    {
      if (msgid != 0x3A69794ED88201BELL)
      {
        goto LABEL_77;
      }

      if (OSMetaClassBase::IsRemote(this))
      {
        goto LABEL_75;
      }

      result = 3758097087;
      if ((*a2)->msgh_body.msgh_descriptor_count == 1 && *&(*a2)[2].msgh.msgh_bits == 1 && *(a2 + 4) >= 0x48u && (!a2[1] || *(a2 + 5) >= 0x34u))
      {
        DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder04_Impl(this);
      }
    }
  }

  else
  {
    if (msgid <= 0x1BF9DB4A41C57135)
    {
      if (msgid == 0xED7CE2CA0DF8ED0ELL)
      {
        v7 = *a2;
        return IOUserNetworkEthernet::SetMTU_Invoke(&v7, this, DriverKit_AppleEthernetMLX5_NetIf::SetMTU_Impl);
      }

      if (msgid != 0xF421A9D80F9A1FDALL)
      {
        goto LABEL_77;
      }

      if (!OSMetaClassBase::IsRemote(this))
      {
        v7 = *a2;
        return IOUserNetworkEthernet::SetInterfaceEnable_Invoke(&v7, this, DriverKit_AppleEthernetMLX5_NetIf::SetInterfaceEnable_Impl);
      }

      goto LABEL_75;
    }

    if (msgid != 0x1BF9DB4A41C57136)
    {
      if (msgid != 0x1D91EB60507F10DFLL)
      {
        goto LABEL_77;
      }

      if (!OSMetaClassBase::IsRemote(this))
      {
        result = 3758097087;
        if ((*a2)->msgh_body.msgh_descriptor_count == 1 && *&(*a2)[2].msgh.msgh_bits == 1 && *(a2 + 4) >= 0x48u && (!a2[1] || *(a2 + 5) >= 0x34u))
        {
          DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder05_Impl(this);
        }

        return result;
      }

LABEL_75:
      v7 = *a2;
      return OSMetaClassBase::Dispatch(this, &v7);
    }

    if (OSMetaClassBase::IsRemote(this))
    {
      goto LABEL_75;
    }

    result = 3758097087;
    if ((*a2)->msgh_body.msgh_descriptor_count == 1 && *&(*a2)[2].msgh.msgh_bits == 1 && *(a2 + 4) >= 0x48u && (!a2[1] || *(a2 + 5) >= 0x34u))
    {
      DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder03_Impl(this);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder00_Invoke(DriverKit_AppleEthernetMLX5_NetIf *this, IORPC *a2, OSMetaClassBase *a3, void (*a4)(OSMetaClassBase *))
{
  result = 3758097087;
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && (!*(this + 1) || *(this + 5) >= 0x34u))
  {
    (a3)(a2);
    return 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder01_Invoke(DriverKit_AppleEthernetMLX5_NetIf *this, IORPC *a2, OSMetaClassBase *a3, void (*a4)(OSMetaClassBase *))
{
  result = 3758097087;
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && (!*(this + 1) || *(this + 5) >= 0x34u))
  {
    (a3)(a2);
    return 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder02_Invoke(DriverKit_AppleEthernetMLX5_NetIf *this, IORPC *a2, OSMetaClassBase *a3, void (*a4)(OSMetaClassBase *))
{
  result = 3758097087;
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && (!*(this + 1) || *(this + 5) >= 0x34u))
  {
    (a3)(a2);
    return 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder03_Invoke(DriverKit_AppleEthernetMLX5_NetIf *this, IORPC *a2, OSMetaClassBase *a3, void (*a4)(OSMetaClassBase *))
{
  result = 3758097087;
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && (!*(this + 1) || *(this + 5) >= 0x34u))
  {
    (a3)(a2);
    return 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder04_Invoke(DriverKit_AppleEthernetMLX5_NetIf *this, IORPC *a2, OSMetaClassBase *a3, void (*a4)(OSMetaClassBase *))
{
  result = 3758097087;
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && (!*(this + 1) || *(this + 5) >= 0x34u))
  {
    (a3)(a2);
    return 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder05_Invoke(DriverKit_AppleEthernetMLX5_NetIf *this, IORPC *a2, OSMetaClassBase *a3, void (*a4)(OSMetaClassBase *))
{
  result = 3758097087;
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && (!*(this + 1) || *(this + 5) >= 0x34u))
  {
    (a3)(a2);
    return 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetMLX5_NetIfMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder00(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  DWORD1(v4) = 72;
  v7 = xmmword_100020950;
  v8 = 1;
  v9 = this;
  *(&v5 + 4) = 0x14DA2B68CLL;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 72;
  if (a2)
  {
    return a2(this, &invoke);
  }

  else
  {
    return OSMetaClassBase::Invoke(this, &invoke);
  }
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder01(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  DWORD1(v4) = 72;
  v7 = xmmword_100020960;
  v8 = 1;
  v9 = this;
  *(&v5 + 4) = 0x14DA2B68CLL;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 72;
  if (a2)
  {
    return a2(this, &invoke);
  }

  else
  {
    return OSMetaClassBase::Invoke(this, &invoke);
  }
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder02(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  DWORD1(v4) = 72;
  v7 = xmmword_100020970;
  v8 = 1;
  v9 = this;
  *(&v5 + 4) = 0x14DA2B68CLL;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 72;
  if (a2)
  {
    return a2(this, &invoke);
  }

  else
  {
    return OSMetaClassBase::Invoke(this, &invoke);
  }
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder03(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  DWORD1(v4) = 72;
  v7 = xmmword_100020980;
  v8 = 1;
  v9 = this;
  *(&v5 + 4) = 0x14DA2B68CLL;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 72;
  if (a2)
  {
    return a2(this, &invoke);
  }

  else
  {
    return OSMetaClassBase::Invoke(this, &invoke);
  }
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder04(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  DWORD1(v4) = 72;
  v7 = xmmword_100020990;
  v8 = 1;
  v9 = this;
  *(&v5 + 4) = 0x14DA2B68CLL;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 72;
  if (a2)
  {
    return a2(this, &invoke);
  }

  else
  {
    return OSMetaClassBase::Invoke(this, &invoke);
  }
}

uint64_t DriverKit_AppleEthernetMLX5_NetIf::PlaceHolder05(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  DWORD1(v4) = 72;
  v7 = xmmword_1000209A0;
  v8 = 1;
  v9 = this;
  *(&v5 + 4) = 0x14DA2B68CLL;
  invoke.message = &v4;
  invoke.reply = 0;
  *&invoke.sendSize = 72;
  if (a2)
  {
    return a2(this, &invoke);
  }

  else
  {
    return OSMetaClassBase::Invoke(this, &invoke);
  }
}

void DriverKit_AppleEthernetMLX5::Start_Impl()
{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 40, "!Start(provider, SUPERDISPATCH)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 54, "!CopyDispatchQueue(kIOServiceDefaultQueueName, &ivars->dispatch_queue)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 55, "!IODispatchQueue::Create(cmd_queue, kIODispatchQueueReentrant, 0, &ivars->cmd_queue)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 60, "!IOTimerDispatchSource::Create(ivars->dispatch_queue, &ivars->healthTimerSource)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 61, "!CreateActionHealthTimerOccurred(sizeof(void*), &action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 62, "!ivars->healthTimerSource->SetHandler(action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 68, "!IOInterruptDispatchSource::GetInterruptType(pciDev, 0, &interruptType)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 77, "!CreateActionPagesInterrupt(sizeof(void*), &action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 78, "!ivars->intSource[i]->SetHandler(action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 79, "!ivars->intSource[i]->SetEnable(true)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 86, "!CreateActionCommandInterrupt(sizeof(void*), &action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 87, "!ivars->intSource[i]->SetHandler(action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 88, "!ivars->intSource[i]->SetEnable(true)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 95, "!CreateActionAsyncInterrupt(sizeof(void*), &action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 96, "!ivars->intSource[i]->SetHandler(action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 97, "!ivars->intSource[i]->SetEnable(true)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 105, "!IODispatchQueue::Create(dqname, 0, 0, &ivars->intrpt_disp_q[j])");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 106, "!SetDispatchQueue(ivars->intrpt_disp_q[j]->GetName(), ivars->intrpt_disp_q[j])");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 107, "!IOInterruptDispatchSource::Create(pciDev, vector, ivars->intrpt_disp_q[j], &ivars->intSource[i])");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 108, "!CreateActionQueueInterrupt(sizeof(IRQInfo), &action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 110, "!ivars->intSource[i]->SetHandler(action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 111, "!ivars->intSource[i]->SetEnable(true)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 121, "!pciDev->Open(this, 0)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 128, "!Create(this, NetIf, &service)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 132, "!netif->SetDispatchQueue(kIOServiceDefaultQueueName, ivars->dispatch_queue)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 135, "!netif->SetDispatchQueue(ivars->intrpt_disp_q[j]->GetName(), ivars->intrpt_disp_q[j])");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 142, "!JoinPMTree()");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 143, "!service->JoinPMTree()");
}

void mlx5::FSBase::release(uint64_t a1, int a2, _DWORD *a3)
{
  if (*(a1 + 8) == 4)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = *(v4 + 48);
    }

    else
    {
      v5 = "(ROOT)";
    }

    IOLog("FSBase::release(%p = %s, %s, %d) %s\n", a1, *(a1 + 48), v5, a2, "FS_TYPE_FLOW_ENTRY");
  }

  if (MLX5_pciDev)
  {
    OUTLINED_FUNCTION_1(MLX5_pciDev);
    OUTLINED_FUNCTION_0();
  }

  panic("mlx5:%s:%d refcount %d\n", "release", 170, *a3);
}

uint64_t mlx5::FSBase::removeNode(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = "(ROOT)";
  }

  return IOLog("mlx5:%s:%d FSBase::removeNode(%p = %s, %s, %d) %s\n", "removeNode", 201, a1, *(a1 + 48), v2, *(a1 + 44), mlx5::__fstype[*(a1 + 8)]);
}

void mlx5::FSBase::removeNode(uint64_t a1, int a2, _DWORD *a3)
{
  if (*(a1 + 8) == 4)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = *(v4 + 48);
    }

    else
    {
      v5 = "(ROOT)";
    }

    IOLog("FSBase::removeNode(%p = %s, %s, %d) %s\n", a1, *(a1 + 48), v5, a2, "FS_TYPE_FLOW_ENTRY");
  }

  if (MLX5_pciDev)
  {
    OUTLINED_FUNCTION_1(MLX5_pciDev);
    OUTLINED_FUNCTION_0();
  }

  panic("mlx5:%s:%d refcount %d\n", "removeNode", 208, *a3);
}

{
  if (*(a1 + 8) == 4)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = *(v4 + 48);
    }

    else
    {
      v5 = "(ROOT)";
    }

    IOLog("FSBase::release(%p = %s, %s, %d) %s\n", a1, *(a1 + 48), v5, a2, "FS_TYPE_FLOW_ENTRY");
  }

  if (MLX5_pciDev)
  {
    OUTLINED_FUNCTION_1(MLX5_pciDev);
    OUTLINED_FUNCTION_0();
  }

  panic("mlx5:%s:%d refcount %d\n", "removeNode", 221, *a3);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::createCQ(uint64_t result, int a2, int *a3)
{
  if ((result & 1) == 0)
  {
    v9 = v4;
    v10 = v3;
    v11 = v5;
    v12 = v6;
    if (MLX5_pciDev)
    {
      v8 = 0;
      IOPCIDevice::ConfigurationRead8(MLX5_pciDev, 4uLL, &v8);
      IOPCIDevice::ConfigurationWrite8(MLX5_pciDev, 4uLL, v8 & 0xFB);
      a2 = *a3;
    }

    panic("mlx5:%s:%d couldn't add cq.cqn %d\n", "createCQ", 49, a2);
  }

  return result;
}

void AppleEthernetMLX5DMABuf::AppleEthernetMLX5DMABuf(uint64_t a1, int a2)
{
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d failed with size=%llx, err=%x\n", "AppleEthernetMLX5DMABuf", 16, a1, a2);
  }

  __assert_rtn("AppleEthernetMLX5DMABuf", "alloc.cpp", 17, "false");
}

void AppleEthernetMLX5DMABuf::AppleEthernetMLX5DMABuf()
{
  __assert_rtn("AppleEthernetMLX5DMABuf", "alloc.cpp", 22, "!descr->GetAddressRange(segments)");
}

{
  __assert_rtn("AppleEthernetMLX5DMABuf", "alloc.cpp", 28, "!IODMACommand::Create(MLX5_pciDev, kIODMACommandCreateNoOptions, &dmaSpecification, &dma)");
}

{
  __assert_rtn("AppleEthernetMLX5DMABuf", "alloc.cpp", 32, "!dma->PrepareForDMA(kIODMACommandPrepareForDMANoOptions, descr, 0, 0, &flags, &segmentsCount, &segments[0])");
}

void DriverKit_AppleEthernetMLX5_NetIf_IVars::dequeueTxPackets()
{
  if (gMLX5DebugFlags)
  {
    IOLog("mlx5:%s:%d !sq.hasRoomFor(2 * MLX5_SEND_WQE_MAX_WQEBBS)\n", "dequeueTxPackets", 135);
  }

  __assert_rtn("dequeueTxPackets", "en_tx.cpp", 136, "false");
}

void AppleEthernetMLX5EQ::queue_interrupt(AppleEthernetMLX5EQ *this)
{
  v2 = *(this + 18);
  v3 = *(this + 5);
  v4 = *(this + 20);
  if (v3)
  {
    OUTLINED_FUNCTION_0_0(v3);
    if ((v7 & 1) == 0)
    {
      v8 = 0;
      do
      {
        v9 = v2;
        do
        {
          *(this + 18) = ++v9;
          if (v8 >= 127)
          {
            AppleEthernetMLX5EQ::updateCI(this, 0);
            v8 = 0;
            v5 = *(this + 5);
            v9 = *(this + 18);
            v6 = *(this + 20);
          }

          else
          {
            ++v8;
          }
        }

        while (v5 && ((((v6 & v9) != 0) ^ *(v5 + (((v6 - 1) & v9) << 6) + 63)) & 1) == 0);
        if (v2 == v9)
        {
          break;
        }

        AppleEthernetMLX5EQ::updateCI(this, 0);
        v2 = *(this + 18);
        v10 = *(this + 5);
        v11 = *(this + 20);
        if (!v10)
        {
          break;
        }

        OUTLINED_FUNCTION_0_0(v10);
      }

      while ((v12 & 1) == 0);
    }
  }

  AppleEthernetMLX5EQ::updateCI(this, 1);
}

void DriverKit_AppleEthernetMLX5_IVars::probe()
{
  __assert_rtn("probe", "AppleEthernetMLX5.cpp", 40, "!pciDev->GetBusDeviceFunction(&b, &d, &f)");
}

{
  __assert_rtn("probe", "AppleEthernetMLX5.cpp", 43, "!pciDev->Open(owner, 0)");
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::handleHCACap(uint64_t a1)
{
  v1 = __rev16(*(a1 + 362));
  if (v1 <= 5)
  {
    v2 = (128 << v1) & 0xFF80;
  }

  else
  {
    v2 = 0;
  }

  return IOLog("mlx5:%s:%d Current Pkey table size %d Setting new size %d\n", "handleHCACap", 428, v2, 128);
}

uint64_t DriverKit_AppleEthernetMLX5_IVars::detectMSI(uint64_t a1)
{
  v1 = *(a1 + 367) + 3;
  if (v1 >= 1 << (*(a1 + 343) & 0xF))
  {
    v1 = 1 << (*(a1 + 343) & 0xF);
  }

  return IOLog("mlx5:%s:%d number of irqs required %d\n", "detectMSI", 203, v1);
}

void AppleEthernetMLX5CmdWorkEnt::waitFor()
{
  if (MLX5_pciDev)
  {
    OUTLINED_FUNCTION_1(MLX5_pciDev);
    OUTLINED_FUNCTION_1_0(MLX5_pciDev);
  }

  panic("mlx5:%s:%d mlx5: command timed out\n", "waitFor", 553);
}

void AppleEthernetMLX5CmdWorkEnt::waitFor(int a1)
{
  if (MLX5_pciDev)
  {
    OUTLINED_FUNCTION_1(MLX5_pciDev);
    OUTLINED_FUNCTION_1_0(MLX5_pciDev);
  }

  panic("mlx5:%s:%d mlx5: CmdWorkEnt::waitFor() sleep returned with %x\n", "waitFor", 544, a1);
}

uint64_t AppleEthernetMLX5CmdWorkEnt::waitFor(uint64_t a1)
{
  v1 = **(a1 + 40);
  v2 = *(a1 + 48);
  v3 = deliv_status_to_str(v1);
  return IOLog("mlx5:%s:%d ret %x, delivery status %s(%x)\n", "waitFor", 540, v2, v3, v1);
}

void AppleEthernetMLX5Cmd::compHandler(_DWORD *a1, AppleEthernetMLX5CmdWorkEnt *this)
{
  *a1 = -536870911;
  if (gMLX5DebugFlags)
  {
    AppleEthernetMLX5CmdWorkEnt::dump(this, 1);
  }

  if (MLX5_pciDev)
  {
    OUTLINED_FUNCTION_1(MLX5_pciDev);
    OUTLINED_FUNCTION_1_0(MLX5_pciDev);
  }

  panic("mlx5:%s:%d mlx5: signature validation failed\n", "compHandler", 593);
}

uint64_t ___ZN20AppleEthernetMLX5Cmd4execEPviS0_i_block_invoke_cold_2(unsigned int a1)
{
  v1 = bswap32(a1) >> 16;
  v2 = mlx5_command_str(v1);
  return IOLog("mlx5: cmd exec %s(0x%x)\n", v2, v1);
}

void ___ZN20AppleEthernetMLX5Cmd4execEPviS0_i_block_invoke_cold_4(unsigned __int8 *a1)
{
  if (MLX5_pciDev)
  {
    OUTLINED_FUNCTION_1(MLX5_pciDev);
    OUTLINED_FUNCTION_1_0(MLX5_pciDev);
  }

  panic("mlx5:%s:%d mlx5: command failed, status (0x%x), syndrome 0x%x\n", "exec_block_invoke", 718, *a1, bswap32(*(a1 + 1)));
}

void AppleEthernetMLX5Cmd::invoke()
{
  __assert_rtn("invoke", "cmd.cpp", 620, "pool1 != max_reg_cmds");
}

{
  __assert_rtn("invoke", "cmd.cpp", 612, "!pool0");
}

void DriverKit_AppleEthernetMLX5_NetIf_IVars::startInterface()
{
  __assert_rtn("startInterface", "en_main.cpp", 1301, "!IOUserNetworkPacketBufferPool::CreateWithOptions(MLX5_pciDev, name, &poolOptions, &tx_pool)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 1310, "!IOUserNetworkPacketBufferPool::CreateWithOptions(MLX5_pciDev, name, &poolOptions, &rx_pool)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 1316, "!IOUserNetworkTxSubmissionQueue::Create(tx_pool, owner, tx_wq_size >> 2, i, dispatch_queue, &channel[i].sq.sub_q)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 1317, "!channel[i].sq.sub_q->_SetDoorbell(mdev->intSource[MLX5_EQ_VEC_COMP_BASE + i])");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 1318, "!IOUserNetworkTxCompletionQueue::Create(tx_pool, owner, tx_wq_size >> 2, i, dispatch_queue, &channel[i].sq.cmp_q)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 1319, "!channel[i].sq.cmp_q->CopyDataQueue(&channel[i].sq.cmp)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 1320, "!IOUserNetworkRxSubmissionQueue::Create(rx_pool, owner, rx_wq_size, i, dispatch_queue, &channel[i].rq.sub_q)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 1321, "!channel[i].rq.sub_q->_SetDoorbell(mdev->intSource[MLX5_EQ_VEC_COMP_BASE + i])");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 1324, "!IOUserNetworkRxCompletionQueue::Create(rx_pool, owner, (params.rq_wq_type == MLX5_WQ_TYPE_STRQ_LINKED_LIST) ? rx_wq_size * (1 + num_strides) : rx_wq_size, i, dispatch_queue, &channel[i].rq.cmp_q)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 1325, "!channel[i].rq.cmp_q->CopyDataQueue(&channel[i].rq.cmp)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 1331, "!getSupportedMediaArray(mediaTypes, &count)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 1332, "!owner->ReportAvailableMediaTypes(mediaTypes, count)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 1340, "!owner->registerEthernetInterface(queues, params.num_channels * 4, tx_pool, rx_pool)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 1341, "!owner->RegisterService()");
}

void operator delete[]()
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

{
    ;
  }
}

void operator new()
{
    ;
  }
}