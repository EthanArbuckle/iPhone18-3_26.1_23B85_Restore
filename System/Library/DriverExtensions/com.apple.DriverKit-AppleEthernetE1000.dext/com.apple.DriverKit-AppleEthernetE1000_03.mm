uint64_t e1000_get_bus_info_82542(uint64_t a1)
{
  *(a1 + 1248) = 1;
  *(a1 + 1256) = 0;
  return 0;
}

uint64_t e1000_reset_hw_82542(uint64_t a1)
{
  if (*(a1 + 9592) == 2)
  {
    e1000_pci_clear_mwi(a1);
  }

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
  (*(a1 + 1176))(a1);
  IODelay(0x7D0uLL);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD8uLL, 0xFFFFFFFF);
  v4 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xC0uLL, &v4);
  __dmb(1u);
  if (*(a1 + 9592) == 2 && (*(a1 + 1262) & 0x10) != 0)
  {
    e1000_pci_set_mwi(a1);
  }

  return 0;
}

uint64_t e1000_init_hw_82542(uint64_t a1)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x38uLL, 0);
  (*(a1 + 96))(a1);
  if (*(a1 + 9592) == 2)
  {
    e1000_pci_clear_mwi(a1);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x100uLL, 1u);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(0x1388uLL);
  }

  e1000_init_rx_addrs_generic(a1, *(a1 + 844));
  if (*(a1 + 9592) == 2)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x100uLL, 0);
    v10 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v10);
    __dmb(1u);
    IODelay(0x3E8uLL);
    if ((*(a1 + 1262) & 0x10) != 0)
    {
      e1000_pci_set_mwi(a1);
    }
  }

  if (*(a1 + 326))
  {
    v2 = 0;
    v3 = 4096;
    v4 = 20992;
    do
    {
      __dmb(2u);
      if (v3 == 2048)
      {
        if (*(a1 + 284) <= 1)
        {
          v5 = 64;
        }

        else
        {
          v5 = 21504;
        }
      }

      else if (v2)
      {
        v5 = v4;
        if (!v3)
        {
          if (*(a1 + 284) <= 1)
          {
            v5 = 1536;
          }

          else
          {
            v5 = 22016;
          }
        }
      }

      else if (*(a1 + 284) <= 1)
      {
        v5 = 512;
      }

      else
      {
        v5 = 20992;
      }

      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v5, 0);
      ++v2;
      v4 += 4;
      v3 -= 16;
    }

    while (v2 < *(a1 + 326));
  }

  if (*(a1 + 1376) == 1)
  {
    v9 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &v9);
    __dmb(1u);
    v6 = v9;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v6 | 4);
  }

  v7 = e1000_setup_link_82542(a1);
  e1000_clear_hw_cntrs_82542(a1);
  return v7;
}

uint64_t e1000_setup_link_82542(uint64_t a1)
{
  result = e1000_set_default_fc_generic(a1);
  if (result)
  {
    return result;
  }

  v3 = *(a1 + 884);
  if (v3 <= 1)
  {
    if (!v3)
    {
LABEL_13:
      v3 = 0;
      *(a1 + 884) = 0;
      goto LABEL_14;
    }

    if (v3 != 1)
    {
LABEL_14:
      if ((*(a1 + 855) & 1) != 0 && v3)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  else if (v3 != 255 && v3 != 3)
  {
    if (v3 != 2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v3 = 1;
  *(a1 + 884) = 1;
  if (*(a1 + 855))
  {
LABEL_16:
    v3 = 0;
    *(a1 + 884) = 0;
  }

LABEL_17:
  *(a1 + 880) = v3;
  result = (*(a1 + 200))(a1);
  if (!result)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x28uLL, 0xC28001u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x2CuLL, 0x100u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x30uLL, 0x8808u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x170uLL, *(a1 + 872));

    return e1000_set_fc_watermarks_generic(a1);
  }

  return result;
}

uint64_t e1000_read_mac_addr_82542(uint64_t a1)
{
  v2 = 0;
  v7 = 0;
  v3 = a1 + 278;
  for (i = 279; ; i += 2)
  {
    result = (*(a1 + 1160))(a1, v2, 1, &v7);
    if (result)
    {
      break;
    }

    *(a1 + i - 1) = v7;
    v6 = i - 279;
    ++v2;
    if (v6 >= 4)
    {
      *(a1 + 272) = *v3;
      *(a1 + 276) = *(v3 + 4);
      return result;
    }
  }

  return result;
}

uint64_t e1000_rar_set_82542(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *a2;
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  __dmb(2u);
  v7 = *(a1 + 16);
  v8 = 8 * a3;
  if (8 * a3 > -10993)
  {
    if (v8 > -7153)
    {
      if (v8 > -513)
      {
        switch(v8)
        {
          case -512:
            v9 = *(a1 + 284) <= 1;
            v10 = 512;
            v11 = 20992;
            goto LABEL_69;
          case 512:
            v9 = *(a1 + 284) <= 1;
            v10 = 1536;
            v11 = 22016;
            goto LABEL_69;
          case 0:
            if (*(a1 + 284) <= 1)
            {
              v16 = 64;
            }

            else
            {
              v16 = 21504;
            }

            IOPCIDevice::MemoryWrite32(v7, 0, v16, v4);
            __dmb(2u);
            v17 = 21508;
            goto LABEL_74;
        }
      }

      else
      {
        switch(v8)
        {
          case -7152:
            v9 = *(a1 + 284) <= 1;
            v10 = 1072;
            v11 = 14352;
            goto LABEL_69;
          case -7144:
            v9 = *(a1 + 284) <= 1;
            v10 = 1080;
            v11 = 14360;
            goto LABEL_69;
          case -7136:
            v9 = *(a1 + 284) <= 1;
            v10 = 1088;
            v11 = 14368;
            goto LABEL_69;
        }
      }

      goto LABEL_79;
    }

    if (v8 <= -8169)
    {
      switch(v8)
      {
        case -10992:
          v9 = *(a1 + 284) <= 1;
          v10 = 328;
          v11 = 10512;
          goto LABEL_69;
        case -10984:
          v9 = *(a1 + 284) <= 1;
          v10 = 336;
          v11 = 10520;
          goto LABEL_69;
        case -8176:
          v9 = *(a1 + 284) <= 1;
          v10 = 32784;
          v11 = 13328;
LABEL_69:
          if (v9)
          {
            v21 = v10;
          }

          else
          {
            v21 = v11;
          }

          IOPCIDevice::MemoryWrite32(v7, 0, v21, v4);
          __dmb(2u);
          goto LABEL_73;
      }

      goto LABEL_79;
    }

    if (v8 == -8168)
    {
      v9 = *(a1 + 284) <= 1;
      v10 = 32792;
      v11 = 13336;
      goto LABEL_69;
    }

    if (v8 != -7168)
    {
      if (v8 == -7160)
      {
        v9 = *(a1 + 284) <= 1;
        v10 = 1064;
        v11 = 14344;
        goto LABEL_69;
      }

      goto LABEL_79;
    }

    if (*(a1 + 284) <= 1)
    {
      v18 = 1056;
    }

    else
    {
      v18 = 14336;
    }

    IOPCIDevice::MemoryWrite32(v7, 0, v18, v4);
    __dmb(2u);
    v13 = *(a1 + 284) <= 1;
    v14 = 1060;
    v15 = 14340;
LABEL_64:
    if (v13)
    {
      v20 = v14;
    }

    else
    {
      v20 = v15;
    }

    goto LABEL_75;
  }

  if (v8 <= -11257)
  {
    if (v8 <= -12273)
    {
      if (v8 == -12960)
      {
        v9 = *(a1 + 284) <= 1;
        v10 = 360;
        v11 = 8544;
        goto LABEL_69;
      }

      if (v8 == -12952)
      {
        v9 = *(a1 + 284) <= 1;
        v10 = 352;
        v11 = 8552;
        goto LABEL_69;
      }

      goto LABEL_79;
    }

    if (v8 == -12272)
    {
      v9 = *(a1 + 284) <= 1;
      v10 = 0x8000;
      v11 = 9232;
      goto LABEL_69;
    }

    if (v8 == -12264)
    {
      v9 = *(a1 + 284) <= 1;
      v10 = 32776;
      v11 = 9240;
      goto LABEL_69;
    }

    if (v8 != -11264)
    {
      goto LABEL_79;
    }

    if (*(a1 + 284) <= 1)
    {
      v12 = 272;
    }

    else
    {
      v12 = 10240;
    }

    IOPCIDevice::MemoryWrite32(v7, 0, v12, v4);
    __dmb(2u);
    v13 = *(a1 + 284) <= 1;
    v14 = 276;
    v15 = 10244;
    goto LABEL_64;
  }

  if (v8 > -11233)
  {
    if (v8 == -11232)
    {
      v9 = *(a1 + 284) <= 1;
      v10 = 264;
      v11 = 10272;
      goto LABEL_69;
    }

    if (v8 != -11008)
    {
      if (v8 == -11000)
      {
        v9 = *(a1 + 284) <= 1;
        v10 = 320;
        v11 = 10504;
        goto LABEL_69;
      }

      goto LABEL_79;
    }

    if (*(a1 + 284) <= 1)
    {
      v19 = 312;
    }

    else
    {
      v19 = 10496;
    }

    IOPCIDevice::MemoryWrite32(v7, 0, v19, v4);
    __dmb(2u);
    v13 = *(a1 + 284) <= 1;
    v14 = 316;
    v15 = 10500;
    goto LABEL_64;
  }

  switch(v8)
  {
    case -11256:
      v9 = *(a1 + 284) <= 1;
      v10 = 280;
      v11 = 10248;
      goto LABEL_69;
    case -11248:
      v9 = *(a1 + 284) <= 1;
      v10 = 288;
      v11 = 10256;
      goto LABEL_69;
    case -11240:
      v9 = *(a1 + 284) <= 1;
      v10 = 296;
      v11 = 10264;
      goto LABEL_69;
  }

LABEL_79:
  IOPCIDevice::MemoryWrite32(v7, 0, (v8 + 21504), v4);
  __dmb(2u);
LABEL_73:
  v17 = v8 + 21508;
LABEL_74:
  v20 = v17;
LABEL_75:
  v22 = v5 | (v6 << 8);
  v23 = v4 | v22;
  v24 = v22 | 0x80000000;
  if (v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v20, v25);
  return 0;
}

uint64_t e1000_led_on_82542(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x440000);
  return 0;
}

uint64_t e1000_led_off_82542(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData & 0xFFFBFFFF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x400000);
  return 0;
}

void e1000_clear_hw_cntrs_82542(uint64_t a1)
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
}

void *e1000_init_function_pointers_82571(void *result)
{
  result[5] = e1000_init_mac_params_82571;
  result[143] = e1000_init_nvm_params_82571;
  result[111] = e1000_init_phy_params_82571;
  return result;
}

