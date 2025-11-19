uint64_t i40e_aq_get_link_info(uint64_t a1, int a2, uint64_t a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v18, 1543);
  if (a2)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v19 = v8;
  result = i40e_asq_send_command(a1, v18, 0, 0, a4);
  if (result)
  {
    return result;
  }

  *(a1 + 40) = *(a1 + 16);
  *(a1 + 56) = *(a1 + 32);
  v10 = v20;
  *(a1 + 16) = v20;
  if ((v10 - 1) > 0x30)
  {
    v11 = 0;
  }

  else
  {
    v11 = dword_10001CBC0[(v10 - 1)];
  }

  *(a1 + 68) = v11;
  *(a1 + 20) = v21;
  *(a1 + 24) = v22;
  v12 = v23;
  v13 = v27;
  *(a1 + 27) = v27 & 3;
  *(a1 + 28) = v24;
  *(a1 + 29) = v25 & 7;
  *(a1 + 32) = v26;
  *(a1 + 25) = v12;
  *(a1 + 35) = v13 & 0x78;
  if (((v12 >> 6) & 1 & (v12 >> 5)) != 0)
  {
    v14 = 3;
  }

  else if ((v12 & 0x20) != 0)
  {
    v14 = 2;
  }

  else
  {
    if ((v12 & 0x40) == 0)
    {
      *(a1 + 168) = 0;
      goto LABEL_16;
    }

    v14 = 1;
  }

  *(a1 + 168) = v14;
LABEL_16:
  *(a1 + 34) = (v13 & 4) != 0;
  *(a1 + 30) = v19 & 1;
  v15 = *(a1 + 80);
  if (v15 != 1)
  {
    goto LABEL_24;
  }

  v16 = *(a1 + 892);
  if (v16 >= 4)
  {
    if (v16 != 4 || v10 != 14 || *(a1 + 894) >= 0x28u)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v10 == 14)
  {
LABEL_23:
    *(a1 + 16) = 22;
  }

LABEL_24:
  if (v15 != 3 && (*(a1 + 1688) & 4) != 0)
  {
    *(a1 + 72) = v28 | (v29 << 32);
  }

  if (a3)
  {
    v17 = *(a1 + 16);
    *(a3 + 16) = *(a1 + 32);
    *a3 = v17;
  }

  *(a1 + 64) = 0;
  return result;
}

uint64_t i40e_aq_set_phy_config(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  if (!a2)
  {
    return 4294967291;
  }

  i40e_fill_default_direct_cmd_desc(v7, 1537);
  v7[1] = *a2;
  return i40e_asq_send_command(a1, v7, 0, 0, a3);
}

uint64_t i40e_set_fc(uint64_t a1, _BYTE *a2, int a3)
{
  v6 = *(a1 + 172);
  *a2 = 0;
  result = i40e_aq_get_phy_capabilities(a1, 0, 0, &v18, 0);
  if (result)
  {
    v8 = 1;
LABEL_3:
    *a2 |= v8;
    return result;
  }

  v9 = 0x3010200u >> (8 * v6);
  if (v6 >= 4)
  {
    LOBYTE(v9) = 0;
  }

  v10 = v20 & 0xFC | v9;
  if (v20 != v10)
  {
    if (a3)
    {
      v11 = v10 | 0x20;
    }

    else
    {
      v11 = v10;
    }

    v12 = v18;
    v13 = v19;
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v17 = v24 & 0x1F;
    i40e_fill_default_direct_cmd_desc(v25, 1537);
    v26 = v12;
    v27 = v13;
    v28 = v11;
    v29 = v14;
    v30 = v15;
    v31 = v16;
    v32 = v17;
    v33 = 0;
    if (i40e_asq_send_command(a1, v25, 0, 0, 0))
    {
      *a2 |= 2u;
    }
  }

  result = i40e_update_link_info(a1);
  if (result)
  {
    IODelay(0xF4240uLL);
    result = i40e_update_link_info(a1);
    if (result)
    {
      v8 = 4;
      goto LABEL_3;
    }
  }

  return result;
}

uint64_t i40e_update_link_info(uint64_t a1)
{
  result = i40e_aq_get_link_info(a1, 1, 0, 0);
  if (!result)
  {
    if ((*(a1 + 24) & 0x40) != 0 && ((*(a1 + 24) & 1) != 0 || (*(a1 + 48) & 1) == 0) || *(a1 + 80) == 3)
    {
      result = i40e_aq_get_phy_capabilities(a1, 0, *(a1 + 80) == 3, v4, 0);
      if (!result)
      {
        if ((v5 & 0x10) != 0)
        {
          v3 = 12;
        }

        else
        {
          v3 = v5 & 0xC;
        }

        *(a1 + 26) = v3;
        *(a1 + 37) = v6;
        *(a1 + 39) = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t i40e_aq_set_mac_config(uint64_t a1, int a2, int a3, char a4, int a5, _OWORD *a6)
{
  if (!a2)
  {
    return 4294967291;
  }

  v10 = a2;
  i40e_fill_default_direct_cmd_desc(v14, 1539);
  v15 = v10;
  v12 = 8 * (a4 & 0xF);
  if (a3)
  {
    v12 = (8 * (a4 & 0xF)) | 4;
  }

  v16 = v12;
  if (a5)
  {
    if ((*(a1 + 1688) & 0x80) != 0)
    {
      v16 = v12 | 0x80;
    }

    else if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): This FW api version does not support drop mode.\n\n", "i40e_aq_set_mac_config", 1852);
    }
  }

  v17 = 0x7FFF;
  return i40e_asq_send_command(a1, v14, 0, 0, a6);
}

uint64_t i40e_aq_set_link_restart_an(uint64_t a1, int a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v8, 1541);
  if (a2)
  {
    v6 = 6;
  }

  else
  {
    v6 = 2;
  }

  v8[16] = v6;
  return i40e_asq_send_command(a1, v8, 0, 0, a3);
}

uint64_t i40e_aq_set_phy_int_mask(uint64_t a1, __int16 a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 1555);
  v7[12] = a2;
  return i40e_asq_send_command(a1, v7, 0, 0, a3);
}

uint64_t i40e_aq_get_local_advt_reg(uint64_t a1, unint64_t *a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 1556);
  result = i40e_asq_send_command(a1, v7, 0, 0, a3);
  if (!result)
  {
    *a2 = v7[4] | (v8 << 32);
  }

  return result;
}

uint64_t i40e_aq_set_local_advt_reg(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 1556);
  v7[4] = a2;
  v8 = WORD2(a2);
  return i40e_asq_send_command(a1, v7, 0, 0, a3);
}

uint64_t i40e_aq_get_partner_advt(uint64_t a1, unint64_t *a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 1558);
  result = i40e_asq_send_command(a1, v7, 0, 0, a3);
  if (!result)
  {
    *a2 = v7[4] | (v8 << 32);
  }

  return result;
}

uint64_t i40e_aq_set_lb_modes(uint64_t a1, char a2, char a3, int a4, _OWORD *a5)
{
  i40e_fill_default_direct_cmd_desc(v11, 1560);
  v11[16] = a2;
  v11[17] = a3;
  v11[18] = a4;
  if (a4)
  {
    v11[19] = 1;
  }

  return i40e_asq_send_command(a1, v11, 0, 0, a5);
}

uint64_t i40e_aq_set_phy_debug(uint64_t a1, char a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 1570);
  v7[16] = a2;
  return i40e_asq_send_command(a1, v7, 0, 0, a3);
}

uint64_t i40e_aq_add_vsi(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 528);
  v8 = *(a2 + 2);
  LOBYTE(v9) = *(a2 + 14);
  LOBYTE(v10) = *(a2 + 13);
  HIWORD(v10) = *(a2 + 10);
  v7[0] |= 0x1400u;
  result = i40e_asq_send_command(a1, v7, (a2 + 16), 0x80u, a3);
  if (!result)
  {
    *a2 = v8;
    *(a2 + 4) = v9;
    *(a2 + 6) = v10;
  }

  return result;
}

uint64_t i40e_aq_set_default_vsi(uint64_t a1, __int16 a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 596);
  v7[4] = 524296;
  v8 = a2;
  return i40e_asq_send_command(a1, v7, 0, 0, a3);
}

uint64_t i40e_aq_clear_default_vsi(uint64_t a1, __int16 a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 596);
  v7[4] = 0x80000;
  v8 = a2;
  return i40e_asq_send_command(a1, v7, 0, 0, a3);
}

uint64_t i40e_aq_set_vsi_unicast_promiscuous(uint64_t a1, __int16 a2, int a3, _OWORD *a4, int a5)
{
  i40e_fill_default_direct_cmd_desc(v13, 596);
  if (!a3 || !a5)
  {
    v11 = *(a1 + 900);
    LOWORD(v14) = a3;
    HIWORD(v14) = 1;
    if (v11 > 1)
    {
      goto LABEL_15;
    }

LABEL_13:
    if (v11 != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v10 = *(a1 + 900);
  if (v10 >= 2)
  {
    v14 = 98305;
LABEL_15:
    HIWORD(v14) = -32767;
    goto LABEL_16;
  }

  if (v10 != 1)
  {
    v11 = 0;
LABEL_12:
    v14 = 65537;
    goto LABEL_13;
  }

  if (*(a1 + 902) < 5u)
  {
    v11 = 1;
    goto LABEL_12;
  }

  v14 = 98305;
LABEL_14:
  if (*(a1 + 902) >= 5u)
  {
    goto LABEL_15;
  }

LABEL_16:
  v15 = a2;
  return i40e_asq_send_command(a1, v13, 0, 0, a4);
}

uint64_t i40e_aq_set_vsi_multicast_promiscuous(uint64_t a1, __int16 a2, int a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v10, 596);
  if (a3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v10[8] = v8;
  v10[9] = 2;
  v10[10] = a2;
  return i40e_asq_send_command(a1, v10, 0, 0, a4);
}

uint64_t i40e_aq_set_vsi_full_promiscuous(uint64_t a1, __int16 a2, int a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v10, 596);
  if (a3)
  {
    v8 = 7;
  }

  else
  {
    v8 = 0;
  }

  v10[8] = v8;
  v10[9] = 7;
  v10[10] = a2;
  return i40e_asq_send_command(a1, v10, 0, 0, a4);
}

uint64_t i40e_aq_set_vsi_mc_promisc_on_vlan(uint64_t a1, __int16 a2, int a3, __int16 a4, _OWORD *a5)
{
  i40e_fill_default_direct_cmd_desc(v12, 596);
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v12[8] = v10;
  v12[9] = 2;
  v12[10] = a2;
  v12[11] = a4 | 0x8000;
  return i40e_asq_send_command(a1, v12, 0, 0, a5);
}

uint64_t i40e_aq_set_vsi_uc_promisc_on_vlan(uint64_t a1, __int16 a2, int a3, __int16 a4, _OWORD *a5)
{
  i40e_fill_default_direct_cmd_desc(v12, 596);
  v10 = *(a1 + 900);
  if (!a3)
  {
    v13 = 0x10000;
    if (v10 > 1)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (v10 != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v10 >= 2)
  {
    v13 = 98305;
LABEL_14:
    HIWORD(v13) = -32767;
    goto LABEL_15;
  }

  if (v10 != 1)
  {
    v10 = 0;
LABEL_11:
    v13 = 65537;
    goto LABEL_12;
  }

  if (*(a1 + 902) < 5u)
  {
    v10 = 1;
    goto LABEL_11;
  }

  v13 = 98305;
LABEL_13:
  if (*(a1 + 902) >= 5u)
  {
    goto LABEL_14;
  }

LABEL_15:
  v14 = a2;
  v15 = a4 | 0x8000;
  return i40e_asq_send_command(a1, v12, 0, 0, a5);
}

uint64_t i40e_aq_set_vsi_bc_promisc_on_vlan(uint64_t a1, __int16 a2, int a3, __int16 a4, _OWORD *a5)
{
  i40e_fill_default_direct_cmd_desc(v12, 596);
  if (a3)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v12[8] = v10;
  v12[9] = 4;
  v12[10] = a2;
  v12[11] = a4 | 0x8000;
  return i40e_asq_send_command(a1, v12, 0, 0, a5);
}

uint64_t i40e_aq_set_vsi_broadcast(uint64_t a1, __int16 a2, int a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v10, 596);
  if (a3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v11 = v11 & 0xFFFB | v8;
  v12 = 4;
  v13 = a2;
  return i40e_asq_send_command(a1, v10, 0, 0, a4);
}

uint64_t i40e_aq_set_vsi_vlan_promisc(uint64_t a1, __int16 a2, int a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v10, 596);
  if (a3)
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  v10[8] = v8;
  v10[9] = 16;
  v10[10] = a2;
  return i40e_asq_send_command(a1, v10, 0, 0, a4);
}

uint64_t i40e_aq_get_vsi_params(uint64_t a1, __int16 *a2)
{
  i40e_fill_default_direct_cmd_desc(v5, 530);
  v6 = *a2;
  v5[0] |= 0x1000u;
  result = i40e_asq_send_command(a1, v5, a2 + 8, 0x80u, 0);
  if (!result)
  {
    *a2 = v6;
    a2[2] = v7;
    *(a2 + 3) = v8;
  }

  return result;
}

uint64_t i40e_aq_update_vsi_params(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 529);
  v7[8] = *a2;
  v7[0] |= 0x1400u;
  result = i40e_asq_send_command(a1, v7, (a2 + 16), 0x80u, a3);
  *(a2 + 6) = v8;
  return result;
}

uint64_t i40e_aq_get_switch_config(uint64_t a1, void *a2, unsigned int a3, __int16 *a4, _OWORD *a5)
{
  i40e_fill_default_direct_cmd_desc(v12, 512);
  if (a3 <= 0x200)
  {
    v10 = 4096;
  }

  else
  {
    v10 = 4608;
  }

  v12[0] |= v10;
  v13 = *a4;
  result = i40e_asq_send_command(a1, v12, a2, a3, a5);
  *a4 = v13;
  return result;
}

uint64_t i40e_aq_set_switch_config(uint64_t a1, __int16 a2, __int16 a3, char a4, _OWORD *a5)
{
  i40e_fill_default_direct_cmd_desc(v11, 517);
  v11[8] = a2;
  v11[9] = a3;
  v13 = a4;
  if ((*(a1 + 1688) & 2) != 0)
  {
    v11[10] = *(a1 + 1696);
    v12 = *(a1 + 1698);
  }

  return i40e_asq_send_command(a1, v11, 0, 0, a5);
}

uint64_t i40e_aq_get_firmware_version(uint64_t a1, _WORD *a2, _WORD *a3, _DWORD *a4, _WORD *a5, unsigned __int16 *a6, _OWORD *a7)
{
  i40e_fill_default_direct_cmd_desc(v17, 1);
  result = i40e_asq_send_command(a1, v17, 0, 0, a7);
  if (!result)
  {
    if (a2)
    {
      *a2 = v18;
    }

    if (a3)
    {
      *a3 = v19;
    }

    if (a4)
    {
      *a4 = v17[5];
    }

    if (a5)
    {
      *a5 = v20;
    }

    if (a6)
    {
      v15 = v21;
      *a6 = v21;
      if (a3)
      {
        if (a2 && a5 && *a5 == 1 && v15 == 1)
        {
          v16 = *a2;
          if (v16 == 4)
          {
            if (*a3 > 1u)
            {
              goto LABEL_21;
            }
          }

          else if (v16 >= 5)
          {
LABEL_21:
            *a6 = 2;
          }
        }
      }
    }
  }

  return result;
}

uint64_t i40e_aq_send_driver_version(uint64_t a1, _DWORD *a2, _OWORD *a3)
{
  if (!a2)
  {
    return 4294967291;
  }

  i40e_fill_default_direct_cmd_desc(v10, 2);
  v6 = 0;
  v10[0] |= 0x1400u;
  v8 = *a2;
  v7 = (a2 + 1);
  v11 = v8;
  do
  {
    if (v7[v6] < 1)
    {
      break;
    }

    ++v6;
  }

  while (v6 != 32);
  return i40e_asq_send_command(a1, v10, v7, v6, a3);
}

