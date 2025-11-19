uint64_t ixgbe_dcb_config_rx_arbiter_82599(IOPCIDevice **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x2430uLL, 0x46u);
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = *a6++;
    v13 |= v14 << v12;
    v12 += 3;
  }

  while (v12 != 24);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x3020uLL, v13);
  v15 = 0;
  v16 = 8512;
  do
  {
    if (*(a5 + v15) == 2)
    {
      v17 = *(a2 + 2 * v15) | (*(a3 + 2 * v15) << 12) | (*(a4 + v15) << 9) | 0x80000000;
    }

    else
    {
      v17 = *(a2 + 2 * v15) | (*(a3 + 2 * v15) << 12) | (*(a4 + v15) << 9);
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v16, v17);
    ++v15;
    v16 += 4;
  }

  while (v15 != 8);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x2430uLL, 6u);
  return 0;
}

uint64_t ixgbe_dcb_config_tx_desc_arbiter_82599(IOPCIDevice **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  for (i = 0; i != 128; ++i)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x4904uLL, i);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x4908uLL, 0);
  }

  v11 = 0;
  v12 = 18704;
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
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x4900uLL, 0x11u);
  return 0;
}

uint64_t ixgbe_dcb_config_tx_data_arbiter_82599(IOPCIDevice **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xCD00uLL, 0x1000160u);
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = *a6++;
    v13 |= v14 << v12;
    v12 += 3;
  }

  while (v12 != 24);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xC800uLL, v13);
  v15 = 0;
  v16 = 52512;
  do
  {
    v17 = *(a2 + 2 * v15) | (*(a3 + 2 * v15) << 12) | (*(a4 + v15) << 9);
    v18 = *(a5 + v15);
    if (v18 == 1)
    {
      v17 |= 0x40000000u;
    }

    if (v18 == 2)
    {
      v19 = v17 | 0x80000000;
    }

    else
    {
      v19 = v17;
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v16, v19);
    ++v15;
    v16 += 4;
  }

  while (v15 != 8);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0xCD00uLL, 0x1000120u);
  return 0;
}

uint64_t ixgbe_dcb_config_pfc_82599(uint64_t a1, unsigned int a2, uint8x8_t *a3)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x3D00uLL, 0x10u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4294uLL, &readData);
  __dmb(1u);
  v6 = readData & 0xFFFFF001;
  if (*(a1 + 696) <= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16 * a2;
  }

  if (a2)
  {
    v8 = 6;
  }

  else
  {
    v8 = 2;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x4294uLL, v6 | v8 | v7);
  v9 = 0;
  v10 = vmaxv_u8(*a3);
  v11 = 12900;
  do
  {
    v12 = 0;
    v13 = v9;
    v14 = v11;
    while (v9 != a3->u8[v12] || ((a2 >> v12) & 1) == 0)
    {
      if (++v12 == 8)
      {
        v25 = 0;
        v15 = 4 * v9;
        IOPCIDevice::MemoryRead32(*a1, 0, 4 * v9 + 15360, &v25);
        __dmb(1u);
        v16 = v25 - 24576;
        __dmb(2u);
        v17 = *a1;
        v18 = 4 * v13 + 12832;
        v19 = 0;
        goto LABEL_14;
      }
    }

    v15 = 4 * v9;
    v16 = (*(a1 + 1332 + 4 * v9) << 10) | 0x80000000;
    v20 = *(a1 + 1364 + 4 * v9) << 10;
    __dmb(2u);
    v17 = *a1;
    v18 = 4 * v13 + 12832;
    v19 = v20 | 0x80000000;
LABEL_14:
    IOPCIDevice::MemoryWrite32(v17, 0, v18, v19);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v15 + 12896, v16);
    v9 = v13 + 1;
    v11 = v14 + 4;
  }

  while (v13 != v10);
  if (v13 <= 6)
  {
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v14 - 64, 0);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v14, 0);
      ++v13;
      v14 += 4;
    }

    while (v13 < 7);
  }

  v21 = *(a1 + 1396) | (*(a1 + 1396) << 16);
  v22 = 12800;
  v23 = 4;
  do
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v22, v21);
    v22 += 4;
    --v23;
  }

  while (v23);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x32A0uLL, *(a1 + 1396) >> 1);
  return 0;
}

uint64_t ixgbe_dcb_config_tc_stats_82599(IOPCIDevice **a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 264);
    v4 = *(a2 + 296);
    if (v3 == 4)
    {
      if (*(a2 + 296))
      {
        v12 = 8960;
        v13 = 32;
        do
        {
          __dmb(2u);
          IOPCIDevice::MemoryWrite32(*a1, 0, v12, 0x3020100u);
          v12 += 4;
          --v13;
        }

        while (v13);
        v14 = 34304;
        v15 = 32;
        do
        {
          __dmb(2u);
          IOPCIDevice::MemoryWrite32(*a1, 0, v14, 0x3020100u);
          v14 += 4;
          --v15;
        }

        while (v15);
      }

      else
      {
        v16 = 0;
        v17 = 8960;
        do
        {
          if ((v16 & 4) == 0)
          {
            __dmb(2u);
            IOPCIDevice::MemoryWrite32(*a1, 0, v17, 16843009 * (v16 >> 3));
          }

          ++v16;
          v17 += 4;
        }

        while (v16 != 32);
        v18 = 0;
        v19 = 34304;
        do
        {
          if (v18 >= 0x1C)
          {
            v20 = 50529027;
          }

          else
          {
            v20 = 33686018;
          }

          if (v18 < 0x18)
          {
            v20 = 16843009;
          }

          if (v18 >= 0x10)
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          __dmb(2u);
          IOPCIDevice::MemoryWrite32(*a1, 0, v19, v21);
          ++v18;
          v19 += 4;
        }

        while (v18 != 32);
      }

      return 0;
    }

    if (v3 != 8 || (*(a2 + 296) & 1) != 0)
    {
      return 4294967291;
    }
  }

  v6 = 0;
  v7 = 8960;
  do
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v7, 16843009 * (v6++ >> 2));
    v7 += 4;
  }

  while (v6 != 32);
  v8 = 0;
  v9 = 34304;
  do
  {
    if (v8 >= 0x1E)
    {
      v10 = 117901063;
    }

    else
    {
      v10 = 101058054;
    }

    if (v8 < 0x1C)
    {
      v10 = 84215045;
    }

    if (v8 < 0x1A)
    {
      v10 = 67372036;
    }

    if (v8 < 0x18)
    {
      v10 = 50529027;
    }

    if (v8 < 0x14)
    {
      v10 = 33686018;
    }

    if (v8 < 0x10)
    {
      v10 = 16843009;
    }

    if (v8 >= 8)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v9, v11);
    ++v8;
    v9 += 4;
  }

  while (v8 != 32);
  return 0;
}

uint64_t ixgbe_dcb_config_82599(IOPCIDevice **a1, uint64_t a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4900uLL, &readData);
  __dmb(1u);
  v4 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x4900uLL, v4 | 0x40);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x5818uLL, &readData);
  __dmb(1u);
  v5 = readData;
  v6 = *(a2 + 264);
  if (v6 == 4)
  {
    if (*(a2 + 296) == 1)
    {
      v5 = readData & 0xFFFFFFF0 | 0xD;
    }

    else
    {
      v5 = readData & 0xFFFFFFF0 | 5;
    }

    goto LABEL_14;
  }

  if (v6 == 8)
  {
    v7 = readData & 0xF;
    if (v7 > 2)
    {
      if (v7 == 5)
      {
LABEL_13:
        v5 = readData & 0xFFFFFFF0 | 4;
        goto LABEL_14;
      }

      if (v7 != 3)
      {
        goto LABEL_22;
      }
    }

    else if ((readData & 0xF) != 0)
    {
      if (v7 != 1)
      {
LABEL_22:
        ixgbe_dcb_config_82599();
      }

      goto LABEL_13;
    }

    v5 = readData & 0xFFFFFFF0 | 2;
  }

LABEL_14:
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x5818uLL, v5);
  if (*(a2 + 264) == 8)
  {
    v8 = 13;
  }

  else if (*(a2 + 296))
  {
    v8 = 11;
  }

  else
  {
    v8 = 9;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x8120uLL, v8);
  for (i = 0x10000; i != 98304; i += 256)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x2F04uLL, i);
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4900uLL, &readData);
  __dmb(1u);
  v10 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x4900uLL, v10 & 0xFFFFFFBF);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x8810uLL, &readData);
  __dmb(1u);
  v11 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x8810uLL, v11 | 0x1F00);
  return 0;
}

uint64_t ixgbe_dcb_hw_config_82599(IOPCIDevice **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  ixgbe_dcb_config_rx_arbiter_82599(a1, a3, a4, a5, a6, a7);
  ixgbe_dcb_config_tx_desc_arbiter_82599(a1, a3, a4, a5, a6);
  ixgbe_dcb_config_tx_data_arbiter_82599(a1, a3, a4, a5, a6, a7);
  return 0;
}

uint64_t ixgbe_init_ops_vf(void *a1)
{
  a1[2] = ixgbe_init_hw_vf;
  a1[3] = ixgbe_reset_hw_vf;
  a1[4] = ixgbe_start_hw_vf;
  a1[5] = 0;
  a1[7] = 0;
  a1[9] = ixgbe_get_mac_addr_vf;
  a1[15] = ixgbe_stop_adapter_vf;
  a1[16] = 0;
  a1[17] = ixgbevf_negotiate_api_version;
  a1[33] = ixgbe_setup_mac_link_vf;
  a1[35] = ixgbe_check_mac_link_vf;
  a1[36] = 0;
  a1[44] = ixgbe_set_rar_vf;
  a1[45] = ixgbevf_set_uc_addr_vf;
  a1[51] = 0;
  a1[53] = ixgbe_update_mc_addr_list_vf;
  a1[54] = ixgbevf_update_xcast_mode;
  a1[55] = 0;
  a1[56] = 0;
  a1[57] = 0;
  a1[58] = ixgbe_set_vfta_vf;
  a1[60] = ixgbevf_rlpml_set_vf;
  *(a1 + 1260) = 0x100000001;
  a1[228] = ixgbe_init_mbx_params_vf;
  return 0;
}

uint64_t ixgbe_init_hw_vf(uint64_t a1)
{
  v2 = (*(a1 + 32))();
  (*(a1 + 72))(a1, a1 + 700);
  return v2;
}

uint64_t ixgbe_reset_hw_vf(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_hw_vf", 149, "ixgbevf_reset_hw_vf");
  }

  (*(a1 + 120))(a1);
  *(a1 + 1948) = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_hw_vf", 157, "Issuing a function level reset to MAC\n");
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0, 0x4000000u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(0xC350uLL);
  if ((*(a1 + 1880))(a1, 0))
  {
    goto LABEL_13;
  }

  v2 = -199;
  do
  {
    v3 = v2;
    IODelay(5uLL);
    v4 = (*(a1 + 1880))(a1, 0);
    v2 = v3 + 1;
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 == 0;
    }
  }

  while (!v5);
  if (!v3)
  {
    return 4294967281;
  }

LABEL_13:
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x300uLL, 0);
  for (i = 0; i != 448; i += 64)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, i + 4112, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, i + 4120, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, i + 4136, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, i + 4116, 0x402u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, i + 8208, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, i + 8216, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, i + 8232, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, i + 8252, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, i + 8248, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, i + 4108, 0xA200u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, i + 8204, 0x2A00u);
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  *(a1 + 1908) = 2000;
  v8[0] = 1;
  (*(a1 + 1856))(a1, v8, 1, 0);
  IODelay(0x2710uLL);
  result = (*(a1 + 1848))(a1, v8, 4, 0);
  if (!result)
  {
    if (v8[0] == 1073741825)
    {
LABEL_19:
      result = 0;
      *(a1 + 1236) = v10;
      return result;
    }

    if (v8[0] == -2147483647)
    {
      *(a1 + 706) = v8[1];
      *(a1 + 710) = v9;
      goto LABEL_19;
    }

    return 4294967286;
  }

  return result;
}

uint64_t ixgbe_get_mac_addr_vf(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 6; ++i)
  {
    *(a2 + i) = *(a1 + 706 + i);
  }

  return 0;
}

uint64_t ixgbe_stop_adapter_vf(uint64_t a1)
{
  *(a1 + 1945) = 1;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x10CuLL, 7u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x100uLL, &readData);
  __dmb(1u);
  if (*(a1 + 1260))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, ((v2 << 6) + 8232), 0x4000000u);
      v2 = ++v3;
    }

    while (*(a1 + 1260) > v3);
  }

  if (*(a1 + 1264))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v10 = 0;
      v6 = ((v4 << 6) + 4136);
      IOPCIDevice::MemoryRead32(*a1, 0, v6, &v10);
      __dmb(1u);
      v7 = v10;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v6, v7 & 0xFDFFFFFF);
      v4 = ++v5;
    }

    while (*(a1 + 1264) > v5);
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x300uLL, 0);
  v9 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v9);
  __dmb(1u);
  IODelay(0x7D0uLL);
  return 0;
}

uint64_t ixgbevf_negotiate_api_version(uint64_t a1, int a2)
{
  v5[0] = 8;
  v5[1] = a2;
  v5[2] = 0;
  result = (*(a1 + 1856))(a1, v5, 3, 0);
  if (!result)
  {
    result = (*(a1 + 1848))(a1, v5, 3, 0);
    if (!result)
    {
      if ((v5[0] & 0xDFFFFFFF) == 0x80000008)
      {
        result = 0;
        *(a1 + 1948) = a2;
      }

      else
      {
        return 4294967264;
      }
    }
  }

  return result;
}

uint64_t ixgbe_check_mac_link_vf(uint64_t a1, int *a2, _BYTE *a3)
{
  v18 = 0;
  if ((*(a1 + 1880))(a1, 0) && *(a1 + 1908))
  {
    v6 = (a1 + 1273);
    if ((*(a1 + 1273) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v6 = (a1 + 1273);
    *(a1 + 1273) = 1;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x10uLL, &readData);
  __dmb(1u);
  v7 = readData;
  if ((readData & 0x40000000) == 0)
  {
LABEL_27:
    result = 0;
    goto LABEL_28;
  }

  if (*(a1 + 696) == 3)
  {
    v8 = 5;
    do
    {
      IODelay(0x64uLL);
      v16 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x10uLL, &v16);
      __dmb(1u);
      v7 = v16;
      if ((v16 & 0x40000000) == 0)
      {
        goto LABEL_27;
      }
    }

    while (--v8);
  }

  v9 = (v7 >> 28) & 3;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = 32;
      goto LABEL_26;
    }

    v14 = v7 & 0x8000000;
    v12 = *(a1 + 696) < 6 || v14 == 0;
    v10 = 1024;
    v13 = 128;
  }

  else
  {
    if (!v9)
    {
      v10 = 2 * (*(a1 + 696) > 5);
      goto LABEL_26;
    }

    v11 = v7 & 0x8000000;
    v12 = *(a1 + 696) != 6 || v11 == 0;
    v10 = 2048;
    v13 = 8;
  }

  if (v12)
  {
    v10 = v13;
  }

LABEL_26:
  *a2 = v10;
  if ((*(a1 + 1832))(a1, &v18, 1, 0))
  {
    goto LABEL_27;
  }

  if ((v18 & 0x20000000) != 0)
  {
    if (*(a1 + 1908))
    {
      result = 0;
      *v6 = 0;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  else
  {
    result = ((2 * v18) >> 31);
  }

LABEL_28:
  *a3 = *v6 ^ 1;
  return result;
}

uint64_t ixgbe_set_rar_vf(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *a3;
  v7[0] = 2;
  v7[1] = v4;
  v8 = 0;
  LOWORD(v8) = *(a3 + 2);
  result = (*(a1 + 1856))(a1, v7, 3, 0);
  if (!result)
  {
    result = (*(a1 + 1848))(a1, v7, 3, 0);
    if (result)
    {
      v6 = 0;
    }

    else
    {
      v6 = (v7[0] & 0xDFFFFFFF) == 1073741826;
    }

    if (v6)
    {
      *(a1 + 704) = *(a1 + 710);
      *(a1 + 700) = *(a1 + 706);
      return 4294967196;
    }
  }

  return result;
}

uint64_t ixgbevf_set_uc_addr_vf(uint64_t a1, int a2, uint64_t a3)
{
  v7 = 0;
  v6 = (a2 << 16) | 6u;
  if (a3)
  {
    HIDWORD(v6) = *a3;
    LOWORD(v7) = *(a3 + 4);
  }

  result = (*(a1 + 1856))(a1, &v6, 3, 0);
  if (!result)
  {
    result = (*(a1 + 1848))(a1, &v6, 3, 0);
    if (!result)
    {
      if ((v6 & 0xDFFFFFFF) == ((a2 << 16) | 0x40000006))
      {
        return 4294967262;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ixgbe_update_mc_addr_list_vf(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t, uint64_t *, int *))
{
  v18 = a2;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_mc_addr_list_vf", 360, "ixgbe_update_mc_addr_list_vf");
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): MC Addr Count = %d\n\n", "ixgbe_update_mc_addr_list_vf", 371, a3);
    }
  }

  if (a3 >= 0x1E)
  {
    v7 = 30;
  }

  else
  {
    v7 = a3;
  }

  v15 = 0;
  v16 = (v7 << 16) | 3;
  if (a3)
  {
    v8 = &v17;
    do
    {
      v9 = a4(a1, &v18, &v15);
      v10 = *(a1 + 1236);
      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v11 = *(v9 + 4) >> 2;
          v12 = 6;
        }

        else
        {
          if (v10 != 3)
          {
LABEL_22:
            ixgbe_update_mc_addr_list_vf();
          }

          v11 = *(v9 + 4);
          v12 = 8;
        }
      }

      else if (v10)
      {
        if (v10 != 1)
        {
          goto LABEL_22;
        }

        v11 = *(v9 + 4) >> 3;
        v12 = 5;
      }

      else
      {
        v11 = *(v9 + 4) >> 4;
        v12 = 4;
      }

      v13 = (*(v9 + 5) << v12) & 0xFFE | v11;
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): Hash value = 0x%03X\n\n", "ixgbe_update_mc_addr_list_vf", 379, v13);
      }

      *v8 = v13;
      v8 = (v8 + 2);
      --v7;
    }

    while (v7);
  }

  return (*(a1 + 1856))(a1, &v16, 16, 0);
}

