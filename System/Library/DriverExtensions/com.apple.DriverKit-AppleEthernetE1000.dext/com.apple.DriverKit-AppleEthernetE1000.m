uint64_t e1000_init_nvm_params_82575(uint64_t a1)
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
  v5 = 1 << (v3 + 6);
  *(a1 + 1232) = v5;
  v6 = *(a1 + 284);
  if (v6 > 33)
  {
    v9 = 4;
  }

  else
  {
    v7 = 8;
    *(a1 + 1238) = 8;
    *(a1 + 1234) = 1;
    v8 = *(a1 + 1220);
    if (v8 == 1)
    {
      *(a1 + 1240) = 8;
    }

    else if (v8 == 2)
    {
      *(a1 + 1240) = 32;
      v7 = 16;
    }

    else
    {
      v10 = (v2 & 0x400) == 0;
      if ((v2 & 0x400) != 0)
      {
        v11 = 32;
      }

      else
      {
        v11 = 8;
      }

      *(a1 + 1240) = v11;
      if (v10)
      {
        v7 = 8;
      }

      else
      {
        v7 = 16;
      }
    }

    *(a1 + 1236) = v7;
    if (v4 == 15)
    {
      *(a1 + 1240) = 128;
    }

    v9 = 2;
  }

  *(a1 + 1216) = v9;
  *(a1 + 1152) = e1000_acquire_nvm_82575;
  *(a1 + 1168) = e1000_release_nvm_82575;
  v12 = (v5 & 0x8000u) != 0;
  v13 = e1000_read_nvm_spi;
  if (!v12)
  {
    v13 = e1000_read_nvm_eerd;
  }

  *(a1 + 1160) = v13;
  *(a1 + 1208) = e1000_write_nvm_spi;
  *(a1 + 1200) = e1000_validate_nvm_checksum_generic;
  *(a1 + 1184) = e1000_update_nvm_checksum_generic;
  *(a1 + 1192) = e1000_valid_led_default_82575;
  v14 = e1000_update_nvm_checksum_82580;
  v15 = e1000_validate_nvm_checksum_82580;
  if (v6 == 31)
  {
    goto LABEL_23;
  }

  if (v6 == 32)
  {
    v14 = e1000_update_nvm_checksum_i350;
    v15 = e1000_validate_nvm_checksum_i350;
LABEL_23:
    *(a1 + 1200) = v15;
    *(a1 + 1184) = v14;
  }

  return 0;
}

uint64_t e1000_acquire_nvm_82575(uint64_t a1)
{
  v2 = e1000_acquire_swfw_sync_82575(a1, 1);
  if (!v2)
  {
    v3 = *(a1 + 284);
    if (v3 == 32)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
      __dmb(1u);
      v4 = readData;
      if ((readData & 0x38000) != 0)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v4 | 0x40000);
      }

      v3 = *(a1 + 284);
    }

    if (v3 == 31)
    {
      data = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &data);
      __dmb(1u);
      v5 = data;
      if ((data & 0x8000) != 0)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v5);
      }
    }

    v2 = e1000_acquire_nvm_generic(a1);
    if (v2)
    {
      e1000_release_swfw_sync_82575(a1, 1);
    }
  }

  return v2;
}

void e1000_release_nvm_82575(uint64_t a1)
{
  e1000_release_nvm_generic(a1);

  e1000_release_swfw_sync_82575(a1, 1);
}

uint64_t e1000_valid_led_default_82575(uint64_t a1, __int16 *a2)
{
  result = (*(a1 + 1160))(a1, 4, 1, a2);
  if (!result)
  {
    v5 = *a2;
    if (v5 == 0xFFFF || v5 == 0)
    {
      if (*(a1 + 1116) == 3)
      {
        v7 = 4376;
      }

      else
      {
        v7 = -30447;
      }

      *a2 = v7;
    }
  }

  return result;
}

uint64_t e1000_validate_nvm_checksum_82580(uint64_t a1)
{
  v7 = 0;
  result = (*(a1 + 1160))(a1, 3, 1, &v7);
  if (!result)
  {
    v3 = 0;
    v4 = v7;
    do
    {
      v5 = (v3 << 6) + 64;
      if (!v3)
      {
        v5 = 0;
      }

      result = e1000_validate_nvm_checksum_with_offset(a1, v5 & 0xFFC0);
      if (result)
      {
        break;
      }

      if ((v4 & 0x80000000) == 0)
      {
        break;
      }

      v6 = v3++;
    }

    while (v6 <= 2);
  }

  return result;
}

uint64_t e1000_update_nvm_checksum_82580(uint64_t a1)
{
  v6 = 0;
  result = (*(a1 + 1160))(a1, 3, 1, &v6);
  if (!result)
  {
    if (v6 < 0 || (v6 |= 0x8000u, result = (*(a1 + 1208))(a1, 3, 1, &v6), !result))
    {
      v3 = 0;
      while (1)
      {
        v4 = (v3 << 6) + 64;
        if (!v3)
        {
          v4 = 0;
        }

        result = e1000_update_nvm_checksum_with_offset(a1, v4 & 0xFFC0);
        if (result)
        {
          break;
        }

        v5 = v3++;
        if (v5 > 2)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t e1000_validate_nvm_checksum_i350(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = (v2 << 6) + 64;
    if (!v2)
    {
      v3 = 0;
    }

    result = e1000_validate_nvm_checksum_with_offset(a1, v3 & 0xFFC0);
    v5 = v2++;
    if (result)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 >= 3;
    }
  }

  while (!v6);
  return result;
}

uint64_t e1000_update_nvm_checksum_i350(uint64_t a1)
{
  v2 = 0;
  do
  {
    v3 = (v2 << 6) + 64;
    if (!v2)
    {
      v3 = 0;
    }

    result = e1000_update_nvm_checksum_with_offset(a1, v3 & 0xFFC0);
    v5 = v2++;
    if (result)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 >= 3;
    }
  }

  while (!v6);
  return result;
}

void *e1000_init_function_pointers_82575(void *result)
{
  result[5] = e1000_init_mac_params_82575;
  result[143] = e1000_init_nvm_params_82575;
  result[111] = e1000_init_phy_params_82575;
  result[158] = e1000_init_mbx_params_pf;
  return result;
}

uint64_t e1000_init_mac_params_82575(uint64_t a1)
{
  e1000_init_mac_ops_generic(a1);
  *(a1 + 1376) = 0;
  *(a1 + 1379) = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
  __dmb(1u);
  v2 = readData;
  v3 = (readData >> 22) & 3;
  if (v3 > 1)
  {
    if (v3 == 2 && e1000_sgmii_uses_mdio_82575(a1))
    {
LABEL_16:
      *(a1 + 1116) = 1;
      *(a1 + 1376) = 1;
      goto LABEL_17;
    }

    v20 = 0;
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
    __dmb(1u);
    v5 = readData & 0xFFFFFF7F;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v5 | 0x2000000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    v6 = -3;
    while (e1000_read_sfp_data_byte(a1, 0, &v20))
    {
      IODelay(0x186A0uLL);
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_14;
      }
    }

    if (e1000_read_sfp_data_byte(a1, 6u, (a1 + 1388)))
    {
LABEL_14:
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v5);
      goto LABEL_15;
    }

    if ((v20 & 0xFE) != 2)
    {
      goto LABEL_45;
    }

    *(a1 + 1379) = 1;
    if ((*(a1 + 1388) & 3) != 0)
    {
      v16 = 3;
LABEL_49:
      *(a1 + 1116) = v16;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v5);
      v17 = *(a1 + 1116);
      if (v17)
      {
        if ((*(a1 + 1388) & 0x20) == 0)
        {
          if (v17 == 1)
          {
            v18 = v2 & 0xFF3FFFFF | 0x800000;
          }

          else
          {
            v18 = v2 | 0xC00000;
          }

          __dmb(2u);
          IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v18);
        }

        goto LABEL_17;
      }

LABEL_15:
      *(a1 + 1116) = 3;
      if ((v2 & 0xC00000) != 0x800000)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if ((*(a1 + 1388) & 0x20) != 0)
    {
      v16 = 3;
    }

    else
    {
      if ((*(a1 + 1388) & 8) == 0)
      {
LABEL_45:
        v16 = 0;
        goto LABEL_49;
      }

      v16 = 1;
    }

    *(a1 + 1376) = 1;
    goto LABEL_49;
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 1116) = v4;
LABEL_17:
  *(a1 + 326) = 128;
  v8 = *(a1 + 284);
  *(a1 + 328) = (v8 != 29) << 7;
  if ((v8 & 0xFFFFFFFE) == 0x1E)
  {
    v9 = 24;
  }

  else
  {
    v9 = 16;
  }

  if ((v8 & 0xFFFFFFFE) == 0x20)
  {
    v10 = 32;
  }

  else
  {
    v10 = v9;
  }

  *(a1 + 844) = v10;
  if (v8 > 31)
  {
    *(a1 + 1378) = 0;
    if (v8 >= 0x22)
    {
      *(a1 + 1380) = 1;
    }
  }

  *(a1 + 850) = 1;
  *(a1 + 848) = 1;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
  __dmb(1u);
  *(a1 + 849) = (readData & 0xE) != 0;
  *(a1 + 104) = e1000_get_bus_info_pcie_generic;
  v11 = *(a1 + 284);
  if (v11 < 31)
  {
    *(a1 + 152) = e1000_reset_hw_82575;
  }

  else
  {
    *(a1 + 152) = e1000_reset_hw_82580;
    v12 = e1000_init_hw_i210;
    if ((v11 & 0x7FFFFFFE) == 0x22)
    {
      v13 = 1;
      goto LABEL_31;
    }
  }

  v13 = 0;
  v12 = e1000_init_hw_82575;
LABEL_31:
  *(a1 + 160) = v12;
  *(a1 + 192) = e1000_setup_link_generic;
  v14 = e1000_setup_serdes_link_82575;
  if (*(a1 + 1116) == 1)
  {
    v14 = e1000_setup_copper_link_82575;
  }

  *(a1 + 200) = v14;
  *(a1 + 176) = e1000_shutdown_serdes_link_82575;
  *(a1 + 184) = e1000_power_up_serdes_link_82575;
  *(a1 + 72) = e1000_check_for_link_82575;
  *(a1 + 240) = e1000_read_mac_addr_82575;
  *(a1 + 224) = e1000_config_collision_dist_82575;
  *(a1 + 144) = e1000_update_mc_addr_list_generic;
  if ((v11 & 0xFFFFFFFE) == 0x20)
  {
    *(a1 + 216) = e1000_write_vfta_i350;
    *(a1 + 96) = e1000_clear_vfta_i350;
  }

  else
  {
    *(a1 + 216) = e1000_write_vfta_generic;
    *(a1 + 96) = e1000_clear_vfta_generic;
    if (v11 < 31)
    {
      goto LABEL_37;
    }
  }

  *(a1 + 248) = e1000_validate_mdi_setting_crossover_generic;
LABEL_37:
  *(a1 + 48) = e1000_id_led_init_generic;
  *(a1 + 56) = e1000_blink_led_generic;
  *(a1 + 208) = e1000_setup_led_generic;
  *(a1 + 80) = e1000_cleanup_led_generic;
  *(a1 + 128) = e1000_led_on_generic;
  *(a1 + 136) = e1000_led_off_generic;
  *(a1 + 88) = e1000_clear_hw_cntrs_82575;
  *(a1 + 120) = e1000_get_link_up_info_82575;
  *(a1 + 256) = e1000_acquire_swfw_sync_82575;
  *(a1 + 264) = e1000_release_swfw_sync_82575;
  if (v13)
  {
    *(a1 + 256) = e1000_acquire_swfw_sync_i210;
    *(a1 + 264) = e1000_release_swfw_sync_i210;
  }

  (*(a1 + 112))(a1);
  return 0;
}

uint64_t e1000_init_phy_params_82575(uint64_t a1)
{
  if (*(a1 + 1116) != 1)
  {
    result = 0;
    *(a1 + 1072) = 1;
    return result;
  }

  *(a1 + 1056) = e1000_power_up_phy_copper;
  *(a1 + 1064) = e1000_power_down_phy_copper_base;
  *(a1 + 1122) = 47;
  *(a1 + 1108) = 100;
  *(a1 + 896) = e1000_acquire_phy_base;
  *(a1 + 920) = e1000_check_reset_block_generic;
  *(a1 + 928) = e1000_phy_sw_reset_generic;
  *(a1 + 944) = e1000_get_cfg_done_82575;
  *(a1 + 1000) = e1000_release_phy_base;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
  __dmb(1u);
  v2 = readData & 0xFDFFFFFF;
  v3 = e1000_phy_hw_reset_generic;
  if (*(a1 + 1376))
  {
    v3 = e1000_phy_hw_reset_sgmii_82575;
    v4 = 0x2000000;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 1008) = v3;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v2 | v4);
  e1000_reset_mdicnfg_82580(a1);
  if (*(a1 + 1376) == 1 && (e1000_sgmii_uses_mdio_82575(a1) & 1) == 0)
  {
    *(a1 + 976) = e1000_read_phy_reg_sgmii_82575;
    *(a1 + 1032) = e1000_write_phy_reg_sgmii_82575;
    v5 = *(a1 + 284);
LABEL_15:
    if (v5 == 33)
    {
      e1000_get_phy_id(a1);
    }

    goto LABEL_17;
  }

  v5 = *(a1 + 284);
  v6 = e1000_write_phy_reg_gs40g;
  v7 = e1000_read_phy_reg_gs40g;
  if ((v5 - 31) < 3)
  {
    *(a1 + 976) = e1000_read_phy_reg_82580;
    *(a1 + 1032) = e1000_write_phy_reg_82580;
    goto LABEL_15;
  }

  if ((v5 - 34) >= 2)
  {
    v6 = e1000_write_phy_reg_igp;
    v7 = e1000_read_phy_reg_igp;
  }

  *(a1 + 976) = v7;
  *(a1 + 1032) = v6;
LABEL_17:
  if ((*(a1 + 1376) & 1) == 0)
  {
    v10 = 1;
LABEL_31:
    *(a1 + 1100) = v10;
    phy_id = e1000_get_phy_id(a1);
    goto LABEL_37;
  }

  v24 = 0;
  if (e1000_sgmii_uses_mdio_82575(a1))
  {
    v9 = *(a1 + 284);
    if ((v9 - 31) < 5)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE04uLL, &readData);
      __dmb(1u);
LABEL_30:
      v10 = (readData >> 21) & 0x1F;
      goto LABEL_31;
    }

    if ((v9 - 29) <= 1)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x20uLL, &readData);
      __dmb(1u);
      goto LABEL_30;
    }

    phy_id = 4294967294;
  }

  else
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
    __dmb(1u);
    v11 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v11 & 0xFFFFFF7F);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(0x493E0uLL);
    *(a1 + 1100) = 1;
    while (1)
    {
      if (!(*(a1 + 896))(a1))
      {
        v12 = e1000_read_phy_reg_i2c(a1, 2, &v24);
        (*(a1 + 1000))(a1);
        if (!v12 && v24 == 321)
        {
          break;
        }
      }

      v13 = *(a1 + 1100) + 1;
      *(a1 + 1100) = v13;
      if (v13 >= 8)
      {
        goto LABEL_33;
      }
    }

    v13 = *(a1 + 1100);
LABEL_33:
    if (v13 == 8)
    {
      *(a1 + 1100) = 0;
      phy_id = 4294967294;
    }

    else
    {
      phy_id = e1000_get_phy_id(a1);
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v11);
  }

LABEL_37:
  v15 = *(a1 + 1104);
  result = 4294967294;
  if (v15 > 21040799)
  {
    if (v15 > 44565391)
    {
      if ((v15 - 44565392) >= 2)
      {
        return result;
      }

      *(a1 + 1072) = 6;
      *(a1 + 912) = e1000_check_polarity_igp;
      *(a1 + 960) = e1000_get_phy_info_igp;
      v16 = e1000_phy_force_speed_duplex_igp;
      v17 = e1000_set_d3_lplu_state_generic;
      v18 = e1000_set_d0_lplu_state_82575;
      v19 = e1000_get_cable_length_igp_2;
    }

    else
    {
      if (v15 == 21040800)
      {
        goto LABEL_50;
      }

      if (v15 != 22283168 && v15 != 22283184)
      {
        return result;
      }

      *(a1 + 1072) = 13;
      *(a1 + 912) = e1000_check_polarity_82577;
      *(a1 + 960) = e1000_get_phy_info_82577;
      v16 = e1000_phy_force_speed_duplex_82577;
      v17 = e1000_set_d3_lplu_state_82580;
      v18 = e1000_set_d0_lplu_state_82580;
      v19 = e1000_get_cable_length_82577;
    }

    v20 = 1024;
    v21 = 1016;
    v22 = 952;
LABEL_54:
    *(a1 + v22) = v19;
    *(a1 + v21) = v18;
    *(a1 + v20) = v17;
    *(a1 + 936) = v16;
    if (v15 == 21040800)
    {
      return e1000_initialize_M88E1543_phy(a1);
    }

    if (v15 == 21040592)
    {
      return e1000_initialize_M88E1512_phy(a1);
    }

    result = phy_id;
    if (v15 == 21040272)
    {
      LOWORD(readData) = 0;
      result = (*(a1 + 1032))(a1, 22, 2);
      if (!result)
      {
        result = (*(a1 + 976))(a1, 16, &readData);
        if (!result)
        {
          result = 0;
          if ((readData & 0x300) == 0x100)
          {
            *(a1 + 72) = e1000_check_for_link_media_swap;
          }
        }
      }
    }

    return result;
  }

  if (v15 > 21040575)
  {
    if ((v15 - 21040576) > 0x30 || ((1 << (v15 + 64)) & 0x1000000010001) == 0)
    {
      return result;
    }

    goto LABEL_50;
  }

  switch(v15)
  {
    case 21040128:
      *(a1 + 1072) = 15;
      *(a1 + 912) = e1000_check_polarity_m88;
      *(a1 + 960) = e1000_get_phy_info_m88;
      *(a1 + 952) = e1000_get_cable_length_m88_gen2;
      *(a1 + 1016) = e1000_set_d0_lplu_state_82580;
      *(a1 + 1024) = e1000_set_d3_lplu_state_82580;
      goto LABEL_64;
    case 21040272:
LABEL_50:
      *(a1 + 1072) = 2;
      v16 = e1000_phy_force_speed_duplex_m88;
      v17 = e1000_get_cable_length_m88_gen2;
      v18 = e1000_get_phy_info_m88;
      v19 = e1000_check_polarity_m88;
      v20 = 952;
      v21 = 960;
      v22 = 912;
      goto LABEL_54;
    case 21040320:
      *(a1 + 1072) = 2;
      *(a1 + 912) = e1000_check_polarity_m88;
      *(a1 + 960) = e1000_get_phy_info_m88;
      *(a1 + 952) = e1000_get_cable_length_m88;
LABEL_64:
      *(a1 + 936) = e1000_phy_force_speed_duplex_m88;
      return phy_id;
  }

  return result;
}

uint64_t e1000_reset_init_script_82575(uint64_t a1)
{
  if (*(a1 + 284) == 29)
  {
    e1000_write_8bit_ctrl_reg_generic(a1, 0x24u, 0, 12);
    e1000_write_8bit_ctrl_reg_generic(a1, 0x24u, 1, 120);
    e1000_write_8bit_ctrl_reg_generic(a1, 0x24u, 27, 35);
    e1000_write_8bit_ctrl_reg_generic(a1, 0x24u, 35, 21);
    e1000_write_8bit_ctrl_reg_generic(a1, 0x5B48u, 20, 0);
    e1000_write_8bit_ctrl_reg_generic(a1, 0x5B48u, 16, 0);
    e1000_write_8bit_ctrl_reg_generic(a1, 0x5B44u, 0, 236);
    e1000_write_8bit_ctrl_reg_generic(a1, 0x5B44u, 97, 223);
    e1000_write_8bit_ctrl_reg_generic(a1, 0x5B44u, 52, 5);
    e1000_write_8bit_ctrl_reg_generic(a1, 0x5B44u, 47, 129);
    e1000_write_8bit_ctrl_reg_generic(a1, 0x5B4Cu, 2, 71);
    e1000_write_8bit_ctrl_reg_generic(a1, 0x5B4Cu, 20, 0);
    e1000_write_8bit_ctrl_reg_generic(a1, 0x5B4Cu, 16, 0);
  }

  return 0;
}

void e1000_vmdq_set_anti_spoofing_pf(uint64_t a1, int a2, char a3)
{
  v6 = *(a1 + 284);
  if ((v6 - 32) >= 2)
  {
    if (v6 != 30)
    {
      return;
    }

    v7 = 13568;
  }

  else
  {
    v7 = 23244;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v7, &readData);
  __dmb(1u);
  if (a2)
  {
    v8 = (readData | 0xFFFF) ^ (129 << a3);
  }

  else
  {
    v8 = readData & 0xFFFF0000;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v7, v8);
}

void e1000_vmdq_set_loopback_pf(uint64_t a1, int a2)
{
  v4 = *(a1 + 284);
  if ((v4 - 32) >= 2)
  {
    if (v4 != 30)
    {
      return;
    }

    v11 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3500uLL, &v11);
    __dmb(1u);
    if (a2)
    {
      v9 = 0x80000000;
    }

    else
    {
      v9 = 0;
    }

    v6 = v9 & 0x80000000 | v11 & 0x7FFFFFFF;
    __dmb(2u);
    v7 = *(a1 + 16);
    v8 = 13568;
  }

  else
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5ACCuLL, &readData);
    __dmb(1u);
    if (a2)
    {
      v5 = 0x80000000;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5 & 0x80000000 | readData & 0x7FFFFFFF;
    __dmb(2u);
    v7 = *(a1 + 16);
    v8 = 23244;
  }

  IOPCIDevice::MemoryWrite32(v7, 0, v8, v6);
}

void e1000_vmdq_set_replication_pf(uint64_t a1, int a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x581CuLL, &readData);
  __dmb(1u);
  v4 = readData & 0xBFFFFFFF;
  if (a2)
  {
    v5 = 0x40000000;
  }

  else
  {
    v5 = 0;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x581CuLL, v4 | v5);
}

uint64_t e1000_rxpbs_adjust_82580(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return e1000_82580_rxpbs_table[a1];
  }
}