uint64_t e1000_init_mac_params_82571(uint64_t a1)
{
  v2 = *(a1 + 9584);
  v3 = e1000_get_speed_and_duplex_fiber_serdes_generic;
  v4 = e1000_check_for_fiber_link_generic;
  v5 = e1000_setup_fiber_serdes_link_82571;
  v6 = 2;
  if (v2 > 0x107E)
  {
    if (v2 - 4313 >= 2)
    {
      if (v2 == 4261)
      {
        goto LABEL_11;
      }

      if (v2 != 4223)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v3 = e1000_get_speed_and_duplex_fiber_serdes_generic;
    v4 = e1000_check_for_serdes_link_82571;
    v5 = e1000_setup_fiber_serdes_link_82571;
    v6 = 3;
    goto LABEL_11;
  }

  switch(v2)
  {
    case 0x105Fu:
      goto LABEL_11;
    case 0x1060u:
      goto LABEL_9;
    case 0x107Eu:
      goto LABEL_11;
  }

LABEL_10:
  v3 = e1000_get_speed_and_duplex_copper_generic;
  v4 = e1000_check_for_copper_link_generic;
  v5 = e1000_setup_copper_link_82571;
  v6 = 1;
LABEL_11:
  *(a1 + 1116) = v6;
  *(a1 + 200) = v5;
  *(a1 + 72) = v4;
  *(a1 + 120) = v3;
  *(a1 + 326) = 128;
  *(a1 + 844) = 15;
  *(a1 + 850) = 1;
  *(a1 + 847) = 1;
  *(a1 + 104) = e1000_get_bus_info_pcie_generic;
  *(a1 + 152) = e1000_reset_hw_82571;
  *(a1 + 160) = e1000_init_hw_82571;
  *(a1 + 192) = e1000_setup_link_82571;
  *(a1 + 144) = e1000_update_mc_addr_list_generic;
  *(a1 + 216) = e1000_write_vfta_generic;
  *(a1 + 96) = e1000_clear_vfta_82571;
  *(a1 + 240) = e1000_read_mac_addr_82571;
  *(a1 + 48) = e1000_id_led_init_generic;
  *(a1 + 208) = e1000_setup_led_generic;
  *(a1 + 80) = e1000_cleanup_led_generic;
  *(a1 + 136) = e1000_led_off_generic;
  *(a1 + 88) = e1000_clear_hw_cntrs_82571;
  v7 = *(a1 + 284);
  if ((v7 - 16) >= 2)
  {
    if (v7 == 15)
    {
      *(a1 + 112) = e1000_set_lan_id_single_port;
      *(a1 + 64) = e1000_check_mng_mode_generic;
      *(a1 + 128) = e1000_led_on_generic;
      *(a1 + 56) = e1000_blink_led_generic;
      *(a1 + 848) = 1;
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
      __dmb(1u);
      *(a1 + 849) = (readData & 0xE) != 0;
      v7 = *(a1 + 284);
    }

    else
    {
      *(a1 + 64) = e1000_check_mng_mode_generic;
      *(a1 + 128) = e1000_led_on_generic;
      *(a1 + 56) = e1000_blink_led_generic;
      *(a1 + 848) = 1;
    }
  }

  else
  {
    *(a1 + 112) = e1000_set_lan_id_single_port;
    *(a1 + 64) = e1000_check_mng_mode_82574;
    *(a1 + 128) = e1000_led_on_82574;
  }

  if ((v7 - 13) > 1)
  {
    goto LABEL_19;
  }

  v12 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B58uLL, &v12);
  __dmb(1u);
  v8 = v12;
  if ((v12 & 2) == 0)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B58uLL, v8 | 2);
LABEL_19:
    v11 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B50uLL, &v11);
    __dmb(1u);
    v9 = v11;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B50uLL, v9 & 0xFFFFFFFE);
  }

  *(a1 + 1380) = 0;
  return 0;
}

uint64_t e1000_init_nvm_params_82571(uint64_t a1)
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
  v6 = *(a1 + 284);
  if ((v6 - 15) <= 2 && (v2 & 0x18000) == 0x18000)
  {
    *(a1 + 1216) = 4;
    *(a1 + 1232) = 2048;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v2 & 0xFFEFFFFF);
    v6 = *(a1 + 284);
  }

  else
  {
    *(a1 + 1216) = 2;
    if (((v2 >> 11) & 8) != 0)
    {
      v7 = 8;
    }

    else
    {
      v7 = (v2 >> 11) & 0xF;
    }

    *(a1 + 1232) = 1 << (v7 + 6);
  }

  v8 = v6 & 0xFFFFFFFE;
  v9 = v8 == 16;
  if (v8 == 16)
  {
    v10 = e1000_get_hw_semaphore_82574;
  }

  else
  {
    v10 = e1000_acquire_nvm_82571;
  }

  v11 = e1000_release_nvm_82571;
  if (v9)
  {
    v11 = e1000_put_hw_semaphore_82574;
  }

  *(a1 + 1152) = v10;
  *(a1 + 1168) = v11;
  *(a1 + 1160) = e1000_read_nvm_eerd;
  *(a1 + 1184) = e1000_update_nvm_checksum_82571;
  *(a1 + 1200) = e1000_validate_nvm_checksum_82571;
  *(a1 + 1192) = e1000_valid_led_default_82571;
  *(a1 + 1208) = e1000_write_nvm_82571;
  return 0;
}

uint64_t e1000_init_phy_params_82571(uint64_t a1)
{
  if (*(a1 + 1116) != 1)
  {
    result = 0;
    *(a1 + 1072) = 1;
    return result;
  }

  *(a1 + 1100) = 1;
  *(a1 + 1122) = 47;
  *(a1 + 1108) = 100;
  *(a1 + 920) = e1000_check_reset_block_generic;
  *(a1 + 1008) = e1000_phy_hw_reset_generic;
  *(a1 + 1016) = e1000_set_d0_lplu_state_82571;
  *(a1 + 1024) = e1000_set_d3_lplu_state_generic;
  *(a1 + 1056) = e1000_power_up_phy_copper;
  *(a1 + 1064) = e1000_power_down_phy_copper_82571;
  v2 = *(a1 + 284);
  if ((v2 - 13) < 2)
  {
    *(a1 + 1072) = 4;
    *(a1 + 944) = e1000_get_cfg_done_82571;
    *(a1 + 960) = e1000_get_phy_info_igp;
    *(a1 + 912) = e1000_check_polarity_igp;
    *(a1 + 936) = e1000_phy_force_speed_duplex_igp;
    *(a1 + 952) = e1000_get_cable_length_igp_2;
    v3 = e1000_read_phy_reg_igp;
    *(a1 + 976) = e1000_read_phy_reg_igp;
    *(a1 + 1032) = e1000_write_phy_reg_igp;
    *(a1 + 896) = e1000_get_hw_semaphore_82571;
    *(a1 + 1000) = e1000_put_hw_semaphore_82571;
    goto LABEL_7;
  }

  if ((v2 - 16) < 2)
  {
    *(a1 + 1072) = 8;
    *(a1 + 944) = e1000_get_cfg_done_generic;
    *(a1 + 960) = e1000_get_phy_info_m88;
    *(a1 + 912) = e1000_check_polarity_m88;
    *(a1 + 928) = e1000_phy_sw_reset_generic;
    *(a1 + 936) = e1000_phy_force_speed_duplex_m88;
    *(a1 + 952) = e1000_get_cable_length_m88;
    v3 = e1000_read_phy_reg_bm2;
    *(a1 + 976) = e1000_read_phy_reg_bm2;
    *(a1 + 1032) = e1000_write_phy_reg_bm2;
    *(a1 + 896) = e1000_get_hw_semaphore_82574;
    *(a1 + 1000) = e1000_put_hw_semaphore_82574;
    *(a1 + 1016) = e1000_set_d0_lplu_state_82574;
    *(a1 + 1024) = e1000_set_d3_lplu_state_82574;
LABEL_7:
    v11 = 0;
    if ((v2 - 13) < 2)
    {
      v6 = 44565376;
      v7 = 1104;
LABEL_17:
      *(a1 + v7) = v6;
      goto LABEL_18;
    }

    if ((v2 - 16) <= 1)
    {
      result = v3(a1, 2u, &v11);
      if (result)
      {
        return result;
      }

      *(a1 + 1104) = v11 << 16;
      IODelay(0x14uLL);
      result = (*(a1 + 976))(a1, 3, &v11);
      if (result)
      {
        return result;
      }

      v5 = v11;
      *(a1 + 1104) |= v11;
      v6 = v5 & 0xF;
      v7 = 1112;
      goto LABEL_17;
    }

    return 4294967294;
  }

  if (v2 != 15)
  {
    return 4294967294;
  }

  *(a1 + 1072) = 2;
  *(a1 + 944) = e1000_get_cfg_done_generic;
  *(a1 + 960) = e1000_get_phy_info_m88;
  *(a1 + 912) = e1000_check_polarity_m88;
  *(a1 + 928) = e1000_phy_sw_reset_generic;
  *(a1 + 936) = e1000_phy_force_speed_duplex_m88;
  *(a1 + 952) = e1000_get_cable_length_m88;
  *(a1 + 976) = e1000_read_phy_reg_m88;
  *(a1 + 1032) = e1000_write_phy_reg_m88;
  *(a1 + 896) = e1000_get_hw_semaphore_82571;
  *(a1 + 1000) = e1000_put_hw_semaphore_82571;
  result = e1000_get_phy_id(a1);
  if (result)
  {
    return result;
  }

LABEL_18:
  v8 = *(a1 + 284);
  result = 4294967294;
  if ((v8 - 13) < 2)
  {
    if (*(a1 + 1104) == 44565376)
    {
      return 0;
    }

    else
    {
      return 4294967294;
    }
  }

  else
  {
    if ((v8 - 16) >= 2)
    {
      if (v8 != 15)
      {
        return result;
      }

      v9 = *(a1 + 1104);
      v10 = 21040320;
    }

    else
    {
      v9 = *(a1 + 1104);
      v10 = 21040305;
    }

    if (v9 == v10)
    {
      return 0;
    }

    else
    {
      return 4294967294;
    }
  }
}

uint64_t e1000_get_laa_state_82571(uint64_t a1)
{
  if (*(a1 + 284) == 13)
  {
    v1 = *(a1 + 1376);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t e1000_set_laa_state_82571(uint64_t result, int a2)
{
  if (*(result + 284) == 13)
  {
    *(result + 1376) = a2;
    if (a2)
    {
      return (*(result + 232))(result, result + 272, *(result + 844) - 1);
    }
  }

  return result;
}

uint64_t e1000_setup_fiber_serdes_link_82571(uint64_t a1)
{
  if ((*(a1 + 284) - 13) <= 1)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x24uLL, 0x400u);
  }

  return e1000_setup_fiber_serdes_link_generic(a1);
}

uint64_t e1000_check_for_serdes_link_82571(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  v3 = readData;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x180uLL, &readData);
  __dmb(1u);
  IODelay(0xAuLL);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x180uLL, &readData);
  __dmb(1u);
  if ((readData & 0x48000000) != 0x40000000)
  {
    if ((readData & 0x40000000) != 0)
    {
      v6 = 5;
      while (1)
      {
        IODelay(0xAuLL);
        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x180uLL, &readData);
        __dmb(1u);
        if ((~readData & 0x60000000) != 0 && (readData & 0x8000000) != 0)
        {
          break;
        }

        if (!--v6)
        {
          readData = 0;
          IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x178uLL, &readData);
          __dmb(1u);
          v8 = readData;
          __dmb(2u);
          v9 = *(a1 + 16);
          v10 = v8 | 0x80000000;
          v11 = 376;
          goto LABEL_24;
        }
      }
    }

    result = 0;
    *(a1 + 860) = 0;
    goto LABEL_9;
  }

  v4 = *(a1 + 856);
  if (v4 == 1)
  {
    if ((readData & 0x20000000) == 0)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x178uLL, *(a1 + 312) & 0x7FFFFFFF);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x41);
      result = e1000_config_fc_after_link_up_generic(a1);
      if (result)
      {
        return result;
      }

      v12 = 3;
      goto LABEL_28;
    }

    result = 0;
    if ((v3 & 2) != 0)
    {
      v12 = 2;
LABEL_28:
      *(a1 + 856) = v12;
      goto LABEL_29;
    }

LABEL_9:
    *(a1 + 856) = 0;
    return result;
  }

  if (v4 != 3)
  {
    if (v4 == 2)
    {
      if ((v3 & 2) == 0)
      {
LABEL_25:
        result = 0;
        *(a1 + 856) = 1;
        *(a1 + 860) = 0;
        return result;
      }

      goto LABEL_19;
    }

LABEL_23:
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x178uLL, *(a1 + 312));
    __dmb(2u);
    v9 = *(a1 + 16);
    v10 = v2 & 0xFFFFFFBF;
    v11 = 0;
LABEL_24:
    IOPCIDevice::MemoryWrite32(v9, 0, v11, v10);
    goto LABEL_25;
  }

  if ((readData & 0x20000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  result = 0;
LABEL_29:
  *(a1 + 860) = 1;
  return result;
}

uint64_t e1000_setup_copper_link_82571(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData & 0xFFFFE7FF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x40);
  v3 = *(a1 + 1072);
  switch(v3)
  {
    case 8:
      goto LABEL_4;
    case 4:
      result = e1000_copper_link_setup_igp(a1);
      if (result)
      {
        return result;
      }

      return e1000_setup_copper_link_generic(a1);
    case 2:
LABEL_4:
      result = e1000_copper_link_setup_m88(a1);
      if (result)
      {
        return result;
      }

      return e1000_setup_copper_link_generic(a1);
  }

  return 4294967294;
}

