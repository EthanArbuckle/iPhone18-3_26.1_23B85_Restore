unint64_t sub_100523F64(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v9 = 0xEE0064695F6E6F69;
          }

          else
          {
            v9 = 0xEF79656B5F6E6F69;
          }

          v8 = 0x746172616C636564;
        }

        else
        {
          v9 = 0xE500000000000000;
          v8 = 0x4449574F52;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE500000000000000;
          v8 = 0x7972746E65;
        }

        else
        {
          v9 = 0xE400000000000000;
          v8 = 1701869940;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x7065725F7473616CLL;
        }

        else
        {
          v8 = 0x635F79616C706572;
        }

        if (v7 == 3)
        {
          v9 = 0xEB0000000079616CLL;
        }

        else
        {
          v9 = 0xEC000000746E756FLL;
        }
      }

      v10 = 0x7972746E65;
      if (v6 != 5)
      {
        v10 = 1701869940;
      }

      v11 = 0xE400000000000000;
      if (v6 == 5)
      {
        v11 = 0xE500000000000000;
      }

      v12 = 0x7065725F7473616CLL;
      if (v6 != 3)
      {
        v12 = 0x635F79616C706572;
      }

      v13 = 0xEC000000746E756FLL;
      if (v6 == 3)
      {
        v13 = 0xEB0000000079616CLL;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0xEF79656B5F6E6F69;
      if (v6 == 1)
      {
        v14 = 0xEE0064695F6E6F69;
      }

      v15 = 0x746172616C636564;
      if (!v6)
      {
        v15 = 0x4449574F52;
        v14 = 0xE500000000000000;
      }

      v16 = v6 <= 2 ? v15 : v10;
      v17 = v6 <= 2 ? v14 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1005241EC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v22 + 48) + v4);
      if (v6 <= 1)
      {
        if (*(*(v22 + 48) + v4))
        {
          v7 = 0xD000000000000012;
        }

        else
        {
          v7 = 0xD000000000000019;
        }

        if (*(*(v22 + 48) + v4))
        {
          v8 = "distributor_priority_list";
        }

        else
        {
          v8 = "";
        }
      }

      else if (v6 == 2)
      {
        v7 = 0xD000000000000016;
        v8 = "single_instance_id";
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000013;
        }

        else
        {
          v7 = 0xD000000000000010;
        }

        if (v6 == 3)
        {
          v8 = "disabled_install_sheet";
        }

        else
        {
          v8 = "approved_developers";
        }
      }

      v9 = v8 | 0x8000000000000000;
      v10 = 0xD000000000000019;
      v11 = 0xD000000000000016;
      v12 = 0xD000000000000013;
      if (v5 == 3)
      {
        v13 = "disabled_install_sheet";
      }

      else
      {
        v12 = 0xD000000000000010;
        v13 = "approved_developers";
      }

      if (v5 != 2)
      {
        v11 = v12;
      }

      v14 = "single_instance_id";
      if (v5 != 2)
      {
        v14 = v13;
      }

      if (v5)
      {
        v10 = 0xD000000000000012;
        v15 = "distributor_priority_list";
      }

      else
      {
        v15 = "";
      }

      v16 = v5 <= 1 ? v10 : v11;
      v17 = v5 <= 1 ? v15 : v14;
      if (v7 == v16 && v9 == (v17 | 0x8000000000000000))
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v20;
        if ((*(v21 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1005243CC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED000064695F6D65;
      v8 = 0x74695F656C707061;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xEA00000000007365;
          v8 = 0x7475626972747461;
          break;
        case 2:
          v8 = 0xD000000000000017;
          v7 = 0x80000001006C39D0;
          break;
        case 3:
          v8 = 0x615F70756B636162;
          v9 = 1683976304;
          goto LABEL_18;
        case 4:
          v8 = 0x695F656C646E7562;
          v7 = 0xE900000000000064;
          break;
        case 5:
          v8 = 0x6D5F646568636163;
          v9 = 1684108389;
LABEL_18:
          v7 = v9 | 0xEF61746100000000;
          break;
        case 6:
          v8 = 0x72616C756C6C6563;
          v7 = 0xEF7963696C6F705FLL;
          break;
        case 7:
          v8 = 0xD000000000000013;
          v7 = 0x80000001006C3A20;
          break;
        case 8:
          v8 = 0x746172616C636564;
          v7 = 0xEE0064695F6E6F69;
          break;
        case 9:
          v8 = 0x746172616C636564;
          v7 = 0xEF79656B5F6E6F69;
          break;
        case 0xA:
          v8 = 0x5F6C6C6174736E69;
          v7 = 0xEE00676E696D6974;
          break;
        case 0xB:
          v8 = 0xD000000000000019;
          v7 = 0x80000001006C3A70;
          break;
        case 0xC:
          v8 = 0x62697369765F7369;
          v7 = 0xEA0000000000656CLL;
          break;
        case 0xD:
          v7 = 0xE700000000000000;
          v8 = 0x65736E6563696CLL;
          break;
        case 0xE:
          v8 = 0xD000000000000010;
          v7 = 0x80000001006C3AA0;
          break;
        case 0xF:
          v8 = 0x74736566696E616DLL;
          v7 = 0xEC0000006C72755FLL;
          break;
        case 0x10:
          v7 = 0xE400000000000000;
          v8 = 1701667182;
          break;
        case 0x11:
          v7 = 0xE700000000000000;
          v8 = 0x616E6F73726570;
          break;
        case 0x12:
          v8 = 0x765F64656E6E6970;
          v7 = 0xEE006E6F69737265;
          break;
        case 0x13:
          v7 = 0xE800000000000000;
          v8 = 0x6D726F6674616C70;
          break;
        case 0x14:
          v8 = 0x6573616863727570;
          v7 = 0xEF646F6874656D5FLL;
          break;
        case 0x15:
          v8 = 0x6E5F726F646E6576;
          v7 = 0xEB00000000656D61;
          break;
        default:
          break;
      }

      v10 = 0x74695F656C707061;
      v11 = 0xED000064695F6D65;
      switch(a1)
      {
        case 1:
          v11 = 0xEA00000000007365;
          if (v8 == 0x7475626972747461)
          {
            goto LABEL_67;
          }

          goto LABEL_68;
        case 2:
          v11 = 0x80000001006C39D0;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 3:
          v14 = 0x615F70756B636162;
          v15 = 1683976304;
          goto LABEL_52;
        case 4:
          v11 = 0xE900000000000064;
          if (v8 != 0x695F656C646E7562)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 5:
          v14 = 0x6D5F646568636163;
          v15 = 1684108389;
LABEL_52:
          v11 = v15 | 0xEF61746100000000;
          if (v8 != v14)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 6:
          v12 = 0x72616C756C6C6563;
          v13 = 0x63696C6F705FLL;
          goto LABEL_59;
        case 7:
          v11 = 0x80000001006C3A20;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 8:
          v10 = 0x746172616C636564;
          v11 = 0xEE0064695F6E6F69;
          goto LABEL_66;
        case 9:
          v12 = 0x746172616C636564;
          v13 = 0x656B5F6E6F69;
LABEL_59:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEF79000000000000;
          if (v8 != v12)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 10:
          v16 = 0x5F6C6C6174736E69;
          v17 = 0x676E696D6974;
          goto LABEL_63;
        case 11:
          v11 = 0x80000001006C3A70;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 12:
          v11 = 0xEA0000000000656CLL;
          if (v8 != 0x62697369765F7369)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 13:
          v11 = 0xE700000000000000;
          if (v8 != 0x65736E6563696CLL)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 14:
          v11 = 0x80000001006C3AA0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 15:
          v11 = 0xEC0000006C72755FLL;
          if (v8 != 0x74736566696E616DLL)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 16:
          v11 = 0xE400000000000000;
          if (v8 != 1701667182)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 17:
          v11 = 0xE700000000000000;
          if (v8 != 0x616E6F73726570)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 18:
          v16 = 0x765F64656E6E6970;
          v17 = 0x6E6F69737265;
LABEL_63:
          v11 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v16)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 19:
          v11 = 0xE800000000000000;
          if (v8 != 0x6D726F6674616C70)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 20:
          v11 = 0xEF646F6874656D5FLL;
          if (v8 != 0x6573616863727570)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        case 21:
          v11 = 0xEB00000000656D61;
          if (v8 != 0x6E5F726F646E6576)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        default:
LABEL_66:
          if (v8 != v10)
          {
            goto LABEL_68;
          }

LABEL_67:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_68:
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_100524AA0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x695F656C646E7562;
          v8 = 0xE900000000000064;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x5F65736E6563696CLL;
          v8 = 0xEA00000000006469;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xEF64695F63696C62;
            if (v7 != 0x75705F7465737361)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0x75705F7465737361;
        v8 = 0xEF64695F63696C62;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x695F656C646E7562;
      }

      else
      {
        v10 = 0x5F65736E6563696CLL;
      }

      if (v9 == 1)
      {
        v11 = 0xE900000000000064;
      }

      else
      {
        v11 = 0xEA00000000006469;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100524C58(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xEA00000000006469;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v10 = 0x695F656C646E7562;
        }

        else
        {
          v10 = 0x765F656C646E7562;
        }

        if (v7 == 2)
        {
          v11 = 0xE900000000000064;
        }

        else
        {
          v11 = 0xEE006E6F69737265;
        }

        if (*(*(v27 + 48) + v4))
        {
          v12 = 0x726168735F707061;
        }

        else
        {
          v12 = 0x5F746E756F636361;
        }

        if (v7)
        {
          v13 = 0xED00006C72755F65;
        }

        else
        {
          v13 = 0xEA00000000006469;
        }

        if (v7 <= 1)
        {
          v9 = v12;
        }

        else
        {
          v9 = v10;
        }

        if (v7 <= 1)
        {
          v8 = v13;
        }

        else
        {
          v8 = v11;
        }
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        if (v7 == 4)
        {
          v9 = 0x6C72755F706461;
        }

        else
        {
          v9 = 0xD00000000000001ALL;
        }

        if (v7 == 4)
        {
          v8 = 0xE700000000000000;
        }

        else
        {
          v8 = 0x80000001006C2BB0;
        }
      }

      else if (v7 == 6)
      {
        v9 = 0xD000000000000014;
        v8 = 0x80000001006C3EA0;
      }

      else if (v7 == 7)
      {
        v8 = 0xE700000000000000;
        v9 = 0x64695F6D657469;
      }

      else
      {
        v9 = 0x5F6E6F6973726576;
        v8 = 0xEA00000000006469;
      }

      v14 = 0x5F6E6F6973726576;
      if (v6 == 7)
      {
        v14 = 0x64695F6D657469;
        v15 = 0xE700000000000000;
      }

      else
      {
        v15 = 0xEA00000000006469;
      }

      if (v6 == 6)
      {
        v14 = 0xD000000000000014;
        v15 = 0x80000001006C3EA0;
      }

      v16 = 0xD00000000000001ALL;
      if (v6 == 4)
      {
        v16 = 0x6C72755F706461;
      }

      v17 = 0x80000001006C2BB0;
      if (v6 == 4)
      {
        v17 = 0xE700000000000000;
      }

      if (v6 <= 5)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v6 == 2)
      {
        v18 = 0x695F656C646E7562;
      }

      else
      {
        v18 = 0x765F656C646E7562;
      }

      if (v6 == 2)
      {
        v19 = 0xE900000000000064;
      }

      else
      {
        v19 = 0xEE006E6F69737265;
      }

      if (v6)
      {
        v20 = 0x726168735F707061;
      }

      else
      {
        v20 = 0x5F746E756F636361;
      }

      if (v6)
      {
        v5 = 0xED00006C72755F65;
      }

      if (v6 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v6 <= 3 ? v18 : v14;
      v22 = v6 <= 3 ? v19 : v15;
      if (v9 == v21 && v8 == v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      v5 = 0xEA00000000006469;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_100524F74(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v15 = ~v3;
    v16 = a1;
    v5 = 0xE700000000000000;
    while (1)
    {
      v6 = *(*(v17 + 48) + v4);
      if (v6 <= 1)
      {
        if (*(*(v17 + 48) + v4))
        {
          v8 = 0xEF79656B5F6E6F69;
        }

        else
        {
          v8 = 0xEE0064695F6E6F69;
        }

        v7 = 0x746172616C636564;
      }

      else if (v6 == 2)
      {
        v8 = 0xE500000000000000;
        v7 = 0x6574617473;
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x735F657461647075;
        }

        else
        {
          v7 = 0x736E6F73616572;
        }

        if (v6 == 3)
        {
          v8 = 0xEC00000065746174;
        }

        else
        {
          v8 = 0xE700000000000000;
        }
      }

      if (v16 == 3)
      {
        v9 = 0x735F657461647075;
      }

      else
      {
        v9 = 0x736E6F73616572;
      }

      if (v16 == 3)
      {
        v5 = 0xEC00000065746174;
      }

      if (v16 == 2)
      {
        v9 = 0x6574617473;
        v5 = 0xE500000000000000;
      }

      v10 = v16 ? 0xEF79656B5F6E6F69 : 0xEE0064695F6E6F69;
      v11 = v16 <= 1 ? 0x746172616C636564 : v9;
      v12 = v16 <= 1 ? v10 : v5;
      if (v7 == v11 && v8 == v12)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        v4 = (v4 + 1) & v15;
        v5 = 0xE700000000000000;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100525168(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v19 + 48) + v4);
      if (v6 <= 1)
      {
        v7 = *(*(v19 + 48) + v4) ? 0xD000000000000011 : 0x7562697274736964;
        v8 = *(*(v19 + 48) + v4) ? 0x80000001006C3E30 : 0xEE0064695F726F74;
      }

      else if (v6 == 2)
      {
        v7 = 0xD000000000000010;
        v8 = 0x80000001006C3E50;
      }

      else
      {
        v7 = v6 == 3 ? 0xD000000000000010 : 7107189;
        v8 = v6 == 3 ? 0x80000001006C3E70 : 0xE300000000000000;
      }

      if (v5 == 3)
      {
        v9 = 0xD000000000000010;
      }

      else
      {
        v9 = 7107189;
      }

      if (v5 == 3)
      {
        v10 = 0x80000001006C3E70;
      }

      else
      {
        v10 = 0xE300000000000000;
      }

      if (v5 == 2)
      {
        v9 = 0xD000000000000010;
        v10 = 0x80000001006C3E50;
      }

      v11 = v5 ? 0xD000000000000011 : 0x7562697274736964;
      v12 = v5 ? 0x80000001006C3E30 : 0xEE0064695F726F74;
      v13 = v5 <= 1 ? v11 : v9;
      v14 = v5 <= 1 ? v12 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100525354(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x696669746E656469;
          v8 = 0xEA00000000007265;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE700000000000000;
          v7 = 0x6E6F6973726576;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v7 != 1701869940)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE400000000000000;
        v7 = 1701869940;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x696669746E656469;
      }

      else
      {
        v10 = 0x6E6F6973726576;
      }

      if (v9 == 1)
      {
        v11 = 0xEA00000000007265;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1005254DC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = v6 == 2 ? 0x6F7674656C707061 : 0x736F6E6F69736976;
      v8 = v6 == 2 ? 0xE900000000000073 : 0xE800000000000000;
      v9 = *(*(v2 + 48) + v4) ? 7565161 : 7893871;
      v10 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v11 = *(*(v2 + 48) + v4) <= 1u ? 0xE300000000000000 : v8;
      v12 = v5 == 2 ? 0x6F7674656C707061 : 0x736F6E6F69736976;
      v13 = v5 == 2 ? 0xE900000000000073 : 0xE800000000000000;
      v14 = v5 ? 7565161 : 7893871;
      v15 = v5 <= 1 ? v14 : v12;
      v16 = v5 <= 1 ? 0xE300000000000000 : v13;
      if (v10 == v15 && v11 == v16)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100525680(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE300000000000000;
      v8 = 6513005;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x5F6F725064617069;
          v7 = 0xEC00000038313032;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x6F725064617069;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x31315F64617069;
          break;
        case 4:
          v8 = 0x5F30315F64617069;
          v7 = 0xE900000000000035;
          break;
        case 5:
          v7 = 0xE400000000000000;
          v8 = 1684107369;
          break;
        case 6:
          v7 = 0xE600000000000000;
          v8 = 0x656E6F687069;
          break;
        case 7:
          v7 = 0xE700000000000000;
          v8 = 0x35656E6F687069;
          break;
        case 8:
          v7 = 0xE700000000000000;
          v8 = 0x36656E6F687069;
          break;
        case 9:
          v7 = 0xE800000000000000;
          v8 = 0x2B36656E6F687069;
          break;
        case 0xA:
          v7 = 0xEA0000000000385FLL;
          v8 = 0x355F656E6F687069;
          break;
        case 0xB:
          v7 = 0xEA0000000000355FLL;
          v8 = 0x365F656E6F687069;
          break;
        case 0xC:
          v8 = 0x645F656E6F687069;
          v7 = 0xEA00000000003337;
          break;
        case 0xD:
          v7 = 0xEA00000000003437;
          v8 = 0x645F656E6F687069;
          break;
        case 0xE:
          v8 = 0x746157656C707061;
          v7 = 0xEA00000000006863;
          break;
        case 0xF:
          v8 = 0x746157656C707061;
          v7 = 0xEF383130325F6863;
          break;
        case 0x10:
          v7 = 0xE700000000000000;
          v8 = 0x5654656C707061;
          break;
        case 0x11:
          v8 = 0x746157656C707061;
          v7 = 0xEF313230325F6863;
          break;
        case 0x12:
          v8 = 0x746157656C707061;
          v7 = 0xEF323230325F6863;
          break;
        default:
          break;
      }

      v9 = 0xE300000000000000;
      v10 = 6513005;
      switch(a1)
      {
        case 1:
          v9 = 0xEC00000038313032;
          if (v8 == 0x5F6F725064617069)
          {
            goto LABEL_57;
          }

          goto LABEL_58;
        case 2:
          v9 = 0xE700000000000000;
          if (v8 != 0x6F725064617069)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 3:
          v9 = 0xE700000000000000;
          if (v8 != 0x31315F64617069)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 4:
          v9 = 0xE900000000000035;
          if (v8 != 0x5F30315F64617069)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 5:
          v9 = 0xE400000000000000;
          if (v8 != 1684107369)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 6:
          v9 = 0xE600000000000000;
          if (v8 != 0x656E6F687069)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 7:
          v9 = 0xE700000000000000;
          if (v8 != 0x35656E6F687069)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 8:
          v9 = 0xE700000000000000;
          if (v8 != 0x36656E6F687069)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 9:
          v9 = 0xE800000000000000;
          if (v8 != 0x2B36656E6F687069)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 10:
          v9 = 0xEA0000000000385FLL;
          v10 = 0x355F656E6F687069;
          goto LABEL_56;
        case 11:
          v9 = 0xEA0000000000355FLL;
          if (v8 != 0x365F656E6F687069)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 12:
          v11 = 0x645F656E6F687069;
          v12 = 13111;
          goto LABEL_33;
        case 13:
          v9 = 0xEA00000000003437;
          if (v8 != 0x645F656E6F687069)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 14:
          v11 = 0x746157656C707061;
          v12 = 26723;
LABEL_33:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
          if (v8 != v11)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 15:
          v9 = 0xEF383130325F6863;
          if (v8 != 0x746157656C707061)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 16:
          v9 = 0xE700000000000000;
          if (v8 != 0x5654656C707061)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 17:
          v9 = 0xEF313230325F6863;
          if (v8 != 0x746157656C707061)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        case 18:
          v9 = 0xEF323230325F6863;
          if (v8 != 0x746157656C707061)
          {
            goto LABEL_58;
          }

          goto LABEL_57;
        default:
LABEL_56:
          if (v8 != v10)
          {
            goto LABEL_58;
          }

LABEL_57:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_58:
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_100525BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      sub_1001DFDA4(*v8, v10, v11);
      v12 = static StoreAppIdentifier.== infix(_:_:)();
      sub_1001DFEBC(v9, v10, v11);
      if (v12)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100525CB4(_OWORD *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = (*(v2 + 48) + 48 * v4);
      v9 = v7[1];
      v8 = v7[2];
      *v18.val = *v7;
      *&v18.val[4] = v9;
      v19 = v8;
      sub_1002FAF54(&v18, &v17);
      v17 = v18;
      v10 = audit_token_to_pid(&v17);
      v17 = v18;
      v11 = audit_token_to_pidversion(&v17);
      v12 = a1[1];
      *v17.val = *a1;
      *&v17.val[4] = v12;
      v13 = audit_token_to_pid(&v17);
      v14 = a1[1];
      *v17.val = *a1;
      *&v17.val[4] = v14;
      v15 = audit_token_to_pidversion(&v17);
      sub_1002FAFB0(&v18);
      if (v10 == v13 && v11 == v15)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100525DE8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100525E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_10052B8C0(v23, v24);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_100525FF4(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v27 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v30 = a1[1];
    v31 = *a1;
    v25 = *(v2 + 48);
    do
    {
      v6 = v25 + 104 * v4;
      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      v9 = *(v6 + 32);
      v10 = *(v6 + 40);
      v11 = *(v6 + 48);
      v12 = *(v6 + 56);
      v14 = *(v6 + 64);
      v13 = *(v6 + 72);
      v28 = *(v6 + 80);
      v29 = *(v6 + 88);
      v26 = *(v6 + 96);
      v15 = *v6 == v31 && *(v6 + 8) == v30;
      if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v16 = v8 == a1[2] && v7 == a1[3];
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v17 = v9 == a1[4] && v10 == a1[5];
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v18 = *(a1 + 56);
      if (v12)
      {
        if (!*(a1 + 56))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v11 != a1[6])
        {
          v18 = 1;
        }

        if (v18)
        {
          goto LABEL_4;
        }
      }

      v19 = a1[9];
      if (v13)
      {
        if (!v19)
        {
          goto LABEL_4;
        }

        v20 = v14 == a1[8] && v13 == v19;
        if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v19)
      {
        goto LABEL_4;
      }

      v21 = a1[11];
      if (v29)
      {
        if (v21)
        {
          v22 = v28 == a1[10] && v29 == v21;
          if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
LABEL_3:
            if (v26 == (a1[12] & 1))
            {
              return v4;
            }
          }
        }
      }

      else if (!v21)
      {
        goto LABEL_3;
      }

LABEL_4:
      v4 = (v4 + 1) & v24;
    }

    while (((*(v27 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100526200(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_100526304(char *a1, int64_t a2, char a3)
{
  result = sub_100526980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100526324(char *a1, int64_t a2, char a3)
{
  result = sub_100526A8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100526344(size_t a1, int64_t a2, char a3)
{
  result = sub_1005277A0(a1, a2, a3, *v3, &qword_1007815B0, &unk_1006A3F70, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

char *sub_100526388(char *a1, int64_t a2, char a3)
{
  result = sub_100526B98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1005263A8(size_t a1, int64_t a2, char a3)
{
  result = sub_1005277A0(a1, a2, a3, *v3, &qword_1007814A0, &unk_1006A3E30, &type metadata accessor for AppLibrary.ExceptionRequest);
  *v3 = result;
  return result;
}

char *sub_1005263EC(char *a1, int64_t a2, char a3)
{
  result = sub_100526CC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10052640C(void *a1, int64_t a2, char a3)
{
  result = sub_100526DD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10052642C(size_t a1, int64_t a2, char a3)
{
  result = sub_1005277A0(a1, a2, a3, *v3, &qword_100786F50, &unk_1006B2168, type metadata accessor for RegisteredXPCClient);
  *v3 = result;
  return result;
}

void *sub_100526470(void *a1, int64_t a2, char a3)
{
  result = sub_100526F2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100526490(void *a1, int64_t a2, char a3)
{
  result = sub_100527074(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1005264B0(char *a1, int64_t a2, char a3)
{
  result = sub_100527588(a1, a2, a3, *v3, &qword_100786EE0);
  *v3 = result;
  return result;
}

void *sub_1005264E0(void *a1, int64_t a2, char a3)
{
  result = sub_1005271BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100526500(char *a1, int64_t a2, char a3)
{
  result = sub_100527C00(a1, a2, a3, *v3, &qword_100786F70);
  *v3 = result;
  return result;
}

size_t sub_100526530(size_t a1, int64_t a2, char a3)
{
  result = sub_1005277A0(a1, a2, a3, *v3, &unk_100787010, &unk_1006B2270, type metadata accessor for DDMDeclaration);
  *v3 = result;
  return result;
}

size_t sub_100526574(size_t a1, int64_t a2, char a3)
{
  result = sub_1005277A0(a1, a2, a3, *v3, &qword_100786FE8, &unk_1006B2258, &type metadata accessor for ManagedApp.Artwork);
  *v3 = result;
  return result;
}

size_t sub_1005265B8(size_t a1, int64_t a2, char a3)
{
  result = sub_1005277A0(a1, a2, a3, *v3, &qword_100786FF8, &unk_1006B2268, &type metadata accessor for Locale.Language);
  *v3 = result;
  return result;
}

size_t sub_1005265FC(size_t a1, int64_t a2, char a3)
{
  result = sub_100527F3C(a1, a2, a3, *v3, &unk_100787000, &unk_1006A3EA0, &qword_100780EB0);
  *v3 = result;
  return result;
}

char *sub_10052663C(char *a1, int64_t a2, char a3)
{
  result = sub_100527C00(a1, a2, a3, *v3, &qword_100786F68);
  *v3 = result;
  return result;
}

void *sub_10052666C(void *a1, int64_t a2, char a3)
{
  result = sub_10052730C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10052668C(void *a1, int64_t a2, char a3)
{
  result = sub_100527454(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1005266AC(char *a1, int64_t a2, char a3)
{
  result = sub_100527588(a1, a2, a3, *v3, &qword_100781460);
  *v3 = result;
  return result;
}

char *sub_1005266DC(char *a1, int64_t a2, char a3)
{
  result = sub_100527684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1005266FC(char *a1, int64_t a2, char a3)
{
  result = sub_100527C00(a1, a2, a3, *v3, &unk_100787060);
  *v3 = result;
  return result;
}

size_t sub_10052672C(size_t a1, int64_t a2, char a3)
{
  result = sub_1005277A0(a1, a2, a3, *v3, &qword_1007870F8, &unk_1006B2348, type metadata accessor for DDMDeclarationStatus);
  *v3 = result;
  return result;
}

char *sub_100526770(char *a1, int64_t a2, char a3)
{
  result = sub_100527C00(a1, a2, a3, *v3, &qword_1007870F0);
  *v3 = result;
  return result;
}

char *sub_1005267A0(char *a1, int64_t a2, char a3)
{
  result = sub_100527C00(a1, a2, a3, *v3, &qword_10077EF80);
  *v3 = result;
  return result;
}

char *sub_1005267D0(char *a1, int64_t a2, char a3)
{
  result = sub_100527C00(a1, a2, a3, *v3, &qword_100787040);
  *v3 = result;
  return result;
}

void *sub_100526800(void *a1, int64_t a2, char a3)
{
  result = sub_10052797C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100526820(void *a1, int64_t a2, char a3)
{
  result = sub_100527AB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100526840(char *a1, int64_t a2, char a3)
{
  result = sub_100527C00(a1, a2, a3, *v3, &qword_100787108);
  *v3 = result;
  return result;
}

char *sub_100526870(char *a1, int64_t a2, char a3)
{
  result = sub_100527C00(a1, a2, a3, *v3, &qword_100787100);
  *v3 = result;
  return result;
}

char *sub_1005268A0(char *a1, int64_t a2, char a3)
{
  result = sub_100527CEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1005268C0(void *a1, int64_t a2, char a3)
{
  result = sub_100527E14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1005268E0(size_t a1, int64_t a2, char a3)
{
  result = sub_100527F3C(a1, a2, a3, *v3, &qword_1007814F8, &unk_1006A3E90, &qword_100786FD0);
  *v3 = result;
  return result;
}

char *sub_100526920(char *a1, int64_t a2, char a3)
{
  result = sub_100528124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100526940(char *a1, int64_t a2, char a3)
{
  result = sub_100528230(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100526960(char *a1, int64_t a2, char a3)
{
  result = sub_10052833C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100526980(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&qword_100784460);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100526A8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&qword_100786E88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100526B98(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&unk_100786F28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100526CC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&unk_100784380);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100526DD0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&unk_100786F90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F0C48(&unk_10077FA80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100526F2C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&qword_100786F58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F0C48(&qword_100786F60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100527074(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&qword_100786EE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F0C48(&qword_100786EF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1005271BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&qword_100781440);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F0C48(&qword_100781448);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10052730C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&unk_100786ED0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F0C48(&qword_10077F5F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100527454(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&qword_1007870B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F0C48(&qword_1007870C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100527588(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1001F0C48(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_100527684(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&qword_100787080);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1005277A0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001F0C48(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10052797C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&qword_100786EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F0C48(&qword_100786EB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100527AB0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&qword_100786EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F0C48(&qword_100786EC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100527C00(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1001F0C48(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_100527CEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&unk_100787180);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100527E14(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&unk_100786FC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AMSMediaTaskPlatform(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100527F3C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001F0C48(a5);
  v14 = *(sub_1001F0C48(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_1001F0C48(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100528124(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&qword_100786E60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100528230(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&qword_1007813F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10052833C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001F0C48(&qword_100787088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100528460()
{
  v1 = *(type metadata accessor for URLRequest() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);

  return sub_100431264(v0 + v2, v5, v7, v8, v6);
}

unint64_t sub_100528510()
{
  result = qword_100780410;
  if (!qword_100780410)
  {
    sub_1001F76D0(&qword_100780408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780410);
  }

  return result;
}

unint64_t sub_100528574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1001F0C48(&unk_100786E90);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v16 = *(a1 + 32);
  result = sub_1005221B4(*(a1 + 32));
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v15 = v5;
    return v3;
  }

  v7 = (a1 + 48);
  v8 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v9 = *(&v16 + 1);
    *(v3[6] + 8 * result) = v16;
    *(v3[7] + 8 * result) = *(&v16 + 1);
    v10 = v3[2];
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v5 = *(&v16 + 1);
    v3[2] = v11;
    if (!v8)
    {
      goto LABEL_8;
    }

    v12 = *v7++;
    v16 = v12;
    v13 = v9;
    result = sub_1005221B4(v12);
    --v8;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100528684(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&unk_100786F18);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005934(v4, &v13, &unk_10077F9B0);
      v5 = v13;
      v6 = v14;
      result = sub_10052213C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1001F6498(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1005287B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100786E68);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10052213C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1005288C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&unk_100786E50);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10052213C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1005289DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&unk_100786E70);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005934(v4, &v11, &qword_100781720);
      v5 = v11;
      result = sub_10052221C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1001F6498(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100528B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100786FB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_1005222D0(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100528C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100786EA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005934(v4, v13, &qword_100781448);
      result = sub_1005223D0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1001F6498(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100528D60(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1001F0C48(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_10052213C(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100528E5C(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_100786FA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F0C48(&qword_100786FA8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005934(v9, v5, &qword_100786FA0);
      result = sub_1005225DC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for ProgressCache.Progress();
      result = sub_10052B908(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for ProgressCache.Progress);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100529078(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100786F08);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005934(v4, v14, &qword_100786F10);
      v5 = v14[0];
      result = sub_100522D64(v14[0], sub_100234CBC, sub_100523920);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v17;
      v8[1] = v16;
      v8[2] = v10;
      *v8 = v9;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1005291D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100786EF8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005934(v4, v14, &qword_100786F00);
      v5 = v14[0];
      result = sub_100522D64(v14[0], sub_1005AF1B0, sub_100523A24);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v17;
      v8[1] = v16;
      v8[2] = v10;
      *v8 = v9;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100529338(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&unk_100787030);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005934(v4, v14, &qword_100785B70);
      v5 = v14[0];
      result = sub_1005226DC(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v17;
      v8[1] = v16;
      v8[2] = v10;
      *v8 = v9;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100529470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_1007870A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005934(v4, v14, &qword_1007870B0);
      v5 = v14[0];
      result = sub_100522720(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v17;
      v8[1] = v16;
      v8[2] = v10;
      *v8 = v9;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1005295A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&unk_100787020);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005934(v4, v14, &qword_100785B10);
      v5 = v14[0];
      result = sub_100522D64(v14[0], sub_1004DC6A8, sub_1005243CC);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v17;
      v8[1] = v16;
      v8[2] = v10;
      *v8 = v9;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100529708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&unk_100787170);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005934(v4, v14, &qword_100785E88);
      v5 = v14[0];
      result = sub_100522820(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v17;
      v8[1] = v16;
      v8[2] = v10;
      *v8 = v9;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100529840(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100787048);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005934(v4, v14, &unk_100787050);
      v5 = v14[0];
      result = sub_1005228FC(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v17;
      v8[1] = v16;
      v8[2] = v10;
      *v8 = v9;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100529978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100786FD8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005934(v4, v14, &qword_100786FE0);
      v5 = v14[0];
      result = sub_100522968(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v17;
      v8[1] = v16;
      v8[2] = v10;
      *v8 = v9;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100529ADC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return sub_100529AB0(v0);
}

unint64_t sub_100529B48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100786F78);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005934(v4, v13, &unk_100786F80);
      result = sub_100529ADC();
      if (v6)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v7 = (*(v3 + 56) + 48 * result);
      v8 = v13[0];
      v9 = v13[2];
      v7[1] = v13[1];
      v7[2] = v9;
      *v7 = v8;
      v10 = *(v3 + 16);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100529C60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100786F40);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005934(v4, v14, &qword_100786F48);
      v5 = v14[0];
      result = sub_100522A7C(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v17;
      v8[1] = v16;
      v8[2] = v10;
      *v8 = v9;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100529D98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_1007870E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005934(v4, v14, &qword_1007870E8);
      v5 = v14[0];
      result = sub_100522B94(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v17;
      v8[1] = v16;
      v8[2] = v10;
      *v8 = v9;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100529ED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100787120);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10052213C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100529FD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100786FF0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_100522D64(v5, sub_100379B9C, sub_100525680);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10052A0F0(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_100787070);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F0C48(&qword_100787078);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005934(v9, v5, &qword_100787070);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10052213C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Date();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10052A2DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100786EA8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_10052221C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_10052A3D4(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t sub_10052A418()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1001F0E54;

  return sub_100520860(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_10052A4EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_100350320(a1, v4);
}

uint64_t sub_10052A5A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001F0E54;

  return sub_100350320(a1, v4);
}

unint64_t sub_10052A65C(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_100784428);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F0C48(&qword_1007870A0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005934(v9, v5, &qword_100784428);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10052213C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Restore();
      result = sub_10052B908(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Restore);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10052A844(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_100787158);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v28 - v4);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1001F0C48(&qword_100787160);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v8 = *(v2 + 48);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = *(v3 + 72);

  sub_100005934(a1 + v9, v5, &qword_100787158);
  v11 = v5[1];
  v28 = *v5;
  v29 = v11;
  v30 = v5[2];
  v12 = sub_100522E8C(&v28);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v14 = v12;
  v15 = type metadata accessor for RegisteredXPCClient();
  v16 = v14;
  v17 = *(*(v15 - 8) + 72);
  v18 = a1 + v10 + v9;
  while (1)
  {
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
    v19 = (v7[6] + 48 * v16);
    v20 = *v5;
    v21 = v5[2];
    v19[1] = v5[1];
    v19[2] = v21;
    *v19 = v20;
    result = sub_10052B908(v5 + v8, v7[7] + v17 * v16, type metadata accessor for RegisteredXPCClient);
    v23 = v7[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v7[2] = v25;
    if (!--v6)
    {
      goto LABEL_8;
    }

    sub_100005934(v18, v5, &qword_100787158);
    v26 = v5[1];
    v28 = *v5;
    v29 = v26;
    v30 = v5[2];
    v16 = sub_100522E8C(&v28);
    v18 += v10;
    if (v27)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10052AA94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_100787110);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 48)
    {
      sub_100005934(i, &v11, &qword_100787118);
      v5 = v11;
      result = sub_1001DA07C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1001DFDBC(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10052ABB4(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_100787148);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F0C48(&qword_100787150);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100005934(v9, v5, &qword_100787148);
      v11 = *v5;
      result = sub_1001DA07C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for AppInstallScheduler.ParkReason(0);
      result = sub_10052B908(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for AppInstallScheduler.ParkReason);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10052AD8C(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_100787138);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F0C48(&qword_100787140);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005934(v9, v5, &qword_100787138);
      result = sub_1005225DC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10052AF74(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_100787128);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F0C48(&qword_100787130);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005934(v9, v5, &qword_100787128);
      result = sub_1005225DC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10052B164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F0C48(&qword_1007870D8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_1005230C0(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10052B264(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_1007870C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001F0C48(&qword_1007870D0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100005934(v9, v5, &qword_1007870C8);
      result = sub_100523154(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MessageRegistration();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10052B44C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (csr_check() || ![objc_opt_self() ignoreServerTrustEvaluation])
  {
    v19 = *(a4 + 16);

    v19(a4, 1, 0);
  }

  else
  {
    v34 = [a2 protectionSpace];
    v12 = [v34 authenticationMethod];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v20 = [v34 serverTrust];
    if (!v20)
    {
LABEL_17:
      (*(a4 + 16))(a4, 1, 0);
      v32 = v34;

      return;
    }

    v21 = v20;
    static Logger.general.getter();
    v22 = a3;
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v21;
      *v26 = 138412546;
      v28 = *&v22[OBJC_IVAR____TtC28ManagedAppDistributionDaemonP33_7C6A6A5846008938E730A14DB607337C18SecureTaskDelegate_logKey];
      *(v26 + 4) = v28;
      *(v26 + 12) = 2114;
      *(v26 + 14) = v23;
      *v27 = v28;
      v27[1] = v23;
      v29 = v23;
      v30 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%@] Ignoring server trust for task: %{public}@", v26, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
      v21 = v33;
    }

    (*(v9 + 8))(v11, v8);
    v31 = [objc_allocWithZone(NSURLCredential) initWithTrust:v21];
    (*(a4 + 16))(a4, 0, v31);
  }
}

uint64_t sub_10052B800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigurationBag.UpdatesConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10052B864(uint64_t a1)
{
  v2 = type metadata accessor for ConfigurationBag.UpdatesConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10052B8C0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10052B908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10052B970(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_10052B9A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10052B9E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10052BA2C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_10052BA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_10052BB88, v7, v6);
}

uint64_t sub_10052BB88()
{
  sub_10053BBD0();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_10052BC14, 0, 0);
}

uint64_t sub_10052BC14()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  return _swift_task_switch(sub_10052BEA8, v3, v4);
}

uint64_t sub_10052BC94()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0xD000000000000016, 0x80000001006CAAE0, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = *(v0 + 24);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);

  return _swift_task_switch(sub_10052BEA8, v13, v14);
}

uint64_t sub_10052BEA8()
{
  v1 = v0[12];
  v2 = sub_100541AA4(sub_1005667D4, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003AF0AC, 0, 0);
  }

  else
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3 & 1);
  }
}

uint64_t sub_10052BF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_10052C0B4, v8, v7);
}

uint64_t sub_10052C0B4()
{
  sub_10053D048();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_10052C140, 0, 0);
}

uint64_t sub_10052C140()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  return _swift_task_switch(sub_10052C3D4, v3, v4);
}

uint64_t sub_10052C1C0()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  v12 = *(v0 + 32);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_10052C3D4, v13, v14);
}

uint64_t sub_10052C3D4()
{
  v1 = v0[13];
  sub_100542CC8(sub_1005646E4, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_10052C4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_10052C5DC, v8, v7);
}

uint64_t sub_10052C5DC()
{
  sub_10053BBD0();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_10052C668, 0, 0);
}

uint64_t sub_10052C668()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  return _swift_task_switch(sub_10052C8FC, v3, v4);
}

uint64_t sub_10052C6E8()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0xD000000000000016, 0x80000001006CAAE0, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  v12 = *(v0 + 32);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_10052C8FC, v13, v14);
}

uint64_t sub_10052C8FC()
{
  v1 = v0[13];
  sub_100541504(sub_100568304, v0[14]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_10052C9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_10052CB04, v8, v7);
}

uint64_t sub_10052CB04()
{
  sub_10053E5C8();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_10052C668, 0, 0);
}

uint64_t sub_10052CB90()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0xD000000000000015, 0x80000001006CAB20, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  v12 = *(v0 + 32);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_10052C8FC, v13, v14);
}

uint64_t sub_10052CDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_10052CEC4, v8, v7);
}

uint64_t sub_10052CEC4()
{
  sub_10053B1A4();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_10052CF50, 0, 0);
}

uint64_t sub_10052CF50()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  return _swift_task_switch(sub_10052D1D8, v3, v4);
}

uint64_t sub_10052CFD0()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(5063748, 0xE300000000000000, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  v12 = *(v0 + 32);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_10052D1D8, v13, v14);
}

uint64_t sub_10052D1D8()
{
  v1 = v0[13];
  sub_100542F50(sub_100568304, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_10052D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_10052D3E0, v8, v7);
}

uint64_t sub_10052D3E0()
{
  sub_10053B1A4();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_10052D46C, 0, 0);
}

uint64_t sub_10052D46C()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  return _swift_task_switch(sub_10052D6F4, v3, v4);
}

uint64_t sub_10052D4EC()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(5063748, 0xE300000000000000, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  v12 = *(v0 + 32);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_10052D6F4, v13, v14);
}

uint64_t sub_10052D6F4()
{
  v1 = v0[13];
  sub_100542700(sub_100568304, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_10052D7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_10052D8FC, v8, v7);
}

uint64_t sub_10052D8FC()
{
  sub_10053B1A4();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_10052C668, 0, 0);
}

uint64_t sub_10052D988()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(5063748, 0xE300000000000000, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  v12 = *(v0 + 32);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_10052C8FC, v13, v14);
}

uint64_t sub_10052DB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_10052DCB0, v7, v6);
}

uint64_t sub_10052DCB0()
{
  sub_10053B1A4();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_10052DD3C, 0, 0);
}

uint64_t sub_10052DD3C()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  return _swift_task_switch(sub_10052DFC4, v3, v4);
}

uint64_t sub_10052DDBC()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(5063748, 0xE300000000000000, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = *(v0 + 24);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);

  return _swift_task_switch(sub_10052DFC4, v13, v14);
}

uint64_t sub_10052DFC4()
{
  v1 = v0[12];
  v2 = sub_100541AA4(sub_1005683CC, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E8, 0, 0);
  }

  else
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3 & 1);
  }
}

uint64_t sub_10052E0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10052E174, 0, 0);
}

uint64_t sub_10052E174()
{
  *(v0 + 72) = **(v0 + 40);
  *(v0 + 120) = *(sub_1001F0C48(&qword_1007801B0) + 36);
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;

  return _swift_task_switch(sub_10052E250, v2, v1);
}

uint64_t sub_10052E250()
{
  sub_10053F004(*(v0 + 40) + *(v0 + 120));
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_10052E2E8, 0, 0);
}

uint64_t sub_10052E2E8()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);

  return _swift_task_switch(sub_10052E57C, v4, v5);
}

uint64_t sub_10052E368()
{
  v18 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0xD000000000000014, 0x80000001006CAB40, &v17);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = *(v0 + 40);
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  v13 = *(v0 + 24);
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);

  return _swift_task_switch(sub_10052E57C, v14, v15);
}

uint64_t sub_10052E57C()
{
  sub_100541504(sub_1005667F4, *(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10052E62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10052E6F0, 0, 0);
}

uint64_t sub_10052E6F0()
{
  *(v0 + 72) = **(v0 + 40);
  *(v0 + 120) = *(sub_1001F0C48(&qword_1007801B0) + 36);
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;

  return _swift_task_switch(sub_10052E7CC, v2, v1);
}

uint64_t sub_10052E7CC()
{
  sub_10053F004(*(v0 + 40) + *(v0 + 120));
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_10052E864, 0, 0);
}

uint64_t sub_10052E864()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);

  return _swift_task_switch(sub_10052EAF8, v4, v5);
}

uint64_t sub_10052E8E4()
{
  v18 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0xD000000000000014, 0x80000001006CAB40, &v17);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = *(v0 + 40);
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  v13 = *(v0 + 24);
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);

  return _swift_task_switch(sub_10052EAF8, v14, v15);
}

uint64_t sub_10052EAF8()
{
  sub_100543BB4(sub_1005667F4, v0[14], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10052EBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_10052ECC8, v8, v7);
}

uint64_t sub_10052ECC8()
{
  sub_10053C60C();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_10052C668, 0, 0);
}

uint64_t sub_10052ED54()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0xD000000000000011, 0x80000001006CAB00, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  v12 = *(v0 + 32);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_10052C8FC, v13, v14);
}

uint64_t sub_10052EF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_10052F088, v8, v7);
}

uint64_t sub_10052F088()
{
  sub_10053DB08();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_10052C668, 0, 0);
}

uint64_t sub_10052F114()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x74616470554D4444, 0xE900000000000065, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  v12 = *(v0 + 32);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_10052C8FC, v13, v14);
}

uint64_t sub_10052F328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_10052F448, v8, v7);
}

uint64_t sub_10052F448()
{
  sub_10053D048();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_10052C668, 0, 0);
}

uint64_t sub_10052F4D4()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  v12 = *(v0 + 32);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_10052C8FC, v13, v14);
}