uint64_t i40e_get_link_status(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 64) == 1)
  {
    updated = i40e_update_link_info(a1);
    v5 = updated;
    if (updated && (pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): get link failed: status %d\n\n", "i40e_get_link_status", 2853, updated);
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = *(a1 + 24) & 1;
  return v5;
}

uint64_t i40e_get_link_speed(uint64_t a1)
{
  if (*(a1 + 64) == 1 && i40e_aq_get_link_info(a1, 1, 0, 0))
  {
    return 0;
  }

  else
  {
    return *(a1 + 20);
  }
}

uint64_t i40e_aq_add_veb(uint64_t a1, int a2, int a3, char a4, int a5, _WORD *a6, int a7, _OWORD *a8)
{
  if ((a2 != 0) == (a3 == 0))
  {
    return 4294967291;
  }

  v23 = v8;
  v24 = v9;
  v15 = a3;
  i40e_fill_default_direct_cmd_desc(v20, 560);
  if (a5)
  {
    v18 = 2;
  }

  else
  {
    v18 = 4;
  }

  v20[8] = a2;
  v20[9] = v15;
  v21 = a4;
  if (!a2)
  {
    ++v18;
  }

  if (!a7)
  {
    v18 |= 0x10u;
  }

  v20[10] = v18;
  result = i40e_asq_send_command(a1, v20, 0, 0, a8);
  if (a6)
  {
    if (!result)
    {
      *a6 = v22;
    }
  }

  return result;
}

uint64_t i40e_aq_get_veb_parameters(uint64_t a1, int a2, _WORD *a3, _BYTE *a4, _WORD *a5, _WORD *a6, _WORD *a7, _OWORD *a8)
{
  if (!a2)
  {
    return 4294967291;
  }

  v14 = a2;
  i40e_fill_default_direct_cmd_desc(v17, 562);
  v17[8] = v14;
  result = i40e_asq_send_command(a1, v17, 0, 0, a8);
  if (!result)
  {
    if (a3)
    {
      *a3 = v17[9];
    }

    if (a5)
    {
      *a5 = v19;
    }

    if (a6)
    {
      *a6 = v20;
    }

    if (a7)
    {
      *a7 = v21;
    }

    result = 0;
    if (a4)
    {
      *a4 = v18 & 1;
    }
  }

  return result;
}

uint64_t i40e_aq_add_macvlan(uint64_t a1, __int16 a2, _WORD *a3, unsigned int a4, _OWORD *a5)
{
  result = 4294967291;
  if (a1 && a3 && a4)
  {
    i40e_fill_default_direct_cmd_desc(v15, 592);
    v15[8] = a4;
    v15[9] = a2 | 0x8000;
    v16 = 0;
    v11 = a4;
    v12 = a3 + 4;
    do
    {
      if (*(v12 - 4))
      {
        *v12 |= 0x10u;
      }

      v12 += 8;
      --v11;
    }

    while (v11);
    v13 = 16 * (a4 & 0xFFF);
    if (v13 <= 0x200)
    {
      v14 = 5120;
    }

    else
    {
      v14 = 5632;
    }

    v15[0] |= v14;
    return i40e_asq_send_command(a1, v15, a3, v13, a5);
  }

  return result;
}

uint64_t i40e_aq_remove_macvlan(uint64_t a1, __int16 a2, void *a3, int a4, _OWORD *a5)
{
  result = 4294967291;
  if (a1)
  {
    if (a3)
    {
      v8 = a4;
      if (a4)
      {
        v11 = 16 * (a4 & 0xFFF);
        i40e_fill_default_direct_cmd_desc(v13, 593);
        v13[8] = v8;
        v13[9] = a2 | 0x8000;
        v14 = 0;
        if (v11 <= 0x200)
        {
          v12 = 5120;
        }

        else
        {
          v12 = 5632;
        }

        v13[0] |= v12;
        return i40e_asq_send_command(a1, v13, a3, 16 * (v8 & 0xFFFu), a5);
      }
    }
  }

  return result;
}

uint64_t i40e_aq_add_mirrorrule(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, int a5, void *a6, _OWORD *a7, _WORD *a8, _WORD *a9, _WORD *a10)
{
  if ((a3 & 0xFFFE) == 4 || a5 && a6)
  {
    return i40e_mirrorrule_op(a1, 608, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  else
  {
    return 4294967291;
  }
}

uint64_t i40e_mirrorrule_op(uint64_t a1, __int16 a2, __int16 a3, char a4, __int16 a5, __int16 a6, void *a7, _OWORD *a8, _WORD *a9, _WORD *a10, _WORD *a11)
{
  v18 = 2 * a6;
  i40e_fill_default_direct_cmd_desc(v21, a2);
  v21[8] = a3;
  v22 = a4 & 7;
  v23 = a6;
  v24 = a5;
  if (a7)
  {
    v19 = v21[0];
    v21[0] |= 0x1400u;
    if (v18 >= 0x201u)
    {
      v21[0] = v19 | 0x1600;
    }
  }

  result = i40e_asq_send_command(a1, v21, a7, v18, a8);
  if (!result || *(a1 + 908) == 16)
  {
    if (a9)
    {
      *a9 = v22;
    }

    if (a10)
    {
      *a10 = v23;
    }

    if (a11)
    {
      *a11 = v24;
    }
  }

  return result;
}

uint64_t i40e_aq_delete_mirrorrule(uint64_t a1, __int16 a2, int a3, __int16 a4, int a5, void *a6, _OWORD *a7, _WORD *a8, _WORD *a9)
{
  if (a3 != 3 || a5 && a6)
  {
    return i40e_mirrorrule_op(a1, 609, a2, a3, a4, a5, a6, a7, 0, a8, a9);
  }

  else
  {
    return 4294967291;
  }
}

uint64_t i40e_aq_add_vlan(uint64_t a1, __int16 a2, void *a3, unsigned int a4, _OWORD *a5)
{
  result = 4294967291;
  if (a1 && a3 && a4)
  {
    i40e_fill_default_direct_cmd_desc(v12, 594);
    v12[8] = a4;
    v12[9] = a2 | 0x8000;
    v13 = 0;
    if (a4 <= 0x40)
    {
      v11 = 5120;
    }

    else
    {
      v11 = 5632;
    }

    v12[0] |= v11;
    return i40e_asq_send_command(a1, v12, a3, 8 * a4, a5);
  }

  return result;
}

uint64_t i40e_aq_remove_vlan(uint64_t a1, __int16 a2, void *a3, unsigned int a4, _OWORD *a5)
{
  result = 4294967291;
  if (a1 && a3 && a4)
  {
    i40e_fill_default_direct_cmd_desc(v12, 595);
    v12[8] = a4;
    v12[9] = a2 | 0x8000;
    v13 = 0;
    if (a4 <= 0x40)
    {
      v11 = 5120;
    }

    else
    {
      v11 = 5632;
    }

    v12[0] |= v11;
    return i40e_asq_send_command(a1, v12, a3, 8 * a4, a5);
  }

  return result;
}

uint64_t i40e_aq_send_msg_to_vf(uint64_t a1, int a2, int a3, int a4, void *a5, unsigned int a6, _OWORD *a7)
{
  i40e_fill_default_direct_cmd_desc(v17, 2050);
  v19 = a4;
  v20 = a2;
  v18 = a3;
  v14 = v17[0];
  v17[0] |= 0x2000u;
  if (a6)
  {
    if (a6 <= 0x200)
    {
      v15 = 13312;
    }

    else
    {
      v15 = 13824;
    }

    v17[0] = v14 | v15;
    v17[2] = a6;
  }

  return i40e_asq_send_command(a1, v17, a5, a6, a7);
}

uint64_t i40e_aq_debug_read_register(uint64_t a1, int a2, unint64_t *a3, _OWORD *a4)
{
  if (!a3)
  {
    return 4294967291;
  }

  i40e_fill_default_direct_cmd_desc(v9, 65283);
  v9[5] = a2;
  result = i40e_asq_send_command(a1, v9, 0, 0, a4);
  if (!result)
  {
    *a3 = v9[7] | (v9[6] << 32);
  }

  return result;
}

uint64_t i40e_aq_debug_write_register(uint64_t a1, int a2, uint64_t a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v9, 65284);
  v9[5] = a2;
  v9[6] = HIDWORD(a3);
  v9[7] = a3;
  return i40e_asq_send_command(a1, v9, 0, 0, a4);
}

uint64_t i40e_aq_request_resource(uint64_t a1, __int16 a2, __int16 a3, int a4, void *a5, _OWORD *a6)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_aq_request_resource", 3466, "i40e_aq_request_resource");
  }

  i40e_fill_default_direct_cmd_desc(v13, 8);
  v14 = a2;
  v15 = a3;
  v17 = a4;
  result = i40e_asq_send_command(a1, v13, 0, 0, a6);
  if (!result || *(a1 + 908) == 12)
  {
    *a5 = v16;
  }

  return result;
}

uint64_t i40e_aq_release_resource(uint64_t a1, __int16 a2, int a3, _OWORD *a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_aq_release_resource", 3506, "i40e_aq_release_resource");
  }

  i40e_fill_default_direct_cmd_desc(v9, 9);
  v10 = a2;
  v11 = a3;
  return i40e_asq_send_command(a1, v9, 0, 0, a4);
}

uint64_t i40e_aq_read_nvm(uint64_t a1, char a2, unsigned int a3, unsigned int a4, void *a5, int a6, _OWORD *a7)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_aq_read_nvm", 3540, "i40e_aq_read_nvm");
  }

  if (HIBYTE(a3))
  {
    return 4294967291;
  }

  i40e_fill_default_direct_cmd_desc(v16, 1793);
  if (a6)
  {
    v17 |= 1u;
  }

  v18 = a2;
  v20 = a3;
  v19 = a4;
  if (a4 <= 0x200)
  {
    v14 = 4096;
  }

  else
  {
    v14 = 4608;
  }

  v16[0] |= v14;
  return i40e_asq_send_command(a1, v16, a5, a4, a7);
}

uint64_t i40e_aq_read_nvm_config(uint64_t a1, __int16 a2, int a3, void *a4, unsigned int a5, _WORD *a6, _OWORD *a7)
{
  i40e_fill_default_direct_cmd_desc(v16, 1796);
  if (a5 <= 0x200)
  {
    v14 = 4096;
  }

  else
  {
    v14 = 4608;
  }

  v16[0] |= v14;
  v16[8] = a2;
  v16[10] = a3;
  v16[11] = ((a2 << 14) >> 15) & HIWORD(a3);
  result = i40e_asq_send_command(a1, v16, a4, a5, a7);
  if (a6)
  {
    if (!result)
    {
      *a6 = v16[9];
    }
  }

  return result;
}

uint64_t i40e_aq_write_nvm_config(uint64_t a1, __int16 a2, void *a3, unsigned int a4, __int16 a5, _OWORD *a6)
{
  i40e_fill_default_direct_cmd_desc(v14, 1797);
  if (a4 <= 0x200)
  {
    v12 = 5120;
  }

  else
  {
    v12 = 5632;
  }

  v14[0] |= v12;
  v14[9] = a5;
  v14[8] = a2;
  return i40e_asq_send_command(a1, v14, a3, a4, a6);
}

uint64_t i40e_aq_nvm_update_in_process(uint64_t a1, char a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 1798);
  v7[16] = a2;
  return i40e_asq_send_command(a1, v7, 0, 0, a3);
}

uint64_t i40e_aq_min_rollback_rev_update(uint64_t a1, char a2, char a3, int a4, _OWORD *a5)
{
  i40e_fill_default_direct_cmd_desc(v11, 1799);
  v11[16] = a2;
  v11[17] = a3;
  v12 = a4;
  return i40e_asq_send_command(a1, v11, 0, 0, a5);
}

uint64_t i40e_aq_oem_post_update(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v8, 1824);
  LODWORD(result) = i40e_asq_send_command(a1, v8, 0, 0, a4);
  if (v8[3] != 3 || result == 0)
  {
    return result;
  }

  else
  {
    return 4294967236;
  }
}

uint64_t i40e_aq_erase_nvm(uint64_t a1, char a2, unsigned int a3, __int16 a4, int a5, _OWORD *a6)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_aq_erase_nvm", 3739, "i40e_aq_erase_nvm");
  }

  if (HIBYTE(a3))
  {
    return 4294967291;
  }

  i40e_fill_default_direct_cmd_desc(v13, 1794);
  if (a5)
  {
    v14 |= 1u;
  }

  v15 = a2;
  v17 = a3;
  v16 = a4;
  return i40e_asq_send_command(a1, v13, 0, 0, a6);
}

uint64_t i40e_aq_discover_capabilities(uint64_t a1, unsigned int *a2, unsigned int a3, _WORD *a4, int a5, _OWORD *a6)
{
  if ((a5 - 12) < 0xFFFFFFFE)
  {
    return 4294967291;
  }

  v50 = v6;
  v51 = v7;
  i40e_fill_default_direct_cmd_desc(v46, a5);
  if (a3 <= 0x200)
  {
    v15 = 4096;
  }

  else
  {
    v15 = 4608;
  }

  v46[0] |= v15;
  result = i40e_asq_send_command(a1, v46, a2, a3, a6);
  *a4 = v46[2];
  if (!result)
  {
    v16 = v47;
    v49 = 0;
    v17 = 416;
    if (a5 == 11)
    {
      v17 = 192;
    }

    v18 = a1 + v17;
    if (v47)
    {
      do
      {
        v19 = *a2;
        v20 = a2[1];
        v21 = a2[2];
        v22 = a2[3];
        v23 = *(a2 + 2);
        if (v19 <= 0x3F)
        {
          switch(*a2)
          {
            case 1:
              *v18 = v20;
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: Switch mode = %d\n\n");
              }

              break;
            case 2:
              *(v18 + 4) = v20;
              if (v23 < 2)
              {
                *(v18 + 8) = 0;
              }

              else
              {
                *(v18 + 8) = v21;
                if ((pcindkll & 0x100000) != 0)
                {
                  IOLog("ixl:%s(%d): HW Capability: Protocols over MCTP = %d\n\n", "i40e_parse_discover_capabilities", 3813, v21);
                }
              }

              if ((pcindkll & 0x100000) != 0)
              {
                v44 = *(v18 + 4);
                IOLog("ixl:%s(%d): HW Capability: Management Mode = %d\n\n");
              }

              break;
            case 3:
              *(v18 + 12) = v20;
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: NPAR enable = %d\n\n");
              }

              break;
            case 4:
              *(v18 + 16) = v20;
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: OS2BMC = %d\n\n");
              }

              break;
            case 5:
              *(v18 + 20) = v20;
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: Valid Functions = %d\n\n");
              }

              break;
            case 8:
              *(a1 + 1684) = v20;
              *(a1 + 1686) = v21;
              *(v18 + 209) = v22 & 1;
              *(v18 + 212) = (v22 >> 1) & 1;
              *(v18 + 216) = (v22 & 4) != 0;
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: WOL proxy filters = %d\n\n");
              }

              break;
            case 0x12:
              if (v20 == 1)
              {
                *(v18 + 24) = 1;
              }

              if ((pcindkll & 0x100000) != 0)
              {
                v38 = *(v18 + 24);
                IOLog("ixl:%s(%d): HW Capability: SR-IOV = %d\n\n");
              }

              break;
            case 0x13:
              *(v18 + 140) = v20;
              *(v18 + 144) = v21;
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: VF count = %d\n\n", "i40e_parse_discover_capabilities", 3850, v20);
                if ((pcindkll & 0x100000) != 0)
                {
                  v37 = *(v18 + 144);
                  IOLog("ixl:%s(%d): HW Capability: VF base_id = %d\n\n");
                }
              }

              break;
            case 0x14:
              if (v20 == 1)
              {
                *(v18 + 25) = 1;
              }

              if ((pcindkll & 0x100000) != 0)
              {
                v36 = *(v18 + 25);
                IOLog("ixl:%s(%d): HW Capability: VMDQ = %d\n\n");
              }

              break;
            case 0x15:
              if (v20 == 1)
              {
                *(v18 + 26) = 1;
              }

              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: 802.1Qbg = %d\n\n");
              }

              break;
            case 0x16:
              if (v20 == 1)
              {
                *(v18 + 27) = 1;
              }

              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: 802.1Qbh = %d\n\n");
              }

              break;
            case 0x17:
              *(v18 + 148) = v20;
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: VSI count = %d\n\n");
              }

              break;
            case 0x18:
              if (v20 == 1)
              {
                *(v18 + 28) = 1;
                *(v18 + 192) = v21;
                *(v18 + 196) = v22;
              }

              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: DCB = %d\n\n", "i40e_parse_discover_capabilities", 3886, *(v18 + 28));
                if ((pcindkll & 0x100000) != 0)
                {
                  IOLog("ixl:%s(%d): HW Capability: TC Mapping = %d\n\n", "i40e_parse_discover_capabilities", 3889, v21);
                  if ((pcindkll & 0x100000) != 0)
                  {
                    v35 = *(v18 + 196);
                    IOLog("ixl:%s(%d): HW Capability: TC Max = %d\n\n");
                  }
                }
              }

              break;
            case 0x21:
              if (v20 == 1)
              {
                *(v18 + 29) = 1;
              }

              if ((pcindkll & 0x100000) != 0)
              {
                v34 = *(v18 + 29);
                IOLog("ixl:%s(%d): HW Capability: FCOE = %d\n\n");
              }

              break;
            case 0x22:
              if (v20 == 1)
              {
                *(v18 + 30) = 1;
              }

              if ((pcindkll & 0x100000) != 0)
              {
                v39 = *(v18 + 30);
                IOLog("ixl:%s(%d): HW Capability: iSCSI = %d\n\n");
              }

              break;
            default:
              goto LABEL_144;
          }

          goto LABEL_144;
        }

        if (*a2 > 0x60u)
        {
          if (*a2 > 0x66u)
          {
            if (*a2 > 0xF0u)
            {
              if (v19 == 241)
              {
                if (v23 == 1)
                {
                  if (v20 == 1)
                  {
                    *(v18 + 31) = 1;
                    goto LABEL_140;
                  }
                }

                else
                {
                  if (v20)
                  {
                    *(v18 + 31) = 1;
                  }

                  if ((v20 & 2) != 0)
                  {
LABEL_140:
                    *(v18 + 32) = 1;
                  }
                }

                *(v18 + 36) = v21;
                *(v18 + 40) = v22;
                if ((pcindkll & 0x100000) != 0)
                {
                  IOLog("ixl:%s(%d): HW Capability: Flex10 mode = %d\n\n", "i40e_parse_discover_capabilities", 3965, v21);
                  if ((pcindkll & 0x100000) != 0)
                  {
                    v45 = *(v18 + 40);
                    IOLog("ixl:%s(%d): HW Capability: Flex10 status = %d\n\n");
                  }
                }

                goto LABEL_144;
              }

              if (v19 == 242)
              {
                if (v20 == 1)
                {
                  *(v18 + 46) = 1;
                }

                if ((pcindkll & 0x100000) != 0)
                {
                  v33 = *(v18 + 46);
                  IOLog("ixl:%s(%d): HW Capability: CEM = %d\n\n");
                }
              }
            }

            else if (v19 == 103)
            {
              *(v18 + 208) = v20 != 0;
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: dis_unused_ports = %d\n\n\n");
              }
            }

            else if (v19 == 128)
            {
              if (v20)
              {
                *(v18 + 44) = 1;
              }

              if ((v20 & 2) != 0)
              {
                *(v18 + 45) = 1;
              }
            }
          }

          else if (*a2 > 0x62u)
          {
            if (v19 == 99)
            {
              if (v20 == 1)
              {
                *(v18 + 180) = v22;
                *(v18 + 184) = v21;
              }

              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: MDIO port number = %d\n\n", "i40e_parse_discover_capabilities", 4001, *(v18 + 180));
                if ((pcindkll & 0x100000) != 0)
                {
                  v42 = *(v18 + 184);
                  IOLog("ixl:%s(%d): HW Capability: MDIO port mode = %d\n\n");
                }
              }
            }

            else if (v19 == 100)
            {
              *(v18 + 200) = v20 | (v21 << 32);
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: wr_csr_prot = 0x%llX\n\n\n");
              }
            }
          }

          else if (v19 == 97)
          {
            if (v22 <= 0x1D)
            {
              *(v18 + 72 + v22) = 1;
            }

            if ((pcindkll & 0x100000) != 0)
            {
              IOLog("ixl:%s(%d): HW Capability: LED - PIN %d\n\n");
            }
          }

          else
          {
            if (v22 <= 0x1D)
            {
              *(v18 + 102 + v22) = 1;
            }

            if ((pcindkll & 0x100000) != 0)
            {
              IOLog("ixl:%s(%d): HW Capability: SDP - PIN %d\n\n");
            }
          }
        }

        else
        {
          if (*a2 > 0x43u)
          {
            if (*a2 > 0x45u)
            {
              if (v19 == 70)
              {
                if (v20 == 1)
                {
                  *(v18 + 47) = 1;
                }

                if ((pcindkll & 0x100000) != 0)
                {
                  v43 = *(v18 + 47);
                  IOLog("ixl:%s(%d): HW Capability: IEEE 1588 = %d\n\n");
                }
              }

              else if (v19 == 81)
              {
                if (v20 == 1)
                {
                  *(v18 + 48) = 1;
                }

                if ((pcindkll & 0x100000) != 0)
                {
                  v32 = *(v18 + 48);
                  IOLog("ixl:%s(%d): HW Capability: iWARP = %d\n\n");
                }
              }
            }

            else if (v19 == 68)
            {
              *(v18 + 168) = v20;
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: MSIX VF vector count = %d\n\n");
              }
            }

            else
            {
              *(v18 + 49) = 1;
              *(v18 + 52) = v20;
              *(v18 + 56) = v21;
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: Flow Director = 1\n\n", "i40e_parse_discover_capabilities", 4018);
                if ((pcindkll & 0x100000) != 0)
                {
                  v31 = *(v18 + 52);
                  IOLog("ixl:%s(%d): HW Capability: Guaranteed FD filters = %d\n\n");
                }
              }
            }

            goto LABEL_144;
          }

          if (*a2 > 0x41u)
          {
            if (v19 != 66)
            {
              *(v18 + 164) = v20;
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: MSIX vector count = %d\n\n");
              }

              goto LABEL_144;
            }

            *(v18 + 156) = v20;
            *(v18 + 160) = v22;
            if ((pcindkll & 0x100000) != 0)
            {
              IOLog("ixl:%s(%d): HW Capability: Tx QP = %d\n\n", "i40e_parse_discover_capabilities", 3931, v20);
              if ((pcindkll & 0x100000) != 0)
              {
                v41 = *(v18 + 160);
                goto LABEL_121;
              }
            }
          }

          else
          {
            if (v19 == 64)
            {
              *(v18 + 60) = 1;
              *(v18 + 64) = v20;
              *(v18 + 68) = v21;
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: RSS = %d\n\n", "i40e_parse_discover_capabilities", 3910, 1);
                if ((pcindkll & 0x100000) != 0)
                {
                  IOLog("ixl:%s(%d): HW Capability: RSS table size = %d\n\n", "i40e_parse_discover_capabilities", 3913, *(v18 + 64));
                  if ((pcindkll & 0x100000) != 0)
                  {
                    v40 = *(v18 + 68);
                    IOLog("ixl:%s(%d): HW Capability: RSS table width = %d\n\n");
                  }
                }
              }

              goto LABEL_144;
            }

            if (v19 == 65)
            {
              *(v18 + 152) = v20;
              *(v18 + 160) = v22;
              if ((pcindkll & 0x100000) != 0)
              {
                IOLog("ixl:%s(%d): HW Capability: Rx QP = %d\n\n", "i40e_parse_discover_capabilities", 3922, v20);
                if ((pcindkll & 0x100000) != 0)
                {
                  v30 = *(v18 + 160);
LABEL_121:
                  IOLog("ixl:%s(%d): HW Capability: base_queue = %d\n\n");
                }
              }
            }
          }
        }