uint64_t e1000_reset_hw_82571(uint64_t a1)
{
  hw_semaphore_82573 = e1000_disable_pcie_primary_generic(a1);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD8uLL, 0xFFFFFFFF);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x100uLL, 0);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x400uLL, &readData);
  __dmb(1u);
  v3 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x400uLL, v3 & 0xFFFFFFFD);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(0x2710uLL);
  v4 = *(a1 + 284);
  if ((v4 - 16) < 2 || v4 == 15)
  {
    hw_semaphore_82573 = e1000_get_hw_semaphore_82573(a1);
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v5 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v5 | 0x4000000);
  v6 = *(a1 + 284);
  if (((v6 - 16) < 2 || v6 == 15) && !hw_semaphore_82573)
  {
    e1000_put_hw_semaphore_82573(a1);
  }

  if (*(a1 + 1216) == 4)
  {
    IODelay(0xAuLL);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
    __dmb(1u);
    v7 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v7 | 0x2000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
  }

  result = e1000_get_auto_rd_done_generic(a1);
  if (!result)
  {
    v9 = *(a1 + 284);
    if ((v9 - 15) >= 3)
    {
      if ((v9 - 13) <= 1)
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
        __dmb(1u);
        v10 = readData;
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v10 & 0xFFFFFF3F);
      }
    }

    else
    {
      IODelay(0x61A8uLL);
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD8uLL, 0xFFFFFFFF);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xC0uLL, &readData);
    __dmb(1u);
    if (*(a1 + 284) == 13)
    {
      result = e1000_check_alt_mac_addr_generic(a1);
      if (result)
      {
        return result;
      }

      if (*(a1 + 284) == 13)
      {
        *(a1 + 1376) = 1;
        (*(a1 + 232))(a1, a1 + 272, *(a1 + 844) - 1);
      }
    }

    result = 0;
    if (*(a1 + 1116) == 3)
    {
      *(a1 + 856) = 0;
    }
  }

  return result;
}

uint64_t e1000_init_hw_82571(uint64_t a1)
{
  v2 = *(a1 + 844);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3828uLL, &readData);
  __dmb(1u);
  v3 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3828uLL, v3 | 0x400000);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3928uLL, &readData);
  __dmb(1u);
  v4 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3928uLL, v4 | 0x400000);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3840uLL, &readData);
  __dmb(1u);
  v5 = readData & 0x87FFFFFF;
  v6 = *(a1 + 284);
  if ((v6 - 13) <= 1)
  {
    v5 = readData & 0x807FFFFF | 0x7800000;
  }

  if ((v6 - 16) >= 2)
  {
    v7 = v5;
  }

  else
  {
    v7 = readData & 0x83FFFFFF | 0x4000000;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3840uLL, v7);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3940uLL, &readData);
  __dmb(1u);
  v8 = *(a1 + 284);
  if ((v8 - 13) <= 1)
  {
    v9 = readData;
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x400uLL, &readData);
    __dmb(1u);
    v10 = readData & 0x10000000 | v9 & 0x88BFFFFF;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3940uLL, v10 ^ 0x17400000);
    v8 = *(a1 + 284);
  }

  if ((v8 - 15) <= 2)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
    __dmb(1u);
    v11 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v11 & 0xDFFFFFFF);
    v8 = *(a1 + 284);
    if ((v8 - 15) <= 2)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
      __dmb(1u);
      v12 = readData & 0xFF3FFFFF;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v12 | 0x400000);
      v8 = *(a1 + 284);
    }
  }

  if (v8 == 13)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x1100uLL, &readData);
    __dmb(1u);
    v13 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x1100uLL, v13 | 1);
    v8 = *(a1 + 284);
  }

  if ((v8 - 13) <= 1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
    __dmb(1u);
    v14 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v14 & 0xFFF7FFFF);
    v8 = *(a1 + 284);
  }

  if (v8 <= 15)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5008uLL, &readData);
    __dmb(1u);
    v15 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5008uLL, v15 | 0x30000);
    v8 = *(a1 + 284);
  }

  if ((v8 & 0xFFFFFFFE) == 0x10)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B00uLL, &readData);
    __dmb(1u);
    v16 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B00uLL, v16 | 0x400000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B64uLL, &readData);
    __dmb(1u);
    v17 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B64uLL, v17 | 1);
  }

  (*(a1 + 48))(a1);
  (*(a1 + 96))(a1);
  if (*(a1 + 284) == 13)
  {
    v2 -= *(a1 + 1376);
  }

  e1000_init_rx_addrs_generic(a1, v2);
  if (*(a1 + 326))
  {
    v18 = 0;
    v19 = 4096;
    v20 = 20992;
    do
    {
      __dmb(2u);
      if (v19 == 2048)
      {
        if (*(a1 + 284) <= 1)
        {
          v21 = 64;
        }

        else
        {
          v21 = 21504;
        }
      }

      else if (v18)
      {
        v21 = v20;
        if (!v19)
        {
          if (*(a1 + 284) <= 1)
          {
            v21 = 1536;
          }

          else
          {
            v21 = 22016;
          }
        }
      }

      else if (*(a1 + 284) <= 1)
      {
        v21 = 512;
      }

      else
      {
        v21 = 20992;
      }

      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v21, 0);
      ++v18;
      v20 += 4;
      v19 -= 16;
    }

    while (v18 < *(a1 + 326));
  }

  v22 = (*(a1 + 192))(a1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3828uLL, &readData);
  __dmb(1u);
  v23 = readData & 0xFF81FFFF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3828uLL, v23 | 0x1410000);
  v24 = *(a1 + 284);
  if ((v24 - 16) >= 2)
  {
    if (v24 != 15)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3928uLL, &readData);
      __dmb(1u);
      v29 = readData & 0xFF81FFFF;
      __dmb(2u);
      v26 = *(a1 + 16);
      v27 = v29 | 0x1410000;
      v28 = 14632;
      goto LABEL_41;
    }

    e1000_enable_tx_pkt_filtering_generic(a1);
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B00uLL, &readData);
  __dmb(1u);
  v25 = readData;
  __dmb(2u);
  v26 = *(a1 + 16);
  v27 = v25 | 0x8000000;
  v28 = 23296;
LABEL_41:
  IOPCIDevice::MemoryWrite32(v26, 0, v28, v27);
  e1000_clear_hw_cntrs_82571(a1);
  return v22;
}

uint64_t e1000_setup_link_82571(uint64_t a1)
{
  if ((*(a1 + 284) - 15) <= 2 && *(a1 + 884) == 255)
  {
    *(a1 + 884) = 3;
  }

  return e1000_setup_link_generic(a1);
}

void e1000_clear_vfta_82571(uint64_t a1)
{
  if ((*(a1 + 284) - 15) > 2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v2 = *(a1 + 1366);
    if (*(a1 + 1366))
    {
      v3 = 1 << v2;
    }

    else
    {
      v3 = 0;
    }

    if (*(a1 + 1366))
    {
      v4 = (v2 >> 5) & 0x7F;
    }

    else
    {
      v4 = 0;
    }
  }

  v5 = 0;
  v6 = 22016;
  do
  {
    if (v4 == v5)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    __dmb(2u);
    v8 = v6;
    if (!v5)
    {
      if (*(a1 + 284) <= 1)
      {
        v8 = 1536;
      }

      else
      {
        v8 = 22016;
      }
    }

    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v8, v7);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    ++v5;
    v6 += 4;
  }

  while (v5 != 128);
}

uint64_t e1000_read_mac_addr_82571(uint64_t a1)
{
  if (*(a1 + 284) != 13 || (result = e1000_check_alt_mac_addr_generic(a1), !result))
  {

    return e1000_read_mac_addr_generic(a1);
  }

  return result;
}

void e1000_clear_hw_cntrs_82571(uint64_t a1)
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

BOOL e1000_check_mng_mode_82574(uint64_t a1)
{
  v4 = 0;
  v1 = (*(a1 + 1160))(a1, 15, 1, &v4);
  return (v4 & 0x6000) != 0 && v1 == 0;
}

uint64_t e1000_led_on_82574(uint64_t a1)
{
  v2 = *(a1 + 300);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  if ((readData & 2) == 0)
  {
    v3 = (a1 + 300);
    v4 = vld1q_dup_f32(v3);
    v5.i64[0] = 0xFF000000FFLL;
    v5.i64[1] = 0xFF000000FFLL;
    v6 = vandq_s8(vshlq_u32(v4, xmmword_100033020), v5);
    v5.i64[0] = 0xE0000000ELL;
    v5.i64[1] = 0xE0000000ELL;
    v7 = vandq_s8(vceqq_s32(v6, v5), xmmword_100033240);
    v8 = vorr_s8(*&vorrq_s8(v7, v2), *&vextq_s8(v7, v7, 8uLL));
    v2 = v8.i32[0] | v8.i32[1];
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE00uLL, v2);
  return 0;
}

uint64_t e1000_get_hw_semaphore_82573(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF00uLL, &readData);
  __dmb(1u);
  v2 = readData;
  v3 = 10;
  while (1)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xF00uLL, v2 | 0x20);
    v5 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF00uLL, &v5);
    __dmb(1u);
    v2 = v5;
    if ((v5 & 0x20) != 0)
    {
      break;
    }

    IODelay(0x7D0uLL);
    if (!--v3)
    {
      e1000_put_hw_semaphore_82573(a1);
      return 4294967294;
    }
  }

  return 0;
}

void e1000_put_hw_semaphore_82573(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF00uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xF00uLL, v2 & 0xFFFFFFDF);
}

uint64_t e1000_acquire_nvm_82571(uint64_t a1)
{
  if (e1000_get_hw_semaphore_82571(a1))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 284) == 15)
  {
    return 0;
  }

  v2 = e1000_acquire_nvm_generic(a1);
  if (v2)
  {
    e1000_put_hw_semaphore_82571(a1);
  }

  return v2;
}

void e1000_release_nvm_82571(uint64_t a1)
{
  e1000_release_nvm_generic(a1);

  e1000_put_hw_semaphore_82571(a1);
}

uint64_t e1000_update_nvm_checksum_82571(uint64_t a1)
{
  result = e1000_update_nvm_checksum_generic(a1);
  if (!result)
  {
    if (*(a1 + 1216) == 4)
    {
      v3 = 0;
      while (1)
      {
        IODelay(0x3E8uLL);
        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
        __dmb(1u);
        if ((readData & 0x80000) == 0)
        {
          break;
        }

        v4 = v3++ >= 0x7CF;
        if (v4)
        {
          return 0xFFFFFFFFLL;
        }
      }

      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x103CuLL, &readData);
      __dmb(1u);
      if (BYTE1(readData) << 8 == 56064)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x8F00uLL, 0x40u);
        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
        __dmb(1u);
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x8F00uLL, 0x80u);
      }

      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
      __dmb(1u);
      v5 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v5 | 0x80000);
      v6 = 0;
      while (1)
      {
        IODelay(0x3E8uLL);
        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
        __dmb(1u);
        if ((readData & 0x80000) == 0)
        {
          break;
        }

        v4 = v6++ >= 0x7CF;
        if (v4)
        {
          v6 = 2000;
          break;
        }
      }

      if (v6 == 2000)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t e1000_validate_nvm_checksum_82571(uint64_t a1)
{
  if (*(a1 + 1216) == 4)
  {
    v3 = 0;
    if (!(*(a1 + 1160))(a1, 16, 1, &v3) && (v3 & 0x10) == 0 && !(*(a1 + 1160))(a1, 35, 1, &v3) && (v3 & 0x80000000) == 0)
    {
      v3 |= 0x8000u;
      if (!(*(a1 + 1208))(a1, 35, 1, &v3))
      {
        (*(a1 + 1184))(a1);
      }
    }
  }

  return e1000_validate_nvm_checksum_generic(a1);
}

uint64_t e1000_valid_led_default_82571(uint64_t a1, __int16 *a2)
{
  result = (*(a1 + 1160))(a1, 4, 1, a2);
  if (!result)
  {
    v5 = *a2;
    if ((*(a1 + 284) - 15) <= 2)
    {
      if (v5 != 63302)
      {
        return result;
      }

      v6 = 6161;
      goto LABEL_11;
    }

    if (v5 == 0xFFFF || v5 == 0)
    {
      v6 = -30447;
LABEL_11:
      *a2 = v6;
    }
  }

  return result;
}

uint64_t e1000_write_nvm_82571(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a1 + 284);
  if ((v6 - 15) >= 3)
  {
    if ((v6 - 13) >= 2)
    {
      return 0xFFFFFFFFLL;
    }

    return e1000_write_nvm_spi(a1, a2, a3, a4);
  }

  else
  {
    v7 = *(a1 + 1232);
    v8 = v7 >= a2;
    v9 = v7 - a2;
    if (v9 == 0 || !v8)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0xFFFFFFFFLL;
    if (a3 && v9 >= a3)
    {
      v11 = 4 * a2;
      v12 = a3;
      while (1)
      {
        v14 = *v4++;
        v13 = v14;
        result = e1000_poll_eerd_eewr_done(a1, 1);
        if (result)
        {
          break;
        }

        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x102CuLL, v11 | (v13 << 16) | 1);
        result = e1000_poll_eerd_eewr_done(a1, 1);
        if (result)
        {
          break;
        }

        v11 += 4;
        if (!--v12)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t e1000_get_hw_semaphore_82571(uint64_t a1)
{
  v2 = *(a1 + 1232);
  v3 = v2 + 1;
  if (*(a1 + 1380) <= 2u)
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = 1;
  }

  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B50uLL, &readData);
    __dmb(1u);
    if ((readData & 1) == 0)
    {
      break;
    }

    IODelay(0x32uLL);
    if (!--v4)
    {
      goto LABEL_8;
    }
  }

  if (v4)
  {
    goto LABEL_9;
  }