uint64_t sub_10052F6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_10052F808, v8, v7);
}

uint64_t sub_10052F808()
{
  sub_100540550();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_10052F894, 0, 0);
}

uint64_t sub_10052F894()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  return _swift_task_switch(sub_10052FB30, v3, v4);
}

uint64_t sub_10052F914()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x7453657275636553, 0xED0000656761726FLL, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  v12 = *(v0 + 32);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_10052FB30, v13, v14);
}

uint64_t sub_10052FB30()
{
  v1 = v0[13];
  sub_100541504(sub_1005646E4, v0[14]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003AE050, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_10052FC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10052FCDC, 0, 0);
}

uint64_t sub_10052FCDC()
{
  *(v0 + 72) = **(v0 + 40);
  *(v0 + 120) = *(sub_1001F0C48(&qword_1007812A0) + 36);
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;

  return _swift_task_switch(sub_10052FDB8, v2, v1);
}

uint64_t sub_10052FDB8()
{
  sub_10053FA88(*(v0 + 40) + *(v0 + 120));
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_10052FE50, 0, 0);
}

uint64_t sub_10052FE50()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);

  return _swift_task_switch(sub_1005300EC, v4, v5);
}

uint64_t sub_10052FED0()
{
  v18 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x5365736E6563694CLL, 0xEE00656761726F74, &v17);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = *(v0 + 40);
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  v13 = *(v0 + 24);
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);

  return _swift_task_switch(sub_1005300EC, v14, v15);
}