LABEL_144:
        a2 += 8;
        --v16;
      }

      while (v16);
    }

    if (*(v18 + 29) == 1 && (pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): device is FCoE capable\n\n", "i40e_parse_discover_capabilities", 4061);
    }

    *(v18 + 29) = 0;
    *(a1 + 650) = 0;
    v24 = 753952;
    v25 = 4;
    do
    {
      v48 = 0;
      i40e_aq_debug_read_register(a1, v24, &v48, 0);
      if ((v48 & 1) == 0)
      {
        ++*(a1 + 650);
      }

      v24 += 4;
      --v25;
    }

    while (v25);
    if (*(a1 + 80) == 3 && !i40e_acquire_nvm(a1, 1))
    {
      if (!i40e_aq_read_nvm(a1, 72, 0x56u, 2u, &v49, 1, 0) && v49 < 0)
      {
        *(a1 + 650) = 4;
      }

      i40e_release_nvm(a1);
    }

    v26 = *(v18 + 20);
    if (v26)
    {
      v27 = 0;
      do
      {
        v27 += v26 & 1;
        v28 = v26 > 1;
        v26 >>= 1;
      }

      while (v28);
    }

    else
    {
      v27 = 0;
    }

    v29 = *(a1 + 650);
    if (*(a1 + 650))
    {
      *(a1 + 646) = *(a1 + 642) / *(a1 + 650) + 1;
      *(a1 + 648) = v27 / v29;
    }

    result = 0;
    *(v18 + 188) = 5;
  }

  return result;
}

uint64_t i40e_aq_update_nvm(uint64_t a1, char a2, unsigned int a3, unsigned int a4, void *a5, int a6, int a7, _OWORD *a8)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_aq_update_nvm", 4192, "i40e_aq_update_nvm");
  }

  if (HIBYTE(a3))
  {
    return 4294967291;
  }

  i40e_fill_default_direct_cmd_desc(v19, 1795);
  if (a6)
  {
    v20 |= 1u;
  }

  if (*(a1 + 80) == 3)
  {
    if (a7 == 1)
    {
      v16 = 6;
      goto LABEL_12;
    }

    if (a7 == 2)
    {
      v16 = 2;
LABEL_12:
      v20 |= v16;
    }
  }

  v21 = a2;
  v23 = a3;
  v22 = a4;
  if (a4 <= 0x200)
  {
    v18 = 5120;
  }

  else
  {
    v18 = 5632;
  }

  v19[0] |= v18;
  return i40e_asq_send_command(a1, v19, a5, a4, a8);
}

uint64_t i40e_aq_get_lldp_mib(uint64_t a1, char a2, char a3, void *a4, unsigned int a5, _WORD *a6, _WORD *a7, _OWORD *a8)
{
  result = 4294967291;
  if (a4 && a5)
  {
    i40e_fill_default_direct_cmd_desc(v18, 2560);
    v19 = a3 & 3 | (4 * (a2 & 3));
    v18[2] = a5;
    v17 = a5 <= 0x200 ? 4096 : 4608;
    v18[0] |= v17;
    result = i40e_asq_send_command(a1, v18, a4, a5, a8);
    if (!result)
    {
      if (a6)
      {
        *a6 = v20;
      }

      result = 0;
      if (a7)
      {
        *a7 = v21;
      }
    }
  }

  return result;
}

uint64_t i40e_aq_set_lldp_mib(uint64_t a1, char a2, void *a3, unsigned int a4, _OWORD *a5)
{
  result = 4294967291;
  if (a3 && a4)
  {
    i40e_fill_default_direct_cmd_desc(v12, 2568);
    if (a4 <= 0x200)
    {
      v11 = 5120;
    }

    else
    {
      v11 = 5632;
    }

    v12[0] |= v11;
    v12[2] = a4;
    v13 = a2;
    v14 = a4;
    v15 = HIDWORD(a3);
    v16 = a3;
    return i40e_asq_send_command(a1, v12, a3, a4, a5);
  }

  return result;
}

uint64_t i40e_aq_cfg_lldp_mib_change_event(uint64_t a1, char a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 2561);
  if ((a2 & 1) == 0)
  {
    v8 |= 1u;
  }

  return i40e_asq_send_command(a1, v7, 0, 0, a3);
}

uint64_t i40e_aq_restore_lldp(uint64_t a1, _BYTE *a2, int a3, _OWORD *a4)
{
  if ((*(a1 + 1688) & 0x20) != 0)
  {
    i40e_fill_default_direct_cmd_desc(v9, 2570);
    if (a3)
    {
      v10 |= 1u;
    }

    result = i40e_asq_send_command(a1, v9, 0, 0, a4);
    if (a2)
    {
      *a2 = v10 & 1;
    }
  }

  else
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): Restore LLDP not supported by current FW version.\n\n", "i40e_aq_restore_lldp", 4370);
    }

    return 4294967285;
  }

  return result;
}

uint64_t i40e_aq_stop_lldp(uint64_t a1, int a2, int a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v9, 2565);
  if (a2)
  {
    v10 |= 1u;
  }

  if (a3)
  {
    if ((*(a1 + 1688) & 0x20) != 0)
    {
      v10 |= 2u;
    }

    else if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): Persistent Stop LLDP not supported by current FW version.\n\n", "i40e_aq_stop_lldp", 4415);
    }
  }

  return i40e_asq_send_command(a1, v9, 0, 0, a4);
}

uint64_t i40e_aq_start_lldp(uint64_t a1, int a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 2566);
  v8 = 1;
  if (a2)
  {
    if ((*(a1 + 1688) & 0x20) != 0)
    {
      v8 = 3;
    }

    else if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): Persistent Start LLDP not supported by current FW version.\n\n", "i40e_aq_start_lldp", 4449);
    }
  }

  return i40e_asq_send_command(a1, v7, 0, 0, a3);
}

uint64_t i40e_aq_set_dcb_parameters(uint64_t a1, int a2, _OWORD *a3)
{
  if ((*(a1 + 1688) & 0x10) == 0)
  {
    return 4294967285;
  }

  v10 = v3;
  v11 = v4;
  i40e_fill_default_direct_cmd_desc(v9, 771);
  if (a2)
  {
    v9[8] = 257;
  }

  return i40e_asq_send_command(a1, v9, 0, 0, a3);
}

uint64_t i40e_aq_get_cee_dcb_config(uint64_t a1, void *a2, unsigned int a3, _OWORD *a4)
{
  result = 4294967291;
  if (a2)
  {
    if (a3)
    {
      i40e_fill_default_direct_cmd_desc(v9, 2567);
      v9[0] |= 0x1000u;
      return i40e_asq_send_command(a1, v9, a2, a3, a4);
    }
  }

  return result;
}

uint64_t i40e_aq_start_stop_dcbx(uint64_t a1, int a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 2569);
  if (a2)
  {
    v7[16] = 1;
  }

  return i40e_asq_send_command(a1, v7, 0, 0, a3);
}

uint64_t i40e_aq_add_udp_tunnel(uint64_t a1, __int16 a2, char a3, _BYTE *a4, _OWORD *a5)
{
  i40e_fill_default_direct_cmd_desc(v11, 2816);
  v11[8] = a2;
  v13 = a3;
  result = i40e_asq_send_command(a1, v11, 0, 0, a5);
  if (a4)
  {
    if (!result)
    {
      *a4 = v12;
    }
  }

  return result;
}

uint64_t i40e_aq_del_udp_tunnel(uint64_t a1, char a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 2817);
  v7[18] = a2;
  return i40e_asq_send_command(a1, v7, 0, 0, a3);
}

uint64_t i40e_aq_get_switch_resource_alloc(uint64_t a1, _BYTE *a2, void *a3, __int16 a4, _OWORD *a5)
{
  v9 = 16 * (a4 & 0xFFF);
  i40e_fill_default_direct_cmd_desc(v12, 516);
  if (v9 <= 0x200)
  {
    v10 = 4096;
  }

  else
  {
    v10 = 4608;
  }

  v12[0] |= v10;
  result = i40e_asq_send_command(a1, v12, a3, v9, a5);
  if (a2)
  {
    if (!result)
    {
      *a2 = v13;
    }
  }

  return result;
}

uint64_t i40e_aq_delete_element(uint64_t a1, int a2, _OWORD *a3)
{
  if (!a2)
  {
    return 4294967291;
  }

  v4 = a2;
  i40e_fill_default_direct_cmd_desc(v7, 579);
  v7[8] = v4;
  return i40e_asq_send_command(a1, v7, 0, 0, a3);
}

uint64_t i40e_aq_add_pvirt(uint64_t a1, __int16 a2, __int16 a3, int a4, _WORD *a5)
{
  if (!a4)
  {
    return 4294967291;
  }

  v6 = a4;
  i40e_fill_default_direct_cmd_desc(v11, 544);
  v12 = a2;
  v13 = a3;
  v14 = v6;
  result = i40e_asq_send_command(a1, v11, 0, 0, 0);
  if (a5)
  {
    if (!result)
    {
      *a5 = v12;
    }
  }

  return result;
}

uint64_t i40e_aq_add_tag(uint64_t a1, int a2, int a3, __int16 a4, __int16 a5, _WORD *a6, _WORD *a7, _OWORD *a8)
{
  if (!a3)
  {
    return 4294967291;
  }

  v13 = a3;
  i40e_fill_default_direct_cmd_desc(v17, 597);
  v17[9] = v13;
  v17[10] = a4;
  if (a2)
  {
    v17[8] = 1;
    v17[11] = a5;
  }

  result = i40e_asq_send_command(a1, v17, 0, 0, a8);
  if (!result)
  {
    if (a6)
    {
      *a6 = v17[14];
    }

    result = 0;
    if (a7)
    {
      *a7 = v17[15];
    }
  }

  return result;
}

uint64_t i40e_aq_remove_tag(uint64_t a1, int a2, __int16 a3, _WORD *a4, _WORD *a5, _OWORD *a6)
{
  if (!a2)
  {
    return 4294967291;
  }

  v10 = a2;
  i40e_fill_default_direct_cmd_desc(v13, 598);
  v13[8] = v10;
  v13[9] = a3;
  result = i40e_asq_send_command(a1, v13, 0, 0, a6);
  if (!result)
  {
    if (a4)
    {
      *a4 = v13[14];
    }

    result = 0;
    if (a5)
    {
      *a5 = v13[15];
    }
  }

  return result;
}

uint64_t i40e_aq_add_mcast_etag(uint64_t a1, int a2, __int16 a3, int a4, void *a5, _WORD *a6, _WORD *a7, _OWORD *a8)
{
  result = 4294967291;
  if (a4)
  {
    v10 = a2;
    if (a2)
    {
      if (a5)
      {
        i40e_fill_default_direct_cmd_desc(v17, 599);
        v17[8] = v10;
        v17[9] = a3;
        LOBYTE(v18) = a4;
        v17[0] |= 0x1400u;
        result = i40e_asq_send_command(a1, v17, a5, 2 * a4, a8);
        if (!result)
        {
          if (a6)
          {
            *a6 = v18;
          }

          result = 0;
          if (a7)
          {
            *a7 = v19;
          }
        }
      }
    }
  }

  return result;
}

uint64_t i40e_aq_remove_mcast_etag(uint64_t a1, int a2, __int16 a3, _WORD *a4, _WORD *a5, _OWORD *a6)
{
  if (!a2)
  {
    return 4294967291;
  }

  v10 = a2;
  i40e_fill_default_direct_cmd_desc(v13, 600);
  v13[8] = v10;
  v13[9] = a3;
  result = i40e_asq_send_command(a1, v13, 0, 0, a6);
  if (!result)
  {
    if (a4)
    {
      *a4 = v13[10];
    }

    result = 0;
    if (a5)
    {
      *a5 = v13[11];
    }
  }

  return result;
}

uint64_t i40e_aq_update_tag(uint64_t a1, int a2, __int16 a3, __int16 a4, _WORD *a5, _WORD *a6, _OWORD *a7)
{
  if (!a2)
  {
    return 4294967291;
  }

  v12 = a2;
  i40e_fill_default_direct_cmd_desc(v15, 601);
  v15[8] = v12;
  v15[9] = a3;
  v15[10] = a4;
  result = i40e_asq_send_command(a1, v15, 0, 0, a7);
  if (!result)
  {
    if (a5)
    {
      *a5 = v15[14];
    }

    result = 0;
    if (a6)
    {
      *a6 = v15[15];
    }
  }

  return result;
}

uint64_t i40e_aq_dcb_ignore_pfc(uint64_t a1, char a2, int a3, _BYTE *a4, _OWORD *a5)
{
  i40e_fill_default_direct_cmd_desc(v11, 769);
  if (a3)
  {
    v13 = 0x80;
  }

  v12 = a2;
  result = i40e_asq_send_command(a1, v11, 0, 0, a5);
  if (a4)
  {
    if (!result)
    {
      *a4 = v12;
    }
  }

  return result;
}

uint64_t i40e_aq_add_statistics(uint64_t a1, int a2, __int16 a3, _WORD *a4, _OWORD *a5)
{
  result = 4294967291;
  if (a2 && a4)
  {
    v10 = a2;
    i40e_fill_default_direct_cmd_desc(v11, 513);
    v11[8] = v10;
    v11[9] = a3;
    result = i40e_asq_send_command(a1, v11, 0, 0, a5);
    if (!result)
    {
      *a4 = v11[10];
    }
  }

  return result;
}

uint64_t i40e_aq_remove_statistics(uint64_t a1, int a2, __int16 a3, __int16 a4, _OWORD *a5)
{
  if (!a2)
  {
    return 4294967291;
  }

  v8 = a2;
  i40e_fill_default_direct_cmd_desc(v11, 514);
  v11[8] = v8;
  v11[9] = a3;
  v11[10] = a4;
  return i40e_asq_send_command(a1, v11, 0, 0, a5);
}

uint64_t i40e_aq_set_port_parameters(uint64_t a1, __int16 a2, __int16 a3, int a4, int a5, _OWORD *a6)
{
  i40e_fill_default_direct_cmd_desc(v14, 515);
  v14[9] = a2;
  v12 = a3 | 2;
  if (!a4)
  {
    v12 = a3;
  }

  if (a5)
  {
    v12 |= 4u;
  }

  v14[8] = v12;
  return i40e_asq_send_command(a1, v14, 0, 0, a6);
}

uint64_t i40e_aq_config_vsi_bw_limit(uint64_t a1, __int16 a2, __int16 a3, char a4, _OWORD *a5)
{
  i40e_fill_default_direct_cmd_desc(v11, 1024);
  v11[8] = a2;
  v11[10] = a3;
  v12 = a4;
  return i40e_asq_send_command(a1, v11, 0, 0, a5);
}

uint64_t i40e_aq_config_switch_comp_bw_limit(uint64_t a1, __int16 a2, __int16 a3, char a4, _OWORD *a5)
{
  i40e_fill_default_direct_cmd_desc(v11, 1040);
  v11[8] = a2;
  v11[10] = a3;
  v12 = a4;
  return i40e_asq_send_command(a1, v11, 0, 0, a5);
}

uint64_t i40e_aq_config_vsi_ets_sla_bw_limit(uint64_t a1, __int16 a2, void *a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v9, 1030);
  v9[0] |= 0x1400u;
  v9[2] = 64;
  v9[8] = a2;
  return i40e_asq_send_command(a1, v9, a3, 0x40u, a4);
}

uint64_t i40e_aq_config_vsi_tc_bw(uint64_t a1, __int16 a2, void *a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v9, 1031);
  v9[0] |= 0x1400u;
  v9[2] = 32;
  v9[8] = a2;
  return i40e_asq_send_command(a1, v9, a3, 0x20u, a4);
}

uint64_t i40e_aq_config_switch_comp_ets_bw_limit(uint64_t a1, __int16 a2, void *a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v9, 1046);
  v9[0] |= 0x1400u;
  v9[2] = 64;
  v9[8] = a2;
  return i40e_asq_send_command(a1, v9, a3, 0x40u, a4);
}

uint64_t i40e_aq_query_vsi_bw_config(uint64_t a1, __int16 a2, void *a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v9, 1032);
  v9[0] |= 0x1000u;
  v9[2] = 64;
  v9[8] = a2;
  return i40e_asq_send_command(a1, v9, a3, 0x40u, a4);
}

uint64_t i40e_aq_query_vsi_ets_sla_config(uint64_t a1, __int16 a2, void *a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v9, 1034);
  v9[0] |= 0x1000u;
  v9[2] = 32;
  v9[8] = a2;
  return i40e_asq_send_command(a1, v9, a3, 0x20u, a4);
}

uint64_t i40e_aq_query_switch_comp_ets_config(uint64_t a1, __int16 a2, void *a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v9, 1048);
  v9[0] |= 0x1000u;
  v9[2] = 64;
  v9[8] = a2;
  return i40e_asq_send_command(a1, v9, a3, 0x40u, a4);
}

uint64_t i40e_aq_query_port_ets_config(uint64_t a1, __int16 a2, void *a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v9, 1049);
  v9[0] |= 0x1000u;
  v9[2] = 68;
  v9[8] = a2;
  return i40e_asq_send_command(a1, v9, a3, 0x44u, a4);
}

