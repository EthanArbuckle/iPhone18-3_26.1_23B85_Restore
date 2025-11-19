uint64_t e1000_copper_link_setup_m88_gen2(uint64_t a1)
{
  if (*(a1 + 1134))
  {
    return 0;
  }

  v11 = v1;
  v12 = v2;
  v10 = 0;
  result = (*(a1 + 976))(a1, 16, &v10);
  if (result)
  {
    return result;
  }

  v5 = v10 & 0xFF9F;
  v6 = *(a1 + 1130);
  if (v6 != 1)
  {
    if (v6 == 3)
    {
      if (*(a1 + 1104) != 21040272)
      {
        v5 |= 0x40u;
        goto LABEL_12;
      }
    }

    else if (v6 == 2)
    {
      v5 |= 0x20u;
      goto LABEL_12;
    }

    v5 = v10 | 0x60;
  }

LABEL_12:
  v7 = v5 & 0xFFFD;
  if (*(a1 + 1131))
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 | v8;
  if (*(a1 + 1104) == 21040800)
  {
    v10 = v9 & 0xF7FF;
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

    v9 = v10;
  }

  v10 = v9 & 0x87FF | 0x5800;
  result = (*(a1 + 1032))(a1, 16, v10);
  if (!result)
  {
    result = (*(a1 + 928))(a1);
    if (!result)
    {
      return e1000_set_primary_secondary_mode(a1);
    }
  }

  return result;
}