LABEL_8:
  ++*(a1 + 1380);
LABEL_9:
  while (1)
  {
    v8 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B50uLL, &v8);
    __dmb(1u);
    v5 = v8;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B50uLL, v5 | 2);
    v7 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B50uLL, &v7);
    __dmb(1u);
    if ((v7 & 2) != 0)
    {
      break;
    }

    IODelay(0x32uLL);
    if (!--v3)
    {
      goto LABEL_14;
    }
  }

  if (v3)
  {
    return 0;
  }

LABEL_14:
  e1000_put_hw_semaphore_82571(a1);
  return 0xFFFFFFFFLL;
}

void e1000_put_hw_semaphore_82571(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B50uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B50uLL, v2 & 0xFFFFFFFC);
}

uint64_t e1000_set_d0_lplu_state_82571(uint64_t a1, int a2)
{
  v2 = *(a1 + 976);
  if (!v2)
  {
    return 0;
  }

  v8 = 0;
  result = v2();
  if (!result)
  {
    if (a2)
    {
      v8 |= 2u;
      result = (*(a1 + 1032))(a1, 25);
      if (result)
      {
        return result;
      }
    }

    else
    {
      v8 &= ~2u;
      (*(a1 + 1032))(a1, 25);
      v6 = *(a1 + 1096);
      if (v6 != 2)
      {
        if (v6 != 1)
        {
          return 0;
        }

        result = (*(a1 + 976))(a1, 16, &v8);
        if (result)
        {
          return result;
        }

        v7 = v8 | 0x80;
LABEL_14:
        v8 = v7;
        result = (*(a1 + 1032))(a1, 16);
        if (result)
        {
          return result;
        }

        return 0;
      }
    }

    result = (*(a1 + 976))(a1, 16, &v8);
    if (result)
    {
      return result;
    }

    v7 = v8 & 0xFF7F;
    goto LABEL_14;
  }

  return result;
}

void e1000_power_down_phy_copper_82571(uint64_t a1)
{
  if (*(a1 + 920) && ((*(a1 + 64))() & 1) == 0 && !(*(a1 + 920))(a1))
  {

    e1000_power_down_phy_copper(a1);
  }
}

uint64_t e1000_get_cfg_done_82571(uint64_t a1)
{
  v2 = -100;
  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x1010uLL, &readData);
    __dmb(1u);
    if ((readData & 0x40000) != 0)
    {
      break;
    }

    IODelay(0x3E8uLL);
    if (__CFADD__(v2++, 1))
    {
      return 4294967287;
    }
  }

  return 0;
}

uint64_t e1000_set_d0_lplu_state_82574(uint64_t a1, int a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF10uLL, &readData);
  __dmb(1u);
  v4 = readData & 0xFFFFFFFD;
  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xF10uLL, v4 | v5);
  return 0;
}

uint64_t e1000_set_d3_lplu_state_82574(uint64_t a1, char a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF10uLL, &readData);
  __dmb(1u);
  if (a2)
  {
    v4 = *(a1 + 1120);
    v5 = v4 > 0x2F;
    v6 = (1 << v4) & 0x800000008008;
    if (v5 || v6 == 0)
    {
      v8 = readData;
    }

    else
    {
      v8 = readData | 4;
    }
  }

  else
  {
    v8 = readData & 0xFFFFFFFB;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xF10uLL, v8);
  return 0;
}

void *e1000_init_function_pointers_82541(void *result)
{
  result[5] = e1000_init_mac_params_82541;
  result[143] = e1000_init_nvm_params_82541;
  result[111] = e1000_init_phy_params_82541;
  return result;
}

uint64_t e1000_init_mac_params_82541(uint64_t a1)
{
  *(a1 + 1116) = 1;
  *(a1 + 326) = 128;
  *(a1 + 844) = 15;
  *(a1 + 850) = 1;
  *(a1 + 104) = e1000_get_bus_info_pci_generic;
  *(a1 + 112) = e1000_set_lan_id_single_port;
  *(a1 + 152) = e1000_reset_hw_82541;
  *(a1 + 160) = e1000_init_hw_82541;
  *(a1 + 192) = e1000_setup_link_generic;
  *(a1 + 200) = e1000_setup_copper_link_82541;
  *(a1 + 72) = e1000_check_for_link_82541;
  *(a1 + 120) = e1000_get_link_up_info_82541;
  *(a1 + 144) = e1000_update_mc_addr_list_generic;
  *(a1 + 216) = e1000_write_vfta_generic;
  *(a1 + 96) = e1000_clear_vfta_generic;
  *(a1 + 48) = e1000_id_led_init_generic;
  *(a1 + 208) = e1000_setup_led_82541;
  *(a1 + 80) = e1000_cleanup_led_82541;
  *(a1 + 128) = e1000_led_on_generic;
  *(a1 + 136) = e1000_led_off_generic;
  *(a1 + 88) = e1000_clear_hw_cntrs_82541;
  return 0;
}

uint64_t e1000_init_nvm_params_82541(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  v2 = readData;
  v3 = *(a1 + 1220);
  if ((v3 - 3) < 2)
  {
    *(a1 + 1216) = 3;
  }

  else
  {
    if (v3 == 2)
    {
      v2 = 1024;
      goto LABEL_14;
    }

    if (v3 == 1)
    {
      v2 = 0;
LABEL_14:
      *(a1 + 1216) = 2;
LABEL_15:
      v13 = 0;
      v8 = (v2 & 0x400) == 0;
      if ((v2 & 0x400) != 0)
      {
        v9 = 16;
      }

      else
      {
        v9 = 8;
      }

      *(a1 + 1236) = v9;
      *(a1 + 1238) = 8;
      if (v8)
      {
        v10 = 8;
      }

      else
      {
        v10 = 32;
      }

      *(a1 + 1240) = v10;
      *(a1 + 1152) = e1000_acquire_nvm_generic;
      *(a1 + 1160) = e1000_read_nvm_spi;
      *(a1 + 1168) = e1000_release_nvm_generic;
      *(a1 + 1184) = e1000_update_nvm_checksum_generic;
      *(a1 + 1192) = e1000_valid_led_default_generic;
      *(a1 + 1200) = e1000_validate_nvm_checksum_generic;
      *(a1 + 1208) = e1000_write_nvm_spi;
      *(a1 + 1232) = 65600;
      result = e1000_read_nvm_spi(a1, 0x12u, 1, &v13);
      if (!result)
      {
        result = 0;
        v11 = (v13 >> 10) & 7;
        if (v11)
        {
          *(a1 + 1232) = 128 << v11;
        }
      }

      return result;
    }

    if ((readData & 0x2000) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    *(a1 + 1216) = v12;
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_15;
    }
  }

  result = 0;
  v5 = (v2 & 0x400) == 0;
  if ((v2 & 0x400) != 0)
  {
    v6 = 8;
  }

  else
  {
    v6 = 6;
  }

  *(a1 + 1236) = v6;
  *(a1 + 1234) = 50;
  *(a1 + 1238) = 3;
  if (v5)
  {
    v7 = 64;
  }

  else
  {
    v7 = 256;
  }

  *(a1 + 1232) = v7;
  *(a1 + 1152) = e1000_acquire_nvm_generic;
  *(a1 + 1160) = e1000_read_nvm_microwire;
  *(a1 + 1168) = e1000_release_nvm_generic;
  *(a1 + 1184) = e1000_update_nvm_checksum_generic;
  *(a1 + 1192) = e1000_valid_led_default_generic;
  *(a1 + 1200) = e1000_validate_nvm_checksum_generic;
  *(a1 + 1208) = e1000_write_nvm_microwire;
  return result;
}

uint64_t e1000_init_phy_params_82541(uint64_t a1)
{
  *(a1 + 1100) = 1;
  *(a1 + 1122) = 47;
  *(a1 + 1108) = 10000;
  *(a1 + 1072) = 3;
  *(a1 + 912) = e1000_check_polarity_igp;
  *(a1 + 936) = e1000_phy_force_speed_duplex_igp;
  *(a1 + 952) = e1000_get_cable_length_igp_82541;
  *(a1 + 944) = e1000_get_cfg_done_generic;
  *(a1 + 960) = e1000_get_phy_info_igp;
  *(a1 + 976) = e1000_read_phy_reg_igp;
  *(a1 + 1008) = e1000_phy_hw_reset_82541;
  *(a1 + 1024) = e1000_set_d3_lplu_state_82541;
  *(a1 + 1032) = e1000_write_phy_reg_igp;
  *(a1 + 1056) = e1000_power_up_phy_copper;
  *(a1 + 1064) = e1000_power_down_phy_copper_82541;
  result = e1000_get_phy_id(a1);
  if (!result)
  {
    if (*(a1 + 1104) == 44565376)
    {
      return 0;
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

uint64_t e1000_init_script_state_82541(uint64_t result, char a2)
{
  if (*(result + 1072) == 3)
  {
    *(result + 1400) = a2;
  }

  return result;
}

uint64_t e1000_fifo_workaround_82547(uint64_t a1, __int16 a2)
{
  if (*(a1 + 284) != 11 || ((a2 + 31) & 0xFFF0u) < 0x3F1)
  {
    return 0;
  }

  v16 = v2;
  v17 = v3;
  if (*(a1 + 1384) + ((a2 + 31) & 0xFFF0u) < *(a1 + 1392) + 992)
  {
    return 0;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3818uLL, &readData);
  __dmb(1u);
  v6 = readData;
  readData = 0;
  if (*(a1 + 284) <= 1)
  {
    v7 = 1072;
  }

  else
  {
    v7 = 14352;
  }

  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v7, &readData);
  __dmb(1u);
  if (v6 != readData)
  {
    return 4294967288;
  }

  readData = 0;
  v8 = *(a1 + 284) <= 1 ? 32792 : 13336;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v8, &readData);
  __dmb(1u);
  v9 = readData;
  readData = 0;
  v10 = *(a1 + 284) <= 1 ? 32784 : 13328;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v10, &readData);
  __dmb(1u);
  if (v9 != readData)
  {
    return 4294967288;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3428uLL, &readData);
  __dmb(1u);
  v11 = readData;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3420uLL, &readData);
  __dmb(1u);
  if (v11 != readData)
  {
    return 4294967288;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x400uLL, &readData);
  __dmb(1u);
  v12 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x400uLL, v12 & 0xFFFFFFFD);
  __dmb(2u);
  if (*(a1 + 284) <= 1)
  {
    v13 = 32792;
  }

  else
  {
    v13 = 13336;
  }

  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v13, *(a1 + 1388));
  __dmb(2u);
  if (*(a1 + 284) <= 1)
  {
    v14 = 32784;
  }

  else
  {
    v14 = 13328;
  }

  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v14, *(a1 + 1388));
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3428uLL, *(a1 + 1388));
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3420uLL, *(a1 + 1388));
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x400uLL, v12);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  result = 0;
  __dmb(1u);
  *(a1 + 1384) = 0;
  return result;
}

_DWORD *e1000_update_tx_fifo_head_82547(_DWORD *result, int a2)
{
  if (result[71] == 11)
  {
    v2 = result[346] + ((a2 + 31) & 0xFFFFFFF0);
    result[346] = v2;
    v3 = result[348];
    v4 = v2 >= v3;
    v5 = v2 - v3;
    if (v5 != 0 && v4)
    {
      result[346] = v5;
    }
  }

  return result;
}

uint64_t e1000_set_ttl_workaround_state_82541(uint64_t result, char a2)
{
  if ((*(result + 284) | 2) == 0xB)
  {
    *(result + 1401) = a2;
  }

  return result;
}

