uint64_t ixgbe_blink_led_stop_generic(uint64_t a1, unsigned int a2)
{
  v9 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x200uLL, &readData);
  __dmb(1u);
  v4 = readData;
  v7 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_blink_led_stop_generic", 3486, "ixgbe_blink_led_stop_generic");
  }

  if (a2 > 3)
  {
    return 4294967291;
  }

  result = (*(a1 + 224))(a1, &v7, &v9);
  if (!result)
  {
    v9 = v9 & 0xFFFFEFFE | 0x1000;
    result = (*(a1 + 232))(a1);
    if (!result)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0x200uLL, v4 & ~(143 << (8 * a2)) | (4 << (8 * a2)));
      v6 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v6);
      result = 0;
      __dmb(1u);
    }
  }

  return result;
}

uint64_t ixgbe_init_led_link_act_generic(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x200uLL, &readData);
  v2 = 0;
  v3 = 0;
  __dmb(1u);
  while (((readData >> v2) & 0xF) != 4)
  {
    ++v3;
    v2 += 8;
    if (v3 == 4)
    {
      if ((*(a1 + 696) - 7) > 1)
      {
        LOBYTE(v3) = 2;
      }

      else
      {
        LOBYTE(v3) = 1;
      }

      break;
    }
  }

  *(a1 + 1308) = v3;
  return 0;
}

uint64_t ixgbe_set_rar_generic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(a1 + 1248);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_rar_generic", 2358, "ixgbe_set_rar_generic");
  }

  if (v10 <= a2)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): RAR index %d is out of range.\n\n", "ixgbe_set_rar_generic", 2363, a2);
    }

    return 4294967264;
  }

  else
  {
    (*(a1 + 384))(a1, a2, a4);
    v11 = *a3;
    readData = 0;
    if (a2 >= 0x10)
    {
      v12 = (8 * a2 + 41476);
    }

    else
    {
      v12 = (8 * a2) | 0x5404u;
    }

    if (a2 >= 0x10)
    {
      v13 = (8 * a2 + 41472);
    }

    else
    {
      v13 = (8 * a2) | 0x5400u;
    }

    IOPCIDevice::MemoryRead32(*a1, 0, v12, &readData);
    __dmb(1u);
    v14 = readData & 0x7FFF0000 | *(a3 + 4) | (*(a3 + 5) << 8);
    __dmb(2u);
    if (a5)
    {
      v15 = v14 | 0x80000000;
    }

    else
    {
      v15 = v14;
    }

    IOPCIDevice::MemoryWrite32(*a1, 0, v13, v11);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v12, v15);
    return 0;
  }
}

uint64_t ixgbe_clear_rar_generic(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1248);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_clear_rar_generic", 2408, "ixgbe_clear_rar_generic");
  }

  if (v4 <= a2)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): RAR index %d is out of range.\n\n", "ixgbe_clear_rar_generic", 2413, a2);
    }

    return 4294967264;
  }

  else
  {
    readData = 0;
    if (a2 >= 0x10)
    {
      v5 = (8 * a2 + 41476);
    }

    else
    {
      v5 = (8 * a2) | 0x5404u;
    }

    if (a2 >= 0x10)
    {
      v6 = (8 * a2 + 41472);
    }

    else
    {
      v6 = (8 * a2) | 0x5400u;
    }

    IOPCIDevice::MemoryRead32(*a1, 0, v5, &readData);
    __dmb(1u);
    v7 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v6, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v5, v7 & 0x7FFF0000);
    (*(a1 + 400))(a1, a2, 0xFFFFFFFFLL);
    return 0;
  }
}

uint64_t ixgbe_init_rx_addrs_generic(uint64_t a1)
{
  v2 = *(a1 + 1248);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_rx_addrs_generic", 2447, "ixgbe_init_rx_addrs_generic");
  }

  if (ixgbe_validate_mac_addr((a1 + 700)) == -10)
  {
    (*(a1 + 72))(a1, a1 + 700);
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d):  Keeping Current RAR0 Addr =%.2X %.2X %.2X \n", "ixgbe_init_rx_addrs_generic", 2461, *(a1 + 700), *(a1 + 701), *(a1 + 702));
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %.2X %.2X %.2X\n\n", "ixgbe_init_rx_addrs_generic", 2463, *(a1 + 703), *(a1 + 704), *(a1 + 705));
      }
    }
  }

  else
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_rx_addrs_generic", 2466, "Overriding MAC Address in RAR[0]\n");
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d):  New MAC Addr =%.2X %.2X %.2X \n", "ixgbe_init_rx_addrs_generic", 2469, *(a1 + 700), *(a1 + 701), *(a1 + 702));
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %.2X %.2X %.2X\n\n", "ixgbe_init_rx_addrs_generic", 2471, *(a1 + 703), *(a1 + 704), *(a1 + 705));
        }
      }
    }

    (*(a1 + 352))(a1, 0, a1 + 700, 0, 0x80000000);
  }

  (*(a1 + 400))(a1, 0, 0xFFFFFFFFLL);
  *(a1 + 1324) = 0;
  *(a1 + 1316) = 1;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): Clearing RAR[1-%d]\n\n", "ixgbe_init_rx_addrs_generic", 2484, v2 - 1);
  }

  if (v2 >= 2)
  {
    v3 = 1;
    v4 = 41484;
    v5 = 21512;
    do
    {
      __dmb(2u);
      if (v3 >= 0x10)
      {
        v6 = v4 - 4;
      }

      else
      {
        v6 = v5;
      }

      if (v3 >= 0x10)
      {
        v7 = v4;
      }

      else
      {
        v7 = v5 + 4;
      }

      IOPCIDevice::MemoryWrite32(*a1, 0, v6, 0);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v7, 0);
      ++v3;
      v4 += 8;
      v5 += 8;
    }

    while (v2 != v3);
  }

  *(a1 + 1320) = 0;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x5090uLL, *(a1 + 1236));
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_rx_addrs_generic", 2494, " Clearing MTA\n");
  }

  if (*(a1 + 1240))
  {
    v8 = 0;
    v9 = 20992;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v9 & 0xFFFFFFFC, 0);
      ++v8;
      v9 += 4;
    }

    while (v8 < *(a1 + 1240));
  }

  ixgbe_init_uta_tables(a1);
  return 0;
}

uint64_t ixgbe_update_uc_addr_list_generic(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, uint64_t *, unsigned int *))
{
  v22 = a2;
  v7 = *(a1 + 1324);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_uc_addr_list_generic", 2561, "ixgbe_update_uc_addr_list_generic");
    v9 = pcindkll;
    v8 = *(a1 + 1316);
    *(a1 + 1316) = 1;
    *(a1 + 1324) = 0;
    if ((v9 & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Clearing RAR[1-%d]\n\n", "ixgbe_update_uc_addr_list_generic", 2572, v8);
    }
  }

  else
  {
    v8 = *(a1 + 1316);
    *(a1 + 1316) = 1;
    *(a1 + 1324) = 0;
  }

  v10 = v8 - 1;
  if (v8 != 1)
  {
    v11 = 0;
    v12 = 41484;
    v13 = 21512;
    do
    {
      __dmb(2u);
      v14 = v11 + 1;
      if (v11 >= 0xF)
      {
        v15 = v12 - 4;
      }

      else
      {
        v15 = v13;
      }

      if (v11 >= 0xF)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13 + 4;
      }

      IOPCIDevice::MemoryWrite32(*a1, 0, v15, 0);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v16, 0);
      v12 += 8;
      v13 += 8;
      v11 = v14;
    }

    while (v10 != v14);
  }

  for (i = 0; a3; --a3)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_uc_addr_list_generic", 2580, " Adding the secondary addresses:\n");
    }

    v17 = a4(a1, &v22, &i);
    ixgbe_add_uc_addr(a1, v17, i);
  }

  if (*(a1 + 1324))
  {
    if (!v7 && (*(a1 + 1328) & 1) == 0)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_uc_addr_list_generic", 2588, " Entering address overflow promisc mode\n");
      }

      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x5080uLL, &readData);
      __dmb(1u);
      v18 = readData | 0x200;
      __dmb(2u);
LABEL_29:
      IOPCIDevice::MemoryWrite32(*a1, 0, 0x5080uLL, v18);
    }
  }

  else if (v7 && (*(a1 + 1328) & 1) == 0)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_uc_addr_list_generic", 2596, " Leaving address overflow promisc mode\n");
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x5080uLL, &readData);
    __dmb(1u);
    v18 = readData & 0xFFFFFDFF;
    __dmb(2u);
    goto LABEL_29;
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_uc_addr_list_generic", 2603, "ixgbe_update_uc_addr_list_generic Complete\n");
  }

  return 0;
}

uint64_t ixgbe_update_mc_addr_list_generic(uint64_t a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, uint64_t *, int *), int a5)
{
  v15 = a2;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_mc_addr_list_generic", 2701, "ixgbe_update_mc_addr_list_generic");
  }

  *(a1 + 1312) = a3;
  *(a1 + 1320) = 0;
  if (a5)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_mc_addr_list_generic", 2712, " Clearing MTA\n");
    }

    *(a1 + 1204) = 0u;
    *(a1 + 1220) = 0u;
    *(a1 + 1172) = 0u;
    *(a1 + 1188) = 0u;
    *(a1 + 1140) = 0u;
    *(a1 + 1156) = 0u;
    *(a1 + 1108) = 0u;
    *(a1 + 1124) = 0u;
    *(a1 + 1076) = 0u;
    *(a1 + 1092) = 0u;
    *(a1 + 1044) = 0u;
    *(a1 + 1060) = 0u;
    *(a1 + 1012) = 0u;
    *(a1 + 1028) = 0u;
    *(a1 + 980) = 0u;
    *(a1 + 996) = 0u;
    *(a1 + 948) = 0u;
    *(a1 + 964) = 0u;
    *(a1 + 916) = 0u;
    *(a1 + 932) = 0u;
    *(a1 + 884) = 0u;
    *(a1 + 900) = 0u;
    *(a1 + 852) = 0u;
    *(a1 + 868) = 0u;
    *(a1 + 820) = 0u;
    *(a1 + 836) = 0u;
    *(a1 + 788) = 0u;
    *(a1 + 804) = 0u;
    *(a1 + 756) = 0u;
    *(a1 + 772) = 0u;
    *(a1 + 724) = 0u;
    *(a1 + 740) = 0u;
  }

  for (i = 0; a3; --a3)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_mc_addr_list_generic", 2718, " Adding the multicast addresses:\n");
    }

    v9 = a4(a1, &v15, &i);
    ixgbe_set_mta(a1, v9);
  }

  if (*(a1 + 1240))
  {
    v10 = 20992;
    v11 = 181;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v10 & 0xFFFFFFFC, *(a1 + 4 * v11));
      v10 += 4;
      v12 = v11 - 180;
      ++v11;
    }

    while (v12 < *(a1 + 1240));
  }

  if (*(a1 + 1320))
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x5090uLL, *(a1 + 1236) | 4);
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_mc_addr_list_generic", 2731, "ixgbe_update_mc_addr_list_generic Complete\n");
  }

  return 0;
}

uint64_t ixgbe_enable_mc_generic(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_enable_mc_generic", 2745, "ixgbe_enable_mc_generic");
  }

  if (*(a1 + 1320))
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x5090uLL, *(a1 + 1236) | 4);
  }

  return 0;
}

uint64_t ixgbe_disable_mc_generic(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_disable_mc_generic", 2764, "ixgbe_disable_mc_generic");
  }

  if (*(a1 + 1320))
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x5090uLL, *(a1 + 1236));
  }

  return 0;
}

void ixgbe_enable_rx_generic(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x3000uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x3000uLL, v2 | 1);
  if (*(a1 + 696) != 1 && *(a1 + 1300) == 1)
  {
    v4 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x8220uLL, &v4);
    __dmb(1u);
    v3 = v4;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x8220uLL, v3 | 1);
    *(a1 + 1300) = 0;
  }
}

void ixgbe_disable_rx_generic(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x3000uLL, &readData);
  __dmb(1u);
  v2 = readData;
  if (readData)
  {
    if (*(a1 + 696) != 1)
    {
      v5 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x8220uLL, &v5);
      v3 = 0;
      __dmb(1u);
      v4 = v5;
      if (v5)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, 0x8220uLL, v4 & 0xFFFFFFFE);
        v3 = 1;
      }

      *(a1 + 1300) = v3;
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x3000uLL, v2 & 0xFFFFFFFE);
  }
}

uint64_t ixgbe_fc_enable_generic(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fc_enable_generic", 2786, "ixgbe_fc_enable_generic");
  }

  if (!*(a1 + 1396))
  {
    return 4294967283;
  }

  for (i = 0; i != 32; i += 4)
  {
    if ((*(a1 + 1404) & 2) != 0)
    {
      v3 = *(a1 + i + 1332);
      if (v3)
      {
        v4 = *(a1 + i + 1364);
        if (!v4 || v4 >= v3)
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fc_enable_generic", 2800, "Invalid water mark configuration\n");
          }

          return 4294967283;
        }
      }
    }
  }

  (*(a1 + 528))(a1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4294uLL, &readData);
  __dmb(1u);
  v6 = readData & 0xFFFFF003;
  v20 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x3D00uLL, &v20);
  __dmb(1u);
  v7 = v20 & 0xFFFFFFE7;
  v8 = *(a1 + 1404);
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        goto LABEL_33;
      }

      v6 |= 8u;
    }

    v7 |= 8u;
LABEL_20:
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x4294uLL, v6 | 2);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x3D00uLL, v7);
    v9 = 0;
    v10 = 0;
    do
    {
      if ((*(a1 + 1404) & 2) != 0 && (v11 = a1 + v9, *(a1 + v9 + 1332)))
      {
        v12 = *(v11 + 1364) << 10;
        __dmb(2u);
        v13 = 4 * v10;
        IOPCIDevice::MemoryWrite32(*a1, 0, v9 + 12832, v12 | 0x80000000);
        v14 = (*(v11 + 1332) << 10) | 0x80000000;
      }

      else
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, v9 + 12832, 0);
        v19 = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, v9 + 15360, &v19);
        __dmb(1u);
        v14 = v19 - 24576;
        v13 = v9;
      }

      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v13 + 12896, v14);
      ++v10;
      v9 += 4;
    }

    while (v9 != 32);
    v15 = *(a1 + 1396) | (*(a1 + 1396) << 16);
    v16 = 12800;
    v17 = 4;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v16, v15);
      v16 += 4;
      --v17;
    }

    while (v17);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x32A0uLL, *(a1 + 1396) >> 1);
    return 0;
  }

  if (!v8)
  {
    goto LABEL_20;
  }

  if (v8 == 1)
  {
    v6 |= 8u;
    goto LABEL_20;
  }

LABEL_33:
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): Flow control param set incorrectly\n\n", "ixgbe_fc_enable_generic", 2859);
  }

  return 4294967292;
}

uint64_t ixgbe_setup_fc_generic(uint64_t a1)
{
  v19 = 0;
  v18 = 0;
  v17 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_fc_generic", 208, "ixgbe_setup_fc_generic");
  }

  v2 = *(a1 + 1408);
  if (*(a1 + 1399) == 1 && v2 == 1)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): ixgbe_fc_rx_pause not valid in strict IEEE mode\n\n", "ixgbe_setup_fc_generic", 213);
    }

    return 4294967283;
  }

  if (v2 == 4)
  {
    *(a1 + 1408) = 3;
  }

  v4 = *(a1 + 1640);
  if ((v4 - 1) < 3)
  {
    goto LABEL_10;
  }

  if (v4 == 4)
  {
    (*(a1 + 1448))(a1, 16, 7, &v18);
  }

  else if (v4 == 5)
  {
    result = (*(a1 + 224))(a1, &v17, &v19);
    if (result)
    {
      return result;
    }

LABEL_10:
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x4218uLL, &readData);
    __dmb(1u);
    v5 = readData;
    goto LABEL_20;
  }

  v5 = 0;
LABEL_20:
  v7 = *(a1 + 1408);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = v5 & 0xFFFFFE7F | 0x100;
      v12 = *(a1 + 1640);
      if (v12 != 4)
      {
        if (v12 != 5)
        {
          goto LABEL_42;
        }

        v10 = v19 & 0xCFFFFFFF | 0x20000000;
        goto LABEL_37;
      }

      v13 = v18 & 0xF3FF | 0x800;
      goto LABEL_41;
    }

    if (v7 != 3)
    {
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  if (v7)
  {
    if (v7 != 1)
    {
LABEL_23:
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): Flow control param set incorrectly\n\n", "ixgbe_setup_fc_generic", 309);
      }

      return 4294967292;
    }

LABEL_28:
    v8 = v5 | 0x180;
    v9 = *(a1 + 1640);
    if (v9 != 4)
    {
      if (v9 != 5)
      {
        goto LABEL_42;
      }

      v10 = v19 | 0x30000000;
LABEL_37:
      v19 = v10;
      goto LABEL_42;
    }

    v13 = v18 | 0xC00;
    goto LABEL_41;
  }

  v8 = v5 & 0xFFFFFE7F;
  v11 = *(a1 + 1640);
  if (v11 != 4)
  {
    if (v11 != 5)
    {
      goto LABEL_42;
    }

    v10 = v19 & 0xCFFFFFFF;
    goto LABEL_37;
  }

  v13 = v18 & 0xF3FF;
LABEL_41:
  v18 = v13;
LABEL_42:
  if (*(a1 + 696) <= 3)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x4218uLL, v8);
    v15 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x4208uLL, &v15);
    __dmb(1u);
    v8 = *(a1 + 1399) ? v15 & 0xFFFBFFFF : v15;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x4208uLL, v8);
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Set up FC; PCS1GLCTL = 0x%08X\n\n", "ixgbe_setup_fc_generic", 328, v8);
    }
  }

  v14 = *(a1 + 1640);
  if (v14 == 4)
  {
    if (ixgbe_device_supports_autoneg_fc(a1))
    {
      (*(a1 + 1456))(a1, 16, 7, v18);
    }
  }

  else if (v14 == 5)
  {
    v19 |= 0x1000u;
    result = (*(a1 + 232))(a1);
    if (result)
    {
      return result;
    }
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): Set up FC; PCS1GLCTL = 0x%08X\n\n", "ixgbe_setup_fc_generic", 347, v8);
  }

  return 0;
}

void ixgbe_fc_autoneg(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fc_autoneg", 3077, "ixgbe_fc_autoneg");
  }

  if (*(a1 + 1400) == 1)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Flow control autoneg is disabled\n");
    }

    goto LABEL_13;
  }

  v13 = 0;
  v12 = 0;
  (*(a1 + 280))(a1, &v13, &v12, 0);
  if ((v12 & 1) == 0)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): The link is down\n");
    }

    goto LABEL_13;
  }

  v2 = *(a1 + 1640);
  if ((v2 - 1) < 3)
  {
    if (v13 == 32)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x420CuLL, &readData);
      __dmb(1u);
      if ((readData & 0x50000) == 0x10000)
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0x4218uLL, &readData);
        __dmb(1u);
        v3 = readData;
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0x421CuLL, &readData);
        __dmb(1u);
        v4 = readData;
        v5 = a1;
        v6 = v3;
        v7 = 128;
        v8 = 256;
        v9 = 128;
        v10 = 256;
        goto LABEL_29;
      }

      if ((pcindkll & 0x100000) != 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_13;
  }

  if (v2 == 4)
  {
    if (!ixgbe_device_supports_autoneg_fc(a1))
    {
      goto LABEL_13;
    }

    LOWORD(readData) = 0;
    v15 = 0;
    (*(a1 + 1448))(a1, 16, 7, &readData);
    (*(a1 + 1448))(a1, 19, 7, &v15);
    v6 = readData;
    v4 = v15;
    v5 = a1;
    v7 = 1024;
    v8 = 2048;
  }

  else
  {
    if (v2 != 5)
    {
      goto LABEL_13;
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x42A4uLL, &readData);
    __dmb(1u);
    if ((readData & 0x80000000) == 0)
    {
      if ((pcindkll & 0x100000) != 0)
      {
LABEL_22:
        IOLog("ixgbe:%s(%d): %s\n");
      }

LABEL_13:
      *(a1 + 1401) = 0;
      *(a1 + 1404) = *(a1 + 1408);
      return;
    }

    if (*(a1 + 696) == 2)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x4324uLL, &readData);
      __dmb(1u);
      if ((readData & 0x40) == 0)
      {
        if ((pcindkll & 0x100000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_22;
      }
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
    __dmb(1u);
    v11 = readData;
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x42B0uLL, &readData);
    __dmb(1u);
    v4 = readData;
    v5 = a1;
    v6 = v11;
    v7 = 0x10000000;
    v8 = 0x20000000;
  }

  v9 = 1024;
  v10 = 2048;
LABEL_29:
  if (ixgbe_negotiate_fc(v5, v6, v4, v7, v8, v9, v10))
  {
    goto LABEL_13;
  }

  *(a1 + 1401) = 1;
}

uint64_t ixgbe_device_supports_autoneg_fc(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_device_supports_autoneg_fc", 134, "ixgbe_device_supports_autoneg_fc");
  }

  v12 = 0;
  v11 = 0;
  v2 = *(a1 + 1640);
  if ((v2 - 1) < 3)
  {
    HIDWORD(v4) = *(a1 + 1936) - 5572;
    LODWORD(v4) = HIDWORD(v4);
    v3 = v4 >> 1;
    v5 = v3 > 5;
    v6 = (1 << v3) & 0x39;
    if (v5 || v6 == 0)
    {
      (*(a1 + 280))(a1, &v12, &v11, 0);
      result = 1;
      if (v11 != 1 || v12 == 32)
      {
        return result;
      }
    }

    goto LABEL_15;
  }

  if (v2 != 4)
  {
    if (v2 == 5 && *(a1 + 1936) != 5552)
    {
      return 1;
    }

    goto LABEL_15;
  }

  v9 = *(a1 + 1936);
  result = 1;
  v10 = (v9 - 5549) > 0x38 || ((1 << (v9 + 83)) & 0x180001008000001) == 0;
  if (v10 && ((v9 - 5416) > 0x3B || ((1 << (v9 - 40)) & 0x910000000000001) == 0) && v9 != 5404)
  {
LABEL_15:
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Device %x does not support flow control autoneg\n", "ixgbe_device_supports_autoneg_fc", 190, *(a1 + 1936));
    }

    return 0;
  }

  return result;
}

uint64_t ixgbe_start_hw_gen2(uint64_t a1)
{
  if (*(a1 + 1260))
  {
    v2 = 0;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0x4904uLL, v2);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0x4984uLL, 0);
      ++v2;
    }

    while (v2 < *(a1 + 1260));
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  if (*(a1 + 1260))
  {
    v3 = 0;
    v4 = 24588;
    do
    {
      v16 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v4 & 0xFFFFFFCC, &v16);
      __dmb(1u);
      v5 = v16;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v4 & 0xFFFFFFCC, v5 & 0xFFFFF7FF);
      ++v3;
      v4 += 64;
    }

    while (v3 < *(a1 + 1260));
  }

  if (*(a1 + 1264))
  {
    v6 = 0;
    v7 = 49164;
    do
    {
      v15 = 0;
      if (v6 <= 0x3F)
      {
        v8 = (v6 << 6) | 0x100C;
      }

      else
      {
        v8 = v7;
      }

      v9 = (4 * v6) | 0x2200;
      if (v6 <= 0xF)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      IOPCIDevice::MemoryRead32(*a1, 0, v10, &v15);
      __dmb(1u);
      v11 = v15;
      __dmb(2u);
      if (v6 <= 0x3F)
      {
        v12 = (v6 << 6) | 0x100C;
      }

      else
      {
        v12 = v7;
      }

      if (v6 <= 0xF)
      {
        v13 = v9;
      }

      else
      {
        v13 = v12;
      }

      IOPCIDevice::MemoryWrite32(*a1, 0, v13, v11 & 0xFFFF5FFF);
      ++v6;
      v7 += 64;
    }

    while (v6 < *(a1 + 1264));
  }

  return 0;
}

uint64_t ixgbe_read_pba_string_generic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_pba_string_generic", 619, "ixgbe_read_pba_string_generic");
  }

  if (!a2)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_pba_string_generic", 622, "PBA string buffer was null\n");
    }

    return 4294967264;
  }

  v20 = 0;
  v19 = 0;
  v6 = (*(a1 + 1728))(a1, 21, &v20 + 2);
  if (v6)
  {
    v7 = v6;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_pba_string_generic", 628, "NVM Read Error\n");
    }

    return v7;
  }

  v8 = (*(a1 + 1728))(a1, 22, &v20);
  if (v8)
  {
    v7 = v8;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_pba_string_generic", 634, "NVM Read Error\n");
    }

    return v7;
  }

  if (SHIWORD(v20) != -1286)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_pba_string_generic", 644, "NVM PBA number is not stored as string\n");
    }

    if (a3 <= 0xA)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_pba_string_generic", 648, "PBA string buffer too small\n");
      }

      return 4294967271;
    }

    v11 = 0;
    v12 = HIWORD(v20);
    *a2 = HIWORD(v20) >> 12;
    *(a2 + 1) = HIBYTE(v12) & 0xF;
    *(a2 + 2) = v12 >> 4;
    *(a2 + 3) = v12 & 0xF;
    v13 = v20;
    *(a2 + 4) = v20 >> 12;
    *(a2 + 5) = HIBYTE(v13) & 0xF;
    *(a2 + 6) = 45;
    *(a2 + 8) = v13 >> 4;
    *(a2 + 9) = v13 & 0xF;
    while (1)
    {
      v14 = *(a2 + v11);
      if (v14 <= 9)
      {
        break;
      }

      if (v14 <= 0xF)
      {
        v15 = v14 + 55;
        goto LABEL_29;
      }

LABEL_30:
      v7 = 0;
      if (++v11 == 10)
      {
        return v7;
      }
    }

    v15 = v14 | 0x30;
