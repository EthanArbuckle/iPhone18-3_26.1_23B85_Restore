uint64_t e1000_get_speed_and_duplex_copper_generic(uint64_t a1, __int16 *a2, __int16 *a3)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  v6 = readData;
  if ((readData & 0x80) != 0)
  {
    v7 = *(a1 + 284) != 36 || (readData & 0x400000) == 0;
    v8 = 2500;
    v9 = 1000;
  }

  else
  {
    v7 = (readData & 0x40) == 0;
    v8 = 100;
    v9 = 10;
  }

  if (v7)
  {
    v8 = v9;
  }

  *a2 = v8;
  if (v6)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  *a3 = v10;
  return 0;
}

uint64_t e1000_get_speed_and_duplex_fiber_serdes_generic(uint64_t a1, _WORD *a2, _WORD *a3)
{
  *a2 = 1000;
  *a3 = 2;
  return 0;
}

uint64_t e1000_get_hw_semaphore_generic(uint64_t a1)
{
  v2 = 2000;
  while (1)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B50uLL, 2u);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B50uLL, &readData);
    __dmb(1u);
    if ((readData & 2) != 0)
    {
      break;
    }

    IODelay(0x32uLL);
    if (!--v2)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B50uLL, 0);
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t e1000_get_auto_rd_done_generic(uint64_t a1)
{
  v2 = 10;
  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
    __dmb(1u);
    if ((readData & 0x200) != 0)
    {
      break;
    }

    IODelay(0x3E8uLL);
    if (!--v2)
    {
      return 4294967287;
    }
  }

  return 0;
}

uint64_t e1000_valid_led_default_generic(uint64_t a1, _WORD *a2)
{
  result = (*(a1 + 1160))(a1, 4, 1, a2);
  if (!result)
  {
    v4 = *a2;
    if (v4 == 0xFFFF || v4 == 0)
    {
      *a2 = -30447;
    }
  }

  return result;
}

uint64_t e1000_id_led_init_generic(uint64_t a1)
{
  v12 = 0;
  result = (*(a1 + 1192))(a1, &v12);
  if (!result)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE00uLL, &readData);
    v3 = 0;
    v4 = 0;
    __dmb(1u);
    v5 = readData;
    *(a1 + 292) = readData;
    *(a1 + 296) = v5;
    *(a1 + 300) = v5;
    v6 = v12;
    v7 = v5;
    while (1)
    {
      v8 = (v6 >> v3) & 0xF;
      v9 = 255 << v4;
      if (v8 > 6)
      {
        if (v8 - 7 > 2)
        {
          goto LABEL_18;
        }

        v10 = 15;
      }

      else
      {
        v10 = 14;
        if (v8 - 4 >= 3)
        {
          if (v8 != 2)
          {
            if (v8 != 3)
            {
              goto LABEL_18;
            }

LABEL_16:
            v10 = 15;
          }

          goto LABEL_17;
        }
      }

      v7 = v7 & ~v9 | (v10 << v4);
      *(a1 + 296) = v7;
      v10 = 14;
      if (((v6 >> v3) & 0xF) <= 7)
      {
        if (v8 != 5)
        {
          if (v8 != 6)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }

LABEL_17:
        v5 = v5 & ~v9 | (v10 << v4);
        *(a1 + 300) = v5;
        goto LABEL_18;
      }

      if (v8 == 8)
      {
        goto LABEL_17;
      }

      if (v8 == 9)
      {
        goto LABEL_16;
      }

LABEL_18:
      v4 += 8;
      v3 += 4;
      if (v3 == 16)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t e1000_setup_led_generic(uint64_t a1)
{
  if (*(a1 + 208) != e1000_setup_led_generic)
  {
    return 4294967293;
  }

  v10 = v1;
  v11 = v2;
  v5 = *(a1 + 1116);
  if (v5 == 1)
  {
    __dmb(2u);
    v7 = *(a1 + 16);
    v8 = *(a1 + 296);
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE00uLL, &readData);
    __dmb(1u);
    v6 = readData;
    *(a1 + 292) = readData;
    __dmb(2u);
    v7 = *(a1 + 16);
    v8 = v6 & 0xFFFFFF30 | 0xF;
LABEL_7:
    IOPCIDevice::MemoryWrite32(v7, 0, 0xE00uLL, v8);
  }

  return 0;
}

uint64_t e1000_cleanup_led_generic(uint64_t a1)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE00uLL, *(a1 + 292));
  return 0;
}

uint64_t e1000_blink_led_generic(uint64_t a1)
{
  v1 = 142;
  if (*(a1 + 1116) != 2)
  {
    v2 = -8;
    v1 = *(a1 + 300);
    do
    {
      v3 = (*(a1 + 300) >> (v2 + 8)) & 0xF;
      v4 = *(a1 + 292) >> (v2 + 8);
      if ((v4 & 0x40) == 0 && v3 == 14 || (v4 & 0x40) != 0 && v3 == 15)
      {
        v1 = v1 & ~(15 << (v2 + 8)) | (142 << (v2 + 8));
      }

      v2 += 8;
    }

    while (v2 < 0x18);
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE00uLL, v1);
  return 0;
}

uint64_t e1000_led_on_generic(uint64_t a1)
{
  v2 = *(a1 + 1116);
  if (v2 == 1)
  {
    __dmb(2u);
    v4 = *(a1 + 16);
    v5 = *(a1 + 300);
    v6 = 3584;
    goto LABEL_5;
  }

  if (v2 == 2)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
    __dmb(1u);
    v3 = readData & 0xFFFBFFFF;
    __dmb(2u);
    v4 = *(a1 + 16);
    v5 = v3 | 0x400000;
    v6 = 0;
LABEL_5:
    IOPCIDevice::MemoryWrite32(v4, 0, v6, v5);
  }

  return 0;
}

uint64_t e1000_led_off_generic(uint64_t a1)
{
  v2 = *(a1 + 1116);
  if (v2 == 1)
  {
    __dmb(2u);
    v4 = *(a1 + 16);
    v5 = *(a1 + 296);
    v6 = 3584;
    goto LABEL_5;
  }

  if (v2 == 2)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
    __dmb(1u);
    v3 = readData;
    __dmb(2u);
    v4 = *(a1 + 16);
    v5 = v3 | 0x440000;
    v6 = 0;
LABEL_5:
    IOPCIDevice::MemoryWrite32(v4, 0, v6, v5);
  }

  return 0;
}

void e1000_set_pcie_no_snoop_generic(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 1248) == 3)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B00uLL, &readData);
      __dmb(1u);
      v4 = readData & 0xFFFFFFC0;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B00uLL, v4 | a2);
    }
  }
}

uint64_t e1000_disable_pcie_primary_generic(uint64_t a1)
{
  if (*(a1 + 1248) != 3)
  {
    return 0;
  }

  v10 = v1;
  v11 = v2;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v4 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v4 | 4);
  v5 = -800;
  while (1)
  {
    v8 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v8);
    __dmb(1u);
    if ((v8 & 0x80000) == 0)
    {
      break;
    }

    IODelay(0x64uLL);
    if (__CFADD__(v5++, 1))
    {
      return 4294967286;
    }
  }

  return 0;
}

void e1000_reset_adaptive_generic(uint64_t a1)
{
  if (*(a1 + 847) == 1)
  {
    *(a1 + 324) = 10;
    *(a1 + 316) = 0x4002800500000;
    *(a1 + 854) = 0;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x458uLL, 0);
  }
}

void e1000_update_adaptive_generic(uint64_t a1)
{
  if (*(a1 + 847) == 1)
  {
    v1 = *(a1 + 308);
    if (*(a1 + 288) * *(a1 + 322) <= v1)
    {
      if (v1 <= 0x3E8 && (*(a1 + 854) & 1) != 0)
      {
        *(a1 + 316) = 0;
        *(a1 + 854) = 0;
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x458uLL, 0);
      }
    }

    else if (v1 >= 0x3E9)
    {
      *(a1 + 854) = 1;
      v2 = *(a1 + 316);
      if (v2 < *(a1 + 318))
      {
        if (*(a1 + 316))
        {
          v3 = *(a1 + 324) + v2;
        }

        else
        {
          v3 = *(a1 + 320);
        }

        *(a1 + 316) = v3;
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x458uLL, *(a1 + 316));
      }
    }
  }
}

uint64_t e1000_write_8bit_ctrl_reg_generic(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v5 = a2;
  v6 = a4 | (a3 << 8);
  __dmb(2u);
  v7 = *(a1 + 16);
  if (a2 == 21504)
  {
    v8 = *(a1 + 284) <= 1;
    v9 = 64;
    v10 = 21504;
    goto LABEL_3;
  }

  if (a2 <= 0x2907uLL)
  {
    if (a2 > 0x2807uLL)
    {
      if (a2 > 0x281FuLL)
      {
        if (a2 == 10272)
        {
          v8 = *(a1 + 284) <= 1;
          v9 = 264;
          v10 = 10272;
        }

        else if (a2 == 10496)
        {
          v8 = *(a1 + 284) <= 1;
          v9 = 312;
          v10 = 10496;
        }

        else
        {
          v11 = a2;
          if (a2 != 10500)
          {
            goto LABEL_6;
          }

          v8 = *(a1 + 284) <= 1;
          v9 = 316;
          v10 = 10500;
        }
      }

      else if (a2 == 10248)
      {
        v8 = *(a1 + 284) <= 1;
        v9 = 280;
        v10 = 10248;
      }

      else if (a2 == 10256)
      {
        v8 = *(a1 + 284) <= 1;
        v9 = 288;
        v10 = 10256;
      }

      else
      {
        v11 = a2;
        if (a2 != 10264)
        {
          goto LABEL_6;
        }

        v8 = *(a1 + 284) <= 1;
        v9 = 296;
        v10 = 10264;
      }
    }

    else if (a2 > 0x2417uLL)
    {
      if (a2 == 9240)
      {
        v8 = *(a1 + 284) <= 1;
        v9 = 32776;
        v10 = 9240;
      }

      else if (a2 == 10240)
      {
        v8 = *(a1 + 284) <= 1;
        v9 = 272;
        v10 = 10240;
      }

      else
      {
        v11 = a2;
        if (a2 != 10244)
        {
          goto LABEL_6;
        }

        v8 = *(a1 + 284) <= 1;
        v9 = 276;
        v10 = 10244;
      }
    }

    else if (a2 == 8544)
    {
      v8 = *(a1 + 284) <= 1;
      v9 = 360;
      v10 = 8544;
    }

    else if (a2 == 8552)
    {
      v8 = *(a1 + 284) <= 1;
      v9 = 352;
      v10 = 8552;
    }

    else
    {
      v11 = a2;
      if (a2 != 9232)
      {
        goto LABEL_6;
      }

      v8 = *(a1 + 284) <= 1;
      v9 = 0x8000;
      v10 = 9232;
    }

LABEL_3:
    if (v8)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    goto LABEL_6;
  }

  if (a2 <= 0x3803uLL)
  {
    if (a2 > 0x340FuLL)
    {
      if (a2 == 13328)
      {
        v8 = *(a1 + 284) <= 1;
        v9 = 32784;
        v10 = 13328;
      }

      else if (a2 == 13336)
      {
        v8 = *(a1 + 284) <= 1;
        v9 = 32792;
        v10 = 13336;
      }

      else
      {
        v11 = a2;
        if (a2 != 14336)
        {
          goto LABEL_6;
        }

        v8 = *(a1 + 284) <= 1;
        v9 = 1056;
        v10 = 14336;
      }
    }

    else if (a2 == 10504)
    {
      v8 = *(a1 + 284) <= 1;
      v9 = 320;
      v10 = 10504;
    }

    else if (a2 == 10512)
    {
      v8 = *(a1 + 284) <= 1;
      v9 = 328;
      v10 = 10512;
    }

    else
    {
      v11 = a2;
      if (a2 != 10520)
      {
        goto LABEL_6;
      }

      v8 = *(a1 + 284) <= 1;
      v9 = 336;
      v10 = 10520;
    }

    goto LABEL_3;
  }

  if (a2 <= 0x3817uLL)
  {
    if (a2 == 14340)
    {
      v8 = *(a1 + 284) <= 1;
      v9 = 1060;
      v10 = 14340;
    }

    else if (a2 == 14344)
    {
      v8 = *(a1 + 284) <= 1;
      v9 = 1064;
      v10 = 14344;
    }

    else
    {
      v11 = a2;
      if (a2 != 14352)
      {
        goto LABEL_6;
      }

      v8 = *(a1 + 284) <= 1;
      v9 = 1072;
      v10 = 14352;
    }

    goto LABEL_3;
  }

  if (a2 > 0x51FFuLL)
  {
    if (a2 == 20992)
    {
      v8 = *(a1 + 284) <= 1;
      v9 = 512;
      v10 = 20992;
    }

    else
    {
      v11 = a2;
      if (a2 != 22016)
      {
        goto LABEL_6;
      }

      v8 = *(a1 + 284) <= 1;
      v9 = 1536;
      v10 = 22016;
    }

    goto LABEL_3;
  }

  if (a2 == 14360)
  {
    v8 = *(a1 + 284) <= 1;
    v9 = 1080;
    v10 = 14360;
    goto LABEL_3;
  }

  v11 = a2;
  if (a2 == 14368)
  {
    v8 = *(a1 + 284) <= 1;
    v9 = 1088;
    v10 = 14368;
    goto LABEL_3;
  }

LABEL_6:
  IOPCIDevice::MemoryWrite32(v7, 0, v11, v6);
  v12 = 639;
  do
  {
    v13 = v12;
    IODelay(5uLL);
    readData = 0;
    if (v5 == 21504)
    {
      if (*(a1 + 284) <= 1)
      {
        v14 = 64;
      }

      else
      {
        v14 = 21504;
      }

      goto LABEL_75;
    }

    if (v5 <= 10503)
    {
      if (v5 > 10247)
      {
        if (v5 > 10271)
        {
          v15 = 10496;
          if (v5 == 10272)
          {
            v16 = *(a1 + 284) <= 1;
            v17 = 10272;
            v18 = 264;
          }

          else
          {
            if (v5 == 10496)
            {
              v19 = *(a1 + 284) <= 1;
              v20 = 312;
              goto LABEL_68;
            }

            v14 = v5;
            if (v5 != 10500)
            {
              goto LABEL_75;
            }

            v16 = *(a1 + 284) <= 1;
            v17 = 10500;
            v18 = 316;
          }
        }

        else if (v5 == 10248)
        {
          v16 = *(a1 + 284) <= 1;
          v17 = 10248;
          v18 = 280;
        }

        else
        {
          v15 = 10256;
          if (v5 == 10256)
          {
            v19 = *(a1 + 284) <= 1;
            v20 = 288;
            goto LABEL_68;
          }

          v14 = v5;
          if (v5 != 10264)
          {
            goto LABEL_75;
          }

          v16 = *(a1 + 284) <= 1;
          v17 = 10264;
          v18 = 296;
        }
      }

      else if (v5 > 9239)
      {
        if (v5 == 9240)
        {
          v16 = *(a1 + 284) <= 1;
          v17 = 9240;
          v18 = 32776;
        }

        else
        {
          v15 = 10240;
          if (v5 == 10240)
          {
            v19 = *(a1 + 284) <= 1;
            v20 = 272;
            goto LABEL_68;
          }

          v14 = v5;
          if (v5 != 10244)
          {
            goto LABEL_75;
          }

          v16 = *(a1 + 284) <= 1;
          v17 = 10244;
          v18 = 276;
        }
      }

      else if (v5 == 8544)
      {
        v16 = *(a1 + 284) <= 1;
        v17 = 8544;
        v18 = 360;
      }

      else if (v5 == 8552)
      {
        v16 = *(a1 + 284) <= 1;
        v17 = 8552;
        v18 = 352;
      }

      else
      {
        v14 = v5;
        if (v5 != 9232)
        {
          goto LABEL_75;
        }

        v16 = *(a1 + 284) <= 1;
        v17 = 9232;
        v18 = 0x8000;
      }

      goto LABEL_72;
    }

    if (v5 <= 14339)
    {
      v15 = 10512;
      if (v5 > 13327)
      {
        if (v5 == 13328)
        {
          v16 = *(a1 + 284) <= 1;
          v17 = 13328;
          v18 = 32784;
        }

        else
        {
          v15 = 13336;
          if (v5 == 13336)
          {
            v19 = *(a1 + 284) <= 1;
            v20 = 32792;
            goto LABEL_68;
          }

          v14 = v5;
          if (v5 != 14336)
          {
            goto LABEL_75;
          }

          v16 = *(a1 + 284) <= 1;
          v17 = 14336;
          v18 = 1056;
        }
      }

      else if (v5 == 10504)
      {
        v16 = *(a1 + 284) <= 1;
        v17 = 10504;
        v18 = 320;
      }

      else
      {
        if (v5 == 10512)
        {
          v19 = *(a1 + 284) <= 1;
          v20 = 328;
          goto LABEL_68;
        }

        v14 = v5;
        if (v5 != 10520)
        {
          goto LABEL_75;
        }

        v16 = *(a1 + 284) <= 1;
        v17 = 10520;
        v18 = 336;
      }

      goto LABEL_72;
    }

    if (v5 <= 14359)
    {
      if (v5 == 14340)
      {
        v16 = *(a1 + 284) <= 1;
        v17 = 14340;
        v18 = 1060;
      }

      else
      {
        v15 = 14344;
        if (v5 == 14344)
        {
          v19 = *(a1 + 284) <= 1;
          v20 = 1064;
          goto LABEL_68;
        }

        v14 = v5;
        if (v5 != 14352)
        {
          goto LABEL_75;
        }

        v16 = *(a1 + 284) <= 1;
        v17 = 14352;
        v18 = 1072;
      }

LABEL_72:
      if (v16)
      {
        v14 = v18;
      }

      else
      {
        v14 = v17;
      }

      goto LABEL_75;
    }

    if (v5 > 20991)
    {
      v15 = 20992;
      if (v5 == 20992)
      {
        v19 = *(a1 + 284) <= 1;
        v20 = 512;
        goto LABEL_68;
      }

      v14 = v5;
      if (v5 != 22016)
      {
        goto LABEL_75;
      }

      v16 = *(a1 + 284) <= 1;
      v17 = 22016;
      v18 = 1536;
      goto LABEL_72;
    }

    v15 = 14360;
    if (v5 != 14360)
    {
      v14 = v5;
      if (v5 != 14368)
      {
        goto LABEL_75;
      }

      v16 = *(a1 + 284) <= 1;
      v17 = 14368;
      v18 = 1088;
      goto LABEL_72;
    }

    v19 = *(a1 + 284) <= 1;
    v20 = 1080;
LABEL_68:
    if (v19)
    {
      v14 = v20;
    }

    else
    {
      v14 = v15;
    }

LABEL_75:
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v14, &readData);
    __dmb(1u);
    if ((readData & 0x80000000) != 0)
    {
      break;
    }

    v12 = v13 - 1;
  }

  while (v13);
  if ((readData & 0x80000000) == 0)
  {
    return 4294967294;
  }

  else
  {
    return 0;
  }
}

void *e1000_init_function_pointers_80003es2lan(void *result)
{
  result[5] = e1000_init_mac_params_80003es2lan;
  result[143] = e1000_init_nvm_params_80003es2lan;
  result[111] = e1000_init_phy_params_80003es2lan;
  return result;
}

uint64_t e1000_init_mac_params_80003es2lan(uint64_t a1)
{
  v2 = *(a1 + 9584) == 4248;
  if (*(a1 + 9584) == 4248)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  v4 = e1000_check_for_copper_link_generic;
  *(a1 + 1116) = v3;
  if (v2)
  {
    v4 = e1000_check_for_serdes_link_generic;
    v5 = e1000_setup_fiber_serdes_link_generic;
  }

  else
  {
    v5 = e1000_setup_copper_link_80003es2lan;
  }

  *(a1 + 72) = v4;
  *(a1 + 200) = v5;
  *(a1 + 326) = 128;
  *(a1 + 844) = 15;
  *(a1 + 850) = 1;
  *(a1 + 848) = 1;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
  __dmb(1u);
  *(a1 + 849) = (readData & 0xE) != 0;
  *(a1 + 847) = 0;
  *(a1 + 104) = e1000_get_bus_info_pcie_generic;
  *(a1 + 152) = e1000_reset_hw_80003es2lan;
  *(a1 + 160) = e1000_init_hw_80003es2lan;
  *(a1 + 192) = e1000_setup_link_generic;
  *(a1 + 64) = e1000_check_mng_mode_generic;
  *(a1 + 144) = e1000_update_mc_addr_list_generic;
  *(a1 + 216) = e1000_write_vfta_generic;
  *(a1 + 96) = e1000_clear_vfta_generic;
  *(a1 + 240) = e1000_read_mac_addr_80003es2lan;
  *(a1 + 48) = e1000_id_led_init_generic;
  *(a1 + 56) = e1000_blink_led_generic;
  *(a1 + 208) = e1000_setup_led_generic;
  *(a1 + 80) = e1000_cleanup_led_generic;
  *(a1 + 128) = e1000_led_on_generic;
  *(a1 + 136) = e1000_led_off_generic;
  *(a1 + 88) = e1000_clear_hw_cntrs_80003es2lan;
  *(a1 + 120) = e1000_get_link_up_info_80003es2lan;
  (*(a1 + 112))(a1);
  return 0;
}

uint64_t e1000_init_nvm_params_80003es2lan(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  v2 = readData;
  v3 = 8;
  *(a1 + 1238) = 8;
  *(a1 + 1234) = 1;
  v4 = *(a1 + 1220);
  if (v4 == 1)
  {
    *(a1 + 1240) = 8;
  }

  else if (v4 == 2)
  {
    *(a1 + 1240) = 32;
    v3 = 16;
  }

  else
  {
    if ((v2 & 0x400) != 0)
    {
      v5 = 32;
    }

    else
    {
      v5 = 8;
    }

    *(a1 + 1240) = v5;
    if ((v2 & 0x400) != 0)
    {
      v3 = 16;
    }

    else
    {
      v3 = 8;
    }
  }

  *(a1 + 1236) = v3;
  *(a1 + 1216) = 2;
  if (((v2 >> 11) & 8) != 0)
  {
    v6 = 8;
  }

  else
  {
    v6 = (v2 >> 11) & 0xF;
  }

  *(a1 + 1232) = 1 << (v6 + 6);
  *(a1 + 1152) = e1000_acquire_nvm_80003es2lan;
  *(a1 + 1160) = e1000_read_nvm_eerd;
  *(a1 + 1168) = e1000_release_nvm_80003es2lan;
  *(a1 + 1184) = e1000_update_nvm_checksum_generic;
  *(a1 + 1192) = e1000_valid_led_default_generic;
  *(a1 + 1200) = e1000_validate_nvm_checksum_generic;
  *(a1 + 1208) = e1000_write_nvm_80003es2lan;
  return 0;
}

uint64_t e1000_init_phy_params_80003es2lan(uint64_t a1)
{
  if (*(a1 + 1116) == 1)
  {
    *(a1 + 1056) = e1000_power_up_phy_copper;
    *(a1 + 1064) = e1000_power_down_phy_copper_80003es2lan;
    *(a1 + 1100) = 1;
    *(a1 + 1122) = 47;
    *(a1 + 1108) = 100;
    *(a1 + 1072) = 5;
    *(a1 + 896) = e1000_acquire_phy_80003es2lan;
    *(a1 + 912) = e1000_check_polarity_m88;
    *(a1 + 920) = e1000_check_reset_block_generic;
    *(a1 + 928) = e1000_phy_sw_reset_generic;
    *(a1 + 944) = e1000_get_cfg_done_80003es2lan;
    *(a1 + 960) = e1000_get_phy_info_m88;
    *(a1 + 1000) = e1000_release_phy_80003es2lan;
    *(a1 + 1008) = e1000_phy_hw_reset_generic;
    *(a1 + 1024) = e1000_set_d3_lplu_state_generic;
    *(a1 + 936) = e1000_phy_force_speed_duplex_80003es2lan;
    *(a1 + 952) = e1000_get_cable_length_80003es2lan;
    *(a1 + 976) = e1000_read_phy_reg_gg82563_80003es2lan;
    *(a1 + 1032) = e1000_write_phy_reg_gg82563_80003es2lan;
    *(a1 + 904) = e1000_cfg_on_link_up_80003es2lan;
    LODWORD(result) = e1000_get_phy_id(a1);
    if (*(a1 + 1104) == 21040288)
    {
      return result;
    }

    else
    {
      return 4294967294;
    }
  }

  else
  {
    result = 0;
    *(a1 + 1072) = 1;
  }

  return result;
}