uint64_t e1000_ttl_workaround_enabled_82541(uint64_t a1)
{
  if ((*(a1 + 284) | 2) == 0xB)
  {
    v1 = *(a1 + 1401);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t e1000_igp_ttl_workaround_82547(uint64_t a1)
{
  v7 = 0;
  if ((*(a1 + 284) | 2) != 0xB || *(a1 + 1401) != 1)
  {
    return 0;
  }

  v6 = 0;
  result = e1000_phy_has_link_generic(a1, 1u, 0, &v6);
  if (result)
  {
    return result;
  }

  v3 = *(a1 + 1396);
  if (v6)
  {
    if (!*(a1 + 1396))
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (*(a1 + 1396))
  {
LABEL_9:
    if (v3 <= 0xAu)
    {
      if (!v3)
      {
        v5 = 0;
        return (*(a1 + 1032))(a1, 7987, v5);
      }

      v5 = 2 * (v3 & 1u);
      v4 = v3 + 1;
LABEL_11:
      *(a1 + 1396) = v4;
      return (*(a1 + 1032))(a1, 7987, v5);
    }

LABEL_10:
    v4 = 0;
    v5 = 0;
    goto LABEL_11;
  }

  result = (*(a1 + 976))(a1, 6, &v7);
  if (!result)
  {
    if ((v7 & 0x10) == 0)
    {
      return 0;
    }

    v3 = *(a1 + 1396) + 1;
    *(a1 + 1396) = v3;
    goto LABEL_9;
  }

  return result;
}

uint64_t e1000_reset_hw_82541(uint64_t a1)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD8uLL, 0xFFFFFFFF);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x100uLL, 0);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x400uLL, 8u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  *(a1 + 1384) = 0;
  IODelay(0x2710uLL);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData;
  if ((*(a1 + 284) | 2) == 0xB)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x80000000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(0x1388uLL);
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x4000000);
  IODelay(0x4E20uLL);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5820uLL, &readData);
  __dmb(1u);
  v3 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5820uLL, v3 & 0xFFFFDFFF);
  if ((*(a1 + 284) | 2) == 0xB)
  {
    e1000_phy_init_script_82541(a1);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE00uLL, &readData);
    __dmb(1u);
    v4 = readData & 0xFFFFF3FF;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE00uLL, v4 | 0x7000300);
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD8uLL, 0xFFFFFFFF);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xC0uLL, &readData);
  __dmb(1u);
  return 0;
}

uint64_t e1000_init_hw_82541(uint64_t a1)
{
  (*(a1 + 48))();
  v2 = (*(a1 + 976))(a1, 20, a1 + 1398);
  if (!v2)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x1000uLL, &readData);
    __dmb(1u);
    v3 = readData;
    *(a1 + 1388) = readData << 7;
    *(a1 + 1392) = (v3 >> 6) & 0x3FFFC00;
    (*(a1 + 96))(a1);
    e1000_init_rx_addrs_generic(a1, *(a1 + 844));
    if (*(a1 + 326))
    {
      v4 = 0;
      v5 = 1024;
      v6 = 20992;
      do
      {
        __dmb(2u);
        if (v5 == 512)
        {
          if (*(a1 + 284) <= 1)
          {
            v7 = 64;
          }

          else
          {
            v7 = 21504;
          }
        }

        else if (v4)
        {
          v7 = v6;
          if (!v5)
          {
            if (*(a1 + 284) <= 1)
            {
              v7 = 1536;
            }

            else
            {
              v7 = 22016;
            }
          }
        }

        else if (*(a1 + 284) <= 1)
        {
          v7 = 512;
        }

        else
        {
          v7 = 20992;
        }

        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v7, 0);
        v11 = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v11);
        __dmb(1u);
        ++v4;
        v6 += 4;
        v5 -= 4;
      }

      while (v4 < *(a1 + 326));
    }

    v2 = (*(a1 + 192))(a1);
    v10 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3828uLL, &v10);
    __dmb(1u);
    v8 = v10 & 0xFFC1FFFF;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3828uLL, v8 | 0x1010000);
    e1000_clear_hw_cntrs_82541(a1);
  }

  return v2;
}

uint64_t e1000_setup_copper_link_82541(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData & 0xFFFFE7FF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x40);
  *(a1 + 1134) = 0;
  if ((*(a1 + 284) | 2) == 0xB)
  {
    *(a1 + 1376) = 0;
    *(a1 + 1130) = 1;
  }

  else
  {
    *(a1 + 1376) = 1;
  }

  result = e1000_copper_link_setup_igp(a1);
  if (!result)
  {
    if (*(a1 + 851) == 1 && *(a1 + 1380) == 1)
    {
      *(a1 + 1380) = 0;
    }

    v5 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE00uLL, &v5);
    __dmb(1u);
    v4 = v5 & 0xFFFFF3FF;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE00uLL, v4 | 0x7000300);
    return e1000_setup_copper_link_generic(a1);
  }

  return result;
}

uint64_t e1000_check_for_link_82541(uint64_t a1)
{
  if (*(a1 + 853) != 1)
  {
    return 0;
  }

  v6 = v1;
  v7 = v2;
  v5 = 0;
  result = e1000_phy_has_link_generic(a1, 1u, 0, &v5);
  if (!result)
  {
    if (v5)
    {
      *(a1 + 853) = 0;
      e1000_check_downshift_generic(a1);
      if (*(a1 + 851) == 1)
      {
        e1000_config_dsp_after_link_change_82541(a1, 1);
        (*(a1 + 224))(a1);
        return e1000_config_fc_after_link_up_generic(a1);
      }

      else
      {
        return 4294967293;
      }
    }

    else
    {
      return e1000_config_dsp_after_link_change_82541(a1, 0);
    }
  }

  return result;
}

uint64_t e1000_get_link_up_info_82541(uint64_t a1, __int16 *a2, __int16 *a3)
{
  result = e1000_get_speed_and_duplex_copper_generic(a1, a2, a3);
  if (!result)
  {
    if (*(a1 + 1135) != 1)
    {
      return 0;
    }

    v8 = 0;
    result = (*(a1 + 976))(a1, 6, &v8);
    if (result)
    {
      return result;
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_5;
    }

    result = (*(a1 + 976))(a1, 5, &v8);
    if (!result)
    {
      v7 = *a2;
      if (v7 != 10)
      {
        if (v7 != 100 || (v8 & 0x100) != 0)
        {
          return 0;
        }

LABEL_5:
        result = 0;
        *a3 = 1;
        return result;
      }

      if ((v8 & 0x40) == 0)
      {
        goto LABEL_5;
      }

      return 0;
    }
  }

  return result;
}

uint64_t e1000_setup_led_82541(uint64_t a1)
{
  result = (*(a1 + 976))(a1, 20, a1 + 1398);
  if (!result)
  {
    result = (*(a1 + 1032))(a1, 20, *(a1 + 1398) & 0xFFDF);
    if (!result)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE00uLL, *(a1 + 296));
      return 0;
    }
  }

  return result;
}

uint64_t e1000_cleanup_led_82541(uint64_t a1)
{
  v2 = (*(a1 + 1032))(a1, 20, *(a1 + 1398));
  if (!v2)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE00uLL, *(a1 + 292));
  }

  return v2;
}

void e1000_clear_hw_cntrs_82541(uint64_t a1)
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
}