LABEL_29:
    *(a2 + v11) = v15;
    goto LABEL_30;
  }

  v10 = (*(a1 + 1728))(a1, v20, &v19);
  if (v10)
  {
    v7 = v10;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_pba_string_generic", 680, "NVM Read Error\n");
    }

    return v7;
  }

  if ((v19 + 1) <= 1u)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_pba_string_generic", 685, "NVM PBA number section invalid length\n");
    }

    return 4294967265;
  }

  if (2 * v19 - 1 > a3)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_pba_string_generic", 691, "PBA string buffer too small\n");
    }

    return 4294967271;
  }

  LOWORD(v20) = v20 + 1;
  if (--v19)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v18 = (*(a1 + 1728))(a1, (v20 + v17), &v20 + 2);
      if (v18)
      {
        break;
      }

      *(a2 + v16) = bswap32(HIWORD(v20)) >> 16;
      ++v17;
      v16 += 2;
      if (v17 >= v19)
      {
        goto LABEL_45;
      }
    }

    v7 = v18;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_pba_string_generic", 702, "NVM Read Error\n");
    }
  }

  else
  {
    v16 = 0;
LABEL_45:
    v7 = 0;
    *(a2 + v16) = 0;
  }

  return v7;
}

uint64_t ixgbe_read_pba_num_generic(uint64_t a1, _DWORD *a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_pba_num_generic", 725, "ixgbe_read_pba_num_generic");
  }

  v7 = 0;
  v4 = (*(a1 + 1728))(a1, 21, &v7);
  if (v4)
  {
    v5 = v4;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_pba_num_generic", 729, "NVM Read Error\n");
    }
  }

  else if (v7 == 64250)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_pba_num_generic", 732, "NVM Not supported\n");
    }

    return 0x7FFFFFFFLL;
  }

  else
  {
    *a2 = v7 << 16;
    v5 = (*(a1 + 1728))(a1, 22, &v7);
    if (v5)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_pba_num_generic", 739, "NVM Read Error\n");
      }
    }

    else
    {
      *a2 |= v7;
    }
  }

  return v5;
}

uint64_t ixgbe_read_pba_raw(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned __int16 *a5)
{
  if (!a5)
  {
    return 4294967291;
  }

  if (a2)
  {
    if (a3 < 0x17)
    {
      return 4294967291;
    }

    v10 = *(a2 + 42);
    *a5 = v10;
    a5[1] = *(a2 + 44);
  }

  else
  {
    result = (*(a1 + 1736))(a1, 21, 2, a5);
    if (result)
    {
      return result;
    }

    v10 = *a5;
  }

  if (v10 == 64250)
  {
    if (*(a5 + 1))
    {
      v14 = 0;
      result = ixgbe_get_pba_block_size(a1, a2, a3, &v14);
      if (result)
      {
        return result;
      }

      if (v14 <= a4)
      {
        if (!a2)
        {
          v13 = *(a5 + 1);
          result = (*(a1 + 1736))(a1, a5[1]);
          if (result)
          {
            return result;
          }

          return 0;
        }

        v12 = a5[1];
        if (v12 + v14 < a3)
        {
          memcpy(*(a5 + 1), (a2 + 2 * v12), 2 * v14);
          return 0;
        }
      }
    }

    return 4294967291;
  }

  return 0;
}

uint64_t ixgbe_get_pba_block_size(uint64_t a1, uint64_t a2, unsigned int a3, _WORD *a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_pba_block_size", 894, "ixgbe_get_pba_block_size");
  }

  if (a2)
  {
    if (a3 <= 0x16)
    {
      return 4294967291;
    }

    if (*(a2 + 42) == -1286)
    {
      if (*(a2 + 44) < a3)
      {
        v8 = (a2 + 2 * *(a2 + 44));
        goto LABEL_12;
      }

      return 4294967291;
    }

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v11 = 0;
  result = (*(a1 + 1736))(a1, 21, 2, v12);
  if (result)
  {
    return result;
  }

  if (v12[0] != -1286)
  {
    goto LABEL_14;
  }

  v8 = &v11;
  result = (*(a1 + 1728))(a1, v12[1], &v11);
  if (result)
  {
    return result;
  }

LABEL_12:
  v10 = *v8;
  if ((*v8 + 1) < 2u)
  {
    return 4294967265;
  }

LABEL_15:
  result = 0;
  if (a4)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t ixgbe_write_pba_raw(uint64_t a1, uint64_t a2, unsigned int a3, __int16 *a4)
{
  if (!a4)
  {
    return 4294967291;
  }

  if (a2)
  {
    if (a3 < 0x17)
    {
      return 4294967291;
    }

    *(a2 + 42) = *a4;
    *(a2 + 44) = a4[1];
  }

  else
  {
    result = (*(a1 + 1752))(a1, 21, 2, a4);
    if (result)
    {
      return result;
    }
  }

  if (*a4 == -1286)
  {
    v9 = *(a4 + 1);
    if (v9)
    {
      if (!a2)
      {
        result = (*(a1 + 1752))(a1, a4[1], *v9);
        if (result)
        {
          return result;
        }

        return 0;
      }

      v10 = a4[1];
      v11 = *v9;
      if (v11 + v10 < a3)
      {
        memcpy((a2 + 2 * v10), *(a4 + 1), 2 * v11);
        return 0;
      }
    }

    return 4294967291;
  }

  return 0;
}

uint64_t ixgbe_set_pci_config_data_generic(uint64_t a1, __int16 a2)
{
  if (!*(a1 + 1808))
  {
    *(a1 + 1808) = 3;
  }

  v2 = (a2 & 0x3F0) - 16;
  if (v2 > 0x7F)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_100030240[v2 >> 4];
  }

  *(a1 + 1804) = v3;
  v4 = (a2 & 0xF) - 1;
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_100030260[v4];
  }

  *(a1 + 1800) = v5;
  return (*(a1 + 144))();
}

uint64_t ixgbe_disable_pcie_master(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_disable_pcie_master", 3192, "ixgbe_disable_pcie_master");
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0, 4u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  if ((readData & 0x80000) != 0)
  {
    v3 = 800;
    while (1)
    {
      IODelay(0x64uLL);
      v6 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v6);
      __dmb(1u);
      if ((v6 & 0x80000) == 0)
      {
        break;
      }

      if (!--v3)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_disable_pcie_master", 3217, "GIO Master Disable bit didn't clear - requesting resets\n");
        }

        *(a1 + 1285) |= 1u;
        if (*(a1 + 696) <= 5)
        {
          v4 = ixgbe_pcie_timeout_poll(a1);
          while (1)
          {
            IODelay(0x64uLL);
            v5 = 0;
            IOPCIDevice::ConfigurationRead16(*a1, 0xAAuLL, &v5);
            if ((v5 & 0x20) == 0)
            {
              break;
            }

            if (!--v4)
            {
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixgbe:%s(%d): PCIe transaction pending bit also did not clear.\n\n", "ixgbe_disable_pcie_master", 3238);
              }

              return 4294967284;
            }
          }
        }

        return 0;
      }
    }
  }

  return 0;
}

uint64_t ixgbe_write_eeprom_buffer_bit_bang(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_eeprom_buffer_bit_bang", 1338, "ixgbe_write_eeprom_buffer_bit_bang");
  }

  v8 = ixgbe_acquire_eeprom(a1);
  if (!v8)
  {
    if (ixgbe_ready_eeprom(a1))
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      if (a3)
      {
        v9 = 0;
        v10 = 0;
        v11 = 2;
        do
        {
          ixgbe_standby_eeprom(a1);
          ixgbe_shift_out_eeprom_bits(a1, 6, 8);
          ixgbe_standby_eeprom(a1);
          if (v9 + a2 > 0x7F && *(a1 + 1794) == 8)
          {
            v11 |= 8u;
          }

          ixgbe_shift_out_eeprom_bits(a1, v11, 8);
          ixgbe_shift_out_eeprom_bits(a1, 2 * ((v10 + a2) & 0x7FFF), *(a1 + 1794));
          v13 = *(a1 + 1796);
          v14 = v10;
          while (1)
          {
            ixgbe_shift_out_eeprom_bits(a1, bswap32(*(a4 + 2 * v14)) >> 16, 16);
            if (!v13)
            {
              break;
            }

            if (((a2 + v14) | -v13) != 0xFFFFFFFF && a3 > ++v14)
            {
              continue;
            }

            goto LABEL_19;
          }

          v14 = v10;
LABEL_19:
          ixgbe_standby_eeprom(a1);
          IODelay(0x2710uLL);
          v10 = v14 + 1;
          v9 = (v14 + 1);
        }

        while (v9 < a3);
      }

      v8 = 0;
    }

    ixgbe_release_eeprom(a1);
  }

  return v8;
}

uint64_t ixgbe_read_eeprom_buffer_bit_bang(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_eeprom_buffer_bit_bang", 1496, "ixgbe_read_eeprom_buffer_bit_bang");
  }

  v8 = ixgbe_acquire_eeprom(a1);
  if (!v8)
  {
    if (ixgbe_ready_eeprom(a1))
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      if (a3)
      {
        v9 = 0;
        v10 = 3;
        do
        {
          ixgbe_standby_eeprom(a1);
          if ((a2 + v9) > 0x7F && *(a1 + 1794) == 8)
          {
            v10 |= 8u;
          }

          ixgbe_shift_out_eeprom_bits(a1, v10, 8);
          ixgbe_shift_out_eeprom_bits(a1, 2 * ((v9 + a2) & 0x7FFF), *(a1 + 1794));
          *(a4 + 2 * v9++) = __rev16(ixgbe_shift_in_eeprom_bits(a1, 16));
        }

        while (a3 != v9);
      }

      v8 = 0;
    }

    ixgbe_release_eeprom(a1);
  }

  return v8;
}

uint64_t ixgbe_poll_eerd_eewr_done(IOPCIDevice **a1, int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_poll_eerd_eewr_done", 1756, "ixgbe_poll_eerd_eewr_done");
  }

  v4 = 100000;
  do
  {
    if (a2)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x10018uLL, &readData);
      __dmb(1u);
      if ((readData & 2) != 0)
      {
        return 0;
      }
    }

    else
    {
      v7 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x10014uLL, &v7);
      __dmb(1u);
      if ((v7 & 2) != 0)
      {
        return 0;
      }
    }

    IODelay(5uLL);
    --v4;
  }

  while (v4);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): EEPROM read/write done polling timed out\n", "ixgbe_poll_eerd_eewr_done", 1773);
  }

  return 0xFFFFFFFFLL;
}

uint64_t ixgbe_write_eewr_buffer_generic(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  LODWORD(v5) = a3;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_eewr_buffer_generic", 1689, "ixgbe_write_eewr_generic");
  }

  (*(a1 + 1720))(a1);
  if (v5)
  {
    if (*(a1 + 1792) <= a2)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): Invalid EEPROM offset\n");
      }
    }

    else
    {
      v8 = 4 * a2;
      v5 = v5;
      while (1)
      {
        v10 = *a4++;
        v9 = v10;
        if (ixgbe_poll_eerd_eewr_done(a1, 1))
        {
          if ((pcindkll & 0x100000) == 0)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_18;
        }

        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, 0x10018uLL, v8 | (v9 << 16) | 1);
        if (ixgbe_poll_eerd_eewr_done(a1, 1))
        {
          break;
        }

        v8 += 4;
        if (!--v5)
        {
          return 0;
        }
      }

      if ((pcindkll & 0x100000) == 0)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_18:
      IOLog("ixgbe:%s(%d): %s\n");
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Invalid EEPROM words\n", "ixgbe_write_eewr_buffer_generic", 1695);
    }

    return 4294967264;
  }
}

uint64_t ixgbe_validate_mac_addr(unsigned __int8 *a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_validate_mac_addr", 2326, "ixgbe_validate_mac_addr");
  }

  if (*a1)
  {
    return 4294967286;
  }

  if (*a1 || a1[1] || a1[2] || a1[3] || a1[4])
  {
    return 0;
  }

  if (a1[5])
  {
    return 0;
  }

  return 4294967286;
}

uint64_t ixgbe_add_uc_addr(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 1248);
  if ((pcindkll & 0x100000) != 0)
  {
    result = IOLog("ixgbe:%s(%d): %s\n", "ixgbe_add_uc_addr", 2516, "ixgbe_add_uc_addr");
    if ((pcindkll & 0x100000) != 0)
    {
      result = IOLog("ixgbe:%s(%d):  UC Addr = %.2X %.2X %.2X %.2X %.2X %.2X\n\n", "ixgbe_add_uc_addr", 2519, *a2, a2[1], a2[2], a2[3], a2[4], a2[5]);
    }
  }

  v7 = *(v5 + 1316);
  if (v7 >= v6)
  {
    v8 = (v5 + 1324);
  }

  else
  {
    v8 = (v5 + 1316);
    result = (*(v5 + 352))(v5, *(v5 + 1316), a2, a3, 0x80000000);
    if ((pcindkll & 0x100000) != 0)
    {
      result = IOLog("ixgbe:%s(%d): Added a secondary address to RAR[%d]\n\n", "ixgbe_add_uc_addr", 2528, v7);
    }
  }

  ++*v8;
  if ((pcindkll & 0x100000) != 0)
  {
    return IOLog("ixgbe:%s(%d): %s\n", "ixgbe_add_uc_addr", 2534, "ixgbe_add_uc_addr Complete\n");
  }

  return result;
}

uint64_t ixgbe_set_mta(uint64_t result, uint64_t a2)
{
  v3 = result;
  if ((pcindkll & 0x100000) != 0)
  {
    result = IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_mta", 2662, "ixgbe_set_mta");
    v4 = pcindkll;
    ++*(v3 + 1320);
    if ((v4 & 0x100000) != 0)
    {
      result = IOLog("ixgbe:%s(%d): %s\n", "ixgbe_mta_vector", 2623, "ixgbe_mta_vector");
    }
  }

  else
  {
    ++*(result + 1320);
  }

  v5 = *(v3 + 1236);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = *(a2 + 4) >> 2;
      v7 = 6;
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_17;
      }

      v6 = *(a2 + 4);
      v7 = 8;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = *(a2 + 4) >> 3;
        v7 = 5;
        goto LABEL_14;
      }

LABEL_17:
      ixgbe_set_mta();
    }

    v6 = *(a2 + 4) >> 4;
    v7 = 4;
  }

LABEL_14:
  v8 = (*(a2 + 5) << v7) & 0xFFE | v6;
  if ((pcindkll & 0x100000) != 0)
  {
    result = IOLog("ixgbe:%s(%d):  bit-vector = 0x%03X\n\n", "ixgbe_set_mta", 2667, v8);
  }

  *(v3 + 4 * (v8 >> 5) + 724) |= 1 << v8;
  return result;
}

uint64_t ixgbe_negotiate_fc(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  if (a2 && a3)
  {
    v7 = a6 & a3;
    v8 = a4 & a2;
    if ((a4 & a2) != 0 && v7)
    {
      if (*(a1 + 1408) == 3)
      {
        *(a1 + 1404) = 3;
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_negotiate_fc", 2939, "Flow Control = FULL.\n");
        }
      }

      else
      {
        *(a1 + 1404) = 1;
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_negotiate_fc", 2942, "Flow Control=RX PAUSE frames only\n");
        }
      }
    }

    else
    {
      v10 = a7 & a3;
      if ((a5 & a2) != 0 && !v8 && v7 && v10)
      {
        *(a1 + 1404) = 2;
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_negotiate_fc", 2947, "Flow Control = TX PAUSE frames only.\n");
        }
      }

      else if (v10 && v8 && (a5 & a2) != 0 && !v7)
      {
        *(a1 + 1404) = 1;
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_negotiate_fc", 2951, "Flow Control = RX PAUSE frames only.\n");
        }
      }

      else
      {
        *(a1 + 1404) = 0;
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_negotiate_fc", 2954, "Flow Control = NONE.\n");
        }
      }
    }

    return 0;
  }

  else
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Local or link partner's advertised flow control settings are NULL. Local: %x, link partner: %x\n\n", "ixgbe_negotiate_fc", 2925, a2, a3);
    }

    return 4294967269;
  }
}

uint64_t ixgbe_pcie_timeout_poll(IOPCIDevice **a1)
{
  readData = 0;
  IOPCIDevice::ConfigurationRead16(*a1, 0xC8uLL, &readData);
  v1 = (readData & 0xF) - 6;
  if (v1 > 8)
  {
    return 880;
  }

  else
  {
    return dword_10003026C[v1];
  }
}

uint64_t ixgbe_get_eeprom_semaphore(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_eeprom_semaphore", 1846, "ixgbe_get_eeprom_semaphore");
  }

  v2 = 2000;
  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 20), &readData);
    __dmb(1u);
    if ((readData & 1) == 0)
    {
      break;
    }

    IODelay(0x32uLL);
    if (!--v2)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_eeprom_semaphore", 1865, "Driver can't access the Eeprom - SMBI Semaphore not granted.\n");
      }

      ixgbe_release_eeprom_semaphore(a1);
      IODelay(0x32uLL);
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 20), &readData);
      __dmb(1u);
      if (readData)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): Software semaphore SMBI between device drivers not granted.\n\n", "ixgbe_get_eeprom_semaphore", 1918);
        }

        return 0xFFFFFFFFLL;
      }

      break;
    }
  }

  v3 = 2000;
  do
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 20), &readData);
    __dmb(1u);
    v4 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 20), v4 | 2);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 20), &readData);
    __dmb(1u);
    if ((readData & 2) != 0)
    {
      return 0;
    }

    IODelay(0x32uLL);
    --v3;
  }

  while (v3);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): SWESMBI Software EEPROM semaphore not granted.\n\n", "ixgbe_get_eeprom_semaphore", 1911);
  }

  ixgbe_release_eeprom_semaphore(a1);
  return 0xFFFFFFFFLL;
}

void ixgbe_release_eeprom_semaphore(IOPCIDevice **a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_release_eeprom_semaphore", 1934, "ixgbe_release_eeprom_semaphore");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x10140uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x10140uLL, v2 & 0xFFFFFFFC);
  v3 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v3);
  __dmb(1u);
}

uint64_t ixgbe_disable_sec_rx_path_generic(IOPCIDevice **a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_disable_sec_rx_path_generic", 3330, "ixgbe_disable_sec_rx_path_generic");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x8D00uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x8D00uLL, v2 | 2);
  v3 = 40;
  while (1)
  {
    v5 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x8D04uLL, &v5);
    __dmb(1u);
    if (v5)
    {
      break;
    }

    IODelay(0x3E8uLL);
    if (!--v3)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_disable_sec_rx_path_generic", 3348, "Rx unit being enabled before security path fully disabled.  Continuing with init.\n");
      }

      return 0;
    }
  }

  return 0;
}

uint64_t ixgbe_enable_sec_rx_path_generic(IOPCIDevice **a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_enable_sec_rx_path_generic", 3395, "ixgbe_enable_sec_rx_path_generic");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x8D00uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x8D00uLL, v2 & 0xFFFFFFFD);
  v4 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v4);
  __dmb(1u);
  return 0;
}

uint64_t ixgbe_get_san_mac_addr_generic(uint64_t a1, uint64_t a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_san_mac_addr_generic", 3559, "ixgbe_get_san_mac_addr_generic");
  }

  v8 = 0;
  if (!ixgbe_get_san_mac_addr_offset(a1, &v8) && (v8 + 1) >= 2u)
  {
    (*(a1 + 144))(a1);
    v4 = v8;
    if (*(a1 + 1812))
    {
      v4 = v8 + 3;
      LOWORD(v8) = v8 + 3;
    }

    v5 = a2 + 1;
    v6 = 3;
    while (!(*(a1 + 1728))(a1, v4, &v8 + 2))
    {
      *(v5 - 1) = HIWORD(v8);
      v4 = v8 + 1;
      LOWORD(v8) = v8 + 1;
      v5 += 2;
      if (!--v6)
      {
        return 0;
      }
    }

    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): eeprom read at offset %d failed\n", "ixgbe_get_san_mac_addr_generic", 3580, v8);
    }
  }

  *(a2 + 4) = -1;
  *a2 = -1;
  return 0;
}

uint64_t ixgbe_get_san_mac_addr_offset(uint64_t a1, uint64_t a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_san_mac_addr_offset", 3526, "ixgbe_get_san_mac_addr_offset");
  }

  v4 = (*(a1 + 1728))(a1, 40, a2);
  if (v4 && (pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): eeprom at offset %d failed\n", "ixgbe_get_san_mac_addr_offset", 3537, 40);
  }

  return v4;
}

uint64_t ixgbe_set_san_mac_addr_generic(uint64_t a1, uint64_t a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_san_mac_addr_generic", 3612, "ixgbe_set_san_mac_addr_generic");
  }

  v9 = 0;
  san_mac_addr_offset = ixgbe_get_san_mac_addr_offset(a1, &v9);
  result = 4294967274;
  if (!san_mac_addr_offset && (v9 + 1) >= 2u)
  {
    (*(a1 + 144))(a1);
    v6 = v9;
    if (*(a1 + 1812))
    {
      v6 = v9 + 3;
      v9 += 3;
    }

    v7 = a2 + 1;
    v8 = 3;
    do
    {
      (*(a1 + 1744))(a1, v6, *(v7 - 1));
      v6 = ++v9;
      v7 += 2;
      --v8;
    }

    while (v8);
    return 0;
  }

  return result;
}

uint64_t ixgbe_get_pcie_msix_count_generic(uint64_t a1)
{
  v3 = *(a1 + 696) - 1;
  if (v3 > 7 || ((0xEBu >> v3) & 1) == 0)
  {
    return 1;
  }

  v10 = v1;
  v11 = v2;
  v5 = word_100030230[v3];
  v6 = qword_100030290[v3];
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_pcie_msix_count_generic", 3665, "ixgbe_get_pcie_msix_count_generic");
  }

  readData = 0;
  IOPCIDevice::ConfigurationRead16(*a1, v6, &readData);
  v7 = readData & 0x7FF;
  if (v7 < v5)
  {
    return v7 + 1;
  }

  else
  {
    return v5;
  }
}

uint64_t ixgbe_insert_mac_addr_generic(uint64_t a1, int *a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_insert_mac_addr_generic", 3697, "ixgbe_insert_mac_addr_generic");
  }

  if (!*(a1 + 1252))
  {
    v13 = 0;
    goto LABEL_19;
  }

  v4 = 0;
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = 0xFFFFFFFFLL;
  v8 = 41476;
  v9 = 21504;
  while (1)
  {
    v10 = v7;
    readData = 0;
    if (v4 >= 0x10)
    {
      v11 = v8;
    }

    else
    {
      v11 = (v9 + 4);
    }

    IOPCIDevice::MemoryRead32(*a1, 0, v11, &readData);
    __dmb(1u);
    if ((readData & 0x80000000) == 0)
    {
      v7 = v4;
      if (v10 == -1)
      {
        goto LABEL_16;
      }
    }

    if (v6 == readData)
    {
      v15 = 0;
      v12 = v4 >= 0x10 ? v8 - 4 : v9;
      IOPCIDevice::MemoryRead32(*a1, 0, v12, &v15);
      __dmb(1u);
      if (v15 == v5)
      {
        break;
      }
    }

    v7 = v10;
LABEL_16:
    v4 = (v4 + 1);
    v13 = *(a1 + 1252);
    v8 += 8;
    v9 += 8;
    if (v4 >= v13)
    {
      v10 = v7;
      goto LABEL_21;
    }
  }

  v13 = *(a1 + 1252);
LABEL_21:
  if (v4 < v13)
  {
    ixgbe_set_vmdq(a1);
    goto LABEL_25;
  }

  if (v10 != -1)
  {
    ixgbe_set_rar(a1);
    v4 = v10;
    goto LABEL_25;
  }

  if (v4 != v13)
  {
    if (v4 < *(a1 + 1248))
    {
      goto LABEL_25;
    }

    return 4294967286;
  }

LABEL_19:
  ixgbe_set_rar(a1);
  ++*(a1 + 1252);
  v4 = v13;
LABEL_25:
  if (!v4)
  {
    ixgbe_clear_vmdq(a1);
  }

  return v4;
}