uint64_t ixgbevf_update_xcast_mode(uint64_t a1, int a2)
{
  v3 = *(a1 + 1948);
  if (v3 != 4 && (v3 != 3 || a2 > 2))
  {
    return 4294967260;
  }

  v5[0] = 12;
  v5[1] = a2;
  result = (*(a1 + 1856))(a1, v5, 2, 0);
  if (!result)
  {
    result = (*(a1 + 1848))(a1, v5, 2, 0);
    if (!result)
    {
      if ((v5[0] & 0xDFFFFFFF) == 0x4000000C)
      {
        return 4294967260;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ixgbe_set_vfta_vf(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = 65540;
  }

  else
  {
    v5 = 4;
  }

  v9[0] = v5;
  v9[1] = a2;
  v6 = (*(a1 + 1856))(a1, v9, 2, 0);
  if (!v6)
  {
    v6 = (*(a1 + 1848))(a1, v9, 2, 0);
  }

  if (v9[0] <= -1 && v6 == 0)
  {
    return 0;
  }

  else
  {
    return v9[0] & 0x40000000 | v6;
  }
}

uint64_t ixgbevf_rlpml_set_vf(uint64_t a1, int a2)
{
  v5[0] = 5;
  v5[1] = a2;
  result = (*(a1 + 1856))(a1, v5, 2, 0);
  if (!result)
  {
    result = (*(a1 + 1848))(a1, v5, 2, 0);
    if (!result)
    {
      if ((v5[0] & 0x40000000) == 0 || (v5[0] & 5) == 0)
      {
        return 0;
      }

      else
      {
        return 4294967196;
      }
    }
  }

  return result;
}

uint64_t ixgbevf_get_queues(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if ((*(a1 + 1948) - 2) > 2)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v12 = 9;
  v13 = 0;
  v14 = 0;
  result = (*(a1 + 1856))(a1, &v12, 5, 0);
  if (!result)
  {
    result = (*(a1 + 1848))(a1, &v12, 5, 0);
    if (!result)
    {
      if ((v12 & 0xDFFFFFFF) == 0x80000009)
      {
        result = 0;
        *(a1 + 1260) = vbsl_s8(vcgt_u32(0x700000007, vadd_s32(v13, 0x800000008)), 0x800000008, v13);
        v9 = v14;
        v10 = HIDWORD(v14);
        *a2 = v14;
        if (v9 > *(a1 + 1264))
        {
          v9 = 1;
        }

        *a2 = v9;
        *a3 = v10;
        if (v10 >= *(a1 + 1260))
        {
          v11 = 0;
        }

        else
        {
          v11 = v10;
        }

        *a3 = v11;
      }

      else
      {
        return 4294967196;
      }
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::drain(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 280);
  v3 = *(a2 + 128);
  if (v3 != *(a2 + 132))
  {
    v5 = result;
    v6 = v2 - 1;
    do
    {
      v7 = *(*(a2 + 304) + 8 * v3);
      if (v7)
      {
        v9[6] = v7 - 8;
      }

      result = (*(**(v5 + 2024) + 64))(*(v5 + 2024), v9);
      v8 = *(a2 + 132);
      v3 = (*(a2 + 128) + 1) & v6;
      *(a2 + 128) = v3;
    }

    while (v3 != v8);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::rxSync(IOPCIDevice **this, unsigned int a2)
{
  v2 = a2;
  v3 = this;
  v4 = &this[44 * a2];
  v5 = (v4 + 299);
  v6 = *(v4 + 630);
  v7 = *(v4 + 631);
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
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
    v25 = 0u;
    v26 = 0u;
    while (1)
    {
      v9 = v4[332] + 16 * v6;
      if ((*(v9 + 8) & 1) == 0)
      {
        break;
      }

      v10 = *(&v4[337]->IOService::OSObject::OSMetaClassBase::__vftable + v6);
      v11 = (v8 + 1);
      *(&v25 + v8) = v10;
      *(v10 + 64) = *(v9 + 12);
      v12 = v6 + 1;
      v6 = (v6 + 1);
      v8 = v11;
      if (v7 == v12)
      {
        v6 = v7;
        v8 = v11;
        break;
      }
    }

    if (v8)
    {
      v13 = 0;
      __dmb(1u);
      v14 = v4[340];
      sendDataAvailable = 0;
      do
      {
        while (1)
        {
          v15 = *(&v25 + v13);
          callback[0] = _NSConcreteStackBlock;
          callback[1] = 0x40000000;
          callback[2] = ___ZN6pcindk16enqueueRxPacketsEP25IODataQueueDispatchSourcePP24IOUserNetworkPacketStateRj_block_invoke;
          callback[3] = &__block_descriptor_tmp_1;
          callback[4] = v15;
          if (!IODataQueueDispatchSource::EnqueueWithCoalesce(v14, 0x68u, &sendDataAvailable, callback))
          {
            break;
          }

          IODataQueueDispatchSource::SendDataAvailable(v14);
          if (++v13 >= v8)
          {
            goto LABEL_14;
          }
        }

        ++v13;
      }

      while (v13 < v8);
      v8 = v8 | 0x10000;
LABEL_14:
      v3 = this;
      v2 = a2;
      *(v5 + 32) = v6;
    }
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
  v25 = 0u;
  v26 = 0u;
  if (v6 + ~v7)
  {
    v16 = (*(**(v5 + 42) + 104))(*(v5 + 42), &v25, (v6 + ~v7));
    if (v16)
    {
      v17 = v16;
      v18 = &v25;
      do
      {
        v19 = *v18++;
        v20 = (*(v5 + 33) + 16 * v7);
        v21 = *(v19 + 48);
        *(*(v5 + 38) + 8 * v7) = v21 + 8;
        *v20 = *(v21 + 24);
        v20[1] = 0;
        v7 = (v7 + 1);
        --v17;
      }

      while (v17);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*v3, 0, (v2 << 6) | 0x1018, v7);
      *(v5 + 33) = v7;
    }
  }

  return v8;
}

uint64_t ___ZN6pcindk16enqueueRxPacketsEP25IODataQueueDispatchSourcePP24IOUserNetworkPacketStateRj_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  *(a2 + 40) = *(v2 + 40);
  *(a2 + 73) = *(v2 + 73);
  *(a2 + 64) = *(v2 + 64);
  return result;
}

void DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus(DriverKit_AppleEthernetIXGBE_IVars *this)
{
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus();
  }

  if (*(this + 2764) == 1)
  {
    if ((pcindkll & 4) != 0)
    {
      DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus(this);
    }

    ixgbe_fc_enable(this);
    DriverKit_AppleEthernetIXGBE_IVars::configDMAC(this);
    v2 = *(this + 344);
    if ((v2 & 0x8007) != 0)
    {
      v3 = *(this + 690);
      v4 = 32;
      if (v3 > 31)
      {
        if (v3 == 32)
        {
          v4 = 1048624;
        }

        else if (v3 == 128)
        {
          v4 = 1048629;
        }
      }

      else if (v3 == 2)
      {
        v4 = 1048611;
      }

      else if (v3 == 8)
      {
        v4 = 1048614;
      }
    }

    else
    {
      v4 = 32;
    }

    if (*(this + 174) == 6)
    {
      v8 = *(this + 690);
      if (v8 == 1024)
      {
        v4 |= 0x100016u;
      }

      else if (v8 == 2048)
      {
        v4 = 1048631;
      }
    }

    if ((v2 & 0x2008) != 0 && *(this + 690) == 128)
    {
      v4 |= 0x110001u;
    }

    if ((v2 & 0x10) != 0)
    {
      v9 = *(this + 690);
      if (v9 == 32)
      {
        v4 |= 0x10000Eu;
        if ((v2 & 0x20) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_33;
      }

      if (v9 == 128)
      {
        v4 |= 0x100013u;
      }
    }

    if ((v2 & 0x20) == 0)
    {
      goto LABEL_39;
    }

LABEL_33:
    v10 = *(this + 690);
    if (v10 == 32)
    {
      v4 |= 0x10000Eu;
    }

    else if (v10 == 128)
    {
      v4 |= 0x110003u;
    }

LABEL_39:
    if ((v2 & 0x4040) != 0)
    {
      v11 = *(this + 690);
      if (v11 == 32)
      {
        v4 |= 0x10000Bu;
        if ((v2 & 0x100) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      if (v11 == 128)
      {
        v4 |= 0x100012u;
      }
    }

    if ((v2 & 0x100) == 0)
    {
      goto LABEL_46;
    }

LABEL_44:
    if (*(this + 690) == 128)
    {
      v4 |= 0x100014u;
    }

LABEL_46:
    if ((v2 & 0x800) != 0)
    {
      v14 = *(this + 690);
      if (v14 != 32)
      {
        if (v14 != 1024)
        {
          if (v14 != 128)
          {
            goto LABEL_62;
          }

          v13 = 1048594;
          goto LABEL_61;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if ((v2 & 0x10280) == 0)
      {
        goto LABEL_62;
      }

      v12 = *(this + 690);
      if (v12 != 32)
      {
        if (v12 != 1024)
        {
          if (v12 != 128)
          {
            goto LABEL_62;
          }

          v13 = 1048596;
          goto LABEL_61;
        }

LABEL_59:
        v13 = 1114112;
LABEL_61:
        v4 |= v13;
LABEL_62:
        v15 = *(this + 351);
        if ((v15 | 2) == 3)
        {
          v4 |= 0x400000u;
        }

        if ((v15 & 0xFFFFFFFE) == 2)
        {
          v16 = v4 | 0x400000;
        }

        else
        {
          v16 = v4;
        }

        if ((pcindkll & 4) != 0)
        {
          DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus();
        }

        v17 = *(this + 247);
        v19 = _NSConcreteStackBlock;
        v20 = 0x40000000;
        v21 = ___ZN34DriverKit_AppleEthernetIXGBE_IVars16reportLinkStatusEjj_block_invoke;
        v22 = &__block_descriptor_tmp_2;
        v23 = this;
        LODWORD(v24) = 3;
        HIDWORD(v24) = v16;
        IODispatchQueue::DispatchAsync(v17, &v19);
        v6 = *(this + 247);
        v19 = _NSConcreteStackBlock;
        v20 = 0x40000000;
        v21 = ___ZN34DriverKit_AppleEthernetIXGBE_IVars17reportLinkQualityEj_block_invoke;
        v22 = &__block_descriptor_tmp_2;
        v23 = this;
        v7 = 100;
        goto LABEL_70;
      }
    }

    v13 = 1048591;
    goto LABEL_61;
  }

  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus();
  }

  v5 = *(this + 247);
  v19 = _NSConcreteStackBlock;
  v20 = 0x40000000;
  v21 = ___ZN34DriverKit_AppleEthernetIXGBE_IVars16reportLinkStatusEjj_block_invoke;
  v22 = &__block_descriptor_tmp_2;
  v23 = this;
  v24 = 0x2200000001;
  IODispatchQueue::DispatchAsync(v5, &v19);
  v6 = *(this + 247);
  v19 = _NSConcreteStackBlock;
  v20 = 0x40000000;
  v21 = ___ZN34DriverKit_AppleEthernetIXGBE_IVars17reportLinkQualityEj_block_invoke;
  v22 = &__block_descriptor_tmp_2;
  v23 = this;
  v7 = -2;
LABEL_70:
  LODWORD(v24) = v7;
  IODispatchQueue::DispatchAsync(v6, &v19);
  v18 = *(this + 693);
  *(this + 693) = 0;
  if (v18)
  {
    DriverKit_AppleEthernetIXGBE_IVars::handleMOD(this);
    if ((v18 & 2) == 0)
    {
LABEL_72:
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_73;
    }
  }

  else if ((v18 & 2) == 0)
  {
    goto LABEL_72;
  }

  DriverKit_AppleEthernetIXGBE_IVars::handleMSF(this);
  if ((v18 & 0x80) != 0)
  {
LABEL_73:
    DriverKit_AppleEthernetIXGBE_IVars::handleReset(this);
  }

LABEL_74:
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus();
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::handleMOD(DriverKit_AppleEthernetIXGBE_IVars *this)
{
  if (*(this + 1955) == 1)
  {
    v2 = *(this + 174);
    if ((v2 - 7) >= 2)
    {
      if (v2 != 2)
      {
        goto LABEL_93;
      }

      v34 = 0;
      IOPCIDevice::MemoryRead32(*this, 0, 0x20uLL, &v34);
      __dmb(1u);
      if ((v34 & 4) == 0)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v34 = 0;
      IOPCIDevice::MemoryRead32(*this, 0, 0x20uLL, &v34);
      __dmb(1u);
      if ((v34 & 1) == 0)
      {
        goto LABEL_93;
      }
    }
  }

  if ((*(this + 178))(this) == -19)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if (__dq)
      {
        v3 = IODispatchQueue::OnQueue(__dq);
      }

      else
      {
        v3 = 0;
      }

      if (qword_10003C008)
      {
        if (IODispatchQueue::OnQueue(qword_10003C008))
        {
          v7 = 2;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = v3 | v7;
      if (qword_10003C010)
      {
        if (IODispatchQueue::OnQueue(qword_10003C010))
        {
          v9 = 4;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      v10 = v8 | v9;
      if (qword_10003C018)
      {
        if (IODispatchQueue::OnQueue(qword_10003C018))
        {
          v11 = 8;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = v10 | v11;
      if (qword_10003C020)
      {
        if (IODispatchQueue::OnQueue(qword_10003C020))
        {
          v13 = 16;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = v12 | v13;
      if (qword_10003C028)
      {
        if (IODispatchQueue::OnQueue(qword_10003C028))
        {
          v15 = 32;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = v15 | v14;
      if (qword_10003C030)
      {
        if (IODispatchQueue::OnQueue(qword_10003C030))
        {
          v17 = 64;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = v16 + v17;
      if (qword_10003C038)
      {
        if (IODispatchQueue::OnQueue(qword_10003C038))
        {
          v19 = 128;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v34 = 67109634;
      v35 = v18 + v19;
      v36 = 2080;
      v37 = "handleMOD";
      v38 = 1024;
      v39 = 438;
      v20 = "ixgbe: [%x] %s(%d): Unsupported SFP+ module type was detected.\n";
LABEL_92:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v20, &v34, 0x18u);
      goto LABEL_93;
    }

    goto LABEL_93;
  }

  v4 = 168;
  if (*(this + 174) == 1)
  {
    v4 = 1440;
  }

  if ((*(this + v4))(this) == -19)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if (__dq)
      {
        v5 = IODispatchQueue::OnQueue(__dq);
      }

      else
      {
        v5 = 0;
      }

      if (qword_10003C008)
      {
        if (IODispatchQueue::OnQueue(qword_10003C008))
        {
          v21 = 2;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = v5 | v21;
      if (qword_10003C010)
      {
        if (IODispatchQueue::OnQueue(qword_10003C010))
        {
          v23 = 4;
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        v23 = 0;
      }

      v24 = v22 | v23;
      if (qword_10003C018)
      {
        if (IODispatchQueue::OnQueue(qword_10003C018))
        {
          v25 = 8;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = v24 | v25;
      if (qword_10003C020)
      {
        if (IODispatchQueue::OnQueue(qword_10003C020))
        {
          v27 = 16;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }

      v28 = v26 | v27;
      if (qword_10003C028)
      {
        if (IODispatchQueue::OnQueue(qword_10003C028))
        {
          v29 = 32;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 0;
      }

      v30 = v29 | v28;
      if (qword_10003C030)
      {
        if (IODispatchQueue::OnQueue(qword_10003C030))
        {
          v31 = 64;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v31 = 0;
      }

      v32 = v30 + v31;
      if (qword_10003C038)
      {
        if (IODispatchQueue::OnQueue(qword_10003C038))
        {
          v33 = 128;
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {
        v33 = 0;
      }

      v34 = 67109634;
      v35 = v32 + v33;
      v36 = 2080;
      v37 = "handleMOD";
      v38 = 1024;
      v39 = 443;
      v20 = "ixgbe: [%x] %s(%d): Setup failure - unsupported SFP+ module type.\n";
      goto LABEL_92;
    }

LABEL_93:
    v6 = *(this + 693) & 0xFFFFFFFD;
    goto LABEL_94;
  }

  v6 = *(this + 693) | 2;
LABEL_94:
  *(this + 693) = v6;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::handleMSF(DriverKit_AppleEthernetIXGBE_IVars *this)
{
  v8 = 0;
  *(this + 344) = ixgbe_get_supported_physical_layer(this);
  v7 = *(this + 413);
  if (!v7)
  {
    v2 = *(this + 36);
    if (v2)
    {
      v2(this, &v7, &v8);
    }
  }

  v3 = *(this + 33);
  if (v3)
  {
    v3(this, v7, 1);
  }

  v6 = 256;
  DriverKit_AppleEthernetIXGBE_IVars::getSupportedMediaArray(this, v5, &v6);
  return (*(**(this + 245) + 72))(*(this + 245), v5, v6);
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::getSupportedMediaArray(DriverKit_AppleEthernetIXGBE_IVars *this, unsigned int *a2, unsigned int *a3)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::getSupportedMediaArray();
  }

  *a2 = 0x2000000022;
  v6 = *(this + 344);
  if (v6)
  {
    a2[2] = 1048629;
    v7 = 3;
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = 2;
  if ((v6 & 2) != 0)
  {
LABEL_7:
    a2[v7++] = 1048624;
  }

LABEL_8:
  if ((v6 & 4) == 0)
  {
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  a2[v7++] = 1048614;
  if ((v6 & 0x8000) != 0)
  {
LABEL_10:
    a2[v7++] = 1048611;
  }

LABEL_11:
  if (*(this + 174) == 6)
  {
    v8 = &a2[v7];
    *v8 = 1048630;
    v8[1] = 1048631;
    v7 += 2;
  }

  if ((v6 & 0x2008) != 0)
  {
    a2[v7++] = 1114145;
  }

  if ((v6 & 0x10) == 0)
  {
LABEL_18:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_19;
    }

LABEL_25:
    a2[v7] = 1048626;
    v9 = v7 + 1;
    if ((*(this + 1673) & 1) == 0)
    {
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    v12 = 2;
LABEL_39:
    a2[v9] = 1048619;
    v9 = v7 + v12;
    if ((v6 & 0x100) != 0)
    {
      goto LABEL_40;
    }

LABEL_27:
    if ((v6 & 0x800) != 0)
    {
      goto LABEL_41;
    }

LABEL_28:
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_42;
    }

LABEL_29:
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_43;
    }

LABEL_30:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  a2[v7] = 1048627;
  if (*(this + 1673) == 1)
  {
    a2[v7 + 1] = 1048622;
    v7 += 2;
    goto LABEL_18;
  }

  ++v7;
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_25;
  }

LABEL_19:
  if ((v6 & 0x4000) != 0)
  {
    v12 = 1;
    v9 = v7;
    goto LABEL_39;
  }

  v9 = v7;
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_27;
  }

LABEL_40:
  a2[v9++] = 1048628;
  if ((v6 & 0x800) == 0)
  {
    goto LABEL_28;
  }

LABEL_41:
  a2[v9++] = 1048635;
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_29;
  }

LABEL_42:
  a2[v9++] = 1048634;
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_30;
  }

LABEL_43:
  a2[v9++] = 1048633;
  if ((v6 & 0x10000) != 0)
  {
LABEL_31:
    a2[v9++] = 1114148;
  }

LABEL_32:
  if (*(this + 968) == 4296)
  {
    v10 = &a2[v9];
    *v10 = 48;
    v10[1] = 1048624;
    v9 += 2;
  }

  *a3 = v9;
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::getSupportedMediaArray();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::selMed(DriverKit_AppleEthernetIXGBE_IVars *this, int a2)
{
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetIXGBE_IVars::selMed();
  }

  v4 = a2 & 0xF001F;
  result = 1;
  if ((a2 & 0xF001Fu) <= 0x15)
  {
    v6 = 168;
    if ((a2 & 0xF001Fu) <= 0xD)
    {
      if ((a2 & 0xF001Fu) <= 5)
      {
        if (v4)
        {
          if (v4 != 3)
          {
            return result;
          }

          v6 = 2;
        }

        goto LABEL_29;
      }

      if (v4 != 6)
      {
        if (v4 != 11)
        {
          return result;
        }

        goto LABEL_24;
      }

      v6 = 8;
      goto LABEL_29;
    }

    if ((a2 & 0xF001Fu) <= 0x12)
    {
      if (v4 != 14)
      {
        if (v4 != 16)
        {
          return result;
        }

        v6 = 40;
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    if (v4 != 19)
    {
      if (v4 != 21)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    v6 = 160;
    goto LABEL_29;
  }

  if ((a2 & 0xF001Fu) > 0x19)
  {
    if ((v4 - 26) >= 2)
    {
      if (v4 == 65537)
      {
        v6 = 128;
        goto LABEL_29;
      }

      if (v4 != 65539)
      {
        return result;
      }
    }

    goto LABEL_28;
  }

  switch(v4)
  {
    case 22:
      v6 = 1064;
      break;
    case 23:
      v6 = 3112;
      break;
    case 25:
LABEL_24:
      v6 = 32;
      break;
    default:
      return result;
  }

LABEL_29:
  *(this + 1284) = 1;
  (*(this + 33))(this, v6, 1);
  if ((pcindkll & 4) == 0)
  {
    return 0;
  }

  DriverKit_AppleEthernetIXGBE_IVars::selMed(&v7);
  return v7;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::handleChosenMedia(DriverKit_AppleEthernetIXGBE_IVars *this, int a2)
{
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetIXGBE_IVars::handleChosenMedia();
  }

  DriverKit_AppleEthernetIXGBE_IVars::selMed(this, a2);
  DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus(this);
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetIXGBE_IVars::handleChosenMedia();
  }

  return 0;
}

uint64_t ixgbe_init_ops_X540(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_ops_X540", 32, "ixgbe_init_ops_X540");
  }

  ixgbe_init_phy_ops_generic(a1);
  inited = ixgbe_init_ops_generic(a1);
  *(a1 + 1720) = ixgbe_init_eeprom_params_X540;
  *(a1 + 1728) = ixgbe_read_eerd_X540;
  *(a1 + 1736) = ixgbe_read_eerd_buffer_X540;
  *(a1 + 1744) = ixgbe_write_eewr_X540;
  *(a1 + 1752) = ixgbe_write_eewr_buffer_X540;
  *(a1 + 1768) = ixgbe_update_eeprom_checksum_X540;
  *(a1 + 1760) = ixgbe_validate_eeprom_checksum_X540;
  *(a1 + 1776) = ixgbe_calc_eeprom_checksum_X540;
  *(a1 + 1432) = ixgbe_init_phy_ops_generic;
  *(a1 + 1440) = 0;
  *(a1 + 1576) = ixgbe_set_copper_phy_power;
  *(a1 + 24) = ixgbe_reset_hw_X540;
  *(a1 + 48) = ixgbe_enable_relaxed_ordering_gen2;
  *(a1 + 56) = ixgbe_get_media_type_X540;
  *(a1 + 64) = ixgbe_get_supported_physical_layer_X540;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 32) = ixgbe_start_hw_X540;
  *(a1 + 80) = ixgbe_get_san_mac_addr_generic;
  *(a1 + 88) = ixgbe_set_san_mac_addr_generic;
  *(a1 + 96) = ixgbe_get_device_caps_generic;
  *(a1 + 104) = ixgbe_get_wwn_prefix_generic;
  *(a1 + 112) = ixgbe_get_fcoe_boot_status_generic;
  *(a1 + 200) = ixgbe_acquire_swfw_sync_X540;
  *(a1 + 208) = ixgbe_release_swfw_sync_X540;
  *(a1 + 216) = ixgbe_init_swfw_sync_X540;
  *(a1 + 184) = ixgbe_disable_sec_rx_path_generic;
  *(a1 + 192) = ixgbe_enable_sec_rx_path_generic;
  *(a1 + 384) = ixgbe_set_vmdq_generic;
  *(a1 + 392) = ixgbe_set_vmdq_san_mac_generic;
  *(a1 + 400) = ixgbe_clear_vmdq_generic;
  *(a1 + 376) = ixgbe_insert_mac_addr_generic;
  *(a1 + 464) = ixgbe_set_vfta_generic;
  *(a1 + 472) = ixgbe_set_vlvf_generic;
  *(a1 + 456) = ixgbe_clear_vfta_generic;
  *(a1 + 488) = ixgbe_init_uta_tables_generic;
  *(a1 + 496) = ixgbe_set_mac_anti_spoofing;
  *(a1 + 504) = ixgbe_set_vlan_anti_spoofing;
  *(a1 + 288) = ixgbe_get_copper_link_capabilities_generic;
  *(a1 + 264) = ixgbe_setup_mac_link_X540;
  *(a1 + 304) = ixgbe_set_rxpba_generic;
  *(a1 + 280) = ixgbe_check_mac_link_generic;
  *(a1 + 544) = ixgbe_bypass_rw_generic;
  *(a1 + 552) = ixgbe_bypass_valid_rd_generic;
  *(a1 + 560) = ixgbe_bypass_set_generic;
  *(a1 + 568) = ixgbe_bypass_rd_eep_generic;
  *(a1 + 1240) = xmmword_100030120;
  *(a1 + 1264) = 128;
  *(a1 + 1256) = 0x8000000180;
  *(a1 + 1280) = ixgbe_get_pcie_msix_count_generic(a1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 28), &readData);
  __dmb(1u);
  *(a1 + 1282) = (readData & 0xE) != 0;
  *(a1 + 1824) = ixgbe_init_mbx_params_pf;
  *(a1 + 328) = ixgbe_blink_led_start_X540;
  *(a1 + 336) = ixgbe_blink_led_stop_X540;
  *(a1 + 536) = ixgbe_set_fw_drv_ver_generic;
  *(a1 + 576) = ixgbe_dcb_get_rtrup2tc_generic;
  return inited;
}

uint64_t ixgbe_init_eeprom_params_X540(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_eeprom_params_X540", 335, "ixgbe_init_eeprom_params_X540");
  }

  if (!*(a1 + 1784))
  {
    *(a1 + 1784) = 0xA00000002;
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, **(a1 + 1928), &readData);
    __dmb(1u);
    v2 = 64 << ((readData >> 11) & 0xF);
    *(a1 + 1792) = v2;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Eeprom params: type = %d, size = %d\n\n", "ixgbe_init_eeprom_params_X540", 348, *(a1 + 1784), v2 & 0xFFC0);
    }
  }

  return 0;
}

uint64_t ixgbe_read_eerd_X540(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_eerd_X540", 366, "ixgbe_read_eerd_X540");
  }

  if ((*(a1 + 200))(a1, 1))
  {
    return 4294967280;
  }

  eerd_generic = ixgbe_read_eerd_generic(a1, a2, a3);
  (*(a1 + 208))(a1, 1);
  return eerd_generic;
}

uint64_t ixgbe_read_eerd_buffer_X540(uint64_t a1, unsigned int a2, int a3, _WORD *a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_eerd_buffer_X540", 392, "ixgbe_read_eerd_buffer_X540");
  }

  if ((*(a1 + 200))(a1, 1))
  {
    return 4294967280;
  }

  eerd_buffer_generic = ixgbe_read_eerd_buffer_generic(a1, a2, a3, a4);
  (*(a1 + 208))(a1, 1);
  return eerd_buffer_generic;
}

uint64_t ixgbe_write_eewr_X540(uint64_t a1, unsigned int a2, unsigned __int16 a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_eewr_X540", 417, "ixgbe_write_eewr_X540");
  }

  if ((*(a1 + 200))(a1, 1))
  {
    return 4294967280;
  }

  v7 = ixgbe_write_eewr_generic(a1, a2, a3);
  (*(a1 + 208))(a1, 1);
  return v7;
}

uint64_t ixgbe_write_eewr_buffer_X540(uint64_t a1, unsigned int a2, int a3, unsigned __int16 *a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_eewr_buffer_X540", 443, "ixgbe_write_eewr_buffer_X540");
  }

  if ((*(a1 + 200))(a1, 1))
  {
    return 4294967280;
  }

  v9 = ixgbe_write_eewr_buffer_generic(a1, a2, a3, a4);
  (*(a1 + 208))(a1, 1);
  return v9;
}

uint64_t ixgbe_update_eeprom_checksum_X540(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_eeprom_checksum_X540", 610, "ixgbe_update_eeprom_checksum_X540");
  }

  v6 = 0;
  v2 = (*(a1 + 1728))(a1, 0, &v6);
  if (v2)
  {
    updated = v2;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_eeprom_checksum_X540", 618, "EEPROM read failed\n");
    }
  }

  else if ((*(a1 + 200))(a1, 1))
  {
    return 4294967280;
  }

  else
  {
    v4 = (*(a1 + 1776))(a1);
    updated = v4;
    if ((v4 & 0x80000000) == 0)
    {
      v6 = v4;
      updated = ixgbe_write_eewr_generic(a1, 0x3Fu, v4);
      if (!updated)
      {
        updated = ixgbe_update_flash_X540(a1);
      }
    }

    (*(a1 + 208))(a1, 1);
  }

  return updated;
}

uint64_t ixgbe_validate_eeprom_checksum_X540(uint64_t a1, _WORD *a2)
{
  v8 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_validate_eeprom_checksum_X540", 549, "ixgbe_validate_eeprom_checksum_X540");
  }

  v9 = 0;
  v4 = (*(a1 + 1728))(a1, 0, &v9);
  if (v4)
  {
    v5 = v4;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_validate_eeprom_checksum_X540", 557, "EEPROM read failed\n");
    }
  }

  else if ((*(a1 + 200))(a1, 1))
  {
    return 4294967280;
  }

  else
  {
    v6 = (*(a1 + 1776))(a1);
    v5 = v6;
    if ((v6 & 0x80000000) == 0)
    {
      v9 = v6;
      v5 = ixgbe_read_eerd_generic(a1, 0x3Fu, &v8);
      if (!v5)
      {
        if (v8 == v9)
        {
          v5 = 0;
        }

        else
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): Invalid EEPROM checksum\n", "ixgbe_validate_eeprom_checksum_X540", 583);
          }

          v5 = 4294967294;
        }

        if (a2)
        {
          *a2 = v9;
        }
      }
    }

    (*(a1 + 208))(a1, 1);
  }

  return v5;
}

uint64_t ixgbe_calc_eeprom_checksum_X540(uint64_t a1)
{
  v11 = 0;
  v10 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_calc_eeprom_checksum_X540", 480, "ixgbe_calc_eeprom_checksum_X540");
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = v3;
    if (ixgbe_read_eerd_generic(a1, v3, &v10))
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_calc_eeprom_checksum_X540", 487, "EEPROM read failed\n");
      }

      return 0xFFFFFFFFLL;
    }

    v2 += v10;
    ++v3;
  }

  while (v4 < 0x3E);
  v5 = 3;
  while (1)
  {
    if ((v5 & 0xE) == 4)
    {
      goto LABEL_18;
    }

    if (ixgbe_read_eerd_generic(a1, v5, &v11))
    {
      break;
    }

    if ((v11 + 1) >= 2u && v11 < *(a1 + 1792))
    {
      if (ixgbe_read_eerd_generic(a1, v11, &v11 + 1))
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_calc_eeprom_checksum_X540", 511, "EEPROM read failed\n");
        }

        return 0xFFFFFFFFLL;
      }

      if ((HIWORD(v11) + 1) >= 2u)
      {
        v6 = v11 + HIWORD(v11);
        if (v6 < *(a1 + 1792))
        {
          for (i = v11 + 1; v6 >= i; ++i)
          {
            if (ixgbe_read_eerd_generic(a1, i, &v10))
            {
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixgbe:%s(%d): %s\n", "ixgbe_calc_eeprom_checksum_X540", 522, "EEPROM read failed\n");
              }

              return 0xFFFFFFFFLL;
            }

            v2 += v10;
            v6 = HIWORD(v11) + v11;
          }
        }
      }
    }

LABEL_18:
    v8 = v5++;
    if (v8 >= 0xE)
    {
      return (-17734 - v2);
    }
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_calc_eeprom_checksum_X540", 501, "EEPROM read failed\n");
  }

  return 0xFFFFFFFFLL;
}

uint64_t ixgbe_reset_hw_X540(uint64_t a1)
{
  v2 = *(a1 + 1644);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_hw_X540", 184, "ixgbe_reset_hw_X540");
  }

  v3 = (*(a1 + 120))(a1);
  if (!v3)
  {
    ixgbe_clear_tx_pending(a1);
    v4 = (*(a1 + 200))(a1, v2);
    if (v4)
    {
LABEL_18:
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): semaphore failed with %d\n", "ixgbe_reset_hw_X540", 198, v4);
      }

      return 4294967280;
    }

    else
    {
      while (1)
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0, &readData);
        __dmb(1u);
        v5 = readData;
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, 0, v5 | 0x4000000);
        v11 = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v11);
        __dmb(1u);
        (*(a1 + 208))(a1, v2);
        v6 = 0;
        do
        {
          IODelay(1uLL);
          v10 = 0;
          IOPCIDevice::MemoryRead32(*a1, 0, 0, &v10);
          __dmb(1u);
        }

        while ((v10 & 0x4000008) != 0 && v6++ < 9);
        if ((v10 & 0x4000008) != 0)
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): Reset polling failed to complete.\n\n", "ixgbe_reset_hw_X540", 218);
          }

          v3 = 4294967281;
        }

        else
        {
          v3 = 0;
        }

        IODelay(0x186A0uLL);
        if ((*(a1 + 1285) & 1) == 0)
        {
          break;
        }

        *(a1 + 1285) &= ~1u;
        v4 = (*(a1 + 200))(a1, v2);
        if (v4)
        {
          goto LABEL_18;
        }
      }

      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0x3C00uLL, 0x60000u);
      (*(a1 + 72))(a1, a1 + 706);
      *(a1 + 1248) = 128;
      (*(a1 + 408))(a1);
      (*(a1 + 80))(a1, a1 + 712);
      if (!ixgbe_validate_mac_addr((a1 + 712)))
      {
        v9 = *(a1 + 1248) - 1;
        *(a1 + 1272) = v9;
        (*(a1 + 352))(a1, v9, a1 + 712, 0, 0x80000000);
        (*(a1 + 400))(a1, *(a1 + 1272), 0xFFFFFFFFLL);
        --*(a1 + 1248);
      }

      (*(a1 + 104))(a1, a1 + 718, a1 + 720);
    }
  }

  return v3;
}