uint64_t e1000_copper_link_setup_igp(uint64_t a1)
{
  if (*(a1 + 1134))
  {
    return 0;
  }

  v9 = v1;
  v10 = v2;
  result = (*(a1 + 1008))();
  if (!result)
  {
    IODelay(0x186A0uLL);
    if (*(a1 + 1072) != 3 || (result = (*(a1 + 1024))(a1, 0), !result))
    {
      v5 = *(a1 + 1016);
      if (!v5 || (result = v5(a1, 0), !result))
      {
        v8 = 0;
        result = (*(a1 + 976))(a1, 18, &v8);
        if (!result)
        {
          v6 = *(a1 + 1130);
          if (v6 == 2)
          {
            v7 = v8 & 0xCFFF | 0x2000;
          }

          else
          {
            v7 = v6 == 1 ? v8 & 0xCFFF : v8 | 0x1000;
          }

          v8 = v7;
          result = (*(a1 + 1032))(a1, 18, v7);
          if (!result)
          {
            if (*(a1 + 851) == 1)
            {
              if (*(a1 + 1120) != 32)
              {
                return e1000_set_primary_secondary_mode(a1);
              }

              result = (*(a1 + 976))(a1, 16, &v8);
              if (!result)
              {
                v8 &= ~0x80u;
                result = (*(a1 + 1032))(a1, 16);
                if (!result)
                {
                  result = (*(a1 + 976))(a1, 9, &v8);
                  if (!result)
                  {
                    v8 &= ~0x1000u;
                    result = (*(a1 + 1032))(a1, 9);
                    if (!result)
                    {
                      return e1000_set_primary_secondary_mode(a1);
                    }
                  }
                }
              }
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t e1000_phy_setup_autoneg(uint64_t a1)
{
  v11 = 0;
  v10 = 0;
  *(a1 + 1120) &= *(a1 + 1122);
  result = (*(a1 + 976))(a1, 4, &v11 + 2);
  if (!result)
  {
    v3 = *(a1 + 1122);
    if ((v3 & 0x20) != 0)
    {
      result = (*(a1 + 976))(a1, 9, &v11);
      if (result)
      {
        return result;
      }

      v3 = *(a1 + 1122);
    }

    if ((v3 & 0x80) == 0 || *(a1 + 1104) != 1741282304 || (result = (*(a1 + 976))(a1, 458784, &v10), !result))
    {
      v4 = v11 & 0xFCFF;
      LOWORD(v11) = v11 & 0xFCFF;
      v5 = *(a1 + 1120);
      if ((v5 & 0x20) != 0)
      {
        LOWORD(v11) = v4 | 0x200;
      }

      v6 = HIWORD(v11) & 0xFE1F | (32 * (v5 & 0xF));
      v10 = v10 & 0xFF7F | v5 & 0x80;
      v7 = *(a1 + 880);
      result = 4294967293;
      if (v7 > 1)
      {
        if (v7 != 2)
        {
          if (v7 != 3)
          {
            return result;
          }

LABEL_17:
          v8 = v6 | 0xC00;
          goto LABEL_20;
        }

        v8 = v6 & 0xF3FF | 0x800;
      }

      else
      {
        if (v7)
        {
          if (v7 != 1)
          {
            return result;
          }

          goto LABEL_17;
        }

        v8 = v6 & 0xF3FF;
      }

LABEL_20:
      HIWORD(v11) = v8;
      result = (*(a1 + 1032))(a1, 4, v8);
      if (!result)
      {
        v9 = *(a1 + 1122);
        if ((v9 & 0x20) != 0)
        {
          result = (*(a1 + 1032))(a1, 9, v11);
          v9 = *(a1 + 1122);
        }

        else
        {
          result = 0;
        }

        if ((v9 & 0x80) != 0 && *(a1 + 1104) == 1741282304)
        {
          return (*(a1 + 1032))(a1, 458784, v10);
        }
      }
    }
  }

  return result;
}

uint64_t e1000_copper_link_autoneg(uint64_t a1)
{
  v2 = *(a1 + 1122);
  if ((*(a1 + 1120) & v2) != 0)
  {
    v2 &= *(a1 + 1120);
  }

  *(a1 + 1120) = v2;
  result = e1000_phy_setup_autoneg(a1);
  if (!result)
  {
    v5 = 0;
    result = (*(a1 + 976))(a1, 0, &v5);
    if (!result)
    {
      v5 |= 0x1200u;
      result = (*(a1 + 1032))(a1, 0);
      if (!result)
      {
        if (*(a1 + 1136) == 1 && *(a1 + 976))
        {
          v6 = 0;
          v4 = 45;
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

            if ((v6 & 0x20) == 0)
            {
              IODelay(0x186A0uLL);
              if (--v4)
              {
                continue;
              }
            }

            goto LABEL_13;
          }
        }

        else
        {
LABEL_13:
          result = 0;
          *(a1 + 853) = 1;
        }
      }
    }
  }

  return result;
}

uint64_t e1000_setup_copper_link_generic(uint64_t a1)
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
    result = (*(a1 + 936))(a1);
    if (result)
    {
      return result;
    }
  }

  v3 = 0;
  result = e1000_phy_has_link_generic(a1, 0xAu, 0xAu, &v3);
  if (!result)
  {
    if (v3)
    {
      (*(a1 + 224))(a1);

      return e1000_config_fc_after_link_up_generic(a1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t e1000_phy_has_link_generic(uint64_t a1, unsigned int a2, unsigned int a3, BOOL *a4)
{
  if (!*(a1 + 976))
  {
    return 0;
  }

  if (a2)
  {
    v12 = 0;
    if (a3 <= 0x3E7)
    {
      v7 = a3;
    }

    else
    {
      v7 = 1000 * (a3 / 0x3E8);
    }

    v8 = 1;
    v9 = a2;
    v10 = 1;
    while (1)
    {
      if ((*(a1 + 976))(a1, 1, &v12))
      {
        IODelay(v7);
      }

      result = (*(a1 + 976))(a1, 1, &v12);
      if (result)
      {
        break;
      }

      if ((v12 & 4) == 0)
      {
        IODelay(v7);
        v10 = v8++ < a2;
        if (--v9)
        {
          continue;
        }
      }

      goto LABEL_15;
    }
  }

  else
  {
    v10 = 0;
LABEL_15:
    result = 0;
  }

  *a4 = v10;
  return result;
}

uint64_t e1000_phy_force_speed_duplex_igp(uint64_t a1)
{
  v4 = 0;
  result = (*(a1 + 976))(a1, 0, &v4);
  if (!result)
  {
    e1000_phy_force_speed_duplex_setup(a1, &v4);
    result = (*(a1 + 1032))(a1, 0, v4);
    if (!result)
    {
      result = (*(a1 + 976))(a1, 18, &v4);
      if (!result)
      {
        v4 &= 0xCFFFu;
        result = (*(a1 + 1032))(a1, 18);
        if (!result)
        {
          IODelay(1uLL);
          if (*(a1 + 1136) == 1)
          {
            result = e1000_phy_has_link_generic(a1, 0x14u, 0x186A0u, &v3);
            if (!result)
            {
              return e1000_phy_has_link_generic(a1, 0x14u, 0x186A0u, &v3);
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void e1000_phy_force_speed_duplex_setup(uint64_t a1, _WORD *a2)
{
  *(a1 + 880) = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v4 = *a2 & 0xCEBF;
  if ((*(a1 + 846) & 5) != 0)
  {
    v5 = 6144;
  }

  else
  {
    v4 |= 0x100u;
    v5 = 6145;
  }

  if ((*(a1 + 846) & 0xC) != 0)
  {
    v4 |= 0x2000u;
    v6 = readData & 0xFFFFE4DE | v5 | 0x100;
  }

  else
  {
    v6 = readData & 0xFFFFE4DE | v5;
  }

  *a2 = v4;
  (*(a1 + 224))(a1);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v6);
}

uint64_t e1000_phy_force_speed_duplex_m88(uint64_t a1)
{
  v9 = 0;
  if (*(a1 + 1072) != 15)
  {
    result = (*(a1 + 976))(a1, 16, &v9);
    if (result)
    {
      return result;
    }

    v9 &= 0xFF9Fu;
    result = (*(a1 + 1032))(a1, 16);
    if (result)
    {
      return result;
    }
  }

  result = (*(a1 + 976))(a1, 0, &v9);
  if (result)
  {
    return result;
  }

  e1000_phy_force_speed_duplex_setup(a1, &v9);
  result = (*(a1 + 1032))(a1, 0, v9);
  if (result)
  {
    return result;
  }

  result = (*(a1 + 928))(a1);
  if (result)
  {
    return result;
  }

  if (*(a1 + 1136) == 1)
  {
    v8 = 0;
    result = e1000_phy_has_link_generic(a1, 0x14u, 0x186A0u, &v8);
    if (result)
    {
      return result;
    }

    if (!v8)
    {
      v3 = *(a1 + 1104);
      if (v3 <= 21040575)
      {
        if (v3 != 21040128)
        {
          v4 = 21040272;
          goto LABEL_18;
        }
      }

      else if (((v3 - 21040576) > 0x30 || ((1 << (v3 + 64)) & 0x1000000010001) == 0) && v3 != 21040800)
      {
        v4 = 1741282304;
LABEL_18:
        if (v3 != v4 && *(a1 + 1072) == 2)
        {
          result = (*(a1 + 1032))(a1, 29, 29);
          if (result)
          {
            return result;
          }

          v7 = *(a1 + 1032);
          if (v7)
          {
            result = v7(a1, 30, 193);
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
        }
      }
    }

    result = e1000_phy_has_link_generic(a1, 0x14u, 0x186A0u, &v8);
    if (result)
    {
      return result;
    }
  }

  if (*(a1 + 1072) != 2)
  {
    return 0;
  }

  result = 0;
  v5 = *(a1 + 1104);
  if (v5 <= 21040575)
  {
    if (v5 == 21040128)
    {
      return result;
    }

    v6 = 21040272;
    goto LABEL_29;
  }

  if (((v5 - 21040576) > 0x30 || ((1 << (v5 + 64)) & 0x1000000010001) == 0) && v5 != 21040800)
  {
    v6 = 1741282304;
LABEL_29:
    if (v5 != v6)
    {
      result = (*(a1 + 976))(a1, 20, &v9);
      if (!result)
      {
        v9 |= 0x70u;
        result = (*(a1 + 1032))(a1, 20);
        if (!result)
        {
          result = (*(a1 + 976))(a1, 16, &v9);
          if (!result)
          {
            v9 |= 0x800u;
            return (*(a1 + 1032))(a1, 16);
          }
        }
      }
    }
  }

  return result;
}

uint64_t e1000_phy_force_speed_duplex_ife(uint64_t a1)
{
  v4 = 0;
  result = (*(a1 + 976))(a1, 0, &v4);
  if (!result)
  {
    e1000_phy_force_speed_duplex_setup(a1, &v4);
    result = (*(a1 + 1032))(a1, 0, v4);
    if (!result)
    {
      result = (*(a1 + 976))(a1, 28, &v4);
      if (!result)
      {
        v4 &= 0xFF3Fu;
        result = (*(a1 + 1032))(a1, 28);
        if (!result)
        {
          IODelay(1uLL);
          if (*(a1 + 1136) != 1)
          {
            return 0;
          }

          result = e1000_phy_has_link_generic(a1, 0x14u, 0x186A0u, &v3);
          if (!result)
          {
            result = e1000_phy_has_link_generic(a1, 0x14u, 0x186A0u, &v3);
            if (!result)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t e1000_set_d3_lplu_state_generic(uint64_t a1, char a2)
{
  v2 = *(a1 + 976);
  if (!v2)
  {
    return 0;
  }

  v12 = 0;
  result = v2();
  if (!result)
  {
    if (a2)
    {
      v6 = *(a1 + 1120);
      v7 = v6 > 0x2F;
      v8 = (1 << v6) & 0x800000008008;
      if (!v7 && v8 != 0)
      {
        v12 |= 4u;
        result = (*(a1 + 1032))(a1, 25);
        if (result)
        {
          return result;
        }

LABEL_17:
        result = (*(a1 + 976))(a1, 16, &v12);
        if (result)
        {
          return result;
        }

        v11 = v12 & 0xFF7F;
LABEL_19:
        v12 = v11;
        return (*(a1 + 1032))(a1, 16);
      }
    }

    else
    {
      v12 &= ~4u;
      result = (*(a1 + 1032))(a1, 25);
      if (result)
      {
        return result;
      }

      v10 = *(a1 + 1096);
      if (v10 == 2)
      {
        goto LABEL_17;
      }

      if (v10 == 1)
      {
        result = (*(a1 + 976))(a1, 16, &v12);
        if (result)
        {
          return result;
        }

        v11 = v12 | 0x80;
        goto LABEL_19;
      }
    }

    return 0;
  }

  return result;
}

uint64_t e1000_check_downshift_generic(uint64_t a1)
{
  v2 = *(a1 + 1072) - 2;
  if (v2 < 0xE && ((0x20DFu >> v2) & 1) != 0)
  {
    v3 = dword_100033138[v2];
    v4 = dword_100033170[v2];
    v6 = 0;
    result = (*(a1 + 976))(a1, v3, &v6);
    if (!result)
    {
      *(a1 + 1135) = (v4 & v6) != 0;
    }
  }

  else
  {
    result = 0;
    *(a1 + 1135) = 0;
  }

  return result;
}

uint64_t e1000_check_polarity_m88(uint64_t a1)
{
  v3 = 0;
  result = (*(a1 + 976))(a1, 17, &v3);
  if (!result)
  {
    *(a1 + 1092) = (v3 >> 1) & 1;
  }

  return result;
}

uint64_t e1000_check_polarity_igp(uint64_t a1)
{
  v6 = 0;
  result = (*(a1 + 976))(a1, 17, &v6);
  if (!result)
  {
    v3 = v6 >> 14;
    v4 = v3 <= 2 ? 17 : 180;
    result = (*(a1 + 976))(a1, v4, &v6);
    if (!result)
    {
      if (v3 <= 2)
      {
        v5 = 2;
      }

      else
      {
        v5 = 120;
      }

      *(a1 + 1092) = (v5 & v6) != 0;
    }
  }

  return result;
}

uint64_t e1000_check_polarity_ife(uint64_t a1)
{
  v6 = 0;
  v2 = *(a1 + 1133);
  if (*(a1 + 1133))
  {
    v3 = 16;
  }

  else
  {
    v3 = 17;
  }

  result = (*(a1 + 976))(a1, v3, &v6);
  if (!result)
  {
    if (v2)
    {
      v5 = 256;
    }

    else
    {
      v5 = 32;
    }

    *(a1 + 1092) = (v5 & v6) != 0;
  }

  return result;
}

uint64_t e1000_get_cable_length_m88(uint64_t a1)
{
  v6 = 0;
  result = (*(a1 + 976))(a1, 17, &v6);
  if (!result)
  {
    v3 = (v6 >> 7) & 7;
    if (v3 <= 5)
    {
      result = 0;
      v4 = e1000_m88_cable_length_table[v3];
      *(a1 + 1128) = v4;
      v5 = e1000_m88_cable_length_table[(v3 + 1)];
      *(a1 + 1126) = v5;
      *(a1 + 1124) = (v5 + v4) >> 1;
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

uint64_t e1000_get_cable_length_m88_gen2(uint64_t a1)
{
  v14 = 0;
  v13 = 0;
  v2 = *(a1 + 1104);
  result = 4294967294;
  if (v2 <= 21040575)
  {
    if (v2 == 21040128)
    {
      result = (*(a1 + 976))(a1, (*(a1 + 1100) + 458768), &v14 + 2);
      if (!result)
      {
        result = (*(a1 + 976))(a1, 458773, &v14);
        if (!result)
        {
          if ((v14 & 0x400) != 0)
          {
            v9 = 1;
          }

          else
          {
            v9 = 100;
          }

          v10 = HIWORD(v14) / v9;
          *(a1 + 1128) = v10;
          *(a1 + 1126) = v10;
          *(a1 + 1124) = v10;
          return 0;
        }
      }
    }

    else if (v2 == 21040272)
    {
      result = (*(a1 + 976))(a1, 22, &v13);
      if (!result)
      {
        result = (*(a1 + 1032))(a1, 22, 5);
        if (!result)
        {
          result = (*(a1 + 976))(a1, 26, &v14 + 2);
          if (!result)
          {
            v8 = (HIWORD(v14) >> 7) & 7;
            if (v8 > 5)
            {
              return 4294967294;
            }

            v11 = e1000_m88_cable_length_table[v8];
            *(a1 + 1128) = v11;
            v12 = e1000_m88_cable_length_table[(v8 + 1)];
            *(a1 + 1126) = v12;
            v7 = (v12 + v11) >> 1;
LABEL_34:
            *(a1 + 1124) = v7;
            result = (*(a1 + 1032))(a1, 22, v13);
            if (result)
            {
              return result;
            }

            return 0;
          }
        }
      }
    }
  }

  else
  {
    if (((v2 - 21040576) > 0x30 || ((1 << (v2 + 64)) & 0x1000000010001) == 0) && v2 != 21040800)
    {
      if (v2 != 1741282304)
      {
        return result;
      }

      return 0;
    }

    result = (*(a1 + 976))(a1, 22, &v13);
    if (!result)
    {
      result = (*(a1 + 1032))(a1, 22, 7);
      if (!result)
      {
        result = (*(a1 + 976))(a1, (*(a1 + 1100) + 16), &v14 + 2);
        if (!result)
        {
          result = (*(a1 + 976))(a1, 21, &v14);
          if (!result)
          {
            if ((v14 & 0x400) != 0)
            {
              v6 = 1;
            }

            else
            {
              v6 = 100;
            }

            v7 = HIWORD(v14) / v6;
            *(a1 + 1128) = v7;
            *(a1 + 1126) = v7;
            goto LABEL_34;
          }
        }
      }
    }
  }

  return result;
}

uint64_t e1000_get_cable_length_igp_2(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v12 = 0;
  v5 = 112;
  while (1)
  {
    result = (*(a1 + 976))(a1, e1000_get_cable_length_igp_2(e1000_hw *)::agc_reg_array[v2], &v12);
    if (result)
    {
      break;
    }

    if ((v12 + 7680) < 0x2000u)
    {
      return 4294967294;
    }

    ++v2;
    v7 = e1000_igp_2_cable_length_table[v12 >> 9];
    if (e1000_igp_2_cable_length_table[v5] > v7)
    {
      v5 = v12 >> 9;
    }

    if (e1000_igp_2_cable_length_table[v3] < v7)
    {
      v3 = v12 >> 9;
    }

    v4 += v7;
    if (v2 == 4)
    {
      result = 0;
      v8 = (v4 - (e1000_igp_2_cable_length_table[v5] + e1000_igp_2_cable_length_table[v3])) >> 1;
      if (v8 <= 0xF)
      {
        v9 = 15;
      }

      else
      {
        v9 = (v4 - (e1000_igp_2_cable_length_table[v5] + e1000_igp_2_cable_length_table[v3])) >> 1;
      }

      v10 = v9 - 15;
      *(a1 + 1128) = v10;
      v11 = v8 + 15;
      *(a1 + 1126) = v11;
      *(a1 + 1124) = (v11 + v10) >> 1;
      return result;
    }
  }

  return result;
}

uint64_t e1000_get_phy_info_m88(uint64_t a1)
{
  if (*(a1 + 1116) != 1)
  {
    return 4294967293;
  }

  v9 = v1;
  v10 = v2;
  v7 = 0;
  v6 = 0;
  result = e1000_phy_has_link_generic(a1, 1u, 0, &v6);
  if (!result)
  {
    if (v6)
    {
      result = (*(a1 + 976))(a1, 16, &v7);
      if (!result)
      {
        *(a1 + 1133) = (v7 & 2) != 0;
        v8 = 0;
        result = (*(a1 + 976))(a1, 17, &v8);
        if (!result)
        {
          *(a1 + 1092) = (v8 >> 1) & 1;
          result = (*(a1 + 976))(a1, 17, &v7);
          if (!result)
          {
            v5 = v7;
            *(a1 + 1132) = (v7 & 0x40) != 0;
            if ((v5 & 0xC000) == 0x8000)
            {
              result = (*(a1 + 952))(a1);
              if (!result)
              {
                result = (*(a1 + 976))(a1, 10, &v7);
                if (!result)
                {
                  *(a1 + 1076) = vbic_s8(0x100000001, vceqz_s32(vand_s8(vdup_n_s32(v7), 0x100000002000)));
                }
              }
            }

            else
            {
              result = 0;
              *(a1 + 1124) = 255;
              *(a1 + 1076) = 0xFF000000FFLL;
            }
          }
        }
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t e1000_get_phy_info_igp(uint64_t a1)
{
  v7 = 0;
  v6 = 0;
  result = e1000_phy_has_link_generic(a1, 1u, 0, &v6);
  if (!result)
  {
    if (v6)
    {
      *(a1 + 1133) = v6;
      result = e1000_check_polarity_igp(a1);
      if (!result)
      {
        result = (*(a1 + 976))(a1, 17, &v7);
        if (!result)
        {
          v3 = v7;
          *(a1 + 1132) = (v7 & 0x800) != 0;
          if (v3 < 0xC000)
          {
            v5 = 255;
            *(a1 + 1124) = 255;
            *(a1 + 1076) = 255;
            goto LABEL_12;
          }

          result = (*(a1 + 952))(a1);
          if (!result)
          {
            result = (*(a1 + 976))(a1, 10, &v7);
            if (!result)
            {
              v4 = v7;
              *(a1 + 1076) = (v7 >> 13) & 1;
              v5 = (v4 >> 12) & 1;
LABEL_12:
              result = 0;
              *(a1 + 1080) = v5;
            }
          }
        }
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t e1000_get_phy_info_ife(uint64_t a1)
{
  v5 = 0;
  v4 = 0;
  result = e1000_phy_has_link_generic(a1, 1u, 0, &v4);
  if (!result)
  {
    if (v4)
    {
      result = (*(a1 + 976))(a1, 17, &v5);
      if (result)
      {
        return result;
      }

      v3 = v5;
      *(a1 + 1133) = (v5 & 0x10) == 0;
      if ((v3 & 0x10) != 0)
      {
        *(a1 + 1092) = (v3 >> 5) & 1;
      }

      else
      {
        result = e1000_check_polarity_ife(a1);
        if (result)
        {
          return result;
        }
      }

      result = (*(a1 + 976))(a1, 28, &v5);
      if (!result)
      {
        *(a1 + 1132) = (v5 & 0x20) != 0;
        *(a1 + 1124) = 255;
        *(a1 + 1076) = 0xFF000000FFLL;
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t e1000_phy_sw_reset_generic(uint64_t a1)
{
  v1 = *(a1 + 976);
  if (!v1)
  {
    return 0;
  }

  v4 = 0;
  result = v1();
  if (!result)
  {
    v4 |= 0x8000u;
    result = (*(a1 + 1032))(a1, 0);
    if (!result)
    {
      IODelay(1uLL);
      return 0;
    }
  }

  return result;
}

uint64_t e1000_phy_hw_reset_generic(uint64_t a1)
{
  v2 = *(a1 + 920);
  if (v2 && v2(a1))
  {
    return 0;
  }

  result = (*(a1 + 896))(a1);
  if (!result)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE14uLL, &readData);
    __dmb(1u);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
    __dmb(1u);
    v4 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v4 | 0x80000000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(*(a1 + 1108));
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v4);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    IODelay(0x64uLL);
    v5 = -9999;
    do
    {
      v6 = v5;
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE14uLL, &readData);
      __dmb(1u);
      v7 = readData;
      IODelay(1uLL);
      if ((v7 & 0x100) != 0)
      {
        break;
      }

      v5 = v6 + 1;
    }

    while (v6);
    IODelay(0x64uLL);
    (*(a1 + 1000))(a1);
    return (*(a1 + 944))(a1);
  }

  return result;
}

uint64_t e1000_phy_init_script_igp3(uint64_t a1)
{
  (*(a1 + 1032))(a1, 12123, 36888);
  (*(a1 + 1032))(a1, 12114, 0);
  (*(a1 + 1032))(a1, 12209, 35620);
  (*(a1 + 1032))(a1, 12210, 63728);
  (*(a1 + 1032))(a1, 8208, 4272);
  (*(a1 + 1032))(a1, 8209, 0);
  (*(a1 + 1032))(a1, 8413, 9370);
  (*(a1 + 1032))(a1, 8414, 211);
  (*(a1 + 1032))(a1, 10420, 1230);
  (*(a1 + 1032))(a1, 12144, 10724);
  (*(a1 + 1032))(a1, 0, 320);
  (*(a1 + 1032))(a1, 7984, 5638);
  (*(a1 + 1032))(a1, 7985, 47124);
  (*(a1 + 1032))(a1, 7989, 42);
  (*(a1 + 1032))(a1, 7998, 103);
  (*(a1 + 1032))(a1, 8020, 101);
  (*(a1 + 1032))(a1, 8021, 42);
  (*(a1 + 1032))(a1, 8022, 42);
  (*(a1 + 1032))(a1, 8050, 16304);
  (*(a1 + 1032))(a1, 8054, 49407);
  (*(a1 + 1032))(a1, 8055, 7660);
  (*(a1 + 1032))(a1, 8056, 63983);
  (*(a1 + 1032))(a1, 8057, 528);
  (*(a1 + 1032))(a1, 6293, 3);
  (*(a1 + 1032))(a1, 6038, 8);
  (*(a1 + 1032))(a1, 6040, 53256);
  (*(a1 + 1032))(a1, 6296, 55576);
  (*(a1 + 1032))(a1, 6266, 2048);
  (*(a1 + 1032))(a1, 25, 141);
  (*(a1 + 1032))(a1, 27, 8320);
  (*(a1 + 1032))(a1, 20, 69);
  (*(a1 + 1032))(a1, 0, 4928);
  return 0;
}

uint64_t e1000_get_phy_type_from_id(int a1)
{
  result = 2;
  if (a1 > 21040799)
  {
    if (a1 <= 44565263)
    {
      if (a1 <= 22282383)
      {
        if (a1 == 21040800)
        {
          return result;
        }

        if (a1 == 22282320)
        {
          return 10;
        }
      }

      else
      {
        switch(a1)
        {
          case 22282384:
            return 11;
          case 22282400:
            return 12;
          case 22283168:
            return 13;
        }
      }
    }

    else if (a1 > 44565375)
    {
      switch(a1)
      {
        case 1741282304:
          return 16;
        case 44565392:
          return 6;
        case 44565376:
          return 4;
      }
    }

    else
    {
      v3 = a1 - 44565264;
      if (v3 <= 0x20 && ((1 << v3) & 0x100010001) != 0)
      {
        return 7;
      }
    }

    return 0;
  }

  if (a1 > 21040303)
  {
    if ((a1 - 21040576) <= 0x30 && ((1 << (a1 + 64)) & 0x1000000010001) != 0)
    {
      return result;
    }

    if ((a1 - 21040304) < 2)
    {
      return 8;
    }

    if (a1 == 21040320)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= 21040159)
  {
    if (a1 == 5099584)
    {
      return 9;
    }

    if (a1 == 21040128)
    {
      return 15;
    }

    return 0;
  }

  if (((a1 - 21040160) > 0x30 || ((1 << (a1 - 32)) & 0x1000000010001) == 0) && a1 != 21040272)
  {
    if (a1 == 21040288)
    {
      return 5;
    }

    return 0;
  }

  return result;
}

uint64_t e1000_determine_phy_address(uint64_t a1)
{
  v2 = 0;
  *(a1 + 1104) = 0;
  while (2)
  {
    *(a1 + 1100) = v2;
    v3 = 10;
    do
    {
      e1000_get_phy_id(a1);
      if (e1000_get_phy_type_from_id(*(a1 + 1104)))
      {
        return 0;
      }

      IODelay(0x3E8uLL);
      --v3;
    }

    while (v3);
    if (++v2 != 8)
    {
      continue;
    }

    break;
  }

  return 4294967290;
}

uint64_t e1000_write_phy_reg_bm(uint64_t a1, unsigned int a2, int a3)
{
  v16 = a3;
  v6 = (*(a1 + 896))();
  if (!v6)
  {
    if (a2 >> 5 == 800)
    {
      v7 = e1000_access_phy_wakeup_reg_bm(a1, a2, &v16, 0, 0);
    }

    else
    {
      v10 = a2 == 31 || a2 == 25 || a2 >> 13 > 2;
      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      *(a1 + 1100) = v11;
      if (a2 >= 0x10)
      {
        v12 = !v10;
        v13 = v10 ? 5 : 0;
        v14 = v12 ? 22 : 31;
        v6 = e1000_write_phy_reg_mdic(a1, v14, (a2 >> 5 << v13));
        if (v6)
        {
          goto LABEL_26;
        }
      }

      v7 = e1000_write_phy_reg_mdic(a1, a2 & 0x1F, a3);
    }

    v6 = v7;
LABEL_26:
    (*(a1 + 1000))(a1);
  }

  return v6;
}

uint64_t e1000_access_phy_wakeup_reg_bm(uint64_t a1, unsigned int a2, _WORD *a3, int a4, char a5)
{
  v12 = 0;
  if (*(a1 + 284) == 22)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF10uLL, &readData);
    __dmb(1u);
  }

  if ((a5 & 1) != 0 || (result = e1000_enable_phy_wakeup_reg_access_bm(a1, &v12), !result))
  {
    result = e1000_write_phy_reg_mdic(a1, 0x11u, a2 & 0x1F | (32 * (a2 >> 21)));
    if (!result)
    {
      if (a4)
      {
        result = e1000_read_phy_reg_mdic(a1, 0x12u, a3);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = e1000_write_phy_reg_mdic(a1, 0x12u, *a3);
        if (result)
        {
          return result;
        }
      }

      if ((a5 & 1) == 0)
      {
        return e1000_disable_phy_wakeup_reg_access_bm(a1, &v12);
      }
    }
  }

  return result;
}

uint64_t e1000_read_phy_reg_bm(uint64_t a1, unsigned int a2, _WORD *a3)
{
  v6 = (*(a1 + 896))();
  if (!v6)
  {
    if (a2 >> 5 == 800)
    {
      phy_reg_mdic = e1000_access_phy_wakeup_reg_bm(a1, a2, a3, 1, 0);
    }

    else
    {
      v10 = a2 == 31 || a2 == 25 || a2 >> 13 > 2;
      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      *(a1 + 1100) = v11;
      if (a2 >= 0x10)
      {
        v12 = !v10;
        v13 = v10 ? 5 : 0;
        v14 = v12 ? 22 : 31;
        v6 = e1000_write_phy_reg_mdic(a1, v14, (a2 >> 5 << v13));
        if (v6)
        {
          goto LABEL_26;
        }
      }

      phy_reg_mdic = e1000_read_phy_reg_mdic(a1, a2 & 0x1F, a3);
    }

    v6 = phy_reg_mdic;
LABEL_26:
    (*(a1 + 1000))(a1);
  }

  return v6;
}

uint64_t e1000_read_phy_reg_bm2(uint64_t a1, unsigned int a2, _WORD *a3)
{
  v6 = (*(a1 + 896))();
  if (!v6)
  {
    if ((a2 & 0x1FFFE0) == 0x6400)
    {
      phy_reg_mdic = e1000_access_phy_wakeup_reg_bm(a1, a2, a3, 1, 0);
    }

    else
    {
      *(a1 + 1100) = 1;
      if (a2 >= 0x10)
      {
        v6 = e1000_write_phy_reg_mdic(a1, 0x16u, (a2 >> 5));
        if (v6)
        {
          goto LABEL_8;
        }
      }

      phy_reg_mdic = e1000_read_phy_reg_mdic(a1, a2 & 0x1F, a3);
    }

    v6 = phy_reg_mdic;
LABEL_8:
    (*(a1 + 1000))(a1);
  }

  return v6;
}

uint64_t e1000_write_phy_reg_bm2(uint64_t a1, unsigned int a2, int a3)
{
  v9 = a3;
  v6 = (*(a1 + 896))();
  if (!v6)
  {
    if ((a2 & 0x1FFFE0) == 0x6400)
    {
      v7 = e1000_access_phy_wakeup_reg_bm(a1, a2, &v9, 0, 0);
    }

    else
    {
      *(a1 + 1100) = 1;
      if (a2 >= 0x10)
      {
        v6 = e1000_write_phy_reg_mdic(a1, 0x16u, (a2 >> 5));
        if (v6)
        {
          goto LABEL_8;
        }
      }

      v7 = e1000_write_phy_reg_mdic(a1, a2 & 0x1F, a3);
    }

    v6 = v7;
LABEL_8:
    (*(a1 + 1000))(a1);
  }

  return v6;
}

uint64_t e1000_enable_phy_wakeup_reg_access_bm(uint64_t a1, _WORD *a2)
{
  if (!a2)
  {
    return 4294967292;
  }

  *(a1 + 1100) = 1;
  result = e1000_write_phy_reg_mdic(a1, 0x1Fu, 24608);
  if (!result)
  {
    result = e1000_read_phy_reg_mdic(a1, 0x11u, a2);
    if (!result)
    {
      result = e1000_write_phy_reg_mdic(a1, 0x11u, *a2 & 0xFFCB | 4u);
      if (!result)
      {
        *(a1 + 1100) = 1;

        return e1000_write_phy_reg_mdic(a1, 0x1Fu, 25600);
      }
    }
  }

  return result;
}

uint64_t e1000_disable_phy_wakeup_reg_access_bm(uint64_t a1, unsigned __int16 *a2)
{
  if (!a2)
  {
    return 4294967292;
  }

  *(a1 + 1100) = 1;
  result = e1000_write_phy_reg_mdic(a1, 0x1Fu, 24608);
  if (!result)
  {
    v5 = *a2;

    return e1000_write_phy_reg_mdic(a1, 0x11u, v5);
  }

  return result;
}

void e1000_power_up_phy_copper(uint64_t a1)
{
  v2 = 0;
  (*(a1 + 976))(a1, 0, &v2);
  v2 &= ~0x800u;
  (*(a1 + 1032))(a1, 0);
  IODelay(0x12CuLL);
}

void e1000_power_down_phy_copper(uint64_t a1)
{
  v2 = 0;
  (*(a1 + 976))(a1, 0, &v2);
  v2 |= 0x800u;
  (*(a1 + 1032))(a1, 0);
  IODelay(0x3E8uLL);
}

uint64_t __e1000_read_phy_reg_hv(uint64_t a1, unsigned int a2, _WORD *a3, char a4, char a5)
{
  v10 = (a2 >> 5);
  if (v10 > 0x2FF)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  *(a1 + 1100) = v11;
  if ((a4 & 1) == 0)
  {
    v12 = (*(a1 + 896))(a1);
    if (v12)
    {
      return v12;
    }
  }

  if (v10 == 800)
  {
    phy_reg_mdic = e1000_access_phy_wakeup_reg_bm(a1, a2, a3, 1, a5);
  }

  else if (v10 - 1 > 0x2FE)
  {
    if ((a5 & 1) == 0 && (a2 & 0x1F | (32 * (a2 >> 21))) >= 0x10)
    {
      v14 = v10 == 768 ? 0 : a2;
      *(a1 + 1100) = 1;
      v12 = e1000_write_phy_reg_mdic(a1, 0x1Fu, v14 & 0xFFE0);
      *(a1 + 1100) = v11;
      if (v12)
      {
        goto LABEL_18;
      }
    }

    phy_reg_mdic = e1000_read_phy_reg_mdic(a1, a2 & 0x1F, a3);
  }

  else
  {
    phy_reg_mdic = e1000_access_phy_debug_regs_hv(a1, a2, a3, 1);
  }

  v12 = phy_reg_mdic;
LABEL_18:
  if ((a4 & 1) == 0)
  {
    (*(a1 + 1000))(a1);
  }

  return v12;
}

uint64_t __e1000_write_phy_reg_hv(uint64_t a1, unsigned int a2, int a3, char a4, char a5)
{
  v17 = a3;
  v10 = (a2 >> 5);
  if (v10 > 0x2FF)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  *(a1 + 1100) = v11;
  if ((a4 & 1) != 0 || (v12 = (*(a1 + 896))(a1), !v12))
  {
    if (v10 == 800)
    {
      v13 = e1000_access_phy_wakeup_reg_bm(a1, a2, &v17, 0, a5);
    }

    else if (v10 - 1 > 0x2FE)
    {
      if ((a5 & 1) != 0 || (*(a1 + 1072) != 9 || !*(a1 + 1112) || (a3 & 0x800) == 0 || (a2 & 0x1F) != 0 || *(a1 + 1100) != 2 || (v16 = 32511, v13 = e1000_access_phy_debug_regs_hv(a1, 67, &v16, 0), !v13)) && ((a2 & 0x1F | (32 * (a2 >> 21))) < 0x10 || (v10 != 768 ? (v14 = a2) : (v14 = 0), *(a1 + 1100) = 1, v13 = e1000_write_phy_reg_mdic(a1, 0x1Fu, v14 & 0xFFE0), *(a1 + 1100) = v11, !v13)))
      {
        v13 = e1000_write_phy_reg_mdic(a1, a2 & 0x1F, a3);
      }
    }

    else
    {
      v13 = e1000_access_phy_debug_regs_hv(a1, a2, &v17, 0);
    }

    v12 = v13;
    if ((a4 & 1) == 0)
    {
      (*(a1 + 1000))(a1);
    }
  }

  return v12;
}

uint64_t e1000_link_stall_workaround_hv(uint64_t a1)
{
  if (*(a1 + 1072) != 9)
  {
    return 0;
  }

  v6 = v1;
  v7 = v2;
  v5 = 0;
  (*(a1 + 976))(a1, 0, &v5);
  if ((v5 & 0x4000) != 0)
  {
    return 0;
  }

  result = (*(a1 + 976))(a1, 17, &v5);
  if (result)
  {
    return result;
  }

  v5 &= 0xCC00u;
  if (v5 != 35840)
  {
    return 0;
  }

  IODelay(0x30D40uLL);
  result = (*(a1 + 1032))(a1, 24848, 1028);
  if (!result)
  {
    return (*(a1 + 1032))(a1, 24848, 1024);
  }

  return result;
}

uint64_t e1000_check_polarity_82577(uint64_t a1)
{
  v3 = 0;
  result = (*(a1 + 976))(a1, 26, &v3);
  if (!result)
  {
    *(a1 + 1092) = (v3 >> 10) & 1;
  }

  return result;
}

uint64_t e1000_phy_force_speed_duplex_82577(uint64_t a1)
{
  v4 = 0;
  result = (*(a1 + 976))(a1, 0, &v4);
  if (!result)
  {
    e1000_phy_force_speed_duplex_setup(a1, &v4);
    result = (*(a1 + 1032))(a1, 0, v4);
    if (!result)
    {
      IODelay(1uLL);
      if (*(a1 + 1136) == 1)
      {
        result = e1000_phy_has_link_generic(a1, 0x14u, 0x186A0u, &v3);
        if (!result)
        {
          return e1000_phy_has_link_generic(a1, 0x14u, 0x186A0u, &v3);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t e1000_get_phy_info_82577(uint64_t a1)
{
  v5 = 0;
  v4 = 0;
  result = e1000_phy_has_link_generic(a1, 1u, 0, &v4);
  if (!result)
  {
    if (v4)
    {
      *(a1 + 1133) = v4;
      v6 = 0;
      result = (*(a1 + 976))(a1, 26, &v6);
      if (!result)
      {
        *(a1 + 1092) = (v6 >> 10) & 1;
        result = (*(a1 + 976))(a1, 26, &v5);
        if (!result)
        {
          v3 = v5;
          *(a1 + 1132) = (v5 & 0x800) != 0;
          if ((v3 & 0x300) == 0x200)
          {
            result = (*(a1 + 952))(a1);
            if (!result)
            {
              result = (*(a1 + 976))(a1, 10, &v5);
              if (!result)
              {
                *(a1 + 1076) = vbic_s8(0x100000001, vceqz_s32(vand_s8(vdup_n_s32(v5), 0x100000002000)));
              }
            }
          }

          else
          {
            result = 0;
            *(a1 + 1124) = 255;
            *(a1 + 1076) = 0xFF000000FFLL;
          }
        }
      }
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t e1000_get_cable_length_82577(uint64_t a1)
{
  v4 = 0;
  result = (*(a1 + 976))(a1, 31, &v4);
  if (!result)
  {
    v3 = (v4 >> 2);
    if (v3 == 255)
    {
      return 4294967294;
    }

    else
    {
      result = 0;
      *(a1 + 1124) = v3;
    }
  }

  return result;
}

uint64_t e1000_write_phy_reg_gs40g(uint64_t a1, unsigned int a2, int a3)
{
  v6 = (*(a1 + 896))();
  if (!v6)
  {
    v6 = e1000_write_phy_reg_mdic(a1, 0x16u, HIWORD(a2));
    if (!v6)
    {
      v6 = e1000_write_phy_reg_mdic(a1, a2, a3);
    }

    (*(a1 + 1000))(a1);
  }

  return v6;
}

uint64_t e1000_read_phy_reg_gs40g(uint64_t a1, unsigned int a2, _WORD *a3)
{
  phy_reg_mdic = (*(a1 + 896))();
  if (!phy_reg_mdic)
  {
    phy_reg_mdic = e1000_write_phy_reg_mdic(a1, 0x16u, HIWORD(a2));
    if (!phy_reg_mdic)
    {
      phy_reg_mdic = e1000_read_phy_reg_mdic(a1, a2, a3);
    }

    (*(a1 + 1000))(a1);
  }

  return phy_reg_mdic;
}

uint64_t e1000_write_phy_reg_gpy(uint64_t a1, int a2, int a3)
{
  v4 = a2;
  if (BYTE2(a2))
  {
    v7 = a3;
    return __e1000_access_xmdio_reg(a1, a2, BYTE2(a2), &v7, 0);
  }

  else
  {
    result = (*(a1 + 896))(a1);
    if (!result)
    {
      result = e1000_write_phy_reg_mdic(a1, v4, a3);
      if (!result)
      {
        (*(a1 + 1000))(a1);
        return 0;
      }
    }
  }

  return result;
}

uint64_t e1000_read_phy_reg_gpy(uint64_t a1, int a2, unsigned __int16 *a3)
{
  v4 = a2;
  if (BYTE2(a2))
  {

    return __e1000_access_xmdio_reg(a1, a2, BYTE2(a2), a3, 1);
  }

  else
  {
    result = (*(a1 + 896))(a1);
    if (!result)
    {
      result = e1000_read_phy_reg_mdic(a1, v4, a3);
      if (!result)
      {
        (*(a1 + 1000))(a1);
        return 0;
      }
    }
  }

  return result;
}

uint64_t e1000_read_phy_reg_mphy(uint64_t a1, unsigned __int16 a2, uint32_t *a3)
{
  if (!e1000_is_mphy_ready(a1))
  {
    return 4294967294;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x24uLL, &readData);
  __dmb(1u);
  v6 = readData;
  v7 = readData;
  if ((readData & 0x80000000) != 0)
  {
    if (!e1000_is_mphy_ready(a1))
    {
      return 4294967294;
    }

    v7 = v6 | 0x40000000;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x24uLL, v6 | 0x40000000);
  }

  if (e1000_is_mphy_ready(a1))
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x24uLL, v7 & 0xDFFF0000 | a2);
    if (e1000_is_mphy_ready(a1))
    {
      v9 = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE10uLL, &v9);
      __dmb(1u);
      *a3 = v9;
      if ((v6 & 0x80000000) == 0 || e1000_is_mphy_ready(a1))
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x24uLL, 0x80000000);
        return 0;
      }
    }
  }

  return 4294967294;
}

BOOL e1000_is_mphy_ready(uint64_t a1)
{
  v2 = 1;
  do
  {
    v3 = v2;
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x24uLL, &readData);
    __dmb(1u);
    v4 = readData;
    if ((readData & 0x10000) == 0)
    {
      break;
    }

    IODelay(0x14uLL);
    v2 = 0;
  }

  while ((v3 & 1) != 0);
  return (v4 & 0x10000) == 0;
}

uint64_t e1000_write_phy_reg_mphy(uint64_t a1, unsigned __int16 a2, uint32_t a3, int a4)
{
  if (!e1000_is_mphy_ready(a1))
  {
    return 4294967294;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x24uLL, &readData);
  __dmb(1u);
  v8 = readData;
  v9 = readData;
  if ((readData & 0x80000000) != 0)
  {
    if (!e1000_is_mphy_ready(a1))
    {
      return 4294967294;
    }

    v9 = v8 | 0x40000000;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x24uLL, v8 | 0x40000000);
  }

  if (e1000_is_mphy_ready(a1))
  {
    v10 = a4 ? 0x20000000 : 0;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x24uLL, v10 & 0xFFFF0000 | a2 | v9 & 0xDFFF0000);
    if (e1000_is_mphy_ready(a1))
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE10uLL, a3);
      if ((v8 & 0x80000000) == 0 || e1000_is_mphy_ready(a1))
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x24uLL, 0x80000000);
        return 0;
      }
    }
  }

  return 4294967294;
}

uint64_t __e1000_access_xmdio_reg(uint64_t a1, uint64_t a2, int a3, unsigned __int16 *a4, int a5)
{
  result = (*(a1 + 1032))(a1, 13);
  if (!result)
  {
    result = (*(a1 + 1032))(a1, 14, a2);
    if (!result)
    {
      result = (*(a1 + 1032))(a1, 13, a3 | 0x4000u);
      if (!result)
      {
        result = a5 ? (*(a1 + 976))(a1, 14, a4) : (*(a1 + 1032))(a1, 14, *a4);
        if (!result)
        {
          v11 = *(a1 + 1032);

          return v11(a1, 13, 0);
        }
      }
    }
  }

  return result;
}

uint64_t e1000_access_phy_debug_regs_hv(uint64_t a1, char a2, _WORD *a3, int a4)
{
  if (*(a1 + 1072) == 9)
  {
    v7 = 29;
  }

  else
  {
    v7 = 16;
  }

  *(a1 + 1100) = 2;
  result = e1000_write_phy_reg_mdic(a1, v7, a2 & 0x3F);
  if (!result)
  {
    if (a4)
    {

      return e1000_read_phy_reg_mdic(a1, v7 + 1, a3);
    }

    else
    {
      v9 = *a3;

      return e1000_write_phy_reg_mdic(a1, v7 + 1, v9);
    }
  }

  return result;
}

uint64_t e1000_read_pcie_cap_reg(uint64_t a1, unsigned int a2, uint16_t *a3)
{
  foundCapabilityOffset = 0;
  v5 = *(a1 + 9608);
  PCICapability = IOPCIDevice::FindPCICapability(v5, 0x10u, 0, &foundCapabilityOffset, 0);
  if (!PCICapability)
  {
    IOPCIDevice::ConfigurationRead16(v5, foundCapabilityOffset + a2, a3);
  }

  return PCICapability;
}

uint64_t e1000_write_pcie_cap_reg(uint64_t a1, unsigned int a2, uint16_t *a3)
{
  foundCapabilityOffset = 0;
  v5 = *(a1 + 9608);
  PCICapability = IOPCIDevice::FindPCICapability(v5, 0x10u, 0, &foundCapabilityOffset, 0);
  if (!PCICapability)
  {
    IOPCIDevice::ConfigurationWrite16(v5, foundCapabilityOffset + a2, *a3);
  }

  return PCICapability;
}

uint64_t e1000_read_emi_reg_locked(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a1 + 1040))(a1, 16, a2);
  if (!result)
  {
    v6 = *(a1 + 984);

    return v6(a1, 17, a3);
  }

  return result;
}

uint64_t e1000_write_emi_reg_locked(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a1 + 1040))(a1, 16, a2);
  if (!result)
  {
    v6 = *(a1 + 1040);

    return v6(a1, 17, a3);
  }

  return result;
}

uint64_t e1000_set_eee_pchlan(uint64_t a1)
{
  v2 = *(a1 + 1072);
  if (v2 == 11)
  {
    v3 = 1038;
    v4 = 6190;
    v5 = 1039;
  }

  else
  {
    if (v2 != 12)
    {
      return 0;
    }

    v3 = 32769;
    v4 = 37889;
    v5 = 32770;
  }

  v6 = (*(a1 + 896))(a1);
  if (!v6)
  {
    v12 = 0;
    v11 = 0;
    v7 = (*(a1 + 984))(a1, 24724, &v12);
    if (v7)
    {
LABEL_7:
      v6 = v7;
      (*(a1 + 1000))(a1);
      return v6;
    }

    LOWORD(v12) = v12 & 0x9FFF;
    if ((*(a1 + 9574) & 1) == 0)
    {
      v7 = (*(a1 + 1040))(a1, 16, v5);
      if (v7)
      {
        goto LABEL_7;
      }

      v7 = (*(a1 + 984))(a1, 17, a1 + 9576);
      if (v7)
      {
        goto LABEL_7;
      }

      v7 = (*(a1 + 1040))(a1, 16, v3);
      if (v7)
      {
        goto LABEL_7;
      }

      v7 = (*(a1 + 984))(a1, 17, &v12 + 2);
      if (v7)
      {
        goto LABEL_7;
      }

      v10 = *(a1 + 9576) & HIWORD(v12);
      if ((v10 & 4) != 0)
      {
        LOWORD(v12) = v12 | 0x4000;
      }

      if ((v10 & 2) != 0)
      {
        (*(a1 + 984))(a1, 5, &v11);
        if ((v11 & 0x100) != 0)
        {
          LOWORD(v12) = v12 | 0x2000;
        }

        else
        {
          *(a1 + 9576) &= ~2u;
        }
      }
    }

    if (*(a1 + 1072) == 11)
    {
      v7 = (*(a1 + 1040))(a1, 16, 17426);
      if (v7)
      {
        goto LABEL_7;
      }

      v7 = (*(a1 + 984))(a1, 17, &v11);
      if (v7)
      {
        goto LABEL_7;
      }

      v9 = v11 & 0xFFFB;
      v11 &= ~4u;
      if (!(*(a1 + 1040))(a1, 16, 17426))
      {
        (*(a1 + 1040))(a1, 17, v9);
      }
    }

    v7 = (*(a1 + 1040))(a1, 16, v4);
    if (!v7)
    {
      v7 = (*(a1 + 984))(a1, 17, &v11);
      if (!v7)
      {
        v7 = (*(a1 + 1040))(a1, 24724, v12);
      }
    }

    goto LABEL_7;
  }

  return v6;
}

uint64_t e1000_init_function_pointers_ich8lan(uint64_t result)
{
  *(result + 40) = e1000_init_mac_params_ich8lan;
  *(result + 1144) = e1000_init_nvm_params_ich8lan;
  v1 = *(result + 284) - 19;
  if (v1 <= 9)
  {
    *(result + 888) = off_1000382F0[v1];
  }

  return result;
}

uint64_t e1000_init_mac_params_ich8lan(uint64_t a1)
{
  *(a1 + 1116) = 1;
  *(a1 + 326) = 32;
  v2 = *(a1 + 284);
  if (v2 == 19)
  {
    v3 = 6;
  }

  else
  {
    v3 = 7;
  }

  *(a1 + 844) = v3;
  *(a1 + 847) = 16777473;
  *(a1 + 104) = e1000_get_bus_info_ich8lan;
  *(a1 + 112) = e1000_set_lan_id_single_port;
  *(a1 + 152) = e1000_reset_hw_ich8lan;
  *(a1 + 160) = e1000_init_hw_ich8lan;
  *(a1 + 192) = e1000_setup_link_ich8lan;
  *(a1 + 200) = e1000_setup_copper_link_ich8lan;
  *(a1 + 72) = e1000_check_for_copper_link_ich8lan;
  *(a1 + 120) = e1000_get_link_up_info_ich8lan;
  *(a1 + 144) = e1000_update_mc_addr_list_generic;
  *(a1 + 88) = e1000_clear_hw_cntrs_ich8lan;
  if (v2 > 23)
  {
    if ((v2 - 24) >= 5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if ((v2 - 19) < 3)
    {
      *(a1 + 64) = e1000_check_mng_mode_ich8lan;
      *(a1 + 48) = e1000_id_led_init_generic;
      *(a1 + 56) = e1000_blink_led_generic;
      *(a1 + 208) = e1000_setup_led_generic;
      *(a1 + 80) = e1000_cleanup_led_ich8lan;
      *(a1 + 128) = e1000_led_on_ich8lan;
      *(a1 + 136) = e1000_led_off_ich8lan;
      goto LABEL_14;
    }

    if (v2 == 22)
    {
      goto LABEL_9;
    }

    if (v2 != 23)
    {
      goto LABEL_12;
    }

    *(a1 + 844) = 5;
    *(a1 + 232) = e1000_rar_set_pch2lan;
  }

  *(a1 + 144) = e1000_update_mc_addr_list_pch2lan;
LABEL_9:
  v6 = 0;
  e1000_read_pci_cfg(a1, 8uLL, &v6);
  v2 = *(a1 + 284);
  v4 = v6;
  if (v2 <= 24)
  {
    v4 = v6 & 0xF;
  }

  *(a1 + 9592) = v4;
  *(a1 + 64) = e1000_check_mng_mode_pchlan;
  *(a1 + 48) = e1000_id_led_init_pchlan;
  *(a1 + 208) = e1000_setup_led_pchlan;
  *(a1 + 80) = e1000_cleanup_led_pchlan;
  *(a1 + 128) = e1000_led_on_pchlan;
  *(a1 + 136) = e1000_led_off_pchlan;
LABEL_12:
  if (v2 >= 24)
  {
    *(a1 + 844) = 12;
    *(a1 + 232) = e1000_rar_set_pch_lpt;
    *(a1 + 200) = e1000_setup_copper_link_pch_lpt;
    return 0;
  }

LABEL_14:
  if (v2 == 19)
  {
    *(a1 + 1376) = 1;
  }

  return 0;
}

uint64_t e1000_init_nvm_params_ich8lan(uint64_t a1)
{
  *(a1 + 1216) = 6;
  if (*(a1 + 284) < 25)
  {
    if (!*(a1 + 24))
    {
      return 4294967293;
    }

    __dmb(0xDu);
    v2 = **(a1 + 24);
    *(a1 + 1228) = (v2 & 0x1FFF) << 12;
    *(a1 + 1224) = ((((HIWORD(v2) & 0x1FFF) - (v2 & 0x1FFF)) << 10) + 1024) & 0x3FFFFC00;
  }

  else
  {
    *(a1 + 1228) = 0;
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xCuLL, &readData);
    __dmb(1u);
    *(a1 + 1224) = (((readData << 11) & 0x1F000) + 4096) >> 2;
    *(a1 + 24) = *(a1 + 16) + 57344;
  }

  v3 = 2048;
  *(a1 + 1232) = 2048;
  v4 = (a1 + 1380);
  do
  {
    *v4 = 0;
    *(v4 - 1) = -1;
    v4 += 4;
    --v3;
  }

  while (v3);
  result = 0;
  *(a1 + 1152) = e1000_acquire_nvm_ich8lan;
  *(a1 + 1168) = e1000_release_nvm_ich8lan;
  v6 = *(a1 + 284);
  v7 = v6 <= 24;
  if (v6 <= 24)
  {
    v8 = e1000_read_nvm_ich8lan;
  }

  else
  {
    v8 = e1000_read_nvm_spt;
  }

  v9 = e1000_update_nvm_checksum_ich8lan;
  if (!v7)
  {
    v9 = e1000_update_nvm_checksum_spt;
  }

  *(a1 + 1160) = v8;
  *(a1 + 1184) = v9;
  *(a1 + 1192) = e1000_valid_led_default_ich8lan;
  *(a1 + 1200) = e1000_validate_nvm_checksum_ich8lan;
  *(a1 + 1208) = e1000_write_nvm_ich8lan;
  return result;
}

uint64_t e1000_init_phy_params_ich8lan(uint64_t a1)
{
  *(a1 + 1100) = 1;
  *(a1 + 1108) = 100;
  *(a1 + 896) = e1000_acquire_swflag_ich8lan;
  *(a1 + 920) = e1000_check_reset_block_ich8lan;
  *(a1 + 952) = e1000_get_cable_length_igp_2;
  *(a1 + 944) = e1000_get_cfg_done_ich8lan;
  *(a1 + 976) = e1000_read_phy_reg_igp;
  *(a1 + 1000) = e1000_release_swflag_ich8lan;
  *(a1 + 1008) = e1000_phy_hw_reset_ich8lan;
  *(a1 + 1016) = e1000_set_d0_lplu_state_ich8lan;
  *(a1 + 1024) = e1000_set_d3_lplu_state_ich8lan;
  *(a1 + 1032) = e1000_write_phy_reg_igp;
  *(a1 + 1056) = e1000_power_up_phy_copper;
  *(a1 + 1064) = e1000_power_down_phy_copper_ich8lan;
  if (!e1000_determine_phy_address(a1) || (*(a1 + 1032) = e1000_write_phy_reg_bm, *(a1 + 976) = e1000_read_phy_reg_bm, result = e1000_determine_phy_address(a1), !result))
  {
    v3 = 0;
    *(a1 + 1104) = 0;
    while (!e1000_get_phy_type_from_id(*(a1 + 1104)) && v3 <= 0x63)
    {
      ++v3;
      IODelay(0x3E8uLL);
      result = e1000_get_phy_id(a1);
      if (result)
      {
        return result;
      }
    }

    v4 = *(a1 + 1104);
    if ((v4 - 44565264) > 0x20 || ((1 << (v4 - 16)) & 0x100010001) == 0)
    {
      if (v4 == 21040304)
      {
        *(a1 + 1072) = 8;
        *(a1 + 1122) = 47;
        *(a1 + 976) = e1000_read_phy_reg_bm;
        *(a1 + 1032) = e1000_write_phy_reg_bm;
        *(a1 + 928) = e1000_phy_sw_reset_generic;
        v6 = e1000_phy_force_speed_duplex_m88;
        v7 = e1000_check_polarity_m88;
        v8 = e1000_get_phy_info_m88;
      }

      else
      {
        if (v4 != 44565392)
        {
          return 4294967294;
        }

        *(a1 + 1072) = 6;
        *(a1 + 1122) = 47;
        *(a1 + 984) = e1000_read_phy_reg_igp_locked;
        *(a1 + 1040) = e1000_write_phy_reg_igp_locked;
        v6 = e1000_phy_force_speed_duplex_igp;
        v7 = e1000_check_polarity_igp;
        v8 = e1000_get_phy_info_igp;
      }
    }

    else
    {
      *(a1 + 1072) = 7;
      *(a1 + 1122) = 15;
      v6 = e1000_phy_force_speed_duplex_ife;
      v7 = e1000_check_polarity_ife;
      v8 = e1000_get_phy_info_ife;
    }

    result = 0;
    *(a1 + 960) = v8;
    *(a1 + 912) = v7;
    *(a1 + 936) = v6;
  }

  return result;
}

uint64_t e1000_init_phy_params_pchlan(uint64_t a1)
{
  *(a1 + 1100) = 1;
  *(a1 + 1108) = 100;
  *(a1 + 896) = e1000_acquire_swflag_ich8lan;
  *(a1 + 920) = e1000_check_reset_block_ich8lan;
  *(a1 + 944) = e1000_get_cfg_done_ich8lan;
  *(a1 + 968) = e1000_set_page_igp;
  *(a1 + 976) = e1000_read_phy_reg_hv;
  *(a1 + 984) = e1000_read_phy_reg_hv_locked;
  *(a1 + 992) = e1000_read_phy_reg_page_hv;
  *(a1 + 1000) = e1000_release_swflag_ich8lan;
  *(a1 + 1008) = e1000_phy_hw_reset_ich8lan;
  *(a1 + 1016) = e1000_set_lplu_state_pchlan;
  *(a1 + 1024) = e1000_set_lplu_state_pchlan;
  *(a1 + 1032) = e1000_write_phy_reg_hv;
  *(a1 + 1040) = e1000_write_phy_reg_hv_locked;
  *(a1 + 1048) = e1000_write_phy_reg_page_hv;
  *(a1 + 1056) = e1000_power_up_phy_copper;
  *(a1 + 1064) = e1000_power_down_phy_copper_ich8lan;
  *(a1 + 1122) = 47;
  *(a1 + 1104) = 0;
  result = e1000_init_phy_workarounds_pchlan(a1);
  if (!result)
  {
    v3 = *(a1 + 1104);
    if (!v3)
    {
      if ((*(a1 + 284) - 23) < 6)
      {
        goto LABEL_7;
      }

      result = e1000_get_phy_id(a1);
      if (result)
      {
        return result;
      }

      v3 = *(a1 + 1104);
      if (!v3 || v3 == -16)
      {
LABEL_7:
        result = e1000_set_mdio_slow_mode_hv(a1);
        if (result)
        {
          return result;
        }

        result = e1000_get_phy_id(a1);
        if (result)
        {
          return result;
        }

        v3 = *(a1 + 1104);
      }
    }

    phy_type_from_id = e1000_get_phy_type_from_id(v3);
    *(a1 + 1072) = phy_type_from_id;
    if ((phy_type_from_id - 10) >= 3)
    {
      if (phy_type_from_id == 9)
      {
        result = 0;
        *(a1 + 912) = e1000_check_polarity_m88;
        *(a1 + 936) = e1000_phy_force_speed_duplex_m88;
        *(a1 + 952) = e1000_get_cable_length_m88;
        *(a1 + 960) = e1000_get_phy_info_m88;
      }

      else
      {
        return 4294967294;
      }
    }

    else
    {
      result = 0;
      *(a1 + 912) = e1000_check_polarity_82577;
      *(a1 + 936) = e1000_phy_force_speed_duplex_82577;
      *(a1 + 952) = e1000_get_cable_length_82577;
      *(a1 + 960) = e1000_get_phy_info_82577;
      *(a1 + 928) = e1000_phy_sw_reset_generic;
      *(a1 + 9578) = 0;
    }
  }

  return result;
}

uint64_t e1000_configure_k1_ich8lan(uint64_t a1, int a2)
{
  v10 = 0;
  result = e1000_read_kmrn_reg_locked(a1, 7, &v10);
  if (!result)
  {
    if (a2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    v10 = v10 & 0xFFFD | v5;
    result = e1000_write_kmrn_reg_locked(a1, 7, v10);
    if (!result)
    {
      IODelay(0x14uLL);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
      __dmb(1u);
      v6 = readData;
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
      __dmb(1u);
      v7 = readData;
      v8 = readData & 0xFFFFFCFF;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v8 | 0x800);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v6 | 0x8000);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
      __dmb(1u);
      IODelay(0x14uLL);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v7);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v6);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
      __dmb(1u);
      IODelay(0x14uLL);
      return 0;
    }
  }

  return result;
}

uint64_t e1000_copy_rx_addrs_to_phy_ich8lan(uint64_t a1)
{
  v14 = 0;
  result = (*(a1 + 896))();
  if (!result)
  {
    if (!e1000_enable_phy_wakeup_reg_access_bm(a1, &v14))
    {
      if (*(a1 + 844))
      {
        v3 = 0;
        v4 = 0;
        v5 = 1245184;
        v6 = 19;
        do
        {
          readData = 0;
          if (v6 == 19)
          {
            v7 = 0;
            if (*(a1 + 284) <= 1)
            {
              v8 = 64;
            }

            else
            {
              v8 = 21504;
            }
          }

          else
          {
            v8 = v3 + 21504;
            if (v4 >= 0x10)
            {
              v8 = v3 + 21600;
            }

            v7 = v3;
            if (v8 == 22016)
            {
              if (*(a1 + 284) <= 1)
              {
                v8 = 1536;
              }

              else
              {
                v8 = 22016;
              }

              v7 = v3;
            }
          }

          IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v8, &readData);
          __dmb(1u);
          v9 = readData;
          (*(a1 + 1048))(a1, (v6 - 3) & 0x1C | (v5 - 196608) & 0xFFE00000 | 0x6400, readData);
          (*(a1 + 1048))(a1, (v6 - 2) & 0x1D | (v5 - 0x20000) & 0xFFE00000 | 0x6400, HIWORD(v9));
          v12 = 0;
          if (v4 >= 0x10)
          {
            v10 = (v7 + 21604);
          }

          else
          {
            v10 = v7 | 0x5404u;
          }

          IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v10, &v12);
          __dmb(1u);
          v11 = v12;
          (*(a1 + 1048))(a1, (v6 - 1) & 0x1E | (v5 - 0x10000) & 0xFFE00000 | 0x6400, v12);
          (*(a1 + 1048))(a1, v5 & 0xFFE00000 | v6 & 0x1F | 0x6400, HIWORD(v11) & 0x8000);
          ++v4;
          v3 += 8;
          v5 += 0x40000;
          v6 += 4;
        }

        while (v4 < *(a1 + 844));
      }

      e1000_disable_phy_wakeup_reg_access_bm(a1, &v14);
    }

    return (*(a1 + 1000))(a1);
  }

  return result;
}

uint64_t e1000_lv_jumbo_workaround_ich8lan(uint64_t a1, int a2)
{
  if (*(a1 + 284) < 23)
  {
    return 0;
  }

  v22 = v2;
  v23 = v3;
  v21 = 0;
  (*(a1 + 976))(a1, 24628, &v21 + 2);
  result = (*(a1 + 1032))(a1, 24628, HIWORD(v21) | 0x4000u);
  if (!result)
  {
    if (a2)
    {
      if (*(a1 + 844))
      {
        v7 = 0;
        do
        {
          readData = 0;
          if (v7 >= 0x10)
          {
            v8 = (8 * v7 + 21604);
          }

          else
          {
            v8 = (8 * v7) | 0x5404u;
          }

          IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v8, &readData);
          __dmb(1u);
          v9 = readData;
          if ((readData & 0x80000000) != 0)
          {
            readData = 0;
            if (v7)
            {
              v10 = (8 * v7) | 0x5400;
              if (v7 >= 0x10)
              {
                v10 = 8 * v7 + 21600;
              }

              if (v10 == 22016)
              {
                if (*(a1 + 284) <= 1)
                {
                  v10 = 1536;
                }

                else
                {
                  v10 = 22016;
                }
              }
            }

            else if (*(a1 + 284) <= 1)
            {
              v10 = 64;
            }

            else
            {
              v10 = 21504;
            }

            IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v10, &readData);
            v11 = 0;
            __dmb(1u);
            v20 = v9;
            __dmb(2u);
            v12 = -1;
            do
            {
              v12 ^= *(&readData + v11);
              v13 = -8;
              do
              {
                v12 = ((v12 << 31) >> 31) & 0xEDB88320 ^ (v12 >> 1);
              }

              while (!__CFADD__(v13++, 1));
              ++v11;
            }

            while (v11 != 6);
            IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 4 * v7 + 24400, ~v12);
          }

          ++v7;
        }

        while (v7 < *(a1 + 844));
      }

      e1000_copy_rx_addrs_to_phy_ich8lan(a1);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5F04uLL, &readData);
      __dmb(1u);
      v15 = readData & 0xFFFC3FFF;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5F04uLL, v15 | 0x38000);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x100uLL, &readData);
      __dmb(1u);
      v16 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x100uLL, v16 | 0x4000000);
      result = e1000_read_kmrn_reg_generic(a1, 1, &v21);
      if (result)
      {
        return result;
      }

      result = e1000_write_kmrn_reg_generic(a1, 1, v21 | 1u);
      if (result)
      {
        return result;
      }

      result = e1000_read_kmrn_reg_generic(a1, 16, &v21);
      if (result)
      {
        return result;
      }

      LOWORD(v21) = v21 & 0xF0FF | 0xB00;
      result = e1000_write_kmrn_reg_generic(a1, 16, v21);
      if (result)
      {
        return result;
      }

      (*(a1 + 976))(a1, 24631, &v21);
      LOWORD(v21) = v21 & 0xF01F | 0x6E0;
      result = (*(a1 + 1032))(a1, 24631, v21);
      if (result)
      {
        return result;
      }

      (*(a1 + 976))(a1, 24624, &v21);
      LOWORD(v21) = v21 & 0xDFFF;
      result = (*(a1 + 1032))(a1, 24624);
      if (result)
      {
        return result;
      }

      (*(a1 + 976))(a1, 24852, &v21);
      LOWORD(v21) = v21 & 0xF003 | 0x7C;
      result = (*(a1 + 1032))(a1, 24852, v21);
      if (result)
      {
        return result;
      }

      result = (*(a1 + 1032))(a1, 24855, 61696);
      if (result)
      {
        return result;
      }

      (*(a1 + 976))(a1, 24657, &v21);
      result = (*(a1 + 1032))(a1, 24657, v21 | 0x400u);
    }

    else
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5F04uLL, &readData);
      __dmb(1u);
      v17 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5F04uLL, v17 & 0xFFFC3FFF);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x100uLL, &readData);
      __dmb(1u);
      v18 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x100uLL, v18 & 0xFBFFFFFF);
      result = e1000_read_kmrn_reg_generic(a1, 1, &v21);
      if (result)
      {
        return result;
      }

      result = e1000_write_kmrn_reg_generic(a1, 1, v21 & 0xFFFE);
      if (result)
      {
        return result;
      }

      result = e1000_read_kmrn_reg_generic(a1, 16, &v21);
      if (result)
      {
        return result;
      }

      LOWORD(v21) = v21 & 0xF0FF | 0xB00;
      result = e1000_write_kmrn_reg_generic(a1, 16, v21);
      if (result)
      {
        return result;
      }

      (*(a1 + 976))(a1, 24631, &v21);
      LOWORD(v21) = v21 & 0xF01F;
      result = (*(a1 + 1032))(a1, 24631);
      if (result)
      {
        return result;
      }

      (*(a1 + 976))(a1, 24624, &v21);
      LOWORD(v21) = v21 | 0x2000;
      result = (*(a1 + 1032))(a1, 24624);
      if (result)
      {
        return result;
      }

      (*(a1 + 976))(a1, 24852, &v21);
      LOWORD(v21) = v21 & 0xF003 | 0x20;
      result = (*(a1 + 1032))(a1, 24852, v21);
      if (result)
      {
        return result;
      }

      result = (*(a1 + 1032))(a1, 24855, 32256);
      if (result)
      {
        return result;
      }

      (*(a1 + 976))(a1, 24657, &v21);
      result = (*(a1 + 1032))(a1, 24657, v21 & 0xFBFF);
    }

    if (!result)
    {
      return (*(a1 + 1032))(a1, 24628, HIWORD(v21) & 0xBFFF);
    }
  }

  return result;
}

uint64_t e1000_set_kmrn_lock_loss_workaround_ich8lan(uint64_t result, char a2)
{
  if (*(result + 284) == 19)
  {
    *(result + 1376) = a2;
  }

  return result;
}

uint64_t e1000_igp3_phy_powerdown_workaround_ich8lan(uint64_t result)
{
  if (*(result + 1072) == 6)
  {
    v10 = v1;
    v11 = v2;
    v3 = result;
    v4 = 0;
    v9 = 0;
    while (1)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(v3 + 16), 0, 0xF10uLL, &readData);
      __dmb(1u);
      v5 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(v3 + 16), 0, 0xF10uLL, v5 | 0x48);
      if (*(v3 + 284) == 19)
      {
        e1000_gig_downshift_workaround_ich8lan(v3);
      }

      (*(v3 + 976))(v3, 24850, &v9);
      v9 &= 0xFCFFu;
      (*(v3 + 1032))(v3, 24850, v9 | 0x200u);
      result = (*(v3 + 976))(v3, 24850, &v9);
      v9 &= 0x300u;
      if (v4 & 1 | (v9 == 512))
      {
        break;
      }

      v7 = 0;
      IOPCIDevice::MemoryRead32(*(v3 + 16), 0, 0, &v7);
      __dmb(1u);
      v6 = v7;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(v3 + 16), 0, 0, v6 | 0x80000000);
      v4 = 1;
    }
  }

  return result;
}