uint64_t e1000_setup_copper_link_80003es2lan(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData & 0xFFFFE7FF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x40);
  result = e1000_write_kmrn_reg_80003es2lan(a1, 132, 0xFFFF);
  if (!result)
  {
    v6 = 0;
    result = e1000_read_kmrn_reg_80003es2lan(a1, 137, &v6);
    if (!result)
    {
      v4 = v6 | 0x3F;
      v6 |= 0x3Fu;
      result = e1000_write_kmrn_reg_80003es2lan(a1, 137, v4);
      if (!result)
      {
        result = e1000_read_kmrn_reg_80003es2lan(a1, 2, &v6);
        if (!result)
        {
          result = e1000_write_kmrn_reg_80003es2lan(a1, 2, v6 | 0x10u);
          if (!result)
          {
            result = e1000_copper_link_setup_gg82563_80003es2lan(a1);
            if (!result)
            {
              return e1000_setup_copper_link_generic(a1);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t e1000_reset_hw_80003es2lan(uint64_t a1)
{
  e1000_disable_pcie_primary_generic(a1);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD8uLL, 0xFFFFFFFF);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x100uLL, 0);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x400uLL, 8u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(0x2710uLL);
  v7 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &v7);
  __dmb(1u);
  v2 = v7;
  if (*(a1 + 1260))
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  result = e1000_acquire_swfw_sync_80003es2lan(a1, v3);
  if (!result)
  {
    v9 = 0;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x4000000);
    if (*(a1 + 1260))
    {
      v5 = 4;
    }

    else
    {
      v5 = 2;
    }

    e1000_release_swfw_sync_80003es2lan(a1, v5);
    if (!e1000_read_kmrn_reg_80003es2lan(a1, 9, &v9))
    {
      e1000_write_kmrn_reg_80003es2lan(a1, 9, v9 | 0x200);
    }

    result = e1000_get_auto_rd_done_generic(a1);
    if (!result)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD8uLL, 0xFFFFFFFF);
      v6 = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xC0uLL, &v6);
      __dmb(1u);
      return e1000_check_alt_mac_addr_generic(a1);
    }
  }

  return result;
}

uint64_t e1000_init_hw_80003es2lan(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3828uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3828uLL, v2 | 0x400000);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3928uLL, &readData);
  __dmb(1u);
  v3 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3928uLL, v3 | 0x400000);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3840uLL, &readData);
  __dmb(1u);
  v4 = readData;
  if (*(a1 + 1116) == 1)
  {
    v5 = -2013265921;
  }

  else
  {
    v5 = -2014314497;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3840uLL, v5 & v4);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3940uLL, &readData);
  __dmb(1u);
  v6 = readData;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x400uLL, &readData);
  __dmb(1u);
  v7 = v6 & 0xEFFFFFFF | (((readData >> 28) & 1) << 28);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3940uLL, v7 ^ 0x10000000);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5008uLL, &readData);
  __dmb(1u);
  v8 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5008uLL, v8 | 0x30000);
  (*(a1 + 48))(a1);
  (*(a1 + 96))(a1);
  e1000_init_rx_addrs_generic(a1, *(a1 + 844));
  if (*(a1 + 326))
  {
    v9 = 0;
    v10 = 1024;
    v11 = 20992;
    do
    {
      __dmb(2u);
      if (v10 == 512)
      {
        if (*(a1 + 284) <= 1)
        {
          v12 = 64;
        }

        else
        {
          v12 = 21504;
        }
      }

      else if (v9)
      {
        v12 = v11;
        if (!v10)
        {
          if (*(a1 + 284) <= 1)
          {
            v12 = 1536;
          }

          else
          {
            v12 = 22016;
          }
        }
      }

      else if (*(a1 + 284) <= 1)
      {
        v12 = 512;
      }

      else
      {
        v12 = 20992;
      }

      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v12, 0);
      ++v9;
      v11 += 4;
      v10 -= 4;
    }

    while (v9 < *(a1 + 326));
  }

  else
  {
    LOWORD(v9) = 0;
  }

  v21 = v9;
  v13 = (*(a1 + 192))(a1);
  if (!v13)
  {
    v22 = 0;
    if (!e1000_read_kmrn_reg_80003es2lan(a1, 9, &v22))
    {
      e1000_write_kmrn_reg_80003es2lan(a1, 9, v22 | 0x200);
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3828uLL, &readData);
    __dmb(1u);
    v14 = readData & 0xFF81FFFF;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3828uLL, v14 | 0x1410000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3928uLL, &readData);
    __dmb(1u);
    v15 = readData & 0xFF81FFFF;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3928uLL, v15 | 0x1410000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x400uLL, &readData);
    __dmb(1u);
    v16 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x400uLL, v16 | 0x1000000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x404uLL, &readData);
    __dmb(1u);
    v17 = readData & 0xFFF003FF;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x404uLL, v17 | 0x10000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x410uLL, &readData);
    __dmb(1u);
    v18 = readData & 0xFFFFFC00;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x410uLL, v18 | 8);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5F04uLL, &readData);
    __dmb(1u);
    v19 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5F04uLL, v19 & 0xFFEFFFFF);
    *(a1 + 1376) = 1;
    v13 = e1000_read_kmrn_reg_80003es2lan(a1, 31, &v21);
    if (!v13 && (v21 & 0xC) == 4)
    {
      *(a1 + 1376) = 0;
    }

    e1000_clear_hw_cntrs_80003es2lan(a1);
  }

  return v13;
}

uint64_t e1000_read_mac_addr_80003es2lan(uint64_t a1)
{
  result = e1000_check_alt_mac_addr_generic(a1);
  if (!result)
  {

    return e1000_read_mac_addr_generic(a1);
  }

  return result;
}

void e1000_clear_hw_cntrs_80003es2lan(uint64_t a1)
{
  e1000_clear_hw_cntrs_base_generic(a1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x405CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4060uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4064uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4068uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x406CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4070uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40D8uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40DCuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40E0uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40E4uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40E8uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40ECuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4004uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x400CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4034uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x403CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40F8uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40FCuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40B4uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40B8uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40BCuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4100uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4124uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4104uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4108uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x410CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4110uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4118uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x411CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4120uLL, &readData);
  __dmb(1u);
}

uint64_t e1000_get_link_up_info_80003es2lan(uint64_t a1, __int16 *a2, __int16 *a3)
{
  if (*(a1 + 1116) == 1)
  {
    speed_and_duplex_copper_generic = e1000_get_speed_and_duplex_copper_generic(a1, a2, a3);
    (*(a1 + 904))(a1);
    return speed_and_duplex_copper_generic;
  }

  else
  {

    return e1000_get_speed_and_duplex_fiber_serdes_generic(a1, a2, a3);
  }
}

uint64_t e1000_write_kmrn_reg_80003es2lan(uint64_t a1, char a2, int a3)
{
  v6 = e1000_acquire_swfw_sync_80003es2lan(a1, 8);
  if (!v6)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x34uLL, a3 & 0xFFE0FFFF | ((a2 & 0x1F) << 16));
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(2uLL);
    e1000_release_swfw_sync_80003es2lan(a1, 8);
  }

  return v6;
}

uint64_t e1000_read_kmrn_reg_80003es2lan(uint64_t a1, char a2, _WORD *a3)
{
  v6 = e1000_acquire_swfw_sync_80003es2lan(a1, 8);
  if (!v6)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x34uLL, ((a2 & 0x1F) << 16) | 0x200000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(2uLL);
    v8 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x34uLL, &v8);
    __dmb(1u);
    *a3 = v8;
    e1000_release_swfw_sync_80003es2lan(a1, 8);
  }

  return v6;
}

uint64_t e1000_copper_link_setup_gg82563_80003es2lan(uint64_t a1)
{
  v10 = 0;
  if (*(a1 + 1134))
  {
    goto LABEL_2;
  }

  result = (*(a1 + 976))(a1, 85, &v10);
  if (!result)
  {
    v10 |= 0x17u;
    result = (*(a1 + 1032))(a1, 85);
    if (!result)
    {
      result = (*(a1 + 976))(a1, 16, &v10);
      if (!result)
      {
        v5 = v10 & 0xFF9F;
        v6 = *(a1 + 1130);
        v7 = v10 | 0x60;
        if (v6 == 2)
        {
          v7 = v5 | 0x20;
        }

        if (v6 != 1)
        {
          v5 = v7;
        }

        v8 = v5 & 0xFFFD;
        v10 = v5 & 0xFFFD;
        if (*(a1 + 1131) == 1)
        {
          v8 = v5 | 2;
          v10 = v5 | 2;
        }

        result = (*(a1 + 1032))(a1, 16, v8);
        if (!result)
        {
          result = (*(a1 + 928))(a1);
          if (!result)
          {
LABEL_2:
            v10 = 2056;
            result = e1000_write_kmrn_reg_80003es2lan(a1, 0, 2056);
            if (!result)
            {
              result = e1000_read_kmrn_reg_80003es2lan(a1, 31, &v10);
              if (!result)
              {
                v3 = v10 | 0x2000;
                v10 |= 0x2000u;
                result = e1000_write_kmrn_reg_80003es2lan(a1, 31, v3);
                if (!result)
                {
                  result = (*(a1 + 976))(a1, 26, &v10);
                  if (!result)
                  {
                    v10 &= ~0x2000u;
                    result = (*(a1 + 1032))(a1, 26);
                    if (!result)
                    {
                      readData = 0;
                      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
                      __dmb(1u);
                      v4 = readData;
                      __dmb(2u);
                      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v4 & 0xFF3FFFFF);
                      result = (*(a1 + 976))(a1, 6196, &v10);
                      if (!result)
                      {
                        if (((*(a1 + 64))(a1) & 1) != 0 || (v10 |= 1u, result = (*(a1 + 1032))(a1, 6196), !result) && (result = (*(a1 + 976))(a1, 6192, &v10), !result) && (v10 &= ~0x800u, result = (*(a1 + 1032))(a1, 6192), !result))
                        {
                          result = (*(a1 + 976))(a1, 6226, &v10);
                          if (!result)
                          {
                            v10 |= 0x10u;
                            return (*(a1 + 1032))(a1, 6226);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t e1000_acquire_swfw_sync_80003es2lan(uint64_t a1, int a2)
{
  v4 = a2 | (a2 << 16);
  v5 = 50;
  while (1)
  {
    if (e1000_get_hw_semaphore_generic(a1))
    {
      return 4294967283;
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B5CuLL, &readData);
    __dmb(1u);
    v6 = readData;
    if ((readData & v4) == 0)
    {
      break;
    }

    e1000_put_hw_semaphore_generic(a1);
    IODelay(0x1388uLL);
    if (!--v5)
    {
      return 4294967283;
    }
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B5CuLL, v6 | a2);
  e1000_put_hw_semaphore_generic(a1);
  return 0;
}

void e1000_release_swfw_sync_80003es2lan(uint64_t a1, __int16 a2)
{
    ;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B5CuLL, &readData);
  __dmb(1u);
  v4 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B5CuLL, v4 & ~a2);
  e1000_put_hw_semaphore_generic(a1);
}

uint64_t e1000_acquire_phy_80003es2lan(uint64_t a1)
{
  if (*(a1 + 1260))
  {
    v1 = 4;
  }

  else
  {
    v1 = 2;
  }

  return e1000_acquire_swfw_sync_80003es2lan(a1, v1);
}

void e1000_release_phy_80003es2lan(uint64_t a1)
{
  if (*(a1 + 1260))
  {
    v1 = 4;
  }

  else
  {
    v1 = 2;
  }

  e1000_release_swfw_sync_80003es2lan(a1, v1);
}

uint64_t e1000_acquire_nvm_80003es2lan(uint64_t a1)
{
  v2 = e1000_acquire_swfw_sync_80003es2lan(a1, 1);
  if (!v2)
  {
    v2 = e1000_acquire_nvm_generic(a1);
    if (v2)
    {
      e1000_release_swfw_sync_80003es2lan(a1, 1);
    }
  }

  return v2;
}

void e1000_release_nvm_80003es2lan(uint64_t a1)
{
  e1000_release_nvm_generic(a1);

  e1000_release_swfw_sync_80003es2lan(a1, 1);
}

void e1000_power_down_phy_copper_80003es2lan(uint64_t a1)
{
  if (((*(a1 + 64))() & 1) == 0 && !(*(a1 + 920))(a1))
  {

    e1000_power_down_phy_copper(a1);
  }
}

uint64_t e1000_get_cfg_done_80003es2lan(uint64_t a1)
{
  if (*(a1 + 1260) == 1)
  {
    v2 = 0x80000;
  }

  else
  {
    v2 = 0x40000;
  }

  v3 = -100;
  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x1010uLL, &readData);
    __dmb(1u);
    if ((readData & v2) != 0)
    {
      break;
    }

    IODelay(0x3E8uLL);
    if (__CFADD__(v3++, 1))
    {
      return 4294967287;
    }
  }

  return 0;
}

uint64_t e1000_phy_force_speed_duplex_80003es2lan(uint64_t a1)
{
  v1 = *(a1 + 976);
  if (!v1)
  {
    return 0;
  }

  v6 = 0;
  v5 = 0;
  result = v1();
  if (!result)
  {
    v6 &= 0xFF9Fu;
    result = (*(a1 + 1032))(a1, 16);
    if (!result)
    {
      result = (*(a1 + 976))(a1, 0, &v6);
      if (!result)
      {
        e1000_phy_force_speed_duplex_setup(a1, &v6);
        v6 |= 0x8000u;
        result = (*(a1 + 1032))(a1, 0);
        if (!result)
        {
          IODelay(1uLL);
          if (*(a1 + 1136) != 1 || (result = e1000_phy_has_link_generic(a1, 0x14u, 0x186A0u, &v5), !result) && (v5 || (result = e1000_phy_reset_dsp_generic(a1), !result)) && (result = e1000_phy_has_link_generic(a1, 0x14u, 0x186A0u, &v5), !result))
          {
            result = (*(a1 + 976))(a1, 85, &v6);
            if (!result)
            {
              if ((*(a1 + 846) & 3) != 0)
              {
                v4 = 4;
              }

              else
              {
                v4 = 5;
              }

              return (*(a1 + 1032))(a1, 85, v6 & 0xFFF8 | v4 & 0xFFFD | 0x10u);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t e1000_get_cable_length_80003es2lan(uint64_t a1)
{
  v1 = *(a1 + 976);
  if (!v1)
  {
    return 0;
  }

  v7 = 0;
  result = v1();
  if (!result)
  {
    v4 = v7 & 7;
    if (v4 <= 5)
    {
      result = 0;
      v5 = e1000_gg82563_cable_length_table[v4];
      *(a1 + 1128) = v5;
      v6 = e1000_gg82563_cable_length_table[(v4 + 5)];
      *(a1 + 1126) = v6;
      *(a1 + 1124) = (v6 + v5) >> 1;
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

uint64_t e1000_read_phy_reg_gg82563_80003es2lan(uint64_t a1, unsigned __int16 a2, _WORD *a3)
{
  if (*(a1 + 1260))
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  v7 = e1000_acquire_swfw_sync_80003es2lan(a1, v6);
  if (v7)
  {
    return v7;
  }

  v8 = a2 & 0x1F;
  if (v8 <= 0x1D)
  {
    v9 = 22;
  }

  else
  {
    v9 = 29;
  }

  v10 = a2 >> 5;
  v15 = v10;
  phy_reg_mdic = e1000_write_phy_reg_mdic(a1, v9, v10);
  if (phy_reg_mdic)
  {
    goto LABEL_13;
  }

  if (*(a1 + 1376) != 1)
  {
    phy_reg_mdic = e1000_read_phy_reg_mdic(a1, v8, a3);
LABEL_13:
    v7 = phy_reg_mdic;
    goto LABEL_14;
  }

  IODelay(0xC8uLL);
  e1000_read_phy_reg_mdic(a1, v9, &v15);
  if (v10 == v15)
  {
    IODelay(0xC8uLL);
    v7 = e1000_read_phy_reg_mdic(a1, v8, a3);
    IODelay(0xC8uLL);
LABEL_14:
    if (*(a1 + 1260))
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    e1000_release_swfw_sync_80003es2lan(a1, v12);
    return v7;
  }

  if (*(a1 + 1260))
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  e1000_release_swfw_sync_80003es2lan(a1, v14);
  return 4294967294;
}

uint64_t e1000_write_phy_reg_gg82563_80003es2lan(uint64_t a1, unsigned __int16 a2, int a3)
{
  if (*(a1 + 1260))
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  v7 = e1000_acquire_swfw_sync_80003es2lan(a1, v6);
  if (v7)
  {
    return v7;
  }

  v8 = a2 & 0x1F;
  if (v8 <= 0x1D)
  {
    v9 = 22;
  }

  else
  {
    v9 = 29;
  }

  v10 = a2 >> 5;
  v15 = v10;
  v11 = e1000_write_phy_reg_mdic(a1, v9, v10);
  if (v11)
  {
    goto LABEL_13;
  }

  if (*(a1 + 1376) != 1)
  {
    v11 = e1000_write_phy_reg_mdic(a1, v8, a3);
LABEL_13:
    v7 = v11;
    goto LABEL_14;
  }

  IODelay(0xC8uLL);
  e1000_read_phy_reg_mdic(a1, v9, &v15);
  if (v10 == v15)
  {
    IODelay(0xC8uLL);
    v7 = e1000_write_phy_reg_mdic(a1, v8, a3);
    IODelay(0xC8uLL);
LABEL_14:
    if (*(a1 + 1260))
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    e1000_release_swfw_sync_80003es2lan(a1, v12);
    return v7;
  }

  if (*(a1 + 1260))
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  e1000_release_swfw_sync_80003es2lan(a1, v14);
  return 4294967294;
}

uint64_t e1000_cfg_on_link_up_80003es2lan(uint64_t a1)
{
  if (*(a1 + 1116) != 1)
  {
    return 0;
  }

  v17 = v1;
  v18 = v2;
  v13 = 0;
  result = e1000_get_speed_and_duplex_copper_generic(a1, &v13 + 1, &v13);
  if (!result)
  {
    if (HIWORD(v13) == 1000)
    {
      v16 = 0;
      result = e1000_write_kmrn_reg_80003es2lan(a1, 16, 0);
      if (!result)
      {
        v15 = 0;
        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x410uLL, &readData);
        __dmb(1u);
        v5 = readData & 0xFFFFFC00;
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x410uLL, v5 | 8);
        v6 = 0;
        while (1)
        {
          result = (*(a1 + 976))(a1, 6192, &v16);
          if (result)
          {
            break;
          }

          result = (*(a1 + 976))(a1, 6192, &v15);
          if (result)
          {
            break;
          }

          if (v16 == v15 || v6++ >= 4)
          {
            v8 = v16 & 0xF7FF;
            goto LABEL_26;
          }
        }
      }
    }

    else
    {
      v9 = v13;
      v16 = 4;
      result = e1000_write_kmrn_reg_80003es2lan(a1, 16, 4);
      if (!result)
      {
        v15 = 0;
        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x410uLL, &readData);
        __dmb(1u);
        v10 = readData & 0xFFFFFC00 | 9;
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x410uLL, v10);
        v11 = 0;
        while (1)
        {
          result = (*(a1 + 976))(a1, 6192, &v16);
          if (result)
          {
            break;
          }

          result = (*(a1 + 976))(a1, 6192, &v15);
          if (result)
          {
            break;
          }

          if (v16 == v15 || v11++ >= 4)
          {
            v8 = v16 & 0xF7FF | ((v9 == 1) << 11);
LABEL_26:
            v16 = v8;
            return (*(a1 + 1032))(a1, 6192);
          }
        }
      }
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::probe(DriverKit_AppleEthernetE1000_IVars *this, IOPCIDevice *a2)
{
  v4 = 3758097084;
  v20[0] = 1;
  IOParseBootArgNumber("e1000", v20, 4);
  if (v20[0])
  {
    obj = 0;
    if (IOService::CopyProperties(a2, &obj, 0))
    {
      DriverKit_AppleEthernetE1000_IVars::probe();
    }

    Object = OSDictionary::getObject(obj, "device-id");
    v6 = OSMetaClassBase::safeMetaCast(Object, gOSDataMetaClass);
    BytesNoCopy = OSData::getBytesNoCopy(v6);
    v8 = *BytesNoCopy;
    v9 = &vendor_info_array;
    v10 = 183;
    while (*v9 != v8)
    {
      v9 += 4;
      if (!--v10)
      {
        if (pcindkll)
        {
          v18 = *BytesNoCopy;
          DriverKit_AppleEthernetE1000_IVars::probe();
          v4 = v20[1];
        }

        else
        {
          v4 = 3758097088;
        }

        goto LABEL_17;
      }
    }

    if (pcindkll)
    {
      DriverKit_AppleEthernetE1000_IVars::probe(v9);
    }

    *this = this;
    *(this + 2) = a2;
    *(this + 4795) = -32634;
    *(this + 4792) = v8;
    v11 = OSDictionary::getObject(obj, "subsystem-vendor-id");
    v12 = OSMetaClassBase::safeMetaCast(v11, gOSDataMetaClass);
    if (v12)
    {
      *(this + 4793) = *OSData::getBytesNoCopy(v12);
    }

    v13 = OSDictionary::getObject(obj, "subsystem-id");
    v14 = OSMetaClassBase::safeMetaCast(v13, gOSDataMetaClass);
    if (v14)
    {
      *(this + 4794) = *OSData::getBytesNoCopy(v14);
    }

    v15 = OSDictionary::getObject(obj, "revision-id");
    v16 = OSMetaClassBase::safeMetaCast(v15, gOSDataMetaClass);
    *(this + 9592) = *OSData::getBytesNoCopy(v16);
    if (obj)
    {
      (obj->release)(obj);
      obj = 0;
    }

    obj = OSDictionaryCreate();
    OSDictionarySetStringValue(obj, "IOVendor", "Intel");
    OSDictionarySetStringValue(obj, "IOModel", *(v9 + 1));
    IOService::SetProperties(*(this + 1200), obj, 0);
    v4 = 0;
LABEL_17:
    if (obj)
    {
      (obj->release)(obj);
    }
  }

  return v4;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::start(DriverKit_AppleEthernetE1000_IVars *this)
{
  IOPCIDevice::ConfigurationRead16(*(this + 1201), 4uLL, this + 631);
  e1000_setup_init_funcs(this, 1);
  e1000_get_bus_info(this);
  if (*(this + 71) <= 12)
  {
    e1000_init_script_state_82541(this, 1);
    e1000_set_tbi_compatibility_82543(this, 1);
  }

  if (e1000_check_reset_block(this) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "start";
    v11 = 1024;
    v12 = 354;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): PHY reset is blocked due to SOL/IDER session.\n", &v9, 0x12u);
  }

  e1000_reset_hw(this);
  v2 = e1000_validate_nvm_checksum(this);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "start";
      v11 = 1024;
      v12 = 359;
      v13 = 1024;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): e1000_validate_nvm_checksum() returned %d\n", &v9, 0x18u);
    }
  }

  if (e1000_read_mac_addr(this))
  {
    v4 = e1000_read_mac_addr_generic(this) == 0;
  }

  else
  {
    v4 = 1;
  }

  v9 = 0;
  if (*(this + 71) <= 1)
  {
    v5 = 64;
  }

  else
  {
    v5 = 21504;
  }

  IOPCIDevice::MemoryRead32(*(this + 2), 0, v5, &v9);
  __dmb(1u);
  *(this + 2642) = v9;
  v9 = 0;
  IOPCIDevice::MemoryRead32(*(this + 2), 0, 0x5404uLL, &v9);
  __dmb(1u);
  *(this + 2643) = v9;
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::start(this + 2642);
  }

  *(this + 4836) = 257;
  v6 = *(this + 71);
  if (v6 < 29)
  {
    if (v6 <= 12)
    {
      *(this + 855) = 1;
    }
  }

  else
  {
    v9 = 0;
    IOParseBootArgNumber("e1000", &v9, 4);
    v7 = *(this + 71);
    if (v7 == 34 || v7 == 36 && (v9 & 2) != 0)
    {
      *(this + 10393) = 1;
      *&v15.ipv4_cnt = 0x20001000081008;
      *&v15.wakeTCPCount = 0x2000040A00640020;
      if (IOUserNetworkEthernet::ReportNicProxyLimits(*(this + 1200), v15, 0))
      {
        DriverKit_AppleEthernetE1000_IVars::start();
      }
    }
  }

  if (!v4)
  {
    return 3758097084;
  }

  DriverKit_AppleEthernetE1000_IVars::getHWControl(this);
  return 0;
}

void DriverKit_AppleEthernetE1000_IVars::getHWControl(DriverKit_AppleEthernetE1000_IVars *this)
{
  v1 = *(this + 71);
  __dmb(2u);
  v2 = *(this + 2);
  if (v1 == 15)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(v2, 0, 0x5B50uLL, &readData);
    __dmb(1u);
    v3 = readData | 8;
    v4 = v2;
    v5 = 23376;
  }

  else
  {
    v6 = 0;
    IOPCIDevice::MemoryRead32(v2, 0, 0x18uLL, &v6);
    __dmb(1u);
    v3 = v6 | 0x10000000;
    v4 = v2;
    v5 = 24;
  }

  IOPCIDevice::MemoryWrite32(v4, 0, v5, v3);
}

uint64_t DriverKit_AppleEthernetE1000_IVars::resetHW(IOPCIDevice **this)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::resetHW();
  }

  if (e1000_phy_hw_reset(this) && (pcindkll & 1) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::resetHW();
  }

  if (e1000_reset_hw(this) && (pcindkll & 1) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::resetHW();
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x5800uLL, 0);
  if (*(this + 71) == 34)
  {
    __dmb(2u);
    v2 = this[2];
    readData = 0;
    IOPCIDevice::MemoryRead32(v2, 0, 0x5BB8uLL, &readData);
    __dmb(1u);
    IOPCIDevice::MemoryWrite32(v2, 0, 0x5BB8uLL, readData & 0xFFFFFF7F);
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x38uLL, 0x8100u);
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::resetHW();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::initHW(IOPCIDevice **this)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::initHW(this);
  }

  __dmb(2u);
  v2 = this + 2;
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x38uLL, 0x8100u);
  if (*(this + 2599) >= 0x601u)
  {
    v3 = 15360;
  }

  else
  {
    v3 = 4096;
  }

  if (*(this + 2599) >= 0x601u)
  {
    v4 = 12288;
  }

  else
  {
    v4 = 2048;
  }

  *(this + 216) = v3;
  *(this + 217) = v4;
  *(this + 436) = -1;
  *(this + 876) = 1;
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::initHW();
  }

  __dmb(2u);
  if (*(this + 71) <= 1)
  {
    v5 = 360;
  }

  else
  {
    v5 = 8544;
  }

  IOPCIDevice::MemoryWrite32(this[2], 0, v5, 0x80008180);
  __dmb(2u);
  if (*(this + 71) <= 1)
  {
    v6 = 352;
  }

  else
  {
    v6 = 8552;
  }

  IOPCIDevice::MemoryWrite32(this[2], 0, v6, 0x8190u);
  DriverKit_AppleEthernetE1000_IVars::resetHW(this);
  if (e1000_init_hw(this))
  {
    v7 = 3758097084;
  }

  else
  {
    v7 = 0;
  }

  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::initHW(v2);
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*v2, 0, 0, &readData);
  __dmb(1u);
  v8 = readData;
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::initHW();
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*v2, 0, 0, v8 | 0x18000000);
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::initHW();
  }

  return v7;
}

void DriverKit_AppleEthernetE1000_IVars::enableIntrs(IOPCIDevice **this)
{
  v2 = (this + 1024);
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::enableIntrs();
  }

  v2[2200] = 1;
  if (!this[1205])
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0xE0uLL, 0xFFFFFFFF);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0xD0uLL, 0x9Du);
    goto LABEL_52;
  }

  if (*(this + 71) == 29)
  {
    v3 = 0x80000000;
  }

  else
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x1514uLL, 0xC0000011);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x1740uLL, 0x8000u);
    v8 = *(this + 71);
    if ((v8 - 31) < 6)
    {
      if (v2[1481])
      {
        v9 = 0;
        v10 = 0;
        v3 = 1;
        v11 = 0x10000;
        do
        {
          readData = 0;
          IOPCIDevice::MemoryRead32(this[2], 0, (v9 & 0x7FFFFFFCu) + 5888, &readData);
          __dmb(1u);
          v12 = v10 + 1;
          if (v10)
          {
            v13 = v11 | readData & 0xFF00FFFF | 0x800000;
          }

          else
          {
            v13 = (v10 + 1) | readData & 0xFFFFFF00 | 0x80;
          }

          __dmb(2u);
          IOPCIDevice::MemoryWrite32(this[2], 0, (v9 & 0x7FFFFFFCu) + 5888, v13);
          v3 |= 2 << v10;
          v11 += 0x10000;
          v9 += 2;
          ++v10;
        }

        while (v12 < v2[1481]);
      }

      else
      {
        v3 = 1;
      }

      if (v2[1480])
      {
        v19 = 0;
        v20 = 0;
        do
        {
          readData = 0;
          IOPCIDevice::MemoryRead32(this[2], 0, (v19 & 0x7FFFFFFCu) + 5888, &readData);
          __dmb(1u);
          v21 = readData;
          v22 = v20 + 1;
          if (v20)
          {
            v23 = 0xFFFFFF;
          }

          else
          {
            v23 = -65281;
          }

          if (v20)
          {
            v24 = 24;
          }

          else
          {
            v24 = 8;
          }

          if (v20)
          {
            v25 = 0x80000000;
          }

          else
          {
            v25 = 0x8000;
          }

          __dmb(2u);
          IOPCIDevice::MemoryWrite32(this[2], 0, (v19 & 0x7FFFFFFCu) + 5888, (v22 << v24) | v25 | v21 & v23);
          v3 |= 2 << v20;
          v19 += 2;
          ++v20;
        }

        while (v22 < v2[1480]);
      }

      goto LABEL_51;
    }

    if (v8 != 29)
    {
      if (v8 == 30)
      {
        if (v2[1481])
        {
          v14 = 0;
          v15 = 0;
          v3 = 1;
          v16 = 0x10000;
          do
          {
            readData = 0;
            IOPCIDevice::MemoryRead32(this[2], 0, v14 & 0x1C | 0x1700u, &readData);
            __dmb(1u);
            v17 = v15 + 1;
            if (v15 <= 7)
            {
              v18 = v15 + (readData & 0xFFFFFF00) + 129;
            }

            else
            {
              v18 = v16 | readData & 0xFF00FFFF | 0x800000;
            }

            __dmb(2u);
            IOPCIDevice::MemoryWrite32(this[2], 0, v14 & 0x1C | 0x1700u, v18);
            v3 |= 2 << v15;
            v16 += 0x10000;
            v14 += 4;
            ++v15;
          }

          while (v17 < v2[1481]);
        }

        else
        {
          v3 = 1;
        }

        if (v2[1480])
        {
          v26 = 0;
          v27 = 0;
          v28 = 33024;
          v29 = 0x1000000;
          do
          {
            readData = 0;
            IOPCIDevice::MemoryRead32(this[2], 0, v26 & 0x1C | 0x1700u, &readData);
            __dmb(1u);
            v30 = v27 + 1;
            if (v27 <= 7)
            {
              v31 = v28 + (readData & 0xFFFF00FF);
            }

            else
            {
              v31 = (v29 + (readData & 0xFFFFFF)) | 0x80000000;
            }

            __dmb(2u);
            IOPCIDevice::MemoryWrite32(this[2], 0, v26 & 0x1C | 0x1700u, v31);
            v3 |= 2 << v27;
            v28 += 256;
            v29 += 0x1000000;
            v26 += 4;
            ++v27;
          }

          while (v30 < v2[1480]);
        }
      }

      else
      {
        v3 = 1;
      }

      goto LABEL_51;
    }

    v3 = -2147483647;
  }

  __dmb(2u);
  v4 = this[2];
  readData = 0;
  IOPCIDevice::MemoryRead32(v4, 0, 0x18uLL, &readData);
  __dmb(1u);
  IOPCIDevice::MemoryWrite32(v4, 0, 0x18uLL, readData | 0x81000001);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x1600uLL, 0x80000000);
  if (v2[1481])
  {
    v5 = 0;
    v6 = 5636;
    do
    {
      v7 = 257 << v5;
      v3 |= 257 << v5++;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(this[2], 0, v6, v7);
      v6 += 4;
    }

    while (v5 < v2[1481]);
  }