uint64_t sub_1005300EC()
{
  sub_100541504(sub_100566A04, *(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10053019C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1005302BC, v8, v7);
}

uint64_t sub_1005302BC()
{
  sub_10053E5C8();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_100530348, 0, 0);
}

uint64_t sub_100530348()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  return _swift_task_switch(sub_1005305DC, v3, v4);
}

uint64_t sub_1005303C8()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0xD000000000000015, 0x80000001006CAB20, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  v12 = *(v0 + 32);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_1005305DC, v13, v14);
}

uint64_t sub_1005305DC()
{
  v1 = v0[13];
  sub_100545220(sub_1005646E4, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1005306C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100530788, 0, 0);
}

uint64_t sub_100530788()
{
  *(v0 + 64) = **(v0 + 32);
  *(v0 + 112) = *(sub_1001F0C48(&qword_1007801B0) + 36);
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;

  return _swift_task_switch(sub_100530864, v2, v1);
}

uint64_t sub_100530864()
{
  sub_10053F004(*(v0 + 32) + *(v0 + 112));
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1005308FC, 0, 0);
}

uint64_t sub_1005308FC()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);

  return _swift_task_switch(sub_100530B90, v4, v5);
}

uint64_t sub_10053097C()
{
  v18 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0xD000000000000014, 0x80000001006CAB40, &v17);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = *(v0 + 32);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  v13 = *(v0 + 16);
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = *(v0 + 72);
  v15 = *(v0 + 80);

  return _swift_task_switch(sub_100530B90, v14, v15);
}