uint64_t i40e_aq_query_switch_comp_bw_config(uint64_t a1, __int16 a2, void *a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v9, 1050);
  v9[0] |= 0x1000u;
  v9[2] = 32;
  v9[8] = a2;
  return i40e_asq_send_command(a1, v9, a3, 0x20u, a4);
}

uint64_t i40e_set_filter_control(IOPCIDevice **a1, uint32x2_t *a2)
{
  if (!a2)
  {
    return 4294967291;
  }

  v3 = a2[1].u32[0];
  if (v3 > 5)
  {
    return 4294967291;
  }

  v4 = a2[1].u32[1];
  if (v4 > 3 || a2->i32[0] > 0xAu || a2->i32[1] > 9u)
  {
    return 4294967291;
  }

  v6 = 1024 << v3;
  v7 = 512 << v4;
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0xC20D0uLL, &readData);
  __dmb(1u);
  if (v7 + v6 > readData)
  {
    return 4294967270;
  }

  rx_ctl = i40e_read_rx_ctl(a1, 0x1C0AC0uLL);
  v10 = vand_s8(vshl_u32(a2[1], 0xE0000000ALL), 0xC00000003C00);
  v11 = rx_ctl & 0xFFFE0000 | a2->i32[0] & 0x1F | (32 * (a2->i32[1] & 0x1F)) | v10.i32[0] | v10.i32[1] | ((a2[2].i32[0] == 1) << 16);
  if (a2[2].i8[4])
  {
    v11 |= 0x20000u;
  }

  if (a2[2].i8[5])
  {
    v11 |= 0x40000u;
  }

  if (a2[2].i8[6])
  {
    v12 = v11 | 0x80000;
  }

  else
  {
    v12 = v11;
  }

  i40e_write_rx_ctl(a1, 0x1C0AC0uLL, v12);
  return 0;
}

uint64_t i40e_read_rx_ctl(uint64_t a1, uint64_t offset)
{
  v2 = offset;
  v9 = 0;
  if ((*(a1 + 900) != 1 || *(a1 + 902) >= 5u) && *(a1 + 80) != 3)
  {
    v4 = i40e_aq_rx_ctl_read_register(a1, offset, &v9, 0);
    if (*(a1 + 908) == 8)
    {
      v5 = -4;
      do
      {
        IODelay(0x3E8uLL);
        v4 = i40e_aq_rx_ctl_read_register(a1, v2, &v9, 0);
      }

      while (*(a1 + 908) == 8 && v5++ != 0);
    }

    if (!v4)
    {
      return v9;
    }
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, v2, &readData);
  __dmb(1u);
  return readData;
}

void i40e_write_rx_ctl(uint64_t a1, uint64_t offset, uint32_t data)
{
  v4 = offset;
  if (*(a1 + 900) == 1 && *(a1 + 902) < 5u || *(a1 + 80) == 3)
  {
    goto LABEL_12;
  }

  i40e_fill_default_direct_cmd_desc(v9, 519);
  v10 = v4;
  v11 = data;
  v6 = i40e_asq_send_command(a1, v9, 0, 0, 0);
  if (*(a1 + 908) == 8)
  {
    v7 = -4;
    do
    {
      IODelay(0x3E8uLL);
      i40e_fill_default_direct_cmd_desc(v9, 519);
      v10 = v4;
      v11 = data;
      v6 = i40e_asq_send_command(a1, v9, 0, 0, 0);
    }

    while (*(a1 + 908) == 8 && v7++ != 0);
  }

  if (v6)
  {
LABEL_12:
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*a1, 0, v4, data);
  }
}

double i40e_aq_add_rem_control_packet_filter(uint64_t a1, uint64_t a2, __int16 a3, __int16 a4, int a5, __int16 a6, int a7, double *a8, _OWORD *a9)
{
  if (!a5)
  {
    return result;
  }

  v10 = a5;
  if (!a7)
  {
    i40e_fill_default_direct_cmd_desc(v18, 603);
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  i40e_fill_default_direct_cmd_desc(v18, 602);
  v22 = a6;
  if (a2)
  {
LABEL_7:
    LODWORD(v19) = *a2;
    WORD2(v19) = *(a2 + 4);
  }

LABEL_8:
  HIWORD(v19) = a3;
  v20 = a4;
  v21 = v10;
  v16 = i40e_asq_send_command(a1, v18, 0, 0, a9);
  if (a8)
  {
    if (!v16)
    {
      result = v19;
      *a8 = v19;
    }
  }

  return result;
}

void i40e_add_filter_to_drop_tx_flow_control_frames(uint64_t a1, int a2)
{
  i40e_aq_add_rem_control_packet_filter(a1, 0, 34824, 11, a2, 0, 1, 0, 0);
  if (v2)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_add_filter_to_drop_tx_flow_control_frames", 5631, "Ethtype Filter Add failed: Error pruning Tx flow control frames\n");
    }
  }
}

uint64_t i40e_aq_add_cloud_filters(uint64_t a1, __int16 a2, _DWORD *a3, unsigned int a4)
{
  i40e_fill_default_direct_cmd_desc(v11, 604);
  v11[2] = a4 << 6;
  v11[0] |= 0x1400u;
  v12 = a4;
  v13 = a2;
  if (a4)
  {
    v8 = a4;
    v9 = a3 + 8;
    do
    {
      if ((*(v9 - 1) & 0x1E00) == 0x400)
      {
        *v9 <<= 8;
      }

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  return i40e_asq_send_command(a1, v11, a3, a4 << 6, 0);
}

uint64_t i40e_aq_add_cloud_filters_bb(uint64_t a1, __int16 a2, _DWORD *a3, unsigned int a4)
{
  i40e_fill_default_direct_cmd_desc(v11, 604);
  v11[2] = a4 << 7;
  v11[0] |= 0x1400u;
  v12 = a4;
  v13 = a2;
  v14 = 1;
  if (a4)
  {
    v8 = a4;
    v9 = a3 + 8;
    do
    {
      if ((*(v9 - 1) & 0x1E00) == 0x400)
      {
        *v9 <<= 8;
      }

      v9 += 32;
      --v8;
    }

    while (v8);
  }

  return i40e_asq_send_command(a1, v11, a3, a4 << 7, 0);
}

uint64_t i40e_aq_rem_cloud_filters(uint64_t a1, __int16 a2, _DWORD *a3, unsigned int a4)
{
  i40e_fill_default_direct_cmd_desc(v11, 605);
  v11[2] = a4 << 6;
  v11[0] |= 0x1400u;
  v12 = a4;
  v13 = a2;
  if (a4)
  {
    v8 = a4;
    v9 = a3 + 8;
    do
    {
      if ((*(v9 - 1) & 0x1E00) == 0x400)
      {
        *v9 <<= 8;
      }

      v9 += 16;
      --v8;
    }

    while (v8);
  }

  return i40e_asq_send_command(a1, v11, a3, a4 << 6, 0);
}

uint64_t i40e_aq_rem_cloud_filters_bb(uint64_t a1, __int16 a2, _DWORD *a3, unsigned int a4)
{
  i40e_fill_default_direct_cmd_desc(v11, 605);
  v11[2] = a4 << 7;
  v11[0] |= 0x1400u;
  v12 = a4;
  v13 = a2;
  v14 = 1;
  if (a4)
  {
    v8 = a4;
    v9 = a3 + 8;
    do
    {
      if ((*(v9 - 1) & 0x1E00) == 0x400)
      {
        *v9 <<= 8;
      }

      v9 += 32;
      --v8;
    }

    while (v8);
  }

  return i40e_asq_send_command(a1, v11, a3, a4 << 7, 0);
}

__n128 i40e_aq_replace_cloud_filters(uint64_t a1, int *a2, __n128 *a3)
{
  if (*(a1 + 80) != 3)
  {
    v13 = v3;
    v14 = v4;
    if (*(a1 + 892) >= 6u)
    {
      i40e_fill_default_direct_cmd_desc(v10, 607);
      v10[2] = 32;
      v10[0] |= 0x1400u;
      v11 = *a2;
      v12 = *(a2 + 4);
      i40e_asq_send_command(a1, v10, a3, 0x40u, 0);
      result = *a3;
      v9 = a3[1];
      a3[2] = *a3;
      a3[3] = v9;
    }
  }

  return result;
}

uint64_t i40e_aq_alternate_write(uint64_t a1, int a2, int a3, int a4, int a5)
{
  i40e_fill_default_direct_cmd_desc(v11, 2304);
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  v11[7] = a5;
  return i40e_asq_send_command(a1, v11, 0, 0, 0);
}

uint64_t i40e_aq_alternate_write_indirect(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  if (!a4)
  {
    return 4294967291;
  }

  i40e_fill_default_direct_cmd_desc(v10, 2305);
  if (a3 <= 0x80)
  {
    v8 = 5120;
  }

  else
  {
    v8 = 5632;
  }

  v10[0] |= v8;
  v11 = a2;
  v12 = a3;
  return i40e_asq_send_command(a1, v10, a4, 4 * (a3 & 0x3FFF), 0);
}

uint64_t i40e_aq_alternate_read(uint64_t a1, int a2, _DWORD *a3, int a4, _DWORD *a5)
{
  if (!a3)
  {
    return 4294967291;
  }

  i40e_fill_default_direct_cmd_desc(v11, 2306);
  v11[4] = a2;
  v11[6] = a4;
  result = i40e_asq_send_command(a1, v11, 0, 0, 0);
  if (!result)
  {
    *a3 = v11[5];
    result = 0;
    if (a5)
    {
      *a5 = v11[7];
    }
  }

  return result;
}

uint64_t i40e_aq_alternate_read_indirect(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  if (!a4)
  {
    return 4294967291;
  }

  i40e_fill_default_direct_cmd_desc(v10, 2307);
  if (a3 <= 0x80)
  {
    v8 = 5120;
  }

  else
  {
    v8 = 5632;
  }

  v10[0] |= v8;
  v11 = a2;
  v12 = a3;
  return i40e_asq_send_command(a1, v10, a4, 4 * (a3 & 0x3FFF), 0);
}

uint64_t i40e_aq_alternate_write_done(uint64_t a1, __int16 a2, BOOL *a3)
{
  if (!a3)
  {
    return 4294967291;
  }

  i40e_fill_default_direct_cmd_desc(v7, 2308);
  v8 = a2;
  result = i40e_asq_send_command(a1, v7, 0, 0, 0);
  if (!result)
  {
    *a3 = (v8 & 2) != 0;
  }

  return result;
}

uint64_t i40e_aq_set_oem_mode(uint64_t a1, __int16 a2)
{
  i40e_fill_default_direct_cmd_desc(v5, 2309);
  v5[8] = a2;
  return i40e_asq_send_command(a1, v5, 0, 0, 0);
}

_DWORD *i40e_set_pci_config_data(_DWORD *result, __int16 a2)
{
  result[30] = 3;
  v2 = (a2 & 0x3F0) - 16;
  if (v2 > 0x7F)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_10001CC84[v2 >> 4];
  }

  result[29] = v3;
  v4 = (a2 & 0xF) - 1;
  if (v4 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_10001CCA4[v4];
  }

  result[28] = v5;
  return result;
}

uint64_t i40e_aq_debug_dump(uint64_t a1, char a2, char a3, int a4, unsigned int a5, void *a6, _WORD *a7, _BYTE *a8, _DWORD *a9, _OWORD *a10)
{
  result = 4294967291;
  if (a5 && a6)
  {
    i40e_fill_default_direct_cmd_desc(v20, 65288);
    v19 = a5 <= 0x200 ? 4096 : 4608;
    v20[0] |= v19;
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v21 = a5;
    result = i40e_asq_send_command(a1, v20, a6, a5, a10);
    if (!result)
    {
      if (a7)
      {
        *a7 = v21;
      }

      if (a8)
      {
        *a8 = v23;
      }

      result = 0;
      if (a9)
      {
        *a9 = v24;
      }
    }
  }

  return result;
}

uint64_t i40e_enable_eee(uint64_t a1, int a2)
{
  result = i40e_aq_get_phy_capabilities(a1, 0, 1, &v15, 0);
  if (!result)
  {
    v5 = v18;
    if (v18)
    {
      result = i40e_aq_get_phy_capabilities(a1, 0, 0, &v15, 0);
      if (!result)
      {
        v6 = v15;
        v7 = v16;
        v8 = v17 | 0x20;
        v9 = v20;
        v10 = v21 & 0x1F;
        v11 = a2 == 0;
        if (a2)
        {
          v12 = v5;
        }

        else
        {
          v12 = 0;
        }

        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = 0x10000;
        }

        v14 = v19 & 0xFFFEFFFF | v13;
        i40e_fill_default_direct_cmd_desc(v22, 1537);
        v23 = v6;
        v24 = v7;
        v25 = v8;
        v26 = v12;
        v27 = v14;
        v28 = v9;
        v29 = v10;
        return i40e_asq_send_command(a1, v22, 0, 0, 0);
      }
    }

    else
    {
      return 4294967292;
    }
  }

  return result;
}

uint64_t i40e_read_bw_from_alt_ram(uint64_t a1, int *a2, int *a3, BOOL *a4, BOOL *a5)
{
  result = i40e_aq_alternate_read(a1, (*(a1 + 642) << 6) | 0xFu, a2, (*(a1 + 642) << 6) | 0xEu, a3);
  *a4 = *a3 < 0;
  *a5 = *a2 < 0;
  return result;
}

uint64_t i40e_aq_configure_partition_bw(uint64_t a1, void *a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 1053);
  v7[0] |= 0x1400u;
  v7[2] = 34;
  return i40e_asq_send_command(a1, v7, a2, 0x22u, a3);
}

uint64_t i40e_read_phy_register_clause22(uint64_t a1, int a2, int a3, _WORD *a4)
{
  v6 = *(a1 + 596);
  __dmb(2u);
  v7 = 4 * v6;
  IOPCIDevice::MemoryWrite32(*a1, 0, (v7 + 557452), (a2 << 16) | (a3 << 21) | 0x58000000);
  v8 = 1000;
  do
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (v7 + 557452), &readData);
    __dmb(1u);
    if ((readData & 0x40000000) == 0)
    {
      v10 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, (v7 + 557468), &v10);
      result = 0;
      __dmb(1u);
      *a4 = HIWORD(v10);
      return result;
    }

    IODelay(0xAuLL);
    --v8;
  }

  while (v8);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): PHY: Can't write command to external PHY.\n\n", "i40e_read_phy_register_clause22", 6436);
  }

  return 4294967259;
}

uint64_t i40e_write_phy_register_clause22(uint64_t a1, int a2, int a3, uint32_t a4)
{
  v7 = *(a1 + 596);
  __dmb(2u);
  v8 = 4 * v7 + 557056;
  v9 = (v8 + 396);
  IOPCIDevice::MemoryWrite32(*a1, 0, (v8 + 412), a4);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, v9, (a2 << 16) | (a3 << 21) | 0x54000000);
  v10 = 1000;
  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, v9, &readData);
    __dmb(1u);
    if ((readData & 0x40000000) == 0)
    {
      break;
    }

    IODelay(0xAuLL);
    if (!--v10)
    {
      return 4294967259;
    }
  }

  return 0;
}

uint64_t i40e_read_phy_register_clause45(uint64_t a1, int a2, int a3, int a4, _WORD *a5)
{
  v7 = *(a1 + 596);
  v8 = a2 << 16;
  v9 = a4 << 21;
  __dmb(2u);
  v10 = 4 * v7;
  IOPCIDevice::MemoryWrite32(*a1, 0, (v10 + 557452), a3 & 0xFF00FFFF | (a2 << 16) | (a4 << 21) | 0xC0000000);
  v11 = 1000;
  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (v10 + 557452), &readData);
    __dmb(1u);
    if ((readData & 0x40000000) == 0)
    {
      break;
    }

    IODelay(0xAuLL);
    if (!--v11)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): PHY: Can't write command to external PHY.\n\n");
      }

      return 4294967259;
    }
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, (v10 + 557452), v9 | v8 | 0xCC000000);
  v12 = 1000;
  do
  {
    v15 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (v10 + 557452), &v15);
    __dmb(1u);
    if ((v15 & 0x40000000) == 0)
    {
      v14 = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, (v10 + 557468), &v14);
      result = 0;
      __dmb(1u);
      *a5 = HIWORD(v14);
      return result;
    }

    IODelay(0xAuLL);
    --v12;
  }

  while (v12);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): PHY: Can't read register value from external PHY.\n\n");
  }

  return 4294967259;
}

uint64_t i40e_write_phy_register_clause45(uint64_t a1, int a2, int a3, int a4, uint32_t a5)
{
  v7 = *(a1 + 596);
  v8 = a2 << 16;
  v9 = a4 << 21;
  __dmb(2u);
  v10 = 4 * v7;
  IOPCIDevice::MemoryWrite32(*a1, 0, (v10 + 557452), a3 & 0xFF00FFFF | (a2 << 16) | (a4 << 21) | 0xC0000000);
  v11 = 1000;
  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (v10 + 557452), &readData);
    __dmb(1u);
    if ((readData & 0x40000000) == 0)
    {
      break;
    }

    IODelay(0xAuLL);
    if (!--v11)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): PHY: Can't write command to external PHY.\n\n", "i40e_write_phy_register_clause45", 6597);
      }

      return 4294967259;
    }
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, (v10 + 557468), a5);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*a1, 0, (v10 + 557452), v9 | v8 | 0xC4000000);
  v12 = 1000;
  while (1)
  {
    v14 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, (v10 + 557452), &v14);
    __dmb(1u);
    if ((v14 & 0x40000000) == 0)
    {
      break;
    }

    IODelay(0xAuLL);
    if (!--v12)
    {
      return 4294967259;
    }
  }

  return 0;
}

uint64_t i40e_write_phy_register(uint64_t a1, int a2, int a3, int a4, uint32_t a5)
{
  v5 = *(a1 + 176);
  if (v5 <= 0x15FE)
  {
    if ((v5 - 5510 > 5 || ((1 << (v5 + 122)) & 0x39) == 0) && v5 != 4127)
    {
      return 4294967289;
    }

    return i40e_write_phy_register_clause45(a1, a2, a3, a4, a5);
  }

  if (v5 == 5631 || v5 == 14290)
  {
    return i40e_write_phy_register_clause45(a1, a2, a3, a4, a5);
  }

  if (v5 == 14289)
  {
    return i40e_write_phy_register_clause22(a1, a3, a4, a5);
  }

  return 4294967289;
}

uint64_t i40e_read_phy_register(uint64_t a1, int a2, int a3, int a4, _WORD *a5)
{
  v5 = *(a1 + 176);
  if (v5 <= 0x15FE)
  {
    if ((v5 - 5510 > 5 || ((1 << (v5 + 122)) & 0x39) == 0) && v5 != 4127)
    {
      return 4294967289;
    }

    return i40e_read_phy_register_clause45(a1, a2, a3, a4, a5);
  }

  if (v5 == 5631 || v5 == 14290)
  {
    return i40e_read_phy_register_clause45(a1, a2, a3, a4, a5);
  }

  if (v5 == 14289)
  {
    return i40e_read_phy_register_clause22(a1, a3, a4, a5);
  }

  return 4294967289;
}