uint64_t e1000_read_emi_reg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a1 + 1032))(a1, 16, a2);
  if (!result)
  {
    v6 = *(a1 + 976);

    return v6(a1, 17, a3);
  }

  return result;
}

uint64_t e1000_initialize_M88E1512_phy(uint64_t a1)
{
  if (*(a1 + 1104) != 21040592)
  {
    return 0;
  }

  result = (*(a1 + 1032))(a1, 22, 255);
  if (!result)
  {
    result = (*(a1 + 1032))(a1, 17, 8523);
    if (!result)
    {
      result = (*(a1 + 1032))(a1, 16, 8516);
      if (!result)
      {
        result = (*(a1 + 1032))(a1, 17, 3112);
        if (!result)
        {
          result = (*(a1 + 1032))(a1, 16, 8518);
          if (!result)
          {
            result = (*(a1 + 1032))(a1, 17, 45619);
            if (!result)
            {
              result = (*(a1 + 1032))(a1, 16, 8525);
              if (!result)
              {
                result = (*(a1 + 1032))(a1, 17, 52236);
                if (!result)
                {
                  result = (*(a1 + 1032))(a1, 16, 8537);
                  if (!result)
                  {
                    result = (*(a1 + 1032))(a1, 22, 251);
                    if (!result)
                    {
                      result = (*(a1 + 1032))(a1, 7, 13);
                      if (!result)
                      {
                        result = (*(a1 + 1032))(a1, 22, 18);
                        if (!result)
                        {
                          result = (*(a1 + 1032))(a1, 20, 32769);
                          if (!result)
                          {
                            result = (*(a1 + 1032))(a1, 22, 0);
                            if (!result)
                            {
                              result = (*(a1 + 928))(a1);
                              if (!result)
                              {
                                IODelay(0xF4240uLL);
                                return 0;
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
    }
  }

  return result;
}

uint64_t e1000_initialize_M88E1543_phy(uint64_t a1)
{
  if (*(a1 + 1104) != 21040800)
  {
    return 0;
  }

  result = (*(a1 + 1032))(a1, 22, 255);
  if (!result)
  {
    result = (*(a1 + 1032))(a1, 17, 8523);
    if (!result)
    {
      result = (*(a1 + 1032))(a1, 16, 8516);
      if (!result)
      {
        result = (*(a1 + 1032))(a1, 17, 3112);
        if (!result)
        {
          result = (*(a1 + 1032))(a1, 16, 8518);
          if (!result)
          {
            result = (*(a1 + 1032))(a1, 17, 45619);
            if (!result)
            {
              result = (*(a1 + 1032))(a1, 16, 8525);
              if (!result)
              {
                result = (*(a1 + 1032))(a1, 17, 56332);
                if (!result)
                {
                  result = (*(a1 + 1032))(a1, 16, 8537);
                  if (!result)
                  {
                    result = (*(a1 + 1032))(a1, 22, 251);
                    if (!result)
                    {
                      result = (*(a1 + 1032))(a1, 7, 49165);
                      if (!result)
                      {
                        result = (*(a1 + 1032))(a1, 22, 18);
                        if (!result)
                        {
                          result = (*(a1 + 1032))(a1, 20, 32769);
                          if (!result)
                          {
                            result = (*(a1 + 1032))(a1, 22, 1);
                            if (!result)
                            {
                              result = (*(a1 + 1032))(a1, 0, 37184);
                              if (!result)
                              {
                                result = (*(a1 + 1032))(a1, 22, 0);
                                if (!result)
                                {
                                  result = (*(a1 + 928))(a1);
                                  if (!result)
                                  {
                                    IODelay(0xF4240uLL);
                                    return 0;
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
        }
      }
    }
  }

  return result;
}

uint64_t e1000_set_eee_i350(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 284) >= 32)
  {
    v16 = v3;
    v17 = v4;
    if (*(a1 + 1116) == 1)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE38uLL, &readData);
      __dmb(1u);
      v8 = readData;
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE30uLL, &readData);
      __dmb(1u);
      v9 = readData;
      if (*(a1 + 1378))
      {
        v10 = v8 & 0xFFFFFFF3;
        v11 = readData & 0xFFF8FFFF;
      }

      else
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE34uLL, &readData);
        __dmb(1u);
        if (a3)
        {
          v12 = 4;
        }

        else
        {
          v12 = 0;
        }

        if (a2)
        {
          v13 = 8;
        }

        else
        {
          v13 = 0;
        }

        v10 = v12 | v13 | v8 & 0xFFFFFFF3;
        v11 = v9 | 0x70000;
      }

      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE38uLL, v10);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE30uLL, v11);
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

uint64_t e1000_set_eee_i354(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 1116) != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v6 = *(a1 + 1104);
  if (v6 != 21040800 && v6 != 21040592)
  {
    return 0;
  }

  v14 = 0;
  if (*(a1 + 1378))
  {
    result = e1000_read_xmdio_reg(a1, 60, 7, &v14);
    if (result)
    {
      return result;
    }

    v8 = v14 & 0xFFF9;
    goto LABEL_10;
  }

  result = (*(a1 + 1032))(a1, 22, 18);
  if (!result)
  {
    result = (*(a1 + 976))(a1, 0, &v14);
    if (!result)
    {
      v14 |= 1u;
      result = (*(a1 + 1032))(a1, 0);
      if (!result)
      {
        result = (*(a1 + 1032))(a1, 22, 0);
        if (!result)
        {
          result = e1000_read_xmdio_reg(a1, 60, 7, &v14);
          if (!result)
          {
            if (a3)
            {
              v11 = 2;
            }

            else
            {
              v11 = 0;
            }

            if (a2)
            {
              v12 = 4;
            }

            else
            {
              v12 = 0;
            }

            v8 = v11 | v12 | v14 & 0xFFF9;
LABEL_10:
            v14 = v8;
            return e1000_write_xmdio_reg(a1, 60, 7, v8);
          }
        }
      }
    }
  }

  return result;
}

uint64_t e1000_get_eee_status_i354(uint64_t a1, BOOL *a2)
{
  if (*(a1 + 1116) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 1104);
  if (v4 != 21040800 && v4 != 21040592)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v8 = 0;
  result = e1000_read_xmdio_reg(a1, 1, 3, &v8);
  if (!result)
  {
    *a2 = (v8 & 0xC00) != 0;
  }

  return result;
}

void e1000_write_vfta_i350(uint64_t a1, int a2, uint32_t data)
{
  v5 = 4 * a2;
  v6 = 4 * a2 + 22016;
  v7 = 10;
  do
  {
    __dmb(2u);
    if (v5 > -11505)
    {
      if (v5 <= -7673)
      {
        if (v5 > -8681)
        {
          if (v5 == -8680)
          {
            v9 = *(a1 + 284) <= 1;
            v8 = 32792;
            v10 = 13336;
          }

          else if (v5 == -7680)
          {
            v9 = *(a1 + 284) <= 1;
            v8 = 1056;
            v10 = 14336;
          }

          else
          {
            v8 = v6;
            if (v5 != -7676)
            {
              goto LABEL_67;
            }

            v9 = *(a1 + 284) <= 1;
            v8 = 1060;
            v10 = 14340;
          }
        }

        else if (v5 == -11504)
        {
          v9 = *(a1 + 284) <= 1;
          v8 = 328;
          v10 = 10512;
        }

        else if (v5 == -11496)
        {
          v9 = *(a1 + 284) <= 1;
          v8 = 336;
          v10 = 10520;
        }

        else
        {
          v8 = v6;
          if (v5 != -8688)
          {
            goto LABEL_67;
          }

          v9 = *(a1 + 284) <= 1;
          v8 = 32784;
          v10 = 13328;
        }
      }

      else if (v5 <= -7649)
      {
        if (v5 == -7672)
        {
          v9 = *(a1 + 284) <= 1;
          v8 = 1064;
          v10 = 14344;
        }

        else if (v5 == -7664)
        {
          v9 = *(a1 + 284) <= 1;
          v8 = 1072;
          v10 = 14352;
        }

        else
        {
          v8 = v6;
          if (v5 != -7656)
          {
            goto LABEL_67;
          }

          v9 = *(a1 + 284) <= 1;
          v8 = 1080;
          v10 = 14360;
        }
      }

      else if (v5 > -513)
      {
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

          goto LABEL_67;
        }

        v8 = v6;
        if (v5 != -512)
        {
          goto LABEL_67;
        }

        v9 = *(a1 + 284) <= 1;
        v8 = 64;
        v10 = 21504;
      }

      else if (v5 == -7648)
      {
        v9 = *(a1 + 284) <= 1;
        v8 = 1088;
        v10 = 14368;
      }

      else
      {
        v8 = v6;
        if (v5 != -1024)
        {
          goto LABEL_67;
        }

        v9 = *(a1 + 284) <= 1;
        v8 = 512;
        v10 = 20992;
      }
    }

    else if (v5 <= -11769)
    {
      if (v5 > -12777)
      {
        if (v5 == -12776)
        {
          v9 = *(a1 + 284) <= 1;
          v8 = 32776;
          v10 = 9240;
        }

        else if (v5 == -11776)
        {
          v9 = *(a1 + 284) <= 1;
          v8 = 272;
          v10 = 10240;
        }

        else
        {
          v8 = v6;
          if (v5 != -11772)
          {
            goto LABEL_67;
          }

          v9 = *(a1 + 284) <= 1;
          v8 = 276;
          v10 = 10244;
        }
      }

      else if (v5 == -13472)
      {
        v9 = *(a1 + 284) <= 1;
        v8 = 360;
        v10 = 8544;
      }

      else if (v5 == -13464)
      {
        v9 = *(a1 + 284) <= 1;
        v8 = 352;
        v10 = 8552;
      }

      else
      {
        v8 = v6;
        if (v5 != -12784)
        {
          goto LABEL_67;
        }

        v9 = *(a1 + 284) <= 1;
        v8 = 0x8000;
        v10 = 9232;
      }
    }

    else if (v5 <= -11745)
    {
      if (v5 == -11768)
      {
        v9 = *(a1 + 284) <= 1;
        v8 = 280;
        v10 = 10248;
      }

      else if (v5 == -11760)
      {
        v9 = *(a1 + 284) <= 1;
        v8 = 288;
        v10 = 10256;
      }

      else
      {
        v8 = v6;
        if (v5 != -11752)
        {
          goto LABEL_67;
        }

        v9 = *(a1 + 284) <= 1;
        v8 = 296;
        v10 = 10264;
      }
    }

    else if (v5 > -11517)
    {
      if (v5 == -11516)
      {
        v9 = *(a1 + 284) <= 1;
        v8 = 316;
        v10 = 10500;
      }

      else
      {
        v8 = v6;
        if (v5 != -11512)
        {
          goto LABEL_67;
        }

        v9 = *(a1 + 284) <= 1;
        v8 = 320;
        v10 = 10504;
      }
    }

    else if (v5 == -11744)
    {
      v9 = *(a1 + 284) <= 1;
      v8 = 264;
      v10 = 10272;
    }

    else
    {
      v8 = v6;
      if (v5 != -11520)
      {
        goto LABEL_67;
      }

      v9 = *(a1 + 284) <= 1;
      v8 = 312;
      v10 = 10496;
    }

    if (!v9)
    {
      v8 = v10;
    }

LABEL_67:
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v8, data);
    --v7;
  }

  while (v7);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
}

uint64_t e1000_reset_hw_82580(uint64_t a1)
{
  v2 = *(a1 + 1377);
  *(a1 + 1377) = 0;
  v3 = *(a1 + 284);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v4 = readData;
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
  if (v3 != 31 && (v2 & 1) != 0)
  {
    if ((*(a1 + 256))(a1, 256))
    {
      v5 = 0;
    }

    else
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
      __dmb(1u);
      v5 = 1;
      if ((readData & 0x100000) == 0)
      {
        v6 = 0x20000000;
        goto LABEL_8;
      }
    }
  }

  v6 = 0x4000000;
LABEL_8:
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v4 | v6);
  if (*(a1 + 9584) != 1080)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
  }

  IODelay(0x1388uLL);
  e1000_get_auto_rd_done_generic(a1);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 8uLL, 0x100000u);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD8uLL, 0xFFFFFFFF);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xC0uLL, &readData);
  __dmb(1u);
  e1000_reset_mdicnfg_82580(a1);
  v7 = e1000_check_alt_mac_addr_generic(a1);
  if (v5)
  {
    (*(a1 + 264))(a1, 256);
  }

  return v7;
}

uint64_t e1000_reset_hw_82575(uint64_t a1)
{
  e1000_disable_pcie_primary_generic(a1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B00uLL, &readData);
  __dmb(1u);
  v2 = readData;
  LOWORD(readData) = 0;
  if ((v2 & 0xF000) == 0)
  {
    if ((v2 & 0x40000) != 0)
    {
      if (!e1000_read_pcie_cap_reg(a1, 0x28u, &readData))
      {
        LOWORD(readData) = readData | 5;
        e1000_write_pcie_cap_reg(a1, 0x28u, &readData);
      }
    }

    else
    {
      v2 |= 0x1000u;
    }
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B00uLL, v2 & 0xFFFEFFFF);
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
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v3 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v3 | 0x4000000);
  e1000_get_auto_rd_done_generic(a1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  if ((readData & 0x100) == 0)
  {
    e1000_reset_init_script_82575(a1);
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD8uLL, 0xFFFFFFFF);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xC0uLL, &readData);
  __dmb(1u);
  return e1000_check_alt_mac_addr_generic(a1);
}

uint64_t e1000_init_hw_82575(uint64_t a1)
{
  (*(a1 + 48))();
  (*(a1 + 96))(a1);
  inited = e1000_init_hw_base(a1);
  *(a1 + 1384) = 1500;
  e1000_clear_hw_cntrs_82575(a1);
  return inited;
}

uint64_t e1000_setup_copper_link_82575(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData & 0xFFFFE7FF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x40);
  v3 = *(a1 + 284);
  v4 = v3 > 0x23;
  v5 = (1 << v3) & 0xD80000000;
  if (!v4 && v5 != 0)
  {
    v12 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE14uLL, &v12);
    __dmb(1u);
    v7 = v12;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE14uLL, v7 & 0xFFFFFFDF);
  }

  result = e1000_setup_serdes_link_82575(a1);
  if (result)
  {
    return result;
  }

  if (*(a1 + 1376) == 1 && (*(a1 + 1134) & 1) == 0)
  {
    IODelay(0x493E0uLL);
    result = (*(a1 + 1008))(a1);
    if (result)
    {
      return result;
    }
  }

  v9 = *(a1 + 1072);
  result = 4294967294;
  if (v9 > 12)
  {
    if (v9 == 13)
    {
      result = e1000_copper_link_setup_82577(a1);
      if (result)
      {
        return result;
      }

      return e1000_setup_copper_link_generic(a1);
    }

    if (v9 != 15)
    {
      return result;
    }

LABEL_18:
    v10 = *(a1 + 1104);
    if (v10 <= 21040575)
    {
      if (v10 == 21040128)
      {
        goto LABEL_27;
      }

      v11 = 3216;
    }

    else
    {
      if ((v10 - 21040576) <= 0x30 && ((1 << (v10 + 64)) & 0x1000000010001) != 0)
      {
        goto LABEL_27;
      }

      v11 = 3744;
    }

    if (v10 != (v11 | 0x1410000))
    {
      result = e1000_copper_link_setup_m88(a1);
      if (result)
      {
        return result;
      }

      return e1000_setup_copper_link_generic(a1);
    }

LABEL_27:
    result = e1000_copper_link_setup_m88_gen2(a1);
    if (result)
    {
      return result;
    }

    return e1000_setup_copper_link_generic(a1);
  }

  if (v9 == 2)
  {
    goto LABEL_18;
  }

  if (v9 == 6)
  {
    result = e1000_copper_link_setup_igp(a1);
    if (!result)
    {
      return e1000_setup_copper_link_generic(a1);
    }
  }

  return result;
}

uint64_t e1000_setup_serdes_link_82575(uint64_t a1)
{
  if (*(a1 + 1116) == 3 || *(a1 + 1376) == 1)
  {
    v13 = 0;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x24uLL, 0x400u);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
    __dmb(1u);
    v2 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v2 & 0xFFFFFF7F);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
    __dmb(1u);
    if ((*(a1 + 284) - 29) >= 2)
    {
      v3 = 64;
    }

    else
    {
      v3 = 786496;
    }

    v4 = v3 | readData;
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4208uLL, &readData);
    __dmb(1u);
    v5 = readData;
    if ((v2 & 0xC00000) == 0x400000)
    {
      v7 = 0;
    }

    else
    {
      if ((v2 & 0xC00000) == 0x800000)
      {
        v6 = readData & 0xFFFBFFFF;
        v7 = 1;
LABEL_15:
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v4);
        if ((v7 & 1) == 0)
        {
          v9 = v6 & 0xFFFEFF4E | 0x90;
          goto LABEL_23;
        }

        v9 = v6 & 0xFFFCFF4E | 0x30000;
        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4218uLL, &readData);
        __dmb(1u);
        v10 = *(a1 + 884);
        if (v10 == 3)
        {
          goto LABEL_19;
        }

        v11 = readData & 0xFFFFFE7F;
        if (v10 == 2)
        {
          v11 |= 0x100u;
          goto LABEL_22;
        }

        if (v10 == 1)
        {
LABEL_19:
          v11 = readData | 0x180;
        }

LABEL_22:
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x4218uLL, v11);
LABEL_23:
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x4208uLL, v9);
        if ((v7 & 1) == 0 && (*(a1 + 1376) & 1) == 0)
        {
          e1000_force_mac_fc_generic(a1);
        }

        return 0;
      }

      v7 = *(a1 + 851);
    }

    if ((*(a1 + 284) - 29) <= 1)
    {
      result = (*(a1 + 1160))(a1, 3, 1, &v13);
      if (result)
      {
        return result;
      }

      v7 &= (v13 & 0x4000) == 0;
    }

    v4 |= 0x1A01u;
    v6 = v5 | 0xC;
    goto LABEL_15;
  }

  return 0;
}

void e1000_shutdown_serdes_link_82575(uint64_t a1)
{
  if ((*(a1 + 1116) == 3 || *(a1 + 1376) == 1) && !e1000_enable_mng_pass_thru(a1))
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4200uLL, &readData);
    __dmb(1u);
    v2 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x4200uLL, v2 & 0xFFFFFFF7);
    v5 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &v5);
    __dmb(1u);
    v3 = v5;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v3 | 0x80);
    v4 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v4);
    __dmb(1u);
    IODelay(0x3E8uLL);
  }
}

void e1000_power_up_serdes_link_82575(uint64_t a1)
{
  if (*(a1 + 1116) == 3 || *(a1 + 1376) == 1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4200uLL, &readData);
    __dmb(1u);
    v2 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x4200uLL, v2 | 8);
    v5 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &v5);
    __dmb(1u);
    v3 = v5;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v3 & 0xFFFFFF7F);
    v4 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v4);
    __dmb(1u);
    IODelay(0x3E8uLL);
  }
}

uint64_t e1000_check_for_link_82575(uint64_t a1)
{
  if (*(a1 + 1116) == 1)
  {

    return e1000_check_for_copper_link_generic(a1);
  }

  else
  {
    e1000_get_pcs_speed_and_duplex_82575(a1, &v4, &v3);
    *(a1 + 853) = *(a1 + 860) ^ 1;

    return e1000_config_fc_after_link_up_generic(a1);
  }
}

uint64_t e1000_read_mac_addr_82575(uint64_t a1)
{
  result = e1000_check_alt_mac_addr_generic(a1);
  if (!result)
  {

    return e1000_read_mac_addr_generic(a1);
  }

  return result;
}

void e1000_config_collision_dist_82575(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x404uLL, &readData);
  __dmb(1u);
  v2 = readData & 0xFFF003FF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x404uLL, v2 | 0xFC00);
  v3 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v3);
  __dmb(1u);
}

void e1000_clear_vfta_i350(uint64_t a1)
{
  for (i = 0; i != 128; ++i)
  {
    v3 = 10;
    do
    {
      __dmb(2u);
      v4 = 4 * i + 22016;
      if (!i)
      {
        if (*(a1 + 284) <= 1)
        {
          v4 = 1536;
        }

        else
        {
          v4 = 22016;
        }
      }

      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v4, 0);
      --v3;
    }

    while (v3);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
  }
}

void e1000_clear_hw_cntrs_82575(uint64_t a1)
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
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x402CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x403CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40FCuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4104uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4118uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4124uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4128uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x412CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4130uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4134uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4138uLL, &readData);
  __dmb(1u);
  if (*(a1 + 1116) == 3 || *(a1 + 1376) == 1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4228uLL, &readData);
    __dmb(1u);
  }
}

uint64_t e1000_get_link_up_info_82575(uint64_t a1, __int16 *a2, __int16 *a3)
{
  if (*(a1 + 1116) == 1)
  {

    return e1000_get_speed_and_duplex_copper_generic(a1, a2, a3);
  }

  else
  {
    e1000_get_pcs_speed_and_duplex_82575(a1, a2, a3);
    return 0;
  }
}

uint64_t e1000_acquire_swfw_sync_82575(uint64_t a1, int a2)
{
  v4 = a2 | (a2 << 16);
  v5 = 200;
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

void e1000_release_swfw_sync_82575(uint64_t a1, int a2)
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

uint64_t e1000_sgmii_uses_mdio_82575(uint64_t a1)
{
  v1 = *(a1 + 284);
  if ((v1 - 31) >= 5)
  {
    if ((v1 - 29) > 1)
    {
      return 0;
    }

    v5 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x20uLL, &v5);
    __dmb(1u);
    v2 = v5;
  }

  else
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE04uLL, &readData);
    __dmb(1u);
    v2 = readData;
  }

  return v2 >> 31;
}

void e1000_reset_mdicnfg_82580(uint64_t a1)
{
  v5 = 0;
  if (*(a1 + 284) == 31 && *(a1 + 1376) == 1)
  {
    if (*(a1 + 1260))
    {
      v2 = (*(a1 + 1260) << 6) + 100;
    }

    else
    {
      v2 = 36;
    }

    if (!(*(a1 + 1160))(a1, v2 & 0xFFFC, 1, &v5))
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE04uLL, &readData);
      __dmb(1u);
      v3 = readData | ((v5 & 4) << 29) | ((v5 & 8) << 27);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE04uLL, v3);
    }
  }
}