uint64_t sub_100530B90()
{
  v1 = v0[12];
  v2 = sub_100541AA4(sub_1005667D4, v0[13]);

  if (v1)
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[1];

    return v5(v2 & 1);
  }
}

uint64_t sub_100530C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_100530D98, v7, v6);
}

uint64_t sub_100530D98()
{
  sub_10053D048();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_100530E24, 0, 0);
}

uint64_t sub_100530E24()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  return _swift_task_switch(sub_1005310B8, v3, v4);
}

uint64_t sub_100530EA4()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = *(v0 + 24);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);

  return _swift_task_switch(sub_1005310B8, v13, v14);
}

uint64_t sub_1005310B8()
{
  v1 = v0[12];
  v2 = sub_10054556C(sub_1005683CC, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E8, 0, 0);
  }

  else
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_1005311A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1005312C8, v8, v7);
}

uint64_t sub_1005312C8()
{
  sub_10053D048();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_100531354, 0, 0);
}

uint64_t sub_100531354()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  return _swift_task_switch(sub_1005315E8, v3, v4);
}

uint64_t sub_1005313D4()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  v12 = *(v0 + 32);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_1005315E8, v13, v14);
}

uint64_t sub_1005315E8()
{
  v1 = v0[13];
  sub_1005457D4(sub_100568304, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1005316D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1005317F0, v7, v6);
}