uint64_t e1000_gig_downshift_workaround_ich8lan(uint64_t result)
{
  if (*(result + 284) == 19)
  {
    v6 = v1;
    v7 = v2;
    v3 = result;
    if (*(result + 1072) != 7)
    {
      v5 = 0;
      result = e1000_read_kmrn_reg_generic(result, 3, &v5);
      if (!result)
      {
        v4 = v5 | 0x1000;
        v5 |= 0x1000u;
        result = e1000_write_kmrn_reg_generic(v3, 3, v4);
        if (!result)
        {
          return e1000_write_kmrn_reg_generic(v3, 3, v5 & 0xEFFF);
        }
      }
    }
  }

  return result;
}

void e1000_suspend_workarounds_ich8lan(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF10uLL, &readData);
  __dmb(1u);
  v2 = readData | 0x40;
  if (*(a1 + 1072) == 12)
  {
    v8 = 0;
    v3 = *(a1 + 9584);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
    __dmb(1u);
    v4 = readData;
    v5 = (v3 - 5465) >= 2 && (v3 - 5538) >= 2;
    if (!v5 || *(a1 + 284) >= 25)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
      __dmb(1u);
      v6 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v6 & 0xFFFFFEFF);
    }

    if (!(*(a1 + 896))(a1))
    {
      if ((*(a1 + 9574) & 1) == 0)
      {
        LOWORD(readData) = 0;
        if ((*(a1 + 1040))(a1, 16, 32769) || (*(a1 + 984))(a1, 17, &readData))
        {
LABEL_17:
          (*(a1 + 1000))(a1);
          goto LABEL_18;
        }

        if ((readData & 2) != 0 && (*(a1 + 9576) & 2) != 0 && (*(a1 + 1120) & 8) != 0)
        {
          v2 &= 0xFFFFFFF9;
          (*(a1 + 984))(a1, 24722, &v8);
          v8 |= 0x800u;
          (*(a1 + 1040))(a1, 24722);
        }
      }

      if ((*(a1 + 9581) & 1) == 0)
      {
        if ((v4 & 0x8000) == 0)
        {
          (*(a1 + 984))(a1, 4219910, &v8);
          v8 |= 0x80u;
          (*(a1 + 1040))(a1, 4219910);
          (*(a1 + 984))(a1, 24636, &v8);
          v8 |= 0x1000u;
          (*(a1 + 1040))(a1, 24636);
          (*(a1 + 984))(a1, 24730, &v8);
          v8 &= ~0x10u;
          (*(a1 + 1040))(a1, 24730);
        }

        (*(a1 + 984))(a1, 24733, &v8);
        v8 |= 2u;
        (*(a1 + 1040))(a1, 24733);
      }

      goto LABEL_17;
    }
  }