uint64_t e1000_phy_init_script_82541(uint64_t result)
{
  if (*(result + 1400) != 1)
  {
    return result;
  }

  v10 = v1;
  v11 = v2;
  v3 = result;
  v9 = 0;
  IODelay(0x4E20uLL);
  (*(v3 + 976))(v3, 12123, &v9);
  (*(v3 + 1032))(v3, 12123, 3);
  IODelay(0x4E20uLL);
  (*(v3 + 1032))(v3, 0, 320);
  IODelay(0x1388uLL);
  v4 = *(v3 + 284);
  if (v4 <= 10)
  {
    if (v4 != 9)
    {
      if (v4 != 10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_8:
    (*(v3 + 1032))(v3, 8085, 1);
    (*(v3 + 1032))(v3, 8049, 48417);
    (*(v3 + 1032))(v3, 8057, 24);
    (*(v3 + 1032))(v3, 7984, 5632);
    (*(v3 + 1032))(v3, 7985, 20);
    (*(v3 + 1032))(v3, 7986, 5660);
    (*(v3 + 1032))(v3, 8084, 3);
    (*(v3 + 1032))(v3, 8086, 63);
    (*(v3 + 1032))(v3, 8208, 8);
    goto LABEL_10;
  }

  if (v4 == 12)
  {
LABEL_9:
    (*(v3 + 1032))(v3, 8051, 153);
    goto LABEL_10;
  }

  if (v4 == 11)
  {
    goto LABEL_8;
  }

LABEL_10:
  (*(v3 + 1032))(v3, 0, 13056);
  IODelay(0x4E20uLL);
  result = (*(v3 + 1032))(v3, 12123, v9);
  if (*(v3 + 284) == 11)
  {
    v8 = 0;
    result = (*(v3 + 976))(v3, 8401, &v8);
    if ((v8 & 0x100) == 0)
    {
      (*(v3 + 976))(v3, 8400, &v8);
      v5 = v8 & 0x70;
      v6 = (v8 & 0xF80) - 1280;
      if (v5 != 64)
      {
        v6 = v8 & 0xF80;
      }

      v7 = (v8 & 0xF80) - 128;
      if (v5 >= 0x41)
      {
        LOWORD(v5) = (v8 + 112) & 0x70;
      }

      else
      {
        v7 = v6;
      }

      v8 = v7 & 0xF80 | v8 & 0xF000 | v5;
      (*(v3 + 1032))(v3, 8412);
      return (*(v3 + 1032))(v3, 8414, 2);
    }
  }

  return result;
}

uint64_t e1000_config_dsp_after_link_change_82541(uint64_t a1, int a2)
{
  v11 = 0;
  v12 = 0;
  if (a2)
  {
    result = (*(a1 + 120))(a1, &v11 + 2, &v11);
    if (result)
    {
      return result;
    }

    if (HIWORD(v11) == 1000)
    {
      result = (*(a1 + 952))(a1);
      if (result)
      {
        return result;
      }

      if (*(a1 + 1376) == 1 && *(a1 + 1128) >= 0x32u)
      {
        v4 = 0;
        while (1)
        {
          v5 = word_100033250[v4];
          result = (*(a1 + 976))(a1, v5, &v12 + 2);
          if (result)
          {
            return result;
          }

          HIWORD(v12) &= 0x3FFFu;
          result = (*(a1 + 1032))(a1, v5);
          if (result)
          {
            return result;
          }

          if (++v4 == 4)
          {
            *(a1 + 1376) = 2;
            break;
          }
        }
      }

      if (!*(a1 + 1380) && *(a1 + 1128) <= 0x31u)
      {
        result = (*(a1 + 976))(a1, 10, &v12 + 2);
        if (!result)
        {
          v6 = 0;
          v7 = 0;
          v8 = 20;
          while (1)
          {
            IODelay(0x3E8uLL);
            result = (*(a1 + 976))(a1, 10, &v12 + 2);
            if (result)
            {
              break;
            }

            v7 += BYTE2(v12);
            if (v7 >= 6)
            {
              *(a1 + 1380) = 1;
              return (*(a1 + 1032))(a1, 7989, 105);
            }

            result = 0;
            if (v7)
            {
              v8 = 100;
            }

            if (++v6 >= v8)
            {
              return result;
            }
          }
        }

        return result;
      }
    }

    return 0;
  }

  if (*(a1 + 1376) != 2)
  {
LABEL_33:
    if (*(a1 + 1380) == 1)
    {
      result = (*(a1 + 976))(a1, 12123, &v12);
      if (!result)
      {
        result = (*(a1 + 1032))(a1, 12123, 3);
        if (!result)
        {
          IODelay(0x4E20uLL);
          result = (*(a1 + 1032))(a1, 0, 320);
          if (!result)
          {
            result = (*(a1 + 1032))(a1, 7989, 42);
            if (!result)
            {
              result = (*(a1 + 1032))(a1, 0, 13056);
              if (!result)
              {
                IODelay(0x4E20uLL);
                result = (*(a1 + 1032))(a1, 12123, v12);
                if (!result)
                {
                  *(a1 + 1380) = 0;
                }
              }
            }
          }
        }
      }

      return result;
    }

    return 0;
  }

  result = (*(a1 + 976))(a1, 12123, &v12);
  if (!result)
  {
    result = (*(a1 + 1032))(a1, 12123, 3);
    if (!result)
    {
      IODelay(0x4E20uLL);
      result = (*(a1 + 1032))(a1, 0, 320);
      if (!result)
      {
        v9 = 0;
        while (1)
        {
          v10 = word_100033250[v9];
          result = (*(a1 + 976))(a1, v10, &v12 + 2);
          if (result)
          {
            break;
          }

          HIWORD(v12) = HIWORD(v12) & 0x3FFF | 0x8000;
          result = (*(a1 + 1032))(a1, v10, HIWORD(v12));
          if (result)
          {
            break;
          }

          if (++v9 == 4)
          {
            result = (*(a1 + 1032))(a1, 0, 13056);
            if (!result)
            {
              IODelay(0x4E20uLL);
              result = (*(a1 + 1032))(a1, 12123, v12);
              if (!result)
              {
                *(a1 + 1376) = 1;
                goto LABEL_33;
              }
            }

            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t e1000_get_cable_length_igp_82541(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v12 = 0;
  v4 = 128;
  while (1)
  {
    result = (*(a1 + 976))(a1, word_100033258[v2], &v12);
    if (result)
    {
      break;
    }

    if (((v12 - 16256) >> 8) < 0xC1u)
    {
      return 4294967294;
    }

    ++v2;
    v6 = v12 >> 7;
    v3 += v6;
    if (v4 >= v6)
    {
      v4 = v6;
    }

    if (v2 == 4)
    {
      result = 0;
      LODWORD(v7) = (v3 - v4) / 3u;
      if (v3 <= 0xC7u)
      {
        v7 = v7;
      }

      else
      {
        v7 = v3 >> 2;
      }

      v8 = v7 - 24;
      v9 = e1000_igp_cable_length_table[v7];
      v10 = v9 - 10;
      if (v8 >= 0x68)
      {
        v10 = 0;
      }

      *(a1 + 1128) = v10;
      v11 = v9 + 10;
      *(a1 + 1126) = v11;
      *(a1 + 1124) = (v11 + v10) >> 1;
      return result;
    }
  }

  return result;
}

uint64_t e1000_phy_hw_reset_82541(uint64_t a1)
{
  v2 = e1000_phy_hw_reset_generic(a1);
  if (!v2)
  {
    e1000_phy_init_script_82541(a1);
    if ((*(a1 + 284) | 2) == 0xB)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE00uLL, &readData);
      __dmb(1u);
      v3 = readData & 0xFFFFF3FF;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE00uLL, v3 | 0x7000300);
    }
  }

  return v2;
}

uint64_t e1000_set_d3_lplu_state_82541(uint64_t a1, char a2)
{
  v4 = *(a1 + 284);
  if (v4 == 10 || v4 == 12)
  {
    v13 = 0;
    result = (*(a1 + 976))(a1, 20, &v13);
    if (result)
    {
      return result;
    }

    if (a2)
    {
      v7 = *(a1 + 1120);
      v8 = v7 > 0x2F;
      v9 = (1 << v7) & 0x800000008008;
      if (!v8 && v9 != 0)
      {
        v13 |= 0x10u;
        result = (*(a1 + 1032))(a1, 20);
        if (result)
        {
          return result;
        }

LABEL_23:
        result = (*(a1 + 976))(a1, 16, &v13);
        if (result)
        {
          return result;
        }

        v12 = v13 & 0xFF7F;
LABEL_25:
        v13 = v12;
        return (*(a1 + 1032))(a1, 16);
      }
    }

    else
    {
      v13 &= ~0x10u;
      result = (*(a1 + 1032))(a1, 20);
      if (result)
      {
        return result;
      }

      v11 = *(a1 + 1096);
      if (v11 == 2)
      {
        goto LABEL_23;
      }

      if (v11 == 1)
      {
        result = (*(a1 + 976))(a1, 16, &v13);
        if (result)
        {
          return result;
        }

        v12 = v13 | 0x80;
        goto LABEL_25;
      }
    }

    return 0;
  }

  return e1000_set_d3_lplu_state_generic(a1, a2);
}

void e1000_power_down_phy_copper_82541(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5820uLL, &readData);
  __dmb(1u);
  if ((readData & 1) == 0)
  {
    e1000_power_down_phy_copper(a1);
  }
}

uint64_t DriverKit_AppleEthernetE1000MetaClass::New(DriverKit_AppleEthernetE1000MetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1000392C8;
  a2->OSObjectInterface::__vftable = off_100039458;
  *&a2[1].refcount = &off_100039478;
  return 0;
}

uint64_t DriverKit_AppleEthernetE1000::_Dispatch(IOUserNetworkEthernet *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid <= 0xE77A9AA5DB9C706BLL)
  {
    if (msgid <= 0xC3E63AC546EBD1FDLL)
    {
      switch(msgid)
      {
        case 0x98E715041C459FA5:
          v11 = *a2;
          return IOService::Stop_Invoke(&v11, this, DriverKit_AppleEthernetE1000::Stop_Impl);
        case 0xA49568F23EE8EFD5:
          v11 = *a2;
          return IOUserNetworkEthernet::GetMaxTransferUnit_Invoke(&v11, this, DriverKit_AppleEthernetE1000::GetMaxTransferUnit_Impl);
        case 0xAB6F76DDE6D693F2:
          v11 = *a2;
          return IOService::Start_Invoke(&v11, this, DriverKit_AppleEthernetE1000::Start_Impl);
      }

      goto LABEL_38;
    }

    switch(msgid)
    {
      case 0xC3E63AC546EBD1FELL:
        if (!OSMetaClassBase::IsRemote(this))
        {
          v11 = *a2;
          return IOUserNetworkEthernet::SelectMediaType_Invoke(&v11, this, DriverKit_AppleEthernetE1000::SelectMediaType_Impl);
        }

        goto LABEL_36;
      case 0xE042A87972611225:
        if (!OSMetaClassBase::IsRemote(this))
        {
          v11 = *a2;
          return IOUserNetworkEthernet::SetAllMulticastModeEnable_Invoke(&v11, this, DriverKit_AppleEthernetE1000::SetAllMulticastModeEnable_Impl);
        }

        goto LABEL_36;
      case 0xE072FCC26CF639ACLL:
        if (!OSMetaClassBase::IsRemote(this))
        {
          v11 = *a2;
          return IOUserNetworkEthernet::SetPromiscuousModeEnable_Invoke(&v11, this, DriverKit_AppleEthernetE1000::SetPromiscuousModeEnable_Impl);
        }

        goto LABEL_36;
    }

LABEL_38:
    v11 = *a2;
    return IOUserNetworkEthernet::_Dispatch(this, &v11);
  }

  if (msgid > 0x3B4A8720C78B90F2)
  {
    if (msgid != 0x3B4A8720C78B90F3)
    {
      if (msgid == 0x7E0BF833F9FED020)
      {
        if (OSMetaClassBase::IsRemote(this))
        {
          goto LABEL_36;
        }

        v11 = *a2;
        v9 = gOSAction_DriverKit_AppleEthernetE1000_TxSubmitMetaClass;
        v10 = DriverKit_AppleEthernetE1000::TxSubmit_Impl;
      }

      else
      {
        if (msgid != 0x3F8B9F1D6BFC5179)
        {
          goto LABEL_38;
        }

        if (OSMetaClassBase::IsRemote(this))
        {
          goto LABEL_36;
        }

        v11 = *a2;
        v9 = gOSAction_DriverKit_AppleEthernetE1000_RxSubmitMetaClass;
        v10 = DriverKit_AppleEthernetE1000::RxSubmit_Impl;
      }

      return IODataQueueDispatchSource::DataAvailable_Invoke(&v11, this, v10, v9);
    }

    if (!OSMetaClassBase::IsRemote(this))
    {
      v11 = *a2;
      v7 = gOSAction_DriverKit_AppleEthernetE1000_InterruptOccurredMetaClass;
      v8 = DriverKit_AppleEthernetE1000::InterruptOccurred_Impl;
      return IOInterruptDispatchSource::InterruptOccurred_Invoke(&v11, this, v8, v7);
    }
  }

  else
  {
    if (msgid == 0xE77A9AA5DB9C706CLL)
    {
      v11 = *a2;
      return IOUserNetworkEthernet::GetHardwareAssists_Invoke(&v11, this, DriverKit_AppleEthernetE1000::GetHardwareAssists_Impl);
    }

    if (msgid == 0xF421A9D80F9A1FDALL)
    {
      if (!OSMetaClassBase::IsRemote(this))
      {
        v11 = *a2;
        return IOUserNetworkEthernet::SetInterfaceEnable_Invoke(&v11, this, DriverKit_AppleEthernetE1000::SetInterfaceEnable_Impl);
      }

      goto LABEL_36;
    }

    if (msgid != 0x1AB3CFD93F46F73BLL)
    {
      goto LABEL_38;
    }

    if (!OSMetaClassBase::IsRemote(this))
    {
      v11 = *a2;
      v7 = gOSAction_DriverKit_AppleEthernetE1000_QueueInterruptOccurredMetaClass;
      v8 = DriverKit_AppleEthernetE1000::QueueInterruptOccurred_Impl;
      return IOInterruptDispatchSource::InterruptOccurred_Invoke(&v11, this, v8, v7);
    }
  }

LABEL_36:
  v11 = *a2;
  return OSMetaClassBase::Dispatch(this, &v11);
}

uint64_t DriverKit_AppleEthernetE1000MetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t DriverKit_AppleEthernetE1000::CreateActionRxSubmit(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetE1000_RxSubmit");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x3F8B9F1D6BFC5179uLL, 0xF799C876BAF566F3, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t DriverKit_AppleEthernetE1000::CreateActionTxSubmit(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetE1000_TxSubmit");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x7E0BF833F9FED020uLL, 0xF799C876BAF566F3, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t DriverKit_AppleEthernetE1000::CreateActionQueueInterruptOccurred(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetE1000_QueueInterruptOccurred");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x1AB3CFD93F46F73BuLL, 0xCE0513291CFA1EE1, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t DriverKit_AppleEthernetE1000::CreateActionInterruptOccurred(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetE1000_InterruptOccurred");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x3B4A8720C78B90F3uLL, 0xCE0513291CFA1EE1, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_RxSubmitMetaClass::New(OSAction_DriverKit_AppleEthernetE1000_RxSubmitMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100039610;
  a2->OSObjectInterface::__vftable = &off_100039658;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_RxSubmit::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_RxSubmit::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_RxSubmitMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_TxSubmitMetaClass::New(OSAction_DriverKit_AppleEthernetE1000_TxSubmitMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_1000396B8;
  a2->OSObjectInterface::__vftable = &off_100039700;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_TxSubmit::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_TxSubmit::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_TxSubmitMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_QueueInterruptOccurredMetaClass::New(OSAction_DriverKit_AppleEthernetE1000_QueueInterruptOccurredMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100039760;
  a2->OSObjectInterface::__vftable = &off_1000397A8;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_QueueInterruptOccurred::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_QueueInterruptOccurred::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_QueueInterruptOccurredMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_InterruptOccurredMetaClass::New(OSAction_DriverKit_AppleEthernetE1000_InterruptOccurredMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100039808;
  a2->OSObjectInterface::__vftable = &off_100039850;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_InterruptOccurred::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_InterruptOccurred::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetE1000_InterruptOccurredMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

void DriverKit_AppleEthernetE1000_IVars::updateCarrier()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::updateCarrier(_DWORD *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *a1 = 1;
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *a1 = 2;
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *a1 = 0;
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *a1 = 3;
}

void DriverKit_AppleEthernetE1000_IVars::updateCarrier(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a1;
    v10 = *a2;
    OUTLINED_FUNCTION_3();
    _os_log_impl(v4, v5, v6, v7, v8, 0x1Eu);
  }
}

void DriverKit_AppleEthernetE1000_IVars::getSupportedMediaArray()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::selMed()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::handleChosenMedia()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

uint64_t DriverKit_AppleEthernetE1000_IVars::txComplete(DriverKit_AppleEthernetE1000_IVars *this, unsigned int a2)
{
  v2 = this + 352 * a2;
  v3 = *(v2 + 2452);
  if (v3 == atomic_load_explicit((v2 + 9812), memory_order_acquire))
  {
    return 0;
  }

  v4 = v2 + 9680;
  v5 = *(this + 71);
  if (v5 < 29)
  {
    LODWORD(v13[0]) = 0;
    v7 = *(this + 2);
    if (v5 <= 1)
    {
      v8 = 1072;
    }

    else
    {
      v8 = 14352;
    }

    IOPCIDevice::MemoryRead32(v7, 0, v8, v13);
    __dmb(1u);
    v6 = v13[0];
    if (LODWORD(v13[0]) == -1)
    {
      return 0;
    }
  }

  else
  {
    v6 = *(*(v4 + 33) + 2048);
  }

  if (v3 == v6)
  {
    return 0;
  }

  v9 = 0;
  do
  {
    v11 = *(*(v4 + 38) + 8 * v3);
    if (v11)
    {
      v12 = *(v4 + 41);
      LODWORD(v9) = v9 + 1;
      sendDataAvailable = 0;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 0x40000000;
      v13[2] = ___ZN6pcindk15enqueueTxPacketEP25IODataQueueDispatchSourceP24IOUserNetworkPacketStateRj_block_invoke;
      v13[3] = &__block_descriptor_tmp_0;
      v13[4] = v11;
      if (IODataQueueDispatchSource::EnqueueWithCoalesce(v12, 0x68u, &sendDataAvailable, v13))
      {
        IODataQueueDispatchSource::SendDataAvailable(v12);
        v9 = v9;
      }

      else
      {
        v9 = v9 | 0x10000;
      }
    }

    v3 = (v3 + 1) & 0x7F;
  }

  while (v3 != v6);
  *(v4 + 32) = v6;
  if (v9 >= 0x10000)
  {
    IODataQueueDispatchSource::SendDataAvailable(*(v4 + 41));
  }

  return v9;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::initReceiveUnit(IOPCIDevice **this)
{
  OUTLINED_FUNCTION_25();
  if ((v2 & 1) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    readData = 136315394;
    OUTLINED_FUNCTION_23();
    v138 = 613;
    OUTLINED_FUNCTION_26();
    _os_log_impl(v98, v99, v100, v101, v102, 0x12u);
  }

  v3 = OUTLINED_FUNCTION_5();
  IOPCIDevice::MemoryRead32(v3, v4, 0x100uLL, v5);
  __dmb(1u);
  if ((*(this + 71) & 0xFFFFFFFE) != 0x10)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x100uLL, readData & 0xFFFFFFFD);
  }

  v134 = readData;
  e1000_rar_set(this);
  OUTLINED_FUNCTION_25();
  if (v6)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_129;
    }

    v103 = *(this + 272);
    v104 = *(this + 273);
    v105 = *(this + 274);
    v106 = *(this + 275);
    v107 = *(this + 276);
    v108 = *(this + 277);
    readData = 136316930;
    v136 = "initReceiveUnit";
    v137 = 1024;
    v138 = 626;
    v139 = 1024;
    v140 = v103;
    v141 = 1024;
    v142 = v104;
    v143 = 1024;
    v144 = v105;
    v145 = 1024;
    v146 = v106;
    v147 = 1024;
    v148 = v107;
    v149 = 1024;
    v150 = v108;
    OUTLINED_FUNCTION_26();
    _os_log_impl(v109, v110, v111, v112, v113, 0x36u);
    OUTLINED_FUNCTION_25();
    if (v114)
    {
LABEL_129:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        readData = 0;
        v115 = this[2];
        OUTLINED_FUNCTION_17();
        if (v47 ^ v48 | v46)
        {
          v117 = 64;
        }

        else
        {
          v117 = 21504;
        }

        IOPCIDevice::MemoryRead32(v116, 0, v117, &readData);
        __dmb(1u);
        v118 = readData;
        v119 = OUTLINED_FUNCTION_5();
        IOPCIDevice::MemoryRead32(v119, v120, 0x5404uLL, v121);
        __dmb(1u);
        v122 = readData;
        readData = 136315906;
        v136 = "initReceiveUnit";
        v137 = 1024;
        v138 = 628;
        v139 = 1024;
        v140 = v118;
        v141 = 1024;
        v142 = v122;
        OUTLINED_FUNCTION_26();
        _os_log_impl(v123, v124, v125, v126, v127, 0x1Eu);
      }
    }
  }

  v7 = 21516;
  v8 = 14;
  do
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, v7 - 4, 0);
    __dmb(2u);
    v9 = OUTLINED_FUNCTION_18();
    IOPCIDevice::MemoryWrite32(v9, v10, v7, 0);
    v7 += 8;
    --v8;
  }

  while (v8);
  v11 = 128;
  v12 = 20992;
  do
  {
    __dmb(2u);
    if (v11 == 128)
    {
      OUTLINED_FUNCTION_17();
    }

    v13 = OUTLINED_FUNCTION_18();
    IOPCIDevice::MemoryWrite32(v13, v14, v15, 0);
    v12 += 4;
    --v11;
  }

  while (v11);
  v16 = 21632;
  v17 = 8;
  do
  {
    __dmb(2u);
    v18 = OUTLINED_FUNCTION_18();
    IOPCIDevice::MemoryWrite32(v18, v19, v16, 0);
    v16 += 4;
    --v17;
  }

  while (v17);
  v20 = 23552;
  v21 = 32;
  do
  {
    __dmb(2u);
    v22 = OUTLINED_FUNCTION_18();
    IOPCIDevice::MemoryWrite32(v22, v23, v20, 0);
    v20 += 4;
    --v21;
  }

  while (v21);
  if (*(this + 71) > 12)
  {
    v24 = OUTLINED_FUNCTION_5();
    IOPCIDevice::MemoryRead32(v24, v25, 0x5008uLL, v26);
    __dmb(1u);
    v27 = readData;
    if (*(this + 71) == 16)
    {
      v27 = readData | 0x1000;
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(this[2], 0, 0x5008uLL, v27 | 0x8000);
  }

  v28 = OUTLINED_FUNCTION_5();
  IOPCIDevice::MemoryRead32(v28, v29, 0x5000uLL, v30);
  __dmb(1u);
  v31 = readData;
  if (*(this + 71) <= 29)
  {
    v32 = 768;
  }

  else
  {
    v32 = 2816;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(this[2], 0, 0x5000uLL, v32 | v31);
  if (*(this + 9673))
  {
    v33 = 0;
    v34 = (this + 1288);
    v35 = 49152;
    while (1)
    {
      __dmb(2u);
      if (v35 == 49152 || v35 == 49216)
      {
        OUTLINED_FUNCTION_17();
      }

      v36 = OUTLINED_FUNCTION_18();
      IOPCIDevice::MemoryWrite32(v36, v37, v38, 0x800u);
      __dmb(2u);
      v39 = OUTLINED_FUNCTION_27();
      if (v46)
      {
        OUTLINED_FUNCTION_17();
        if (v47 ^ v48 | v46)
        {
          v40 = 272;
        }

        else
        {
          v40 = 10240;
        }
      }

      else if (v35 == 49216)
      {
        OUTLINED_FUNCTION_17();
        if (v47 ^ v48 | v46)
        {
          v40 = 312;
        }

        else
        {
          v40 = 10496;
        }
      }

      else if (v33 <= 3)
      {
        v40 = (v33 << 8) | 0x2800;
      }

      else
      {
        v40 = v35;
      }

      IOPCIDevice::MemoryWrite32(v39, 0, v40, *v34);
      __dmb(2u);
      v41 = OUTLINED_FUNCTION_27();
      if (v46)
      {
        OUTLINED_FUNCTION_17();
        if (v47 ^ v48 | v46)
        {
          v42 = 276;
        }

        else
        {
          v42 = 10244;
        }
      }

      else if (v35 == 49216)
      {
        OUTLINED_FUNCTION_17();
        if (v47 ^ v48 | v46)
        {
          v42 = 316;
        }

        else
        {
          v42 = 10500;
        }
      }

      else if (v33 <= 3)
      {
        v42 = (v33 << 8) | 0x2804;
      }

      else
      {
        v42 = v35 + 4;
      }

      IOPCIDevice::MemoryWrite32(v41, 0, v42, v34[1]);
      __dmb(2u);
      v43 = OUTLINED_FUNCTION_27();
      if (v46)
      {
        OUTLINED_FUNCTION_17();
        if (v47 ^ v48 | v46)
        {
          v44 = 288;
        }

        else
        {
          v44 = 10256;
        }
      }

      else if (v35 == 49216)
      {
        OUTLINED_FUNCTION_17();
        if (v47 ^ v48 | v46)
        {
          v44 = 328;
        }

        else
        {
          v44 = 10512;
        }
      }

      else if (v33 <= 3)
      {
        v44 = (v33 << 8) | 0x2810;
      }

      else
      {
        v44 = v35 + 16;
      }

      IOPCIDevice::MemoryWrite32(v43, 0, v44, *(v34 - 36));
      __dmb(2u);
      v45 = OUTLINED_FUNCTION_27();
      if (v46)
      {
        OUTLINED_FUNCTION_17();
        v49 = 296;
        v50 = 10264;
      }

      else
      {
        if (v35 != 49216)
        {
          if (v33 > 3)
          {
            v51 = v35 + 24;
          }

          else
          {
            v51 = (v33 << 8) | 0x2818;
          }

          goto LABEL_71;
        }

        OUTLINED_FUNCTION_17();
        v49 = 336;
        v50 = 10520;
      }

      if (v47 ^ v48 | v46)
      {
        v51 = v49;
      }

      else
      {
        v51 = v50;
      }

LABEL_71:
      IOPCIDevice::MemoryWrite32(v45, 0, v51, *(v34 - 35));
      ++v33;
      v52 = *(this + 9673);
      v35 += 64;
      v34 += 88;
      if (v33 >= v52)
      {
        v53 = v52 == 0;
        goto LABEL_77;
      }
    }
  }

  v53 = 1;
LABEL_77:
  v54 = *(this + 71);
  if ((v54 - 20) < 2 || v54 == 23)
  {
    if (*(this + 2597) >= 0x5DDu)
    {
      __dmb(2u);
      v56 = this[2];
      readData = 0;
      v57 = OUTLINED_FUNCTION_19();
      IOPCIDevice::MemoryRead32(v57, v58, 0x2828uLL, v59);
      __dmb(1u);
      v60 = OUTLINED_FUNCTION_19();
      IOPCIDevice::MemoryWrite32(v60, v61, 0x2828uLL, v62);
    }
  }

  else if (v54 == 16)
  {
    if (!v53)
    {
      v63 = 0;
      v64 = 49192;
      v65 = 10280;
      do
      {
        readData = 0;
        if (v63 >= 4)
        {
          v66 = v64;
        }

        else
        {
          v66 = v65;
        }

        IOPCIDevice::MemoryRead32(this[2], 0, v66, &readData);
        __dmb(1u);
        v67 = readData;
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(this[2], 0, v66, v67 | 0x1040420);
        ++v63;
        v64 += 64;
        v65 += 256;
      }

      while (v63 < *(this + 9673));
    }
  }

  else
  {
    if (v54 < 29)
    {
      v53 = 1;
    }

    if (!v53)
    {
      v82 = 0;
      do
      {
        v83 = (*(this + 2597) >> 10) - 2113928192;
        __dmb(2u);
        if (v82 >= 4)
        {
          v84 = (v82 << 6) + 49164;
        }

        else
        {
          v84 = (v82 << 8) | 0x280C;
        }

        if (v82 >= 4)
        {
          v85 = (v82 << 6) + 49192;
        }

        else
        {
          v85 = (v82 << 8) | 0x2828;
        }

        IOPCIDevice::MemoryWrite32(this[2], 0, v84, v83);
        __dmb(2u);
        v86 = OUTLINED_FUNCTION_18();
        IOPCIDevice::MemoryWrite32(v86, v87, v85, 0x2040808u);
        v88 = OUTLINED_FUNCTION_5();
        IOPCIDevice::MemoryRead32(v88, v89, v85, v90);
        __dmb(1u);
        if ((readData & 0x2000000) == 0)
        {
          v91 = 1;
          v92 = 10000;
          while (v92)
          {
            IODelay(0x3E8uLL);
            v93 = OUTLINED_FUNCTION_5();
            IOPCIDevice::MemoryRead32(v93, v94, v85, v95);
            __dmb(1u);
            --v91;
            --v92;
            if ((readData & 0x2000000) != 0)
            {
              if (-v91 < 0x270F)
              {
                goto LABEL_112;
              }

              break;
            }
          }

          OUTLINED_FUNCTION_25();
          if ((v96 & 2) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            readData = 136315650;
            OUTLINED_FUNCTION_23();
            v138 = 697;
            v139 = v97;
            v140 = v82;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "e1000::%s(%d): Enable not set in rxdctl for ring[%d]\n", &readData, 0x18u);
          }
        }

LABEL_112:
        ++v82;
      }

      while (v82 < *(this + 9673));
    }
  }

  v68 = OUTLINED_FUNCTION_5();
  IOPCIDevice::MemoryRead32(v68, v69, 8uLL, v70);
  __dmb(1u);
  v71 = v134 & 0xFBFC4FD9 | (*(this + 76) << 12);
  if (*(this + 71) <= 28)
  {
    v72 = *(this + 2597);
    v73 = v134 & 0xF9FC4FD9 | (*(this + 76) << 12) & 0xF9FF7FD9 | 0x4008022;
  }

  __dmb(2u);
  v74 = OUTLINED_FUNCTION_18();
  IOPCIDevice::MemoryWrite32(v74, v75, 0x100uLL, v76);
  v77 = OUTLINED_FUNCTION_5();
  IOPCIDevice::MemoryRead32(v77, v78, 8uLL, v79);
  __dmb(1u);
  IODelay(0xC350uLL);
  OUTLINED_FUNCTION_25();
  if ((v80 & 1) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    readData = 136315650;
    OUTLINED_FUNCTION_23();
    v138 = 747;
    v139 = v128;
    v140 = 0;
    OUTLINED_FUNCTION_26();
    _os_log_impl(v129, v130, v131, v132, v133, 0x18u);
  }

  return 0;
}

void DriverKit_AppleEthernetE1000_IVars::activateWOL(uint64_t a1, uint64_t a2)
{
  if ((pcindkll & 0x20000) != 0)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (v5 = *(a2 + 10), OUTLINED_FUNCTION_4(), OUTLINED_FUNCTION_3_0(), OUTLINED_FUNCTION_3(), _os_log_impl(v6, v7, v8, v9, v10, 0x18u), (pcindkll & 0x20000) != 0))
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (v11 = *(a2 + 13), OUTLINED_FUNCTION_4(), OUTLINED_FUNCTION_3_0(), OUTLINED_FUNCTION_3(), _os_log_impl(v12, v13, v14, v15, v16, 0x18u), (pcindkll & 0x20000) != 0))
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (v17 = *(a2 + 15), OUTLINED_FUNCTION_4(), OUTLINED_FUNCTION_3_0(), OUTLINED_FUNCTION_3(), _os_log_impl(v18, v19, v20, v21, v22, 0x18u), (pcindkll & 0x20000) != 0))
        {
          if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (v23 = *(a2 + 32), OUTLINED_FUNCTION_4(), OUTLINED_FUNCTION_3_0(), OUTLINED_FUNCTION_3(), _os_log_impl(v24, v25, v26, v27, v28, 0x18u), (pcindkll & 0x20000) != 0))
          {
            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (v29 = *(a2 + 34), OUTLINED_FUNCTION_4(), OUTLINED_FUNCTION_3_0(), OUTLINED_FUNCTION_3(), _os_log_impl(v30, v31, v32, v33, v34, 0x18u), (pcindkll & 0x20000) != 0))
            {
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (v35 = *(a2 + 44), OUTLINED_FUNCTION_4(), OUTLINED_FUNCTION_3_0(), OUTLINED_FUNCTION_3(), _os_log_impl(v36, v37, v38, v39, v40, 0x18u), (pcindkll & 0x20000) != 0))
              {
                if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (v41 = *(a2 + 46), OUTLINED_FUNCTION_4(), OUTLINED_FUNCTION_3_0(), OUTLINED_FUNCTION_3(), _os_log_impl(v42, v43, v44, v45, v46, 0x18u), (pcindkll & 0x20000) != 0))
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                  {
                    v47 = *(a2 + 64);
                    OUTLINED_FUNCTION_4();
                    OUTLINED_FUNCTION_3_0();
                    OUTLINED_FUNCTION_3();
                    _os_log_impl(v48, v49, v50, v51, v52, 0x18u);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  e1000_power_up_phy(a1);
  IODelay(0x186A0uLL);
  DriverKit_AppleEthernetE1000_IVars::mDNS_Callback(a1, a2, v4);
}