void e1000_get_pcs_speed_and_duplex_82575(uint64_t a1, __int16 *a2, __int16 *a3)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x420CuLL, &readData);
  __dmb(1u);
  v6 = readData;
  if ((readData & 1) == 0)
  {
    v7 = 0;
    v8 = 0;
    *(a1 + 860) = 0;
LABEL_3:
    *a2 = v7;
    *a3 = v8;
    return;
  }

  *(a1 + 860) = 1;
  if ((v6 & 2) != 0)
  {
    v9 = 100;
  }

  else
  {
    v9 = 10;
  }

  if ((v6 & 4) != 0)
  {
    v9 = 1000;
  }

  *a2 = v9;
  if ((v6 & 8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  *a3 = v10;
  if (*(a1 + 284) == 33)
  {
    v11 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v11);
    __dmb(1u);
    if ((v11 & 0x3000) == 0x1000)
    {
      v8 = 2;
      v7 = 2500;
      goto LABEL_3;
    }
  }
}

uint64_t e1000_get_cfg_done_82575(uint64_t a1)
{
  if (*(a1 + 1260) - 1 > 2)
  {
    v2 = 0x40000;
  }

  else
  {
    v2 = dword_100032EC8[(*(a1 + 1260) - 1)];
  }

  v3 = -100;
  do
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x1010uLL, &readData);
    __dmb(1u);
    if ((readData & v2) != 0)
    {
      break;
    }

    IODelay(0x3E8uLL);
  }

  while (!__CFADD__(v3++, 1));
  v6 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &v6);
  __dmb(1u);
  if ((v6 & 0x100) == 0 && *(a1 + 1072) == 6)
  {
    e1000_phy_init_script_igp3(a1);
  }

  return 0;
}

uint64_t e1000_phy_hw_reset_sgmii_82575(uint64_t a1)
{
  v1 = *(a1 + 1032);
  if (!v1)
  {
    return 0;
  }

  result = v1();
  if (result)
  {
    return result;
  }

  result = (*(a1 + 928))(a1);
  if (result)
  {
    return result;
  }

  if (*(a1 + 1104) != 21040592)
  {
    return 0;
  }

  return e1000_initialize_M88E1512_phy(a1);
}

uint64_t e1000_read_phy_reg_sgmii_82575(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (a2 > 0xFF)
  {
    return 4294967292;
  }

  result = (*(a1 + 896))();
  if (!result)
  {
    phy_reg_i2c = e1000_read_phy_reg_i2c(a1, a2, a3);
    (*(a1 + 1000))(a1);
    return phy_reg_i2c;
  }

  return result;
}

uint64_t e1000_write_phy_reg_sgmii_82575(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFF)
  {
    return 4294967292;
  }

  result = (*(a1 + 896))();
  if (!result)
  {
    v7 = e1000_write_phy_reg_i2c(a1, a2, a3);
    (*(a1 + 1000))(a1);
    return v7;
  }

  return result;
}

uint64_t e1000_read_phy_reg_82580(uint64_t a1, unsigned int a2, _WORD *a3)
{
  result = (*(a1 + 896))();
  if (!result)
  {
    phy_reg_mdic = e1000_read_phy_reg_mdic(a1, a2, a3);
    (*(a1 + 1000))(a1);
    return phy_reg_mdic;
  }

  return result;
}

uint64_t e1000_write_phy_reg_82580(uint64_t a1, unsigned int a2, int a3)
{
  result = (*(a1 + 896))();
  if (!result)
  {
    v7 = e1000_write_phy_reg_mdic(a1, a2, a3);
    (*(a1 + 1000))(a1);
    return v7;
  }

  return result;
}

uint64_t e1000_set_d0_lplu_state_82575(uint64_t a1, int a2)
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

      (*(a1 + 976))(a1, 16, &v8);
    }

    else
    {
      v8 &= ~2u;
      result = (*(a1 + 1032))(a1, 25);
      v6 = *(a1 + 1096);
      if (v6 != 2)
      {
        if (v6 != 1)
        {
          return result;
        }

        result = (*(a1 + 976))(a1, 16, &v8);
        if (result)
        {
          return result;
        }

        v7 = v8 | 0x80;
LABEL_14:
        v8 = v7;
        return (*(a1 + 1032))(a1, 16, v7);
      }

      result = (*(a1 + 976))(a1, 16, &v8);
      if (result)
      {
        return result;
      }
    }

    v7 = v8 & 0xFF7F;
    goto LABEL_14;
  }

  return result;
}

uint64_t e1000_set_d0_lplu_state_82580(uint64_t a1, int a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE14uLL, &readData);
  __dmb(1u);
  if (a2)
  {
    v4 = readData & 0xFFFFFFFC | 2;
  }

  else
  {
    v5 = readData & 0xFFFFFFFD;
    v6 = *(a1 + 1096);
    if (v6 == 1)
    {
      v5 = readData & 0xFFFFFFFC | 1;
    }

    if (v6 == 2)
    {
      v4 = readData & 0xFFFFFFFC;
    }

    else
    {
      v4 = v5;
    }
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE14uLL, v4);
  return 0;
}

uint64_t e1000_set_d3_lplu_state_82580(uint64_t a1, char a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE14uLL, &readData);
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
      v8 = readData & 0xFFFFFFFA | 4;
    }
  }

  else
  {
    v9 = readData & 0xFFFFFFFB;
    v10 = *(a1 + 1096);
    if (v10 == 1)
    {
      v9 = readData & 0xFFFFFFFA | 1;
    }

    if (v10 == 2)
    {
      v8 = readData & 0xFFFFFFFA;
    }

    else
    {
      v8 = v9;
    }
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE14uLL, v8);
  return 0;
}

uint64_t e1000_check_for_link_media_swap(uint64_t a1)
{
  result = (*(a1 + 1032))(a1, 22, 0);
  if (!result)
  {
    v5 = 0;
    result = (*(a1 + 976))(a1, 1, &v5);
    if (!result)
    {
      v3 = v5;
      result = (*(a1 + 1032))(a1, 22, 1);
      if (!result)
      {
        result = (*(a1 + 976))(a1, 1, &v5);
        if (!result)
        {
          v4 = (v3 >> 2) & 1;
          if ((v5 & 4) != 0)
          {
            v4 = 2;
          }

          if (!v4)
          {
            goto LABEL_13;
          }

          if (*(a1 + 1389) != v4)
          {
            *(a1 + 1389) = v4;
            *(a1 + 1390) = 1;
          }

          if (v4 == 1)
          {
            result = (*(a1 + 1032))(a1, 22, 0);
            if (result)
            {
              return result;
            }

            e1000_check_for_link_82575(a1);
          }

          else
          {
LABEL_13:
            e1000_check_for_link_82575(a1);
            result = (*(a1 + 1032))(a1, 22, 0);
            if (result)
            {
              return result;
            }
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t e1000_validate_nvm_checksum_with_offset(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = 0;
  v7 = 0;
  v5 = a2 + 64;
  while (1)
  {
    result = (*(a1 + 1160))(a1, v2, 1, &v7);
    if (result)
    {
      break;
    }

    v4 += v7;
    if (v5 <= ++v2)
    {
      if (v4 == 47802)
      {
        return 0;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t e1000_update_nvm_checksum_with_offset(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = 0;
  v7 = 0;
  v5 = a2 + 63;
  while (1)
  {
    result = (*(a1 + 1160))(a1, v2, 1, &v7);
    if (result)
    {
      break;
    }

    v4 += v7;
    if (v5 <= ++v2)
    {
      v8 = -17734 - v4;
      return (*(a1 + 1208))(a1, v5, 1, &v8);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::igb_rxSync(DriverKit_AppleEthernetE1000_IVars *this, unsigned int a2)
{
  v2 = a2;
  v3 = this;
  v4 = this + 352 * a2;
  v5 = v4 + 10032;
  v6 = *(v4 + 2540);
  v7 = *(v4 + 2541);
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v57 = 0u;
    v58 = 0u;
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
    while (1)
    {
      v9 = *(v4 + 1287) + 16 * v6;
      v11 = *(v9 + 8);
      v10 = v9 + 8;
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = *(v10 + 4);
      v13 = *(*(v4 + 1292) + 8 * v6);
      *(&v27 + v8) = v13;
      v14 = (v8 + 1);
      *(v13 + 64) = v12;
      v6 = (v6 + 1) & 0x7F;
      v8 = v14;
      if (v7 == v6)
      {
        v6 = v7;
        v8 = v14;
        break;
      }
    }

    if (v8)
    {
      v15 = 0;
      __dmb(1u);
      v16 = *(v4 + 1295);
      sendDataAvailable = 0;
      do
      {
        while (1)
        {
          v17 = *(&v27 + v15);
          callback[0] = _NSConcreteStackBlock;
          callback[1] = 0x40000000;
          callback[2] = ___ZN6pcindk16enqueueRxPacketsEP25IODataQueueDispatchSourcePP24IOUserNetworkPacketStateRj_block_invoke;
          callback[3] = &__block_descriptor_tmp;
          callback[4] = v17;
          if (!IODataQueueDispatchSource::EnqueueWithCoalesce(v16, 0x68u, &sendDataAvailable, callback))
          {
            break;
          }

          IODataQueueDispatchSource::SendDataAvailable(v16);
          if (++v15 >= v8)
          {
            goto LABEL_14;
          }
        }

        ++v15;
      }

      while (v15 < v8);
      v8 = v8 | 0x10000;
LABEL_14:
      v2 = a2;
      v3 = this;
      *(v5 + 32) = v6;
    }
  }

  v57 = 0u;
  v58 = 0u;
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
  if (((v6 + ~v7) & 0x7F) != 0)
  {
    v18 = (*(**(v5 + 42) + 104))(*(v5 + 42), &v27, (v6 + ~v7) & 0x7F);
    if (v18)
    {
      v19 = v18;
      v20 = &v27;
      do
      {
        v21 = *v20++;
        v22 = (*(v5 + 33) + 16 * v7);
        v23 = *(v21 + 48);
        *(*(v5 + 38) + 8 * v7) = v23 + 8;
        *v22 = *(v23 + 24);
        v22[1] = 0;
        v7 = (v7 + 1) & 0x7F;
        --v19;
      }

      while (v19);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(v3 + 2), 0, (v2 << 8) | 0x2818, v7);
      *(v5 + 33) = v7;
    }
  }

  return v8;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::lem_rxSync(DriverKit_AppleEthernetE1000_IVars *this)
{
  v2 = *(this + 2540);
  v3 = *(this + 2541);
  if (v3 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
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
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    while (1)
    {
      v5 = *(this + 1287) + 16 * v2;
      if ((*(v5 + 12) & 1) == 0)
      {
        break;
      }

      v6 = *(v5 + 8);
      v7 = *(*(this + 1292) + 8 * v2);
      *(&v20 + v4) = v7;
      v8 = (v4 + 1);
      *(v7 + 64) = v6;
      v2 = (v2 + 1) & 0x7F;
      v4 = v8;
      if (v3 == v2)
      {
        v2 = v3;
        v4 = v8;
        break;
      }
    }

    if (v4)
    {
      v9 = 0;
      __dmb(1u);
      v10 = *(this + 1295);
      sendDataAvailable = 0;
      do
      {
        while (1)
        {
          v11 = *(&v20 + v9);
          callback[0] = _NSConcreteStackBlock;
          callback[1] = 0x40000000;
          callback[2] = ___ZN6pcindk16enqueueRxPacketsEP25IODataQueueDispatchSourcePP24IOUserNetworkPacketStateRj_block_invoke;
          callback[3] = &__block_descriptor_tmp;
          callback[4] = v11;
          if (!IODataQueueDispatchSource::EnqueueWithCoalesce(v10, 0x68u, &sendDataAvailable, callback))
          {
            break;
          }

          IODataQueueDispatchSource::SendDataAvailable(v10);
          if (++v9 >= v4)
          {
            goto LABEL_14;
          }
        }

        ++v9;
      }

      while (v9 < v4);
      v4 = v4 | 0x10000;
LABEL_14:
      *(this + 2540) = v2;
    }
  }

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
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (((v2 + ~v3) & 0x7F) != 0)
  {
    v12 = (*(**(this + 1296) + 104))(*(this + 1296), &v20, (v2 + ~v3) & 0x7F);
    if (v12)
    {
      v13 = v12;
      v14 = &v20;
      do
      {
        v15 = *v14++;
        v16 = *(this + 1287) + 16 * v3;
        v17 = *(v15 + 48);
        *(*(this + 1292) + 8 * v3) = v17 + 8;
        *v16 = *(v17 + 24);
        *(v16 + 12) = 0;
        v3 = (v3 + 1) & 0x7F;
        --v13;
      }

      while (v13);
      __dmb(2u);
      if (*(this + 71) <= 1)
      {
        v18 = 296;
      }

      else
      {
        v18 = 10264;
      }

      IOPCIDevice::MemoryWrite32(*(this + 2), 0, v18, v3);
      *(this + 2541) = v3;
    }
  }

  return v4;
}

uint64_t ___ZN6pcindk16enqueueRxPacketsEP25IODataQueueDispatchSourcePP24IOUserNetworkPacketStateRj_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  *(a2 + 40) = *(v2 + 40);
  *(a2 + 73) = *(v2 + 73);
  *(a2 + 64) = *(v2 + 64);
  return result;
}

uint64_t e1000_acquire_swfw_sync_i210(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = a2 | (a2 << 16);
  while (2)
  {
    v6 = *(a1 + 1232) + 1;
    while (1)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B50uLL, 2u);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B50uLL, &readData);
      __dmb(1u);
      if (readData == -1)
      {
        return 4294967283;
      }

      if ((readData & 2) != 0)
      {
        break;
      }

      IODelay(0x32uLL);
      if (!--v6)
      {
        e1000_put_hw_semaphore_generic(a1);
        return 4294967283;
      }
    }

    v9 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B5CuLL, &v9);
    __dmb(1u);
    v7 = v9;
    if (v9 == -1)
    {
      return 4294967283;
    }

    if ((v9 & v5) != 0)
    {
      e1000_put_hw_semaphore_generic(a1);
      IODelay(0x1388uLL);
      if (++v4 != 200)
      {
        continue;
      }

      return 4294967283;
    }

    break;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B5CuLL, v7 | a2);
  return 0;
}

void e1000_release_swfw_sync_i210(uint64_t a1, int a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B5CuLL, &readData);
  __dmb(1u);
  v4 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5B5CuLL, v4 & ~a2);
  e1000_put_hw_semaphore_generic(a1);
}

uint64_t e1000_read_nvm_srrd_i210(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t e1000_write_nvm_srwr_i210(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

    v10 = e1000_write_nvm_srwr(a1, a2, v9, a4 + 2 * v8);
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

uint64_t e1000_write_nvm_srwr(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
      do
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x12018uLL, &readData);
        __dmb(1u);
        if ((readData & 2) != 0)
        {
          break;
        }

        IODelay(5uLL);
        --v15;
      }

      while (v15);
      ++v11;
    }

    while (v11 != v13);
    return 0;
  }

  return result;
}

uint64_t e1000_validate_nvm_checksum_i210(uint64_t a1)
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

uint64_t e1000_update_nvm_checksum_i210(uint64_t a1)
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
      v7 = e1000_write_nvm_srwr(a1, 0x3Fu, 1u, &v10);
      (*(a1 + 1168))(a1);
      if (v7)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return e1000_update_flash_i210(a1);
      }
    }
  }

  return v2;
}

uint64_t e1000_update_flash_i210(uint64_t a1)
{
  result = e1000_pool_flash_update_done_i210(a1);
  if (result != -1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
    __dmb(1u);
    v3 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v3 | 0x800000);
    return e1000_pool_flash_update_done_i210(a1);
  }

  return result;
}

uint64_t e1000_get_flash_presence_i210(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  return (readData >> 19) & 1;
}

uint64_t e1000_pool_flash_update_done_i210(uint64_t a1)
{
  v2 = 20000;
  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
    __dmb(1u);
    if ((readData & 0x4000000) != 0)
    {
      break;
    }

    IODelay(5uLL);
    if (!--v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

void *e1000_init_function_pointers_i210(void *a1)
{
  result = e1000_init_function_pointers_82575(a1);
  a1[143] = e1000_init_nvm_params_i210;
  return result;
}

uint64_t e1000_init_nvm_params_i210(uint64_t a1)
{
  inited = e1000_init_nvm_params_82575(a1);
  *(a1 + 1152) = e1000_acquire_nvm_i210;
  *(a1 + 1168) = e1000_release_nvm_i210;
  *(a1 + 1192) = e1000_valid_led_default_i210;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  v3 = e1000_update_nvm_checksum_i210;
  v4 = e1000_validate_nvm_checksum_i210;
  v5 = e1000_write_nvm_srwr_i210;
  v6 = e1000_read_nvm_srrd_i210;
  if ((readData & 0x80000) != 0)
  {
    v7 = 4;
  }

  else
  {
    v4 = e1000_null_ops_generic;
    v5 = e1000_null_write_nvm;
    v6 = e1000_read_invm_i210;
    v7 = 5;
    v3 = e1000_null_ops_generic;
  }

  *(a1 + 1216) = v7;
  *(a1 + 1160) = v6;
  *(a1 + 1208) = v5;
  *(a1 + 1200) = v4;
  *(a1 + 1184) = v3;
  return inited;
}

uint64_t e1000_init_hw_i210(uint64_t a1)
{
  if (*(a1 + 284) < 34)
  {
    goto LABEL_11;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  if ((readData & 0x80000) != 0)
  {
    goto LABEL_11;
  }

  v16 = 0;
  v15 = 0;
  (*(a1 + 896))(a1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5800uLL, &readData);
  __dmb(1u);
  v2 = readData;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE04uLL, &readData);
  __dmb(1u);
  v3 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE04uLL, v3 & 0x7FFFFFFF);
  invm_word_i210 = e1000_read_invm_word_i210(a1, 10, &v16 + 1);
  v5 = HIWORD(v16);
  if (invm_word_i210)
  {
    v5 = 8239;
  }

  v6 = (v5 << 16) | 0x1000A0;
  v7 = (v5 << 16) | 0xA0;
  v8 = 5;
  while (1)
  {
    e1000_write_phy_reg_mdic(a1, 0x16u, 252);
    IODelay(0x14uLL);
    e1000_read_phy_reg_mdic(a1, 0xEu, &v16);
    IODelay(0x14uLL);
    e1000_write_phy_reg_mdic(a1, 0x16u, 0);
    v9 = v16;
    if (v16 != 255)
    {
      break;
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
    __dmb(1u);
    v10 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v10 | 0x80000000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
    __dmb(1u);
    v11 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v11 | 0x140000);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5800uLL, 0);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x12024uLL, v6);
    e1000_read_pci_cfg(a1, 0x44uLL, &v15);
    v15 |= 3u;
    e1000_write_pci_cfg(a1, 0x44uLL, &v15);
    IODelay(0x3E8uLL);
    v15 &= 0xFFFCu;
    e1000_write_pci_cfg(a1, 0x44uLL, &v15);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x12024uLL, v7);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5800uLL, v2);
    if (!--v8)
    {
      v12 = 4294967294;
      goto LABEL_10;
    }
  }

  v12 = 0;
LABEL_10:
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE04uLL, v3);
  (*(a1 + 1000))(a1);
  if (v9 != 255)
  {
LABEL_11:
    *(a1 + 944) = e1000_get_cfg_done_i210;
    (*(a1 + 48))(a1);
    return e1000_init_hw_base(a1);
  }

  return v12;
}

uint64_t e1000_get_cfg_done_i210(uint64_t a1)
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

uint64_t e1000_valid_led_default_i210(uint64_t a1, __int16 *a2)
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

uint64_t e1000_read_invm_i210(uint64_t a1, int a2, uint64_t a3, __int16 *a4)
{
  v6 = (a1 + 0x2000);
  if (a2 > 13)
  {
    if (a2 <= 18)
    {
      if (a2 == 14)
      {
        result = 0;
        v8 = v6[699];
        goto LABEL_29;
      }

      if (a2 == 15)
      {
        result = e1000_read_invm_word_i210(a1, 15, a4);
        if (!result)
        {
          return result;
        }

        result = 0;
        v8 = 29251;
        goto LABEL_29;
      }
    }

    else
    {
      switch(a2)
      {
        case 19:
          result = e1000_read_invm_word_i210(a1, 19, a4);
          if (!result)
          {
            return result;
          }

          result = 0;
          v8 = 193;
          goto LABEL_29;
        case 28:
          result = e1000_read_invm_word_i210(a1, 28, a4);
          if (!result)
          {
            return result;
          }

          result = 0;
          v8 = 388;
          goto LABEL_29;
        case 31:
          result = e1000_read_invm_word_i210(a1, 31, a4);
          if (!result)
          {
            return result;
          }

          result = 0;
          v8 = 8204;
          goto LABEL_29;
      }
    }

LABEL_20:
    result = 0;
    v8 = -1;
LABEL_29:
    *a4 = v8;
    return result;
  }

  if (a2 > 10)
  {
    if (a2 == 11)
    {
      result = 0;
      v8 = v6[698];
    }

    else
    {
      result = 0;
      if (a2 == 12)
      {
        v8 = v6[697];
      }

      else
      {
        v8 = v6[696];
      }
    }

    goto LABEL_29;
  }

  if (!a2)
  {
    invm_word_i210 = e1000_read_invm_word_i210(a1, 0, a4);
    v10 = e1000_read_invm_word_i210(a1, 1, a4 + 1) | invm_word_i210;
    return v10 | e1000_read_invm_word_i210(a1, 2, a4 + 2);
  }

  if (a2 != 4)
  {
    goto LABEL_20;
  }

  result = e1000_read_invm_word_i210(a1, 4, a4);
  if (result)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t e1000_read_invm_word_i210(uint64_t a1, int a2, _WORD *a3)
{
  v6 = 0;
  do
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 4 * (v6 & 0x3FFF) + 74016, &readData);
    __dmb(1u);
    v7 = readData & 7;
    if (v7 == 2)
    {
      v8 = v6 + 1;
    }

    else
    {
      if ((readData & 7) == 0)
      {
        return 4294967276;
      }

      v8 = v6 + 8;
      if (v7 != 4)
      {
        v8 = v6;
      }

      if (v7 == 1 && readData >> 9 == a2)
      {
        result = 0;
        *a3 = HIWORD(readData);
        return result;
      }
    }

    v6 = v8 + 1;
  }

  while (v8 < 0x3Fu);
  return 4294967276;
}