LABEL_18:
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xF10uLL, v2);
  v7 = *(a1 + 284);
  if (v7 == 19)
  {
    e1000_gig_downshift_workaround_ich8lan(a1);
    v7 = *(a1 + 284);
  }

  if (v7 >= 22)
  {
    e1000_oem_bits_config_ich8lan(a1, 0);
    if (*(a1 + 284) == 22)
    {
      e1000_phy_hw_reset_generic(a1);
    }

    if (!(*(a1 + 896))(a1))
    {
      e1000_write_smbus_addr(a1);
      (*(a1 + 1000))(a1);
    }
  }
}

uint64_t e1000_oem_bits_config_ich8lan(uint64_t a1, int a2)
{
  if (*(a1 + 284) >= 22)
  {
    v2 = (*(a1 + 896))();
    if (v2)
    {
      return v2;
    }

    v12 = 0;
    if (*(a1 + 284) == 22 && (readData = 0, IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF00uLL, &readData), __dmb(1u), (readData & 8) != 0) || (v10 = 0, IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x28uLL, &v10), __dmb(1u), (v10 & 0x8000000) == 0))
    {
      v2 = 0;
LABEL_22:
      (*(a1 + 1000))(a1);
      return v2;
    }

    v9 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF10uLL, &v9);
    __dmb(1u);
    v5 = v9;
    v2 = (*(a1 + 984))(a1, 24601, &v12);
    if (v2)
    {
      goto LABEL_22;
    }

    v6 = v12 & 0xFFBB;
    v12 &= 0xFFBBu;
    if (a2)
    {
      if ((v5 & 0x42) != 0)
      {
        v12 = v5 & 0x40 | (4 * ((v5 >> 1) & 1)) | v6;
      }
    }

    else
    {
      if ((v5 & 0x48) != 0)
      {
        v6 |= 0x40u;
      }

      if ((v5 & 6) != 0)
      {
        v6 |= 4u;
      }

      if ((v5 & 0x4E) != 0)
      {
        v12 = v6;
      }

      if (*(a1 + 284) == 22)
      {
        goto LABEL_21;
      }
    }

    v7 = (*(a1 + 920))(a1);
    v6 = v12;
    if (!v7)
    {
      v6 = v12 | 0x400;
      v12 |= 0x400u;
    }

LABEL_21:
    v2 = (*(a1 + 1040))(a1, 24601, v6);
    goto LABEL_22;
  }

  return 0;
}

uint64_t e1000_write_smbus_addr(uint64_t a1)
{
  v8 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xCuLL, &readData);
  __dmb(1u);
  v2 = readData;
  result = e1000_read_phy_reg_hv_locked(a1, 0x601Au, &v8);
  if (!result)
  {
    v4 = (v2 >> 12) & 3;
    v5 = (v2 >> 17) & 0x7F | v8 & 0xFF00 | 0x280;
    v8 = (v2 >> 17) & 0x7F | v8 & 0xFF00 | 0x280;
    if (*(a1 + 1072) == 12 && v4 != 0)
    {
      LOWORD(v5) = ((v4 - 1) << 11) & 0x1000 | (((v4 - 1) & 1) << 8) | v5 & 0xEEFF;
      v8 = v5;
    }

    return e1000_write_phy_reg_hv_locked(a1, 0x601Au, v5);
  }

  return result;
}

uint64_t e1000_resume_workarounds_pchlan(uint64_t a1)
{
  if (*(a1 + 284) >= 23)
  {
    inited = e1000_init_phy_workarounds_pchlan(a1);
    if (inited)
    {
      return inited;
    }

    if ((*(a1 + 9581) & 1) == 0 && *(a1 + 1072) == 12)
    {
      v6 = 0;
      inited = (*(a1 + 896))(a1);
      if (inited)
      {
        return inited;
      }

      (*(a1 + 984))(a1, 24722, &v6);
      v6 &= ~0x800u;
      (*(a1 + 1040))(a1, 24722);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
      __dmb(1u);
      if ((readData & 0x8000) == 0)
      {
        v4 = (*(a1 + 984))(a1, 24730, &v6);
        if (v4)
        {
          inited = v4;
LABEL_14:
          (*(a1 + 1000))(a1);
          return inited;
        }

        v6 |= 0x10u;
        (*(a1 + 1040))(a1, 24730);
        (*(a1 + 1040))(a1, 4219910, 0);
      }

      inited = (*(a1 + 984))(a1, 24733, &v6);
      if (!inited)
      {
        v6 &= ~2u;
        (*(a1 + 1040))(a1, 24733);
      }

      goto LABEL_14;
    }
  }

  return 0;
}

uint64_t e1000_init_phy_workarounds_pchlan(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
  __dmb(1u);
  v2 = readData;
  e1000_gate_hw_phy_config_ich8lan(a1, 1);
  v3 = (*(a1 + 896))(a1);
  if (v3)
  {
LABEL_2:
    v4 = v3;
    goto LABEL_3;
  }

  v7 = *(a1 + 284);
  if ((v7 - 24) >= 5)
  {
    if (v7 == 22)
    {
      goto LABEL_28;
    }

    if (v7 != 23)
    {
      v4 = 0;
      is_accessible_pchlan = 1;
      goto LABEL_18;
    }

LABEL_15:
    if (e1000_phy_is_accessible_pchlan(a1))
    {
      goto LABEL_16;
    }

    if (*(a1 + 284) != 22)
    {
LABEL_34:
      if ((*(a1 + 920))(a1))
      {
        is_accessible_pchlan = 0;
        v4 = 4294967294;
        goto LABEL_17;
      }

      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3CuLL, &readData);
      __dmb(1u);
      v10 = readData & 0xF3FFFFFF;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3CuLL, v10 | 0x8000000);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
      __dmb(1u);
      v11 = readData & 0xFFFCFFFF;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v11 | 0x10000);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
      __dmb(1u);
      IODelay(0x3E8uLL);
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v11);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
      __dmb(1u);
      if (*(a1 + 284) >= 24)
      {
        v13 = 20;
        v12 = 30000;
        do
        {
          IODelay(0x1388uLL);
          readData = 0;
          IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
          __dmb(1u);
          if ((readData & 4) != 0)
          {
            break;
          }

          v5 = v13-- == 0;
        }

        while (!v5);
      }

      else
      {
        v12 = 50000;
      }

      IODelay(v12);
      if (*(a1 + 284) >= 24)
      {
        if ((e1000_phy_is_accessible_pchlan(a1) & 1) == 0)
        {
          readData = 0;
          IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
          __dmb(1u);
          v14 = readData;
          __dmb(2u);
          IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v14 & 0xFFFFF7FF);
          is_accessible_pchlan = e1000_phy_is_accessible_pchlan(a1);
          if (is_accessible_pchlan)
          {
            v4 = 0;
          }

          else
          {
            v4 = 4294967294;
          }

          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_29:
      (*(a1 + 1000))(a1);
      goto LABEL_30;
    }

LABEL_28:
    if (v2 < 0)
    {
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  if ((e1000_phy_is_accessible_pchlan(a1) & 1) == 0)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
    __dmb(1u);
    v8 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v8 | 0x800);
    IODelay(0xC350uLL);
    goto LABEL_15;
  }

LABEL_16:
  v4 = 0;
  is_accessible_pchlan = 1;
LABEL_17:
  v7 = *(a1 + 284);
LABEL_18:
  if (v7 < 24 || (*(a1 + 9574) & 1) != 0 || v2 < 0)
  {
    (*(a1 + 1000))(a1);
    if (!is_accessible_pchlan)
    {
      goto LABEL_3;
    }
  }

  else
  {
    LOWORD(readData) = 0;
    IODelay(0x3E8uLL);
    (*(a1 + 984))(a1, 24724, &readData);
    if ((readData & 0x1000) != 0)
    {
      LOWORD(readData) = readData & 0xEFFF;
      (*(a1 + 1040))(a1, 24724);
    }

    (*(a1 + 1000))(a1);
    if ((is_accessible_pchlan & 1) == 0)
    {
      goto LABEL_3;
    }
  }

LABEL_30:
  if (!(*(a1 + 920))(a1))
  {
    v3 = e1000_phy_hw_reset_generic(a1);
    if (!v3)
    {
      v3 = (*(a1 + 920))(a1);
    }

    goto LABEL_2;
  }

  v4 = 0;
LABEL_3:
  v5 = *(a1 + 284) == 23 && (v2 & 0x8000) == 0;
  if (v5)
  {
    IODelay(0x2710uLL);
    e1000_gate_hw_phy_config_ich8lan(a1, 0);
  }

  return v4;
}

uint64_t e1000_get_bus_info_ich8lan(uint64_t a1)
{
  *(a1 + 1256) = 1;
  *(a1 + 1248) = 3;
  *(a1 + 1260) = 0;
  return 0;
}

uint64_t e1000_reset_hw_ich8lan(uint64_t a1)
{
  v8 = 0;
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
  v2 = *(a1 + 284);
  if (v2 == 19)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x1000uLL, 8u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x1008uLL, 0x10u);
    v2 = *(a1 + 284);
  }

  if (v2 == 22)
  {
    result = e1000_read_nvm(a1);
    if (result)
    {
      return result;
    }

    *(a1 + 9572) = v8 & 1;
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v4 = readData;
  if (!(*(a1 + 920))(a1))
  {
    v4 |= 0x80000000;
    if (*(a1 + 284) == 23)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
      __dmb(1u);
      if ((readData & 0x8000) == 0)
      {
        e1000_gate_hw_phy_config_ich8lan(a1, 1);
      }
    }
  }

  e1000_acquire_swflag_ich8lan(a1);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v4 | 0x4000000);
  IODelay(0x4E20uLL);
  if (*(a1 + 284) == 23)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3CuLL, &readData);
    __dmb(1u);
    v5 = readData & 0xF3FFFFFF;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3CuLL, v5 | 0x8000000);
  }

  if ((v4 & 0x80000000) == 0 || (result = (*(a1 + 944))(a1), !result) && (result = e1000_post_phy_reset_ich8lan(a1), !result))
  {
    if (*(a1 + 284) == 22)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5F50uLL, 0x65656565u);
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD8uLL, 0xFFFFFFFF);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xC0uLL, &readData);
    __dmb(1u);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3004uLL, &readData);
    __dmb(1u);
    v6 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3004uLL, v6 | 0x50000);
    return 0;
  }

  return result;
}

uint64_t e1000_init_hw_ich8lan(uint64_t a1)
{
  v23 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
  __dmb(1u);
  v2 = readData;
  if (*(a1 + 284) <= 21)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 5242880;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v3 | v2);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3828uLL, &readData);
  __dmb(1u);
  v4 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3828uLL, v4 | 0x400000);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3928uLL, &readData);
  __dmb(1u);
  v5 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3928uLL, v5 | 0x400000);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3840uLL, &readData);
  __dmb(1u);
  v6 = readData;
  if (*(a1 + 284) == 19)
  {
    v6 = readData | 0x30000000;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3840uLL, v6 | 0xD800000);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3940uLL, &readData);
  __dmb(1u);
  v7 = readData;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x400uLL, &readData);
  __dmb(1u);
  v8 = readData & 0x10000000 | v7 & 0xAAFFFFFF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3940uLL, v8 ^ 0x55000000);
  if (*(a1 + 284) == 19)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    v9 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 8uLL, v9 & 0x7FFFFFFF);
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5008uLL, &readData);
  __dmb(1u);
  v10 = readData;
  if (*(a1 + 284) == 19)
  {
    v11 = 196800;
  }

  else
  {
    v11 = 192;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5008uLL, v11 | v10);
  if (*(a1 + 284) >= 24)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x100CuLL, &readData);
    __dmb(1u);
    v12 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x100CuLL, v12 | 0x10000);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
    __dmb(1u);
    v13 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v13 | 0x80000);
  }

  (*(a1 + 48))(a1);
  e1000_init_rx_addrs_generic(a1, *(a1 + 844));
  v23 = 0;
  if (*(a1 + 326))
  {
    v14 = 0;
    do
    {
      __dmb(2u);
      v15 = 4 * v14 + 20992;
      if (4 * v14 == 512)
      {
        if (*(a1 + 284) <= 1)
        {
          v15 = 64;
        }

        else
        {
          v15 = 21504;
        }
      }

      else if (v14)
      {
        if (4 * v14 == 1024)
        {
          if (*(a1 + 284) <= 1)
          {
            v15 = 1536;
          }

          else
          {
            v15 = 22016;
          }
        }
      }

      else if (*(a1 + 284) <= 1)
      {
        v15 = 512;
      }

      else
      {
        v15 = 20992;
      }

      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v15, 0);
      v23 = ++v14;
    }

    while (*(a1 + 326) > v14);
  }

  if (*(a1 + 1072) != 9 || ((*(a1 + 976))(a1, 24625, &v23), v23 &= ~0x10u, (*(a1 + 1032))(a1, 24625), v16 = e1000_phy_hw_reset_ich8lan(a1), !v16))
  {
    v16 = (*(a1 + 192))(a1);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3828uLL, &readData);
    __dmb(1u);
    v17 = readData & 0xFFC1FFC1;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3828uLL, v17 | 0x101001F);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3928uLL, &readData);
    __dmb(1u);
    v18 = readData & 0xFFC1FFC1;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3928uLL, v18 | 0x101001F);
    if (*(a1 + 284) == 19)
    {
      v19 = 63;
    }

    else
    {
      v19 = -64;
    }

    e1000_set_pcie_no_snoop_generic(a1, v19);
    if (*(a1 + 284) >= 27)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5F04uLL, &readData);
      __dmb(1u);
      v20 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5F04uLL, v20 | 0x1000);
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &readData);
    __dmb(1u);
    v21 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v21 | 0x20000);
    e1000_clear_hw_cntrs_ich8lan(a1);
  }

  return v16;
}

uint64_t e1000_setup_link_ich8lan(uint64_t a1)
{
  v2 = *(a1 + 884);
  if (v2 == 255)
  {
    v2 = 3;
    *(a1 + 884) = 3;
  }

  *(a1 + 880) = v2;
  if ((*(a1 + 920))(a1) || (result = (*(a1 + 200))(a1), !result))
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x170uLL, *(a1 + 872));
    if ((*(a1 + 1072) - 9) > 3 || (__dmb(2u), IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5F40uLL, *(a1 + 874)), result = (*(a1 + 1032))(a1, 24635, *(a1 + 872)), !result))
    {

      return e1000_set_fc_watermarks_generic(a1);
    }
  }

  return result;
}

uint64_t e1000_setup_copper_link_ich8lan(uint64_t a1)
{
  v9 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData & 0xFFFFE7FF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x40);
  result = e1000_write_kmrn_reg_generic(a1, 4, 0xFFFF);
  if (result)
  {
    return result;
  }

  result = e1000_read_kmrn_reg_generic(a1, 9, &v9);
  if (result)
  {
    return result;
  }

  v4 = v9 | 0x3F;
  v9 |= 0x3Fu;
  result = e1000_write_kmrn_reg_generic(a1, 9, v4);
  if (result)
  {
    return result;
  }

  v5 = *(a1 + 1072);
  if (v5 > 9)
  {
    if ((v5 - 10) < 2)
    {
      result = e1000_copper_link_setup_82577(a1);
      if (result)
      {
        return result;
      }
    }

    return e1000_setup_copper_link_generic(a1);
  }

  if ((v5 - 8) < 2)
  {
    result = e1000_copper_link_setup_m88(a1);
    if (result)
    {
      return result;
    }

    return e1000_setup_copper_link_generic(a1);
  }

  if (v5 == 6)
  {
    result = e1000_copper_link_setup_igp(a1);
    if (result)
    {
      return result;
    }

    return e1000_setup_copper_link_generic(a1);
  }

  if (v5 != 7)
  {
    return e1000_setup_copper_link_generic(a1);
  }

  result = (*(a1 + 976))(a1, 28, &v9);
  if (!result)
  {
    v6 = *(a1 + 1130);
    if (v6 == 2)
    {
      v7 = v9 & 0xFF3F | 0x40;
    }

    else
    {
      v7 = v6 == 1 ? v9 & 0xFF3F : v9 | 0x80;
    }

    v9 = v7;
    result = (*(a1 + 1032))(a1, 28, v7);
    if (!result)
    {
      return e1000_setup_copper_link_generic(a1);
    }
  }

  return result;
}

uint64_t e1000_check_for_copper_link_ich8lan(uint64_t a1)
{
  if (*(a1 + 853) != 1)
  {
    return 0;
  }

  v36 = 0;
  v35 = 0;
  has_link_generic = e1000_phy_has_link_generic(a1, 1u, 0, &v36);
  if (has_link_generic)
  {
    return has_link_generic;
  }

  v4 = *(a1 + 284);
  if (v4 == 22)
  {
    has_link_generic = e1000_k1_gig_workaround_hv(a1, v36);
    if (has_link_generic)
    {
      return has_link_generic;
    }

    v4 = *(a1 + 284);
  }

  if (v4 < 23)
  {
LABEL_61:
    v19 = *(a1 + 9584);
    v20 = (v19 - 5538) >= 2;
    v21 = v19 - 5465;
    if (!v20 || v21 <= 1)
    {
      v23 = v36;
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
      __dmb(1u);
      v24 = readData;
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
      __dmb(1u);
      v25 = readData;
      LOWORD(readData) = 0;
      if (v23 && (v25 & 0x80) != 0)
      {
        has_link_generic = (*(a1 + 896))(a1);
        if (has_link_generic)
        {
          return has_link_generic;
        }

        v16 = e1000_read_kmrn_reg_locked(a1, 7, &readData);
        if (v16 || (v16 = e1000_write_kmrn_reg_locked(a1, 7, readData & 0xFFFD), v16))
        {
LABEL_70:
          v3 = v16;
          (*(a1 + 1000))(a1);
          return v3;
        }

        IODelay(0xAuLL);
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v24 | 0x100);
        v3 = e1000_write_kmrn_reg_locked(a1, 7, readData);
        (*(a1 + 1000))(a1);
        if (v3)
        {
          return v3;
        }
      }

      else
      {
        v26 = v24 & 0xFFFFFEFF;
        if (*(a1 + 1112) <= 5u && v23 && (~v25 & 0x41) != 0)
        {
          has_link_generic = (*(a1 + 976))(a1, 24658, &readData);
          if (has_link_generic)
          {
            return has_link_generic;
          }

          v32 = (v25 & 0x40) != 0 ? 1280 : 12800;
          v33 = readData & 0xC0FF | v32;
          v26 = (v25 & 0x40) != 0 ? v24 & 0xFFFFFCFF : v24 & 0xFFFFFCFF | 0x200;
          LOWORD(readData) = readData & 0xC0FF | v32;
          has_link_generic = (*(a1 + 1032))(a1, 24658, v33);
          if (has_link_generic)
          {
            return has_link_generic;
          }
        }

        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v26);
      }
    }

    *(a1 + 9576) = 0;
    if (*(a1 + 284) >= 24)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
      __dmb(1u);
      v27 = readData;
      if (*(a1 + 284) == 25)
      {
        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF18uLL, &readData);
        __dmb(1u);
        v27 = readData & 0x80000000 | v27 & 0x7FFFFFFF;
      }

      if (*(a1 + 9573))
      {
        v28 = v27 & 0x7FFFFFFF;
      }

      else
      {
        v28 = v27;
      }

      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x10uLL, v28);
    }

    if (v36)
    {
      *(a1 + 853) = 0;
      v29 = *(a1 + 284);
      if (v29 != 22)
      {
        if (v29 != 23)
        {
          goto LABEL_91;
        }

        has_link_generic = e1000_k1_workaround_lv(a1);
        if (has_link_generic)
        {
          return has_link_generic;
        }
      }

      if (*(a1 + 1072) == 9)
      {
        has_link_generic = e1000_link_stall_workaround_hv(a1);
        if (has_link_generic)
        {
          return has_link_generic;
        }
      }

      (*(a1 + 976))(a1, 24656, &v35);
      v35 &= 0x8FFFu;
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
      __dmb(1u);
      v30 = v35;
      if ((readData & 1) == 0)
      {
        v30 = v35 | 0x1000u;
        v35 |= 0x1000u;
      }

      (*(a1 + 1032))(a1, 24656, v30);
LABEL_91:
      e1000_check_downshift_generic(a1);
      if (*(a1 + 1072) < 12 || (has_link_generic = e1000_set_eee_pchlan(a1), !has_link_generic))
      {
        if (*(a1 + 851) != 1)
        {
          return 4294967293;
        }

        (*(a1 + 224))(a1);
        return e1000_config_fc_after_link_up_generic(a1);
      }

      return has_link_generic;
    }

    return 0;
  }

  if (!v36)
  {
LABEL_59:
    if (v4 >= 24)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x24uLL, &readData);
      __dmb(1u);
      v18 = readData;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x24uLL, v18 | 7);
    }

    goto LABEL_61;
  }

  v34 = 0;
  e1000_get_speed_and_duplex_copper_generic(a1, &v34 + 1, &v34);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x410uLL, &readData);
  __dmb(1u);
  v5 = readData & 0xFFFFFC00;
  if (v34 == 1 && HIWORD(v34) == 10)
  {
    v6 = 0;
    v7 = 255;
  }

  else
  {
    if (HIWORD(v34) != 1000 && *(a1 + 284) > 24 && v34 == 2)
    {
      v7 = 12;
    }

    else
    {
      v7 = 8;
    }

    v6 = 1;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x410uLL, v5 | v7);
  v3 = (*(a1 + 896))(a1);
  if (!v3)
  {
    if (*(a1 + 284) == 23)
    {
      v10 = 13330;
    }

    else
    {
      v10 = 45580;
    }

    v3 = (*(a1 + 1040))(a1, 16, v10);
    if (!v3)
    {
      v3 = (*(a1 + 1040))(a1, 17, v6);
    }

    if (*(a1 + 9580) == 1)
    {
      e1000_phy_timing_recovery_workaround_lv(a1);
    }

    if ((*(a1 + 9578) & 1) != 0 || *(a1 + 9579) == 1)
    {
      (*(a1 + 984))(a1, 24657, &v35);
      v11 = v35;
      if (*(a1 + 9578) == 1)
      {
        v11 = v35 | 0x80;
        v35 |= 0x80u;
      }

      if (*(a1 + 9579) == 1)
      {
        v11 &= ~0x100u;
        v35 = v11;
      }

      (*(a1 + 1040))(a1, 24657, v11);
    }

    if (*(a1 + 284) >= 24)
    {
      (*(a1 + 984))(a1, 24732, &v35);
      v12 = HIWORD(v34) == 10 || HIWORD(v34) == 100;
      v13 = v12 ? 1000 : 250;
      v35 = v35 & 0xF800 | v13;
      (*(a1 + 1040))(a1, 24732, v35 & 0xFFFE);
      if (HIWORD(v34) == 1000)
      {
        (*(a1 + 984))(a1, 24657, &v35);
        v35 |= 0x200u;
        (*(a1 + 1040))(a1, 24657);
      }
    }

    (*(a1 + 1000))(a1);
    if (!v3)
    {
      v4 = *(a1 + 284);
      if (v4 < 25)
      {
        goto LABEL_59;
      }

      LOWORD(readData) = 0;
      v14 = HIWORD(v34);
      v15 = (*(a1 + 896))(a1);
      v3 = v15;
      if (v14 == 1000)
      {
        if (v15)
        {
          return v3;
        }

        v16 = (*(a1 + 984))(a1, 24852, &readData);
        if (v16)
        {
          goto LABEL_70;
        }

        if ((readData & 0xFE0) >= 0x60)
        {
          (*(a1 + 1000))(a1);
LABEL_58:
          v4 = *(a1 + 284);
          goto LABEL_59;
        }

        LOWORD(readData) = readData & 0xF003 | 0x60;
        v17 = (*(a1 + 1040))(a1, 24852);
      }

      else
      {
        if (v15)
        {
          return v3;
        }

        v17 = (*(a1 + 1040))(a1, 24852);
      }

      v3 = v17;
      (*(a1 + 1000))(a1);
      if (v3)
      {
        return v3;
      }

      goto LABEL_58;
    }
  }

  return v3;
}