uint64_t i40e_get_phy_address(uint64_t a1, char a2)
{
  v3 = *(a1 + 596);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 4 * v3 + 557504, &readData);
  __dmb(1u);
  return (readData >> (5 * a2 + 5)) & 0x1F;
}

uint64_t i40e_blink_phy_link_led(IOPCIDevice **a1, int a2, int a3)
{
  v15 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x1C0480uLL, &readData);
  __dmb(1u);
  phy_address = i40e_get_phy_address(a1, readData & 3);
  v7 = 0;
  v8 = -15312;
  while (1)
  {
    result = i40e_read_phy_register_clause45(a1, 30, v8, phy_address, &v15);
    if (result)
    {
      return result;
    }

    v10 = v15;
    if ((v15 & 0xF0) != 0)
    {
      v15 = 0;
      result = i40e_write_phy_register_clause45(a1, 30, v8, phy_address, 0);
      if (result)
      {
        return result;
      }

      goto LABEL_8;
    }

    ++v8;
    if (v7++ >= 2)
    {
      v8 = -15309;
LABEL_8:
      if (a2 && a3 && 1000 * a2)
      {
        v12 = 0;
        do
        {
          if (i40e_read_phy_register_clause45(a1, 30, v8, phy_address, &v15))
          {
            break;
          }

          v13 = ~v15 & 0x100;
          v15 = ~v15 & 0x100;
          if (i40e_write_phy_register_clause45(a1, 30, v8, phy_address, v13))
          {
            break;
          }

          IODelay((1000 * a3));
          v12 += a3;
        }

        while (v12 < 1000 * a2);
      }

      return i40e_write_phy_register_clause45(a1, 30, v8, phy_address, v10);
    }
  }
}

uint64_t i40e_led_get_reg(uint64_t a1, int a2, _DWORD *a3)
{
  *a3 = 0;
  if ((*(a1 + 1688) & 4) != 0)
  {
    return i40e_aq_get_phy_register_ext(a1, 1, 30, 1, 0, 0, 50224, a3, 0);
  }

  phy_address = i40e_get_phy_address(a1, *(a1 + 185));

  return i40e_read_phy_register_clause45(a1, 30, a2, phy_address, a3);
}

uint64_t i40e_aq_get_phy_register_ext(uint64_t a1, char a2, char a3, char a4, int a5, char a6, int a7, _DWORD *a8, _OWORD *a9)
{
  i40e_fill_default_direct_cmd_desc(v18, 1577);
  v19[0] = a2;
  v19[1] = a3;
  v20 = a7;
  if ((a4 & 1) == 0)
  {
    v19[2] = 1;
  }

  i40e_mdio_if_number_selection(a1, a5, a6, v19);
  result = i40e_asq_send_command(a1, v18, 0, 0, a9);
  if (!result)
  {
    *a8 = v21;
  }

  return result;
}

uint64_t i40e_led_set_reg(uint64_t a1, int a2, unsigned __int16 a3)
{
  if ((*(a1 + 1688) & 4) != 0)
  {
    return i40e_aq_set_phy_register_ext(a1, 1, 30, 1, 0, 0, 50224, a3, 0);
  }

  phy_address = i40e_get_phy_address(a1, *(a1 + 185));

  return i40e_write_phy_register_clause45(a1, 30, a2, phy_address, a3);
}

uint64_t i40e_aq_set_phy_register_ext(uint64_t a1, char a2, char a3, char a4, int a5, char a6, int a7, int a8, _OWORD *a9)
{
  i40e_fill_default_direct_cmd_desc(v18, 1576);
  v19[0] = a2;
  v19[1] = a3;
  v20 = a7;
  v21 = a8;
  if ((a4 & 1) == 0)
  {
    v19[2] = 1;
  }

  i40e_mdio_if_number_selection(a1, a5, a6, v19);
  return i40e_asq_send_command(a1, v18, 0, 0, a9);
}

uint64_t i40e_led_get_phy(uint64_t a1, unsigned __int16 *a2, _WORD *a3)
{
  if ((*(a1 + 1688) & 4) != 0)
  {
    v13 = 0;
    result = i40e_aq_get_phy_register_ext(a1, 1, 30, 1, 0, 0, 50224, &v13, 0);
    if (!result)
    {
      *a3 = v13;
    }
  }

  else
  {
    v12 = 0;
    phy_address = i40e_get_phy_address(a1, *(a1 + 185));
    v7 = 0;
    for (i = -15312; ; ++i)
    {
      result = i40e_read_phy_register_clause45(a1, 30, i, phy_address, &v12);
      if (result)
      {
        break;
      }

      v10 = v12;
      *a3 = v12;
      if ((v10 & 0xF0) != 0)
      {
        result = 0;
        *a2 = i;
        return result;
      }

      if (v7++ >= 2)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t i40e_led_set_phy(uint64_t a1, int a2, int a3, int a4)
{
  v11 = 0;
  result = i40e_led_get_reg(a1, a3, &v11);
  if (!result)
  {
    v9 = v11;
    if ((v11 & 0xF0) == 0 || (result = i40e_led_set_reg(a1, a3, 0), !result))
    {
      if (!i40e_led_get_reg(a1, a3, &v11))
      {
        v10 = a2 ? 256 : 0;
        if (!i40e_led_set_reg(a1, a3, v10))
        {
          if ((a4 & 0x80000000) == 0)
          {
            return 0;
          }

          v9 = a4;
        }
      }

      return i40e_led_set_reg(a1, a3, v9);
    }
  }

  return result;
}

uint64_t i40e_get_phy_lpi_status(uint64_t a1, uint64_t a2)
{
  *(a2 + 696) = 0;
  v3 = *(a1 + 176);
  if (v3 != 4127)
  {
    if (v3 == 14289)
    {
      goto LABEL_9;
    }

    if (v3 != 5631)
    {
LABEL_11:
      readData = 0;
      IOPCIDevice::MemoryRead32(*a1, 0, 0x1E4320uLL, &readData);
      __dmb(1u);
      v9 = readData;
      *(a2 + 700) = (readData >> 30) & 1;
      v8 = v9 >> 31;
      goto LABEL_12;
    }
  }

  v4 = *(a1 + 20);
  if (v4 != 128 && v4 != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  v11 = 0;
  result = i40e_aq_get_phy_register_ext(a1, 1, 3, 1, 0, 0, 1, &v11, 0);
  if (result)
  {
    return result;
  }

  v7 = v11;
  *(a2 + 700) = (v11 >> 8) & 1;
  v8 = (v7 >> 9) & 1;
LABEL_12:
  result = 0;
  *(a2 + 696) = v8;
  return result;
}

uint64_t i40e_get_lpi_counters(uint64_t a1, uint32_t *a2, uint32_t *a3, _BYTE *a4)
{
  v7 = *(a1 + 176);
  v8 = v7 == 5631 || v7 == 4127;
  if (v8 && *(a1 + 20) != 4)
  {
    v13 = 0;
    *a4 = 0;
    LODWORD(result) = i40e_aq_run_phy_activity(a1, 16, 32795, &v13, a2, a3, 0);
    if (v13 != 4 && result == 0)
    {
      return 4294967243;
    }

    else
    {
      return result;
    }
  }

  else
  {
    *a4 = 1;
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x1E43C0uLL, &readData);
    __dmb(1u);
    *a2 = readData;
    v11 = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0x1E43A0uLL, &v11);
    result = 0;
    __dmb(1u);
    *a3 = v11;
  }

  return result;
}

uint64_t i40e_aq_run_phy_activity(uint64_t a1, __int16 a2, int a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _OWORD *a7)
{
  result = 4294967291;
  if (a4 && a5 && a6)
  {
    i40e_fill_default_direct_cmd_desc(v16, 1574);
    *&v16[17] = a2;
    v17 = a3;
    result = i40e_asq_send_command(a1, v16, 0, 0, a7);
    if (!result)
    {
      v15 = v18;
      *a4 = v17;
      *a5 = v15;
      *a6 = v19;
    }
  }

  return result;
}

uint64_t i40e_get_lpi_duration(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 176);
  if (v6 != 5631 && v6 != 4127)
  {
    return 4294967236;
  }

  v16[5] = v4;
  v16[6] = v5;
  v16[0] = 0;
  v15 = 0;
  result = i40e_aq_run_phy_activity(a1, 16, 98331, &v15, v16 + 1, v16, 0);
  if (!result)
  {
    if (v15 == 4)
    {
      v12 = v16[0];
      v13 = HIDWORD(v16[0]);
      if (*(a1 + 20) != 4 || v16[0])
      {
        goto LABEL_16;
      }

      v12 = *(a2 + 696);
      if (!v12 || (v12 = *(a2 + 700)) == 0)
      {
LABEL_15:
        v13 = 0;
LABEL_16:
        result = 0;
        *a3 = v13;
        *a4 = v12;
        return result;
      }

      result = i40e_aq_run_phy_activity(a1, 16, 32794, &v15, v16 + 1, v16, 0);
      if (result)
      {
        return result;
      }

      if (v15 == 4)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    return 4294967243;
  }

  return result;
}

uint64_t i40e_lpi_stat_update(uint64_t a1, char a2, void *a3, void *a4, void *a5, void *a6)
{
  v16 = 0;
  v15 = 0;
  result = i40e_get_lpi_counters(a1, &v16 + 1, &v16, &v15);
  if (!result)
  {
    v12 = HIDWORD(v16);
    if (v15 == 1)
    {
      *a4 += HIDWORD(v16);
      v13 = *a6 + v16;
    }

    else
    {
      v14 = v16;
      if ((a2 & 1) == 0)
      {
        *a3 = HIDWORD(v16);
        *a5 = v14;
      }

      *a4 = (v12 - *a3);
      v13 = (v14 - *a5);
    }

    *a6 = v13;
  }

  return result;
}

uint64_t i40e_aq_rx_ctl_read_register(uint64_t a1, int a2, _DWORD *a3, _OWORD *a4)
{
  if (!a3)
  {
    return 4294967291;
  }

  i40e_fill_default_direct_cmd_desc(v9, 518);
  v9[5] = a2;
  result = i40e_asq_send_command(a1, v9, 0, 0, a4);
  if (!result)
  {
    *a3 = v9[7];
  }

  return result;
}

uint64_t i40e_aq_rx_ctl_write_register(uint64_t a1, int a2, int a3, _OWORD *a4)
{
  i40e_fill_default_direct_cmd_desc(v9, 519);
  v9[5] = a2;
  v9[7] = a3;
  return i40e_asq_send_command(a1, v9, 0, 0, a4);
}

uint64_t i40e_mdio_if_number_selection(uint64_t result, int a2, char a3, _BYTE *a4)
{
  if (a2 && *a4 == 1)
  {
    if ((*(result + 1688) & 0x40) != 0)
    {
      a4[2] |= (4 * (a3 & 3)) | 2;
    }

    else if ((pcindkll & 0x100000) != 0)
    {
      return IOLog("ixl:%s(%d): MDIO I/F number selection not supported by current FW version.\n\n", "i40e_mdio_if_number_selection", 7288);
    }
  }

  return result;
}

uint64_t i40e_aq_send_msg_to_pf(uint64_t a1, int a2, int a3, void *a4, unsigned int a5, __int128 *a6)
{
  i40e_fill_default_direct_cmd_desc(v17, 2049);
  v12 = v17[0];
  v17[0] |= 0x2000u;
  v18 = a2;
  v19 = a3;
  if (a5)
  {
    if (a5 <= 0x200)
    {
      v13 = 13312;
    }

    else
    {
      v13 = 13824;
    }

    v17[0] = v12 | v13;
    v17[2] = a5;
  }

  if (!a6)
  {
    v15 = 0u;
    v16 = 0u;
    BYTE4(v16) = 1;
    a6 = &v15;
  }

  return i40e_asq_send_command(a1, v17, a4, a5, a6);
}

uint64_t i40e_vf_parse_hw_config(uint64_t result, unsigned __int16 *a2)
{
  v2 = *a2;
  *(result + 340) = v2;
  v3 = a2[1];
  *(result + 344) = v3;
  *(result + 348) = v3;
  *(result + 360) = a2[2];
  LOBYTE(v3) = *(a2 + 8);
  *(result + 220) = v3 & 1;
  *(result + 240) = (v3 & 2) != 0;
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 15;
    do
    {
      if (*(v5 - 3) == 6)
      {
        v6 = *v5;
        *(result + 94) = v5[2];
        *(result + 90) = v6;
        v7 = *v5;
        *(result + 88) = v5[2];
        *(result + 84) = v7;
        v2 = *a2;
      }

      v5 += 8;
      ++v4;
    }

    while (v4 < v2);
  }

  return result;
}

uint64_t i40e_aq_set_arp_proxy_config(uint64_t a1, void *a2, _OWORD *a3)
{
  if (!a2)
  {
    return 4294967291;
  }

  i40e_fill_default_direct_cmd_desc(v7, 260);
  v7[0] |= 0x1400u;
  v8 = HIDWORD(a2);
  v9 = a2;
  v7[2] = 20;
  return i40e_asq_send_command(a1, v7, a2, 0x14u, a3);
}

uint64_t i40e_aq_set_ns_proxy_table_entry(uint64_t a1, void *a2, _OWORD *a3)
{
  if (!a2)
  {
    return 4294967291;
  }

  i40e_fill_default_direct_cmd_desc(v7, 261);
  v7[0] |= 0x1400u;
  v8 = HIDWORD(a2);
  v9 = a2;
  v7[2] = 60;
  return i40e_asq_send_command(a1, v7, a2, 0x3Cu, a3);
}

uint64_t i40e_aq_set_clear_wol_filter(uint64_t a1, unsigned int a2, void *a3, int a4, int a5, int a6, int a7, _OWORD *a8)
{
  i40e_fill_default_direct_cmd_desc(v19, 288);
  if (a2 > 7)
  {
    return 4294967291;
  }

  v19[8] = a2;
  if (a4)
  {
    if (!a3)
    {
      return 4294967291;
    }

    v17 = -24576;
  }

  else
  {
    v17 = 0;
  }

  if (a5)
  {
    v17 |= 0x4000u;
  }

  v19[9] = v17;
  if (a6)
  {
    v18 = 0x8000;
  }

  else
  {
    v18 = 0;
  }

  if (a7)
  {
    v18 |= 0x4000u;
  }

  v19[10] = v18;
  v19[2] = 144;
  v19[0] |= 0x1400u;
  v20 = HIDWORD(a3);
  v21 = a3;
  return i40e_asq_send_command(a1, v19, a3, 0x90u, a8);
}

uint64_t i40e_aq_get_wake_event_reason(uint64_t a1, _WORD *a2, _OWORD *a3)
{
  i40e_fill_default_direct_cmd_desc(v7, 289);
  result = i40e_asq_send_command(a1, v7, 0, 0, a3);
  if (!result)
  {
    *a2 = v7[9];
  }

  return result;
}

uint64_t i40e_init_nvm(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_init_nvm", 20, "i40e_init_nvm");
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0xB6100uLL, &readData);
  __dmb(1u);
  *(a1 + 148) = 512 << (readData >> 5);
  v3 = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0xB6108uLL, &v3);
  __dmb(1u);
  if ((v3 & 0x40) != 0)
  {
    result = 0;
    *(a1 + 144) = 18000;
    *(a1 + 150) = 0;
  }

  else
  {
    *(a1 + 150) = 1;
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): NVM init error: unsupported blank mode.\n\n", "i40e_init_nvm", 40);
    }

    return 4294967237;
  }

  return result;
}

uint64_t i40e_acquire_nvm(uint64_t a1, int a2)
{
  v14 = 0;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_acquire_nvm", 61, "i40e_acquire_nvm");
  }

  if (*(a1 + 150))
  {
    return 0;
  }

  v4 = i40e_aq_request_resource(a1, 1, a2, 0, &v14, 0);
  readData = 0;
  IOPCIDevice::MemoryRead32(*a1, 0, 0x881BCuLL, &readData);
  __dmb(1u);
  v5 = readData;
  v6 = v14;
  *(a1 + 136) = readData + 1000 * v14;
  if (v4)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): NVM acquire type %d failed time_left=%llu ret=%d aq_err=%d\n\n", "i40e_acquire_nvm", 78, a2, v6, v4, *(a1 + 908));
      v6 = v14;
    }

    if (v6)
    {
      v7 = v5 + 18000000;
      do
      {
        IODelay(0x2710uLL);
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0x881BCuLL, &readData);
        __dmb(1u);
        v8 = readData;
        v9 = i40e_aq_request_resource(a1, 1, a2, 0, &v14, 0);
        v4 = v9;
        if (!v9)
        {
          *(a1 + 136) = v8 + 1000 * v14;
          return v4;
        }

        v10 = v14;
      }

      while (v7 > v8 && v14 != 0);
      *(a1 + 136) = 0;
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): NVM acquire timed out, wait %llu ms before trying again. status=%d aq_err=%d\n\n", "i40e_acquire_nvm", 101, v10, v9, *(a1 + 908));
      }
    }
  }

  return v4;
}

uint64_t i40e_release_nvm(uint64_t result)
{
  v1 = result;
  if ((pcindkll & 0x100000) != 0)
  {
    result = IOLog("ixl:%s(%d): %s\n", "i40e_release_nvm", 120, "i40e_release_nvm");
  }

  if ((*(v1 + 150) & 1) == 0)
  {
    result = i40e_aq_release_resource(v1, 1, 0, 0);
    if (result == -54)
    {
      v2 = -1;
      do
      {
        if (++v2 >= *(v1 + 880))
        {
          break;
        }

        IODelay(0x3E8uLL);
        result = i40e_aq_release_resource(v1, 1, 0, 0);
      }

      while (result == -54);
    }
  }

  return result;
}

uint64_t i40e_read_nvm_word_srctl(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_read_nvm_word_srctl", 180, "i40e_read_nvm_word_srctl");
  }

  v6 = *(a1 + 148);
  if (v6 <= a2)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): NVM read error: Offset %d beyond Shadow RAM limit %d\n\n", "i40e_read_nvm_word_srctl", 185, a2, v6);
    }

    return 4294967291;
  }

  else
  {
    done = i40e_poll_sr_srctl_done_bit(a1);
    if (done)
    {
      v8 = done;
    }

    else
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*a1, 0, 0xB6110uLL, (a2 << 14) | 0x40000000);
      v8 = i40e_poll_sr_srctl_done_bit(a1);
      if (!v8)
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0xB6114uLL, &readData);
        __dmb(1u);
        *a3 = HIWORD(readData);
        return v8;
      }
    }

    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): NVM read error: Couldn't access Shadow RAM address: 0x%x\n\n", "i40e_read_nvm_word_srctl", 210, a2);
    }
  }

  return v8;
}