uint64_t ixgbe_get_supported_physical_layer_X540(uint64_t a1)
{
  v3 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_supported_physical_layer_X540", 308, "ixgbe_get_supported_physical_layer_X540");
  }

  (*(a1 + 1448))(a1, 11, 1, &v3);
  return (v3 >> 4) & 2 | (v3 >> 2) & 1 | (v3 >> 5) & 4u;
}

uint64_t ixgbe_start_hw_X540(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_start_hw_X540", 285, "ixgbe_start_hw_X540");
  }

  result = ixgbe_start_hw_generic(a1);
  if (!result)
  {

    return ixgbe_start_hw_gen2(a1);
  }

  return result;
}

uint64_t ixgbe_acquire_swfw_sync_X540(uint64_t a1, __int16 a2)
{
  v4 = 32 * (a2 & 0xF);
  v5 = a2 & 0x1800;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_acquire_swfw_sync_X540", 742, "ixgbe_acquire_swfw_sync_X540");
  }

  v6 = 16 * (a2 & 1);
  v7 = a2 & 0x1C0F;
  v8 = v4 | (4 * v5);
  if (*(a1 + 696) <= 5)
  {
    v9 = 200;
  }

  else
  {
    v9 = 1000;
  }

  v10 = a2 & 0x1C0F | (16 * (a2 & 1)) | v8;
  do
  {
    if (ixgbe_get_swfw_sync_semaphore(a1))
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_acquire_swfw_sync_X540", 761, "Failed to get NVM access and register semaphore, returning IXGBE_ERR_SWFW_SYNC\n");
      }

      return 4294967280;
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 24), &readData);
    __dmb(1u);
    v11 = readData;
    if ((readData & v10) == 0)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 24), v11 | v7);
      ixgbe_release_swfw_sync_semaphore(a1);
      return 0;
    }

    ixgbe_release_swfw_sync_semaphore(a1);
    IODelay(0x1388uLL);
    --v9;
  }

  while (v9);
  if (ixgbe_get_swfw_sync_semaphore(a1))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_acquire_swfw_sync_X540", 787, "Failed to get NVM sempahore and register semaphore while forcefully ignoring FW sempahore bit(s) and setting SW semaphore bit(s), returning IXGBE_ERR_SWFW_SYNC\n");
    }

    return 4294967280;
  }

  v15 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 24), &v15);
  __dmb(1u);
  v13 = v15;
  if ((v15 & (v8 | v6)) == 0)
  {
    if ((v15 & v7) != 0)
    {
      if (v5)
      {
        v14 = 7183;
      }

      else
      {
        v14 = 1039;
      }

      ixgbe_release_swfw_sync_X540(a1, v14);
      ixgbe_release_swfw_sync_semaphore(a1);
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_acquire_swfw_sync_X540", 812, "Resource not released by other SW, returning IXGBE_ERR_SWFW_SYNC\n");
      }
    }

    else
    {
      ixgbe_release_swfw_sync_semaphore(a1);
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_acquire_swfw_sync_X540", 816, "Returning error IXGBE_ERR_SWFW_SYNC\n");
      }
    }

    return 4294967280;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 24), v13 | v7);
  ixgbe_release_swfw_sync_semaphore(a1);
  IODelay(0x1388uLL);
  return 0;
}

void ixgbe_release_swfw_sync_X540(uint64_t a1, int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_release_swfw_sync_X540", 834, "ixgbe_release_swfw_sync_X540");
  }

  if ((a2 & 0x1800) != 0)
  {
    v4 = 7183;
  }

  else
  {
    v4 = 1039;
  }

  v5 = v4 & a2;
  ixgbe_get_swfw_sync_semaphore(a1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 24), &readData);
  __dmb(1u);
  v6 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 24), v6 & ~v5);
  ixgbe_release_swfw_sync_semaphore(a1);
  IODelay(0x7D0uLL);
}

void ixgbe_init_swfw_sync_X540(uint64_t a1)
{
  ixgbe_get_swfw_sync_semaphore(a1);
  ixgbe_release_swfw_sync_semaphore(a1);
  ixgbe_acquire_swfw_sync_X540(a1, 7183);

  ixgbe_release_swfw_sync_X540(a1, 7183);
}

uint64_t ixgbe_setup_mac_link_X540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_mac_link_X540", 167, "ixgbe_setup_mac_link_X540");
  }

  v6 = *(a1 + 1496);

  return v6(a1, a2, a3);
}

uint64_t ixgbe_blink_led_start_X540(uint64_t a1, unsigned int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_blink_led_start_X540", 976, "ixgbe_blink_led_start_X540");
  }

  if (a2 > 3)
  {
    return 4294967291;
  }

  v9 = 0;
  v8 = 0;
  (*(a1 + 280))(a1, &v9, &v8, 0);
  if ((v8 & 1) == 0)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x4330uLL, &readData);
    __dmb(1u);
    v5 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x4330uLL, v5 | 0x70001);
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x200uLL, &readData);
  __dmb(1u);
  v6 = readData & ~(15 << (8 * a2));
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x200uLL, v6 | (128 << (8 * a2)));
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  result = 0;
  __dmb(1u);
  return result;
}

uint64_t ixgbe_blink_led_stop_X540(IOPCIDevice **a1, unsigned int a2)
{
  if (a2 > 3)
  {
    return 4294967291;
  }

  v12 = v2;
  v13 = v3;
  v5 = a2;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_blink_led_stop_X540", 1018, "ixgbe_blink_led_stop_X540");
  }

  v11 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x200uLL, &v11);
  __dmb(1u);
  v7 = v11 & ~(15 << (8 * v5)) | (4 << (8 * v5));
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x200uLL, v7 & ~(128 << (8 * v5)));
  v10 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4330uLL, &v10);
  __dmb(1u);
  v8 = v10;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x4330uLL, v8 & 0xFFF8FFFE);
  v9 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v9);
  result = 0;
  __dmb(1u);
  return result;
}

uint64_t ixgbe_update_flash_X540(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_flash_X540", 658, "ixgbe_update_flash_X540");
  }

  if (ixgbe_poll_flash_update_done_X540(a1) == -1)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_flash_X540", 662, "Flash update time out\n");
    }

    return 0xFFFFFFFFLL;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, **(a1 + 1928), &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, **(a1 + 1928), v2 | 0x800000);
  updated = ixgbe_poll_flash_update_done_X540(a1);
  if (updated)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_flash_X540", 673, "Flash update time out\n");
    }
  }

  else if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_flash_X540", 671, "Flash update complete\n");
  }

  if (*(a1 + 696) == 4 && !*(a1 + 1944))
  {
    v6 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, **(a1 + 1928), &v6);
    __dmb(1u);
    v5 = v6;
    if ((v6 & 0x2000000) != 0)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, **(a1 + 1928), v5 | 0x800000);
    }

    if (!ixgbe_poll_flash_update_done_X540(a1))
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_flash_X540", 685, "Flash update complete\n");
      }

      return 0;
    }

    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_flash_X540", 687, "Flash update time out\n");
    }

    return 0xFFFFFFFFLL;
  }

  return updated;
}

uint64_t ixgbe_poll_flash_update_done_X540(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_poll_flash_update_done_X540", 706, "ixgbe_poll_flash_update_done_X540");
  }

  v2 = 20000;
  do
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, **(a1 + 1928), &readData);
    __dmb(1u);
    if ((readData & 0x4000000) != 0)
    {
      return 0;
    }

    IODelay(0x1388uLL);
    --v2;
  }

  while (v2);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): Flash update status polling timed out\n", "ixgbe_poll_flash_update_done_X540", 719);
  }

  return 0xFFFFFFFFLL;
}

uint64_t ixgbe_get_swfw_sync_semaphore(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_swfw_sync_semaphore", 861, "ixgbe_get_swfw_sync_semaphore");
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
        IOLog("ixgbe:%s(%d): Software semaphore SMBI between device drivers not granted.\n\n", "ixgbe_get_swfw_sync_semaphore", 900);
      }

      return 0xFFFFFFFFLL;
    }
  }

  v3 = 2000;
  do
  {
    v5 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 24), &v5);
    __dmb(1u);
    if ((v5 & 0x80000000) == 0)
    {
      return 0;
    }

    IODelay(0x32uLL);
    --v3;
  }

  while (v3);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): REGSMP Software NVM semaphore not granted.\n\n", "ixgbe_get_swfw_sync_semaphore", 893);
  }

  ixgbe_release_swfw_sync_semaphore(a1);
  return 0xFFFFFFFFLL;
}