uint64_t e1000_get_link_up_info_ich8lan(uint64_t a1, __int16 *a2, __int16 *a3)
{
  result = e1000_get_speed_and_duplex_copper_generic(a1, a2, a3);
  if (!result)
  {
    if (*(a1 + 284) == 19 && *(a1 + 1072) == 6 && *a2 == 1000 && *(a1 + 1376) == 1 && (v11 = 0, v10 = 0, e1000_phy_has_link_generic(a1, 1u, 0, &v10), v10))
    {
      v6 = 0;
      while (1)
      {
        result = (*(a1 + 976))(a1, 24659, &v11);
        if (result)
        {
          break;
        }

        result = (*(a1 + 976))(a1, 24659, &v11);
        if (result)
        {
          break;
        }

        if ((v11 & 2) == 0)
        {
          return 0;
        }

        (*(a1 + 1008))(a1);
        IODelay(0x1388uLL);
        if (v6++ >= 9)
        {
          readData = 0;
          IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF10uLL, &readData);
          __dmb(1u);
          v8 = readData;
          __dmb(2u);
          IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xF10uLL, v8 | 0x48);
          e1000_gig_downshift_workaround_ich8lan(a1);
          return 4294967294;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void e1000_clear_hw_cntrs_ich8lan(uint64_t a1)
{
  v3 = 0;
  e1000_clear_hw_cntrs_base_generic(a1);
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
  if ((*(a1 + 1072) - 9) <= 3 && !(*(a1 + 896))(a1))
  {
    if (!(*(a1 + 968))(a1, 24896))
    {
      (*(a1 + 992))(a1, 24912, &v3);
      (*(a1 + 992))(a1, 24913, &v3);
      (*(a1 + 992))(a1, 24914, &v3);
      (*(a1 + 992))(a1, 24915, &v3);
      (*(a1 + 992))(a1, 24916, &v3);
      (*(a1 + 992))(a1, 24917, &v3);
      (*(a1 + 992))(a1, 24919, &v3);
      (*(a1 + 992))(a1, 24920, &v3);
      (*(a1 + 992))(a1, 24921, &v3);
      (*(a1 + 992))(a1, 24922, &v3);
      (*(a1 + 992))(a1, 24923, &v3);
      (*(a1 + 992))(a1, 24924, &v3);
      (*(a1 + 992))(a1, 24925, &v3);
      (*(a1 + 992))(a1, 24926, &v3);
    }

    (*(a1 + 1000))(a1);
  }
}

BOOL e1000_check_mng_mode_ich8lan(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
  __dmb(1u);
  return (readData & 0x800E) == 32772;
}

uint64_t e1000_cleanup_led_ich8lan(uint64_t a1)
{
  if (*(a1 + 1072) == 7)
  {
    v2 = *(a1 + 1032);

    return v2();
  }

  else
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE00uLL, *(a1 + 292));
    return 0;
  }
}

uint64_t e1000_led_on_ich8lan(uint64_t a1)
{
  if (*(a1 + 1072) == 7)
  {
    v2 = *(a1 + 1032);

    return v2();
  }

  else
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE00uLL, *(a1 + 300));
    return 0;
  }
}

uint64_t e1000_led_off_ich8lan(uint64_t a1)
{
  if (*(a1 + 1072) == 7)
  {
    v2 = *(a1 + 1032);

    return v2();
  }

  else
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xE00uLL, *(a1 + 296));
    return 0;
  }
}

uint64_t e1000_rar_set_pch2lan(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *a2;
  v5 = *(a2 + 4);
  v6 = *a2 | v5;
  v7 = v5 | 0x80000000;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    if (*(a1 + 844) <= a3 || e1000_acquire_swflag_ich8lan(a1))
    {
      return 4294967293;
    }

    __dmb(2u);
    v10 = 8 * a3;
    v11 = 8 * a3 + 21552;
    v12 = v11;
    if (8 * a3 == 464)
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

    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v12, v4);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, (v10 + 21556), v8);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    e1000_release_swflag_ich8lan(a1);
    readData = 0;
    if (8 * a3 == 464)
    {
      if (*(a1 + 284) <= 1)
      {
        v11 = 1536;
      }

      else
      {
        v11 = 22016;
      }
    }

    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v11, &readData);
    __dmb(1u);
    if (readData != v4)
    {
      return 4294967293;
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, (v10 + 21556), &readData);
    result = 0;
    __dmb(1u);
    if (readData != v8)
    {
      return 4294967293;
    }
  }

  else
  {
    __dmb(2u);
    v14 = *(a1 + 16);
    if (*(a1 + 284) <= 1)
    {
      v15 = 64;
    }

    else
    {
      v15 = 21504;
    }

    IOPCIDevice::MemoryWrite32(v14, 0, v15, v4);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5404uLL, v8);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    result = 0;
    __dmb(1u);
  }

  return result;
}

uint64_t e1000_update_mc_addr_list_pch2lan(uint64_t a1, uint64_t a2, int a3)
{
  v11 = 0;
  e1000_update_mc_addr_list_generic(a1, a2, a3);
  result = (*(a1 + 896))(a1);
  if (!result)
  {
    if (!e1000_enable_phy_wakeup_reg_access_bm(a1, &v11))
    {
      if (*(a1 + 326))
      {
        v5 = 0;
        v6 = 0;
        v7 = 83;
        do
        {
          v8 = v6 & 0xFFE00000 | v5 & 0x1E;
          v9 = (a1 + 4 * v7);
          (*(a1 + 1048))(a1, v8 + 8414208, *v9);
          (*(a1 + 1048))(a1, v8 + 8414209, v9[1]);
          v6 += 0x20000;
          v5 += 2;
          v10 = v7 - 82;
          ++v7;
        }

        while (v10 < *(a1 + 326));
      }

      e1000_disable_phy_wakeup_reg_access_bm(a1, &v11);
    }

    return (*(a1 + 1000))(a1);
  }

  return result;
}

BOOL e1000_check_mng_mode_pchlan(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
  __dmb(1u);
  return (~readData & 0x8004) == 0;
}

uint64_t e1000_id_led_init_pchlan(uint64_t a1)
{
  v13 = 0;
  result = (*(a1 + 1192))(a1, &v13);
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
    v6 = v13;
    v7 = v5;
    while (1)
    {
      v8 = (v6 >> v3) & 0xF;
      v9 = 31 << v4;
      if (v8 > 6)
      {
        if (v8 - 7 <= 2)
        {
          v10 = 10;
LABEL_8:
          v7 = v7 & ~v9 | (v10 << v4);
          *(a1 + 296) = v7;
          v11 = 2;
          if (((v6 >> v3) & 0xF) > 7)
          {
            if (v8 != 8)
            {
              if (v8 != 9)
              {
                goto LABEL_20;
              }

              goto LABEL_17;
            }
          }

          else if (v8 != 5)
          {
            if (v8 != 6)
            {
              goto LABEL_20;
            }

LABEL_17:
            v11 = 10;
          }

LABEL_19:
          v5 = v5 & ~v9 | (v11 << v4);
          *(a1 + 300) = v5;
        }
      }

      else
      {
        if (v8 - 4 < 3)
        {
          v10 = 2;
          goto LABEL_8;
        }

        if (v8 == 2)
        {
          v11 = 2;
          goto LABEL_19;
        }

        if (v8 == 3)
        {
          goto LABEL_17;
        }
      }

LABEL_20:
      v4 += 5;
      v3 += 4;
      if (v3 == 16)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t e1000_led_on_pchlan(uint64_t a1)
{
  v2 = *(a1 + 300);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  if ((readData & 2) == 0)
  {
    for (i = 0; i != 15; i += 5)
    {
      if (((v2 >> i) & 8) != 0)
      {
        v4 = v2 & ~(8 << i);
      }

      else
      {
        v4 = v2 | (8 << i);
      }

      if (((v2 >> i) & 7) == 2)
      {
        v2 = v4;
      }
    }
  }

  return (*(a1 + 1032))(a1, 24606, v2);
}

uint64_t e1000_led_off_pchlan(uint64_t a1)
{
  v2 = *(a1 + 296);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  if ((readData & 2) == 0)
  {
    for (i = 0; i != 15; i += 5)
    {
      if (((v2 >> i) & 8) != 0)
      {
        v4 = v2 & ~(8 << i);
      }

      else
      {
        v4 = v2 | (8 << i);
      }

      if (((v2 >> i) & 7) == 2)
      {
        v2 = v4;
      }
    }
  }

  return (*(a1 + 1032))(a1, 24606, v2);
}

uint64_t e1000_rar_set_pch_lpt(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *a2;
  v5 = *(a2 + 4);
  v6 = *a2 | v5;
  v7 = v5 | 0x80000000;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    if (*(a1 + 844) <= a3)
    {
      return 4294967293;
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
    __dmb(1u);
    v10 = (readData >> 7) & 7;
    if (v10)
    {
      if (v10 == 1 || v10 < a3)
      {
        return 4294967293;
      }
    }

    if (e1000_acquire_swflag_ich8lan(a1))
    {
      return 4294967293;
    }

    __dmb(2u);
    v11 = 8 * a3;
    v12 = 8 * a3 + 21504;
    v13 = v12;
    if (8 * a3 == 512)
    {
      if (*(a1 + 284) <= 1)
      {
        v13 = 1536;
      }

      else
      {
        v13 = 22016;
      }
    }

    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v13, v4);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, (v11 + 21508), v8);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    e1000_release_swflag_ich8lan(a1);
    readData = 0;
    if (8 * a3 == 512)
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

    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, v12, &readData);
    __dmb(1u);
    if (readData != v4)
    {
      return 4294967293;
    }

    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, (v11 + 21508), &readData);
    result = 0;
    __dmb(1u);
    if (readData != v8)
    {
      return 4294967293;
    }
  }

  else
  {
    __dmb(2u);
    v15 = *(a1 + 16);
    if (*(a1 + 284) <= 1)
    {
      v16 = 64;
    }

    else
    {
      v16 = 21504;
    }

    IOPCIDevice::MemoryWrite32(v15, 0, v16, v4);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5404uLL, v8);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    result = 0;
    __dmb(1u);
  }

  return result;
}

uint64_t e1000_setup_copper_link_pch_lpt(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData & 0xFFFFE7FF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x40);
  result = e1000_copper_link_setup_82577(a1);
  if (!result)
  {
    return e1000_setup_copper_link_generic(a1);
  }

  return result;
}

void e1000_gate_hw_phy_config_ich8lan(uint64_t a1, int a2)
{
  if (*(a1 + 284) >= 23)
  {
    v9 = v2;
    v10 = v3;
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF00uLL, &readData);
    __dmb(1u);
    v6 = readData & 0xFFFFFF7F;
    if (a2)
    {
      v7 = 128;
    }

    else
    {
      v7 = 0;
    }

    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xF00uLL, v6 | v7);
  }
}

uint64_t e1000_acquire_swflag_ich8lan(uint64_t a1)
{
  v2 = -100;
  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF00uLL, &readData);
    __dmb(1u);
    v3 = readData;
    if ((readData & 0x20) == 0)
    {
      break;
    }

    IODelay(0x3E8uLL);
    v4 = __CFADD__(v2++, 1);
    if (v4)
    {
      return 4294967293;
    }
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xF00uLL, v3 | 0x20);
  v5 = -1000;
  while (1)
  {
    v8 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF00uLL, &v8);
    __dmb(1u);
    v6 = v8;
    if ((v8 & 0x20) != 0)
    {
      break;
    }

    IODelay(0x3E8uLL);
    v4 = __CFADD__(v5++, 1);
    if (v4)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xF00uLL, v6);
      return 4294967293;
    }
  }

  return 0;
}

uint64_t e1000_post_phy_reset_ich8lan(uint64_t a1)
{
  if (!(*(a1 + 920))())
  {
    v17 = 0;
    IODelay(0x2710uLL);
    v3 = *(a1 + 284);
    if (v3 == 23)
    {
      v5 = e1000_set_mdio_slow_mode_hv(a1);
      if (v5)
      {
        return v5;
      }

      v5 = (*(a1 + 896))(a1);
      if (v5)
      {
        return v5;
      }

      v6 = (*(a1 + 1040))(a1, 16, 2127);
      if (v6)
      {
        goto LABEL_69;
      }

      v6 = (*(a1 + 1040))(a1, 17, 52);
      if (v6)
      {
        goto LABEL_69;
      }

      v6 = (*(a1 + 1040))(a1, 16, 9233);
      if (v6)
      {
        goto LABEL_69;
      }

      v7 = (*(a1 + 1040))(a1, 17, 5);
LABEL_16:
      v2 = v7;
      (*(a1 + 1000))(a1);
      if (v2)
      {
        return v2;
      }

      v3 = *(a1 + 284);
LABEL_18:
      if (v3 >= 22)
      {
        (*(a1 + 976))(a1, 24625, &v17);
        v17 &= ~0x10u;
        (*(a1 + 1032))(a1, 24625);
        v3 = *(a1 + 284);
      }

      if ((v3 - 22) < 7)
      {
        goto LABEL_21;
      }

      if (v3 != 19 || *(a1 + 1072) != 6)
      {
LABEL_59:
        v5 = e1000_oem_bits_config_ich8lan(a1, 1);
        if (*(a1 + 284) != 23)
        {
          return v5;
        }

        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
        __dmb(1u);
        if ((readData & 0x8000) == 0)
        {
          IODelay(0x2710uLL);
          e1000_gate_hw_phy_config_ich8lan(a1, 0);
        }

        v5 = (*(a1 + 896))(a1);
        if (v5)
        {
          return v5;
        }

        v2 = (*(a1 + 1040))(a1, 16, 18437);
        if (v2)
        {
LABEL_70:
          (*(a1 + 1000))(a1);
          return v2;
        }

        v6 = (*(a1 + 1040))(a1, 17, 4999);
LABEL_69:
        v2 = v6;
        goto LABEL_70;
      }

      if ((*(a1 + 9584) & 0xFFFE) == 0x104A)
      {
        v8 = 1;
      }

      else
      {
LABEL_21:
        v8 = 0x8000000;
      }

      v5 = (*(a1 + 896))(a1);
      if (!v5)
      {
        readData = 0;
        v19 = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x28uLL, &readData);
        __dmb(1u);
        if ((readData & v8) != 0)
        {
          readData = 0;
          IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF00uLL, &readData);
          __dmb(1u);
          v9 = readData;
          if (*(a1 + 284) > 22 || (readData & 1) == 0)
          {
            readData = 0;
            IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF08uLL, &readData);
            __dmb(1u);
            v10 = BYTE2(readData);
            if (BYTE2(readData))
            {
              v11 = *(a1 + 284);
              v12 = v11 == 22;
              if ((v9 & 8) != 0)
              {
                v12 = 0;
              }

              if (v11 <= 22 && !v12 || (v6 = e1000_write_smbus_addr(a1), !v6) && (readData = 0, IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xE00uLL, &readData), __dmb(1u), v6 = e1000_write_phy_reg_hv_locked(a1, 0x601Eu, readData), !v6))
              {
                v13 = 0;
                v14 = (v9 >> 15) & 0x1FFE;
                while (1)
                {
                  v6 = (*(a1 + 1160))(a1, v14, 1, &v19 + 2);
                  if (v6)
                  {
                    break;
                  }

                  v6 = (*(a1 + 1160))(a1, v14 | 1u, 1, &v19);
                  if (v6)
                  {
                    break;
                  }

                  if (v19 == 31)
                  {
                    v13 = HIWORD(v19);
                  }

                  else
                  {
                    LOWORD(v19) = v19 & 0x1F | v13;
                    v6 = (*(a1 + 1040))(a1);
                    if (v6)
                    {
                      goto LABEL_69;
                    }
                  }

                  LOWORD(v14) = v14 + 2;
                  if (!--v10)
                  {
                    goto LABEL_38;
                  }
                }
              }

              goto LABEL_69;
            }
          }
        }

LABEL_38:
        (*(a1 + 1000))(a1);
        goto LABEL_59;
      }

      return v5;
    }

    if (v3 != 22)
    {
      goto LABEL_18;
    }

    v4 = *(a1 + 1072);
    if (v4 != 10)
    {
      goto LABEL_39;
    }

    v5 = e1000_set_mdio_slow_mode_hv(a1);
    if (v5)
    {
      return v5;
    }

    v4 = *(a1 + 1072);
    if (v4 == 10)
    {
      if ((*(a1 + 1112) - 1) >= 2)
      {
        goto LABEL_47;
      }
    }

    else
    {
LABEL_39:
      if (v4 != 9)
      {
        goto LABEL_47;
      }

      v15 = *(a1 + 1112);
      if (v15 != 1)
      {
        goto LABEL_45;
      }
    }

    v5 = (*(a1 + 1032))(a1, 24633, 17457);
    if (v5)
    {
      return v5;
    }

    v5 = (*(a1 + 1032))(a1, 24656, 41476);
    if (v5)
    {
      return v5;
    }

    if (*(a1 + 1072) != 9)
    {
      goto LABEL_47;
    }

    v15 = *(a1 + 1112);
LABEL_45:
    if (v15 <= 1)
    {
      e1000_phy_sw_reset_generic(a1);
      (*(a1 + 1032))(a1, 0, 12608);
    }

LABEL_47:
    v5 = (*(a1 + 896))(a1);
    if (v5)
    {
      return v5;
    }

    *(a1 + 1100) = 1;
    v2 = e1000_write_phy_reg_mdic(a1, 0x1Fu, 0);
    (*(a1 + 1000))(a1);
    if (v2)
    {
      return v2;
    }

    v5 = e1000_k1_gig_workaround_hv(a1, 1);
    if (v5)
    {
      return v5;
    }

    v5 = (*(a1 + 896))(a1);
    if (v5)
    {
      return v5;
    }

    LOWORD(readData) = 0;
    v6 = (*(a1 + 984))(a1, 24625, &readData);
    if (v6)
    {
      goto LABEL_69;
    }

    v6 = (*(a1 + 1040))(a1, 24625, readData);
    if (v6)
    {
      goto LABEL_69;
    }

    v6 = (*(a1 + 1040))(a1, 16, 2183);
    if (v6)
    {
      goto LABEL_69;
    }

    v7 = (*(a1 + 1040))(a1, 17, 52);
    goto LABEL_16;
  }

  return 0;
}

uint64_t e1000_set_mdio_slow_mode_hv(uint64_t a1)
{
  v3 = 0;
  result = (*(a1 + 976))(a1, 24624, &v3);
  if (!result)
  {
    v3 |= 0x400u;
    return (*(a1 + 1032))(a1, 24624);
  }

  return result;
}

uint64_t e1000_k1_gig_workaround_hv(uint64_t a1, int a2)
{
  v2 = 0;
  v9 = 0;
  if (*(a1 + 284) == 22)
  {
    v5 = *(a1 + 9572);
    v2 = (*(a1 + 896))();
    if (!v2)
    {
      if (!a2)
      {
        v7 = (*(a1 + 1040))(a1, 24659, 16640);
LABEL_12:
        if (!v7)
        {
          v7 = e1000_configure_k1_ich8lan(a1, v5);
        }

        goto LABEL_14;
      }

      v6 = *(a1 + 1072);
      if (v6 == 9)
      {
        v7 = (*(a1 + 984))(a1, 17, &v9);
        if (v7)
        {
          goto LABEL_14;
        }

        v9 &= 0xCC00u;
        v5 = (v9 != 35840) & v5;
        v6 = *(a1 + 1072);
      }

      if (v6 != 10)
      {
LABEL_10:
        v7 = (*(a1 + 1040))(a1, 24659, 256);
        goto LABEL_12;
      }

      v7 = (*(a1 + 984))(a1, 26, &v9);
      if (!v7)
      {
        v9 &= 0x1340u;
        v5 = (v9 != 4672) & v5;
        goto LABEL_10;
      }

LABEL_14:
      v2 = v7;
      (*(a1 + 1000))(a1);
    }
  }

  return v2;
}

uint64_t e1000_phy_hw_reset_ich8lan(uint64_t a1)
{
  if (*(a1 + 284) == 23)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
    __dmb(1u);
    if ((readData & 0x8000) == 0)
    {
      e1000_gate_hw_phy_config_ich8lan(a1, 1);
    }
  }

  result = e1000_phy_hw_reset_generic(a1);
  if (!result)
  {
    return e1000_post_phy_reset_ich8lan(a1);
  }

  return result;
}