LABEL_51:
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x152CuLL, v3);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x1530uLL, v3);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x1524uLL, v3);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0xD0uLL, 4u);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x1680uLL, 0);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x1684uLL, 0);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x1684uLL, 0x100u);
LABEL_52:
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::enableIntrs();
  }
}

void DriverKit_AppleEthernetE1000_IVars::disableIntrs(DriverKit_AppleEthernetE1000_IVars *this)
{
  if ((pcindkll & 0x400) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::disableIntrs();
  }

  *(this + 10392) = 0;
  if (*(this + 1205))
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(this + 2), 0, 0x1528uLL, 0xFFFFFFFF);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(this + 2), 0, 0x152CuLL, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(this + 2), 0, 0xE0uLL, 0);
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(this + 2), 0, 0xD8uLL, 0xFFFFFFFF);
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::disableIntrs();
  }
}

uint64_t DriverKit_AppleEthernetE1000_IVars::initTransmitUnit(IOPCIDevice **this)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::initTransmitUnit();
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(this[2], 0, 0x400uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x400uLL, v2 & 0xFFFFFFFD);
  v22 = 0;
  IOPCIDevice::MemoryRead32(this[2], 0, 8uLL, &v22);
  __dmb(1u);
  IODelay(0x2710uLL);
  if (*(this + 9672))
  {
    v3 = 0;
    v4 = 0;
    v5 = (this + 1244);
    v6 = 57344;
    do
    {
      __dmb(2u);
      v7 = v4 << 8;
      if (v6 == 57344)
      {
        if (*(this + 71) <= 1)
        {
          v8 = 1056;
        }

        else
        {
          v8 = 14336;
        }
      }

      else if (v4 <= 3)
      {
        v8 = v7 | 0x3800;
      }

      else
      {
        v8 = v6;
      }

      IOPCIDevice::MemoryWrite32(this[2], 0, v8, *v5);
      __dmb(2u);
      if (v6 == 57344)
      {
        if (*(this + 71) <= 1)
        {
          v9 = 1060;
        }

        else
        {
          v9 = 14340;
        }
      }

      else if (v4 <= 3)
      {
        v9 = (v4 << 8) | 0x3804;
      }

      else
      {
        v9 = v6 + 4;
      }

      IOPCIDevice::MemoryWrite32(this[2], 0, v9, v5[1]);
      __dmb(2u);
      if (v6 == 57344)
      {
        if (*(this + 71) <= 1)
        {
          v10 = 1064;
        }

        else
        {
          v10 = 14344;
        }
      }

      else if (v4 <= 3)
      {
        v10 = (v4 << 8) | 0x3808;
      }

      else
      {
        v10 = v6 + 8;
      }

      IOPCIDevice::MemoryWrite32(this[2], 0, v10, 0x800u);
      __dmb(2u);
      if (v6 == 57344)
      {
        if (*(this + 71) <= 1)
        {
          v11 = 1072;
        }

        else
        {
          v11 = 14352;
        }
      }

      else if (v4 <= 3)
      {
        v11 = (v4 << 8) | 0x3810;
      }

      else
      {
        v11 = v6 + 16;
      }

      IOPCIDevice::MemoryWrite32(this[2], 0, v11, *(v5 - 36));
      __dmb(2u);
      if (v6 == 57344)
      {
        if (*(this + 71) <= 1)
        {
          v12 = 1080;
        }

        else
        {
          v12 = 14360;
        }
      }

      else if (v4 > 3)
      {
        v12 = v6 + 24;
      }

      else
      {
        v12 = (v4 << 8) | 0x3818;
      }

      IOPCIDevice::MemoryWrite32(this[2], 0, v12, *(v5 - 35));
      if (*(this + 71) <= 28)
      {
        v14 = v6 - 57344;
        LODWORD(v7) = v3;
      }

      else
      {
        v13 = *v5 + 2048;
        __dmb(2u);
        v14 = v4 << 6;
        if (v4 >= 4)
        {
          v15 = (v6 + 56);
        }

        else
        {
          v15 = v3 | 0x3838u;
        }

        if (v4 >= 4)
        {
          v16 = (v6 + 60);
        }

        else
        {
          v16 = v3 | 0x383Cu;
        }

        IOPCIDevice::MemoryWrite32(this[2], 0, v15, v13 | 1);
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(this[2], 0, v16, HIDWORD(v13));
      }

      __dmb(2u);
      if (v4 >= 4)
      {
        v17 = (v14 + 57384);
      }

      else
      {
        v17 = (v7 + 14376);
      }

      IOPCIDevice::MemoryWrite32(this[2], 0, v17, 0x2000108u);
      ++v4;
      v6 += 64;
      v3 += 256;
      v5 += 88;
    }

    while (v4 < *(this + 9672));
  }

  v18 = *(this + 71);
  if (v18 == 1)
  {
    v19 = 10487818;
  }

  else if (v18 == 18)
  {
    v19 = 7340040;
  }

  else if ((*(this + 279) & 0xFFFFFFFE) == 2)
  {
    v19 = 6299657;
  }

  else
  {
    v19 = 6299656;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x410uLL, v19);
  if (*(this + 71) == 34 && (pcindkll & 1) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::initTransmitUnit();
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x400uLL, 0xA503F0FA);
  v21 = 0;
  IOPCIDevice::MemoryRead32(this[2], 0, 8uLL, &v21);
  __dmb(1u);
  IODelay(0x2710uLL);
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::initTransmitUnit();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::up(DriverKit_AppleEthernetE1000_IVars *this)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::up();
  }

  DriverKit_AppleEthernetE1000_IVars::getHWControl(this);
  DriverKit_AppleEthernetE1000_IVars::deactivateWOL(this);
  DriverKit_AppleEthernetE1000_IVars::initHW(this);
  e1000_power_up_phy(this);
  Rings = DriverKit_AppleEthernetE1000_IVars::allocateRings(this);
  if (Rings)
  {
    if ((pcindkll & 2) != 0)
    {
      DriverKit_AppleEthernetE1000_IVars::up();
    }
  }

  else
  {
    DriverKit_AppleEthernetE1000_IVars::up(this);
  }

  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::up();
  }

  *(this + 10384) = 1;
  return Rings;
}

void DriverKit_AppleEthernetE1000_IVars::deactivateWOL(IOPCIDevice **this)
{
  if (*(this + 10393) == 1)
  {
    v6 = v1;
    v7 = v2;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x5800uLL, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x5808uLL, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x5810uLL, 0xFFFFFFFF);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x5838uLL, 0);
    __dmb(2u);
    v4 = this[2];
    readData = 0;
    IOPCIDevice::MemoryRead32(v4, 0, 0, &readData);
    __dmb(1u);
    IOPCIDevice::MemoryWrite32(v4, 0, 0, readData & 0xFFEFFFFF);
  }
}

uint64_t DriverKit_AppleEthernetE1000_IVars::down(DriverKit_AppleEthernetE1000_IVars *this)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::down();
  }

  DriverKit_AppleEthernetE1000_IVars::disableIntrs(this);
  DriverKit_AppleEthernetE1000_IVars::resetHW(this);
  IODelay(0x2710uLL);
  e1000_power_down_phy(this);
  IODelay(0x2710uLL);
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::down();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::setPromiscuousModeEnable(IOPCIDevice **this, int a2)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::setPromiscuousModeEnable();
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(this[2], 0, 0x100uLL, &readData);
  __dmb(1u);
  v4 = readData & 0xFFFFFFE7;
  if (a2)
  {
    v5 = 24;
  }

  else
  {
    v5 = 0;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x100uLL, v4 | v5);
  return 0;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::setAllMulticastModeEnable(DriverKit_AppleEthernetE1000_IVars *this, int a2)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::setAllMulticastModeEnable();
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  *(this + 10576) = a2;
  do
  {
    readData = 0;
    v7 = v4 | 0x5200;
    v8 = v7;
    if (!v4)
    {
      if (*(this + 71) <= 1)
      {
        v8 = 512;
      }

      else
      {
        v8 = 20992;
      }
    }

    IOPCIDevice::MemoryRead32(*(this + 2), 0, v8, &readData);
    __dmb(1u);
    if (a2)
    {
      v6 = *(this + v4 + 10580);
    }

    if (v6 != readData)
    {
      if ((pcindkll & 0x40000000) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        readData = 136315906;
        v11 = "setAllMulticastModeEnable";
        v12 = 1024;
        v13 = 911;
        v14 = 1024;
        v15 = v5;
        v16 = 1024;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): Setting mta[0x%02x] to 0x%08x\n", &readData, 0x1Eu);
      }

      __dmb(2u);
      if (!v4)
      {
        if (*(this + 71) <= 1)
        {
          v7 = 512;
        }

        else
        {
          v7 = 20992;
        }
      }

      IOPCIDevice::MemoryWrite32(*(this + 2), 0, v7, v6);
    }

    ++v5;
    v4 += 4;
  }

  while (v4 != 512);
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::setAllMulticastModeEnable();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::setMcastAddresses(DriverKit_AppleEthernetE1000_IVars *this, unsigned __int8 *a2, int a3)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::setMcastAddresses();
  }

  readData = 0;
  if (*(this + 71) <= 1)
  {
    v6 = 64;
  }

  else
  {
    v6 = 21504;
  }

  IOPCIDevice::MemoryRead32(*(this + 2), 0, v6, &readData);
  __dmb(1u);
  v7 = readData;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(this + 2), 0, 0x5404uLL, &readData);
  __dmb(1u);
  if (v7 != *(this + 2642) || readData != *(this + 2643))
  {
    __dmb(2u);
    if (*(this + 71) <= 1)
    {
      v8 = 64;
    }

    else
    {
      v8 = 21504;
    }

    IOPCIDevice::MemoryWrite32(*(this + 2), 0, v8, *(this + 2642));
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(this + 2), 0, 0x5404uLL, *(this + 2643));
  }

  v9 = 21516;
  v10 = 13;
  do
  {
    if (a3)
    {
      if ((pcindkll & 0x40000000) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *a2;
        v14 = a2[1];
        v15 = a2[2];
        v16 = a2[3];
        v17 = a2[4];
        v18 = a2[5];
        readData = 136316930;
        v42 = "setMcastAddresses";
        v43 = 1024;
        v44 = 964;
        v45 = 1024;
        v46 = v13;
        v47 = 1024;
        v48 = v14;
        v49 = 1024;
        v50 = v15;
        v51 = 1024;
        v52 = v16;
        v53 = 1024;
        v54 = v17;
        v55 = 1024;
        v56 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): mcast addr %02x:%02x:%02x:%02x:%02x:%02x\n", &readData, 0x36u);
      }

      v11 = *a2;
      v12 = *(a2 + 2);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(this + 2), 0, v9 - 4, v11);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(this + 2), 0, v9, v12 | 0x800C0000);
      --a3;
      a2 += 6;
    }

    else
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(this + 2), 0, v9 - 4, 0);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(this + 2), 0, v9, 0);
    }

    v9 += 8;
    --v10;
  }

  while (v10);
  if (*(this + 10576) == 1)
  {
    v19 = 128;
    v20 = 20992;
    do
    {
      __dmb(2u);
      v21 = v20;
      if (v19 == 128)
      {
        if (*(this + 71) <= 1)
        {
          v21 = 512;
        }

        else
        {
          v21 = 20992;
        }
      }

      IOPCIDevice::MemoryWrite32(*(this + 2), 0, v21, 0);
      v20 += 4;
      --v19;
    }

    while (v19);
  }

  *(this + 10576) = a3 != 0;
  if (a3)
  {
    while (1)
    {
      if ((pcindkll & 0x40000000) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *a2;
        v33 = a2[1];
        v34 = a2[2];
        v35 = a2[3];
        v36 = a2[4];
        v37 = a2[5];
        readData = 136316930;
        v42 = "setMcastAddresses";
        v43 = 1024;
        v44 = 1003;
        v45 = 1024;
        v46 = v32;
        v47 = 1024;
        v48 = v33;
        v49 = 1024;
        v50 = v34;
        v51 = 1024;
        v52 = v35;
        v53 = 1024;
        v54 = v36;
        v55 = 1024;
        v56 = v37;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): mcast addr %02x:%02x:%02x:%02x:%02x:%02x\n", &readData, 0x36u);
      }

      v40 = 0;
      readData = 0;
      DriverKit_AppleEthernetE1000_IVars::hashMcastAddress(this, a2, &readData, &v40);
      v39 = 0;
      v22 = 4 * readData;
      v23 = 4 * readData + 20992;
      if ((4 * readData) <= -10481)
      {
        if (v22 <= -10745)
        {
          if (v22 > -11753)
          {
            switch(v22)
            {
              case -11752:
                v24 = *(this + 71) <= 1;
                v23 = 32776;
                v25 = 9240;
                break;
              case -10752:
                v24 = *(this + 71) <= 1;
                v23 = 272;
                v25 = 10240;
                break;
              case -10748:
                v24 = *(this + 71) <= 1;
                v23 = 276;
                v25 = 10244;
                break;
              default:
                goto LABEL_95;
            }
          }

          else
          {
            switch(v22)
            {
              case -12448:
                v24 = *(this + 71) <= 1;
                v23 = 360;
                v25 = 8544;
                break;
              case -12440:
                v24 = *(this + 71) <= 1;
                v23 = 352;
                v25 = 8552;
                break;
              case -11760:
                v24 = *(this + 71) <= 1;
                v23 = 0x8000;
                v25 = 9232;
                break;
              default:
                goto LABEL_95;
            }
          }
        }

        else if (v22 <= -10721)
        {
          switch(v22)
          {
            case -10744:
              v24 = *(this + 71) <= 1;
              v23 = 280;
              v25 = 10248;
              break;
            case -10736:
              v24 = *(this + 71) <= 1;
              v23 = 288;
              v25 = 10256;
              break;
            case -10728:
              v24 = *(this + 71) <= 1;
              v23 = 296;
              v25 = 10264;
              break;
            default:
              goto LABEL_95;
          }
        }

        else if (v22 > -10493)
        {
          if (v22 == -10492)
          {
            v24 = *(this + 71) <= 1;
            v23 = 316;
            v25 = 10500;
          }

          else
          {
            if (v22 != -10488)
            {
              goto LABEL_95;
            }

            v24 = *(this + 71) <= 1;
            v23 = 320;
            v25 = 10504;
          }
        }

        else if (v22 == -10720)
        {
          v24 = *(this + 71) <= 1;
          v23 = 264;
          v25 = 10272;
        }

        else
        {
          if (v22 != -10496)
          {
            goto LABEL_95;
          }

          v24 = *(this + 71) <= 1;
          v23 = 312;
          v25 = 10496;
        }

        goto LABEL_93;
      }

      if (v22 <= -6649)
      {
        if (v22 > -7657)
        {
          switch(v22)
          {
            case -7656:
              v24 = *(this + 71) <= 1;
              v23 = 32792;
              v25 = 13336;
              break;
            case -6656:
              v24 = *(this + 71) <= 1;
              v23 = 1056;
              v25 = 14336;
              break;
            case -6652:
              v24 = *(this + 71) <= 1;
              v23 = 1060;
              v25 = 14340;
              break;
            default:
              goto LABEL_95;
          }
        }

        else
        {
          switch(v22)
          {
            case -10480:
              v24 = *(this + 71) <= 1;
              v23 = 328;
              v25 = 10512;
              break;
            case -10472:
              v24 = *(this + 71) <= 1;
              v23 = 336;
              v25 = 10520;
              break;
            case -7664:
              v24 = *(this + 71) <= 1;
              v23 = 32784;
              v25 = 13328;
              break;
            default:
              goto LABEL_95;
          }
        }

        goto LABEL_93;
      }

      if (v22 <= -6625)
      {
        break;
      }

      if (v22 > 511)
      {
        if (v22 == 1024)
        {
          v24 = *(this + 71) <= 1;
          v23 = 1536;
          v25 = 22016;
        }

        else
        {
          if (v22 != 512)
          {
            goto LABEL_95;
          }

          v24 = *(this + 71) <= 1;
          v23 = 64;
          v25 = 21504;
        }

        goto LABEL_93;
      }

      if (v22 == -6624)
      {
        v24 = *(this + 71) <= 1;
        v23 = 1088;
        v25 = 14368;
LABEL_93:
        if (!v24)
        {
          v23 = v25;
        }

        goto LABEL_95;
      }

      if (!v22)
      {
        if (*(this + 71) <= 1)
        {
          v23 = 512;
        }

        else
        {
          v23 = 20992;
        }
      }

LABEL_95:
      IOPCIDevice::MemoryRead32(*(this + 2), 0, v23, &v39);
      __dmb(1u);
      v26 = v39;
      v27 = v40;
      __dmb(2u);
      v28 = 4 * readData;
      if ((4 * readData) > -10721)
      {
        if (v28 == -10720)
        {
          v29 = *(this + 71) <= 1;
          v30 = 264;
          v31 = 10272;
          goto LABEL_111;
        }

        if (v28 == 512)
        {
          v29 = *(this + 71) <= 1;
          v30 = 64;
          v31 = 21504;
          goto LABEL_111;
        }
      }

      else
      {
        if (v28 == -10752)
        {
          v29 = *(this + 71) <= 1;
          v30 = 272;
          v31 = 10240;
          goto LABEL_111;
        }

        if (v28 == -10748)
        {
          v29 = *(this + 71) <= 1;
          v30 = 276;
          v31 = 10244;
          goto LABEL_111;
        }
      }

      v30 = v28 + 20992;
      if (v28 > -10473)
      {
        if (v28 <= -6649)
        {
          if (v28 <= -7657)
          {
            if (v28 == -10472)
            {
              v29 = *(this + 71) <= 1;
              v30 = 336;
              v31 = 10520;
              goto LABEL_111;
            }

            if (v28 == -7664)
            {
              v29 = *(this + 71) <= 1;
              v30 = 32784;
              v31 = 13328;
              goto LABEL_111;
            }
          }

          else
          {
            switch(v28)
            {
              case -7656:
                v29 = *(this + 71) <= 1;
                v30 = 32792;
                v31 = 13336;
                goto LABEL_111;
              case -6656:
                v29 = *(this + 71) <= 1;
                v30 = 1056;
                v31 = 14336;
                goto LABEL_111;
              case -6652:
                v29 = *(this + 71) <= 1;
                v30 = 1060;
                v31 = 14340;
                goto LABEL_111;
            }
          }
        }

        else if (v28 > -6625)
        {
          if (v28 == -6624)
          {
            v29 = *(this + 71) <= 1;
            v30 = 1088;
            v31 = 14368;
LABEL_111:
            if (!v29)
            {
              v30 = v31;
            }

            goto LABEL_113;
          }

          if (v28)
          {
            if (v28 == 1024)
            {
              v29 = *(this + 71) <= 1;
              v30 = 1536;
              v31 = 22016;
              goto LABEL_111;
            }
          }

          else if (*(this + 71) <= 1)
          {
            v30 = 512;
          }

          else
          {
            v30 = 20992;
          }
        }

        else
        {
          switch(v28)
          {
            case -6648:
              v29 = *(this + 71) <= 1;
              v30 = 1064;
              v31 = 14344;
              goto LABEL_111;
            case -6640:
              v29 = *(this + 71) <= 1;
              v30 = 1072;
              v31 = 14352;
              goto LABEL_111;
            case -6632:
              v29 = *(this + 71) <= 1;
              v30 = 1080;
              v31 = 14360;
              goto LABEL_111;
          }
        }
      }

      else if (v28 <= -10737)
      {
        if (v28 <= -11761)
        {
          if (v28 == -12448)
          {
            v29 = *(this + 71) <= 1;
            v30 = 360;
            v31 = 8544;
            goto LABEL_111;
          }

          if (v28 == -12440)
          {
            v29 = *(this + 71) <= 1;
            v30 = 352;
            v31 = 8552;
            goto LABEL_111;
          }
        }

        else
        {
          switch(v28)
          {
            case -11760:
              v29 = *(this + 71) <= 1;
              v30 = 0x8000;
              v31 = 9232;
              goto LABEL_111;
            case -11752:
              v29 = *(this + 71) <= 1;
              v30 = 32776;
              v31 = 9240;
              goto LABEL_111;
            case -10744:
              v29 = *(this + 71) <= 1;
              v30 = 280;
              v31 = 10248;
              goto LABEL_111;
          }
        }
      }

      else if (v28 > -10493)
      {
        switch(v28)
        {
          case -10492:
            v29 = *(this + 71) <= 1;
            v30 = 316;
            v31 = 10500;
            goto LABEL_111;
          case -10488:
            v29 = *(this + 71) <= 1;
            v30 = 320;
            v31 = 10504;
            goto LABEL_111;
          case -10480:
            v29 = *(this + 71) <= 1;
            v30 = 328;
            v31 = 10512;
            goto LABEL_111;
        }
      }

      else
      {
        switch(v28)
        {
          case -10736:
            v29 = *(this + 71) <= 1;
            v30 = 288;
            v31 = 10256;
            goto LABEL_111;
          case -10728:
            v29 = *(this + 71) <= 1;
            v30 = 296;
            v31 = 10264;
            goto LABEL_111;
          case -10496:
            v29 = *(this + 71) <= 1;
            v30 = 312;
            v31 = 10496;
            goto LABEL_111;
        }
      }

LABEL_113:
      IOPCIDevice::MemoryWrite32(*(this + 2), 0, v30, (1 << v27) | v26);
      a2 += 6;
      if (!--a3)
      {
        goto LABEL_163;
      }
    }

    switch(v22)
    {
      case -6648:
        v24 = *(this + 71) <= 1;
        v23 = 1064;
        v25 = 14344;
        break;
      case -6640:
        v24 = *(this + 71) <= 1;
        v23 = 1072;
        v25 = 14352;
        break;
      case -6632:
        v24 = *(this + 71) <= 1;
        v23 = 1080;
        v25 = 14360;
        break;
      default:
        goto LABEL_95;
    }

    goto LABEL_93;
  }