uint64_t sub_1005317F0()
{
  sub_10053D048();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_10052DD3C, 0, 0);
}

uint64_t sub_10053187C()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = *(v0 + 24);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);

  return _swift_task_switch(sub_10052DFC4, v13, v14);
}

uint64_t sub_100531A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_100531BB0, v7, v6);
}

uint64_t sub_100531BB0()
{
  sub_10053D048();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_100531C3C, 0, 0);
}

uint64_t sub_100531C3C()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  return _swift_task_switch(sub_100531ED0, v3, v4);
}

uint64_t sub_100531CBC()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = *(v0 + 24);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);

  return _swift_task_switch(sub_100531ED0, v13, v14);
}

uint64_t sub_100531ED0()
{
  v1 = v0[12];
  v2 = sub_100546780(sub_100567794, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003AF0AC, 0, 0);
  }

  else
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_100531FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1005320E0, v7, v6);
}

uint64_t sub_1005320E0()
{
  sub_10053D048();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_10053216C, 0, 0);
}

uint64_t sub_10053216C()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  return _swift_task_switch(sub_100532400, v3, v4);
}

uint64_t sub_1005321EC()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = *(v0 + 24);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);

  return _swift_task_switch(sub_100532400, v13, v14);
}

uint64_t sub_100532400()
{
  v1 = v0[12];
  v2 = sub_100547670(sub_1005667D4, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E8, 0, 0);
  }

  else
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_1005324F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_100562D1C(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_100532610, v8, v7);
}