void DriverKit_AppleEthernetE1000_IVars::updateCarrier(IOPCIDevice **this)
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(this[2], 0, 8uLL, &readData);
  __dmb(1u);
  v2 = readData;
  if (readData != -1)
  {
    if (*(this + 10384) != 1)
    {
      return;
    }

    if ((pcindkll & 4) != 0)
    {
      DriverKit_AppleEthernetE1000_IVars::updateCarrier();
    }

    *(this + 10384) = 0;
    if ((v2 & 2) == 0)
    {
      (this[1200]->IOService::OSObject::OSMetaClassBase::__vftable[2].release)(this[1200], 1, 34);
      (this[1200]->IOService::OSObject::OSMetaClassBase::__vftable[2].isEqualTo)(this[1200], 4294967294);
      if ((pcindkll & 4) != 0)
      {
        DriverKit_AppleEthernetE1000_IVars::updateCarrier();
      }

      return;
    }

    e1000_read_phy_reg(this);
    e1000_read_phy_reg(this);
    e1000_read_phy_reg(this);
    e1000_read_phy_reg(this);
    e1000_read_phy_reg(this);
    e1000_read_phy_reg(this);
    if ((~HIWORD(v10) & 0x300) != 0)
    {
      if ((v10 & 0x1000000) != 0)
      {
        if ((pcindkll & 4) == 0)
        {
          v3 = 1;
          goto LABEL_21;
        }

        DriverKit_AppleEthernetE1000_IVars::updateCarrier(&readData);
      }

      else if ((v10 & 0x2000000) != 0)
      {
        if ((pcindkll & 4) == 0)
        {
          v3 = 2;
          goto LABEL_21;
        }

        DriverKit_AppleEthernetE1000_IVars::updateCarrier(&readData);
      }

      else
      {
        if ((pcindkll & 4) == 0)
        {
          v3 = 0;
          goto LABEL_21;
        }

        DriverKit_AppleEthernetE1000_IVars::updateCarrier(&readData);
      }
    }

    else
    {
      if ((pcindkll & 4) == 0)
      {
        v3 = 3;
        goto LABEL_21;
      }

      DriverKit_AppleEthernetE1000_IVars::updateCarrier(&readData);
    }

    v3 = readData;
LABEL_21:
    *(this + 220) = v3;
    v4 = *(this + 71);
    if (v4 >= 29)
    {
      if (v4 == 36)
      {
        e1000_set_eee_i225(this, 1, 1, 1);
      }

      else if (v4 == 33)
      {
        e1000_set_eee_i354(this, 1, 1);
      }

      else
      {
        e1000_set_eee_i350(this, 1, 1);
      }
    }

    v9 = 0;
    e1000_get_speed_and_duplex(this);
    if ((pcindkll & 4) != 0)
    {
      DriverKit_AppleEthernetE1000_IVars::updateCarrier();
    }

    if (*(this + 221) == 3 && *(this + 220) != 3)
    {
      if ((pcindkll & 4) != 0)
      {
        DriverKit_AppleEthernetE1000_IVars::updateCarrier();
      }

      *(this + 220) = 3;
      if (e1000_force_mac_fc(this) && (pcindkll & 4) != 0)
      {
        DriverKit_AppleEthernetE1000_IVars::updateCarrier();
      }
    }

    if ((pcindkll & 4) != 0)
    {
      DriverKit_AppleEthernetE1000_IVars::updateCarrier(&v9 + 1, &v9);
    }

    if (v9 == 2)
    {
      v5 = 1048608;
    }

    else
    {
      v5 = 2097184;
    }

    if (*(this + 220))
    {
      v6 = v5 | 0x400000;
    }

    else
    {
      v6 = v5;
    }

    if (HIWORD(v9) > 0x3E7u)
    {
      if (HIWORD(v9) == 1000)
      {
        v6 = v6 | 0x10;
      }

      else if (HIWORD(v9) == 2500)
      {
        v6 = v6 | 0x16;
      }
    }

    else if (HIWORD(v9) == 10)
    {
      v6 = v6 | 3;
    }

    else if (HIWORD(v9) == 100)
    {
      v6 = v6 | 6;
    }

    v7 = *(this + 71);
    if (v7 == 36)
    {
      if (*(this + 1377))
      {
LABEL_63:
        if ((pcindkll & 4) != 0)
        {
          DriverKit_AppleEthernetE1000_IVars::updateCarrier();
        }

        (this[1200]->IOService::OSObject::OSMetaClassBase::__vftable[2].release)(this[1200], 3, v6);
        (this[1200]->IOService::OSObject::OSMetaClassBase::__vftable[2].isEqualTo)(this[1200], 100);
        if ((pcindkll & 4) != 0)
        {
          DriverKit_AppleEthernetE1000_IVars::updateCarrier();
        }

        return;
      }
    }

    else if (v7 < 29 || (*(this + 1378) & 1) != 0)
    {
      goto LABEL_63;
    }

    v8 = 10;
    while (1)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(this[2], 0, 0xE30uLL, &readData);
      __dmb(1u);
      if (readData >> 29)
      {
        break;
      }

      IODelay(0x64uLL);
      if (!--v8)
      {
        goto LABEL_63;
      }
    }

    v6 = v6 | 0x800000;
    goto LABEL_63;
  }

  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::updateCarrier();
  }
}

uint64_t DriverKit_AppleEthernetE1000_IVars::getSupportedMediaArray(DriverKit_AppleEthernetE1000_IVars *this, unsigned int *a2, unsigned int *a3)
{
  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::getSupportedMediaArray();
  }

  if (*(this + 71) == 36)
  {
    LODWORD(v6) = 18;
  }

  else
  {
    LODWORD(v6) = 14;
  }

  v7 = *a3;
  if (*a3 >= v6)
  {
    v6 = v6;
  }

  else
  {
    v6 = v7;
  }

  *a3 = v6;
  if (v7)
  {
    v8 = &mode_table;
    do
    {
      v9 = *v8;
      v8 += 4;
      *a2++ = v9;
      --v6;
    }

    while (v6);
  }

  if (pcindkll)
  {
    DriverKit_AppleEthernetE1000_IVars::getSupportedMediaArray();
  }

  return 0;
}

void DriverKit_AppleEthernetE1000_IVars::selMed(DriverKit_AppleEthernetE1000_IVars *this, int a2)
{
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::selMed();
  }

  *(this + 851) = 1;
  *(this + 221) = 0;
  v4 = *(this + 71);
  if (v4 == 36)
  {
    *(this + 1377) = 1;
  }

  else if (v4 >= 29)
  {
    *(this + 1378) = 1;
  }

  if (a2 <= 5242933)
  {
    if (a2 > 2097186)
    {
      if (a2 > 5242914)
      {
        switch(a2)
        {
          case 5242915:
            v9 = 2;
            break;
          case 5242918:
            v9 = 8;
            break;
          case 5242928:
            v7 = 32;
LABEL_55:
            *(this + 560) = v7;
            *(this + 846) = v7;
LABEL_60:
            *(this + 221) = 3;
            goto LABEL_73;
          default:
            goto LABEL_76;
        }

        *(this + 846) = v9;
        *(this + 560) = v9;
        goto LABEL_60;
      }

      if (a2 == 2097187)
      {
        v8 = 1;
      }

      else
      {
        if (a2 != 2097190)
        {
          goto LABEL_76;
        }

        v8 = 4;
      }
    }

    else if (a2 <= 1048613)
    {
      if (a2 == 32)
      {
        *(this + 846) = 8;
        if (v4 == 36)
        {
          v10 = 175;
        }

        else
        {
          v10 = 47;
        }

        *(this + 560) = v10;
        *(this + 221) = 3;
        if (v4 < 29 || v4 == 36)
        {
          goto LABEL_73;
        }

        goto LABEL_70;
      }

      if (a2 != 1048611)
      {
        goto LABEL_76;
      }

      v8 = 2;
    }

    else
    {
      if (a2 != 1048614)
      {
        if (a2 == 1048624)
        {
          v6 = 32;
        }

        else
        {
          if (a2 != 1048630)
          {
            goto LABEL_76;
          }

          v6 = 128;
        }

        *(this + 560) = v6;
        goto LABEL_64;
      }

      v8 = 8;
    }

    *(this + 846) = v8;
    *(this + 560) = v8;
    goto LABEL_73;
  }

  if (a2 > 13631535)
  {
    if (a2 <= 134217765)
    {
      if (a2 != 13631536)
      {
        if (a2 != 13631542)
        {
          if (a2 == 134217763)
          {
            *(this + 851) = 0;
            v5 = 2;
LABEL_53:
            *(this + 846) = v5;
            *(this + 560) = 0;
            goto LABEL_73;
          }

          goto LABEL_76;
        }

        *(this + 560) = 128;
        *(this + 846) = 0x80;
        *(this + 221) = 3;
LABEL_62:
        *(this + 1377) = 0;
        goto LABEL_73;
      }

      *(this + 560) = 32;
      *(this + 846) = 32;
      goto LABEL_48;
    }

    if (a2 == 134217766)
    {
      *(this + 851) = 0;
      v5 = 8;
      goto LABEL_53;
    }

    if (a2 != 134217776)
    {
      if (a2 == 134217782)
      {
        *(this + 851) = 0;
        *(this + 846) = 0x80;
        *(this + 221) = 0;
        goto LABEL_73;
      }

      goto LABEL_76;
    }

    *(this + 851) = 0;
    LOBYTE(v6) = 32;
LABEL_64:
    *(this + 846) = v6;
    goto LABEL_73;
  }

  if (a2 <= 9437231)
  {
    if (a2 != 5242934)
    {
      if (a2 != 9437222)
      {
        goto LABEL_76;
      }

      *(this + 846) = 8;
      *(this + 560) = 8;
LABEL_49:
      if (v4 == 36)
      {
        goto LABEL_62;
      }

      if (v4 < 29)
      {
        goto LABEL_73;
      }

LABEL_70:
      *(this + 1378) = 0;
      goto LABEL_73;
    }

    v7 = 128;
    goto LABEL_55;
  }

  switch(a2)
  {
    case 9437232:
      *(this + 560) = 32;
      *(this + 846) = 32;
      goto LABEL_49;
    case 9437238:
      *(this + 560) = 128;
      *(this + 846) = 0x80;
      goto LABEL_62;
    case 13631526:
      *(this + 846) = 8;
      *(this + 560) = 8;
LABEL_48:
      *(this + 221) = 3;
      goto LABEL_49;
  }

LABEL_76:
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::selMed();
  }

LABEL_73:
  *(this + 1136) = 1;
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::selMed();
  }
}

uint64_t DriverKit_AppleEthernetE1000_IVars::handleChosenMedia(DriverKit_AppleEthernetE1000_IVars *this, int a2)
{
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::handleChosenMedia();
  }

  DriverKit_AppleEthernetE1000_IVars::selMed(this, a2);
  if (e1000_setup_link(this) && (pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::handleChosenMedia();
  }

  *(this + 10384) = 1;
  DriverKit_AppleEthernetE1000_IVars::updateCarrier(this);
  if ((pcindkll & 4) != 0)
  {
    DriverKit_AppleEthernetE1000_IVars::handleChosenMedia();
  }

  return 0;
}

void DriverKit_AppleEthernetE1000_IVars::txSubmit(DriverKit_AppleEthernetE1000_IVars *this, unsigned int a2)
{
  v2 = this + 352 * a2;
  v3 = *(v2 + 2453);
  memset(v27, 0, 512);
  v4 = *(v2 + 2452) + ~v3;
  if ((v4 & 0x7F) != 0)
  {
    v7 = v2 + 9680;
    v8 = (*(**(v2 + 1252) + 104))(*(v2 + 1252), v27, v4 & 0x7F);
    if (v8)
    {
      v9 = v8 - 1;
      v10 = v8;
      if (*(this + 71) <= 28)
      {
        v20 = v27;
        do
        {
          v21 = *v20++;
          v22 = *(v21 + 48);
          *(*(v7 + 38) + 8 * v3) = v22 + 8;
          v23 = *(v22 + 72);
          v24 = *(v22 + 24) + *(v22 + 76);
          if (v9)
          {
            v25 = 50331648;
          }

          else
          {
            v25 = 184549376;
          }

          v26 = *(v7 + 33) + 16 * v3;
          *v26 = v24;
          *(v26 + 8) = v23 | v25;
          *(v26 + 12) = 0;
          v3 = (v3 + 1) & 0x7F;
          --v9;
          --v10;
        }

        while (v10);
        atomic_store(v3, v7 + 33);
        __dmb(2u);
        v18 = *(this + 2);
        if (*(this + 71) <= 1)
        {
          v19 = 1080;
        }

        else
        {
          v19 = 14360;
        }
      }

      else
      {
        v11 = v27;
        do
        {
          v12 = *v11++;
          v13 = *(v12 + 48);
          *(*(v7 + 38) + 8 * v3) = v13 + 8;
          v14 = *(v13 + 72);
          v15 = *(v13 + 24) + *(v13 + 76);
          if (v9)
          {
            v16 = 590348288;
          }

          else
          {
            v16 = 724566016;
          }

          v17 = *(v7 + 33) + 16 * v3;
          *v17 = v15;
          *(v17 + 8) = v14 | v16;
          *(v17 + 12) = v14 << 14;
          v3 = (v3 + 1) & 0x7F;
          --v9;
          --v10;
        }

        while (v10);
        atomic_store(v3, v7 + 33);
        __dmb(2u);
        v18 = *(this + 2);
        v19 = (a2 << 8) | 0x3818;
      }

      IOPCIDevice::MemoryWrite32(v18, 0, v19, v3);
    }
  }
}

void *e1000_init_nvm_ops_generic(void *result)
{
  result[143] = e1000_null_ops_generic;
  result[144] = e1000_null_ops_generic;
  result[145] = e1000_null_read_nvm;
  result[146] = e1000_null_nvm_generic;
  result[147] = e1000_reload_nvm_generic;
  result[148] = e1000_null_ops_generic;
  result[149] = e1000_null_led_default;
  result[150] = e1000_null_ops_generic;
  result[151] = e1000_null_write_nvm;
  return result;
}

void e1000_reload_nvm_generic(uint64_t a1)
{
  IODelay(0xAuLL);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v2 | 0x2000);
  v3 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v3);
  __dmb(1u);
}

uint64_t e1000_poll_eerd_eewr_done(uint64_t a1, int a2)
{
  v4 = 100000;
  while (a2)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x102CuLL, &readData);
    __dmb(1u);
    if ((readData & 2) != 0)
    {
      return 0;
    }

LABEL_6:
    IODelay(5uLL);
    if (!--v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v7 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x14uLL, &v7);
  __dmb(1u);
  if ((v7 & 2) == 0)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t e1000_acquire_nvm_generic(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v2 | 0x40);
  v8 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &v8);
  __dmb(1u);
  if ((v8 & 0x80) != 0)
  {
    return 0;
  }

  v3 = -999;
  do
  {
    v4 = v3;
    IODelay(5uLL);
    v7 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &v7);
    __dmb(1u);
    v5 = v7;
    if (!v4)
    {
      break;
    }

    v3 = v4 + 1;
  }

  while ((v7 & 0x80) == 0);
  if (v4)
  {
    return 0;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v5 & 0xFFFFFFBF);
  return 0xFFFFFFFFLL;
}

void e1000_stop_nvm(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  v2 = *(a1 + 1216);
  if (v2 == 3)
  {
    v3 = readData & 0xFFFFFFF9;
    v5 = readData & 0xFFFFFFF9;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v3);
    e1000_raise_eec_clk(a1, &v5);
  }

  else
  {
    if (v2 != 2)
    {
      return;
    }

    v5 = readData | 2;
  }

  e1000_lower_eec_clk(a1, &v5);
}

void e1000_lower_eec_clk(uint64_t a1, uint32_t *a2)
{
  *a2 &= ~1u;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, *a2);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(*(a1 + 1234));
}

void e1000_raise_eec_clk(uint64_t a1, uint32_t *a2)
{
  *a2 |= 1u;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, *a2);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(*(a1 + 1234));
}

void e1000_release_nvm_generic(uint64_t a1)
{
  e1000_stop_nvm(a1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  v2 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v2 & 0xFFFFFFBF);
}

uint64_t e1000_read_nvm_spi(uint64_t a1, unsigned int a2, signed int a3, _WORD *a4)
{
  v4 = *(a1 + 1232);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v6 == 0 || !v5)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v7) = a3;
  ready = 0xFFFFFFFFLL;
  if (a3)
  {
    if (v6 >= a3)
    {
      ready = (*(a1 + 1152))();
      if (!ready)
      {
        ready = e1000_ready_nvm_eeprom(a1);
        if (!ready)
        {
          e1000_standby_nvm(a1);
          if (*(a1 + 1236) == 8 && a2 > 0x7F)
          {
            v12 = 11;
          }

          else
          {
            v12 = 3;
          }

          e1000_shift_out_eec_bits(a1, v12, *(a1 + 1238));
          e1000_shift_out_eec_bits(a1, 2 * (a2 & 0x7FFF), *(a1 + 1236));
          v7 = v7;
          do
          {
            *a4++ = __rev16(e1000_shift_in_eec_bits(a1, 16));
            --v7;
          }

          while (v7);
        }

        (*(a1 + 1168))(a1);
      }
    }
  }

  return ready;
}

uint64_t e1000_ready_nvm_eeprom(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  v2 = readData;
  v3 = *(a1 + 1216);
  if (v3 == 2)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v2 & 0xFFFFFFFC);
    v7 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v7);
    __dmb(1u);
    IODelay(1uLL);
    v6 = 5000;
    while (1)
    {
      e1000_shift_out_eec_bits(a1, 5, *(a1 + 1238));
      if ((e1000_shift_in_eec_bits(a1, 8) & 1) == 0)
      {
        break;
      }

      IODelay(5uLL);
      e1000_standby_nvm(a1);
      if (!--v6)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else if (v3 == 3)
  {
    v4 = readData & 0xFFFFFFFA;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v2 & 0xFFFFFFFA);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v4 | 2);
  }

  return 0;
}

void e1000_standby_nvm(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  v2 = readData;
  v3 = *(a1 + 1216);
  if (v3 == 2)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v2 | 2);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(*(a1 + 1234));
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v2 & 0xFFFFFFFD);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(*(a1 + 1234));
  }

  else if (v3 == 3)
  {
    readData &= 0xFFFFFFFC;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v2 & 0xFFFFFFFC);
    v5 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v5);
    __dmb(1u);
    IODelay(*(a1 + 1234));
    e1000_raise_eec_clk(a1, &readData);
    v4 = readData | 2;
    readData |= 2u;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v4);
    v5 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v5);
    __dmb(1u);
    IODelay(*(a1 + 1234));
    e1000_lower_eec_clk(a1, &readData);
  }
}

void e1000_shift_out_eec_bits(uint64_t a1, int a2, char a3)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  v14 = readData;
  v6 = 1 << (a3 - 1);
  v7 = *(a1 + 1216);
  if (v7 == 2)
  {
    v8 = readData | 8;
  }

  else
  {
    if (v7 != 3)
    {
      goto LABEL_6;
    }

    v8 = readData & 0xFFFFFFF7;
  }

  v14 = v8;
  do
  {
LABEL_6:
    v9 = v14 & 0xFFFFFFFB | (4 * ((v6 & a2) != 0));
    v14 = v9;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v9);
    v12 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v12);
    __dmb(1u);
    IODelay(*(a1 + 1234));
    e1000_raise_eec_clk(a1, &v14);
    e1000_lower_eec_clk(a1, &v14);
    v10 = v6 > 1;
    v6 >>= 1;
  }

  while (v10);
  v11 = v14;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v11 & 0xFFFFFFFB);
}

uint64_t e1000_shift_in_eec_bits(uint64_t a1, int a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  v8 = readData & 0xFFFFFFF3;
  for (i = 0; a2; --a2)
  {
    e1000_raise_eec_clk(a1, &v8);
    v6 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &v6);
    __dmb(1u);
    v8 = v6 & 0xFFFFFFFB;
    i = (2 * i) | (v6 >> 3) & 1;
    e1000_lower_eec_clk(a1, &v8);
  }

  return i;
}

uint64_t e1000_read_nvm_microwire(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 1232);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v6 == 0 || !v5)
  {
    return 0xFFFFFFFFLL;
  }

  ready = 0xFFFFFFFFLL;
  if (a3)
  {
    if (v6 >= a3)
    {
      v9 = a2;
      ready = (*(a1 + 1152))();
      if (!ready)
      {
        ready = e1000_ready_nvm_eeprom(a1);
        if (!ready)
        {
          v11 = 0;
          do
          {
            e1000_shift_out_eec_bits(a1, 6, *(a1 + 1238));
            e1000_shift_out_eec_bits(a1, (v11 + v9), *(a1 + 1236));
            *(a4 + 2 * v11) = e1000_shift_in_eec_bits(a1, 16);
            e1000_standby_nvm(a1);
            ++v11;
          }

          while (a3 != v11);
        }

        (*(a1 + 1168))(a1);
      }
    }
  }

  return ready;
}