uint64_t ixgbe_clear_vmdq_generic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 1248);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_clear_vmdq_generic", 3760, "ixgbe_clear_vmdq_generic");
  }

  if (v6 <= a2)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): RAR index %d is out of range.\n\n", "ixgbe_clear_vmdq_generic", 3765, a2);
    }

    return 4294967264;
  }

  else
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (8 * a2 + 42496), &readData);
    __dmb(1u);
    v7 = readData;
    v14 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (8 * a2 + 42500), &v14);
    __dmb(1u);
    v8 = v14;
    if (!(v7 | v14))
    {
      return 0;
    }

    if (a3 == -1)
    {
      if (v7)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, (8 * a2 + 42496), 0);
      }

      if (v8)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, (8 * a2 + 42500), 0);
        v8 = 0;
      }

      v7 = 0;
    }

    else
    {
      v9 = 1 << a3;
      if (a3 > 0x1F)
      {
        v8 = v14 & ~v9;
        __dmb(2u);
        v10 = *a1;
        v11 = (8 * a2 + 42500);
        v12 = v8;
      }

      else
      {
        v7 &= ~v9;
        __dmb(2u);
        v10 = *a1;
        v11 = (8 * a2 + 42496);
        v12 = v7;
      }

      IOPCIDevice::MemoryWrite32(v10, 0, v11, v12);
    }

    result = 0;
    if (a2 && !v7 && !v8)
    {
      if (*(a1 + 1272) != a2)
      {
        (*(a1 + 368))(a1, a2);
      }

      return 0;
    }
  }

  return result;
}

uint64_t ixgbe_set_vmdq_generic(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(a1 + 1248);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_vmdq_generic", 3814, "ixgbe_set_vmdq_generic");
  }

  if (v6 <= a2)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): RAR index %d is out of range.\n\n", "ixgbe_set_vmdq_generic", 3819, a2);
    }

    return 4294967264;
  }

  else
  {
    v7 = 8 * a2;
    if (a3 > 0x1F)
    {
      v12 = 0;
      v8 = (v7 + 42500);
      IOPCIDevice::MemoryRead32(*a1, 0, v8, &v12);
      __dmb(1u);
      v9 = v12;
      v10 = 1 << a3;
      __dmb(2u);
    }

    else
    {
      readData = 0;
      v8 = (v7 + 42496);
      IOPCIDevice::MemoryRead32(*a1, 0, v8, &readData);
      __dmb(1u);
      v9 = readData;
      v10 = 1 << a3;
      __dmb(2u);
    }

    IOPCIDevice::MemoryWrite32(*a1, 0, v8, v9 | v10);
    return 0;
  }
}

uint64_t ixgbe_set_vmdq_san_mac_generic(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 1272);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_vmdq_san_mac_generic", 3849, "ixgbe_set_vmdq_san_mac");
  }

  __dmb(2u);
  v5 = *a1;
  v6 = 8 * v4;
  v7 = 8 * v4 + 42496;
  if (a2 > 0x1F)
  {
    IOPCIDevice::MemoryWrite32(v5, 0, v7, 0);
    __dmb(2u);
    v8 = *a1;
    v9 = (v6 + 42500);
    v10 = 1 << a2;
  }

  else
  {
    IOPCIDevice::MemoryWrite32(v5, 0, v7, 1 << a2);
    __dmb(2u);
    v8 = *a1;
    v9 = (v6 + 42500);
    v10 = 0;
  }

  IOPCIDevice::MemoryWrite32(v8, 0, v9, v10);
  return 0;
}

uint64_t ixgbe_init_uta_tables_generic(IOPCIDevice **a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_uta_tables_generic", 3870, "ixgbe_init_uta_tables_generic");
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_uta_tables_generic", 3871, " Clearing UTA\n");
    }
  }

  v2 = 62464;
  v3 = 128;
  do
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v2, 0);
    v2 += 4;
    --v3;
  }

  while (v3);
  return 0;
}

uint64_t ixgbe_find_vlvf_slot(IOPCIDevice **a1, int a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a3)
  {
    LODWORD(v4) = -25;
  }

  else
  {
    LODWORD(v4) = 0;
  }

  v5 = a2 | 0x80000000;
  v6 = 63;
  v7 = 61948;
  do
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, v7, &readData);
    __dmb(1u);
    if (readData == v5)
    {
      return v6;
    }

    if (readData | v4)
    {
      v4 = v4;
    }

    else
    {
      v4 = v6;
    }

    v7 -= 4;
    --v6;
  }

  while (v6);
  if (!v4)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): No space in VLVF.\n\n", "ixgbe_find_vlvf_slot", 3925);
    }

    return 4294967271;
  }

  return v4;
}

uint64_t ixgbe_set_vfta_generic(IOPCIDevice **a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_vfta_generic", 3946, "ixgbe_set_vfta_generic");
  }

  result = 4294967291;
  if (a2 <= 0xFFF && a3 <= 0x3F)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (a2 >> 3) & 0x1FC | 0xA000, &readData);
    __dmb(1u);
    v11 = readData;
    v12 = (readData ^ (a4 << 31 >> 31)) & (1 << a2);
    v15 = v12;
    result = ixgbe_set_vlvf_generic(a1, a2, a3, a4, &v15, v12 ^ readData, a5);
    if (!result || a5 != 0)
    {
      if (v15)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, (a2 >> 3) & 0x1FC | 0xA000, v12 ^ v11);
      }

      return 0;
    }
  }

  return result;
}

uint64_t ixgbe_set_vlvf_generic(IOPCIDevice **a1, unsigned int a2, unsigned int a3, char a4, _DWORD *a5, uint32_t a6, int a7)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_vlvf_generic", 4014, "ixgbe_set_vlvf_generic");
  }

  vlvf_slot = 4294967291;
  if (a2 <= 0xFFF && a3 <= 0x3F)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x51B0uLL, &readData);
    vlvf_slot = 0;
    __dmb(1u);
    if (readData)
    {
      vlvf_slot = ixgbe_find_vlvf_slot(a1, a2, a7);
      if ((vlvf_slot & 0x80000000) == 0)
      {
        v22 = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 4 * ((2 * vlvf_slot) | (a3 >> 5)) + 61952, &v22);
        __dmb(1u);
        v15 = 1 << a3;
        v16 = v22 | (1 << a3);
        if ((a4 & 1) == 0)
        {
          if (v16 == v15)
          {
            v21 = 0;
            IOPCIDevice::MemoryRead32(*a1, 0, 4 * (2 * vlvf_slot - (a3 >> 5)) + 61956, &v21);
            __dmb(1u);
            if (!v21)
            {
              if (*a5)
              {
                __dmb(2u);
                IOPCIDevice::MemoryWrite32(*a1, 0, (a2 >> 3) & 0x1FC | 0xA000, a6);
              }

              __dmb(2u);
              IOPCIDevice::MemoryWrite32(*a1, 0, (4 * vlvf_slot + 61696), 0);
              __dmb(2u);
              v17 = *a1;
              v18 = 4 * ((2 * vlvf_slot) | (a3 >> 5)) + 61952;
              v19 = 0;
              goto LABEL_12;
            }
          }

          v16 ^= v15;
          *a5 = 0;
        }

        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, 4 * ((2 * vlvf_slot) | (a3 >> 5)) + 61952, v16);
        __dmb(2u);
        v17 = *a1;
        v18 = (4 * vlvf_slot + 61696);
        v19 = a2 | 0x80000000;
LABEL_12:
        IOPCIDevice::MemoryWrite32(v17, 0, v18, v19);
        return 0;
      }
    }
  }

  return vlvf_slot;
}

uint64_t ixgbe_clear_vfta_generic(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_clear_vfta_generic", 4093, "ixgbe_clear_vfta_generic");
  }

  if (*(a1 + 1244))
  {
    v2 = 0;
    v3 = 40960;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v3 & 0xFFFFFFFC, 0);
      ++v2;
      v3 += 4;
    }

    while (v2 < *(a1 + 1244));
  }

  v4 = 61696;
  v5 = 61952;
  v6 = 64;
  do
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v4, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v5, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v5 + 4, 0);
    v4 += 4;
    v5 += 8;
    --v6;
  }

  while (v6);
  return 0;
}

uint64_t ixgbe_check_mac_link_generic(uint64_t a1, int *a2, _BYTE *a3, int a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_check_mac_link_generic", 4148, "ixgbe_check_mac_link_generic");
  }

  if (*(a1 + 1955) == 1 && (((*(a1 + 56))(a1) - 1) & 0xFFFFFFFD) == 0)
  {
    v12 = *(a1 + 696);
    if ((v12 - 7) >= 2)
    {
      if (v12 == 2)
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
        __dmb(1u);
        if ((readData & 4) != 0)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
      __dmb(1u);
      if (readData)
      {
        goto LABEL_5;
      }
    }

    v14 = 0;
    *a3 = 0;
    goto LABEL_35;
  }

LABEL_5:
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A4uLL, &readData);
  __dmb(1u);
  v8 = readData;
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A4uLL, &readData);
  __dmb(1u);
  v9 = readData;
  if (v8 != readData && (pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): LINKS changed from %08X to %08X\n\n", "ixgbe_check_mac_link_generic", 4186, v8, readData);
  }

  if (a4)
  {
    if (!*(a1 + 1304))
    {
      goto LABEL_20;
    }

    v10 = 0;
    while ((v9 & 0x40000000) == 0)
    {
      *a3 = 0;
      IODelay(0x186A0uLL);
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x42A4uLL, &readData);
      __dmb(1u);
      v9 = readData;
      if (++v10 >= *(a1 + 1304))
      {
        goto LABEL_20;
      }
    }

    LOBYTE(v11) = 1;
  }

  else
  {
    v11 = (v9 >> 30) & 1;
  }

  *a3 = v11;
LABEL_20:
  v13 = (v9 >> 28) & 3;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = 32;
      goto LABEL_35;
    }

    v15 = *(a1 + 696) < 6 || (v9 & 0x8000000) == 0;
    v14 = 1024;
    v16 = 128;
  }

  else
  {
    if (!v13)
    {
      v14 = 2 * ((*(a1 + 1936) & 0xFFFE) == 5604);
      goto LABEL_35;
    }

    v15 = *(a1 + 696) != 6 || (v9 & 0x8000000) == 0;
    v14 = 2048;
    v16 = 8;
  }

  if (v15)
  {
    v14 = v16;
  }

LABEL_35:
  *a2 = v14;
  return 0;
}

uint64_t ixgbe_get_wwn_prefix_generic(uint64_t a1, _WORD *a2, _WORD *a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_wwn_prefix_generic", 4254, "ixgbe_get_wwn_prefix_generic");
  }

  v9 = 0;
  *a2 = -1;
  *a3 = -1;
  v6 = 39;
  if ((*(a1 + 1728))(a1, 39, &v9))
  {
    goto LABEL_4;
  }

  v6 = v9;
  if ((v9 + 1) >= 2u)
  {
    if ((*(a1 + 1728))(a1, v9, &v9 + 2))
    {
      goto LABEL_4;
    }

    if ((v9 & 0x10000) != 0)
    {
      v8 = v9 + 7;
      if ((*(a1 + 1728))(a1, (v9 + 7), a2) && (pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): eeprom read at offset %d failed\n", "ixgbe_get_wwn_prefix_generic", 4280, v8);
      }

      v6 = v9 + 8;
      if ((*(a1 + 1728))(a1, (v9 + 8), a3))
      {
LABEL_4:
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): eeprom read at offset %d failed\n", "ixgbe_get_wwn_prefix_generic", 4292, v6);
        }
      }
    }
  }

  return 0;
}

uint64_t ixgbe_get_fcoe_boot_status_generic(uint64_t a1, _WORD *a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_fcoe_boot_status_generic", 4308, "ixgbe_get_fcoe_boot_status_generic");
  }

  v5 = 0;
  *a2 = -1;
  v6 = 51;
  result = (*(a1 + 1728))(a1, 51, &v5 + 2);
  if (!result)
  {
    if ((v5 & 0x200000) == 0)
    {
      return 0;
    }

    result = (*(a1 + 1728))(a1, 23, &v6);
    if (!result)
    {
      if ((v6 + 1) < 2u)
      {
        return 0;
      }

      result = (*(a1 + 1728))(a1);
      if (!result)
      {
        *a2 = v5 & 1;
      }
    }
  }

  return result;
}

void ixgbe_set_mac_anti_spoofing(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 696) != 1)
  {
    v12 = v3;
    v13 = v4;
    v5 = a3;
    readData = 0;
    v8 = 4 * (a3 >> 3) + 33280;
    IOPCIDevice::MemoryRead32(*a1, 0, v8, &readData);
    __dmb(1u);
    v9 = 1 << (v5 & 7);
    if (a2)
    {
      v10 = readData | v9;
    }

    else
    {
      v10 = readData & ~v9;
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v8, v10);
  }
}

void ixgbe_set_vlan_anti_spoofing(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 696) != 1)
  {
    v12 = v3;
    v13 = v4;
    if (a3 <= 0)
    {
      v7 = -(-a3 & 7);
    }

    else
    {
      LOBYTE(v7) = a3 & 7;
    }

    v8 = v7 + 8;
    readData = 0;
    v9 = 4 * (a3 >> 3) + 33280;
    IOPCIDevice::MemoryRead32(*a1, 0, v9, &readData);
    __dmb(1u);
    if (a2)
    {
      v10 = readData | (1 << v8);
    }

    else
    {
      v10 = readData & ~(1 << v8);
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v9, v10);
  }
}

uint64_t ixgbe_get_device_caps_generic(uint64_t a1, uint64_t a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_device_caps_generic", 4403, "ixgbe_get_device_caps_generic");
  }

  (*(a1 + 1728))(a1, 44, a2);
  return 0;
}

void ixgbe_enable_relaxed_ordering_gen2(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_enable_relaxed_ordering_gen2", 4420, "ixgbe_enable_relaxed_ordering_gen2");
  }

  if (*(a1 + 1260))
  {
    v2 = 0;
    v3 = 24588;
    do
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v3 & 0xFFFFFFCC, &readData);
      __dmb(1u);
      v4 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v3 & 0xFFFFFFCC, v4 | 0x800);
      ++v2;
      v3 += 64;
    }

    while (v2 < *(a1 + 1260));
  }

  if (*(a1 + 1264))
  {
    v5 = 0;
    v6 = 49164;
    do
    {
      v13 = 0;
      if (v5 <= 0x3F)
      {
        v7 = (v5 << 6) | 0x100C;
      }

      else
      {
        v7 = v6;
      }

      v8 = (4 * v5) | 0x2200;
      if (v5 <= 0xF)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }

      IOPCIDevice::MemoryRead32(*a1, 0, v9, &v13);
      __dmb(1u);
      v10 = v13;
      __dmb(2u);
      if (v5 <= 0x3F)
      {
        v11 = (v5 << 6) | 0x100C;
      }

      else
      {
        v11 = v6;
      }

      if (v5 <= 0xF)
      {
        v12 = v8;
      }

      else
      {
        v12 = v11;
      }

      IOPCIDevice::MemoryWrite32(*a1, 0, v12, v10 | 0xA000);
      ++v5;
      v6 += 64;
    }

    while (v5 < *(a1 + 1264));
  }
}

uint64_t ixgbe_calculate_checksum(unsigned __int8 *a1, unsigned int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_calculate_checksum", 4450, "ixgbe_calculate_checksum");
  }

  v4 = 0;
  if (a1)
  {
    if (a2)
    {
      v5 = a2;
      do
      {
        v6 = *a1++;
        v4 += v6;
        --v5;
      }

      while (v5);
    }

    return -v4;
  }

  return v4;
}

uint64_t ixgbe_hic_unlocked(IOPCIDevice **a1, uint32_t *a2, unsigned int a3, int a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_hic_unlocked", 4481, "ixgbe_hic_unlocked");
  }

  if (a3 - 1793 <= 0xFFFFF8FF)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Buffer length failure buffersize=%d.\n\n");
    }

    return 4294967263;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x15F0CuLL, &readData);
  __dmb(1u);
  v8 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x15F0CuLL, v8 | 0x200);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x15F00uLL, &readData);
  __dmb(1u);
  v9 = readData;
  if ((readData & 1) == 0)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n");
    }

    return 4294967263;
  }

  if ((a3 & 3) != 0)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_hic_unlocked", 4501, "Buffer length failure, not aligned to dword");
    }

    return 4294967264;
  }

  else
  {
    v11 = a3 >> 2;
    v12 = 88064;
    do
    {
      __dmb(2u);
      v13 = *a2++;
      IOPCIDevice::MemoryWrite32(*a1, 0, v12, v13);
      v12 += 4;
      --v11;
    }

    while (v11);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x15F00uLL, v9 | 2);
    if (a4)
    {
      v14 = 0;
      while (1)
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0x15F00uLL, &readData);
        __dmb(1u);
        if ((readData & 2) == 0)
        {
          break;
        }

        IODelay(0x3E8uLL);
        if (a4 == ++v14)
        {
          v14 = a4;
          break;
        }
      }

      if (v14 == a4)
      {
        goto LABEL_24;
      }
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x15F00uLL, &readData);
    result = 0;
    __dmb(1u);
    if ((readData & 4) == 0)
    {
LABEL_24:
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): Command has failed with no status valid.\n\n");
      }

      return 4294967263;
    }
  }

  return result;
}

uint64_t ixgbe_host_interface_command(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_host_interface_command", 4563, "ixgbe_host_interface_command");
  }

  if (a3 - 1793 > 0xFFFFF8FF)
  {
    v10 = (*(a1 + 200))(a1, 1024);
    if (v10)
    {
      return v10;
    }

    v10 = ixgbe_hic_unlocked(a1, a2, a3, a4);
    if (v10 || !a5)
    {
LABEL_24:
      (*(a1 + 208))(a1, 1024);
      return v10;
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x15800uLL, &readData);
    __dmb(1u);
    v11 = readData;
    *a2 = readData;
    if (v11 == 48)
    {
      v12 = 0;
      v13 = 88068;
      do
      {
        v22 = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, v13, &v22);
        __dmb(1u);
        *(a2 + 4 + 4 * v12++) = v22;
        v13 += 4;
      }

      while (v12 != 2);
      v14 = *(a2 + 1) | (((*(a2 + 2) >> 5) & 7) << 8);
      v15 = 12;
      v16 = 3;
      if (!v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = HIBYTE(v11);
      v15 = 4;
      v16 = 1;
      if (!v14)
      {
LABEL_23:
        v10 = 0;
        goto LABEL_24;
      }
    }

    if (v15 + v14 > a3)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_host_interface_command", 4612, "Buffer not large enough for reply message.\n");
      }

      v10 = 4294967263;
      goto LABEL_24;
    }

    if (v16 <= (v14 + 3) >> 2)
    {
      v17 = 4 * v16 + 88064;
      v18 = (a2 + 4 * v16);
      v19 = ((v14 + 3) >> 2) - v16 + 1;
      do
      {
        v21 = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, v17, &v21);
        __dmb(1u);
        *v18++ = v21;
        v17 += 4;
        --v19;
      }

      while (v19);
    }

    goto LABEL_23;
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): Buffer length failure buffersize=%d.\n\n", "ixgbe_host_interface_command", 4566, a3);
  }

  return 4294967263;
}

uint64_t ixgbe_set_fw_drv_ver_generic(uint64_t a1, char a2, char a3, char a4, char a5)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_fw_drv_ver_generic", 4655, "ixgbe_set_fw_drv_ver_generic");
  }

  v13 = *(a1 + 1812);
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  *v12 = 1501;
  v18 = 0;
  v19 = 0;
  v12[3] = ixgbe_calculate_checksum(v12, 9u);
  v10 = 4;
  while (1)
  {
    result = ixgbe_host_interface_command(a1, v12, 0xCu, 500, 1);
    if (!result)
    {
      break;
    }

    if (!--v10)
    {
      return result;
    }
  }

  if (v12[2] == 1)
  {
    return 0;
  }

  else
  {
    return 4294967263;
  }
}

void ixgbe_set_rxpba_generic(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  v4 = a4;
  v7 = *(a1 + 1256) - a3;
  if (a2 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a2;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_14;
    }

    v9 = 5 * v7 / (4 * v8);
    v4 = v8 / 2;
    v7 -= v9 * (v8 / 2);
    if (v8 < 2)
    {
      v4 = 0;
    }

    else
    {
      v10 = v9 << 10;
      v11 = 15360;
      v12 = (v8 / 2);
      do
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, v11, v10);
        v11 += 4;
        --v12;
      }

      while (v12);
    }
  }

  if (v8 > v4)
  {
    v13 = (v7 / (v8 - v4)) << 10;
    v14 = 4 * v4 + 15360;
    v15 = v8 - v4;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v14, v13);
      v14 += 4;
      --v15;
    }

    while (v15);
  }

LABEL_14:
  if (v8 < 1)
  {
    LODWORD(v8) = 0;
LABEL_20:
    v19 = 4 * v8 + 52224;
    v20 = 4 * v8 + 18768;
    v21 = v8 - 8;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v19 - 36864, 0);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v19, 0);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v20, 0);
      v19 += 4;
      v20 += 4;
    }

    while (!__CFADD__(v21++, 1));
    return;
  }

  v16 = 52224;
  v17 = 18768;
  v18 = v8;
  do
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v16, 163840 / v8);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v17, ((163840 / v8) >> 10) - 10);
    v16 += 4;
    v17 += 4;
    --v18;
  }

  while (v18);
  if (a2 <= 7)
  {
    goto LABEL_20;
  }
}

void ixgbe_clear_tx_pending(uint64_t a1)
{
  if (*(a1 + 1285))
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x4240uLL, &readData);
    __dmb(1u);
    v2 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x4240uLL, v2 | 0x8000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(0xBB8uLL);
    v3 = ixgbe_pcie_timeout_poll(a1) - 1;
    do
    {
      v4 = v3;
      IODelay(0x64uLL);
      LOWORD(readData) = 0;
      IOPCIDevice::ConfigurationRead16(*a1, 0xAAuLL, &readData);
      if ((readData & 0x20) == 0)
      {
        break;
      }

      v3 = v4 - 1;
    }

    while (v4);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x11050uLL, &readData);
    __dmb(1u);
    v5 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x11050uLL, v5 | 0x40000000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(0x14uLL);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x11050uLL, v5);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x4240uLL, v2);
  }
}

uint64_t ixgbe_bypass_rw_generic(uint64_t a1, int a2, _DWORD *a3)
{
  if (!a3)
  {
    return 4294967291;
  }

  *a3 = 0;
  v6 = *(a1 + 696);
  if (v6 == 2)
  {
    v7 = 128;
    v8 = 64;
    v9 = 33024;
    v10 = -16385;
  }

  else
  {
    if (v6 != 4)
    {
      return 4294967285;
    }

    v7 = 4;
    v8 = 2;
    v9 = 1280;
    v10 = -513;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
  __dmb(1u);
  v12 = (v9 | readData) & v10 | v7;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v12 | 1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(0x3E8uLL);
  v12 &= ~1u;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v12);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(0x3E8uLL);
  v13 = v12 & ~v7;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v13);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(0x3E8uLL);
  for (i = 0; i != 32; ++i)
  {
    __dmb(2u);
    v15 = v13 & 0xFFFFFFFE | ((a2 << i) >> 31);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v15);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(0x3E8uLL);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v15 | v7);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(0x3E8uLL);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v15 & ~v7);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(0x3E8uLL);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
    __dmb(1u);
    v13 = readData;
    *a3 = ((readData & v8) != 0) | (2 * *a3);
    IODelay(0x3E8uLL);
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v13 & 0xFFFFFFFE | v7);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(0x3E8uLL);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v13 & 0xFFFFFFFE | v7 | 1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  result = 0;
  __dmb(1u);
  *a3 = a2 & 0xC0000000 | *a3 & 0x3FFFFFFF;
  return result;
}

BOOL ixgbe_bypass_valid_rd_generic(int a1, int a2)
{
  v2 = a1 & 0xC0000000;
  if (v2 != (a2 & 0xC0000000))
  {
    return 0;
  }

  if (v2 == 0x40000000)
  {
    return ((a2 ^ a1) & 0x3FFFFFF) == 0;
  }

  if (v2 || (a2 & 0xC) != 0 && ((a2 ^ a1) & 0x73FF0) == 0)
  {
    return 1;
  }

  return v2;
}

uint64_t ixgbe_bypass_set_generic(uint64_t a1, int a2, int a3, int a4)
{
  v11 = 0;
  if (ixgbe_bypass_rw_generic(a1, a2, &v11))
  {
    return 4294967264;
  }

  v7 = v11 & ~a3 | a4;
  if (ixgbe_bypass_rw_generic(a1, v7 | 0x20000000, &v11))
  {
    return 4294967264;
  }

  if (v7 >> 30)
  {
    IODelay(0x186A0uLL);
    return 0;
  }

  else
  {
    v9 = 7;
    while (--v9)
    {
      if (ixgbe_bypass_rw_generic(a1, 0, &v11))
      {
        return 4294967264;
      }

      valid = ixgbe_bypass_valid_rd_generic(v7 | 0x20000000, v11);
      result = 0;
      if (valid)
      {
        return result;
      }
    }

    return 4294967261;
  }
}