void DriverKit_AppleEthernetE1000_IVars::probe()
{
  __assert_rtn("probe", "AppleEthernetE1000.cpp", 302, "!pciDev->CopyProperties(&props)");
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v1, v2, v3, v4, v5, 0x18u);
  }

  *v0 = -536870208;
}

void DriverKit_AppleEthernetE1000_IVars::probe(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 8);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0x1Cu);
  }
}

void DriverKit_AppleEthernetE1000_IVars::start(unsigned int *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *a1;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0x1Eu);
  }
}

void DriverKit_AppleEthernetE1000_IVars::resetHW()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::initHW(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 10396);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0x18u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::initHW()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Eu);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::initHW(IOPCIDevice **a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x1000uLL, v7);
    __dmb(1u);
    v7[0] = 136315650;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x18u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::enableIntrs()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::disableIntrs()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::initTransmitUnit()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::up()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::up(IOPCIDevice **a1)
{
  DriverKit_AppleEthernetE1000_IVars::initTransmitUnit(a1);
  DriverKit_AppleEthernetE1000_IVars::initReceiveUnit(a1);
  DriverKit_AppleEthernetE1000_IVars::enableIntrs(a1);
}

void DriverKit_AppleEthernetE1000_IVars::down()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::setPromiscuousModeEnable()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::setAllMulticastModeEnable()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::setMcastAddresses()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::hashMcastAddress(void *a1, int *a2, int *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a1 >> 16;
    v12 = *a2;
    v13 = *a3;
    OUTLINED_FUNCTION_3();
    _os_log_impl(v6, v7, v8, v9, v10, 0x28u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::hashMcastAddress(void *a1, int *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a1 >> 16;
    v10 = *a2;
    OUTLINED_FUNCTION_3();
    _os_log_impl(v4, v5, v6, v7, v8, 0x28u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::mDNS_Callback()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v0 = OUTLINED_FUNCTION_21();
    IOPCIDevice::MemoryRead32(v0, v1, 0x12114uLL, v2);
    __dmb(1u);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Eu);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::mDNS_Callback(unsigned __int16 *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *a1;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *a1;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *a1;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0x18u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::setFWProxyingCommand()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  OUTLINED_FUNCTION_12();
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }

  OUTLINED_FUNCTION_12();
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }

  OUTLINED_FUNCTION_12();
}

void DriverKit_AppleEthernetE1000_IVars::setupARPOffload()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  OUTLINED_FUNCTION_15();
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  OUTLINED_FUNCTION_15();
}