LABEL_163:
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::setMcastAddresses();
  }

  return 0;
}

void DriverKit_AppleEthernetE1000_IVars::hashMcastAddress(DriverKit_AppleEthernetE1000_IVars *this, unsigned __int8 *a2, unsigned int *a3, unsigned int *a4)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::hashMcastAddress(a2, a3, a4);
  }

  v7 = a2[4] >> 4;
  v8 = a2[5];
  *a3 = v8 >> 1;
  *a4 = v7 & 0xFFFFFFEF | (16 * (v8 & 1));
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::hashMcastAddress(a2, a3);
  }
}

void DriverKit_AppleEthernetE1000_IVars::releaseHWControl(DriverKit_AppleEthernetE1000_IVars *this)
{
  if (*(this + 71) == 15)
  {
    __dmb(2u);
    v2 = *(this + 2);
    readData = 0;
    IOPCIDevice::MemoryRead32(v2, 0, 0x5B50uLL, &readData);
    __dmb(1u);
    IOPCIDevice::MemoryWrite32(v2, 0, 0x5B50uLL, readData & 0xFFFFFFF7);
  }

  __dmb(2u);
  v3 = *(this + 2);
  v4 = 0;
  IOPCIDevice::MemoryRead32(v3, 0, 0x18uLL, &v4);
  __dmb(1u);
  IOPCIDevice::MemoryWrite32(v3, 0, 0x18uLL, v4 & 0xEFFFFFFF);
}

void DriverKit_AppleEthernetE1000_IVars::mDNS_Callback(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a1;
  *v62 = 0;
  v61 = 0;
  v5 = (a2 + 32);
  v4 = *(a2 + 32);
  v46 = a2;
  if (*(a2 + 32))
  {
    v6 = 0;
    v7 = pcindkll;
    v8 = &_os_log_default;
    a3.n128_u64[0] = 136316162;
    v9 = a2 + 32;
    do
    {
      if ((v7 & 0x40000) != 0)
      {
        v40 = *(v9 + *(a2 + 36));
        v10 = v8;
        v42 = a3;
        v11 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        a3 = v42;
        v8 = v10;
        v3 = a1;
        a2 = v46;
        if (v11)
        {
          *buf = v42.n128_u32[0];
          v54 = "mDNS_Callback";
          v55 = 1024;
          v56 = 2241;
          v57 = 1024;
          *v58 = v6;
          *&v58[4] = 1024;
          *&v58[6] = v6;
          *v59 = 1024;
          *&v59[2] = __rev16(v40);
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): (%d) udp port %d at %d\n", buf, 0x24u);
          a3 = v42;
          v8 = v10;
          v3 = a1;
          a2 = v46;
          v7 = pcindkll;
          v4 = *v5;
        }
      }

      v9 += 2;
      ++v6;
    }

    while (v6 < v4);
  }

  v12 = *(a2 + 34);
  if (*(a2 + 34))
  {
    v13 = 0;
    v14 = pcindkll;
    v15 = &_os_log_default;
    a3.n128_u64[0] = 136316162;
    do
    {
      if ((v14 & 0x40000) != 0)
      {
        v41 = *(v5 + *(a2 + 40));
        v16 = v15;
        v43 = a3;
        v17 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        a3 = v43;
        v15 = v16;
        v3 = a1;
        a2 = v46;
        if (v17)
        {
          *buf = v43.n128_u32[0];
          v54 = "mDNS_Callback";
          v55 = 1024;
          v56 = 2245;
          v57 = 1024;
          *v58 = v13;
          *&v58[4] = 1024;
          *&v58[6] = v13;
          *v59 = 1024;
          *&v59[2] = __rev16(v41);
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): (%d) tcp port %d at %d\n", buf, 0x24u);
          a3 = v43;
          v15 = v16;
          v3 = a1;
          a2 = v46;
          v14 = pcindkll;
          v12 = *(v46 + 34);
        }
      }

      ++v5;
      ++v13;
    }

    while (v13 < v12);
  }

  *(v3 + 10400) = 0;
  v18 = (a2 + 12);
  if (*(a2 + 13))
  {
    v19 = 0;
    v20 = pcindkll;
    v21 = &_os_log_default;
    a3.n128_u64[0] = 136316162;
    do
    {
      v22 = *&v18[4 * v19 + *(a2 + 16)];
      v23 = -1 << -v18[*(a2 + 20) + v19];
      if ((v20 & 0x40000) != 0)
      {
        v24 = v21;
        v44 = a3;
        v25 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        a3 = v44;
        v21 = v24;
        v3 = a1;
        a2 = v46;
        if (v25)
        {
          v26 = "host";
          if (v19 < *v18)
          {
            v26 = "local";
          }

          *buf = v44.n128_u32[0];
          v54 = "mDNS_Callback";
          v55 = 1024;
          v56 = 2256;
          v57 = 2080;
          *v58 = v26;
          *&v58[8] = 1024;
          *v59 = bswap32(v22);
          *&v59[4] = 1024;
          v60 = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): %s ipv4 %08x, mask %08x\n", buf, 0x28u);
          a3 = v44;
          v21 = v24;
          v3 = a1;
          a2 = v46;
          v20 = pcindkll;
        }
      }

      if (v19 < *v18)
      {
        *(v3 + 10400) = v22;
      }

      *(v3 + 10404) = bswap32(v23);
      ++v19;
    }

    while (v19 < *(a2 + 13));
  }

  v27 = v3 + 10408;
  *(v3 + 10408) = 0u;
  if (*(a2 + 15))
  {
    v28 = 0;
    v29 = pcindkll;
    do
    {
      v30 = *(a2 + 24);
      if ((v29 & 0x40000) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v38 = "host";
        if (v28 < *(v46 + 14))
        {
          v38 = "local";
        }

        *buf = 136315650;
        v54 = "mDNS_Callback";
        v55 = 1024;
        v56 = 2268;
        v57 = 2080;
        *v58 = v38;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): %s ipv6 addr\n", buf, 0x1Cu);
      }

      v31 = &v18[v30];
      v32 = buf;
      for (i = 512; i != 464; i -= 3)
      {
        v35 = *v31++;
        v34 = v35;
        if (i == 467)
        {
          v36 = 32;
        }

        else
        {
          v36 = 58;
        }

        snprintf(v32, i, "%02x%c", v34, v36);
        v32 += 3;
      }

      a2 = v46;
      if (v28 < *(v46 + 14))
      {
        for (j = 0; j != 16; j += 4)
        {
          *(v27 + j) = *&v18[v30 + j];
        }
      }

      v29 = pcindkll;
      if ((pcindkll & 0x40000) != 0)
      {
        v39 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
        a2 = v46;
        if (v39)
        {
          *v47 = 136315650;
          v48 = "mDNS_Callback";
          v49 = 1024;
          v50 = 2278;
          v51 = 2080;
          v52 = buf;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): %s\n", v47, 0x1Cu);
          a2 = v46;
          v29 = pcindkll;
        }
      }

      ++v28;
      v18 += 16;
    }

    while (v28 < *(a2 + 15));
  }

  if (e1000_read_nvm_eerd(a1, 0x10u, 1u, &v62[1]))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      DriverKit_AppleEthernetE1000_IVars::mDNS_Callback();
    }
  }

  else if ((pcindkll & 0x100000) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::mDNS_Callback(&v62[1]);
  }

  if (e1000_read_nvm_eerd(a1, 0x25u, 1u, v62))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      DriverKit_AppleEthernetE1000_IVars::mDNS_Callback();
    }
  }

  else if ((pcindkll & 0x100000) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::mDNS_Callback(v62);
  }

  if (e1000_read_nvm_eerd(a1, 0x26u, 1u, &v61))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      DriverKit_AppleEthernetE1000_IVars::mDNS_Callback();
    }
  }

  else if ((pcindkll & 0x100000) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::mDNS_Callback(&v61);
  }

  if ((pcindkll & 0x100000) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::mDNS_Callback();
  }

  operator new[]();
}

uint64_t DriverKit_AppleEthernetE1000_IVars::setupARPOffload(IOPCIDevice **this, uint32_t a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(this[2], 0, 0x5820uLL, &readData);
  __dmb(1u);
  if ((readData & 0x40000000) != 0)
  {
    if ((pcindkll & 0x20000) != 0)
    {
      DriverKit_AppleEthernetE1000_IVars::setupARPOffload();
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x5840uLL, a2);
    __dmb(2u);
    v4 = this[2];
    readData = 0;
    IOPCIDevice::MemoryRead32(v4, 0, 0x5838uLL, &readData);
    __dmb(1u);
    IOPCIDevice::MemoryWrite32(v4, 0, 0x5838uLL, readData | 1);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x8F0CuLL, 0x80000000);
    IODelay(0xFuLL);
    __dmb(2u);
    v5 = this[2];
    readData = 0;
    IOPCIDevice::MemoryRead32(v5, 0, 0x100uLL, &readData);
    __dmb(1u);
    IOPCIDevice::MemoryWrite32(v5, 0, 0x100uLL, readData | 0x40801E);
    DriverKit_AppleEthernetE1000_IVars::sendARPCommand(this);
  }

  if ((pcindkll & 0x20000) == 0)
  {
    return 3758097130;
  }

  DriverKit_AppleEthernetE1000_IVars::setupARPOffload();
  return readData;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::setupICMPOffload(DriverKit_AppleEthernetE1000_IVars *this)
{
  __dmb(2u);
  v2 = *(this + 2);
  readData = 0;
  IOPCIDevice::MemoryRead32(v2, 0, 0x5590uLL, &readData);
  __dmb(1u);
  IOPCIDevice::MemoryWrite32(v2, 0, 0x5590uLL, readData | 0x600);
  v4 = 0;
  IOPCIDevice::MemoryRead32(*(this + 2), 0, 0x5590uLL, &v4);
  __dmb(1u);
  if ((~v4 & 0x600) != 0)
  {
    return 3758097130;
  }

  else
  {
    return 0;
  }
}

uint64_t DriverKit_AppleEthernetE1000_IVars::setupNSOffload(IOPCIDevice **this, unsigned int *a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(this[2], 0, 0x5820uLL, &readData);
  __dmb(1u);
  if ((readData & 0x40000000) != 0)
  {
    if ((pcindkll & 0x20000) != 0)
    {
      DriverKit_AppleEthernetE1000_IVars::setupNSOffload();
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x5880uLL, *a2);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x5884uLL, a2[1]);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x5888uLL, a2[2]);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x588CuLL, a2[3]);
    __dmb(2u);
    v4 = this[2];
    readData = 0;
    IOPCIDevice::MemoryRead32(v4, 0, 0x5838uLL, &readData);
    __dmb(1u);
    IOPCIDevice::MemoryWrite32(v4, 0, 0x5838uLL, readData | 0x10000);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x8F0CuLL, 0x80000000);
    IODelay(0xFuLL);
    __dmb(2u);
    v5 = this[2];
    readData = 0;
    IOPCIDevice::MemoryRead32(v5, 0, 0x100uLL, &readData);
    __dmb(1u);
    IOPCIDevice::MemoryWrite32(v5, 0, 0x100uLL, readData | 0x40801E);
    __dmb(2u);
    v6 = this[2];
    readData = 0;
    IOPCIDevice::MemoryRead32(v6, 0, 0x5F60uLL, &readData);
    __dmb(1u);
    IOPCIDevice::MemoryWrite32(v6, 0, 0x5F60uLL, readData | 0x200);
    DriverKit_AppleEthernetE1000_IVars::sendNSCommand(this);
  }

  if ((pcindkll & 0x20000) == 0)
  {
    return 3758097130;
  }

  DriverKit_AppleEthernetE1000_IVars::setupNSOffload();
  return readData;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::setupICMPforIPv6Offload(DriverKit_AppleEthernetE1000_IVars *this)
{
  __dmb(2u);
  v2 = *(this + 2);
  readData = 0;
  IOPCIDevice::MemoryRead32(v2, 0, 0x5590uLL, &readData);
  __dmb(1u);
  IOPCIDevice::MemoryWrite32(v2, 0, 0x5590uLL, readData | 0x1800);
  v4 = 0;
  IOPCIDevice::MemoryRead32(*(this + 2), 0, 0x5590uLL, &v4);
  __dmb(1u);
  if ((~v4 & 0x1800) != 0)
  {
    return 3758097130;
  }

  else
  {
    return 0;
  }
}

uint64_t DriverKit_AppleEthernetE1000_IVars::setupmDNSOffload(IOPCIDevice **this)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(this[2], 0, 0x5590uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x5590uLL, v2 | 7);
  IODelay(0x2710uLL);
  readData = 0;
  IOPCIDevice::MemoryRead32(this[2], 0, 0x5590uLL, &readData);
  __dmb(1u);
  if ((~readData & 7) == 0)
  {
    DriverKit_AppleEthernetE1000_IVars::sendMDNSCommand(this);
  }

  return 3758097130;
}

void i210_setup_ipv4_flex_filter_wakeup(uint64_t a1, int a2, int a3, int a4)
{
  memset(v14, 0, sizeof(v14));
  v13[0] = 28672;
  v13[1] = 0;
  BYTE12(v14[0]) = 8;
  BYTE14(v14[0]) = 69;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v6 = v13 + 5;
      LODWORD(v14[0]) = *(a1 + 272);
      WORD2(v14[0]) = *(a1 + 276);
      LOBYTE(v13[0]) = 63;
      BYTE7(v14[1]) = 6;
      v7 = 0x80;
      BYTE2(v13[0]) = 0x80;
      v8 = 2;
      goto LABEL_7;
    }

    v6 = v13 + 4;
    BYTE7(v14[1]) = 17;
    BYTE2(v13[0]) = 0x80;
    v9 = -27631;
LABEL_13:
    WORD2(v14[2]) = v9;
    v7 = 48;
    goto LABEL_14;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      BYTE7(v14[1]) = 6;
      v6 = v13 + 5;
      v7 = 0x80;
      BYTE2(v13[0]) = 0x80;
      BYTE4(v14[2]) = 22;
      BYTE4(v13[0]) = 48;
      v8 = 16;
LABEL_7:
      HIBYTE(v14[2]) = v8;
      goto LABEL_14;
    }

    v6 = v13 + 4;
    BYTE7(v14[1]) = 17;
    BYTE2(v13[0]) = 0x80;
    v9 = -11508;
    goto LABEL_13;
  }

  v6 = v13 + 4;
  if ((pcindkll & 0x20000) != 0)
  {
    v11 = a4;
    i210_setup_ipv4_flex_filter_wakeup();
    v6 = v13 + 4;
    a4 = v11;
  }

  BYTE7(v14[1]) = 17;
  WORD1(v13[0]) = -16256;
  *(&v14[1] + 14) = a4;
  v7 = 3;
LABEL_14:
  *v6 = v7;
  igb_setup_flex_filter(a1, a3, 0x40u, v14, v13);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5800uLL, 2u);
  __dmb(2u);
  v10 = *(a1 + 16);
  readData = 0;
  IOPCIDevice::MemoryRead32(v10, 0, 0x5808uLL, &readData);
  __dmb(1u);
  IOPCIDevice::MemoryWrite32(v10, 0, 0x5808uLL, readData | (0x10000 << a3));
}

void i210_setup_ipv6_flex_filter_wakeup(uint64_t a1, int a2, char a3)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = 61440;
  v9 = 0;
  WORD6(v10) = -8826;
  BYTE14(v10) = 96;
  if (a2 == 5)
  {
    v5 = 2;
  }

  else
  {
    BYTE8(v13) = 22;
    HIBYTE(v8) = 3;
    v5 = 16;
  }

  BYTE4(v11) = 6;
  BYTE2(v8) = 19;
  BYTE3(v14) = v5;
  LOBYTE(v9) = 8;
  igb_setup_flex_filter(a1, a3, 0x80u, &v10, &v8);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5800uLL, 2u);
  __dmb(2u);
  v6 = *(a1 + 16);
  readData = 0;
  IOPCIDevice::MemoryRead32(v6, 0, 0x5808uLL, &readData);
  __dmb(1u);
  IOPCIDevice::MemoryWrite32(v6, 0, 0x5808uLL, readData | (0x10000 << a3));
}