uint64_t ixgbe_bypass_rd_eep_generic(uint64_t a1, unsigned __int8 a2, _BYTE *a3)
{
  v7 = 0;
  if (ixgbe_bypass_rw_generic(a1, (a2 << 8) | 0xA0000000, &v7))
  {
    return 4294967264;
  }

  IODelay(0x186A0uLL);
  result = ixgbe_bypass_rw_generic(a1, (a2 << 8) | 0x80000000, &v7);
  if (result)
  {
    return 4294967264;
  }

  *a3 = v7;
  return result;
}

uint64_t ixgbe_get_orom_version(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = 0;
  *(a2 + 14) = 0;
  result = (*(a1 + 1728))(a1, 23, &v9 + 2);
  if ((HIWORD(v9) + 1) >= 2u)
  {
    (*(a1 + 1728))(a1, (HIWORD(v9) + 132), &v9);
    result = (*(a1 + 1728))(a1, (HIWORD(v9) + 131), &v8);
    v5 = v9;
    if (v9 != 0xFFFF)
    {
      v6 = v8;
      if (v8 != 0xFFFF)
      {
        if (v9 | v8)
        {
          *(a2 + 14) = 1;
          *(a2 + 15) = BYTE1(v6);
          HIDWORD(v7) = v6;
          LODWORD(v7) = v5 << 16;
          *(a2 + 16) = v7 >> 24;
          *(a2 + 18) = v5;
        }
      }
    }
  }

  return result;
}

uint64_t ixgbe_get_oem_prod_version(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  *(a2 + 9) = 0;
  result = (*(a1 + 1728))(a1, 27, &v7);
  if ((v7 + 1) >= 2u)
  {
    (*(a1 + 1728))(a1);
    result = (*(a1 + 1728))(a1, (v7 + 1), &v8);
    if (HIWORD(v8) == 3 && (v8 & 0xF) == 0)
    {
      (*(a1 + 1728))(a1, (v7 + 2), &v9);
      result = (*(a1 + 1728))(a1, (v7 + 3), &v9 + 2);
      v5 = v9;
      if (v9 != 0xFFFF)
      {
        v6 = HIWORD(v9);
        if (HIWORD(v9) != 0xFFFF)
        {
          if (v9 | HIWORD(v9))
          {
            *(a2 + 10) = BYTE1(v9);
            *(a2 + 11) = v5;
            *(a2 + 12) = v6;
            *(a2 + 9) = 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t ixgbe_get_etk_id(uint64_t a1, int *a2)
{
  v7 = 0;
  if ((*(a1 + 1728))(a1, 45, &v7 + 2))
  {
    HIWORD(v7) = -1;
  }

  result = (*(a1 + 1728))(a1, 46, &v7);
  if (result)
  {
    v5 = -1;
  }

  else
  {
    v5 = v7;
    if ((v7 & 0x80000000) == 0)
    {
      v6 = HIWORD(v7);
      goto LABEL_8;
    }
  }

  v6 = v5;
  v5 = HIWORD(v7);
LABEL_8:
  *a2 = v5 | (v6 << 16);
  return result;
}

int8x8_t ixgbe_dcb_get_rtrup2tc_generic(IOPCIDevice **a1, int8x8_t *a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x3020uLL, &readData);
  __dmb(1u);
  v3 = vld1q_dup_f32(&readData);
  result = vand_s8(vmovn_s16(vuzp1q_s16(vshlq_u32(v3, xmmword_100030220), vshlq_u32(v3, xmmword_100030210))), 0x707070707070707);
  *a2 = result;
  return result;
}

uint64_t ixgbe_mng_present(uint64_t a1)
{
  if (*(a1 + 696) < 2)
  {
    return 0;
  }

  v5 = v1;
  v6 = v2;
  v4 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 28), &v4);
  __dmb(1u);
  return (v4 >> 2) & 1;
}

BOOL ixgbe_mng_enabled(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 28), &readData);
  __dmb(1u);
  result = 0;
  if ((readData & 0xE) == 4)
  {
    v4 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x5820uLL, &v4);
    __dmb(1u);
    if ((v4 & 0x20000) != 0)
    {
      if (*(a1 + 696) > 4)
      {
        return 1;
      }

      v3 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 16), &v3);
      __dmb(1u);
      if ((v3 & 0x20000000) == 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t ixgbe_setup_mac_link_multispeed_fiber(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_mac_link_multispeed_fiber", 5292, "ixgbe_setup_mac_link_multispeed_fiber");
  }

  result = ixgbe_get_link_capabilities(a1);
  if (!result)
  {
    result = 0;
    *(a1 + 1652) = 0;
  }

  return result;
}

uint64_t ixgbe_set_soft_rate_select_speed(uint64_t result, int a2)
{
  v2 = result;
  if (a2 == 128)
  {
    v3 = 8;
LABEL_5:
    v4 = 0;
    result = (*(result + 1520))(result, 110, 162, &v4);
    if (result)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        return IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_soft_rate_select_speed", 5451, "Failed to read Rx Rate Select RS0\n");
      }
    }

    else
    {
      v4 = v4 & 0xF7 | v3;
      result = (*(v2 + 1528))(v2, 110, 162, v4);
      if (result)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          return IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_soft_rate_select_speed", 5461, "Failed to write Rx Rate Select RS0\n");
        }
      }

      else
      {
        result = (*(v2 + 1520))(v2, 118, 162, &v4);
        if (result)
        {
          if ((pcindkll & 0x100000) != 0)
          {
            return IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_soft_rate_select_speed", 5470, "Failed to read Rx Rate Select RS1\n");
          }
        }

        else
        {
          v4 = v4 & 0xF7 | v3;
          result = (*(v2 + 1528))(v2, 118, 162, v4);
          if (result && (pcindkll & 0x100000) != 0)
          {
            return IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_soft_rate_select_speed", 5480, "Failed to write Rx Rate Select RS1\n");
          }
        }
      }
    }

    return result;
  }

  if (a2 == 32)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if ((pcindkll & 0x100000) != 0)
  {
    return IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_soft_rate_select_speed", 5442, "Invalid fixed module speed\n");
  }

  return result;
}

uint64_t ixgbe_acquire_eeprom(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_acquire_eeprom", 1791, "ixgbe_acquire_eeprom");
  }

  if ((*(a1 + 200))(a1, 1))
  {
    return 4294967280;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, **(a1 + 1928), &readData);
  __dmb(1u);
  v3 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, **(a1 + 1928), v3 | 0x40);
  v4 = 1000;
  do
  {
    v7 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, **(a1 + 1928), &v7);
    __dmb(1u);
    v5 = v7;
    if ((v7 & 0x80) != 0)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, **(a1 + 1928), v5 & 0xFFFFFFFC);
      v6 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v6);
      __dmb(1u);
      IODelay(1uLL);
      return 0;
    }

    IODelay(5uLL);
    --v4;
  }

  while (v4);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, **(a1 + 1928), v5 & 0xFFFFFF3F);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_acquire_eeprom", 1815, "Could not acquire EEPROM grant\n");
  }

  (*(a1 + 208))(a1, 1);
  return 0xFFFFFFFFLL;
}

uint64_t ixgbe_ready_eeprom(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_ready_eeprom", 1954, "ixgbe_ready_eeprom");
  }

  v2 = -5;
  do
  {
    ixgbe_shift_out_eeprom_bits(a1, 5, 8);
    if ((ixgbe_shift_in_eeprom_bits(a1, 8) & 1) == 0)
    {
      return 0;
    }

    IODelay(5uLL);
    ixgbe_standby_eeprom(a1);
    v2 += 5;
  }

  while (v2 < 0x1383);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_ready_eeprom", 1978, "SPI EEPROM Status error\n");
  }

  return 0xFFFFFFFFLL;
}

void ixgbe_release_eeprom(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_release_eeprom", 2151, "ixgbe_release_eeprom");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, **(a1 + 1928), &readData);
  __dmb(1u);
  v2 = readData & 0xFFFFFFFC | 2;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, **(a1 + 1928), v2);
  v3 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v3);
  __dmb(1u);
  IODelay(1uLL);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, **(a1 + 1928), v2 & 0xFFFFFFBF);
  (*(a1 + 208))(a1, 1);
  IODelay((1000 * *(a1 + 1788)));
}

void ixgbe_standby_eeprom(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_standby_eeprom", 1993, "ixgbe_standby_eeprom");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, **(a1 + 1928), &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, **(a1 + 1928), v2 | 2);
  v4 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v4);
  __dmb(1u);
  IODelay(1uLL);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, **(a1 + 1928), v2 & 0xFFFFFFFD);
  v3 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v3);
  __dmb(1u);
  IODelay(1uLL);
}

void ixgbe_shift_out_eeprom_bits(uint64_t a1, int a2, int a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_shift_out_eeprom_bits", 2021, "ixgbe_shift_out_eeprom_bits");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, **(a1 + 1928), &readData);
  __dmb(1u);
  v6 = readData;
  if (a3)
  {
    v7 = 1 << (a3 - 1);
    do
    {
      v8 = readData & 0xFFFFFFFB | (4 * ((v7 & a2) != 0));
      readData = v8;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, **(a1 + 1928), v8);
      v9 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v9);
      __dmb(1u);
      IODelay(1uLL);
      ixgbe_raise_eeprom_clk(a1, &readData);
      ixgbe_lower_eeprom_clk(a1, &readData);
      v7 >>= 1;
      --a3;
    }

    while (a3);
    v6 = readData;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, **(a1 + 1928), v6 & 0xFFFFFFFB);
  v9 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v9);
  __dmb(1u);
}

uint64_t ixgbe_shift_in_eeprom_bits(uint64_t a1, int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_shift_in_eeprom_bits", 2076, "ixgbe_shift_in_eeprom_bits");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, **(a1 + 1928), &readData);
  __dmb(1u);
  v8 = readData & 0xFFFFFFF3;
  for (i = 0; a2; --a2)
  {
    ixgbe_raise_eeprom_clk(a1, &v8);
    v6 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, **(a1 + 1928), &v6);
    __dmb(1u);
    v8 = v6 & 0xFFFFFFFB;
    i = (2 * i) | (v6 >> 3) & 1;
    ixgbe_lower_eeprom_clk(a1, &v8);
  }

  return i;
}

void ixgbe_raise_eeprom_clk(uint64_t a1, uint32_t *a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_raise_eeprom_clk", 2112, "ixgbe_raise_eeprom_clk");
  }

  *a2 |= 1u;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, **(a1 + 1928), *a2);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(1uLL);
}

void ixgbe_lower_eeprom_clk(uint64_t a1, uint32_t *a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_lower_eeprom_clk", 2131, "ixgbe_lower_eeprom_clk");
  }

  *a2 &= ~1u;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, **(a1 + 1928), *a2);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(1uLL);
}

uint64_t ixgbe_init_mac_link_ops_82599(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_mac_link_ops_82599", 31, "ixgbe_init_mac_link_ops_82599");
  }

  if ((*(a1 + 56))(a1) == 1 && !ixgbe_mng_enabled(a1))
  {
    *(a1 + 240) = ixgbe_disable_tx_laser_multispeed_fiber;
    *(a1 + 248) = ixgbe_enable_tx_laser_multispeed_fiber;
    *(a1 + 256) = ixgbe_flap_tx_laser_multispeed_fiber;
  }

  else
  {
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
  }

  if (*(a1 + 1673) == 1)
  {
    *(a1 + 264) = ixgbe_setup_mac_link_multispeed_fiber;
    *(a1 + 272) = ixgbe_setup_mac_link_82599;
    *(a1 + 296) = ixgbe_set_hard_rate_select_speed;
    result = ixgbe_get_media_type(a1);
    if (result == 2)
    {
      *(a1 + 296) = ixgbe_set_soft_rate_select_speed;
    }
  }

  else
  {
    result = ixgbe_get_media_type(a1);
    if (result == 5 && *(a1 + 1668) <= 1u && (result = ixgbe_verify_lesm_fw_enabled_82599(a1), (result & 1) == 0))
    {
      v3 = ixgbe_setup_mac_link_smartspeed;
    }

    else
    {
      v3 = ixgbe_setup_mac_link_82599;
    }

    *(a1 + 264) = v3;
  }

  return result;
}

void ixgbe_disable_tx_laser_multispeed_fiber(IOPCIDevice **a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
  __dmb(1u);
  v2 = readData;
  if (!ixgbe_check_reset_blocked(a1))
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v2 | 8);
    v3 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v3);
    __dmb(1u);
    IODelay(0x64uLL);
  }
}

void ixgbe_enable_tx_laser_multispeed_fiber(IOPCIDevice **a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v2 & 0xFFFFFFF7);
  v3 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v3);
  __dmb(1u);
  IODelay(0x186A0uLL);
}

void ixgbe_flap_tx_laser_multispeed_fiber(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_flap_tx_laser_multispeed_fiber", 693, "ixgbe_flap_tx_laser_multispeed_fiber");
  }

  if (!ixgbe_check_reset_blocked(a1) && *(a1 + 1284) == 1)
  {
    ixgbe_disable_tx_laser_multispeed_fiber(a1);
    ixgbe_enable_tx_laser_multispeed_fiber(a1);
    *(a1 + 1284) = 0;
  }
}

uint64_t ixgbe_setup_mac_link_82599(uint64_t a1, int a2, int a3)
{
  v23 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
  __dmb(1u);
  v6 = readData;
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A8uLL, &readData);
  __dmb(1u);
  v7 = readData;
  readData = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_mac_link_82599", 871, "ixgbe_setup_mac_link_82599");
  }

  link_capabilities = ixgbe_get_link_capabilities(a1);
  if (link_capabilities)
  {
    return link_capabilities;
  }

  v11 = readData & a2;
  if ((readData & a2) == 0)
  {
    return 4294967288;
  }

  v12 = v6;
  if (*(a1 + 1283) == 1)
  {
    v12 = *(a1 + 1268);
  }

  v13 = v6 & 0xE000;
  v14 = (v6 & 0xA000) == 0x8000 || v13 == 57344;
  v15 = v14;
  if (v14)
  {
    v16 = v6 & 0x3FFEFFFF;
    if ((v11 & 0x80) != 0)
    {
      v16 |= v12 & 0x80000000;
      if ((v12 & 0x10000) != 0 && !*(a1 + 1672))
      {
        v16 |= 0x10000u;
      }
    }

    v17 = v16 | (v11 << 25) & 0x40000000;
  }

  else
  {
    v18 = v7 & 0x30000;
    if ((v6 & 0xA200) != 0)
    {
      v9 = 0;
      if (v13 != 24576 || v18 != 0x20000 || (v6 & 0x200) != 0 || v11 != 32)
      {
        return v9;
      }

      v17 = v6 & 0xFFFF1DFF;
      if ((v23 & 1) != 0 || *(a1 + 1616) == 23)
      {
        v17 = v17 | 0x4000;
      }
    }

    else if (v18 == 0x20000 && v11 == 128)
    {
      v17 = v6 | 0x6000;
    }

    else
    {
      v17 = v6;
    }
  }

  if (v17 == v6)
  {
    return 0;
  }

  link_capabilities = (*(a1 + 232))(a1, v17, 0);
  if (link_capabilities)
  {
    return link_capabilities;
  }

  if ((v15 & a3) == 1)
  {
    v20 = 45;
    while (1)
    {
      v21 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x42A4uLL, &v21);
      __dmb(1u);
      if ((v21 & 0x80000000) != 0)
      {
        break;
      }

      IODelay(0x186A0uLL);
      if (!--v20)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_mac_link_82599", 952, "Autoneg did not complete.\n");
        }

        v9 = 4294967282;
        goto LABEL_48;
      }
    }
  }

  v9 = 0;
LABEL_48:
  IODelay(0xC350uLL);
  return v9;
}

void ixgbe_set_hard_rate_select_speed(IOPCIDevice **a1, int a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
  __dmb(1u);
  if (a2 == 32)
  {
    v4 = readData & 0xFFFFDFDF | 0x2000;
    goto LABEL_5;
  }

  if (a2 == 128)
  {
    v4 = readData | 0x2020;
LABEL_5:
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v4);
    v5 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v5);
    __dmb(1u);
    return;
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_hard_rate_select_speed", 727, "Invalid fixed module speed\n");
  }
}

uint64_t ixgbe_verify_lesm_fw_enabled_82599(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_verify_lesm_fw_enabled_82599", 2342, "ixgbe_verify_lesm_fw_enabled_82599");
  }

  v5 = 0;
  if ((*(a1 + 1728))(a1, 15, &v5 + 2))
  {
    v2 = 0;
  }

  else
  {
    v2 = (HIWORD(v5) + 1) >= 2u;
  }

  if (!v2)
  {
    return 0;
  }

  if ((*(a1 + 1728))(a1, (HIWORD(v5) + 2), &v5) || (v5 + 1) < 2u)
  {
    return 0;
  }

  (*(a1 + 1728))(a1);
  return 0;
}

uint64_t ixgbe_setup_mac_link_smartspeed(uint64_t a1, int a2, int a3)
{
  v15 = 0;
  v14 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
  __dmb(1u);
  v6 = readData;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_mac_link_smartspeed", 753, "ixgbe_setup_mac_link_smartspeed");
  }

  v7 = 0;
  *(a1 + 1652) = a2 & 0xA8;
  *(a1 + 1672) = 0;
LABEL_4:
  v8 = ixgbe_setup_mac_link_82599(a1, a2, a3);
  if (!v8)
  {
    v9 = 5;
    while (1)
    {
      IODelay(0x186A0uLL);
      v8 = ixgbe_check_link(a1);
      if (v8)
      {
        break;
      }

      if (v14)
      {
LABEL_19:
        v10 = 0;
        goto LABEL_20;
      }

      if (!--v9)
      {
        if (++v7 != 3)
        {
          goto LABEL_4;
        }

        v10 = 0;
        if (v6 >> 30 && (v6 & 0x10000) != 0)
        {
          *(a1 + 1672) = 1;
          v8 = ixgbe_setup_mac_link_82599(a1, a2, a3);
          if (!v8)
          {
            v11 = 6;
            while (1)
            {
              IODelay(0x186A0uLL);
              v8 = ixgbe_check_link(a1);
              if (v8)
              {
                break;
              }

              if (v14)
              {
                goto LABEL_19;
              }

              if (!--v11)
              {
                *(a1 + 1672) = 0;
                v8 = ixgbe_setup_mac_link_82599(a1, a2, a3);
                goto LABEL_13;
              }
            }
          }

          break;
        }

        goto LABEL_20;
      }
    }
  }

LABEL_13:
  v10 = v8;
LABEL_20:
  if (v14 == 1 && v15 == 32 && (pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_mac_link_smartspeed", 843, "Smartspeed has downgraded the link speed from the maximum advertised\n");
  }

  return v10;
}

uint64_t ixgbe_init_phy_ops_82599(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_phy_ops_82599", 88, "ixgbe_init_phy_ops_82599");
  }

  if (*(a1 + 1936) == 5464)
  {
    *(a1 + 1675) = 1;
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
    __dmb(1u);
    v2 = readData & 0xFFFCFCFE;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v2 | 0x100);
    v5 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v5);
    __dmb(1u);
    *(a1 + 1520) = ixgbe_read_i2c_byte_82599;
    *(a1 + 1528) = ixgbe_write_i2c_byte_82599;
  }

  v3 = (*(a1 + 1416))(a1);
  if (v3 != -19)
  {
    ixgbe_init_mac_link_ops_82599(a1);
    if (*(a1 + 1628) != 0xFFFF)
    {
      *(a1 + 1440) = 0;
    }

    if ((*(a1 + 56))(a1) == 4)
    {
      *(a1 + 264) = ixgbe_setup_copper_link_82599;
      *(a1 + 288) = ixgbe_get_copper_link_capabilities_generic;
    }

    if (*(a1 + 1616) == 2)
    {
      *(a1 + 1480) = ixgbe_setup_phy_link_tnx;
      *(a1 + 1504) = ixgbe_check_phy_link_tnx;
      *(a1 + 1512) = ixgbe_get_phy_firmware_version_tnx;
    }
  }

  return v3;
}

uint64_t ixgbe_read_i2c_byte_82599(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_i2c_byte_82599", 2507, "ixgbe_read_i2c_byte_82599");
  }

  if (*(a1 + 1675) == 1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
    __dmb(1u);
    v8 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v8 | 1);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
    __dmb(1u);
    v9 = -200;
    while (1)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
      __dmb(1u);
      if ((readData & 2) != 0)
      {
        break;
      }

      IODelay(0x1388uLL);
      if (__CFADD__(v9++, 1))
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_i2c_byte_82599", 2527, "Driver can't access resource, acquiring I2C bus timeout.\n");
        }

        i2c_byte_generic = 4294967278;
        goto LABEL_12;
      }
    }
  }

  i2c_byte_generic = ixgbe_read_i2c_byte_generic(a1, a2, a3, a4);
LABEL_12:
  if (*(a1 + 1675) == 1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
    __dmb(1u);
    v12 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v12 & 0xFFFFFFFE);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
    __dmb(1u);
  }

  return i2c_byte_generic;
}

uint64_t ixgbe_write_i2c_byte_82599(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_i2c_byte_82599", 2565, "ixgbe_write_i2c_byte_82599");
  }

  if (*(a1 + 1675) == 1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
    __dmb(1u);
    v8 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v8 | 1);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
    __dmb(1u);
    v9 = -200;
    while (1)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
      __dmb(1u);
      if ((readData & 2) != 0)
      {
        break;
      }

      IODelay(0x1388uLL);
      if (__CFADD__(v9++, 1))
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_i2c_byte_82599", 2585, "Driver can't access resource, acquiring I2C bus timeout.\n");
        }

        v11 = 4294967278;
        goto LABEL_12;
      }
    }
  }

  v11 = ixgbe_write_i2c_byte_generic(a1, a2, a3, a4);
LABEL_12:
  if (*(a1 + 1675) == 1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x20uLL, &readData);
    __dmb(1u);
    v12 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x20uLL, v12 & 0xFFFFFFFE);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
    __dmb(1u);
  }

  return v11;
}

uint64_t ixgbe_setup_copper_link_82599(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_copper_link_82599", 979, "ixgbe_setup_copper_link_82599");
  }

  v6 = (*(a1 + 1496))(a1, a2, a3);
  ixgbe_start_mac_link_82599(a1, a3);
  return v6;
}

uint64_t ixgbe_setup_sfp_modules_82599(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_sfp_modules_82599", 144, "ixgbe_setup_sfp_modules_82599");
  }

  if (*(a1 + 1628) == 0xFFFF)
  {
    return 0;
  }

  v6 = 0;
  v5 = 0;
  ixgbe_init_mac_link_ops_82599(a1);
  *(a1 + 1440) = 0;
  result = ixgbe_get_sfp_init_sequence_offsets(a1, &v6 + 1, &v6);
  if (!result)
  {
    if ((*(a1 + 200))(a1, 8))
    {
      return 4294967280;
    }

    else
    {
      while (1)
      {
        v3 = *(a1 + 1728);
        LOWORD(v6) = v6 + 1;
        if (v3(a1, v6, &v5))
        {
          (*(a1 + 208))(a1, 8);
          IODelay((1000 * *(a1 + 1788)));
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): eeprom read at offset %d failed\n", "ixgbe_setup_sfp_modules_82599", 202, v6);
          }

          return 4294967293;
        }

        if (v5 == -1)
        {
          break;
        }

        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, 0x14F00uLL, v5);
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
        __dmb(1u);
      }

      (*(a1 + 208))(a1, 8);
      IODelay((1000 * *(a1 + 1788)));
      result = (*(a1 + 232))(a1, *(a1 + 1268) | 0x6000u, 0);
      if (result)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_sfp_modules_82599", 186, "sfp module setup not complete\n");
        }

        return 4294967266;
      }
    }
  }

  return result;
}

uint64_t prot_autoc_read_82599(uint64_t a1, _BYTE *a2, uint32_t *a3)
{
  *a2 = 0;
  if (ixgbe_verify_lesm_fw_enabled_82599(a1))
  {
    if ((*(a1 + 200))(a1, 8))
    {
      return 4294967280;
    }

    *a2 = 1;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
  result = 0;
  __dmb(1u);
  *a3 = readData;
  return result;
}

uint64_t prot_autoc_write_82599(uint64_t a1, uint32_t a2, int a3)
{
  if (ixgbe_check_reset_blocked(a1))
  {
    v6 = 0;
    if (!a3)
    {
      return v6;
    }

    goto LABEL_11;
  }

  if (a3)
  {
LABEL_5:
    v7 = 1;
    goto LABEL_10;
  }

  if (ixgbe_verify_lesm_fw_enabled_82599(a1))
  {
    if ((*(a1 + 200))(a1, 8))
    {
      return 4294967280;
    }

    goto LABEL_5;
  }

  v7 = 0;
LABEL_10:
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x42A0uLL, a2);
  v6 = ixgbe_reset_pipeline_82599(a1);
  if (v7)
  {
LABEL_11:
    (*(a1 + 208))(a1, 8);
  }

  return v6;
}