uint64_t e1000_read_nvm_eerd(uint64_t a1, unsigned int a2, unsigned int a3, _WORD *a4)
{
  v6 = *(a1 + 1232);
  v7 = v6 >= a2;
  v8 = v6 - a2;
  if (v8 == 0 || !v7)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v4;
  v16 = v5;
  result = 0xFFFFFFFFLL;
  if (a3 && v8 >= a3)
  {
    v11 = a3;
    for (i = (4 * a2) | 1; ; i += 4)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x14uLL, i);
      if (e1000_poll_eerd_eewr_done(a1, 0))
      {
        break;
      }

      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x14uLL, &readData);
      __dmb(1u);
      *a4++ = HIWORD(readData);
      if (!--v11)
      {
        return 0;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t e1000_write_nvm_spi(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a1 + 1232);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v6 == 0 || !v5)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a3 && v6 >= a3)
  {
    v11 = 0;
    v12 = a2 + 1;
    while (1)
    {
      result = (*(a1 + 1152))(a1);
      if (result)
      {
        break;
      }

      if (e1000_ready_nvm_eeprom(a1))
      {
        (*(a1 + 1168))(a1);
        return 0xFFFFFFFFLL;
      }

      e1000_standby_nvm(a1);
      e1000_shift_out_eec_bits(a1, 6, *(a1 + 1238));
      e1000_standby_nvm(a1);
      if (*(a1 + 1236) == 8 && a2 > 0x7F)
      {
        v14 = 10;
      }

      else
      {
        v14 = 2;
      }

      e1000_shift_out_eec_bits(a1, v14, *(a1 + 1238));
      e1000_shift_out_eec_bits(a1, 2 * ((v11 + a2) & 0x7FFF), *(a1 + 1236));
      v15 = v11;
      if (v11 <= a3)
      {
        v16 = a3;
      }

      else
      {
        v16 = v11;
      }

      v17 = 2 * (v12 + v11);
      while (v16 != v15)
      {
        e1000_shift_out_eec_bits(a1, bswap32(*(a4 + 2 * v15++)) >> 16, 16);
        v18 = v17 % *(a1 + 1240);
        v17 += 2;
        if (!v18)
        {
          e1000_standby_nvm(a1);
          LOWORD(v16) = v15;
          break;
        }
      }

      IODelay(0x2710uLL);
      (*(a1 + 1168))(a1);
      v11 = v16;
      if (a3 <= v16)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t e1000_write_nvm_microwire(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 1232);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v6 == 0 || !v5)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0xFFFFFFFFLL;
  if (a3)
  {
    if (v6 >= a3)
    {
      v9 = a2;
      v11 = (*(a1 + 1152))();
      if (!v11)
      {
        if (e1000_ready_nvm_eeprom(a1))
        {
LABEL_7:
          v11 = 0xFFFFFFFFLL;
        }

        else
        {
          e1000_shift_out_eec_bits(a1, 19, *(a1 + 1238) + 2);
          e1000_shift_out_eec_bits(a1, 0, *(a1 + 1236) - 2);
          e1000_standby_nvm(a1);
          v13 = 0;
          do
          {
            e1000_shift_out_eec_bits(a1, 5, *(a1 + 1238));
            e1000_shift_out_eec_bits(a1, (v13 + v9), *(a1 + 1236));
            e1000_shift_out_eec_bits(a1, *(a4 + 2 * v13), 16);
            e1000_standby_nvm(a1);
            v14 = 0;
            while (1)
            {
              readData = 0;
              IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
              __dmb(1u);
              if ((readData & 8) != 0)
              {
                break;
              }

              IODelay(0x32uLL);
              v5 = v14++ >= 0xC7;
              if (v5)
              {
                goto LABEL_7;
              }
            }

            e1000_standby_nvm(a1);
            ++v13;
          }

          while (v13 != a3);
          e1000_shift_out_eec_bits(a1, 16, *(a1 + 1238) + 2);
          e1000_shift_out_eec_bits(a1, 0, *(a1 + 1236) - 2);
          v11 = 0;
        }

        (*(a1 + 1168))(a1);
      }
    }
  }

  return v11;
}

uint64_t e1000_read_pba_string_generic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((*(a1 + 284) & 0xFFFFFFFE) == 0x22 && !e1000_get_flash_presence_i210(a1))
  {
    return 4294967278;
  }

  if (!a2)
  {
    return 4294967280;
  }

  v15 = 0;
  v14 = 0;
  result = (*(a1 + 1160))(a1, 8, 1, &v15 + 2);
  if (!result)
  {
    result = (*(a1 + 1160))(a1, 9, 1, &v15);
    if (!result)
    {
      v7 = HIWORD(v15);
      if (HIWORD(v15) == 64250)
      {
        result = (*(a1 + 1160))(a1, v15, 1, &v14);
        if (!result)
        {
          if ((v14 + 1) < 2u)
          {
            return 4294967278;
          }

          if (2 * v14 - 1 <= a3)
          {
            LOWORD(v15) = v15 + 1;
            if (--v14)
            {
              v12 = 0;
              v13 = 0;
              while (1)
              {
                result = (*(a1 + 1160))(a1, (v15 + v13), 1, &v15 + 2);
                if (result)
                {
                  break;
                }

                *(a2 + v12) = bswap32(HIWORD(v15)) >> 16;
                ++v13;
                v12 += 2;
                if (v13 >= v14)
                {
                  goto LABEL_30;
                }
              }
            }

            else
            {
              v12 = 0;
LABEL_30:
              result = 0;
              *(a2 + v12) = 0;
            }
          }

          else
          {
            return 4294967279;
          }
        }

        return result;
      }

      if (a3 < 0xB)
      {
        return 17;
      }

      v8 = 0;
      *a2 = HIWORD(v15) >> 12;
      *(a2 + 1) = HIBYTE(v7) & 0xF;
      *(a2 + 2) = v7 >> 4;
      *(a2 + 3) = v7 & 0xF;
      v9 = v15;
      *(a2 + 4) = v15 >> 12;
      *(a2 + 5) = HIBYTE(v9) & 0xF;
      *(a2 + 6) = 45;
      *(a2 + 8) = v9 >> 4;
      *(a2 + 9) = v9 & 0xF;
      while (1)
      {
        v10 = *(a2 + v8);
        if (v10 <= 9)
        {
          break;
        }

        if (v10 <= 0xF)
        {
          v11 = v10 + 55;
          goto LABEL_19;
        }

LABEL_20:
        result = 0;
        if (++v8 == 10)
        {
          return result;
        }
      }

      v11 = v10 | 0x30;
LABEL_19:
      *(a2 + v8) = v11;
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t e1000_read_pba_length_generic(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 4294967280;
  }

  v7 = 0;
  v6 = 0;
  result = (*(a1 + 1160))(a1, 8, 1, &v7 + 2);
  if (!result)
  {
    result = (*(a1 + 1160))(a1, 9, 1, &v7);
    if (!result)
    {
      if (SHIWORD(v7) == -1286)
      {
        result = (*(a1 + 1160))(a1, v7, 1, &v6);
        if (result)
        {
          return result;
        }

        if ((v6 + 1) < 2u)
        {
          return 4294967278;
        }

        v5 = 2 * v6 - 1;
      }

      else
      {
        v5 = 11;
      }

      result = 0;
      *a2 = v5;
    }
  }

  return result;
}

uint64_t e1000_read_pba_num_generic(uint64_t a1, _DWORD *a2)
{
  v5 = 0;
  result = (*(a1 + 1160))(a1, 8, 1, &v5);
  if (!result)
  {
    if (v5 == 64250)
    {
      return 4294967282;
    }

    else
    {
      *a2 = v5 << 16;
      result = (*(a1 + 1160))(a1, 9, 1, &v5);
      if (!result)
      {
        *a2 |= v5;
      }
    }
  }

  return result;
}

uint64_t e1000_read_pba_raw(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned __int16 *a5)
{
  if (!a5)
  {
    return 4294967292;
  }

  if (a2)
  {
    if (a3 < 0xA)
    {
      return 4294967292;
    }

    v10 = *(a2 + 16);
    *a5 = v10;
    a5[1] = *(a2 + 18);
  }

  else
  {
    result = e1000_read_nvm(a1);
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
      v13 = 0;
      result = e1000_get_pba_block_size(a1, a2, a3, &v13);
      if (result)
      {
        return result;
      }

      if (v13 <= a4)
      {
        if (!a2)
        {
          v12 = *(a5 + 1);
          result = e1000_read_nvm(a1);
          if (result)
          {
            return result;
          }

          return 0;
        }

        if (a5[1] + v13 < a3)
        {
          memcpy(*(a5 + 1), (a2 + 2 * a5[1]), 2 * v13);
          return 0;
        }
      }
    }

    return 4294967292;
  }

  return 0;
}

uint64_t e1000_get_pba_block_size(uint64_t a1, uint64_t a2, unsigned int a3, _WORD *a4)
{
  if (a2)
  {
    if (a3 <= 9)
    {
      return 4294967292;
    }

    if (*(a2 + 16) == -1286)
    {
      if (*(a2 + 18) < a3)
      {
        v5 = (a2 + 2 * *(a2 + 18));
        goto LABEL_10;
      }

      return 4294967292;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v9[0] = 0;
  result = e1000_read_nvm(a1);
  if (result)
  {
    return result;
  }

  if (v9[1] != -1286)
  {
    goto LABEL_12;
  }

  v5 = v9;
  result = e1000_read_nvm(a1);
  if (result)
  {
    return result;
  }

LABEL_10:
  v8 = *v5;
  if ((*v5 + 1) < 2u)
  {
    return 4294967278;
  }

LABEL_13:
  result = 0;
  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t e1000_write_pba_raw(uint64_t a1, uint64_t a2, unsigned int a3, __int16 *a4)
{
  if (!a4)
  {
    return 4294967292;
  }

  if (a2)
  {
    if (a3 < 0xA)
    {
      return 4294967292;
    }

    *(a2 + 16) = *a4;
    *(a2 + 18) = a4[1];
  }

  else
  {
    result = e1000_write_nvm(a1);
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
        v11 = *v9;
        result = e1000_write_nvm(a1);
        if (result)
        {
          return result;
        }

        return 0;
      }

      v10 = *v9;
      if (v10 + a4[1] < a3)
      {
        memcpy((a2 + 2 * a4[1]), *(a4 + 1), 2 * v10);
        return 0;
      }
    }

    return 4294967292;
  }

  return 0;
}

uint64_t e1000_read_mac_addr_generic(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5404uLL, &readData);
  __dmb(1u);
  v2 = readData;
  v6 = 0;
  if (*(a1 + 284) <= 1)
  {
    v3 = 64;
  }

  else
  {
    v3 = 21504;
  }

  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v3, &v6);
  __dmb(1u);
  v4 = vld1q_dup_f32(&v6);
  *v4.i8 = vmovn_s32(vshlq_u32(v4, xmmword_100033020));
  v4.i32[0] = vuzp1_s8(*v4.i8, *v4.i8).u32[0];
  *(a1 + 278) = v4.i32[0];
  *(a1 + 282) = v2;
  *(a1 + 276) = *(a1 + 282);
  *(a1 + 272) = v4.i32[0];
  return 0;
}

uint64_t e1000_validate_nvm_checksum_generic(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v6 = 0;
  while (1)
  {
    v4 = v2;
    result = (*(a1 + 1160))(a1, v2, 1, &v6);
    if (result)
    {
      break;
    }

    v3 += v6;
    ++v2;
    if (v4 >= 0x3F)
    {
      if (v3 == 47802)
      {
        return 0;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t e1000_update_nvm_checksum_generic(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v6 = 0;
  while (1)
  {
    v4 = v3;
    result = (*(a1 + 1160))(a1, v3, 1, &v6);
    if (result)
    {
      break;
    }

    v2 += v6;
    ++v3;
    if (v4 >= 0x3E)
    {
      v7 = -17734 - v2;
      return (*(a1 + 1208))(a1, 63, 1, &v7);
    }
  }

  return result;
}

uint64_t DriverKit_AppleEthernetE1000_IVars::drain(uint64_t result, uint64_t a2)
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

      result = (*(**(v5 + 10560) + 64))(*(v5 + 10560), v9);
      v8 = *(a2 + 132);
      v3 = (*(a2 + 128) + 1) & v6;
      *(a2 + 128) = v3;
    }

    while (v3 != v8);
  }

  return result;
}

uint64_t e1000_acquire_phy_base(uint64_t a1)
{
  v1 = *(a1 + 1260);
  if (v1 >= 4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0x40002000040002uLL >> (16 * v1);
  }

  return (*(a1 + 256))(a1, v2 & 0x3FFFE);
}

uint64_t e1000_release_phy_base(uint64_t a1)
{
  v1 = *(a1 + 1260);
  if (v1 >= 4)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0x40002000040002uLL >> (16 * v1);
  }

  return (*(a1 + 264))(a1, v2 & 0x3FFFE);
}

uint64_t e1000_init_hw_base(uint64_t a1)
{
  e1000_init_rx_addrs_generic(a1, *(a1 + 844));
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

  if (*(a1 + 328))
  {
    v6 = 0;
    v7 = 40960;
    do
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v7, 0);
      ++v6;
      v7 += 4;
    }

    while (v6 < *(a1 + 328));
  }

  v8 = (*(a1 + 192))(a1);
  e1000_clear_hw_cntrs_base_generic(a1);
  return v8;
}

void e1000_power_down_phy_copper_base(uint64_t a1)
{
  if (*(a1 + 920) && !e1000_enable_mng_pass_thru(a1) && !(*(a1 + 920))(a1))
  {

    e1000_power_down_phy_copper(a1);
  }
}

void e1000_rx_fifo_flush_base(uint64_t a1)
{
  readData[0] = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5008uLL, readData);
  __dmb(1u);
  v2 = readData[0] | 0x10000;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5008uLL, v2);
  if (*(a1 + 284) == 29)
  {
    readData[0] = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5820uLL, readData);
    __dmb(1u);
    if ((readData[0] & 0x20000) != 0)
    {
      v3 = 0;
      v4 = 10280;
      do
      {
        v15 = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v4, &v15);
        __dmb(1u);
        v5 = v15;
        readData[v3] = v15;
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v4, v5 & 0xFDFFFFFF);
        v4 += 256;
        ++v3;
      }

      while (v3 != 4);
      for (i = 0; i != 10; ++i)
      {
        IODelay(0x3E8uLL);
        v7 = 0;
        v8 = 4;
        v9 = 10280;
        do
        {
          v15 = 0;
          IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v9, &v15);
          __dmb(1u);
          v7 |= v15;
          v9 += 256;
          --v8;
        }

        while (v8);
        if ((v7 & 0x2000000) == 0)
        {
          break;
        }
      }

      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5008uLL, v2 & 0xFFFBFFFF);
      v15 = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5004uLL, &v15);
      __dmb(1u);
      v10 = v15;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5004uLL, 0);
      v15 = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x100uLL, &v15);
      __dmb(1u);
      v11 = v15;
      v12 = v15 & 0xFFFFFFD9;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x100uLL, v12 | 0x20);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x100uLL, v12 | 0x22);
      v15 = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v15);
      __dmb(1u);
      IODelay(0x7D0uLL);
      v13 = 0;
      v14 = 10280;
      do
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v14, readData[v13]);
        v14 += 256;
        ++v13;
      }

      while (v13 != 4);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x100uLL, v11);
      v15 = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v15);
      __dmb(1u);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5004uLL, v10);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5008uLL, v2);
      v15 = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40ACuLL, &v15);
      __dmb(1u);
      v15 = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40A0uLL, &v15);
      __dmb(1u);
      v15 = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4010uLL, &v15);
      __dmb(1u);
    }
  }
}

void *e1000_init_function_pointers_82543(void *result)
{
  result[5] = e1000_init_mac_params_82543;
  result[143] = e1000_init_nvm_params_82543;
  result[111] = e1000_init_phy_params_82543;
  return result;
}

uint64_t e1000_init_mac_params_82543(uint64_t a1)
{
  if ((*(a1 + 9584) | 8) == 0x1009)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  v2 = (*(a1 + 9584) | 8) != 4105;
  v3 = (*(a1 + 9584) | 8) == 4105;
  *(a1 + 1116) = v1;
  *(a1 + 326) = 128;
  *(a1 + 844) = 15;
  *(a1 + 104) = e1000_get_bus_info_pci_generic;
  *(a1 + 112) = e1000_set_lan_id_multi_port_pci;
  *(a1 + 152) = e1000_reset_hw_82543;
  *(a1 + 160) = e1000_init_hw_82543;
  *(a1 + 192) = e1000_setup_link_82543;
  v4 = !v2;
  v5 = e1000_setup_fiber_link_82543;
  if (!v4)
  {
    v5 = e1000_setup_copper_link_82543;
  }

  *(a1 + 200) = v5;
  v6 = e1000_check_for_fiber_link_82543;
  if (!v4)
  {
    v6 = e1000_check_for_copper_link_82543;
  }

  *(a1 + 72) = v6;
  v7 = e1000_get_speed_and_duplex_fiber_serdes_generic;
  if (!v4)
  {
    v7 = e1000_get_speed_and_duplex_copper_generic;
  }

  *(a1 + 144) = e1000_update_mc_addr_list_generic;
  *(a1 + 216) = e1000_write_vfta_82543;
  *(a1 + 96) = e1000_clear_vfta_generic;
  *(a1 + 120) = v7;
  *(a1 + 128) = e1000_led_on_82543;
  *(a1 + 136) = e1000_led_off_82543;
  *(a1 + 88) = e1000_clear_hw_cntrs_82543;
  if (*(a1 + 284) == 2 && v3)
  {
    *(a1 + 1376) &= ~1u;
  }

  return 0;
}

uint64_t e1000_init_nvm_params_82543(uint64_t a1)
{
  *(a1 + 1216) = 3;
  *(a1 + 1232) = 0x3000600320040;
  *(a1 + 1160) = e1000_read_nvm_microwire;
  *(a1 + 1184) = e1000_update_nvm_checksum_generic;
  *(a1 + 1192) = e1000_valid_led_default_generic;
  *(a1 + 1200) = e1000_validate_nvm_checksum_generic;
  *(a1 + 1208) = e1000_write_nvm_microwire;
  return 0;
}

uint64_t e1000_init_phy_params_82543(uint64_t a1)
{
  if (*(a1 + 1116) == 1)
  {
    *(a1 + 1056) = e1000_power_up_phy_copper;
    *(a1 + 1064) = e1000_power_down_phy_copper;
    *(a1 + 1100) = 1;
    *(a1 + 1122) = 47;
    *(a1 + 1108) = 10000;
    *(a1 + 1072) = 2;
    *(a1 + 912) = e1000_check_polarity_m88;
    *(a1 + 928) = e1000_phy_sw_reset_generic;
    *(a1 + 936) = e1000_phy_force_speed_duplex_82543;
    *(a1 + 952) = e1000_get_cable_length_m88;
    *(a1 + 944) = e1000_get_cfg_done_generic;
    v2 = *(a1 + 284);
    v3 = e1000_read_phy_reg_m88;
    v4 = v2 == 2;
    if (v2 == 2)
    {
      v3 = e1000_read_phy_reg_82543;
    }

    *(a1 + 976) = v3;
    if (v2 == 2)
    {
      v5 = e1000_phy_hw_reset_82543;
    }

    else
    {
      v5 = e1000_phy_hw_reset_generic;
    }

    *(a1 + 1008) = v5;
    v6 = e1000_write_phy_reg_m88;
    if (v4)
    {
      v6 = e1000_write_phy_reg_82543;
    }

    *(a1 + 1032) = v6;
    *(a1 + 960) = e1000_get_phy_info_m88;
    if (!v4 || (*(a1 + 1381) & 1) == 0)
    {
      result = v5(a1);
      if (result)
      {
        return result;
      }

      IODelay(0x4E20uLL);
    }

    result = e1000_get_phy_id(a1);
    if (!result)
    {
      v8 = *(a1 + 284);
      result = 4294967294;
      if (v8 == 3)
      {
        if (*(a1 + 1104) == 21040176)
        {
          return 0;
        }

        else
        {
          return 4294967294;
        }
      }

      else if (v8 == 2)
      {
        if (*(a1 + 1104) == 21040208)
        {
          return 0;
        }

        else
        {
          return 4294967294;
        }
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

uint64_t e1000_set_tbi_compatibility_82543(uint64_t result, int a2)
{
  if (*(result + 284) == 2)
  {
    *(result + 1376) = *(result + 1376) & 0xFFFFFFFE | a2;
  }

  return result;
}

uint64_t e1000_tbi_sbp_enabled_82543(uint64_t a1)
{
  if (*(a1 + 284) == 2)
  {
    return (*(a1 + 1376) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_tbi_adjust_stats_82543(uint64_t result, void *a2, int a3, unsigned __int8 *a4, int a5)
{
  if (*(result + 284) == 2 && (*(result + 1376) & 2) != 0)
  {
    v5 = (a3 - 1);
    --*a2;
    ++a2[26];
    a2[30] += v5;
    v6 = *a4;
    if (v6 == 255)
    {
      if (a4[1] == 255)
      {
        v7 = 27;
LABEL_8:
        ++a2[v7];
LABEL_9:
        if (v5 == a5)
        {
          v8 = a2[35];
          if (v8)
          {
            a2[35] = v8 - 1;
          }
        }

        if (a3 > 511)
        {
          switch(a3)
          {
            case 512:
              v9 = 24;
              v10 = 23;
              break;
            case 1024:
              v9 = 25;
              v10 = 24;
              break;
            case 1523:
              v11 = 1;
              v9 = 25;
              goto LABEL_26;
            default:
              return result;
          }
        }

        else
        {
          switch(a3)
          {
            case 65:
              v9 = 21;
              v10 = 20;
              break;
            case 128:
              v9 = 22;
              v10 = 21;
              break;
            case 256:
              v9 = 23;
              v10 = 22;
              break;
            default:
              return result;
          }
        }

        ++a2[v10];
        v11 = -1;
LABEL_26:
        a2[v9] += v11;
        return result;
      }
    }

    else if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }

    v7 = 28;
    goto LABEL_8;
  }

  return result;
}

uint64_t e1000_reset_hw_82543(uint64_t a1)
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
  *(a1 + 1376) &= ~2u;
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
  return 0;
}

uint64_t e1000_init_hw_82543(uint64_t a1)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x38uLL, 0);
  (*(a1 + 96))(a1);
  e1000_init_rx_addrs_generic(a1, *(a1 + 844));
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
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
      __dmb(1u);
      ++v2;
      v4 += 4;
      v3 -= 16;
    }

    while (v2 < *(a1 + 326));
  }

  if (*(a1 + 284) == 2 && *(a1 + 1380) == 1)
  {
    v9 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &v9);
    __dmb(1u);
    v6 = v9;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v6 | 4);
  }

  e1000_pcix_mmrbc_workaround_generic(a1);
  v7 = (*(a1 + 192))(a1);
  e1000_clear_hw_cntrs_82543(a1);
  return v7;
}

uint64_t e1000_setup_link_82543(uint64_t a1)
{
  v4 = 0;
  if (*(a1 + 284) == 2)
  {
    if ((*(a1 + 1160))(a1, 15, 1, &v4))
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 16 * v4;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v3 & 0xF00);
  }

  return e1000_setup_link_generic(a1);
}