uint64_t DriverKit_AppleEthernetE1000_IVars::expand_and_save_name(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 8);
  v7 = *v6;
  if (*v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = a4 + 64;
    do
    {
      if ((~v7 & 0xC0) != 0)
      {
        v15 = *(a2 + 4);
        if (*(a2 + 24) + v15 + 1 >= *a2)
        {
          return 0;
        }

        *(a3 + v15) = v7;
        v16 = *a2;
        v17 = *(a2 + 4) + 1;
        *(a2 + 4) = v17;
        if (v17 + v7 + *(a2 + 24) >= v16)
        {
          return 0;
        }

        memcpy((a3 + v17), *(a2 + 8), v7);
        *(a2 + 4) += v7;
        v6 = (*(a2 + 8) + v7 + 1);
      }

      else
      {
        v13 = *v6;
        v12 = v6 + 1;
        v14 = bswap32(v13 & 0xFFFFFF3F);
        if ((v10 & 1) == 0)
        {
          v9 = v12;
        }

        v6 = (v11 + *(a4 + 76) + HIWORD(v14));
        v10 = 1;
      }

      *(a2 + 8) = v6;
      v7 = *v6;
    }

    while (*v6);
    *(a3 + (*(a2 + 4))++) = 0;
    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(a3 + (*(a2 + 4))++) = 0;
LABEL_14:
    v9 = *(a2 + 8);
  }

  *(a2 + 8) = v9 + 1;
  return 1;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::save_header(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t *a4)
{
  if ((a2[1] + *(a2 + 12)) + 10 >= *a2)
  {
    return 0;
  }

  v4 = *(a2 + 1);
  v5 = *(v4 + 4);
  v6 = *v4;
  *a4 = v6;
  *(a4 + 4) = v5;
  *(a4 + 1) = WORD1(v6) & 0xFF7F;
  v7 = a3 + a2[1];
  v8 = *a4;
  *(v7 + 8) = v5;
  *v7 = v8;
  v9 = a2[1];
  a2[1] = v9 + 10;
  *(a2 + 1) += 10;
  *(a2 + 2) = a3 + v9;
  return 1;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::expand_and_save_answer(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5)
{
  v8 = a1;
  v9 = *a5;
  if (v9 > 0x2F)
  {
    goto LABEL_37;
  }

  if (((1 << v9) & 0x809004269064) != 0)
  {
    goto LABEL_3;
  }

  if (v9 != 33)
  {
LABEL_37:
    v33 = *(a2 + 1);
    v34 = a5[4];
    if (v33 + *(a2 + 12) + v34 < *a2)
    {
      memcpy((a3 + v33), a2[1], v34);
      v11 = 0;
      v24 = 0;
      LODWORD(v23) = *(a2 + 1) + a5[4];
      *(a2 + 1) = v23;
      goto LABEL_21;
    }

    return 0;
  }

  v29 = *(a2 + 1);
  if (*(a2 + 12) + v29 + 6 >= *a2)
  {
    return 0;
  }

  v30 = a3 + v29;
  v31 = a2[1];
  v32 = *v31;
  *(v30 + 4) = *(v31 + 2);
  *v30 = v32;
  *(a2 + 1) += 6;
  a2[1] = a2[1] + 6;
LABEL_3:
  v36 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  LOBYTE(v14) = 0;
  v15 = a2[1];
  v16 = *v15;
  v37 = a4 + 64;
  do
  {
    if ((~v16 & 0xC0) != 0)
    {
      v17 = *(a2 + 1);
      if (*(a2 + 12) + v17 + 1 >= *a2)
      {
        return 0;
      }

      *(a3 + v17) = v16;
      v18 = (*a5 != 33) | v10;
      v20 = *a2;
      v19 = *(a2 + 1);
      if (!((*a5 != 33) | v10 & 1))
      {
        v11 = a3 + v19;
      }

      v21 = v19 + 1;
      *(a2 + 1) = v21;
      if (v21 + v16 + *(a2 + 12) >= v20)
      {
        return 0;
      }

      v10 |= v18 ^ 1;
      v22 = v16 + 1;
      memcpy((a3 + v21), a2[1] + 1, v16);
      LODWORD(v23) = *(a2 + 1) + v16;
      *(a2 + 1) = v23;
      v15 = a2[1] + v16 + 1;
      a2[1] = v15;
      if (v14)
      {
        v12 += v22;
        v14 = 1;
      }

      else
      {
        v13 += v22;
        if (a5[4] <= v13)
        {
          v24 = 0;
          v8 = a1;
          goto LABEL_21;
        }

        v14 = 0;
      }
    }

    else
    {
      if ((v14 & 1) == 0)
      {
        v36 = v15 + 1;
        v12 = a5[4] - 2;
      }

      v15 = (v37 + *(a4 + 76) + (bswap32(*v15 & 0xFF3F) >> 16));
      a2[1] = v15;
      v14 = 1;
    }

    v16 = *v15;
  }

  while (!v14 || *v15);
  *(a3 + *(a2 + 1)) = 0;
  v23 = (*(a2 + 1) + 1);
  *(a2 + 1) = v23;
  v24 = a3 + v23;
  if (*a5 != 33)
  {
    v24 = 0;
  }

  *(a2[2] + 4) = bswap32(v12 + 1) >> 16;
  v8 = a1;
  a2[1] = v36 + 1;
LABEL_21:
  if (*(v8 + 10424))
  {
    return 1;
  }

  result = 1;
  if (v11)
  {
    v26 = v24 > v11;
    v27 = v24 - v11;
    if (v26)
    {
      *(v8 + 10552) = v27;
      if (v27 == 7 && *(v11 + 1) == 1633906540 && *(v11 + 5) == 108)
      {
        *(v8 + 10552) = 0;
        return result;
      }

      if (*(a2 + 12) + v27 + v23 < *a2)
      {
        memcpy((v8 + 10424), v11, v27);
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::buildRRrecords(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  v57 = 0u;
  v58 = 0u;
  bzero(a2, a4);
  LODWORD(v57) = a4;
  v9 = (a3 + 64);
  v8 = *(a3 + 64);
  v10 = 4 * v8;
  result = (4 * v8 + 20);
  WORD4(v58) = 4 * v8 + 20;
  *(a2 + 3) = v8;
  *(a2 + 6) = 1000;
  *(a2 + 2) = 1;
  *(a2 + 4) = 65537;
  v12 = *(a1 + 10400);
  v13 = &pcindkll;
  if (v12)
  {
    a2[10] = 1;
    a2[8] = 1;
    *(a2 + 5) = v12;
    *(a2 + 6) = *(a1 + 10404);
    result = (v10 + 32);
    WORD4(v58) = v10 + 32;
    v14 = 28;
  }

  else if ((pcindkll & 0x20000) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::buildRRrecords(4 * v8 + 20, &v55, buf);
    v13 = &pcindkll;
    result = v55;
    v14 = *buf;
  }

  else
  {
    v14 = 20;
  }

  v15 = a1 + 10408;
  if (*(a1 + 10412) | *(a1 + 10408) | *(a1 + 10416) | *(a1 + 10420))
  {
    for (i = 0; i != 16; i += 4)
    {
      *&a2[v14 + i] = *(v15 + i);
    }

    a2[11] = 1;
    a2[9] = 1;
    v14 |= 0x20uLL;
    result = (result + 36);
    WORD4(v58) = result;
  }

  else if ((*(v13 + 2) & 2) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::buildRRrecords(result, v14, &v55, buf);
    v13 = &pcindkll;
    result = v55;
    v14 = *buf;
  }

  v17 = &a2[result];
  *(a1 + 10520) = 0u;
  *(a1 + 10536) = 0u;
  *(a1 + 10488) = 0u;
  *(a1 + 10504) = 0u;
  *(a1 + 10456) = 0u;
  *(a1 + 10472) = 0u;
  *(a1 + 10424) = 0u;
  *(a1 + 10440) = 0u;
  if (!*v9)
  {
    LODWORD(v18) = 0;
LABEL_22:
    if (*(a1 + 10552) && *(a1 + 10424))
    {
      if (a2[10])
      {
        v25 = 0;
        v42 = v14;
        v46 = &a2[v14];
        v44 = WORD4(v58);
        v26 = v18;
        v27 = DWORD1(v57);
        v43 = v57;
        while (1)
        {
          if ((*(v13 + 2) & 0x10) != 0)
          {
            v31 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v13 = &pcindkll;
            if (v31)
            {
              *buf = 136315394;
              *&buf[4] = "buildRRrecords";
              v49 = 1024;
              v50 = 2150;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): Adding record A\n", buf, 0x12u);
              v13 = &pcindkll;
            }
          }

          ++*(a2 + 3);
          *&v46[4 * v26] = v27;
          if ((*(v13 + 2) & 0x10) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = "buildRRrecords";
            v49 = 1024;
            v50 = 2155;
            v51 = 1024;
            v52 = v26;
            v53 = 1024;
            v54 = v27;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): RR[%d] starting at offset 0x%x\n", buf, 0x1Eu);
          }

          v28 = *(a1 + 10552);
          if (v28 + (v27 + v44) + 14 >= v43)
          {
            return 0;
          }

          memcpy(&v17[v27], (a1 + 10424), v28);
          v13 = &pcindkll;
          v29 = (*(a1 + 10552) + v27);
          v55 = 0x7800000001000100;
          v30 = &v17[v29];
          *(v30 + 4) = 1024;
          *v30 = 0x7800000001000100;
          *&v17[(v29 + 10)] = *(a1 + 10400);
          v56 = 1024;
          v27 = v29 + 14;
          ++v25;
          ++v26;
          if (v25 >= a2[10])
          {
            DWORD1(v57) = v29 + 14;
            v14 = v42;
            goto LABEL_36;
          }
        }
      }

      LODWORD(v25) = 0;
LABEL_36:
      if (a2[11])
      {
        v32 = 0;
        v47 = (v25 + v18);
        v45 = &a2[v14];
        v33 = WORD4(v58);
        v34 = v57;
        v35 = DWORD1(v57);
        while (1)
        {
          if ((*(v13 + 2) & 0x10) != 0)
          {
            v40 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            v13 = &pcindkll;
            if (v40)
            {
              *buf = 136315394;
              *&buf[4] = "buildRRrecords";
              v49 = 1024;
              v50 = 2189;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): Adding record AAAA\n", buf, 0x12u);
              v13 = &pcindkll;
            }
          }

          ++*(a2 + 3);
          *&v45[4 * v32 + 4 * v47] = v35;
          if ((*(v13 + 2) & 0x10) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = "buildRRrecords";
            v49 = 1024;
            v50 = 2193;
            v51 = 1024;
            v52 = v32 + v47;
            v53 = 1024;
            v54 = v35;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): RR[%d] starting at offset 0x%x\n", buf, 0x1Eu);
          }

          v36 = *(a1 + 10552);
          if (v36 + (v35 + v33) + 26 >= v34)
          {
            return 0;
          }

          memcpy(&v17[v35], (a1 + 10424), v36);
          v37 = 0;
          v38 = (*(a1 + 10552) + v35);
          v55 = 0x7800000001001C00;
          v56 = 4096;
          v39 = &v17[v38];
          *(v39 + 4) = 4096;
          *v39 = 0x7800000001001C00;
          v35 = v38 + 10;
          do
          {
            *&v17[v35] = *(v15 + 4 * v37);
            v35 += 4;
            ++v37;
          }

          while (v37 != 4);
          ++v32;
          v13 = &pcindkll;
          if (v32 >= a2[11])
          {
            DWORD1(v57) = v35;
            goto LABEL_51;
          }
        }
      }

      LOWORD(v35) = WORD2(v57);
LABEL_51:
      *a2 = v35;
    }

    return DWORD1(v57) + WORD4(v58);
  }

  v18 = 0;
  v41 = v14;
  v19 = &a2[v14];
  while (1)
  {
    *(&v57 + 1) = v9 + *(a3 + *(a3 + 72) + 4 * v18 + 64);
    v20 = DWORD1(v57);
    *&v19[4 * v18] = DWORD1(v57);
    if ((*(v13 + 2) & 0x10) != 0)
    {
      result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        *buf = 136315906;
        *&buf[4] = "buildRRrecords";
        v49 = 1024;
        v50 = 2120;
        v51 = 1024;
        v52 = v18;
        v53 = 1024;
        v54 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): RR[%d] starting at offset 0x%x\n", buf, 0x1Eu);
      }
    }

    result = DriverKit_AppleEthernetE1000_IVars::expand_and_save_name(result, &v57, v17, a3);
    if (!result)
    {
      return result;
    }

    v21 = DWORD1(v57);
    if ((DWORD1(v57) + WORD4(v58)) + 10 >= v57)
    {
      return 0;
    }

    v22 = *(&v57 + 1);
    v23 = **(&v57 + 1);
    v55 = v23;
    v56 = *(*(&v57 + 1) + 8);
    WORD1(v55) = WORD1(v23) & 0xFF7F;
    v24 = &v17[DWORD1(v57)];
    *(v24 + 4) = v56;
    *v24 = v55;
    DWORD1(v57) = v21 + 10;
    *(&v57 + 1) = v22 + 10;
    *&v58 = &v17[v21];
    LOWORD(v55) = bswap32(v23) >> 16;
    WORD1(v55) = bswap32(WORD1(v23) & 0xFF7F) >> 16;
    HIDWORD(v55) = bswap32(HIDWORD(v55));
    v56 = bswap32(v56) >> 16;
    result = DriverKit_AppleEthernetE1000_IVars::expand_and_save_answer(a1, &v57, v17, a3, &v55);
    if (!result)
    {
      return result;
    }

    ++v18;
    v13 = &pcindkll;
    if (v18 >= *v9)
    {
      v14 = v41;
      goto LABEL_22;
    }
  }
}

uint64_t FLASH_Write(uint64_t a1, uint32_t *a2, uint32_t data, int a4)
{
  v11 = 0;
  if ((pcindkll & 0x20000) != 0)
  {
    FLASH_Write();
  }

  if (data > 0x100)
  {
    return 1;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x12050uLL, data);
  if (flash_set_command(a1, 0x1000000, a4))
  {
    return 1;
  }

  v9 = (data >> 2) + 1;
  do
  {
    if (!v9)
    {
      return 11;
    }

    v10 = *a2;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x1204CuLL, v10);
    if (flash_wait_for_done(a1, &v11))
    {
      return 1;
    }

    ++a2;
    --v9;
  }

  while (!v11);
  if ((pcindkll & 0x20000) == 0)
  {
    return 0;
  }

  FLASH_Write(&v12);
  return v12;
}

BOOL flash_set_command(uint64_t a1, int a2, int a3)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x12048uLL, a3 | a2);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x12048uLL, &readData);
  __dmb(1u);
  return ((readData >> 28) & 1) == 0;
}

uint64_t flash_wait_for_done(uint64_t a1, BOOL *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x12048uLL, &readData);
  v4 = 0;
  __dmb(1u);
  if ((readData & 0x60000000) == 0x40000000)
  {
LABEL_8:
    if (a2)
    {
      v8 = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x12048uLL, &v8);
      __dmb(1u);
      *a2 = (v8 & 0x80000000) != 0;
    }
  }

  else
  {
    v5 = 999999;
    v6 = 1;
    while (v5)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x12048uLL, &readData);
      __dmb(1u);
      --v6;
      --v5;
      if ((readData & 0x60000000) == 0x40000000)
      {
        v4 = -v6 > 0xF423E;
        goto LABEL_8;
      }
    }

    return 1;
  }

  return v4;
}

uint64_t FLASH_Read(uint64_t a1, uint32_t *a2, uint32_t data, int a4)
{
  v10 = 0;
  if ((pcindkll & 0x20000) != 0)
  {
    FLASH_Read();
  }

  if (data >> 13)
  {
    return 1;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x12050uLL, data);
  if (flash_set_command(a1, 0, a4))
  {
    return 1;
  }

  v9 = (data >> 2) + 1;
  do
  {
    if (!v9)
    {
      return 11;
    }

    if (flash_wait_for_done(a1, &v10))
    {
      return 1;
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x1204CuLL, &readData);
    __dmb(1u);
    *a2++ = readData;
    --v9;
  }

  while (!v10);
  if ((pcindkll & 0x20000) == 0)
  {
    return 0;
  }

  FLASH_Read(&v12);
  return v12;
}

BOOL flasher_need_to_erase_sector(const unsigned __int8 *a1, const unsigned __int8 *a2)
{
  if ((pcindkll & 0x20000) != 0)
  {
    flasher_need_to_erase_sector();
  }

  v4 = 0;
  do
  {
    v5 = *&a2[v4] & ~*&a1[v4];
    if (v4 > 0xFFB)
    {
      break;
    }

    v4 += 4;
  }

  while (!v5);
  return v5 != 0;
}

uint64_t flasher_dump_sector(uint64_t a1, const unsigned __int8 *a2, int a3)
{
  if ((pcindkll & 0x20000) != 0)
  {
    flasher_dump_sector();
  }

  v7 = 0;
  do
  {
    if (FLASH_Read(a1, &v15[v7], 0x100u, a3 + v7))
    {
      if ((pcindkll & 0x20000) == 0)
      {
        return 3;
      }

      flasher_dump_sector();
      return *v20;
    }

    v8 = v7 > 0xEFF;
    v7 += 256;
  }

  while (!v8);
  if ((pcindkll & 0x20000) != 0)
  {
    flasher_dump_sector(v15);
  }

  v9 = v15;
  if (flasher_need_to_erase_sector(v15, a2))
  {
    if (flash_set_command(a1, 0x2000000, a3) || flash_wait_for_done(a1, 0))
    {
      if ((pcindkll & 0x20000) == 0)
      {
        return 1;
      }

      flasher_dump_sector();
      return *v20;
    }

    if ((pcindkll & 0x20000) != 0)
    {
      flasher_dump_sector(v20);
      v9 = *v20;
    }

    else
    {
      v9 = &FF_Buffer;
    }
  }

  v11 = 0;
  v12 = a3;
  while (1)
  {
    if (!memcmp(&a2[v11], &v9[v11], 0x100uLL))
    {
      if ((pcindkll & 0x20000) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 136315394;
        *&v20[4] = "flasher_dump_sector";
        v21 = 1024;
        v22 = 2710;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): Data same, moving to next burst\n", v20, 0x12u);
      }

      goto LABEL_28;
    }

    if ((pcindkll & 0x20000) == 0)
    {
      v13 = v12;
      goto LABEL_22;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 136315650;
      *&v20[4] = "flasher_dump_sector";
      v21 = 1024;
      v22 = 2702;
      v23 = 1024;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): Need to write offset %x, data is different\n", v20, 0x18u);
      v13 = v11 + a3;
      if ((pcindkll & 0x20000) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v13 = v12;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "flasher_dump_burst";
      v18 = 1024;
      v19 = 2587;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): Starting flasher_dump_burst()\n", &v16, 0x12u);
    }

LABEL_22:
    result = FLASH_Write(a1, &a2[v11], 0x100u, v13);
    if (result)
    {
      goto LABEL_42;
    }

    if ((pcindkll & 0x20000) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "flasher_dump_burst";
      v18 = 1024;
      v19 = 2596;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): VERYFYING:\nCalling FLASH_Read()\n", &v16, 0x12u);
    }

    if (FLASH_Read(a1, v20, 0x100u, v13))
    {
      result = 3;
      goto LABEL_42;
    }

    if (memcmp(v20, &a2[v11], 0x100uLL))
    {
      break;
    }

LABEL_28:
    v12 += 256;
    v14 = v11 >= 0xF00;
    v11 += 256;
    if (v14)
    {
      return 0;
    }
  }

  result = 4;
LABEL_42:
  if ((pcindkll & 0x20000) != 0)
  {
    flasher_dump_sector();
    return *v20;
  }

  return result;
}

void igb_setup_flex_filter(uint64_t a1, int a2, uint32_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v32 = a2 << 8;
  v36 = (a2 << 8) + 36864;
  v35 = (a2 << 8) + 38400;
  v9.i32[1] = 8;
LABEL_2:
  v10 = 0;
  v37 = 2 * v8;
  v11 = v35 + 2 * v8;
  v12 = 1;
  do
  {
    while (1)
    {
      v13 = v12;
      v9.i32[0] = *(a4 + (v10 | v8));
      v14 = vshlq_u32(vmovl_u16(*&vmovl_u8(v9)), xmmword_100033210);
      v15 = vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
      __dmb(2u);
      v16 = *(a1 + 16);
      if (a2 >= 4)
      {
        break;
      }

      IOPCIDevice::MemoryWrite32(v16, 0, v10 | (v36 + 2 * v8), v15.i32[0] | v15.i32[1]);
      v12 = 0;
      v10 = 4;
      if ((v13 & 1) == 0)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v36 + v37 + 8, *(a5 + (v8 >> 3)));
        if (v8 > 0x77)
        {
          __dmb(2u);
          v31 = 37116;
          goto LABEL_86;
        }

LABEL_84:
        v8 += 8;
        goto LABEL_2;
      }
    }

    v17 = v10 | v11;
    if ((v10 | v11) <= 10511)
    {
      v18 = 8544;
      if (v17 > 10255)
      {
        if (v17 > 10495)
        {
          v18 = 10496;
          if (v17 != 10496)
          {
            if (v17 != 10500)
            {
              goto LABEL_53;
            }

            v19 = *(a1 + 284) <= 1;
            v20 = 10500;
            v21 = 316;
            goto LABEL_46;
          }

          v22 = *(a1 + 284) <= 1;
          v23 = 312;
        }

        else
        {
          v18 = 10256;
          if (v17 != 10256)
          {
            if (v17 != 10272)
            {
              goto LABEL_53;
            }

            v19 = *(a1 + 284) <= 1;
            v20 = 10272;
            v21 = 264;
            goto LABEL_46;
          }

          v22 = *(a1 + 284) <= 1;
          v23 = 288;
        }
      }

      else if (v17 > 10239)
      {
        v18 = 10240;
        if (v17 != 10240)
        {
          if (v17 != 10244)
          {
            goto LABEL_53;
          }

          v19 = *(a1 + 284) <= 1;
          v20 = 10244;
          v21 = 276;
          goto LABEL_46;
        }

        v22 = *(a1 + 284) <= 1;
        v23 = 272;
      }

      else
      {
        if (v17 != 8544)
        {
          if (v17 != 9232)
          {
            goto LABEL_53;
          }

          v19 = *(a1 + 284) <= 1;
          v20 = 9232;
          v21 = 0x8000;
          goto LABEL_46;
        }

        v22 = *(a1 + 284) <= 1;
        v23 = 360;
      }
    }

    else if (v17 <= 14351)
    {
      if (v17 > 14335)
      {
        v18 = 14336;
        if (v17 != 14336)
        {
          if (v17 != 14340)
          {
            goto LABEL_53;
          }

          v19 = *(a1 + 284) <= 1;
          v20 = 14340;
          v21 = 1060;
          goto LABEL_46;
        }

        v22 = *(a1 + 284) <= 1;
        v23 = 1056;
      }

      else
      {
        v18 = 10512;
        if (v17 != 10512)
        {
          if (v17 != 13328)
          {
            goto LABEL_53;
          }

          v19 = *(a1 + 284) <= 1;
          v20 = 13328;
          v21 = 32784;
          goto LABEL_46;
        }

        v22 = *(a1 + 284) <= 1;
        v23 = 328;
      }
    }

    else if (v17 <= 20991)
    {
      v18 = 14352;
      if (v17 != 14352)
      {
        if (v17 != 14368)
        {
          goto LABEL_53;
        }

        v19 = *(a1 + 284) <= 1;
        v20 = 14368;
        v21 = 1088;
        goto LABEL_46;
      }

      v22 = *(a1 + 284) <= 1;
      v23 = 1072;
    }

    else
    {
      if (v17 == 20992)
      {
        v19 = *(a1 + 284) <= 1;
        v20 = 20992;
        v21 = 512;
LABEL_46:
        if (v19)
        {
          v17 = v21;
        }

        else
        {
          v17 = v20;
        }

        goto LABEL_53;
      }

      v18 = 22016;
      if (v17 != 22016)
      {
        if (v17 != 21504)
        {
          goto LABEL_53;
        }

        v19 = *(a1 + 284) <= 1;
        v20 = 21504;
        v21 = 64;
        goto LABEL_46;
      }

      v22 = *(a1 + 284) <= 1;
      v23 = 1536;
    }

    if (v22)
    {
      v17 = v23;
    }

    else
    {
      v17 = v18;
    }

LABEL_53:
    IOPCIDevice::MemoryWrite32(v16, 0, v17, v15.i32[0] | v15.i32[1]);
    v12 = 0;
    v10 = 4;
  }

  while ((v13 & 1) != 0);
  __dmb(2u);
  v24 = v35 + v37 + 8;
  if (v24 > 10503)
  {
    v25 = 10504;
    if (v24 <= 13335)
    {
      if (v35 + v37 != 10496)
      {
        if (v35 + v37 == 10512)
        {
          v26 = *(a1 + 284) <= 1;
          v27 = 10520;
          v28 = 336;
          goto LABEL_75;
        }

        goto LABEL_83;
      }

      v29 = *(a1 + 284) <= 1;
      v30 = 320;
    }

    else
    {
      if (v35 + v37 == 13328)
      {
        v26 = *(a1 + 284) <= 1;
        v27 = 13336;
        v28 = 32792;
        goto LABEL_75;
      }

      v25 = 14344;
      if (v35 + v37 != 14336)
      {
        if (v35 + v37 == 14352)
        {
          v26 = *(a1 + 284) <= 1;
          v27 = 14360;
          v28 = 1080;
LABEL_75:
          if (v26)
          {
            v24 = v28;
          }

          else
          {
            v24 = v27;
          }
        }

        goto LABEL_83;
      }

      v29 = *(a1 + 284) <= 1;
      v30 = 1064;
    }

LABEL_80:
    if (v29)
    {
      v24 = v30;
    }

    else
    {
      v24 = v25;
    }

    goto LABEL_83;
  }

  if (v24 > 10247)
  {
    v25 = 10248;
    if (v35 + v37 != 10240)
    {
      if (v35 + v37 == 10256)
      {
        v26 = *(a1 + 284) <= 1;
        v27 = 10264;
        v28 = 296;
        goto LABEL_75;
      }

      goto LABEL_83;
    }

    v29 = *(a1 + 284) <= 1;
    v30 = 280;
    goto LABEL_80;
  }

  v25 = 8552;
  if (v35 + v37 == 8544)
  {
    v29 = *(a1 + 284) <= 1;
    v30 = 352;
    goto LABEL_80;
  }

  if (v35 + v37 == 9232)
  {
    v26 = *(a1 + 284) <= 1;
    v27 = 9240;
    v28 = 32776;
    goto LABEL_75;
  }

LABEL_83:
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v24, *(a5 + (v8 >> 3)));
  if (v8 < 0x78)
  {
    goto LABEL_84;
  }

  __dmb(2u);
  v31 = 38652;
LABEL_86:
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, (v32 + v31), a3);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
}

uint64_t DriverKit_AppleEthernetE1000::init(IOUserNetworkEthernet *this)
{
  IOParseBootArgNumber("e1000.log_level", &pcindkll, 4);
  result = IOMallocZeroTyped();
  if (result)
  {
    this[1].IOService::OSObject::OSMetaClassBase::__vftable = result;
    if (IOUserNetworkEthernet::init(this))
    {
      return 1;
    }

    else
    {
      result = this[1].IOService::OSObject::OSMetaClassBase::__vftable;
      if (result)
      {
        IOFree(result, 0x2B58uLL);
        result = 0;
        this[1].IOService::OSObject::OSMetaClassBase::__vftable = 0;
      }
    }
  }

  return result;
}

void DriverKit_AppleEthernetE1000::free(IOUserNetworkEthernet *this)
{
  v2 = this[1].IOService::OSObject::OSMetaClassBase::__vftable;
  if (v2)
  {
    IOFree(v2, 0x2B58uLL);
    this[1].IOService::OSObject::OSMetaClassBase::__vftable = 0;
  }

  IOUserNetworkEthernet::free(this);
}