uint64_t ixgbe_reset_pipeline_82599(IOPCIDevice **a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A8uLL, &readData);
  __dmb(1u);
  v2 = readData;
  if ((readData & 0x70000000) != 0)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x42A8uLL, v2 & 0x8FFFFFFF);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
    __dmb(1u);
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
  __dmb(1u);
  v3 = readData | 0x1000;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x42A0uLL, v3 ^ 0x8000);
  v4 = 10;
  do
  {
    IODelay(0xFA0uLL);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x42B0uLL, &readData);
    __dmb(1u);
    if ((readData & 0xF0000) != 0)
    {
      v5 = 0;
      goto LABEL_10;
    }

    --v4;
  }

  while (v4);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_pipeline_82599", 2475, "auto negotiation not completed\n");
  }

  v5 = 4294967281;
LABEL_10:
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x42A0uLL, v3);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  return v5;
}

uint64_t ixgbe_init_ops_82599(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_ops_82599", 294, "ixgbe_init_ops_82599");
  }

  ixgbe_init_phy_ops_generic(a1);
  inited = ixgbe_init_ops_generic(a1);
  *(a1 + 1416) = ixgbe_identify_phy_82599;
  *(a1 + 1432) = ixgbe_init_phy_ops_82599;
  *(a1 + 24) = ixgbe_reset_hw_82599;
  *(a1 + 48) = ixgbe_enable_relaxed_ordering_gen2;
  *(a1 + 56) = ixgbe_get_media_type_82599;
  *(a1 + 64) = ixgbe_get_supported_physical_layer_82599;
  *(a1 + 184) = ixgbe_disable_sec_rx_path_generic;
  *(a1 + 192) = ixgbe_enable_sec_rx_path_generic;
  *(a1 + 176) = ixgbe_enable_rx_dma_82599;
  *(a1 + 152) = ixgbe_read_analog_reg8_82599;
  *(a1 + 160) = ixgbe_write_analog_reg8_82599;
  *(a1 + 32) = ixgbe_start_hw_82599;
  *(a1 + 80) = ixgbe_get_san_mac_addr_generic;
  *(a1 + 88) = ixgbe_set_san_mac_addr_generic;
  *(a1 + 96) = ixgbe_get_device_caps_generic;
  *(a1 + 104) = ixgbe_get_wwn_prefix_generic;
  *(a1 + 112) = ixgbe_get_fcoe_boot_status_generic;
  *(a1 + 224) = prot_autoc_read_82599;
  *(a1 + 232) = prot_autoc_write_82599;
  *(a1 + 384) = ixgbe_set_vmdq_generic;
  *(a1 + 392) = ixgbe_set_vmdq_san_mac_generic;
  *(a1 + 400) = ixgbe_clear_vmdq_generic;
  *(a1 + 376) = ixgbe_insert_mac_addr_generic;
  *(a1 + 1252) = 1;
  *(a1 + 464) = ixgbe_set_vfta_generic;
  *(a1 + 472) = ixgbe_set_vlvf_generic;
  *(a1 + 456) = ixgbe_clear_vfta_generic;
  *(a1 + 488) = ixgbe_init_uta_tables_generic;
  *(a1 + 168) = ixgbe_setup_sfp_modules_82599;
  *(a1 + 496) = ixgbe_set_mac_anti_spoofing;
  *(a1 + 504) = ixgbe_set_vlan_anti_spoofing;
  *(a1 + 288) = ixgbe_get_link_capabilities_82599;
  *(a1 + 280) = ixgbe_check_mac_link_generic;
  *(a1 + 304) = ixgbe_set_rxpba_generic;
  ixgbe_init_mac_link_ops_82599(a1);
  *(a1 + 1240) = 0x8000000080;
  *(a1 + 1248) = 128;
  *(a1 + 1264) = 128;
  *(a1 + 1256) = 0x8000000200;
  *(a1 + 1280) = ixgbe_get_pcie_msix_count_generic(a1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 28), &readData);
  __dmb(1u);
  *(a1 + 1282) = (readData & 0xE) != 0;
  *(a1 + 1824) = ixgbe_init_mbx_params_pf;
  *(a1 + 1728) = ixgbe_read_eeprom_82599;
  *(a1 + 1736) = ixgbe_read_eeprom_buffer_82599;
  *(a1 + 536) = ixgbe_set_fw_drv_ver_generic;
  *(a1 + 544) = ixgbe_bypass_rw_generic;
  *(a1 + 552) = ixgbe_bypass_valid_rd_generic;
  *(a1 + 560) = ixgbe_bypass_set_generic;
  *(a1 + 568) = ixgbe_bypass_rd_eep_generic;
  *(a1 + 576) = ixgbe_dcb_get_rtrup2tc_generic;
  return inited;
}

uint64_t ixgbe_identify_phy_82599(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_identify_phy_82599", 2122, "ixgbe_identify_phy_82599");
  }

  v2 = ixgbe_identify_phy_generic(a1);
  if (v2)
  {
    if ((*(a1 + 56))(a1) == 4)
    {
      return v2;
    }

    v2 = ixgbe_identify_module_generic(a1);
  }

  v3 = *(a1 + 1616);
  if (v3 == 25)
  {
    return 4294967277;
  }

  if (!v3)
  {
    v2 = 0;
    *(a1 + 1616) = 1;
  }

  return v2;
}

uint64_t ixgbe_reset_hw_82599(uint64_t a1)
{
  v17 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_hw_82599", 1007, "ixgbe_reset_hw_82599");
  }

  v2 = (*(a1 + 120))(a1);
  if (v2)
  {
    return v2;
  }

  ixgbe_clear_tx_pending(a1);
  v3 = (*(a1 + 1432))(a1);
  if (v3 != -19)
  {
    if (*(a1 + 1632) != 1 || (v3 = (*(a1 + 168))(a1), *(a1 + 1632) = 0, v3 != -19))
    {
      if ((*(a1 + 1648) & 1) == 0)
      {
        v4 = *(a1 + 1440);
        if (v4)
        {
          v4(a1);
        }
      }

      v18 = 0;
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
      __dmb(1u);
      v15 = readData;
      while (1)
      {
        if (*(a1 + 1952))
        {
          v5 = 8;
        }

        else
        {
          (*(a1 + 280))(a1, &v18, &v17, 0);
          if (v17)
          {
            v5 = 0x4000000;
          }

          else
          {
            v5 = 8;
          }
        }

        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0, &readData);
        __dmb(1u);
        v6 = readData;
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, 0, v6 | v5);
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
        v7 = 0;
        __dmb(1u);
        do
        {
          IODelay(1uLL);
          readData = 0;
          IOPCIDevice::MemoryRead32(*a1, 0, 0, &readData);
          __dmb(1u);
        }

        while ((readData & 0x4000008) != 0 && v7++ < 9);
        if ((readData & 0x4000008) != 0)
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_hw_82599", 1069, "Reset polling failed to complete.\n");
          }

          v3 = 4294967281;
        }

        IODelay(0xC350uLL);
        if ((*(a1 + 1285) & 1) == 0)
        {
          break;
        }

        *(a1 + 1285) &= ~1u;
      }

      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
      __dmb(1u);
      v9 = readData;
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x42A8uLL, &readData);
      __dmb(1u);
      v10 = readData;
      if ((readData & 0x70000000) != 0)
      {
        v10 = readData & 0x8FFFFFFF;
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, 0x42A8uLL, v10);
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
        __dmb(1u);
      }

      if ((*(a1 + 1283) & 1) == 0)
      {
        *(a1 + 1268) = v9;
        *(a1 + 1276) = v10;
        *(a1 + 1283) = 1;
LABEL_42:
        (*(a1 + 72))(a1, a1 + 706);
        *(a1 + 1248) = 128;
        (*(a1 + 408))(a1);
        (*(a1 + 80))(a1, a1 + 712);
        if (!ixgbe_validate_mac_addr((a1 + 712)))
        {
          v13 = *(a1 + 1248) - 1;
          *(a1 + 1272) = v13;
          (*(a1 + 352))(a1, v13, a1 + 712, 0, 0x80000000);
          (*(a1 + 400))(a1, *(a1 + 1272), 0xFFFFFFFFLL);
          --*(a1 + 1248);
        }

        (*(a1 + 104))(a1, a1 + 718, a1 + 720);
        return v3;
      }

      if (*(a1 + 1673) == 1 && ixgbe_mng_enabled(a1) || (*(a1 + 1954) & 1) != 0)
      {
        v11 = *(a1 + 1268) & 0xFFFF1FFF | v15 & 0xE000;
        *(a1 + 1268) = v11;
      }

      else
      {
        v11 = *(a1 + 1268);
      }

      if (v9 == v11 || (v3 = (*(a1 + 232))(a1), !v3))
      {
        v12 = *(a1 + 1278);
        if ((v10 & 0xFFFF0000) != v12 << 16)
        {
          __dmb(2u);
          IOPCIDevice::MemoryWrite32(*a1, 0, 0x42A8uLL, (v12 << 16) | v10);
        }

        goto LABEL_42;
      }
    }
  }

  return v3;
}

uint64_t ixgbe_get_media_type_82599(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_media_type_82599", 495, "ixgbe_get_media_type_82599");
  }

  v2 = *(a1 + 1616);
  if (v2 == 2 || v2 == 9)
  {
    return 4;
  }

  v5 = *(a1 + 1936);
  if (v5 > 0x1549)
  {
    if (*(a1 + 1936) <= 0x1556u)
    {
      if (v5 == 5450)
      {
        return 1;
      }

      v7 = 5453;
    }

    else
    {
      if (v5 == 5469)
      {
        *(a1 + 1673) = 1;
        return 2;
      }

      if (v5 == 5464)
      {
        return 3;
      }

      v7 = 5463;
    }

    return v5 == v7;
  }

  result = 5;
  if (*(a1 + 1936) <= 0x10FBu)
  {
    if (v5 - 4343 < 2)
    {
      return result;
    }

    if (v5 == 4345)
    {
      return 6;
    }

    v7 = 4347;
    return v5 == v7;
  }

  v6 = v5 - 5383;
  if (v6 > 0x23)
  {
    goto LABEL_16;
  }

  if (((1 << (v5 - 7)) & 0x800012000) != 0)
  {
    return result;
  }

  if (((1 << (v5 - 7)) & 0x400000001) != 0)
  {
    return 1;
  }

  if (v6 == 21)
  {
    return 4;
  }

LABEL_16:
  if (v5 != 4348)
  {
    return 0;
  }

  return result;
}

uint64_t ixgbe_get_supported_physical_layer_82599(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
  __dmb(1u);
  v2 = readData;
  v9 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A8uLL, &v9);
  __dmb(1u);
  v3 = v9;
  v8 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_supported_physical_layer_82599", 2163, "ixgbe_get_support_physical_layer_82599");
  }

  (*(a1 + 1416))(a1);
  v4 = *(a1 + 1616);
  if (v4 == 9 || v4 == 2)
  {
    (*(a1 + 1448))(a1, 11, 1, &v8);
    return (v8 >> 4) & 2 | (v8 >> 2) & 1 | (v8 >> 5) & 4u;
  }

  result = 0;
  v6 = v2 >> 13;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      if ((v3 & 0x30000) == 0)
      {
        return 2048;
      }

      return ixgbe_get_supported_phy_sfp_layer_generic(a1);
    }

    if (v6 == 4 || v6 == 6)
    {
      v7 = (v2 >> 21) & 0x200;
      if ((v2 & 0x80000000) != 0)
      {
        v7 |= 0x80uLL;
      }

      return v7 | (v2 >> 5) & 0x800;
    }
  }

  else
  {
    if (!(v2 >> 13))
    {
      goto LABEL_11;
    }

    if (v6 == 1)
    {
      return qword_100030300[(v2 >> 7) & 3];
    }

    if (v6 == 2)
    {
LABEL_11:
      if ((v2 & 0x200) != 0)
      {
        return 1536;
      }

      return ixgbe_get_supported_phy_sfp_layer_generic(a1);
    }
  }

  return result;
}

uint64_t ixgbe_enable_rx_dma_82599(uint64_t a1, char a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_enable_rx_dma_82599", 2244, "ixgbe_enable_rx_dma_82599");
  }

  (*(a1 + 184))(a1);
  if (a2)
  {
    ixgbe_enable_rx(a1);
  }

  else
  {
    ixgbe_disable_rx(a1);
  }

  (*(a1 + 192))(a1);
  return 0;
}

uint64_t ixgbe_read_analog_reg8_82599(IOPCIDevice **a1, int a2, _BYTE *a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_analog_reg8_82599", 2045, "ixgbe_read_analog_reg8_82599");
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x14F00uLL, (a2 << 8) | 0x10000);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(0xAuLL);
  v7 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x14F00uLL, &v7);
  __dmb(1u);
  *a3 = v7;
  return 0;
}

uint64_t ixgbe_write_analog_reg8_82599(IOPCIDevice **a1, int a2, int a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_analog_reg8_82599", 2069, "ixgbe_write_analog_reg8_82599");
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x14F00uLL, a3 | (a2 << 8));
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(0xAuLL);
  return 0;
}

uint64_t ixgbe_start_hw_82599(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_start_hw_82599", 2091, "ixgbe_start_hw_82599");
  }

  result = ixgbe_start_hw_generic(a1);
  if (!result)
  {
    result = ixgbe_start_hw_gen2(a1);
    if (!result)
    {
      *(a1 + 1284) = 1;
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_verify_fw_version_82599", 2281, "ixgbe_verify_fw_version_82599");
      }

      if (*(a1 + 1640) != 1)
      {
        return 0;
      }

      v4 = 0;
      v3 = 0;
      if ((*(a1 + 1728))(a1, 15, &v4 + 2))
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): eeprom read at offset %d failed\n", "ixgbe_verify_fw_version_82599", 2292, 15);
        }

        return 4294967272;
      }

      if ((HIWORD(v4) + 1) < 2u)
      {
        return 4294967272;
      }

      if ((*(a1 + 1728))(a1, (HIWORD(v4) + 4), &v4))
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): eeprom read at offset %d failed\n", "ixgbe_verify_fw_version_82599", 2306, HIWORD(v4) + 4);
        }

        return 4294967272;
      }

      if ((v4 + 1) < 2u)
      {
        return 4294967272;
      }

      if ((*(a1 + 1728))(a1, (v4 + 7), &v3))
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): eeprom read at offset %d failed\n", "ixgbe_verify_fw_version_82599", 2318, v4 + 7);
        }

        return 4294967272;
      }

      if (v3 <= 5u)
      {
        return 4294967272;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ixgbe_get_link_capabilities_82599(uint64_t a1, int *a2, _BYTE *a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_link_capabilities_82599", 388, "ixgbe_get_link_capabilities_82599");
  }

  if ((*(a1 + 1628) - 9) <= 5)
  {
    *a2 = 32;
    v6 = 1;
LABEL_38:
    *a3 = v6;
    return 0;
  }

  if (*(a1 + 1283) == 1)
  {
    v7 = *(a1 + 1268);
  }

  else
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
    __dmb(1u);
    v7 = readData;
  }

  v8 = v7 >> 13;
  if (v8 > 3)
  {
    if ((v7 >> 13) > 5u)
    {
      if (v8 != 6)
      {
        if ((v7 & 0x80010000) != 0)
        {
          v17 = 136;
        }

        else
        {
          v17 = 8;
        }

        v14 = v17 | (v7 >> 25) & 0x20;
        v12 = 168;
LABEL_35:
        v15 = 1;
        goto LABEL_36;
      }
    }

    else if (v8 != 4)
    {
      v15 = 0;
      v12 = 168;
      v14 = 40;
      goto LABEL_36;
    }

    v16 = (v7 >> 9) & 0x80;
    if ((v7 & 0x80000000) != 0)
    {
      v16 = 128;
    }

    v14 = v16 | (v7 >> 25) & 0x20;
    v12 = 160;
    goto LABEL_35;
  }

  if (v8 == 2)
  {
    v9 = 32;
  }

  else
  {
    v9 = 128;
  }

  v10 = v8 == 2;
  if (v7 >> 13)
  {
    v11 = 128;
  }

  else
  {
    v11 = 32;
  }

  v12 = 160;
  v13 = v8 <= 1;
  if (v8 <= 1)
  {
    v14 = v11;
  }

  else
  {
    v14 = v9;
  }

  v15 = !v13 && v10;
  if (!v13)
  {
    v12 = 160;
  }

LABEL_36:
  *a2 = v14;
  *a3 = v15;
  if (*(a1 + 1673) == 1)
  {
    *a2 = v12;
    v6 = *(a1 + 1640) != 3;
    goto LABEL_38;
  }

  return 0;
}

uint64_t ixgbe_read_eeprom_82599(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_eeprom_82599", 2424, "ixgbe_read_eeprom_82599");
  }

  if ((a2 & 0xC000) != 0 || *(a1 + 1784) != 1)
  {

    return ixgbe_read_eeprom_bit_bang_generic(a1, a2, a3);
  }

  else
  {

    return ixgbe_read_eerd_generic(a1, a2, a3);
  }
}

uint64_t ixgbe_read_eeprom_buffer_82599(uint64_t a1, unsigned int a2, unsigned int a3, _WORD *a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_eeprom_buffer_82599", 2390, "ixgbe_read_eeprom_buffer_82599");
  }

  if (*(a1 + 1784) == 1 && (a2 + a3 - 1) < 0x4000)
  {

    return ixgbe_read_eerd_buffer_generic(a1, a2, a3, a4);
  }

  else
  {

    return ixgbe_read_eeprom_buffer_bit_bang_generic(a1, a2, a3, a4);
  }
}

void ixgbe_stop_mac_link_on_d3_82599(uint64_t a1)
{
  v2 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_stop_mac_link_on_d3_82599", 558, "ixgbe_stop_mac_link_on_d3_82599");
  }

  ixgbe_read_eeprom(a1);
  if ((ixgbe_mng_present(a1) & 1) == 0)
  {
    *(a1 + 1954);
  }
}

uint64_t ixgbe_start_mac_link_82599(uint64_t a1, int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_start_mac_link_82599", 586, "ixgbe_start_mac_link_82599");
  }

  if (!ixgbe_verify_lesm_fw_enabled_82599(a1))
  {
    ixgbe_reset_pipeline_82599(a1);
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_8:
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
    __dmb(1u);
    v5 = readData & 0xE000;
    if (v5 == 0x8000 || v5 == 57344 || v5 == 49152)
    {
      v6 = 45;
      while (1)
      {
        v8 = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0x42A4uLL, &v8);
        __dmb(1u);
        if ((v8 & 0x80000000) != 0)
        {
          break;
        }

        IODelay(0x186A0uLL);
        if (!--v6)
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): %s\n", "ixgbe_start_mac_link_82599", 625, "Autoneg did not complete.\n");
          }

          v4 = 4294967282;
          goto LABEL_18;
        }
      }
    }

    goto LABEL_17;
  }

  v4 = (*(a1 + 200))(a1, 8);
  if (v4)
  {
    return v4;
  }

  ixgbe_reset_pipeline_82599(a1);
  (*(a1 + 208))(a1, 8);
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_17:
  v4 = 0;
LABEL_18:
  IODelay(0xC350uLL);
  return v4;
}

uint64_t ixgbe_reinit_fdir_tables_82599(IOPCIDevice **a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0xEE00uLL, &readData);
  __dmb(1u);
  v2 = readData;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reinit_fdir_tables_82599", 1203, "ixgbe_reinit_fdir_tables_82599");
  }

  v3 = ixgbe_fdir_check_cmd_complete(a1, &readData);
  if (v3)
  {
    v4 = v3;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reinit_fdir_tables_82599", 1211, "Flow Director previous command did not complete, aborting table re-initialization.\n");
    }
  }

  else
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE38uLL, 0);
    v9 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v9);
    __dmb(1u);
    __dmb(2u);
    v5 = *a1;
    v9 = 0;
    IOPCIDevice::MemoryRead32(v5, 0, 0xEE2CuLL, &v9);
    __dmb(1u);
    IOPCIDevice::MemoryWrite32(v5, 0, 0xEE2CuLL, v9 | 0x100);
    v9 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v9);
    __dmb(1u);
    __dmb(2u);
    v6 = *a1;
    v9 = 0;
    IOPCIDevice::MemoryRead32(v6, 0, 0xEE2CuLL, &v9);
    __dmb(1u);
    IOPCIDevice::MemoryWrite32(v6, 0, 0xEE2CuLL, v9 & 0xFFFFFEFF);
    v9 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v9);
    __dmb(1u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE28uLL, 0);
    v9 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v9);
    __dmb(1u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE00uLL, v2 & 0xFFFFFFF7);
    v9 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v9);
    __dmb(1u);
    v7 = 10;
    do
    {
      v9 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0xEE00uLL, &v9);
      __dmb(1u);
      if ((v9 & 8) != 0)
      {
        v9 = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0xEE50uLL, &v9);
        __dmb(1u);
        v9 = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0xEE54uLL, &v9);
        __dmb(1u);
        v9 = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0xEE58uLL, &v9);
        __dmb(1u);
        v9 = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0xEE5CuLL, &v9);
        __dmb(1u);
        v9 = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0xEE4CuLL, &v9);
        v4 = 0;
        __dmb(1u);
        return v4;
      }

      IODelay(0x3E8uLL);
      --v7;
    }

    while (v7);
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reinit_fdir_tables_82599", 1250, "Flow Director Signature poll time exceeded!\n");
    }

    return 4294967273;
  }

  return v4;
}

uint64_t ixgbe_fdir_check_cmd_complete(IOPCIDevice **a1, uint32_t *a2)
{
  v4 = 10;
  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0xEE2CuLL, &readData);
    __dmb(1u);
    v5 = readData;
    *a2 = readData;
    if ((v5 & 3) == 0)
    {
      break;
    }

    IODelay(0xAuLL);
    if (!--v4)
    {
      return 4294967258;
    }
  }

  return 0;
}

uint64_t ixgbe_init_fdir_signature_82599(IOPCIDevice **a1, int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_fdir_signature_82599", 1313, "ixgbe_init_fdir_signature_82599");
  }

  ixgbe_fdir_enable_82599(a1, a2 | 0x4A060000);
  return 0;
}

void ixgbe_fdir_enable_82599(IOPCIDevice **a1, uint32_t a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_enable_82599", 1273, "ixgbe_fdir_enable_82599");
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE68uLL, 0x3DAD14E2u);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE6CuLL, 0x174D3614u);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE00uLL, a2);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  v4 = 10;
  while (1)
  {
    v5 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0xEE00uLL, &v5);
    __dmb(1u);
    if ((v5 & 8) != 0)
    {
      break;
    }

    IODelay(0x3E8uLL);
    if (!--v4)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_enable_82599", 1302, "Flow Director poll time exceeded!\n");
      }

      return;
    }
  }
}

uint64_t ixgbe_init_fdir_perfect_82599(IOPCIDevice **a1, int a2, int a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_fdir_perfect_82599", 1342, "ixgbe_init_fdir_perfect_82599");
  }

  if (a3)
  {
    v6 = 1246134064;
  }

  else
  {
    v6 = 1241939760;
  }

  ixgbe_fdir_enable_82599(a1, v6 | a2);
  return 0;
}

void ixgbe_set_fdir_drop_queue_82599(uint64_t a1, int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_fdir_drop_queue_82599", 1379, "ixgbe_set_fdir_drop_queue_82599");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0xEE00uLL, &readData);
  __dmb(1u);
  if ((*(a1 + 696) - 6) >= 3)
  {
    v4 = readData & 0xFFFF80F7 | (a2 << 8);
  }

  else
  {
    v4 = readData & 0xFFFF80F7 | (a2 << 8) | 0x8000;
  }

  __dmb(2u);
  v5 = *a1;
  readData = 0;
  IOPCIDevice::MemoryRead32(v5, 0, 0xEE2CuLL, &readData);
  __dmb(1u);
  IOPCIDevice::MemoryWrite32(v5, 0, 0xEE2CuLL, readData | 0x100);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  __dmb(2u);
  v6 = *a1;
  readData = 0;
  IOPCIDevice::MemoryRead32(v6, 0, 0xEE2CuLL, &readData);
  __dmb(1u);
  IOPCIDevice::MemoryWrite32(v6, 0, 0xEE2CuLL, readData & 0xFFFFFEFF);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  ixgbe_fdir_enable_82599(a1, v4);
}

uint64_t ixgbe_atr_compute_sig_hash_82599(unsigned int a1, unsigned int a2)
{
  v2 = bswap32(a1);
  v3 = bswap32(a2);
  v4 = __ROR4__(v3, 16);
  v5 = v2 ^ HIWORD(v2) ^ v3;
  v6 = (v2 << 16) ^ v4 ^ v2;
  v7 = (v5 >> 3) ^ (v5 >> 2) ^ (v5 >> 8) ^ (v5 >> 10) ^ (v5 >> 12) ^ (v6 >> 10) ^ (v6 >> 12) ^ v5;
  return ((v5 << 7) ^ (v5 << 10) ^ (v6 << 12) ^ (v6 << 14) ^ (v6 << 7) ^ (8 * v6) ^ (v7 << 16)) & 0x7FFF0000 | ((v5 >> 7) ^ (v5 >> 5) ^ (v5 >> 11) ^ (v5 >> 13) ^ (v6 >> 5) ^ (v6 >> 1) ^ (v6 >> 6) ^ (v6 >> 7) ^ v7) & 0x7FFF;
}