void ixgbe_release_swfw_sync_semaphore(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_release_swfw_sync_semaphore", 916, "ixgbe_release_swfw_sync_semaphore");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 24), &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 24), v2 & 0x7FFFFFFF);
  v5 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 20), &v5);
  __dmb(1u);
  v3 = v5;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, *(*(a1 + 1928) + 20), v3 & 0xFFFFFFFE);
  v4 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v4);
  __dmb(1u);
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::probe(DriverKit_AppleEthernetIXGBE_IVars *this, IOPCIDevice *a2)
{
  v4 = 3758097084;
  v19 = 1;
  IOParseBootArgNumber("ixgbe", &v19, 4);
  if (v19)
  {
    obj = 0;
    if (IOService::CopyProperties(a2, &obj, 0))
    {
      DriverKit_AppleEthernetIXGBE_IVars::probe();
    }

    Object = OSDictionary::getObject(obj, "device-id");
    v6 = OSMetaClassBase::safeMetaCast(Object, gOSDataMetaClass);
    BytesNoCopy = OSData::getBytesNoCopy(v6);
    v8 = *BytesNoCopy;
    v9 = &vendor_info_array;
    v10 = 45;
    while (*v9 != v8)
    {
      v9 += 4;
      if (!--v10)
      {
        if (pcindkll)
        {
          DriverKit_AppleEthernetIXGBE_IVars::probe(*BytesNoCopy, &v20);
          v4 = v20;
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
      DriverKit_AppleEthernetIXGBE_IVars::probe(v9);
    }

    *this = a2;
    *(this + 1) = this;
    *(this + 969) = -32634;
    *(this + 968) = v8;
    v11 = OSDictionary::getObject(obj, "subsystem-vendor-id");
    v12 = OSMetaClassBase::safeMetaCast(v11, gOSDataMetaClass);
    if (v12)
    {
      *(this + 971) = *OSData::getBytesNoCopy(v12);
    }

    v13 = OSDictionary::getObject(obj, "subsystem-id");
    v14 = OSMetaClassBase::safeMetaCast(v13, gOSDataMetaClass);
    if (v14)
    {
      *(this + 970) = *OSData::getBytesNoCopy(v14);
    }

    v15 = OSDictionary::getObject(obj, "revision-id");
    v16 = OSMetaClassBase::safeMetaCast(v15, gOSDataMetaClass);
    *(this + 1944) = *OSData::getBytesNoCopy(v16);
    if (obj)
    {
      (obj->release)(obj);
      obj = 0;
    }

    obj = OSDictionaryCreate();
    OSDictionarySetStringValue(obj, "IOVendor", "Intel");
    OSDictionarySetStringValue(obj, "IOModel", *(v9 + 1));
    IOService::SetProperties(*(this + 245), obj, 0);
    v4 = 0;
LABEL_17:
    if (obj)
    {
      (obj->release)(obj);
    }
  }

  return v4;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::start(DriverKit_AppleEthernetIXGBE_IVars *this)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*this, 0, 0x18uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*this, 0, 0x18uLL, v2 | 0x10000000);
  inited = ixgbe_init_shared_code(this);
  if (inited)
  {
    v4 = inited;
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_274:
      readData = 0;
      IOPCIDevice::MemoryRead32(*this, 0, 0x18uLL, &readData);
      __dmb(1u);
      v97 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*this, 0, 0x18uLL, v97 & 0xEFFFFFFF);
      return v4;
    }

    if (__dq)
    {
      v5 = IODispatchQueue::OnQueue(__dq);
    }

    else
    {
      v5 = 0;
    }

    if (qword_10003C008)
    {
      if (IODispatchQueue::OnQueue(qword_10003C008))
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v5 | v8;
    if (qword_10003C010)
    {
      if (IODispatchQueue::OnQueue(qword_10003C010))
      {
        v10 = 4;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v9 | v10;
    if (qword_10003C018)
    {
      if (IODispatchQueue::OnQueue(qword_10003C018))
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v11 | v12;
    if (qword_10003C020)
    {
      if (IODispatchQueue::OnQueue(qword_10003C020))
      {
        v14 = 16;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v13 | v14;
    if (qword_10003C028)
    {
      if (IODispatchQueue::OnQueue(qword_10003C028))
      {
        v16 = 32;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 | v15;
    if (qword_10003C030)
    {
      if (IODispatchQueue::OnQueue(qword_10003C030))
      {
        v18 = 64;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v17 + v18;
    if (qword_10003C038)
    {
      if (IODispatchQueue::OnQueue(qword_10003C038))
      {
        v20 = 128;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    readData = 67109634;
    v101 = v19 + v20;
    v102 = 2080;
    v103 = "start";
    v104 = 1024;
    v105 = 118;
    v21 = "ixgbe: [%x] %s(%d): Unable to initialize the shared code\n";
LABEL_49:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v21, &readData, 0x18u);
    goto LABEL_274;
  }

  v6 = *(this + 228);
  if (v6)
  {
    v6(this);
  }

  if (*(this + 174) != 1)
  {
    *(this + 417) = 1;
  }

  *(this + 1953) = 1;
  LOWORD(readData) = 0;
  ixgbe_get_device_caps(this);
  v7 = 1;
  if ((readData & 4) == 0)
  {
    v7 = (readData & 8) != 0 && *(this + 906) == 0;
  }

  *(this + 1954) = v7;
  *(this + 2765) = v7;
  ixgbe_init_swfw_semaphore(this);
  *(this + 1674) = 1;
  v22 = ixgbe_reset_hw(this);
  *(this + 1674) = 0;
  if (v22)
  {
    v4 = v22;
    if (v22 == -19)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        if (__dq)
        {
          v24 = IODispatchQueue::OnQueue(__dq);
        }

        else
        {
          v24 = 0;
        }

        if (qword_10003C008)
        {
          if (IODispatchQueue::OnQueue(qword_10003C008))
          {
            v26 = 2;
          }

          else
          {
            v26 = 0;
          }
        }

        else
        {
          v26 = 0;
        }

        v27 = v24 | v26;
        if (qword_10003C010)
        {
          if (IODispatchQueue::OnQueue(qword_10003C010))
          {
            v28 = 4;
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = 0;
        }

        v29 = v27 | v28;
        if (qword_10003C018)
        {
          if (IODispatchQueue::OnQueue(qword_10003C018))
          {
            v30 = 8;
          }

          else
          {
            v30 = 0;
          }
        }

        else
        {
          v30 = 0;
        }

        v31 = v29 | v30;
        if (qword_10003C020)
        {
          if (IODispatchQueue::OnQueue(qword_10003C020))
          {
            v32 = 16;
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = 0;
        }

        v33 = v31 | v32;
        if (qword_10003C028)
        {
          if (IODispatchQueue::OnQueue(qword_10003C028))
          {
            v34 = 32;
          }

          else
          {
            v34 = 0;
          }
        }

        else
        {
          v34 = 0;
        }

        v35 = v34 | v33;
        if (qword_10003C030)
        {
          if (IODispatchQueue::OnQueue(qword_10003C030))
          {
            v36 = 64;
          }

          else
          {
            v36 = 0;
          }
        }

        else
        {
          v36 = 0;
        }

        v37 = v35 + v36;
        if (qword_10003C038)
        {
          if (IODispatchQueue::OnQueue(qword_10003C038))
          {
            v38 = 128;
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
        }

        readData = 67109634;
        v101 = v37 + v38;
        v102 = 2080;
        v103 = "start";
        v104 = 1024;
        v105 = 150;
        v39 = "ixgbe: [%x] %s(%d): Unsupported SFP+ module detected!\n";
        goto LABEL_272;
      }

LABEL_273:
      v4 = 4294967277;
      goto LABEL_274;
    }

    if (v22 != -20)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_274;
      }

      if (__dq)
      {
        v25 = IODispatchQueue::OnQueue(__dq);
      }

      else
      {
        v25 = 0;
      }

      if (qword_10003C008)
      {
        if (IODispatchQueue::OnQueue(qword_10003C008))
        {
          v41 = 2;
        }

        else
        {
          v41 = 0;
        }
      }

      else
      {
        v41 = 0;
      }

      v44 = v25 | v41;
      if (qword_10003C010)
      {
        if (IODispatchQueue::OnQueue(qword_10003C010))
        {
          v45 = 4;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
      }

      v48 = v44 | v45;
      if (qword_10003C018)
      {
        if (IODispatchQueue::OnQueue(qword_10003C018))
        {
          v49 = 8;
        }

        else
        {
          v49 = 0;
        }
      }

      else
      {
        v49 = 0;
      }

      v52 = v48 | v49;
      if (qword_10003C020)
      {
        if (IODispatchQueue::OnQueue(qword_10003C020))
        {
          v53 = 16;
        }

        else
        {
          v53 = 0;
        }
      }

      else
      {
        v53 = 0;
      }

      v56 = v52 | v53;
      if (qword_10003C028)
      {
        if (IODispatchQueue::OnQueue(qword_10003C028))
        {
          v57 = 32;
        }

        else
        {
          v57 = 0;
        }
      }

      else
      {
        v57 = 0;
      }

      v60 = v57 | v56;
      if (qword_10003C030)
      {
        if (IODispatchQueue::OnQueue(qword_10003C030))
        {
          v61 = 64;
        }

        else
        {
          v61 = 0;
        }
      }

      else
      {
        v61 = 0;
      }

      v64 = v60 + v61;
      if (qword_10003C038)
      {
        if (IODispatchQueue::OnQueue(qword_10003C038))
        {
          v65 = 128;
        }

        else
        {
          v65 = 0;
        }
      }

      else
      {
        v65 = 0;
      }

      readData = 67109634;
      v101 = v64 + v65;
      v102 = 2080;
      v103 = "start";
      v104 = 1024;
      v105 = 153;
      v21 = "ixgbe: [%x] %s(%d): Hardware initialization failed\n";
      goto LABEL_49;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if (__dq)
      {
        v23 = IODispatchQueue::OnQueue(__dq);
      }

      else
      {
        v23 = 0;
      }

      if (qword_10003C008)
      {
        if (IODispatchQueue::OnQueue(qword_10003C008))
        {
          v40 = 2;
        }

        else
        {
          v40 = 0;
        }
      }

      else
      {
        v40 = 0;
      }

      v42 = v23 | v40;
      if (qword_10003C010)
      {
        if (IODispatchQueue::OnQueue(qword_10003C010))
        {
          v43 = 4;
        }

        else
        {
          v43 = 0;
        }
      }

      else
      {
        v43 = 0;
      }

      v46 = v42 | v43;
      if (qword_10003C018)
      {
        if (IODispatchQueue::OnQueue(qword_10003C018))
        {
          v47 = 8;
        }

        else
        {
          v47 = 0;
        }
      }

      else
      {
        v47 = 0;
      }

      v50 = v46 | v47;
      if (qword_10003C020)
      {
        if (IODispatchQueue::OnQueue(qword_10003C020))
        {
          v51 = 16;
        }

        else
        {
          v51 = 0;
        }
      }

      else
      {
        v51 = 0;
      }

      v54 = v50 | v51;
      if (qword_10003C028)
      {
        if (IODispatchQueue::OnQueue(qword_10003C028))
        {
          v55 = 32;
        }

        else
        {
          v55 = 0;
        }
      }

      else
      {
        v55 = 0;
      }

      v58 = v55 | v54;
      if (qword_10003C030)
      {
        if (IODispatchQueue::OnQueue(qword_10003C030))
        {
          v59 = 64;
        }

        else
        {
          v59 = 0;
        }
      }

      else
      {
        v59 = 0;
      }

      v62 = v58 + v59;
      if (qword_10003C038)
      {
        if (IODispatchQueue::OnQueue(qword_10003C038))
        {
          v63 = 128;
        }

        else
        {
          v63 = 0;
        }
      }

      else
      {
        v63 = 0;
      }

      readData = 67109634;
      v101 = v62 + v63;
      v102 = 2080;
      v103 = "start";
      v104 = 1024;
      v105 = 146;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixgbe: [%x] %s(%d): IXGBE_ERR_SFP_NOT_PRESENT\n", &readData, 0x18u);
    }

    *(this + 2766) = 1;
  }

  if ((ixgbe_validate_eeprom_checksum(this) & 0x80000000) != 0)
  {
    v4 = 0;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if (__dq)
      {
        v67 = IODispatchQueue::OnQueue(__dq);
      }

      else
      {
        v67 = 0;
      }

      if (qword_10003C008)
      {
        if (IODispatchQueue::OnQueue(qword_10003C008))
        {
          v71 = 2;
        }

        else
        {
          v71 = 0;
        }
      }

      else
      {
        v71 = 0;
      }

      v72 = v67 | v71;
      if (qword_10003C010)
      {
        if (IODispatchQueue::OnQueue(qword_10003C010))
        {
          v73 = 4;
        }

        else
        {
          v73 = 0;
        }
      }

      else
      {
        v73 = 0;
      }

      v74 = v72 | v73;
      if (qword_10003C018)
      {
        if (IODispatchQueue::OnQueue(qword_10003C018))
        {
          v75 = 8;
        }

        else
        {
          v75 = 0;
        }
      }

      else
      {
        v75 = 0;
      }

      v76 = v74 | v75;
      if (qword_10003C020)
      {
        if (IODispatchQueue::OnQueue(qword_10003C020))
        {
          v77 = 16;
        }

        else
        {
          v77 = 0;
        }
      }

      else
      {
        v77 = 0;
      }

      v78 = v76 | v77;
      if (qword_10003C028)
      {
        if (IODispatchQueue::OnQueue(qword_10003C028))
        {
          v79 = 32;
        }

        else
        {
          v79 = 0;
        }
      }

      else
      {
        v79 = 0;
      }

      v80 = v79 | v78;
      if (qword_10003C030)
      {
        if (IODispatchQueue::OnQueue(qword_10003C030))
        {
          v81 = 64;
        }

        else
        {
          v81 = 0;
        }
      }

      else
      {
        v81 = 0;
      }

      v82 = v80 + v81;
      if (qword_10003C038)
      {
        if (IODispatchQueue::OnQueue(qword_10003C038))
        {
          v83 = 128;
        }

        else
        {
          v83 = 0;
        }
      }

      else
      {
        v83 = 0;
      }

      readData = 67109634;
      v101 = v82 + v83;
      v102 = 2080;
      v103 = "start";
      v104 = 1024;
      v105 = 159;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixgbe: [%x] %s(%d): The EEPROM Checksum Is Not Valid\n", &readData, 0x18u);
      v4 = 0;
    }

    goto LABEL_274;
  }

  started = ixgbe_start_hw(this);
  if (started == -19)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if (__dq)
      {
        v70 = IODispatchQueue::OnQueue(__dq);
      }

      else
      {
        v70 = 0;
      }

      if (qword_10003C008)
      {
        if (IODispatchQueue::OnQueue(qword_10003C008))
        {
          v84 = 2;
        }

        else
        {
          v84 = 0;
        }
      }

      else
      {
        v84 = 0;
      }

      v85 = v70 | v84;
      if (qword_10003C010)
      {
        if (IODispatchQueue::OnQueue(qword_10003C010))
        {
          v86 = 4;
        }

        else
        {
          v86 = 0;
        }
      }

      else
      {
        v86 = 0;
      }

      v87 = v85 | v86;
      if (qword_10003C018)
      {
        if (IODispatchQueue::OnQueue(qword_10003C018))
        {
          v88 = 8;
        }

        else
        {
          v88 = 0;
        }
      }

      else
      {
        v88 = 0;
      }

      v89 = v87 | v88;
      if (qword_10003C020)
      {
        if (IODispatchQueue::OnQueue(qword_10003C020))
        {
          v90 = 16;
        }

        else
        {
          v90 = 0;
        }
      }

      else
      {
        v90 = 0;
      }

      v91 = v89 | v90;
      if (qword_10003C028)
      {
        if (IODispatchQueue::OnQueue(qword_10003C028))
        {
          v92 = 32;
        }

        else
        {
          v92 = 0;
        }
      }

      else
      {
        v92 = 0;
      }

      v93 = v92 | v91;
      if (qword_10003C030)
      {
        if (IODispatchQueue::OnQueue(qword_10003C030))
        {
          v94 = 64;
        }

        else
        {
          v94 = 0;
        }
      }

      else
      {
        v94 = 0;
      }

      v95 = v93 + v94;
      if (qword_10003C038)
      {
        if (IODispatchQueue::OnQueue(qword_10003C038))
        {
          v96 = 128;
        }

        else
        {
          v96 = 0;
        }
      }

      else
      {
        v96 = 0;
      }

      readData = 67109634;
      v101 = v95 + v96;
      v102 = 2080;
      v103 = "start";
      v104 = 1024;
      v105 = 169;
      v39 = "ixgbe: [%x] %s(%d): Unsupported SFP+ Module\n";
LABEL_272:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v39, &readData, 0x18u);
      goto LABEL_273;
    }

    goto LABEL_273;
  }

  v4 = started;
  if (started == -20)
  {
    if (pcindkll)
    {
      DriverKit_AppleEthernetIXGBE_IVars::start();
    }
  }

  else if (started == -24 && (pcindkll & 1) != 0)
  {
    DriverKit_AppleEthernetIXGBE_IVars::start();
  }

  readData = 0;
  v99 = 0;
  v68 = *(this + 36);
  if (v68)
  {
    v4 = v68(this, &readData, &v99);
  }

  if (v4)
  {
    if (pcindkll)
    {
      DriverKit_AppleEthernetIXGBE_IVars::start();
    }

    *(this + 1284) = 1;
    (*(this + 33))(this, 0, 1);
  }

  else
  {
    *(this + 1284) = 1;
    (*(this + 33))(this, 0, 1);
    v69 = *(this + 31);
    if (v69)
    {
      v69(this);
    }

    ixgbe_set_phy_power(this);
    v4 = 0;
    *(this + 344) = ixgbe_get_supported_physical_layer(this);
    *(this + 1404) = 0x300000003;
    *(this + 1016) = 257;
  }

  return v4;
}

void DriverKit_AppleEthernetIXGBE_IVars::enableQueues(DriverKit_AppleEthernetIXGBE_IVars *this, unint64_t data)
{
  v2 = *(this + 174);
  if (v2 > 8)
  {
    return;
  }

  if (((1 << v2) & 0x1D4) == 0)
  {
    if (v2 != 1)
    {
      return;
    }

    __dmb(2u);
    v6 = *this;
    LODWORD(v5) = data;
    v7 = 2176;
    goto LABEL_10;
  }

  if (data)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*this, 0, 0xAA0uLL, data);
  }

  v5 = HIDWORD(data);
  if (HIDWORD(data))
  {
    __dmb(2u);
    v6 = *this;
    v7 = 2724;
LABEL_10:

    IOPCIDevice::MemoryWrite32(v6, 0, v7, v5);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::configGPIE(IOPCIDevice **this)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*this, 0, 0x898uLL, &readData);
  __dmb(1u);
  v2 = readData;
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::configGPIE();
  }

  *(this + 2748) = 1;
  v3 = *(this + 174);
  v4 = v2 | 0xC0000036;
  if (v3 != 2)
  {
    v4 = v2 | 0xC0000030;
  }

  if ((v3 - 7) >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2 | 0xC0000032;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*this, 0, 0x898uLL, v5);
}

void DriverKit_AppleEthernetIXGBE_IVars::enableIntrs(DriverKit_AppleEthernetIXGBE_IVars *this, int a2, int a3)
{
  v6 = -1072693248;
  v7 = *(this + 174);
  if (v7 > 6)
  {
    if ((v7 - 7) < 2)
    {
      if (*(this + 968) - 5548 <= 0x22)
      {
        v8 = ((1 << (*(this + 968) + 84)) & 0x401000003) == 0;
        *(this + 968);
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v6 = *(*(this + 241) + 44) | 0xC0100000;
      }

      if (*(this + 404) == 7)
      {
        v9 = v6 | 0x2000000;
      }

      else
      {
        v9 = v6;
      }

      v6 = v9 | 0x10000000;
    }
  }

  else
  {
    switch(v7)
    {
      case 2:
        v6 = -686817280;
        break;
      case 4:
        readData = 0;
        IOPCIDevice::MemoryRead32(*this, 0, 0x10148uLL, &readData);
        __dmb(1u);
        if (readData)
        {
          v6 = -795869184;
        }

        else
        {
          v6 = -804257792;
        }

        break;
      case 6:
        v6 = -795869184;
        break;
      default:
        v6 = -1072693248;
        break;
    }
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*this, 0, 0x880uLL, v6);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*this, 0, 0x810uLL, 0x4000FFFFu);
  if (a2)
  {
    DriverKit_AppleEthernetIXGBE_IVars::enableQueues(this, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (a3)
  {
    v10 = 0;
    IOPCIDevice::MemoryRead32(*this, 0, 8uLL, &v10);
    __dmb(1u);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::disableIntrs(DriverKit_AppleEthernetIXGBE_IVars *this)
{
  if ((pcindkll & 0x400) != 0)
  {
    DriverKit_AppleEthernetIXGBE_IVars::disableIntrs();
  }

  *(this + 2748) = 0;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*this, 0, 0x810uLL, 0);
  v2 = *(this + 174);
  __dmb(2u);
  v3 = *this;
  if (v2 == 1)
  {
    v4 = 2184;
  }

  else
  {
    IOPCIDevice::MemoryWrite32(v3, 0, 0x888uLL, 0xFFFF0000);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*this, 0, 0xAB0uLL, 0xFFFFFFFF);
    __dmb(2u);
    v3 = *this;
    v4 = 2740;
  }

  IOPCIDevice::MemoryWrite32(v3, 0, v4, 0xFFFFFFFF);
  readData = 0;
  IOPCIDevice::MemoryRead32(*this, 0, 8uLL, &readData);
  __dmb(1u);
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::disableIntrs();
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::setIVAR(DriverKit_AppleEthernetIXGBE_IVars *this, int a2, char a3, int a4)
{
  v6 = *(this + 174);
  if (v6 <= 8)
  {
    v23 = v4;
    v24 = v5;
    v8 = a3 | 0x80;
    if (((1 << v6) & 0x1D4) != 0)
    {
      if (a4 == -1)
      {
        v13 = 8 * (a2 & 1);
        v21 = 0;
        IOPCIDevice::MemoryRead32(*this, 0, 0xA00uLL, &v21);
        __dmb(1u);
        v14 = v21 & ~(255 << v13);
        __dmb(2u);
        v15 = *this;
        v16 = v14 | (v8 << v13);
        v17 = 2560;
LABEL_12:
        IOPCIDevice::MemoryWrite32(v15, 0, v17, v16);
        return;
      }

      v9 = 16 * (a2 & 1) + 8 * a4;
      readData = 0;
      v10 = ((2 * a2) & 0x1FCu) + 2304;
      IOPCIDevice::MemoryRead32(*this, 0, v10, &readData);
      __dmb(1u);
      v11 = readData & ~(255 << v9);
      v12 = v8 << v9;
      __dmb(2u);
    }

    else
    {
      if (v6 != 1)
      {
        return;
      }

      if (a4 == -1)
      {
        v18 = 97;
      }

      else
      {
        v18 = a2 + (a4 << 6);
      }

      v22 = 0;
      v10 = v18 & 0x7C | 0x900u;
      IOPCIDevice::MemoryRead32(*this, 0, v10, &v22);
      __dmb(1u);
      v19 = 8 * (v18 & 3);
      v11 = v22 & ~(255 << v19);
      v12 = v8 << v19;
      __dmb(2u);
    }

    v15 = *this;
    v16 = v11 | v12;
    v17 = v10;
    goto LABEL_12;
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::configureIVARS(DriverKit_AppleEthernetIXGBE_IVars *this)
{
  *(this + 1384) = 1000;
  DriverKit_AppleEthernetIXGBE_IVars::setIVAR(this, 1, 0, -1);
  if (*(this + 2033))
  {
    v2 = 0;
    v3 = 74404;
    v4 = 2084;
    do
    {
      v5 = v2 + 1;
      DriverKit_AppleEthernetIXGBE_IVars::setIVAR(this, v2, v2 + 1, 0);
      __dmb(2u);
      if (v2 >= 0x17)
      {
        v6 = v3;
      }

      else
      {
        v6 = v4;
      }

      IOPCIDevice::MemoryWrite32(*this, 0, v6, 0x79Eu);
      v3 += 4;
      v4 += 4;
      ++v2;
    }

    while (v5 < *(this + 2033));
  }

  if (*(this + 2032))
  {
    v7 = 0;
    do
    {
      v8 = v7 + 1;
      DriverKit_AppleEthernetIXGBE_IVars::setIVAR(this, v7, v7 + 1, 1);
      v7 = v8;
    }

    while (v8 < *(this + 2032));
  }
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::initReceiveUnit(IOPCIDevice **this)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::initReceiveUnit();
  }

  ixgbe_disable_rx(this);
  readData = 0;
  IOPCIDevice::MemoryRead32(*this, 0, 0x5080uLL, &readData);
  __dmb(1u);
  v2 = readData;
  if (*(this + 174) == 1)
  {
    v3 = 13312;
  }

  else
  {
    v3 = 1024;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*this, 0, 0x5080uLL, v3 | v2);
  readData = 0;
  IOPCIDevice::MemoryRead32(*this, 0, 0x4240uLL, &readData);
  __dmb(1u);
  v4 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*this, 0, 0x4240uLL, v4 & 0xFFFFFFFB);
  if (*(this + 2033))
  {
    v5 = 0;
    v6 = 0;
    v7 = (*(this + 686) + 1023) >> 10;
    v8 = (this + 333);
    v9 = 8448;
    do
    {
      __dmb(2u);
      v10 = v6 << 6;
      if (v6 >= 0x40)
      {
        v11 = (v5 + 49152);
      }

      else
      {
        v11 = v5 | 0x1000u;
      }

      if (v6 >= 0x40)
      {
        v12 = (v5 + 49156);
      }

      else
      {
        v12 = v5 | 0x1004u;
      }

      if (v6 >= 0x40)
      {
        v13 = (v5 + 49160);
      }

      else
      {
        v13 = v5 | 0x1008u;
      }

      IOPCIDevice::MemoryWrite32(*this, 0, v11, *v8);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*this, 0, v12, v8[1]);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*this, 0, v13, 0x1000u);
      readData = 0;
      v14 = v10 + 49172;
      if (v6 <= 0x3F)
      {
        v14 = v10 | 0x1014;
      }

      if (v6 >= 0x10)
      {
        v15 = v14;
      }

      else
      {
        v15 = v9;
      }

      IOPCIDevice::MemoryRead32(*this, 0, v15, &readData);
      __dmb(1u);
      if (*(this + 2033) < 2u || *(this + 352))
      {
        v16 = readData & 0xEDFFC080 | v7 & 0xEDFFFFFF | 0x2000000;
      }

      else
      {
        v16 = readData & 0xFDFFC080 | v7 | 0x12000000;
      }

      __dmb(2u);
      v17 = v9;
      if (v6 >= 0x10)
      {
        if (v6 > 0x3F)
        {
          v17 = v10 + 49172;
        }

        else
        {
          v17 = v10 | 0x1014;
        }
      }

      IOPCIDevice::MemoryWrite32(*this, 0, v17, v16);
      __dmb(2u);
      if (v6 >= 0x40)
      {
        v18 = (v5 + 49168);
      }

      else
      {
        v18 = v5 | 0x1010u;
      }

      if (v6 >= 0x40)
      {
        v19 = (v5 + 49176);
      }

      else
      {
        v19 = v5 | 0x1018u;
      }

      IOPCIDevice::MemoryWrite32(*this, 0, v18, *(v8 - 36));
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*this, 0, v19, *(v8 - 35));
      ++v6;
      v5 += 64;
      v9 += 4;
      v8 += 88;
    }

    while (v6 < *(this + 2033));
  }

  if (*(this + 174) != 1)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*this, 0, 0x5480uLL, 0x330u);
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*this, 0, 0x5000uLL, &readData);
  __dmb(1u);
  v20 = readData;
  if (*(this + 2033) > 1u)
  {
    v20 = readData | 0x2000;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*this, 0, 0x5000uLL, ~(v20 >> 1) & 0x1000 | v20);
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::initReceiveUnit();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::initTransmitUnit(IOPCIDevice **this)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::initTransmitUnit();
  }

  if (*(this + 2032))
  {
    v2 = 0;
    v3 = (this + 289);
    v4 = 29184;
    v5 = 24576;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*this, 0, v5, *v3);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*this, 0, v5 + 4, v3[1]);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*this, 0, v5 + 8, 0x1000u);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*this, 0, v5 + 16, *(v3 - 36));
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*this, 0, v5 + 24, *(v3 - 35));
      v6 = *v3 + 4096;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*this, 0, v5 + 56, v6 | 1);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*this, 0, v5 + 60, HIDWORD(v6));
      if (*(this + 174) == 1)
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*this, 0, v4, &readData);
      }

      else
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*this, 0, v5 + 12, &readData);
      }

      __dmb(1u);
      v7 = readData;
      v3 += 88;
      v8 = *(this + 174);
      __dmb(2u);
      if (v8 == 1)
      {
        v9 = v4;
      }

      else
      {
        v9 = v5 + 12;
      }

      IOPCIDevice::MemoryWrite32(*this, 0, v9, v7 & 0xFFFFF7FF);
      ++v2;
      v4 += 4;
      v5 += 64;
    }

    while (v2 < *(this + 2032));
  }

  if (*(this + 174) != 1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*this, 0, 0x4A80uLL, &readData);
    __dmb(1u);
    v10 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*this, 0, 0x4A80uLL, v10 | 1);
    readData = 0;
    IOPCIDevice::MemoryRead32(*this, 0, 0x4900uLL, &readData);
    __dmb(1u);
    v11 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*this, 0, 0x4900uLL, v11 | 0x40);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*this, 0, 0x4900uLL, v11 & 0xFFFFFFBF);
  }

  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::initTransmitUnit();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::up(DriverKit_AppleEthernetIXGBE_IVars *this)
{
  Rings = DriverKit_AppleEthernetIXGBE_IVars::allocateRings(this);
  if (Rings)
  {
    v3 = Rings;
    if ((pcindkll & 2) != 0)
    {
      DriverKit_AppleEthernetIXGBE_IVars::up(Rings, &readData);
      return readData;
    }
  }

  else
  {
    ixgbe_init_hw(this);
    DriverKit_AppleEthernetIXGBE_IVars::initTransmitUnit(this);
    DriverKit_AppleEthernetIXGBE_IVars::initReceiveUnit(this);
    DriverKit_AppleEthernetIXGBE_IVars::configGPIE(this);
    if (*(this + 2032))
    {
      v4 = 0;
      v5 = 24616;
      do
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*this, 0, v5, 0x2000120u);
        ++v4;
        v5 += 64;
      }

      while (v4 < *(this + 2032));
    }

    if (*(this + 2033))
    {
      v6 = 0;
      do
      {
        readData = 0;
        if (v6 >= 0x40)
        {
          v7 = (v6 << 6) + 49192;
        }

        else
        {
          v7 = (v6 << 6) | 0x1028;
        }

        IOPCIDevice::MemoryRead32(*this, 0, v7, &readData);
        __dmb(1u);
        v8 = readData;
        if (*(this + 174) == 1)
        {
          v8 = readData & 0xFDC00000 | 0x80420;
        }

        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*this, 0, v7, v8 | 0x2000000);
        v9 = 10;
        do
        {
          readData = 0;
          IOPCIDevice::MemoryRead32(*this, 0, v7, &readData);
          __dmb(1u);
          if ((readData & 0x2000000) != 0)
          {
            break;
          }

          IODelay(0x3E8uLL);
          --v9;
        }

        while (v9);
        __dmb(0xEu);
        ++v6;
      }

      while (v6 < *(this + 2033));
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*this, 0, 0x3000uLL, &readData);
    __dmb(1u);
    *(this + 174);
    ixgbe_enable_rx_dma(this);
    DriverKit_AppleEthernetIXGBE_IVars::configureIVARS(this);
    v10 = *(this + 174);
    __dmb(2u);
    v11 = *this;
    if (v10 == 1)
    {
      v12 = 2192;
      v13 = 0xFFFF;
    }

    else
    {
      IOPCIDevice::MemoryWrite32(v11, 0, 0xAD0uLL, 0xFFFFFFFF);
      __dmb(2u);
      v11 = *this;
      v12 = 2772;
      v13 = -1;
    }

    IOPCIDevice::MemoryWrite32(v11, 0, v12, v13);
    if (*(this + 404) == 1)
    {
      v3 = (*(this + 177))(this);
      if (v3 == -19)
      {
        if ((pcindkll & 2) == 0)
        {
          return 3758097084;
        }

        DriverKit_AppleEthernetIXGBE_IVars::up(&readData);
        return readData;
      }
    }

    else
    {
      v3 = 0;
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*this, 0, 0x820uLL, 0xFF8u);
    v14 = *(this + 174) - 1;
    if (v14 > 7)
    {
      v15 = 200;
    }

    else
    {
      v15 = dword_100030150[v14];
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*this, 0, 0x824uLL, v15);
    ixgbe_set_phy_power(this);
    DriverKit_AppleEthernetIXGBE_IVars::configLink(this);
    DriverKit_AppleEthernetIXGBE_IVars::configDelayValues(this);
    ixgbe_start_hw(this);
    DriverKit_AppleEthernetIXGBE_IVars::configDMAC(this);
    DriverKit_AppleEthernetIXGBE_IVars::enableIntrs(this, 1, 1);
  }

  return v3;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::configLink(uint64_t this)
{
  v1 = this;
  v2 = *(this + 696);
  if ((v2 - 7) < 2)
  {
    this = (*(this + 56))(this);
    if (this == 1)
    {
      goto LABEL_7;
    }

LABEL_11:
    if (!*(v1 + 280) || (this = ixgbe_check_link(v1), !this))
    {
      v6 = *(v1 + 1652);
      if (v6 || (v4 = *(v1 + 288)) == 0 || (v5 = 0, this = v4(v1, &v6, &v5), !this))
      {
        if (*(v1 + 696) == 6 && !*(v1 + 1652))
        {
          v6 &= 0xFFFFF3FF;
        }

        v3 = *(v1 + 264);
        if (v3)
        {
          return v3(v1, v6, *(v1 + 2764));
        }
      }
    }

    return this;
  }

  if (v2 == 2)
  {
    this = (*(this + 56))(this);
    if (((this - 1) & 0xFFFFFFFD) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (v2 != 1 || *(this + 1616) != 12)
  {
    goto LABEL_11;
  }

LABEL_7:
  *(v1 + 2772) |= 1u;

  return DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus(v1);
}

void DriverKit_AppleEthernetIXGBE_IVars::configDelayValues(DriverKit_AppleEthernetIXGBE_IVars *this)
{
  v2 = *(this + 686);
  v3 = *(this + 174) - 4;
  if (v3 > 4)
  {
    v4 = 2009376;
  }

  else
  {
    v4 = dword_100030170[v3];
  }

  v5 = (v4 + 288 * v2) / 0x19u + 16 * v2 + 0x2000;
  readData = 0;
  IOPCIDevice::MemoryRead32(*this, 0, 0x3C00uLL, &readData);
  __dmb(1u);
  *(this + 333) = (readData >> 10) - (v5 >> 13);
  v6 = *(this + 174) - 4;
  if (v6 > 4)
  {
    v8 = 28802;
    LOBYTE(v7) = 5;
  }

  else
  {
    v7 = dword_100030184[v6];
    v8 = dword_100030198[v6];
  }

  *(this + 341) = ((v2 << v7) + v8 + 0x1FFF) >> 13;
  *(this + 698) = -1;
  *(this + 1398) = 1;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::configDMAC(uint64_t this)
{
  if (*(this + 696) >= 6)
  {
    v32 = v1;
    v33 = v2;
    v3 = this;
    v4 = *(this + 632);
    if (v4)
    {
      v5 = *(this + 2768);
      if (*(this + 1288) == v5)
      {
        v6 = *(this + 2760);
        if (*(this + 1292) == v6)
        {
          return this;
        }
      }

      else
      {
        v6 = *(this + 2760);
      }

      *(this + 1288) = v5;
      *(this + 1290) = 0;
      *(this + 1292) = v6;
      *(this + 1297) = 1;
      if ((pcindkll & 1) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        if (__dq)
        {
          v7 = IODispatchQueue::OnQueue(__dq);
        }

        else
        {
          v7 = 0;
        }

        if (qword_10003C008)
        {
          if (IODispatchQueue::OnQueue(qword_10003C008))
          {
            v8 = 2;
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = 0;
        }

        v9 = v7 | v8;
        if (qword_10003C010)
        {
          if (IODispatchQueue::OnQueue(qword_10003C010))
          {
            v10 = 4;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }

        v11 = v9 | v10;
        if (qword_10003C018)
        {
          if (IODispatchQueue::OnQueue(qword_10003C018))
          {
            v12 = 8;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = v11 | v12;
        if (qword_10003C020)
        {
          if (IODispatchQueue::OnQueue(qword_10003C020))
          {
            v14 = 16;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        v15 = v13 | v14;
        if (qword_10003C028)
        {
          if (IODispatchQueue::OnQueue(qword_10003C028))
          {
            v16 = 32;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v17 = v16 | v15;
        if (qword_10003C030)
        {
          if (IODispatchQueue::OnQueue(qword_10003C030))
          {
            v18 = 64;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = v17 + v18;
        if (qword_10003C038)
        {
          if (IODispatchQueue::OnQueue(qword_10003C038))
          {
            v20 = 128;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        v21 = *(v3 + 1288);
        v22 = *(v3 + 1292);
        v23[0] = 67110146;
        v23[1] = v19 + v20;
        v24 = 2080;
        v25 = "configDMAC";
        v26 = 1024;
        v27 = 958;
        v28 = 1024;
        v29 = v21;
        v30 = 1024;
        v31 = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixgbe: [%x] %s(%d): dmac settings: watchdog %d, link speed %d\n", v23, 0x24u);
        return (*(v3 + 632))(v3);
      }

      else
      {
        return v4(v3);
      }
    }
  }

  return this;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::down(DriverKit_AppleEthernetIXGBE_IVars *this)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::down();
  }

  DriverKit_AppleEthernetIXGBE_IVars::disableIntrs(this);
  if ((*(this + 1954) & 1) == 0)
  {
    ixgbe_set_phy_power(this);
  }

  if (*(this + 968) == 5549 && *(this + 198))
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*this, 0, 0x5810uLL, 0xFFFFFFFF);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*this, 0, 0x5808uLL, 2u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*this, 0, 0x5800uLL, 0x12u);
    *(this + 1648) = 1;
    ixgbe_reset_hw(this);
    ixgbe_stop_adapter(this);
    if (*(this + 174) == 2)
    {
      ixgbe_stop_mac_link_on_d3_82599(this);
    }

    ixgbe_disable_tx_laser(this);
    *(this + 2764) = 0;
    DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus(this);
    (*(this + 198))(this);
    *(this + 1648) = 0;
  }

  else
  {
    ixgbe_reset_hw(this);
    *(this + 1945) = 0;
    ixgbe_stop_adapter(this);
    if (*(this + 174) == 2)
    {
      ixgbe_stop_mac_link_on_d3_82599(this);
    }

    ixgbe_disable_tx_laser(this);
    *(this + 2764) = 0;
    DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus(this);
  }

  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::down();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::setPromiscuousModeEnable(IOPCIDevice **this, int a2)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::setPromiscuousModeEnable();
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*this, 0, 0x5080uLL, &readData);
  __dmb(1u);
  v4 = readData & 0xFFFFFCFF;
  if (a2)
  {
    v5 = 768;
  }

  else
  {
    v5 = 0;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*this, 0, 0x5080uLL, v4 | v5);
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::setPromiscuousModeEnable();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::setAllMulticastModeEnable(IOPCIDevice **this, int a2)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::setAllMulticastModeEnable();
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*this, 0, 0x5080uLL, &readData);
  __dmb(1u);
  v4 = readData & 0xFFFFFEFF;
  if (a2)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*this, 0, 0x5080uLL, v4 | v5);
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::setAllMulticastModeEnable();
  }

  return 0;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::setMcastAddresses(DriverKit_AppleEthernetIXGBE_IVars *this, unsigned __int8 *a2, unsigned int a3)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::setMcastAddresses();
  }

  if (a3 <= 0x7F)
  {
    ixgbe_update_mc_addr_list(this);
  }

  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::setMcastAddresses();
  }

  return 0;
}

void DriverKit_AppleEthernetIXGBE_IVars::logState(DriverKit_AppleEthernetIXGBE_IVars *this)
{
  v1 = this;
  v2 = *(this + 630);
  v3 = *(this + 631);
  readData[0] = 0;
  IOPCIDevice::MemoryRead32(*this, 0, 0x1018uLL, readData);
  __dmb(1u);
  v4 = readData[0];
  readData[0] = 0;
  IOPCIDevice::MemoryRead32(*v1, 0, 0x1010uLL, readData);
  __dmb(1u);
  v5 = readData[0];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      v6 = IODispatchQueue::OnQueue(__dq);
    }

    else
    {
      v6 = 0;
    }

    if (qword_10003C008)
    {
      if (IODispatchQueue::OnQueue(qword_10003C008))
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v6 | v7;
    if (qword_10003C010)
    {
      if (IODispatchQueue::OnQueue(qword_10003C010))
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v8 | v9;
    if (qword_10003C018)
    {
      if (IODispatchQueue::OnQueue(qword_10003C018))
      {
        v11 = 8;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v10 | v11;
    if (qword_10003C020)
    {
      if (IODispatchQueue::OnQueue(qword_10003C020))
      {
        v13 = 16;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v12 | v13;
    if (qword_10003C028)
    {
      if (IODispatchQueue::OnQueue(qword_10003C028))
      {
        v15 = 32;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 | v14;
    if (qword_10003C030)
    {
      if (IODispatchQueue::OnQueue(qword_10003C030))
      {
        v17 = 64;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v16 + v17;
    if (qword_10003C038)
    {
      if (IODispatchQueue::OnQueue(qword_10003C038))
      {
        v19 = 128;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    readData[0] = 67110658;
    readData[1] = v18 + v19;
    LOWORD(readData[2]) = 2080;
    *(&readData[2] + 2) = "logState";
    HIWORD(readData[4]) = 1024;
    readData[5] = 974;
    LOWORD(readData[6]) = 1024;
    *(&readData[6] + 2) = v4;
    HIWORD(readData[7]) = 1024;
    LODWORD(v79) = v5;
    WORD2(v79) = 1024;
    *(&v79 + 6) = v3;
    WORD5(v79) = 1024;
    HIDWORD(v79) = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixgbe: [%x] %s(%d): RDT=0x%04x RDH=0x%04x tail=0x%04x head=0x%04x\n", readData, 0x30u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      v20 = IODispatchQueue::OnQueue(__dq);
    }

    else
    {
      v20 = 0;
    }

    if (qword_10003C008)
    {
      if (IODispatchQueue::OnQueue(qword_10003C008))
      {
        v21 = 2;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = v20 | v21;
    if (qword_10003C010)
    {
      if (IODispatchQueue::OnQueue(qword_10003C010))
      {
        v23 = 4;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = v22 | v23;
    if (qword_10003C018)
    {
      if (IODispatchQueue::OnQueue(qword_10003C018))
      {
        v25 = 8;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v26 = v24 | v25;
    if (qword_10003C020)
    {
      if (IODispatchQueue::OnQueue(qword_10003C020))
      {
        v27 = 16;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v28 = v26 | v27;
    if (qword_10003C028)
    {
      if (IODispatchQueue::OnQueue(qword_10003C028))
      {
        v29 = 32;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    v30 = v29 | v28;
    if (qword_10003C030)
    {
      if (IODispatchQueue::OnQueue(qword_10003C030))
      {
        v31 = 64;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = v30 + v31;
    if (qword_10003C038)
    {
      if (IODispatchQueue::OnQueue(qword_10003C038))
      {
        v33 = 128;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    readData[0] = 67109634;
    readData[1] = v32 + v33;
    LOWORD(readData[2]) = 2080;
    *(&readData[2] + 2) = "logState";
    HIWORD(readData[4]) = 1024;
    readData[5] = 976;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixgbe: [%x] %s(%d):    : 0               1               2               3\n", readData, 0x18u);
  }

  v34 = 0;
  v35 = 8;
  do
  {
    v36 = 0;
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    memset(readData, 0, sizeof(readData));
    v37 = (*(v1 + 332) + v35);
    do
    {
      v38 = *v37;
      v37 += 16;
      *(readData + v36++) = v38 & 1 | 0x30;
    }

    while (v36 != 64);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if (__dq)
      {
        v67 = IODispatchQueue::OnQueue(__dq);
      }

      else
      {
        v67 = 0;
      }

      if (qword_10003C008)
      {
        if (IODispatchQueue::OnQueue(qword_10003C008))
        {
          v39 = 2;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = 0;
      }

      if (qword_10003C010)
      {
        if (IODispatchQueue::OnQueue(qword_10003C010))
        {
          v40 = 4;
        }

        else
        {
          v40 = 0;
        }
      }

      else
      {
        v40 = 0;
      }

      if (qword_10003C018)
      {
        if (IODispatchQueue::OnQueue(qword_10003C018))
        {
          v41 = 8;
        }

        else
        {
          v41 = 0;
        }
      }

      else
      {
        v41 = 0;
      }

      v42 = v1;
      if (qword_10003C020)
      {
        if (IODispatchQueue::OnQueue(qword_10003C020))
        {
          v43 = 16;
        }

        else
        {
          v43 = 0;
        }
      }

      else
      {
        v43 = 0;
      }

      if (qword_10003C028)
      {
        if (IODispatchQueue::OnQueue(qword_10003C028))
        {
          v44 = 32;
        }

        else
        {
          v44 = 0;
        }
      }

      else
      {
        v44 = 0;
      }

      if (qword_10003C030)
      {
        if (IODispatchQueue::OnQueue(qword_10003C030))
        {
          v45 = 64;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
      }

      if (qword_10003C038)
      {
        if (IODispatchQueue::OnQueue(qword_10003C038))
        {
          v46 = 128;
        }

        else
        {
          v46 = 0;
        }
      }

      else
      {
        v46 = 0;
      }

      *buf = 67110146;
      v69 = (v44 | v67 | v39 | v40 | v41 | v43) + v45 + v46;
      v70 = 2080;
      v71 = "logState";
      v72 = 1024;
      v73 = 981;
      v74 = 1024;
      v75 = v34;
      v76 = 2080;
      v77 = readData;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixgbe: [%x] %s(%d): %03x: %s\n", buf, 0x28u);
      v1 = v42;
    }

    v35 += 1024;
    v47 = v34 >= 0xC0;
    v34 += 64;
  }

  while (!v47);
  v48 = *(v1 + 542);
  v49 = *(v1 + 543);
  readData[0] = 0;
  IOPCIDevice::MemoryRead32(*v1, 0, 0x6018uLL, readData);
  __dmb(1u);
  v50 = readData[0];
  readData[0] = 0;
  IOPCIDevice::MemoryRead32(*v1, 0, 0x6010uLL, readData);
  __dmb(1u);
  v51 = readData[0];
  __dmb(1u);
  v52 = *(*(v1 + 288) + 4096);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (__dq)
    {
      v53 = IODispatchQueue::OnQueue(__dq);
    }

    else
    {
      v53 = 0;
    }

    if (qword_10003C008)
    {
      if (IODispatchQueue::OnQueue(qword_10003C008))
      {
        v54 = 2;
      }

      else
      {
        v54 = 0;
      }
    }

    else
    {
      v54 = 0;
    }

    v55 = v53 | v54;
    if (qword_10003C010)
    {
      if (IODispatchQueue::OnQueue(qword_10003C010))
      {
        v56 = 4;
      }

      else
      {
        v56 = 0;
      }
    }

    else
    {
      v56 = 0;
    }

    v57 = v55 | v56;
    if (qword_10003C018)
    {
      if (IODispatchQueue::OnQueue(qword_10003C018))
      {
        v58 = 8;
      }

      else
      {
        v58 = 0;
      }
    }

    else
    {
      v58 = 0;
    }

    v59 = v57 | v58;
    if (qword_10003C020)
    {
      if (IODispatchQueue::OnQueue(qword_10003C020))
      {
        v60 = 16;
      }

      else
      {
        v60 = 0;
      }
    }

    else
    {
      v60 = 0;
    }

    v61 = v59 | v60;
    if (qword_10003C028)
    {
      if (IODispatchQueue::OnQueue(qword_10003C028))
      {
        v62 = 32;
      }

      else
      {
        v62 = 0;
      }
    }

    else
    {
      v62 = 0;
    }

    v63 = v62 | v61;
    if (qword_10003C030)
    {
      if (IODispatchQueue::OnQueue(qword_10003C030))
      {
        v64 = 64;
      }

      else
      {
        v64 = 0;
      }
    }

    else
    {
      v64 = 0;
    }

    v65 = v63 + v64;
    if (qword_10003C038)
    {
      if (IODispatchQueue::OnQueue(qword_10003C038))
      {
        v66 = 128;
      }

      else
      {
        v66 = 0;
      }
    }

    else
    {
      v66 = 0;
    }

    readData[0] = 67110914;
    readData[1] = v65 + v66;
    LOWORD(readData[2]) = 2080;
    *(&readData[2] + 2) = "logState";
    HIWORD(readData[4]) = 1024;
    readData[5] = 993;
    LOWORD(readData[6]) = 1024;
    *(&readData[6] + 2) = v50;
    HIWORD(readData[7]) = 1024;
    LODWORD(v79) = v51;
    WORD2(v79) = 1024;
    *(&v79 + 6) = v49;
    WORD5(v79) = 1024;
    HIDWORD(v79) = v48;
    LOWORD(v80) = 1024;
    *(&v80 + 2) = v52;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixgbe: [%x] %s(%d): TDT=0x%04x TDH=0x%04x tail=0x%04x head=0x%04x WBH=0x%04x\n", readData, 0x36u);
  }
}

void DriverKit_AppleEthernetIXGBE_IVars::handleReset(IODispatchQueue **this)
{
  DriverKit_AppleEthernetIXGBE_IVars::logState(this);
  v2 = this[247];
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZN34DriverKit_AppleEthernetIXGBE_IVars11handleResetEv_block_invoke;
  block[3] = &__block_descriptor_tmp_11;
  block[4] = this;
  IODispatchQueue::DispatchAsync(v2, block);
}

void ___ZN34DriverKit_AppleEthernetIXGBE_IVars11handleResetEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1984);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = ___ZN34DriverKit_AppleEthernetIXGBE_IVars11handleResetEv_block_invoke_2;
  block[3] = &__block_descriptor_tmp_3;
  block[4] = v1;
  IODispatchQueue::DispatchSync(v2, block);
}

uint64_t ___ZN34DriverKit_AppleEthernetIXGBE_IVars11handleResetEv_block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 2748) == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if (__dq)
      {
        v2 = IODispatchQueue::OnQueue(__dq);
      }

      else
      {
        v2 = 0;
      }

      if (qword_10003C008)
      {
        if (IODispatchQueue::OnQueue(qword_10003C008))
        {
          v3 = 2;
        }

        else
        {
          v3 = 0;
        }
      }

      else
      {
        v3 = 0;
      }

      v4 = v2 | v3;
      if (qword_10003C010)
      {
        if (IODispatchQueue::OnQueue(qword_10003C010))
        {
          v5 = 4;
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }

      v6 = v4 | v5;
      if (qword_10003C018)
      {
        if (IODispatchQueue::OnQueue(qword_10003C018))
        {
          v7 = 8;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = v6 | v7;
      if (qword_10003C020)
      {
        if (IODispatchQueue::OnQueue(qword_10003C020))
        {
          v9 = 16;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      v10 = v8 | v9;
      if (qword_10003C028)
      {
        if (IODispatchQueue::OnQueue(qword_10003C028))
        {
          v11 = 32;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = v11 | v10;
      if (qword_10003C030)
      {
        if (IODispatchQueue::OnQueue(qword_10003C030))
        {
          v13 = 64;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = v12 + v13;
      if (qword_10003C038)
      {
        if (IODispatchQueue::OnQueue(qword_10003C038))
        {
          v15 = 128;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v16[0] = 67109634;
      v16[1] = v14 + v15;
      v17 = 2080;
      v18 = "handleReset_block_invoke_2";
      v19 = 1024;
      v20 = 1005;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixgbe: [%x] %s(%d): Reset adapter\n", v16, 0x18u);
    }

    DriverKit_AppleEthernetIXGBE_IVars::disable(v1);
    return DriverKit_AppleEthernetIXGBE_IVars::enable(v1);
  }

  return result;
}

unsigned __int8 *DriverKit_AppleEthernetIXGBE_IVars::setMcastAddresses(unsigned char *,unsigned int)::$_0::__invoke(uint64_t a1, unsigned __int8 **a2, _DWORD *a3)
{
  v5 = *a2;
  if ((pcindkll & 0x40000000) != 0)
  {
    DriverKit_AppleEthernetIXGBE_IVars::setMcastAddresses(unsigned char *,unsigned int)::$_0::__invoke(*a2);
  }

  *a3 = 0;
  *a2 = v5 + 6;
  return v5;
}

void ixgbe_set_pcie_completion_timeout(IOPCIDevice **a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x11000uLL, &readData);
  __dmb(1u);
  v2 = readData;
  if ((readData & 0xF000) == 0)
  {
    if ((readData & 0x40000) != 0)
    {
      v3 = 0;
      IOPCIDevice::ConfigurationRead16(*a1, 0xC8uLL, &v3);
      IOPCIDevice::ConfigurationWrite16(*a1, 0xC8uLL, v3 | 5);
    }

    else
    {
      v2 = readData | 0x1000;
    }
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x11000uLL, v2 & 0xFFFEFFFF);
}

uint64_t ixgbe_init_ops_82598(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_ops_82598", 91, "ixgbe_init_ops_82598");
  }

  ixgbe_init_phy_ops_generic(a1);
  inited = ixgbe_init_ops_generic(a1);
  *(a1 + 1432) = ixgbe_init_phy_ops_82598;
  *(a1 + 32) = ixgbe_start_hw_82598;
  *(a1 + 48) = ixgbe_enable_relaxed_ordering_82598;
  *(a1 + 24) = ixgbe_reset_hw_82598;
  *(a1 + 56) = ixgbe_get_media_type_82598;
  *(a1 + 64) = ixgbe_get_supported_physical_layer_82598;
  *(a1 + 152) = ixgbe_read_analog_reg8_82598;
  *(a1 + 160) = ixgbe_write_analog_reg8_82598;
  *(a1 + 144) = ixgbe_set_lan_id_multi_port_pcie_82598;
  *(a1 + 176) = ixgbe_enable_rx_dma_82598;
  *(a1 + 384) = ixgbe_set_vmdq_82598;
  *(a1 + 400) = ixgbe_clear_vmdq_82598;
  *(a1 + 464) = ixgbe_set_vfta_82598;
  *(a1 + 472) = 0;
  *(a1 + 456) = ixgbe_clear_vfta_82598;
  *(a1 + 512) = ixgbe_fc_enable_82598;
  *(a1 + 1240) = 0x8000000080;
  *(a1 + 1248) = 16;
  *(a1 + 1264) = 64;
  *(a1 + 1256) = 0x2000000200;
  *(a1 + 1280) = ixgbe_get_pcie_msix_count_generic(a1);
  *(a1 + 1544) = ixgbe_read_i2c_eeprom_82598;
  *(a1 + 1536) = ixgbe_read_i2c_sff8472_82598;
  *(a1 + 280) = ixgbe_check_mac_link_82598;
  *(a1 + 256) = 0;
  *(a1 + 264) = ixgbe_setup_mac_link_82598;
  *(a1 + 288) = ixgbe_get_link_capabilities_82598;
  *(a1 + 304) = ixgbe_set_rxpba_82598;
  *(a1 + 536) = 0;
  *(a1 + 576) = 0;
  return inited;
}

uint64_t ixgbe_init_phy_ops_82598(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_phy_ops_82598", 164, "ixgbe_init_phy_ops_82598");
  }

  (*(a1 + 1416))(a1);
  if ((*(a1 + 56))(a1) == 4)
  {
    *(a1 + 264) = ixgbe_setup_copper_link_82598;
    *(a1 + 288) = ixgbe_get_copper_link_capabilities_generic;
  }

  v2 = *(a1 + 1616);
  if (v2 == 12)
  {
    *(a1 + 1440) = ixgbe_reset_phy_nl;
    v3 = (*(a1 + 1424))(a1);
    if (!v3)
    {
      v3 = 4294967277;
      if (*(a1 + 1628) != 0xFFFF)
      {
        v5 = 0;
        if (ixgbe_get_sfp_init_sequence_offsets(a1, &v5 + 1, &v5))
        {
          return 4294967277;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  else
  {
    v3 = 0;
    if (v2 == 2)
    {
      *(a1 + 1480) = ixgbe_setup_phy_link_tnx;
      *(a1 + 1504) = ixgbe_check_phy_link_tnx;
      *(a1 + 1512) = ixgbe_get_phy_firmware_version_tnx;
    }
  }

  return v3;
}

uint64_t ixgbe_start_hw_82598(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_start_hw_82598", 226, "ixgbe_start_hw_82598");
  }

  started = ixgbe_start_hw_generic(a1);
  if (!started)
  {
    if (*(a1 + 1260))
    {
      v3 = 0;
      v4 = 29184;
      do
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, v4, &readData);
        __dmb(1u);
        v5 = readData;
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, v4, v5 & 0xFFFFF7FF);
        if (v3 > 0xE)
        {
          break;
        }

        ++v3;
        v4 += 4;
      }

      while (v3 < *(a1 + 1260));
    }

    if (*(a1 + 1264))
    {
      v6 = 0;
      v7 = 8704;
      do
      {
        v10 = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, v7, &v10);
        __dmb(1u);
        v8 = v10;
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, v7, v8 & 0xFFFF5FFF);
        if (v6 > 0xE)
        {
          break;
        }

        ++v6;
        v7 += 4;
      }

      while (v6 < *(a1 + 1264));
    }

    ixgbe_set_pcie_completion_timeout(a1);
  }

  return started;
}

void ixgbe_enable_relaxed_ordering_82598(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_enable_relaxed_ordering_82598", 1333, "ixgbe_enable_relaxed_ordering_82598");
  }

  if (*(a1 + 1260))
  {
    v2 = 0;
    v3 = 29184;
    do
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v3, &readData);
      __dmb(1u);
      v4 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v3, v4 | 0x800);
      if (v2 > 0xE)
      {
        break;
      }

      ++v2;
      v3 += 4;
    }

    while (v2 < *(a1 + 1260));
  }

  if (*(a1 + 1264))
  {
    v5 = 0;
    v6 = 8704;
    do
    {
      v8 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v6, &v8);
      __dmb(1u);
      v7 = v8;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v6, v7 | 0xA000);
      if (v5 > 0xE)
      {
        break;
      }

      ++v5;
      v6 += 4;
    }

    while (v5 < *(a1 + 1264));
  }
}

uint64_t ixgbe_reset_hw_82598(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_hw_82598", 786, "ixgbe_reset_hw_82598");
  }

  v2 = (*(a1 + 120))(a1);
  if (v2)
  {
    return v2;
  }

  v11 = 0;
  (*(a1 + 152))(a1, 36, &v11);
  if ((v11 & 0x10) != 0)
  {
    (*(a1 + 152))(a1, 36, &v11);
    v11 &= ~0x10u;
    (*(a1 + 160))(a1, 36);
    (*(a1 + 152))(a1, 11, &v11);
    v11 &= 0xFu;
    (*(a1 + 160))(a1, 11);
    (*(a1 + 152))(a1, 12, &v11);
    v11 &= 0xFu;
    (*(a1 + 160))(a1, 12);
    (*(a1 + 152))(a1, 13, &v11);
    v11 &= 0xFu;
    (*(a1 + 160))(a1, 13);
  }

  if (*(a1 + 1648))
  {
    v3 = 0;
  }

  else
  {
    v8 = (*(a1 + 1432))(a1);
    v3 = v8;
    if (v8 != -20)
    {
      if (v8 == -19)
      {
        return v3;
      }

      (*(a1 + 1440))(a1);
    }
  }

  v2 = 0;
  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0, &readData);
    __dmb(1u);
    v4 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0, v4 | 0x4000000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
    v5 = 0;
    __dmb(1u);
    do
    {
      IODelay(1uLL);
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0, &readData);
      __dmb(1u);
      if ((readData & 0x4000000) == 0)
      {
        break;
      }
    }

    while (v5++ < 9);
    if ((readData & 0x4000000) != 0)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_reset_hw_82598", 858, "Reset polling failed to complete.\n");
      }

      v2 = 4294967281;
    }

    IODelay(0xC350uLL);
    if ((*(a1 + 1285) & 1) == 0)
    {
      break;
    }

    *(a1 + 1285) &= ~1u;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x110B0uLL, &readData);
  __dmb(1u);
  v7 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x110B0uLL, v7 & 0xFFDBFDBF);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
  __dmb(1u);
  if (*(a1 + 1283))
  {
    if (readData != *(a1 + 1268))
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0x42A0uLL, *(a1 + 1268));
    }
  }

  else
  {
    *(a1 + 1268) = readData;
    *(a1 + 1283) = 1;
  }

  (*(a1 + 72))(a1, a1 + 706);
  (*(a1 + 408))(a1);
  if (!v3)
  {
    return v2;
  }

  return v3;
}

uint64_t ixgbe_get_media_type_82598(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_media_type_82598", 325, "ixgbe_get_media_type_82598");
  }

  v2 = *(a1 + 1616);
  if (v2 == 2 || v2 == 9)
  {
    return 4;
  }

  v5 = *(a1 + 1936);
  result = 5;
  if (v5 > 0x1507)
  {
    if (v5 == 5384)
    {
      return result;
    }

    if (v5 != 5387)
    {
      return 0;
    }

    return 4;
  }

  v6 = v5 - 4294;
  if (v6 <= 0x2E)
  {
    if (((1 << (v5 + 58)) & 0x480008200003) != 0)
    {
      return 1;
    }

    if (((1 << (v5 + 58)) & 0x4000800000) != 0)
    {
      return 6;
    }

    if (v6 == 2)
    {
      return 4;
    }
  }

  if (v5 != 4278)
  {
    return 0;
  }

  return result;
}

uint64_t ixgbe_get_supported_physical_layer_82598(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
  __dmb(1u);
  v2 = readData;
  v11 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_supported_physical_layer_82598", 1201, "ixgbe_get_supported_physical_layer_82598");
  }

  (*(a1 + 1416))(a1);
  v3 = *(a1 + 1616);
  if (v3 == 9 || v3 == 2)
  {
    (*(a1 + 1448))(a1, 11, 1, &v11);
    return (v11 >> 4) & 2 | (v11 >> 2) & 1 | (v11 >> 5) & 4u;
  }

  v6 = v2 >> 13;
  if (v6 <= 1)
  {
    if (v2 >> 13)
    {
      v8 = 256;
      if ((v2 & 0x180) != 0x100)
      {
        v8 = ((v2 & 0x180) == 128) << 7;
      }

      if (v6 == 1)
      {
        result = v8;
      }

      else
      {
        result = 0;
      }

      goto LABEL_29;
    }

LABEL_26:
    if ((v2 & 0x200) != 0)
    {
      result = 512;
    }

    else
    {
      result = 1024;
    }

    goto LABEL_29;
  }

  if (v6 == 6 || v6 == 4)
  {
    if ((v2 & 0x80000000) == 0)
    {
      result = (v2 >> 21) & 0x200;
    }

    else
    {
      result = (v2 >> 21) & 0x200 | 0x80;
    }

    goto LABEL_29;
  }

  if (v6 == 2)
  {
    goto LABEL_26;
  }

  result = 0;
LABEL_29:
  if (v3 == 12)
  {
    (*(a1 + 1424))(a1);
    v9 = *(a1 + 1628);
    if (v9 > 2)
    {
      result = 0;
    }

    else
    {
      result = qword_1000301B8[v9];
    }
  }

  v10 = *(a1 + 1936);
  if (v10 > 0x10F0)
  {
    if (v10 == 4340)
    {
      return 16;
    }

    else if (v10 == 4337)
    {
      return 8;
    }
  }

  else if (v10 - 4294 < 2 || v10 == 4321)
  {
    return 64;
  }

  return result;
}

uint64_t ixgbe_read_analog_reg8_82598(IOPCIDevice **a1, int a2, _BYTE *a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_analog_reg8_82598", 1049, "ixgbe_read_analog_reg8_82598");
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x4800uLL, (a2 << 8) | 0x10000);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(0xAuLL);
  v7 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4800uLL, &v7);
  __dmb(1u);
  *a3 = v7;
  return 0;
}

uint64_t ixgbe_write_analog_reg8_82598(IOPCIDevice **a1, int a2, int a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_analog_reg8_82598", 1073, "ixgbe_write_analog_reg8_82598");
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x4800uLL, a3 | (a2 << 8));
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(0xAuLL);
  return 0;
}

uint64_t ixgbe_set_lan_id_multi_port_pcie_82598(uint64_t a1)
{
  v3 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_lan_id_multi_port_pcie_82598", 1303, "ixgbe_set_lan_id_multi_port_pcie_82598");
  }

  ixgbe_set_lan_id_multi_port_pcie(a1);
  result = (*(a1 + 1728))(a1, 6, &v3 + 2);
  if ((HIWORD(v3) - 1) <= 0xFFFDu)
  {
    result = (*(a1 + 1728))(a1, (HIWORD(v3) + 5), &v3);
    if ((v3 & 0xB) == 2)
    {
      *(a1 + 1812) = 0;
    }
  }

  return result;
}

uint64_t ixgbe_enable_rx_dma_82598(IOPCIDevice **a1, uint32_t data)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_enable_rx_dma_82598", 1402, "ixgbe_enable_rx_dma_82598");
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x3000uLL, data);
  return 0;
}

uint64_t ixgbe_set_vmdq_82598(uint64_t a1, unsigned int a2, char a3)
{
  v6 = *(a1 + 1248);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_vmdq_82598", 917, "ixgbe_set_vmdq_82598");
  }

  if (v6 <= a2)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): RAR index %d is out of range.\n\n", "ixgbe_set_vmdq_82598", 921, a2);
    }

    return 4294967264;
  }

  else
  {
    readData = 0;
    if (a2 >= 0x10)
    {
      v7 = 8 * a2 + 41476;
    }

    else
    {
      v7 = (8 * a2) | 0x5404;
    }

    IOPCIDevice::MemoryRead32(*a1, 0, v7, &readData);
    __dmb(1u);
    v8 = readData & 0xFFC3FFFF | ((a3 & 0xF) << 18);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v7, v8);
    return 0;
  }
}