uint64_t e1000_phy_timing_recovery_workaround_lv(uint64_t result)
{
  v1 = *(result + 1072);
  if (v1 >= 11)
  {
    v2 = result;
    if (v1 == 11)
    {
      v3 = 0;
    }

    else
    {
      v3 = 32255;
    }

    if (v1 == 11)
    {
      v4 = 11273;
    }

    else
    {
      v4 = 43528;
    }

    if (!(*(result + 1040))(result, 16, v4))
    {
      (*(v2 + 1040))(v2, 17, 1);
    }

    if (!(*(v2 + 1040))(v2, 16, (v3 + 11279)))
    {
      (*(v2 + 1040))(v2, 17, 1);
    }

    if (!(*(v2 + 1040))(v2, 16, (v3 + 11285)))
    {
      (*(v2 + 1040))(v2, 17, 1);
    }

    if (!(*(v2 + 1040))(v2, 16, (v3 + 11311)))
    {
      (*(v2 + 1040))(v2, 17, 1);
    }

    if (!(*(v2 + 1040))(v2, 16, (v3 + 11313)))
    {
      (*(v2 + 1040))(v2, 17, 7);
    }

    if (!(*(v2 + 1040))(v2, 16, (v3 + 11315)))
    {
      (*(v2 + 1040))(v2, 17, 1);
    }

    if (!(*(v2 + 1040))(v2, 16, (v3 + 11317)))
    {
      (*(v2 + 1040))(v2, 17, 7);
    }

    if (!(*(v2 + 1040))(v2, 16, (v3 + 11319)))
    {
      (*(v2 + 1040))(v2, 17, 1);
    }

    if (!(*(v2 + 1040))(v2, 16, (v3 + 11321)))
    {
      (*(v2 + 1040))(v2, 17, 7);
    }

    if (!(*(v2 + 1040))(v2, 16, (v3 + 11323)))
    {
      (*(v2 + 1040))(v2, 17, 1);
    }

    if (!(*(v2 + 1040))(v2, 16, (v3 + 11325)))
    {
      (*(v2 + 1040))(v2, 17, 7);
    }

    result = (*(v2 + 1040))(v2, 16, (v3 + 11369));
    if (!result)
    {
      v5 = *(v2 + 1040);

      return v5(v2, 17, 0);
    }
  }

  return result;
}

uint64_t e1000_k1_workaround_lv(uint64_t a1)
{
  v6 = 0;
  if (*(a1 + 284) != 23)
  {
    return 0;
  }

  result = (*(a1 + 976))(a1, 26, &v6);
  if (result)
  {
    return result;
  }

  if ((~v6 & 0x1040) != 0)
  {
    return 0;
  }

  if ((v6 & 0x300) == 0)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x24uLL, &readData);
    __dmb(1u);
    v3 = readData & 0xFFFFFFF8;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x24uLL, v3 | 3);
    return 0;
  }

  v5 = 0;
  result = (*(a1 + 976))(a1, 24657, &v5);
  if (!result)
  {
    v5 &= ~0x4000u;
    return (*(a1 + 1032))(a1, 24657);
  }

  return result;
}

void e1000_release_swflag_ich8lan(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF00uLL, &readData);
  __dmb(1u);
  v2 = readData;
  if ((readData & 0x20) != 0)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xF00uLL, v2 & 0xFFFFFFDF);
  }
}

uint64_t e1000_read_nvm_spt(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v26 = 0;
  v4 = *(a1 + 1232);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v6 == 0 || !v5)
  {
    return 0xFFFFFFFFLL;
  }

  v24 = 0xFFFFFFFFLL;
  if (a3 && v6 >= a3)
  {
    (*(a1 + 1152))();
    valid = e1000_valid_nvm_bank_detect_ich8lan(a1, &v26 + 1);
    LOWORD(v12) = 0;
    if (!valid && HIDWORD(v26))
    {
      v12 = *(a1 + 1224);
    }

    v13 = 0;
    v14 = 0;
    v15 = v12 + a2;
    v16 = a1 + 1378;
    while (1)
    {
      if (a3 - v13 == 1)
      {
        v17 = v16 + 4 * (v13 + a2);
        if (*(v17 + 2) == 1)
        {
          LOWORD(v18) = *v17;
        }

        else
        {
          v21 = e1000_read_flash_dword_ich8lan(a1, (v13 + v15) & 0xFFFE, &v26);
          if (v21)
          {
LABEL_28:
            v24 = v21;
LABEL_29:
            (*(a1 + 1168))(a1);
            return v24;
          }

          LOWORD(v18) = v26;
          if (v15)
          {
            LODWORD(v18) = WORD1(v26);
          }
        }

        v23 = a4;
      }

      else
      {
        v19 = v13 + a2;
        v20 = v16 + 4 * (v13 + a2);
        if (*(v20 + 2) == 1 && (*(v16 + 4 * (v19 + 1) + 2) & 1) != 0)
        {
          goto LABEL_16;
        }

        v21 = e1000_read_flash_dword_ich8lan(a1, (v14 + v15), &v26);
        if (v21)
        {
          goto LABEL_28;
        }

        if (*(v20 + 2))
        {
LABEL_16:
          v22 = *v20;
        }

        else
        {
          v22 = v26;
        }

        *(a4 + 2 * v14) = v22;
        v18 = v16 + 4 * (v19 + 1);
        if (*(v18 + 2) == 1)
        {
          LOWORD(v18) = *v18;
        }

        else
        {
          LOWORD(v18) = WORD1(v26);
        }

        v23 = a4 + 2;
      }

      *(v23 + 2 * v14) = v18;
      v14 += 2;
      v13 = v14;
      if (v14 >= a3)
      {
        v24 = 0;
        goto LABEL_29;
      }
    }
  }

  return v24;
}

uint64_t e1000_update_nvm_checksum_spt(uint64_t a1)
{
  v15 = 0;
  updated = e1000_update_nvm_checksum_generic(a1);
  if (updated)
  {
    return updated;
  }

  if (*(a1 + 1216) != 6)
  {
    return 0;
  }

  v16 = 0;
  (*(a1 + 1152))(a1);
  valid = e1000_valid_nvm_bank_detect_ich8lan(a1, &v16);
  v4 = *(a1 + 1224);
  if (valid || !v16)
  {
    v5 = e1000_erase_flash_bank_ich8lan(a1, 1);
    if (!v5)
    {
      v6 = v4;
      v4 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = e1000_erase_flash_bank_ich8lan(a1, 0);
    if (!v5)
    {
      v6 = 0;
LABEL_11:
      v7 = 0;
      v8 = (a1 + 1384);
      v9 = v6;
      do
      {
        v10 = e1000_read_flash_dword_ich8lan(a1, v4 + v7, &v15);
        updated = v10;
        if (*(v8 - 4) == 1)
        {
          LOWORD(v15) = *(v8 - 3);
        }

        if (*v8 == 1)
        {
          HIWORD(v15) = *(v8 - 1);
        }

        if (v10)
        {
          goto LABEL_9;
        }

        if (v7 == 18)
        {
          v15 |= 0xC0000000;
        }

        IODelay(0x64uLL);
        if (e1000_retry_write_flash_dword_ich8lan(a1, v9 + v7, v15))
        {
          goto LABEL_24;
        }

        v8 += 8;
        v11 = v7 > 0x7FD;
        v7 += 2;
      }

      while (!v11);
      v5 = e1000_read_flash_dword_ich8lan(a1, v9 + 18, &v15);
      if (v5)
      {
        goto LABEL_8;
      }

      v15 &= ~0x40000000u;
      if (e1000_retry_write_flash_dword_ich8lan(a1, v9 + 18, v15))
      {
LABEL_24:
        updated = 0xFFFFFFFFLL;
        goto LABEL_9;
      }

      v5 = e1000_read_flash_dword_ich8lan(a1, v4 + 18, &v15);
      if (!v5)
      {
        v15 &= 0xFFFFFFu;
        if (e1000_retry_write_flash_dword_ich8lan(a1, v4 + 18, v15))
        {
          goto LABEL_24;
        }

        for (i = 0; i != 0x2000; i += 4)
        {
          v13 = a1 + i;
          *(v13 + 1380) = 0;
          *(v13 + 1378) = -1;
        }

        (*(a1 + 1168))(a1);
        (*(a1 + 1176))(a1);
        IODelay(0x2710uLL);
        return 0;
      }
    }
  }

LABEL_8:
  updated = v5;
LABEL_9:
  (*(a1 + 1168))(a1);
  return updated;
}

uint64_t e1000_read_nvm_ich8lan(uint64_t a1, unsigned int a2, unsigned int a3, __int16 *a4)
{
  v19 = 0;
  v4 = *(a1 + 1232);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v6 == 0 || !v5)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = 0xFFFFFFFFLL;
  if (a3 && v6 >= a3)
  {
    (*(a1 + 1152))();
    valid = e1000_valid_nvm_bank_detect_ich8lan(a1, &v19);
    v12 = 0;
    if (!valid && v19)
    {
      v12 = *(a1 + 1224);
    }

    v18 = 0;
    v16 = a3;
    v13 = 2 * (v12 + a2);
    v14 = a1 + 4 * a2 + 1378;
    while (1)
    {
      v15 = v14;
      if ((*(v14 + 2) & 1) == 0)
      {
        v15 = &v18;
        if (e1000_read_flash_data_ich8lan(a1, v13, 2, &v18))
        {
          break;
        }
      }

      *a4++ = *v15;
      v13 += 2;
      v14 += 4;
      if (!--v16)
      {
        goto LABEL_14;
      }
    }

    v16 = 0xFFFFFFFFLL;
LABEL_14:
    (*(a1 + 1168))(a1);
  }

  return v16;
}

uint64_t e1000_update_nvm_checksum_ich8lan(uint64_t a1)
{
  v17 = 0;
  updated = e1000_update_nvm_checksum_generic(a1);
  if (!updated)
  {
    if (*(a1 + 1216) != 6)
    {
      return 0;
    }

    v18 = 0;
    (*(a1 + 1152))(a1);
    valid = e1000_valid_nvm_bank_detect_ich8lan(a1, &v18);
    v4 = *(a1 + 1224);
    if (valid || !v18)
    {
      v5 = e1000_erase_flash_bank_ich8lan(a1, 1);
      if (!v5)
      {
        v6 = v4;
        v4 = 0;
LABEL_10:
        v7 = 0;
        v8 = 2 * v4;
        v9 = 2 * v6;
        v10 = 1380;
        do
        {
          if (*(a1 + v10) == 1)
          {
            v11 = a1 + 2 * v7;
            v12 = *(v11 + 1378);
            v17 = *(v11 + 1378);
          }

          else
          {
            if (e1000_read_flash_data_ich8lan(a1, v8 + v7, 2, &v17))
            {
              goto LABEL_24;
            }

            v12 = v17;
          }

          if (v7 == 38)
          {
            v17 = v12 | 0xC000;
            v13 = ((v12 | 0xC000) >> 8);
          }

          else
          {
            v13 = v12 >> 8;
          }

          IODelay(0x64uLL);
          if (e1000_retry_write_flash_byte_ich8lan(a1, v9 + v7, v12))
          {
            goto LABEL_24;
          }

          IODelay(0x64uLL);
          if (e1000_retry_write_flash_byte_ich8lan(a1, v9 + v7 + 1, v13))
          {
            goto LABEL_24;
          }

          v7 += 2;
          v10 += 4;
        }

        while (v7 != 4096);
        if (e1000_read_flash_data_ich8lan(a1, v9 + 38, 2, &v17) || e1000_retry_write_flash_byte_ich8lan(a1, (v9 + 38) | 1u, HIBYTE(v17) & 0xBF) || e1000_retry_write_flash_byte_ich8lan(a1, v8 + 39, 0))
        {
LABEL_24:
          updated = 0xFFFFFFFFLL;
          goto LABEL_25;
        }

        for (i = 0; i != 0x2000; i += 4)
        {
          v15 = a1 + i;
          *(v15 + 1380) = 0;
          *(v15 + 1378) = -1;
        }

        (*(a1 + 1168))(a1);
        (*(a1 + 1176))(a1);
        IODelay(0x2710uLL);
        return 0;
      }
    }

    else
    {
      v5 = e1000_erase_flash_bank_ich8lan(a1, 0);
      if (!v5)
      {
        v6 = 0;
        goto LABEL_10;
      }
    }

    updated = v5;
LABEL_25:
    (*(a1 + 1168))(a1);
  }

  return updated;
}

uint64_t e1000_valid_led_default_ich8lan(uint64_t a1, _WORD *a2)
{
  result = (*(a1 + 1160))(a1, 4, 1, a2);
  if (!result)
  {
    v4 = *a2;
    if (v4 == 0xFFFF || v4 == 0)
    {
      *a2 = 6529;
    }
  }

  return result;
}

uint64_t e1000_validate_nvm_checksum_ich8lan(uint64_t a1)
{
  v6 = 0;
  if ((*(a1 + 284) - 24) >= 5)
  {
    v2 = 25;
  }

  else
  {
    v2 = 3;
  }

  if ((*(a1 + 284) - 24) < 5)
  {
    v3 = 1;
  }

  else
  {
    v3 = 64;
  }

  result = (*(a1 + 1160))(a1, v2, 1, &v6);
  if (!result)
  {
    if ((v3 & v6) != 0)
    {
      return e1000_validate_nvm_checksum_generic(a1);
    }

    v5 = *(a1 + 284);
    if (v5 > 26)
    {
      if (v5 == 27)
      {
        return 0;
      }

      return e1000_validate_nvm_checksum_generic(a1);
    }

    v6 |= v3;
    result = (*(a1 + 1208))(a1, v2, 1, &v6);
    if (!result)
    {
      result = (*(a1 + 1184))(a1);
      if (!result)
      {
        return e1000_validate_nvm_checksum_generic(a1);
      }
    }
  }

  return result;
}

uint64_t e1000_write_nvm_ich8lan(uint64_t a1, unsigned int a2, unsigned int a3, __int16 *a4)
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
    (*(a1 + 1152))(a1);
    v11 = a3;
    v12 = (a1 + 4 * a2 + 1380);
    do
    {
      *v12 = 1;
      v13 = *a4++;
      *(v12 - 1) = v13;
      v12 += 4;
      --v11;
    }

    while (v11);
    (*(a1 + 1168))(a1);
    return 0;
  }

  return result;
}

uint64_t e1000_valid_nvm_bank_detect_ich8lan(uint64_t a1, uint32_t *a2)
{
  v4 = *(a1 + 1224);
  v9 = 0;
  v5 = *(a1 + 284);
  if ((v5 - 25) >= 4)
  {
    if ((v5 - 19) < 2)
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
      __dmb(1u);
      if ((~readData & 0x300) == 0)
      {
        result = 0;
        v7 = (readData >> 22) & 1;
LABEL_8:
        *a2 = v7;
        return result;
      }

      v5 = *(a1 + 284);
    }

    *a2 = 0;
    v10 = 0;
    if (v5 <= 24 && !e1000_read_flash_data_ich8lan(a1, 0x27u, 1, &v10))
    {
      if ((v10 & 0xC0) == 0x80)
      {
        goto LABEL_4;
      }

      v11 = 0;
      if (*(a1 + 284) <= 24 && !e1000_read_flash_data_ich8lan(a1, 2 * v4 + 39, 1, &v11) && (v11 & 0xC0) == 0x80)
      {
LABEL_16:
        result = 0;
        v7 = 1;
        goto LABEL_8;
      }
    }

    return 0xFFFFFFFFLL;
  }

  *a2 = 0;
  result = e1000_read_flash_dword_ich8lan(a1, 0x13u, &v9);
  if (!result)
  {
    if ((v9 & 0xC000) == 0x8000)
    {
LABEL_4:
      result = 0;
      *a2 = 0;
      return result;
    }

    result = e1000_read_flash_dword_ich8lan(a1, v4 + 19, &v9);
    if (!result)
    {
      if ((v9 & 0xC000) == 0x8000)
      {
        goto LABEL_16;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t e1000_read_flash_dword_ich8lan(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a3 || (a2 >> 23))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 284) >= 25)
  {
    v6 = 0;
    v7 = *(a1 + 1228) + 2 * a2;
    do
    {
      IODelay(1uLL);
      if (e1000_flash_cycle_init_ich8lan(a1))
      {
        break;
      }

      __dmb(0xDu);
      v8 = *(*(a1 + 24) + 4) & 0xFCF90000 | 0x3000000;
      __dmb(0xEu);
      v9 = *(a1 + 24);
      *(v9 + 4) = v8;
      v10 = *(v9 + 4);
      __dmb(0xEu);
      v11 = *(a1 + 24);
      *(v11 + 8) = v7;
      v12 = *(v11 + 8);
      result = e1000_flash_cycle_ich8lan(a1);
      __dmb(0xDu);
      v13 = *(a1 + 24);
      if (!result)
      {
        *a3 = *(v13 + 16);
        return result;
      }
    }

    while ((*(v13 + 4) & 3) != 0 && v6++ < 0xA);
  }

  return 0xFFFFFFFFLL;
}