uint64_t DriverKit_AppleEthernetE1000::Start_Impl(DriverKit_AppleEthernetE1000 *this, IOService *anObject)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetE1000::Start_Impl();
  }

  v4 = OSMetaClassBase::safeMetaCast(anObject, gIOPCIDeviceMetaClass);
  if (!v4)
  {
    DriverKit_AppleEthernetE1000::Start_Impl();
  }

  v5 = v4;
  *(*(this + 8) + 9600) = this;
  *(*(this + 8) + 9608) = v4;
  v6 = DriverKit_AppleEthernetE1000_IVars::probe(*(this + 8), v4);
  if (!v6)
  {
    if (IOService::Start(this, anObject, &IOUserNetworkEthernet::_Dispatch))
    {
      DriverKit_AppleEthernetE1000::Start_Impl();
    }

    if (OSObject::CopyDispatchQueue(this, "Default", (*(this + 8) + 9616), 0))
    {
      DriverKit_AppleEthernetE1000::Start_Impl();
    }

    if (IODispatchQueue::Create("interrupt", 0, 0, (*(this + 8) + 9624)))
    {
      DriverKit_AppleEthernetE1000::Start_Impl();
    }

    if (OSObject::SetDispatchQueue(this, "interrupt", *(*(this + 8) + 9624), 0))
    {
      DriverKit_AppleEthernetE1000::Start_Impl();
    }

    action = 0;
    interruptType = 0;
    v13 = 0;
    IOParseBootArgNumber("e1000.fi0", &v13, 4);
    e1000_set_mac_type(*(this + 8));
    if (*(*(this + 8) + 284) >= 29 && v13 != 2)
    {
      if (!v13)
      {
        IOPCIDevice::ConfigureInterrupts(v5, 0x20000u, 2u, 2u, 0, 0);
      }

      IOPCIDevice::ConfigureInterrupts(v5, 0x10000u, 1u, 1u, 0, 0);
    }

    IOPCIDevice::ConfigureInterrupts(v5, 1u, 1u, 1u, 0, 0);
    v7 = 0;
    v8 = 0;
    while (!IOInterruptDispatchSource::GetInterruptType(v5, v8, &interruptType))
    {
      if ((interruptType & 0x30000) != 0)
      {
        if (IOInterruptDispatchSource::Create(v5, v8, *(*(this + 8) + 9624), (*(this + 8) + 8 * v7 + 9632)))
        {
          DriverKit_AppleEthernetE1000::Start_Impl();
        }

        if (v7)
        {
          if (DriverKit_AppleEthernetE1000::CreateActionQueueInterruptOccurred(this, 8uLL, &action))
          {
            DriverKit_AppleEthernetE1000::Start_Impl();
          }
        }

        else if (DriverKit_AppleEthernetE1000::CreateActionInterruptOccurred(this, 8uLL, &action))
        {
          DriverKit_AppleEthernetE1000::Start_Impl();
        }

        if (IOInterruptDispatchSource::SetHandler(*(*(this + 8) + 8 * v7 + 9632), action, 0))
        {
          DriverKit_AppleEthernetE1000::Start_Impl();
        }

        if (IODispatchSource::SetEnable(*(*(this + 8) + 8 * v7 + 9632), 1, 0))
        {
          DriverKit_AppleEthernetE1000::Start_Impl();
        }

        if (v13)
        {
          break;
        }

        ++v7;
      }

      ++v8;
      if (v7 >= 2)
      {
        break;
      }
    }

    v9 = *(this + 8);
    if (!*(v9 + 9632))
    {
      if (IOInterruptDispatchSource::Create(v5, 0, *(v9 + 9624), (v9 + 9632)))
      {
        DriverKit_AppleEthernetE1000::Start_Impl();
      }

      if (DriverKit_AppleEthernetE1000::CreateActionInterruptOccurred(this, 8uLL, &action))
      {
        DriverKit_AppleEthernetE1000::Start_Impl();
      }

      if (IOInterruptDispatchSource::SetHandler(*(*(this + 8) + 9632), action, 0))
      {
        DriverKit_AppleEthernetE1000::Start_Impl();
      }

      if (IODispatchSource::SetEnable(*(*(this + 8) + 9632), 1, 0))
      {
        DriverKit_AppleEthernetE1000::Start_Impl();
      }

      v9 = *(this + 8);
    }

    if (!*(v9 + 9640) && (pcindkll & 1) != 0)
    {
      DriverKit_AppleEthernetE1000::Start_Impl();
    }

    if (IOPCIDevice::Open(v5, this, 0))
    {
      DriverKit_AppleEthernetE1000::Start_Impl();
    }

    readData = 0;
    IOPCIDevice::ConfigurationRead8(v5, 4uLL, &readData);
    IOPCIDevice::ConfigurationWrite8(v5, 4uLL, readData | 2);
    started = DriverKit_AppleEthernetE1000_IVars::start(*(this + 8));
    if (started || (started = DriverKit_AppleEthernetE1000_IVars::startInterface(*(this + 8)), started))
    {
      v6 = started;
    }

    else
    {
      v6 = IOService::RegisterService(this, 0);
      if (!v6)
      {
        return v6;
      }
    }

    IOService::Stop(this, v5, 0);
  }

  return v6;
}

uint64_t DriverKit_AppleEthernetE1000::Stop_Impl(DriverKit_AppleEthernetE1000 *this, IOService *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(this + 8) + 10392);
    *buf = 136315906;
    *&buf[4] = "Stop_Impl";
    *&buf[12] = 1024;
    *&buf[14] = 91;
    *&buf[18] = 2048;
    *&buf[20] = this;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): %p ivars->intrsEnabled=%d\n", buf, 0x22u);
  }

  v5 = *(this + 8);
  if (*(v5 + 10392) == 1)
  {
    DriverKit_AppleEthernetE1000::Stop_Impl();
  }

  if ((*(v5 + 11092) & 1) == 0)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    if (*(v5 + 9640))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    *&buf[24] = v6;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 1107296256;
    handler[2] = ___ZN28DriverKit_AppleEthernetE10009Stop_ImplEP9IOService_block_invoke;
    handler[3] = &__block_descriptor_tmp_1;
    handler[4] = buf;
    handler[5] = this;
    handler[6] = a2;
    IODispatchSource::Cancel(*(v5 + 9632), handler, 0);
    v7 = *(this + 8);
    v8 = *(v7 + 9640);
    if (v8)
    {
      IODispatchSource::Cancel(v8, handler, 0);
      v7 = *(this + 8);
    }

    *(v7 + 11092) = 1;
    _Block_object_dispose(buf, 8);
  }

  return 0;
}

uint64_t ___ZN28DriverKit_AppleEthernetE10009Stop_ImplEP9IOService_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (atomic_fetch_add_explicit((*(*(result + 32) + 8) + 24), 0xFFFFFFFF, memory_order_relaxed) <= 1)
  {
    v2 = result;
    (*(v1[1].meta[301].getMetaClass + 2))(v1[1].meta[301].__vftable);
    meta = v1[1].meta;
    v4 = *&meta[301].refcount;
    if (v4)
    {
      (*(*v4 + 16))(v4);
      *&v1[1].meta[301].refcount = 0;
      meta = v1[1].meta;
    }

    (*(*meta[300].metaClassPrivate + 16))(meta[300].metaClassPrivate);
    IOPCIDevice::Close(*&v1[1].meta[300].refcount, v1, 0);
    v5 = *(v2 + 48);

    return IOService::Stop(v1, v5, &IOUserNetworkEthernet::_Dispatch);
  }

  return result;
}

void DriverKit_AppleEthernetE1000::InterruptOccurred_Impl(DriverKit_AppleEthernetE1000 *this, OSAction *a2)
{
  v2 = *(this + 8);
  if (*(v2 + 9640))
  {
    DriverKit_AppleEthernetE1000_IVars::otherIntrHandler(v2);
  }

  else
  {
    DriverKit_AppleEthernetE1000_IVars::intrHandler(v2);
  }
}

uint64_t DriverKit_AppleEthernetE1000::SetInterfaceEnable_Impl(DriverKit_AppleEthernetE1000 *this, int a2)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetE1000::SetInterfaceEnable_Impl();
  }

  readData = 0;
  IOPCIDevice::ConfigurationRead8(*(*(this + 8) + 9608), 4uLL, &readData);
  if (a2)
  {
    IOPCIDevice::ConfigurationWrite8(*(*(this + 8) + 9608), 4uLL, readData | 4);
  }

  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x2000000000;
  v11 = -1;
  v4 = *(*(this + 8) + 9624);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = ___ZN28DriverKit_AppleEthernetE100023SetInterfaceEnable_ImplEb_block_invoke;
  v7[4] = &v9;
  v7[5] = this;
  v8 = a2;
  v7[3] = &__block_descriptor_tmp_25;
  IODispatchQueue::DispatchSync(v4, v7);
  if (!a2 || *(v10[0] + 24))
  {
    IOPCIDevice::ConfigurationWrite8(*(*(this + 8) + 9608), 4uLL, readData & 0xFB);
  }

  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetE1000::SetInterfaceEnable_Impl(v10);
  }

  v5 = *(v10[0] + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t ___ZN28DriverKit_AppleEthernetE100023SetInterfaceEnable_ImplEb_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (*(result + 48) == 1)
  {
    result = DriverKit_AppleEthernetE1000_IVars::enable(*(v2 + 64));
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  if (*(*(*(v1 + 32) + 8) + 24))
  {
    result = DriverKit_AppleEthernetE1000_IVars::disable(*(v2 + 64));
  }

  if ((*(v1 + 48) & 1) == 0)
  {
    *(*(*(v1 + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetE1000::SetAllMulticastModeEnable_Impl(DriverKit_AppleEthernetE1000_IVars **this, int a2)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetE1000::SetAllMulticastModeEnable_Impl();
  }

  return DriverKit_AppleEthernetE1000_IVars::setAllMulticastModeEnable(this[8], a2);
}

uint64_t DriverKit_AppleEthernetE1000::SelectMediaType_Impl(DriverKit_AppleEthernetE1000 *this, int a2)
{
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetE1000::SelectMediaType_Impl();
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = *(*(this + 8) + 9624);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1107296256;
  block[2] = ___ZN28DriverKit_AppleEthernetE100020SelectMediaType_ImplEj_block_invoke;
  block[4] = &v9;
  block[5] = this;
  block[3] = &__block_descriptor_tmp_28;
  v8 = a2;
  IODispatchQueue::DispatchSync(v4, block);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t ___ZN28DriverKit_AppleEthernetE100020SelectMediaType_ImplEj_block_invoke(uint64_t a1)
{
  result = DriverKit_AppleEthernetE1000_IVars::handleChosenMedia(*(*(a1 + 40) + 64), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void DriverKit_AppleEthernetE1000::TxSubmit_Impl(DriverKit_AppleEthernetE1000 *this, OSAction *a2)
{
  v3 = *(this + 8);
  if ((*(v3 + 10392) & 1) == 0)
  {
    DriverKit_AppleEthernetE1000::TxSubmit_Impl();
  }

  DriverKit_AppleEthernetE1000_IVars::txSubmit(v3, 0);
}

void DriverKit_AppleEthernetE1000::RxSubmit_Impl(DriverKit_AppleEthernetE1000 *this, OSAction *a2)
{
  v3 = *(this + 8);
  if (*(v3 + 10392))
  {
    if (*(v3 + 284) < 13)
    {
      v4 = DriverKit_AppleEthernetE1000_IVars::lem_rxSync(v3);
    }

    else
    {
      v4 = DriverKit_AppleEthernetE1000_IVars::igb_rxSync(v3, 0);
    }

    if (v4 >= 0x10000)
    {
      v5 = *(*(this + 8) + 10360);

      IODataQueueDispatchSource::SendDataAvailable(v5);
    }
  }

  else if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetE1000::RxSubmit_Impl();
  }
}

uint64_t DriverKit_AppleEthernetE1000::GetHardwareAssists_Impl(DriverKit_AppleEthernetE1000 *this, unsigned int *a2)
{
  if (*(*(this + 8) + 10393))
  {
    v2 = 201457664;
  }

  else
  {
    v2 = 0x20000;
  }

  *a2 = v2;
  return 0;
}

uint64_t DriverKit_AppleEthernetE1000::hwConfigNicProxyData(uint64_t result, uint64_t a2)
{
  if (*(a2 + 10))
  {
    DriverKit_AppleEthernetE1000_IVars::activateWOL(*(result + 64), a2);
  }

  return result;
}

uint64_t non-virtual thunk toDriverKit_AppleEthernetE1000::hwConfigNicProxyData(uint64_t result, uint64_t a2)
{
  if (*(a2 + 10))
  {
    DriverKit_AppleEthernetE1000_IVars::activateWOL(*(result + 16), a2);
  }

  return result;
}

uint64_t e1000_init_mac_params(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967293;
  }
}

uint64_t e1000_init_nvm_params(uint64_t a1)
{
  v1 = *(a1 + 1144);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967293;
  }
}

uint64_t e1000_init_phy_params(uint64_t a1)
{
  v1 = *(a1 + 888);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967293;
  }
}

uint64_t e1000_init_mbx_params(uint64_t a1)
{
  v1 = *(a1 + 1264);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967293;
  }
}

uint64_t e1000_set_mac_type(uint64_t a1)
{
  v1 = *(a1 + 9584);
  v2 = 4294967291;
  if (v1 <= 0x125A)
  {
    if (*(a1 + 9584) > 0x1048u)
    {
      switch(*(a1 + 9584))
      {
        case 0x1075:
          v3 = 12;
          goto LABEL_74;
        case 0x1076:
        case 0x1077:
        case 0x1078:
        case 0x107C:
          v3 = 10;
          goto LABEL_74;
        case 0x1079:
        case 0x107A:
        case 0x107B:
        case 0x108A:
        case 0x1099:
        case 0x10B5:
          v3 = 8;
          goto LABEL_74;
        case 0x107D:
        case 0x107E:
        case 0x107F:
        case 0x10B9:
          v3 = 14;
          goto LABEL_74;
        case 0x1080:
        case 0x1081:
        case 0x1082:
        case 0x1083:
        case 0x1084:
        case 0x1085:
        case 0x1086:
        case 0x1087:
        case 0x1088:
        case 0x1089:
        case 0x108D:
        case 0x108E:
        case 0x108F:
        case 0x1090:
        case 0x1091:
        case 0x1092:
        case 0x1093:
        case 0x1094:
        case 0x1095:
        case 0x1097:
        case 0x109B:
        case 0x109C:
        case 0x109D:
        case 0x109E:
        case 0x109F:
        case 0x10A0:
        case 0x10A1:
        case 0x10A2:
        case 0x10A3:
        case 0x10A6:
        case 0x10A8:
        case 0x10AA:
        case 0x10AB:
        case 0x10AC:
        case 0x10AD:
        case 0x10AE:
        case 0x10AF:
        case 0x10B0:
        case 0x10B1:
        case 0x10B2:
        case 0x10B3:
        case 0x10B4:
        case 0x10B6:
        case 0x10B7:
        case 0x10B8:
        case 0x10BE:
        case 0x10C1:
        case 0x10C6:
        case 0x10C7:
        case 0x10C8:
        case 0x10CA:
        case 0x10CF:
        case 0x10D0:
        case 0x10D1:
        case 0x10D2:
        case 0x10D4:
        case 0x10D7:
        case 0x10D8:
        case 0x10DB:
        case 0x10DC:
        case 0x10DD:
        case 0x10E0:
        case 0x10E1:
        case 0x10E2:
        case 0x10E3:
        case 0x10E4:
        case 0x10E9:
        case 0x10EC:
        case 0x10ED:
        case 0x10EE:
        case 0x10F1:
        case 0x10F2:
        case 0x10F3:
        case 0x10F4:
          return v2;
        case 0x108B:
        case 0x108C:
        case 0x109A:
          v3 = 15;
          goto LABEL_74;
        case 0x1096:
        case 0x1098:
        case 0x10BA:
        case 0x10BB:
          v3 = 18;
          goto LABEL_74;
        case 0x10A4:
        case 0x10A5:
        case 0x10BC:
        case 0x10D5:
        case 0x10D9:
        case 0x10DA:
          goto LABEL_63;
        case 0x10A7:
        case 0x10A9:
        case 0x10D6:
          v3 = 29;
          goto LABEL_74;
        case 0x10BD:
        case 0x10BF:
        case 0x10C0:
        case 0x10C2:
        case 0x10C3:
        case 0x10CB:
        case 0x10CC:
        case 0x10CD:
        case 0x10CE:
        case 0x10E5:
        case 0x10F5:
          goto LABEL_4;
        case 0x10C4:
        case 0x10C5:
          goto LABEL_44;
        case 0x10C9:
        case 0x10E6:
        case 0x10E7:
        case 0x10E8:
          goto LABEL_42;
        case 0x10D3:
        case 0x10F6:
          v3 = 16;
          goto LABEL_74;
        case 0x10DE:
        case 0x10DF:
          goto LABEL_64;
        case 0x10EA:
        case 0x10EB:
        case 0x10EF:
        case 0x10F0:
          v3 = 22;
          goto LABEL_74;
        default:
          if (v1 - 4169 < 5)
          {
            goto LABEL_44;
          }

          if (v1 - 4190 >= 3)
          {
            return v2;
          }

LABEL_63:
          v3 = 13;
          break;
      }

      goto LABEL_74;
    }

    if (*(a1 + 9584) > 0xD54u)
    {
      v4 = v1 - 4096;
      v3 = 1;
      switch(v4)
      {
        case 0u:
          goto LABEL_74;
        case 1u:
        case 4u:
          v3 = 2;
          goto LABEL_74;
        case 8u:
        case 9u:
        case 0xCu:
        case 0xDu:
          v3 = 3;
          goto LABEL_74;
        case 0xEu:
        case 0x15u:
        case 0x16u:
        case 0x17u:
        case 0x1Eu:
          v3 = 4;
          goto LABEL_74;
        case 0xFu:
        case 0x11u:
          v3 = 5;
          goto LABEL_74;
        case 0x10u:
        case 0x12u:
        case 0x1Du:
          v3 = 7;
          goto LABEL_74;
        case 0x13u:
        case 0x14u:
        case 0x18u:
          v3 = 9;
          goto LABEL_74;
        case 0x19u:
        case 0x1Au:
          v3 = 11;
          goto LABEL_74;
        case 0x26u:
        case 0x27u:
        case 0x28u:
          v3 = 6;
          goto LABEL_74;
        default:
          return v2;
      }

      return v2;
    }

    if (v1 - 1080 <= 8 && ((1 << (v1 - 56)) & 0x115) != 0)
    {
LABEL_35:
      v3 = 31;
      goto LABEL_74;
    }

    if (v1 - 3404 < 4)
    {
LABEL_30:
      v3 = 26;
LABEL_74:
      v2 = 0;
      *(a1 + 284) = v3;
      return v2;
    }

    if (v1 != 3411)
    {
      return v2;
    }

    goto LABEL_73;
  }

  if (*(a1 + 9584) <= 0x159Fu)
  {
    switch(*(a1 + 9584))
    {
      case 0x1501:
LABEL_44:
        v3 = 19;
        goto LABEL_74;
      case 0x1502:
      case 0x1503:
        v3 = 23;
        goto LABEL_74;
      case 0x1504:
      case 0x1505:
      case 0x1506:
      case 0x1507:
      case 0x1508:
      case 0x1509:
      case 0x150B:
      case 0x1512:
      case 0x1513:
      case 0x1514:
      case 0x1515:
      case 0x1517:
      case 0x1519:
      case 0x151A:
      case 0x151B:
      case 0x151C:
      case 0x151D:
      case 0x151E:
      case 0x151F:
      case 0x1520:
      case 0x1528:
      case 0x1529:
      case 0x152A:
      case 0x152B:
      case 0x152C:
      case 0x152D:
      case 0x152E:
      case 0x152F:
      case 0x1530:
      case 0x1531:
      case 0x1532:
      case 0x153C:
      case 0x153D:
      case 0x153E:
      case 0x153F:
      case 0x1540:
      case 0x1541:
      case 0x1542:
      case 0x1543:
      case 0x1544:
      case 0x1545:
        return v2;
      case 0x150A:
      case 0x150D:
      case 0x1518:
      case 0x1526:
LABEL_42:
        v3 = 30;
        goto LABEL_74;
      case 0x150C:
        v3 = 17;
        goto LABEL_74;
      case 0x150E:
      case 0x150F:
      case 0x1510:
      case 0x1511:
      case 0x1516:
      case 0x1527:
        goto LABEL_35;
      case 0x1521:
      case 0x1522:
      case 0x1523:
      case 0x1524:
      case 0x1546:
        v3 = 32;
        goto LABEL_74;
      case 0x1525:
LABEL_64:
        v3 = 21;
        goto LABEL_74;
      case 0x1533:
      case 0x1534:
      case 0x1535:
      case 0x1536:
      case 0x1537:
      case 0x1538:
        goto LABEL_40;
      case 0x1539:
        v3 = 35;
        goto LABEL_74;
      case 0x153A:
      case 0x153B:
        goto LABEL_41;
      default:
        v8 = v1 - 89;
        if (v1 - 5465 > 0x23)
        {
          goto LABEL_49;
        }

        if (((1 << v8) & 3) != 0)
        {
          goto LABEL_41;
        }

        if (((1 << v8) & 0xC00000) != 0)
        {
          goto LABEL_73;
        }

        if (((1 << v8) & 0xC00000000) != 0)
        {
          goto LABEL_40;
        }

LABEL_49:
        if (v1 - 4699 < 5)
        {
          goto LABEL_50;
        }

        return v2;
    }
  }

  if (*(a1 + 9584) <= 0x15F1u)
  {
    v5 = v1 + 96;
    if (v1 - 5536 <= 0x38)
    {
      if (((1 << v5) & 0x1C0000003800000) != 0)
      {
        goto LABEL_73;
      }

      if (((1 << v5) & 0xF) != 0)
      {
LABEL_41:
        v3 = 24;
        goto LABEL_74;
      }

      if (((1 << v5) & 0x78000000) != 0)
      {
        goto LABEL_30;
      }
    }

    if (v1 - 5599 < 4)
    {
      goto LABEL_30;
    }

    if (v1 != 5603)
    {
      return v2;
    }

LABEL_73:
    v3 = 25;
    goto LABEL_74;
  }

  if (*(a1 + 9584) <= 0x1F3Fu)
  {
    v7 = v1 + 14;
    if (v1 - 5618 > 0xB)
    {
      if (v1 - 6684 < 2)
      {
        v3 = 28;
        goto LABEL_74;
      }

      if (v1 - 6686 >= 2)
      {
        return v2;
      }
    }

    else if (((1 << v7) & 0x78C) == 0)
    {
      if (((1 << v7) & 0x863) == 0)
      {
LABEL_40:
        v3 = 34;
        goto LABEL_74;
      }

LABEL_50:
      v3 = 36;
      goto LABEL_74;
    }

    v3 = 27;
    goto LABEL_74;
  }

  if (*(a1 + 9584) <= 0x30FFu)
  {
    if (v1 - 8000 <= 5 && ((1 << (v1 - 64)) & 0x23) != 0)
    {
      v3 = 33;
    }

    else
    {
      if (v1 != 10572)
      {
        return v2;
      }

LABEL_4:
      v3 = 20;
    }

    goto LABEL_74;
  }

  if (v1 - 12544 < 3 || v1 - 21762 < 2)
  {
    goto LABEL_50;
  }

  return v2;
}

uint64_t e1000_setup_init_funcs(uint64_t a1, int a2)
{
  result = e1000_set_mac_type(a1);
  if (!result)
  {
    if (!*(a1 + 16))
    {
      return 4294967293;
    }

    e1000_init_mac_ops_generic(a1);
    e1000_init_phy_ops_generic(a1);
    e1000_init_nvm_ops_generic(a1);
    e1000_init_mbx_ops_generic(a1);
    v5 = *(a1 + 284);
    result = 4294967293;
    if (v5 > 18)
    {
      if (v5 >= 29)
      {
        if ((v5 - 29) >= 5)
        {
          if ((v5 - 34) >= 2)
          {
            if (v5 != 36)
            {
              return result;
            }

            e1000_init_function_pointers_i225(a1);
          }

          else
          {
            e1000_init_function_pointers_i210(a1);
          }
        }

        else
        {
          e1000_init_function_pointers_82575(a1);
        }
      }

      else
      {
        e1000_init_function_pointers_ich8lan(a1);
      }
    }

    else if (v5 <= 8)
    {
      if ((v5 - 4) >= 5)
      {
        if ((v5 - 2) >= 2)
        {
          if (v5 != 1)
          {
            return result;
          }

          e1000_init_function_pointers_82542(a1);
        }

        else
        {
          e1000_init_function_pointers_82543(a1);
        }
      }

      else
      {
        e1000_init_function_pointers_82540(a1);
      }
    }

    else if ((v5 - 13) < 5)
    {
      e1000_init_function_pointers_82571(a1);
    }

    else if ((v5 - 9) >= 4)
    {
      if (v5 != 18)
      {
        return result;
      }

      e1000_init_function_pointers_80003es2lan(a1);
    }

    else
    {
      e1000_init_function_pointers_82541(a1);
    }

    if (!a2)
    {
      return 0;
    }

    v6 = *(a1 + 40);
    if (!v6)
    {
      return 4294967293;
    }

    result = v6(a1);
    if (result)
    {
      return result;
    }

    v7 = *(a1 + 1144);
    if (!v7)
    {
      return 4294967293;
    }

    result = v7(a1);
    if (result)
    {
      return result;
    }

    v8 = *(a1 + 888);
    if (!v8)
    {
      return 4294967293;
    }

    result = v8(a1);
    if (result)
    {
      return result;
    }

    v9 = *(a1 + 1264);
    if (!v9)
    {
      return 4294967293;
    }

    return v9(a1);
  }

  return result;
}

uint64_t e1000_get_bus_info(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_clear_vfta(uint64_t result)
{
  v1 = *(result + 96);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t e1000_write_vfta(uint64_t result)
{
  v1 = *(result + 216);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t e1000_update_mc_addr_list(uint64_t result)
{
  v1 = *(result + 144);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t e1000_check_for_link(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967293;
  }
}

uint64_t e1000_check_mng_mode(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_reset_hw(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967293;
  }
}

uint64_t e1000_init_hw(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967293;
  }
}

uint64_t e1000_setup_link(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967293;
  }
}

uint64_t e1000_get_speed_and_duplex(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967293;
  }
}

uint64_t e1000_setup_led(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_cleanup_led(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_blink_led(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_id_led_init(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_led_on(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_led_off(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_config_collision_dist(uint64_t result)
{
  v1 = *(result + 224);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t e1000_rar_set(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_validate_mdi_setting(uint64_t a1)
{
  v1 = *(a1 + 248);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_check_reset_block(uint64_t a1)
{
  v1 = *(a1 + 920);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_read_phy_reg(uint64_t a1)
{
  v1 = *(a1 + 976);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_write_phy_reg(uint64_t a1)
{
  v1 = *(a1 + 1032);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_release_phy(uint64_t result)
{
  v1 = *(result + 1000);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t e1000_acquire_phy(uint64_t a1)
{
  v1 = *(a1 + 896);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_cfg_on_link_up(uint64_t a1)
{
  v1 = *(a1 + 904);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_get_cable_length(uint64_t a1)
{
  v1 = *(a1 + 952);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_get_phy_info(uint64_t a1)
{
  v1 = *(a1 + 960);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_phy_hw_reset(uint64_t a1)
{
  v1 = *(a1 + 1008);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_phy_commit(uint64_t a1)
{
  v1 = *(a1 + 928);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_set_d0_lplu_state(uint64_t a1)
{
  v1 = *(a1 + 1016);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_set_d3_lplu_state(uint64_t a1)
{
  v1 = *(a1 + 1024);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_read_mac_addr(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1)
  {
    return v1();
  }

  else
  {
    return e1000_read_mac_addr_generic(a1);
  }
}

uint64_t e1000_validate_nvm_checksum(uint64_t a1)
{
  v1 = *(a1 + 1200);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967293;
  }
}

uint64_t e1000_update_nvm_checksum(uint64_t a1)
{
  v1 = *(a1 + 1184);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967293;
  }
}

uint64_t e1000_reload_nvm(uint64_t result)
{
  v1 = *(result + 1176);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t e1000_read_nvm(uint64_t a1)
{
  v1 = *(a1 + 1160);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967293;
  }
}

uint64_t e1000_write_nvm(uint64_t a1)
{
  v1 = *(a1 + 1208);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_power_up_phy(uint64_t result)
{
  v1 = result;
  v2 = *(result + 1056);
  if (v2)
  {
    result = v2(result);
  }

  v3 = *(v1 + 192);
  if (v3)
  {

    return v3(v1);
  }

  return result;
}

uint64_t e1000_power_down_phy(uint64_t result)
{
  v1 = *(result + 1064);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t e1000_power_up_fiber_serdes_link(uint64_t result)
{
  v1 = *(result + 184);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t e1000_shutdown_fiber_serdes_link(uint64_t result)
{
  v1 = *(result + 176);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t e1000_set_eee(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967293;
  }
}

uint64_t e1000_acquire_swfw_sync_i225(uint64_t a1, int a2)
{
  v4 = a2 | (a2 << 16);
  v5 = 200;
  while (1)
  {
    if (e1000_get_hw_semaphore_i225(a1))
    {
      return 4294967283;
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B5CuLL, &readData);
    __dmb(1u);
    v6 = readData;
    if (readData == -1)
    {
      return 4294967283;
    }

    if ((readData & v4) == 0)
    {
      break;
    }

    e1000_put_hw_semaphore_generic(a1);
    IODelay(0x1388uLL);
    if (!--v5)
    {
      return 4294967283;
    }
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B5CuLL, v6 | a2);
  return 0;
}

uint64_t e1000_get_hw_semaphore_i225(uint64_t a1)
{
  v2 = 2000;
  while (1)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B50uLL, 2u);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B50uLL, &readData);
    __dmb(1u);
    if (readData == -1)
    {
      return 0xFFFFFFFFLL;
    }

    if ((readData & 2) != 0)
    {
      break;
    }

    IODelay(0x32uLL);
    if (!--v2)
    {
      e1000_put_hw_semaphore_generic(a1);
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

void e1000_release_swfw_sync_i225(uint64_t a1, int a2)
{
  if (!e1000_get_hw_semaphore_i225(a1))
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B5CuLL, &readData);
    __dmb(1u);
    v4 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B5CuLL, v4 & ~a2);
    e1000_put_hw_semaphore_generic(a1);
  }
}

uint64_t e1000_setup_copper_link_i225(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData & 0xFFFFE7FF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x40);
  v5 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE14uLL, &v5);
  __dmb(1u);
  v3 = v5;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE14uLL, v3 & 0xFFFFFFDF);
  return e1000_setup_copper_link_generic(a1);
}

uint64_t e1000_read_nvm_srrd_i225(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  while (!(*(a1 + 1152))(a1))
  {
    v9 = a3 - v8;
    if ((a3 - v8) >= 512)
    {
      v9 = 512;
    }

    nvm_eerd = e1000_read_nvm_eerd(a1, a2, v9, (a4 + 2 * v8));
    (*(a1 + 1168))(a1);
    if (nvm_eerd)
    {
      return nvm_eerd;
    }

    v8 = (v8 + 512);
    if (v8 >= a3)
    {
      return 0;
    }
  }

  return 13;
}

uint64_t e1000_write_nvm_srwr_i225(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  while (1)
  {
    if ((*(a1 + 1152))(a1))
    {
      return 13;
    }

    v9 = a3 - v8;
    if ((a3 - v8) >= 512)
    {
      v9 = 512;
    }

    v10 = __e1000_write_nvm_srwr(a1, a2, v9, a4 + 2 * v8);
    (*(a1 + 1168))(a1);
    if (v10)
    {
      break;
    }

    v8 = (v8 + 512);
    if (v8 >= a3)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t __e1000_write_nvm_srwr(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a1 + 1232);
  v7 = v6 >= a2;
  v8 = v6 - a2;
  if (v8 == 0 || !v7)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v4;
  v19 = v5;
  result = 0xFFFFFFFFLL;
  if (a3 && v8 >= a3)
  {
    v11 = 0;
    v13 = a3;
    do
    {
      v14 = (4 * (v11 + a2)) | (*(a4 + 2 * v11) << 16);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x12018uLL, v14 | 1);
      v15 = 100000;
      while (1)
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x12018uLL, &readData);
        __dmb(1u);
        if ((readData & 2) != 0)
        {
          break;
        }

        IODelay(5uLL);
        if (!--v15)
        {
          return 0xFFFFFFFFLL;
        }
      }

      result = 0;
      ++v11;
    }

    while (v11 != v13);
  }

  return result;
}

uint64_t e1000_validate_nvm_checksum_i225(uint64_t a1)
{
  if ((*(a1 + 1152))())
  {
    return 13;
  }

  v3 = *(a1 + 1160);
  *(a1 + 1160) = e1000_read_nvm_eerd;
  v4 = e1000_validate_nvm_checksum_generic(a1);
  *(a1 + 1160) = v3;
  (*(a1 + 1168))(a1);
  return v4;
}

uint64_t e1000_update_nvm_checksum_i225(uint64_t a1)
{
  v9 = 0;
  v2 = e1000_read_nvm_eerd(a1, 0, 1u, &v9);
  if (!v2)
  {
    if ((*(a1 + 1152))(a1))
    {
      return 13;
    }

    else
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = v3;
        v6 = e1000_read_nvm_eerd(a1, v3, 1u, &v9);
        if (v6)
        {
          v2 = v6;
          (*(a1 + 1168))(a1);
          return v2;
        }

        v4 += v9;
        ++v3;
      }

      while (v5 < 0x3E);
      v10 = -17734 - v4;
      v7 = __e1000_write_nvm_srwr(a1, 0x3Fu, 1u, &v10);
      (*(a1 + 1168))(a1);
      if (v7)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return e1000_update_flash_i225(a1);
      }
    }
  }

  return v2;
}

uint64_t e1000_update_flash_i225(uint64_t a1)
{
  LOWORD(data) = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x12114uLL, &readData);
  __dmb(1u);
  v2 = readData;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
  __dmb(1u);
  if ((readData & 0x8000) != 0)
  {
    result = e1000_pool_flash_update_done_i210(a1);
    if (result != -1)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
      __dmb(1u);
      v8 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v8 | 0x800000);
      return e1000_pool_flash_update_done_i210(a1);
    }
  }

  else if ((v2 & 4) != 0)
  {
    return 0;
  }

  else
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
    __dmb(1u);
    v3 = readData;
    v4 = (readData >> 13) & 0x1000;
    result = e1000_write_erase_flash_command_i225(a1, 0x2000000, v4);
    if (result)
    {
      v6 = ((v3 >> 25) & 1) << 13;
      v7 = 2048;
      while (1)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x12050uLL, 2u);
        result = e1000_write_erase_flash_command_i225(a1, 0x1000000, v6);
        if (result)
        {
          break;
        }

        result = e1000_read_nvm_eerd(a1, v4, 1u, &data);
        if (result)
        {
          break;
        }

        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x1204CuLL, data);
        result = e1000_poll_eerd_eewr_done(a1, 0);
        if (result)
        {
          break;
        }

        LOWORD(v4) = v4 + 1;
        IODelay(0x3E8uLL);
        v6 += 2;
        if (!--v7)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t e1000_get_flash_presence_i225(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  return (readData >> 19) & 1;
}

uint64_t e1000_set_flsw_flash_burst_counter_i225(uint64_t a1, uint32_t data)
{
  if (data > 0xFFF)
  {
    return 16;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x12050uLL, data);
  return 0;
}

uint64_t e1000_write_erase_flash_command_i225(uint64_t a1, int a2, int a3)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x12048uLL, &readData);
  __dmb(1u);
  if ((readData & 0x40000000) == 0)
  {
    v6 = -999;
    do
    {
      v7 = v6;
      IODelay(5uLL);
      v10 = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x12048uLL, &v10);
      __dmb(1u);
      if (!v7)
      {
        break;
      }

      v6 = v7 + 1;
    }

    while ((v10 & 0x40000000) == 0);
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x12048uLL, a3 | a2);
  v9 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x12048uLL, &v9);
  __dmb(1u);
  return ~HIBYTE(v9) & 0x10;
}

void *e1000_init_function_pointers_i225(void *a1)
{
  e1000_init_mac_ops_generic(a1);
  e1000_init_phy_ops_generic(a1);
  result = e1000_init_nvm_ops_generic(a1);
  a1[5] = e1000_init_mac_params_i225;
  a1[143] = e1000_init_nvm_params_i225;
  a1[111] = e1000_init_phy_params_i225;
  return result;
}

uint64_t e1000_init_mac_params_i225(uint64_t a1)
{
  e1000_init_mac_ops_generic(a1);
  *(a1 + 1116) = 1;
  *(a1 + 326) = 128;
  *(a1 + 844) = 16;
  *(a1 + 168) = e1000_set_eee_i225;
  *(a1 + 152) = e1000_reset_hw_i225;
  *(a1 + 160) = e1000_init_hw_i225;
  *(a1 + 192) = e1000_setup_link_generic;
  *(a1 + 72) = e1000_check_for_copper_link_generic;
  *(a1 + 120) = e1000_get_speed_and_duplex_copper_generic;
  *(a1 + 256) = e1000_acquire_swfw_sync_i225;
  *(a1 + 264) = e1000_release_swfw_sync_i225;
  *(a1 + 1378) = 1;
  *(a1 + 200) = e1000_setup_copper_link_i225;
  *(a1 + 850) = 1;
  *(a1 + 144) = e1000_update_mc_addr_list_generic;
  *(a1 + 216) = e1000_write_vfta_generic;
  return 0;
}

uint64_t e1000_init_nvm_params_i225(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  v2 = readData;
  v3 = (readData >> 11) & 0xF;
  if (v3 >= 9)
  {
    v3 = 9;
  }

  v4 = v3 + 6;
  *(a1 + 1232) = 1 << v4;
  *(a1 + 1238) = 8;
  *(a1 + 1234) = 1;
  *(a1 + 1216) = 2;
  v5 = (v2 & 0x400) == 0;
  if ((v2 & 0x400) != 0)
  {
    v6 = 32;
  }

  else
  {
    v6 = 8;
  }

  *(a1 + 1240) = v6;
  if (v5)
  {
    v7 = 8;
  }

  else
  {
    v7 = 16;
  }

  *(a1 + 1236) = v7;
  if (v4 == 15)
  {
    *(a1 + 1240) = 128;
  }

  *(a1 + 1152) = e1000_acquire_nvm_i225;
  *(a1 + 1168) = e1000_release_nvm_i225;
  *(a1 + 1192) = e1000_valid_led_default_i225;
  v14 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &v14);
  __dmb(1u);
  v8 = e1000_null_ops_generic;
  v9 = e1000_null_write_nvm;
  if ((v14 & 0x80000) != 0)
  {
    *(a1 + 1160) = e1000_read_nvm_srrd_i225;
    v11 = e1000_update_nvm_checksum_i225;
    v8 = e1000_validate_nvm_checksum_i225;
    v9 = e1000_write_nvm_srwr_i225;
    v10 = 4;
  }

  else
  {
    v10 = 1;
    v11 = e1000_null_ops_generic;
  }

  *(a1 + 1216) = v10;
  *(a1 + 1208) = v9;
  *(a1 + 1200) = v8;
  *(a1 + 1184) = v11;
  return 0;
}

uint64_t e1000_init_phy_params_i225(uint64_t a1)
{
  if (*(a1 + 1116) == 1)
  {
    *(a1 + 1056) = e1000_power_up_phy_copper;
    *(a1 + 1064) = e1000_power_down_phy_copper_base;
    *(a1 + 1122) = 175;
    *(a1 + 1108) = 100;
    *(a1 + 896) = e1000_acquire_phy_base;
    *(a1 + 920) = e1000_check_reset_block_generic;
    *(a1 + 928) = e1000_phy_sw_reset_generic;
    *(a1 + 1000) = e1000_release_phy_base;
    *(a1 + 1008) = e1000_phy_hw_reset_generic;
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
    __dmb(1u);
    v2 = readData;
    result = (*(a1 + 1008))(a1);
    if (!result)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v2);
      *(a1 + 976) = e1000_read_phy_reg_gpy;
      *(a1 + 1032) = e1000_write_phy_reg_gpy;
      result = e1000_get_phy_id(a1);
      v4 = *(a1 + 1104) & 0xFFFFFC00;
      *(a1 + 1104) = v4;
      if (v4 == 1741282304)
      {
        *(a1 + 1072) = 16;
        *(a1 + 1016) = e1000_set_d0_lplu_state_i225;
        *(a1 + 1024) = e1000_set_d3_lplu_state_i225;
      }

      else
      {
        return 4294967294;
      }
    }
  }

  else
  {
    result = 0;
    *(a1 + 1072) = 1;
  }

  return result;
}

uint64_t e1000_get_cfg_done_i225(uint64_t a1)
{
  v2 = -100;
  do
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x1010uLL, &readData);
    __dmb(1u);
    if ((readData & 0x40000) != 0)
    {
      break;
    }

    IODelay(0x3E8uLL);
  }

  while (!__CFADD__(v2++, 1));
  return 0;
}