uint64_t e1000_setup_copper_link_82543(uint64_t a1)
{
  v5 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData;
  if (*(a1 + 284) == 2)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x1840);
    result = (*(a1 + 1008))(a1);
    if (result)
    {
      return result;
    }

    *(a1 + 1134) = 0;
  }

  else
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 & 0xFFFFE7BF | 0x40);
  }

  result = e1000_copper_link_setup_m88(a1);
  if (!result)
  {
    if (*(a1 + 851) == 1)
    {
      result = e1000_copper_link_autoneg(a1);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = e1000_phy_force_speed_duplex_82543(a1);
      if (result)
      {
        return result;
      }
    }

    result = e1000_phy_has_link_generic(a1, 0xAu, 0xAu, &v5);
    if (!result)
    {
      if (!v5)
      {
        return 0;
      }

      if (*(a1 + 284) == 3)
      {
        (*(a1 + 224))(a1);
        return e1000_config_fc_after_link_up_generic(a1);
      }

      result = e1000_config_mac_to_phy_82543(a1);
      if (!result)
      {
        return e1000_config_fc_after_link_up_generic(a1);
      }
    }
  }

  return result;
}

uint64_t e1000_setup_fiber_link_82543(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData;
  (*(a1 + 224))(a1);
  result = e1000_commit_fc_settings_generic(a1);
  if (!result)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 & 0xFFFFFFF7);
    v5 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v5);
    __dmb(1u);
    IODelay(0x3E8uLL);
    v4 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &v4);
    result = 0;
    __dmb(1u);
    if ((v4 & 0x80000) == 0)
    {
      return e1000_poll_fiber_serdes_link_generic(a1);
    }
  }

  return result;
}

uint64_t e1000_check_for_copper_link_82543(uint64_t a1)
{
  if (*(a1 + 853) != 1)
  {
    return 0;
  }

  v17 = v1;
  v18 = v2;
  v16 = 0;
  v15 = 0;
  result = e1000_phy_has_link_generic(a1, 1u, 0, &v15);
  if (result)
  {
    return result;
  }

  if (!v15)
  {
    return 0;
  }

  *(a1 + 853) = 0;
  e1000_check_downshift_generic(a1);
  if (*(a1 + 851))
  {
    if (*(a1 + 284) == 3)
    {
      (*(a1 + 224))(a1);
    }

    else
    {
      result = e1000_config_mac_to_phy_82543(a1);
      if (result)
      {
        return result;
      }
    }

    result = e1000_config_fc_after_link_up_generic(a1);
    if (*(a1 + 284) == 2 && (*(a1 + 1376) & 1) != 0)
    {
      result = (*(a1 + 120))(a1, &v16 + 2, &v16);
      if (!result)
      {
        v6 = *(a1 + 284);
        if (HIWORD(v16) == 1000)
        {
          v7 = *(a1 + 1376);
          if (v6 != 2)
          {
            goto LABEL_23;
          }

          if ((v7 & 2) != 0)
          {
            return 0;
          }

          if (v7)
          {
            v8 = v7 | 2;
          }

          else
          {
LABEL_23:
            v8 = v7 & 0xFFFFFFFD;
          }

          *(a1 + 1376) = v8;
          readData = 0;
          IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x100uLL, &readData);
          __dmb(1u);
          v13 = readData;
          __dmb(2u);
          v11 = *(a1 + 16);
          v12 = v13 | 4;
        }

        else
        {
          if (v6 != 2)
          {
            return 0;
          }

          v9 = *(a1 + 1376);
          if ((v9 & 2) == 0)
          {
            return 0;
          }

          *(a1 + 1376) = v9 & 0xFFFFFFFD;
          readData = 0;
          IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x100uLL, &readData);
          __dmb(1u);
          v10 = readData;
          __dmb(2u);
          v11 = *(a1 + 16);
          v12 = v10 & 0xFFFFFFFB;
        }

        IOPCIDevice::MemoryWrite32(v11, 0, 0x100uLL, v12);
        return 0;
      }
    }
  }

  else
  {
    if ((*(a1 + 846) & 3) != 0)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD8uLL, 0xFFFFFFFF);
      e1000_polarity_reversal_workaround_82543(a1);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xC0uLL, &readData);
      __dmb(1u);
      v5 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xC8uLL, v5 & 0xFFFFFFFB);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD0uLL, 0x9Du);
    }

    return 4294967293;
  }

  return result;
}

uint64_t e1000_check_for_fiber_link_82543(uint64_t a1)
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
  v4 = readData & 0x20000000;
  if ((v2 & 0x80000) == 0 && ((v3 & 2) == 0 ? (v5 = v4 == 0) : (v5 = 0), v5))
  {
    if (*(a1 + 852))
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x178uLL, *(a1 + 312) & 0x7FFFFFFF);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
      __dmb(1u);
      v6 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v6 | 0x41);
      return e1000_config_fc_after_link_up_generic(a1);
    }

    else
    {
      result = 0;
      *(a1 + 852) = 1;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 0x40) != 0)
    {
      if (v4)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x178uLL, *(a1 + 312));
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 & 0xFFFFFFBF);
        result = 0;
        *(a1 + 860) = 1;
      }
    }
  }

  return result;
}

void e1000_write_vfta_82543(uint64_t a1, int a2, uint32_t data)
{
  if ((a2 & 1) != 0 && *(a1 + 284) == 3)
  {
    readData = 0;
    v5 = 4 * a2;
    v6 = (4 * a2 + 22012);
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v6, &readData);
    __dmb(1u);
    v7 = readData;
    __dmb(2u);
    if (v5 > -11745)
    {
      if (v5 == -11744)
      {
        v8 = *(a1 + 284) <= 1;
        v9 = 264;
        v10 = 10272;
        goto LABEL_22;
      }

      if (v5 == -512)
      {
        v8 = *(a1 + 284) <= 1;
        v9 = 64;
        v10 = 21504;
        goto LABEL_22;
      }
    }

    else
    {
      if (v5 == -11776)
      {
        v8 = *(a1 + 284) <= 1;
        v9 = 272;
        v10 = 10240;
        goto LABEL_22;
      }

      if (v5 == -11772)
      {
        v8 = *(a1 + 284) <= 1;
        v9 = 276;
        v10 = 10244;
        goto LABEL_22;
      }
    }

    v9 = v5 + 22016;
    if (v5 <= -11505)
    {
      if (v5 > -11761)
      {
        if (v5 <= -11521)
        {
          if (v5 == -11760)
          {
            v8 = *(a1 + 284) <= 1;
            v9 = 288;
            v10 = 10256;
          }

          else
          {
            if (v5 != -11752)
            {
              goto LABEL_24;
            }

            v8 = *(a1 + 284) <= 1;
            v9 = 296;
            v10 = 10264;
          }
        }

        else
        {
          switch(v5)
          {
            case -11520:
              v8 = *(a1 + 284) <= 1;
              v9 = 312;
              v10 = 10496;
              break;
            case -11516:
              v8 = *(a1 + 284) <= 1;
              v9 = 316;
              v10 = 10500;
              break;
            case -11512:
              v8 = *(a1 + 284) <= 1;
              v9 = 320;
              v10 = 10504;
              break;
            default:
              goto LABEL_24;
          }
        }
      }

      else if (v5 <= -12785)
      {
        if (v5 == -13472)
        {
          v8 = *(a1 + 284) <= 1;
          v9 = 360;
          v10 = 8544;
        }

        else
        {
          if (v5 != -13464)
          {
            goto LABEL_24;
          }

          v8 = *(a1 + 284) <= 1;
          v9 = 352;
          v10 = 8552;
        }
      }

      else
      {
        switch(v5)
        {
          case -12784:
            v8 = *(a1 + 284) <= 1;
            v9 = 0x8000;
            v10 = 9232;
            break;
          case -12776:
            v8 = *(a1 + 284) <= 1;
            v9 = 32776;
            v10 = 9240;
            break;
          case -11768:
            v8 = *(a1 + 284) <= 1;
            v9 = 280;
            v10 = 10248;
            break;
          default:
            goto LABEL_24;
        }
      }
    }

    else if (v5 <= -7677)
    {
      if (v5 <= -8689)
      {
        if (v5 == -11504)
        {
          v8 = *(a1 + 284) <= 1;
          v9 = 328;
          v10 = 10512;
        }

        else
        {
          if (v5 != -11496)
          {
            goto LABEL_24;
          }

          v8 = *(a1 + 284) <= 1;
          v9 = 336;
          v10 = 10520;
        }
      }

      else
      {
        switch(v5)
        {
          case -8688:
            v8 = *(a1 + 284) <= 1;
            v9 = 32784;
            v10 = 13328;
            break;
          case -8680:
            v8 = *(a1 + 284) <= 1;
            v9 = 32792;
            v10 = 13336;
            break;
          case -7680:
            v8 = *(a1 + 284) <= 1;
            v9 = 1056;
            v10 = 14336;
            break;
          default:
            goto LABEL_24;
        }
      }
    }

    else if (v5 > -7657)
    {
      switch(v5)
      {
        case -7656:
          v8 = *(a1 + 284) <= 1;
          v9 = 1080;
          v10 = 14360;
          break;
        case -7648:
          v8 = *(a1 + 284) <= 1;
          v9 = 1088;
          v10 = 14368;
          break;
        case -1024:
          v8 = *(a1 + 284) <= 1;
          v9 = 512;
          v10 = 20992;
          break;
        default:
          goto LABEL_24;
      }
    }

    else
    {
      switch(v5)
      {
        case -7676:
          v8 = *(a1 + 284) <= 1;
          v9 = 1060;
          v10 = 14340;
          break;
        case -7672:
          v8 = *(a1 + 284) <= 1;
          v9 = 1064;
          v10 = 14344;
          break;
        case -7664:
          v8 = *(a1 + 284) <= 1;
          v9 = 1072;
          v10 = 14352;
          break;
        default:
          goto LABEL_24;
      }
    }

LABEL_22:
    if (!v8)
    {
      v9 = v10;
    }

LABEL_24:
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v9, data);
    v15 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v15);
    __dmb(1u);
    __dmb(2u);
    if (v6 == 21504)
    {
      if (*(a1 + 284) <= 1)
      {
        LODWORD(v6) = 64;
      }

      else
      {
        LODWORD(v6) = 21504;
      }

      goto LABEL_118;
    }

    if (v5 <= -11509)
    {
      if (v5 > -11765)
      {
        if (v5 > -11741)
        {
          switch(v5)
          {
            case -11740:
              v11 = *(a1 + 284) <= 1;
              v12 = 264;
              v13 = 10272;
              break;
            case -11516:
              v11 = *(a1 + 284) <= 1;
              v12 = 312;
              v13 = 10496;
              break;
            case -11512:
              v11 = *(a1 + 284) <= 1;
              v12 = 316;
              v13 = 10500;
              break;
            default:
              goto LABEL_118;
          }
        }

        else
        {
          switch(v5)
          {
            case -11764:
              v11 = *(a1 + 284) <= 1;
              v12 = 280;
              v13 = 10248;
              break;
            case -11756:
              v11 = *(a1 + 284) <= 1;
              v12 = 288;
              v13 = 10256;
              break;
            case -11748:
              v11 = *(a1 + 284) <= 1;
              v12 = 296;
              v13 = 10264;
              break;
            default:
              goto LABEL_118;
          }
        }
      }

      else if (v5 > -12773)
      {
        switch(v5)
        {
          case -12772:
            v11 = *(a1 + 284) <= 1;
            v12 = 32776;
            v13 = 9240;
            break;
          case -11772:
            v11 = *(a1 + 284) <= 1;
            v12 = 272;
            v13 = 10240;
            break;
          case -11768:
            v11 = *(a1 + 284) <= 1;
            v12 = 276;
            v13 = 10244;
            break;
          default:
            goto LABEL_118;
        }
      }

      else
      {
        switch(v5)
        {
          case -13468:
            v11 = *(a1 + 284) <= 1;
            v12 = 360;
            v13 = 8544;
            break;
          case -13460:
            v11 = *(a1 + 284) <= 1;
            v12 = 352;
            v13 = 8552;
            break;
          case -12780:
            v11 = *(a1 + 284) <= 1;
            v12 = 0x8000;
            v13 = 9232;
            break;
          default:
            goto LABEL_118;
        }
      }
    }

    else if (v5 <= -7673)
    {
      if (v5 > -8685)
      {
        switch(v5)
        {
          case -8684:
            v11 = *(a1 + 284) <= 1;
            v12 = 32784;
            v13 = 13328;
            break;
          case -8676:
            v11 = *(a1 + 284) <= 1;
            v12 = 32792;
            v13 = 13336;
            break;
          case -7676:
            v11 = *(a1 + 284) <= 1;
            v12 = 1056;
            v13 = 14336;
            break;
          default:
            goto LABEL_118;
        }
      }

      else
      {
        switch(v5)
        {
          case -11508:
            v11 = *(a1 + 284) <= 1;
            v12 = 320;
            v13 = 10504;
            break;
          case -11500:
            v11 = *(a1 + 284) <= 1;
            v12 = 328;
            v13 = 10512;
            break;
          case -11492:
            v11 = *(a1 + 284) <= 1;
            v12 = 336;
            v13 = 10520;
            break;
          default:
            goto LABEL_118;
        }
      }
    }

    else if (v5 <= -7653)
    {
      switch(v5)
      {
        case -7672:
          v11 = *(a1 + 284) <= 1;
          v12 = 1060;
          v13 = 14340;
          break;
        case -7668:
          v11 = *(a1 + 284) <= 1;
          v12 = 1064;
          v13 = 14344;
          break;
        case -7660:
          v11 = *(a1 + 284) <= 1;
          v12 = 1072;
          v13 = 14352;
          break;
        default:
          goto LABEL_118;
      }
    }

    else if (v5 > -1021)
    {
      if (v5 == -1020)
      {
        v11 = *(a1 + 284) <= 1;
        v12 = 512;
        v13 = 20992;
      }

      else
      {
        if (v5 != 4)
        {
          goto LABEL_118;
        }

        v11 = *(a1 + 284) <= 1;
        v12 = 1536;
        v13 = 22016;
      }
    }

    else
    {
      if (v5 != -7652)
      {
        if (v5 == -7644)
        {
          v11 = *(a1 + 284) <= 1;
          v12 = 1088;
          v13 = 14368;
          goto LABEL_115;
        }

LABEL_118:
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v6, v7);
        v14 = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v14);
        __dmb(1u);
        return;
      }

      v11 = *(a1 + 284) <= 1;
      v12 = 1080;
      v13 = 14360;
    }

LABEL_115:
    if (v11)
    {
      LODWORD(v6) = v12;
    }

    else
    {
      LODWORD(v6) = v13;
    }

    goto LABEL_118;
  }

  e1000_write_vfta_generic(a1, a2, data);
}

uint64_t e1000_led_on_82543(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  if (*(a1 + 284) == 3 && *(a1 + 1116) == 1)
  {
    v2 = readData & 0xFFBBFFFF | 0x400000;
  }

  else
  {
    v2 = readData | 0x440000;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2);
  return 0;
}

uint64_t e1000_led_off_82543(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  if (*(a1 + 284) == 3 && *(a1 + 1116) == 1)
  {
    v2 = readData | 0x440000;
  }

  else
  {
    v2 = readData & 0xFFBBFFFF | 0x400000;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2);
  return 0;
}

void e1000_clear_hw_cntrs_82543(uint64_t a1)
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
}

uint64_t e1000_phy_force_speed_duplex_82543(uint64_t a1)
{
  result = e1000_phy_force_speed_duplex_m88(a1);
  if (!result)
  {
    if ((*(a1 + 851) & 1) != 0 || (*(a1 + 846) & 3) == 0)
    {
      return 0;
    }

    else
    {

      return e1000_polarity_reversal_workaround_82543(a1);
    }
  }

  return result;
}

uint64_t e1000_config_mac_to_phy_82543(uint64_t a1)
{
  if (!*(a1 + 976))
  {
    return 0;
  }

  v10 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData;
  result = (*(a1 + 976))(a1, 17, &v10);
  if (!result)
  {
    if ((v10 & 0x2000) != 0)
    {
      v4 = 6145;
    }

    else
    {
      v4 = 6144;
    }

    v5 = v4 | v2 & 0xFFFFE47E;
    (*(a1 + 224))(a1);
    v6 = v10 & 0xC000;
    v7 = v5 | 0x200;
    if (v6 != 0x8000)
    {
      v7 = v5;
    }

    if (v6 == 0x4000)
    {
      v8 = v5 | 0x100;
    }

    else
    {
      v8 = v7;
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v8);
    return 0;
  }

  return result;
}

uint64_t e1000_polarity_reversal_workaround_82543(uint64_t a1)
{
  v1 = *(a1 + 1032);
  if (!v1)
  {
    return 0;
  }

  result = v1();
  if (!result)
  {
    result = (*(a1 + 1032))(a1, 30, 0xFFFFLL);
    if (!result)
    {
      result = (*(a1 + 1032))(a1, 29, 0);
      if (!result)
      {
        v6 = 0;
        v5 = 0;
        v4 = 20;
        while (1)
        {
          result = (*(a1 + 976))(a1, 1, &v6);
          if (result)
          {
            break;
          }

          result = (*(a1 + 976))(a1, 1, &v6);
          if (result)
          {
            break;
          }

          if ((v6 & 0xFFFB) != 0)
          {
            IODelay(0x186A0uLL);
            if (--v4)
            {
              continue;
            }
          }

          IODelay(0xF4240uLL);
          result = (*(a1 + 1032))(a1, 29, 25);
          if (!result)
          {
            IODelay(0xC350uLL);
            result = (*(a1 + 1032))(a1, 30, 65520);
            if (!result)
            {
              IODelay(0xC350uLL);
              result = (*(a1 + 1032))(a1, 30, 65280);
              if (!result)
              {
                IODelay(0xC350uLL);
                result = (*(a1 + 1032))(a1, 30, 0);
                if (!result)
                {
                  result = (*(a1 + 1032))(a1, 29, 0);
                  if (!result)
                  {
                    return e1000_phy_has_link_generic(a1, 0x14u, 0x186A0u, &v5);
                  }
                }
              }
            }
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t e1000_read_phy_reg_82543(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (a2 > 0x1F)
  {
    return 4294967292;
  }

  v15 = v3;
  v16 = v4;
  e1000_shift_out_mdi_bits_82543(a1, -1, 32);
  e1000_shift_out_mdi_bits_82543(a1, a2 | (32 * *(a1 + 1100)) | 0x1800, 14);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v9 = readData & 0xFEEFFFFF;
  readData &= 0xFEEFFFFF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v9);
  v13 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v13);
  __dmb(1u);
  e1000_raise_mdi_clk_82543(a1, &readData);
  e1000_lower_mdi_clk_82543(a1, &readData);
  v10 = 0;
  v11 = 0;
  do
  {
    e1000_raise_mdi_clk_82543(a1, &readData);
    v13 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &v13);
    __dmb(1u);
    readData = v13;
    v10 = (2 * v10) | (v13 >> 20) & 1;
    e1000_lower_mdi_clk_82543(a1, &readData);
  }

  while (v11++ < 0xF);
  e1000_raise_mdi_clk_82543(a1, &readData);
  e1000_lower_mdi_clk_82543(a1, &readData);
  result = 0;
  *a3 = v10;
  return result;
}

uint64_t e1000_phy_hw_reset_82543(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
  __dmb(1u);
  v2 = readData;
  v3 = readData & 0xFFFFFFEF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v3 | 0x100);
  v7 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v7);
  __dmb(1u);
  IODelay(0x2710uLL);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v2 | 0x110);
  v6 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v6);
  __dmb(1u);
  IODelay(0x96uLL);
  v4 = *(a1 + 944);
  if (v4)
  {
    return v4(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_write_phy_reg_82543(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 > 0x1F)
  {
    return 4294967292;
  }

  e1000_shift_out_mdi_bits_82543(a1, -1, 32);
  e1000_shift_out_mdi_bits_82543(a1, (*(a1 + 1100) << 23) | (a2 << 18) | a3 | 0x50020000, 32);
  return 0;
}

void e1000_shift_out_mdi_bits_82543(uint64_t a1, int a2, char a3)
{
  v5 = 1 << (a3 - 1);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v6 = readData & 0xFCEFFFFF;
  do
  {
    v7 = (v5 & a2) != 0;
    v11 = v6 | (v7 << 20) | 0x3000000;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v6 | (v7 << 20) | 0x3000000);
    v9 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v9);
    __dmb(1u);
    IODelay(0xAuLL);
    e1000_raise_mdi_clk_82543(a1, &v11);
    e1000_lower_mdi_clk_82543(a1, &v11);
    v8 = v5 > 1;
    v5 >>= 1;
  }

  while (v8);
}

void e1000_raise_mdi_clk_82543(uint64_t a1, _DWORD *a2)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, *a2 | 0x200000);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(0xAuLL);
}

void e1000_lower_mdi_clk_82543(uint64_t a1, _DWORD *a2)
{
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, *a2 & 0xFFDFFFFF);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  IODelay(0xAuLL);
}

uint64_t e1000_read_mbx(uint64_t a1)
{
  v1 = *(a1 + 1272);
  if (!v1)
  {
    return 4294967281;
  }

  *(a1 + 1356);
  return v1();
}

uint64_t e1000_write_mbx(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 1356) < a3)
  {
    return 4294967281;
  }

  v4 = *(a1 + 1280);
  if (v4)
  {
    return v4();
  }

  else
  {
    return 0;
  }
}

uint64_t e1000_check_for_msg(uint64_t a1)
{
  v1 = *(a1 + 1304);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967281;
  }
}

uint64_t e1000_check_for_ack(uint64_t a1)
{
  v1 = *(a1 + 1312);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967281;
  }
}

uint64_t e1000_check_for_rst(uint64_t a1)
{
  v1 = *(a1 + 1320);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 4294967281;
  }
}

uint64_t e1000_read_posted_mbx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 1272))
  {
    return 4294967281;
  }

  v5 = *(a1 + 1348);
  if (!v5)
  {
    return 4294967281;
  }

  v9 = *(a1 + 1304);
  if (v9)
  {
    for (i = v9(a1, a4); i; i = (*(a1 + 1304))(a1, a4))
    {
      if (!--v5)
      {
        *(a1 + 1348) = 0;
        return 4294967281;
      }

      IODelay(*(a1 + 1352));
    }
  }

  v11 = *(a1 + 1272);

  return v11(a1, a2, a3, a4);
}