uint64_t ixgbe_clear_vmdq_82598(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1248) <= a2)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): RAR index %d is out of range.\n\n", "ixgbe_clear_vmdq_82598", 947, a2);
    }

    return 4294967264;
  }

  else
  {
    readData = 0;
    v3 = *a1;
    if (a2 >= 0x10)
    {
      v4 = 8 * a2 + 41476;
    }

    else
    {
      v4 = (8 * a2) | 0x5404;
    }

    IOPCIDevice::MemoryRead32(v3, 0, v4, &readData);
    __dmb(1u);
    v5 = readData;
    if ((readData & 0x3C0000) != 0)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v4, v5 & 0xFFC3FFFF);
    }

    return 0;
  }
}

uint64_t ixgbe_set_vfta_82598(IOPCIDevice **a1, unsigned int a2, int a3, int a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_vfta_82598", 980, "ixgbe_set_vfta_82598");
  }

  if (a2 > 0xFFF)
  {
    return 4294967291;
  }

  v9 = 4 * (a2 & 7);
  readData = 0;
  v10 = (a2 >> 3) & 0x1FC;
  IOPCIDevice::MemoryRead32(*a1, 0, (v10 | (((a2 >> 3) & 3) << 9)) + 41472, &readData);
  __dmb(1u);
  v11 = readData & ~(15 << v9);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, (v10 | (((a2 >> 3) & 3) << 9)) + 41472, v11 | (a3 << v9));
  v13 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, v10 | 0xA000u, &v13);
  __dmb(1u);
  if (a4)
  {
    v12 = v13 | (1 << a2);
  }

  else
  {
    v12 = v13 & ~(1 << a2);
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, v10 | 0xA000u, v12);
  return 0;
}