uint64_t e1000_set_d0_lplu_state_i225(uint64_t a1, int a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE14uLL, &readData);
  __dmb(1u);
  v4 = readData & 0xFFFFF7BF;
  if (a2)
  {
    v5 = 2112;
  }

  else
  {
    v5 = 0;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE14uLL, v4 | v5);
  return 0;
}

uint64_t e1000_set_d3_lplu_state_i225(uint64_t a1, int a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE14uLL, &readData);
  __dmb(1u);
  v4 = readData & 0xFFFFEDF7;
  if (a2)
  {
    v5 = 4616;
  }

  else
  {
    v5 = 0;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE14uLL, v4 | v5);
  return 0;
}

uint64_t e1000_set_eee_i225(uint64_t a1, int a2, int a3, int a4)
{
  if (*(a1 + 284) == 36)
  {
    v19 = v4;
    v20 = v5;
    if (*(a1 + 1116) == 1)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE38uLL, &readData);
      __dmb(1u);
      v10 = readData;
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE30uLL, &readData);
      __dmb(1u);
      v11 = readData;
      if (*(a1 + 1377))
      {
        v12 = v10 & 0xFFFFFFE3;
        v13 = readData & 0xFFF8FFFF;
      }

      else
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE34uLL, &readData);
        __dmb(1u);
        if (a4)
        {
          v14 = 4;
        }

        else
        {
          v14 = 0;
        }

        if (a3)
        {
          v15 = 8;
        }

        else
        {
          v15 = 0;
        }

        if (a2)
        {
          v16 = 16;
        }

        else
        {
          v16 = 0;
        }

        v12 = v15 | v16 | v14 | v10 & 0xFFFFFFE3;
        v13 = v11 | 0x70000;
      }

      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE38uLL, v12);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE30uLL, v13);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE38uLL, &readData);
      __dmb(1u);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE30uLL, &readData);
      __dmb(1u);
    }
  }

  return 0;
}

uint64_t e1000_reset_hw_i225(uint64_t a1)
{
  e1000_disable_pcie_primary_generic(a1);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD8uLL, 0xFFFFFFFF);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x100uLL, 0);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x400uLL, 8u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(0x2710uLL);
  v5 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &v5);
  __dmb(1u);
  v2 = v5;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x4000000);
  e1000_get_auto_rd_done_generic(a1);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD8uLL, 0xFFFFFFFF);
  v4 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xC0uLL, &v4);
  __dmb(1u);
  return e1000_check_alt_mac_addr_generic(a1);
}