void DriverKit_AppleEthernetE1000_IVars::setupARPOffload(_DWORD *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *a1 = 0;
}

void DriverKit_AppleEthernetE1000_IVars::setupNSOffload()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  OUTLINED_FUNCTION_15();
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  OUTLINED_FUNCTION_15();
}

void DriverKit_AppleEthernetE1000_IVars::setupNSOffload(_DWORD *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *a1 = 0;
}

void DriverKit_AppleEthernetE1000_IVars::setupmDNSOffload()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  OUTLINED_FUNCTION_15();
}

void DriverKit_AppleEthernetE1000_IVars::setupmDNSOffload(_DWORD *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *a1 = 0;
}

void i210_setup_ipv4_flex_filter_wakeup()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::sendMDNSCommand()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  OUTLINED_FUNCTION_12();
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }

  OUTLINED_FUNCTION_12();
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }

  OUTLINED_FUNCTION_12();
}

void DriverKit_AppleEthernetE1000_IVars::sendARPCommand()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  OUTLINED_FUNCTION_12();
}

void DriverKit_AppleEthernetE1000_IVars::sendNSCommand()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }

  OUTLINED_FUNCTION_12();
}

void DriverKit_AppleEthernetE1000_IVars::buildRRrecords(__int16 a1, _WORD *a2, void *a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v6, v7, v8, v9, v10, 0x12u);
  }

  *a3 = 20;
  *a2 = a1;
}

void DriverKit_AppleEthernetE1000_IVars::buildRRrecords(__int16 a1, uint64_t a2, _WORD *a3, void *a4)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v8, v9, v10, v11, v12, 0x12u);
  }

  *a4 = a2;
  *a3 = a1;
}

void FLASH_Write()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void FLASH_Write(_DWORD *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *a1 = 0;
}

void FLASH_Read()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void FLASH_Read(_DWORD *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *a1 = 0;
}

void flasher_need_to_erase_sector()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void flasher_dump_sector()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  OUTLINED_FUNCTION_22();
  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (OUTLINED_FUNCTION_1(), OUTLINED_FUNCTION_14(), OUTLINED_FUNCTION_3(), _os_log_impl(v1, v2, v3, v4, v5, 0x18u), OUTLINED_FUNCTION_16(), (v6 & 2) != 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_3();
      _os_log_impl(v7, v8, v9, v10, v11, 0x18u);
    }
  }

  *v0 = 3;
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v1, v2, v3, v4, v5, 0x1Eu);
  }

  *v0 = 1;
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x18u);
  }

  *v0 = v1;
}

void flasher_dump_sector(unsigned __int8 *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *a1;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0x18u);
  }
}

void flasher_dump_sector(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *a1 = &FF_Buffer;
}

void DriverKit_AppleEthernetE1000::Start_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 34, "!Start(provider, SUPERDISPATCH)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 35, "!CopyDispatchQueue(Default, &ivars->dispatch_queue)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 36, "!IODispatchQueue::Create(interrupt, 0, 0, &ivars->intrpt_disp_q)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 37, "!SetDispatchQueue(interrupt, ivars->intrpt_disp_q)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 55, "!IOInterruptDispatchSource::Create(pciDev, line, ivars->intrpt_disp_q, &ivars->intSource[i])");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 57, "!CreateActionQueueInterruptOccurred(sizeof(void*), &action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 59, "!CreateActionInterruptOccurred(sizeof(void*), &action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 60, "!ivars->intSource[i]->SetHandler(action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 61, "!ivars->intSource[i]->SetEnable(true)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 68, "!IOInterruptDispatchSource::Create(pciDev, 0, ivars->intrpt_disp_q, &ivars->intSource[0])");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 69, "!CreateActionInterruptOccurred(sizeof(void*), &action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 70, "!ivars->intSource[0]->SetHandler(action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 71, "!ivars->intSource[0]->SetEnable(true)");
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 76, "!pciDev->Open(this, 0)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetE1000.cpp", 26, "pciDev");
}

void DriverKit_AppleEthernetE1000::SetInterfaceEnable_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

void DriverKit_AppleEthernetE1000::SetInterfaceEnable_Impl(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*a1 + 24);
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x18u);
  }
}

void DriverKit_AppleEthernetE1000::SetAllMulticastModeEnable_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

void DriverKit_AppleEthernetE1000::SelectMediaType_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetE1000::RxSubmit_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::allocRing(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 280);
    OUTLINED_FUNCTION_2_1(&_mh_execute_header, &_os_log_default, v2, "e1000::%s(%d): <== ringsize=%d\n", v3, v4, v5, v6, 2u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::allocRing()
{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *v0 = v1;
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2_1(&_mh_execute_header, &_os_log_default, v0, "e1000::%s(%d): ==> 0x%08x\n", v1, v2, v3, v4, 2u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::allocateRings()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    _os_log_impl(v0, v1, v2, v3, v4, 0x12u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2_1(&_mh_execute_header, &_os_log_default, v0, "e1000::%s(%d): ==> 0x%08x\n", v1, v2, v3, v4, 2u);
  }
}

void DriverKit_AppleEthernetE1000_IVars::startInterface()
{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_2_1(&_mh_execute_header, &_os_log_default, v2, "e1000::%s(%d): ==> 0x%08x\n", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_2_1(&_mh_execute_header, &_os_log_default, v2, "e1000::%s(%d): ==> 0x%08x\n", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_2_1(&_mh_execute_header, &_os_log_default, v2, "e1000::%s(%d): ==> 0x%08x\n", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_2_1(&_mh_execute_header, &_os_log_default, v2, "e1000::%s(%d): ==> 0x%08x\n", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_2_1(&_mh_execute_header, &_os_log_default, v2, "e1000::%s(%d): ==> 0x%08x\n", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_2_1(&_mh_execute_header, &_os_log_default, v2, "e1000::%s(%d): ==> 0x%08x\n", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_2_1(&_mh_execute_header, &_os_log_default, v2, "e1000::%s(%d): ==> 0x%08x\n", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_2_1(&_mh_execute_header, &_os_log_default, v2, "e1000::%s(%d): ==> 0x%08x\n", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_2_1(&_mh_execute_header, &_os_log_default, v2, "e1000::%s(%d): ==> 0x%08x\n", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_22();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_2_1(&_mh_execute_header, &_os_log_default, v2, "e1000::%s(%d): ==> 0x%08x\n", v3, v4, v5, v6, 2u);
  }

  *v0 = v1;
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2_1(&_mh_execute_header, &_os_log_default, v0, "e1000::%s(%d): ==> 0x%08x\n", v1, v2, v3, v4, 2u);
  }
}

void operator delete[]()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}