uint64_t sub_100532610()
{
  sub_10053D048();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_10053269C, 0, 0);
}

uint64_t sub_10053269C()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = v0 + 16;
  *(v1 + 24) = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  return _swift_task_switch(sub_100532930, v3, v4);
}

uint64_t sub_10053271C()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  v12 = *(v0 + 32);
  *(v11 + 16) = v0 + 16;
  *(v11 + 24) = v12;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_100532930, v13, v14);
}

uint64_t sub_100532930()
{
  v1 = v0[13];
  sub_100547C24(sub_100568304, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_100532A18(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1005225DC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1005C4538();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_1005C0038(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_100532AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1005225DC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1005C47C4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ProgressCache.Progress();
    v20 = *(v13 - 8);
    sub_100566A40(v12 + *(v20 + 72) * v7, a2, type metadata accessor for ProgressCache.Progress);
    sub_1005C0358(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ProgressCache.Progress();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_100532C90(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100523154(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1005C7290();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for MessageRegistration();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1005C188C(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_100532D58(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100532EAC, v1, 0);
}

uint64_t sub_100532EAC()
{
  v1 = v0[7];
  v2 = *(v0[8] + 112);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_100532F8C;

  return sub_1003B0FF0(sub_100566D80, v3, v2);
}

uint64_t sub_100532F8C(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *v3;
  *(*v3 + 144) = a1;

  if (v2)
  {

    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v5 + 64);
    *(v5 + 152) = a2;

    return _swift_task_switch(sub_10053312C, v9, 0);
  }
}

uint64_t sub_10053312C()
{
  v31 = v0;
  if (*(v0 + 152))
  {
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);
    v3 = *(v0 + 72);
    v4 = *(v0 + 56);
    static Logger.install.getter();
    (*(v2 + 16))(v1, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    if (v7)
    {
      v29 = *(v0 + 96);
      v14 = swift_slowAlloc();
      v27 = v6;
      v15 = swift_slowAlloc();
      v30 = v15;
      *v14 = 136315138;
      sub_100562D1C(&qword_100789F60, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v8;
      v18 = v17;
      (*(v12 + 8))(v10, v13);
      v19 = sub_1002346CC(v16, v18, &v30);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v5, v27, "Cancellation failed, install %s not found", v14, 0xCu);
      sub_10000710C(v15);

      (*(v9 + 8))(v28, v29);
    }

    else
    {

      (*(v12 + 8))(v10, v13);
      (*(v9 + 8))(v8, v11);
    }
  }

  else
  {
    sub_10054F0E8(*(v0 + 144), v0 + 16);
    v20 = *(v0 + 40);
    if (v20)
    {
      v21 = *(v0 + 120);
      v22 = *sub_100006D8C((v0 + 16), v20);
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = v22;

      sub_1004A673C(0, 0, v21, &unk_1006B2960, v24);

      sub_10000710C(v0 + 16);
    }

    else
    {
      sub_1000032A8(v0 + 16, &qword_100787560);
    }
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100533460(uint64_t a1, void *a2)
{
  v3 = a1;
  result = sub_100535D5C(a1, a2, sub_100234CBC);
  if (!v5)
  {
    sub_100234CBC(v3);
    v6 = String._bridgeToObjectiveC()();

    v7 = [a2 valueForProperty:v6];

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100513858();
      swift_allocError();
      v9 = v8;
      sub_100006D8C(v14, v14[3]);
      swift_getDynamicType();
      v10 = _typeName(_:qualified:)();
      *v9 = 0x676E69727453;
      *(v9 + 8) = 0xE600000000000000;
      *(v9 + 16) = v10;
      *(v9 + 24) = v11;
      *(v9 + 40) = 2;
      swift_willThrow();
      return sub_10000710C(v14);
    }

    else
    {
      sub_100513858();
      swift_allocError();
      v13 = v12;
      *(v12 + 24) = &type metadata for AppInstallEntity.Property;
      *(v12 + 32) = sub_1002360B0();
      *v13 = v3;
      v13[40] = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1005335D8@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001F0C48(&unk_100780A00);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  sub_1005368D8(a2, sub_100234CBC, sub_100537564, &type metadata accessor for UUID, v20 - v7);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a3, v8, v9);
  }

  sub_1000032A8(v8, &unk_100780A00);
  sub_100234CBC(a1);
  v11 = String._bridgeToObjectiveC()();

  v12 = [a2 valueForProperty:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100513858();
    swift_allocError();
    v14 = v13;
    sub_100006D8C(v20, v20[3]);
    swift_getDynamicType();
    v15 = _typeName(_:qualified:)();
    *v14 = 1145656661;
    *(v14 + 8) = 0xE400000000000000;
    *(v14 + 16) = v15;
    *(v14 + 24) = v16;
    *(v14 + 40) = 2;
    swift_willThrow();
    return sub_10000710C(v20);
  }

  else
  {
    sub_100513858();
    swift_allocError();
    v19 = v18;
    *(v18 + 24) = &type metadata for AppInstallEntity.Property;
    *(v18 + 32) = sub_1002360B0();
    *v19 = a1;
    v19[40] = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100533870(char a1, void *a2)
{
  result = sub_100536C7C(a1, a2, sub_1004D9618, &type metadata for AppInstallPriority, &qword_1007873F0);
  if (result == 5)
  {
    v5 = result;
    sub_100234CBC(a1);
    v6 = String._bridgeToObjectiveC()();

    v7 = [a2 valueForProperty:v6];

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100513858();
      swift_allocError();
      v9 = v8;
      sub_100006D8C(v14, v14[3]);
      swift_getDynamicType();
      v10 = _typeName(_:qualified:)();
      *v9 = 0xD000000000000012;
      *(v9 + 8) = 0x80000001006CD330;
      *(v9 + 16) = v10;
      *(v9 + 24) = v11;
      *(v9 + 40) = 2;
      swift_willThrow();
      sub_10000710C(v14);
    }

    else
    {
      sub_100513858();
      swift_allocError();
      v13 = v12;
      *(v12 + 24) = &type metadata for AppInstallEntity.Property;
      *(v12 + 32) = sub_1002360B0();
      *v13 = a1;
      v13[40] = 1;
      swift_willThrow();
    }

    return v5;
  }

  return result;
}

uint64_t sub_100533A20(char a1, void *a2)
{
  result = sub_100535BE0(a1, a2);
  if (!result)
  {
    sub_100234CBC(a1);
    v5 = String._bridgeToObjectiveC()();

    v6 = [a2 valueForProperty:v5];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100513858();
      swift_allocError();
      v8 = v7;
      sub_100006D8C(v13, v13[3]);
      swift_getDynamicType();
      v9 = _typeName(_:qualified:)();
      *v8 = 0x79654B676F4CLL;
      *(v8 + 8) = 0xE600000000000000;
      *(v8 + 16) = v9;
      *(v8 + 24) = v10;
      *(v8 + 40) = 2;
      swift_willThrow();
      return sub_10000710C(v13);
    }

    else
    {
      sub_100513858();
      swift_allocError();
      v12 = v11;
      *(v11 + 24) = &type metadata for AppInstallEntity.Property;
      *(v11 + 32) = sub_1002360B0();
      *v12 = a1;
      v12[40] = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100533B84(char a1, void *a2)
{
  v4 = sub_100535A50(a1, a2);
  if (v4 != 2)
  {
    return v4 & 1;
  }

  sub_1005AF1B0(a1);
  v5 = String._bridgeToObjectiveC()();

  v6 = [a2 valueForProperty:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100513858();
    swift_allocError();
    v8 = v7;
    sub_100006D8C(v14, v14[3]);
    swift_getDynamicType();
    v9 = _typeName(_:qualified:)();
    *v8 = 0xD000000000000010;
    *(v8 + 8) = 0x80000001006CD350;
    *(v8 + 16) = v9;
    *(v8 + 24) = v10;
    *(v8 + 40) = 2;
    swift_willThrow();
    return sub_10000710C(v14);
  }

  else
  {
    sub_100513858();
    swift_allocError();
    v13 = v12;
    *(v12 + 24) = &type metadata for AppPackageEntity.Property;
    *(v12 + 32) = sub_10056688C();
    *v13 = a1;
    v13[40] = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100533D00(char a1, void *a2)
{
  result = sub_100536C7C(a1, a2, sub_1004D96C0, &type metadata for AppInstallSource, &qword_1007875F0);
  if (result == 5)
  {
    v5 = result;
    sub_100234CBC(a1);
    v6 = String._bridgeToObjectiveC()();

    v7 = [a2 valueForProperty:v6];

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100513858();
      swift_allocError();
      v9 = v8;
      sub_100006D8C(v14, v14[3]);
      swift_getDynamicType();
      v10 = _typeName(_:qualified:)();
      *v9 = 0xD000000000000010;
      *(v9 + 8) = 0x80000001006CD410;
      *(v9 + 16) = v10;
      *(v9 + 24) = v11;
      *(v9 + 40) = 2;
      swift_willThrow();
      sub_10000710C(v14);
    }

    else
    {
      sub_100513858();
      swift_allocError();
      v13 = v12;
      *(v12 + 24) = &type metadata for AppInstallEntity.Property;
      *(v12 + 32) = sub_1002360B0();
      *v13 = a1;
      v13[40] = 1;
      swift_willThrow();
    }

    return v5;
  }

  return result;
}

uint64_t sub_100533EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v8 = type metadata accessor for Logger();
  v4[8] = v8;
  v4[9] = *(v8 - 8);
  v4[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[11] = v9;
  *v9 = v4;
  v9[1] = sub_100533FF4;

  return sub_10054EA58(a1, a2, a3);
}

uint64_t sub_100533FF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 56);
  if (v1)
  {
    v6 = sub_100534464;
  }

  else
  {
    v6 = sub_100534154;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100534154()
{
  v26 = v0;
  v1 = v0[12];
  if (v1)
  {
    v0[3] = 0;
    v2 = [v1 pauseWithError:v0 + 3];

    v3 = v0[3];
    if (!v2)
    {
      v6 = v3;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.install.getter();

      swift_errorRetain();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      v9 = os_log_type_enabled(v7, v8);
      v11 = v0[9];
      v10 = v0[10];
      v12 = v0[8];
      if (v9)
      {
        v21 = v0[5];
        v22 = v0[6];
        v24 = v0[10];
        v13 = v0[4];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v14 = 136315650;
        v0[2] = v13;
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v12;
        v18 = sub_1002346CC(v16, v17, &v25);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2082;
        *(v14 + 14) = sub_1002346CC(v21, v22, &v25);
        *(v14 + 22) = 2114;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 24) = v19;
        *v15 = v19;
        _os_log_impl(&_mh_execute_header, v7, v8, "Error pausing coordinator for %s from %{public}s: %{public}@", v14, 0x20u);
        sub_1000032A8(v15, &qword_10077F920);

        swift_arrayDestroy();

        (*(v11 + 8))(v24, v23);
      }

      else
      {

        (*(v11 + 8))(v10, v12);
      }

      swift_willThrow();

      v5 = v0[1];
      goto LABEL_9;
    }

    v4 = v3;
  }

  v5 = v0[1];
LABEL_9:

  return v5();
}

uint64_t sub_100534464()
{
  v21 = v0;
  static Logger.install.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v18 = v0[8];
    v19 = v0[10];
    v16 = v0[5];
    v17 = v0[6];
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v5 = 136315650;
    v0[2] = v4;
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_1002346CC(v7, v8, &v20);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1002346CC(v16, v17, &v20);
    *(v5 + 22) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v10;
    *v6 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error pausing coordinator for %s from %{public}s: %{public}@", v5, 0x20u);
    sub_1000032A8(v6, &qword_10077F920);

    swift_arrayDestroy();

    (*(v3 + 8))(v19, v18);
  }

  else
  {
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];

    (*(v12 + 8))(v11, v13);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1005346F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v8 = type metadata accessor for Logger();
  v4[8] = v8;
  v4[9] = *(v8 - 8);
  v4[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[11] = v9;
  *v9 = v4;
  v9[1] = sub_100534838;

  return sub_10054EA58(a1, a2, a3);
}

uint64_t sub_100534838(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v5 = *(v3 + 56);
  if (v1)
  {
    v6 = sub_100534CA8;
  }

  else
  {
    v6 = sub_100534998;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100534998()
{
  v26 = v0;
  v1 = v0[12];
  if (v1)
  {
    v0[3] = 0;
    v2 = [v1 resumeWithError:v0 + 3];

    v3 = v0[3];
    if (!v2)
    {
      v6 = v3;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.install.getter();

      swift_errorRetain();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      v9 = os_log_type_enabled(v7, v8);
      v11 = v0[9];
      v10 = v0[10];
      v12 = v0[8];
      if (v9)
      {
        v21 = v0[5];
        v22 = v0[6];
        v24 = v0[10];
        v13 = v0[4];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v14 = 136315650;
        v0[2] = v13;
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v12;
        v18 = sub_1002346CC(v16, v17, &v25);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2082;
        *(v14 + 14) = sub_1002346CC(v21, v22, &v25);
        *(v14 + 22) = 2114;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 24) = v19;
        *v15 = v19;
        _os_log_impl(&_mh_execute_header, v7, v8, "Error resuming coordinator for %s from %{public}s: %{public}@", v14, 0x20u);
        sub_1000032A8(v15, &qword_10077F920);

        swift_arrayDestroy();

        (*(v11 + 8))(v24, v23);
      }

      else
      {

        (*(v11 + 8))(v10, v12);
      }

      swift_willThrow();

      v5 = v0[1];
      goto LABEL_9;
    }

    v4 = v3;
  }

  v5 = v0[1];
LABEL_9:

  return v5();
}

uint64_t sub_100534CA8()
{
  v21 = v0;
  static Logger.install.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v18 = v0[8];
    v19 = v0[10];
    v16 = v0[5];
    v17 = v0[6];
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v5 = 136315650;
    v0[2] = v4;
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_1002346CC(v7, v8, &v20);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1002346CC(v16, v17, &v20);
    *(v5 + 22) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v10;
    *v6 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error resuming coordinator for %s from %{public}s: %{public}@", v5, 0x20u);
    sub_1000032A8(v6, &qword_10077F920);

    swift_arrayDestroy();

    (*(v3 + 8))(v19, v18);
  }

  else
  {
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];

    (*(v12 + 8))(v11, v13);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_100534F38(void *a1)
{
  v3 = sub_1001F0C48(&qword_100783CA0);
  __chkstk_darwin(v3 - 8);
  v32 = &v30 - v4;
  v5 = type metadata accessor for DownloadRequest();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v31 = &v30 - v11;
  __chkstk_darwin(v10);
  v13 = (&v30 - v12);
  v14 = 0;
  v33 = v1;
  v15 = *v1;
  v16 = *(*v1 + 16);
  while (1)
  {
    v17 = v15[2];
    if (v16 == v14)
    {
      break;
    }

    if (v14 >= v17)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v15 = sub_10036428C(0, 1, 1, v15);
LABEL_13:
      v28 = v15[2];
      v27 = v15[3];
      if (v28 >= v27 >> 1)
      {
        v15 = sub_10036428C(v27 > 1, v28 + 1, 1, v15);
      }

      v15[2] = v28 + 1;
      result = sub_100566A40(v14, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v28, type metadata accessor for DownloadRequest);
      *v33 = v15;
      return result;
    }

    sub_100564730(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14++, v13, type metadata accessor for DownloadRequest);
    v18 = *v13;
    v19 = *a1;
    result = sub_100566034(v13, type metadata accessor for DownloadRequest);
    if (v18 == v19)
    {
      return result;
    }
  }

  if (!v17)
  {
    v14 = v31;
    sub_100564730(a1, v31, type metadata accessor for DownloadRequest);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  do
  {
    if (!v17)
    {
      v29 = v32;
      sub_100564730(a1, v32, type metadata accessor for DownloadRequest);
      v24 = 0;
      v25 = 0;
      v26 = v29;
      return sub_10041DD8C(v24, v25, v26);
    }

    if (v17 > v15[2])
    {
      goto LABEL_19;
    }

    --v17;
    sub_100564730(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v9, type metadata accessor for DownloadRequest);
    v21 = *(v5 + 40);
    v22 = (*(a1 + v21) - 2);
    v14 = v9[v21] - 2;
    result = sub_100566034(v9, type metadata accessor for DownloadRequest);
  }

  while (v22 >= v14);
  if (v15[2] >= (v17 + 1))
  {
    v23 = v32;
    sub_100564730(a1, v32, type metadata accessor for DownloadRequest);
    v24 = v17 + 1;
    v25 = v17 + 1;
    v26 = v23;
    return sub_10041DD8C(v24, v25, v26);
  }

  __break(1u);
  return result;
}

unint64_t sub_1005352E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DownloadRequest();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F0C48(&qword_100787670);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = *(v6 + 56);
  v19 = a2;
  v12(a2, 1, 1, v5);
  v13 = *v2;
  v21 = a1;
  result = sub_1003F9E84(sub_100568320, v20, v13);
  if (v15)
  {
    return sub_100534F38(a1);
  }

  v18 = a1;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v13 + 16))
  {
    v16 = result;
    sub_100564730(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * result, v11, type metadata accessor for DownloadRequest);
    v17 = v19;
    sub_1000032A8(v19, &qword_100787670);
    v12(v11, 0, 1, v5);
    sub_10020A668(v11, v17, &qword_100787670);
    sub_100669F8C(v16, v8);
    sub_100566034(v8, type metadata accessor for DownloadRequest);
    a1 = v18;
    return sub_100534F38(a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_100535530(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_100562D1C(&qword_100781FF8, &type metadata accessor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_100562D1C(&qword_100783AC0, &type metadata accessor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100535748@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a1 valueForProperty:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100005934(v12, &v10, &qword_100783A30);
  if (v11)
  {
    sub_1001F6498(&v10, v9);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100537820(v9, a2);

    sub_10000710C(v9);
    sub_1000032A8(v12, &qword_100783A30);
    v6 = type metadata accessor for Date();
    return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }

  else
  {
    sub_1000032A8(v12, &qword_100783A30);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_100535A50(char a1, void *a2)
{
  sub_1005AF1B0(a1);
  v3 = String._bridgeToObjectiveC()();

  v4 = [a2 valueForProperty:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_100005934(v11, &v9, &qword_100783A30);
  if (v10)
  {
    sub_1001F6498(&v9, v8);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v5 = JSONDecoder.init()();
    v6 = sub_10053A258(v8, v5, sub_1004EADAC, &type metadata for AppPackageFormat, &qword_100787408);

    sub_10000710C(v8);
    sub_1000032A8(v11, &qword_100783A30);
    return v6 & 1;
  }

  else
  {
    sub_1000032A8(v11, &qword_100783A30);
    return 2;
  }
}

uint64_t sub_100535BE0(char a1, void *a2)
{
  sub_100234CBC(a1);
  v3 = String._bridgeToObjectiveC()();

  v4 = [a2 valueForProperty:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_100005934(v10, &v8, &qword_100783A30);
  if (v9)
  {
    sub_1001F6498(&v8, v7);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v5 = sub_1005383F8(v7);

    sub_10000710C(v7);
    sub_1000032A8(v10, &qword_100783A30);
  }

  else
  {
    sub_1000032A8(v10, &qword_100783A30);
    return 0;
  }

  return v5;
}

uint64_t sub_100535D5C(uint64_t a1, void *a2, void (*a3)(void))
{
  a3();
  v4 = String._bridgeToObjectiveC()();

  v5 = [a2 valueForProperty:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_100005934(v11, &v9, &qword_100783A30);
  if (v10)
  {
    sub_1001F6498(&v9, v8);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v6 = sub_100538A30(v8);

    sub_10000710C(v8);
    sub_1000032A8(v11, &qword_100783A30);
  }

  else
  {
    sub_1000032A8(v11, &qword_100783A30);
    return 0;
  }

  return v6;
}

uint64_t sub_100535ED0(char a1, void *a2)
{
  sub_100234CBC(a1);
  v3 = String._bridgeToObjectiveC()();

  v4 = [a2 valueForProperty:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_100005934(v10, &v8, &qword_100783A30);
  if (v9)
  {
    sub_1001F6498(&v8, v7);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v5 = sub_100537498(v7);

    sub_10000710C(v7);
    sub_1000032A8(v10, &qword_100783A30);
  }

  else
  {
    sub_1000032A8(v10, &qword_100783A30);
    return 8;
  }

  return v5;
}

uint64_t sub_10053604C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a1 valueForProperty:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100005934(v12, &v10, &qword_100783A30);
  if (v11)
  {
    sub_1001F6498(&v10, v9);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10053AA1C(v9, a2);

    sub_10000710C(v9);
    sub_1000032A8(v12, &qword_100783A30);
    v6 = type metadata accessor for ManagedAppStatus.State();
    return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }

  else
  {
    sub_1000032A8(v12, &qword_100783A30);
    v8 = type metadata accessor for ManagedAppStatus.State();
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_1005362B8(uint64_t a1, void *a2)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = [a2 valueForProperty:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_100005934(v10, &v8, &qword_100783A30);
  if (v9)
  {
    sub_1001F6498(&v8, v7);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v5 = sub_10053A658(v7);

    sub_10000710C(v7);
    sub_1000032A8(v10, &qword_100783A30);
  }

  else
  {
    sub_1000032A8(v10, &qword_100783A30);
    return 0;
  }

  return v5;
}

uint64_t sub_1005364B8(uint64_t a1, void *a2)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = [a2 valueForProperty:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_100005934(v10, &v8, &qword_100783A30);
  if (v9)
  {
    sub_1001F6498(&v8, v7);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v5 = sub_100538A30(v7);

    sub_10000710C(v7);
    sub_1000032A8(v10, &qword_100783A30);
  }

  else
  {
    sub_1000032A8(v10, &qword_100783A30);
    return 0;
  }

  return v5;
}

uint64_t sub_1005366A4(uint64_t a1, void *a2, uint64_t (*a3)(_OWORD *, uint64_t))
{
  v5 = String._bridgeToObjectiveC()();

  v6 = [a2 valueForProperty:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_100005934(v13, &v11, &qword_100783A30);
  if (v12)
  {
    sub_1001F6498(&v11, v10);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v7 = JSONDecoder.init()();
    v8 = a3(v10, v7);

    sub_10000710C(v10);
    sub_1000032A8(v13, &qword_100783A30);
  }

  else
  {
    sub_1000032A8(v13, &qword_100783A30);
    return 0;
  }

  return v8;
}

uint64_t sub_1005368D8@<X0>(void *a1@<X1>, void (*a2)(void)@<X2>, void (*a3)(_OWORD *, uint64_t)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  a2();
  v9 = String._bridgeToObjectiveC()();

  v10 = [a1 valueForProperty:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  sub_100005934(v18, &v16, &qword_100783A30);
  if (v17)
  {
    sub_1001F6498(&v16, v15);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v11 = JSONDecoder.init()();
    a3(v15, v11);

    sub_10000710C(v15);
    sub_1000032A8(v18, &qword_100783A30);
    v12 = a4(0);
    return (*(*(v12 - 8) + 56))(a5, 0, 1, v12);
  }

  else
  {
    sub_1000032A8(v18, &qword_100783A30);
    v14 = a4(0);
    return (*(*(v14 - 8) + 56))(a5, 1, 1, v14);
  }
}

uint64_t sub_100536AC8(char a1, void *a2)
{
  sub_100234CBC(a1);
  v3 = String._bridgeToObjectiveC()();

  v4 = [a2 valueForProperty:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_100005934(v10, &v8, &qword_100783A30);
  if (v9)
  {
    sub_1001F6498(&v8, v7);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v5 = sub_100537ADC(v7);

    sub_10000710C(v7);
    sub_1000032A8(v10, &qword_100783A30);
  }

  else
  {
    sub_1000032A8(v10, &qword_100783A30);
    return 0;
  }

  return v5;
}

uint64_t sub_100536C7C(char a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t *a5)
{
  sub_100234CBC(a1);
  v9 = String._bridgeToObjectiveC()();

  v10 = [a2 valueForProperty:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  sub_100005934(v17, &v15, &qword_100783A30);
  if (v16)
  {
    sub_1001F6498(&v15, v14);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v11 = JSONDecoder.init()();
    v12 = sub_100537E44(v14, v11, a3, a4, a5);

    sub_10000710C(v14);
    sub_1000032A8(v17, &qword_100783A30);
  }

  else
  {
    sub_1000032A8(v17, &qword_100783A30);
    return 5;
  }

  return v12;
}

uint64_t sub_100536E40(char a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t *a5)
{
  sub_100234CBC(a1);
  v9 = String._bridgeToObjectiveC()();

  v10 = [a2 valueForProperty:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  sub_100005934(v17, &v15, &qword_100783A30);
  if (v16)
  {
    sub_1001F6498(&v15, v14);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v11 = JSONDecoder.init()();
    v12 = sub_100538938(v14, v11, a3, a4, a5);

    sub_10000710C(v14);
    sub_1000032A8(v17, &qword_100783A30);
  }

  else
  {
    sub_1000032A8(v17, &qword_100783A30);
    return 0;
  }

  return v12;
}

uint64_t sub_100537034(char a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t *a5)
{
  sub_100234CBC(a1);
  v9 = String._bridgeToObjectiveC()();

  v10 = [a2 valueForProperty:v9];

  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v17, 0, sizeof(v17));
  }

  sub_100005934(v17, &v15, &qword_100783A30);
  if (v16)
  {
    sub_1001F6498(&v15, v14);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v11 = JSONDecoder.init()();
    v12 = sub_100538E40(v14, v11, a3, a4, a5);

    sub_10000710C(v14);
    sub_1000032A8(v17, &qword_100783A30);
  }

  else
  {
    sub_1000032A8(v17, &qword_100783A30);
    return 0;
  }

  return v12;
}

uint64_t sub_1005371D0(char a1, void *a2)
{
  sub_100234CBC(a1);
  v3 = String._bridgeToObjectiveC()();

  v4 = [a2 valueForProperty:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_100005934(v10, &v8, &qword_100783A30);
  if (v9)
  {
    sub_1001F6498(&v8, v7);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v5 = sub_1005382C4(v7);

    sub_10000710C(v7);
    sub_1000032A8(v10, &qword_100783A30);
    return v5 & 0x1010101;
  }

  else
  {
    sub_1000032A8(v10, &qword_100783A30);
    return 2;
  }
}