uint64_t e1000_read_flash_data_ich8lan(uint64_t a1, unsigned int a2, int a3, _WORD *a4)
{
  if (HIBYTE(a2))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  v9 = *(a1 + 1228) + a2;
  v10 = ((a3 - 1) & 3) << 8;
  while (1)
  {
    IODelay(1uLL);
    if (e1000_flash_cycle_init_ich8lan(a1))
    {
      return 0xFFFFFFFFLL;
    }

    __dmb(0xDu);
    v11 = *(*(a1 + 24) + 6) & 0xFCF9 | v10;
    __dmb(0xEu);
    v12 = *(a1 + 24);
    *(v12 + 6) = v11;
    v13 = *(v12 + 6);
    __dmb(0xEu);
    v14 = *(a1 + 24);
    *(v14 + 8) = v9;
    v15 = *(v14 + 8);
    result = e1000_flash_cycle_ich8lan(a1);
    __dmb(0xDu);
    v16 = *(a1 + 24);
    if (!result)
    {
      break;
    }

    if ((*(v16 + 4) & 3) == 0 || v8++ >= 0xA)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v18 = *(v16 + 16);
  if (a3 == 1)
  {
    LOWORD(v18) = v18;
  }

  *a4 = v18;
  return result;
}

uint64_t e1000_flash_cycle_init_ich8lan(uint64_t a1)
{
  __dmb(0xDu);
  v1 = *(*(a1 + 24) + 4);
  if ((v1 & 0x4000) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v1 | 6;
  v5 = *(a1 + 284);
  __dmb(0xEu);
  if (v5 < 25)
  {
    v10 = *(a1 + 24);
    *(v10 + 4) = v4;
    v11 = *(v10 + 4);
    if ((v1 & 0x20) != 0)
    {
LABEL_5:
      v8 = 10000000;
      while (1)
      {
        __dmb(0xDu);
        v9 = *(*(a1 + 24) + 4);
        if ((v9 & 0x20) == 0)
        {
          break;
        }

        IODelay(1uLL);
        if (!--v8)
        {
          return 0xFFFFFFFFLL;
        }
      }

      v12 = v9 | 1;
      v13 = *(a1 + 284);
      __dmb(0xEu);
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *(a1 + 24);
    *(v6 + 4) = v4;
    v7 = *(v6 + 4);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_5;
    }
  }

  v12 = v1 | 7;
  v13 = *(a1 + 284);
  __dmb(0xEu);
LABEL_12:
  result = 0;
  if (v13 < 25)
  {
    v16 = *(a1 + 24);
    *(v16 + 4) = v12;
    v17 = *(v16 + 4);
  }

  else
  {
    v14 = *(a1 + 24);
    *(v14 + 4) = v12;
    v15 = *(v14 + 4);
  }

  return result;
}

uint64_t e1000_flash_cycle_ich8lan(uint64_t a1)
{
  v2 = *(a1 + 284);
  __dmb(0xDu);
  v3 = *(a1 + 24);
  if (v2 < 25)
  {
    v4 = *(v3 + 6);
  }

  else
  {
    v4 = HIWORD(*(v3 + 4));
  }

  v5 = v4 | 1;
  v6 = *(a1 + 284);
  __dmb(0xEu);
  if (v6 < 25)
  {
    v9 = *(a1 + 24);
    *(v9 + 6) = v5;
    v10 = *(v9 + 6);
  }

  else
  {
    v7 = *(a1 + 24);
    *(v7 + 4) = v5 << 16;
    v8 = *(v7 + 4);
  }

  v11 = 10000001;
  while (1)
  {
    __dmb(0xDu);
    v12 = *(*(a1 + 24) + 4);
    if (v12)
    {
      break;
    }

    IODelay(1uLL);
    if (!--v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if ((v12 & 2) == 0)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t e1000_erase_flash_bank_ich8lan(uint64_t a1, int a2)
{
  v3 = 2 * *(a1 + 1224);
  __dmb(0xDu);
  v4 = (*(*(a1 + 24) + 4) >> 3) & 3;
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      v6 = 0x10000;
    }

    else
    {
      v6 = 0x2000;
    }

    v4 = 1;
  }

  else if (v4)
  {
    v6 = 4096;
  }

  else
  {
    if (v3 < 0x100)
    {
      return 0;
    }

    v4 = v3 >> 8;
    v6 = 256;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (!a2)
  {
    v3 = 0;
  }

  v10 = *(a1 + 1228) + v3;
  while (2)
  {
    if (v8 <= 9)
    {
      v11 = 9;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 + 1;
    v13 = v10 + v7;
    while (1)
    {
      v10 = v13;
      if (e1000_flash_cycle_init_ich8lan(a1))
      {
        return 0xFFFFFFFFLL;
      }

      v14 = *(a1 + 284);
      __dmb(0xDu);
      v15 = *(a1 + 24);
      v16 = v14 < 25 ? *(v15 + 6) : HIWORD(*(v15 + 4));
      v17 = v16 | 6;
      v18 = *(a1 + 284);
      __dmb(0xEu);
      if (v18 < 25)
      {
        v21 = *(a1 + 24);
        *(v21 + 6) = v17;
        v22 = *(v21 + 6);
      }

      else
      {
        v19 = *(a1 + 24);
        *(v19 + 4) = v17 << 16;
        v20 = *(v19 + 4);
      }

      __dmb(0xEu);
      v23 = *(a1 + 24);
      *(v23 + 8) = v10;
      v24 = *(v23 + 8);
      if (!e1000_flash_cycle_ich8lan(a1))
      {
        break;
      }

      __dmb(0xDu);
      if ((*(*(a1 + 24) + 4) & 3) == 0)
      {
        return 0xFFFFFFFFLL;
      }

      ++v8;
      v13 = v10 + v7;
      if (v12 == v8)
      {
        v8 = v12;
        break;
      }
    }

    ++v9;
    v7 += v6;
    if (v9 != v4)
    {
      continue;
    }

    break;
  }

  return 0;
}

uint64_t e1000_retry_write_flash_dword_ich8lan(uint64_t a1, int a2, int a3)
{
  v5 = 2 * a2;
  result = e1000_write_flash_data32_ich8lan(a1, 2 * a2, a3);
  if (result)
  {
    v7 = 0;
    while (1)
    {
      IODelay(0x64uLL);
      if (!e1000_write_flash_data32_ich8lan(a1, v5, a3))
      {
        break;
      }

      if (v7++ >= 0x63)
      {
        v7 = 100;
        break;
      }
    }

    if (v7 == 100)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t e1000_write_flash_data32_ich8lan(uint64_t a1, unsigned int a2, int a3)
{
  if (!HIBYTE(a2) || *(a1 + 284) <= 24)
  {
    v5 = 0;
    v6 = *(a1 + 1228) + (a2 & 0xFFFFFF);
    do
    {
      IODelay(1uLL);
      if (e1000_flash_cycle_init_ich8lan(a1))
      {
        break;
      }

      v7 = *(a1 + 284);
      __dmb(0xDu);
      v8 = *(a1 + 24);
      if (v7 < 25)
      {
        v9 = *(v8 + 6);
      }

      else
      {
        v9 = HIWORD(*(v8 + 4));
      }

      v10 = v9 & 0xFFFFFCF9 | 0x304;
      v11 = *(a1 + 284);
      __dmb(0xEu);
      if (v11 < 25)
      {
        v14 = *(a1 + 24);
        *(v14 + 6) = v10;
        v15 = *(v14 + 6);
      }

      else
      {
        v12 = *(a1 + 24);
        *(v12 + 4) = v10 << 16;
        v13 = *(v12 + 4);
      }

      __dmb(0xEu);
      v16 = *(a1 + 24);
      *(v16 + 8) = v6;
      v17 = *(v16 + 8);
      __dmb(0xEu);
      v18 = *(a1 + 24);
      *(v18 + 16) = a3;
      v19 = *(v18 + 16);
      result = e1000_flash_cycle_ich8lan(a1);
      if (!result)
      {
        return result;
      }

      __dmb(0xDu);
    }

    while ((*(*(a1 + 24) + 4) & 3) != 0 && v5++ < 0xA);
  }

  return 0xFFFFFFFFLL;
}

uint64_t e1000_retry_write_flash_byte_ich8lan(uint64_t a1, unsigned int a2, int a3)
{
  result = e1000_write_flash_byte_ich8lan(a1, a2, a3);
  if (result)
  {
    v7 = 0;
    while (1)
    {
      IODelay(0x64uLL);
      if (!e1000_write_flash_byte_ich8lan(a1, a2, a3))
      {
        break;
      }

      if (v7++ >= 0x63)
      {
        v7 = 100;
        break;
      }
    }

    if (v7 == 100)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t e1000_write_flash_byte_ich8lan(uint64_t a1, unsigned int a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (!HIBYTE(a2) && *(a1 + 284) <= 24)
  {
    v6 = 0;
    v7 = *(a1 + 1228) + a2;
    do
    {
      IODelay(1uLL);
      if (e1000_flash_cycle_init_ich8lan(a1))
      {
        break;
      }

      v8 = *(a1 + 284);
      __dmb(0xDu);
      v9 = *(a1 + 24);
      if (v8 < 25)
      {
        LOWORD(v9) = *(v9 + 6);
      }

      else
      {
        LODWORD(v9) = HIWORD(*(v9 + 4));
      }

      v10 = v9 & 0xFCF9 | 4;
      v11 = *(a1 + 284);
      __dmb(0xEu);
      if (v11 < 25)
      {
        v14 = *(a1 + 24);
        *(v14 + 6) = v10;
        v15 = *(v14 + 6);
      }

      else
      {
        v12 = *(a1 + 24);
        *(v12 + 4) = v10 << 16;
        v13 = *(v12 + 4);
      }

      __dmb(0xEu);
      v16 = *(a1 + 24);
      *(v16 + 8) = v7;
      v17 = *(v16 + 8);
      __dmb(0xEu);
      v18 = *(a1 + 24);
      *(v18 + 16) = a3;
      v19 = *(v18 + 16);
      result = e1000_flash_cycle_ich8lan(a1);
      if (!result)
      {
        return result;
      }

      __dmb(0xDu);
    }

    while ((*(*(a1 + 24) + 4) & 3) != 0 && v6++ < 0xA);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t e1000_check_reset_block_ich8lan(uint64_t a1)
{
  if (*(a1 + 1134))
  {
    return 12;
  }

  v7 = v1;
  v8 = v2;
  v5 = 31;
  while (1)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
    __dmb(1u);
    if ((readData & 0x40) != 0)
    {
      break;
    }

    IODelay(0x2710uLL);
    if (!--v5)
    {
      return 12;
    }
  }

  return 0;
}

uint64_t e1000_get_cfg_done_ich8lan(uint64_t a1)
{
  e1000_get_cfg_done_generic();
  if (*(a1 + 284) < 21)
  {
    e1000_get_auto_rd_done_generic(a1);
  }

  else
  {
    v2 = -1499;
    do
    {
      v3 = v2;
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
      __dmb(1u);
      v4 = readData;
      IODelay(0x64uLL);
      if ((v4 & 0x200) != 0)
      {
        break;
      }

      v2 = v3 + 1;
    }

    while (v3);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    v5 = readData;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 8uLL, v5 & 0xFFFFFDFF);
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  v6 = readData;
  if ((readData & 0x400) != 0)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 8uLL, v6 & 0xFFFFFBFF);
  }

  if (*(a1 + 284) > 20)
  {
    if (e1000_valid_nvm_bank_detect_ich8lan(a1, &readData))
    {
      return 4294967293;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
    __dmb(1u);
    if ((readData & 0x100) == 0 && *(a1 + 1072) == 6)
    {
      e1000_phy_init_script_igp3(a1);
    }

    return 0;
  }
}

uint64_t e1000_set_d0_lplu_state_ich8lan(uint64_t a1, int a2)
{
  if (*(a1 + 1072) == 7)
  {
    return 0;
  }

  v13 = v2;
  v14 = v3;
  v12 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF10uLL, &readData);
  __dmb(1u);
  v7 = readData;
  __dmb(2u);
  v8 = *(a1 + 16);
  if (a2)
  {
    IOPCIDevice::MemoryWrite32(v8, 0, 0xF10uLL, v7 | 2);
    if (*(a1 + 1072) == 6)
    {
      if (*(a1 + 284) == 19)
      {
        e1000_gig_downshift_workaround_ich8lan(a1);
      }

      goto LABEL_12;
    }
  }

  else
  {
    IOPCIDevice::MemoryWrite32(v8, 0, 0xF10uLL, v7 & 0xFFFFFFFD);
    if (*(a1 + 1072) == 6)
    {
      v9 = *(a1 + 1096);
      if (v9 == 2)
      {
LABEL_12:
        result = (*(a1 + 976))(a1, 16, &v12);
        if (result)
        {
          return result;
        }

        v10 = v12 & 0xFF7F;
LABEL_14:
        v12 = v10;
        result = (*(a1 + 1032))(a1, 16);
        if (result)
        {
          return result;
        }

        return 0;
      }

      if (v9 == 1)
      {
        result = (*(a1 + 976))(a1, 16, &v12);
        if (result)
        {
          return result;
        }

        v10 = v12 | 0x80;
        goto LABEL_14;
      }
    }
  }

  return 0;
}

uint64_t e1000_set_d3_lplu_state_ich8lan(uint64_t a1, char a2)
{
  v13 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xF10uLL, &readData);
  __dmb(1u);
  v4 = readData;
  if (a2)
  {
    v5 = *(a1 + 1120);
    v6 = v5 > 0x2F;
    v7 = (1 << v5) & 0x800000008008;
    if (!v6 && v7 != 0)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xF10uLL, v4 | 4);
      if (*(a1 + 1072) == 6)
      {
        if (*(a1 + 284) == 19)
        {
          e1000_gig_downshift_workaround_ich8lan(a1);
        }

        goto LABEL_15;
      }
    }

    return 0;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xF10uLL, v4 & 0xFFFFFFFB);
  if (*(a1 + 1072) != 6)
  {
    return 0;
  }

  v9 = *(a1 + 1096);
  if (v9 != 2)
  {
    if (v9 == 1)
    {
      result = (*(a1 + 976))(a1, 16, &v13);
      if (result)
      {
        return result;
      }

      v11 = v13 | 0x80;
      goto LABEL_17;
    }

    return 0;
  }

LABEL_15:
  result = (*(a1 + 976))(a1, 16, &v13);
  if (result)
  {
    return result;
  }

  v11 = v13 & 0xFF7F;
LABEL_17:
  v13 = v11;
  return (*(a1 + 1032))(a1, 16);
}

void e1000_power_down_phy_copper_ich8lan(uint64_t a1)
{
  if (((*(a1 + 64))() & 1) == 0 && !(*(a1 + 920))(a1))
  {

    e1000_power_down_phy_copper(a1);
  }
}

uint64_t e1000_set_lplu_state_pchlan(uint64_t a1, int a2)
{
  v8 = 0;
  result = (*(a1 + 976))(a1, 24601, &v8);
  if (!result)
  {
    if (a2)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    v8 = v8 & 0xFFFB | v5;
    v6 = (*(a1 + 920))(a1);
    v7 = v8;
    if (!v6)
    {
      v7 = v8 | 0x400u;
      v8 |= 0x400u;
    }

    return (*(a1 + 1032))(a1, 24601, v7);
  }

  return result;
}

uint64_t e1000_phy_is_accessible_pchlan(uint64_t a1)
{
  v16 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = (*(a1 + 984))(a1, 2, &v16);
    v5 = v16;
    if (!v4 && v16 != 0xFFFF)
    {
      v4 = (*(a1 + 984))(a1, 3, &v16);
      v7 = v16;
      if (!v4 && v16 != 0xFFFF)
      {
        break;
      }
    }

    phy_id = v4;
    v2 = 0;
    if ((v3 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v11 = v16 & 0xFFF0 | (v5 << 16);
  v12 = *(a1 + 1104);
  if (v12)
  {
    if (v12 == v11)
    {
      goto LABEL_23;
    }
  }

  else if (v11)
  {
    *(a1 + 1104) = v11;
    *(a1 + 1112) = v7 & 0xF;
    goto LABEL_23;
  }

  phy_id = 0;
LABEL_12:
  if (*(a1 + 284) <= 23)
  {
    (*(a1 + 1000))(a1);
    phy_id = e1000_set_mdio_slow_mode_hv(a1);
    if (!phy_id)
    {
      phy_id = e1000_get_phy_id(a1);
    }

    (*(a1 + 896))(a1);
  }

  if (phy_id)
  {
    return 0;
  }

LABEL_23:
  if (*(a1 + 284) >= 24)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5B54uLL, &readData);
    __dmb(1u);
    if ((readData & 0x8000) == 0)
    {
      (*(a1 + 984))(a1, 24631, &v16);
      v16 &= ~1u;
      (*(a1 + 1040))(a1, 24631);
      v14 = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &v14);
      __dmb(1u);
      v13 = v14;
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v13 & 0xFFFFF7FF);
    }
  }

  return 1;
}

void *e1000_init_function_pointers_82540(void *result)
{
  result[5] = e1000_init_mac_params_82540;
  result[143] = e1000_init_nvm_params_82540;
  result[111] = e1000_init_phy_params_82540;
  return result;
}

uint64_t e1000_init_mac_params_82540(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 9584);
  v3 = 2;
  if (v2 > 0x1027)
  {
    switch(v2)
    {
      case 0x107Bu:
        goto LABEL_10;
      case 0x107Au:
        goto LABEL_12;
      case 0x1028u:
LABEL_10:
        v1 = 0;
        v3 = 3;
        goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 - 4113 >= 2 && v2 != 4135)
  {
LABEL_11:
    v3 = 1;
    v1 = 1;
  }

LABEL_12:
  *(a1 + 1116) = v3;
  *(a1 + 326) = 128;
  *(a1 + 844) = 15;
  *(a1 + 104) = e1000_get_bus_info_pci_generic;
  *(a1 + 112) = e1000_set_lan_id_multi_port_pci;
  *(a1 + 152) = e1000_reset_hw_82540;
  *(a1 + 160) = e1000_init_hw_82540;
  *(a1 + 192) = e1000_setup_link_generic;
  v5 = v1 == 0;
  v6 = e1000_setup_fiber_serdes_link_82540;
  if (!v5)
  {
    v6 = e1000_setup_copper_link_82540;
  }

  *(a1 + 200) = v6;
  v7 = off_100038340[v3 - 1];
  v8 = e1000_get_speed_and_duplex_fiber_serdes_generic;
  if (!v5)
  {
    v8 = e1000_get_speed_and_duplex_copper_generic;
  }

  *(a1 + 144) = e1000_update_mc_addr_list_generic;
  *(a1 + 216) = e1000_write_vfta_generic;
  *(a1 + 96) = e1000_clear_vfta_generic;
  *(a1 + 240) = e1000_read_mac_addr_82540;
  *(a1 + 48) = e1000_id_led_init_generic;
  *(a1 + 208) = e1000_setup_led_generic;
  *(a1 + 72) = v7;
  *(a1 + 80) = e1000_cleanup_led_generic;
  *(a1 + 120) = v8;
  *(a1 + 128) = e1000_led_on_generic;
  *(a1 + 136) = e1000_led_off_generic;
  *(a1 + 88) = e1000_clear_hw_cntrs_82540;
  return 0;
}

uint64_t e1000_init_nvm_params_82540(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x10uLL, &readData);
  __dmb(1u);
  v2 = readData;
  *(a1 + 1216) = 3;
  *(a1 + 1234) = 50;
  *(a1 + 1238) = 3;
  v3 = *(a1 + 1220);
  if (v3 == 3)
  {
    *(a1 + 1236) = 6;
    v4 = 64;
  }

  else if (v3 == 4)
  {
    *(a1 + 1236) = 8;
    v4 = 256;
  }

  else
  {
    v5 = (v2 & 0x200) == 0;
    if ((v2 & 0x200) != 0)
    {
      v6 = 8;
    }

    else
    {
      v6 = 6;
    }

    *(a1 + 1236) = v6;
    if (v5)
    {
      v4 = 64;
    }

    else
    {
      v4 = 256;
    }
  }

  *(a1 + 1232) = v4;
  *(a1 + 1152) = e1000_acquire_nvm_generic;
  *(a1 + 1160) = e1000_read_nvm_microwire;
  *(a1 + 1168) = e1000_release_nvm_generic;
  *(a1 + 1184) = e1000_update_nvm_checksum_generic;
  *(a1 + 1192) = e1000_valid_led_default_generic;
  *(a1 + 1200) = e1000_validate_nvm_checksum_generic;
  *(a1 + 1208) = e1000_write_nvm_microwire;
  return 0;
}

uint64_t e1000_init_phy_params_82540(uint64_t a1)
{
  *(a1 + 1100) = 1;
  *(a1 + 1122) = 47;
  *(a1 + 1108) = 10000;
  *(a1 + 1072) = 2;
  *(a1 + 912) = e1000_check_polarity_m88;
  *(a1 + 928) = e1000_phy_sw_reset_generic;
  *(a1 + 936) = e1000_phy_force_speed_duplex_m88;
  *(a1 + 952) = e1000_get_cable_length_m88;
  *(a1 + 944) = e1000_get_cfg_done_generic;
  *(a1 + 976) = e1000_read_phy_reg_m88;
  *(a1 + 1008) = e1000_phy_hw_reset_generic;
  *(a1 + 1032) = e1000_write_phy_reg_m88;
  *(a1 + 960) = e1000_get_phy_info_m88;
  *(a1 + 1056) = e1000_power_up_phy_copper;
  *(a1 + 1064) = e1000_power_down_phy_copper_82540;
  result = e1000_get_phy_id(a1);
  if (!result)
  {
    if ((*(a1 + 284) - 4) <= 4 && *(a1 + 1104) == 21040160)
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

uint64_t e1000_reset_hw_82540(uint64_t a1)
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
  IODelay(0x2710uLL);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData;
  v3 = *(a1 + 284);
  if (v3 == 8 || v3 == 6)
  {
    __dmb(2u);
    v4 = 4;
  }

  else
  {
    v4 = 0;
    __dmb(2u);
  }

  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v4, v2 | 0x4000000);
  IODelay(0x1388uLL);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5820uLL, &readData);
  __dmb(1u);
  v5 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x5820uLL, v5 & 0xFFFFDFFF);
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0xD8uLL, 0xFFFFFFFF);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0xC0uLL, &readData);
  __dmb(1u);
  return 0;
}

uint64_t e1000_init_hw_82540(uint64_t a1)
{
  (*(a1 + 48))();
  if (*(a1 + 284) <= 5)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x38uLL, 0);
  }

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

  if (*(a1 + 284) <= 5)
  {
    e1000_pcix_mmrbc_workaround_generic(a1);
  }

  v6 = (*(a1 + 192))(a1);
  v12 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x3828uLL, &v12);
  __dmb(1u);
  v7 = v12 & 0xFFC1FFFF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x3828uLL, v7 | 0x1010000);
  e1000_clear_hw_cntrs_82540(a1);
  v8 = *(a1 + 9584);
  if (v8 == 4277 || v8 == 4249)
  {
    v11 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x18uLL, &v11);
    __dmb(1u);
    v9 = v11;
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x18uLL, v9 | 0x20000);
  }

  return v6;
}

uint64_t e1000_setup_copper_link_82540(uint64_t a1)
{
  v7 = 0;
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = readData & 0xFFFFE7FF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 | 0x40);
  v3 = *(a1 + 284);
  if (v3 == 6)
  {
    v8 = 0;
    if ((*(a1 + 1160))(a1, 7, 1, &v8))
    {
      return 4294967294;
    }

    if (v8 <= -2)
    {
      if ((*(a1 + 1032))(a1, 29, 11) || (*(a1 + 1032))(a1, 30, 33028))
      {
        return 4294967294;
      }

      *(a1 + 1134) = 0;
    }

    v3 = *(a1 + 284);
  }

  v5 = v3 == 8 || v3 == 6;
  if (!v5 || (result = (*(a1 + 976))(a1, 16, &v7), !result) && (v7 |= 8u, result = (*(a1 + 1032))(a1, 16), !result))
  {
    result = e1000_copper_link_setup_m88(a1);
    if (!result)
    {
      return e1000_setup_copper_link_generic(a1);
    }
  }

  return result;
}

uint64_t e1000_setup_fiber_serdes_link_82540(uint64_t a1)
{
  v2 = *(a1 + 284);
  if (v2 != 8 && v2 != 6)
  {
    return e1000_setup_fiber_serdes_link_generic(a1);
  }

  if (*(a1 + 1116) != 3)
  {
    goto LABEL_24;
  }

  v6 = 0;
  result = (*(a1 + 1160))(a1, 6, 1, &v6);
  if (!result && v6 != 0xFFFF)
  {
    LOBYTE(v6) = v6 & 0xF;
    v6 = v6;
    result = (*(a1 + 1032))(a1, 26);
  }

  if (!result)
  {
LABEL_24:
    v7 = 0;
    result = (*(a1 + 976))(a1, 29, &v7 + 2);
    if (!result)
    {
      result = (*(a1 + 1032))(a1, 29, 5);
      if (!result)
      {
        result = (*(a1 + 976))(a1, 30, &v7);
        if (!result)
        {
          LOWORD(v7) = v7 & 0xFEFF;
          result = (*(a1 + 1032))(a1, 30);
          if (!result)
          {
            result = (*(a1 + 1032))(a1, 29, 4);
            if (!result)
            {
              result = (*(a1 + 976))(a1, 30, &v7);
              if (!result)
              {
                LOWORD(v7) = v7 | 0x800;
                result = (*(a1 + 1032))(a1, 30);
                if (!result)
                {
                  result = (*(a1 + 1032))(a1, 29, HIWORD(v7));
                  if (!result)
                  {
                    return e1000_setup_fiber_serdes_link_generic(a1);
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

uint64_t e1000_read_mac_addr_82540(uint64_t a1)
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
      if (*(a1 + 1260) == 1)
      {
        *(a1 + 283) ^= 1u;
      }

      *(a1 + 272) = *v3;
      *(a1 + 276) = *(v3 + 4);
      return result;
    }
  }

  return result;
}

void e1000_clear_hw_cntrs_82540(uint64_t a1)
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

void e1000_power_down_phy_copper_82540(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x5820uLL, &readData);
  __dmb(1u);
  if ((readData & 1) == 0)
  {
    e1000_power_down_phy_copper(a1);
  }
}

void *e1000_init_mac_ops_generic(void *result)
{
  result[5] = e1000_null_ops_generic;
  result[19] = e1000_null_ops_generic;
  result[20] = e1000_null_ops_generic;
  result[25] = e1000_null_ops_generic;
  result[26] = e1000_null_ops_generic;
  result[13] = e1000_null_ops_generic;
  result[14] = e1000_set_lan_id_multi_port_pcie;
  result[30] = e1000_read_mac_addr_generic;
  result[28] = e1000_config_collision_dist_generic;
  result[10] = e1000_null_ops_generic;
  result[11] = e1000_null_mac_generic;
  result[16] = e1000_null_ops_generic;
  result[17] = e1000_null_ops_generic;
  result[24] = e1000_null_ops_generic;
  result[15] = e1000_null_link_info;
  result[9] = e1000_null_ops_generic;
  result[7] = e1000_null_ops_generic;
  result[8] = e1000_null_mng_mode;
  result[18] = e1000_null_update_mc;
  result[12] = e1000_null_mac_generic;
  result[27] = e1000_null_write_vfta;
  result[31] = e1000_validate_mdi_setting_generic;
  result[29] = e1000_rar_set_generic;
  return result;
}

void e1000_set_lan_id_multi_port_pcie(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  *(a1 + 1260) = (readData >> 2) & 3;
}

void e1000_config_collision_dist_generic(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x400uLL, &readData);
  __dmb(1u);
  v2 = readData & 0xFFC00FFF;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x400uLL, v2 | 0x3F000);
  v3 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v3);
  __dmb(1u);
}

uint64_t e1000_validate_mdi_setting_generic(uint64_t a1)
{
  if (*(a1 + 851))
  {
    return 0;
  }

  v1 = *(a1 + 1130);
  if (v1 != 3 && v1 != 0)
  {
    return 0;
  }

  *(a1 + 1130) = 1;
  return 4294967293;
}

uint64_t e1000_rar_set_generic(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  __dmb(2u);
  v8 = *(a1 + 16);
  v9 = (8 * a3) | 0x5400;
  if (a3 > 0xF)
  {
    v9 = 8 * a3 + 21600;
  }

  if (v9 == 21504)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 64;
    }

    else
    {
      v9 = 21504;
    }

    v10 = a3 & 0x1FFFFFFF;
    goto LABEL_71;
  }

  v10 = a3 & 0x1FFFFFFF;
  if (a3 >= 0x10 && v10 == 536869496)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 264;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536869496;
    goto LABEL_71;
  }

  if (a3 >= 0x10 && v10 == 536869492)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 272;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536869492;
    goto LABEL_71;
  }

  if (a3 >= 0x10 && v10 == 536869493)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 280;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536869493;
    goto LABEL_71;
  }

  if (a3 >= 0x10 && v10 == 536869494)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 288;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536869494;
    goto LABEL_71;
  }

  if (a3 >= 0x10 && v10 == 536869495)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 296;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536869495;
    goto LABEL_71;
  }

  if (a3 >= 0x10 && v10 == 536869524)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 312;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536869524;
    goto LABEL_71;
  }

  if (a3 >= 0x10 && v10 == 536869525)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 320;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536869525;
    goto LABEL_71;
  }

  if (a3 >= 0x10 && v10 == 536869526)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 328;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536869526;
    goto LABEL_71;
  }

  if (a3 >= 0x10 && v10 == 536869527)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 336;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536869527;
    goto LABEL_71;
  }

  if (a3 >= 0x10)
  {
    v11 = 536869281;
    if (v10 == 536869281)
    {
      v12 = *(a1 + 284) <= 1;
      v9 = 352;
LABEL_68:
      if (!v12)
      {
        v9 = 8 * a3 + 21600;
      }

      v10 = v11;
      goto LABEL_71;
    }
  }

  if (a3 >= 0x10)
  {
    v11 = 536869280;
    if (v10 == 536869280)
    {
      v12 = *(a1 + 284) <= 1;
      v9 = 360;
      goto LABEL_68;
    }
  }

  if (a3 >= 0x10 && v10 == 536870836)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 512;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536870836;
    goto LABEL_71;
  }

  if (a3 >= 0x10 && v10 == 536870004)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 1056;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536870004;
    goto LABEL_71;
  }

  if (a3 >= 0x10 && v10 == 536870005)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 1064;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536870005;
    goto LABEL_71;
  }

  if (a3 >= 0x10 && v10 == 536870006)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 1072;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536870006;
    goto LABEL_71;
  }

  if (a3 >= 0x10 && v10 == 536870007)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 1080;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536870007;
    goto LABEL_71;
  }

  if (a3 >= 0x10 && v10 == 536870008)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 1088;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536870008;
    goto LABEL_71;
  }

  if (v9 == 22016)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 1536;
    }

    else
    {
      v9 = 22016;
    }

    goto LABEL_71;
  }

  if (a3 >= 0x10)
  {
    v11 = 536869366;
    if (v10 == 536869366)
    {
      v12 = *(a1 + 284) <= 1;
      v9 = 0x8000;
      goto LABEL_68;
    }
  }

  if (a3 >= 0x10)
  {
    v11 = 536869367;
    if (v10 == 536869367)
    {
      v12 = *(a1 + 284) <= 1;
      v9 = 32776;
      goto LABEL_68;
    }
  }

  if (a3 >= 0x10 && v10 == 536869878)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 32784;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536869878;
  }

  else if (a3 >= 0x10 && v10 == 536869879)
  {
    if (*(a1 + 284) <= 1)
    {
      v9 = 32792;
    }

    else
    {
      v9 = 8 * a3 + 21600;
    }

    v10 = 536869879;
  }