uint64_t ixgbe_clear_vfta_82598(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_clear_vfta_82598", 1024, "ixgbe_clear_vfta_82598");
  }

  LODWORD(v2) = *(a1 + 1244);
  if (v2)
  {
    v3 = 0;
    v4 = 40960;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v4 & 0xFFFFFFFC, 0);
      ++v3;
      v2 = *(a1 + 1244);
      v4 += 4;
    }

    while (v3 < v2);
  }

  v5 = 0;
  v6 = 41472;
  do
  {
    if (v2)
    {
      v7 = 0;
      v8 = v6;
      do
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, v8, 0);
        ++v7;
        v2 = *(a1 + 1244);
        v8 += 4;
      }

      while (v7 < v2);
    }

    ++v5;
    v6 += 512;
  }

  while (v5 != 4);
  return 0;
}

uint64_t ixgbe_fc_enable_82598(uint64_t a1)
{
  v25 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fc_enable_82598", 385, "ixgbe_fc_enable_82598");
  }

  if (!*(a1 + 1396))
  {
    return 4294967283;
  }

  v2 = 0;
  v3 = (a1 + 1364);
  do
  {
    if ((*(a1 + 1404) & 2) != 0)
    {
      v4 = *(a1 + v2 + 1332);
      if (v4)
      {
        v5 = *(a1 + v2 + 1364);
        if (!v5 || v5 >= v4)
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fc_enable_82598", 399, "Invalid water mark configuration\n");
          }

          return 4294967283;
        }
      }
    }

    v2 += 4;
  }

  while (v2 != 32);
  v24 = 0;
  (*(a1 + 280))(a1, &v25, &v24, 0);
  if (v24 == 1 && v25 == 32)
  {
    v7 = *(a1 + 1408);
    if (v7 == 3)
    {
      v8 = 2;
LABEL_21:
      *(a1 + 1408) = v8;
    }

    else if (v7 == 1)
    {
      v8 = 0;
      goto LABEL_21;
    }
  }

  ixgbe_fc_autoneg(a1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x5080uLL, &readData);
  __dmb(1u);
  v10 = readData & 0xFFFF3FFF;
  v22 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x3D00uLL, &v22);
  __dmb(1u);
  v11 = v22 & 0xFFFFFFE7;
  v12 = *(a1 + 1404);
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 != 3)
      {
        goto LABEL_40;
      }

      v10 |= 0x8000u;
    }

    v11 |= 8u;
LABEL_30:
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x5080uLL, v10 | 0x2000);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x3D00uLL, v11);
    v13 = 0;
    v14 = 0;
    do
    {
      if ((*(a1 + 1404) & 2) != 0 && (v15 = *(v3 - 8)) != 0)
      {
        v16 = *v3 << 10;
        v17 = (v15 << 10) | 0x80000000;
        __dmb(2u);
        v18 = 8 * v14;
        IOPCIDevice::MemoryWrite32(*a1, 0, v13 + 12832, v16 | 0x80000000);
        __dmb(2u);
      }

      else
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, v13 + 12832, 0);
        v17 = 0;
        __dmb(2u);
        v18 = v13;
      }

      IOPCIDevice::MemoryWrite32(*a1, 0, v18 + 12896, v17);
      ++v14;
      ++v3;
      v13 += 8;
    }

    while (v13 != 64);
    v19 = *(a1 + 1396) | (*(a1 + 1396) << 16);
    v20 = 12800;
    v21 = 4;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v20, v19);
      v20 += 4;
      --v21;
    }

    while (v21);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, 0x32A0uLL, *(a1 + 1396) >> 1);
    return 0;
  }

  if (!v12)
  {
    goto LABEL_30;
  }

  if (v12 == 1)
  {
    v10 |= 0x8000u;
    goto LABEL_30;
  }

LABEL_40:
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_fc_enable_82598", 477, "Flow control param set incorrectly\n");
  }

  return 4294967292;
}

uint64_t ixgbe_check_mac_link_82598(uint64_t a1, int *a2, _BYTE *a3, int a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_check_mac_link_82598", 616, "ixgbe_check_mac_link_82598");
  }

  v18 = 0;
  v17 = 0;
  if (*(a1 + 1616) == 12)
  {
    (*(a1 + 1448))(a1, 51103, 1, &v18);
    (*(a1 + 1448))(a1, 51103, 1, &v18);
    (*(a1 + 1448))(a1, 49164, 1, &v17);
    if (!a4)
    {
      if (v18 & 1) == 0 || (v17)
      {
LABEL_34:
        *a3 = 0;
        return 0;
      }

      goto LABEL_14;
    }

    if (*(a1 + 1304))
    {
      v8 = 0;
      while ((v18 & 1) == 0 || (v17 & 1) != 0)
      {
        *a3 = 0;
        IODelay(0x186A0uLL);
        (*(a1 + 1448))(a1, 51103, 1, &v18);
        (*(a1 + 1448))(a1, 49164, 1, &v17);
        if (++v8 >= *(a1 + 1304))
        {
          goto LABEL_10;
        }
      }

LABEL_14:
      *a3 = 1;
      goto LABEL_15;
    }

LABEL_10:
    if (!*a3)
    {
      return 0;
    }
  }