uint64_t i40e_poll_sr_srctl_done_bit(IOPCIDevice **a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_poll_sr_srctl_done_bit", 150, "i40e_poll_sr_srctl_done_bit");
  }

  v2 = 100000;
  do
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*a1, 0, 0xB6110uLL, &readData);
    __dmb(1u);
    if ((readData & 0x80000000) != 0)
    {
      return 0;
    }

    IODelay(5uLL);
    --v2;
  }

  while (v2);
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): Done bit in GLNVM_SRCTL not set\n", "i40e_poll_sr_srctl_done_bit", 162);
  }

  return 4294967259;
}

uint64_t __i40e_read_nvm_word(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (*(a1 + 1688))
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_read_nvm_word_aq", 282, "i40e_read_nvm_word_aq");
    }

    return i40e_read_nvm_aq(a1, a2, 1u, a3, 1);
  }

  else
  {

    return i40e_read_nvm_word_srctl(a1, a2, a3);
  }
}

uint64_t i40e_read_nvm_word(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if ((*(a1 + 1688) & 8) == 0 || (nvm_word = i40e_acquire_nvm(a1, 1), !nvm_word))
  {
    nvm_word = __i40e_read_nvm_word(a1, a2, a3);
    if ((*(a1 + 1688) & 8) != 0)
    {
      i40e_release_nvm(a1);
    }
  }

  return nvm_word;
}

uint64_t i40e_read_nvm_module_data(uint64_t a1, unsigned int a2, __int16 a3, __int16 a4, __int16 a5, _WORD *a6)
{
  v18 = a5;
  v17 = 0;
  v16 = 0;
  if (a2)
  {
    v10 = i40e_read_nvm_word(a1, a2, &v16);
    if (v10)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): Reading nvm word failed.Error code: %d.\n\n", "i40e_read_nvm_module_data", 360, v10);
      }

      return 0xFFFFFFFFLL;
    }

    v11 = v16;
    if ((~v16 & 0x7FFF) == 0)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): Pointer not initialized.\n\n", "i40e_read_nvm_module_data", 370);
      }

      return 4294967277;
    }

    if (v16 < 0)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): Reading nvm data failed. Pointer points outside of the Shared RAM mapped area.\n\n", "i40e_read_nvm_module_data", 378);
      }

      return 4294967291;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = i40e_read_nvm_word(a1, (v11 + a3), &v17);
  if (v12)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): Reading nvm word failed.Error code: %d.\n\n", "i40e_read_nvm_module_data", 389, v12);
    }

    return 0xFFFFFFFFLL;
  }

  v15 = i40e_read_nvm_buffer(a1, a4 + a3 + v16 + v17, &v18, a6);
  v13 = v15;
  if (v15 && (pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): Reading nvm buffer failed.Error code: %d.\n\n", "i40e_read_nvm_module_data", 401, v15);
  }

  return v13;
}

uint64_t i40e_read_nvm_buffer(uint64_t a1, __int16 a2, _WORD *a3, _WORD *a4)
{
  if (*(a1 + 1688))
  {
    result = i40e_acquire_nvm(a1, 1);
    if (!result)
    {
      nvm_buffer_aq = i40e_read_nvm_buffer_aq(a1, a2, a3, a4);
      i40e_release_nvm(a1);
      return nvm_buffer_aq;
    }
  }

  else
  {

    return i40e_read_nvm_buffer_srctl(a1, a2, a3, a4);
  }

  return result;
}

uint64_t __i40e_read_nvm_buffer(uint64_t a1, __int16 a2, _WORD *a3, _WORD *a4)
{
  if (*(a1 + 1688))
  {
    return i40e_read_nvm_buffer_aq(a1, a2, a3, a4);
  }

  else
  {
    return i40e_read_nvm_buffer_srctl(a1, a2, a3, a4);
  }
}

uint64_t i40e_read_nvm_buffer_aq(uint64_t a1, unsigned __int16 a2, _WORD *a3, uint64_t a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_read_nvm_buffer_aq", 461, "i40e_read_nvm_buffer_aq");
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *a3;
    if ((a2 & 0x7FF) != 0)
    {
      if (v10 >= 2048 - (a2 & 0x7FFu))
      {
        v11 = 2048 - (a2 & 0x7FF);
      }

      else
      {
        v11 = *a3;
      }
    }

    else if (v10 - v9 >= 0x800)
    {
      v11 = 2048;
    }

    else
    {
      v11 = v10 - v9;
    }

    v12 = v11 + v9;
    v8 |= v11 + v9 >= v10;
    result = i40e_read_nvm_aq(a1, a2, v11, (a4 + 2 * v9), v8 & 1);
    if (result)
    {
      break;
    }

    v9 = (v11 + v9);
    a2 += v11;
  }

  while (v12 < *a3);
  *a3 = v9;
  return result;
}

uint64_t i40e_read_nvm_buffer_srctl(uint64_t a1, __int16 a2, _WORD *a3, _WORD *a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_read_nvm_buffer_srctl", 425, "i40e_read_nvm_buffer_srctl");
  }

  if (*a3)
  {
    v8 = 0;
    while (1)
    {
      result = i40e_read_nvm_word_srctl(a1, (v8 + a2), a4);
      if (result)
      {
        break;
      }

      ++v8;
      ++a4;
      if (v8 >= *a3)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    LOWORD(v8) = 0;
LABEL_9:
    result = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t i40e_write_nvm_aq(uint64_t a1, char a2, int a3, unsigned int a4, void *a5, int a6)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_write_nvm_aq", 568, "i40e_write_nvm_aq");
  }

  v13 = 0uLL;
  v14 = 0;
  v15 = a1 + 924;
  if (a4 + a3 <= *(a1 + 148))
  {
    if (a4 < 0x801)
    {
      if (((a3 + a4 - 1) ^ a3) < 0x800)
      {
        return i40e_aq_update_nvm(a1, a2, 2 * a3, 2 * (a4 & 0x7FFF), a5, a6, 0, &v13);
      }

      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): %s\n", "i40e_write_nvm_aq", 586, "NVM write error: cannot spread over two sectors in a single write.\n");
      }
    }

    else if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): %s\n", "i40e_write_nvm_aq", 582, "NVM write fail error: cannot write more than 4KB in a single write.\n");
    }
  }

  else if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_write_nvm_aq", 579, "NVM write error: offset beyond Shadow RAM limit.\n");
  }

  return 0xFFFFFFFFLL;
}

uint64_t __i40e_write_nvm_word(uint64_t a1, int a2, void *a3)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "__i40e_write_nvm_word", 611, "i40e_write_nvm_word");
  }

  return i40e_write_nvm_aq(a1, 0, a2, 1u, a3, 0);
}

uint64_t __i40e_write_nvm_buffer(uint64_t a1, char a2, int a3, unsigned int a4, void *a5)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "__i40e_write_nvm_buffer", 640, "i40e_write_nvm_buffer");
  }

  return i40e_write_nvm_aq(a1, a2, a3, a4, a5, 0);
}

void i40e_calc_nvm_checksum()
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_calc_nvm_checksum", 672, "i40e_calc_nvm_checksum");
  }

  i40e_allocate_virt_mem();
}

void i40e_update_nvm_checksum()
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_update_nvm_checksum", 750, "i40e_update_nvm_checksum");
  }

  i40e_calc_nvm_checksum();
}

uint64_t i40e_validate_nvm_checksum(uint64_t a1)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_validate_nvm_checksum", 777, "i40e_validate_nvm_checksum");
  }

  result = i40e_acquire_nvm(a1, 1);
  if (!result)
  {
    i40e_calc_nvm_checksum();
  }

  return result;
}

uint64_t i40e_nvmupd_command(uint64_t a1, _DWORD *a2, _BYTE *a3, int *a4)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_nvmupd_command", 888, "i40e_nvmupd_command");
  }

  *a4 = 0;
  v8 = i40e_nvmupd_validate_command(a2, a4);
  v9 = v8;
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s state %d nvm_release_on_hold %d opc 0x%04x cmd 0x%08x config 0x%08x offset 0x%08x data_size 0x%08x\n\n", "i40e_nvmupd_command", 900, i40e_nvm_update_state_str[v8], *(a1 + 920), *(a1 + 1008), *(a1 + 1010), *a2, a2[1], a2[2], a2[3]);
  }

  switch(v9)
  {
    case 17:
      v18 = a2[3];
      v19 = *(a1 + 1704);
      if (v18 >= v19)
      {
        if (v18 > v19)
        {
          bzero(&a3[v19], v18 - v19);
          LODWORD(v19) = *(a1 + 1704);
        }

        memcpy(a3, (a1 + 1702), v19);
        return 0;
      }

LABEL_58:
      *a4 = -11;
      return 4294967241;
    case 13:
      if (a2[3])
      {
        *a3 = *(a1 + 920);
        if (a2[3] >= 4u)
        {
          a3[1] = 0;
          *(a3 + 1) = *(a1 + 1010);
        }

        if (*(a1 + 920) == 5)
        {
          v14 = 0;
          *(a1 + 920) = 0;
          return v14;
        }

        return 0;
      }

      goto LABEL_58;
    case 0:
      *a4 = -11;
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): i40e_nvmupd_validate_command returns %d errno %d\n\n", "i40e_nvmupd_command", 906, 0, -11);
      }

      break;
  }

  if (*(a1 + 920) == 5)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): Clearing I40E_NVMUPD_STATE_ERROR state without reading\n\n", "i40e_nvmupd_command", 960);
    }

    *(a1 + 920) = 0;
  }

  i40e_acquire_spinlock(a1 + 905);
  v10 = *(a1 + 920);
  if (v10 > 2)
  {
    if ((v10 - 3) >= 2)
    {
      goto LABEL_88;
    }

    if (a2[2] != 0xFFFF)
    {
      *a4 = -12;
      v14 = 4294967233;
      goto LABEL_184;
    }

    i40e_nvmupd_clear_wait_state(a1);
LABEL_62:
    v14 = 0;
    goto LABEL_184;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): %s\n", "i40e_nvmupd_state_reading", 1172, "i40e_nvmupd_state_reading");
      }

      v26 = i40e_nvmupd_validate_command(a2, a4);
      switch(v26)
      {
        case 4:
          goto LABEL_86;
        case 3:
          v14 = i40e_nvmupd_nvm_read(a1, a2, a3, a4);
          i40e_release_nvm(a1);
          *(a1 + 920) = 0;
          goto LABEL_184;
        case 1:
LABEL_86:
          v14 = i40e_nvmupd_nvm_read(a1, a2, a3, a4);
          goto LABEL_184;
      }

      if ((pcindkll & 0x100000) != 0)
      {
        v52 = i40e_nvm_update_state_str[v26];
        IOLog("ixl:%s(%d): NVMUPD: bad cmd %s in reading state.\n\n");
      }

      goto LABEL_98;
    }

    if (v10 == 2)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): %s\n", "i40e_nvmupd_state_writing", 1217, "i40e_nvmupd_state_writing");
      }

      v11 = 0;
      v12 = i40e_nvmupd_validate_command(a2, a4);
      while (1)
      {
        if (v12 > 9)
        {
          if (v12 == 10)
          {
            i40e_update_nvm_checksum();
          }

          if (v12 == 12)
          {
            i40e_update_nvm_checksum();
          }
        }

        else
        {
          if (v12 == 6)
          {
            v14 = i40e_nvmupd_nvm_write(a1, a2, a3, a4);
            if (!v14)
            {
              goto LABEL_103;
            }

            goto LABEL_44;
          }

          if (v12 == 8)
          {
            v13 = i40e_nvmupd_nvm_write(a1, a2, a3, a4);
            v14 = v13;
            if (!v13)
            {
              goto LABEL_146;
            }

            v15 = *(a1 + 908);
            if (v15)
            {
              if (v13 == -54)
              {
                v16 = -8;
              }

              else if (v15 > 0x16)
              {
                v16 = -18;
              }

              else
              {
                v16 = dword_10001CCB0[v15];
              }
            }

            else
            {
              v16 = -5;
            }

            *a4 = v16;
            *(a1 + 920) = 0;
            goto LABEL_44;
          }
        }

        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixl:%s(%d): NVMUPD: bad cmd %s in writing state.\n\n", "i40e_nvmupd_state_writing", 1280, i40e_nvm_update_state_str[v12]);
        }

        *a4 = -3;
        v14 = 4294967232;
LABEL_44:
        if (v11 & 1 | (*(a1 + 908) != 12))
        {
          goto LABEL_184;
        }

        LODWORD(readData) = 0;
        IOPCIDevice::MemoryRead32(*a1, 0, 0x881BCuLL, &readData);
        __dmb(1u);
        v17 = *(a1 + 136);
        if (v17 > readData)
        {
          goto LABEL_184;
        }

        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixl:%s(%d): NVMUPD: write semaphore expired (%d >= %lld), retrying\n\n", "i40e_nvmupd_state_writing", 1306, readData, v17);
        }

        i40e_release_nvm(a1);
        v11 = 1;
        if (i40e_acquire_nvm(a1, 2))
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixl:%s(%d): NVMUPD: write semaphore reacquire failed aq_err = %d\n\n", "i40e_nvmupd_state_writing", 1312, *(a1 + 908));
          }

          *(a1 + 908) = 12;
          goto LABEL_184;
        }
      }
    }

LABEL_88:
    if ((pcindkll & 0x100000) != 0)
    {
      v51 = *(a1 + 920);
      IOLog("ixl:%s(%d): NVMUPD: no such state %d\n\n");
    }

LABEL_98:
    *a4 = -3;
    v14 = 4294967232;
    goto LABEL_184;
  }

  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_nvmupd_state_init", 1031, "i40e_nvmupd_state_init");
  }

  v20 = i40e_nvmupd_validate_command(a2, a4);
  if (v20 <= 8)
  {
    if (v20 > 4)
    {
      if (v20 == 5)
      {
        v27 = i40e_acquire_nvm(a1, 2);
        if (!v27)
        {
          v30 = a2[1];
          v29 = a2[2];
          readData = 0uLL;
          v56 = 0;
          v57 = a1 + 924;
          v14 = i40e_aq_erase_nvm(a1, v30, v29, *(a2 + 6), (v30 >> 9) & 1, &readData);
          if (!v14)
          {
            *(a1 + 1008) = 1;
            LOWORD(v38) = 1794;
            goto LABEL_147;
          }

          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixl:%s(%d): i40e_nvmupd_nvm_erase mod 0x%x  off 0x%x len 0x%x\n\n", "i40e_nvmupd_nvm_erase", 1743, v30, a2[2], a2[3]);
            if ((pcindkll & 0x100000) != 0)
            {
              IOLog("ixl:%s(%d): i40e_nvmupd_nvm_erase status %d aq %d\n\n", "i40e_nvmupd_nvm_erase", 1746, v14, *(a1 + 908));
            }
          }

          if (v14 == -54)
          {
            v31 = -8;
          }

          else
          {
            v46 = *(a1 + 908);
            if (v46 > 0x16)
            {
              v31 = -18;
            }

            else
            {
              v31 = dword_10001CCB0[v46];
            }
          }

          *a4 = v31;
LABEL_183:
          i40e_release_nvm(a1);
          goto LABEL_184;
        }

LABEL_125:
        v14 = v27;
LABEL_126:
        if (v14 == -54)
        {
          v33 = -8;
        }

        else
        {
          v34 = *(a1 + 908);
          if (v34 > 0x16)
          {
            v33 = -18;
          }

          else
          {
            v33 = dword_10001CCB0[v34];
          }
        }

        *a4 = v33;
        goto LABEL_184;
      }

      if (v20 != 7)
      {
        goto LABEL_136;
      }

      v27 = i40e_acquire_nvm(a1, 2);
      if (v27)
      {
        goto LABEL_125;
      }

      v14 = i40e_nvmupd_nvm_write(a1, a2, a3, a4);
      if (v14)
      {
        goto LABEL_183;
      }

LABEL_103:
      *(a1 + 1010) = 1795;
      v28 = 4;
    }

    else
    {
      if (v20 != 2)
      {
        if (v20 != 4)
        {
          goto LABEL_136;
        }

        v27 = i40e_acquire_nvm(a1, 1);
        if (!v27)
        {
          v14 = i40e_nvmupd_nvm_read(a1, a2, a3, a4);
          goto LABEL_183;
        }

        goto LABEL_125;
      }

      v27 = i40e_acquire_nvm(a1, 1);
      if (v27)
      {
        goto LABEL_125;
      }

      v14 = i40e_nvmupd_nvm_read(a1, a2, a3, a4);
      if (v14)
      {
        goto LABEL_183;
      }

      v28 = 1;
    }

LABEL_148:
    *(a1 + 920) = v28;
    goto LABEL_184;
  }

  if (v20 > 13)
  {
    if (v20 != 14)
    {
      if (v20 != 15)
      {
        if (v20 == 16)
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixl:%s(%d): NVMUPD: %s\n\n", "i40e_nvmupd_get_aq_event", 1655, "i40e_nvmupd_get_aq_event");
          }

          v21 = *(a1 + 960) + 32;
          v22 = a2[3];
          if (v22 > v21)
          {
            if ((pcindkll & 0x100000) != 0)
            {
              IOLog("ixl:%s(%d): %s: copy length %d too big, trimming to %d\n\n", "i40e_nvmupd_get_aq_event", 1664, "i40e_nvmupd_get_aq_event", a2[3], v21);
            }

            a2[3] = v21;
            v22 = v21;
          }

          v23 = v22;
          v24 = (a1 + 956);
          v25 = a3;
LABEL_169:
          memcpy(v25, v24, v23);
          goto LABEL_62;
        }

        goto LABEL_136;
      }

      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): NVMUPD: %s\n\n", "i40e_nvmupd_get_aq_result", 1588, "i40e_nvmupd_get_aq_result");
      }

      v35 = *(a1 + 928) + 32;
      v36 = a2[2];
      v37 = v35 - v36;
      if (v35 >= v36)
      {
        if (a2[3] <= v37)
        {
          v37 = a2[3];
        }

        else
        {
          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixl:%s(%d): %s: copy length %d too big, trimming to %d\n\n", "i40e_nvmupd_get_aq_result", 1606, "i40e_nvmupd_get_aq_result", a2[3], v37);
            v36 = a2[2];
          }

          a2[3] = v37;
        }

        if (v36 > 0x1F)
        {
          v44 = *(a1 + 992);
          v45 = &v44[v36 - 32];
        }

        else
        {
          if (32 - v36 >= v37)
          {
            v43 = v37;
          }

          else
          {
            v43 = 32 - v36;
          }

          if ((pcindkll & 0x100000) != 0)
          {
            IOLog("ixl:%s(%d): %s: aq_desc bytes %d to %d\n\n", "i40e_nvmupd_get_aq_result", 1616, "i40e_nvmupd_get_aq_result", v36, v43 + v36);
            v36 = a2[2];
          }

          memcpy(a3, (a1 + 924 + v36), v43);
          a3 += v43;
          v37 -= v43;
          v44 = *(a1 + 992);
          v45 = v44;
        }

        if (v37 < 1)
        {
          goto LABEL_62;
        }

        if ((pcindkll & 0x100000) != 0)
        {
          IOLog("ixl:%s(%d): %s: databuf bytes %d to %d\n\n", "i40e_nvmupd_get_aq_result", 1632, "i40e_nvmupd_get_aq_result", v45 - v44, v37 + v45 - v44);
        }

        v23 = v37;
        v25 = a3;
        v24 = v45;
        goto LABEL_169;
      }

      if ((pcindkll & 0x100000) != 0)
      {
        v54 = a2[2];
        IOLog("ixl:%s(%d): %s: offset too big %d > %d\n\n");
      }