uint64_t e1000_write_posted_mbx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 1280);
  if (!v4)
  {
    return 4294967281;
  }

  if (*(a1 + 1348))
  {
    result = v4(a1);
    if (result)
    {
      return result;
    }

    v8 = *(a1 + 1348);
    if (v8)
    {
      v9 = *(a1 + 1312);
      if (!v9)
      {
        return 0;
      }

      result = v9(a1, a4);
      if (!result)
      {
        return result;
      }

      while (--v8)
      {
        IODelay(*(a1 + 1352));
        v10 = (*(a1 + 1312))(a1, a4);
        result = 0;
        if (!v10)
        {
          return result;
        }
      }

      *(a1 + 1348) = 0;
    }
  }

  return 4294967281;
}

void *e1000_init_mbx_ops_generic(void *result)
{
  result[158] = e1000_null_ops_generic;
  result[159] = e1000_null_mbx_transact;
  result[160] = e1000_null_mbx_transact;
  result[163] = e1000_null_mbx_check_for_flag;
  result[164] = e1000_null_mbx_check_for_flag;
  result[165] = e1000_null_mbx_check_for_flag;
  result[161] = e1000_read_posted_mbx;
  result[162] = e1000_write_posted_mbx;
  return result;
}

uint64_t e1000_init_mbx_params_pf(uint64_t a1)
{
  v1 = *(a1 + 284);
  v2 = v1 > 0x21;
  v3 = (1 << v1) & 0x340000000;
  if (!v2 && v3 != 0)
  {
    *(a1 + 1352) = 0;
    *(a1 + 1356) = 16;
    *(a1 + 1272) = e1000_read_mbx_pf;
    *(a1 + 1280) = e1000_write_mbx_pf;
    *(a1 + 1288) = e1000_read_posted_mbx;
    *(a1 + 1296) = e1000_write_posted_mbx;
    *(a1 + 1304) = e1000_check_for_msg_pf;
    *(a1 + 1312) = e1000_check_for_ack_pf;
    *(a1 + 1320) = e1000_check_for_rst_pf;
    *(a1 + 1344) = 0;
    *(a1 + 1336) = 0;
    *(a1 + 1328) = 0;
  }

  return 0;
}

uint64_t e1000_read_mbx_pf(uint64_t a1, uint32_t *a2, int a3, int a4)
{
  LODWORD(v5) = a3;
  v8 = e1000_obtain_mbx_lock_pf(a1, a4);
  if (!v8)
  {
    if (v5)
    {
      v5 = v5;
      v9 = (a4 << 6) + 2048;
      do
      {
        readData = 0;
        if (v9 > 10511)
        {
          if (v9 <= 14343)
          {
            v10 = 10520;
            if (v9 > 13335)
            {
              if (v9 == 13336)
              {
                v11 = *(a1 + 284) <= 1;
                v12 = 13336;
                v13 = 32792;
                goto LABEL_62;
              }

              v10 = 14336;
              if (v9 == 14336)
              {
                v14 = *(a1 + 284) <= 1;
                v15 = 1056;
LABEL_68:
                if (v14)
                {
                  v16 = v15;
                }

                else
                {
                  v16 = v10;
                }

                goto LABEL_71;
              }

              if (v9 == 14340)
              {
                v11 = *(a1 + 284) <= 1;
                v12 = 14340;
                v13 = 1060;
                goto LABEL_62;
              }
            }

            else
            {
              switch(v9)
              {
                case 0x2910:
                  v11 = *(a1 + 284) <= 1;
                  v12 = 10512;
                  v13 = 328;
                  goto LABEL_62;
                case 0x2918:
                  v14 = *(a1 + 284) <= 1;
                  v15 = 336;
                  goto LABEL_68;
                case 0x3410:
                  v11 = *(a1 + 284) <= 1;
                  v12 = 13328;
                  v13 = 32784;
                  goto LABEL_62;
              }
            }
          }

          else if (v9 <= 14367)
          {
            if (v9 == 14344)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 14344;
              v13 = 1064;
              goto LABEL_62;
            }

            v10 = 14352;
            if (v9 == 14352)
            {
              v14 = *(a1 + 284) <= 1;
              v15 = 1072;
              goto LABEL_68;
            }

            if (v9 == 14360)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 14360;
              v13 = 1080;
              goto LABEL_62;
            }
          }

          else if (v9 > 21503)
          {
            v10 = 22016;
            if (v9 == 22016)
            {
              v14 = *(a1 + 284) <= 1;
              v15 = 1536;
              goto LABEL_68;
            }

            if (v9 == 21504)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 21504;
              v13 = 64;
              goto LABEL_62;
            }
          }

          else
          {
            v10 = 14368;
            if (v9 == 14368)
            {
              v14 = *(a1 + 284) <= 1;
              v15 = 1088;
              goto LABEL_68;
            }

            if (v9 == 20992)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 20992;
              v13 = 512;
              goto LABEL_62;
            }
          }
        }

        else if (v9 <= 10247)
        {
          if (v9 > 9239)
          {
            if (v9 == 9240)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 9240;
              v13 = 32776;
              goto LABEL_62;
            }

            v10 = 10240;
            if (v9 == 10240)
            {
              v14 = *(a1 + 284) <= 1;
              v15 = 272;
              goto LABEL_68;
            }

            if (v9 == 10244)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 10244;
              v13 = 276;
              goto LABEL_62;
            }
          }

          else
          {
            switch(v9)
            {
              case 0x2160:
                v11 = *(a1 + 284) <= 1;
                v12 = 8544;
                v13 = 360;
                goto LABEL_62;
              case 0x2168:
                v11 = *(a1 + 284) <= 1;
                v12 = 8552;
                v13 = 352;
LABEL_62:
                if (v11)
                {
                  v16 = v13;
                }

                else
                {
                  v16 = v12;
                }

                goto LABEL_71;
              case 0x2410:
                v11 = *(a1 + 284) <= 1;
                v12 = 9232;
                v13 = 0x8000;
                goto LABEL_62;
            }
          }
        }

        else if (v9 <= 10271)
        {
          if (v9 == 10248)
          {
            v11 = *(a1 + 284) <= 1;
            v12 = 10248;
            v13 = 280;
            goto LABEL_62;
          }

          v10 = 10256;
          if (v9 == 10256)
          {
            v14 = *(a1 + 284) <= 1;
            v15 = 288;
            goto LABEL_68;
          }

          if (v9 == 10264)
          {
            v11 = *(a1 + 284) <= 1;
            v12 = 10264;
            v13 = 296;
            goto LABEL_62;
          }
        }

        else
        {
          v10 = 10272;
          if (v9 > 10499)
          {
            v10 = 10500;
            if (v9 == 10500)
            {
              v14 = *(a1 + 284) <= 1;
              v15 = 316;
              goto LABEL_68;
            }

            if (v9 == 10504)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 10504;
              v13 = 320;
              goto LABEL_62;
            }
          }

          else
          {
            if (v9 == 10272)
            {
              v14 = *(a1 + 284) <= 1;
              v15 = 264;
              goto LABEL_68;
            }

            if (v9 == 10496)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 10496;
              v13 = 312;
              goto LABEL_62;
            }
          }
        }

        v16 = v9;
LABEL_71:
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v16, &readData);
        __dmb(1u);
        *a2++ = readData;
        v9 += 4;
        --v5;
      }

      while (v5);
    }

    __dmb(2u);
    v17 = 4 * a4 + 3072;
    if (a4 > 1859)
    {
      if (a4 <= 2817)
      {
        if (a4 > 2565)
        {
          switch(a4)
          {
            case 2566:
              v18 = *(a1 + 284) <= 1;
              v19 = 32792;
              v20 = 13336;
              break;
            case 2816:
              v18 = *(a1 + 284) <= 1;
              v19 = 1056;
              v20 = 14336;
              break;
            case 2817:
              v18 = *(a1 + 284) <= 1;
              v19 = 1060;
              v20 = 14340;
              break;
            default:
              goto LABEL_138;
          }
        }

        else
        {
          switch(a4)
          {
            case 1860:
              v18 = *(a1 + 284) <= 1;
              v19 = 328;
              v20 = 10512;
              break;
            case 1862:
              v18 = *(a1 + 284) <= 1;
              v19 = 336;
              v20 = 10520;
              break;
            case 2564:
              v18 = *(a1 + 284) <= 1;
              v19 = 32784;
              v20 = 13328;
              break;
            default:
              goto LABEL_138;
          }
        }
      }

      else if (a4 <= 2823)
      {
        switch(a4)
        {
          case 2818:
            v18 = *(a1 + 284) <= 1;
            v19 = 1064;
            v20 = 14344;
            break;
          case 2820:
            v18 = *(a1 + 284) <= 1;
            v19 = 1072;
            v20 = 14352;
            break;
          case 2822:
            v18 = *(a1 + 284) <= 1;
            v19 = 1080;
            v20 = 14360;
            break;
          default:
            goto LABEL_138;
        }
      }

      else if (a4 > 4607)
      {
        if (a4 == 4736)
        {
          v18 = *(a1 + 284) <= 1;
          v19 = 1536;
          v20 = 22016;
        }

        else
        {
          if (a4 != 4608)
          {
            goto LABEL_138;
          }

          v18 = *(a1 + 284) <= 1;
          v19 = 64;
          v20 = 21504;
        }
      }

      else if (a4 == 2824)
      {
        v18 = *(a1 + 284) <= 1;
        v19 = 1088;
        v20 = 14368;
      }

      else
      {
        if (a4 != 4480)
        {
          goto LABEL_138;
        }

        v18 = *(a1 + 284) <= 1;
        v19 = 512;
        v20 = 20992;
      }
    }

    else if (a4 <= 1793)
    {
      if (a4 > 1541)
      {
        switch(a4)
        {
          case 1542:
            v18 = *(a1 + 284) <= 1;
            v19 = 32776;
            v20 = 9240;
            break;
          case 1792:
            v18 = *(a1 + 284) <= 1;
            v19 = 272;
            v20 = 10240;
            break;
          case 1793:
            v18 = *(a1 + 284) <= 1;
            v19 = 276;
            v20 = 10244;
            break;
          default:
            goto LABEL_138;
        }
      }

      else
      {
        switch(a4)
        {
          case 1368:
            v18 = *(a1 + 284) <= 1;
            v19 = 360;
            v20 = 8544;
            break;
          case 1370:
            v18 = *(a1 + 284) <= 1;
            v19 = 352;
            v20 = 8552;
            break;
          case 1540:
            v18 = *(a1 + 284) <= 1;
            v19 = 0x8000;
            v20 = 9232;
            break;
          default:
            goto LABEL_138;
        }
      }
    }

    else if (a4 <= 1799)
    {
      switch(a4)
      {
        case 1794:
          v18 = *(a1 + 284) <= 1;
          v19 = 280;
          v20 = 10248;
          break;
        case 1796:
          v18 = *(a1 + 284) <= 1;
          v19 = 288;
          v20 = 10256;
          break;
        case 1798:
          v18 = *(a1 + 284) <= 1;
          v19 = 296;
          v20 = 10264;
          break;
        default:
          goto LABEL_138;
      }
    }

    else if (a4 > 1856)
    {
      if (a4 == 1857)
      {
        v18 = *(a1 + 284) <= 1;
        v19 = 316;
        v20 = 10500;
      }

      else
      {
        if (a4 != 1858)
        {
          goto LABEL_138;
        }

        v18 = *(a1 + 284) <= 1;
        v19 = 320;
        v20 = 10504;
      }
    }

    else
    {
      if (a4 != 1800)
      {
        if (a4 == 1856)
        {
          v18 = *(a1 + 284) <= 1;
          v19 = 312;
          v20 = 10496;
          goto LABEL_135;
        }

LABEL_138:
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v17, 2u);
        ++*(a1 + 1332);
        return v8;
      }

      v18 = *(a1 + 284) <= 1;
      v19 = 264;
      v20 = 10272;
    }

LABEL_135:
    if (v18)
    {
      v17 = v19;
    }

    else
    {
      v17 = v20;
    }

    goto LABEL_138;
  }

  return v8;
}

uint64_t e1000_write_mbx_pf(uint64_t a1, uint32_t *a2, int a3, int a4)
{
  LODWORD(v5) = a3;
  v8 = e1000_obtain_mbx_lock_pf(a1, a4);
  if (!v8)
  {
    if (!e1000_check_for_bit_pf(a1, 1 << a4))
    {
      ++*(a1 + 1340);
    }

    if (!e1000_check_for_bit_pf(a1, 0x10000 << a4))
    {
      ++*(a1 + 1336);
    }

    if (v5)
    {
      v5 = v5;
      v9 = (a4 << 6) + 2048;
      do
      {
        __dmb(2u);
        if (v9 > 10511)
        {
          if (v9 <= 14343)
          {
            v10 = 10520;
            if (v9 > 13335)
            {
              if (v9 == 13336)
              {
                v11 = *(a1 + 284) <= 1;
                v12 = 13336;
                v13 = 32792;
                goto LABEL_66;
              }

              v10 = 14336;
              if (v9 == 14336)
              {
                v14 = *(a1 + 284) <= 1;
                v15 = 1056;
LABEL_72:
                if (v14)
                {
                  v16 = v15;
                }

                else
                {
                  v16 = v10;
                }

                goto LABEL_75;
              }

              if (v9 == 14340)
              {
                v11 = *(a1 + 284) <= 1;
                v12 = 14340;
                v13 = 1060;
                goto LABEL_66;
              }
            }

            else
            {
              switch(v9)
              {
                case 0x2910:
                  v11 = *(a1 + 284) <= 1;
                  v12 = 10512;
                  v13 = 328;
                  goto LABEL_66;
                case 0x2918:
                  v14 = *(a1 + 284) <= 1;
                  v15 = 336;
                  goto LABEL_72;
                case 0x3410:
                  v11 = *(a1 + 284) <= 1;
                  v12 = 13328;
                  v13 = 32784;
                  goto LABEL_66;
              }
            }
          }

          else if (v9 <= 14367)
          {
            if (v9 == 14344)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 14344;
              v13 = 1064;
              goto LABEL_66;
            }

            v10 = 14352;
            if (v9 == 14352)
            {
              v14 = *(a1 + 284) <= 1;
              v15 = 1072;
              goto LABEL_72;
            }

            if (v9 == 14360)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 14360;
              v13 = 1080;
              goto LABEL_66;
            }
          }

          else if (v9 > 21503)
          {
            v10 = 22016;
            if (v9 == 22016)
            {
              v14 = *(a1 + 284) <= 1;
              v15 = 1536;
              goto LABEL_72;
            }

            if (v9 == 21504)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 21504;
              v13 = 64;
              goto LABEL_66;
            }
          }

          else
          {
            v10 = 14368;
            if (v9 == 14368)
            {
              v14 = *(a1 + 284) <= 1;
              v15 = 1088;
              goto LABEL_72;
            }

            if (v9 == 20992)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 20992;
              v13 = 512;
              goto LABEL_66;
            }
          }
        }

        else if (v9 <= 10247)
        {
          if (v9 > 9239)
          {
            if (v9 == 9240)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 9240;
              v13 = 32776;
              goto LABEL_66;
            }

            v10 = 10240;
            if (v9 == 10240)
            {
              v14 = *(a1 + 284) <= 1;
              v15 = 272;
              goto LABEL_72;
            }

            if (v9 == 10244)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 10244;
              v13 = 276;
              goto LABEL_66;
            }
          }

          else
          {
            switch(v9)
            {
              case 0x2160:
                v11 = *(a1 + 284) <= 1;
                v12 = 8544;
                v13 = 360;
                goto LABEL_66;
              case 0x2168:
                v11 = *(a1 + 284) <= 1;
                v12 = 8552;
                v13 = 352;
LABEL_66:
                if (v11)
                {
                  v16 = v13;
                }

                else
                {
                  v16 = v12;
                }

                goto LABEL_75;
              case 0x2410:
                v11 = *(a1 + 284) <= 1;
                v12 = 9232;
                v13 = 0x8000;
                goto LABEL_66;
            }
          }
        }

        else if (v9 <= 10271)
        {
          if (v9 == 10248)
          {
            v11 = *(a1 + 284) <= 1;
            v12 = 10248;
            v13 = 280;
            goto LABEL_66;
          }

          v10 = 10256;
          if (v9 == 10256)
          {
            v14 = *(a1 + 284) <= 1;
            v15 = 288;
            goto LABEL_72;
          }

          if (v9 == 10264)
          {
            v11 = *(a1 + 284) <= 1;
            v12 = 10264;
            v13 = 296;
            goto LABEL_66;
          }
        }

        else
        {
          v10 = 10272;
          if (v9 > 10499)
          {
            v10 = 10500;
            if (v9 == 10500)
            {
              v14 = *(a1 + 284) <= 1;
              v15 = 316;
              goto LABEL_72;
            }

            if (v9 == 10504)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 10504;
              v13 = 320;
              goto LABEL_66;
            }
          }

          else
          {
            if (v9 == 10272)
            {
              v14 = *(a1 + 284) <= 1;
              v15 = 264;
              goto LABEL_72;
            }

            if (v9 == 10496)
            {
              v11 = *(a1 + 284) <= 1;
              v12 = 10496;
              v13 = 312;
              goto LABEL_66;
            }
          }
        }

        v16 = v9;
LABEL_75:
        v17 = *a2++;
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v16, v17);
        v9 += 4;
        --v5;
      }

      while (v5);
    }

    __dmb(2u);
    v18 = 4 * a4 + 3072;
    if (a4 > 1859)
    {
      if (a4 <= 2817)
      {
        if (a4 > 2565)
        {
          switch(a4)
          {
            case 2566:
              v19 = *(a1 + 284) <= 1;
              v18 = 32792;
              v20 = 13336;
              break;
            case 2816:
              v19 = *(a1 + 284) <= 1;
              v18 = 1056;
              v20 = 14336;
              break;
            case 2817:
              v19 = *(a1 + 284) <= 1;
              v18 = 1060;
              v20 = 14340;
              break;
            default:
              goto LABEL_141;
          }
        }

        else
        {
          switch(a4)
          {
            case 1860:
              v19 = *(a1 + 284) <= 1;
              v18 = 328;
              v20 = 10512;
              break;
            case 1862:
              v19 = *(a1 + 284) <= 1;
              v18 = 336;
              v20 = 10520;
              break;
            case 2564:
              v19 = *(a1 + 284) <= 1;
              v18 = 32784;
              v20 = 13328;
              break;
            default:
              goto LABEL_141;
          }
        }
      }

      else if (a4 <= 2823)
      {
        switch(a4)
        {
          case 2818:
            v19 = *(a1 + 284) <= 1;
            v18 = 1064;
            v20 = 14344;
            break;
          case 2820:
            v19 = *(a1 + 284) <= 1;
            v18 = 1072;
            v20 = 14352;
            break;
          case 2822:
            v19 = *(a1 + 284) <= 1;
            v18 = 1080;
            v20 = 14360;
            break;
          default:
            goto LABEL_141;
        }
      }

      else if (a4 > 4607)
      {
        if (a4 == 4736)
        {
          v19 = *(a1 + 284) <= 1;
          v18 = 1536;
          v20 = 22016;
        }

        else
        {
          if (a4 != 4608)
          {
            goto LABEL_141;
          }

          v19 = *(a1 + 284) <= 1;
          v18 = 64;
          v20 = 21504;
        }
      }

      else if (a4 == 2824)
      {
        v19 = *(a1 + 284) <= 1;
        v18 = 1088;
        v20 = 14368;
      }

      else
      {
        if (a4 != 4480)
        {
          goto LABEL_141;
        }

        v19 = *(a1 + 284) <= 1;
        v18 = 512;
        v20 = 20992;
      }
    }

    else if (a4 <= 1793)
    {
      if (a4 > 1541)
      {
        switch(a4)
        {
          case 1542:
            v19 = *(a1 + 284) <= 1;
            v18 = 32776;
            v20 = 9240;
            break;
          case 1792:
            v19 = *(a1 + 284) <= 1;
            v18 = 272;
            v20 = 10240;
            break;
          case 1793:
            v19 = *(a1 + 284) <= 1;
            v18 = 276;
            v20 = 10244;
            break;
          default:
            goto LABEL_141;
        }
      }

      else
      {
        switch(a4)
        {
          case 1368:
            v19 = *(a1 + 284) <= 1;
            v18 = 360;
            v20 = 8544;
            break;
          case 1370:
            v19 = *(a1 + 284) <= 1;
            v18 = 352;
            v20 = 8552;
            break;
          case 1540:
            v19 = *(a1 + 284) <= 1;
            v18 = 0x8000;
            v20 = 9232;
            break;
          default:
            goto LABEL_141;
        }
      }
    }

    else if (a4 <= 1799)
    {
      switch(a4)
      {
        case 1794:
          v19 = *(a1 + 284) <= 1;
          v18 = 280;
          v20 = 10248;
          break;
        case 1796:
          v19 = *(a1 + 284) <= 1;
          v18 = 288;
          v20 = 10256;
          break;
        case 1798:
          v19 = *(a1 + 284) <= 1;
          v18 = 296;
          v20 = 10264;
          break;
        default:
          goto LABEL_141;
      }
    }

    else if (a4 > 1856)
    {
      if (a4 == 1857)
      {
        v19 = *(a1 + 284) <= 1;
        v18 = 316;
        v20 = 10500;
      }

      else
      {
        if (a4 != 1858)
        {
          goto LABEL_141;
        }

        v19 = *(a1 + 284) <= 1;
        v18 = 320;
        v20 = 10504;
      }
    }

    else
    {
      if (a4 != 1800)
      {
        if (a4 == 1856)
        {
          v19 = *(a1 + 284) <= 1;
          v18 = 312;
          v20 = 10496;
          goto LABEL_139;
        }

LABEL_141:
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v18, 1u);
        ++*(a1 + 1328);
        return v8;
      }

      v19 = *(a1 + 284) <= 1;
      v18 = 264;
      v20 = 10272;
    }

LABEL_139:
    if (!v19)
    {
      v18 = v20;
    }

    goto LABEL_141;
  }

  return v8;
}

uint64_t e1000_check_for_msg_pf(uint64_t a1, char a2)
{
  result = e1000_check_for_bit_pf(a1, 1 << a2);
  if (result)
  {
    return 4294967281;
  }

  ++*(a1 + 1340);
  return result;
}

uint64_t e1000_check_for_ack_pf(uint64_t a1, char a2)
{
  result = e1000_check_for_bit_pf(a1, 0x10000 << a2);
  if (result)
  {
    return 4294967281;
  }

  ++*(a1 + 1336);
  return result;
}