uint64_t e1000_valid_led_default_i225(uint64_t a1, __int16 *a2)
{
  result = (*(a1 + 1160))(a1, 4, 1, a2);
  if (!result)
  {
    v5 = *a2;
    if (v5 == 0xFFFF || v5 == 0)
    {
      if (*(a1 + 1116) == 3)
      {
        v7 = 280;
      }

      else
      {
        v7 = 2073;
      }

      *a2 = v7;
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::allocRing(uint64_t a1, uint64_t a2, int a3)
{
  segmentsCount[0] = 1;
  flags = 0;
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::allocRing(a2);
  }

  v6 = IOBufferMemoryDescriptor::Create(3uLL, (IOVMPageSize + 16 * (*(a2 + 280) + a3) - 1) / IOVMPageSize * IOVMPageSize, IOVMPageSize, (a2 + 296));
  if (v6)
  {
    v7 = v6;
    if ((pcindkll & 2) == 0)
    {
      goto LABEL_17;
    }

    DriverKit_AppleEthernetE1000_IVars::allocRing();
    goto LABEL_15;
  }

  AddressRange = IOBufferMemoryDescriptor::GetAddressRange(*(a2 + 296), &range);
  if (AddressRange)
  {
    v7 = AddressRange;
    if ((pcindkll & 2) == 0)
    {
      goto LABEL_17;
    }

    DriverKit_AppleEthernetE1000_IVars::allocRing();
    goto LABEL_15;
  }

  *(a2 + 264) = range.address;
  specification.options = 0;
  memset(specification._resv, 0, sizeof(specification._resv));
  specification.maxAddressBits = 64;
  v9 = IODMACommand::Create(*(a1 + 9608), 0, &specification, (a2 + 288));
  if (v9)
  {
    v7 = v9;
    if ((pcindkll & 2) == 0)
    {
      goto LABEL_17;
    }

    DriverKit_AppleEthernetE1000_IVars::allocRing();
    goto LABEL_15;
  }

  v7 = IODMACommand::PrepareForDMA(*(a2 + 288), 0, *(a2 + 296), 0, 0, &flags, segmentsCount, &range, 0);
  if (!v7)
  {
    *(a2 + 272) = range.address;
    v10 = *(a2 + 280);
    operator new[]();
  }

  if ((pcindkll & 2) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::allocRing();
LABEL_15:
    v7 = segmentsCount[1];
  }

LABEL_17:
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::allocRing();
  }

  return v7;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::allocateRings(DriverKit_AppleEthernetE1000_IVars *this)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::allocateRings();
  }

  v2 = this + 9680;
  v3 = -1;
  while (++v3 < *(this + 9673))
  {
    *(v2 + 158) = 128;
    v4 = DriverKit_AppleEthernetE1000_IVars::allocRing(this, (v2 + 352), 0);
    if (!v4)
    {
      *(v2 + 70) = 128;
      v4 = DriverKit_AppleEthernetE1000_IVars::allocRing(this, v2, *(this + 71) > 28);
      v2 += 352;
      if (!v4)
      {
        continue;
      }
    }

    v5 = v4;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_9:
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::allocateRings();
  }

  return v5;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::freeRing(uint64_t a1, void *a2)
{
  v3 = a2[36];
  if (v3)
  {
    IODMACommand::CompleteDMA(v3, 0, 0);
    v4 = a2[36];
    if (v4)
    {
      (*(*v4 + 16))(v4);
      a2[36] = 0;
    }
  }

  v5 = a2[37];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    a2[37] = 0;
  }

  result = a2[38];
  if (result)
  {
    operator delete[]();
  }

  a2[38] = 0;
  a2[16] = 0;
  return result;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::freeRings(uint64_t this)
{
  if (*(this + 9673))
  {
    v1 = this;
    v2 = 0;
    v3 = (this + 9680);
    do
    {
      v4 = DriverKit_AppleEthernetE1000_IVars::freeRing(this, v3 + 44);
      this = DriverKit_AppleEthernetE1000_IVars::freeRing(v4, v3);
      ++v2;
      v3 += 44;
    }

    while (v2 < *(v1 + 9673));
  }

  return this;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::startInterface(DriverKit_AppleEthernetE1000_IVars *this)
{
  DriverKit_AppleEthernetE1000_IVars::selMed(this, 32);
  *(this + 2599) = 1500;
  *(this + 2597) = 0x4000;
  *__str = 0u;
  v32 = 0u;
  *returnDeviceNumber = 0;
  returnFunctionNumber = 0;
  IOPCIDevice::GetBusDeviceFunction(*(this + 1201), &returnDeviceNumber[1], returnDeviceNumber, &returnFunctionNumber, 0);
  snprintf(__str, 0x20uLL, "e1000:%d:%d:%d:%s", returnDeviceNumber[1], returnDeviceNumber[0], returnFunctionNumber, &unk_100035152);
  *&options.packetCount = 0x20000000200;
  options.bufferSize = *(this + 2597);
  *&options.maxBuffersPerPacket = 1;
  options.poolFlags = 0x20000000;
  options.dmaSpecification.maxAddressBits = 64;
  v2 = IOUserNetworkPacketBufferPool::CreateWithOptions(*(this + 1201), "e1000", &options, this + 1320);
  if (!v2)
  {
    v5 = IOUserNetworkTxSubmissionQueue::Create(*(this + 1320), *(this + 1200), 0x80u, 0, *(this + 1202), this + 1252);
    if (v5)
    {
      v3 = v5;
      if ((pcindkll & 1) == 0)
      {
        return v3;
      }

      DriverKit_AppleEthernetE1000_IVars::startInterface();
    }

    else
    {
      ActionTxSubmit = DriverKit_AppleEthernetE1000::CreateActionTxSubmit(*(this + 1200), 8uLL, this + 1249);
      if (ActionTxSubmit)
      {
        v3 = ActionTxSubmit;
        if ((pcindkll & 1) == 0)
        {
          return v3;
        }

        DriverKit_AppleEthernetE1000_IVars::startInterface();
      }

      else
      {
        v7 = (*(**(this + 1252) + 72))(*(this + 1252), this + 10000);
        if (v7)
        {
          v3 = v7;
          if ((pcindkll & 1) == 0)
          {
            return v3;
          }

          DriverKit_AppleEthernetE1000_IVars::startInterface();
        }

        else
        {
          v8 = IODataQueueDispatchSource::SetDataAvailableHandler(*(this + 1250), *(this + 1249), 0);
          if (v8)
          {
            v3 = v8;
            if ((pcindkll & 1) == 0)
            {
              return v3;
            }

            DriverKit_AppleEthernetE1000_IVars::startInterface();
          }

          else
          {
            v9 = IOUserNetworkTxCompletionQueue::Create(*(this + 1320), *(this + 1200), 0x80u, 0, *(this + 1202), this + 1253);
            if (v9)
            {
              v3 = v9;
              if ((pcindkll & 1) == 0)
              {
                return v3;
              }

              DriverKit_AppleEthernetE1000_IVars::startInterface();
            }

            else
            {
              v11 = (*(**(this + 1253) + 72))(*(this + 1253), this + 10008);
              if (v11)
              {
                v3 = v11;
                if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                {
                  return v3;
                }

                *buf = 136315650;
                v24 = "startInterface";
                v25 = 1024;
                v26 = 168;
                v27 = 1024;
                v28 = v3;
                goto LABEL_4;
              }

              v12 = IOUserNetworkRxSubmissionQueue::Create(*(this + 1320), *(this + 1200), 0x80u, 0, *(this + 1202), this + 1296);
              if (v12)
              {
                v3 = v12;
                if ((pcindkll & 1) == 0)
                {
                  return v3;
                }

                DriverKit_AppleEthernetE1000_IVars::startInterface();
              }

              else
              {
                ActionRxSubmit = DriverKit_AppleEthernetE1000::CreateActionRxSubmit(*(this + 1200), 8uLL, this + 1293);
                if (ActionRxSubmit)
                {
                  v3 = ActionRxSubmit;
                  if ((pcindkll & 1) == 0)
                  {
                    return v3;
                  }

                  DriverKit_AppleEthernetE1000_IVars::startInterface();
                }

                else
                {
                  v14 = (*(**(this + 1296) + 72))(*(this + 1296), this + 10352);
                  if (v14)
                  {
                    v3 = v14;
                    if ((pcindkll & 1) == 0)
                    {
                      return v3;
                    }

                    DriverKit_AppleEthernetE1000_IVars::startInterface();
                  }

                  else
                  {
                    v15 = IODataQueueDispatchSource::SetDataAvailableHandler(*(this + 1294), *(this + 1293), 0);
                    if (v15)
                    {
                      v3 = v15;
                      if ((pcindkll & 1) == 0)
                      {
                        return v3;
                      }

                      DriverKit_AppleEthernetE1000_IVars::startInterface();
                    }

                    else
                    {
                      v16 = IOUserNetworkRxCompletionQueue::Create(*(this + 1320), *(this + 1200), 0x80u, 0, *(this + 1202), this + 1297);
                      if (!v16)
                      {
                        v17 = (*(**(this + 1297) + 72))(*(this + 1297), this + 10360);
                        if (v17)
                        {
                          v3 = v17;
                          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                          {
                            return v3;
                          }

                          *buf = 136315650;
                          v24 = "startInterface";
                          v25 = 1024;
                          v26 = 205;
                          v27 = 1024;
                          v28 = v3;
                          goto LABEL_4;
                        }

                        v22 = 18;
                        SupportedMediaArray = DriverKit_AppleEthernetE1000_IVars::getSupportedMediaArray(this, buf, &v22);
                        if (SupportedMediaArray)
                        {
                          v3 = SupportedMediaArray;
                          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                          {
                            return v3;
                          }

                          *v21 = 136315650;
                          *&v21[4] = "startInterface";
                          *&v21[12] = 1024;
                          *&v21[14] = 216;
                          *&v21[18] = 1024;
                          *&v21[20] = v3;
                        }

                        else
                        {
                          v19 = (*(**(this + 1200) + 72))(*(this + 1200), buf, v22);
                          if (!v19)
                          {
                            v20 = *(this + 648);
                            *v21 = *(this + 626);
                            *&v21[16] = v20;
                            v3 = (*(**(this + 1200) + 272))(*(this + 1200), *(this + 68) | (*(this + 138) << 32), *(this + 1320), v21, 4);
                            if (pcindkll)
                            {
                              DriverKit_AppleEthernetE1000_IVars::startInterface();
                            }

                            return v3;
                          }

                          v3 = v19;
                          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                          {
                            return v3;
                          }

                          *v21 = 136315650;
                          *&v21[4] = "startInterface";
                          *&v21[12] = 1024;
                          *&v21[14] = 221;
                          *&v21[18] = 1024;
                          *&v21[20] = v3;
                        }

                        v4 = v21;
                        goto LABEL_5;
                      }

                      v3 = v16;
                      if ((pcindkll & 1) == 0)
                      {
                        return v3;
                      }

                      DriverKit_AppleEthernetE1000_IVars::startInterface();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return *buf;
  }

  v3 = v2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "startInterface";
    v25 = 1024;
    v26 = 131;
    v27 = 1024;
    v28 = v3;
LABEL_4:
    v4 = buf;
LABEL_5:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): ==> 0x%08x\n", v4, 0x18u);
  }

  return v3;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::enable(IOUserNetworkPacketQueue **this)
{
  v2 = DriverKit_AppleEthernetE1000_IVars::up(this);
  if (!v2)
  {
    DriverKit_AppleEthernetE1000_IVars::updateCarrier(this);
    v2 = IOUserNetworkPacketQueue::SetEnable(this[1297], 1, 0);
    if (!v2)
    {
      v2 = IOUserNetworkPacketQueue::SetEnable(this[1296], 1, 0);
      if (!v2)
      {
        v2 = IOUserNetworkPacketQueue::SetEnable(this[1253], 1, 0);
        if (!v2)
        {
          v2 = IOUserNetworkPacketQueue::SetEnable(this[1252], 1, 0);
        }
      }
    }
  }

  v3 = v2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315650;
    v6 = "enable";
    v7 = 1024;
    v8 = 247;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): ==> 0x%08x\n", &v5, 0x18u);
  }

  return v3;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::disable(IOUserNetworkPacketQueue **this)
{
  DriverKit_AppleEthernetE1000_IVars::down(this);
  IOUserNetworkPacketQueue::SetEnable(this[1296], 0, 0);
  DriverKit_AppleEthernetE1000_IVars::drain(this, (this + 1254));
  IOUserNetworkPacketQueue::SetEnable(this[1297], 0, 0);
  IOUserNetworkPacketQueue::SetEnable(this[1252], 0, 0);
  DriverKit_AppleEthernetE1000_IVars::drain(this, (this + 1210));
  IOUserNetworkPacketQueue::SetEnable(this[1253], 0, 0);

  return DriverKit_AppleEthernetE1000_IVars::freeRings(this);
}

void OUTLINED_FUNCTION_2_1(void *a1, os_log_s *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x18u);
}

void DriverKit_AppleEthernetE1000_IVars::intrHandler(DriverKit_AppleEthernetE1000_IVars *this)
{
  v1 = this + 0x2000;
  if (*(this + 10392) == 1)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(this + 2), 0, 0xD8uLL, 0xFFFFFFFF);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(this + 2), 0, 0xC0uLL, &readData);
    __dmb(1u);
    v3 = readData;
    if (readData != -1)
    {
      v4 = 0;
      while ((v3 & 0x9D) != 0)
      {
        if ((v3 & 0xC) != 0)
        {
          v1[2192] = 1;
          DriverKit_AppleEthernetE1000_IVars::updateCarrier(this);
        }

        __dmb(1u);
        if (v3)
        {
          DriverKit_AppleEthernetE1000_IVars::txComplete(this, 0);
        }

        if (v3 < 0)
        {
          if (*(this + 71) < 13)
          {
            v5 = DriverKit_AppleEthernetE1000_IVars::lem_rxSync(this);
          }

          else
          {
            v5 = DriverKit_AppleEthernetE1000_IVars::igb_rxSync(this, 0);
          }

          if (v5)
          {
            v4 = HIWORD(v5);
          }
        }

        readData = 0;
        IOPCIDevice::MemoryRead32(*(this + 2), 0, 0xC0uLL, &readData);
        __dmb(1u);
        v3 = readData;
        if (readData == -1)
        {
          return;
        }
      }

      if (v4)
      {
        IODataQueueDispatchSource::SendDataAvailable(*(this + 1295));
      }

      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(this + 2), 0, 0xD0uLL, 0x9Du);
    }
  }
}

void DriverKit_AppleEthernetE1000_IVars::otherIntrHandler(IOPCIDevice **this)
{
  v1 = (this + 1024);
  if (*(this + 10392) == 1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(this[2], 0, 0xC0uLL, &readData);
    __dmb(1u);
    v3 = readData;
    if (readData != -1)
    {
      if ((readData & 0xC) != 0)
      {
        v1[2192] = 1;
        DriverKit_AppleEthernetE1000_IVars::updateCarrier(this);
      }

      v4 = *(this + 71);
      if (v4 >= 29)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(this[2], 0, 0xD0uLL, 4u);
        __dmb(2u);
        v5 = this[2];
        if (*(this + 71) == 29)
        {
          v6 = 0x80000000;
        }

        else
        {
          v6 = 1;
        }

        v7 = 5412;
        goto LABEL_13;
      }

      if (v4 == 16)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(this[2], 0, 0xD0uLL, 0x1000004u);
        if (v3)
        {
          __dmb(2u);
          v5 = this[2];
          v7 = 200;
          v6 = 2;
LABEL_13:
          IOPCIDevice::MemoryWrite32(v5, 0, v7, v6);
        }
      }
    }
  }
}

void DriverKit_AppleEthernetE1000_IVars::queueIntrHandler(IODataQueueDispatchSource **this)
{
  if (*(this + 10392) == 1)
  {
    v3 = 0;
    __dmb(1u);
    do
    {
      v4 = v3;
      v5 = DriverKit_AppleEthernetE1000_IVars::txComplete(this, 0);
      v6 = DriverKit_AppleEthernetE1000_IVars::igb_rxSync(this, 0);
      v3 = HIWORD(v6);
      if (!v6)
      {
        v3 = v4;
      }
    }

    while (v6 | v5);
    if (v4)
    {
      IODataQueueDispatchSource::SendDataAvailable(this[1295]);
    }

    __dmb(2u);
    v7 = this[2];
    if (*(this + 71) == 29)
    {
      v8 = 513;
    }

    else
    {
      v8 = 2;
    }

    IOPCIDevice::MemoryWrite32(v7, 0, 0x1524uLL, v8);
  }
}

uint64_t e1000_calculate_checksum(unsigned __int8 *a1, unsigned int a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2)
    {
      v3 = a2;
      do
      {
        v4 = *a1++;
        v2 += v4;
        --v3;
      }

      while (v3);
    }

    return -v2;
  }

  return v2;
}

uint64_t e1000_mng_enable_host_if_generic(uint64_t a1)
{
  if (*(a1 + 849) != 1)
  {
    return 4294967285;
  }

  v9 = v1;
  v10 = v2;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x8F00uLL, &readData);
  __dmb(1u);
  if ((readData & 1) == 0)
  {
    return 4294967285;
  }

  for (i = 0; ; ++i)
  {
    v7 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x8F00uLL, &v7);
    __dmb(1u);
    if ((v7 & 2) == 0)
    {
      break;
    }

    IODelay(0x3E8uLL);
    if (i >= 9)
    {
      return 4294967285;
    }
  }

  return 0;
}

BOOL e1000_check_mng_mode_generic(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
  __dmb(1u);
  return (readData & 0xE) == 6;
}

uint64_t e1000_enable_tx_pkt_filtering_generic(uint64_t a1)
{
  *(a1 + 861) = 1;
  if (((*(a1 + 64))() & 1) == 0 || e1000_mng_enable_host_if_generic(a1))
  {
    goto LABEL_3;
  }

  v4 = 0;
  v5 = (a1 + 1360);
  v6 = 36592;
  do
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v6, &readData);
    __dmb(1u);
    v5[v4++] = readData;
    v6 += 4;
  }

  while (v4 != 4);
  v7 = *(a1 + 1375);
  *(a1 + 1375) = 0;
  if (v7 != -vaddvq_s8(*(a1 + 1360)) || *v5 != 1414349129)
  {
    v2 = 1;
    *(a1 + 861) = 1;
    return v2 & 1;
  }

  if (*(a1 + 1364))
  {
    v2 = *(a1 + 861);
  }

  else
  {
LABEL_3:
    v2 = 0;
    *(a1 + 861) = 0;
  }

  return v2 & 1;
}

uint64_t e1000_mng_write_cmd_header_generic(uint64_t a1, int8x8_t *a2)
{
  if (a2)
  {
    v4 = *a2;
    v4.i8[0] = vaddv_s8(*a2);
    v5 = -v4.i32[0];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v6 = 0;
  a2->i8[1] = v5;
  v7 = 1;
  do
  {
    v8 = v7;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, (4 * v6) | 0x8800, a2->u32[v6]);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    v7 = 0;
    __dmb(1u);
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  return 0;
}

uint64_t e1000_mng_host_if_write_generic(uint64_t a1, unsigned __int8 *a2, int a3, unsigned int a4, _BYTE *a5)
{
  data = 0;
  if (!a3)
  {
    return 4294967292;
  }

  v5 = a3;
  if (a4 + a3 > 0x6F8)
  {
    return 4294967292;
  }

  v10 = a4 >> 2;
  v11 = a4 & 3;
  if ((a4 & 3) != 0)
  {
    readData = 0;
    v12 = a4 & 0xFFFC;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v12 + 34816, &readData);
    __dmb(1u);
    data = readData;
    v13 = *a5;
    v14 = v11;
    do
    {
      v15 = *a2++;
      *(&data + v14) = v15;
      v13 += v15;
      *a5 = v13;
      ++v14;
    }

    while (v14 != 4);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v12 + 34816, data);
    v5 = v11 + v5 - 4;
    ++v10;
  }

  v16 = v5 & 3;
  if (v5 >= 4u)
  {
    v18 = 0;
    v17 = v5 >> 2;
    do
    {
      v19 = 0;
      v20 = *a5;
      do
      {
        v21 = a2[v19];
        *(&data + v19) = v21;
        v20 += v21;
        *a5 = v20;
        ++v19;
      }

      while (v19 != 4);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 4 * (v18 + v10) + 34816, data);
      ++v18;
      a2 += 4;
    }

    while (v18 != v17);
    if (!v16)
    {
      return 0;
    }

LABEL_16:
    v22 = 0;
    v23 = *a5;
    do
    {
      if (v22 >= v16)
      {
        v24 = 0;
      }

      else
      {
        v25 = *a2++;
        v24 = v25;
      }

      *(&data + v22) = v24;
      v23 += v24;
      *a5 = v23;
      ++v22;
    }

    while (v22 != 4);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 4 * (v17 + v10) + 34816, data);
    return 0;
  }

  v17 = 0;
  if (v16)
  {
    goto LABEL_16;
  }

  return 0;
}

uint64_t e1000_mng_write_dhcp_info_generic(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v9.i32[0] = 64;
  v9.i16[3] = a3;
  v9.i16[2] = 0;
  result = e1000_mng_enable_host_if_generic(a1);
  if (!result)
  {
    result = e1000_mng_host_if_write_generic(a1, a2, a3, 8u, &v9 + 1);
    if (!result)
    {
      e1000_mng_write_cmd_header_generic(a1, &v9);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x8F00uLL, &readData);
      __dmb(1u);
      v7 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x8F00uLL, v7 | 2);
      return 0;
    }
  }

  return result;
}

BOOL e1000_enable_mng_pass_thru(uint64_t a1)
{
  if (*(a1 + 850) != 1)
  {
    return 0;
  }

  v8 = v1;
  v9 = v2;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5820uLL, &readData);
  __dmb(1u);
  if ((readData & 0x20000) == 0)
  {
    return 0;
  }

  if (*(a1 + 848) == 1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
    __dmb(1u);
    v5 = readData;
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B30uLL, &readData);
    __dmb(1u);
    return (readData & 0x20000000) == 0 && (v5 & 0xE) == 4;
  }

  if ((*(a1 + 284) & 0xFFFFFFFE) != 0x10)
  {
    return (readData & 3) == 1;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B30uLL, &readData);
  __dmb(1u);
  nvm = e1000_read_nvm(a1);
  result = nvm == 0;
  if (!nvm)
  {
    return 0;
  }

  return result;
}

uint64_t e1000_host_interface_command(uint64_t a1, uint32_t *a2, unsigned int a3)
{
  if (*(a1 + 849) != 1)
  {
    return 0;
  }

  v18 = v3;
  v19 = v4;
  if (*(a1 + 850) != 1)
  {
    return 0;
  }

  if (!a3)
  {
    return 4294967285;
  }

  result = 4294967285;
  if (a3 <= 0x700 && (a3 & 3) == 0)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x8F00uLL, &readData);
    __dmb(1u);
    v9 = readData;
    if ((readData & 1) == 0)
    {
      return 4294967285;
    }

    v10 = a3 >> 2;
    v11 = 34816;
    v12 = v10;
    v13 = a2;
    do
    {
      __dmb(2u);
      v14 = *v13++;
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v11, v14);
      v11 += 4;
      --v12;
    }

    while (v12);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x8F00uLL, v9 | 2);
    v15 = 500;
    while (1)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x8F00uLL, &readData);
      __dmb(1u);
      if ((readData & 2) == 0)
      {
        break;
      }

      IODelay(0x3E8uLL);
      result = 4294967285;
      if (!--v15)
      {
        return result;
      }
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x8F00uLL, &readData);
    __dmb(1u);
    if ((readData & 4) == 0)
    {
      return 4294967285;
    }

    v16 = 34816;
    do
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v16, &readData);
      result = 0;
      __dmb(1u);
      *a2++ = readData;
      v16 += 4;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t e1000_load_firmware(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 284) < 34)
  {
    return 4294967293;
  }

  v18 = v3;
  v19 = v4;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x8F00uLL, &readData);
  __dmb(1u);
  if ((~readData & 0x201) != 0)
  {
    return 4294967293;
  }

  result = 4294967280;
  if (a3 && a3 <= 0x10000 && (a3 & 3) == 0)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x1500uLL, &readData);
    __dmb(1u);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x8F00uLL, &readData);
    __dmb(1u);
    v9 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x8F00uLL, v9 | 0x40);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x8F00uLL, v9 | 0xC0);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    v10 = 500;
    while (1)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x1500uLL, &readData);
      __dmb(1u);
      if ((readData & 0x40000) != 0)
      {
        break;
      }

      IODelay(0x3E8uLL);
      if (--v10 == -500)
      {
        goto LABEL_13;
      }
    }

    if (!v10)
    {
      return 4294967285;
    }

LABEL_13:
    v11 = 500;
    while (1)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
      __dmb(1u);
      if ((readData & 0x800E) == 0x8008)
      {
        break;
      }

      IODelay(0x3E8uLL);
      if (!--v11)
      {
        return 4294967285;
      }
    }

    v12 = 0;
    if (a3 >> 2 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a3 >> 2;
    }

    v14 = 0x10000;
    do
    {
      if (!v12)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x8F40uLL, v14);
      }

      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, (4 * v12) | 0x8800u, *(a2 + 4 * v12));
      ++v12;
      v14 += 4;
    }

    while (v13 != v12);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x8F00uLL, &readData);
    __dmb(1u);
    v15 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x8F00uLL, v15 | 2);
    v16 = 500;
    while (1)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x8F00uLL, &readData);
      __dmb(1u);
      if ((readData & 2) == 0)
      {
        break;
      }

      IODelay(0x3E8uLL);
      if (!--v16)
      {
        return 4294967285;
      }
    }

    return 0;
  }

  return result;
}

void *e1000_init_function_pointers_82542(void *result)
{
  result[5] = e1000_init_mac_params_82542;
  result[143] = e1000_init_nvm_params_82542;
  result[111] = e1000_init_phy_params_82542;
  return result;
}

uint64_t e1000_init_mac_params_82542(uint64_t a1)
{
  *(a1 + 1116) = 2;
  *(a1 + 326) = 128;
  *(a1 + 844) = 15;
  *(a1 + 104) = e1000_get_bus_info_82542;
  *(a1 + 112) = e1000_set_lan_id_multi_port_pci;
  *(a1 + 152) = e1000_reset_hw_82542;
  *(a1 + 160) = e1000_init_hw_82542;
  *(a1 + 192) = e1000_setup_link_82542;
  *(a1 + 200) = e1000_setup_fiber_serdes_link_generic;
  *(a1 + 72) = e1000_check_for_fiber_link_generic;
  *(a1 + 144) = e1000_update_mc_addr_list_generic;
  *(a1 + 216) = e1000_write_vfta_generic;
  *(a1 + 96) = e1000_clear_vfta_generic;
  *(a1 + 240) = e1000_read_mac_addr_82542;
  *(a1 + 232) = e1000_rar_set_82542;
  *(a1 + 128) = e1000_led_on_82542;
  *(a1 + 136) = e1000_led_off_82542;
  *(a1 + 88) = e1000_clear_hw_cntrs_82542;
  *(a1 + 120) = e1000_get_speed_and_duplex_fiber_serdes_generic;
  return 0;
}

uint64_t e1000_init_nvm_params_82542(uint64_t a1)
{
  *(a1 + 1216) = 3;
  *(a1 + 1232) = 0x3000600320040;
  *(a1 + 1160) = e1000_read_nvm_microwire;
  *(a1 + 1168) = e1000_stop_nvm;
  *(a1 + 1208) = e1000_write_nvm_microwire;
  *(a1 + 1184) = e1000_update_nvm_checksum_generic;
  *(a1 + 1200) = e1000_validate_nvm_checksum_generic;
  return 0;
}

uint64_t e1000_translate_register_82542(int a1)
{
  if (a1 > 10519)
  {
    if (a1 > 14351)
    {
      v1 = 20991;
      if (a1 == 21504)
      {
        v15 = 64;
      }

      else
      {
        v15 = a1;
      }

      if (a1 == 22016)
      {
        v16 = 1536;
      }

      else
      {
        v16 = v15;
      }

      if (a1 == 20992)
      {
        v4 = 512;
      }

      else
      {
        v4 = v16;
      }

      v5 = 14352;
      v6 = 1072;
      v7 = 14360;
      v8 = 1080;
      v9 = a1 == 14368;
      v10 = 1088;
    }

    else
    {
      v1 = 14335;
      if (a1 == 14344)
      {
        v11 = 1064;
      }

      else
      {
        v11 = a1;
      }

      if (a1 == 14340)
      {
        v12 = 1060;
      }

      else
      {
        v12 = v11;
      }

      if (a1 == 14336)
      {
        v4 = 1056;
      }

      else
      {
        v4 = v12;
      }

      v5 = 10520;
      v6 = 336;
      v7 = 13328;
      v8 = 32784;
      v9 = a1 == 13336;
      v10 = 32792;
    }
  }

  else if (a1 > 10263)
  {
    v1 = 10499;
    if (a1 == 10512)
    {
      v13 = 328;
    }

    else
    {
      v13 = a1;
    }

    if (a1 == 10504)
    {
      v14 = 320;
    }

    else
    {
      v14 = v13;
    }

    if (a1 == 10500)
    {
      v4 = 316;
    }

    else
    {
      v4 = v14;
    }

    v5 = 10264;
    v6 = 296;
    v7 = 10272;
    v8 = 264;
    v9 = a1 == 10496;
    v10 = 312;
  }

  else
  {
    v1 = 10243;
    if (a1 == 10256)
    {
      v2 = 288;
    }

    else
    {
      v2 = a1;
    }

    if (a1 == 10248)
    {
      v3 = 280;
    }

    else
    {
      v3 = v2;
    }

    if (a1 == 10244)
    {
      v4 = 276;
    }

    else
    {
      v4 = v3;
    }

    v5 = 8544;
    v6 = 360;
    v7 = 8552;
    v8 = 352;
    v9 = a1 == 10240;
    v10 = 272;
  }

  if (!v9)
  {
    v10 = a1;
  }

  if (a1 == v7)
  {
    v17 = v8;
  }

  else
  {
    v17 = v10;
  }

  if (a1 == v5)
  {
    v18 = v6;
  }

  else
  {
    v18 = v17;
  }

  if (a1 <= v1)
  {
    return v18;
  }

  else
  {
    return v4;
  }
}