LABEL_135:
      *a4 = -14;
      v14 = 4294967291;
      goto LABEL_184;
    }

    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): NVMUPD: %s\n\n", "i40e_nvmupd_exec_aq", 1506, "i40e_nvmupd_exec_aq");
    }

    if (a2[2] == 0xFFFF)
    {
      goto LABEL_62;
    }

    readData = 0uLL;
    v56 = 0;
    v57 = a1 + 924;
    *(a1 + 924) = 0u;
    *(a1 + 940) = 0u;
    v32 = a2[3];
    if (v32 <= 0x1F)
    {
      if ((pcindkll & 0x100000) != 0)
      {
        v53 = a2[3];
        IOLog("ixl:%s(%d): NVMUPD: not enough aq desc bytes for exec, size %d < %d\n\n");
      }

      goto LABEL_135;
    }

    v39 = v32 - 32;
    if (v39 <= *(a3 + 2))
    {
      v40 = *(a3 + 2);
    }

    else
    {
      v40 = v32 - 32;
    }

    if (v40)
    {
      v41 = *(a1 + 992);
      if (!v41)
      {
        v42 = *(a1 + 890);
        i40e_allocate_virt_mem();
      }

      memcpy(v41, a3 + 32, v39);
    }

    else
    {
      v41 = 0;
    }

    if (a2[2])
    {
      *(a1 + 956) = 0u;
      *(a1 + 972) = 0u;
    }

    v47 = i40e_asq_send_command(a1, a3, v41, v40, &readData);
    if (v47)
    {
      v14 = v47;
      if ((pcindkll & 0x100000) != 0)
      {
        v48 = i40e_stat_str(a1, v47);
        v49 = i40e_aq_str(a1, *(a1 + 908));
        IOLog("ixl:%s(%d): i40e_nvmupd_exec_aq err %s aq_err %s\n\n", "i40e_nvmupd_exec_aq", 1556, v48, v49);
      }

      goto LABEL_126;
    }

    v38 = a2[2];
    if (!v38)
    {
      goto LABEL_62;
    }

    v14 = 0;
    goto LABEL_147;
  }

  if (v20 == 9)
  {
    v27 = i40e_acquire_nvm(a1, 2);
    if (v27)
    {
      goto LABEL_125;
    }

    v14 = i40e_nvmupd_nvm_write(a1, a2, a3, a4);
    if (!v14)
    {
LABEL_146:
      *(a1 + 1008) = 1;
      LOWORD(v38) = 1795;
LABEL_147:
      *(a1 + 1010) = v38;
      v28 = 3;
      goto LABEL_148;
    }

    goto LABEL_183;
  }

  if (v20 == 11)
  {
    v27 = i40e_acquire_nvm(a1, 2);
    if (!v27)
    {
      i40e_update_nvm_checksum();
    }

    goto LABEL_125;
  }

LABEL_136:
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): NVMUPD: bad cmd %s in init state\n\n", "i40e_nvmupd_state_init", 1147, i40e_nvm_update_state_str[v20]);
  }

  *a4 = -3;
  v14 = 0xFFFFFFFFLL;
LABEL_184:
  i40e_release_spinlock(a1 + 905);
  return v14;
}

uint64_t i40e_nvmupd_validate_command(_DWORD *a1, _DWORD *a2)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_nvmupd_validate_command", 1393, "i40e_nvmupd_validate_command\n");
  }

  if ((a1[3] - 4097) <= 0xFFFFEFFF)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): i40e_nvmupd_validate_command data_size %d\n\n", "i40e_nvmupd_validate_command", 1406, a1[3]);
    }

    goto LABEL_6;
  }

  v5 = (a1[1] >> 8) & 0xF;
  v6 = a1[1];
  if (*a1 == 12)
  {
    if (((a1[1] >> 8) & 0xFu) <= 3)
    {
      if (((a1[1] >> 8) & 0xFu) > 1)
      {
        v7 = 8;
        if (v5 == 3)
        {
          v8 = 9;
        }

        else
        {
          v8 = 0;
        }

        v9 = v5 == 2;
      }

      else
      {
        v7 = 6;
        if (v5 == 1)
        {
          v8 = 7;
        }

        else
        {
          v8 = 0;
        }

        v9 = v5 == 0;
      }
    }

    else
    {
      if (((a1[1] >> 8) & 0xFu) > 9)
      {
        if (v5 == 10)
        {
          return 12;
        }

        if (v5 == 11)
        {
          return 11;
        }

        if (a1[1])
        {
          v10 = 0;
        }

        else
        {
          v10 = 14;
        }

        if (v5 == 15)
        {
          return v10;
        }

        else
        {
          return 0;
        }
      }

      v7 = 5;
      if (v5 == 8)
      {
        v8 = 10;
      }

      else
      {
        v8 = 0;
      }

      v9 = v5 == 4;
    }

LABEL_46:
    if (v9)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  if (*a1 != 11)
  {
    return 0;
  }

  if (((a1[1] >> 8) & 0xFu) <= 2)
  {
    if (!v5)
    {
      return 1;
    }

    v7 = 2;
    if (v5 == 2)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    v9 = v5 == 1;
    goto LABEL_46;
  }

  if (v5 == 3)
  {
    return 4;
  }

  if (v5 == 14)
  {
    return 16;
  }

  if (v5 != 15)
  {
    return 0;
  }

  if (!a1[1])
  {
    return 15;
  }

  if (v6 == 15)
  {
    return 13;
  }

  if (v6 != 14)
  {
LABEL_6:
    result = 0;
    *a2 = -11;
    return result;
  }

  return 17;
}

uint64_t i40e_nvmupd_clear_wait_state(uint64_t result)
{
  v1 = result;
  if ((pcindkll & 0x100000) != 0)
  {
    result = IOLog("ixl:%s(%d): NVMUPD: clearing wait on opcode 0x%04x\n\n", "i40e_nvmupd_clear_wait_state", 1333, *(result + 1010));
  }

  if (*(v1 + 1008) == 1)
  {
    result = i40e_release_nvm(v1);
    *(v1 + 1008) = 0;
  }

  *(v1 + 1010) = 0;
  if (*(v1 + 912))
  {
    v2 = 5;
LABEL_7:
    *(v1 + 920) = v2;
    return result;
  }

  v3 = *(v1 + 920);
  if (v3 == 3)
  {
    v2 = 0;
    goto LABEL_7;
  }

  if (v3 == 4)
  {
    v2 = 2;
    goto LABEL_7;
  }

  return result;
}

uint64_t i40e_nvmupd_check_wait_event(uint64_t result, int a2, _OWORD *a3)
{
  if (*(result + 1010) == a2)
  {
    v3 = a3[1];
    *(result + 956) = *a3;
    *(result + 972) = v3;
    return i40e_nvmupd_clear_wait_state(result);
  }

  return result;
}

uint64_t i40e_read_nvm_aq(uint64_t a1, int a2, unsigned int a3, void *a4, int a5)
{
  if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): %s\n", "i40e_read_nvm_aq", 235, "i40e_read_nvm_aq");
  }

  v11 = 0uLL;
  v12 = 0;
  v13 = a1 + 924;
  if (a3 + a2 <= *(a1 + 148))
  {
    if (a3 < 0x801)
    {
      if (((a2 + a3 - 1) ^ a2) < 0x800)
      {
        return i40e_aq_read_nvm(a1, 0, 2 * a2, 2 * (a3 & 0x7FFF), a4, a5, &v11);
      }

      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): NVM write error: cannot spread over two sectors in a single write offset=%d words=%d\n\n");
      }
    }

    else if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): NVM write fail error: tried to write %d words, limit is %d.\n\n");
    }
  }

  else if ((pcindkll & 0x100000) != 0)
  {
    IOLog("ixl:%s(%d): NVM write error: offset %d beyond Shadow RAM limit %d\n\n");
  }

  return 0xFFFFFFFFLL;
}

uint64_t i40e_nvmupd_nvm_read(uint64_t a1, uint64_t a2, void *a3, int *a4)
{
  v9 = *(a2 + 4);
  v8 = *(a2 + 8);
  v14 = 0uLL;
  v15 = 0;
  v16 = a1 + 924;
  v10 = i40e_aq_read_nvm(a1, v9, v8, *(a2 + 12), a3, (v9 & 0xE00) == 512, &v14);
  if (v10)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): i40e_nvmupd_nvm_read mod 0x%x  off 0x%x  len 0x%x\n\n", "i40e_nvmupd_nvm_read", 1704, v9, *(a2 + 8), *(a2 + 12));
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): i40e_nvmupd_nvm_read status %d aq %d\n\n", "i40e_nvmupd_nvm_read", 1707, v10, *(a1 + 908));
      }
    }

    if (v10 == -54)
    {
      v11 = -8;
    }

    else
    {
      v12 = *(a1 + 908);
      if (v12 > 0x16)
      {
        v11 = -18;
      }

      else
      {
        v11 = dword_10001CCB0[v12];
      }
    }

    *a4 = v11;
  }

  return v10;
}