LABEL_15:
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A4uLL, &readData);
  __dmb(1u);
  v9 = readData;
  if (a4)
  {
    if (!*(a1 + 1304))
    {
      goto LABEL_24;
    }

    v10 = 0;
    while ((v9 & 0x40000000) == 0)
    {
      *a3 = 0;
      IODelay(0x186A0uLL);
      v15 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x42A4uLL, &v15);
      __dmb(1u);
      v9 = v15;
      if (++v10 >= *(a1 + 1304))
      {
        goto LABEL_24;
      }
    }

    LOBYTE(v11) = 1;
  }

  else
  {
    v11 = (readData >> 30) & 1;
  }

  *a3 = v11;
LABEL_24:
  if ((v9 & 0x20000000) != 0)
  {
    v12 = 128;
  }

  else
  {
    v12 = 32;
  }

  *a2 = v12;
  if (*(a1 + 1936) == 5387 && *a3 == 1)
  {
    v19 = 0;
    v13 = 50;
    while (1)
    {
      (*(a1 + 1448))(a1, 1, 7, &v19);
      if ((~v19 & 0x24) == 0)
      {
        break;
      }

      IODelay(0x186A0uLL);
      if (!--v13)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_validate_link_ready", 592, "Link was indicated but link is down\n");
        }

        goto LABEL_34;
      }
    }
  }

  return 0;
}

uint64_t ixgbe_setup_mac_link_82598(IOPCIDevice **a1, unsigned int a2, int a3)
{
  v11 = 0;
  readData = 0;
  v10 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
  __dmb(1u);
  v6 = readData;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_mac_link_82598", 708, "ixgbe_setup_mac_link_82598");
  }

  ixgbe_get_link_capabilities(a1);
  if ((v10 & a2) == 0)
  {
    return 4294967288;
  }

  if ((v6 & 0xA000) == 0x8000)
  {
    v7 = v6 & 0x3FFFDFFF | (((v10 & a2) >> 7) << 31) | ((((v10 & a2) >> 5) & 1) << 30);
    if (v7 != v6)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0x42A0uLL, v7);
    }
  }

  return ixgbe_start_mac_link_82598(a1, a3);
}

uint64_t ixgbe_get_link_capabilities_82598(uint64_t a1, int *a2, char *a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_link_capabilities_82598", 269, "ixgbe_get_link_capabilities_82598");
  }

  if (*(a1 + 1283) == 1)
  {
    v6 = *(a1 + 1268);
  }

  else
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
    __dmb(1u);
    v6 = readData;
  }

  v7 = v6 >> 13;
  result = 4294967288;
  if (v7 <= 1)
  {
    if (v6 >> 13)
    {
      if (v7 != 1)
      {
        return result;
      }

      v10 = 0;
      v9 = 128;
      goto LABEL_17;
    }

    v10 = 0;
    goto LABEL_16;
  }

  if (v7 == 2)
  {
    v10 = 1;
LABEL_16:
    v9 = 32;
    goto LABEL_17;
  }

  if (v7 == 4 || v7 == 6)
  {
    v9 = (v6 >> 25) & 0x20 | (v6 >> 31 << 7);
    v10 = 1;
LABEL_17:
    result = 0;
    *a2 = v9;
    *a3 = v10;
  }

  return result;
}

void ixgbe_set_rxpba_82598(IOPCIDevice **a1, int a2, uint64_t a3, int a4)
{
  if (a2)
  {
    if (a4 == 1)
    {
      v5 = 15360;
      v6 = 4;
      v7 = 4;
      do
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, v5, 0x14000u);
        v5 += 4;
        --v7;
      }

      while (v7);
      v8 = 49152;
    }

    else
    {
      v6 = 0;
      v8 = 0x10000;
    }

    v9 = (4 * v6) | 0x3C00;
    v10 = v6 | 0xFFFFFFFFFFFFFFF8;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v9, v8);
      v9 += 4;
    }

    while (!__CFADD__(v10++, 1));
    v12 = 52224;
    v13 = 8;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v12, 0xA000u);
      v12 += 4;
      --v13;
    }

    while (v13);
  }
}

uint64_t ixgbe_setup_copper_link_82598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_setup_copper_link_82598", 757, "ixgbe_setup_copper_link_82598");
  }

  v6 = (*(a1 + 1496))(a1, a2, a3);
  ixgbe_start_mac_link_82598(a1, a3);
  return v6;
}

uint64_t ixgbe_read_i2c_phy_82598(uint64_t a1, int a2, int a3, _BYTE *a4)
{
  v14 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_i2c_phy_82598", 1102, "ixgbe_read_i2c_phy_82598");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  if ((readData & 4) != 0)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if ((*(a1 + 200))(a1, v8))
  {
    return 4294967280;
  }

  if (*(a1 + 1616) == 12)
  {
    (*(a1 + 1472))(a1, 49930, 1, a3 | (a2 << 8) | 0x100u);
    v10 = 100;
    while (1)
    {
      (*(a1 + 1464))(a1, 49932, 1, &v14);
      v11 = v14 & 3;
      LOWORD(v14) = v14 & 3;
      if (v11 != 3)
      {
        break;
      }

      IODelay(0x2710uLL);
      if (!--v10)
      {
        v11 = v14;
        break;
      }
    }

    if (v11 == 1)
    {
      (*(a1 + 1464))(a1, 49931, 1, &v14 + 2);
      v9 = 0;
      *a4 = HIBYTE(v14);
    }

    else
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_i2c_phy_82598", 1138, "EEPROM read did not pass.\n");
      }

      v9 = 4294967276;
    }
  }

  else
  {
    v9 = 4294967293;
  }

  (*(a1 + 208))(a1, v8);
  return v9;
}

uint64_t ixgbe_start_mac_link_82598(IOPCIDevice **a1, int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_start_mac_link_82598", 531, "ixgbe_start_mac_link_82598");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
  __dmb(1u);
  v4 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x42A0uLL, v4 | 0x1000);
  if (a2 && (v4 & 0xA000 | 0x4000) == 0xC000)
  {
    v5 = 45;
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
      if (!--v5)
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_start_mac_link_82598", 553, "Autonegotiation did not complete.\n");
        }

        v6 = 4294967282;
        goto LABEL_12;
      }
    }
  }

  v6 = 0;
LABEL_12:
  IODelay(0xC350uLL);
  return v6;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::allocRing(uint64_t a1, uint64_t a2, int a3)
{
  segmentsCount[0] = 1;
  flags = 0;
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::allocRing(a2);
  }

  v6 = IOBufferMemoryDescriptor::Create(3uLL, (IOVMPageSize + 16 * (*(a2 + 280) + a3) - 1) / IOVMPageSize * IOVMPageSize, IOVMPageSize, (a2 + 296));
  if (v6)
  {
    v7 = v6;
    if ((pcindkll & 2) == 0)
    {
      goto LABEL_17;
    }

    DriverKit_AppleEthernetIXGBE_IVars::allocRing();
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

    DriverKit_AppleEthernetIXGBE_IVars::allocRing();
    goto LABEL_15;
  }

  *(a2 + 264) = range.address;
  specification.options = 0;
  memset(specification._resv, 0, sizeof(specification._resv));
  specification.maxAddressBits = 64;
  v9 = IODMACommand::Create(*(a1 + 1968), 0, &specification, (a2 + 288));
  if (v9)
  {
    v7 = v9;
    if ((pcindkll & 2) == 0)
    {
      goto LABEL_17;
    }

    DriverKit_AppleEthernetIXGBE_IVars::allocRing();
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
    DriverKit_AppleEthernetIXGBE_IVars::allocRing();
LABEL_15:
    v7 = segmentsCount[1];
  }

LABEL_17:
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::allocRing();
  }

  return v7;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::allocateRings(DriverKit_AppleEthernetIXGBE_IVars *this)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetIXGBE_IVars::allocateRings();
  }

  v2 = this + 2040;
  v3 = -1;
  while (++v3 < *(this + 2033))
  {
    *(v2 + 158) = 256;
    v4 = DriverKit_AppleEthernetIXGBE_IVars::allocRing(this, (v2 + 352), 0);
    if (!v4)
    {
      *(v2 + 70) = 256;
      v4 = DriverKit_AppleEthernetIXGBE_IVars::allocRing(this, v2, 1);
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
    DriverKit_AppleEthernetIXGBE_IVars::allocateRings();
  }

  return v5;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::freeRing(uint64_t a1, void *a2)
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

uint64_t DriverKit_AppleEthernetIXGBE_IVars::freeRings(uint64_t this)
{
  if (*(this + 2033))
  {
    v1 = this;
    v2 = 0;
    v3 = (this + 2040);
    do
    {
      v4 = DriverKit_AppleEthernetIXGBE_IVars::freeRing(this, v3 + 44);
      this = DriverKit_AppleEthernetIXGBE_IVars::freeRing(v4, v3);
      ++v2;
      v3 += 44;
    }

    while (v2 < *(v1 + 2033));
  }

  return this;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::startInterface(DriverKit_AppleEthernetIXGBE_IVars *this)
{
  DriverKit_AppleEthernetIXGBE_IVars::selMed(this, 32);
  *(this + 686) = 2048;
  v61 = 0u;
  *__str = 0u;
  *returnDeviceNumber = 0;
  returnFunctionNumber = 0;
  IOPCIDevice::GetBusDeviceFunction(*(this + 246), &returnDeviceNumber[1], returnDeviceNumber, &returnFunctionNumber, 0);
  snprintf(__str, 0x20uLL, "ixgbe:%d:%d:%d:%s", returnDeviceNumber[1], returnDeviceNumber[0], returnFunctionNumber, "");
  *&options.packetCount = 0x40000000400;
  options.bufferSize = *(this + 686);
  *&options.maxBuffersPerPacket = 1;
  options.poolFlags = 0x20000000;
  options.dmaSpecification.maxAddressBits = 64;
  v2 = IOUserNetworkPacketBufferPool::CreateWithOptions(*(this + 246), "ixgbe", &options, this + 253);
  if (v2)
  {
    v3 = v2;
    if (pcindkll)
    {
      DriverKit_AppleEthernetIXGBE_IVars::startInterface();
      return *buf;
    }
  }

  else
  {
    v4 = IOUserNetworkTxSubmissionQueue::Create(*(this + 253), *(this + 245), 0x100u, 0, *(this + 247), this + 297);
    if (v4)
    {
      v3 = v4;
      if (pcindkll)
      {
        DriverKit_AppleEthernetIXGBE_IVars::startInterface();
        return *buf;
      }
    }

    else
    {
      ActionTxSubmit = DriverKit_AppleEthernetIXGBE::CreateActionTxSubmit(*(this + 245), 8uLL, this + 294);
      if (ActionTxSubmit)
      {
        v3 = ActionTxSubmit;
        if (pcindkll)
        {
          DriverKit_AppleEthernetIXGBE_IVars::startInterface();
          return *buf;
        }
      }

      else
      {
        v6 = (*(**(this + 297) + 72))(*(this + 297), this + 2360);
        if (v6)
        {
          v3 = v6;
          if (pcindkll)
          {
            DriverKit_AppleEthernetIXGBE_IVars::startInterface();
            return *buf;
          }
        }

        else
        {
          v7 = IODataQueueDispatchSource::SetDataAvailableHandler(*(this + 295), *(this + 294), 0);
          if (!v7)
          {
            v8 = IOUserNetworkTxCompletionQueue::Create(*(this + 253), *(this + 245), 0x100u, 0, *(this + 247), this + 298);
            if (v8)
            {
              v3 = v8;
              if (pcindkll)
              {
                DriverKit_AppleEthernetIXGBE_IVars::startInterface();
                return *buf;
              }

              return v3;
            }

            v10 = (*(**(this + 298) + 72))(*(this + 298), this + 2368);
            if (v10)
            {
              v3 = v10;
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                return v3;
              }

              if (__dq)
              {
                v11 = IODispatchQueue::OnQueue(__dq);
              }

              else
              {
                v11 = 0;
              }

              if (qword_10003C008)
              {
                if (IODispatchQueue::OnQueue(qword_10003C008))
                {
                  v14 = 2;
                }

                else
                {
                  v14 = 0;
                }
              }

              else
              {
                v14 = 0;
              }

              v15 = v11 | v14;
              if (qword_10003C010)
              {
                if (IODispatchQueue::OnQueue(qword_10003C010))
                {
                  v16 = 4;
                }

                else
                {
                  v16 = 0;
                }
              }

              else
              {
                v16 = 0;
              }

              v17 = v15 | v16;
              if (qword_10003C018)
              {
                if (IODispatchQueue::OnQueue(qword_10003C018))
                {
                  v18 = 8;
                }

                else
                {
                  v18 = 0;
                }
              }

              else
              {
                v18 = 0;
              }

              v19 = v17 | v18;
              if (qword_10003C020)
              {
                if (IODispatchQueue::OnQueue(qword_10003C020))
                {
                  v20 = 16;
                }

                else
                {
                  v20 = 0;
                }
              }

              else
              {
                v20 = 0;
              }

              v21 = v19 | v20;
              if (qword_10003C028)
              {
                if (IODispatchQueue::OnQueue(qword_10003C028))
                {
                  v22 = 32;
                }

                else
                {
                  v22 = 0;
                }
              }

              else
              {
                v22 = 0;
              }

              v23 = v22 | v21;
              if (qword_10003C030)
              {
                if (IODispatchQueue::OnQueue(qword_10003C030))
                {
                  v24 = 64;
                }

                else
                {
                  v24 = 0;
                }
              }

              else
              {
                v24 = 0;
              }

              v25 = v23 + v24;
              if (qword_10003C038)
              {
                if (IODispatchQueue::OnQueue(qword_10003C038))
                {
                  v26 = 128;
                }

                else
                {
                  v26 = 0;
                }
              }

              else
              {
                v26 = 0;
              }

              *buf = 67109890;
              v50 = v25 + v26;
              v51 = 2080;
              v52 = "startInterface";
              v53 = 1024;
              v54 = 164;
              v55 = 1024;
              v56 = v3;
            }

            else
            {
              v12 = IOUserNetworkRxSubmissionQueue::Create(*(this + 253), *(this + 245), 0x100u, 0, *(this + 247), this + 341);
              if (v12)
              {
                v3 = v12;
                if (pcindkll)
                {
                  DriverKit_AppleEthernetIXGBE_IVars::startInterface();
                  return *buf;
                }

                return v3;
              }

              ActionRxSubmit = DriverKit_AppleEthernetIXGBE::CreateActionRxSubmit(*(this + 245), 8uLL, this + 338);
              if (ActionRxSubmit)
              {
                v3 = ActionRxSubmit;
                if (pcindkll)
                {
                  DriverKit_AppleEthernetIXGBE_IVars::startInterface();
                  return *buf;
                }

                return v3;
              }

              v27 = (*(**(this + 341) + 72))(*(this + 341), this + 2712);
              if (v27)
              {
                v3 = v27;
                if (pcindkll)
                {
                  DriverKit_AppleEthernetIXGBE_IVars::startInterface();
                  return *buf;
                }

                return v3;
              }

              v28 = IODataQueueDispatchSource::SetDataAvailableHandler(*(this + 339), *(this + 338), 0);
              if (v28)
              {
                v3 = v28;
                if (pcindkll)
                {
                  DriverKit_AppleEthernetIXGBE_IVars::startInterface();
                  return *buf;
                }

                return v3;
              }

              v29 = IOUserNetworkRxCompletionQueue::Create(*(this + 253), *(this + 245), 0x100u, 0, *(this + 247), this + 342);
              if (v29)
              {
                v3 = v29;
                if (pcindkll)
                {
                  DriverKit_AppleEthernetIXGBE_IVars::startInterface();
                  return *buf;
                }

                return v3;
              }

              v30 = (*(**(this + 342) + 72))(*(this + 342), this + 2720);
              if (!v30)
              {
                v57 = 256;
                SupportedMediaArray = DriverKit_AppleEthernetIXGBE_IVars::getSupportedMediaArray(this, buf, &v57);
                if (SupportedMediaArray)
                {
                  v3 = SupportedMediaArray;
                  if ((pcindkll & 1) == 0)
                  {
                    return v3;
                  }

                  DriverKit_AppleEthernetIXGBE_IVars::startInterface();
                }

                else
                {
                  v33 = (*(**(this + 245) + 72))(*(this + 245), buf, v57);
                  if (!v33)
                  {
                    v47 = *(this + 2728);
                    v48[0] = *(this + 2376);
                    v48[1] = v47;
                    v3 = (*(**(this + 245) + 272))(*(this + 245), *(this + 175) | (*(this + 352) << 32), *(this + 253), v48, 4);
                    if (pcindkll)
                    {
                      DriverKit_AppleEthernetIXGBE_IVars::startInterface();
                    }

                    return v3;
                  }

                  v3 = v33;
                  if ((pcindkll & 1) == 0)
                  {
                    return v3;
                  }

                  DriverKit_AppleEthernetIXGBE_IVars::startInterface();
                }

                return LODWORD(v48[0]);
              }

              v3 = v30;
              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                return v3;
              }

              if (__dq)
              {
                v31 = IODispatchQueue::OnQueue(__dq);
              }

              else
              {
                v31 = 0;
              }

              if (qword_10003C008)
              {
                if (IODispatchQueue::OnQueue(qword_10003C008))
                {
                  v34 = 2;
                }

                else
                {
                  v34 = 0;
                }
              }

              else
              {
                v34 = 0;
              }

              v35 = v31 | v34;
              if (qword_10003C010)
              {
                if (IODispatchQueue::OnQueue(qword_10003C010))
                {
                  v36 = 4;
                }

                else
                {
                  v36 = 0;
                }
              }

              else
              {
                v36 = 0;
              }

              v37 = v35 | v36;
              if (qword_10003C018)
              {
                if (IODispatchQueue::OnQueue(qword_10003C018))
                {
                  v38 = 8;
                }

                else
                {
                  v38 = 0;
                }
              }

              else
              {
                v38 = 0;
              }

              v39 = v37 | v38;
              if (qword_10003C020)
              {
                if (IODispatchQueue::OnQueue(qword_10003C020))
                {
                  v40 = 16;
                }

                else
                {
                  v40 = 0;
                }
              }

              else
              {
                v40 = 0;
              }

              v41 = v39 | v40;
              if (qword_10003C028)
              {
                if (IODispatchQueue::OnQueue(qword_10003C028))
                {
                  v42 = 32;
                }

                else
                {
                  v42 = 0;
                }
              }

              else
              {
                v42 = 0;
              }

              v43 = v42 | v41;
              if (qword_10003C030)
              {
                if (IODispatchQueue::OnQueue(qword_10003C030))
                {
                  v44 = 64;
                }

                else
                {
                  v44 = 0;
                }
              }

              else
              {
                v44 = 0;
              }

              v45 = v43 + v44;
              if (qword_10003C038)
              {
                if (IODispatchQueue::OnQueue(qword_10003C038))
                {
                  v46 = 128;
                }

                else
                {
                  v46 = 0;
                }
              }

              else
              {
                v46 = 0;
              }

              *buf = 67109890;
              v50 = v45 + v46;
              v51 = 2080;
              v52 = "startInterface";
              v53 = 1024;
              v54 = 201;
              v55 = 1024;
              v56 = v3;
            }

            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixgbe: [%x] %s(%d): ==> 0x%08x\n", buf, 0x1Eu);
            return v3;
          }

          v3 = v7;
          if (pcindkll)
          {
            DriverKit_AppleEthernetIXGBE_IVars::startInterface();
            return *buf;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::enable(IOUserNetworkPacketQueue **this)
{
  v2 = DriverKit_AppleEthernetIXGBE_IVars::up(this);
  if (!v2)
  {
    DriverKit_AppleEthernetIXGBE_IVars::updateAdminStatus(this);
    v2 = IOUserNetworkPacketQueue::SetEnable(this[342], 1, 0);
    if (!v2)
    {
      v2 = IOUserNetworkPacketQueue::SetEnable(this[341], 1, 0);
      if (!v2)
      {
        v2 = IOUserNetworkPacketQueue::SetEnable(this[298], 1, 0);
        if (!v2)
        {
          v2 = IOUserNetworkPacketQueue::SetEnable(this[297], 1, 0);
        }
      }
    }
  }

  v3 = v2;
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXGBE_IVars::enable();
  }

  return v3;
}

uint64_t DriverKit_AppleEthernetIXGBE_IVars::disable(IOUserNetworkPacketQueue **this)
{
  DriverKit_AppleEthernetIXGBE_IVars::down(this);
  IOUserNetworkPacketQueue::SetEnable(this[341], 0, 0);
  DriverKit_AppleEthernetIXGBE_IVars::drain(this, (this + 299));
  IOUserNetworkPacketQueue::SetEnable(this[342], 0, 0);
  IOUserNetworkPacketQueue::SetEnable(this[297], 0, 0);
  DriverKit_AppleEthernetIXGBE_IVars::drain(this, (this + 255));
  IOUserNetworkPacketQueue::SetEnable(this[298], 0, 0);

  return DriverKit_AppleEthernetIXGBE_IVars::freeRings(this);
}

void OUTLINED_FUNCTION_6_0(void *a1, os_log_s *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x1Eu);
}

uint64_t ixgbe_init_ops_generic(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, **(a1 + 1928), &readData);
  __dmb(1u);
  v2 = readData;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_ops_generic", 41, "ixgbe_init_ops_generic");
  }

  *(a1 + 1720) = ixgbe_init_eeprom_params_generic;
  if ((v2 & 0x100) != 0)
  {
    v3 = ixgbe_read_eerd_generic;
  }

  else
  {
    v3 = ixgbe_read_eeprom_bit_bang_generic;
  }

  v4 = ixgbe_read_eerd_buffer_generic;
  if ((v2 & 0x100) == 0)
  {
    v4 = ixgbe_read_eeprom_buffer_bit_bang_generic;
  }

  *(a1 + 1728) = v3;
  *(a1 + 1736) = v4;
  *(a1 + 1744) = ixgbe_write_eeprom_generic;
  *(a1 + 1752) = ixgbe_write_eeprom_buffer_bit_bang_generic;
  *(a1 + 1760) = ixgbe_validate_eeprom_checksum_generic;
  *(a1 + 1768) = ixgbe_update_eeprom_checksum_generic;
  *(a1 + 1776) = ixgbe_calc_eeprom_checksum_generic;
  *(a1 + 16) = ixgbe_init_hw_generic;
  *(a1 + 24) = 0;
  *(a1 + 32) = ixgbe_start_hw_generic;
  *(a1 + 40) = ixgbe_clear_hw_cntrs_generic;
  *(a1 + 56) = 0u;
  *(a1 + 176) = ixgbe_enable_rx_dma_generic;
  *(a1 + 72) = ixgbe_get_mac_addr_generic;
  *(a1 + 120) = ixgbe_stop_adapter_generic;
  *(a1 + 128) = ixgbe_get_bus_info_generic;
  *(a1 + 144) = ixgbe_set_lan_id_multi_port_pcie;
  *(a1 + 200) = ixgbe_acquire_swfw_sync;
  *(a1 + 208) = ixgbe_release_swfw_sync;
  *(a1 + 224) = prot_autoc_read_generic;
  *(a1 + 232) = prot_autoc_write_generic;
  *(a1 + 312) = ixgbe_led_on_generic;
  *(a1 + 320) = ixgbe_led_off_generic;
  *(a1 + 328) = ixgbe_blink_led_start_generic;
  *(a1 + 336) = ixgbe_blink_led_stop_generic;
  *(a1 + 344) = ixgbe_init_led_link_act_generic;
  *(a1 + 352) = ixgbe_set_rar_generic;
  *(a1 + 368) = ixgbe_clear_rar_generic;
  *(a1 + 376) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = ixgbe_init_rx_addrs_generic;
  *(a1 + 416) = ixgbe_update_uc_addr_list_generic;
  *(a1 + 424) = ixgbe_update_mc_addr_list_generic;
  *(a1 + 440) = ixgbe_enable_mc_generic;
  *(a1 + 448) = ixgbe_disable_mc_generic;
  *(a1 + 488) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 592) = ixgbe_enable_rx_generic;
  *(a1 + 584) = ixgbe_disable_rx_generic;
  *(a1 + 512) = ixgbe_fc_enable_generic;
  *(a1 + 520) = ixgbe_setup_fc_generic;
  *(a1 + 528) = ixgbe_fc_autoneg;
  *(a1 + 264) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  return 0;
}

uint64_t ixgbe_init_eeprom_params_generic(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_eeprom_params_generic", 1223, "ixgbe_init_eeprom_params_generic");
  }

  if (!*(a1 + 1784))
  {
    *(a1 + 1784) = 0xA00000003;
    *(a1 + 1796) = 0;
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, **(a1 + 1928), &readData);
    __dmb(1u);
    v2 = readData;
    if ((readData & 0x100) != 0)
    {
      *(a1 + 1784) = 1;
      *(a1 + 1792) = 64 << ((v2 >> 11) & 0xF);
    }

    if ((v2 & 0x400) != 0)
    {
      v3 = 16;
    }

    else
    {
      v3 = 8;
    }

    *(a1 + 1794) = v3;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Eeprom params: type = %d, size = %d, address bits: %d\n\n", "ixgbe_init_eeprom_params_generic", 1257, *(a1 + 1784), *(a1 + 1792), v3);
    }
  }

  return 0;
}