uint64_t e1000_check_for_rst_pf(uint64_t a1, char a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xC88uLL, &readData);
  __dmb(1u);
  if ((readData & (1 << a2)) == 0)
  {
    return 4294967281;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xC88uLL, 1 << a2);
  result = 0;
  ++*(a1 + 1344);
  return result;
}

uint64_t e1000_obtain_mbx_lock_pf(uint64_t a1, int a2)
{
  v4 = 4 * a2 + 3072;
  v5 = -11;
  while (1)
  {
    __dmb(2u);
    v6 = *(a1 + 16);
    if (a2 > 1859)
    {
      if (a2 <= 2817)
      {
        if (a2 > 2565)
        {
          switch(a2)
          {
            case 2566:
              v7 = *(a1 + 284) <= 1;
              v8 = 32792;
              v9 = 13336;
              break;
            case 2816:
              v7 = *(a1 + 284) <= 1;
              v8 = 1056;
              v9 = 14336;
              break;
            case 2817:
              v7 = *(a1 + 284) <= 1;
              v8 = 1060;
              v9 = 14340;
              break;
            default:
              goto LABEL_95;
          }
        }

        else
        {
          switch(a2)
          {
            case 1860:
              v7 = *(a1 + 284) <= 1;
              v8 = 328;
              v9 = 10512;
              break;
            case 1862:
              v7 = *(a1 + 284) <= 1;
              v8 = 336;
              v9 = 10520;
              break;
            case 2564:
              v7 = *(a1 + 284) <= 1;
              v8 = 32784;
              v9 = 13328;
              break;
            default:
              goto LABEL_95;
          }
        }
      }

      else if (a2 <= 2823)
      {
        switch(a2)
        {
          case 2818:
            v7 = *(a1 + 284) <= 1;
            v8 = 1064;
            v9 = 14344;
            break;
          case 2820:
            v7 = *(a1 + 284) <= 1;
            v8 = 1072;
            v9 = 14352;
            break;
          case 2822:
            v7 = *(a1 + 284) <= 1;
            v8 = 1080;
            v9 = 14360;
            break;
          default:
            goto LABEL_95;
        }
      }

      else if (a2 > 4607)
      {
        if (a2 == 4608)
        {
          v7 = *(a1 + 284) <= 1;
          v8 = 64;
          v9 = 21504;
        }

        else
        {
          if (a2 != 4736)
          {
LABEL_95:
            IOPCIDevice::MemoryWrite32(v6, 0, v4, 8u);
            readData = 0;
            v11 = v4;
            goto LABEL_91;
          }

          v7 = *(a1 + 284) <= 1;
          v8 = 1536;
          v9 = 22016;
        }
      }

      else if (a2 == 2824)
      {
        v7 = *(a1 + 284) <= 1;
        v8 = 1088;
        v9 = 14368;
      }

      else
      {
        if (a2 != 4480)
        {
          goto LABEL_95;
        }

        v7 = *(a1 + 284) <= 1;
        v8 = 512;
        v9 = 20992;
      }

      goto LABEL_85;
    }

    if (a2 > 1793)
    {
      if (a2 <= 1799)
      {
        switch(a2)
        {
          case 1794:
            v7 = *(a1 + 284) <= 1;
            v8 = 280;
            v9 = 10248;
            break;
          case 1796:
            v7 = *(a1 + 284) <= 1;
            v8 = 288;
            v9 = 10256;
            break;
          case 1798:
            v7 = *(a1 + 284) <= 1;
            v8 = 296;
            v9 = 10264;
            break;
          default:
            goto LABEL_95;
        }
      }

      else if (a2 > 1856)
      {
        if (a2 == 1857)
        {
          v7 = *(a1 + 284) <= 1;
          v8 = 316;
          v9 = 10500;
        }

        else
        {
          if (a2 != 1858)
          {
            goto LABEL_95;
          }

          v7 = *(a1 + 284) <= 1;
          v8 = 320;
          v9 = 10504;
        }
      }

      else if (a2 == 1800)
      {
        v7 = *(a1 + 284) <= 1;
        v8 = 264;
        v9 = 10272;
      }

      else
      {
        if (a2 != 1856)
        {
          goto LABEL_95;
        }

        v7 = *(a1 + 284) <= 1;
        v8 = 312;
        v9 = 10496;
      }

      goto LABEL_85;
    }

    if (a2 <= 1541)
    {
      switch(a2)
      {
        case 1368:
          v7 = *(a1 + 284) <= 1;
          v8 = 360;
          v9 = 8544;
          break;
        case 1370:
          v7 = *(a1 + 284) <= 1;
          v8 = 352;
          v9 = 8552;
          break;
        case 1540:
          if (*(a1 + 284) <= 1)
          {
            v10 = 0x8000;
          }

          else
          {
            v10 = 9232;
          }

          IOPCIDevice::MemoryWrite32(v6, 0, v10, 8u);
          readData = 0;
          if (*(a1 + 284) <= 1)
          {
            v11 = 0x8000;
          }

          else
          {
            v11 = 9232;
          }

          goto LABEL_91;
        default:
          goto LABEL_95;
      }

LABEL_85:
      if (v7)
      {
        v15 = v8;
      }

      else
      {
        v15 = v9;
      }

      IOPCIDevice::MemoryWrite32(v6, 0, v15, 8u);
      readData = 0;
      if (*(a1 + 284) <= 1)
      {
        v11 = v8;
      }

      else
      {
        v11 = v9;
      }

      goto LABEL_91;
    }

    switch(a2)
    {
      case 1542:
        v13 = *(a1 + 284) <= 1 ? 32776 : 9240;
        IOPCIDevice::MemoryWrite32(v6, 0, v13, 8u);
        readData = 0;
        v11 = *(a1 + 284) <= 1 ? 32776 : 9240;
        break;
      case 1792:
        v14 = *(a1 + 284) <= 1 ? 272 : 10240;
        IOPCIDevice::MemoryWrite32(v6, 0, v14, 8u);
        readData = 0;
        v11 = *(a1 + 284) <= 1 ? 272 : 10240;
        break;
      case 1793:
        v12 = *(a1 + 284) <= 1 ? 276 : 10244;
        IOPCIDevice::MemoryWrite32(v6, 0, v12, 8u);
        readData = 0;
        v11 = *(a1 + 284) <= 1 ? 276 : 10244;
        break;
      default:
        goto LABEL_95;
    }

LABEL_91:
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v11, &readData);
    __dmb(1u);
    if ((readData & 8) != 0)
    {
      return 0;
    }

    IODelay(0x3E8uLL);
    if (__CFADD__(v5++, 1))
    {
      return 4294967281;
    }
  }
}

uint64_t e1000_check_for_bit_pf(uint64_t a1, uint32_t a2)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xC80uLL, &readData);
  __dmb(1u);
  if ((readData & a2) == 0)
  {
    return 4294967281;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xC80uLL, a2);
  return 0;
}

void *e1000_init_phy_ops_generic(void *result)
{
  result[111] = e1000_null_ops_generic;
  result[112] = e1000_null_ops_generic;
  result[114] = e1000_null_ops_generic;
  result[115] = e1000_null_ops_generic;
  result[116] = e1000_null_ops_generic;
  result[117] = e1000_null_ops_generic;
  result[118] = e1000_null_ops_generic;
  result[119] = e1000_null_ops_generic;
  result[120] = e1000_null_ops_generic;
  result[121] = e1000_null_set_page;
  result[122] = e1000_null_read_reg;
  result[123] = e1000_null_read_reg;
  result[124] = e1000_null_read_reg;
  result[125] = e1000_null_phy_generic;
  result[126] = e1000_null_ops_generic;
  result[127] = e1000_null_lplu_state;
  result[128] = e1000_null_lplu_state;
  result[129] = e1000_null_write_reg;
  result[130] = e1000_null_write_reg;
  result[131] = e1000_null_write_reg;
  result[132] = e1000_null_phy_generic;
  result[133] = e1000_null_phy_generic;
  result[113] = e1000_null_ops_generic;
  return result;
}

uint64_t e1000_check_reset_block_generic(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5820uLL, &readData);
  __dmb(1u);
  return ((readData << 13) >> 31) & 0xC;
}

uint64_t e1000_get_phy_id(uint64_t a1)
{
  if (!*(a1 + 976))
  {
    return 0;
  }

  v8 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    result = (*(a1 + 976))(a1, 2, &v8);
    if (result)
    {
      break;
    }

    *(a1 + 1104) = v8 << 16;
    IODelay(0x14uLL);
    result = (*(a1 + 976))(a1, 3, &v8);
    if (result)
    {
      break;
    }

    v5 = v8;
    v6 = *(a1 + 1104) | v8 & 0xFFF0;
    *(a1 + 1104) = v6;
    *(a1 + 1112) = v5 & 0xF;
    if (v6)
    {
      v7 = v6 == -16;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v2 = 0;
      if (v3)
      {
        continue;
      }
    }

    return 0;
  }

  return result;
}

uint64_t e1000_phy_reset_dsp_generic(uint64_t a1)
{
  v1 = *(a1 + 1032);
  if (!v1)
  {
    return 0;
  }

  result = v1();
  if (!result)
  {
    v4 = *(a1 + 1032);

    return v4(a1, 30, 0);
  }

  return result;
}

uint64_t e1000_read_phy_reg_mdic(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (a2 > 0x1F)
  {
    return 4294967292;
  }

  v13 = v3;
  v14 = v4;
  v9 = (*(a1 + 1100) << 21) | (a2 << 16);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x20uLL, v9 | 0x8000000);
  v10 = 1919;
  do
  {
    v11 = v10;
    IODelay(0x32uLL);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x20uLL, &readData);
    __dmb(1u);
    if ((readData & 0x10000000) != 0)
    {
      break;
    }

    v10 = v11 - 1;
  }

  while (v11);
  if ((readData & 0x50000000) != 0x10000000 || (HIWORD(readData) & 0x1F) != a2)
  {
    return 4294967294;
  }

  *a3 = readData;
  if (*(a1 + 284) == 23)
  {
    IODelay(0x64uLL);
  }

  return 0;
}

uint64_t e1000_write_phy_reg_mdic(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 > 0x1F)
  {
    return 4294967292;
  }

  v12 = v3;
  v13 = v4;
  v8 = a3 | (a2 << 16) | (*(a1 + 1100) << 21);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x20uLL, v8 | 0x4000000);
  v9 = 1919;
  do
  {
    v10 = v9;
    IODelay(0x32uLL);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x20uLL, &readData);
    __dmb(1u);
    if ((readData & 0x10000000) != 0)
    {
      break;
    }

    v9 = v10 - 1;
  }

  while (v10);
  if ((readData & 0x50000000) != 0x10000000 || (HIWORD(readData) & 0x1F) != a2)
  {
    return 4294967294;
  }

  if (*(a1 + 284) == 23)
  {
    IODelay(0x64uLL);
  }

  return 0;
}

uint64_t e1000_read_phy_reg_i2c(uint64_t a1, int a2, _WORD *a3)
{
  v5 = (a2 << 16) | (*(a1 + 1100) << 24);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x1028uLL, v5 | 0x8000000);
  v6 = 199;
  do
  {
    v7 = v6;
    IODelay(0x32uLL);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x1028uLL, &readData);
    __dmb(1u);
    if ((readData & 0x20000000) != 0)
    {
      break;
    }

    v6 = v7 - 1;
  }

  while (v7);
  if ((readData & 0xA0000000) != 0x20000000)
  {
    return 4294967294;
  }

  result = 0;
  *a3 = bswap32(readData) >> 16;
  return result;
}

uint64_t e1000_write_phy_reg_i2c(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 1100);
  if ((v5 - 8) < 0xFFFFFFF9)
  {
    return 4294967293;
  }

  v10 = v3;
  v11 = v4;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x1028uLL, (__PAIR64__(a2, bswap32(a3)) >> 16) | (v5 << 24));
  v8 = 200;
  while (1)
  {
    IODelay(0x32uLL);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x1028uLL, &readData);
    __dmb(1u);
    if ((readData & 0x20000000) != 0)
    {
      break;
    }

    if (!--v8)
    {
      return 4294967294;
    }
  }

  return (readData >> 31) & 0xFFFFFFFE;
}

uint64_t e1000_read_sfp_data_byte(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 > 0x1FF)
  {
    return 4294967294;
  }

  v11 = v3;
  v12 = v4;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x1028uLL, (a2 << 16) | 0x8000000);
  v8 = 199;
  do
  {
    v9 = v8;
    IODelay(0x32uLL);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x1028uLL, &readData);
    __dmb(1u);
    if ((readData & 0x20000000) != 0)
    {
      break;
    }

    v8 = v9 - 1;
  }

  while (v9);
  if ((readData & 0xA0000000) != 0x20000000)
  {
    return 4294967294;
  }

  result = 0;
  *a3 = readData;
  return result;
}

uint64_t e1000_write_sfp_data_byte(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 > 0x1FF)
  {
    return 4294967294;
  }

  v14 = v3;
  v15 = v4;
  v8 = a2 << 16;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x1028uLL, (a2 << 16) | 0x8000000);
  v9 = 200;
  v10 = a3 | v8;
  do
  {
    IODelay(0x32uLL);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x1028uLL, &readData);
    __dmb(1u);
    v11 = readData;
    if ((readData & 0x20000000) != 0)
    {
      if ((readData & 0x8000000) == 0)
      {
        return (v11 >> 31) & 0xFFFFFFFE;
      }

      v12 = readData & 0xFF00;
      v11 = v12 | v10;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x1028uLL, v12 | v10);
    }

    --v9;
  }

  while (v9);
  if ((v11 & 0x20000000) == 0)
  {
    return 4294967294;
  }

  return (v11 >> 31) & 0xFFFFFFFE;
}

uint64_t e1000_read_phy_reg_m88(uint64_t a1, char a2, _WORD *a3)
{
  v3 = *(a1 + 896);
  if (!v3)
  {
    return 0;
  }

  result = v3();
  if (!result)
  {
    phy_reg_mdic = e1000_read_phy_reg_mdic(a1, a2 & 0x1F, a3);
    (*(a1 + 1000))(a1);
    return phy_reg_mdic;
  }

  return result;
}

uint64_t e1000_write_phy_reg_m88(uint64_t a1, char a2, int a3)
{
  v3 = *(a1 + 896);
  if (!v3)
  {
    return 0;
  }

  result = v3();
  if (!result)
  {
    v8 = e1000_write_phy_reg_mdic(a1, a2 & 0x1F, a3);
    (*(a1 + 1000))(a1);
    return v8;
  }

  return result;
}

uint64_t __e1000_read_phy_reg_igp(uint64_t a1, unsigned int a2, _WORD *a3, char a4)
{
  if (a4)
  {
    goto LABEL_14;
  }

  v9 = *(a1 + 896);
  if (!v9)
  {
    return 0;
  }

  phy_reg_mdic = v9(a1);
  if (!phy_reg_mdic)
  {
LABEL_14:
    if (a2 < 0x10 || (phy_reg_mdic = e1000_write_phy_reg_mdic(a1, 0x1Fu, a2), !phy_reg_mdic))
    {
      phy_reg_mdic = e1000_read_phy_reg_mdic(a1, a2 & 0x1F, a3);
    }

    if ((a4 & 1) == 0)
    {
      (*(a1 + 1000))(a1);
    }
  }

  return phy_reg_mdic;
}

uint64_t __e1000_write_phy_reg_igp(uint64_t a1, unsigned int a2, int a3, char a4)
{
  if (a4)
  {
    goto LABEL_14;
  }

  v9 = *(a1 + 896);
  if (!v9)
  {
    return 0;
  }

  v8 = v9(a1);
  if (!v8)
  {
LABEL_14:
    if (a2 < 0x10 || (v8 = e1000_write_phy_reg_mdic(a1, 0x1Fu, a2), !v8))
    {
      v8 = e1000_write_phy_reg_mdic(a1, a2 & 0x1F, a3);
    }

    if ((a4 & 1) == 0)
    {
      (*(a1 + 1000))(a1);
    }
  }

  return v8;
}

uint64_t __e1000_read_kmrn_reg(uint64_t a1, char a2, _WORD *a3, char a4)
{
  if (a4)
  {
LABEL_2:
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x34uLL, ((a2 & 0x1F) << 16) | 0x200000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(2uLL);
    v10 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x34uLL, &v10);
    __dmb(1u);
    *a3 = v10;
    if ((a4 & 1) == 0)
    {
      (*(a1 + 1000))(a1);
    }

    return 0;
  }

  v8 = *(a1 + 896);
  if (v8)
  {
    result = v8(a1);
    if (result)
    {
      return result;
    }

    goto LABEL_2;
  }

  return 0;
}

uint64_t __e1000_write_kmrn_reg(uint64_t a1, char a2, int a3, char a4)
{
  if (a4)
  {
LABEL_2:
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x34uLL, a3 & 0xFFE0FFFF | ((a2 & 0x1F) << 16));
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(2uLL);
    if ((a4 & 1) == 0)
    {
      (*(a1 + 1000))(a1);
    }

    return 0;
  }

  v8 = *(a1 + 896);
  if (v8)
  {
    result = v8(a1);
    if (result)
    {
      return result;
    }

    goto LABEL_2;
  }

  return 0;
}

uint64_t e1000_copper_link_setup_82577(uint64_t a1)
{
  if (*(a1 + 1134))
  {
    return 0;
  }

  v9 = v1;
  v10 = v2;
  if (*(a1 + 1072) != 13 || (result = (*(a1 + 1008))(a1), !result))
  {
    v8 = 0;
    result = (*(a1 + 976))(a1, 22, &v8);
    if (!result)
    {
      v5 = (*(a1 + 1072) - 11) >= 2 ? v8 | 0x8000 : v8;
      v8 = v5 | 0xC00;
      result = (*(a1 + 1032))(a1, 22, v5 | 0xC00u);
      if (!result)
      {
        result = (*(a1 + 976))(a1, 18, &v8);
        if (!result)
        {
          v6 = v8 & 0xF9FF;
          v8 &= 0xF9FFu;
          v7 = *(a1 + 1130);
          if (v7 != 1)
          {
            if (v7 == 2)
            {
              v6 |= 0x200u;
            }

            else
            {
              v6 |= 0x400u;
            }

            v8 = v6;
          }

          result = (*(a1 + 1032))(a1, 18, v6);
          if (!result)
          {
            return e1000_set_primary_secondary_mode(a1);
          }
        }
      }
    }
  }

  return result;
}

uint64_t e1000_set_primary_secondary_mode(uint64_t a1)
{
  v6 = 0;
  result = (*(a1 + 976))(a1, 9, &v6);
  if (!result)
  {
    v3 = v6;
    if ((v6 & 0x800) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    if ((v6 & 0x1000) == 0)
    {
      v4 = 3;
    }

    *(a1 + 1088) = v4;
    v5 = *(a1 + 1084);
    switch(v5)
    {
      case 3:
        v3 &= ~0x1000u;
        break;
      case 2:
        v3 = v3 & 0xE7FF | 0x1000;
        break;
      case 1:
        v3 |= 0x1800u;
        break;
      default:
        return (*(a1 + 1032))(a1, 9, v3);
    }

    v6 = v3;
    return (*(a1 + 1032))(a1, 9, v3);
  }

  return result;
}

uint64_t e1000_copper_link_setup_m88(uint64_t a1)
{
  if (*(a1 + 1134))
  {
    return 0;
  }

  v16 = v1;
  v17 = v2;
  v15 = 0;
  result = (*(a1 + 976))(a1, 16, &v15);
  if (!result)
  {
    v5 = *(a1 + 1072);
    v6 = v15;
    if (v5 != 8)
    {
      v6 = v15 | 0x800;
    }

    v7 = v6 & 0xFF9F;
    v8 = *(a1 + 1130);
    v9 = v6 & 0xFF9F | 0x40;
    v10 = v6 | 0x60;
    if (v8 == 2)
    {
      v10 = v7 | 0x20;
    }

    if (v8 == 3)
    {
      v10 = v9;
    }

    if (v8 != 1)
    {
      v7 = v10;
    }

    v11 = v7 & 0xFFFD;
    v15 = v7 & 0xFFFD;
    if (*(a1 + 1131) == 1)
    {
      v11 = v7 | 2;
      v15 = v7 | 2;
    }

    if (v5 == 8)
    {
      if (*(a1 + 1104) == 21040305)
      {
        v15 = v11 & 0xF7FF;
        result = (*(a1 + 1032))(a1, 16);
        if (result)
        {
          return result;
        }

        result = (*(a1 + 928))(a1);
        if (result)
        {
          return result;
        }

        v11 = v15;
      }

      v11 |= 0x800u;
      v15 = v11;
    }

    result = (*(a1 + 1032))(a1, 16, v11);
    if (result)
    {
      return result;
    }

    v12 = *(a1 + 1072);
    if (v12 != 2)
    {
      goto LABEL_31;
    }

    if (*(a1 + 1112) > 3u || *(a1 + 1104) == 21040305)
    {
LABEL_35:
      result = (*(a1 + 928))(a1);
      if (!result)
      {
        if (*(a1 + 1072) != 9)
        {
          return 0;
        }

        result = (*(a1 + 976))(a1, 20, &v15);
        if (!result)
        {
          v15 = v15 & 0xFFC3 | 0x20;
          result = (*(a1 + 1032))(a1, 20, v15);
          if (!result)
          {
            return 0;
          }
        }
      }

      return result;
    }

    result = (*(a1 + 976))(a1, 20, &v15);
    if (!result)
    {
      if (*(a1 + 1112) == 2 && *(a1 + 1104) == 21040320)
      {
        v13 = 2048;
        v14 = -3585;
      }

      else
      {
        v13 = 256;
        v14 = -3841;
      }

      v15 = (v15 | 0x70) & v14 | v13;
      result = (*(a1 + 1032))(a1, 20);
      if (!result)
      {
        v12 = *(a1 + 1072);
LABEL_31:
        if (v12 == 8 && *(a1 + 1104) == 21040305)
        {
          result = (*(a1 + 1032))(a1, 29, 3);
          if (result)
          {
            return result;
          }

          result = (*(a1 + 1032))(a1, 30, 0);
          if (result)
          {
            return result;
          }
        }

        goto LABEL_35;
      }
    }
  }

  return result;
}