uint64_t i40e_nvmupd_nvm_write(uint64_t a1, uint64_t a2, void *a3, int *a4)
{
  v9 = *(a2 + 4);
  v8 = *(a2 + 8);
  v14 = 0uLL;
  v15 = 0;
  v16 = a1 + 924;
  updated = i40e_aq_update_nvm(a1, v9, v8, *(a2 + 12), a3, (v9 >> 9) & 1, (v9 >> 12) & 3, &v14);
  if (updated)
  {
    if ((pcindkll & 0x100000) != 0)
    {
      IOLog("ixl:%s(%d): i40e_nvmupd_nvm_write mod 0x%x off 0x%x len 0x%x\n\n", "i40e_nvmupd_nvm_write", 1786, v9, *(a2 + 8), *(a2 + 12));
      if ((pcindkll & 0x100000) != 0)
      {
        IOLog("ixl:%s(%d): i40e_nvmupd_nvm_write status %d aq %d\n\n", "i40e_nvmupd_nvm_write", 1789, updated, *(a1 + 908));
      }
    }

    if (updated == -54)
    {
      v11 = -8;
    }

    else
    {
      v12 = *(a1 + 908);
      if (v12 > 0x16)
      {
        v11 = -18;
      }

      else
      {
        v11 = dword_10001CCB0[v12];
      }
    }

    *a4 = v11;
  }

  return updated;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::allocateRings(DriverKit_AppleEthernetIXL_NetIf_IVars *this)
{
  if (*(this + 641))
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::allocateRings(void)::$_0::operator()(*(*(this + 3) + 35328), this + 344, 512, 0x2000uLL);
  }

  return 0;
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::allocateRings(void)::$_0::operator()(IOService *a1, uint64_t a2, int a3, uint64_t capacity)
{
  *(a2 + 256) = a3;
  segmentsCount = 1;
  flags = 0;
  if (!IOBufferMemoryDescriptor::Create(3uLL, capacity, IOVMPageSize, (a2 + 24)))
  {
    if (IOBufferMemoryDescriptor::GetAddressRange(*(a2 + 24), &range))
    {
      i40e_allocate_dma_mem();
    }

    *a2 = range.address;
    specification.options = 0;
    memset(specification._resv, 0, sizeof(specification._resv));
    specification.maxAddressBits = 64;
    if (!IODMACommand::Create(a1, 0, &specification, (a2 + 16)) && !IODMACommand::PrepareForDMA(*(a2 + 16), 0, *(a2 + 24), 0, 0, &flags, &segmentsCount, &range, 0))
    {
      *(a2 + 8) = range.address;
      operator new[]();
    }
  }

  v7 = (a2 + 16);
  v6 = *(a2 + 16);
  if (v6)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::allocateRings(void)::$_0::operator()(v6, v7);
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    (*(*v8 + 16))(v8, v7);
    *(a2 + 24) = 0;
  }

  __assert_rtn("operator()", "en_main.cpp", 8, "!allocate_dma_mem(pciDev, &ring, sz)");
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::freeRings(uint64_t this)
{
  if (*(this + 641))
  {
    v1 = this;
    v2 = 0;
    v3 = (this + 312);
    do
    {
      v4 = v3[6];
      if (v4)
      {
        IODMACommand::CompleteDMA(v4, 0, 0);
        v5 = v3[6];
        if (v5)
        {
          (*(*v5 + 16))(v5);
          v3[6] = 0;
        }
      }

      v6 = v3[7];
      if (v6)
      {
        (*(*v6 + 16))(v6);
        v3[7] = 0;
      }

      if (v3[37])
      {
        operator delete[]();
      }

      v3[37] = 0;
      v3[20] = 0;
      v7 = *(v3 - 31);
      if (v7)
      {
        IODMACommand::CompleteDMA(v7, 0, 0);
        v8 = *(v3 - 31);
        if (v8)
        {
          (*(*v8 + 16))(v8);
          *(v3 - 31) = 0;
        }
      }

      v9 = *(v3 - 30);
      if (v9)
      {
        (*(*v9 + 16))(v9);
        *(v3 - 30) = 0;
      }

      this = *v3;
      if (*v3)
      {
        operator delete[]();
      }

      *v3 = 0;
      *(v3 - 17) = 0;
      ++v2;
      v3 += 37;
    }

    while (v2 < *(v1 + 641));
  }

  return this;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface(DriverKit_AppleEthernetIXL_NetIf_IVars *this, uint32_t a2)
{
  memset(__str, 0, sizeof(__str));
  snprintf(__str, 0x20uLL, "ixl:%s:%s", pcindkid, &unk_10001E067);
  options.packetCount = *(this + 641) << 9;
  options.bufferCount = options.packetCount;
  *&options.maxBuffersPerPacket = 1;
  options.bufferSize = a2;
  options.poolFlags = 805306368;
  options.dmaSpecification.maxAddressBits = 64;
  v4 = *(this + 3);
  v5 = *(v4 + 35328);
  pool = 0;
  v21 = 0;
  if (IOUserNetworkPacketBufferPool::CreateWithOptions(v5, __str, &options, &pool))
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface();
  }

  snprintf(__str, 0x20uLL, "ixl:%s:%s", pcindkid, "tx");
  options.packetCount = *(this + 640) << 7;
  options.bufferCount = options.packetCount;
  options.bufferSize = 0x4000;
  options.poolFlags |= 0x10000000u;
  if (IOUserNetworkPacketBufferPool::CreateWithOptions(v5, __str, &options, &v21))
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface();
  }

  v18 = 0u;
  v19 = 0u;
  if (*(this + 641))
  {
    v6 = 0;
    v7 = 0;
    v8 = *(*(this + 3) + 35336);
    v9 = v4 + 35360;
    v10 = &v19;
    do
    {
      v11 = (this + v6);
      if (IOUserNetworkTxSubmissionQueue::Create(v21, *this, 0x80u, 0, v8, (this + v6 + 328)))
      {
        DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface();
      }

      if (IOUserNetworkTxSubmissionQueue::_SetDoorbell(v11[41], *(v9 + 8 * v7), 0))
      {
        DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface();
      }

      *(v10 - 2) = v11[41];
      v12 = this + v6;
      if (IOUserNetworkTxCompletionQueue::Create(v21, *this, 0x80u, 0, v8, (this + v6 + 336)))
      {
        DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface();
      }

      if ((*(**(v12 + 42) + 72))(*(v12 + 42), v12 + 320))
      {
        DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface();
      }

      *(v10 - 1) = *(v12 + 42);
      v13 = (this + v6 + 624);
      if (IOUserNetworkRxSubmissionQueue::Create(pool, *this, 0x200u, 0, v8, v13))
      {
        DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface();
      }

      if (IOUserNetworkRxSubmissionQueue::_SetDoorbell(*v13, *(v9 + 8 * v7), 0))
      {
        DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface();
      }

      *v10 = *v13;
      v14 = (this + v6 + 632);
      if (IOUserNetworkRxCompletionQueue::Create(pool, *this, 0x200u, 0, v8, v14))
      {
        DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface();
      }

      if (((*v14)->CopyDataQueue)(*v14, this + v6 + 616))
      {
        DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface();
      }

      ++v7;
      v10[1] = *v14;
      v10 += 4;
      v6 += 296;
    }

    while (v7 < *(this + 641));
  }

  v17 = 256;
  if (DriverKit_AppleEthernetIXL_NetIf_IVars::getSupportedMediaArray(this, v16, &v17))
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface();
  }

  if ((*(**this + 72))(*this, v16, v17))
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface();
  }

  if ((*(**this + 360))(*this, &v18, 4 * *(this + 641), v21, pool))
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface();
  }

  result = IOService::RegisterService(*this, 0);
  if (result)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface();
  }

  return result;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::getHardwareAddress(DriverKit_AppleEthernetIXL_NetIf_IVars *this, ether_addr *a2)
{
  v2 = *(this + 2);
  v3 = *(v2 + 84);
  *&a2->octet[4] = *(v2 + 88);
  *a2->octet = v3;
  return 0;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::enable(DriverKit_AppleEthernetIXL_IVars **this)
{
  DriverKit_AppleEthernetIXL_NetIf_IVars::allocateRings(this);
  v2 = DriverKit_AppleEthernetIXL_NetIf_IVars::up(this);
  if (v2)
  {
LABEL_2:
    v3 = v2;
    goto LABEL_3;
  }

  DriverKit_AppleEthernetIXL_IVars::update_link_status(this[3]);
  if (*(this + 641))
  {
    v5 = 0;
    v6 = (this + 41);
    do
    {
      v2 = IOUserNetworkPacketQueue::SetEnable(v6[38], 1, 0);
      if (v2)
      {
        goto LABEL_2;
      }

      v2 = IOUserNetworkPacketQueue::SetEnable(v6[37], 1, 0);
      if (v2)
      {
        goto LABEL_2;
      }

      v2 = IOUserNetworkPacketQueue::SetEnable(v6[1], 1, 0);
      if (v2)
      {
        goto LABEL_2;
      }

      v2 = IOUserNetworkPacketQueue::SetEnable(*v6, 1, 0);
      if (v2)
      {
        goto LABEL_2;
      }

      ++v5;
      v6 += 37;
    }

    while (v5 < *(this + 641));
  }

  v3 = 0;
  *(this + 2) = 2;
LABEL_3:
  if ((pcindkll & 0x40) != 0)
  {
    DriverKit_AppleEthernetIXL_NetIf_IVars::enable(v3);
  }

  return v3;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::disable(DriverKit_AppleEthernetIXL_NetIf_IVars *this)
{
  *(this + 2) = 0;
  DriverKit_AppleEthernetIXL_NetIf_IVars::down(this);
  if (*(this + 641))
  {
    v2 = 0;
    v3 = (this + 328);
    do
    {
      IOUserNetworkPacketQueue::SetEnable(v3[37], 0, 0);
      DriverKit_AppleEthernetIXL_NetIf_IVars::drain(this, (v3 + 2));
      IOUserNetworkPacketQueue::SetEnable(v3[38], 0, 0);
      IOUserNetworkPacketQueue::SetEnable(*v3, 0, 0);
      DriverKit_AppleEthernetIXL_NetIf_IVars::drain(this, (v3 - 35));
      IOUserNetworkPacketQueue::SetEnable(v3[1], 0, 0);
      ++v2;
      v3 += 37;
    }

    while (v2 < *(this + 641));
  }

  return DriverKit_AppleEthernetIXL_NetIf_IVars::freeRings(this);
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::setHardwareAssists(DriverKit_AppleEthernetIXL_NetIf_IVars *this, int a2, int a3)
{
  if ((a2 & a3 & 0x20000000) != 0)
  {
    return 0;
  }

  else
  {
    return 3758097122;
  }
}

uint64_t DriverKit_AppleEthernetIXLMetaClass::New(DriverKit_AppleEthernetIXLMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100024AC8;
  a2->OSObjectInterface::__vftable = off_100024B10;
  return 0;
}

uint64_t DriverKit_AppleEthernetIXL::_Dispatch(IOService *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid <= 0xD200FDE7D57ECCA5)
  {
    if (msgid == 0x98E715041C459FA5)
    {
      v9 = *a2;
      return IOService::Stop_Invoke(&v9, this, DriverKit_AppleEthernetIXL::Stop_Impl);
    }

    if (msgid == 0xAB6F76DDE6D693F2)
    {
      v9 = *a2;
      return IOService::Start_Invoke(&v9, this, DriverKit_AppleEthernetIXL::Start_Impl);
    }

    goto LABEL_14;
  }

  if (msgid == 0xD200FDE7D57ECCA6)
  {
    v9 = *a2;
    return IOService::SetPowerState_Invoke(&v9, this, DriverKit_AppleEthernetIXL::SetPowerState_Impl);
  }

  if (msgid == 0x60F1C40F6D29E480)
  {
    if (!OSMetaClassBase::IsRemote(this))
    {
      v9 = *a2;
      v6 = gOSAction_DriverKit_AppleEthernetIXL_OtherInterruptMetaClass;
      v7 = DriverKit_AppleEthernetIXL::OtherInterrupt_Impl;
      return IOInterruptDispatchSource::InterruptOccurred_Invoke(&v9, this, v7, v6);
    }

LABEL_12:
    v9 = *a2;
    return OSMetaClassBase::Dispatch(this, &v9);
  }

  if (msgid != 0x7F95632F46386C47)
  {
LABEL_14:
    v9 = *a2;
    return IOService::_Dispatch(this, &v9);
  }

  if (OSMetaClassBase::IsRemote(this))
  {
    goto LABEL_12;
  }

  v9 = *a2;
  v6 = gOSAction_DriverKit_AppleEthernetIXL_QueueInterruptMetaClass;
  v7 = DriverKit_AppleEthernetIXL::QueueInterrupt_Impl;
  return IOInterruptDispatchSource::InterruptOccurred_Invoke(&v9, this, v7, v6);
}

uint64_t DriverKit_AppleEthernetIXLMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t DriverKit_AppleEthernetIXL::CreateActionQueueInterrupt(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetIXL_QueueInterrupt");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x7F95632F46386C47uLL, 0xCE0513291CFA1EE1, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t DriverKit_AppleEthernetIXL::CreateActionOtherInterrupt(OSObject *this, size_t a2, OSAction **a3)
{
  v6 = OSString::withCString("OSAction_DriverKit_AppleEthernetIXL_OtherInterrupt");
  if (!v6)
  {
    return 3758097085;
  }

  v7 = v6;
  v8 = OSAction::CreateWithTypeName(this, 0x60F1C40F6D29E480uLL, 0xCE0513291CFA1EE1, a2, v6, a3);
  (v7->release)(v7);
  return v8;
}

uint64_t OSAction_DriverKit_AppleEthernetIXL_QueueInterruptMetaClass::New(OSAction_DriverKit_AppleEthernetIXL_QueueInterruptMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100024B70;
  a2->OSObjectInterface::__vftable = &off_100024BB8;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetIXL_QueueInterrupt::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetIXL_QueueInterrupt::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetIXL_QueueInterruptMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t OSAction_DriverKit_AppleEthernetIXL_OtherInterruptMetaClass::New(OSAction_DriverKit_AppleEthernetIXL_OtherInterruptMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100024C18;
  a2->OSObjectInterface::__vftable = &off_100024C60;
  return 0;
}

uint64_t OSAction_DriverKit_AppleEthernetIXL_OtherInterrupt::Dispatch(OSAction *this, IORPC *a2)
{
  message = a2->message;
  *&rpc.reply = *&a2->reply;
  IORPCMessageFromMach(message, 0);
  rpc.message = message;
  return OSAction::_Dispatch(this, &rpc);
}

uint64_t OSAction_DriverKit_AppleEthernetIXL_OtherInterrupt::_Dispatch(OSAction *this, IORPCMessageMach **a2, IORPC *a3)
{
  IORPCMessageFromMach(*a2, 0);
  v6 = *a2;
  return OSAction::_Dispatch(this, &v6);
}

uint64_t OSAction_DriverKit_AppleEthernetIXL_OtherInterruptMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t DriverKit_AppleEthernetIXL_NetIfMetaClass::New(DriverKit_AppleEthernetIXL_NetIfMetaClass *this, OSObject *a2)
{
  a2->OSMetaClassBase::__vftable = &off_100024D60;
  a2->OSObjectInterface::__vftable = off_100024EF0;
  *&a2[1].refcount = &off_100024F10;
  return 0;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf::_Dispatch(IOUserNetworkEthernet *this, IORPCMessageMach **a2, IORPC *a3)
{
  msgid = IORPCMessageFromMach(*a2, 0)->msgid;
  if (msgid <= 0xE072FCC26CF639ABLL)
  {
    if (msgid <= 0xB23EE0228705FB94)
    {
      if (msgid == 0x98E715041C459FA5)
      {
        v7 = *a2;
        return IOService::Stop_Invoke(&v7, this, DriverKit_AppleEthernetIXL_NetIf::Stop_Impl);
      }

      if (msgid == 0xA49568F23EE8EFD5)
      {
        v7 = *a2;
        return IOUserNetworkEthernet::GetMaxTransferUnit_Invoke(&v7, this, DriverKit_AppleEthernetIXL_NetIf::GetMaxTransferUnit_Impl);
      }
    }

    else
    {
      switch(msgid)
      {
        case 0xB23EE0228705FB95:
          if (!OSMetaClassBase::IsRemote(this))
          {
            v7 = *a2;
            return IOUserNetworkEthernet::SetWakeOnMagicPacketEnable_Invoke(&v7, this, DriverKit_AppleEthernetIXL_NetIf::SetWakeOnMagicPacketEnable_Impl);
          }

          goto LABEL_34;
        case 0xC3E63AC546EBD1FELL:
          if (!OSMetaClassBase::IsRemote(this))
          {
            v7 = *a2;
            return IOUserNetworkEthernet::SelectMediaType_Invoke(&v7, this, DriverKit_AppleEthernetIXL_NetIf::SelectMediaType_Impl);
          }

          goto LABEL_34;
        case 0xE042A87972611225:
          if (!OSMetaClassBase::IsRemote(this))
          {
            v7 = *a2;
            return IOUserNetworkEthernet::SetAllMulticastModeEnable_Invoke(&v7, this, DriverKit_AppleEthernetIXL_NetIf::SetAllMulticastModeEnable_Impl);
          }

          goto LABEL_34;
      }
    }

    goto LABEL_35;
  }

  if (msgid <= 0xED7CE2CA0DF8ED0DLL)
  {
    if (msgid == 0xE072FCC26CF639ACLL)
    {
      if (!OSMetaClassBase::IsRemote(this))
      {
        v7 = *a2;
        return IOUserNetworkEthernet::SetPromiscuousModeEnable_Invoke(&v7, this, DriverKit_AppleEthernetIXL_NetIf::SetPromiscuousModeEnable_Impl);
      }

      goto LABEL_34;
    }

    if (msgid == 0xE77A9AA5DB9C706CLL)
    {
      v7 = *a2;
      return IOUserNetworkEthernet::GetHardwareAssists_Invoke(&v7, this, DriverKit_AppleEthernetIXL_NetIf::GetHardwareAssists_Impl);
    }

    goto LABEL_35;
  }

  if (msgid == 0xED7CE2CA0DF8ED0ELL)
  {
    v7 = *a2;
    return IOUserNetworkEthernet::SetMTU_Invoke(&v7, this, DriverKit_AppleEthernetIXL_NetIf::SetMTU_Impl);
  }

  if (msgid == 0xF421A9D80F9A1FDALL)
  {
    if (!OSMetaClassBase::IsRemote(this))
    {
      v7 = *a2;
      return IOUserNetworkEthernet::SetInterfaceEnable_Invoke(&v7, this, DriverKit_AppleEthernetIXL_NetIf::SetInterfaceEnable_Impl);
    }

LABEL_34:
    v7 = *a2;
    return OSMetaClassBase::Dispatch(this, &v7);
  }

  if (msgid != 0x47C6F6B682E21240)
  {
LABEL_35:
    v7 = *a2;
    return IOUserNetworkEthernet::_Dispatch(this, &v7);
  }

  if (OSMetaClassBase::IsRemote(this))
  {
    goto LABEL_34;
  }

  result = 3758097087;
  if ((*a2)->msgh_body.msgh_descriptor_count == 1 && *&(*a2)[2].msgh.msgh_bits == 1 && *(a2 + 4) >= 0x48u && (!a2[1] || *(a2 + 5) >= 0x34u))
  {
    DriverKit_AppleEthernetIXL_NetIf::PlaceHolder_Impl(this);
  }

  return result;
}

uint64_t DriverKit_AppleEthernetIXL_NetIf::PlaceHolder_Invoke(DriverKit_AppleEthernetIXL_NetIf *this, IORPC *a2, OSMetaClassBase *a3, void (*a4)(OSMetaClassBase *))
{
  result = 3758097087;
  if (*(*this + 24) == 1 && *(*this + 56) == 1 && *(this + 4) >= 0x48u && (!*(this + 1) || *(this + 5) >= 0x34u))
  {
    (a3)(a2);
    return 0;
  }

  return result;
}

uint64_t DriverKit_AppleEthernetIXL_NetIfMetaClass::Dispatch(OSMetaClassBase *this, IORPC *a2)
{
  IORPCMessageFromMach(a2->message, 0);
  v5 = *a2;
  return OSMetaClassBase::Dispatch(this, &v5);
}

uint64_t DriverKit_AppleEthernetIXL_NetIf::PlaceHolder(OSMetaClassBase *this, uint64_t (*a2)(OSMetaClassBase *, IORPC *))
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0;
  DWORD1(v4) = 72;
  v7 = xmmword_10001D120;
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

void ixl::ixl_pf_qmgr::alloc_scattered()
{
  __assert_rtn("alloc_scattered", "ixl_pf_qmgr.cpp", 88, "0");
}

{
  __assert_rtn("alloc_scattered", "ixl_pf_qmgr.cpp", 64, "qtag && num && (num <= 16)");
}

void ixl::ixl_pf_qmgr::mark_queue_enabled()
{
  __assert_rtn("pf_qidx_from_vsi_qidx", "DriverKit_Ethernet.h", 325, "index < qtag->num_allocated");
}

{
  __assert_rtn("mark_queue_enabled", "ixl_pf_qmgr.cpp", 148, "qtag");
}

void DriverKit_AppleEthernetIXL_IVars::update_link_status()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x2Cu);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::getSupportedMediaArray()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::selMed()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
  }
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::handleChosenMedia()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

void DriverKit_AppleEthernetIXL::Start_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 43, "!Start(provider, SUPERDISPATCH)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 57, "!CopyDispatchQueue(kIOServiceDefaultQueueName, &ivars->dispatch_queue)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 58, "!IODispatchQueue::Create(kDKPCIInterruptQueueName, 0, 0, &ivars->intrpt_disp_q)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 59, "!SetDispatchQueue(kDKPCIInterruptQueueName, ivars->intrpt_disp_q)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 66, "!IOInterruptDispatchSource::GetInterruptType(pciDev, 0, &interruptType)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 71, "!IOInterruptDispatchSource::Create(pciDev, vector, ivars->intrpt_disp_q, &ivars->intSource[i])");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 72, "!CreateActionOtherInterrupt(sizeof(void*), &action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 73, "!ivars->intSource[0]->SetHandler(action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 74, "!ivars->intSource[0]->SetEnable(true)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 78, "!IOInterruptDispatchSource::Create(pciDev, vector, ivars->intrpt_disp_q, &ivars->intSource[i])");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 79, "!CreateActionQueueInterrupt(sizeof(void*), &action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 80, "!ivars->intSource[1]->SetHandler(action)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 81, "!ivars->intSource[1]->SetEnable(true)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 83, "!pciDev->Open(this, 0)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 90, "!Create(this, NetIf, &service)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 94, "!netif->SetDispatchQueue(kIOServiceDefaultQueueName, ivars->dispatch_queue)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 95, "!netif->SetDispatchQueue(kDKPCIInterruptQueueName, ivars->intrpt_disp_q)");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 99, "!JoinPMTree()");
}

{
  __assert_rtn("Start_Impl", "DriverKit_Ethernet.cpp", 100, "!service->JoinPMTree()");
}

void DriverKit_AppleEthernetIXL::Stop_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

void DriverKit_AppleEthernetIXL_NetIf::Stop_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
  }
}

void DriverKit_AppleEthernetIXL_NetIf::SetInterfaceEnable_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
  }
}

void DriverKit_AppleEthernetIXL_NetIf::SetInterfaceEnable_Impl(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(*a1 + 24);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v3, v4, v5, v6, v7, 0x22u);
  }
}

void DriverKit_AppleEthernetIXL_NetIf::SetAllMulticastModeEnable_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
  }
}

void DriverKit_AppleEthernetIXL_NetIf::SelectMediaType_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
  }
}

void DriverKit_AppleEthernetIXL_NetIf::SetWakeOnMagicPacketEnable_Impl()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
  }
}

void DriverKit_AppleEthernetIXL_IVars::probe()
{
  __assert_rtn("probe", "AppleEthernetIXL.cpp", 49, "!pciDev->CopyProperties(&props)");
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x26u);
  }
}

{
  __assert_rtn("probe", "AppleEthernetIXL.cpp", 81, "!pciDev->GetBusDeviceFunction(&b, &d, &f)");
}

void DriverKit_AppleEthernetIXL_IVars::reset_hw()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
  }
}

void DriverKit_AppleEthernetIXL_IVars::load(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 35444);
    v3 = *(a1 + 35446);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v4, v5, v6, v7, v8, 0x28u);
  }
}

void DriverKit_AppleEthernetIXL_IVars::unload(uint64_t a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    i40e_stat_str(a1, a2);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v4, v5, v6, v7, v8, 0x26u);
  }
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::up()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }

  __assert_rtn("up", "AppleEthernetIXL.cpp", 517, "0");
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::up(unsigned __int16 *a1, unsigned __int8 *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a1;
    v10 = a1[1];
    v11 = a1[2];
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1[5];
    v15 = *a2;
    v16 = *(a1 + 13);
    v17 = a1[64];
    v18 = *(a1 + 98);
    OUTLINED_FUNCTION_2();
    _os_log_impl(v4, v5, v6, v7, v8, 0x58u);
  }
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::up(_DWORD *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v2, v3, v4, v5, v6, 0x22u);
  }

  *a1 = 0;
}

void DriverKit_AppleEthernetIXL_IVars::enableTxRing()
{
  OUTLINED_FUNCTION_8();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x28u);
  }
}

void DriverKit_AppleEthernetIXL_IVars::enableRxRing()
{
  OUTLINED_FUNCTION_8();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x28u);
  }
}

void DriverKit_AppleEthernetIXL_IVars::disableTxRing()
{
  OUTLINED_FUNCTION_8();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x28u);
  }
}

void DriverKit_AppleEthernetIXL_IVars::disableRxRing()
{
  OUTLINED_FUNCTION_8();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x28u);
  }
}

void DriverKit_AppleEthernetIXL_IVars::handle_tx_mdd_event()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

void DriverKit_AppleEthernetIXL_IVars::handle_rx_mdd_event()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x34u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::down()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
  }
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::setMcastAddresses()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x22u);
  }
}

{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
  }
}

uint64_t DriverKit_AppleEthernetIXL_NetIf_IVars::allocateRings(void)::$_0::operator()(IODMACommand *a1, uint64_t *a2)
{
  IODMACommand::CompleteDMA(a1, 0, 0);
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 16))(result);
    *a2 = 0;
  }

  return result;
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::startInterface()
{
  __assert_rtn("startInterface", "en_main.cpp", 55, "!IOUserNetworkPacketBufferPool::CreateWithOptions(pciDev, poolName, &poolOptions, &rx_pool)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 62, "!IOUserNetworkPacketBufferPool::CreateWithOptions(pciDev, poolName, &poolOptions, &tx_pool)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 69, "!IOUserNetworkTxSubmissionQueue::Create(tx_pool, owner, TX_RING_SIZE >> 1, 0, dq, &tx_ring[i].sub_q)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 70, "!tx_ring[i].sub_q->_SetDoorbell(mdev->intSource[1 + i])");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 72, "!IOUserNetworkTxCompletionQueue::Create(tx_pool, owner, TX_RING_SIZE >> 1, 0, dq, &tx_ring[i].cmp_q)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 73, "!tx_ring[i].cmp_q->CopyDataQueue(&tx_ring[i].cmp)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 77, "!IOUserNetworkRxSubmissionQueue::Create(rx_pool, owner, RX_RING_SIZE, 0, dq, &rx_ring[i].sub_q)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 78, "!rx_ring[i].sub_q->_SetDoorbell(mdev->intSource[1 + i])");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 80, "!IOUserNetworkRxCompletionQueue::Create(rx_pool, owner, RX_RING_SIZE, 0, dq, &rx_ring[i].cmp_q)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 81, "!rx_ring[i].cmp_q->CopyDataQueue(&rx_ring[i].cmp)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 89, "!getSupportedMediaArray(mediaTypes, &count)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 90, "!owner->ReportAvailableMediaTypes(mediaTypes, count)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 91, "!owner->registerEthernetInterface(queues, rx_num_queues * 4, tx_pool, rx_pool)");
}

{
  __assert_rtn("startInterface", "en_main.cpp", 92, "!owner->RegisterService()");
}

void DriverKit_AppleEthernetIXL_NetIf_IVars::enable(int a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315906;
    v3 = pcindkid;
    v4 = 2080;
    v5 = "enable";
    v6 = 1024;
    v7 = 119;
    v8 = 1024;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ixl:(%s): %s(%d): ==> 0x%08x\n", &v2, 0x22u);
  }
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

void operator new()
{
    ;
  }
}