uint64_t ixgbe_read_eerd_buffer_generic(uint64_t a1, unsigned int a2, int a3, _WORD *a4)
{
  LODWORD(v5) = a3;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_eerd_buffer_generic", 1581, "ixgbe_read_eerd_buffer_generic");
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
      v5 = v5;
      for (i = (4 * a2) | 1; ; i += 4)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*a1, 0, 0x10014uLL, i);
        if (ixgbe_poll_eerd_eewr_done(a1, 0))
        {
          break;
        }

        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0x10014uLL, &readData);
        __dmb(1u);
        *a4++ = HIWORD(readData);
        if (!--v5)
        {
          return 0;
        }
      }

      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n");
      }
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Invalid EEPROM words\n", "ixgbe_read_eerd_buffer_generic", 1587);
    }

    return 4294967264;
  }
}

uint64_t ixgbe_read_eeprom_bit_bang_generic(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_eeprom_bit_bang_generic", 1550, "ixgbe_read_eeprom_bit_bang_generic");
  }

  (*(a1 + 1720))(a1);
  if (*(a1 + 1792) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  return ixgbe_read_eeprom_buffer_bit_bang(a1, a2, 1, a3);
}

uint64_t ixgbe_read_eeprom_buffer_bit_bang_generic(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_read_eeprom_buffer_bit_bang_generic", 1445, "ixgbe_read_eeprom_buffer_bit_bang_generic");
  }

  (*(a1 + 1720))(a1);
  if (!a3)
  {
    return 4294967264;
  }

  if (a3 + a2 > *(a1 + 1792))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0;
  while (1)
  {
    v10 = a3 - v9;
    if (v10 >= 256)
    {
      LOWORD(v10) = 256;
    }

    result = ixgbe_read_eeprom_buffer_bit_bang(a1, (v9 + a2), v10, a4 + 2 * v9);
    if (result)
    {
      break;
    }

    v9 += 256;
    if (a3 <= v9)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ixgbe_write_eeprom_generic(uint64_t a1, unsigned int a2, __int16 a3)
{
  v6 = a3;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_eeprom_generic", 1415, "ixgbe_write_eeprom_generic");
  }

  (*(a1 + 1720))(a1);
  if (*(a1 + 1792) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return ixgbe_write_eeprom_buffer_bit_bang(a1, a2, 1u, &v6);
  }
}

uint64_t ixgbe_write_eeprom_buffer_bit_bang_generic(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_write_eeprom_buffer_bit_bang_generic", 1278, "ixgbe_write_eeprom_buffer_bit_bang_generic");
  }

  (*(a1 + 1720))(a1);
  if (!a3)
  {
    return 4294967264;
  }

  if (a3 + a2 > *(a1 + 1792))
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 >= 0x81 && !*(a1 + 1796))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_detect_eeprom_page_size_generic", 1632, "ixgbe_detect_eeprom_page_size_generic");
    }

    v9 = 0;
    v10 = xmmword_1000301F0;
    v11.i64[0] = 0x8000800080008;
    v11.i64[1] = 0x8000800080008;
    do
    {
      *&v16[v9] = v10;
      v10 = vaddq_s16(v10, v11);
      v9 += 8;
    }

    while (v9 != 128);
    *(a1 + 1796) = 128;
    v12 = ixgbe_write_eeprom_buffer_bit_bang(a1, a2, 0x80u, v16);
    *(a1 + 1796) = 0;
    if (!v12 && !ixgbe_read_eeprom_buffer_bit_bang(a1, a2, 1, v16))
    {
      v13 = 128 - v16[0];
      *(a1 + 1796) = 128 - v16[0];
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): Detected EEPROM page size = %d words.\n", "ixgbe_detect_eeprom_page_size_generic", 1655, v13);
      }
    }
  }

  v14 = 0;
  while (1)
  {
    v15 = a3 - v14;
    if (v15 >= 256)
    {
      LOWORD(v15) = 256;
    }

    result = ixgbe_write_eeprom_buffer_bit_bang(a1, (v14 + a2), v15, a4 + 2 * v14);
    if (result)
    {
      break;
    }

    v14 += 256;
    if (a3 <= v14)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ixgbe_validate_eeprom_checksum_generic(uint64_t a1, _WORD *a2)
{
  v9 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_validate_eeprom_checksum_generic", 2247, "ixgbe_validate_eeprom_checksum_generic");
  }

  v10 = 0;
  v4 = (*(a1 + 1728))(a1, 0, &v10);
  if (v4)
  {
    v5 = v4;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_validate_eeprom_checksum_generic", 2255, "EEPROM read failed\n");
    }
  }

  else
  {
    v6 = (*(a1 + 1776))(a1);
    v5 = v6;
    if ((v6 & 0x80000000) == 0)
    {
      v10 = v6;
      v7 = (*(a1 + 1728))(a1, 63, &v9);
      if (v7)
      {
        v5 = v7;
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_validate_eeprom_checksum_generic", 2267, "EEPROM read failed\n");
        }
      }

      else
      {
        if (v9 == v10)
        {
          v5 = 0;
        }

        else
        {
          v5 = 4294967294;
        }

        if (a2)
        {
          *a2 = v10;
        }
      }
    }
  }

  return v5;
}

uint64_t ixgbe_update_eeprom_checksum_generic(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_eeprom_checksum_generic", 2293, "ixgbe_update_eeprom_checksum_generic");
  }

  v6 = 0;
  v2 = (*(a1 + 1728))(a1, 0, &v6);
  if (v2)
  {
    v3 = v2;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): %s\n", "ixgbe_update_eeprom_checksum_generic", 2301, "EEPROM read failed\n");
    }
  }

  else
  {
    v4 = (*(a1 + 1776))(a1);
    v3 = v4;
    if ((v4 & 0x80000000) == 0)
    {
      v6 = v4;
      return (*(a1 + 1744))(a1, 63, v4);
    }
  }

  return v3;
}

uint64_t ixgbe_calc_eeprom_checksum_generic(uint64_t a1)
{
  v11 = 0;
  v10 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_calc_eeprom_checksum_generic", 2188, "ixgbe_calc_eeprom_checksum_generic");
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = v3;
    if ((*(a1 + 1728))(a1, v3, &v10))
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixgbe:%s(%d): %s\n", "ixgbe_calc_eeprom_checksum_generic", 2193, "EEPROM read failed\n");
      }

      return 0xFFFFFFFFLL;
    }

    v2 += v10;
    ++v3;
  }

  while (v4 < 0x3E);
  v5 = 3;
  while (!(*(a1 + 1728))(a1, v5, &v11))
  {
    if ((v11 + 1) >= 2u)
    {
      if ((*(a1 + 1728))(a1))
      {
        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixgbe:%s(%d): %s\n", "ixgbe_calc_eeprom_checksum_generic", 2211, "EEPROM read failed\n");
        }

        return 0xFFFFFFFFLL;
      }

      if ((HIWORD(v11) + 1) >= 2u)
      {
        v7 = v11 + 1;
        for (i = HIWORD(v11) + v11; i >= v7; i = HIWORD(v11) + v11)
        {
          if ((*(a1 + 1728))(a1, v7, &v10))
          {
            if ((pcindkll & 0x100000) != 0)
            {
              IOLog("ixgbe:%s(%d): %s\n", "ixgbe_calc_eeprom_checksum_generic", 2220, "EEPROM read failed\n");
            }

            return 0xFFFFFFFFLL;
          }

          v2 += v10;
          ++v7;
        }
      }
    }

    v6 = v5++;
    if (v6 >= 0xE)
    {
      return (-17734 - v2);
    }
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_calc_eeprom_checksum_generic", 2202, "EEPROM read failed\n");
  }

  return 0xFFFFFFFFLL;
}

uint64_t ixgbe_init_hw_generic(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_init_hw_generic", 468, "ixgbe_init_hw_generic");
  }

  v2 = (*(a1 + 24))(a1);
  if (v2)
  {
    v3 = v2 == -20;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v2 = (*(a1 + 32))(a1);
  }

  v4 = v2;
  v5 = *(a1 + 344);
  if (v5)
  {
    v5(a1);
  }

  if (v4 && (pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): Failed to initialize HW, STATUS = %d\n\n", "ixgbe_init_hw_generic", 483, v4);
  }

  return v4;
}

uint64_t ixgbe_start_hw_generic(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_start_hw_generic", 367, "ixgbe_start_hw_generic");
  }

  v9 = 0;
  *(a1 + 1640) = (*(a1 + 56))(a1);
  (*(a1 + 456))(a1);
  (*(a1 + 40))(a1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x18uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x18uLL, v2 | 0x10000);
  v7 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v7);
  __dmb(1u);
  v3 = ixgbe_setup_fc(a1);
  if (v3 && (v4 = v3, v3 != 0x7FFFFFFF))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixgbe:%s(%d): Flow control setup failed, returning %d\n\n", "ixgbe_start_hw_generic", 389, v3);
    }
  }

  else
  {
    v5 = *(a1 + 696);
    *(a1 + 1955) = v5 <= 8 && ((1 << v5) & 0x184) != 0 && ((*(a1 + 96))(a1, &v9), (v9 & 0x80) == 0);
    v4 = 0;
    *(a1 + 1945) = 0;
  }

  return v4;
}

uint64_t ixgbe_clear_hw_cntrs_generic(uint64_t a1)
{
  v14 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_clear_hw_cntrs_generic", 499, "ixgbe_clear_hw_cntrs_generic");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4000uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4004uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4008uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4010uLL, &readData);
  v2 = 0;
  __dmb(1u);
  do
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (4 * v2) | 0x3FA0, &readData);
    __dmb(1u);
    v14 = v2 + 1;
    v3 = v2++ >= 7;
  }

  while (!v3);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4034uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4038uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4040uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x3F60uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x3F68uLL, &readData);
  __dmb(1u);
  if (*(a1 + 696) < 2)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0xCF60uLL, &readData);
    __dmb(1u);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0xCF68uLL, &readData);
  }

  else
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x41A4uLL, &readData);
    __dmb(1u);
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x41A8uLL, &readData);
  }

  __dmb(1u);
  v4 = 0;
  v14 = 0;
  do
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (4 * v4) | 0x3F00u, &readData);
    __dmb(1u);
    readData = 0;
    v5 = 4 * v4;
    IOPCIDevice::MemoryRead32(*a1, 0, v5 + 16160, &readData);
    __dmb(1u);
    if (*(a1 + 696) < 2)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v5 + 52992, &readData);
      __dmb(1u);
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v5 + 53024, &readData);
    }

    else
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v5 + 16704, &readData);
      __dmb(1u);
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v5 + 16736, &readData);
    }

    __dmb(1u);
    v14 = ++v4;
  }

  while (v4 < 8u);
  if (*(a1 + 696) >= 2)
  {
    v6 = 0;
    do
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, (4 * v6) | 0x3240, &readData);
      __dmb(1u);
      v14 = v6 + 1;
      v3 = v6++ >= 7;
    }

    while (!v3);
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x405CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4060uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4064uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4068uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x406CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4070uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4074uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4078uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x407CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4080uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4088uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x408CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4090uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x4094uLL, &readData);
  __dmb(1u);
  if (*(a1 + 696) == 1)
  {
    v7 = 0;
    do
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, (4 * v7) | 0x3FC0, &readData);
      __dmb(1u);
      v14 = v7 + 1;
      v3 = v7++ >= 7;
    }

    while (!v3);
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40A4uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40A8uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40ACuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40B0uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40B4uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40B8uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0xCF90uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40C0uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40C4uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40D0uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40D4uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40D8uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40DCuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40E0uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40E4uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40E8uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40ECuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40F0uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x40F4uLL, &readData);
  v8 = 0;
  __dmb(1u);
  v14 = 0;
  do
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (v8 << 6) | 0x1030u, &readData);
    __dmb(1u);
    readData = 0;
    v9 = v8;
    v10 = v8 << 6;
    IOPCIDevice::MemoryRead32(*a1, 0, (v9 << 6) + 24624, &readData);
    __dmb(1u);
    v11 = (v9 << 6) + 4148;
    if (*(a1 + 696) < 2)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v11, &readData);
      __dmb(1u);
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v10 + 24628, &readData);
    }

    else
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v11, &readData);
      __dmb(1u);
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v10 + 4152, &readData);
      __dmb(1u);
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 8 * v9 + 34560, &readData);
      __dmb(1u);
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 8 * v9 + 34564, &readData);
      __dmb(1u);
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, v10 + 5168, &readData);
    }

    __dmb(1u);
    v8 = v9 + 1;
    v14 = v9 + 1;
  }

  while ((v9 + 1) < 0x10u);
  if ((*(a1 + 696) | 2) == 6)
  {
    if (!*(a1 + 1624))
    {
      ixgbe_identify_phy(a1);
    }

    (*(a1 + 1448))(a1, 59408, 3, &v14);
    (*(a1 + 1448))(a1, 59409, 3, &v14);
    (*(a1 + 1448))(a1, 59424, 3, &v14);
    (*(a1 + 1448))(a1, 59425, 3, &v14);
  }

  return 0;
}

uint64_t ixgbe_enable_rx_dma_generic(uint64_t a1, char a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_enable_rx_dma_generic", 3414, "ixgbe_enable_rx_dma_generic");
  }

  if (a2)
  {
    ixgbe_enable_rx(a1);
  }

  else
  {
    ixgbe_disable_rx(a1);
  }

  return 0;
}

uint64_t ixgbe_get_mac_addr_generic(IOPCIDevice **a1, uint64_t a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_mac_addr_generic", 951, "ixgbe_get_mac_addr_generic");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x5404uLL, &readData);
  __dmb(1u);
  v4 = readData;
  v7 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x5400uLL, &v7);
  __dmb(1u);
  v5 = vld1q_dup_f32(&v7);
  *v5.i8 = vmovn_s32(vshlq_u32(v5, xmmword_100030200));
  *a2 = vuzp1_s8(*v5.i8, *v5.i8).u32[0];
  *(a2 + 4) = v4;
  return 0;
}

uint64_t ixgbe_stop_adapter_generic(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_stop_adapter_generic", 1083, "ixgbe_stop_adapter_generic");
  }

  *(a1 + 1945) = 1;
  ixgbe_disable_rx(a1);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x888uLL, 0xFFFFFFFF);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x800uLL, &readData);
  __dmb(1u);
  if (*(a1 + 1260))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, ((v2 << 6) + 24616), 0x4000000u);
      v2 = ++v3;
    }

    while (*(a1 + 1260) > v3);
  }

  if (*(a1 + 1264))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v12 = 0;
      v6 = (v4 << 6) | 0x1028;
      v7 = (v4 << 6) + 49192;
      if ((v5 & 0xFFC0) != 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = v6;
      }

      IOPCIDevice::MemoryRead32(*a1, 0, v8, &v12);
      __dmb(1u);
      v9 = v12 & 0xF9FFFFFF;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, v8, v9 | 0x4000000);
      v4 = ++v5;
    }

    while (*(a1 + 1264) > v5);
  }

  v11 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v11);
  __dmb(1u);
  IODelay(0x7D0uLL);
  return ixgbe_disable_pcie_master(a1);
}

uint64_t ixgbe_get_bus_info_generic(IOPCIDevice **a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_get_bus_info_generic", 1026, "ixgbe_get_bus_info_generic");
  }

  readData = 0;
  IOPCIDevice::ConfigurationRead16(*a1, 0xB2uLL, &readData);
  ixgbe_set_pci_config_data_generic(a1, readData);
  return 0;
}

void ixgbe_set_lan_id_multi_port_pcie(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_set_lan_id_multi_port_pcie", 1050, "ixgbe_set_lan_id_multi_port_pcie");
  }

  v5 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &readData);
  __dmb(1u);
  v2 = (readData >> 2) & 3;
  *(a1 + 1812) = v2;
  *(a1 + 1814) = v2;
  v3 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, *(*(a1 + 1928) + 16), &v3);
  __dmb(1u);
  if ((v3 & 0x40000000) != 0)
  {
    *(a1 + 1812) ^= 1u;
  }

  if (*(a1 + 1936) == 5582)
  {
    (*(a1 + 1728))(a1, 69, &v5);
    *(a1 + 1816) = (v5 >> 4) & 1;
  }
}

uint64_t ixgbe_acquire_swfw_sync(IOPCIDevice **a1, int a2)
{
  v4 = 32 * a2;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_acquire_swfw_sync", 3261, "ixgbe_acquire_swfw_sync");
  }

  v5 = v4 | a2;
  v6 = 200;
  while (1)
  {
    if (ixgbe_get_eeprom_semaphore(a1))
    {
      return 4294967280;
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x10160uLL, &readData);
    __dmb(1u);
    v7 = readData;
    v8 = readData & v5;
    if ((readData & v5) == 0)
    {
      break;
    }

    ixgbe_release_eeprom_semaphore(a1);
    IODelay(0x1388uLL);
    if (!--v6)
    {
      ixgbe_release_swfw_sync(a1, v8);
      IODelay(0x1388uLL);
      return 4294967280;
    }
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x10160uLL, v7 | a2);
  ixgbe_release_eeprom_semaphore(a1);
  return 0;
}

void ixgbe_release_swfw_sync(IOPCIDevice **a1, int a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_release_swfw_sync", 3305, "ixgbe_release_swfw_sync");
  }

  ixgbe_get_eeprom_semaphore(a1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x10160uLL, &readData);
  __dmb(1u);
  v4 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x10160uLL, v4 & ~a2);
  ixgbe_release_eeprom_semaphore(a1);
}

uint64_t prot_autoc_read_generic(IOPCIDevice **a1, _BYTE *a2, uint32_t *a3)
{
  *a2 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x42A0uLL, &readData);
  __dmb(1u);
  *a3 = readData;
  return 0;
}

uint64_t prot_autoc_write_generic(IOPCIDevice **a1, uint32_t data)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x42A0uLL, data);
  return 0;
}

uint64_t ixgbe_led_on_generic(IOPCIDevice **a1, unsigned int a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x200uLL, &readData);
  __dmb(1u);
  v4 = readData;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_led_on_generic", 1173, "ixgbe_led_on_generic");
  }

  if (a2 > 3)
  {
    return 4294967291;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x200uLL, v4 & ~(15 << (8 * a2)) | (14 << (8 * a2)));
  v6 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v6);
  result = 0;
  __dmb(1u);
  return result;
}

uint64_t ixgbe_led_off_generic(IOPCIDevice **a1, unsigned int a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x200uLL, &readData);
  __dmb(1u);
  v4 = readData;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_led_off_generic", 1196, "ixgbe_led_off_generic");
  }

  if (a2 > 3)
  {
    return 4294967291;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, 0x200uLL, v4 | (15 << (8 * a2)));
  v6 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, &v6);
  result = 0;
  __dmb(1u);
  return result;
}

uint64_t ixgbe_blink_led_start_generic(uint64_t a1, unsigned int a2)
{
  v9 = 0;
  v8 = 0;
  *readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x200uLL, readData);
  __dmb(1u);
  v4 = readData[0];
  v6 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixgbe:%s(%d): %s\n", "ixgbe_blink_led_start_generic", 3438, "ixgbe_blink_led_start_generic");
  }

  if (a2 > 3)
  {
    return 4294967291;
  }

  (*(a1 + 280))(a1, &v9, &v8, 0);
  if (v8)
  {
    goto LABEL_6;
  }

  result = (*(a1 + 224))(a1, &v6, &readData[1]);
  if (!result)
  {
    readData[1] |= 0x1001u;
    result = (*(a1 + 232))(a1);
    if (!result)
    {
      readData[0] = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, readData);
      __dmb(1u);
      IODelay(0x2710uLL);
LABEL_6:
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0x200uLL, v4 & ~(15 << (8 * a2)) | (128 << (8 * a2)));
      readData[0] = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 8uLL, readData);
      result = 0;
      __dmb(1u);
    }
  }

  return result;
}