void ixgbe_fdir_add_signature_filter_82599(IOPCIDevice **a1, unsigned int a2, unsigned int a3, int a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_add_signature_filter_82599", 1515, "ixgbe_fdir_add_signature_filter_82599");
  }

  v8 = (a2 >> 8) & 0xF;
  if (v8 <= 7 && ((1 << v8) & 0xEE) != 0)
  {
    if ((a2 & 0x1000) != 0)
    {
      v9 = 8423433;
    }

    else
    {
      v9 = 34825;
    }

    v10 = a2;
    v11 = (a4 << 16) | (32 * v8);
    v12 = ixgbe_atr_compute_sig_hash_82599(v10, a3);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE28uLL, v12);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE2CuLL, v11 | v9);
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Tx Queue=%x hash=%x\n\n");
    }
  }

  else if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n");
  }
}

int8x8_t ixgbe_atr_compute_perfect_hash_82599(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 56; i += 4)
  {
    *(a1 + i) &= *(a2 + i);
  }

  v3 = 0;
  for (j = 4; j != 56; j += 4)
  {
    v3 ^= *(a1 + j);
  }

  v5 = bswap32(*a1);
  v6 = bswap32(v3);
  v7 = v5 ^ HIWORD(v5) ^ v6;
  v8 = vdupq_n_s32((v5 << 16) ^ __ROR4__(v6, 16) ^ v5);
  v9 = vdupq_n_s32(v7);
  v10 = xmmword_1000302E0;
  v11 = -4;
  v12 = vdupq_n_s32(0x14E2u);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14.i64[0] = 0x1000000010000;
  v14.i64[1] = 0x1000000010000;
  v15 = vdupq_n_s32(0x3DAC0000u);
  v16.i64[0] = 0x400000004;
  v16.i64[1] = 0x400000004;
  do
  {
    v17 = v7;
    v18 = vnegq_s32(v10);
    v7 = veorq_s8(veorq_s8(vbicq_s8(vshlq_u32(v9, v18), vceqzq_s32(vandq_s8(vshlq_u32(v14, v10), v15))), vbicq_s8(vshlq_u32(v8, v18), vceqzq_s32(vandq_s8(vshlq_u32(v13, v10), v12)))), v7);
    v10 = vaddq_s32(v10, v16);
    v11 += 4;
  }

  while (v11 != 12);
  v19.i64[0] = 0xF0000000FLL;
  v19.i64[1] = 0xF0000000FLL;
  v20 = vbslq_s8(vcgtq_u32(v19, vorrq_s8(vdupq_n_s32(0xCu), xmmword_1000302F0)), v7, v17);
  result = veor_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
  *(a1 + 54) = (result.i16[0] ^ result.i16[2]) & 0x1FFF;
  return result;
}

uint64_t ixgbe_fdir_set_input_mask_82599(uint64_t a1, uint64_t a2, int a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_set_input_mask_82599", 1672, "ixgbe_fdir_set_atr_input_mask_82599");
  }

  if (*(a2 + 54) && (pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_set_input_mask_82599", 1686, " bucket hash should always be 0 in mask\n");
  }

  if ((*a2 & 0x7F) == 0x7F)
  {
    v6 = 32;
  }

  else
  {
    if ((*a2 & 0x7F) != 0)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_set_input_mask_82599", 1695, " Error on vm pool mask\n");
      }

      return 4294967292;
    }

    v6 = 36;
  }

  if ((*(a2 + 1) & 3) == 3)
  {
LABEL_21:
    v7 = bswap32(*(a2 + 2) & 0xFFEF) >> 16;
    if (v7 >= 57344)
    {
      if (v7 == 57344)
      {
        v6 |= 1u;
      }

      else if (v7 != 61439)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v7)
      {
        if (v7 != 4095)
        {
LABEL_27:
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_set_input_mask_82599", 1731, " Error on VLAN mask\n");
          }

          return 4294967292;
        }
      }

      else
      {
        v6 |= 1u;
      }

      v6 |= 2u;
    }

    if (*(a2 + 52) != 0xFFFF)
    {
      if (*(a2 + 52))
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_set_input_mask_82599", 1743, " Error on flexible byte mask\n");
        }

        return 4294967292;
      }

      v6 |= 0x10u;
    }

    if (a3)
    {
      if (*(a2 + 36) == 255)
      {
        v8 = -64497;
      }

      else
      {
        if (*(a2 + 36))
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_set_input_mask_82599", 1759, " Error on inner_mac byte mask\n");
          }

          return 4294967292;
        }

        v8 = -63489;
      }

      v18 = *(a2 + 44);
      if (v18 != -1)
      {
        if (v18 == 0xFFFFFF)
        {
          v8 |= 0x1000u;
        }

        else
        {
          if (v18)
          {
            if ((pcindkll & 0x100000) != 0)
            {
              IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_set_input_mask_82599", 1774, " Error on TNI/VNI byte mask\n");
            }

            return 4294967292;
          }

          v8 |= 0xF000u;
        }
      }

      if (*(a2 + 42) != 0xFFFF)
      {
        if (*(a2 + 42))
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_set_input_mask_82599", 1785, " Error on tunnel type byte mask\n");
          }

          return 4294967292;
        }

        v8 |= 0x800u;
      }

      __dmb(2u);
      v19 = bswap32(v8);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE74uLL, HIBYTE(v19) & 0xFF00FFFF | (v19 << 24) | (v19 >> 8) & 0xFF00 | (BYTE1(v19) << 16));
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE44uLL, 0xFFFFFFFF);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE48uLL, 0xFFFFFFFF);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE3CuLL, 0xFFFFFFFF);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE40uLL, 0xFFFFFFFF);
      if ((*(a1 + 696) - 6) <= 2)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE78uLL, 0xFFFFFFFF);
      }

      __dmb(2u);
      v14 = *a1;
      v16 = v6 | 0x40;
      v17 = 61040;
    }

    else
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE70uLL, v6);
      v9 = bswap32(*(a2 + 50) | (*(a2 + 48) << 16));
      v10 = (2 * v9) & 0xAAAAAAAA | (v9 >> 1) & 0x55555555;
      v11 = (4 * v10) & 0xCCCCCCCC | (v10 >> 2) & 0x33333333;
      __dmb(2u);
      v12 = ~__ROR4__(bswap32((16 * v11) & 0xF0F0F0F0 | (v11 >> 4) & 0xF0F0F0F), 16);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE44uLL, v12);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE48uLL, v12);
      if ((*(a1 + 696) - 6) <= 2)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE78uLL, v12);
      }

      __dmb(2u);
      v13 = bswap32(~*(a2 + 20));
      IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE40uLL, HIBYTE(v13) & 0xFF00FFFF | (v13 << 24) | (v13 >> 8) & 0xFF00 | (BYTE1(v13) << 16));
      __dmb(2u);
      v14 = *a1;
      v15 = bswap32(~*(a2 + 4));
      v16 = HIBYTE(v15) & 0xFF00FFFF | (v15 << 24) | (v15 >> 8) & 0xFF00 | (BYTE1(v15) << 16);
      v17 = 60988;
    }

    IOPCIDevice::MemoryWrite32(v14, 0, v17, v16);
    return 0;
  }

  if ((*(a2 + 1) & 3) != 0)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_set_input_mask_82599", 1710, " Error on flow type mask\n");
    }

    return 4294967292;
  }

  if (!*(a2 + 50) && !*(a2 + 48))
  {
    v6 |= 8u;
    goto LABEL_21;
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_set_input_mask_82599", 1704, " Error on src/dst port mask\n");
  }

  return 4294967292;
}

uint64_t ixgbe_fdir_write_perfect_filter_82599(IOPCIDevice **a1, unsigned __int8 *a2, int a3, int a4, int a5)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_write_perfect_filter_82599", 1850, "ixgbe_fdir_write_perfect_filter_82599");
  }

  if ((a5 & 1) == 0)
  {
    __dmb(2u);
    v10 = bswap32(*(a2 + 5));
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE0CuLL, HIBYTE(v10) & 0xFF00FFFF | (v10 << 24) | (v10 >> 8) & 0xFF00 | (BYTE1(v10) << 16));
    __dmb(2u);
    v11 = bswap32(*(a2 + 6));
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE10uLL, HIBYTE(v11) & 0xFF00FFFF | (v11 << 24) | (v11 >> 8) & 0xFF00 | (BYTE1(v11) << 16));
    __dmb(2u);
    v12 = bswap32(*(a2 + 7));
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE14uLL, HIBYTE(v12) & 0xFF00FFFF | (v12 << 24) | (v12 >> 8) & 0xFF00 | (BYTE1(v12) << 16));
    __dmb(2u);
    v13 = bswap32(*(a2 + 5));
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE18uLL, HIBYTE(v13) & 0xFF00FFFF | (v13 << 24) | (v13 >> 8) & 0xFF00 | (BYTE1(v13) << 16));
    __dmb(2u);
    v14 = bswap32(*(a2 + 1));
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE1CuLL, HIBYTE(v14) & 0xFF00FFFF | (v14 << 24) | (v14 >> 8) & 0xFF00 | (BYTE1(v14) << 16));
    v15 = bswap32(*(a2 + 25) | (*(a2 + 24) << 16));
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE20uLL, v15);
  }

  HIDWORD(v16) = *(a2 + 26);
  LODWORD(v16) = bswap32(*(a2 + 1));
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE24uLL, v16 >> 16);
  if (a5)
  {
    v17 = *(a2 + 9);
    v18 = a2[40] | ((*(a2 + 21) != 0) << 31) | (a2[41] << 8);
    __dmb(2u);
    v19 = bswap32(v17);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE0CuLL, HIBYTE(v19) & 0xFF00FFFF | (v19 << 24) | (v19 >> 8) & 0xFF00 | (BYTE1(v19) << 16));
    __dmb(2u);
    v20 = bswap32(v18);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE10uLL, (v20 >> 8) & 0xFF00 | HIBYTE(v20) | ((v20 >> 7) << 31));
    __dmb(2u);
    v21 = bswap32(*(a2 + 11));
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE14uLL, HIBYTE(v21) & 0xFF00FFFF | (v21 << 24) | (v21 >> 8) & 0xFF00 | (BYTE1(v21) << 16));
  }

  v22 = *(a2 + 27) | (a3 << 16);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE28uLL, v22);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  if (a4 == 127)
  {
    v23 = 35337;
  }

  else
  {
    v23 = 34825;
  }

  v24 = (a4 << 16) | (32 * a2[1]) | v23 & 0xFF7FFFFF | ((((a2[1] & 0x10) >> 4) & 1) << 23) | (*a2 << 24);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE2CuLL, v24);
  v25 = ixgbe_fdir_check_cmd_complete(a1, &v28);
  if (v25 && (pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_write_perfect_filter_82599", 1923, "Flow Director command did not complete!\n");
  }

  return v25;
}

uint64_t ixgbe_fdir_erase_perfect_filter_82599(IOPCIDevice **a1, uint64_t a2, int a3)
{
  v9 = 0;
  v4 = *(a2 + 54) | (a3 << 16);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE28uLL, v4);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE2CuLL, 3u);
  v5 = ixgbe_fdir_check_cmd_complete(a1, &v9);
  if (v5)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_erase_perfect_filter_82599", 1951, "Flow Director command did not complete!\n");
    }
  }

  else if ((v9 & 4) != 0)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE28uLL, v4);
    v7 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v7);
    __dmb(1u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0xEE2CuLL, 2u);
  }

  return v5;
}

uint64_t ixgbe_fdir_add_perfect_filter_82599(IOPCIDevice **a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_add_perfect_filter_82599", 1986, "ixgbe_fdir_add_perfect_filter_82599");
  }

  v12 = *(a2 + 1);
  if (v12 > 0x13)
  {
    goto LABEL_20;
  }

  if (((1 << v12) & 0x60006) != 0)
  {
LABEL_11:
    *(a3 + 1) = 7;
    goto LABEL_12;
  }

  if (((1 << v12) & 0x10001) == 0)
  {
    if (((1 << v12) & 0x80008) != 0)
    {
      if (*(a2 + 50) || *(a2 + 48))
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_add_perfect_filter_82599", 2004, " Error on src/dst port\n");
        }

        return 4294967292;
      }

      goto LABEL_11;
    }

LABEL_20:
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_add_perfect_filter_82599", 2016, " Error on flow type input\n");
    }

    return 4294967292;
  }

  *(a3 + 1) = 4;
  if (*(a2 + 50) || *(a2 + 48))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fdir_add_perfect_filter_82599", 1997, " Error on src/dst port\n");
    }

    return 4294967292;
  }

LABEL_12:
  result = ixgbe_fdir_set_input_mask_82599(a1, a3, a6);
  if (!result)
  {
    ixgbe_atr_compute_perfect_hash_82599(a2, a3);

    return ixgbe_fdir_write_perfect_filter_82599(a1, a2, a4, a5, a6);
  }

  return result;
}

uint64_t ixgbe_dcb_calculate_tc_credits(unsigned __int8 *a1, unsigned __int16 *a2, unsigned __int16 *a3, int a4)
{
  v4 = 0;
  v5 = a4 / 2 + 63;
  v6 = 100;
  do
  {
    if (v6 >= a1[v4])
    {
      v7 = a1[v4];
    }

    else
    {
      v7 = v6;
    }

    if (a1[v4])
    {
      v6 = v7;
    }

    ++v4;
  }

  while (v4 != 8);
  v8 = 0;
  if (v5 < 0)
  {
    v5 = a4 / 2 + 126;
  }

  v9 = v5 >> 6;
  v10 = v9 / v6 + 1;
  do
  {
    v11 = v10 * a1[v8];
    if (v11 >= 0xC8)
    {
      v11 = 200;
    }

    if (v11 <= v9)
    {
      LOWORD(v11) = v9;
    }

    a2[v8] = v11;
    if (a1[v8])
    {
      v12 = 4 * a1[v8];
    }

    else
    {
      v12 = v9;
    }

    a3[v8++] = v12;
  }

  while (v8 != 8);
  return 0;
}

uint64_t ixgbe_dcb_calculate_tc_credits_cee(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (!a2)
  {
    return 4294967292;
  }

  v4 = (a2 + 12 * a4 + 1);
  v5 = 100;
  v6 = 8;
  v7 = a2 + 266 + 8 * a4;
  do
  {
    v8 = *(v7 + *(v4 - 1));
    v9 = *v4;
    v4 += 32;
    v10 = v9 * v8;
    v11 = (5243 * (v10 >> 2)) >> 17;
    if (v11 >= v5)
    {
      LOWORD(v11) = v5;
    }

    if (v10 > 0x63)
    {
      v5 = v11;
    }

    --v6;
  }

  while (v6);
  v12 = 0;
  v13 = ((a3 >> 1) + 63) >> 6;
  v14 = v13 / v5 + 1;
  v15 = a2 + 28;
  v16 = a2 + 12 * a4;
  do
  {
    v17 = v16 + v12;
    v18 = *(v16 + v12 + 1);
    v19 = (v18 * *(v7 + *(v16 + v12))) >= 0x64u || v18 == 0;
    v20 = (v18 * *(v7 + *(v16 + v12))) / 0x64u;
    if (!v19)
    {
      v20 = 1;
    }

    *(v17 + 2) = v20;
    v21 = v14 * v20;
    if (v14 * v20 >= 0xC8)
    {
      v21 = 200;
    }

    if (v21 <= v13)
    {
      LOWORD(v21) = v13;
    }

    *(v17 + 4) = v21;
    v22 = 4 * v20;
    if (4 * v20 <= v13)
    {
      v22 = v13;
    }

    if (!a4)
    {
      if ((v22 - 1) <= 0x1FF && *(a1 + 696) == 1)
      {
        LOWORD(v22) = 513;
      }

      *(v15 + v12) = v22;
    }

    *(v16 + v12 + 6) = v22;
    v12 += 32;
  }

  while (v12 != 256);
  return 0;
}

uint64_t ixgbe_dcb_unpack_pfc_cee(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = 0;
  v4 = 0;
  *a3 = 0;
  do
  {
    if (*(result + 32 * *(a2 + v4) + 24))
    {
      v3 |= 1 << v4;
      *a3 = v3;
    }

    ++v4;
  }

  while (v4 != 8);
  return result;
}

uint64_t ixgbe_dcb_unpack_refill_cee(uint64_t result, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = (result + 12 * a2 + 4);
  do
  {
    v5 = *v4;
    v4 += 16;
    *(a3 + v3) = v5;
    v3 += 2;
  }

  while (v3 != 16);
  return result;
}

uint64_t ixgbe_dcb_unpack_max_cee(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (result + 28);
  do
  {
    v4 = *v3;
    v3 += 16;
    *(a2 + v2) = v4;
    v2 += 2;
  }

  while (v2 != 16);
  return result;
}

uint64_t ixgbe_dcb_unpack_bwgid_cee(uint64_t result, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = (result + 12 * a2);
  do
  {
    v5 = *v4;
    v4 += 32;
    *(a3 + v3++) = v5;
  }

  while (v3 != 8);
  return result;
}

uint64_t ixgbe_dcb_unpack_tsa_cee(uint64_t result, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = (result + 12 * a2 + 8);
  do
  {
    v5 = *v4;
    v4 += 8;
    *(a3 + v3++) = v5;
  }

  while (v3 != 8);
  return result;
}