LABEL_71:
  v13 = 8 * a3;
  IOPCIDevice::MemoryWrite32(v8, 0, v9, v5);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  __dmb(2u);
  if (a3 >= 0x10 && v10 == 536869492)
  {
    v14 = v13 + 21604;
    v15 = *(a1 + 284) <= 1;
    v16 = 276;
    goto LABEL_80;
  }

  if (a3 >= 0x10 && v10 == 536869524)
  {
    v14 = v13 + 21604;
    v15 = *(a1 + 284) <= 1;
    v16 = 316;
    goto LABEL_80;
  }

  if (a3 >= 0x10 && v10 == 536870004)
  {
    v14 = v13 + 21604;
    v15 = *(a1 + 284) <= 1;
    v16 = 1060;
LABEL_80:
    if (!v15)
    {
      v16 = v14;
    }

    goto LABEL_82;
  }

  v16 = v13 + 21604;
  if (a3 <= 0xF)
  {
    v16 = v13 | 0x5404;
  }

LABEL_82:
  v17 = v6 | (v7 << 8);
  v18 = v5 | v17;
  v19 = v17 | 0x80000000;
  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v16, v20);
  v22 = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &v22);
  __dmb(1u);
  return 0;
}

uint64_t e1000_get_bus_info_pci_generic(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
  v2 = readData;
  if ((readData & 0x2000) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  *(a1 + 1248) = v3;
  if ((v2 & 0x2000) != 0)
  {
    if ((v2 >> 14) > 1u)
    {
      if (v2 >> 14 == 2)
      {
        v4 = 5;
      }

      else
      {
        v4 = 8;
      }
    }

    else if (v2 >> 14)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  else if ((v2 & 0x800) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 1252) = v4;
  if ((v2 & 0x1000) != 0)
  {
    v5 = 10;
  }

  else
  {
    v5 = 9;
  }

  *(a1 + 1256) = v5;
  (*(a1 + 112))(a1);
  return 0;
}

uint64_t e1000_get_bus_info_pcie_generic(uint64_t a1)
{
  v9 = 0;
  *(a1 + 1248) = 3;
  if (e1000_read_pcie_cap_reg(a1, 0x12u, &v9))
  {
    v2 = 0;
    *(a1 + 1256) = 0;
    v3 = 1252;
  }

  else
  {
    v4 = v9;
    v5 = v9 & 0xF;
    if (v5 == 2)
    {
      v6 = 7;
    }

    else
    {
      v6 = 0;
    }

    if (v5 == 1)
    {
      v7 = 6;
    }

    else
    {
      v7 = v6;
    }

    *(a1 + 1252) = v7;
    v2 = (v4 >> 4) & 0x3F;
    v3 = 1256;
  }

  *(a1 + v3) = v2;
  (*(a1 + 112))(a1);
  return 0;
}

void e1000_set_lan_id_multi_port_pci(uint64_t a1)
{
  v4 = 0;
  e1000_read_pci_cfg(a1, 0xEuLL, &v4);
  LOWORD(v2) = 0;
  if ((v4 & 0x80) != 0)
  {
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    v2 = (readData >> 2) & 3;
  }

  *(a1 + 1260) = v2;
}

void e1000_clear_vfta_generic(uint64_t a1)
{
  v2 = 128;
  v3 = 22016;
  do
  {
    __dmb(2u);
    v4 = v3;
    if (v2 == 128)
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
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    v3 += 4;
    --v2;
  }

  while (v2);
}

void e1000_write_vfta_generic(uint64_t a1, int a2, uint32_t data)
{
  __dmb(2u);
  v4 = *(a1 + 16);
  v5 = 4 * a2;
  v6 = 4 * a2 + 22016;
  if (4 * a2 > -11505)
  {
    if (v5 <= -7673)
    {
      if (v5 > -8681)
      {
        switch(v5)
        {
          case -8680:
            v7 = *(a1 + 284) <= 1;
            v6 = 32792;
            v8 = 13336;
            break;
          case -7680:
            v7 = *(a1 + 284) <= 1;
            v6 = 1056;
            v8 = 14336;
            break;
          case -7676:
            v7 = *(a1 + 284) <= 1;
            v6 = 1060;
            v8 = 14340;
            break;
          default:
            goto LABEL_64;
        }
      }

      else
      {
        switch(v5)
        {
          case -11504:
            v7 = *(a1 + 284) <= 1;
            v6 = 328;
            v8 = 10512;
            break;
          case -11496:
            v7 = *(a1 + 284) <= 1;
            v6 = 336;
            v8 = 10520;
            break;
          case -8688:
            v7 = *(a1 + 284) <= 1;
            v6 = 32784;
            v8 = 13328;
            break;
          default:
            goto LABEL_64;
        }
      }
    }

    else if (v5 <= -7649)
    {
      switch(v5)
      {
        case -7672:
          v7 = *(a1 + 284) <= 1;
          v6 = 1064;
          v8 = 14344;
          break;
        case -7664:
          v7 = *(a1 + 284) <= 1;
          v6 = 1072;
          v8 = 14352;
          break;
        case -7656:
          v7 = *(a1 + 284) <= 1;
          v6 = 1080;
          v8 = 14360;
          break;
        default:
          goto LABEL_64;
      }
    }

    else if (v5 > -513)
    {
      if (v5)
      {
        if (v5 != -512)
        {
          goto LABEL_64;
        }

        v7 = *(a1 + 284) <= 1;
        v6 = 64;
        v8 = 21504;
      }

      else
      {
        v7 = *(a1 + 284) <= 1;
        v6 = 1536;
        v8 = 22016;
      }
    }

    else if (v5 == -7648)
    {
      v7 = *(a1 + 284) <= 1;
      v6 = 1088;
      v8 = 14368;
    }

    else
    {
      if (v5 != -1024)
      {
        goto LABEL_64;
      }

      v7 = *(a1 + 284) <= 1;
      v6 = 512;
      v8 = 20992;
    }
  }

  else if (v5 <= -11769)
  {
    if (v5 > -12777)
    {
      switch(v5)
      {
        case -12776:
          v7 = *(a1 + 284) <= 1;
          v6 = 32776;
          v8 = 9240;
          break;
        case -11776:
          v7 = *(a1 + 284) <= 1;
          v6 = 272;
          v8 = 10240;
          break;
        case -11772:
          v7 = *(a1 + 284) <= 1;
          v6 = 276;
          v8 = 10244;
          break;
        default:
          goto LABEL_64;
      }
    }

    else
    {
      switch(v5)
      {
        case -13472:
          v7 = *(a1 + 284) <= 1;
          v6 = 360;
          v8 = 8544;
          break;
        case -13464:
          v7 = *(a1 + 284) <= 1;
          v6 = 352;
          v8 = 8552;
          break;
        case -12784:
          v7 = *(a1 + 284) <= 1;
          v6 = 0x8000;
          v8 = 9232;
          break;
        default:
          goto LABEL_64;
      }
    }
  }

  else if (v5 <= -11745)
  {
    switch(v5)
    {
      case -11768:
        v7 = *(a1 + 284) <= 1;
        v6 = 280;
        v8 = 10248;
        break;
      case -11760:
        v7 = *(a1 + 284) <= 1;
        v6 = 288;
        v8 = 10256;
        break;
      case -11752:
        v7 = *(a1 + 284) <= 1;
        v6 = 296;
        v8 = 10264;
        break;
      default:
        goto LABEL_64;
    }
  }

  else if (v5 > -11517)
  {
    if (v5 == -11516)
    {
      v7 = *(a1 + 284) <= 1;
      v6 = 316;
      v8 = 10500;
    }

    else
    {
      if (v5 != -11512)
      {
        goto LABEL_64;
      }

      v7 = *(a1 + 284) <= 1;
      v6 = 320;
      v8 = 10504;
    }
  }

  else if (v5 == -11744)
  {
    v7 = *(a1 + 284) <= 1;
    v6 = 264;
    v8 = 10272;
  }

  else
  {
    if (v5 != -11520)
    {
      goto LABEL_64;
    }

    v7 = *(a1 + 284) <= 1;
    v6 = 312;
    v8 = 10496;
  }

  if (!v7)
  {
    v6 = v8;
  }

LABEL_64:
  IOPCIDevice::MemoryWrite32(v4, 0, v6, data);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
}

uint64_t e1000_init_rx_addrs_generic(uint64_t a1, unsigned int a2)
{
  v7 = 0;
  v6 = 0;
  result = (*(a1 + 232))(a1, a1 + 272, 0);
  if (a2 >= 2)
  {
    v5 = 1;
    do
    {
      result = (*(a1 + 232))(a1, &v6, v5);
      v5 = (v5 + 1);
    }

    while (a2 != v5);
  }

  return result;
}

uint64_t e1000_check_alt_mac_addr_generic(uint64_t a1)
{
  v10 = 0;
  result = (*(a1 + 1160))(a1, 3, 1, &v10);
  if (!result)
  {
    v3 = *(a1 + 284);
    v4 = v3 != 15 && (v3 - 31) >= 0xFFFFFFEE;
    if (!v4)
    {
      return 0;
    }

    result = (*(a1 + 1160))(a1, 55, 1, &v10 + 2);
    if (!result)
    {
      if ((HIWORD(v10) + 1) < 2u)
      {
        return 0;
      }

      v5 = *(a1 + 1260);
      switch(v5)
      {
        case 3:
          v6 = HIWORD(v10) + 9;
          break;
        case 2:
          v6 = HIWORD(v10) + 6;
          break;
        case 1:
          v6 = HIWORD(v10) + 3;
          break;
        default:
          goto LABEL_17;
      }

      HIWORD(v10) = v6;
LABEL_17:
      v7 = 0;
      for (i = 0; ; i += 2)
      {
        result = (*(a1 + 1160))(a1, (HIWORD(v10) + v7), 1, &v10);
        if (result)
        {
          break;
        }

        *&v9[i] = v10;
        ++v7;
        v4 = i >= 4;
        if (v4)
        {
          if ((v9[0] & 1) == 0)
          {
            (*(a1 + 232))(a1, v9, 0);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t e1000_hash_mc_addr_generic(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 32 * *(a1 + 326) - 1;
  do
  {
    v4 = v2;
    v5 = v3 >> v2++;
  }

  while (v5 != 255);
  v6 = *(a1 + 304);
  v7 = v4 + 4;
  v8 = v4 + 2;
  if (v6 == 1)
  {
    ++v4;
  }

  if (v6 == 2)
  {
    v4 = v8;
  }

  if (v6 == 3)
  {
    v4 = v7;
  }

  return ((*(a2 + 5) << v4) | (*(a2 + 4) >> (8 - v4))) & v3;
}

void e1000_update_mc_addr_list_generic(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a1 + 332;
  *(a1 + 812) = 0u;
  *(a1 + 828) = 0u;
  *(a1 + 780) = 0u;
  *(a1 + 796) = 0u;
  *(a1 + 748) = 0u;
  *(a1 + 764) = 0u;
  *(a1 + 716) = 0u;
  *(a1 + 732) = 0u;
  *(a1 + 684) = 0u;
  *(a1 + 700) = 0u;
  *(a1 + 652) = 0u;
  *(a1 + 668) = 0u;
  *(a1 + 620) = 0u;
  *(a1 + 636) = 0u;
  *(a1 + 588) = 0u;
  *(a1 + 604) = 0u;
  *(a1 + 556) = 0u;
  *(a1 + 572) = 0u;
  *(a1 + 524) = 0u;
  *(a1 + 540) = 0u;
  *(a1 + 492) = 0u;
  *(a1 + 508) = 0u;
  *(a1 + 460) = 0u;
  *(a1 + 476) = 0u;
  *(a1 + 428) = 0u;
  *(a1 + 444) = 0u;
  *(a1 + 396) = 0u;
  *(a1 + 412) = 0u;
  *(a1 + 364) = 0u;
  *(a1 + 380) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 348) = 0u;
  v5 = *(a1 + 326);
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = e1000_hash_mc_addr_generic(a1, a2);
      *(v4 + 4 * ((v5 + 0x7FFFFFF) & (v8 >> 5))) |= 1 << v8;
      a2 += 6;
      --v6;
    }

    while (v6);
  }

  if (v5)
  {
    v9 = 0;
    v10 = a1 + 4 * (v5 - 1) + 332;
    v11 = 4 * v5;
    v12 = 4 * v5 + 20988;
    do
    {
      v13 = v11 + v9;
      __dmb(2u);
      if (v11 + v9 == 516)
      {
        if (*(a1 + 284) <= 1)
        {
          v14 = 64;
        }

        else
        {
          v14 = 21504;
        }
      }

      else if (v13 == 4)
      {
        if (*(a1 + 284) <= 1)
        {
          v14 = 512;
        }

        else
        {
          v14 = 20992;
        }
      }

      else if (v13 == 1028)
      {
        if (*(a1 + 284) <= 1)
        {
          v14 = 1536;
        }

        else
        {
          v14 = 22016;
        }
      }

      else
      {
        v14 = (v12 + v9);
      }

      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v14, *(v10 + v9));
      v9 -= 4;
      --v5;
    }

    while (v5);
  }

  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
  __dmb(1u);
}

void e1000_pcix_mmrbc_workaround_generic(uint64_t a1)
{
  if (*(a1 + 1248) == 2)
  {
    v6 = v1;
    v7 = v2;
    v5 = 0;
    e1000_read_pci_cfg(a1, 0xE6uLL, &v5 + 1);
    e1000_read_pci_cfg(a1, 0xEAuLL, &v5);
    v4 = (v5 >> 5) & 3;
    if (v4 == 3)
    {
      v4 = 2;
    }

    if (((HIWORD(v5) >> 2) & 3u) > v4)
    {
      HIWORD(v5) = HIWORD(v5) & 0xFFF3 | (4 * v4);
      e1000_write_pci_cfg(a1, 0xE6uLL, &v5 + 1);
    }
  }
}

void e1000_clear_hw_cntrs_base_generic(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4000uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4008uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4010uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4014uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4018uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x401CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4020uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4028uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4030uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4038uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4040uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4048uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x404CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4050uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4054uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4058uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4074uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4078uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x407CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4080uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4088uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x408CuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4090uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4094uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40A0uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40A4uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40A8uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40ACuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40B0uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40C0uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40C4uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40C8uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40CCuLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40D0uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40D4uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40F0uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x40F4uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4148uLL, &readData);
  __dmb(1u);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x414CuLL, &readData);
  __dmb(1u);
}

uint64_t e1000_check_for_copper_link_generic(uint64_t a1)
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
      return 0;
    }
  }

  return result;
}

uint64_t e1000_config_fc_after_link_up_generic(uint64_t a1)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v2 = *(a1 + 1116);
  if (*(a1 + 852) == 1)
  {
    if ((v2 & 0xFFFFFFFE) != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v2 != 1)
  {
LABEL_30:
    if (v2 == 3 && *(a1 + 851) == 1)
    {
      v10 = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x420CuLL, &v10);
      __dmb(1u);
      if ((v10 & 0x10000) != 0)
      {
        v10 = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4218uLL, &v10);
        __dmb(1u);
        v6 = v10;
        v10 = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x421CuLL, &v10);
        __dmb(1u);
        if ((v6 & 0x80) != 0)
        {
          v7 = *(a1 + 884);
          if (v7 == 3)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v8 = v10 & 0x180;
          if ((v6 & 0x100) != 0 && v8 == 384)
          {
            v7 = 2;
LABEL_42:
            *(a1 + 880) = v7;
            goto LABEL_43;
          }

          if ((~v6 & 0x180) != 0 || v8 != 256)
          {
            *(a1 + 880) = 0;
LABEL_43:
            v10 = 0;
            IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x4208uLL, &v10);
            __dmb(1u);
            v9 = v10;
            __dmb(2u);
            IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x4208uLL, v9 | 0x80);
            result = e1000_force_mac_fc_generic(a1);
            if (result)
            {
              return result;
            }

            return 0;
          }
        }

        v7 = 1;
        goto LABEL_42;
      }
    }

    return 0;
  }

  result = e1000_force_mac_fc_generic(a1);
  if (result)
  {
    return result;
  }

  v2 = *(a1 + 1116);
LABEL_7:
  if (v2 != 1)
  {
    goto LABEL_30;
  }

  if (*(a1 + 851) != 1)
  {
    return 0;
  }

  result = (*(a1 + 976))(a1, 1, &v13 + 2);
  if (result)
  {
    return result;
  }

  result = (*(a1 + 976))(a1, 1, &v13 + 2);
  if (result)
  {
    return result;
  }

  if ((v13 & 0x200000) == 0)
  {
    return 0;
  }

  result = (*(a1 + 976))(a1, 4, &v13);
  if (result)
  {
    return result;
  }

  result = (*(a1 + 976))(a1, 5, &v12 + 2);
  if (result)
  {
    return result;
  }

  if ((v13 & 0x400) != 0 && (v12 & 0x4000000) != 0)
  {
    v5 = *(a1 + 884);
    if (v5 == 3)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v4 = v13 & 0xC00;
  if (v4 == 3072)
  {
    if ((HIWORD(v12) & 0xC00) != 0x800)
    {
      goto LABEL_21;
    }

LABEL_23:
    v5 = 1;
    goto LABEL_24;
  }

  if (v4 == 2048 && (~HIWORD(v12) & 0xC00) == 0)
  {
    v5 = 2;
LABEL_24:
    *(a1 + 880) = v5;
    goto LABEL_25;
  }

LABEL_21:
  *(a1 + 880) = 0;
LABEL_25:
  result = (*(a1 + 120))(a1, &v12, &v11);
  if (!result)
  {
    if (v11 == 1)
    {
      *(a1 + 880) = 0;
    }

    result = e1000_force_mac_fc_generic(a1);
    if (!result)
    {
      v2 = *(a1 + 1116);
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t e1000_check_for_fiber_link_generic(uint64_t a1)
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
  if ((v2 & 0x80000) == 0 || ((v3 & 2) == 0 ? (v5 = v4 == 0) : (v5 = 0), !v5))
  {
    if ((v2 & 0x40) != 0)
    {
      if (v4)
      {
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x178uLL, *(a1 + 312));
        __dmb(2u);
        IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 & 0xFFFFFFBF);
        *(a1 + 860) = 1;
      }
    }

    return 0;
  }

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
    result = e1000_config_fc_after_link_up_generic(a1);
    if (result)
    {
      return result;
    }

    return 0;
  }

  result = 0;
  *(a1 + 852) = 1;
  return result;
}

uint64_t e1000_check_for_serdes_link_generic(uint64_t a1)
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
  if (v3 & 2 | readData & 0x20000000)
  {
    if ((v2 & 0x40) != 0 && (readData & 0x20000000) != 0)
    {
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x178uLL, *(a1 + 312));
      __dmb(2u);
      IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v2 & 0xFFFFFFBF);
    }

    else
    {
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x178uLL, &readData);
      __dmb(1u);
      if ((readData & 0x80000000) != 0)
      {
        goto LABEL_12;
      }

      IODelay(0xAuLL);
      readData = 0;
      IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x180uLL, &readData);
      v6 = 0;
      __dmb(1u);
      if ((readData & 0x40000000) == 0)
      {
        goto LABEL_11;
      }

      if ((readData & 0x8000000) != 0)
      {
LABEL_12:
        readData = 0;
        IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x178uLL, &readData);
        result = 0;
        __dmb(1u);
        if ((readData & 0x80000000) != 0)
        {
          readData = 0;
          IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
          __dmb(1u);
          if ((readData & 2) != 0 && (IODelay(0xAuLL), readData = 0, IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0x180uLL, &readData), __dmb(1u), (readData & 0x40000000) != 0) && (readData & 0x8000000) == 0)
          {
            result = 0;
            *(a1 + 860) = 1;
          }

          else
          {
            result = 0;
            *(a1 + 860) = 0;
          }
        }

        return result;
      }
    }

    v6 = 1;
LABEL_11:
    *(a1 + 860) = v6;
    goto LABEL_12;
  }

  if ((*(a1 + 852) & 1) == 0)
  {
    result = 0;
    *(a1 + 852) = 1;
    return result;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x178uLL, *(a1 + 312) & 0x7FFFFFFF);
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v4 = readData;
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v4 | 0x41);
  result = e1000_config_fc_after_link_up_generic(a1);
  if (!result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t e1000_set_default_fc_generic(uint64_t a1)
{
  v6 = 0;
  v2 = 15;
  if (*(a1 + 284) == 32)
  {
    if (*(a1 + 1260))
    {
      v2 = (*(a1 + 1260) << 6) + 79;
    }

    else
    {
      v2 = 15;
    }
  }

  result = (*(a1 + 1160))(a1, v2, 1, &v6);
  if (!result)
  {
    if ((v6 & 0x3000) == 0x2000)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    if ((v6 & 0x3000) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 884) = v5;
  }

  return result;
}

uint64_t e1000_setup_link_generic(uint64_t a1)
{
  v2 = *(a1 + 920);
  if (v2 && v2(a1))
  {
    return 0;
  }

  v3 = *(a1 + 884);
  if (v3 == 255)
  {
    if (*(a1 + 284) == 36)
    {
      v3 = 3;
      *(a1 + 884) = 3;
    }

    else
    {
      result = e1000_set_default_fc_generic(a1);
      if (result)
      {
        return result;
      }

      v3 = *(a1 + 884);
    }
  }

  *(a1 + 880) = v3;
  result = (*(a1 + 200))(a1);
  if (!result)
  {
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x30uLL, 0x8808u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x2CuLL, 0x100u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x28uLL, 0xC28001u);
    __dmb(2u);
    IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x170uLL, *(a1 + 872));
    e1000_set_fc_watermarks_generic(a1);
    return 0;
  }

  return result;
}

uint64_t e1000_set_fc_watermarks_generic(uint64_t a1)
{
  if ((*(a1 + 880) & 2) != 0)
  {
    if (*(a1 + 876))
    {
      v3 = *(a1 + 868) | 0x80000000;
    }

    else
    {
      v3 = *(a1 + 868);
    }

    v2 = *(a1 + 864);
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  __dmb(2u);
  v4 = *(a1 + 16);
  if (*(a1 + 284) <= 1)
  {
    v5 = 360;
  }

  else
  {
    v5 = 8544;
  }

  IOPCIDevice::MemoryWrite32(v4, 0, v5, v3);
  __dmb(2u);
  if (*(a1 + 284) <= 1)
  {
    v6 = 352;
  }

  else
  {
    v6 = 8552;
  }

  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, v6, v2);
  return 0;
}

uint64_t e1000_commit_fc_settings_generic(uint64_t a1)
{
  v1 = *(a1 + 880);
  if (v1 > 3)
  {
    return 4294967293;
  }

  v3 = dword_1000331C0[v1];
  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0x178uLL, v3);
  result = 0;
  *(a1 + 312) = v3;
  return result;
}

uint64_t e1000_poll_fiber_serdes_link_generic(uint64_t a1)
{
  v2 = 50;
  while (1)
  {
    IODelay(0x2710uLL);
    readData = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 8uLL, &readData);
    __dmb(1u);
    if ((readData & 2) != 0)
    {
      break;
    }

    if (!--v2)
    {
      *(a1 + 852) = 1;
      result = (*(a1 + 72))(a1);
      if (result)
      {
        return result;
      }

      break;
    }
  }

  result = 0;
  *(a1 + 852) = 0;
  return result;
}

uint64_t e1000_setup_fiber_serdes_link_generic(uint64_t a1)
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
    if (*(a1 + 1116) == 3)
    {
      return e1000_poll_fiber_serdes_link_generic(a1);
    }

    v4 = 0;
    IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &v4);
    result = 0;
    __dmb(1u);
    if ((v4 & 0x80000) != 0)
    {
      return e1000_poll_fiber_serdes_link_generic(a1);
    }
  }

  return result;
}

uint64_t e1000_force_mac_fc_generic(uint64_t a1)
{
  readData = 0;
  IOPCIDevice::MemoryRead32(*(a1 + 16), 0, 0, &readData);
  __dmb(1u);
  v2 = *(a1 + 880);
  result = 4294967293;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = readData & 0xE7FFFFFF | 0x10000000;
    }

    else
    {
      if (v2 != 3)
      {
        return result;
      }

      v4 = readData | 0x18000000;
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    v4 = readData & 0xE7FFFFFF | 0x8000000;
  }

  else
  {
    v4 = readData & 0xE7FFFFFF;
  }

  __dmb(2u);
  IOPCIDevice::MemoryWrite32(*(a1 + 16), 0, 0, v4);
  return 0;
}