uint64_t ixgbe_dcb_get_tc_from_up(uint64_t a1, int a2, char a3)
{
  v3 = *(a1 + 264);
  if (v3)
  {
    v4 = (32 * (v3 - 1) + 12 * a2 + a1 + 3);
    for (i = v3 - 1; i; --i)
    {
      v6 = i;
      v7 = *v4;
      v4 -= 32;
      if (((1 << a3) & v7) != 0)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t ixgbe_dcb_unpack_map_cee(uint64_t result, int a2, uint64_t a3)
{
  for (i = 0; i != 8; ++i)
  {
    v4 = *(result + 264);
    if (v4)
    {
      v5 = (result + 12 * a2 + 3 + 32 * (v4 - 1));
      v6 = v4 - 1;
      while (v6)
      {
        v7 = v6;
        v8 = *v5;
        v5 -= 32;
        --v6;
        if (((1 << i) & v8) != 0)
        {
          goto LABEL_8;
        }
      }
    }

    v7 = 0;
LABEL_8:
    *(a3 + i) = v7;
  }

  return result;
}

uint64_t ixgbe_dcb_check_config_cee(uint64_t a1)
{
  v1 = 0;
  v17[0] = 0;
  v17[1] = 0;
  v16[0] = 0;
  v16[1] = 0;
  v2 = 1;
  while (2)
  {
    v3 = v2;
    v4 = (a1 + 12 * v1);
    v5 = 8;
    v6 = &v16[v1];
    v7 = &v17[v1];
    do
    {
      v8 = *v4;
      if (v8 > 7)
      {
        goto LABEL_22;
      }

      v9 = v4[1];
      if (*(v4 + 2) == 2)
      {
        *(v6 + v8) = 1;
        if (v9)
        {
          goto LABEL_22;
        }
      }

      else if (!v4[1])
      {
        goto LABEL_22;
      }

      *(v7 + v8) += v9;
      v4 += 32;
      --v5;
    }

    while (v5);
    v10 = 0;
    do
    {
      v11 = *(v7 + v5);
      if (*(v6 + v5) == 1)
      {
        if (*(v7 + v5))
        {
          goto LABEL_22;
        }
      }

      else if (v11 != 100 && v11 != 0)
      {
        goto LABEL_22;
      }

      v10 += *(a1 + 266 + 8 * v1 + v5++);
    }

    while (v5 != 8);
    if (v10 != 100)
    {
LABEL_22:
      LODWORD(v1) = v1;
      v13 = 4294967292;
      goto LABEL_23;
    }

    v2 = 0;
    v1 = 1;
    if (v3)
    {
      continue;
    }

    break;
  }

  v13 = 0;
LABEL_23:
  if ((pcindkll & 0x100000) != 0)
  {
    if (v1)
    {
      v14 = "Rx";
    }

    else
    {
      v14 = "Tx";
    }

    IOLog("ixgbe:%s(%d): DCB error code %d while checking %s settings.\n\n", "ixgbe_dcb_check_config_cee", 350, v13, v14);
  }

  return v13;
}

uint64_t ixgbe_dcb_get_tc_stats(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 696);
  if (v3 > 8)
  {
    return 0x7FFFFFFFLL;
  }

  if (((1 << v3) & 0x1D4) != 0)
  {
    return ixgbe_dcb_get_tc_stats_82599(a1, a2, a3);
  }

  if (v3 == 1)
  {
    return ixgbe_dcb_get_tc_stats_82598(a1, a2, a3);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_dcb_get_pfc_stats(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 696);
  if (v3 > 8)
  {
    return 0x7FFFFFFFLL;
  }

  if (((1 << v3) & 0x1D4) != 0)
  {
    return ixgbe_dcb_get_pfc_stats_82599(a1, a2, a3);
  }

  if (v3 == 1)
  {
    return ixgbe_dcb_get_pfc_stats_82598(a1, a2, a3);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_dcb_config_rx_arbiter_cee(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v17 = 0uLL;
  v16 = 0uLL;
  LOWORD(v3) = *(a2 + 4);
  WORD1(v3) = *(a2 + 36);
  WORD2(v3) = *(a2 + 68);
  WORD3(v3) = *(a2 + 100);
  WORD4(v3) = *(a2 + 132);
  WORD5(v3) = *(a2 + 164);
  WORD6(v3) = *(a2 + 196);
  HIWORD(v3) = *(a2 + 228);
  v17 = v3;
  LOWORD(v3) = *(a2 + 28);
  WORD1(v3) = *(a2 + 60);
  WORD2(v3) = *(a2 + 92);
  WORD3(v3) = *(a2 + 124);
  WORD4(v3) = *(a2 + 156);
  WORD5(v3) = *(a2 + 188);
  WORD6(v3) = *(a2 + 220);
  HIWORD(v3) = *(a2 + 252);
  v16 = v3;
  LOBYTE(v3) = *a2;
  BYTE1(v3) = *(a2 + 32);
  BYTE2(v3) = *(a2 + 64);
  BYTE3(v3) = *(a2 + 96);
  BYTE4(v3) = *(a2 + 128);
  BYTE5(v3) = *(a2 + 160);
  BYTE6(v3) = *(a2 + 192);
  BYTE7(v3) = *(a2 + 224);
  v19 = v3;
  v4 = (a2 + 8);
  do
  {
    v5 = *v4;
    v4 += 8;
    *(&v20 + v2++) = v5;
  }

  while (v2 != 8);
  v6 = 0;
  v7 = *(a2 + 264);
  do
  {
    if (v7)
    {
      v8 = v7 - 1;
      v9 = (a2 + 32 * (v7 - 1) + 3);
      while (v8)
      {
        v10 = v8;
        v11 = *v9;
        v9 -= 32;
        --v8;
        if (((1 << v6) & v11) != 0)
        {
          goto LABEL_10;
        }
      }
    }

    v10 = 0;
LABEL_10:
    *(&v18 + v6++) = v10;
  }

  while (v6 != 8);
  v12 = *(a1 + 696);
  v13 = 0x7FFFFFFFLL;
  if (v12 <= 8)
  {
    if (((1 << v12) & 0x1D4) != 0)
    {
      return ixgbe_dcb_config_rx_arbiter_82599(a1, &v17, &v16, &v19, &v20, &v18);
    }

    if (v12 != 1)
    {
      return v13;
    }

    return ixgbe_dcb_config_rx_arbiter_82598(a1, &v17, &v16, &v20);
  }

  return v13;
}

uint64_t ixgbe_dcb_config_tx_desc_arbiter_cee(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  LOWORD(v3) = *(a2 + 4);
  WORD1(v3) = *(a2 + 36);
  WORD2(v3) = *(a2 + 68);
  WORD3(v3) = *(a2 + 100);
  WORD4(v3) = *(a2 + 132);
  WORD5(v3) = *(a2 + 164);
  WORD6(v3) = *(a2 + 196);
  HIWORD(v3) = *(a2 + 228);
  v11 = v3;
  LOWORD(v3) = *(a2 + 28);
  WORD1(v3) = *(a2 + 60);
  WORD2(v3) = *(a2 + 92);
  WORD3(v3) = *(a2 + 124);
  WORD4(v3) = *(a2 + 156);
  WORD5(v3) = *(a2 + 188);
  WORD6(v3) = *(a2 + 220);
  HIWORD(v3) = *(a2 + 252);
  v10 = v3;
  LOBYTE(v3) = *a2;
  BYTE1(v3) = *(a2 + 32);
  BYTE2(v3) = *(a2 + 64);
  BYTE3(v3) = *(a2 + 96);
  BYTE4(v3) = *(a2 + 128);
  BYTE5(v3) = *(a2 + 160);
  BYTE6(v3) = *(a2 + 192);
  BYTE7(v3) = *(a2 + 224);
  v12 = v3;
  v4 = (a2 + 8);
  do
  {
    v5 = *v4;
    v4 += 8;
    v13[v2++] = v5;
  }

  while (v2 != 8);
  v6 = *(a1 + 696);
  v7 = 0x7FFFFFFFLL;
  if (v6 <= 8)
  {
    if (((1 << v6) & 0x1D4) != 0)
    {
      return ixgbe_dcb_config_tx_desc_arbiter_82599(a1, &v11, &v10, &v12, v13);
    }

    if (v6 != 1)
    {
      return v7;
    }

    return ixgbe_dcb_config_tx_desc_arbiter_82598(a1, &v11, &v10, &v12, v13);
  }

  return v7;
}

uint64_t ixgbe_dcb_config_tx_data_arbiter_cee(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v18 = 0;
  LOWORD(v3) = *(a2 + 4);
  WORD1(v3) = *(a2 + 36);
  WORD2(v3) = *(a2 + 68);
  WORD3(v3) = *(a2 + 100);
  WORD4(v3) = *(a2 + 132);
  WORD5(v3) = *(a2 + 164);
  WORD6(v3) = *(a2 + 196);
  HIWORD(v3) = *(a2 + 228);
  v17 = v3;
  LOWORD(v3) = *(a2 + 28);
  WORD1(v3) = *(a2 + 60);
  WORD2(v3) = *(a2 + 92);
  WORD3(v3) = *(a2 + 124);
  WORD4(v3) = *(a2 + 156);
  WORD5(v3) = *(a2 + 188);
  WORD6(v3) = *(a2 + 220);
  HIWORD(v3) = *(a2 + 252);
  v16 = v3;
  LOBYTE(v3) = *a2;
  BYTE1(v3) = *(a2 + 32);
  BYTE2(v3) = *(a2 + 64);
  BYTE3(v3) = *(a2 + 96);
  BYTE4(v3) = *(a2 + 128);
  BYTE5(v3) = *(a2 + 160);
  BYTE6(v3) = *(a2 + 192);
  BYTE7(v3) = *(a2 + 224);
  v19 = v3;
  v4 = (a2 + 8);
  do
  {
    v5 = *v4;
    v4 += 8;
    v20[v2++] = v5;
  }

  while (v2 != 8);
  v6 = 0;
  v7 = *(a2 + 264);
  do
  {
    if (v7)
    {
      v8 = v7 - 1;
      v9 = (a2 + 32 * (v7 - 1) + 3);
      while (v8)
      {
        v10 = v8;
        v11 = *v9;
        v9 -= 32;
        --v8;
        if (((1 << v6) & v11) != 0)
        {
          goto LABEL_10;
        }
      }
    }

    v10 = 0;
LABEL_10:
    *(&v18 + v6++) = v10;
  }

  while (v6 != 8);
  v12 = *(a1 + 696);
  v13 = 0x7FFFFFFFLL;
  if (v12 <= 8)
  {
    if (((1 << v12) & 0x1D4) != 0)
    {
      return ixgbe_dcb_config_tx_data_arbiter_82599(a1, &v17, &v16, &v19, v20, &v18);
    }

    if (v12 != 1)
    {
      return v13;
    }

    return ixgbe_dcb_config_tx_data_arbiter_82598(a1, &v17, &v16, &v19, v20);
  }

  return v13;
}

uint64_t ixgbe_dcb_config_pfc_cee(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v14 = 0;
  v3 = *(a2 + 264);
  do
  {
    if (v3)
    {
      v4 = v3 - 1;
      v5 = (a2 + 32 * (v3 - 1) + 3);
      while (v4)
      {
        v6 = v4;
        v7 = *v5;
        v5 -= 32;
        --v4;
        if (((1 << v2) & v7) != 0)
        {
          goto LABEL_8;
        }
      }
    }

    v6 = 0;
LABEL_8:
    v14.i8[v2++] = v6;
  }

  while (v2 != 8);
  LOBYTE(v8) = 0;
  v9 = 0;
  for (i = 0; i != 8; ++i)
  {
    if (*(a2 + 32 * v14.u8[i] + 24))
    {
      v8 = v9 | (1 << i);
      v9 = v8;
    }
  }

  v11 = *(a1 + 696);
  v12 = 0x7FFFFFFFLL;
  if (v11 > 8)
  {
    return v12;
  }

  if (((1 << v11) & 0x1D4) != 0)
  {
    return ixgbe_dcb_config_pfc_82599(a1, v8, &v14);
  }

  if (v11 != 1)
  {
    return v12;
  }

  return ixgbe_dcb_config_pfc_82598(a1, v8);
}

uint64_t ixgbe_dcb_config_tc_stats(uint64_t a1)
{
  v1 = *(a1 + 696);
  if (v1 > 8)
  {
    return 0x7FFFFFFFLL;
  }

  if (((1 << v1) & 0x1D4) != 0)
  {
    return ixgbe_dcb_config_tc_stats_82599(a1, 0);
  }

  if (v1 == 1)
  {
    return ixgbe_dcb_config_tc_stats_82598(a1);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t ixgbe_dcb_hw_config_cee(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v23 = 0;
  LOWORD(v5) = *(a2 + 4);
  WORD1(v5) = *(a2 + 36);
  WORD2(v5) = *(a2 + 68);
  WORD3(v5) = *(a2 + 100);
  WORD4(v5) = *(a2 + 132);
  WORD5(v5) = *(a2 + 164);
  WORD6(v5) = *(a2 + 196);
  HIWORD(v5) = *(a2 + 228);
  v22 = v5;
  LOWORD(v5) = *(a2 + 28);
  WORD1(v5) = *(a2 + 60);
  WORD2(v5) = *(a2 + 92);
  WORD3(v5) = *(a2 + 124);
  WORD4(v5) = *(a2 + 156);
  WORD5(v5) = *(a2 + 188);
  WORD6(v5) = *(a2 + 220);
  HIWORD(v5) = *(a2 + 252);
  v21 = v5;
  LOBYTE(v5) = *a2;
  BYTE1(v5) = *(a2 + 32);
  BYTE2(v5) = *(a2 + 64);
  BYTE3(v5) = *(a2 + 96);
  BYTE4(v5) = *(a2 + 128);
  BYTE5(v5) = *(a2 + 160);
  BYTE6(v5) = *(a2 + 192);
  BYTE7(v5) = *(a2 + 224);
  v24 = v5;
  v6 = (a2 + 8);
  do
  {
    v7 = *v6;
    v6 += 8;
    v25[v4++] = v7;
  }

  while (v4 != 8);
  v8 = 0;
  v9 = *(a2 + 264);
  do
  {
    if (v9)
    {
      v10 = v9 - 1;
      v11 = (a2 + 32 * (v9 - 1) + 3);
      while (v10)
      {
        v12 = v10;
        v13 = *v11;
        v11 -= 32;
        --v10;
        if (((1 << v8) & v13) != 0)
        {
          goto LABEL_10;
        }
      }
    }

    v12 = 0;
LABEL_10:
    v23.i8[v8++] = v12;
  }

  while (v8 != 8);
  v14 = *(a2 + 284);
  (*(a1 + 304))(a1);
  v15 = *(a1 + 696);
  v16 = 0x7FFFFFFFLL;
  if (v15 <= 8)
  {
    if (((1 << v15) & 0x1D4) != 0)
    {
      ixgbe_dcb_config_82599(a1, a2);
      v16 = ixgbe_dcb_hw_config_82599(a1, *(a2 + 292), &v22, &v21, &v24, v25, &v23);
      ixgbe_dcb_config_tc_stats_82599(a1, a2);
      if (v16)
      {
        return v16;
      }
    }

    else
    {
      if (v15 != 1)
      {
        return v16;
      }

      v16 = ixgbe_dcb_hw_config_82598(a1, *(a2 + 292), &v22, &v21, &v24, v25);
      if (v16)
      {
        return v16;
      }
    }

    if (*(a2 + 282) == 1)
    {
      LOBYTE(v17) = 0;
      v18 = 0;
      for (i = 0; i != 8; ++i)
      {
        if (*(a2 + 32 * v23.u8[i] + 24))
        {
          v17 = v18 | (1 << i);
          v18 = v17;
        }
      }

      return ixgbe_dcb_config_pfc(a1, v17, &v23);
    }

    else
    {
      return 0;
    }
  }

  return v16;
}

uint64_t ixgbe_dcb_config_pfc(uint64_t a1, unsigned int a2, uint8x8_t *a3)
{
  v3 = *(a1 + 696);
  if (v3 > 8)
  {
    return 4294967291;
  }

  if (((1 << v3) & 0x1D4) != 0)
  {
    return ixgbe_dcb_config_pfc_82599(a1, a2, a3);
  }

  if (v3 == 1)
  {
    return ixgbe_dcb_config_pfc_82598(a1, a2);
  }

  else
  {
    return 4294967291;
  }
}

uint64_t ixgbe_dcb_hw_config(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v6 = *(a1 + 696);
  if (v6 <= 8)
  {
    if (((1 << v6) & 0x1D4) != 0)
    {
      ixgbe_dcb_config_rx_arbiter_82599(a1, a2, a3, a4, a5, a6);
      ixgbe_dcb_config_tx_desc_arbiter_82599(a1, a2, a3, a4, a5);
      ixgbe_dcb_config_tx_data_arbiter_82599(a1, a2, a3, a4, a5, a6);
    }

    else if (v6 == 1)
    {
      ixgbe_dcb_config_rx_arbiter_82598(a1, a2, a3, a5);
      ixgbe_dcb_config_tx_desc_arbiter_82598(a1, a2, a3, a4, a5);
      ixgbe_dcb_config_tx_data_arbiter_82598(a1, a2, a3, a4, a5);
    }
  }

  return 0;
}

uint64_t ixgbe_init_mbx_ops_generic(uint64_t result)
{
  *(result + 1848) = ixgbe_read_posted_mbx;
  *(result + 1856) = ixgbe_write_posted_mbx;
  return result;
}

uint64_t ixgbe_read_posted_mbx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_posted_mbx", 84, "ixgbe_read_posted_mbx");
  }

  if (!*(a1 + 1832))
  {
    return 4294967196;
  }

  v8 = *(a1 + 1908);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_poll_for_msg", 16, "ixgbe_poll_for_msg");
  }

  if (!v8)
  {
    return 4294967196;
  }

  v9 = *(a1 + 1864);
  if (v9)
  {
    for (i = v9(a1, a4); i; i = (*(a1 + 1864))(a1, a4))
    {
      if (!--v8)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): Polling for VF%d mailbox message timedout\n", "ixgbe_poll_for_msg", 30, a4);
        }

        return 4294967196;
      }

      IODelay(*(a1 + 1912));
    }
  }

  v11 = *(a1 + 1832);

  return v11(a1, a2, a3, a4);
}

uint64_t ixgbe_write_posted_mbx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_posted_mbx", 114, "ixgbe_write_posted_mbx");
  }

  v8 = *(a1 + 1840);
  if (v8 && *(a1 + 1908))
  {
    result = v8(a1, a2, a3, a4);
    if (result)
    {
      return result;
    }

    v10 = *(a1 + 1908);
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_poll_for_ack", 48, "ixgbe_poll_for_ack");
    }

    if (v10)
    {
      v11 = *(a1 + 1872);
      if (!v11)
      {
        return 0;
      }

      result = v11(a1, a4);
      if (!result)
      {
        return result;
      }

      while (--v10)
      {
        IODelay(*(a1 + 1912));
        v12 = (*(a1 + 1872))(a1, a4);
        result = 0;
        if (!v12)
        {
          return result;
        }
      }

      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): Polling for VF%d mailbox ack timedout\n", "ixgbe_poll_for_ack", 62, a4);
      }
    }
  }

  return 4294967196;
}

uint64_t ixgbe_init_mbx_params_vf(uint64_t result)
{
  *(result + 1912) = 500;
  *(result + 1920) = 16;
  *(result + 1832) = ixgbe_read_mbx_vf;
  *(result + 1840) = ixgbe_write_mbx_vf;
  *(result + 1848) = ixgbe_read_posted_mbx;
  *(result + 1856) = ixgbe_write_posted_mbx;
  *(result + 1864) = ixgbe_check_for_msg_vf;
  *(result + 1872) = ixgbe_check_for_ack_vf;
  *(result + 1880) = ixgbe_check_for_rst_vf;
  *(result + 1904) = 0;
  *(result + 1896) = 0;
  *(result + 1888) = 0;
  return result;
}

uint64_t ixgbe_read_mbx_vf(uint64_t a1, uint32_t *a2, unsigned int a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_mbx_vf", 328, "ixgbe_read_mbx_vf");
  }

  v6 = ixgbe_obtain_mbx_lock_vf(a1);
  if (!v6)
  {
    if (a3)
    {
      v7 = a3;
      v8 = 512;
      do
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, v8, &readData);
        __dmb(1u);
        *a2++ = readData;
        v8 += 4;
        --v7;
      }

      while (v7);
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x2FCuLL, 2u);
    ++*(a1 + 1892);
  }

  return v6;
}

uint64_t ixgbe_write_mbx_vf(uint64_t a1, uint32_t *a2, unsigned int a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_mbx_vf", 288, "ixgbe_write_mbx_vf");
  }

  v6 = ixgbe_obtain_mbx_lock_vf(a1);
  if (!v6)
  {
    ixgbe_check_for_msg_vf(a1);
    ixgbe_check_for_ack_vf(a1);
    if (a3)
    {
      v7 = a3;
      v8 = 512;
      do
      {
        __dmb(2u);
        v9 = *a2++;
        IOPCIDevice::MemoryWrite32(*a1, 0, v8, v9);
        v8 += 4;
        --v7;
      }

      while (v7);
    }

    ++*(a1 + 1888);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x2FCuLL, 1u);
  }

  return v6;
}

uint64_t ixgbe_check_for_msg_vf(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_check_for_msg_vf", 194, "ixgbe_check_for_msg_vf");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x2FCuLL, &readData);
  __dmb(1u);
  v2 = *(a1 + 1916);
  v3 = v2 | readData;
  *(a1 + 1916) = v2 & 0xFFFFFFEF | readData & 0xA0;
  if ((v3 & 0x10) == 0)
  {
    return 4294967196;
  }

  result = 0;
  ++*(a1 + 1900);
  return result;
}

uint64_t ixgbe_check_for_ack_vf(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_check_for_ack_vf", 216, "ixgbe_check_for_ack_vf");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x2FCuLL, &readData);
  __dmb(1u);
  v2 = *(a1 + 1916);
  v3 = v2 | readData;
  *(a1 + 1916) = v2 & 0xFFFFFFDF | readData & 0x90;
  if ((v3 & 0x20) == 0)
  {
    return 4294967196;
  }

  result = 0;
  ++*(a1 + 1896);
  return result;
}

uint64_t ixgbe_check_for_rst_vf(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_check_for_rst_vf", 238, "ixgbe_check_for_rst_vf");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x2FCuLL, &readData);
  __dmb(1u);
  v2 = *(a1 + 1916);
  v3 = v2 | readData;
  *(a1 + 1916) = v2 & 0xFFFFFF3F | readData & 0x30;
  if ((v3 & 0xC0) == 0)
  {
    return 4294967196;
  }

  result = 0;
  ++*(a1 + 1904);
  return result;
}

uint64_t ixgbe_init_mbx_params_pf(uint64_t result)
{
  v1 = *(result + 696);
  v2 = v1 > 8;
  v3 = (1 << v1) & 0x1D4;
  if (!v2 && v3 != 0)
  {
    *(result + 1912) = 0;
    *(result + 1920) = 16;
    *(result + 1832) = ixgbe_read_mbx_pf;
    *(result + 1840) = ixgbe_write_mbx_pf;
    *(result + 1848) = ixgbe_read_posted_mbx;
    *(result + 1856) = ixgbe_write_posted_mbx;
    *(result + 1864) = ixgbe_check_for_msg_pf;
    *(result + 1872) = ixgbe_check_for_ack_pf;
    *(result + 1880) = ixgbe_check_for_rst_pf;
    *(result + 1904) = 0;
    *(result + 1896) = 0;
    *(result + 1888) = 0;
  }

  return result;
}

uint64_t ixgbe_read_mbx_pf(uint64_t a1, uint32_t *a2, int a3, unsigned int a4)
{
  LODWORD(v5) = a3;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_mbx_pf", 569, "ixgbe_read_mbx_pf");
  }

  v8 = ixgbe_obtain_mbx_lock_pf(a1, a4);
  if (!v8)
  {
    v9 = a4;
    if (v5)
    {
      v10 = (a4 << 6) + 77824;
      v5 = v5;
      do
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, v10, &readData);
        __dmb(1u);
        *a2++ = readData;
        v10 += 4;
        --v5;
      }

      while (v5);
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 4 * v9 + 19200, 2u);
    ++*(a1 + 1892);
  }

  return v8;
}

uint64_t ixgbe_write_mbx_pf(uint64_t a1, uint32_t *a2, int a3, unsigned int a4)
{
  LODWORD(v5) = a3;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_mbx_pf", 526, "ixgbe_write_mbx_pf");
  }

  v8 = ixgbe_obtain_mbx_lock_pf(a1, a4);
  if (!v8)
  {
    ixgbe_check_for_msg_pf(a1, a4);
    ixgbe_check_for_ack_pf(a1, a4);
    v9 = a4;
    if (v5)
    {
      v10 = (a4 << 6) + 77824;
      v5 = v5;
      do
      {
        __dmb(2u);
        v11 = *a2++;
        IOPCIDevice::MemoryWrite32(*a1, 0, v10, v11);
        v10 += 4;
        --v5;
      }

      while (v5);
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 4 * v9 + 19200, 1u);
    ++*(a1 + 1888);
  }

  return v8;
}

uint64_t ixgbe_check_for_msg_pf(uint64_t a1, unsigned int a2)
{
  v3 = a2 >> 4;
  v4 = a2 & 0xF;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_check_for_msg_pf", 408, "ixgbe_check_for_msg_pf");
  }

  result = ixgbe_check_for_bit_pf(a1, 1 << v4, v3);
  if (result)
  {
    return 4294967196;
  }

  ++*(a1 + 1900);
  return result;
}

uint64_t ixgbe_check_for_ack_pf(uint64_t a1, unsigned int a2)
{
  v3 = a2 >> 4;
  v4 = a2 & 0xF;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_check_for_ack_pf", 432, "ixgbe_check_for_ack_pf");
  }

  result = ixgbe_check_for_bit_pf(a1, 0x10000 << v4, v3);
  if (result)
  {
    return 4294967196;
  }

  ++*(a1 + 1896);
  return result;
}

uint64_t ixgbe_check_for_rst_pf(uint64_t a1, unsigned int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_check_for_rst_pf", 457, "ixgbe_check_for_rst_pf");
  }

  v4 = a2 & 0x1F;
  v5 = *(a1 + 696);
  if ((v5 - 6) < 3 || v5 == 4)
  {
    readData = 0;
    if (a2 <= 0x1F)
    {
      v7 = 1792;
    }

    else
    {
      v7 = 1796;
    }

    IOPCIDevice::MemoryRead32(*a1, 0, v7, &readData);
    __dmb(1u);
    v8 = readData;
  }

  else if (v5 == 2)
  {
    v13 = 0;
    if (a2 <= 0x1F)
    {
      v11 = 1536;
    }

    else
    {
      v11 = 448;
    }

    IOPCIDevice::MemoryRead32(*a1, 0, v11, &v13);
    __dmb(1u);
    v8 = v13;
  }

  else
  {
    v8 = 0;
  }

  if ((v8 & (1 << v4)) == 0)
  {
    return 4294967196;
  }

  __dmb(2u);
  if (a2 <= 0x1F)
  {
    v9 = 1792;
  }

  else
  {
    v9 = 1796;
  }

  IOPCIDevice::MemoryWrite32(*a1, 0, v9, 1 << v4);
  result = 0;
  ++*(a1 + 1904);
  return result;
}

uint64_t ixgbe_obtain_mbx_lock_vf(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_obtain_mbx_lock_vf", 259, "ixgbe_obtain_mbx_lock_vf");
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x2FCuLL, 4u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x2FCuLL, &readData);
  __dmb(1u);
  v2 = *(a1 + 1916);
  v3 = v2 | readData;
  *(a1 + 1916) = v2 | readData & 0xB0;
  if ((v3 & 4) != 0)
  {
    return 0;
  }

  else
  {
    return 4294967196;
  }
}

uint64_t ixgbe_obtain_mbx_lock_pf(IOPCIDevice **a1, int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_obtain_mbx_lock_pf", 494, "ixgbe_obtain_mbx_lock_pf");
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, (4 * a2 + 19200), 8u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, (4 * a2 + 19200), &readData);
  result = 0;
  __dmb(1u);
  if ((readData & 8) == 0)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Failed to obtain mailbox lock for VF%d\n", "ixgbe_obtain_mbx_lock_pf", 505, a2);
    }

    return 4294967196;
  }

  return result;
}

uint64_t ixgbe_check_for_bit_pf(IOPCIDevice **a1, uint32_t a2, int a3)
{
  readData = 0;
  v5 = (4 * a3 + 1808);
  IOPCIDevice::MemoryRead32(*a1, 0, v5, &readData);
  __dmb(1u);
  if ((readData & a2) == 0)
  {
    return 4294967196;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, v5, a2);
  return 0;
}

uint64_t ixgbe_dcb_get_tc_stats_82598(IOPCIDevice **a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_dcb_get_tc_stats_82598", 19, "dcb_get_tc_stats");
  }

  if (v3 > 8)
  {
    return 4294967291;
  }

  if (v3)
  {
    v7 = (a2 + 728);
    v8 = 24624;
    v9 = 4148;
    v3 = v3;
    do
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v8, &readData);
      __dmb(1u);
      v7[16] += readData;
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v8 + 4, &readData);
      __dmb(1u);
      v7[48] += readData;
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v8 - 20480, &readData);
      __dmb(1u);
      *v7 += readData;
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v9, &readData);
      __dmb(1u);
      v7[32] += readData;
      v8 += 64;
      v9 += 64;
      ++v7;
      --v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t ixgbe_dcb_get_pfc_stats_82598(IOPCIDevice **a1, uint64_t a2, unsigned int a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_dcb_get_pfc_stats_82598", 61, "dcb_get_pfc_stats");
  }

  if (a3 > 8)
  {
    return 4294967291;
  }

  if (a3)
  {
    v7 = (a2 + 352);
    v8 = a3;
    v9 = 53024;
    do
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v9 - 36864, &readData);
      __dmb(1u);
      *(v7 - 8) += readData;
      v10 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v9, &v10);
      __dmb(1u);
      *v7++ += v10;
      v9 += 4;
      --v8;
    }

    while (v8);
  }

  return 0;
}

uint64_t ixgbe_dcb_config_rx_arbiter_82598(IOPCIDevice **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x50A0uLL, &readData);
  __dmb(1u);
  v8 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x50A0uLL, v8 | 0x80000000);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x3D00uLL, &readData);
  __dmb(1u);
  v9 = readData & 0xFFFFFFBF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x3D00uLL, v9 | 6);
  v10 = 0;
  v11 = 15392;
  do
  {
    if (*(a4 + v10) == 2)
    {
      v12 = *(a2 + 2 * v10) | (*(a3 + 2 * v10) << 12) | 0x80000000;
    }

    else
    {
      v12 = *(a2 + 2 * v10) | (*(a3 + 2 * v10) << 12);
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v11, v12);
    ++v10;
    v11 += 4;
  }

  while (v10 != 8);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x2F00uLL, &readData);
  __dmb(1u);
  v13 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x2F00uLL, v13 | 0x50);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x3000uLL, &readData);
  __dmb(1u);
  v14 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x3000uLL, v14 & 0xFFFFFFFD);
  return 0;
}

uint64_t ixgbe_dcb_config_tx_desc_arbiter_82598(IOPCIDevice **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x7F40uLL, &readData);
  __dmb(1u);
  v10 = readData & 0xFFFFFFBF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x7F40uLL, v10 | 0xC0000);
  v11 = 0;
  v12 = 24620;
  do
  {
    v13 = *(a2 + 2 * v11) | (*(a3 + 2 * v11) << 12) | (*(a4 + v11) << 9);
    v14 = *(a5 + v11);
    if (v14 == 1)
    {
      v13 |= 0x40000000u;
    }

    if (v14 == 2)
    {
      v15 = v13 | 0x80000000;
    }

    else
    {
      v15 = v13;
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v12, v15);
    ++v11;
    v12 += 64;
  }

  while (v11 != 8);
  return 0;
}

uint64_t ixgbe_dcb_config_tx_data_arbiter_82598(IOPCIDevice **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0xCD00uLL, &readData);
  __dmb(1u);
  v10 = readData & 0xFFFFFFBF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xCD00uLL, v10 | 0x120);
  v11 = 0;
  v12 = 52512;
  do
  {
    v13 = *(a2 + 2 * v11) | (*(a3 + 2 * v11) << 12) | (*(a4 + v11) << 9);
    v14 = *(a5 + v11);
    if (v14 == 1)
    {
      v13 |= 0x40000000u;
    }

    if (v14 == 2)
    {
      v15 = v13 | 0x80000000;
    }

    else
    {
      v15 = v13;
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v12, v15);
    ++v11;
    v12 += 4;
  }

  while (v11 != 8);
  v18 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x7E00uLL, &v18);
  __dmb(1u);
  v16 = v18;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x7E00uLL, v16 | 4);
  return 0;
}

uint64_t ixgbe_dcb_config_pfc_82598(uint64_t a1, unsigned int a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x3D00uLL, &readData);
  __dmb(1u);
  v4 = readData & 0xFFFFFFE7;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x3D00uLL, v4 | 0x10);
  v16 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x5080uLL, &v16);
  __dmb(1u);
  if (a2)
  {
    v5 = v16 & 0xFFFF3FFF | 0x4000;
  }

  else
  {
    v5 = v16 & 0xFFFF3FFF;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x5080uLL, v5);
  v6 = 0;
  v7 = 0;
  v8 = (a1 + 1364);
  do
  {
    if ((a2 >> v7))
    {
      v9 = *v8 << 10;
      v10 = (*(v8 - 8) << 10) | 0x80000000;
      __dmb(2u);
      v11 = 8 * v7;
      IOPCIDevice::MemoryWrite32(*a1, 0, v6 + 12832, v9 | 0x80000000);
      __dmb(2u);
    }

    else
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v6 + 12832, 0);
      v10 = 0;
      __dmb(2u);
      v11 = v6;
    }

    IOPCIDevice::MemoryWrite32(*a1, 0, v11 + 12896, v10);
    ++v7;
    ++v8;
    v6 += 8;
  }

  while (v7 != 8);
  v12 = *(a1 + 1396) | (*(a1 + 1396) << 16);
  v13 = 12800;
  v14 = 4;
  do
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v13, v12);
    v13 += 4;
    --v14;
  }

  while (v14);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x32A0uLL, *(a1 + 1396) >> 1);
  return 0;
}

uint64_t ixgbe_dcb_config_tc_stats_82598(IOPCIDevice **a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 8;
  do
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (4 * v3) | 0x2300u, &readData);
    __dmb(1u);
    v5 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, (4 * v3) | 0x2300u, v5 | v2);
    v13 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (4 * v3 + 8964), &v13);
    __dmb(1u);
    v6 = v13;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, (4 * v3 + 8964), v6 | v2);
    v3 = (v3 + 2);
    v2 += 16843009;
    --v4;
  }

  while (v4);
  v7 = 0;
  v8 = 29440;
  v9 = 8;
  do
  {
    v12 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, v8, &v12);
    __dmb(1u);
    v10 = v12;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v8, v10 | v7);
    v7 += 16843009;
    v8 += 4;
    --v9;
  }

  while (v9);
  return 0;
}

uint64_t ixgbe_dcb_hw_config_82598(IOPCIDevice **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ixgbe_dcb_config_rx_arbiter_82598(a1, a3, a4, a6);
  ixgbe_dcb_config_tx_desc_arbiter_82598(a1, a3, a4, a5, a6);
  ixgbe_dcb_config_tx_data_arbiter_82598(a1, a3, a4, a5, a6);
  ixgbe_dcb_config_tc_stats_82598(a1);
  return 0;
}

uint64_t DriverKit_AppleEthernetIXGBEMetaClass::New(DriverKit_AppleEthernetIXGBEMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100038B28;
  a2->OSObjectInterface::__vftable = off_100038CB8;
  *&a2[1].refcount = &off_100038CD8;
  return 0;
}

uint64_t DriverKit_AppleEthernetIXGBE::_Dispatch(IOUserNetworkEthernet *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid <= 0xE77A9AA5DB9C706BLL)
  {
    if (msgid <= 0xB23EE0228705FB94)
    {
      switch(msgid)
      {
        case 0x98E715041C459FA5:
          v11 = *a2;
          return IOService::Stop_Invoke(&v11, this, DriverKit_AppleEthernetIXGBE::Stop_Impl);
        case 0xA49568F23EE8EFD5:
          v11 = *a2;
          return IOUserNetworkEthernet::GetMaxTransferUnit_Invoke(&v11, this, DriverKit_AppleEthernetIXGBE::GetMaxTransferUnit_Impl);
        case 0xAB6F76DDE6D693F2:
          v11 = *a2;
          return IOService::Start_Invoke(&v11, this, DriverKit_AppleEthernetIXGBE::Start_Impl);
      }

      goto LABEL_48;
    }

    if (msgid > 0xE042A87972611224)
    {
      if (msgid == 0xE042A87972611225)
      {
        if (!OSMetaClassBase::IsRemote(this))
        {
          v11 = *a2;
          return IOUserNetworkEthernet::SetAllMulticastModeEnable_Invoke(&v11, this, DriverKit_AppleEthernetIXGBE::SetAllMulticastModeEnable_Impl);
        }

        goto LABEL_46;
      }

      if (msgid != 0xE072FCC26CF639ACLL)
      {
        goto LABEL_48;
      }

      if (!OSMetaClassBase::IsRemote(this))
      {
        v11 = *a2;
        return IOUserNetworkEthernet::SetPromiscuousModeEnable_Invoke(&v11, this, DriverKit_AppleEthernetIXGBE::SetPromiscuousModeEnable_Impl);
      }
    }

    else
    {
      if (msgid == 0xB23EE0228705FB95)
      {
        if (!OSMetaClassBase::IsRemote(this))
        {
          v11 = *a2;
          return IOUserNetworkEthernet::SetWakeOnMagicPacketEnable_Invoke(&v11, this, DriverKit_AppleEthernetIXGBE::SetWakeOnMagicPacketEnable_Impl);
        }

        goto LABEL_46;
      }

      if (msgid != 0xC3E63AC546EBD1FELL)
      {
        goto LABEL_48;
      }

      if (!OSMetaClassBase::IsRemote(this))
      {
        v11 = *a2;
        return IOUserNetworkEthernet::SelectMediaType_Invoke(&v11, this, DriverKit_AppleEthernetIXGBE::SelectMediaType_Impl);
      }
    }
  }

  else
  {
    if (msgid <= 0x293D4E9DE6CD31DFLL)
    {
      if (msgid <= 0xF421A9D80F9A1FD9)
      {
        if (msgid == 0xE77A9AA5DB9C706CLL)
        {
          v11 = *a2;
          return IOUserNetworkEthernet::GetHardwareAssists_Invoke(&v11, this, DriverKit_AppleEthernetIXGBE::GetHardwareAssists_Impl);
        }

        if (msgid == 0xED7CE2CA0DF8ED0ELL)
        {
          v11 = *a2;
          return IOUserNetworkEthernet::SetMTU_Invoke(&v11, this, DriverKit_AppleEthernetIXGBE::SetMTU_Impl);
        }

        goto LABEL_48;
      }

      if (msgid == 0xF421A9D80F9A1FDALL)
      {
        if (!OSMetaClassBase::IsRemote(this))
        {
          v11 = *a2;
          return IOUserNetworkEthernet::SetInterfaceEnable_Invoke(&v11, this, DriverKit_AppleEthernetIXGBE::SetInterfaceEnable_Impl);
        }

        goto LABEL_46;
      }

      if (msgid == 0xFF064BE82B35CC0)
      {
        if (!OSMetaClassBase::IsRemote(this))
        {
          v11 = *a2;
          return IOTimerDispatchSource::TimerOccurred_Invoke(&v11, this, DriverKit_AppleEthernetIXGBE::WatchdogTimerOccurred_Impl, gOSAction_DriverKit_AppleEthernetIXGBE_WatchdogTimerOccurredMetaClass);
        }

        goto LABEL_46;
      }

LABEL_48:
      v11 = *a2;
      return IOUserNetworkEthernet::_Dispatch(this, &v11);
    }

    if (msgid > 0x617E0E64AAB61C2DLL)
    {
      if (msgid == 0x617E0E64AAB61C2ELL)
      {
        if (OSMetaClassBase::IsRemote(this))
        {
          goto LABEL_46;
        }

        v11 = *a2;
        v9 = gOSAction_DriverKit_AppleEthernetIXGBE_TxSubmitMetaClass;
        v10 = DriverKit_AppleEthernetIXGBE::TxSubmit_Impl;
      }

      else
      {
        if (msgid != 0x6256EB720E3510EFLL)
        {
          goto LABEL_48;
        }

        if (OSMetaClassBase::IsRemote(this))
        {
          goto LABEL_46;
        }

        v11 = *a2;
        v9 = gOSAction_DriverKit_AppleEthernetIXGBE_RxSubmitMetaClass;
        v10 = DriverKit_AppleEthernetIXGBE::RxSubmit_Impl;
      }

      return IODataQueueDispatchSource::DataAvailable_Invoke(&v11, this, v10, v9);
    }

    if (msgid == 0x293D4E9DE6CD31E0)
    {
      if (!OSMetaClassBase::IsRemote(this))
      {
        v11 = *a2;
        v7 = gOSAction_DriverKit_AppleEthernetIXGBE_QueueInterruptMetaClass;
        v8 = DriverKit_AppleEthernetIXGBE::QueueInterrupt_Impl;
        return IOInterruptDispatchSource::InterruptOccurred_Invoke(&v11, this, v8, v7);
      }
    }

    else
    {
      if (msgid != 0x564B1E9BB6CAC97ELL)
      {
        goto LABEL_48;
      }

      if (!OSMetaClassBase::IsRemote(this))
      {
        v11 = *a2;
        v7 = gOSAction_DriverKit_AppleEthernetIXGBE_OtherInterruptMetaClass;
        v8 = DriverKit_AppleEthernetIXGBE::OtherInterrupt_Impl;
        return IOInterruptDispatchSource::InterruptOccurred_Invoke(&v11, this, v8, v7);
      }
    }
  }

LABEL_46:
  v11 = *a2;
  return OSMetaClassBase::Dispatch(this, &v11);
}

uint64_t DriverKit_AppleEthernetIXGBEMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t DriverKit_AppleEthernetIXGBE::CreateActionQueueInterrupt(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetIXGBE_QueueInterrupt");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x293D4E9DE6CD31E0uLL, 0xCE0513291CFA1EE1, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t DriverKit_AppleEthernetIXGBE::CreateActionOtherInterrupt(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetIXGBE_OtherInterrupt");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x564B1E9BB6CAC97EuLL, 0xCE0513291CFA1EE1, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t DriverKit_AppleEthernetIXGBE::CreateActionTxSubmit(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetIXGBE_TxSubmit");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x617E0E64AAB61C2EuLL, 0xF799C876BAF566F3, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t DriverKit_AppleEthernetIXGBE::CreateActionRxSubmit(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetIXGBE_RxSubmit");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x6256EB720E3510EFuLL, 0xF799C876BAF566F3, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t DriverKit_AppleEthernetIXGBE::CreateActionWatchdogTimerOccurred(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetIXGBE_WatchdogTimerOccurred");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0xFF064BE82B35CC0uLL, 0xF4AB1C3CBB5AE47uLL, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_QueueInterruptMetaClass::New(OSAction_DriverKit_AppleEthernetIXGBE_QueueInterruptMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100038E70;
  a2->OSObjectInterface::__vftable = &off_100038EB8;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_QueueInterrupt::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_QueueInterrupt::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_QueueInterruptMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_OtherInterruptMetaClass::New(OSAction_DriverKit_AppleEthernetIXGBE_OtherInterruptMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100038F18;
  a2->OSObjectInterface::__vftable = &off_100038F60;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_OtherInterrupt::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_OtherInterrupt::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_OtherInterruptMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_TxSubmitMetaClass::New(OSAction_DriverKit_AppleEthernetIXGBE_TxSubmitMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100038FC0;
  a2->OSObjectInterface::__vftable = &off_100039008;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_TxSubmit::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_TxSubmit::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_TxSubmitMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_RxSubmitMetaClass::New(OSAction_DriverKit_AppleEthernetIXGBE_RxSubmitMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100039068;
  a2->OSObjectInterface::__vftable = &off_1000390B0;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_RxSubmit::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_RxSubmit::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_RxSubmitMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_WatchdogTimerOccurredMetaClass::New(OSAction_DriverKit_AppleEthernetIXGBE_WatchdogTimerOccurredMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100039110;
  a2->OSObjectInterface::__vftable = &off_100039158;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_WatchdogTimerOccurred::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_WatchdogTimerOccurred::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetIXGBE_WatchdogTimerOccurredMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

void DriverKit_AppleEthernetIXGBE::Start_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
  }
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 36, "!Start(provider, SUPERDISPATCH)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 37, "!CopyDispatchQueue(Default, &ivars->dispatch_queue)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 38, "!IODispatchQueue::Create(interrupt, 0, 0, &ivars->intrpt_disp_q)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 39, "!SetDispatchQueue(interrupt, ivars->intrpt_disp_q)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 45, "!IOTimerDispatchSource::Create(ivars->intrpt_disp_q, &ivars->wdTimerSource)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 46, "!CreateActionWatchdogTimerOccurred(sizeof(void*), &action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 47, "!ivars->wdTimerSource->SetHandler(action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 51, "!IOInterruptDispatchSource::GetInterruptType(pciDev, 0, &interruptType)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 56, "!IOInterruptDispatchSource::Create(pciDev, vector, ivars->intrpt_disp_q, &ivars->intSource[i])");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 57, "!CreateActionOtherInterrupt(sizeof(void*), &action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 58, "!ivars->intSource[0]->SetHandler(action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 59, "!ivars->intSource[0]->SetEnable(true)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 63, "!IOInterruptDispatchSource::Create(pciDev, vector, ivars->intrpt_disp_q, &ivars->intSource[i])");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 64, "!CreateActionQueueInterrupt(sizeof(void*), &action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 65, "!ivars->intSource[1]->SetHandler(action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 66, "!ivars->intSource[1]->SetEnable(true)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 68, "!pciDev->Open(this, 0)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_AppleEthernetIXGBE.cpp", 28, "pciDev");
}

void DriverKit_AppleEthernetIXGBE::SetInterfaceEnable_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
  }
}

void DriverKit_AppleEthernetIXGBE::SetInterfaceEnable_Impl(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    v2 = *(*a1 + 24);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v3, v4, v5, v6, v7, 0x1Eu);
  }
}

void DriverKit_AppleEthernetIXGBE::SetAllMulticastModeEnable_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
  }
}

void DriverKit_AppleEthernetIXGBE::SelectMediaType_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Eu);
  }
}

void DriverKit_AppleEthernetIXGBE::RxSubmit_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetIXGBE::SetWakeOnMagicPacketEnable_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::otherIntrHandler(int a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_11();
    v4 = 14;
    v5 = v2;
    v6 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixgbe: [%x] %s(%d): - eicr=0x%08x\n", v3, 0x1Eu);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::otherIntrHandler()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_3_0(&_mh_execute_header, &_os_log_default, v0, "ixgbe: [%x] %s(%d): CRITICAL: ECC ERROR!!\n", v1, v2, v3, v4, 2u);
  }
}

{
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  OUTLINED_FUNCTION_2_0();
  if (!v2)
  {
    goto LABEL_39;
  }

  if (*v0)
  {
    IODispatchQueue::OnQueue(*v0);
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    IODispatchQueue::OnQueue(v3);
    OUTLINED_FUNCTION_4();
  }

  v4 = OUTLINED_FUNCTION_16();
  if (v4)
  {
    IODispatchQueue::OnQueue(v4);
    OUTLINED_FUNCTION_7();
  }

  v5 = OUTLINED_FUNCTION_14();
  if (v5)
  {
    IODispatchQueue::OnQueue(v5);
    OUTLINED_FUNCTION_3();
  }

  v6 = OUTLINED_FUNCTION_15();
  if (v6)
  {
    IODispatchQueue::OnQueue(v6);
    OUTLINED_FUNCTION_5();
  }

  v7 = OUTLINED_FUNCTION_13();
  if (v7)
  {
    IODispatchQueue::OnQueue(v7);
    OUTLINED_FUNCTION_9();
  }

  v8 = OUTLINED_FUNCTION_12();
  if (v8)
  {
    IODispatchQueue::OnQueue(v8);
    OUTLINED_FUNCTION_8();
  }

  v9 = OUTLINED_FUNCTION_11_0();
  if (v9)
  {
    IODispatchQueue::OnQueue(v9);
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0(&_mh_execute_header, &_os_log_default, v10, "ixgbe: [%x] %s(%d): CRITICAL: OVER TEMP!! PHY IS SHUT DOWN!!\n", v11, v12, v13, v14, v27);
  if ((pcindkll & 0x10) != 0)
  {
LABEL_39:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if (*v0)
      {
        IODispatchQueue::OnQueue(*v0);
      }

      v15 = *(v1 + 8);
      if (v15)
      {
        IODispatchQueue::OnQueue(v15);
        OUTLINED_FUNCTION_4();
      }

      v16 = OUTLINED_FUNCTION_16();
      if (v16)
      {
        IODispatchQueue::OnQueue(v16);
        OUTLINED_FUNCTION_7();
      }

      v17 = OUTLINED_FUNCTION_14();
      if (v17)
      {
        IODispatchQueue::OnQueue(v17);
        OUTLINED_FUNCTION_3();
      }

      v18 = OUTLINED_FUNCTION_15();
      if (v18)
      {
        IODispatchQueue::OnQueue(v18);
        OUTLINED_FUNCTION_5();
      }

      v19 = OUTLINED_FUNCTION_13();
      if (v19)
      {
        IODispatchQueue::OnQueue(v19);
        OUTLINED_FUNCTION_9();
      }

      v20 = OUTLINED_FUNCTION_12();
      if (v20)
      {
        IODispatchQueue::OnQueue(v20);
        OUTLINED_FUNCTION_8();
      }

      v21 = OUTLINED_FUNCTION_11_0();
      if (v21)
      {
        IODispatchQueue::OnQueue(v21);
        OUTLINED_FUNCTION_6();
      }

      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_3_0(&_mh_execute_header, &_os_log_default, v22, "ixgbe: [%x] %s(%d): System shutdown required!\n", v23, v24, v25, v26, v27);
    }
  }
}

{
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  OUTLINED_FUNCTION_2_0();
  if (!v2)
  {
    goto LABEL_39;
  }

  if (*v0)
  {
    IODispatchQueue::OnQueue(*v0);
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    IODispatchQueue::OnQueue(v3);
    OUTLINED_FUNCTION_4();
  }

  v4 = OUTLINED_FUNCTION_16();
  if (v4)
  {
    IODispatchQueue::OnQueue(v4);
    OUTLINED_FUNCTION_7();
  }

  v5 = OUTLINED_FUNCTION_14();
  if (v5)
  {
    IODispatchQueue::OnQueue(v5);
    OUTLINED_FUNCTION_3();
  }

  v6 = OUTLINED_FUNCTION_15();
  if (v6)
  {
    IODispatchQueue::OnQueue(v6);
    OUTLINED_FUNCTION_5();
  }

  v7 = OUTLINED_FUNCTION_13();
  if (v7)
  {
    IODispatchQueue::OnQueue(v7);
    OUTLINED_FUNCTION_9();
  }

  v8 = OUTLINED_FUNCTION_12();
  if (v8)
  {
    IODispatchQueue::OnQueue(v8);
    OUTLINED_FUNCTION_8();
  }

  v9 = OUTLINED_FUNCTION_11_0();
  if (v9)
  {
    IODispatchQueue::OnQueue(v9);
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_0(&_mh_execute_header, &_os_log_default, v10, "ixgbe: [%x] %s(%d): CRITICAL: OVER TEMP!! PHY IS SHUT DOWN!!\n", v11, v12, v13, v14, v27);
  if ((pcindkll & 0x10) != 0)
  {
LABEL_39:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if (*v0)
      {
        IODispatchQueue::OnQueue(*v0);
      }

      v15 = *(v1 + 8);
      if (v15)
      {
        IODispatchQueue::OnQueue(v15);
        OUTLINED_FUNCTION_4();
      }

      v16 = OUTLINED_FUNCTION_16();
      if (v16)
      {
        IODispatchQueue::OnQueue(v16);
        OUTLINED_FUNCTION_7();
      }

      v17 = OUTLINED_FUNCTION_14();
      if (v17)
      {
        IODispatchQueue::OnQueue(v17);
        OUTLINED_FUNCTION_3();
      }

      v18 = OUTLINED_FUNCTION_15();
      if (v18)
      {
        IODispatchQueue::OnQueue(v18);
        OUTLINED_FUNCTION_5();
      }

      v19 = OUTLINED_FUNCTION_13();
      if (v19)
      {
        IODispatchQueue::OnQueue(v19);
        OUTLINED_FUNCTION_9();
      }

      v20 = OUTLINED_FUNCTION_12();
      if (v20)
      {
        IODispatchQueue::OnQueue(v20);
        OUTLINED_FUNCTION_8();
      }

      v21 = OUTLINED_FUNCTION_11_0();
      if (v21)
      {
        IODispatchQueue::OnQueue(v21);
        OUTLINED_FUNCTION_6();
      }

      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_3_0(&_mh_execute_header, &_os_log_default, v22, "ixgbe: [%x] %s(%d): System shutdown required!\n", v23, v24, v25, v26, v27);
    }
  }
}

void ixgbe_update_mc_addr_list_vf()
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_mta_vector", 282, "MC filter type param set incorrectly\n");
  }

  __assert_rtn("ixgbe_mta_vector", "ixgbe_vf.c", 283, "0");
}

void DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x28u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    *(a1 + 2760);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x28u);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::getSupportedMediaArray()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::selMed()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Eu);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::selMed(_BYTE *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x18u);
  }

  *a1 = 0;
}

void DriverKit_AppleEthernetIXGBE_IVars::handleChosenMedia()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Eu);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::probe(uint64_t a1, _DWORD *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v3, v4, v5, v6, v7, 0x1Eu);
  }

  *a2 = -536870208;
}

void DriverKit_AppleEthernetIXGBE_IVars::probe(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    v2 = *(a1 + 8);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v3, v4, v5, v6, v7, 0x22u);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::start()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::configGPIE()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Eu);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::disableIntrs()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::initReceiveUnit()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Eu);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::initTransmitUnit()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Eu);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::up(int a1, _DWORD *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v4, v5, v6, v7, v8, 0x1Eu);
  }

  *a2 = a1;
}

void DriverKit_AppleEthernetIXGBE_IVars::up(_DWORD *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x18u);
  }

  *a1 = -536870212;
}

void DriverKit_AppleEthernetIXGBE_IVars::down()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Eu);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::setPromiscuousModeEnable()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Eu);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::setAllMulticastModeEnable()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Eu);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::setMcastAddresses()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Eu);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::setMcastAddresses(unsigned char *,unsigned int)::$_0::__invoke(unsigned __int8 *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    v7 = *a1;
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    v11 = a1[4];
    v12 = a1[5];
    OUTLINED_FUNCTION_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x3Cu);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::allocRing(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    v2 = *(a1 + 280);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v3, "ixgbe: [%x] %s(%d): <== ringsize=%d\n", v4, v5, v6, v7, v8);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::allocRing()
{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x18u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x18u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x18u);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x18u);
  }

  *v0 = v1;
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v0, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v1, v2, v3, v4, v5);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::allocateRings()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v0, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v1, v2, v3, v4, v5);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::startInterface()
{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v2, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v3, v4, v5, v6, v7);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v2, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v3, v4, v5, v6, v7);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v2, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v3, v4, v5, v6, v7);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v2, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v3, v4, v5, v6, v7);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v2, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v3, v4, v5, v6, v7);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v2, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v3, v4, v5, v6, v7);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v2, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v3, v4, v5, v6, v7);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v2, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v3, v4, v5, v6, v7);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v2, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v3, v4, v5, v6, v7);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v2, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v3, v4, v5, v6, v7);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v2, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v3, v4, v5, v6, v7);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v2, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v3, v4, v5, v6, v7);
  }

  *v0 = v1;
}

{
  OUTLINED_FUNCTION_15_0();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v2, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v3, v4, v5, v6, v7);
  }

  *v0 = v1;
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v0, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v1, v2, v3, v4, v5);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::enable()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      IODispatchQueue::OnQueue(__dq);
    }

    if (qword_10003C008)
    {
      IODispatchQueue::OnQueue(qword_10003C008);
      OUTLINED_FUNCTION_4();
    }

    if (qword_10003C010)
    {
      IODispatchQueue::OnQueue(qword_10003C010);
      OUTLINED_FUNCTION_7();
    }

    if (qword_10003C018)
    {
      IODispatchQueue::OnQueue(qword_10003C018);
      OUTLINED_FUNCTION_3();
    }

    if (qword_10003C020)
    {
      IODispatchQueue::OnQueue(qword_10003C020);
      OUTLINED_FUNCTION_5();
    }

    if (qword_10003C028)
    {
      IODispatchQueue::OnQueue(qword_10003C028);
      OUTLINED_FUNCTION_9();
    }

    if (qword_10003C030)
    {
      IODispatchQueue::OnQueue(qword_10003C030);
      OUTLINED_FUNCTION_8();
    }

    if (qword_10003C038)
    {
      IODispatchQueue::OnQueue(qword_10003C038);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_6_0(&_mh_execute_header, &_os_log_default, v0, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", v1, v2, v3, v4, v5);
  }
}

void ixgbe_set_mta()
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_mta_vector", 2639, "MC filter type param set incorrectly\n");
  }

  __assert_rtn("ixgbe_mta_vector", "ixgbe_common.c", 2640, "0");
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